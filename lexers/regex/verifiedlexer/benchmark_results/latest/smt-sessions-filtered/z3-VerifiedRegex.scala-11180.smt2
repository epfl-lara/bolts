; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582480 () Bool)

(assert start!582480)

(declare-fun b!5621630 () Bool)

(assert (=> b!5621630 true))

(assert (=> b!5621630 true))

(declare-fun lambda!301829 () Int)

(declare-fun lambda!301828 () Int)

(assert (=> b!5621630 (not (= lambda!301829 lambda!301828))))

(assert (=> b!5621630 true))

(assert (=> b!5621630 true))

(declare-fun b!5621629 () Bool)

(assert (=> b!5621629 true))

(declare-fun b!5621606 () Bool)

(declare-fun e!3465422 () Bool)

(declare-fun e!3465427 () Bool)

(assert (=> b!5621606 (= e!3465422 e!3465427)))

(declare-fun res!2381146 () Bool)

(assert (=> b!5621606 (=> res!2381146 e!3465427)))

(declare-fun lt!2260399 () Bool)

(declare-fun lt!2260394 () Bool)

(declare-fun lt!2260417 () Bool)

(assert (=> b!5621606 (= res!2381146 (and (not (= lt!2260394 lt!2260399)) (not lt!2260417)))))

(declare-datatypes ((C!31484 0))(
  ( (C!31485 (val!25444 Int)) )
))
(declare-datatypes ((Regex!15607 0))(
  ( (ElementMatch!15607 (c!986583 C!31484)) (Concat!24452 (regOne!31726 Regex!15607) (regTwo!31726 Regex!15607)) (EmptyExpr!15607) (Star!15607 (reg!15936 Regex!15607)) (EmptyLang!15607) (Union!15607 (regOne!31727 Regex!15607) (regTwo!31727 Regex!15607)) )
))
(declare-fun lt!2260409 () Regex!15607)

(declare-datatypes ((List!63120 0))(
  ( (Nil!62996) (Cons!62996 (h!69444 C!31484) (t!376410 List!63120)) )
))
(declare-fun s!2326 () List!63120)

(declare-fun matchRSpec!2710 (Regex!15607 List!63120) Bool)

(assert (=> b!5621606 (= lt!2260417 (matchRSpec!2710 lt!2260409 s!2326))))

(declare-datatypes ((Unit!155948 0))(
  ( (Unit!155949) )
))
(declare-fun lt!2260404 () Unit!155948)

(declare-fun mainMatchTheorem!2710 (Regex!15607 List!63120) Unit!155948)

(assert (=> b!5621606 (= lt!2260404 (mainMatchTheorem!2710 lt!2260409 s!2326))))

(declare-fun lt!2260435 () Regex!15607)

(assert (=> b!5621606 (= lt!2260399 (matchRSpec!2710 lt!2260435 s!2326))))

(declare-fun lt!2260427 () Unit!155948)

(assert (=> b!5621606 (= lt!2260427 (mainMatchTheorem!2710 lt!2260435 s!2326))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63121 0))(
  ( (Nil!62997) (Cons!62997 (h!69445 Regex!15607) (t!376411 List!63121)) )
))
(declare-datatypes ((Context!9982 0))(
  ( (Context!9983 (exprs!5491 List!63121)) )
))
(declare-fun lt!2260431 () (InoxSet Context!9982))

(declare-fun matchZipper!1745 ((InoxSet Context!9982) List!63120) Bool)

(assert (=> b!5621606 (= lt!2260417 (matchZipper!1745 lt!2260431 s!2326))))

(declare-fun matchR!7792 (Regex!15607 List!63120) Bool)

(assert (=> b!5621606 (= lt!2260417 (matchR!7792 lt!2260409 s!2326))))

(declare-datatypes ((List!63122 0))(
  ( (Nil!62998) (Cons!62998 (h!69446 Context!9982) (t!376412 List!63122)) )
))
(declare-fun lt!2260397 () List!63122)

(declare-fun lt!2260395 () Unit!155948)

(declare-fun theoremZipperRegexEquiv!623 ((InoxSet Context!9982) List!63122 Regex!15607 List!63120) Unit!155948)

(assert (=> b!5621606 (= lt!2260395 (theoremZipperRegexEquiv!623 lt!2260431 lt!2260397 lt!2260409 s!2326))))

(declare-fun lt!2260413 () List!63121)

(declare-fun generalisedConcat!1222 (List!63121) Regex!15607)

(assert (=> b!5621606 (= lt!2260409 (generalisedConcat!1222 lt!2260413))))

(declare-fun lt!2260425 () Bool)

(assert (=> b!5621606 (= lt!2260399 lt!2260425)))

(assert (=> b!5621606 (= lt!2260399 (matchR!7792 lt!2260435 s!2326))))

(declare-fun lt!2260418 () Unit!155948)

(declare-fun lt!2260421 () (InoxSet Context!9982))

(declare-fun lt!2260406 () List!63122)

(assert (=> b!5621606 (= lt!2260418 (theoremZipperRegexEquiv!623 lt!2260421 lt!2260406 lt!2260435 s!2326))))

(declare-fun lt!2260438 () List!63121)

(assert (=> b!5621606 (= lt!2260435 (generalisedConcat!1222 lt!2260438))))

(declare-fun b!5621607 () Bool)

(declare-fun e!3465403 () Bool)

(declare-fun lt!2260441 () (InoxSet Context!9982))

