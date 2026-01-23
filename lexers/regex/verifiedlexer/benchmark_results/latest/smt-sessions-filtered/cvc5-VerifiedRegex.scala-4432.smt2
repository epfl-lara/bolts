; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235870 () Bool)

(assert start!235870)

(declare-fun b!2405967 () Bool)

(declare-fun e!1532249 () Bool)

(declare-fun tp_is_empty!11525 () Bool)

(declare-fun tp!765575 () Bool)

(assert (=> b!2405967 (= e!1532249 (and tp_is_empty!11525 tp!765575))))

(declare-fun b!2405968 () Bool)

(declare-fun e!1532247 () Bool)

(declare-fun e!1532246 () Bool)

(assert (=> b!2405968 (= e!1532247 (not e!1532246))))

(declare-fun res!1021919 () Bool)

(assert (=> b!2405968 (=> res!1021919 e!1532246)))

(declare-datatypes ((C!14270 0))(
  ( (C!14271 (val!8377 Int)) )
))
(declare-datatypes ((Regex!7056 0))(
  ( (ElementMatch!7056 (c!383220 C!14270)) (Concat!11692 (regOne!14624 Regex!7056) (regTwo!14624 Regex!7056)) (EmptyExpr!7056) (Star!7056 (reg!7385 Regex!7056)) (EmptyLang!7056) (Union!7056 (regOne!14625 Regex!7056) (regTwo!14625 Regex!7056)) )
))
(declare-fun r!13927 () Regex!7056)

(assert (=> b!2405968 (= res!1021919 (or (is-Concat!11692 r!13927) (is-EmptyExpr!7056 r!13927)))))

(declare-datatypes ((List!28350 0))(
  ( (Nil!28252) (Cons!28252 (h!33653 C!14270) (t!208327 List!28350)) )
))
(declare-fun s!9460 () List!28350)

(declare-fun matchR!3173 (Regex!7056 List!28350) Bool)

(declare-fun matchRSpec!905 (Regex!7056 List!28350) Bool)

(assert (=> b!2405968 (= (matchR!3173 r!13927 s!9460) (matchRSpec!905 r!13927 s!9460))))

(declare-datatypes ((Unit!41383 0))(
  ( (Unit!41384) )
))
(declare-fun lt!872979 () Unit!41383)

(declare-fun mainMatchTheorem!905 (Regex!7056 List!28350) Unit!41383)

(assert (=> b!2405968 (= lt!872979 (mainMatchTheorem!905 r!13927 s!9460))))

(declare-fun res!1021918 () Bool)

(assert (=> start!235870 (=> (not res!1021918) (not e!1532247))))

(declare-datatypes ((List!28351 0))(
  ( (Nil!28253) (Cons!28253 (h!33654 Regex!7056) (t!208328 List!28351)) )
))
(declare-fun l!9164 () List!28351)

(declare-fun lambda!90500 () Int)

(declare-fun forall!5690 (List!28351 Int) Bool)

(assert (=> start!235870 (= res!1021918 (forall!5690 l!9164 lambda!90500))))

(assert (=> start!235870 e!1532247))

(declare-fun e!1532248 () Bool)

(assert (=> start!235870 e!1532248))

(declare-fun e!1532250 () Bool)

(assert (=> start!235870 e!1532250))

(assert (=> start!235870 e!1532249))

(declare-fun b!2405969 () Bool)

(declare-fun tp!765568 () Bool)

(assert (=> b!2405969 (= e!1532250 tp!765568)))

(declare-fun b!2405970 () Bool)

(declare-fun e!1532245 () Bool)

(assert (=> b!2405970 (= e!1532246 e!1532245)))

(declare-fun res!1021921 () Bool)

(assert (=> b!2405970 (=> res!1021921 e!1532245)))

(declare-fun lt!872980 () List!28351)

(declare-fun isEmpty!16258 (List!28351) Bool)

(assert (=> b!2405970 (= res!1021921 (not (isEmpty!16258 lt!872980)))))

(declare-fun tail!3608 (List!28351) List!28351)

(assert (=> b!2405970 (= lt!872980 (tail!3608 l!9164))))

(declare-fun b!2405971 () Bool)

(declare-fun tp!765571 () Bool)

(declare-fun tp!765572 () Bool)

(assert (=> b!2405971 (= e!1532250 (and tp!765571 tp!765572))))

(declare-fun b!2405972 () Bool)

(declare-fun tp!765569 () Bool)

(declare-fun tp!765570 () Bool)

(assert (=> b!2405972 (= e!1532248 (and tp!765569 tp!765570))))

(declare-fun b!2405973 () Bool)

(assert (=> b!2405973 (= e!1532245 (forall!5690 lt!872980 lambda!90500))))

(declare-fun b!2405974 () Bool)

(declare-fun tp!765573 () Bool)

(declare-fun tp!765574 () Bool)

(assert (=> b!2405974 (= e!1532250 (and tp!765573 tp!765574))))

(declare-fun b!2405975 () Bool)

(declare-fun res!1021920 () Bool)

(assert (=> b!2405975 (=> res!1021920 e!1532246)))

