; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701250 () Bool)

(assert start!701250)

(declare-fun b!7229858 () Bool)

(declare-fun res!2933282 () Bool)

(declare-fun e!4334044 () Bool)

(assert (=> b!7229858 (=> (not res!2933282) (not e!4334044))))

(declare-datatypes ((C!37222 0))(
  ( (C!37223 (val!28559 Int)) )
))
(declare-datatypes ((Regex!18474 0))(
  ( (ElementMatch!18474 (c!1341284 C!37222)) (Concat!27319 (regOne!37460 Regex!18474) (regTwo!37460 Regex!18474)) (EmptyExpr!18474) (Star!18474 (reg!18803 Regex!18474)) (EmptyLang!18474) (Union!18474 (regOne!37461 Regex!18474) (regTwo!37461 Regex!18474)) )
))
(declare-datatypes ((List!70036 0))(
  ( (Nil!69912) (Cons!69912 (h!76360 Regex!18474) (t!384085 List!70036)) )
))
(declare-datatypes ((Context!14828 0))(
  ( (Context!14829 (exprs!7914 List!70036)) )
))
(declare-fun ct2!328 () Context!14828)

(declare-datatypes ((List!70037 0))(
  ( (Nil!69913) (Cons!69913 (h!76361 C!37222) (t!384086 List!70037)) )
))
(declare-fun s2!1849 () List!70037)

(declare-fun matchZipper!3384 ((Set Context!14828) List!70037) Bool)

(assert (=> b!7229858 (= res!2933282 (matchZipper!3384 (set.insert ct2!328 (as set.empty (Set Context!14828))) s2!1849))))

(declare-fun b!7229859 () Bool)

(declare-fun e!4334039 () Bool)

(assert (=> b!7229859 (= e!4334044 e!4334039)))

(declare-fun res!2933283 () Bool)

(assert (=> b!7229859 (=> (not res!2933283) (not e!4334039))))

(declare-fun ct1!232 () Context!14828)

(assert (=> b!7229859 (= res!2933283 (is-Nil!69912 (exprs!7914 ct1!232)))))

(declare-fun lt!2572700 () List!70036)

(declare-fun ++!16254 (List!70036 List!70036) List!70036)

(assert (=> b!7229859 (= lt!2572700 (++!16254 (exprs!7914 ct1!232) (exprs!7914 ct2!328)))))

(declare-fun lambda!439000 () Int)

(declare-datatypes ((Unit!163483 0))(
  ( (Unit!163484) )
))
(declare-fun lt!2572696 () Unit!163483)

(declare-fun lemmaConcatPreservesForall!1283 (List!70036 List!70036 Int) Unit!163483)

(assert (=> b!7229859 (= lt!2572696 (lemmaConcatPreservesForall!1283 (exprs!7914 ct1!232) (exprs!7914 ct2!328) lambda!439000))))

(declare-fun b!7229860 () Bool)

(declare-fun e!4334046 () Bool)

(declare-fun tp!2033475 () Bool)

(assert (=> b!7229860 (= e!4334046 tp!2033475)))

(declare-fun b!7229861 () Bool)

(declare-fun e!4334043 () Bool)

(declare-fun e!4334041 () Bool)

(assert (=> b!7229861 (= e!4334043 e!4334041)))

(declare-fun res!2933280 () Bool)

(assert (=> b!7229861 (=> res!2933280 e!4334041)))

(declare-fun forall!17300 (List!70036 Int) Bool)

(assert (=> b!7229861 (= res!2933280 (not (forall!17300 (exprs!7914 ct1!232) lambda!439000)))))

(declare-fun b!7229862 () Bool)

(declare-fun e!4334040 () Bool)

(declare-fun tp!2033474 () Bool)

(assert (=> b!7229862 (= e!4334040 tp!2033474)))

(declare-fun b!7229863 () Bool)

(declare-fun e!4334042 () Bool)

(declare-fun tp_is_empty!46413 () Bool)

(declare-fun tp!2033473 () Bool)

(assert (=> b!7229863 (= e!4334042 (and tp_is_empty!46413 tp!2033473))))

(declare-fun b!7229864 () Bool)

(declare-fun e!4334045 () Bool)

(declare-fun tp!2033476 () Bool)

(assert (=> b!7229864 (= e!4334045 (and tp_is_empty!46413 tp!2033476))))

