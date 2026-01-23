; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703128 () Bool)

(assert start!703128)

(declare-fun b!7239013 () Bool)

(assert (=> b!7239013 true))

(declare-fun b!7239011 () Bool)

(assert (=> b!7239011 true))

(declare-fun b!7238998 () Bool)

(declare-datatypes ((Unit!163642 0))(
  ( (Unit!163643) )
))
(declare-fun e!4340020 () Unit!163642)

(declare-fun Unit!163644 () Unit!163642)

(assert (=> b!7238998 (= e!4340020 Unit!163644)))

(declare-fun b!7238999 () Bool)

(declare-fun res!2936702 () Bool)

(declare-fun e!4340019 () Bool)

(assert (=> b!7238999 (=> (not res!2936702) (not e!4340019))))

(declare-datatypes ((C!37358 0))(
  ( (C!37359 (val!28627 Int)) )
))
(declare-datatypes ((Regex!18542 0))(
  ( (ElementMatch!18542 (c!1343975 C!37358)) (Concat!27387 (regOne!37596 Regex!18542) (regTwo!37596 Regex!18542)) (EmptyExpr!18542) (Star!18542 (reg!18871 Regex!18542)) (EmptyLang!18542) (Union!18542 (regOne!37597 Regex!18542) (regTwo!37597 Regex!18542)) )
))
(declare-datatypes ((List!70234 0))(
  ( (Nil!70110) (Cons!70110 (h!76558 Regex!18542) (t!384285 List!70234)) )
))
(declare-datatypes ((Context!14964 0))(
  ( (Context!14965 (exprs!7982 List!70234)) )
))
(declare-fun ct2!328 () Context!14964)

(declare-datatypes ((List!70235 0))(
  ( (Nil!70111) (Cons!70111 (h!76559 C!37358) (t!384286 List!70235)) )
))
(declare-fun s2!1849 () List!70235)

(declare-fun matchZipper!3452 ((Set Context!14964) List!70235) Bool)

(assert (=> b!7238999 (= res!2936702 (matchZipper!3452 (set.insert ct2!328 (as set.empty (Set Context!14964))) s2!1849))))

(declare-fun b!7239000 () Bool)

(declare-fun e!4340022 () Bool)

(declare-fun lambda!441201 () Int)

(declare-fun forall!17381 (List!70234 Int) Bool)

(assert (=> b!7239000 (= e!4340022 (forall!17381 (exprs!7982 ct2!328) lambda!441201))))

(declare-fun b!7239001 () Bool)

(declare-fun Unit!163645 () Unit!163642)

(assert (=> b!7239001 (= e!4340020 Unit!163645)))

(declare-fun lt!2578004 () Unit!163642)

(declare-fun ct1!232 () Context!14964)

(declare-fun lemmaConcatPreservesForall!1351 (List!70234 List!70234 Int) Unit!163642)

