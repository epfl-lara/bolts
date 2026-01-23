; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!702658 () Bool)

(assert start!702658)

(declare-fun b!7236568 () Bool)

(assert (=> b!7236568 true))

(declare-fun b!7236572 () Bool)

(assert (=> b!7236572 true))

(declare-fun res!2935809 () Bool)

(declare-fun e!4338425 () Bool)

(assert (=> start!702658 (=> (not res!2935809) (not e!4338425))))

(declare-datatypes ((C!37326 0))(
  ( (C!37327 (val!28611 Int)) )
))
(declare-datatypes ((Regex!18526 0))(
  ( (ElementMatch!18526 (c!1343200 C!37326)) (Concat!27371 (regOne!37564 Regex!18526) (regTwo!37564 Regex!18526)) (EmptyExpr!18526) (Star!18526 (reg!18855 Regex!18526)) (EmptyLang!18526) (Union!18526 (regOne!37565 Regex!18526) (regTwo!37565 Regex!18526)) )
))
(declare-datatypes ((List!70186 0))(
  ( (Nil!70062) (Cons!70062 (h!76510 Regex!18526) (t!384237 List!70186)) )
))
(declare-datatypes ((Context!14932 0))(
  ( (Context!14933 (exprs!7966 List!70186)) )
))
(declare-fun lt!2576045 () (Set Context!14932))

(declare-datatypes ((List!70187 0))(
  ( (Nil!70063) (Cons!70063 (h!76511 C!37326) (t!384238 List!70187)) )
))
(declare-fun s1!1971 () List!70187)

(declare-fun matchZipper!3436 ((Set Context!14932) List!70187) Bool)

(assert (=> start!702658 (= res!2935809 (matchZipper!3436 lt!2576045 s1!1971))))

(declare-fun ct1!232 () Context!14932)

(assert (=> start!702658 (= lt!2576045 (set.insert ct1!232 (as set.empty (Set Context!14932))))))

(assert (=> start!702658 e!4338425))

(declare-fun e!4338423 () Bool)

(declare-fun inv!89326 (Context!14932) Bool)

(assert (=> start!702658 (and (inv!89326 ct1!232) e!4338423)))

(declare-fun e!4338433 () Bool)

(assert (=> start!702658 e!4338433))

(declare-fun e!4338428 () Bool)

(assert (=> start!702658 e!4338428))

(declare-fun ct2!328 () Context!14932)

(declare-fun e!4338422 () Bool)

(assert (=> start!702658 (and (inv!89326 ct2!328) e!4338422)))

(declare-fun b!7236558 () Bool)

(declare-fun e!4338435 () Bool)

(declare-fun e!4338427 () Bool)

(assert (=> b!7236558 (= e!4338435 e!4338427)))

(declare-fun res!2935812 () Bool)

(assert (=> b!7236558 (=> res!2935812 e!4338427)))

(declare-fun lt!2576040 () (Set Context!14932))

(declare-fun lt!2576035 () (Set Context!14932))

(declare-fun lt!2576032 () Context!14932)

(declare-fun derivationStepZipperUp!2400 (Context!14932 C!37326) (Set Context!14932))

(assert (=> b!7236558 (= res!2935812 (not (= lt!2576040 (set.union lt!2576035 (derivationStepZipperUp!2400 lt!2576032 (h!76511 s1!1971))))))))

(declare-fun lambda!440512 () Int)

(declare-datatypes ((Unit!163590 0))(
  ( (Unit!163591) )
))
(declare-fun lt!2576051 () Unit!163590)

(declare-fun lemmaConcatPreservesForall!1335 (List!70186 List!70186 Int) Unit!163590)

(assert (=> b!7236558 (= lt!2576051 (lemmaConcatPreservesForall!1335 (exprs!7966 ct1!232) (exprs!7966 ct2!328) lambda!440512))))

(declare-fun b!7236559 () Bool)

(declare-fun tp!2034658 () Bool)

(assert (=> b!7236559 (= e!4338423 tp!2034658)))

(declare-fun b!7236560 () Bool)

(declare-fun e!4338429 () Bool)

(assert (=> b!7236560 (= e!4338429 e!4338435)))

(declare-fun res!2935806 () Bool)

(assert (=> b!7236560 (=> res!2935806 e!4338435)))

(declare-fun lt!2576031 () (Set Context!14932))

(declare-fun lt!2576034 () (Set Context!14932))

(declare-fun lt!2576048 () (Set Context!14932))

(assert (=> b!7236560 (= res!2935806 (or (not (= lt!2576031 lt!2576034)) (not (= lt!2576048 lt!2576031))))))

(declare-fun lt!2576049 () (Set Context!14932))

(declare-fun lt!2576041 () (Set Context!14932))

(assert (=> b!7236560 (= lt!2576034 (set.union lt!2576049 lt!2576041))))

(declare-fun lt!2576028 () Context!14932)

(assert (=> b!7236560 (= lt!2576041 (derivationStepZipperUp!2400 lt!2576028 (h!76511 s1!1971)))))

(declare-fun b!7236561 () Bool)

(declare-fun e!4338424 () Bool)

(declare-fun e!4338431 () Bool)

(assert (=> b!7236561 (= e!4338424 e!4338431)))

(declare-fun res!2935810 () Bool)

(assert (=> b!7236561 (=> (not res!2935810) (not e!4338431))))

(assert (=> b!7236561 (= res!2935810 (matchZipper!3436 lt!2576048 (t!384238 s1!1971)))))

(declare-fun derivationStepZipper!3318 ((Set Context!14932) C!37326) (Set Context!14932))

(assert (=> b!7236561 (= lt!2576048 (derivationStepZipper!3318 lt!2576045 (h!76511 s1!1971)))))

(declare-fun b!7236562 () Bool)

(declare-fun res!2935808 () Bool)

(assert (=> b!7236562 (=> res!2935808 e!4338427)))

(declare-fun lt!2576030 () (Set Context!14932))

(assert (=> b!7236562 (= res!2935808 (not (= (derivationStepZipper!3318 lt!2576030 (h!76511 s1!1971)) lt!2576040)))))

(declare-fun b!7236563 () Bool)

(assert (=> b!7236563 (= e!4338425 e!4338424)))

(declare-fun res!2935805 () Bool)

(assert (=> b!7236563 (=> (not res!2935805) (not e!4338424))))

(assert (=> b!7236563 (= res!2935805 (and (not (is-Nil!70062 (exprs!7966 ct1!232))) (is-Cons!70063 s1!1971)))))

(declare-fun lt!2576042 () Context!14932)

(assert (=> b!7236563 (= lt!2576030 (set.insert lt!2576042 (as set.empty (Set Context!14932))))))

(declare-fun lt!2576036 () List!70186)

(assert (=> b!7236563 (= lt!2576042 (Context!14933 lt!2576036))))

(declare-fun ++!16352 (List!70186 List!70186) List!70186)

(assert (=> b!7236563 (= lt!2576036 (++!16352 (exprs!7966 ct1!232) (exprs!7966 ct2!328)))))

(declare-fun lt!2576039 () Unit!163590)

(assert (=> b!7236563 (= lt!2576039 (lemmaConcatPreservesForall!1335 (exprs!7966 ct1!232) (exprs!7966 ct2!328) lambda!440512))))

(declare-fun b!7236564 () Bool)

(declare-fun e!4338430 () Bool)

(assert (=> b!7236564 (= e!4338427 e!4338430)))

(declare-fun res!2935811 () Bool)

(assert (=> b!7236564 (=> res!2935811 e!4338430)))

(declare-fun forall!17363 (List!70186 Int) Bool)

(assert (=> b!7236564 (= res!2935811 (not (forall!17363 (exprs!7966 ct1!232) lambda!440512)))))

(declare-fun e!4338426 () Bool)

(assert (=> b!7236564 (= (matchZipper!3436 lt!2576034 (t!384238 s1!1971)) e!4338426)))

(declare-fun res!2935813 () Bool)

(assert (=> b!7236564 (=> res!2935813 e!4338426)))

(assert (=> b!7236564 (= res!2935813 (matchZipper!3436 lt!2576049 (t!384238 s1!1971)))))

(declare-fun lt!2576044 () Unit!163590)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1673 ((Set Context!14932) (Set Context!14932) List!70187) Unit!163590)

(assert (=> b!7236564 (= lt!2576044 (lemmaZipperConcatMatchesSameAsBothZippers!1673 lt!2576049 lt!2576041 (t!384238 s1!1971)))))

(declare-fun b!7236565 () Bool)

(declare-fun e!4338432 () Bool)

(declare-fun e!4338421 () Bool)

(assert (=> b!7236565 (= e!4338432 e!4338421)))

(declare-fun res!2935814 () Bool)

(assert (=> b!7236565 (=> res!2935814 e!4338421)))

(declare-fun isEmpty!40379 (List!70186) Bool)

(assert (=> b!7236565 (= res!2935814 (isEmpty!40379 (exprs!7966 ct1!232)))))

(assert (=> b!7236565 (= lt!2576031 (derivationStepZipperUp!2400 ct1!232 (h!76511 s1!1971)))))

(declare-fun lt!2576052 () Unit!163590)

(declare-fun lt!2576047 () Context!14932)

(assert (=> b!7236565 (= lt!2576052 (lemmaConcatPreservesForall!1335 (exprs!7966 lt!2576047) (exprs!7966 ct2!328) lambda!440512))))

(declare-fun s2!1849 () List!70187)

(declare-fun ++!16353 (List!70187 List!70187) List!70187)

(assert (=> b!7236565 (matchZipper!3436 (set.insert (Context!14933 (++!16352 (exprs!7966 lt!2576047) (exprs!7966 ct2!328))) (as set.empty (Set Context!14932))) (++!16353 (t!384238 s1!1971) s2!1849))))

(declare-fun lt!2576046 () Unit!163590)

(assert (=> b!7236565 (= lt!2576046 (lemmaConcatPreservesForall!1335 (exprs!7966 lt!2576047) (exprs!7966 ct2!328) lambda!440512))))

(declare-fun lt!2576029 () Unit!163590)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!317 (Context!14932 Context!14932 List!70187 List!70187) Unit!163590)

(assert (=> b!7236565 (= lt!2576029 (lemmaConcatenateContextMatchesConcatOfStrings!317 lt!2576047 ct2!328 (t!384238 s1!1971) s2!1849))))

(declare-fun lambda!440513 () Int)

(declare-fun getWitness!2063 ((Set Context!14932) Int) Context!14932)

(assert (=> b!7236565 (= lt!2576047 (getWitness!2063 lt!2576048 lambda!440513))))

(declare-fun b!7236566 () Bool)

(declare-fun tp_is_empty!46517 () Bool)

(declare-fun tp!2034659 () Bool)

(assert (=> b!7236566 (= e!4338433 (and tp_is_empty!46517 tp!2034659))))

(declare-fun b!7236567 () Bool)

(assert (=> b!7236567 (= e!4338426 (matchZipper!3436 lt!2576041 (t!384238 s1!1971)))))

(assert (=> b!7236568 (= e!4338431 (not e!4338432))))

(declare-fun res!2935807 () Bool)

(assert (=> b!7236568 (=> res!2935807 e!4338432)))

(declare-fun exists!4195 ((Set Context!14932) Int) Bool)

(assert (=> b!7236568 (= res!2935807 (not (exists!4195 lt!2576048 lambda!440513)))))

(declare-datatypes ((List!70188 0))(
  ( (Nil!70064) (Cons!70064 (h!76512 Context!14932) (t!384239 List!70188)) )
))
(declare-fun lt!2576038 () List!70188)

(declare-fun exists!4196 (List!70188 Int) Bool)

(assert (=> b!7236568 (exists!4196 lt!2576038 lambda!440513)))

(declare-fun lt!2576033 () Unit!163590)

(declare-fun lemmaZipperMatchesExistsMatchingContext!669 (List!70188 List!70187) Unit!163590)

(assert (=> b!7236568 (= lt!2576033 (lemmaZipperMatchesExistsMatchingContext!669 lt!2576038 (t!384238 s1!1971)))))

(declare-fun toList!11383 ((Set Context!14932)) List!70188)

(assert (=> b!7236568 (= lt!2576038 (toList!11383 lt!2576048))))

(declare-fun b!7236569 () Bool)

(assert (=> b!7236569 (= e!4338430 (forall!17363 (exprs!7966 ct2!328) lambda!440512))))

(declare-fun b!7236570 () Bool)

(declare-fun res!2935815 () Bool)

