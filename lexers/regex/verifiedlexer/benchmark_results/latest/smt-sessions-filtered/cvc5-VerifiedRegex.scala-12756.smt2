; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704806 () Bool)

(assert start!704806)

(declare-fun b!7247024 () Bool)

(assert (=> b!7247024 true))

(declare-fun b!7247022 () Bool)

(declare-fun e!4345253 () Bool)

(declare-fun tp_is_empty!46705 () Bool)

(declare-fun tp!2036729 () Bool)

(assert (=> b!7247022 (= e!4345253 (and tp_is_empty!46705 tp!2036729))))

(declare-fun b!7247023 () Bool)

(declare-fun e!4345254 () Bool)

(declare-fun tp!2036731 () Bool)

(assert (=> b!7247023 (= e!4345254 tp!2036731)))

(declare-fun e!4345251 () Bool)

(declare-fun e!4345258 () Bool)

(assert (=> b!7247024 (= e!4345251 (not e!4345258))))

(declare-fun res!2939539 () Bool)

(assert (=> b!7247024 (=> res!2939539 e!4345258)))

(declare-datatypes ((C!37514 0))(
  ( (C!37515 (val!28705 Int)) )
))
(declare-datatypes ((Regex!18620 0))(
  ( (ElementMatch!18620 (c!1346288 C!37514)) (Concat!27465 (regOne!37752 Regex!18620) (regTwo!37752 Regex!18620)) (EmptyExpr!18620) (Star!18620 (reg!18949 Regex!18620)) (EmptyLang!18620) (Union!18620 (regOne!37753 Regex!18620) (regTwo!37753 Regex!18620)) )
))
(declare-datatypes ((List!70440 0))(
  ( (Nil!70316) (Cons!70316 (h!76764 Regex!18620) (t!384492 List!70440)) )
))
(declare-datatypes ((Context!15120 0))(
  ( (Context!15121 (exprs!8060 List!70440)) )
))
(declare-fun lt!2583136 () (Set Context!15120))

(declare-fun lambda!443321 () Int)

(declare-fun exists!4318 ((Set Context!15120) Int) Bool)

(assert (=> b!7247024 (= res!2939539 (not (exists!4318 lt!2583136 lambda!443321)))))

(declare-datatypes ((List!70441 0))(
  ( (Nil!70317) (Cons!70317 (h!76765 Context!15120) (t!384493 List!70441)) )
))
(declare-fun lt!2583135 () List!70441)

(declare-fun exists!4319 (List!70441 Int) Bool)

(assert (=> b!7247024 (exists!4319 lt!2583135 lambda!443321)))

(declare-datatypes ((Unit!163823 0))(
  ( (Unit!163824) )
))
(declare-fun lt!2583138 () Unit!163823)

(declare-datatypes ((List!70442 0))(
  ( (Nil!70318) (Cons!70318 (h!76766 C!37514) (t!384494 List!70442)) )
))
(declare-fun s1!1971 () List!70442)

(declare-fun lemmaZipperMatchesExistsMatchingContext!723 (List!70441 List!70442) Unit!163823)

(assert (=> b!7247024 (= lt!2583138 (lemmaZipperMatchesExistsMatchingContext!723 lt!2583135 (t!384494 s1!1971)))))

(declare-fun toList!11449 ((Set Context!15120)) List!70441)

(assert (=> b!7247024 (= lt!2583135 (toList!11449 lt!2583136))))

(declare-fun b!7247025 () Bool)

(declare-fun e!4345257 () Bool)

(declare-fun e!4345252 () Bool)

(assert (=> b!7247025 (= e!4345257 e!4345252)))

(declare-fun res!2939540 () Bool)

(assert (=> b!7247025 (=> (not res!2939540) (not e!4345252))))

(declare-fun ct1!232 () Context!15120)

(assert (=> b!7247025 (= res!2939540 (and (not (is-Nil!70316 (exprs!8060 ct1!232))) (is-Cons!70318 s1!1971)))))

(declare-fun lt!2583137 () List!70440)

(declare-fun ct2!328 () Context!15120)

(declare-fun ++!16506 (List!70440 List!70440) List!70440)

(assert (=> b!7247025 (= lt!2583137 (++!16506 (exprs!8060 ct1!232) (exprs!8060 ct2!328)))))

