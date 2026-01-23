; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704098 () Bool)

(assert start!704098)

(declare-fun b!7243357 () Bool)

(assert (=> b!7243357 true))

(declare-fun b!7243363 () Bool)

(assert (=> b!7243363 true))

(declare-fun b!7243350 () Bool)

(declare-fun res!2938250 () Bool)

(declare-fun e!4342845 () Bool)

(assert (=> b!7243350 (=> res!2938250 e!4342845)))

(declare-datatypes ((C!37434 0))(
  ( (C!37435 (val!28665 Int)) )
))
(declare-datatypes ((Regex!18580 0))(
  ( (ElementMatch!18580 (c!1345310 C!37434)) (Concat!27425 (regOne!37672 Regex!18580) (regTwo!37672 Regex!18580)) (EmptyExpr!18580) (Star!18580 (reg!18909 Regex!18580)) (EmptyLang!18580) (Union!18580 (regOne!37673 Regex!18580) (regTwo!37673 Regex!18580)) )
))
(declare-datatypes ((List!70337 0))(
  ( (Nil!70213) (Cons!70213 (h!76661 Regex!18580) (t!384388 List!70337)) )
))
(declare-datatypes ((Context!15040 0))(
  ( (Context!15041 (exprs!8020 List!70337)) )
))
(declare-fun lt!2581080 () (Set Context!15040))

(declare-fun lt!2581078 () (Set Context!15040))

(assert (=> b!7243350 (= res!2938250 (not (= lt!2581080 lt!2581078)))))

(declare-fun b!7243351 () Bool)

(declare-fun e!4342844 () Bool)

(declare-fun tp_is_empty!46625 () Bool)

(declare-fun tp!2035837 () Bool)

(assert (=> b!7243351 (= e!4342844 (and tp_is_empty!46625 tp!2035837))))

(declare-fun b!7243352 () Bool)

(declare-fun e!4342848 () Bool)

(declare-fun e!4342849 () Bool)

(assert (=> b!7243352 (= e!4342848 e!4342849)))

(declare-fun res!2938252 () Bool)

(assert (=> b!7243352 (=> (not res!2938252) (not e!4342849))))

(declare-fun ct1!232 () Context!15040)

(declare-datatypes ((List!70338 0))(
  ( (Nil!70214) (Cons!70214 (h!76662 C!37434) (t!384389 List!70338)) )
))
(declare-fun s1!1971 () List!70338)

(assert (=> b!7243352 (= res!2938252 (and (not (is-Nil!70213 (exprs!8020 ct1!232))) (is-Cons!70214 s1!1971)))))

(declare-fun lt!2581081 () (Set Context!15040))

(declare-fun lt!2581086 () Context!15040)

(assert (=> b!7243352 (= lt!2581081 (set.insert lt!2581086 (as set.empty (Set Context!15040))))))

(declare-fun lt!2581073 () List!70337)

(assert (=> b!7243352 (= lt!2581086 (Context!15041 lt!2581073))))

(declare-fun ct2!328 () Context!15040)

(declare-fun ++!16444 (List!70337 List!70337) List!70337)

(assert (=> b!7243352 (= lt!2581073 (++!16444 (exprs!8020 ct1!232) (exprs!8020 ct2!328)))))

(declare-datatypes ((Unit!163746 0))(
  ( (Unit!163747) )
))
(declare-fun lt!2581087 () Unit!163746)

(declare-fun lambda!442474 () Int)

(declare-fun lemmaConcatPreservesForall!1389 (List!70337 List!70337 Int) Unit!163746)

(assert (=> b!7243352 (= lt!2581087 (lemmaConcatPreservesForall!1389 (exprs!8020 ct1!232) (exprs!8020 ct2!328) lambda!442474))))

(declare-fun b!7243353 () Bool)

(declare-fun e!4342841 () Bool)

(assert (=> b!7243353 (= e!4342849 e!4342841)))

(declare-fun res!2938251 () Bool)

(assert (=> b!7243353 (=> (not res!2938251) (not e!4342841))))

(declare-fun matchZipper!3490 ((Set Context!15040) List!70338) Bool)

(assert (=> b!7243353 (= res!2938251 (matchZipper!3490 lt!2581080 (t!384389 s1!1971)))))

(declare-fun lt!2581088 () (Set Context!15040))

(declare-fun derivationStepZipper!3368 ((Set Context!15040) C!37434) (Set Context!15040))

(assert (=> b!7243353 (= lt!2581080 (derivationStepZipper!3368 lt!2581088 (h!76662 s1!1971)))))

(declare-fun b!7243354 () Bool)

(declare-fun e!4342842 () Bool)

(declare-fun tp!2035838 () Bool)

(assert (=> b!7243354 (= e!4342842 tp!2035838)))

(declare-fun b!7243355 () Bool)

(declare-fun e!4342840 () Bool)

(declare-fun e!4342847 () Bool)

(assert (=> b!7243355 (= e!4342840 e!4342847)))

(declare-fun res!2938244 () Bool)

(assert (=> b!7243355 (=> res!2938244 e!4342847)))

(declare-fun isEmpty!40451 (List!70337) Bool)

(assert (=> b!7243355 (= res!2938244 (isEmpty!40451 (exprs!8020 ct1!232)))))

(declare-fun derivationStepZipperUp!2434 (Context!15040 C!37434) (Set Context!15040))

(assert (=> b!7243355 (= lt!2581078 (derivationStepZipperUp!2434 ct1!232 (h!76662 s1!1971)))))

(declare-fun lt!2581072 () Context!15040)

(declare-fun lt!2581071 () Unit!163746)

(assert (=> b!7243355 (= lt!2581071 (lemmaConcatPreservesForall!1389 (exprs!8020 lt!2581072) (exprs!8020 ct2!328) lambda!442474))))

(declare-fun s2!1849 () List!70338)

(declare-fun ++!16445 (List!70338 List!70338) List!70338)

(assert (=> b!7243355 (matchZipper!3490 (set.insert (Context!15041 (++!16444 (exprs!8020 lt!2581072) (exprs!8020 ct2!328))) (as set.empty (Set Context!15040))) (++!16445 (t!384389 s1!1971) s2!1849))))

(declare-fun lt!2581067 () Unit!163746)

(assert (=> b!7243355 (= lt!2581067 (lemmaConcatPreservesForall!1389 (exprs!8020 lt!2581072) (exprs!8020 ct2!328) lambda!442474))))

(declare-fun lt!2581076 () Unit!163746)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!353 (Context!15040 Context!15040 List!70338 List!70338) Unit!163746)

(assert (=> b!7243355 (= lt!2581076 (lemmaConcatenateContextMatchesConcatOfStrings!353 lt!2581072 ct2!328 (t!384389 s1!1971) s2!1849))))

(declare-fun lambda!442475 () Int)

(declare-fun getWitness!2128 ((Set Context!15040) Int) Context!15040)

(assert (=> b!7243355 (= lt!2581072 (getWitness!2128 lt!2581080 lambda!442475))))

(declare-fun res!2938247 () Bool)

(assert (=> start!704098 (=> (not res!2938247) (not e!4342848))))

(assert (=> start!704098 (= res!2938247 (matchZipper!3490 lt!2581088 s1!1971))))

(assert (=> start!704098 (= lt!2581088 (set.insert ct1!232 (as set.empty (Set Context!15040))))))

(assert (=> start!704098 e!4342848))

(declare-fun e!4342843 () Bool)

(declare-fun inv!89461 (Context!15040) Bool)

(assert (=> start!704098 (and (inv!89461 ct1!232) e!4342843)))

(assert (=> start!704098 e!4342844))

(declare-fun e!4342850 () Bool)

(assert (=> start!704098 e!4342850))

(assert (=> start!704098 (and (inv!89461 ct2!328) e!4342842)))

(declare-fun b!7243356 () Bool)

(declare-fun e!4342846 () Bool)

(assert (=> b!7243356 (= e!4342847 e!4342846)))

(declare-fun res!2938246 () Bool)

(assert (=> b!7243356 (=> res!2938246 e!4342846)))

(assert (=> b!7243356 (= res!2938246 (isEmpty!40451 lt!2581073))))

(declare-fun lt!2581084 () Unit!163746)

(assert (=> b!7243356 (= lt!2581084 (lemmaConcatPreservesForall!1389 (exprs!8020 ct1!232) (exprs!8020 ct2!328) lambda!442474))))

(declare-fun lt!2581069 () (Set Context!15040))

(assert (=> b!7243356 (= lt!2581069 (derivationStepZipperUp!2434 lt!2581086 (h!76662 s1!1971)))))

(declare-fun lt!2581075 () Unit!163746)

(assert (=> b!7243356 (= lt!2581075 (lemmaConcatPreservesForall!1389 (exprs!8020 ct1!232) (exprs!8020 ct2!328) lambda!442474))))

(declare-fun lt!2581079 () Context!15040)

(declare-fun lt!2581070 () (Set Context!15040))

(declare-fun derivationStepZipperDown!2604 (Regex!18580 Context!15040 C!37434) (Set Context!15040))

(assert (=> b!7243356 (= lt!2581070 (derivationStepZipperDown!2604 (h!76661 (exprs!8020 ct1!232)) lt!2581079 (h!76662 s1!1971)))))

(declare-fun tail!14244 (List!70337) List!70337)

(assert (=> b!7243356 (= lt!2581079 (Context!15041 (tail!14244 (exprs!8020 ct1!232))))))

(assert (=> b!7243357 (= e!4342841 (not e!4342840))))

(declare-fun res!2938243 () Bool)

(assert (=> b!7243357 (=> res!2938243 e!4342840)))

(declare-fun exists!4279 ((Set Context!15040) Int) Bool)

(assert (=> b!7243357 (= res!2938243 (not (exists!4279 lt!2581080 lambda!442475)))))

(declare-datatypes ((List!70339 0))(
  ( (Nil!70215) (Cons!70215 (h!76663 Context!15040) (t!384390 List!70339)) )
))
(declare-fun lt!2581083 () List!70339)

(declare-fun exists!4280 (List!70339 Int) Bool)

(assert (=> b!7243357 (exists!4280 lt!2581083 lambda!442475)))

(declare-fun lt!2581085 () Unit!163746)

(declare-fun lemmaZipperMatchesExistsMatchingContext!707 (List!70339 List!70338) Unit!163746)

(assert (=> b!7243357 (= lt!2581085 (lemmaZipperMatchesExistsMatchingContext!707 lt!2581083 (t!384389 s1!1971)))))

(declare-fun toList!11426 ((Set Context!15040)) List!70339)

(assert (=> b!7243357 (= lt!2581083 (toList!11426 lt!2581080))))

(declare-fun b!7243358 () Bool)

(declare-fun res!2938245 () Bool)