(declare-fun b!7229865 () Bool)

(declare-fun res!2933281 () Bool)

(assert (=> b!7229865 (=> res!2933281 e!4334043)))

(declare-fun s1!1971 () List!70037)

(declare-fun ++!16255 (List!70037 List!70037) List!70037)

(assert (=> b!7229865 (= res!2933281 (not (= (++!16255 s1!1971 s2!1849) s2!1849)))))

(declare-fun b!7229866 () Bool)

(assert (=> b!7229866 (= e!4334041 (forall!17300 (exprs!7914 ct2!328) lambda!439000))))

(declare-fun b!7229867 () Bool)

(assert (=> b!7229867 (= e!4334039 (not e!4334043))))

(declare-fun res!2933284 () Bool)

(assert (=> b!7229867 (=> res!2933284 e!4334043)))

(assert (=> b!7229867 (= res!2933284 (not (= (Context!14829 lt!2572700) ct2!328)))))

(declare-fun lt!2572698 () Unit!163483)

(assert (=> b!7229867 (= lt!2572698 (lemmaConcatPreservesForall!1283 (exprs!7914 ct1!232) (exprs!7914 ct2!328) lambda!439000))))

(declare-fun isEmpty!40308 (List!70037) Bool)

(assert (=> b!7229867 (isEmpty!40308 s1!1971)))

(declare-fun lt!2572699 () Unit!163483)

(declare-fun lt!2572697 () (Set Context!14828))

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!41 ((Set Context!14828) List!70037) Unit!163483)

(assert (=> b!7229867 (= lt!2572699 (lemmaZipperOfEmptyContextMatchesEmptyString!41 lt!2572697 s1!1971))))

(declare-fun res!2933279 () Bool)

(assert (=> start!701250 (=> (not res!2933279) (not e!4334044))))

(assert (=> start!701250 (= res!2933279 (matchZipper!3384 lt!2572697 s1!1971))))

(assert (=> start!701250 (= lt!2572697 (set.insert ct1!232 (as set.empty (Set Context!14828))))))

(assert (=> start!701250 e!4334044))

(declare-fun inv!89196 (Context!14828) Bool)

(assert (=> start!701250 (and (inv!89196 ct1!232) e!4334046)))

(assert (=> start!701250 e!4334042))

(assert (=> start!701250 e!4334045))

(assert (=> start!701250 (and (inv!89196 ct2!328) e!4334040)))

(assert (= (and start!701250 res!2933279) b!7229858))

(assert (= (and b!7229858 res!2933282) b!7229859))

(assert (= (and b!7229859 res!2933283) b!7229867))

(assert (= (and b!7229867 (not res!2933284)) b!7229865))

(assert (= (and b!7229865 (not res!2933281)) b!7229861))

(assert (= (and b!7229861 (not res!2933280)) b!7229866))

(assert (= start!701250 b!7229860))

(assert (= (and start!701250 (is-Cons!69913 s1!1971)) b!7229863))

(assert (= (and start!701250 (is-Cons!69913 s2!1849)) b!7229864))

(assert (= start!701250 b!7229862))

(declare-fun m!7897986 () Bool)

(assert (=> b!7229865 m!7897986))

(declare-fun m!7897988 () Bool)

(assert (=> b!7229866 m!7897988))

(declare-fun m!7897990 () Bool)

(assert (=> start!701250 m!7897990))

(declare-fun m!7897992 () Bool)

(assert (=> start!701250 m!7897992))

(declare-fun m!7897994 () Bool)

(assert (=> start!701250 m!7897994))

(declare-fun m!7897996 () Bool)

(assert (=> start!701250 m!7897996))

(declare-fun m!7897998 () Bool)

(assert (=> b!7229859 m!7897998))

(declare-fun m!7898000 () Bool)

(assert (=> b!7229859 m!7898000))

(assert (=> b!7229867 m!7898000))

(declare-fun m!7898002 () Bool)

(assert (=> b!7229867 m!7898002))

(declare-fun m!7898004 () Bool)

(assert (=> b!7229867 m!7898004))

(declare-fun m!7898006 () Bool)

(assert (=> b!7229861 m!7898006))

(declare-fun m!7898008 () Bool)

(assert (=> b!7229858 m!7898008))