(declare-fun lt!2583139 () Unit!163823)

(declare-fun lambda!443320 () Int)

(declare-fun lemmaConcatPreservesForall!1427 (List!70440 List!70440 Int) Unit!163823)

(assert (=> b!7247025 (= lt!2583139 (lemmaConcatPreservesForall!1427 (exprs!8060 ct1!232) (exprs!8060 ct2!328) lambda!443320))))

(declare-fun res!2939537 () Bool)

(assert (=> start!704806 (=> (not res!2939537) (not e!4345257))))

(declare-fun lt!2583134 () (Set Context!15120))

(declare-fun matchZipper!3530 ((Set Context!15120) List!70442) Bool)

(assert (=> start!704806 (= res!2939537 (matchZipper!3530 lt!2583134 s1!1971))))

(assert (=> start!704806 (= lt!2583134 (set.insert ct1!232 (as set.empty (Set Context!15120))))))

(assert (=> start!704806 e!4345257))

(declare-fun inv!89561 (Context!15120) Bool)

(assert (=> start!704806 (and (inv!89561 ct1!232) e!4345254)))

(assert (=> start!704806 e!4345253))

(declare-fun e!4345256 () Bool)

(assert (=> start!704806 e!4345256))

(declare-fun e!4345255 () Bool)

(assert (=> start!704806 (and (inv!89561 ct2!328) e!4345255)))

(declare-fun b!7247026 () Bool)

(declare-fun getWitness!2160 ((Set Context!15120) Int) Context!15120)

(assert (=> b!7247026 (= e!4345258 (matchZipper!3530 (set.insert (getWitness!2160 lt!2583136 lambda!443321) (as set.empty (Set Context!15120))) (t!384494 s1!1971)))))

(declare-fun b!7247027 () Bool)

(declare-fun res!2939536 () Bool)

(assert (=> b!7247027 (=> (not res!2939536) (not e!4345257))))

(declare-fun s2!1849 () List!70442)

(assert (=> b!7247027 (= res!2939536 (matchZipper!3530 (set.insert ct2!328 (as set.empty (Set Context!15120))) s2!1849))))

(declare-fun b!7247028 () Bool)

(assert (=> b!7247028 (= e!4345252 e!4345251)))

(declare-fun res!2939538 () Bool)

(assert (=> b!7247028 (=> (not res!2939538) (not e!4345251))))

(assert (=> b!7247028 (= res!2939538 (matchZipper!3530 lt!2583136 (t!384494 s1!1971)))))

(declare-fun derivationStepZipper!3398 ((Set Context!15120) C!37514) (Set Context!15120))

(assert (=> b!7247028 (= lt!2583136 (derivationStepZipper!3398 lt!2583134 (h!76766 s1!1971)))))

(declare-fun b!7247029 () Bool)

(declare-fun tp!2036730 () Bool)

(assert (=> b!7247029 (= e!4345256 (and tp_is_empty!46705 tp!2036730))))

(declare-fun b!7247030 () Bool)

(declare-fun tp!2036732 () Bool)

(assert (=> b!7247030 (= e!4345255 tp!2036732)))

(assert (= (and start!704806 res!2939537) b!7247027))

(assert (= (and b!7247027 res!2939536) b!7247025))

(assert (= (and b!7247025 res!2939540) b!7247028))

(assert (= (and b!7247028 res!2939538) b!7247024))

(assert (= (and b!7247024 (not res!2939539)) b!7247026))

(assert (= start!704806 b!7247023))

(assert (= (and start!704806 (is-Cons!70318 s1!1971)) b!7247022))

(assert (= (and start!704806 (is-Cons!70318 s2!1849)) b!7247029))

(assert (= start!704806 b!7247030))

(declare-fun m!7923942 () Bool)

(assert (=> b!7247028 m!7923942))

(declare-fun m!7923944 () Bool)

(assert (=> b!7247028 m!7923944))

(declare-fun m!7923946 () Bool)

(assert (=> b!7247027 m!7923946))

(assert (=> b!7247027 m!7923946))

(declare-fun m!7923948 () Bool)

(assert (=> b!7247027 m!7923948))

(declare-fun m!7923950 () Bool)

(assert (=> b!7247024 m!7923950))

(declare-fun m!7923952 () Bool)

(assert (=> b!7247024 m!7923952))

(declare-fun m!7923954 () Bool)

