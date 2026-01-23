; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!600514 () Bool)

(assert start!600514)

(declare-fun b!5887466 () Bool)

(assert (=> b!5887466 true))

(declare-fun b!5887464 () Bool)

(declare-fun e!3607461 () Bool)

(declare-datatypes ((C!32150 0))(
  ( (C!32151 (val!25777 Int)) )
))
(declare-datatypes ((Regex!15940 0))(
  ( (ElementMatch!15940 (c!1045597 C!32150)) (Concat!24785 (regOne!32392 Regex!15940) (regTwo!32392 Regex!15940)) (EmptyExpr!15940) (Star!15940 (reg!16269 Regex!15940)) (EmptyLang!15940) (Union!15940 (regOne!32393 Regex!15940) (regTwo!32393 Regex!15940)) )
))
(declare-fun r!7292 () Regex!15940)

(declare-fun validRegex!7676 (Regex!15940) Bool)

(assert (=> b!5887464 (= e!3607461 (validRegex!7676 (regTwo!32393 r!7292)))))

(declare-fun lt!2307394 () Bool)

(declare-fun lt!2307386 () Bool)

(assert (=> b!5887464 (= lt!2307394 lt!2307386)))

(declare-datatypes ((List!64119 0))(
  ( (Nil!63995) (Cons!63995 (h!70443 C!32150) (t!377502 List!64119)) )
))
(declare-fun s!2326 () List!64119)

(declare-datatypes ((Unit!157151 0))(
  ( (Unit!157152) )
))
(declare-fun lt!2307393 () Unit!157151)

(declare-datatypes ((List!64120 0))(
  ( (Nil!63996) (Cons!63996 (h!70444 Regex!15940) (t!377503 List!64120)) )
))
(declare-datatypes ((Context!10648 0))(
  ( (Context!10649 (exprs!5824 List!64120)) )
))
(declare-fun lt!2307392 () Context!10648)

(declare-fun lt!2307405 () (Set Context!10648))

(declare-datatypes ((List!64121 0))(
  ( (Nil!63997) (Cons!63997 (h!70445 Context!10648) (t!377504 List!64121)) )
))
(declare-fun theoremZipperRegexEquiv!692 ((Set Context!10648) List!64121 Regex!15940 List!64119) Unit!157151)

(assert (=> b!5887464 (= lt!2307393 (theoremZipperRegexEquiv!692 lt!2307405 (Cons!63997 lt!2307392 Nil!63997) (regOne!32393 r!7292) s!2326))))

(declare-fun e!3607454 () Bool)

(declare-fun e!3607452 () Bool)

(assert (=> b!5887466 (= e!3607454 e!3607452)))

(declare-fun res!2472709 () Bool)

(assert (=> b!5887466 (=> res!2472709 e!3607452)))

(declare-fun z!1189 () (Set Context!10648))

(declare-fun lt!2307382 () (Set Context!10648))

(declare-fun derivationStepZipper!1939 ((Set Context!10648) C!32150) (Set Context!10648))

(assert (=> b!5887466 (= res!2472709 (not (= (derivationStepZipper!1939 z!1189 (h!70443 s!2326)) lt!2307382)))))

(declare-fun lambda!321508 () Int)

(declare-fun zl!343 () List!64121)

(declare-fun flatMap!1471 ((Set Context!10648) Int) (Set Context!10648))

(declare-fun derivationStepZipperUp!1132 (Context!10648 C!32150) (Set Context!10648))

(assert (=> b!5887466 (= (flatMap!1471 z!1189 lambda!321508) (derivationStepZipperUp!1132 (h!70445 zl!343) (h!70443 s!2326)))))

(declare-fun lt!2307399 () Unit!157151)

(declare-fun lemmaFlatMapOnSingletonSet!999 ((Set Context!10648) Context!10648 Int) Unit!157151)

(assert (=> b!5887466 (= lt!2307399 (lemmaFlatMapOnSingletonSet!999 z!1189 (h!70445 zl!343) lambda!321508))))

(declare-fun b!5887467 () Bool)

(declare-fun res!2472707 () Bool)

(declare-fun e!3607451 () Bool)

(assert (=> b!5887467 (=> res!2472707 e!3607451)))

(declare-fun generalisedUnion!1784 (List!64120) Regex!15940)

(declare-fun unfocusZipperList!1361 (List!64121) List!64120)

(assert (=> b!5887467 (= res!2472707 (not (= r!7292 (generalisedUnion!1784 (unfocusZipperList!1361 zl!343)))))))

(declare-fun b!5887468 () Bool)

(declare-fun e!3607453 () Bool)

(declare-fun tp_is_empty!41133 () Bool)

(assert (=> b!5887468 (= e!3607453 tp_is_empty!41133)))

(declare-fun b!5887469 () Bool)

(declare-fun e!3607460 () Bool)

(assert (=> b!5887469 (= e!3607460 e!3607454)))

(declare-fun res!2472699 () Bool)

(assert (=> b!5887469 (=> res!2472699 e!3607454)))

(declare-fun lt!2307390 () (Set Context!10648))

(assert (=> b!5887469 (= res!2472699 (not (= lt!2307390 lt!2307382)))))

(declare-fun lt!2307398 () (Set Context!10648))

(declare-fun lt!2307384 () (Set Context!10648))

(assert (=> b!5887469 (= lt!2307382 (set.union lt!2307398 lt!2307384))))

(declare-fun lt!2307391 () Context!10648)

(declare-fun derivationStepZipperDown!1206 (Regex!15940 Context!10648 C!32150) (Set Context!10648))

(assert (=> b!5887469 (= lt!2307384 (derivationStepZipperDown!1206 (regTwo!32393 r!7292) lt!2307391 (h!70443 s!2326)))))

(assert (=> b!5887469 (= lt!2307398 (derivationStepZipperDown!1206 (regOne!32393 r!7292) lt!2307391 (h!70443 s!2326)))))

(declare-fun b!5887470 () Bool)

(declare-fun e!3607458 () Bool)

(assert (=> b!5887470 (= e!3607458 (not e!3607451))))

(declare-fun res!2472713 () Bool)

(assert (=> b!5887470 (=> res!2472713 e!3607451)))

(assert (=> b!5887470 (= res!2472713 (not (is-Cons!63997 zl!343)))))

(declare-fun lt!2307404 () Bool)

(declare-fun matchRSpec!3041 (Regex!15940 List!64119) Bool)

(assert (=> b!5887470 (= lt!2307404 (matchRSpec!3041 r!7292 s!2326))))

(declare-fun matchR!8123 (Regex!15940 List!64119) Bool)

(assert (=> b!5887470 (= lt!2307404 (matchR!8123 r!7292 s!2326))))

(declare-fun lt!2307407 () Unit!157151)

(declare-fun mainMatchTheorem!3041 (Regex!15940 List!64119) Unit!157151)

(assert (=> b!5887470 (= lt!2307407 (mainMatchTheorem!3041 r!7292 s!2326))))

(declare-fun b!5887471 () Bool)

(declare-fun e!3607462 () Bool)

(assert (=> b!5887471 (= e!3607462 e!3607460)))

(declare-fun res!2472706 () Bool)

(assert (=> b!5887471 (=> res!2472706 e!3607460)))

(declare-fun lt!2307402 () (Set Context!10648))

(assert (=> b!5887471 (= res!2472706 (not (= lt!2307402 lt!2307390)))))

(assert (=> b!5887471 (= lt!2307390 (derivationStepZipperDown!1206 r!7292 lt!2307391 (h!70443 s!2326)))))

(assert (=> b!5887471 (= lt!2307391 (Context!10649 Nil!63996))))

(assert (=> b!5887471 (= lt!2307402 (derivationStepZipperUp!1132 (Context!10649 (Cons!63996 r!7292 Nil!63996)) (h!70443 s!2326)))))

(declare-fun setIsEmpty!39926 () Bool)

(declare-fun setRes!39926 () Bool)

(assert (=> setIsEmpty!39926 setRes!39926))

(declare-fun b!5887472 () Bool)

(declare-fun res!2472711 () Bool)

(assert (=> b!5887472 (=> (not res!2472711) (not e!3607458))))

(declare-fun toList!9724 ((Set Context!10648)) List!64121)

(assert (=> b!5887472 (= res!2472711 (= (toList!9724 z!1189) zl!343))))

(declare-fun b!5887473 () Bool)

(declare-fun e!3607456 () Bool)

(declare-fun tp!1632100 () Bool)

(assert (=> b!5887473 (= e!3607456 (and tp_is_empty!41133 tp!1632100))))

(declare-fun b!5887474 () Bool)

(declare-fun e!3607459 () Bool)

(assert (=> b!5887474 (= e!3607452 e!3607459)))

(declare-fun res!2472712 () Bool)

(assert (=> b!5887474 (=> res!2472712 e!3607459)))

(declare-fun lt!2307397 () Bool)

(declare-fun lt!2307387 () Bool)

(assert (=> b!5887474 (= res!2472712 (not (= lt!2307397 lt!2307387)))))

(declare-fun matchZipper!2006 ((Set Context!10648) List!64119) Bool)

(assert (=> b!5887474 (= lt!2307387 (matchZipper!2006 z!1189 s!2326))))

(assert (=> b!5887474 (= lt!2307397 (matchZipper!2006 lt!2307382 (t!377502 s!2326)))))

(declare-fun res!2472715 () Bool)

(assert (=> start!600514 (=> (not res!2472715) (not e!3607458))))

(assert (=> start!600514 (= res!2472715 (validRegex!7676 r!7292))))

(assert (=> start!600514 e!3607458))

(assert (=> start!600514 e!3607453))

(declare-fun condSetEmpty!39926 () Bool)

(assert (=> start!600514 (= condSetEmpty!39926 (= z!1189 (as set.empty (Set Context!10648))))))

(assert (=> start!600514 setRes!39926))

(declare-fun e!3607457 () Bool)

(assert (=> start!600514 e!3607457))

(assert (=> start!600514 e!3607456))

(declare-fun b!5887465 () Bool)

(declare-fun res!2472716 () Bool)

(assert (=> b!5887465 (=> res!2472716 e!3607461)))

(declare-fun lt!2307403 () Bool)

(assert (=> b!5887465 (= res!2472716 (not (= (or lt!2307386 lt!2307403) lt!2307387)))))

(declare-fun setNonEmpty!39926 () Bool)

(declare-fun setElem!39926 () Context!10648)

(declare-fun e!3607455 () Bool)

(declare-fun tp!1632102 () Bool)

(declare-fun inv!83098 (Context!10648) Bool)

(assert (=> setNonEmpty!39926 (= setRes!39926 (and tp!1632102 (inv!83098 setElem!39926) e!3607455))))

(declare-fun setRest!39926 () (Set Context!10648))

(assert (=> setNonEmpty!39926 (= z!1189 (set.union (set.insert setElem!39926 (as set.empty (Set Context!10648))) setRest!39926))))

(declare-fun b!5887475 () Bool)

(declare-fun e!3607463 () Bool)

(assert (=> b!5887475 (= e!3607459 e!3607463)))

(declare-fun res!2472703 () Bool)

(assert (=> b!5887475 (=> res!2472703 e!3607463)))

(declare-fun lt!2307406 () Bool)

(assert (=> b!5887475 (= res!2472703 (or (not (= lt!2307406 lt!2307397)) (not (= lt!2307406 lt!2307387))))))

(assert (=> b!5887475 (= lt!2307397 lt!2307406)))

(declare-fun e!3607449 () Bool)

(assert (=> b!5887475 (= lt!2307406 e!3607449)))

(declare-fun res!2472708 () Bool)

(assert (=> b!5887475 (=> res!2472708 e!3607449)))

(declare-fun lt!2307408 () Bool)

(assert (=> b!5887475 (= res!2472708 lt!2307408)))

(assert (=> b!5887475 (= lt!2307408 (matchZipper!2006 lt!2307398 (t!377502 s!2326)))))

(declare-fun lt!2307396 () Unit!157151)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!841 ((Set Context!10648) (Set Context!10648) List!64119) Unit!157151)

(assert (=> b!5887475 (= lt!2307396 (lemmaZipperConcatMatchesSameAsBothZippers!841 lt!2307398 lt!2307384 (t!377502 s!2326)))))

(declare-fun b!5887476 () Bool)

(declare-fun res!2472704 () Bool)

(assert (=> b!5887476 (=> res!2472704 e!3607451)))

(assert (=> b!5887476 (= res!2472704 (not (is-Cons!63996 (exprs!5824 (h!70445 zl!343)))))))

(declare-fun b!5887477 () Bool)

(declare-fun e!3607450 () Bool)

(assert (=> b!5887477 (= e!3607463 e!3607450)))

(declare-fun res!2472710 () Bool)

(assert (=> b!5887477 (=> res!2472710 e!3607450)))

(assert (=> b!5887477 (= res!2472710 (not (= lt!2307386 lt!2307408)))))

(assert (=> b!5887477 (= lt!2307386 (matchZipper!2006 lt!2307405 s!2326))))

(declare-fun lt!2307383 () Context!10648)

(declare-fun lt!2307380 () (Set Context!10648))

(assert (=> b!5887477 (= (flatMap!1471 lt!2307380 lambda!321508) (derivationStepZipperUp!1132 lt!2307383 (h!70443 s!2326)))))

(declare-fun lt!2307388 () Unit!157151)

(assert (=> b!5887477 (= lt!2307388 (lemmaFlatMapOnSingletonSet!999 lt!2307380 lt!2307383 lambda!321508))))

(assert (=> b!5887477 (= (flatMap!1471 lt!2307405 lambda!321508) (derivationStepZipperUp!1132 lt!2307392 (h!70443 s!2326)))))

(declare-fun lt!2307401 () Unit!157151)

(assert (=> b!5887477 (= lt!2307401 (lemmaFlatMapOnSingletonSet!999 lt!2307405 lt!2307392 lambda!321508))))

(declare-fun lt!2307395 () (Set Context!10648))

(assert (=> b!5887477 (= lt!2307395 (derivationStepZipperUp!1132 lt!2307383 (h!70443 s!2326)))))

(declare-fun lt!2307381 () (Set Context!10648))

(assert (=> b!5887477 (= lt!2307381 (derivationStepZipperUp!1132 lt!2307392 (h!70443 s!2326)))))

(assert (=> b!5887477 (= lt!2307380 (set.insert lt!2307383 (as set.empty (Set Context!10648))))))

(assert (=> b!5887477 (= lt!2307383 (Context!10649 (Cons!63996 (regTwo!32393 r!7292) Nil!63996)))))

(assert (=> b!5887477 (= lt!2307405 (set.insert lt!2307392 (as set.empty (Set Context!10648))))))

(assert (=> b!5887477 (= lt!2307392 (Context!10649 (Cons!63996 (regOne!32393 r!7292) Nil!63996)))))

(declare-fun b!5887478 () Bool)

(declare-fun tp!1632103 () Bool)

(declare-fun tp!1632101 () Bool)

(assert (=> b!5887478 (= e!3607453 (and tp!1632103 tp!1632101))))

(declare-fun b!5887479 () Bool)

(declare-fun e!3607464 () Bool)

(declare-fun tp!1632104 () Bool)

(assert (=> b!5887479 (= e!3607464 tp!1632104)))

(declare-fun b!5887480 () Bool)

(declare-fun res!2472714 () Bool)

(assert (=> b!5887480 (=> (not res!2472714) (not e!3607458))))

(declare-fun unfocusZipper!1682 (List!64121) Regex!15940)

(assert (=> b!5887480 (= res!2472714 (= r!7292 (unfocusZipper!1682 zl!343)))))

(declare-fun b!5887481 () Bool)

(declare-fun res!2472700 () Bool)

(assert (=> b!5887481 (=> res!2472700 e!3607451)))

(assert (=> b!5887481 (= res!2472700 (or (is-EmptyExpr!15940 r!7292) (is-EmptyLang!15940 r!7292) (is-ElementMatch!15940 r!7292) (not (is-Union!15940 r!7292))))))

(declare-fun b!5887482 () Bool)

(assert (=> b!5887482 (= e!3607450 e!3607461)))

(declare-fun res!2472717 () Bool)

(assert (=> b!5887482 (=> res!2472717 e!3607461)))

(assert (=> b!5887482 (= res!2472717 (not (= lt!2307403 (matchZipper!2006 lt!2307384 (t!377502 s!2326)))))))

(assert (=> b!5887482 (= lt!2307403 (matchZipper!2006 lt!2307380 s!2326))))

(declare-fun b!5887483 () Bool)

(declare-fun res!2472705 () Bool)

(assert (=> b!5887483 (=> res!2472705 e!3607451)))

(declare-fun generalisedConcat!1537 (List!64120) Regex!15940)

(assert (=> b!5887483 (= res!2472705 (not (= r!7292 (generalisedConcat!1537 (exprs!5824 (h!70445 zl!343))))))))

(declare-fun b!5887484 () Bool)

(assert (=> b!5887484 (= e!3607449 (matchZipper!2006 lt!2307384 (t!377502 s!2326)))))

(declare-fun b!5887485 () Bool)

(declare-fun res!2472702 () Bool)

(assert (=> b!5887485 (=> res!2472702 e!3607451)))

(declare-fun isEmpty!35855 (List!64121) Bool)

(assert (=> b!5887485 (= res!2472702 (not (isEmpty!35855 (t!377504 zl!343))))))

(declare-fun b!5887486 () Bool)

(declare-fun tp!1632107 () Bool)

(declare-fun tp!1632105 () Bool)

(assert (=> b!5887486 (= e!3607453 (and tp!1632107 tp!1632105))))

(declare-fun b!5887487 () Bool)

(declare-fun tp!1632098 () Bool)

(assert (=> b!5887487 (= e!3607453 tp!1632098)))

(declare-fun b!5887488 () Bool)

(declare-fun tp!1632099 () Bool)

(assert (=> b!5887488 (= e!3607455 tp!1632099)))

(declare-fun b!5887489 () Bool)

(assert (=> b!5887489 (= e!3607451 e!3607462)))

(declare-fun res!2472701 () Bool)

(assert (=> b!5887489 (=> res!2472701 e!3607462)))

(declare-fun lt!2307400 () Bool)

(assert (=> b!5887489 (= res!2472701 (or (not (= lt!2307404 (or lt!2307394 lt!2307400))) (is-Nil!63995 s!2326)))))

(assert (=> b!5887489 (= lt!2307400 (matchRSpec!3041 (regTwo!32393 r!7292) s!2326))))

(assert (=> b!5887489 (= lt!2307400 (matchR!8123 (regTwo!32393 r!7292) s!2326))))

(declare-fun lt!2307385 () Unit!157151)

(assert (=> b!5887489 (= lt!2307385 (mainMatchTheorem!3041 (regTwo!32393 r!7292) s!2326))))

(assert (=> b!5887489 (= lt!2307394 (matchRSpec!3041 (regOne!32393 r!7292) s!2326))))

(assert (=> b!5887489 (= lt!2307394 (matchR!8123 (regOne!32393 r!7292) s!2326))))

(declare-fun lt!2307389 () Unit!157151)

(assert (=> b!5887489 (= lt!2307389 (mainMatchTheorem!3041 (regOne!32393 r!7292) s!2326))))

(declare-fun b!5887490 () Bool)

(declare-fun tp!1632106 () Bool)

(assert (=> b!5887490 (= e!3607457 (and (inv!83098 (h!70445 zl!343)) e!3607464 tp!1632106))))

(assert (= (and start!600514 res!2472715) b!5887472))

(assert (= (and b!5887472 res!2472711) b!5887480))

(assert (= (and b!5887480 res!2472714) b!5887470))

(assert (= (and b!5887470 (not res!2472713)) b!5887485))

(assert (= (and b!5887485 (not res!2472702)) b!5887483))

(assert (= (and b!5887483 (not res!2472705)) b!5887476))

(assert (= (and b!5887476 (not res!2472704)) b!5887467))

(assert (= (and b!5887467 (not res!2472707)) b!5887481))

(assert (= (and b!5887481 (not res!2472700)) b!5887489))

