; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711188 () Bool)

(assert start!711188)

(declare-fun b!7295808 () Bool)

(assert (=> b!7295808 true))

(declare-fun b!7295802 () Bool)

(declare-fun e!4369809 () Bool)

(declare-datatypes ((C!38002 0))(
  ( (C!38003 (val!28949 Int)) )
))
(declare-datatypes ((Regex!18864 0))(
  ( (ElementMatch!18864 (c!1355975 C!38002)) (Concat!27709 (regOne!38240 Regex!18864) (regTwo!38240 Regex!18864)) (EmptyExpr!18864) (Star!18864 (reg!19193 Regex!18864)) (EmptyLang!18864) (Union!18864 (regOne!38241 Regex!18864) (regTwo!38241 Regex!18864)) )
))
(declare-datatypes ((List!71045 0))(
  ( (Nil!70921) (Cons!70921 (h!77369 Regex!18864) (t!385121 List!71045)) )
))
(declare-datatypes ((Context!15608 0))(
  ( (Context!15609 (exprs!8304 List!71045)) )
))
(declare-fun lt!2597919 () Context!15608)

(declare-fun inv!90171 (Context!15608) Bool)

(assert (=> b!7295802 (= e!4369809 (inv!90171 lt!2597919))))

(declare-datatypes ((Unit!164326 0))(
  ( (Unit!164327) )
))
(declare-fun lt!2597927 () Unit!164326)

(declare-fun lt!2597931 () List!71045)

(declare-fun lambda!450350 () Int)

(declare-fun ct2!346 () Context!15608)

(declare-fun lemmaConcatPreservesForall!1611 (List!71045 List!71045 Int) Unit!164326)

(assert (=> b!7295802 (= lt!2597927 (lemmaConcatPreservesForall!1611 lt!2597931 (exprs!8304 ct2!346) lambda!450350))))

(declare-datatypes ((List!71046 0))(
  ( (Nil!70922) (Cons!70922 (h!77370 C!38002) (t!385122 List!71046)) )
))
(declare-fun s!7854 () List!71046)

(declare-fun matchZipper!3768 ((Set Context!15608) List!71046) Bool)

(assert (=> b!7295802 (matchZipper!3768 (set.insert lt!2597919 (as set.empty (Set Context!15608))) s!7854)))

(declare-fun lt!2597926 () Unit!164326)

(assert (=> b!7295802 (= lt!2597926 (lemmaConcatPreservesForall!1611 lt!2597931 (exprs!8304 ct2!346) lambda!450350))))

(declare-fun lt!2597930 () Context!15608)

(declare-fun lt!2597932 () Unit!164326)

(declare-fun lemmaPrependingNullableCtxStillMatches!47 (Context!15608 Context!15608 List!71046) Unit!164326)

(assert (=> b!7295802 (= lt!2597932 (lemmaPrependingNullableCtxStillMatches!47 lt!2597930 ct2!346 s!7854))))

(declare-fun b!7295803 () Bool)

(declare-fun e!4369803 () Bool)

(declare-fun tp!2062345 () Bool)

(assert (=> b!7295803 (= e!4369803 tp!2062345)))

(declare-fun b!7295804 () Bool)

(declare-fun e!4369804 () Bool)

(declare-fun e!4369806 () Bool)

(assert (=> b!7295804 (= e!4369804 e!4369806)))

(declare-fun res!2950964 () Bool)

(assert (=> b!7295804 (=> res!2950964 e!4369806)))

(declare-fun ct1!250 () Context!15608)

(declare-fun nullable!8041 (Regex!18864) Bool)

(assert (=> b!7295804 (= res!2950964 (not (nullable!8041 (h!77369 (exprs!8304 ct1!250)))))))

(declare-fun lt!2597922 () (Set Context!15608))

(declare-fun derivationStepZipperUp!2614 (Context!15608 C!38002) (Set Context!15608))

(assert (=> b!7295804 (= lt!2597922 (derivationStepZipperUp!2614 ct1!250 (h!77370 s!7854)))))

(assert (=> b!7295804 (= lt!2597930 (Context!15609 lt!2597931))))

(declare-fun tail!14579 (List!71045) List!71045)

(assert (=> b!7295804 (= lt!2597931 (tail!14579 (exprs!8304 ct1!250)))))

(declare-fun b!7295805 () Bool)

(assert (=> b!7295805 (= e!4369806 e!4369809)))

(declare-fun res!2950967 () Bool)

(assert (=> b!7295805 (=> res!2950967 e!4369809)))

(declare-fun lt!2597935 () (Set Context!15608))

(declare-fun derivationStepZipperDown!2770 (Regex!18864 Context!15608 C!38002) (Set Context!15608))

(assert (=> b!7295805 (= res!2950967 (not (= lt!2597935 (set.union (derivationStepZipperDown!2770 (h!77369 (exprs!8304 ct1!250)) lt!2597919 (h!77370 s!7854)) (derivationStepZipperUp!2614 lt!2597919 (h!77370 s!7854))))))))

(declare-fun ++!16754 (List!71045 List!71045) List!71045)

(assert (=> b!7295805 (= lt!2597919 (Context!15609 (++!16754 lt!2597931 (exprs!8304 ct2!346))))))

(declare-fun lt!2597925 () Unit!164326)

(assert (=> b!7295805 (= lt!2597925 (lemmaConcatPreservesForall!1611 lt!2597931 (exprs!8304 ct2!346) lambda!450350))))

(declare-fun lt!2597933 () Unit!164326)

(assert (=> b!7295805 (= lt!2597933 (lemmaConcatPreservesForall!1611 lt!2597931 (exprs!8304 ct2!346) lambda!450350))))

(declare-fun b!7295806 () Bool)

(declare-fun res!2950968 () Bool)

(assert (=> b!7295806 (=> res!2950968 e!4369806)))

(assert (=> b!7295806 (= res!2950968 (not (= lt!2597922 (set.union (derivationStepZipperDown!2770 (h!77369 (exprs!8304 ct1!250)) lt!2597930 (h!77370 s!7854)) (derivationStepZipperUp!2614 lt!2597930 (h!77370 s!7854))))))))

(declare-fun b!7295807 () Bool)

(declare-fun res!2950971 () Bool)

(assert (=> b!7295807 (=> res!2950971 e!4369804)))

(declare-fun isEmpty!40796 (List!71045) Bool)

(assert (=> b!7295807 (= res!2950971 (isEmpty!40796 (exprs!8304 ct1!250)))))

(declare-fun e!4369805 () Bool)

(assert (=> b!7295808 (= e!4369805 (not e!4369804))))

(declare-fun res!2950965 () Bool)

(assert (=> b!7295808 (=> res!2950965 e!4369804)))

(declare-fun lt!2597936 () (Set Context!15608))

(declare-fun derivationStepZipper!3597 ((Set Context!15608) C!38002) (Set Context!15608))

(assert (=> b!7295808 (= res!2950965 (not (= lt!2597935 (derivationStepZipper!3597 lt!2597936 (h!77370 s!7854)))))))

(declare-fun lt!2597929 () Unit!164326)

(assert (=> b!7295808 (= lt!2597929 (lemmaConcatPreservesForall!1611 (exprs!8304 ct1!250) (exprs!8304 ct2!346) lambda!450350))))

(declare-fun lt!2597934 () Context!15608)

(declare-fun lambda!450351 () Int)

(declare-fun flatMap!2959 ((Set Context!15608) Int) (Set Context!15608))

(assert (=> b!7295808 (= (flatMap!2959 lt!2597936 lambda!450351) (derivationStepZipperUp!2614 lt!2597934 (h!77370 s!7854)))))

(declare-fun lt!2597924 () Unit!164326)

(declare-fun lemmaFlatMapOnSingletonSet!2357 ((Set Context!15608) Context!15608 Int) Unit!164326)

(assert (=> b!7295808 (= lt!2597924 (lemmaFlatMapOnSingletonSet!2357 lt!2597936 lt!2597934 lambda!450351))))

(assert (=> b!7295808 (= lt!2597936 (set.insert lt!2597934 (as set.empty (Set Context!15608))))))

(declare-fun lt!2597918 () Unit!164326)

(assert (=> b!7295808 (= lt!2597918 (lemmaConcatPreservesForall!1611 (exprs!8304 ct1!250) (exprs!8304 ct2!346) lambda!450350))))

(declare-fun lt!2597921 () Unit!164326)

(assert (=> b!7295808 (= lt!2597921 (lemmaConcatPreservesForall!1611 (exprs!8304 ct1!250) (exprs!8304 ct2!346) lambda!450350))))