(assert (=> b!7243358 (=> res!2938245 e!4342845)))

(assert (=> b!7243358 (= res!2938245 (not (= lt!2581078 (set.union lt!2581070 (derivationStepZipperUp!2434 lt!2581079 (h!76662 s1!1971))))))))

(declare-fun b!7243359 () Bool)

(declare-fun res!2938249 () Bool)

(assert (=> b!7243359 (=> (not res!2938249) (not e!4342848))))

(assert (=> b!7243359 (= res!2938249 (matchZipper!3490 (set.insert ct2!328 (as set.empty (Set Context!15040))) s2!1849))))

(declare-fun b!7243360 () Bool)

(declare-fun tp!2035840 () Bool)

(assert (=> b!7243360 (= e!4342843 tp!2035840)))

(declare-fun lt!2581089 () Context!15040)

(declare-fun b!7243361 () Bool)

(declare-fun lt!2581090 () (Set Context!15040))

(assert (=> b!7243361 (= e!4342845 (= lt!2581069 (set.union lt!2581090 (derivationStepZipperUp!2434 lt!2581089 (h!76662 s1!1971)))))))

(declare-fun lt!2581074 () Unit!163746)

(assert (=> b!7243361 (= lt!2581074 (lemmaConcatPreservesForall!1389 (exprs!8020 ct1!232) (exprs!8020 ct2!328) lambda!442474))))

(declare-fun b!7243362 () Bool)

(declare-fun tp!2035839 () Bool)

(assert (=> b!7243362 (= e!4342850 (and tp_is_empty!46625 tp!2035839))))

(assert (=> b!7243363 (= e!4342846 e!4342845)))

(declare-fun res!2938248 () Bool)

(assert (=> b!7243363 (=> res!2938248 e!4342845)))

(declare-fun nullable!7873 (Regex!18580) Bool)

(assert (=> b!7243363 (= res!2938248 (not (nullable!7873 (h!76661 (exprs!8020 ct1!232)))))))

(declare-fun lambda!442476 () Int)

(declare-fun flatMap!2768 ((Set Context!15040) Int) (Set Context!15040))

(assert (=> b!7243363 (= (flatMap!2768 lt!2581081 lambda!442476) (derivationStepZipperUp!2434 lt!2581086 (h!76662 s1!1971)))))

(declare-fun lt!2581068 () Unit!163746)

(declare-fun lemmaFlatMapOnSingletonSet!2191 ((Set Context!15040) Context!15040 Int) Unit!163746)

(assert (=> b!7243363 (= lt!2581068 (lemmaFlatMapOnSingletonSet!2191 lt!2581081 lt!2581086 lambda!442476))))

(declare-fun lt!2581077 () Unit!163746)

(assert (=> b!7243363 (= lt!2581077 (lemmaConcatPreservesForall!1389 (exprs!8020 ct1!232) (exprs!8020 ct2!328) lambda!442474))))

(assert (=> b!7243363 (= (flatMap!2768 lt!2581088 lambda!442476) (derivationStepZipperUp!2434 ct1!232 (h!76662 s1!1971)))))

(declare-fun lt!2581082 () Unit!163746)

(assert (=> b!7243363 (= lt!2581082 (lemmaFlatMapOnSingletonSet!2191 lt!2581088 ct1!232 lambda!442476))))

(assert (=> b!7243363 (= lt!2581090 (derivationStepZipperDown!2604 (h!76661 (exprs!8020 ct1!232)) lt!2581089 (h!76662 s1!1971)))))

(assert (=> b!7243363 (= lt!2581089 (Context!15041 (tail!14244 lt!2581073)))))

(assert (= (and start!704098 res!2938247) b!7243359))

(assert (= (and b!7243359 res!2938249) b!7243352))

(assert (= (and b!7243352 res!2938252) b!7243353))

(assert (= (and b!7243353 res!2938251) b!7243357))

(assert (= (and b!7243357 (not res!2938243)) b!7243355))

(assert (= (and b!7243355 (not res!2938244)) b!7243356))

(assert (= (and b!7243356 (not res!2938246)) b!7243363))

(assert (= (and b!7243363 (not res!2938248)) b!7243358))

(assert (= (and b!7243358 (not res!2938245)) b!7243350))

(assert (= (and b!7243350 (not res!2938250)) b!7243361))

(assert (= start!704098 b!7243360))

(assert (= (and start!704098 (is-Cons!70214 s1!1971)) b!7243351))

(assert (= (and start!704098 (is-Cons!70214 s2!1849)) b!7243362))

(assert (= start!704098 b!7243354))

(declare-fun m!7918660 () Bool)

(assert (=> b!7243363 m!7918660))

(declare-fun m!7918662 () Bool)

(assert (=> b!7243363 m!7918662))

(declare-fun m!7918664 () Bool)

(assert (=> b!7243363 m!7918664))

(declare-fun m!7918666 () Bool)

(assert (=> b!7243363 m!7918666))

(declare-fun m!7918668 () Bool)

(assert (=> b!7243363 m!7918668))

(declare-fun m!7918670 () Bool)

(assert (=> b!7243363 m!7918670))

(declare-fun m!7918672 () Bool)

(assert (=> b!7243363 m!7918672))

(declare-fun m!7918674 () Bool)

(assert (=> b!7243363 m!7918674))

(declare-fun m!7918676 () Bool)

(assert (=> b!7243363 m!7918676))

(declare-fun m!7918678 () Bool)

(assert (=> b!7243363 m!7918678))

(declare-fun m!7918680 () Bool)

(assert (=> b!7243352 m!7918680))

(declare-fun m!7918682 () Bool)

(assert (=> b!7243352 m!7918682))

(assert (=> b!7243352 m!7918672))

(declare-fun m!7918684 () Bool)

(assert (=> start!704098 m!7918684))

(declare-fun m!7918686 () Bool)

(assert (=> start!704098 m!7918686))

(declare-fun m!7918688 () Bool)

(assert (=> start!704098 m!7918688))

(declare-fun m!7918690 () Bool)

(assert (=> start!704098 m!7918690))

(declare-fun m!7918692 () Bool)

(assert (=> b!7243359 m!7918692))

(assert (=> b!7243359 m!7918692))

(declare-fun m!7918694 () Bool)

(assert (=> b!7243359 m!7918694))

(declare-fun m!7918696 () Bool)

(assert (=> b!7243355 m!7918696))

(declare-fun m!7918698 () Bool)

(assert (=> b!7243355 m!7918698))

(declare-fun m!7918700 () Bool)

(assert (=> b!7243355 m!7918700))

(declare-fun m!7918702 () Bool)

(assert (=> b!7243355 m!7918702))

(assert (=> b!7243355 m!7918700))

(declare-fun m!7918704 () Bool)

(assert (=> b!7243355 m!7918704))

(declare-fun m!7918706 () Bool)

(assert (=> b!7243355 m!7918706))

(assert (=> b!7243355 m!7918696))

(assert (=> b!7243355 m!7918702))

(declare-fun m!7918708 () Bool)

(assert (=> b!7243355 m!7918708))

(declare-fun m!7918710 () Bool)

(assert (=> b!7243355 m!7918710))

(assert (=> b!7243355 m!7918678))

(declare-fun m!7918712 () Bool)

(assert (=> b!7243353 m!7918712))

(declare-fun m!7918714 () Bool)

(assert (=> b!7243353 m!7918714))

(declare-fun m!7918716 () Bool)

(assert (=> b!7243357 m!7918716))

(declare-fun m!7918718 () Bool)

(assert (=> b!7243357 m!7918718))

(declare-fun m!7918720 () Bool)

(assert (=> b!7243357 m!7918720))

(declare-fun m!7918722 () Bool)

(assert (=> b!7243357 m!7918722))

(assert (=> b!7243356 m!7918672))

(declare-fun m!7918724 () Bool)

(assert (=> b!7243356 m!7918724))

(assert (=> b!7243356 m!7918666))

(declare-fun m!7918726 () Bool)

(assert (=> b!7243356 m!7918726))

(assert (=> b!7243356 m!7918672))

(declare-fun m!7918728 () Bool)

(assert (=> b!7243356 m!7918728))

(declare-fun m!7918730 () Bool)

(assert (=> b!7243358 m!7918730))

(declare-fun m!7918732 () Bool)

(assert (=> b!7243361 m!7918732))

(assert (=> b!7243361 m!7918672))

(push 1)

(assert (not b!7243362))

(assert (not start!704098))

(assert (not b!7243357))

(assert (not b!7243354))

(assert (not b!7243351))

(assert (not b!7243360))

(assert (not b!7243352))

(assert (not b!7243353))

(assert (not b!7243356))

(assert tp_is_empty!46625)

(assert (not b!7243363))

(assert (not b!7243355))

(assert (not b!7243358))

(assert (not b!7243359))