(assert (= (and b!5887489 (not res!2472701)) b!5887471))

(assert (= (and b!5887471 (not res!2472706)) b!5887469))

(assert (= (and b!5887469 (not res!2472699)) b!5887466))

(assert (= (and b!5887466 (not res!2472709)) b!5887474))

(assert (= (and b!5887474 (not res!2472712)) b!5887475))

(assert (= (and b!5887475 (not res!2472708)) b!5887484))

(assert (= (and b!5887475 (not res!2472703)) b!5887477))

(assert (= (and b!5887477 (not res!2472710)) b!5887482))

(assert (= (and b!5887482 (not res!2472717)) b!5887465))

(assert (= (and b!5887465 (not res!2472716)) b!5887464))

(assert (= (and start!600514 (is-ElementMatch!15940 r!7292)) b!5887468))

(assert (= (and start!600514 (is-Concat!24785 r!7292)) b!5887486))

(assert (= (and start!600514 (is-Star!15940 r!7292)) b!5887487))

(assert (= (and start!600514 (is-Union!15940 r!7292)) b!5887478))

(assert (= (and start!600514 condSetEmpty!39926) setIsEmpty!39926))

(assert (= (and start!600514 (not condSetEmpty!39926)) setNonEmpty!39926))

(assert (= setNonEmpty!39926 b!5887488))

(assert (= b!5887490 b!5887479))

(assert (= (and start!600514 (is-Cons!63997 zl!343)) b!5887490))

(assert (= (and start!600514 (is-Cons!63995 s!2326)) b!5887473))

(declare-fun m!6795846 () Bool)

(assert (=> b!5887472 m!6795846))

(declare-fun m!6795848 () Bool)

(assert (=> b!5887485 m!6795848))

(declare-fun m!6795850 () Bool)

(assert (=> b!5887490 m!6795850))

(declare-fun m!6795852 () Bool)

(assert (=> b!5887470 m!6795852))

(declare-fun m!6795854 () Bool)

(assert (=> b!5887470 m!6795854))

(declare-fun m!6795856 () Bool)

(assert (=> b!5887470 m!6795856))

(declare-fun m!6795858 () Bool)

(assert (=> b!5887471 m!6795858))

(declare-fun m!6795860 () Bool)

(assert (=> b!5887471 m!6795860))

(declare-fun m!6795862 () Bool)

(assert (=> b!5887474 m!6795862))

(declare-fun m!6795864 () Bool)

(assert (=> b!5887474 m!6795864))

(declare-fun m!6795866 () Bool)

(assert (=> start!600514 m!6795866))

(declare-fun m!6795868 () Bool)

(assert (=> b!5887466 m!6795868))

(declare-fun m!6795870 () Bool)

(assert (=> b!5887466 m!6795870))

(declare-fun m!6795872 () Bool)

(assert (=> b!5887466 m!6795872))

(declare-fun m!6795874 () Bool)

(assert (=> b!5887466 m!6795874))

(declare-fun m!6795876 () Bool)

(assert (=> b!5887484 m!6795876))

(declare-fun m!6795878 () Bool)

(assert (=> b!5887469 m!6795878))

(declare-fun m!6795880 () Bool)

(assert (=> b!5887469 m!6795880))

(assert (=> b!5887482 m!6795876))

(declare-fun m!6795882 () Bool)

(assert (=> b!5887482 m!6795882))

(declare-fun m!6795884 () Bool)

(assert (=> b!5887483 m!6795884))

(declare-fun m!6795886 () Bool)

(assert (=> b!5887475 m!6795886))

(declare-fun m!6795888 () Bool)

(assert (=> b!5887475 m!6795888))

(declare-fun m!6795890 () Bool)

(assert (=> b!5887489 m!6795890))

(declare-fun m!6795892 () Bool)

(assert (=> b!5887489 m!6795892))

(declare-fun m!6795894 () Bool)

(assert (=> b!5887489 m!6795894))

(declare-fun m!6795896 () Bool)

(assert (=> b!5887489 m!6795896))

(declare-fun m!6795898 () Bool)

(assert (=> b!5887489 m!6795898))

(declare-fun m!6795900 () Bool)

(assert (=> b!5887489 m!6795900))

(declare-fun m!6795902 () Bool)

(assert (=> b!5887464 m!6795902))

(declare-fun m!6795904 () Bool)

(assert (=> b!5887464 m!6795904))

(declare-fun m!6795906 () Bool)

(assert (=> setNonEmpty!39926 m!6795906))

(declare-fun m!6795908 () Bool)

(assert (=> b!5887480 m!6795908))

(declare-fun m!6795910 () Bool)

(assert (=> b!5887477 m!6795910))

(declare-fun m!6795912 () Bool)

(assert (=> b!5887477 m!6795912))

(declare-fun m!6795914 () Bool)

(assert (=> b!5887477 m!6795914))

(declare-fun m!6795916 () Bool)

(assert (=> b!5887477 m!6795916))

(declare-fun m!6795918 () Bool)

(assert (=> b!5887477 m!6795918))

(declare-fun m!6795920 () Bool)

(assert (=> b!5887477 m!6795920))

(declare-fun m!6795922 () Bool)

(assert (=> b!5887477 m!6795922))

(declare-fun m!6795924 () Bool)

(assert (=> b!5887477 m!6795924))

(declare-fun m!6795926 () Bool)

(assert (=> b!5887477 m!6795926))

(declare-fun m!6795928 () Bool)

(assert (=> b!5887467 m!6795928))

(assert (=> b!5887467 m!6795928))

(declare-fun m!6795930 () Bool)

(assert (=> b!5887467 m!6795930))

(push 1)

(assert (not b!5887472))

(assert (not b!5887482))

(assert (not b!5887488))

(assert (not setNonEmpty!39926))

(assert (not b!5887486))

(assert (not b!5887485))

(assert (not b!5887469))

(assert (not b!5887484))

(assert (not b!5887489))

(assert (not b!5887464))

(assert (not b!5887478))

(assert (not b!5887471))

(assert (not b!5887487))

(assert (not b!5887479))

(assert tp_is_empty!41133)

(assert (not b!5887466))

(assert (not b!5887467))

(assert (not b!5887477))

(assert (not b!5887470))

(assert (not b!5887483))

(assert (not b!5887475))

(assert (not b!5887474))

(assert (not start!600514))

(assert (not b!5887480))

(assert (not b!5887473))