(assert (=> b!5621607 (= e!3465403 (matchZipper!1745 lt!2260441 (t!376410 s!2326)))))

(declare-fun b!5621608 () Bool)

(declare-fun e!3465402 () Bool)

(declare-fun tp_is_empty!40467 () Bool)

(assert (=> b!5621608 (= e!3465402 tp_is_empty!40467)))

(declare-fun b!5621609 () Bool)

(declare-fun tp!1556799 () Bool)

(declare-fun tp!1556801 () Bool)

(assert (=> b!5621609 (= e!3465402 (and tp!1556799 tp!1556801))))

(declare-fun b!5621610 () Bool)

(declare-fun e!3465418 () Bool)

(declare-fun tp!1556800 () Bool)

(assert (=> b!5621610 (= e!3465418 tp!1556800)))

(declare-fun b!5621611 () Bool)

(declare-fun e!3465410 () Bool)

(assert (=> b!5621611 (= e!3465427 e!3465410)))

(declare-fun res!2381145 () Bool)

(assert (=> b!5621611 (=> res!2381145 e!3465410)))

(declare-fun r!7292 () Regex!15607)

(declare-fun lt!2260396 () Regex!15607)

(assert (=> b!5621611 (= res!2381145 (not (= r!7292 lt!2260396)))))

(assert (=> b!5621611 (= lt!2260396 (Concat!24452 (Union!15607 (regOne!31727 (regOne!31726 r!7292)) (regTwo!31727 (regOne!31726 r!7292))) (regTwo!31726 r!7292)))))

(declare-fun b!5621612 () Bool)

(declare-fun e!3465408 () Unit!155948)

(declare-fun Unit!155950 () Unit!155948)

(assert (=> b!5621612 (= e!3465408 Unit!155950)))

(declare-fun lt!2260405 () Unit!155948)

(declare-fun lt!2260430 () (InoxSet Context!9982))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!632 ((InoxSet Context!9982) (InoxSet Context!9982) List!63120) Unit!155948)

(assert (=> b!5621612 (= lt!2260405 (lemmaZipperConcatMatchesSameAsBothZippers!632 lt!2260430 lt!2260441 (t!376410 s!2326)))))

(declare-fun res!2381130 () Bool)

(declare-fun lt!2260437 () Bool)

(assert (=> b!5621612 (= res!2381130 lt!2260437)))

(assert (=> b!5621612 (=> res!2381130 e!3465403)))

(assert (=> b!5621612 (= (matchZipper!1745 ((_ map or) lt!2260430 lt!2260441) (t!376410 s!2326)) e!3465403)))

(declare-fun b!5621613 () Bool)

(declare-fun res!2381132 () Bool)

(declare-fun e!3465413 () Bool)

(assert (=> b!5621613 (=> res!2381132 e!3465413)))

(declare-fun lt!2260415 () Regex!15607)

(declare-fun zl!343 () List!63122)

(assert (=> b!5621613 (= res!2381132 (or (not (= lt!2260415 r!7292)) (not (= (exprs!5491 (h!69446 zl!343)) (Cons!62997 (regOne!31726 r!7292) (t!376411 (exprs!5491 (h!69446 zl!343))))))))))

(declare-fun b!5621614 () Bool)

(declare-fun e!3465412 () Bool)

(declare-fun lt!2260402 () (InoxSet Context!9982))

(assert (=> b!5621614 (= e!3465412 (matchZipper!1745 lt!2260402 (t!376410 s!2326)))))

(declare-fun b!5621615 () Bool)

(declare-fun res!2381129 () Bool)

(declare-fun e!3465421 () Bool)

(assert (=> b!5621615 (=> (not res!2381129) (not e!3465421))))

(declare-fun z!1189 () (InoxSet Context!9982))

(declare-fun toList!9391 ((InoxSet Context!9982)) List!63122)

(assert (=> b!5621615 (= res!2381129 (= (toList!9391 z!1189) zl!343))))

(declare-fun b!5621616 () Bool)

(declare-fun tp!1556796 () Bool)

(assert (=> b!5621616 (= e!3465402 tp!1556796)))

(declare-fun b!5621617 () Bool)

(declare-fun e!3465419 () Bool)

(assert (=> b!5621617 (= e!3465413 e!3465419)))

(declare-fun res!2381142 () Bool)

(assert (=> b!5621617 (=> res!2381142 e!3465419)))

(declare-fun lt!2260432 () Int)

(declare-fun lt!2260419 () Int)

(assert (=> b!5621617 (= res!2381142 (>= lt!2260432 lt!2260419))))

(declare-fun zipperDepthTotal!232 (List!63122) Int)

(assert (=> b!5621617 (= lt!2260419 (zipperDepthTotal!232 zl!343))))

(assert (=> b!5621617 (= lt!2260432 (zipperDepthTotal!232 lt!2260406))))

(declare-fun lt!2260428 () Context!9982)

(assert (=> b!5621617 (= lt!2260406 (Cons!62998 lt!2260428 Nil!62998))))

(declare-fun b!5621618 () Bool)

(declare-fun e!3465423 () Bool)

(assert (=> b!5621618 (= e!3465421 e!3465423)))

(declare-fun res!2381140 () Bool)

(assert (=> b!5621618 (=> (not res!2381140) (not e!3465423))))

(assert (=> b!5621618 (= res!2381140 (= r!7292 lt!2260415))))

(declare-fun unfocusZipper!1349 (List!63122) Regex!15607)

