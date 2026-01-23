; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!743264 () Bool)

(assert start!743264)

(declare-fun b!7851923 () Bool)

(declare-fun e!4641338 () Bool)

(declare-fun tp_is_empty!52571 () Bool)

(declare-fun tp!2325424 () Bool)

(assert (=> b!7851923 (= e!4641338 (and tp_is_empty!52571 tp!2325424))))

(declare-fun b!7851924 () Bool)

(declare-fun e!4641340 () Bool)

(assert (=> b!7851924 (= e!4641340 tp_is_empty!52571)))

(declare-fun b!7851925 () Bool)

(declare-fun e!4641337 () Bool)

(declare-fun tp!2325428 () Bool)

(assert (=> b!7851925 (= e!4641337 (and tp_is_empty!52571 tp!2325428))))

(declare-fun b!7851926 () Bool)

(declare-fun e!4641339 () Bool)

(declare-fun tp!2325432 () Bool)

(declare-fun tp!2325427 () Bool)

(assert (=> b!7851926 (= e!4641339 (and tp!2325432 tp!2325427))))

(declare-fun res!3122267 () Bool)

(declare-fun e!4641336 () Bool)

(assert (=> start!743264 (=> (not res!3122267) (not e!4641336))))

(declare-datatypes ((C!42498 0))(
  ( (C!42499 (val!31711 Int)) )
))
(declare-datatypes ((Regex!21086 0))(
  ( (ElementMatch!21086 (c!1443166 C!42498)) (Concat!29931 (regOne!42684 Regex!21086) (regTwo!42684 Regex!21086)) (EmptyExpr!21086) (Star!21086 (reg!21415 Regex!21086)) (EmptyLang!21086) (Union!21086 (regOne!42685 Regex!21086) (regTwo!42685 Regex!21086)) )
))
(declare-fun r1!6227 () Regex!21086)

(declare-fun validRegex!11496 (Regex!21086) Bool)

(assert (=> start!743264 (= res!3122267 (validRegex!11496 r1!6227))))

(assert (=> start!743264 e!4641336))

(assert (=> start!743264 e!4641340))

(assert (=> start!743264 e!4641339))

(assert (=> start!743264 e!4641338))

(assert (=> start!743264 e!4641337))

(declare-fun b!7851927 () Bool)

(declare-fun tp!2325429 () Bool)

(assert (=> b!7851927 (= e!4641339 tp!2325429)))

(declare-fun b!7851928 () Bool)

(declare-fun tp!2325423 () Bool)

(declare-fun tp!2325431 () Bool)

(assert (=> b!7851928 (= e!4641340 (and tp!2325423 tp!2325431))))

(declare-fun b!7851929 () Bool)

(declare-fun res!3122265 () Bool)

(assert (=> b!7851929 (=> (not res!3122265) (not e!4641336))))

(declare-fun r2!6165 () Regex!21086)

(assert (=> b!7851929 (= res!3122265 (validRegex!11496 r2!6165))))

(declare-fun b!7851930 () Bool)

(declare-fun tp!2325421 () Bool)

(assert (=> b!7851930 (= e!4641340 tp!2325421)))

(declare-fun b!7851931 () Bool)

(declare-datatypes ((List!73945 0))(
  ( (Nil!73821) (Cons!73821 (h!80269 C!42498) (t!388680 List!73945)) )
))
(declare-fun s1!4084 () List!73945)

(declare-fun ListPrimitiveSize!463 (List!73945) Int)

(assert (=> b!7851931 (= e!4641336 (< (ListPrimitiveSize!463 s1!4084) 0))))

(declare-fun b!7851932 () Bool)

(declare-fun res!3122266 () Bool)

(assert (=> b!7851932 (=> (not res!3122266) (not e!4641336))))

(declare-fun s2!3706 () List!73945)

(declare-fun matchR!10522 (Regex!21086 List!73945) Bool)

(assert (=> b!7851932 (= res!3122266 (matchR!10522 r2!6165 s2!3706))))

(declare-fun b!7851933 () Bool)

(declare-fun tp!2325426 () Bool)

(declare-fun tp!2325425 () Bool)

(assert (=> b!7851933 (= e!4641339 (and tp!2325426 tp!2325425))))

(declare-fun b!7851934 () Bool)

(declare-fun tp!2325430 () Bool)

(declare-fun tp!2325422 () Bool)

(assert (=> b!7851934 (= e!4641340 (and tp!2325430 tp!2325422))))

(declare-fun b!7851935 () Bool)

(assert (=> b!7851935 (= e!4641339 tp_is_empty!52571)))

(declare-fun b!7851936 () Bool)

(declare-fun res!3122268 () Bool)

(assert (=> b!7851936 (=> (not res!3122268) (not e!4641336))))

(assert (=> b!7851936 (= res!3122268 (matchR!10522 r1!6227 s1!4084))))

(assert (= (and start!743264 res!3122267) b!7851929))

(assert (= (and b!7851929 res!3122265) b!7851936))

(assert (= (and b!7851936 res!3122268) b!7851932))

(assert (= (and b!7851932 res!3122266) b!7851931))

(assert (= (and start!743264 (is-ElementMatch!21086 r1!6227)) b!7851924))

(assert (= (and start!743264 (is-Concat!29931 r1!6227)) b!7851928))

(assert (= (and start!743264 (is-Star!21086 r1!6227)) b!7851930))

(assert (= (and start!743264 (is-Union!21086 r1!6227)) b!7851934))

(assert (= (and start!743264 (is-ElementMatch!21086 r2!6165)) b!7851935))

(assert (= (and start!743264 (is-Concat!29931 r2!6165)) b!7851933))

(assert (= (and start!743264 (is-Star!21086 r2!6165)) b!7851927))

(assert (= (and start!743264 (is-Union!21086 r2!6165)) b!7851926))

(assert (= (and start!743264 (is-Cons!73821 s1!4084)) b!7851923))