(assert (=> b!7229858 m!7898008))

(declare-fun m!7898010 () Bool)

(assert (=> b!7229858 m!7898010))

(push 1)

(assert (not b!7229858))

(assert (not b!7229863))

(assert (not b!7229860))

(assert (not b!7229859))

(assert (not b!7229865))

(assert (not b!7229864))

(assert (not b!7229866))

(assert (not b!7229861))

(assert (not b!7229867))

(assert tp_is_empty!46413)

(assert (not start!701250))

(assert (not b!7229862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245266 () Bool)

(declare-fun res!2933307 () Bool)

(declare-fun e!4334075 () Bool)

(assert (=> d!2245266 (=> res!2933307 e!4334075)))

(assert (=> d!2245266 (= res!2933307 (is-Nil!69912 (exprs!7914 ct2!328)))))

(assert (=> d!2245266 (= (forall!17300 (exprs!7914 ct2!328) lambda!439000) e!4334075)))

(declare-fun b!7229902 () Bool)

(declare-fun e!4334076 () Bool)

(assert (=> b!7229902 (= e!4334075 e!4334076)))

(declare-fun res!2933308 () Bool)

(assert (=> b!7229902 (=> (not res!2933308) (not e!4334076))))

(declare-fun dynLambda!28495 (Int Regex!18474) Bool)

(assert (=> b!7229902 (= res!2933308 (dynLambda!28495 lambda!439000 (h!76360 (exprs!7914 ct2!328))))))

(declare-fun b!7229903 () Bool)

(assert (=> b!7229903 (= e!4334076 (forall!17300 (t!384085 (exprs!7914 ct2!328)) lambda!439000))))

(assert (= (and d!2245266 (not res!2933307)) b!7229902))

(assert (= (and b!7229902 res!2933308) b!7229903))

(declare-fun b_lambda!276979 () Bool)

(assert (=> (not b_lambda!276979) (not b!7229902)))

(declare-fun m!7898038 () Bool)

(assert (=> b!7229902 m!7898038))

(declare-fun m!7898040 () Bool)

(assert (=> b!7229903 m!7898040))

(assert (=> b!7229866 d!2245266))

(declare-fun d!2245268 () Bool)

(declare-fun res!2933309 () Bool)

(declare-fun e!4334077 () Bool)

(assert (=> d!2245268 (=> res!2933309 e!4334077)))

(assert (=> d!2245268 (= res!2933309 (is-Nil!69912 (exprs!7914 ct1!232)))))

(assert (=> d!2245268 (= (forall!17300 (exprs!7914 ct1!232) lambda!439000) e!4334077)))

(declare-fun b!7229904 () Bool)

(declare-fun e!4334078 () Bool)

(assert (=> b!7229904 (= e!4334077 e!4334078)))

(declare-fun res!2933310 () Bool)

(assert (=> b!7229904 (=> (not res!2933310) (not e!4334078))))

(assert (=> b!7229904 (= res!2933310 (dynLambda!28495 lambda!439000 (h!76360 (exprs!7914 ct1!232))))))

(declare-fun b!7229905 () Bool)

(assert (=> b!7229905 (= e!4334078 (forall!17300 (t!384085 (exprs!7914 ct1!232)) lambda!439000))))

(assert (= (and d!2245268 (not res!2933309)) b!7229904))

(assert (= (and b!7229904 res!2933310) b!7229905))

(declare-fun b_lambda!276981 () Bool)

(assert (=> (not b_lambda!276981) (not b!7229904)))

(declare-fun m!7898042 () Bool)

(assert (=> b!7229904 m!7898042))

(declare-fun m!7898044 () Bool)

(assert (=> b!7229905 m!7898044))

(assert (=> b!7229861 d!2245268))

(declare-fun lt!2572718 () List!70037)

(declare-fun b!7229917 () Bool)

(declare-fun e!4334083 () Bool)

(assert (=> b!7229917 (= e!4334083 (or (not (= s2!1849 Nil!69913)) (= lt!2572718 s1!1971)))))

(declare-fun b!7229914 () Bool)

(declare-fun e!4334084 () List!70037)

(assert (=> b!7229914 (= e!4334084 s2!1849)))

(declare-fun b!7229916 () Bool)

(declare-fun res!2933315 () Bool)

(assert (=> b!7229916 (=> (not res!2933315) (not e!4334083))))

(declare-fun size!41531 (List!70037) Int)

(assert (=> b!7229916 (= res!2933315 (= (size!41531 lt!2572718) (+ (size!41531 s1!1971) (size!41531 s2!1849))))))

(declare-fun d!2245270 () Bool)

(assert (=> d!2245270 e!4334083))

(declare-fun res!2933316 () Bool)

(assert (=> d!2245270 (=> (not res!2933316) (not e!4334083))))

(declare-fun content!14350 (List!70037) (Set C!37222))

(assert (=> d!2245270 (= res!2933316 (= (content!14350 lt!2572718) (set.union (content!14350 s1!1971) (content!14350 s2!1849))))))

(assert (=> d!2245270 (= lt!2572718 e!4334084)))

(declare-fun c!1341288 () Bool)

(assert (=> d!2245270 (= c!1341288 (is-Nil!69913 s1!1971))))

(assert (=> d!2245270 (= (++!16255 s1!1971 s2!1849) lt!2572718)))

(declare-fun b!7229915 () Bool)

(assert (=> b!7229915 (= e!4334084 (Cons!69913 (h!76361 s1!1971) (++!16255 (t!384086 s1!1971) s2!1849)))))

(assert (= (and d!2245270 c!1341288) b!7229914))

(assert (= (and d!2245270 (not c!1341288)) b!7229915))

(assert (= (and d!2245270 res!2933316) b!7229916))

(assert (= (and b!7229916 res!2933315) b!7229917))

(declare-fun m!7898046 () Bool)

(assert (=> b!7229916 m!7898046))

(declare-fun m!7898048 () Bool)

(assert (=> b!7229916 m!7898048))

(declare-fun m!7898050 () Bool)

(assert (=> b!7229916 m!7898050))

(declare-fun m!7898052 () Bool)

(assert (=> d!2245270 m!7898052))

(declare-fun m!7898054 () Bool)

(assert (=> d!2245270 m!7898054))

(declare-fun m!7898056 () Bool)

(assert (=> d!2245270 m!7898056))

(declare-fun m!7898058 () Bool)

(assert (=> b!7229915 m!7898058))

(assert (=> b!7229865 d!2245270))

(declare-fun d!2245272 () Bool)

(declare-fun e!4334089 () Bool)

(assert (=> d!2245272 e!4334089))

(declare-fun res!2933322 () Bool)

(assert (=> d!2245272 (=> (not res!2933322) (not e!4334089))))

(declare-fun lt!2572721 () List!70036)

(declare-fun content!14351 (List!70036) (Set Regex!18474))

(assert (=> d!2245272 (= res!2933322 (= (content!14351 lt!2572721) (set.union (content!14351 (exprs!7914 ct1!232)) (content!14351 (exprs!7914 ct2!328)))))))

(declare-fun e!4334090 () List!70036)

(assert (=> d!2245272 (= lt!2572721 e!4334090)))

(declare-fun c!1341291 () Bool)

(assert (=> d!2245272 (= c!1341291 (is-Nil!69912 (exprs!7914 ct1!232)))))

(assert (=> d!2245272 (= (++!16254 (exprs!7914 ct1!232) (exprs!7914 ct2!328)) lt!2572721)))

(declare-fun b!7229929 () Bool)

(assert (=> b!7229929 (= e!4334089 (or (not (= (exprs!7914 ct2!328) Nil!69912)) (= lt!2572721 (exprs!7914 ct1!232))))))

(declare-fun b!7229926 () Bool)

(assert (=> b!7229926 (= e!4334090 (exprs!7914 ct2!328))))

(declare-fun b!7229927 () Bool)

(assert (=> b!7229927 (= e!4334090 (Cons!69912 (h!76360 (exprs!7914 ct1!232)) (++!16254 (t!384085 (exprs!7914 ct1!232)) (exprs!7914 ct2!328))))))

(declare-fun b!7229928 () Bool)

(declare-fun res!2933321 () Bool)

(assert (=> b!7229928 (=> (not res!2933321) (not e!4334089))))

(declare-fun size!41532 (List!70036) Int)

(assert (=> b!7229928 (= res!2933321 (= (size!41532 lt!2572721) (+ (size!41532 (exprs!7914 ct1!232)) (size!41532 (exprs!7914 ct2!328)))))))

(assert (= (and d!2245272 c!1341291) b!7229926))

(assert (= (and d!2245272 (not c!1341291)) b!7229927))

(assert (= (and d!2245272 res!2933322) b!7229928))

(assert (= (and b!7229928 res!2933321) b!7229929))

(declare-fun m!7898060 () Bool)

(assert (=> d!2245272 m!7898060))

(declare-fun m!7898062 () Bool)

(assert (=> d!2245272 m!7898062))

(declare-fun m!7898064 () Bool)

(assert (=> d!2245272 m!7898064))

(declare-fun m!7898066 () Bool)

(assert (=> b!7229927 m!7898066))

(declare-fun m!7898068 () Bool)

(assert (=> b!7229928 m!7898068))

(declare-fun m!7898070 () Bool)

(assert (=> b!7229928 m!7898070))

(declare-fun m!7898072 () Bool)

(assert (=> b!7229928 m!7898072))

(assert (=> b!7229859 d!2245272))

(declare-fun d!2245276 () Bool)

(assert (=> d!2245276 (forall!17300 (++!16254 (exprs!7914 ct1!232) (exprs!7914 ct2!328)) lambda!439000)))

(declare-fun lt!2572724 () Unit!163483)

(declare-fun choose!55478 (List!70036 List!70036 Int) Unit!163483)

(assert (=> d!2245276 (= lt!2572724 (choose!55478 (exprs!7914 ct1!232) (exprs!7914 ct2!328) lambda!439000))))

(assert (=> d!2245276 (forall!17300 (exprs!7914 ct1!232) lambda!439000)))

(assert (=> d!2245276 (= (lemmaConcatPreservesForall!1283 (exprs!7914 ct1!232) (exprs!7914 ct2!328) lambda!439000) lt!2572724)))

(declare-fun bs!1902341 () Bool)

(assert (= bs!1902341 d!2245276))

(assert (=> bs!1902341 m!7897998))

(assert (=> bs!1902341 m!7897998))

(declare-fun m!7898074 () Bool)

(assert (=> bs!1902341 m!7898074))

(declare-fun m!7898076 () Bool)

(assert (=> bs!1902341 m!7898076))

(assert (=> bs!1902341 m!7898006))

(assert (=> b!7229859 d!2245276))

(declare-fun d!2245278 () Bool)

(declare-fun c!1341297 () Bool)

(assert (=> d!2245278 (= c!1341297 (isEmpty!40308 s2!1849))))

(declare-fun e!4334096 () Bool)

(assert (=> d!2245278 (= (matchZipper!3384 (set.insert ct2!328 (as set.empty (Set Context!14828))) s2!1849) e!4334096)))

(declare-fun b!7229940 () Bool)

(declare-fun nullableZipper!2798 ((Set Context!14828)) Bool)

(assert (=> b!7229940 (= e!4334096 (nullableZipper!2798 (set.insert ct2!328 (as set.empty (Set Context!14828)))))))

(declare-fun b!7229941 () Bool)

(declare-fun derivationStepZipper!3267 ((Set Context!14828) C!37222) (Set Context!14828))

(declare-fun head!14784 (List!70037) C!37222)

(declare-fun tail!14099 (List!70037) List!70037)

(assert (=> b!7229941 (= e!4334096 (matchZipper!3384 (derivationStepZipper!3267 (set.insert ct2!328 (as set.empty (Set Context!14828))) (head!14784 s2!1849)) (tail!14099 s2!1849)))))

(assert (= (and d!2245278 c!1341297) b!7229940))

(assert (= (and d!2245278 (not c!1341297)) b!7229941))

(declare-fun m!7898088 () Bool)

(assert (=> d!2245278 m!7898088))

(assert (=> b!7229940 m!7898008))

(declare-fun m!7898090 () Bool)

(assert (=> b!7229940 m!7898090))

(declare-fun m!7898092 () Bool)

(assert (=> b!7229941 m!7898092))

(assert (=> b!7229941 m!7898008))

(assert (=> b!7229941 m!7898092))

(declare-fun m!7898094 () Bool)

(assert (=> b!7229941 m!7898094))

(declare-fun m!7898096 () Bool)

(assert (=> b!7229941 m!7898096))

(assert (=> b!7229941 m!7898094))

(assert (=> b!7229941 m!7898096))

(declare-fun m!7898098 () Bool)

(assert (=> b!7229941 m!7898098))

(assert (=> b!7229858 d!2245278))

(declare-fun d!2245282 () Bool)

(declare-fun c!1341298 () Bool)

(assert (=> d!2245282 (= c!1341298 (isEmpty!40308 s1!1971))))

(declare-fun e!4334097 () Bool)

(assert (=> d!2245282 (= (matchZipper!3384 lt!2572697 s1!1971) e!4334097)))

(declare-fun b!7229942 () Bool)

(assert (=> b!7229942 (= e!4334097 (nullableZipper!2798 lt!2572697))))

(declare-fun b!7229943 () Bool)

(assert (=> b!7229943 (= e!4334097 (matchZipper!3384 (derivationStepZipper!3267 lt!2572697 (head!14784 s1!1971)) (tail!14099 s1!1971)))))

(assert (= (and d!2245282 c!1341298) b!7229942))

(assert (= (and d!2245282 (not c!1341298)) b!7229943))

(assert (=> d!2245282 m!7898002))

(declare-fun m!7898100 () Bool)

(assert (=> b!7229942 m!7898100))

(declare-fun m!7898102 () Bool)

(assert (=> b!7229943 m!7898102))

(assert (=> b!7229943 m!7898102))

(declare-fun m!7898104 () Bool)

(assert (=> b!7229943 m!7898104))

(declare-fun m!7898106 () Bool)

(assert (=> b!7229943 m!7898106))

(assert (=> b!7229943 m!7898104))

(assert (=> b!7229943 m!7898106))

(declare-fun m!7898108 () Bool)

(assert (=> b!7229943 m!7898108))

(assert (=> start!701250 d!2245282))

(declare-fun bs!1902342 () Bool)

(declare-fun d!2245284 () Bool)

(assert (= bs!1902342 (and d!2245284 b!7229859)))

(declare-fun lambda!439012 () Int)

(assert (=> bs!1902342 (= lambda!439012 lambda!439000)))

(assert (=> d!2245284 (= (inv!89196 ct1!232) (forall!17300 (exprs!7914 ct1!232) lambda!439012))))

(declare-fun bs!1902343 () Bool)

(assert (= bs!1902343 d!2245284))

(declare-fun m!7898110 () Bool)

(assert (=> bs!1902343 m!7898110))

(assert (=> start!701250 d!2245284))

(declare-fun bs!1902344 () Bool)

(declare-fun d!2245286 () Bool)

(assert (= bs!1902344 (and d!2245286 b!7229859)))

(declare-fun lambda!439013 () Int)

(assert (=> bs!1902344 (= lambda!439013 lambda!439000)))

(declare-fun bs!1902345 () Bool)

(assert (= bs!1902345 (and d!2245286 d!2245284)))

(assert (=> bs!1902345 (= lambda!439013 lambda!439012)))

(assert (=> d!2245286 (= (inv!89196 ct2!328) (forall!17300 (exprs!7914 ct2!328) lambda!439013))))

(declare-fun bs!1902346 () Bool)

(assert (= bs!1902346 d!2245286))

(declare-fun m!7898112 () Bool)

(assert (=> bs!1902346 m!7898112))

(assert (=> start!701250 d!2245286))

(assert (=> b!7229867 d!2245276))

(declare-fun d!2245288 () Bool)

(assert (=> d!2245288 (= (isEmpty!40308 s1!1971) (is-Nil!69913 s1!1971))))

(assert (=> b!7229867 d!2245288))

(declare-fun d!2245290 () Bool)

(assert (=> d!2245290 (= (matchZipper!3384 lt!2572697 s1!1971) (isEmpty!40308 s1!1971))))

(declare-fun lt!2572727 () Unit!163483)

(declare-fun choose!55479 ((Set Context!14828) List!70037) Unit!163483)

(assert (=> d!2245290 (= lt!2572727 (choose!55479 lt!2572697 s1!1971))))

(assert (=> d!2245290 (= lt!2572697 (set.singleton (Context!14829 Nil!69912)))))

(assert (=> d!2245290 (= (lemmaZipperOfEmptyContextMatchesEmptyString!41 lt!2572697 s1!1971) lt!2572727)))

(declare-fun bs!1902352 () Bool)

(assert (= bs!1902352 d!2245290))

(assert (=> bs!1902352 m!7897990))

(assert (=> bs!1902352 m!7898002))

(declare-fun m!7898118 () Bool)

(assert (=> bs!1902352 m!7898118))

(assert (=> b!7229867 d!2245290))

(declare-fun b!7229954 () Bool)

(declare-fun e!4334106 () Bool)

(declare-fun tp!2033493 () Bool)

(declare-fun tp!2033494 () Bool)

(assert (=> b!7229954 (= e!4334106 (and tp!2033493 tp!2033494))))

(assert (=> b!7229860 (= tp!2033475 e!4334106)))

(assert (= (and b!7229860 (is-Cons!69912 (exprs!7914 ct1!232))) b!7229954))

(declare-fun b!7229959 () Bool)

(declare-fun e!4334109 () Bool)

(declare-fun tp!2033497 () Bool)

(assert (=> b!7229959 (= e!4334109 (and tp_is_empty!46413 tp!2033497))))

(assert (=> b!7229864 (= tp!2033476 e!4334109)))

(assert (= (and b!7229864 (is-Cons!69913 (t!384086 s2!1849))) b!7229959))

(declare-fun b!7229960 () Bool)

(declare-fun e!4334110 () Bool)

(declare-fun tp!2033498 () Bool)

(assert (=> b!7229960 (= e!4334110 (and tp_is_empty!46413 tp!2033498))))

(assert (=> b!7229863 (= tp!2033473 e!4334110)))

(assert (= (and b!7229863 (is-Cons!69913 (t!384086 s1!1971))) b!7229960))

(declare-fun b!7229961 () Bool)

(declare-fun e!4334111 () Bool)

(declare-fun tp!2033499 () Bool)

(declare-fun tp!2033500 () Bool)

(assert (=> b!7229961 (= e!4334111 (and tp!2033499 tp!2033500))))

(assert (=> b!7229862 (= tp!2033474 e!4334111)))

(assert (= (and b!7229862 (is-Cons!69912 (exprs!7914 ct2!328))) b!7229961))

(declare-fun b_lambda!276985 () Bool)

(assert (= b_lambda!276979 (or b!7229859 b_lambda!276985)))

(declare-fun bs!1902353 () Bool)

(declare-fun d!2245298 () Bool)

(assert (= bs!1902353 (and d!2245298 b!7229859)))

(declare-fun validRegex!9502 (Regex!18474) Bool)

(assert (=> bs!1902353 (= (dynLambda!28495 lambda!439000 (h!76360 (exprs!7914 ct2!328))) (validRegex!9502 (h!76360 (exprs!7914 ct2!328))))))

(declare-fun m!7898124 () Bool)

(assert (=> bs!1902353 m!7898124))

(assert (=> b!7229902 d!2245298))

(declare-fun b_lambda!276987 () Bool)

(assert (= b_lambda!276981 (or b!7229859 b_lambda!276987)))

(declare-fun bs!1902354 () Bool)

(declare-fun d!2245300 () Bool)

(assert (= bs!1902354 (and d!2245300 b!7229859)))

(assert (=> bs!1902354 (= (dynLambda!28495 lambda!439000 (h!76360 (exprs!7914 ct1!232))) (validRegex!9502 (h!76360 (exprs!7914 ct1!232))))))

(declare-fun m!7898126 () Bool)

(assert (=> bs!1902354 m!7898126))

(assert (=> b!7229904 d!2245300))

(push 1)

(assert (not d!2245272))

(assert (not b!7229940))

(assert (not bs!1902354))

(assert (not b!7229959))

(assert tp_is_empty!46413)

(assert (not b!7229927))

(assert (not b_lambda!276985))

(assert (not b!7229954))

(assert (not b!7229928))

(assert (not d!2245284))

(assert (not d!2245286))

(assert (not b!7229942))

(assert (not b_lambda!276987))

(assert (not d!2245290))

(assert (not d!2245270))

(assert (not b!7229905))

(assert (not d!2245282))

(assert (not b!7229941))

(assert (not b!7229961))

(assert (not b!7229916))

(assert (not b!7229960))

(assert (not d!2245276))

(assert (not b!7229903))

(assert (not d!2245278))

(assert (not bs!1902353))

(assert (not b!7229915))

(assert (not b!7229943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

