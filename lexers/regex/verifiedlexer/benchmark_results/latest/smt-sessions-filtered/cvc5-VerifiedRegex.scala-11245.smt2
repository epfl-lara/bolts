; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!589782 () Bool)

(assert start!589782)

(declare-fun b!5730909 () Bool)

(assert (=> b!5730909 true))

(assert (=> b!5730909 true))

(declare-fun lambda!310151 () Int)

(declare-fun lambda!310150 () Int)

(assert (=> b!5730909 (not (= lambda!310151 lambda!310150))))

(assert (=> b!5730909 true))

(assert (=> b!5730909 true))

(declare-fun b!5730892 () Bool)

(assert (=> b!5730892 true))

(declare-fun b!5730896 () Bool)

(assert (=> b!5730896 true))

(declare-fun bs!1339539 () Bool)

(declare-fun b!5730890 () Bool)

(assert (= bs!1339539 (and b!5730890 b!5730909)))

(declare-datatypes ((C!31742 0))(
  ( (C!31743 (val!25573 Int)) )
))
(declare-datatypes ((Regex!15736 0))(
  ( (ElementMatch!15736 (c!1011160 C!31742)) (Concat!24581 (regOne!31984 Regex!15736) (regTwo!31984 Regex!15736)) (EmptyExpr!15736) (Star!15736 (reg!16065 Regex!15736)) (EmptyLang!15736) (Union!15736 (regOne!31985 Regex!15736) (regTwo!31985 Regex!15736)) )
))
(declare-fun r!7292 () Regex!15736)

(declare-fun lambda!310155 () Int)

(declare-fun lt!2281388 () Regex!15736)

(assert (=> bs!1339539 (= (= lt!2281388 (regOne!31984 r!7292)) (= lambda!310155 lambda!310150))))

(assert (=> bs!1339539 (not (= lambda!310155 lambda!310151))))

(assert (=> b!5730890 true))

(assert (=> b!5730890 true))

(assert (=> b!5730890 true))

(declare-fun lambda!310156 () Int)

(assert (=> bs!1339539 (not (= lambda!310156 lambda!310150))))

(assert (=> bs!1339539 (= (= lt!2281388 (regOne!31984 r!7292)) (= lambda!310156 lambda!310151))))

(assert (=> b!5730890 (not (= lambda!310156 lambda!310155))))

(assert (=> b!5730890 true))

(assert (=> b!5730890 true))

(assert (=> b!5730890 true))

(declare-fun b!5730882 () Bool)

(declare-fun e!3523486 () Bool)

(declare-fun tp!1586249 () Bool)

(declare-fun tp!1586248 () Bool)

(assert (=> b!5730882 (= e!3523486 (and tp!1586249 tp!1586248))))

(declare-fun b!5730883 () Bool)

(declare-fun e!3523477 () Bool)

(declare-fun e!3523481 () Bool)

(assert (=> b!5730883 (= e!3523477 e!3523481)))

(declare-fun res!2419737 () Bool)

(assert (=> b!5730883 (=> res!2419737 e!3523481)))

(declare-datatypes ((List!63507 0))(
  ( (Nil!63383) (Cons!63383 (h!69831 Regex!15736) (t!376835 List!63507)) )
))
(declare-datatypes ((Context!10240 0))(
  ( (Context!10241 (exprs!5620 List!63507)) )
))
(declare-datatypes ((List!63508 0))(
  ( (Nil!63384) (Cons!63384 (h!69832 Context!10240) (t!376836 List!63508)) )
))
(declare-fun lt!2281368 () List!63508)

(declare-fun unfocusZipper!1478 (List!63508) Regex!15736)

(assert (=> b!5730883 (= res!2419737 (not (= (unfocusZipper!1478 lt!2281368) (reg!16065 (regOne!31984 r!7292)))))))

(declare-fun lt!2281342 () Context!10240)

(assert (=> b!5730883 (= lt!2281368 (Cons!63384 lt!2281342 Nil!63384))))

(declare-datatypes ((List!63509 0))(
  ( (Nil!63385) (Cons!63385 (h!69833 C!31742) (t!376837 List!63509)) )
))
(declare-fun s!2326 () List!63509)

(declare-fun lt!2281337 () (Set Context!10240))

(declare-fun lt!2281359 () Context!10240)

(declare-fun lambda!310152 () Int)

(declare-fun flatMap!1349 ((Set Context!10240) Int) (Set Context!10240))

(declare-fun derivationStepZipperUp!1004 (Context!10240 C!31742) (Set Context!10240))

(assert (=> b!5730883 (= (flatMap!1349 lt!2281337 lambda!310152) (derivationStepZipperUp!1004 lt!2281359 (h!69833 s!2326)))))

(declare-datatypes ((Unit!156476 0))(
  ( (Unit!156477) )
))
(declare-fun lt!2281356 () Unit!156476)

(declare-fun lemmaFlatMapOnSingletonSet!881 ((Set Context!10240) Context!10240 Int) Unit!156476)

(assert (=> b!5730883 (= lt!2281356 (lemmaFlatMapOnSingletonSet!881 lt!2281337 lt!2281359 lambda!310152))))

(declare-fun lt!2281343 () (Set Context!10240))

(assert (=> b!5730883 (= (flatMap!1349 lt!2281343 lambda!310152) (derivationStepZipperUp!1004 lt!2281342 (h!69833 s!2326)))))

(declare-fun lt!2281382 () Unit!156476)

(assert (=> b!5730883 (= lt!2281382 (lemmaFlatMapOnSingletonSet!881 lt!2281343 lt!2281342 lambda!310152))))

(declare-fun lt!2281354 () (Set Context!10240))

(assert (=> b!5730883 (= lt!2281354 (derivationStepZipperUp!1004 lt!2281359 (h!69833 s!2326)))))

(declare-fun lt!2281372 () (Set Context!10240))

(assert (=> b!5730883 (= lt!2281372 (derivationStepZipperUp!1004 lt!2281342 (h!69833 s!2326)))))

(assert (=> b!5730883 (= lt!2281337 (set.insert lt!2281359 (as set.empty (Set Context!10240))))))

(assert (=> b!5730883 (= lt!2281343 (set.insert lt!2281342 (as set.empty (Set Context!10240))))))

(declare-fun lt!2281379 () List!63507)

(assert (=> b!5730883 (= lt!2281342 (Context!10241 lt!2281379))))

(assert (=> b!5730883 (= lt!2281379 (Cons!63383 (reg!16065 (regOne!31984 r!7292)) Nil!63383))))

(declare-fun b!5730884 () Bool)

(declare-fun e!3523498 () Bool)

(declare-fun tp!1586247 () Bool)

(assert (=> b!5730884 (= e!3523498 tp!1586247)))

(declare-fun b!5730885 () Bool)

(declare-fun e!3523494 () Bool)

(declare-fun e!3523487 () Bool)

(assert (=> b!5730885 (= e!3523494 (not e!3523487))))

(declare-fun res!2419765 () Bool)

(assert (=> b!5730885 (=> res!2419765 e!3523487)))

(declare-fun zl!343 () List!63508)

(assert (=> b!5730885 (= res!2419765 (not (is-Cons!63384 zl!343)))))

(declare-fun lt!2281340 () Bool)

(declare-fun matchRSpec!2839 (Regex!15736 List!63509) Bool)

(assert (=> b!5730885 (= lt!2281340 (matchRSpec!2839 r!7292 s!2326))))

(declare-fun matchR!7921 (Regex!15736 List!63509) Bool)

(assert (=> b!5730885 (= lt!2281340 (matchR!7921 r!7292 s!2326))))

(declare-fun lt!2281392 () Unit!156476)

(declare-fun mainMatchTheorem!2839 (Regex!15736 List!63509) Unit!156476)

(assert (=> b!5730885 (= lt!2281392 (mainMatchTheorem!2839 r!7292 s!2326))))

(declare-fun b!5730886 () Bool)

(declare-fun e!3523480 () Bool)

(declare-fun lt!2281351 () (Set Context!10240))

(declare-fun matchZipper!1874 ((Set Context!10240) List!63509) Bool)

(assert (=> b!5730886 (= e!3523480 (matchZipper!1874 lt!2281351 (t!376837 s!2326)))))

(declare-fun res!2419752 () Bool)

(declare-fun e!3523493 () Bool)

(assert (=> start!589782 (=> (not res!2419752) (not e!3523493))))

(declare-fun validRegex!7472 (Regex!15736) Bool)

(assert (=> start!589782 (= res!2419752 (validRegex!7472 r!7292))))

(assert (=> start!589782 e!3523493))

(assert (=> start!589782 e!3523486))

(declare-fun condSetEmpty!38452 () Bool)

(declare-fun z!1189 () (Set Context!10240))

(assert (=> start!589782 (= condSetEmpty!38452 (= z!1189 (as set.empty (Set Context!10240))))))

(declare-fun setRes!38452 () Bool)

(assert (=> start!589782 setRes!38452))

(declare-fun e!3523479 () Bool)

(assert (=> start!589782 e!3523479))

(declare-fun e!3523500 () Bool)

(assert (=> start!589782 e!3523500))

(declare-fun b!5730887 () Bool)

(declare-fun res!2419767 () Bool)

(declare-fun e!3523496 () Bool)

(assert (=> b!5730887 (=> res!2419767 e!3523496)))

(declare-datatypes ((tuple2!65666 0))(
  ( (tuple2!65667 (_1!36136 List!63509) (_2!36136 List!63509)) )
))
(declare-fun lt!2281366 () tuple2!65666)

(assert (=> b!5730887 (= res!2419767 (not (matchZipper!1874 lt!2281337 (_2!36136 lt!2281366))))))

(declare-fun b!5730888 () Bool)

(declare-fun res!2419754 () Bool)

(assert (=> b!5730888 (=> res!2419754 e!3523487)))

(declare-fun generalisedUnion!1599 (List!63507) Regex!15736)

(declare-fun unfocusZipperList!1164 (List!63508) List!63507)

(assert (=> b!5730888 (= res!2419754 (not (= r!7292 (generalisedUnion!1599 (unfocusZipperList!1164 zl!343)))))))

(declare-fun b!5730889 () Bool)

(declare-fun res!2419748 () Bool)

(declare-fun e!3523483 () Bool)

(assert (=> b!5730889 (=> res!2419748 e!3523483)))

(assert (=> b!5730889 (= res!2419748 (not (matchZipper!1874 z!1189 s!2326)))))

(declare-fun setIsEmpty!38452 () Bool)

(assert (=> setIsEmpty!38452 setRes!38452))

(declare-datatypes ((Option!15745 0))(
  ( (None!15744) (Some!15744 (v!51799 tuple2!65666)) )
))
(declare-fun lt!2281360 () Option!15745)

(declare-fun get!21860 (Option!15745) tuple2!65666)

(assert (=> b!5730890 (= e!3523496 (matchR!7921 lt!2281388 (_1!36136 (get!21860 lt!2281360))))))

(declare-fun Exists!2836 (Int) Bool)

(assert (=> b!5730890 (= (Exists!2836 lambda!310155) (Exists!2836 lambda!310156))))

(declare-fun lt!2281355 () Unit!156476)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1465 (Regex!15736 Regex!15736 List!63509) Unit!156476)

(assert (=> b!5730890 (= lt!2281355 (lemmaExistCutMatchRandMatchRSpecEquivalent!1465 lt!2281388 (regTwo!31984 r!7292) s!2326))))

(declare-fun isDefined!12448 (Option!15745) Bool)

(assert (=> b!5730890 (= (isDefined!12448 lt!2281360) (Exists!2836 lambda!310155))))

(declare-fun findConcatSeparation!2159 (Regex!15736 Regex!15736 List!63509 List!63509 List!63509) Option!15745)

(assert (=> b!5730890 (= lt!2281360 (findConcatSeparation!2159 lt!2281388 (regTwo!31984 r!7292) Nil!63385 s!2326 s!2326))))

(declare-fun lt!2281377 () Unit!156476)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1923 (Regex!15736 Regex!15736 List!63509) Unit!156476)

(assert (=> b!5730890 (= lt!2281377 (lemmaFindConcatSeparationEquivalentToExists!1923 lt!2281388 (regTwo!31984 r!7292) s!2326))))

(declare-fun lt!2281361 () Regex!15736)

(assert (=> b!5730890 (matchRSpec!2839 lt!2281361 s!2326)))

(declare-fun lt!2281363 () Unit!156476)

(assert (=> b!5730890 (= lt!2281363 (mainMatchTheorem!2839 lt!2281361 s!2326))))

(assert (=> b!5730890 (matchR!7921 lt!2281361 s!2326)))

(assert (=> b!5730890 (= lt!2281361 (Concat!24581 lt!2281388 (regTwo!31984 r!7292)))))

(declare-fun lt!2281375 () Regex!15736)

(assert (=> b!5730890 (= lt!2281388 (Concat!24581 (reg!16065 (regOne!31984 r!7292)) lt!2281375))))

(declare-fun lt!2281376 () Unit!156476)

(declare-fun lemmaConcatAssociative!89 (Regex!15736 Regex!15736 Regex!15736 List!63509) Unit!156476)

(assert (=> b!5730890 (= lt!2281376 (lemmaConcatAssociative!89 (reg!16065 (regOne!31984 r!7292)) lt!2281375 (regTwo!31984 r!7292) s!2326))))

(declare-fun e!3523485 () Bool)

(assert (=> b!5730890 e!3523485))

(declare-fun res!2419758 () Bool)

(assert (=> b!5730890 (=> (not res!2419758) (not e!3523485))))

(declare-fun lt!2281344 () Regex!15736)

(declare-fun lt!2281378 () List!63509)

(assert (=> b!5730890 (= res!2419758 (matchR!7921 lt!2281344 lt!2281378))))

(declare-fun lt!2281371 () Regex!15736)

(declare-fun lt!2281374 () Unit!156476)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!273 (Regex!15736 Regex!15736 List!63509 List!63509) Unit!156476)

(assert (=> b!5730890 (= lt!2281374 (lemmaTwoRegexMatchThenConcatMatchesConcatString!273 (reg!16065 (regOne!31984 r!7292)) lt!2281371 (_1!36136 lt!2281366) (_2!36136 lt!2281366)))))

(assert (=> b!5730890 (matchR!7921 lt!2281371 (_2!36136 lt!2281366))))

(declare-fun lt!2281357 () Unit!156476)

(declare-fun lt!2281391 () List!63508)

(declare-fun theoremZipperRegexEquiv!656 ((Set Context!10240) List!63508 Regex!15736 List!63509) Unit!156476)

(assert (=> b!5730890 (= lt!2281357 (theoremZipperRegexEquiv!656 lt!2281337 lt!2281391 lt!2281371 (_2!36136 lt!2281366)))))

(assert (=> b!5730890 (matchR!7921 (reg!16065 (regOne!31984 r!7292)) (_1!36136 lt!2281366))))

(declare-fun lt!2281373 () Unit!156476)

(assert (=> b!5730890 (= lt!2281373 (theoremZipperRegexEquiv!656 lt!2281343 lt!2281368 (reg!16065 (regOne!31984 r!7292)) (_1!36136 lt!2281366)))))

(declare-fun lt!2281387 () List!63507)

(declare-fun ++!13944 (List!63507 List!63507) List!63507)

(assert (=> b!5730890 (matchZipper!1874 (set.insert (Context!10241 (++!13944 lt!2281379 lt!2281387)) (as set.empty (Set Context!10240))) lt!2281378)))

(declare-fun lt!2281390 () Unit!156476)

(declare-fun lambda!310154 () Int)

(declare-fun lemmaConcatPreservesForall!305 (List!63507 List!63507 Int) Unit!156476)

(assert (=> b!5730890 (= lt!2281390 (lemmaConcatPreservesForall!305 lt!2281379 lt!2281387 lambda!310154))))

(declare-fun lt!2281338 () Unit!156476)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!135 (Context!10240 Context!10240 List!63509 List!63509) Unit!156476)

(assert (=> b!5730890 (= lt!2281338 (lemmaConcatenateContextMatchesConcatOfStrings!135 lt!2281342 lt!2281359 (_1!36136 lt!2281366) (_2!36136 lt!2281366)))))

(declare-fun b!5730891 () Bool)

(declare-fun e!3523488 () Bool)

(declare-fun nullable!5768 (Regex!15736) Bool)

(assert (=> b!5730891 (= e!3523488 (nullable!5768 (regOne!31984 (regOne!31984 r!7292))))))

(declare-fun e!3523489 () Bool)

(declare-fun e!3523475 () Bool)

(assert (=> b!5730892 (= e!3523489 e!3523475)))

(declare-fun res!2419744 () Bool)

(assert (=> b!5730892 (=> res!2419744 e!3523475)))

(assert (=> b!5730892 (= res!2419744 (or (and (is-ElementMatch!15736 (regOne!31984 r!7292)) (= (c!1011160 (regOne!31984 r!7292)) (h!69833 s!2326))) (is-Union!15736 (regOne!31984 r!7292))))))

(declare-fun lt!2281369 () Unit!156476)

(declare-fun e!3523478 () Unit!156476)

(assert (=> b!5730892 (= lt!2281369 e!3523478)))

(declare-fun c!1011159 () Bool)

(declare-fun lt!2281384 () Bool)

(assert (=> b!5730892 (= c!1011159 lt!2281384)))

(assert (=> b!5730892 (= lt!2281384 (nullable!5768 (h!69831 (exprs!5620 (h!69832 zl!343)))))))

(assert (=> b!5730892 (= (flatMap!1349 z!1189 lambda!310152) (derivationStepZipperUp!1004 (h!69832 zl!343) (h!69833 s!2326)))))

(declare-fun lt!2281381 () Unit!156476)

(assert (=> b!5730892 (= lt!2281381 (lemmaFlatMapOnSingletonSet!881 z!1189 (h!69832 zl!343) lambda!310152))))

(declare-fun lt!2281389 () Context!10240)

(assert (=> b!5730892 (= lt!2281351 (derivationStepZipperUp!1004 lt!2281389 (h!69833 s!2326)))))

(declare-fun lt!2281345 () (Set Context!10240))

(declare-fun derivationStepZipperDown!1078 (Regex!15736 Context!10240 C!31742) (Set Context!10240))

(assert (=> b!5730892 (= lt!2281345 (derivationStepZipperDown!1078 (h!69831 (exprs!5620 (h!69832 zl!343))) lt!2281389 (h!69833 s!2326)))))