(assert (not b!5887490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1848296 () Bool)

(declare-fun choose!44514 ((Set Context!10648) Int) (Set Context!10648))

(assert (=> d!1848296 (= (flatMap!1471 lt!2307380 lambda!321508) (choose!44514 lt!2307380 lambda!321508))))

(declare-fun bs!1390933 () Bool)

(assert (= bs!1390933 d!1848296))

(declare-fun m!6796034 () Bool)

(assert (=> bs!1390933 m!6796034))

(assert (=> b!5887477 d!1848296))

(declare-fun d!1848298 () Bool)

(declare-fun dynLambda!25034 (Int Context!10648) (Set Context!10648))

(assert (=> d!1848298 (= (flatMap!1471 lt!2307405 lambda!321508) (dynLambda!25034 lambda!321508 lt!2307392))))

(declare-fun lt!2307504 () Unit!157151)

(declare-fun choose!44515 ((Set Context!10648) Context!10648 Int) Unit!157151)

(assert (=> d!1848298 (= lt!2307504 (choose!44515 lt!2307405 lt!2307392 lambda!321508))))

(assert (=> d!1848298 (= lt!2307405 (set.insert lt!2307392 (as set.empty (Set Context!10648))))))

(assert (=> d!1848298 (= (lemmaFlatMapOnSingletonSet!999 lt!2307405 lt!2307392 lambda!321508) lt!2307504)))

(declare-fun b_lambda!221511 () Bool)

(assert (=> (not b_lambda!221511) (not d!1848298)))

(declare-fun bs!1390935 () Bool)

(assert (= bs!1390935 d!1848298))

(assert (=> bs!1390935 m!6795926))

(declare-fun m!6796042 () Bool)

(assert (=> bs!1390935 m!6796042))

(declare-fun m!6796044 () Bool)

(assert (=> bs!1390935 m!6796044))

(assert (=> bs!1390935 m!6795924))

(assert (=> b!5887477 d!1848298))

(declare-fun b!5887606 () Bool)

(declare-fun e!3607532 () (Set Context!10648))

(assert (=> b!5887606 (= e!3607532 (as set.empty (Set Context!10648)))))

(declare-fun b!5887607 () Bool)

(declare-fun call!464417 () (Set Context!10648))

(assert (=> b!5887607 (= e!3607532 call!464417)))

(declare-fun b!5887608 () Bool)

(declare-fun e!3607533 () (Set Context!10648))

(assert (=> b!5887608 (= e!3607533 e!3607532)))

(declare-fun c!1045619 () Bool)

(assert (=> b!5887608 (= c!1045619 (is-Cons!63996 (exprs!5824 lt!2307383)))))

(declare-fun b!5887609 () Bool)

(assert (=> b!5887609 (= e!3607533 (set.union call!464417 (derivationStepZipperUp!1132 (Context!10649 (t!377503 (exprs!5824 lt!2307383))) (h!70443 s!2326))))))

(declare-fun b!5887610 () Bool)

(declare-fun e!3607531 () Bool)

(declare-fun nullable!5940 (Regex!15940) Bool)

(assert (=> b!5887610 (= e!3607531 (nullable!5940 (h!70444 (exprs!5824 lt!2307383))))))

(declare-fun d!1848302 () Bool)

(declare-fun c!1045618 () Bool)

(assert (=> d!1848302 (= c!1045618 e!3607531)))

(declare-fun res!2472783 () Bool)

(assert (=> d!1848302 (=> (not res!2472783) (not e!3607531))))

(assert (=> d!1848302 (= res!2472783 (is-Cons!63996 (exprs!5824 lt!2307383)))))

(assert (=> d!1848302 (= (derivationStepZipperUp!1132 lt!2307383 (h!70443 s!2326)) e!3607533)))

(declare-fun bm!464412 () Bool)

(assert (=> bm!464412 (= call!464417 (derivationStepZipperDown!1206 (h!70444 (exprs!5824 lt!2307383)) (Context!10649 (t!377503 (exprs!5824 lt!2307383))) (h!70443 s!2326)))))

(assert (= (and d!1848302 res!2472783) b!5887610))

(assert (= (and d!1848302 c!1045618) b!5887609))

(assert (= (and d!1848302 (not c!1045618)) b!5887608))

(assert (= (and b!5887608 c!1045619) b!5887607))

(assert (= (and b!5887608 (not c!1045619)) b!5887606))

(assert (= (or b!5887609 b!5887607) bm!464412))

(declare-fun m!6796046 () Bool)

(assert (=> b!5887609 m!6796046))

(declare-fun m!6796048 () Bool)

(assert (=> b!5887610 m!6796048))

(declare-fun m!6796050 () Bool)

(assert (=> bm!464412 m!6796050))

(assert (=> b!5887477 d!1848302))

(declare-fun b!5887611 () Bool)

(declare-fun e!3607535 () (Set Context!10648))

(assert (=> b!5887611 (= e!3607535 (as set.empty (Set Context!10648)))))

(declare-fun b!5887612 () Bool)

(declare-fun call!464418 () (Set Context!10648))

(assert (=> b!5887612 (= e!3607535 call!464418)))

(declare-fun b!5887613 () Bool)

(declare-fun e!3607536 () (Set Context!10648))

(assert (=> b!5887613 (= e!3607536 e!3607535)))

(declare-fun c!1045621 () Bool)

(assert (=> b!5887613 (= c!1045621 (is-Cons!63996 (exprs!5824 lt!2307392)))))

(declare-fun b!5887614 () Bool)

(assert (=> b!5887614 (= e!3607536 (set.union call!464418 (derivationStepZipperUp!1132 (Context!10649 (t!377503 (exprs!5824 lt!2307392))) (h!70443 s!2326))))))

(declare-fun b!5887615 () Bool)

(declare-fun e!3607534 () Bool)

(assert (=> b!5887615 (= e!3607534 (nullable!5940 (h!70444 (exprs!5824 lt!2307392))))))

(declare-fun d!1848304 () Bool)

(declare-fun c!1045620 () Bool)

(assert (=> d!1848304 (= c!1045620 e!3607534)))

(declare-fun res!2472784 () Bool)

(assert (=> d!1848304 (=> (not res!2472784) (not e!3607534))))

(assert (=> d!1848304 (= res!2472784 (is-Cons!63996 (exprs!5824 lt!2307392)))))

(assert (=> d!1848304 (= (derivationStepZipperUp!1132 lt!2307392 (h!70443 s!2326)) e!3607536)))

(declare-fun bm!464413 () Bool)

(assert (=> bm!464413 (= call!464418 (derivationStepZipperDown!1206 (h!70444 (exprs!5824 lt!2307392)) (Context!10649 (t!377503 (exprs!5824 lt!2307392))) (h!70443 s!2326)))))

(assert (= (and d!1848304 res!2472784) b!5887615))

(assert (= (and d!1848304 c!1045620) b!5887614))

(assert (= (and d!1848304 (not c!1045620)) b!5887613))

(assert (= (and b!5887613 c!1045621) b!5887612))

(assert (= (and b!5887613 (not c!1045621)) b!5887611))

(assert (= (or b!5887614 b!5887612) bm!464413))

(declare-fun m!6796052 () Bool)

(assert (=> b!5887614 m!6796052))

(declare-fun m!6796054 () Bool)

(assert (=> b!5887615 m!6796054))

(declare-fun m!6796056 () Bool)

(assert (=> bm!464413 m!6796056))

(assert (=> b!5887477 d!1848304))

(declare-fun d!1848306 () Bool)

(assert (=> d!1848306 (= (flatMap!1471 lt!2307380 lambda!321508) (dynLambda!25034 lambda!321508 lt!2307383))))

(declare-fun lt!2307505 () Unit!157151)

(assert (=> d!1848306 (= lt!2307505 (choose!44515 lt!2307380 lt!2307383 lambda!321508))))

(assert (=> d!1848306 (= lt!2307380 (set.insert lt!2307383 (as set.empty (Set Context!10648))))))

(assert (=> d!1848306 (= (lemmaFlatMapOnSingletonSet!999 lt!2307380 lt!2307383 lambda!321508) lt!2307505)))

(declare-fun b_lambda!221513 () Bool)

(assert (=> (not b_lambda!221513) (not d!1848306)))

(declare-fun bs!1390936 () Bool)

(assert (= bs!1390936 d!1848306))

(assert (=> bs!1390936 m!6795912))

(declare-fun m!6796058 () Bool)

(assert (=> bs!1390936 m!6796058))

(declare-fun m!6796060 () Bool)

(assert (=> bs!1390936 m!6796060))

(assert (=> bs!1390936 m!6795918))

(assert (=> b!5887477 d!1848306))

(declare-fun d!1848308 () Bool)

(declare-fun c!1045628 () Bool)

(declare-fun isEmpty!35857 (List!64119) Bool)

(assert (=> d!1848308 (= c!1045628 (isEmpty!35857 s!2326))))

(declare-fun e!3607545 () Bool)

(assert (=> d!1848308 (= (matchZipper!2006 lt!2307405 s!2326) e!3607545)))

(declare-fun b!5887630 () Bool)

(declare-fun nullableZipper!1779 ((Set Context!10648)) Bool)

(assert (=> b!5887630 (= e!3607545 (nullableZipper!1779 lt!2307405))))

(declare-fun b!5887631 () Bool)

(declare-fun head!12434 (List!64119) C!32150)

(declare-fun tail!11519 (List!64119) List!64119)

(assert (=> b!5887631 (= e!3607545 (matchZipper!2006 (derivationStepZipper!1939 lt!2307405 (head!12434 s!2326)) (tail!11519 s!2326)))))

(assert (= (and d!1848308 c!1045628) b!5887630))

(assert (= (and d!1848308 (not c!1045628)) b!5887631))

(declare-fun m!6796062 () Bool)

(assert (=> d!1848308 m!6796062))

(declare-fun m!6796064 () Bool)

(assert (=> b!5887630 m!6796064))

(declare-fun m!6796066 () Bool)

(assert (=> b!5887631 m!6796066))

(assert (=> b!5887631 m!6796066))

(declare-fun m!6796068 () Bool)

(assert (=> b!5887631 m!6796068))

(declare-fun m!6796070 () Bool)

(assert (=> b!5887631 m!6796070))

(assert (=> b!5887631 m!6796068))

(assert (=> b!5887631 m!6796070))

(declare-fun m!6796072 () Bool)

(assert (=> b!5887631 m!6796072))

(assert (=> b!5887477 d!1848308))

(declare-fun d!1848310 () Bool)

(assert (=> d!1848310 (= (flatMap!1471 lt!2307405 lambda!321508) (choose!44514 lt!2307405 lambda!321508))))

(declare-fun bs!1390937 () Bool)

(assert (= bs!1390937 d!1848310))

(declare-fun m!6796074 () Bool)

(assert (=> bs!1390937 m!6796074))

(assert (=> b!5887477 d!1848310))

(declare-fun bs!1390938 () Bool)

(declare-fun d!1848312 () Bool)

(assert (= bs!1390938 (and d!1848312 b!5887466)))

(declare-fun lambda!321523 () Int)

(assert (=> bs!1390938 (= lambda!321523 lambda!321508)))

(assert (=> d!1848312 true))

(assert (=> d!1848312 (= (derivationStepZipper!1939 z!1189 (h!70443 s!2326)) (flatMap!1471 z!1189 lambda!321523))))

(declare-fun bs!1390939 () Bool)

(assert (= bs!1390939 d!1848312))

(declare-fun m!6796076 () Bool)

(assert (=> bs!1390939 m!6796076))

(assert (=> b!5887466 d!1848312))

(declare-fun d!1848314 () Bool)

(assert (=> d!1848314 (= (flatMap!1471 z!1189 lambda!321508) (choose!44514 z!1189 lambda!321508))))

(declare-fun bs!1390940 () Bool)

(assert (= bs!1390940 d!1848314))

(declare-fun m!6796078 () Bool)

(assert (=> bs!1390940 m!6796078))

(assert (=> b!5887466 d!1848314))

(declare-fun b!5887644 () Bool)

(declare-fun e!3607553 () (Set Context!10648))

(assert (=> b!5887644 (= e!3607553 (as set.empty (Set Context!10648)))))

(declare-fun b!5887645 () Bool)

(declare-fun call!464419 () (Set Context!10648))

(assert (=> b!5887645 (= e!3607553 call!464419)))

(declare-fun b!5887646 () Bool)

(declare-fun e!3607554 () (Set Context!10648))

(assert (=> b!5887646 (= e!3607554 e!3607553)))

(declare-fun c!1045636 () Bool)

(assert (=> b!5887646 (= c!1045636 (is-Cons!63996 (exprs!5824 (h!70445 zl!343))))))

(declare-fun b!5887647 () Bool)

(assert (=> b!5887647 (= e!3607554 (set.union call!464419 (derivationStepZipperUp!1132 (Context!10649 (t!377503 (exprs!5824 (h!70445 zl!343)))) (h!70443 s!2326))))))

(declare-fun b!5887648 () Bool)

(declare-fun e!3607552 () Bool)

(assert (=> b!5887648 (= e!3607552 (nullable!5940 (h!70444 (exprs!5824 (h!70445 zl!343)))))))

(declare-fun d!1848316 () Bool)

(declare-fun c!1045635 () Bool)

(assert (=> d!1848316 (= c!1045635 e!3607552)))

(declare-fun res!2472789 () Bool)

(assert (=> d!1848316 (=> (not res!2472789) (not e!3607552))))

(assert (=> d!1848316 (= res!2472789 (is-Cons!63996 (exprs!5824 (h!70445 zl!343))))))

(assert (=> d!1848316 (= (derivationStepZipperUp!1132 (h!70445 zl!343) (h!70443 s!2326)) e!3607554)))

(declare-fun bm!464414 () Bool)

(assert (=> bm!464414 (= call!464419 (derivationStepZipperDown!1206 (h!70444 (exprs!5824 (h!70445 zl!343))) (Context!10649 (t!377503 (exprs!5824 (h!70445 zl!343)))) (h!70443 s!2326)))))

(assert (= (and d!1848316 res!2472789) b!5887648))

(assert (= (and d!1848316 c!1045635) b!5887647))

(assert (= (and d!1848316 (not c!1045635)) b!5887646))

(assert (= (and b!5887646 c!1045636) b!5887645))

(assert (= (and b!5887646 (not c!1045636)) b!5887644))

(assert (= (or b!5887647 b!5887645) bm!464414))

(declare-fun m!6796080 () Bool)

(assert (=> b!5887647 m!6796080))

(declare-fun m!6796082 () Bool)

(assert (=> b!5887648 m!6796082))

(declare-fun m!6796084 () Bool)

(assert (=> bm!464414 m!6796084))

(assert (=> b!5887466 d!1848316))

(declare-fun d!1848318 () Bool)

(assert (=> d!1848318 (= (flatMap!1471 z!1189 lambda!321508) (dynLambda!25034 lambda!321508 (h!70445 zl!343)))))

(declare-fun lt!2307508 () Unit!157151)

(assert (=> d!1848318 (= lt!2307508 (choose!44515 z!1189 (h!70445 zl!343) lambda!321508))))

(assert (=> d!1848318 (= z!1189 (set.insert (h!70445 zl!343) (as set.empty (Set Context!10648))))))

(assert (=> d!1848318 (= (lemmaFlatMapOnSingletonSet!999 z!1189 (h!70445 zl!343) lambda!321508) lt!2307508)))

(declare-fun b_lambda!221515 () Bool)

(assert (=> (not b_lambda!221515) (not d!1848318)))

(declare-fun bs!1390941 () Bool)

(assert (= bs!1390941 d!1848318))

(assert (=> bs!1390941 m!6795870))

(declare-fun m!6796086 () Bool)

(assert (=> bs!1390941 m!6796086))

(declare-fun m!6796088 () Bool)

(assert (=> bs!1390941 m!6796088))

(declare-fun m!6796090 () Bool)

(assert (=> bs!1390941 m!6796090))

(assert (=> b!5887466 d!1848318))

(declare-fun d!1848320 () Bool)

(declare-fun c!1045637 () Bool)

(assert (=> d!1848320 (= c!1045637 (isEmpty!35857 (t!377502 s!2326)))))

(declare-fun e!3607555 () Bool)

(assert (=> d!1848320 (= (matchZipper!2006 lt!2307398 (t!377502 s!2326)) e!3607555)))

(declare-fun b!5887649 () Bool)

(assert (=> b!5887649 (= e!3607555 (nullableZipper!1779 lt!2307398))))

(declare-fun b!5887650 () Bool)

(assert (=> b!5887650 (= e!3607555 (matchZipper!2006 (derivationStepZipper!1939 lt!2307398 (head!12434 (t!377502 s!2326))) (tail!11519 (t!377502 s!2326))))))

(assert (= (and d!1848320 c!1045637) b!5887649))

(assert (= (and d!1848320 (not c!1045637)) b!5887650))

(declare-fun m!6796092 () Bool)

(assert (=> d!1848320 m!6796092))

(declare-fun m!6796094 () Bool)

(assert (=> b!5887649 m!6796094))

(declare-fun m!6796096 () Bool)

(assert (=> b!5887650 m!6796096))

(assert (=> b!5887650 m!6796096))

(declare-fun m!6796098 () Bool)

(assert (=> b!5887650 m!6796098))

(declare-fun m!6796100 () Bool)

(assert (=> b!5887650 m!6796100))

(assert (=> b!5887650 m!6796098))

(assert (=> b!5887650 m!6796100))

(declare-fun m!6796102 () Bool)

(assert (=> b!5887650 m!6796102))

(assert (=> b!5887475 d!1848320))

(declare-fun d!1848322 () Bool)

(declare-fun e!3607564 () Bool)

(assert (=> d!1848322 (= (matchZipper!2006 (set.union lt!2307398 lt!2307384) (t!377502 s!2326)) e!3607564)))

(declare-fun res!2472794 () Bool)

(assert (=> d!1848322 (=> res!2472794 e!3607564)))

(assert (=> d!1848322 (= res!2472794 (matchZipper!2006 lt!2307398 (t!377502 s!2326)))))

(declare-fun lt!2307512 () Unit!157151)

(declare-fun choose!44516 ((Set Context!10648) (Set Context!10648) List!64119) Unit!157151)

(assert (=> d!1848322 (= lt!2307512 (choose!44516 lt!2307398 lt!2307384 (t!377502 s!2326)))))

(assert (=> d!1848322 (= (lemmaZipperConcatMatchesSameAsBothZippers!841 lt!2307398 lt!2307384 (t!377502 s!2326)) lt!2307512)))

(declare-fun b!5887663 () Bool)

(assert (=> b!5887663 (= e!3607564 (matchZipper!2006 lt!2307384 (t!377502 s!2326)))))

(assert (= (and d!1848322 (not res!2472794)) b!5887663))

(declare-fun m!6796104 () Bool)

(assert (=> d!1848322 m!6796104))

(assert (=> d!1848322 m!6795886))

(declare-fun m!6796106 () Bool)

(assert (=> d!1848322 m!6796106))

(assert (=> b!5887663 m!6795876))

(assert (=> b!5887475 d!1848322))

(declare-fun b!5887688 () Bool)

(declare-fun e!3607584 () Bool)

(declare-fun isEmpty!35858 (List!64120) Bool)

(assert (=> b!5887688 (= e!3607584 (isEmpty!35858 (t!377503 (unfocusZipperList!1361 zl!343))))))

(declare-fun b!5887689 () Bool)

(declare-fun e!3607580 () Regex!15940)

(declare-fun e!3607582 () Regex!15940)

(assert (=> b!5887689 (= e!3607580 e!3607582)))

(declare-fun c!1045655 () Bool)

(assert (=> b!5887689 (= c!1045655 (is-Cons!63996 (unfocusZipperList!1361 zl!343)))))

(declare-fun d!1848324 () Bool)

(declare-fun e!3607579 () Bool)

(assert (=> d!1848324 e!3607579))

(declare-fun res!2472799 () Bool)

(assert (=> d!1848324 (=> (not res!2472799) (not e!3607579))))

(declare-fun lt!2307517 () Regex!15940)

(assert (=> d!1848324 (= res!2472799 (validRegex!7676 lt!2307517))))

(assert (=> d!1848324 (= lt!2307517 e!3607580)))

(declare-fun c!1045654 () Bool)

(assert (=> d!1848324 (= c!1045654 e!3607584)))

(declare-fun res!2472800 () Bool)

(assert (=> d!1848324 (=> (not res!2472800) (not e!3607584))))

(assert (=> d!1848324 (= res!2472800 (is-Cons!63996 (unfocusZipperList!1361 zl!343)))))

(declare-fun lambda!321529 () Int)

(declare-fun forall!15028 (List!64120 Int) Bool)

(assert (=> d!1848324 (forall!15028 (unfocusZipperList!1361 zl!343) lambda!321529)))

(assert (=> d!1848324 (= (generalisedUnion!1784 (unfocusZipperList!1361 zl!343)) lt!2307517)))

(declare-fun b!5887690 () Bool)

(assert (=> b!5887690 (= e!3607582 (Union!15940 (h!70444 (unfocusZipperList!1361 zl!343)) (generalisedUnion!1784 (t!377503 (unfocusZipperList!1361 zl!343)))))))

(declare-fun b!5887691 () Bool)

(assert (=> b!5887691 (= e!3607582 EmptyLang!15940)))

(declare-fun b!5887692 () Bool)

(declare-fun e!3607583 () Bool)

(declare-fun e!3607581 () Bool)

(assert (=> b!5887692 (= e!3607583 e!3607581)))

(declare-fun c!1045653 () Bool)

(declare-fun tail!11520 (List!64120) List!64120)

(assert (=> b!5887692 (= c!1045653 (isEmpty!35858 (tail!11520 (unfocusZipperList!1361 zl!343))))))

(declare-fun b!5887693 () Bool)

(declare-fun isEmptyLang!1383 (Regex!15940) Bool)

(assert (=> b!5887693 (= e!3607583 (isEmptyLang!1383 lt!2307517))))

(declare-fun b!5887694 () Bool)

(assert (=> b!5887694 (= e!3607580 (h!70444 (unfocusZipperList!1361 zl!343)))))

(declare-fun b!5887695 () Bool)

(declare-fun isUnion!813 (Regex!15940) Bool)

(assert (=> b!5887695 (= e!3607581 (isUnion!813 lt!2307517))))

(declare-fun b!5887696 () Bool)

(declare-fun head!12435 (List!64120) Regex!15940)

(assert (=> b!5887696 (= e!3607581 (= lt!2307517 (head!12435 (unfocusZipperList!1361 zl!343))))))

(declare-fun b!5887697 () Bool)

(assert (=> b!5887697 (= e!3607579 e!3607583)))

(declare-fun c!1045652 () Bool)

(assert (=> b!5887697 (= c!1045652 (isEmpty!35858 (unfocusZipperList!1361 zl!343)))))

(assert (= (and d!1848324 res!2472800) b!5887688))

(assert (= (and d!1848324 c!1045654) b!5887694))

(assert (= (and d!1848324 (not c!1045654)) b!5887689))

(assert (= (and b!5887689 c!1045655) b!5887690))

(assert (= (and b!5887689 (not c!1045655)) b!5887691))

(assert (= (and d!1848324 res!2472799) b!5887697))

(assert (= (and b!5887697 c!1045652) b!5887693))

(assert (= (and b!5887697 (not c!1045652)) b!5887692))

(assert (= (and b!5887692 c!1045653) b!5887696))

(assert (= (and b!5887692 (not c!1045653)) b!5887695))

(assert (=> b!5887697 m!6795928))

(declare-fun m!6796128 () Bool)

(assert (=> b!5887697 m!6796128))

(declare-fun m!6796130 () Bool)

(assert (=> d!1848324 m!6796130))

(assert (=> d!1848324 m!6795928))

(declare-fun m!6796132 () Bool)

(assert (=> d!1848324 m!6796132))

(assert (=> b!5887692 m!6795928))

(declare-fun m!6796134 () Bool)

(assert (=> b!5887692 m!6796134))

(assert (=> b!5887692 m!6796134))

(declare-fun m!6796136 () Bool)

(assert (=> b!5887692 m!6796136))

(assert (=> b!5887696 m!6795928))

(declare-fun m!6796138 () Bool)

(assert (=> b!5887696 m!6796138))

(declare-fun m!6796140 () Bool)

(assert (=> b!5887695 m!6796140))

(declare-fun m!6796142 () Bool)

(assert (=> b!5887688 m!6796142))

(declare-fun m!6796144 () Bool)

(assert (=> b!5887693 m!6796144))

(declare-fun m!6796146 () Bool)

(assert (=> b!5887690 m!6796146))

(assert (=> b!5887467 d!1848324))

(declare-fun bs!1390943 () Bool)

(declare-fun d!1848328 () Bool)

(assert (= bs!1390943 (and d!1848328 d!1848324)))

(declare-fun lambda!321533 () Int)

(assert (=> bs!1390943 (= lambda!321533 lambda!321529)))

(declare-fun lt!2307521 () List!64120)

(assert (=> d!1848328 (forall!15028 lt!2307521 lambda!321533)))

(declare-fun e!3607588 () List!64120)

(assert (=> d!1848328 (= lt!2307521 e!3607588)))

(declare-fun c!1045659 () Bool)

(assert (=> d!1848328 (= c!1045659 (is-Cons!63997 zl!343))))

(assert (=> d!1848328 (= (unfocusZipperList!1361 zl!343) lt!2307521)))

(declare-fun b!5887704 () Bool)

(assert (=> b!5887704 (= e!3607588 (Cons!63996 (generalisedConcat!1537 (exprs!5824 (h!70445 zl!343))) (unfocusZipperList!1361 (t!377504 zl!343))))))

(declare-fun b!5887705 () Bool)

(assert (=> b!5887705 (= e!3607588 Nil!63996)))

(assert (= (and d!1848328 c!1045659) b!5887704))

(assert (= (and d!1848328 (not c!1045659)) b!5887705))

(declare-fun m!6796152 () Bool)

(assert (=> d!1848328 m!6796152))

(assert (=> b!5887704 m!6795884))

(declare-fun m!6796154 () Bool)

(assert (=> b!5887704 m!6796154))

(assert (=> b!5887467 d!1848328))

(declare-fun d!1848332 () Bool)

(declare-fun c!1045660 () Bool)

(assert (=> d!1848332 (= c!1045660 (isEmpty!35857 (t!377502 s!2326)))))

(declare-fun e!3607589 () Bool)

(assert (=> d!1848332 (= (matchZipper!2006 lt!2307384 (t!377502 s!2326)) e!3607589)))

(declare-fun b!5887706 () Bool)

(assert (=> b!5887706 (= e!3607589 (nullableZipper!1779 lt!2307384))))

(declare-fun b!5887707 () Bool)

(assert (=> b!5887707 (= e!3607589 (matchZipper!2006 (derivationStepZipper!1939 lt!2307384 (head!12434 (t!377502 s!2326))) (tail!11519 (t!377502 s!2326))))))

(assert (= (and d!1848332 c!1045660) b!5887706))

(assert (= (and d!1848332 (not c!1045660)) b!5887707))

(assert (=> d!1848332 m!6796092))

(declare-fun m!6796156 () Bool)

(assert (=> b!5887706 m!6796156))

(assert (=> b!5887707 m!6796096))

(assert (=> b!5887707 m!6796096))

(declare-fun m!6796158 () Bool)

(assert (=> b!5887707 m!6796158))

(assert (=> b!5887707 m!6796100))

(assert (=> b!5887707 m!6796158))

(assert (=> b!5887707 m!6796100))

(declare-fun m!6796160 () Bool)

(assert (=> b!5887707 m!6796160))

(assert (=> b!5887484 d!1848332))

(declare-fun bs!1390944 () Bool)

(declare-fun d!1848334 () Bool)

(assert (= bs!1390944 (and d!1848334 d!1848324)))

(declare-fun lambda!321536 () Int)

(assert (=> bs!1390944 (= lambda!321536 lambda!321529)))

(declare-fun bs!1390945 () Bool)

(assert (= bs!1390945 (and d!1848334 d!1848328)))

(assert (=> bs!1390945 (= lambda!321536 lambda!321533)))

(assert (=> d!1848334 (= (inv!83098 setElem!39926) (forall!15028 (exprs!5824 setElem!39926) lambda!321536))))

(declare-fun bs!1390946 () Bool)

(assert (= bs!1390946 d!1848334))

(declare-fun m!6796162 () Bool)

(assert (=> bs!1390946 m!6796162))

(assert (=> setNonEmpty!39926 d!1848334))

(declare-fun d!1848336 () Bool)

(assert (=> d!1848336 (= (isEmpty!35855 (t!377504 zl!343)) (is-Nil!63997 (t!377504 zl!343)))))

(assert (=> b!5887485 d!1848336))

(declare-fun bs!1390947 () Bool)

(declare-fun d!1848338 () Bool)

(assert (= bs!1390947 (and d!1848338 d!1848324)))

(declare-fun lambda!321539 () Int)

(assert (=> bs!1390947 (= lambda!321539 lambda!321529)))

(declare-fun bs!1390948 () Bool)

(assert (= bs!1390948 (and d!1848338 d!1848328)))

(assert (=> bs!1390948 (= lambda!321539 lambda!321533)))

(declare-fun bs!1390949 () Bool)

(assert (= bs!1390949 (and d!1848338 d!1848334)))

(assert (=> bs!1390949 (= lambda!321539 lambda!321536)))

(declare-fun b!5887747 () Bool)

(declare-fun e!3607618 () Bool)

(declare-fun e!3607621 () Bool)

(assert (=> b!5887747 (= e!3607618 e!3607621)))

(declare-fun c!1045676 () Bool)

(assert (=> b!5887747 (= c!1045676 (isEmpty!35858 (tail!11520 (exprs!5824 (h!70445 zl!343)))))))

(declare-fun b!5887748 () Bool)

(declare-fun e!3607617 () Regex!15940)

(assert (=> b!5887748 (= e!3607617 (h!70444 (exprs!5824 (h!70445 zl!343))))))

(declare-fun b!5887749 () Bool)

(declare-fun e!3607616 () Regex!15940)

(assert (=> b!5887749 (= e!3607616 EmptyExpr!15940)))

(declare-fun b!5887750 () Bool)

(declare-fun e!3607620 () Bool)

(assert (=> b!5887750 (= e!3607620 e!3607618)))

(declare-fun c!1045673 () Bool)

(assert (=> b!5887750 (= c!1045673 (isEmpty!35858 (exprs!5824 (h!70445 zl!343))))))

(declare-fun b!5887751 () Bool)

(assert (=> b!5887751 (= e!3607617 e!3607616)))

(declare-fun c!1045675 () Bool)

(assert (=> b!5887751 (= c!1045675 (is-Cons!63996 (exprs!5824 (h!70445 zl!343))))))

(declare-fun b!5887752 () Bool)

(declare-fun lt!2307524 () Regex!15940)

(assert (=> b!5887752 (= e!3607621 (= lt!2307524 (head!12435 (exprs!5824 (h!70445 zl!343)))))))

(declare-fun b!5887753 () Bool)

(declare-fun isEmptyExpr!1375 (Regex!15940) Bool)

(assert (=> b!5887753 (= e!3607618 (isEmptyExpr!1375 lt!2307524))))

(declare-fun b!5887754 () Bool)

(declare-fun e!3607619 () Bool)

(assert (=> b!5887754 (= e!3607619 (isEmpty!35858 (t!377503 (exprs!5824 (h!70445 zl!343)))))))

(declare-fun b!5887755 () Bool)

(declare-fun isConcat!898 (Regex!15940) Bool)

(assert (=> b!5887755 (= e!3607621 (isConcat!898 lt!2307524))))

(declare-fun b!5887746 () Bool)

(assert (=> b!5887746 (= e!3607616 (Concat!24785 (h!70444 (exprs!5824 (h!70445 zl!343))) (generalisedConcat!1537 (t!377503 (exprs!5824 (h!70445 zl!343))))))))

(assert (=> d!1848338 e!3607620))

(declare-fun res!2472815 () Bool)

(assert (=> d!1848338 (=> (not res!2472815) (not e!3607620))))

(assert (=> d!1848338 (= res!2472815 (validRegex!7676 lt!2307524))))

(assert (=> d!1848338 (= lt!2307524 e!3607617)))

(declare-fun c!1045674 () Bool)

(assert (=> d!1848338 (= c!1045674 e!3607619)))

(declare-fun res!2472816 () Bool)

(assert (=> d!1848338 (=> (not res!2472816) (not e!3607619))))

(assert (=> d!1848338 (= res!2472816 (is-Cons!63996 (exprs!5824 (h!70445 zl!343))))))

(assert (=> d!1848338 (forall!15028 (exprs!5824 (h!70445 zl!343)) lambda!321539)))

(assert (=> d!1848338 (= (generalisedConcat!1537 (exprs!5824 (h!70445 zl!343))) lt!2307524)))

(assert (= (and d!1848338 res!2472816) b!5887754))

(assert (= (and d!1848338 c!1045674) b!5887748))

(assert (= (and d!1848338 (not c!1045674)) b!5887751))

(assert (= (and b!5887751 c!1045675) b!5887746))

(assert (= (and b!5887751 (not c!1045675)) b!5887749))

(assert (= (and d!1848338 res!2472815) b!5887750))

(assert (= (and b!5887750 c!1045673) b!5887753))

(assert (= (and b!5887750 (not c!1045673)) b!5887747))

(assert (= (and b!5887747 c!1045676) b!5887752))

(assert (= (and b!5887747 (not c!1045676)) b!5887755))

(declare-fun m!6796164 () Bool)

(assert (=> b!5887746 m!6796164))

(declare-fun m!6796166 () Bool)

(assert (=> b!5887755 m!6796166))

(declare-fun m!6796168 () Bool)

(assert (=> b!5887750 m!6796168))

(declare-fun m!6796170 () Bool)

(assert (=> d!1848338 m!6796170))

(declare-fun m!6796172 () Bool)

(assert (=> d!1848338 m!6796172))

(declare-fun m!6796174 () Bool)

(assert (=> b!5887747 m!6796174))

(assert (=> b!5887747 m!6796174))

(declare-fun m!6796176 () Bool)

(assert (=> b!5887747 m!6796176))

(declare-fun m!6796178 () Bool)

(assert (=> b!5887753 m!6796178))

(declare-fun m!6796180 () Bool)

(assert (=> b!5887754 m!6796180))

(declare-fun m!6796182 () Bool)

(assert (=> b!5887752 m!6796182))

(assert (=> b!5887483 d!1848338))

(declare-fun b!5887783 () Bool)

(declare-fun e!3607643 () Bool)

(declare-fun e!3607644 () Bool)

(assert (=> b!5887783 (= e!3607643 e!3607644)))

(declare-fun c!1045684 () Bool)

(assert (=> b!5887783 (= c!1045684 (is-Star!15940 (regTwo!32393 r!7292)))))

(declare-fun b!5887784 () Bool)

(declare-fun e!3607646 () Bool)

(declare-fun call!464435 () Bool)

(assert (=> b!5887784 (= e!3607646 call!464435)))

(declare-fun b!5887785 () Bool)

(declare-fun e!3607648 () Bool)

(assert (=> b!5887785 (= e!3607648 call!464435)))

(declare-fun b!5887786 () Bool)

(declare-fun e!3607645 () Bool)

(assert (=> b!5887786 (= e!3607644 e!3607645)))

(declare-fun c!1045683 () Bool)

(assert (=> b!5887786 (= c!1045683 (is-Union!15940 (regTwo!32393 r!7292)))))

(declare-fun call!464436 () Bool)

(declare-fun bm!464430 () Bool)

(assert (=> bm!464430 (= call!464436 (validRegex!7676 (ite c!1045684 (reg!16269 (regTwo!32393 r!7292)) (ite c!1045683 (regTwo!32393 (regTwo!32393 r!7292)) (regTwo!32392 (regTwo!32393 r!7292))))))))

(declare-fun bm!464431 () Bool)

(assert (=> bm!464431 (= call!464435 call!464436)))

(declare-fun b!5887787 () Bool)

(declare-fun res!2472835 () Bool)

(assert (=> b!5887787 (=> (not res!2472835) (not e!3607646))))

(declare-fun call!464437 () Bool)

(assert (=> b!5887787 (= res!2472835 call!464437)))

(assert (=> b!5887787 (= e!3607645 e!3607646)))

(declare-fun b!5887789 () Bool)

(declare-fun e!3607647 () Bool)

(assert (=> b!5887789 (= e!3607647 call!464436)))

(declare-fun b!5887790 () Bool)

(assert (=> b!5887790 (= e!3607644 e!3607647)))

(declare-fun res!2472832 () Bool)

(assert (=> b!5887790 (= res!2472832 (not (nullable!5940 (reg!16269 (regTwo!32393 r!7292)))))))

(assert (=> b!5887790 (=> (not res!2472832) (not e!3607647))))

(declare-fun bm!464432 () Bool)

(assert (=> bm!464432 (= call!464437 (validRegex!7676 (ite c!1045683 (regOne!32393 (regTwo!32393 r!7292)) (regOne!32392 (regTwo!32393 r!7292)))))))

(declare-fun b!5887791 () Bool)

(declare-fun e!3607649 () Bool)

(assert (=> b!5887791 (= e!3607649 e!3607648)))

(declare-fun res!2472833 () Bool)

(assert (=> b!5887791 (=> (not res!2472833) (not e!3607648))))

(assert (=> b!5887791 (= res!2472833 call!464437)))

(declare-fun d!1848340 () Bool)

(declare-fun res!2472836 () Bool)

(assert (=> d!1848340 (=> res!2472836 e!3607643)))

(assert (=> d!1848340 (= res!2472836 (is-ElementMatch!15940 (regTwo!32393 r!7292)))))

(assert (=> d!1848340 (= (validRegex!7676 (regTwo!32393 r!7292)) e!3607643)))

(declare-fun b!5887788 () Bool)

(declare-fun res!2472834 () Bool)

(assert (=> b!5887788 (=> res!2472834 e!3607649)))

(assert (=> b!5887788 (= res!2472834 (not (is-Concat!24785 (regTwo!32393 r!7292))))))

(assert (=> b!5887788 (= e!3607645 e!3607649)))

(assert (= (and d!1848340 (not res!2472836)) b!5887783))

(assert (= (and b!5887783 c!1045684) b!5887790))

(assert (= (and b!5887783 (not c!1045684)) b!5887786))

(assert (= (and b!5887790 res!2472832) b!5887789))

(assert (= (and b!5887786 c!1045683) b!5887787))

(assert (= (and b!5887786 (not c!1045683)) b!5887788))

(assert (= (and b!5887787 res!2472835) b!5887784))

(assert (= (and b!5887788 (not res!2472834)) b!5887791))

(assert (= (and b!5887791 res!2472833) b!5887785))

(assert (= (or b!5887784 b!5887785) bm!464431))

(assert (= (or b!5887787 b!5887791) bm!464432))

(assert (= (or b!5887789 bm!464431) bm!464430))

(declare-fun m!6796190 () Bool)

(assert (=> bm!464430 m!6796190))

(declare-fun m!6796192 () Bool)

(assert (=> b!5887790 m!6796192))

(declare-fun m!6796194 () Bool)

(assert (=> bm!464432 m!6796194))

(assert (=> b!5887464 d!1848340))

(declare-fun d!1848344 () Bool)

(assert (=> d!1848344 (= (matchR!8123 (regOne!32393 r!7292) s!2326) (matchZipper!2006 lt!2307405 s!2326))))

(declare-fun lt!2307527 () Unit!157151)

(declare-fun choose!44520 ((Set Context!10648) List!64121 Regex!15940 List!64119) Unit!157151)

(assert (=> d!1848344 (= lt!2307527 (choose!44520 lt!2307405 (Cons!63997 lt!2307392 Nil!63997) (regOne!32393 r!7292) s!2326))))

(assert (=> d!1848344 (validRegex!7676 (regOne!32393 r!7292))))

(assert (=> d!1848344 (= (theoremZipperRegexEquiv!692 lt!2307405 (Cons!63997 lt!2307392 Nil!63997) (regOne!32393 r!7292) s!2326) lt!2307527)))

(declare-fun bs!1390950 () Bool)

(assert (= bs!1390950 d!1848344))

(assert (=> bs!1390950 m!6795900))

(assert (=> bs!1390950 m!6795910))

(declare-fun m!6796196 () Bool)

(assert (=> bs!1390950 m!6796196))

(declare-fun m!6796198 () Bool)

(assert (=> bs!1390950 m!6796198))

(assert (=> b!5887464 d!1848344))

(declare-fun d!1848346 () Bool)

(declare-fun c!1045695 () Bool)

(assert (=> d!1848346 (= c!1045695 (isEmpty!35857 s!2326))))

(declare-fun e!3607662 () Bool)

(assert (=> d!1848346 (= (matchZipper!2006 z!1189 s!2326) e!3607662)))

(declare-fun b!5887814 () Bool)

(assert (=> b!5887814 (= e!3607662 (nullableZipper!1779 z!1189))))

(declare-fun b!5887815 () Bool)

(assert (=> b!5887815 (= e!3607662 (matchZipper!2006 (derivationStepZipper!1939 z!1189 (head!12434 s!2326)) (tail!11519 s!2326)))))

(assert (= (and d!1848346 c!1045695) b!5887814))

(assert (= (and d!1848346 (not c!1045695)) b!5887815))

(assert (=> d!1848346 m!6796062))

(declare-fun m!6796200 () Bool)

(assert (=> b!5887814 m!6796200))

(assert (=> b!5887815 m!6796066))

(assert (=> b!5887815 m!6796066))

(declare-fun m!6796202 () Bool)

(assert (=> b!5887815 m!6796202))

(assert (=> b!5887815 m!6796070))

(assert (=> b!5887815 m!6796202))

(assert (=> b!5887815 m!6796070))

(declare-fun m!6796204 () Bool)

(assert (=> b!5887815 m!6796204))

(assert (=> b!5887474 d!1848346))

(declare-fun d!1848348 () Bool)

(declare-fun c!1045696 () Bool)

(assert (=> d!1848348 (= c!1045696 (isEmpty!35857 (t!377502 s!2326)))))

(declare-fun e!3607663 () Bool)

(assert (=> d!1848348 (= (matchZipper!2006 lt!2307382 (t!377502 s!2326)) e!3607663)))

(declare-fun b!5887816 () Bool)

(assert (=> b!5887816 (= e!3607663 (nullableZipper!1779 lt!2307382))))

(declare-fun b!5887817 () Bool)

(assert (=> b!5887817 (= e!3607663 (matchZipper!2006 (derivationStepZipper!1939 lt!2307382 (head!12434 (t!377502 s!2326))) (tail!11519 (t!377502 s!2326))))))

(assert (= (and d!1848348 c!1045696) b!5887816))

(assert (= (and d!1848348 (not c!1045696)) b!5887817))

(assert (=> d!1848348 m!6796092))

(declare-fun m!6796206 () Bool)

(assert (=> b!5887816 m!6796206))

(assert (=> b!5887817 m!6796096))

(assert (=> b!5887817 m!6796096))

(declare-fun m!6796208 () Bool)

(assert (=> b!5887817 m!6796208))

(assert (=> b!5887817 m!6796100))

(assert (=> b!5887817 m!6796208))

(assert (=> b!5887817 m!6796100))

(declare-fun m!6796210 () Bool)

(assert (=> b!5887817 m!6796210))

(assert (=> b!5887474 d!1848348))

(declare-fun d!1848350 () Bool)

(declare-fun e!3607666 () Bool)

(assert (=> d!1848350 e!3607666))

(declare-fun res!2472841 () Bool)

(assert (=> d!1848350 (=> (not res!2472841) (not e!3607666))))

(declare-fun lt!2307530 () List!64121)

(declare-fun noDuplicate!1806 (List!64121) Bool)

(assert (=> d!1848350 (= res!2472841 (noDuplicate!1806 lt!2307530))))

(declare-fun choose!44521 ((Set Context!10648)) List!64121)

(assert (=> d!1848350 (= lt!2307530 (choose!44521 z!1189))))

(assert (=> d!1848350 (= (toList!9724 z!1189) lt!2307530)))

(declare-fun b!5887820 () Bool)

(declare-fun content!11771 (List!64121) (Set Context!10648))

(assert (=> b!5887820 (= e!3607666 (= (content!11771 lt!2307530) z!1189))))

(assert (= (and d!1848350 res!2472841) b!5887820))

(declare-fun m!6796212 () Bool)

(assert (=> d!1848350 m!6796212))

(declare-fun m!6796214 () Bool)

(assert (=> d!1848350 m!6796214))

(declare-fun m!6796216 () Bool)

(assert (=> b!5887820 m!6796216))

(assert (=> b!5887472 d!1848350))

(assert (=> b!5887482 d!1848332))

(declare-fun d!1848352 () Bool)

(declare-fun c!1045697 () Bool)

(assert (=> d!1848352 (= c!1045697 (isEmpty!35857 s!2326))))

(declare-fun e!3607667 () Bool)

(assert (=> d!1848352 (= (matchZipper!2006 lt!2307380 s!2326) e!3607667)))

(declare-fun b!5887821 () Bool)

(assert (=> b!5887821 (= e!3607667 (nullableZipper!1779 lt!2307380))))

(declare-fun b!5887822 () Bool)

(assert (=> b!5887822 (= e!3607667 (matchZipper!2006 (derivationStepZipper!1939 lt!2307380 (head!12434 s!2326)) (tail!11519 s!2326)))))

(assert (= (and d!1848352 c!1045697) b!5887821))

(assert (= (and d!1848352 (not c!1045697)) b!5887822))

(assert (=> d!1848352 m!6796062))

(declare-fun m!6796218 () Bool)

(assert (=> b!5887821 m!6796218))

(assert (=> b!5887822 m!6796066))

(assert (=> b!5887822 m!6796066))

(declare-fun m!6796220 () Bool)

(assert (=> b!5887822 m!6796220))

(assert (=> b!5887822 m!6796070))

(assert (=> b!5887822 m!6796220))

(assert (=> b!5887822 m!6796070))

(declare-fun m!6796222 () Bool)

(assert (=> b!5887822 m!6796222))

(assert (=> b!5887482 d!1848352))

(declare-fun d!1848354 () Bool)

(declare-fun lt!2307533 () Regex!15940)

(assert (=> d!1848354 (validRegex!7676 lt!2307533)))

(assert (=> d!1848354 (= lt!2307533 (generalisedUnion!1784 (unfocusZipperList!1361 zl!343)))))

(assert (=> d!1848354 (= (unfocusZipper!1682 zl!343) lt!2307533)))

(declare-fun bs!1390951 () Bool)

(assert (= bs!1390951 d!1848354))

(declare-fun m!6796224 () Bool)

(assert (=> bs!1390951 m!6796224))

(assert (=> bs!1390951 m!6795928))

(assert (=> bs!1390951 m!6795928))

(assert (=> bs!1390951 m!6795930))

(assert (=> b!5887480 d!1848354))

(declare-fun b!5887878 () Bool)

(assert (=> b!5887878 true))

(assert (=> b!5887878 true))

(declare-fun bs!1390952 () Bool)

(declare-fun b!5887884 () Bool)

(assert (= bs!1390952 (and b!5887884 b!5887878)))

(declare-fun lambda!321545 () Int)

(declare-fun lambda!321544 () Int)

(assert (=> bs!1390952 (not (= lambda!321545 lambda!321544))))

(assert (=> b!5887884 true))

(assert (=> b!5887884 true))

(declare-fun b!5887877 () Bool)

(declare-fun e!3607702 () Bool)

(declare-fun e!3607698 () Bool)

(assert (=> b!5887877 (= e!3607702 e!3607698)))

(declare-fun res!2472860 () Bool)

(assert (=> b!5887877 (= res!2472860 (matchRSpec!3041 (regOne!32393 r!7292) s!2326))))

(assert (=> b!5887877 (=> res!2472860 e!3607698)))

(declare-fun call!464467 () Bool)

(declare-fun c!1045716 () Bool)

(declare-fun bm!464461 () Bool)

(declare-fun Exists!3012 (Int) Bool)

(assert (=> bm!464461 (= call!464467 (Exists!3012 (ite c!1045716 lambda!321544 lambda!321545)))))

(declare-fun e!3607701 () Bool)

(assert (=> b!5887878 (= e!3607701 call!464467)))

(declare-fun bm!464462 () Bool)

(declare-fun call!464466 () Bool)

(assert (=> bm!464462 (= call!464466 (isEmpty!35857 s!2326))))

(declare-fun b!5887879 () Bool)

(declare-fun e!3607703 () Bool)

(assert (=> b!5887879 (= e!3607702 e!3607703)))

(assert (=> b!5887879 (= c!1045716 (is-Star!15940 r!7292))))

(declare-fun d!1848356 () Bool)

(declare-fun c!1045718 () Bool)

(assert (=> d!1848356 (= c!1045718 (is-EmptyExpr!15940 r!7292))))

(declare-fun e!3607699 () Bool)

(assert (=> d!1848356 (= (matchRSpec!3041 r!7292 s!2326) e!3607699)))

(declare-fun b!5887880 () Bool)

(assert (=> b!5887880 (= e!3607698 (matchRSpec!3041 (regTwo!32393 r!7292) s!2326))))

(declare-fun b!5887881 () Bool)

(assert (=> b!5887881 (= e!3607699 call!464466)))

(declare-fun b!5887882 () Bool)

(declare-fun res!2472862 () Bool)

(assert (=> b!5887882 (=> res!2472862 e!3607701)))

(assert (=> b!5887882 (= res!2472862 call!464466)))

(assert (=> b!5887882 (= e!3607703 e!3607701)))

(declare-fun b!5887883 () Bool)

(declare-fun e!3607704 () Bool)

(assert (=> b!5887883 (= e!3607704 (= s!2326 (Cons!63995 (c!1045597 r!7292) Nil!63995)))))

(assert (=> b!5887884 (= e!3607703 call!464467)))

(declare-fun b!5887885 () Bool)

(declare-fun e!3607700 () Bool)

(assert (=> b!5887885 (= e!3607699 e!3607700)))

(declare-fun res!2472861 () Bool)

(assert (=> b!5887885 (= res!2472861 (not (is-EmptyLang!15940 r!7292)))))

(assert (=> b!5887885 (=> (not res!2472861) (not e!3607700))))

(declare-fun b!5887886 () Bool)

(declare-fun c!1045719 () Bool)

(assert (=> b!5887886 (= c!1045719 (is-ElementMatch!15940 r!7292))))

(assert (=> b!5887886 (= e!3607700 e!3607704)))

(declare-fun b!5887887 () Bool)

(declare-fun c!1045717 () Bool)

(assert (=> b!5887887 (= c!1045717 (is-Union!15940 r!7292))))

(assert (=> b!5887887 (= e!3607704 e!3607702)))

(assert (= (and d!1848356 c!1045718) b!5887881))

(assert (= (and d!1848356 (not c!1045718)) b!5887885))

(assert (= (and b!5887885 res!2472861) b!5887886))

(assert (= (and b!5887886 c!1045719) b!5887883))

(assert (= (and b!5887886 (not c!1045719)) b!5887887))

(assert (= (and b!5887887 c!1045717) b!5887877))

(assert (= (and b!5887887 (not c!1045717)) b!5887879))

(assert (= (and b!5887877 (not res!2472860)) b!5887880))

(assert (= (and b!5887879 c!1045716) b!5887882))

(assert (= (and b!5887879 (not c!1045716)) b!5887884))

(assert (= (and b!5887882 (not res!2472862)) b!5887878))

(assert (= (or b!5887878 b!5887884) bm!464461))

(assert (= (or b!5887881 b!5887882) bm!464462))

(assert (=> b!5887877 m!6795896))

(declare-fun m!6796244 () Bool)

(assert (=> bm!464461 m!6796244))

(assert (=> bm!464462 m!6796062))

(assert (=> b!5887880 m!6795890))

(assert (=> b!5887470 d!1848356))

(declare-fun b!5887930 () Bool)

(declare-fun res!2472883 () Bool)

(declare-fun e!3607730 () Bool)

(assert (=> b!5887930 (=> res!2472883 e!3607730)))

(declare-fun e!3607729 () Bool)

(assert (=> b!5887930 (= res!2472883 e!3607729)))

(declare-fun res!2472888 () Bool)

(assert (=> b!5887930 (=> (not res!2472888) (not e!3607729))))

(declare-fun lt!2307537 () Bool)

(assert (=> b!5887930 (= res!2472888 lt!2307537)))

(declare-fun b!5887931 () Bool)

(declare-fun e!3607726 () Bool)

(declare-fun e!3607727 () Bool)

(assert (=> b!5887931 (= e!3607726 e!3607727)))

(declare-fun c!1045732 () Bool)

(assert (=> b!5887931 (= c!1045732 (is-EmptyLang!15940 r!7292))))

(declare-fun b!5887932 () Bool)

(declare-fun res!2472884 () Bool)

(assert (=> b!5887932 (=> (not res!2472884) (not e!3607729))))

(assert (=> b!5887932 (= res!2472884 (isEmpty!35857 (tail!11519 s!2326)))))

(declare-fun b!5887933 () Bool)

(declare-fun e!3607725 () Bool)

(declare-fun derivativeStep!4678 (Regex!15940 C!32150) Regex!15940)

(assert (=> b!5887933 (= e!3607725 (matchR!8123 (derivativeStep!4678 r!7292 (head!12434 s!2326)) (tail!11519 s!2326)))))

(declare-fun b!5887934 () Bool)

(assert (=> b!5887934 (= e!3607727 (not lt!2307537))))

(declare-fun b!5887935 () Bool)

(declare-fun call!464472 () Bool)

(assert (=> b!5887935 (= e!3607726 (= lt!2307537 call!464472))))

(declare-fun b!5887936 () Bool)

(declare-fun e!3607728 () Bool)

(declare-fun e!3607731 () Bool)

(assert (=> b!5887936 (= e!3607728 e!3607731)))

(declare-fun res!2472887 () Bool)

(assert (=> b!5887936 (=> res!2472887 e!3607731)))

(assert (=> b!5887936 (= res!2472887 call!464472)))

(declare-fun b!5887938 () Bool)

(assert (=> b!5887938 (= e!3607730 e!3607728)))

(declare-fun res!2472881 () Bool)

(assert (=> b!5887938 (=> (not res!2472881) (not e!3607728))))

(assert (=> b!5887938 (= res!2472881 (not lt!2307537))))

(declare-fun bm!464467 () Bool)

(assert (=> bm!464467 (= call!464472 (isEmpty!35857 s!2326))))

(declare-fun b!5887939 () Bool)

(declare-fun res!2472885 () Bool)

(assert (=> b!5887939 (=> res!2472885 e!3607731)))

(assert (=> b!5887939 (= res!2472885 (not (isEmpty!35857 (tail!11519 s!2326))))))

(declare-fun b!5887940 () Bool)

(assert (=> b!5887940 (= e!3607729 (= (head!12434 s!2326) (c!1045597 r!7292)))))

(declare-fun b!5887941 () Bool)

(declare-fun res!2472886 () Bool)

(assert (=> b!5887941 (=> res!2472886 e!3607730)))

(assert (=> b!5887941 (= res!2472886 (not (is-ElementMatch!15940 r!7292)))))

(assert (=> b!5887941 (= e!3607727 e!3607730)))

(declare-fun b!5887942 () Bool)

(declare-fun res!2472882 () Bool)

(assert (=> b!5887942 (=> (not res!2472882) (not e!3607729))))

(assert (=> b!5887942 (= res!2472882 (not call!464472))))

(declare-fun b!5887943 () Bool)

(assert (=> b!5887943 (= e!3607731 (not (= (head!12434 s!2326) (c!1045597 r!7292))))))

(declare-fun d!1848362 () Bool)

(assert (=> d!1848362 e!3607726))

(declare-fun c!1045731 () Bool)

(assert (=> d!1848362 (= c!1045731 (is-EmptyExpr!15940 r!7292))))

(assert (=> d!1848362 (= lt!2307537 e!3607725)))

(declare-fun c!1045730 () Bool)

(assert (=> d!1848362 (= c!1045730 (isEmpty!35857 s!2326))))

(assert (=> d!1848362 (validRegex!7676 r!7292)))

(assert (=> d!1848362 (= (matchR!8123 r!7292 s!2326) lt!2307537)))

(declare-fun b!5887937 () Bool)

(assert (=> b!5887937 (= e!3607725 (nullable!5940 r!7292))))

(assert (= (and d!1848362 c!1045730) b!5887937))

(assert (= (and d!1848362 (not c!1045730)) b!5887933))

(assert (= (and d!1848362 c!1045731) b!5887935))

(assert (= (and d!1848362 (not c!1045731)) b!5887931))

(assert (= (and b!5887931 c!1045732) b!5887934))

(assert (= (and b!5887931 (not c!1045732)) b!5887941))

(assert (= (and b!5887941 (not res!2472886)) b!5887930))

(assert (= (and b!5887930 res!2472888) b!5887942))

(assert (= (and b!5887942 res!2472882) b!5887932))

(assert (= (and b!5887932 res!2472884) b!5887940))

(assert (= (and b!5887930 (not res!2472883)) b!5887938))

(assert (= (and b!5887938 res!2472881) b!5887936))

(assert (= (and b!5887936 (not res!2472887)) b!5887939))

(assert (= (and b!5887939 (not res!2472885)) b!5887943))

(assert (= (or b!5887935 b!5887936 b!5887942) bm!464467))

(assert (=> bm!464467 m!6796062))

(declare-fun m!6796268 () Bool)

(assert (=> b!5887937 m!6796268))

(assert (=> b!5887932 m!6796070))

(assert (=> b!5887932 m!6796070))

(declare-fun m!6796270 () Bool)

(assert (=> b!5887932 m!6796270))

(assert (=> b!5887933 m!6796066))

(assert (=> b!5887933 m!6796066))

(declare-fun m!6796272 () Bool)

(assert (=> b!5887933 m!6796272))

(assert (=> b!5887933 m!6796070))

(assert (=> b!5887933 m!6796272))

(assert (=> b!5887933 m!6796070))

(declare-fun m!6796274 () Bool)

(assert (=> b!5887933 m!6796274))

(assert (=> d!1848362 m!6796062))

(assert (=> d!1848362 m!6795866))

(assert (=> b!5887940 m!6796066))

(assert (=> b!5887939 m!6796070))

(assert (=> b!5887939 m!6796070))

(assert (=> b!5887939 m!6796270))

(assert (=> b!5887943 m!6796066))

(assert (=> b!5887470 d!1848362))

(declare-fun d!1848376 () Bool)

(assert (=> d!1848376 (= (matchR!8123 r!7292 s!2326) (matchRSpec!3041 r!7292 s!2326))))

(declare-fun lt!2307541 () Unit!157151)

(declare-fun choose!44522 (Regex!15940 List!64119) Unit!157151)

(assert (=> d!1848376 (= lt!2307541 (choose!44522 r!7292 s!2326))))

(assert (=> d!1848376 (validRegex!7676 r!7292)))

(assert (=> d!1848376 (= (mainMatchTheorem!3041 r!7292 s!2326) lt!2307541)))

(declare-fun bs!1390960 () Bool)

(assert (= bs!1390960 d!1848376))

(assert (=> bs!1390960 m!6795854))

(assert (=> bs!1390960 m!6795852))

(declare-fun m!6796292 () Bool)

(assert (=> bs!1390960 m!6796292))

(assert (=> bs!1390960 m!6795866))

(assert (=> b!5887470 d!1848376))

(declare-fun bs!1390961 () Bool)

(declare-fun d!1848382 () Bool)

(assert (= bs!1390961 (and d!1848382 d!1848324)))

(declare-fun lambda!321549 () Int)

(assert (=> bs!1390961 (= lambda!321549 lambda!321529)))

(declare-fun bs!1390962 () Bool)

(assert (= bs!1390962 (and d!1848382 d!1848328)))

(assert (=> bs!1390962 (= lambda!321549 lambda!321533)))

(declare-fun bs!1390963 () Bool)

(assert (= bs!1390963 (and d!1848382 d!1848334)))

(assert (=> bs!1390963 (= lambda!321549 lambda!321536)))

(declare-fun bs!1390964 () Bool)

(assert (= bs!1390964 (and d!1848382 d!1848338)))

(assert (=> bs!1390964 (= lambda!321549 lambda!321539)))

(assert (=> d!1848382 (= (inv!83098 (h!70445 zl!343)) (forall!15028 (exprs!5824 (h!70445 zl!343)) lambda!321549))))

(declare-fun bs!1390965 () Bool)

(assert (= bs!1390965 d!1848382))

(declare-fun m!6796294 () Bool)

(assert (=> bs!1390965 m!6796294))

(assert (=> b!5887490 d!1848382))

(declare-fun b!5887992 () Bool)

(declare-fun c!1045756 () Bool)

(declare-fun e!3607760 () Bool)

(assert (=> b!5887992 (= c!1045756 e!3607760)))

(declare-fun res!2472895 () Bool)

(assert (=> b!5887992 (=> (not res!2472895) (not e!3607760))))

(assert (=> b!5887992 (= res!2472895 (is-Concat!24785 r!7292))))

(declare-fun e!3607759 () (Set Context!10648))

(declare-fun e!3607761 () (Set Context!10648))

(assert (=> b!5887992 (= e!3607759 e!3607761)))

(declare-fun b!5887993 () Bool)

(assert (=> b!5887993 (= e!3607760 (nullable!5940 (regOne!32392 r!7292)))))

(declare-fun call!464486 () (Set Context!10648))

(declare-fun call!464485 () List!64120)

(declare-fun bm!464480 () Bool)

(declare-fun c!1045758 () Bool)

(assert (=> bm!464480 (= call!464486 (derivationStepZipperDown!1206 (ite c!1045758 (regTwo!32393 r!7292) (regOne!32392 r!7292)) (ite c!1045758 lt!2307391 (Context!10649 call!464485)) (h!70443 s!2326)))))

(declare-fun bm!464481 () Bool)

(declare-fun call!464490 () List!64120)

(assert (=> bm!464481 (= call!464490 call!464485)))

(declare-fun b!5887994 () Bool)

(declare-fun e!3607764 () (Set Context!10648))

(assert (=> b!5887994 (= e!3607764 (as set.empty (Set Context!10648)))))

(declare-fun b!5887995 () Bool)

(declare-fun c!1045754 () Bool)

(assert (=> b!5887995 (= c!1045754 (is-Star!15940 r!7292))))

(declare-fun e!3607762 () (Set Context!10648))

(assert (=> b!5887995 (= e!3607762 e!3607764)))

(declare-fun bm!464482 () Bool)

(declare-fun call!464488 () (Set Context!10648))

(declare-fun call!464487 () (Set Context!10648))

(assert (=> bm!464482 (= call!464488 call!464487)))

(declare-fun b!5887997 () Bool)

(declare-fun call!464489 () (Set Context!10648))

(assert (=> b!5887997 (= e!3607759 (set.union call!464489 call!464486))))

(declare-fun b!5887998 () Bool)

(assert (=> b!5887998 (= e!3607762 call!464488)))

(declare-fun c!1045757 () Bool)

(declare-fun bm!464483 () Bool)

(assert (=> bm!464483 (= call!464489 (derivationStepZipperDown!1206 (ite c!1045758 (regOne!32393 r!7292) (ite c!1045756 (regTwo!32392 r!7292) (ite c!1045757 (regOne!32392 r!7292) (reg!16269 r!7292)))) (ite (or c!1045758 c!1045756) lt!2307391 (Context!10649 call!464490)) (h!70443 s!2326)))))

(declare-fun b!5887999 () Bool)

(declare-fun e!3607763 () (Set Context!10648))

(assert (=> b!5887999 (= e!3607763 e!3607759)))

(assert (=> b!5887999 (= c!1045758 (is-Union!15940 r!7292))))

(declare-fun bm!464484 () Bool)

(assert (=> bm!464484 (= call!464487 call!464489)))

(declare-fun b!5888000 () Bool)

(assert (=> b!5888000 (= e!3607763 (set.insert lt!2307391 (as set.empty (Set Context!10648))))))

(declare-fun bm!464485 () Bool)

(declare-fun $colon$colon!1846 (List!64120 Regex!15940) List!64120)

(assert (=> bm!464485 (= call!464485 ($colon$colon!1846 (exprs!5824 lt!2307391) (ite (or c!1045756 c!1045757) (regTwo!32392 r!7292) r!7292)))))

(declare-fun b!5888001 () Bool)

(assert (=> b!5888001 (= e!3607764 call!464488)))

(declare-fun b!5888002 () Bool)

(assert (=> b!5888002 (= e!3607761 e!3607762)))

(assert (=> b!5888002 (= c!1045757 (is-Concat!24785 r!7292))))

(declare-fun d!1848384 () Bool)

(declare-fun c!1045755 () Bool)

(assert (=> d!1848384 (= c!1045755 (and (is-ElementMatch!15940 r!7292) (= (c!1045597 r!7292) (h!70443 s!2326))))))

(assert (=> d!1848384 (= (derivationStepZipperDown!1206 r!7292 lt!2307391 (h!70443 s!2326)) e!3607763)))

(declare-fun b!5887996 () Bool)

(assert (=> b!5887996 (= e!3607761 (set.union call!464486 call!464487))))

(assert (= (and d!1848384 c!1045755) b!5888000))

(assert (= (and d!1848384 (not c!1045755)) b!5887999))

(assert (= (and b!5887999 c!1045758) b!5887997))

(assert (= (and b!5887999 (not c!1045758)) b!5887992))

(assert (= (and b!5887992 res!2472895) b!5887993))

(assert (= (and b!5887992 c!1045756) b!5887996))

(assert (= (and b!5887992 (not c!1045756)) b!5888002))

(assert (= (and b!5888002 c!1045757) b!5887998))

(assert (= (and b!5888002 (not c!1045757)) b!5887995))

(assert (= (and b!5887995 c!1045754) b!5888001))

(assert (= (and b!5887995 (not c!1045754)) b!5887994))

(assert (= (or b!5887998 b!5888001) bm!464481))

(assert (= (or b!5887998 b!5888001) bm!464482))

(assert (= (or b!5887996 bm!464481) bm!464485))

(assert (= (or b!5887996 bm!464482) bm!464484))

(assert (= (or b!5887997 b!5887996) bm!464480))

(assert (= (or b!5887997 bm!464484) bm!464483))

(declare-fun m!6796296 () Bool)

(assert (=> bm!464485 m!6796296))

(declare-fun m!6796298 () Bool)

(assert (=> b!5887993 m!6796298))

(declare-fun m!6796300 () Bool)

(assert (=> b!5888000 m!6796300))

(declare-fun m!6796302 () Bool)

(assert (=> bm!464480 m!6796302))

(declare-fun m!6796304 () Bool)

(assert (=> bm!464483 m!6796304))

(assert (=> b!5887471 d!1848384))

(declare-fun b!5888003 () Bool)

(declare-fun e!3607766 () (Set Context!10648))

(assert (=> b!5888003 (= e!3607766 (as set.empty (Set Context!10648)))))

(declare-fun b!5888004 () Bool)

(declare-fun call!464491 () (Set Context!10648))

(assert (=> b!5888004 (= e!3607766 call!464491)))

(declare-fun b!5888005 () Bool)

(declare-fun e!3607767 () (Set Context!10648))

(assert (=> b!5888005 (= e!3607767 e!3607766)))

(declare-fun c!1045760 () Bool)

(assert (=> b!5888005 (= c!1045760 (is-Cons!63996 (exprs!5824 (Context!10649 (Cons!63996 r!7292 Nil!63996)))))))

(declare-fun b!5888006 () Bool)

(assert (=> b!5888006 (= e!3607767 (set.union call!464491 (derivationStepZipperUp!1132 (Context!10649 (t!377503 (exprs!5824 (Context!10649 (Cons!63996 r!7292 Nil!63996))))) (h!70443 s!2326))))))

(declare-fun b!5888007 () Bool)

(declare-fun e!3607765 () Bool)

(assert (=> b!5888007 (= e!3607765 (nullable!5940 (h!70444 (exprs!5824 (Context!10649 (Cons!63996 r!7292 Nil!63996))))))))

(declare-fun d!1848386 () Bool)

(declare-fun c!1045759 () Bool)

(assert (=> d!1848386 (= c!1045759 e!3607765)))

(declare-fun res!2472896 () Bool)

(assert (=> d!1848386 (=> (not res!2472896) (not e!3607765))))

(assert (=> d!1848386 (= res!2472896 (is-Cons!63996 (exprs!5824 (Context!10649 (Cons!63996 r!7292 Nil!63996)))))))

(assert (=> d!1848386 (= (derivationStepZipperUp!1132 (Context!10649 (Cons!63996 r!7292 Nil!63996)) (h!70443 s!2326)) e!3607767)))

(declare-fun bm!464486 () Bool)

(assert (=> bm!464486 (= call!464491 (derivationStepZipperDown!1206 (h!70444 (exprs!5824 (Context!10649 (Cons!63996 r!7292 Nil!63996)))) (Context!10649 (t!377503 (exprs!5824 (Context!10649 (Cons!63996 r!7292 Nil!63996))))) (h!70443 s!2326)))))

(assert (= (and d!1848386 res!2472896) b!5888007))

(assert (= (and d!1848386 c!1045759) b!5888006))

(assert (= (and d!1848386 (not c!1045759)) b!5888005))

(assert (= (and b!5888005 c!1045760) b!5888004))

(assert (= (and b!5888005 (not c!1045760)) b!5888003))

(assert (= (or b!5888006 b!5888004) bm!464486))

(declare-fun m!6796306 () Bool)

(assert (=> b!5888006 m!6796306))

(declare-fun m!6796308 () Bool)

(assert (=> b!5888007 m!6796308))

(declare-fun m!6796310 () Bool)

(assert (=> bm!464486 m!6796310))

(assert (=> b!5887471 d!1848386))

(declare-fun b!5888008 () Bool)

(declare-fun e!3607768 () Bool)

(declare-fun e!3607769 () Bool)

(assert (=> b!5888008 (= e!3607768 e!3607769)))

(declare-fun c!1045762 () Bool)

(assert (=> b!5888008 (= c!1045762 (is-Star!15940 r!7292))))

(declare-fun b!5888009 () Bool)

(declare-fun e!3607771 () Bool)

(declare-fun call!464492 () Bool)

(assert (=> b!5888009 (= e!3607771 call!464492)))

(declare-fun b!5888010 () Bool)

(declare-fun e!3607773 () Bool)

(assert (=> b!5888010 (= e!3607773 call!464492)))

(declare-fun b!5888011 () Bool)

(declare-fun e!3607770 () Bool)

(assert (=> b!5888011 (= e!3607769 e!3607770)))

(declare-fun c!1045761 () Bool)

(assert (=> b!5888011 (= c!1045761 (is-Union!15940 r!7292))))

(declare-fun call!464493 () Bool)

(declare-fun bm!464487 () Bool)

(assert (=> bm!464487 (= call!464493 (validRegex!7676 (ite c!1045762 (reg!16269 r!7292) (ite c!1045761 (regTwo!32393 r!7292) (regTwo!32392 r!7292)))))))

(declare-fun bm!464488 () Bool)

(assert (=> bm!464488 (= call!464492 call!464493)))

(declare-fun b!5888012 () Bool)

(declare-fun res!2472900 () Bool)

(assert (=> b!5888012 (=> (not res!2472900) (not e!3607771))))

(declare-fun call!464494 () Bool)

(assert (=> b!5888012 (= res!2472900 call!464494)))

(assert (=> b!5888012 (= e!3607770 e!3607771)))

(declare-fun b!5888014 () Bool)

(declare-fun e!3607772 () Bool)

(assert (=> b!5888014 (= e!3607772 call!464493)))

(declare-fun b!5888015 () Bool)

(assert (=> b!5888015 (= e!3607769 e!3607772)))

(declare-fun res!2472897 () Bool)

(assert (=> b!5888015 (= res!2472897 (not (nullable!5940 (reg!16269 r!7292))))))

(assert (=> b!5888015 (=> (not res!2472897) (not e!3607772))))

(declare-fun bm!464489 () Bool)

(assert (=> bm!464489 (= call!464494 (validRegex!7676 (ite c!1045761 (regOne!32393 r!7292) (regOne!32392 r!7292))))))

(declare-fun b!5888016 () Bool)

(declare-fun e!3607774 () Bool)

(assert (=> b!5888016 (= e!3607774 e!3607773)))

(declare-fun res!2472898 () Bool)

(assert (=> b!5888016 (=> (not res!2472898) (not e!3607773))))

(assert (=> b!5888016 (= res!2472898 call!464494)))

(declare-fun d!1848388 () Bool)

(declare-fun res!2472901 () Bool)

(assert (=> d!1848388 (=> res!2472901 e!3607768)))

(assert (=> d!1848388 (= res!2472901 (is-ElementMatch!15940 r!7292))))

(assert (=> d!1848388 (= (validRegex!7676 r!7292) e!3607768)))

(declare-fun b!5888013 () Bool)

(declare-fun res!2472899 () Bool)

(assert (=> b!5888013 (=> res!2472899 e!3607774)))

(assert (=> b!5888013 (= res!2472899 (not (is-Concat!24785 r!7292)))))

(assert (=> b!5888013 (= e!3607770 e!3607774)))

(assert (= (and d!1848388 (not res!2472901)) b!5888008))

(assert (= (and b!5888008 c!1045762) b!5888015))

(assert (= (and b!5888008 (not c!1045762)) b!5888011))

(assert (= (and b!5888015 res!2472897) b!5888014))

(assert (= (and b!5888011 c!1045761) b!5888012))

(assert (= (and b!5888011 (not c!1045761)) b!5888013))

(assert (= (and b!5888012 res!2472900) b!5888009))

(assert (= (and b!5888013 (not res!2472899)) b!5888016))

(assert (= (and b!5888016 res!2472898) b!5888010))

(assert (= (or b!5888009 b!5888010) bm!464488))

(assert (= (or b!5888012 b!5888016) bm!464489))

(assert (= (or b!5888014 bm!464488) bm!464487))

(declare-fun m!6796312 () Bool)

(assert (=> bm!464487 m!6796312))

(declare-fun m!6796314 () Bool)

(assert (=> b!5888015 m!6796314))

(declare-fun m!6796316 () Bool)

(assert (=> bm!464489 m!6796316))

(assert (=> start!600514 d!1848388))

(declare-fun b!5888027 () Bool)

(declare-fun c!1045769 () Bool)

(declare-fun e!3607782 () Bool)

(assert (=> b!5888027 (= c!1045769 e!3607782)))

(declare-fun res!2472904 () Bool)

(assert (=> b!5888027 (=> (not res!2472904) (not e!3607782))))

(assert (=> b!5888027 (= res!2472904 (is-Concat!24785 (regTwo!32393 r!7292)))))

(declare-fun e!3607781 () (Set Context!10648))

(declare-fun e!3607783 () (Set Context!10648))

(assert (=> b!5888027 (= e!3607781 e!3607783)))

(declare-fun b!5888028 () Bool)

(assert (=> b!5888028 (= e!3607782 (nullable!5940 (regOne!32392 (regTwo!32393 r!7292))))))

(declare-fun call!464496 () (Set Context!10648))

(declare-fun bm!464490 () Bool)

(declare-fun call!464495 () List!64120)

(declare-fun c!1045771 () Bool)

(assert (=> bm!464490 (= call!464496 (derivationStepZipperDown!1206 (ite c!1045771 (regTwo!32393 (regTwo!32393 r!7292)) (regOne!32392 (regTwo!32393 r!7292))) (ite c!1045771 lt!2307391 (Context!10649 call!464495)) (h!70443 s!2326)))))

(declare-fun bm!464491 () Bool)

(declare-fun call!464500 () List!64120)

(assert (=> bm!464491 (= call!464500 call!464495)))

(declare-fun b!5888029 () Bool)

(declare-fun e!3607786 () (Set Context!10648))

(assert (=> b!5888029 (= e!3607786 (as set.empty (Set Context!10648)))))

(declare-fun b!5888030 () Bool)

(declare-fun c!1045767 () Bool)

(assert (=> b!5888030 (= c!1045767 (is-Star!15940 (regTwo!32393 r!7292)))))

(declare-fun e!3607784 () (Set Context!10648))

(assert (=> b!5888030 (= e!3607784 e!3607786)))

(declare-fun bm!464492 () Bool)

(declare-fun call!464498 () (Set Context!10648))

(declare-fun call!464497 () (Set Context!10648))

(assert (=> bm!464492 (= call!464498 call!464497)))

(declare-fun b!5888032 () Bool)

(declare-fun call!464499 () (Set Context!10648))

(assert (=> b!5888032 (= e!3607781 (set.union call!464499 call!464496))))

(declare-fun b!5888033 () Bool)

(assert (=> b!5888033 (= e!3607784 call!464498)))

(declare-fun bm!464493 () Bool)

(declare-fun c!1045770 () Bool)

(assert (=> bm!464493 (= call!464499 (derivationStepZipperDown!1206 (ite c!1045771 (regOne!32393 (regTwo!32393 r!7292)) (ite c!1045769 (regTwo!32392 (regTwo!32393 r!7292)) (ite c!1045770 (regOne!32392 (regTwo!32393 r!7292)) (reg!16269 (regTwo!32393 r!7292))))) (ite (or c!1045771 c!1045769) lt!2307391 (Context!10649 call!464500)) (h!70443 s!2326)))))

(declare-fun b!5888034 () Bool)

(declare-fun e!3607785 () (Set Context!10648))

(assert (=> b!5888034 (= e!3607785 e!3607781)))

(assert (=> b!5888034 (= c!1045771 (is-Union!15940 (regTwo!32393 r!7292)))))

(declare-fun bm!464494 () Bool)

(assert (=> bm!464494 (= call!464497 call!464499)))

(declare-fun b!5888035 () Bool)

(assert (=> b!5888035 (= e!3607785 (set.insert lt!2307391 (as set.empty (Set Context!10648))))))

(declare-fun bm!464495 () Bool)

(assert (=> bm!464495 (= call!464495 ($colon$colon!1846 (exprs!5824 lt!2307391) (ite (or c!1045769 c!1045770) (regTwo!32392 (regTwo!32393 r!7292)) (regTwo!32393 r!7292))))))

(declare-fun b!5888036 () Bool)

(assert (=> b!5888036 (= e!3607786 call!464498)))

(declare-fun b!5888037 () Bool)

(assert (=> b!5888037 (= e!3607783 e!3607784)))

(assert (=> b!5888037 (= c!1045770 (is-Concat!24785 (regTwo!32393 r!7292)))))

(declare-fun d!1848390 () Bool)

(declare-fun c!1045768 () Bool)

(assert (=> d!1848390 (= c!1045768 (and (is-ElementMatch!15940 (regTwo!32393 r!7292)) (= (c!1045597 (regTwo!32393 r!7292)) (h!70443 s!2326))))))

(assert (=> d!1848390 (= (derivationStepZipperDown!1206 (regTwo!32393 r!7292) lt!2307391 (h!70443 s!2326)) e!3607785)))

(declare-fun b!5888031 () Bool)

(assert (=> b!5888031 (= e!3607783 (set.union call!464496 call!464497))))

(assert (= (and d!1848390 c!1045768) b!5888035))

(assert (= (and d!1848390 (not c!1045768)) b!5888034))

(assert (= (and b!5888034 c!1045771) b!5888032))

(assert (= (and b!5888034 (not c!1045771)) b!5888027))

(assert (= (and b!5888027 res!2472904) b!5888028))

(assert (= (and b!5888027 c!1045769) b!5888031))

(assert (= (and b!5888027 (not c!1045769)) b!5888037))

(assert (= (and b!5888037 c!1045770) b!5888033))

(assert (= (and b!5888037 (not c!1045770)) b!5888030))

(assert (= (and b!5888030 c!1045767) b!5888036))

(assert (= (and b!5888030 (not c!1045767)) b!5888029))

(assert (= (or b!5888033 b!5888036) bm!464491))

(assert (= (or b!5888033 b!5888036) bm!464492))

(assert (= (or b!5888031 bm!464491) bm!464495))

(assert (= (or b!5888031 bm!464492) bm!464494))

(assert (= (or b!5888032 b!5888031) bm!464490))

(assert (= (or b!5888032 bm!464494) bm!464493))

(declare-fun m!6796318 () Bool)

(assert (=> bm!464495 m!6796318))

(declare-fun m!6796320 () Bool)

(assert (=> b!5888028 m!6796320))

(assert (=> b!5888035 m!6796300))

(declare-fun m!6796322 () Bool)

(assert (=> bm!464490 m!6796322))

(declare-fun m!6796324 () Bool)

(assert (=> bm!464493 m!6796324))

(assert (=> b!5887469 d!1848390))

(declare-fun b!5888038 () Bool)

(declare-fun c!1045774 () Bool)

(declare-fun e!3607788 () Bool)

(assert (=> b!5888038 (= c!1045774 e!3607788)))

(declare-fun res!2472905 () Bool)

(assert (=> b!5888038 (=> (not res!2472905) (not e!3607788))))

(assert (=> b!5888038 (= res!2472905 (is-Concat!24785 (regOne!32393 r!7292)))))

(declare-fun e!3607787 () (Set Context!10648))

(declare-fun e!3607789 () (Set Context!10648))

(assert (=> b!5888038 (= e!3607787 e!3607789)))

(declare-fun b!5888039 () Bool)

(assert (=> b!5888039 (= e!3607788 (nullable!5940 (regOne!32392 (regOne!32393 r!7292))))))

(declare-fun bm!464496 () Bool)

(declare-fun c!1045776 () Bool)

(declare-fun call!464502 () (Set Context!10648))

(declare-fun call!464501 () List!64120)

(assert (=> bm!464496 (= call!464502 (derivationStepZipperDown!1206 (ite c!1045776 (regTwo!32393 (regOne!32393 r!7292)) (regOne!32392 (regOne!32393 r!7292))) (ite c!1045776 lt!2307391 (Context!10649 call!464501)) (h!70443 s!2326)))))

(declare-fun bm!464497 () Bool)

(declare-fun call!464506 () List!64120)

(assert (=> bm!464497 (= call!464506 call!464501)))

(declare-fun b!5888040 () Bool)

(declare-fun e!3607792 () (Set Context!10648))

(assert (=> b!5888040 (= e!3607792 (as set.empty (Set Context!10648)))))

(declare-fun b!5888041 () Bool)

(declare-fun c!1045772 () Bool)

(assert (=> b!5888041 (= c!1045772 (is-Star!15940 (regOne!32393 r!7292)))))

(declare-fun e!3607790 () (Set Context!10648))

(assert (=> b!5888041 (= e!3607790 e!3607792)))

(declare-fun bm!464498 () Bool)

(declare-fun call!464504 () (Set Context!10648))

(declare-fun call!464503 () (Set Context!10648))

(assert (=> bm!464498 (= call!464504 call!464503)))

(declare-fun b!5888043 () Bool)

(declare-fun call!464505 () (Set Context!10648))

(assert (=> b!5888043 (= e!3607787 (set.union call!464505 call!464502))))

(declare-fun b!5888044 () Bool)

(assert (=> b!5888044 (= e!3607790 call!464504)))

(declare-fun bm!464499 () Bool)

(declare-fun c!1045775 () Bool)

(assert (=> bm!464499 (= call!464505 (derivationStepZipperDown!1206 (ite c!1045776 (regOne!32393 (regOne!32393 r!7292)) (ite c!1045774 (regTwo!32392 (regOne!32393 r!7292)) (ite c!1045775 (regOne!32392 (regOne!32393 r!7292)) (reg!16269 (regOne!32393 r!7292))))) (ite (or c!1045776 c!1045774) lt!2307391 (Context!10649 call!464506)) (h!70443 s!2326)))))

(declare-fun b!5888045 () Bool)

(declare-fun e!3607791 () (Set Context!10648))

(assert (=> b!5888045 (= e!3607791 e!3607787)))

(assert (=> b!5888045 (= c!1045776 (is-Union!15940 (regOne!32393 r!7292)))))

(declare-fun bm!464500 () Bool)

(assert (=> bm!464500 (= call!464503 call!464505)))

(declare-fun b!5888046 () Bool)

(assert (=> b!5888046 (= e!3607791 (set.insert lt!2307391 (as set.empty (Set Context!10648))))))

(declare-fun bm!464501 () Bool)

(assert (=> bm!464501 (= call!464501 ($colon$colon!1846 (exprs!5824 lt!2307391) (ite (or c!1045774 c!1045775) (regTwo!32392 (regOne!32393 r!7292)) (regOne!32393 r!7292))))))

(declare-fun b!5888047 () Bool)

(assert (=> b!5888047 (= e!3607792 call!464504)))

(declare-fun b!5888048 () Bool)

(assert (=> b!5888048 (= e!3607789 e!3607790)))

(assert (=> b!5888048 (= c!1045775 (is-Concat!24785 (regOne!32393 r!7292)))))

(declare-fun d!1848392 () Bool)

(declare-fun c!1045773 () Bool)

(assert (=> d!1848392 (= c!1045773 (and (is-ElementMatch!15940 (regOne!32393 r!7292)) (= (c!1045597 (regOne!32393 r!7292)) (h!70443 s!2326))))))

(assert (=> d!1848392 (= (derivationStepZipperDown!1206 (regOne!32393 r!7292) lt!2307391 (h!70443 s!2326)) e!3607791)))

(declare-fun b!5888042 () Bool)

(assert (=> b!5888042 (= e!3607789 (set.union call!464502 call!464503))))

(assert (= (and d!1848392 c!1045773) b!5888046))

(assert (= (and d!1848392 (not c!1045773)) b!5888045))

(assert (= (and b!5888045 c!1045776) b!5888043))

(assert (= (and b!5888045 (not c!1045776)) b!5888038))

(assert (= (and b!5888038 res!2472905) b!5888039))

(assert (= (and b!5888038 c!1045774) b!5888042))

(assert (= (and b!5888038 (not c!1045774)) b!5888048))

(assert (= (and b!5888048 c!1045775) b!5888044))

(assert (= (and b!5888048 (not c!1045775)) b!5888041))

(assert (= (and b!5888041 c!1045772) b!5888047))

(assert (= (and b!5888041 (not c!1045772)) b!5888040))

(assert (= (or b!5888044 b!5888047) bm!464497))

(assert (= (or b!5888044 b!5888047) bm!464498))

(assert (= (or b!5888042 bm!464497) bm!464501))

(assert (= (or b!5888042 bm!464498) bm!464500))

(assert (= (or b!5888043 b!5888042) bm!464496))

(assert (= (or b!5888043 bm!464500) bm!464499))

(declare-fun m!6796346 () Bool)

(assert (=> bm!464501 m!6796346))

(declare-fun m!6796348 () Bool)

(assert (=> b!5888039 m!6796348))

(assert (=> b!5888046 m!6796300))

(declare-fun m!6796350 () Bool)

(assert (=> bm!464496 m!6796350))

(declare-fun m!6796352 () Bool)

(assert (=> bm!464499 m!6796352))

(assert (=> b!5887469 d!1848392))

(declare-fun bs!1390969 () Bool)

(declare-fun b!5888050 () Bool)

(assert (= bs!1390969 (and b!5888050 b!5887878)))

(declare-fun lambda!321553 () Int)

(assert (=> bs!1390969 (= (and (= (reg!16269 (regTwo!32393 r!7292)) (reg!16269 r!7292)) (= (regTwo!32393 r!7292) r!7292)) (= lambda!321553 lambda!321544))))

(declare-fun bs!1390970 () Bool)

(assert (= bs!1390970 (and b!5888050 b!5887884)))

(assert (=> bs!1390970 (not (= lambda!321553 lambda!321545))))

(assert (=> b!5888050 true))

(assert (=> b!5888050 true))

(declare-fun bs!1390971 () Bool)

(declare-fun b!5888056 () Bool)

(assert (= bs!1390971 (and b!5888056 b!5887878)))

(declare-fun lambda!321554 () Int)

(assert (=> bs!1390971 (not (= lambda!321554 lambda!321544))))

(declare-fun bs!1390972 () Bool)

(assert (= bs!1390972 (and b!5888056 b!5887884)))

(assert (=> bs!1390972 (= (and (= (regOne!32392 (regTwo!32393 r!7292)) (regOne!32392 r!7292)) (= (regTwo!32392 (regTwo!32393 r!7292)) (regTwo!32392 r!7292))) (= lambda!321554 lambda!321545))))

(declare-fun bs!1390973 () Bool)

(assert (= bs!1390973 (and b!5888056 b!5888050)))

(assert (=> bs!1390973 (not (= lambda!321554 lambda!321553))))

(assert (=> b!5888056 true))

(assert (=> b!5888056 true))

(declare-fun b!5888049 () Bool)

(declare-fun e!3607797 () Bool)

(declare-fun e!3607793 () Bool)

(assert (=> b!5888049 (= e!3607797 e!3607793)))

(declare-fun res!2472906 () Bool)

(assert (=> b!5888049 (= res!2472906 (matchRSpec!3041 (regOne!32393 (regTwo!32393 r!7292)) s!2326))))

(assert (=> b!5888049 (=> res!2472906 e!3607793)))

(declare-fun c!1045777 () Bool)

(declare-fun bm!464502 () Bool)

(declare-fun call!464508 () Bool)

(assert (=> bm!464502 (= call!464508 (Exists!3012 (ite c!1045777 lambda!321553 lambda!321554)))))

(declare-fun e!3607796 () Bool)

(assert (=> b!5888050 (= e!3607796 call!464508)))

(declare-fun bm!464503 () Bool)

(declare-fun call!464507 () Bool)

(assert (=> bm!464503 (= call!464507 (isEmpty!35857 s!2326))))

(declare-fun b!5888051 () Bool)

(declare-fun e!3607798 () Bool)

(assert (=> b!5888051 (= e!3607797 e!3607798)))

(assert (=> b!5888051 (= c!1045777 (is-Star!15940 (regTwo!32393 r!7292)))))

(declare-fun d!1848396 () Bool)

(declare-fun c!1045779 () Bool)

(assert (=> d!1848396 (= c!1045779 (is-EmptyExpr!15940 (regTwo!32393 r!7292)))))

(declare-fun e!3607794 () Bool)

(assert (=> d!1848396 (= (matchRSpec!3041 (regTwo!32393 r!7292) s!2326) e!3607794)))

(declare-fun b!5888052 () Bool)

(assert (=> b!5888052 (= e!3607793 (matchRSpec!3041 (regTwo!32393 (regTwo!32393 r!7292)) s!2326))))

(declare-fun b!5888053 () Bool)

(assert (=> b!5888053 (= e!3607794 call!464507)))

(declare-fun b!5888054 () Bool)

(declare-fun res!2472908 () Bool)

(assert (=> b!5888054 (=> res!2472908 e!3607796)))

(assert (=> b!5888054 (= res!2472908 call!464507)))

(assert (=> b!5888054 (= e!3607798 e!3607796)))

(declare-fun b!5888055 () Bool)

(declare-fun e!3607799 () Bool)

(assert (=> b!5888055 (= e!3607799 (= s!2326 (Cons!63995 (c!1045597 (regTwo!32393 r!7292)) Nil!63995)))))

(assert (=> b!5888056 (= e!3607798 call!464508)))

(declare-fun b!5888057 () Bool)

(declare-fun e!3607795 () Bool)

(assert (=> b!5888057 (= e!3607794 e!3607795)))

(declare-fun res!2472907 () Bool)

(assert (=> b!5888057 (= res!2472907 (not (is-EmptyLang!15940 (regTwo!32393 r!7292))))))

(assert (=> b!5888057 (=> (not res!2472907) (not e!3607795))))

(declare-fun b!5888058 () Bool)

(declare-fun c!1045780 () Bool)

(assert (=> b!5888058 (= c!1045780 (is-ElementMatch!15940 (regTwo!32393 r!7292)))))

(assert (=> b!5888058 (= e!3607795 e!3607799)))

(declare-fun b!5888059 () Bool)

(declare-fun c!1045778 () Bool)

(assert (=> b!5888059 (= c!1045778 (is-Union!15940 (regTwo!32393 r!7292)))))

(assert (=> b!5888059 (= e!3607799 e!3607797)))

(assert (= (and d!1848396 c!1045779) b!5888053))

(assert (= (and d!1848396 (not c!1045779)) b!5888057))

(assert (= (and b!5888057 res!2472907) b!5888058))

(assert (= (and b!5888058 c!1045780) b!5888055))

(assert (= (and b!5888058 (not c!1045780)) b!5888059))

(assert (= (and b!5888059 c!1045778) b!5888049))

(assert (= (and b!5888059 (not c!1045778)) b!5888051))

(assert (= (and b!5888049 (not res!2472906)) b!5888052))

(assert (= (and b!5888051 c!1045777) b!5888054))

(assert (= (and b!5888051 (not c!1045777)) b!5888056))

(assert (= (and b!5888054 (not res!2472908)) b!5888050))

(assert (= (or b!5888050 b!5888056) bm!464502))

(assert (= (or b!5888053 b!5888054) bm!464503))

(declare-fun m!6796354 () Bool)

(assert (=> b!5888049 m!6796354))

(declare-fun m!6796356 () Bool)

(assert (=> bm!464502 m!6796356))

(assert (=> bm!464503 m!6796062))

(declare-fun m!6796358 () Bool)

(assert (=> b!5888052 m!6796358))

(assert (=> b!5887489 d!1848396))

(declare-fun d!1848398 () Bool)

(assert (=> d!1848398 (= (matchR!8123 (regOne!32393 r!7292) s!2326) (matchRSpec!3041 (regOne!32393 r!7292) s!2326))))

(declare-fun lt!2307545 () Unit!157151)

(assert (=> d!1848398 (= lt!2307545 (choose!44522 (regOne!32393 r!7292) s!2326))))

(assert (=> d!1848398 (validRegex!7676 (regOne!32393 r!7292))))

(assert (=> d!1848398 (= (mainMatchTheorem!3041 (regOne!32393 r!7292) s!2326) lt!2307545)))

(declare-fun bs!1390974 () Bool)

(assert (= bs!1390974 d!1848398))

(assert (=> bs!1390974 m!6795900))

(assert (=> bs!1390974 m!6795896))

(declare-fun m!6796360 () Bool)

(assert (=> bs!1390974 m!6796360))

(assert (=> bs!1390974 m!6796198))

(assert (=> b!5887489 d!1848398))

(declare-fun b!5888060 () Bool)

(declare-fun res!2472911 () Bool)

(declare-fun e!3607805 () Bool)

(assert (=> b!5888060 (=> res!2472911 e!3607805)))

(declare-fun e!3607804 () Bool)

(assert (=> b!5888060 (= res!2472911 e!3607804)))

(declare-fun res!2472916 () Bool)

(assert (=> b!5888060 (=> (not res!2472916) (not e!3607804))))

(declare-fun lt!2307546 () Bool)

(assert (=> b!5888060 (= res!2472916 lt!2307546)))

(declare-fun b!5888061 () Bool)

(declare-fun e!3607801 () Bool)

(declare-fun e!3607802 () Bool)

(assert (=> b!5888061 (= e!3607801 e!3607802)))

(declare-fun c!1045783 () Bool)

(assert (=> b!5888061 (= c!1045783 (is-EmptyLang!15940 (regTwo!32393 r!7292)))))

(declare-fun b!5888062 () Bool)

(declare-fun res!2472912 () Bool)

(assert (=> b!5888062 (=> (not res!2472912) (not e!3607804))))

(assert (=> b!5888062 (= res!2472912 (isEmpty!35857 (tail!11519 s!2326)))))

(declare-fun b!5888063 () Bool)

(declare-fun e!3607800 () Bool)

(assert (=> b!5888063 (= e!3607800 (matchR!8123 (derivativeStep!4678 (regTwo!32393 r!7292) (head!12434 s!2326)) (tail!11519 s!2326)))))

(declare-fun b!5888064 () Bool)

(assert (=> b!5888064 (= e!3607802 (not lt!2307546))))

(declare-fun b!5888065 () Bool)

(declare-fun call!464509 () Bool)

(assert (=> b!5888065 (= e!3607801 (= lt!2307546 call!464509))))

(declare-fun b!5888066 () Bool)

(declare-fun e!3607803 () Bool)

(declare-fun e!3607806 () Bool)

(assert (=> b!5888066 (= e!3607803 e!3607806)))

(declare-fun res!2472915 () Bool)

(assert (=> b!5888066 (=> res!2472915 e!3607806)))

(assert (=> b!5888066 (= res!2472915 call!464509)))

(declare-fun b!5888068 () Bool)

(assert (=> b!5888068 (= e!3607805 e!3607803)))

(declare-fun res!2472909 () Bool)

(assert (=> b!5888068 (=> (not res!2472909) (not e!3607803))))

(assert (=> b!5888068 (= res!2472909 (not lt!2307546))))

(declare-fun bm!464504 () Bool)

(assert (=> bm!464504 (= call!464509 (isEmpty!35857 s!2326))))

(declare-fun b!5888069 () Bool)

(declare-fun res!2472913 () Bool)

(assert (=> b!5888069 (=> res!2472913 e!3607806)))

(assert (=> b!5888069 (= res!2472913 (not (isEmpty!35857 (tail!11519 s!2326))))))

(declare-fun b!5888070 () Bool)

(assert (=> b!5888070 (= e!3607804 (= (head!12434 s!2326) (c!1045597 (regTwo!32393 r!7292))))))

(declare-fun b!5888071 () Bool)

(declare-fun res!2472914 () Bool)

(assert (=> b!5888071 (=> res!2472914 e!3607805)))

(assert (=> b!5888071 (= res!2472914 (not (is-ElementMatch!15940 (regTwo!32393 r!7292))))))

(assert (=> b!5888071 (= e!3607802 e!3607805)))

(declare-fun b!5888072 () Bool)

(declare-fun res!2472910 () Bool)

(assert (=> b!5888072 (=> (not res!2472910) (not e!3607804))))

(assert (=> b!5888072 (= res!2472910 (not call!464509))))

(declare-fun b!5888073 () Bool)

(assert (=> b!5888073 (= e!3607806 (not (= (head!12434 s!2326) (c!1045597 (regTwo!32393 r!7292)))))))

(declare-fun d!1848400 () Bool)

(assert (=> d!1848400 e!3607801))

(declare-fun c!1045782 () Bool)

(assert (=> d!1848400 (= c!1045782 (is-EmptyExpr!15940 (regTwo!32393 r!7292)))))

(assert (=> d!1848400 (= lt!2307546 e!3607800)))

(declare-fun c!1045781 () Bool)

(assert (=> d!1848400 (= c!1045781 (isEmpty!35857 s!2326))))

(assert (=> d!1848400 (validRegex!7676 (regTwo!32393 r!7292))))

(assert (=> d!1848400 (= (matchR!8123 (regTwo!32393 r!7292) s!2326) lt!2307546)))

(declare-fun b!5888067 () Bool)

(assert (=> b!5888067 (= e!3607800 (nullable!5940 (regTwo!32393 r!7292)))))

(assert (= (and d!1848400 c!1045781) b!5888067))

(assert (= (and d!1848400 (not c!1045781)) b!5888063))

(assert (= (and d!1848400 c!1045782) b!5888065))

(assert (= (and d!1848400 (not c!1045782)) b!5888061))

(assert (= (and b!5888061 c!1045783) b!5888064))

(assert (= (and b!5888061 (not c!1045783)) b!5888071))

(assert (= (and b!5888071 (not res!2472914)) b!5888060))

(assert (= (and b!5888060 res!2472916) b!5888072))

(assert (= (and b!5888072 res!2472910) b!5888062))

(assert (= (and b!5888062 res!2472912) b!5888070))

(assert (= (and b!5888060 (not res!2472911)) b!5888068))

(assert (= (and b!5888068 res!2472909) b!5888066))

(assert (= (and b!5888066 (not res!2472915)) b!5888069))

(assert (= (and b!5888069 (not res!2472913)) b!5888073))

(assert (= (or b!5888065 b!5888066 b!5888072) bm!464504))

(assert (=> bm!464504 m!6796062))

(declare-fun m!6796362 () Bool)

(assert (=> b!5888067 m!6796362))

(assert (=> b!5888062 m!6796070))

(assert (=> b!5888062 m!6796070))

(assert (=> b!5888062 m!6796270))

(assert (=> b!5888063 m!6796066))

(assert (=> b!5888063 m!6796066))

(declare-fun m!6796364 () Bool)

(assert (=> b!5888063 m!6796364))

(assert (=> b!5888063 m!6796070))

(assert (=> b!5888063 m!6796364))

(assert (=> b!5888063 m!6796070))

(declare-fun m!6796366 () Bool)

(assert (=> b!5888063 m!6796366))

(assert (=> d!1848400 m!6796062))

(assert (=> d!1848400 m!6795902))

(assert (=> b!5888070 m!6796066))

(assert (=> b!5888069 m!6796070))

(assert (=> b!5888069 m!6796070))

(assert (=> b!5888069 m!6796270))

(assert (=> b!5888073 m!6796066))

(assert (=> b!5887489 d!1848400))

(declare-fun d!1848402 () Bool)

(assert (=> d!1848402 (= (matchR!8123 (regTwo!32393 r!7292) s!2326) (matchRSpec!3041 (regTwo!32393 r!7292) s!2326))))

(declare-fun lt!2307547 () Unit!157151)

(assert (=> d!1848402 (= lt!2307547 (choose!44522 (regTwo!32393 r!7292) s!2326))))

(assert (=> d!1848402 (validRegex!7676 (regTwo!32393 r!7292))))

(assert (=> d!1848402 (= (mainMatchTheorem!3041 (regTwo!32393 r!7292) s!2326) lt!2307547)))

(declare-fun bs!1390975 () Bool)

(assert (= bs!1390975 d!1848402))

(assert (=> bs!1390975 m!6795894))

(assert (=> bs!1390975 m!6795890))

(declare-fun m!6796368 () Bool)

(assert (=> bs!1390975 m!6796368))

(assert (=> bs!1390975 m!6795902))

(assert (=> b!5887489 d!1848402))

(declare-fun bs!1390976 () Bool)

(declare-fun b!5888075 () Bool)

(assert (= bs!1390976 (and b!5888075 b!5887878)))

(declare-fun lambda!321555 () Int)

(assert (=> bs!1390976 (= (and (= (reg!16269 (regOne!32393 r!7292)) (reg!16269 r!7292)) (= (regOne!32393 r!7292) r!7292)) (= lambda!321555 lambda!321544))))

(declare-fun bs!1390977 () Bool)

(assert (= bs!1390977 (and b!5888075 b!5887884)))

(assert (=> bs!1390977 (not (= lambda!321555 lambda!321545))))

(declare-fun bs!1390978 () Bool)

(assert (= bs!1390978 (and b!5888075 b!5888050)))

(assert (=> bs!1390978 (= (and (= (reg!16269 (regOne!32393 r!7292)) (reg!16269 (regTwo!32393 r!7292))) (= (regOne!32393 r!7292) (regTwo!32393 r!7292))) (= lambda!321555 lambda!321553))))

(declare-fun bs!1390979 () Bool)

(assert (= bs!1390979 (and b!5888075 b!5888056)))

(assert (=> bs!1390979 (not (= lambda!321555 lambda!321554))))

(assert (=> b!5888075 true))

(assert (=> b!5888075 true))

(declare-fun bs!1390980 () Bool)

(declare-fun b!5888081 () Bool)

(assert (= bs!1390980 (and b!5888081 b!5887878)))

(declare-fun lambda!321556 () Int)

(assert (=> bs!1390980 (not (= lambda!321556 lambda!321544))))

(declare-fun bs!1390981 () Bool)

(assert (= bs!1390981 (and b!5888081 b!5887884)))

(assert (=> bs!1390981 (= (and (= (regOne!32392 (regOne!32393 r!7292)) (regOne!32392 r!7292)) (= (regTwo!32392 (regOne!32393 r!7292)) (regTwo!32392 r!7292))) (= lambda!321556 lambda!321545))))

(declare-fun bs!1390982 () Bool)

(assert (= bs!1390982 (and b!5888081 b!5888050)))

(assert (=> bs!1390982 (not (= lambda!321556 lambda!321553))))

(declare-fun bs!1390983 () Bool)

(assert (= bs!1390983 (and b!5888081 b!5888056)))

(assert (=> bs!1390983 (= (and (= (regOne!32392 (regOne!32393 r!7292)) (regOne!32392 (regTwo!32393 r!7292))) (= (regTwo!32392 (regOne!32393 r!7292)) (regTwo!32392 (regTwo!32393 r!7292)))) (= lambda!321556 lambda!321554))))

(declare-fun bs!1390984 () Bool)

(assert (= bs!1390984 (and b!5888081 b!5888075)))

(assert (=> bs!1390984 (not (= lambda!321556 lambda!321555))))

(assert (=> b!5888081 true))

(assert (=> b!5888081 true))

(declare-fun b!5888074 () Bool)

(declare-fun e!3607811 () Bool)

(declare-fun e!3607807 () Bool)

(assert (=> b!5888074 (= e!3607811 e!3607807)))

(declare-fun res!2472917 () Bool)

(assert (=> b!5888074 (= res!2472917 (matchRSpec!3041 (regOne!32393 (regOne!32393 r!7292)) s!2326))))

(assert (=> b!5888074 (=> res!2472917 e!3607807)))

(declare-fun call!464511 () Bool)

(declare-fun bm!464505 () Bool)

(declare-fun c!1045784 () Bool)

(assert (=> bm!464505 (= call!464511 (Exists!3012 (ite c!1045784 lambda!321555 lambda!321556)))))

(declare-fun e!3607810 () Bool)

(assert (=> b!5888075 (= e!3607810 call!464511)))

(declare-fun bm!464506 () Bool)

(declare-fun call!464510 () Bool)

(assert (=> bm!464506 (= call!464510 (isEmpty!35857 s!2326))))

(declare-fun b!5888076 () Bool)

(declare-fun e!3607812 () Bool)

(assert (=> b!5888076 (= e!3607811 e!3607812)))

(assert (=> b!5888076 (= c!1045784 (is-Star!15940 (regOne!32393 r!7292)))))

(declare-fun d!1848404 () Bool)

(declare-fun c!1045786 () Bool)

(assert (=> d!1848404 (= c!1045786 (is-EmptyExpr!15940 (regOne!32393 r!7292)))))

(declare-fun e!3607808 () Bool)

(assert (=> d!1848404 (= (matchRSpec!3041 (regOne!32393 r!7292) s!2326) e!3607808)))

(declare-fun b!5888077 () Bool)

(assert (=> b!5888077 (= e!3607807 (matchRSpec!3041 (regTwo!32393 (regOne!32393 r!7292)) s!2326))))

(declare-fun b!5888078 () Bool)

(assert (=> b!5888078 (= e!3607808 call!464510)))

(declare-fun b!5888079 () Bool)

(declare-fun res!2472919 () Bool)

(assert (=> b!5888079 (=> res!2472919 e!3607810)))

(assert (=> b!5888079 (= res!2472919 call!464510)))

(assert (=> b!5888079 (= e!3607812 e!3607810)))

(declare-fun b!5888080 () Bool)

(declare-fun e!3607813 () Bool)

(assert (=> b!5888080 (= e!3607813 (= s!2326 (Cons!63995 (c!1045597 (regOne!32393 r!7292)) Nil!63995)))))

(assert (=> b!5888081 (= e!3607812 call!464511)))

(declare-fun b!5888082 () Bool)

(declare-fun e!3607809 () Bool)

(assert (=> b!5888082 (= e!3607808 e!3607809)))

(declare-fun res!2472918 () Bool)

(assert (=> b!5888082 (= res!2472918 (not (is-EmptyLang!15940 (regOne!32393 r!7292))))))

(assert (=> b!5888082 (=> (not res!2472918) (not e!3607809))))

(declare-fun b!5888083 () Bool)

(declare-fun c!1045787 () Bool)

(assert (=> b!5888083 (= c!1045787 (is-ElementMatch!15940 (regOne!32393 r!7292)))))

(assert (=> b!5888083 (= e!3607809 e!3607813)))

(declare-fun b!5888084 () Bool)

(declare-fun c!1045785 () Bool)

(assert (=> b!5888084 (= c!1045785 (is-Union!15940 (regOne!32393 r!7292)))))

(assert (=> b!5888084 (= e!3607813 e!3607811)))

(assert (= (and d!1848404 c!1045786) b!5888078))

(assert (= (and d!1848404 (not c!1045786)) b!5888082))

(assert (= (and b!5888082 res!2472918) b!5888083))

(assert (= (and b!5888083 c!1045787) b!5888080))

(assert (= (and b!5888083 (not c!1045787)) b!5888084))

(assert (= (and b!5888084 c!1045785) b!5888074))

(assert (= (and b!5888084 (not c!1045785)) b!5888076))

(assert (= (and b!5888074 (not res!2472917)) b!5888077))

(assert (= (and b!5888076 c!1045784) b!5888079))

(assert (= (and b!5888076 (not c!1045784)) b!5888081))

(assert (= (and b!5888079 (not res!2472919)) b!5888075))

(assert (= (or b!5888075 b!5888081) bm!464505))

(assert (= (or b!5888078 b!5888079) bm!464506))

(declare-fun m!6796370 () Bool)

(assert (=> b!5888074 m!6796370))

(declare-fun m!6796372 () Bool)

(assert (=> bm!464505 m!6796372))

(assert (=> bm!464506 m!6796062))

(declare-fun m!6796374 () Bool)

(assert (=> b!5888077 m!6796374))

(assert (=> b!5887489 d!1848404))

(declare-fun b!5888085 () Bool)

(declare-fun res!2472922 () Bool)

(declare-fun e!3607819 () Bool)

(assert (=> b!5888085 (=> res!2472922 e!3607819)))

(declare-fun e!3607818 () Bool)

(assert (=> b!5888085 (= res!2472922 e!3607818)))

(declare-fun res!2472927 () Bool)

(assert (=> b!5888085 (=> (not res!2472927) (not e!3607818))))

(declare-fun lt!2307548 () Bool)

(assert (=> b!5888085 (= res!2472927 lt!2307548)))

(declare-fun b!5888086 () Bool)

(declare-fun e!3607815 () Bool)

(declare-fun e!3607816 () Bool)

(assert (=> b!5888086 (= e!3607815 e!3607816)))

(declare-fun c!1045790 () Bool)

(assert (=> b!5888086 (= c!1045790 (is-EmptyLang!15940 (regOne!32393 r!7292)))))

(declare-fun b!5888087 () Bool)

(declare-fun res!2472923 () Bool)

(assert (=> b!5888087 (=> (not res!2472923) (not e!3607818))))

(assert (=> b!5888087 (= res!2472923 (isEmpty!35857 (tail!11519 s!2326)))))

(declare-fun b!5888088 () Bool)

(declare-fun e!3607814 () Bool)

(assert (=> b!5888088 (= e!3607814 (matchR!8123 (derivativeStep!4678 (regOne!32393 r!7292) (head!12434 s!2326)) (tail!11519 s!2326)))))

(declare-fun b!5888089 () Bool)

(assert (=> b!5888089 (= e!3607816 (not lt!2307548))))

(declare-fun b!5888090 () Bool)

(declare-fun call!464512 () Bool)

(assert (=> b!5888090 (= e!3607815 (= lt!2307548 call!464512))))

(declare-fun b!5888091 () Bool)

(declare-fun e!3607817 () Bool)

(declare-fun e!3607820 () Bool)

(assert (=> b!5888091 (= e!3607817 e!3607820)))

(declare-fun res!2472926 () Bool)

(assert (=> b!5888091 (=> res!2472926 e!3607820)))

(assert (=> b!5888091 (= res!2472926 call!464512)))

(declare-fun b!5888093 () Bool)

(assert (=> b!5888093 (= e!3607819 e!3607817)))

(declare-fun res!2472920 () Bool)

(assert (=> b!5888093 (=> (not res!2472920) (not e!3607817))))

(assert (=> b!5888093 (= res!2472920 (not lt!2307548))))

(declare-fun bm!464507 () Bool)

(assert (=> bm!464507 (= call!464512 (isEmpty!35857 s!2326))))

(declare-fun b!5888094 () Bool)

(declare-fun res!2472924 () Bool)

(assert (=> b!5888094 (=> res!2472924 e!3607820)))

(assert (=> b!5888094 (= res!2472924 (not (isEmpty!35857 (tail!11519 s!2326))))))

(declare-fun b!5888095 () Bool)

(assert (=> b!5888095 (= e!3607818 (= (head!12434 s!2326) (c!1045597 (regOne!32393 r!7292))))))

(declare-fun b!5888096 () Bool)

(declare-fun res!2472925 () Bool)

(assert (=> b!5888096 (=> res!2472925 e!3607819)))

(assert (=> b!5888096 (= res!2472925 (not (is-ElementMatch!15940 (regOne!32393 r!7292))))))

(assert (=> b!5888096 (= e!3607816 e!3607819)))

(declare-fun b!5888097 () Bool)

(declare-fun res!2472921 () Bool)

(assert (=> b!5888097 (=> (not res!2472921) (not e!3607818))))

(assert (=> b!5888097 (= res!2472921 (not call!464512))))

(declare-fun b!5888098 () Bool)

(assert (=> b!5888098 (= e!3607820 (not (= (head!12434 s!2326) (c!1045597 (regOne!32393 r!7292)))))))

(declare-fun d!1848406 () Bool)

(assert (=> d!1848406 e!3607815))

(declare-fun c!1045789 () Bool)

(assert (=> d!1848406 (= c!1045789 (is-EmptyExpr!15940 (regOne!32393 r!7292)))))

(assert (=> d!1848406 (= lt!2307548 e!3607814)))

(declare-fun c!1045788 () Bool)

(assert (=> d!1848406 (= c!1045788 (isEmpty!35857 s!2326))))

(assert (=> d!1848406 (validRegex!7676 (regOne!32393 r!7292))))

(assert (=> d!1848406 (= (matchR!8123 (regOne!32393 r!7292) s!2326) lt!2307548)))

(declare-fun b!5888092 () Bool)

(assert (=> b!5888092 (= e!3607814 (nullable!5940 (regOne!32393 r!7292)))))

(assert (= (and d!1848406 c!1045788) b!5888092))

(assert (= (and d!1848406 (not c!1045788)) b!5888088))

(assert (= (and d!1848406 c!1045789) b!5888090))

(assert (= (and d!1848406 (not c!1045789)) b!5888086))

(assert (= (and b!5888086 c!1045790) b!5888089))

(assert (= (and b!5888086 (not c!1045790)) b!5888096))

(assert (= (and b!5888096 (not res!2472925)) b!5888085))

(assert (= (and b!5888085 res!2472927) b!5888097))

(assert (= (and b!5888097 res!2472921) b!5888087))

(assert (= (and b!5888087 res!2472923) b!5888095))

(assert (= (and b!5888085 (not res!2472922)) b!5888093))

(assert (= (and b!5888093 res!2472920) b!5888091))

(assert (= (and b!5888091 (not res!2472926)) b!5888094))

(assert (= (and b!5888094 (not res!2472924)) b!5888098))

(assert (= (or b!5888090 b!5888091 b!5888097) bm!464507))

(assert (=> bm!464507 m!6796062))

(declare-fun m!6796376 () Bool)

(assert (=> b!5888092 m!6796376))

(assert (=> b!5888087 m!6796070))

(assert (=> b!5888087 m!6796070))

(assert (=> b!5888087 m!6796270))

(assert (=> b!5888088 m!6796066))

(assert (=> b!5888088 m!6796066))

(declare-fun m!6796378 () Bool)

(assert (=> b!5888088 m!6796378))

(assert (=> b!5888088 m!6796070))

(assert (=> b!5888088 m!6796378))

(assert (=> b!5888088 m!6796070))

(declare-fun m!6796380 () Bool)

(assert (=> b!5888088 m!6796380))

(assert (=> d!1848406 m!6796062))

(assert (=> d!1848406 m!6796198))

(assert (=> b!5888095 m!6796066))

(assert (=> b!5888094 m!6796070))

(assert (=> b!5888094 m!6796070))

(assert (=> b!5888094 m!6796270))

(assert (=> b!5888098 m!6796066))

(assert (=> b!5887489 d!1848406))

(declare-fun e!3607837 () Bool)

(assert (=> b!5887487 (= tp!1632098 e!3607837)))

(declare-fun b!5888134 () Bool)

(declare-fun tp!1632151 () Bool)

(declare-fun tp!1632150 () Bool)

(assert (=> b!5888134 (= e!3607837 (and tp!1632151 tp!1632150))))

(declare-fun b!5888133 () Bool)

(declare-fun tp!1632152 () Bool)

(assert (=> b!5888133 (= e!3607837 tp!1632152)))

(declare-fun b!5888132 () Bool)

(declare-fun tp!1632148 () Bool)

(declare-fun tp!1632149 () Bool)

(assert (=> b!5888132 (= e!3607837 (and tp!1632148 tp!1632149))))

(declare-fun b!5888131 () Bool)

(assert (=> b!5888131 (= e!3607837 tp_is_empty!41133)))

(assert (= (and b!5887487 (is-ElementMatch!15940 (reg!16269 r!7292))) b!5888131))

(assert (= (and b!5887487 (is-Concat!24785 (reg!16269 r!7292))) b!5888132))

(assert (= (and b!5887487 (is-Star!15940 (reg!16269 r!7292))) b!5888133))

(assert (= (and b!5887487 (is-Union!15940 (reg!16269 r!7292))) b!5888134))

(declare-fun e!3607838 () Bool)

(assert (=> b!5887486 (= tp!1632107 e!3607838)))

(declare-fun b!5888138 () Bool)

(declare-fun tp!1632156 () Bool)

(declare-fun tp!1632155 () Bool)

(assert (=> b!5888138 (= e!3607838 (and tp!1632156 tp!1632155))))

(declare-fun b!5888137 () Bool)

(declare-fun tp!1632157 () Bool)

(assert (=> b!5888137 (= e!3607838 tp!1632157)))

(declare-fun b!5888136 () Bool)

(declare-fun tp!1632153 () Bool)

(declare-fun tp!1632154 () Bool)

(assert (=> b!5888136 (= e!3607838 (and tp!1632153 tp!1632154))))

(declare-fun b!5888135 () Bool)

(assert (=> b!5888135 (= e!3607838 tp_is_empty!41133)))

(assert (= (and b!5887486 (is-ElementMatch!15940 (regOne!32392 r!7292))) b!5888135))

(assert (= (and b!5887486 (is-Concat!24785 (regOne!32392 r!7292))) b!5888136))

(assert (= (and b!5887486 (is-Star!15940 (regOne!32392 r!7292))) b!5888137))

(assert (= (and b!5887486 (is-Union!15940 (regOne!32392 r!7292))) b!5888138))

(declare-fun e!3607839 () Bool)

(assert (=> b!5887486 (= tp!1632105 e!3607839)))

(declare-fun b!5888142 () Bool)

(declare-fun tp!1632161 () Bool)

(declare-fun tp!1632160 () Bool)

(assert (=> b!5888142 (= e!3607839 (and tp!1632161 tp!1632160))))

(declare-fun b!5888141 () Bool)

(declare-fun tp!1632162 () Bool)

(assert (=> b!5888141 (= e!3607839 tp!1632162)))

(declare-fun b!5888140 () Bool)

(declare-fun tp!1632158 () Bool)

(declare-fun tp!1632159 () Bool)

(assert (=> b!5888140 (= e!3607839 (and tp!1632158 tp!1632159))))

(declare-fun b!5888139 () Bool)

(assert (=> b!5888139 (= e!3607839 tp_is_empty!41133)))

(assert (= (and b!5887486 (is-ElementMatch!15940 (regTwo!32392 r!7292))) b!5888139))

(assert (= (and b!5887486 (is-Concat!24785 (regTwo!32392 r!7292))) b!5888140))

(assert (= (and b!5887486 (is-Star!15940 (regTwo!32392 r!7292))) b!5888141))

(assert (= (and b!5887486 (is-Union!15940 (regTwo!32392 r!7292))) b!5888142))

(declare-fun b!5888147 () Bool)

(declare-fun e!3607842 () Bool)

(declare-fun tp!1632167 () Bool)

(declare-fun tp!1632168 () Bool)

(assert (=> b!5888147 (= e!3607842 (and tp!1632167 tp!1632168))))

(assert (=> b!5887479 (= tp!1632104 e!3607842)))

(assert (= (and b!5887479 (is-Cons!63996 (exprs!5824 (h!70445 zl!343)))) b!5888147))

(declare-fun condSetEmpty!39932 () Bool)

(assert (=> setNonEmpty!39926 (= condSetEmpty!39932 (= setRest!39926 (as set.empty (Set Context!10648))))))

(declare-fun setRes!39932 () Bool)

(assert (=> setNonEmpty!39926 (= tp!1632102 setRes!39932)))

(declare-fun setIsEmpty!39932 () Bool)

(assert (=> setIsEmpty!39932 setRes!39932))

(declare-fun setNonEmpty!39932 () Bool)

(declare-fun tp!1632173 () Bool)

(declare-fun setElem!39932 () Context!10648)

(declare-fun e!3607845 () Bool)

(assert (=> setNonEmpty!39932 (= setRes!39932 (and tp!1632173 (inv!83098 setElem!39932) e!3607845))))

(declare-fun setRest!39932 () (Set Context!10648))

(assert (=> setNonEmpty!39932 (= setRest!39926 (set.union (set.insert setElem!39932 (as set.empty (Set Context!10648))) setRest!39932))))

(declare-fun b!5888152 () Bool)

(declare-fun tp!1632174 () Bool)

(assert (=> b!5888152 (= e!3607845 tp!1632174)))

(assert (= (and setNonEmpty!39926 condSetEmpty!39932) setIsEmpty!39932))

(assert (= (and setNonEmpty!39926 (not condSetEmpty!39932)) setNonEmpty!39932))

(assert (= setNonEmpty!39932 b!5888152))

(declare-fun m!6796382 () Bool)

(assert (=> setNonEmpty!39932 m!6796382))

(declare-fun b!5888166 () Bool)

(declare-fun e!3607853 () Bool)

(declare-fun tp!1632179 () Bool)

(assert (=> b!5888166 (= e!3607853 tp!1632179)))

(declare-fun tp!1632180 () Bool)

(declare-fun e!3607852 () Bool)

(declare-fun b!5888165 () Bool)

(assert (=> b!5888165 (= e!3607852 (and (inv!83098 (h!70445 (t!377504 zl!343))) e!3607853 tp!1632180))))

(assert (=> b!5887490 (= tp!1632106 e!3607852)))

(assert (= b!5888165 b!5888166))

(assert (= (and b!5887490 (is-Cons!63997 (t!377504 zl!343))) b!5888165))

(declare-fun m!6796384 () Bool)

(assert (=> b!5888165 m!6796384))

(declare-fun b!5888171 () Bool)

(declare-fun e!3607856 () Bool)

(declare-fun tp!1632183 () Bool)

(assert (=> b!5888171 (= e!3607856 (and tp_is_empty!41133 tp!1632183))))

(assert (=> b!5887473 (= tp!1632100 e!3607856)))

(assert (= (and b!5887473 (is-Cons!63995 (t!377502 s!2326))) b!5888171))

(declare-fun b!5888172 () Bool)

(declare-fun e!3607857 () Bool)

(declare-fun tp!1632184 () Bool)

(declare-fun tp!1632185 () Bool)

(assert (=> b!5888172 (= e!3607857 (and tp!1632184 tp!1632185))))

(assert (=> b!5887488 (= tp!1632099 e!3607857)))

(assert (= (and b!5887488 (is-Cons!63996 (exprs!5824 setElem!39926))) b!5888172))

(declare-fun e!3607858 () Bool)

(assert (=> b!5887478 (= tp!1632103 e!3607858)))

(declare-fun b!5888176 () Bool)

(declare-fun tp!1632189 () Bool)

(declare-fun tp!1632188 () Bool)

(assert (=> b!5888176 (= e!3607858 (and tp!1632189 tp!1632188))))

(declare-fun b!5888175 () Bool)

(declare-fun tp!1632190 () Bool)

(assert (=> b!5888175 (= e!3607858 tp!1632190)))

(declare-fun b!5888174 () Bool)

(declare-fun tp!1632186 () Bool)

(declare-fun tp!1632187 () Bool)

(assert (=> b!5888174 (= e!3607858 (and tp!1632186 tp!1632187))))

(declare-fun b!5888173 () Bool)

(assert (=> b!5888173 (= e!3607858 tp_is_empty!41133)))

(assert (= (and b!5887478 (is-ElementMatch!15940 (regOne!32393 r!7292))) b!5888173))

(assert (= (and b!5887478 (is-Concat!24785 (regOne!32393 r!7292))) b!5888174))

(assert (= (and b!5887478 (is-Star!15940 (regOne!32393 r!7292))) b!5888175))

(assert (= (and b!5887478 (is-Union!15940 (regOne!32393 r!7292))) b!5888176))

(declare-fun e!3607859 () Bool)

(assert (=> b!5887478 (= tp!1632101 e!3607859)))

(declare-fun b!5888180 () Bool)

(declare-fun tp!1632194 () Bool)

(declare-fun tp!1632193 () Bool)

(assert (=> b!5888180 (= e!3607859 (and tp!1632194 tp!1632193))))

(declare-fun b!5888179 () Bool)

(declare-fun tp!1632195 () Bool)

(assert (=> b!5888179 (= e!3607859 tp!1632195)))

(declare-fun b!5888178 () Bool)

(declare-fun tp!1632191 () Bool)

(declare-fun tp!1632192 () Bool)

(assert (=> b!5888178 (= e!3607859 (and tp!1632191 tp!1632192))))

(declare-fun b!5888177 () Bool)

(assert (=> b!5888177 (= e!3607859 tp_is_empty!41133)))

(assert (= (and b!5887478 (is-ElementMatch!15940 (regTwo!32393 r!7292))) b!5888177))

(assert (= (and b!5887478 (is-Concat!24785 (regTwo!32393 r!7292))) b!5888178))

(assert (= (and b!5887478 (is-Star!15940 (regTwo!32393 r!7292))) b!5888179))

(assert (= (and b!5887478 (is-Union!15940 (regTwo!32393 r!7292))) b!5888180))

(declare-fun b_lambda!221521 () Bool)

(assert (= b_lambda!221515 (or b!5887466 b_lambda!221521)))

(declare-fun bs!1390985 () Bool)

(declare-fun d!1848408 () Bool)

(assert (= bs!1390985 (and d!1848408 b!5887466)))

(assert (=> bs!1390985 (= (dynLambda!25034 lambda!321508 (h!70445 zl!343)) (derivationStepZipperUp!1132 (h!70445 zl!343) (h!70443 s!2326)))))

(assert (=> bs!1390985 m!6795872))

(assert (=> d!1848318 d!1848408))

(declare-fun b_lambda!221523 () Bool)

(assert (= b_lambda!221511 (or b!5887466 b_lambda!221523)))

(declare-fun bs!1390986 () Bool)

(declare-fun d!1848410 () Bool)

(assert (= bs!1390986 (and d!1848410 b!5887466)))

(assert (=> bs!1390986 (= (dynLambda!25034 lambda!321508 lt!2307392) (derivationStepZipperUp!1132 lt!2307392 (h!70443 s!2326)))))

(assert (=> bs!1390986 m!6795914))

(assert (=> d!1848298 d!1848410))

(declare-fun b_lambda!221525 () Bool)

(assert (= b_lambda!221513 (or b!5887466 b_lambda!221525)))

(declare-fun bs!1390987 () Bool)

(declare-fun d!1848412 () Bool)

(assert (= bs!1390987 (and d!1848412 b!5887466)))

(assert (=> bs!1390987 (= (dynLambda!25034 lambda!321508 lt!2307383) (derivationStepZipperUp!1132 lt!2307383 (h!70443 s!2326)))))

(assert (=> bs!1390987 m!6795916))

(assert (=> d!1848306 d!1848412))

(push 1)

(assert (not b!5887747))

(assert (not bm!464505))

(assert (not b!5887696))

(assert (not b!5888094))

(assert (not b!5888095))

(assert (not b!5888062))

(assert (not b_lambda!221525))

(assert (not b!5887704))

(assert (not b!5887933))

(assert (not d!1848406))

(assert (not b!5887940))

(assert (not b!5887649))

(assert (not b!5887688))

(assert (not b!5888178))

(assert (not b!5888141))

(assert (not b!5887750))

(assert (not d!1848398))

(assert (not b!5888063))

(assert (not b!5887752))

(assert (not bm!464483))

(assert (not bm!464495))

(assert (not bm!464414))

(assert (not b!5888092))

(assert (not b!5887943))

(assert (not bm!464489))

(assert (not b!5888137))

(assert (not b!5888166))

(assert (not bm!464461))

(assert (not b!5887932))

(assert tp_is_empty!41133)

(assert (not b!5887755))

(assert (not b!5888039))

(assert (not b!5888174))

(assert (not d!1848402))

(assert (not d!1848400))

(assert (not bm!464496))

(assert (not b!5887706))

(assert (not b!5888088))

(assert (not b!5887790))

(assert (not d!1848322))

(assert (not d!1848344))

(assert (not b!5888028))

(assert (not b!5888180))

(assert (not bm!464504))

(assert (not d!1848376))

(assert (not setNonEmpty!39932))

(assert (not b!5888087))

(assert (not d!1848298))

(assert (not bs!1390986))

(assert (not b!5888006))

(assert (not bm!464485))

(assert (not d!1848382))

(assert (not d!1848348))

(assert (not b!5887690))

(assert (not bs!1390985))

(assert (not bm!464501))

(assert (not d!1848324))

(assert (not b!5888172))

(assert (not bm!464430))

(assert (not b!5888007))

(assert (not b!5887877))

(assert (not b!5888176))

(assert (not b!5887707))

(assert (not b!5887631))

(assert (not d!1848318))

(assert (not b!5887820))

(assert (not b!5888132))

(assert (not bm!464493))

(assert (not d!1848362))

(assert (not bm!464462))

(assert (not b!5887693))

(assert (not b!5887614))

(assert (not b!5887663))

(assert (not b!5887746))

(assert (not d!1848314))

(assert (not bm!464506))

(assert (not b!5887822))

(assert (not b!5888077))

(assert (not bm!464412))

(assert (not b!5887610))

(assert (not b!5888133))

(assert (not b_lambda!221523))

(assert (not bm!464432))

(assert (not b!5887817))

(assert (not bm!464413))

(assert (not b!5887630))

(assert (not b!5888070))

(assert (not d!1848296))

(assert (not b!5887815))

(assert (not b!5887754))

(assert (not b!5887647))

(assert (not b!5888152))

(assert (not b_lambda!221521))

(assert (not d!1848350))

(assert (not d!1848306))

(assert (not bm!464490))

(assert (not bm!464503))

(assert (not b!5888165))

(assert (not b!5887993))

(assert (not b!5887939))

(assert (not b!5887692))

(assert (not bm!464487))

(assert (not b!5887816))

(assert (not bm!464480))

(assert (not b!5888147))

(assert (not bm!464467))

(assert (not b!5887609))

(assert (not b!5888015))

(assert (not b!5887753))

(assert (not b!5887697))

(assert (not d!1848308))

(assert (not bm!464502))

(assert (not d!1848320))

(assert (not b!5888069))

(assert (not b!5887937))

(assert (not b!5887650))

(assert (not bm!464499))

(assert (not bm!464486))

(assert (not b!5887648))

(assert (not b!5888171))

(assert (not b!5888134))

(assert (not b!5888052))

(assert (not b!5887695))

(assert (not d!1848328))

(assert (not bs!1390987))

(assert (not d!1848310))

(assert (not d!1848338))

(assert (not b!5888179))

(assert (not b!5887821))

(assert (not b!5888138))

(assert (not d!1848354))

(assert (not d!1848352))

(assert (not bm!464507))

(assert (not b!5888067))

(assert (not b!5888049))

(assert (not b!5888098))

(assert (not b!5887615))

(assert (not b!5888175))

(assert (not b!5887880))

(assert (not b!5888073))

(assert (not d!1848346))

(assert (not b!5887814))

(assert (not d!1848332))

(assert (not b!5888074))

(assert (not d!1848334))

(assert (not b!5888142))

(assert (not b!5888140))

(assert (not b!5888136))

(assert (not d!1848312))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