(assert (=> b!5621618 (= lt!2260415 (unfocusZipper!1349 zl!343))))

(declare-fun b!5621619 () Bool)

(declare-fun e!3465406 () Bool)

(assert (=> b!5621619 (= e!3465406 (matchZipper!1745 lt!2260431 s!2326))))

(declare-fun e!3465417 () Bool)

(declare-fun e!3465428 () Bool)

(declare-fun b!5621620 () Bool)

(declare-fun tp!1556794 () Bool)

(declare-fun inv!82264 (Context!9982) Bool)

(assert (=> b!5621620 (= e!3465428 (and (inv!82264 (h!69446 zl!343)) e!3465417 tp!1556794))))

(declare-fun b!5621621 () Bool)

(declare-fun res!2381136 () Bool)

(declare-fun e!3465411 () Bool)

(assert (=> b!5621621 (=> res!2381136 e!3465411)))

(declare-fun isEmpty!34826 (List!63121) Bool)

(assert (=> b!5621621 (= res!2381136 (isEmpty!34826 (t!376411 (exprs!5491 (h!69446 zl!343)))))))

(declare-fun b!5621622 () Bool)

(declare-fun Unit!155951 () Unit!155948)

(assert (=> b!5621622 (= e!3465408 Unit!155951)))

(declare-fun b!5621623 () Bool)

(declare-fun e!3465424 () Bool)

(declare-fun tp!1556798 () Bool)

(assert (=> b!5621623 (= e!3465424 (and tp_is_empty!40467 tp!1556798))))

(declare-fun b!5621624 () Bool)

(declare-fun res!2381128 () Bool)

(declare-fun e!3465425 () Bool)

(assert (=> b!5621624 (=> res!2381128 e!3465425)))

(get-info :version)

(assert (=> b!5621624 (= res!2381128 (not ((_ is Cons!62997) (exprs!5491 (h!69446 zl!343)))))))

(declare-fun b!5621625 () Bool)

(declare-fun e!3465405 () Bool)

(assert (=> b!5621625 (= e!3465410 e!3465405)))

(declare-fun res!2381141 () Bool)

(assert (=> b!5621625 (=> res!2381141 e!3465405)))

(declare-fun lt!2260416 () Regex!15607)

(assert (=> b!5621625 (= res!2381141 (or (not (= lt!2260435 (Concat!24452 (regOne!31727 (regOne!31726 r!7292)) lt!2260416))) (not (= lt!2260409 (Concat!24452 (regTwo!31727 (regOne!31726 r!7292)) lt!2260416))) (not (= (regTwo!31726 r!7292) lt!2260416))))))

(assert (=> b!5621625 (= lt!2260416 (generalisedConcat!1222 (t!376411 (exprs!5491 (h!69446 zl!343)))))))

(declare-fun b!5621626 () Bool)

(declare-fun e!3465416 () Bool)

(assert (=> b!5621626 (= e!3465416 (not (matchZipper!1745 lt!2260402 (t!376410 s!2326))))))

(declare-fun res!2381133 () Bool)

(assert (=> start!582480 (=> (not res!2381133) (not e!3465421))))

(declare-fun validRegex!7343 (Regex!15607) Bool)

(assert (=> start!582480 (= res!2381133 (validRegex!7343 r!7292))))

(assert (=> start!582480 e!3465421))

(assert (=> start!582480 e!3465402))

(declare-fun condSetEmpty!37508 () Bool)

(assert (=> start!582480 (= condSetEmpty!37508 (= z!1189 ((as const (Array Context!9982 Bool)) false)))))

(declare-fun setRes!37508 () Bool)

(assert (=> start!582480 setRes!37508))

(assert (=> start!582480 e!3465428))

(assert (=> start!582480 e!3465424))

(declare-fun b!5621627 () Bool)

(declare-fun e!3465404 () Bool)

(declare-fun e!3465407 () Bool)

(assert (=> b!5621627 (= e!3465404 e!3465407)))

(declare-fun res!2381126 () Bool)

(assert (=> b!5621627 (=> res!2381126 e!3465407)))

(assert (=> b!5621627 (= res!2381126 e!3465416)))

(declare-fun res!2381147 () Bool)

(assert (=> b!5621627 (=> (not res!2381147) (not e!3465416))))

(declare-fun lt!2260424 () (InoxSet Context!9982))

(assert (=> b!5621627 (= res!2381147 (not (= (matchZipper!1745 lt!2260424 (t!376410 s!2326)) lt!2260437)))))

(declare-fun lt!2260403 () (InoxSet Context!9982))

(assert (=> b!5621627 (= (matchZipper!1745 lt!2260403 (t!376410 s!2326)) e!3465412)))

(declare-fun res!2381144 () Bool)

(assert (=> b!5621627 (=> res!2381144 e!3465412)))

(assert (=> b!5621627 (= res!2381144 lt!2260437)))

(assert (=> b!5621627 (= lt!2260437 (matchZipper!1745 lt!2260430 (t!376410 s!2326)))))

(declare-fun lt!2260423 () Unit!155948)

(assert (=> b!5621627 (= lt!2260423 (lemmaZipperConcatMatchesSameAsBothZippers!632 lt!2260430 lt!2260402 (t!376410 s!2326)))))

(declare-fun b!5621628 () Bool)

(assert (=> b!5621628 (= e!3465407 e!3465413)))

(declare-fun res!2381138 () Bool)

(assert (=> b!5621628 (=> res!2381138 e!3465413)))