(assert (=> b!5730892 (= lt!2281389 (Context!10241 (t!376835 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun lt!2281383 () (Set Context!10240))

(assert (=> b!5730892 (= lt!2281383 (derivationStepZipperUp!1004 (Context!10241 (Cons!63383 (h!69831 (exprs!5620 (h!69832 zl!343))) (t!376835 (exprs!5620 (h!69832 zl!343))))) (h!69833 s!2326)))))

(declare-fun b!5730893 () Bool)

(declare-fun res!2419750 () Bool)

(declare-fun e!3523499 () Bool)

(assert (=> b!5730893 (=> res!2419750 e!3523499)))

(declare-fun lt!2281348 () Regex!15736)

(assert (=> b!5730893 (= res!2419750 (not (= lt!2281348 r!7292)))))

(declare-fun b!5730894 () Bool)

(declare-fun tp_is_empty!40725 () Bool)

(declare-fun tp!1586255 () Bool)

(assert (=> b!5730894 (= e!3523500 (and tp_is_empty!40725 tp!1586255))))

(declare-fun b!5730895 () Bool)

(declare-fun res!2419764 () Bool)

(assert (=> b!5730895 (=> res!2419764 e!3523475)))

(assert (=> b!5730895 (= res!2419764 (or (is-Concat!24581 (regOne!31984 r!7292)) (not (is-Star!15736 (regOne!31984 r!7292)))))))

(declare-fun e!3523476 () Bool)

(declare-fun e!3523491 () Bool)

(assert (=> b!5730896 (= e!3523476 e!3523491)))

(declare-fun res!2419753 () Bool)

(assert (=> b!5730896 (=> res!2419753 e!3523491)))

(declare-fun lt!2281341 () (Set Context!10240))

(declare-fun appendTo!115 ((Set Context!10240) Context!10240) (Set Context!10240))

(assert (=> b!5730896 (= res!2419753 (not (= (appendTo!115 lt!2281343 lt!2281359) lt!2281341)))))

(declare-fun lambda!310153 () Int)

(declare-fun map!14525 ((Set Context!10240) Int) (Set Context!10240))

(assert (=> b!5730896 (= (map!14525 lt!2281343 lambda!310153) (set.insert (Context!10241 (++!13944 lt!2281379 lt!2281387)) (as set.empty (Set Context!10240))))))

(declare-fun lt!2281346 () Unit!156476)

(assert (=> b!5730896 (= lt!2281346 (lemmaConcatPreservesForall!305 lt!2281379 lt!2281387 lambda!310154))))

(declare-fun lt!2281365 () Unit!156476)

(declare-fun lemmaMapOnSingletonSet!131 ((Set Context!10240) Context!10240 Int) Unit!156476)

(assert (=> b!5730896 (= lt!2281365 (lemmaMapOnSingletonSet!131 lt!2281343 lt!2281342 lambda!310153))))

(declare-fun b!5730897 () Bool)

(declare-fun res!2419741 () Bool)

(assert (=> b!5730897 (=> res!2419741 e!3523475)))

(assert (=> b!5730897 (= res!2419741 e!3523488)))

(declare-fun res!2419766 () Bool)

(assert (=> b!5730897 (=> (not res!2419766) (not e!3523488))))

(assert (=> b!5730897 (= res!2419766 (is-Concat!24581 (regOne!31984 r!7292)))))

(declare-fun b!5730898 () Bool)

(declare-fun res!2419761 () Bool)

(assert (=> b!5730898 (=> res!2419761 e!3523483)))

(assert (=> b!5730898 (= res!2419761 (not lt!2281384))))

(declare-fun b!5730899 () Bool)

(declare-fun e!3523495 () Bool)

(assert (=> b!5730899 (= e!3523495 (not (matchZipper!1874 lt!2281351 (t!376837 s!2326))))))

(declare-fun b!5730900 () Bool)

(declare-fun res!2419742 () Bool)

(assert (=> b!5730900 (=> res!2419742 e!3523487)))

(declare-fun generalisedConcat!1351 (List!63507) Regex!15736)

(assert (=> b!5730900 (= res!2419742 (not (= r!7292 (generalisedConcat!1351 (exprs!5620 (h!69832 zl!343))))))))

(declare-fun b!5730901 () Bool)

(declare-fun e!3523492 () Bool)

(assert (=> b!5730901 (= e!3523492 e!3523477)))

(declare-fun res!2419755 () Bool)

(assert (=> b!5730901 (=> res!2419755 e!3523477)))

(declare-fun lt!2281352 () Context!10240)

(assert (=> b!5730901 (= res!2419755 (not (= (unfocusZipper!1478 (Cons!63384 lt!2281352 Nil!63384)) lt!2281344)))))

(assert (=> b!5730901 (= lt!2281344 (Concat!24581 (reg!16065 (regOne!31984 r!7292)) lt!2281371))))

(declare-fun b!5730902 () Bool)

(declare-fun tp!1586253 () Bool)

(assert (=> b!5730902 (= e!3523486 tp!1586253)))

(declare-fun b!5730903 () Bool)

(assert (=> b!5730903 (= e!3523483 e!3523476)))

(declare-fun res!2419735 () Bool)

(assert (=> b!5730903 (=> res!2419735 e!3523476)))

(assert (=> b!5730903 (= res!2419735 e!3523495)))

(declare-fun res!2419762 () Bool)

(assert (=> b!5730903 (=> (not res!2419762) (not e!3523495))))

(declare-fun lt!2281347 () Bool)

(assert (=> b!5730903 (= res!2419762 (not lt!2281347))))

(assert (=> b!5730903 (= lt!2281347 (matchZipper!1874 lt!2281345 (t!376837 s!2326)))))

(declare-fun b!5730904 () Bool)

(assert (=> b!5730904 (= e!3523499 e!3523492)))

(declare-fun res!2419759 () Bool)

(assert (=> b!5730904 (=> res!2419759 e!3523492)))

(assert (=> b!5730904 (= res!2419759 (not (= r!7292 lt!2281371)))))

(assert (=> b!5730904 (= lt!2281371 (Concat!24581 lt!2281375 (regTwo!31984 r!7292)))))

(declare-fun b!5730905 () Bool)

(declare-fun tp!1586256 () Bool)

(declare-fun tp!1586254 () Bool)

(assert (=> b!5730905 (= e!3523486 (and tp!1586256 tp!1586254))))

(declare-fun tp!1586251 () Bool)

(declare-fun b!5730906 () Bool)

(declare-fun inv!82588 (Context!10240) Bool)

(assert (=> b!5730906 (= e!3523479 (and (inv!82588 (h!69832 zl!343)) e!3523498 tp!1586251))))

(declare-fun b!5730907 () Bool)

(declare-fun e!3523482 () Bool)

(declare-fun e!3523490 () Bool)

(assert (=> b!5730907 (= e!3523482 e!3523490)))

(declare-fun res!2419738 () Bool)

(assert (=> b!5730907 (=> res!2419738 e!3523490)))

(declare-fun lt!2281350 () (Set Context!10240))

(declare-fun lt!2281349 () (Set Context!10240))

(assert (=> b!5730907 (= res!2419738 (not (= lt!2281350 lt!2281349)))))

(assert (=> b!5730907 (= (flatMap!1349 lt!2281341 lambda!310152) (derivationStepZipperUp!1004 lt!2281352 (h!69833 s!2326)))))

(declare-fun lt!2281358 () Unit!156476)

(assert (=> b!5730907 (= lt!2281358 (lemmaFlatMapOnSingletonSet!881 lt!2281341 lt!2281352 lambda!310152))))

(declare-fun lt!2281339 () (Set Context!10240))

(assert (=> b!5730907 (= lt!2281339 (derivationStepZipperUp!1004 lt!2281352 (h!69833 s!2326)))))

(declare-fun derivationStepZipper!1819 ((Set Context!10240) C!31742) (Set Context!10240))

(assert (=> b!5730907 (= lt!2281350 (derivationStepZipper!1819 lt!2281341 (h!69833 s!2326)))))

(assert (=> b!5730907 (= lt!2281341 (set.insert lt!2281352 (as set.empty (Set Context!10240))))))

(assert (=> b!5730907 (= lt!2281352 (Context!10241 (Cons!63383 (reg!16065 (regOne!31984 r!7292)) lt!2281387)))))

(declare-fun b!5730908 () Bool)

(declare-fun lt!2281393 () Bool)

(assert (=> b!5730908 (= e!3523485 lt!2281393)))

(assert (=> b!5730909 (= e!3523487 e!3523489)))

(declare-fun res!2419760 () Bool)

(assert (=> b!5730909 (=> res!2419760 e!3523489)))

(declare-fun lt!2281362 () Bool)

(assert (=> b!5730909 (= res!2419760 (or (not (= lt!2281340 lt!2281362)) (is-Nil!63385 s!2326)))))

(assert (=> b!5730909 (= (Exists!2836 lambda!310150) (Exists!2836 lambda!310151))))

(declare-fun lt!2281380 () Unit!156476)

(assert (=> b!5730909 (= lt!2281380 (lemmaExistCutMatchRandMatchRSpecEquivalent!1465 (regOne!31984 r!7292) (regTwo!31984 r!7292) s!2326))))

(assert (=> b!5730909 (= lt!2281362 (Exists!2836 lambda!310150))))

(assert (=> b!5730909 (= lt!2281362 (isDefined!12448 (findConcatSeparation!2159 (regOne!31984 r!7292) (regTwo!31984 r!7292) Nil!63385 s!2326 s!2326)))))

(declare-fun lt!2281353 () Unit!156476)

(assert (=> b!5730909 (= lt!2281353 (lemmaFindConcatSeparationEquivalentToExists!1923 (regOne!31984 r!7292) (regTwo!31984 r!7292) s!2326))))

(declare-fun b!5730910 () Bool)

(declare-fun res!2419746 () Bool)

(assert (=> b!5730910 (=> res!2419746 e!3523487)))

(declare-fun isEmpty!35259 (List!63508) Bool)

(assert (=> b!5730910 (= res!2419746 (not (isEmpty!35259 (t!376836 zl!343))))))

(declare-fun b!5730911 () Bool)

(declare-fun e!3523497 () Bool)

(assert (=> b!5730911 (= e!3523497 e!3523483)))

(declare-fun res!2419747 () Bool)

(assert (=> b!5730911 (=> res!2419747 e!3523483)))

(assert (=> b!5730911 (= res!2419747 lt!2281340)))

(assert (=> b!5730911 (= lt!2281393 (matchRSpec!2839 lt!2281344 s!2326))))

(assert (=> b!5730911 (= lt!2281393 (matchR!7921 lt!2281344 s!2326))))

(declare-fun lt!2281367 () Unit!156476)

(assert (=> b!5730911 (= lt!2281367 (mainMatchTheorem!2839 lt!2281344 s!2326))))

(declare-fun b!5730912 () Bool)

(declare-fun res!2419768 () Bool)

(assert (=> b!5730912 (=> res!2419768 e!3523487)))

(assert (=> b!5730912 (= res!2419768 (not (is-Cons!63383 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun b!5730913 () Bool)

(assert (=> b!5730913 (= e!3523475 e!3523482)))

(declare-fun res!2419756 () Bool)

(assert (=> b!5730913 (=> res!2419756 e!3523482)))

(assert (=> b!5730913 (= res!2419756 (not (= lt!2281345 lt!2281349)))))

(assert (=> b!5730913 (= lt!2281349 (derivationStepZipperDown!1078 (reg!16065 (regOne!31984 r!7292)) lt!2281359 (h!69833 s!2326)))))

(assert (=> b!5730913 (= lt!2281359 (Context!10241 lt!2281387))))

(assert (=> b!5730913 (= lt!2281387 (Cons!63383 lt!2281375 (t!376835 (exprs!5620 (h!69832 zl!343)))))))

(assert (=> b!5730913 (= lt!2281375 (Star!15736 (reg!16065 (regOne!31984 r!7292))))))

(declare-fun setNonEmpty!38452 () Bool)

(declare-fun setElem!38452 () Context!10240)

(declare-fun tp!1586250 () Bool)

(declare-fun e!3523484 () Bool)

(assert (=> setNonEmpty!38452 (= setRes!38452 (and tp!1586250 (inv!82588 setElem!38452) e!3523484))))

(declare-fun setRest!38452 () (Set Context!10240))

(assert (=> setNonEmpty!38452 (= z!1189 (set.union (set.insert setElem!38452 (as set.empty (Set Context!10240))) setRest!38452))))

(declare-fun b!5730914 () Bool)

(declare-fun Unit!156478 () Unit!156476)

(assert (=> b!5730914 (= e!3523478 Unit!156478)))

(declare-fun b!5730915 () Bool)

(assert (=> b!5730915 (= e!3523491 e!3523496)))

(declare-fun res!2419745 () Bool)

(assert (=> b!5730915 (=> res!2419745 e!3523496)))

(assert (=> b!5730915 (= res!2419745 (not (= s!2326 lt!2281378)))))

(declare-fun ++!13945 (List!63509 List!63509) List!63509)

(assert (=> b!5730915 (= lt!2281378 (++!13945 (_1!36136 lt!2281366) (_2!36136 lt!2281366)))))

(declare-fun lt!2281386 () Option!15745)

(assert (=> b!5730915 (= lt!2281366 (get!21860 lt!2281386))))

(assert (=> b!5730915 (isDefined!12448 lt!2281386)))

(declare-fun findConcatSeparationZippers!123 ((Set Context!10240) (Set Context!10240) List!63509 List!63509 List!63509) Option!15745)

(assert (=> b!5730915 (= lt!2281386 (findConcatSeparationZippers!123 lt!2281343 lt!2281337 Nil!63385 s!2326 s!2326))))

(declare-fun lt!2281364 () Unit!156476)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!123 ((Set Context!10240) Context!10240 List!63509) Unit!156476)

(assert (=> b!5730915 (= lt!2281364 (lemmaConcatZipperMatchesStringThenFindConcatDefined!123 lt!2281343 lt!2281359 s!2326))))

(declare-fun b!5730916 () Bool)

(assert (=> b!5730916 (= e!3523493 e!3523494)))

(declare-fun res!2419740 () Bool)

(assert (=> b!5730916 (=> (not res!2419740) (not e!3523494))))

(assert (=> b!5730916 (= res!2419740 (= r!7292 lt!2281348))))

(assert (=> b!5730916 (= lt!2281348 (unfocusZipper!1478 zl!343))))

(declare-fun b!5730917 () Bool)

(declare-fun res!2419751 () Bool)

(assert (=> b!5730917 (=> res!2419751 e!3523487)))

(assert (=> b!5730917 (= res!2419751 (or (is-EmptyExpr!15736 r!7292) (is-EmptyLang!15736 r!7292) (is-ElementMatch!15736 r!7292) (is-Union!15736 r!7292) (not (is-Concat!24581 r!7292))))))

(declare-fun b!5730918 () Bool)

(declare-fun tp!1586252 () Bool)

(assert (=> b!5730918 (= e!3523484 tp!1586252)))

(declare-fun b!5730919 () Bool)

(assert (=> b!5730919 (= e!3523486 tp_is_empty!40725)))

(declare-fun b!5730920 () Bool)

(assert (=> b!5730920 (= e!3523490 e!3523499)))

(declare-fun res!2419743 () Bool)

(assert (=> b!5730920 (=> res!2419743 e!3523499)))

(declare-fun lt!2281370 () Bool)

(assert (=> b!5730920 (= res!2419743 (not (= lt!2281370 (matchZipper!1874 lt!2281350 (t!376837 s!2326)))))))

(assert (=> b!5730920 (= lt!2281370 (matchZipper!1874 lt!2281341 s!2326))))

(declare-fun b!5730921 () Bool)

(assert (=> b!5730921 (= e!3523481 e!3523497)))

(declare-fun res!2419739 () Bool)

(assert (=> b!5730921 (=> res!2419739 e!3523497)))

(assert (=> b!5730921 (= res!2419739 (not (= (unfocusZipper!1478 lt!2281391) lt!2281371)))))

(assert (=> b!5730921 (= lt!2281391 (Cons!63384 lt!2281359 Nil!63384))))

(declare-fun b!5730922 () Bool)

(declare-fun res!2419734 () Bool)

(assert (=> b!5730922 (=> res!2419734 e!3523496)))

(assert (=> b!5730922 (= res!2419734 (not (matchZipper!1874 lt!2281343 (_1!36136 lt!2281366))))))

(declare-fun b!5730923 () Bool)

(declare-fun res!2419749 () Bool)

(assert (=> b!5730923 (=> res!2419749 e!3523489)))

(declare-fun isEmpty!35260 (List!63507) Bool)

(assert (=> b!5730923 (= res!2419749 (isEmpty!35260 (t!376835 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun b!5730924 () Bool)

(declare-fun res!2419763 () Bool)

(assert (=> b!5730924 (=> res!2419763 e!3523476)))

(assert (=> b!5730924 (= res!2419763 (or (not lt!2281347) (not lt!2281370)))))

(declare-fun b!5730925 () Bool)

(declare-fun Unit!156479 () Unit!156476)

(assert (=> b!5730925 (= e!3523478 Unit!156479)))

(declare-fun lt!2281385 () Unit!156476)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!761 ((Set Context!10240) (Set Context!10240) List!63509) Unit!156476)

(assert (=> b!5730925 (= lt!2281385 (lemmaZipperConcatMatchesSameAsBothZippers!761 lt!2281345 lt!2281351 (t!376837 s!2326)))))

(declare-fun res!2419757 () Bool)

(assert (=> b!5730925 (= res!2419757 (matchZipper!1874 lt!2281345 (t!376837 s!2326)))))

(assert (=> b!5730925 (=> res!2419757 e!3523480)))

(assert (=> b!5730925 (= (matchZipper!1874 (set.union lt!2281345 lt!2281351) (t!376837 s!2326)) e!3523480)))

(declare-fun b!5730926 () Bool)

(declare-fun res!2419736 () Bool)

(assert (=> b!5730926 (=> (not res!2419736) (not e!3523493))))

(declare-fun toList!9520 ((Set Context!10240)) List!63508)

(assert (=> b!5730926 (= res!2419736 (= (toList!9520 z!1189) zl!343))))

(assert (= (and start!589782 res!2419752) b!5730926))

(assert (= (and b!5730926 res!2419736) b!5730916))

(assert (= (and b!5730916 res!2419740) b!5730885))

(assert (= (and b!5730885 (not res!2419765)) b!5730910))

(assert (= (and b!5730910 (not res!2419746)) b!5730900))

(assert (= (and b!5730900 (not res!2419742)) b!5730912))

(assert (= (and b!5730912 (not res!2419768)) b!5730888))

(assert (= (and b!5730888 (not res!2419754)) b!5730917))

(assert (= (and b!5730917 (not res!2419751)) b!5730909))

(assert (= (and b!5730909 (not res!2419760)) b!5730923))

(assert (= (and b!5730923 (not res!2419749)) b!5730892))

(assert (= (and b!5730892 c!1011159) b!5730925))

(assert (= (and b!5730892 (not c!1011159)) b!5730914))

(assert (= (and b!5730925 (not res!2419757)) b!5730886))

(assert (= (and b!5730892 (not res!2419744)) b!5730897))

(assert (= (and b!5730897 res!2419766) b!5730891))

(assert (= (and b!5730897 (not res!2419741)) b!5730895))

(assert (= (and b!5730895 (not res!2419764)) b!5730913))

(assert (= (and b!5730913 (not res!2419756)) b!5730907))

(assert (= (and b!5730907 (not res!2419738)) b!5730920))

(assert (= (and b!5730920 (not res!2419743)) b!5730893))

(assert (= (and b!5730893 (not res!2419750)) b!5730904))

(assert (= (and b!5730904 (not res!2419759)) b!5730901))

(assert (= (and b!5730901 (not res!2419755)) b!5730883))

(assert (= (and b!5730883 (not res!2419737)) b!5730921))

(assert (= (and b!5730921 (not res!2419739)) b!5730911))

(assert (= (and b!5730911 (not res!2419747)) b!5730889))

(assert (= (and b!5730889 (not res!2419748)) b!5730898))

(assert (= (and b!5730898 (not res!2419761)) b!5730903))

(assert (= (and b!5730903 res!2419762) b!5730899))

(assert (= (and b!5730903 (not res!2419735)) b!5730924))

(assert (= (and b!5730924 (not res!2419763)) b!5730896))

(assert (= (and b!5730896 (not res!2419753)) b!5730915))

(assert (= (and b!5730915 (not res!2419745)) b!5730922))

(assert (= (and b!5730922 (not res!2419734)) b!5730887))

(assert (= (and b!5730887 (not res!2419767)) b!5730890))

(assert (= (and b!5730890 res!2419758) b!5730908))

(assert (= (and start!589782 (is-ElementMatch!15736 r!7292)) b!5730919))

(assert (= (and start!589782 (is-Concat!24581 r!7292)) b!5730905))

(assert (= (and start!589782 (is-Star!15736 r!7292)) b!5730902))

(assert (= (and start!589782 (is-Union!15736 r!7292)) b!5730882))

(assert (= (and start!589782 condSetEmpty!38452) setIsEmpty!38452))

(assert (= (and start!589782 (not condSetEmpty!38452)) setNonEmpty!38452))

(assert (= setNonEmpty!38452 b!5730918))

(assert (= b!5730906 b!5730884))

(assert (= (and start!589782 (is-Cons!63384 zl!343)) b!5730906))

(assert (= (and start!589782 (is-Cons!63385 s!2326)) b!5730894))

(declare-fun m!6682798 () Bool)

(assert (=> b!5730909 m!6682798))

(declare-fun m!6682800 () Bool)

(assert (=> b!5730909 m!6682800))

(declare-fun m!6682802 () Bool)

(assert (=> b!5730909 m!6682802))

(declare-fun m!6682804 () Bool)

(assert (=> b!5730909 m!6682804))

(assert (=> b!5730909 m!6682798))

(declare-fun m!6682806 () Bool)

(assert (=> b!5730909 m!6682806))

(assert (=> b!5730909 m!6682800))

(declare-fun m!6682808 () Bool)

(assert (=> b!5730909 m!6682808))

(declare-fun m!6682810 () Bool)

(assert (=> b!5730888 m!6682810))

(assert (=> b!5730888 m!6682810))

(declare-fun m!6682812 () Bool)

(assert (=> b!5730888 m!6682812))

(declare-fun m!6682814 () Bool)

(assert (=> b!5730896 m!6682814))

(declare-fun m!6682816 () Bool)

(assert (=> b!5730896 m!6682816))

(declare-fun m!6682818 () Bool)

(assert (=> b!5730896 m!6682818))

(declare-fun m!6682820 () Bool)

(assert (=> b!5730896 m!6682820))

(declare-fun m!6682822 () Bool)

(assert (=> b!5730896 m!6682822))

(declare-fun m!6682824 () Bool)

(assert (=> b!5730896 m!6682824))

(declare-fun m!6682826 () Bool)

(assert (=> b!5730900 m!6682826))

(declare-fun m!6682828 () Bool)

(assert (=> b!5730886 m!6682828))

(declare-fun m!6682830 () Bool)

(assert (=> b!5730892 m!6682830))

(declare-fun m!6682832 () Bool)

(assert (=> b!5730892 m!6682832))

(declare-fun m!6682834 () Bool)

(assert (=> b!5730892 m!6682834))

(declare-fun m!6682836 () Bool)

(assert (=> b!5730892 m!6682836))

(declare-fun m!6682838 () Bool)

(assert (=> b!5730892 m!6682838))

(declare-fun m!6682840 () Bool)

(assert (=> b!5730892 m!6682840))

(declare-fun m!6682842 () Bool)

(assert (=> b!5730892 m!6682842))

(declare-fun m!6682844 () Bool)

(assert (=> b!5730925 m!6682844))

(declare-fun m!6682846 () Bool)

(assert (=> b!5730925 m!6682846))

(declare-fun m!6682848 () Bool)

(assert (=> b!5730925 m!6682848))

(declare-fun m!6682850 () Bool)

(assert (=> b!5730910 m!6682850))

(declare-fun m!6682852 () Bool)

(assert (=> b!5730911 m!6682852))

(declare-fun m!6682854 () Bool)

(assert (=> b!5730911 m!6682854))

(declare-fun m!6682856 () Bool)

(assert (=> b!5730911 m!6682856))

(declare-fun m!6682858 () Bool)

(assert (=> b!5730915 m!6682858))

(declare-fun m!6682860 () Bool)

(assert (=> b!5730915 m!6682860))

(declare-fun m!6682862 () Bool)

(assert (=> b!5730915 m!6682862))

(declare-fun m!6682864 () Bool)

(assert (=> b!5730915 m!6682864))

(declare-fun m!6682866 () Bool)

(assert (=> b!5730915 m!6682866))

(declare-fun m!6682868 () Bool)

(assert (=> b!5730907 m!6682868))

(declare-fun m!6682870 () Bool)

(assert (=> b!5730907 m!6682870))

(declare-fun m!6682872 () Bool)

(assert (=> b!5730907 m!6682872))

(declare-fun m!6682874 () Bool)

(assert (=> b!5730907 m!6682874))

(declare-fun m!6682876 () Bool)

(assert (=> b!5730907 m!6682876))

(declare-fun m!6682878 () Bool)

(assert (=> start!589782 m!6682878))

(declare-fun m!6682880 () Bool)

(assert (=> setNonEmpty!38452 m!6682880))

(declare-fun m!6682882 () Bool)

(assert (=> b!5730887 m!6682882))

(declare-fun m!6682884 () Bool)

(assert (=> b!5730901 m!6682884))

(declare-fun m!6682886 () Bool)

(assert (=> b!5730890 m!6682886))

(declare-fun m!6682888 () Bool)

(assert (=> b!5730890 m!6682888))

(declare-fun m!6682890 () Bool)

(assert (=> b!5730890 m!6682890))

(declare-fun m!6682892 () Bool)

(assert (=> b!5730890 m!6682892))

(assert (=> b!5730890 m!6682814))

(declare-fun m!6682894 () Bool)

(assert (=> b!5730890 m!6682894))

(declare-fun m!6682896 () Bool)

(assert (=> b!5730890 m!6682896))

(declare-fun m!6682898 () Bool)

(assert (=> b!5730890 m!6682898))

(declare-fun m!6682900 () Bool)

(assert (=> b!5730890 m!6682900))

(declare-fun m!6682902 () Bool)

(assert (=> b!5730890 m!6682902))

(assert (=> b!5730890 m!6682814))

(declare-fun m!6682904 () Bool)

(assert (=> b!5730890 m!6682904))

(declare-fun m!6682906 () Bool)

(assert (=> b!5730890 m!6682906))

(assert (=> b!5730890 m!6682824))

(declare-fun m!6682908 () Bool)

(assert (=> b!5730890 m!6682908))

(declare-fun m!6682910 () Bool)

(assert (=> b!5730890 m!6682910))

(declare-fun m!6682912 () Bool)

(assert (=> b!5730890 m!6682912))

(assert (=> b!5730890 m!6682816))

(declare-fun m!6682914 () Bool)

(assert (=> b!5730890 m!6682914))

(declare-fun m!6682916 () Bool)

(assert (=> b!5730890 m!6682916))

(declare-fun m!6682918 () Bool)

(assert (=> b!5730890 m!6682918))

(declare-fun m!6682920 () Bool)

(assert (=> b!5730890 m!6682920))

(declare-fun m!6682922 () Bool)

(assert (=> b!5730890 m!6682922))

(declare-fun m!6682924 () Bool)

(assert (=> b!5730890 m!6682924))

(assert (=> b!5730890 m!6682888))

(declare-fun m!6682926 () Bool)

(assert (=> b!5730922 m!6682926))

(declare-fun m!6682928 () Bool)

(assert (=> b!5730885 m!6682928))

(declare-fun m!6682930 () Bool)

(assert (=> b!5730885 m!6682930))

(declare-fun m!6682932 () Bool)

(assert (=> b!5730885 m!6682932))

(declare-fun m!6682934 () Bool)

(assert (=> b!5730883 m!6682934))

(declare-fun m!6682936 () Bool)

(assert (=> b!5730883 m!6682936))

(declare-fun m!6682938 () Bool)

(assert (=> b!5730883 m!6682938))

(declare-fun m!6682940 () Bool)

(assert (=> b!5730883 m!6682940))

(declare-fun m!6682942 () Bool)

(assert (=> b!5730883 m!6682942))

(declare-fun m!6682944 () Bool)

(assert (=> b!5730883 m!6682944))

(declare-fun m!6682946 () Bool)

(assert (=> b!5730883 m!6682946))

(declare-fun m!6682948 () Bool)

(assert (=> b!5730883 m!6682948))

(declare-fun m!6682950 () Bool)

(assert (=> b!5730883 m!6682950))

(declare-fun m!6682952 () Bool)

(assert (=> b!5730923 m!6682952))

(assert (=> b!5730899 m!6682828))

(declare-fun m!6682954 () Bool)

(assert (=> b!5730906 m!6682954))

(declare-fun m!6682956 () Bool)

(assert (=> b!5730921 m!6682956))

(declare-fun m!6682958 () Bool)

(assert (=> b!5730913 m!6682958))

(declare-fun m!6682960 () Bool)

(assert (=> b!5730891 m!6682960))

(declare-fun m!6682962 () Bool)

(assert (=> b!5730889 m!6682962))

(declare-fun m!6682964 () Bool)

(assert (=> b!5730926 m!6682964))

(assert (=> b!5730903 m!6682846))

(declare-fun m!6682966 () Bool)

(assert (=> b!5730916 m!6682966))

(declare-fun m!6682968 () Bool)

(assert (=> b!5730920 m!6682968))

(declare-fun m!6682970 () Bool)

(assert (=> b!5730920 m!6682970))

(push 1)

(assert (not b!5730902))

(assert (not b!5730913))

(assert (not b!5730905))

(assert (not b!5730890))

(assert (not b!5730884))

(assert (not b!5730923))

(assert (not b!5730907))

(assert (not b!5730916))

(assert (not b!5730886))

(assert (not b!5730900))

(assert (not b!5730918))

(assert (not start!589782))

(assert (not b!5730889))

(assert (not b!5730925))

(assert (not b!5730906))

(assert (not b!5730921))

(assert (not b!5730887))

(assert (not b!5730910))

(assert (not b!5730891))

(assert (not b!5730911))

(assert (not b!5730888))

(assert (not b!5730909))

(assert (not b!5730899))

(assert (not b!5730896))

(assert (not b!5730922))

(assert (not b!5730920))

(assert (not b!5730926))

(assert (not b!5730892))

(assert (not b!5730894))

(assert tp_is_empty!40725)

(assert (not setNonEmpty!38452))

(assert (not b!5730885))

(assert (not b!5730915))

(assert (not b!5730883))

(assert (not b!5730901))

(assert (not b!5730882))

(assert (not b!5730903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1807208 () Bool)

(declare-fun dynLambda!24801 (Int Context!10240) Context!10240)

(assert (=> d!1807208 (= (map!14525 lt!2281343 lambda!310153) (set.insert (dynLambda!24801 lambda!310153 lt!2281342) (as set.empty (Set Context!10240))))))

(declare-fun lt!2281569 () Unit!156476)

(declare-fun choose!43364 ((Set Context!10240) Context!10240 Int) Unit!156476)

(assert (=> d!1807208 (= lt!2281569 (choose!43364 lt!2281343 lt!2281342 lambda!310153))))

(assert (=> d!1807208 (= lt!2281343 (set.insert lt!2281342 (as set.empty (Set Context!10240))))))

(assert (=> d!1807208 (= (lemmaMapOnSingletonSet!131 lt!2281343 lt!2281342 lambda!310153) lt!2281569)))

(declare-fun b_lambda!216527 () Bool)

(assert (=> (not b_lambda!216527) (not d!1807208)))

(declare-fun bs!1339541 () Bool)

(assert (= bs!1339541 d!1807208))

(assert (=> bs!1339541 m!6682950))

(assert (=> bs!1339541 m!6682820))

(declare-fun m!6683146 () Bool)

(assert (=> bs!1339541 m!6683146))

(assert (=> bs!1339541 m!6683146))

(declare-fun m!6683148 () Bool)

(assert (=> bs!1339541 m!6683148))

(declare-fun m!6683150 () Bool)

(assert (=> bs!1339541 m!6683150))

(assert (=> b!5730896 d!1807208))

(declare-fun bs!1339542 () Bool)

(declare-fun d!1807210 () Bool)

(assert (= bs!1339542 (and d!1807210 b!5730896)))

(declare-fun lambda!310196 () Int)

(assert (=> bs!1339542 (= (= (exprs!5620 lt!2281359) lt!2281387) (= lambda!310196 lambda!310153))))

(assert (=> d!1807210 true))

(assert (=> d!1807210 (= (appendTo!115 lt!2281343 lt!2281359) (map!14525 lt!2281343 lambda!310196))))

(declare-fun bs!1339543 () Bool)

(assert (= bs!1339543 d!1807210))

(declare-fun m!6683152 () Bool)

(assert (=> bs!1339543 m!6683152))

(assert (=> b!5730896 d!1807210))

(declare-fun d!1807212 () Bool)

(declare-fun forall!14861 (List!63507 Int) Bool)

(assert (=> d!1807212 (forall!14861 (++!13944 lt!2281379 lt!2281387) lambda!310154)))

(declare-fun lt!2281574 () Unit!156476)

(declare-fun choose!43365 (List!63507 List!63507 Int) Unit!156476)

(assert (=> d!1807212 (= lt!2281574 (choose!43365 lt!2281379 lt!2281387 lambda!310154))))

(assert (=> d!1807212 (forall!14861 lt!2281379 lambda!310154)))

(assert (=> d!1807212 (= (lemmaConcatPreservesForall!305 lt!2281379 lt!2281387 lambda!310154) lt!2281574)))

(declare-fun bs!1339544 () Bool)

(assert (= bs!1339544 d!1807212))

(assert (=> bs!1339544 m!6682824))

(assert (=> bs!1339544 m!6682824))

(declare-fun m!6683154 () Bool)

(assert (=> bs!1339544 m!6683154))

(declare-fun m!6683156 () Bool)

(assert (=> bs!1339544 m!6683156))

(declare-fun m!6683158 () Bool)

(assert (=> bs!1339544 m!6683158))

(assert (=> b!5730896 d!1807212))

(declare-fun d!1807214 () Bool)

(declare-fun e!3523595 () Bool)

(assert (=> d!1807214 e!3523595))

(declare-fun res!2419904 () Bool)

(assert (=> d!1807214 (=> (not res!2419904) (not e!3523595))))

(declare-fun lt!2281577 () List!63507)

(declare-fun content!11535 (List!63507) (Set Regex!15736))

(assert (=> d!1807214 (= res!2419904 (= (content!11535 lt!2281577) (set.union (content!11535 lt!2281379) (content!11535 lt!2281387))))))

(declare-fun e!3523596 () List!63507)

(assert (=> d!1807214 (= lt!2281577 e!3523596)))

(declare-fun c!1011179 () Bool)

(assert (=> d!1807214 (= c!1011179 (is-Nil!63383 lt!2281379))))

(assert (=> d!1807214 (= (++!13944 lt!2281379 lt!2281387) lt!2281577)))

(declare-fun b!5731115 () Bool)

(assert (=> b!5731115 (= e!3523595 (or (not (= lt!2281387 Nil!63383)) (= lt!2281577 lt!2281379)))))

(declare-fun b!5731112 () Bool)

(assert (=> b!5731112 (= e!3523596 lt!2281387)))

(declare-fun b!5731113 () Bool)

(assert (=> b!5731113 (= e!3523596 (Cons!63383 (h!69831 lt!2281379) (++!13944 (t!376835 lt!2281379) lt!2281387)))))

(declare-fun b!5731114 () Bool)

(declare-fun res!2419903 () Bool)

(assert (=> b!5731114 (=> (not res!2419903) (not e!3523595))))

(declare-fun size!40046 (List!63507) Int)

(assert (=> b!5731114 (= res!2419903 (= (size!40046 lt!2281577) (+ (size!40046 lt!2281379) (size!40046 lt!2281387))))))

(assert (= (and d!1807214 c!1011179) b!5731112))

(assert (= (and d!1807214 (not c!1011179)) b!5731113))

(assert (= (and d!1807214 res!2419904) b!5731114))

(assert (= (and b!5731114 res!2419903) b!5731115))

(declare-fun m!6683160 () Bool)

(assert (=> d!1807214 m!6683160))

(declare-fun m!6683162 () Bool)

(assert (=> d!1807214 m!6683162))

(declare-fun m!6683164 () Bool)

(assert (=> d!1807214 m!6683164))

(declare-fun m!6683166 () Bool)

(assert (=> b!5731113 m!6683166))

(declare-fun m!6683168 () Bool)

(assert (=> b!5731114 m!6683168))

(declare-fun m!6683170 () Bool)

(assert (=> b!5731114 m!6683170))

(declare-fun m!6683172 () Bool)

(assert (=> b!5731114 m!6683172))

(assert (=> b!5730896 d!1807214))

(declare-fun d!1807216 () Bool)

(declare-fun choose!43366 ((Set Context!10240) Int) (Set Context!10240))

(assert (=> d!1807216 (= (map!14525 lt!2281343 lambda!310153) (choose!43366 lt!2281343 lambda!310153))))

(declare-fun bs!1339545 () Bool)

(assert (= bs!1339545 d!1807216))

(declare-fun m!6683174 () Bool)

(assert (=> bs!1339545 m!6683174))

(assert (=> b!5730896 d!1807216))

(declare-fun d!1807218 () Bool)

(declare-fun lt!2281580 () Regex!15736)

(assert (=> d!1807218 (validRegex!7472 lt!2281580)))

(assert (=> d!1807218 (= lt!2281580 (generalisedUnion!1599 (unfocusZipperList!1164 zl!343)))))

(assert (=> d!1807218 (= (unfocusZipper!1478 zl!343) lt!2281580)))

(declare-fun bs!1339546 () Bool)

(assert (= bs!1339546 d!1807218))

(declare-fun m!6683176 () Bool)

(assert (=> bs!1339546 m!6683176))

(assert (=> bs!1339546 m!6682810))

(assert (=> bs!1339546 m!6682810))

(assert (=> bs!1339546 m!6682812))

(assert (=> b!5730916 d!1807218))

(declare-fun b!5731134 () Bool)

(declare-fun res!2419916 () Bool)

(declare-fun e!3523609 () Bool)

(assert (=> b!5731134 (=> (not res!2419916) (not e!3523609))))

(declare-fun lt!2281588 () Option!15745)

(assert (=> b!5731134 (= res!2419916 (matchZipper!1874 lt!2281343 (_1!36136 (get!21860 lt!2281588))))))

(declare-fun b!5731135 () Bool)

(declare-fun res!2419917 () Bool)

(assert (=> b!5731135 (=> (not res!2419917) (not e!3523609))))

(assert (=> b!5731135 (= res!2419917 (matchZipper!1874 lt!2281337 (_2!36136 (get!21860 lt!2281588))))))

(declare-fun b!5731136 () Bool)

(declare-fun lt!2281589 () Unit!156476)

(declare-fun lt!2281587 () Unit!156476)

(assert (=> b!5731136 (= lt!2281589 lt!2281587)))

(assert (=> b!5731136 (= (++!13945 (++!13945 Nil!63385 (Cons!63385 (h!69833 s!2326) Nil!63385)) (t!376837 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2079 (List!63509 C!31742 List!63509 List!63509) Unit!156476)

(assert (=> b!5731136 (= lt!2281587 (lemmaMoveElementToOtherListKeepsConcatEq!2079 Nil!63385 (h!69833 s!2326) (t!376837 s!2326) s!2326))))

(declare-fun e!3523607 () Option!15745)

(assert (=> b!5731136 (= e!3523607 (findConcatSeparationZippers!123 lt!2281343 lt!2281337 (++!13945 Nil!63385 (Cons!63385 (h!69833 s!2326) Nil!63385)) (t!376837 s!2326) s!2326))))

(declare-fun b!5731138 () Bool)

(assert (=> b!5731138 (= e!3523607 None!15744)))

(declare-fun b!5731139 () Bool)

(declare-fun e!3523608 () Option!15745)

(assert (=> b!5731139 (= e!3523608 e!3523607)))

(declare-fun c!1011184 () Bool)

(assert (=> b!5731139 (= c!1011184 (is-Nil!63385 s!2326))))

(declare-fun b!5731140 () Bool)

(declare-fun e!3523611 () Bool)

(assert (=> b!5731140 (= e!3523611 (matchZipper!1874 lt!2281337 s!2326))))

(declare-fun b!5731141 () Bool)

(assert (=> b!5731141 (= e!3523609 (= (++!13945 (_1!36136 (get!21860 lt!2281588)) (_2!36136 (get!21860 lt!2281588))) s!2326))))

(declare-fun b!5731142 () Bool)

(declare-fun e!3523610 () Bool)

(assert (=> b!5731142 (= e!3523610 (not (isDefined!12448 lt!2281588)))))

(declare-fun b!5731137 () Bool)

(assert (=> b!5731137 (= e!3523608 (Some!15744 (tuple2!65667 Nil!63385 s!2326)))))

(declare-fun d!1807220 () Bool)

(assert (=> d!1807220 e!3523610))

(declare-fun res!2419918 () Bool)

(assert (=> d!1807220 (=> res!2419918 e!3523610)))

(assert (=> d!1807220 (= res!2419918 e!3523609)))

(declare-fun res!2419919 () Bool)

(assert (=> d!1807220 (=> (not res!2419919) (not e!3523609))))

(assert (=> d!1807220 (= res!2419919 (isDefined!12448 lt!2281588))))

(assert (=> d!1807220 (= lt!2281588 e!3523608)))

(declare-fun c!1011185 () Bool)

(assert (=> d!1807220 (= c!1011185 e!3523611)))

(declare-fun res!2419915 () Bool)

(assert (=> d!1807220 (=> (not res!2419915) (not e!3523611))))

(assert (=> d!1807220 (= res!2419915 (matchZipper!1874 lt!2281343 Nil!63385))))

(assert (=> d!1807220 (= (++!13945 Nil!63385 s!2326) s!2326)))

(assert (=> d!1807220 (= (findConcatSeparationZippers!123 lt!2281343 lt!2281337 Nil!63385 s!2326 s!2326) lt!2281588)))

(assert (= (and d!1807220 res!2419915) b!5731140))

(assert (= (and d!1807220 c!1011185) b!5731137))

(assert (= (and d!1807220 (not c!1011185)) b!5731139))

(assert (= (and b!5731139 c!1011184) b!5731138))

(assert (= (and b!5731139 (not c!1011184)) b!5731136))

(assert (= (and d!1807220 res!2419919) b!5731134))

(assert (= (and b!5731134 res!2419916) b!5731135))

(assert (= (and b!5731135 res!2419917) b!5731141))

(assert (= (and d!1807220 (not res!2419918)) b!5731142))

(declare-fun m!6683178 () Bool)

(assert (=> b!5731134 m!6683178))

(declare-fun m!6683180 () Bool)

(assert (=> b!5731134 m!6683180))

(assert (=> b!5731135 m!6683178))

(declare-fun m!6683182 () Bool)

(assert (=> b!5731135 m!6683182))

(declare-fun m!6683184 () Bool)

(assert (=> d!1807220 m!6683184))

(declare-fun m!6683186 () Bool)

(assert (=> d!1807220 m!6683186))

(declare-fun m!6683188 () Bool)

(assert (=> d!1807220 m!6683188))

(declare-fun m!6683190 () Bool)

(assert (=> b!5731136 m!6683190))

(assert (=> b!5731136 m!6683190))

(declare-fun m!6683192 () Bool)

(assert (=> b!5731136 m!6683192))

(declare-fun m!6683194 () Bool)

(assert (=> b!5731136 m!6683194))

(assert (=> b!5731136 m!6683190))

(declare-fun m!6683196 () Bool)

(assert (=> b!5731136 m!6683196))

(assert (=> b!5731141 m!6683178))

(declare-fun m!6683198 () Bool)

(assert (=> b!5731141 m!6683198))

(declare-fun m!6683200 () Bool)

(assert (=> b!5731140 m!6683200))

(assert (=> b!5731142 m!6683184))

(assert (=> b!5730915 d!1807220))

(declare-fun d!1807222 () Bool)

(declare-fun isEmpty!35263 (Option!15745) Bool)

(assert (=> d!1807222 (= (isDefined!12448 lt!2281386) (not (isEmpty!35263 lt!2281386)))))

(declare-fun bs!1339547 () Bool)

(assert (= bs!1339547 d!1807222))

(declare-fun m!6683202 () Bool)

(assert (=> bs!1339547 m!6683202))

(assert (=> b!5730915 d!1807222))

(declare-fun d!1807224 () Bool)

(assert (=> d!1807224 (isDefined!12448 (findConcatSeparationZippers!123 lt!2281343 (set.insert lt!2281359 (as set.empty (Set Context!10240))) Nil!63385 s!2326 s!2326))))

(declare-fun lt!2281592 () Unit!156476)

(declare-fun choose!43367 ((Set Context!10240) Context!10240 List!63509) Unit!156476)

(assert (=> d!1807224 (= lt!2281592 (choose!43367 lt!2281343 lt!2281359 s!2326))))

(assert (=> d!1807224 (matchZipper!1874 (appendTo!115 lt!2281343 lt!2281359) s!2326)))

(assert (=> d!1807224 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!123 lt!2281343 lt!2281359 s!2326) lt!2281592)))

(declare-fun bs!1339548 () Bool)

(assert (= bs!1339548 d!1807224))

(assert (=> bs!1339548 m!6682942))

(declare-fun m!6683204 () Bool)

(assert (=> bs!1339548 m!6683204))

(assert (=> bs!1339548 m!6682822))

(assert (=> bs!1339548 m!6683204))

(declare-fun m!6683206 () Bool)

(assert (=> bs!1339548 m!6683206))

(assert (=> bs!1339548 m!6682822))

(declare-fun m!6683208 () Bool)

(assert (=> bs!1339548 m!6683208))

(assert (=> bs!1339548 m!6682942))

(declare-fun m!6683210 () Bool)

(assert (=> bs!1339548 m!6683210))

(assert (=> b!5730915 d!1807224))

(declare-fun b!5731152 () Bool)

(declare-fun e!3523617 () List!63509)

(assert (=> b!5731152 (= e!3523617 (Cons!63385 (h!69833 (_1!36136 lt!2281366)) (++!13945 (t!376837 (_1!36136 lt!2281366)) (_2!36136 lt!2281366))))))

(declare-fun b!5731151 () Bool)

(assert (=> b!5731151 (= e!3523617 (_2!36136 lt!2281366))))

(declare-fun b!5731154 () Bool)

(declare-fun e!3523616 () Bool)

(declare-fun lt!2281595 () List!63509)

(assert (=> b!5731154 (= e!3523616 (or (not (= (_2!36136 lt!2281366) Nil!63385)) (= lt!2281595 (_1!36136 lt!2281366))))))

(declare-fun d!1807226 () Bool)

(assert (=> d!1807226 e!3523616))

(declare-fun res!2419924 () Bool)

(assert (=> d!1807226 (=> (not res!2419924) (not e!3523616))))

(declare-fun content!11536 (List!63509) (Set C!31742))

(assert (=> d!1807226 (= res!2419924 (= (content!11536 lt!2281595) (set.union (content!11536 (_1!36136 lt!2281366)) (content!11536 (_2!36136 lt!2281366)))))))

(assert (=> d!1807226 (= lt!2281595 e!3523617)))

(declare-fun c!1011188 () Bool)

(assert (=> d!1807226 (= c!1011188 (is-Nil!63385 (_1!36136 lt!2281366)))))

(assert (=> d!1807226 (= (++!13945 (_1!36136 lt!2281366) (_2!36136 lt!2281366)) lt!2281595)))

(declare-fun b!5731153 () Bool)

(declare-fun res!2419925 () Bool)

(assert (=> b!5731153 (=> (not res!2419925) (not e!3523616))))

(declare-fun size!40047 (List!63509) Int)

(assert (=> b!5731153 (= res!2419925 (= (size!40047 lt!2281595) (+ (size!40047 (_1!36136 lt!2281366)) (size!40047 (_2!36136 lt!2281366)))))))

(assert (= (and d!1807226 c!1011188) b!5731151))

(assert (= (and d!1807226 (not c!1011188)) b!5731152))

(assert (= (and d!1807226 res!2419924) b!5731153))

(assert (= (and b!5731153 res!2419925) b!5731154))

(declare-fun m!6683212 () Bool)

(assert (=> b!5731152 m!6683212))

(declare-fun m!6683214 () Bool)

(assert (=> d!1807226 m!6683214))

(declare-fun m!6683216 () Bool)

(assert (=> d!1807226 m!6683216))

(declare-fun m!6683218 () Bool)

(assert (=> d!1807226 m!6683218))

(declare-fun m!6683220 () Bool)

(assert (=> b!5731153 m!6683220))

(declare-fun m!6683222 () Bool)

(assert (=> b!5731153 m!6683222))

(declare-fun m!6683224 () Bool)

(assert (=> b!5731153 m!6683224))

(assert (=> b!5730915 d!1807226))

(declare-fun d!1807228 () Bool)

(assert (=> d!1807228 (= (get!21860 lt!2281386) (v!51799 lt!2281386))))

(assert (=> b!5730915 d!1807228))

(declare-fun bs!1339549 () Bool)

(declare-fun d!1807230 () Bool)

(assert (= bs!1339549 (and d!1807230 b!5730896)))

(declare-fun lambda!310199 () Int)

(assert (=> bs!1339549 (= lambda!310199 lambda!310154)))

(assert (=> d!1807230 (= (inv!82588 setElem!38452) (forall!14861 (exprs!5620 setElem!38452) lambda!310199))))

(declare-fun bs!1339550 () Bool)

(assert (= bs!1339550 d!1807230))

(declare-fun m!6683226 () Bool)

(assert (=> bs!1339550 m!6683226))

(assert (=> setNonEmpty!38452 d!1807230))

(declare-fun d!1807232 () Bool)

(assert (=> d!1807232 (= (isEmpty!35260 (t!376835 (exprs!5620 (h!69832 zl!343)))) (is-Nil!63383 (t!376835 (exprs!5620 (h!69832 zl!343)))))))

(assert (=> b!5730923 d!1807232))

(declare-fun d!1807234 () Bool)

(declare-fun c!1011191 () Bool)

(declare-fun isEmpty!35264 (List!63509) Bool)

(assert (=> d!1807234 (= c!1011191 (isEmpty!35264 (_1!36136 lt!2281366)))))

(declare-fun e!3523620 () Bool)

(assert (=> d!1807234 (= (matchZipper!1874 lt!2281343 (_1!36136 lt!2281366)) e!3523620)))

(declare-fun b!5731159 () Bool)

(declare-fun nullableZipper!1676 ((Set Context!10240)) Bool)

(assert (=> b!5731159 (= e!3523620 (nullableZipper!1676 lt!2281343))))

(declare-fun b!5731160 () Bool)

(declare-fun head!12132 (List!63509) C!31742)

(declare-fun tail!11227 (List!63509) List!63509)

(assert (=> b!5731160 (= e!3523620 (matchZipper!1874 (derivationStepZipper!1819 lt!2281343 (head!12132 (_1!36136 lt!2281366))) (tail!11227 (_1!36136 lt!2281366))))))

(assert (= (and d!1807234 c!1011191) b!5731159))

(assert (= (and d!1807234 (not c!1011191)) b!5731160))

(declare-fun m!6683228 () Bool)

(assert (=> d!1807234 m!6683228))

(declare-fun m!6683230 () Bool)

(assert (=> b!5731159 m!6683230))

(declare-fun m!6683232 () Bool)

(assert (=> b!5731160 m!6683232))

(assert (=> b!5731160 m!6683232))

(declare-fun m!6683234 () Bool)

(assert (=> b!5731160 m!6683234))

(declare-fun m!6683236 () Bool)

(assert (=> b!5731160 m!6683236))

(assert (=> b!5731160 m!6683234))

(assert (=> b!5731160 m!6683236))

(declare-fun m!6683238 () Bool)

(assert (=> b!5731160 m!6683238))

(assert (=> b!5730922 d!1807234))

(declare-fun d!1807236 () Bool)

(declare-fun lt!2281596 () Regex!15736)

(assert (=> d!1807236 (validRegex!7472 lt!2281596)))

(assert (=> d!1807236 (= lt!2281596 (generalisedUnion!1599 (unfocusZipperList!1164 (Cons!63384 lt!2281352 Nil!63384))))))

(assert (=> d!1807236 (= (unfocusZipper!1478 (Cons!63384 lt!2281352 Nil!63384)) lt!2281596)))

(declare-fun bs!1339551 () Bool)

(assert (= bs!1339551 d!1807236))

(declare-fun m!6683240 () Bool)

(assert (=> bs!1339551 m!6683240))

(declare-fun m!6683242 () Bool)

(assert (=> bs!1339551 m!6683242))

(assert (=> bs!1339551 m!6683242))

(declare-fun m!6683244 () Bool)

(assert (=> bs!1339551 m!6683244))

(assert (=> b!5730901 d!1807236))

(declare-fun d!1807238 () Bool)

(declare-fun lt!2281597 () Regex!15736)

(assert (=> d!1807238 (validRegex!7472 lt!2281597)))

(assert (=> d!1807238 (= lt!2281597 (generalisedUnion!1599 (unfocusZipperList!1164 lt!2281391)))))

(assert (=> d!1807238 (= (unfocusZipper!1478 lt!2281391) lt!2281597)))

(declare-fun bs!1339552 () Bool)

(assert (= bs!1339552 d!1807238))

(declare-fun m!6683246 () Bool)

(assert (=> bs!1339552 m!6683246))

(declare-fun m!6683248 () Bool)

(assert (=> bs!1339552 m!6683248))

(assert (=> bs!1339552 m!6683248))

(declare-fun m!6683250 () Bool)

(assert (=> bs!1339552 m!6683250))

(assert (=> b!5730921 d!1807238))

(declare-fun bs!1339553 () Bool)

(declare-fun d!1807240 () Bool)

(assert (= bs!1339553 (and d!1807240 b!5730896)))

(declare-fun lambda!310202 () Int)

(assert (=> bs!1339553 (= lambda!310202 lambda!310154)))

(declare-fun bs!1339554 () Bool)

(assert (= bs!1339554 (and d!1807240 d!1807230)))

(assert (=> bs!1339554 (= lambda!310202 lambda!310199)))

(declare-fun b!5731181 () Bool)

(declare-fun e!3523636 () Bool)

(declare-fun lt!2281600 () Regex!15736)

(declare-fun head!12133 (List!63507) Regex!15736)

(assert (=> b!5731181 (= e!3523636 (= lt!2281600 (head!12133 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun b!5731182 () Bool)

(declare-fun e!3523638 () Regex!15736)

(assert (=> b!5731182 (= e!3523638 (Concat!24581 (h!69831 (exprs!5620 (h!69832 zl!343))) (generalisedConcat!1351 (t!376835 (exprs!5620 (h!69832 zl!343))))))))

(declare-fun b!5731183 () Bool)

(declare-fun e!3523633 () Bool)

(declare-fun isEmptyExpr!1234 (Regex!15736) Bool)

(assert (=> b!5731183 (= e!3523633 (isEmptyExpr!1234 lt!2281600))))

(declare-fun b!5731184 () Bool)

(declare-fun e!3523635 () Regex!15736)

(assert (=> b!5731184 (= e!3523635 (h!69831 (exprs!5620 (h!69832 zl!343))))))

(declare-fun e!3523634 () Bool)

(assert (=> d!1807240 e!3523634))

(declare-fun res!2419930 () Bool)

(assert (=> d!1807240 (=> (not res!2419930) (not e!3523634))))

(assert (=> d!1807240 (= res!2419930 (validRegex!7472 lt!2281600))))

(assert (=> d!1807240 (= lt!2281600 e!3523635)))

(declare-fun c!1011203 () Bool)

(declare-fun e!3523637 () Bool)

(assert (=> d!1807240 (= c!1011203 e!3523637)))

(declare-fun res!2419931 () Bool)

(assert (=> d!1807240 (=> (not res!2419931) (not e!3523637))))

(assert (=> d!1807240 (= res!2419931 (is-Cons!63383 (exprs!5620 (h!69832 zl!343))))))

(assert (=> d!1807240 (forall!14861 (exprs!5620 (h!69832 zl!343)) lambda!310202)))

(assert (=> d!1807240 (= (generalisedConcat!1351 (exprs!5620 (h!69832 zl!343))) lt!2281600)))

(declare-fun b!5731185 () Bool)

(assert (=> b!5731185 (= e!3523635 e!3523638)))

(declare-fun c!1011200 () Bool)

(assert (=> b!5731185 (= c!1011200 (is-Cons!63383 (exprs!5620 (h!69832 zl!343))))))

(declare-fun b!5731186 () Bool)

(assert (=> b!5731186 (= e!3523638 EmptyExpr!15736)))

(declare-fun b!5731187 () Bool)

(assert (=> b!5731187 (= e!3523633 e!3523636)))

(declare-fun c!1011202 () Bool)

(declare-fun tail!11228 (List!63507) List!63507)

(assert (=> b!5731187 (= c!1011202 (isEmpty!35260 (tail!11228 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun b!5731188 () Bool)

(assert (=> b!5731188 (= e!3523637 (isEmpty!35260 (t!376835 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun b!5731189 () Bool)

(assert (=> b!5731189 (= e!3523634 e!3523633)))

(declare-fun c!1011201 () Bool)

(assert (=> b!5731189 (= c!1011201 (isEmpty!35260 (exprs!5620 (h!69832 zl!343))))))

(declare-fun b!5731190 () Bool)

(declare-fun isConcat!757 (Regex!15736) Bool)

(assert (=> b!5731190 (= e!3523636 (isConcat!757 lt!2281600))))

(assert (= (and d!1807240 res!2419931) b!5731188))

(assert (= (and d!1807240 c!1011203) b!5731184))

(assert (= (and d!1807240 (not c!1011203)) b!5731185))

(assert (= (and b!5731185 c!1011200) b!5731182))

(assert (= (and b!5731185 (not c!1011200)) b!5731186))

(assert (= (and d!1807240 res!2419930) b!5731189))

(assert (= (and b!5731189 c!1011201) b!5731183))

(assert (= (and b!5731189 (not c!1011201)) b!5731187))

(assert (= (and b!5731187 c!1011202) b!5731181))

(assert (= (and b!5731187 (not c!1011202)) b!5731190))

(declare-fun m!6683252 () Bool)

(assert (=> b!5731189 m!6683252))

(declare-fun m!6683254 () Bool)

(assert (=> b!5731187 m!6683254))

(assert (=> b!5731187 m!6683254))

(declare-fun m!6683256 () Bool)

(assert (=> b!5731187 m!6683256))

(declare-fun m!6683258 () Bool)

(assert (=> b!5731181 m!6683258))

(assert (=> b!5731188 m!6682952))

(declare-fun m!6683260 () Bool)

(assert (=> b!5731183 m!6683260))

(declare-fun m!6683262 () Bool)

(assert (=> b!5731182 m!6683262))

(declare-fun m!6683264 () Bool)

(assert (=> d!1807240 m!6683264))

(declare-fun m!6683266 () Bool)

(assert (=> d!1807240 m!6683266))

(declare-fun m!6683268 () Bool)

(assert (=> b!5731190 m!6683268))

(assert (=> b!5730900 d!1807240))

(declare-fun d!1807242 () Bool)

(declare-fun c!1011204 () Bool)

(assert (=> d!1807242 (= c!1011204 (isEmpty!35264 (t!376837 s!2326)))))

(declare-fun e!3523639 () Bool)

(assert (=> d!1807242 (= (matchZipper!1874 lt!2281350 (t!376837 s!2326)) e!3523639)))

(declare-fun b!5731191 () Bool)

(assert (=> b!5731191 (= e!3523639 (nullableZipper!1676 lt!2281350))))

(declare-fun b!5731192 () Bool)

(assert (=> b!5731192 (= e!3523639 (matchZipper!1874 (derivationStepZipper!1819 lt!2281350 (head!12132 (t!376837 s!2326))) (tail!11227 (t!376837 s!2326))))))

(assert (= (and d!1807242 c!1011204) b!5731191))

(assert (= (and d!1807242 (not c!1011204)) b!5731192))

(declare-fun m!6683270 () Bool)

(assert (=> d!1807242 m!6683270))

(declare-fun m!6683272 () Bool)

(assert (=> b!5731191 m!6683272))

(declare-fun m!6683274 () Bool)

(assert (=> b!5731192 m!6683274))

(assert (=> b!5731192 m!6683274))

(declare-fun m!6683276 () Bool)

(assert (=> b!5731192 m!6683276))

(declare-fun m!6683278 () Bool)

(assert (=> b!5731192 m!6683278))

(assert (=> b!5731192 m!6683276))

(assert (=> b!5731192 m!6683278))

(declare-fun m!6683280 () Bool)

(assert (=> b!5731192 m!6683280))

(assert (=> b!5730920 d!1807242))

(declare-fun d!1807244 () Bool)

(declare-fun c!1011205 () Bool)

(assert (=> d!1807244 (= c!1011205 (isEmpty!35264 s!2326))))

(declare-fun e!3523640 () Bool)

(assert (=> d!1807244 (= (matchZipper!1874 lt!2281341 s!2326) e!3523640)))

(declare-fun b!5731193 () Bool)

(assert (=> b!5731193 (= e!3523640 (nullableZipper!1676 lt!2281341))))

(declare-fun b!5731194 () Bool)

(assert (=> b!5731194 (= e!3523640 (matchZipper!1874 (derivationStepZipper!1819 lt!2281341 (head!12132 s!2326)) (tail!11227 s!2326)))))

(assert (= (and d!1807244 c!1011205) b!5731193))

(assert (= (and d!1807244 (not c!1011205)) b!5731194))

(declare-fun m!6683282 () Bool)

(assert (=> d!1807244 m!6683282))

(declare-fun m!6683284 () Bool)

(assert (=> b!5731193 m!6683284))

(declare-fun m!6683286 () Bool)

(assert (=> b!5731194 m!6683286))

(assert (=> b!5731194 m!6683286))

(declare-fun m!6683288 () Bool)

(assert (=> b!5731194 m!6683288))

(declare-fun m!6683290 () Bool)

(assert (=> b!5731194 m!6683290))

(assert (=> b!5731194 m!6683288))

(assert (=> b!5731194 m!6683290))

(declare-fun m!6683292 () Bool)

(assert (=> b!5731194 m!6683292))

(assert (=> b!5730920 d!1807244))

(declare-fun d!1807246 () Bool)

(declare-fun c!1011206 () Bool)

(assert (=> d!1807246 (= c!1011206 (isEmpty!35264 (t!376837 s!2326)))))

(declare-fun e!3523641 () Bool)

(assert (=> d!1807246 (= (matchZipper!1874 lt!2281351 (t!376837 s!2326)) e!3523641)))

(declare-fun b!5731195 () Bool)

(assert (=> b!5731195 (= e!3523641 (nullableZipper!1676 lt!2281351))))

(declare-fun b!5731196 () Bool)

(assert (=> b!5731196 (= e!3523641 (matchZipper!1874 (derivationStepZipper!1819 lt!2281351 (head!12132 (t!376837 s!2326))) (tail!11227 (t!376837 s!2326))))))

(assert (= (and d!1807246 c!1011206) b!5731195))

(assert (= (and d!1807246 (not c!1011206)) b!5731196))

(assert (=> d!1807246 m!6683270))

(declare-fun m!6683294 () Bool)

(assert (=> b!5731195 m!6683294))

(assert (=> b!5731196 m!6683274))

(assert (=> b!5731196 m!6683274))

(declare-fun m!6683296 () Bool)

(assert (=> b!5731196 m!6683296))

(assert (=> b!5731196 m!6683278))

(assert (=> b!5731196 m!6683296))

(assert (=> b!5731196 m!6683278))

(declare-fun m!6683298 () Bool)

(assert (=> b!5731196 m!6683298))

(assert (=> b!5730899 d!1807246))

(declare-fun d!1807248 () Bool)

(declare-fun c!1011207 () Bool)

(assert (=> d!1807248 (= c!1011207 (isEmpty!35264 (_2!36136 lt!2281366)))))

(declare-fun e!3523642 () Bool)

(assert (=> d!1807248 (= (matchZipper!1874 lt!2281337 (_2!36136 lt!2281366)) e!3523642)))

(declare-fun b!5731197 () Bool)

(assert (=> b!5731197 (= e!3523642 (nullableZipper!1676 lt!2281337))))

(declare-fun b!5731198 () Bool)

(assert (=> b!5731198 (= e!3523642 (matchZipper!1874 (derivationStepZipper!1819 lt!2281337 (head!12132 (_2!36136 lt!2281366))) (tail!11227 (_2!36136 lt!2281366))))))

(assert (= (and d!1807248 c!1011207) b!5731197))

(assert (= (and d!1807248 (not c!1011207)) b!5731198))

(declare-fun m!6683300 () Bool)

(assert (=> d!1807248 m!6683300))

(declare-fun m!6683302 () Bool)

(assert (=> b!5731197 m!6683302))

(declare-fun m!6683304 () Bool)

(assert (=> b!5731198 m!6683304))

(assert (=> b!5731198 m!6683304))

(declare-fun m!6683306 () Bool)

(assert (=> b!5731198 m!6683306))

(declare-fun m!6683308 () Bool)

(assert (=> b!5731198 m!6683308))

(assert (=> b!5731198 m!6683306))

(assert (=> b!5731198 m!6683308))

(declare-fun m!6683310 () Bool)

(assert (=> b!5731198 m!6683310))

(assert (=> b!5730887 d!1807248))

(declare-fun d!1807250 () Bool)

(declare-fun choose!43368 ((Set Context!10240) Int) (Set Context!10240))

(assert (=> d!1807250 (= (flatMap!1349 lt!2281341 lambda!310152) (choose!43368 lt!2281341 lambda!310152))))

(declare-fun bs!1339555 () Bool)

(assert (= bs!1339555 d!1807250))

(declare-fun m!6683312 () Bool)

(assert (=> bs!1339555 m!6683312))

(assert (=> b!5730907 d!1807250))

(declare-fun b!5731209 () Bool)

(declare-fun e!3523651 () (Set Context!10240))

(assert (=> b!5731209 (= e!3523651 (as set.empty (Set Context!10240)))))

(declare-fun b!5731210 () Bool)

(declare-fun call!438121 () (Set Context!10240))

(assert (=> b!5731210 (= e!3523651 call!438121)))

(declare-fun e!3523650 () (Set Context!10240))

(declare-fun b!5731211 () Bool)

(assert (=> b!5731211 (= e!3523650 (set.union call!438121 (derivationStepZipperUp!1004 (Context!10241 (t!376835 (exprs!5620 lt!2281352))) (h!69833 s!2326))))))

(declare-fun d!1807252 () Bool)

(declare-fun c!1011212 () Bool)

(declare-fun e!3523649 () Bool)

(assert (=> d!1807252 (= c!1011212 e!3523649)))

(declare-fun res!2419934 () Bool)

(assert (=> d!1807252 (=> (not res!2419934) (not e!3523649))))

(assert (=> d!1807252 (= res!2419934 (is-Cons!63383 (exprs!5620 lt!2281352)))))

(assert (=> d!1807252 (= (derivationStepZipperUp!1004 lt!2281352 (h!69833 s!2326)) e!3523650)))

(declare-fun b!5731212 () Bool)

(assert (=> b!5731212 (= e!3523650 e!3523651)))

(declare-fun c!1011213 () Bool)

(assert (=> b!5731212 (= c!1011213 (is-Cons!63383 (exprs!5620 lt!2281352)))))

(declare-fun bm!438116 () Bool)

(assert (=> bm!438116 (= call!438121 (derivationStepZipperDown!1078 (h!69831 (exprs!5620 lt!2281352)) (Context!10241 (t!376835 (exprs!5620 lt!2281352))) (h!69833 s!2326)))))

(declare-fun b!5731213 () Bool)

(assert (=> b!5731213 (= e!3523649 (nullable!5768 (h!69831 (exprs!5620 lt!2281352))))))

(assert (= (and d!1807252 res!2419934) b!5731213))

(assert (= (and d!1807252 c!1011212) b!5731211))

(assert (= (and d!1807252 (not c!1011212)) b!5731212))

(assert (= (and b!5731212 c!1011213) b!5731210))

(assert (= (and b!5731212 (not c!1011213)) b!5731209))

(assert (= (or b!5731211 b!5731210) bm!438116))

(declare-fun m!6683314 () Bool)

(assert (=> b!5731211 m!6683314))

(declare-fun m!6683316 () Bool)

(assert (=> bm!438116 m!6683316))

(declare-fun m!6683318 () Bool)

(assert (=> b!5731213 m!6683318))

(assert (=> b!5730907 d!1807252))

(declare-fun d!1807254 () Bool)

(declare-fun dynLambda!24802 (Int Context!10240) (Set Context!10240))

(assert (=> d!1807254 (= (flatMap!1349 lt!2281341 lambda!310152) (dynLambda!24802 lambda!310152 lt!2281352))))

(declare-fun lt!2281603 () Unit!156476)

(declare-fun choose!43369 ((Set Context!10240) Context!10240 Int) Unit!156476)

(assert (=> d!1807254 (= lt!2281603 (choose!43369 lt!2281341 lt!2281352 lambda!310152))))

(assert (=> d!1807254 (= lt!2281341 (set.insert lt!2281352 (as set.empty (Set Context!10240))))))

(assert (=> d!1807254 (= (lemmaFlatMapOnSingletonSet!881 lt!2281341 lt!2281352 lambda!310152) lt!2281603)))

(declare-fun b_lambda!216529 () Bool)

(assert (=> (not b_lambda!216529) (not d!1807254)))

(declare-fun bs!1339556 () Bool)

(assert (= bs!1339556 d!1807254))

(assert (=> bs!1339556 m!6682872))

(declare-fun m!6683320 () Bool)

(assert (=> bs!1339556 m!6683320))

(declare-fun m!6683322 () Bool)

(assert (=> bs!1339556 m!6683322))

(assert (=> bs!1339556 m!6682874))

(assert (=> b!5730907 d!1807254))

(declare-fun bs!1339557 () Bool)

(declare-fun d!1807256 () Bool)

(assert (= bs!1339557 (and d!1807256 b!5730892)))

(declare-fun lambda!310205 () Int)

(assert (=> bs!1339557 (= lambda!310205 lambda!310152)))

(assert (=> d!1807256 true))

(assert (=> d!1807256 (= (derivationStepZipper!1819 lt!2281341 (h!69833 s!2326)) (flatMap!1349 lt!2281341 lambda!310205))))

(declare-fun bs!1339558 () Bool)

(assert (= bs!1339558 d!1807256))

(declare-fun m!6683324 () Bool)

(assert (=> bs!1339558 m!6683324))

(assert (=> b!5730907 d!1807256))

(assert (=> b!5730886 d!1807246))

(declare-fun bs!1339559 () Bool)

(declare-fun d!1807258 () Bool)

(assert (= bs!1339559 (and d!1807258 b!5730896)))

(declare-fun lambda!310206 () Int)

(assert (=> bs!1339559 (= lambda!310206 lambda!310154)))

(declare-fun bs!1339560 () Bool)

(assert (= bs!1339560 (and d!1807258 d!1807230)))

(assert (=> bs!1339560 (= lambda!310206 lambda!310199)))

(declare-fun bs!1339561 () Bool)

(assert (= bs!1339561 (and d!1807258 d!1807240)))

(assert (=> bs!1339561 (= lambda!310206 lambda!310202)))

(assert (=> d!1807258 (= (inv!82588 (h!69832 zl!343)) (forall!14861 (exprs!5620 (h!69832 zl!343)) lambda!310206))))

(declare-fun bs!1339562 () Bool)

(assert (= bs!1339562 d!1807258))

(declare-fun m!6683326 () Bool)

(assert (=> bs!1339562 m!6683326))

(assert (=> b!5730906 d!1807258))

(declare-fun d!1807260 () Bool)

(declare-fun e!3523654 () Bool)

(assert (=> d!1807260 e!3523654))

(declare-fun res!2419937 () Bool)

(assert (=> d!1807260 (=> (not res!2419937) (not e!3523654))))

(declare-fun lt!2281606 () List!63508)

(declare-fun noDuplicate!1656 (List!63508) Bool)

(assert (=> d!1807260 (= res!2419937 (noDuplicate!1656 lt!2281606))))

(declare-fun choose!43370 ((Set Context!10240)) List!63508)

(assert (=> d!1807260 (= lt!2281606 (choose!43370 z!1189))))

(assert (=> d!1807260 (= (toList!9520 z!1189) lt!2281606)))

(declare-fun b!5731218 () Bool)

(declare-fun content!11537 (List!63508) (Set Context!10240))

(assert (=> b!5731218 (= e!3523654 (= (content!11537 lt!2281606) z!1189))))

(assert (= (and d!1807260 res!2419937) b!5731218))

(declare-fun m!6683328 () Bool)

(assert (=> d!1807260 m!6683328))

(declare-fun m!6683330 () Bool)

(assert (=> d!1807260 m!6683330))

(declare-fun m!6683332 () Bool)

(assert (=> b!5731218 m!6683332))

(assert (=> b!5730926 d!1807260))

(declare-fun bs!1339563 () Bool)

(declare-fun b!5731258 () Bool)

(assert (= bs!1339563 (and b!5731258 b!5730909)))

(declare-fun lambda!310211 () Int)

(assert (=> bs!1339563 (not (= lambda!310211 lambda!310150))))

(assert (=> bs!1339563 (not (= lambda!310211 lambda!310151))))

(declare-fun bs!1339564 () Bool)

(assert (= bs!1339564 (and b!5731258 b!5730890)))

(assert (=> bs!1339564 (not (= lambda!310211 lambda!310155))))

(assert (=> bs!1339564 (not (= lambda!310211 lambda!310156))))

(assert (=> b!5731258 true))

(assert (=> b!5731258 true))

(declare-fun bs!1339565 () Bool)

(declare-fun b!5731261 () Bool)

(assert (= bs!1339565 (and b!5731261 b!5730890)))

(declare-fun lambda!310212 () Int)

(assert (=> bs!1339565 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310212 lambda!310156))))

(declare-fun bs!1339566 () Bool)

(assert (= bs!1339566 (and b!5731261 b!5730909)))

(assert (=> bs!1339566 (not (= lambda!310212 lambda!310150))))

(assert (=> bs!1339565 (not (= lambda!310212 lambda!310155))))

(declare-fun bs!1339567 () Bool)

(assert (= bs!1339567 (and b!5731261 b!5731258)))

(assert (=> bs!1339567 (not (= lambda!310212 lambda!310211))))

(assert (=> bs!1339566 (= lambda!310212 lambda!310151)))

(assert (=> b!5731261 true))

(assert (=> b!5731261 true))

(declare-fun b!5731251 () Bool)

(declare-fun e!3523677 () Bool)

(assert (=> b!5731251 (= e!3523677 (matchRSpec!2839 (regTwo!31985 r!7292) s!2326))))

(declare-fun call!438127 () Bool)

(declare-fun bm!438121 () Bool)

(declare-fun c!1011224 () Bool)

(assert (=> bm!438121 (= call!438127 (Exists!2836 (ite c!1011224 lambda!310211 lambda!310212)))))

(declare-fun bm!438122 () Bool)

(declare-fun call!438126 () Bool)

(assert (=> bm!438122 (= call!438126 (isEmpty!35264 s!2326))))

(declare-fun b!5731252 () Bool)

(declare-fun e!3523673 () Bool)

(declare-fun e!3523675 () Bool)

(assert (=> b!5731252 (= e!3523673 e!3523675)))

(assert (=> b!5731252 (= c!1011224 (is-Star!15736 r!7292))))

(declare-fun b!5731253 () Bool)

(declare-fun e!3523679 () Bool)

(assert (=> b!5731253 (= e!3523679 (= s!2326 (Cons!63385 (c!1011160 r!7292) Nil!63385)))))

(declare-fun b!5731254 () Bool)

(declare-fun e!3523676 () Bool)

(assert (=> b!5731254 (= e!3523676 call!438126)))

(declare-fun b!5731255 () Bool)

(declare-fun e!3523674 () Bool)

(assert (=> b!5731255 (= e!3523676 e!3523674)))

(declare-fun res!2419955 () Bool)

(assert (=> b!5731255 (= res!2419955 (not (is-EmptyLang!15736 r!7292)))))

(assert (=> b!5731255 (=> (not res!2419955) (not e!3523674))))

(declare-fun b!5731256 () Bool)

(declare-fun c!1011225 () Bool)

(assert (=> b!5731256 (= c!1011225 (is-Union!15736 r!7292))))

(assert (=> b!5731256 (= e!3523679 e!3523673)))

(declare-fun e!3523678 () Bool)

(assert (=> b!5731258 (= e!3523678 call!438127)))

(declare-fun b!5731259 () Bool)

(declare-fun res!2419957 () Bool)

(assert (=> b!5731259 (=> res!2419957 e!3523678)))

(assert (=> b!5731259 (= res!2419957 call!438126)))

(assert (=> b!5731259 (= e!3523675 e!3523678)))

(declare-fun b!5731260 () Bool)

(declare-fun c!1011227 () Bool)

(assert (=> b!5731260 (= c!1011227 (is-ElementMatch!15736 r!7292))))

(assert (=> b!5731260 (= e!3523674 e!3523679)))

(assert (=> b!5731261 (= e!3523675 call!438127)))

(declare-fun d!1807262 () Bool)

(declare-fun c!1011226 () Bool)

(assert (=> d!1807262 (= c!1011226 (is-EmptyExpr!15736 r!7292))))

(assert (=> d!1807262 (= (matchRSpec!2839 r!7292 s!2326) e!3523676)))

(declare-fun b!5731257 () Bool)

(assert (=> b!5731257 (= e!3523673 e!3523677)))

(declare-fun res!2419956 () Bool)

(assert (=> b!5731257 (= res!2419956 (matchRSpec!2839 (regOne!31985 r!7292) s!2326))))

(assert (=> b!5731257 (=> res!2419956 e!3523677)))

(assert (= (and d!1807262 c!1011226) b!5731254))

(assert (= (and d!1807262 (not c!1011226)) b!5731255))

(assert (= (and b!5731255 res!2419955) b!5731260))

(assert (= (and b!5731260 c!1011227) b!5731253))

(assert (= (and b!5731260 (not c!1011227)) b!5731256))

(assert (= (and b!5731256 c!1011225) b!5731257))

(assert (= (and b!5731256 (not c!1011225)) b!5731252))

(assert (= (and b!5731257 (not res!2419956)) b!5731251))

(assert (= (and b!5731252 c!1011224) b!5731259))

(assert (= (and b!5731252 (not c!1011224)) b!5731261))

(assert (= (and b!5731259 (not res!2419957)) b!5731258))

(assert (= (or b!5731258 b!5731261) bm!438121))

(assert (= (or b!5731254 b!5731259) bm!438122))

(declare-fun m!6683334 () Bool)

(assert (=> b!5731251 m!6683334))

(declare-fun m!6683336 () Bool)

(assert (=> bm!438121 m!6683336))

(assert (=> bm!438122 m!6683282))

(declare-fun m!6683338 () Bool)

(assert (=> b!5731257 m!6683338))

(assert (=> b!5730885 d!1807262))

(declare-fun b!5731290 () Bool)

(declare-fun e!3523695 () Bool)

(declare-fun lt!2281609 () Bool)

(assert (=> b!5731290 (= e!3523695 (not lt!2281609))))

(declare-fun b!5731291 () Bool)

(declare-fun res!2419977 () Bool)

(declare-fun e!3523696 () Bool)

(assert (=> b!5731291 (=> res!2419977 e!3523696)))

(declare-fun e!3523698 () Bool)

(assert (=> b!5731291 (= res!2419977 e!3523698)))

(declare-fun res!2419981 () Bool)

(assert (=> b!5731291 (=> (not res!2419981) (not e!3523698))))

(assert (=> b!5731291 (= res!2419981 lt!2281609)))

(declare-fun b!5731292 () Bool)

(declare-fun res!2419974 () Bool)

(assert (=> b!5731292 (=> (not res!2419974) (not e!3523698))))

(assert (=> b!5731292 (= res!2419974 (isEmpty!35264 (tail!11227 s!2326)))))

(declare-fun b!5731293 () Bool)

(declare-fun res!2419979 () Bool)

(assert (=> b!5731293 (=> res!2419979 e!3523696)))

(assert (=> b!5731293 (= res!2419979 (not (is-ElementMatch!15736 r!7292)))))

(assert (=> b!5731293 (= e!3523695 e!3523696)))

(declare-fun b!5731294 () Bool)

(declare-fun e!3523697 () Bool)

(assert (=> b!5731294 (= e!3523697 e!3523695)))

(declare-fun c!1011234 () Bool)

(assert (=> b!5731294 (= c!1011234 (is-EmptyLang!15736 r!7292))))

(declare-fun b!5731295 () Bool)

(declare-fun e!3523699 () Bool)

(declare-fun e!3523694 () Bool)

(assert (=> b!5731295 (= e!3523699 e!3523694)))

(declare-fun res!2419978 () Bool)

(assert (=> b!5731295 (=> res!2419978 e!3523694)))

(declare-fun call!438130 () Bool)

(assert (=> b!5731295 (= res!2419978 call!438130)))

(declare-fun b!5731296 () Bool)

(assert (=> b!5731296 (= e!3523698 (= (head!12132 s!2326) (c!1011160 r!7292)))))

(declare-fun b!5731297 () Bool)

(declare-fun res!2419975 () Bool)

(assert (=> b!5731297 (=> res!2419975 e!3523694)))

(assert (=> b!5731297 (= res!2419975 (not (isEmpty!35264 (tail!11227 s!2326))))))

(declare-fun b!5731298 () Bool)

(declare-fun e!3523700 () Bool)

(declare-fun derivativeStep!4529 (Regex!15736 C!31742) Regex!15736)

(assert (=> b!5731298 (= e!3523700 (matchR!7921 (derivativeStep!4529 r!7292 (head!12132 s!2326)) (tail!11227 s!2326)))))

(declare-fun b!5731299 () Bool)

(assert (=> b!5731299 (= e!3523697 (= lt!2281609 call!438130))))

(declare-fun b!5731300 () Bool)

(declare-fun res!2419980 () Bool)

(assert (=> b!5731300 (=> (not res!2419980) (not e!3523698))))

(assert (=> b!5731300 (= res!2419980 (not call!438130))))

(declare-fun b!5731301 () Bool)

(assert (=> b!5731301 (= e!3523694 (not (= (head!12132 s!2326) (c!1011160 r!7292))))))

(declare-fun d!1807264 () Bool)

(assert (=> d!1807264 e!3523697))

(declare-fun c!1011235 () Bool)

(assert (=> d!1807264 (= c!1011235 (is-EmptyExpr!15736 r!7292))))

(assert (=> d!1807264 (= lt!2281609 e!3523700)))

(declare-fun c!1011236 () Bool)

(assert (=> d!1807264 (= c!1011236 (isEmpty!35264 s!2326))))

(assert (=> d!1807264 (validRegex!7472 r!7292)))

(assert (=> d!1807264 (= (matchR!7921 r!7292 s!2326) lt!2281609)))

(declare-fun bm!438125 () Bool)

(assert (=> bm!438125 (= call!438130 (isEmpty!35264 s!2326))))

(declare-fun b!5731302 () Bool)

(assert (=> b!5731302 (= e!3523700 (nullable!5768 r!7292))))

(declare-fun b!5731303 () Bool)

(assert (=> b!5731303 (= e!3523696 e!3523699)))

(declare-fun res!2419976 () Bool)

(assert (=> b!5731303 (=> (not res!2419976) (not e!3523699))))

(assert (=> b!5731303 (= res!2419976 (not lt!2281609))))

(assert (= (and d!1807264 c!1011236) b!5731302))

(assert (= (and d!1807264 (not c!1011236)) b!5731298))

(assert (= (and d!1807264 c!1011235) b!5731299))

(assert (= (and d!1807264 (not c!1011235)) b!5731294))

(assert (= (and b!5731294 c!1011234) b!5731290))

(assert (= (and b!5731294 (not c!1011234)) b!5731293))

(assert (= (and b!5731293 (not res!2419979)) b!5731291))

(assert (= (and b!5731291 res!2419981) b!5731300))

(assert (= (and b!5731300 res!2419980) b!5731292))

(assert (= (and b!5731292 res!2419974) b!5731296))

(assert (= (and b!5731291 (not res!2419977)) b!5731303))

(assert (= (and b!5731303 res!2419976) b!5731295))

(assert (= (and b!5731295 (not res!2419978)) b!5731297))

(assert (= (and b!5731297 (not res!2419975)) b!5731301))

(assert (= (or b!5731299 b!5731295 b!5731300) bm!438125))

(declare-fun m!6683340 () Bool)

(assert (=> b!5731302 m!6683340))

(assert (=> bm!438125 m!6683282))

(assert (=> b!5731298 m!6683286))

(assert (=> b!5731298 m!6683286))

(declare-fun m!6683342 () Bool)

(assert (=> b!5731298 m!6683342))

(assert (=> b!5731298 m!6683290))

(assert (=> b!5731298 m!6683342))

(assert (=> b!5731298 m!6683290))

(declare-fun m!6683344 () Bool)

(assert (=> b!5731298 m!6683344))

(assert (=> b!5731296 m!6683286))

(assert (=> b!5731301 m!6683286))

(assert (=> d!1807264 m!6683282))

(assert (=> d!1807264 m!6682878))

(assert (=> b!5731292 m!6683290))

(assert (=> b!5731292 m!6683290))

(declare-fun m!6683346 () Bool)

(assert (=> b!5731292 m!6683346))

(assert (=> b!5731297 m!6683290))

(assert (=> b!5731297 m!6683290))

(assert (=> b!5731297 m!6683346))

(assert (=> b!5730885 d!1807264))

(declare-fun d!1807266 () Bool)

(assert (=> d!1807266 (= (matchR!7921 r!7292 s!2326) (matchRSpec!2839 r!7292 s!2326))))

(declare-fun lt!2281612 () Unit!156476)

(declare-fun choose!43371 (Regex!15736 List!63509) Unit!156476)

(assert (=> d!1807266 (= lt!2281612 (choose!43371 r!7292 s!2326))))

(assert (=> d!1807266 (validRegex!7472 r!7292)))

(assert (=> d!1807266 (= (mainMatchTheorem!2839 r!7292 s!2326) lt!2281612)))

(declare-fun bs!1339568 () Bool)

(assert (= bs!1339568 d!1807266))

(assert (=> bs!1339568 m!6682930))

(assert (=> bs!1339568 m!6682928))

(declare-fun m!6683348 () Bool)

(assert (=> bs!1339568 m!6683348))

(assert (=> bs!1339568 m!6682878))

(assert (=> b!5730885 d!1807266))

(declare-fun e!3523703 () Bool)

(declare-fun d!1807268 () Bool)

(assert (=> d!1807268 (= (matchZipper!1874 (set.union lt!2281345 lt!2281351) (t!376837 s!2326)) e!3523703)))

(declare-fun res!2419984 () Bool)

(assert (=> d!1807268 (=> res!2419984 e!3523703)))

(assert (=> d!1807268 (= res!2419984 (matchZipper!1874 lt!2281345 (t!376837 s!2326)))))

(declare-fun lt!2281615 () Unit!156476)

(declare-fun choose!43372 ((Set Context!10240) (Set Context!10240) List!63509) Unit!156476)

(assert (=> d!1807268 (= lt!2281615 (choose!43372 lt!2281345 lt!2281351 (t!376837 s!2326)))))

(assert (=> d!1807268 (= (lemmaZipperConcatMatchesSameAsBothZippers!761 lt!2281345 lt!2281351 (t!376837 s!2326)) lt!2281615)))

(declare-fun b!5731306 () Bool)

(assert (=> b!5731306 (= e!3523703 (matchZipper!1874 lt!2281351 (t!376837 s!2326)))))

(assert (= (and d!1807268 (not res!2419984)) b!5731306))

(assert (=> d!1807268 m!6682848))

(assert (=> d!1807268 m!6682846))

(declare-fun m!6683350 () Bool)

(assert (=> d!1807268 m!6683350))

(assert (=> b!5731306 m!6682828))

(assert (=> b!5730925 d!1807268))

(declare-fun d!1807270 () Bool)

(declare-fun c!1011237 () Bool)

(assert (=> d!1807270 (= c!1011237 (isEmpty!35264 (t!376837 s!2326)))))

(declare-fun e!3523704 () Bool)

(assert (=> d!1807270 (= (matchZipper!1874 lt!2281345 (t!376837 s!2326)) e!3523704)))

(declare-fun b!5731307 () Bool)

(assert (=> b!5731307 (= e!3523704 (nullableZipper!1676 lt!2281345))))

(declare-fun b!5731308 () Bool)

(assert (=> b!5731308 (= e!3523704 (matchZipper!1874 (derivationStepZipper!1819 lt!2281345 (head!12132 (t!376837 s!2326))) (tail!11227 (t!376837 s!2326))))))

(assert (= (and d!1807270 c!1011237) b!5731307))

(assert (= (and d!1807270 (not c!1011237)) b!5731308))

(assert (=> d!1807270 m!6683270))

(declare-fun m!6683352 () Bool)

(assert (=> b!5731307 m!6683352))

(assert (=> b!5731308 m!6683274))

(assert (=> b!5731308 m!6683274))

(declare-fun m!6683354 () Bool)

(assert (=> b!5731308 m!6683354))

(assert (=> b!5731308 m!6683278))

(assert (=> b!5731308 m!6683354))

(assert (=> b!5731308 m!6683278))

(declare-fun m!6683356 () Bool)

(assert (=> b!5731308 m!6683356))

(assert (=> b!5730925 d!1807270))

(declare-fun d!1807272 () Bool)

(declare-fun c!1011238 () Bool)

(assert (=> d!1807272 (= c!1011238 (isEmpty!35264 (t!376837 s!2326)))))

(declare-fun e!3523705 () Bool)

(assert (=> d!1807272 (= (matchZipper!1874 (set.union lt!2281345 lt!2281351) (t!376837 s!2326)) e!3523705)))

(declare-fun b!5731309 () Bool)

(assert (=> b!5731309 (= e!3523705 (nullableZipper!1676 (set.union lt!2281345 lt!2281351)))))

(declare-fun b!5731310 () Bool)

(assert (=> b!5731310 (= e!3523705 (matchZipper!1874 (derivationStepZipper!1819 (set.union lt!2281345 lt!2281351) (head!12132 (t!376837 s!2326))) (tail!11227 (t!376837 s!2326))))))

(assert (= (and d!1807272 c!1011238) b!5731309))

(assert (= (and d!1807272 (not c!1011238)) b!5731310))

(assert (=> d!1807272 m!6683270))

(declare-fun m!6683358 () Bool)

(assert (=> b!5731309 m!6683358))

(assert (=> b!5731310 m!6683274))

(assert (=> b!5731310 m!6683274))

(declare-fun m!6683360 () Bool)

(assert (=> b!5731310 m!6683360))

(assert (=> b!5731310 m!6683278))

(assert (=> b!5731310 m!6683360))

(assert (=> b!5731310 m!6683278))

(declare-fun m!6683362 () Bool)

(assert (=> b!5731310 m!6683362))

(assert (=> b!5730925 d!1807272))

(declare-fun d!1807274 () Bool)

(assert (=> d!1807274 (= (flatMap!1349 lt!2281337 lambda!310152) (dynLambda!24802 lambda!310152 lt!2281359))))

(declare-fun lt!2281616 () Unit!156476)

(assert (=> d!1807274 (= lt!2281616 (choose!43369 lt!2281337 lt!2281359 lambda!310152))))

(assert (=> d!1807274 (= lt!2281337 (set.insert lt!2281359 (as set.empty (Set Context!10240))))))

(assert (=> d!1807274 (= (lemmaFlatMapOnSingletonSet!881 lt!2281337 lt!2281359 lambda!310152) lt!2281616)))

(declare-fun b_lambda!216531 () Bool)

(assert (=> (not b_lambda!216531) (not d!1807274)))

(declare-fun bs!1339569 () Bool)

(assert (= bs!1339569 d!1807274))

(assert (=> bs!1339569 m!6682934))

(declare-fun m!6683364 () Bool)

(assert (=> bs!1339569 m!6683364))

(declare-fun m!6683366 () Bool)

(assert (=> bs!1339569 m!6683366))

(assert (=> bs!1339569 m!6682942))

(assert (=> b!5730883 d!1807274))

(declare-fun d!1807276 () Bool)

(declare-fun lt!2281617 () Regex!15736)

(assert (=> d!1807276 (validRegex!7472 lt!2281617)))

(assert (=> d!1807276 (= lt!2281617 (generalisedUnion!1599 (unfocusZipperList!1164 lt!2281368)))))

(assert (=> d!1807276 (= (unfocusZipper!1478 lt!2281368) lt!2281617)))

(declare-fun bs!1339570 () Bool)

(assert (= bs!1339570 d!1807276))

(declare-fun m!6683368 () Bool)

(assert (=> bs!1339570 m!6683368))

(declare-fun m!6683370 () Bool)

(assert (=> bs!1339570 m!6683370))

(assert (=> bs!1339570 m!6683370))

(declare-fun m!6683372 () Bool)

(assert (=> bs!1339570 m!6683372))

(assert (=> b!5730883 d!1807276))

(declare-fun b!5731311 () Bool)

(declare-fun e!3523708 () (Set Context!10240))

(assert (=> b!5731311 (= e!3523708 (as set.empty (Set Context!10240)))))

(declare-fun b!5731312 () Bool)

(declare-fun call!438131 () (Set Context!10240))

(assert (=> b!5731312 (= e!3523708 call!438131)))

(declare-fun e!3523707 () (Set Context!10240))

(declare-fun b!5731313 () Bool)

(assert (=> b!5731313 (= e!3523707 (set.union call!438131 (derivationStepZipperUp!1004 (Context!10241 (t!376835 (exprs!5620 lt!2281359))) (h!69833 s!2326))))))

(declare-fun d!1807278 () Bool)

(declare-fun c!1011239 () Bool)

(declare-fun e!3523706 () Bool)

(assert (=> d!1807278 (= c!1011239 e!3523706)))

(declare-fun res!2419985 () Bool)

(assert (=> d!1807278 (=> (not res!2419985) (not e!3523706))))

(assert (=> d!1807278 (= res!2419985 (is-Cons!63383 (exprs!5620 lt!2281359)))))

(assert (=> d!1807278 (= (derivationStepZipperUp!1004 lt!2281359 (h!69833 s!2326)) e!3523707)))

(declare-fun b!5731314 () Bool)

(assert (=> b!5731314 (= e!3523707 e!3523708)))

(declare-fun c!1011240 () Bool)

(assert (=> b!5731314 (= c!1011240 (is-Cons!63383 (exprs!5620 lt!2281359)))))

(declare-fun bm!438126 () Bool)

(assert (=> bm!438126 (= call!438131 (derivationStepZipperDown!1078 (h!69831 (exprs!5620 lt!2281359)) (Context!10241 (t!376835 (exprs!5620 lt!2281359))) (h!69833 s!2326)))))

(declare-fun b!5731315 () Bool)

(assert (=> b!5731315 (= e!3523706 (nullable!5768 (h!69831 (exprs!5620 lt!2281359))))))

(assert (= (and d!1807278 res!2419985) b!5731315))

(assert (= (and d!1807278 c!1011239) b!5731313))

(assert (= (and d!1807278 (not c!1011239)) b!5731314))

(assert (= (and b!5731314 c!1011240) b!5731312))

(assert (= (and b!5731314 (not c!1011240)) b!5731311))

(assert (= (or b!5731313 b!5731312) bm!438126))

(declare-fun m!6683374 () Bool)

(assert (=> b!5731313 m!6683374))

(declare-fun m!6683376 () Bool)

(assert (=> bm!438126 m!6683376))

(declare-fun m!6683378 () Bool)

(assert (=> b!5731315 m!6683378))

(assert (=> b!5730883 d!1807278))

(declare-fun b!5731316 () Bool)

(declare-fun e!3523711 () (Set Context!10240))

(assert (=> b!5731316 (= e!3523711 (as set.empty (Set Context!10240)))))

(declare-fun b!5731317 () Bool)

(declare-fun call!438132 () (Set Context!10240))

(assert (=> b!5731317 (= e!3523711 call!438132)))

(declare-fun b!5731318 () Bool)

(declare-fun e!3523710 () (Set Context!10240))

(assert (=> b!5731318 (= e!3523710 (set.union call!438132 (derivationStepZipperUp!1004 (Context!10241 (t!376835 (exprs!5620 lt!2281342))) (h!69833 s!2326))))))

(declare-fun d!1807280 () Bool)

(declare-fun c!1011241 () Bool)

(declare-fun e!3523709 () Bool)

(assert (=> d!1807280 (= c!1011241 e!3523709)))

(declare-fun res!2419986 () Bool)

(assert (=> d!1807280 (=> (not res!2419986) (not e!3523709))))

(assert (=> d!1807280 (= res!2419986 (is-Cons!63383 (exprs!5620 lt!2281342)))))

(assert (=> d!1807280 (= (derivationStepZipperUp!1004 lt!2281342 (h!69833 s!2326)) e!3523710)))

(declare-fun b!5731319 () Bool)

(assert (=> b!5731319 (= e!3523710 e!3523711)))

(declare-fun c!1011242 () Bool)

(assert (=> b!5731319 (= c!1011242 (is-Cons!63383 (exprs!5620 lt!2281342)))))

(declare-fun bm!438127 () Bool)

(assert (=> bm!438127 (= call!438132 (derivationStepZipperDown!1078 (h!69831 (exprs!5620 lt!2281342)) (Context!10241 (t!376835 (exprs!5620 lt!2281342))) (h!69833 s!2326)))))

(declare-fun b!5731320 () Bool)

(assert (=> b!5731320 (= e!3523709 (nullable!5768 (h!69831 (exprs!5620 lt!2281342))))))

(assert (= (and d!1807280 res!2419986) b!5731320))

(assert (= (and d!1807280 c!1011241) b!5731318))

(assert (= (and d!1807280 (not c!1011241)) b!5731319))

(assert (= (and b!5731319 c!1011242) b!5731317))

(assert (= (and b!5731319 (not c!1011242)) b!5731316))

(assert (= (or b!5731318 b!5731317) bm!438127))

(declare-fun m!6683380 () Bool)

(assert (=> b!5731318 m!6683380))

(declare-fun m!6683382 () Bool)

(assert (=> bm!438127 m!6683382))

(declare-fun m!6683384 () Bool)

(assert (=> b!5731320 m!6683384))

(assert (=> b!5730883 d!1807280))

(declare-fun d!1807282 () Bool)

(assert (=> d!1807282 (= (flatMap!1349 lt!2281343 lambda!310152) (choose!43368 lt!2281343 lambda!310152))))

(declare-fun bs!1339571 () Bool)

(assert (= bs!1339571 d!1807282))

(declare-fun m!6683386 () Bool)

(assert (=> bs!1339571 m!6683386))

(assert (=> b!5730883 d!1807282))

(declare-fun d!1807284 () Bool)

(assert (=> d!1807284 (= (flatMap!1349 lt!2281337 lambda!310152) (choose!43368 lt!2281337 lambda!310152))))

(declare-fun bs!1339572 () Bool)

(assert (= bs!1339572 d!1807284))

(declare-fun m!6683388 () Bool)

(assert (=> bs!1339572 m!6683388))

(assert (=> b!5730883 d!1807284))

(declare-fun d!1807286 () Bool)

(assert (=> d!1807286 (= (flatMap!1349 lt!2281343 lambda!310152) (dynLambda!24802 lambda!310152 lt!2281342))))

(declare-fun lt!2281618 () Unit!156476)

(assert (=> d!1807286 (= lt!2281618 (choose!43369 lt!2281343 lt!2281342 lambda!310152))))

(assert (=> d!1807286 (= lt!2281343 (set.insert lt!2281342 (as set.empty (Set Context!10240))))))

(assert (=> d!1807286 (= (lemmaFlatMapOnSingletonSet!881 lt!2281343 lt!2281342 lambda!310152) lt!2281618)))

(declare-fun b_lambda!216533 () Bool)

(assert (=> (not b_lambda!216533) (not d!1807286)))

(declare-fun bs!1339573 () Bool)

(assert (= bs!1339573 d!1807286))

(assert (=> bs!1339573 m!6682944))

(declare-fun m!6683390 () Bool)

(assert (=> bs!1339573 m!6683390))

(declare-fun m!6683392 () Bool)

(assert (=> bs!1339573 m!6683392))

(assert (=> bs!1339573 m!6682950))

(assert (=> b!5730883 d!1807286))

(assert (=> b!5730903 d!1807270))

(declare-fun d!1807288 () Bool)

(assert (=> d!1807288 (= (flatMap!1349 z!1189 lambda!310152) (choose!43368 z!1189 lambda!310152))))

(declare-fun bs!1339574 () Bool)

(assert (= bs!1339574 d!1807288))

(declare-fun m!6683394 () Bool)

(assert (=> bs!1339574 m!6683394))

(assert (=> b!5730892 d!1807288))

(declare-fun d!1807290 () Bool)

(assert (=> d!1807290 (= (flatMap!1349 z!1189 lambda!310152) (dynLambda!24802 lambda!310152 (h!69832 zl!343)))))

(declare-fun lt!2281619 () Unit!156476)

(assert (=> d!1807290 (= lt!2281619 (choose!43369 z!1189 (h!69832 zl!343) lambda!310152))))

(assert (=> d!1807290 (= z!1189 (set.insert (h!69832 zl!343) (as set.empty (Set Context!10240))))))

(assert (=> d!1807290 (= (lemmaFlatMapOnSingletonSet!881 z!1189 (h!69832 zl!343) lambda!310152) lt!2281619)))

(declare-fun b_lambda!216535 () Bool)

(assert (=> (not b_lambda!216535) (not d!1807290)))

(declare-fun bs!1339575 () Bool)

(assert (= bs!1339575 d!1807290))

(assert (=> bs!1339575 m!6682836))

(declare-fun m!6683396 () Bool)

(assert (=> bs!1339575 m!6683396))

(declare-fun m!6683398 () Bool)

(assert (=> bs!1339575 m!6683398))

(declare-fun m!6683400 () Bool)

(assert (=> bs!1339575 m!6683400))

(assert (=> b!5730892 d!1807290))

(declare-fun d!1807292 () Bool)

(declare-fun nullableFct!1822 (Regex!15736) Bool)

(assert (=> d!1807292 (= (nullable!5768 (h!69831 (exprs!5620 (h!69832 zl!343)))) (nullableFct!1822 (h!69831 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun bs!1339576 () Bool)

(assert (= bs!1339576 d!1807292))

(declare-fun m!6683402 () Bool)

(assert (=> bs!1339576 m!6683402))

(assert (=> b!5730892 d!1807292))

(declare-fun b!5731321 () Bool)

(declare-fun e!3523714 () (Set Context!10240))

(assert (=> b!5731321 (= e!3523714 (as set.empty (Set Context!10240)))))

(declare-fun b!5731322 () Bool)

(declare-fun call!438133 () (Set Context!10240))

(assert (=> b!5731322 (= e!3523714 call!438133)))

(declare-fun b!5731323 () Bool)

(declare-fun e!3523713 () (Set Context!10240))

(assert (=> b!5731323 (= e!3523713 (set.union call!438133 (derivationStepZipperUp!1004 (Context!10241 (t!376835 (exprs!5620 (h!69832 zl!343)))) (h!69833 s!2326))))))

(declare-fun d!1807294 () Bool)

(declare-fun c!1011243 () Bool)

(declare-fun e!3523712 () Bool)

(assert (=> d!1807294 (= c!1011243 e!3523712)))

(declare-fun res!2419987 () Bool)

(assert (=> d!1807294 (=> (not res!2419987) (not e!3523712))))

(assert (=> d!1807294 (= res!2419987 (is-Cons!63383 (exprs!5620 (h!69832 zl!343))))))

(assert (=> d!1807294 (= (derivationStepZipperUp!1004 (h!69832 zl!343) (h!69833 s!2326)) e!3523713)))

(declare-fun b!5731324 () Bool)

(assert (=> b!5731324 (= e!3523713 e!3523714)))

(declare-fun c!1011244 () Bool)

(assert (=> b!5731324 (= c!1011244 (is-Cons!63383 (exprs!5620 (h!69832 zl!343))))))

(declare-fun bm!438128 () Bool)

(assert (=> bm!438128 (= call!438133 (derivationStepZipperDown!1078 (h!69831 (exprs!5620 (h!69832 zl!343))) (Context!10241 (t!376835 (exprs!5620 (h!69832 zl!343)))) (h!69833 s!2326)))))

(declare-fun b!5731325 () Bool)

(assert (=> b!5731325 (= e!3523712 (nullable!5768 (h!69831 (exprs!5620 (h!69832 zl!343)))))))

(assert (= (and d!1807294 res!2419987) b!5731325))

(assert (= (and d!1807294 c!1011243) b!5731323))

(assert (= (and d!1807294 (not c!1011243)) b!5731324))

(assert (= (and b!5731324 c!1011244) b!5731322))

(assert (= (and b!5731324 (not c!1011244)) b!5731321))

(assert (= (or b!5731323 b!5731322) bm!438128))

(declare-fun m!6683404 () Bool)

(assert (=> b!5731323 m!6683404))

(declare-fun m!6683406 () Bool)

(assert (=> bm!438128 m!6683406))

(assert (=> b!5731325 m!6682838))

(assert (=> b!5730892 d!1807294))

(declare-fun b!5731326 () Bool)

(declare-fun e!3523717 () (Set Context!10240))

(assert (=> b!5731326 (= e!3523717 (as set.empty (Set Context!10240)))))

(declare-fun b!5731327 () Bool)

(declare-fun call!438134 () (Set Context!10240))

(assert (=> b!5731327 (= e!3523717 call!438134)))

(declare-fun e!3523716 () (Set Context!10240))

(declare-fun b!5731328 () Bool)

(assert (=> b!5731328 (= e!3523716 (set.union call!438134 (derivationStepZipperUp!1004 (Context!10241 (t!376835 (exprs!5620 lt!2281389))) (h!69833 s!2326))))))

(declare-fun d!1807296 () Bool)

(declare-fun c!1011245 () Bool)

(declare-fun e!3523715 () Bool)

(assert (=> d!1807296 (= c!1011245 e!3523715)))

(declare-fun res!2419988 () Bool)

(assert (=> d!1807296 (=> (not res!2419988) (not e!3523715))))

(assert (=> d!1807296 (= res!2419988 (is-Cons!63383 (exprs!5620 lt!2281389)))))

(assert (=> d!1807296 (= (derivationStepZipperUp!1004 lt!2281389 (h!69833 s!2326)) e!3523716)))

(declare-fun b!5731329 () Bool)

(assert (=> b!5731329 (= e!3523716 e!3523717)))

(declare-fun c!1011246 () Bool)

(assert (=> b!5731329 (= c!1011246 (is-Cons!63383 (exprs!5620 lt!2281389)))))

(declare-fun bm!438129 () Bool)

(assert (=> bm!438129 (= call!438134 (derivationStepZipperDown!1078 (h!69831 (exprs!5620 lt!2281389)) (Context!10241 (t!376835 (exprs!5620 lt!2281389))) (h!69833 s!2326)))))

(declare-fun b!5731330 () Bool)

(assert (=> b!5731330 (= e!3523715 (nullable!5768 (h!69831 (exprs!5620 lt!2281389))))))

(assert (= (and d!1807296 res!2419988) b!5731330))

(assert (= (and d!1807296 c!1011245) b!5731328))

(assert (= (and d!1807296 (not c!1011245)) b!5731329))

(assert (= (and b!5731329 c!1011246) b!5731327))

(assert (= (and b!5731329 (not c!1011246)) b!5731326))

(assert (= (or b!5731328 b!5731327) bm!438129))

(declare-fun m!6683408 () Bool)

(assert (=> b!5731328 m!6683408))

(declare-fun m!6683410 () Bool)

(assert (=> bm!438129 m!6683410))

(declare-fun m!6683412 () Bool)

(assert (=> b!5731330 m!6683412))

(assert (=> b!5730892 d!1807296))

(declare-fun bm!438142 () Bool)

(declare-fun call!438152 () (Set Context!10240))

(declare-fun call!438148 () (Set Context!10240))

(assert (=> bm!438142 (= call!438152 call!438148)))

(declare-fun call!438151 () List!63507)

(declare-fun bm!438143 () Bool)

(declare-fun call!438149 () (Set Context!10240))

(declare-fun c!1011257 () Bool)

(assert (=> bm!438143 (= call!438149 (derivationStepZipperDown!1078 (ite c!1011257 (regOne!31985 (h!69831 (exprs!5620 (h!69832 zl!343)))) (regOne!31984 (h!69831 (exprs!5620 (h!69832 zl!343))))) (ite c!1011257 lt!2281389 (Context!10241 call!438151)) (h!69833 s!2326)))))

(declare-fun b!5731353 () Bool)

(declare-fun e!3523731 () Bool)

(assert (=> b!5731353 (= e!3523731 (nullable!5768 (regOne!31984 (h!69831 (exprs!5620 (h!69832 zl!343))))))))

(declare-fun b!5731354 () Bool)

(declare-fun e!3523735 () (Set Context!10240))

(assert (=> b!5731354 (= e!3523735 (set.insert lt!2281389 (as set.empty (Set Context!10240))))))

(declare-fun bm!438144 () Bool)

(declare-fun call!438147 () List!63507)

(declare-fun c!1011259 () Bool)

(declare-fun c!1011258 () Bool)

(assert (=> bm!438144 (= call!438148 (derivationStepZipperDown!1078 (ite c!1011257 (regTwo!31985 (h!69831 (exprs!5620 (h!69832 zl!343)))) (ite c!1011259 (regTwo!31984 (h!69831 (exprs!5620 (h!69832 zl!343)))) (ite c!1011258 (regOne!31984 (h!69831 (exprs!5620 (h!69832 zl!343)))) (reg!16065 (h!69831 (exprs!5620 (h!69832 zl!343))))))) (ite (or c!1011257 c!1011259) lt!2281389 (Context!10241 call!438147)) (h!69833 s!2326)))))

(declare-fun b!5731355 () Bool)

(declare-fun e!3523733 () (Set Context!10240))

(assert (=> b!5731355 (= e!3523733 (as set.empty (Set Context!10240)))))

(declare-fun b!5731356 () Bool)

(declare-fun e!3523734 () (Set Context!10240))

(assert (=> b!5731356 (= e!3523734 (set.union call!438149 call!438148))))

(declare-fun b!5731357 () Bool)

(assert (=> b!5731357 (= c!1011259 e!3523731)))

(declare-fun res!2419991 () Bool)

(assert (=> b!5731357 (=> (not res!2419991) (not e!3523731))))

(assert (=> b!5731357 (= res!2419991 (is-Concat!24581 (h!69831 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun e!3523730 () (Set Context!10240))

(assert (=> b!5731357 (= e!3523734 e!3523730)))

(declare-fun b!5731358 () Bool)

(declare-fun c!1011260 () Bool)

(assert (=> b!5731358 (= c!1011260 (is-Star!15736 (h!69831 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun e!3523732 () (Set Context!10240))

(assert (=> b!5731358 (= e!3523732 e!3523733)))

(declare-fun d!1807298 () Bool)

(declare-fun c!1011261 () Bool)

(assert (=> d!1807298 (= c!1011261 (and (is-ElementMatch!15736 (h!69831 (exprs!5620 (h!69832 zl!343)))) (= (c!1011160 (h!69831 (exprs!5620 (h!69832 zl!343)))) (h!69833 s!2326))))))

(assert (=> d!1807298 (= (derivationStepZipperDown!1078 (h!69831 (exprs!5620 (h!69832 zl!343))) lt!2281389 (h!69833 s!2326)) e!3523735)))

(declare-fun bm!438145 () Bool)

(declare-fun call!438150 () (Set Context!10240))

(assert (=> bm!438145 (= call!438150 call!438152)))

(declare-fun bm!438146 () Bool)

(declare-fun $colon$colon!1743 (List!63507 Regex!15736) List!63507)

(assert (=> bm!438146 (= call!438151 ($colon$colon!1743 (exprs!5620 lt!2281389) (ite (or c!1011259 c!1011258) (regTwo!31984 (h!69831 (exprs!5620 (h!69832 zl!343)))) (h!69831 (exprs!5620 (h!69832 zl!343))))))))

(declare-fun b!5731359 () Bool)

(assert (=> b!5731359 (= e!3523735 e!3523734)))

(assert (=> b!5731359 (= c!1011257 (is-Union!15736 (h!69831 (exprs!5620 (h!69832 zl!343)))))))

(declare-fun b!5731360 () Bool)

(assert (=> b!5731360 (= e!3523733 call!438150)))

(declare-fun bm!438147 () Bool)

(assert (=> bm!438147 (= call!438147 call!438151)))

(declare-fun b!5731361 () Bool)

(assert (=> b!5731361 (= e!3523730 (set.union call!438149 call!438152))))

(declare-fun b!5731362 () Bool)

(assert (=> b!5731362 (= e!3523732 call!438150)))

(declare-fun b!5731363 () Bool)

(assert (=> b!5731363 (= e!3523730 e!3523732)))

(assert (=> b!5731363 (= c!1011258 (is-Concat!24581 (h!69831 (exprs!5620 (h!69832 zl!343)))))))

(assert (= (and d!1807298 c!1011261) b!5731354))

(assert (= (and d!1807298 (not c!1011261)) b!5731359))

(assert (= (and b!5731359 c!1011257) b!5731356))

(assert (= (and b!5731359 (not c!1011257)) b!5731357))

(assert (= (and b!5731357 res!2419991) b!5731353))

(assert (= (and b!5731357 c!1011259) b!5731361))

(assert (= (and b!5731357 (not c!1011259)) b!5731363))

(assert (= (and b!5731363 c!1011258) b!5731362))

(assert (= (and b!5731363 (not c!1011258)) b!5731358))

(assert (= (and b!5731358 c!1011260) b!5731360))

(assert (= (and b!5731358 (not c!1011260)) b!5731355))

(assert (= (or b!5731362 b!5731360) bm!438147))

(assert (= (or b!5731362 b!5731360) bm!438145))

(assert (= (or b!5731361 bm!438147) bm!438146))

(assert (= (or b!5731361 bm!438145) bm!438142))

(assert (= (or b!5731356 bm!438142) bm!438144))

(assert (= (or b!5731356 b!5731361) bm!438143))

(declare-fun m!6683414 () Bool)

(assert (=> b!5731353 m!6683414))

(declare-fun m!6683416 () Bool)

(assert (=> b!5731354 m!6683416))

(declare-fun m!6683418 () Bool)

(assert (=> bm!438144 m!6683418))

(declare-fun m!6683420 () Bool)

(assert (=> bm!438146 m!6683420))

(declare-fun m!6683422 () Bool)

(assert (=> bm!438143 m!6683422))

(assert (=> b!5730892 d!1807298))

(declare-fun b!5731364 () Bool)

(declare-fun e!3523738 () (Set Context!10240))

(assert (=> b!5731364 (= e!3523738 (as set.empty (Set Context!10240)))))

(declare-fun b!5731365 () Bool)

(declare-fun call!438153 () (Set Context!10240))

(assert (=> b!5731365 (= e!3523738 call!438153)))

(declare-fun b!5731366 () Bool)

(declare-fun e!3523737 () (Set Context!10240))

(assert (=> b!5731366 (= e!3523737 (set.union call!438153 (derivationStepZipperUp!1004 (Context!10241 (t!376835 (exprs!5620 (Context!10241 (Cons!63383 (h!69831 (exprs!5620 (h!69832 zl!343))) (t!376835 (exprs!5620 (h!69832 zl!343)))))))) (h!69833 s!2326))))))

(declare-fun d!1807300 () Bool)

(declare-fun c!1011262 () Bool)

(declare-fun e!3523736 () Bool)

(assert (=> d!1807300 (= c!1011262 e!3523736)))

(declare-fun res!2419992 () Bool)

(assert (=> d!1807300 (=> (not res!2419992) (not e!3523736))))

(assert (=> d!1807300 (= res!2419992 (is-Cons!63383 (exprs!5620 (Context!10241 (Cons!63383 (h!69831 (exprs!5620 (h!69832 zl!343))) (t!376835 (exprs!5620 (h!69832 zl!343))))))))))

(assert (=> d!1807300 (= (derivationStepZipperUp!1004 (Context!10241 (Cons!63383 (h!69831 (exprs!5620 (h!69832 zl!343))) (t!376835 (exprs!5620 (h!69832 zl!343))))) (h!69833 s!2326)) e!3523737)))

(declare-fun b!5731367 () Bool)

(assert (=> b!5731367 (= e!3523737 e!3523738)))

(declare-fun c!1011263 () Bool)

(assert (=> b!5731367 (= c!1011263 (is-Cons!63383 (exprs!5620 (Context!10241 (Cons!63383 (h!69831 (exprs!5620 (h!69832 zl!343))) (t!376835 (exprs!5620 (h!69832 zl!343))))))))))

(declare-fun bm!438148 () Bool)

(assert (=> bm!438148 (= call!438153 (derivationStepZipperDown!1078 (h!69831 (exprs!5620 (Context!10241 (Cons!63383 (h!69831 (exprs!5620 (h!69832 zl!343))) (t!376835 (exprs!5620 (h!69832 zl!343))))))) (Context!10241 (t!376835 (exprs!5620 (Context!10241 (Cons!63383 (h!69831 (exprs!5620 (h!69832 zl!343))) (t!376835 (exprs!5620 (h!69832 zl!343)))))))) (h!69833 s!2326)))))

(declare-fun b!5731368 () Bool)

(assert (=> b!5731368 (= e!3523736 (nullable!5768 (h!69831 (exprs!5620 (Context!10241 (Cons!63383 (h!69831 (exprs!5620 (h!69832 zl!343))) (t!376835 (exprs!5620 (h!69832 zl!343)))))))))))

(assert (= (and d!1807300 res!2419992) b!5731368))

(assert (= (and d!1807300 c!1011262) b!5731366))

(assert (= (and d!1807300 (not c!1011262)) b!5731367))

(assert (= (and b!5731367 c!1011263) b!5731365))

(assert (= (and b!5731367 (not c!1011263)) b!5731364))

(assert (= (or b!5731366 b!5731365) bm!438148))

(declare-fun m!6683424 () Bool)

(assert (=> b!5731366 m!6683424))

(declare-fun m!6683426 () Bool)

(assert (=> bm!438148 m!6683426))

(declare-fun m!6683428 () Bool)

(assert (=> b!5731368 m!6683428))

(assert (=> b!5730892 d!1807300))

(declare-fun bm!438149 () Bool)

(declare-fun call!438159 () (Set Context!10240))

(declare-fun call!438155 () (Set Context!10240))

(assert (=> bm!438149 (= call!438159 call!438155)))

(declare-fun c!1011264 () Bool)

(declare-fun bm!438150 () Bool)

(declare-fun call!438158 () List!63507)

(declare-fun call!438156 () (Set Context!10240))

(assert (=> bm!438150 (= call!438156 (derivationStepZipperDown!1078 (ite c!1011264 (regOne!31985 (reg!16065 (regOne!31984 r!7292))) (regOne!31984 (reg!16065 (regOne!31984 r!7292)))) (ite c!1011264 lt!2281359 (Context!10241 call!438158)) (h!69833 s!2326)))))

(declare-fun b!5731369 () Bool)

(declare-fun e!3523740 () Bool)

(assert (=> b!5731369 (= e!3523740 (nullable!5768 (regOne!31984 (reg!16065 (regOne!31984 r!7292)))))))

(declare-fun b!5731370 () Bool)

(declare-fun e!3523744 () (Set Context!10240))

(assert (=> b!5731370 (= e!3523744 (set.insert lt!2281359 (as set.empty (Set Context!10240))))))

(declare-fun c!1011266 () Bool)

(declare-fun c!1011265 () Bool)

(declare-fun bm!438151 () Bool)

(declare-fun call!438154 () List!63507)

(assert (=> bm!438151 (= call!438155 (derivationStepZipperDown!1078 (ite c!1011264 (regTwo!31985 (reg!16065 (regOne!31984 r!7292))) (ite c!1011266 (regTwo!31984 (reg!16065 (regOne!31984 r!7292))) (ite c!1011265 (regOne!31984 (reg!16065 (regOne!31984 r!7292))) (reg!16065 (reg!16065 (regOne!31984 r!7292)))))) (ite (or c!1011264 c!1011266) lt!2281359 (Context!10241 call!438154)) (h!69833 s!2326)))))

(declare-fun b!5731371 () Bool)

(declare-fun e!3523742 () (Set Context!10240))

(assert (=> b!5731371 (= e!3523742 (as set.empty (Set Context!10240)))))

(declare-fun b!5731372 () Bool)

(declare-fun e!3523743 () (Set Context!10240))

(assert (=> b!5731372 (= e!3523743 (set.union call!438156 call!438155))))

(declare-fun b!5731373 () Bool)

(assert (=> b!5731373 (= c!1011266 e!3523740)))

(declare-fun res!2419993 () Bool)

(assert (=> b!5731373 (=> (not res!2419993) (not e!3523740))))

(assert (=> b!5731373 (= res!2419993 (is-Concat!24581 (reg!16065 (regOne!31984 r!7292))))))

(declare-fun e!3523739 () (Set Context!10240))

(assert (=> b!5731373 (= e!3523743 e!3523739)))

(declare-fun b!5731374 () Bool)

(declare-fun c!1011267 () Bool)

(assert (=> b!5731374 (= c!1011267 (is-Star!15736 (reg!16065 (regOne!31984 r!7292))))))

(declare-fun e!3523741 () (Set Context!10240))

(assert (=> b!5731374 (= e!3523741 e!3523742)))

(declare-fun d!1807302 () Bool)

(declare-fun c!1011268 () Bool)

(assert (=> d!1807302 (= c!1011268 (and (is-ElementMatch!15736 (reg!16065 (regOne!31984 r!7292))) (= (c!1011160 (reg!16065 (regOne!31984 r!7292))) (h!69833 s!2326))))))

(assert (=> d!1807302 (= (derivationStepZipperDown!1078 (reg!16065 (regOne!31984 r!7292)) lt!2281359 (h!69833 s!2326)) e!3523744)))

(declare-fun bm!438152 () Bool)

(declare-fun call!438157 () (Set Context!10240))

(assert (=> bm!438152 (= call!438157 call!438159)))

(declare-fun bm!438153 () Bool)

(assert (=> bm!438153 (= call!438158 ($colon$colon!1743 (exprs!5620 lt!2281359) (ite (or c!1011266 c!1011265) (regTwo!31984 (reg!16065 (regOne!31984 r!7292))) (reg!16065 (regOne!31984 r!7292)))))))

(declare-fun b!5731375 () Bool)

(assert (=> b!5731375 (= e!3523744 e!3523743)))

(assert (=> b!5731375 (= c!1011264 (is-Union!15736 (reg!16065 (regOne!31984 r!7292))))))

(declare-fun b!5731376 () Bool)

(assert (=> b!5731376 (= e!3523742 call!438157)))

(declare-fun bm!438154 () Bool)

(assert (=> bm!438154 (= call!438154 call!438158)))

(declare-fun b!5731377 () Bool)

(assert (=> b!5731377 (= e!3523739 (set.union call!438156 call!438159))))

(declare-fun b!5731378 () Bool)

(assert (=> b!5731378 (= e!3523741 call!438157)))

(declare-fun b!5731379 () Bool)

(assert (=> b!5731379 (= e!3523739 e!3523741)))

(assert (=> b!5731379 (= c!1011265 (is-Concat!24581 (reg!16065 (regOne!31984 r!7292))))))

(assert (= (and d!1807302 c!1011268) b!5731370))

(assert (= (and d!1807302 (not c!1011268)) b!5731375))

(assert (= (and b!5731375 c!1011264) b!5731372))

(assert (= (and b!5731375 (not c!1011264)) b!5731373))

(assert (= (and b!5731373 res!2419993) b!5731369))

(assert (= (and b!5731373 c!1011266) b!5731377))

(assert (= (and b!5731373 (not c!1011266)) b!5731379))

(assert (= (and b!5731379 c!1011265) b!5731378))

(assert (= (and b!5731379 (not c!1011265)) b!5731374))

(assert (= (and b!5731374 c!1011267) b!5731376))

(assert (= (and b!5731374 (not c!1011267)) b!5731371))

(assert (= (or b!5731378 b!5731376) bm!438154))

(assert (= (or b!5731378 b!5731376) bm!438152))

(assert (= (or b!5731377 bm!438154) bm!438153))

(assert (= (or b!5731377 bm!438152) bm!438149))

(assert (= (or b!5731372 bm!438149) bm!438151))

(assert (= (or b!5731372 b!5731377) bm!438150))

(declare-fun m!6683430 () Bool)

(assert (=> b!5731369 m!6683430))

(assert (=> b!5731370 m!6682942))

(declare-fun m!6683432 () Bool)

(assert (=> bm!438151 m!6683432))

(declare-fun m!6683434 () Bool)

(assert (=> bm!438153 m!6683434))

(declare-fun m!6683436 () Bool)

(assert (=> bm!438150 m!6683436))

(assert (=> b!5730913 d!1807302))

(declare-fun d!1807304 () Bool)

(assert (=> d!1807304 (= (nullable!5768 (regOne!31984 (regOne!31984 r!7292))) (nullableFct!1822 (regOne!31984 (regOne!31984 r!7292))))))

(declare-fun bs!1339577 () Bool)

(assert (= bs!1339577 d!1807304))

(declare-fun m!6683438 () Bool)

(assert (=> bs!1339577 m!6683438))

(assert (=> b!5730891 d!1807304))

(declare-fun d!1807306 () Bool)

(assert (=> d!1807306 (= (get!21860 lt!2281360) (v!51799 lt!2281360))))

(assert (=> b!5730890 d!1807306))

(declare-fun d!1807308 () Bool)

(declare-fun choose!43373 (Int) Bool)

(assert (=> d!1807308 (= (Exists!2836 lambda!310155) (choose!43373 lambda!310155))))

(declare-fun bs!1339578 () Bool)

(assert (= bs!1339578 d!1807308))

(declare-fun m!6683440 () Bool)

(assert (=> bs!1339578 m!6683440))

(assert (=> b!5730890 d!1807308))

(declare-fun b!5731380 () Bool)

(declare-fun e!3523746 () Bool)

(declare-fun lt!2281620 () Bool)

(assert (=> b!5731380 (= e!3523746 (not lt!2281620))))

(declare-fun b!5731381 () Bool)

(declare-fun res!2419997 () Bool)

(declare-fun e!3523747 () Bool)

(assert (=> b!5731381 (=> res!2419997 e!3523747)))

(declare-fun e!3523749 () Bool)

(assert (=> b!5731381 (= res!2419997 e!3523749)))

(declare-fun res!2420001 () Bool)

(assert (=> b!5731381 (=> (not res!2420001) (not e!3523749))))

(assert (=> b!5731381 (= res!2420001 lt!2281620)))

(declare-fun b!5731382 () Bool)

(declare-fun res!2419994 () Bool)

(assert (=> b!5731382 (=> (not res!2419994) (not e!3523749))))

(assert (=> b!5731382 (= res!2419994 (isEmpty!35264 (tail!11227 (_1!36136 (get!21860 lt!2281360)))))))

(declare-fun b!5731383 () Bool)

(declare-fun res!2419999 () Bool)

(assert (=> b!5731383 (=> res!2419999 e!3523747)))

(assert (=> b!5731383 (= res!2419999 (not (is-ElementMatch!15736 lt!2281388)))))

(assert (=> b!5731383 (= e!3523746 e!3523747)))

(declare-fun b!5731384 () Bool)

(declare-fun e!3523748 () Bool)

(assert (=> b!5731384 (= e!3523748 e!3523746)))

(declare-fun c!1011269 () Bool)

(assert (=> b!5731384 (= c!1011269 (is-EmptyLang!15736 lt!2281388))))

(declare-fun b!5731385 () Bool)

(declare-fun e!3523750 () Bool)

(declare-fun e!3523745 () Bool)

(assert (=> b!5731385 (= e!3523750 e!3523745)))

(declare-fun res!2419998 () Bool)

(assert (=> b!5731385 (=> res!2419998 e!3523745)))

(declare-fun call!438160 () Bool)

(assert (=> b!5731385 (= res!2419998 call!438160)))

(declare-fun b!5731386 () Bool)

(assert (=> b!5731386 (= e!3523749 (= (head!12132 (_1!36136 (get!21860 lt!2281360))) (c!1011160 lt!2281388)))))

(declare-fun b!5731387 () Bool)

(declare-fun res!2419995 () Bool)

(assert (=> b!5731387 (=> res!2419995 e!3523745)))

(assert (=> b!5731387 (= res!2419995 (not (isEmpty!35264 (tail!11227 (_1!36136 (get!21860 lt!2281360))))))))

(declare-fun b!5731388 () Bool)

(declare-fun e!3523751 () Bool)

(assert (=> b!5731388 (= e!3523751 (matchR!7921 (derivativeStep!4529 lt!2281388 (head!12132 (_1!36136 (get!21860 lt!2281360)))) (tail!11227 (_1!36136 (get!21860 lt!2281360)))))))

(declare-fun b!5731389 () Bool)

(assert (=> b!5731389 (= e!3523748 (= lt!2281620 call!438160))))

(declare-fun b!5731390 () Bool)

(declare-fun res!2420000 () Bool)

(assert (=> b!5731390 (=> (not res!2420000) (not e!3523749))))

(assert (=> b!5731390 (= res!2420000 (not call!438160))))

(declare-fun b!5731391 () Bool)

(assert (=> b!5731391 (= e!3523745 (not (= (head!12132 (_1!36136 (get!21860 lt!2281360))) (c!1011160 lt!2281388))))))

(declare-fun d!1807310 () Bool)

(assert (=> d!1807310 e!3523748))

(declare-fun c!1011270 () Bool)

(assert (=> d!1807310 (= c!1011270 (is-EmptyExpr!15736 lt!2281388))))

(assert (=> d!1807310 (= lt!2281620 e!3523751)))

(declare-fun c!1011271 () Bool)

(assert (=> d!1807310 (= c!1011271 (isEmpty!35264 (_1!36136 (get!21860 lt!2281360))))))

(assert (=> d!1807310 (validRegex!7472 lt!2281388)))

(assert (=> d!1807310 (= (matchR!7921 lt!2281388 (_1!36136 (get!21860 lt!2281360))) lt!2281620)))

(declare-fun bm!438155 () Bool)

(assert (=> bm!438155 (= call!438160 (isEmpty!35264 (_1!36136 (get!21860 lt!2281360))))))

(declare-fun b!5731392 () Bool)

(assert (=> b!5731392 (= e!3523751 (nullable!5768 lt!2281388))))

(declare-fun b!5731393 () Bool)

(assert (=> b!5731393 (= e!3523747 e!3523750)))

(declare-fun res!2419996 () Bool)

(assert (=> b!5731393 (=> (not res!2419996) (not e!3523750))))

(assert (=> b!5731393 (= res!2419996 (not lt!2281620))))

(assert (= (and d!1807310 c!1011271) b!5731392))

(assert (= (and d!1807310 (not c!1011271)) b!5731388))

(assert (= (and d!1807310 c!1011270) b!5731389))

(assert (= (and d!1807310 (not c!1011270)) b!5731384))

(assert (= (and b!5731384 c!1011269) b!5731380))

(assert (= (and b!5731384 (not c!1011269)) b!5731383))

(assert (= (and b!5731383 (not res!2419999)) b!5731381))

(assert (= (and b!5731381 res!2420001) b!5731390))

(assert (= (and b!5731390 res!2420000) b!5731382))

(assert (= (and b!5731382 res!2419994) b!5731386))

(assert (= (and b!5731381 (not res!2419997)) b!5731393))

(assert (= (and b!5731393 res!2419996) b!5731385))

(assert (= (and b!5731385 (not res!2419998)) b!5731387))

(assert (= (and b!5731387 (not res!2419995)) b!5731391))

(assert (= (or b!5731389 b!5731385 b!5731390) bm!438155))

(declare-fun m!6683442 () Bool)

(assert (=> b!5731392 m!6683442))

(declare-fun m!6683444 () Bool)

(assert (=> bm!438155 m!6683444))

(declare-fun m!6683446 () Bool)

(assert (=> b!5731388 m!6683446))

(assert (=> b!5731388 m!6683446))

(declare-fun m!6683448 () Bool)

(assert (=> b!5731388 m!6683448))

(declare-fun m!6683450 () Bool)

(assert (=> b!5731388 m!6683450))

(assert (=> b!5731388 m!6683448))

(assert (=> b!5731388 m!6683450))

(declare-fun m!6683452 () Bool)

(assert (=> b!5731388 m!6683452))

(assert (=> b!5731386 m!6683446))

(assert (=> b!5731391 m!6683446))

(assert (=> d!1807310 m!6683444))

(declare-fun m!6683454 () Bool)

(assert (=> d!1807310 m!6683454))

(assert (=> b!5731382 m!6683450))

(assert (=> b!5731382 m!6683450))

(declare-fun m!6683456 () Bool)

(assert (=> b!5731382 m!6683456))

(assert (=> b!5731387 m!6683450))

(assert (=> b!5731387 m!6683450))

(assert (=> b!5731387 m!6683456))

(assert (=> b!5730890 d!1807310))

(declare-fun b!5731394 () Bool)

(declare-fun e!3523753 () Bool)

(declare-fun lt!2281621 () Bool)

(assert (=> b!5731394 (= e!3523753 (not lt!2281621))))

(declare-fun b!5731395 () Bool)

(declare-fun res!2420005 () Bool)

(declare-fun e!3523754 () Bool)

(assert (=> b!5731395 (=> res!2420005 e!3523754)))

(declare-fun e!3523756 () Bool)

(assert (=> b!5731395 (= res!2420005 e!3523756)))

(declare-fun res!2420009 () Bool)

(assert (=> b!5731395 (=> (not res!2420009) (not e!3523756))))

(assert (=> b!5731395 (= res!2420009 lt!2281621)))

(declare-fun b!5731396 () Bool)

(declare-fun res!2420002 () Bool)

(assert (=> b!5731396 (=> (not res!2420002) (not e!3523756))))

(assert (=> b!5731396 (= res!2420002 (isEmpty!35264 (tail!11227 (_2!36136 lt!2281366))))))

(declare-fun b!5731397 () Bool)

(declare-fun res!2420007 () Bool)

(assert (=> b!5731397 (=> res!2420007 e!3523754)))

(assert (=> b!5731397 (= res!2420007 (not (is-ElementMatch!15736 lt!2281371)))))

(assert (=> b!5731397 (= e!3523753 e!3523754)))

(declare-fun b!5731398 () Bool)

(declare-fun e!3523755 () Bool)

(assert (=> b!5731398 (= e!3523755 e!3523753)))

(declare-fun c!1011272 () Bool)

(assert (=> b!5731398 (= c!1011272 (is-EmptyLang!15736 lt!2281371))))

(declare-fun b!5731399 () Bool)

(declare-fun e!3523757 () Bool)

(declare-fun e!3523752 () Bool)

(assert (=> b!5731399 (= e!3523757 e!3523752)))

(declare-fun res!2420006 () Bool)

(assert (=> b!5731399 (=> res!2420006 e!3523752)))

(declare-fun call!438161 () Bool)

(assert (=> b!5731399 (= res!2420006 call!438161)))

(declare-fun b!5731400 () Bool)

(assert (=> b!5731400 (= e!3523756 (= (head!12132 (_2!36136 lt!2281366)) (c!1011160 lt!2281371)))))

(declare-fun b!5731401 () Bool)

(declare-fun res!2420003 () Bool)

(assert (=> b!5731401 (=> res!2420003 e!3523752)))

(assert (=> b!5731401 (= res!2420003 (not (isEmpty!35264 (tail!11227 (_2!36136 lt!2281366)))))))

(declare-fun b!5731402 () Bool)

(declare-fun e!3523758 () Bool)

(assert (=> b!5731402 (= e!3523758 (matchR!7921 (derivativeStep!4529 lt!2281371 (head!12132 (_2!36136 lt!2281366))) (tail!11227 (_2!36136 lt!2281366))))))

(declare-fun b!5731403 () Bool)

(assert (=> b!5731403 (= e!3523755 (= lt!2281621 call!438161))))

(declare-fun b!5731404 () Bool)

(declare-fun res!2420008 () Bool)

(assert (=> b!5731404 (=> (not res!2420008) (not e!3523756))))

(assert (=> b!5731404 (= res!2420008 (not call!438161))))

(declare-fun b!5731405 () Bool)

(assert (=> b!5731405 (= e!3523752 (not (= (head!12132 (_2!36136 lt!2281366)) (c!1011160 lt!2281371))))))

(declare-fun d!1807312 () Bool)

(assert (=> d!1807312 e!3523755))

(declare-fun c!1011273 () Bool)

(assert (=> d!1807312 (= c!1011273 (is-EmptyExpr!15736 lt!2281371))))

(assert (=> d!1807312 (= lt!2281621 e!3523758)))

(declare-fun c!1011274 () Bool)

(assert (=> d!1807312 (= c!1011274 (isEmpty!35264 (_2!36136 lt!2281366)))))

(assert (=> d!1807312 (validRegex!7472 lt!2281371)))

(assert (=> d!1807312 (= (matchR!7921 lt!2281371 (_2!36136 lt!2281366)) lt!2281621)))

(declare-fun bm!438156 () Bool)

(assert (=> bm!438156 (= call!438161 (isEmpty!35264 (_2!36136 lt!2281366)))))

(declare-fun b!5731406 () Bool)

(assert (=> b!5731406 (= e!3523758 (nullable!5768 lt!2281371))))

(declare-fun b!5731407 () Bool)

(assert (=> b!5731407 (= e!3523754 e!3523757)))

(declare-fun res!2420004 () Bool)

(assert (=> b!5731407 (=> (not res!2420004) (not e!3523757))))

(assert (=> b!5731407 (= res!2420004 (not lt!2281621))))

(assert (= (and d!1807312 c!1011274) b!5731406))

(assert (= (and d!1807312 (not c!1011274)) b!5731402))

(assert (= (and d!1807312 c!1011273) b!5731403))

(assert (= (and d!1807312 (not c!1011273)) b!5731398))

(assert (= (and b!5731398 c!1011272) b!5731394))

(assert (= (and b!5731398 (not c!1011272)) b!5731397))

(assert (= (and b!5731397 (not res!2420007)) b!5731395))

(assert (= (and b!5731395 res!2420009) b!5731404))

(assert (= (and b!5731404 res!2420008) b!5731396))

(assert (= (and b!5731396 res!2420002) b!5731400))

(assert (= (and b!5731395 (not res!2420005)) b!5731407))

(assert (= (and b!5731407 res!2420004) b!5731399))

(assert (= (and b!5731399 (not res!2420006)) b!5731401))

(assert (= (and b!5731401 (not res!2420003)) b!5731405))

(assert (= (or b!5731403 b!5731399 b!5731404) bm!438156))

(declare-fun m!6683458 () Bool)

(assert (=> b!5731406 m!6683458))

(assert (=> bm!438156 m!6683300))

(assert (=> b!5731402 m!6683304))

(assert (=> b!5731402 m!6683304))

(declare-fun m!6683460 () Bool)

(assert (=> b!5731402 m!6683460))

(assert (=> b!5731402 m!6683308))

(assert (=> b!5731402 m!6683460))

(assert (=> b!5731402 m!6683308))

(declare-fun m!6683462 () Bool)

(assert (=> b!5731402 m!6683462))

(assert (=> b!5731400 m!6683304))

(assert (=> b!5731405 m!6683304))

(assert (=> d!1807312 m!6683300))

(declare-fun m!6683464 () Bool)

(assert (=> d!1807312 m!6683464))

(assert (=> b!5731396 m!6683308))

(assert (=> b!5731396 m!6683308))

(declare-fun m!6683466 () Bool)

(assert (=> b!5731396 m!6683466))

(assert (=> b!5731401 m!6683308))

(assert (=> b!5731401 m!6683308))

(assert (=> b!5731401 m!6683466))

(assert (=> b!5730890 d!1807312))

(declare-fun d!1807314 () Bool)

(assert (=> d!1807314 (= (Exists!2836 lambda!310156) (choose!43373 lambda!310156))))

(declare-fun bs!1339579 () Bool)

(assert (= bs!1339579 d!1807314))

(declare-fun m!6683468 () Bool)

(assert (=> bs!1339579 m!6683468))

(assert (=> b!5730890 d!1807314))

(declare-fun bs!1339580 () Bool)

(declare-fun d!1807316 () Bool)

(assert (= bs!1339580 (and d!1807316 b!5731261)))

(declare-fun lambda!310215 () Int)

(assert (=> bs!1339580 (not (= lambda!310215 lambda!310212))))

(declare-fun bs!1339581 () Bool)

(assert (= bs!1339581 (and d!1807316 b!5730890)))

(assert (=> bs!1339581 (not (= lambda!310215 lambda!310156))))

(declare-fun bs!1339582 () Bool)

(assert (= bs!1339582 (and d!1807316 b!5730909)))

(assert (=> bs!1339582 (= (= lt!2281388 (regOne!31984 r!7292)) (= lambda!310215 lambda!310150))))

(assert (=> bs!1339581 (= lambda!310215 lambda!310155)))

(declare-fun bs!1339583 () Bool)

(assert (= bs!1339583 (and d!1807316 b!5731258)))

(assert (=> bs!1339583 (not (= lambda!310215 lambda!310211))))

(assert (=> bs!1339582 (not (= lambda!310215 lambda!310151))))

(assert (=> d!1807316 true))

(assert (=> d!1807316 true))

(assert (=> d!1807316 true))

(assert (=> d!1807316 (= (isDefined!12448 (findConcatSeparation!2159 lt!2281388 (regTwo!31984 r!7292) Nil!63385 s!2326 s!2326)) (Exists!2836 lambda!310215))))

(declare-fun lt!2281624 () Unit!156476)

(declare-fun choose!43374 (Regex!15736 Regex!15736 List!63509) Unit!156476)

(assert (=> d!1807316 (= lt!2281624 (choose!43374 lt!2281388 (regTwo!31984 r!7292) s!2326))))

(assert (=> d!1807316 (validRegex!7472 lt!2281388)))

(assert (=> d!1807316 (= (lemmaFindConcatSeparationEquivalentToExists!1923 lt!2281388 (regTwo!31984 r!7292) s!2326) lt!2281624)))

(declare-fun bs!1339584 () Bool)

(assert (= bs!1339584 d!1807316))

(declare-fun m!6683470 () Bool)

(assert (=> bs!1339584 m!6683470))

(assert (=> bs!1339584 m!6682894))

(assert (=> bs!1339584 m!6683454))

(declare-fun m!6683472 () Bool)

(assert (=> bs!1339584 m!6683472))

(assert (=> bs!1339584 m!6682894))

(declare-fun m!6683474 () Bool)

(assert (=> bs!1339584 m!6683474))

(assert (=> b!5730890 d!1807316))

(declare-fun d!1807318 () Bool)

(assert (=> d!1807318 (matchR!7921 (Concat!24581 (reg!16065 (regOne!31984 r!7292)) lt!2281371) (++!13945 (_1!36136 lt!2281366) (_2!36136 lt!2281366)))))

(declare-fun lt!2281627 () Unit!156476)

(declare-fun choose!43375 (Regex!15736 Regex!15736 List!63509 List!63509) Unit!156476)

(assert (=> d!1807318 (= lt!2281627 (choose!43375 (reg!16065 (regOne!31984 r!7292)) lt!2281371 (_1!36136 lt!2281366) (_2!36136 lt!2281366)))))

(declare-fun e!3523763 () Bool)

(assert (=> d!1807318 e!3523763))

(declare-fun res!2420016 () Bool)

(assert (=> d!1807318 (=> (not res!2420016) (not e!3523763))))

(assert (=> d!1807318 (= res!2420016 (validRegex!7472 (reg!16065 (regOne!31984 r!7292))))))

(assert (=> d!1807318 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!273 (reg!16065 (regOne!31984 r!7292)) lt!2281371 (_1!36136 lt!2281366) (_2!36136 lt!2281366)) lt!2281627)))

(declare-fun b!5731414 () Bool)

(assert (=> b!5731414 (= e!3523763 (validRegex!7472 lt!2281371))))

(assert (= (and d!1807318 res!2420016) b!5731414))

(assert (=> d!1807318 m!6682864))

(assert (=> d!1807318 m!6682864))

(declare-fun m!6683476 () Bool)

(assert (=> d!1807318 m!6683476))

(declare-fun m!6683478 () Bool)

(assert (=> d!1807318 m!6683478))

(declare-fun m!6683480 () Bool)

(assert (=> d!1807318 m!6683480))

(assert (=> b!5731414 m!6683464))

(assert (=> b!5730890 d!1807318))

(declare-fun d!1807320 () Bool)

(assert (=> d!1807320 (= (isDefined!12448 lt!2281360) (not (isEmpty!35263 lt!2281360)))))

(declare-fun bs!1339585 () Bool)

(assert (= bs!1339585 d!1807320))

(declare-fun m!6683482 () Bool)

(assert (=> bs!1339585 m!6683482))

(assert (=> b!5730890 d!1807320))

(declare-fun d!1807322 () Bool)

(declare-fun c!1011275 () Bool)

(assert (=> d!1807322 (= c!1011275 (isEmpty!35264 lt!2281378))))

(declare-fun e!3523764 () Bool)

(assert (=> d!1807322 (= (matchZipper!1874 (set.insert (Context!10241 (++!13944 lt!2281379 lt!2281387)) (as set.empty (Set Context!10240))) lt!2281378) e!3523764)))

(declare-fun b!5731415 () Bool)

(assert (=> b!5731415 (= e!3523764 (nullableZipper!1676 (set.insert (Context!10241 (++!13944 lt!2281379 lt!2281387)) (as set.empty (Set Context!10240)))))))

(declare-fun b!5731416 () Bool)

(assert (=> b!5731416 (= e!3523764 (matchZipper!1874 (derivationStepZipper!1819 (set.insert (Context!10241 (++!13944 lt!2281379 lt!2281387)) (as set.empty (Set Context!10240))) (head!12132 lt!2281378)) (tail!11227 lt!2281378)))))

(assert (= (and d!1807322 c!1011275) b!5731415))

(assert (= (and d!1807322 (not c!1011275)) b!5731416))

(declare-fun m!6683484 () Bool)

(assert (=> d!1807322 m!6683484))

(assert (=> b!5731415 m!6682814))

(declare-fun m!6683486 () Bool)

(assert (=> b!5731415 m!6683486))

(declare-fun m!6683488 () Bool)

(assert (=> b!5731416 m!6683488))

(assert (=> b!5731416 m!6682814))

(assert (=> b!5731416 m!6683488))

(declare-fun m!6683490 () Bool)

(assert (=> b!5731416 m!6683490))

(declare-fun m!6683492 () Bool)

(assert (=> b!5731416 m!6683492))

(assert (=> b!5731416 m!6683490))

(assert (=> b!5731416 m!6683492))

(declare-fun m!6683494 () Bool)

(assert (=> b!5731416 m!6683494))

(assert (=> b!5730890 d!1807322))

(declare-fun bs!1339586 () Bool)

(declare-fun b!5731424 () Bool)

(assert (= bs!1339586 (and b!5731424 d!1807316)))

(declare-fun lambda!310216 () Int)

(assert (=> bs!1339586 (not (= lambda!310216 lambda!310215))))

(declare-fun bs!1339587 () Bool)

(assert (= bs!1339587 (and b!5731424 b!5731261)))

(assert (=> bs!1339587 (not (= lambda!310216 lambda!310212))))

(declare-fun bs!1339588 () Bool)

(assert (= bs!1339588 (and b!5731424 b!5730890)))

(assert (=> bs!1339588 (not (= lambda!310216 lambda!310156))))

(declare-fun bs!1339589 () Bool)

(assert (= bs!1339589 (and b!5731424 b!5730909)))

(assert (=> bs!1339589 (not (= lambda!310216 lambda!310150))))

(assert (=> bs!1339588 (not (= lambda!310216 lambda!310155))))

(declare-fun bs!1339590 () Bool)

(assert (= bs!1339590 (and b!5731424 b!5731258)))

(assert (=> bs!1339590 (= (and (= (reg!16065 lt!2281361) (reg!16065 r!7292)) (= lt!2281361 r!7292)) (= lambda!310216 lambda!310211))))

(assert (=> bs!1339589 (not (= lambda!310216 lambda!310151))))

(assert (=> b!5731424 true))

(assert (=> b!5731424 true))

(declare-fun bs!1339591 () Bool)

(declare-fun b!5731427 () Bool)

(assert (= bs!1339591 (and b!5731427 d!1807316)))

(declare-fun lambda!310217 () Int)

(assert (=> bs!1339591 (not (= lambda!310217 lambda!310215))))

(declare-fun bs!1339592 () Bool)

(assert (= bs!1339592 (and b!5731427 b!5731261)))

(assert (=> bs!1339592 (= (and (= (regOne!31984 lt!2281361) (regOne!31984 r!7292)) (= (regTwo!31984 lt!2281361) (regTwo!31984 r!7292))) (= lambda!310217 lambda!310212))))

(declare-fun bs!1339593 () Bool)

(assert (= bs!1339593 (and b!5731427 b!5730890)))

(assert (=> bs!1339593 (= (and (= (regOne!31984 lt!2281361) lt!2281388) (= (regTwo!31984 lt!2281361) (regTwo!31984 r!7292))) (= lambda!310217 lambda!310156))))

(declare-fun bs!1339594 () Bool)

(assert (= bs!1339594 (and b!5731427 b!5731424)))

(assert (=> bs!1339594 (not (= lambda!310217 lambda!310216))))

(declare-fun bs!1339595 () Bool)

(assert (= bs!1339595 (and b!5731427 b!5730909)))

(assert (=> bs!1339595 (not (= lambda!310217 lambda!310150))))

(assert (=> bs!1339593 (not (= lambda!310217 lambda!310155))))

(declare-fun bs!1339596 () Bool)

(assert (= bs!1339596 (and b!5731427 b!5731258)))

(assert (=> bs!1339596 (not (= lambda!310217 lambda!310211))))

(assert (=> bs!1339595 (= (and (= (regOne!31984 lt!2281361) (regOne!31984 r!7292)) (= (regTwo!31984 lt!2281361) (regTwo!31984 r!7292))) (= lambda!310217 lambda!310151))))

(assert (=> b!5731427 true))

(assert (=> b!5731427 true))

(declare-fun b!5731417 () Bool)

(declare-fun e!3523769 () Bool)

(assert (=> b!5731417 (= e!3523769 (matchRSpec!2839 (regTwo!31985 lt!2281361) s!2326))))

(declare-fun c!1011276 () Bool)

(declare-fun call!438163 () Bool)

(declare-fun bm!438157 () Bool)

(assert (=> bm!438157 (= call!438163 (Exists!2836 (ite c!1011276 lambda!310216 lambda!310217)))))

(declare-fun bm!438158 () Bool)

(declare-fun call!438162 () Bool)

(assert (=> bm!438158 (= call!438162 (isEmpty!35264 s!2326))))

(declare-fun b!5731418 () Bool)

(declare-fun e!3523765 () Bool)

(declare-fun e!3523767 () Bool)

(assert (=> b!5731418 (= e!3523765 e!3523767)))

(assert (=> b!5731418 (= c!1011276 (is-Star!15736 lt!2281361))))

(declare-fun b!5731419 () Bool)

(declare-fun e!3523771 () Bool)

(assert (=> b!5731419 (= e!3523771 (= s!2326 (Cons!63385 (c!1011160 lt!2281361) Nil!63385)))))

(declare-fun b!5731420 () Bool)

(declare-fun e!3523768 () Bool)

(assert (=> b!5731420 (= e!3523768 call!438162)))

(declare-fun b!5731421 () Bool)

(declare-fun e!3523766 () Bool)

(assert (=> b!5731421 (= e!3523768 e!3523766)))

(declare-fun res!2420017 () Bool)

(assert (=> b!5731421 (= res!2420017 (not (is-EmptyLang!15736 lt!2281361)))))

(assert (=> b!5731421 (=> (not res!2420017) (not e!3523766))))

(declare-fun b!5731422 () Bool)

(declare-fun c!1011277 () Bool)

(assert (=> b!5731422 (= c!1011277 (is-Union!15736 lt!2281361))))

(assert (=> b!5731422 (= e!3523771 e!3523765)))

(declare-fun e!3523770 () Bool)

(assert (=> b!5731424 (= e!3523770 call!438163)))

(declare-fun b!5731425 () Bool)

(declare-fun res!2420019 () Bool)

(assert (=> b!5731425 (=> res!2420019 e!3523770)))

(assert (=> b!5731425 (= res!2420019 call!438162)))

(assert (=> b!5731425 (= e!3523767 e!3523770)))

(declare-fun b!5731426 () Bool)

(declare-fun c!1011279 () Bool)

(assert (=> b!5731426 (= c!1011279 (is-ElementMatch!15736 lt!2281361))))

(assert (=> b!5731426 (= e!3523766 e!3523771)))

(assert (=> b!5731427 (= e!3523767 call!438163)))

(declare-fun d!1807324 () Bool)

(declare-fun c!1011278 () Bool)

(assert (=> d!1807324 (= c!1011278 (is-EmptyExpr!15736 lt!2281361))))

(assert (=> d!1807324 (= (matchRSpec!2839 lt!2281361 s!2326) e!3523768)))

(declare-fun b!5731423 () Bool)

(assert (=> b!5731423 (= e!3523765 e!3523769)))

(declare-fun res!2420018 () Bool)

(assert (=> b!5731423 (= res!2420018 (matchRSpec!2839 (regOne!31985 lt!2281361) s!2326))))

(assert (=> b!5731423 (=> res!2420018 e!3523769)))

(assert (= (and d!1807324 c!1011278) b!5731420))

(assert (= (and d!1807324 (not c!1011278)) b!5731421))

(assert (= (and b!5731421 res!2420017) b!5731426))

(assert (= (and b!5731426 c!1011279) b!5731419))

(assert (= (and b!5731426 (not c!1011279)) b!5731422))

(assert (= (and b!5731422 c!1011277) b!5731423))

(assert (= (and b!5731422 (not c!1011277)) b!5731418))

(assert (= (and b!5731423 (not res!2420018)) b!5731417))

(assert (= (and b!5731418 c!1011276) b!5731425))

(assert (= (and b!5731418 (not c!1011276)) b!5731427))

(assert (= (and b!5731425 (not res!2420019)) b!5731424))

(assert (= (or b!5731424 b!5731427) bm!438157))

(assert (= (or b!5731420 b!5731425) bm!438158))

(declare-fun m!6683496 () Bool)

(assert (=> b!5731417 m!6683496))

(declare-fun m!6683498 () Bool)

(assert (=> bm!438157 m!6683498))

(assert (=> bm!438158 m!6683282))

(declare-fun m!6683500 () Bool)

(assert (=> b!5731423 m!6683500))

(assert (=> b!5730890 d!1807324))

(declare-fun b!5731428 () Bool)

(declare-fun e!3523773 () Bool)

(declare-fun lt!2281628 () Bool)

(assert (=> b!5731428 (= e!3523773 (not lt!2281628))))

(declare-fun b!5731429 () Bool)

(declare-fun res!2420023 () Bool)

(declare-fun e!3523774 () Bool)

(assert (=> b!5731429 (=> res!2420023 e!3523774)))

(declare-fun e!3523776 () Bool)

(assert (=> b!5731429 (= res!2420023 e!3523776)))

(declare-fun res!2420027 () Bool)

(assert (=> b!5731429 (=> (not res!2420027) (not e!3523776))))

(assert (=> b!5731429 (= res!2420027 lt!2281628)))

(declare-fun b!5731430 () Bool)

(declare-fun res!2420020 () Bool)

(assert (=> b!5731430 (=> (not res!2420020) (not e!3523776))))

(assert (=> b!5731430 (= res!2420020 (isEmpty!35264 (tail!11227 (_1!36136 lt!2281366))))))

(declare-fun b!5731431 () Bool)

(declare-fun res!2420025 () Bool)

(assert (=> b!5731431 (=> res!2420025 e!3523774)))

(assert (=> b!5731431 (= res!2420025 (not (is-ElementMatch!15736 (reg!16065 (regOne!31984 r!7292)))))))

(assert (=> b!5731431 (= e!3523773 e!3523774)))

(declare-fun b!5731432 () Bool)

(declare-fun e!3523775 () Bool)

(assert (=> b!5731432 (= e!3523775 e!3523773)))

(declare-fun c!1011280 () Bool)

(assert (=> b!5731432 (= c!1011280 (is-EmptyLang!15736 (reg!16065 (regOne!31984 r!7292))))))

(declare-fun b!5731433 () Bool)

(declare-fun e!3523777 () Bool)

(declare-fun e!3523772 () Bool)

(assert (=> b!5731433 (= e!3523777 e!3523772)))

(declare-fun res!2420024 () Bool)

(assert (=> b!5731433 (=> res!2420024 e!3523772)))

(declare-fun call!438164 () Bool)

(assert (=> b!5731433 (= res!2420024 call!438164)))

(declare-fun b!5731434 () Bool)

(assert (=> b!5731434 (= e!3523776 (= (head!12132 (_1!36136 lt!2281366)) (c!1011160 (reg!16065 (regOne!31984 r!7292)))))))

(declare-fun b!5731435 () Bool)

(declare-fun res!2420021 () Bool)

(assert (=> b!5731435 (=> res!2420021 e!3523772)))

(assert (=> b!5731435 (= res!2420021 (not (isEmpty!35264 (tail!11227 (_1!36136 lt!2281366)))))))

(declare-fun b!5731436 () Bool)

(declare-fun e!3523778 () Bool)

(assert (=> b!5731436 (= e!3523778 (matchR!7921 (derivativeStep!4529 (reg!16065 (regOne!31984 r!7292)) (head!12132 (_1!36136 lt!2281366))) (tail!11227 (_1!36136 lt!2281366))))))

(declare-fun b!5731437 () Bool)

(assert (=> b!5731437 (= e!3523775 (= lt!2281628 call!438164))))

(declare-fun b!5731438 () Bool)

(declare-fun res!2420026 () Bool)

(assert (=> b!5731438 (=> (not res!2420026) (not e!3523776))))

(assert (=> b!5731438 (= res!2420026 (not call!438164))))

(declare-fun b!5731439 () Bool)

(assert (=> b!5731439 (= e!3523772 (not (= (head!12132 (_1!36136 lt!2281366)) (c!1011160 (reg!16065 (regOne!31984 r!7292))))))))

(declare-fun d!1807326 () Bool)

(assert (=> d!1807326 e!3523775))

(declare-fun c!1011281 () Bool)

(assert (=> d!1807326 (= c!1011281 (is-EmptyExpr!15736 (reg!16065 (regOne!31984 r!7292))))))

(assert (=> d!1807326 (= lt!2281628 e!3523778)))

(declare-fun c!1011282 () Bool)

(assert (=> d!1807326 (= c!1011282 (isEmpty!35264 (_1!36136 lt!2281366)))))

(assert (=> d!1807326 (validRegex!7472 (reg!16065 (regOne!31984 r!7292)))))

(assert (=> d!1807326 (= (matchR!7921 (reg!16065 (regOne!31984 r!7292)) (_1!36136 lt!2281366)) lt!2281628)))

(declare-fun bm!438159 () Bool)

(assert (=> bm!438159 (= call!438164 (isEmpty!35264 (_1!36136 lt!2281366)))))

(declare-fun b!5731440 () Bool)

(assert (=> b!5731440 (= e!3523778 (nullable!5768 (reg!16065 (regOne!31984 r!7292))))))

(declare-fun b!5731441 () Bool)

(assert (=> b!5731441 (= e!3523774 e!3523777)))

(declare-fun res!2420022 () Bool)

(assert (=> b!5731441 (=> (not res!2420022) (not e!3523777))))

(assert (=> b!5731441 (= res!2420022 (not lt!2281628))))

(assert (= (and d!1807326 c!1011282) b!5731440))

(assert (= (and d!1807326 (not c!1011282)) b!5731436))

(assert (= (and d!1807326 c!1011281) b!5731437))

(assert (= (and d!1807326 (not c!1011281)) b!5731432))

(assert (= (and b!5731432 c!1011280) b!5731428))

(assert (= (and b!5731432 (not c!1011280)) b!5731431))

(assert (= (and b!5731431 (not res!2420025)) b!5731429))

(assert (= (and b!5731429 res!2420027) b!5731438))

(assert (= (and b!5731438 res!2420026) b!5731430))

(assert (= (and b!5731430 res!2420020) b!5731434))

(assert (= (and b!5731429 (not res!2420023)) b!5731441))

(assert (= (and b!5731441 res!2420022) b!5731433))

(assert (= (and b!5731433 (not res!2420024)) b!5731435))

(assert (= (and b!5731435 (not res!2420021)) b!5731439))

(assert (= (or b!5731437 b!5731433 b!5731438) bm!438159))

(declare-fun m!6683502 () Bool)

(assert (=> b!5731440 m!6683502))

(assert (=> bm!438159 m!6683228))

(assert (=> b!5731436 m!6683232))

(assert (=> b!5731436 m!6683232))

(declare-fun m!6683504 () Bool)

(assert (=> b!5731436 m!6683504))

(assert (=> b!5731436 m!6683236))

(assert (=> b!5731436 m!6683504))

(assert (=> b!5731436 m!6683236))

(declare-fun m!6683506 () Bool)

(assert (=> b!5731436 m!6683506))

(assert (=> b!5731434 m!6683232))

(assert (=> b!5731439 m!6683232))

(assert (=> d!1807326 m!6683228))

(assert (=> d!1807326 m!6683480))

(assert (=> b!5731430 m!6683236))

(assert (=> b!5731430 m!6683236))

(declare-fun m!6683508 () Bool)

(assert (=> b!5731430 m!6683508))

(assert (=> b!5731435 m!6683236))

(assert (=> b!5731435 m!6683236))

(assert (=> b!5731435 m!6683508))

(assert (=> b!5730890 d!1807326))

(declare-fun b!5731442 () Bool)

(declare-fun e!3523780 () Bool)

(declare-fun lt!2281629 () Bool)

(assert (=> b!5731442 (= e!3523780 (not lt!2281629))))

(declare-fun b!5731443 () Bool)

(declare-fun res!2420031 () Bool)

(declare-fun e!3523781 () Bool)

(assert (=> b!5731443 (=> res!2420031 e!3523781)))

(declare-fun e!3523783 () Bool)

(assert (=> b!5731443 (= res!2420031 e!3523783)))

(declare-fun res!2420035 () Bool)

(assert (=> b!5731443 (=> (not res!2420035) (not e!3523783))))

(assert (=> b!5731443 (= res!2420035 lt!2281629)))

(declare-fun b!5731444 () Bool)

(declare-fun res!2420028 () Bool)

(assert (=> b!5731444 (=> (not res!2420028) (not e!3523783))))

(assert (=> b!5731444 (= res!2420028 (isEmpty!35264 (tail!11227 lt!2281378)))))

(declare-fun b!5731445 () Bool)

(declare-fun res!2420033 () Bool)

(assert (=> b!5731445 (=> res!2420033 e!3523781)))

(assert (=> b!5731445 (= res!2420033 (not (is-ElementMatch!15736 lt!2281344)))))

(assert (=> b!5731445 (= e!3523780 e!3523781)))

(declare-fun b!5731446 () Bool)

(declare-fun e!3523782 () Bool)

(assert (=> b!5731446 (= e!3523782 e!3523780)))

(declare-fun c!1011283 () Bool)

(assert (=> b!5731446 (= c!1011283 (is-EmptyLang!15736 lt!2281344))))

(declare-fun b!5731447 () Bool)

(declare-fun e!3523784 () Bool)

(declare-fun e!3523779 () Bool)

(assert (=> b!5731447 (= e!3523784 e!3523779)))

(declare-fun res!2420032 () Bool)

(assert (=> b!5731447 (=> res!2420032 e!3523779)))

(declare-fun call!438165 () Bool)

(assert (=> b!5731447 (= res!2420032 call!438165)))

(declare-fun b!5731448 () Bool)

(assert (=> b!5731448 (= e!3523783 (= (head!12132 lt!2281378) (c!1011160 lt!2281344)))))

(declare-fun b!5731449 () Bool)

(declare-fun res!2420029 () Bool)

(assert (=> b!5731449 (=> res!2420029 e!3523779)))

(assert (=> b!5731449 (= res!2420029 (not (isEmpty!35264 (tail!11227 lt!2281378))))))

(declare-fun b!5731450 () Bool)

(declare-fun e!3523785 () Bool)

(assert (=> b!5731450 (= e!3523785 (matchR!7921 (derivativeStep!4529 lt!2281344 (head!12132 lt!2281378)) (tail!11227 lt!2281378)))))

(declare-fun b!5731451 () Bool)

(assert (=> b!5731451 (= e!3523782 (= lt!2281629 call!438165))))

(declare-fun b!5731452 () Bool)

(declare-fun res!2420034 () Bool)

(assert (=> b!5731452 (=> (not res!2420034) (not e!3523783))))

(assert (=> b!5731452 (= res!2420034 (not call!438165))))

(declare-fun b!5731453 () Bool)

(assert (=> b!5731453 (= e!3523779 (not (= (head!12132 lt!2281378) (c!1011160 lt!2281344))))))

(declare-fun d!1807328 () Bool)

(assert (=> d!1807328 e!3523782))

(declare-fun c!1011284 () Bool)

(assert (=> d!1807328 (= c!1011284 (is-EmptyExpr!15736 lt!2281344))))

(assert (=> d!1807328 (= lt!2281629 e!3523785)))

(declare-fun c!1011285 () Bool)

(assert (=> d!1807328 (= c!1011285 (isEmpty!35264 lt!2281378))))

(assert (=> d!1807328 (validRegex!7472 lt!2281344)))

(assert (=> d!1807328 (= (matchR!7921 lt!2281344 lt!2281378) lt!2281629)))

(declare-fun bm!438160 () Bool)

(assert (=> bm!438160 (= call!438165 (isEmpty!35264 lt!2281378))))

(declare-fun b!5731454 () Bool)

(assert (=> b!5731454 (= e!3523785 (nullable!5768 lt!2281344))))

(declare-fun b!5731455 () Bool)

(assert (=> b!5731455 (= e!3523781 e!3523784)))

(declare-fun res!2420030 () Bool)

(assert (=> b!5731455 (=> (not res!2420030) (not e!3523784))))

(assert (=> b!5731455 (= res!2420030 (not lt!2281629))))

(assert (= (and d!1807328 c!1011285) b!5731454))

(assert (= (and d!1807328 (not c!1011285)) b!5731450))

(assert (= (and d!1807328 c!1011284) b!5731451))

(assert (= (and d!1807328 (not c!1011284)) b!5731446))

(assert (= (and b!5731446 c!1011283) b!5731442))

(assert (= (and b!5731446 (not c!1011283)) b!5731445))

(assert (= (and b!5731445 (not res!2420033)) b!5731443))

(assert (= (and b!5731443 res!2420035) b!5731452))

(assert (= (and b!5731452 res!2420034) b!5731444))

(assert (= (and b!5731444 res!2420028) b!5731448))

(assert (= (and b!5731443 (not res!2420031)) b!5731455))

(assert (= (and b!5731455 res!2420030) b!5731447))

(assert (= (and b!5731447 (not res!2420032)) b!5731449))

(assert (= (and b!5731449 (not res!2420029)) b!5731453))

(assert (= (or b!5731451 b!5731447 b!5731452) bm!438160))

(declare-fun m!6683510 () Bool)

(assert (=> b!5731454 m!6683510))

(assert (=> bm!438160 m!6683484))

(assert (=> b!5731450 m!6683488))

(assert (=> b!5731450 m!6683488))

(declare-fun m!6683512 () Bool)

(assert (=> b!5731450 m!6683512))

(assert (=> b!5731450 m!6683492))

(assert (=> b!5731450 m!6683512))

(assert (=> b!5731450 m!6683492))

(declare-fun m!6683514 () Bool)

(assert (=> b!5731450 m!6683514))

(assert (=> b!5731448 m!6683488))

(assert (=> b!5731453 m!6683488))

(assert (=> d!1807328 m!6683484))

(declare-fun m!6683516 () Bool)

(assert (=> d!1807328 m!6683516))

(assert (=> b!5731444 m!6683492))

(assert (=> b!5731444 m!6683492))

(declare-fun m!6683518 () Bool)

(assert (=> b!5731444 m!6683518))

(assert (=> b!5731449 m!6683492))

(assert (=> b!5731449 m!6683492))

(assert (=> b!5731449 m!6683518))

(assert (=> b!5730890 d!1807328))

(assert (=> b!5730890 d!1807212))

(assert (=> b!5730890 d!1807214))

(declare-fun bs!1339597 () Bool)

(declare-fun d!1807330 () Bool)

(assert (= bs!1339597 (and d!1807330 b!5730896)))

(declare-fun lambda!310220 () Int)

(assert (=> bs!1339597 (= lambda!310220 lambda!310154)))

(declare-fun bs!1339598 () Bool)

(assert (= bs!1339598 (and d!1807330 d!1807230)))

(assert (=> bs!1339598 (= lambda!310220 lambda!310199)))

(declare-fun bs!1339599 () Bool)

(assert (= bs!1339599 (and d!1807330 d!1807240)))

(assert (=> bs!1339599 (= lambda!310220 lambda!310202)))

(declare-fun bs!1339600 () Bool)

(assert (= bs!1339600 (and d!1807330 d!1807258)))

(assert (=> bs!1339600 (= lambda!310220 lambda!310206)))

(assert (=> d!1807330 (matchZipper!1874 (set.insert (Context!10241 (++!13944 (exprs!5620 lt!2281342) (exprs!5620 lt!2281359))) (as set.empty (Set Context!10240))) (++!13945 (_1!36136 lt!2281366) (_2!36136 lt!2281366)))))

(declare-fun lt!2281635 () Unit!156476)

(assert (=> d!1807330 (= lt!2281635 (lemmaConcatPreservesForall!305 (exprs!5620 lt!2281342) (exprs!5620 lt!2281359) lambda!310220))))

(declare-fun lt!2281634 () Unit!156476)

(declare-fun choose!43377 (Context!10240 Context!10240 List!63509 List!63509) Unit!156476)

(assert (=> d!1807330 (= lt!2281634 (choose!43377 lt!2281342 lt!2281359 (_1!36136 lt!2281366) (_2!36136 lt!2281366)))))

(assert (=> d!1807330 (matchZipper!1874 (set.insert lt!2281342 (as set.empty (Set Context!10240))) (_1!36136 lt!2281366))))

(assert (=> d!1807330 (= (lemmaConcatenateContextMatchesConcatOfStrings!135 lt!2281342 lt!2281359 (_1!36136 lt!2281366) (_2!36136 lt!2281366)) lt!2281634)))

(declare-fun bs!1339601 () Bool)

(assert (= bs!1339601 d!1807330))

(declare-fun m!6683520 () Bool)

(assert (=> bs!1339601 m!6683520))

(declare-fun m!6683522 () Bool)

(assert (=> bs!1339601 m!6683522))

(declare-fun m!6683524 () Bool)

(assert (=> bs!1339601 m!6683524))

(declare-fun m!6683526 () Bool)

(assert (=> bs!1339601 m!6683526))

(assert (=> bs!1339601 m!6682950))

(assert (=> bs!1339601 m!6683526))

(assert (=> bs!1339601 m!6682864))

(declare-fun m!6683528 () Bool)

(assert (=> bs!1339601 m!6683528))

(assert (=> bs!1339601 m!6682950))

(declare-fun m!6683530 () Bool)

(assert (=> bs!1339601 m!6683530))

(assert (=> bs!1339601 m!6682864))

(assert (=> b!5730890 d!1807330))

(declare-fun d!1807332 () Bool)

(assert (=> d!1807332 (= (matchR!7921 (Concat!24581 (Concat!24581 (reg!16065 (regOne!31984 r!7292)) lt!2281375) (regTwo!31984 r!7292)) s!2326) (matchR!7921 (Concat!24581 (reg!16065 (regOne!31984 r!7292)) (Concat!24581 lt!2281375 (regTwo!31984 r!7292))) s!2326))))

(declare-fun lt!2281638 () Unit!156476)

(declare-fun choose!43378 (Regex!15736 Regex!15736 Regex!15736 List!63509) Unit!156476)

(assert (=> d!1807332 (= lt!2281638 (choose!43378 (reg!16065 (regOne!31984 r!7292)) lt!2281375 (regTwo!31984 r!7292) s!2326))))

(declare-fun e!3523788 () Bool)

(assert (=> d!1807332 e!3523788))

(declare-fun res!2420040 () Bool)

(assert (=> d!1807332 (=> (not res!2420040) (not e!3523788))))

(assert (=> d!1807332 (= res!2420040 (validRegex!7472 (reg!16065 (regOne!31984 r!7292))))))

(assert (=> d!1807332 (= (lemmaConcatAssociative!89 (reg!16065 (regOne!31984 r!7292)) lt!2281375 (regTwo!31984 r!7292) s!2326) lt!2281638)))

(declare-fun b!5731460 () Bool)

(declare-fun res!2420041 () Bool)

(assert (=> b!5731460 (=> (not res!2420041) (not e!3523788))))

(assert (=> b!5731460 (= res!2420041 (validRegex!7472 lt!2281375))))

(declare-fun b!5731461 () Bool)

(assert (=> b!5731461 (= e!3523788 (validRegex!7472 (regTwo!31984 r!7292)))))

(assert (= (and d!1807332 res!2420040) b!5731460))

(assert (= (and b!5731460 res!2420041) b!5731461))

(declare-fun m!6683532 () Bool)

(assert (=> d!1807332 m!6683532))

(declare-fun m!6683534 () Bool)

(assert (=> d!1807332 m!6683534))

(declare-fun m!6683536 () Bool)

(assert (=> d!1807332 m!6683536))

(assert (=> d!1807332 m!6683480))

(declare-fun m!6683538 () Bool)

(assert (=> b!5731460 m!6683538))

(declare-fun m!6683540 () Bool)

(assert (=> b!5731461 m!6683540))

(assert (=> b!5730890 d!1807332))

(declare-fun b!5731480 () Bool)

(declare-fun e!3523801 () Option!15745)

(assert (=> b!5731480 (= e!3523801 None!15744)))

(declare-fun b!5731481 () Bool)

(declare-fun e!3523802 () Bool)

(declare-fun lt!2281645 () Option!15745)

(assert (=> b!5731481 (= e!3523802 (not (isDefined!12448 lt!2281645)))))

(declare-fun b!5731482 () Bool)

(declare-fun e!3523800 () Option!15745)

(assert (=> b!5731482 (= e!3523800 (Some!15744 (tuple2!65667 Nil!63385 s!2326)))))

(declare-fun b!5731483 () Bool)

(assert (=> b!5731483 (= e!3523800 e!3523801)))

(declare-fun c!1011291 () Bool)

(assert (=> b!5731483 (= c!1011291 (is-Nil!63385 s!2326))))

(declare-fun b!5731484 () Bool)

(declare-fun e!3523803 () Bool)

(assert (=> b!5731484 (= e!3523803 (= (++!13945 (_1!36136 (get!21860 lt!2281645)) (_2!36136 (get!21860 lt!2281645))) s!2326))))

(declare-fun d!1807334 () Bool)

(assert (=> d!1807334 e!3523802))

(declare-fun res!2420053 () Bool)

(assert (=> d!1807334 (=> res!2420053 e!3523802)))

(assert (=> d!1807334 (= res!2420053 e!3523803)))

(declare-fun res!2420056 () Bool)

(assert (=> d!1807334 (=> (not res!2420056) (not e!3523803))))

(assert (=> d!1807334 (= res!2420056 (isDefined!12448 lt!2281645))))

(assert (=> d!1807334 (= lt!2281645 e!3523800)))

(declare-fun c!1011290 () Bool)

(declare-fun e!3523799 () Bool)

(assert (=> d!1807334 (= c!1011290 e!3523799)))

(declare-fun res!2420054 () Bool)

(assert (=> d!1807334 (=> (not res!2420054) (not e!3523799))))

(assert (=> d!1807334 (= res!2420054 (matchR!7921 lt!2281388 Nil!63385))))

(assert (=> d!1807334 (validRegex!7472 lt!2281388)))

(assert (=> d!1807334 (= (findConcatSeparation!2159 lt!2281388 (regTwo!31984 r!7292) Nil!63385 s!2326 s!2326) lt!2281645)))

(declare-fun b!5731485 () Bool)

(declare-fun lt!2281647 () Unit!156476)

(declare-fun lt!2281646 () Unit!156476)

(assert (=> b!5731485 (= lt!2281647 lt!2281646)))

(assert (=> b!5731485 (= (++!13945 (++!13945 Nil!63385 (Cons!63385 (h!69833 s!2326) Nil!63385)) (t!376837 s!2326)) s!2326)))

(assert (=> b!5731485 (= lt!2281646 (lemmaMoveElementToOtherListKeepsConcatEq!2079 Nil!63385 (h!69833 s!2326) (t!376837 s!2326) s!2326))))

(assert (=> b!5731485 (= e!3523801 (findConcatSeparation!2159 lt!2281388 (regTwo!31984 r!7292) (++!13945 Nil!63385 (Cons!63385 (h!69833 s!2326) Nil!63385)) (t!376837 s!2326) s!2326))))

(declare-fun b!5731486 () Bool)

(declare-fun res!2420052 () Bool)

(assert (=> b!5731486 (=> (not res!2420052) (not e!3523803))))

(assert (=> b!5731486 (= res!2420052 (matchR!7921 (regTwo!31984 r!7292) (_2!36136 (get!21860 lt!2281645))))))

(declare-fun b!5731487 () Bool)

(assert (=> b!5731487 (= e!3523799 (matchR!7921 (regTwo!31984 r!7292) s!2326))))

(declare-fun b!5731488 () Bool)

(declare-fun res!2420055 () Bool)

(assert (=> b!5731488 (=> (not res!2420055) (not e!3523803))))

(assert (=> b!5731488 (= res!2420055 (matchR!7921 lt!2281388 (_1!36136 (get!21860 lt!2281645))))))

(assert (= (and d!1807334 res!2420054) b!5731487))

(assert (= (and d!1807334 c!1011290) b!5731482))

(assert (= (and d!1807334 (not c!1011290)) b!5731483))

(assert (= (and b!5731483 c!1011291) b!5731480))

(assert (= (and b!5731483 (not c!1011291)) b!5731485))

(assert (= (and d!1807334 res!2420056) b!5731488))

(assert (= (and b!5731488 res!2420055) b!5731486))

(assert (= (and b!5731486 res!2420052) b!5731484))

(assert (= (and d!1807334 (not res!2420053)) b!5731481))

(declare-fun m!6683542 () Bool)

(assert (=> b!5731484 m!6683542))

(declare-fun m!6683544 () Bool)

(assert (=> b!5731484 m!6683544))

(declare-fun m!6683546 () Bool)

(assert (=> d!1807334 m!6683546))

(declare-fun m!6683548 () Bool)

(assert (=> d!1807334 m!6683548))

(assert (=> d!1807334 m!6683454))

(declare-fun m!6683550 () Bool)

(assert (=> b!5731487 m!6683550))

(assert (=> b!5731485 m!6683190))

(assert (=> b!5731485 m!6683190))

(assert (=> b!5731485 m!6683192))

(assert (=> b!5731485 m!6683194))

(assert (=> b!5731485 m!6683190))

(declare-fun m!6683552 () Bool)

(assert (=> b!5731485 m!6683552))

(assert (=> b!5731486 m!6683542))

(declare-fun m!6683554 () Bool)

(assert (=> b!5731486 m!6683554))

(assert (=> b!5731488 m!6683542))

(declare-fun m!6683556 () Bool)

(assert (=> b!5731488 m!6683556))

(assert (=> b!5731481 m!6683546))

(assert (=> b!5730890 d!1807334))

(declare-fun d!1807336 () Bool)

(assert (=> d!1807336 (= (matchR!7921 (reg!16065 (regOne!31984 r!7292)) (_1!36136 lt!2281366)) (matchZipper!1874 lt!2281343 (_1!36136 lt!2281366)))))

(declare-fun lt!2281650 () Unit!156476)

(declare-fun choose!43380 ((Set Context!10240) List!63508 Regex!15736 List!63509) Unit!156476)

(assert (=> d!1807336 (= lt!2281650 (choose!43380 lt!2281343 lt!2281368 (reg!16065 (regOne!31984 r!7292)) (_1!36136 lt!2281366)))))

(assert (=> d!1807336 (validRegex!7472 (reg!16065 (regOne!31984 r!7292)))))

(assert (=> d!1807336 (= (theoremZipperRegexEquiv!656 lt!2281343 lt!2281368 (reg!16065 (regOne!31984 r!7292)) (_1!36136 lt!2281366)) lt!2281650)))

(declare-fun bs!1339602 () Bool)

(assert (= bs!1339602 d!1807336))

(assert (=> bs!1339602 m!6682916))

(assert (=> bs!1339602 m!6682926))

(declare-fun m!6683558 () Bool)

(assert (=> bs!1339602 m!6683558))

(assert (=> bs!1339602 m!6683480))

(assert (=> b!5730890 d!1807336))

(declare-fun d!1807338 () Bool)

(assert (=> d!1807338 (= (matchR!7921 lt!2281371 (_2!36136 lt!2281366)) (matchZipper!1874 lt!2281337 (_2!36136 lt!2281366)))))

(declare-fun lt!2281651 () Unit!156476)

(assert (=> d!1807338 (= lt!2281651 (choose!43380 lt!2281337 lt!2281391 lt!2281371 (_2!36136 lt!2281366)))))

(assert (=> d!1807338 (validRegex!7472 lt!2281371)))

(assert (=> d!1807338 (= (theoremZipperRegexEquiv!656 lt!2281337 lt!2281391 lt!2281371 (_2!36136 lt!2281366)) lt!2281651)))

(declare-fun bs!1339603 () Bool)

(assert (= bs!1339603 d!1807338))

(assert (=> bs!1339603 m!6682900))

(assert (=> bs!1339603 m!6682882))

(declare-fun m!6683560 () Bool)

(assert (=> bs!1339603 m!6683560))

(assert (=> bs!1339603 m!6683464))

(assert (=> b!5730890 d!1807338))

(declare-fun b!5731489 () Bool)

(declare-fun e!3523805 () Bool)

(declare-fun lt!2281652 () Bool)

(assert (=> b!5731489 (= e!3523805 (not lt!2281652))))

(declare-fun b!5731490 () Bool)

(declare-fun res!2420060 () Bool)

(declare-fun e!3523806 () Bool)

(assert (=> b!5731490 (=> res!2420060 e!3523806)))

(declare-fun e!3523808 () Bool)

(assert (=> b!5731490 (= res!2420060 e!3523808)))

(declare-fun res!2420064 () Bool)

(assert (=> b!5731490 (=> (not res!2420064) (not e!3523808))))

(assert (=> b!5731490 (= res!2420064 lt!2281652)))

(declare-fun b!5731491 () Bool)

(declare-fun res!2420057 () Bool)

(assert (=> b!5731491 (=> (not res!2420057) (not e!3523808))))

(assert (=> b!5731491 (= res!2420057 (isEmpty!35264 (tail!11227 s!2326)))))

(declare-fun b!5731492 () Bool)

(declare-fun res!2420062 () Bool)

(assert (=> b!5731492 (=> res!2420062 e!3523806)))

(assert (=> b!5731492 (= res!2420062 (not (is-ElementMatch!15736 lt!2281361)))))

(assert (=> b!5731492 (= e!3523805 e!3523806)))

(declare-fun b!5731493 () Bool)

(declare-fun e!3523807 () Bool)

(assert (=> b!5731493 (= e!3523807 e!3523805)))

(declare-fun c!1011292 () Bool)

(assert (=> b!5731493 (= c!1011292 (is-EmptyLang!15736 lt!2281361))))

(declare-fun b!5731494 () Bool)

(declare-fun e!3523809 () Bool)

(declare-fun e!3523804 () Bool)

(assert (=> b!5731494 (= e!3523809 e!3523804)))

(declare-fun res!2420061 () Bool)

(assert (=> b!5731494 (=> res!2420061 e!3523804)))

(declare-fun call!438166 () Bool)

(assert (=> b!5731494 (= res!2420061 call!438166)))

(declare-fun b!5731495 () Bool)

(assert (=> b!5731495 (= e!3523808 (= (head!12132 s!2326) (c!1011160 lt!2281361)))))

(declare-fun b!5731496 () Bool)

(declare-fun res!2420058 () Bool)

(assert (=> b!5731496 (=> res!2420058 e!3523804)))

(assert (=> b!5731496 (= res!2420058 (not (isEmpty!35264 (tail!11227 s!2326))))))

(declare-fun b!5731497 () Bool)

(declare-fun e!3523810 () Bool)

(assert (=> b!5731497 (= e!3523810 (matchR!7921 (derivativeStep!4529 lt!2281361 (head!12132 s!2326)) (tail!11227 s!2326)))))

(declare-fun b!5731498 () Bool)

(assert (=> b!5731498 (= e!3523807 (= lt!2281652 call!438166))))

(declare-fun b!5731499 () Bool)

(declare-fun res!2420063 () Bool)

(assert (=> b!5731499 (=> (not res!2420063) (not e!3523808))))

(assert (=> b!5731499 (= res!2420063 (not call!438166))))

(declare-fun b!5731500 () Bool)

(assert (=> b!5731500 (= e!3523804 (not (= (head!12132 s!2326) (c!1011160 lt!2281361))))))

(declare-fun d!1807340 () Bool)

(assert (=> d!1807340 e!3523807))

(declare-fun c!1011293 () Bool)

(assert (=> d!1807340 (= c!1011293 (is-EmptyExpr!15736 lt!2281361))))

(assert (=> d!1807340 (= lt!2281652 e!3523810)))

(declare-fun c!1011294 () Bool)

(assert (=> d!1807340 (= c!1011294 (isEmpty!35264 s!2326))))

(assert (=> d!1807340 (validRegex!7472 lt!2281361)))

(assert (=> d!1807340 (= (matchR!7921 lt!2281361 s!2326) lt!2281652)))

(declare-fun bm!438161 () Bool)

(assert (=> bm!438161 (= call!438166 (isEmpty!35264 s!2326))))

(declare-fun b!5731501 () Bool)

(assert (=> b!5731501 (= e!3523810 (nullable!5768 lt!2281361))))

(declare-fun b!5731502 () Bool)

(assert (=> b!5731502 (= e!3523806 e!3523809)))

(declare-fun res!2420059 () Bool)

(assert (=> b!5731502 (=> (not res!2420059) (not e!3523809))))

(assert (=> b!5731502 (= res!2420059 (not lt!2281652))))

(assert (= (and d!1807340 c!1011294) b!5731501))

(assert (= (and d!1807340 (not c!1011294)) b!5731497))

(assert (= (and d!1807340 c!1011293) b!5731498))

(assert (= (and d!1807340 (not c!1011293)) b!5731493))

(assert (= (and b!5731493 c!1011292) b!5731489))

(assert (= (and b!5731493 (not c!1011292)) b!5731492))

(assert (= (and b!5731492 (not res!2420062)) b!5731490))

(assert (= (and b!5731490 res!2420064) b!5731499))

(assert (= (and b!5731499 res!2420063) b!5731491))

(assert (= (and b!5731491 res!2420057) b!5731495))

(assert (= (and b!5731490 (not res!2420060)) b!5731502))

(assert (= (and b!5731502 res!2420059) b!5731494))

(assert (= (and b!5731494 (not res!2420061)) b!5731496))

(assert (= (and b!5731496 (not res!2420058)) b!5731500))

(assert (= (or b!5731498 b!5731494 b!5731499) bm!438161))

(declare-fun m!6683562 () Bool)

(assert (=> b!5731501 m!6683562))

(assert (=> bm!438161 m!6683282))

(assert (=> b!5731497 m!6683286))

(assert (=> b!5731497 m!6683286))

(declare-fun m!6683564 () Bool)

(assert (=> b!5731497 m!6683564))

(assert (=> b!5731497 m!6683290))

(assert (=> b!5731497 m!6683564))

(assert (=> b!5731497 m!6683290))

(declare-fun m!6683566 () Bool)

(assert (=> b!5731497 m!6683566))

(assert (=> b!5731495 m!6683286))

(assert (=> b!5731500 m!6683286))

(assert (=> d!1807340 m!6683282))

(declare-fun m!6683568 () Bool)

(assert (=> d!1807340 m!6683568))

(assert (=> b!5731491 m!6683290))

(assert (=> b!5731491 m!6683290))

(assert (=> b!5731491 m!6683346))

(assert (=> b!5731496 m!6683290))

(assert (=> b!5731496 m!6683290))

(assert (=> b!5731496 m!6683346))

(assert (=> b!5730890 d!1807340))

(declare-fun d!1807342 () Bool)

(assert (=> d!1807342 (= (matchR!7921 lt!2281361 s!2326) (matchRSpec!2839 lt!2281361 s!2326))))

(declare-fun lt!2281653 () Unit!156476)

(assert (=> d!1807342 (= lt!2281653 (choose!43371 lt!2281361 s!2326))))

(assert (=> d!1807342 (validRegex!7472 lt!2281361)))

(assert (=> d!1807342 (= (mainMatchTheorem!2839 lt!2281361 s!2326) lt!2281653)))

(declare-fun bs!1339604 () Bool)

(assert (= bs!1339604 d!1807342))

(assert (=> bs!1339604 m!6682924))

(assert (=> bs!1339604 m!6682898))

(declare-fun m!6683570 () Bool)

(assert (=> bs!1339604 m!6683570))

(assert (=> bs!1339604 m!6683568))

(assert (=> b!5730890 d!1807342))

(declare-fun bs!1339605 () Bool)

(declare-fun d!1807344 () Bool)

(assert (= bs!1339605 (and d!1807344 d!1807316)))

(declare-fun lambda!310225 () Int)

(assert (=> bs!1339605 (= lambda!310225 lambda!310215)))

(declare-fun bs!1339606 () Bool)

(assert (= bs!1339606 (and d!1807344 b!5731261)))

(assert (=> bs!1339606 (not (= lambda!310225 lambda!310212))))

(declare-fun bs!1339607 () Bool)

(assert (= bs!1339607 (and d!1807344 b!5730890)))

(assert (=> bs!1339607 (not (= lambda!310225 lambda!310156))))

(declare-fun bs!1339608 () Bool)

(assert (= bs!1339608 (and d!1807344 b!5731424)))

(assert (=> bs!1339608 (not (= lambda!310225 lambda!310216))))

(declare-fun bs!1339609 () Bool)

(assert (= bs!1339609 (and d!1807344 b!5730909)))

(assert (=> bs!1339609 (= (= lt!2281388 (regOne!31984 r!7292)) (= lambda!310225 lambda!310150))))

(assert (=> bs!1339607 (= lambda!310225 lambda!310155)))

(declare-fun bs!1339610 () Bool)

(assert (= bs!1339610 (and d!1807344 b!5731258)))

(assert (=> bs!1339610 (not (= lambda!310225 lambda!310211))))

(assert (=> bs!1339609 (not (= lambda!310225 lambda!310151))))

(declare-fun bs!1339611 () Bool)

(assert (= bs!1339611 (and d!1807344 b!5731427)))

(assert (=> bs!1339611 (not (= lambda!310225 lambda!310217))))

(assert (=> d!1807344 true))

(assert (=> d!1807344 true))

(assert (=> d!1807344 true))

(declare-fun lambda!310226 () Int)

(assert (=> bs!1339605 (not (= lambda!310226 lambda!310215))))

(assert (=> bs!1339606 (= (= lt!2281388 (regOne!31984 r!7292)) (= lambda!310226 lambda!310212))))

(declare-fun bs!1339612 () Bool)

(assert (= bs!1339612 d!1807344))

(assert (=> bs!1339612 (not (= lambda!310226 lambda!310225))))

(assert (=> bs!1339607 (= lambda!310226 lambda!310156)))

(assert (=> bs!1339608 (not (= lambda!310226 lambda!310216))))

(assert (=> bs!1339609 (not (= lambda!310226 lambda!310150))))

(assert (=> bs!1339607 (not (= lambda!310226 lambda!310155))))

(assert (=> bs!1339610 (not (= lambda!310226 lambda!310211))))

(assert (=> bs!1339609 (= (= lt!2281388 (regOne!31984 r!7292)) (= lambda!310226 lambda!310151))))

(assert (=> bs!1339611 (= (and (= lt!2281388 (regOne!31984 lt!2281361)) (= (regTwo!31984 r!7292) (regTwo!31984 lt!2281361))) (= lambda!310226 lambda!310217))))

(assert (=> d!1807344 true))

(assert (=> d!1807344 true))

(assert (=> d!1807344 true))

(assert (=> d!1807344 (= (Exists!2836 lambda!310225) (Exists!2836 lambda!310226))))

(declare-fun lt!2281656 () Unit!156476)

(declare-fun choose!43384 (Regex!15736 Regex!15736 List!63509) Unit!156476)

(assert (=> d!1807344 (= lt!2281656 (choose!43384 lt!2281388 (regTwo!31984 r!7292) s!2326))))

(assert (=> d!1807344 (validRegex!7472 lt!2281388)))

(assert (=> d!1807344 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1465 lt!2281388 (regTwo!31984 r!7292) s!2326) lt!2281656)))

(declare-fun m!6683572 () Bool)

(assert (=> bs!1339612 m!6683572))

(declare-fun m!6683574 () Bool)

(assert (=> bs!1339612 m!6683574))

(declare-fun m!6683576 () Bool)

(assert (=> bs!1339612 m!6683576))

(assert (=> bs!1339612 m!6683454))

(assert (=> b!5730890 d!1807344))

(declare-fun bs!1339613 () Bool)

(declare-fun b!5731518 () Bool)

(assert (= bs!1339613 (and b!5731518 d!1807316)))

(declare-fun lambda!310227 () Int)

(assert (=> bs!1339613 (not (= lambda!310227 lambda!310215))))

(declare-fun bs!1339614 () Bool)

(assert (= bs!1339614 (and b!5731518 b!5731261)))

(assert (=> bs!1339614 (not (= lambda!310227 lambda!310212))))

(declare-fun bs!1339615 () Bool)

(assert (= bs!1339615 (and b!5731518 d!1807344)))

(assert (=> bs!1339615 (not (= lambda!310227 lambda!310225))))

(declare-fun bs!1339616 () Bool)

(assert (= bs!1339616 (and b!5731518 b!5730890)))

(assert (=> bs!1339616 (not (= lambda!310227 lambda!310156))))

(declare-fun bs!1339617 () Bool)

(assert (= bs!1339617 (and b!5731518 b!5731424)))

(assert (=> bs!1339617 (= (and (= (reg!16065 lt!2281344) (reg!16065 lt!2281361)) (= lt!2281344 lt!2281361)) (= lambda!310227 lambda!310216))))

(assert (=> bs!1339615 (not (= lambda!310227 lambda!310226))))

(declare-fun bs!1339618 () Bool)

(assert (= bs!1339618 (and b!5731518 b!5730909)))

(assert (=> bs!1339618 (not (= lambda!310227 lambda!310150))))

(assert (=> bs!1339616 (not (= lambda!310227 lambda!310155))))

(declare-fun bs!1339619 () Bool)

(assert (= bs!1339619 (and b!5731518 b!5731258)))

(assert (=> bs!1339619 (= (and (= (reg!16065 lt!2281344) (reg!16065 r!7292)) (= lt!2281344 r!7292)) (= lambda!310227 lambda!310211))))

(assert (=> bs!1339618 (not (= lambda!310227 lambda!310151))))

(declare-fun bs!1339620 () Bool)

(assert (= bs!1339620 (and b!5731518 b!5731427)))

(assert (=> bs!1339620 (not (= lambda!310227 lambda!310217))))

(assert (=> b!5731518 true))

(assert (=> b!5731518 true))

(declare-fun bs!1339621 () Bool)

(declare-fun b!5731521 () Bool)

(assert (= bs!1339621 (and b!5731521 d!1807316)))

(declare-fun lambda!310228 () Int)

(assert (=> bs!1339621 (not (= lambda!310228 lambda!310215))))

(declare-fun bs!1339622 () Bool)

(assert (= bs!1339622 (and b!5731521 b!5731261)))

(assert (=> bs!1339622 (= (and (= (regOne!31984 lt!2281344) (regOne!31984 r!7292)) (= (regTwo!31984 lt!2281344) (regTwo!31984 r!7292))) (= lambda!310228 lambda!310212))))

(declare-fun bs!1339623 () Bool)

(assert (= bs!1339623 (and b!5731521 b!5731518)))

(assert (=> bs!1339623 (not (= lambda!310228 lambda!310227))))

(declare-fun bs!1339624 () Bool)

(assert (= bs!1339624 (and b!5731521 d!1807344)))

(assert (=> bs!1339624 (not (= lambda!310228 lambda!310225))))

(declare-fun bs!1339625 () Bool)

(assert (= bs!1339625 (and b!5731521 b!5730890)))

(assert (=> bs!1339625 (= (and (= (regOne!31984 lt!2281344) lt!2281388) (= (regTwo!31984 lt!2281344) (regTwo!31984 r!7292))) (= lambda!310228 lambda!310156))))

(declare-fun bs!1339626 () Bool)

(assert (= bs!1339626 (and b!5731521 b!5731424)))

(assert (=> bs!1339626 (not (= lambda!310228 lambda!310216))))

(assert (=> bs!1339624 (= (and (= (regOne!31984 lt!2281344) lt!2281388) (= (regTwo!31984 lt!2281344) (regTwo!31984 r!7292))) (= lambda!310228 lambda!310226))))

(declare-fun bs!1339627 () Bool)

(assert (= bs!1339627 (and b!5731521 b!5730909)))

(assert (=> bs!1339627 (not (= lambda!310228 lambda!310150))))

(assert (=> bs!1339625 (not (= lambda!310228 lambda!310155))))

(declare-fun bs!1339628 () Bool)

(assert (= bs!1339628 (and b!5731521 b!5731258)))

(assert (=> bs!1339628 (not (= lambda!310228 lambda!310211))))

(assert (=> bs!1339627 (= (and (= (regOne!31984 lt!2281344) (regOne!31984 r!7292)) (= (regTwo!31984 lt!2281344) (regTwo!31984 r!7292))) (= lambda!310228 lambda!310151))))

(declare-fun bs!1339629 () Bool)

(assert (= bs!1339629 (and b!5731521 b!5731427)))

(assert (=> bs!1339629 (= (and (= (regOne!31984 lt!2281344) (regOne!31984 lt!2281361)) (= (regTwo!31984 lt!2281344) (regTwo!31984 lt!2281361))) (= lambda!310228 lambda!310217))))

(assert (=> b!5731521 true))

(assert (=> b!5731521 true))

(declare-fun b!5731511 () Bool)

(declare-fun e!3523819 () Bool)

(assert (=> b!5731511 (= e!3523819 (matchRSpec!2839 (regTwo!31985 lt!2281344) s!2326))))

(declare-fun bm!438162 () Bool)

(declare-fun c!1011295 () Bool)

(declare-fun call!438168 () Bool)

(assert (=> bm!438162 (= call!438168 (Exists!2836 (ite c!1011295 lambda!310227 lambda!310228)))))

(declare-fun bm!438163 () Bool)

(declare-fun call!438167 () Bool)

(assert (=> bm!438163 (= call!438167 (isEmpty!35264 s!2326))))

(declare-fun b!5731512 () Bool)

(declare-fun e!3523815 () Bool)

(declare-fun e!3523817 () Bool)

(assert (=> b!5731512 (= e!3523815 e!3523817)))

(assert (=> b!5731512 (= c!1011295 (is-Star!15736 lt!2281344))))

(declare-fun b!5731513 () Bool)

(declare-fun e!3523821 () Bool)

(assert (=> b!5731513 (= e!3523821 (= s!2326 (Cons!63385 (c!1011160 lt!2281344) Nil!63385)))))

(declare-fun b!5731514 () Bool)

(declare-fun e!3523818 () Bool)

(assert (=> b!5731514 (= e!3523818 call!438167)))

(declare-fun b!5731515 () Bool)

(declare-fun e!3523816 () Bool)

(assert (=> b!5731515 (= e!3523818 e!3523816)))

(declare-fun res!2420073 () Bool)

(assert (=> b!5731515 (= res!2420073 (not (is-EmptyLang!15736 lt!2281344)))))

(assert (=> b!5731515 (=> (not res!2420073) (not e!3523816))))

(declare-fun b!5731516 () Bool)

(declare-fun c!1011296 () Bool)

(assert (=> b!5731516 (= c!1011296 (is-Union!15736 lt!2281344))))

(assert (=> b!5731516 (= e!3523821 e!3523815)))

(declare-fun e!3523820 () Bool)

(assert (=> b!5731518 (= e!3523820 call!438168)))

(declare-fun b!5731519 () Bool)

(declare-fun res!2420075 () Bool)

(assert (=> b!5731519 (=> res!2420075 e!3523820)))

(assert (=> b!5731519 (= res!2420075 call!438167)))

(assert (=> b!5731519 (= e!3523817 e!3523820)))

(declare-fun b!5731520 () Bool)

(declare-fun c!1011298 () Bool)

(assert (=> b!5731520 (= c!1011298 (is-ElementMatch!15736 lt!2281344))))

(assert (=> b!5731520 (= e!3523816 e!3523821)))

(assert (=> b!5731521 (= e!3523817 call!438168)))

(declare-fun d!1807346 () Bool)

(declare-fun c!1011297 () Bool)

(assert (=> d!1807346 (= c!1011297 (is-EmptyExpr!15736 lt!2281344))))

(assert (=> d!1807346 (= (matchRSpec!2839 lt!2281344 s!2326) e!3523818)))

(declare-fun b!5731517 () Bool)

(assert (=> b!5731517 (= e!3523815 e!3523819)))

(declare-fun res!2420074 () Bool)

(assert (=> b!5731517 (= res!2420074 (matchRSpec!2839 (regOne!31985 lt!2281344) s!2326))))

(assert (=> b!5731517 (=> res!2420074 e!3523819)))

(assert (= (and d!1807346 c!1011297) b!5731514))

(assert (= (and d!1807346 (not c!1011297)) b!5731515))

(assert (= (and b!5731515 res!2420073) b!5731520))

(assert (= (and b!5731520 c!1011298) b!5731513))

(assert (= (and b!5731520 (not c!1011298)) b!5731516))

(assert (= (and b!5731516 c!1011296) b!5731517))

(assert (= (and b!5731516 (not c!1011296)) b!5731512))

(assert (= (and b!5731517 (not res!2420074)) b!5731511))

(assert (= (and b!5731512 c!1011295) b!5731519))

(assert (= (and b!5731512 (not c!1011295)) b!5731521))

(assert (= (and b!5731519 (not res!2420075)) b!5731518))

(assert (= (or b!5731518 b!5731521) bm!438162))

(assert (= (or b!5731514 b!5731519) bm!438163))

(declare-fun m!6683578 () Bool)

(assert (=> b!5731511 m!6683578))

(declare-fun m!6683580 () Bool)

(assert (=> bm!438162 m!6683580))

(assert (=> bm!438163 m!6683282))

(declare-fun m!6683582 () Bool)

(assert (=> b!5731517 m!6683582))

(assert (=> b!5730911 d!1807346))

(declare-fun b!5731522 () Bool)

(declare-fun e!3523823 () Bool)

(declare-fun lt!2281657 () Bool)

(assert (=> b!5731522 (= e!3523823 (not lt!2281657))))

(declare-fun b!5731523 () Bool)

(declare-fun res!2420079 () Bool)

(declare-fun e!3523824 () Bool)

(assert (=> b!5731523 (=> res!2420079 e!3523824)))

(declare-fun e!3523826 () Bool)

(assert (=> b!5731523 (= res!2420079 e!3523826)))

(declare-fun res!2420083 () Bool)

(assert (=> b!5731523 (=> (not res!2420083) (not e!3523826))))

(assert (=> b!5731523 (= res!2420083 lt!2281657)))

(declare-fun b!5731524 () Bool)

(declare-fun res!2420076 () Bool)

(assert (=> b!5731524 (=> (not res!2420076) (not e!3523826))))

(assert (=> b!5731524 (= res!2420076 (isEmpty!35264 (tail!11227 s!2326)))))

(declare-fun b!5731525 () Bool)

(declare-fun res!2420081 () Bool)

(assert (=> b!5731525 (=> res!2420081 e!3523824)))

(assert (=> b!5731525 (= res!2420081 (not (is-ElementMatch!15736 lt!2281344)))))

(assert (=> b!5731525 (= e!3523823 e!3523824)))

(declare-fun b!5731526 () Bool)

(declare-fun e!3523825 () Bool)

(assert (=> b!5731526 (= e!3523825 e!3523823)))

(declare-fun c!1011299 () Bool)

(assert (=> b!5731526 (= c!1011299 (is-EmptyLang!15736 lt!2281344))))

(declare-fun b!5731527 () Bool)

(declare-fun e!3523827 () Bool)

(declare-fun e!3523822 () Bool)

(assert (=> b!5731527 (= e!3523827 e!3523822)))

(declare-fun res!2420080 () Bool)

(assert (=> b!5731527 (=> res!2420080 e!3523822)))

(declare-fun call!438169 () Bool)

(assert (=> b!5731527 (= res!2420080 call!438169)))

(declare-fun b!5731528 () Bool)

(assert (=> b!5731528 (= e!3523826 (= (head!12132 s!2326) (c!1011160 lt!2281344)))))

(declare-fun b!5731529 () Bool)

(declare-fun res!2420077 () Bool)

(assert (=> b!5731529 (=> res!2420077 e!3523822)))

(assert (=> b!5731529 (= res!2420077 (not (isEmpty!35264 (tail!11227 s!2326))))))

(declare-fun b!5731530 () Bool)

(declare-fun e!3523828 () Bool)

(assert (=> b!5731530 (= e!3523828 (matchR!7921 (derivativeStep!4529 lt!2281344 (head!12132 s!2326)) (tail!11227 s!2326)))))

(declare-fun b!5731531 () Bool)

(assert (=> b!5731531 (= e!3523825 (= lt!2281657 call!438169))))

(declare-fun b!5731532 () Bool)

(declare-fun res!2420082 () Bool)

(assert (=> b!5731532 (=> (not res!2420082) (not e!3523826))))

(assert (=> b!5731532 (= res!2420082 (not call!438169))))

(declare-fun b!5731533 () Bool)

(assert (=> b!5731533 (= e!3523822 (not (= (head!12132 s!2326) (c!1011160 lt!2281344))))))

(declare-fun d!1807348 () Bool)

(assert (=> d!1807348 e!3523825))

(declare-fun c!1011300 () Bool)

(assert (=> d!1807348 (= c!1011300 (is-EmptyExpr!15736 lt!2281344))))

(assert (=> d!1807348 (= lt!2281657 e!3523828)))

(declare-fun c!1011301 () Bool)

(assert (=> d!1807348 (= c!1011301 (isEmpty!35264 s!2326))))

(assert (=> d!1807348 (validRegex!7472 lt!2281344)))

(assert (=> d!1807348 (= (matchR!7921 lt!2281344 s!2326) lt!2281657)))

(declare-fun bm!438164 () Bool)

(assert (=> bm!438164 (= call!438169 (isEmpty!35264 s!2326))))

(declare-fun b!5731534 () Bool)

(assert (=> b!5731534 (= e!3523828 (nullable!5768 lt!2281344))))

(declare-fun b!5731535 () Bool)

(assert (=> b!5731535 (= e!3523824 e!3523827)))

(declare-fun res!2420078 () Bool)

(assert (=> b!5731535 (=> (not res!2420078) (not e!3523827))))

(assert (=> b!5731535 (= res!2420078 (not lt!2281657))))

(assert (= (and d!1807348 c!1011301) b!5731534))

(assert (= (and d!1807348 (not c!1011301)) b!5731530))

(assert (= (and d!1807348 c!1011300) b!5731531))

(assert (= (and d!1807348 (not c!1011300)) b!5731526))

(assert (= (and b!5731526 c!1011299) b!5731522))

(assert (= (and b!5731526 (not c!1011299)) b!5731525))

(assert (= (and b!5731525 (not res!2420081)) b!5731523))

(assert (= (and b!5731523 res!2420083) b!5731532))

(assert (= (and b!5731532 res!2420082) b!5731524))

(assert (= (and b!5731524 res!2420076) b!5731528))

(assert (= (and b!5731523 (not res!2420079)) b!5731535))

(assert (= (and b!5731535 res!2420078) b!5731527))

(assert (= (and b!5731527 (not res!2420080)) b!5731529))

(assert (= (and b!5731529 (not res!2420077)) b!5731533))

(assert (= (or b!5731531 b!5731527 b!5731532) bm!438164))

(assert (=> b!5731534 m!6683510))

(assert (=> bm!438164 m!6683282))

(assert (=> b!5731530 m!6683286))

(assert (=> b!5731530 m!6683286))

(declare-fun m!6683584 () Bool)

(assert (=> b!5731530 m!6683584))

(assert (=> b!5731530 m!6683290))

(assert (=> b!5731530 m!6683584))

(assert (=> b!5731530 m!6683290))

(declare-fun m!6683586 () Bool)

(assert (=> b!5731530 m!6683586))

(assert (=> b!5731528 m!6683286))

(assert (=> b!5731533 m!6683286))

(assert (=> d!1807348 m!6683282))

(assert (=> d!1807348 m!6683516))

(assert (=> b!5731524 m!6683290))

(assert (=> b!5731524 m!6683290))

(assert (=> b!5731524 m!6683346))

(assert (=> b!5731529 m!6683290))

(assert (=> b!5731529 m!6683290))

(assert (=> b!5731529 m!6683346))

(assert (=> b!5730911 d!1807348))

(declare-fun d!1807350 () Bool)

(assert (=> d!1807350 (= (matchR!7921 lt!2281344 s!2326) (matchRSpec!2839 lt!2281344 s!2326))))

(declare-fun lt!2281658 () Unit!156476)

(assert (=> d!1807350 (= lt!2281658 (choose!43371 lt!2281344 s!2326))))

(assert (=> d!1807350 (validRegex!7472 lt!2281344)))

(assert (=> d!1807350 (= (mainMatchTheorem!2839 lt!2281344 s!2326) lt!2281658)))

(declare-fun bs!1339630 () Bool)

(assert (= bs!1339630 d!1807350))

(assert (=> bs!1339630 m!6682854))

(assert (=> bs!1339630 m!6682852))

(declare-fun m!6683588 () Bool)

(assert (=> bs!1339630 m!6683588))

(assert (=> bs!1339630 m!6683516))

(assert (=> b!5730911 d!1807350))

(declare-fun d!1807352 () Bool)

(assert (=> d!1807352 (= (isEmpty!35259 (t!376836 zl!343)) (is-Nil!63384 (t!376836 zl!343)))))

(assert (=> b!5730910 d!1807352))

(declare-fun b!5731554 () Bool)

(declare-fun e!3523846 () Bool)

(declare-fun call!438176 () Bool)

(assert (=> b!5731554 (= e!3523846 call!438176)))

(declare-fun b!5731555 () Bool)

(declare-fun e!3523845 () Bool)

(assert (=> b!5731555 (= e!3523845 e!3523846)))

(declare-fun res!2420094 () Bool)

(assert (=> b!5731555 (= res!2420094 (not (nullable!5768 (reg!16065 r!7292))))))

(assert (=> b!5731555 (=> (not res!2420094) (not e!3523846))))

(declare-fun d!1807354 () Bool)

(declare-fun res!2420097 () Bool)

(declare-fun e!3523844 () Bool)

(assert (=> d!1807354 (=> res!2420097 e!3523844)))

(assert (=> d!1807354 (= res!2420097 (is-ElementMatch!15736 r!7292))))

(assert (=> d!1807354 (= (validRegex!7472 r!7292) e!3523844)))

(declare-fun b!5731556 () Bool)

(declare-fun e!3523849 () Bool)

(declare-fun e!3523848 () Bool)

(assert (=> b!5731556 (= e!3523849 e!3523848)))

(declare-fun res!2420096 () Bool)

(assert (=> b!5731556 (=> (not res!2420096) (not e!3523848))))

(declare-fun call!438178 () Bool)

(assert (=> b!5731556 (= res!2420096 call!438178)))

(declare-fun bm!438171 () Bool)

(declare-fun call!438177 () Bool)

(assert (=> bm!438171 (= call!438177 call!438176)))

(declare-fun b!5731557 () Bool)

(assert (=> b!5731557 (= e!3523848 call!438177)))

(declare-fun b!5731558 () Bool)

(declare-fun res!2420098 () Bool)

(declare-fun e!3523847 () Bool)

(assert (=> b!5731558 (=> (not res!2420098) (not e!3523847))))

(assert (=> b!5731558 (= res!2420098 call!438178)))

(declare-fun e!3523843 () Bool)

(assert (=> b!5731558 (= e!3523843 e!3523847)))

(declare-fun b!5731559 () Bool)

(assert (=> b!5731559 (= e!3523847 call!438177)))

(declare-fun bm!438172 () Bool)

(declare-fun c!1011307 () Bool)

(assert (=> bm!438172 (= call!438178 (validRegex!7472 (ite c!1011307 (regOne!31985 r!7292) (regOne!31984 r!7292))))))

(declare-fun b!5731560 () Bool)

(assert (=> b!5731560 (= e!3523845 e!3523843)))

(assert (=> b!5731560 (= c!1011307 (is-Union!15736 r!7292))))

(declare-fun c!1011306 () Bool)

(declare-fun bm!438173 () Bool)

(assert (=> bm!438173 (= call!438176 (validRegex!7472 (ite c!1011306 (reg!16065 r!7292) (ite c!1011307 (regTwo!31985 r!7292) (regTwo!31984 r!7292)))))))

(declare-fun b!5731561 () Bool)

(assert (=> b!5731561 (= e!3523844 e!3523845)))

(assert (=> b!5731561 (= c!1011306 (is-Star!15736 r!7292))))

(declare-fun b!5731562 () Bool)

(declare-fun res!2420095 () Bool)

(assert (=> b!5731562 (=> res!2420095 e!3523849)))

(assert (=> b!5731562 (= res!2420095 (not (is-Concat!24581 r!7292)))))

(assert (=> b!5731562 (= e!3523843 e!3523849)))

(assert (= (and d!1807354 (not res!2420097)) b!5731561))

(assert (= (and b!5731561 c!1011306) b!5731555))

(assert (= (and b!5731561 (not c!1011306)) b!5731560))

(assert (= (and b!5731555 res!2420094) b!5731554))

(assert (= (and b!5731560 c!1011307) b!5731558))

(assert (= (and b!5731560 (not c!1011307)) b!5731562))

(assert (= (and b!5731558 res!2420098) b!5731559))

(assert (= (and b!5731562 (not res!2420095)) b!5731556))

(assert (= (and b!5731556 res!2420096) b!5731557))

(assert (= (or b!5731559 b!5731557) bm!438171))

(assert (= (or b!5731558 b!5731556) bm!438172))

(assert (= (or b!5731554 bm!438171) bm!438173))

(declare-fun m!6683590 () Bool)

(assert (=> b!5731555 m!6683590))

(declare-fun m!6683592 () Bool)

(assert (=> bm!438172 m!6683592))

(declare-fun m!6683594 () Bool)

(assert (=> bm!438173 m!6683594))

(assert (=> start!589782 d!1807354))

(declare-fun d!1807356 () Bool)

(declare-fun c!1011308 () Bool)

(assert (=> d!1807356 (= c!1011308 (isEmpty!35264 s!2326))))

(declare-fun e!3523850 () Bool)

(assert (=> d!1807356 (= (matchZipper!1874 z!1189 s!2326) e!3523850)))

(declare-fun b!5731563 () Bool)

(assert (=> b!5731563 (= e!3523850 (nullableZipper!1676 z!1189))))

(declare-fun b!5731564 () Bool)

(assert (=> b!5731564 (= e!3523850 (matchZipper!1874 (derivationStepZipper!1819 z!1189 (head!12132 s!2326)) (tail!11227 s!2326)))))

(assert (= (and d!1807356 c!1011308) b!5731563))

(assert (= (and d!1807356 (not c!1011308)) b!5731564))

(assert (=> d!1807356 m!6683282))

(declare-fun m!6683596 () Bool)

(assert (=> b!5731563 m!6683596))

(assert (=> b!5731564 m!6683286))

(assert (=> b!5731564 m!6683286))

(declare-fun m!6683598 () Bool)

(assert (=> b!5731564 m!6683598))

(assert (=> b!5731564 m!6683290))

(assert (=> b!5731564 m!6683598))

(assert (=> b!5731564 m!6683290))

(declare-fun m!6683600 () Bool)

(assert (=> b!5731564 m!6683600))

(assert (=> b!5730889 d!1807356))

(declare-fun b!5731565 () Bool)

(declare-fun e!3523853 () Option!15745)

(assert (=> b!5731565 (= e!3523853 None!15744)))

(declare-fun b!5731566 () Bool)

(declare-fun e!3523854 () Bool)

(declare-fun lt!2281659 () Option!15745)

(assert (=> b!5731566 (= e!3523854 (not (isDefined!12448 lt!2281659)))))

(declare-fun b!5731567 () Bool)

(declare-fun e!3523852 () Option!15745)

(assert (=> b!5731567 (= e!3523852 (Some!15744 (tuple2!65667 Nil!63385 s!2326)))))

(declare-fun b!5731568 () Bool)

(assert (=> b!5731568 (= e!3523852 e!3523853)))

(declare-fun c!1011310 () Bool)

(assert (=> b!5731568 (= c!1011310 (is-Nil!63385 s!2326))))

(declare-fun b!5731569 () Bool)

(declare-fun e!3523855 () Bool)

(assert (=> b!5731569 (= e!3523855 (= (++!13945 (_1!36136 (get!21860 lt!2281659)) (_2!36136 (get!21860 lt!2281659))) s!2326))))

(declare-fun d!1807358 () Bool)

(assert (=> d!1807358 e!3523854))

(declare-fun res!2420100 () Bool)

(assert (=> d!1807358 (=> res!2420100 e!3523854)))

(assert (=> d!1807358 (= res!2420100 e!3523855)))

(declare-fun res!2420103 () Bool)

(assert (=> d!1807358 (=> (not res!2420103) (not e!3523855))))

(assert (=> d!1807358 (= res!2420103 (isDefined!12448 lt!2281659))))

(assert (=> d!1807358 (= lt!2281659 e!3523852)))

(declare-fun c!1011309 () Bool)

(declare-fun e!3523851 () Bool)

(assert (=> d!1807358 (= c!1011309 e!3523851)))

(declare-fun res!2420101 () Bool)

(assert (=> d!1807358 (=> (not res!2420101) (not e!3523851))))

(assert (=> d!1807358 (= res!2420101 (matchR!7921 (regOne!31984 r!7292) Nil!63385))))

(assert (=> d!1807358 (validRegex!7472 (regOne!31984 r!7292))))

(assert (=> d!1807358 (= (findConcatSeparation!2159 (regOne!31984 r!7292) (regTwo!31984 r!7292) Nil!63385 s!2326 s!2326) lt!2281659)))

(declare-fun b!5731570 () Bool)

(declare-fun lt!2281661 () Unit!156476)

(declare-fun lt!2281660 () Unit!156476)

(assert (=> b!5731570 (= lt!2281661 lt!2281660)))

(assert (=> b!5731570 (= (++!13945 (++!13945 Nil!63385 (Cons!63385 (h!69833 s!2326) Nil!63385)) (t!376837 s!2326)) s!2326)))

(assert (=> b!5731570 (= lt!2281660 (lemmaMoveElementToOtherListKeepsConcatEq!2079 Nil!63385 (h!69833 s!2326) (t!376837 s!2326) s!2326))))

(assert (=> b!5731570 (= e!3523853 (findConcatSeparation!2159 (regOne!31984 r!7292) (regTwo!31984 r!7292) (++!13945 Nil!63385 (Cons!63385 (h!69833 s!2326) Nil!63385)) (t!376837 s!2326) s!2326))))

(declare-fun b!5731571 () Bool)

(declare-fun res!2420099 () Bool)

(assert (=> b!5731571 (=> (not res!2420099) (not e!3523855))))

(assert (=> b!5731571 (= res!2420099 (matchR!7921 (regTwo!31984 r!7292) (_2!36136 (get!21860 lt!2281659))))))

(declare-fun b!5731572 () Bool)

(assert (=> b!5731572 (= e!3523851 (matchR!7921 (regTwo!31984 r!7292) s!2326))))

(declare-fun b!5731573 () Bool)

(declare-fun res!2420102 () Bool)

(assert (=> b!5731573 (=> (not res!2420102) (not e!3523855))))

(assert (=> b!5731573 (= res!2420102 (matchR!7921 (regOne!31984 r!7292) (_1!36136 (get!21860 lt!2281659))))))

(assert (= (and d!1807358 res!2420101) b!5731572))

(assert (= (and d!1807358 c!1011309) b!5731567))

(assert (= (and d!1807358 (not c!1011309)) b!5731568))

(assert (= (and b!5731568 c!1011310) b!5731565))

(assert (= (and b!5731568 (not c!1011310)) b!5731570))

(assert (= (and d!1807358 res!2420103) b!5731573))

(assert (= (and b!5731573 res!2420102) b!5731571))

(assert (= (and b!5731571 res!2420099) b!5731569))

(assert (= (and d!1807358 (not res!2420100)) b!5731566))

(declare-fun m!6683602 () Bool)

(assert (=> b!5731569 m!6683602))

(declare-fun m!6683604 () Bool)

(assert (=> b!5731569 m!6683604))

(declare-fun m!6683606 () Bool)

(assert (=> d!1807358 m!6683606))

(declare-fun m!6683608 () Bool)

(assert (=> d!1807358 m!6683608))

(declare-fun m!6683610 () Bool)

(assert (=> d!1807358 m!6683610))

(assert (=> b!5731572 m!6683550))

(assert (=> b!5731570 m!6683190))

(assert (=> b!5731570 m!6683190))

(assert (=> b!5731570 m!6683192))

(assert (=> b!5731570 m!6683194))

(assert (=> b!5731570 m!6683190))

(declare-fun m!6683612 () Bool)

(assert (=> b!5731570 m!6683612))

(assert (=> b!5731571 m!6683602))

(declare-fun m!6683614 () Bool)

(assert (=> b!5731571 m!6683614))

(assert (=> b!5731573 m!6683602))

(declare-fun m!6683616 () Bool)

(assert (=> b!5731573 m!6683616))

(assert (=> b!5731566 m!6683606))

(assert (=> b!5730909 d!1807358))

(declare-fun d!1807360 () Bool)

(assert (=> d!1807360 (= (Exists!2836 lambda!310150) (choose!43373 lambda!310150))))

(declare-fun bs!1339631 () Bool)

(assert (= bs!1339631 d!1807360))

(declare-fun m!6683618 () Bool)

(assert (=> bs!1339631 m!6683618))

(assert (=> b!5730909 d!1807360))

(declare-fun d!1807362 () Bool)

(assert (=> d!1807362 (= (Exists!2836 lambda!310151) (choose!43373 lambda!310151))))

(declare-fun bs!1339632 () Bool)

(assert (= bs!1339632 d!1807362))

(declare-fun m!6683620 () Bool)

(assert (=> bs!1339632 m!6683620))

(assert (=> b!5730909 d!1807362))

(declare-fun bs!1339633 () Bool)

(declare-fun d!1807364 () Bool)

(assert (= bs!1339633 (and d!1807364 d!1807316)))

(declare-fun lambda!310229 () Int)

(assert (=> bs!1339633 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310229 lambda!310215))))

(declare-fun bs!1339634 () Bool)

(assert (= bs!1339634 (and d!1807364 b!5731521)))

(assert (=> bs!1339634 (not (= lambda!310229 lambda!310228))))

(declare-fun bs!1339635 () Bool)

(assert (= bs!1339635 (and d!1807364 b!5731261)))

(assert (=> bs!1339635 (not (= lambda!310229 lambda!310212))))

(declare-fun bs!1339636 () Bool)

(assert (= bs!1339636 (and d!1807364 b!5731518)))

(assert (=> bs!1339636 (not (= lambda!310229 lambda!310227))))

(declare-fun bs!1339637 () Bool)

(assert (= bs!1339637 (and d!1807364 d!1807344)))

(assert (=> bs!1339637 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310229 lambda!310225))))

(declare-fun bs!1339638 () Bool)

(assert (= bs!1339638 (and d!1807364 b!5730890)))

(assert (=> bs!1339638 (not (= lambda!310229 lambda!310156))))

(declare-fun bs!1339639 () Bool)

(assert (= bs!1339639 (and d!1807364 b!5731424)))

(assert (=> bs!1339639 (not (= lambda!310229 lambda!310216))))

(assert (=> bs!1339637 (not (= lambda!310229 lambda!310226))))

(declare-fun bs!1339640 () Bool)

(assert (= bs!1339640 (and d!1807364 b!5730909)))

(assert (=> bs!1339640 (= lambda!310229 lambda!310150)))

(assert (=> bs!1339638 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310229 lambda!310155))))

(declare-fun bs!1339641 () Bool)

(assert (= bs!1339641 (and d!1807364 b!5731258)))

(assert (=> bs!1339641 (not (= lambda!310229 lambda!310211))))

(assert (=> bs!1339640 (not (= lambda!310229 lambda!310151))))

(declare-fun bs!1339642 () Bool)

(assert (= bs!1339642 (and d!1807364 b!5731427)))

(assert (=> bs!1339642 (not (= lambda!310229 lambda!310217))))

(assert (=> d!1807364 true))

(assert (=> d!1807364 true))

(assert (=> d!1807364 true))

(assert (=> d!1807364 (= (isDefined!12448 (findConcatSeparation!2159 (regOne!31984 r!7292) (regTwo!31984 r!7292) Nil!63385 s!2326 s!2326)) (Exists!2836 lambda!310229))))

(declare-fun lt!2281662 () Unit!156476)

(assert (=> d!1807364 (= lt!2281662 (choose!43374 (regOne!31984 r!7292) (regTwo!31984 r!7292) s!2326))))

(assert (=> d!1807364 (validRegex!7472 (regOne!31984 r!7292))))

(assert (=> d!1807364 (= (lemmaFindConcatSeparationEquivalentToExists!1923 (regOne!31984 r!7292) (regTwo!31984 r!7292) s!2326) lt!2281662)))

(declare-fun bs!1339643 () Bool)

(assert (= bs!1339643 d!1807364))

(declare-fun m!6683622 () Bool)

(assert (=> bs!1339643 m!6683622))

(assert (=> bs!1339643 m!6682800))

(assert (=> bs!1339643 m!6683610))

(declare-fun m!6683624 () Bool)

(assert (=> bs!1339643 m!6683624))

(assert (=> bs!1339643 m!6682800))

(assert (=> bs!1339643 m!6682802))

(assert (=> b!5730909 d!1807364))

(declare-fun bs!1339644 () Bool)

(declare-fun d!1807366 () Bool)

(assert (= bs!1339644 (and d!1807366 d!1807316)))

(declare-fun lambda!310230 () Int)

(assert (=> bs!1339644 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310230 lambda!310215))))

(declare-fun bs!1339645 () Bool)

(assert (= bs!1339645 (and d!1807366 b!5731521)))

(assert (=> bs!1339645 (not (= lambda!310230 lambda!310228))))

(declare-fun bs!1339646 () Bool)

(assert (= bs!1339646 (and d!1807366 b!5731261)))

(assert (=> bs!1339646 (not (= lambda!310230 lambda!310212))))

(declare-fun bs!1339647 () Bool)

(assert (= bs!1339647 (and d!1807366 b!5731518)))

(assert (=> bs!1339647 (not (= lambda!310230 lambda!310227))))

(declare-fun bs!1339648 () Bool)

(assert (= bs!1339648 (and d!1807366 d!1807344)))

(assert (=> bs!1339648 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310230 lambda!310225))))

(declare-fun bs!1339649 () Bool)

(assert (= bs!1339649 (and d!1807366 b!5730890)))

(assert (=> bs!1339649 (not (= lambda!310230 lambda!310156))))

(declare-fun bs!1339650 () Bool)

(assert (= bs!1339650 (and d!1807366 b!5731424)))

(assert (=> bs!1339650 (not (= lambda!310230 lambda!310216))))

(assert (=> bs!1339648 (not (= lambda!310230 lambda!310226))))

(declare-fun bs!1339651 () Bool)

(assert (= bs!1339651 (and d!1807366 d!1807364)))

(assert (=> bs!1339651 (= lambda!310230 lambda!310229)))

(declare-fun bs!1339652 () Bool)

(assert (= bs!1339652 (and d!1807366 b!5730909)))

(assert (=> bs!1339652 (= lambda!310230 lambda!310150)))

(assert (=> bs!1339649 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310230 lambda!310155))))

(declare-fun bs!1339653 () Bool)

(assert (= bs!1339653 (and d!1807366 b!5731258)))

(assert (=> bs!1339653 (not (= lambda!310230 lambda!310211))))

(assert (=> bs!1339652 (not (= lambda!310230 lambda!310151))))

(declare-fun bs!1339654 () Bool)

(assert (= bs!1339654 (and d!1807366 b!5731427)))

(assert (=> bs!1339654 (not (= lambda!310230 lambda!310217))))

(assert (=> d!1807366 true))

(assert (=> d!1807366 true))

(assert (=> d!1807366 true))

(declare-fun lambda!310231 () Int)

(assert (=> bs!1339644 (not (= lambda!310231 lambda!310215))))

(assert (=> bs!1339645 (= (and (= (regOne!31984 r!7292) (regOne!31984 lt!2281344)) (= (regTwo!31984 r!7292) (regTwo!31984 lt!2281344))) (= lambda!310231 lambda!310228))))

(assert (=> bs!1339646 (= lambda!310231 lambda!310212)))

(assert (=> bs!1339647 (not (= lambda!310231 lambda!310227))))

(assert (=> bs!1339648 (not (= lambda!310231 lambda!310225))))

(assert (=> bs!1339649 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310231 lambda!310156))))

(assert (=> bs!1339650 (not (= lambda!310231 lambda!310216))))

(assert (=> bs!1339648 (= (= (regOne!31984 r!7292) lt!2281388) (= lambda!310231 lambda!310226))))

(assert (=> bs!1339651 (not (= lambda!310231 lambda!310229))))

(declare-fun bs!1339655 () Bool)

(assert (= bs!1339655 d!1807366))

(assert (=> bs!1339655 (not (= lambda!310231 lambda!310230))))

(assert (=> bs!1339652 (not (= lambda!310231 lambda!310150))))

(assert (=> bs!1339649 (not (= lambda!310231 lambda!310155))))

(assert (=> bs!1339653 (not (= lambda!310231 lambda!310211))))

(assert (=> bs!1339652 (= lambda!310231 lambda!310151)))

(assert (=> bs!1339654 (= (and (= (regOne!31984 r!7292) (regOne!31984 lt!2281361)) (= (regTwo!31984 r!7292) (regTwo!31984 lt!2281361))) (= lambda!310231 lambda!310217))))

(assert (=> d!1807366 true))

(assert (=> d!1807366 true))

(assert (=> d!1807366 true))

(assert (=> d!1807366 (= (Exists!2836 lambda!310230) (Exists!2836 lambda!310231))))

(declare-fun lt!2281663 () Unit!156476)

(assert (=> d!1807366 (= lt!2281663 (choose!43384 (regOne!31984 r!7292) (regTwo!31984 r!7292) s!2326))))

(assert (=> d!1807366 (validRegex!7472 (regOne!31984 r!7292))))

(assert (=> d!1807366 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1465 (regOne!31984 r!7292) (regTwo!31984 r!7292) s!2326) lt!2281663)))

(declare-fun m!6683626 () Bool)

(assert (=> bs!1339655 m!6683626))

(declare-fun m!6683628 () Bool)

(assert (=> bs!1339655 m!6683628))

(declare-fun m!6683630 () Bool)

(assert (=> bs!1339655 m!6683630))

(assert (=> bs!1339655 m!6683610))

(assert (=> b!5730909 d!1807366))

(declare-fun d!1807368 () Bool)

(assert (=> d!1807368 (= (isDefined!12448 (findConcatSeparation!2159 (regOne!31984 r!7292) (regTwo!31984 r!7292) Nil!63385 s!2326 s!2326)) (not (isEmpty!35263 (findConcatSeparation!2159 (regOne!31984 r!7292) (regTwo!31984 r!7292) Nil!63385 s!2326 s!2326))))))

(declare-fun bs!1339656 () Bool)

(assert (= bs!1339656 d!1807368))

(assert (=> bs!1339656 m!6682800))

(declare-fun m!6683632 () Bool)

(assert (=> bs!1339656 m!6683632))

(assert (=> b!5730909 d!1807368))

(declare-fun bs!1339657 () Bool)

(declare-fun d!1807370 () Bool)

(assert (= bs!1339657 (and d!1807370 d!1807230)))

(declare-fun lambda!310234 () Int)

(assert (=> bs!1339657 (= lambda!310234 lambda!310199)))

(declare-fun bs!1339658 () Bool)

(assert (= bs!1339658 (and d!1807370 d!1807330)))

(assert (=> bs!1339658 (= lambda!310234 lambda!310220)))

(declare-fun bs!1339659 () Bool)

(assert (= bs!1339659 (and d!1807370 d!1807258)))

(assert (=> bs!1339659 (= lambda!310234 lambda!310206)))

(declare-fun bs!1339660 () Bool)

(assert (= bs!1339660 (and d!1807370 b!5730896)))

(assert (=> bs!1339660 (= lambda!310234 lambda!310154)))

(declare-fun bs!1339661 () Bool)

(assert (= bs!1339661 (and d!1807370 d!1807240)))

(assert (=> bs!1339661 (= lambda!310234 lambda!310202)))

(declare-fun b!5731594 () Bool)

(declare-fun e!3523873 () Regex!15736)

(assert (=> b!5731594 (= e!3523873 EmptyLang!15736)))

(declare-fun b!5731595 () Bool)

(declare-fun e!3523870 () Bool)

(assert (=> b!5731595 (= e!3523870 (isEmpty!35260 (t!376835 (unfocusZipperList!1164 zl!343))))))

(declare-fun b!5731596 () Bool)

(declare-fun e!3523868 () Bool)

(declare-fun lt!2281666 () Regex!15736)

(declare-fun isUnion!675 (Regex!15736) Bool)

(assert (=> b!5731596 (= e!3523868 (isUnion!675 lt!2281666))))

(declare-fun b!5731597 () Bool)

(declare-fun e!3523869 () Bool)

(assert (=> b!5731597 (= e!3523869 e!3523868)))

(declare-fun c!1011319 () Bool)

(assert (=> b!5731597 (= c!1011319 (isEmpty!35260 (tail!11228 (unfocusZipperList!1164 zl!343))))))

(declare-fun b!5731598 () Bool)

(assert (=> b!5731598 (= e!3523873 (Union!15736 (h!69831 (unfocusZipperList!1164 zl!343)) (generalisedUnion!1599 (t!376835 (unfocusZipperList!1164 zl!343)))))))

(declare-fun b!5731599 () Bool)

(declare-fun isEmptyLang!1245 (Regex!15736) Bool)

(assert (=> b!5731599 (= e!3523869 (isEmptyLang!1245 lt!2281666))))

(declare-fun b!5731600 () Bool)

(assert (=> b!5731600 (= e!3523868 (= lt!2281666 (head!12133 (unfocusZipperList!1164 zl!343))))))

(declare-fun b!5731601 () Bool)

(declare-fun e!3523872 () Bool)

(assert (=> b!5731601 (= e!3523872 e!3523869)))

(declare-fun c!1011321 () Bool)

(assert (=> b!5731601 (= c!1011321 (isEmpty!35260 (unfocusZipperList!1164 zl!343)))))

(declare-fun b!5731602 () Bool)

(declare-fun e!3523871 () Regex!15736)

(assert (=> b!5731602 (= e!3523871 e!3523873)))

(declare-fun c!1011322 () Bool)

(assert (=> b!5731602 (= c!1011322 (is-Cons!63383 (unfocusZipperList!1164 zl!343)))))

(assert (=> d!1807370 e!3523872))

(declare-fun res!2420108 () Bool)

(assert (=> d!1807370 (=> (not res!2420108) (not e!3523872))))

(assert (=> d!1807370 (= res!2420108 (validRegex!7472 lt!2281666))))

(assert (=> d!1807370 (= lt!2281666 e!3523871)))

(declare-fun c!1011320 () Bool)

(assert (=> d!1807370 (= c!1011320 e!3523870)))

(declare-fun res!2420109 () Bool)

(assert (=> d!1807370 (=> (not res!2420109) (not e!3523870))))

(assert (=> d!1807370 (= res!2420109 (is-Cons!63383 (unfocusZipperList!1164 zl!343)))))

(assert (=> d!1807370 (forall!14861 (unfocusZipperList!1164 zl!343) lambda!310234)))

(assert (=> d!1807370 (= (generalisedUnion!1599 (unfocusZipperList!1164 zl!343)) lt!2281666)))

(declare-fun b!5731603 () Bool)

(assert (=> b!5731603 (= e!3523871 (h!69831 (unfocusZipperList!1164 zl!343)))))

(assert (= (and d!1807370 res!2420109) b!5731595))

(assert (= (and d!1807370 c!1011320) b!5731603))

(assert (= (and d!1807370 (not c!1011320)) b!5731602))

(assert (= (and b!5731602 c!1011322) b!5731598))

(assert (= (and b!5731602 (not c!1011322)) b!5731594))

(assert (= (and d!1807370 res!2420108) b!5731601))

(assert (= (and b!5731601 c!1011321) b!5731599))

(assert (= (and b!5731601 (not c!1011321)) b!5731597))

(assert (= (and b!5731597 c!1011319) b!5731600))

(assert (= (and b!5731597 (not c!1011319)) b!5731596))

(declare-fun m!6683634 () Bool)

(assert (=> b!5731599 m!6683634))

(assert (=> b!5731601 m!6682810))

(declare-fun m!6683636 () Bool)

(assert (=> b!5731601 m!6683636))

(assert (=> b!5731600 m!6682810))

(declare-fun m!6683638 () Bool)

(assert (=> b!5731600 m!6683638))

(declare-fun m!6683640 () Bool)

(assert (=> b!5731595 m!6683640))

(declare-fun m!6683642 () Bool)

(assert (=> b!5731596 m!6683642))

(declare-fun m!6683644 () Bool)

(assert (=> d!1807370 m!6683644))

(assert (=> d!1807370 m!6682810))

(declare-fun m!6683646 () Bool)

(assert (=> d!1807370 m!6683646))

(declare-fun m!6683648 () Bool)

(assert (=> b!5731598 m!6683648))

(assert (=> b!5731597 m!6682810))

(declare-fun m!6683650 () Bool)

(assert (=> b!5731597 m!6683650))

(assert (=> b!5731597 m!6683650))

(declare-fun m!6683652 () Bool)

(assert (=> b!5731597 m!6683652))

(assert (=> b!5730888 d!1807370))

(declare-fun bs!1339662 () Bool)

(declare-fun d!1807372 () Bool)

(assert (= bs!1339662 (and d!1807372 d!1807370)))

(declare-fun lambda!310237 () Int)

(assert (=> bs!1339662 (= lambda!310237 lambda!310234)))

(declare-fun bs!1339663 () Bool)

(assert (= bs!1339663 (and d!1807372 d!1807230)))

(assert (=> bs!1339663 (= lambda!310237 lambda!310199)))

(declare-fun bs!1339664 () Bool)

(assert (= bs!1339664 (and d!1807372 d!1807330)))

(assert (=> bs!1339664 (= lambda!310237 lambda!310220)))

(declare-fun bs!1339665 () Bool)

(assert (= bs!1339665 (and d!1807372 d!1807258)))

(assert (=> bs!1339665 (= lambda!310237 lambda!310206)))

(declare-fun bs!1339666 () Bool)

(assert (= bs!1339666 (and d!1807372 b!5730896)))

(assert (=> bs!1339666 (= lambda!310237 lambda!310154)))

(declare-fun bs!1339667 () Bool)

(assert (= bs!1339667 (and d!1807372 d!1807240)))

(assert (=> bs!1339667 (= lambda!310237 lambda!310202)))

(declare-fun lt!2281669 () List!63507)

(assert (=> d!1807372 (forall!14861 lt!2281669 lambda!310237)))

(declare-fun e!3523876 () List!63507)

(assert (=> d!1807372 (= lt!2281669 e!3523876)))

(declare-fun c!1011325 () Bool)

(assert (=> d!1807372 (= c!1011325 (is-Cons!63384 zl!343))))

(assert (=> d!1807372 (= (unfocusZipperList!1164 zl!343) lt!2281669)))

(declare-fun b!5731608 () Bool)

(assert (=> b!5731608 (= e!3523876 (Cons!63383 (generalisedConcat!1351 (exprs!5620 (h!69832 zl!343))) (unfocusZipperList!1164 (t!376836 zl!343))))))

(declare-fun b!5731609 () Bool)

(assert (=> b!5731609 (= e!3523876 Nil!63383)))

(assert (= (and d!1807372 c!1011325) b!5731608))

(assert (= (and d!1807372 (not c!1011325)) b!5731609))

(declare-fun m!6683654 () Bool)

(assert (=> d!1807372 m!6683654))

(assert (=> b!5731608 m!6682826))

(declare-fun m!6683656 () Bool)

(assert (=> b!5731608 m!6683656))

(assert (=> b!5730888 d!1807372))

(declare-fun b!5731622 () Bool)

(declare-fun e!3523879 () Bool)

(declare-fun tp!1586300 () Bool)

(assert (=> b!5731622 (= e!3523879 tp!1586300)))

(declare-fun b!5731620 () Bool)

(assert (=> b!5731620 (= e!3523879 tp_is_empty!40725)))

(declare-fun b!5731621 () Bool)

(declare-fun tp!1586298 () Bool)

(declare-fun tp!1586299 () Bool)

(assert (=> b!5731621 (= e!3523879 (and tp!1586298 tp!1586299))))

(declare-fun b!5731623 () Bool)

(declare-fun tp!1586297 () Bool)

(declare-fun tp!1586301 () Bool)

(assert (=> b!5731623 (= e!3523879 (and tp!1586297 tp!1586301))))

(assert (=> b!5730882 (= tp!1586249 e!3523879)))

(assert (= (and b!5730882 (is-ElementMatch!15736 (regOne!31985 r!7292))) b!5731620))

(assert (= (and b!5730882 (is-Concat!24581 (regOne!31985 r!7292))) b!5731621))

(assert (= (and b!5730882 (is-Star!15736 (regOne!31985 r!7292))) b!5731622))

(assert (= (and b!5730882 (is-Union!15736 (regOne!31985 r!7292))) b!5731623))

(declare-fun b!5731626 () Bool)

(declare-fun e!3523880 () Bool)

(declare-fun tp!1586305 () Bool)

(assert (=> b!5731626 (= e!3523880 tp!1586305)))

(declare-fun b!5731624 () Bool)

(assert (=> b!5731624 (= e!3523880 tp_is_empty!40725)))

(declare-fun b!5731625 () Bool)

(declare-fun tp!1586303 () Bool)

(declare-fun tp!1586304 () Bool)

(assert (=> b!5731625 (= e!3523880 (and tp!1586303 tp!1586304))))

(declare-fun b!5731627 () Bool)

(declare-fun tp!1586302 () Bool)

(declare-fun tp!1586306 () Bool)

(assert (=> b!5731627 (= e!3523880 (and tp!1586302 tp!1586306))))

(assert (=> b!5730882 (= tp!1586248 e!3523880)))

(assert (= (and b!5730882 (is-ElementMatch!15736 (regTwo!31985 r!7292))) b!5731624))

(assert (= (and b!5730882 (is-Concat!24581 (regTwo!31985 r!7292))) b!5731625))

(assert (= (and b!5730882 (is-Star!15736 (regTwo!31985 r!7292))) b!5731626))

(assert (= (and b!5730882 (is-Union!15736 (regTwo!31985 r!7292))) b!5731627))

(declare-fun b!5731630 () Bool)

(declare-fun e!3523881 () Bool)

(declare-fun tp!1586310 () Bool)

(assert (=> b!5731630 (= e!3523881 tp!1586310)))

(declare-fun b!5731628 () Bool)

(assert (=> b!5731628 (= e!3523881 tp_is_empty!40725)))

(declare-fun b!5731629 () Bool)

(declare-fun tp!1586308 () Bool)

(declare-fun tp!1586309 () Bool)

(assert (=> b!5731629 (= e!3523881 (and tp!1586308 tp!1586309))))

(declare-fun b!5731631 () Bool)

(declare-fun tp!1586307 () Bool)

(declare-fun tp!1586311 () Bool)

(assert (=> b!5731631 (= e!3523881 (and tp!1586307 tp!1586311))))

(assert (=> b!5730902 (= tp!1586253 e!3523881)))

(assert (= (and b!5730902 (is-ElementMatch!15736 (reg!16065 r!7292))) b!5731628))

(assert (= (and b!5730902 (is-Concat!24581 (reg!16065 r!7292))) b!5731629))

(assert (= (and b!5730902 (is-Star!15736 (reg!16065 r!7292))) b!5731630))

(assert (= (and b!5730902 (is-Union!15736 (reg!16065 r!7292))) b!5731631))

(declare-fun b!5731639 () Bool)

(declare-fun e!3523887 () Bool)

(declare-fun tp!1586316 () Bool)

(assert (=> b!5731639 (= e!3523887 tp!1586316)))

(declare-fun e!3523886 () Bool)

(declare-fun tp!1586317 () Bool)

(declare-fun b!5731638 () Bool)

(assert (=> b!5731638 (= e!3523886 (and (inv!82588 (h!69832 (t!376836 zl!343))) e!3523887 tp!1586317))))

(assert (=> b!5730906 (= tp!1586251 e!3523886)))

(assert (= b!5731638 b!5731639))

(assert (= (and b!5730906 (is-Cons!63384 (t!376836 zl!343))) b!5731638))

(declare-fun m!6683658 () Bool)

(assert (=> b!5731638 m!6683658))

(declare-fun b!5731642 () Bool)

(declare-fun e!3523888 () Bool)

(declare-fun tp!1586321 () Bool)

(assert (=> b!5731642 (= e!3523888 tp!1586321)))

(declare-fun b!5731640 () Bool)

(assert (=> b!5731640 (= e!3523888 tp_is_empty!40725)))

(declare-fun b!5731641 () Bool)

(declare-fun tp!1586319 () Bool)

(declare-fun tp!1586320 () Bool)

(assert (=> b!5731641 (= e!3523888 (and tp!1586319 tp!1586320))))

(declare-fun b!5731643 () Bool)

(declare-fun tp!1586318 () Bool)

(declare-fun tp!1586322 () Bool)

(assert (=> b!5731643 (= e!3523888 (and tp!1586318 tp!1586322))))

(assert (=> b!5730905 (= tp!1586256 e!3523888)))

(assert (= (and b!5730905 (is-ElementMatch!15736 (regOne!31984 r!7292))) b!5731640))

(assert (= (and b!5730905 (is-Concat!24581 (regOne!31984 r!7292))) b!5731641))

(assert (= (and b!5730905 (is-Star!15736 (regOne!31984 r!7292))) b!5731642))

(assert (= (and b!5730905 (is-Union!15736 (regOne!31984 r!7292))) b!5731643))

(declare-fun b!5731646 () Bool)

(declare-fun e!3523889 () Bool)

(declare-fun tp!1586326 () Bool)

(assert (=> b!5731646 (= e!3523889 tp!1586326)))

(declare-fun b!5731644 () Bool)

(assert (=> b!5731644 (= e!3523889 tp_is_empty!40725)))

(declare-fun b!5731645 () Bool)

(declare-fun tp!1586324 () Bool)

(declare-fun tp!1586325 () Bool)

(assert (=> b!5731645 (= e!3523889 (and tp!1586324 tp!1586325))))

(declare-fun b!5731647 () Bool)

(declare-fun tp!1586323 () Bool)

(declare-fun tp!1586327 () Bool)

(assert (=> b!5731647 (= e!3523889 (and tp!1586323 tp!1586327))))

(assert (=> b!5730905 (= tp!1586254 e!3523889)))

(assert (= (and b!5730905 (is-ElementMatch!15736 (regTwo!31984 r!7292))) b!5731644))

(assert (= (and b!5730905 (is-Concat!24581 (regTwo!31984 r!7292))) b!5731645))

(assert (= (and b!5730905 (is-Star!15736 (regTwo!31984 r!7292))) b!5731646))

(assert (= (and b!5730905 (is-Union!15736 (regTwo!31984 r!7292))) b!5731647))

(declare-fun b!5731652 () Bool)

(declare-fun e!3523892 () Bool)

(declare-fun tp!1586330 () Bool)

(assert (=> b!5731652 (= e!3523892 (and tp_is_empty!40725 tp!1586330))))

(assert (=> b!5730894 (= tp!1586255 e!3523892)))

(assert (= (and b!5730894 (is-Cons!63385 (t!376837 s!2326))) b!5731652))

(declare-fun b!5731657 () Bool)

(declare-fun e!3523895 () Bool)

(declare-fun tp!1586335 () Bool)

(declare-fun tp!1586336 () Bool)

(assert (=> b!5731657 (= e!3523895 (and tp!1586335 tp!1586336))))

(assert (=> b!5730884 (= tp!1586247 e!3523895)))

(assert (= (and b!5730884 (is-Cons!63383 (exprs!5620 (h!69832 zl!343)))) b!5731657))

(declare-fun condSetEmpty!38458 () Bool)

(assert (=> setNonEmpty!38452 (= condSetEmpty!38458 (= setRest!38452 (as set.empty (Set Context!10240))))))

(declare-fun setRes!38458 () Bool)

(assert (=> setNonEmpty!38452 (= tp!1586250 setRes!38458)))

(declare-fun setIsEmpty!38458 () Bool)

(assert (=> setIsEmpty!38458 setRes!38458))

(declare-fun setNonEmpty!38458 () Bool)

(declare-fun tp!1586342 () Bool)

(declare-fun setElem!38458 () Context!10240)

(declare-fun e!3523898 () Bool)

(assert (=> setNonEmpty!38458 (= setRes!38458 (and tp!1586342 (inv!82588 setElem!38458) e!3523898))))

(declare-fun setRest!38458 () (Set Context!10240))

(assert (=> setNonEmpty!38458 (= setRest!38452 (set.union (set.insert setElem!38458 (as set.empty (Set Context!10240))) setRest!38458))))

(declare-fun b!5731662 () Bool)

(declare-fun tp!1586341 () Bool)

(assert (=> b!5731662 (= e!3523898 tp!1586341)))

(assert (= (and setNonEmpty!38452 condSetEmpty!38458) setIsEmpty!38458))

(assert (= (and setNonEmpty!38452 (not condSetEmpty!38458)) setNonEmpty!38458))

(assert (= setNonEmpty!38458 b!5731662))

(declare-fun m!6683660 () Bool)

(assert (=> setNonEmpty!38458 m!6683660))

(declare-fun b!5731663 () Bool)

(declare-fun e!3523899 () Bool)

(declare-fun tp!1586343 () Bool)

(declare-fun tp!1586344 () Bool)

(assert (=> b!5731663 (= e!3523899 (and tp!1586343 tp!1586344))))

(assert (=> b!5730918 (= tp!1586252 e!3523899)))

(assert (= (and b!5730918 (is-Cons!63383 (exprs!5620 setElem!38452))) b!5731663))

(declare-fun b_lambda!216537 () Bool)

(assert (= b_lambda!216527 (or b!5730896 b_lambda!216537)))

(declare-fun bs!1339668 () Bool)

(declare-fun d!1807374 () Bool)

(assert (= bs!1339668 (and d!1807374 b!5730896)))

(declare-fun lt!2281670 () Unit!156476)

(assert (=> bs!1339668 (= lt!2281670 (lemmaConcatPreservesForall!305 (exprs!5620 lt!2281342) lt!2281387 lambda!310154))))

(assert (=> bs!1339668 (= (dynLambda!24801 lambda!310153 lt!2281342) (Context!10241 (++!13944 (exprs!5620 lt!2281342) lt!2281387)))))

(declare-fun m!6683662 () Bool)

(assert (=> bs!1339668 m!6683662))

(declare-fun m!6683664 () Bool)

(assert (=> bs!1339668 m!6683664))

(assert (=> d!1807208 d!1807374))

(declare-fun b_lambda!216539 () Bool)

(assert (= b_lambda!216535 (or b!5730892 b_lambda!216539)))

(declare-fun bs!1339669 () Bool)

(declare-fun d!1807376 () Bool)

(assert (= bs!1339669 (and d!1807376 b!5730892)))

(assert (=> bs!1339669 (= (dynLambda!24802 lambda!310152 (h!69832 zl!343)) (derivationStepZipperUp!1004 (h!69832 zl!343) (h!69833 s!2326)))))

(assert (=> bs!1339669 m!6682834))

(assert (=> d!1807290 d!1807376))

(declare-fun b_lambda!216541 () Bool)

(assert (= b_lambda!216533 (or b!5730892 b_lambda!216541)))

(declare-fun bs!1339670 () Bool)

(declare-fun d!1807378 () Bool)

(assert (= bs!1339670 (and d!1807378 b!5730892)))

(assert (=> bs!1339670 (= (dynLambda!24802 lambda!310152 lt!2281342) (derivationStepZipperUp!1004 lt!2281342 (h!69833 s!2326)))))

(assert (=> bs!1339670 m!6682936))

(assert (=> d!1807286 d!1807378))

(declare-fun b_lambda!216543 () Bool)

(assert (= b_lambda!216531 (or b!5730892 b_lambda!216543)))

(declare-fun bs!1339671 () Bool)

(declare-fun d!1807380 () Bool)

(assert (= bs!1339671 (and d!1807380 b!5730892)))

(assert (=> bs!1339671 (= (dynLambda!24802 lambda!310152 lt!2281359) (derivationStepZipperUp!1004 lt!2281359 (h!69833 s!2326)))))

(assert (=> bs!1339671 m!6682940))

(assert (=> d!1807274 d!1807380))

(declare-fun b_lambda!216545 () Bool)

(assert (= b_lambda!216529 (or b!5730892 b_lambda!216545)))

(declare-fun bs!1339672 () Bool)

(declare-fun d!1807382 () Bool)

(assert (= bs!1339672 (and d!1807382 b!5730892)))

(assert (=> bs!1339672 (= (dynLambda!24802 lambda!310152 lt!2281352) (derivationStepZipperUp!1004 lt!2281352 (h!69833 s!2326)))))

(assert (=> bs!1339672 m!6682876))

(assert (=> d!1807254 d!1807382))

(push 1)

(assert (not b!5731309))

(assert (not bm!438158))

(assert (not b!5731405))

(assert (not b!5731388))

(assert (not b!5731631))

(assert (not b!5731646))

(assert (not b!5731423))

(assert (not d!1807242))

(assert (not b!5731566))

(assert (not b!5731141))

(assert (not b!5731189))

(assert (not b!5731153))

(assert (not d!1807236))

(assert (not b!5731302))

(assert (not bm!438162))

(assert (not setNonEmpty!38458))

(assert (not b!5731113))

(assert (not d!1807208))

(assert (not b!5731638))

(assert (not d!1807338))

(assert (not b!5731491))

(assert (not b!5731414))

(assert (not b_lambda!216539))

(assert (not d!1807332))

(assert (not b!5731416))

(assert (not b!5731596))

(assert (not b!5731485))

(assert (not bm!438151))

(assert (not d!1807358))

(assert (not d!1807372))

(assert (not b!5731213))

(assert (not bm!438155))

(assert (not b!5731391))

(assert (not b!5731191))

(assert (not d!1807284))

(assert (not b!5731257))

(assert (not bm!438127))

(assert (not b!5731392))

(assert (not b!5731530))

(assert (not d!1807336))

(assert (not d!1807316))

(assert (not b!5731353))

(assert (not b!5731555))

(assert (not d!1807276))

(assert (not bm!438159))

(assert (not b!5731487))

(assert (not b!5731136))

(assert (not bs!1339672))

(assert (not d!1807290))

(assert (not b!5731595))

(assert (not bm!438156))

(assert (not b!5731198))

(assert (not b!5731501))

(assert (not d!1807366))

(assert (not b!5731192))

(assert (not b!5731529))

(assert (not b!5731641))

(assert (not b!5731642))

(assert (not b!5731152))

(assert (not b!5731663))

(assert (not b!5731570))

(assert (not b!5731439))

(assert (not b!5731134))

(assert (not d!1807340))

(assert (not bm!438122))

(assert (not d!1807344))

(assert (not b!5731415))

(assert (not d!1807362))

(assert (not bm!438172))

(assert (not d!1807222))

(assert (not b!5731564))

(assert (not b!5731296))

(assert (not b!5731197))

(assert (not b!5731625))

(assert (not b!5731524))

(assert (not b!5731500))

(assert (not bm!438164))

(assert (not b!5731160))

(assert (not b!5731436))

(assert (not b!5731488))

(assert (not b!5731306))

(assert (not bm!438146))

(assert (not d!1807360))

(assert (not b!5731194))

(assert (not b!5731528))

(assert (not b!5731496))

(assert (not b!5731627))

(assert (not b!5731323))

(assert (not b!5731159))

(assert (not d!1807218))

(assert (not b_lambda!216543))

(assert (not d!1807314))

(assert (not d!1807342))

(assert (not b!5731484))

(assert (not b!5731402))

(assert (not b!5731434))

(assert (not bm!438125))

(assert (not b!5731630))

(assert (not b!5731183))

(assert (not b!5731330))

(assert (not b!5731382))

(assert (not b!5731140))

(assert (not b!5731647))

(assert (not b!5731135))

(assert (not d!1807212))

(assert (not b!5731301))

(assert (not b_lambda!216537))

(assert (not d!1807350))

(assert (not b!5731298))

(assert (not bs!1339669))

(assert (not b!5731444))

(assert (not b!5731196))

(assert (not b!5731572))

(assert (not b!5731481))

(assert (not b!5731573))

(assert (not b!5731533))

(assert (not b!5731652))

(assert (not d!1807312))

(assert (not d!1807210))

(assert (not d!1807272))

(assert (not b!5731251))

(assert (not b!5731643))

(assert (not b!5731406))

(assert (not bs!1339668))

(assert (not d!1807214))

(assert (not b!5731563))

(assert (not bm!438148))

(assert (not b!5731486))

(assert (not b!5731211))

(assert (not bm!438160))

(assert (not b!5731534))

(assert (not d!1807286))

(assert (not b!5731142))

(assert (not b!5731517))

(assert (not b!5731571))

(assert (not b!5731599))

(assert (not b!5731114))

(assert (not d!1807368))

(assert (not d!1807322))

(assert (not bm!438128))

(assert (not d!1807348))

(assert (not d!1807364))

(assert (not d!1807274))

(assert (not d!1807318))

(assert (not bm!438143))

(assert (not bm!438163))

(assert (not b!5731387))

(assert (not b!5731495))

(assert (not d!1807260))

(assert (not bm!438150))

(assert (not b!5731181))

(assert (not b!5731292))

(assert (not b!5731328))

(assert (not bm!438161))

(assert (not d!1807248))

(assert (not d!1807238))

(assert (not b!5731657))

(assert (not b!5731417))

(assert (not b!5731430))

(assert (not b!5731497))

(assert (not bm!438116))

(assert (not bm!438157))

(assert (not b!5731190))

(assert (not b!5731645))

(assert (not d!1807310))

(assert (not bm!438121))

(assert (not b!5731597))

(assert (not b!5731435))

(assert (not bm!438153))

(assert (not b!5731598))

(assert (not b!5731218))

(assert (not b!5731600))

(assert (not bs!1339670))

(assert (not d!1807334))

(assert (not d!1807266))

(assert (not d!1807256))

(assert (not b!5731629))

(assert (not b!5731449))

(assert (not b!5731369))

(assert (not d!1807292))

(assert (not bm!438173))

(assert (not b_lambda!216541))

(assert (not d!1807268))

(assert (not b!5731368))

(assert (not bm!438144))

(assert (not b!5731621))

(assert (not b!5731440))

(assert (not d!1807246))

(assert (not bm!438126))

(assert (not b!5731366))

(assert (not d!1807370))

(assert (not d!1807234))

(assert (not d!1807244))

(assert (not b!5731622))

(assert (not b!5731310))

(assert (not d!1807216))

(assert (not d!1807330))

(assert (not b!5731297))

(assert (not d!1807254))

(assert (not d!1807230))

(assert (not d!1807270))

(assert (not bm!438129))

(assert (not b!5731461))

(assert (not b!5731400))

(assert (not d!1807220))

(assert (not b!5731662))

(assert (not b!5731188))

(assert tp_is_empty!40725)

(assert (not d!1807304))

(assert (not b!5731307))

(assert (not b!5731639))

(assert (not b!5731313))

(assert (not d!1807282))

(assert (not d!1807326))

(assert (not d!1807308))

(assert (not b!5731601))

(assert (not b!5731569))

(assert (not b!5731450))

(assert (not b!5731511))

(assert (not b!5731315))

(assert (not b!5731453))

(assert (not b!5731454))

(assert (not bs!1339671))

(assert (not d!1807226))

(assert (not b!5731401))

(assert (not b!5731460))

(assert (not b!5731193))

(assert (not d!1807356))

(assert (not b!5731396))

(assert (not d!1807224))

(assert (not b!5731386))

(assert (not b!5731325))

(assert (not b!5731448))

(assert (not b!5731623))

(assert (not d!1807328))

(assert (not d!1807258))

(assert (not b!5731320))

(assert (not b_lambda!216545))

(assert (not b!5731626))

(assert (not d!1807264))

(assert (not b!5731182))

(assert (not b!5731318))

(assert (not b!5731187))

(assert (not d!1807240))

(assert (not b!5731195))

(assert (not b!5731608))

(assert (not d!1807320))

(assert (not d!1807288))

(assert (not b!5731308))

(assert (not d!1807250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