(assert (not b!7243361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!659631 () (Set Context!15040))

(declare-fun b!7243424 () Bool)

(declare-fun e!4342891 () (Set Context!15040))

(assert (=> b!7243424 (= e!4342891 (set.union call!659631 (derivationStepZipperUp!2434 (Context!15041 (t!384388 (exprs!8020 lt!2581089))) (h!76662 s1!1971))))))

(declare-fun d!2250615 () Bool)

(declare-fun c!1345327 () Bool)

(declare-fun e!4342890 () Bool)

(assert (=> d!2250615 (= c!1345327 e!4342890)))

(declare-fun res!2938285 () Bool)

(assert (=> d!2250615 (=> (not res!2938285) (not e!4342890))))

(assert (=> d!2250615 (= res!2938285 (is-Cons!70213 (exprs!8020 lt!2581089)))))

(assert (=> d!2250615 (= (derivationStepZipperUp!2434 lt!2581089 (h!76662 s1!1971)) e!4342891)))

(declare-fun b!7243425 () Bool)

(declare-fun e!4342892 () (Set Context!15040))

(assert (=> b!7243425 (= e!4342892 (as set.empty (Set Context!15040)))))

(declare-fun b!7243426 () Bool)

(assert (=> b!7243426 (= e!4342892 call!659631)))

(declare-fun bm!659626 () Bool)

(assert (=> bm!659626 (= call!659631 (derivationStepZipperDown!2604 (h!76661 (exprs!8020 lt!2581089)) (Context!15041 (t!384388 (exprs!8020 lt!2581089))) (h!76662 s1!1971)))))

(declare-fun b!7243427 () Bool)

(assert (=> b!7243427 (= e!4342890 (nullable!7873 (h!76661 (exprs!8020 lt!2581089))))))

(declare-fun b!7243428 () Bool)

(assert (=> b!7243428 (= e!4342891 e!4342892)))

(declare-fun c!1345326 () Bool)

(assert (=> b!7243428 (= c!1345326 (is-Cons!70213 (exprs!8020 lt!2581089)))))

(assert (= (and d!2250615 res!2938285) b!7243427))

(assert (= (and d!2250615 c!1345327) b!7243424))

(assert (= (and d!2250615 (not c!1345327)) b!7243428))

(assert (= (and b!7243428 c!1345326) b!7243426))

(assert (= (and b!7243428 (not c!1345326)) b!7243425))

(assert (= (or b!7243424 b!7243426) bm!659626))

(declare-fun m!7918808 () Bool)

(assert (=> b!7243424 m!7918808))

(declare-fun m!7918810 () Bool)

(assert (=> bm!659626 m!7918810))

(declare-fun m!7918812 () Bool)

(assert (=> b!7243427 m!7918812))

(assert (=> b!7243361 d!2250615))

(declare-fun d!2250623 () Bool)

(declare-fun forall!17423 (List!70337 Int) Bool)

(assert (=> d!2250623 (forall!17423 (++!16444 (exprs!8020 ct1!232) (exprs!8020 ct2!328)) lambda!442474)))

(declare-fun lt!2581165 () Unit!163746)

(declare-fun choose!55842 (List!70337 List!70337 Int) Unit!163746)

(assert (=> d!2250623 (= lt!2581165 (choose!55842 (exprs!8020 ct1!232) (exprs!8020 ct2!328) lambda!442474))))

(assert (=> d!2250623 (forall!17423 (exprs!8020 ct1!232) lambda!442474)))

(assert (=> d!2250623 (= (lemmaConcatPreservesForall!1389 (exprs!8020 ct1!232) (exprs!8020 ct2!328) lambda!442474) lt!2581165)))

(declare-fun bs!1904559 () Bool)

(assert (= bs!1904559 d!2250623))

(assert (=> bs!1904559 m!7918682))

(assert (=> bs!1904559 m!7918682))

(declare-fun m!7918814 () Bool)

(assert (=> bs!1904559 m!7918814))

(declare-fun m!7918816 () Bool)

(assert (=> bs!1904559 m!7918816))

(declare-fun m!7918818 () Bool)

(assert (=> bs!1904559 m!7918818))

(assert (=> b!7243361 d!2250623))

(declare-fun d!2250625 () Bool)

(declare-fun e!4342904 () Bool)

(assert (=> d!2250625 e!4342904))

(declare-fun res!2938292 () Bool)

(assert (=> d!2250625 (=> (not res!2938292) (not e!4342904))))

(declare-fun lt!2581168 () List!70337)

(declare-fun content!14519 (List!70337) (Set Regex!18580))

(assert (=> d!2250625 (= res!2938292 (= (content!14519 lt!2581168) (set.union (content!14519 (exprs!8020 lt!2581072)) (content!14519 (exprs!8020 ct2!328)))))))

(declare-fun e!4342903 () List!70337)

(assert (=> d!2250625 (= lt!2581168 e!4342903)))

(declare-fun c!1345334 () Bool)

(assert (=> d!2250625 (= c!1345334 (is-Nil!70213 (exprs!8020 lt!2581072)))))

(assert (=> d!2250625 (= (++!16444 (exprs!8020 lt!2581072) (exprs!8020 ct2!328)) lt!2581168)))

(declare-fun b!7243447 () Bool)

(assert (=> b!7243447 (= e!4342903 (exprs!8020 ct2!328))))

(declare-fun b!7243450 () Bool)

(assert (=> b!7243450 (= e!4342904 (or (not (= (exprs!8020 ct2!328) Nil!70213)) (= lt!2581168 (exprs!8020 lt!2581072))))))

(declare-fun b!7243449 () Bool)

(declare-fun res!2938293 () Bool)

(assert (=> b!7243449 (=> (not res!2938293) (not e!4342904))))

(declare-fun size!41649 (List!70337) Int)

(assert (=> b!7243449 (= res!2938293 (= (size!41649 lt!2581168) (+ (size!41649 (exprs!8020 lt!2581072)) (size!41649 (exprs!8020 ct2!328)))))))

(declare-fun b!7243448 () Bool)

(assert (=> b!7243448 (= e!4342903 (Cons!70213 (h!76661 (exprs!8020 lt!2581072)) (++!16444 (t!384388 (exprs!8020 lt!2581072)) (exprs!8020 ct2!328))))))

(assert (= (and d!2250625 c!1345334) b!7243447))

(assert (= (and d!2250625 (not c!1345334)) b!7243448))

(assert (= (and d!2250625 res!2938292) b!7243449))

(assert (= (and b!7243449 res!2938293) b!7243450))

(declare-fun m!7918820 () Bool)

(assert (=> d!2250625 m!7918820))

(declare-fun m!7918822 () Bool)

(assert (=> d!2250625 m!7918822))

(declare-fun m!7918824 () Bool)

(assert (=> d!2250625 m!7918824))

(declare-fun m!7918826 () Bool)

(assert (=> b!7243449 m!7918826))

(declare-fun m!7918828 () Bool)

(assert (=> b!7243449 m!7918828))

(declare-fun m!7918830 () Bool)

(assert (=> b!7243449 m!7918830))

(declare-fun m!7918832 () Bool)

(assert (=> b!7243448 m!7918832))

(assert (=> b!7243355 d!2250625))

(declare-fun d!2250627 () Bool)

(declare-fun e!4342907 () Bool)

(assert (=> d!2250627 e!4342907))

(declare-fun res!2938296 () Bool)

(assert (=> d!2250627 (=> (not res!2938296) (not e!4342907))))

(declare-fun lt!2581171 () Context!15040)

(declare-fun dynLambda!28664 (Int Context!15040) Bool)

(assert (=> d!2250627 (= res!2938296 (dynLambda!28664 lambda!442475 lt!2581171))))

(declare-fun getWitness!2130 (List!70339 Int) Context!15040)

(assert (=> d!2250627 (= lt!2581171 (getWitness!2130 (toList!11426 lt!2581080) lambda!442475))))

(assert (=> d!2250627 (exists!4279 lt!2581080 lambda!442475)))

(assert (=> d!2250627 (= (getWitness!2128 lt!2581080 lambda!442475) lt!2581171)))

(declare-fun b!7243453 () Bool)

(assert (=> b!7243453 (= e!4342907 (set.member lt!2581171 lt!2581080))))

(assert (= (and d!2250627 res!2938296) b!7243453))

(declare-fun b_lambda!277935 () Bool)

(assert (=> (not b_lambda!277935) (not d!2250627)))

(declare-fun m!7918834 () Bool)

(assert (=> d!2250627 m!7918834))

(assert (=> d!2250627 m!7918722))

(assert (=> d!2250627 m!7918722))

(declare-fun m!7918836 () Bool)

(assert (=> d!2250627 m!7918836))

(assert (=> d!2250627 m!7918716))

(declare-fun m!7918838 () Bool)

(assert (=> b!7243453 m!7918838))

(assert (=> b!7243355 d!2250627))

(declare-fun e!4342909 () (Set Context!15040))

(declare-fun b!7243454 () Bool)

(declare-fun call!659634 () (Set Context!15040))

(assert (=> b!7243454 (= e!4342909 (set.union call!659634 (derivationStepZipperUp!2434 (Context!15041 (t!384388 (exprs!8020 ct1!232))) (h!76662 s1!1971))))))

(declare-fun d!2250629 () Bool)

(declare-fun c!1345336 () Bool)

(declare-fun e!4342908 () Bool)

(assert (=> d!2250629 (= c!1345336 e!4342908)))

(declare-fun res!2938297 () Bool)

(assert (=> d!2250629 (=> (not res!2938297) (not e!4342908))))

(assert (=> d!2250629 (= res!2938297 (is-Cons!70213 (exprs!8020 ct1!232)))))

(assert (=> d!2250629 (= (derivationStepZipperUp!2434 ct1!232 (h!76662 s1!1971)) e!4342909)))

(declare-fun b!7243455 () Bool)

(declare-fun e!4342910 () (Set Context!15040))

(assert (=> b!7243455 (= e!4342910 (as set.empty (Set Context!15040)))))

(declare-fun b!7243456 () Bool)

(assert (=> b!7243456 (= e!4342910 call!659634)))

(declare-fun bm!659629 () Bool)

(assert (=> bm!659629 (= call!659634 (derivationStepZipperDown!2604 (h!76661 (exprs!8020 ct1!232)) (Context!15041 (t!384388 (exprs!8020 ct1!232))) (h!76662 s1!1971)))))

(declare-fun b!7243457 () Bool)

(assert (=> b!7243457 (= e!4342908 (nullable!7873 (h!76661 (exprs!8020 ct1!232))))))

(declare-fun b!7243458 () Bool)

(assert (=> b!7243458 (= e!4342909 e!4342910)))

(declare-fun c!1345335 () Bool)

(assert (=> b!7243458 (= c!1345335 (is-Cons!70213 (exprs!8020 ct1!232)))))

(assert (= (and d!2250629 res!2938297) b!7243457))

(assert (= (and d!2250629 c!1345336) b!7243454))

(assert (= (and d!2250629 (not c!1345336)) b!7243458))

(assert (= (and b!7243458 c!1345335) b!7243456))

(assert (= (and b!7243458 (not c!1345335)) b!7243455))

(assert (= (or b!7243454 b!7243456) bm!659629))

(declare-fun m!7918840 () Bool)

(assert (=> b!7243454 m!7918840))

(declare-fun m!7918842 () Bool)

(assert (=> bm!659629 m!7918842))

(assert (=> b!7243457 m!7918664))

(assert (=> b!7243355 d!2250629))

(declare-fun d!2250631 () Bool)

(assert (=> d!2250631 (= (isEmpty!40451 (exprs!8020 ct1!232)) (is-Nil!70213 (exprs!8020 ct1!232)))))

(assert (=> b!7243355 d!2250631))

(declare-fun bs!1904560 () Bool)

(declare-fun d!2250633 () Bool)

(assert (= bs!1904560 (and d!2250633 b!7243352)))

(declare-fun lambda!442506 () Int)

(assert (=> bs!1904560 (= lambda!442506 lambda!442474)))

(assert (=> d!2250633 (matchZipper!3490 (set.insert (Context!15041 (++!16444 (exprs!8020 lt!2581072) (exprs!8020 ct2!328))) (as set.empty (Set Context!15040))) (++!16445 (t!384389 s1!1971) s2!1849))))

(declare-fun lt!2581177 () Unit!163746)

(assert (=> d!2250633 (= lt!2581177 (lemmaConcatPreservesForall!1389 (exprs!8020 lt!2581072) (exprs!8020 ct2!328) lambda!442506))))

(declare-fun lt!2581176 () Unit!163746)

(declare-fun choose!55843 (Context!15040 Context!15040 List!70338 List!70338) Unit!163746)

(assert (=> d!2250633 (= lt!2581176 (choose!55843 lt!2581072 ct2!328 (t!384389 s1!1971) s2!1849))))

(assert (=> d!2250633 (matchZipper!3490 (set.insert lt!2581072 (as set.empty (Set Context!15040))) (t!384389 s1!1971))))

(assert (=> d!2250633 (= (lemmaConcatenateContextMatchesConcatOfStrings!353 lt!2581072 ct2!328 (t!384389 s1!1971) s2!1849) lt!2581176)))

(declare-fun bs!1904561 () Bool)

(assert (= bs!1904561 d!2250633))

(assert (=> bs!1904561 m!7918702))

(assert (=> bs!1904561 m!7918700))

(assert (=> bs!1904561 m!7918704))

(assert (=> bs!1904561 m!7918700))

(declare-fun m!7918850 () Bool)

(assert (=> bs!1904561 m!7918850))

(assert (=> bs!1904561 m!7918702))

(assert (=> bs!1904561 m!7918698))

(declare-fun m!7918852 () Bool)

(assert (=> bs!1904561 m!7918852))

(assert (=> bs!1904561 m!7918850))

(declare-fun m!7918854 () Bool)

(assert (=> bs!1904561 m!7918854))

(declare-fun m!7918856 () Bool)

(assert (=> bs!1904561 m!7918856))

(assert (=> b!7243355 d!2250633))

(declare-fun d!2250637 () Bool)

(declare-fun c!1345345 () Bool)

(declare-fun isEmpty!40453 (List!70338) Bool)

(assert (=> d!2250637 (= c!1345345 (isEmpty!40453 (++!16445 (t!384389 s1!1971) s2!1849)))))

(declare-fun e!4342920 () Bool)

(assert (=> d!2250637 (= (matchZipper!3490 (set.insert (Context!15041 (++!16444 (exprs!8020 lt!2581072) (exprs!8020 ct2!328))) (as set.empty (Set Context!15040))) (++!16445 (t!384389 s1!1971) s2!1849)) e!4342920)))

(declare-fun b!7243476 () Bool)

(declare-fun nullableZipper!2870 ((Set Context!15040)) Bool)

(assert (=> b!7243476 (= e!4342920 (nullableZipper!2870 (set.insert (Context!15041 (++!16444 (exprs!8020 lt!2581072) (exprs!8020 ct2!328))) (as set.empty (Set Context!15040)))))))

(declare-fun b!7243477 () Bool)

(declare-fun head!14857 (List!70338) C!37434)

(declare-fun tail!14246 (List!70338) List!70338)

(assert (=> b!7243477 (= e!4342920 (matchZipper!3490 (derivationStepZipper!3368 (set.insert (Context!15041 (++!16444 (exprs!8020 lt!2581072) (exprs!8020 ct2!328))) (as set.empty (Set Context!15040))) (head!14857 (++!16445 (t!384389 s1!1971) s2!1849))) (tail!14246 (++!16445 (t!384389 s1!1971) s2!1849))))))

(assert (= (and d!2250637 c!1345345) b!7243476))

(assert (= (and d!2250637 (not c!1345345)) b!7243477))

(assert (=> d!2250637 m!7918700))

(declare-fun m!7918858 () Bool)

(assert (=> d!2250637 m!7918858))

(assert (=> b!7243476 m!7918702))

(declare-fun m!7918860 () Bool)

(assert (=> b!7243476 m!7918860))

(assert (=> b!7243477 m!7918700))

(declare-fun m!7918862 () Bool)

(assert (=> b!7243477 m!7918862))

(assert (=> b!7243477 m!7918702))

(assert (=> b!7243477 m!7918862))

(declare-fun m!7918864 () Bool)

(assert (=> b!7243477 m!7918864))

(assert (=> b!7243477 m!7918700))

(declare-fun m!7918866 () Bool)

(assert (=> b!7243477 m!7918866))

(assert (=> b!7243477 m!7918864))

(assert (=> b!7243477 m!7918866))

(declare-fun m!7918868 () Bool)

(assert (=> b!7243477 m!7918868))

(assert (=> b!7243355 d!2250637))

(declare-fun b!7243500 () Bool)

(declare-fun e!4342934 () List!70338)

(assert (=> b!7243500 (= e!4342934 s2!1849)))

(declare-fun b!7243501 () Bool)

(assert (=> b!7243501 (= e!4342934 (Cons!70214 (h!76662 (t!384389 s1!1971)) (++!16445 (t!384389 (t!384389 s1!1971)) s2!1849)))))

(declare-fun d!2250639 () Bool)

(declare-fun e!4342933 () Bool)

(assert (=> d!2250639 e!4342933))

(declare-fun res!2938306 () Bool)

(assert (=> d!2250639 (=> (not res!2938306) (not e!4342933))))

(declare-fun lt!2581180 () List!70338)

(declare-fun content!14520 (List!70338) (Set C!37434))

(assert (=> d!2250639 (= res!2938306 (= (content!14520 lt!2581180) (set.union (content!14520 (t!384389 s1!1971)) (content!14520 s2!1849))))))

(assert (=> d!2250639 (= lt!2581180 e!4342934)))

(declare-fun c!1345354 () Bool)

(assert (=> d!2250639 (= c!1345354 (is-Nil!70214 (t!384389 s1!1971)))))

(assert (=> d!2250639 (= (++!16445 (t!384389 s1!1971) s2!1849) lt!2581180)))

(declare-fun b!7243503 () Bool)

(assert (=> b!7243503 (= e!4342933 (or (not (= s2!1849 Nil!70214)) (= lt!2581180 (t!384389 s1!1971))))))

(declare-fun b!7243502 () Bool)

(declare-fun res!2938305 () Bool)

(assert (=> b!7243502 (=> (not res!2938305) (not e!4342933))))

(declare-fun size!41650 (List!70338) Int)

(assert (=> b!7243502 (= res!2938305 (= (size!41650 lt!2581180) (+ (size!41650 (t!384389 s1!1971)) (size!41650 s2!1849))))))

(assert (= (and d!2250639 c!1345354) b!7243500))

(assert (= (and d!2250639 (not c!1345354)) b!7243501))

(assert (= (and d!2250639 res!2938306) b!7243502))

(assert (= (and b!7243502 res!2938305) b!7243503))

(declare-fun m!7918870 () Bool)

(assert (=> b!7243501 m!7918870))

(declare-fun m!7918872 () Bool)

(assert (=> d!2250639 m!7918872))

(declare-fun m!7918874 () Bool)

(assert (=> d!2250639 m!7918874))

(declare-fun m!7918876 () Bool)

(assert (=> d!2250639 m!7918876))

(declare-fun m!7918878 () Bool)

(assert (=> b!7243502 m!7918878))

(declare-fun m!7918880 () Bool)

(assert (=> b!7243502 m!7918880))

(declare-fun m!7918882 () Bool)

(assert (=> b!7243502 m!7918882))

(assert (=> b!7243355 d!2250639))

(declare-fun d!2250641 () Bool)

(assert (=> d!2250641 (forall!17423 (++!16444 (exprs!8020 lt!2581072) (exprs!8020 ct2!328)) lambda!442474)))

(declare-fun lt!2581181 () Unit!163746)

(assert (=> d!2250641 (= lt!2581181 (choose!55842 (exprs!8020 lt!2581072) (exprs!8020 ct2!328) lambda!442474))))

(assert (=> d!2250641 (forall!17423 (exprs!8020 lt!2581072) lambda!442474)))

(assert (=> d!2250641 (= (lemmaConcatPreservesForall!1389 (exprs!8020 lt!2581072) (exprs!8020 ct2!328) lambda!442474) lt!2581181)))

(declare-fun bs!1904562 () Bool)

(assert (= bs!1904562 d!2250641))

(assert (=> bs!1904562 m!7918698))

(assert (=> bs!1904562 m!7918698))

(declare-fun m!7918884 () Bool)

(assert (=> bs!1904562 m!7918884))

(declare-fun m!7918886 () Bool)

(assert (=> bs!1904562 m!7918886))

(declare-fun m!7918888 () Bool)

(assert (=> bs!1904562 m!7918888))

(assert (=> b!7243355 d!2250641))

(declare-fun d!2250643 () Bool)

(declare-fun c!1345355 () Bool)

(assert (=> d!2250643 (= c!1345355 (isEmpty!40453 s1!1971))))

(declare-fun e!4342935 () Bool)

(assert (=> d!2250643 (= (matchZipper!3490 lt!2581088 s1!1971) e!4342935)))

(declare-fun b!7243504 () Bool)

(assert (=> b!7243504 (= e!4342935 (nullableZipper!2870 lt!2581088))))

(declare-fun b!7243505 () Bool)

(assert (=> b!7243505 (= e!4342935 (matchZipper!3490 (derivationStepZipper!3368 lt!2581088 (head!14857 s1!1971)) (tail!14246 s1!1971)))))

(assert (= (and d!2250643 c!1345355) b!7243504))

(assert (= (and d!2250643 (not c!1345355)) b!7243505))

(declare-fun m!7918890 () Bool)

(assert (=> d!2250643 m!7918890))

(declare-fun m!7918892 () Bool)

(assert (=> b!7243504 m!7918892))

(declare-fun m!7918894 () Bool)

(assert (=> b!7243505 m!7918894))

(assert (=> b!7243505 m!7918894))

(declare-fun m!7918896 () Bool)

(assert (=> b!7243505 m!7918896))

(declare-fun m!7918898 () Bool)

(assert (=> b!7243505 m!7918898))

(assert (=> b!7243505 m!7918896))

(assert (=> b!7243505 m!7918898))

(declare-fun m!7918900 () Bool)

(assert (=> b!7243505 m!7918900))

(assert (=> start!704098 d!2250643))

(declare-fun bs!1904563 () Bool)

(declare-fun d!2250645 () Bool)

(assert (= bs!1904563 (and d!2250645 b!7243352)))

(declare-fun lambda!442509 () Int)

(assert (=> bs!1904563 (= lambda!442509 lambda!442474)))

(declare-fun bs!1904564 () Bool)

(assert (= bs!1904564 (and d!2250645 d!2250633)))

(assert (=> bs!1904564 (= lambda!442509 lambda!442506)))

(assert (=> d!2250645 (= (inv!89461 ct1!232) (forall!17423 (exprs!8020 ct1!232) lambda!442509))))

(declare-fun bs!1904565 () Bool)

(assert (= bs!1904565 d!2250645))

(declare-fun m!7918902 () Bool)

(assert (=> bs!1904565 m!7918902))

(assert (=> start!704098 d!2250645))

(declare-fun bs!1904566 () Bool)

(declare-fun d!2250647 () Bool)

(assert (= bs!1904566 (and d!2250647 b!7243352)))

(declare-fun lambda!442510 () Int)

(assert (=> bs!1904566 (= lambda!442510 lambda!442474)))

(declare-fun bs!1904567 () Bool)

(assert (= bs!1904567 (and d!2250647 d!2250633)))

(assert (=> bs!1904567 (= lambda!442510 lambda!442506)))

(declare-fun bs!1904568 () Bool)

(assert (= bs!1904568 (and d!2250647 d!2250645)))

(assert (=> bs!1904568 (= lambda!442510 lambda!442509)))

(assert (=> d!2250647 (= (inv!89461 ct2!328) (forall!17423 (exprs!8020 ct2!328) lambda!442510))))

(declare-fun bs!1904569 () Bool)

(assert (= bs!1904569 d!2250647))

(declare-fun m!7918904 () Bool)

(assert (=> bs!1904569 m!7918904))

(assert (=> start!704098 d!2250647))

(declare-fun d!2250649 () Bool)

(declare-fun c!1345356 () Bool)

(assert (=> d!2250649 (= c!1345356 (isEmpty!40453 s2!1849))))

(declare-fun e!4342936 () Bool)

(assert (=> d!2250649 (= (matchZipper!3490 (set.insert ct2!328 (as set.empty (Set Context!15040))) s2!1849) e!4342936)))

(declare-fun b!7243506 () Bool)

(assert (=> b!7243506 (= e!4342936 (nullableZipper!2870 (set.insert ct2!328 (as set.empty (Set Context!15040)))))))

(declare-fun b!7243507 () Bool)

(assert (=> b!7243507 (= e!4342936 (matchZipper!3490 (derivationStepZipper!3368 (set.insert ct2!328 (as set.empty (Set Context!15040))) (head!14857 s2!1849)) (tail!14246 s2!1849)))))

(assert (= (and d!2250649 c!1345356) b!7243506))

(assert (= (and d!2250649 (not c!1345356)) b!7243507))

(declare-fun m!7918906 () Bool)

(assert (=> d!2250649 m!7918906))

(assert (=> b!7243506 m!7918692))

(declare-fun m!7918908 () Bool)

(assert (=> b!7243506 m!7918908))

(declare-fun m!7918910 () Bool)

(assert (=> b!7243507 m!7918910))

(assert (=> b!7243507 m!7918692))

(assert (=> b!7243507 m!7918910))

(declare-fun m!7918912 () Bool)

(assert (=> b!7243507 m!7918912))

(declare-fun m!7918914 () Bool)

(assert (=> b!7243507 m!7918914))

(assert (=> b!7243507 m!7918912))

(assert (=> b!7243507 m!7918914))

(declare-fun m!7918916 () Bool)

(assert (=> b!7243507 m!7918916))

(assert (=> b!7243359 d!2250649))

(declare-fun d!2250651 () Bool)

(declare-fun c!1345357 () Bool)

(assert (=> d!2250651 (= c!1345357 (isEmpty!40453 (t!384389 s1!1971)))))

(declare-fun e!4342937 () Bool)

(assert (=> d!2250651 (= (matchZipper!3490 lt!2581080 (t!384389 s1!1971)) e!4342937)))

(declare-fun b!7243508 () Bool)

(assert (=> b!7243508 (= e!4342937 (nullableZipper!2870 lt!2581080))))

(declare-fun b!7243509 () Bool)

(assert (=> b!7243509 (= e!4342937 (matchZipper!3490 (derivationStepZipper!3368 lt!2581080 (head!14857 (t!384389 s1!1971))) (tail!14246 (t!384389 s1!1971))))))

(assert (= (and d!2250651 c!1345357) b!7243508))

(assert (= (and d!2250651 (not c!1345357)) b!7243509))

(declare-fun m!7918918 () Bool)

(assert (=> d!2250651 m!7918918))

(declare-fun m!7918920 () Bool)

(assert (=> b!7243508 m!7918920))

(declare-fun m!7918922 () Bool)

(assert (=> b!7243509 m!7918922))

(assert (=> b!7243509 m!7918922))

(declare-fun m!7918924 () Bool)

(assert (=> b!7243509 m!7918924))

(declare-fun m!7918926 () Bool)

(assert (=> b!7243509 m!7918926))

(assert (=> b!7243509 m!7918924))

(assert (=> b!7243509 m!7918926))

(declare-fun m!7918928 () Bool)

(assert (=> b!7243509 m!7918928))

(assert (=> b!7243353 d!2250651))

(declare-fun bs!1904570 () Bool)

(declare-fun d!2250653 () Bool)

(assert (= bs!1904570 (and d!2250653 b!7243363)))

(declare-fun lambda!442513 () Int)

(assert (=> bs!1904570 (= lambda!442513 lambda!442476)))

(assert (=> d!2250653 true))

(assert (=> d!2250653 (= (derivationStepZipper!3368 lt!2581088 (h!76662 s1!1971)) (flatMap!2768 lt!2581088 lambda!442513))))

(declare-fun bs!1904571 () Bool)

(assert (= bs!1904571 d!2250653))

(declare-fun m!7918930 () Bool)

(assert (=> bs!1904571 m!7918930))

(assert (=> b!7243353 d!2250653))

(declare-fun b!7243512 () Bool)

(declare-fun call!659648 () (Set Context!15040))

(declare-fun e!4342939 () (Set Context!15040))

(assert (=> b!7243512 (= e!4342939 (set.union call!659648 (derivationStepZipperUp!2434 (Context!15041 (t!384388 (exprs!8020 lt!2581079))) (h!76662 s1!1971))))))

(declare-fun d!2250655 () Bool)

(declare-fun c!1345361 () Bool)

(declare-fun e!4342938 () Bool)

(assert (=> d!2250655 (= c!1345361 e!4342938)))

(declare-fun res!2938307 () Bool)

(assert (=> d!2250655 (=> (not res!2938307) (not e!4342938))))

(assert (=> d!2250655 (= res!2938307 (is-Cons!70213 (exprs!8020 lt!2581079)))))

(assert (=> d!2250655 (= (derivationStepZipperUp!2434 lt!2581079 (h!76662 s1!1971)) e!4342939)))

(declare-fun b!7243513 () Bool)

(declare-fun e!4342940 () (Set Context!15040))

(assert (=> b!7243513 (= e!4342940 (as set.empty (Set Context!15040)))))

(declare-fun b!7243514 () Bool)

(assert (=> b!7243514 (= e!4342940 call!659648)))

(declare-fun bm!659643 () Bool)

(assert (=> bm!659643 (= call!659648 (derivationStepZipperDown!2604 (h!76661 (exprs!8020 lt!2581079)) (Context!15041 (t!384388 (exprs!8020 lt!2581079))) (h!76662 s1!1971)))))

(declare-fun b!7243515 () Bool)

(assert (=> b!7243515 (= e!4342938 (nullable!7873 (h!76661 (exprs!8020 lt!2581079))))))

(declare-fun b!7243516 () Bool)

(assert (=> b!7243516 (= e!4342939 e!4342940)))

(declare-fun c!1345360 () Bool)

(assert (=> b!7243516 (= c!1345360 (is-Cons!70213 (exprs!8020 lt!2581079)))))

(assert (= (and d!2250655 res!2938307) b!7243515))

(assert (= (and d!2250655 c!1345361) b!7243512))

(assert (= (and d!2250655 (not c!1345361)) b!7243516))

(assert (= (and b!7243516 c!1345360) b!7243514))

(assert (= (and b!7243516 (not c!1345360)) b!7243513))

(assert (= (or b!7243512 b!7243514) bm!659643))

(declare-fun m!7918932 () Bool)

(assert (=> b!7243512 m!7918932))

(declare-fun m!7918934 () Bool)

(assert (=> bm!659643 m!7918934))

(declare-fun m!7918936 () Bool)

(assert (=> b!7243515 m!7918936))

(assert (=> b!7243358 d!2250655))

(declare-fun d!2250657 () Bool)

(assert (=> d!2250657 (= (tail!14244 lt!2581073) (t!384388 lt!2581073))))

(assert (=> b!7243363 d!2250657))

(declare-fun d!2250659 () Bool)

(declare-fun choose!55844 ((Set Context!15040) Int) (Set Context!15040))

(assert (=> d!2250659 (= (flatMap!2768 lt!2581088 lambda!442476) (choose!55844 lt!2581088 lambda!442476))))

(declare-fun bs!1904572 () Bool)

(assert (= bs!1904572 d!2250659))

(declare-fun m!7918938 () Bool)

(assert (=> bs!1904572 m!7918938))

(assert (=> b!7243363 d!2250659))

(declare-fun d!2250661 () Bool)

(assert (=> d!2250661 (= (flatMap!2768 lt!2581081 lambda!442476) (choose!55844 lt!2581081 lambda!442476))))

(declare-fun bs!1904573 () Bool)

(assert (= bs!1904573 d!2250661))

(declare-fun m!7918940 () Bool)

(assert (=> bs!1904573 m!7918940))

(assert (=> b!7243363 d!2250661))

(declare-fun d!2250663 () Bool)

(declare-fun nullableFct!3088 (Regex!18580) Bool)

(assert (=> d!2250663 (= (nullable!7873 (h!76661 (exprs!8020 ct1!232))) (nullableFct!3088 (h!76661 (exprs!8020 ct1!232))))))

(declare-fun bs!1904574 () Bool)

(assert (= bs!1904574 d!2250663))

(declare-fun m!7918942 () Bool)

(assert (=> bs!1904574 m!7918942))

(assert (=> b!7243363 d!2250663))

(declare-fun b!7243550 () Bool)

(declare-fun e!4342964 () Bool)

(assert (=> b!7243550 (= e!4342964 (nullable!7873 (regOne!37672 (h!76661 (exprs!8020 ct1!232)))))))

(declare-fun call!659670 () List!70337)

(declare-fun c!1345377 () Bool)

(declare-fun bm!659663 () Bool)

(declare-fun c!1345380 () Bool)

(declare-fun c!1345378 () Bool)

(declare-fun call!659671 () (Set Context!15040))

(assert (=> bm!659663 (= call!659671 (derivationStepZipperDown!2604 (ite c!1345380 (regTwo!37673 (h!76661 (exprs!8020 ct1!232))) (ite c!1345377 (regTwo!37672 (h!76661 (exprs!8020 ct1!232))) (ite c!1345378 (regOne!37672 (h!76661 (exprs!8020 ct1!232))) (reg!18909 (h!76661 (exprs!8020 ct1!232)))))) (ite (or c!1345380 c!1345377) lt!2581089 (Context!15041 call!659670)) (h!76662 s1!1971)))))

(declare-fun call!659667 () List!70337)

(declare-fun bm!659664 () Bool)

(declare-fun $colon$colon!2898 (List!70337 Regex!18580) List!70337)

(assert (=> bm!659664 (= call!659667 ($colon$colon!2898 (exprs!8020 lt!2581089) (ite (or c!1345377 c!1345378) (regTwo!37672 (h!76661 (exprs!8020 ct1!232))) (h!76661 (exprs!8020 ct1!232)))))))

(declare-fun b!7243551 () Bool)

(declare-fun e!4342960 () (Set Context!15040))

(declare-fun call!659672 () (Set Context!15040))

(assert (=> b!7243551 (= e!4342960 call!659672)))

(declare-fun b!7243552 () Bool)

(declare-fun e!4342959 () (Set Context!15040))

(assert (=> b!7243552 (= e!4342959 (set.insert lt!2581089 (as set.empty (Set Context!15040))))))

(declare-fun b!7243553 () Bool)

(declare-fun e!4342961 () (Set Context!15040))

(declare-fun e!4342962 () (Set Context!15040))

(assert (=> b!7243553 (= e!4342961 e!4342962)))

(assert (=> b!7243553 (= c!1345378 (is-Concat!27425 (h!76661 (exprs!8020 ct1!232))))))

(declare-fun b!7243554 () Bool)

(declare-fun e!4342963 () (Set Context!15040))

(declare-fun call!659668 () (Set Context!15040))

(assert (=> b!7243554 (= e!4342963 (set.union call!659668 call!659671))))

(declare-fun bm!659665 () Bool)

(assert (=> bm!659665 (= call!659670 call!659667)))

(declare-fun b!7243555 () Bool)

(assert (=> b!7243555 (= c!1345377 e!4342964)))

(declare-fun res!2938311 () Bool)

(assert (=> b!7243555 (=> (not res!2938311) (not e!4342964))))

(assert (=> b!7243555 (= res!2938311 (is-Concat!27425 (h!76661 (exprs!8020 ct1!232))))))

(assert (=> b!7243555 (= e!4342963 e!4342961)))

(declare-fun b!7243556 () Bool)

(assert (=> b!7243556 (= e!4342962 call!659672)))

(declare-fun bm!659662 () Bool)

(declare-fun call!659669 () (Set Context!15040))

(assert (=> bm!659662 (= call!659669 call!659671)))

(declare-fun d!2250665 () Bool)

(declare-fun c!1345379 () Bool)

(assert (=> d!2250665 (= c!1345379 (and (is-ElementMatch!18580 (h!76661 (exprs!8020 ct1!232))) (= (c!1345310 (h!76661 (exprs!8020 ct1!232))) (h!76662 s1!1971))))))

(assert (=> d!2250665 (= (derivationStepZipperDown!2604 (h!76661 (exprs!8020 ct1!232)) lt!2581089 (h!76662 s1!1971)) e!4342959)))

(declare-fun bm!659666 () Bool)

(assert (=> bm!659666 (= call!659672 call!659669)))

(declare-fun b!7243557 () Bool)

(assert (=> b!7243557 (= e!4342961 (set.union call!659668 call!659669))))

(declare-fun b!7243558 () Bool)

(assert (=> b!7243558 (= e!4342960 (as set.empty (Set Context!15040)))))

(declare-fun b!7243559 () Bool)

(declare-fun c!1345381 () Bool)

(assert (=> b!7243559 (= c!1345381 (is-Star!18580 (h!76661 (exprs!8020 ct1!232))))))

(assert (=> b!7243559 (= e!4342962 e!4342960)))

(declare-fun b!7243560 () Bool)

(assert (=> b!7243560 (= e!4342959 e!4342963)))

(assert (=> b!7243560 (= c!1345380 (is-Union!18580 (h!76661 (exprs!8020 ct1!232))))))

(declare-fun bm!659667 () Bool)

(assert (=> bm!659667 (= call!659668 (derivationStepZipperDown!2604 (ite c!1345380 (regOne!37673 (h!76661 (exprs!8020 ct1!232))) (regOne!37672 (h!76661 (exprs!8020 ct1!232)))) (ite c!1345380 lt!2581089 (Context!15041 call!659667)) (h!76662 s1!1971)))))

(assert (= (and d!2250665 c!1345379) b!7243552))

(assert (= (and d!2250665 (not c!1345379)) b!7243560))

(assert (= (and b!7243560 c!1345380) b!7243554))

(assert (= (and b!7243560 (not c!1345380)) b!7243555))

(assert (= (and b!7243555 res!2938311) b!7243550))

(assert (= (and b!7243555 c!1345377) b!7243557))

(assert (= (and b!7243555 (not c!1345377)) b!7243553))

(assert (= (and b!7243553 c!1345378) b!7243556))

(assert (= (and b!7243553 (not c!1345378)) b!7243559))

(assert (= (and b!7243559 c!1345381) b!7243551))

(assert (= (and b!7243559 (not c!1345381)) b!7243558))

(assert (= (or b!7243556 b!7243551) bm!659665))

(assert (= (or b!7243556 b!7243551) bm!659666))

(assert (= (or b!7243557 bm!659665) bm!659664))

(assert (= (or b!7243557 bm!659666) bm!659662))

(assert (= (or b!7243554 bm!659662) bm!659663))

(assert (= (or b!7243554 b!7243557) bm!659667))

(declare-fun m!7918954 () Bool)

(assert (=> b!7243550 m!7918954))

(declare-fun m!7918956 () Bool)

(assert (=> b!7243552 m!7918956))

(declare-fun m!7918958 () Bool)

(assert (=> bm!659667 m!7918958))

(declare-fun m!7918960 () Bool)

(assert (=> bm!659663 m!7918960))

(declare-fun m!7918962 () Bool)

(assert (=> bm!659664 m!7918962))

(assert (=> b!7243363 d!2250665))

(declare-fun b!7243561 () Bool)

(declare-fun call!659673 () (Set Context!15040))

(declare-fun e!4342966 () (Set Context!15040))

(assert (=> b!7243561 (= e!4342966 (set.union call!659673 (derivationStepZipperUp!2434 (Context!15041 (t!384388 (exprs!8020 lt!2581086))) (h!76662 s1!1971))))))

(declare-fun d!2250669 () Bool)

(declare-fun c!1345383 () Bool)

(declare-fun e!4342965 () Bool)

(assert (=> d!2250669 (= c!1345383 e!4342965)))

(declare-fun res!2938312 () Bool)

(assert (=> d!2250669 (=> (not res!2938312) (not e!4342965))))

(assert (=> d!2250669 (= res!2938312 (is-Cons!70213 (exprs!8020 lt!2581086)))))

(assert (=> d!2250669 (= (derivationStepZipperUp!2434 lt!2581086 (h!76662 s1!1971)) e!4342966)))

(declare-fun b!7243562 () Bool)

(declare-fun e!4342967 () (Set Context!15040))

(assert (=> b!7243562 (= e!4342967 (as set.empty (Set Context!15040)))))

(declare-fun b!7243563 () Bool)

(assert (=> b!7243563 (= e!4342967 call!659673)))

(declare-fun bm!659668 () Bool)

(assert (=> bm!659668 (= call!659673 (derivationStepZipperDown!2604 (h!76661 (exprs!8020 lt!2581086)) (Context!15041 (t!384388 (exprs!8020 lt!2581086))) (h!76662 s1!1971)))))

(declare-fun b!7243564 () Bool)

(assert (=> b!7243564 (= e!4342965 (nullable!7873 (h!76661 (exprs!8020 lt!2581086))))))

(declare-fun b!7243565 () Bool)

(assert (=> b!7243565 (= e!4342966 e!4342967)))

(declare-fun c!1345382 () Bool)

(assert (=> b!7243565 (= c!1345382 (is-Cons!70213 (exprs!8020 lt!2581086)))))

(assert (= (and d!2250669 res!2938312) b!7243564))

(assert (= (and d!2250669 c!1345383) b!7243561))

(assert (= (and d!2250669 (not c!1345383)) b!7243565))

(assert (= (and b!7243565 c!1345382) b!7243563))

(assert (= (and b!7243565 (not c!1345382)) b!7243562))

(assert (= (or b!7243561 b!7243563) bm!659668))

(declare-fun m!7918964 () Bool)

(assert (=> b!7243561 m!7918964))

(declare-fun m!7918966 () Bool)

(assert (=> bm!659668 m!7918966))

(declare-fun m!7918968 () Bool)

(assert (=> b!7243564 m!7918968))

(assert (=> b!7243363 d!2250669))

(assert (=> b!7243363 d!2250629))

(declare-fun d!2250671 () Bool)

(declare-fun dynLambda!28665 (Int Context!15040) (Set Context!15040))

(assert (=> d!2250671 (= (flatMap!2768 lt!2581088 lambda!442476) (dynLambda!28665 lambda!442476 ct1!232))))

(declare-fun lt!2581187 () Unit!163746)

(declare-fun choose!55845 ((Set Context!15040) Context!15040 Int) Unit!163746)

(assert (=> d!2250671 (= lt!2581187 (choose!55845 lt!2581088 ct1!232 lambda!442476))))

(assert (=> d!2250671 (= lt!2581088 (set.insert ct1!232 (as set.empty (Set Context!15040))))))

(assert (=> d!2250671 (= (lemmaFlatMapOnSingletonSet!2191 lt!2581088 ct1!232 lambda!442476) lt!2581187)))

(declare-fun b_lambda!277937 () Bool)

(assert (=> (not b_lambda!277937) (not d!2250671)))

(declare-fun bs!1904576 () Bool)

(assert (= bs!1904576 d!2250671))

(assert (=> bs!1904576 m!7918668))

(declare-fun m!7918970 () Bool)

(assert (=> bs!1904576 m!7918970))

(declare-fun m!7918972 () Bool)

(assert (=> bs!1904576 m!7918972))

(assert (=> bs!1904576 m!7918686))

(assert (=> b!7243363 d!2250671))

(assert (=> b!7243363 d!2250623))

(declare-fun d!2250673 () Bool)

(assert (=> d!2250673 (= (flatMap!2768 lt!2581081 lambda!442476) (dynLambda!28665 lambda!442476 lt!2581086))))

(declare-fun lt!2581188 () Unit!163746)

(assert (=> d!2250673 (= lt!2581188 (choose!55845 lt!2581081 lt!2581086 lambda!442476))))

(assert (=> d!2250673 (= lt!2581081 (set.insert lt!2581086 (as set.empty (Set Context!15040))))))

(assert (=> d!2250673 (= (lemmaFlatMapOnSingletonSet!2191 lt!2581081 lt!2581086 lambda!442476) lt!2581188)))

(declare-fun b_lambda!277939 () Bool)

(assert (=> (not b_lambda!277939) (not d!2250673)))

(declare-fun bs!1904577 () Bool)

(assert (= bs!1904577 d!2250673))

(assert (=> bs!1904577 m!7918676))

(declare-fun m!7918980 () Bool)

(assert (=> bs!1904577 m!7918980))

(declare-fun m!7918982 () Bool)

(assert (=> bs!1904577 m!7918982))

(assert (=> bs!1904577 m!7918680))

(assert (=> b!7243363 d!2250673))

(declare-fun d!2250677 () Bool)

(declare-fun e!4342972 () Bool)

(assert (=> d!2250677 e!4342972))

(declare-fun res!2938314 () Bool)

(assert (=> d!2250677 (=> (not res!2938314) (not e!4342972))))

(declare-fun lt!2581189 () List!70337)

(assert (=> d!2250677 (= res!2938314 (= (content!14519 lt!2581189) (set.union (content!14519 (exprs!8020 ct1!232)) (content!14519 (exprs!8020 ct2!328)))))))

(declare-fun e!4342971 () List!70337)

(assert (=> d!2250677 (= lt!2581189 e!4342971)))

(declare-fun c!1345386 () Bool)

(assert (=> d!2250677 (= c!1345386 (is-Nil!70213 (exprs!8020 ct1!232)))))

(assert (=> d!2250677 (= (++!16444 (exprs!8020 ct1!232) (exprs!8020 ct2!328)) lt!2581189)))

(declare-fun b!7243569 () Bool)

(assert (=> b!7243569 (= e!4342971 (exprs!8020 ct2!328))))

(declare-fun b!7243574 () Bool)

(assert (=> b!7243574 (= e!4342972 (or (not (= (exprs!8020 ct2!328) Nil!70213)) (= lt!2581189 (exprs!8020 ct1!232))))))

(declare-fun b!7243573 () Bool)

(declare-fun res!2938315 () Bool)

(assert (=> b!7243573 (=> (not res!2938315) (not e!4342972))))

(assert (=> b!7243573 (= res!2938315 (= (size!41649 lt!2581189) (+ (size!41649 (exprs!8020 ct1!232)) (size!41649 (exprs!8020 ct2!328)))))))

(declare-fun b!7243571 () Bool)

(assert (=> b!7243571 (= e!4342971 (Cons!70213 (h!76661 (exprs!8020 ct1!232)) (++!16444 (t!384388 (exprs!8020 ct1!232)) (exprs!8020 ct2!328))))))

(assert (= (and d!2250677 c!1345386) b!7243569))

(assert (= (and d!2250677 (not c!1345386)) b!7243571))

(assert (= (and d!2250677 res!2938314) b!7243573))

(assert (= (and b!7243573 res!2938315) b!7243574))

(declare-fun m!7918984 () Bool)

(assert (=> d!2250677 m!7918984))

(declare-fun m!7918986 () Bool)

(assert (=> d!2250677 m!7918986))

(assert (=> d!2250677 m!7918824))

(declare-fun m!7918988 () Bool)

(assert (=> b!7243573 m!7918988))

(declare-fun m!7918990 () Bool)

(assert (=> b!7243573 m!7918990))

(assert (=> b!7243573 m!7918830))

(declare-fun m!7918992 () Bool)

(assert (=> b!7243571 m!7918992))

(assert (=> b!7243352 d!2250677))

(assert (=> b!7243352 d!2250623))

(declare-fun d!2250679 () Bool)

(declare-fun lt!2581192 () Bool)

(assert (=> d!2250679 (= lt!2581192 (exists!4280 (toList!11426 lt!2581080) lambda!442475))))

(declare-fun choose!55846 ((Set Context!15040) Int) Bool)

(assert (=> d!2250679 (= lt!2581192 (choose!55846 lt!2581080 lambda!442475))))

(assert (=> d!2250679 (= (exists!4279 lt!2581080 lambda!442475) lt!2581192)))

(declare-fun bs!1904578 () Bool)

(assert (= bs!1904578 d!2250679))

(assert (=> bs!1904578 m!7918722))

(assert (=> bs!1904578 m!7918722))

(declare-fun m!7919000 () Bool)

(assert (=> bs!1904578 m!7919000))

(declare-fun m!7919002 () Bool)

(assert (=> bs!1904578 m!7919002))

(assert (=> b!7243357 d!2250679))

(declare-fun bs!1904579 () Bool)

(declare-fun d!2250683 () Bool)

(assert (= bs!1904579 (and d!2250683 b!7243357)))

(declare-fun lambda!442516 () Int)

(assert (=> bs!1904579 (not (= lambda!442516 lambda!442475))))

(assert (=> d!2250683 true))

(declare-fun order!28915 () Int)

(declare-fun dynLambda!28666 (Int Int) Int)

(assert (=> d!2250683 (< (dynLambda!28666 order!28915 lambda!442475) (dynLambda!28666 order!28915 lambda!442516))))

(declare-fun forall!17424 (List!70339 Int) Bool)

(assert (=> d!2250683 (= (exists!4280 lt!2581083 lambda!442475) (not (forall!17424 lt!2581083 lambda!442516)))))

(declare-fun bs!1904580 () Bool)

(assert (= bs!1904580 d!2250683))

(declare-fun m!7919004 () Bool)

(assert (=> bs!1904580 m!7919004))

(assert (=> b!7243357 d!2250683))

(declare-fun bs!1904581 () Bool)

(declare-fun d!2250685 () Bool)

(assert (= bs!1904581 (and d!2250685 b!7243357)))

(declare-fun lambda!442519 () Int)

(assert (=> bs!1904581 (= lambda!442519 lambda!442475)))

(declare-fun bs!1904582 () Bool)

(assert (= bs!1904582 (and d!2250685 d!2250683)))

(assert (=> bs!1904582 (not (= lambda!442519 lambda!442516))))

(assert (=> d!2250685 true))

(assert (=> d!2250685 (exists!4280 lt!2581083 lambda!442519)))

(declare-fun lt!2581197 () Unit!163746)

(declare-fun choose!55847 (List!70339 List!70338) Unit!163746)

(assert (=> d!2250685 (= lt!2581197 (choose!55847 lt!2581083 (t!384389 s1!1971)))))

(declare-fun content!14521 (List!70339) (Set Context!15040))

(assert (=> d!2250685 (matchZipper!3490 (content!14521 lt!2581083) (t!384389 s1!1971))))

(assert (=> d!2250685 (= (lemmaZipperMatchesExistsMatchingContext!707 lt!2581083 (t!384389 s1!1971)) lt!2581197)))

(declare-fun bs!1904583 () Bool)

(assert (= bs!1904583 d!2250685))

(declare-fun m!7919006 () Bool)

(assert (=> bs!1904583 m!7919006))

(declare-fun m!7919008 () Bool)

(assert (=> bs!1904583 m!7919008))

(declare-fun m!7919010 () Bool)

(assert (=> bs!1904583 m!7919010))

(assert (=> bs!1904583 m!7919010))

(declare-fun m!7919012 () Bool)

(assert (=> bs!1904583 m!7919012))

(assert (=> b!7243357 d!2250685))

(declare-fun d!2250687 () Bool)

(declare-fun e!4342979 () Bool)

(assert (=> d!2250687 e!4342979))

(declare-fun res!2938322 () Bool)

(assert (=> d!2250687 (=> (not res!2938322) (not e!4342979))))

(declare-fun lt!2581200 () List!70339)

(declare-fun noDuplicate!2963 (List!70339) Bool)

(assert (=> d!2250687 (= res!2938322 (noDuplicate!2963 lt!2581200))))

(declare-fun choose!55848 ((Set Context!15040)) List!70339)

(assert (=> d!2250687 (= lt!2581200 (choose!55848 lt!2581080))))

(assert (=> d!2250687 (= (toList!11426 lt!2581080) lt!2581200)))

(declare-fun b!7243587 () Bool)

(assert (=> b!7243587 (= e!4342979 (= (content!14521 lt!2581200) lt!2581080))))

(assert (= (and d!2250687 res!2938322) b!7243587))

(declare-fun m!7919014 () Bool)

(assert (=> d!2250687 m!7919014))

(declare-fun m!7919016 () Bool)

(assert (=> d!2250687 m!7919016))

(declare-fun m!7919018 () Bool)

(assert (=> b!7243587 m!7919018))

(assert (=> b!7243357 d!2250687))

(declare-fun b!7243588 () Bool)

(declare-fun e!4342985 () Bool)

(assert (=> b!7243588 (= e!4342985 (nullable!7873 (regOne!37672 (h!76661 (exprs!8020 ct1!232)))))))

(declare-fun call!659679 () (Set Context!15040))

(declare-fun c!1345394 () Bool)

(declare-fun c!1345392 () Bool)

(declare-fun call!659678 () List!70337)

(declare-fun c!1345391 () Bool)

(declare-fun bm!659671 () Bool)

(assert (=> bm!659671 (= call!659679 (derivationStepZipperDown!2604 (ite c!1345394 (regTwo!37673 (h!76661 (exprs!8020 ct1!232))) (ite c!1345391 (regTwo!37672 (h!76661 (exprs!8020 ct1!232))) (ite c!1345392 (regOne!37672 (h!76661 (exprs!8020 ct1!232))) (reg!18909 (h!76661 (exprs!8020 ct1!232)))))) (ite (or c!1345394 c!1345391) lt!2581079 (Context!15041 call!659678)) (h!76662 s1!1971)))))

(declare-fun call!659675 () List!70337)

(declare-fun bm!659672 () Bool)

(assert (=> bm!659672 (= call!659675 ($colon$colon!2898 (exprs!8020 lt!2581079) (ite (or c!1345391 c!1345392) (regTwo!37672 (h!76661 (exprs!8020 ct1!232))) (h!76661 (exprs!8020 ct1!232)))))))

(declare-fun b!7243589 () Bool)

(declare-fun e!4342981 () (Set Context!15040))

(declare-fun call!659680 () (Set Context!15040))

(assert (=> b!7243589 (= e!4342981 call!659680)))

(declare-fun b!7243590 () Bool)

(declare-fun e!4342980 () (Set Context!15040))

(assert (=> b!7243590 (= e!4342980 (set.insert lt!2581079 (as set.empty (Set Context!15040))))))

(declare-fun b!7243591 () Bool)

(declare-fun e!4342982 () (Set Context!15040))

(declare-fun e!4342983 () (Set Context!15040))

(assert (=> b!7243591 (= e!4342982 e!4342983)))

(assert (=> b!7243591 (= c!1345392 (is-Concat!27425 (h!76661 (exprs!8020 ct1!232))))))

(declare-fun b!7243592 () Bool)

(declare-fun e!4342984 () (Set Context!15040))

(declare-fun call!659676 () (Set Context!15040))

(assert (=> b!7243592 (= e!4342984 (set.union call!659676 call!659679))))

(declare-fun bm!659673 () Bool)

(assert (=> bm!659673 (= call!659678 call!659675)))

(declare-fun b!7243593 () Bool)

(assert (=> b!7243593 (= c!1345391 e!4342985)))

(declare-fun res!2938323 () Bool)

(assert (=> b!7243593 (=> (not res!2938323) (not e!4342985))))

(assert (=> b!7243593 (= res!2938323 (is-Concat!27425 (h!76661 (exprs!8020 ct1!232))))))

(assert (=> b!7243593 (= e!4342984 e!4342982)))

(declare-fun b!7243594 () Bool)

(assert (=> b!7243594 (= e!4342983 call!659680)))

(declare-fun bm!659670 () Bool)

(declare-fun call!659677 () (Set Context!15040))

(assert (=> bm!659670 (= call!659677 call!659679)))

(declare-fun d!2250689 () Bool)

(declare-fun c!1345393 () Bool)

(assert (=> d!2250689 (= c!1345393 (and (is-ElementMatch!18580 (h!76661 (exprs!8020 ct1!232))) (= (c!1345310 (h!76661 (exprs!8020 ct1!232))) (h!76662 s1!1971))))))

(assert (=> d!2250689 (= (derivationStepZipperDown!2604 (h!76661 (exprs!8020 ct1!232)) lt!2581079 (h!76662 s1!1971)) e!4342980)))

(declare-fun bm!659674 () Bool)

(assert (=> bm!659674 (= call!659680 call!659677)))

(declare-fun b!7243595 () Bool)

(assert (=> b!7243595 (= e!4342982 (set.union call!659676 call!659677))))

(declare-fun b!7243596 () Bool)

(assert (=> b!7243596 (= e!4342981 (as set.empty (Set Context!15040)))))

(declare-fun b!7243597 () Bool)

(declare-fun c!1345395 () Bool)

(assert (=> b!7243597 (= c!1345395 (is-Star!18580 (h!76661 (exprs!8020 ct1!232))))))

(assert (=> b!7243597 (= e!4342983 e!4342981)))

(declare-fun b!7243598 () Bool)

(assert (=> b!7243598 (= e!4342980 e!4342984)))

(assert (=> b!7243598 (= c!1345394 (is-Union!18580 (h!76661 (exprs!8020 ct1!232))))))

(declare-fun bm!659675 () Bool)

(assert (=> bm!659675 (= call!659676 (derivationStepZipperDown!2604 (ite c!1345394 (regOne!37673 (h!76661 (exprs!8020 ct1!232))) (regOne!37672 (h!76661 (exprs!8020 ct1!232)))) (ite c!1345394 lt!2581079 (Context!15041 call!659675)) (h!76662 s1!1971)))))

(assert (= (and d!2250689 c!1345393) b!7243590))

(assert (= (and d!2250689 (not c!1345393)) b!7243598))

(assert (= (and b!7243598 c!1345394) b!7243592))

(assert (= (and b!7243598 (not c!1345394)) b!7243593))

(assert (= (and b!7243593 res!2938323) b!7243588))

(assert (= (and b!7243593 c!1345391) b!7243595))

(assert (= (and b!7243593 (not c!1345391)) b!7243591))

(assert (= (and b!7243591 c!1345392) b!7243594))

(assert (= (and b!7243591 (not c!1345392)) b!7243597))

(assert (= (and b!7243597 c!1345395) b!7243589))

(assert (= (and b!7243597 (not c!1345395)) b!7243596))

(assert (= (or b!7243594 b!7243589) bm!659673))

(assert (= (or b!7243594 b!7243589) bm!659674))

(assert (= (or b!7243595 bm!659673) bm!659672))

(assert (= (or b!7243595 bm!659674) bm!659670))

(assert (= (or b!7243592 bm!659670) bm!659671))

(assert (= (or b!7243592 b!7243595) bm!659675))

(assert (=> b!7243588 m!7918954))

(declare-fun m!7919020 () Bool)

(assert (=> b!7243590 m!7919020))

(declare-fun m!7919022 () Bool)

(assert (=> bm!659675 m!7919022))

(declare-fun m!7919024 () Bool)

(assert (=> bm!659671 m!7919024))

(declare-fun m!7919026 () Bool)

(assert (=> bm!659672 m!7919026))

(assert (=> b!7243356 d!2250689))

(assert (=> b!7243356 d!2250669))

(assert (=> b!7243356 d!2250623))

(declare-fun d!2250691 () Bool)

(assert (=> d!2250691 (= (tail!14244 (exprs!8020 ct1!232)) (t!384388 (exprs!8020 ct1!232)))))

(assert (=> b!7243356 d!2250691))

(declare-fun d!2250693 () Bool)

(assert (=> d!2250693 (= (isEmpty!40451 lt!2581073) (is-Nil!70213 lt!2581073))))

(assert (=> b!7243356 d!2250693))

(declare-fun b!7243607 () Bool)

(declare-fun e!4342990 () Bool)

(declare-fun tp!2035857 () Bool)

(declare-fun tp!2035858 () Bool)

(assert (=> b!7243607 (= e!4342990 (and tp!2035857 tp!2035858))))

(assert (=> b!7243360 (= tp!2035840 e!4342990)))

(assert (= (and b!7243360 (is-Cons!70213 (exprs!8020 ct1!232))) b!7243607))

(declare-fun b!7243608 () Bool)

(declare-fun e!4342991 () Bool)

(declare-fun tp!2035859 () Bool)

(declare-fun tp!2035860 () Bool)

(assert (=> b!7243608 (= e!4342991 (and tp!2035859 tp!2035860))))

(assert (=> b!7243354 (= tp!2035838 e!4342991)))

(assert (= (and b!7243354 (is-Cons!70213 (exprs!8020 ct2!328))) b!7243608))

(declare-fun b!7243613 () Bool)

(declare-fun e!4342994 () Bool)

(declare-fun tp!2035863 () Bool)

(assert (=> b!7243613 (= e!4342994 (and tp_is_empty!46625 tp!2035863))))

(assert (=> b!7243362 (= tp!2035839 e!4342994)))

(assert (= (and b!7243362 (is-Cons!70214 (t!384389 s2!1849))) b!7243613))

(declare-fun b!7243614 () Bool)

(declare-fun e!4342995 () Bool)

(declare-fun tp!2035864 () Bool)

(assert (=> b!7243614 (= e!4342995 (and tp_is_empty!46625 tp!2035864))))

(assert (=> b!7243351 (= tp!2035837 e!4342995)))

(assert (= (and b!7243351 (is-Cons!70214 (t!384389 s1!1971))) b!7243614))

(declare-fun b_lambda!277941 () Bool)

(assert (= b_lambda!277935 (or b!7243357 b_lambda!277941)))

(declare-fun bs!1904585 () Bool)

(declare-fun d!2250699 () Bool)

(assert (= bs!1904585 (and d!2250699 b!7243357)))

(assert (=> bs!1904585 (= (dynLambda!28664 lambda!442475 lt!2581171) (matchZipper!3490 (set.insert lt!2581171 (as set.empty (Set Context!15040))) (t!384389 s1!1971)))))

(declare-fun m!7919048 () Bool)

(assert (=> bs!1904585 m!7919048))

(assert (=> bs!1904585 m!7919048))

(declare-fun m!7919050 () Bool)

(assert (=> bs!1904585 m!7919050))

(assert (=> d!2250627 d!2250699))

(declare-fun b_lambda!277943 () Bool)

(assert (= b_lambda!277937 (or b!7243363 b_lambda!277943)))

(declare-fun bs!1904586 () Bool)

(declare-fun d!2250701 () Bool)

(assert (= bs!1904586 (and d!2250701 b!7243363)))

(assert (=> bs!1904586 (= (dynLambda!28665 lambda!442476 ct1!232) (derivationStepZipperUp!2434 ct1!232 (h!76662 s1!1971)))))

(assert (=> bs!1904586 m!7918678))

(assert (=> d!2250671 d!2250701))

(declare-fun b_lambda!277945 () Bool)

(assert (= b_lambda!277939 (or b!7243363 b_lambda!277945)))

(declare-fun bs!1904587 () Bool)

(declare-fun d!2250703 () Bool)

(assert (= bs!1904587 (and d!2250703 b!7243363)))

(assert (=> bs!1904587 (= (dynLambda!28665 lambda!442476 lt!2581086) (derivationStepZipperUp!2434 lt!2581086 (h!76662 s1!1971)))))

(assert (=> bs!1904587 m!7918666))

(assert (=> d!2250673 d!2250703))

(push 1)

(assert (not b!7243508))

(assert (not d!2250649))

(assert (not b!7243448))

(assert (not d!2250651))

(assert (not d!2250661))

(assert (not bm!659667))

(assert (not b!7243608))

(assert (not b_lambda!277941))

(assert (not d!2250685))

(assert (not b!7243573))

(assert (not bm!659671))

(assert (not b!7243504))

(assert (not bs!1904585))

(assert (not b!7243607))

(assert (not d!2250659))

(assert (not d!2250625))

(assert (not d!2250637))

(assert (not bm!659675))

(assert (not d!2250627))

(assert (not b!7243614))

(assert (not b!7243477))

(assert (not b!7243506))

(assert (not d!2250645))

(assert (not d!2250671))

(assert (not d!2250677))

(assert (not d!2250639))

(assert (not b!7243505))

(assert (not bs!1904587))

(assert (not d!2250663))

(assert (not d!2250641))

(assert tp_is_empty!46625)

(assert (not b!7243424))

(assert (not d!2250679))

(assert (not b!7243509))

(assert (not b!7243501))

(assert (not b!7243476))

(assert (not b!7243571))

(assert (not b!7243588))

(assert (not d!2250683))

(assert (not bm!659672))

(assert (not d!2250623))

(assert (not b_lambda!277945))

(assert (not b!7243550))

(assert (not d!2250673))

(assert (not bm!659668))

(assert (not b!7243515))

(assert (not d!2250653))

(assert (not b!7243427))

(assert (not d!2250647))

(assert (not bm!659664))

(assert (not b!7243587))

(assert (not b!7243613))

(assert (not d!2250633))

(assert (not bm!659626))

(assert (not b!7243564))

(assert (not b!7243512))

(assert (not b!7243502))

(assert (not b!7243507))

(assert (not bm!659643))

(assert (not b!7243449))

(assert (not d!2250687))

(assert (not bm!659629))

(assert (not b!7243454))

(assert (not b!7243561))

(assert (not b_lambda!277943))

(assert (not bs!1904586))

(assert (not b!7243457))

(assert (not bm!659663))

(assert (not d!2250643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