(assert (=> b!5621628 (= res!2381138 (not (= lt!2260394 e!3465406)))))

(declare-fun res!2381134 () Bool)

(assert (=> b!5621628 (=> res!2381134 e!3465406)))

(assert (=> b!5621628 (= res!2381134 lt!2260425)))

(assert (=> b!5621628 (= lt!2260394 (matchZipper!1745 z!1189 s!2326))))

(assert (=> b!5621628 (= lt!2260425 (matchZipper!1745 lt!2260421 s!2326))))

(declare-fun lt!2260420 () Unit!155948)

(declare-fun e!3465426 () Unit!155948)

(assert (=> b!5621628 (= lt!2260420 e!3465426)))

(declare-fun c!986581 () Bool)

(declare-fun nullable!5639 (Regex!15607) Bool)

(assert (=> b!5621628 (= c!986581 (nullable!5639 (regTwo!31727 (regOne!31726 r!7292))))))

(declare-fun lt!2260440 () Context!9982)

(declare-fun lambda!301830 () Int)

(declare-fun flatMap!1220 ((InoxSet Context!9982) Int) (InoxSet Context!9982))

(declare-fun derivationStepZipperUp!875 (Context!9982 C!31484) (InoxSet Context!9982))

(assert (=> b!5621628 (= (flatMap!1220 lt!2260431 lambda!301830) (derivationStepZipperUp!875 lt!2260440 (h!69444 s!2326)))))

(declare-fun lt!2260401 () Unit!155948)

(declare-fun lemmaFlatMapOnSingletonSet!752 ((InoxSet Context!9982) Context!9982 Int) Unit!155948)

(assert (=> b!5621628 (= lt!2260401 (lemmaFlatMapOnSingletonSet!752 lt!2260431 lt!2260440 lambda!301830))))

(declare-fun lt!2260407 () (InoxSet Context!9982))

(assert (=> b!5621628 (= lt!2260407 (derivationStepZipperUp!875 lt!2260440 (h!69444 s!2326)))))

(declare-fun lt!2260436 () Unit!155948)

(assert (=> b!5621628 (= lt!2260436 e!3465408)))

(declare-fun c!986580 () Bool)

(assert (=> b!5621628 (= c!986580 (nullable!5639 (regOne!31727 (regOne!31726 r!7292))))))

(assert (=> b!5621628 (= (flatMap!1220 lt!2260421 lambda!301830) (derivationStepZipperUp!875 lt!2260428 (h!69444 s!2326)))))

(declare-fun lt!2260422 () Unit!155948)

(assert (=> b!5621628 (= lt!2260422 (lemmaFlatMapOnSingletonSet!752 lt!2260421 lt!2260428 lambda!301830))))

(declare-fun lt!2260439 () (InoxSet Context!9982))

(assert (=> b!5621628 (= lt!2260439 (derivationStepZipperUp!875 lt!2260428 (h!69444 s!2326)))))

(assert (=> b!5621628 (= lt!2260431 (store ((as const (Array Context!9982 Bool)) false) lt!2260440 true))))

(assert (=> b!5621628 (= lt!2260440 (Context!9983 lt!2260413))))

(assert (=> b!5621628 (= lt!2260413 (Cons!62997 (regTwo!31727 (regOne!31726 r!7292)) (t!376411 (exprs!5491 (h!69446 zl!343)))))))

(assert (=> b!5621628 (= lt!2260421 (store ((as const (Array Context!9982 Bool)) false) lt!2260428 true))))

(assert (=> b!5621628 (= lt!2260428 (Context!9983 lt!2260438))))

(assert (=> b!5621628 (= lt!2260438 (Cons!62997 (regOne!31727 (regOne!31726 r!7292)) (t!376411 (exprs!5491 (h!69446 zl!343)))))))

(declare-fun e!3465414 () Bool)

(assert (=> b!5621629 (= e!3465411 e!3465414)))

(declare-fun res!2381139 () Bool)

(assert (=> b!5621629 (=> res!2381139 e!3465414)))

(assert (=> b!5621629 (= res!2381139 (or (and ((_ is ElementMatch!15607) (regOne!31726 r!7292)) (= (c!986583 (regOne!31726 r!7292)) (h!69444 s!2326))) (not ((_ is Union!15607) (regOne!31726 r!7292)))))))

(declare-fun lt!2260408 () Unit!155948)

(declare-fun e!3465415 () Unit!155948)

(assert (=> b!5621629 (= lt!2260408 e!3465415)))

(declare-fun c!986582 () Bool)

(assert (=> b!5621629 (= c!986582 (nullable!5639 (h!69445 (exprs!5491 (h!69446 zl!343)))))))

(assert (=> b!5621629 (= (flatMap!1220 z!1189 lambda!301830) (derivationStepZipperUp!875 (h!69446 zl!343) (h!69444 s!2326)))))

(declare-fun lt!2260410 () Unit!155948)

(assert (=> b!5621629 (= lt!2260410 (lemmaFlatMapOnSingletonSet!752 z!1189 (h!69446 zl!343) lambda!301830))))

(declare-fun lt!2260442 () Context!9982)

(assert (=> b!5621629 (= lt!2260441 (derivationStepZipperUp!875 lt!2260442 (h!69444 s!2326)))))

(declare-fun derivationStepZipperDown!949 (Regex!15607 Context!9982 C!31484) (InoxSet Context!9982))