(assert (=> b!2405975 (= res!1021920 (isEmpty!16258 l!9164))))

(declare-fun b!2405976 () Bool)

(assert (=> b!2405976 (= e!1532250 tp_is_empty!11525)))

(declare-fun b!2405977 () Bool)

(declare-fun res!1021917 () Bool)

(assert (=> b!2405977 (=> (not res!1021917) (not e!1532247))))

(declare-fun generalisedConcat!157 (List!28351) Regex!7056)

(assert (=> b!2405977 (= res!1021917 (= r!13927 (generalisedConcat!157 l!9164)))))

(assert (= (and start!235870 res!1021918) b!2405977))

(assert (= (and b!2405977 res!1021917) b!2405968))

(assert (= (and b!2405968 (not res!1021919)) b!2405975))

(assert (= (and b!2405975 (not res!1021920)) b!2405970))

(assert (= (and b!2405970 (not res!1021921)) b!2405973))

(assert (= (and start!235870 (is-Cons!28253 l!9164)) b!2405972))

(assert (= (and start!235870 (is-ElementMatch!7056 r!13927)) b!2405976))

(assert (= (and start!235870 (is-Concat!11692 r!13927)) b!2405971))

(assert (= (and start!235870 (is-Star!7056 r!13927)) b!2405969))

(assert (= (and start!235870 (is-Union!7056 r!13927)) b!2405974))

(assert (= (and start!235870 (is-Cons!28252 s!9460)) b!2405967))

(declare-fun m!2799887 () Bool)

(assert (=> b!2405970 m!2799887))

(declare-fun m!2799889 () Bool)

(assert (=> b!2405970 m!2799889))

(declare-fun m!2799891 () Bool)

(assert (=> start!235870 m!2799891))

(declare-fun m!2799893 () Bool)

(assert (=> b!2405975 m!2799893))

(declare-fun m!2799895 () Bool)

(assert (=> b!2405973 m!2799895))

(declare-fun m!2799897 () Bool)

(assert (=> b!2405968 m!2799897))

(declare-fun m!2799899 () Bool)

(assert (=> b!2405968 m!2799899))

(declare-fun m!2799901 () Bool)

(assert (=> b!2405968 m!2799901))

(declare-fun m!2799903 () Bool)

(assert (=> b!2405977 m!2799903))

(push 1)

(assert tp_is_empty!11525)

(assert (not b!2405972))

(assert (not start!235870))

(assert (not b!2405970))

(assert (not b!2405969))

(assert (not b!2405967))

(assert (not b!2405973))

(assert (not b!2405968))

(assert (not b!2405974))

(assert (not b!2405977))

(assert (not b!2405971))