(declare-fun lt!2597920 () (Set Context!15608))

(assert (=> b!7295808 (= (flatMap!2959 lt!2597920 lambda!450351) (derivationStepZipperUp!2614 ct1!250 (h!77370 s!7854)))))

(declare-fun lt!2597928 () Unit!164326)

(assert (=> b!7295808 (= lt!2597928 (lemmaFlatMapOnSingletonSet!2357 lt!2597920 ct1!250 lambda!450351))))

(assert (=> b!7295808 (= lt!2597920 (set.insert ct1!250 (as set.empty (Set Context!15608))))))

(assert (=> b!7295808 (= lt!2597935 (derivationStepZipperUp!2614 lt!2597934 (h!77370 s!7854)))))

(assert (=> b!7295808 (= lt!2597934 (Context!15609 (++!16754 (exprs!8304 ct1!250) (exprs!8304 ct2!346))))))

(declare-fun lt!2597923 () Unit!164326)

(assert (=> b!7295808 (= lt!2597923 (lemmaConcatPreservesForall!1611 (exprs!8304 ct1!250) (exprs!8304 ct2!346) lambda!450350))))

(declare-fun b!7295809 () Bool)

(declare-fun e!4369807 () Bool)

(declare-fun tp_is_empty!47193 () Bool)

(declare-fun tp!2062343 () Bool)

(assert (=> b!7295809 (= e!4369807 (and tp_is_empty!47193 tp!2062343))))

(declare-fun b!7295810 () Bool)

(declare-fun e!4369808 () Bool)

(declare-fun tp!2062344 () Bool)

(assert (=> b!7295810 (= e!4369808 tp!2062344)))

(declare-fun b!7295811 () Bool)

(declare-fun res!2950969 () Bool)

(assert (=> b!7295811 (=> res!2950969 e!4369804)))

(assert (=> b!7295811 (= res!2950969 (not (is-Cons!70921 (exprs!8304 ct1!250))))))

(declare-fun res!2950972 () Bool)

(assert (=> start!711188 (=> (not res!2950972) (not e!4369805))))

(assert (=> start!711188 (= res!2950972 (matchZipper!3768 (set.insert ct2!346 (as set.empty (Set Context!15608))) s!7854))))

(assert (=> start!711188 e!4369805))

(assert (=> start!711188 (and (inv!90171 ct2!346) e!4369808)))

(assert (=> start!711188 e!4369807))

(assert (=> start!711188 (and (inv!90171 ct1!250) e!4369803)))

(declare-fun b!7295812 () Bool)

(declare-fun res!2950970 () Bool)

(assert (=> b!7295812 (=> (not res!2950970) (not e!4369805))))

(declare-fun nullableContext!354 (Context!15608) Bool)

(assert (=> b!7295812 (= res!2950970 (nullableContext!354 ct1!250))))

(declare-fun b!7295813 () Bool)

(declare-fun res!2950966 () Bool)

(assert (=> b!7295813 (=> (not res!2950966) (not e!4369805))))

(assert (=> b!7295813 (= res!2950966 (is-Cons!70922 s!7854))))

(assert (= (and start!711188 res!2950972) b!7295812))

(assert (= (and b!7295812 res!2950970) b!7295813))

(assert (= (and b!7295813 res!2950966) b!7295808))

(assert (= (and b!7295808 (not res!2950965)) b!7295811))

(assert (= (and b!7295811 (not res!2950969)) b!7295807))

(assert (= (and b!7295807 (not res!2950971)) b!7295804))

(assert (= (and b!7295804 (not res!2950964)) b!7295806))

(assert (= (and b!7295806 (not res!2950968)) b!7295805))

(assert (= (and b!7295805 (not res!2950967)) b!7295802))

(assert (= start!711188 b!7295810))

(assert (= (and start!711188 (is-Cons!70922 s!7854)) b!7295809))

(assert (= start!711188 b!7295803))

(declare-fun m!7967454 () Bool)

(assert (=> b!7295807 m!7967454))

(declare-fun m!7967456 () Bool)

(assert (=> start!711188 m!7967456))

(assert (=> start!711188 m!7967456))

(declare-fun m!7967458 () Bool)

(assert (=> start!711188 m!7967458))

(declare-fun m!7967460 () Bool)

(assert (=> start!711188 m!7967460))

(declare-fun m!7967462 () Bool)

(assert (=> start!711188 m!7967462))

(declare-fun m!7967464 () Bool)

(assert (=> b!7295805 m!7967464))

(declare-fun m!7967466 () Bool)

(assert (=> b!7295805 m!7967466))

(assert (=> b!7295805 m!7967464))

(declare-fun m!7967468 () Bool)

(assert (=> b!7295805 m!7967468))

(declare-fun m!7967470 () Bool)

(assert (=> b!7295805 m!7967470))

(declare-fun m!7967472 () Bool)

(assert (=> b!7295812 m!7967472))

(declare-fun m!7967474 () Bool)

(assert (=> b!7295802 m!7967474))

(assert (=> b!7295802 m!7967464))

(assert (=> b!7295802 m!7967464))

(declare-fun m!7967476 () Bool)

(assert (=> b!7295802 m!7967476))

(assert (=> b!7295802 m!7967476))

(declare-fun m!7967478 () Bool)

(assert (=> b!7295802 m!7967478))

(declare-fun m!7967480 () Bool)

(assert (=> b!7295802 m!7967480))

(declare-fun m!7967482 () Bool)

(assert (=> b!7295806 m!7967482))

(declare-fun m!7967484 () Bool)

(assert (=> b!7295806 m!7967484))

(declare-fun m!7967486 () Bool)

(assert (=> b!7295808 m!7967486))

(declare-fun m!7967488 () Bool)

(assert (=> b!7295808 m!7967488))

(declare-fun m!7967490 () Bool)

(assert (=> b!7295808 m!7967490))

(declare-fun m!7967492 () Bool)

(assert (=> b!7295808 m!7967492))

(declare-fun m!7967494 () Bool)

(assert (=> b!7295808 m!7967494))

(declare-fun m!7967496 () Bool)

(assert (=> b!7295808 m!7967496))

(declare-fun m!7967498 () Bool)

(assert (=> b!7295808 m!7967498))

(assert (=> b!7295808 m!7967488))

(assert (=> b!7295808 m!7967488))

(declare-fun m!7967500 () Bool)

(assert (=> b!7295808 m!7967500))

(declare-fun m!7967502 () Bool)

(assert (=> b!7295808 m!7967502))

(assert (=> b!7295808 m!7967488))

(declare-fun m!7967504 () Bool)

(assert (=> b!7295808 m!7967504))

(declare-fun m!7967506 () Bool)

(assert (=> b!7295808 m!7967506))

(declare-fun m!7967508 () Bool)

(assert (=> b!7295804 m!7967508))

(assert (=> b!7295804 m!7967500))

(declare-fun m!7967510 () Bool)

(assert (=> b!7295804 m!7967510))

(push 1)

(assert (not b!7295805))

(assert (not b!7295810))

(assert (not b!7295806))

(assert (not b!7295802))

(assert (not b!7295808))

(assert (not b!7295812))

(assert (not b!7295803))

(assert (not start!711188))

(assert (not b!7295804))

(assert (not b!7295809))

(assert (not b!7295807))

(assert tp_is_empty!47193)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7295864 () Bool)

(declare-fun e!4369837 () (Set Context!15608))

(declare-fun call!664714 () (Set Context!15608))

(assert (=> b!7295864 (= e!4369837 (set.union call!664714 (derivationStepZipperUp!2614 (Context!15609 (t!385121 (exprs!8304 ct1!250))) (h!77370 s!7854))))))

(declare-fun b!7295865 () Bool)

(declare-fun e!4369839 () Bool)

(assert (=> b!7295865 (= e!4369839 (nullable!8041 (h!77369 (exprs!8304 ct1!250))))))

(declare-fun b!7295866 () Bool)

(declare-fun e!4369838 () (Set Context!15608))

(assert (=> b!7295866 (= e!4369838 (as set.empty (Set Context!15608)))))

(declare-fun bm!664709 () Bool)

(assert (=> bm!664709 (= call!664714 (derivationStepZipperDown!2770 (h!77369 (exprs!8304 ct1!250)) (Context!15609 (t!385121 (exprs!8304 ct1!250))) (h!77370 s!7854)))))

(declare-fun b!7295867 () Bool)

(assert (=> b!7295867 (= e!4369837 e!4369838)))

(declare-fun c!1355985 () Bool)

(assert (=> b!7295867 (= c!1355985 (is-Cons!70921 (exprs!8304 ct1!250)))))

