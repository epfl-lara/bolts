; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589940 () Bool)

(assert start!589940)

(declare-fun b!5732559 () Bool)

(assert (=> b!5732559 true))

(assert (=> b!5732559 true))

(declare-fun lambda!310371 () Int)

(declare-fun lambda!310370 () Int)

(assert (=> b!5732559 (not (= lambda!310371 lambda!310370))))

(assert (=> b!5732559 true))

(assert (=> b!5732559 true))

(declare-fun b!5732598 () Bool)

(assert (=> b!5732598 true))

(declare-fun b!5732599 () Bool)

(assert (=> b!5732599 true))

(declare-fun bs!1339810 () Bool)

(declare-fun b!5732569 () Bool)

(assert (= bs!1339810 (and b!5732569 b!5732559)))

(declare-datatypes ((C!31748 0))(
  ( (C!31749 (val!25576 Int)) )
))
(declare-datatypes ((Regex!15739 0))(
  ( (ElementMatch!15739 (c!1011505 C!31748)) (Concat!24584 (regOne!31990 Regex!15739) (regTwo!31990 Regex!15739)) (EmptyExpr!15739) (Star!15739 (reg!16068 Regex!15739)) (EmptyLang!15739) (Union!15739 (regOne!31991 Regex!15739) (regTwo!31991 Regex!15739)) )
))
(declare-fun r!7292 () Regex!15739)

(declare-fun lt!2282110 () Regex!15739)

(declare-fun lambda!310375 () Int)

(assert (=> bs!1339810 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310375 lambda!310370))))

(assert (=> bs!1339810 (not (= lambda!310375 lambda!310371))))

(assert (=> b!5732569 true))

(assert (=> b!5732569 true))

(assert (=> b!5732569 true))

(declare-fun lambda!310376 () Int)

(assert (=> bs!1339810 (not (= lambda!310376 lambda!310370))))

(assert (=> bs!1339810 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310376 lambda!310371))))

(assert (=> b!5732569 (not (= lambda!310376 lambda!310375))))

(assert (=> b!5732569 true))

(assert (=> b!5732569 true))

(assert (=> b!5732569 true))

(declare-fun bs!1339811 () Bool)

(declare-fun b!5732562 () Bool)

(assert (= bs!1339811 (and b!5732562 b!5732559)))

(declare-datatypes ((List!63516 0))(
  ( (Nil!63392) (Cons!63392 (h!69840 C!31748) (t!376844 List!63516)) )
))
(declare-fun s!2326 () List!63516)

(declare-datatypes ((tuple2!65672 0))(
  ( (tuple2!65673 (_1!36139 List!63516) (_2!36139 List!63516)) )
))
(declare-fun lt!2282146 () tuple2!65672)

(declare-fun lt!2282113 () Regex!15739)

(declare-fun lambda!310377 () Int)

(assert (=> bs!1339811 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310377 lambda!310370))))

(assert (=> bs!1339811 (not (= lambda!310377 lambda!310371))))

(declare-fun bs!1339812 () Bool)

(assert (= bs!1339812 (and b!5732562 b!5732569)))

(assert (=> bs!1339812 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) lt!2282110) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310377 lambda!310375))))

(assert (=> bs!1339812 (not (= lambda!310377 lambda!310376))))

(assert (=> b!5732562 true))

(assert (=> b!5732562 true))

(assert (=> b!5732562 true))

(declare-fun lambda!310378 () Int)

(assert (=> bs!1339812 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) lt!2282110) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310378 lambda!310376))))

(assert (=> b!5732562 (not (= lambda!310378 lambda!310377))))

(assert (=> bs!1339811 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310378 lambda!310371))))

(assert (=> bs!1339811 (not (= lambda!310378 lambda!310370))))

(assert (=> bs!1339812 (not (= lambda!310378 lambda!310375))))

(assert (=> b!5732562 true))

(assert (=> b!5732562 true))

(assert (=> b!5732562 true))

(declare-fun lambda!310379 () Int)

(assert (=> bs!1339812 (not (= lambda!310379 lambda!310376))))

(assert (=> b!5732562 (not (= lambda!310379 lambda!310377))))

(assert (=> bs!1339811 (not (= lambda!310379 lambda!310371))))

(assert (=> b!5732562 (not (= lambda!310379 lambda!310378))))

(assert (=> bs!1339811 (not (= lambda!310379 lambda!310370))))

(assert (=> bs!1339812 (not (= lambda!310379 lambda!310375))))

(assert (=> b!5732562 true))

(assert (=> b!5732562 true))

(assert (=> b!5732562 true))

(declare-fun b!5732558 () Bool)

(declare-fun res!2420626 () Bool)

(declare-fun e!3524388 () Bool)

(assert (=> b!5732558 (=> res!2420626 e!3524388)))

(declare-datatypes ((List!63517 0))(
  ( (Nil!63393) (Cons!63393 (h!69841 Regex!15739) (t!376845 List!63517)) )
))
(declare-datatypes ((Context!10246 0))(
  ( (Context!10247 (exprs!5623 List!63517)) )
))
(declare-datatypes ((List!63518 0))(
  ( (Nil!63394) (Cons!63394 (h!69842 Context!10246) (t!376846 List!63518)) )
))
(declare-fun zl!343 () List!63518)

(declare-fun isEmpty!35269 (List!63518) Bool)

(assert (=> b!5732558 (= res!2420626 (not (isEmpty!35269 (t!376846 zl!343))))))

(declare-fun e!3524397 () Bool)

(assert (=> b!5732559 (= e!3524388 e!3524397)))

(declare-fun res!2420600 () Bool)

(assert (=> b!5732559 (=> res!2420600 e!3524397)))

(declare-fun lt!2282155 () Bool)

(declare-fun lt!2282141 () Bool)

(get-info :version)

(assert (=> b!5732559 (= res!2420600 (or (not (= lt!2282155 lt!2282141)) ((_ is Nil!63392) s!2326)))))

(declare-fun Exists!2839 (Int) Bool)

(assert (=> b!5732559 (= (Exists!2839 lambda!310370) (Exists!2839 lambda!310371))))

(declare-datatypes ((Unit!156488 0))(
  ( (Unit!156489) )
))
(declare-fun lt!2282128 () Unit!156488)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1468 (Regex!15739 Regex!15739 List!63516) Unit!156488)

(assert (=> b!5732559 (= lt!2282128 (lemmaExistCutMatchRandMatchRSpecEquivalent!1468 (regOne!31990 r!7292) (regTwo!31990 r!7292) s!2326))))

(assert (=> b!5732559 (= lt!2282141 (Exists!2839 lambda!310370))))

(declare-datatypes ((Option!15748 0))(
  ( (None!15747) (Some!15747 (v!51802 tuple2!65672)) )
))
(declare-fun isDefined!12451 (Option!15748) Bool)

(declare-fun findConcatSeparation!2162 (Regex!15739 Regex!15739 List!63516 List!63516 List!63516) Option!15748)

(assert (=> b!5732559 (= lt!2282141 (isDefined!12451 (findConcatSeparation!2162 (regOne!31990 r!7292) (regTwo!31990 r!7292) Nil!63392 s!2326 s!2326)))))

(declare-fun lt!2282168 () Unit!156488)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1926 (Regex!15739 Regex!15739 List!63516) Unit!156488)

(assert (=> b!5732559 (= lt!2282168 (lemmaFindConcatSeparationEquivalentToExists!1926 (regOne!31990 r!7292) (regTwo!31990 r!7292) s!2326))))

(declare-fun b!5732560 () Bool)

(declare-fun e!3524404 () Bool)

(declare-fun tp_is_empty!40731 () Bool)

(declare-fun tp!1586459 () Bool)

(assert (=> b!5732560 (= e!3524404 (and tp_is_empty!40731 tp!1586459))))

(declare-fun b!5732561 () Bool)

(declare-fun e!3524408 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2282153 () (InoxSet Context!10246))

(declare-fun matchZipper!1877 ((InoxSet Context!10246) List!63516) Bool)

(assert (=> b!5732561 (= e!3524408 (not (matchZipper!1877 lt!2282153 (t!376844 s!2326))))))

(declare-fun e!3524406 () Bool)

(declare-fun lt!2282109 () tuple2!65672)

(declare-fun matchR!7924 (Regex!15739 List!63516) Bool)

(assert (=> b!5732562 (= e!3524406 (matchR!7924 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282109)))))

(declare-fun ++!13950 (List!63516 List!63516) List!63516)

(assert (=> b!5732562 (= (++!13950 (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109)) (_2!36139 lt!2282146)) (++!13950 (_1!36139 lt!2282109) (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146))))))

(declare-fun lt!2282147 () Unit!156488)

(declare-fun lemmaConcatAssociativity!2882 (List!63516 List!63516 List!63516) Unit!156488)

(assert (=> b!5732562 (= lt!2282147 (lemmaConcatAssociativity!2882 (_1!36139 lt!2282109) (_2!36139 lt!2282109) (_2!36139 lt!2282146)))))

(declare-fun lt!2282123 () Option!15748)

(declare-fun get!21864 (Option!15748) tuple2!65672)

(assert (=> b!5732562 (= lt!2282109 (get!21864 lt!2282123))))

(assert (=> b!5732562 (= (Exists!2839 lambda!310377) (Exists!2839 lambda!310379))))

(declare-fun lt!2282124 () Unit!156488)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!552 (Regex!15739 List!63516) Unit!156488)

(assert (=> b!5732562 (= lt!2282124 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!552 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282146)))))

(assert (=> b!5732562 (= (Exists!2839 lambda!310377) (Exists!2839 lambda!310378))))

(declare-fun lt!2282152 () Unit!156488)

(assert (=> b!5732562 (= lt!2282152 (lemmaExistCutMatchRandMatchRSpecEquivalent!1468 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (_1!36139 lt!2282146)))))

(assert (=> b!5732562 (= (isDefined!12451 lt!2282123) (Exists!2839 lambda!310377))))

(assert (=> b!5732562 (= lt!2282123 (findConcatSeparation!2162 (reg!16068 (regOne!31990 r!7292)) lt!2282113 Nil!63392 (_1!36139 lt!2282146) (_1!36139 lt!2282146)))))

(declare-fun lt!2282154 () Unit!156488)

(assert (=> b!5732562 (= lt!2282154 (lemmaFindConcatSeparationEquivalentToExists!1926 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (_1!36139 lt!2282146)))))

(declare-fun matchRSpec!2842 (Regex!15739 List!63516) Bool)

(assert (=> b!5732562 (matchRSpec!2842 lt!2282110 (_1!36139 lt!2282146))))

(declare-fun lt!2282104 () Unit!156488)

(declare-fun mainMatchTheorem!2842 (Regex!15739 List!63516) Unit!156488)

(assert (=> b!5732562 (= lt!2282104 (mainMatchTheorem!2842 lt!2282110 (_1!36139 lt!2282146)))))

(declare-fun b!5732563 () Bool)

(declare-fun res!2420603 () Bool)

(declare-fun e!3524399 () Bool)

(assert (=> b!5732563 (=> res!2420603 e!3524399)))

(assert (=> b!5732563 (= res!2420603 (or ((_ is Concat!24584) (regOne!31990 r!7292)) (not ((_ is Star!15739) (regOne!31990 r!7292)))))))

(declare-fun b!5732564 () Bool)

(declare-fun e!3524398 () Bool)

(declare-fun e!3524390 () Bool)

(assert (=> b!5732564 (= e!3524398 e!3524390)))

(declare-fun res!2420607 () Bool)

(assert (=> b!5732564 (=> res!2420607 e!3524390)))

(declare-fun lt!2282125 () List!63516)

(assert (=> b!5732564 (= res!2420607 (not (= s!2326 lt!2282125)))))

(declare-fun lt!2282150 () tuple2!65672)

(assert (=> b!5732564 (= lt!2282125 (++!13950 (_1!36139 lt!2282150) (_2!36139 lt!2282150)))))

(declare-fun lt!2282122 () Option!15748)

(assert (=> b!5732564 (= lt!2282150 (get!21864 lt!2282122))))

(assert (=> b!5732564 (isDefined!12451 lt!2282122)))

(declare-fun lt!2282159 () (InoxSet Context!10246))

(declare-fun lt!2282157 () (InoxSet Context!10246))

(declare-fun findConcatSeparationZippers!126 ((InoxSet Context!10246) (InoxSet Context!10246) List!63516 List!63516 List!63516) Option!15748)

(assert (=> b!5732564 (= lt!2282122 (findConcatSeparationZippers!126 lt!2282157 lt!2282159 Nil!63392 s!2326 s!2326))))

(declare-fun lt!2282143 () Context!10246)

(declare-fun lt!2282107 () Unit!156488)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!126 ((InoxSet Context!10246) Context!10246 List!63516) Unit!156488)

(assert (=> b!5732564 (= lt!2282107 (lemmaConcatZipperMatchesStringThenFindConcatDefined!126 lt!2282157 lt!2282143 s!2326))))

(declare-fun b!5732565 () Bool)

(declare-fun res!2420608 () Bool)

(assert (=> b!5732565 (=> res!2420608 e!3524390)))

(assert (=> b!5732565 (= res!2420608 (not (matchZipper!1877 lt!2282157 (_1!36139 lt!2282150))))))

(declare-fun b!5732566 () Bool)

(declare-fun e!3524403 () Unit!156488)

(declare-fun Unit!156490 () Unit!156488)

(assert (=> b!5732566 (= e!3524403 Unit!156490)))

(declare-fun lt!2282166 () (InoxSet Context!10246))

(declare-fun lt!2282129 () Unit!156488)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!764 ((InoxSet Context!10246) (InoxSet Context!10246) List!63516) Unit!156488)

(assert (=> b!5732566 (= lt!2282129 (lemmaZipperConcatMatchesSameAsBothZippers!764 lt!2282166 lt!2282153 (t!376844 s!2326)))))

(declare-fun res!2420597 () Bool)

(assert (=> b!5732566 (= res!2420597 (matchZipper!1877 lt!2282166 (t!376844 s!2326)))))

(declare-fun e!3524414 () Bool)

(assert (=> b!5732566 (=> res!2420597 e!3524414)))

(assert (=> b!5732566 (= (matchZipper!1877 ((_ map or) lt!2282166 lt!2282153) (t!376844 s!2326)) e!3524414)))

(declare-fun b!5732567 () Bool)

(declare-fun res!2420623 () Bool)

(assert (=> b!5732567 (=> res!2420623 e!3524388)))

(declare-fun generalisedConcat!1354 (List!63517) Regex!15739)

(assert (=> b!5732567 (= res!2420623 (not (= r!7292 (generalisedConcat!1354 (exprs!5623 (h!69842 zl!343))))))))

(declare-fun b!5732568 () Bool)

(declare-fun e!3524410 () Bool)

(declare-fun e!3524393 () Bool)

(assert (=> b!5732568 (= e!3524410 e!3524393)))

(declare-fun res!2420615 () Bool)

(assert (=> b!5732568 (=> res!2420615 e!3524393)))

(declare-fun lt!2282118 () (InoxSet Context!10246))

(declare-fun lt!2282133 () Bool)

(assert (=> b!5732568 (= res!2420615 (not (= lt!2282133 (matchZipper!1877 lt!2282118 (t!376844 s!2326)))))))

(declare-fun lt!2282144 () (InoxSet Context!10246))

(assert (=> b!5732568 (= lt!2282133 (matchZipper!1877 lt!2282144 s!2326))))

(assert (=> b!5732569 (= e!3524390 e!3524406)))

(declare-fun res!2420599 () Bool)

(assert (=> b!5732569 (=> res!2420599 e!3524406)))

(assert (=> b!5732569 (= res!2420599 (not (matchR!7924 lt!2282110 (_1!36139 lt!2282146))))))

(declare-fun lt!2282126 () Option!15748)

(assert (=> b!5732569 (= lt!2282146 (get!21864 lt!2282126))))

(assert (=> b!5732569 (= (Exists!2839 lambda!310375) (Exists!2839 lambda!310376))))

(declare-fun lt!2282106 () Unit!156488)

(assert (=> b!5732569 (= lt!2282106 (lemmaExistCutMatchRandMatchRSpecEquivalent!1468 lt!2282110 (regTwo!31990 r!7292) s!2326))))

(assert (=> b!5732569 (= (isDefined!12451 lt!2282126) (Exists!2839 lambda!310375))))

(assert (=> b!5732569 (= lt!2282126 (findConcatSeparation!2162 lt!2282110 (regTwo!31990 r!7292) Nil!63392 s!2326 s!2326))))

(declare-fun lt!2282121 () Unit!156488)

(assert (=> b!5732569 (= lt!2282121 (lemmaFindConcatSeparationEquivalentToExists!1926 lt!2282110 (regTwo!31990 r!7292) s!2326))))

(declare-fun lt!2282156 () Regex!15739)

(assert (=> b!5732569 (matchRSpec!2842 lt!2282156 s!2326)))

(declare-fun lt!2282161 () Unit!156488)

(assert (=> b!5732569 (= lt!2282161 (mainMatchTheorem!2842 lt!2282156 s!2326))))

(assert (=> b!5732569 (matchR!7924 lt!2282156 s!2326)))

(assert (=> b!5732569 (= lt!2282156 (Concat!24584 lt!2282110 (regTwo!31990 r!7292)))))

(assert (=> b!5732569 (= lt!2282110 (Concat!24584 (reg!16068 (regOne!31990 r!7292)) lt!2282113))))

(declare-fun lt!2282167 () Unit!156488)

(declare-fun lemmaConcatAssociative!92 (Regex!15739 Regex!15739 Regex!15739 List!63516) Unit!156488)

(assert (=> b!5732569 (= lt!2282167 (lemmaConcatAssociative!92 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (regTwo!31990 r!7292) s!2326))))

(declare-fun e!3524400 () Bool)

(assert (=> b!5732569 e!3524400))

(declare-fun res!2420616 () Bool)

(assert (=> b!5732569 (=> (not res!2420616) (not e!3524400))))

(declare-fun lt!2282149 () Regex!15739)

(assert (=> b!5732569 (= res!2420616 (matchR!7924 lt!2282149 lt!2282125))))

(declare-fun lt!2282138 () Regex!15739)

(declare-fun lt!2282108 () Unit!156488)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!276 (Regex!15739 Regex!15739 List!63516 List!63516) Unit!156488)

(assert (=> b!5732569 (= lt!2282108 (lemmaTwoRegexMatchThenConcatMatchesConcatString!276 (reg!16068 (regOne!31990 r!7292)) lt!2282138 (_1!36139 lt!2282150) (_2!36139 lt!2282150)))))

(assert (=> b!5732569 (matchR!7924 lt!2282138 (_2!36139 lt!2282150))))

(declare-fun lt!2282164 () List!63518)

(declare-fun lt!2282151 () Unit!156488)

(declare-fun theoremZipperRegexEquiv!659 ((InoxSet Context!10246) List!63518 Regex!15739 List!63516) Unit!156488)

(assert (=> b!5732569 (= lt!2282151 (theoremZipperRegexEquiv!659 lt!2282159 lt!2282164 lt!2282138 (_2!36139 lt!2282150)))))

(assert (=> b!5732569 (matchR!7924 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282150))))

(declare-fun lt!2282117 () Unit!156488)

(declare-fun lt!2282136 () List!63518)

(assert (=> b!5732569 (= lt!2282117 (theoremZipperRegexEquiv!659 lt!2282157 lt!2282136 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282150)))))

(declare-fun lt!2282148 () List!63517)

(declare-fun lt!2282116 () List!63517)

(declare-fun ++!13951 (List!63517 List!63517) List!63517)

(assert (=> b!5732569 (matchZipper!1877 (store ((as const (Array Context!10246 Bool)) false) (Context!10247 (++!13951 lt!2282148 lt!2282116)) true) lt!2282125)))

(declare-fun lambda!310374 () Int)

(declare-fun lt!2282131 () Unit!156488)

(declare-fun lemmaConcatPreservesForall!308 (List!63517 List!63517 Int) Unit!156488)

(assert (=> b!5732569 (= lt!2282131 (lemmaConcatPreservesForall!308 lt!2282148 lt!2282116 lambda!310374))))

(declare-fun lt!2282119 () Context!10246)

(declare-fun lt!2282163 () Unit!156488)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!138 (Context!10246 Context!10246 List!63516 List!63516) Unit!156488)

(assert (=> b!5732569 (= lt!2282163 (lemmaConcatenateContextMatchesConcatOfStrings!138 lt!2282119 lt!2282143 (_1!36139 lt!2282150) (_2!36139 lt!2282150)))))

(declare-fun b!5732570 () Bool)

(declare-fun res!2420618 () Bool)

(declare-fun e!3524411 () Bool)

(assert (=> b!5732570 (=> (not res!2420618) (not e!3524411))))

(declare-fun z!1189 () (InoxSet Context!10246))

(declare-fun toList!9523 ((InoxSet Context!10246)) List!63518)

(assert (=> b!5732570 (= res!2420618 (= (toList!9523 z!1189) zl!343))))

(declare-fun b!5732571 () Bool)

(declare-fun e!3524407 () Bool)

(assert (=> b!5732571 (= e!3524411 e!3524407)))

(declare-fun res!2420602 () Bool)

(assert (=> b!5732571 (=> (not res!2420602) (not e!3524407))))

(declare-fun lt!2282115 () Regex!15739)

(assert (=> b!5732571 (= res!2420602 (= r!7292 lt!2282115))))

(declare-fun unfocusZipper!1481 (List!63518) Regex!15739)

(assert (=> b!5732571 (= lt!2282115 (unfocusZipper!1481 zl!343))))

(declare-fun b!5732572 () Bool)

(declare-fun e!3524389 () Bool)

(declare-fun e!3524402 () Bool)

(assert (=> b!5732572 (= e!3524389 e!3524402)))

(declare-fun res!2420621 () Bool)

(assert (=> b!5732572 (=> res!2420621 e!3524402)))

(assert (=> b!5732572 (= res!2420621 (not (= (unfocusZipper!1481 lt!2282136) (reg!16068 (regOne!31990 r!7292)))))))

(assert (=> b!5732572 (= lt!2282136 (Cons!63394 lt!2282119 Nil!63394))))

(declare-fun lambda!310372 () Int)

(declare-fun flatMap!1352 ((InoxSet Context!10246) Int) (InoxSet Context!10246))

(declare-fun derivationStepZipperUp!1007 (Context!10246 C!31748) (InoxSet Context!10246))

(assert (=> b!5732572 (= (flatMap!1352 lt!2282159 lambda!310372) (derivationStepZipperUp!1007 lt!2282143 (h!69840 s!2326)))))

(declare-fun lt!2282139 () Unit!156488)

(declare-fun lemmaFlatMapOnSingletonSet!884 ((InoxSet Context!10246) Context!10246 Int) Unit!156488)

(assert (=> b!5732572 (= lt!2282139 (lemmaFlatMapOnSingletonSet!884 lt!2282159 lt!2282143 lambda!310372))))

(assert (=> b!5732572 (= (flatMap!1352 lt!2282157 lambda!310372) (derivationStepZipperUp!1007 lt!2282119 (h!69840 s!2326)))))

(declare-fun lt!2282135 () Unit!156488)

(assert (=> b!5732572 (= lt!2282135 (lemmaFlatMapOnSingletonSet!884 lt!2282157 lt!2282119 lambda!310372))))

(declare-fun lt!2282158 () (InoxSet Context!10246))

(assert (=> b!5732572 (= lt!2282158 (derivationStepZipperUp!1007 lt!2282143 (h!69840 s!2326)))))

(declare-fun lt!2282134 () (InoxSet Context!10246))

(assert (=> b!5732572 (= lt!2282134 (derivationStepZipperUp!1007 lt!2282119 (h!69840 s!2326)))))

(assert (=> b!5732572 (= lt!2282159 (store ((as const (Array Context!10246 Bool)) false) lt!2282143 true))))

(assert (=> b!5732572 (= lt!2282157 (store ((as const (Array Context!10246 Bool)) false) lt!2282119 true))))

(assert (=> b!5732572 (= lt!2282119 (Context!10247 lt!2282148))))

(assert (=> b!5732572 (= lt!2282148 (Cons!63393 (reg!16068 (regOne!31990 r!7292)) Nil!63393))))

(declare-fun b!5732573 () Bool)

(declare-fun lt!2282160 () Bool)

(assert (=> b!5732573 (= e!3524400 lt!2282160)))

(declare-fun b!5732574 () Bool)

(declare-fun e!3524413 () Bool)

(declare-fun nullable!5771 (Regex!15739) Bool)

(assert (=> b!5732574 (= e!3524413 (nullable!5771 (regOne!31990 (regOne!31990 r!7292))))))

(declare-fun b!5732575 () Bool)

(assert (=> b!5732575 (= e!3524407 (not e!3524388))))

(declare-fun res!2420610 () Bool)

(assert (=> b!5732575 (=> res!2420610 e!3524388)))

(assert (=> b!5732575 (= res!2420610 (not ((_ is Cons!63394) zl!343)))))

(assert (=> b!5732575 (= lt!2282155 (matchRSpec!2842 r!7292 s!2326))))

(assert (=> b!5732575 (= lt!2282155 (matchR!7924 r!7292 s!2326))))

(declare-fun lt!2282140 () Unit!156488)

(assert (=> b!5732575 (= lt!2282140 (mainMatchTheorem!2842 r!7292 s!2326))))

(declare-fun b!5732576 () Bool)

(declare-fun res!2420604 () Bool)

(declare-fun e!3524409 () Bool)

(assert (=> b!5732576 (=> res!2420604 e!3524409)))

(declare-fun lt!2282132 () Bool)

(assert (=> b!5732576 (= res!2420604 (or (not lt!2282132) (not lt!2282133)))))

(declare-fun b!5732577 () Bool)

(declare-fun e!3524395 () Bool)

(declare-fun e!3524394 () Bool)

(assert (=> b!5732577 (= e!3524395 e!3524394)))

(declare-fun res!2420611 () Bool)

(assert (=> b!5732577 (=> res!2420611 e!3524394)))

(assert (=> b!5732577 (= res!2420611 lt!2282155)))

(assert (=> b!5732577 (= lt!2282160 (matchRSpec!2842 lt!2282149 s!2326))))

(assert (=> b!5732577 (= lt!2282160 (matchR!7924 lt!2282149 s!2326))))

(declare-fun lt!2282137 () Unit!156488)

(assert (=> b!5732577 (= lt!2282137 (mainMatchTheorem!2842 lt!2282149 s!2326))))

(declare-fun setIsEmpty!38467 () Bool)

(declare-fun setRes!38467 () Bool)

(assert (=> setIsEmpty!38467 setRes!38467))

(declare-fun b!5732578 () Bool)

(declare-fun e!3524392 () Bool)

(assert (=> b!5732578 (= e!3524392 e!3524389)))

(declare-fun res!2420594 () Bool)

(assert (=> b!5732578 (=> res!2420594 e!3524389)))

(declare-fun lt!2282114 () Context!10246)

(assert (=> b!5732578 (= res!2420594 (not (= (unfocusZipper!1481 (Cons!63394 lt!2282114 Nil!63394)) lt!2282149)))))

(assert (=> b!5732578 (= lt!2282149 (Concat!24584 (reg!16068 (regOne!31990 r!7292)) lt!2282138))))

(declare-fun b!5732579 () Bool)

(declare-fun e!3524391 () Bool)

(assert (=> b!5732579 (= e!3524399 e!3524391)))

(declare-fun res!2420598 () Bool)

(assert (=> b!5732579 (=> res!2420598 e!3524391)))

(declare-fun lt!2282127 () (InoxSet Context!10246))

(assert (=> b!5732579 (= res!2420598 (not (= lt!2282166 lt!2282127)))))

(declare-fun derivationStepZipperDown!1081 (Regex!15739 Context!10246 C!31748) (InoxSet Context!10246))

(assert (=> b!5732579 (= lt!2282127 (derivationStepZipperDown!1081 (reg!16068 (regOne!31990 r!7292)) lt!2282143 (h!69840 s!2326)))))

(assert (=> b!5732579 (= lt!2282143 (Context!10247 lt!2282116))))

(assert (=> b!5732579 (= lt!2282116 (Cons!63393 lt!2282113 (t!376845 (exprs!5623 (h!69842 zl!343)))))))

(assert (=> b!5732579 (= lt!2282113 (Star!15739 (reg!16068 (regOne!31990 r!7292))))))

(declare-fun b!5732580 () Bool)

(declare-fun e!3524401 () Bool)

(declare-fun tp!1586462 () Bool)

(declare-fun tp!1586456 () Bool)

(assert (=> b!5732580 (= e!3524401 (and tp!1586462 tp!1586456))))

(declare-fun b!5732581 () Bool)

(declare-fun res!2420613 () Bool)

(assert (=> b!5732581 (=> res!2420613 e!3524388)))

(assert (=> b!5732581 (= res!2420613 (or ((_ is EmptyExpr!15739) r!7292) ((_ is EmptyLang!15739) r!7292) ((_ is ElementMatch!15739) r!7292) ((_ is Union!15739) r!7292) (not ((_ is Concat!24584) r!7292))))))

(declare-fun b!5732582 () Bool)

(declare-fun e!3524412 () Bool)

(declare-fun tp!1586453 () Bool)

(assert (=> b!5732582 (= e!3524412 tp!1586453)))

(declare-fun setElem!38467 () Context!10246)

(declare-fun tp!1586457 () Bool)

(declare-fun setNonEmpty!38467 () Bool)

(declare-fun inv!82594 (Context!10246) Bool)

(assert (=> setNonEmpty!38467 (= setRes!38467 (and tp!1586457 (inv!82594 setElem!38467) e!3524412))))

(declare-fun setRest!38467 () (InoxSet Context!10246))

(assert (=> setNonEmpty!38467 (= z!1189 ((_ map or) (store ((as const (Array Context!10246 Bool)) false) setElem!38467 true) setRest!38467))))

(declare-fun b!5732583 () Bool)

(declare-fun e!3524405 () Bool)

(declare-fun tp!1586458 () Bool)

(assert (=> b!5732583 (= e!3524405 tp!1586458)))

(declare-fun b!5732584 () Bool)

(declare-fun res!2420624 () Bool)

(assert (=> b!5732584 (=> res!2420624 e!3524393)))

(assert (=> b!5732584 (= res!2420624 (not (= lt!2282115 r!7292)))))

(declare-fun b!5732585 () Bool)

(declare-fun res!2420606 () Bool)

(assert (=> b!5732585 (=> res!2420606 e!3524388)))

(declare-fun generalisedUnion!1602 (List!63517) Regex!15739)

(declare-fun unfocusZipperList!1167 (List!63518) List!63517)

(assert (=> b!5732585 (= res!2420606 (not (= r!7292 (generalisedUnion!1602 (unfocusZipperList!1167 zl!343)))))))

(declare-fun b!5732586 () Bool)

(assert (=> b!5732586 (= e!3524391 e!3524410)))

(declare-fun res!2420612 () Bool)

(assert (=> b!5732586 (=> res!2420612 e!3524410)))

(assert (=> b!5732586 (= res!2420612 (not (= lt!2282118 lt!2282127)))))

(assert (=> b!5732586 (= (flatMap!1352 lt!2282144 lambda!310372) (derivationStepZipperUp!1007 lt!2282114 (h!69840 s!2326)))))

(declare-fun lt!2282130 () Unit!156488)

(assert (=> b!5732586 (= lt!2282130 (lemmaFlatMapOnSingletonSet!884 lt!2282144 lt!2282114 lambda!310372))))

(declare-fun lt!2282162 () (InoxSet Context!10246))

(assert (=> b!5732586 (= lt!2282162 (derivationStepZipperUp!1007 lt!2282114 (h!69840 s!2326)))))

(declare-fun derivationStepZipper!1822 ((InoxSet Context!10246) C!31748) (InoxSet Context!10246))

(assert (=> b!5732586 (= lt!2282118 (derivationStepZipper!1822 lt!2282144 (h!69840 s!2326)))))

(assert (=> b!5732586 (= lt!2282144 (store ((as const (Array Context!10246 Bool)) false) lt!2282114 true))))

(assert (=> b!5732586 (= lt!2282114 (Context!10247 (Cons!63393 (reg!16068 (regOne!31990 r!7292)) lt!2282116)))))

(declare-fun b!5732587 () Bool)

(assert (=> b!5732587 (= e!3524402 e!3524395)))

(declare-fun res!2420592 () Bool)

(assert (=> b!5732587 (=> res!2420592 e!3524395)))

(assert (=> b!5732587 (= res!2420592 (not (= (unfocusZipper!1481 lt!2282164) lt!2282138)))))

(assert (=> b!5732587 (= lt!2282164 (Cons!63394 lt!2282143 Nil!63394))))

(declare-fun b!5732588 () Bool)

(assert (=> b!5732588 (= e!3524394 e!3524409)))

(declare-fun res!2420605 () Bool)

(assert (=> b!5732588 (=> res!2420605 e!3524409)))

(assert (=> b!5732588 (= res!2420605 e!3524408)))

(declare-fun res!2420595 () Bool)

(assert (=> b!5732588 (=> (not res!2420595) (not e!3524408))))

(assert (=> b!5732588 (= res!2420595 (not lt!2282132))))

(assert (=> b!5732588 (= lt!2282132 (matchZipper!1877 lt!2282166 (t!376844 s!2326)))))

(declare-fun b!5732589 () Bool)

(declare-fun tp!1586461 () Bool)

(assert (=> b!5732589 (= e!3524401 tp!1586461)))

(declare-fun b!5732590 () Bool)

(declare-fun Unit!156491 () Unit!156488)

(assert (=> b!5732590 (= e!3524403 Unit!156491)))

(declare-fun tp!1586454 () Bool)

(declare-fun e!3524396 () Bool)

(declare-fun b!5732591 () Bool)

(assert (=> b!5732591 (= e!3524396 (and (inv!82594 (h!69842 zl!343)) e!3524405 tp!1586454))))

(declare-fun b!5732592 () Bool)

(declare-fun tp!1586455 () Bool)

(declare-fun tp!1586460 () Bool)

(assert (=> b!5732592 (= e!3524401 (and tp!1586455 tp!1586460))))

(declare-fun b!5732593 () Bool)

(declare-fun res!2420627 () Bool)

(assert (=> b!5732593 (=> res!2420627 e!3524394)))

(declare-fun lt!2282120 () Bool)

(assert (=> b!5732593 (= res!2420627 (not lt!2282120))))

(declare-fun res!2420619 () Bool)

(assert (=> start!589940 (=> (not res!2420619) (not e!3524411))))

(declare-fun validRegex!7475 (Regex!15739) Bool)

(assert (=> start!589940 (= res!2420619 (validRegex!7475 r!7292))))

(assert (=> start!589940 e!3524411))

(assert (=> start!589940 e!3524401))

(declare-fun condSetEmpty!38467 () Bool)

(assert (=> start!589940 (= condSetEmpty!38467 (= z!1189 ((as const (Array Context!10246 Bool)) false)))))

(assert (=> start!589940 setRes!38467))

(assert (=> start!589940 e!3524396))

(assert (=> start!589940 e!3524404))

(declare-fun b!5732594 () Bool)

(declare-fun res!2420601 () Bool)

(assert (=> b!5732594 (=> res!2420601 e!3524394)))

(assert (=> b!5732594 (= res!2420601 (not (matchZipper!1877 z!1189 s!2326)))))

(declare-fun b!5732595 () Bool)

(assert (=> b!5732595 (= e!3524414 (matchZipper!1877 lt!2282153 (t!376844 s!2326)))))

(declare-fun b!5732596 () Bool)

(declare-fun res!2420625 () Bool)

(assert (=> b!5732596 (=> res!2420625 e!3524390)))

(assert (=> b!5732596 (= res!2420625 (not (matchZipper!1877 lt!2282159 (_2!36139 lt!2282150))))))

(declare-fun b!5732597 () Bool)

(declare-fun res!2420596 () Bool)

(assert (=> b!5732597 (=> res!2420596 e!3524388)))

(assert (=> b!5732597 (= res!2420596 (not ((_ is Cons!63393) (exprs!5623 (h!69842 zl!343)))))))

(assert (=> b!5732598 (= e!3524397 e!3524399)))

(declare-fun res!2420593 () Bool)

(assert (=> b!5732598 (=> res!2420593 e!3524399)))

(assert (=> b!5732598 (= res!2420593 (or (and ((_ is ElementMatch!15739) (regOne!31990 r!7292)) (= (c!1011505 (regOne!31990 r!7292)) (h!69840 s!2326))) ((_ is Union!15739) (regOne!31990 r!7292))))))

(declare-fun lt!2282112 () Unit!156488)

(assert (=> b!5732598 (= lt!2282112 e!3524403)))

(declare-fun c!1011504 () Bool)

(assert (=> b!5732598 (= c!1011504 lt!2282120)))

(assert (=> b!5732598 (= lt!2282120 (nullable!5771 (h!69841 (exprs!5623 (h!69842 zl!343)))))))

(assert (=> b!5732598 (= (flatMap!1352 z!1189 lambda!310372) (derivationStepZipperUp!1007 (h!69842 zl!343) (h!69840 s!2326)))))

(declare-fun lt!2282165 () Unit!156488)

(assert (=> b!5732598 (= lt!2282165 (lemmaFlatMapOnSingletonSet!884 z!1189 (h!69842 zl!343) lambda!310372))))

(declare-fun lt!2282145 () Context!10246)

(assert (=> b!5732598 (= lt!2282153 (derivationStepZipperUp!1007 lt!2282145 (h!69840 s!2326)))))

(assert (=> b!5732598 (= lt!2282166 (derivationStepZipperDown!1081 (h!69841 (exprs!5623 (h!69842 zl!343))) lt!2282145 (h!69840 s!2326)))))

(assert (=> b!5732598 (= lt!2282145 (Context!10247 (t!376845 (exprs!5623 (h!69842 zl!343)))))))

(declare-fun lt!2282105 () (InoxSet Context!10246))

(assert (=> b!5732598 (= lt!2282105 (derivationStepZipperUp!1007 (Context!10247 (Cons!63393 (h!69841 (exprs!5623 (h!69842 zl!343))) (t!376845 (exprs!5623 (h!69842 zl!343))))) (h!69840 s!2326)))))

(assert (=> b!5732599 (= e!3524409 e!3524398)))

(declare-fun res!2420609 () Bool)

(assert (=> b!5732599 (=> res!2420609 e!3524398)))

(declare-fun appendTo!118 ((InoxSet Context!10246) Context!10246) (InoxSet Context!10246))

(assert (=> b!5732599 (= res!2420609 (not (= (appendTo!118 lt!2282157 lt!2282143) lt!2282144)))))

(declare-fun lambda!310373 () Int)

(declare-fun map!14529 ((InoxSet Context!10246) Int) (InoxSet Context!10246))

(assert (=> b!5732599 (= (map!14529 lt!2282157 lambda!310373) (store ((as const (Array Context!10246 Bool)) false) (Context!10247 (++!13951 lt!2282148 lt!2282116)) true))))

(declare-fun lt!2282142 () Unit!156488)

(assert (=> b!5732599 (= lt!2282142 (lemmaConcatPreservesForall!308 lt!2282148 lt!2282116 lambda!310374))))

(declare-fun lt!2282111 () Unit!156488)

(declare-fun lemmaMapOnSingletonSet!134 ((InoxSet Context!10246) Context!10246 Int) Unit!156488)

(assert (=> b!5732599 (= lt!2282111 (lemmaMapOnSingletonSet!134 lt!2282157 lt!2282119 lambda!310373))))

(declare-fun b!5732600 () Bool)

(assert (=> b!5732600 (= e!3524393 e!3524392)))

(declare-fun res!2420622 () Bool)

(assert (=> b!5732600 (=> res!2420622 e!3524392)))

(assert (=> b!5732600 (= res!2420622 (not (= r!7292 lt!2282138)))))

(assert (=> b!5732600 (= lt!2282138 (Concat!24584 lt!2282113 (regTwo!31990 r!7292)))))

(declare-fun b!5732601 () Bool)

(declare-fun res!2420620 () Bool)

(assert (=> b!5732601 (=> res!2420620 e!3524397)))

(declare-fun isEmpty!35270 (List!63517) Bool)

(assert (=> b!5732601 (= res!2420620 (isEmpty!35270 (t!376845 (exprs!5623 (h!69842 zl!343)))))))

(declare-fun b!5732602 () Bool)

(assert (=> b!5732602 (= e!3524401 tp_is_empty!40731)))

(declare-fun b!5732603 () Bool)

(declare-fun res!2420614 () Bool)

(assert (=> b!5732603 (=> res!2420614 e!3524399)))

(assert (=> b!5732603 (= res!2420614 e!3524413)))

(declare-fun res!2420617 () Bool)

(assert (=> b!5732603 (=> (not res!2420617) (not e!3524413))))

(assert (=> b!5732603 (= res!2420617 ((_ is Concat!24584) (regOne!31990 r!7292)))))

(assert (= (and start!589940 res!2420619) b!5732570))

(assert (= (and b!5732570 res!2420618) b!5732571))

(assert (= (and b!5732571 res!2420602) b!5732575))

(assert (= (and b!5732575 (not res!2420610)) b!5732558))

(assert (= (and b!5732558 (not res!2420626)) b!5732567))

(assert (= (and b!5732567 (not res!2420623)) b!5732597))

(assert (= (and b!5732597 (not res!2420596)) b!5732585))

(assert (= (and b!5732585 (not res!2420606)) b!5732581))

(assert (= (and b!5732581 (not res!2420613)) b!5732559))

(assert (= (and b!5732559 (not res!2420600)) b!5732601))

(assert (= (and b!5732601 (not res!2420620)) b!5732598))

(assert (= (and b!5732598 c!1011504) b!5732566))

(assert (= (and b!5732598 (not c!1011504)) b!5732590))

(assert (= (and b!5732566 (not res!2420597)) b!5732595))

(assert (= (and b!5732598 (not res!2420593)) b!5732603))

(assert (= (and b!5732603 res!2420617) b!5732574))

(assert (= (and b!5732603 (not res!2420614)) b!5732563))

(assert (= (and b!5732563 (not res!2420603)) b!5732579))

(assert (= (and b!5732579 (not res!2420598)) b!5732586))

(assert (= (and b!5732586 (not res!2420612)) b!5732568))

(assert (= (and b!5732568 (not res!2420615)) b!5732584))

(assert (= (and b!5732584 (not res!2420624)) b!5732600))

(assert (= (and b!5732600 (not res!2420622)) b!5732578))

(assert (= (and b!5732578 (not res!2420594)) b!5732572))

(assert (= (and b!5732572 (not res!2420621)) b!5732587))

(assert (= (and b!5732587 (not res!2420592)) b!5732577))

(assert (= (and b!5732577 (not res!2420611)) b!5732594))

(assert (= (and b!5732594 (not res!2420601)) b!5732593))

(assert (= (and b!5732593 (not res!2420627)) b!5732588))

(assert (= (and b!5732588 res!2420595) b!5732561))

(assert (= (and b!5732588 (not res!2420605)) b!5732576))

(assert (= (and b!5732576 (not res!2420604)) b!5732599))

(assert (= (and b!5732599 (not res!2420609)) b!5732564))

(assert (= (and b!5732564 (not res!2420607)) b!5732565))

(assert (= (and b!5732565 (not res!2420608)) b!5732596))

(assert (= (and b!5732596 (not res!2420625)) b!5732569))

(assert (= (and b!5732569 res!2420616) b!5732573))

(assert (= (and b!5732569 (not res!2420599)) b!5732562))

(assert (= (and start!589940 ((_ is ElementMatch!15739) r!7292)) b!5732602))

(assert (= (and start!589940 ((_ is Concat!24584) r!7292)) b!5732580))

(assert (= (and start!589940 ((_ is Star!15739) r!7292)) b!5732589))

(assert (= (and start!589940 ((_ is Union!15739) r!7292)) b!5732592))

(assert (= (and start!589940 condSetEmpty!38467) setIsEmpty!38467))

(assert (= (and start!589940 (not condSetEmpty!38467)) setNonEmpty!38467))

(assert (= setNonEmpty!38467 b!5732582))

(assert (= b!5732591 b!5732583))

(assert (= (and start!589940 ((_ is Cons!63394) zl!343)) b!5732591))

(assert (= (and start!589940 ((_ is Cons!63392) s!2326)) b!5732560))

(declare-fun m!6684394 () Bool)

(assert (=> b!5732591 m!6684394))

(declare-fun m!6684396 () Bool)

(assert (=> b!5732566 m!6684396))

(declare-fun m!6684398 () Bool)

(assert (=> b!5732566 m!6684398))

(declare-fun m!6684400 () Bool)

(assert (=> b!5732566 m!6684400))

(declare-fun m!6684402 () Bool)

(assert (=> b!5732561 m!6684402))

(declare-fun m!6684404 () Bool)

(assert (=> b!5732578 m!6684404))

(assert (=> b!5732588 m!6684398))

(declare-fun m!6684406 () Bool)

(assert (=> b!5732579 m!6684406))

(declare-fun m!6684408 () Bool)

(assert (=> b!5732559 m!6684408))

(declare-fun m!6684410 () Bool)

(assert (=> b!5732559 m!6684410))

(declare-fun m!6684412 () Bool)

(assert (=> b!5732559 m!6684412))

(assert (=> b!5732559 m!6684408))

(declare-fun m!6684414 () Bool)

(assert (=> b!5732559 m!6684414))

(declare-fun m!6684416 () Bool)

(assert (=> b!5732559 m!6684416))

(assert (=> b!5732559 m!6684410))

(declare-fun m!6684418 () Bool)

(assert (=> b!5732559 m!6684418))

(declare-fun m!6684420 () Bool)

(assert (=> b!5732575 m!6684420))

(declare-fun m!6684422 () Bool)

(assert (=> b!5732575 m!6684422))

(declare-fun m!6684424 () Bool)

(assert (=> b!5732575 m!6684424))

(declare-fun m!6684426 () Bool)

(assert (=> b!5732562 m!6684426))

(declare-fun m!6684428 () Bool)

(assert (=> b!5732562 m!6684428))

(declare-fun m!6684430 () Bool)

(assert (=> b!5732562 m!6684430))

(declare-fun m!6684432 () Bool)

(assert (=> b!5732562 m!6684432))

(declare-fun m!6684434 () Bool)

(assert (=> b!5732562 m!6684434))

(declare-fun m!6684436 () Bool)

(assert (=> b!5732562 m!6684436))

(declare-fun m!6684438 () Bool)

(assert (=> b!5732562 m!6684438))

(declare-fun m!6684440 () Bool)

(assert (=> b!5732562 m!6684440))

(assert (=> b!5732562 m!6684438))

(declare-fun m!6684442 () Bool)

(assert (=> b!5732562 m!6684442))

(declare-fun m!6684444 () Bool)

(assert (=> b!5732562 m!6684444))

(assert (=> b!5732562 m!6684430))

(assert (=> b!5732562 m!6684442))

(declare-fun m!6684446 () Bool)

(assert (=> b!5732562 m!6684446))

(declare-fun m!6684448 () Bool)

(assert (=> b!5732562 m!6684448))

(declare-fun m!6684450 () Bool)

(assert (=> b!5732562 m!6684450))

(declare-fun m!6684452 () Bool)

(assert (=> b!5732562 m!6684452))

(declare-fun m!6684454 () Bool)

(assert (=> b!5732562 m!6684454))

(assert (=> b!5732562 m!6684430))

(declare-fun m!6684456 () Bool)

(assert (=> b!5732562 m!6684456))

(declare-fun m!6684458 () Bool)

(assert (=> b!5732562 m!6684458))

(declare-fun m!6684460 () Bool)

(assert (=> b!5732567 m!6684460))

(declare-fun m!6684462 () Bool)

(assert (=> b!5732568 m!6684462))

(declare-fun m!6684464 () Bool)

(assert (=> b!5732568 m!6684464))

(declare-fun m!6684466 () Bool)

(assert (=> b!5732599 m!6684466))

(declare-fun m!6684468 () Bool)

(assert (=> b!5732599 m!6684468))

(declare-fun m!6684470 () Bool)

(assert (=> b!5732599 m!6684470))

(declare-fun m!6684472 () Bool)

(assert (=> b!5732599 m!6684472))

(declare-fun m!6684474 () Bool)

(assert (=> b!5732599 m!6684474))

(declare-fun m!6684476 () Bool)

(assert (=> b!5732599 m!6684476))

(assert (=> b!5732569 m!6684476))

(declare-fun m!6684478 () Bool)

(assert (=> b!5732569 m!6684478))

(declare-fun m!6684480 () Bool)

(assert (=> b!5732569 m!6684480))

(declare-fun m!6684482 () Bool)

(assert (=> b!5732569 m!6684482))

(assert (=> b!5732569 m!6684478))

(declare-fun m!6684484 () Bool)

(assert (=> b!5732569 m!6684484))

(assert (=> b!5732569 m!6684476))

(declare-fun m!6684486 () Bool)

(assert (=> b!5732569 m!6684486))

(declare-fun m!6684488 () Bool)

(assert (=> b!5732569 m!6684488))

(declare-fun m!6684490 () Bool)

(assert (=> b!5732569 m!6684490))

(declare-fun m!6684492 () Bool)

(assert (=> b!5732569 m!6684492))

(assert (=> b!5732569 m!6684474))

(declare-fun m!6684494 () Bool)

(assert (=> b!5732569 m!6684494))

(declare-fun m!6684496 () Bool)

(assert (=> b!5732569 m!6684496))

(declare-fun m!6684498 () Bool)

(assert (=> b!5732569 m!6684498))

(declare-fun m!6684500 () Bool)

(assert (=> b!5732569 m!6684500))

(declare-fun m!6684502 () Bool)

(assert (=> b!5732569 m!6684502))

(declare-fun m!6684504 () Bool)

(assert (=> b!5732569 m!6684504))

(declare-fun m!6684506 () Bool)

(assert (=> b!5732569 m!6684506))

(declare-fun m!6684508 () Bool)

(assert (=> b!5732569 m!6684508))

(declare-fun m!6684510 () Bool)

(assert (=> b!5732569 m!6684510))

(declare-fun m!6684512 () Bool)

(assert (=> b!5732569 m!6684512))

(declare-fun m!6684514 () Bool)

(assert (=> b!5732569 m!6684514))

(declare-fun m!6684516 () Bool)

(assert (=> b!5732569 m!6684516))

(assert (=> b!5732569 m!6684470))

(declare-fun m!6684518 () Bool)

(assert (=> b!5732577 m!6684518))

(declare-fun m!6684520 () Bool)

(assert (=> b!5732577 m!6684520))

(declare-fun m!6684522 () Bool)

(assert (=> b!5732577 m!6684522))

(declare-fun m!6684524 () Bool)

(assert (=> b!5732574 m!6684524))

(declare-fun m!6684526 () Bool)

(assert (=> start!589940 m!6684526))

(declare-fun m!6684528 () Bool)

(assert (=> b!5732596 m!6684528))

(declare-fun m!6684530 () Bool)

(assert (=> b!5732585 m!6684530))

(assert (=> b!5732585 m!6684530))

(declare-fun m!6684532 () Bool)

(assert (=> b!5732585 m!6684532))

(declare-fun m!6684534 () Bool)

(assert (=> b!5732601 m!6684534))

(assert (=> b!5732595 m!6684402))

(declare-fun m!6684536 () Bool)

(assert (=> b!5732586 m!6684536))

(declare-fun m!6684538 () Bool)

(assert (=> b!5732586 m!6684538))

(declare-fun m!6684540 () Bool)

(assert (=> b!5732586 m!6684540))

(declare-fun m!6684542 () Bool)

(assert (=> b!5732586 m!6684542))

(declare-fun m!6684544 () Bool)

(assert (=> b!5732586 m!6684544))

(declare-fun m!6684546 () Bool)

(assert (=> b!5732571 m!6684546))

(declare-fun m!6684548 () Bool)

(assert (=> b!5732570 m!6684548))

(declare-fun m!6684550 () Bool)

(assert (=> b!5732598 m!6684550))

(declare-fun m!6684552 () Bool)

(assert (=> b!5732598 m!6684552))

(declare-fun m!6684554 () Bool)

(assert (=> b!5732598 m!6684554))

(declare-fun m!6684556 () Bool)

(assert (=> b!5732598 m!6684556))

(declare-fun m!6684558 () Bool)

(assert (=> b!5732598 m!6684558))

(declare-fun m!6684560 () Bool)

(assert (=> b!5732598 m!6684560))

(declare-fun m!6684562 () Bool)

(assert (=> b!5732598 m!6684562))

(declare-fun m!6684564 () Bool)

(assert (=> b!5732572 m!6684564))

(declare-fun m!6684566 () Bool)

(assert (=> b!5732572 m!6684566))

(declare-fun m!6684568 () Bool)

(assert (=> b!5732572 m!6684568))

(declare-fun m!6684570 () Bool)

(assert (=> b!5732572 m!6684570))

(declare-fun m!6684572 () Bool)

(assert (=> b!5732572 m!6684572))

(declare-fun m!6684574 () Bool)

(assert (=> b!5732572 m!6684574))

(declare-fun m!6684576 () Bool)

(assert (=> b!5732572 m!6684576))

(declare-fun m!6684578 () Bool)

(assert (=> b!5732572 m!6684578))

(declare-fun m!6684580 () Bool)

(assert (=> b!5732572 m!6684580))

(declare-fun m!6684582 () Bool)

(assert (=> b!5732564 m!6684582))

(declare-fun m!6684584 () Bool)

(assert (=> b!5732564 m!6684584))

(declare-fun m!6684586 () Bool)

(assert (=> b!5732564 m!6684586))

(declare-fun m!6684588 () Bool)

(assert (=> b!5732564 m!6684588))

(declare-fun m!6684590 () Bool)

(assert (=> b!5732564 m!6684590))

(declare-fun m!6684592 () Bool)

(assert (=> setNonEmpty!38467 m!6684592))

(declare-fun m!6684594 () Bool)

(assert (=> b!5732587 m!6684594))

(declare-fun m!6684596 () Bool)

(assert (=> b!5732558 m!6684596))

(declare-fun m!6684598 () Bool)

(assert (=> b!5732565 m!6684598))

(declare-fun m!6684600 () Bool)

(assert (=> b!5732594 m!6684600))

(check-sat (not b!5732566) (not b!5732570) (not b!5732596) (not b!5732560) (not b!5732582) (not b!5732588) (not b!5732568) tp_is_empty!40731 (not start!589940) (not b!5732562) (not b!5732591) (not b!5732585) (not b!5732589) (not b!5732571) (not b!5732586) (not b!5732574) (not b!5732580) (not setNonEmpty!38467) (not b!5732569) (not b!5732565) (not b!5732587) (not b!5732599) (not b!5732592) (not b!5732595) (not b!5732567) (not b!5732558) (not b!5732601) (not b!5732559) (not b!5732578) (not b!5732598) (not b!5732564) (not b!5732572) (not b!5732594) (not b!5732575) (not b!5732583) (not b!5732561) (not b!5732577) (not b!5732579))
(check-sat)
(get-model)

(declare-fun bs!1339823 () Bool)

(declare-fun b!5732756 () Bool)

(assert (= bs!1339823 (and b!5732756 b!5732569)))

(declare-fun lambda!310390 () Int)

(assert (=> bs!1339823 (not (= lambda!310390 lambda!310376))))

(declare-fun bs!1339824 () Bool)

(assert (= bs!1339824 (and b!5732756 b!5732562)))

(assert (=> bs!1339824 (not (= lambda!310390 lambda!310377))))

(assert (=> bs!1339824 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (reg!16068 r!7292) (reg!16068 (regOne!31990 r!7292))) (= r!7292 lt!2282113)) (= lambda!310390 lambda!310379))))

(declare-fun bs!1339825 () Bool)

(assert (= bs!1339825 (and b!5732756 b!5732559)))

(assert (=> bs!1339825 (not (= lambda!310390 lambda!310371))))

(assert (=> bs!1339824 (not (= lambda!310390 lambda!310378))))

(assert (=> bs!1339825 (not (= lambda!310390 lambda!310370))))

(assert (=> bs!1339823 (not (= lambda!310390 lambda!310375))))

(assert (=> b!5732756 true))

(assert (=> b!5732756 true))

(declare-fun bs!1339826 () Bool)

(declare-fun b!5732755 () Bool)

(assert (= bs!1339826 (and b!5732755 b!5732569)))

(declare-fun lambda!310391 () Int)

(assert (=> bs!1339826 (= (= (regOne!31990 r!7292) lt!2282110) (= lambda!310391 lambda!310376))))

(declare-fun bs!1339827 () Bool)

(assert (= bs!1339827 (and b!5732755 b!5732562)))

(assert (=> bs!1339827 (not (= lambda!310391 lambda!310377))))

(assert (=> bs!1339827 (not (= lambda!310391 lambda!310379))))

(declare-fun bs!1339828 () Bool)

(assert (= bs!1339828 (and b!5732755 b!5732559)))

(assert (=> bs!1339828 (= lambda!310391 lambda!310371)))

(declare-fun bs!1339829 () Bool)

(assert (= bs!1339829 (and b!5732755 b!5732756)))

(assert (=> bs!1339829 (not (= lambda!310391 lambda!310390))))

(assert (=> bs!1339827 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (regOne!31990 r!7292) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310391 lambda!310378))))

(assert (=> bs!1339828 (not (= lambda!310391 lambda!310370))))

(assert (=> bs!1339826 (not (= lambda!310391 lambda!310375))))

(assert (=> b!5732755 true))

(assert (=> b!5732755 true))

(declare-fun c!1011543 () Bool)

(declare-fun call!438252 () Bool)

(declare-fun bm!438247 () Bool)

(assert (=> bm!438247 (= call!438252 (Exists!2839 (ite c!1011543 lambda!310390 lambda!310391)))))

(declare-fun b!5732749 () Bool)

(declare-fun e!3524494 () Bool)

(declare-fun call!438253 () Bool)

(assert (=> b!5732749 (= e!3524494 call!438253)))

(declare-fun bm!438248 () Bool)

(declare-fun isEmpty!35273 (List!63516) Bool)

(assert (=> bm!438248 (= call!438253 (isEmpty!35273 s!2326))))

(declare-fun b!5732750 () Bool)

(declare-fun e!3524489 () Bool)

(assert (=> b!5732750 (= e!3524494 e!3524489)))

(declare-fun res!2420697 () Bool)

(assert (=> b!5732750 (= res!2420697 (not ((_ is EmptyLang!15739) r!7292)))))

(assert (=> b!5732750 (=> (not res!2420697) (not e!3524489))))

(declare-fun b!5732751 () Bool)

(declare-fun e!3524488 () Bool)

(assert (=> b!5732751 (= e!3524488 (= s!2326 (Cons!63392 (c!1011505 r!7292) Nil!63392)))))

(declare-fun b!5732752 () Bool)

(declare-fun c!1011541 () Bool)

(assert (=> b!5732752 (= c!1011541 ((_ is Union!15739) r!7292))))

(declare-fun e!3524490 () Bool)

(assert (=> b!5732752 (= e!3524488 e!3524490)))

(declare-fun b!5732753 () Bool)

(declare-fun res!2420695 () Bool)

(declare-fun e!3524493 () Bool)

(assert (=> b!5732753 (=> res!2420695 e!3524493)))

(assert (=> b!5732753 (= res!2420695 call!438253)))

(declare-fun e!3524491 () Bool)

(assert (=> b!5732753 (= e!3524491 e!3524493)))

(declare-fun b!5732754 () Bool)

(assert (=> b!5732754 (= e!3524490 e!3524491)))

(assert (=> b!5732754 (= c!1011543 ((_ is Star!15739) r!7292))))

(assert (=> b!5732755 (= e!3524491 call!438252)))

(assert (=> b!5732756 (= e!3524493 call!438252)))

(declare-fun b!5732757 () Bool)

(declare-fun e!3524492 () Bool)

(assert (=> b!5732757 (= e!3524490 e!3524492)))

(declare-fun res!2420696 () Bool)

(assert (=> b!5732757 (= res!2420696 (matchRSpec!2842 (regOne!31991 r!7292) s!2326))))

(assert (=> b!5732757 (=> res!2420696 e!3524492)))

(declare-fun b!5732758 () Bool)

(assert (=> b!5732758 (= e!3524492 (matchRSpec!2842 (regTwo!31991 r!7292) s!2326))))

(declare-fun b!5732759 () Bool)

(declare-fun c!1011542 () Bool)

(assert (=> b!5732759 (= c!1011542 ((_ is ElementMatch!15739) r!7292))))

(assert (=> b!5732759 (= e!3524489 e!3524488)))

(declare-fun d!1807567 () Bool)

(declare-fun c!1011544 () Bool)

(assert (=> d!1807567 (= c!1011544 ((_ is EmptyExpr!15739) r!7292))))

(assert (=> d!1807567 (= (matchRSpec!2842 r!7292 s!2326) e!3524494)))

(assert (= (and d!1807567 c!1011544) b!5732749))

(assert (= (and d!1807567 (not c!1011544)) b!5732750))

(assert (= (and b!5732750 res!2420697) b!5732759))

(assert (= (and b!5732759 c!1011542) b!5732751))

(assert (= (and b!5732759 (not c!1011542)) b!5732752))

(assert (= (and b!5732752 c!1011541) b!5732757))

(assert (= (and b!5732752 (not c!1011541)) b!5732754))

(assert (= (and b!5732757 (not res!2420696)) b!5732758))

(assert (= (and b!5732754 c!1011543) b!5732753))

(assert (= (and b!5732754 (not c!1011543)) b!5732755))

(assert (= (and b!5732753 (not res!2420695)) b!5732756))

(assert (= (or b!5732756 b!5732755) bm!438247))

(assert (= (or b!5732749 b!5732753) bm!438248))

(declare-fun m!6684660 () Bool)

(assert (=> bm!438247 m!6684660))

(declare-fun m!6684662 () Bool)

(assert (=> bm!438248 m!6684662))

(declare-fun m!6684664 () Bool)

(assert (=> b!5732757 m!6684664))

(declare-fun m!6684666 () Bool)

(assert (=> b!5732758 m!6684666))

(assert (=> b!5732575 d!1807567))

(declare-fun b!5732846 () Bool)

(declare-fun res!2420752 () Bool)

(declare-fun e!3524544 () Bool)

(assert (=> b!5732846 (=> res!2420752 e!3524544)))

(declare-fun tail!11232 (List!63516) List!63516)

(assert (=> b!5732846 (= res!2420752 (not (isEmpty!35273 (tail!11232 s!2326))))))

(declare-fun b!5732847 () Bool)

(declare-fun e!3524545 () Bool)

(declare-fun e!3524546 () Bool)

(assert (=> b!5732847 (= e!3524545 e!3524546)))

(declare-fun res!2420754 () Bool)

(assert (=> b!5732847 (=> (not res!2420754) (not e!3524546))))

(declare-fun lt!2282197 () Bool)

(assert (=> b!5732847 (= res!2420754 (not lt!2282197))))

(declare-fun b!5732848 () Bool)

(declare-fun res!2420748 () Bool)

(declare-fun e!3524543 () Bool)

(assert (=> b!5732848 (=> (not res!2420748) (not e!3524543))))

(declare-fun call!438258 () Bool)

(assert (=> b!5732848 (= res!2420748 (not call!438258))))

(declare-fun b!5732849 () Bool)

(declare-fun e!3524547 () Bool)

(assert (=> b!5732849 (= e!3524547 (nullable!5771 r!7292))))

(declare-fun b!5732850 () Bool)

(declare-fun res!2420749 () Bool)

(assert (=> b!5732850 (=> (not res!2420749) (not e!3524543))))

(assert (=> b!5732850 (= res!2420749 (isEmpty!35273 (tail!11232 s!2326)))))

(declare-fun b!5732851 () Bool)

(declare-fun e!3524542 () Bool)

(assert (=> b!5732851 (= e!3524542 (not lt!2282197))))

(declare-fun b!5732852 () Bool)

(declare-fun res!2420753 () Bool)

(assert (=> b!5732852 (=> res!2420753 e!3524545)))

(assert (=> b!5732852 (= res!2420753 e!3524543)))

(declare-fun res!2420750 () Bool)

(assert (=> b!5732852 (=> (not res!2420750) (not e!3524543))))

(assert (=> b!5732852 (= res!2420750 lt!2282197)))

(declare-fun b!5732853 () Bool)

(declare-fun head!12137 (List!63516) C!31748)

(assert (=> b!5732853 (= e!3524543 (= (head!12137 s!2326) (c!1011505 r!7292)))))

(declare-fun bm!438253 () Bool)

(assert (=> bm!438253 (= call!438258 (isEmpty!35273 s!2326))))

(declare-fun b!5732855 () Bool)

(assert (=> b!5732855 (= e!3524544 (not (= (head!12137 s!2326) (c!1011505 r!7292))))))

(declare-fun b!5732856 () Bool)

(declare-fun e!3524541 () Bool)

(assert (=> b!5732856 (= e!3524541 e!3524542)))

(declare-fun c!1011563 () Bool)

(assert (=> b!5732856 (= c!1011563 ((_ is EmptyLang!15739) r!7292))))

(declare-fun b!5732857 () Bool)

(assert (=> b!5732857 (= e!3524541 (= lt!2282197 call!438258))))

(declare-fun b!5732858 () Bool)

(declare-fun derivativeStep!4532 (Regex!15739 C!31748) Regex!15739)

(assert (=> b!5732858 (= e!3524547 (matchR!7924 (derivativeStep!4532 r!7292 (head!12137 s!2326)) (tail!11232 s!2326)))))

(declare-fun b!5732859 () Bool)

(assert (=> b!5732859 (= e!3524546 e!3524544)))

(declare-fun res!2420751 () Bool)

(assert (=> b!5732859 (=> res!2420751 e!3524544)))

(assert (=> b!5732859 (= res!2420751 call!438258)))

(declare-fun d!1807579 () Bool)

(assert (=> d!1807579 e!3524541))

(declare-fun c!1011564 () Bool)

(assert (=> d!1807579 (= c!1011564 ((_ is EmptyExpr!15739) r!7292))))

(assert (=> d!1807579 (= lt!2282197 e!3524547)))

(declare-fun c!1011565 () Bool)

(assert (=> d!1807579 (= c!1011565 (isEmpty!35273 s!2326))))

(assert (=> d!1807579 (validRegex!7475 r!7292)))

(assert (=> d!1807579 (= (matchR!7924 r!7292 s!2326) lt!2282197)))

(declare-fun b!5732854 () Bool)

(declare-fun res!2420755 () Bool)

(assert (=> b!5732854 (=> res!2420755 e!3524545)))

(assert (=> b!5732854 (= res!2420755 (not ((_ is ElementMatch!15739) r!7292)))))

(assert (=> b!5732854 (= e!3524542 e!3524545)))

(assert (= (and d!1807579 c!1011565) b!5732849))

(assert (= (and d!1807579 (not c!1011565)) b!5732858))

(assert (= (and d!1807579 c!1011564) b!5732857))

(assert (= (and d!1807579 (not c!1011564)) b!5732856))

(assert (= (and b!5732856 c!1011563) b!5732851))

(assert (= (and b!5732856 (not c!1011563)) b!5732854))

(assert (= (and b!5732854 (not res!2420755)) b!5732852))

(assert (= (and b!5732852 res!2420750) b!5732848))

(assert (= (and b!5732848 res!2420748) b!5732850))

(assert (= (and b!5732850 res!2420749) b!5732853))

(assert (= (and b!5732852 (not res!2420753)) b!5732847))

(assert (= (and b!5732847 res!2420754) b!5732859))

(assert (= (and b!5732859 (not res!2420751)) b!5732846))

(assert (= (and b!5732846 (not res!2420752)) b!5732855))

(assert (= (or b!5732857 b!5732848 b!5732859) bm!438253))

(assert (=> bm!438253 m!6684662))

(declare-fun m!6684734 () Bool)

(assert (=> b!5732850 m!6684734))

(assert (=> b!5732850 m!6684734))

(declare-fun m!6684736 () Bool)

(assert (=> b!5732850 m!6684736))

(declare-fun m!6684738 () Bool)

(assert (=> b!5732853 m!6684738))

(assert (=> d!1807579 m!6684662))

(assert (=> d!1807579 m!6684526))

(assert (=> b!5732858 m!6684738))

(assert (=> b!5732858 m!6684738))

(declare-fun m!6684740 () Bool)

(assert (=> b!5732858 m!6684740))

(assert (=> b!5732858 m!6684734))

(assert (=> b!5732858 m!6684740))

(assert (=> b!5732858 m!6684734))

(declare-fun m!6684742 () Bool)

(assert (=> b!5732858 m!6684742))

(assert (=> b!5732855 m!6684738))

(declare-fun m!6684744 () Bool)

(assert (=> b!5732849 m!6684744))

(assert (=> b!5732846 m!6684734))

(assert (=> b!5732846 m!6684734))

(assert (=> b!5732846 m!6684736))

(assert (=> b!5732575 d!1807579))

(declare-fun d!1807597 () Bool)

(assert (=> d!1807597 (= (matchR!7924 r!7292 s!2326) (matchRSpec!2842 r!7292 s!2326))))

(declare-fun lt!2282205 () Unit!156488)

(declare-fun choose!43400 (Regex!15739 List!63516) Unit!156488)

(assert (=> d!1807597 (= lt!2282205 (choose!43400 r!7292 s!2326))))

(assert (=> d!1807597 (validRegex!7475 r!7292)))

(assert (=> d!1807597 (= (mainMatchTheorem!2842 r!7292 s!2326) lt!2282205)))

(declare-fun bs!1339833 () Bool)

(assert (= bs!1339833 d!1807597))

(assert (=> bs!1339833 m!6684422))

(assert (=> bs!1339833 m!6684420))

(declare-fun m!6684746 () Bool)

(assert (=> bs!1339833 m!6684746))

(assert (=> bs!1339833 m!6684526))

(assert (=> b!5732575 d!1807597))

(declare-fun d!1807599 () Bool)

(declare-fun c!1011574 () Bool)

(assert (=> d!1807599 (= c!1011574 (isEmpty!35273 s!2326))))

(declare-fun e!3524566 () Bool)

(assert (=> d!1807599 (= (matchZipper!1877 z!1189 s!2326) e!3524566)))

(declare-fun b!5732896 () Bool)

(declare-fun nullableZipper!1679 ((InoxSet Context!10246)) Bool)

(assert (=> b!5732896 (= e!3524566 (nullableZipper!1679 z!1189))))

(declare-fun b!5732897 () Bool)

(assert (=> b!5732897 (= e!3524566 (matchZipper!1877 (derivationStepZipper!1822 z!1189 (head!12137 s!2326)) (tail!11232 s!2326)))))

(assert (= (and d!1807599 c!1011574) b!5732896))

(assert (= (and d!1807599 (not c!1011574)) b!5732897))

(assert (=> d!1807599 m!6684662))

(declare-fun m!6684778 () Bool)

(assert (=> b!5732896 m!6684778))

(assert (=> b!5732897 m!6684738))

(assert (=> b!5732897 m!6684738))

(declare-fun m!6684780 () Bool)

(assert (=> b!5732897 m!6684780))

(assert (=> b!5732897 m!6684734))

(assert (=> b!5732897 m!6684780))

(assert (=> b!5732897 m!6684734))

(declare-fun m!6684782 () Bool)

(assert (=> b!5732897 m!6684782))

(assert (=> b!5732594 d!1807599))

(declare-fun d!1807607 () Bool)

(declare-fun nullableFct!1824 (Regex!15739) Bool)

(assert (=> d!1807607 (= (nullable!5771 (regOne!31990 (regOne!31990 r!7292))) (nullableFct!1824 (regOne!31990 (regOne!31990 r!7292))))))

(declare-fun bs!1339840 () Bool)

(assert (= bs!1339840 d!1807607))

(declare-fun m!6684784 () Bool)

(assert (=> bs!1339840 m!6684784))

(assert (=> b!5732574 d!1807607))

(declare-fun bs!1339842 () Bool)

(declare-fun b!5732909 () Bool)

(assert (= bs!1339842 (and b!5732909 b!5732569)))

(declare-fun lambda!310395 () Int)

(assert (=> bs!1339842 (not (= lambda!310395 lambda!310376))))

(declare-fun bs!1339843 () Bool)

(assert (= bs!1339843 (and b!5732909 b!5732562)))

(assert (=> bs!1339843 (not (= lambda!310395 lambda!310377))))

(assert (=> bs!1339843 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (reg!16068 lt!2282149) (reg!16068 (regOne!31990 r!7292))) (= lt!2282149 lt!2282113)) (= lambda!310395 lambda!310379))))

(declare-fun bs!1339844 () Bool)

(assert (= bs!1339844 (and b!5732909 b!5732559)))

(assert (=> bs!1339844 (not (= lambda!310395 lambda!310371))))

(assert (=> bs!1339843 (not (= lambda!310395 lambda!310378))))

(assert (=> bs!1339844 (not (= lambda!310395 lambda!310370))))

(assert (=> bs!1339842 (not (= lambda!310395 lambda!310375))))

(declare-fun bs!1339845 () Bool)

(assert (= bs!1339845 (and b!5732909 b!5732755)))

(assert (=> bs!1339845 (not (= lambda!310395 lambda!310391))))

(declare-fun bs!1339846 () Bool)

(assert (= bs!1339846 (and b!5732909 b!5732756)))

(assert (=> bs!1339846 (= (and (= (reg!16068 lt!2282149) (reg!16068 r!7292)) (= lt!2282149 r!7292)) (= lambda!310395 lambda!310390))))

(assert (=> b!5732909 true))

(assert (=> b!5732909 true))

(declare-fun bs!1339847 () Bool)

(declare-fun b!5732908 () Bool)

(assert (= bs!1339847 (and b!5732908 b!5732569)))

(declare-fun lambda!310396 () Int)

(assert (=> bs!1339847 (= (and (= (regOne!31990 lt!2282149) lt!2282110) (= (regTwo!31990 lt!2282149) (regTwo!31990 r!7292))) (= lambda!310396 lambda!310376))))

(declare-fun bs!1339848 () Bool)

(assert (= bs!1339848 (and b!5732908 b!5732562)))

(assert (=> bs!1339848 (not (= lambda!310396 lambda!310377))))

(declare-fun bs!1339849 () Bool)

(assert (= bs!1339849 (and b!5732908 b!5732909)))

(assert (=> bs!1339849 (not (= lambda!310396 lambda!310395))))

(assert (=> bs!1339848 (not (= lambda!310396 lambda!310379))))

(declare-fun bs!1339850 () Bool)

(assert (= bs!1339850 (and b!5732908 b!5732559)))

(assert (=> bs!1339850 (= (and (= (regOne!31990 lt!2282149) (regOne!31990 r!7292)) (= (regTwo!31990 lt!2282149) (regTwo!31990 r!7292))) (= lambda!310396 lambda!310371))))

(assert (=> bs!1339848 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (regOne!31990 lt!2282149) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 lt!2282149) lt!2282113)) (= lambda!310396 lambda!310378))))

(assert (=> bs!1339850 (not (= lambda!310396 lambda!310370))))

(assert (=> bs!1339847 (not (= lambda!310396 lambda!310375))))

(declare-fun bs!1339851 () Bool)

(assert (= bs!1339851 (and b!5732908 b!5732755)))

(assert (=> bs!1339851 (= (and (= (regOne!31990 lt!2282149) (regOne!31990 r!7292)) (= (regTwo!31990 lt!2282149) (regTwo!31990 r!7292))) (= lambda!310396 lambda!310391))))

(declare-fun bs!1339852 () Bool)

(assert (= bs!1339852 (and b!5732908 b!5732756)))

(assert (=> bs!1339852 (not (= lambda!310396 lambda!310390))))

(assert (=> b!5732908 true))

(assert (=> b!5732908 true))

(declare-fun call!438261 () Bool)

(declare-fun c!1011577 () Bool)

(declare-fun bm!438256 () Bool)

(assert (=> bm!438256 (= call!438261 (Exists!2839 (ite c!1011577 lambda!310395 lambda!310396)))))

(declare-fun b!5732902 () Bool)

(declare-fun e!3524575 () Bool)

(declare-fun call!438262 () Bool)

(assert (=> b!5732902 (= e!3524575 call!438262)))

(declare-fun bm!438257 () Bool)

(assert (=> bm!438257 (= call!438262 (isEmpty!35273 s!2326))))

(declare-fun b!5732903 () Bool)

(declare-fun e!3524570 () Bool)

(assert (=> b!5732903 (= e!3524575 e!3524570)))

(declare-fun res!2420782 () Bool)

(assert (=> b!5732903 (= res!2420782 (not ((_ is EmptyLang!15739) lt!2282149)))))

(assert (=> b!5732903 (=> (not res!2420782) (not e!3524570))))

(declare-fun b!5732904 () Bool)

(declare-fun e!3524569 () Bool)

(assert (=> b!5732904 (= e!3524569 (= s!2326 (Cons!63392 (c!1011505 lt!2282149) Nil!63392)))))

(declare-fun b!5732905 () Bool)

(declare-fun c!1011575 () Bool)

(assert (=> b!5732905 (= c!1011575 ((_ is Union!15739) lt!2282149))))

(declare-fun e!3524571 () Bool)

(assert (=> b!5732905 (= e!3524569 e!3524571)))

(declare-fun b!5732906 () Bool)

(declare-fun res!2420780 () Bool)

(declare-fun e!3524574 () Bool)

(assert (=> b!5732906 (=> res!2420780 e!3524574)))

(assert (=> b!5732906 (= res!2420780 call!438262)))

(declare-fun e!3524572 () Bool)

(assert (=> b!5732906 (= e!3524572 e!3524574)))

(declare-fun b!5732907 () Bool)

(assert (=> b!5732907 (= e!3524571 e!3524572)))

(assert (=> b!5732907 (= c!1011577 ((_ is Star!15739) lt!2282149))))

(assert (=> b!5732908 (= e!3524572 call!438261)))

(assert (=> b!5732909 (= e!3524574 call!438261)))

(declare-fun b!5732910 () Bool)

(declare-fun e!3524573 () Bool)

(assert (=> b!5732910 (= e!3524571 e!3524573)))

(declare-fun res!2420781 () Bool)

(assert (=> b!5732910 (= res!2420781 (matchRSpec!2842 (regOne!31991 lt!2282149) s!2326))))

(assert (=> b!5732910 (=> res!2420781 e!3524573)))

(declare-fun b!5732911 () Bool)

(assert (=> b!5732911 (= e!3524573 (matchRSpec!2842 (regTwo!31991 lt!2282149) s!2326))))

(declare-fun b!5732912 () Bool)

(declare-fun c!1011576 () Bool)

(assert (=> b!5732912 (= c!1011576 ((_ is ElementMatch!15739) lt!2282149))))

(assert (=> b!5732912 (= e!3524570 e!3524569)))

(declare-fun d!1807609 () Bool)

(declare-fun c!1011578 () Bool)

(assert (=> d!1807609 (= c!1011578 ((_ is EmptyExpr!15739) lt!2282149))))

(assert (=> d!1807609 (= (matchRSpec!2842 lt!2282149 s!2326) e!3524575)))

(assert (= (and d!1807609 c!1011578) b!5732902))

(assert (= (and d!1807609 (not c!1011578)) b!5732903))

(assert (= (and b!5732903 res!2420782) b!5732912))

(assert (= (and b!5732912 c!1011576) b!5732904))

(assert (= (and b!5732912 (not c!1011576)) b!5732905))

(assert (= (and b!5732905 c!1011575) b!5732910))

(assert (= (and b!5732905 (not c!1011575)) b!5732907))

(assert (= (and b!5732910 (not res!2420781)) b!5732911))

(assert (= (and b!5732907 c!1011577) b!5732906))

(assert (= (and b!5732907 (not c!1011577)) b!5732908))

(assert (= (and b!5732906 (not res!2420780)) b!5732909))

(assert (= (or b!5732909 b!5732908) bm!438256))

(assert (= (or b!5732902 b!5732906) bm!438257))

(declare-fun m!6684798 () Bool)

(assert (=> bm!438256 m!6684798))

(assert (=> bm!438257 m!6684662))

(declare-fun m!6684800 () Bool)

(assert (=> b!5732910 m!6684800))

(declare-fun m!6684802 () Bool)

(assert (=> b!5732911 m!6684802))

(assert (=> b!5732577 d!1807609))

(declare-fun b!5732915 () Bool)

(declare-fun res!2420789 () Bool)

(declare-fun e!3524580 () Bool)

(assert (=> b!5732915 (=> res!2420789 e!3524580)))

(assert (=> b!5732915 (= res!2420789 (not (isEmpty!35273 (tail!11232 s!2326))))))

(declare-fun b!5732916 () Bool)

(declare-fun e!3524581 () Bool)

(declare-fun e!3524582 () Bool)

(assert (=> b!5732916 (= e!3524581 e!3524582)))

(declare-fun res!2420791 () Bool)

(assert (=> b!5732916 (=> (not res!2420791) (not e!3524582))))

(declare-fun lt!2282217 () Bool)

(assert (=> b!5732916 (= res!2420791 (not lt!2282217))))

(declare-fun b!5732917 () Bool)

(declare-fun res!2420785 () Bool)

(declare-fun e!3524579 () Bool)

(assert (=> b!5732917 (=> (not res!2420785) (not e!3524579))))

(declare-fun call!438263 () Bool)

(assert (=> b!5732917 (= res!2420785 (not call!438263))))

(declare-fun b!5732918 () Bool)

(declare-fun e!3524583 () Bool)

(assert (=> b!5732918 (= e!3524583 (nullable!5771 lt!2282149))))

(declare-fun b!5732919 () Bool)

(declare-fun res!2420786 () Bool)

(assert (=> b!5732919 (=> (not res!2420786) (not e!3524579))))

(assert (=> b!5732919 (= res!2420786 (isEmpty!35273 (tail!11232 s!2326)))))

(declare-fun b!5732920 () Bool)

(declare-fun e!3524578 () Bool)

(assert (=> b!5732920 (= e!3524578 (not lt!2282217))))

(declare-fun b!5732921 () Bool)

(declare-fun res!2420790 () Bool)

(assert (=> b!5732921 (=> res!2420790 e!3524581)))

(assert (=> b!5732921 (= res!2420790 e!3524579)))

(declare-fun res!2420787 () Bool)

(assert (=> b!5732921 (=> (not res!2420787) (not e!3524579))))

(assert (=> b!5732921 (= res!2420787 lt!2282217)))

(declare-fun b!5732922 () Bool)

(assert (=> b!5732922 (= e!3524579 (= (head!12137 s!2326) (c!1011505 lt!2282149)))))

(declare-fun bm!438258 () Bool)

(assert (=> bm!438258 (= call!438263 (isEmpty!35273 s!2326))))

(declare-fun b!5732924 () Bool)

(assert (=> b!5732924 (= e!3524580 (not (= (head!12137 s!2326) (c!1011505 lt!2282149))))))

(declare-fun b!5732925 () Bool)

(declare-fun e!3524577 () Bool)

(assert (=> b!5732925 (= e!3524577 e!3524578)))

(declare-fun c!1011579 () Bool)

(assert (=> b!5732925 (= c!1011579 ((_ is EmptyLang!15739) lt!2282149))))

(declare-fun b!5732926 () Bool)

(assert (=> b!5732926 (= e!3524577 (= lt!2282217 call!438263))))

(declare-fun b!5732927 () Bool)

(assert (=> b!5732927 (= e!3524583 (matchR!7924 (derivativeStep!4532 lt!2282149 (head!12137 s!2326)) (tail!11232 s!2326)))))

(declare-fun b!5732928 () Bool)

(assert (=> b!5732928 (= e!3524582 e!3524580)))

(declare-fun res!2420788 () Bool)

(assert (=> b!5732928 (=> res!2420788 e!3524580)))

(assert (=> b!5732928 (= res!2420788 call!438263)))

(declare-fun d!1807615 () Bool)

(assert (=> d!1807615 e!3524577))

(declare-fun c!1011580 () Bool)

(assert (=> d!1807615 (= c!1011580 ((_ is EmptyExpr!15739) lt!2282149))))

(assert (=> d!1807615 (= lt!2282217 e!3524583)))

(declare-fun c!1011581 () Bool)

(assert (=> d!1807615 (= c!1011581 (isEmpty!35273 s!2326))))

(assert (=> d!1807615 (validRegex!7475 lt!2282149)))

(assert (=> d!1807615 (= (matchR!7924 lt!2282149 s!2326) lt!2282217)))

(declare-fun b!5732923 () Bool)

(declare-fun res!2420792 () Bool)

(assert (=> b!5732923 (=> res!2420792 e!3524581)))

(assert (=> b!5732923 (= res!2420792 (not ((_ is ElementMatch!15739) lt!2282149)))))

(assert (=> b!5732923 (= e!3524578 e!3524581)))

(assert (= (and d!1807615 c!1011581) b!5732918))

(assert (= (and d!1807615 (not c!1011581)) b!5732927))

(assert (= (and d!1807615 c!1011580) b!5732926))

(assert (= (and d!1807615 (not c!1011580)) b!5732925))

(assert (= (and b!5732925 c!1011579) b!5732920))

(assert (= (and b!5732925 (not c!1011579)) b!5732923))

(assert (= (and b!5732923 (not res!2420792)) b!5732921))

(assert (= (and b!5732921 res!2420787) b!5732917))

(assert (= (and b!5732917 res!2420785) b!5732919))

(assert (= (and b!5732919 res!2420786) b!5732922))

(assert (= (and b!5732921 (not res!2420790)) b!5732916))

(assert (= (and b!5732916 res!2420791) b!5732928))

(assert (= (and b!5732928 (not res!2420788)) b!5732915))

(assert (= (and b!5732915 (not res!2420789)) b!5732924))

(assert (= (or b!5732926 b!5732917 b!5732928) bm!438258))

(assert (=> bm!438258 m!6684662))

(assert (=> b!5732919 m!6684734))

(assert (=> b!5732919 m!6684734))

(assert (=> b!5732919 m!6684736))

(assert (=> b!5732922 m!6684738))

(assert (=> d!1807615 m!6684662))

(declare-fun m!6684808 () Bool)

(assert (=> d!1807615 m!6684808))

(assert (=> b!5732927 m!6684738))

(assert (=> b!5732927 m!6684738))

(declare-fun m!6684812 () Bool)

(assert (=> b!5732927 m!6684812))

(assert (=> b!5732927 m!6684734))

(assert (=> b!5732927 m!6684812))

(assert (=> b!5732927 m!6684734))

(declare-fun m!6684818 () Bool)

(assert (=> b!5732927 m!6684818))

(assert (=> b!5732924 m!6684738))

(declare-fun m!6684820 () Bool)

(assert (=> b!5732918 m!6684820))

(assert (=> b!5732915 m!6684734))

(assert (=> b!5732915 m!6684734))

(assert (=> b!5732915 m!6684736))

(assert (=> b!5732577 d!1807615))

(declare-fun d!1807617 () Bool)

(assert (=> d!1807617 (= (matchR!7924 lt!2282149 s!2326) (matchRSpec!2842 lt!2282149 s!2326))))

(declare-fun lt!2282220 () Unit!156488)

(assert (=> d!1807617 (= lt!2282220 (choose!43400 lt!2282149 s!2326))))

(assert (=> d!1807617 (validRegex!7475 lt!2282149)))

(assert (=> d!1807617 (= (mainMatchTheorem!2842 lt!2282149 s!2326) lt!2282220)))

(declare-fun bs!1339855 () Bool)

(assert (= bs!1339855 d!1807617))

(assert (=> bs!1339855 m!6684520))

(assert (=> bs!1339855 m!6684518))

(declare-fun m!6684824 () Bool)

(assert (=> bs!1339855 m!6684824))

(assert (=> bs!1339855 m!6684808))

(assert (=> b!5732577 d!1807617))

(declare-fun d!1807621 () Bool)

(declare-fun c!1011582 () Bool)

(assert (=> d!1807621 (= c!1011582 (isEmpty!35273 (_2!36139 lt!2282150)))))

(declare-fun e!3524584 () Bool)

(assert (=> d!1807621 (= (matchZipper!1877 lt!2282159 (_2!36139 lt!2282150)) e!3524584)))

(declare-fun b!5732929 () Bool)

(assert (=> b!5732929 (= e!3524584 (nullableZipper!1679 lt!2282159))))

(declare-fun b!5732930 () Bool)

(assert (=> b!5732930 (= e!3524584 (matchZipper!1877 (derivationStepZipper!1822 lt!2282159 (head!12137 (_2!36139 lt!2282150))) (tail!11232 (_2!36139 lt!2282150))))))

(assert (= (and d!1807621 c!1011582) b!5732929))

(assert (= (and d!1807621 (not c!1011582)) b!5732930))

(declare-fun m!6684826 () Bool)

(assert (=> d!1807621 m!6684826))

(declare-fun m!6684828 () Bool)

(assert (=> b!5732929 m!6684828))

(declare-fun m!6684830 () Bool)

(assert (=> b!5732930 m!6684830))

(assert (=> b!5732930 m!6684830))

(declare-fun m!6684832 () Bool)

(assert (=> b!5732930 m!6684832))

(declare-fun m!6684834 () Bool)

(assert (=> b!5732930 m!6684834))

(assert (=> b!5732930 m!6684832))

(assert (=> b!5732930 m!6684834))

(declare-fun m!6684836 () Bool)

(assert (=> b!5732930 m!6684836))

(assert (=> b!5732596 d!1807621))

(declare-fun d!1807623 () Bool)

(declare-fun c!1011583 () Bool)

(assert (=> d!1807623 (= c!1011583 (isEmpty!35273 (t!376844 s!2326)))))

(declare-fun e!3524585 () Bool)

(assert (=> d!1807623 (= (matchZipper!1877 lt!2282153 (t!376844 s!2326)) e!3524585)))

(declare-fun b!5732931 () Bool)

(assert (=> b!5732931 (= e!3524585 (nullableZipper!1679 lt!2282153))))

(declare-fun b!5732932 () Bool)

(assert (=> b!5732932 (= e!3524585 (matchZipper!1877 (derivationStepZipper!1822 lt!2282153 (head!12137 (t!376844 s!2326))) (tail!11232 (t!376844 s!2326))))))

(assert (= (and d!1807623 c!1011583) b!5732931))

(assert (= (and d!1807623 (not c!1011583)) b!5732932))

(declare-fun m!6684838 () Bool)

(assert (=> d!1807623 m!6684838))

(declare-fun m!6684840 () Bool)

(assert (=> b!5732931 m!6684840))

(declare-fun m!6684842 () Bool)

(assert (=> b!5732932 m!6684842))

(assert (=> b!5732932 m!6684842))

(declare-fun m!6684844 () Bool)

(assert (=> b!5732932 m!6684844))

(declare-fun m!6684846 () Bool)

(assert (=> b!5732932 m!6684846))

(assert (=> b!5732932 m!6684844))

(assert (=> b!5732932 m!6684846))

(declare-fun m!6684848 () Bool)

(assert (=> b!5732932 m!6684848))

(assert (=> b!5732595 d!1807623))

(declare-fun b!5732959 () Bool)

(declare-fun e!3524604 () Option!15748)

(declare-fun e!3524602 () Option!15748)

(assert (=> b!5732959 (= e!3524604 e!3524602)))

(declare-fun c!1011589 () Bool)

(assert (=> b!5732959 (= c!1011589 ((_ is Nil!63392) s!2326))))

(declare-fun b!5732960 () Bool)

(assert (=> b!5732960 (= e!3524604 (Some!15747 (tuple2!65673 Nil!63392 s!2326)))))

(declare-fun b!5732961 () Bool)

(assert (=> b!5732961 (= e!3524602 None!15747)))

(declare-fun b!5732962 () Bool)

(declare-fun e!3524600 () Bool)

(declare-fun lt!2282232 () Option!15748)

(assert (=> b!5732962 (= e!3524600 (= (++!13950 (_1!36139 (get!21864 lt!2282232)) (_2!36139 (get!21864 lt!2282232))) s!2326))))

(declare-fun b!5732963 () Bool)

(declare-fun e!3524601 () Bool)

(assert (=> b!5732963 (= e!3524601 (not (isDefined!12451 lt!2282232)))))

(declare-fun b!5732964 () Bool)

(declare-fun lt!2282231 () Unit!156488)

(declare-fun lt!2282230 () Unit!156488)

(assert (=> b!5732964 (= lt!2282231 lt!2282230)))

(assert (=> b!5732964 (= (++!13950 (++!13950 Nil!63392 (Cons!63392 (h!69840 s!2326) Nil!63392)) (t!376844 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2082 (List!63516 C!31748 List!63516 List!63516) Unit!156488)

(assert (=> b!5732964 (= lt!2282230 (lemmaMoveElementToOtherListKeepsConcatEq!2082 Nil!63392 (h!69840 s!2326) (t!376844 s!2326) s!2326))))

(assert (=> b!5732964 (= e!3524602 (findConcatSeparation!2162 (regOne!31990 r!7292) (regTwo!31990 r!7292) (++!13950 Nil!63392 (Cons!63392 (h!69840 s!2326) Nil!63392)) (t!376844 s!2326) s!2326))))

(declare-fun b!5732965 () Bool)

(declare-fun res!2420813 () Bool)

(assert (=> b!5732965 (=> (not res!2420813) (not e!3524600))))

(assert (=> b!5732965 (= res!2420813 (matchR!7924 (regTwo!31990 r!7292) (_2!36139 (get!21864 lt!2282232))))))

(declare-fun b!5732966 () Bool)

(declare-fun res!2420812 () Bool)

(assert (=> b!5732966 (=> (not res!2420812) (not e!3524600))))

(assert (=> b!5732966 (= res!2420812 (matchR!7924 (regOne!31990 r!7292) (_1!36139 (get!21864 lt!2282232))))))

(declare-fun d!1807625 () Bool)

(assert (=> d!1807625 e!3524601))

(declare-fun res!2420811 () Bool)

(assert (=> d!1807625 (=> res!2420811 e!3524601)))

(assert (=> d!1807625 (= res!2420811 e!3524600)))

(declare-fun res!2420814 () Bool)

(assert (=> d!1807625 (=> (not res!2420814) (not e!3524600))))

(assert (=> d!1807625 (= res!2420814 (isDefined!12451 lt!2282232))))

(assert (=> d!1807625 (= lt!2282232 e!3524604)))

(declare-fun c!1011588 () Bool)

(declare-fun e!3524603 () Bool)

(assert (=> d!1807625 (= c!1011588 e!3524603)))

(declare-fun res!2420815 () Bool)

(assert (=> d!1807625 (=> (not res!2420815) (not e!3524603))))

(assert (=> d!1807625 (= res!2420815 (matchR!7924 (regOne!31990 r!7292) Nil!63392))))

(assert (=> d!1807625 (validRegex!7475 (regOne!31990 r!7292))))

(assert (=> d!1807625 (= (findConcatSeparation!2162 (regOne!31990 r!7292) (regTwo!31990 r!7292) Nil!63392 s!2326 s!2326) lt!2282232)))

(declare-fun b!5732967 () Bool)

(assert (=> b!5732967 (= e!3524603 (matchR!7924 (regTwo!31990 r!7292) s!2326))))

(assert (= (and d!1807625 res!2420815) b!5732967))

(assert (= (and d!1807625 c!1011588) b!5732960))

(assert (= (and d!1807625 (not c!1011588)) b!5732959))

(assert (= (and b!5732959 c!1011589) b!5732961))

(assert (= (and b!5732959 (not c!1011589)) b!5732964))

(assert (= (and d!1807625 res!2420814) b!5732966))

(assert (= (and b!5732966 res!2420812) b!5732965))

(assert (= (and b!5732965 res!2420813) b!5732962))

(assert (= (and d!1807625 (not res!2420811)) b!5732963))

(declare-fun m!6684858 () Bool)

(assert (=> b!5732963 m!6684858))

(declare-fun m!6684860 () Bool)

(assert (=> b!5732965 m!6684860))

(declare-fun m!6684862 () Bool)

(assert (=> b!5732965 m!6684862))

(assert (=> b!5732962 m!6684860))

(declare-fun m!6684864 () Bool)

(assert (=> b!5732962 m!6684864))

(declare-fun m!6684866 () Bool)

(assert (=> b!5732967 m!6684866))

(assert (=> b!5732966 m!6684860))

(declare-fun m!6684868 () Bool)

(assert (=> b!5732966 m!6684868))

(declare-fun m!6684870 () Bool)

(assert (=> b!5732964 m!6684870))

(assert (=> b!5732964 m!6684870))

(declare-fun m!6684872 () Bool)

(assert (=> b!5732964 m!6684872))

(declare-fun m!6684874 () Bool)

(assert (=> b!5732964 m!6684874))

(assert (=> b!5732964 m!6684870))

(declare-fun m!6684876 () Bool)

(assert (=> b!5732964 m!6684876))

(assert (=> d!1807625 m!6684858))

(declare-fun m!6684878 () Bool)

(assert (=> d!1807625 m!6684878))

(declare-fun m!6684880 () Bool)

(assert (=> d!1807625 m!6684880))

(assert (=> b!5732559 d!1807625))

(declare-fun d!1807631 () Bool)

(declare-fun choose!43404 (Int) Bool)

(assert (=> d!1807631 (= (Exists!2839 lambda!310371) (choose!43404 lambda!310371))))

(declare-fun bs!1339866 () Bool)

(assert (= bs!1339866 d!1807631))

(declare-fun m!6684882 () Bool)

(assert (=> bs!1339866 m!6684882))

(assert (=> b!5732559 d!1807631))

(declare-fun d!1807633 () Bool)

(assert (=> d!1807633 (= (Exists!2839 lambda!310370) (choose!43404 lambda!310370))))

(declare-fun bs!1339867 () Bool)

(assert (= bs!1339867 d!1807633))

(declare-fun m!6684884 () Bool)

(assert (=> bs!1339867 m!6684884))

(assert (=> b!5732559 d!1807633))

(declare-fun bs!1339868 () Bool)

(declare-fun d!1807635 () Bool)

(assert (= bs!1339868 (and d!1807635 b!5732569)))

(declare-fun lambda!310411 () Int)

(assert (=> bs!1339868 (not (= lambda!310411 lambda!310376))))

(declare-fun bs!1339869 () Bool)

(assert (= bs!1339869 (and d!1807635 b!5732562)))

(assert (=> bs!1339869 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (regOne!31990 r!7292) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310411 lambda!310377))))

(declare-fun bs!1339870 () Bool)

(assert (= bs!1339870 (and d!1807635 b!5732909)))

(assert (=> bs!1339870 (not (= lambda!310411 lambda!310395))))

(assert (=> bs!1339869 (not (= lambda!310411 lambda!310379))))

(declare-fun bs!1339871 () Bool)

(assert (= bs!1339871 (and d!1807635 b!5732559)))

(assert (=> bs!1339871 (not (= lambda!310411 lambda!310371))))

(assert (=> bs!1339869 (not (= lambda!310411 lambda!310378))))

(declare-fun bs!1339872 () Bool)

(assert (= bs!1339872 (and d!1807635 b!5732908)))

(assert (=> bs!1339872 (not (= lambda!310411 lambda!310396))))

(assert (=> bs!1339871 (= lambda!310411 lambda!310370)))

(assert (=> bs!1339868 (= (= (regOne!31990 r!7292) lt!2282110) (= lambda!310411 lambda!310375))))

(declare-fun bs!1339873 () Bool)

(assert (= bs!1339873 (and d!1807635 b!5732755)))

(assert (=> bs!1339873 (not (= lambda!310411 lambda!310391))))

(declare-fun bs!1339874 () Bool)

(assert (= bs!1339874 (and d!1807635 b!5732756)))

(assert (=> bs!1339874 (not (= lambda!310411 lambda!310390))))

(assert (=> d!1807635 true))

(assert (=> d!1807635 true))

(assert (=> d!1807635 true))

(assert (=> d!1807635 (= (isDefined!12451 (findConcatSeparation!2162 (regOne!31990 r!7292) (regTwo!31990 r!7292) Nil!63392 s!2326 s!2326)) (Exists!2839 lambda!310411))))

(declare-fun lt!2282238 () Unit!156488)

(declare-fun choose!43406 (Regex!15739 Regex!15739 List!63516) Unit!156488)

(assert (=> d!1807635 (= lt!2282238 (choose!43406 (regOne!31990 r!7292) (regTwo!31990 r!7292) s!2326))))

(assert (=> d!1807635 (validRegex!7475 (regOne!31990 r!7292))))

(assert (=> d!1807635 (= (lemmaFindConcatSeparationEquivalentToExists!1926 (regOne!31990 r!7292) (regTwo!31990 r!7292) s!2326) lt!2282238)))

(declare-fun bs!1339875 () Bool)

(assert (= bs!1339875 d!1807635))

(assert (=> bs!1339875 m!6684410))

(assert (=> bs!1339875 m!6684412))

(declare-fun m!6684900 () Bool)

(assert (=> bs!1339875 m!6684900))

(assert (=> bs!1339875 m!6684410))

(declare-fun m!6684902 () Bool)

(assert (=> bs!1339875 m!6684902))

(assert (=> bs!1339875 m!6684880))

(assert (=> b!5732559 d!1807635))

(declare-fun bs!1339876 () Bool)

(declare-fun d!1807639 () Bool)

(assert (= bs!1339876 (and d!1807639 b!5732569)))

(declare-fun lambda!310416 () Int)

(assert (=> bs!1339876 (not (= lambda!310416 lambda!310376))))

(declare-fun bs!1339877 () Bool)

(assert (= bs!1339877 (and d!1807639 b!5732909)))

(assert (=> bs!1339877 (not (= lambda!310416 lambda!310395))))

(declare-fun bs!1339878 () Bool)

(assert (= bs!1339878 (and d!1807639 b!5732562)))

(assert (=> bs!1339878 (not (= lambda!310416 lambda!310379))))

(declare-fun bs!1339879 () Bool)

(assert (= bs!1339879 (and d!1807639 b!5732559)))

(assert (=> bs!1339879 (not (= lambda!310416 lambda!310371))))

(assert (=> bs!1339878 (not (= lambda!310416 lambda!310378))))

(declare-fun bs!1339880 () Bool)

(assert (= bs!1339880 (and d!1807639 b!5732908)))

(assert (=> bs!1339880 (not (= lambda!310416 lambda!310396))))

(assert (=> bs!1339879 (= lambda!310416 lambda!310370)))

(assert (=> bs!1339876 (= (= (regOne!31990 r!7292) lt!2282110) (= lambda!310416 lambda!310375))))

(assert (=> bs!1339878 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (regOne!31990 r!7292) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310416 lambda!310377))))

(declare-fun bs!1339881 () Bool)

(assert (= bs!1339881 (and d!1807639 d!1807635)))

(assert (=> bs!1339881 (= lambda!310416 lambda!310411)))

(declare-fun bs!1339882 () Bool)

(assert (= bs!1339882 (and d!1807639 b!5732755)))

(assert (=> bs!1339882 (not (= lambda!310416 lambda!310391))))

(declare-fun bs!1339883 () Bool)

(assert (= bs!1339883 (and d!1807639 b!5732756)))

(assert (=> bs!1339883 (not (= lambda!310416 lambda!310390))))

(assert (=> d!1807639 true))

(assert (=> d!1807639 true))

(assert (=> d!1807639 true))

(declare-fun lambda!310417 () Int)

(assert (=> bs!1339876 (= (= (regOne!31990 r!7292) lt!2282110) (= lambda!310417 lambda!310376))))

(assert (=> bs!1339877 (not (= lambda!310417 lambda!310395))))

(assert (=> bs!1339878 (not (= lambda!310417 lambda!310379))))

(assert (=> bs!1339879 (= lambda!310417 lambda!310371)))

(assert (=> bs!1339878 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (regOne!31990 r!7292) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310417 lambda!310378))))

(assert (=> bs!1339880 (= (and (= (regOne!31990 r!7292) (regOne!31990 lt!2282149)) (= (regTwo!31990 r!7292) (regTwo!31990 lt!2282149))) (= lambda!310417 lambda!310396))))

(assert (=> bs!1339879 (not (= lambda!310417 lambda!310370))))

(declare-fun bs!1339884 () Bool)

(assert (= bs!1339884 d!1807639))

(assert (=> bs!1339884 (not (= lambda!310417 lambda!310416))))

(assert (=> bs!1339876 (not (= lambda!310417 lambda!310375))))

(assert (=> bs!1339878 (not (= lambda!310417 lambda!310377))))

(assert (=> bs!1339881 (not (= lambda!310417 lambda!310411))))

(assert (=> bs!1339882 (= lambda!310417 lambda!310391)))

(assert (=> bs!1339883 (not (= lambda!310417 lambda!310390))))

(assert (=> d!1807639 true))

(assert (=> d!1807639 true))

(assert (=> d!1807639 true))

(assert (=> d!1807639 (= (Exists!2839 lambda!310416) (Exists!2839 lambda!310417))))

(declare-fun lt!2282250 () Unit!156488)

(declare-fun choose!43407 (Regex!15739 Regex!15739 List!63516) Unit!156488)

(assert (=> d!1807639 (= lt!2282250 (choose!43407 (regOne!31990 r!7292) (regTwo!31990 r!7292) s!2326))))

(assert (=> d!1807639 (validRegex!7475 (regOne!31990 r!7292))))

(assert (=> d!1807639 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1468 (regOne!31990 r!7292) (regTwo!31990 r!7292) s!2326) lt!2282250)))

(declare-fun m!6684922 () Bool)

(assert (=> bs!1339884 m!6684922))

(declare-fun m!6684924 () Bool)

(assert (=> bs!1339884 m!6684924))

(declare-fun m!6684926 () Bool)

(assert (=> bs!1339884 m!6684926))

(assert (=> bs!1339884 m!6684880))

(assert (=> b!5732559 d!1807639))

(declare-fun d!1807645 () Bool)

(declare-fun isEmpty!35274 (Option!15748) Bool)

(assert (=> d!1807645 (= (isDefined!12451 (findConcatSeparation!2162 (regOne!31990 r!7292) (regTwo!31990 r!7292) Nil!63392 s!2326 s!2326)) (not (isEmpty!35274 (findConcatSeparation!2162 (regOne!31990 r!7292) (regTwo!31990 r!7292) Nil!63392 s!2326 s!2326))))))

(declare-fun bs!1339885 () Bool)

(assert (= bs!1339885 d!1807645))

(assert (=> bs!1339885 m!6684410))

(declare-fun m!6684928 () Bool)

(assert (=> bs!1339885 m!6684928))

(assert (=> b!5732559 d!1807645))

(declare-fun bm!438274 () Bool)

(declare-fun call!438280 () (InoxSet Context!10246))

(declare-fun call!438284 () (InoxSet Context!10246))

(assert (=> bm!438274 (= call!438280 call!438284)))

(declare-fun b!5733056 () Bool)

(declare-fun e!3524655 () (InoxSet Context!10246))

(assert (=> b!5733056 (= e!3524655 (store ((as const (Array Context!10246 Bool)) false) lt!2282143 true))))

(declare-fun c!1011616 () Bool)

(declare-fun bm!438275 () Bool)

(declare-fun call!438281 () (InoxSet Context!10246))

(declare-fun call!438283 () List!63517)

(assert (=> bm!438275 (= call!438281 (derivationStepZipperDown!1081 (ite c!1011616 (regOne!31991 (reg!16068 (regOne!31990 r!7292))) (regOne!31990 (reg!16068 (regOne!31990 r!7292)))) (ite c!1011616 lt!2282143 (Context!10247 call!438283)) (h!69840 s!2326)))))

(declare-fun b!5733057 () Bool)

(declare-fun e!3524656 () Bool)

(assert (=> b!5733057 (= e!3524656 (nullable!5771 (regOne!31990 (reg!16068 (regOne!31990 r!7292)))))))

(declare-fun b!5733058 () Bool)

(declare-fun e!3524658 () (InoxSet Context!10246))

(assert (=> b!5733058 (= e!3524655 e!3524658)))

(assert (=> b!5733058 (= c!1011616 ((_ is Union!15739) (reg!16068 (regOne!31990 r!7292))))))

(declare-fun c!1011615 () Bool)

(declare-fun bm!438276 () Bool)

(declare-fun c!1011619 () Bool)

(declare-fun $colon$colon!1745 (List!63517 Regex!15739) List!63517)

(assert (=> bm!438276 (= call!438283 ($colon$colon!1745 (exprs!5623 lt!2282143) (ite (or c!1011619 c!1011615) (regTwo!31990 (reg!16068 (regOne!31990 r!7292))) (reg!16068 (regOne!31990 r!7292)))))))

(declare-fun bm!438277 () Bool)

(declare-fun call!438282 () (InoxSet Context!10246))

(assert (=> bm!438277 (= call!438284 call!438282)))

(declare-fun b!5733059 () Bool)

(declare-fun e!3524657 () (InoxSet Context!10246))

(assert (=> b!5733059 (= e!3524657 ((_ map or) call!438281 call!438284))))

(declare-fun d!1807647 () Bool)

(declare-fun c!1011617 () Bool)

(assert (=> d!1807647 (= c!1011617 (and ((_ is ElementMatch!15739) (reg!16068 (regOne!31990 r!7292))) (= (c!1011505 (reg!16068 (regOne!31990 r!7292))) (h!69840 s!2326))))))

(assert (=> d!1807647 (= (derivationStepZipperDown!1081 (reg!16068 (regOne!31990 r!7292)) lt!2282143 (h!69840 s!2326)) e!3524655)))

(declare-fun b!5733060 () Bool)

(declare-fun e!3524653 () (InoxSet Context!10246))

(assert (=> b!5733060 (= e!3524657 e!3524653)))

(assert (=> b!5733060 (= c!1011615 ((_ is Concat!24584) (reg!16068 (regOne!31990 r!7292))))))

(declare-fun b!5733061 () Bool)

(declare-fun e!3524654 () (InoxSet Context!10246))

(assert (=> b!5733061 (= e!3524654 ((as const (Array Context!10246 Bool)) false))))

(declare-fun b!5733062 () Bool)

(assert (=> b!5733062 (= e!3524654 call!438280)))

(declare-fun bm!438278 () Bool)

(declare-fun call!438279 () List!63517)

(assert (=> bm!438278 (= call!438282 (derivationStepZipperDown!1081 (ite c!1011616 (regTwo!31991 (reg!16068 (regOne!31990 r!7292))) (ite c!1011619 (regTwo!31990 (reg!16068 (regOne!31990 r!7292))) (ite c!1011615 (regOne!31990 (reg!16068 (regOne!31990 r!7292))) (reg!16068 (reg!16068 (regOne!31990 r!7292)))))) (ite (or c!1011616 c!1011619) lt!2282143 (Context!10247 call!438279)) (h!69840 s!2326)))))

(declare-fun bm!438279 () Bool)

(assert (=> bm!438279 (= call!438279 call!438283)))

(declare-fun b!5733063 () Bool)

(assert (=> b!5733063 (= c!1011619 e!3524656)))

(declare-fun res!2420854 () Bool)

(assert (=> b!5733063 (=> (not res!2420854) (not e!3524656))))

(assert (=> b!5733063 (= res!2420854 ((_ is Concat!24584) (reg!16068 (regOne!31990 r!7292))))))

(assert (=> b!5733063 (= e!3524658 e!3524657)))

(declare-fun b!5733064 () Bool)

(assert (=> b!5733064 (= e!3524653 call!438280)))

(declare-fun b!5733065 () Bool)

(assert (=> b!5733065 (= e!3524658 ((_ map or) call!438281 call!438282))))

(declare-fun b!5733066 () Bool)

(declare-fun c!1011618 () Bool)

(assert (=> b!5733066 (= c!1011618 ((_ is Star!15739) (reg!16068 (regOne!31990 r!7292))))))

(assert (=> b!5733066 (= e!3524653 e!3524654)))

(assert (= (and d!1807647 c!1011617) b!5733056))

(assert (= (and d!1807647 (not c!1011617)) b!5733058))

(assert (= (and b!5733058 c!1011616) b!5733065))

(assert (= (and b!5733058 (not c!1011616)) b!5733063))

(assert (= (and b!5733063 res!2420854) b!5733057))

(assert (= (and b!5733063 c!1011619) b!5733059))

(assert (= (and b!5733063 (not c!1011619)) b!5733060))

(assert (= (and b!5733060 c!1011615) b!5733064))

(assert (= (and b!5733060 (not c!1011615)) b!5733066))

(assert (= (and b!5733066 c!1011618) b!5733062))

(assert (= (and b!5733066 (not c!1011618)) b!5733061))

(assert (= (or b!5733064 b!5733062) bm!438279))

(assert (= (or b!5733064 b!5733062) bm!438274))

(assert (= (or b!5733059 bm!438279) bm!438276))

(assert (= (or b!5733059 bm!438274) bm!438277))

(assert (= (or b!5733065 bm!438277) bm!438278))

(assert (= (or b!5733065 b!5733059) bm!438275))

(declare-fun m!6684958 () Bool)

(assert (=> bm!438278 m!6684958))

(declare-fun m!6684960 () Bool)

(assert (=> bm!438275 m!6684960))

(declare-fun m!6684962 () Bool)

(assert (=> bm!438276 m!6684962))

(declare-fun m!6684964 () Bool)

(assert (=> b!5733057 m!6684964))

(assert (=> b!5733056 m!6684568))

(assert (=> b!5732579 d!1807647))

(declare-fun bs!1339894 () Bool)

(declare-fun d!1807663 () Bool)

(assert (= bs!1339894 (and d!1807663 b!5732599)))

(declare-fun lambda!310422 () Int)

(assert (=> bs!1339894 (= (= (exprs!5623 lt!2282143) lt!2282116) (= lambda!310422 lambda!310373))))

(assert (=> d!1807663 true))

(assert (=> d!1807663 (= (appendTo!118 lt!2282157 lt!2282143) (map!14529 lt!2282157 lambda!310422))))

(declare-fun bs!1339895 () Bool)

(assert (= bs!1339895 d!1807663))

(declare-fun m!6684984 () Bool)

(assert (=> bs!1339895 m!6684984))

(assert (=> b!5732599 d!1807663))

(declare-fun b!5733087 () Bool)

(declare-fun e!3524667 () List!63517)

(assert (=> b!5733087 (= e!3524667 (Cons!63393 (h!69841 lt!2282148) (++!13951 (t!376845 lt!2282148) lt!2282116)))))

(declare-fun b!5733088 () Bool)

(declare-fun res!2420861 () Bool)

(declare-fun e!3524668 () Bool)

(assert (=> b!5733088 (=> (not res!2420861) (not e!3524668))))

(declare-fun lt!2282270 () List!63517)

(declare-fun size!40052 (List!63517) Int)

(assert (=> b!5733088 (= res!2420861 (= (size!40052 lt!2282270) (+ (size!40052 lt!2282148) (size!40052 lt!2282116))))))

(declare-fun d!1807671 () Bool)

(assert (=> d!1807671 e!3524668))

(declare-fun res!2420860 () Bool)

(assert (=> d!1807671 (=> (not res!2420860) (not e!3524668))))

(declare-fun content!11543 (List!63517) (InoxSet Regex!15739))

(assert (=> d!1807671 (= res!2420860 (= (content!11543 lt!2282270) ((_ map or) (content!11543 lt!2282148) (content!11543 lt!2282116))))))

(assert (=> d!1807671 (= lt!2282270 e!3524667)))

(declare-fun c!1011627 () Bool)

(assert (=> d!1807671 (= c!1011627 ((_ is Nil!63393) lt!2282148))))

(assert (=> d!1807671 (= (++!13951 lt!2282148 lt!2282116) lt!2282270)))

(declare-fun b!5733086 () Bool)

(assert (=> b!5733086 (= e!3524667 lt!2282116)))

(declare-fun b!5733089 () Bool)

(assert (=> b!5733089 (= e!3524668 (or (not (= lt!2282116 Nil!63393)) (= lt!2282270 lt!2282148)))))

(assert (= (and d!1807671 c!1011627) b!5733086))

(assert (= (and d!1807671 (not c!1011627)) b!5733087))

(assert (= (and d!1807671 res!2420860) b!5733088))

(assert (= (and b!5733088 res!2420861) b!5733089))

(declare-fun m!6685002 () Bool)

(assert (=> b!5733087 m!6685002))

(declare-fun m!6685004 () Bool)

(assert (=> b!5733088 m!6685004))

(declare-fun m!6685006 () Bool)

(assert (=> b!5733088 m!6685006))

(declare-fun m!6685008 () Bool)

(assert (=> b!5733088 m!6685008))

(declare-fun m!6685010 () Bool)

(assert (=> d!1807671 m!6685010))

(declare-fun m!6685012 () Bool)

(assert (=> d!1807671 m!6685012))

(declare-fun m!6685014 () Bool)

(assert (=> d!1807671 m!6685014))

(assert (=> b!5732599 d!1807671))

(declare-fun d!1807679 () Bool)

(declare-fun forall!14864 (List!63517 Int) Bool)

(assert (=> d!1807679 (forall!14864 (++!13951 lt!2282148 lt!2282116) lambda!310374)))

(declare-fun lt!2282273 () Unit!156488)

(declare-fun choose!43409 (List!63517 List!63517 Int) Unit!156488)

(assert (=> d!1807679 (= lt!2282273 (choose!43409 lt!2282148 lt!2282116 lambda!310374))))

(assert (=> d!1807679 (forall!14864 lt!2282148 lambda!310374)))

(assert (=> d!1807679 (= (lemmaConcatPreservesForall!308 lt!2282148 lt!2282116 lambda!310374) lt!2282273)))

(declare-fun bs!1339899 () Bool)

(assert (= bs!1339899 d!1807679))

(assert (=> bs!1339899 m!6684470))

(assert (=> bs!1339899 m!6684470))

(declare-fun m!6685016 () Bool)

(assert (=> bs!1339899 m!6685016))

(declare-fun m!6685018 () Bool)

(assert (=> bs!1339899 m!6685018))

(declare-fun m!6685020 () Bool)

(assert (=> bs!1339899 m!6685020))

(assert (=> b!5732599 d!1807679))

(declare-fun d!1807681 () Bool)

(declare-fun dynLambda!24805 (Int Context!10246) Context!10246)

(assert (=> d!1807681 (= (map!14529 lt!2282157 lambda!310373) (store ((as const (Array Context!10246 Bool)) false) (dynLambda!24805 lambda!310373 lt!2282119) true))))

(declare-fun lt!2282276 () Unit!156488)

(declare-fun choose!43411 ((InoxSet Context!10246) Context!10246 Int) Unit!156488)

(assert (=> d!1807681 (= lt!2282276 (choose!43411 lt!2282157 lt!2282119 lambda!310373))))

(assert (=> d!1807681 (= lt!2282157 (store ((as const (Array Context!10246 Bool)) false) lt!2282119 true))))

(assert (=> d!1807681 (= (lemmaMapOnSingletonSet!134 lt!2282157 lt!2282119 lambda!310373) lt!2282276)))

(declare-fun b_lambda!216573 () Bool)

(assert (=> (not b_lambda!216573) (not d!1807681)))

(declare-fun bs!1339900 () Bool)

(assert (= bs!1339900 d!1807681))

(assert (=> bs!1339900 m!6684570))

(declare-fun m!6685022 () Bool)

(assert (=> bs!1339900 m!6685022))

(declare-fun m!6685024 () Bool)

(assert (=> bs!1339900 m!6685024))

(assert (=> bs!1339900 m!6685022))

(declare-fun m!6685026 () Bool)

(assert (=> bs!1339900 m!6685026))

(assert (=> bs!1339900 m!6684468))

(assert (=> b!5732599 d!1807681))

(declare-fun d!1807683 () Bool)

(declare-fun choose!43413 ((InoxSet Context!10246) Int) (InoxSet Context!10246))

(assert (=> d!1807683 (= (map!14529 lt!2282157 lambda!310373) (choose!43413 lt!2282157 lambda!310373))))

(declare-fun bs!1339901 () Bool)

(assert (= bs!1339901 d!1807683))

(declare-fun m!6685028 () Bool)

(assert (=> bs!1339901 m!6685028))

(assert (=> b!5732599 d!1807683))

(declare-fun d!1807685 () Bool)

(assert (=> d!1807685 (= (isEmpty!35269 (t!376846 zl!343)) ((_ is Nil!63394) (t!376846 zl!343)))))

(assert (=> b!5732558 d!1807685))

(declare-fun d!1807691 () Bool)

(declare-fun lt!2282282 () Regex!15739)

(assert (=> d!1807691 (validRegex!7475 lt!2282282)))

(assert (=> d!1807691 (= lt!2282282 (generalisedUnion!1602 (unfocusZipperList!1167 (Cons!63394 lt!2282114 Nil!63394))))))

(assert (=> d!1807691 (= (unfocusZipper!1481 (Cons!63394 lt!2282114 Nil!63394)) lt!2282282)))

(declare-fun bs!1339905 () Bool)

(assert (= bs!1339905 d!1807691))

(declare-fun m!6685066 () Bool)

(assert (=> bs!1339905 m!6685066))

(declare-fun m!6685068 () Bool)

(assert (=> bs!1339905 m!6685068))

(assert (=> bs!1339905 m!6685068))

(declare-fun m!6685070 () Bool)

(assert (=> bs!1339905 m!6685070))

(assert (=> b!5732578 d!1807691))

(declare-fun bm!438291 () Bool)

(declare-fun call!438297 () (InoxSet Context!10246))

(declare-fun call!438301 () (InoxSet Context!10246))

(assert (=> bm!438291 (= call!438297 call!438301)))

(declare-fun b!5733137 () Bool)

(declare-fun e!3524702 () (InoxSet Context!10246))

(assert (=> b!5733137 (= e!3524702 (store ((as const (Array Context!10246 Bool)) false) lt!2282145 true))))

(declare-fun c!1011640 () Bool)

(declare-fun call!438298 () (InoxSet Context!10246))

(declare-fun bm!438292 () Bool)

(declare-fun call!438300 () List!63517)

(assert (=> bm!438292 (= call!438298 (derivationStepZipperDown!1081 (ite c!1011640 (regOne!31991 (h!69841 (exprs!5623 (h!69842 zl!343)))) (regOne!31990 (h!69841 (exprs!5623 (h!69842 zl!343))))) (ite c!1011640 lt!2282145 (Context!10247 call!438300)) (h!69840 s!2326)))))

(declare-fun b!5733138 () Bool)

(declare-fun e!3524703 () Bool)

(assert (=> b!5733138 (= e!3524703 (nullable!5771 (regOne!31990 (h!69841 (exprs!5623 (h!69842 zl!343))))))))

(declare-fun b!5733139 () Bool)

(declare-fun e!3524705 () (InoxSet Context!10246))

(assert (=> b!5733139 (= e!3524702 e!3524705)))

(assert (=> b!5733139 (= c!1011640 ((_ is Union!15739) (h!69841 (exprs!5623 (h!69842 zl!343)))))))

(declare-fun c!1011643 () Bool)

(declare-fun c!1011639 () Bool)

(declare-fun bm!438293 () Bool)

(assert (=> bm!438293 (= call!438300 ($colon$colon!1745 (exprs!5623 lt!2282145) (ite (or c!1011643 c!1011639) (regTwo!31990 (h!69841 (exprs!5623 (h!69842 zl!343)))) (h!69841 (exprs!5623 (h!69842 zl!343))))))))

(declare-fun bm!438294 () Bool)

(declare-fun call!438299 () (InoxSet Context!10246))

(assert (=> bm!438294 (= call!438301 call!438299)))

(declare-fun b!5733140 () Bool)

(declare-fun e!3524704 () (InoxSet Context!10246))

(assert (=> b!5733140 (= e!3524704 ((_ map or) call!438298 call!438301))))

(declare-fun d!1807701 () Bool)

(declare-fun c!1011641 () Bool)

(assert (=> d!1807701 (= c!1011641 (and ((_ is ElementMatch!15739) (h!69841 (exprs!5623 (h!69842 zl!343)))) (= (c!1011505 (h!69841 (exprs!5623 (h!69842 zl!343)))) (h!69840 s!2326))))))

(assert (=> d!1807701 (= (derivationStepZipperDown!1081 (h!69841 (exprs!5623 (h!69842 zl!343))) lt!2282145 (h!69840 s!2326)) e!3524702)))

(declare-fun b!5733141 () Bool)

(declare-fun e!3524700 () (InoxSet Context!10246))

(assert (=> b!5733141 (= e!3524704 e!3524700)))

(assert (=> b!5733141 (= c!1011639 ((_ is Concat!24584) (h!69841 (exprs!5623 (h!69842 zl!343)))))))

(declare-fun b!5733142 () Bool)

(declare-fun e!3524701 () (InoxSet Context!10246))

(assert (=> b!5733142 (= e!3524701 ((as const (Array Context!10246 Bool)) false))))

(declare-fun b!5733143 () Bool)

(assert (=> b!5733143 (= e!3524701 call!438297)))

(declare-fun call!438296 () List!63517)

(declare-fun bm!438295 () Bool)

(assert (=> bm!438295 (= call!438299 (derivationStepZipperDown!1081 (ite c!1011640 (regTwo!31991 (h!69841 (exprs!5623 (h!69842 zl!343)))) (ite c!1011643 (regTwo!31990 (h!69841 (exprs!5623 (h!69842 zl!343)))) (ite c!1011639 (regOne!31990 (h!69841 (exprs!5623 (h!69842 zl!343)))) (reg!16068 (h!69841 (exprs!5623 (h!69842 zl!343))))))) (ite (or c!1011640 c!1011643) lt!2282145 (Context!10247 call!438296)) (h!69840 s!2326)))))

(declare-fun bm!438296 () Bool)

(assert (=> bm!438296 (= call!438296 call!438300)))

(declare-fun b!5733144 () Bool)

(assert (=> b!5733144 (= c!1011643 e!3524703)))

(declare-fun res!2420887 () Bool)

(assert (=> b!5733144 (=> (not res!2420887) (not e!3524703))))

(assert (=> b!5733144 (= res!2420887 ((_ is Concat!24584) (h!69841 (exprs!5623 (h!69842 zl!343)))))))

(assert (=> b!5733144 (= e!3524705 e!3524704)))

(declare-fun b!5733145 () Bool)

(assert (=> b!5733145 (= e!3524700 call!438297)))

(declare-fun b!5733146 () Bool)

(assert (=> b!5733146 (= e!3524705 ((_ map or) call!438298 call!438299))))

(declare-fun b!5733147 () Bool)

(declare-fun c!1011642 () Bool)

(assert (=> b!5733147 (= c!1011642 ((_ is Star!15739) (h!69841 (exprs!5623 (h!69842 zl!343)))))))

(assert (=> b!5733147 (= e!3524700 e!3524701)))

(assert (= (and d!1807701 c!1011641) b!5733137))

(assert (= (and d!1807701 (not c!1011641)) b!5733139))

(assert (= (and b!5733139 c!1011640) b!5733146))

(assert (= (and b!5733139 (not c!1011640)) b!5733144))

(assert (= (and b!5733144 res!2420887) b!5733138))

(assert (= (and b!5733144 c!1011643) b!5733140))

(assert (= (and b!5733144 (not c!1011643)) b!5733141))

(assert (= (and b!5733141 c!1011639) b!5733145))

(assert (= (and b!5733141 (not c!1011639)) b!5733147))

(assert (= (and b!5733147 c!1011642) b!5733143))

(assert (= (and b!5733147 (not c!1011642)) b!5733142))

(assert (= (or b!5733145 b!5733143) bm!438296))

(assert (= (or b!5733145 b!5733143) bm!438291))

(assert (= (or b!5733140 bm!438296) bm!438293))

(assert (= (or b!5733140 bm!438291) bm!438294))

(assert (= (or b!5733146 bm!438294) bm!438295))

(assert (= (or b!5733146 b!5733140) bm!438292))

(declare-fun m!6685084 () Bool)

(assert (=> bm!438295 m!6685084))

(declare-fun m!6685086 () Bool)

(assert (=> bm!438292 m!6685086))

(declare-fun m!6685088 () Bool)

(assert (=> bm!438293 m!6685088))

(declare-fun m!6685090 () Bool)

(assert (=> b!5733138 m!6685090))

(declare-fun m!6685092 () Bool)

(assert (=> b!5733137 m!6685092))

(assert (=> b!5732598 d!1807701))

(declare-fun d!1807705 () Bool)

(assert (=> d!1807705 (= (nullable!5771 (h!69841 (exprs!5623 (h!69842 zl!343)))) (nullableFct!1824 (h!69841 (exprs!5623 (h!69842 zl!343)))))))

(declare-fun bs!1339906 () Bool)

(assert (= bs!1339906 d!1807705))

(declare-fun m!6685094 () Bool)

(assert (=> bs!1339906 m!6685094))

(assert (=> b!5732598 d!1807705))

(declare-fun bm!438299 () Bool)

(declare-fun call!438304 () (InoxSet Context!10246))

(assert (=> bm!438299 (= call!438304 (derivationStepZipperDown!1081 (h!69841 (exprs!5623 (Context!10247 (Cons!63393 (h!69841 (exprs!5623 (h!69842 zl!343))) (t!376845 (exprs!5623 (h!69842 zl!343))))))) (Context!10247 (t!376845 (exprs!5623 (Context!10247 (Cons!63393 (h!69841 (exprs!5623 (h!69842 zl!343))) (t!376845 (exprs!5623 (h!69842 zl!343)))))))) (h!69840 s!2326)))))

(declare-fun d!1807707 () Bool)

(declare-fun c!1011649 () Bool)

(declare-fun e!3524714 () Bool)

(assert (=> d!1807707 (= c!1011649 e!3524714)))

(declare-fun res!2420890 () Bool)

(assert (=> d!1807707 (=> (not res!2420890) (not e!3524714))))

(assert (=> d!1807707 (= res!2420890 ((_ is Cons!63393) (exprs!5623 (Context!10247 (Cons!63393 (h!69841 (exprs!5623 (h!69842 zl!343))) (t!376845 (exprs!5623 (h!69842 zl!343))))))))))

(declare-fun e!3524713 () (InoxSet Context!10246))

(assert (=> d!1807707 (= (derivationStepZipperUp!1007 (Context!10247 (Cons!63393 (h!69841 (exprs!5623 (h!69842 zl!343))) (t!376845 (exprs!5623 (h!69842 zl!343))))) (h!69840 s!2326)) e!3524713)))

(declare-fun b!5733158 () Bool)

(assert (=> b!5733158 (= e!3524714 (nullable!5771 (h!69841 (exprs!5623 (Context!10247 (Cons!63393 (h!69841 (exprs!5623 (h!69842 zl!343))) (t!376845 (exprs!5623 (h!69842 zl!343)))))))))))

(declare-fun b!5733159 () Bool)

(assert (=> b!5733159 (= e!3524713 ((_ map or) call!438304 (derivationStepZipperUp!1007 (Context!10247 (t!376845 (exprs!5623 (Context!10247 (Cons!63393 (h!69841 (exprs!5623 (h!69842 zl!343))) (t!376845 (exprs!5623 (h!69842 zl!343)))))))) (h!69840 s!2326))))))

(declare-fun b!5733160 () Bool)

(declare-fun e!3524712 () (InoxSet Context!10246))

(assert (=> b!5733160 (= e!3524712 call!438304)))

(declare-fun b!5733161 () Bool)

(assert (=> b!5733161 (= e!3524712 ((as const (Array Context!10246 Bool)) false))))

(declare-fun b!5733162 () Bool)

(assert (=> b!5733162 (= e!3524713 e!3524712)))

(declare-fun c!1011648 () Bool)

(assert (=> b!5733162 (= c!1011648 ((_ is Cons!63393) (exprs!5623 (Context!10247 (Cons!63393 (h!69841 (exprs!5623 (h!69842 zl!343))) (t!376845 (exprs!5623 (h!69842 zl!343))))))))))

(assert (= (and d!1807707 res!2420890) b!5733158))

(assert (= (and d!1807707 c!1011649) b!5733159))

(assert (= (and d!1807707 (not c!1011649)) b!5733162))

(assert (= (and b!5733162 c!1011648) b!5733160))

(assert (= (and b!5733162 (not c!1011648)) b!5733161))

(assert (= (or b!5733159 b!5733160) bm!438299))

(declare-fun m!6685104 () Bool)

(assert (=> bm!438299 m!6685104))

(declare-fun m!6685106 () Bool)

(assert (=> b!5733158 m!6685106))

(declare-fun m!6685108 () Bool)

(assert (=> b!5733159 m!6685108))

(assert (=> b!5732598 d!1807707))

(declare-fun bm!438300 () Bool)

(declare-fun call!438305 () (InoxSet Context!10246))

(assert (=> bm!438300 (= call!438305 (derivationStepZipperDown!1081 (h!69841 (exprs!5623 lt!2282145)) (Context!10247 (t!376845 (exprs!5623 lt!2282145))) (h!69840 s!2326)))))

(declare-fun d!1807713 () Bool)

(declare-fun c!1011651 () Bool)

(declare-fun e!3524717 () Bool)

(assert (=> d!1807713 (= c!1011651 e!3524717)))

(declare-fun res!2420891 () Bool)

(assert (=> d!1807713 (=> (not res!2420891) (not e!3524717))))

(assert (=> d!1807713 (= res!2420891 ((_ is Cons!63393) (exprs!5623 lt!2282145)))))

(declare-fun e!3524716 () (InoxSet Context!10246))

(assert (=> d!1807713 (= (derivationStepZipperUp!1007 lt!2282145 (h!69840 s!2326)) e!3524716)))

(declare-fun b!5733163 () Bool)

(assert (=> b!5733163 (= e!3524717 (nullable!5771 (h!69841 (exprs!5623 lt!2282145))))))

(declare-fun b!5733164 () Bool)

(assert (=> b!5733164 (= e!3524716 ((_ map or) call!438305 (derivationStepZipperUp!1007 (Context!10247 (t!376845 (exprs!5623 lt!2282145))) (h!69840 s!2326))))))

(declare-fun b!5733165 () Bool)

(declare-fun e!3524715 () (InoxSet Context!10246))

(assert (=> b!5733165 (= e!3524715 call!438305)))

(declare-fun b!5733166 () Bool)

(assert (=> b!5733166 (= e!3524715 ((as const (Array Context!10246 Bool)) false))))

(declare-fun b!5733167 () Bool)

(assert (=> b!5733167 (= e!3524716 e!3524715)))

(declare-fun c!1011650 () Bool)

(assert (=> b!5733167 (= c!1011650 ((_ is Cons!63393) (exprs!5623 lt!2282145)))))

(assert (= (and d!1807713 res!2420891) b!5733163))

(assert (= (and d!1807713 c!1011651) b!5733164))

(assert (= (and d!1807713 (not c!1011651)) b!5733167))

(assert (= (and b!5733167 c!1011650) b!5733165))

(assert (= (and b!5733167 (not c!1011650)) b!5733166))

(assert (= (or b!5733164 b!5733165) bm!438300))

(declare-fun m!6685110 () Bool)

(assert (=> bm!438300 m!6685110))

(declare-fun m!6685112 () Bool)

(assert (=> b!5733163 m!6685112))

(declare-fun m!6685114 () Bool)

(assert (=> b!5733164 m!6685114))

(assert (=> b!5732598 d!1807713))

(declare-fun d!1807715 () Bool)

(declare-fun choose!43417 ((InoxSet Context!10246) Int) (InoxSet Context!10246))

(assert (=> d!1807715 (= (flatMap!1352 z!1189 lambda!310372) (choose!43417 z!1189 lambda!310372))))

(declare-fun bs!1339916 () Bool)

(assert (= bs!1339916 d!1807715))

(declare-fun m!6685116 () Bool)

(assert (=> bs!1339916 m!6685116))

(assert (=> b!5732598 d!1807715))

(declare-fun bm!438301 () Bool)

(declare-fun call!438306 () (InoxSet Context!10246))

(assert (=> bm!438301 (= call!438306 (derivationStepZipperDown!1081 (h!69841 (exprs!5623 (h!69842 zl!343))) (Context!10247 (t!376845 (exprs!5623 (h!69842 zl!343)))) (h!69840 s!2326)))))

(declare-fun d!1807717 () Bool)

(declare-fun c!1011653 () Bool)

(declare-fun e!3524720 () Bool)

(assert (=> d!1807717 (= c!1011653 e!3524720)))

(declare-fun res!2420892 () Bool)

(assert (=> d!1807717 (=> (not res!2420892) (not e!3524720))))

(assert (=> d!1807717 (= res!2420892 ((_ is Cons!63393) (exprs!5623 (h!69842 zl!343))))))

(declare-fun e!3524719 () (InoxSet Context!10246))

(assert (=> d!1807717 (= (derivationStepZipperUp!1007 (h!69842 zl!343) (h!69840 s!2326)) e!3524719)))

(declare-fun b!5733168 () Bool)

(assert (=> b!5733168 (= e!3524720 (nullable!5771 (h!69841 (exprs!5623 (h!69842 zl!343)))))))

(declare-fun b!5733169 () Bool)

(assert (=> b!5733169 (= e!3524719 ((_ map or) call!438306 (derivationStepZipperUp!1007 (Context!10247 (t!376845 (exprs!5623 (h!69842 zl!343)))) (h!69840 s!2326))))))

(declare-fun b!5733170 () Bool)

(declare-fun e!3524718 () (InoxSet Context!10246))

(assert (=> b!5733170 (= e!3524718 call!438306)))

(declare-fun b!5733171 () Bool)

(assert (=> b!5733171 (= e!3524718 ((as const (Array Context!10246 Bool)) false))))

(declare-fun b!5733172 () Bool)

(assert (=> b!5733172 (= e!3524719 e!3524718)))

(declare-fun c!1011652 () Bool)

(assert (=> b!5733172 (= c!1011652 ((_ is Cons!63393) (exprs!5623 (h!69842 zl!343))))))

(assert (= (and d!1807717 res!2420892) b!5733168))

(assert (= (and d!1807717 c!1011653) b!5733169))

(assert (= (and d!1807717 (not c!1011653)) b!5733172))

(assert (= (and b!5733172 c!1011652) b!5733170))

(assert (= (and b!5733172 (not c!1011652)) b!5733171))

(assert (= (or b!5733169 b!5733170) bm!438301))

(declare-fun m!6685120 () Bool)

(assert (=> bm!438301 m!6685120))

(assert (=> b!5733168 m!6684558))

(declare-fun m!6685122 () Bool)

(assert (=> b!5733169 m!6685122))

(assert (=> b!5732598 d!1807717))

(declare-fun d!1807721 () Bool)

(declare-fun dynLambda!24808 (Int Context!10246) (InoxSet Context!10246))

(assert (=> d!1807721 (= (flatMap!1352 z!1189 lambda!310372) (dynLambda!24808 lambda!310372 (h!69842 zl!343)))))

(declare-fun lt!2282291 () Unit!156488)

(declare-fun choose!43418 ((InoxSet Context!10246) Context!10246 Int) Unit!156488)

(assert (=> d!1807721 (= lt!2282291 (choose!43418 z!1189 (h!69842 zl!343) lambda!310372))))

(assert (=> d!1807721 (= z!1189 (store ((as const (Array Context!10246 Bool)) false) (h!69842 zl!343) true))))

(assert (=> d!1807721 (= (lemmaFlatMapOnSingletonSet!884 z!1189 (h!69842 zl!343) lambda!310372) lt!2282291)))

(declare-fun b_lambda!216575 () Bool)

(assert (=> (not b_lambda!216575) (not d!1807721)))

(declare-fun bs!1339927 () Bool)

(assert (= bs!1339927 d!1807721))

(assert (=> bs!1339927 m!6684556))

(declare-fun m!6685130 () Bool)

(assert (=> bs!1339927 m!6685130))

(declare-fun m!6685132 () Bool)

(assert (=> bs!1339927 m!6685132))

(declare-fun m!6685134 () Bool)

(assert (=> bs!1339927 m!6685134))

(assert (=> b!5732598 d!1807721))

(assert (=> b!5732561 d!1807623))

(declare-fun d!1807725 () Bool)

(assert (=> d!1807725 (= (isEmpty!35270 (t!376845 (exprs!5623 (h!69842 zl!343)))) ((_ is Nil!63393) (t!376845 (exprs!5623 (h!69842 zl!343)))))))

(assert (=> b!5732601 d!1807725))

(declare-fun b!5733196 () Bool)

(declare-fun res!2420904 () Bool)

(declare-fun e!3524733 () Bool)

(assert (=> b!5733196 (=> (not res!2420904) (not e!3524733))))

(declare-fun lt!2282298 () List!63516)

(declare-fun size!40053 (List!63516) Int)

(assert (=> b!5733196 (= res!2420904 (= (size!40053 lt!2282298) (+ (size!40053 (_1!36139 lt!2282150)) (size!40053 (_2!36139 lt!2282150)))))))

(declare-fun d!1807727 () Bool)

(assert (=> d!1807727 e!3524733))

(declare-fun res!2420905 () Bool)

(assert (=> d!1807727 (=> (not res!2420905) (not e!3524733))))

(declare-fun content!11544 (List!63516) (InoxSet C!31748))

(assert (=> d!1807727 (= res!2420905 (= (content!11544 lt!2282298) ((_ map or) (content!11544 (_1!36139 lt!2282150)) (content!11544 (_2!36139 lt!2282150)))))))

(declare-fun e!3524732 () List!63516)

(assert (=> d!1807727 (= lt!2282298 e!3524732)))

(declare-fun c!1011659 () Bool)

(assert (=> d!1807727 (= c!1011659 ((_ is Nil!63392) (_1!36139 lt!2282150)))))

(assert (=> d!1807727 (= (++!13950 (_1!36139 lt!2282150) (_2!36139 lt!2282150)) lt!2282298)))

(declare-fun b!5733195 () Bool)

(assert (=> b!5733195 (= e!3524732 (Cons!63392 (h!69840 (_1!36139 lt!2282150)) (++!13950 (t!376844 (_1!36139 lt!2282150)) (_2!36139 lt!2282150))))))

(declare-fun b!5733194 () Bool)

(assert (=> b!5733194 (= e!3524732 (_2!36139 lt!2282150))))

(declare-fun b!5733197 () Bool)

(assert (=> b!5733197 (= e!3524733 (or (not (= (_2!36139 lt!2282150) Nil!63392)) (= lt!2282298 (_1!36139 lt!2282150))))))

(assert (= (and d!1807727 c!1011659) b!5733194))

(assert (= (and d!1807727 (not c!1011659)) b!5733195))

(assert (= (and d!1807727 res!2420905) b!5733196))

(assert (= (and b!5733196 res!2420904) b!5733197))

(declare-fun m!6685172 () Bool)

(assert (=> b!5733196 m!6685172))

(declare-fun m!6685174 () Bool)

(assert (=> b!5733196 m!6685174))

(declare-fun m!6685176 () Bool)

(assert (=> b!5733196 m!6685176))

(declare-fun m!6685178 () Bool)

(assert (=> d!1807727 m!6685178))

(declare-fun m!6685180 () Bool)

(assert (=> d!1807727 m!6685180))

(declare-fun m!6685182 () Bool)

(assert (=> d!1807727 m!6685182))

(declare-fun m!6685184 () Bool)

(assert (=> b!5733195 m!6685184))

(assert (=> b!5732564 d!1807727))

(declare-fun d!1807733 () Bool)

(assert (=> d!1807733 (= (isDefined!12451 lt!2282122) (not (isEmpty!35274 lt!2282122)))))

(declare-fun bs!1339928 () Bool)

(assert (= bs!1339928 d!1807733))

(declare-fun m!6685186 () Bool)

(assert (=> bs!1339928 m!6685186))

(assert (=> b!5732564 d!1807733))

(declare-fun b!5733237 () Bool)

(declare-fun e!3524758 () Option!15748)

(assert (=> b!5733237 (= e!3524758 None!15747)))

(declare-fun b!5733238 () Bool)

(declare-fun res!2420932 () Bool)

(declare-fun e!3524756 () Bool)

(assert (=> b!5733238 (=> (not res!2420932) (not e!3524756))))

(declare-fun lt!2282309 () Option!15748)

(assert (=> b!5733238 (= res!2420932 (matchZipper!1877 lt!2282159 (_2!36139 (get!21864 lt!2282309))))))

(declare-fun b!5733239 () Bool)

(assert (=> b!5733239 (= e!3524756 (= (++!13950 (_1!36139 (get!21864 lt!2282309)) (_2!36139 (get!21864 lt!2282309))) s!2326))))

(declare-fun b!5733240 () Bool)

(declare-fun lt!2282310 () Unit!156488)

(declare-fun lt!2282308 () Unit!156488)

(assert (=> b!5733240 (= lt!2282310 lt!2282308)))

(assert (=> b!5733240 (= (++!13950 (++!13950 Nil!63392 (Cons!63392 (h!69840 s!2326) Nil!63392)) (t!376844 s!2326)) s!2326)))

(assert (=> b!5733240 (= lt!2282308 (lemmaMoveElementToOtherListKeepsConcatEq!2082 Nil!63392 (h!69840 s!2326) (t!376844 s!2326) s!2326))))

(assert (=> b!5733240 (= e!3524758 (findConcatSeparationZippers!126 lt!2282157 lt!2282159 (++!13950 Nil!63392 (Cons!63392 (h!69840 s!2326) Nil!63392)) (t!376844 s!2326) s!2326))))

(declare-fun b!5733241 () Bool)

(declare-fun e!3524757 () Option!15748)

(assert (=> b!5733241 (= e!3524757 (Some!15747 (tuple2!65673 Nil!63392 s!2326)))))

(declare-fun d!1807735 () Bool)

(declare-fun e!3524755 () Bool)

(assert (=> d!1807735 e!3524755))

(declare-fun res!2420929 () Bool)

(assert (=> d!1807735 (=> res!2420929 e!3524755)))

(assert (=> d!1807735 (= res!2420929 e!3524756)))

(declare-fun res!2420933 () Bool)

(assert (=> d!1807735 (=> (not res!2420933) (not e!3524756))))

(assert (=> d!1807735 (= res!2420933 (isDefined!12451 lt!2282309))))

(assert (=> d!1807735 (= lt!2282309 e!3524757)))

(declare-fun c!1011669 () Bool)

(declare-fun e!3524759 () Bool)

(assert (=> d!1807735 (= c!1011669 e!3524759)))

(declare-fun res!2420930 () Bool)

(assert (=> d!1807735 (=> (not res!2420930) (not e!3524759))))

(assert (=> d!1807735 (= res!2420930 (matchZipper!1877 lt!2282157 Nil!63392))))

(assert (=> d!1807735 (= (++!13950 Nil!63392 s!2326) s!2326)))

(assert (=> d!1807735 (= (findConcatSeparationZippers!126 lt!2282157 lt!2282159 Nil!63392 s!2326 s!2326) lt!2282309)))

(declare-fun b!5733242 () Bool)

(assert (=> b!5733242 (= e!3524757 e!3524758)))

(declare-fun c!1011668 () Bool)

(assert (=> b!5733242 (= c!1011668 ((_ is Nil!63392) s!2326))))

(declare-fun b!5733243 () Bool)

(declare-fun res!2420931 () Bool)

(assert (=> b!5733243 (=> (not res!2420931) (not e!3524756))))

(assert (=> b!5733243 (= res!2420931 (matchZipper!1877 lt!2282157 (_1!36139 (get!21864 lt!2282309))))))

(declare-fun b!5733244 () Bool)

(assert (=> b!5733244 (= e!3524759 (matchZipper!1877 lt!2282159 s!2326))))

(declare-fun b!5733245 () Bool)

(assert (=> b!5733245 (= e!3524755 (not (isDefined!12451 lt!2282309)))))

(assert (= (and d!1807735 res!2420930) b!5733244))

(assert (= (and d!1807735 c!1011669) b!5733241))

(assert (= (and d!1807735 (not c!1011669)) b!5733242))

(assert (= (and b!5733242 c!1011668) b!5733237))

(assert (= (and b!5733242 (not c!1011668)) b!5733240))

(assert (= (and d!1807735 res!2420933) b!5733243))

(assert (= (and b!5733243 res!2420931) b!5733238))

(assert (= (and b!5733238 res!2420932) b!5733239))

(assert (= (and d!1807735 (not res!2420929)) b!5733245))

(declare-fun m!6685194 () Bool)

(assert (=> b!5733245 m!6685194))

(declare-fun m!6685196 () Bool)

(assert (=> b!5733243 m!6685196))

(declare-fun m!6685198 () Bool)

(assert (=> b!5733243 m!6685198))

(assert (=> b!5733238 m!6685196))

(declare-fun m!6685200 () Bool)

(assert (=> b!5733238 m!6685200))

(assert (=> b!5733240 m!6684870))

(assert (=> b!5733240 m!6684870))

(assert (=> b!5733240 m!6684872))

(assert (=> b!5733240 m!6684874))

(assert (=> b!5733240 m!6684870))

(declare-fun m!6685202 () Bool)

(assert (=> b!5733240 m!6685202))

(assert (=> d!1807735 m!6685194))

(declare-fun m!6685204 () Bool)

(assert (=> d!1807735 m!6685204))

(declare-fun m!6685206 () Bool)

(assert (=> d!1807735 m!6685206))

(assert (=> b!5733239 m!6685196))

(declare-fun m!6685208 () Bool)

(assert (=> b!5733239 m!6685208))

(declare-fun m!6685210 () Bool)

(assert (=> b!5733244 m!6685210))

(assert (=> b!5732564 d!1807735))

(declare-fun d!1807739 () Bool)

(assert (=> d!1807739 (isDefined!12451 (findConcatSeparationZippers!126 lt!2282157 (store ((as const (Array Context!10246 Bool)) false) lt!2282143 true) Nil!63392 s!2326 s!2326))))

(declare-fun lt!2282318 () Unit!156488)

(declare-fun choose!43419 ((InoxSet Context!10246) Context!10246 List!63516) Unit!156488)

(assert (=> d!1807739 (= lt!2282318 (choose!43419 lt!2282157 lt!2282143 s!2326))))

(assert (=> d!1807739 (matchZipper!1877 (appendTo!118 lt!2282157 lt!2282143) s!2326)))

(assert (=> d!1807739 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!126 lt!2282157 lt!2282143 s!2326) lt!2282318)))

(declare-fun bs!1339963 () Bool)

(assert (= bs!1339963 d!1807739))

(assert (=> bs!1339963 m!6684472))

(declare-fun m!6685246 () Bool)

(assert (=> bs!1339963 m!6685246))

(assert (=> bs!1339963 m!6684568))

(declare-fun m!6685248 () Bool)

(assert (=> bs!1339963 m!6685248))

(declare-fun m!6685250 () Bool)

(assert (=> bs!1339963 m!6685250))

(assert (=> bs!1339963 m!6684568))

(assert (=> bs!1339963 m!6685248))

(assert (=> bs!1339963 m!6684472))

(declare-fun m!6685252 () Bool)

(assert (=> bs!1339963 m!6685252))

(assert (=> b!5732564 d!1807739))

(declare-fun d!1807757 () Bool)

(assert (=> d!1807757 (= (get!21864 lt!2282122) (v!51802 lt!2282122))))

(assert (=> b!5732564 d!1807757))

(declare-fun bs!1339975 () Bool)

(declare-fun d!1807759 () Bool)

(assert (= bs!1339975 (and d!1807759 b!5732599)))

(declare-fun lambda!310442 () Int)

(assert (=> bs!1339975 (= lambda!310442 lambda!310374)))

(assert (=> d!1807759 (= (inv!82594 setElem!38467) (forall!14864 (exprs!5623 setElem!38467) lambda!310442))))

(declare-fun bs!1339977 () Bool)

(assert (= bs!1339977 d!1807759))

(declare-fun m!6685254 () Bool)

(assert (=> bs!1339977 m!6685254))

(assert (=> setNonEmpty!38467 d!1807759))

(declare-fun d!1807761 () Bool)

(assert (=> d!1807761 (= (Exists!2839 lambda!310379) (choose!43404 lambda!310379))))

(declare-fun bs!1339978 () Bool)

(assert (= bs!1339978 d!1807761))

(declare-fun m!6685256 () Bool)

(assert (=> bs!1339978 m!6685256))

(assert (=> b!5732562 d!1807761))

(declare-fun b!5733270 () Bool)

(declare-fun res!2420944 () Bool)

(declare-fun e!3524775 () Bool)

(assert (=> b!5733270 (=> (not res!2420944) (not e!3524775))))

(declare-fun lt!2282319 () List!63516)

(assert (=> b!5733270 (= res!2420944 (= (size!40053 lt!2282319) (+ (size!40053 (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109))) (size!40053 (_2!36139 lt!2282146)))))))

(declare-fun d!1807763 () Bool)

(assert (=> d!1807763 e!3524775))

(declare-fun res!2420945 () Bool)

(assert (=> d!1807763 (=> (not res!2420945) (not e!3524775))))

(assert (=> d!1807763 (= res!2420945 (= (content!11544 lt!2282319) ((_ map or) (content!11544 (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109))) (content!11544 (_2!36139 lt!2282146)))))))

(declare-fun e!3524774 () List!63516)

(assert (=> d!1807763 (= lt!2282319 e!3524774)))

(declare-fun c!1011676 () Bool)

(assert (=> d!1807763 (= c!1011676 ((_ is Nil!63392) (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109))))))

(assert (=> d!1807763 (= (++!13950 (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109)) (_2!36139 lt!2282146)) lt!2282319)))

(declare-fun b!5733269 () Bool)

(assert (=> b!5733269 (= e!3524774 (Cons!63392 (h!69840 (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109))) (++!13950 (t!376844 (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109))) (_2!36139 lt!2282146))))))

(declare-fun b!5733268 () Bool)

(assert (=> b!5733268 (= e!3524774 (_2!36139 lt!2282146))))

(declare-fun b!5733271 () Bool)

(assert (=> b!5733271 (= e!3524775 (or (not (= (_2!36139 lt!2282146) Nil!63392)) (= lt!2282319 (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109)))))))

(assert (= (and d!1807763 c!1011676) b!5733268))

(assert (= (and d!1807763 (not c!1011676)) b!5733269))

(assert (= (and d!1807763 res!2420945) b!5733270))

(assert (= (and b!5733270 res!2420944) b!5733271))

(declare-fun m!6685258 () Bool)

(assert (=> b!5733270 m!6685258))

(assert (=> b!5733270 m!6684442))

(declare-fun m!6685260 () Bool)

(assert (=> b!5733270 m!6685260))

(declare-fun m!6685262 () Bool)

(assert (=> b!5733270 m!6685262))

(declare-fun m!6685264 () Bool)

(assert (=> d!1807763 m!6685264))

(assert (=> d!1807763 m!6684442))

(declare-fun m!6685266 () Bool)

(assert (=> d!1807763 m!6685266))

(declare-fun m!6685268 () Bool)

(assert (=> d!1807763 m!6685268))

(declare-fun m!6685270 () Bool)

(assert (=> b!5733269 m!6685270))

(assert (=> b!5732562 d!1807763))

(declare-fun d!1807765 () Bool)

(assert (=> d!1807765 (= (matchR!7924 lt!2282110 (_1!36139 lt!2282146)) (matchRSpec!2842 lt!2282110 (_1!36139 lt!2282146)))))

(declare-fun lt!2282320 () Unit!156488)

(assert (=> d!1807765 (= lt!2282320 (choose!43400 lt!2282110 (_1!36139 lt!2282146)))))

(assert (=> d!1807765 (validRegex!7475 lt!2282110)))

(assert (=> d!1807765 (= (mainMatchTheorem!2842 lt!2282110 (_1!36139 lt!2282146)) lt!2282320)))

(declare-fun bs!1339983 () Bool)

(assert (= bs!1339983 d!1807765))

(assert (=> bs!1339983 m!6684514))

(assert (=> bs!1339983 m!6684426))

(declare-fun m!6685272 () Bool)

(assert (=> bs!1339983 m!6685272))

(declare-fun m!6685274 () Bool)

(assert (=> bs!1339983 m!6685274))

(assert (=> b!5732562 d!1807765))

(declare-fun b!5733272 () Bool)

(declare-fun res!2420950 () Bool)

(declare-fun e!3524779 () Bool)

(assert (=> b!5733272 (=> res!2420950 e!3524779)))

(assert (=> b!5733272 (= res!2420950 (not (isEmpty!35273 (tail!11232 (_1!36139 lt!2282109)))))))

(declare-fun b!5733273 () Bool)

(declare-fun e!3524780 () Bool)

(declare-fun e!3524781 () Bool)

(assert (=> b!5733273 (= e!3524780 e!3524781)))

(declare-fun res!2420952 () Bool)

(assert (=> b!5733273 (=> (not res!2420952) (not e!3524781))))

(declare-fun lt!2282321 () Bool)

(assert (=> b!5733273 (= res!2420952 (not lt!2282321))))

(declare-fun b!5733274 () Bool)

(declare-fun res!2420946 () Bool)

(declare-fun e!3524778 () Bool)

(assert (=> b!5733274 (=> (not res!2420946) (not e!3524778))))

(declare-fun call!438311 () Bool)

(assert (=> b!5733274 (= res!2420946 (not call!438311))))

(declare-fun b!5733275 () Bool)

(declare-fun e!3524782 () Bool)

(assert (=> b!5733275 (= e!3524782 (nullable!5771 (reg!16068 (regOne!31990 r!7292))))))

(declare-fun b!5733276 () Bool)

(declare-fun res!2420947 () Bool)

(assert (=> b!5733276 (=> (not res!2420947) (not e!3524778))))

(assert (=> b!5733276 (= res!2420947 (isEmpty!35273 (tail!11232 (_1!36139 lt!2282109))))))

(declare-fun b!5733277 () Bool)

(declare-fun e!3524777 () Bool)

(assert (=> b!5733277 (= e!3524777 (not lt!2282321))))

(declare-fun b!5733278 () Bool)

(declare-fun res!2420951 () Bool)

(assert (=> b!5733278 (=> res!2420951 e!3524780)))

(assert (=> b!5733278 (= res!2420951 e!3524778)))

(declare-fun res!2420948 () Bool)

(assert (=> b!5733278 (=> (not res!2420948) (not e!3524778))))

(assert (=> b!5733278 (= res!2420948 lt!2282321)))

(declare-fun b!5733279 () Bool)

(assert (=> b!5733279 (= e!3524778 (= (head!12137 (_1!36139 lt!2282109)) (c!1011505 (reg!16068 (regOne!31990 r!7292)))))))

(declare-fun bm!438306 () Bool)

(assert (=> bm!438306 (= call!438311 (isEmpty!35273 (_1!36139 lt!2282109)))))

(declare-fun b!5733281 () Bool)

(assert (=> b!5733281 (= e!3524779 (not (= (head!12137 (_1!36139 lt!2282109)) (c!1011505 (reg!16068 (regOne!31990 r!7292))))))))

(declare-fun b!5733282 () Bool)

(declare-fun e!3524776 () Bool)

(assert (=> b!5733282 (= e!3524776 e!3524777)))

(declare-fun c!1011677 () Bool)

(assert (=> b!5733282 (= c!1011677 ((_ is EmptyLang!15739) (reg!16068 (regOne!31990 r!7292))))))

(declare-fun b!5733283 () Bool)

(assert (=> b!5733283 (= e!3524776 (= lt!2282321 call!438311))))

(declare-fun b!5733284 () Bool)

(assert (=> b!5733284 (= e!3524782 (matchR!7924 (derivativeStep!4532 (reg!16068 (regOne!31990 r!7292)) (head!12137 (_1!36139 lt!2282109))) (tail!11232 (_1!36139 lt!2282109))))))

(declare-fun b!5733285 () Bool)

(assert (=> b!5733285 (= e!3524781 e!3524779)))

(declare-fun res!2420949 () Bool)

(assert (=> b!5733285 (=> res!2420949 e!3524779)))

(assert (=> b!5733285 (= res!2420949 call!438311)))

(declare-fun d!1807767 () Bool)

(assert (=> d!1807767 e!3524776))

(declare-fun c!1011678 () Bool)

(assert (=> d!1807767 (= c!1011678 ((_ is EmptyExpr!15739) (reg!16068 (regOne!31990 r!7292))))))

(assert (=> d!1807767 (= lt!2282321 e!3524782)))

(declare-fun c!1011679 () Bool)

(assert (=> d!1807767 (= c!1011679 (isEmpty!35273 (_1!36139 lt!2282109)))))

(assert (=> d!1807767 (validRegex!7475 (reg!16068 (regOne!31990 r!7292)))))

(assert (=> d!1807767 (= (matchR!7924 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282109)) lt!2282321)))

(declare-fun b!5733280 () Bool)

(declare-fun res!2420953 () Bool)

(assert (=> b!5733280 (=> res!2420953 e!3524780)))

(assert (=> b!5733280 (= res!2420953 (not ((_ is ElementMatch!15739) (reg!16068 (regOne!31990 r!7292)))))))

(assert (=> b!5733280 (= e!3524777 e!3524780)))

(assert (= (and d!1807767 c!1011679) b!5733275))

(assert (= (and d!1807767 (not c!1011679)) b!5733284))

(assert (= (and d!1807767 c!1011678) b!5733283))

(assert (= (and d!1807767 (not c!1011678)) b!5733282))

(assert (= (and b!5733282 c!1011677) b!5733277))

(assert (= (and b!5733282 (not c!1011677)) b!5733280))

(assert (= (and b!5733280 (not res!2420953)) b!5733278))

(assert (= (and b!5733278 res!2420948) b!5733274))

(assert (= (and b!5733274 res!2420946) b!5733276))

(assert (= (and b!5733276 res!2420947) b!5733279))

(assert (= (and b!5733278 (not res!2420951)) b!5733273))

(assert (= (and b!5733273 res!2420952) b!5733285))

(assert (= (and b!5733285 (not res!2420949)) b!5733272))

(assert (= (and b!5733272 (not res!2420950)) b!5733281))

(assert (= (or b!5733283 b!5733274 b!5733285) bm!438306))

(declare-fun m!6685276 () Bool)

(assert (=> bm!438306 m!6685276))

(declare-fun m!6685278 () Bool)

(assert (=> b!5733276 m!6685278))

(assert (=> b!5733276 m!6685278))

(declare-fun m!6685280 () Bool)

(assert (=> b!5733276 m!6685280))

(declare-fun m!6685282 () Bool)

(assert (=> b!5733279 m!6685282))

(assert (=> d!1807767 m!6685276))

(declare-fun m!6685284 () Bool)

(assert (=> d!1807767 m!6685284))

(assert (=> b!5733284 m!6685282))

(assert (=> b!5733284 m!6685282))

(declare-fun m!6685286 () Bool)

(assert (=> b!5733284 m!6685286))

(assert (=> b!5733284 m!6685278))

(assert (=> b!5733284 m!6685286))

(assert (=> b!5733284 m!6685278))

(declare-fun m!6685288 () Bool)

(assert (=> b!5733284 m!6685288))

(assert (=> b!5733281 m!6685282))

(declare-fun m!6685290 () Bool)

(assert (=> b!5733275 m!6685290))

(assert (=> b!5733272 m!6685278))

(assert (=> b!5733272 m!6685278))

(assert (=> b!5733272 m!6685280))

(assert (=> b!5732562 d!1807767))

(declare-fun bs!1339993 () Bool)

(declare-fun d!1807769 () Bool)

(assert (= bs!1339993 (and d!1807769 b!5732569)))

(declare-fun lambda!310444 () Int)

(assert (=> bs!1339993 (not (= lambda!310444 lambda!310376))))

(declare-fun bs!1339994 () Bool)

(assert (= bs!1339994 (and d!1807769 b!5732909)))

(assert (=> bs!1339994 (not (= lambda!310444 lambda!310395))))

(declare-fun bs!1339995 () Bool)

(assert (= bs!1339995 (and d!1807769 b!5732562)))

(assert (=> bs!1339995 (not (= lambda!310444 lambda!310379))))

(declare-fun bs!1339996 () Bool)

(assert (= bs!1339996 (and d!1807769 b!5732559)))

(assert (=> bs!1339996 (not (= lambda!310444 lambda!310371))))

(assert (=> bs!1339995 (not (= lambda!310444 lambda!310378))))

(declare-fun bs!1339997 () Bool)

(assert (= bs!1339997 (and d!1807769 b!5732908)))

(assert (=> bs!1339997 (not (= lambda!310444 lambda!310396))))

(assert (=> bs!1339996 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310444 lambda!310370))))

(declare-fun bs!1339998 () Bool)

(assert (= bs!1339998 (and d!1807769 d!1807639)))

(assert (=> bs!1339998 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310444 lambda!310416))))

(assert (=> bs!1339993 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) lt!2282110) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310444 lambda!310375))))

(assert (=> bs!1339995 (= lambda!310444 lambda!310377)))

(declare-fun bs!1339999 () Bool)

(assert (= bs!1339999 (and d!1807769 d!1807635)))

(assert (=> bs!1339999 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310444 lambda!310411))))

(assert (=> bs!1339998 (not (= lambda!310444 lambda!310417))))

(declare-fun bs!1340000 () Bool)

(assert (= bs!1340000 (and d!1807769 b!5732755)))

(assert (=> bs!1340000 (not (= lambda!310444 lambda!310391))))

(declare-fun bs!1340001 () Bool)

(assert (= bs!1340001 (and d!1807769 b!5732756)))

(assert (=> bs!1340001 (not (= lambda!310444 lambda!310390))))

(assert (=> d!1807769 true))

(assert (=> d!1807769 true))

(assert (=> d!1807769 true))

(assert (=> d!1807769 (= (isDefined!12451 (findConcatSeparation!2162 (reg!16068 (regOne!31990 r!7292)) lt!2282113 Nil!63392 (_1!36139 lt!2282146) (_1!36139 lt!2282146))) (Exists!2839 lambda!310444))))

(declare-fun lt!2282322 () Unit!156488)

(assert (=> d!1807769 (= lt!2282322 (choose!43406 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (_1!36139 lt!2282146)))))

(assert (=> d!1807769 (validRegex!7475 (reg!16068 (regOne!31990 r!7292)))))

(assert (=> d!1807769 (= (lemmaFindConcatSeparationEquivalentToExists!1926 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (_1!36139 lt!2282146)) lt!2282322)))

(declare-fun bs!1340003 () Bool)

(assert (= bs!1340003 d!1807769))

(assert (=> bs!1340003 m!6684434))

(declare-fun m!6685306 () Bool)

(assert (=> bs!1340003 m!6685306))

(declare-fun m!6685308 () Bool)

(assert (=> bs!1340003 m!6685308))

(assert (=> bs!1340003 m!6684434))

(declare-fun m!6685314 () Bool)

(assert (=> bs!1340003 m!6685314))

(assert (=> bs!1340003 m!6685284))

(assert (=> b!5732562 d!1807769))

(declare-fun bs!1340005 () Bool)

(declare-fun d!1807777 () Bool)

(assert (= bs!1340005 (and d!1807777 b!5732569)))

(declare-fun lambda!310445 () Int)

(assert (=> bs!1340005 (not (= lambda!310445 lambda!310376))))

(declare-fun bs!1340006 () Bool)

(assert (= bs!1340006 (and d!1807777 d!1807769)))

(assert (=> bs!1340006 (= lambda!310445 lambda!310444)))

(declare-fun bs!1340007 () Bool)

(assert (= bs!1340007 (and d!1807777 b!5732909)))

(assert (=> bs!1340007 (not (= lambda!310445 lambda!310395))))

(declare-fun bs!1340008 () Bool)

(assert (= bs!1340008 (and d!1807777 b!5732562)))

(assert (=> bs!1340008 (not (= lambda!310445 lambda!310379))))

(declare-fun bs!1340009 () Bool)

(assert (= bs!1340009 (and d!1807777 b!5732559)))

(assert (=> bs!1340009 (not (= lambda!310445 lambda!310371))))

(assert (=> bs!1340008 (not (= lambda!310445 lambda!310378))))

(declare-fun bs!1340010 () Bool)

(assert (= bs!1340010 (and d!1807777 b!5732908)))

(assert (=> bs!1340010 (not (= lambda!310445 lambda!310396))))

(assert (=> bs!1340009 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310445 lambda!310370))))

(declare-fun bs!1340011 () Bool)

(assert (= bs!1340011 (and d!1807777 d!1807639)))

(assert (=> bs!1340011 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310445 lambda!310416))))

(assert (=> bs!1340005 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) lt!2282110) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310445 lambda!310375))))

(assert (=> bs!1340008 (= lambda!310445 lambda!310377)))

(declare-fun bs!1340012 () Bool)

(assert (= bs!1340012 (and d!1807777 d!1807635)))

(assert (=> bs!1340012 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310445 lambda!310411))))

(assert (=> bs!1340011 (not (= lambda!310445 lambda!310417))))

(declare-fun bs!1340013 () Bool)

(assert (= bs!1340013 (and d!1807777 b!5732755)))

(assert (=> bs!1340013 (not (= lambda!310445 lambda!310391))))

(declare-fun bs!1340014 () Bool)

(assert (= bs!1340014 (and d!1807777 b!5732756)))

(assert (=> bs!1340014 (not (= lambda!310445 lambda!310390))))

(assert (=> d!1807777 true))

(assert (=> d!1807777 true))

(assert (=> d!1807777 true))

(declare-fun lambda!310446 () Int)

(assert (=> bs!1340005 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) lt!2282110) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310446 lambda!310376))))

(assert (=> bs!1340006 (not (= lambda!310446 lambda!310444))))

(assert (=> bs!1340007 (not (= lambda!310446 lambda!310395))))

(declare-fun bs!1340015 () Bool)

(assert (= bs!1340015 d!1807777))

(assert (=> bs!1340015 (not (= lambda!310446 lambda!310445))))

(assert (=> bs!1340008 (not (= lambda!310446 lambda!310379))))

(assert (=> bs!1340009 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310446 lambda!310371))))

(assert (=> bs!1340008 (= lambda!310446 lambda!310378)))

(assert (=> bs!1340010 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 lt!2282149)) (= lt!2282113 (regTwo!31990 lt!2282149))) (= lambda!310446 lambda!310396))))

(assert (=> bs!1340009 (not (= lambda!310446 lambda!310370))))

(assert (=> bs!1340011 (not (= lambda!310446 lambda!310416))))

(assert (=> bs!1340005 (not (= lambda!310446 lambda!310375))))

(assert (=> bs!1340008 (not (= lambda!310446 lambda!310377))))

(assert (=> bs!1340012 (not (= lambda!310446 lambda!310411))))

(assert (=> bs!1340011 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310446 lambda!310417))))

(assert (=> bs!1340013 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= lt!2282113 (regTwo!31990 r!7292))) (= lambda!310446 lambda!310391))))

(assert (=> bs!1340014 (not (= lambda!310446 lambda!310390))))

(assert (=> d!1807777 true))

(assert (=> d!1807777 true))

(assert (=> d!1807777 true))

(assert (=> d!1807777 (= (Exists!2839 lambda!310445) (Exists!2839 lambda!310446))))

(declare-fun lt!2282326 () Unit!156488)

(assert (=> d!1807777 (= lt!2282326 (choose!43407 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (_1!36139 lt!2282146)))))

(assert (=> d!1807777 (validRegex!7475 (reg!16068 (regOne!31990 r!7292)))))

(assert (=> d!1807777 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1468 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (_1!36139 lt!2282146)) lt!2282326)))

(declare-fun m!6685330 () Bool)

(assert (=> bs!1340015 m!6685330))

(declare-fun m!6685332 () Bool)

(assert (=> bs!1340015 m!6685332))

(declare-fun m!6685334 () Bool)

(assert (=> bs!1340015 m!6685334))

(assert (=> bs!1340015 m!6685284))

(assert (=> b!5732562 d!1807777))

(declare-fun b!5733328 () Bool)

(declare-fun res!2420964 () Bool)

(declare-fun e!3524805 () Bool)

(assert (=> b!5733328 (=> (not res!2420964) (not e!3524805))))

(declare-fun lt!2282327 () List!63516)

(assert (=> b!5733328 (= res!2420964 (= (size!40053 lt!2282327) (+ (size!40053 (_1!36139 lt!2282109)) (size!40053 (_2!36139 lt!2282109)))))))

(declare-fun d!1807785 () Bool)

(assert (=> d!1807785 e!3524805))

(declare-fun res!2420965 () Bool)

(assert (=> d!1807785 (=> (not res!2420965) (not e!3524805))))

(assert (=> d!1807785 (= res!2420965 (= (content!11544 lt!2282327) ((_ map or) (content!11544 (_1!36139 lt!2282109)) (content!11544 (_2!36139 lt!2282109)))))))

(declare-fun e!3524804 () List!63516)

(assert (=> d!1807785 (= lt!2282327 e!3524804)))

(declare-fun c!1011694 () Bool)

(assert (=> d!1807785 (= c!1011694 ((_ is Nil!63392) (_1!36139 lt!2282109)))))

(assert (=> d!1807785 (= (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109)) lt!2282327)))

(declare-fun b!5733327 () Bool)

(assert (=> b!5733327 (= e!3524804 (Cons!63392 (h!69840 (_1!36139 lt!2282109)) (++!13950 (t!376844 (_1!36139 lt!2282109)) (_2!36139 lt!2282109))))))

(declare-fun b!5733326 () Bool)

(assert (=> b!5733326 (= e!3524804 (_2!36139 lt!2282109))))

(declare-fun b!5733329 () Bool)

(assert (=> b!5733329 (= e!3524805 (or (not (= (_2!36139 lt!2282109) Nil!63392)) (= lt!2282327 (_1!36139 lt!2282109))))))

(assert (= (and d!1807785 c!1011694) b!5733326))

(assert (= (and d!1807785 (not c!1011694)) b!5733327))

(assert (= (and d!1807785 res!2420965) b!5733328))

(assert (= (and b!5733328 res!2420964) b!5733329))

(declare-fun m!6685336 () Bool)

(assert (=> b!5733328 m!6685336))

(declare-fun m!6685338 () Bool)

(assert (=> b!5733328 m!6685338))

(declare-fun m!6685340 () Bool)

(assert (=> b!5733328 m!6685340))

(declare-fun m!6685342 () Bool)

(assert (=> d!1807785 m!6685342))

(declare-fun m!6685344 () Bool)

(assert (=> d!1807785 m!6685344))

(declare-fun m!6685346 () Bool)

(assert (=> d!1807785 m!6685346))

(declare-fun m!6685348 () Bool)

(assert (=> b!5733327 m!6685348))

(assert (=> b!5732562 d!1807785))

(declare-fun b!5733330 () Bool)

(declare-fun e!3524810 () Option!15748)

(declare-fun e!3524808 () Option!15748)

(assert (=> b!5733330 (= e!3524810 e!3524808)))

(declare-fun c!1011697 () Bool)

(assert (=> b!5733330 (= c!1011697 ((_ is Nil!63392) (_1!36139 lt!2282146)))))

(declare-fun b!5733331 () Bool)

(assert (=> b!5733331 (= e!3524810 (Some!15747 (tuple2!65673 Nil!63392 (_1!36139 lt!2282146))))))

(declare-fun b!5733332 () Bool)

(assert (=> b!5733332 (= e!3524808 None!15747)))

(declare-fun b!5733333 () Bool)

(declare-fun e!3524806 () Bool)

(declare-fun lt!2282330 () Option!15748)

(assert (=> b!5733333 (= e!3524806 (= (++!13950 (_1!36139 (get!21864 lt!2282330)) (_2!36139 (get!21864 lt!2282330))) (_1!36139 lt!2282146)))))

(declare-fun b!5733334 () Bool)

(declare-fun e!3524807 () Bool)

(assert (=> b!5733334 (= e!3524807 (not (isDefined!12451 lt!2282330)))))

(declare-fun b!5733335 () Bool)

(declare-fun lt!2282329 () Unit!156488)

(declare-fun lt!2282328 () Unit!156488)

(assert (=> b!5733335 (= lt!2282329 lt!2282328)))

(assert (=> b!5733335 (= (++!13950 (++!13950 Nil!63392 (Cons!63392 (h!69840 (_1!36139 lt!2282146)) Nil!63392)) (t!376844 (_1!36139 lt!2282146))) (_1!36139 lt!2282146))))

(assert (=> b!5733335 (= lt!2282328 (lemmaMoveElementToOtherListKeepsConcatEq!2082 Nil!63392 (h!69840 (_1!36139 lt!2282146)) (t!376844 (_1!36139 lt!2282146)) (_1!36139 lt!2282146)))))

(assert (=> b!5733335 (= e!3524808 (findConcatSeparation!2162 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (++!13950 Nil!63392 (Cons!63392 (h!69840 (_1!36139 lt!2282146)) Nil!63392)) (t!376844 (_1!36139 lt!2282146)) (_1!36139 lt!2282146)))))

(declare-fun b!5733336 () Bool)

(declare-fun res!2420968 () Bool)

(assert (=> b!5733336 (=> (not res!2420968) (not e!3524806))))

(assert (=> b!5733336 (= res!2420968 (matchR!7924 lt!2282113 (_2!36139 (get!21864 lt!2282330))))))

(declare-fun b!5733337 () Bool)

(declare-fun res!2420967 () Bool)

(assert (=> b!5733337 (=> (not res!2420967) (not e!3524806))))

(assert (=> b!5733337 (= res!2420967 (matchR!7924 (reg!16068 (regOne!31990 r!7292)) (_1!36139 (get!21864 lt!2282330))))))

(declare-fun d!1807787 () Bool)

(assert (=> d!1807787 e!3524807))

(declare-fun res!2420966 () Bool)

(assert (=> d!1807787 (=> res!2420966 e!3524807)))

(assert (=> d!1807787 (= res!2420966 e!3524806)))

(declare-fun res!2420969 () Bool)

(assert (=> d!1807787 (=> (not res!2420969) (not e!3524806))))

(assert (=> d!1807787 (= res!2420969 (isDefined!12451 lt!2282330))))

(assert (=> d!1807787 (= lt!2282330 e!3524810)))

(declare-fun c!1011696 () Bool)

(declare-fun e!3524809 () Bool)

(assert (=> d!1807787 (= c!1011696 e!3524809)))

(declare-fun res!2420970 () Bool)

(assert (=> d!1807787 (=> (not res!2420970) (not e!3524809))))

(assert (=> d!1807787 (= res!2420970 (matchR!7924 (reg!16068 (regOne!31990 r!7292)) Nil!63392))))

(assert (=> d!1807787 (validRegex!7475 (reg!16068 (regOne!31990 r!7292)))))

(assert (=> d!1807787 (= (findConcatSeparation!2162 (reg!16068 (regOne!31990 r!7292)) lt!2282113 Nil!63392 (_1!36139 lt!2282146) (_1!36139 lt!2282146)) lt!2282330)))

(declare-fun b!5733338 () Bool)

(assert (=> b!5733338 (= e!3524809 (matchR!7924 lt!2282113 (_1!36139 lt!2282146)))))

(assert (= (and d!1807787 res!2420970) b!5733338))

(assert (= (and d!1807787 c!1011696) b!5733331))

(assert (= (and d!1807787 (not c!1011696)) b!5733330))

(assert (= (and b!5733330 c!1011697) b!5733332))

(assert (= (and b!5733330 (not c!1011697)) b!5733335))

(assert (= (and d!1807787 res!2420969) b!5733337))

(assert (= (and b!5733337 res!2420967) b!5733336))

(assert (= (and b!5733336 res!2420968) b!5733333))

(assert (= (and d!1807787 (not res!2420966)) b!5733334))

(declare-fun m!6685350 () Bool)

(assert (=> b!5733334 m!6685350))

(declare-fun m!6685352 () Bool)

(assert (=> b!5733336 m!6685352))

(declare-fun m!6685354 () Bool)

(assert (=> b!5733336 m!6685354))

(assert (=> b!5733333 m!6685352))

(declare-fun m!6685356 () Bool)

(assert (=> b!5733333 m!6685356))

(declare-fun m!6685358 () Bool)

(assert (=> b!5733338 m!6685358))

(assert (=> b!5733337 m!6685352))

(declare-fun m!6685360 () Bool)

(assert (=> b!5733337 m!6685360))

(declare-fun m!6685362 () Bool)

(assert (=> b!5733335 m!6685362))

(assert (=> b!5733335 m!6685362))

(declare-fun m!6685364 () Bool)

(assert (=> b!5733335 m!6685364))

(declare-fun m!6685366 () Bool)

(assert (=> b!5733335 m!6685366))

(assert (=> b!5733335 m!6685362))

(declare-fun m!6685368 () Bool)

(assert (=> b!5733335 m!6685368))

(assert (=> d!1807787 m!6685350))

(declare-fun m!6685370 () Bool)

(assert (=> d!1807787 m!6685370))

(assert (=> d!1807787 m!6685284))

(assert (=> b!5732562 d!1807787))

(declare-fun b!5733341 () Bool)

(declare-fun res!2420971 () Bool)

(declare-fun e!3524812 () Bool)

(assert (=> b!5733341 (=> (not res!2420971) (not e!3524812))))

(declare-fun lt!2282331 () List!63516)

(assert (=> b!5733341 (= res!2420971 (= (size!40053 lt!2282331) (+ (size!40053 (_2!36139 lt!2282109)) (size!40053 (_2!36139 lt!2282146)))))))

(declare-fun d!1807789 () Bool)

(assert (=> d!1807789 e!3524812))

(declare-fun res!2420972 () Bool)

(assert (=> d!1807789 (=> (not res!2420972) (not e!3524812))))

(assert (=> d!1807789 (= res!2420972 (= (content!11544 lt!2282331) ((_ map or) (content!11544 (_2!36139 lt!2282109)) (content!11544 (_2!36139 lt!2282146)))))))

(declare-fun e!3524811 () List!63516)

(assert (=> d!1807789 (= lt!2282331 e!3524811)))

(declare-fun c!1011698 () Bool)

(assert (=> d!1807789 (= c!1011698 ((_ is Nil!63392) (_2!36139 lt!2282109)))))

(assert (=> d!1807789 (= (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146)) lt!2282331)))

(declare-fun b!5733340 () Bool)

(assert (=> b!5733340 (= e!3524811 (Cons!63392 (h!69840 (_2!36139 lt!2282109)) (++!13950 (t!376844 (_2!36139 lt!2282109)) (_2!36139 lt!2282146))))))

(declare-fun b!5733339 () Bool)

(assert (=> b!5733339 (= e!3524811 (_2!36139 lt!2282146))))

(declare-fun b!5733342 () Bool)

(assert (=> b!5733342 (= e!3524812 (or (not (= (_2!36139 lt!2282146) Nil!63392)) (= lt!2282331 (_2!36139 lt!2282109))))))

(assert (= (and d!1807789 c!1011698) b!5733339))

(assert (= (and d!1807789 (not c!1011698)) b!5733340))

(assert (= (and d!1807789 res!2420972) b!5733341))

(assert (= (and b!5733341 res!2420971) b!5733342))

(declare-fun m!6685372 () Bool)

(assert (=> b!5733341 m!6685372))

(assert (=> b!5733341 m!6685340))

(assert (=> b!5733341 m!6685262))

(declare-fun m!6685374 () Bool)

(assert (=> d!1807789 m!6685374))

(assert (=> d!1807789 m!6685346))

(assert (=> d!1807789 m!6685268))

(declare-fun m!6685376 () Bool)

(assert (=> b!5733340 m!6685376))

(assert (=> b!5732562 d!1807789))

(declare-fun d!1807791 () Bool)

(assert (=> d!1807791 (= (get!21864 lt!2282123) (v!51802 lt!2282123))))

(assert (=> b!5732562 d!1807791))

(declare-fun bs!1340016 () Bool)

(declare-fun b!5733350 () Bool)

(assert (= bs!1340016 (and b!5733350 b!5732569)))

(declare-fun lambda!310447 () Int)

(assert (=> bs!1340016 (not (= lambda!310447 lambda!310376))))

(declare-fun bs!1340017 () Bool)

(assert (= bs!1340017 (and b!5733350 d!1807769)))

(assert (=> bs!1340017 (not (= lambda!310447 lambda!310444))))

(declare-fun bs!1340018 () Bool)

(assert (= bs!1340018 (and b!5733350 b!5732909)))

(assert (=> bs!1340018 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 lt!2282110) (reg!16068 lt!2282149)) (= lt!2282110 lt!2282149)) (= lambda!310447 lambda!310395))))

(declare-fun bs!1340019 () Bool)

(assert (= bs!1340019 (and b!5733350 d!1807777)))

(assert (=> bs!1340019 (not (= lambda!310447 lambda!310445))))

(declare-fun bs!1340020 () Bool)

(assert (= bs!1340020 (and b!5733350 b!5732562)))

(assert (=> bs!1340020 (= (and (= (reg!16068 lt!2282110) (reg!16068 (regOne!31990 r!7292))) (= lt!2282110 lt!2282113)) (= lambda!310447 lambda!310379))))

(declare-fun bs!1340021 () Bool)

(assert (= bs!1340021 (and b!5733350 b!5732559)))

(assert (=> bs!1340021 (not (= lambda!310447 lambda!310371))))

(assert (=> bs!1340020 (not (= lambda!310447 lambda!310378))))

(declare-fun bs!1340022 () Bool)

(assert (= bs!1340022 (and b!5733350 b!5732908)))

(assert (=> bs!1340022 (not (= lambda!310447 lambda!310396))))

(assert (=> bs!1340021 (not (= lambda!310447 lambda!310370))))

(assert (=> bs!1340019 (not (= lambda!310447 lambda!310446))))

(declare-fun bs!1340023 () Bool)

(assert (= bs!1340023 (and b!5733350 d!1807639)))

(assert (=> bs!1340023 (not (= lambda!310447 lambda!310416))))

(assert (=> bs!1340016 (not (= lambda!310447 lambda!310375))))

(assert (=> bs!1340020 (not (= lambda!310447 lambda!310377))))

(declare-fun bs!1340024 () Bool)

(assert (= bs!1340024 (and b!5733350 d!1807635)))

(assert (=> bs!1340024 (not (= lambda!310447 lambda!310411))))

(assert (=> bs!1340023 (not (= lambda!310447 lambda!310417))))

(declare-fun bs!1340025 () Bool)

(assert (= bs!1340025 (and b!5733350 b!5732755)))

(assert (=> bs!1340025 (not (= lambda!310447 lambda!310391))))

(declare-fun bs!1340026 () Bool)

(assert (= bs!1340026 (and b!5733350 b!5732756)))

(assert (=> bs!1340026 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 lt!2282110) (reg!16068 r!7292)) (= lt!2282110 r!7292)) (= lambda!310447 lambda!310390))))

(assert (=> b!5733350 true))

(assert (=> b!5733350 true))

(declare-fun bs!1340027 () Bool)

(declare-fun b!5733349 () Bool)

(assert (= bs!1340027 (and b!5733349 d!1807769)))

(declare-fun lambda!310448 () Int)

(assert (=> bs!1340027 (not (= lambda!310448 lambda!310444))))

(declare-fun bs!1340028 () Bool)

(assert (= bs!1340028 (and b!5733349 b!5732909)))

(assert (=> bs!1340028 (not (= lambda!310448 lambda!310395))))

(declare-fun bs!1340029 () Bool)

(assert (= bs!1340029 (and b!5733349 d!1807777)))

(assert (=> bs!1340029 (not (= lambda!310448 lambda!310445))))

(declare-fun bs!1340030 () Bool)

(assert (= bs!1340030 (and b!5733349 b!5732562)))

(assert (=> bs!1340030 (not (= lambda!310448 lambda!310379))))

(declare-fun bs!1340031 () Bool)

(assert (= bs!1340031 (and b!5733349 b!5732559)))

(assert (=> bs!1340031 (= (and (= (_1!36139 lt!2282146) s!2326) (= (regOne!31990 lt!2282110) (regOne!31990 r!7292)) (= (regTwo!31990 lt!2282110) (regTwo!31990 r!7292))) (= lambda!310448 lambda!310371))))

(assert (=> bs!1340030 (= (and (= (regOne!31990 lt!2282110) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 lt!2282110) lt!2282113)) (= lambda!310448 lambda!310378))))

(declare-fun bs!1340032 () Bool)

(assert (= bs!1340032 (and b!5733349 b!5732908)))

(assert (=> bs!1340032 (= (and (= (_1!36139 lt!2282146) s!2326) (= (regOne!31990 lt!2282110) (regOne!31990 lt!2282149)) (= (regTwo!31990 lt!2282110) (regTwo!31990 lt!2282149))) (= lambda!310448 lambda!310396))))

(assert (=> bs!1340031 (not (= lambda!310448 lambda!310370))))

(assert (=> bs!1340029 (= (and (= (regOne!31990 lt!2282110) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 lt!2282110) lt!2282113)) (= lambda!310448 lambda!310446))))

(declare-fun bs!1340033 () Bool)

(assert (= bs!1340033 (and b!5733349 d!1807639)))

(assert (=> bs!1340033 (not (= lambda!310448 lambda!310416))))

(declare-fun bs!1340034 () Bool)

(assert (= bs!1340034 (and b!5733349 b!5732569)))

(assert (=> bs!1340034 (not (= lambda!310448 lambda!310375))))

(declare-fun bs!1340035 () Bool)

(assert (= bs!1340035 (and b!5733349 b!5733350)))

(assert (=> bs!1340035 (not (= lambda!310448 lambda!310447))))

(assert (=> bs!1340034 (= (and (= (_1!36139 lt!2282146) s!2326) (= (regOne!31990 lt!2282110) lt!2282110) (= (regTwo!31990 lt!2282110) (regTwo!31990 r!7292))) (= lambda!310448 lambda!310376))))

(assert (=> bs!1340030 (not (= lambda!310448 lambda!310377))))

(declare-fun bs!1340036 () Bool)

(assert (= bs!1340036 (and b!5733349 d!1807635)))

(assert (=> bs!1340036 (not (= lambda!310448 lambda!310411))))

(assert (=> bs!1340033 (= (and (= (_1!36139 lt!2282146) s!2326) (= (regOne!31990 lt!2282110) (regOne!31990 r!7292)) (= (regTwo!31990 lt!2282110) (regTwo!31990 r!7292))) (= lambda!310448 lambda!310417))))

(declare-fun bs!1340037 () Bool)

(assert (= bs!1340037 (and b!5733349 b!5732755)))

(assert (=> bs!1340037 (= (and (= (_1!36139 lt!2282146) s!2326) (= (regOne!31990 lt!2282110) (regOne!31990 r!7292)) (= (regTwo!31990 lt!2282110) (regTwo!31990 r!7292))) (= lambda!310448 lambda!310391))))

(declare-fun bs!1340038 () Bool)

(assert (= bs!1340038 (and b!5733349 b!5732756)))

(assert (=> bs!1340038 (not (= lambda!310448 lambda!310390))))

(assert (=> b!5733349 true))

(assert (=> b!5733349 true))

(declare-fun bm!438320 () Bool)

(declare-fun call!438325 () Bool)

(declare-fun c!1011701 () Bool)

(assert (=> bm!438320 (= call!438325 (Exists!2839 (ite c!1011701 lambda!310447 lambda!310448)))))

(declare-fun b!5733343 () Bool)

(declare-fun e!3524819 () Bool)

(declare-fun call!438326 () Bool)

(assert (=> b!5733343 (= e!3524819 call!438326)))

(declare-fun bm!438321 () Bool)

(assert (=> bm!438321 (= call!438326 (isEmpty!35273 (_1!36139 lt!2282146)))))

(declare-fun b!5733344 () Bool)

(declare-fun e!3524814 () Bool)

(assert (=> b!5733344 (= e!3524819 e!3524814)))

(declare-fun res!2420975 () Bool)

(assert (=> b!5733344 (= res!2420975 (not ((_ is EmptyLang!15739) lt!2282110)))))

(assert (=> b!5733344 (=> (not res!2420975) (not e!3524814))))

(declare-fun b!5733345 () Bool)

(declare-fun e!3524813 () Bool)

(assert (=> b!5733345 (= e!3524813 (= (_1!36139 lt!2282146) (Cons!63392 (c!1011505 lt!2282110) Nil!63392)))))

(declare-fun b!5733346 () Bool)

(declare-fun c!1011699 () Bool)

(assert (=> b!5733346 (= c!1011699 ((_ is Union!15739) lt!2282110))))

(declare-fun e!3524815 () Bool)

(assert (=> b!5733346 (= e!3524813 e!3524815)))

(declare-fun b!5733347 () Bool)

(declare-fun res!2420973 () Bool)

(declare-fun e!3524818 () Bool)

(assert (=> b!5733347 (=> res!2420973 e!3524818)))

(assert (=> b!5733347 (= res!2420973 call!438326)))

(declare-fun e!3524816 () Bool)

(assert (=> b!5733347 (= e!3524816 e!3524818)))

(declare-fun b!5733348 () Bool)

(assert (=> b!5733348 (= e!3524815 e!3524816)))

(assert (=> b!5733348 (= c!1011701 ((_ is Star!15739) lt!2282110))))

(assert (=> b!5733349 (= e!3524816 call!438325)))

(assert (=> b!5733350 (= e!3524818 call!438325)))

(declare-fun b!5733351 () Bool)

(declare-fun e!3524817 () Bool)

(assert (=> b!5733351 (= e!3524815 e!3524817)))

(declare-fun res!2420974 () Bool)

(assert (=> b!5733351 (= res!2420974 (matchRSpec!2842 (regOne!31991 lt!2282110) (_1!36139 lt!2282146)))))

(assert (=> b!5733351 (=> res!2420974 e!3524817)))

(declare-fun b!5733352 () Bool)

(assert (=> b!5733352 (= e!3524817 (matchRSpec!2842 (regTwo!31991 lt!2282110) (_1!36139 lt!2282146)))))

(declare-fun b!5733353 () Bool)

(declare-fun c!1011700 () Bool)

(assert (=> b!5733353 (= c!1011700 ((_ is ElementMatch!15739) lt!2282110))))

(assert (=> b!5733353 (= e!3524814 e!3524813)))

(declare-fun d!1807793 () Bool)

(declare-fun c!1011702 () Bool)

(assert (=> d!1807793 (= c!1011702 ((_ is EmptyExpr!15739) lt!2282110))))

(assert (=> d!1807793 (= (matchRSpec!2842 lt!2282110 (_1!36139 lt!2282146)) e!3524819)))

(assert (= (and d!1807793 c!1011702) b!5733343))

(assert (= (and d!1807793 (not c!1011702)) b!5733344))

(assert (= (and b!5733344 res!2420975) b!5733353))

(assert (= (and b!5733353 c!1011700) b!5733345))

(assert (= (and b!5733353 (not c!1011700)) b!5733346))

(assert (= (and b!5733346 c!1011699) b!5733351))

(assert (= (and b!5733346 (not c!1011699)) b!5733348))

(assert (= (and b!5733351 (not res!2420974)) b!5733352))

(assert (= (and b!5733348 c!1011701) b!5733347))

(assert (= (and b!5733348 (not c!1011701)) b!5733349))

(assert (= (and b!5733347 (not res!2420973)) b!5733350))

(assert (= (or b!5733350 b!5733349) bm!438320))

(assert (= (or b!5733343 b!5733347) bm!438321))

(declare-fun m!6685396 () Bool)

(assert (=> bm!438320 m!6685396))

(declare-fun m!6685398 () Bool)

(assert (=> bm!438321 m!6685398))

(declare-fun m!6685400 () Bool)

(assert (=> b!5733351 m!6685400))

(declare-fun m!6685402 () Bool)

(assert (=> b!5733352 m!6685402))

(assert (=> b!5732562 d!1807793))

(declare-fun d!1807801 () Bool)

(assert (=> d!1807801 (= (++!13950 (++!13950 (_1!36139 lt!2282109) (_2!36139 lt!2282109)) (_2!36139 lt!2282146)) (++!13950 (_1!36139 lt!2282109) (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146))))))

(declare-fun lt!2282335 () Unit!156488)

(declare-fun choose!43422 (List!63516 List!63516 List!63516) Unit!156488)

(assert (=> d!1807801 (= lt!2282335 (choose!43422 (_1!36139 lt!2282109) (_2!36139 lt!2282109) (_2!36139 lt!2282146)))))

(assert (=> d!1807801 (= (lemmaConcatAssociativity!2882 (_1!36139 lt!2282109) (_2!36139 lt!2282109) (_2!36139 lt!2282146)) lt!2282335)))

(declare-fun bs!1340042 () Bool)

(assert (= bs!1340042 d!1807801))

(assert (=> bs!1340042 m!6684442))

(assert (=> bs!1340042 m!6684444))

(declare-fun m!6685428 () Bool)

(assert (=> bs!1340042 m!6685428))

(assert (=> bs!1340042 m!6684442))

(assert (=> bs!1340042 m!6684438))

(assert (=> bs!1340042 m!6684438))

(assert (=> bs!1340042 m!6684440))

(assert (=> b!5732562 d!1807801))

(declare-fun b!5733384 () Bool)

(declare-fun res!2420980 () Bool)

(declare-fun e!3524837 () Bool)

(assert (=> b!5733384 (=> (not res!2420980) (not e!3524837))))

(declare-fun lt!2282336 () List!63516)

(assert (=> b!5733384 (= res!2420980 (= (size!40053 lt!2282336) (+ (size!40053 (_1!36139 lt!2282109)) (size!40053 (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146))))))))

(declare-fun d!1807813 () Bool)

(assert (=> d!1807813 e!3524837))

(declare-fun res!2420981 () Bool)

(assert (=> d!1807813 (=> (not res!2420981) (not e!3524837))))

(assert (=> d!1807813 (= res!2420981 (= (content!11544 lt!2282336) ((_ map or) (content!11544 (_1!36139 lt!2282109)) (content!11544 (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146))))))))

(declare-fun e!3524836 () List!63516)

(assert (=> d!1807813 (= lt!2282336 e!3524836)))

(declare-fun c!1011715 () Bool)

(assert (=> d!1807813 (= c!1011715 ((_ is Nil!63392) (_1!36139 lt!2282109)))))

(assert (=> d!1807813 (= (++!13950 (_1!36139 lt!2282109) (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146))) lt!2282336)))

(declare-fun b!5733383 () Bool)

(assert (=> b!5733383 (= e!3524836 (Cons!63392 (h!69840 (_1!36139 lt!2282109)) (++!13950 (t!376844 (_1!36139 lt!2282109)) (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146)))))))

(declare-fun b!5733382 () Bool)

(assert (=> b!5733382 (= e!3524836 (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146)))))

(declare-fun b!5733385 () Bool)

(assert (=> b!5733385 (= e!3524837 (or (not (= (++!13950 (_2!36139 lt!2282109) (_2!36139 lt!2282146)) Nil!63392)) (= lt!2282336 (_1!36139 lt!2282109))))))

(assert (= (and d!1807813 c!1011715) b!5733382))

(assert (= (and d!1807813 (not c!1011715)) b!5733383))

(assert (= (and d!1807813 res!2420981) b!5733384))

(assert (= (and b!5733384 res!2420980) b!5733385))

(declare-fun m!6685430 () Bool)

(assert (=> b!5733384 m!6685430))

(assert (=> b!5733384 m!6685338))

(assert (=> b!5733384 m!6684438))

(declare-fun m!6685432 () Bool)

(assert (=> b!5733384 m!6685432))

(declare-fun m!6685434 () Bool)

(assert (=> d!1807813 m!6685434))

(assert (=> d!1807813 m!6685344))

(assert (=> d!1807813 m!6684438))

(declare-fun m!6685436 () Bool)

(assert (=> d!1807813 m!6685436))

(assert (=> b!5733383 m!6684438))

(declare-fun m!6685438 () Bool)

(assert (=> b!5733383 m!6685438))

(assert (=> b!5732562 d!1807813))

(declare-fun d!1807815 () Bool)

(assert (=> d!1807815 (= (Exists!2839 lambda!310377) (choose!43404 lambda!310377))))

(declare-fun bs!1340043 () Bool)

(assert (= bs!1340043 d!1807815))

(declare-fun m!6685440 () Bool)

(assert (=> bs!1340043 m!6685440))

(assert (=> b!5732562 d!1807815))

(declare-fun bs!1340053 () Bool)

(declare-fun d!1807817 () Bool)

(assert (= bs!1340053 (and d!1807817 b!5732909)))

(declare-fun lambda!310457 () Int)

(assert (=> bs!1340053 (not (= lambda!310457 lambda!310395))))

(declare-fun bs!1340055 () Bool)

(assert (= bs!1340055 (and d!1807817 d!1807777)))

(assert (=> bs!1340055 (= (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) lt!2282113) (= lambda!310457 lambda!310445))))

(declare-fun bs!1340058 () Bool)

(assert (= bs!1340058 (and d!1807817 b!5732562)))

(assert (=> bs!1340058 (not (= lambda!310457 lambda!310379))))

(declare-fun bs!1340060 () Bool)

(assert (= bs!1340060 (and d!1807817 b!5732559)))

(assert (=> bs!1340060 (not (= lambda!310457 lambda!310371))))

(assert (=> bs!1340058 (not (= lambda!310457 lambda!310378))))

(declare-fun bs!1340063 () Bool)

(assert (= bs!1340063 (and d!1807817 b!5732908)))

(assert (=> bs!1340063 (not (= lambda!310457 lambda!310396))))

(assert (=> bs!1340060 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) (regTwo!31990 r!7292))) (= lambda!310457 lambda!310370))))

(assert (=> bs!1340055 (not (= lambda!310457 lambda!310446))))

(declare-fun bs!1340065 () Bool)

(assert (= bs!1340065 (and d!1807817 d!1807639)))

(assert (=> bs!1340065 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) (regTwo!31990 r!7292))) (= lambda!310457 lambda!310416))))

(declare-fun bs!1340066 () Bool)

(assert (= bs!1340066 (and d!1807817 b!5732569)))

(assert (=> bs!1340066 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) lt!2282110) (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) (regTwo!31990 r!7292))) (= lambda!310457 lambda!310375))))

(declare-fun bs!1340068 () Bool)

(assert (= bs!1340068 (and d!1807817 b!5733350)))

(assert (=> bs!1340068 (not (= lambda!310457 lambda!310447))))

(assert (=> bs!1340066 (not (= lambda!310457 lambda!310376))))

(declare-fun bs!1340069 () Bool)

(assert (= bs!1340069 (and d!1807817 b!5733349)))

(assert (=> bs!1340069 (not (= lambda!310457 lambda!310448))))

(declare-fun bs!1340070 () Bool)

(assert (= bs!1340070 (and d!1807817 d!1807769)))

(assert (=> bs!1340070 (= (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) lt!2282113) (= lambda!310457 lambda!310444))))

(assert (=> bs!1340058 (= (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) lt!2282113) (= lambda!310457 lambda!310377))))

(declare-fun bs!1340072 () Bool)

(assert (= bs!1340072 (and d!1807817 d!1807635)))

(assert (=> bs!1340072 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (regOne!31990 r!7292)) (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) (regTwo!31990 r!7292))) (= lambda!310457 lambda!310411))))

(assert (=> bs!1340065 (not (= lambda!310457 lambda!310417))))

(declare-fun bs!1340074 () Bool)

(assert (= bs!1340074 (and d!1807817 b!5732755)))

(assert (=> bs!1340074 (not (= lambda!310457 lambda!310391))))

(declare-fun bs!1340075 () Bool)

(assert (= bs!1340075 (and d!1807817 b!5732756)))

(assert (=> bs!1340075 (not (= lambda!310457 lambda!310390))))

(assert (=> d!1807817 true))

(assert (=> d!1807817 true))

(declare-fun lambda!310458 () Int)

(assert (=> bs!1340053 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (reg!16068 lt!2282149)) (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) lt!2282149)) (= lambda!310458 lambda!310395))))

(assert (=> bs!1340055 (not (= lambda!310458 lambda!310445))))

(assert (=> bs!1340058 (= (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) lt!2282113) (= lambda!310458 lambda!310379))))

(declare-fun bs!1340080 () Bool)

(assert (= bs!1340080 d!1807817))

(assert (=> bs!1340080 (not (= lambda!310458 lambda!310457))))

(assert (=> bs!1340060 (not (= lambda!310458 lambda!310371))))

(assert (=> bs!1340058 (not (= lambda!310458 lambda!310378))))

(assert (=> bs!1340063 (not (= lambda!310458 lambda!310396))))

(assert (=> bs!1340060 (not (= lambda!310458 lambda!310370))))

(assert (=> bs!1340055 (not (= lambda!310458 lambda!310446))))

(assert (=> bs!1340065 (not (= lambda!310458 lambda!310416))))

(assert (=> bs!1340066 (not (= lambda!310458 lambda!310375))))

(assert (=> bs!1340068 (= (and (= (reg!16068 (regOne!31990 r!7292)) (reg!16068 lt!2282110)) (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) lt!2282110)) (= lambda!310458 lambda!310447))))

(assert (=> bs!1340066 (not (= lambda!310458 lambda!310376))))

(assert (=> bs!1340069 (not (= lambda!310458 lambda!310448))))

(assert (=> bs!1340070 (not (= lambda!310458 lambda!310444))))

(assert (=> bs!1340058 (not (= lambda!310458 lambda!310377))))

(assert (=> bs!1340072 (not (= lambda!310458 lambda!310411))))

(assert (=> bs!1340065 (not (= lambda!310458 lambda!310417))))

(assert (=> bs!1340074 (not (= lambda!310458 lambda!310391))))

(assert (=> bs!1340075 (= (and (= (_1!36139 lt!2282146) s!2326) (= (reg!16068 (regOne!31990 r!7292)) (reg!16068 r!7292)) (= (Star!15739 (reg!16068 (regOne!31990 r!7292))) r!7292)) (= lambda!310458 lambda!310390))))

(assert (=> d!1807817 true))

(assert (=> d!1807817 true))

(assert (=> d!1807817 (= (Exists!2839 lambda!310457) (Exists!2839 lambda!310458))))

(declare-fun lt!2282346 () Unit!156488)

(declare-fun choose!43424 (Regex!15739 List!63516) Unit!156488)

(assert (=> d!1807817 (= lt!2282346 (choose!43424 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282146)))))

(assert (=> d!1807817 (validRegex!7475 (reg!16068 (regOne!31990 r!7292)))))

(assert (=> d!1807817 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!552 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282146)) lt!2282346)))

(declare-fun m!6685484 () Bool)

(assert (=> bs!1340080 m!6685484))

(declare-fun m!6685486 () Bool)

(assert (=> bs!1340080 m!6685486))

(declare-fun m!6685488 () Bool)

(assert (=> bs!1340080 m!6685488))

(assert (=> bs!1340080 m!6685284))

(assert (=> b!5732562 d!1807817))

(declare-fun d!1807829 () Bool)

(assert (=> d!1807829 (= (isDefined!12451 lt!2282123) (not (isEmpty!35274 lt!2282123)))))

(declare-fun bs!1340093 () Bool)

(assert (= bs!1340093 d!1807829))

(declare-fun m!6685490 () Bool)

(assert (=> bs!1340093 m!6685490))

(assert (=> b!5732562 d!1807829))

(declare-fun d!1807831 () Bool)

(assert (=> d!1807831 (= (Exists!2839 lambda!310378) (choose!43404 lambda!310378))))

(declare-fun bs!1340094 () Bool)

(assert (= bs!1340094 d!1807831))

(declare-fun m!6685492 () Bool)

(assert (=> bs!1340094 m!6685492))

(assert (=> b!5732562 d!1807831))

(declare-fun bs!1340108 () Bool)

(declare-fun d!1807833 () Bool)

(assert (= bs!1340108 (and d!1807833 b!5732599)))

(declare-fun lambda!310468 () Int)

(assert (=> bs!1340108 (= lambda!310468 lambda!310374)))

(declare-fun bs!1340110 () Bool)

(assert (= bs!1340110 (and d!1807833 d!1807759)))

(assert (=> bs!1340110 (= lambda!310468 lambda!310442)))

(declare-fun b!5733473 () Bool)

(declare-fun e!3524888 () Regex!15739)

(assert (=> b!5733473 (= e!3524888 (Concat!24584 (h!69841 (exprs!5623 (h!69842 zl!343))) (generalisedConcat!1354 (t!376845 (exprs!5623 (h!69842 zl!343))))))))

(declare-fun b!5733474 () Bool)

(declare-fun e!3524892 () Bool)

(declare-fun e!3524889 () Bool)

(assert (=> b!5733474 (= e!3524892 e!3524889)))

(declare-fun c!1011749 () Bool)

(assert (=> b!5733474 (= c!1011749 (isEmpty!35270 (exprs!5623 (h!69842 zl!343))))))

(declare-fun b!5733475 () Bool)

(declare-fun e!3524890 () Regex!15739)

(assert (=> b!5733475 (= e!3524890 (h!69841 (exprs!5623 (h!69842 zl!343))))))

(declare-fun b!5733476 () Bool)

(declare-fun lt!2282351 () Regex!15739)

(declare-fun isEmptyExpr!1236 (Regex!15739) Bool)

(assert (=> b!5733476 (= e!3524889 (isEmptyExpr!1236 lt!2282351))))

(assert (=> d!1807833 e!3524892))

(declare-fun res!2421011 () Bool)

(assert (=> d!1807833 (=> (not res!2421011) (not e!3524892))))

(assert (=> d!1807833 (= res!2421011 (validRegex!7475 lt!2282351))))

(assert (=> d!1807833 (= lt!2282351 e!3524890)))

(declare-fun c!1011747 () Bool)

(declare-fun e!3524887 () Bool)

(assert (=> d!1807833 (= c!1011747 e!3524887)))

(declare-fun res!2421012 () Bool)

(assert (=> d!1807833 (=> (not res!2421012) (not e!3524887))))

(assert (=> d!1807833 (= res!2421012 ((_ is Cons!63393) (exprs!5623 (h!69842 zl!343))))))

(assert (=> d!1807833 (forall!14864 (exprs!5623 (h!69842 zl!343)) lambda!310468)))

(assert (=> d!1807833 (= (generalisedConcat!1354 (exprs!5623 (h!69842 zl!343))) lt!2282351)))

(declare-fun b!5733477 () Bool)

(declare-fun e!3524891 () Bool)

(declare-fun isConcat!759 (Regex!15739) Bool)

(assert (=> b!5733477 (= e!3524891 (isConcat!759 lt!2282351))))

(declare-fun b!5733478 () Bool)

(assert (=> b!5733478 (= e!3524890 e!3524888)))

(declare-fun c!1011746 () Bool)

(assert (=> b!5733478 (= c!1011746 ((_ is Cons!63393) (exprs!5623 (h!69842 zl!343))))))

(declare-fun b!5733479 () Bool)

(assert (=> b!5733479 (= e!3524888 EmptyExpr!15739)))

(declare-fun b!5733480 () Bool)

(declare-fun head!12138 (List!63517) Regex!15739)

(assert (=> b!5733480 (= e!3524891 (= lt!2282351 (head!12138 (exprs!5623 (h!69842 zl!343)))))))

(declare-fun b!5733481 () Bool)

(assert (=> b!5733481 (= e!3524887 (isEmpty!35270 (t!376845 (exprs!5623 (h!69842 zl!343)))))))

(declare-fun b!5733482 () Bool)

(assert (=> b!5733482 (= e!3524889 e!3524891)))

(declare-fun c!1011748 () Bool)

(declare-fun tail!11233 (List!63517) List!63517)

(assert (=> b!5733482 (= c!1011748 (isEmpty!35270 (tail!11233 (exprs!5623 (h!69842 zl!343)))))))

(assert (= (and d!1807833 res!2421012) b!5733481))

(assert (= (and d!1807833 c!1011747) b!5733475))

(assert (= (and d!1807833 (not c!1011747)) b!5733478))

(assert (= (and b!5733478 c!1011746) b!5733473))

(assert (= (and b!5733478 (not c!1011746)) b!5733479))

(assert (= (and d!1807833 res!2421011) b!5733474))

(assert (= (and b!5733474 c!1011749) b!5733476))

(assert (= (and b!5733474 (not c!1011749)) b!5733482))

(assert (= (and b!5733482 c!1011748) b!5733480))

(assert (= (and b!5733482 (not c!1011748)) b!5733477))

(declare-fun m!6685518 () Bool)

(assert (=> b!5733474 m!6685518))

(declare-fun m!6685520 () Bool)

(assert (=> b!5733477 m!6685520))

(declare-fun m!6685522 () Bool)

(assert (=> b!5733476 m!6685522))

(declare-fun m!6685524 () Bool)

(assert (=> b!5733480 m!6685524))

(assert (=> b!5733481 m!6684534))

(declare-fun m!6685526 () Bool)

(assert (=> d!1807833 m!6685526))

(declare-fun m!6685528 () Bool)

(assert (=> d!1807833 m!6685528))

(declare-fun m!6685530 () Bool)

(assert (=> b!5733473 m!6685530))

(declare-fun m!6685532 () Bool)

(assert (=> b!5733482 m!6685532))

(assert (=> b!5733482 m!6685532))

(declare-fun m!6685534 () Bool)

(assert (=> b!5733482 m!6685534))

(assert (=> b!5732567 d!1807833))

(declare-fun d!1807849 () Bool)

(assert (=> d!1807849 (= (flatMap!1352 lt!2282144 lambda!310372) (choose!43417 lt!2282144 lambda!310372))))

(declare-fun bs!1340119 () Bool)

(assert (= bs!1340119 d!1807849))

(declare-fun m!6685536 () Bool)

(assert (=> bs!1340119 m!6685536))

(assert (=> b!5732586 d!1807849))

(declare-fun bm!438334 () Bool)

(declare-fun call!438339 () (InoxSet Context!10246))

(assert (=> bm!438334 (= call!438339 (derivationStepZipperDown!1081 (h!69841 (exprs!5623 lt!2282114)) (Context!10247 (t!376845 (exprs!5623 lt!2282114))) (h!69840 s!2326)))))

(declare-fun d!1807851 () Bool)

(declare-fun c!1011751 () Bool)

(declare-fun e!3524895 () Bool)

(assert (=> d!1807851 (= c!1011751 e!3524895)))

(declare-fun res!2421013 () Bool)

(assert (=> d!1807851 (=> (not res!2421013) (not e!3524895))))

(assert (=> d!1807851 (= res!2421013 ((_ is Cons!63393) (exprs!5623 lt!2282114)))))

(declare-fun e!3524894 () (InoxSet Context!10246))

(assert (=> d!1807851 (= (derivationStepZipperUp!1007 lt!2282114 (h!69840 s!2326)) e!3524894)))

(declare-fun b!5733483 () Bool)

(assert (=> b!5733483 (= e!3524895 (nullable!5771 (h!69841 (exprs!5623 lt!2282114))))))

(declare-fun b!5733484 () Bool)

(assert (=> b!5733484 (= e!3524894 ((_ map or) call!438339 (derivationStepZipperUp!1007 (Context!10247 (t!376845 (exprs!5623 lt!2282114))) (h!69840 s!2326))))))

(declare-fun b!5733485 () Bool)

(declare-fun e!3524893 () (InoxSet Context!10246))

(assert (=> b!5733485 (= e!3524893 call!438339)))

(declare-fun b!5733486 () Bool)

(assert (=> b!5733486 (= e!3524893 ((as const (Array Context!10246 Bool)) false))))

(declare-fun b!5733487 () Bool)

(assert (=> b!5733487 (= e!3524894 e!3524893)))

(declare-fun c!1011750 () Bool)

(assert (=> b!5733487 (= c!1011750 ((_ is Cons!63393) (exprs!5623 lt!2282114)))))

(assert (= (and d!1807851 res!2421013) b!5733483))

(assert (= (and d!1807851 c!1011751) b!5733484))

(assert (= (and d!1807851 (not c!1011751)) b!5733487))

(assert (= (and b!5733487 c!1011750) b!5733485))

(assert (= (and b!5733487 (not c!1011750)) b!5733486))

(assert (= (or b!5733484 b!5733485) bm!438334))

(declare-fun m!6685538 () Bool)

(assert (=> bm!438334 m!6685538))

(declare-fun m!6685540 () Bool)

(assert (=> b!5733483 m!6685540))

(declare-fun m!6685542 () Bool)

(assert (=> b!5733484 m!6685542))

(assert (=> b!5732586 d!1807851))

(declare-fun d!1807853 () Bool)

(assert (=> d!1807853 (= (flatMap!1352 lt!2282144 lambda!310372) (dynLambda!24808 lambda!310372 lt!2282114))))

(declare-fun lt!2282352 () Unit!156488)

(assert (=> d!1807853 (= lt!2282352 (choose!43418 lt!2282144 lt!2282114 lambda!310372))))

(assert (=> d!1807853 (= lt!2282144 (store ((as const (Array Context!10246 Bool)) false) lt!2282114 true))))

(assert (=> d!1807853 (= (lemmaFlatMapOnSingletonSet!884 lt!2282144 lt!2282114 lambda!310372) lt!2282352)))

(declare-fun b_lambda!216581 () Bool)

(assert (=> (not b_lambda!216581) (not d!1807853)))

(declare-fun bs!1340123 () Bool)

(assert (= bs!1340123 d!1807853))

(assert (=> bs!1340123 m!6684542))

(declare-fun m!6685544 () Bool)

(assert (=> bs!1340123 m!6685544))

(declare-fun m!6685546 () Bool)

(assert (=> bs!1340123 m!6685546))

(assert (=> bs!1340123 m!6684538))

(assert (=> b!5732586 d!1807853))

(declare-fun bs!1340133 () Bool)

(declare-fun d!1807855 () Bool)

(assert (= bs!1340133 (and d!1807855 b!5732598)))

(declare-fun lambda!310472 () Int)

(assert (=> bs!1340133 (= lambda!310472 lambda!310372)))

(assert (=> d!1807855 true))

(assert (=> d!1807855 (= (derivationStepZipper!1822 lt!2282144 (h!69840 s!2326)) (flatMap!1352 lt!2282144 lambda!310472))))

(declare-fun bs!1340136 () Bool)

(assert (= bs!1340136 d!1807855))

(declare-fun m!6685548 () Bool)

(assert (=> bs!1340136 m!6685548))

(assert (=> b!5732586 d!1807855))

(declare-fun d!1807857 () Bool)

(declare-fun e!3524905 () Bool)

(assert (=> d!1807857 (= (matchZipper!1877 ((_ map or) lt!2282166 lt!2282153) (t!376844 s!2326)) e!3524905)))

(declare-fun res!2421024 () Bool)

(assert (=> d!1807857 (=> res!2421024 e!3524905)))

(assert (=> d!1807857 (= res!2421024 (matchZipper!1877 lt!2282166 (t!376844 s!2326)))))

(declare-fun lt!2282357 () Unit!156488)

(declare-fun choose!43425 ((InoxSet Context!10246) (InoxSet Context!10246) List!63516) Unit!156488)

(assert (=> d!1807857 (= lt!2282357 (choose!43425 lt!2282166 lt!2282153 (t!376844 s!2326)))))

(assert (=> d!1807857 (= (lemmaZipperConcatMatchesSameAsBothZippers!764 lt!2282166 lt!2282153 (t!376844 s!2326)) lt!2282357)))

(declare-fun b!5733506 () Bool)

(assert (=> b!5733506 (= e!3524905 (matchZipper!1877 lt!2282153 (t!376844 s!2326)))))

(assert (= (and d!1807857 (not res!2421024)) b!5733506))

(assert (=> d!1807857 m!6684400))

(assert (=> d!1807857 m!6684398))

(declare-fun m!6685566 () Bool)

(assert (=> d!1807857 m!6685566))

(assert (=> b!5733506 m!6684402))

(assert (=> b!5732566 d!1807857))

(declare-fun d!1807865 () Bool)

(declare-fun c!1011758 () Bool)

(assert (=> d!1807865 (= c!1011758 (isEmpty!35273 (t!376844 s!2326)))))

(declare-fun e!3524907 () Bool)

(assert (=> d!1807865 (= (matchZipper!1877 lt!2282166 (t!376844 s!2326)) e!3524907)))

(declare-fun b!5733509 () Bool)

(assert (=> b!5733509 (= e!3524907 (nullableZipper!1679 lt!2282166))))

(declare-fun b!5733510 () Bool)

(assert (=> b!5733510 (= e!3524907 (matchZipper!1877 (derivationStepZipper!1822 lt!2282166 (head!12137 (t!376844 s!2326))) (tail!11232 (t!376844 s!2326))))))

(assert (= (and d!1807865 c!1011758) b!5733509))

(assert (= (and d!1807865 (not c!1011758)) b!5733510))

(assert (=> d!1807865 m!6684838))

(declare-fun m!6685572 () Bool)

(assert (=> b!5733509 m!6685572))

(assert (=> b!5733510 m!6684842))

(assert (=> b!5733510 m!6684842))

(declare-fun m!6685574 () Bool)

(assert (=> b!5733510 m!6685574))

(assert (=> b!5733510 m!6684846))

(assert (=> b!5733510 m!6685574))

(assert (=> b!5733510 m!6684846))

(declare-fun m!6685576 () Bool)

(assert (=> b!5733510 m!6685576))

(assert (=> b!5732566 d!1807865))

(declare-fun d!1807871 () Bool)

(declare-fun c!1011759 () Bool)

(assert (=> d!1807871 (= c!1011759 (isEmpty!35273 (t!376844 s!2326)))))

(declare-fun e!3524908 () Bool)

(assert (=> d!1807871 (= (matchZipper!1877 ((_ map or) lt!2282166 lt!2282153) (t!376844 s!2326)) e!3524908)))

(declare-fun b!5733511 () Bool)

(assert (=> b!5733511 (= e!3524908 (nullableZipper!1679 ((_ map or) lt!2282166 lt!2282153)))))

(declare-fun b!5733512 () Bool)

(assert (=> b!5733512 (= e!3524908 (matchZipper!1877 (derivationStepZipper!1822 ((_ map or) lt!2282166 lt!2282153) (head!12137 (t!376844 s!2326))) (tail!11232 (t!376844 s!2326))))))

(assert (= (and d!1807871 c!1011759) b!5733511))

(assert (= (and d!1807871 (not c!1011759)) b!5733512))

(assert (=> d!1807871 m!6684838))

(declare-fun m!6685578 () Bool)

(assert (=> b!5733511 m!6685578))

(assert (=> b!5733512 m!6684842))

(assert (=> b!5733512 m!6684842))

(declare-fun m!6685580 () Bool)

(assert (=> b!5733512 m!6685580))

(assert (=> b!5733512 m!6684846))

(assert (=> b!5733512 m!6685580))

(assert (=> b!5733512 m!6684846))

(declare-fun m!6685582 () Bool)

(assert (=> b!5733512 m!6685582))

(assert (=> b!5732566 d!1807871))

(declare-fun bs!1340147 () Bool)

(declare-fun d!1807873 () Bool)

(assert (= bs!1340147 (and d!1807873 b!5732599)))

(declare-fun lambda!310475 () Int)

(assert (=> bs!1340147 (= lambda!310475 lambda!310374)))

(declare-fun bs!1340148 () Bool)

(assert (= bs!1340148 (and d!1807873 d!1807759)))

(assert (=> bs!1340148 (= lambda!310475 lambda!310442)))

(declare-fun bs!1340149 () Bool)

(assert (= bs!1340149 (and d!1807873 d!1807833)))

(assert (=> bs!1340149 (= lambda!310475 lambda!310468)))

(declare-fun e!3524927 () Bool)

(assert (=> d!1807873 e!3524927))

(declare-fun res!2421032 () Bool)

(assert (=> d!1807873 (=> (not res!2421032) (not e!3524927))))

(declare-fun lt!2282364 () Regex!15739)

(assert (=> d!1807873 (= res!2421032 (validRegex!7475 lt!2282364))))

(declare-fun e!3524926 () Regex!15739)

(assert (=> d!1807873 (= lt!2282364 e!3524926)))

(declare-fun c!1011772 () Bool)

(declare-fun e!3524928 () Bool)

(assert (=> d!1807873 (= c!1011772 e!3524928)))

(declare-fun res!2421033 () Bool)

(assert (=> d!1807873 (=> (not res!2421033) (not e!3524928))))

(assert (=> d!1807873 (= res!2421033 ((_ is Cons!63393) (unfocusZipperList!1167 zl!343)))))

(assert (=> d!1807873 (forall!14864 (unfocusZipperList!1167 zl!343) lambda!310475)))

(assert (=> d!1807873 (= (generalisedUnion!1602 (unfocusZipperList!1167 zl!343)) lt!2282364)))

(declare-fun b!5733538 () Bool)

(assert (=> b!5733538 (= e!3524926 (h!69841 (unfocusZipperList!1167 zl!343)))))

(declare-fun b!5733539 () Bool)

(declare-fun e!3524929 () Bool)

(declare-fun isUnion!677 (Regex!15739) Bool)

(assert (=> b!5733539 (= e!3524929 (isUnion!677 lt!2282364))))

(declare-fun b!5733540 () Bool)

(declare-fun e!3524930 () Bool)

(assert (=> b!5733540 (= e!3524930 e!3524929)))

(declare-fun c!1011770 () Bool)

(assert (=> b!5733540 (= c!1011770 (isEmpty!35270 (tail!11233 (unfocusZipperList!1167 zl!343))))))

(declare-fun b!5733541 () Bool)

(declare-fun isEmptyLang!1247 (Regex!15739) Bool)

(assert (=> b!5733541 (= e!3524930 (isEmptyLang!1247 lt!2282364))))

(declare-fun b!5733542 () Bool)

(declare-fun e!3524925 () Regex!15739)

(assert (=> b!5733542 (= e!3524926 e!3524925)))

(declare-fun c!1011771 () Bool)

(assert (=> b!5733542 (= c!1011771 ((_ is Cons!63393) (unfocusZipperList!1167 zl!343)))))

(declare-fun b!5733543 () Bool)

(assert (=> b!5733543 (= e!3524925 EmptyLang!15739)))

(declare-fun b!5733544 () Bool)

(assert (=> b!5733544 (= e!3524925 (Union!15739 (h!69841 (unfocusZipperList!1167 zl!343)) (generalisedUnion!1602 (t!376845 (unfocusZipperList!1167 zl!343)))))))

(declare-fun b!5733545 () Bool)

(assert (=> b!5733545 (= e!3524927 e!3524930)))

(declare-fun c!1011769 () Bool)

(assert (=> b!5733545 (= c!1011769 (isEmpty!35270 (unfocusZipperList!1167 zl!343)))))

(declare-fun b!5733546 () Bool)

(assert (=> b!5733546 (= e!3524929 (= lt!2282364 (head!12138 (unfocusZipperList!1167 zl!343))))))

(declare-fun b!5733547 () Bool)

(assert (=> b!5733547 (= e!3524928 (isEmpty!35270 (t!376845 (unfocusZipperList!1167 zl!343))))))

(assert (= (and d!1807873 res!2421033) b!5733547))

(assert (= (and d!1807873 c!1011772) b!5733538))

(assert (= (and d!1807873 (not c!1011772)) b!5733542))

(assert (= (and b!5733542 c!1011771) b!5733544))

(assert (= (and b!5733542 (not c!1011771)) b!5733543))

(assert (= (and d!1807873 res!2421032) b!5733545))

(assert (= (and b!5733545 c!1011769) b!5733541))

(assert (= (and b!5733545 (not c!1011769)) b!5733540))

(assert (= (and b!5733540 c!1011770) b!5733546))

(assert (= (and b!5733540 (not c!1011770)) b!5733539))

(declare-fun m!6685592 () Bool)

(assert (=> d!1807873 m!6685592))

(assert (=> d!1807873 m!6684530))

(declare-fun m!6685594 () Bool)

(assert (=> d!1807873 m!6685594))

(assert (=> b!5733546 m!6684530))

(declare-fun m!6685596 () Bool)

(assert (=> b!5733546 m!6685596))

(declare-fun m!6685598 () Bool)

(assert (=> b!5733547 m!6685598))

(assert (=> b!5733545 m!6684530))

(declare-fun m!6685600 () Bool)

(assert (=> b!5733545 m!6685600))

(declare-fun m!6685602 () Bool)

(assert (=> b!5733539 m!6685602))

(declare-fun m!6685604 () Bool)

(assert (=> b!5733544 m!6685604))

(assert (=> b!5733540 m!6684530))

(declare-fun m!6685606 () Bool)

(assert (=> b!5733540 m!6685606))

(assert (=> b!5733540 m!6685606))

(declare-fun m!6685608 () Bool)

(assert (=> b!5733540 m!6685608))

(declare-fun m!6685610 () Bool)

(assert (=> b!5733541 m!6685610))

(assert (=> b!5732585 d!1807873))

(declare-fun bs!1340150 () Bool)

(declare-fun d!1807883 () Bool)

(assert (= bs!1340150 (and d!1807883 b!5732599)))

(declare-fun lambda!310480 () Int)

(assert (=> bs!1340150 (= lambda!310480 lambda!310374)))

(declare-fun bs!1340151 () Bool)

(assert (= bs!1340151 (and d!1807883 d!1807759)))

(assert (=> bs!1340151 (= lambda!310480 lambda!310442)))

(declare-fun bs!1340152 () Bool)

(assert (= bs!1340152 (and d!1807883 d!1807833)))

(assert (=> bs!1340152 (= lambda!310480 lambda!310468)))

(declare-fun bs!1340153 () Bool)

(assert (= bs!1340153 (and d!1807883 d!1807873)))

(assert (=> bs!1340153 (= lambda!310480 lambda!310475)))

(declare-fun lt!2282369 () List!63517)

(assert (=> d!1807883 (forall!14864 lt!2282369 lambda!310480)))

(declare-fun e!3524945 () List!63517)

(assert (=> d!1807883 (= lt!2282369 e!3524945)))

(declare-fun c!1011783 () Bool)

(assert (=> d!1807883 (= c!1011783 ((_ is Cons!63394) zl!343))))

(assert (=> d!1807883 (= (unfocusZipperList!1167 zl!343) lt!2282369)))

(declare-fun b!5733572 () Bool)

(assert (=> b!5733572 (= e!3524945 (Cons!63393 (generalisedConcat!1354 (exprs!5623 (h!69842 zl!343))) (unfocusZipperList!1167 (t!376846 zl!343))))))

(declare-fun b!5733573 () Bool)

(assert (=> b!5733573 (= e!3524945 Nil!63393)))

(assert (= (and d!1807883 c!1011783) b!5733572))

(assert (= (and d!1807883 (not c!1011783)) b!5733573))

(declare-fun m!6685612 () Bool)

(assert (=> d!1807883 m!6685612))

(assert (=> b!5733572 m!6684460))

(declare-fun m!6685614 () Bool)

(assert (=> b!5733572 m!6685614))

(assert (=> b!5732585 d!1807883))

(declare-fun d!1807885 () Bool)

(declare-fun c!1011788 () Bool)

(assert (=> d!1807885 (= c!1011788 (isEmpty!35273 (_1!36139 lt!2282150)))))

(declare-fun e!3524952 () Bool)

(assert (=> d!1807885 (= (matchZipper!1877 lt!2282157 (_1!36139 lt!2282150)) e!3524952)))

(declare-fun b!5733584 () Bool)

(assert (=> b!5733584 (= e!3524952 (nullableZipper!1679 lt!2282157))))

(declare-fun b!5733585 () Bool)

(assert (=> b!5733585 (= e!3524952 (matchZipper!1877 (derivationStepZipper!1822 lt!2282157 (head!12137 (_1!36139 lt!2282150))) (tail!11232 (_1!36139 lt!2282150))))))

(assert (= (and d!1807885 c!1011788) b!5733584))

(assert (= (and d!1807885 (not c!1011788)) b!5733585))

(declare-fun m!6685616 () Bool)

(assert (=> d!1807885 m!6685616))

(declare-fun m!6685618 () Bool)

(assert (=> b!5733584 m!6685618))

(declare-fun m!6685620 () Bool)

(assert (=> b!5733585 m!6685620))

(assert (=> b!5733585 m!6685620))

(declare-fun m!6685622 () Bool)

(assert (=> b!5733585 m!6685622))

(declare-fun m!6685624 () Bool)

(assert (=> b!5733585 m!6685624))

(assert (=> b!5733585 m!6685622))

(assert (=> b!5733585 m!6685624))

(declare-fun m!6685626 () Bool)

(assert (=> b!5733585 m!6685626))

(assert (=> b!5732565 d!1807885))

(declare-fun b!5733623 () Bool)

(declare-fun e!3524981 () Bool)

(declare-fun call!438354 () Bool)

(assert (=> b!5733623 (= e!3524981 call!438354)))

(declare-fun b!5733624 () Bool)

(declare-fun e!3524978 () Bool)

(declare-fun e!3524980 () Bool)

(assert (=> b!5733624 (= e!3524978 e!3524980)))

(declare-fun c!1011803 () Bool)

(assert (=> b!5733624 (= c!1011803 ((_ is Star!15739) r!7292))))

(declare-fun bm!438348 () Bool)

(declare-fun call!438355 () Bool)

(assert (=> bm!438348 (= call!438355 call!438354)))

(declare-fun d!1807887 () Bool)

(declare-fun res!2421051 () Bool)

(assert (=> d!1807887 (=> res!2421051 e!3524978)))

(assert (=> d!1807887 (= res!2421051 ((_ is ElementMatch!15739) r!7292))))

(assert (=> d!1807887 (= (validRegex!7475 r!7292) e!3524978)))

(declare-fun b!5733625 () Bool)

(declare-fun e!3524979 () Bool)

(assert (=> b!5733625 (= e!3524979 call!438355)))

(declare-fun bm!438349 () Bool)

(declare-fun call!438353 () Bool)

(declare-fun c!1011802 () Bool)

(assert (=> bm!438349 (= call!438353 (validRegex!7475 (ite c!1011802 (regOne!31991 r!7292) (regOne!31990 r!7292))))))

(declare-fun b!5733626 () Bool)

(declare-fun res!2421053 () Bool)

(declare-fun e!3524977 () Bool)

(assert (=> b!5733626 (=> res!2421053 e!3524977)))

(assert (=> b!5733626 (= res!2421053 (not ((_ is Concat!24584) r!7292)))))

(declare-fun e!3524983 () Bool)

(assert (=> b!5733626 (= e!3524983 e!3524977)))

(declare-fun b!5733627 () Bool)

(assert (=> b!5733627 (= e!3524977 e!3524979)))

(declare-fun res!2421055 () Bool)

(assert (=> b!5733627 (=> (not res!2421055) (not e!3524979))))

(assert (=> b!5733627 (= res!2421055 call!438353)))

(declare-fun b!5733628 () Bool)

(declare-fun e!3524982 () Bool)

(assert (=> b!5733628 (= e!3524982 call!438355)))

(declare-fun bm!438350 () Bool)

(assert (=> bm!438350 (= call!438354 (validRegex!7475 (ite c!1011803 (reg!16068 r!7292) (ite c!1011802 (regTwo!31991 r!7292) (regTwo!31990 r!7292)))))))

(declare-fun b!5733629 () Bool)

(assert (=> b!5733629 (= e!3524980 e!3524981)))

(declare-fun res!2421052 () Bool)

(assert (=> b!5733629 (= res!2421052 (not (nullable!5771 (reg!16068 r!7292))))))

(assert (=> b!5733629 (=> (not res!2421052) (not e!3524981))))

(declare-fun b!5733630 () Bool)

(declare-fun res!2421054 () Bool)

(assert (=> b!5733630 (=> (not res!2421054) (not e!3524982))))

(assert (=> b!5733630 (= res!2421054 call!438353)))

(assert (=> b!5733630 (= e!3524983 e!3524982)))

(declare-fun b!5733631 () Bool)

(assert (=> b!5733631 (= e!3524980 e!3524983)))

(assert (=> b!5733631 (= c!1011802 ((_ is Union!15739) r!7292))))

(assert (= (and d!1807887 (not res!2421051)) b!5733624))

(assert (= (and b!5733624 c!1011803) b!5733629))

(assert (= (and b!5733624 (not c!1011803)) b!5733631))

(assert (= (and b!5733629 res!2421052) b!5733623))

(assert (= (and b!5733631 c!1011802) b!5733630))

(assert (= (and b!5733631 (not c!1011802)) b!5733626))

(assert (= (and b!5733630 res!2421054) b!5733628))

(assert (= (and b!5733626 (not res!2421053)) b!5733627))

(assert (= (and b!5733627 res!2421055) b!5733625))

(assert (= (or b!5733628 b!5733625) bm!438348))

(assert (= (or b!5733630 b!5733627) bm!438349))

(assert (= (or b!5733623 bm!438348) bm!438350))

(declare-fun m!6685658 () Bool)

(assert (=> bm!438349 m!6685658))

(declare-fun m!6685660 () Bool)

(assert (=> bm!438350 m!6685660))

(declare-fun m!6685662 () Bool)

(assert (=> b!5733629 m!6685662))

(assert (=> start!589940 d!1807887))

(declare-fun d!1807895 () Bool)

(assert (=> d!1807895 (= (matchR!7924 lt!2282156 s!2326) (matchRSpec!2842 lt!2282156 s!2326))))

(declare-fun lt!2282374 () Unit!156488)

(assert (=> d!1807895 (= lt!2282374 (choose!43400 lt!2282156 s!2326))))

(assert (=> d!1807895 (validRegex!7475 lt!2282156)))

(assert (=> d!1807895 (= (mainMatchTheorem!2842 lt!2282156 s!2326) lt!2282374)))

(declare-fun bs!1340165 () Bool)

(assert (= bs!1340165 d!1807895))

(assert (=> bs!1340165 m!6684516))

(assert (=> bs!1340165 m!6684494))

(declare-fun m!6685672 () Bool)

(assert (=> bs!1340165 m!6685672))

(declare-fun m!6685674 () Bool)

(assert (=> bs!1340165 m!6685674))

(assert (=> b!5732569 d!1807895))

(declare-fun d!1807897 () Bool)

(assert (=> d!1807897 (= (Exists!2839 lambda!310375) (choose!43404 lambda!310375))))

(declare-fun bs!1340166 () Bool)

(assert (= bs!1340166 d!1807897))

(declare-fun m!6685676 () Bool)

(assert (=> bs!1340166 m!6685676))

(assert (=> b!5732569 d!1807897))

(declare-fun b!5733634 () Bool)

(declare-fun res!2421060 () Bool)

(declare-fun e!3524987 () Bool)

(assert (=> b!5733634 (=> res!2421060 e!3524987)))

(assert (=> b!5733634 (= res!2421060 (not (isEmpty!35273 (tail!11232 s!2326))))))

(declare-fun b!5733637 () Bool)

(declare-fun e!3524988 () Bool)

(declare-fun e!3524989 () Bool)

(assert (=> b!5733637 (= e!3524988 e!3524989)))

(declare-fun res!2421062 () Bool)

(assert (=> b!5733637 (=> (not res!2421062) (not e!3524989))))

(declare-fun lt!2282375 () Bool)

(assert (=> b!5733637 (= res!2421062 (not lt!2282375))))

(declare-fun b!5733638 () Bool)

(declare-fun res!2421056 () Bool)

(declare-fun e!3524986 () Bool)

(assert (=> b!5733638 (=> (not res!2421056) (not e!3524986))))

(declare-fun call!438356 () Bool)

(assert (=> b!5733638 (= res!2421056 (not call!438356))))

(declare-fun b!5733639 () Bool)

(declare-fun e!3524990 () Bool)

(assert (=> b!5733639 (= e!3524990 (nullable!5771 lt!2282156))))

(declare-fun b!5733640 () Bool)

(declare-fun res!2421057 () Bool)

(assert (=> b!5733640 (=> (not res!2421057) (not e!3524986))))

(assert (=> b!5733640 (= res!2421057 (isEmpty!35273 (tail!11232 s!2326)))))

(declare-fun b!5733641 () Bool)

(declare-fun e!3524985 () Bool)

(assert (=> b!5733641 (= e!3524985 (not lt!2282375))))

(declare-fun b!5733642 () Bool)

(declare-fun res!2421061 () Bool)

(assert (=> b!5733642 (=> res!2421061 e!3524988)))

(assert (=> b!5733642 (= res!2421061 e!3524986)))

(declare-fun res!2421058 () Bool)

(assert (=> b!5733642 (=> (not res!2421058) (not e!3524986))))

(assert (=> b!5733642 (= res!2421058 lt!2282375)))

(declare-fun b!5733643 () Bool)

(assert (=> b!5733643 (= e!3524986 (= (head!12137 s!2326) (c!1011505 lt!2282156)))))

(declare-fun bm!438351 () Bool)

(assert (=> bm!438351 (= call!438356 (isEmpty!35273 s!2326))))

(declare-fun b!5733645 () Bool)

(assert (=> b!5733645 (= e!3524987 (not (= (head!12137 s!2326) (c!1011505 lt!2282156))))))

(declare-fun b!5733646 () Bool)

(declare-fun e!3524984 () Bool)

(assert (=> b!5733646 (= e!3524984 e!3524985)))

(declare-fun c!1011804 () Bool)

(assert (=> b!5733646 (= c!1011804 ((_ is EmptyLang!15739) lt!2282156))))

(declare-fun b!5733647 () Bool)

(assert (=> b!5733647 (= e!3524984 (= lt!2282375 call!438356))))

(declare-fun b!5733648 () Bool)

(assert (=> b!5733648 (= e!3524990 (matchR!7924 (derivativeStep!4532 lt!2282156 (head!12137 s!2326)) (tail!11232 s!2326)))))

(declare-fun b!5733649 () Bool)

(assert (=> b!5733649 (= e!3524989 e!3524987)))

(declare-fun res!2421059 () Bool)

(assert (=> b!5733649 (=> res!2421059 e!3524987)))

(assert (=> b!5733649 (= res!2421059 call!438356)))

(declare-fun d!1807899 () Bool)

(assert (=> d!1807899 e!3524984))

(declare-fun c!1011805 () Bool)

(assert (=> d!1807899 (= c!1011805 ((_ is EmptyExpr!15739) lt!2282156))))

(assert (=> d!1807899 (= lt!2282375 e!3524990)))

(declare-fun c!1011806 () Bool)

(assert (=> d!1807899 (= c!1011806 (isEmpty!35273 s!2326))))

(assert (=> d!1807899 (validRegex!7475 lt!2282156)))

(assert (=> d!1807899 (= (matchR!7924 lt!2282156 s!2326) lt!2282375)))

(declare-fun b!5733644 () Bool)

(declare-fun res!2421063 () Bool)

(assert (=> b!5733644 (=> res!2421063 e!3524988)))

(assert (=> b!5733644 (= res!2421063 (not ((_ is ElementMatch!15739) lt!2282156)))))

(assert (=> b!5733644 (= e!3524985 e!3524988)))

(assert (= (and d!1807899 c!1011806) b!5733639))

(assert (= (and d!1807899 (not c!1011806)) b!5733648))

(assert (= (and d!1807899 c!1011805) b!5733647))

(assert (= (and d!1807899 (not c!1011805)) b!5733646))

(assert (= (and b!5733646 c!1011804) b!5733641))

(assert (= (and b!5733646 (not c!1011804)) b!5733644))

(assert (= (and b!5733644 (not res!2421063)) b!5733642))

(assert (= (and b!5733642 res!2421058) b!5733638))

(assert (= (and b!5733638 res!2421056) b!5733640))

(assert (= (and b!5733640 res!2421057) b!5733643))

(assert (= (and b!5733642 (not res!2421061)) b!5733637))

(assert (= (and b!5733637 res!2421062) b!5733649))

(assert (= (and b!5733649 (not res!2421059)) b!5733634))

(assert (= (and b!5733634 (not res!2421060)) b!5733645))

(assert (= (or b!5733647 b!5733638 b!5733649) bm!438351))

(assert (=> bm!438351 m!6684662))

(assert (=> b!5733640 m!6684734))

(assert (=> b!5733640 m!6684734))

(assert (=> b!5733640 m!6684736))

(assert (=> b!5733643 m!6684738))

(assert (=> d!1807899 m!6684662))

(assert (=> d!1807899 m!6685674))

(assert (=> b!5733648 m!6684738))

(assert (=> b!5733648 m!6684738))

(declare-fun m!6685678 () Bool)

(assert (=> b!5733648 m!6685678))

(assert (=> b!5733648 m!6684734))

(assert (=> b!5733648 m!6685678))

(assert (=> b!5733648 m!6684734))

(declare-fun m!6685680 () Bool)

(assert (=> b!5733648 m!6685680))

(assert (=> b!5733645 m!6684738))

(declare-fun m!6685682 () Bool)

(assert (=> b!5733639 m!6685682))

(assert (=> b!5733634 m!6684734))

(assert (=> b!5733634 m!6684734))

(assert (=> b!5733634 m!6684736))

(assert (=> b!5732569 d!1807899))

(declare-fun d!1807901 () Bool)

(assert (=> d!1807901 (matchR!7924 (Concat!24584 (reg!16068 (regOne!31990 r!7292)) lt!2282138) (++!13950 (_1!36139 lt!2282150) (_2!36139 lt!2282150)))))

(declare-fun lt!2282378 () Unit!156488)

(declare-fun choose!43426 (Regex!15739 Regex!15739 List!63516 List!63516) Unit!156488)

(assert (=> d!1807901 (= lt!2282378 (choose!43426 (reg!16068 (regOne!31990 r!7292)) lt!2282138 (_1!36139 lt!2282150) (_2!36139 lt!2282150)))))

(declare-fun e!3525016 () Bool)

(assert (=> d!1807901 e!3525016))

(declare-fun res!2421066 () Bool)

(assert (=> d!1807901 (=> (not res!2421066) (not e!3525016))))

(assert (=> d!1807901 (= res!2421066 (validRegex!7475 (reg!16068 (regOne!31990 r!7292))))))

(assert (=> d!1807901 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!276 (reg!16068 (regOne!31990 r!7292)) lt!2282138 (_1!36139 lt!2282150) (_2!36139 lt!2282150)) lt!2282378)))

(declare-fun b!5733702 () Bool)

(assert (=> b!5733702 (= e!3525016 (validRegex!7475 lt!2282138))))

(assert (= (and d!1807901 res!2421066) b!5733702))

(assert (=> d!1807901 m!6684586))

(assert (=> d!1807901 m!6684586))

(declare-fun m!6685688 () Bool)

(assert (=> d!1807901 m!6685688))

(declare-fun m!6685690 () Bool)

(assert (=> d!1807901 m!6685690))

(assert (=> d!1807901 m!6685284))

(declare-fun m!6685692 () Bool)

(assert (=> b!5733702 m!6685692))

(assert (=> b!5732569 d!1807901))

(declare-fun d!1807907 () Bool)

(assert (=> d!1807907 (= (isDefined!12451 lt!2282126) (not (isEmpty!35274 lt!2282126)))))

(declare-fun bs!1340170 () Bool)

(assert (= bs!1340170 d!1807907))

(declare-fun m!6685694 () Bool)

(assert (=> bs!1340170 m!6685694))

(assert (=> b!5732569 d!1807907))

(assert (=> b!5732569 d!1807671))

(declare-fun bs!1340173 () Bool)

(declare-fun d!1807911 () Bool)

(assert (= bs!1340173 (and d!1807911 d!1807759)))

(declare-fun lambda!310487 () Int)

(assert (=> bs!1340173 (= lambda!310487 lambda!310442)))

(declare-fun bs!1340174 () Bool)

(assert (= bs!1340174 (and d!1807911 d!1807833)))

(assert (=> bs!1340174 (= lambda!310487 lambda!310468)))

(declare-fun bs!1340175 () Bool)

(assert (= bs!1340175 (and d!1807911 d!1807873)))

(assert (=> bs!1340175 (= lambda!310487 lambda!310475)))

(declare-fun bs!1340176 () Bool)

(assert (= bs!1340176 (and d!1807911 d!1807883)))

(assert (=> bs!1340176 (= lambda!310487 lambda!310480)))

(declare-fun bs!1340177 () Bool)

(assert (= bs!1340177 (and d!1807911 b!5732599)))

(assert (=> bs!1340177 (= lambda!310487 lambda!310374)))

(assert (=> d!1807911 (matchZipper!1877 (store ((as const (Array Context!10246 Bool)) false) (Context!10247 (++!13951 (exprs!5623 lt!2282119) (exprs!5623 lt!2282143))) true) (++!13950 (_1!36139 lt!2282150) (_2!36139 lt!2282150)))))

(declare-fun lt!2282385 () Unit!156488)

(assert (=> d!1807911 (= lt!2282385 (lemmaConcatPreservesForall!308 (exprs!5623 lt!2282119) (exprs!5623 lt!2282143) lambda!310487))))

(declare-fun lt!2282384 () Unit!156488)

(declare-fun choose!43427 (Context!10246 Context!10246 List!63516 List!63516) Unit!156488)

(assert (=> d!1807911 (= lt!2282384 (choose!43427 lt!2282119 lt!2282143 (_1!36139 lt!2282150) (_2!36139 lt!2282150)))))

(assert (=> d!1807911 (matchZipper!1877 (store ((as const (Array Context!10246 Bool)) false) lt!2282119 true) (_1!36139 lt!2282150))))

(assert (=> d!1807911 (= (lemmaConcatenateContextMatchesConcatOfStrings!138 lt!2282119 lt!2282143 (_1!36139 lt!2282150) (_2!36139 lt!2282150)) lt!2282384)))

(declare-fun bs!1340178 () Bool)

(assert (= bs!1340178 d!1807911))

(declare-fun m!6685700 () Bool)

(assert (=> bs!1340178 m!6685700))

(assert (=> bs!1340178 m!6684586))

(declare-fun m!6685702 () Bool)

(assert (=> bs!1340178 m!6685702))

(assert (=> bs!1340178 m!6684570))

(declare-fun m!6685704 () Bool)

(assert (=> bs!1340178 m!6685704))

(assert (=> bs!1340178 m!6684570))

(declare-fun m!6685706 () Bool)

(assert (=> bs!1340178 m!6685706))

(assert (=> bs!1340178 m!6685700))

(assert (=> bs!1340178 m!6684586))

(declare-fun m!6685708 () Bool)

(assert (=> bs!1340178 m!6685708))

(declare-fun m!6685710 () Bool)

(assert (=> bs!1340178 m!6685710))

(assert (=> b!5732569 d!1807911))

(declare-fun d!1807917 () Bool)

(assert (=> d!1807917 (= (matchR!7924 lt!2282138 (_2!36139 lt!2282150)) (matchZipper!1877 lt!2282159 (_2!36139 lt!2282150)))))

(declare-fun lt!2282388 () Unit!156488)

(declare-fun choose!43428 ((InoxSet Context!10246) List!63518 Regex!15739 List!63516) Unit!156488)

(assert (=> d!1807917 (= lt!2282388 (choose!43428 lt!2282159 lt!2282164 lt!2282138 (_2!36139 lt!2282150)))))

(assert (=> d!1807917 (validRegex!7475 lt!2282138)))

(assert (=> d!1807917 (= (theoremZipperRegexEquiv!659 lt!2282159 lt!2282164 lt!2282138 (_2!36139 lt!2282150)) lt!2282388)))

(declare-fun bs!1340179 () Bool)

(assert (= bs!1340179 d!1807917))

(assert (=> bs!1340179 m!6684500))

(assert (=> bs!1340179 m!6684528))

(declare-fun m!6685712 () Bool)

(assert (=> bs!1340179 m!6685712))

(assert (=> bs!1340179 m!6685692))

(assert (=> b!5732569 d!1807917))

(declare-fun d!1807919 () Bool)

(assert (=> d!1807919 (= (get!21864 lt!2282126) (v!51802 lt!2282126))))

(assert (=> b!5732569 d!1807919))

(declare-fun bs!1340180 () Bool)

(declare-fun d!1807921 () Bool)

(assert (= bs!1340180 (and d!1807921 b!5732909)))

(declare-fun lambda!310488 () Int)

(assert (=> bs!1340180 (not (= lambda!310488 lambda!310395))))

(declare-fun bs!1340181 () Bool)

(assert (= bs!1340181 (and d!1807921 d!1807817)))

(assert (=> bs!1340181 (not (= lambda!310488 lambda!310458))))

(declare-fun bs!1340182 () Bool)

(assert (= bs!1340182 (and d!1807921 d!1807777)))

(assert (=> bs!1340182 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310488 lambda!310445))))

(declare-fun bs!1340183 () Bool)

(assert (= bs!1340183 (and d!1807921 b!5732562)))

(assert (=> bs!1340183 (not (= lambda!310488 lambda!310379))))

(assert (=> bs!1340181 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) (Star!15739 (reg!16068 (regOne!31990 r!7292))))) (= lambda!310488 lambda!310457))))

(declare-fun bs!1340184 () Bool)

(assert (= bs!1340184 (and d!1807921 b!5732559)))

(assert (=> bs!1340184 (not (= lambda!310488 lambda!310371))))

(assert (=> bs!1340183 (not (= lambda!310488 lambda!310378))))

(declare-fun bs!1340185 () Bool)

(assert (= bs!1340185 (and d!1807921 b!5732908)))

(assert (=> bs!1340185 (not (= lambda!310488 lambda!310396))))

(assert (=> bs!1340184 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310488 lambda!310370))))

(assert (=> bs!1340182 (not (= lambda!310488 lambda!310446))))

(declare-fun bs!1340186 () Bool)

(assert (= bs!1340186 (and d!1807921 d!1807639)))

(assert (=> bs!1340186 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310488 lambda!310416))))

(declare-fun bs!1340187 () Bool)

(assert (= bs!1340187 (and d!1807921 b!5732569)))

(assert (=> bs!1340187 (= lambda!310488 lambda!310375)))

(declare-fun bs!1340188 () Bool)

(assert (= bs!1340188 (and d!1807921 b!5733350)))

(assert (=> bs!1340188 (not (= lambda!310488 lambda!310447))))

(assert (=> bs!1340187 (not (= lambda!310488 lambda!310376))))

(declare-fun bs!1340189 () Bool)

(assert (= bs!1340189 (and d!1807921 b!5733349)))

(assert (=> bs!1340189 (not (= lambda!310488 lambda!310448))))

(declare-fun bs!1340190 () Bool)

(assert (= bs!1340190 (and d!1807921 d!1807769)))

(assert (=> bs!1340190 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310488 lambda!310444))))

(assert (=> bs!1340183 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310488 lambda!310377))))

(declare-fun bs!1340191 () Bool)

(assert (= bs!1340191 (and d!1807921 d!1807635)))

(assert (=> bs!1340191 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310488 lambda!310411))))

(assert (=> bs!1340186 (not (= lambda!310488 lambda!310417))))

(declare-fun bs!1340192 () Bool)

(assert (= bs!1340192 (and d!1807921 b!5732755)))

(assert (=> bs!1340192 (not (= lambda!310488 lambda!310391))))

(declare-fun bs!1340193 () Bool)

(assert (= bs!1340193 (and d!1807921 b!5732756)))

(assert (=> bs!1340193 (not (= lambda!310488 lambda!310390))))

(assert (=> d!1807921 true))

(assert (=> d!1807921 true))

(assert (=> d!1807921 true))

(assert (=> d!1807921 (= (isDefined!12451 (findConcatSeparation!2162 lt!2282110 (regTwo!31990 r!7292) Nil!63392 s!2326 s!2326)) (Exists!2839 lambda!310488))))

(declare-fun lt!2282389 () Unit!156488)

(assert (=> d!1807921 (= lt!2282389 (choose!43406 lt!2282110 (regTwo!31990 r!7292) s!2326))))

(assert (=> d!1807921 (validRegex!7475 lt!2282110)))

(assert (=> d!1807921 (= (lemmaFindConcatSeparationEquivalentToExists!1926 lt!2282110 (regTwo!31990 r!7292) s!2326) lt!2282389)))

(declare-fun bs!1340194 () Bool)

(assert (= bs!1340194 d!1807921))

(assert (=> bs!1340194 m!6684480))

(declare-fun m!6685714 () Bool)

(assert (=> bs!1340194 m!6685714))

(declare-fun m!6685716 () Bool)

(assert (=> bs!1340194 m!6685716))

(assert (=> bs!1340194 m!6684480))

(declare-fun m!6685718 () Bool)

(assert (=> bs!1340194 m!6685718))

(assert (=> bs!1340194 m!6685274))

(assert (=> b!5732569 d!1807921))

(declare-fun b!5733703 () Bool)

(declare-fun res!2421071 () Bool)

(declare-fun e!3525020 () Bool)

(assert (=> b!5733703 (=> res!2421071 e!3525020)))

(assert (=> b!5733703 (= res!2421071 (not (isEmpty!35273 (tail!11232 lt!2282125))))))

(declare-fun b!5733704 () Bool)

(declare-fun e!3525021 () Bool)

(declare-fun e!3525022 () Bool)

(assert (=> b!5733704 (= e!3525021 e!3525022)))

(declare-fun res!2421073 () Bool)

(assert (=> b!5733704 (=> (not res!2421073) (not e!3525022))))

(declare-fun lt!2282390 () Bool)

(assert (=> b!5733704 (= res!2421073 (not lt!2282390))))

(declare-fun b!5733705 () Bool)

(declare-fun res!2421067 () Bool)

(declare-fun e!3525019 () Bool)

(assert (=> b!5733705 (=> (not res!2421067) (not e!3525019))))

(declare-fun call!438357 () Bool)

(assert (=> b!5733705 (= res!2421067 (not call!438357))))

(declare-fun b!5733706 () Bool)

(declare-fun e!3525023 () Bool)

(assert (=> b!5733706 (= e!3525023 (nullable!5771 lt!2282149))))

(declare-fun b!5733707 () Bool)

(declare-fun res!2421068 () Bool)

(assert (=> b!5733707 (=> (not res!2421068) (not e!3525019))))

(assert (=> b!5733707 (= res!2421068 (isEmpty!35273 (tail!11232 lt!2282125)))))

(declare-fun b!5733708 () Bool)

(declare-fun e!3525018 () Bool)

(assert (=> b!5733708 (= e!3525018 (not lt!2282390))))

(declare-fun b!5733709 () Bool)

(declare-fun res!2421072 () Bool)

(assert (=> b!5733709 (=> res!2421072 e!3525021)))

(assert (=> b!5733709 (= res!2421072 e!3525019)))

(declare-fun res!2421069 () Bool)

(assert (=> b!5733709 (=> (not res!2421069) (not e!3525019))))

(assert (=> b!5733709 (= res!2421069 lt!2282390)))

(declare-fun b!5733710 () Bool)

(assert (=> b!5733710 (= e!3525019 (= (head!12137 lt!2282125) (c!1011505 lt!2282149)))))

(declare-fun bm!438352 () Bool)

(assert (=> bm!438352 (= call!438357 (isEmpty!35273 lt!2282125))))

(declare-fun b!5733712 () Bool)

(assert (=> b!5733712 (= e!3525020 (not (= (head!12137 lt!2282125) (c!1011505 lt!2282149))))))

(declare-fun b!5733713 () Bool)

(declare-fun e!3525017 () Bool)

(assert (=> b!5733713 (= e!3525017 e!3525018)))

(declare-fun c!1011807 () Bool)

(assert (=> b!5733713 (= c!1011807 ((_ is EmptyLang!15739) lt!2282149))))

(declare-fun b!5733714 () Bool)

(assert (=> b!5733714 (= e!3525017 (= lt!2282390 call!438357))))

(declare-fun b!5733715 () Bool)

(assert (=> b!5733715 (= e!3525023 (matchR!7924 (derivativeStep!4532 lt!2282149 (head!12137 lt!2282125)) (tail!11232 lt!2282125)))))

(declare-fun b!5733716 () Bool)

(assert (=> b!5733716 (= e!3525022 e!3525020)))

(declare-fun res!2421070 () Bool)

(assert (=> b!5733716 (=> res!2421070 e!3525020)))

(assert (=> b!5733716 (= res!2421070 call!438357)))

(declare-fun d!1807923 () Bool)

(assert (=> d!1807923 e!3525017))

(declare-fun c!1011808 () Bool)

(assert (=> d!1807923 (= c!1011808 ((_ is EmptyExpr!15739) lt!2282149))))

(assert (=> d!1807923 (= lt!2282390 e!3525023)))

(declare-fun c!1011809 () Bool)

(assert (=> d!1807923 (= c!1011809 (isEmpty!35273 lt!2282125))))

(assert (=> d!1807923 (validRegex!7475 lt!2282149)))

(assert (=> d!1807923 (= (matchR!7924 lt!2282149 lt!2282125) lt!2282390)))

(declare-fun b!5733711 () Bool)

(declare-fun res!2421074 () Bool)

(assert (=> b!5733711 (=> res!2421074 e!3525021)))

(assert (=> b!5733711 (= res!2421074 (not ((_ is ElementMatch!15739) lt!2282149)))))

(assert (=> b!5733711 (= e!3525018 e!3525021)))

(assert (= (and d!1807923 c!1011809) b!5733706))

(assert (= (and d!1807923 (not c!1011809)) b!5733715))

(assert (= (and d!1807923 c!1011808) b!5733714))

(assert (= (and d!1807923 (not c!1011808)) b!5733713))

(assert (= (and b!5733713 c!1011807) b!5733708))

(assert (= (and b!5733713 (not c!1011807)) b!5733711))

(assert (= (and b!5733711 (not res!2421074)) b!5733709))

(assert (= (and b!5733709 res!2421069) b!5733705))

(assert (= (and b!5733705 res!2421067) b!5733707))

(assert (= (and b!5733707 res!2421068) b!5733710))

(assert (= (and b!5733709 (not res!2421072)) b!5733704))

(assert (= (and b!5733704 res!2421073) b!5733716))

(assert (= (and b!5733716 (not res!2421070)) b!5733703))

(assert (= (and b!5733703 (not res!2421071)) b!5733712))

(assert (= (or b!5733714 b!5733705 b!5733716) bm!438352))

(declare-fun m!6685720 () Bool)

(assert (=> bm!438352 m!6685720))

(declare-fun m!6685722 () Bool)

(assert (=> b!5733707 m!6685722))

(assert (=> b!5733707 m!6685722))

(declare-fun m!6685724 () Bool)

(assert (=> b!5733707 m!6685724))

(declare-fun m!6685726 () Bool)

(assert (=> b!5733710 m!6685726))

(assert (=> d!1807923 m!6685720))

(assert (=> d!1807923 m!6684808))

(assert (=> b!5733715 m!6685726))

(assert (=> b!5733715 m!6685726))

(declare-fun m!6685728 () Bool)

(assert (=> b!5733715 m!6685728))

(assert (=> b!5733715 m!6685722))

(assert (=> b!5733715 m!6685728))

(assert (=> b!5733715 m!6685722))

(declare-fun m!6685730 () Bool)

(assert (=> b!5733715 m!6685730))

(assert (=> b!5733712 m!6685726))

(assert (=> b!5733706 m!6684820))

(assert (=> b!5733703 m!6685722))

(assert (=> b!5733703 m!6685722))

(assert (=> b!5733703 m!6685724))

(assert (=> b!5732569 d!1807923))

(declare-fun d!1807925 () Bool)

(declare-fun c!1011810 () Bool)

(assert (=> d!1807925 (= c!1011810 (isEmpty!35273 lt!2282125))))

(declare-fun e!3525024 () Bool)

(assert (=> d!1807925 (= (matchZipper!1877 (store ((as const (Array Context!10246 Bool)) false) (Context!10247 (++!13951 lt!2282148 lt!2282116)) true) lt!2282125) e!3525024)))

(declare-fun b!5733717 () Bool)

(assert (=> b!5733717 (= e!3525024 (nullableZipper!1679 (store ((as const (Array Context!10246 Bool)) false) (Context!10247 (++!13951 lt!2282148 lt!2282116)) true)))))

(declare-fun b!5733718 () Bool)

(assert (=> b!5733718 (= e!3525024 (matchZipper!1877 (derivationStepZipper!1822 (store ((as const (Array Context!10246 Bool)) false) (Context!10247 (++!13951 lt!2282148 lt!2282116)) true) (head!12137 lt!2282125)) (tail!11232 lt!2282125)))))

(assert (= (and d!1807925 c!1011810) b!5733717))

(assert (= (and d!1807925 (not c!1011810)) b!5733718))

(assert (=> d!1807925 m!6685720))

(assert (=> b!5733717 m!6684476))

(declare-fun m!6685732 () Bool)

(assert (=> b!5733717 m!6685732))

(assert (=> b!5733718 m!6685726))

(assert (=> b!5733718 m!6684476))

(assert (=> b!5733718 m!6685726))

(declare-fun m!6685734 () Bool)

(assert (=> b!5733718 m!6685734))

(assert (=> b!5733718 m!6685722))

(assert (=> b!5733718 m!6685734))

(assert (=> b!5733718 m!6685722))

(declare-fun m!6685736 () Bool)

(assert (=> b!5733718 m!6685736))

(assert (=> b!5732569 d!1807925))

(declare-fun b!5733719 () Bool)

(declare-fun e!3525029 () Option!15748)

(declare-fun e!3525027 () Option!15748)

(assert (=> b!5733719 (= e!3525029 e!3525027)))

(declare-fun c!1011812 () Bool)

(assert (=> b!5733719 (= c!1011812 ((_ is Nil!63392) s!2326))))

(declare-fun b!5733720 () Bool)

(assert (=> b!5733720 (= e!3525029 (Some!15747 (tuple2!65673 Nil!63392 s!2326)))))

(declare-fun b!5733721 () Bool)

(assert (=> b!5733721 (= e!3525027 None!15747)))

(declare-fun b!5733722 () Bool)

(declare-fun e!3525025 () Bool)

(declare-fun lt!2282393 () Option!15748)

(assert (=> b!5733722 (= e!3525025 (= (++!13950 (_1!36139 (get!21864 lt!2282393)) (_2!36139 (get!21864 lt!2282393))) s!2326))))

(declare-fun b!5733723 () Bool)

(declare-fun e!3525026 () Bool)

(assert (=> b!5733723 (= e!3525026 (not (isDefined!12451 lt!2282393)))))

(declare-fun b!5733724 () Bool)

(declare-fun lt!2282392 () Unit!156488)

(declare-fun lt!2282391 () Unit!156488)

(assert (=> b!5733724 (= lt!2282392 lt!2282391)))

(assert (=> b!5733724 (= (++!13950 (++!13950 Nil!63392 (Cons!63392 (h!69840 s!2326) Nil!63392)) (t!376844 s!2326)) s!2326)))

(assert (=> b!5733724 (= lt!2282391 (lemmaMoveElementToOtherListKeepsConcatEq!2082 Nil!63392 (h!69840 s!2326) (t!376844 s!2326) s!2326))))

(assert (=> b!5733724 (= e!3525027 (findConcatSeparation!2162 lt!2282110 (regTwo!31990 r!7292) (++!13950 Nil!63392 (Cons!63392 (h!69840 s!2326) Nil!63392)) (t!376844 s!2326) s!2326))))

(declare-fun b!5733725 () Bool)

(declare-fun res!2421077 () Bool)

(assert (=> b!5733725 (=> (not res!2421077) (not e!3525025))))

(assert (=> b!5733725 (= res!2421077 (matchR!7924 (regTwo!31990 r!7292) (_2!36139 (get!21864 lt!2282393))))))

(declare-fun b!5733726 () Bool)

(declare-fun res!2421076 () Bool)

(assert (=> b!5733726 (=> (not res!2421076) (not e!3525025))))

(assert (=> b!5733726 (= res!2421076 (matchR!7924 lt!2282110 (_1!36139 (get!21864 lt!2282393))))))

(declare-fun d!1807927 () Bool)

(assert (=> d!1807927 e!3525026))

(declare-fun res!2421075 () Bool)

(assert (=> d!1807927 (=> res!2421075 e!3525026)))

(assert (=> d!1807927 (= res!2421075 e!3525025)))

(declare-fun res!2421078 () Bool)

(assert (=> d!1807927 (=> (not res!2421078) (not e!3525025))))

(assert (=> d!1807927 (= res!2421078 (isDefined!12451 lt!2282393))))

(assert (=> d!1807927 (= lt!2282393 e!3525029)))

(declare-fun c!1011811 () Bool)

(declare-fun e!3525028 () Bool)

(assert (=> d!1807927 (= c!1011811 e!3525028)))

(declare-fun res!2421079 () Bool)

(assert (=> d!1807927 (=> (not res!2421079) (not e!3525028))))

(assert (=> d!1807927 (= res!2421079 (matchR!7924 lt!2282110 Nil!63392))))

(assert (=> d!1807927 (validRegex!7475 lt!2282110)))

(assert (=> d!1807927 (= (findConcatSeparation!2162 lt!2282110 (regTwo!31990 r!7292) Nil!63392 s!2326 s!2326) lt!2282393)))

(declare-fun b!5733727 () Bool)

(assert (=> b!5733727 (= e!3525028 (matchR!7924 (regTwo!31990 r!7292) s!2326))))

(assert (= (and d!1807927 res!2421079) b!5733727))

(assert (= (and d!1807927 c!1011811) b!5733720))

(assert (= (and d!1807927 (not c!1011811)) b!5733719))

(assert (= (and b!5733719 c!1011812) b!5733721))

(assert (= (and b!5733719 (not c!1011812)) b!5733724))

(assert (= (and d!1807927 res!2421078) b!5733726))

(assert (= (and b!5733726 res!2421076) b!5733725))

(assert (= (and b!5733725 res!2421077) b!5733722))

(assert (= (and d!1807927 (not res!2421075)) b!5733723))

(declare-fun m!6685738 () Bool)

(assert (=> b!5733723 m!6685738))

(declare-fun m!6685740 () Bool)

(assert (=> b!5733725 m!6685740))

(declare-fun m!6685742 () Bool)

(assert (=> b!5733725 m!6685742))

(assert (=> b!5733722 m!6685740))

(declare-fun m!6685744 () Bool)

(assert (=> b!5733722 m!6685744))

(assert (=> b!5733727 m!6684866))

(assert (=> b!5733726 m!6685740))

(declare-fun m!6685746 () Bool)

(assert (=> b!5733726 m!6685746))

(assert (=> b!5733724 m!6684870))

(assert (=> b!5733724 m!6684870))

(assert (=> b!5733724 m!6684872))

(assert (=> b!5733724 m!6684874))

(assert (=> b!5733724 m!6684870))

(declare-fun m!6685748 () Bool)

(assert (=> b!5733724 m!6685748))

(assert (=> d!1807927 m!6685738))

(declare-fun m!6685750 () Bool)

(assert (=> d!1807927 m!6685750))

(assert (=> d!1807927 m!6685274))

(assert (=> b!5732569 d!1807927))

(declare-fun b!5733728 () Bool)

(declare-fun res!2421084 () Bool)

(declare-fun e!3525033 () Bool)

(assert (=> b!5733728 (=> res!2421084 e!3525033)))

(assert (=> b!5733728 (= res!2421084 (not (isEmpty!35273 (tail!11232 (_1!36139 lt!2282146)))))))

(declare-fun b!5733729 () Bool)

(declare-fun e!3525034 () Bool)

(declare-fun e!3525035 () Bool)

(assert (=> b!5733729 (= e!3525034 e!3525035)))

(declare-fun res!2421086 () Bool)

(assert (=> b!5733729 (=> (not res!2421086) (not e!3525035))))

(declare-fun lt!2282394 () Bool)

(assert (=> b!5733729 (= res!2421086 (not lt!2282394))))

(declare-fun b!5733730 () Bool)

(declare-fun res!2421080 () Bool)

(declare-fun e!3525032 () Bool)

(assert (=> b!5733730 (=> (not res!2421080) (not e!3525032))))

(declare-fun call!438358 () Bool)

(assert (=> b!5733730 (= res!2421080 (not call!438358))))

(declare-fun b!5733731 () Bool)

(declare-fun e!3525036 () Bool)

(assert (=> b!5733731 (= e!3525036 (nullable!5771 lt!2282110))))

(declare-fun b!5733732 () Bool)

(declare-fun res!2421081 () Bool)

(assert (=> b!5733732 (=> (not res!2421081) (not e!3525032))))

(assert (=> b!5733732 (= res!2421081 (isEmpty!35273 (tail!11232 (_1!36139 lt!2282146))))))

(declare-fun b!5733733 () Bool)

(declare-fun e!3525031 () Bool)

(assert (=> b!5733733 (= e!3525031 (not lt!2282394))))

(declare-fun b!5733734 () Bool)

(declare-fun res!2421085 () Bool)

(assert (=> b!5733734 (=> res!2421085 e!3525034)))

(assert (=> b!5733734 (= res!2421085 e!3525032)))

(declare-fun res!2421082 () Bool)

(assert (=> b!5733734 (=> (not res!2421082) (not e!3525032))))

(assert (=> b!5733734 (= res!2421082 lt!2282394)))

(declare-fun b!5733735 () Bool)

(assert (=> b!5733735 (= e!3525032 (= (head!12137 (_1!36139 lt!2282146)) (c!1011505 lt!2282110)))))

(declare-fun bm!438353 () Bool)

(assert (=> bm!438353 (= call!438358 (isEmpty!35273 (_1!36139 lt!2282146)))))

(declare-fun b!5733737 () Bool)

(assert (=> b!5733737 (= e!3525033 (not (= (head!12137 (_1!36139 lt!2282146)) (c!1011505 lt!2282110))))))

(declare-fun b!5733738 () Bool)

(declare-fun e!3525030 () Bool)

(assert (=> b!5733738 (= e!3525030 e!3525031)))

(declare-fun c!1011813 () Bool)

(assert (=> b!5733738 (= c!1011813 ((_ is EmptyLang!15739) lt!2282110))))

(declare-fun b!5733739 () Bool)

(assert (=> b!5733739 (= e!3525030 (= lt!2282394 call!438358))))

(declare-fun b!5733740 () Bool)

(assert (=> b!5733740 (= e!3525036 (matchR!7924 (derivativeStep!4532 lt!2282110 (head!12137 (_1!36139 lt!2282146))) (tail!11232 (_1!36139 lt!2282146))))))

(declare-fun b!5733741 () Bool)

(assert (=> b!5733741 (= e!3525035 e!3525033)))

(declare-fun res!2421083 () Bool)

(assert (=> b!5733741 (=> res!2421083 e!3525033)))

(assert (=> b!5733741 (= res!2421083 call!438358)))

(declare-fun d!1807929 () Bool)

(assert (=> d!1807929 e!3525030))

(declare-fun c!1011814 () Bool)

(assert (=> d!1807929 (= c!1011814 ((_ is EmptyExpr!15739) lt!2282110))))

(assert (=> d!1807929 (= lt!2282394 e!3525036)))

(declare-fun c!1011815 () Bool)

(assert (=> d!1807929 (= c!1011815 (isEmpty!35273 (_1!36139 lt!2282146)))))

(assert (=> d!1807929 (validRegex!7475 lt!2282110)))

(assert (=> d!1807929 (= (matchR!7924 lt!2282110 (_1!36139 lt!2282146)) lt!2282394)))

(declare-fun b!5733736 () Bool)

(declare-fun res!2421087 () Bool)

(assert (=> b!5733736 (=> res!2421087 e!3525034)))

(assert (=> b!5733736 (= res!2421087 (not ((_ is ElementMatch!15739) lt!2282110)))))

(assert (=> b!5733736 (= e!3525031 e!3525034)))

(assert (= (and d!1807929 c!1011815) b!5733731))

(assert (= (and d!1807929 (not c!1011815)) b!5733740))

(assert (= (and d!1807929 c!1011814) b!5733739))

(assert (= (and d!1807929 (not c!1011814)) b!5733738))

(assert (= (and b!5733738 c!1011813) b!5733733))

(assert (= (and b!5733738 (not c!1011813)) b!5733736))

(assert (= (and b!5733736 (not res!2421087)) b!5733734))

(assert (= (and b!5733734 res!2421082) b!5733730))

(assert (= (and b!5733730 res!2421080) b!5733732))

(assert (= (and b!5733732 res!2421081) b!5733735))

(assert (= (and b!5733734 (not res!2421085)) b!5733729))

(assert (= (and b!5733729 res!2421086) b!5733741))

(assert (= (and b!5733741 (not res!2421083)) b!5733728))

(assert (= (and b!5733728 (not res!2421084)) b!5733737))

(assert (= (or b!5733739 b!5733730 b!5733741) bm!438353))

(assert (=> bm!438353 m!6685398))

(declare-fun m!6685752 () Bool)

(assert (=> b!5733732 m!6685752))

(assert (=> b!5733732 m!6685752))

(declare-fun m!6685754 () Bool)

(assert (=> b!5733732 m!6685754))

(declare-fun m!6685756 () Bool)

(assert (=> b!5733735 m!6685756))

(assert (=> d!1807929 m!6685398))

(assert (=> d!1807929 m!6685274))

(assert (=> b!5733740 m!6685756))

(assert (=> b!5733740 m!6685756))

(declare-fun m!6685758 () Bool)

(assert (=> b!5733740 m!6685758))

(assert (=> b!5733740 m!6685752))

(assert (=> b!5733740 m!6685758))

(assert (=> b!5733740 m!6685752))

(declare-fun m!6685760 () Bool)

(assert (=> b!5733740 m!6685760))

(assert (=> b!5733737 m!6685756))

(declare-fun m!6685762 () Bool)

(assert (=> b!5733731 m!6685762))

(assert (=> b!5733728 m!6685752))

(assert (=> b!5733728 m!6685752))

(assert (=> b!5733728 m!6685754))

(assert (=> b!5732569 d!1807929))

(declare-fun d!1807931 () Bool)

(assert (=> d!1807931 (= (Exists!2839 lambda!310376) (choose!43404 lambda!310376))))

(declare-fun bs!1340195 () Bool)

(assert (= bs!1340195 d!1807931))

(declare-fun m!6685764 () Bool)

(assert (=> bs!1340195 m!6685764))

(assert (=> b!5732569 d!1807931))

(declare-fun bs!1340196 () Bool)

(declare-fun d!1807933 () Bool)

(assert (= bs!1340196 (and d!1807933 b!5732909)))

(declare-fun lambda!310489 () Int)

(assert (=> bs!1340196 (not (= lambda!310489 lambda!310395))))

(declare-fun bs!1340197 () Bool)

(assert (= bs!1340197 (and d!1807933 d!1807817)))

(assert (=> bs!1340197 (not (= lambda!310489 lambda!310458))))

(declare-fun bs!1340198 () Bool)

(assert (= bs!1340198 (and d!1807933 d!1807777)))

(assert (=> bs!1340198 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310489 lambda!310445))))

(declare-fun bs!1340199 () Bool)

(assert (= bs!1340199 (and d!1807933 b!5732562)))

(assert (=> bs!1340199 (not (= lambda!310489 lambda!310379))))

(assert (=> bs!1340197 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) (Star!15739 (reg!16068 (regOne!31990 r!7292))))) (= lambda!310489 lambda!310457))))

(declare-fun bs!1340200 () Bool)

(assert (= bs!1340200 (and d!1807933 b!5732559)))

(assert (=> bs!1340200 (not (= lambda!310489 lambda!310371))))

(assert (=> bs!1340199 (not (= lambda!310489 lambda!310378))))

(declare-fun bs!1340201 () Bool)

(assert (= bs!1340201 (and d!1807933 b!5732908)))

(assert (=> bs!1340201 (not (= lambda!310489 lambda!310396))))

(assert (=> bs!1340200 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310489 lambda!310370))))

(assert (=> bs!1340198 (not (= lambda!310489 lambda!310446))))

(declare-fun bs!1340202 () Bool)

(assert (= bs!1340202 (and d!1807933 d!1807639)))

(assert (=> bs!1340202 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310489 lambda!310416))))

(declare-fun bs!1340203 () Bool)

(assert (= bs!1340203 (and d!1807933 b!5732569)))

(assert (=> bs!1340203 (= lambda!310489 lambda!310375)))

(declare-fun bs!1340204 () Bool)

(assert (= bs!1340204 (and d!1807933 b!5733350)))

(assert (=> bs!1340204 (not (= lambda!310489 lambda!310447))))

(assert (=> bs!1340203 (not (= lambda!310489 lambda!310376))))

(declare-fun bs!1340205 () Bool)

(assert (= bs!1340205 (and d!1807933 b!5733349)))

(assert (=> bs!1340205 (not (= lambda!310489 lambda!310448))))

(declare-fun bs!1340206 () Bool)

(assert (= bs!1340206 (and d!1807933 d!1807769)))

(assert (=> bs!1340206 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310489 lambda!310444))))

(assert (=> bs!1340199 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310489 lambda!310377))))

(declare-fun bs!1340207 () Bool)

(assert (= bs!1340207 (and d!1807933 d!1807635)))

(assert (=> bs!1340207 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310489 lambda!310411))))

(assert (=> bs!1340202 (not (= lambda!310489 lambda!310417))))

(declare-fun bs!1340208 () Bool)

(assert (= bs!1340208 (and d!1807933 d!1807921)))

(assert (=> bs!1340208 (= lambda!310489 lambda!310488)))

(declare-fun bs!1340209 () Bool)

(assert (= bs!1340209 (and d!1807933 b!5732755)))

(assert (=> bs!1340209 (not (= lambda!310489 lambda!310391))))

(declare-fun bs!1340210 () Bool)

(assert (= bs!1340210 (and d!1807933 b!5732756)))

(assert (=> bs!1340210 (not (= lambda!310489 lambda!310390))))

(assert (=> d!1807933 true))

(assert (=> d!1807933 true))

(assert (=> d!1807933 true))

(declare-fun bs!1340211 () Bool)

(assert (= bs!1340211 d!1807933))

(declare-fun lambda!310490 () Int)

(assert (=> bs!1340211 (not (= lambda!310490 lambda!310489))))

(assert (=> bs!1340196 (not (= lambda!310490 lambda!310395))))

(assert (=> bs!1340197 (not (= lambda!310490 lambda!310458))))

(assert (=> bs!1340198 (not (= lambda!310490 lambda!310445))))

(assert (=> bs!1340199 (not (= lambda!310490 lambda!310379))))

(assert (=> bs!1340197 (not (= lambda!310490 lambda!310457))))

(assert (=> bs!1340200 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310490 lambda!310371))))

(assert (=> bs!1340199 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310490 lambda!310378))))

(assert (=> bs!1340201 (= (and (= lt!2282110 (regOne!31990 lt!2282149)) (= (regTwo!31990 r!7292) (regTwo!31990 lt!2282149))) (= lambda!310490 lambda!310396))))

(assert (=> bs!1340200 (not (= lambda!310490 lambda!310370))))

(assert (=> bs!1340198 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 r!7292) lt!2282113)) (= lambda!310490 lambda!310446))))

(assert (=> bs!1340202 (not (= lambda!310490 lambda!310416))))

(assert (=> bs!1340203 (not (= lambda!310490 lambda!310375))))

(assert (=> bs!1340204 (not (= lambda!310490 lambda!310447))))

(assert (=> bs!1340203 (= lambda!310490 lambda!310376)))

(assert (=> bs!1340205 (= (and (= s!2326 (_1!36139 lt!2282146)) (= lt!2282110 (regOne!31990 lt!2282110)) (= (regTwo!31990 r!7292) (regTwo!31990 lt!2282110))) (= lambda!310490 lambda!310448))))

(assert (=> bs!1340206 (not (= lambda!310490 lambda!310444))))

(assert (=> bs!1340199 (not (= lambda!310490 lambda!310377))))

(assert (=> bs!1340207 (not (= lambda!310490 lambda!310411))))

(assert (=> bs!1340202 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310490 lambda!310417))))

(assert (=> bs!1340208 (not (= lambda!310490 lambda!310488))))

(assert (=> bs!1340209 (= (= lt!2282110 (regOne!31990 r!7292)) (= lambda!310490 lambda!310391))))

(assert (=> bs!1340210 (not (= lambda!310490 lambda!310390))))

(assert (=> d!1807933 true))

(assert (=> d!1807933 true))

(assert (=> d!1807933 true))

(assert (=> d!1807933 (= (Exists!2839 lambda!310489) (Exists!2839 lambda!310490))))

(declare-fun lt!2282395 () Unit!156488)

(assert (=> d!1807933 (= lt!2282395 (choose!43407 lt!2282110 (regTwo!31990 r!7292) s!2326))))

(assert (=> d!1807933 (validRegex!7475 lt!2282110)))

(assert (=> d!1807933 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1468 lt!2282110 (regTwo!31990 r!7292) s!2326) lt!2282395)))

(declare-fun m!6685766 () Bool)

(assert (=> bs!1340211 m!6685766))

(declare-fun m!6685768 () Bool)

(assert (=> bs!1340211 m!6685768))

(declare-fun m!6685770 () Bool)

(assert (=> bs!1340211 m!6685770))

(assert (=> bs!1340211 m!6685274))

(assert (=> b!5732569 d!1807933))

(declare-fun b!5733742 () Bool)

(declare-fun res!2421092 () Bool)

(declare-fun e!3525040 () Bool)

(assert (=> b!5733742 (=> res!2421092 e!3525040)))

(assert (=> b!5733742 (= res!2421092 (not (isEmpty!35273 (tail!11232 (_1!36139 lt!2282150)))))))

(declare-fun b!5733743 () Bool)

(declare-fun e!3525041 () Bool)

(declare-fun e!3525042 () Bool)

(assert (=> b!5733743 (= e!3525041 e!3525042)))

(declare-fun res!2421094 () Bool)

(assert (=> b!5733743 (=> (not res!2421094) (not e!3525042))))

(declare-fun lt!2282396 () Bool)

(assert (=> b!5733743 (= res!2421094 (not lt!2282396))))

(declare-fun b!5733744 () Bool)

(declare-fun res!2421088 () Bool)

(declare-fun e!3525039 () Bool)

(assert (=> b!5733744 (=> (not res!2421088) (not e!3525039))))

(declare-fun call!438359 () Bool)

(assert (=> b!5733744 (= res!2421088 (not call!438359))))

(declare-fun b!5733745 () Bool)

(declare-fun e!3525043 () Bool)

(assert (=> b!5733745 (= e!3525043 (nullable!5771 (reg!16068 (regOne!31990 r!7292))))))

(declare-fun b!5733746 () Bool)

(declare-fun res!2421089 () Bool)

(assert (=> b!5733746 (=> (not res!2421089) (not e!3525039))))

(assert (=> b!5733746 (= res!2421089 (isEmpty!35273 (tail!11232 (_1!36139 lt!2282150))))))

(declare-fun b!5733747 () Bool)

(declare-fun e!3525038 () Bool)

(assert (=> b!5733747 (= e!3525038 (not lt!2282396))))

(declare-fun b!5733748 () Bool)

(declare-fun res!2421093 () Bool)

(assert (=> b!5733748 (=> res!2421093 e!3525041)))

(assert (=> b!5733748 (= res!2421093 e!3525039)))

(declare-fun res!2421090 () Bool)

(assert (=> b!5733748 (=> (not res!2421090) (not e!3525039))))

(assert (=> b!5733748 (= res!2421090 lt!2282396)))

(declare-fun b!5733749 () Bool)

(assert (=> b!5733749 (= e!3525039 (= (head!12137 (_1!36139 lt!2282150)) (c!1011505 (reg!16068 (regOne!31990 r!7292)))))))

(declare-fun bm!438354 () Bool)

(assert (=> bm!438354 (= call!438359 (isEmpty!35273 (_1!36139 lt!2282150)))))

(declare-fun b!5733751 () Bool)

(assert (=> b!5733751 (= e!3525040 (not (= (head!12137 (_1!36139 lt!2282150)) (c!1011505 (reg!16068 (regOne!31990 r!7292))))))))

(declare-fun b!5733752 () Bool)

(declare-fun e!3525037 () Bool)

(assert (=> b!5733752 (= e!3525037 e!3525038)))

(declare-fun c!1011816 () Bool)

(assert (=> b!5733752 (= c!1011816 ((_ is EmptyLang!15739) (reg!16068 (regOne!31990 r!7292))))))

(declare-fun b!5733753 () Bool)

(assert (=> b!5733753 (= e!3525037 (= lt!2282396 call!438359))))

(declare-fun b!5733754 () Bool)

(assert (=> b!5733754 (= e!3525043 (matchR!7924 (derivativeStep!4532 (reg!16068 (regOne!31990 r!7292)) (head!12137 (_1!36139 lt!2282150))) (tail!11232 (_1!36139 lt!2282150))))))

(declare-fun b!5733755 () Bool)

(assert (=> b!5733755 (= e!3525042 e!3525040)))

(declare-fun res!2421091 () Bool)

(assert (=> b!5733755 (=> res!2421091 e!3525040)))

(assert (=> b!5733755 (= res!2421091 call!438359)))

(declare-fun d!1807935 () Bool)

(assert (=> d!1807935 e!3525037))

(declare-fun c!1011817 () Bool)

(assert (=> d!1807935 (= c!1011817 ((_ is EmptyExpr!15739) (reg!16068 (regOne!31990 r!7292))))))

(assert (=> d!1807935 (= lt!2282396 e!3525043)))

(declare-fun c!1011818 () Bool)

(assert (=> d!1807935 (= c!1011818 (isEmpty!35273 (_1!36139 lt!2282150)))))

(assert (=> d!1807935 (validRegex!7475 (reg!16068 (regOne!31990 r!7292)))))

(assert (=> d!1807935 (= (matchR!7924 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282150)) lt!2282396)))

(declare-fun b!5733750 () Bool)

(declare-fun res!2421095 () Bool)

(assert (=> b!5733750 (=> res!2421095 e!3525041)))

(assert (=> b!5733750 (= res!2421095 (not ((_ is ElementMatch!15739) (reg!16068 (regOne!31990 r!7292)))))))

(assert (=> b!5733750 (= e!3525038 e!3525041)))

(assert (= (and d!1807935 c!1011818) b!5733745))

(assert (= (and d!1807935 (not c!1011818)) b!5733754))

(assert (= (and d!1807935 c!1011817) b!5733753))

(assert (= (and d!1807935 (not c!1011817)) b!5733752))

(assert (= (and b!5733752 c!1011816) b!5733747))

(assert (= (and b!5733752 (not c!1011816)) b!5733750))

(assert (= (and b!5733750 (not res!2421095)) b!5733748))

(assert (= (and b!5733748 res!2421090) b!5733744))

(assert (= (and b!5733744 res!2421088) b!5733746))

(assert (= (and b!5733746 res!2421089) b!5733749))

(assert (= (and b!5733748 (not res!2421093)) b!5733743))

(assert (= (and b!5733743 res!2421094) b!5733755))

(assert (= (and b!5733755 (not res!2421091)) b!5733742))

(assert (= (and b!5733742 (not res!2421092)) b!5733751))

(assert (= (or b!5733753 b!5733744 b!5733755) bm!438354))

(assert (=> bm!438354 m!6685616))

(assert (=> b!5733746 m!6685624))

(assert (=> b!5733746 m!6685624))

(declare-fun m!6685772 () Bool)

(assert (=> b!5733746 m!6685772))

(assert (=> b!5733749 m!6685620))

(assert (=> d!1807935 m!6685616))

(assert (=> d!1807935 m!6685284))

(assert (=> b!5733754 m!6685620))

(assert (=> b!5733754 m!6685620))

(declare-fun m!6685774 () Bool)

(assert (=> b!5733754 m!6685774))

(assert (=> b!5733754 m!6685624))

(assert (=> b!5733754 m!6685774))

(assert (=> b!5733754 m!6685624))

(declare-fun m!6685776 () Bool)

(assert (=> b!5733754 m!6685776))

(assert (=> b!5733751 m!6685620))

(assert (=> b!5733745 m!6685290))

(assert (=> b!5733742 m!6685624))

(assert (=> b!5733742 m!6685624))

(assert (=> b!5733742 m!6685772))

(assert (=> b!5732569 d!1807935))

(declare-fun bs!1340212 () Bool)

(declare-fun b!5733763 () Bool)

(assert (= bs!1340212 (and b!5733763 d!1807933)))

(declare-fun lambda!310491 () Int)

(assert (=> bs!1340212 (not (= lambda!310491 lambda!310489))))

(declare-fun bs!1340213 () Bool)

(assert (= bs!1340213 (and b!5733763 b!5732909)))

(assert (=> bs!1340213 (= (and (= (reg!16068 lt!2282156) (reg!16068 lt!2282149)) (= lt!2282156 lt!2282149)) (= lambda!310491 lambda!310395))))

(declare-fun bs!1340214 () Bool)

(assert (= bs!1340214 (and b!5733763 d!1807817)))

(assert (=> bs!1340214 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (reg!16068 lt!2282156) (reg!16068 (regOne!31990 r!7292))) (= lt!2282156 (Star!15739 (reg!16068 (regOne!31990 r!7292))))) (= lambda!310491 lambda!310458))))

(declare-fun bs!1340215 () Bool)

(assert (= bs!1340215 (and b!5733763 d!1807777)))

(assert (=> bs!1340215 (not (= lambda!310491 lambda!310445))))

(declare-fun bs!1340216 () Bool)

(assert (= bs!1340216 (and b!5733763 b!5732562)))

(assert (=> bs!1340216 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (reg!16068 lt!2282156) (reg!16068 (regOne!31990 r!7292))) (= lt!2282156 lt!2282113)) (= lambda!310491 lambda!310379))))

(assert (=> bs!1340214 (not (= lambda!310491 lambda!310457))))

(declare-fun bs!1340217 () Bool)

(assert (= bs!1340217 (and b!5733763 b!5732559)))

(assert (=> bs!1340217 (not (= lambda!310491 lambda!310371))))

(assert (=> bs!1340216 (not (= lambda!310491 lambda!310378))))

(declare-fun bs!1340218 () Bool)

(assert (= bs!1340218 (and b!5733763 b!5732908)))

(assert (=> bs!1340218 (not (= lambda!310491 lambda!310396))))

(assert (=> bs!1340217 (not (= lambda!310491 lambda!310370))))

(assert (=> bs!1340215 (not (= lambda!310491 lambda!310446))))

(declare-fun bs!1340219 () Bool)

(assert (= bs!1340219 (and b!5733763 d!1807639)))

(assert (=> bs!1340219 (not (= lambda!310491 lambda!310416))))

(declare-fun bs!1340220 () Bool)

(assert (= bs!1340220 (and b!5733763 b!5732569)))

(assert (=> bs!1340220 (not (= lambda!310491 lambda!310375))))

(declare-fun bs!1340221 () Bool)

(assert (= bs!1340221 (and b!5733763 b!5733350)))

(assert (=> bs!1340221 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (reg!16068 lt!2282156) (reg!16068 lt!2282110)) (= lt!2282156 lt!2282110)) (= lambda!310491 lambda!310447))))

(assert (=> bs!1340220 (not (= lambda!310491 lambda!310376))))

(declare-fun bs!1340222 () Bool)

(assert (= bs!1340222 (and b!5733763 b!5733349)))

(assert (=> bs!1340222 (not (= lambda!310491 lambda!310448))))

(declare-fun bs!1340223 () Bool)

(assert (= bs!1340223 (and b!5733763 d!1807769)))

(assert (=> bs!1340223 (not (= lambda!310491 lambda!310444))))

(assert (=> bs!1340216 (not (= lambda!310491 lambda!310377))))

(assert (=> bs!1340212 (not (= lambda!310491 lambda!310490))))

(declare-fun bs!1340224 () Bool)

(assert (= bs!1340224 (and b!5733763 d!1807635)))

(assert (=> bs!1340224 (not (= lambda!310491 lambda!310411))))

(assert (=> bs!1340219 (not (= lambda!310491 lambda!310417))))

(declare-fun bs!1340225 () Bool)

(assert (= bs!1340225 (and b!5733763 d!1807921)))

(assert (=> bs!1340225 (not (= lambda!310491 lambda!310488))))

(declare-fun bs!1340226 () Bool)

(assert (= bs!1340226 (and b!5733763 b!5732755)))

(assert (=> bs!1340226 (not (= lambda!310491 lambda!310391))))

(declare-fun bs!1340227 () Bool)

(assert (= bs!1340227 (and b!5733763 b!5732756)))

(assert (=> bs!1340227 (= (and (= (reg!16068 lt!2282156) (reg!16068 r!7292)) (= lt!2282156 r!7292)) (= lambda!310491 lambda!310390))))

(assert (=> b!5733763 true))

(assert (=> b!5733763 true))

(declare-fun bs!1340228 () Bool)

(declare-fun b!5733762 () Bool)

(assert (= bs!1340228 (and b!5733762 d!1807933)))

(declare-fun lambda!310492 () Int)

(assert (=> bs!1340228 (not (= lambda!310492 lambda!310489))))

(declare-fun bs!1340229 () Bool)

(assert (= bs!1340229 (and b!5733762 b!5732909)))

(assert (=> bs!1340229 (not (= lambda!310492 lambda!310395))))

(declare-fun bs!1340230 () Bool)

(assert (= bs!1340230 (and b!5733762 d!1807817)))

(assert (=> bs!1340230 (not (= lambda!310492 lambda!310458))))

(declare-fun bs!1340231 () Bool)

(assert (= bs!1340231 (and b!5733762 d!1807777)))

(assert (=> bs!1340231 (not (= lambda!310492 lambda!310445))))

(declare-fun bs!1340232 () Bool)

(assert (= bs!1340232 (and b!5733762 b!5732562)))

(assert (=> bs!1340232 (not (= lambda!310492 lambda!310379))))

(assert (=> bs!1340230 (not (= lambda!310492 lambda!310457))))

(declare-fun bs!1340233 () Bool)

(assert (= bs!1340233 (and b!5733762 b!5732559)))

(assert (=> bs!1340233 (= (and (= (regOne!31990 lt!2282156) (regOne!31990 r!7292)) (= (regTwo!31990 lt!2282156) (regTwo!31990 r!7292))) (= lambda!310492 lambda!310371))))

(declare-fun bs!1340234 () Bool)

(assert (= bs!1340234 (and b!5733762 b!5733763)))

(assert (=> bs!1340234 (not (= lambda!310492 lambda!310491))))

(assert (=> bs!1340232 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (regOne!31990 lt!2282156) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 lt!2282156) lt!2282113)) (= lambda!310492 lambda!310378))))

(declare-fun bs!1340235 () Bool)

(assert (= bs!1340235 (and b!5733762 b!5732908)))

(assert (=> bs!1340235 (= (and (= (regOne!31990 lt!2282156) (regOne!31990 lt!2282149)) (= (regTwo!31990 lt!2282156) (regTwo!31990 lt!2282149))) (= lambda!310492 lambda!310396))))

(assert (=> bs!1340233 (not (= lambda!310492 lambda!310370))))

(assert (=> bs!1340231 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (regOne!31990 lt!2282156) (reg!16068 (regOne!31990 r!7292))) (= (regTwo!31990 lt!2282156) lt!2282113)) (= lambda!310492 lambda!310446))))

(declare-fun bs!1340236 () Bool)

(assert (= bs!1340236 (and b!5733762 d!1807639)))

(assert (=> bs!1340236 (not (= lambda!310492 lambda!310416))))

(declare-fun bs!1340237 () Bool)

(assert (= bs!1340237 (and b!5733762 b!5732569)))

(assert (=> bs!1340237 (not (= lambda!310492 lambda!310375))))

(declare-fun bs!1340238 () Bool)

(assert (= bs!1340238 (and b!5733762 b!5733350)))

(assert (=> bs!1340238 (not (= lambda!310492 lambda!310447))))

(assert (=> bs!1340237 (= (and (= (regOne!31990 lt!2282156) lt!2282110) (= (regTwo!31990 lt!2282156) (regTwo!31990 r!7292))) (= lambda!310492 lambda!310376))))

(declare-fun bs!1340239 () Bool)

(assert (= bs!1340239 (and b!5733762 b!5733349)))

(assert (=> bs!1340239 (= (and (= s!2326 (_1!36139 lt!2282146)) (= (regOne!31990 lt!2282156) (regOne!31990 lt!2282110)) (= (regTwo!31990 lt!2282156) (regTwo!31990 lt!2282110))) (= lambda!310492 lambda!310448))))

(declare-fun bs!1340240 () Bool)

(assert (= bs!1340240 (and b!5733762 d!1807769)))

(assert (=> bs!1340240 (not (= lambda!310492 lambda!310444))))

(assert (=> bs!1340232 (not (= lambda!310492 lambda!310377))))

(assert (=> bs!1340228 (= (and (= (regOne!31990 lt!2282156) lt!2282110) (= (regTwo!31990 lt!2282156) (regTwo!31990 r!7292))) (= lambda!310492 lambda!310490))))

(declare-fun bs!1340241 () Bool)

(assert (= bs!1340241 (and b!5733762 d!1807635)))

(assert (=> bs!1340241 (not (= lambda!310492 lambda!310411))))

(assert (=> bs!1340236 (= (and (= (regOne!31990 lt!2282156) (regOne!31990 r!7292)) (= (regTwo!31990 lt!2282156) (regTwo!31990 r!7292))) (= lambda!310492 lambda!310417))))

(declare-fun bs!1340242 () Bool)

(assert (= bs!1340242 (and b!5733762 d!1807921)))

(assert (=> bs!1340242 (not (= lambda!310492 lambda!310488))))

(declare-fun bs!1340243 () Bool)

(assert (= bs!1340243 (and b!5733762 b!5732755)))

(assert (=> bs!1340243 (= (and (= (regOne!31990 lt!2282156) (regOne!31990 r!7292)) (= (regTwo!31990 lt!2282156) (regTwo!31990 r!7292))) (= lambda!310492 lambda!310391))))

(declare-fun bs!1340244 () Bool)

(assert (= bs!1340244 (and b!5733762 b!5732756)))

(assert (=> bs!1340244 (not (= lambda!310492 lambda!310390))))

(assert (=> b!5733762 true))

(assert (=> b!5733762 true))

(declare-fun c!1011821 () Bool)

(declare-fun call!438360 () Bool)

(declare-fun bm!438355 () Bool)

(assert (=> bm!438355 (= call!438360 (Exists!2839 (ite c!1011821 lambda!310491 lambda!310492)))))

(declare-fun b!5733756 () Bool)

(declare-fun e!3525050 () Bool)

(declare-fun call!438361 () Bool)

(assert (=> b!5733756 (= e!3525050 call!438361)))

(declare-fun bm!438356 () Bool)

(assert (=> bm!438356 (= call!438361 (isEmpty!35273 s!2326))))

(declare-fun b!5733757 () Bool)

(declare-fun e!3525045 () Bool)

(assert (=> b!5733757 (= e!3525050 e!3525045)))

(declare-fun res!2421098 () Bool)

(assert (=> b!5733757 (= res!2421098 (not ((_ is EmptyLang!15739) lt!2282156)))))

(assert (=> b!5733757 (=> (not res!2421098) (not e!3525045))))

(declare-fun b!5733758 () Bool)

(declare-fun e!3525044 () Bool)

(assert (=> b!5733758 (= e!3525044 (= s!2326 (Cons!63392 (c!1011505 lt!2282156) Nil!63392)))))

(declare-fun b!5733759 () Bool)

(declare-fun c!1011819 () Bool)

(assert (=> b!5733759 (= c!1011819 ((_ is Union!15739) lt!2282156))))

(declare-fun e!3525046 () Bool)

(assert (=> b!5733759 (= e!3525044 e!3525046)))

(declare-fun b!5733760 () Bool)

(declare-fun res!2421096 () Bool)

(declare-fun e!3525049 () Bool)

(assert (=> b!5733760 (=> res!2421096 e!3525049)))

(assert (=> b!5733760 (= res!2421096 call!438361)))

(declare-fun e!3525047 () Bool)

(assert (=> b!5733760 (= e!3525047 e!3525049)))

(declare-fun b!5733761 () Bool)

(assert (=> b!5733761 (= e!3525046 e!3525047)))

(assert (=> b!5733761 (= c!1011821 ((_ is Star!15739) lt!2282156))))

(assert (=> b!5733762 (= e!3525047 call!438360)))

(assert (=> b!5733763 (= e!3525049 call!438360)))

(declare-fun b!5733764 () Bool)

(declare-fun e!3525048 () Bool)

(assert (=> b!5733764 (= e!3525046 e!3525048)))

(declare-fun res!2421097 () Bool)

(assert (=> b!5733764 (= res!2421097 (matchRSpec!2842 (regOne!31991 lt!2282156) s!2326))))

(assert (=> b!5733764 (=> res!2421097 e!3525048)))

(declare-fun b!5733765 () Bool)

(assert (=> b!5733765 (= e!3525048 (matchRSpec!2842 (regTwo!31991 lt!2282156) s!2326))))

(declare-fun b!5733766 () Bool)

(declare-fun c!1011820 () Bool)

(assert (=> b!5733766 (= c!1011820 ((_ is ElementMatch!15739) lt!2282156))))

(assert (=> b!5733766 (= e!3525045 e!3525044)))

(declare-fun d!1807937 () Bool)

(declare-fun c!1011822 () Bool)

(assert (=> d!1807937 (= c!1011822 ((_ is EmptyExpr!15739) lt!2282156))))

(assert (=> d!1807937 (= (matchRSpec!2842 lt!2282156 s!2326) e!3525050)))

(assert (= (and d!1807937 c!1011822) b!5733756))

(assert (= (and d!1807937 (not c!1011822)) b!5733757))

(assert (= (and b!5733757 res!2421098) b!5733766))

(assert (= (and b!5733766 c!1011820) b!5733758))

(assert (= (and b!5733766 (not c!1011820)) b!5733759))

(assert (= (and b!5733759 c!1011819) b!5733764))

(assert (= (and b!5733759 (not c!1011819)) b!5733761))

(assert (= (and b!5733764 (not res!2421097)) b!5733765))

(assert (= (and b!5733761 c!1011821) b!5733760))

(assert (= (and b!5733761 (not c!1011821)) b!5733762))

(assert (= (and b!5733760 (not res!2421096)) b!5733763))

(assert (= (or b!5733763 b!5733762) bm!438355))

(assert (= (or b!5733756 b!5733760) bm!438356))

(declare-fun m!6685778 () Bool)

(assert (=> bm!438355 m!6685778))

(assert (=> bm!438356 m!6684662))

(declare-fun m!6685780 () Bool)

(assert (=> b!5733764 m!6685780))

(declare-fun m!6685782 () Bool)

(assert (=> b!5733765 m!6685782))

(assert (=> b!5732569 d!1807937))

(declare-fun d!1807939 () Bool)

(assert (=> d!1807939 (= (matchR!7924 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282150)) (matchZipper!1877 lt!2282157 (_1!36139 lt!2282150)))))

(declare-fun lt!2282397 () Unit!156488)

(assert (=> d!1807939 (= lt!2282397 (choose!43428 lt!2282157 lt!2282136 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282150)))))

(assert (=> d!1807939 (validRegex!7475 (reg!16068 (regOne!31990 r!7292)))))

(assert (=> d!1807939 (= (theoremZipperRegexEquiv!659 lt!2282157 lt!2282136 (reg!16068 (regOne!31990 r!7292)) (_1!36139 lt!2282150)) lt!2282397)))

(declare-fun bs!1340245 () Bool)

(assert (= bs!1340245 d!1807939))

(assert (=> bs!1340245 m!6684488))

(assert (=> bs!1340245 m!6684598))

(declare-fun m!6685784 () Bool)

(assert (=> bs!1340245 m!6685784))

(assert (=> bs!1340245 m!6685284))

(assert (=> b!5732569 d!1807939))

(assert (=> b!5732569 d!1807679))

(declare-fun b!5733767 () Bool)

(declare-fun res!2421103 () Bool)

(declare-fun e!3525054 () Bool)

(assert (=> b!5733767 (=> res!2421103 e!3525054)))

(assert (=> b!5733767 (= res!2421103 (not (isEmpty!35273 (tail!11232 (_2!36139 lt!2282150)))))))

(declare-fun b!5733768 () Bool)

(declare-fun e!3525055 () Bool)

(declare-fun e!3525056 () Bool)

(assert (=> b!5733768 (= e!3525055 e!3525056)))

(declare-fun res!2421105 () Bool)

(assert (=> b!5733768 (=> (not res!2421105) (not e!3525056))))

(declare-fun lt!2282398 () Bool)

(assert (=> b!5733768 (= res!2421105 (not lt!2282398))))

(declare-fun b!5733769 () Bool)

(declare-fun res!2421099 () Bool)

(declare-fun e!3525053 () Bool)

(assert (=> b!5733769 (=> (not res!2421099) (not e!3525053))))

(declare-fun call!438362 () Bool)

(assert (=> b!5733769 (= res!2421099 (not call!438362))))

(declare-fun b!5733770 () Bool)

(declare-fun e!3525057 () Bool)

(assert (=> b!5733770 (= e!3525057 (nullable!5771 lt!2282138))))

(declare-fun b!5733771 () Bool)

(declare-fun res!2421100 () Bool)

(assert (=> b!5733771 (=> (not res!2421100) (not e!3525053))))

(assert (=> b!5733771 (= res!2421100 (isEmpty!35273 (tail!11232 (_2!36139 lt!2282150))))))

(declare-fun b!5733772 () Bool)

(declare-fun e!3525052 () Bool)

(assert (=> b!5733772 (= e!3525052 (not lt!2282398))))

(declare-fun b!5733773 () Bool)

(declare-fun res!2421104 () Bool)

(assert (=> b!5733773 (=> res!2421104 e!3525055)))

(assert (=> b!5733773 (= res!2421104 e!3525053)))

(declare-fun res!2421101 () Bool)

(assert (=> b!5733773 (=> (not res!2421101) (not e!3525053))))

(assert (=> b!5733773 (= res!2421101 lt!2282398)))

(declare-fun b!5733774 () Bool)

(assert (=> b!5733774 (= e!3525053 (= (head!12137 (_2!36139 lt!2282150)) (c!1011505 lt!2282138)))))

(declare-fun bm!438357 () Bool)

(assert (=> bm!438357 (= call!438362 (isEmpty!35273 (_2!36139 lt!2282150)))))

(declare-fun b!5733776 () Bool)

(assert (=> b!5733776 (= e!3525054 (not (= (head!12137 (_2!36139 lt!2282150)) (c!1011505 lt!2282138))))))

(declare-fun b!5733777 () Bool)

(declare-fun e!3525051 () Bool)

(assert (=> b!5733777 (= e!3525051 e!3525052)))

(declare-fun c!1011823 () Bool)

(assert (=> b!5733777 (= c!1011823 ((_ is EmptyLang!15739) lt!2282138))))

(declare-fun b!5733778 () Bool)

(assert (=> b!5733778 (= e!3525051 (= lt!2282398 call!438362))))

(declare-fun b!5733779 () Bool)

(assert (=> b!5733779 (= e!3525057 (matchR!7924 (derivativeStep!4532 lt!2282138 (head!12137 (_2!36139 lt!2282150))) (tail!11232 (_2!36139 lt!2282150))))))

(declare-fun b!5733780 () Bool)

(assert (=> b!5733780 (= e!3525056 e!3525054)))

(declare-fun res!2421102 () Bool)

(assert (=> b!5733780 (=> res!2421102 e!3525054)))

(assert (=> b!5733780 (= res!2421102 call!438362)))

(declare-fun d!1807941 () Bool)

(assert (=> d!1807941 e!3525051))

(declare-fun c!1011824 () Bool)

(assert (=> d!1807941 (= c!1011824 ((_ is EmptyExpr!15739) lt!2282138))))

(assert (=> d!1807941 (= lt!2282398 e!3525057)))

(declare-fun c!1011825 () Bool)

(assert (=> d!1807941 (= c!1011825 (isEmpty!35273 (_2!36139 lt!2282150)))))

(assert (=> d!1807941 (validRegex!7475 lt!2282138)))

(assert (=> d!1807941 (= (matchR!7924 lt!2282138 (_2!36139 lt!2282150)) lt!2282398)))

(declare-fun b!5733775 () Bool)

(declare-fun res!2421106 () Bool)

(assert (=> b!5733775 (=> res!2421106 e!3525055)))

(assert (=> b!5733775 (= res!2421106 (not ((_ is ElementMatch!15739) lt!2282138)))))

(assert (=> b!5733775 (= e!3525052 e!3525055)))

(assert (= (and d!1807941 c!1011825) b!5733770))

(assert (= (and d!1807941 (not c!1011825)) b!5733779))

(assert (= (and d!1807941 c!1011824) b!5733778))

(assert (= (and d!1807941 (not c!1011824)) b!5733777))

(assert (= (and b!5733777 c!1011823) b!5733772))

(assert (= (and b!5733777 (not c!1011823)) b!5733775))

(assert (= (and b!5733775 (not res!2421106)) b!5733773))

(assert (= (and b!5733773 res!2421101) b!5733769))

(assert (= (and b!5733769 res!2421099) b!5733771))

(assert (= (and b!5733771 res!2421100) b!5733774))

(assert (= (and b!5733773 (not res!2421104)) b!5733768))

(assert (= (and b!5733768 res!2421105) b!5733780))

(assert (= (and b!5733780 (not res!2421102)) b!5733767))

(assert (= (and b!5733767 (not res!2421103)) b!5733776))

(assert (= (or b!5733778 b!5733769 b!5733780) bm!438357))

(assert (=> bm!438357 m!6684826))

(assert (=> b!5733771 m!6684834))

(assert (=> b!5733771 m!6684834))

(declare-fun m!6685786 () Bool)

(assert (=> b!5733771 m!6685786))

(assert (=> b!5733774 m!6684830))

(assert (=> d!1807941 m!6684826))

(assert (=> d!1807941 m!6685692))

(assert (=> b!5733779 m!6684830))

(assert (=> b!5733779 m!6684830))

(declare-fun m!6685788 () Bool)

(assert (=> b!5733779 m!6685788))

(assert (=> b!5733779 m!6684834))

(assert (=> b!5733779 m!6685788))

(assert (=> b!5733779 m!6684834))

(declare-fun m!6685790 () Bool)

(assert (=> b!5733779 m!6685790))

(assert (=> b!5733776 m!6684830))

(declare-fun m!6685792 () Bool)

(assert (=> b!5733770 m!6685792))

(assert (=> b!5733767 m!6684834))

(assert (=> b!5733767 m!6684834))

(assert (=> b!5733767 m!6685786))

(assert (=> b!5732569 d!1807941))

(declare-fun d!1807943 () Bool)

(assert (=> d!1807943 (= (matchR!7924 (Concat!24584 (Concat!24584 (reg!16068 (regOne!31990 r!7292)) lt!2282113) (regTwo!31990 r!7292)) s!2326) (matchR!7924 (Concat!24584 (reg!16068 (regOne!31990 r!7292)) (Concat!24584 lt!2282113 (regTwo!31990 r!7292))) s!2326))))

(declare-fun lt!2282401 () Unit!156488)

(declare-fun choose!43430 (Regex!15739 Regex!15739 Regex!15739 List!63516) Unit!156488)

(assert (=> d!1807943 (= lt!2282401 (choose!43430 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (regTwo!31990 r!7292) s!2326))))

(declare-fun e!3525060 () Bool)

(assert (=> d!1807943 e!3525060))

(declare-fun res!2421111 () Bool)

(assert (=> d!1807943 (=> (not res!2421111) (not e!3525060))))

(assert (=> d!1807943 (= res!2421111 (validRegex!7475 (reg!16068 (regOne!31990 r!7292))))))

(assert (=> d!1807943 (= (lemmaConcatAssociative!92 (reg!16068 (regOne!31990 r!7292)) lt!2282113 (regTwo!31990 r!7292) s!2326) lt!2282401)))

(declare-fun b!5733785 () Bool)

(declare-fun res!2421112 () Bool)

(assert (=> b!5733785 (=> (not res!2421112) (not e!3525060))))

(assert (=> b!5733785 (= res!2421112 (validRegex!7475 lt!2282113))))

(declare-fun b!5733786 () Bool)

(assert (=> b!5733786 (= e!3525060 (validRegex!7475 (regTwo!31990 r!7292)))))

(assert (= (and d!1807943 res!2421111) b!5733785))

(assert (= (and b!5733785 res!2421112) b!5733786))

(declare-fun m!6685794 () Bool)

(assert (=> d!1807943 m!6685794))

(declare-fun m!6685796 () Bool)

(assert (=> d!1807943 m!6685796))

(declare-fun m!6685798 () Bool)

(assert (=> d!1807943 m!6685798))

(assert (=> d!1807943 m!6685284))

(declare-fun m!6685800 () Bool)

(assert (=> b!5733785 m!6685800))

(declare-fun m!6685802 () Bool)

(assert (=> b!5733786 m!6685802))

(assert (=> b!5732569 d!1807943))

(assert (=> b!5732588 d!1807865))

(declare-fun d!1807945 () Bool)

(declare-fun c!1011826 () Bool)

(assert (=> d!1807945 (= c!1011826 (isEmpty!35273 (t!376844 s!2326)))))

(declare-fun e!3525061 () Bool)

(assert (=> d!1807945 (= (matchZipper!1877 lt!2282118 (t!376844 s!2326)) e!3525061)))

(declare-fun b!5733787 () Bool)

(assert (=> b!5733787 (= e!3525061 (nullableZipper!1679 lt!2282118))))

(declare-fun b!5733788 () Bool)

(assert (=> b!5733788 (= e!3525061 (matchZipper!1877 (derivationStepZipper!1822 lt!2282118 (head!12137 (t!376844 s!2326))) (tail!11232 (t!376844 s!2326))))))

(assert (= (and d!1807945 c!1011826) b!5733787))

(assert (= (and d!1807945 (not c!1011826)) b!5733788))

(assert (=> d!1807945 m!6684838))

(declare-fun m!6685804 () Bool)

(assert (=> b!5733787 m!6685804))

(assert (=> b!5733788 m!6684842))

(assert (=> b!5733788 m!6684842))

(declare-fun m!6685806 () Bool)

(assert (=> b!5733788 m!6685806))

(assert (=> b!5733788 m!6684846))

(assert (=> b!5733788 m!6685806))

(assert (=> b!5733788 m!6684846))

(declare-fun m!6685808 () Bool)

(assert (=> b!5733788 m!6685808))

(assert (=> b!5732568 d!1807945))

(declare-fun d!1807947 () Bool)

(declare-fun c!1011827 () Bool)

(assert (=> d!1807947 (= c!1011827 (isEmpty!35273 s!2326))))

(declare-fun e!3525062 () Bool)

(assert (=> d!1807947 (= (matchZipper!1877 lt!2282144 s!2326) e!3525062)))

(declare-fun b!5733789 () Bool)

(assert (=> b!5733789 (= e!3525062 (nullableZipper!1679 lt!2282144))))

(declare-fun b!5733790 () Bool)

(assert (=> b!5733790 (= e!3525062 (matchZipper!1877 (derivationStepZipper!1822 lt!2282144 (head!12137 s!2326)) (tail!11232 s!2326)))))

(assert (= (and d!1807947 c!1011827) b!5733789))

(assert (= (and d!1807947 (not c!1011827)) b!5733790))

(assert (=> d!1807947 m!6684662))

(declare-fun m!6685810 () Bool)

(assert (=> b!5733789 m!6685810))

(assert (=> b!5733790 m!6684738))

(assert (=> b!5733790 m!6684738))

(declare-fun m!6685812 () Bool)

(assert (=> b!5733790 m!6685812))

(assert (=> b!5733790 m!6684734))

(assert (=> b!5733790 m!6685812))

(assert (=> b!5733790 m!6684734))

(declare-fun m!6685814 () Bool)

(assert (=> b!5733790 m!6685814))

(assert (=> b!5732568 d!1807947))

(declare-fun d!1807949 () Bool)

(declare-fun lt!2282402 () Regex!15739)

(assert (=> d!1807949 (validRegex!7475 lt!2282402)))

(assert (=> d!1807949 (= lt!2282402 (generalisedUnion!1602 (unfocusZipperList!1167 lt!2282164)))))

(assert (=> d!1807949 (= (unfocusZipper!1481 lt!2282164) lt!2282402)))

(declare-fun bs!1340246 () Bool)

(assert (= bs!1340246 d!1807949))

(declare-fun m!6685816 () Bool)

(assert (=> bs!1340246 m!6685816))

(declare-fun m!6685818 () Bool)

(assert (=> bs!1340246 m!6685818))

(assert (=> bs!1340246 m!6685818))

(declare-fun m!6685820 () Bool)

(assert (=> bs!1340246 m!6685820))

(assert (=> b!5732587 d!1807949))

(declare-fun d!1807951 () Bool)

(assert (=> d!1807951 (= (flatMap!1352 lt!2282157 lambda!310372) (dynLambda!24808 lambda!310372 lt!2282119))))

(declare-fun lt!2282403 () Unit!156488)

(assert (=> d!1807951 (= lt!2282403 (choose!43418 lt!2282157 lt!2282119 lambda!310372))))

(assert (=> d!1807951 (= lt!2282157 (store ((as const (Array Context!10246 Bool)) false) lt!2282119 true))))

(assert (=> d!1807951 (= (lemmaFlatMapOnSingletonSet!884 lt!2282157 lt!2282119 lambda!310372) lt!2282403)))

(declare-fun b_lambda!216593 () Bool)

(assert (=> (not b_lambda!216593) (not d!1807951)))

(declare-fun bs!1340247 () Bool)

(assert (= bs!1340247 d!1807951))

(assert (=> bs!1340247 m!6684574))

(declare-fun m!6685822 () Bool)

(assert (=> bs!1340247 m!6685822))

(declare-fun m!6685824 () Bool)

(assert (=> bs!1340247 m!6685824))

(assert (=> bs!1340247 m!6684570))

(assert (=> b!5732572 d!1807951))

(declare-fun bm!438358 () Bool)

(declare-fun call!438363 () (InoxSet Context!10246))

(assert (=> bm!438358 (= call!438363 (derivationStepZipperDown!1081 (h!69841 (exprs!5623 lt!2282119)) (Context!10247 (t!376845 (exprs!5623 lt!2282119))) (h!69840 s!2326)))))

(declare-fun d!1807953 () Bool)

(declare-fun c!1011829 () Bool)

(declare-fun e!3525065 () Bool)

(assert (=> d!1807953 (= c!1011829 e!3525065)))

(declare-fun res!2421113 () Bool)

(assert (=> d!1807953 (=> (not res!2421113) (not e!3525065))))

(assert (=> d!1807953 (= res!2421113 ((_ is Cons!63393) (exprs!5623 lt!2282119)))))

(declare-fun e!3525064 () (InoxSet Context!10246))

(assert (=> d!1807953 (= (derivationStepZipperUp!1007 lt!2282119 (h!69840 s!2326)) e!3525064)))

(declare-fun b!5733791 () Bool)

(assert (=> b!5733791 (= e!3525065 (nullable!5771 (h!69841 (exprs!5623 lt!2282119))))))

(declare-fun b!5733792 () Bool)

(assert (=> b!5733792 (= e!3525064 ((_ map or) call!438363 (derivationStepZipperUp!1007 (Context!10247 (t!376845 (exprs!5623 lt!2282119))) (h!69840 s!2326))))))

(declare-fun b!5733793 () Bool)

(declare-fun e!3525063 () (InoxSet Context!10246))

(assert (=> b!5733793 (= e!3525063 call!438363)))

(declare-fun b!5733794 () Bool)

(assert (=> b!5733794 (= e!3525063 ((as const (Array Context!10246 Bool)) false))))

(declare-fun b!5733795 () Bool)

(assert (=> b!5733795 (= e!3525064 e!3525063)))

(declare-fun c!1011828 () Bool)

(assert (=> b!5733795 (= c!1011828 ((_ is Cons!63393) (exprs!5623 lt!2282119)))))

(assert (= (and d!1807953 res!2421113) b!5733791))

(assert (= (and d!1807953 c!1011829) b!5733792))

(assert (= (and d!1807953 (not c!1011829)) b!5733795))

(assert (= (and b!5733795 c!1011828) b!5733793))

(assert (= (and b!5733795 (not c!1011828)) b!5733794))

(assert (= (or b!5733792 b!5733793) bm!438358))

(declare-fun m!6685826 () Bool)

(assert (=> bm!438358 m!6685826))

(declare-fun m!6685828 () Bool)

(assert (=> b!5733791 m!6685828))

(declare-fun m!6685830 () Bool)

(assert (=> b!5733792 m!6685830))

(assert (=> b!5732572 d!1807953))

(declare-fun d!1807955 () Bool)

(assert (=> d!1807955 (= (flatMap!1352 lt!2282159 lambda!310372) (dynLambda!24808 lambda!310372 lt!2282143))))

(declare-fun lt!2282404 () Unit!156488)

(assert (=> d!1807955 (= lt!2282404 (choose!43418 lt!2282159 lt!2282143 lambda!310372))))

(assert (=> d!1807955 (= lt!2282159 (store ((as const (Array Context!10246 Bool)) false) lt!2282143 true))))

(assert (=> d!1807955 (= (lemmaFlatMapOnSingletonSet!884 lt!2282159 lt!2282143 lambda!310372) lt!2282404)))

(declare-fun b_lambda!216595 () Bool)

(assert (=> (not b_lambda!216595) (not d!1807955)))

(declare-fun bs!1340248 () Bool)

(assert (= bs!1340248 d!1807955))

(assert (=> bs!1340248 m!6684578))

(declare-fun m!6685832 () Bool)

(assert (=> bs!1340248 m!6685832))

(declare-fun m!6685834 () Bool)

(assert (=> bs!1340248 m!6685834))

(assert (=> bs!1340248 m!6684568))

(assert (=> b!5732572 d!1807955))

(declare-fun bm!438359 () Bool)

(declare-fun call!438364 () (InoxSet Context!10246))

(assert (=> bm!438359 (= call!438364 (derivationStepZipperDown!1081 (h!69841 (exprs!5623 lt!2282143)) (Context!10247 (t!376845 (exprs!5623 lt!2282143))) (h!69840 s!2326)))))

(declare-fun d!1807957 () Bool)

(declare-fun c!1011831 () Bool)

(declare-fun e!3525068 () Bool)

(assert (=> d!1807957 (= c!1011831 e!3525068)))

(declare-fun res!2421114 () Bool)

(assert (=> d!1807957 (=> (not res!2421114) (not e!3525068))))

(assert (=> d!1807957 (= res!2421114 ((_ is Cons!63393) (exprs!5623 lt!2282143)))))

(declare-fun e!3525067 () (InoxSet Context!10246))

(assert (=> d!1807957 (= (derivationStepZipperUp!1007 lt!2282143 (h!69840 s!2326)) e!3525067)))

(declare-fun b!5733796 () Bool)

(assert (=> b!5733796 (= e!3525068 (nullable!5771 (h!69841 (exprs!5623 lt!2282143))))))

(declare-fun b!5733797 () Bool)

(assert (=> b!5733797 (= e!3525067 ((_ map or) call!438364 (derivationStepZipperUp!1007 (Context!10247 (t!376845 (exprs!5623 lt!2282143))) (h!69840 s!2326))))))

(declare-fun b!5733798 () Bool)

(declare-fun e!3525066 () (InoxSet Context!10246))

(assert (=> b!5733798 (= e!3525066 call!438364)))

(declare-fun b!5733799 () Bool)

(assert (=> b!5733799 (= e!3525066 ((as const (Array Context!10246 Bool)) false))))

(declare-fun b!5733800 () Bool)

(assert (=> b!5733800 (= e!3525067 e!3525066)))

(declare-fun c!1011830 () Bool)

(assert (=> b!5733800 (= c!1011830 ((_ is Cons!63393) (exprs!5623 lt!2282143)))))

(assert (= (and d!1807957 res!2421114) b!5733796))

(assert (= (and d!1807957 c!1011831) b!5733797))

(assert (= (and d!1807957 (not c!1011831)) b!5733800))

(assert (= (and b!5733800 c!1011830) b!5733798))

(assert (= (and b!5733800 (not c!1011830)) b!5733799))

(assert (= (or b!5733797 b!5733798) bm!438359))

(declare-fun m!6685836 () Bool)

(assert (=> bm!438359 m!6685836))

(declare-fun m!6685838 () Bool)

(assert (=> b!5733796 m!6685838))

(declare-fun m!6685840 () Bool)

(assert (=> b!5733797 m!6685840))

(assert (=> b!5732572 d!1807957))

(declare-fun d!1807959 () Bool)

(assert (=> d!1807959 (= (flatMap!1352 lt!2282159 lambda!310372) (choose!43417 lt!2282159 lambda!310372))))

(declare-fun bs!1340249 () Bool)

(assert (= bs!1340249 d!1807959))

(declare-fun m!6685842 () Bool)

(assert (=> bs!1340249 m!6685842))

(assert (=> b!5732572 d!1807959))

(declare-fun d!1807961 () Bool)

(assert (=> d!1807961 (= (flatMap!1352 lt!2282157 lambda!310372) (choose!43417 lt!2282157 lambda!310372))))

(declare-fun bs!1340250 () Bool)

(assert (= bs!1340250 d!1807961))

(declare-fun m!6685844 () Bool)

(assert (=> bs!1340250 m!6685844))

(assert (=> b!5732572 d!1807961))

(declare-fun d!1807963 () Bool)

(declare-fun lt!2282405 () Regex!15739)

(assert (=> d!1807963 (validRegex!7475 lt!2282405)))

(assert (=> d!1807963 (= lt!2282405 (generalisedUnion!1602 (unfocusZipperList!1167 lt!2282136)))))

(assert (=> d!1807963 (= (unfocusZipper!1481 lt!2282136) lt!2282405)))

(declare-fun bs!1340251 () Bool)

(assert (= bs!1340251 d!1807963))

(declare-fun m!6685846 () Bool)

(assert (=> bs!1340251 m!6685846))

(declare-fun m!6685848 () Bool)

(assert (=> bs!1340251 m!6685848))

(assert (=> bs!1340251 m!6685848))

(declare-fun m!6685850 () Bool)

(assert (=> bs!1340251 m!6685850))

(assert (=> b!5732572 d!1807963))

(declare-fun bs!1340252 () Bool)

(declare-fun d!1807965 () Bool)

(assert (= bs!1340252 (and d!1807965 d!1807759)))

(declare-fun lambda!310493 () Int)

(assert (=> bs!1340252 (= lambda!310493 lambda!310442)))

(declare-fun bs!1340253 () Bool)

(assert (= bs!1340253 (and d!1807965 d!1807833)))

(assert (=> bs!1340253 (= lambda!310493 lambda!310468)))

(declare-fun bs!1340254 () Bool)

(assert (= bs!1340254 (and d!1807965 d!1807873)))

(assert (=> bs!1340254 (= lambda!310493 lambda!310475)))

(declare-fun bs!1340255 () Bool)

(assert (= bs!1340255 (and d!1807965 d!1807911)))

(assert (=> bs!1340255 (= lambda!310493 lambda!310487)))

(declare-fun bs!1340256 () Bool)

(assert (= bs!1340256 (and d!1807965 d!1807883)))

(assert (=> bs!1340256 (= lambda!310493 lambda!310480)))

(declare-fun bs!1340257 () Bool)

(assert (= bs!1340257 (and d!1807965 b!5732599)))

(assert (=> bs!1340257 (= lambda!310493 lambda!310374)))

(assert (=> d!1807965 (= (inv!82594 (h!69842 zl!343)) (forall!14864 (exprs!5623 (h!69842 zl!343)) lambda!310493))))

(declare-fun bs!1340258 () Bool)

(assert (= bs!1340258 d!1807965))

(declare-fun m!6685852 () Bool)

(assert (=> bs!1340258 m!6685852))

(assert (=> b!5732591 d!1807965))

(declare-fun d!1807967 () Bool)

(declare-fun lt!2282406 () Regex!15739)

(assert (=> d!1807967 (validRegex!7475 lt!2282406)))

(assert (=> d!1807967 (= lt!2282406 (generalisedUnion!1602 (unfocusZipperList!1167 zl!343)))))

(assert (=> d!1807967 (= (unfocusZipper!1481 zl!343) lt!2282406)))

(declare-fun bs!1340259 () Bool)

(assert (= bs!1340259 d!1807967))

(declare-fun m!6685854 () Bool)

(assert (=> bs!1340259 m!6685854))

(assert (=> bs!1340259 m!6684530))

(assert (=> bs!1340259 m!6684530))

(assert (=> bs!1340259 m!6684532))

(assert (=> b!5732571 d!1807967))

(declare-fun d!1807969 () Bool)

(declare-fun e!3525071 () Bool)

(assert (=> d!1807969 e!3525071))

(declare-fun res!2421117 () Bool)

(assert (=> d!1807969 (=> (not res!2421117) (not e!3525071))))

(declare-fun lt!2282409 () List!63518)

(declare-fun noDuplicate!1659 (List!63518) Bool)

(assert (=> d!1807969 (= res!2421117 (noDuplicate!1659 lt!2282409))))

(declare-fun choose!43431 ((InoxSet Context!10246)) List!63518)

(assert (=> d!1807969 (= lt!2282409 (choose!43431 z!1189))))

(assert (=> d!1807969 (= (toList!9523 z!1189) lt!2282409)))

(declare-fun b!5733803 () Bool)

(declare-fun content!11546 (List!63518) (InoxSet Context!10246))

(assert (=> b!5733803 (= e!3525071 (= (content!11546 lt!2282409) z!1189))))

(assert (= (and d!1807969 res!2421117) b!5733803))

(declare-fun m!6685856 () Bool)

(assert (=> d!1807969 m!6685856))

(declare-fun m!6685858 () Bool)

(assert (=> d!1807969 m!6685858))

(declare-fun m!6685860 () Bool)

(assert (=> b!5733803 m!6685860))

(assert (=> b!5732570 d!1807969))

(declare-fun e!3525074 () Bool)

(assert (=> b!5732589 (= tp!1586461 e!3525074)))

(declare-fun b!5733815 () Bool)

(declare-fun tp!1586534 () Bool)

(declare-fun tp!1586532 () Bool)

(assert (=> b!5733815 (= e!3525074 (and tp!1586534 tp!1586532))))

(declare-fun b!5733817 () Bool)

(declare-fun tp!1586533 () Bool)

(declare-fun tp!1586535 () Bool)

(assert (=> b!5733817 (= e!3525074 (and tp!1586533 tp!1586535))))

(declare-fun b!5733814 () Bool)

(assert (=> b!5733814 (= e!3525074 tp_is_empty!40731)))

(declare-fun b!5733816 () Bool)

(declare-fun tp!1586531 () Bool)

(assert (=> b!5733816 (= e!3525074 tp!1586531)))

(assert (= (and b!5732589 ((_ is ElementMatch!15739) (reg!16068 r!7292))) b!5733814))

(assert (= (and b!5732589 ((_ is Concat!24584) (reg!16068 r!7292))) b!5733815))

(assert (= (and b!5732589 ((_ is Star!15739) (reg!16068 r!7292))) b!5733816))

(assert (= (and b!5732589 ((_ is Union!15739) (reg!16068 r!7292))) b!5733817))

(declare-fun b!5733822 () Bool)

(declare-fun e!3525077 () Bool)

(declare-fun tp!1586540 () Bool)

(declare-fun tp!1586541 () Bool)

(assert (=> b!5733822 (= e!3525077 (and tp!1586540 tp!1586541))))

(assert (=> b!5732583 (= tp!1586458 e!3525077)))

(assert (= (and b!5732583 ((_ is Cons!63393) (exprs!5623 (h!69842 zl!343)))) b!5733822))

(declare-fun condSetEmpty!38473 () Bool)

(assert (=> setNonEmpty!38467 (= condSetEmpty!38473 (= setRest!38467 ((as const (Array Context!10246 Bool)) false)))))

(declare-fun setRes!38473 () Bool)

(assert (=> setNonEmpty!38467 (= tp!1586457 setRes!38473)))

(declare-fun setIsEmpty!38473 () Bool)

(assert (=> setIsEmpty!38473 setRes!38473))

(declare-fun setNonEmpty!38473 () Bool)

(declare-fun e!3525080 () Bool)

(declare-fun setElem!38473 () Context!10246)

(declare-fun tp!1586546 () Bool)

(assert (=> setNonEmpty!38473 (= setRes!38473 (and tp!1586546 (inv!82594 setElem!38473) e!3525080))))

(declare-fun setRest!38473 () (InoxSet Context!10246))

(assert (=> setNonEmpty!38473 (= setRest!38467 ((_ map or) (store ((as const (Array Context!10246 Bool)) false) setElem!38473 true) setRest!38473))))

(declare-fun b!5733827 () Bool)

(declare-fun tp!1586547 () Bool)

(assert (=> b!5733827 (= e!3525080 tp!1586547)))

(assert (= (and setNonEmpty!38467 condSetEmpty!38473) setIsEmpty!38473))

(assert (= (and setNonEmpty!38467 (not condSetEmpty!38473)) setNonEmpty!38473))

(assert (= setNonEmpty!38473 b!5733827))

(declare-fun m!6685862 () Bool)

(assert (=> setNonEmpty!38473 m!6685862))

(declare-fun e!3525081 () Bool)

(assert (=> b!5732592 (= tp!1586455 e!3525081)))

(declare-fun b!5733829 () Bool)

(declare-fun tp!1586551 () Bool)

(declare-fun tp!1586549 () Bool)

(assert (=> b!5733829 (= e!3525081 (and tp!1586551 tp!1586549))))

(declare-fun b!5733831 () Bool)

(declare-fun tp!1586550 () Bool)

(declare-fun tp!1586552 () Bool)

(assert (=> b!5733831 (= e!3525081 (and tp!1586550 tp!1586552))))

(declare-fun b!5733828 () Bool)

(assert (=> b!5733828 (= e!3525081 tp_is_empty!40731)))

(declare-fun b!5733830 () Bool)

(declare-fun tp!1586548 () Bool)

(assert (=> b!5733830 (= e!3525081 tp!1586548)))

(assert (= (and b!5732592 ((_ is ElementMatch!15739) (regOne!31991 r!7292))) b!5733828))

(assert (= (and b!5732592 ((_ is Concat!24584) (regOne!31991 r!7292))) b!5733829))

(assert (= (and b!5732592 ((_ is Star!15739) (regOne!31991 r!7292))) b!5733830))

(assert (= (and b!5732592 ((_ is Union!15739) (regOne!31991 r!7292))) b!5733831))

(declare-fun e!3525082 () Bool)

(assert (=> b!5732592 (= tp!1586460 e!3525082)))

(declare-fun b!5733833 () Bool)

(declare-fun tp!1586556 () Bool)

(declare-fun tp!1586554 () Bool)

(assert (=> b!5733833 (= e!3525082 (and tp!1586556 tp!1586554))))

(declare-fun b!5733835 () Bool)

(declare-fun tp!1586555 () Bool)

(declare-fun tp!1586557 () Bool)

(assert (=> b!5733835 (= e!3525082 (and tp!1586555 tp!1586557))))

(declare-fun b!5733832 () Bool)

(assert (=> b!5733832 (= e!3525082 tp_is_empty!40731)))

(declare-fun b!5733834 () Bool)

(declare-fun tp!1586553 () Bool)

(assert (=> b!5733834 (= e!3525082 tp!1586553)))

(assert (= (and b!5732592 ((_ is ElementMatch!15739) (regTwo!31991 r!7292))) b!5733832))

(assert (= (and b!5732592 ((_ is Concat!24584) (regTwo!31991 r!7292))) b!5733833))

(assert (= (and b!5732592 ((_ is Star!15739) (regTwo!31991 r!7292))) b!5733834))

(assert (= (and b!5732592 ((_ is Union!15739) (regTwo!31991 r!7292))) b!5733835))

(declare-fun b!5733836 () Bool)

(declare-fun e!3525083 () Bool)

(declare-fun tp!1586558 () Bool)

(declare-fun tp!1586559 () Bool)

(assert (=> b!5733836 (= e!3525083 (and tp!1586558 tp!1586559))))

(assert (=> b!5732582 (= tp!1586453 e!3525083)))

(assert (= (and b!5732582 ((_ is Cons!63393) (exprs!5623 setElem!38467))) b!5733836))

(declare-fun b!5733844 () Bool)

(declare-fun e!3525089 () Bool)

(declare-fun tp!1586564 () Bool)

(assert (=> b!5733844 (= e!3525089 tp!1586564)))

(declare-fun e!3525088 () Bool)

(declare-fun b!5733843 () Bool)

(declare-fun tp!1586565 () Bool)

(assert (=> b!5733843 (= e!3525088 (and (inv!82594 (h!69842 (t!376846 zl!343))) e!3525089 tp!1586565))))

(assert (=> b!5732591 (= tp!1586454 e!3525088)))

(assert (= b!5733843 b!5733844))

(assert (= (and b!5732591 ((_ is Cons!63394) (t!376846 zl!343))) b!5733843))

(declare-fun m!6685864 () Bool)

(assert (=> b!5733843 m!6685864))

(declare-fun b!5733849 () Bool)

(declare-fun e!3525092 () Bool)

(declare-fun tp!1586568 () Bool)

(assert (=> b!5733849 (= e!3525092 (and tp_is_empty!40731 tp!1586568))))

(assert (=> b!5732560 (= tp!1586459 e!3525092)))

(assert (= (and b!5732560 ((_ is Cons!63392) (t!376844 s!2326))) b!5733849))

(declare-fun e!3525093 () Bool)

(assert (=> b!5732580 (= tp!1586462 e!3525093)))

(declare-fun b!5733851 () Bool)

(declare-fun tp!1586572 () Bool)

(declare-fun tp!1586570 () Bool)

(assert (=> b!5733851 (= e!3525093 (and tp!1586572 tp!1586570))))

(declare-fun b!5733853 () Bool)

(declare-fun tp!1586571 () Bool)

(declare-fun tp!1586573 () Bool)

(assert (=> b!5733853 (= e!3525093 (and tp!1586571 tp!1586573))))

(declare-fun b!5733850 () Bool)

(assert (=> b!5733850 (= e!3525093 tp_is_empty!40731)))

(declare-fun b!5733852 () Bool)

(declare-fun tp!1586569 () Bool)

(assert (=> b!5733852 (= e!3525093 tp!1586569)))

(assert (= (and b!5732580 ((_ is ElementMatch!15739) (regOne!31990 r!7292))) b!5733850))

(assert (= (and b!5732580 ((_ is Concat!24584) (regOne!31990 r!7292))) b!5733851))

(assert (= (and b!5732580 ((_ is Star!15739) (regOne!31990 r!7292))) b!5733852))

(assert (= (and b!5732580 ((_ is Union!15739) (regOne!31990 r!7292))) b!5733853))

(declare-fun e!3525094 () Bool)

(assert (=> b!5732580 (= tp!1586456 e!3525094)))

(declare-fun b!5733855 () Bool)

(declare-fun tp!1586577 () Bool)

(declare-fun tp!1586575 () Bool)

(assert (=> b!5733855 (= e!3525094 (and tp!1586577 tp!1586575))))

(declare-fun b!5733857 () Bool)

(declare-fun tp!1586576 () Bool)

(declare-fun tp!1586578 () Bool)

(assert (=> b!5733857 (= e!3525094 (and tp!1586576 tp!1586578))))

(declare-fun b!5733854 () Bool)

(assert (=> b!5733854 (= e!3525094 tp_is_empty!40731)))

(declare-fun b!5733856 () Bool)

(declare-fun tp!1586574 () Bool)

(assert (=> b!5733856 (= e!3525094 tp!1586574)))

(assert (= (and b!5732580 ((_ is ElementMatch!15739) (regTwo!31990 r!7292))) b!5733854))

(assert (= (and b!5732580 ((_ is Concat!24584) (regTwo!31990 r!7292))) b!5733855))

(assert (= (and b!5732580 ((_ is Star!15739) (regTwo!31990 r!7292))) b!5733856))

(assert (= (and b!5732580 ((_ is Union!15739) (regTwo!31990 r!7292))) b!5733857))

(declare-fun b_lambda!216597 () Bool)

(assert (= b_lambda!216593 (or b!5732598 b_lambda!216597)))

(declare-fun bs!1340260 () Bool)

(declare-fun d!1807971 () Bool)

(assert (= bs!1340260 (and d!1807971 b!5732598)))

(assert (=> bs!1340260 (= (dynLambda!24808 lambda!310372 lt!2282119) (derivationStepZipperUp!1007 lt!2282119 (h!69840 s!2326)))))

(assert (=> bs!1340260 m!6684564))

(assert (=> d!1807951 d!1807971))

(declare-fun b_lambda!216599 () Bool)

(assert (= b_lambda!216573 (or b!5732599 b_lambda!216599)))

(declare-fun bs!1340261 () Bool)

(declare-fun d!1807973 () Bool)

(assert (= bs!1340261 (and d!1807973 b!5732599)))

(declare-fun lt!2282410 () Unit!156488)

(assert (=> bs!1340261 (= lt!2282410 (lemmaConcatPreservesForall!308 (exprs!5623 lt!2282119) lt!2282116 lambda!310374))))

(assert (=> bs!1340261 (= (dynLambda!24805 lambda!310373 lt!2282119) (Context!10247 (++!13951 (exprs!5623 lt!2282119) lt!2282116)))))

(declare-fun m!6685866 () Bool)

(assert (=> bs!1340261 m!6685866))

(declare-fun m!6685868 () Bool)

(assert (=> bs!1340261 m!6685868))

(assert (=> d!1807681 d!1807973))

(declare-fun b_lambda!216601 () Bool)

(assert (= b_lambda!216595 (or b!5732598 b_lambda!216601)))

(declare-fun bs!1340262 () Bool)

(declare-fun d!1807975 () Bool)

(assert (= bs!1340262 (and d!1807975 b!5732598)))

(assert (=> bs!1340262 (= (dynLambda!24808 lambda!310372 lt!2282143) (derivationStepZipperUp!1007 lt!2282143 (h!69840 s!2326)))))

(assert (=> bs!1340262 m!6684580))

(assert (=> d!1807955 d!1807975))

(declare-fun b_lambda!216603 () Bool)

(assert (= b_lambda!216581 (or b!5732598 b_lambda!216603)))

(declare-fun bs!1340263 () Bool)

(declare-fun d!1807977 () Bool)

(assert (= bs!1340263 (and d!1807977 b!5732598)))

(assert (=> bs!1340263 (= (dynLambda!24808 lambda!310372 lt!2282114) (derivationStepZipperUp!1007 lt!2282114 (h!69840 s!2326)))))

(assert (=> bs!1340263 m!6684536))

(assert (=> d!1807853 d!1807977))

(declare-fun b_lambda!216605 () Bool)

(assert (= b_lambda!216575 (or b!5732598 b_lambda!216605)))

(declare-fun bs!1340264 () Bool)

(declare-fun d!1807979 () Bool)

(assert (= bs!1340264 (and d!1807979 b!5732598)))

(assert (=> bs!1340264 (= (dynLambda!24808 lambda!310372 (h!69842 zl!343)) (derivationStepZipperUp!1007 (h!69842 zl!343) (h!69840 s!2326)))))

(assert (=> bs!1340264 m!6684554))

(assert (=> d!1807721 d!1807979))

(check-sat (not b!5733541) (not b!5733384) (not b!5733629) (not b!5733546) (not b!5733352) (not b!5733284) (not d!1807931) (not b!5733539) (not b!5733476) (not b!5733715) (not b!5732918) (not bm!438352) (not b!5733640) (not b!5733484) (not b!5733506) (not b!5733336) (not d!1807763) (not b!5733817) (not b_lambda!216597) (not b!5733855) (not d!1807769) (not b!5733785) (not b!5733195) (not d!1807815) (not b!5733803) (not b!5733786) (not d!1807865) (not b!5733088) (not b!5733844) (not d!1807831) (not b!5733275) (not b!5733240) (not d!1807965) (not b!5733634) (not b!5733779) (not b!5733849) (not b!5733584) (not b!5733792) (not b!5733857) (not bm!438258) (not b!5733765) (not d!1807621) (not b!5733836) (not d!1807705) (not b!5733796) (not bs!1340261) (not d!1807767) (not bm!438293) (not d!1807921) (not b!5733764) (not bm!438350) (not d!1807949) (not b!5733645) (not b_lambda!216603) (not b!5733327) (not d!1807599) (not d!1807935) (not b!5733830) (not b!5733754) (not b!5733776) (not b!5733732) (not b!5732846) (not d!1807907) (not d!1807947) (not b!5733710) (not b!5732911) (not b!5733749) (not d!1807739) (not bm!438299) (not d!1807943) (not d!1807933) (not d!1807885) (not b!5733816) (not d!1807727) (not b!5733726) (not bm!438247) (not b!5732930) (not d!1807925) (not bm!438349) (not d!1807777) (not b!5733340) (not b!5732849) tp_is_empty!40731 (not b!5733547) (not b!5732967) (not d!1807625) (not b!5733827) (not b_lambda!216601) (not b!5732896) (not b!5733540) (not b!5733740) (not b!5733787) (not bm!438356) (not b!5733728) (not b!5733270) (not b!5733791) (not b!5733745) (not b!5733648) (not d!1807671) (not b!5733341) (not b!5733511) (not b!5732910) (not b!5733512) (not d!1807787) (not b!5733163) (not b!5733238) (not d!1807801) (not b!5733383) (not bm!438359) (not bm!438358) (not d!1807615) (not d!1807849) (not b!5733724) (not d!1807899) (not b!5733717) (not bs!1340260) (not b!5733706) (not d!1807939) (not bs!1340264) (not bm!438355) (not b!5732932) (not b!5733746) (not bm!438276) (not b!5733164) (not b!5733834) (not bm!438253) (not bm!438357) (not b!5733572) (not d!1807683) (not d!1807789) (not b!5732929) (not d!1807733) (not b!5733509) (not b_lambda!216599) (not d!1807969) (not bm!438295) (not b!5733737) (not bm!438275) (not b!5733835) (not b!5733788) (not b!5732966) (not b!5733829) (not b!5733244) (not b!5732919) (not d!1807817) (not d!1807945) (not b!5733751) (not b!5733723) (not d!1807959) (not b!5733334) (not b!5733483) (not b!5733169) (not d!1807663) (not b!5733335) (not d!1807813) (not b!5732927) (not b!5733707) (not bs!1340263) (not bm!438292) (not d!1807645) (not d!1807623) (not bm!438321) (not b!5733087) (not b!5733702) (not d!1807857) (not d!1807759) (not d!1807691) (not d!1807923) (not b!5732962) (not b!5733771) (not bm!438354) (not b!5732757) (not d!1807951) (not b!5732964) (not b!5733245) (not d!1807833) (not b!5733725) (not b!5732963) (not d!1807761) (not b!5733790) (not b!5733727) (not b!5733735) (not bm!438300) (not b!5733481) (not b!5733815) (not bm!438257) (not d!1807929) (not b!5733856) (not b!5733544) (not b!5732915) (not b!5733328) (not d!1807635) (not d!1807883) (not b!5733337) (not b!5733742) (not b!5733279) (not d!1807911) (not bs!1340262) (not b!5733585) (not b!5733722) (not b!5733774) (not d!1807681) (not b!5733276) (not d!1807897) (not b!5733639) (not b!5733767) (not d!1807927) (not b!5733510) (not d!1807873) (not bm!438320) (not b!5732850) (not d!1807963) (not b!5733843) (not b!5733272) (not d!1807633) (not d!1807721) (not d!1807579) (not b!5732965) (not b!5733731) (not d!1807639) (not d!1807765) (not d!1807967) (not b!5733338) (not d!1807901) (not b!5732855) (not b!5733477) (not b!5732924) (not b!5733718) (not b!5732758) (not b!5733474) (not b!5732853) (not d!1807871) (not b!5732922) (not b!5733545) (not d!1807617) (not b!5733643) (not b!5733482) (not b!5733159) (not b!5733833) (not b!5733138) (not b!5733852) (not b!5732897) (not b!5733789) (not b!5733797) (not d!1807829) (not bm!438351) (not b!5733480) (not b_lambda!216605) (not bm!438301) (not d!1807853) (not b!5733168) (not b!5733239) (not bm!438248) (not d!1807961) (not b!5733853) (not setNonEmpty!38473) (not b!5733351) (not d!1807607) (not d!1807715) (not b!5732931) (not d!1807941) (not d!1807679) (not b!5732858) (not bm!438353) (not d!1807735) (not b!5733281) (not b!5733851) (not b!5733333) (not b!5733057) (not bm!438256) (not b!5733196) (not d!1807631) (not d!1807597) (not b!5733770) (not d!1807785) (not b!5733712) (not b!5733158) (not d!1807917) (not d!1807895) (not b!5733703) (not b!5733822) (not b!5733269) (not b!5733831) (not d!1807955) (not bm!438334) (not bm!438278) (not b!5733473) (not d!1807855) (not bm!438306) (not b!5733243))
(check-sat)