(assert (=> b!7236570 (=> (not res!2935815) (not e!4338425))))

(assert (=> b!7236570 (= res!2935815 (matchZipper!3436 (set.insert ct2!328 (as set.empty (Set Context!14932))) s2!1849))))

(declare-fun b!7236571 () Bool)

(declare-fun e!4338434 () Bool)

(assert (=> b!7236571 (= e!4338421 e!4338434)))

(declare-fun res!2935804 () Bool)

(assert (=> b!7236571 (=> res!2935804 e!4338434)))

(assert (=> b!7236571 (= res!2935804 (isEmpty!40379 lt!2576036))))

(declare-fun lt!2576053 () Unit!163590)

(assert (=> b!7236571 (= lt!2576053 (lemmaConcatPreservesForall!1335 (exprs!7966 ct1!232) (exprs!7966 ct2!328) lambda!440512))))

(assert (=> b!7236571 (= lt!2576040 (derivationStepZipperUp!2400 lt!2576042 (h!76511 s1!1971)))))

(declare-fun lt!2576037 () Unit!163590)

(assert (=> b!7236571 (= lt!2576037 (lemmaConcatPreservesForall!1335 (exprs!7966 ct1!232) (exprs!7966 ct2!328) lambda!440512))))

(declare-fun derivationStepZipperDown!2570 (Regex!18526 Context!14932 C!37326) (Set Context!14932))

(assert (=> b!7236571 (= lt!2576049 (derivationStepZipperDown!2570 (h!76510 (exprs!7966 ct1!232)) lt!2576028 (h!76511 s1!1971)))))

(declare-fun tail!14165 (List!70186) List!70186)

(assert (=> b!7236571 (= lt!2576028 (Context!14933 (tail!14165 (exprs!7966 ct1!232))))))

(assert (=> b!7236572 (= e!4338434 e!4338429)))

(declare-fun res!2935803 () Bool)

(assert (=> b!7236572 (=> res!2935803 e!4338429)))

(declare-fun nullable!7839 (Regex!18526) Bool)

(assert (=> b!7236572 (= res!2935803 (not (nullable!7839 (h!76510 (exprs!7966 ct1!232)))))))

(declare-fun lambda!440514 () Int)

(declare-fun flatMap!2730 ((Set Context!14932) Int) (Set Context!14932))

(assert (=> b!7236572 (= (flatMap!2730 lt!2576030 lambda!440514) (derivationStepZipperUp!2400 lt!2576042 (h!76511 s1!1971)))))

(declare-fun lt!2576050 () Unit!163590)

(declare-fun lemmaFlatMapOnSingletonSet!2157 ((Set Context!14932) Context!14932 Int) Unit!163590)

(assert (=> b!7236572 (= lt!2576050 (lemmaFlatMapOnSingletonSet!2157 lt!2576030 lt!2576042 lambda!440514))))

(declare-fun lt!2576043 () Unit!163590)

(assert (=> b!7236572 (= lt!2576043 (lemmaConcatPreservesForall!1335 (exprs!7966 ct1!232) (exprs!7966 ct2!328) lambda!440512))))

(assert (=> b!7236572 (= (flatMap!2730 lt!2576045 lambda!440514) (derivationStepZipperUp!2400 ct1!232 (h!76511 s1!1971)))))

(declare-fun lt!2576054 () Unit!163590)

(assert (=> b!7236572 (= lt!2576054 (lemmaFlatMapOnSingletonSet!2157 lt!2576045 ct1!232 lambda!440514))))

(assert (=> b!7236572 (= lt!2576035 (derivationStepZipperDown!2570 (h!76510 (exprs!7966 ct1!232)) lt!2576032 (h!76511 s1!1971)))))

(assert (=> b!7236572 (= lt!2576032 (Context!14933 (tail!14165 lt!2576036)))))

(declare-fun b!7236573 () Bool)

(declare-fun tp!2034657 () Bool)

(assert (=> b!7236573 (= e!4338428 (and tp_is_empty!46517 tp!2034657))))

(declare-fun b!7236574 () Bool)

(declare-fun tp!2034660 () Bool)

(assert (=> b!7236574 (= e!4338422 tp!2034660)))

(assert (= (and start!702658 res!2935809) b!7236570))

(assert (= (and b!7236570 res!2935815) b!7236563))

(assert (= (and b!7236563 res!2935805) b!7236561))

(assert (= (and b!7236561 res!2935810) b!7236568))

(assert (= (and b!7236568 (not res!2935807)) b!7236565))

(assert (= (and b!7236565 (not res!2935814)) b!7236571))

(assert (= (and b!7236571 (not res!2935804)) b!7236572))

(assert (= (and b!7236572 (not res!2935803)) b!7236560))

(assert (= (and b!7236560 (not res!2935806)) b!7236558))

(assert (= (and b!7236558 (not res!2935812)) b!7236562))

(assert (= (and b!7236562 (not res!2935808)) b!7236564))

(assert (= (and b!7236564 (not res!2935813)) b!7236567))

(assert (= (and b!7236564 (not res!2935811)) b!7236569))

(assert (= start!702658 b!7236559))

(assert (= (and start!702658 (is-Cons!70063 s1!1971)) b!7236566))

(assert (= (and start!702658 (is-Cons!70063 s2!1849)) b!7236573))

(assert (= start!702658 b!7236574))

(declare-fun m!7907636 () Bool)

(assert (=> b!7236567 m!7907636))

(declare-fun m!7907638 () Bool)

(assert (=> b!7236563 m!7907638))

(declare-fun m!7907640 () Bool)

(assert (=> b!7236563 m!7907640))

(declare-fun m!7907642 () Bool)

(assert (=> b!7236563 m!7907642))

(declare-fun m!7907644 () Bool)

(assert (=> b!7236564 m!7907644))

(declare-fun m!7907646 () Bool)

(assert (=> b!7236564 m!7907646))

(declare-fun m!7907648 () Bool)

(assert (=> b!7236564 m!7907648))

(declare-fun m!7907650 () Bool)

(assert (=> b!7236564 m!7907650))

(declare-fun m!7907652 () Bool)

(assert (=> b!7236565 m!7907652))

(declare-fun m!7907654 () Bool)

(assert (=> b!7236565 m!7907654))

(declare-fun m!7907656 () Bool)

(assert (=> b!7236565 m!7907656))

(declare-fun m!7907658 () Bool)

(assert (=> b!7236565 m!7907658))

(declare-fun m!7907660 () Bool)

(assert (=> b!7236565 m!7907660))

(declare-fun m!7907662 () Bool)

(assert (=> b!7236565 m!7907662))

(declare-fun m!7907664 () Bool)

(assert (=> b!7236565 m!7907664))

(declare-fun m!7907666 () Bool)

(assert (=> b!7236565 m!7907666))

(assert (=> b!7236565 m!7907652))

(assert (=> b!7236565 m!7907662))

(declare-fun m!7907668 () Bool)

(assert (=> b!7236565 m!7907668))

(assert (=> b!7236565 m!7907656))

(declare-fun m!7907670 () Bool)

(assert (=> b!7236558 m!7907670))

(assert (=> b!7236558 m!7907642))

(declare-fun m!7907672 () Bool)

(assert (=> b!7236568 m!7907672))

(declare-fun m!7907674 () Bool)

(assert (=> b!7236568 m!7907674))

(declare-fun m!7907676 () Bool)

(assert (=> b!7236568 m!7907676))

(declare-fun m!7907678 () Bool)

(assert (=> b!7236568 m!7907678))

(declare-fun m!7907680 () Bool)

(assert (=> b!7236561 m!7907680))

(declare-fun m!7907682 () Bool)

(assert (=> b!7236561 m!7907682))

(declare-fun m!7907684 () Bool)

(assert (=> b!7236569 m!7907684))

(declare-fun m!7907686 () Bool)

(assert (=> b!7236570 m!7907686))

(assert (=> b!7236570 m!7907686))

(declare-fun m!7907688 () Bool)

(assert (=> b!7236570 m!7907688))

(declare-fun m!7907690 () Bool)

(assert (=> b!7236560 m!7907690))

(declare-fun m!7907692 () Bool)

(assert (=> start!702658 m!7907692))

(declare-fun m!7907694 () Bool)

(assert (=> start!702658 m!7907694))

(declare-fun m!7907696 () Bool)

(assert (=> start!702658 m!7907696))

(declare-fun m!7907698 () Bool)

(assert (=> start!702658 m!7907698))

(declare-fun m!7907700 () Bool)

(assert (=> b!7236572 m!7907700))

(declare-fun m!7907702 () Bool)

(assert (=> b!7236572 m!7907702))

(declare-fun m!7907704 () Bool)

(assert (=> b!7236572 m!7907704))

(declare-fun m!7907706 () Bool)

(assert (=> b!7236572 m!7907706))

(assert (=> b!7236572 m!7907642))

(declare-fun m!7907708 () Bool)

(assert (=> b!7236572 m!7907708))

(declare-fun m!7907710 () Bool)

(assert (=> b!7236572 m!7907710))

(declare-fun m!7907712 () Bool)

(assert (=> b!7236572 m!7907712))

(declare-fun m!7907714 () Bool)

(assert (=> b!7236572 m!7907714))

(assert (=> b!7236572 m!7907658))

(declare-fun m!7907716 () Bool)

(assert (=> b!7236562 m!7907716))

(assert (=> b!7236571 m!7907700))

(declare-fun m!7907718 () Bool)

(assert (=> b!7236571 m!7907718))

(assert (=> b!7236571 m!7907642))

(declare-fun m!7907720 () Bool)

(assert (=> b!7236571 m!7907720))

(declare-fun m!7907722 () Bool)

(assert (=> b!7236571 m!7907722))

(assert (=> b!7236571 m!7907642))

(push 1)

(assert (not b!7236572))

(assert (not b!7236562))

(assert (not b!7236558))

(assert (not b!7236566))

(assert (not b!7236567))

(assert (not b!7236568))

(assert (not start!702658))

(assert (not b!7236570))

(assert (not b!7236563))

(assert (not b!7236569))

(assert (not b!7236571))

(assert (not b!7236560))

(assert (not b!7236564))

(assert (not b!7236574))

(assert (not b!7236573))

(assert (not b!7236561))

(assert tp_is_empty!46517)

(assert (not b!7236565))

(assert (not b!7236559))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2247900 () Bool)

(assert (=> d!2247900 (forall!17363 (++!16352 (exprs!7966 lt!2576047) (exprs!7966 ct2!328)) lambda!440512)))

(declare-fun lt!2576138 () Unit!163590)

(declare-fun choose!55655 (List!70186 List!70186 Int) Unit!163590)

(assert (=> d!2247900 (= lt!2576138 (choose!55655 (exprs!7966 lt!2576047) (exprs!7966 ct2!328) lambda!440512))))

(assert (=> d!2247900 (forall!17363 (exprs!7966 lt!2576047) lambda!440512)))

(assert (=> d!2247900 (= (lemmaConcatPreservesForall!1335 (exprs!7966 lt!2576047) (exprs!7966 ct2!328) lambda!440512) lt!2576138)))

(declare-fun bs!1903471 () Bool)

(assert (= bs!1903471 d!2247900))

(assert (=> bs!1903471 m!7907664))

(assert (=> bs!1903471 m!7907664))

(declare-fun m!7907812 () Bool)

(assert (=> bs!1903471 m!7907812))

(declare-fun m!7907814 () Bool)

(assert (=> bs!1903471 m!7907814))

(declare-fun m!7907816 () Bool)

(assert (=> bs!1903471 m!7907816))

(assert (=> b!7236565 d!2247900))

(declare-fun d!2247902 () Bool)

(assert (=> d!2247902 (= (isEmpty!40379 (exprs!7966 ct1!232)) (is-Nil!70062 (exprs!7966 ct1!232)))))

(assert (=> b!7236565 d!2247902))

(declare-fun bs!1903472 () Bool)

(declare-fun d!2247904 () Bool)

(assert (= bs!1903472 (and d!2247904 b!7236563)))

(declare-fun lambda!440546 () Int)

(assert (=> bs!1903472 (= lambda!440546 lambda!440512)))

(assert (=> d!2247904 (matchZipper!3436 (set.insert (Context!14933 (++!16352 (exprs!7966 lt!2576047) (exprs!7966 ct2!328))) (as set.empty (Set Context!14932))) (++!16353 (t!384238 s1!1971) s2!1849))))

(declare-fun lt!2576144 () Unit!163590)

(assert (=> d!2247904 (= lt!2576144 (lemmaConcatPreservesForall!1335 (exprs!7966 lt!2576047) (exprs!7966 ct2!328) lambda!440546))))