(assert (=> b!7239001 (= lt!2578004 (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun lt!2578028 () (Set Context!14964))

(declare-fun lt!2578016 () Context!14964)

(declare-fun s1!1971 () List!70235)

(declare-fun derivationStepZipperUp!2416 (Context!14964 C!37358) (Set Context!14964))

(assert (=> b!7239001 (= lt!2578028 (derivationStepZipperUp!2416 lt!2578016 (h!76559 s1!1971)))))

(declare-fun lt!2578014 () (Set Context!14964))

(declare-fun lt!2578036 () Unit!163642)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1689 ((Set Context!14964) (Set Context!14964) List!70235) Unit!163642)

(assert (=> b!7239001 (= lt!2578036 (lemmaZipperConcatMatchesSameAsBothZippers!1689 lt!2578014 lt!2578028 (t!384286 s1!1971)))))

(declare-fun res!2936703 () Bool)

(assert (=> b!7239001 (= res!2936703 (matchZipper!3452 lt!2578014 (t!384286 s1!1971)))))

(declare-fun e!4340023 () Bool)

(assert (=> b!7239001 (=> res!2936703 e!4340023)))

(assert (=> b!7239001 (= (matchZipper!3452 (set.union lt!2578014 lt!2578028) (t!384286 s1!1971)) e!4340023)))

(declare-fun lt!2578034 () Unit!163642)

(assert (=> b!7239001 (= lt!2578034 (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun lt!2578001 () (Set Context!14964))

(declare-fun lt!2578025 () Context!14964)

(assert (=> b!7239001 (= lt!2578001 (derivationStepZipperUp!2416 lt!2578025 (h!76559 s1!1971)))))

(declare-fun lt!2578026 () List!70235)

(declare-fun lt!2578012 () Unit!163642)

(declare-fun lt!2578002 () (Set Context!14964))

(assert (=> b!7239001 (= lt!2578012 (lemmaZipperConcatMatchesSameAsBothZippers!1689 lt!2578002 lt!2578001 lt!2578026))))

(declare-fun res!2936701 () Bool)

(assert (=> b!7239001 (= res!2936701 (matchZipper!3452 lt!2578002 lt!2578026))))

(declare-fun e!4340015 () Bool)

(assert (=> b!7239001 (=> res!2936701 e!4340015)))

(assert (=> b!7239001 (= (matchZipper!3452 (set.union lt!2578002 lt!2578001) lt!2578026) e!4340015)))

(declare-fun b!7239002 () Bool)

(declare-fun e!4340027 () Bool)

(declare-fun e!4340014 () Bool)

(assert (=> b!7239002 (= e!4340027 e!4340014)))

(declare-fun res!2936704 () Bool)

(assert (=> b!7239002 (=> res!2936704 e!4340014)))

(declare-fun isEmpty!40403 (List!70234) Bool)

(assert (=> b!7239002 (= res!2936704 (isEmpty!40403 (exprs!7982 ct1!232)))))

(declare-fun lt!2578018 () (Set Context!14964))

(assert (=> b!7239002 (= lt!2578018 (derivationStepZipperUp!2416 ct1!232 (h!76559 s1!1971)))))

(declare-fun lt!2578013 () Unit!163642)

(declare-fun lt!2578024 () Context!14964)

(assert (=> b!7239002 (= lt!2578013 (lemmaConcatPreservesForall!1351 (exprs!7982 lt!2578024) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun lt!2578023 () Context!14964)

(assert (=> b!7239002 (matchZipper!3452 (set.insert lt!2578023 (as set.empty (Set Context!14964))) lt!2578026)))

(declare-fun ++!16384 (List!70235 List!70235) List!70235)

(assert (=> b!7239002 (= lt!2578026 (++!16384 (t!384286 s1!1971) s2!1849))))

(declare-fun ++!16385 (List!70234 List!70234) List!70234)

(assert (=> b!7239002 (= lt!2578023 (Context!14965 (++!16385 (exprs!7982 lt!2578024) (exprs!7982 ct2!328))))))

(declare-fun lt!2578011 () Unit!163642)

(assert (=> b!7239002 (= lt!2578011 (lemmaConcatPreservesForall!1351 (exprs!7982 lt!2578024) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun lt!2578033 () Unit!163642)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!333 (Context!14964 Context!14964 List!70235 List!70235) Unit!163642)

(assert (=> b!7239002 (= lt!2578033 (lemmaConcatenateContextMatchesConcatOfStrings!333 lt!2578024 ct2!328 (t!384286 s1!1971) s2!1849))))

(declare-fun lt!2578030 () (Set Context!14964))

(declare-fun lambda!441202 () Int)

(declare-fun getWitness!2087 ((Set Context!14964) Int) Context!14964)

(assert (=> b!7239002 (= lt!2578024 (getWitness!2087 lt!2578030 lambda!441202))))

(declare-fun b!7239003 () Bool)

(declare-fun e!4340024 () Bool)

(declare-fun tp!2034995 () Bool)

(assert (=> b!7239003 (= e!4340024 tp!2034995)))

(declare-fun b!7239004 () Bool)

(declare-fun e!4340026 () Bool)

(declare-fun tp!2034994 () Bool)

(assert (=> b!7239004 (= e!4340026 tp!2034994)))

(declare-fun res!2936695 () Bool)

(assert (=> start!703128 (=> (not res!2936695) (not e!4340019))))

(declare-fun lt!2578031 () (Set Context!14964))

(assert (=> start!703128 (= res!2936695 (matchZipper!3452 lt!2578031 s1!1971))))

(assert (=> start!703128 (= lt!2578031 (set.insert ct1!232 (as set.empty (Set Context!14964))))))

(assert (=> start!703128 e!4340019))

(declare-fun inv!89366 (Context!14964) Bool)

(assert (=> start!703128 (and (inv!89366 ct1!232) e!4340024)))

(declare-fun e!4340025 () Bool)

(assert (=> start!703128 e!4340025))

(declare-fun e!4340021 () Bool)

(assert (=> start!703128 e!4340021))

(assert (=> start!703128 (and (inv!89366 ct2!328) e!4340026)))

(declare-fun b!7239005 () Bool)

(declare-fun e!4340016 () Bool)

(assert (=> b!7239005 (= e!4340019 e!4340016)))

(declare-fun res!2936698 () Bool)

(assert (=> b!7239005 (=> (not res!2936698) (not e!4340016))))

(assert (=> b!7239005 (= res!2936698 (and (not (is-Nil!70110 (exprs!7982 ct1!232))) (is-Cons!70111 s1!1971)))))

(declare-fun lt!2578009 () (Set Context!14964))

(declare-fun lt!2578020 () Context!14964)

(assert (=> b!7239005 (= lt!2578009 (set.insert lt!2578020 (as set.empty (Set Context!14964))))))

(declare-fun lt!2578015 () List!70234)

(assert (=> b!7239005 (= lt!2578020 (Context!14965 lt!2578015))))

(assert (=> b!7239005 (= lt!2578015 (++!16385 (exprs!7982 ct1!232) (exprs!7982 ct2!328)))))

(declare-fun lt!2578008 () Unit!163642)

(assert (=> b!7239005 (= lt!2578008 (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun b!7239006 () Bool)

(declare-fun tp_is_empty!46549 () Bool)

(declare-fun tp!2034996 () Bool)

(assert (=> b!7239006 (= e!4340025 (and tp_is_empty!46549 tp!2034996))))

(declare-fun b!7239007 () Bool)

(assert (=> b!7239007 (= e!4340023 (matchZipper!3452 lt!2578028 (t!384286 s1!1971)))))

(declare-fun b!7239008 () Bool)

(declare-fun tp!2034993 () Bool)

(assert (=> b!7239008 (= e!4340021 (and tp_is_empty!46549 tp!2034993))))

(declare-fun b!7239009 () Bool)

(declare-fun e!4340018 () Bool)

(assert (=> b!7239009 (= e!4340014 e!4340018)))

(declare-fun res!2936696 () Bool)

(assert (=> b!7239009 (=> res!2936696 e!4340018)))

(assert (=> b!7239009 (= res!2936696 (isEmpty!40403 lt!2578015))))

(declare-fun lt!2578007 () Unit!163642)

(assert (=> b!7239009 (= lt!2578007 (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun lt!2578010 () (Set Context!14964))

(assert (=> b!7239009 (= lt!2578010 (derivationStepZipperUp!2416 lt!2578020 (h!76559 s1!1971)))))

(declare-fun lt!2578017 () Unit!163642)

(assert (=> b!7239009 (= lt!2578017 (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun derivationStepZipperDown!2586 (Regex!18542 Context!14964 C!37358) (Set Context!14964))

(assert (=> b!7239009 (= lt!2578014 (derivationStepZipperDown!2586 (h!76558 (exprs!7982 ct1!232)) lt!2578016 (h!76559 s1!1971)))))

(declare-fun tail!14194 (List!70234) List!70234)

(assert (=> b!7239009 (= lt!2578016 (Context!14965 (tail!14194 (exprs!7982 ct1!232))))))

(declare-fun b!7239010 () Bool)

(declare-fun e!4340017 () Bool)

(assert (=> b!7239010 (= e!4340016 e!4340017)))

(declare-fun res!2936700 () Bool)

(assert (=> b!7239010 (=> (not res!2936700) (not e!4340017))))

(assert (=> b!7239010 (= res!2936700 (matchZipper!3452 lt!2578030 (t!384286 s1!1971)))))

(declare-fun derivationStepZipper!3334 ((Set Context!14964) C!37358) (Set Context!14964))

(assert (=> b!7239010 (= lt!2578030 (derivationStepZipper!3334 lt!2578031 (h!76559 s1!1971)))))

(assert (=> b!7239011 (= e!4340018 e!4340022)))

(declare-fun res!2936699 () Bool)

(assert (=> b!7239011 (=> res!2936699 e!4340022)))

(assert (=> b!7239011 (= res!2936699 (not (forall!17381 (exprs!7982 lt!2578024) lambda!441201)))))

(assert (=> b!7239011 (set.member lt!2578023 (derivationStepZipper!3334 lt!2578009 (h!76559 s1!1971)))))

(declare-fun lt!2578003 () Unit!163642)

(assert (=> b!7239011 (= lt!2578003 (lemmaConcatPreservesForall!1351 (exprs!7982 lt!2578024) (exprs!7982 ct2!328) lambda!441201))))

(assert (=> b!7239011 (set.member lt!2578023 lt!2578010)))

(declare-fun lt!2578022 () Unit!163642)

(assert (=> b!7239011 (= lt!2578022 (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun lt!2578027 () Unit!163642)

(assert (=> b!7239011 (= lt!2578027 (lemmaConcatPreservesForall!1351 (exprs!7982 lt!2578024) (exprs!7982 ct2!328) lambda!441201))))

(declare-fun lt!2578006 () Unit!163642)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!7 (Context!14964 Context!14964 Context!14964 C!37358) Unit!163642)

(assert (=> b!7239011 (= lt!2578006 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!7 ct1!232 ct2!328 lt!2578024 (h!76559 s1!1971)))))

(declare-fun tail!14195 (List!70235) List!70235)

(assert (=> b!7239011 (= (tail!14195 (++!16384 s1!1971 s2!1849)) lt!2578026)))

(declare-fun lt!2578019 () Unit!163642)

(assert (=> b!7239011 (= lt!2578019 e!4340020)))

(declare-fun c!1343974 () Bool)

(declare-fun nullable!7855 (Regex!18542) Bool)

(assert (=> b!7239011 (= c!1343974 (nullable!7855 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun lambda!441203 () Int)

(declare-fun flatMap!2746 ((Set Context!14964) Int) (Set Context!14964))

(assert (=> b!7239011 (= (flatMap!2746 lt!2578009 lambda!441203) (derivationStepZipperUp!2416 lt!2578020 (h!76559 s1!1971)))))

(declare-fun lt!2578021 () Unit!163642)

(declare-fun lemmaFlatMapOnSingletonSet!2173 ((Set Context!14964) Context!14964 Int) Unit!163642)

(assert (=> b!7239011 (= lt!2578021 (lemmaFlatMapOnSingletonSet!2173 lt!2578009 lt!2578020 lambda!441203))))

(declare-fun lt!2578029 () Unit!163642)

(assert (=> b!7239011 (= lt!2578029 (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201))))

(assert (=> b!7239011 (= (flatMap!2746 lt!2578031 lambda!441203) (derivationStepZipperUp!2416 ct1!232 (h!76559 s1!1971)))))

(declare-fun lt!2578032 () Unit!163642)

(assert (=> b!7239011 (= lt!2578032 (lemmaFlatMapOnSingletonSet!2173 lt!2578031 ct1!232 lambda!441203))))

(assert (=> b!7239011 (= lt!2578002 (derivationStepZipperDown!2586 (h!76558 (exprs!7982 ct1!232)) lt!2578025 (h!76559 s1!1971)))))

(assert (=> b!7239011 (= lt!2578025 (Context!14965 (tail!14194 lt!2578015)))))

(declare-fun b!7239012 () Bool)

(assert (=> b!7239012 (= e!4340015 (matchZipper!3452 lt!2578001 lt!2578026))))

(assert (=> b!7239013 (= e!4340017 (not e!4340027))))

(declare-fun res!2936697 () Bool)

(assert (=> b!7239013 (=> res!2936697 e!4340027)))

(declare-fun exists!4227 ((Set Context!14964) Int) Bool)

(assert (=> b!7239013 (= res!2936697 (not (exists!4227 lt!2578030 lambda!441202)))))

(declare-datatypes ((List!70236 0))(
  ( (Nil!70112) (Cons!70112 (h!76560 Context!14964) (t!384287 List!70236)) )
))
(declare-fun lt!2578005 () List!70236)

(declare-fun exists!4228 (List!70236 Int) Bool)

(assert (=> b!7239013 (exists!4228 lt!2578005 lambda!441202)))

(declare-fun lt!2578035 () Unit!163642)

(declare-fun lemmaZipperMatchesExistsMatchingContext!685 (List!70236 List!70235) Unit!163642)

(assert (=> b!7239013 (= lt!2578035 (lemmaZipperMatchesExistsMatchingContext!685 lt!2578005 (t!384286 s1!1971)))))

(declare-fun toList!11399 ((Set Context!14964)) List!70236)

(assert (=> b!7239013 (= lt!2578005 (toList!11399 lt!2578030))))

(assert (= (and start!703128 res!2936695) b!7238999))

(assert (= (and b!7238999 res!2936702) b!7239005))

(assert (= (and b!7239005 res!2936698) b!7239010))

(assert (= (and b!7239010 res!2936700) b!7239013))

(assert (= (and b!7239013 (not res!2936697)) b!7239002))

(assert (= (and b!7239002 (not res!2936704)) b!7239009))

(assert (= (and b!7239009 (not res!2936696)) b!7239011))

(assert (= (and b!7239011 c!1343974) b!7239001))

(assert (= (and b!7239011 (not c!1343974)) b!7238998))

(assert (= (and b!7239001 (not res!2936703)) b!7239007))

(assert (= (and b!7239001 (not res!2936701)) b!7239012))

(assert (= (and b!7239011 (not res!2936699)) b!7239000))

(assert (= start!703128 b!7239003))

(assert (= (and start!703128 (is-Cons!70111 s1!1971)) b!7239006))

(assert (= (and start!703128 (is-Cons!70111 s2!1849)) b!7239008))

(assert (= start!703128 b!7239004))

(declare-fun m!7911424 () Bool)

(assert (=> b!7239001 m!7911424))

(declare-fun m!7911426 () Bool)

(assert (=> b!7239001 m!7911426))

(declare-fun m!7911428 () Bool)

(assert (=> b!7239001 m!7911428))

(declare-fun m!7911430 () Bool)

(assert (=> b!7239001 m!7911430))

(declare-fun m!7911432 () Bool)

(assert (=> b!7239001 m!7911432))

(declare-fun m!7911434 () Bool)

(assert (=> b!7239001 m!7911434))

(declare-fun m!7911436 () Bool)

(assert (=> b!7239001 m!7911436))

(declare-fun m!7911438 () Bool)

(assert (=> b!7239001 m!7911438))

(assert (=> b!7239001 m!7911430))

(declare-fun m!7911440 () Bool)

(assert (=> b!7239001 m!7911440))

(declare-fun m!7911442 () Bool)

(assert (=> start!703128 m!7911442))

(declare-fun m!7911444 () Bool)

(assert (=> start!703128 m!7911444))

(declare-fun m!7911446 () Bool)

(assert (=> start!703128 m!7911446))

(declare-fun m!7911448 () Bool)

(assert (=> start!703128 m!7911448))

(declare-fun m!7911450 () Bool)

(assert (=> b!7239012 m!7911450))

(declare-fun m!7911452 () Bool)

(assert (=> b!7238999 m!7911452))

(assert (=> b!7238999 m!7911452))

(declare-fun m!7911454 () Bool)

(assert (=> b!7238999 m!7911454))

(declare-fun m!7911456 () Bool)

(assert (=> b!7239007 m!7911456))

(declare-fun m!7911458 () Bool)

(assert (=> b!7239005 m!7911458))

(declare-fun m!7911460 () Bool)

(assert (=> b!7239005 m!7911460))

(assert (=> b!7239005 m!7911430))

(declare-fun m!7911462 () Bool)

(assert (=> b!7239010 m!7911462))

(declare-fun m!7911464 () Bool)

(assert (=> b!7239010 m!7911464))

(declare-fun m!7911466 () Bool)

(assert (=> b!7239011 m!7911466))

(declare-fun m!7911468 () Bool)

(assert (=> b!7239011 m!7911468))

(assert (=> b!7239011 m!7911430))

(declare-fun m!7911470 () Bool)

(assert (=> b!7239011 m!7911470))

(declare-fun m!7911472 () Bool)

(assert (=> b!7239011 m!7911472))

(declare-fun m!7911474 () Bool)

(assert (=> b!7239011 m!7911474))

(declare-fun m!7911476 () Bool)

(assert (=> b!7239011 m!7911476))

(declare-fun m!7911478 () Bool)

(assert (=> b!7239011 m!7911478))

(declare-fun m!7911480 () Bool)

(assert (=> b!7239011 m!7911480))

(assert (=> b!7239011 m!7911430))

(declare-fun m!7911482 () Bool)

(assert (=> b!7239011 m!7911482))

(declare-fun m!7911484 () Bool)

(assert (=> b!7239011 m!7911484))

(assert (=> b!7239011 m!7911470))

(declare-fun m!7911486 () Bool)

(assert (=> b!7239011 m!7911486))

(declare-fun m!7911488 () Bool)

(assert (=> b!7239011 m!7911488))

(declare-fun m!7911490 () Bool)

(assert (=> b!7239011 m!7911490))

(declare-fun m!7911492 () Bool)

(assert (=> b!7239011 m!7911492))

(declare-fun m!7911494 () Bool)

(assert (=> b!7239011 m!7911494))

(declare-fun m!7911496 () Bool)

(assert (=> b!7239011 m!7911496))

(declare-fun m!7911498 () Bool)

(assert (=> b!7239011 m!7911498))

(assert (=> b!7239011 m!7911484))

(declare-fun m!7911500 () Bool)

(assert (=> b!7239013 m!7911500))

(declare-fun m!7911502 () Bool)

(assert (=> b!7239013 m!7911502))

(declare-fun m!7911504 () Bool)

(assert (=> b!7239013 m!7911504))

(declare-fun m!7911506 () Bool)

(assert (=> b!7239013 m!7911506))

(declare-fun m!7911508 () Bool)

(assert (=> b!7239002 m!7911508))

(assert (=> b!7239002 m!7911494))

(declare-fun m!7911510 () Bool)

(assert (=> b!7239002 m!7911510))

(declare-fun m!7911512 () Bool)

(assert (=> b!7239002 m!7911512))

(assert (=> b!7239002 m!7911484))

(assert (=> b!7239002 m!7911484))

(declare-fun m!7911514 () Bool)

(assert (=> b!7239002 m!7911514))

(declare-fun m!7911516 () Bool)

(assert (=> b!7239002 m!7911516))

(assert (=> b!7239002 m!7911510))

(declare-fun m!7911518 () Bool)

(assert (=> b!7239002 m!7911518))

(declare-fun m!7911520 () Bool)

(assert (=> b!7239002 m!7911520))

(declare-fun m!7911522 () Bool)

(assert (=> b!7239009 m!7911522))

(assert (=> b!7239009 m!7911430))

(assert (=> b!7239009 m!7911430))

(declare-fun m!7911524 () Bool)

(assert (=> b!7239009 m!7911524))

(assert (=> b!7239009 m!7911472))

(declare-fun m!7911526 () Bool)

(assert (=> b!7239009 m!7911526))

(declare-fun m!7911528 () Bool)

(assert (=> b!7239000 m!7911528))

(push 1)

(assert (not b!7239011))

(assert (not b!7239000))

(assert (not b!7239006))

(assert (not b!7238999))

(assert (not b!7239008))

(assert (not b!7239007))

(assert (not b!7239002))

(assert (not b!7239003))

(assert (not b!7239004))

(assert (not b!7239005))

(assert (not b!7239010))

(assert (not b!7239013))

(assert (not b!7239012))

(assert (not b!7239001))

(assert tp_is_empty!46549)

(assert (not b!7239009))

(assert (not start!703128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2248772 () Bool)

(declare-fun lt!2578147 () Bool)

(assert (=> d!2248772 (= lt!2578147 (exists!4228 (toList!11399 lt!2578030) lambda!441202))))

(declare-fun choose!55716 ((Set Context!14964) Int) Bool)

(assert (=> d!2248772 (= lt!2578147 (choose!55716 lt!2578030 lambda!441202))))

(assert (=> d!2248772 (= (exists!4227 lt!2578030 lambda!441202) lt!2578147)))

(declare-fun bs!1903774 () Bool)

(assert (= bs!1903774 d!2248772))

(assert (=> bs!1903774 m!7911506))

(assert (=> bs!1903774 m!7911506))

(declare-fun m!7911636 () Bool)

(assert (=> bs!1903774 m!7911636))

(declare-fun m!7911638 () Bool)

(assert (=> bs!1903774 m!7911638))

(assert (=> b!7239013 d!2248772))

(declare-fun bs!1903775 () Bool)

(declare-fun d!2248774 () Bool)

(assert (= bs!1903775 (and d!2248774 b!7239013)))

(declare-fun lambda!441243 () Int)

(assert (=> bs!1903775 (not (= lambda!441243 lambda!441202))))

(assert (=> d!2248774 true))

(declare-fun order!28883 () Int)

(declare-fun dynLambda!28615 (Int Int) Int)

(assert (=> d!2248774 (< (dynLambda!28615 order!28883 lambda!441202) (dynLambda!28615 order!28883 lambda!441243))))

(declare-fun forall!17383 (List!70236 Int) Bool)

(assert (=> d!2248774 (= (exists!4228 lt!2578005 lambda!441202) (not (forall!17383 lt!2578005 lambda!441243)))))

(declare-fun bs!1903776 () Bool)

(assert (= bs!1903776 d!2248774))

(declare-fun m!7911640 () Bool)

(assert (=> bs!1903776 m!7911640))

(assert (=> b!7239013 d!2248774))

(declare-fun bs!1903777 () Bool)

(declare-fun d!2248776 () Bool)

(assert (= bs!1903777 (and d!2248776 b!7239013)))

(declare-fun lambda!441246 () Int)

(assert (=> bs!1903777 (= lambda!441246 lambda!441202)))

(declare-fun bs!1903778 () Bool)

(assert (= bs!1903778 (and d!2248776 d!2248774)))

(assert (=> bs!1903778 (not (= lambda!441246 lambda!441243))))

(assert (=> d!2248776 true))

(assert (=> d!2248776 (exists!4228 lt!2578005 lambda!441246)))

(declare-fun lt!2578150 () Unit!163642)

(declare-fun choose!55717 (List!70236 List!70235) Unit!163642)

(assert (=> d!2248776 (= lt!2578150 (choose!55717 lt!2578005 (t!384286 s1!1971)))))

(declare-fun content!14467 (List!70236) (Set Context!14964))

(assert (=> d!2248776 (matchZipper!3452 (content!14467 lt!2578005) (t!384286 s1!1971))))

(assert (=> d!2248776 (= (lemmaZipperMatchesExistsMatchingContext!685 lt!2578005 (t!384286 s1!1971)) lt!2578150)))

(declare-fun bs!1903779 () Bool)

(assert (= bs!1903779 d!2248776))

(declare-fun m!7911642 () Bool)

(assert (=> bs!1903779 m!7911642))

(declare-fun m!7911644 () Bool)

(assert (=> bs!1903779 m!7911644))

(declare-fun m!7911646 () Bool)

(assert (=> bs!1903779 m!7911646))

(assert (=> bs!1903779 m!7911646))

(declare-fun m!7911648 () Bool)

(assert (=> bs!1903779 m!7911648))

(assert (=> b!7239013 d!2248776))

(declare-fun d!2248778 () Bool)

(declare-fun e!4340072 () Bool)

(assert (=> d!2248778 e!4340072))

(declare-fun res!2936737 () Bool)

(assert (=> d!2248778 (=> (not res!2936737) (not e!4340072))))

(declare-fun lt!2578153 () List!70236)

(declare-fun noDuplicate!2949 (List!70236) Bool)

(assert (=> d!2248778 (= res!2936737 (noDuplicate!2949 lt!2578153))))

(declare-fun choose!55718 ((Set Context!14964)) List!70236)

(assert (=> d!2248778 (= lt!2578153 (choose!55718 lt!2578030))))

(assert (=> d!2248778 (= (toList!11399 lt!2578030) lt!2578153)))

(declare-fun b!7239074 () Bool)

(assert (=> b!7239074 (= e!4340072 (= (content!14467 lt!2578153) lt!2578030))))

(assert (= (and d!2248778 res!2936737) b!7239074))

(declare-fun m!7911650 () Bool)

(assert (=> d!2248778 m!7911650))

(declare-fun m!7911652 () Bool)

(assert (=> d!2248778 m!7911652))

(declare-fun m!7911654 () Bool)

(assert (=> b!7239074 m!7911654))

(assert (=> b!7239013 d!2248778))

(declare-fun d!2248780 () Bool)

(declare-fun e!4340075 () Bool)

(assert (=> d!2248780 e!4340075))

(declare-fun res!2936740 () Bool)

(assert (=> d!2248780 (=> (not res!2936740) (not e!4340075))))

(declare-fun lt!2578156 () Context!14964)

(declare-fun dynLambda!28616 (Int Context!14964) Bool)

(assert (=> d!2248780 (= res!2936740 (dynLambda!28616 lambda!441202 lt!2578156))))

(declare-fun getWitness!2089 (List!70236 Int) Context!14964)

(assert (=> d!2248780 (= lt!2578156 (getWitness!2089 (toList!11399 lt!2578030) lambda!441202))))

(assert (=> d!2248780 (exists!4227 lt!2578030 lambda!441202)))

(assert (=> d!2248780 (= (getWitness!2087 lt!2578030 lambda!441202) lt!2578156)))

(declare-fun b!7239077 () Bool)

(assert (=> b!7239077 (= e!4340075 (set.member lt!2578156 lt!2578030))))

(assert (= (and d!2248780 res!2936740) b!7239077))

(declare-fun b_lambda!277647 () Bool)

(assert (=> (not b_lambda!277647) (not d!2248780)))

(declare-fun m!7911656 () Bool)

(assert (=> d!2248780 m!7911656))

(assert (=> d!2248780 m!7911506))

(assert (=> d!2248780 m!7911506))

(declare-fun m!7911658 () Bool)

(assert (=> d!2248780 m!7911658))

(assert (=> d!2248780 m!7911500))

(declare-fun m!7911660 () Bool)

(assert (=> b!7239077 m!7911660))

(assert (=> b!7239002 d!2248780))

(declare-fun d!2248782 () Bool)

(assert (=> d!2248782 (= (isEmpty!40403 (exprs!7982 ct1!232)) (is-Nil!70110 (exprs!7982 ct1!232)))))

(assert (=> b!7239002 d!2248782))

(declare-fun bs!1903780 () Bool)

(declare-fun d!2248784 () Bool)

(assert (= bs!1903780 (and d!2248784 b!7239005)))

(declare-fun lambda!441249 () Int)

(assert (=> bs!1903780 (= lambda!441249 lambda!441201)))

(assert (=> d!2248784 (matchZipper!3452 (set.insert (Context!14965 (++!16385 (exprs!7982 lt!2578024) (exprs!7982 ct2!328))) (as set.empty (Set Context!14964))) (++!16384 (t!384286 s1!1971) s2!1849))))

(declare-fun lt!2578162 () Unit!163642)

(assert (=> d!2248784 (= lt!2578162 (lemmaConcatPreservesForall!1351 (exprs!7982 lt!2578024) (exprs!7982 ct2!328) lambda!441249))))

(declare-fun lt!2578161 () Unit!163642)

(declare-fun choose!55719 (Context!14964 Context!14964 List!70235 List!70235) Unit!163642)

(assert (=> d!2248784 (= lt!2578161 (choose!55719 lt!2578024 ct2!328 (t!384286 s1!1971) s2!1849))))

(assert (=> d!2248784 (matchZipper!3452 (set.insert lt!2578024 (as set.empty (Set Context!14964))) (t!384286 s1!1971))))

(assert (=> d!2248784 (= (lemmaConcatenateContextMatchesConcatOfStrings!333 lt!2578024 ct2!328 (t!384286 s1!1971) s2!1849) lt!2578161)))

(declare-fun bs!1903781 () Bool)

(assert (= bs!1903781 d!2248784))

(declare-fun m!7911662 () Bool)

(assert (=> bs!1903781 m!7911662))

(assert (=> bs!1903781 m!7911512))

(assert (=> bs!1903781 m!7911514))

(declare-fun m!7911664 () Bool)

(assert (=> bs!1903781 m!7911664))

(declare-fun m!7911666 () Bool)

(assert (=> bs!1903781 m!7911666))

(assert (=> bs!1903781 m!7911664))

(declare-fun m!7911668 () Bool)

(assert (=> bs!1903781 m!7911668))

(assert (=> bs!1903781 m!7911668))

(assert (=> bs!1903781 m!7911512))

(declare-fun m!7911670 () Bool)

(assert (=> bs!1903781 m!7911670))

(declare-fun m!7911672 () Bool)

(assert (=> bs!1903781 m!7911672))

(assert (=> b!7239002 d!2248784))

(declare-fun d!2248786 () Bool)

(declare-fun e!4340081 () Bool)

(assert (=> d!2248786 e!4340081))

(declare-fun res!2936745 () Bool)

(assert (=> d!2248786 (=> (not res!2936745) (not e!4340081))))

(declare-fun lt!2578165 () List!70235)

(declare-fun content!14468 (List!70235) (Set C!37358))

(assert (=> d!2248786 (= res!2936745 (= (content!14468 lt!2578165) (set.union (content!14468 (t!384286 s1!1971)) (content!14468 s2!1849))))))

(declare-fun e!4340080 () List!70235)

(assert (=> d!2248786 (= lt!2578165 e!4340080)))

(declare-fun c!1343994 () Bool)

(assert (=> d!2248786 (= c!1343994 (is-Nil!70111 (t!384286 s1!1971)))))

(assert (=> d!2248786 (= (++!16384 (t!384286 s1!1971) s2!1849) lt!2578165)))

(declare-fun b!7239087 () Bool)

(assert (=> b!7239087 (= e!4340080 (Cons!70111 (h!76559 (t!384286 s1!1971)) (++!16384 (t!384286 (t!384286 s1!1971)) s2!1849)))))

(declare-fun b!7239086 () Bool)

(assert (=> b!7239086 (= e!4340080 s2!1849)))

(declare-fun b!7239089 () Bool)

(assert (=> b!7239089 (= e!4340081 (or (not (= s2!1849 Nil!70111)) (= lt!2578165 (t!384286 s1!1971))))))

(declare-fun b!7239088 () Bool)

(declare-fun res!2936746 () Bool)

(assert (=> b!7239088 (=> (not res!2936746) (not e!4340081))))

(declare-fun size!41612 (List!70235) Int)

(assert (=> b!7239088 (= res!2936746 (= (size!41612 lt!2578165) (+ (size!41612 (t!384286 s1!1971)) (size!41612 s2!1849))))))

(assert (= (and d!2248786 c!1343994) b!7239086))

(assert (= (and d!2248786 (not c!1343994)) b!7239087))

(assert (= (and d!2248786 res!2936745) b!7239088))

(assert (= (and b!7239088 res!2936746) b!7239089))

(declare-fun m!7911674 () Bool)

(assert (=> d!2248786 m!7911674))

(declare-fun m!7911676 () Bool)

(assert (=> d!2248786 m!7911676))

(declare-fun m!7911678 () Bool)

(assert (=> d!2248786 m!7911678))

(declare-fun m!7911680 () Bool)

(assert (=> b!7239087 m!7911680))

(declare-fun m!7911682 () Bool)

(assert (=> b!7239088 m!7911682))

(declare-fun m!7911684 () Bool)

(assert (=> b!7239088 m!7911684))

(declare-fun m!7911686 () Bool)

(assert (=> b!7239088 m!7911686))

(assert (=> b!7239002 d!2248786))

(declare-fun b!7239100 () Bool)

(declare-fun e!4340089 () (Set Context!14964))

(declare-fun call!659215 () (Set Context!14964))

(assert (=> b!7239100 (= e!4340089 (set.union call!659215 (derivationStepZipperUp!2416 (Context!14965 (t!384285 (exprs!7982 ct1!232))) (h!76559 s1!1971))))))

(declare-fun b!7239101 () Bool)

(declare-fun e!4340088 () (Set Context!14964))

(assert (=> b!7239101 (= e!4340088 call!659215)))

(declare-fun bm!659210 () Bool)

(assert (=> bm!659210 (= call!659215 (derivationStepZipperDown!2586 (h!76558 (exprs!7982 ct1!232)) (Context!14965 (t!384285 (exprs!7982 ct1!232))) (h!76559 s1!1971)))))

(declare-fun b!7239102 () Bool)

(assert (=> b!7239102 (= e!4340088 (as set.empty (Set Context!14964)))))

(declare-fun b!7239103 () Bool)

(assert (=> b!7239103 (= e!4340089 e!4340088)))

(declare-fun c!1344000 () Bool)

(assert (=> b!7239103 (= c!1344000 (is-Cons!70110 (exprs!7982 ct1!232)))))

(declare-fun d!2248788 () Bool)

(declare-fun c!1343999 () Bool)

(declare-fun e!4340090 () Bool)

(assert (=> d!2248788 (= c!1343999 e!4340090)))

(declare-fun res!2936749 () Bool)

(assert (=> d!2248788 (=> (not res!2936749) (not e!4340090))))

(assert (=> d!2248788 (= res!2936749 (is-Cons!70110 (exprs!7982 ct1!232)))))

(assert (=> d!2248788 (= (derivationStepZipperUp!2416 ct1!232 (h!76559 s1!1971)) e!4340089)))

(declare-fun b!7239104 () Bool)

(assert (=> b!7239104 (= e!4340090 (nullable!7855 (h!76558 (exprs!7982 ct1!232))))))

(assert (= (and d!2248788 res!2936749) b!7239104))

(assert (= (and d!2248788 c!1343999) b!7239100))

(assert (= (and d!2248788 (not c!1343999)) b!7239103))

(assert (= (and b!7239103 c!1344000) b!7239101))

(assert (= (and b!7239103 (not c!1344000)) b!7239102))

(assert (= (or b!7239100 b!7239101) bm!659210))

(declare-fun m!7911688 () Bool)

(assert (=> b!7239100 m!7911688))

(declare-fun m!7911690 () Bool)

(assert (=> bm!659210 m!7911690))

(assert (=> b!7239104 m!7911482))

(assert (=> b!7239002 d!2248788))

(declare-fun d!2248790 () Bool)

(declare-fun c!1344003 () Bool)

(declare-fun isEmpty!40405 (List!70235) Bool)

(assert (=> d!2248790 (= c!1344003 (isEmpty!40405 lt!2578026))))

(declare-fun e!4340093 () Bool)

(assert (=> d!2248790 (= (matchZipper!3452 (set.insert lt!2578023 (as set.empty (Set Context!14964))) lt!2578026) e!4340093)))

(declare-fun b!7239109 () Bool)

(declare-fun nullableZipper!2840 ((Set Context!14964)) Bool)

(assert (=> b!7239109 (= e!4340093 (nullableZipper!2840 (set.insert lt!2578023 (as set.empty (Set Context!14964)))))))

(declare-fun b!7239110 () Bool)

(declare-fun head!14829 (List!70235) C!37358)

(assert (=> b!7239110 (= e!4340093 (matchZipper!3452 (derivationStepZipper!3334 (set.insert lt!2578023 (as set.empty (Set Context!14964))) (head!14829 lt!2578026)) (tail!14195 lt!2578026)))))

(assert (= (and d!2248790 c!1344003) b!7239109))

(assert (= (and d!2248790 (not c!1344003)) b!7239110))

(declare-fun m!7911692 () Bool)

(assert (=> d!2248790 m!7911692))

(assert (=> b!7239109 m!7911510))

(declare-fun m!7911694 () Bool)

(assert (=> b!7239109 m!7911694))

(declare-fun m!7911696 () Bool)

(assert (=> b!7239110 m!7911696))

(assert (=> b!7239110 m!7911510))

(assert (=> b!7239110 m!7911696))

(declare-fun m!7911698 () Bool)

(assert (=> b!7239110 m!7911698))

(declare-fun m!7911700 () Bool)

(assert (=> b!7239110 m!7911700))

(assert (=> b!7239110 m!7911698))

(assert (=> b!7239110 m!7911700))

(declare-fun m!7911702 () Bool)

(assert (=> b!7239110 m!7911702))

(assert (=> b!7239002 d!2248790))

(declare-fun d!2248792 () Bool)

(assert (=> d!2248792 (forall!17381 (++!16385 (exprs!7982 lt!2578024) (exprs!7982 ct2!328)) lambda!441201)))

(declare-fun lt!2578168 () Unit!163642)

(declare-fun choose!55720 (List!70234 List!70234 Int) Unit!163642)

(assert (=> d!2248792 (= lt!2578168 (choose!55720 (exprs!7982 lt!2578024) (exprs!7982 ct2!328) lambda!441201))))

(assert (=> d!2248792 (forall!17381 (exprs!7982 lt!2578024) lambda!441201)))

(assert (=> d!2248792 (= (lemmaConcatPreservesForall!1351 (exprs!7982 lt!2578024) (exprs!7982 ct2!328) lambda!441201) lt!2578168)))

(declare-fun bs!1903782 () Bool)

(assert (= bs!1903782 d!2248792))

(assert (=> bs!1903782 m!7911514))

(assert (=> bs!1903782 m!7911514))

(declare-fun m!7911704 () Bool)

(assert (=> bs!1903782 m!7911704))

(declare-fun m!7911706 () Bool)

(assert (=> bs!1903782 m!7911706))

(assert (=> bs!1903782 m!7911474))

(assert (=> b!7239002 d!2248792))

(declare-fun b!7239121 () Bool)

(declare-fun res!2936755 () Bool)

(declare-fun e!4340099 () Bool)

(assert (=> b!7239121 (=> (not res!2936755) (not e!4340099))))

(declare-fun lt!2578171 () List!70234)

(declare-fun size!41613 (List!70234) Int)

(assert (=> b!7239121 (= res!2936755 (= (size!41613 lt!2578171) (+ (size!41613 (exprs!7982 lt!2578024)) (size!41613 (exprs!7982 ct2!328)))))))

(declare-fun b!7239119 () Bool)

(declare-fun e!4340098 () List!70234)

(assert (=> b!7239119 (= e!4340098 (exprs!7982 ct2!328))))

(declare-fun b!7239122 () Bool)

(assert (=> b!7239122 (= e!4340099 (or (not (= (exprs!7982 ct2!328) Nil!70110)) (= lt!2578171 (exprs!7982 lt!2578024))))))

(declare-fun b!7239120 () Bool)

(assert (=> b!7239120 (= e!4340098 (Cons!70110 (h!76558 (exprs!7982 lt!2578024)) (++!16385 (t!384285 (exprs!7982 lt!2578024)) (exprs!7982 ct2!328))))))

(declare-fun d!2248794 () Bool)

(assert (=> d!2248794 e!4340099))

(declare-fun res!2936754 () Bool)

(assert (=> d!2248794 (=> (not res!2936754) (not e!4340099))))

(declare-fun content!14469 (List!70234) (Set Regex!18542))

(assert (=> d!2248794 (= res!2936754 (= (content!14469 lt!2578171) (set.union (content!14469 (exprs!7982 lt!2578024)) (content!14469 (exprs!7982 ct2!328)))))))

(assert (=> d!2248794 (= lt!2578171 e!4340098)))

(declare-fun c!1344006 () Bool)

(assert (=> d!2248794 (= c!1344006 (is-Nil!70110 (exprs!7982 lt!2578024)))))

(assert (=> d!2248794 (= (++!16385 (exprs!7982 lt!2578024) (exprs!7982 ct2!328)) lt!2578171)))

(assert (= (and d!2248794 c!1344006) b!7239119))

(assert (= (and d!2248794 (not c!1344006)) b!7239120))

(assert (= (and d!2248794 res!2936754) b!7239121))

(assert (= (and b!7239121 res!2936755) b!7239122))

(declare-fun m!7911708 () Bool)

(assert (=> b!7239121 m!7911708))

(declare-fun m!7911710 () Bool)

(assert (=> b!7239121 m!7911710))

(declare-fun m!7911712 () Bool)

(assert (=> b!7239121 m!7911712))

(declare-fun m!7911714 () Bool)

(assert (=> b!7239120 m!7911714))

(declare-fun m!7911716 () Bool)

(assert (=> d!2248794 m!7911716))

(declare-fun m!7911718 () Bool)

(assert (=> d!2248794 m!7911718))

(declare-fun m!7911720 () Bool)

(assert (=> d!2248794 m!7911720))

(assert (=> b!7239002 d!2248794))

(declare-fun d!2248796 () Bool)

(declare-fun c!1344007 () Bool)

(assert (=> d!2248796 (= c!1344007 (isEmpty!40405 lt!2578026))))

(declare-fun e!4340100 () Bool)

(assert (=> d!2248796 (= (matchZipper!3452 lt!2578001 lt!2578026) e!4340100)))

(declare-fun b!7239123 () Bool)

(assert (=> b!7239123 (= e!4340100 (nullableZipper!2840 lt!2578001))))

(declare-fun b!7239124 () Bool)

(assert (=> b!7239124 (= e!4340100 (matchZipper!3452 (derivationStepZipper!3334 lt!2578001 (head!14829 lt!2578026)) (tail!14195 lt!2578026)))))

(assert (= (and d!2248796 c!1344007) b!7239123))

(assert (= (and d!2248796 (not c!1344007)) b!7239124))

(assert (=> d!2248796 m!7911692))

(declare-fun m!7911722 () Bool)

(assert (=> b!7239123 m!7911722))

(assert (=> b!7239124 m!7911696))

(assert (=> b!7239124 m!7911696))

(declare-fun m!7911724 () Bool)

(assert (=> b!7239124 m!7911724))

(assert (=> b!7239124 m!7911700))

(assert (=> b!7239124 m!7911724))

(assert (=> b!7239124 m!7911700))

(declare-fun m!7911726 () Bool)

(assert (=> b!7239124 m!7911726))

(assert (=> b!7239012 d!2248796))

(declare-fun d!2248798 () Bool)

(declare-fun c!1344008 () Bool)

(assert (=> d!2248798 (= c!1344008 (isEmpty!40405 (t!384286 s1!1971)))))

(declare-fun e!4340101 () Bool)

(assert (=> d!2248798 (= (matchZipper!3452 lt!2578014 (t!384286 s1!1971)) e!4340101)))

(declare-fun b!7239125 () Bool)

(assert (=> b!7239125 (= e!4340101 (nullableZipper!2840 lt!2578014))))

(declare-fun b!7239126 () Bool)

(assert (=> b!7239126 (= e!4340101 (matchZipper!3452 (derivationStepZipper!3334 lt!2578014 (head!14829 (t!384286 s1!1971))) (tail!14195 (t!384286 s1!1971))))))

(assert (= (and d!2248798 c!1344008) b!7239125))

(assert (= (and d!2248798 (not c!1344008)) b!7239126))

(declare-fun m!7911728 () Bool)

(assert (=> d!2248798 m!7911728))

(declare-fun m!7911730 () Bool)

(assert (=> b!7239125 m!7911730))

(declare-fun m!7911732 () Bool)

(assert (=> b!7239126 m!7911732))

(assert (=> b!7239126 m!7911732))

(declare-fun m!7911734 () Bool)

(assert (=> b!7239126 m!7911734))

(declare-fun m!7911736 () Bool)

(assert (=> b!7239126 m!7911736))

(assert (=> b!7239126 m!7911734))

(assert (=> b!7239126 m!7911736))

(declare-fun m!7911738 () Bool)

(assert (=> b!7239126 m!7911738))

(assert (=> b!7239001 d!2248798))

(declare-fun e!4340104 () Bool)

(declare-fun d!2248800 () Bool)

(assert (=> d!2248800 (= (matchZipper!3452 (set.union lt!2578002 lt!2578001) lt!2578026) e!4340104)))

(declare-fun res!2936758 () Bool)

(assert (=> d!2248800 (=> res!2936758 e!4340104)))

(assert (=> d!2248800 (= res!2936758 (matchZipper!3452 lt!2578002 lt!2578026))))

(declare-fun lt!2578174 () Unit!163642)

(declare-fun choose!55721 ((Set Context!14964) (Set Context!14964) List!70235) Unit!163642)

(assert (=> d!2248800 (= lt!2578174 (choose!55721 lt!2578002 lt!2578001 lt!2578026))))

(assert (=> d!2248800 (= (lemmaZipperConcatMatchesSameAsBothZippers!1689 lt!2578002 lt!2578001 lt!2578026) lt!2578174)))

(declare-fun b!7239129 () Bool)

(assert (=> b!7239129 (= e!4340104 (matchZipper!3452 lt!2578001 lt!2578026))))

(assert (= (and d!2248800 (not res!2936758)) b!7239129))

(assert (=> d!2248800 m!7911440))

(assert (=> d!2248800 m!7911434))

(declare-fun m!7911740 () Bool)

(assert (=> d!2248800 m!7911740))

(assert (=> b!7239129 m!7911450))

(assert (=> b!7239001 d!2248800))

(declare-fun d!2248802 () Bool)

(declare-fun c!1344009 () Bool)

(assert (=> d!2248802 (= c!1344009 (isEmpty!40405 (t!384286 s1!1971)))))

(declare-fun e!4340105 () Bool)

(assert (=> d!2248802 (= (matchZipper!3452 (set.union lt!2578014 lt!2578028) (t!384286 s1!1971)) e!4340105)))

(declare-fun b!7239130 () Bool)

(assert (=> b!7239130 (= e!4340105 (nullableZipper!2840 (set.union lt!2578014 lt!2578028)))))

(declare-fun b!7239131 () Bool)

(assert (=> b!7239131 (= e!4340105 (matchZipper!3452 (derivationStepZipper!3334 (set.union lt!2578014 lt!2578028) (head!14829 (t!384286 s1!1971))) (tail!14195 (t!384286 s1!1971))))))

(assert (= (and d!2248802 c!1344009) b!7239130))

(assert (= (and d!2248802 (not c!1344009)) b!7239131))

(assert (=> d!2248802 m!7911728))

(declare-fun m!7911742 () Bool)

(assert (=> b!7239130 m!7911742))

(assert (=> b!7239131 m!7911732))

(assert (=> b!7239131 m!7911732))

(declare-fun m!7911744 () Bool)

(assert (=> b!7239131 m!7911744))

(assert (=> b!7239131 m!7911736))

(assert (=> b!7239131 m!7911744))

(assert (=> b!7239131 m!7911736))

(declare-fun m!7911746 () Bool)

(assert (=> b!7239131 m!7911746))

(assert (=> b!7239001 d!2248802))

(declare-fun d!2248804 () Bool)

(assert (=> d!2248804 (forall!17381 (++!16385 (exprs!7982 ct1!232) (exprs!7982 ct2!328)) lambda!441201)))

(declare-fun lt!2578175 () Unit!163642)

(assert (=> d!2248804 (= lt!2578175 (choose!55720 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201))))

(assert (=> d!2248804 (forall!17381 (exprs!7982 ct1!232) lambda!441201)))

(assert (=> d!2248804 (= (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441201) lt!2578175)))

(declare-fun bs!1903783 () Bool)

(assert (= bs!1903783 d!2248804))

(assert (=> bs!1903783 m!7911460))

(assert (=> bs!1903783 m!7911460))

(declare-fun m!7911748 () Bool)

(assert (=> bs!1903783 m!7911748))

(declare-fun m!7911750 () Bool)

(assert (=> bs!1903783 m!7911750))

(declare-fun m!7911752 () Bool)

(assert (=> bs!1903783 m!7911752))

(assert (=> b!7239001 d!2248804))

(declare-fun call!659216 () (Set Context!14964))

(declare-fun b!7239132 () Bool)

(declare-fun e!4340107 () (Set Context!14964))

(assert (=> b!7239132 (= e!4340107 (set.union call!659216 (derivationStepZipperUp!2416 (Context!14965 (t!384285 (exprs!7982 lt!2578016))) (h!76559 s1!1971))))))

(declare-fun b!7239133 () Bool)

(declare-fun e!4340106 () (Set Context!14964))

(assert (=> b!7239133 (= e!4340106 call!659216)))

(declare-fun bm!659211 () Bool)

(assert (=> bm!659211 (= call!659216 (derivationStepZipperDown!2586 (h!76558 (exprs!7982 lt!2578016)) (Context!14965 (t!384285 (exprs!7982 lt!2578016))) (h!76559 s1!1971)))))

(declare-fun b!7239134 () Bool)

(assert (=> b!7239134 (= e!4340106 (as set.empty (Set Context!14964)))))

(declare-fun b!7239135 () Bool)

(assert (=> b!7239135 (= e!4340107 e!4340106)))

(declare-fun c!1344011 () Bool)

(assert (=> b!7239135 (= c!1344011 (is-Cons!70110 (exprs!7982 lt!2578016)))))

(declare-fun d!2248806 () Bool)

(declare-fun c!1344010 () Bool)

(declare-fun e!4340108 () Bool)

(assert (=> d!2248806 (= c!1344010 e!4340108)))

(declare-fun res!2936759 () Bool)

(assert (=> d!2248806 (=> (not res!2936759) (not e!4340108))))

(assert (=> d!2248806 (= res!2936759 (is-Cons!70110 (exprs!7982 lt!2578016)))))

(assert (=> d!2248806 (= (derivationStepZipperUp!2416 lt!2578016 (h!76559 s1!1971)) e!4340107)))

(declare-fun b!7239136 () Bool)

(assert (=> b!7239136 (= e!4340108 (nullable!7855 (h!76558 (exprs!7982 lt!2578016))))))

(assert (= (and d!2248806 res!2936759) b!7239136))

(assert (= (and d!2248806 c!1344010) b!7239132))

(assert (= (and d!2248806 (not c!1344010)) b!7239135))

(assert (= (and b!7239135 c!1344011) b!7239133))

(assert (= (and b!7239135 (not c!1344011)) b!7239134))

(assert (= (or b!7239132 b!7239133) bm!659211))

(declare-fun m!7911754 () Bool)

(assert (=> b!7239132 m!7911754))

(declare-fun m!7911756 () Bool)

(assert (=> bm!659211 m!7911756))

(declare-fun m!7911758 () Bool)

(assert (=> b!7239136 m!7911758))

(assert (=> b!7239001 d!2248806))

(declare-fun e!4340110 () (Set Context!14964))

(declare-fun call!659217 () (Set Context!14964))

(declare-fun b!7239137 () Bool)

(assert (=> b!7239137 (= e!4340110 (set.union call!659217 (derivationStepZipperUp!2416 (Context!14965 (t!384285 (exprs!7982 lt!2578025))) (h!76559 s1!1971))))))

(declare-fun b!7239138 () Bool)

(declare-fun e!4340109 () (Set Context!14964))

(assert (=> b!7239138 (= e!4340109 call!659217)))

(declare-fun bm!659212 () Bool)

(assert (=> bm!659212 (= call!659217 (derivationStepZipperDown!2586 (h!76558 (exprs!7982 lt!2578025)) (Context!14965 (t!384285 (exprs!7982 lt!2578025))) (h!76559 s1!1971)))))

(declare-fun b!7239139 () Bool)

(assert (=> b!7239139 (= e!4340109 (as set.empty (Set Context!14964)))))

(declare-fun b!7239140 () Bool)

(assert (=> b!7239140 (= e!4340110 e!4340109)))

(declare-fun c!1344013 () Bool)

(assert (=> b!7239140 (= c!1344013 (is-Cons!70110 (exprs!7982 lt!2578025)))))

(declare-fun d!2248808 () Bool)

(declare-fun c!1344012 () Bool)

(declare-fun e!4340111 () Bool)

(assert (=> d!2248808 (= c!1344012 e!4340111)))

(declare-fun res!2936760 () Bool)

(assert (=> d!2248808 (=> (not res!2936760) (not e!4340111))))

(assert (=> d!2248808 (= res!2936760 (is-Cons!70110 (exprs!7982 lt!2578025)))))

(assert (=> d!2248808 (= (derivationStepZipperUp!2416 lt!2578025 (h!76559 s1!1971)) e!4340110)))

(declare-fun b!7239141 () Bool)

(assert (=> b!7239141 (= e!4340111 (nullable!7855 (h!76558 (exprs!7982 lt!2578025))))))

(assert (= (and d!2248808 res!2936760) b!7239141))

(assert (= (and d!2248808 c!1344012) b!7239137))

(assert (= (and d!2248808 (not c!1344012)) b!7239140))

(assert (= (and b!7239140 c!1344013) b!7239138))

(assert (= (and b!7239140 (not c!1344013)) b!7239139))

(assert (= (or b!7239137 b!7239138) bm!659212))

(declare-fun m!7911760 () Bool)

(assert (=> b!7239137 m!7911760))

(declare-fun m!7911762 () Bool)

(assert (=> bm!659212 m!7911762))

(declare-fun m!7911764 () Bool)

(assert (=> b!7239141 m!7911764))

(assert (=> b!7239001 d!2248808))

(declare-fun e!4340112 () Bool)

(declare-fun d!2248810 () Bool)

(assert (=> d!2248810 (= (matchZipper!3452 (set.union lt!2578014 lt!2578028) (t!384286 s1!1971)) e!4340112)))

(declare-fun res!2936761 () Bool)

(assert (=> d!2248810 (=> res!2936761 e!4340112)))

(assert (=> d!2248810 (= res!2936761 (matchZipper!3452 lt!2578014 (t!384286 s1!1971)))))

(declare-fun lt!2578176 () Unit!163642)

(assert (=> d!2248810 (= lt!2578176 (choose!55721 lt!2578014 lt!2578028 (t!384286 s1!1971)))))

(assert (=> d!2248810 (= (lemmaZipperConcatMatchesSameAsBothZippers!1689 lt!2578014 lt!2578028 (t!384286 s1!1971)) lt!2578176)))

(declare-fun b!7239142 () Bool)

(assert (=> b!7239142 (= e!4340112 (matchZipper!3452 lt!2578028 (t!384286 s1!1971)))))

(assert (= (and d!2248810 (not res!2936761)) b!7239142))

(assert (=> d!2248810 m!7911438))

(assert (=> d!2248810 m!7911432))

(declare-fun m!7911766 () Bool)

(assert (=> d!2248810 m!7911766))

(assert (=> b!7239142 m!7911456))

(assert (=> b!7239001 d!2248810))

(declare-fun d!2248812 () Bool)

(declare-fun c!1344014 () Bool)

(assert (=> d!2248812 (= c!1344014 (isEmpty!40405 lt!2578026))))

(declare-fun e!4340113 () Bool)

(assert (=> d!2248812 (= (matchZipper!3452 (set.union lt!2578002 lt!2578001) lt!2578026) e!4340113)))

(declare-fun b!7239143 () Bool)

(assert (=> b!7239143 (= e!4340113 (nullableZipper!2840 (set.union lt!2578002 lt!2578001)))))

(declare-fun b!7239144 () Bool)

(assert (=> b!7239144 (= e!4340113 (matchZipper!3452 (derivationStepZipper!3334 (set.union lt!2578002 lt!2578001) (head!14829 lt!2578026)) (tail!14195 lt!2578026)))))

(assert (= (and d!2248812 c!1344014) b!7239143))

(assert (= (and d!2248812 (not c!1344014)) b!7239144))

(assert (=> d!2248812 m!7911692))

(declare-fun m!7911768 () Bool)

(assert (=> b!7239143 m!7911768))

(assert (=> b!7239144 m!7911696))

(assert (=> b!7239144 m!7911696))

(declare-fun m!7911770 () Bool)

(assert (=> b!7239144 m!7911770))

(assert (=> b!7239144 m!7911700))

(assert (=> b!7239144 m!7911770))

(assert (=> b!7239144 m!7911700))

(declare-fun m!7911772 () Bool)

(assert (=> b!7239144 m!7911772))

(assert (=> b!7239001 d!2248812))

(declare-fun d!2248814 () Bool)

(declare-fun c!1344015 () Bool)

(assert (=> d!2248814 (= c!1344015 (isEmpty!40405 lt!2578026))))

(declare-fun e!4340114 () Bool)

(assert (=> d!2248814 (= (matchZipper!3452 lt!2578002 lt!2578026) e!4340114)))

(declare-fun b!7239145 () Bool)

(assert (=> b!7239145 (= e!4340114 (nullableZipper!2840 lt!2578002))))

(declare-fun b!7239146 () Bool)

(assert (=> b!7239146 (= e!4340114 (matchZipper!3452 (derivationStepZipper!3334 lt!2578002 (head!14829 lt!2578026)) (tail!14195 lt!2578026)))))

(assert (= (and d!2248814 c!1344015) b!7239145))

(assert (= (and d!2248814 (not c!1344015)) b!7239146))

(assert (=> d!2248814 m!7911692))

(declare-fun m!7911774 () Bool)

(assert (=> b!7239145 m!7911774))

(assert (=> b!7239146 m!7911696))

(assert (=> b!7239146 m!7911696))

(declare-fun m!7911776 () Bool)

(assert (=> b!7239146 m!7911776))

(assert (=> b!7239146 m!7911700))

(assert (=> b!7239146 m!7911776))

(assert (=> b!7239146 m!7911700))

(declare-fun m!7911778 () Bool)

(assert (=> b!7239146 m!7911778))

(assert (=> b!7239001 d!2248814))

(declare-fun b!7239149 () Bool)

(declare-fun res!2936763 () Bool)

(declare-fun e!4340116 () Bool)

(assert (=> b!7239149 (=> (not res!2936763) (not e!4340116))))

(declare-fun lt!2578177 () List!70234)

(assert (=> b!7239149 (= res!2936763 (= (size!41613 lt!2578177) (+ (size!41613 (exprs!7982 ct1!232)) (size!41613 (exprs!7982 ct2!328)))))))

(declare-fun b!7239147 () Bool)

(declare-fun e!4340115 () List!70234)

(assert (=> b!7239147 (= e!4340115 (exprs!7982 ct2!328))))

(declare-fun b!7239150 () Bool)

(assert (=> b!7239150 (= e!4340116 (or (not (= (exprs!7982 ct2!328) Nil!70110)) (= lt!2578177 (exprs!7982 ct1!232))))))

(declare-fun b!7239148 () Bool)

(assert (=> b!7239148 (= e!4340115 (Cons!70110 (h!76558 (exprs!7982 ct1!232)) (++!16385 (t!384285 (exprs!7982 ct1!232)) (exprs!7982 ct2!328))))))

(declare-fun d!2248816 () Bool)

(assert (=> d!2248816 e!4340116))

(declare-fun res!2936762 () Bool)

(assert (=> d!2248816 (=> (not res!2936762) (not e!4340116))))

(assert (=> d!2248816 (= res!2936762 (= (content!14469 lt!2578177) (set.union (content!14469 (exprs!7982 ct1!232)) (content!14469 (exprs!7982 ct2!328)))))))

(assert (=> d!2248816 (= lt!2578177 e!4340115)))

(declare-fun c!1344016 () Bool)

(assert (=> d!2248816 (= c!1344016 (is-Nil!70110 (exprs!7982 ct1!232)))))

(assert (=> d!2248816 (= (++!16385 (exprs!7982 ct1!232) (exprs!7982 ct2!328)) lt!2578177)))

(assert (= (and d!2248816 c!1344016) b!7239147))

(assert (= (and d!2248816 (not c!1344016)) b!7239148))

(assert (= (and d!2248816 res!2936762) b!7239149))

(assert (= (and b!7239149 res!2936763) b!7239150))

(declare-fun m!7911780 () Bool)

(assert (=> b!7239149 m!7911780))

(declare-fun m!7911782 () Bool)

(assert (=> b!7239149 m!7911782))

(assert (=> b!7239149 m!7911712))

(declare-fun m!7911784 () Bool)

(assert (=> b!7239148 m!7911784))

(declare-fun m!7911786 () Bool)

(assert (=> d!2248816 m!7911786))

(declare-fun m!7911788 () Bool)

(assert (=> d!2248816 m!7911788))

(assert (=> d!2248816 m!7911720))

(assert (=> b!7239005 d!2248816))

(assert (=> b!7239005 d!2248804))

(declare-fun d!2248818 () Bool)

(declare-fun c!1344017 () Bool)

(assert (=> d!2248818 (= c!1344017 (isEmpty!40405 (t!384286 s1!1971)))))

(declare-fun e!4340117 () Bool)

(assert (=> d!2248818 (= (matchZipper!3452 lt!2578028 (t!384286 s1!1971)) e!4340117)))

(declare-fun b!7239151 () Bool)

(assert (=> b!7239151 (= e!4340117 (nullableZipper!2840 lt!2578028))))

(declare-fun b!7239152 () Bool)

(assert (=> b!7239152 (= e!4340117 (matchZipper!3452 (derivationStepZipper!3334 lt!2578028 (head!14829 (t!384286 s1!1971))) (tail!14195 (t!384286 s1!1971))))))

(assert (= (and d!2248818 c!1344017) b!7239151))

(assert (= (and d!2248818 (not c!1344017)) b!7239152))

(assert (=> d!2248818 m!7911728))

(declare-fun m!7911790 () Bool)

(assert (=> b!7239151 m!7911790))

(assert (=> b!7239152 m!7911732))

(assert (=> b!7239152 m!7911732))

(declare-fun m!7911792 () Bool)

(assert (=> b!7239152 m!7911792))

(assert (=> b!7239152 m!7911736))

(assert (=> b!7239152 m!7911792))

(assert (=> b!7239152 m!7911736))

(declare-fun m!7911794 () Bool)

(assert (=> b!7239152 m!7911794))

(assert (=> b!7239007 d!2248818))

(declare-fun d!2248820 () Bool)

(declare-fun choose!55722 ((Set Context!14964) Int) (Set Context!14964))

(assert (=> d!2248820 (= (flatMap!2746 lt!2578031 lambda!441203) (choose!55722 lt!2578031 lambda!441203))))

(declare-fun bs!1903784 () Bool)

(assert (= bs!1903784 d!2248820))

(declare-fun m!7911796 () Bool)

(assert (=> bs!1903784 m!7911796))

(assert (=> b!7239011 d!2248820))

(declare-fun d!2248822 () Bool)

(declare-fun dynLambda!28617 (Int Context!14964) (Set Context!14964))

(assert (=> d!2248822 (= (flatMap!2746 lt!2578031 lambda!441203) (dynLambda!28617 lambda!441203 ct1!232))))

(declare-fun lt!2578180 () Unit!163642)

(declare-fun choose!55723 ((Set Context!14964) Context!14964 Int) Unit!163642)

(assert (=> d!2248822 (= lt!2578180 (choose!55723 lt!2578031 ct1!232 lambda!441203))))

(assert (=> d!2248822 (= lt!2578031 (set.insert ct1!232 (as set.empty (Set Context!14964))))))

(assert (=> d!2248822 (= (lemmaFlatMapOnSingletonSet!2173 lt!2578031 ct1!232 lambda!441203) lt!2578180)))

(declare-fun b_lambda!277649 () Bool)

(assert (=> (not b_lambda!277649) (not d!2248822)))

(declare-fun bs!1903785 () Bool)

(assert (= bs!1903785 d!2248822))

(assert (=> bs!1903785 m!7911490))

(declare-fun m!7911798 () Bool)

(assert (=> bs!1903785 m!7911798))

(declare-fun m!7911800 () Bool)

(assert (=> bs!1903785 m!7911800))

(assert (=> bs!1903785 m!7911444))

(assert (=> b!7239011 d!2248822))

(declare-fun d!2248824 () Bool)

(assert (=> d!2248824 (= (tail!14194 lt!2578015) (t!384285 lt!2578015))))

(assert (=> b!7239011 d!2248824))

(declare-fun d!2248826 () Bool)

(declare-fun nullableFct!3079 (Regex!18542) Bool)

(assert (=> d!2248826 (= (nullable!7855 (h!76558 (exprs!7982 ct1!232))) (nullableFct!3079 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun bs!1903786 () Bool)

(assert (= bs!1903786 d!2248826))

(declare-fun m!7911802 () Bool)

(assert (=> bs!1903786 m!7911802))

(assert (=> b!7239011 d!2248826))

(declare-fun d!2248828 () Bool)

(assert (=> d!2248828 (= (flatMap!2746 lt!2578009 lambda!441203) (dynLambda!28617 lambda!441203 lt!2578020))))

(declare-fun lt!2578181 () Unit!163642)

(assert (=> d!2248828 (= lt!2578181 (choose!55723 lt!2578009 lt!2578020 lambda!441203))))

(assert (=> d!2248828 (= lt!2578009 (set.insert lt!2578020 (as set.empty (Set Context!14964))))))

(assert (=> d!2248828 (= (lemmaFlatMapOnSingletonSet!2173 lt!2578009 lt!2578020 lambda!441203) lt!2578181)))

(declare-fun b_lambda!277651 () Bool)

(assert (=> (not b_lambda!277651) (not d!2248828)))

(declare-fun bs!1903787 () Bool)

(assert (= bs!1903787 d!2248828))

(assert (=> bs!1903787 m!7911476))

(declare-fun m!7911804 () Bool)

(assert (=> bs!1903787 m!7911804))

(declare-fun m!7911806 () Bool)

(assert (=> bs!1903787 m!7911806))

(assert (=> bs!1903787 m!7911458))

(assert (=> b!7239011 d!2248828))

(declare-fun bs!1903788 () Bool)

(declare-fun d!2248830 () Bool)

(assert (= bs!1903788 (and d!2248830 b!7239011)))

(declare-fun lambda!441252 () Int)

(assert (=> bs!1903788 (= lambda!441252 lambda!441203)))

(assert (=> d!2248830 true))

(assert (=> d!2248830 (= (derivationStepZipper!3334 lt!2578009 (h!76559 s1!1971)) (flatMap!2746 lt!2578009 lambda!441252))))

(declare-fun bs!1903789 () Bool)

(assert (= bs!1903789 d!2248830))

(declare-fun m!7911808 () Bool)

(assert (=> bs!1903789 m!7911808))

(assert (=> b!7239011 d!2248830))

(assert (=> b!7239011 d!2248788))

(declare-fun d!2248832 () Bool)

(assert (=> d!2248832 (= (tail!14195 (++!16384 s1!1971 s2!1849)) (t!384286 (++!16384 s1!1971 s2!1849)))))

(assert (=> b!7239011 d!2248832))

(declare-fun bs!1903790 () Bool)

(declare-fun d!2248834 () Bool)

(assert (= bs!1903790 (and d!2248834 b!7239005)))

(declare-fun lambda!441257 () Int)

(assert (=> bs!1903790 (= lambda!441257 lambda!441201)))

(declare-fun bs!1903791 () Bool)

(assert (= bs!1903791 (and d!2248834 d!2248784)))

(assert (=> bs!1903791 (= lambda!441257 lambda!441249)))

(assert (=> d!2248834 (set.member (Context!14965 (++!16385 (exprs!7982 lt!2578024) (exprs!7982 ct2!328))) (derivationStepZipperUp!2416 (Context!14965 (++!16385 (exprs!7982 ct1!232) (exprs!7982 ct2!328))) (h!76559 s1!1971)))))

(declare-fun lt!2578190 () Unit!163642)

(assert (=> d!2248834 (= lt!2578190 (lemmaConcatPreservesForall!1351 (exprs!7982 ct1!232) (exprs!7982 ct2!328) lambda!441257))))

(declare-fun lt!2578189 () Unit!163642)

(assert (=> d!2248834 (= lt!2578189 (lemmaConcatPreservesForall!1351 (exprs!7982 lt!2578024) (exprs!7982 ct2!328) lambda!441257))))

(declare-fun lt!2578188 () Unit!163642)

(declare-fun choose!55724 (Context!14964 Context!14964 Context!14964 C!37358) Unit!163642)

(assert (=> d!2248834 (= lt!2578188 (choose!55724 ct1!232 ct2!328 lt!2578024 (h!76559 s1!1971)))))

(assert (=> d!2248834 (set.member lt!2578024 (derivationStepZipperUp!2416 ct1!232 (h!76559 s1!1971)))))

(assert (=> d!2248834 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!7 ct1!232 ct2!328 lt!2578024 (h!76559 s1!1971)) lt!2578188)))

(declare-fun bs!1903792 () Bool)

(assert (= bs!1903792 d!2248834))

(assert (=> bs!1903792 m!7911460))

(declare-fun m!7911810 () Bool)

(assert (=> bs!1903792 m!7911810))

(declare-fun m!7911812 () Bool)

(assert (=> bs!1903792 m!7911812))

(declare-fun m!7911814 () Bool)

(assert (=> bs!1903792 m!7911814))

(declare-fun m!7911816 () Bool)

(assert (=> bs!1903792 m!7911816))

(declare-fun m!7911818 () Bool)

(assert (=> bs!1903792 m!7911818))

(assert (=> bs!1903792 m!7911514))

(declare-fun m!7911820 () Bool)

(assert (=> bs!1903792 m!7911820))

(assert (=> bs!1903792 m!7911494))

(assert (=> b!7239011 d!2248834))

(declare-fun d!2248836 () Bool)

(declare-fun res!2936768 () Bool)

(declare-fun e!4340122 () Bool)

(assert (=> d!2248836 (=> res!2936768 e!4340122)))

(assert (=> d!2248836 (= res!2936768 (is-Nil!70110 (exprs!7982 lt!2578024)))))

(assert (=> d!2248836 (= (forall!17381 (exprs!7982 lt!2578024) lambda!441201) e!4340122)))

(declare-fun b!7239159 () Bool)

(declare-fun e!4340123 () Bool)

(assert (=> b!7239159 (= e!4340122 e!4340123)))

(declare-fun res!2936769 () Bool)

(assert (=> b!7239159 (=> (not res!2936769) (not e!4340123))))

(declare-fun dynLambda!28618 (Int Regex!18542) Bool)

(assert (=> b!7239159 (= res!2936769 (dynLambda!28618 lambda!441201 (h!76558 (exprs!7982 lt!2578024))))))

(declare-fun b!7239160 () Bool)

(assert (=> b!7239160 (= e!4340123 (forall!17381 (t!384285 (exprs!7982 lt!2578024)) lambda!441201))))

(assert (= (and d!2248836 (not res!2936768)) b!7239159))

(assert (= (and b!7239159 res!2936769) b!7239160))

(declare-fun b_lambda!277653 () Bool)

(assert (=> (not b_lambda!277653) (not b!7239159)))

(declare-fun m!7911822 () Bool)

(assert (=> b!7239159 m!7911822))

(declare-fun m!7911824 () Bool)

(assert (=> b!7239160 m!7911824))

(assert (=> b!7239011 d!2248836))

(declare-fun b!7239183 () Bool)

(declare-fun e!4340136 () (Set Context!14964))

(declare-fun call!659235 () (Set Context!14964))

(declare-fun call!659232 () (Set Context!14964))

(assert (=> b!7239183 (= e!4340136 (set.union call!659235 call!659232))))

(declare-fun b!7239184 () Bool)

(declare-fun e!4340140 () (Set Context!14964))

(declare-fun call!659233 () (Set Context!14964))

(assert (=> b!7239184 (= e!4340140 call!659233)))

(declare-fun bm!659225 () Bool)

(declare-fun call!659234 () List!70234)

(declare-fun call!659231 () List!70234)

(assert (=> bm!659225 (= call!659234 call!659231)))

(declare-fun b!7239185 () Bool)

(declare-fun c!1344035 () Bool)

(declare-fun e!4340138 () Bool)

(assert (=> b!7239185 (= c!1344035 e!4340138)))

(declare-fun res!2936772 () Bool)

(assert (=> b!7239185 (=> (not res!2936772) (not e!4340138))))

(assert (=> b!7239185 (= res!2936772 (is-Concat!27387 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun e!4340139 () (Set Context!14964))

(assert (=> b!7239185 (= e!4340139 e!4340136)))

(declare-fun bm!659226 () Bool)

(declare-fun call!659230 () (Set Context!14964))

(assert (=> bm!659226 (= call!659232 call!659230)))

(declare-fun b!7239186 () Bool)

(assert (=> b!7239186 (= e!4340140 (as set.empty (Set Context!14964)))))

(declare-fun b!7239187 () Bool)

(declare-fun c!1344032 () Bool)

(assert (=> b!7239187 (= c!1344032 (is-Star!18542 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun e!4340137 () (Set Context!14964))

(assert (=> b!7239187 (= e!4340137 e!4340140)))

(declare-fun b!7239188 () Bool)

(assert (=> b!7239188 (= e!4340136 e!4340137)))

(declare-fun c!1344034 () Bool)

(assert (=> b!7239188 (= c!1344034 (is-Concat!27387 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun b!7239189 () Bool)

(assert (=> b!7239189 (= e!4340137 call!659233)))

(declare-fun bm!659227 () Bool)

(declare-fun c!1344031 () Bool)

(assert (=> bm!659227 (= call!659230 (derivationStepZipperDown!2586 (ite c!1344031 (regOne!37597 (h!76558 (exprs!7982 ct1!232))) (ite c!1344035 (regTwo!37596 (h!76558 (exprs!7982 ct1!232))) (ite c!1344034 (regOne!37596 (h!76558 (exprs!7982 ct1!232))) (reg!18871 (h!76558 (exprs!7982 ct1!232)))))) (ite (or c!1344031 c!1344035) lt!2578025 (Context!14965 call!659234)) (h!76559 s1!1971)))))

(declare-fun b!7239190 () Bool)

(assert (=> b!7239190 (= e!4340138 (nullable!7855 (regOne!37596 (h!76558 (exprs!7982 ct1!232)))))))

(declare-fun b!7239191 () Bool)

(declare-fun e!4340141 () (Set Context!14964))

(assert (=> b!7239191 (= e!4340141 e!4340139)))

(assert (=> b!7239191 (= c!1344031 (is-Union!18542 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun bm!659228 () Bool)

(declare-fun $colon$colon!2887 (List!70234 Regex!18542) List!70234)

(assert (=> bm!659228 (= call!659231 ($colon$colon!2887 (exprs!7982 lt!2578025) (ite (or c!1344035 c!1344034) (regTwo!37596 (h!76558 (exprs!7982 ct1!232))) (h!76558 (exprs!7982 ct1!232)))))))

(declare-fun bm!659229 () Bool)

(assert (=> bm!659229 (= call!659233 call!659232)))

(declare-fun b!7239192 () Bool)

(assert (=> b!7239192 (= e!4340141 (set.insert lt!2578025 (as set.empty (Set Context!14964))))))

(declare-fun d!2248838 () Bool)

(declare-fun c!1344033 () Bool)

(assert (=> d!2248838 (= c!1344033 (and (is-ElementMatch!18542 (h!76558 (exprs!7982 ct1!232))) (= (c!1343975 (h!76558 (exprs!7982 ct1!232))) (h!76559 s1!1971))))))

(assert (=> d!2248838 (= (derivationStepZipperDown!2586 (h!76558 (exprs!7982 ct1!232)) lt!2578025 (h!76559 s1!1971)) e!4340141)))

(declare-fun bm!659230 () Bool)

(assert (=> bm!659230 (= call!659235 (derivationStepZipperDown!2586 (ite c!1344031 (regTwo!37597 (h!76558 (exprs!7982 ct1!232))) (regOne!37596 (h!76558 (exprs!7982 ct1!232)))) (ite c!1344031 lt!2578025 (Context!14965 call!659231)) (h!76559 s1!1971)))))

(declare-fun b!7239193 () Bool)

(assert (=> b!7239193 (= e!4340139 (set.union call!659230 call!659235))))

(assert (= (and d!2248838 c!1344033) b!7239192))

(assert (= (and d!2248838 (not c!1344033)) b!7239191))

(assert (= (and b!7239191 c!1344031) b!7239193))

(assert (= (and b!7239191 (not c!1344031)) b!7239185))

(assert (= (and b!7239185 res!2936772) b!7239190))

(assert (= (and b!7239185 c!1344035) b!7239183))

(assert (= (and b!7239185 (not c!1344035)) b!7239188))

(assert (= (and b!7239188 c!1344034) b!7239189))

(assert (= (and b!7239188 (not c!1344034)) b!7239187))

(assert (= (and b!7239187 c!1344032) b!7239184))

(assert (= (and b!7239187 (not c!1344032)) b!7239186))

(assert (= (or b!7239189 b!7239184) bm!659225))

(assert (= (or b!7239189 b!7239184) bm!659229))

(assert (= (or b!7239183 bm!659225) bm!659228))

(assert (= (or b!7239183 bm!659229) bm!659226))

(assert (= (or b!7239193 b!7239183) bm!659230))

(assert (= (or b!7239193 bm!659226) bm!659227))

(declare-fun m!7911826 () Bool)

(assert (=> bm!659230 m!7911826))

(declare-fun m!7911828 () Bool)

(assert (=> bm!659227 m!7911828))

(declare-fun m!7911830 () Bool)

(assert (=> b!7239190 m!7911830))

(declare-fun m!7911832 () Bool)

(assert (=> bm!659228 m!7911832))

(declare-fun m!7911834 () Bool)

(assert (=> b!7239192 m!7911834))

(assert (=> b!7239011 d!2248838))

(assert (=> b!7239011 d!2248804))

(assert (=> b!7239011 d!2248792))

(declare-fun call!659236 () (Set Context!14964))

(declare-fun e!4340143 () (Set Context!14964))

(declare-fun b!7239194 () Bool)

(assert (=> b!7239194 (= e!4340143 (set.union call!659236 (derivationStepZipperUp!2416 (Context!14965 (t!384285 (exprs!7982 lt!2578020))) (h!76559 s1!1971))))))

(declare-fun b!7239195 () Bool)

(declare-fun e!4340142 () (Set Context!14964))

(assert (=> b!7239195 (= e!4340142 call!659236)))

(declare-fun bm!659231 () Bool)

(assert (=> bm!659231 (= call!659236 (derivationStepZipperDown!2586 (h!76558 (exprs!7982 lt!2578020)) (Context!14965 (t!384285 (exprs!7982 lt!2578020))) (h!76559 s1!1971)))))

(declare-fun b!7239196 () Bool)

(assert (=> b!7239196 (= e!4340142 (as set.empty (Set Context!14964)))))

(declare-fun b!7239197 () Bool)

(assert (=> b!7239197 (= e!4340143 e!4340142)))

(declare-fun c!1344037 () Bool)

(assert (=> b!7239197 (= c!1344037 (is-Cons!70110 (exprs!7982 lt!2578020)))))

(declare-fun d!2248840 () Bool)

(declare-fun c!1344036 () Bool)

(declare-fun e!4340144 () Bool)

(assert (=> d!2248840 (= c!1344036 e!4340144)))

(declare-fun res!2936773 () Bool)

(assert (=> d!2248840 (=> (not res!2936773) (not e!4340144))))

(assert (=> d!2248840 (= res!2936773 (is-Cons!70110 (exprs!7982 lt!2578020)))))

(assert (=> d!2248840 (= (derivationStepZipperUp!2416 lt!2578020 (h!76559 s1!1971)) e!4340143)))

(declare-fun b!7239198 () Bool)

(assert (=> b!7239198 (= e!4340144 (nullable!7855 (h!76558 (exprs!7982 lt!2578020))))))

(assert (= (and d!2248840 res!2936773) b!7239198))

(assert (= (and d!2248840 c!1344036) b!7239194))

(assert (= (and d!2248840 (not c!1344036)) b!7239197))

(assert (= (and b!7239197 c!1344037) b!7239195))

(assert (= (and b!7239197 (not c!1344037)) b!7239196))

(assert (= (or b!7239194 b!7239195) bm!659231))

(declare-fun m!7911836 () Bool)

(assert (=> b!7239194 m!7911836))

(declare-fun m!7911838 () Bool)

(assert (=> bm!659231 m!7911838))

(declare-fun m!7911840 () Bool)

(assert (=> b!7239198 m!7911840))

(assert (=> b!7239011 d!2248840))

(declare-fun d!2248842 () Bool)

(declare-fun e!4340146 () Bool)

(assert (=> d!2248842 e!4340146))

(declare-fun res!2936774 () Bool)

(assert (=> d!2248842 (=> (not res!2936774) (not e!4340146))))

(declare-fun lt!2578191 () List!70235)

(assert (=> d!2248842 (= res!2936774 (= (content!14468 lt!2578191) (set.union (content!14468 s1!1971) (content!14468 s2!1849))))))

(declare-fun e!4340145 () List!70235)

(assert (=> d!2248842 (= lt!2578191 e!4340145)))

(declare-fun c!1344038 () Bool)

(assert (=> d!2248842 (= c!1344038 (is-Nil!70111 s1!1971))))

(assert (=> d!2248842 (= (++!16384 s1!1971 s2!1849) lt!2578191)))

(declare-fun b!7239200 () Bool)

(assert (=> b!7239200 (= e!4340145 (Cons!70111 (h!76559 s1!1971) (++!16384 (t!384286 s1!1971) s2!1849)))))

(declare-fun b!7239199 () Bool)

(assert (=> b!7239199 (= e!4340145 s2!1849)))

(declare-fun b!7239202 () Bool)

(assert (=> b!7239202 (= e!4340146 (or (not (= s2!1849 Nil!70111)) (= lt!2578191 s1!1971)))))

(declare-fun b!7239201 () Bool)

(declare-fun res!2936775 () Bool)

(assert (=> b!7239201 (=> (not res!2936775) (not e!4340146))))

(assert (=> b!7239201 (= res!2936775 (= (size!41612 lt!2578191) (+ (size!41612 s1!1971) (size!41612 s2!1849))))))

(assert (= (and d!2248842 c!1344038) b!7239199))

(assert (= (and d!2248842 (not c!1344038)) b!7239200))

(assert (= (and d!2248842 res!2936774) b!7239201))

(assert (= (and b!7239201 res!2936775) b!7239202))

(declare-fun m!7911842 () Bool)

(assert (=> d!2248842 m!7911842))

(declare-fun m!7911844 () Bool)

(assert (=> d!2248842 m!7911844))

(assert (=> d!2248842 m!7911678))

(assert (=> b!7239200 m!7911512))

(declare-fun m!7911846 () Bool)

(assert (=> b!7239201 m!7911846))

(declare-fun m!7911848 () Bool)

(assert (=> b!7239201 m!7911848))

(assert (=> b!7239201 m!7911686))

(assert (=> b!7239011 d!2248842))

(declare-fun d!2248844 () Bool)

(assert (=> d!2248844 (= (flatMap!2746 lt!2578009 lambda!441203) (choose!55722 lt!2578009 lambda!441203))))

(declare-fun bs!1903793 () Bool)

(assert (= bs!1903793 d!2248844))

(declare-fun m!7911850 () Bool)

(assert (=> bs!1903793 m!7911850))

(assert (=> b!7239011 d!2248844))

(declare-fun d!2248846 () Bool)

(declare-fun res!2936776 () Bool)

(declare-fun e!4340147 () Bool)

(assert (=> d!2248846 (=> res!2936776 e!4340147)))

(assert (=> d!2248846 (= res!2936776 (is-Nil!70110 (exprs!7982 ct2!328)))))

(assert (=> d!2248846 (= (forall!17381 (exprs!7982 ct2!328) lambda!441201) e!4340147)))

(declare-fun b!7239203 () Bool)

(declare-fun e!4340148 () Bool)

(assert (=> b!7239203 (= e!4340147 e!4340148)))

(declare-fun res!2936777 () Bool)

(assert (=> b!7239203 (=> (not res!2936777) (not e!4340148))))

(assert (=> b!7239203 (= res!2936777 (dynLambda!28618 lambda!441201 (h!76558 (exprs!7982 ct2!328))))))

(declare-fun b!7239204 () Bool)

(assert (=> b!7239204 (= e!4340148 (forall!17381 (t!384285 (exprs!7982 ct2!328)) lambda!441201))))

(assert (= (and d!2248846 (not res!2936776)) b!7239203))

(assert (= (and b!7239203 res!2936777) b!7239204))

(declare-fun b_lambda!277655 () Bool)

(assert (=> (not b_lambda!277655) (not b!7239203)))

(declare-fun m!7911852 () Bool)

(assert (=> b!7239203 m!7911852))

(declare-fun m!7911854 () Bool)

(assert (=> b!7239204 m!7911854))

(assert (=> b!7239000 d!2248846))

(declare-fun d!2248848 () Bool)

(declare-fun c!1344039 () Bool)

(assert (=> d!2248848 (= c!1344039 (isEmpty!40405 s1!1971))))

(declare-fun e!4340149 () Bool)

(assert (=> d!2248848 (= (matchZipper!3452 lt!2578031 s1!1971) e!4340149)))

(declare-fun b!7239205 () Bool)

(assert (=> b!7239205 (= e!4340149 (nullableZipper!2840 lt!2578031))))

(declare-fun b!7239206 () Bool)

(assert (=> b!7239206 (= e!4340149 (matchZipper!3452 (derivationStepZipper!3334 lt!2578031 (head!14829 s1!1971)) (tail!14195 s1!1971)))))

(assert (= (and d!2248848 c!1344039) b!7239205))

(assert (= (and d!2248848 (not c!1344039)) b!7239206))

(declare-fun m!7911856 () Bool)

(assert (=> d!2248848 m!7911856))

(declare-fun m!7911858 () Bool)

(assert (=> b!7239205 m!7911858))

(declare-fun m!7911860 () Bool)

(assert (=> b!7239206 m!7911860))

(assert (=> b!7239206 m!7911860))

(declare-fun m!7911862 () Bool)

(assert (=> b!7239206 m!7911862))

(declare-fun m!7911864 () Bool)

(assert (=> b!7239206 m!7911864))

(assert (=> b!7239206 m!7911862))

(assert (=> b!7239206 m!7911864))

(declare-fun m!7911866 () Bool)

(assert (=> b!7239206 m!7911866))

(assert (=> start!703128 d!2248848))

(declare-fun bs!1903794 () Bool)

(declare-fun d!2248850 () Bool)

(assert (= bs!1903794 (and d!2248850 b!7239005)))

(declare-fun lambda!441260 () Int)

(assert (=> bs!1903794 (= lambda!441260 lambda!441201)))

(declare-fun bs!1903795 () Bool)

(assert (= bs!1903795 (and d!2248850 d!2248784)))

(assert (=> bs!1903795 (= lambda!441260 lambda!441249)))

(declare-fun bs!1903796 () Bool)

(assert (= bs!1903796 (and d!2248850 d!2248834)))

(assert (=> bs!1903796 (= lambda!441260 lambda!441257)))

(assert (=> d!2248850 (= (inv!89366 ct1!232) (forall!17381 (exprs!7982 ct1!232) lambda!441260))))

(declare-fun bs!1903797 () Bool)

(assert (= bs!1903797 d!2248850))

(declare-fun m!7911868 () Bool)

(assert (=> bs!1903797 m!7911868))

(assert (=> start!703128 d!2248850))

(declare-fun bs!1903798 () Bool)

(declare-fun d!2248852 () Bool)

(assert (= bs!1903798 (and d!2248852 b!7239005)))

(declare-fun lambda!441261 () Int)

(assert (=> bs!1903798 (= lambda!441261 lambda!441201)))

(declare-fun bs!1903799 () Bool)

(assert (= bs!1903799 (and d!2248852 d!2248784)))

(assert (=> bs!1903799 (= lambda!441261 lambda!441249)))

(declare-fun bs!1903800 () Bool)

(assert (= bs!1903800 (and d!2248852 d!2248834)))

(assert (=> bs!1903800 (= lambda!441261 lambda!441257)))

(declare-fun bs!1903801 () Bool)

(assert (= bs!1903801 (and d!2248852 d!2248850)))

(assert (=> bs!1903801 (= lambda!441261 lambda!441260)))

(assert (=> d!2248852 (= (inv!89366 ct2!328) (forall!17381 (exprs!7982 ct2!328) lambda!441261))))

(declare-fun bs!1903802 () Bool)

(assert (= bs!1903802 d!2248852))

(declare-fun m!7911870 () Bool)

(assert (=> bs!1903802 m!7911870))

(assert (=> start!703128 d!2248852))

(declare-fun d!2248854 () Bool)

(declare-fun c!1344040 () Bool)

(assert (=> d!2248854 (= c!1344040 (isEmpty!40405 (t!384286 s1!1971)))))

(declare-fun e!4340150 () Bool)

(assert (=> d!2248854 (= (matchZipper!3452 lt!2578030 (t!384286 s1!1971)) e!4340150)))

(declare-fun b!7239207 () Bool)

(assert (=> b!7239207 (= e!4340150 (nullableZipper!2840 lt!2578030))))

(declare-fun b!7239208 () Bool)

(assert (=> b!7239208 (= e!4340150 (matchZipper!3452 (derivationStepZipper!3334 lt!2578030 (head!14829 (t!384286 s1!1971))) (tail!14195 (t!384286 s1!1971))))))

(assert (= (and d!2248854 c!1344040) b!7239207))

(assert (= (and d!2248854 (not c!1344040)) b!7239208))

(assert (=> d!2248854 m!7911728))

(declare-fun m!7911872 () Bool)

(assert (=> b!7239207 m!7911872))

(assert (=> b!7239208 m!7911732))

(assert (=> b!7239208 m!7911732))

(declare-fun m!7911874 () Bool)

(assert (=> b!7239208 m!7911874))

(assert (=> b!7239208 m!7911736))

(assert (=> b!7239208 m!7911874))

(assert (=> b!7239208 m!7911736))

(declare-fun m!7911876 () Bool)

(assert (=> b!7239208 m!7911876))

(assert (=> b!7239010 d!2248854))

(declare-fun bs!1903803 () Bool)

(declare-fun d!2248856 () Bool)

(assert (= bs!1903803 (and d!2248856 b!7239011)))

(declare-fun lambda!441262 () Int)

(assert (=> bs!1903803 (= lambda!441262 lambda!441203)))

(declare-fun bs!1903804 () Bool)

(assert (= bs!1903804 (and d!2248856 d!2248830)))

(assert (=> bs!1903804 (= lambda!441262 lambda!441252)))

(assert (=> d!2248856 true))

(assert (=> d!2248856 (= (derivationStepZipper!3334 lt!2578031 (h!76559 s1!1971)) (flatMap!2746 lt!2578031 lambda!441262))))

(declare-fun bs!1903805 () Bool)

(assert (= bs!1903805 d!2248856))

(declare-fun m!7911878 () Bool)

(assert (=> bs!1903805 m!7911878))

(assert (=> b!7239010 d!2248856))

(declare-fun d!2248858 () Bool)

(declare-fun c!1344041 () Bool)

(assert (=> d!2248858 (= c!1344041 (isEmpty!40405 s2!1849))))

(declare-fun e!4340151 () Bool)

(assert (=> d!2248858 (= (matchZipper!3452 (set.insert ct2!328 (as set.empty (Set Context!14964))) s2!1849) e!4340151)))

(declare-fun b!7239209 () Bool)

(assert (=> b!7239209 (= e!4340151 (nullableZipper!2840 (set.insert ct2!328 (as set.empty (Set Context!14964)))))))

(declare-fun b!7239210 () Bool)

(assert (=> b!7239210 (= e!4340151 (matchZipper!3452 (derivationStepZipper!3334 (set.insert ct2!328 (as set.empty (Set Context!14964))) (head!14829 s2!1849)) (tail!14195 s2!1849)))))

(assert (= (and d!2248858 c!1344041) b!7239209))

(assert (= (and d!2248858 (not c!1344041)) b!7239210))

(declare-fun m!7911880 () Bool)

(assert (=> d!2248858 m!7911880))

(assert (=> b!7239209 m!7911452))

(declare-fun m!7911882 () Bool)

(assert (=> b!7239209 m!7911882))

(declare-fun m!7911884 () Bool)

(assert (=> b!7239210 m!7911884))

(assert (=> b!7239210 m!7911452))

(assert (=> b!7239210 m!7911884))

(declare-fun m!7911886 () Bool)

(assert (=> b!7239210 m!7911886))

(declare-fun m!7911888 () Bool)

(assert (=> b!7239210 m!7911888))

(assert (=> b!7239210 m!7911886))

(assert (=> b!7239210 m!7911888))

(declare-fun m!7911890 () Bool)

(assert (=> b!7239210 m!7911890))

(assert (=> b!7238999 d!2248858))

(assert (=> b!7239009 d!2248804))

(assert (=> b!7239009 d!2248840))

(declare-fun b!7239211 () Bool)

(declare-fun e!4340152 () (Set Context!14964))

(declare-fun call!659242 () (Set Context!14964))

(declare-fun call!659239 () (Set Context!14964))

(assert (=> b!7239211 (= e!4340152 (set.union call!659242 call!659239))))

(declare-fun b!7239212 () Bool)

(declare-fun e!4340156 () (Set Context!14964))

(declare-fun call!659240 () (Set Context!14964))

(assert (=> b!7239212 (= e!4340156 call!659240)))

(declare-fun bm!659232 () Bool)

(declare-fun call!659241 () List!70234)

(declare-fun call!659238 () List!70234)

(assert (=> bm!659232 (= call!659241 call!659238)))

(declare-fun b!7239213 () Bool)

(declare-fun c!1344046 () Bool)

(declare-fun e!4340154 () Bool)

(assert (=> b!7239213 (= c!1344046 e!4340154)))

(declare-fun res!2936778 () Bool)

(assert (=> b!7239213 (=> (not res!2936778) (not e!4340154))))

(assert (=> b!7239213 (= res!2936778 (is-Concat!27387 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun e!4340155 () (Set Context!14964))

(assert (=> b!7239213 (= e!4340155 e!4340152)))

(declare-fun bm!659233 () Bool)

(declare-fun call!659237 () (Set Context!14964))

(assert (=> bm!659233 (= call!659239 call!659237)))

(declare-fun b!7239214 () Bool)

(assert (=> b!7239214 (= e!4340156 (as set.empty (Set Context!14964)))))

(declare-fun b!7239215 () Bool)

(declare-fun c!1344043 () Bool)

(assert (=> b!7239215 (= c!1344043 (is-Star!18542 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun e!4340153 () (Set Context!14964))

(assert (=> b!7239215 (= e!4340153 e!4340156)))

(declare-fun b!7239216 () Bool)

(assert (=> b!7239216 (= e!4340152 e!4340153)))

(declare-fun c!1344045 () Bool)

(assert (=> b!7239216 (= c!1344045 (is-Concat!27387 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun b!7239217 () Bool)

(assert (=> b!7239217 (= e!4340153 call!659240)))

(declare-fun c!1344042 () Bool)

(declare-fun bm!659234 () Bool)

(assert (=> bm!659234 (= call!659237 (derivationStepZipperDown!2586 (ite c!1344042 (regOne!37597 (h!76558 (exprs!7982 ct1!232))) (ite c!1344046 (regTwo!37596 (h!76558 (exprs!7982 ct1!232))) (ite c!1344045 (regOne!37596 (h!76558 (exprs!7982 ct1!232))) (reg!18871 (h!76558 (exprs!7982 ct1!232)))))) (ite (or c!1344042 c!1344046) lt!2578016 (Context!14965 call!659241)) (h!76559 s1!1971)))))

(declare-fun b!7239218 () Bool)

(assert (=> b!7239218 (= e!4340154 (nullable!7855 (regOne!37596 (h!76558 (exprs!7982 ct1!232)))))))

(declare-fun b!7239219 () Bool)

(declare-fun e!4340157 () (Set Context!14964))

(assert (=> b!7239219 (= e!4340157 e!4340155)))

(assert (=> b!7239219 (= c!1344042 (is-Union!18542 (h!76558 (exprs!7982 ct1!232))))))

(declare-fun bm!659235 () Bool)

(assert (=> bm!659235 (= call!659238 ($colon$colon!2887 (exprs!7982 lt!2578016) (ite (or c!1344046 c!1344045) (regTwo!37596 (h!76558 (exprs!7982 ct1!232))) (h!76558 (exprs!7982 ct1!232)))))))

(declare-fun bm!659236 () Bool)

(assert (=> bm!659236 (= call!659240 call!659239)))

(declare-fun b!7239220 () Bool)

(assert (=> b!7239220 (= e!4340157 (set.insert lt!2578016 (as set.empty (Set Context!14964))))))

(declare-fun d!2248860 () Bool)

(declare-fun c!1344044 () Bool)

(assert (=> d!2248860 (= c!1344044 (and (is-ElementMatch!18542 (h!76558 (exprs!7982 ct1!232))) (= (c!1343975 (h!76558 (exprs!7982 ct1!232))) (h!76559 s1!1971))))))

(assert (=> d!2248860 (= (derivationStepZipperDown!2586 (h!76558 (exprs!7982 ct1!232)) lt!2578016 (h!76559 s1!1971)) e!4340157)))

(declare-fun bm!659237 () Bool)

(assert (=> bm!659237 (= call!659242 (derivationStepZipperDown!2586 (ite c!1344042 (regTwo!37597 (h!76558 (exprs!7982 ct1!232))) (regOne!37596 (h!76558 (exprs!7982 ct1!232)))) (ite c!1344042 lt!2578016 (Context!14965 call!659238)) (h!76559 s1!1971)))))

(declare-fun b!7239221 () Bool)

(assert (=> b!7239221 (= e!4340155 (set.union call!659237 call!659242))))

(assert (= (and d!2248860 c!1344044) b!7239220))

(assert (= (and d!2248860 (not c!1344044)) b!7239219))

(assert (= (and b!7239219 c!1344042) b!7239221))

(assert (= (and b!7239219 (not c!1344042)) b!7239213))

(assert (= (and b!7239213 res!2936778) b!7239218))

(assert (= (and b!7239213 c!1344046) b!7239211))

(assert (= (and b!7239213 (not c!1344046)) b!7239216))

(assert (= (and b!7239216 c!1344045) b!7239217))

(assert (= (and b!7239216 (not c!1344045)) b!7239215))

(assert (= (and b!7239215 c!1344043) b!7239212))

(assert (= (and b!7239215 (not c!1344043)) b!7239214))

(assert (= (or b!7239217 b!7239212) bm!659232))

(assert (= (or b!7239217 b!7239212) bm!659236))

(assert (= (or b!7239211 bm!659232) bm!659235))

(assert (= (or b!7239211 bm!659236) bm!659233))

(assert (= (or b!7239221 b!7239211) bm!659237))

(assert (= (or b!7239221 bm!659233) bm!659234))

(declare-fun m!7911892 () Bool)

(assert (=> bm!659237 m!7911892))

(declare-fun m!7911894 () Bool)

(assert (=> bm!659234 m!7911894))

(assert (=> b!7239218 m!7911830))

(declare-fun m!7911896 () Bool)

(assert (=> bm!659235 m!7911896))

(declare-fun m!7911898 () Bool)

(assert (=> b!7239220 m!7911898))

(assert (=> b!7239009 d!2248860))

(declare-fun d!2248862 () Bool)

(assert (=> d!2248862 (= (tail!14194 (exprs!7982 ct1!232)) (t!384285 (exprs!7982 ct1!232)))))

(assert (=> b!7239009 d!2248862))

(declare-fun d!2248864 () Bool)

(assert (=> d!2248864 (= (isEmpty!40403 lt!2578015) (is-Nil!70110 lt!2578015))))

(assert (=> b!7239009 d!2248864))

(declare-fun b!7239226 () Bool)

(declare-fun e!4340160 () Bool)

(declare-fun tp!2035013 () Bool)

(declare-fun tp!2035014 () Bool)

(assert (=> b!7239226 (= e!4340160 (and tp!2035013 tp!2035014))))

(assert (=> b!7239003 (= tp!2034995 e!4340160)))

(assert (= (and b!7239003 (is-Cons!70110 (exprs!7982 ct1!232))) b!7239226))

(declare-fun b!7239231 () Bool)

(declare-fun e!4340163 () Bool)

(declare-fun tp!2035017 () Bool)

(assert (=> b!7239231 (= e!4340163 (and tp_is_empty!46549 tp!2035017))))

(assert (=> b!7239008 (= tp!2034993 e!4340163)))

(assert (= (and b!7239008 (is-Cons!70111 (t!384286 s2!1849))) b!7239231))

(declare-fun b!7239232 () Bool)

(declare-fun e!4340164 () Bool)

(declare-fun tp!2035018 () Bool)

(assert (=> b!7239232 (= e!4340164 (and tp_is_empty!46549 tp!2035018))))

(assert (=> b!7239006 (= tp!2034996 e!4340164)))

(assert (= (and b!7239006 (is-Cons!70111 (t!384286 s1!1971))) b!7239232))

(declare-fun b!7239233 () Bool)

(declare-fun e!4340165 () Bool)

(declare-fun tp!2035019 () Bool)

(declare-fun tp!2035020 () Bool)

(assert (=> b!7239233 (= e!4340165 (and tp!2035019 tp!2035020))))

(assert (=> b!7239004 (= tp!2034994 e!4340165)))

(assert (= (and b!7239004 (is-Cons!70110 (exprs!7982 ct2!328))) b!7239233))

(declare-fun b_lambda!277657 () Bool)

(assert (= b_lambda!277651 (or b!7239011 b_lambda!277657)))

(declare-fun bs!1903806 () Bool)

(declare-fun d!2248866 () Bool)

(assert (= bs!1903806 (and d!2248866 b!7239011)))

(assert (=> bs!1903806 (= (dynLambda!28617 lambda!441203 lt!2578020) (derivationStepZipperUp!2416 lt!2578020 (h!76559 s1!1971)))))

(assert (=> bs!1903806 m!7911472))

(assert (=> d!2248828 d!2248866))

(declare-fun b_lambda!277659 () Bool)

(assert (= b_lambda!277649 (or b!7239011 b_lambda!277659)))

(declare-fun bs!1903807 () Bool)

(declare-fun d!2248868 () Bool)

(assert (= bs!1903807 (and d!2248868 b!7239011)))

(assert (=> bs!1903807 (= (dynLambda!28617 lambda!441203 ct1!232) (derivationStepZipperUp!2416 ct1!232 (h!76559 s1!1971)))))

(assert (=> bs!1903807 m!7911494))

(assert (=> d!2248822 d!2248868))

(declare-fun b_lambda!277661 () Bool)

(assert (= b_lambda!277655 (or b!7239005 b_lambda!277661)))

(declare-fun bs!1903808 () Bool)

(declare-fun d!2248870 () Bool)

(assert (= bs!1903808 (and d!2248870 b!7239005)))

(declare-fun validRegex!9528 (Regex!18542) Bool)

(assert (=> bs!1903808 (= (dynLambda!28618 lambda!441201 (h!76558 (exprs!7982 ct2!328))) (validRegex!9528 (h!76558 (exprs!7982 ct2!328))))))

(declare-fun m!7911900 () Bool)

(assert (=> bs!1903808 m!7911900))

(assert (=> b!7239203 d!2248870))

(declare-fun b_lambda!277663 () Bool)

(assert (= b_lambda!277653 (or b!7239005 b_lambda!277663)))

(declare-fun bs!1903809 () Bool)

(declare-fun d!2248872 () Bool)

(assert (= bs!1903809 (and d!2248872 b!7239005)))

(assert (=> bs!1903809 (= (dynLambda!28618 lambda!441201 (h!76558 (exprs!7982 lt!2578024))) (validRegex!9528 (h!76558 (exprs!7982 lt!2578024))))))

(declare-fun m!7911902 () Bool)

(assert (=> bs!1903809 m!7911902))

(assert (=> b!7239159 d!2248872))

(declare-fun b_lambda!277665 () Bool)

(assert (= b_lambda!277647 (or b!7239013 b_lambda!277665)))

(declare-fun bs!1903810 () Bool)

(declare-fun d!2248874 () Bool)

(assert (= bs!1903810 (and d!2248874 b!7239013)))

(assert (=> bs!1903810 (= (dynLambda!28616 lambda!441202 lt!2578156) (matchZipper!3452 (set.insert lt!2578156 (as set.empty (Set Context!14964))) (t!384286 s1!1971)))))

(declare-fun m!7911904 () Bool)

(assert (=> bs!1903810 m!7911904))

(assert (=> bs!1903810 m!7911904))

(declare-fun m!7911906 () Bool)

(assert (=> bs!1903810 m!7911906))

(assert (=> d!2248780 d!2248874))

(push 1)

(assert (not b!7239198))

(assert (not bm!659235))

(assert (not b!7239120))

(assert (not d!2248776))

(assert (not d!2248800))

(assert (not d!2248814))

(assert (not bs!1903809))

(assert (not b!7239194))

(assert (not b!7239209))

(assert (not b_lambda!277665))

(assert (not b!7239130))

(assert (not d!2248784))

(assert (not d!2248822))

(assert (not d!2248802))

(assert (not bm!659231))

(assert (not b!7239110))

(assert (not b!7239232))

(assert (not d!2248796))

(assert (not b!7239144))

(assert (not bm!659228))

(assert (not b!7239148))

(assert (not bs!1903808))

(assert (not d!2248848))

(assert (not d!2248772))

(assert (not b!7239231))

(assert (not b!7239074))

(assert (not b_lambda!277659))

(assert (not d!2248858))

(assert (not b!7239126))

(assert (not bs!1903806))

(assert (not b!7239149))

(assert (not b!7239129))

(assert (not d!2248794))

(assert (not d!2248778))

(assert tp_is_empty!46549)

(assert (not d!2248810))

(assert (not d!2248852))

(assert (not d!2248818))

(assert (not bm!659211))

(assert (not b!7239132))

(assert (not b!7239104))

(assert (not b!7239146))

(assert (not b!7239123))

(assert (not b!7239206))

(assert (not b!7239160))

(assert (not d!2248854))

(assert (not b!7239190))

(assert (not d!2248812))

(assert (not d!2248830))

(assert (not b!7239088))

(assert (not b!7239124))

(assert (not bs!1903807))

(assert (not d!2248842))

(assert (not b!7239210))

(assert (not b!7239218))

(assert (not b!7239137))

(assert (not d!2248816))

(assert (not b!7239109))

(assert (not d!2248844))

(assert (not d!2248820))

(assert (not d!2248780))

(assert (not b!7239233))

(assert (not b!7239201))

(assert (not b!7239100))

(assert (not b!7239145))

(assert (not b!7239121))

(assert (not b!7239204))

(assert (not b!7239200))

(assert (not b!7239125))

(assert (not b!7239208))

(assert (not d!2248834))

(assert (not bm!659212))

(assert (not d!2248774))

(assert (not b_lambda!277661))

(assert (not b!7239205))

(assert (not bm!659227))

(assert (not bm!659234))

(assert (not b!7239152))

(assert (not b!7239143))

(assert (not d!2248826))

(assert (not bm!659237))

(assert (not b!7239226))

(assert (not b!7239207))

(assert (not b_lambda!277657))

(assert (not b!7239151))

(assert (not d!2248856))

(assert (not b_lambda!277663))

(assert (not bm!659210))

(assert (not d!2248786))

(assert (not b!7239131))

(assert (not b!7239087))

(assert (not d!2248798))

(assert (not d!2248804))

(assert (not b!7239142))

(assert (not b!7239136))

(assert (not b!7239141))

(assert (not bm!659230))

(assert (not d!2248828))

(assert (not bs!1903810))

(assert (not d!2248850))

(assert (not d!2248790))

(assert (not d!2248792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