(assert (=> b!5621629 (= lt!2260424 (derivationStepZipperDown!949 (h!69445 (exprs!5491 (h!69446 zl!343))) lt!2260442 (h!69444 s!2326)))))

(assert (=> b!5621629 (= lt!2260442 (Context!9983 (t!376411 (exprs!5491 (h!69446 zl!343)))))))

(declare-fun lt!2260400 () (InoxSet Context!9982))

(assert (=> b!5621629 (= lt!2260400 (derivationStepZipperUp!875 (Context!9983 (Cons!62997 (h!69445 (exprs!5491 (h!69446 zl!343))) (t!376411 (exprs!5491 (h!69446 zl!343))))) (h!69444 s!2326)))))

(assert (=> b!5621630 (= e!3465425 e!3465411)))

(declare-fun res!2381151 () Bool)

(assert (=> b!5621630 (=> res!2381151 e!3465411)))

(declare-fun lt!2260414 () Bool)

(declare-fun lt!2260411 () Bool)

(assert (=> b!5621630 (= res!2381151 (or (not (= lt!2260414 lt!2260411)) ((_ is Nil!62996) s!2326)))))

(declare-fun Exists!2707 (Int) Bool)

(assert (=> b!5621630 (= (Exists!2707 lambda!301828) (Exists!2707 lambda!301829))))

(declare-fun lt!2260434 () Unit!155948)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1336 (Regex!15607 Regex!15607 List!63120) Unit!155948)

(assert (=> b!5621630 (= lt!2260434 (lemmaExistCutMatchRandMatchRSpecEquivalent!1336 (regOne!31726 r!7292) (regTwo!31726 r!7292) s!2326))))

(assert (=> b!5621630 (= lt!2260411 (Exists!2707 lambda!301828))))

(declare-datatypes ((tuple2!65408 0))(
  ( (tuple2!65409 (_1!36007 List!63120) (_2!36007 List!63120)) )
))
(declare-datatypes ((Option!15616 0))(
  ( (None!15615) (Some!15615 (v!51660 tuple2!65408)) )
))
(declare-fun isDefined!12319 (Option!15616) Bool)

(declare-fun findConcatSeparation!2030 (Regex!15607 Regex!15607 List!63120 List!63120 List!63120) Option!15616)

(assert (=> b!5621630 (= lt!2260411 (isDefined!12319 (findConcatSeparation!2030 (regOne!31726 r!7292) (regTwo!31726 r!7292) Nil!62996 s!2326 s!2326)))))

(declare-fun lt!2260433 () Unit!155948)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1794 (Regex!15607 Regex!15607 List!63120) Unit!155948)

(assert (=> b!5621630 (= lt!2260433 (lemmaFindConcatSeparationEquivalentToExists!1794 (regOne!31726 r!7292) (regTwo!31726 r!7292) s!2326))))

(declare-fun b!5621631 () Bool)

(assert (=> b!5621631 (= e!3465405 true)))

(assert (=> b!5621631 (= (matchR!7792 lt!2260396 s!2326) (matchR!7792 (Union!15607 (Concat!24452 (regOne!31727 (regOne!31726 r!7292)) (regTwo!31726 r!7292)) (Concat!24452 (regTwo!31727 (regOne!31726 r!7292)) (regTwo!31726 r!7292))) s!2326))))

(declare-fun lt!2260429 () Unit!155948)

(declare-fun lemmaConcatDistributesInUnion!40 (Regex!15607 Regex!15607 Regex!15607 List!63120) Unit!155948)

(assert (=> b!5621631 (= lt!2260429 (lemmaConcatDistributesInUnion!40 (regOne!31727 (regOne!31726 r!7292)) (regTwo!31727 (regOne!31726 r!7292)) (regTwo!31726 r!7292) s!2326))))

(declare-fun b!5621632 () Bool)

(declare-fun res!2381131 () Bool)

(assert (=> b!5621632 (=> res!2381131 e!3465425)))

(assert (=> b!5621632 (= res!2381131 (or ((_ is EmptyExpr!15607) r!7292) ((_ is EmptyLang!15607) r!7292) ((_ is ElementMatch!15607) r!7292) ((_ is Union!15607) r!7292) (not ((_ is Concat!24452) r!7292))))))

(declare-fun b!5621633 () Bool)

(declare-fun e!3465409 () Bool)

(assert (=> b!5621633 (= e!3465409 (matchZipper!1745 lt!2260441 (t!376410 s!2326)))))

(declare-fun b!5621634 () Bool)

(declare-fun res!2381143 () Bool)

(assert (=> b!5621634 (=> res!2381143 e!3465425)))

(assert (=> b!5621634 (= res!2381143 (not (= r!7292 (generalisedConcat!1222 (exprs!5491 (h!69446 zl!343))))))))

(declare-fun b!5621635 () Bool)

(declare-fun Unit!155952 () Unit!155948)

(assert (=> b!5621635 (= e!3465415 Unit!155952)))

(declare-fun lt!2260426 () Unit!155948)

(assert (=> b!5621635 (= lt!2260426 (lemmaZipperConcatMatchesSameAsBothZippers!632 lt!2260424 lt!2260441 (t!376410 s!2326)))))

(declare-fun res!2381127 () Bool)

(assert (=> b!5621635 (= res!2381127 (matchZipper!1745 lt!2260424 (t!376410 s!2326)))))

(assert (=> b!5621635 (=> res!2381127 e!3465409)))