(declare-fun lt!2576143 () Unit!163590)

(declare-fun choose!55656 (Context!14932 Context!14932 List!70187 List!70187) Unit!163590)

(assert (=> d!2247904 (= lt!2576143 (choose!55656 lt!2576047 ct2!328 (t!384238 s1!1971) s2!1849))))

(assert (=> d!2247904 (matchZipper!3436 (set.insert lt!2576047 (as set.empty (Set Context!14932))) (t!384238 s1!1971))))

(assert (=> d!2247904 (= (lemmaConcatenateContextMatchesConcatOfStrings!317 lt!2576047 ct2!328 (t!384238 s1!1971) s2!1849) lt!2576143)))

(declare-fun bs!1903473 () Bool)

(assert (= bs!1903473 d!2247904))

(assert (=> bs!1903473 m!7907652))

(declare-fun m!7907818 () Bool)

(assert (=> bs!1903473 m!7907818))

(declare-fun m!7907820 () Bool)

(assert (=> bs!1903473 m!7907820))

(declare-fun m!7907822 () Bool)

(assert (=> bs!1903473 m!7907822))

(assert (=> bs!1903473 m!7907662))

(assert (=> bs!1903473 m!7907652))

(assert (=> bs!1903473 m!7907662))

(assert (=> bs!1903473 m!7907668))

(declare-fun m!7907824 () Bool)

(assert (=> bs!1903473 m!7907824))

(assert (=> bs!1903473 m!7907818))

(assert (=> bs!1903473 m!7907664))

(assert (=> b!7236565 d!2247904))

(declare-fun b!7236644 () Bool)

(declare-fun e!4338489 () Bool)

