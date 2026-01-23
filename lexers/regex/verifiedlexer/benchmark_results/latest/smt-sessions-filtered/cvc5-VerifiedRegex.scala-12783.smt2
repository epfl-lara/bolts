; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706990 () Bool)

(assert start!706990)

(declare-fun b!7257853 () Bool)

(assert (=> b!7257853 true))

(declare-fun b!7257852 () Bool)

(assert (=> b!7257852 true))

(declare-fun bs!1908039 () Bool)

(assert (= bs!1908039 (and b!7257852 b!7257853)))

(declare-fun lambda!445679 () Int)

(declare-fun lambda!445677 () Int)

(declare-datatypes ((C!37622 0))(
  ( (C!37623 (val!28759 Int)) )
))
(declare-datatypes ((List!70602 0))(
  ( (Nil!70478) (Cons!70478 (h!76926 C!37622) (t!384666 List!70602)) )
))
(declare-fun s1!1971 () List!70602)

(declare-fun lt!2588670 () List!70602)

(assert (=> bs!1908039 (= (= lt!2588670 (t!384666 s1!1971)) (= lambda!445679 lambda!445677))))

(assert (=> b!7257852 true))

(declare-fun b!7257839 () Bool)

(declare-fun e!4352035 () Bool)

(declare-fun e!4352030 () Bool)

(assert (=> b!7257839 (= e!4352035 e!4352030)))

(declare-fun res!2943067 () Bool)

(assert (=> b!7257839 (=> res!2943067 e!4352030)))

(declare-datatypes ((Regex!18674 0))(
  ( (ElementMatch!18674 (c!1349784 C!37622)) (Concat!27519 (regOne!37860 Regex!18674) (regTwo!37860 Regex!18674)) (EmptyExpr!18674) (Star!18674 (reg!19003 Regex!18674)) (EmptyLang!18674) (Union!18674 (regOne!37861 Regex!18674) (regTwo!37861 Regex!18674)) )
))
(declare-datatypes ((List!70603 0))(
  ( (Nil!70479) (Cons!70479 (h!76927 Regex!18674) (t!384667 List!70603)) )
))
(declare-fun lt!2588649 () List!70603)

(declare-fun isEmpty!40585 (List!70603) Bool)

(assert (=> b!7257839 (= res!2943067 (isEmpty!40585 lt!2588649))))

(declare-datatypes ((Unit!163964 0))(
  ( (Unit!163965) )
))
(declare-fun lt!2588679 () Unit!163964)

(declare-datatypes ((Context!15228 0))(
  ( (Context!15229 (exprs!8114 List!70603)) )
))
(declare-fun ct1!232 () Context!15228)

(declare-fun ct2!328 () Context!15228)

(declare-fun lambda!445676 () Int)

(declare-fun lemmaConcatPreservesForall!1481 (List!70603 List!70603 Int) Unit!163964)