(declare-fun d!2266853 () Bool)

(declare-fun c!1355986 () Bool)

(assert (=> d!2266853 (= c!1355986 e!4369839)))

(declare-fun res!2951002 () Bool)

(assert (=> d!2266853 (=> (not res!2951002) (not e!4369839))))

(assert (=> d!2266853 (= res!2951002 (is-Cons!70921 (exprs!8304 ct1!250)))))

(assert (=> d!2266853 (= (derivationStepZipperUp!2614 ct1!250 (h!77370 s!7854)) e!4369837)))

(declare-fun b!7295868 () Bool)

(assert (=> b!7295868 (= e!4369838 call!664714)))

(assert (= (and d!2266853 res!2951002) b!7295865))

(assert (= (and d!2266853 c!1355986) b!7295864))

(assert (= (and d!2266853 (not c!1355986)) b!7295867))

(assert (= (and b!7295867 c!1355985) b!7295868))

(assert (= (and b!7295867 (not c!1355985)) b!7295866))

(assert (= (or b!7295864 b!7295868) bm!664709))

(declare-fun m!7967570 () Bool)

(assert (=> b!7295864 m!7967570))

(assert (=> b!7295865 m!7967508))

(declare-fun m!7967572 () Bool)

(assert (=> bm!664709 m!7967572))

(assert (=> b!7295808 d!2266853))

(declare-fun d!2266855 () Bool)

(declare-fun dynLambda!29005 (Int Context!15608) (Set Context!15608))

(assert (=> d!2266855 (= (flatMap!2959 lt!2597936 lambda!450351) (dynLambda!29005 lambda!450351 lt!2597934))))

(declare-fun lt!2597996 () Unit!164326)

(declare-fun choose!56530 ((Set Context!15608) Context!15608 Int) Unit!164326)

(assert (=> d!2266855 (= lt!2597996 (choose!56530 lt!2597936 lt!2597934 lambda!450351))))

(assert (=> d!2266855 (= lt!2597936 (set.insert lt!2597934 (as set.empty (Set Context!15608))))))

(assert (=> d!2266855 (= (lemmaFlatMapOnSingletonSet!2357 lt!2597936 lt!2597934 lambda!450351) lt!2597996)))

(declare-fun b_lambda!281373 () Bool)

(assert (=> (not b_lambda!281373) (not d!2266855)))

(declare-fun bs!1912919 () Bool)

(assert (= bs!1912919 d!2266855))

(assert (=> bs!1912919 m!7967504))

(declare-fun m!7967574 () Bool)

(assert (=> bs!1912919 m!7967574))

(declare-fun m!7967576 () Bool)

(assert (=> bs!1912919 m!7967576))

(assert (=> bs!1912919 m!7967492))

(assert (=> b!7295808 d!2266855))

(declare-fun d!2266857 () Bool)

(declare-fun forall!17687 (List!71045 Int) Bool)

(assert (=> d!2266857 (forall!17687 (++!16754 (exprs!8304 ct1!250) (exprs!8304 ct2!346)) lambda!450350)))

(declare-fun lt!2597999 () Unit!164326)

(declare-fun choose!56531 (List!71045 List!71045 Int) Unit!164326)

(assert (=> d!2266857 (= lt!2597999 (choose!56531 (exprs!8304 ct1!250) (exprs!8304 ct2!346) lambda!450350))))

(assert (=> d!2266857 (forall!17687 (exprs!8304 ct1!250) lambda!450350)))

(assert (=> d!2266857 (= (lemmaConcatPreservesForall!1611 (exprs!8304 ct1!250) (exprs!8304 ct2!346) lambda!450350) lt!2597999)))

(declare-fun bs!1912920 () Bool)

(assert (= bs!1912920 d!2266857))

(assert (=> bs!1912920 m!7967498))

(assert (=> bs!1912920 m!7967498))

(declare-fun m!7967578 () Bool)

(assert (=> bs!1912920 m!7967578))

(declare-fun m!7967580 () Bool)

(assert (=> bs!1912920 m!7967580))

(declare-fun m!7967582 () Bool)

(assert (=> bs!1912920 m!7967582))

(assert (=> b!7295808 d!2266857))

(declare-fun b!7295878 () Bool)

(declare-fun e!4369845 () List!71045)

(assert (=> b!7295878 (= e!4369845 (Cons!70921 (h!77369 (exprs!8304 ct1!250)) (++!16754 (t!385121 (exprs!8304 ct1!250)) (exprs!8304 ct2!346))))))

(declare-fun b!7295877 () Bool)

(assert (=> b!7295877 (= e!4369845 (exprs!8304 ct2!346))))

(declare-fun b!7295879 () Bool)

(declare-fun res!2951007 () Bool)

(declare-fun e!4369844 () Bool)

(assert (=> b!7295879 (=> (not res!2951007) (not e!4369844))))

(declare-fun lt!2598002 () List!71045)

(declare-fun size!41861 (List!71045) Int)

(assert (=> b!7295879 (= res!2951007 (= (size!41861 lt!2598002) (+ (size!41861 (exprs!8304 ct1!250)) (size!41861 (exprs!8304 ct2!346)))))))

(declare-fun b!7295880 () Bool)

(assert (=> b!7295880 (= e!4369844 (or (not (= (exprs!8304 ct2!346) Nil!70921)) (= lt!2598002 (exprs!8304 ct1!250))))))

(declare-fun d!2266859 () Bool)

(assert (=> d!2266859 e!4369844))

(declare-fun res!2951008 () Bool)

(assert (=> d!2266859 (=> (not res!2951008) (not e!4369844))))

(declare-fun content!14815 (List!71045) (Set Regex!18864))

(assert (=> d!2266859 (= res!2951008 (= (content!14815 lt!2598002) (set.union (content!14815 (exprs!8304 ct1!250)) (content!14815 (exprs!8304 ct2!346)))))))

(assert (=> d!2266859 (= lt!2598002 e!4369845)))

(declare-fun c!1355989 () Bool)

(assert (=> d!2266859 (= c!1355989 (is-Nil!70921 (exprs!8304 ct1!250)))))

(assert (=> d!2266859 (= (++!16754 (exprs!8304 ct1!250) (exprs!8304 ct2!346)) lt!2598002)))

(assert (= (and d!2266859 c!1355989) b!7295877))

(assert (= (and d!2266859 (not c!1355989)) b!7295878))

(assert (= (and d!2266859 res!2951008) b!7295879))

(assert (= (and b!7295879 res!2951007) b!7295880))

(declare-fun m!7967584 () Bool)

(assert (=> b!7295878 m!7967584))

(declare-fun m!7967586 () Bool)

(assert (=> b!7295879 m!7967586))

(declare-fun m!7967588 () Bool)

(assert (=> b!7295879 m!7967588))

(declare-fun m!7967590 () Bool)

(assert (=> b!7295879 m!7967590))

(declare-fun m!7967592 () Bool)

(assert (=> d!2266859 m!7967592))

(declare-fun m!7967594 () Bool)

(assert (=> d!2266859 m!7967594))

(declare-fun m!7967596 () Bool)

(assert (=> d!2266859 m!7967596))

(assert (=> b!7295808 d!2266859))

(declare-fun d!2266861 () Bool)

(declare-fun choose!56532 ((Set Context!15608) Int) (Set Context!15608))

(assert (=> d!2266861 (= (flatMap!2959 lt!2597936 lambda!450351) (choose!56532 lt!2597936 lambda!450351))))

(declare-fun bs!1912921 () Bool)

(assert (= bs!1912921 d!2266861))

(declare-fun m!7967598 () Bool)

(assert (=> bs!1912921 m!7967598))

(assert (=> b!7295808 d!2266861))

(declare-fun d!2266863 () Bool)

(assert (=> d!2266863 (= (flatMap!2959 lt!2597920 lambda!450351) (choose!56532 lt!2597920 lambda!450351))))

(declare-fun bs!1912922 () Bool)

(assert (= bs!1912922 d!2266863))

(declare-fun m!7967600 () Bool)

(assert (=> bs!1912922 m!7967600))

(assert (=> b!7295808 d!2266863))

(declare-fun b!7295881 () Bool)

(declare-fun call!664715 () (Set Context!15608))

(declare-fun e!4369846 () (Set Context!15608))

(assert (=> b!7295881 (= e!4369846 (set.union call!664715 (derivationStepZipperUp!2614 (Context!15609 (t!385121 (exprs!8304 lt!2597934))) (h!77370 s!7854))))))

(declare-fun b!7295882 () Bool)

(declare-fun e!4369848 () Bool)