(assert (=> b!5621635 (= (matchZipper!1745 ((_ map or) lt!2260424 lt!2260441) (t!376410 s!2326)) e!3465409)))

(declare-fun b!5621636 () Bool)

(declare-fun res!2381150 () Bool)

(assert (=> b!5621636 (=> res!2381150 e!3465425)))

(declare-fun generalisedUnion!1470 (List!63121) Regex!15607)

(declare-fun unfocusZipperList!1035 (List!63122) List!63121)

(assert (=> b!5621636 (= res!2381150 (not (= r!7292 (generalisedUnion!1470 (unfocusZipperList!1035 zl!343)))))))

(declare-fun b!5621637 () Bool)

(declare-fun Unit!155953 () Unit!155948)

(assert (=> b!5621637 (= e!3465415 Unit!155953)))

(declare-fun b!5621638 () Bool)

(declare-fun tp!1556802 () Bool)

(declare-fun tp!1556803 () Bool)

(assert (=> b!5621638 (= e!3465402 (and tp!1556802 tp!1556803))))

(declare-fun b!5621639 () Bool)

(declare-fun Unit!155954 () Unit!155948)

(assert (=> b!5621639 (= e!3465426 Unit!155954)))

(declare-fun lt!2260398 () Unit!155948)

(assert (=> b!5621639 (= lt!2260398 (lemmaZipperConcatMatchesSameAsBothZippers!632 lt!2260402 lt!2260441 (t!376410 s!2326)))))

(declare-fun res!2381137 () Bool)

(assert (=> b!5621639 (= res!2381137 (matchZipper!1745 lt!2260402 (t!376410 s!2326)))))

(declare-fun e!3465420 () Bool)

(assert (=> b!5621639 (=> res!2381137 e!3465420)))

(assert (=> b!5621639 (= (matchZipper!1745 ((_ map or) lt!2260402 lt!2260441) (t!376410 s!2326)) e!3465420)))

(declare-fun setIsEmpty!37508 () Bool)

(assert (=> setIsEmpty!37508 setRes!37508))

(declare-fun b!5621640 () Bool)

(assert (=> b!5621640 (= e!3465420 (matchZipper!1745 lt!2260441 (t!376410 s!2326)))))

(declare-fun b!5621641 () Bool)

(declare-fun res!2381148 () Bool)

(assert (=> b!5621641 (=> res!2381148 e!3465425)))

(declare-fun isEmpty!34827 (List!63122) Bool)

(assert (=> b!5621641 (= res!2381148 (not (isEmpty!34827 (t!376412 zl!343))))))

(declare-fun b!5621642 () Bool)

(declare-fun Unit!155955 () Unit!155948)

(assert (=> b!5621642 (= e!3465426 Unit!155955)))

(declare-fun b!5621643 () Bool)

(assert (=> b!5621643 (= e!3465414 e!3465404)))

(declare-fun res!2381149 () Bool)

(assert (=> b!5621643 (=> res!2381149 e!3465404)))

(assert (=> b!5621643 (= res!2381149 (not (= lt!2260424 lt!2260403)))))

(assert (=> b!5621643 (= lt!2260403 ((_ map or) lt!2260430 lt!2260402))))

(assert (=> b!5621643 (= lt!2260402 (derivationStepZipperDown!949 (regTwo!31727 (regOne!31726 r!7292)) lt!2260442 (h!69444 s!2326)))))

(assert (=> b!5621643 (= lt!2260430 (derivationStepZipperDown!949 (regOne!31727 (regOne!31726 r!7292)) lt!2260442 (h!69444 s!2326)))))

(declare-fun b!5621644 () Bool)

(declare-fun tp!1556795 () Bool)

(assert (=> b!5621644 (= e!3465417 tp!1556795)))

(declare-fun b!5621645 () Bool)

(assert (=> b!5621645 (= e!3465419 e!3465422)))

(declare-fun res!2381135 () Bool)

(assert (=> b!5621645 (=> res!2381135 e!3465422)))

(assert (=> b!5621645 (= res!2381135 (>= (zipperDepthTotal!232 lt!2260397) lt!2260419))))

(assert (=> b!5621645 (= lt!2260397 (Cons!62998 lt!2260440 Nil!62998))))

(declare-fun setElem!37508 () Context!9982)

(declare-fun tp!1556797 () Bool)

(declare-fun setNonEmpty!37508 () Bool)

(assert (=> setNonEmpty!37508 (= setRes!37508 (and tp!1556797 (inv!82264 setElem!37508) e!3465418))))

(declare-fun setRest!37508 () (InoxSet Context!9982))

(assert (=> setNonEmpty!37508 (= z!1189 ((_ map or) (store ((as const (Array Context!9982 Bool)) false) setElem!37508 true) setRest!37508))))

(declare-fun b!5621646 () Bool)

(assert (=> b!5621646 (= e!3465423 (not e!3465425))))

(declare-fun res!2381152 () Bool)

(assert (=> b!5621646 (=> res!2381152 e!3465425)))

(assert (=> b!5621646 (= res!2381152 (not ((_ is Cons!62998) zl!343)))))

(assert (=> b!5621646 (= lt!2260414 (matchRSpec!2710 r!7292 s!2326))))

(assert (=> b!5621646 (= lt!2260414 (matchR!7792 r!7292 s!2326))))

(declare-fun lt!2260412 () Unit!155948)

(assert (=> b!5621646 (= lt!2260412 (mainMatchTheorem!2710 r!7292 s!2326))))