(assert (=> b!7257839 (= lt!2588679 (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun lt!2588668 () (Set Context!15228))

(declare-fun lt!2588656 () Context!15228)

(declare-fun derivationStepZipperUp!2498 (Context!15228 C!37622) (Set Context!15228))

(assert (=> b!7257839 (= lt!2588668 (derivationStepZipperUp!2498 lt!2588656 (h!76926 s1!1971)))))

(declare-fun lt!2588655 () Unit!163964)

(assert (=> b!7257839 (= lt!2588655 (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun lt!2588648 () Context!15228)

(declare-fun lt!2588642 () (Set Context!15228))

(declare-fun derivationStepZipperDown!2668 (Regex!18674 Context!15228 C!37622) (Set Context!15228))

(assert (=> b!7257839 (= lt!2588642 (derivationStepZipperDown!2668 (h!76927 (exprs!8114 ct1!232)) lt!2588648 (h!76926 s1!1971)))))

(declare-fun tail!14372 (List!70603) List!70603)

(assert (=> b!7257839 (= lt!2588648 (Context!15229 (tail!14372 (exprs!8114 ct1!232))))))

(declare-fun b!7257840 () Bool)

(declare-fun e!4352042 () Bool)

(declare-fun tp!2038421 () Bool)

(assert (=> b!7257840 (= e!4352042 tp!2038421)))

(declare-fun b!7257841 () Bool)

(declare-fun e!4352041 () Bool)

(assert (=> b!7257841 (= e!4352041 e!4352035)))

(declare-fun res!2943070 () Bool)

(assert (=> b!7257841 (=> res!2943070 e!4352035)))

(assert (=> b!7257841 (= res!2943070 (isEmpty!40585 (exprs!8114 ct1!232)))))

(declare-fun lt!2588671 () (Set Context!15228))

(assert (=> b!7257841 (= lt!2588671 (derivationStepZipperUp!2498 ct1!232 (h!76926 s1!1971)))))

(declare-fun lt!2588645 () Context!15228)

(declare-fun lt!2588663 () Unit!163964)

(assert (=> b!7257841 (= lt!2588663 (lemmaConcatPreservesForall!1481 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun lt!2588680 () Context!15228)

(declare-fun matchZipper!3584 ((Set Context!15228) List!70602) Bool)

(assert (=> b!7257841 (matchZipper!3584 (set.insert lt!2588680 (as set.empty (Set Context!15228))) lt!2588670)))

(declare-fun s2!1849 () List!70602)

(declare-fun ++!16610 (List!70602 List!70602) List!70602)

(assert (=> b!7257841 (= lt!2588670 (++!16610 (t!384666 s1!1971) s2!1849))))

(declare-fun ++!16611 (List!70603 List!70603) List!70603)

(assert (=> b!7257841 (= lt!2588680 (Context!15229 (++!16611 (exprs!8114 lt!2588645) (exprs!8114 ct2!328))))))

(declare-fun lt!2588675 () Unit!163964)

(assert (=> b!7257841 (= lt!2588675 (lemmaConcatPreservesForall!1481 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun lt!2588660 () Unit!163964)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!419 (Context!15228 Context!15228 List!70602 List!70602) Unit!163964)

(assert (=> b!7257841 (= lt!2588660 (lemmaConcatenateContextMatchesConcatOfStrings!419 lt!2588645 ct2!328 (t!384666 s1!1971) s2!1849))))

(declare-fun lt!2588662 () (Set Context!15228))

(declare-fun getWitness!2249 ((Set Context!15228) Int) Context!15228)

(assert (=> b!7257841 (= lt!2588645 (getWitness!2249 lt!2588662 lambda!445677))))

(declare-fun b!7257842 () Bool)

(declare-fun e!4352038 () Bool)

(declare-fun lt!2588646 () (Set Context!15228))

(declare-fun exists!4426 ((Set Context!15228) Int) Bool)

(assert (=> b!7257842 (= e!4352038 (exists!4426 lt!2588646 lambda!445679))))

(declare-fun b!7257843 () Bool)

(declare-fun e!4352033 () Unit!163964)

(declare-fun Unit!163966 () Unit!163964)

(assert (=> b!7257843 (= e!4352033 Unit!163966)))

(declare-fun lt!2588652 () Unit!163964)

(assert (=> b!7257843 (= lt!2588652 (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun lt!2588672 () (Set Context!15228))

(assert (=> b!7257843 (= lt!2588672 (derivationStepZipperUp!2498 lt!2588648 (h!76926 s1!1971)))))

(declare-fun lt!2588661 () Unit!163964)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1729 ((Set Context!15228) (Set Context!15228) List!70602) Unit!163964)

(assert (=> b!7257843 (= lt!2588661 (lemmaZipperConcatMatchesSameAsBothZippers!1729 lt!2588642 lt!2588672 (t!384666 s1!1971)))))

(declare-fun res!2943072 () Bool)

(assert (=> b!7257843 (= res!2943072 (matchZipper!3584 lt!2588642 (t!384666 s1!1971)))))

(declare-fun e!4352032 () Bool)

(assert (=> b!7257843 (=> res!2943072 e!4352032)))

(assert (=> b!7257843 (= (matchZipper!3584 (set.union lt!2588642 lt!2588672) (t!384666 s1!1971)) e!4352032)))

(declare-fun lt!2588667 () Unit!163964)

(assert (=> b!7257843 (= lt!2588667 (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun lt!2588666 () (Set Context!15228))

(declare-fun lt!2588650 () Context!15228)

(assert (=> b!7257843 (= lt!2588666 (derivationStepZipperUp!2498 lt!2588650 (h!76926 s1!1971)))))

(declare-fun lt!2588678 () Unit!163964)

(declare-fun lt!2588643 () (Set Context!15228))

(assert (=> b!7257843 (= lt!2588678 (lemmaZipperConcatMatchesSameAsBothZippers!1729 lt!2588643 lt!2588666 lt!2588670))))

(declare-fun res!2943071 () Bool)

(assert (=> b!7257843 (= res!2943071 (matchZipper!3584 lt!2588643 lt!2588670))))

(declare-fun e!4352034 () Bool)

(assert (=> b!7257843 (=> res!2943071 e!4352034)))

(assert (=> b!7257843 (= (matchZipper!3584 (set.union lt!2588643 lt!2588666) lt!2588670) e!4352034)))

(declare-fun b!7257844 () Bool)

(declare-fun e!4352037 () Bool)

(declare-fun tp!2038422 () Bool)

(assert (=> b!7257844 (= e!4352037 tp!2038422)))

(declare-fun b!7257845 () Bool)

(declare-fun res!2943069 () Bool)

(declare-fun e!4352043 () Bool)

(assert (=> b!7257845 (=> (not res!2943069) (not e!4352043))))

(assert (=> b!7257845 (= res!2943069 (matchZipper!3584 (set.insert ct2!328 (as set.empty (Set Context!15228))) s2!1849))))

(declare-fun b!7257846 () Bool)

(declare-fun e!4352039 () Bool)

(declare-fun tp_is_empty!46813 () Bool)

(declare-fun tp!2038419 () Bool)

(assert (=> b!7257846 (= e!4352039 (and tp_is_empty!46813 tp!2038419))))

(declare-fun b!7257847 () Bool)

(declare-fun Unit!163967 () Unit!163964)

(assert (=> b!7257847 (= e!4352033 Unit!163967)))

(declare-fun b!7257848 () Bool)

(assert (=> b!7257848 (= e!4352032 (matchZipper!3584 lt!2588672 (t!384666 s1!1971)))))

(declare-fun b!7257849 () Bool)

(declare-fun e!4352036 () Bool)

(assert (=> b!7257849 (= e!4352043 e!4352036)))

(declare-fun res!2943065 () Bool)

(assert (=> b!7257849 (=> (not res!2943065) (not e!4352036))))

(assert (=> b!7257849 (= res!2943065 (and (not (is-Nil!70479 (exprs!8114 ct1!232))) (is-Cons!70478 s1!1971)))))

(declare-fun lt!2588665 () (Set Context!15228))

(assert (=> b!7257849 (= lt!2588665 (set.insert lt!2588656 (as set.empty (Set Context!15228))))))

(assert (=> b!7257849 (= lt!2588656 (Context!15229 lt!2588649))))

(assert (=> b!7257849 (= lt!2588649 (++!16611 (exprs!8114 ct1!232) (exprs!8114 ct2!328)))))

(declare-fun lt!2588676 () Unit!163964)

(assert (=> b!7257849 (= lt!2588676 (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun b!7257851 () Bool)

(declare-fun e!4352031 () Bool)

(assert (=> b!7257851 (= e!4352036 e!4352031)))

(declare-fun res!2943068 () Bool)

(assert (=> b!7257851 (=> (not res!2943068) (not e!4352031))))

(assert (=> b!7257851 (= res!2943068 (matchZipper!3584 lt!2588662 (t!384666 s1!1971)))))

(declare-fun lt!2588653 () (Set Context!15228))

(declare-fun derivationStepZipper!3452 ((Set Context!15228) C!37622) (Set Context!15228))

(assert (=> b!7257851 (= lt!2588662 (derivationStepZipper!3452 lt!2588653 (h!76926 s1!1971)))))

(declare-datatypes ((List!70604 0))(
  ( (Nil!70480) (Cons!70480 (h!76928 Context!15228) (t!384668 List!70604)) )
))
(declare-fun exists!4427 (List!70604 Int) Bool)

(declare-fun toList!11503 ((Set Context!15228)) List!70604)

(assert (=> b!7257852 (= e!4352030 (exists!4427 (toList!11503 lt!2588646) lambda!445679))))

(assert (=> b!7257852 e!4352038))

(declare-fun res!2943064 () Bool)

(assert (=> b!7257852 (=> (not res!2943064) (not e!4352038))))

(assert (=> b!7257852 (= res!2943064 (exists!4426 lt!2588646 lambda!445679))))

(declare-fun lt!2588664 () Unit!163964)

(declare-fun lemmaContainsThenExists!222 ((Set Context!15228) Context!15228 Int) Unit!163964)

(assert (=> b!7257852 (= lt!2588664 (lemmaContainsThenExists!222 lt!2588646 lt!2588680 lambda!445679))))

(declare-fun lt!2588673 () Unit!163964)

(assert (=> b!7257852 (= lt!2588673 (lemmaConcatPreservesForall!1481 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445676))))

(assert (=> b!7257852 (set.member lt!2588680 lt!2588646)))

(declare-fun lt!2588657 () Unit!163964)

(assert (=> b!7257852 (= lt!2588657 (lemmaConcatPreservesForall!1481 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445676))))

(assert (=> b!7257852 (set.member lt!2588680 lt!2588668)))

(declare-fun lt!2588651 () Unit!163964)

(assert (=> b!7257852 (= lt!2588651 (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun lt!2588674 () Unit!163964)

(assert (=> b!7257852 (= lt!2588674 (lemmaConcatPreservesForall!1481 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445676))))

(declare-fun lt!2588654 () Unit!163964)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!29 (Context!15228 Context!15228 Context!15228 C!37622) Unit!163964)

(assert (=> b!7257852 (= lt!2588654 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!29 ct1!232 ct2!328 lt!2588645 (h!76926 s1!1971)))))

(declare-fun tail!14373 (List!70602) List!70602)

(assert (=> b!7257852 (= (tail!14373 (++!16610 s1!1971 s2!1849)) lt!2588670)))

(declare-fun lt!2588669 () Unit!163964)

(assert (=> b!7257852 (= lt!2588669 e!4352033)))

(declare-fun c!1349783 () Bool)

(declare-fun nullable!7934 (Regex!18674) Bool)

(assert (=> b!7257852 (= c!1349783 (nullable!7934 (h!76927 (exprs!8114 ct1!232))))))

(declare-fun lambda!445678 () Int)

(declare-fun flatMap!2839 ((Set Context!15228) Int) (Set Context!15228))

(assert (=> b!7257852 (= (flatMap!2839 lt!2588665 lambda!445678) (derivationStepZipperUp!2498 lt!2588656 (h!76926 s1!1971)))))

(declare-fun lt!2588659 () Unit!163964)

(declare-fun lemmaFlatMapOnSingletonSet!2243 ((Set Context!15228) Context!15228 Int) Unit!163964)

(assert (=> b!7257852 (= lt!2588659 (lemmaFlatMapOnSingletonSet!2243 lt!2588665 lt!2588656 lambda!445678))))

(declare-fun lt!2588644 () Unit!163964)

(assert (=> b!7257852 (= lt!2588644 (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676))))

(assert (=> b!7257852 (= (flatMap!2839 lt!2588653 lambda!445678) (derivationStepZipperUp!2498 ct1!232 (h!76926 s1!1971)))))

(declare-fun lt!2588677 () Unit!163964)

(assert (=> b!7257852 (= lt!2588677 (lemmaFlatMapOnSingletonSet!2243 lt!2588653 ct1!232 lambda!445678))))

(assert (=> b!7257852 (= lt!2588643 (derivationStepZipperDown!2668 (h!76927 (exprs!8114 ct1!232)) lt!2588650 (h!76926 s1!1971)))))

(assert (=> b!7257852 (= lt!2588650 (Context!15229 (tail!14372 lt!2588649)))))

(assert (=> b!7257853 (= e!4352031 (not e!4352041))))

(declare-fun res!2943063 () Bool)

(assert (=> b!7257853 (=> res!2943063 e!4352041)))

(assert (=> b!7257853 (= res!2943063 (not (exists!4426 lt!2588662 lambda!445677)))))

(declare-fun lt!2588658 () List!70604)

(assert (=> b!7257853 (exists!4427 lt!2588658 lambda!445677)))

(declare-fun lt!2588647 () Unit!163964)

(declare-fun lemmaZipperMatchesExistsMatchingContext!777 (List!70604 List!70602) Unit!163964)

(assert (=> b!7257853 (= lt!2588647 (lemmaZipperMatchesExistsMatchingContext!777 lt!2588658 (t!384666 s1!1971)))))

(assert (=> b!7257853 (= lt!2588658 (toList!11503 lt!2588662))))

(assert (=> b!7257853 (= lt!2588646 (derivationStepZipper!3452 lt!2588665 (h!76926 s1!1971)))))

(declare-fun b!7257854 () Bool)

(assert (=> b!7257854 (= e!4352034 (matchZipper!3584 lt!2588666 lt!2588670))))

(declare-fun b!7257850 () Bool)

(declare-fun e!4352040 () Bool)

(declare-fun tp!2038420 () Bool)

(assert (=> b!7257850 (= e!4352040 (and tp_is_empty!46813 tp!2038420))))

(declare-fun res!2943066 () Bool)

(assert (=> start!706990 (=> (not res!2943066) (not e!4352043))))

(assert (=> start!706990 (= res!2943066 (matchZipper!3584 lt!2588653 s1!1971))))

(assert (=> start!706990 (= lt!2588653 (set.insert ct1!232 (as set.empty (Set Context!15228))))))

(assert (=> start!706990 e!4352043))

(declare-fun inv!89696 (Context!15228) Bool)

(assert (=> start!706990 (and (inv!89696 ct1!232) e!4352037)))

(assert (=> start!706990 e!4352039))

(assert (=> start!706990 e!4352040))

(assert (=> start!706990 (and (inv!89696 ct2!328) e!4352042)))

(assert (= (and start!706990 res!2943066) b!7257845))

(assert (= (and b!7257845 res!2943069) b!7257849))

(assert (= (and b!7257849 res!2943065) b!7257851))

(assert (= (and b!7257851 res!2943068) b!7257853))

(assert (= (and b!7257853 (not res!2943063)) b!7257841))

(assert (= (and b!7257841 (not res!2943070)) b!7257839))

(assert (= (and b!7257839 (not res!2943067)) b!7257852))

(assert (= (and b!7257852 c!1349783) b!7257843))

(assert (= (and b!7257852 (not c!1349783)) b!7257847))

(assert (= (and b!7257843 (not res!2943072)) b!7257848))

(assert (= (and b!7257843 (not res!2943071)) b!7257854))

(assert (= (and b!7257852 res!2943064) b!7257842))

(assert (= start!706990 b!7257844))

(assert (= (and start!706990 (is-Cons!70478 s1!1971)) b!7257846))

(assert (= (and start!706990 (is-Cons!70478 s2!1849)) b!7257850))

(assert (= start!706990 b!7257840))

(declare-fun m!7940344 () Bool)

(assert (=> b!7257841 m!7940344))

(assert (=> b!7257841 m!7940344))

(declare-fun m!7940346 () Bool)

(assert (=> b!7257841 m!7940346))

(declare-fun m!7940348 () Bool)

(assert (=> b!7257841 m!7940348))

(declare-fun m!7940350 () Bool)

(assert (=> b!7257841 m!7940350))

(declare-fun m!7940352 () Bool)

(assert (=> b!7257841 m!7940352))

(declare-fun m!7940354 () Bool)

(assert (=> b!7257841 m!7940354))

(declare-fun m!7940356 () Bool)

(assert (=> b!7257841 m!7940356))

(declare-fun m!7940358 () Bool)

(assert (=> b!7257841 m!7940358))

(assert (=> b!7257841 m!7940358))

(declare-fun m!7940360 () Bool)

(assert (=> b!7257841 m!7940360))

(declare-fun m!7940362 () Bool)

(assert (=> b!7257849 m!7940362))

(declare-fun m!7940364 () Bool)

(assert (=> b!7257849 m!7940364))

(declare-fun m!7940366 () Bool)

(assert (=> b!7257849 m!7940366))

(declare-fun m!7940368 () Bool)

(assert (=> b!7257845 m!7940368))

(assert (=> b!7257845 m!7940368))

(declare-fun m!7940370 () Bool)

(assert (=> b!7257845 m!7940370))

(declare-fun m!7940372 () Bool)

(assert (=> b!7257839 m!7940372))

(declare-fun m!7940374 () Bool)

(assert (=> b!7257839 m!7940374))

(declare-fun m!7940376 () Bool)

(assert (=> b!7257839 m!7940376))

(assert (=> b!7257839 m!7940366))

(assert (=> b!7257839 m!7940366))

(declare-fun m!7940378 () Bool)

(assert (=> b!7257839 m!7940378))

(assert (=> b!7257852 m!7940372))

(assert (=> b!7257852 m!7940344))

(declare-fun m!7940380 () Bool)

(assert (=> b!7257852 m!7940380))

(declare-fun m!7940382 () Bool)

(assert (=> b!7257852 m!7940382))

(declare-fun m!7940384 () Bool)

(assert (=> b!7257852 m!7940384))

(declare-fun m!7940386 () Bool)

(assert (=> b!7257852 m!7940386))

(declare-fun m!7940388 () Bool)

(assert (=> b!7257852 m!7940388))

(assert (=> b!7257852 m!7940384))

(declare-fun m!7940390 () Bool)

(assert (=> b!7257852 m!7940390))

(assert (=> b!7257852 m!7940344))

(declare-fun m!7940392 () Bool)

(assert (=> b!7257852 m!7940392))

(assert (=> b!7257852 m!7940366))

(declare-fun m!7940394 () Bool)

(assert (=> b!7257852 m!7940394))

(declare-fun m!7940396 () Bool)

(assert (=> b!7257852 m!7940396))

(assert (=> b!7257852 m!7940366))

(declare-fun m!7940398 () Bool)

(assert (=> b!7257852 m!7940398))

(declare-fun m!7940400 () Bool)

(assert (=> b!7257852 m!7940400))

(declare-fun m!7940402 () Bool)

(assert (=> b!7257852 m!7940402))

(declare-fun m!7940404 () Bool)

(assert (=> b!7257852 m!7940404))

(declare-fun m!7940406 () Bool)

(assert (=> b!7257852 m!7940406))

(assert (=> b!7257852 m!7940388))

(declare-fun m!7940408 () Bool)

(assert (=> b!7257852 m!7940408))

(assert (=> b!7257852 m!7940346))

(assert (=> b!7257852 m!7940344))

(declare-fun m!7940410 () Bool)

(assert (=> b!7257852 m!7940410))

(declare-fun m!7940412 () Bool)

(assert (=> b!7257843 m!7940412))

(declare-fun m!7940414 () Bool)

(assert (=> b!7257843 m!7940414))

(assert (=> b!7257843 m!7940366))

(declare-fun m!7940416 () Bool)

(assert (=> b!7257843 m!7940416))

(assert (=> b!7257843 m!7940366))

(declare-fun m!7940418 () Bool)

(assert (=> b!7257843 m!7940418))

(declare-fun m!7940420 () Bool)

(assert (=> b!7257843 m!7940420))

(declare-fun m!7940422 () Bool)

(assert (=> b!7257843 m!7940422))

(declare-fun m!7940424 () Bool)

(assert (=> b!7257843 m!7940424))

(declare-fun m!7940426 () Bool)

(assert (=> b!7257843 m!7940426))

(declare-fun m!7940428 () Bool)

(assert (=> b!7257853 m!7940428))

(declare-fun m!7940430 () Bool)

(assert (=> b!7257853 m!7940430))

(declare-fun m!7940432 () Bool)

(assert (=> b!7257853 m!7940432))

(declare-fun m!7940434 () Bool)

(assert (=> b!7257853 m!7940434))

(declare-fun m!7940436 () Bool)

(assert (=> b!7257853 m!7940436))

(declare-fun m!7940438 () Bool)

(assert (=> b!7257848 m!7940438))

(assert (=> b!7257842 m!7940380))

(declare-fun m!7940440 () Bool)

(assert (=> b!7257854 m!7940440))

(declare-fun m!7940442 () Bool)

(assert (=> b!7257851 m!7940442))

(declare-fun m!7940444 () Bool)

(assert (=> b!7257851 m!7940444))

(declare-fun m!7940446 () Bool)

(assert (=> start!706990 m!7940446))

(declare-fun m!7940448 () Bool)

(assert (=> start!706990 m!7940448))

(declare-fun m!7940450 () Bool)

(assert (=> start!706990 m!7940450))

(declare-fun m!7940452 () Bool)

(assert (=> start!706990 m!7940452))

(push 1)

(assert (not b!7257842))

(assert (not b!7257844))

(assert (not b!7257850))

(assert (not b!7257851))

(assert (not b!7257841))

(assert (not b!7257846))

(assert (not b!7257843))

(assert (not b!7257848))

(assert (not b!7257849))

(assert (not b!7257845))

(assert (not b!7257853))

(assert (not b!7257852))

(assert (not start!706990))

(assert (not b!7257840))

(assert (not b!7257854))

(assert (not b!7257839))

(assert tp_is_empty!46813)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2257382 () Bool)

(declare-fun c!1349808 () Bool)

(declare-fun isEmpty!40587 (List!70602) Bool)

(assert (=> d!2257382 (= c!1349808 (isEmpty!40587 s2!1849))))

(declare-fun e!4352088 () Bool)

(assert (=> d!2257382 (= (matchZipper!3584 (set.insert ct2!328 (as set.empty (Set Context!15228))) s2!1849) e!4352088)))

(declare-fun b!7257915 () Bool)

(declare-fun nullableZipper!2931 ((Set Context!15228)) Bool)

(assert (=> b!7257915 (= e!4352088 (nullableZipper!2931 (set.insert ct2!328 (as set.empty (Set Context!15228)))))))

(declare-fun b!7257916 () Bool)

(declare-fun head!14928 (List!70602) C!37622)

(assert (=> b!7257916 (= e!4352088 (matchZipper!3584 (derivationStepZipper!3452 (set.insert ct2!328 (as set.empty (Set Context!15228))) (head!14928 s2!1849)) (tail!14373 s2!1849)))))

(assert (= (and d!2257382 c!1349808) b!7257915))

(assert (= (and d!2257382 (not c!1349808)) b!7257916))

(declare-fun m!7940564 () Bool)

(assert (=> d!2257382 m!7940564))

(assert (=> b!7257915 m!7940368))

(declare-fun m!7940566 () Bool)

(assert (=> b!7257915 m!7940566))

(declare-fun m!7940568 () Bool)

(assert (=> b!7257916 m!7940568))

(assert (=> b!7257916 m!7940368))

(assert (=> b!7257916 m!7940568))

(declare-fun m!7940570 () Bool)

(assert (=> b!7257916 m!7940570))

(declare-fun m!7940572 () Bool)

(assert (=> b!7257916 m!7940572))

(assert (=> b!7257916 m!7940570))

(assert (=> b!7257916 m!7940572))

(declare-fun m!7940574 () Bool)

(assert (=> b!7257916 m!7940574))

(assert (=> b!7257845 d!2257382))

(declare-fun d!2257384 () Bool)

(declare-fun c!1349809 () Bool)

(assert (=> d!2257384 (= c!1349809 (isEmpty!40587 s1!1971))))

(declare-fun e!4352089 () Bool)

(assert (=> d!2257384 (= (matchZipper!3584 lt!2588653 s1!1971) e!4352089)))

(declare-fun b!7257917 () Bool)

(assert (=> b!7257917 (= e!4352089 (nullableZipper!2931 lt!2588653))))

(declare-fun b!7257918 () Bool)

(assert (=> b!7257918 (= e!4352089 (matchZipper!3584 (derivationStepZipper!3452 lt!2588653 (head!14928 s1!1971)) (tail!14373 s1!1971)))))

(assert (= (and d!2257384 c!1349809) b!7257917))

(assert (= (and d!2257384 (not c!1349809)) b!7257918))

(declare-fun m!7940576 () Bool)

(assert (=> d!2257384 m!7940576))

(declare-fun m!7940578 () Bool)

(assert (=> b!7257917 m!7940578))

(declare-fun m!7940580 () Bool)

(assert (=> b!7257918 m!7940580))

(assert (=> b!7257918 m!7940580))

(declare-fun m!7940582 () Bool)

(assert (=> b!7257918 m!7940582))

(declare-fun m!7940584 () Bool)

(assert (=> b!7257918 m!7940584))

(assert (=> b!7257918 m!7940582))

(assert (=> b!7257918 m!7940584))

(declare-fun m!7940586 () Bool)

(assert (=> b!7257918 m!7940586))

(assert (=> start!706990 d!2257384))

(declare-fun bs!1908041 () Bool)

(declare-fun d!2257386 () Bool)

(assert (= bs!1908041 (and d!2257386 b!7257849)))

(declare-fun lambda!445726 () Int)

(assert (=> bs!1908041 (= lambda!445726 lambda!445676)))

(declare-fun forall!17527 (List!70603 Int) Bool)

(assert (=> d!2257386 (= (inv!89696 ct1!232) (forall!17527 (exprs!8114 ct1!232) lambda!445726))))

(declare-fun bs!1908042 () Bool)

(assert (= bs!1908042 d!2257386))

(declare-fun m!7940588 () Bool)

(assert (=> bs!1908042 m!7940588))

(assert (=> start!706990 d!2257386))

(declare-fun bs!1908043 () Bool)

(declare-fun d!2257388 () Bool)

(assert (= bs!1908043 (and d!2257388 b!7257849)))

(declare-fun lambda!445727 () Int)

(assert (=> bs!1908043 (= lambda!445727 lambda!445676)))

(declare-fun bs!1908044 () Bool)

(assert (= bs!1908044 (and d!2257388 d!2257386)))

(assert (=> bs!1908044 (= lambda!445727 lambda!445726)))

(assert (=> d!2257388 (= (inv!89696 ct2!328) (forall!17527 (exprs!8114 ct2!328) lambda!445727))))

(declare-fun bs!1908045 () Bool)

(assert (= bs!1908045 d!2257388))

(declare-fun m!7940590 () Bool)

(assert (=> bs!1908045 m!7940590))

(assert (=> start!706990 d!2257388))

(declare-fun d!2257390 () Bool)

(declare-fun c!1349810 () Bool)

(assert (=> d!2257390 (= c!1349810 (isEmpty!40587 (t!384666 s1!1971)))))

(declare-fun e!4352090 () Bool)

(assert (=> d!2257390 (= (matchZipper!3584 lt!2588672 (t!384666 s1!1971)) e!4352090)))

(declare-fun b!7257919 () Bool)

(assert (=> b!7257919 (= e!4352090 (nullableZipper!2931 lt!2588672))))

(declare-fun b!7257920 () Bool)

(assert (=> b!7257920 (= e!4352090 (matchZipper!3584 (derivationStepZipper!3452 lt!2588672 (head!14928 (t!384666 s1!1971))) (tail!14373 (t!384666 s1!1971))))))

(assert (= (and d!2257390 c!1349810) b!7257919))

(assert (= (and d!2257390 (not c!1349810)) b!7257920))

(declare-fun m!7940592 () Bool)

(assert (=> d!2257390 m!7940592))

(declare-fun m!7940594 () Bool)

(assert (=> b!7257919 m!7940594))

(declare-fun m!7940596 () Bool)

(assert (=> b!7257920 m!7940596))

(assert (=> b!7257920 m!7940596))

(declare-fun m!7940598 () Bool)

(assert (=> b!7257920 m!7940598))

(declare-fun m!7940600 () Bool)

(assert (=> b!7257920 m!7940600))

(assert (=> b!7257920 m!7940598))

(assert (=> b!7257920 m!7940600))

(declare-fun m!7940602 () Bool)

(assert (=> b!7257920 m!7940602))

(assert (=> b!7257848 d!2257390))

(declare-fun d!2257392 () Bool)

(assert (=> d!2257392 (= (tail!14372 (exprs!8114 ct1!232)) (t!384667 (exprs!8114 ct1!232)))))

(assert (=> b!7257839 d!2257392))

(declare-fun d!2257394 () Bool)

(assert (=> d!2257394 (= (isEmpty!40585 lt!2588649) (is-Nil!70479 lt!2588649))))

(assert (=> b!7257839 d!2257394))

(declare-fun b!7257943 () Bool)

(declare-fun e!4352105 () Bool)

(assert (=> b!7257943 (= e!4352105 (nullable!7934 (regOne!37860 (h!76927 (exprs!8114 ct1!232)))))))

(declare-fun b!7257944 () Bool)

(declare-fun e!4352104 () (Set Context!15228))

(declare-fun e!4352103 () (Set Context!15228))

(assert (=> b!7257944 (= e!4352104 e!4352103)))

(declare-fun c!1349825 () Bool)

(assert (=> b!7257944 (= c!1349825 (is-Concat!27519 (h!76927 (exprs!8114 ct1!232))))))

(declare-fun b!7257945 () Bool)

(declare-fun e!4352106 () (Set Context!15228))

(declare-fun call!661477 () (Set Context!15228))

(declare-fun call!661476 () (Set Context!15228))

(assert (=> b!7257945 (= e!4352106 (set.union call!661477 call!661476))))

(declare-fun b!7257946 () Bool)

(declare-fun e!4352108 () (Set Context!15228))

(assert (=> b!7257946 (= e!4352108 e!4352106)))

(declare-fun c!1349824 () Bool)

(assert (=> b!7257946 (= c!1349824 (is-Union!18674 (h!76927 (exprs!8114 ct1!232))))))

(declare-fun b!7257947 () Bool)

(declare-fun e!4352107 () (Set Context!15228))

(declare-fun call!661478 () (Set Context!15228))

(assert (=> b!7257947 (= e!4352107 call!661478)))

(declare-fun call!661479 () List!70603)

(declare-fun c!1349823 () Bool)

(declare-fun bm!661471 () Bool)

(assert (=> bm!661471 (= call!661476 (derivationStepZipperDown!2668 (ite c!1349824 (regTwo!37861 (h!76927 (exprs!8114 ct1!232))) (ite c!1349823 (regTwo!37860 (h!76927 (exprs!8114 ct1!232))) (ite c!1349825 (regOne!37860 (h!76927 (exprs!8114 ct1!232))) (reg!19003 (h!76927 (exprs!8114 ct1!232)))))) (ite (or c!1349824 c!1349823) lt!2588648 (Context!15229 call!661479)) (h!76926 s1!1971)))))

(declare-fun b!7257948 () Bool)

(assert (=> b!7257948 (= c!1349823 e!4352105)))

(declare-fun res!2943105 () Bool)

(assert (=> b!7257948 (=> (not res!2943105) (not e!4352105))))

(assert (=> b!7257948 (= res!2943105 (is-Concat!27519 (h!76927 (exprs!8114 ct1!232))))))

(assert (=> b!7257948 (= e!4352106 e!4352104)))

(declare-fun b!7257949 () Bool)

(assert (=> b!7257949 (= e!4352107 (as set.empty (Set Context!15228)))))

(declare-fun d!2257396 () Bool)

(declare-fun c!1349822 () Bool)

(assert (=> d!2257396 (= c!1349822 (and (is-ElementMatch!18674 (h!76927 (exprs!8114 ct1!232))) (= (c!1349784 (h!76927 (exprs!8114 ct1!232))) (h!76926 s1!1971))))))

(assert (=> d!2257396 (= (derivationStepZipperDown!2668 (h!76927 (exprs!8114 ct1!232)) lt!2588648 (h!76926 s1!1971)) e!4352108)))

(declare-fun bm!661472 () Bool)

(declare-fun call!661480 () (Set Context!15228))

(assert (=> bm!661472 (= call!661480 call!661476)))

(declare-fun bm!661473 () Bool)

(assert (=> bm!661473 (= call!661478 call!661480)))

(declare-fun b!7257950 () Bool)

(assert (=> b!7257950 (= e!4352103 call!661478)))

(declare-fun b!7257951 () Bool)

(assert (=> b!7257951 (= e!4352108 (set.insert lt!2588648 (as set.empty (Set Context!15228))))))

(declare-fun bm!661474 () Bool)

(declare-fun call!661481 () List!70603)

(declare-fun $colon$colon!2933 (List!70603 Regex!18674) List!70603)

(assert (=> bm!661474 (= call!661481 ($colon$colon!2933 (exprs!8114 lt!2588648) (ite (or c!1349823 c!1349825) (regTwo!37860 (h!76927 (exprs!8114 ct1!232))) (h!76927 (exprs!8114 ct1!232)))))))

(declare-fun bm!661475 () Bool)

(assert (=> bm!661475 (= call!661479 call!661481)))

(declare-fun b!7257952 () Bool)

(declare-fun c!1349821 () Bool)

(assert (=> b!7257952 (= c!1349821 (is-Star!18674 (h!76927 (exprs!8114 ct1!232))))))

(assert (=> b!7257952 (= e!4352103 e!4352107)))

(declare-fun b!7257953 () Bool)

(assert (=> b!7257953 (= e!4352104 (set.union call!661477 call!661480))))

(declare-fun bm!661476 () Bool)

(assert (=> bm!661476 (= call!661477 (derivationStepZipperDown!2668 (ite c!1349824 (regOne!37861 (h!76927 (exprs!8114 ct1!232))) (regOne!37860 (h!76927 (exprs!8114 ct1!232)))) (ite c!1349824 lt!2588648 (Context!15229 call!661481)) (h!76926 s1!1971)))))

(assert (= (and d!2257396 c!1349822) b!7257951))

(assert (= (and d!2257396 (not c!1349822)) b!7257946))

(assert (= (and b!7257946 c!1349824) b!7257945))

(assert (= (and b!7257946 (not c!1349824)) b!7257948))

(assert (= (and b!7257948 res!2943105) b!7257943))

(assert (= (and b!7257948 c!1349823) b!7257953))

(assert (= (and b!7257948 (not c!1349823)) b!7257944))

(assert (= (and b!7257944 c!1349825) b!7257950))

(assert (= (and b!7257944 (not c!1349825)) b!7257952))

(assert (= (and b!7257952 c!1349821) b!7257947))

(assert (= (and b!7257952 (not c!1349821)) b!7257949))

(assert (= (or b!7257950 b!7257947) bm!661475))

(assert (= (or b!7257950 b!7257947) bm!661473))

(assert (= (or b!7257953 bm!661475) bm!661474))

(assert (= (or b!7257953 bm!661473) bm!661472))

(assert (= (or b!7257945 bm!661472) bm!661471))

(assert (= (or b!7257945 b!7257953) bm!661476))

(declare-fun m!7940604 () Bool)

(assert (=> b!7257951 m!7940604))

(declare-fun m!7940606 () Bool)

(assert (=> bm!661471 m!7940606))

(declare-fun m!7940608 () Bool)

(assert (=> bm!661474 m!7940608))

(declare-fun m!7940610 () Bool)

(assert (=> bm!661476 m!7940610))

(declare-fun m!7940612 () Bool)

(assert (=> b!7257943 m!7940612))

(assert (=> b!7257839 d!2257396))

(declare-fun d!2257398 () Bool)

(assert (=> d!2257398 (forall!17527 (++!16611 (exprs!8114 ct1!232) (exprs!8114 ct2!328)) lambda!445676)))

(declare-fun lt!2588800 () Unit!163964)

(declare-fun choose!56147 (List!70603 List!70603 Int) Unit!163964)

(assert (=> d!2257398 (= lt!2588800 (choose!56147 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676))))

(assert (=> d!2257398 (forall!17527 (exprs!8114 ct1!232) lambda!445676)))

(assert (=> d!2257398 (= (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445676) lt!2588800)))

(declare-fun bs!1908046 () Bool)

(assert (= bs!1908046 d!2257398))

(assert (=> bs!1908046 m!7940364))

(assert (=> bs!1908046 m!7940364))

(declare-fun m!7940614 () Bool)

(assert (=> bs!1908046 m!7940614))

(declare-fun m!7940616 () Bool)

(assert (=> bs!1908046 m!7940616))

(declare-fun m!7940618 () Bool)

(assert (=> bs!1908046 m!7940618))

(assert (=> b!7257839 d!2257398))

(declare-fun bm!661479 () Bool)

(declare-fun call!661484 () (Set Context!15228))

(assert (=> bm!661479 (= call!661484 (derivationStepZipperDown!2668 (h!76927 (exprs!8114 lt!2588656)) (Context!15229 (t!384667 (exprs!8114 lt!2588656))) (h!76926 s1!1971)))))

(declare-fun e!4352117 () (Set Context!15228))

(declare-fun b!7257964 () Bool)

(assert (=> b!7257964 (= e!4352117 (set.union call!661484 (derivationStepZipperUp!2498 (Context!15229 (t!384667 (exprs!8114 lt!2588656))) (h!76926 s1!1971))))))

(declare-fun b!7257965 () Bool)

(declare-fun e!4352115 () (Set Context!15228))

(assert (=> b!7257965 (= e!4352115 (as set.empty (Set Context!15228)))))

(declare-fun b!7257966 () Bool)

(assert (=> b!7257966 (= e!4352117 e!4352115)))

(declare-fun c!1349830 () Bool)

(assert (=> b!7257966 (= c!1349830 (is-Cons!70479 (exprs!8114 lt!2588656)))))

(declare-fun b!7257967 () Bool)

(assert (=> b!7257967 (= e!4352115 call!661484)))

(declare-fun b!7257968 () Bool)

(declare-fun e!4352116 () Bool)

(assert (=> b!7257968 (= e!4352116 (nullable!7934 (h!76927 (exprs!8114 lt!2588656))))))

(declare-fun d!2257400 () Bool)

(declare-fun c!1349831 () Bool)

(assert (=> d!2257400 (= c!1349831 e!4352116)))

(declare-fun res!2943108 () Bool)

(assert (=> d!2257400 (=> (not res!2943108) (not e!4352116))))

(assert (=> d!2257400 (= res!2943108 (is-Cons!70479 (exprs!8114 lt!2588656)))))

(assert (=> d!2257400 (= (derivationStepZipperUp!2498 lt!2588656 (h!76926 s1!1971)) e!4352117)))

(assert (= (and d!2257400 res!2943108) b!7257968))

(assert (= (and d!2257400 c!1349831) b!7257964))

(assert (= (and d!2257400 (not c!1349831)) b!7257966))

(assert (= (and b!7257966 c!1349830) b!7257967))

(assert (= (and b!7257966 (not c!1349830)) b!7257965))

(assert (= (or b!7257964 b!7257967) bm!661479))

(declare-fun m!7940620 () Bool)

(assert (=> bm!661479 m!7940620))

(declare-fun m!7940622 () Bool)

(assert (=> b!7257964 m!7940622))

(declare-fun m!7940624 () Bool)

(assert (=> b!7257968 m!7940624))

(assert (=> b!7257839 d!2257400))

(declare-fun b!7257977 () Bool)

(declare-fun e!4352122 () List!70603)

(assert (=> b!7257977 (= e!4352122 (exprs!8114 ct2!328))))

(declare-fun d!2257402 () Bool)

(declare-fun e!4352123 () Bool)

(assert (=> d!2257402 e!4352123))

(declare-fun res!2943114 () Bool)

(assert (=> d!2257402 (=> (not res!2943114) (not e!4352123))))

(declare-fun lt!2588803 () List!70603)

(declare-fun content!14660 (List!70603) (Set Regex!18674))

(assert (=> d!2257402 (= res!2943114 (= (content!14660 lt!2588803) (set.union (content!14660 (exprs!8114 ct1!232)) (content!14660 (exprs!8114 ct2!328)))))))

(assert (=> d!2257402 (= lt!2588803 e!4352122)))

(declare-fun c!1349834 () Bool)

(assert (=> d!2257402 (= c!1349834 (is-Nil!70479 (exprs!8114 ct1!232)))))

(assert (=> d!2257402 (= (++!16611 (exprs!8114 ct1!232) (exprs!8114 ct2!328)) lt!2588803)))

(declare-fun b!7257980 () Bool)

(assert (=> b!7257980 (= e!4352123 (or (not (= (exprs!8114 ct2!328) Nil!70479)) (= lt!2588803 (exprs!8114 ct1!232))))))

(declare-fun b!7257978 () Bool)

(assert (=> b!7257978 (= e!4352122 (Cons!70479 (h!76927 (exprs!8114 ct1!232)) (++!16611 (t!384667 (exprs!8114 ct1!232)) (exprs!8114 ct2!328))))))

(declare-fun b!7257979 () Bool)

(declare-fun res!2943113 () Bool)

(assert (=> b!7257979 (=> (not res!2943113) (not e!4352123))))

(declare-fun size!41750 (List!70603) Int)

(assert (=> b!7257979 (= res!2943113 (= (size!41750 lt!2588803) (+ (size!41750 (exprs!8114 ct1!232)) (size!41750 (exprs!8114 ct2!328)))))))

(assert (= (and d!2257402 c!1349834) b!7257977))

(assert (= (and d!2257402 (not c!1349834)) b!7257978))

(assert (= (and d!2257402 res!2943114) b!7257979))

(assert (= (and b!7257979 res!2943113) b!7257980))

(declare-fun m!7940626 () Bool)

(assert (=> d!2257402 m!7940626))

(declare-fun m!7940628 () Bool)

(assert (=> d!2257402 m!7940628))

(declare-fun m!7940630 () Bool)

(assert (=> d!2257402 m!7940630))

(declare-fun m!7940632 () Bool)

(assert (=> b!7257978 m!7940632))

(declare-fun m!7940634 () Bool)

(assert (=> b!7257979 m!7940634))

(declare-fun m!7940636 () Bool)

(assert (=> b!7257979 m!7940636))

(declare-fun m!7940638 () Bool)

(assert (=> b!7257979 m!7940638))

(assert (=> b!7257849 d!2257402))

(assert (=> b!7257849 d!2257398))

(declare-fun d!2257404 () Bool)

(declare-fun c!1349835 () Bool)

(assert (=> d!2257404 (= c!1349835 (isEmpty!40587 (t!384666 s1!1971)))))

(declare-fun e!4352124 () Bool)

(assert (=> d!2257404 (= (matchZipper!3584 lt!2588662 (t!384666 s1!1971)) e!4352124)))

(declare-fun b!7257981 () Bool)

(assert (=> b!7257981 (= e!4352124 (nullableZipper!2931 lt!2588662))))

(declare-fun b!7257982 () Bool)

(assert (=> b!7257982 (= e!4352124 (matchZipper!3584 (derivationStepZipper!3452 lt!2588662 (head!14928 (t!384666 s1!1971))) (tail!14373 (t!384666 s1!1971))))))

(assert (= (and d!2257404 c!1349835) b!7257981))

(assert (= (and d!2257404 (not c!1349835)) b!7257982))

(assert (=> d!2257404 m!7940592))

(declare-fun m!7940640 () Bool)

(assert (=> b!7257981 m!7940640))

(assert (=> b!7257982 m!7940596))

(assert (=> b!7257982 m!7940596))

(declare-fun m!7940642 () Bool)

(assert (=> b!7257982 m!7940642))

(assert (=> b!7257982 m!7940600))

(assert (=> b!7257982 m!7940642))

(assert (=> b!7257982 m!7940600))

(declare-fun m!7940644 () Bool)

(assert (=> b!7257982 m!7940644))

(assert (=> b!7257851 d!2257404))

(declare-fun bs!1908047 () Bool)

(declare-fun d!2257406 () Bool)

(assert (= bs!1908047 (and d!2257406 b!7257852)))

(declare-fun lambda!445730 () Int)

(assert (=> bs!1908047 (= lambda!445730 lambda!445678)))

(assert (=> d!2257406 true))

(assert (=> d!2257406 (= (derivationStepZipper!3452 lt!2588653 (h!76926 s1!1971)) (flatMap!2839 lt!2588653 lambda!445730))))

(declare-fun bs!1908048 () Bool)

(assert (= bs!1908048 d!2257406))

(declare-fun m!7940646 () Bool)

(assert (=> bs!1908048 m!7940646))

(assert (=> b!7257851 d!2257406))

(declare-fun d!2257408 () Bool)

(declare-fun choose!56148 ((Set Context!15228) Int) (Set Context!15228))

(assert (=> d!2257408 (= (flatMap!2839 lt!2588665 lambda!445678) (choose!56148 lt!2588665 lambda!445678))))

(declare-fun bs!1908049 () Bool)

(assert (= bs!1908049 d!2257408))

(declare-fun m!7940648 () Bool)

(assert (=> bs!1908049 m!7940648))

(assert (=> b!7257852 d!2257408))

(declare-fun d!2257410 () Bool)

(declare-fun e!4352127 () Bool)

(assert (=> d!2257410 e!4352127))

(declare-fun res!2943117 () Bool)

(assert (=> d!2257410 (=> (not res!2943117) (not e!4352127))))

(declare-fun lt!2588806 () List!70604)

(declare-fun noDuplicate!3006 (List!70604) Bool)

(assert (=> d!2257410 (= res!2943117 (noDuplicate!3006 lt!2588806))))

(declare-fun choose!56149 ((Set Context!15228)) List!70604)

(assert (=> d!2257410 (= lt!2588806 (choose!56149 lt!2588646))))

(assert (=> d!2257410 (= (toList!11503 lt!2588646) lt!2588806)))

(declare-fun b!7257987 () Bool)

(declare-fun content!14661 (List!70604) (Set Context!15228))

(assert (=> b!7257987 (= e!4352127 (= (content!14661 lt!2588806) lt!2588646))))

(assert (= (and d!2257410 res!2943117) b!7257987))

(declare-fun m!7940650 () Bool)

(assert (=> d!2257410 m!7940650))

(declare-fun m!7940652 () Bool)

(assert (=> d!2257410 m!7940652))

(declare-fun m!7940654 () Bool)

(assert (=> b!7257987 m!7940654))

(assert (=> b!7257852 d!2257410))

(declare-fun d!2257412 () Bool)

(assert (=> d!2257412 (forall!17527 (++!16611 (exprs!8114 lt!2588645) (exprs!8114 ct2!328)) lambda!445676)))

(declare-fun lt!2588807 () Unit!163964)

(assert (=> d!2257412 (= lt!2588807 (choose!56147 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445676))))

(assert (=> d!2257412 (forall!17527 (exprs!8114 lt!2588645) lambda!445676)))

(assert (=> d!2257412 (= (lemmaConcatPreservesForall!1481 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445676) lt!2588807)))

(declare-fun bs!1908050 () Bool)

(assert (= bs!1908050 d!2257412))

(assert (=> bs!1908050 m!7940352))

(assert (=> bs!1908050 m!7940352))

(declare-fun m!7940656 () Bool)

(assert (=> bs!1908050 m!7940656))

(declare-fun m!7940658 () Bool)

(assert (=> bs!1908050 m!7940658))

(declare-fun m!7940660 () Bool)

(assert (=> bs!1908050 m!7940660))

(assert (=> b!7257852 d!2257412))

(declare-fun d!2257414 () Bool)

(declare-fun dynLambda!28797 (Int Context!15228) (Set Context!15228))

(assert (=> d!2257414 (= (flatMap!2839 lt!2588665 lambda!445678) (dynLambda!28797 lambda!445678 lt!2588656))))

(declare-fun lt!2588810 () Unit!163964)

(declare-fun choose!56150 ((Set Context!15228) Context!15228 Int) Unit!163964)

(assert (=> d!2257414 (= lt!2588810 (choose!56150 lt!2588665 lt!2588656 lambda!445678))))

(assert (=> d!2257414 (= lt!2588665 (set.insert lt!2588656 (as set.empty (Set Context!15228))))))

(assert (=> d!2257414 (= (lemmaFlatMapOnSingletonSet!2243 lt!2588665 lt!2588656 lambda!445678) lt!2588810)))

(declare-fun b_lambda!279089 () Bool)

(assert (=> (not b_lambda!279089) (not d!2257414)))

(declare-fun bs!1908051 () Bool)

(assert (= bs!1908051 d!2257414))

(assert (=> bs!1908051 m!7940382))

(declare-fun m!7940662 () Bool)

(assert (=> bs!1908051 m!7940662))

(declare-fun m!7940664 () Bool)

(assert (=> bs!1908051 m!7940664))

(assert (=> bs!1908051 m!7940362))

(assert (=> b!7257852 d!2257414))

(declare-fun bs!1908052 () Bool)

(declare-fun d!2257416 () Bool)

(assert (= bs!1908052 (and d!2257416 b!7257849)))

(declare-fun lambda!445735 () Int)

(assert (=> bs!1908052 (= lambda!445735 lambda!445676)))

(declare-fun bs!1908053 () Bool)

(assert (= bs!1908053 (and d!2257416 d!2257386)))

(assert (=> bs!1908053 (= lambda!445735 lambda!445726)))

(declare-fun bs!1908054 () Bool)

(assert (= bs!1908054 (and d!2257416 d!2257388)))

(assert (=> bs!1908054 (= lambda!445735 lambda!445727)))

(assert (=> d!2257416 (set.member (Context!15229 (++!16611 (exprs!8114 lt!2588645) (exprs!8114 ct2!328))) (derivationStepZipperUp!2498 (Context!15229 (++!16611 (exprs!8114 ct1!232) (exprs!8114 ct2!328))) (h!76926 s1!1971)))))

(declare-fun lt!2588819 () Unit!163964)

(assert (=> d!2257416 (= lt!2588819 (lemmaConcatPreservesForall!1481 (exprs!8114 ct1!232) (exprs!8114 ct2!328) lambda!445735))))

(declare-fun lt!2588818 () Unit!163964)

(assert (=> d!2257416 (= lt!2588818 (lemmaConcatPreservesForall!1481 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445735))))

(declare-fun lt!2588817 () Unit!163964)

(declare-fun choose!56151 (Context!15228 Context!15228 Context!15228 C!37622) Unit!163964)

(assert (=> d!2257416 (= lt!2588817 (choose!56151 ct1!232 ct2!328 lt!2588645 (h!76926 s1!1971)))))

(assert (=> d!2257416 (set.member lt!2588645 (derivationStepZipperUp!2498 ct1!232 (h!76926 s1!1971)))))

(assert (=> d!2257416 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!29 ct1!232 ct2!328 lt!2588645 (h!76926 s1!1971)) lt!2588817)))

(declare-fun bs!1908055 () Bool)

(assert (= bs!1908055 d!2257416))

(declare-fun m!7940666 () Bool)

(assert (=> bs!1908055 m!7940666))

(declare-fun m!7940668 () Bool)

(assert (=> bs!1908055 m!7940668))

(declare-fun m!7940670 () Bool)

(assert (=> bs!1908055 m!7940670))

(declare-fun m!7940672 () Bool)

(assert (=> bs!1908055 m!7940672))

(assert (=> bs!1908055 m!7940346))

(declare-fun m!7940674 () Bool)

(assert (=> bs!1908055 m!7940674))

(assert (=> bs!1908055 m!7940364))

(declare-fun m!7940676 () Bool)

(assert (=> bs!1908055 m!7940676))

(assert (=> bs!1908055 m!7940352))

(assert (=> b!7257852 d!2257416))

(declare-fun bs!1908056 () Bool)

(declare-fun d!2257418 () Bool)

(assert (= bs!1908056 (and d!2257418 b!7257853)))

(declare-fun lambda!445738 () Int)

(assert (=> bs!1908056 (not (= lambda!445738 lambda!445677))))

(declare-fun bs!1908057 () Bool)

(assert (= bs!1908057 (and d!2257418 b!7257852)))

(assert (=> bs!1908057 (not (= lambda!445738 lambda!445679))))

(assert (=> d!2257418 true))

(declare-fun order!29021 () Int)

(declare-fun dynLambda!28798 (Int Int) Int)

(assert (=> d!2257418 (< (dynLambda!28798 order!29021 lambda!445679) (dynLambda!28798 order!29021 lambda!445738))))

(declare-fun forall!17528 (List!70604 Int) Bool)

(assert (=> d!2257418 (= (exists!4427 (toList!11503 lt!2588646) lambda!445679) (not (forall!17528 (toList!11503 lt!2588646) lambda!445738)))))

(declare-fun bs!1908058 () Bool)

(assert (= bs!1908058 d!2257418))

(assert (=> bs!1908058 m!7940384))

(declare-fun m!7940678 () Bool)

(assert (=> bs!1908058 m!7940678))

(assert (=> b!7257852 d!2257418))

(assert (=> b!7257852 d!2257398))

(declare-fun d!2257420 () Bool)

(assert (=> d!2257420 (= (flatMap!2839 lt!2588653 lambda!445678) (dynLambda!28797 lambda!445678 ct1!232))))

(declare-fun lt!2588820 () Unit!163964)

(assert (=> d!2257420 (= lt!2588820 (choose!56150 lt!2588653 ct1!232 lambda!445678))))

(assert (=> d!2257420 (= lt!2588653 (set.insert ct1!232 (as set.empty (Set Context!15228))))))

(assert (=> d!2257420 (= (lemmaFlatMapOnSingletonSet!2243 lt!2588653 ct1!232 lambda!445678) lt!2588820)))

(declare-fun b_lambda!279091 () Bool)

(assert (=> (not b_lambda!279091) (not d!2257420)))

(declare-fun bs!1908059 () Bool)

(assert (= bs!1908059 d!2257420))

(assert (=> bs!1908059 m!7940394))

(declare-fun m!7940680 () Bool)

(assert (=> bs!1908059 m!7940680))

(declare-fun m!7940682 () Bool)

(assert (=> bs!1908059 m!7940682))

(assert (=> bs!1908059 m!7940448))

(assert (=> b!7257852 d!2257420))

(declare-fun d!2257422 () Bool)

(assert (=> d!2257422 (= (tail!14373 (++!16610 s1!1971 s2!1849)) (t!384666 (++!16610 s1!1971 s2!1849)))))

(assert (=> b!7257852 d!2257422))

(declare-fun d!2257424 () Bool)

(assert (=> d!2257424 (exists!4426 lt!2588646 lambda!445679)))

(declare-fun lt!2588823 () Unit!163964)

(declare-fun choose!56152 ((Set Context!15228) Context!15228 Int) Unit!163964)

(assert (=> d!2257424 (= lt!2588823 (choose!56152 lt!2588646 lt!2588680 lambda!445679))))

(assert (=> d!2257424 (set.member lt!2588680 lt!2588646)))

(assert (=> d!2257424 (= (lemmaContainsThenExists!222 lt!2588646 lt!2588680 lambda!445679) lt!2588823)))

(declare-fun bs!1908060 () Bool)

(assert (= bs!1908060 d!2257424))

(assert (=> bs!1908060 m!7940380))

(declare-fun m!7940684 () Bool)

(assert (=> bs!1908060 m!7940684))

(assert (=> bs!1908060 m!7940390))

(assert (=> b!7257852 d!2257424))

(declare-fun d!2257426 () Bool)

(declare-fun nullableFct!3118 (Regex!18674) Bool)

(assert (=> d!2257426 (= (nullable!7934 (h!76927 (exprs!8114 ct1!232))) (nullableFct!3118 (h!76927 (exprs!8114 ct1!232))))))

(declare-fun bs!1908061 () Bool)

(assert (= bs!1908061 d!2257426))

(declare-fun m!7940686 () Bool)

(assert (=> bs!1908061 m!7940686))

(assert (=> b!7257852 d!2257426))

(declare-fun d!2257428 () Bool)

(assert (=> d!2257428 (= (tail!14372 lt!2588649) (t!384667 lt!2588649))))

(assert (=> b!7257852 d!2257428))

(declare-fun e!4352133 () Bool)

(declare-fun lt!2588826 () List!70602)

(declare-fun b!7258001 () Bool)

(assert (=> b!7258001 (= e!4352133 (or (not (= s2!1849 Nil!70478)) (= lt!2588826 s1!1971)))))

(declare-fun b!7257998 () Bool)

(declare-fun e!4352134 () List!70602)

(assert (=> b!7257998 (= e!4352134 s2!1849)))

(declare-fun d!2257430 () Bool)

(assert (=> d!2257430 e!4352133))

(declare-fun res!2943122 () Bool)

(assert (=> d!2257430 (=> (not res!2943122) (not e!4352133))))

(declare-fun content!14662 (List!70602) (Set C!37622))

(assert (=> d!2257430 (= res!2943122 (= (content!14662 lt!2588826) (set.union (content!14662 s1!1971) (content!14662 s2!1849))))))

(assert (=> d!2257430 (= lt!2588826 e!4352134)))

(declare-fun c!1349841 () Bool)

(assert (=> d!2257430 (= c!1349841 (is-Nil!70478 s1!1971))))

(assert (=> d!2257430 (= (++!16610 s1!1971 s2!1849) lt!2588826)))

(declare-fun b!7258000 () Bool)

(declare-fun res!2943123 () Bool)

(assert (=> b!7258000 (=> (not res!2943123) (not e!4352133))))

(declare-fun size!41751 (List!70602) Int)

(assert (=> b!7258000 (= res!2943123 (= (size!41751 lt!2588826) (+ (size!41751 s1!1971) (size!41751 s2!1849))))))

(declare-fun b!7257999 () Bool)

(assert (=> b!7257999 (= e!4352134 (Cons!70478 (h!76926 s1!1971) (++!16610 (t!384666 s1!1971) s2!1849)))))

(assert (= (and d!2257430 c!1349841) b!7257998))

(assert (= (and d!2257430 (not c!1349841)) b!7257999))

(assert (= (and d!2257430 res!2943122) b!7258000))

(assert (= (and b!7258000 res!2943123) b!7258001))

(declare-fun m!7940688 () Bool)

(assert (=> d!2257430 m!7940688))

(declare-fun m!7940690 () Bool)

(assert (=> d!2257430 m!7940690))

(declare-fun m!7940692 () Bool)

(assert (=> d!2257430 m!7940692))

(declare-fun m!7940694 () Bool)

(assert (=> b!7258000 m!7940694))

(declare-fun m!7940696 () Bool)

(assert (=> b!7258000 m!7940696))

(declare-fun m!7940698 () Bool)

(assert (=> b!7258000 m!7940698))

(assert (=> b!7257999 m!7940348))

(assert (=> b!7257852 d!2257430))

(declare-fun d!2257432 () Bool)

(assert (=> d!2257432 (= (flatMap!2839 lt!2588653 lambda!445678) (choose!56148 lt!2588653 lambda!445678))))

(declare-fun bs!1908062 () Bool)

(assert (= bs!1908062 d!2257432))

(declare-fun m!7940700 () Bool)

(assert (=> bs!1908062 m!7940700))

(assert (=> b!7257852 d!2257432))

(declare-fun bm!661480 () Bool)

(declare-fun call!661485 () (Set Context!15228))

(assert (=> bm!661480 (= call!661485 (derivationStepZipperDown!2668 (h!76927 (exprs!8114 ct1!232)) (Context!15229 (t!384667 (exprs!8114 ct1!232))) (h!76926 s1!1971)))))

(declare-fun e!4352137 () (Set Context!15228))

(declare-fun b!7258002 () Bool)

(assert (=> b!7258002 (= e!4352137 (set.union call!661485 (derivationStepZipperUp!2498 (Context!15229 (t!384667 (exprs!8114 ct1!232))) (h!76926 s1!1971))))))

(declare-fun b!7258003 () Bool)

(declare-fun e!4352135 () (Set Context!15228))

(assert (=> b!7258003 (= e!4352135 (as set.empty (Set Context!15228)))))

(declare-fun b!7258004 () Bool)

(assert (=> b!7258004 (= e!4352137 e!4352135)))

(declare-fun c!1349842 () Bool)

(assert (=> b!7258004 (= c!1349842 (is-Cons!70479 (exprs!8114 ct1!232)))))

(declare-fun b!7258005 () Bool)

(assert (=> b!7258005 (= e!4352135 call!661485)))

(declare-fun b!7258006 () Bool)

(declare-fun e!4352136 () Bool)

(assert (=> b!7258006 (= e!4352136 (nullable!7934 (h!76927 (exprs!8114 ct1!232))))))

(declare-fun d!2257434 () Bool)

(declare-fun c!1349843 () Bool)

(assert (=> d!2257434 (= c!1349843 e!4352136)))

(declare-fun res!2943124 () Bool)

(assert (=> d!2257434 (=> (not res!2943124) (not e!4352136))))

(assert (=> d!2257434 (= res!2943124 (is-Cons!70479 (exprs!8114 ct1!232)))))

(assert (=> d!2257434 (= (derivationStepZipperUp!2498 ct1!232 (h!76926 s1!1971)) e!4352137)))

(assert (= (and d!2257434 res!2943124) b!7258006))

(assert (= (and d!2257434 c!1349843) b!7258002))

(assert (= (and d!2257434 (not c!1349843)) b!7258004))

(assert (= (and b!7258004 c!1349842) b!7258005))

(assert (= (and b!7258004 (not c!1349842)) b!7258003))

(assert (= (or b!7258002 b!7258005) bm!661480))

(declare-fun m!7940702 () Bool)

(assert (=> bm!661480 m!7940702))

(declare-fun m!7940704 () Bool)

(assert (=> b!7258002 m!7940704))

(assert (=> b!7258006 m!7940404))

(assert (=> b!7257852 d!2257434))

(declare-fun d!2257436 () Bool)

(declare-fun lt!2588829 () Bool)

(assert (=> d!2257436 (= lt!2588829 (exists!4427 (toList!11503 lt!2588646) lambda!445679))))

(declare-fun choose!56153 ((Set Context!15228) Int) Bool)

(assert (=> d!2257436 (= lt!2588829 (choose!56153 lt!2588646 lambda!445679))))

(assert (=> d!2257436 (= (exists!4426 lt!2588646 lambda!445679) lt!2588829)))

(declare-fun bs!1908063 () Bool)

(assert (= bs!1908063 d!2257436))

(assert (=> bs!1908063 m!7940384))

(assert (=> bs!1908063 m!7940384))

(assert (=> bs!1908063 m!7940386))

(declare-fun m!7940706 () Bool)

(assert (=> bs!1908063 m!7940706))

(assert (=> b!7257852 d!2257436))

(declare-fun b!7258007 () Bool)

(declare-fun e!4352140 () Bool)

(assert (=> b!7258007 (= e!4352140 (nullable!7934 (regOne!37860 (h!76927 (exprs!8114 ct1!232)))))))

(declare-fun b!7258008 () Bool)

(declare-fun e!4352139 () (Set Context!15228))

(declare-fun e!4352138 () (Set Context!15228))

(assert (=> b!7258008 (= e!4352139 e!4352138)))

(declare-fun c!1349848 () Bool)

(assert (=> b!7258008 (= c!1349848 (is-Concat!27519 (h!76927 (exprs!8114 ct1!232))))))

(declare-fun b!7258009 () Bool)

(declare-fun e!4352141 () (Set Context!15228))

(declare-fun call!661487 () (Set Context!15228))

(declare-fun call!661486 () (Set Context!15228))

(assert (=> b!7258009 (= e!4352141 (set.union call!661487 call!661486))))

(declare-fun b!7258010 () Bool)

(declare-fun e!4352143 () (Set Context!15228))

(assert (=> b!7258010 (= e!4352143 e!4352141)))

(declare-fun c!1349847 () Bool)

(assert (=> b!7258010 (= c!1349847 (is-Union!18674 (h!76927 (exprs!8114 ct1!232))))))

(declare-fun b!7258011 () Bool)

(declare-fun e!4352142 () (Set Context!15228))

(declare-fun call!661488 () (Set Context!15228))

(assert (=> b!7258011 (= e!4352142 call!661488)))

(declare-fun call!661489 () List!70603)

(declare-fun bm!661481 () Bool)

(declare-fun c!1349846 () Bool)

(assert (=> bm!661481 (= call!661486 (derivationStepZipperDown!2668 (ite c!1349847 (regTwo!37861 (h!76927 (exprs!8114 ct1!232))) (ite c!1349846 (regTwo!37860 (h!76927 (exprs!8114 ct1!232))) (ite c!1349848 (regOne!37860 (h!76927 (exprs!8114 ct1!232))) (reg!19003 (h!76927 (exprs!8114 ct1!232)))))) (ite (or c!1349847 c!1349846) lt!2588650 (Context!15229 call!661489)) (h!76926 s1!1971)))))

(declare-fun b!7258012 () Bool)

(assert (=> b!7258012 (= c!1349846 e!4352140)))

(declare-fun res!2943125 () Bool)

(assert (=> b!7258012 (=> (not res!2943125) (not e!4352140))))

(assert (=> b!7258012 (= res!2943125 (is-Concat!27519 (h!76927 (exprs!8114 ct1!232))))))

(assert (=> b!7258012 (= e!4352141 e!4352139)))

(declare-fun b!7258013 () Bool)

(assert (=> b!7258013 (= e!4352142 (as set.empty (Set Context!15228)))))

(declare-fun d!2257438 () Bool)

(declare-fun c!1349845 () Bool)

(assert (=> d!2257438 (= c!1349845 (and (is-ElementMatch!18674 (h!76927 (exprs!8114 ct1!232))) (= (c!1349784 (h!76927 (exprs!8114 ct1!232))) (h!76926 s1!1971))))))

(assert (=> d!2257438 (= (derivationStepZipperDown!2668 (h!76927 (exprs!8114 ct1!232)) lt!2588650 (h!76926 s1!1971)) e!4352143)))

(declare-fun bm!661482 () Bool)

(declare-fun call!661490 () (Set Context!15228))

(assert (=> bm!661482 (= call!661490 call!661486)))

(declare-fun bm!661483 () Bool)

(assert (=> bm!661483 (= call!661488 call!661490)))

(declare-fun b!7258014 () Bool)

(assert (=> b!7258014 (= e!4352138 call!661488)))

(declare-fun b!7258015 () Bool)

(assert (=> b!7258015 (= e!4352143 (set.insert lt!2588650 (as set.empty (Set Context!15228))))))

(declare-fun bm!661484 () Bool)

(declare-fun call!661491 () List!70603)

(assert (=> bm!661484 (= call!661491 ($colon$colon!2933 (exprs!8114 lt!2588650) (ite (or c!1349846 c!1349848) (regTwo!37860 (h!76927 (exprs!8114 ct1!232))) (h!76927 (exprs!8114 ct1!232)))))))

(declare-fun bm!661485 () Bool)

(assert (=> bm!661485 (= call!661489 call!661491)))

(declare-fun b!7258016 () Bool)

(declare-fun c!1349844 () Bool)

(assert (=> b!7258016 (= c!1349844 (is-Star!18674 (h!76927 (exprs!8114 ct1!232))))))

(assert (=> b!7258016 (= e!4352138 e!4352142)))

(declare-fun b!7258017 () Bool)

(assert (=> b!7258017 (= e!4352139 (set.union call!661487 call!661490))))

(declare-fun bm!661486 () Bool)

(assert (=> bm!661486 (= call!661487 (derivationStepZipperDown!2668 (ite c!1349847 (regOne!37861 (h!76927 (exprs!8114 ct1!232))) (regOne!37860 (h!76927 (exprs!8114 ct1!232)))) (ite c!1349847 lt!2588650 (Context!15229 call!661491)) (h!76926 s1!1971)))))

(assert (= (and d!2257438 c!1349845) b!7258015))

(assert (= (and d!2257438 (not c!1349845)) b!7258010))

(assert (= (and b!7258010 c!1349847) b!7258009))

(assert (= (and b!7258010 (not c!1349847)) b!7258012))

(assert (= (and b!7258012 res!2943125) b!7258007))

(assert (= (and b!7258012 c!1349846) b!7258017))

(assert (= (and b!7258012 (not c!1349846)) b!7258008))

(assert (= (and b!7258008 c!1349848) b!7258014))

(assert (= (and b!7258008 (not c!1349848)) b!7258016))

(assert (= (and b!7258016 c!1349844) b!7258011))

(assert (= (and b!7258016 (not c!1349844)) b!7258013))

(assert (= (or b!7258014 b!7258011) bm!661485))

(assert (= (or b!7258014 b!7258011) bm!661483))

(assert (= (or b!7258017 bm!661485) bm!661484))

(assert (= (or b!7258017 bm!661483) bm!661482))

(assert (= (or b!7258009 bm!661482) bm!661481))

(assert (= (or b!7258009 b!7258017) bm!661486))

(declare-fun m!7940708 () Bool)

(assert (=> b!7258015 m!7940708))

(declare-fun m!7940710 () Bool)

(assert (=> bm!661481 m!7940710))

(declare-fun m!7940712 () Bool)

(assert (=> bm!661484 m!7940712))

(declare-fun m!7940714 () Bool)

(assert (=> bm!661486 m!7940714))

(assert (=> b!7258007 m!7940612))

(assert (=> b!7257852 d!2257438))

(assert (=> b!7257852 d!2257400))

(declare-fun d!2257440 () Bool)

(declare-fun c!1349849 () Bool)

(assert (=> d!2257440 (= c!1349849 (isEmpty!40587 lt!2588670))))

(declare-fun e!4352144 () Bool)

(assert (=> d!2257440 (= (matchZipper!3584 (set.insert lt!2588680 (as set.empty (Set Context!15228))) lt!2588670) e!4352144)))

(declare-fun b!7258018 () Bool)

(assert (=> b!7258018 (= e!4352144 (nullableZipper!2931 (set.insert lt!2588680 (as set.empty (Set Context!15228)))))))

(declare-fun b!7258019 () Bool)

(assert (=> b!7258019 (= e!4352144 (matchZipper!3584 (derivationStepZipper!3452 (set.insert lt!2588680 (as set.empty (Set Context!15228))) (head!14928 lt!2588670)) (tail!14373 lt!2588670)))))

(assert (= (and d!2257440 c!1349849) b!7258018))

(assert (= (and d!2257440 (not c!1349849)) b!7258019))

(declare-fun m!7940716 () Bool)

(assert (=> d!2257440 m!7940716))

(assert (=> b!7258018 m!7940358))

(declare-fun m!7940718 () Bool)

(assert (=> b!7258018 m!7940718))

(declare-fun m!7940720 () Bool)

(assert (=> b!7258019 m!7940720))

(assert (=> b!7258019 m!7940358))

(assert (=> b!7258019 m!7940720))

(declare-fun m!7940722 () Bool)

(assert (=> b!7258019 m!7940722))

(declare-fun m!7940724 () Bool)

(assert (=> b!7258019 m!7940724))

(assert (=> b!7258019 m!7940722))

(assert (=> b!7258019 m!7940724))

(declare-fun m!7940726 () Bool)

(assert (=> b!7258019 m!7940726))

(assert (=> b!7257841 d!2257440))

(declare-fun b!7258023 () Bool)

(declare-fun e!4352145 () Bool)

(declare-fun lt!2588830 () List!70602)

(assert (=> b!7258023 (= e!4352145 (or (not (= s2!1849 Nil!70478)) (= lt!2588830 (t!384666 s1!1971))))))

(declare-fun b!7258020 () Bool)

(declare-fun e!4352146 () List!70602)

(assert (=> b!7258020 (= e!4352146 s2!1849)))

(declare-fun d!2257442 () Bool)

(assert (=> d!2257442 e!4352145))

(declare-fun res!2943126 () Bool)

(assert (=> d!2257442 (=> (not res!2943126) (not e!4352145))))

(assert (=> d!2257442 (= res!2943126 (= (content!14662 lt!2588830) (set.union (content!14662 (t!384666 s1!1971)) (content!14662 s2!1849))))))

(assert (=> d!2257442 (= lt!2588830 e!4352146)))

(declare-fun c!1349850 () Bool)

(assert (=> d!2257442 (= c!1349850 (is-Nil!70478 (t!384666 s1!1971)))))

(assert (=> d!2257442 (= (++!16610 (t!384666 s1!1971) s2!1849) lt!2588830)))

(declare-fun b!7258022 () Bool)

(declare-fun res!2943127 () Bool)

(assert (=> b!7258022 (=> (not res!2943127) (not e!4352145))))

(assert (=> b!7258022 (= res!2943127 (= (size!41751 lt!2588830) (+ (size!41751 (t!384666 s1!1971)) (size!41751 s2!1849))))))

(declare-fun b!7258021 () Bool)

(assert (=> b!7258021 (= e!4352146 (Cons!70478 (h!76926 (t!384666 s1!1971)) (++!16610 (t!384666 (t!384666 s1!1971)) s2!1849)))))

(assert (= (and d!2257442 c!1349850) b!7258020))

(assert (= (and d!2257442 (not c!1349850)) b!7258021))

(assert (= (and d!2257442 res!2943126) b!7258022))

(assert (= (and b!7258022 res!2943127) b!7258023))

(declare-fun m!7940728 () Bool)

(assert (=> d!2257442 m!7940728))

(declare-fun m!7940730 () Bool)

(assert (=> d!2257442 m!7940730))

(assert (=> d!2257442 m!7940692))

(declare-fun m!7940732 () Bool)

(assert (=> b!7258022 m!7940732))

(declare-fun m!7940734 () Bool)

(assert (=> b!7258022 m!7940734))

(assert (=> b!7258022 m!7940698))

(declare-fun m!7940736 () Bool)

(assert (=> b!7258021 m!7940736))

(assert (=> b!7257841 d!2257442))

(assert (=> b!7257841 d!2257434))

(declare-fun bs!1908064 () Bool)

(declare-fun d!2257444 () Bool)

(assert (= bs!1908064 (and d!2257444 b!7257849)))

(declare-fun lambda!445741 () Int)

(assert (=> bs!1908064 (= lambda!445741 lambda!445676)))

(declare-fun bs!1908065 () Bool)

(assert (= bs!1908065 (and d!2257444 d!2257386)))

(assert (=> bs!1908065 (= lambda!445741 lambda!445726)))

(declare-fun bs!1908066 () Bool)

(assert (= bs!1908066 (and d!2257444 d!2257388)))

(assert (=> bs!1908066 (= lambda!445741 lambda!445727)))

(declare-fun bs!1908067 () Bool)

(assert (= bs!1908067 (and d!2257444 d!2257416)))

(assert (=> bs!1908067 (= lambda!445741 lambda!445735)))

(assert (=> d!2257444 (matchZipper!3584 (set.insert (Context!15229 (++!16611 (exprs!8114 lt!2588645) (exprs!8114 ct2!328))) (as set.empty (Set Context!15228))) (++!16610 (t!384666 s1!1971) s2!1849))))

(declare-fun lt!2588836 () Unit!163964)

(assert (=> d!2257444 (= lt!2588836 (lemmaConcatPreservesForall!1481 (exprs!8114 lt!2588645) (exprs!8114 ct2!328) lambda!445741))))

(declare-fun lt!2588835 () Unit!163964)

(declare-fun choose!56154 (Context!15228 Context!15228 List!70602 List!70602) Unit!163964)

(assert (=> d!2257444 (= lt!2588835 (choose!56154 lt!2588645 ct2!328 (t!384666 s1!1971) s2!1849))))

(assert (=> d!2257444 (matchZipper!3584 (set.insert lt!2588645 (as set.empty (Set Context!15228))) (t!384666 s1!1971))))

(assert (=> d!2257444 (= (lemmaConcatenateContextMatchesConcatOfStrings!419 lt!2588645 ct2!328 (t!384666 s1!1971) s2!1849) lt!2588835)))

(declare-fun bs!1908068 () Bool)

(assert (= bs!1908068 d!2257444))

(assert (=> bs!1908068 m!7940348))

(declare-fun m!7940738 () Bool)

(assert (=> bs!1908068 m!7940738))

(declare-fun m!7940740 () Bool)

(assert (=> bs!1908068 m!7940740))

(assert (=> bs!1908068 m!7940352))

(declare-fun m!7940742 () Bool)

(assert (=> bs!1908068 m!7940742))

(assert (=> bs!1908068 m!7940740))

(assert (=> bs!1908068 m!7940348))

(declare-fun m!7940744 () Bool)

(assert (=> bs!1908068 m!7940744))

(declare-fun m!7940746 () Bool)

(assert (=> bs!1908068 m!7940746))

(declare-fun m!7940748 () Bool)

(assert (=> bs!1908068 m!7940748))

(assert (=> bs!1908068 m!7940746))

(assert (=> b!7257841 d!2257444))

(declare-fun b!7258024 () Bool)

(declare-fun e!4352147 () List!70603)

(assert (=> b!7258024 (= e!4352147 (exprs!8114 ct2!328))))

(declare-fun d!2257446 () Bool)

(declare-fun e!4352148 () Bool)

(assert (=> d!2257446 e!4352148))

(declare-fun res!2943129 () Bool)

(assert (=> d!2257446 (=> (not res!2943129) (not e!4352148))))

(declare-fun lt!2588837 () List!70603)

(assert (=> d!2257446 (= res!2943129 (= (content!14660 lt!2588837) (set.union (content!14660 (exprs!8114 lt!2588645)) (content!14660 (exprs!8114 ct2!328)))))))

(assert (=> d!2257446 (= lt!2588837 e!4352147)))

(declare-fun c!1349851 () Bool)

(assert (=> d!2257446 (= c!1349851 (is-Nil!70479 (exprs!8114 lt!2588645)))))

(assert (=> d!2257446 (= (++!16611 (exprs!8114 lt!2588645) (exprs!8114 ct2!328)) lt!2588837)))

(declare-fun b!7258027 () Bool)

(assert (=> b!7258027 (= e!4352148 (or (not (= (exprs!8114 ct2!328) Nil!70479)) (= lt!2588837 (exprs!8114 lt!2588645))))))

(declare-fun b!7258025 () Bool)

(assert (=> b!7258025 (= e!4352147 (Cons!70479 (h!76927 (exprs!8114 lt!2588645)) (++!16611 (t!384667 (exprs!8114 lt!2588645)) (exprs!8114 ct2!328))))))

(declare-fun b!7258026 () Bool)

(declare-fun res!2943128 () Bool)

(assert (=> b!7258026 (=> (not res!2943128) (not e!4352148))))

(assert (=> b!7258026 (= res!2943128 (= (size!41750 lt!2588837) (+ (size!41750 (exprs!8114 lt!2588645)) (size!41750 (exprs!8114 ct2!328)))))))

(assert (= (and d!2257446 c!1349851) b!7258024))

(assert (= (and d!2257446 (not c!1349851)) b!7258025))

(assert (= (and d!2257446 res!2943129) b!7258026))

(assert (= (and b!7258026 res!2943128) b!7258027))

(declare-fun m!7940750 () Bool)

(assert (=> d!2257446 m!7940750))

(declare-fun m!7940752 () Bool)

(assert (=> d!2257446 m!7940752))

(assert (=> d!2257446 m!7940630))

(declare-fun m!7940754 () Bool)

(assert (=> b!7258025 m!7940754))

(declare-fun m!7940756 () Bool)

(assert (=> b!7258026 m!7940756))

(declare-fun m!7940758 () Bool)

(assert (=> b!7258026 m!7940758))

(assert (=> b!7258026 m!7940638))

(assert (=> b!7257841 d!2257446))

(declare-fun d!2257448 () Bool)

(declare-fun e!4352151 () Bool)

(assert (=> d!2257448 e!4352151))

(declare-fun res!2943132 () Bool)

(assert (=> d!2257448 (=> (not res!2943132) (not e!4352151))))

(declare-fun lt!2588840 () Context!15228)

(declare-fun dynLambda!28799 (Int Context!15228) Bool)

(assert (=> d!2257448 (= res!2943132 (dynLambda!28799 lambda!445677 lt!2588840))))

(declare-fun getWitness!2251 (List!70604 Int) Context!15228)

(assert (=> d!2257448 (= lt!2588840 (getWitness!2251 (toList!11503 lt!2588662) lambda!445677))))

(assert (=> d!2257448 (exists!4426 lt!2588662 lambda!445677)))

(assert (=> d!2257448 (= (getWitness!2249 lt!2588662 lambda!445677) lt!2588840)))

(declare-fun b!7258030 () Bool)

(assert (=> b!7258030 (= e!4352151 (set.member lt!2588840 lt!2588662))))

(assert (= (and d!2257448 res!2943132) b!7258030))

(declare-fun b_lambda!279093 () Bool)

(assert (=> (not b_lambda!279093) (not d!2257448)))

(declare-fun m!7940760 () Bool)

(assert (=> d!2257448 m!7940760))

(assert (=> d!2257448 m!7940432))

(assert (=> d!2257448 m!7940432))

(declare-fun m!7940762 () Bool)

(assert (=> d!2257448 m!7940762))

(assert (=> d!2257448 m!7940434))

(declare-fun m!7940764 () Bool)

(assert (=> b!7258030 m!7940764))

(assert (=> b!7257841 d!2257448))

(declare-fun d!2257450 () Bool)

(assert (=> d!2257450 (= (isEmpty!40585 (exprs!8114 ct1!232)) (is-Nil!70479 (exprs!8114 ct1!232)))))

(assert (=> b!7257841 d!2257450))

(assert (=> b!7257841 d!2257412))

(declare-fun d!2257452 () Bool)

(declare-fun c!1349852 () Bool)

(assert (=> d!2257452 (= c!1349852 (isEmpty!40587 (t!384666 s1!1971)))))

(declare-fun e!4352152 () Bool)

(assert (=> d!2257452 (= (matchZipper!3584 lt!2588642 (t!384666 s1!1971)) e!4352152)))

(declare-fun b!7258031 () Bool)

(assert (=> b!7258031 (= e!4352152 (nullableZipper!2931 lt!2588642))))

(declare-fun b!7258032 () Bool)

(assert (=> b!7258032 (= e!4352152 (matchZipper!3584 (derivationStepZipper!3452 lt!2588642 (head!14928 (t!384666 s1!1971))) (tail!14373 (t!384666 s1!1971))))))

(assert (= (and d!2257452 c!1349852) b!7258031))

(assert (= (and d!2257452 (not c!1349852)) b!7258032))

(assert (=> d!2257452 m!7940592))

(declare-fun m!7940766 () Bool)

(assert (=> b!7258031 m!7940766))

(assert (=> b!7258032 m!7940596))

(assert (=> b!7258032 m!7940596))

(declare-fun m!7940768 () Bool)

(assert (=> b!7258032 m!7940768))

(assert (=> b!7258032 m!7940600))

(assert (=> b!7258032 m!7940768))

(assert (=> b!7258032 m!7940600))

(declare-fun m!7940770 () Bool)

(assert (=> b!7258032 m!7940770))

(assert (=> b!7257843 d!2257452))

(declare-fun bm!661487 () Bool)

(declare-fun call!661492 () (Set Context!15228))

(assert (=> bm!661487 (= call!661492 (derivationStepZipperDown!2668 (h!76927 (exprs!8114 lt!2588650)) (Context!15229 (t!384667 (exprs!8114 lt!2588650))) (h!76926 s1!1971)))))

(declare-fun e!4352155 () (Set Context!15228))

(declare-fun b!7258033 () Bool)

(assert (=> b!7258033 (= e!4352155 (set.union call!661492 (derivationStepZipperUp!2498 (Context!15229 (t!384667 (exprs!8114 lt!2588650))) (h!76926 s1!1971))))))

(declare-fun b!7258034 () Bool)

(declare-fun e!4352153 () (Set Context!15228))

(assert (=> b!7258034 (= e!4352153 (as set.empty (Set Context!15228)))))

(declare-fun b!7258035 () Bool)

(assert (=> b!7258035 (= e!4352155 e!4352153)))

(declare-fun c!1349853 () Bool)

(assert (=> b!7258035 (= c!1349853 (is-Cons!70479 (exprs!8114 lt!2588650)))))

(declare-fun b!7258036 () Bool)

(assert (=> b!7258036 (= e!4352153 call!661492)))

(declare-fun b!7258037 () Bool)

(declare-fun e!4352154 () Bool)

(assert (=> b!7258037 (= e!4352154 (nullable!7934 (h!76927 (exprs!8114 lt!2588650))))))

(declare-fun d!2257454 () Bool)

(declare-fun c!1349854 () Bool)

(assert (=> d!2257454 (= c!1349854 e!4352154)))

(declare-fun res!2943133 () Bool)

(assert (=> d!2257454 (=> (not res!2943133) (not e!4352154))))

(assert (=> d!2257454 (= res!2943133 (is-Cons!70479 (exprs!8114 lt!2588650)))))

(assert (=> d!2257454 (= (derivationStepZipperUp!2498 lt!2588650 (h!76926 s1!1971)) e!4352155)))

(assert (= (and d!2257454 res!2943133) b!7258037))

(assert (= (and d!2257454 c!1349854) b!7258033))

(assert (= (and d!2257454 (not c!1349854)) b!7258035))

(assert (= (and b!7258035 c!1349853) b!7258036))

(assert (= (and b!7258035 (not c!1349853)) b!7258034))

(assert (= (or b!7258033 b!7258036) bm!661487))

(declare-fun m!7940772 () Bool)

(assert (=> bm!661487 m!7940772))

(declare-fun m!7940774 () Bool)

(assert (=> b!7258033 m!7940774))

(declare-fun m!7940776 () Bool)

(assert (=> b!7258037 m!7940776))

(assert (=> b!7257843 d!2257454))

(declare-fun d!2257456 () Bool)

(declare-fun e!4352158 () Bool)

(assert (=> d!2257456 (= (matchZipper!3584 (set.union lt!2588643 lt!2588666) lt!2588670) e!4352158)))

(declare-fun res!2943136 () Bool)

(assert (=> d!2257456 (=> res!2943136 e!4352158)))

(assert (=> d!2257456 (= res!2943136 (matchZipper!3584 lt!2588643 lt!2588670))))

(declare-fun lt!2588843 () Unit!163964)

(declare-fun choose!56155 ((Set Context!15228) (Set Context!15228) List!70602) Unit!163964)

(assert (=> d!2257456 (= lt!2588843 (choose!56155 lt!2588643 lt!2588666 lt!2588670))))

(assert (=> d!2257456 (= (lemmaZipperConcatMatchesSameAsBothZippers!1729 lt!2588643 lt!2588666 lt!2588670) lt!2588843)))

(declare-fun b!7258040 () Bool)

(assert (=> b!7258040 (= e!4352158 (matchZipper!3584 lt!2588666 lt!2588670))))

(assert (= (and d!2257456 (not res!2943136)) b!7258040))

(assert (=> d!2257456 m!7940422))

(assert (=> d!2257456 m!7940412))

(declare-fun m!7940778 () Bool)

(assert (=> d!2257456 m!7940778))

(assert (=> b!7258040 m!7940440))

(assert (=> b!7257843 d!2257456))

(declare-fun d!2257458 () Bool)

(declare-fun c!1349855 () Bool)

(assert (=> d!2257458 (= c!1349855 (isEmpty!40587 lt!2588670))))

(declare-fun e!4352159 () Bool)

(assert (=> d!2257458 (= (matchZipper!3584 (set.union lt!2588643 lt!2588666) lt!2588670) e!4352159)))

(declare-fun b!7258041 () Bool)

(assert (=> b!7258041 (= e!4352159 (nullableZipper!2931 (set.union lt!2588643 lt!2588666)))))

(declare-fun b!7258042 () Bool)

(assert (=> b!7258042 (= e!4352159 (matchZipper!3584 (derivationStepZipper!3452 (set.union lt!2588643 lt!2588666) (head!14928 lt!2588670)) (tail!14373 lt!2588670)))))

(assert (= (and d!2257458 c!1349855) b!7258041))

(assert (= (and d!2257458 (not c!1349855)) b!7258042))

(assert (=> d!2257458 m!7940716))

(declare-fun m!7940780 () Bool)

(assert (=> b!7258041 m!7940780))

(assert (=> b!7258042 m!7940720))

(assert (=> b!7258042 m!7940720))

(declare-fun m!7940782 () Bool)

(assert (=> b!7258042 m!7940782))

(assert (=> b!7258042 m!7940724))

(assert (=> b!7258042 m!7940782))

(assert (=> b!7258042 m!7940724))

(declare-fun m!7940784 () Bool)

(assert (=> b!7258042 m!7940784))

(assert (=> b!7257843 d!2257458))

(declare-fun d!2257460 () Bool)

(declare-fun e!4352160 () Bool)

(assert (=> d!2257460 (= (matchZipper!3584 (set.union lt!2588642 lt!2588672) (t!384666 s1!1971)) e!4352160)))

(declare-fun res!2943137 () Bool)

(assert (=> d!2257460 (=> res!2943137 e!4352160)))

(assert (=> d!2257460 (= res!2943137 (matchZipper!3584 lt!2588642 (t!384666 s1!1971)))))

(declare-fun lt!2588844 () Unit!163964)

(assert (=> d!2257460 (= lt!2588844 (choose!56155 lt!2588642 lt!2588672 (t!384666 s1!1971)))))

(assert (=> d!2257460 (= (lemmaZipperConcatMatchesSameAsBothZippers!1729 lt!2588642 lt!2588672 (t!384666 s1!1971)) lt!2588844)))

(declare-fun b!7258043 () Bool)

(assert (=> b!7258043 (= e!4352160 (matchZipper!3584 lt!2588672 (t!384666 s1!1971)))))

(assert (= (and d!2257460 (not res!2943137)) b!7258043))

(assert (=> d!2257460 m!7940426))

(assert (=> d!2257460 m!7940424))

(declare-fun m!7940786 () Bool)

(assert (=> d!2257460 m!7940786))

(assert (=> b!7258043 m!7940438))

(assert (=> b!7257843 d!2257460))

(assert (=> b!7257843 d!2257398))

(declare-fun d!2257462 () Bool)

(declare-fun c!1349856 () Bool)

(assert (=> d!2257462 (= c!1349856 (isEmpty!40587 (t!384666 s1!1971)))))

(declare-fun e!4352161 () Bool)

(assert (=> d!2257462 (= (matchZipper!3584 (set.union lt!2588642 lt!2588672) (t!384666 s1!1971)) e!4352161)))

(declare-fun b!7258044 () Bool)

(assert (=> b!7258044 (= e!4352161 (nullableZipper!2931 (set.union lt!2588642 lt!2588672)))))

(declare-fun b!7258045 () Bool)

(assert (=> b!7258045 (= e!4352161 (matchZipper!3584 (derivationStepZipper!3452 (set.union lt!2588642 lt!2588672) (head!14928 (t!384666 s1!1971))) (tail!14373 (t!384666 s1!1971))))))

(assert (= (and d!2257462 c!1349856) b!7258044))

(assert (= (and d!2257462 (not c!1349856)) b!7258045))

(assert (=> d!2257462 m!7940592))

(declare-fun m!7940788 () Bool)

(assert (=> b!7258044 m!7940788))

(assert (=> b!7258045 m!7940596))

(assert (=> b!7258045 m!7940596))

(declare-fun m!7940790 () Bool)

(assert (=> b!7258045 m!7940790))

(assert (=> b!7258045 m!7940600))

(assert (=> b!7258045 m!7940790))

(assert (=> b!7258045 m!7940600))

(declare-fun m!7940792 () Bool)

(assert (=> b!7258045 m!7940792))

(assert (=> b!7257843 d!2257462))

(declare-fun d!2257464 () Bool)

(declare-fun c!1349857 () Bool)

(assert (=> d!2257464 (= c!1349857 (isEmpty!40587 lt!2588670))))

(declare-fun e!4352162 () Bool)

(assert (=> d!2257464 (= (matchZipper!3584 lt!2588643 lt!2588670) e!4352162)))

(declare-fun b!7258046 () Bool)

(assert (=> b!7258046 (= e!4352162 (nullableZipper!2931 lt!2588643))))

(declare-fun b!7258047 () Bool)

(assert (=> b!7258047 (= e!4352162 (matchZipper!3584 (derivationStepZipper!3452 lt!2588643 (head!14928 lt!2588670)) (tail!14373 lt!2588670)))))

(assert (= (and d!2257464 c!1349857) b!7258046))

(assert (= (and d!2257464 (not c!1349857)) b!7258047))

(assert (=> d!2257464 m!7940716))

(declare-fun m!7940794 () Bool)

(assert (=> b!7258046 m!7940794))

(assert (=> b!7258047 m!7940720))

(assert (=> b!7258047 m!7940720))

(declare-fun m!7940796 () Bool)

(assert (=> b!7258047 m!7940796))

(assert (=> b!7258047 m!7940724))

(assert (=> b!7258047 m!7940796))

(assert (=> b!7258047 m!7940724))

(declare-fun m!7940798 () Bool)

(assert (=> b!7258047 m!7940798))

(assert (=> b!7257843 d!2257464))

(declare-fun bm!661488 () Bool)

(declare-fun call!661493 () (Set Context!15228))

(assert (=> bm!661488 (= call!661493 (derivationStepZipperDown!2668 (h!76927 (exprs!8114 lt!2588648)) (Context!15229 (t!384667 (exprs!8114 lt!2588648))) (h!76926 s1!1971)))))

(declare-fun b!7258048 () Bool)

(declare-fun e!4352165 () (Set Context!15228))

(assert (=> b!7258048 (= e!4352165 (set.union call!661493 (derivationStepZipperUp!2498 (Context!15229 (t!384667 (exprs!8114 lt!2588648))) (h!76926 s1!1971))))))

(declare-fun b!7258049 () Bool)

(declare-fun e!4352163 () (Set Context!15228))

(assert (=> b!7258049 (= e!4352163 (as set.empty (Set Context!15228)))))

(declare-fun b!7258050 () Bool)

(assert (=> b!7258050 (= e!4352165 e!4352163)))

(declare-fun c!1349858 () Bool)

(assert (=> b!7258050 (= c!1349858 (is-Cons!70479 (exprs!8114 lt!2588648)))))

(declare-fun b!7258051 () Bool)

(assert (=> b!7258051 (= e!4352163 call!661493)))

(declare-fun b!7258052 () Bool)

(declare-fun e!4352164 () Bool)

(assert (=> b!7258052 (= e!4352164 (nullable!7934 (h!76927 (exprs!8114 lt!2588648))))))

(declare-fun d!2257466 () Bool)

(declare-fun c!1349859 () Bool)

(assert (=> d!2257466 (= c!1349859 e!4352164)))

(declare-fun res!2943138 () Bool)

(assert (=> d!2257466 (=> (not res!2943138) (not e!4352164))))

(assert (=> d!2257466 (= res!2943138 (is-Cons!70479 (exprs!8114 lt!2588648)))))

(assert (=> d!2257466 (= (derivationStepZipperUp!2498 lt!2588648 (h!76926 s1!1971)) e!4352165)))

(assert (= (and d!2257466 res!2943138) b!7258052))

(assert (= (and d!2257466 c!1349859) b!7258048))

(assert (= (and d!2257466 (not c!1349859)) b!7258050))

(assert (= (and b!7258050 c!1349858) b!7258051))

(assert (= (and b!7258050 (not c!1349858)) b!7258049))

(assert (= (or b!7258048 b!7258051) bm!661488))

(declare-fun m!7940800 () Bool)

(assert (=> bm!661488 m!7940800))

(declare-fun m!7940802 () Bool)

(assert (=> b!7258048 m!7940802))

(declare-fun m!7940804 () Bool)

(assert (=> b!7258052 m!7940804))

(assert (=> b!7257843 d!2257466))

(declare-fun bs!1908069 () Bool)

(declare-fun d!2257468 () Bool)

(assert (= bs!1908069 (and d!2257468 b!7257853)))

(declare-fun lambda!445744 () Int)

(assert (=> bs!1908069 (= lambda!445744 lambda!445677)))

(declare-fun bs!1908070 () Bool)

(assert (= bs!1908070 (and d!2257468 b!7257852)))

(assert (=> bs!1908070 (= (= (t!384666 s1!1971) lt!2588670) (= lambda!445744 lambda!445679))))

(declare-fun bs!1908071 () Bool)

(assert (= bs!1908071 (and d!2257468 d!2257418)))

(assert (=> bs!1908071 (not (= lambda!445744 lambda!445738))))

(assert (=> d!2257468 true))

(assert (=> d!2257468 (exists!4427 lt!2588658 lambda!445744)))

(declare-fun lt!2588847 () Unit!163964)

(declare-fun choose!56156 (List!70604 List!70602) Unit!163964)

(assert (=> d!2257468 (= lt!2588847 (choose!56156 lt!2588658 (t!384666 s1!1971)))))

(assert (=> d!2257468 (matchZipper!3584 (content!14661 lt!2588658) (t!384666 s1!1971))))

(assert (=> d!2257468 (= (lemmaZipperMatchesExistsMatchingContext!777 lt!2588658 (t!384666 s1!1971)) lt!2588847)))

(declare-fun bs!1908072 () Bool)

(assert (= bs!1908072 d!2257468))

(declare-fun m!7940806 () Bool)

(assert (=> bs!1908072 m!7940806))

(declare-fun m!7940808 () Bool)

(assert (=> bs!1908072 m!7940808))

(declare-fun m!7940810 () Bool)

(assert (=> bs!1908072 m!7940810))

(assert (=> bs!1908072 m!7940810))

(declare-fun m!7940812 () Bool)

(assert (=> bs!1908072 m!7940812))

(assert (=> b!7257853 d!2257468))

(declare-fun d!2257470 () Bool)

(declare-fun lt!2588848 () Bool)

(assert (=> d!2257470 (= lt!2588848 (exists!4427 (toList!11503 lt!2588662) lambda!445677))))

(assert (=> d!2257470 (= lt!2588848 (choose!56153 lt!2588662 lambda!445677))))

(assert (=> d!2257470 (= (exists!4426 lt!2588662 lambda!445677) lt!2588848)))

(declare-fun bs!1908073 () Bool)

(assert (= bs!1908073 d!2257470))

(assert (=> bs!1908073 m!7940432))

(assert (=> bs!1908073 m!7940432))

(declare-fun m!7940814 () Bool)

(assert (=> bs!1908073 m!7940814))

(declare-fun m!7940816 () Bool)

(assert (=> bs!1908073 m!7940816))

(assert (=> b!7257853 d!2257470))

(declare-fun d!2257472 () Bool)

(declare-fun e!4352166 () Bool)

(assert (=> d!2257472 e!4352166))

(declare-fun res!2943139 () Bool)

(assert (=> d!2257472 (=> (not res!2943139) (not e!4352166))))

(declare-fun lt!2588849 () List!70604)

(assert (=> d!2257472 (= res!2943139 (noDuplicate!3006 lt!2588849))))

(assert (=> d!2257472 (= lt!2588849 (choose!56149 lt!2588662))))

(assert (=> d!2257472 (= (toList!11503 lt!2588662) lt!2588849)))

(declare-fun b!7258053 () Bool)

(assert (=> b!7258053 (= e!4352166 (= (content!14661 lt!2588849) lt!2588662))))

(assert (= (and d!2257472 res!2943139) b!7258053))

(declare-fun m!7940818 () Bool)

(assert (=> d!2257472 m!7940818))

(declare-fun m!7940820 () Bool)

(assert (=> d!2257472 m!7940820))

(declare-fun m!7940822 () Bool)

(assert (=> b!7258053 m!7940822))

(assert (=> b!7257853 d!2257472))

(declare-fun bs!1908074 () Bool)

(declare-fun d!2257474 () Bool)

(assert (= bs!1908074 (and d!2257474 b!7257852)))

(declare-fun lambda!445745 () Int)

(assert (=> bs!1908074 (= lambda!445745 lambda!445678)))

(declare-fun bs!1908075 () Bool)

(assert (= bs!1908075 (and d!2257474 d!2257406)))

(assert (=> bs!1908075 (= lambda!445745 lambda!445730)))

(assert (=> d!2257474 true))

(assert (=> d!2257474 (= (derivationStepZipper!3452 lt!2588665 (h!76926 s1!1971)) (flatMap!2839 lt!2588665 lambda!445745))))

(declare-fun bs!1908076 () Bool)

(assert (= bs!1908076 d!2257474))

(declare-fun m!7940824 () Bool)

(assert (=> bs!1908076 m!7940824))

(assert (=> b!7257853 d!2257474))

(declare-fun bs!1908077 () Bool)

(declare-fun d!2257476 () Bool)

(assert (= bs!1908077 (and d!2257476 b!7257853)))

(declare-fun lambda!445746 () Int)

(assert (=> bs!1908077 (not (= lambda!445746 lambda!445677))))

(declare-fun bs!1908078 () Bool)

(assert (= bs!1908078 (and d!2257476 b!7257852)))

(assert (=> bs!1908078 (not (= lambda!445746 lambda!445679))))

(declare-fun bs!1908079 () Bool)

(assert (= bs!1908079 (and d!2257476 d!2257418)))

(assert (=> bs!1908079 (= (= lambda!445677 lambda!445679) (= lambda!445746 lambda!445738))))

(declare-fun bs!1908080 () Bool)

(assert (= bs!1908080 (and d!2257476 d!2257468)))

(assert (=> bs!1908080 (not (= lambda!445746 lambda!445744))))

(assert (=> d!2257476 true))

(assert (=> d!2257476 (< (dynLambda!28798 order!29021 lambda!445677) (dynLambda!28798 order!29021 lambda!445746))))

(assert (=> d!2257476 (= (exists!4427 lt!2588658 lambda!445677) (not (forall!17528 lt!2588658 lambda!445746)))))

(declare-fun bs!1908081 () Bool)

(assert (= bs!1908081 d!2257476))

(declare-fun m!7940826 () Bool)

(assert (=> bs!1908081 m!7940826))

(assert (=> b!7257853 d!2257476))

(assert (=> b!7257842 d!2257436))

(declare-fun d!2257478 () Bool)

(declare-fun c!1349862 () Bool)

(assert (=> d!2257478 (= c!1349862 (isEmpty!40587 lt!2588670))))

(declare-fun e!4352167 () Bool)

(assert (=> d!2257478 (= (matchZipper!3584 lt!2588666 lt!2588670) e!4352167)))

(declare-fun b!7258054 () Bool)

(assert (=> b!7258054 (= e!4352167 (nullableZipper!2931 lt!2588666))))

(declare-fun b!7258055 () Bool)

(assert (=> b!7258055 (= e!4352167 (matchZipper!3584 (derivationStepZipper!3452 lt!2588666 (head!14928 lt!2588670)) (tail!14373 lt!2588670)))))

(assert (= (and d!2257478 c!1349862) b!7258054))

(assert (= (and d!2257478 (not c!1349862)) b!7258055))

(assert (=> d!2257478 m!7940716))

(declare-fun m!7940828 () Bool)

(assert (=> b!7258054 m!7940828))

(assert (=> b!7258055 m!7940720))

(assert (=> b!7258055 m!7940720))

(declare-fun m!7940830 () Bool)

(assert (=> b!7258055 m!7940830))

(assert (=> b!7258055 m!7940724))

(assert (=> b!7258055 m!7940830))

(assert (=> b!7258055 m!7940724))

(declare-fun m!7940832 () Bool)

(assert (=> b!7258055 m!7940832))

(assert (=> b!7257854 d!2257478))

(declare-fun b!7258060 () Bool)

(declare-fun e!4352170 () Bool)

(declare-fun tp!2038439 () Bool)

(declare-fun tp!2038440 () Bool)

(assert (=> b!7258060 (= e!4352170 (and tp!2038439 tp!2038440))))

(assert (=> b!7257840 (= tp!2038421 e!4352170)))

(assert (= (and b!7257840 (is-Cons!70479 (exprs!8114 ct2!328))) b!7258060))

(declare-fun b!7258065 () Bool)

(declare-fun e!4352173 () Bool)

(declare-fun tp!2038443 () Bool)

(assert (=> b!7258065 (= e!4352173 (and tp_is_empty!46813 tp!2038443))))

(assert (=> b!7257850 (= tp!2038420 e!4352173)))

(assert (= (and b!7257850 (is-Cons!70478 (t!384666 s2!1849))) b!7258065))

(declare-fun b!7258066 () Bool)

(declare-fun e!4352174 () Bool)

(declare-fun tp!2038444 () Bool)

(assert (=> b!7258066 (= e!4352174 (and tp_is_empty!46813 tp!2038444))))

(assert (=> b!7257846 (= tp!2038419 e!4352174)))

(assert (= (and b!7257846 (is-Cons!70478 (t!384666 s1!1971))) b!7258066))

(declare-fun b!7258067 () Bool)

(declare-fun e!4352175 () Bool)

(declare-fun tp!2038445 () Bool)

(declare-fun tp!2038446 () Bool)

(assert (=> b!7258067 (= e!4352175 (and tp!2038445 tp!2038446))))

(assert (=> b!7257844 (= tp!2038422 e!4352175)))

(assert (= (and b!7257844 (is-Cons!70479 (exprs!8114 ct1!232))) b!7258067))

(declare-fun b_lambda!279095 () Bool)

(assert (= b_lambda!279089 (or b!7257852 b_lambda!279095)))

(declare-fun bs!1908082 () Bool)

(declare-fun d!2257480 () Bool)

(assert (= bs!1908082 (and d!2257480 b!7257852)))

(assert (=> bs!1908082 (= (dynLambda!28797 lambda!445678 lt!2588656) (derivationStepZipperUp!2498 lt!2588656 (h!76926 s1!1971)))))

(assert (=> bs!1908082 m!7940372))

(assert (=> d!2257414 d!2257480))

(declare-fun b_lambda!279097 () Bool)

(assert (= b_lambda!279091 (or b!7257852 b_lambda!279097)))

(declare-fun bs!1908083 () Bool)

(declare-fun d!2257482 () Bool)

(assert (= bs!1908083 (and d!2257482 b!7257852)))

(assert (=> bs!1908083 (= (dynLambda!28797 lambda!445678 ct1!232) (derivationStepZipperUp!2498 ct1!232 (h!76926 s1!1971)))))

(assert (=> bs!1908083 m!7940346))

(assert (=> d!2257420 d!2257482))

(declare-fun b_lambda!279099 () Bool)

(assert (= b_lambda!279093 (or b!7257853 b_lambda!279099)))

(declare-fun bs!1908084 () Bool)

(declare-fun d!2257484 () Bool)

(assert (= bs!1908084 (and d!2257484 b!7257853)))

(assert (=> bs!1908084 (= (dynLambda!28799 lambda!445677 lt!2588840) (matchZipper!3584 (set.insert lt!2588840 (as set.empty (Set Context!15228))) (t!384666 s1!1971)))))

(declare-fun m!7940834 () Bool)

(assert (=> bs!1908084 m!7940834))

(assert (=> bs!1908084 m!7940834))

(declare-fun m!7940836 () Bool)

(assert (=> bs!1908084 m!7940836))

(assert (=> d!2257448 d!2257484))

(push 1)

(assert (not d!2257410))

(assert (not b!7258000))

(assert (not b!7257981))

(assert (not bm!661484))

(assert (not d!2257446))

(assert (not d!2257478))

(assert (not b!7258037))

(assert (not b!7258031))

(assert (not d!2257462))

(assert (not d!2257442))

(assert (not d!2257386))

(assert (not b!7257915))

(assert (not d!2257426))

(assert (not b!7258018))

(assert (not b!7258021))

(assert (not b!7258006))

(assert (not d!2257402))

(assert (not b!7258046))

(assert (not b!7258065))

(assert (not d!2257460))

(assert (not b!7258041))

(assert (not d!2257414))

(assert (not d!2257458))

(assert (not bm!661476))

(assert (not d!2257408))

(assert (not d!2257416))

(assert (not b!7258007))

(assert (not b_lambda!279097))

(assert (not b!7257943))

(assert (not b!7258032))

(assert (not b!7257999))

(assert (not b!7257919))

(assert (not b!7257978))

(assert (not b_lambda!279099))

(assert (not b!7258040))

(assert (not bs!1908082))

(assert (not b!7258045))

(assert (not d!2257468))

(assert (not b!7258033))

(assert (not bm!661481))

(assert (not b!7258066))

(assert (not d!2257388))

(assert (not d!2257432))

(assert (not d!2257430))

(assert (not d!2257472))

(assert (not b!7258053))

(assert (not bm!661474))

(assert (not d!2257464))

(assert (not b!7257964))

(assert (not b!7258026))

(assert (not d!2257382))

(assert (not b!7257920))

(assert (not d!2257406))

(assert (not b!7258043))

(assert (not b_lambda!279095))

(assert (not b!7258002))

(assert (not d!2257470))

(assert (not b!7258055))

(assert (not d!2257412))

(assert (not b!7257987))

(assert (not b!7258042))

(assert (not bm!661471))

(assert (not b!7258067))

(assert (not b!7257918))

(assert (not d!2257436))

(assert (not b!7258022))

(assert (not bs!1908084))

(assert (not bm!661480))

(assert (not b!7258047))

(assert (not d!2257420))

(assert (not b!7257916))

(assert (not b!7258044))

(assert (not b!7258054))

(assert (not b!7257979))

(assert (not bm!661486))

(assert (not d!2257424))

(assert (not b!7257968))

(assert (not bm!661488))

(assert (not bs!1908083))

(assert (not d!2257418))

(assert (not d!2257384))

(assert (not d!2257448))

(assert (not bm!661479))

(assert (not b!7258025))

(assert (not d!2257456))

(assert (not d!2257476))

(assert (not b!7258052))

(assert (not d!2257452))

(assert (not d!2257404))

(assert (not d!2257398))

(assert tp_is_empty!46813)

(assert (not b!7257982))

(assert (not d!2257474))

(assert (not b!7258060))

(assert (not bm!661487))

(assert (not d!2257444))

(assert (not d!2257440))

(assert (not b!7257917))

(assert (not b!7258048))

(assert (not b!7258019))

(assert (not d!2257390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