(assert (=> b!7295882 (= e!4369848 (nullable!8041 (h!77369 (exprs!8304 lt!2597934))))))

(declare-fun b!7295883 () Bool)

(declare-fun e!4369847 () (Set Context!15608))

(assert (=> b!7295883 (= e!4369847 (as set.empty (Set Context!15608)))))

(declare-fun bm!664710 () Bool)

(assert (=> bm!664710 (= call!664715 (derivationStepZipperDown!2770 (h!77369 (exprs!8304 lt!2597934)) (Context!15609 (t!385121 (exprs!8304 lt!2597934))) (h!77370 s!7854)))))

(declare-fun b!7295884 () Bool)

(assert (=> b!7295884 (= e!4369846 e!4369847)))

(declare-fun c!1355990 () Bool)

(assert (=> b!7295884 (= c!1355990 (is-Cons!70921 (exprs!8304 lt!2597934)))))

(declare-fun d!2266865 () Bool)

(declare-fun c!1355991 () Bool)

(assert (=> d!2266865 (= c!1355991 e!4369848)))

(declare-fun res!2951009 () Bool)

(assert (=> d!2266865 (=> (not res!2951009) (not e!4369848))))

(assert (=> d!2266865 (= res!2951009 (is-Cons!70921 (exprs!8304 lt!2597934)))))

(assert (=> d!2266865 (= (derivationStepZipperUp!2614 lt!2597934 (h!77370 s!7854)) e!4369846)))

(declare-fun b!7295885 () Bool)

(assert (=> b!7295885 (= e!4369847 call!664715)))

(assert (= (and d!2266865 res!2951009) b!7295882))

(assert (= (and d!2266865 c!1355991) b!7295881))

(assert (= (and d!2266865 (not c!1355991)) b!7295884))

(assert (= (and b!7295884 c!1355990) b!7295885))

(assert (= (and b!7295884 (not c!1355990)) b!7295883))

(assert (= (or b!7295881 b!7295885) bm!664710))

(declare-fun m!7967602 () Bool)

(assert (=> b!7295881 m!7967602))

(declare-fun m!7967604 () Bool)

(assert (=> b!7295882 m!7967604))

(declare-fun m!7967606 () Bool)

(assert (=> bm!664710 m!7967606))

(assert (=> b!7295808 d!2266865))

(declare-fun bs!1912923 () Bool)

(declare-fun d!2266867 () Bool)

(assert (= bs!1912923 (and d!2266867 b!7295808)))

(declare-fun lambda!450376 () Int)

(assert (=> bs!1912923 (= lambda!450376 lambda!450351)))

(assert (=> d!2266867 true))

(assert (=> d!2266867 (= (derivationStepZipper!3597 lt!2597936 (h!77370 s!7854)) (flatMap!2959 lt!2597936 lambda!450376))))

(declare-fun bs!1912924 () Bool)

(assert (= bs!1912924 d!2266867))

(declare-fun m!7967608 () Bool)

(assert (=> bs!1912924 m!7967608))

(assert (=> b!7295808 d!2266867))

(declare-fun d!2266869 () Bool)

(assert (=> d!2266869 (= (flatMap!2959 lt!2597920 lambda!450351) (dynLambda!29005 lambda!450351 ct1!250))))

(declare-fun lt!2598003 () Unit!164326)

(assert (=> d!2266869 (= lt!2598003 (choose!56530 lt!2597920 ct1!250 lambda!450351))))

(assert (=> d!2266869 (= lt!2597920 (set.insert ct1!250 (as set.empty (Set Context!15608))))))

(assert (=> d!2266869 (= (lemmaFlatMapOnSingletonSet!2357 lt!2597920 ct1!250 lambda!450351) lt!2598003)))

(declare-fun b_lambda!281375 () Bool)

(assert (=> (not b_lambda!281375) (not d!2266869)))

(declare-fun bs!1912925 () Bool)

(assert (= bs!1912925 d!2266869))

(assert (=> bs!1912925 m!7967496))

(declare-fun m!7967610 () Bool)

(assert (=> bs!1912925 m!7967610))

(declare-fun m!7967612 () Bool)

(assert (=> bs!1912925 m!7967612))

(assert (=> bs!1912925 m!7967494))

(assert (=> b!7295808 d!2266869))

(declare-fun d!2266871 () Bool)

(declare-fun c!1355996 () Bool)

(declare-fun isEmpty!40798 (List!71046) Bool)

(assert (=> d!2266871 (= c!1355996 (isEmpty!40798 s!7854))))

(declare-fun e!4369851 () Bool)

(assert (=> d!2266871 (= (matchZipper!3768 (set.insert ct2!346 (as set.empty (Set Context!15608))) s!7854) e!4369851)))

(declare-fun b!7295892 () Bool)

(declare-fun nullableZipper!3058 ((Set Context!15608)) Bool)

(assert (=> b!7295892 (= e!4369851 (nullableZipper!3058 (set.insert ct2!346 (as set.empty (Set Context!15608)))))))

(declare-fun b!7295893 () Bool)

(declare-fun head!15056 (List!71046) C!38002)

(declare-fun tail!14581 (List!71046) List!71046)

(assert (=> b!7295893 (= e!4369851 (matchZipper!3768 (derivationStepZipper!3597 (set.insert ct2!346 (as set.empty (Set Context!15608))) (head!15056 s!7854)) (tail!14581 s!7854)))))

(assert (= (and d!2266871 c!1355996) b!7295892))

(assert (= (and d!2266871 (not c!1355996)) b!7295893))

(declare-fun m!7967614 () Bool)

(assert (=> d!2266871 m!7967614))

(assert (=> b!7295892 m!7967456))

(declare-fun m!7967616 () Bool)

(assert (=> b!7295892 m!7967616))

(declare-fun m!7967618 () Bool)

(assert (=> b!7295893 m!7967618))

(assert (=> b!7295893 m!7967456))

(assert (=> b!7295893 m!7967618))

(declare-fun m!7967620 () Bool)

(assert (=> b!7295893 m!7967620))

(declare-fun m!7967622 () Bool)

(assert (=> b!7295893 m!7967622))

(assert (=> b!7295893 m!7967620))

(assert (=> b!7295893 m!7967622))

(declare-fun m!7967624 () Bool)

(assert (=> b!7295893 m!7967624))

(assert (=> start!711188 d!2266871))

(declare-fun bs!1912926 () Bool)

(declare-fun d!2266873 () Bool)

(assert (= bs!1912926 (and d!2266873 b!7295808)))

(declare-fun lambda!450379 () Int)

(assert (=> bs!1912926 (= lambda!450379 lambda!450350)))

(assert (=> d!2266873 (= (inv!90171 ct2!346) (forall!17687 (exprs!8304 ct2!346) lambda!450379))))

(declare-fun bs!1912927 () Bool)

(assert (= bs!1912927 d!2266873))

(declare-fun m!7967626 () Bool)

(assert (=> bs!1912927 m!7967626))

(assert (=> start!711188 d!2266873))

(declare-fun bs!1912928 () Bool)

(declare-fun d!2266875 () Bool)

(assert (= bs!1912928 (and d!2266875 b!7295808)))

(declare-fun lambda!450380 () Int)

(assert (=> bs!1912928 (= lambda!450380 lambda!450350)))

(declare-fun bs!1912929 () Bool)

(assert (= bs!1912929 (and d!2266875 d!2266873)))

(assert (=> bs!1912929 (= lambda!450380 lambda!450379)))

(assert (=> d!2266875 (= (inv!90171 ct1!250) (forall!17687 (exprs!8304 ct1!250) lambda!450380))))

(declare-fun bs!1912930 () Bool)

(assert (= bs!1912930 d!2266875))

(declare-fun m!7967628 () Bool)

(assert (=> bs!1912930 m!7967628))

(assert (=> start!711188 d!2266875))

(declare-fun d!2266877 () Bool)

(declare-fun c!1355997 () Bool)

(assert (=> d!2266877 (= c!1355997 (isEmpty!40798 s!7854))))

(declare-fun e!4369852 () Bool)

(assert (=> d!2266877 (= (matchZipper!3768 (set.insert lt!2597919 (as set.empty (Set Context!15608))) s!7854) e!4369852)))

(declare-fun b!7295894 () Bool)

(assert (=> b!7295894 (= e!4369852 (nullableZipper!3058 (set.insert lt!2597919 (as set.empty (Set Context!15608)))))))

(declare-fun b!7295895 () Bool)

(assert (=> b!7295895 (= e!4369852 (matchZipper!3768 (derivationStepZipper!3597 (set.insert lt!2597919 (as set.empty (Set Context!15608))) (head!15056 s!7854)) (tail!14581 s!7854)))))