(assert (= (and start!582480 res!2381133) b!5621615))

(assert (= (and b!5621615 res!2381129) b!5621618))

(assert (= (and b!5621618 res!2381140) b!5621646))

(assert (= (and b!5621646 (not res!2381152)) b!5621641))

(assert (= (and b!5621641 (not res!2381148)) b!5621634))

(assert (= (and b!5621634 (not res!2381143)) b!5621624))

(assert (= (and b!5621624 (not res!2381128)) b!5621636))

(assert (= (and b!5621636 (not res!2381150)) b!5621632))

(assert (= (and b!5621632 (not res!2381131)) b!5621630))

(assert (= (and b!5621630 (not res!2381151)) b!5621621))

(assert (= (and b!5621621 (not res!2381136)) b!5621629))

(assert (= (and b!5621629 c!986582) b!5621635))

(assert (= (and b!5621629 (not c!986582)) b!5621637))

(assert (= (and b!5621635 (not res!2381127)) b!5621633))

(assert (= (and b!5621629 (not res!2381139)) b!5621643))

(assert (= (and b!5621643 (not res!2381149)) b!5621627))

(assert (= (and b!5621627 (not res!2381144)) b!5621614))

(assert (= (and b!5621627 res!2381147) b!5621626))

(assert (= (and b!5621627 (not res!2381126)) b!5621628))

(assert (= (and b!5621628 c!986580) b!5621612))

(assert (= (and b!5621628 (not c!986580)) b!5621622))

(assert (= (and b!5621612 (not res!2381130)) b!5621607))

(assert (= (and b!5621628 c!986581) b!5621639))

(assert (= (and b!5621628 (not c!986581)) b!5621642))

(assert (= (and b!5621639 (not res!2381137)) b!5621640))

(assert (= (and b!5621628 (not res!2381134)) b!5621619))

(assert (= (and b!5621628 (not res!2381138)) b!5621613))

(assert (= (and b!5621613 (not res!2381132)) b!5621617))

(assert (= (and b!5621617 (not res!2381142)) b!5621645))

(assert (= (and b!5621645 (not res!2381135)) b!5621606))

(assert (= (and b!5621606 (not res!2381146)) b!5621611))

(assert (= (and b!5621611 (not res!2381145)) b!5621625))

(assert (= (and b!5621625 (not res!2381141)) b!5621631))

(assert (= (and start!582480 ((_ is ElementMatch!15607) r!7292)) b!5621608))

(assert (= (and start!582480 ((_ is Concat!24452) r!7292)) b!5621638))

(assert (= (and start!582480 ((_ is Star!15607) r!7292)) b!5621616))

(assert (= (and start!582480 ((_ is Union!15607) r!7292)) b!5621609))

(assert (= (and start!582480 condSetEmpty!37508) setIsEmpty!37508))

(assert (= (and start!582480 (not condSetEmpty!37508)) setNonEmpty!37508))

(assert (= setNonEmpty!37508 b!5621610))

(assert (= b!5621620 b!5621644))

(assert (= (and start!582480 ((_ is Cons!62998) zl!343)) b!5621620))

(assert (= (and start!582480 ((_ is Cons!62996) s!2326)) b!5621623))

(declare-fun m!6594880 () Bool)

(assert (=> b!5621643 m!6594880))

(declare-fun m!6594882 () Bool)

(assert (=> b!5621643 m!6594882))

(declare-fun m!6594884 () Bool)

(assert (=> b!5621612 m!6594884))

(declare-fun m!6594886 () Bool)

(assert (=> b!5621612 m!6594886))

(declare-fun m!6594888 () Bool)

(assert (=> b!5621630 m!6594888))

(declare-fun m!6594890 () Bool)

(assert (=> b!5621630 m!6594890))

(declare-fun m!6594892 () Bool)

(assert (=> b!5621630 m!6594892))

(declare-fun m!6594894 () Bool)

(assert (=> b!5621630 m!6594894))

(assert (=> b!5621630 m!6594888))

(declare-fun m!6594896 () Bool)

(assert (=> b!5621630 m!6594896))

(assert (=> b!5621630 m!6594890))

(declare-fun m!6594898 () Bool)

(assert (=> b!5621630 m!6594898))

(declare-fun m!6594900 () Bool)

(assert (=> b!5621627 m!6594900))

(declare-fun m!6594902 () Bool)

(assert (=> b!5621627 m!6594902))

(declare-fun m!6594904 () Bool)

(assert (=> b!5621627 m!6594904))

(declare-fun m!6594906 () Bool)

(assert (=> b!5621627 m!6594906))

(declare-fun m!6594908 () Bool)

(assert (=> b!5621618 m!6594908))

(declare-fun m!6594910 () Bool)

(assert (=> b!5621636 m!6594910))

(assert (=> b!5621636 m!6594910))

(declare-fun m!6594912 () Bool)

(assert (=> b!5621636 m!6594912))

(declare-fun m!6594914 () Bool)

(assert (=> b!5621635 m!6594914))

(assert (=> b!5621635 m!6594900))

(declare-fun m!6594916 () Bool)

(assert (=> b!5621635 m!6594916))

(declare-fun m!6594918 () Bool)

(assert (=> b!5621614 m!6594918))

(declare-fun m!6594920 () Bool)

(assert (=> b!5621628 m!6594920))

(declare-fun m!6594922 () Bool)

(assert (=> b!5621628 m!6594922))

(declare-fun m!6594924 () Bool)