(assert (= (and start!743264 (is-Cons!73821 s2!3706)) b!7851925))

(declare-fun m!8258724 () Bool)

(assert (=> b!7851932 m!8258724))

(declare-fun m!8258726 () Bool)

(assert (=> start!743264 m!8258726))

(declare-fun m!8258728 () Bool)

(assert (=> b!7851931 m!8258728))

(declare-fun m!8258730 () Bool)

(assert (=> b!7851929 m!8258730))

(declare-fun m!8258732 () Bool)

(assert (=> b!7851936 m!8258732))

(push 1)

(assert (not b!7851927))

(assert (not b!7851934))

(assert (not b!7851936))

(assert (not b!7851928))

(assert (not b!7851923))

(assert (not b!7851925))

(assert (not b!7851929))

(assert (not b!7851926))

(assert tp_is_empty!52571)

(assert (not b!7851932))

(assert (not b!7851931))

(assert (not b!7851933))

(assert (not start!743264))

(assert (not b!7851930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7852021 () Bool)

(declare-fun res!3122307 () Bool)

(declare-fun e!4641380 () Bool)

(assert (=> b!7852021 (=> res!3122307 e!4641380)))

(assert (=> b!7852021 (= res!3122307 (not (is-ElementMatch!21086 r2!6165)))))

(declare-fun e!4641382 () Bool)

(assert (=> b!7852021 (= e!4641382 e!4641380)))

(declare-fun b!7852023 () Bool)

(declare-fun e!4641381 () Bool)

(declare-fun head!16043 (List!73945) C!42498)

(assert (=> b!7852023 (= e!4641381 (not (= (head!16043 s2!3706) (c!1443166 r2!6165))))))

(declare-fun b!7852024 () Bool)

(declare-fun e!4641379 () Bool)

(declare-fun derivativeStep!6321 (Regex!21086 C!42498) Regex!21086)

(declare-fun tail!15586 (List!73945) List!73945)

(assert (=> b!7852024 (= e!4641379 (matchR!10522 (derivativeStep!6321 r2!6165 (head!16043 s2!3706)) (tail!15586 s2!3706)))))

(declare-fun b!7852025 () Bool)

(declare-fun e!4641385 () Bool)

(declare-fun lt!2679763 () Bool)

(declare-fun call!727731 () Bool)

(assert (=> b!7852025 (= e!4641385 (= lt!2679763 call!727731))))

(declare-fun b!7852026 () Bool)

(declare-fun e!4641383 () Bool)

(assert (=> b!7852026 (= e!4641383 (= (head!16043 s2!3706) (c!1443166 r2!6165)))))

(declare-fun b!7852027 () Bool)

(assert (=> b!7852027 (= e!4641382 (not lt!2679763))))

(declare-fun b!7852028 () Bool)

(declare-fun res!3122305 () Bool)

(assert (=> b!7852028 (=> res!3122305 e!4641380)))

(assert (=> b!7852028 (= res!3122305 e!4641383)))

(declare-fun res!3122308 () Bool)

(assert (=> b!7852028 (=> (not res!3122308) (not e!4641383))))

(assert (=> b!7852028 (= res!3122308 lt!2679763)))

(declare-fun b!7852029 () Bool)

(declare-fun res!3122303 () Bool)

(assert (=> b!7852029 (=> res!3122303 e!4641381)))

(declare-fun isEmpty!42332 (List!73945) Bool)

(assert (=> b!7852029 (= res!3122303 (not (isEmpty!42332 (tail!15586 s2!3706))))))

(declare-fun b!7852030 () Bool)

(declare-fun e!4641384 () Bool)

(assert (=> b!7852030 (= e!4641384 e!4641381)))

(declare-fun res!3122302 () Bool)

(assert (=> b!7852030 (=> res!3122302 e!4641381)))

(assert (=> b!7852030 (= res!3122302 call!727731)))

(declare-fun b!7852031 () Bool)

(declare-fun res!3122304 () Bool)

(assert (=> b!7852031 (=> (not res!3122304) (not e!4641383))))

(assert (=> b!7852031 (= res!3122304 (not call!727731))))

(declare-fun d!2353458 () Bool)

(assert (=> d!2353458 e!4641385))

(declare-fun c!1443181 () Bool)

(assert (=> d!2353458 (= c!1443181 (is-EmptyExpr!21086 r2!6165))))

(assert (=> d!2353458 (= lt!2679763 e!4641379)))

(declare-fun c!1443180 () Bool)

(assert (=> d!2353458 (= c!1443180 (isEmpty!42332 s2!3706))))

(assert (=> d!2353458 (validRegex!11496 r2!6165)))

(assert (=> d!2353458 (= (matchR!10522 r2!6165 s2!3706) lt!2679763)))

(declare-fun b!7852022 () Bool)

(assert (=> b!7852022 (= e!4641380 e!4641384)))

(declare-fun res!3122306 () Bool)

(assert (=> b!7852022 (=> (not res!3122306) (not e!4641384))))

(assert (=> b!7852022 (= res!3122306 (not lt!2679763))))

(declare-fun b!7852032 () Bool)

(declare-fun res!3122301 () Bool)

(assert (=> b!7852032 (=> (not res!3122301) (not e!4641383))))

(assert (=> b!7852032 (= res!3122301 (isEmpty!42332 (tail!15586 s2!3706)))))

(declare-fun b!7852033 () Bool)

(declare-fun nullable!9358 (Regex!21086) Bool)

(assert (=> b!7852033 (= e!4641379 (nullable!9358 r2!6165))))

(declare-fun bm!727726 () Bool)

(assert (=> bm!727726 (= call!727731 (isEmpty!42332 s2!3706))))

(declare-fun b!7852034 () Bool)

(assert (=> b!7852034 (= e!4641385 e!4641382)))

(declare-fun c!1443179 () Bool)

(assert (=> b!7852034 (= c!1443179 (is-EmptyLang!21086 r2!6165))))

(assert (= (and d!2353458 c!1443180) b!7852033))

(assert (= (and d!2353458 (not c!1443180)) b!7852024))

(assert (= (and d!2353458 c!1443181) b!7852025))

(assert (= (and d!2353458 (not c!1443181)) b!7852034))

(assert (= (and b!7852034 c!1443179) b!7852027))

(assert (= (and b!7852034 (not c!1443179)) b!7852021))

(assert (= (and b!7852021 (not res!3122307)) b!7852028))

(assert (= (and b!7852028 res!3122308) b!7852031))

(assert (= (and b!7852031 res!3122304) b!7852032))

(assert (= (and b!7852032 res!3122301) b!7852026))

(assert (= (and b!7852028 (not res!3122305)) b!7852022))

(assert (= (and b!7852022 res!3122306) b!7852030))

(assert (= (and b!7852030 (not res!3122302)) b!7852029))

(assert (= (and b!7852029 (not res!3122303)) b!7852023))

(assert (= (or b!7852025 b!7852030 b!7852031) bm!727726))

(declare-fun m!8258746 () Bool)

(assert (=> b!7852029 m!8258746))

(assert (=> b!7852029 m!8258746))

(declare-fun m!8258748 () Bool)

(assert (=> b!7852029 m!8258748))

(declare-fun m!8258750 () Bool)

(assert (=> b!7852023 m!8258750))

(declare-fun m!8258752 () Bool)

(assert (=> b!7852033 m!8258752))

(assert (=> b!7852032 m!8258746))

(assert (=> b!7852032 m!8258746))

(assert (=> b!7852032 m!8258748))

(declare-fun m!8258754 () Bool)

(assert (=> bm!727726 m!8258754))

(assert (=> b!7852026 m!8258750))

(assert (=> b!7852024 m!8258750))

(assert (=> b!7852024 m!8258750))

(declare-fun m!8258756 () Bool)

(assert (=> b!7852024 m!8258756))

(assert (=> b!7852024 m!8258746))

(assert (=> b!7852024 m!8258756))

(assert (=> b!7852024 m!8258746))

(declare-fun m!8258758 () Bool)

(assert (=> b!7852024 m!8258758))

(assert (=> d!2353458 m!8258754))

(assert (=> d!2353458 m!8258730))

(assert (=> b!7851932 d!2353458))

(declare-fun b!7852063 () Bool)

(declare-fun res!3122329 () Bool)

(declare-fun e!4641408 () Bool)

(assert (=> b!7852063 (=> res!3122329 e!4641408)))

(assert (=> b!7852063 (= res!3122329 (not (is-Concat!29931 r2!6165)))))

(declare-fun e!4641410 () Bool)

(assert (=> b!7852063 (= e!4641410 e!4641408)))

(declare-fun b!7852064 () Bool)

(declare-fun e!4641413 () Bool)

(declare-fun call!727745 () Bool)

(assert (=> b!7852064 (= e!4641413 call!727745)))

(declare-fun b!7852065 () Bool)

(declare-fun e!4641411 () Bool)

(declare-fun call!727744 () Bool)

(assert (=> b!7852065 (= e!4641411 call!727744)))

(declare-fun c!1443188 () Bool)

(declare-fun bm!727739 () Bool)

(declare-fun c!1443189 () Bool)

(declare-fun call!727746 () Bool)

(assert (=> bm!727739 (= call!727746 (validRegex!11496 (ite c!1443189 (reg!21415 r2!6165) (ite c!1443188 (regTwo!42685 r2!6165) (regOne!42684 r2!6165)))))))

(declare-fun b!7852066 () Bool)

(declare-fun e!4641412 () Bool)

(declare-fun e!4641414 () Bool)

(assert (=> b!7852066 (= e!4641412 e!4641414)))

(assert (=> b!7852066 (= c!1443189 (is-Star!21086 r2!6165))))

(declare-fun b!7852067 () Bool)

(declare-fun e!4641409 () Bool)

(assert (=> b!7852067 (= e!4641409 call!727746)))

(declare-fun b!7852068 () Bool)

(assert (=> b!7852068 (= e!4641414 e!4641409)))

(declare-fun res!3122326 () Bool)

(assert (=> b!7852068 (= res!3122326 (not (nullable!9358 (reg!21415 r2!6165))))))

(assert (=> b!7852068 (=> (not res!3122326) (not e!4641409))))

(declare-fun bm!727740 () Bool)

(assert (=> bm!727740 (= call!727745 (validRegex!11496 (ite c!1443188 (regOne!42685 r2!6165) (regTwo!42684 r2!6165))))))

(declare-fun b!7852069 () Bool)

(declare-fun res!3122328 () Bool)

(assert (=> b!7852069 (=> (not res!3122328) (not e!4641411))))

(assert (=> b!7852069 (= res!3122328 call!727745)))

(assert (=> b!7852069 (= e!4641410 e!4641411)))

(declare-fun b!7852070 () Bool)

(assert (=> b!7852070 (= e!4641414 e!4641410)))

(assert (=> b!7852070 (= c!1443188 (is-Union!21086 r2!6165))))

(declare-fun b!7852071 () Bool)

(assert (=> b!7852071 (= e!4641408 e!4641413)))

(declare-fun res!3122325 () Bool)

(assert (=> b!7852071 (=> (not res!3122325) (not e!4641413))))

(assert (=> b!7852071 (= res!3122325 call!727744)))

(declare-fun d!2353464 () Bool)

(declare-fun res!3122327 () Bool)

(assert (=> d!2353464 (=> res!3122327 e!4641412)))

(assert (=> d!2353464 (= res!3122327 (is-ElementMatch!21086 r2!6165))))

(assert (=> d!2353464 (= (validRegex!11496 r2!6165) e!4641412)))

(declare-fun bm!727741 () Bool)

(assert (=> bm!727741 (= call!727744 call!727746)))

(assert (= (and d!2353464 (not res!3122327)) b!7852066))

(assert (= (and b!7852066 c!1443189) b!7852068))

(assert (= (and b!7852066 (not c!1443189)) b!7852070))

(assert (= (and b!7852068 res!3122326) b!7852067))

(assert (= (and b!7852070 c!1443188) b!7852069))

(assert (= (and b!7852070 (not c!1443188)) b!7852063))

(assert (= (and b!7852069 res!3122328) b!7852065))

(assert (= (and b!7852063 (not res!3122329)) b!7852071))

(assert (= (and b!7852071 res!3122325) b!7852064))

(assert (= (or b!7852069 b!7852064) bm!727740))

(assert (= (or b!7852065 b!7852071) bm!727741))

(assert (= (or b!7852067 bm!727741) bm!727739))

(declare-fun m!8258760 () Bool)

(assert (=> bm!727739 m!8258760))

(declare-fun m!8258762 () Bool)

(assert (=> b!7852068 m!8258762))

(declare-fun m!8258764 () Bool)

(assert (=> bm!727740 m!8258764))

(assert (=> b!7851929 d!2353464))

(declare-fun d!2353466 () Bool)

(declare-fun lt!2679766 () Int)

(assert (=> d!2353466 (>= lt!2679766 0)))

(declare-fun e!4641424 () Int)

(assert (=> d!2353466 (= lt!2679766 e!4641424)))

(declare-fun c!1443194 () Bool)

(assert (=> d!2353466 (= c!1443194 (is-Nil!73821 s1!4084))))

(assert (=> d!2353466 (= (ListPrimitiveSize!463 s1!4084) lt!2679766)))

(declare-fun b!7852085 () Bool)

(assert (=> b!7852085 (= e!4641424 0)))

(declare-fun b!7852086 () Bool)

(assert (=> b!7852086 (= e!4641424 (+ 1 (ListPrimitiveSize!463 (t!388680 s1!4084))))))

(assert (= (and d!2353466 c!1443194) b!7852085))

(assert (= (and d!2353466 (not c!1443194)) b!7852086))

(declare-fun m!8258766 () Bool)

(assert (=> b!7852086 m!8258766))

(assert (=> b!7851931 d!2353466))

(declare-fun b!7852087 () Bool)

(declare-fun res!3122341 () Bool)

(declare-fun e!4641426 () Bool)

(assert (=> b!7852087 (=> res!3122341 e!4641426)))

(assert (=> b!7852087 (= res!3122341 (not (is-ElementMatch!21086 r1!6227)))))

(declare-fun e!4641428 () Bool)

(assert (=> b!7852087 (= e!4641428 e!4641426)))

(declare-fun b!7852089 () Bool)

(declare-fun e!4641427 () Bool)

(assert (=> b!7852089 (= e!4641427 (not (= (head!16043 s1!4084) (c!1443166 r1!6227))))))

(declare-fun b!7852090 () Bool)

(declare-fun e!4641425 () Bool)

(assert (=> b!7852090 (= e!4641425 (matchR!10522 (derivativeStep!6321 r1!6227 (head!16043 s1!4084)) (tail!15586 s1!4084)))))

(declare-fun b!7852091 () Bool)

(declare-fun e!4641431 () Bool)

(declare-fun lt!2679767 () Bool)

(declare-fun call!727750 () Bool)

(assert (=> b!7852091 (= e!4641431 (= lt!2679767 call!727750))))

(declare-fun b!7852092 () Bool)

(declare-fun e!4641429 () Bool)

(assert (=> b!7852092 (= e!4641429 (= (head!16043 s1!4084) (c!1443166 r1!6227)))))

(declare-fun b!7852093 () Bool)

(assert (=> b!7852093 (= e!4641428 (not lt!2679767))))

(declare-fun b!7852094 () Bool)

(declare-fun res!3122339 () Bool)

(assert (=> b!7852094 (=> res!3122339 e!4641426)))

(assert (=> b!7852094 (= res!3122339 e!4641429)))

(declare-fun res!3122342 () Bool)

(assert (=> b!7852094 (=> (not res!3122342) (not e!4641429))))

(assert (=> b!7852094 (= res!3122342 lt!2679767)))

(declare-fun b!7852095 () Bool)

(declare-fun res!3122337 () Bool)

(assert (=> b!7852095 (=> res!3122337 e!4641427)))

(assert (=> b!7852095 (= res!3122337 (not (isEmpty!42332 (tail!15586 s1!4084))))))

(declare-fun b!7852096 () Bool)

(declare-fun e!4641430 () Bool)

(assert (=> b!7852096 (= e!4641430 e!4641427)))

(declare-fun res!3122336 () Bool)

(assert (=> b!7852096 (=> res!3122336 e!4641427)))

(assert (=> b!7852096 (= res!3122336 call!727750)))

(declare-fun b!7852097 () Bool)

(declare-fun res!3122338 () Bool)

(assert (=> b!7852097 (=> (not res!3122338) (not e!4641429))))

(assert (=> b!7852097 (= res!3122338 (not call!727750))))

(declare-fun d!2353468 () Bool)

(assert (=> d!2353468 e!4641431))

(declare-fun c!1443197 () Bool)

(assert (=> d!2353468 (= c!1443197 (is-EmptyExpr!21086 r1!6227))))

(assert (=> d!2353468 (= lt!2679767 e!4641425)))

(declare-fun c!1443196 () Bool)

(assert (=> d!2353468 (= c!1443196 (isEmpty!42332 s1!4084))))

(assert (=> d!2353468 (validRegex!11496 r1!6227)))

(assert (=> d!2353468 (= (matchR!10522 r1!6227 s1!4084) lt!2679767)))

(declare-fun b!7852088 () Bool)

(assert (=> b!7852088 (= e!4641426 e!4641430)))

(declare-fun res!3122340 () Bool)

(assert (=> b!7852088 (=> (not res!3122340) (not e!4641430))))

(assert (=> b!7852088 (= res!3122340 (not lt!2679767))))

(declare-fun b!7852098 () Bool)

(declare-fun res!3122335 () Bool)

(assert (=> b!7852098 (=> (not res!3122335) (not e!4641429))))

(assert (=> b!7852098 (= res!3122335 (isEmpty!42332 (tail!15586 s1!4084)))))

(declare-fun b!7852099 () Bool)

(assert (=> b!7852099 (= e!4641425 (nullable!9358 r1!6227))))

(declare-fun bm!727745 () Bool)

(assert (=> bm!727745 (= call!727750 (isEmpty!42332 s1!4084))))

(declare-fun b!7852100 () Bool)

(assert (=> b!7852100 (= e!4641431 e!4641428)))

(declare-fun c!1443195 () Bool)

(assert (=> b!7852100 (= c!1443195 (is-EmptyLang!21086 r1!6227))))

(assert (= (and d!2353468 c!1443196) b!7852099))

(assert (= (and d!2353468 (not c!1443196)) b!7852090))

(assert (= (and d!2353468 c!1443197) b!7852091))

(assert (= (and d!2353468 (not c!1443197)) b!7852100))

(assert (= (and b!7852100 c!1443195) b!7852093))

(assert (= (and b!7852100 (not c!1443195)) b!7852087))

(assert (= (and b!7852087 (not res!3122341)) b!7852094))

(assert (= (and b!7852094 res!3122342) b!7852097))

(assert (= (and b!7852097 res!3122338) b!7852098))

(assert (= (and b!7852098 res!3122335) b!7852092))

(assert (= (and b!7852094 (not res!3122339)) b!7852088))

(assert (= (and b!7852088 res!3122340) b!7852096))

(assert (= (and b!7852096 (not res!3122336)) b!7852095))

(assert (= (and b!7852095 (not res!3122337)) b!7852089))

(assert (= (or b!7852091 b!7852096 b!7852097) bm!727745))

(declare-fun m!8258774 () Bool)

(assert (=> b!7852095 m!8258774))

(assert (=> b!7852095 m!8258774))

(declare-fun m!8258776 () Bool)

(assert (=> b!7852095 m!8258776))

(declare-fun m!8258778 () Bool)

(assert (=> b!7852089 m!8258778))

(declare-fun m!8258780 () Bool)

(assert (=> b!7852099 m!8258780))

(assert (=> b!7852098 m!8258774))

(assert (=> b!7852098 m!8258774))

(assert (=> b!7852098 m!8258776))

(declare-fun m!8258782 () Bool)

(assert (=> bm!727745 m!8258782))

(assert (=> b!7852092 m!8258778))

(assert (=> b!7852090 m!8258778))

(assert (=> b!7852090 m!8258778))

(declare-fun m!8258784 () Bool)

(assert (=> b!7852090 m!8258784))

(assert (=> b!7852090 m!8258774))

(assert (=> b!7852090 m!8258784))

(assert (=> b!7852090 m!8258774))

(declare-fun m!8258786 () Bool)

(assert (=> b!7852090 m!8258786))

(assert (=> d!2353468 m!8258782))

(assert (=> d!2353468 m!8258726))

(assert (=> b!7851936 d!2353468))

(declare-fun b!7852101 () Bool)

(declare-fun res!3122347 () Bool)

(declare-fun e!4641432 () Bool)

(assert (=> b!7852101 (=> res!3122347 e!4641432)))

(assert (=> b!7852101 (= res!3122347 (not (is-Concat!29931 r1!6227)))))

(declare-fun e!4641434 () Bool)

(assert (=> b!7852101 (= e!4641434 e!4641432)))

(declare-fun b!7852102 () Bool)

(declare-fun e!4641437 () Bool)

(declare-fun call!727752 () Bool)

(assert (=> b!7852102 (= e!4641437 call!727752)))

(declare-fun b!7852103 () Bool)

(declare-fun e!4641435 () Bool)

(declare-fun call!727751 () Bool)

(assert (=> b!7852103 (= e!4641435 call!727751)))

(declare-fun call!727753 () Bool)

(declare-fun bm!727746 () Bool)

(declare-fun c!1443198 () Bool)

(declare-fun c!1443199 () Bool)

(assert (=> bm!727746 (= call!727753 (validRegex!11496 (ite c!1443199 (reg!21415 r1!6227) (ite c!1443198 (regTwo!42685 r1!6227) (regOne!42684 r1!6227)))))))

(declare-fun b!7852104 () Bool)

(declare-fun e!4641436 () Bool)

(declare-fun e!4641438 () Bool)

(assert (=> b!7852104 (= e!4641436 e!4641438)))

(assert (=> b!7852104 (= c!1443199 (is-Star!21086 r1!6227))))

(declare-fun b!7852105 () Bool)

(declare-fun e!4641433 () Bool)

(assert (=> b!7852105 (= e!4641433 call!727753)))

(declare-fun b!7852106 () Bool)

(assert (=> b!7852106 (= e!4641438 e!4641433)))

(declare-fun res!3122344 () Bool)

(assert (=> b!7852106 (= res!3122344 (not (nullable!9358 (reg!21415 r1!6227))))))

(assert (=> b!7852106 (=> (not res!3122344) (not e!4641433))))

(declare-fun bm!727747 () Bool)

(assert (=> bm!727747 (= call!727752 (validRegex!11496 (ite c!1443198 (regOne!42685 r1!6227) (regTwo!42684 r1!6227))))))

(declare-fun b!7852107 () Bool)

(declare-fun res!3122346 () Bool)

(assert (=> b!7852107 (=> (not res!3122346) (not e!4641435))))

(assert (=> b!7852107 (= res!3122346 call!727752)))

(assert (=> b!7852107 (= e!4641434 e!4641435)))

(declare-fun b!7852108 () Bool)

(assert (=> b!7852108 (= e!4641438 e!4641434)))

(assert (=> b!7852108 (= c!1443198 (is-Union!21086 r1!6227))))

(declare-fun b!7852109 () Bool)

(assert (=> b!7852109 (= e!4641432 e!4641437)))

(declare-fun res!3122343 () Bool)

(assert (=> b!7852109 (=> (not res!3122343) (not e!4641437))))

(assert (=> b!7852109 (= res!3122343 call!727751)))

(declare-fun d!2353472 () Bool)

(declare-fun res!3122345 () Bool)

(assert (=> d!2353472 (=> res!3122345 e!4641436)))

(assert (=> d!2353472 (= res!3122345 (is-ElementMatch!21086 r1!6227))))

(assert (=> d!2353472 (= (validRegex!11496 r1!6227) e!4641436)))

(declare-fun bm!727748 () Bool)

(assert (=> bm!727748 (= call!727751 call!727753)))

(assert (= (and d!2353472 (not res!3122345)) b!7852104))

(assert (= (and b!7852104 c!1443199) b!7852106))

(assert (= (and b!7852104 (not c!1443199)) b!7852108))

(assert (= (and b!7852106 res!3122344) b!7852105))

(assert (= (and b!7852108 c!1443198) b!7852107))

(assert (= (and b!7852108 (not c!1443198)) b!7852101))

(assert (= (and b!7852107 res!3122346) b!7852103))

(assert (= (and b!7852101 (not res!3122347)) b!7852109))

(assert (= (and b!7852109 res!3122343) b!7852102))

(assert (= (or b!7852107 b!7852102) bm!727747))

(assert (= (or b!7852103 b!7852109) bm!727748))

(assert (= (or b!7852105 bm!727748) bm!727746))

(declare-fun m!8258788 () Bool)

(assert (=> bm!727746 m!8258788))

(declare-fun m!8258790 () Bool)

(assert (=> b!7852106 m!8258790))

(declare-fun m!8258792 () Bool)

(assert (=> bm!727747 m!8258792))

(assert (=> start!743264 d!2353472))

(declare-fun b!7852120 () Bool)

(declare-fun e!4641441 () Bool)

(assert (=> b!7852120 (= e!4641441 tp_is_empty!52571)))

(assert (=> b!7851927 (= tp!2325429 e!4641441)))

(declare-fun b!7852122 () Bool)

(declare-fun tp!2325481 () Bool)

(assert (=> b!7852122 (= e!4641441 tp!2325481)))

(declare-fun b!7852121 () Bool)

(declare-fun tp!2325483 () Bool)

(declare-fun tp!2325482 () Bool)

(assert (=> b!7852121 (= e!4641441 (and tp!2325483 tp!2325482))))

(declare-fun b!7852123 () Bool)

(declare-fun tp!2325479 () Bool)

(declare-fun tp!2325480 () Bool)

(assert (=> b!7852123 (= e!4641441 (and tp!2325479 tp!2325480))))

(assert (= (and b!7851927 (is-ElementMatch!21086 (reg!21415 r2!6165))) b!7852120))

(assert (= (and b!7851927 (is-Concat!29931 (reg!21415 r2!6165))) b!7852121))

(assert (= (and b!7851927 (is-Star!21086 (reg!21415 r2!6165))) b!7852122))

(assert (= (and b!7851927 (is-Union!21086 (reg!21415 r2!6165))) b!7852123))

(declare-fun b!7852124 () Bool)

(declare-fun e!4641442 () Bool)

(assert (=> b!7852124 (= e!4641442 tp_is_empty!52571)))

(assert (=> b!7851934 (= tp!2325430 e!4641442)))

(declare-fun b!7852126 () Bool)

(declare-fun tp!2325486 () Bool)

(assert (=> b!7852126 (= e!4641442 tp!2325486)))

(declare-fun b!7852125 () Bool)

(declare-fun tp!2325488 () Bool)

(declare-fun tp!2325487 () Bool)

(assert (=> b!7852125 (= e!4641442 (and tp!2325488 tp!2325487))))

(declare-fun b!7852127 () Bool)

(declare-fun tp!2325484 () Bool)

(declare-fun tp!2325485 () Bool)

(assert (=> b!7852127 (= e!4641442 (and tp!2325484 tp!2325485))))

(assert (= (and b!7851934 (is-ElementMatch!21086 (regOne!42685 r1!6227))) b!7852124))

(assert (= (and b!7851934 (is-Concat!29931 (regOne!42685 r1!6227))) b!7852125))

(assert (= (and b!7851934 (is-Star!21086 (regOne!42685 r1!6227))) b!7852126))

(assert (= (and b!7851934 (is-Union!21086 (regOne!42685 r1!6227))) b!7852127))

(declare-fun b!7852128 () Bool)

(declare-fun e!4641443 () Bool)

(assert (=> b!7852128 (= e!4641443 tp_is_empty!52571)))

(assert (=> b!7851934 (= tp!2325422 e!4641443)))

(declare-fun b!7852130 () Bool)

(declare-fun tp!2325491 () Bool)

(assert (=> b!7852130 (= e!4641443 tp!2325491)))

(declare-fun b!7852129 () Bool)

(declare-fun tp!2325493 () Bool)

(declare-fun tp!2325492 () Bool)

(assert (=> b!7852129 (= e!4641443 (and tp!2325493 tp!2325492))))

(declare-fun b!7852131 () Bool)

(declare-fun tp!2325489 () Bool)

(declare-fun tp!2325490 () Bool)

(assert (=> b!7852131 (= e!4641443 (and tp!2325489 tp!2325490))))

(assert (= (and b!7851934 (is-ElementMatch!21086 (regTwo!42685 r1!6227))) b!7852128))

(assert (= (and b!7851934 (is-Concat!29931 (regTwo!42685 r1!6227))) b!7852129))

(assert (= (and b!7851934 (is-Star!21086 (regTwo!42685 r1!6227))) b!7852130))

(assert (= (and b!7851934 (is-Union!21086 (regTwo!42685 r1!6227))) b!7852131))

(declare-fun b!7852136 () Bool)

(declare-fun e!4641446 () Bool)

(declare-fun tp!2325496 () Bool)

(assert (=> b!7852136 (= e!4641446 (and tp_is_empty!52571 tp!2325496))))

(assert (=> b!7851923 (= tp!2325424 e!4641446)))

(assert (= (and b!7851923 (is-Cons!73821 (t!388680 s1!4084))) b!7852136))

(declare-fun b!7852137 () Bool)

(declare-fun e!4641447 () Bool)

(assert (=> b!7852137 (= e!4641447 tp_is_empty!52571)))

(assert (=> b!7851928 (= tp!2325423 e!4641447)))

(declare-fun b!7852139 () Bool)

(declare-fun tp!2325499 () Bool)

(assert (=> b!7852139 (= e!4641447 tp!2325499)))

(declare-fun b!7852138 () Bool)

(declare-fun tp!2325501 () Bool)

(declare-fun tp!2325500 () Bool)

(assert (=> b!7852138 (= e!4641447 (and tp!2325501 tp!2325500))))

(declare-fun b!7852140 () Bool)

(declare-fun tp!2325497 () Bool)

(declare-fun tp!2325498 () Bool)

(assert (=> b!7852140 (= e!4641447 (and tp!2325497 tp!2325498))))

(assert (= (and b!7851928 (is-ElementMatch!21086 (regOne!42684 r1!6227))) b!7852137))

(assert (= (and b!7851928 (is-Concat!29931 (regOne!42684 r1!6227))) b!7852138))

(assert (= (and b!7851928 (is-Star!21086 (regOne!42684 r1!6227))) b!7852139))

(assert (= (and b!7851928 (is-Union!21086 (regOne!42684 r1!6227))) b!7852140))

(declare-fun b!7852141 () Bool)

(declare-fun e!4641448 () Bool)

(assert (=> b!7852141 (= e!4641448 tp_is_empty!52571)))

(assert (=> b!7851928 (= tp!2325431 e!4641448)))

(declare-fun b!7852143 () Bool)

(declare-fun tp!2325504 () Bool)

(assert (=> b!7852143 (= e!4641448 tp!2325504)))

(declare-fun b!7852142 () Bool)

(declare-fun tp!2325506 () Bool)

(declare-fun tp!2325505 () Bool)

(assert (=> b!7852142 (= e!4641448 (and tp!2325506 tp!2325505))))

(declare-fun b!7852144 () Bool)

(declare-fun tp!2325502 () Bool)

(declare-fun tp!2325503 () Bool)

(assert (=> b!7852144 (= e!4641448 (and tp!2325502 tp!2325503))))

(assert (= (and b!7851928 (is-ElementMatch!21086 (regTwo!42684 r1!6227))) b!7852141))

(assert (= (and b!7851928 (is-Concat!29931 (regTwo!42684 r1!6227))) b!7852142))

(assert (= (and b!7851928 (is-Star!21086 (regTwo!42684 r1!6227))) b!7852143))

(assert (= (and b!7851928 (is-Union!21086 (regTwo!42684 r1!6227))) b!7852144))

(declare-fun b!7852145 () Bool)

(declare-fun e!4641449 () Bool)

(assert (=> b!7852145 (= e!4641449 tp_is_empty!52571)))

(assert (=> b!7851933 (= tp!2325426 e!4641449)))

(declare-fun b!7852147 () Bool)

(declare-fun tp!2325509 () Bool)

(assert (=> b!7852147 (= e!4641449 tp!2325509)))

(declare-fun b!7852146 () Bool)

(declare-fun tp!2325511 () Bool)

(declare-fun tp!2325510 () Bool)

(assert (=> b!7852146 (= e!4641449 (and tp!2325511 tp!2325510))))

(declare-fun b!7852148 () Bool)

(declare-fun tp!2325507 () Bool)

(declare-fun tp!2325508 () Bool)

(assert (=> b!7852148 (= e!4641449 (and tp!2325507 tp!2325508))))

(assert (= (and b!7851933 (is-ElementMatch!21086 (regOne!42684 r2!6165))) b!7852145))

(assert (= (and b!7851933 (is-Concat!29931 (regOne!42684 r2!6165))) b!7852146))

(assert (= (and b!7851933 (is-Star!21086 (regOne!42684 r2!6165))) b!7852147))

(assert (= (and b!7851933 (is-Union!21086 (regOne!42684 r2!6165))) b!7852148))

(declare-fun b!7852149 () Bool)

(declare-fun e!4641450 () Bool)

(assert (=> b!7852149 (= e!4641450 tp_is_empty!52571)))

(assert (=> b!7851933 (= tp!2325425 e!4641450)))

(declare-fun b!7852151 () Bool)

(declare-fun tp!2325514 () Bool)

(assert (=> b!7852151 (= e!4641450 tp!2325514)))

(declare-fun b!7852150 () Bool)

(declare-fun tp!2325516 () Bool)

(declare-fun tp!2325515 () Bool)

(assert (=> b!7852150 (= e!4641450 (and tp!2325516 tp!2325515))))

(declare-fun b!7852152 () Bool)

(declare-fun tp!2325512 () Bool)

(declare-fun tp!2325513 () Bool)

(assert (=> b!7852152 (= e!4641450 (and tp!2325512 tp!2325513))))

(assert (= (and b!7851933 (is-ElementMatch!21086 (regTwo!42684 r2!6165))) b!7852149))

(assert (= (and b!7851933 (is-Concat!29931 (regTwo!42684 r2!6165))) b!7852150))

(assert (= (and b!7851933 (is-Star!21086 (regTwo!42684 r2!6165))) b!7852151))

(assert (= (and b!7851933 (is-Union!21086 (regTwo!42684 r2!6165))) b!7852152))

(declare-fun b!7852153 () Bool)

(declare-fun e!4641451 () Bool)

(assert (=> b!7852153 (= e!4641451 tp_is_empty!52571)))

(assert (=> b!7851930 (= tp!2325421 e!4641451)))

(declare-fun b!7852155 () Bool)

(declare-fun tp!2325519 () Bool)

(assert (=> b!7852155 (= e!4641451 tp!2325519)))

(declare-fun b!7852154 () Bool)

(declare-fun tp!2325521 () Bool)

(declare-fun tp!2325520 () Bool)

(assert (=> b!7852154 (= e!4641451 (and tp!2325521 tp!2325520))))

(declare-fun b!7852156 () Bool)

(declare-fun tp!2325517 () Bool)

(declare-fun tp!2325518 () Bool)

(assert (=> b!7852156 (= e!4641451 (and tp!2325517 tp!2325518))))

(assert (= (and b!7851930 (is-ElementMatch!21086 (reg!21415 r1!6227))) b!7852153))

(assert (= (and b!7851930 (is-Concat!29931 (reg!21415 r1!6227))) b!7852154))

(assert (= (and b!7851930 (is-Star!21086 (reg!21415 r1!6227))) b!7852155))

(assert (= (and b!7851930 (is-Union!21086 (reg!21415 r1!6227))) b!7852156))

(declare-fun b!7852157 () Bool)

(declare-fun e!4641452 () Bool)

(assert (=> b!7852157 (= e!4641452 tp_is_empty!52571)))

(assert (=> b!7851926 (= tp!2325432 e!4641452)))

(declare-fun b!7852159 () Bool)

(declare-fun tp!2325524 () Bool)

(assert (=> b!7852159 (= e!4641452 tp!2325524)))

(declare-fun b!7852158 () Bool)

(declare-fun tp!2325526 () Bool)

(declare-fun tp!2325525 () Bool)

(assert (=> b!7852158 (= e!4641452 (and tp!2325526 tp!2325525))))

(declare-fun b!7852160 () Bool)

(declare-fun tp!2325522 () Bool)

(declare-fun tp!2325523 () Bool)

(assert (=> b!7852160 (= e!4641452 (and tp!2325522 tp!2325523))))

(assert (= (and b!7851926 (is-ElementMatch!21086 (regOne!42685 r2!6165))) b!7852157))

(assert (= (and b!7851926 (is-Concat!29931 (regOne!42685 r2!6165))) b!7852158))

(assert (= (and b!7851926 (is-Star!21086 (regOne!42685 r2!6165))) b!7852159))

(assert (= (and b!7851926 (is-Union!21086 (regOne!42685 r2!6165))) b!7852160))

(declare-fun b!7852161 () Bool)

(declare-fun e!4641453 () Bool)

(assert (=> b!7852161 (= e!4641453 tp_is_empty!52571)))

(assert (=> b!7851926 (= tp!2325427 e!4641453)))

(declare-fun b!7852163 () Bool)

(declare-fun tp!2325529 () Bool)

(assert (=> b!7852163 (= e!4641453 tp!2325529)))

(declare-fun b!7852162 () Bool)

(declare-fun tp!2325531 () Bool)

(declare-fun tp!2325530 () Bool)

(assert (=> b!7852162 (= e!4641453 (and tp!2325531 tp!2325530))))

(declare-fun b!7852164 () Bool)

(declare-fun tp!2325527 () Bool)

(declare-fun tp!2325528 () Bool)

(assert (=> b!7852164 (= e!4641453 (and tp!2325527 tp!2325528))))

(assert (= (and b!7851926 (is-ElementMatch!21086 (regTwo!42685 r2!6165))) b!7852161))

(assert (= (and b!7851926 (is-Concat!29931 (regTwo!42685 r2!6165))) b!7852162))

(assert (= (and b!7851926 (is-Star!21086 (regTwo!42685 r2!6165))) b!7852163))

(assert (= (and b!7851926 (is-Union!21086 (regTwo!42685 r2!6165))) b!7852164))

(declare-fun b!7852165 () Bool)

(declare-fun e!4641454 () Bool)

(declare-fun tp!2325532 () Bool)

(assert (=> b!7852165 (= e!4641454 (and tp_is_empty!52571 tp!2325532))))

(assert (=> b!7851925 (= tp!2325428 e!4641454)))

(assert (= (and b!7851925 (is-Cons!73821 (t!388680 s2!3706))) b!7852165))

(push 1)

(assert (not b!7852023))

(assert (not b!7852029))

(assert (not b!7852125))

(assert (not b!7852068))

(assert (not b!7852155))

(assert (not b!7852090))

(assert (not b!7852151))

(assert (not b!7852089))

(assert (not b!7852142))

(assert (not b!7852032))

(assert (not b!7852095))

(assert (not b!7852123))

(assert (not bm!727745))

(assert (not b!7852154))

(assert (not b!7852164))

(assert (not b!7852024))

(assert (not b!7852159))

(assert (not b!7852148))

(assert (not bm!727739))

(assert (not b!7852158))

(assert (not b!7852138))

(assert (not b!7852131))

(assert (not b!7852150))

(assert (not b!7852156))

(assert (not d!2353468))

(assert (not b!7852033))

(assert (not b!7852165))

(assert (not b!7852162))

(assert (not d!2353458))

(assert (not b!7852163))

(assert (not bm!727746))

(assert (not b!7852086))

(assert (not b!7852129))

(assert (not b!7852106))

(assert (not b!7852139))

(assert (not b!7852140))

(assert (not bm!727747))

(assert (not b!7852026))

(assert (not b!7852092))

(assert (not b!7852146))

(assert (not b!7852143))

(assert (not b!7852147))

(assert (not b!7852126))

(assert (not b!7852160))

(assert (not b!7852130))

(assert (not b!7852098))

(assert (not b!7852136))

(assert (not bm!727726))

(assert (not b!7852121))

(assert (not b!7852152))

(assert tp_is_empty!52571)

(assert (not bm!727740))

(assert (not b!7852144))

(assert (not b!7852127))

(assert (not b!7852099))

(assert (not b!7852122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