(assert (= (and d!2266877 c!1355997) b!7295894))

(assert (= (and d!2266877 (not c!1355997)) b!7295895))

(assert (=> d!2266877 m!7967614))

(assert (=> b!7295894 m!7967476))

(declare-fun m!7967630 () Bool)

(assert (=> b!7295894 m!7967630))

(assert (=> b!7295895 m!7967618))

(assert (=> b!7295895 m!7967476))

(assert (=> b!7295895 m!7967618))

(declare-fun m!7967632 () Bool)

(assert (=> b!7295895 m!7967632))

(assert (=> b!7295895 m!7967622))

(assert (=> b!7295895 m!7967632))

(assert (=> b!7295895 m!7967622))

(declare-fun m!7967634 () Bool)

(assert (=> b!7295895 m!7967634))

(assert (=> b!7295802 d!2266877))

(declare-fun d!2266879 () Bool)

(assert (=> d!2266879 (forall!17687 (++!16754 lt!2597931 (exprs!8304 ct2!346)) lambda!450350)))

(declare-fun lt!2598004 () Unit!164326)

(assert (=> d!2266879 (= lt!2598004 (choose!56531 lt!2597931 (exprs!8304 ct2!346) lambda!450350))))

(assert (=> d!2266879 (forall!17687 lt!2597931 lambda!450350)))

(assert (=> d!2266879 (= (lemmaConcatPreservesForall!1611 lt!2597931 (exprs!8304 ct2!346) lambda!450350) lt!2598004)))

(declare-fun bs!1912931 () Bool)

(assert (= bs!1912931 d!2266879))

(assert (=> bs!1912931 m!7967468))

(assert (=> bs!1912931 m!7967468))

(declare-fun m!7967636 () Bool)

(assert (=> bs!1912931 m!7967636))

(declare-fun m!7967638 () Bool)

(assert (=> bs!1912931 m!7967638))

(declare-fun m!7967640 () Bool)

(assert (=> bs!1912931 m!7967640))

(assert (=> b!7295802 d!2266879))

(declare-fun bs!1912932 () Bool)

(declare-fun d!2266881 () Bool)

(assert (= bs!1912932 (and d!2266881 b!7295808)))

(declare-fun lambda!450381 () Int)

(assert (=> bs!1912932 (= lambda!450381 lambda!450350)))

(declare-fun bs!1912933 () Bool)

(assert (= bs!1912933 (and d!2266881 d!2266873)))

(assert (=> bs!1912933 (= lambda!450381 lambda!450379)))

(declare-fun bs!1912934 () Bool)

(assert (= bs!1912934 (and d!2266881 d!2266875)))

(assert (=> bs!1912934 (= lambda!450381 lambda!450380)))

(assert (=> d!2266881 (= (inv!90171 lt!2597919) (forall!17687 (exprs!8304 lt!2597919) lambda!450381))))

(declare-fun bs!1912935 () Bool)

(assert (= bs!1912935 d!2266881))

(declare-fun m!7967642 () Bool)

(assert (=> bs!1912935 m!7967642))

(assert (=> b!7295802 d!2266881))

(declare-fun bs!1912938 () Bool)

(declare-fun d!2266883 () Bool)

(assert (= bs!1912938 (and d!2266883 b!7295808)))

(declare-fun lambda!450387 () Int)

(assert (=> bs!1912938 (= lambda!450387 lambda!450350)))

(declare-fun bs!1912939 () Bool)

(assert (= bs!1912939 (and d!2266883 d!2266873)))

(assert (=> bs!1912939 (= lambda!450387 lambda!450379)))

(declare-fun bs!1912940 () Bool)

(assert (= bs!1912940 (and d!2266883 d!2266875)))

(assert (=> bs!1912940 (= lambda!450387 lambda!450380)))

(declare-fun bs!1912941 () Bool)

(assert (= bs!1912941 (and d!2266883 d!2266881)))

(assert (=> bs!1912941 (= lambda!450387 lambda!450381)))

(assert (=> d!2266883 (matchZipper!3768 (set.insert (Context!15609 (++!16754 (exprs!8304 lt!2597930) (exprs!8304 ct2!346))) (as set.empty (Set Context!15608))) s!7854)))

(declare-fun lt!2598010 () Unit!164326)

(assert (=> d!2266883 (= lt!2598010 (lemmaConcatPreservesForall!1611 (exprs!8304 lt!2597930) (exprs!8304 ct2!346) lambda!450387))))

(declare-fun lt!2598009 () Unit!164326)

(declare-fun choose!56533 (Context!15608 Context!15608 List!71046) Unit!164326)

(assert (=> d!2266883 (= lt!2598009 (choose!56533 lt!2597930 ct2!346 s!7854))))

(assert (=> d!2266883 (matchZipper!3768 (set.insert ct2!346 (as set.empty (Set Context!15608))) s!7854)))

(assert (=> d!2266883 (= (lemmaPrependingNullableCtxStillMatches!47 lt!2597930 ct2!346 s!7854) lt!2598009)))

(declare-fun bs!1912942 () Bool)

(assert (= bs!1912942 d!2266883))

(declare-fun m!7967646 () Bool)

(assert (=> bs!1912942 m!7967646))

(declare-fun m!7967648 () Bool)

(assert (=> bs!1912942 m!7967648))

(assert (=> bs!1912942 m!7967456))

(declare-fun m!7967650 () Bool)

(assert (=> bs!1912942 m!7967650))

(assert (=> bs!1912942 m!7967456))

(assert (=> bs!1912942 m!7967458))

(assert (=> bs!1912942 m!7967650))

(declare-fun m!7967652 () Bool)

(assert (=> bs!1912942 m!7967652))

(declare-fun m!7967654 () Bool)

(assert (=> bs!1912942 m!7967654))

(assert (=> b!7295802 d!2266883))

(declare-fun bs!1912943 () Bool)

(declare-fun d!2266889 () Bool)

(assert (= bs!1912943 (and d!2266889 d!2266873)))

(declare-fun lambda!450390 () Int)

(assert (=> bs!1912943 (not (= lambda!450390 lambda!450379))))

(declare-fun bs!1912944 () Bool)

(assert (= bs!1912944 (and d!2266889 b!7295808)))

(assert (=> bs!1912944 (not (= lambda!450390 lambda!450350))))

(declare-fun bs!1912945 () Bool)

(assert (= bs!1912945 (and d!2266889 d!2266881)))

(assert (=> bs!1912945 (not (= lambda!450390 lambda!450381))))

(declare-fun bs!1912946 () Bool)

(assert (= bs!1912946 (and d!2266889 d!2266883)))

(assert (=> bs!1912946 (not (= lambda!450390 lambda!450387))))

(declare-fun bs!1912947 () Bool)

(assert (= bs!1912947 (and d!2266889 d!2266875)))

(assert (=> bs!1912947 (not (= lambda!450390 lambda!450380))))

(assert (=> d!2266889 (= (nullableContext!354 ct1!250) (forall!17687 (exprs!8304 ct1!250) lambda!450390))))

(declare-fun bs!1912948 () Bool)

(assert (= bs!1912948 d!2266889))

(declare-fun m!7967656 () Bool)

(assert (=> bs!1912948 m!7967656))

(assert (=> b!7295812 d!2266889))

(declare-fun d!2266891 () Bool)

(assert (=> d!2266891 (= (isEmpty!40796 (exprs!8304 ct1!250)) (is-Nil!70921 (exprs!8304 ct1!250)))))

(assert (=> b!7295807 d!2266891))

(declare-fun b!7295918 () Bool)

(declare-fun e!4369865 () (Set Context!15608))

(declare-fun e!4369869 () (Set Context!15608))

(assert (=> b!7295918 (= e!4369865 e!4369869)))

(declare-fun c!1356012 () Bool)

(assert (=> b!7295918 (= c!1356012 (is-Union!18864 (h!77369 (exprs!8304 ct1!250))))))

(declare-fun b!7295919 () Bool)

(declare-fun e!4369866 () (Set Context!15608))

(assert (=> b!7295919 (= e!4369866 (as set.empty (Set Context!15608)))))

(declare-fun b!7295920 () Bool)

(declare-fun c!1356013 () Bool)

(declare-fun e!4369868 () Bool)

(assert (=> b!7295920 (= c!1356013 e!4369868)))

(declare-fun res!2951012 () Bool)

(assert (=> b!7295920 (=> (not res!2951012) (not e!4369868))))

(assert (=> b!7295920 (= res!2951012 (is-Concat!27709 (h!77369 (exprs!8304 ct1!250))))))