(assert (=> b!5621628 m!6594924))

(declare-fun m!6594926 () Bool)

(assert (=> b!5621628 m!6594926))

(declare-fun m!6594928 () Bool)

(assert (=> b!5621628 m!6594928))

(declare-fun m!6594930 () Bool)

(assert (=> b!5621628 m!6594930))

(declare-fun m!6594932 () Bool)

(assert (=> b!5621628 m!6594932))

(declare-fun m!6594934 () Bool)

(assert (=> b!5621628 m!6594934))

(declare-fun m!6594936 () Bool)

(assert (=> b!5621628 m!6594936))

(declare-fun m!6594938 () Bool)

(assert (=> b!5621628 m!6594938))

(declare-fun m!6594940 () Bool)

(assert (=> b!5621628 m!6594940))

(declare-fun m!6594942 () Bool)

(assert (=> b!5621628 m!6594942))

(assert (=> b!5621626 m!6594918))

(declare-fun m!6594944 () Bool)

(assert (=> start!582480 m!6594944))

(declare-fun m!6594946 () Bool)

(assert (=> b!5621615 m!6594946))

(declare-fun m!6594948 () Bool)

(assert (=> b!5621620 m!6594948))

(declare-fun m!6594950 () Bool)

(assert (=> b!5621617 m!6594950))

(declare-fun m!6594952 () Bool)

(assert (=> b!5621617 m!6594952))

(declare-fun m!6594954 () Bool)

(assert (=> b!5621639 m!6594954))

(assert (=> b!5621639 m!6594918))

(declare-fun m!6594956 () Bool)

(assert (=> b!5621639 m!6594956))

(declare-fun m!6594958 () Bool)

(assert (=> b!5621631 m!6594958))

(declare-fun m!6594960 () Bool)

(assert (=> b!5621631 m!6594960))

(declare-fun m!6594962 () Bool)

(assert (=> b!5621631 m!6594962))

(declare-fun m!6594964 () Bool)

(assert (=> setNonEmpty!37508 m!6594964))

(declare-fun m!6594966 () Bool)

(assert (=> b!5621619 m!6594966))

(declare-fun m!6594968 () Bool)

(assert (=> b!5621640 m!6594968))

(declare-fun m!6594970 () Bool)

(assert (=> b!5621629 m!6594970))

(declare-fun m!6594972 () Bool)

(assert (=> b!5621629 m!6594972))

(declare-fun m!6594974 () Bool)

(assert (=> b!5621629 m!6594974))

(declare-fun m!6594976 () Bool)

(assert (=> b!5621629 m!6594976))

(declare-fun m!6594978 () Bool)

(assert (=> b!5621629 m!6594978))

(declare-fun m!6594980 () Bool)

(assert (=> b!5621629 m!6594980))

(declare-fun m!6594982 () Bool)

(assert (=> b!5621629 m!6594982))

(declare-fun m!6594984 () Bool)

(assert (=> b!5621625 m!6594984))

(declare-fun m!6594986 () Bool)

(assert (=> b!5621621 m!6594986))

(declare-fun m!6594988 () Bool)

(assert (=> b!5621634 m!6594988))

(declare-fun m!6594990 () Bool)

(assert (=> b!5621645 m!6594990))

(assert (=> b!5621607 m!6594968))

(declare-fun m!6594992 () Bool)

(assert (=> b!5621646 m!6594992))

(declare-fun m!6594994 () Bool)

(assert (=> b!5621646 m!6594994))

(declare-fun m!6594996 () Bool)

(assert (=> b!5621646 m!6594996))

(assert (=> b!5621633 m!6594968))

(declare-fun m!6594998 () Bool)

(assert (=> b!5621606 m!6594998))

(declare-fun m!6595000 () Bool)

(assert (=> b!5621606 m!6595000))

(declare-fun m!6595002 () Bool)

(assert (=> b!5621606 m!6595002))

(declare-fun m!6595004 () Bool)

(assert (=> b!5621606 m!6595004))

(declare-fun m!6595006 () Bool)

(assert (=> b!5621606 m!6595006))

(declare-fun m!6595008 () Bool)

(assert (=> b!5621606 m!6595008))

(declare-fun m!6595010 () Bool)

(assert (=> b!5621606 m!6595010))

(declare-fun m!6595012 () Bool)

(assert (=> b!5621606 m!6595012))

(assert (=> b!5621606 m!6594966))

(declare-fun m!6595014 () Bool)

(assert (=> b!5621606 m!6595014))

(declare-fun m!6595016 () Bool)

(assert (=> b!5621606 m!6595016))

(declare-fun m!6595018 () Bool)

(assert (=> b!5621641 m!6595018))

(check-sat (not b!5621626) (not b!5621614) (not b!5621606) (not b!5621627) tp_is_empty!40467 (not b!5621617) (not b!5621621) (not b!5621631) (not b!5621629) (not b!5621616) (not b!5621623) (not b!5621633) (not b!5621619) (not b!5621634) (not b!5621615) (not b!5621638) (not b!5621636) (not b!5621644) (not b!5621625) (not b!5621610) (not b!5621607) (not b!5621645) (not b!5621640) (not b!5621620) (not setNonEmpty!37508) (not b!5621635) (not b!5621641) (not b!5621643) (not b!5621639) (not start!582480) (not b!5621618) (not b!5621646) (not b!5621630) (not b!5621628) (not b!5621609) (not b!5621612))
(check-sat)