(assert (=> b!7247024 m!7923954))

(declare-fun m!7923956 () Bool)

(assert (=> b!7247024 m!7923956))

(declare-fun m!7923958 () Bool)

(assert (=> start!704806 m!7923958))

(declare-fun m!7923960 () Bool)

(assert (=> start!704806 m!7923960))

(declare-fun m!7923962 () Bool)

(assert (=> start!704806 m!7923962))

(declare-fun m!7923964 () Bool)

(assert (=> start!704806 m!7923964))

(declare-fun m!7923966 () Bool)

(assert (=> b!7247026 m!7923966))

(assert (=> b!7247026 m!7923966))

(declare-fun m!7923968 () Bool)

(assert (=> b!7247026 m!7923968))

(assert (=> b!7247026 m!7923968))

(declare-fun m!7923970 () Bool)

(assert (=> b!7247026 m!7923970))

(declare-fun m!7923972 () Bool)

(assert (=> b!7247025 m!7923972))

(declare-fun m!7923974 () Bool)

(assert (=> b!7247025 m!7923974))

(push 1)

(assert tp_is_empty!46705)

(assert (not b!7247027))

(assert (not b!7247023))

(assert (not start!704806))

(assert (not b!7247029))

(assert (not b!7247030))

(assert (not b!7247024))

(assert (not b!7247022))

(assert (not b!7247026))

(assert (not b!7247025))

