; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707444 () Bool)

(assert start!707444)

(declare-fun b!7260091 () Bool)

(assert (=> b!7260091 true))

(declare-fun b!7260088 () Bool)

(assert (=> b!7260088 true))

(declare-fun bs!1909206 () Bool)

(assert (= bs!1909206 (and b!7260088 b!7260091)))

(declare-fun lambda!446281 () Int)

(declare-datatypes ((C!37638 0))(
  ( (C!37639 (val!28767 Int)) )
))
(declare-datatypes ((List!70626 0))(
  ( (Nil!70502) (Cons!70502 (h!76950 C!37638) (t!384692 List!70626)) )
))
(declare-fun lt!2590109 () List!70626)

(declare-fun lambda!446283 () Int)

(declare-fun s1!1971 () List!70626)

(assert (=> bs!1909206 (= (= lt!2590109 (t!384692 s1!1971)) (= lambda!446283 lambda!446281))))

(assert (=> b!7260088 true))

(declare-fun b!7260074 () Bool)

(declare-fun e!4353442 () Bool)

(declare-datatypes ((Regex!18682 0))(
  ( (ElementMatch!18682 (c!1350587 C!37638)) (Concat!27527 (regOne!37876 Regex!18682) (regTwo!37876 Regex!18682)) (EmptyExpr!18682) (Star!18682 (reg!19011 Regex!18682)) (EmptyLang!18682) (Union!18682 (regOne!37877 Regex!18682) (regTwo!37877 Regex!18682)) )
))
(declare-datatypes ((List!70627 0))(
  ( (Nil!70503) (Cons!70503 (h!76951 Regex!18682) (t!384693 List!70627)) )
))
(declare-datatypes ((Context!15244 0))(
  ( (Context!15245 (exprs!8122 List!70627)) )
))
(declare-fun lt!2590093 () (Set Context!15244))

(declare-fun matchZipper!3592 ((Set Context!15244) List!70626) Bool)

(assert (=> b!7260074 (= e!4353442 (matchZipper!3592 lt!2590093 lt!2590109))))

(declare-fun b!7260075 () Bool)

(declare-fun e!4353453 () Bool)

(declare-fun exists!4442 ((Set Context!15244) Int) Bool)

(assert (=> b!7260075 (= e!4353453 (exists!4442 lt!2590093 lambda!446283))))

(declare-fun b!7260076 () Bool)

(declare-fun res!2943769 () Bool)

(declare-fun e!4353455 () Bool)

(assert (=> b!7260076 (=> (not res!2943769) (not e!4353455))))

(declare-fun ct2!328 () Context!15244)

(declare-fun s2!1849 () List!70626)

(assert (=> b!7260076 (= res!2943769 (matchZipper!3592 (set.insert ct2!328 (as set.empty (Set Context!15244))) s2!1849))))

(declare-fun b!7260077 () Bool)

(declare-fun e!4353447 () Bool)

(declare-fun tp!2038696 () Bool)

(assert (=> b!7260077 (= e!4353447 tp!2038696)))

(declare-fun b!7260078 () Bool)

(declare-datatypes ((Unit!163998 0))(
  ( (Unit!163999) )
))
(declare-fun e!4353449 () Unit!163998)

(declare-fun Unit!164000 () Unit!163998)

(assert (=> b!7260078 (= e!4353449 Unit!164000)))

(declare-fun lt!2590106 () Unit!163998)

(declare-fun lambda!446280 () Int)

(declare-fun ct1!232 () Context!15244)

(declare-fun lemmaConcatPreservesForall!1489 (List!70627 List!70627 Int) Unit!163998)