(declare-fun e!4369870 () (Set Context!15608))

(assert (=> b!7295920 (= e!4369869 e!4369870)))

(declare-fun call!664729 () List!71045)

(declare-fun bm!664723 () Bool)

(declare-fun call!664733 () (Set Context!15608))

(declare-fun c!1356011 () Bool)

(assert (=> bm!664723 (= call!664733 (derivationStepZipperDown!2770 (ite c!1356012 (regOne!38241 (h!77369 (exprs!8304 ct1!250))) (ite c!1356013 (regTwo!38240 (h!77369 (exprs!8304 ct1!250))) (ite c!1356011 (regOne!38240 (h!77369 (exprs!8304 ct1!250))) (reg!19193 (h!77369 (exprs!8304 ct1!250)))))) (ite (or c!1356012 c!1356013) lt!2597930 (Context!15609 call!664729)) (h!77370 s!7854)))))

(declare-fun b!7295921 () Bool)

(declare-fun e!4369867 () (Set Context!15608))

(assert (=> b!7295921 (= e!4369870 e!4369867)))

(assert (=> b!7295921 (= c!1356011 (is-Concat!27709 (h!77369 (exprs!8304 ct1!250))))))

(declare-fun b!7295922 () Bool)

(declare-fun call!664728 () (Set Context!15608))

(declare-fun call!664731 () (Set Context!15608))

(assert (=> b!7295922 (= e!4369870 (set.union call!664728 call!664731))))

(declare-fun b!7295923 () Bool)

(assert (=> b!7295923 (= e!4369869 (set.union call!664733 call!664728))))

(declare-fun call!664730 () List!71045)

(declare-fun bm!664724 () Bool)

(assert (=> bm!664724 (= call!664728 (derivationStepZipperDown!2770 (ite c!1356012 (regTwo!38241 (h!77369 (exprs!8304 ct1!250))) (regOne!38240 (h!77369 (exprs!8304 ct1!250)))) (ite c!1356012 lt!2597930 (Context!15609 call!664730)) (h!77370 s!7854)))))

(declare-fun b!7295924 () Bool)

(declare-fun call!664732 () (Set Context!15608))

(assert (=> b!7295924 (= e!4369866 call!664732)))

(declare-fun d!2266893 () Bool)

(declare-fun c!1356009 () Bool)

(assert (=> d!2266893 (= c!1356009 (and (is-ElementMatch!18864 (h!77369 (exprs!8304 ct1!250))) (= (c!1355975 (h!77369 (exprs!8304 ct1!250))) (h!77370 s!7854))))))

(assert (=> d!2266893 (= (derivationStepZipperDown!2770 (h!77369 (exprs!8304 ct1!250)) lt!2597930 (h!77370 s!7854)) e!4369865)))

(declare-fun b!7295925 () Bool)

(assert (=> b!7295925 (= e!4369868 (nullable!8041 (regOne!38240 (h!77369 (exprs!8304 ct1!250)))))))

(declare-fun b!7295926 () Bool)

(assert (=> b!7295926 (= e!4369867 call!664732)))

(declare-fun bm!664725 () Bool)

(assert (=> bm!664725 (= call!664731 call!664733)))

(declare-fun bm!664726 () Bool)

(declare-fun $colon$colon!2995 (List!71045 Regex!18864) List!71045)

(assert (=> bm!664726 (= call!664730 ($colon$colon!2995 (exprs!8304 lt!2597930) (ite (or c!1356013 c!1356011) (regTwo!38240 (h!77369 (exprs!8304 ct1!250))) (h!77369 (exprs!8304 ct1!250)))))))

(declare-fun b!7295927 () Bool)

(assert (=> b!7295927 (= e!4369865 (set.insert lt!2597930 (as set.empty (Set Context!15608))))))

(declare-fun bm!664727 () Bool)

(assert (=> bm!664727 (= call!664729 call!664730)))

(declare-fun b!7295928 () Bool)

(declare-fun c!1356010 () Bool)

(assert (=> b!7295928 (= c!1356010 (is-Star!18864 (h!77369 (exprs!8304 ct1!250))))))

(assert (=> b!7295928 (= e!4369867 e!4369866)))

(declare-fun bm!664728 () Bool)

(assert (=> bm!664728 (= call!664732 call!664731)))

(assert (= (and d!2266893 c!1356009) b!7295927))

(assert (= (and d!2266893 (not c!1356009)) b!7295918))

(assert (= (and b!7295918 c!1356012) b!7295923))

(assert (= (and b!7295918 (not c!1356012)) b!7295920))

(assert (= (and b!7295920 res!2951012) b!7295925))

(assert (= (and b!7295920 c!1356013) b!7295922))

(assert (= (and b!7295920 (not c!1356013)) b!7295921))

(assert (= (and b!7295921 c!1356011) b!7295926))

(assert (= (and b!7295921 (not c!1356011)) b!7295928))

(assert (= (and b!7295928 c!1356010) b!7295924))

(assert (= (and b!7295928 (not c!1356010)) b!7295919))

(assert (= (or b!7295926 b!7295924) bm!664727))

(assert (= (or b!7295926 b!7295924) bm!664728))

(assert (= (or b!7295922 bm!664727) bm!664726))

(assert (= (or b!7295922 bm!664728) bm!664725))

(assert (= (or b!7295923 bm!664725) bm!664723))

(assert (= (or b!7295923 b!7295922) bm!664724))

(declare-fun m!7967658 () Bool)

(assert (=> b!7295925 m!7967658))

(declare-fun m!7967660 () Bool)

(assert (=> bm!664726 m!7967660))

(declare-fun m!7967662 () Bool)

(assert (=> bm!664724 m!7967662))

(declare-fun m!7967664 () Bool)

(assert (=> bm!664723 m!7967664))

(declare-fun m!7967666 () Bool)

(assert (=> b!7295927 m!7967666))

(assert (=> b!7295806 d!2266893))

(declare-fun e!4369871 () (Set Context!15608))

(declare-fun b!7295929 () Bool)

(declare-fun call!664734 () (Set Context!15608))

(assert (=> b!7295929 (= e!4369871 (set.union call!664734 (derivationStepZipperUp!2614 (Context!15609 (t!385121 (exprs!8304 lt!2597930))) (h!77370 s!7854))))))

(declare-fun b!7295930 () Bool)

(declare-fun e!4369873 () Bool)

(assert (=> b!7295930 (= e!4369873 (nullable!8041 (h!77369 (exprs!8304 lt!2597930))))))

(declare-fun b!7295931 () Bool)

(declare-fun e!4369872 () (Set Context!15608))

(assert (=> b!7295931 (= e!4369872 (as set.empty (Set Context!15608)))))

(declare-fun bm!664729 () Bool)

(assert (=> bm!664729 (= call!664734 (derivationStepZipperDown!2770 (h!77369 (exprs!8304 lt!2597930)) (Context!15609 (t!385121 (exprs!8304 lt!2597930))) (h!77370 s!7854)))))

(declare-fun b!7295932 () Bool)

(assert (=> b!7295932 (= e!4369871 e!4369872)))

(declare-fun c!1356014 () Bool)

(assert (=> b!7295932 (= c!1356014 (is-Cons!70921 (exprs!8304 lt!2597930)))))

(declare-fun d!2266895 () Bool)

(declare-fun c!1356015 () Bool)

(assert (=> d!2266895 (= c!1356015 e!4369873)))

(declare-fun res!2951013 () Bool)

(assert (=> d!2266895 (=> (not res!2951013) (not e!4369873))))

(assert (=> d!2266895 (= res!2951013 (is-Cons!70921 (exprs!8304 lt!2597930)))))

(assert (=> d!2266895 (= (derivationStepZipperUp!2614 lt!2597930 (h!77370 s!7854)) e!4369871)))

(declare-fun b!7295933 () Bool)

(assert (=> b!7295933 (= e!4369872 call!664734)))

(assert (= (and d!2266895 res!2951013) b!7295930))

(assert (= (and d!2266895 c!1356015) b!7295929))

(assert (= (and d!2266895 (not c!1356015)) b!7295932))

(assert (= (and b!7295932 c!1356014) b!7295933))

(assert (= (and b!7295932 (not c!1356014)) b!7295931))

(assert (= (or b!7295929 b!7295933) bm!664729))

(declare-fun m!7967668 () Bool)

(assert (=> b!7295929 m!7967668))

(declare-fun m!7967670 () Bool)

(assert (=> b!7295930 m!7967670))

(declare-fun m!7967672 () Bool)

(assert (=> bm!664729 m!7967672))