(assert (not b!7247028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2252021 () Bool)

(declare-fun lt!2583160 () Bool)

(assert (=> d!2252021 (= lt!2583160 (exists!4319 (toList!11449 lt!2583136) lambda!443321))))

(declare-fun choose!55913 ((Set Context!15120) Int) Bool)

(assert (=> d!2252021 (= lt!2583160 (choose!55913 lt!2583136 lambda!443321))))

(assert (=> d!2252021 (= (exists!4318 lt!2583136 lambda!443321) lt!2583160)))

(declare-fun bs!1905350 () Bool)

(assert (= bs!1905350 d!2252021))

(assert (=> bs!1905350 m!7923956))

(assert (=> bs!1905350 m!7923956))

(declare-fun m!7924010 () Bool)

(assert (=> bs!1905350 m!7924010))

(declare-fun m!7924012 () Bool)

(assert (=> bs!1905350 m!7924012))

(assert (=> b!7247024 d!2252021))

(declare-fun bs!1905351 () Bool)

(declare-fun d!2252023 () Bool)

(assert (= bs!1905351 (and d!2252023 b!7247024)))

(declare-fun lambda!443334 () Int)

(assert (=> bs!1905351 (not (= lambda!443334 lambda!443321))))

(assert (=> d!2252023 true))

(declare-fun order!28935 () Int)

(declare-fun dynLambda!28695 (Int Int) Int)

(assert (=> d!2252023 (< (dynLambda!28695 order!28935 lambda!443321) (dynLambda!28695 order!28935 lambda!443334))))

(declare-fun forall!17453 (List!70441 Int) Bool)

(assert (=> d!2252023 (= (exists!4319 lt!2583135 lambda!443321) (not (forall!17453 lt!2583135 lambda!443334)))))

(declare-fun bs!1905352 () Bool)

(assert (= bs!1905352 d!2252023))

(declare-fun m!7924014 () Bool)

(assert (=> bs!1905352 m!7924014))

(assert (=> b!7247024 d!2252023))

(declare-fun bs!1905353 () Bool)

(declare-fun d!2252025 () Bool)

(assert (= bs!1905353 (and d!2252025 b!7247024)))

(declare-fun lambda!443337 () Int)

(assert (=> bs!1905353 (= lambda!443337 lambda!443321)))

(declare-fun bs!1905354 () Bool)

(assert (= bs!1905354 (and d!2252025 d!2252023)))

(assert (=> bs!1905354 (not (= lambda!443337 lambda!443334))))

(assert (=> d!2252025 true))

(assert (=> d!2252025 (exists!4319 lt!2583135 lambda!443337)))

(declare-fun lt!2583163 () Unit!163823)

(declare-fun choose!55914 (List!70441 List!70442) Unit!163823)

(assert (=> d!2252025 (= lt!2583163 (choose!55914 lt!2583135 (t!384494 s1!1971)))))

(declare-fun content!14555 (List!70441) (Set Context!15120))

(assert (=> d!2252025 (matchZipper!3530 (content!14555 lt!2583135) (t!384494 s1!1971))))

(assert (=> d!2252025 (= (lemmaZipperMatchesExistsMatchingContext!723 lt!2583135 (t!384494 s1!1971)) lt!2583163)))

(declare-fun bs!1905355 () Bool)

(assert (= bs!1905355 d!2252025))

(declare-fun m!7924016 () Bool)

(assert (=> bs!1905355 m!7924016))

(declare-fun m!7924018 () Bool)

(assert (=> bs!1905355 m!7924018))

(declare-fun m!7924020 () Bool)

(assert (=> bs!1905355 m!7924020))

(assert (=> bs!1905355 m!7924020))

(declare-fun m!7924022 () Bool)

(assert (=> bs!1905355 m!7924022))

(assert (=> b!7247024 d!2252025))

(declare-fun d!2252027 () Bool)

(declare-fun e!4345285 () Bool)

(assert (=> d!2252027 e!4345285))

(declare-fun res!2939558 () Bool)

(assert (=> d!2252027 (=> (not res!2939558) (not e!4345285))))

(declare-fun lt!2583166 () List!70441)

(declare-fun noDuplicate!2971 (List!70441) Bool)

(assert (=> d!2252027 (= res!2939558 (noDuplicate!2971 lt!2583166))))

(declare-fun choose!55915 ((Set Context!15120)) List!70441)

(assert (=> d!2252027 (= lt!2583166 (choose!55915 lt!2583136))))

(assert (=> d!2252027 (= (toList!11449 lt!2583136) lt!2583166)))

(declare-fun b!7247066 () Bool)

(assert (=> b!7247066 (= e!4345285 (= (content!14555 lt!2583166) lt!2583136))))

(assert (= (and d!2252027 res!2939558) b!7247066))

(declare-fun m!7924024 () Bool)

(assert (=> d!2252027 m!7924024))

(declare-fun m!7924026 () Bool)

(assert (=> d!2252027 m!7924026))

(declare-fun m!7924028 () Bool)

(assert (=> b!7247066 m!7924028))

(assert (=> b!7247024 d!2252027))

(declare-fun b!7247076 () Bool)

(declare-fun e!4345290 () List!70440)

(assert (=> b!7247076 (= e!4345290 (Cons!70316 (h!76764 (exprs!8060 ct1!232)) (++!16506 (t!384492 (exprs!8060 ct1!232)) (exprs!8060 ct2!328))))))

(declare-fun b!7247075 () Bool)

(assert (=> b!7247075 (= e!4345290 (exprs!8060 ct2!328))))

(declare-fun b!7247078 () Bool)

(declare-fun lt!2583169 () List!70440)

(declare-fun e!4345291 () Bool)

(assert (=> b!7247078 (= e!4345291 (or (not (= (exprs!8060 ct2!328) Nil!70316)) (= lt!2583169 (exprs!8060 ct1!232))))))

(declare-fun b!7247077 () Bool)

(declare-fun res!2939563 () Bool)

(assert (=> b!7247077 (=> (not res!2939563) (not e!4345291))))

(declare-fun size!41678 (List!70440) Int)

(assert (=> b!7247077 (= res!2939563 (= (size!41678 lt!2583169) (+ (size!41678 (exprs!8060 ct1!232)) (size!41678 (exprs!8060 ct2!328)))))))

(declare-fun d!2252029 () Bool)

(assert (=> d!2252029 e!4345291))

(declare-fun res!2939564 () Bool)

(assert (=> d!2252029 (=> (not res!2939564) (not e!4345291))))

(declare-fun content!14556 (List!70440) (Set Regex!18620))

(assert (=> d!2252029 (= res!2939564 (= (content!14556 lt!2583169) (set.union (content!14556 (exprs!8060 ct1!232)) (content!14556 (exprs!8060 ct2!328)))))))

(assert (=> d!2252029 (= lt!2583169 e!4345290)))

(declare-fun c!1346300 () Bool)

(assert (=> d!2252029 (= c!1346300 (is-Nil!70316 (exprs!8060 ct1!232)))))

(assert (=> d!2252029 (= (++!16506 (exprs!8060 ct1!232) (exprs!8060 ct2!328)) lt!2583169)))

(assert (= (and d!2252029 c!1346300) b!7247075))

(assert (= (and d!2252029 (not c!1346300)) b!7247076))

(assert (= (and d!2252029 res!2939564) b!7247077))

(assert (= (and b!7247077 res!2939563) b!7247078))

(declare-fun m!7924030 () Bool)

(assert (=> b!7247076 m!7924030))

(declare-fun m!7924032 () Bool)

(assert (=> b!7247077 m!7924032))

(declare-fun m!7924034 () Bool)

(assert (=> b!7247077 m!7924034))

(declare-fun m!7924036 () Bool)

(assert (=> b!7247077 m!7924036))

(declare-fun m!7924038 () Bool)

(assert (=> d!2252029 m!7924038))

(declare-fun m!7924040 () Bool)

(assert (=> d!2252029 m!7924040))

(declare-fun m!7924042 () Bool)

(assert (=> d!2252029 m!7924042))

(assert (=> b!7247025 d!2252029))

(declare-fun d!2252031 () Bool)

(declare-fun forall!17454 (List!70440 Int) Bool)

(assert (=> d!2252031 (forall!17454 (++!16506 (exprs!8060 ct1!232) (exprs!8060 ct2!328)) lambda!443320)))

(declare-fun lt!2583172 () Unit!163823)

(declare-fun choose!55916 (List!70440 List!70440 Int) Unit!163823)

(assert (=> d!2252031 (= lt!2583172 (choose!55916 (exprs!8060 ct1!232) (exprs!8060 ct2!328) lambda!443320))))

(assert (=> d!2252031 (forall!17454 (exprs!8060 ct1!232) lambda!443320)))

(assert (=> d!2252031 (= (lemmaConcatPreservesForall!1427 (exprs!8060 ct1!232) (exprs!8060 ct2!328) lambda!443320) lt!2583172)))

(declare-fun bs!1905356 () Bool)

(assert (= bs!1905356 d!2252031))

(assert (=> bs!1905356 m!7923972))

(assert (=> bs!1905356 m!7923972))

(declare-fun m!7924044 () Bool)

(assert (=> bs!1905356 m!7924044))

(declare-fun m!7924046 () Bool)

(assert (=> bs!1905356 m!7924046))

(declare-fun m!7924048 () Bool)

(assert (=> bs!1905356 m!7924048))

(assert (=> b!7247025 d!2252031))

(declare-fun d!2252035 () Bool)

(declare-fun c!1346303 () Bool)

(declare-fun isEmpty!40498 (List!70442) Bool)

(assert (=> d!2252035 (= c!1346303 (isEmpty!40498 s1!1971))))

(declare-fun e!4345294 () Bool)

(assert (=> d!2252035 (= (matchZipper!3530 lt!2583134 s1!1971) e!4345294)))

(declare-fun b!7247083 () Bool)

(declare-fun nullableZipper!2893 ((Set Context!15120)) Bool)

(assert (=> b!7247083 (= e!4345294 (nullableZipper!2893 lt!2583134))))

(declare-fun b!7247084 () Bool)

(declare-fun head!14881 (List!70442) C!37514)

(declare-fun tail!14283 (List!70442) List!70442)

(assert (=> b!7247084 (= e!4345294 (matchZipper!3530 (derivationStepZipper!3398 lt!2583134 (head!14881 s1!1971)) (tail!14283 s1!1971)))))

(assert (= (and d!2252035 c!1346303) b!7247083))

(assert (= (and d!2252035 (not c!1346303)) b!7247084))

(declare-fun m!7924050 () Bool)

(assert (=> d!2252035 m!7924050))

(declare-fun m!7924052 () Bool)

(assert (=> b!7247083 m!7924052))

(declare-fun m!7924054 () Bool)

(assert (=> b!7247084 m!7924054))

(assert (=> b!7247084 m!7924054))

(declare-fun m!7924056 () Bool)

(assert (=> b!7247084 m!7924056))

(declare-fun m!7924058 () Bool)

(assert (=> b!7247084 m!7924058))

(assert (=> b!7247084 m!7924056))

(assert (=> b!7247084 m!7924058))

(declare-fun m!7924060 () Bool)

(assert (=> b!7247084 m!7924060))

(assert (=> start!704806 d!2252035))

(declare-fun bs!1905357 () Bool)

(declare-fun d!2252037 () Bool)

(assert (= bs!1905357 (and d!2252037 b!7247025)))

(declare-fun lambda!443340 () Int)

(assert (=> bs!1905357 (= lambda!443340 lambda!443320)))

(assert (=> d!2252037 (= (inv!89561 ct1!232) (forall!17454 (exprs!8060 ct1!232) lambda!443340))))

(declare-fun bs!1905358 () Bool)

(assert (= bs!1905358 d!2252037))

(declare-fun m!7924062 () Bool)

(assert (=> bs!1905358 m!7924062))

(assert (=> start!704806 d!2252037))

(declare-fun bs!1905359 () Bool)

(declare-fun d!2252039 () Bool)

(assert (= bs!1905359 (and d!2252039 b!7247025)))

(declare-fun lambda!443341 () Int)

(assert (=> bs!1905359 (= lambda!443341 lambda!443320)))

(declare-fun bs!1905360 () Bool)

(assert (= bs!1905360 (and d!2252039 d!2252037)))

(assert (=> bs!1905360 (= lambda!443341 lambda!443340)))

(assert (=> d!2252039 (= (inv!89561 ct2!328) (forall!17454 (exprs!8060 ct2!328) lambda!443341))))

(declare-fun bs!1905361 () Bool)

(assert (= bs!1905361 d!2252039))

(declare-fun m!7924064 () Bool)

(assert (=> bs!1905361 m!7924064))

(assert (=> start!704806 d!2252039))

(declare-fun d!2252041 () Bool)

(declare-fun c!1346306 () Bool)

(assert (=> d!2252041 (= c!1346306 (isEmpty!40498 (t!384494 s1!1971)))))

(declare-fun e!4345297 () Bool)

(assert (=> d!2252041 (= (matchZipper!3530 lt!2583136 (t!384494 s1!1971)) e!4345297)))

(declare-fun b!7247089 () Bool)

(assert (=> b!7247089 (= e!4345297 (nullableZipper!2893 lt!2583136))))

(declare-fun b!7247090 () Bool)

(assert (=> b!7247090 (= e!4345297 (matchZipper!3530 (derivationStepZipper!3398 lt!2583136 (head!14881 (t!384494 s1!1971))) (tail!14283 (t!384494 s1!1971))))))

(assert (= (and d!2252041 c!1346306) b!7247089))

(assert (= (and d!2252041 (not c!1346306)) b!7247090))

(declare-fun m!7924066 () Bool)

(assert (=> d!2252041 m!7924066))

(declare-fun m!7924068 () Bool)

(assert (=> b!7247089 m!7924068))

(declare-fun m!7924070 () Bool)

(assert (=> b!7247090 m!7924070))

(assert (=> b!7247090 m!7924070))

(declare-fun m!7924072 () Bool)

(assert (=> b!7247090 m!7924072))

(declare-fun m!7924074 () Bool)

(assert (=> b!7247090 m!7924074))

(assert (=> b!7247090 m!7924072))

(assert (=> b!7247090 m!7924074))

(declare-fun m!7924076 () Bool)

(assert (=> b!7247090 m!7924076))

(assert (=> b!7247028 d!2252041))

(declare-fun d!2252043 () Bool)

(assert (=> d!2252043 true))

(declare-fun lambda!443344 () Int)

(declare-fun flatMap!2788 ((Set Context!15120) Int) (Set Context!15120))

(assert (=> d!2252043 (= (derivationStepZipper!3398 lt!2583134 (h!76766 s1!1971)) (flatMap!2788 lt!2583134 lambda!443344))))

(declare-fun bs!1905362 () Bool)

(assert (= bs!1905362 d!2252043))

(declare-fun m!7924090 () Bool)

(assert (=> bs!1905362 m!7924090))

(assert (=> b!7247028 d!2252043))

(declare-fun d!2252047 () Bool)

(declare-fun c!1346310 () Bool)

(assert (=> d!2252047 (= c!1346310 (isEmpty!40498 s2!1849))))

(declare-fun e!4345299 () Bool)

(assert (=> d!2252047 (= (matchZipper!3530 (set.insert ct2!328 (as set.empty (Set Context!15120))) s2!1849) e!4345299)))

(declare-fun b!7247095 () Bool)

(assert (=> b!7247095 (= e!4345299 (nullableZipper!2893 (set.insert ct2!328 (as set.empty (Set Context!15120)))))))

(declare-fun b!7247096 () Bool)

(assert (=> b!7247096 (= e!4345299 (matchZipper!3530 (derivationStepZipper!3398 (set.insert ct2!328 (as set.empty (Set Context!15120))) (head!14881 s2!1849)) (tail!14283 s2!1849)))))

(assert (= (and d!2252047 c!1346310) b!7247095))

(assert (= (and d!2252047 (not c!1346310)) b!7247096))

(declare-fun m!7924092 () Bool)

(assert (=> d!2252047 m!7924092))

(assert (=> b!7247095 m!7923946))

(declare-fun m!7924094 () Bool)

(assert (=> b!7247095 m!7924094))

(declare-fun m!7924096 () Bool)

(assert (=> b!7247096 m!7924096))

(assert (=> b!7247096 m!7923946))

(assert (=> b!7247096 m!7924096))

(declare-fun m!7924098 () Bool)

(assert (=> b!7247096 m!7924098))

(declare-fun m!7924100 () Bool)

(assert (=> b!7247096 m!7924100))

(assert (=> b!7247096 m!7924098))

(assert (=> b!7247096 m!7924100))

(declare-fun m!7924102 () Bool)

(assert (=> b!7247096 m!7924102))

(assert (=> b!7247027 d!2252047))

(declare-fun d!2252049 () Bool)

(declare-fun c!1346311 () Bool)

(assert (=> d!2252049 (= c!1346311 (isEmpty!40498 (t!384494 s1!1971)))))

(declare-fun e!4345300 () Bool)

(assert (=> d!2252049 (= (matchZipper!3530 (set.insert (getWitness!2160 lt!2583136 lambda!443321) (as set.empty (Set Context!15120))) (t!384494 s1!1971)) e!4345300)))

(declare-fun b!7247097 () Bool)

(assert (=> b!7247097 (= e!4345300 (nullableZipper!2893 (set.insert (getWitness!2160 lt!2583136 lambda!443321) (as set.empty (Set Context!15120)))))))

(declare-fun b!7247098 () Bool)

(assert (=> b!7247098 (= e!4345300 (matchZipper!3530 (derivationStepZipper!3398 (set.insert (getWitness!2160 lt!2583136 lambda!443321) (as set.empty (Set Context!15120))) (head!14881 (t!384494 s1!1971))) (tail!14283 (t!384494 s1!1971))))))

(assert (= (and d!2252049 c!1346311) b!7247097))

(assert (= (and d!2252049 (not c!1346311)) b!7247098))

(assert (=> d!2252049 m!7924066))

(assert (=> b!7247097 m!7923968))

(declare-fun m!7924104 () Bool)

(assert (=> b!7247097 m!7924104))

(assert (=> b!7247098 m!7924070))

(assert (=> b!7247098 m!7923968))

(assert (=> b!7247098 m!7924070))

(declare-fun m!7924106 () Bool)

(assert (=> b!7247098 m!7924106))

(assert (=> b!7247098 m!7924074))

(assert (=> b!7247098 m!7924106))

(assert (=> b!7247098 m!7924074))

(declare-fun m!7924108 () Bool)

(assert (=> b!7247098 m!7924108))

(assert (=> b!7247026 d!2252049))

(declare-fun d!2252051 () Bool)

(declare-fun e!4345303 () Bool)

(assert (=> d!2252051 e!4345303))

(declare-fun res!2939567 () Bool)

(assert (=> d!2252051 (=> (not res!2939567) (not e!4345303))))

(declare-fun lt!2583175 () Context!15120)

(declare-fun dynLambda!28696 (Int Context!15120) Bool)

(assert (=> d!2252051 (= res!2939567 (dynLambda!28696 lambda!443321 lt!2583175))))

(declare-fun getWitness!2162 (List!70441 Int) Context!15120)

(assert (=> d!2252051 (= lt!2583175 (getWitness!2162 (toList!11449 lt!2583136) lambda!443321))))

(assert (=> d!2252051 (exists!4318 lt!2583136 lambda!443321)))

(assert (=> d!2252051 (= (getWitness!2160 lt!2583136 lambda!443321) lt!2583175)))

(declare-fun b!7247101 () Bool)

(assert (=> b!7247101 (= e!4345303 (set.member lt!2583175 lt!2583136))))

(assert (= (and d!2252051 res!2939567) b!7247101))

(declare-fun b_lambda!278141 () Bool)

(assert (=> (not b_lambda!278141) (not d!2252051)))

(declare-fun m!7924110 () Bool)

(assert (=> d!2252051 m!7924110))

(assert (=> d!2252051 m!7923956))

(assert (=> d!2252051 m!7923956))

(declare-fun m!7924112 () Bool)

(assert (=> d!2252051 m!7924112))

(assert (=> d!2252051 m!7923950))

(declare-fun m!7924114 () Bool)

(assert (=> b!7247101 m!7924114))

(assert (=> b!7247026 d!2252051))

(declare-fun b!7247108 () Bool)

(declare-fun e!4345306 () Bool)

(declare-fun tp!2036749 () Bool)

(declare-fun tp!2036750 () Bool)

(assert (=> b!7247108 (= e!4345306 (and tp!2036749 tp!2036750))))

(assert (=> b!7247030 (= tp!2036732 e!4345306)))

(assert (= (and b!7247030 (is-Cons!70316 (exprs!8060 ct2!328))) b!7247108))

(declare-fun b!7247109 () Bool)

(declare-fun e!4345307 () Bool)

(declare-fun tp!2036751 () Bool)

(declare-fun tp!2036752 () Bool)

(assert (=> b!7247109 (= e!4345307 (and tp!2036751 tp!2036752))))

(assert (=> b!7247023 (= tp!2036731 e!4345307)))

(assert (= (and b!7247023 (is-Cons!70316 (exprs!8060 ct1!232))) b!7247109))

(declare-fun b!7247114 () Bool)

(declare-fun e!4345310 () Bool)

(declare-fun tp!2036755 () Bool)

(assert (=> b!7247114 (= e!4345310 (and tp_is_empty!46705 tp!2036755))))

(assert (=> b!7247029 (= tp!2036730 e!4345310)))

(assert (= (and b!7247029 (is-Cons!70318 (t!384494 s2!1849))) b!7247114))

(declare-fun b!7247115 () Bool)

(declare-fun e!4345311 () Bool)

(declare-fun tp!2036756 () Bool)

(assert (=> b!7247115 (= e!4345311 (and tp_is_empty!46705 tp!2036756))))

(assert (=> b!7247022 (= tp!2036729 e!4345311)))

(assert (= (and b!7247022 (is-Cons!70318 (t!384494 s1!1971))) b!7247115))

(declare-fun b_lambda!278143 () Bool)

(assert (= b_lambda!278141 (or b!7247024 b_lambda!278143)))

(declare-fun bs!1905364 () Bool)

(declare-fun d!2252055 () Bool)

(assert (= bs!1905364 (and d!2252055 b!7247024)))

(assert (=> bs!1905364 (= (dynLambda!28696 lambda!443321 lt!2583175) (matchZipper!3530 (set.insert lt!2583175 (as set.empty (Set Context!15120))) (t!384494 s1!1971)))))

(declare-fun m!7924118 () Bool)

(assert (=> bs!1905364 m!7924118))

(assert (=> bs!1905364 m!7924118))

(declare-fun m!7924120 () Bool)

(assert (=> bs!1905364 m!7924120))

(assert (=> d!2252051 d!2252055))

(push 1)

(assert (not b!7247114))

(assert (not b!7247108))

(assert (not b!7247077))

(assert (not d!2252039))

(assert (not d!2252029))

(assert (not d!2252041))

(assert (not b!7247084))

(assert (not d!2252043))

(assert (not b!7247066))

(assert (not b!7247098))

(assert (not d!2252027))

(assert (not b!7247096))

(assert (not b!7247115))

(assert (not b!7247097))

(assert tp_is_empty!46705)

(assert (not d!2252047))

(assert (not b!7247083))

(assert (not d!2252021))

(assert (not d!2252049))

(assert (not b_lambda!278143))

(assert (not d!2252037))

(assert (not b!7247090))

(assert (not bs!1905364))

(assert (not d!2252025))

(assert (not d!2252023))

(assert (not d!2252035))

(assert (not d!2252051))

(assert (not b!7247076))

(assert (not b!7247095))

(assert (not d!2252031))

(assert (not b!7247089))

(assert (not b!7247109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