(assert (=> b!7260078 (= lt!2590106 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun lt!2590111 () (Set Context!15244))

(declare-fun lt!2590112 () Context!15244)

(declare-fun derivationStepZipperUp!2506 (Context!15244 C!37638) (Set Context!15244))

(assert (=> b!7260078 (= lt!2590111 (derivationStepZipperUp!2506 lt!2590112 (h!76950 s1!1971)))))

(declare-fun lt!2590103 () Unit!163998)

(declare-fun lt!2590129 () (Set Context!15244))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1737 ((Set Context!15244) (Set Context!15244) List!70626) Unit!163998)

(assert (=> b!7260078 (= lt!2590103 (lemmaZipperConcatMatchesSameAsBothZippers!1737 lt!2590129 lt!2590111 (t!384692 s1!1971)))))

(declare-fun res!2943763 () Bool)

(assert (=> b!7260078 (= res!2943763 (matchZipper!3592 lt!2590129 (t!384692 s1!1971)))))

(declare-fun e!4353456 () Bool)

(assert (=> b!7260078 (=> res!2943763 e!4353456)))

(assert (=> b!7260078 (= (matchZipper!3592 (set.union lt!2590129 lt!2590111) (t!384692 s1!1971)) e!4353456)))

(declare-fun lt!2590114 () Unit!163998)

(assert (=> b!7260078 (= lt!2590114 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun lt!2590115 () (Set Context!15244))

(declare-fun lt!2590118 () Context!15244)

(assert (=> b!7260078 (= lt!2590115 (derivationStepZipperUp!2506 lt!2590118 (h!76950 s1!1971)))))

(declare-fun lt!2590094 () (Set Context!15244))

(declare-fun lt!2590087 () Unit!163998)

(assert (=> b!7260078 (= lt!2590087 (lemmaZipperConcatMatchesSameAsBothZippers!1737 lt!2590094 lt!2590115 lt!2590109))))

(declare-fun res!2943772 () Bool)

(assert (=> b!7260078 (= res!2943772 (matchZipper!3592 lt!2590094 lt!2590109))))

(declare-fun e!4353452 () Bool)

(assert (=> b!7260078 (=> res!2943772 e!4353452)))

(assert (=> b!7260078 (= (matchZipper!3592 (set.union lt!2590094 lt!2590115) lt!2590109) e!4353452)))

(declare-fun res!2943765 () Bool)

(assert (=> start!707444 (=> (not res!2943765) (not e!4353455))))

(declare-fun lt!2590110 () (Set Context!15244))

(assert (=> start!707444 (= res!2943765 (matchZipper!3592 lt!2590110 s1!1971))))

(assert (=> start!707444 (= lt!2590110 (set.insert ct1!232 (as set.empty (Set Context!15244))))))

(assert (=> start!707444 e!4353455))

(declare-fun inv!89716 (Context!15244) Bool)

(assert (=> start!707444 (and (inv!89716 ct1!232) e!4353447)))

(declare-fun e!4353446 () Bool)

(assert (=> start!707444 e!4353446))

(declare-fun e!4353450 () Bool)

(assert (=> start!707444 e!4353450))

(declare-fun e!4353443 () Bool)

(assert (=> start!707444 (and (inv!89716 ct2!328) e!4353443)))

(declare-fun b!7260079 () Bool)

(assert (=> b!7260079 (= e!4353452 (matchZipper!3592 lt!2590115 lt!2590109))))

(declare-fun b!7260080 () Bool)

(declare-fun e!4353445 () Bool)

(declare-fun e!4353441 () Bool)

(assert (=> b!7260080 (= e!4353445 e!4353441)))

(declare-fun res!2943767 () Bool)

(assert (=> b!7260080 (=> res!2943767 e!4353441)))

(declare-fun isEmpty!40599 (List!70627) Bool)

(assert (=> b!7260080 (= res!2943767 (isEmpty!40599 (exprs!8122 ct1!232)))))

(declare-fun lt!2590092 () (Set Context!15244))

(assert (=> b!7260080 (= lt!2590092 (derivationStepZipperUp!2506 ct1!232 (h!76950 s1!1971)))))

(declare-fun lt!2590121 () Unit!163998)

(declare-fun lt!2590113 () Context!15244)

(assert (=> b!7260080 (= lt!2590121 (lemmaConcatPreservesForall!1489 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun lt!2590100 () Context!15244)

(assert (=> b!7260080 (matchZipper!3592 (set.insert lt!2590100 (as set.empty (Set Context!15244))) lt!2590109)))

(declare-fun ++!16626 (List!70626 List!70626) List!70626)

(assert (=> b!7260080 (= lt!2590109 (++!16626 (t!384692 s1!1971) s2!1849))))

(declare-fun ++!16627 (List!70627 List!70627) List!70627)

(assert (=> b!7260080 (= lt!2590100 (Context!15245 (++!16627 (exprs!8122 lt!2590113) (exprs!8122 ct2!328))))))

(declare-fun lt!2590105 () Unit!163998)

(assert (=> b!7260080 (= lt!2590105 (lemmaConcatPreservesForall!1489 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun lt!2590104 () Unit!163998)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!427 (Context!15244 Context!15244 List!70626 List!70626) Unit!163998)

(assert (=> b!7260080 (= lt!2590104 (lemmaConcatenateContextMatchesConcatOfStrings!427 lt!2590113 ct2!328 (t!384692 s1!1971) s2!1849))))

(declare-fun lt!2590123 () (Set Context!15244))

(declare-fun getWitness!2263 ((Set Context!15244) Int) Context!15244)

(assert (=> b!7260080 (= lt!2590113 (getWitness!2263 lt!2590123 lambda!446281))))

(declare-fun b!7260081 () Bool)

(assert (=> b!7260081 (= e!4353456 (matchZipper!3592 lt!2590111 (t!384692 s1!1971)))))

(declare-fun b!7260082 () Bool)

(declare-fun e!4353454 () Bool)

(declare-fun e!4353451 () Bool)

(assert (=> b!7260082 (= e!4353454 e!4353451)))

(declare-fun res!2943764 () Bool)

(assert (=> b!7260082 (=> (not res!2943764) (not e!4353451))))

(assert (=> b!7260082 (= res!2943764 (matchZipper!3592 lt!2590123 (t!384692 s1!1971)))))

(declare-fun derivationStepZipper!3460 ((Set Context!15244) C!37638) (Set Context!15244))

(assert (=> b!7260082 (= lt!2590123 (derivationStepZipper!3460 lt!2590110 (h!76950 s1!1971)))))

(declare-fun b!7260083 () Bool)

(declare-fun tp_is_empty!46829 () Bool)

(declare-fun tp!2038697 () Bool)

(assert (=> b!7260083 (= e!4353450 (and tp_is_empty!46829 tp!2038697))))

(declare-fun b!7260084 () Bool)

(declare-fun e!4353448 () Bool)

(assert (=> b!7260084 (= e!4353441 e!4353448)))

(declare-fun res!2943768 () Bool)

(assert (=> b!7260084 (=> res!2943768 e!4353448)))

(declare-fun lt!2590088 () List!70627)

(assert (=> b!7260084 (= res!2943768 (isEmpty!40599 lt!2590088))))

(declare-fun lt!2590102 () Unit!163998)

(assert (=> b!7260084 (= lt!2590102 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun lt!2590107 () (Set Context!15244))

(declare-fun lt!2590108 () Context!15244)

(assert (=> b!7260084 (= lt!2590107 (derivationStepZipperUp!2506 lt!2590108 (h!76950 s1!1971)))))

(declare-fun lt!2590122 () Unit!163998)

(assert (=> b!7260084 (= lt!2590122 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun derivationStepZipperDown!2676 (Regex!18682 Context!15244 C!37638) (Set Context!15244))

(assert (=> b!7260084 (= lt!2590129 (derivationStepZipperDown!2676 (h!76951 (exprs!8122 ct1!232)) lt!2590112 (h!76950 s1!1971)))))

(declare-fun tail!14388 (List!70627) List!70627)

(assert (=> b!7260084 (= lt!2590112 (Context!15245 (tail!14388 (exprs!8122 ct1!232))))))

(declare-fun b!7260085 () Bool)

(declare-fun Unit!164001 () Unit!163998)

(assert (=> b!7260085 (= e!4353449 Unit!164001)))

(declare-fun b!7260086 () Bool)

(declare-fun tp!2038698 () Bool)

(assert (=> b!7260086 (= e!4353443 tp!2038698)))

(declare-fun b!7260087 () Bool)

(declare-fun e!4353444 () Bool)

(assert (=> b!7260087 (= e!4353444 (inv!89716 lt!2590108))))

(declare-fun lt!2590091 () Unit!163998)

(assert (=> b!7260087 (= lt!2590091 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(assert (=> b!7260088 (= e!4353448 e!4353444)))

(declare-fun res!2943770 () Bool)

(assert (=> b!7260088 (=> res!2943770 e!4353444)))

(declare-fun lt!2590124 () (Set Context!15244))

(declare-fun lt!2590116 () List!70626)

(assert (=> b!7260088 (= res!2943770 (not (matchZipper!3592 lt!2590124 lt!2590116)))))

(declare-fun lt!2590098 () Unit!163998)

(assert (=> b!7260088 (= lt!2590098 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(assert (=> b!7260088 e!4353442))

(declare-fun res!2943766 () Bool)

(assert (=> b!7260088 (=> (not res!2943766) (not e!4353442))))

(declare-datatypes ((List!70628 0))(
  ( (Nil!70504) (Cons!70504 (h!76952 Context!15244) (t!384694 List!70628)) )
))
(declare-fun lt!2590095 () List!70628)

(declare-fun content!14679 (List!70628) (Set Context!15244))

(assert (=> b!7260088 (= res!2943766 (matchZipper!3592 (content!14679 lt!2590095) lt!2590109))))

(declare-fun lt!2590119 () Unit!163998)

(declare-fun lemmaExistsMatchingContextThenMatchingString!91 (List!70628 List!70626) Unit!163998)

(assert (=> b!7260088 (= lt!2590119 (lemmaExistsMatchingContextThenMatchingString!91 lt!2590095 lt!2590109))))

(declare-fun toList!11511 ((Set Context!15244)) List!70628)

(assert (=> b!7260088 (= lt!2590095 (toList!11511 lt!2590093))))

(assert (=> b!7260088 e!4353453))

(declare-fun res!2943773 () Bool)

(assert (=> b!7260088 (=> (not res!2943773) (not e!4353453))))

(assert (=> b!7260088 (= res!2943773 (exists!4442 lt!2590093 lambda!446283))))

(declare-fun lt!2590089 () Unit!163998)

(declare-fun lemmaContainsThenExists!230 ((Set Context!15244) Context!15244 Int) Unit!163998)

(assert (=> b!7260088 (= lt!2590089 (lemmaContainsThenExists!230 lt!2590093 lt!2590100 lambda!446283))))

(declare-fun lt!2590120 () Unit!163998)

(assert (=> b!7260088 (= lt!2590120 (lemmaConcatPreservesForall!1489 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446280))))

(assert (=> b!7260088 (set.member lt!2590100 lt!2590093)))

(declare-fun lt!2590101 () Unit!163998)

(assert (=> b!7260088 (= lt!2590101 (lemmaConcatPreservesForall!1489 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446280))))

(assert (=> b!7260088 (set.member lt!2590100 lt!2590107)))

(declare-fun lt!2590125 () Unit!163998)

(assert (=> b!7260088 (= lt!2590125 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun lt!2590097 () Unit!163998)

(assert (=> b!7260088 (= lt!2590097 (lemmaConcatPreservesForall!1489 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun lt!2590127 () Unit!163998)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!37 (Context!15244 Context!15244 Context!15244 C!37638) Unit!163998)

(assert (=> b!7260088 (= lt!2590127 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!37 ct1!232 ct2!328 lt!2590113 (h!76950 s1!1971)))))

(declare-fun tail!14389 (List!70626) List!70626)

(assert (=> b!7260088 (= (tail!14389 lt!2590116) lt!2590109)))

(assert (=> b!7260088 (= lt!2590116 (++!16626 s1!1971 s2!1849))))

(declare-fun lt!2590096 () Unit!163998)

(assert (=> b!7260088 (= lt!2590096 e!4353449)))

(declare-fun c!1350586 () Bool)

(declare-fun nullable!7942 (Regex!18682) Bool)

(assert (=> b!7260088 (= c!1350586 (nullable!7942 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun lambda!446282 () Int)

(declare-fun flatMap!2847 ((Set Context!15244) Int) (Set Context!15244))

(assert (=> b!7260088 (= (flatMap!2847 lt!2590124 lambda!446282) (derivationStepZipperUp!2506 lt!2590108 (h!76950 s1!1971)))))

(declare-fun lt!2590117 () Unit!163998)

(declare-fun lemmaFlatMapOnSingletonSet!2251 ((Set Context!15244) Context!15244 Int) Unit!163998)

(assert (=> b!7260088 (= lt!2590117 (lemmaFlatMapOnSingletonSet!2251 lt!2590124 lt!2590108 lambda!446282))))

(declare-fun lt!2590126 () Unit!163998)

(assert (=> b!7260088 (= lt!2590126 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(assert (=> b!7260088 (= (flatMap!2847 lt!2590110 lambda!446282) (derivationStepZipperUp!2506 ct1!232 (h!76950 s1!1971)))))

(declare-fun lt!2590099 () Unit!163998)

(assert (=> b!7260088 (= lt!2590099 (lemmaFlatMapOnSingletonSet!2251 lt!2590110 ct1!232 lambda!446282))))

(assert (=> b!7260088 (= lt!2590094 (derivationStepZipperDown!2676 (h!76951 (exprs!8122 ct1!232)) lt!2590118 (h!76950 s1!1971)))))

(assert (=> b!7260088 (= lt!2590118 (Context!15245 (tail!14388 lt!2590088)))))

(declare-fun b!7260089 () Bool)

(assert (=> b!7260089 (= e!4353455 e!4353454)))

(declare-fun res!2943762 () Bool)

(assert (=> b!7260089 (=> (not res!2943762) (not e!4353454))))

(assert (=> b!7260089 (= res!2943762 (and (not (is-Nil!70503 (exprs!8122 ct1!232))) (is-Cons!70502 s1!1971)))))

(assert (=> b!7260089 (= lt!2590124 (set.insert lt!2590108 (as set.empty (Set Context!15244))))))

(assert (=> b!7260089 (= lt!2590108 (Context!15245 lt!2590088))))

(assert (=> b!7260089 (= lt!2590088 (++!16627 (exprs!8122 ct1!232) (exprs!8122 ct2!328)))))

(declare-fun lt!2590128 () Unit!163998)

(assert (=> b!7260089 (= lt!2590128 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(declare-fun b!7260090 () Bool)

(declare-fun tp!2038695 () Bool)

(assert (=> b!7260090 (= e!4353446 (and tp_is_empty!46829 tp!2038695))))

(assert (=> b!7260091 (= e!4353451 (not e!4353445))))

(declare-fun res!2943771 () Bool)

(assert (=> b!7260091 (=> res!2943771 e!4353445)))

(assert (=> b!7260091 (= res!2943771 (not (exists!4442 lt!2590123 lambda!446281)))))

(declare-fun lt!2590090 () List!70628)

(declare-fun exists!4443 (List!70628 Int) Bool)

(assert (=> b!7260091 (exists!4443 lt!2590090 lambda!446281)))

(declare-fun lt!2590086 () Unit!163998)

(declare-fun lemmaZipperMatchesExistsMatchingContext!785 (List!70628 List!70626) Unit!163998)

(assert (=> b!7260091 (= lt!2590086 (lemmaZipperMatchesExistsMatchingContext!785 lt!2590090 (t!384692 s1!1971)))))

(assert (=> b!7260091 (= lt!2590090 (toList!11511 lt!2590123))))

(assert (=> b!7260091 (= lt!2590093 (derivationStepZipper!3460 lt!2590124 (h!76950 s1!1971)))))

(assert (= (and start!707444 res!2943765) b!7260076))

(assert (= (and b!7260076 res!2943769) b!7260089))

(assert (= (and b!7260089 res!2943762) b!7260082))

(assert (= (and b!7260082 res!2943764) b!7260091))

(assert (= (and b!7260091 (not res!2943771)) b!7260080))

(assert (= (and b!7260080 (not res!2943767)) b!7260084))

(assert (= (and b!7260084 (not res!2943768)) b!7260088))

(assert (= (and b!7260088 c!1350586) b!7260078))

(assert (= (and b!7260088 (not c!1350586)) b!7260085))

(assert (= (and b!7260078 (not res!2943763)) b!7260081))

(assert (= (and b!7260078 (not res!2943772)) b!7260079))

(assert (= (and b!7260088 res!2943773) b!7260075))

(assert (= (and b!7260088 res!2943766) b!7260074))

(assert (= (and b!7260088 (not res!2943770)) b!7260087))

(assert (= start!707444 b!7260077))

(assert (= (and start!707444 (is-Cons!70502 s1!1971)) b!7260090))

(assert (= (and start!707444 (is-Cons!70502 s2!1849)) b!7260083))

(assert (= start!707444 b!7260086))

(declare-fun m!7944278 () Bool)

(assert (=> b!7260088 m!7944278))

(declare-fun m!7944280 () Bool)

(assert (=> b!7260088 m!7944280))

(declare-fun m!7944282 () Bool)

(assert (=> b!7260088 m!7944282))

(declare-fun m!7944284 () Bool)

(assert (=> b!7260088 m!7944284))

(declare-fun m!7944286 () Bool)

(assert (=> b!7260088 m!7944286))

(declare-fun m!7944288 () Bool)

(assert (=> b!7260088 m!7944288))

(declare-fun m!7944290 () Bool)

(assert (=> b!7260088 m!7944290))

(declare-fun m!7944292 () Bool)

(assert (=> b!7260088 m!7944292))

(declare-fun m!7944294 () Bool)

(assert (=> b!7260088 m!7944294))

(declare-fun m!7944296 () Bool)

(assert (=> b!7260088 m!7944296))

(declare-fun m!7944298 () Bool)

(assert (=> b!7260088 m!7944298))

(declare-fun m!7944300 () Bool)

(assert (=> b!7260088 m!7944300))

(declare-fun m!7944302 () Bool)

(assert (=> b!7260088 m!7944302))

(declare-fun m!7944304 () Bool)

(assert (=> b!7260088 m!7944304))

(declare-fun m!7944306 () Bool)

(assert (=> b!7260088 m!7944306))

(assert (=> b!7260088 m!7944290))

(assert (=> b!7260088 m!7944278))

(declare-fun m!7944308 () Bool)

(assert (=> b!7260088 m!7944308))

(declare-fun m!7944310 () Bool)

(assert (=> b!7260088 m!7944310))

(assert (=> b!7260088 m!7944278))

(declare-fun m!7944312 () Bool)

(assert (=> b!7260088 m!7944312))

(declare-fun m!7944314 () Bool)

(assert (=> b!7260088 m!7944314))

(declare-fun m!7944316 () Bool)

(assert (=> b!7260088 m!7944316))

(assert (=> b!7260088 m!7944284))

(declare-fun m!7944318 () Bool)

(assert (=> b!7260088 m!7944318))

(assert (=> b!7260088 m!7944290))

(declare-fun m!7944320 () Bool)

(assert (=> b!7260088 m!7944320))

(declare-fun m!7944322 () Bool)

(assert (=> b!7260088 m!7944322))

(declare-fun m!7944324 () Bool)

(assert (=> b!7260089 m!7944324))

(declare-fun m!7944326 () Bool)

(assert (=> b!7260089 m!7944326))

(assert (=> b!7260089 m!7944278))

(assert (=> b!7260075 m!7944306))

(declare-fun m!7944328 () Bool)

(assert (=> b!7260082 m!7944328))

(declare-fun m!7944330 () Bool)

(assert (=> b!7260082 m!7944330))

(declare-fun m!7944332 () Bool)

(assert (=> start!707444 m!7944332))

(declare-fun m!7944334 () Bool)

(assert (=> start!707444 m!7944334))

(declare-fun m!7944336 () Bool)

(assert (=> start!707444 m!7944336))

(declare-fun m!7944338 () Bool)

(assert (=> start!707444 m!7944338))

(declare-fun m!7944340 () Bool)

(assert (=> b!7260079 m!7944340))

(declare-fun m!7944342 () Bool)

(assert (=> b!7260074 m!7944342))

(assert (=> b!7260084 m!7944278))

(assert (=> b!7260084 m!7944312))

(declare-fun m!7944344 () Bool)

(assert (=> b!7260084 m!7944344))

(assert (=> b!7260084 m!7944278))

(declare-fun m!7944346 () Bool)

(assert (=> b!7260084 m!7944346))

(declare-fun m!7944348 () Bool)

(assert (=> b!7260084 m!7944348))

(declare-fun m!7944350 () Bool)

(assert (=> b!7260076 m!7944350))

(assert (=> b!7260076 m!7944350))

(declare-fun m!7944352 () Bool)

(assert (=> b!7260076 m!7944352))

(declare-fun m!7944354 () Bool)

(assert (=> b!7260091 m!7944354))

(declare-fun m!7944356 () Bool)

(assert (=> b!7260091 m!7944356))

(declare-fun m!7944358 () Bool)

(assert (=> b!7260091 m!7944358))

(declare-fun m!7944360 () Bool)

(assert (=> b!7260091 m!7944360))

(declare-fun m!7944362 () Bool)

(assert (=> b!7260091 m!7944362))

(declare-fun m!7944364 () Bool)

(assert (=> b!7260081 m!7944364))

(declare-fun m!7944366 () Bool)

(assert (=> b!7260078 m!7944366))

(assert (=> b!7260078 m!7944278))

(declare-fun m!7944368 () Bool)

(assert (=> b!7260078 m!7944368))

(declare-fun m!7944370 () Bool)

(assert (=> b!7260078 m!7944370))

(declare-fun m!7944372 () Bool)

(assert (=> b!7260078 m!7944372))

(declare-fun m!7944374 () Bool)

(assert (=> b!7260078 m!7944374))

(declare-fun m!7944376 () Bool)

(assert (=> b!7260078 m!7944376))

(assert (=> b!7260078 m!7944278))

(declare-fun m!7944378 () Bool)

(assert (=> b!7260078 m!7944378))

(declare-fun m!7944380 () Bool)

(assert (=> b!7260078 m!7944380))

(declare-fun m!7944382 () Bool)

(assert (=> b!7260087 m!7944382))

(assert (=> b!7260087 m!7944278))

(declare-fun m!7944384 () Bool)

(assert (=> b!7260080 m!7944384))

(declare-fun m!7944386 () Bool)

(assert (=> b!7260080 m!7944386))

(declare-fun m!7944388 () Bool)

(assert (=> b!7260080 m!7944388))

(assert (=> b!7260080 m!7944298))

(declare-fun m!7944390 () Bool)

(assert (=> b!7260080 m!7944390))

(declare-fun m!7944392 () Bool)

(assert (=> b!7260080 m!7944392))

(declare-fun m!7944394 () Bool)

(assert (=> b!7260080 m!7944394))

(assert (=> b!7260080 m!7944390))

(assert (=> b!7260080 m!7944290))

(assert (=> b!7260080 m!7944290))

(declare-fun m!7944396 () Bool)

(assert (=> b!7260080 m!7944396))

(push 1)

(assert (not b!7260080))

(assert (not b!7260084))

(assert (not b!7260082))

(assert (not b!7260078))

(assert (not b!7260087))

(assert (not b!7260079))

(assert (not b!7260081))

(assert (not b!7260083))

(assert (not start!707444))

(assert (not b!7260077))

(assert (not b!7260074))

(assert (not b!7260086))

(assert (not b!7260088))

(assert (not b!7260075))

(assert (not b!7260091))

(assert (not b!7260089))

(assert tp_is_empty!46829)

(assert (not b!7260090))

(assert (not b!7260076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2258700 () Bool)

(declare-fun lt!2590264 () Bool)

(assert (=> d!2258700 (= lt!2590264 (exists!4443 (toList!11511 lt!2590093) lambda!446283))))

(declare-fun choose!56212 ((Set Context!15244) Int) Bool)

(assert (=> d!2258700 (= lt!2590264 (choose!56212 lt!2590093 lambda!446283))))

(assert (=> d!2258700 (= (exists!4442 lt!2590093 lambda!446283) lt!2590264)))

(declare-fun bs!1909208 () Bool)

(assert (= bs!1909208 d!2258700))

(assert (=> bs!1909208 m!7944308))

(assert (=> bs!1909208 m!7944308))

(declare-fun m!7944518 () Bool)

(assert (=> bs!1909208 m!7944518))

(declare-fun m!7944520 () Bool)

(assert (=> bs!1909208 m!7944520))

(assert (=> b!7260075 d!2258700))

(declare-fun bs!1909209 () Bool)

(declare-fun d!2258702 () Bool)

(assert (= bs!1909209 (and d!2258702 b!7260089)))

(declare-fun lambda!446332 () Int)

(assert (=> bs!1909209 (= lambda!446332 lambda!446280)))

(declare-fun forall!17539 (List!70627 Int) Bool)

(assert (=> d!2258702 (= (inv!89716 lt!2590108) (forall!17539 (exprs!8122 lt!2590108) lambda!446332))))

(declare-fun bs!1909210 () Bool)

(assert (= bs!1909210 d!2258702))

(declare-fun m!7944522 () Bool)

(assert (=> bs!1909210 m!7944522))

(assert (=> b!7260087 d!2258702))

(declare-fun d!2258704 () Bool)

(assert (=> d!2258704 (forall!17539 (++!16627 (exprs!8122 ct1!232) (exprs!8122 ct2!328)) lambda!446280)))

(declare-fun lt!2590267 () Unit!163998)

(declare-fun choose!56213 (List!70627 List!70627 Int) Unit!163998)

(assert (=> d!2258704 (= lt!2590267 (choose!56213 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280))))

(assert (=> d!2258704 (forall!17539 (exprs!8122 ct1!232) lambda!446280)))

(assert (=> d!2258704 (= (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446280) lt!2590267)))

(declare-fun bs!1909211 () Bool)

(assert (= bs!1909211 d!2258704))

(assert (=> bs!1909211 m!7944326))

(assert (=> bs!1909211 m!7944326))

(declare-fun m!7944524 () Bool)

(assert (=> bs!1909211 m!7944524))

(declare-fun m!7944526 () Bool)

(assert (=> bs!1909211 m!7944526))

(declare-fun m!7944528 () Bool)

(assert (=> bs!1909211 m!7944528))

(assert (=> b!7260087 d!2258704))

(declare-fun d!2258706 () Bool)

(declare-fun c!1350609 () Bool)

(declare-fun isEmpty!40601 (List!70626) Bool)

(assert (=> d!2258706 (= c!1350609 (isEmpty!40601 s2!1849))))

(declare-fun e!4353507 () Bool)

(assert (=> d!2258706 (= (matchZipper!3592 (set.insert ct2!328 (as set.empty (Set Context!15244))) s2!1849) e!4353507)))

(declare-fun b!7260158 () Bool)

(declare-fun nullableZipper!2937 ((Set Context!15244)) Bool)

(assert (=> b!7260158 (= e!4353507 (nullableZipper!2937 (set.insert ct2!328 (as set.empty (Set Context!15244)))))))

(declare-fun b!7260159 () Bool)

(declare-fun head!14936 (List!70626) C!37638)

(assert (=> b!7260159 (= e!4353507 (matchZipper!3592 (derivationStepZipper!3460 (set.insert ct2!328 (as set.empty (Set Context!15244))) (head!14936 s2!1849)) (tail!14389 s2!1849)))))

(assert (= (and d!2258706 c!1350609) b!7260158))

(assert (= (and d!2258706 (not c!1350609)) b!7260159))

(declare-fun m!7944530 () Bool)

(assert (=> d!2258706 m!7944530))

(assert (=> b!7260158 m!7944350))

(declare-fun m!7944532 () Bool)

(assert (=> b!7260158 m!7944532))

(declare-fun m!7944534 () Bool)

(assert (=> b!7260159 m!7944534))

(assert (=> b!7260159 m!7944350))

(assert (=> b!7260159 m!7944534))

(declare-fun m!7944536 () Bool)

(assert (=> b!7260159 m!7944536))

(declare-fun m!7944538 () Bool)

(assert (=> b!7260159 m!7944538))

(assert (=> b!7260159 m!7944536))

(assert (=> b!7260159 m!7944538))

(declare-fun m!7944540 () Bool)

(assert (=> b!7260159 m!7944540))

(assert (=> b!7260076 d!2258706))

(declare-fun b!7260169 () Bool)

(declare-fun e!4353512 () List!70627)

(assert (=> b!7260169 (= e!4353512 (Cons!70503 (h!76951 (exprs!8122 ct1!232)) (++!16627 (t!384693 (exprs!8122 ct1!232)) (exprs!8122 ct2!328))))))

(declare-fun d!2258708 () Bool)

(declare-fun e!4353513 () Bool)

(assert (=> d!2258708 e!4353513))

(declare-fun res!2943814 () Bool)

(assert (=> d!2258708 (=> (not res!2943814) (not e!4353513))))

(declare-fun lt!2590270 () List!70627)

(declare-fun content!14681 (List!70627) (Set Regex!18682))

(assert (=> d!2258708 (= res!2943814 (= (content!14681 lt!2590270) (set.union (content!14681 (exprs!8122 ct1!232)) (content!14681 (exprs!8122 ct2!328)))))))

(assert (=> d!2258708 (= lt!2590270 e!4353512)))

(declare-fun c!1350612 () Bool)

(assert (=> d!2258708 (= c!1350612 (is-Nil!70503 (exprs!8122 ct1!232)))))

(assert (=> d!2258708 (= (++!16627 (exprs!8122 ct1!232) (exprs!8122 ct2!328)) lt!2590270)))

(declare-fun b!7260171 () Bool)

(assert (=> b!7260171 (= e!4353513 (or (not (= (exprs!8122 ct2!328) Nil!70503)) (= lt!2590270 (exprs!8122 ct1!232))))))

(declare-fun b!7260168 () Bool)

(assert (=> b!7260168 (= e!4353512 (exprs!8122 ct2!328))))

(declare-fun b!7260170 () Bool)

(declare-fun res!2943815 () Bool)

(assert (=> b!7260170 (=> (not res!2943815) (not e!4353513))))

(declare-fun size!41762 (List!70627) Int)

(assert (=> b!7260170 (= res!2943815 (= (size!41762 lt!2590270) (+ (size!41762 (exprs!8122 ct1!232)) (size!41762 (exprs!8122 ct2!328)))))))

(assert (= (and d!2258708 c!1350612) b!7260168))

(assert (= (and d!2258708 (not c!1350612)) b!7260169))

(assert (= (and d!2258708 res!2943814) b!7260170))

(assert (= (and b!7260170 res!2943815) b!7260171))

(declare-fun m!7944542 () Bool)

(assert (=> b!7260169 m!7944542))

(declare-fun m!7944544 () Bool)

(assert (=> d!2258708 m!7944544))

(declare-fun m!7944546 () Bool)

(assert (=> d!2258708 m!7944546))

(declare-fun m!7944548 () Bool)

(assert (=> d!2258708 m!7944548))

(declare-fun m!7944550 () Bool)

(assert (=> b!7260170 m!7944550))

(declare-fun m!7944552 () Bool)

(assert (=> b!7260170 m!7944552))

(declare-fun m!7944554 () Bool)

(assert (=> b!7260170 m!7944554))

(assert (=> b!7260089 d!2258708))

(assert (=> b!7260089 d!2258704))

(declare-fun d!2258710 () Bool)

(declare-fun c!1350613 () Bool)

(assert (=> d!2258710 (= c!1350613 (isEmpty!40601 (t!384692 s1!1971)))))

(declare-fun e!4353514 () Bool)

(assert (=> d!2258710 (= (matchZipper!3592 lt!2590129 (t!384692 s1!1971)) e!4353514)))

(declare-fun b!7260172 () Bool)

(assert (=> b!7260172 (= e!4353514 (nullableZipper!2937 lt!2590129))))

(declare-fun b!7260173 () Bool)

(assert (=> b!7260173 (= e!4353514 (matchZipper!3592 (derivationStepZipper!3460 lt!2590129 (head!14936 (t!384692 s1!1971))) (tail!14389 (t!384692 s1!1971))))))

(assert (= (and d!2258710 c!1350613) b!7260172))

(assert (= (and d!2258710 (not c!1350613)) b!7260173))

(declare-fun m!7944556 () Bool)

(assert (=> d!2258710 m!7944556))

(declare-fun m!7944558 () Bool)

(assert (=> b!7260172 m!7944558))

(declare-fun m!7944560 () Bool)

(assert (=> b!7260173 m!7944560))

(assert (=> b!7260173 m!7944560))

(declare-fun m!7944562 () Bool)

(assert (=> b!7260173 m!7944562))

(declare-fun m!7944564 () Bool)

(assert (=> b!7260173 m!7944564))

(assert (=> b!7260173 m!7944562))

(assert (=> b!7260173 m!7944564))

(declare-fun m!7944566 () Bool)

(assert (=> b!7260173 m!7944566))

(assert (=> b!7260078 d!2258710))

(declare-fun d!2258712 () Bool)

(declare-fun c!1350618 () Bool)

(declare-fun e!4353522 () Bool)

(assert (=> d!2258712 (= c!1350618 e!4353522)))

(declare-fun res!2943818 () Bool)

(assert (=> d!2258712 (=> (not res!2943818) (not e!4353522))))

(assert (=> d!2258712 (= res!2943818 (is-Cons!70503 (exprs!8122 lt!2590118)))))

(declare-fun e!4353523 () (Set Context!15244))

(assert (=> d!2258712 (= (derivationStepZipperUp!2506 lt!2590118 (h!76950 s1!1971)) e!4353523)))

(declare-fun b!7260184 () Bool)

(assert (=> b!7260184 (= e!4353522 (nullable!7942 (h!76951 (exprs!8122 lt!2590118))))))

(declare-fun b!7260185 () Bool)

(declare-fun e!4353521 () (Set Context!15244))

(declare-fun call!661770 () (Set Context!15244))

(assert (=> b!7260185 (= e!4353521 call!661770)))

(declare-fun b!7260186 () Bool)

(assert (=> b!7260186 (= e!4353523 e!4353521)))

(declare-fun c!1350619 () Bool)

(assert (=> b!7260186 (= c!1350619 (is-Cons!70503 (exprs!8122 lt!2590118)))))

(declare-fun b!7260187 () Bool)

(assert (=> b!7260187 (= e!4353523 (set.union call!661770 (derivationStepZipperUp!2506 (Context!15245 (t!384693 (exprs!8122 lt!2590118))) (h!76950 s1!1971))))))

(declare-fun bm!661765 () Bool)

(assert (=> bm!661765 (= call!661770 (derivationStepZipperDown!2676 (h!76951 (exprs!8122 lt!2590118)) (Context!15245 (t!384693 (exprs!8122 lt!2590118))) (h!76950 s1!1971)))))

(declare-fun b!7260188 () Bool)

(assert (=> b!7260188 (= e!4353521 (as set.empty (Set Context!15244)))))

(assert (= (and d!2258712 res!2943818) b!7260184))

(assert (= (and d!2258712 c!1350618) b!7260187))

(assert (= (and d!2258712 (not c!1350618)) b!7260186))

(assert (= (and b!7260186 c!1350619) b!7260185))

(assert (= (and b!7260186 (not c!1350619)) b!7260188))

(assert (= (or b!7260187 b!7260185) bm!661765))

(declare-fun m!7944568 () Bool)

(assert (=> b!7260184 m!7944568))

(declare-fun m!7944570 () Bool)

(assert (=> b!7260187 m!7944570))

(declare-fun m!7944572 () Bool)

(assert (=> bm!661765 m!7944572))

(assert (=> b!7260078 d!2258712))

(declare-fun d!2258714 () Bool)

(declare-fun c!1350620 () Bool)

(declare-fun e!4353525 () Bool)

(assert (=> d!2258714 (= c!1350620 e!4353525)))

(declare-fun res!2943819 () Bool)

(assert (=> d!2258714 (=> (not res!2943819) (not e!4353525))))

(assert (=> d!2258714 (= res!2943819 (is-Cons!70503 (exprs!8122 lt!2590112)))))

(declare-fun e!4353526 () (Set Context!15244))

(assert (=> d!2258714 (= (derivationStepZipperUp!2506 lt!2590112 (h!76950 s1!1971)) e!4353526)))

(declare-fun b!7260189 () Bool)

(assert (=> b!7260189 (= e!4353525 (nullable!7942 (h!76951 (exprs!8122 lt!2590112))))))

(declare-fun b!7260190 () Bool)

(declare-fun e!4353524 () (Set Context!15244))

(declare-fun call!661771 () (Set Context!15244))

(assert (=> b!7260190 (= e!4353524 call!661771)))

(declare-fun b!7260191 () Bool)

(assert (=> b!7260191 (= e!4353526 e!4353524)))

(declare-fun c!1350621 () Bool)

(assert (=> b!7260191 (= c!1350621 (is-Cons!70503 (exprs!8122 lt!2590112)))))

(declare-fun b!7260192 () Bool)

(assert (=> b!7260192 (= e!4353526 (set.union call!661771 (derivationStepZipperUp!2506 (Context!15245 (t!384693 (exprs!8122 lt!2590112))) (h!76950 s1!1971))))))

(declare-fun bm!661766 () Bool)

(assert (=> bm!661766 (= call!661771 (derivationStepZipperDown!2676 (h!76951 (exprs!8122 lt!2590112)) (Context!15245 (t!384693 (exprs!8122 lt!2590112))) (h!76950 s1!1971)))))

(declare-fun b!7260193 () Bool)

(assert (=> b!7260193 (= e!4353524 (as set.empty (Set Context!15244)))))

(assert (= (and d!2258714 res!2943819) b!7260189))

(assert (= (and d!2258714 c!1350620) b!7260192))

(assert (= (and d!2258714 (not c!1350620)) b!7260191))

(assert (= (and b!7260191 c!1350621) b!7260190))

(assert (= (and b!7260191 (not c!1350621)) b!7260193))

(assert (= (or b!7260192 b!7260190) bm!661766))

(declare-fun m!7944574 () Bool)

(assert (=> b!7260189 m!7944574))

(declare-fun m!7944576 () Bool)

(assert (=> b!7260192 m!7944576))

(declare-fun m!7944578 () Bool)

(assert (=> bm!661766 m!7944578))

(assert (=> b!7260078 d!2258714))

(declare-fun d!2258716 () Bool)

(declare-fun c!1350622 () Bool)

(assert (=> d!2258716 (= c!1350622 (isEmpty!40601 lt!2590109))))

(declare-fun e!4353527 () Bool)

(assert (=> d!2258716 (= (matchZipper!3592 (set.union lt!2590094 lt!2590115) lt!2590109) e!4353527)))

(declare-fun b!7260194 () Bool)

(assert (=> b!7260194 (= e!4353527 (nullableZipper!2937 (set.union lt!2590094 lt!2590115)))))

(declare-fun b!7260195 () Bool)

(assert (=> b!7260195 (= e!4353527 (matchZipper!3592 (derivationStepZipper!3460 (set.union lt!2590094 lt!2590115) (head!14936 lt!2590109)) (tail!14389 lt!2590109)))))

(assert (= (and d!2258716 c!1350622) b!7260194))

(assert (= (and d!2258716 (not c!1350622)) b!7260195))

(declare-fun m!7944580 () Bool)

(assert (=> d!2258716 m!7944580))

(declare-fun m!7944582 () Bool)

(assert (=> b!7260194 m!7944582))

(declare-fun m!7944584 () Bool)

(assert (=> b!7260195 m!7944584))

(assert (=> b!7260195 m!7944584))

(declare-fun m!7944586 () Bool)

(assert (=> b!7260195 m!7944586))

(declare-fun m!7944588 () Bool)

(assert (=> b!7260195 m!7944588))

(assert (=> b!7260195 m!7944586))

(assert (=> b!7260195 m!7944588))

(declare-fun m!7944590 () Bool)

(assert (=> b!7260195 m!7944590))

(assert (=> b!7260078 d!2258716))

(declare-fun d!2258718 () Bool)

(declare-fun c!1350623 () Bool)

(assert (=> d!2258718 (= c!1350623 (isEmpty!40601 (t!384692 s1!1971)))))

(declare-fun e!4353528 () Bool)

(assert (=> d!2258718 (= (matchZipper!3592 (set.union lt!2590129 lt!2590111) (t!384692 s1!1971)) e!4353528)))

(declare-fun b!7260196 () Bool)

(assert (=> b!7260196 (= e!4353528 (nullableZipper!2937 (set.union lt!2590129 lt!2590111)))))

(declare-fun b!7260197 () Bool)

(assert (=> b!7260197 (= e!4353528 (matchZipper!3592 (derivationStepZipper!3460 (set.union lt!2590129 lt!2590111) (head!14936 (t!384692 s1!1971))) (tail!14389 (t!384692 s1!1971))))))

(assert (= (and d!2258718 c!1350623) b!7260196))

(assert (= (and d!2258718 (not c!1350623)) b!7260197))

(assert (=> d!2258718 m!7944556))

(declare-fun m!7944592 () Bool)

(assert (=> b!7260196 m!7944592))

(assert (=> b!7260197 m!7944560))

(assert (=> b!7260197 m!7944560))

(declare-fun m!7944594 () Bool)

(assert (=> b!7260197 m!7944594))

(assert (=> b!7260197 m!7944564))

(assert (=> b!7260197 m!7944594))

(assert (=> b!7260197 m!7944564))

(declare-fun m!7944596 () Bool)

(assert (=> b!7260197 m!7944596))

(assert (=> b!7260078 d!2258718))

(declare-fun d!2258720 () Bool)

(declare-fun c!1350624 () Bool)

(assert (=> d!2258720 (= c!1350624 (isEmpty!40601 lt!2590109))))

(declare-fun e!4353529 () Bool)

(assert (=> d!2258720 (= (matchZipper!3592 lt!2590094 lt!2590109) e!4353529)))

(declare-fun b!7260198 () Bool)

(assert (=> b!7260198 (= e!4353529 (nullableZipper!2937 lt!2590094))))

(declare-fun b!7260199 () Bool)

(assert (=> b!7260199 (= e!4353529 (matchZipper!3592 (derivationStepZipper!3460 lt!2590094 (head!14936 lt!2590109)) (tail!14389 lt!2590109)))))

(assert (= (and d!2258720 c!1350624) b!7260198))

(assert (= (and d!2258720 (not c!1350624)) b!7260199))

(assert (=> d!2258720 m!7944580))

(declare-fun m!7944598 () Bool)

(assert (=> b!7260198 m!7944598))

(assert (=> b!7260199 m!7944584))

(assert (=> b!7260199 m!7944584))

(declare-fun m!7944600 () Bool)

(assert (=> b!7260199 m!7944600))

(assert (=> b!7260199 m!7944588))

(assert (=> b!7260199 m!7944600))

(assert (=> b!7260199 m!7944588))

(declare-fun m!7944602 () Bool)

(assert (=> b!7260199 m!7944602))

(assert (=> b!7260078 d!2258720))

(assert (=> b!7260078 d!2258704))

(declare-fun e!4353532 () Bool)

(declare-fun d!2258722 () Bool)

(assert (=> d!2258722 (= (matchZipper!3592 (set.union lt!2590129 lt!2590111) (t!384692 s1!1971)) e!4353532)))

(declare-fun res!2943822 () Bool)

(assert (=> d!2258722 (=> res!2943822 e!4353532)))

(assert (=> d!2258722 (= res!2943822 (matchZipper!3592 lt!2590129 (t!384692 s1!1971)))))

(declare-fun lt!2590273 () Unit!163998)

(declare-fun choose!56214 ((Set Context!15244) (Set Context!15244) List!70626) Unit!163998)

(assert (=> d!2258722 (= lt!2590273 (choose!56214 lt!2590129 lt!2590111 (t!384692 s1!1971)))))

(assert (=> d!2258722 (= (lemmaZipperConcatMatchesSameAsBothZippers!1737 lt!2590129 lt!2590111 (t!384692 s1!1971)) lt!2590273)))

(declare-fun b!7260202 () Bool)

(assert (=> b!7260202 (= e!4353532 (matchZipper!3592 lt!2590111 (t!384692 s1!1971)))))

(assert (= (and d!2258722 (not res!2943822)) b!7260202))

(assert (=> d!2258722 m!7944380))

(assert (=> d!2258722 m!7944374))

(declare-fun m!7944604 () Bool)

(assert (=> d!2258722 m!7944604))

(assert (=> b!7260202 m!7944364))

(assert (=> b!7260078 d!2258722))

(declare-fun e!4353533 () Bool)

(declare-fun d!2258724 () Bool)

(assert (=> d!2258724 (= (matchZipper!3592 (set.union lt!2590094 lt!2590115) lt!2590109) e!4353533)))

(declare-fun res!2943823 () Bool)

(assert (=> d!2258724 (=> res!2943823 e!4353533)))

(assert (=> d!2258724 (= res!2943823 (matchZipper!3592 lt!2590094 lt!2590109))))

(declare-fun lt!2590274 () Unit!163998)

(assert (=> d!2258724 (= lt!2590274 (choose!56214 lt!2590094 lt!2590115 lt!2590109))))

(assert (=> d!2258724 (= (lemmaZipperConcatMatchesSameAsBothZippers!1737 lt!2590094 lt!2590115 lt!2590109) lt!2590274)))

(declare-fun b!7260203 () Bool)

(assert (=> b!7260203 (= e!4353533 (matchZipper!3592 lt!2590115 lt!2590109))))

(assert (= (and d!2258724 (not res!2943823)) b!7260203))

(assert (=> d!2258724 m!7944368))

(assert (=> d!2258724 m!7944372))

(declare-fun m!7944606 () Bool)

(assert (=> d!2258724 m!7944606))

(assert (=> b!7260203 m!7944340))

(assert (=> b!7260078 d!2258724))

(assert (=> b!7260088 d!2258700))

(declare-fun d!2258726 () Bool)

(assert (=> d!2258726 (= (tail!14389 lt!2590116) (t!384692 lt!2590116))))

(assert (=> b!7260088 d!2258726))

(declare-fun d!2258728 () Bool)

(assert (=> d!2258728 (exists!4442 lt!2590093 lambda!446283)))

(declare-fun lt!2590277 () Unit!163998)

(declare-fun choose!56215 ((Set Context!15244) Context!15244 Int) Unit!163998)

(assert (=> d!2258728 (= lt!2590277 (choose!56215 lt!2590093 lt!2590100 lambda!446283))))

(assert (=> d!2258728 (set.member lt!2590100 lt!2590093)))

(assert (=> d!2258728 (= (lemmaContainsThenExists!230 lt!2590093 lt!2590100 lambda!446283) lt!2590277)))

(declare-fun bs!1909212 () Bool)

(assert (= bs!1909212 d!2258728))

(assert (=> bs!1909212 m!7944306))

(declare-fun m!7944608 () Bool)

(assert (=> bs!1909212 m!7944608))

(assert (=> bs!1909212 m!7944318))

(assert (=> b!7260088 d!2258728))

(declare-fun d!2258730 () Bool)

(declare-fun c!1350627 () Bool)

(assert (=> d!2258730 (= c!1350627 (is-Nil!70504 lt!2590095))))

(declare-fun e!4353537 () (Set Context!15244))

(assert (=> d!2258730 (= (content!14679 lt!2590095) e!4353537)))

(declare-fun b!7260208 () Bool)

(assert (=> b!7260208 (= e!4353537 (as set.empty (Set Context!15244)))))

(declare-fun b!7260209 () Bool)

(assert (=> b!7260209 (= e!4353537 (set.union (set.insert (h!76952 lt!2590095) (as set.empty (Set Context!15244))) (content!14679 (t!384694 lt!2590095))))))

(assert (= (and d!2258730 c!1350627) b!7260208))

(assert (= (and d!2258730 (not c!1350627)) b!7260209))

(declare-fun m!7944610 () Bool)

(assert (=> b!7260209 m!7944610))

(declare-fun m!7944612 () Bool)

(assert (=> b!7260209 m!7944612))

(assert (=> b!7260088 d!2258730))

(declare-fun d!2258732 () Bool)

(declare-fun choose!56216 ((Set Context!15244) Int) (Set Context!15244))

(assert (=> d!2258732 (= (flatMap!2847 lt!2590110 lambda!446282) (choose!56216 lt!2590110 lambda!446282))))

(declare-fun bs!1909213 () Bool)

(assert (= bs!1909213 d!2258732))

(declare-fun m!7944614 () Bool)

(assert (=> bs!1909213 m!7944614))

(assert (=> b!7260088 d!2258732))

(declare-fun d!2258734 () Bool)

(declare-fun c!1350628 () Bool)

(assert (=> d!2258734 (= c!1350628 (isEmpty!40601 lt!2590109))))

(declare-fun e!4353538 () Bool)

(assert (=> d!2258734 (= (matchZipper!3592 (content!14679 lt!2590095) lt!2590109) e!4353538)))

(declare-fun b!7260210 () Bool)

(assert (=> b!7260210 (= e!4353538 (nullableZipper!2937 (content!14679 lt!2590095)))))

(declare-fun b!7260211 () Bool)

(assert (=> b!7260211 (= e!4353538 (matchZipper!3592 (derivationStepZipper!3460 (content!14679 lt!2590095) (head!14936 lt!2590109)) (tail!14389 lt!2590109)))))

(assert (= (and d!2258734 c!1350628) b!7260210))

(assert (= (and d!2258734 (not c!1350628)) b!7260211))

(assert (=> d!2258734 m!7944580))

(assert (=> b!7260210 m!7944284))

(declare-fun m!7944616 () Bool)

(assert (=> b!7260210 m!7944616))

(assert (=> b!7260211 m!7944584))

(assert (=> b!7260211 m!7944284))

(assert (=> b!7260211 m!7944584))

(declare-fun m!7944618 () Bool)

(assert (=> b!7260211 m!7944618))

(assert (=> b!7260211 m!7944588))

(assert (=> b!7260211 m!7944618))

(assert (=> b!7260211 m!7944588))

(declare-fun m!7944620 () Bool)

(assert (=> b!7260211 m!7944620))

(assert (=> b!7260088 d!2258734))

(declare-fun d!2258736 () Bool)

(declare-fun c!1350643 () Bool)

(assert (=> d!2258736 (= c!1350643 (and (is-ElementMatch!18682 (h!76951 (exprs!8122 ct1!232))) (= (c!1350587 (h!76951 (exprs!8122 ct1!232))) (h!76950 s1!1971))))))

(declare-fun e!4353551 () (Set Context!15244))

(assert (=> d!2258736 (= (derivationStepZipperDown!2676 (h!76951 (exprs!8122 ct1!232)) lt!2590118 (h!76950 s1!1971)) e!4353551)))

(declare-fun b!7260234 () Bool)

(assert (=> b!7260234 (= e!4353551 (set.insert lt!2590118 (as set.empty (Set Context!15244))))))

(declare-fun b!7260235 () Bool)

(declare-fun e!4353556 () (Set Context!15244))

(declare-fun call!661788 () (Set Context!15244))

(assert (=> b!7260235 (= e!4353556 call!661788)))

(declare-fun b!7260236 () Bool)

(declare-fun e!4353554 () (Set Context!15244))

(assert (=> b!7260236 (= e!4353554 call!661788)))

(declare-fun b!7260237 () Bool)

(declare-fun c!1350641 () Bool)

(declare-fun e!4353555 () Bool)

(assert (=> b!7260237 (= c!1350641 e!4353555)))

(declare-fun res!2943826 () Bool)

(assert (=> b!7260237 (=> (not res!2943826) (not e!4353555))))

(assert (=> b!7260237 (= res!2943826 (is-Concat!27527 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun e!4353553 () (Set Context!15244))

(declare-fun e!4353552 () (Set Context!15244))

(assert (=> b!7260237 (= e!4353553 e!4353552)))

(declare-fun b!7260238 () Bool)

(declare-fun call!661789 () (Set Context!15244))

(declare-fun call!661784 () (Set Context!15244))

(assert (=> b!7260238 (= e!4353553 (set.union call!661789 call!661784))))

(declare-fun b!7260239 () Bool)

(assert (=> b!7260239 (= e!4353552 e!4353556)))

(declare-fun c!1350640 () Bool)

(assert (=> b!7260239 (= c!1350640 (is-Concat!27527 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun b!7260240 () Bool)

(declare-fun call!661787 () (Set Context!15244))

(assert (=> b!7260240 (= e!4353552 (set.union call!661784 call!661787))))

(declare-fun bm!661779 () Bool)

(declare-fun call!661785 () List!70627)

(declare-fun call!661786 () List!70627)

(assert (=> bm!661779 (= call!661785 call!661786)))

(declare-fun b!7260241 () Bool)

(assert (=> b!7260241 (= e!4353554 (as set.empty (Set Context!15244)))))

(declare-fun bm!661780 () Bool)

(assert (=> bm!661780 (= call!661788 call!661787)))

(declare-fun b!7260242 () Bool)

(assert (=> b!7260242 (= e!4353551 e!4353553)))

(declare-fun c!1350642 () Bool)

(assert (=> b!7260242 (= c!1350642 (is-Union!18682 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun bm!661781 () Bool)

(assert (=> bm!661781 (= call!661789 (derivationStepZipperDown!2676 (ite c!1350642 (regOne!37877 (h!76951 (exprs!8122 ct1!232))) (ite c!1350641 (regTwo!37876 (h!76951 (exprs!8122 ct1!232))) (ite c!1350640 (regOne!37876 (h!76951 (exprs!8122 ct1!232))) (reg!19011 (h!76951 (exprs!8122 ct1!232)))))) (ite (or c!1350642 c!1350641) lt!2590118 (Context!15245 call!661785)) (h!76950 s1!1971)))))

(declare-fun bm!661782 () Bool)

(declare-fun $colon$colon!2939 (List!70627 Regex!18682) List!70627)

(assert (=> bm!661782 (= call!661786 ($colon$colon!2939 (exprs!8122 lt!2590118) (ite (or c!1350641 c!1350640) (regTwo!37876 (h!76951 (exprs!8122 ct1!232))) (h!76951 (exprs!8122 ct1!232)))))))

(declare-fun b!7260243 () Bool)

(declare-fun c!1350639 () Bool)

(assert (=> b!7260243 (= c!1350639 (is-Star!18682 (h!76951 (exprs!8122 ct1!232))))))

(assert (=> b!7260243 (= e!4353556 e!4353554)))

(declare-fun bm!661783 () Bool)

(assert (=> bm!661783 (= call!661787 call!661789)))

(declare-fun b!7260244 () Bool)

(assert (=> b!7260244 (= e!4353555 (nullable!7942 (regOne!37876 (h!76951 (exprs!8122 ct1!232)))))))

(declare-fun bm!661784 () Bool)

(assert (=> bm!661784 (= call!661784 (derivationStepZipperDown!2676 (ite c!1350642 (regTwo!37877 (h!76951 (exprs!8122 ct1!232))) (regOne!37876 (h!76951 (exprs!8122 ct1!232)))) (ite c!1350642 lt!2590118 (Context!15245 call!661786)) (h!76950 s1!1971)))))

(assert (= (and d!2258736 c!1350643) b!7260234))

(assert (= (and d!2258736 (not c!1350643)) b!7260242))

(assert (= (and b!7260242 c!1350642) b!7260238))

(assert (= (and b!7260242 (not c!1350642)) b!7260237))

(assert (= (and b!7260237 res!2943826) b!7260244))

(assert (= (and b!7260237 c!1350641) b!7260240))

(assert (= (and b!7260237 (not c!1350641)) b!7260239))

(assert (= (and b!7260239 c!1350640) b!7260235))

(assert (= (and b!7260239 (not c!1350640)) b!7260243))

(assert (= (and b!7260243 c!1350639) b!7260236))

(assert (= (and b!7260243 (not c!1350639)) b!7260241))

(assert (= (or b!7260235 b!7260236) bm!661779))

(assert (= (or b!7260235 b!7260236) bm!661780))

(assert (= (or b!7260240 bm!661779) bm!661782))

(assert (= (or b!7260240 bm!661780) bm!661783))

(assert (= (or b!7260238 b!7260240) bm!661784))

(assert (= (or b!7260238 bm!661783) bm!661781))

(declare-fun m!7944622 () Bool)

(assert (=> b!7260244 m!7944622))

(declare-fun m!7944624 () Bool)

(assert (=> bm!661782 m!7944624))

(declare-fun m!7944626 () Bool)

(assert (=> bm!661781 m!7944626))

(declare-fun m!7944628 () Bool)

(assert (=> b!7260234 m!7944628))

(declare-fun m!7944630 () Bool)

(assert (=> bm!661784 m!7944630))

(assert (=> b!7260088 d!2258736))

(declare-fun d!2258738 () Bool)

(declare-fun nullableFct!3124 (Regex!18682) Bool)

(assert (=> d!2258738 (= (nullable!7942 (h!76951 (exprs!8122 ct1!232))) (nullableFct!3124 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun bs!1909214 () Bool)

(assert (= bs!1909214 d!2258738))

(declare-fun m!7944632 () Bool)

(assert (=> bs!1909214 m!7944632))

(assert (=> b!7260088 d!2258738))

(declare-fun d!2258740 () Bool)

(declare-fun c!1350644 () Bool)

(declare-fun e!4353558 () Bool)

(assert (=> d!2258740 (= c!1350644 e!4353558)))

(declare-fun res!2943827 () Bool)

(assert (=> d!2258740 (=> (not res!2943827) (not e!4353558))))

(assert (=> d!2258740 (= res!2943827 (is-Cons!70503 (exprs!8122 ct1!232)))))

(declare-fun e!4353559 () (Set Context!15244))

(assert (=> d!2258740 (= (derivationStepZipperUp!2506 ct1!232 (h!76950 s1!1971)) e!4353559)))

(declare-fun b!7260245 () Bool)

(assert (=> b!7260245 (= e!4353558 (nullable!7942 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun b!7260246 () Bool)

(declare-fun e!4353557 () (Set Context!15244))

(declare-fun call!661790 () (Set Context!15244))

(assert (=> b!7260246 (= e!4353557 call!661790)))

(declare-fun b!7260247 () Bool)

(assert (=> b!7260247 (= e!4353559 e!4353557)))

(declare-fun c!1350645 () Bool)

(assert (=> b!7260247 (= c!1350645 (is-Cons!70503 (exprs!8122 ct1!232)))))

(declare-fun b!7260248 () Bool)

(assert (=> b!7260248 (= e!4353559 (set.union call!661790 (derivationStepZipperUp!2506 (Context!15245 (t!384693 (exprs!8122 ct1!232))) (h!76950 s1!1971))))))

(declare-fun bm!661785 () Bool)

(assert (=> bm!661785 (= call!661790 (derivationStepZipperDown!2676 (h!76951 (exprs!8122 ct1!232)) (Context!15245 (t!384693 (exprs!8122 ct1!232))) (h!76950 s1!1971)))))

(declare-fun b!7260249 () Bool)

(assert (=> b!7260249 (= e!4353557 (as set.empty (Set Context!15244)))))

(assert (= (and d!2258740 res!2943827) b!7260245))

(assert (= (and d!2258740 c!1350644) b!7260248))

(assert (= (and d!2258740 (not c!1350644)) b!7260247))

(assert (= (and b!7260247 c!1350645) b!7260246))

(assert (= (and b!7260247 (not c!1350645)) b!7260249))

(assert (= (or b!7260248 b!7260246) bm!661785))

(assert (=> b!7260245 m!7944292))

(declare-fun m!7944634 () Bool)

(assert (=> b!7260248 m!7944634))

(declare-fun m!7944636 () Bool)

(assert (=> bm!661785 m!7944636))

(assert (=> b!7260088 d!2258740))

(declare-fun d!2258742 () Bool)

(assert (=> d!2258742 (= (tail!14388 lt!2590088) (t!384693 lt!2590088))))

(assert (=> b!7260088 d!2258742))

(declare-fun d!2258744 () Bool)

(assert (=> d!2258744 (= (flatMap!2847 lt!2590124 lambda!446282) (choose!56216 lt!2590124 lambda!446282))))

(declare-fun bs!1909215 () Bool)

(assert (= bs!1909215 d!2258744))

(declare-fun m!7944638 () Bool)

(assert (=> bs!1909215 m!7944638))

(assert (=> b!7260088 d!2258744))

(declare-fun d!2258746 () Bool)

(assert (=> d!2258746 (forall!17539 (++!16627 (exprs!8122 lt!2590113) (exprs!8122 ct2!328)) lambda!446280)))

(declare-fun lt!2590278 () Unit!163998)

(assert (=> d!2258746 (= lt!2590278 (choose!56213 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446280))))

(assert (=> d!2258746 (forall!17539 (exprs!8122 lt!2590113) lambda!446280)))

(assert (=> d!2258746 (= (lemmaConcatPreservesForall!1489 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446280) lt!2590278)))

(declare-fun bs!1909216 () Bool)

(assert (= bs!1909216 d!2258746))

(assert (=> bs!1909216 m!7944396))

(assert (=> bs!1909216 m!7944396))

(declare-fun m!7944640 () Bool)

(assert (=> bs!1909216 m!7944640))

(declare-fun m!7944642 () Bool)

(assert (=> bs!1909216 m!7944642))

(declare-fun m!7944644 () Bool)

(assert (=> bs!1909216 m!7944644))

(assert (=> b!7260088 d!2258746))

(declare-fun bs!1909217 () Bool)

(declare-fun d!2258748 () Bool)

(assert (= bs!1909217 (and d!2258748 b!7260089)))

(declare-fun lambda!446337 () Int)

(assert (=> bs!1909217 (= lambda!446337 lambda!446280)))

(declare-fun bs!1909218 () Bool)

(assert (= bs!1909218 (and d!2258748 d!2258702)))

(assert (=> bs!1909218 (= lambda!446337 lambda!446332)))

(assert (=> d!2258748 (set.member (Context!15245 (++!16627 (exprs!8122 lt!2590113) (exprs!8122 ct2!328))) (derivationStepZipperUp!2506 (Context!15245 (++!16627 (exprs!8122 ct1!232) (exprs!8122 ct2!328))) (h!76950 s1!1971)))))

(declare-fun lt!2590287 () Unit!163998)

(assert (=> d!2258748 (= lt!2590287 (lemmaConcatPreservesForall!1489 (exprs!8122 ct1!232) (exprs!8122 ct2!328) lambda!446337))))

(declare-fun lt!2590286 () Unit!163998)

(assert (=> d!2258748 (= lt!2590286 (lemmaConcatPreservesForall!1489 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446337))))

(declare-fun lt!2590285 () Unit!163998)

(declare-fun choose!56217 (Context!15244 Context!15244 Context!15244 C!37638) Unit!163998)

(assert (=> d!2258748 (= lt!2590285 (choose!56217 ct1!232 ct2!328 lt!2590113 (h!76950 s1!1971)))))

(assert (=> d!2258748 (set.member lt!2590113 (derivationStepZipperUp!2506 ct1!232 (h!76950 s1!1971)))))

(assert (=> d!2258748 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!37 ct1!232 ct2!328 lt!2590113 (h!76950 s1!1971)) lt!2590285)))

(declare-fun bs!1909219 () Bool)

(assert (= bs!1909219 d!2258748))

(declare-fun m!7944646 () Bool)

(assert (=> bs!1909219 m!7944646))

(declare-fun m!7944648 () Bool)

(assert (=> bs!1909219 m!7944648))

(declare-fun m!7944650 () Bool)

(assert (=> bs!1909219 m!7944650))

(assert (=> bs!1909219 m!7944298))

(assert (=> bs!1909219 m!7944396))

(declare-fun m!7944652 () Bool)

(assert (=> bs!1909219 m!7944652))

(declare-fun m!7944654 () Bool)

(assert (=> bs!1909219 m!7944654))

(declare-fun m!7944656 () Bool)

(assert (=> bs!1909219 m!7944656))

(assert (=> bs!1909219 m!7944326))

(assert (=> b!7260088 d!2258748))

(declare-fun d!2258750 () Bool)

(declare-fun e!4353562 () Bool)

(assert (=> d!2258750 e!4353562))

(declare-fun res!2943830 () Bool)

(assert (=> d!2258750 (=> (not res!2943830) (not e!4353562))))

(declare-fun lt!2590290 () List!70628)

(declare-fun noDuplicate!3012 (List!70628) Bool)

(assert (=> d!2258750 (= res!2943830 (noDuplicate!3012 lt!2590290))))

(declare-fun choose!56218 ((Set Context!15244)) List!70628)

(assert (=> d!2258750 (= lt!2590290 (choose!56218 lt!2590093))))

(assert (=> d!2258750 (= (toList!11511 lt!2590093) lt!2590290)))

(declare-fun b!7260252 () Bool)

(assert (=> b!7260252 (= e!4353562 (= (content!14679 lt!2590290) lt!2590093))))

(assert (= (and d!2258750 res!2943830) b!7260252))

(declare-fun m!7944658 () Bool)

(assert (=> d!2258750 m!7944658))

(declare-fun m!7944660 () Bool)

(assert (=> d!2258750 m!7944660))

(declare-fun m!7944662 () Bool)

(assert (=> b!7260252 m!7944662))

(assert (=> b!7260088 d!2258750))

(declare-fun d!2258752 () Bool)

(declare-fun dynLambda!28817 (Int Context!15244) (Set Context!15244))

(assert (=> d!2258752 (= (flatMap!2847 lt!2590110 lambda!446282) (dynLambda!28817 lambda!446282 ct1!232))))

(declare-fun lt!2590293 () Unit!163998)

(declare-fun choose!56219 ((Set Context!15244) Context!15244 Int) Unit!163998)

(assert (=> d!2258752 (= lt!2590293 (choose!56219 lt!2590110 ct1!232 lambda!446282))))

(assert (=> d!2258752 (= lt!2590110 (set.insert ct1!232 (as set.empty (Set Context!15244))))))

(assert (=> d!2258752 (= (lemmaFlatMapOnSingletonSet!2251 lt!2590110 ct1!232 lambda!446282) lt!2590293)))

(declare-fun b_lambda!279261 () Bool)

(assert (=> (not b_lambda!279261) (not d!2258752)))

(declare-fun bs!1909220 () Bool)

(assert (= bs!1909220 d!2258752))

(assert (=> bs!1909220 m!7944316))

(declare-fun m!7944664 () Bool)

(assert (=> bs!1909220 m!7944664))

(declare-fun m!7944666 () Bool)

(assert (=> bs!1909220 m!7944666))

(assert (=> bs!1909220 m!7944334))

(assert (=> b!7260088 d!2258752))

(declare-fun d!2258754 () Bool)

(declare-fun c!1350647 () Bool)

(assert (=> d!2258754 (= c!1350647 (isEmpty!40601 lt!2590116))))

(declare-fun e!4353563 () Bool)

(assert (=> d!2258754 (= (matchZipper!3592 lt!2590124 lt!2590116) e!4353563)))

(declare-fun b!7260253 () Bool)

(assert (=> b!7260253 (= e!4353563 (nullableZipper!2937 lt!2590124))))

(declare-fun b!7260254 () Bool)

(assert (=> b!7260254 (= e!4353563 (matchZipper!3592 (derivationStepZipper!3460 lt!2590124 (head!14936 lt!2590116)) (tail!14389 lt!2590116)))))

(assert (= (and d!2258754 c!1350647) b!7260253))

(assert (= (and d!2258754 (not c!1350647)) b!7260254))

(declare-fun m!7944668 () Bool)

(assert (=> d!2258754 m!7944668))

(declare-fun m!7944670 () Bool)

(assert (=> b!7260253 m!7944670))

(declare-fun m!7944672 () Bool)

(assert (=> b!7260254 m!7944672))

(assert (=> b!7260254 m!7944672))

(declare-fun m!7944674 () Bool)

(assert (=> b!7260254 m!7944674))

(assert (=> b!7260254 m!7944322))

(assert (=> b!7260254 m!7944674))

(assert (=> b!7260254 m!7944322))

(declare-fun m!7944676 () Bool)

(assert (=> b!7260254 m!7944676))

(assert (=> b!7260088 d!2258754))

(declare-fun d!2258756 () Bool)

(assert (=> d!2258756 (= (flatMap!2847 lt!2590124 lambda!446282) (dynLambda!28817 lambda!446282 lt!2590108))))

(declare-fun lt!2590294 () Unit!163998)

(assert (=> d!2258756 (= lt!2590294 (choose!56219 lt!2590124 lt!2590108 lambda!446282))))

(assert (=> d!2258756 (= lt!2590124 (set.insert lt!2590108 (as set.empty (Set Context!15244))))))

(assert (=> d!2258756 (= (lemmaFlatMapOnSingletonSet!2251 lt!2590124 lt!2590108 lambda!446282) lt!2590294)))

(declare-fun b_lambda!279263 () Bool)

(assert (=> (not b_lambda!279263) (not d!2258756)))

(declare-fun bs!1909221 () Bool)

(assert (= bs!1909221 d!2258756))

(assert (=> bs!1909221 m!7944304))

(declare-fun m!7944678 () Bool)

(assert (=> bs!1909221 m!7944678))

(declare-fun m!7944680 () Bool)

(assert (=> bs!1909221 m!7944680))

(assert (=> bs!1909221 m!7944324))

(assert (=> b!7260088 d!2258756))

(declare-fun bs!1909222 () Bool)

(declare-fun d!2258758 () Bool)

(assert (= bs!1909222 (and d!2258758 b!7260091)))

(declare-fun lambda!446340 () Int)

(assert (=> bs!1909222 (= (= lt!2590109 (t!384692 s1!1971)) (= lambda!446340 lambda!446281))))

(declare-fun bs!1909223 () Bool)

(assert (= bs!1909223 (and d!2258758 b!7260088)))

(assert (=> bs!1909223 (= lambda!446340 lambda!446283)))

(assert (=> d!2258758 true))

(assert (=> d!2258758 (matchZipper!3592 (content!14679 lt!2590095) lt!2590109)))

(declare-fun lt!2590297 () Unit!163998)

(declare-fun choose!56220 (List!70628 List!70626) Unit!163998)

(assert (=> d!2258758 (= lt!2590297 (choose!56220 lt!2590095 lt!2590109))))

(assert (=> d!2258758 (exists!4443 lt!2590095 lambda!446340)))

(assert (=> d!2258758 (= (lemmaExistsMatchingContextThenMatchingString!91 lt!2590095 lt!2590109) lt!2590297)))

(declare-fun bs!1909224 () Bool)

(assert (= bs!1909224 d!2258758))

(assert (=> bs!1909224 m!7944284))

(assert (=> bs!1909224 m!7944284))

(assert (=> bs!1909224 m!7944286))

(declare-fun m!7944682 () Bool)

(assert (=> bs!1909224 m!7944682))

(declare-fun m!7944684 () Bool)

(assert (=> bs!1909224 m!7944684))

(assert (=> b!7260088 d!2258758))

(declare-fun d!2258760 () Bool)

(declare-fun c!1350650 () Bool)

(declare-fun e!4353565 () Bool)

(assert (=> d!2258760 (= c!1350650 e!4353565)))

(declare-fun res!2943831 () Bool)

(assert (=> d!2258760 (=> (not res!2943831) (not e!4353565))))

(assert (=> d!2258760 (= res!2943831 (is-Cons!70503 (exprs!8122 lt!2590108)))))

(declare-fun e!4353566 () (Set Context!15244))

(assert (=> d!2258760 (= (derivationStepZipperUp!2506 lt!2590108 (h!76950 s1!1971)) e!4353566)))

(declare-fun b!7260255 () Bool)

(assert (=> b!7260255 (= e!4353565 (nullable!7942 (h!76951 (exprs!8122 lt!2590108))))))

(declare-fun b!7260256 () Bool)

(declare-fun e!4353564 () (Set Context!15244))

(declare-fun call!661791 () (Set Context!15244))

(assert (=> b!7260256 (= e!4353564 call!661791)))

(declare-fun b!7260257 () Bool)

(assert (=> b!7260257 (= e!4353566 e!4353564)))

(declare-fun c!1350651 () Bool)

(assert (=> b!7260257 (= c!1350651 (is-Cons!70503 (exprs!8122 lt!2590108)))))

(declare-fun b!7260258 () Bool)

(assert (=> b!7260258 (= e!4353566 (set.union call!661791 (derivationStepZipperUp!2506 (Context!15245 (t!384693 (exprs!8122 lt!2590108))) (h!76950 s1!1971))))))

(declare-fun bm!661786 () Bool)

(assert (=> bm!661786 (= call!661791 (derivationStepZipperDown!2676 (h!76951 (exprs!8122 lt!2590108)) (Context!15245 (t!384693 (exprs!8122 lt!2590108))) (h!76950 s1!1971)))))

(declare-fun b!7260259 () Bool)

(assert (=> b!7260259 (= e!4353564 (as set.empty (Set Context!15244)))))

(assert (= (and d!2258760 res!2943831) b!7260255))

(assert (= (and d!2258760 c!1350650) b!7260258))

(assert (= (and d!2258760 (not c!1350650)) b!7260257))

(assert (= (and b!7260257 c!1350651) b!7260256))

(assert (= (and b!7260257 (not c!1350651)) b!7260259))

(assert (= (or b!7260258 b!7260256) bm!661786))

(declare-fun m!7944686 () Bool)

(assert (=> b!7260255 m!7944686))

(declare-fun m!7944688 () Bool)

(assert (=> b!7260258 m!7944688))

(declare-fun m!7944690 () Bool)

(assert (=> bm!661786 m!7944690))

(assert (=> b!7260088 d!2258760))

(declare-fun e!4353572 () Bool)

(declare-fun lt!2590300 () List!70626)

(declare-fun b!7260271 () Bool)

(assert (=> b!7260271 (= e!4353572 (or (not (= s2!1849 Nil!70502)) (= lt!2590300 s1!1971)))))

(declare-fun d!2258762 () Bool)

(assert (=> d!2258762 e!4353572))

(declare-fun res!2943837 () Bool)

(assert (=> d!2258762 (=> (not res!2943837) (not e!4353572))))

(declare-fun content!14682 (List!70626) (Set C!37638))

(assert (=> d!2258762 (= res!2943837 (= (content!14682 lt!2590300) (set.union (content!14682 s1!1971) (content!14682 s2!1849))))))

(declare-fun e!4353571 () List!70626)

(assert (=> d!2258762 (= lt!2590300 e!4353571)))

(declare-fun c!1350654 () Bool)

(assert (=> d!2258762 (= c!1350654 (is-Nil!70502 s1!1971))))

(assert (=> d!2258762 (= (++!16626 s1!1971 s2!1849) lt!2590300)))

(declare-fun b!7260269 () Bool)

(assert (=> b!7260269 (= e!4353571 (Cons!70502 (h!76950 s1!1971) (++!16626 (t!384692 s1!1971) s2!1849)))))

(declare-fun b!7260268 () Bool)

(assert (=> b!7260268 (= e!4353571 s2!1849)))

(declare-fun b!7260270 () Bool)

(declare-fun res!2943836 () Bool)

(assert (=> b!7260270 (=> (not res!2943836) (not e!4353572))))

(declare-fun size!41763 (List!70626) Int)

(assert (=> b!7260270 (= res!2943836 (= (size!41763 lt!2590300) (+ (size!41763 s1!1971) (size!41763 s2!1849))))))

(assert (= (and d!2258762 c!1350654) b!7260268))

(assert (= (and d!2258762 (not c!1350654)) b!7260269))

(assert (= (and d!2258762 res!2943837) b!7260270))

(assert (= (and b!7260270 res!2943836) b!7260271))

(declare-fun m!7944692 () Bool)

(assert (=> d!2258762 m!7944692))

(declare-fun m!7944694 () Bool)

(assert (=> d!2258762 m!7944694))

(declare-fun m!7944696 () Bool)

(assert (=> d!2258762 m!7944696))

(assert (=> b!7260269 m!7944394))

(declare-fun m!7944698 () Bool)

(assert (=> b!7260270 m!7944698))

(declare-fun m!7944700 () Bool)

(assert (=> b!7260270 m!7944700))

(declare-fun m!7944702 () Bool)

(assert (=> b!7260270 m!7944702))

(assert (=> b!7260088 d!2258762))

(assert (=> b!7260088 d!2258704))

(declare-fun d!2258764 () Bool)

(declare-fun c!1350655 () Bool)

(assert (=> d!2258764 (= c!1350655 (isEmpty!40601 lt!2590109))))

(declare-fun e!4353573 () Bool)

(assert (=> d!2258764 (= (matchZipper!3592 lt!2590115 lt!2590109) e!4353573)))

(declare-fun b!7260272 () Bool)

(assert (=> b!7260272 (= e!4353573 (nullableZipper!2937 lt!2590115))))

(declare-fun b!7260273 () Bool)

(assert (=> b!7260273 (= e!4353573 (matchZipper!3592 (derivationStepZipper!3460 lt!2590115 (head!14936 lt!2590109)) (tail!14389 lt!2590109)))))

(assert (= (and d!2258764 c!1350655) b!7260272))

(assert (= (and d!2258764 (not c!1350655)) b!7260273))

(assert (=> d!2258764 m!7944580))

(declare-fun m!7944704 () Bool)

(assert (=> b!7260272 m!7944704))

(assert (=> b!7260273 m!7944584))

(assert (=> b!7260273 m!7944584))

(declare-fun m!7944706 () Bool)

(assert (=> b!7260273 m!7944706))

(assert (=> b!7260273 m!7944588))

(assert (=> b!7260273 m!7944706))

(assert (=> b!7260273 m!7944588))

(declare-fun m!7944708 () Bool)

(assert (=> b!7260273 m!7944708))

(assert (=> b!7260079 d!2258764))

(declare-fun d!2258766 () Bool)

(declare-fun c!1350656 () Bool)

(assert (=> d!2258766 (= c!1350656 (isEmpty!40601 s1!1971))))

(declare-fun e!4353574 () Bool)

(assert (=> d!2258766 (= (matchZipper!3592 lt!2590110 s1!1971) e!4353574)))

(declare-fun b!7260274 () Bool)

(assert (=> b!7260274 (= e!4353574 (nullableZipper!2937 lt!2590110))))

(declare-fun b!7260275 () Bool)

(assert (=> b!7260275 (= e!4353574 (matchZipper!3592 (derivationStepZipper!3460 lt!2590110 (head!14936 s1!1971)) (tail!14389 s1!1971)))))

(assert (= (and d!2258766 c!1350656) b!7260274))

(assert (= (and d!2258766 (not c!1350656)) b!7260275))

(declare-fun m!7944710 () Bool)

(assert (=> d!2258766 m!7944710))

(declare-fun m!7944712 () Bool)

(assert (=> b!7260274 m!7944712))

(declare-fun m!7944714 () Bool)

(assert (=> b!7260275 m!7944714))

(assert (=> b!7260275 m!7944714))

(declare-fun m!7944716 () Bool)

(assert (=> b!7260275 m!7944716))

(declare-fun m!7944718 () Bool)

(assert (=> b!7260275 m!7944718))

(assert (=> b!7260275 m!7944716))

(assert (=> b!7260275 m!7944718))

(declare-fun m!7944720 () Bool)

(assert (=> b!7260275 m!7944720))

(assert (=> start!707444 d!2258766))

(declare-fun bs!1909225 () Bool)

(declare-fun d!2258768 () Bool)

(assert (= bs!1909225 (and d!2258768 b!7260089)))

(declare-fun lambda!446341 () Int)

(assert (=> bs!1909225 (= lambda!446341 lambda!446280)))

(declare-fun bs!1909226 () Bool)

(assert (= bs!1909226 (and d!2258768 d!2258702)))

(assert (=> bs!1909226 (= lambda!446341 lambda!446332)))

(declare-fun bs!1909227 () Bool)

(assert (= bs!1909227 (and d!2258768 d!2258748)))

(assert (=> bs!1909227 (= lambda!446341 lambda!446337)))

(assert (=> d!2258768 (= (inv!89716 ct1!232) (forall!17539 (exprs!8122 ct1!232) lambda!446341))))

(declare-fun bs!1909228 () Bool)

(assert (= bs!1909228 d!2258768))

(declare-fun m!7944722 () Bool)

(assert (=> bs!1909228 m!7944722))

(assert (=> start!707444 d!2258768))

(declare-fun bs!1909229 () Bool)

(declare-fun d!2258770 () Bool)

(assert (= bs!1909229 (and d!2258770 b!7260089)))

(declare-fun lambda!446342 () Int)

(assert (=> bs!1909229 (= lambda!446342 lambda!446280)))

(declare-fun bs!1909230 () Bool)

(assert (= bs!1909230 (and d!2258770 d!2258702)))

(assert (=> bs!1909230 (= lambda!446342 lambda!446332)))

(declare-fun bs!1909231 () Bool)

(assert (= bs!1909231 (and d!2258770 d!2258748)))

(assert (=> bs!1909231 (= lambda!446342 lambda!446337)))

(declare-fun bs!1909232 () Bool)

(assert (= bs!1909232 (and d!2258770 d!2258768)))

(assert (=> bs!1909232 (= lambda!446342 lambda!446341)))

(assert (=> d!2258770 (= (inv!89716 ct2!328) (forall!17539 (exprs!8122 ct2!328) lambda!446342))))

(declare-fun bs!1909233 () Bool)

(assert (= bs!1909233 d!2258770))

(declare-fun m!7944724 () Bool)

(assert (=> bs!1909233 m!7944724))

(assert (=> start!707444 d!2258770))

(declare-fun d!2258772 () Bool)

(declare-fun c!1350657 () Bool)

(assert (=> d!2258772 (= c!1350657 (isEmpty!40601 (t!384692 s1!1971)))))

(declare-fun e!4353575 () Bool)

(assert (=> d!2258772 (= (matchZipper!3592 lt!2590111 (t!384692 s1!1971)) e!4353575)))

(declare-fun b!7260276 () Bool)

(assert (=> b!7260276 (= e!4353575 (nullableZipper!2937 lt!2590111))))

(declare-fun b!7260277 () Bool)

(assert (=> b!7260277 (= e!4353575 (matchZipper!3592 (derivationStepZipper!3460 lt!2590111 (head!14936 (t!384692 s1!1971))) (tail!14389 (t!384692 s1!1971))))))

(assert (= (and d!2258772 c!1350657) b!7260276))

(assert (= (and d!2258772 (not c!1350657)) b!7260277))

(assert (=> d!2258772 m!7944556))

(declare-fun m!7944726 () Bool)

(assert (=> b!7260276 m!7944726))

(assert (=> b!7260277 m!7944560))

(assert (=> b!7260277 m!7944560))

(declare-fun m!7944728 () Bool)

(assert (=> b!7260277 m!7944728))

(assert (=> b!7260277 m!7944564))

(assert (=> b!7260277 m!7944728))

(assert (=> b!7260277 m!7944564))

(declare-fun m!7944730 () Bool)

(assert (=> b!7260277 m!7944730))

(assert (=> b!7260081 d!2258772))

(declare-fun bs!1909234 () Bool)

(declare-fun d!2258774 () Bool)

(assert (= bs!1909234 (and d!2258774 b!7260088)))

(declare-fun lambda!446345 () Int)

(assert (=> bs!1909234 (= lambda!446345 lambda!446282)))

(assert (=> d!2258774 true))

(assert (=> d!2258774 (= (derivationStepZipper!3460 lt!2590124 (h!76950 s1!1971)) (flatMap!2847 lt!2590124 lambda!446345))))

(declare-fun bs!1909235 () Bool)

(assert (= bs!1909235 d!2258774))

(declare-fun m!7944732 () Bool)

(assert (=> bs!1909235 m!7944732))

(assert (=> b!7260091 d!2258774))

(declare-fun d!2258776 () Bool)

(declare-fun lt!2590301 () Bool)

(assert (=> d!2258776 (= lt!2590301 (exists!4443 (toList!11511 lt!2590123) lambda!446281))))

(assert (=> d!2258776 (= lt!2590301 (choose!56212 lt!2590123 lambda!446281))))

(assert (=> d!2258776 (= (exists!4442 lt!2590123 lambda!446281) lt!2590301)))

(declare-fun bs!1909236 () Bool)

(assert (= bs!1909236 d!2258776))

(assert (=> bs!1909236 m!7944354))

(assert (=> bs!1909236 m!7944354))

(declare-fun m!7944734 () Bool)

(assert (=> bs!1909236 m!7944734))

(declare-fun m!7944736 () Bool)

(assert (=> bs!1909236 m!7944736))

(assert (=> b!7260091 d!2258776))

(declare-fun d!2258778 () Bool)

(declare-fun e!4353576 () Bool)

(assert (=> d!2258778 e!4353576))

(declare-fun res!2943838 () Bool)

(assert (=> d!2258778 (=> (not res!2943838) (not e!4353576))))

(declare-fun lt!2590302 () List!70628)

(assert (=> d!2258778 (= res!2943838 (noDuplicate!3012 lt!2590302))))

(assert (=> d!2258778 (= lt!2590302 (choose!56218 lt!2590123))))

(assert (=> d!2258778 (= (toList!11511 lt!2590123) lt!2590302)))

(declare-fun b!7260280 () Bool)

(assert (=> b!7260280 (= e!4353576 (= (content!14679 lt!2590302) lt!2590123))))

(assert (= (and d!2258778 res!2943838) b!7260280))

(declare-fun m!7944738 () Bool)

(assert (=> d!2258778 m!7944738))

(declare-fun m!7944740 () Bool)

(assert (=> d!2258778 m!7944740))

(declare-fun m!7944742 () Bool)

(assert (=> b!7260280 m!7944742))

(assert (=> b!7260091 d!2258778))

(declare-fun bs!1909237 () Bool)

(declare-fun d!2258780 () Bool)

(assert (= bs!1909237 (and d!2258780 b!7260091)))

(declare-fun lambda!446348 () Int)

(assert (=> bs!1909237 (not (= lambda!446348 lambda!446281))))

(declare-fun bs!1909238 () Bool)

(assert (= bs!1909238 (and d!2258780 b!7260088)))

(assert (=> bs!1909238 (not (= lambda!446348 lambda!446283))))

(declare-fun bs!1909239 () Bool)

(assert (= bs!1909239 (and d!2258780 d!2258758)))

(assert (=> bs!1909239 (not (= lambda!446348 lambda!446340))))

(assert (=> d!2258780 true))

(declare-fun order!29035 () Int)

(declare-fun dynLambda!28818 (Int Int) Int)

(assert (=> d!2258780 (< (dynLambda!28818 order!29035 lambda!446281) (dynLambda!28818 order!29035 lambda!446348))))

(declare-fun forall!17540 (List!70628 Int) Bool)

(assert (=> d!2258780 (= (exists!4443 lt!2590090 lambda!446281) (not (forall!17540 lt!2590090 lambda!446348)))))

(declare-fun bs!1909240 () Bool)

(assert (= bs!1909240 d!2258780))

(declare-fun m!7944744 () Bool)

(assert (=> bs!1909240 m!7944744))

(assert (=> b!7260091 d!2258780))

(declare-fun bs!1909241 () Bool)

(declare-fun d!2258782 () Bool)

(assert (= bs!1909241 (and d!2258782 b!7260091)))

(declare-fun lambda!446351 () Int)

(assert (=> bs!1909241 (= lambda!446351 lambda!446281)))

(declare-fun bs!1909242 () Bool)

(assert (= bs!1909242 (and d!2258782 b!7260088)))

(assert (=> bs!1909242 (= (= (t!384692 s1!1971) lt!2590109) (= lambda!446351 lambda!446283))))

(declare-fun bs!1909243 () Bool)

(assert (= bs!1909243 (and d!2258782 d!2258758)))

(assert (=> bs!1909243 (= (= (t!384692 s1!1971) lt!2590109) (= lambda!446351 lambda!446340))))

(declare-fun bs!1909244 () Bool)

(assert (= bs!1909244 (and d!2258782 d!2258780)))

(assert (=> bs!1909244 (not (= lambda!446351 lambda!446348))))

(assert (=> d!2258782 true))

(assert (=> d!2258782 (exists!4443 lt!2590090 lambda!446351)))

(declare-fun lt!2590305 () Unit!163998)

(declare-fun choose!56221 (List!70628 List!70626) Unit!163998)

(assert (=> d!2258782 (= lt!2590305 (choose!56221 lt!2590090 (t!384692 s1!1971)))))

(assert (=> d!2258782 (matchZipper!3592 (content!14679 lt!2590090) (t!384692 s1!1971))))

(assert (=> d!2258782 (= (lemmaZipperMatchesExistsMatchingContext!785 lt!2590090 (t!384692 s1!1971)) lt!2590305)))

(declare-fun bs!1909245 () Bool)

(assert (= bs!1909245 d!2258782))

(declare-fun m!7944746 () Bool)

(assert (=> bs!1909245 m!7944746))

(declare-fun m!7944748 () Bool)

(assert (=> bs!1909245 m!7944748))

(declare-fun m!7944750 () Bool)

(assert (=> bs!1909245 m!7944750))

(assert (=> bs!1909245 m!7944750))

(declare-fun m!7944752 () Bool)

(assert (=> bs!1909245 m!7944752))

(assert (=> b!7260091 d!2258782))

(declare-fun d!2258784 () Bool)

(assert (=> d!2258784 (= (isEmpty!40599 (exprs!8122 ct1!232)) (is-Nil!70503 (exprs!8122 ct1!232)))))

(assert (=> b!7260080 d!2258784))

(declare-fun b!7260284 () Bool)

(declare-fun e!4353577 () List!70627)

(assert (=> b!7260284 (= e!4353577 (Cons!70503 (h!76951 (exprs!8122 lt!2590113)) (++!16627 (t!384693 (exprs!8122 lt!2590113)) (exprs!8122 ct2!328))))))

(declare-fun d!2258786 () Bool)

(declare-fun e!4353578 () Bool)

(assert (=> d!2258786 e!4353578))

(declare-fun res!2943839 () Bool)

(assert (=> d!2258786 (=> (not res!2943839) (not e!4353578))))

(declare-fun lt!2590306 () List!70627)

(assert (=> d!2258786 (= res!2943839 (= (content!14681 lt!2590306) (set.union (content!14681 (exprs!8122 lt!2590113)) (content!14681 (exprs!8122 ct2!328)))))))

(assert (=> d!2258786 (= lt!2590306 e!4353577)))

(declare-fun c!1350662 () Bool)

(assert (=> d!2258786 (= c!1350662 (is-Nil!70503 (exprs!8122 lt!2590113)))))

(assert (=> d!2258786 (= (++!16627 (exprs!8122 lt!2590113) (exprs!8122 ct2!328)) lt!2590306)))

(declare-fun b!7260286 () Bool)

(assert (=> b!7260286 (= e!4353578 (or (not (= (exprs!8122 ct2!328) Nil!70503)) (= lt!2590306 (exprs!8122 lt!2590113))))))

(declare-fun b!7260283 () Bool)

(assert (=> b!7260283 (= e!4353577 (exprs!8122 ct2!328))))

(declare-fun b!7260285 () Bool)

(declare-fun res!2943840 () Bool)

(assert (=> b!7260285 (=> (not res!2943840) (not e!4353578))))

(assert (=> b!7260285 (= res!2943840 (= (size!41762 lt!2590306) (+ (size!41762 (exprs!8122 lt!2590113)) (size!41762 (exprs!8122 ct2!328)))))))

(assert (= (and d!2258786 c!1350662) b!7260283))

(assert (= (and d!2258786 (not c!1350662)) b!7260284))

(assert (= (and d!2258786 res!2943839) b!7260285))

(assert (= (and b!7260285 res!2943840) b!7260286))

(declare-fun m!7944754 () Bool)

(assert (=> b!7260284 m!7944754))

(declare-fun m!7944756 () Bool)

(assert (=> d!2258786 m!7944756))

(declare-fun m!7944758 () Bool)

(assert (=> d!2258786 m!7944758))

(assert (=> d!2258786 m!7944548))

(declare-fun m!7944760 () Bool)

(assert (=> b!7260285 m!7944760))

(declare-fun m!7944762 () Bool)

(assert (=> b!7260285 m!7944762))

(assert (=> b!7260285 m!7944554))

(assert (=> b!7260080 d!2258786))

(assert (=> b!7260080 d!2258740))

(assert (=> b!7260080 d!2258746))

(declare-fun lt!2590307 () List!70626)

(declare-fun b!7260290 () Bool)

(declare-fun e!4353580 () Bool)

(assert (=> b!7260290 (= e!4353580 (or (not (= s2!1849 Nil!70502)) (= lt!2590307 (t!384692 s1!1971))))))

(declare-fun d!2258788 () Bool)

(assert (=> d!2258788 e!4353580))

(declare-fun res!2943842 () Bool)

(assert (=> d!2258788 (=> (not res!2943842) (not e!4353580))))

(assert (=> d!2258788 (= res!2943842 (= (content!14682 lt!2590307) (set.union (content!14682 (t!384692 s1!1971)) (content!14682 s2!1849))))))

(declare-fun e!4353579 () List!70626)

(assert (=> d!2258788 (= lt!2590307 e!4353579)))

(declare-fun c!1350663 () Bool)

(assert (=> d!2258788 (= c!1350663 (is-Nil!70502 (t!384692 s1!1971)))))

(assert (=> d!2258788 (= (++!16626 (t!384692 s1!1971) s2!1849) lt!2590307)))

(declare-fun b!7260288 () Bool)

(assert (=> b!7260288 (= e!4353579 (Cons!70502 (h!76950 (t!384692 s1!1971)) (++!16626 (t!384692 (t!384692 s1!1971)) s2!1849)))))

(declare-fun b!7260287 () Bool)

(assert (=> b!7260287 (= e!4353579 s2!1849)))

(declare-fun b!7260289 () Bool)

(declare-fun res!2943841 () Bool)

(assert (=> b!7260289 (=> (not res!2943841) (not e!4353580))))

(assert (=> b!7260289 (= res!2943841 (= (size!41763 lt!2590307) (+ (size!41763 (t!384692 s1!1971)) (size!41763 s2!1849))))))

(assert (= (and d!2258788 c!1350663) b!7260287))

(assert (= (and d!2258788 (not c!1350663)) b!7260288))

(assert (= (and d!2258788 res!2943842) b!7260289))

(assert (= (and b!7260289 res!2943841) b!7260290))

(declare-fun m!7944764 () Bool)

(assert (=> d!2258788 m!7944764))

(declare-fun m!7944766 () Bool)

(assert (=> d!2258788 m!7944766))

(assert (=> d!2258788 m!7944696))

(declare-fun m!7944768 () Bool)

(assert (=> b!7260288 m!7944768))

(declare-fun m!7944770 () Bool)

(assert (=> b!7260289 m!7944770))

(declare-fun m!7944772 () Bool)

(assert (=> b!7260289 m!7944772))

(assert (=> b!7260289 m!7944702))

(assert (=> b!7260080 d!2258788))

(declare-fun d!2258790 () Bool)

(declare-fun e!4353583 () Bool)

(assert (=> d!2258790 e!4353583))

(declare-fun res!2943845 () Bool)

(assert (=> d!2258790 (=> (not res!2943845) (not e!4353583))))

(declare-fun lt!2590310 () Context!15244)

(declare-fun dynLambda!28819 (Int Context!15244) Bool)

(assert (=> d!2258790 (= res!2943845 (dynLambda!28819 lambda!446281 lt!2590310))))

(declare-fun getWitness!2265 (List!70628 Int) Context!15244)

(assert (=> d!2258790 (= lt!2590310 (getWitness!2265 (toList!11511 lt!2590123) lambda!446281))))

(assert (=> d!2258790 (exists!4442 lt!2590123 lambda!446281)))

(assert (=> d!2258790 (= (getWitness!2263 lt!2590123 lambda!446281) lt!2590310)))

(declare-fun b!7260293 () Bool)

(assert (=> b!7260293 (= e!4353583 (set.member lt!2590310 lt!2590123))))

(assert (= (and d!2258790 res!2943845) b!7260293))

(declare-fun b_lambda!279265 () Bool)

(assert (=> (not b_lambda!279265) (not d!2258790)))

(declare-fun m!7944774 () Bool)

(assert (=> d!2258790 m!7944774))

(assert (=> d!2258790 m!7944354))

(assert (=> d!2258790 m!7944354))

(declare-fun m!7944776 () Bool)

(assert (=> d!2258790 m!7944776))

(assert (=> d!2258790 m!7944360))

(declare-fun m!7944778 () Bool)

(assert (=> b!7260293 m!7944778))

(assert (=> b!7260080 d!2258790))

(declare-fun d!2258792 () Bool)

(declare-fun c!1350664 () Bool)

(assert (=> d!2258792 (= c!1350664 (isEmpty!40601 lt!2590109))))

(declare-fun e!4353584 () Bool)

(assert (=> d!2258792 (= (matchZipper!3592 (set.insert lt!2590100 (as set.empty (Set Context!15244))) lt!2590109) e!4353584)))

(declare-fun b!7260294 () Bool)

(assert (=> b!7260294 (= e!4353584 (nullableZipper!2937 (set.insert lt!2590100 (as set.empty (Set Context!15244)))))))

(declare-fun b!7260295 () Bool)

(assert (=> b!7260295 (= e!4353584 (matchZipper!3592 (derivationStepZipper!3460 (set.insert lt!2590100 (as set.empty (Set Context!15244))) (head!14936 lt!2590109)) (tail!14389 lt!2590109)))))

(assert (= (and d!2258792 c!1350664) b!7260294))

(assert (= (and d!2258792 (not c!1350664)) b!7260295))

(assert (=> d!2258792 m!7944580))

(assert (=> b!7260294 m!7944390))

(declare-fun m!7944780 () Bool)

(assert (=> b!7260294 m!7944780))

(assert (=> b!7260295 m!7944584))

(assert (=> b!7260295 m!7944390))

(assert (=> b!7260295 m!7944584))

(declare-fun m!7944782 () Bool)

(assert (=> b!7260295 m!7944782))

(assert (=> b!7260295 m!7944588))

(assert (=> b!7260295 m!7944782))

(assert (=> b!7260295 m!7944588))

(declare-fun m!7944784 () Bool)

(assert (=> b!7260295 m!7944784))

(assert (=> b!7260080 d!2258792))

(declare-fun bs!1909246 () Bool)

(declare-fun d!2258794 () Bool)

(assert (= bs!1909246 (and d!2258794 d!2258748)))

(declare-fun lambda!446354 () Int)

(assert (=> bs!1909246 (= lambda!446354 lambda!446337)))

(declare-fun bs!1909247 () Bool)

(assert (= bs!1909247 (and d!2258794 d!2258702)))

(assert (=> bs!1909247 (= lambda!446354 lambda!446332)))

(declare-fun bs!1909248 () Bool)

(assert (= bs!1909248 (and d!2258794 d!2258770)))

(assert (=> bs!1909248 (= lambda!446354 lambda!446342)))

(declare-fun bs!1909249 () Bool)

(assert (= bs!1909249 (and d!2258794 d!2258768)))

(assert (=> bs!1909249 (= lambda!446354 lambda!446341)))

(declare-fun bs!1909250 () Bool)

(assert (= bs!1909250 (and d!2258794 b!7260089)))

(assert (=> bs!1909250 (= lambda!446354 lambda!446280)))

(assert (=> d!2258794 (matchZipper!3592 (set.insert (Context!15245 (++!16627 (exprs!8122 lt!2590113) (exprs!8122 ct2!328))) (as set.empty (Set Context!15244))) (++!16626 (t!384692 s1!1971) s2!1849))))

(declare-fun lt!2590316 () Unit!163998)

(assert (=> d!2258794 (= lt!2590316 (lemmaConcatPreservesForall!1489 (exprs!8122 lt!2590113) (exprs!8122 ct2!328) lambda!446354))))

(declare-fun lt!2590315 () Unit!163998)

(declare-fun choose!56222 (Context!15244 Context!15244 List!70626 List!70626) Unit!163998)

(assert (=> d!2258794 (= lt!2590315 (choose!56222 lt!2590113 ct2!328 (t!384692 s1!1971) s2!1849))))

(assert (=> d!2258794 (matchZipper!3592 (set.insert lt!2590113 (as set.empty (Set Context!15244))) (t!384692 s1!1971))))

(assert (=> d!2258794 (= (lemmaConcatenateContextMatchesConcatOfStrings!427 lt!2590113 ct2!328 (t!384692 s1!1971) s2!1849) lt!2590315)))

(declare-fun bs!1909251 () Bool)

(assert (= bs!1909251 d!2258794))

(declare-fun m!7944786 () Bool)

(assert (=> bs!1909251 m!7944786))

(declare-fun m!7944788 () Bool)

(assert (=> bs!1909251 m!7944788))

(assert (=> bs!1909251 m!7944786))

(declare-fun m!7944790 () Bool)

(assert (=> bs!1909251 m!7944790))

(declare-fun m!7944792 () Bool)

(assert (=> bs!1909251 m!7944792))

(assert (=> bs!1909251 m!7944396))

(assert (=> bs!1909251 m!7944792))

(assert (=> bs!1909251 m!7944394))

(declare-fun m!7944794 () Bool)

(assert (=> bs!1909251 m!7944794))

(declare-fun m!7944796 () Bool)

(assert (=> bs!1909251 m!7944796))

(assert (=> bs!1909251 m!7944394))

(assert (=> b!7260080 d!2258794))

(declare-fun d!2258796 () Bool)

(declare-fun c!1350665 () Bool)

(assert (=> d!2258796 (= c!1350665 (isEmpty!40601 (t!384692 s1!1971)))))

(declare-fun e!4353585 () Bool)

(assert (=> d!2258796 (= (matchZipper!3592 lt!2590123 (t!384692 s1!1971)) e!4353585)))

(declare-fun b!7260296 () Bool)

(assert (=> b!7260296 (= e!4353585 (nullableZipper!2937 lt!2590123))))

(declare-fun b!7260297 () Bool)

(assert (=> b!7260297 (= e!4353585 (matchZipper!3592 (derivationStepZipper!3460 lt!2590123 (head!14936 (t!384692 s1!1971))) (tail!14389 (t!384692 s1!1971))))))

(assert (= (and d!2258796 c!1350665) b!7260296))

(assert (= (and d!2258796 (not c!1350665)) b!7260297))

(assert (=> d!2258796 m!7944556))

(declare-fun m!7944798 () Bool)

(assert (=> b!7260296 m!7944798))

(assert (=> b!7260297 m!7944560))

(assert (=> b!7260297 m!7944560))

(declare-fun m!7944800 () Bool)

(assert (=> b!7260297 m!7944800))

(assert (=> b!7260297 m!7944564))

(assert (=> b!7260297 m!7944800))

(assert (=> b!7260297 m!7944564))

(declare-fun m!7944802 () Bool)

(assert (=> b!7260297 m!7944802))

(assert (=> b!7260082 d!2258796))

(declare-fun bs!1909252 () Bool)

(declare-fun d!2258798 () Bool)

(assert (= bs!1909252 (and d!2258798 b!7260088)))

(declare-fun lambda!446355 () Int)

(assert (=> bs!1909252 (= lambda!446355 lambda!446282)))

(declare-fun bs!1909253 () Bool)

(assert (= bs!1909253 (and d!2258798 d!2258774)))

(assert (=> bs!1909253 (= lambda!446355 lambda!446345)))

(assert (=> d!2258798 true))

(assert (=> d!2258798 (= (derivationStepZipper!3460 lt!2590110 (h!76950 s1!1971)) (flatMap!2847 lt!2590110 lambda!446355))))

(declare-fun bs!1909254 () Bool)

(assert (= bs!1909254 d!2258798))

(declare-fun m!7944804 () Bool)

(assert (=> bs!1909254 m!7944804))

(assert (=> b!7260082 d!2258798))

(declare-fun d!2258800 () Bool)

(declare-fun c!1350666 () Bool)

(assert (=> d!2258800 (= c!1350666 (isEmpty!40601 lt!2590109))))

(declare-fun e!4353586 () Bool)

(assert (=> d!2258800 (= (matchZipper!3592 lt!2590093 lt!2590109) e!4353586)))

(declare-fun b!7260298 () Bool)

(assert (=> b!7260298 (= e!4353586 (nullableZipper!2937 lt!2590093))))

(declare-fun b!7260299 () Bool)

(assert (=> b!7260299 (= e!4353586 (matchZipper!3592 (derivationStepZipper!3460 lt!2590093 (head!14936 lt!2590109)) (tail!14389 lt!2590109)))))

(assert (= (and d!2258800 c!1350666) b!7260298))

(assert (= (and d!2258800 (not c!1350666)) b!7260299))

(assert (=> d!2258800 m!7944580))

(declare-fun m!7944806 () Bool)

(assert (=> b!7260298 m!7944806))

(assert (=> b!7260299 m!7944584))

(assert (=> b!7260299 m!7944584))

(declare-fun m!7944808 () Bool)

(assert (=> b!7260299 m!7944808))

(assert (=> b!7260299 m!7944588))

(assert (=> b!7260299 m!7944808))

(assert (=> b!7260299 m!7944588))

(declare-fun m!7944810 () Bool)

(assert (=> b!7260299 m!7944810))

(assert (=> b!7260074 d!2258800))

(declare-fun d!2258802 () Bool)

(assert (=> d!2258802 (= (tail!14388 (exprs!8122 ct1!232)) (t!384693 (exprs!8122 ct1!232)))))

(assert (=> b!7260084 d!2258802))

(declare-fun d!2258804 () Bool)

(declare-fun c!1350671 () Bool)

(assert (=> d!2258804 (= c!1350671 (and (is-ElementMatch!18682 (h!76951 (exprs!8122 ct1!232))) (= (c!1350587 (h!76951 (exprs!8122 ct1!232))) (h!76950 s1!1971))))))

(declare-fun e!4353587 () (Set Context!15244))

(assert (=> d!2258804 (= (derivationStepZipperDown!2676 (h!76951 (exprs!8122 ct1!232)) lt!2590112 (h!76950 s1!1971)) e!4353587)))

(declare-fun b!7260300 () Bool)

(assert (=> b!7260300 (= e!4353587 (set.insert lt!2590112 (as set.empty (Set Context!15244))))))

(declare-fun b!7260301 () Bool)

(declare-fun e!4353592 () (Set Context!15244))

(declare-fun call!661796 () (Set Context!15244))

(assert (=> b!7260301 (= e!4353592 call!661796)))

(declare-fun b!7260302 () Bool)

(declare-fun e!4353590 () (Set Context!15244))

(assert (=> b!7260302 (= e!4353590 call!661796)))

(declare-fun b!7260303 () Bool)

(declare-fun c!1350669 () Bool)

(declare-fun e!4353591 () Bool)

(assert (=> b!7260303 (= c!1350669 e!4353591)))

(declare-fun res!2943846 () Bool)

(assert (=> b!7260303 (=> (not res!2943846) (not e!4353591))))

(assert (=> b!7260303 (= res!2943846 (is-Concat!27527 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun e!4353589 () (Set Context!15244))

(declare-fun e!4353588 () (Set Context!15244))

(assert (=> b!7260303 (= e!4353589 e!4353588)))

(declare-fun b!7260304 () Bool)

(declare-fun call!661797 () (Set Context!15244))

(declare-fun call!661792 () (Set Context!15244))

(assert (=> b!7260304 (= e!4353589 (set.union call!661797 call!661792))))

(declare-fun b!7260305 () Bool)

(assert (=> b!7260305 (= e!4353588 e!4353592)))

(declare-fun c!1350668 () Bool)

(assert (=> b!7260305 (= c!1350668 (is-Concat!27527 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun b!7260306 () Bool)

(declare-fun call!661795 () (Set Context!15244))

(assert (=> b!7260306 (= e!4353588 (set.union call!661792 call!661795))))

(declare-fun bm!661787 () Bool)

(declare-fun call!661793 () List!70627)

(declare-fun call!661794 () List!70627)

(assert (=> bm!661787 (= call!661793 call!661794)))

(declare-fun b!7260307 () Bool)

(assert (=> b!7260307 (= e!4353590 (as set.empty (Set Context!15244)))))

(declare-fun bm!661788 () Bool)

(assert (=> bm!661788 (= call!661796 call!661795)))

(declare-fun b!7260308 () Bool)

(assert (=> b!7260308 (= e!4353587 e!4353589)))

(declare-fun c!1350670 () Bool)

(assert (=> b!7260308 (= c!1350670 (is-Union!18682 (h!76951 (exprs!8122 ct1!232))))))

(declare-fun bm!661789 () Bool)

(assert (=> bm!661789 (= call!661797 (derivationStepZipperDown!2676 (ite c!1350670 (regOne!37877 (h!76951 (exprs!8122 ct1!232))) (ite c!1350669 (regTwo!37876 (h!76951 (exprs!8122 ct1!232))) (ite c!1350668 (regOne!37876 (h!76951 (exprs!8122 ct1!232))) (reg!19011 (h!76951 (exprs!8122 ct1!232)))))) (ite (or c!1350670 c!1350669) lt!2590112 (Context!15245 call!661793)) (h!76950 s1!1971)))))

(declare-fun bm!661790 () Bool)

(assert (=> bm!661790 (= call!661794 ($colon$colon!2939 (exprs!8122 lt!2590112) (ite (or c!1350669 c!1350668) (regTwo!37876 (h!76951 (exprs!8122 ct1!232))) (h!76951 (exprs!8122 ct1!232)))))))

(declare-fun b!7260309 () Bool)

(declare-fun c!1350667 () Bool)

(assert (=> b!7260309 (= c!1350667 (is-Star!18682 (h!76951 (exprs!8122 ct1!232))))))

(assert (=> b!7260309 (= e!4353592 e!4353590)))

(declare-fun bm!661791 () Bool)

(assert (=> bm!661791 (= call!661795 call!661797)))

(declare-fun b!7260310 () Bool)

(assert (=> b!7260310 (= e!4353591 (nullable!7942 (regOne!37876 (h!76951 (exprs!8122 ct1!232)))))))

(declare-fun bm!661792 () Bool)

(assert (=> bm!661792 (= call!661792 (derivationStepZipperDown!2676 (ite c!1350670 (regTwo!37877 (h!76951 (exprs!8122 ct1!232))) (regOne!37876 (h!76951 (exprs!8122 ct1!232)))) (ite c!1350670 lt!2590112 (Context!15245 call!661794)) (h!76950 s1!1971)))))

(assert (= (and d!2258804 c!1350671) b!7260300))

(assert (= (and d!2258804 (not c!1350671)) b!7260308))

(assert (= (and b!7260308 c!1350670) b!7260304))

(assert (= (and b!7260308 (not c!1350670)) b!7260303))

(assert (= (and b!7260303 res!2943846) b!7260310))

(assert (= (and b!7260303 c!1350669) b!7260306))

(assert (= (and b!7260303 (not c!1350669)) b!7260305))

(assert (= (and b!7260305 c!1350668) b!7260301))

(assert (= (and b!7260305 (not c!1350668)) b!7260309))

(assert (= (and b!7260309 c!1350667) b!7260302))

(assert (= (and b!7260309 (not c!1350667)) b!7260307))

(assert (= (or b!7260301 b!7260302) bm!661787))

(assert (= (or b!7260301 b!7260302) bm!661788))

(assert (= (or b!7260306 bm!661787) bm!661790))

(assert (= (or b!7260306 bm!661788) bm!661791))

(assert (= (or b!7260304 b!7260306) bm!661792))

(assert (= (or b!7260304 bm!661791) bm!661789))

(assert (=> b!7260310 m!7944622))

(declare-fun m!7944812 () Bool)

(assert (=> bm!661790 m!7944812))

(declare-fun m!7944814 () Bool)

(assert (=> bm!661789 m!7944814))

(declare-fun m!7944816 () Bool)

(assert (=> b!7260300 m!7944816))

(declare-fun m!7944818 () Bool)

(assert (=> bm!661792 m!7944818))

(assert (=> b!7260084 d!2258804))

(assert (=> b!7260084 d!2258760))

(assert (=> b!7260084 d!2258704))

(declare-fun d!2258806 () Bool)

(assert (=> d!2258806 (= (isEmpty!40599 lt!2590088) (is-Nil!70503 lt!2590088))))

(assert (=> b!7260084 d!2258806))

(declare-fun b!7260315 () Bool)

(declare-fun e!4353595 () Bool)

(declare-fun tp!2038715 () Bool)

(declare-fun tp!2038716 () Bool)

(assert (=> b!7260315 (= e!4353595 (and tp!2038715 tp!2038716))))

(assert (=> b!7260086 (= tp!2038698 e!4353595)))

(assert (= (and b!7260086 (is-Cons!70503 (exprs!8122 ct2!328))) b!7260315))

(declare-fun b!7260316 () Bool)

(declare-fun e!4353596 () Bool)

(declare-fun tp!2038717 () Bool)

(declare-fun tp!2038718 () Bool)

(assert (=> b!7260316 (= e!4353596 (and tp!2038717 tp!2038718))))

(assert (=> b!7260077 (= tp!2038696 e!4353596)))

(assert (= (and b!7260077 (is-Cons!70503 (exprs!8122 ct1!232))) b!7260316))

(declare-fun b!7260321 () Bool)

(declare-fun e!4353599 () Bool)

(declare-fun tp!2038721 () Bool)

(assert (=> b!7260321 (= e!4353599 (and tp_is_empty!46829 tp!2038721))))

(assert (=> b!7260083 (= tp!2038697 e!4353599)))

(assert (= (and b!7260083 (is-Cons!70502 (t!384692 s2!1849))) b!7260321))

(declare-fun b!7260322 () Bool)

(declare-fun e!4353600 () Bool)

(declare-fun tp!2038722 () Bool)

(assert (=> b!7260322 (= e!4353600 (and tp_is_empty!46829 tp!2038722))))

(assert (=> b!7260090 (= tp!2038695 e!4353600)))

(assert (= (and b!7260090 (is-Cons!70502 (t!384692 s1!1971))) b!7260322))

(declare-fun b_lambda!279267 () Bool)

(assert (= b_lambda!279261 (or b!7260088 b_lambda!279267)))

(declare-fun bs!1909255 () Bool)

(declare-fun d!2258808 () Bool)

(assert (= bs!1909255 (and d!2258808 b!7260088)))

(assert (=> bs!1909255 (= (dynLambda!28817 lambda!446282 ct1!232) (derivationStepZipperUp!2506 ct1!232 (h!76950 s1!1971)))))

(assert (=> bs!1909255 m!7944298))

(assert (=> d!2258752 d!2258808))

(declare-fun b_lambda!279269 () Bool)

(assert (= b_lambda!279263 (or b!7260088 b_lambda!279269)))

(declare-fun bs!1909256 () Bool)

(declare-fun d!2258810 () Bool)

(assert (= bs!1909256 (and d!2258810 b!7260088)))

(assert (=> bs!1909256 (= (dynLambda!28817 lambda!446282 lt!2590108) (derivationStepZipperUp!2506 lt!2590108 (h!76950 s1!1971)))))

(assert (=> bs!1909256 m!7944312))

(assert (=> d!2258756 d!2258810))

(declare-fun b_lambda!279271 () Bool)

(assert (= b_lambda!279265 (or b!7260091 b_lambda!279271)))

(declare-fun bs!1909257 () Bool)

(declare-fun d!2258812 () Bool)

(assert (= bs!1909257 (and d!2258812 b!7260091)))

(assert (=> bs!1909257 (= (dynLambda!28819 lambda!446281 lt!2590310) (matchZipper!3592 (set.insert lt!2590310 (as set.empty (Set Context!15244))) (t!384692 s1!1971)))))

(declare-fun m!7944820 () Bool)

(assert (=> bs!1909257 m!7944820))

(assert (=> bs!1909257 m!7944820))

(declare-fun m!7944822 () Bool)

(assert (=> bs!1909257 m!7944822))

(assert (=> d!2258790 d!2258812))

(push 1)

(assert (not b!7260202))

(assert (not b!7260288))

(assert (not b!7260211))

(assert (not b!7260322))

(assert (not b!7260316))

(assert (not b!7260299))

(assert (not bm!661786))

(assert (not d!2258750))

(assert (not bm!661765))

(assert (not b!7260195))

(assert (not b!7260248))

(assert (not b!7260199))

(assert (not d!2258738))

(assert (not d!2258708))

(assert (not b!7260252))

(assert (not d!2258722))

(assert (not d!2258716))

(assert (not d!2258702))

(assert (not b!7260275))

(assert (not d!2258732))

(assert (not b!7260297))

(assert (not d!2258758))

(assert (not b!7260284))

(assert (not b!7260189))

(assert (not b!7260295))

(assert (not d!2258796))

(assert (not b!7260170))

(assert (not b!7260272))

(assert (not bs!1909257))

(assert (not b!7260258))

(assert (not d!2258776))

(assert (not b!7260310))

(assert (not b!7260203))

(assert (not d!2258720))

(assert (not b_lambda!279267))

(assert (not b!7260173))

(assert (not b!7260197))

(assert (not b_lambda!279271))

(assert (not d!2258778))

(assert (not d!2258780))

(assert (not d!2258790))

(assert (not d!2258788))

(assert (not d!2258772))

(assert (not d!2258700))

(assert (not b!7260296))

(assert (not b!7260253))

(assert (not d!2258728))

(assert (not d!2258792))

(assert (not d!2258754))

(assert (not b!7260209))

(assert (not d!2258798))

(assert (not bm!661792))

(assert (not d!2258744))

(assert (not bs!1909256))

(assert (not b!7260280))

(assert (not d!2258764))

(assert (not d!2258766))

(assert (not b!7260274))

(assert (not b!7260294))

(assert (not b!7260298))

(assert (not b!7260273))

(assert (not d!2258704))

(assert (not b!7260255))

(assert (not b!7260210))

(assert (not b!7260198))

(assert (not b_lambda!279269))

(assert (not d!2258800))

(assert (not d!2258746))

(assert (not b!7260192))

(assert tp_is_empty!46829)

(assert (not b!7260277))

(assert (not bs!1909255))

(assert (not d!2258724))

(assert (not b!7260254))

(assert (not d!2258734))

(assert (not b!7260269))

(assert (not b!7260187))

(assert (not b!7260196))

(assert (not d!2258768))

(assert (not b!7260184))

(assert (not d!2258762))

(assert (not b!7260169))

(assert (not b!7260289))

(assert (not b!7260172))

(assert (not bm!661781))

(assert (not b!7260285))

(assert (not bm!661789))

(assert (not b!7260159))

(assert (not bm!661785))

(assert (not d!2258782))

(assert (not d!2258718))

(assert (not bm!661784))

(assert (not d!2258774))

(assert (not b!7260194))

(assert (not d!2258748))

(assert (not d!2258756))

(assert (not d!2258752))

(assert (not d!2258706))

(assert (not b!7260315))

(assert (not b!7260158))

(assert (not b!7260270))

(assert (not d!2258770))

(assert (not b!7260276))

(assert (not bm!661766))

(assert (not bm!661782))

(assert (not d!2258786))

(assert (not b!7260244))

(assert (not b!7260321))

(assert (not bm!661790))

(assert (not b!7260245))

(assert (not d!2258794))

(assert (not d!2258710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