(assert (=> b!7295806 d!2266895))

(assert (=> b!7295805 d!2266879))

(declare-fun b!7295934 () Bool)

(declare-fun e!4369874 () (Set Context!15608))

(declare-fun e!4369878 () (Set Context!15608))

(assert (=> b!7295934 (= e!4369874 e!4369878)))

(declare-fun c!1356019 () Bool)

(assert (=> b!7295934 (= c!1356019 (is-Union!18864 (h!77369 (exprs!8304 ct1!250))))))

(declare-fun b!7295935 () Bool)

(declare-fun e!4369875 () (Set Context!15608))

(assert (=> b!7295935 (= e!4369875 (as set.empty (Set Context!15608)))))

(declare-fun b!7295936 () Bool)

(declare-fun c!1356020 () Bool)

(declare-fun e!4369877 () Bool)

(assert (=> b!7295936 (= c!1356020 e!4369877)))

(declare-fun res!2951014 () Bool)

(assert (=> b!7295936 (=> (not res!2951014) (not e!4369877))))

(assert (=> b!7295936 (= res!2951014 (is-Concat!27709 (h!77369 (exprs!8304 ct1!250))))))

(declare-fun e!4369879 () (Set Context!15608))

(assert (=> b!7295936 (= e!4369878 e!4369879)))

(declare-fun c!1356018 () Bool)

(declare-fun bm!664730 () Bool)

(declare-fun call!664736 () List!71045)

(declare-fun call!664740 () (Set Context!15608))

(assert (=> bm!664730 (= call!664740 (derivationStepZipperDown!2770 (ite c!1356019 (regOne!38241 (h!77369 (exprs!8304 ct1!250))) (ite c!1356020 (regTwo!38240 (h!77369 (exprs!8304 ct1!250))) (ite c!1356018 (regOne!38240 (h!77369 (exprs!8304 ct1!250))) (reg!19193 (h!77369 (exprs!8304 ct1!250)))))) (ite (or c!1356019 c!1356020) lt!2597919 (Context!15609 call!664736)) (h!77370 s!7854)))))

(declare-fun b!7295937 () Bool)

(declare-fun e!4369876 () (Set Context!15608))

(assert (=> b!7295937 (= e!4369879 e!4369876)))

(assert (=> b!7295937 (= c!1356018 (is-Concat!27709 (h!77369 (exprs!8304 ct1!250))))))

(declare-fun b!7295938 () Bool)

(declare-fun call!664735 () (Set Context!15608))

(declare-fun call!664738 () (Set Context!15608))

(assert (=> b!7295938 (= e!4369879 (set.union call!664735 call!664738))))

(declare-fun b!7295939 () Bool)

(assert (=> b!7295939 (= e!4369878 (set.union call!664740 call!664735))))

(declare-fun call!664737 () List!71045)

(declare-fun bm!664731 () Bool)

(assert (=> bm!664731 (= call!664735 (derivationStepZipperDown!2770 (ite c!1356019 (regTwo!38241 (h!77369 (exprs!8304 ct1!250))) (regOne!38240 (h!77369 (exprs!8304 ct1!250)))) (ite c!1356019 lt!2597919 (Context!15609 call!664737)) (h!77370 s!7854)))))

(declare-fun b!7295940 () Bool)

(declare-fun call!664739 () (Set Context!15608))

(assert (=> b!7295940 (= e!4369875 call!664739)))

(declare-fun d!2266897 () Bool)

(declare-fun c!1356016 () Bool)

(assert (=> d!2266897 (= c!1356016 (and (is-ElementMatch!18864 (h!77369 (exprs!8304 ct1!250))) (= (c!1355975 (h!77369 (exprs!8304 ct1!250))) (h!77370 s!7854))))))

(assert (=> d!2266897 (= (derivationStepZipperDown!2770 (h!77369 (exprs!8304 ct1!250)) lt!2597919 (h!77370 s!7854)) e!4369874)))

(declare-fun b!7295941 () Bool)

(assert (=> b!7295941 (= e!4369877 (nullable!8041 (regOne!38240 (h!77369 (exprs!8304 ct1!250)))))))

(declare-fun b!7295942 () Bool)

(assert (=> b!7295942 (= e!4369876 call!664739)))

(declare-fun bm!664732 () Bool)

(assert (=> bm!664732 (= call!664738 call!664740)))

(declare-fun bm!664733 () Bool)

(assert (=> bm!664733 (= call!664737 ($colon$colon!2995 (exprs!8304 lt!2597919) (ite (or c!1356020 c!1356018) (regTwo!38240 (h!77369 (exprs!8304 ct1!250))) (h!77369 (exprs!8304 ct1!250)))))))

(declare-fun b!7295943 () Bool)

(assert (=> b!7295943 (= e!4369874 (set.insert lt!2597919 (as set.empty (Set Context!15608))))))

(declare-fun bm!664734 () Bool)

(assert (=> bm!664734 (= call!664736 call!664737)))

(declare-fun b!7295944 () Bool)

(declare-fun c!1356017 () Bool)

(assert (=> b!7295944 (= c!1356017 (is-Star!18864 (h!77369 (exprs!8304 ct1!250))))))

(assert (=> b!7295944 (= e!4369876 e!4369875)))

(declare-fun bm!664735 () Bool)

(assert (=> bm!664735 (= call!664739 call!664738)))

(assert (= (and d!2266897 c!1356016) b!7295943))

(assert (= (and d!2266897 (not c!1356016)) b!7295934))

(assert (= (and b!7295934 c!1356019) b!7295939))

(assert (= (and b!7295934 (not c!1356019)) b!7295936))

(assert (= (and b!7295936 res!2951014) b!7295941))

(assert (= (and b!7295936 c!1356020) b!7295938))

(assert (= (and b!7295936 (not c!1356020)) b!7295937))

(assert (= (and b!7295937 c!1356018) b!7295942))

(assert (= (and b!7295937 (not c!1356018)) b!7295944))

(assert (= (and b!7295944 c!1356017) b!7295940))

(assert (= (and b!7295944 (not c!1356017)) b!7295935))

(assert (= (or b!7295942 b!7295940) bm!664734))

(assert (= (or b!7295942 b!7295940) bm!664735))

(assert (= (or b!7295938 bm!664734) bm!664733))

(assert (= (or b!7295938 bm!664735) bm!664732))

(assert (= (or b!7295939 bm!664732) bm!664730))

(assert (= (or b!7295939 b!7295938) bm!664731))

(assert (=> b!7295941 m!7967658))

(declare-fun m!7967674 () Bool)

(assert (=> bm!664733 m!7967674))

(declare-fun m!7967676 () Bool)

(assert (=> bm!664731 m!7967676))

(declare-fun m!7967678 () Bool)

(assert (=> bm!664730 m!7967678))

(assert (=> b!7295943 m!7967476))

(assert (=> b!7295805 d!2266897))

(declare-fun b!7295945 () Bool)

(declare-fun e!4369880 () (Set Context!15608))

(declare-fun call!664741 () (Set Context!15608))

(assert (=> b!7295945 (= e!4369880 (set.union call!664741 (derivationStepZipperUp!2614 (Context!15609 (t!385121 (exprs!8304 lt!2597919))) (h!77370 s!7854))))))

(declare-fun b!7295946 () Bool)

(declare-fun e!4369882 () Bool)

(assert (=> b!7295946 (= e!4369882 (nullable!8041 (h!77369 (exprs!8304 lt!2597919))))))

(declare-fun b!7295947 () Bool)

(declare-fun e!4369881 () (Set Context!15608))

(assert (=> b!7295947 (= e!4369881 (as set.empty (Set Context!15608)))))

(declare-fun bm!664736 () Bool)

(assert (=> bm!664736 (= call!664741 (derivationStepZipperDown!2770 (h!77369 (exprs!8304 lt!2597919)) (Context!15609 (t!385121 (exprs!8304 lt!2597919))) (h!77370 s!7854)))))

(declare-fun b!7295948 () Bool)

(assert (=> b!7295948 (= e!4369880 e!4369881)))

(declare-fun c!1356021 () Bool)

(assert (=> b!7295948 (= c!1356021 (is-Cons!70921 (exprs!8304 lt!2597919)))))

(declare-fun d!2266899 () Bool)

(declare-fun c!1356022 () Bool)

(assert (=> d!2266899 (= c!1356022 e!4369882)))

(declare-fun res!2951015 () Bool)

(assert (=> d!2266899 (=> (not res!2951015) (not e!4369882))))

(assert (=> d!2266899 (= res!2951015 (is-Cons!70921 (exprs!8304 lt!2597919)))))