(assert (=> b!7236644 (= e!4338489 (nullable!7839 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun d!2247906 () Bool)

(declare-fun c!1343216 () Bool)

(assert (=> d!2247906 (= c!1343216 e!4338489)))

(declare-fun res!2935857 () Bool)

(assert (=> d!2247906 (=> (not res!2935857) (not e!4338489))))

(assert (=> d!2247906 (= res!2935857 (is-Cons!70062 (exprs!7966 ct1!232)))))

(declare-fun e!4338487 () (Set Context!14932))

(assert (=> d!2247906 (= (derivationStepZipperUp!2400 ct1!232 (h!76511 s1!1971)) e!4338487)))

(declare-fun b!7236645 () Bool)

(declare-fun e!4338488 () (Set Context!14932))

(assert (=> b!7236645 (= e!4338487 e!4338488)))

(declare-fun c!1343217 () Bool)

(assert (=> b!7236645 (= c!1343217 (is-Cons!70062 (exprs!7966 ct1!232)))))

(declare-fun b!7236646 () Bool)

(declare-fun call!658883 () (Set Context!14932))

(assert (=> b!7236646 (= e!4338488 call!658883)))

(declare-fun bm!658878 () Bool)

(assert (=> bm!658878 (= call!658883 (derivationStepZipperDown!2570 (h!76510 (exprs!7966 ct1!232)) (Context!14933 (t!384237 (exprs!7966 ct1!232))) (h!76511 s1!1971)))))

(declare-fun b!7236647 () Bool)

(assert (=> b!7236647 (= e!4338487 (set.union call!658883 (derivationStepZipperUp!2400 (Context!14933 (t!384237 (exprs!7966 ct1!232))) (h!76511 s1!1971))))))

(declare-fun b!7236648 () Bool)

(assert (=> b!7236648 (= e!4338488 (as set.empty (Set Context!14932)))))

(assert (= (and d!2247906 res!2935857) b!7236644))

(assert (= (and d!2247906 c!1343216) b!7236647))

(assert (= (and d!2247906 (not c!1343216)) b!7236645))

(assert (= (and b!7236645 c!1343217) b!7236646))

(assert (= (and b!7236645 (not c!1343217)) b!7236648))

(assert (= (or b!7236647 b!7236646) bm!658878))

(assert (=> b!7236644 m!7907702))

(declare-fun m!7907826 () Bool)

(assert (=> bm!658878 m!7907826))

(declare-fun m!7907828 () Bool)

(assert (=> b!7236647 m!7907828))

(assert (=> b!7236565 d!2247906))

(declare-fun d!2247908 () Bool)

(declare-fun c!1343220 () Bool)

(declare-fun isEmpty!40381 (List!70187) Bool)

(assert (=> d!2247908 (= c!1343220 (isEmpty!40381 (++!16353 (t!384238 s1!1971) s2!1849)))))

(declare-fun e!4338492 () Bool)

(assert (=> d!2247908 (= (matchZipper!3436 (set.insert (Context!14933 (++!16352 (exprs!7966 lt!2576047) (exprs!7966 ct2!328))) (as set.empty (Set Context!14932))) (++!16353 (t!384238 s1!1971) s2!1849)) e!4338492)))

(declare-fun b!7236653 () Bool)

(declare-fun nullableZipper!2832 ((Set Context!14932)) Bool)

(assert (=> b!7236653 (= e!4338492 (nullableZipper!2832 (set.insert (Context!14933 (++!16352 (exprs!7966 lt!2576047) (exprs!7966 ct2!328))) (as set.empty (Set Context!14932)))))))

(declare-fun b!7236654 () Bool)

(declare-fun head!14821 (List!70187) C!37326)

(declare-fun tail!14167 (List!70187) List!70187)

(assert (=> b!7236654 (= e!4338492 (matchZipper!3436 (derivationStepZipper!3318 (set.insert (Context!14933 (++!16352 (exprs!7966 lt!2576047) (exprs!7966 ct2!328))) (as set.empty (Set Context!14932))) (head!14821 (++!16353 (t!384238 s1!1971) s2!1849))) (tail!14167 (++!16353 (t!384238 s1!1971) s2!1849))))))

(assert (= (and d!2247908 c!1343220) b!7236653))

(assert (= (and d!2247908 (not c!1343220)) b!7236654))

(assert (=> d!2247908 m!7907662))

(declare-fun m!7907830 () Bool)

(assert (=> d!2247908 m!7907830))

(assert (=> b!7236653 m!7907652))

(declare-fun m!7907832 () Bool)

(assert (=> b!7236653 m!7907832))

(assert (=> b!7236654 m!7907662))

(declare-fun m!7907834 () Bool)

(assert (=> b!7236654 m!7907834))

(assert (=> b!7236654 m!7907652))

(assert (=> b!7236654 m!7907834))

(declare-fun m!7907836 () Bool)

(assert (=> b!7236654 m!7907836))

(assert (=> b!7236654 m!7907662))

(declare-fun m!7907838 () Bool)

(assert (=> b!7236654 m!7907838))

(assert (=> b!7236654 m!7907836))

(assert (=> b!7236654 m!7907838))

(declare-fun m!7907840 () Bool)

(assert (=> b!7236654 m!7907840))

(assert (=> b!7236565 d!2247908))

(declare-fun d!2247910 () Bool)

(declare-fun e!4338495 () Bool)

(assert (=> d!2247910 e!4338495))

(declare-fun res!2935860 () Bool)

(assert (=> d!2247910 (=> (not res!2935860) (not e!4338495))))

(declare-fun lt!2576147 () Context!14932)

(declare-fun dynLambda!28589 (Int Context!14932) Bool)

(assert (=> d!2247910 (= res!2935860 (dynLambda!28589 lambda!440513 lt!2576147))))

(declare-fun getWitness!2065 (List!70188 Int) Context!14932)

(assert (=> d!2247910 (= lt!2576147 (getWitness!2065 (toList!11383 lt!2576048) lambda!440513))))

(assert (=> d!2247910 (exists!4195 lt!2576048 lambda!440513)))

(assert (=> d!2247910 (= (getWitness!2063 lt!2576048 lambda!440513) lt!2576147)))

(declare-fun b!7236657 () Bool)

(assert (=> b!7236657 (= e!4338495 (set.member lt!2576147 lt!2576048))))

(assert (= (and d!2247910 res!2935860) b!7236657))

(declare-fun b_lambda!277499 () Bool)

(assert (=> (not b_lambda!277499) (not d!2247910)))

(declare-fun m!7907842 () Bool)

(assert (=> d!2247910 m!7907842))

(assert (=> d!2247910 m!7907678))

(assert (=> d!2247910 m!7907678))

(declare-fun m!7907844 () Bool)

(assert (=> d!2247910 m!7907844))

(assert (=> d!2247910 m!7907672))

(declare-fun m!7907846 () Bool)

(assert (=> b!7236657 m!7907846))

(assert (=> b!7236565 d!2247910))

(declare-fun b!7236668 () Bool)

(declare-fun res!2935865 () Bool)

(declare-fun e!4338500 () Bool)

(assert (=> b!7236668 (=> (not res!2935865) (not e!4338500))))

(declare-fun lt!2576150 () List!70186)

(declare-fun size!41596 (List!70186) Int)

(assert (=> b!7236668 (= res!2935865 (= (size!41596 lt!2576150) (+ (size!41596 (exprs!7966 lt!2576047)) (size!41596 (exprs!7966 ct2!328)))))))

(declare-fun b!7236667 () Bool)

(declare-fun e!4338501 () List!70186)

(assert (=> b!7236667 (= e!4338501 (Cons!70062 (h!76510 (exprs!7966 lt!2576047)) (++!16352 (t!384237 (exprs!7966 lt!2576047)) (exprs!7966 ct2!328))))))

(declare-fun d!2247912 () Bool)

(assert (=> d!2247912 e!4338500))

(declare-fun res!2935866 () Bool)

(assert (=> d!2247912 (=> (not res!2935866) (not e!4338500))))

(declare-fun content!14444 (List!70186) (Set Regex!18526))

(assert (=> d!2247912 (= res!2935866 (= (content!14444 lt!2576150) (set.union (content!14444 (exprs!7966 lt!2576047)) (content!14444 (exprs!7966 ct2!328)))))))

(assert (=> d!2247912 (= lt!2576150 e!4338501)))

(declare-fun c!1343223 () Bool)

(assert (=> d!2247912 (= c!1343223 (is-Nil!70062 (exprs!7966 lt!2576047)))))

(assert (=> d!2247912 (= (++!16352 (exprs!7966 lt!2576047) (exprs!7966 ct2!328)) lt!2576150)))

(declare-fun b!7236669 () Bool)

(assert (=> b!7236669 (= e!4338500 (or (not (= (exprs!7966 ct2!328) Nil!70062)) (= lt!2576150 (exprs!7966 lt!2576047))))))

(declare-fun b!7236666 () Bool)

(assert (=> b!7236666 (= e!4338501 (exprs!7966 ct2!328))))

(assert (= (and d!2247912 c!1343223) b!7236666))

(assert (= (and d!2247912 (not c!1343223)) b!7236667))

(assert (= (and d!2247912 res!2935866) b!7236668))

(assert (= (and b!7236668 res!2935865) b!7236669))

(declare-fun m!7907848 () Bool)

(assert (=> b!7236668 m!7907848))

(declare-fun m!7907850 () Bool)

(assert (=> b!7236668 m!7907850))

(declare-fun m!7907852 () Bool)

(assert (=> b!7236668 m!7907852))

(declare-fun m!7907854 () Bool)

(assert (=> b!7236667 m!7907854))

(declare-fun m!7907856 () Bool)

(assert (=> d!2247912 m!7907856))

(declare-fun m!7907858 () Bool)

(assert (=> d!2247912 m!7907858))

(declare-fun m!7907860 () Bool)

(assert (=> d!2247912 m!7907860))

(assert (=> b!7236565 d!2247912))

(declare-fun b!7236680 () Bool)

(declare-fun res!2935872 () Bool)

(declare-fun e!4338507 () Bool)

(assert (=> b!7236680 (=> (not res!2935872) (not e!4338507))))

(declare-fun lt!2576153 () List!70187)

(declare-fun size!41597 (List!70187) Int)

(assert (=> b!7236680 (= res!2935872 (= (size!41597 lt!2576153) (+ (size!41597 (t!384238 s1!1971)) (size!41597 s2!1849))))))

(declare-fun b!7236678 () Bool)

(declare-fun e!4338506 () List!70187)

(assert (=> b!7236678 (= e!4338506 s2!1849)))

(declare-fun b!7236681 () Bool)

(assert (=> b!7236681 (= e!4338507 (or (not (= s2!1849 Nil!70063)) (= lt!2576153 (t!384238 s1!1971))))))

(declare-fun b!7236679 () Bool)

(assert (=> b!7236679 (= e!4338506 (Cons!70063 (h!76511 (t!384238 s1!1971)) (++!16353 (t!384238 (t!384238 s1!1971)) s2!1849)))))

(declare-fun d!2247914 () Bool)

(assert (=> d!2247914 e!4338507))

(declare-fun res!2935871 () Bool)

(assert (=> d!2247914 (=> (not res!2935871) (not e!4338507))))

(declare-fun content!14445 (List!70187) (Set C!37326))

(assert (=> d!2247914 (= res!2935871 (= (content!14445 lt!2576153) (set.union (content!14445 (t!384238 s1!1971)) (content!14445 s2!1849))))))

(assert (=> d!2247914 (= lt!2576153 e!4338506)))

(declare-fun c!1343226 () Bool)

(assert (=> d!2247914 (= c!1343226 (is-Nil!70063 (t!384238 s1!1971)))))

(assert (=> d!2247914 (= (++!16353 (t!384238 s1!1971) s2!1849) lt!2576153)))

(assert (= (and d!2247914 c!1343226) b!7236678))

(assert (= (and d!2247914 (not c!1343226)) b!7236679))

(assert (= (and d!2247914 res!2935871) b!7236680))

(assert (= (and b!7236680 res!2935872) b!7236681))

(declare-fun m!7907862 () Bool)

(assert (=> b!7236680 m!7907862))

(declare-fun m!7907864 () Bool)

(assert (=> b!7236680 m!7907864))

(declare-fun m!7907866 () Bool)

(assert (=> b!7236680 m!7907866))

(declare-fun m!7907868 () Bool)

(assert (=> b!7236679 m!7907868))

(declare-fun m!7907870 () Bool)

(assert (=> d!2247914 m!7907870))

(declare-fun m!7907872 () Bool)

(assert (=> d!2247914 m!7907872))

(declare-fun m!7907874 () Bool)

(assert (=> d!2247914 m!7907874))

(assert (=> b!7236565 d!2247914))

(declare-fun d!2247916 () Bool)

(declare-fun c!1343227 () Bool)

(assert (=> d!2247916 (= c!1343227 (isEmpty!40381 (t!384238 s1!1971)))))

(declare-fun e!4338508 () Bool)

(assert (=> d!2247916 (= (matchZipper!3436 lt!2576041 (t!384238 s1!1971)) e!4338508)))

(declare-fun b!7236682 () Bool)

(assert (=> b!7236682 (= e!4338508 (nullableZipper!2832 lt!2576041))))

(declare-fun b!7236683 () Bool)

(assert (=> b!7236683 (= e!4338508 (matchZipper!3436 (derivationStepZipper!3318 lt!2576041 (head!14821 (t!384238 s1!1971))) (tail!14167 (t!384238 s1!1971))))))

(assert (= (and d!2247916 c!1343227) b!7236682))

(assert (= (and d!2247916 (not c!1343227)) b!7236683))

(declare-fun m!7907876 () Bool)

(assert (=> d!2247916 m!7907876))

(declare-fun m!7907878 () Bool)

(assert (=> b!7236682 m!7907878))

(declare-fun m!7907880 () Bool)

(assert (=> b!7236683 m!7907880))

(assert (=> b!7236683 m!7907880))

(declare-fun m!7907882 () Bool)

(assert (=> b!7236683 m!7907882))

(declare-fun m!7907884 () Bool)

(assert (=> b!7236683 m!7907884))

(assert (=> b!7236683 m!7907882))

(assert (=> b!7236683 m!7907884))

(declare-fun m!7907886 () Bool)

(assert (=> b!7236683 m!7907886))

(assert (=> b!7236567 d!2247916))

(declare-fun b!7236686 () Bool)

(declare-fun res!2935873 () Bool)

(declare-fun e!4338509 () Bool)

(assert (=> b!7236686 (=> (not res!2935873) (not e!4338509))))

(declare-fun lt!2576154 () List!70186)

(assert (=> b!7236686 (= res!2935873 (= (size!41596 lt!2576154) (+ (size!41596 (exprs!7966 ct1!232)) (size!41596 (exprs!7966 ct2!328)))))))

(declare-fun b!7236685 () Bool)

(declare-fun e!4338510 () List!70186)

(assert (=> b!7236685 (= e!4338510 (Cons!70062 (h!76510 (exprs!7966 ct1!232)) (++!16352 (t!384237 (exprs!7966 ct1!232)) (exprs!7966 ct2!328))))))

(declare-fun d!2247918 () Bool)

(assert (=> d!2247918 e!4338509))

(declare-fun res!2935874 () Bool)

(assert (=> d!2247918 (=> (not res!2935874) (not e!4338509))))

(assert (=> d!2247918 (= res!2935874 (= (content!14444 lt!2576154) (set.union (content!14444 (exprs!7966 ct1!232)) (content!14444 (exprs!7966 ct2!328)))))))

(assert (=> d!2247918 (= lt!2576154 e!4338510)))

(declare-fun c!1343228 () Bool)

(assert (=> d!2247918 (= c!1343228 (is-Nil!70062 (exprs!7966 ct1!232)))))

(assert (=> d!2247918 (= (++!16352 (exprs!7966 ct1!232) (exprs!7966 ct2!328)) lt!2576154)))

(declare-fun b!7236687 () Bool)

(assert (=> b!7236687 (= e!4338509 (or (not (= (exprs!7966 ct2!328) Nil!70062)) (= lt!2576154 (exprs!7966 ct1!232))))))

(declare-fun b!7236684 () Bool)

(assert (=> b!7236684 (= e!4338510 (exprs!7966 ct2!328))))

(assert (= (and d!2247918 c!1343228) b!7236684))

(assert (= (and d!2247918 (not c!1343228)) b!7236685))

(assert (= (and d!2247918 res!2935874) b!7236686))

(assert (= (and b!7236686 res!2935873) b!7236687))

(declare-fun m!7907888 () Bool)

(assert (=> b!7236686 m!7907888))

(declare-fun m!7907890 () Bool)

(assert (=> b!7236686 m!7907890))

(assert (=> b!7236686 m!7907852))

(declare-fun m!7907892 () Bool)

(assert (=> b!7236685 m!7907892))

(declare-fun m!7907894 () Bool)

(assert (=> d!2247918 m!7907894))

(declare-fun m!7907896 () Bool)

(assert (=> d!2247918 m!7907896))

(assert (=> d!2247918 m!7907860))

(assert (=> b!7236563 d!2247918))

(declare-fun d!2247920 () Bool)

(assert (=> d!2247920 (forall!17363 (++!16352 (exprs!7966 ct1!232) (exprs!7966 ct2!328)) lambda!440512)))

(declare-fun lt!2576155 () Unit!163590)

(assert (=> d!2247920 (= lt!2576155 (choose!55655 (exprs!7966 ct1!232) (exprs!7966 ct2!328) lambda!440512))))

(assert (=> d!2247920 (forall!17363 (exprs!7966 ct1!232) lambda!440512)))

(assert (=> d!2247920 (= (lemmaConcatPreservesForall!1335 (exprs!7966 ct1!232) (exprs!7966 ct2!328) lambda!440512) lt!2576155)))

(declare-fun bs!1903474 () Bool)

(assert (= bs!1903474 d!2247920))

(assert (=> bs!1903474 m!7907640))

(assert (=> bs!1903474 m!7907640))

(declare-fun m!7907898 () Bool)

(assert (=> bs!1903474 m!7907898))

(declare-fun m!7907900 () Bool)

(assert (=> bs!1903474 m!7907900))

(assert (=> bs!1903474 m!7907644))

(assert (=> b!7236563 d!2247920))

(declare-fun d!2247922 () Bool)

(declare-fun res!2935879 () Bool)

(declare-fun e!4338515 () Bool)

(assert (=> d!2247922 (=> res!2935879 e!4338515)))

(assert (=> d!2247922 (= res!2935879 (is-Nil!70062 (exprs!7966 ct1!232)))))

(assert (=> d!2247922 (= (forall!17363 (exprs!7966 ct1!232) lambda!440512) e!4338515)))

(declare-fun b!7236692 () Bool)

(declare-fun e!4338516 () Bool)

(assert (=> b!7236692 (= e!4338515 e!4338516)))

(declare-fun res!2935880 () Bool)

(assert (=> b!7236692 (=> (not res!2935880) (not e!4338516))))

(declare-fun dynLambda!28590 (Int Regex!18526) Bool)

(assert (=> b!7236692 (= res!2935880 (dynLambda!28590 lambda!440512 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun b!7236693 () Bool)

(assert (=> b!7236693 (= e!4338516 (forall!17363 (t!384237 (exprs!7966 ct1!232)) lambda!440512))))

(assert (= (and d!2247922 (not res!2935879)) b!7236692))

(assert (= (and b!7236692 res!2935880) b!7236693))

(declare-fun b_lambda!277501 () Bool)

(assert (=> (not b_lambda!277501) (not b!7236692)))

(declare-fun m!7907902 () Bool)

(assert (=> b!7236692 m!7907902))

(declare-fun m!7907904 () Bool)

(assert (=> b!7236693 m!7907904))

(assert (=> b!7236564 d!2247922))

(declare-fun d!2247924 () Bool)

(declare-fun c!1343229 () Bool)

(assert (=> d!2247924 (= c!1343229 (isEmpty!40381 (t!384238 s1!1971)))))

(declare-fun e!4338517 () Bool)

(assert (=> d!2247924 (= (matchZipper!3436 lt!2576034 (t!384238 s1!1971)) e!4338517)))

(declare-fun b!7236694 () Bool)

(assert (=> b!7236694 (= e!4338517 (nullableZipper!2832 lt!2576034))))

(declare-fun b!7236695 () Bool)

(assert (=> b!7236695 (= e!4338517 (matchZipper!3436 (derivationStepZipper!3318 lt!2576034 (head!14821 (t!384238 s1!1971))) (tail!14167 (t!384238 s1!1971))))))

(assert (= (and d!2247924 c!1343229) b!7236694))

(assert (= (and d!2247924 (not c!1343229)) b!7236695))

(assert (=> d!2247924 m!7907876))

(declare-fun m!7907906 () Bool)

(assert (=> b!7236694 m!7907906))

(assert (=> b!7236695 m!7907880))

(assert (=> b!7236695 m!7907880))

(declare-fun m!7907908 () Bool)

(assert (=> b!7236695 m!7907908))

(assert (=> b!7236695 m!7907884))

(assert (=> b!7236695 m!7907908))

(assert (=> b!7236695 m!7907884))

(declare-fun m!7907910 () Bool)

(assert (=> b!7236695 m!7907910))

(assert (=> b!7236564 d!2247924))

(declare-fun d!2247926 () Bool)

(declare-fun c!1343230 () Bool)

(assert (=> d!2247926 (= c!1343230 (isEmpty!40381 (t!384238 s1!1971)))))

(declare-fun e!4338518 () Bool)

(assert (=> d!2247926 (= (matchZipper!3436 lt!2576049 (t!384238 s1!1971)) e!4338518)))

(declare-fun b!7236696 () Bool)

(assert (=> b!7236696 (= e!4338518 (nullableZipper!2832 lt!2576049))))

(declare-fun b!7236697 () Bool)

(assert (=> b!7236697 (= e!4338518 (matchZipper!3436 (derivationStepZipper!3318 lt!2576049 (head!14821 (t!384238 s1!1971))) (tail!14167 (t!384238 s1!1971))))))

(assert (= (and d!2247926 c!1343230) b!7236696))

(assert (= (and d!2247926 (not c!1343230)) b!7236697))

(assert (=> d!2247926 m!7907876))

(declare-fun m!7907912 () Bool)

(assert (=> b!7236696 m!7907912))

(assert (=> b!7236697 m!7907880))

(assert (=> b!7236697 m!7907880))

(declare-fun m!7907914 () Bool)

(assert (=> b!7236697 m!7907914))

(assert (=> b!7236697 m!7907884))

(assert (=> b!7236697 m!7907914))

(assert (=> b!7236697 m!7907884))

(declare-fun m!7907916 () Bool)

(assert (=> b!7236697 m!7907916))

(assert (=> b!7236564 d!2247926))

(declare-fun e!4338521 () Bool)

(declare-fun d!2247928 () Bool)

(assert (=> d!2247928 (= (matchZipper!3436 (set.union lt!2576049 lt!2576041) (t!384238 s1!1971)) e!4338521)))

(declare-fun res!2935883 () Bool)

(assert (=> d!2247928 (=> res!2935883 e!4338521)))

(assert (=> d!2247928 (= res!2935883 (matchZipper!3436 lt!2576049 (t!384238 s1!1971)))))

(declare-fun lt!2576158 () Unit!163590)

(declare-fun choose!55657 ((Set Context!14932) (Set Context!14932) List!70187) Unit!163590)

(assert (=> d!2247928 (= lt!2576158 (choose!55657 lt!2576049 lt!2576041 (t!384238 s1!1971)))))

(assert (=> d!2247928 (= (lemmaZipperConcatMatchesSameAsBothZippers!1673 lt!2576049 lt!2576041 (t!384238 s1!1971)) lt!2576158)))

(declare-fun b!7236700 () Bool)

(assert (=> b!7236700 (= e!4338521 (matchZipper!3436 lt!2576041 (t!384238 s1!1971)))))

(assert (= (and d!2247928 (not res!2935883)) b!7236700))

(declare-fun m!7907918 () Bool)

(assert (=> d!2247928 m!7907918))

(assert (=> d!2247928 m!7907648))

(declare-fun m!7907920 () Bool)

(assert (=> d!2247928 m!7907920))

(assert (=> b!7236700 m!7907636))

(assert (=> b!7236564 d!2247928))

(declare-fun d!2247930 () Bool)

(declare-fun c!1343231 () Bool)

(assert (=> d!2247930 (= c!1343231 (isEmpty!40381 s1!1971))))

(declare-fun e!4338522 () Bool)

(assert (=> d!2247930 (= (matchZipper!3436 lt!2576045 s1!1971) e!4338522)))

(declare-fun b!7236701 () Bool)

(assert (=> b!7236701 (= e!4338522 (nullableZipper!2832 lt!2576045))))

(declare-fun b!7236702 () Bool)

(assert (=> b!7236702 (= e!4338522 (matchZipper!3436 (derivationStepZipper!3318 lt!2576045 (head!14821 s1!1971)) (tail!14167 s1!1971)))))

(assert (= (and d!2247930 c!1343231) b!7236701))

(assert (= (and d!2247930 (not c!1343231)) b!7236702))

(declare-fun m!7907922 () Bool)

(assert (=> d!2247930 m!7907922))

(declare-fun m!7907924 () Bool)

(assert (=> b!7236701 m!7907924))

(declare-fun m!7907926 () Bool)

(assert (=> b!7236702 m!7907926))

(assert (=> b!7236702 m!7907926))

(declare-fun m!7907928 () Bool)

(assert (=> b!7236702 m!7907928))

(declare-fun m!7907930 () Bool)

(assert (=> b!7236702 m!7907930))

(assert (=> b!7236702 m!7907928))

(assert (=> b!7236702 m!7907930))

(declare-fun m!7907932 () Bool)

(assert (=> b!7236702 m!7907932))

(assert (=> start!702658 d!2247930))

(declare-fun bs!1903475 () Bool)

(declare-fun d!2247932 () Bool)

(assert (= bs!1903475 (and d!2247932 b!7236563)))

(declare-fun lambda!440549 () Int)

(assert (=> bs!1903475 (= lambda!440549 lambda!440512)))

(declare-fun bs!1903476 () Bool)

(assert (= bs!1903476 (and d!2247932 d!2247904)))

(assert (=> bs!1903476 (= lambda!440549 lambda!440546)))

(assert (=> d!2247932 (= (inv!89326 ct1!232) (forall!17363 (exprs!7966 ct1!232) lambda!440549))))

(declare-fun bs!1903477 () Bool)

(assert (= bs!1903477 d!2247932))

(declare-fun m!7907934 () Bool)

(assert (=> bs!1903477 m!7907934))

(assert (=> start!702658 d!2247932))

(declare-fun bs!1903478 () Bool)

(declare-fun d!2247934 () Bool)

(assert (= bs!1903478 (and d!2247934 b!7236563)))

(declare-fun lambda!440550 () Int)

(assert (=> bs!1903478 (= lambda!440550 lambda!440512)))

(declare-fun bs!1903479 () Bool)

(assert (= bs!1903479 (and d!2247934 d!2247904)))

(assert (=> bs!1903479 (= lambda!440550 lambda!440546)))

(declare-fun bs!1903480 () Bool)

(assert (= bs!1903480 (and d!2247934 d!2247932)))

(assert (=> bs!1903480 (= lambda!440550 lambda!440549)))

(assert (=> d!2247934 (= (inv!89326 ct2!328) (forall!17363 (exprs!7966 ct2!328) lambda!440550))))

(declare-fun bs!1903481 () Bool)

(assert (= bs!1903481 d!2247934))

(declare-fun m!7907936 () Bool)

(assert (=> bs!1903481 m!7907936))

(assert (=> start!702658 d!2247934))

(declare-fun b!7236703 () Bool)

(declare-fun e!4338525 () Bool)

(assert (=> b!7236703 (= e!4338525 (nullable!7839 (h!76510 (exprs!7966 lt!2576028))))))

(declare-fun d!2247936 () Bool)

(declare-fun c!1343232 () Bool)

(assert (=> d!2247936 (= c!1343232 e!4338525)))

(declare-fun res!2935884 () Bool)

(assert (=> d!2247936 (=> (not res!2935884) (not e!4338525))))

(assert (=> d!2247936 (= res!2935884 (is-Cons!70062 (exprs!7966 lt!2576028)))))

(declare-fun e!4338523 () (Set Context!14932))

(assert (=> d!2247936 (= (derivationStepZipperUp!2400 lt!2576028 (h!76511 s1!1971)) e!4338523)))

(declare-fun b!7236704 () Bool)

(declare-fun e!4338524 () (Set Context!14932))

(assert (=> b!7236704 (= e!4338523 e!4338524)))

(declare-fun c!1343233 () Bool)

(assert (=> b!7236704 (= c!1343233 (is-Cons!70062 (exprs!7966 lt!2576028)))))

(declare-fun b!7236705 () Bool)

(declare-fun call!658884 () (Set Context!14932))

(assert (=> b!7236705 (= e!4338524 call!658884)))

(declare-fun bm!658879 () Bool)

(assert (=> bm!658879 (= call!658884 (derivationStepZipperDown!2570 (h!76510 (exprs!7966 lt!2576028)) (Context!14933 (t!384237 (exprs!7966 lt!2576028))) (h!76511 s1!1971)))))

(declare-fun b!7236706 () Bool)

(assert (=> b!7236706 (= e!4338523 (set.union call!658884 (derivationStepZipperUp!2400 (Context!14933 (t!384237 (exprs!7966 lt!2576028))) (h!76511 s1!1971))))))

(declare-fun b!7236707 () Bool)

(assert (=> b!7236707 (= e!4338524 (as set.empty (Set Context!14932)))))

(assert (= (and d!2247936 res!2935884) b!7236703))

(assert (= (and d!2247936 c!1343232) b!7236706))

(assert (= (and d!2247936 (not c!1343232)) b!7236704))

(assert (= (and b!7236704 c!1343233) b!7236705))

(assert (= (and b!7236704 (not c!1343233)) b!7236707))

(assert (= (or b!7236706 b!7236705) bm!658879))

(declare-fun m!7907938 () Bool)

(assert (=> b!7236703 m!7907938))

(declare-fun m!7907940 () Bool)

(assert (=> bm!658879 m!7907940))

(declare-fun m!7907942 () Bool)

(assert (=> b!7236706 m!7907942))

(assert (=> b!7236560 d!2247936))

(declare-fun d!2247938 () Bool)

(assert (=> d!2247938 (= (tail!14165 (exprs!7966 ct1!232)) (t!384237 (exprs!7966 ct1!232)))))

(assert (=> b!7236571 d!2247938))

(declare-fun d!2247940 () Bool)

(assert (=> d!2247940 (= (isEmpty!40379 lt!2576036) (is-Nil!70062 lt!2576036))))

(assert (=> b!7236571 d!2247940))

(declare-fun b!7236708 () Bool)

(declare-fun e!4338528 () Bool)

(assert (=> b!7236708 (= e!4338528 (nullable!7839 (h!76510 (exprs!7966 lt!2576042))))))

(declare-fun d!2247942 () Bool)

(declare-fun c!1343234 () Bool)

(assert (=> d!2247942 (= c!1343234 e!4338528)))

(declare-fun res!2935885 () Bool)

(assert (=> d!2247942 (=> (not res!2935885) (not e!4338528))))

(assert (=> d!2247942 (= res!2935885 (is-Cons!70062 (exprs!7966 lt!2576042)))))

(declare-fun e!4338526 () (Set Context!14932))

(assert (=> d!2247942 (= (derivationStepZipperUp!2400 lt!2576042 (h!76511 s1!1971)) e!4338526)))

(declare-fun b!7236709 () Bool)

(declare-fun e!4338527 () (Set Context!14932))

(assert (=> b!7236709 (= e!4338526 e!4338527)))

(declare-fun c!1343235 () Bool)

(assert (=> b!7236709 (= c!1343235 (is-Cons!70062 (exprs!7966 lt!2576042)))))

(declare-fun b!7236710 () Bool)

(declare-fun call!658885 () (Set Context!14932))

(assert (=> b!7236710 (= e!4338527 call!658885)))

(declare-fun bm!658880 () Bool)

(assert (=> bm!658880 (= call!658885 (derivationStepZipperDown!2570 (h!76510 (exprs!7966 lt!2576042)) (Context!14933 (t!384237 (exprs!7966 lt!2576042))) (h!76511 s1!1971)))))

(declare-fun b!7236711 () Bool)

(assert (=> b!7236711 (= e!4338526 (set.union call!658885 (derivationStepZipperUp!2400 (Context!14933 (t!384237 (exprs!7966 lt!2576042))) (h!76511 s1!1971))))))

(declare-fun b!7236712 () Bool)

(assert (=> b!7236712 (= e!4338527 (as set.empty (Set Context!14932)))))

(assert (= (and d!2247942 res!2935885) b!7236708))

(assert (= (and d!2247942 c!1343234) b!7236711))

(assert (= (and d!2247942 (not c!1343234)) b!7236709))

(assert (= (and b!7236709 c!1343235) b!7236710))

(assert (= (and b!7236709 (not c!1343235)) b!7236712))

(assert (= (or b!7236711 b!7236710) bm!658880))

(declare-fun m!7907944 () Bool)

(assert (=> b!7236708 m!7907944))

(declare-fun m!7907946 () Bool)

(assert (=> bm!658880 m!7907946))

(declare-fun m!7907948 () Bool)

(assert (=> b!7236711 m!7907948))

(assert (=> b!7236571 d!2247942))

(assert (=> b!7236571 d!2247920))

(declare-fun b!7236735 () Bool)

(declare-fun e!4338545 () (Set Context!14932))

(declare-fun call!658898 () (Set Context!14932))

(assert (=> b!7236735 (= e!4338545 call!658898)))

(declare-fun b!7236736 () Bool)

(declare-fun e!4338541 () (Set Context!14932))

(assert (=> b!7236736 (= e!4338541 (set.insert lt!2576028 (as set.empty (Set Context!14932))))))

(declare-fun bm!658894 () Bool)

(declare-fun call!658899 () (Set Context!14932))

(assert (=> bm!658894 (= call!658898 call!658899)))

(declare-fun b!7236737 () Bool)

(declare-fun e!4338546 () (Set Context!14932))

(assert (=> b!7236737 (= e!4338541 e!4338546)))

(declare-fun c!1343247 () Bool)

(assert (=> b!7236737 (= c!1343247 (is-Union!18526 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun b!7236738 () Bool)

(declare-fun c!1343246 () Bool)

(declare-fun e!4338544 () Bool)

(assert (=> b!7236738 (= c!1343246 e!4338544)))

(declare-fun res!2935888 () Bool)

(assert (=> b!7236738 (=> (not res!2935888) (not e!4338544))))

(assert (=> b!7236738 (= res!2935888 (is-Concat!27371 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun e!4338543 () (Set Context!14932))

(assert (=> b!7236738 (= e!4338546 e!4338543)))

(declare-fun b!7236739 () Bool)

(declare-fun c!1343248 () Bool)

(assert (=> b!7236739 (= c!1343248 (is-Star!18526 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun e!4338542 () (Set Context!14932))

(assert (=> b!7236739 (= e!4338542 e!4338545)))

(declare-fun b!7236740 () Bool)

(assert (=> b!7236740 (= e!4338545 (as set.empty (Set Context!14932)))))

(declare-fun b!7236741 () Bool)

(declare-fun call!658902 () (Set Context!14932))

(assert (=> b!7236741 (= e!4338543 (set.union call!658902 call!658899))))

(declare-fun c!1343250 () Bool)

(declare-fun call!658903 () List!70186)

(declare-fun call!658900 () (Set Context!14932))

(declare-fun bm!658895 () Bool)

(assert (=> bm!658895 (= call!658900 (derivationStepZipperDown!2570 (ite c!1343247 (regOne!37565 (h!76510 (exprs!7966 ct1!232))) (ite c!1343246 (regTwo!37564 (h!76510 (exprs!7966 ct1!232))) (ite c!1343250 (regOne!37564 (h!76510 (exprs!7966 ct1!232))) (reg!18855 (h!76510 (exprs!7966 ct1!232)))))) (ite (or c!1343247 c!1343246) lt!2576028 (Context!14933 call!658903)) (h!76511 s1!1971)))))

(declare-fun bm!658896 () Bool)

(declare-fun call!658901 () List!70186)

(declare-fun $colon$colon!2879 (List!70186 Regex!18526) List!70186)

(assert (=> bm!658896 (= call!658901 ($colon$colon!2879 (exprs!7966 lt!2576028) (ite (or c!1343246 c!1343250) (regTwo!37564 (h!76510 (exprs!7966 ct1!232))) (h!76510 (exprs!7966 ct1!232)))))))

(declare-fun bm!658893 () Bool)

(assert (=> bm!658893 (= call!658899 call!658900)))

(declare-fun d!2247944 () Bool)

(declare-fun c!1343249 () Bool)

(assert (=> d!2247944 (= c!1343249 (and (is-ElementMatch!18526 (h!76510 (exprs!7966 ct1!232))) (= (c!1343200 (h!76510 (exprs!7966 ct1!232))) (h!76511 s1!1971))))))

(assert (=> d!2247944 (= (derivationStepZipperDown!2570 (h!76510 (exprs!7966 ct1!232)) lt!2576028 (h!76511 s1!1971)) e!4338541)))

(declare-fun bm!658897 () Bool)

(assert (=> bm!658897 (= call!658903 call!658901)))

(declare-fun b!7236742 () Bool)

(assert (=> b!7236742 (= e!4338543 e!4338542)))

(assert (=> b!7236742 (= c!1343250 (is-Concat!27371 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun b!7236743 () Bool)

(assert (=> b!7236743 (= e!4338544 (nullable!7839 (regOne!37564 (h!76510 (exprs!7966 ct1!232)))))))

(declare-fun b!7236744 () Bool)

(assert (=> b!7236744 (= e!4338542 call!658898)))

(declare-fun bm!658898 () Bool)

(assert (=> bm!658898 (= call!658902 (derivationStepZipperDown!2570 (ite c!1343247 (regTwo!37565 (h!76510 (exprs!7966 ct1!232))) (regOne!37564 (h!76510 (exprs!7966 ct1!232)))) (ite c!1343247 lt!2576028 (Context!14933 call!658901)) (h!76511 s1!1971)))))

(declare-fun b!7236745 () Bool)

(assert (=> b!7236745 (= e!4338546 (set.union call!658900 call!658902))))

(assert (= (and d!2247944 c!1343249) b!7236736))

(assert (= (and d!2247944 (not c!1343249)) b!7236737))

(assert (= (and b!7236737 c!1343247) b!7236745))

(assert (= (and b!7236737 (not c!1343247)) b!7236738))

(assert (= (and b!7236738 res!2935888) b!7236743))

(assert (= (and b!7236738 c!1343246) b!7236741))

(assert (= (and b!7236738 (not c!1343246)) b!7236742))

(assert (= (and b!7236742 c!1343250) b!7236744))

(assert (= (and b!7236742 (not c!1343250)) b!7236739))

(assert (= (and b!7236739 c!1343248) b!7236735))

(assert (= (and b!7236739 (not c!1343248)) b!7236740))

(assert (= (or b!7236744 b!7236735) bm!658897))

(assert (= (or b!7236744 b!7236735) bm!658894))

(assert (= (or b!7236741 bm!658897) bm!658896))

(assert (= (or b!7236741 bm!658894) bm!658893))

(assert (= (or b!7236745 b!7236741) bm!658898))

(assert (= (or b!7236745 bm!658893) bm!658895))

(declare-fun m!7907950 () Bool)

(assert (=> bm!658896 m!7907950))

(declare-fun m!7907952 () Bool)

(assert (=> bm!658895 m!7907952))

(declare-fun m!7907954 () Bool)

(assert (=> b!7236743 m!7907954))

(declare-fun m!7907956 () Bool)

(assert (=> bm!658898 m!7907956))

(declare-fun m!7907958 () Bool)

(assert (=> b!7236736 m!7907958))

(assert (=> b!7236571 d!2247944))

(declare-fun d!2247946 () Bool)

(declare-fun c!1343251 () Bool)

(assert (=> d!2247946 (= c!1343251 (isEmpty!40381 (t!384238 s1!1971)))))

(declare-fun e!4338547 () Bool)

(assert (=> d!2247946 (= (matchZipper!3436 lt!2576048 (t!384238 s1!1971)) e!4338547)))

(declare-fun b!7236746 () Bool)

(assert (=> b!7236746 (= e!4338547 (nullableZipper!2832 lt!2576048))))

(declare-fun b!7236747 () Bool)

(assert (=> b!7236747 (= e!4338547 (matchZipper!3436 (derivationStepZipper!3318 lt!2576048 (head!14821 (t!384238 s1!1971))) (tail!14167 (t!384238 s1!1971))))))

(assert (= (and d!2247946 c!1343251) b!7236746))

(assert (= (and d!2247946 (not c!1343251)) b!7236747))

(assert (=> d!2247946 m!7907876))

(declare-fun m!7907960 () Bool)

(assert (=> b!7236746 m!7907960))

(assert (=> b!7236747 m!7907880))

(assert (=> b!7236747 m!7907880))

(declare-fun m!7907962 () Bool)

(assert (=> b!7236747 m!7907962))

(assert (=> b!7236747 m!7907884))

(assert (=> b!7236747 m!7907962))

(assert (=> b!7236747 m!7907884))

(declare-fun m!7907964 () Bool)

(assert (=> b!7236747 m!7907964))

(assert (=> b!7236561 d!2247946))

(declare-fun bs!1903482 () Bool)

(declare-fun d!2247948 () Bool)

(assert (= bs!1903482 (and d!2247948 b!7236572)))

(declare-fun lambda!440553 () Int)

(assert (=> bs!1903482 (= lambda!440553 lambda!440514)))

(assert (=> d!2247948 true))

(assert (=> d!2247948 (= (derivationStepZipper!3318 lt!2576045 (h!76511 s1!1971)) (flatMap!2730 lt!2576045 lambda!440553))))

(declare-fun bs!1903483 () Bool)

(assert (= bs!1903483 d!2247948))

(declare-fun m!7907966 () Bool)

(assert (=> bs!1903483 m!7907966))

(assert (=> b!7236561 d!2247948))

(declare-fun d!2247950 () Bool)

(declare-fun choose!55658 ((Set Context!14932) Int) (Set Context!14932))

(assert (=> d!2247950 (= (flatMap!2730 lt!2576045 lambda!440514) (choose!55658 lt!2576045 lambda!440514))))

(declare-fun bs!1903484 () Bool)

(assert (= bs!1903484 d!2247950))

(declare-fun m!7907968 () Bool)

(assert (=> bs!1903484 m!7907968))

(assert (=> b!7236572 d!2247950))

(declare-fun b!7236750 () Bool)

(declare-fun e!4338552 () (Set Context!14932))

(declare-fun call!658904 () (Set Context!14932))

(assert (=> b!7236750 (= e!4338552 call!658904)))

(declare-fun b!7236751 () Bool)

(declare-fun e!4338548 () (Set Context!14932))

(assert (=> b!7236751 (= e!4338548 (set.insert lt!2576032 (as set.empty (Set Context!14932))))))

(declare-fun bm!658900 () Bool)

(declare-fun call!658905 () (Set Context!14932))

(assert (=> bm!658900 (= call!658904 call!658905)))

(declare-fun b!7236752 () Bool)

(declare-fun e!4338553 () (Set Context!14932))

(assert (=> b!7236752 (= e!4338548 e!4338553)))

(declare-fun c!1343255 () Bool)

(assert (=> b!7236752 (= c!1343255 (is-Union!18526 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun b!7236753 () Bool)

(declare-fun c!1343254 () Bool)

(declare-fun e!4338551 () Bool)

(assert (=> b!7236753 (= c!1343254 e!4338551)))

(declare-fun res!2935889 () Bool)

(assert (=> b!7236753 (=> (not res!2935889) (not e!4338551))))

(assert (=> b!7236753 (= res!2935889 (is-Concat!27371 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun e!4338550 () (Set Context!14932))

(assert (=> b!7236753 (= e!4338553 e!4338550)))

(declare-fun b!7236754 () Bool)

(declare-fun c!1343256 () Bool)

(assert (=> b!7236754 (= c!1343256 (is-Star!18526 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun e!4338549 () (Set Context!14932))

(assert (=> b!7236754 (= e!4338549 e!4338552)))

(declare-fun b!7236755 () Bool)

(assert (=> b!7236755 (= e!4338552 (as set.empty (Set Context!14932)))))

(declare-fun b!7236756 () Bool)

(declare-fun call!658908 () (Set Context!14932))

(assert (=> b!7236756 (= e!4338550 (set.union call!658908 call!658905))))

(declare-fun bm!658901 () Bool)

(declare-fun c!1343258 () Bool)

(declare-fun call!658909 () List!70186)

(declare-fun call!658906 () (Set Context!14932))

(assert (=> bm!658901 (= call!658906 (derivationStepZipperDown!2570 (ite c!1343255 (regOne!37565 (h!76510 (exprs!7966 ct1!232))) (ite c!1343254 (regTwo!37564 (h!76510 (exprs!7966 ct1!232))) (ite c!1343258 (regOne!37564 (h!76510 (exprs!7966 ct1!232))) (reg!18855 (h!76510 (exprs!7966 ct1!232)))))) (ite (or c!1343255 c!1343254) lt!2576032 (Context!14933 call!658909)) (h!76511 s1!1971)))))

(declare-fun bm!658902 () Bool)

(declare-fun call!658907 () List!70186)

(assert (=> bm!658902 (= call!658907 ($colon$colon!2879 (exprs!7966 lt!2576032) (ite (or c!1343254 c!1343258) (regTwo!37564 (h!76510 (exprs!7966 ct1!232))) (h!76510 (exprs!7966 ct1!232)))))))

(declare-fun bm!658899 () Bool)

(assert (=> bm!658899 (= call!658905 call!658906)))

(declare-fun d!2247952 () Bool)

(declare-fun c!1343257 () Bool)

(assert (=> d!2247952 (= c!1343257 (and (is-ElementMatch!18526 (h!76510 (exprs!7966 ct1!232))) (= (c!1343200 (h!76510 (exprs!7966 ct1!232))) (h!76511 s1!1971))))))

(assert (=> d!2247952 (= (derivationStepZipperDown!2570 (h!76510 (exprs!7966 ct1!232)) lt!2576032 (h!76511 s1!1971)) e!4338548)))

(declare-fun bm!658903 () Bool)

(assert (=> bm!658903 (= call!658909 call!658907)))

(declare-fun b!7236757 () Bool)

(assert (=> b!7236757 (= e!4338550 e!4338549)))

(assert (=> b!7236757 (= c!1343258 (is-Concat!27371 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun b!7236758 () Bool)

(assert (=> b!7236758 (= e!4338551 (nullable!7839 (regOne!37564 (h!76510 (exprs!7966 ct1!232)))))))

(declare-fun b!7236759 () Bool)

(assert (=> b!7236759 (= e!4338549 call!658904)))

(declare-fun bm!658904 () Bool)

(assert (=> bm!658904 (= call!658908 (derivationStepZipperDown!2570 (ite c!1343255 (regTwo!37565 (h!76510 (exprs!7966 ct1!232))) (regOne!37564 (h!76510 (exprs!7966 ct1!232)))) (ite c!1343255 lt!2576032 (Context!14933 call!658907)) (h!76511 s1!1971)))))

(declare-fun b!7236760 () Bool)

(assert (=> b!7236760 (= e!4338553 (set.union call!658906 call!658908))))

(assert (= (and d!2247952 c!1343257) b!7236751))

(assert (= (and d!2247952 (not c!1343257)) b!7236752))

(assert (= (and b!7236752 c!1343255) b!7236760))

(assert (= (and b!7236752 (not c!1343255)) b!7236753))

(assert (= (and b!7236753 res!2935889) b!7236758))

(assert (= (and b!7236753 c!1343254) b!7236756))

(assert (= (and b!7236753 (not c!1343254)) b!7236757))

(assert (= (and b!7236757 c!1343258) b!7236759))

(assert (= (and b!7236757 (not c!1343258)) b!7236754))

(assert (= (and b!7236754 c!1343256) b!7236750))

(assert (= (and b!7236754 (not c!1343256)) b!7236755))

(assert (= (or b!7236759 b!7236750) bm!658903))

(assert (= (or b!7236759 b!7236750) bm!658900))

(assert (= (or b!7236756 bm!658903) bm!658902))

(assert (= (or b!7236756 bm!658900) bm!658899))

(assert (= (or b!7236760 b!7236756) bm!658904))

(assert (= (or b!7236760 bm!658899) bm!658901))

(declare-fun m!7907970 () Bool)

(assert (=> bm!658902 m!7907970))

(declare-fun m!7907972 () Bool)

(assert (=> bm!658901 m!7907972))

(assert (=> b!7236758 m!7907954))

(declare-fun m!7907974 () Bool)

(assert (=> bm!658904 m!7907974))

(declare-fun m!7907976 () Bool)

(assert (=> b!7236751 m!7907976))

(assert (=> b!7236572 d!2247952))

(declare-fun d!2247954 () Bool)

(assert (=> d!2247954 (= (tail!14165 lt!2576036) (t!384237 lt!2576036))))

(assert (=> b!7236572 d!2247954))

(assert (=> b!7236572 d!2247942))

(declare-fun d!2247956 () Bool)

(declare-fun dynLambda!28591 (Int Context!14932) (Set Context!14932))

(assert (=> d!2247956 (= (flatMap!2730 lt!2576030 lambda!440514) (dynLambda!28591 lambda!440514 lt!2576042))))

(declare-fun lt!2576161 () Unit!163590)

(declare-fun choose!55659 ((Set Context!14932) Context!14932 Int) Unit!163590)

(assert (=> d!2247956 (= lt!2576161 (choose!55659 lt!2576030 lt!2576042 lambda!440514))))

(assert (=> d!2247956 (= lt!2576030 (set.insert lt!2576042 (as set.empty (Set Context!14932))))))

(assert (=> d!2247956 (= (lemmaFlatMapOnSingletonSet!2157 lt!2576030 lt!2576042 lambda!440514) lt!2576161)))

(declare-fun b_lambda!277503 () Bool)

(assert (=> (not b_lambda!277503) (not d!2247956)))

(declare-fun bs!1903485 () Bool)

(assert (= bs!1903485 d!2247956))

(assert (=> bs!1903485 m!7907714))

(declare-fun m!7907978 () Bool)

(assert (=> bs!1903485 m!7907978))

(declare-fun m!7907980 () Bool)

(assert (=> bs!1903485 m!7907980))

(assert (=> bs!1903485 m!7907638))

(assert (=> b!7236572 d!2247956))

(declare-fun d!2247958 () Bool)

(declare-fun nullableFct!3072 (Regex!18526) Bool)

(assert (=> d!2247958 (= (nullable!7839 (h!76510 (exprs!7966 ct1!232))) (nullableFct!3072 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun bs!1903486 () Bool)

(assert (= bs!1903486 d!2247958))

(declare-fun m!7907982 () Bool)

(assert (=> bs!1903486 m!7907982))

(assert (=> b!7236572 d!2247958))

(assert (=> b!7236572 d!2247920))

(assert (=> b!7236572 d!2247906))

(declare-fun d!2247960 () Bool)

(assert (=> d!2247960 (= (flatMap!2730 lt!2576045 lambda!440514) (dynLambda!28591 lambda!440514 ct1!232))))

(declare-fun lt!2576162 () Unit!163590)

(assert (=> d!2247960 (= lt!2576162 (choose!55659 lt!2576045 ct1!232 lambda!440514))))

(assert (=> d!2247960 (= lt!2576045 (set.insert ct1!232 (as set.empty (Set Context!14932))))))

(assert (=> d!2247960 (= (lemmaFlatMapOnSingletonSet!2157 lt!2576045 ct1!232 lambda!440514) lt!2576162)))

(declare-fun b_lambda!277505 () Bool)

(assert (=> (not b_lambda!277505) (not d!2247960)))

(declare-fun bs!1903487 () Bool)

(assert (= bs!1903487 d!2247960))

(assert (=> bs!1903487 m!7907708))

(declare-fun m!7907984 () Bool)

(assert (=> bs!1903487 m!7907984))

(declare-fun m!7907986 () Bool)

(assert (=> bs!1903487 m!7907986))

(assert (=> bs!1903487 m!7907694))

(assert (=> b!7236572 d!2247960))

(declare-fun d!2247962 () Bool)

(assert (=> d!2247962 (= (flatMap!2730 lt!2576030 lambda!440514) (choose!55658 lt!2576030 lambda!440514))))

(declare-fun bs!1903488 () Bool)

(assert (= bs!1903488 d!2247962))

(declare-fun m!7907988 () Bool)

(assert (=> bs!1903488 m!7907988))

(assert (=> b!7236572 d!2247962))

(declare-fun bs!1903489 () Bool)

(declare-fun d!2247964 () Bool)

(assert (= bs!1903489 (and d!2247964 b!7236572)))

(declare-fun lambda!440554 () Int)

(assert (=> bs!1903489 (= lambda!440554 lambda!440514)))

(declare-fun bs!1903490 () Bool)

(assert (= bs!1903490 (and d!2247964 d!2247948)))

(assert (=> bs!1903490 (= lambda!440554 lambda!440553)))

(assert (=> d!2247964 true))

(assert (=> d!2247964 (= (derivationStepZipper!3318 lt!2576030 (h!76511 s1!1971)) (flatMap!2730 lt!2576030 lambda!440554))))

(declare-fun bs!1903491 () Bool)

(assert (= bs!1903491 d!2247964))

(declare-fun m!7907990 () Bool)

(assert (=> bs!1903491 m!7907990))

(assert (=> b!7236562 d!2247964))

(declare-fun d!2247966 () Bool)

(declare-fun lt!2576165 () Bool)

(assert (=> d!2247966 (= lt!2576165 (exists!4196 (toList!11383 lt!2576048) lambda!440513))))

(declare-fun choose!55660 ((Set Context!14932) Int) Bool)

(assert (=> d!2247966 (= lt!2576165 (choose!55660 lt!2576048 lambda!440513))))

(assert (=> d!2247966 (= (exists!4195 lt!2576048 lambda!440513) lt!2576165)))

(declare-fun bs!1903492 () Bool)

(assert (= bs!1903492 d!2247966))

(assert (=> bs!1903492 m!7907678))

(assert (=> bs!1903492 m!7907678))

(declare-fun m!7907992 () Bool)

(assert (=> bs!1903492 m!7907992))

(declare-fun m!7907994 () Bool)

(assert (=> bs!1903492 m!7907994))

(assert (=> b!7236568 d!2247966))

(declare-fun bs!1903493 () Bool)

(declare-fun d!2247968 () Bool)

(assert (= bs!1903493 (and d!2247968 b!7236568)))

(declare-fun lambda!440557 () Int)

(assert (=> bs!1903493 (not (= lambda!440557 lambda!440513))))

(assert (=> d!2247968 true))

(declare-fun order!28863 () Int)

(declare-fun dynLambda!28592 (Int Int) Int)

(assert (=> d!2247968 (< (dynLambda!28592 order!28863 lambda!440513) (dynLambda!28592 order!28863 lambda!440557))))

(declare-fun forall!17365 (List!70188 Int) Bool)

(assert (=> d!2247968 (= (exists!4196 lt!2576038 lambda!440513) (not (forall!17365 lt!2576038 lambda!440557)))))

(declare-fun bs!1903494 () Bool)

(assert (= bs!1903494 d!2247968))

(declare-fun m!7907996 () Bool)

(assert (=> bs!1903494 m!7907996))

(assert (=> b!7236568 d!2247968))

(declare-fun bs!1903495 () Bool)

(declare-fun d!2247970 () Bool)

(assert (= bs!1903495 (and d!2247970 b!7236568)))

(declare-fun lambda!440560 () Int)

(assert (=> bs!1903495 (= lambda!440560 lambda!440513)))

(declare-fun bs!1903496 () Bool)

(assert (= bs!1903496 (and d!2247970 d!2247968)))

(assert (=> bs!1903496 (not (= lambda!440560 lambda!440557))))

(assert (=> d!2247970 true))

(assert (=> d!2247970 (exists!4196 lt!2576038 lambda!440560)))

(declare-fun lt!2576168 () Unit!163590)

(declare-fun choose!55661 (List!70188 List!70187) Unit!163590)

(assert (=> d!2247970 (= lt!2576168 (choose!55661 lt!2576038 (t!384238 s1!1971)))))

(declare-fun content!14446 (List!70188) (Set Context!14932))

(assert (=> d!2247970 (matchZipper!3436 (content!14446 lt!2576038) (t!384238 s1!1971))))

(assert (=> d!2247970 (= (lemmaZipperMatchesExistsMatchingContext!669 lt!2576038 (t!384238 s1!1971)) lt!2576168)))

(declare-fun bs!1903497 () Bool)

(assert (= bs!1903497 d!2247970))

(declare-fun m!7907998 () Bool)

(assert (=> bs!1903497 m!7907998))

(declare-fun m!7908000 () Bool)

(assert (=> bs!1903497 m!7908000))

(declare-fun m!7908002 () Bool)

(assert (=> bs!1903497 m!7908002))

(assert (=> bs!1903497 m!7908002))

(declare-fun m!7908004 () Bool)

(assert (=> bs!1903497 m!7908004))

(assert (=> b!7236568 d!2247970))

(declare-fun d!2247972 () Bool)

(declare-fun e!4338556 () Bool)

(assert (=> d!2247972 e!4338556))

(declare-fun res!2935892 () Bool)

(assert (=> d!2247972 (=> (not res!2935892) (not e!4338556))))

(declare-fun lt!2576171 () List!70188)

(declare-fun noDuplicate!2942 (List!70188) Bool)

(assert (=> d!2247972 (= res!2935892 (noDuplicate!2942 lt!2576171))))

(declare-fun choose!55662 ((Set Context!14932)) List!70188)

(assert (=> d!2247972 (= lt!2576171 (choose!55662 lt!2576048))))

(assert (=> d!2247972 (= (toList!11383 lt!2576048) lt!2576171)))

(declare-fun b!7236765 () Bool)

(assert (=> b!7236765 (= e!4338556 (= (content!14446 lt!2576171) lt!2576048))))

(assert (= (and d!2247972 res!2935892) b!7236765))

(declare-fun m!7908006 () Bool)

(assert (=> d!2247972 m!7908006))

(declare-fun m!7908008 () Bool)

(assert (=> d!2247972 m!7908008))

(declare-fun m!7908010 () Bool)

(assert (=> b!7236765 m!7908010))

(assert (=> b!7236568 d!2247972))

(declare-fun b!7236766 () Bool)

(declare-fun e!4338559 () Bool)

(assert (=> b!7236766 (= e!4338559 (nullable!7839 (h!76510 (exprs!7966 lt!2576032))))))

(declare-fun d!2247974 () Bool)

(declare-fun c!1343261 () Bool)

(assert (=> d!2247974 (= c!1343261 e!4338559)))

(declare-fun res!2935893 () Bool)

(assert (=> d!2247974 (=> (not res!2935893) (not e!4338559))))

(assert (=> d!2247974 (= res!2935893 (is-Cons!70062 (exprs!7966 lt!2576032)))))

(declare-fun e!4338557 () (Set Context!14932))

(assert (=> d!2247974 (= (derivationStepZipperUp!2400 lt!2576032 (h!76511 s1!1971)) e!4338557)))

(declare-fun b!7236767 () Bool)

(declare-fun e!4338558 () (Set Context!14932))

(assert (=> b!7236767 (= e!4338557 e!4338558)))

(declare-fun c!1343262 () Bool)

(assert (=> b!7236767 (= c!1343262 (is-Cons!70062 (exprs!7966 lt!2576032)))))

(declare-fun b!7236768 () Bool)

(declare-fun call!658910 () (Set Context!14932))

(assert (=> b!7236768 (= e!4338558 call!658910)))

(declare-fun bm!658905 () Bool)

(assert (=> bm!658905 (= call!658910 (derivationStepZipperDown!2570 (h!76510 (exprs!7966 lt!2576032)) (Context!14933 (t!384237 (exprs!7966 lt!2576032))) (h!76511 s1!1971)))))

(declare-fun b!7236769 () Bool)

(assert (=> b!7236769 (= e!4338557 (set.union call!658910 (derivationStepZipperUp!2400 (Context!14933 (t!384237 (exprs!7966 lt!2576032))) (h!76511 s1!1971))))))

(declare-fun b!7236770 () Bool)

(assert (=> b!7236770 (= e!4338558 (as set.empty (Set Context!14932)))))

(assert (= (and d!2247974 res!2935893) b!7236766))

(assert (= (and d!2247974 c!1343261) b!7236769))

(assert (= (and d!2247974 (not c!1343261)) b!7236767))

(assert (= (and b!7236767 c!1343262) b!7236768))

(assert (= (and b!7236767 (not c!1343262)) b!7236770))

(assert (= (or b!7236769 b!7236768) bm!658905))

(declare-fun m!7908012 () Bool)

(assert (=> b!7236766 m!7908012))

(declare-fun m!7908014 () Bool)

(assert (=> bm!658905 m!7908014))

(declare-fun m!7908016 () Bool)

(assert (=> b!7236769 m!7908016))

(assert (=> b!7236558 d!2247974))

(assert (=> b!7236558 d!2247920))

(declare-fun d!2247976 () Bool)

(declare-fun res!2935894 () Bool)

(declare-fun e!4338560 () Bool)

(assert (=> d!2247976 (=> res!2935894 e!4338560)))

(assert (=> d!2247976 (= res!2935894 (is-Nil!70062 (exprs!7966 ct2!328)))))

(assert (=> d!2247976 (= (forall!17363 (exprs!7966 ct2!328) lambda!440512) e!4338560)))

(declare-fun b!7236771 () Bool)

(declare-fun e!4338561 () Bool)

(assert (=> b!7236771 (= e!4338560 e!4338561)))

(declare-fun res!2935895 () Bool)

(assert (=> b!7236771 (=> (not res!2935895) (not e!4338561))))

(assert (=> b!7236771 (= res!2935895 (dynLambda!28590 lambda!440512 (h!76510 (exprs!7966 ct2!328))))))

(declare-fun b!7236772 () Bool)

(assert (=> b!7236772 (= e!4338561 (forall!17363 (t!384237 (exprs!7966 ct2!328)) lambda!440512))))

(assert (= (and d!2247976 (not res!2935894)) b!7236771))

(assert (= (and b!7236771 res!2935895) b!7236772))

(declare-fun b_lambda!277507 () Bool)

(assert (=> (not b_lambda!277507) (not b!7236771)))

(declare-fun m!7908018 () Bool)

(assert (=> b!7236771 m!7908018))

(declare-fun m!7908020 () Bool)

(assert (=> b!7236772 m!7908020))

(assert (=> b!7236569 d!2247976))

(declare-fun d!2247978 () Bool)

(declare-fun c!1343263 () Bool)

(assert (=> d!2247978 (= c!1343263 (isEmpty!40381 s2!1849))))

(declare-fun e!4338562 () Bool)

(assert (=> d!2247978 (= (matchZipper!3436 (set.insert ct2!328 (as set.empty (Set Context!14932))) s2!1849) e!4338562)))

(declare-fun b!7236773 () Bool)

(assert (=> b!7236773 (= e!4338562 (nullableZipper!2832 (set.insert ct2!328 (as set.empty (Set Context!14932)))))))

(declare-fun b!7236774 () Bool)

(assert (=> b!7236774 (= e!4338562 (matchZipper!3436 (derivationStepZipper!3318 (set.insert ct2!328 (as set.empty (Set Context!14932))) (head!14821 s2!1849)) (tail!14167 s2!1849)))))

(assert (= (and d!2247978 c!1343263) b!7236773))

(assert (= (and d!2247978 (not c!1343263)) b!7236774))

(declare-fun m!7908022 () Bool)

(assert (=> d!2247978 m!7908022))

(assert (=> b!7236773 m!7907686))

(declare-fun m!7908024 () Bool)

(assert (=> b!7236773 m!7908024))

(declare-fun m!7908026 () Bool)

(assert (=> b!7236774 m!7908026))

(assert (=> b!7236774 m!7907686))

(assert (=> b!7236774 m!7908026))

(declare-fun m!7908028 () Bool)

(assert (=> b!7236774 m!7908028))

(declare-fun m!7908030 () Bool)

(assert (=> b!7236774 m!7908030))

(assert (=> b!7236774 m!7908028))

(assert (=> b!7236774 m!7908030))

(declare-fun m!7908032 () Bool)

(assert (=> b!7236774 m!7908032))

(assert (=> b!7236570 d!2247978))

(declare-fun b!7236779 () Bool)

(declare-fun e!4338565 () Bool)

(declare-fun tp!2034675 () Bool)

(assert (=> b!7236779 (= e!4338565 (and tp_is_empty!46517 tp!2034675))))

(assert (=> b!7236566 (= tp!2034659 e!4338565)))

(assert (= (and b!7236566 (is-Cons!70063 (t!384238 s1!1971))) b!7236779))

(declare-fun b!7236780 () Bool)

(declare-fun e!4338566 () Bool)

(declare-fun tp!2034676 () Bool)

(assert (=> b!7236780 (= e!4338566 (and tp_is_empty!46517 tp!2034676))))

(assert (=> b!7236573 (= tp!2034657 e!4338566)))

(assert (= (and b!7236573 (is-Cons!70063 (t!384238 s2!1849))) b!7236780))

(declare-fun b!7236785 () Bool)

(declare-fun e!4338569 () Bool)

(declare-fun tp!2034681 () Bool)

(declare-fun tp!2034682 () Bool)

(assert (=> b!7236785 (= e!4338569 (and tp!2034681 tp!2034682))))

(assert (=> b!7236574 (= tp!2034660 e!4338569)))

(assert (= (and b!7236574 (is-Cons!70062 (exprs!7966 ct2!328))) b!7236785))

(declare-fun b!7236786 () Bool)

(declare-fun e!4338570 () Bool)

(declare-fun tp!2034683 () Bool)

(declare-fun tp!2034684 () Bool)

(assert (=> b!7236786 (= e!4338570 (and tp!2034683 tp!2034684))))

(assert (=> b!7236559 (= tp!2034658 e!4338570)))

(assert (= (and b!7236559 (is-Cons!70062 (exprs!7966 ct1!232))) b!7236786))

(declare-fun b_lambda!277509 () Bool)

(assert (= b_lambda!277499 (or b!7236568 b_lambda!277509)))

(declare-fun bs!1903498 () Bool)

(declare-fun d!2247980 () Bool)

(assert (= bs!1903498 (and d!2247980 b!7236568)))

(assert (=> bs!1903498 (= (dynLambda!28589 lambda!440513 lt!2576147) (matchZipper!3436 (set.insert lt!2576147 (as set.empty (Set Context!14932))) (t!384238 s1!1971)))))

(declare-fun m!7908034 () Bool)

(assert (=> bs!1903498 m!7908034))

(assert (=> bs!1903498 m!7908034))

(declare-fun m!7908036 () Bool)

(assert (=> bs!1903498 m!7908036))

(assert (=> d!2247910 d!2247980))

(declare-fun b_lambda!277511 () Bool)

(assert (= b_lambda!277503 (or b!7236572 b_lambda!277511)))

(declare-fun bs!1903499 () Bool)

(declare-fun d!2247982 () Bool)

(assert (= bs!1903499 (and d!2247982 b!7236572)))

(assert (=> bs!1903499 (= (dynLambda!28591 lambda!440514 lt!2576042) (derivationStepZipperUp!2400 lt!2576042 (h!76511 s1!1971)))))

(assert (=> bs!1903499 m!7907700))

(assert (=> d!2247956 d!2247982))

(declare-fun b_lambda!277513 () Bool)

(assert (= b_lambda!277501 (or b!7236563 b_lambda!277513)))

(declare-fun bs!1903500 () Bool)

(declare-fun d!2247984 () Bool)

(assert (= bs!1903500 (and d!2247984 b!7236563)))

(declare-fun validRegex!9524 (Regex!18526) Bool)

(assert (=> bs!1903500 (= (dynLambda!28590 lambda!440512 (h!76510 (exprs!7966 ct1!232))) (validRegex!9524 (h!76510 (exprs!7966 ct1!232))))))

(declare-fun m!7908038 () Bool)

(assert (=> bs!1903500 m!7908038))

(assert (=> b!7236692 d!2247984))

(declare-fun b_lambda!277515 () Bool)

(assert (= b_lambda!277507 (or b!7236563 b_lambda!277515)))

(declare-fun bs!1903501 () Bool)

(declare-fun d!2247986 () Bool)

(assert (= bs!1903501 (and d!2247986 b!7236563)))

(assert (=> bs!1903501 (= (dynLambda!28590 lambda!440512 (h!76510 (exprs!7966 ct2!328))) (validRegex!9524 (h!76510 (exprs!7966 ct2!328))))))

(declare-fun m!7908040 () Bool)

(assert (=> bs!1903501 m!7908040))

(assert (=> b!7236771 d!2247986))

(declare-fun b_lambda!277517 () Bool)

(assert (= b_lambda!277505 (or b!7236572 b_lambda!277517)))

(declare-fun bs!1903502 () Bool)

(declare-fun d!2247988 () Bool)

(assert (= bs!1903502 (and d!2247988 b!7236572)))

(assert (=> bs!1903502 (= (dynLambda!28591 lambda!440514 ct1!232) (derivationStepZipperUp!2400 ct1!232 (h!76511 s1!1971)))))

(assert (=> bs!1903502 m!7907658))

(assert (=> d!2247960 d!2247988))

(push 1)

(assert (not d!2247972))

(assert (not b!7236785))

(assert (not d!2247910))

(assert (not b!7236700))

(assert (not d!2247908))

(assert (not d!2247912))

(assert (not bs!1903501))

(assert (not d!2247946))

(assert (not b_lambda!277509))

(assert (not bm!658878))

(assert (not d!2247962))

(assert (not b_lambda!277513))

(assert (not d!2247960))

(assert (not b!7236696))

(assert (not d!2247968))

(assert (not b!7236774))

(assert (not b!7236706))

(assert (not d!2247970))

(assert (not b_lambda!277517))

(assert (not b!7236701))

(assert (not b!7236686))

(assert (not bm!658902))

(assert (not bs!1903502))

(assert (not b!7236695))

(assert (not b_lambda!277511))

(assert (not b!7236683))

(assert (not b!7236772))

(assert (not bm!658879))

(assert (not d!2247926))

(assert (not b!7236743))

(assert (not d!2247920))

(assert (not b!7236779))

(assert (not b!7236654))

(assert (not d!2247928))

(assert (not d!2247978))

(assert (not b!7236702))

(assert (not b!7236644))

(assert (not bs!1903500))

(assert (not d!2247914))

(assert (not bm!658905))

(assert (not b!7236780))

(assert (not b_lambda!277515))

(assert (not bm!658904))

(assert (not d!2247932))

(assert (not bm!658898))

(assert (not b!7236685))

(assert (not b!7236773))

(assert (not d!2247964))

(assert (not d!2247958))

(assert (not b!7236682))

(assert (not b!7236769))

(assert (not b!7236653))

(assert (not d!2247924))

(assert (not d!2247900))

(assert (not d!2247916))

(assert (not d!2247948))

(assert (not b!7236693))

(assert (not d!2247956))

(assert (not b!7236747))

(assert (not d!2247966))

(assert (not b!7236668))

(assert (not bm!658896))

(assert (not bm!658895))

(assert (not b!7236679))

(assert (not b!7236667))

(assert tp_is_empty!46517)

(assert (not bs!1903498))

(assert (not d!2247930))

(assert (not b!7236697))

(assert (not b!7236647))

(assert (not b!7236786))

(assert (not d!2247934))

(assert (not b!7236708))

(assert (not b!7236758))

(assert (not bm!658880))

(assert (not b!7236694))

(assert (not b!7236703))

(assert (not b!7236746))

(assert (not b!7236766))

(assert (not b!7236711))

(assert (not d!2247904))

(assert (not bm!658901))

(assert (not d!2247918))

(assert (not d!2247950))

(assert (not bs!1903499))

(assert (not b!7236765))

(assert (not b!7236680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