(assert (not b!2405975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!700077 () Bool)

(declare-fun res!1021941 () Bool)

(declare-fun e!1532273 () Bool)

(assert (=> d!700077 (=> res!1021941 e!1532273)))

(assert (=> d!700077 (= res!1021941 (is-Nil!28253 lt!872980))))

(assert (=> d!700077 (= (forall!5690 lt!872980 lambda!90500) e!1532273)))

(declare-fun b!2406015 () Bool)

(declare-fun e!1532274 () Bool)

(assert (=> b!2406015 (= e!1532273 e!1532274)))

(declare-fun res!1021942 () Bool)

(assert (=> b!2406015 (=> (not res!1021942) (not e!1532274))))

(declare-fun dynLambda!12166 (Int Regex!7056) Bool)

(assert (=> b!2406015 (= res!1021942 (dynLambda!12166 lambda!90500 (h!33654 lt!872980)))))

(declare-fun b!2406016 () Bool)

(assert (=> b!2406016 (= e!1532274 (forall!5690 (t!208328 lt!872980) lambda!90500))))

(assert (= (and d!700077 (not res!1021941)) b!2406015))

(assert (= (and b!2406015 res!1021942) b!2406016))

(declare-fun b_lambda!74411 () Bool)

(assert (=> (not b_lambda!74411) (not b!2406015)))

(declare-fun m!2799923 () Bool)

(assert (=> b!2406015 m!2799923))

(declare-fun m!2799925 () Bool)

(assert (=> b!2406016 m!2799925))

(assert (=> b!2405973 d!700077))

(declare-fun bs!463293 () Bool)

(declare-fun d!700079 () Bool)

(assert (= bs!463293 (and d!700079 start!235870)))

(declare-fun lambda!90508 () Int)

(assert (=> bs!463293 (= lambda!90508 lambda!90500)))

(declare-fun b!2406037 () Bool)

(declare-fun e!1532290 () Regex!7056)

(declare-fun e!1532292 () Regex!7056)

(assert (=> b!2406037 (= e!1532290 e!1532292)))

(declare-fun c!383233 () Bool)

(assert (=> b!2406037 (= c!383233 (is-Cons!28253 l!9164))))

(declare-fun b!2406038 () Bool)

(declare-fun e!1532289 () Bool)

(declare-fun lt!872989 () Regex!7056)

(declare-fun isEmptyExpr!122 (Regex!7056) Bool)

(assert (=> b!2406038 (= e!1532289 (isEmptyExpr!122 lt!872989))))

(declare-fun b!2406039 () Bool)

(assert (=> b!2406039 (= e!1532292 EmptyExpr!7056)))

(declare-fun b!2406040 () Bool)

(declare-fun e!1532288 () Bool)

(assert (=> b!2406040 (= e!1532289 e!1532288)))

(declare-fun c!383230 () Bool)

(assert (=> b!2406040 (= c!383230 (isEmpty!16258 (tail!3608 l!9164)))))

(declare-fun b!2406041 () Bool)

(declare-fun isConcat!122 (Regex!7056) Bool)

(assert (=> b!2406041 (= e!1532288 (isConcat!122 lt!872989))))

(declare-fun b!2406042 () Bool)

(assert (=> b!2406042 (= e!1532292 (Concat!11692 (h!33654 l!9164) (generalisedConcat!157 (t!208328 l!9164))))))

(declare-fun b!2406043 () Bool)

(declare-fun e!1532291 () Bool)

(assert (=> b!2406043 (= e!1532291 (isEmpty!16258 (t!208328 l!9164)))))

(declare-fun b!2406044 () Bool)

(declare-fun head!5337 (List!28351) Regex!7056)

(assert (=> b!2406044 (= e!1532288 (= lt!872989 (head!5337 l!9164)))))

(declare-fun b!2406045 () Bool)

(assert (=> b!2406045 (= e!1532290 (h!33654 l!9164))))

(declare-fun b!2406046 () Bool)

(declare-fun e!1532287 () Bool)

(assert (=> b!2406046 (= e!1532287 e!1532289)))

(declare-fun c!383231 () Bool)

(assert (=> b!2406046 (= c!383231 (isEmpty!16258 l!9164))))

(assert (=> d!700079 e!1532287))

(declare-fun res!1021948 () Bool)

(assert (=> d!700079 (=> (not res!1021948) (not e!1532287))))

(declare-fun validRegex!2781 (Regex!7056) Bool)

(assert (=> d!700079 (= res!1021948 (validRegex!2781 lt!872989))))

(assert (=> d!700079 (= lt!872989 e!1532290)))

(declare-fun c!383232 () Bool)

(assert (=> d!700079 (= c!383232 e!1532291)))

(declare-fun res!1021947 () Bool)

(assert (=> d!700079 (=> (not res!1021947) (not e!1532291))))

(assert (=> d!700079 (= res!1021947 (is-Cons!28253 l!9164))))

(assert (=> d!700079 (forall!5690 l!9164 lambda!90508)))

(assert (=> d!700079 (= (generalisedConcat!157 l!9164) lt!872989)))

(assert (= (and d!700079 res!1021947) b!2406043))

(assert (= (and d!700079 c!383232) b!2406045))

(assert (= (and d!700079 (not c!383232)) b!2406037))

(assert (= (and b!2406037 c!383233) b!2406042))

(assert (= (and b!2406037 (not c!383233)) b!2406039))

(assert (= (and d!700079 res!1021948) b!2406046))

(assert (= (and b!2406046 c!383231) b!2406038))

(assert (= (and b!2406046 (not c!383231)) b!2406040))

(assert (= (and b!2406040 c!383230) b!2406044))

(assert (= (and b!2406040 (not c!383230)) b!2406041))

(declare-fun m!2799927 () Bool)

(assert (=> b!2406044 m!2799927))

(declare-fun m!2799929 () Bool)

(assert (=> b!2406041 m!2799929))

(assert (=> b!2406040 m!2799889))

(assert (=> b!2406040 m!2799889))

(declare-fun m!2799931 () Bool)

(assert (=> b!2406040 m!2799931))

(declare-fun m!2799933 () Bool)

(assert (=> b!2406043 m!2799933))

(declare-fun m!2799935 () Bool)

(assert (=> b!2406042 m!2799935))

(assert (=> b!2406046 m!2799893))

(declare-fun m!2799937 () Bool)

(assert (=> b!2406038 m!2799937))

(declare-fun m!2799939 () Bool)

(assert (=> d!700079 m!2799939))

(declare-fun m!2799941 () Bool)

(assert (=> d!700079 m!2799941))

(assert (=> b!2405977 d!700079))

(declare-fun d!700083 () Bool)

(assert (=> d!700083 (= (isEmpty!16258 lt!872980) (is-Nil!28253 lt!872980))))

(assert (=> b!2405970 d!700083))

(declare-fun d!700085 () Bool)

(assert (=> d!700085 (= (tail!3608 l!9164) (t!208328 l!9164))))

(assert (=> b!2405970 d!700085))

(declare-fun d!700087 () Bool)

(assert (=> d!700087 (= (isEmpty!16258 l!9164) (is-Nil!28253 l!9164))))

(assert (=> b!2405975 d!700087))

(declare-fun b!2406095 () Bool)

(declare-fun e!1532323 () Bool)

(declare-fun derivativeStep!1760 (Regex!7056 C!14270) Regex!7056)

(declare-fun head!5338 (List!28350) C!14270)

(declare-fun tail!3610 (List!28350) List!28350)

(assert (=> b!2406095 (= e!1532323 (matchR!3173 (derivativeStep!1760 r!13927 (head!5338 s!9460)) (tail!3610 s!9460)))))

(declare-fun bm!146988 () Bool)

(declare-fun call!146993 () Bool)

(declare-fun isEmpty!16260 (List!28350) Bool)

(assert (=> bm!146988 (= call!146993 (isEmpty!16260 s!9460))))

(declare-fun b!2406096 () Bool)

(declare-fun e!1532320 () Bool)

(declare-fun lt!872994 () Bool)

(assert (=> b!2406096 (= e!1532320 (= lt!872994 call!146993))))

(declare-fun b!2406097 () Bool)

(declare-fun e!1532324 () Bool)

(declare-fun e!1532325 () Bool)

(assert (=> b!2406097 (= e!1532324 e!1532325)))

(declare-fun res!1021975 () Bool)

(assert (=> b!2406097 (=> res!1021975 e!1532325)))

(assert (=> b!2406097 (= res!1021975 call!146993)))

(declare-fun b!2406098 () Bool)

(assert (=> b!2406098 (= e!1532325 (not (= (head!5338 s!9460) (c!383220 r!13927))))))

(declare-fun b!2406099 () Bool)

(declare-fun res!1021974 () Bool)

(declare-fun e!1532322 () Bool)

(assert (=> b!2406099 (=> res!1021974 e!1532322)))

(declare-fun e!1532321 () Bool)

(assert (=> b!2406099 (= res!1021974 e!1532321)))

(declare-fun res!1021969 () Bool)

(assert (=> b!2406099 (=> (not res!1021969) (not e!1532321))))

(assert (=> b!2406099 (= res!1021969 lt!872994)))

(declare-fun b!2406100 () Bool)

(declare-fun res!1021972 () Bool)

(assert (=> b!2406100 (=> (not res!1021972) (not e!1532321))))

(assert (=> b!2406100 (= res!1021972 (not call!146993))))

(declare-fun b!2406101 () Bool)

(declare-fun e!1532319 () Bool)

(assert (=> b!2406101 (= e!1532319 (not lt!872994))))

(declare-fun b!2406102 () Bool)

(assert (=> b!2406102 (= e!1532322 e!1532324)))

(declare-fun res!1021973 () Bool)

(assert (=> b!2406102 (=> (not res!1021973) (not e!1532324))))

(assert (=> b!2406102 (= res!1021973 (not lt!872994))))

(declare-fun b!2406103 () Bool)

(assert (=> b!2406103 (= e!1532320 e!1532319)))

(declare-fun c!383249 () Bool)

(assert (=> b!2406103 (= c!383249 (is-EmptyLang!7056 r!13927))))

(declare-fun b!2406104 () Bool)

(declare-fun res!1021971 () Bool)

(assert (=> b!2406104 (=> (not res!1021971) (not e!1532321))))

(assert (=> b!2406104 (= res!1021971 (isEmpty!16260 (tail!3610 s!9460)))))

(declare-fun d!700089 () Bool)

(assert (=> d!700089 e!1532320))

(declare-fun c!383250 () Bool)

(assert (=> d!700089 (= c!383250 (is-EmptyExpr!7056 r!13927))))

(assert (=> d!700089 (= lt!872994 e!1532323)))

(declare-fun c!383248 () Bool)

(assert (=> d!700089 (= c!383248 (isEmpty!16260 s!9460))))

(assert (=> d!700089 (validRegex!2781 r!13927)))

(assert (=> d!700089 (= (matchR!3173 r!13927 s!9460) lt!872994)))

(declare-fun b!2406105 () Bool)

(declare-fun res!1021976 () Bool)

(assert (=> b!2406105 (=> res!1021976 e!1532325)))

(assert (=> b!2406105 (= res!1021976 (not (isEmpty!16260 (tail!3610 s!9460))))))

(declare-fun b!2406106 () Bool)

(declare-fun nullable!2103 (Regex!7056) Bool)

(assert (=> b!2406106 (= e!1532323 (nullable!2103 r!13927))))

(declare-fun b!2406107 () Bool)

(assert (=> b!2406107 (= e!1532321 (= (head!5338 s!9460) (c!383220 r!13927)))))

(declare-fun b!2406108 () Bool)

(declare-fun res!1021970 () Bool)

(assert (=> b!2406108 (=> res!1021970 e!1532322)))

(assert (=> b!2406108 (= res!1021970 (not (is-ElementMatch!7056 r!13927)))))

(assert (=> b!2406108 (= e!1532319 e!1532322)))

(assert (= (and d!700089 c!383248) b!2406106))

(assert (= (and d!700089 (not c!383248)) b!2406095))

(assert (= (and d!700089 c!383250) b!2406096))

(assert (= (and d!700089 (not c!383250)) b!2406103))

(assert (= (and b!2406103 c!383249) b!2406101))

(assert (= (and b!2406103 (not c!383249)) b!2406108))

(assert (= (and b!2406108 (not res!1021970)) b!2406099))

(assert (= (and b!2406099 res!1021969) b!2406100))

(assert (= (and b!2406100 res!1021972) b!2406104))

(assert (= (and b!2406104 res!1021971) b!2406107))

(assert (= (and b!2406099 (not res!1021974)) b!2406102))

(assert (= (and b!2406102 res!1021973) b!2406097))

(assert (= (and b!2406097 (not res!1021975)) b!2406105))

(assert (= (and b!2406105 (not res!1021976)) b!2406098))

(assert (= (or b!2406096 b!2406097 b!2406100) bm!146988))

(declare-fun m!2799943 () Bool)

(assert (=> b!2406104 m!2799943))

(assert (=> b!2406104 m!2799943))

(declare-fun m!2799945 () Bool)

(assert (=> b!2406104 m!2799945))

(declare-fun m!2799947 () Bool)

(assert (=> b!2406098 m!2799947))

(assert (=> b!2406095 m!2799947))

(assert (=> b!2406095 m!2799947))

(declare-fun m!2799949 () Bool)

(assert (=> b!2406095 m!2799949))

(assert (=> b!2406095 m!2799943))

(assert (=> b!2406095 m!2799949))

(assert (=> b!2406095 m!2799943))

(declare-fun m!2799951 () Bool)

(assert (=> b!2406095 m!2799951))

(declare-fun m!2799953 () Bool)

(assert (=> bm!146988 m!2799953))

(assert (=> b!2406105 m!2799943))

(assert (=> b!2406105 m!2799943))

(assert (=> b!2406105 m!2799945))

(assert (=> d!700089 m!2799953))

(declare-fun m!2799955 () Bool)

(assert (=> d!700089 m!2799955))

(declare-fun m!2799957 () Bool)

(assert (=> b!2406106 m!2799957))

(assert (=> b!2406107 m!2799947))

(assert (=> b!2405968 d!700089))

(declare-fun b!2406161 () Bool)

(assert (=> b!2406161 true))

(assert (=> b!2406161 true))

(declare-fun bs!463295 () Bool)

(declare-fun b!2406158 () Bool)

(assert (= bs!463295 (and b!2406158 b!2406161)))

(declare-fun lambda!90517 () Int)

(declare-fun lambda!90516 () Int)

(assert (=> bs!463295 (not (= lambda!90517 lambda!90516))))

(assert (=> b!2406158 true))

(assert (=> b!2406158 true))

(declare-fun b!2406151 () Bool)

(declare-fun res!1021995 () Bool)

(declare-fun e!1532355 () Bool)

(assert (=> b!2406151 (=> res!1021995 e!1532355)))

(declare-fun call!146998 () Bool)

(assert (=> b!2406151 (= res!1021995 call!146998)))

(declare-fun e!1532351 () Bool)

(assert (=> b!2406151 (= e!1532351 e!1532355)))

(declare-fun b!2406152 () Bool)

(declare-fun e!1532352 () Bool)

(assert (=> b!2406152 (= e!1532352 e!1532351)))

(declare-fun c!383263 () Bool)

(assert (=> b!2406152 (= c!383263 (is-Star!7056 r!13927))))

(declare-fun bm!146993 () Bool)

(assert (=> bm!146993 (= call!146998 (isEmpty!16260 s!9460))))

(declare-fun b!2406153 () Bool)

(declare-fun c!383264 () Bool)

(assert (=> b!2406153 (= c!383264 (is-Union!7056 r!13927))))

(declare-fun e!1532353 () Bool)

(assert (=> b!2406153 (= e!1532353 e!1532352)))

(declare-fun b!2406154 () Bool)

(declare-fun c!383265 () Bool)

(assert (=> b!2406154 (= c!383265 (is-ElementMatch!7056 r!13927))))

(declare-fun e!1532356 () Bool)

(assert (=> b!2406154 (= e!1532356 e!1532353)))

(declare-fun b!2406155 () Bool)

(declare-fun e!1532350 () Bool)

(assert (=> b!2406155 (= e!1532350 (matchRSpec!905 (regTwo!14625 r!13927) s!9460))))

(declare-fun b!2406156 () Bool)

(declare-fun e!1532354 () Bool)

(assert (=> b!2406156 (= e!1532354 e!1532356)))

(declare-fun res!1021996 () Bool)

(assert (=> b!2406156 (= res!1021996 (not (is-EmptyLang!7056 r!13927)))))

(assert (=> b!2406156 (=> (not res!1021996) (not e!1532356))))

(declare-fun b!2406157 () Bool)

(assert (=> b!2406157 (= e!1532354 call!146998)))

(declare-fun call!146999 () Bool)

(assert (=> b!2406158 (= e!1532351 call!146999)))

(declare-fun d!700091 () Bool)

(declare-fun c!383266 () Bool)

(assert (=> d!700091 (= c!383266 (is-EmptyExpr!7056 r!13927))))

(assert (=> d!700091 (= (matchRSpec!905 r!13927 s!9460) e!1532354)))

(declare-fun b!2406159 () Bool)

(assert (=> b!2406159 (= e!1532352 e!1532350)))

(declare-fun res!1021997 () Bool)

(assert (=> b!2406159 (= res!1021997 (matchRSpec!905 (regOne!14625 r!13927) s!9460))))

(assert (=> b!2406159 (=> res!1021997 e!1532350)))

(declare-fun b!2406160 () Bool)

(assert (=> b!2406160 (= e!1532353 (= s!9460 (Cons!28252 (c!383220 r!13927) Nil!28252)))))

(assert (=> b!2406161 (= e!1532355 call!146999)))

(declare-fun bm!146994 () Bool)

(declare-fun Exists!1112 (Int) Bool)

(assert (=> bm!146994 (= call!146999 (Exists!1112 (ite c!383263 lambda!90516 lambda!90517)))))

(assert (= (and d!700091 c!383266) b!2406157))

(assert (= (and d!700091 (not c!383266)) b!2406156))

(assert (= (and b!2406156 res!1021996) b!2406154))

(assert (= (and b!2406154 c!383265) b!2406160))

(assert (= (and b!2406154 (not c!383265)) b!2406153))

(assert (= (and b!2406153 c!383264) b!2406159))

(assert (= (and b!2406153 (not c!383264)) b!2406152))

(assert (= (and b!2406159 (not res!1021997)) b!2406155))

(assert (= (and b!2406152 c!383263) b!2406151))

(assert (= (and b!2406152 (not c!383263)) b!2406158))

(assert (= (and b!2406151 (not res!1021995)) b!2406161))

(assert (= (or b!2406161 b!2406158) bm!146994))

(assert (= (or b!2406157 b!2406151) bm!146993))

(assert (=> bm!146993 m!2799953))

(declare-fun m!2799975 () Bool)

(assert (=> b!2406155 m!2799975))

(declare-fun m!2799977 () Bool)

(assert (=> b!2406159 m!2799977))

(declare-fun m!2799979 () Bool)

(assert (=> bm!146994 m!2799979))

(assert (=> b!2405968 d!700091))

(declare-fun d!700095 () Bool)

(assert (=> d!700095 (= (matchR!3173 r!13927 s!9460) (matchRSpec!905 r!13927 s!9460))))

(declare-fun lt!873000 () Unit!41383)

(declare-fun choose!14228 (Regex!7056 List!28350) Unit!41383)

(assert (=> d!700095 (= lt!873000 (choose!14228 r!13927 s!9460))))

(assert (=> d!700095 (validRegex!2781 r!13927)))

(assert (=> d!700095 (= (mainMatchTheorem!905 r!13927 s!9460) lt!873000)))

(declare-fun bs!463296 () Bool)

(assert (= bs!463296 d!700095))

(assert (=> bs!463296 m!2799897))

(assert (=> bs!463296 m!2799899))

(declare-fun m!2799981 () Bool)

(assert (=> bs!463296 m!2799981))

(assert (=> bs!463296 m!2799955))

(assert (=> b!2405968 d!700095))

(declare-fun d!700097 () Bool)

(declare-fun res!1021998 () Bool)

(declare-fun e!1532363 () Bool)

(assert (=> d!700097 (=> res!1021998 e!1532363)))

(assert (=> d!700097 (= res!1021998 (is-Nil!28253 l!9164))))

(assert (=> d!700097 (= (forall!5690 l!9164 lambda!90500) e!1532363)))

(declare-fun b!2406178 () Bool)

(declare-fun e!1532364 () Bool)

(assert (=> b!2406178 (= e!1532363 e!1532364)))

(declare-fun res!1021999 () Bool)

(assert (=> b!2406178 (=> (not res!1021999) (not e!1532364))))

(assert (=> b!2406178 (= res!1021999 (dynLambda!12166 lambda!90500 (h!33654 l!9164)))))

(declare-fun b!2406179 () Bool)

(assert (=> b!2406179 (= e!1532364 (forall!5690 (t!208328 l!9164) lambda!90500))))

(assert (= (and d!700097 (not res!1021998)) b!2406178))

(assert (= (and b!2406178 res!1021999) b!2406179))

(declare-fun b_lambda!74413 () Bool)

(assert (=> (not b_lambda!74413) (not b!2406178)))

(declare-fun m!2799983 () Bool)

(assert (=> b!2406178 m!2799983))

(declare-fun m!2799985 () Bool)

(assert (=> b!2406179 m!2799985))

(assert (=> start!235870 d!700097))

(declare-fun b!2406208 () Bool)

(declare-fun e!1532375 () Bool)

(declare-fun tp!765610 () Bool)

(assert (=> b!2406208 (= e!1532375 tp!765610)))

(declare-fun b!2406207 () Bool)

(declare-fun tp!765613 () Bool)

(declare-fun tp!765614 () Bool)

(assert (=> b!2406207 (= e!1532375 (and tp!765613 tp!765614))))

(declare-fun b!2406209 () Bool)

(declare-fun tp!765612 () Bool)

(declare-fun tp!765611 () Bool)

(assert (=> b!2406209 (= e!1532375 (and tp!765612 tp!765611))))

(declare-fun b!2406206 () Bool)

(assert (=> b!2406206 (= e!1532375 tp_is_empty!11525)))

(assert (=> b!2405972 (= tp!765569 e!1532375)))

(assert (= (and b!2405972 (is-ElementMatch!7056 (h!33654 l!9164))) b!2406206))

(assert (= (and b!2405972 (is-Concat!11692 (h!33654 l!9164))) b!2406207))

(assert (= (and b!2405972 (is-Star!7056 (h!33654 l!9164))) b!2406208))

(assert (= (and b!2405972 (is-Union!7056 (h!33654 l!9164))) b!2406209))

(declare-fun b!2406214 () Bool)

(declare-fun e!1532378 () Bool)

(declare-fun tp!765619 () Bool)

(declare-fun tp!765620 () Bool)

(assert (=> b!2406214 (= e!1532378 (and tp!765619 tp!765620))))

(assert (=> b!2405972 (= tp!765570 e!1532378)))

(assert (= (and b!2405972 (is-Cons!28253 (t!208328 l!9164))) b!2406214))

(declare-fun b!2406219 () Bool)

(declare-fun e!1532381 () Bool)

(declare-fun tp!765623 () Bool)

(assert (=> b!2406219 (= e!1532381 (and tp_is_empty!11525 tp!765623))))

(assert (=> b!2405967 (= tp!765575 e!1532381)))

(assert (= (and b!2405967 (is-Cons!28252 (t!208327 s!9460))) b!2406219))

(declare-fun b!2406222 () Bool)

(declare-fun e!1532382 () Bool)

(declare-fun tp!765624 () Bool)

(assert (=> b!2406222 (= e!1532382 tp!765624)))

(declare-fun b!2406221 () Bool)

(declare-fun tp!765627 () Bool)

(declare-fun tp!765628 () Bool)

(assert (=> b!2406221 (= e!1532382 (and tp!765627 tp!765628))))

(declare-fun b!2406223 () Bool)

(declare-fun tp!765626 () Bool)

(declare-fun tp!765625 () Bool)

(assert (=> b!2406223 (= e!1532382 (and tp!765626 tp!765625))))

(declare-fun b!2406220 () Bool)

(assert (=> b!2406220 (= e!1532382 tp_is_empty!11525)))

(assert (=> b!2405971 (= tp!765571 e!1532382)))

(assert (= (and b!2405971 (is-ElementMatch!7056 (regOne!14624 r!13927))) b!2406220))

(assert (= (and b!2405971 (is-Concat!11692 (regOne!14624 r!13927))) b!2406221))

(assert (= (and b!2405971 (is-Star!7056 (regOne!14624 r!13927))) b!2406222))

(assert (= (and b!2405971 (is-Union!7056 (regOne!14624 r!13927))) b!2406223))

(declare-fun b!2406226 () Bool)

(declare-fun e!1532383 () Bool)

(declare-fun tp!765629 () Bool)

(assert (=> b!2406226 (= e!1532383 tp!765629)))

(declare-fun b!2406225 () Bool)

(declare-fun tp!765632 () Bool)

(declare-fun tp!765633 () Bool)

(assert (=> b!2406225 (= e!1532383 (and tp!765632 tp!765633))))

(declare-fun b!2406227 () Bool)

(declare-fun tp!765631 () Bool)

(declare-fun tp!765630 () Bool)

(assert (=> b!2406227 (= e!1532383 (and tp!765631 tp!765630))))

(declare-fun b!2406224 () Bool)

(assert (=> b!2406224 (= e!1532383 tp_is_empty!11525)))

(assert (=> b!2405971 (= tp!765572 e!1532383)))

(assert (= (and b!2405971 (is-ElementMatch!7056 (regTwo!14624 r!13927))) b!2406224))

(assert (= (and b!2405971 (is-Concat!11692 (regTwo!14624 r!13927))) b!2406225))

(assert (= (and b!2405971 (is-Star!7056 (regTwo!14624 r!13927))) b!2406226))

(assert (= (and b!2405971 (is-Union!7056 (regTwo!14624 r!13927))) b!2406227))

(declare-fun b!2406230 () Bool)

(declare-fun e!1532384 () Bool)

(declare-fun tp!765634 () Bool)

(assert (=> b!2406230 (= e!1532384 tp!765634)))

(declare-fun b!2406229 () Bool)

(declare-fun tp!765637 () Bool)

(declare-fun tp!765638 () Bool)

(assert (=> b!2406229 (= e!1532384 (and tp!765637 tp!765638))))

(declare-fun b!2406231 () Bool)

(declare-fun tp!765636 () Bool)

(declare-fun tp!765635 () Bool)

(assert (=> b!2406231 (= e!1532384 (and tp!765636 tp!765635))))

(declare-fun b!2406228 () Bool)

(assert (=> b!2406228 (= e!1532384 tp_is_empty!11525)))

(assert (=> b!2405974 (= tp!765573 e!1532384)))

(assert (= (and b!2405974 (is-ElementMatch!7056 (regOne!14625 r!13927))) b!2406228))

(assert (= (and b!2405974 (is-Concat!11692 (regOne!14625 r!13927))) b!2406229))

(assert (= (and b!2405974 (is-Star!7056 (regOne!14625 r!13927))) b!2406230))

(assert (= (and b!2405974 (is-Union!7056 (regOne!14625 r!13927))) b!2406231))

(declare-fun b!2406234 () Bool)

(declare-fun e!1532385 () Bool)

(declare-fun tp!765639 () Bool)

(assert (=> b!2406234 (= e!1532385 tp!765639)))

(declare-fun b!2406233 () Bool)

(declare-fun tp!765642 () Bool)

(declare-fun tp!765643 () Bool)

(assert (=> b!2406233 (= e!1532385 (and tp!765642 tp!765643))))

(declare-fun b!2406235 () Bool)

(declare-fun tp!765641 () Bool)

(declare-fun tp!765640 () Bool)

(assert (=> b!2406235 (= e!1532385 (and tp!765641 tp!765640))))

(declare-fun b!2406232 () Bool)

(assert (=> b!2406232 (= e!1532385 tp_is_empty!11525)))

(assert (=> b!2405974 (= tp!765574 e!1532385)))

(assert (= (and b!2405974 (is-ElementMatch!7056 (regTwo!14625 r!13927))) b!2406232))

(assert (= (and b!2405974 (is-Concat!11692 (regTwo!14625 r!13927))) b!2406233))

(assert (= (and b!2405974 (is-Star!7056 (regTwo!14625 r!13927))) b!2406234))

(assert (= (and b!2405974 (is-Union!7056 (regTwo!14625 r!13927))) b!2406235))

(declare-fun b!2406238 () Bool)

(declare-fun e!1532386 () Bool)

(declare-fun tp!765644 () Bool)

(assert (=> b!2406238 (= e!1532386 tp!765644)))

(declare-fun b!2406237 () Bool)

(declare-fun tp!765647 () Bool)

(declare-fun tp!765648 () Bool)

(assert (=> b!2406237 (= e!1532386 (and tp!765647 tp!765648))))

(declare-fun b!2406239 () Bool)

(declare-fun tp!765646 () Bool)

(declare-fun tp!765645 () Bool)

(assert (=> b!2406239 (= e!1532386 (and tp!765646 tp!765645))))

(declare-fun b!2406236 () Bool)

(assert (=> b!2406236 (= e!1532386 tp_is_empty!11525)))

(assert (=> b!2405969 (= tp!765568 e!1532386)))

(assert (= (and b!2405969 (is-ElementMatch!7056 (reg!7385 r!13927))) b!2406236))

(assert (= (and b!2405969 (is-Concat!11692 (reg!7385 r!13927))) b!2406237))

(assert (= (and b!2405969 (is-Star!7056 (reg!7385 r!13927))) b!2406238))

(assert (= (and b!2405969 (is-Union!7056 (reg!7385 r!13927))) b!2406239))

(declare-fun b_lambda!74415 () Bool)

(assert (= b_lambda!74411 (or start!235870 b_lambda!74415)))

(declare-fun bs!463297 () Bool)

(declare-fun d!700099 () Bool)

(assert (= bs!463297 (and d!700099 start!235870)))

(assert (=> bs!463297 (= (dynLambda!12166 lambda!90500 (h!33654 lt!872980)) (validRegex!2781 (h!33654 lt!872980)))))

(declare-fun m!2799987 () Bool)

(assert (=> bs!463297 m!2799987))

(assert (=> b!2406015 d!700099))

(declare-fun b_lambda!74417 () Bool)

(assert (= b_lambda!74413 (or start!235870 b_lambda!74417)))

(declare-fun bs!463298 () Bool)

(declare-fun d!700101 () Bool)

(assert (= bs!463298 (and d!700101 start!235870)))

(assert (=> bs!463298 (= (dynLambda!12166 lambda!90500 (h!33654 l!9164)) (validRegex!2781 (h!33654 l!9164)))))

(declare-fun m!2799989 () Bool)

(assert (=> bs!463298 m!2799989))

(assert (=> b!2406178 d!700101))

(push 1)

(assert (not b!2406105))

(assert (not b!2406237))

(assert (not b!2406233))

(assert (not b!2406207))

(assert (not b!2406095))

(assert (not b!2406104))

(assert (not b!2406239))

(assert (not b!2406238))

(assert (not b!2406038))

(assert (not d!700095))

(assert (not d!700079))

(assert (not b!2406208))

(assert tp_is_empty!11525)

(assert (not b!2406231))

(assert (not b!2406155))

(assert (not b!2406046))

(assert (not bm!146994))

(assert (not bm!146988))

(assert (not b!2406235))

(assert (not b!2406226))

(assert (not b!2406042))

(assert (not b!2406159))

(assert (not b_lambda!74415))

(assert (not b!2406016))

(assert (not b!2406041))

(assert (not d!700089))

(assert (not b!2406214))

(assert (not b!2406225))

(assert (not b_lambda!74417))

(assert (not b!2406179))

(assert (not b!2406098))

(assert (not b!2406229))

(assert (not b!2406107))

(assert (not b!2406044))

(assert (not bs!463297))

(assert (not bm!146993))

(assert (not b!2406223))

(assert (not bs!463298))

(assert (not b!2406234))

(assert (not b!2406040))

(assert (not b!2406106))

(assert (not b!2406222))

(assert (not b!2406230))

(assert (not b!2406043))

(assert (not b!2406221))

(assert (not b!2406219))

(assert (not b!2406209))

(assert (not b!2406227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