(assert (=> d!2266899 (= (derivationStepZipperUp!2614 lt!2597919 (h!77370 s!7854)) e!4369880)))

(declare-fun b!7295949 () Bool)

(assert (=> b!7295949 (= e!4369881 call!664741)))

(assert (= (and d!2266899 res!2951015) b!7295946))

(assert (= (and d!2266899 c!1356022) b!7295945))

(assert (= (and d!2266899 (not c!1356022)) b!7295948))

(assert (= (and b!7295948 c!1356021) b!7295949))

(assert (= (and b!7295948 (not c!1356021)) b!7295947))

(assert (= (or b!7295945 b!7295949) bm!664736))

(declare-fun m!7967680 () Bool)

(assert (=> b!7295945 m!7967680))

(declare-fun m!7967682 () Bool)

(assert (=> b!7295946 m!7967682))

(declare-fun m!7967684 () Bool)

(assert (=> bm!664736 m!7967684))

(assert (=> b!7295805 d!2266899))

(declare-fun b!7295951 () Bool)

(declare-fun e!4369884 () List!71045)

(assert (=> b!7295951 (= e!4369884 (Cons!70921 (h!77369 lt!2597931) (++!16754 (t!385121 lt!2597931) (exprs!8304 ct2!346))))))

(declare-fun b!7295950 () Bool)

(assert (=> b!7295950 (= e!4369884 (exprs!8304 ct2!346))))

(declare-fun b!7295952 () Bool)

(declare-fun res!2951016 () Bool)

(declare-fun e!4369883 () Bool)

(assert (=> b!7295952 (=> (not res!2951016) (not e!4369883))))

(declare-fun lt!2598017 () List!71045)

(assert (=> b!7295952 (= res!2951016 (= (size!41861 lt!2598017) (+ (size!41861 lt!2597931) (size!41861 (exprs!8304 ct2!346)))))))

(declare-fun b!7295953 () Bool)

(assert (=> b!7295953 (= e!4369883 (or (not (= (exprs!8304 ct2!346) Nil!70921)) (= lt!2598017 lt!2597931)))))

(declare-fun d!2266901 () Bool)

(assert (=> d!2266901 e!4369883))

(declare-fun res!2951017 () Bool)

(assert (=> d!2266901 (=> (not res!2951017) (not e!4369883))))

(assert (=> d!2266901 (= res!2951017 (= (content!14815 lt!2598017) (set.union (content!14815 lt!2597931) (content!14815 (exprs!8304 ct2!346)))))))

(assert (=> d!2266901 (= lt!2598017 e!4369884)))

(declare-fun c!1356023 () Bool)

(assert (=> d!2266901 (= c!1356023 (is-Nil!70921 lt!2597931))))

(assert (=> d!2266901 (= (++!16754 lt!2597931 (exprs!8304 ct2!346)) lt!2598017)))

(assert (= (and d!2266901 c!1356023) b!7295950))

(assert (= (and d!2266901 (not c!1356023)) b!7295951))

(assert (= (and d!2266901 res!2951017) b!7295952))

(assert (= (and b!7295952 res!2951016) b!7295953))

(declare-fun m!7967686 () Bool)

(assert (=> b!7295951 m!7967686))

(declare-fun m!7967688 () Bool)

(assert (=> b!7295952 m!7967688))

(declare-fun m!7967690 () Bool)

(assert (=> b!7295952 m!7967690))

(assert (=> b!7295952 m!7967590))

(declare-fun m!7967692 () Bool)

(assert (=> d!2266901 m!7967692))

(declare-fun m!7967694 () Bool)

(assert (=> d!2266901 m!7967694))

(assert (=> d!2266901 m!7967596))

(assert (=> b!7295805 d!2266901))

(declare-fun d!2266903 () Bool)

(declare-fun nullableFct!3178 (Regex!18864) Bool)

(assert (=> d!2266903 (= (nullable!8041 (h!77369 (exprs!8304 ct1!250))) (nullableFct!3178 (h!77369 (exprs!8304 ct1!250))))))

(declare-fun bs!1912951 () Bool)

(assert (= bs!1912951 d!2266903))

(declare-fun m!7967696 () Bool)

(assert (=> bs!1912951 m!7967696))

(assert (=> b!7295804 d!2266903))

(assert (=> b!7295804 d!2266853))

(declare-fun d!2266905 () Bool)

(assert (=> d!2266905 (= (tail!14579 (exprs!8304 ct1!250)) (t!385121 (exprs!8304 ct1!250)))))

(assert (=> b!7295804 d!2266905))

(declare-fun b!7295958 () Bool)

(declare-fun e!4369887 () Bool)

(declare-fun tp!2062357 () Bool)

(assert (=> b!7295958 (= e!4369887 (and tp_is_empty!47193 tp!2062357))))

(assert (=> b!7295809 (= tp!2062343 e!4369887)))

(assert (= (and b!7295809 (is-Cons!70922 (t!385122 s!7854))) b!7295958))

(declare-fun b!7295963 () Bool)

(declare-fun e!4369890 () Bool)

(declare-fun tp!2062362 () Bool)

(declare-fun tp!2062363 () Bool)

(assert (=> b!7295963 (= e!4369890 (and tp!2062362 tp!2062363))))

(assert (=> b!7295803 (= tp!2062345 e!4369890)))

(assert (= (and b!7295803 (is-Cons!70921 (exprs!8304 ct1!250))) b!7295963))

(declare-fun b!7295964 () Bool)

(declare-fun e!4369891 () Bool)

(declare-fun tp!2062364 () Bool)

(declare-fun tp!2062365 () Bool)

(assert (=> b!7295964 (= e!4369891 (and tp!2062364 tp!2062365))))

(assert (=> b!7295810 (= tp!2062344 e!4369891)))

(assert (= (and b!7295810 (is-Cons!70921 (exprs!8304 ct2!346))) b!7295964))

(declare-fun b_lambda!281377 () Bool)

(assert (= b_lambda!281375 (or b!7295808 b_lambda!281377)))

(declare-fun bs!1912953 () Bool)

(declare-fun d!2266909 () Bool)

(assert (= bs!1912953 (and d!2266909 b!7295808)))

(assert (=> bs!1912953 (= (dynLambda!29005 lambda!450351 ct1!250) (derivationStepZipperUp!2614 ct1!250 (h!77370 s!7854)))))

(assert (=> bs!1912953 m!7967500))

(assert (=> d!2266869 d!2266909))

(declare-fun b_lambda!281379 () Bool)

(assert (= b_lambda!281373 (or b!7295808 b_lambda!281379)))

(declare-fun bs!1912954 () Bool)

(declare-fun d!2266911 () Bool)

(assert (= bs!1912954 (and d!2266911 b!7295808)))

(assert (=> bs!1912954 (= (dynLambda!29005 lambda!450351 lt!2597934) (derivationStepZipperUp!2614 lt!2597934 (h!77370 s!7854)))))

(assert (=> bs!1912954 m!7967490))

(assert (=> d!2266855 d!2266911))

(push 1)

(assert (not b!7295929))

(assert (not bm!664733))

(assert (not b!7295881))

(assert (not b!7295958))

(assert (not bs!1912953))

(assert (not d!2266869))

(assert (not bm!664710))

(assert (not b!7295879))

(assert (not d!2266881))

(assert (not d!2266873))

(assert (not d!2266903))

(assert (not bm!664729))

(assert (not b!7295964))

(assert (not b_lambda!281379))

(assert (not b!7295963))

(assert (not b_lambda!281377))

(assert (not d!2266859))

(assert (not d!2266863))

(assert (not b!7295878))

(assert (not d!2266877))

(assert (not bm!664709))

(assert (not b!7295893))

(assert (not d!2266867))

(assert (not d!2266901))

(assert (not d!2266879))

(assert (not d!2266857))

(assert (not bm!664723))

(assert (not bm!664726))

(assert (not b!7295930))

(assert (not b!7295925))

(assert (not b!7295941))

(assert (not d!2266861))

(assert (not bm!664730))

(assert (not b!7295882))

(assert tp_is_empty!47193)

(assert (not bs!1912954))

(assert (not d!2266871))

(assert (not d!2266875))

(assert (not b!7295895))

(assert (not d!2266855))

(assert (not b!7295864))

(assert (not bm!664736))

(assert (not bm!664731))

(assert (not b!7295952))

(assert (not b!7295865))

(assert (not b!7295946))

(assert (not b!7295894))

(assert (not b!7295951))

(assert (not b!7295892))

(assert (not bm!664724))

(assert (not d!2266883))

(assert (not d!2266889))

(assert (not b!7295945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

