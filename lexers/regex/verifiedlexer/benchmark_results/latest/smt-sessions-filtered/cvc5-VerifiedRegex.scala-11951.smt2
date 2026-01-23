; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668982 () Bool)

(assert start!668982)

(declare-fun b!6977504 () Bool)

(assert (=> b!6977504 true))

(declare-fun b!6977503 () Bool)

(assert (=> b!6977503 true))

(declare-fun b!6977498 () Bool)

(declare-fun e!4193452 () Bool)

(declare-fun tp!1927398 () Bool)

(assert (=> b!6977498 (= e!4193452 tp!1927398)))

(declare-fun b!6977499 () Bool)

(declare-fun e!4193455 () Bool)

(declare-fun tp_is_empty!43521 () Bool)

(declare-fun tp!1927397 () Bool)

(assert (=> b!6977499 (= e!4193455 (and tp_is_empty!43521 tp!1927397))))

(declare-fun b!6977500 () Bool)

(declare-fun e!4193454 () Bool)

(declare-datatypes ((C!34566 0))(
  ( (C!34567 (val!26985 Int)) )
))
(declare-datatypes ((Regex!17148 0))(
  ( (ElementMatch!17148 (c!1293279 C!34566)) (Concat!25993 (regOne!34808 Regex!17148) (regTwo!34808 Regex!17148)) (EmptyExpr!17148) (Star!17148 (reg!17477 Regex!17148)) (EmptyLang!17148) (Union!17148 (regOne!34809 Regex!17148) (regTwo!34809 Regex!17148)) )
))
(declare-datatypes ((List!66989 0))(
  ( (Nil!66865) (Cons!66865 (h!73313 Regex!17148) (t!380732 List!66989)) )
))
(declare-datatypes ((Context!12288 0))(
  ( (Context!12289 (exprs!6644 List!66989)) )
))
(declare-fun ct2!306 () Context!12288)

(declare-fun lambda!398225 () Int)

(declare-fun forall!16022 (List!66989 Int) Bool)

(assert (=> b!6977500 (= e!4193454 (forall!16022 (exprs!6644 ct2!306) lambda!398225))))

(declare-fun b!6977501 () Bool)

(declare-fun res!2845142 () Bool)

(declare-fun e!4193456 () Bool)

(assert (=> b!6977501 (=> (not res!2845142) (not e!4193456))))

(declare-datatypes ((List!66990 0))(
  ( (Nil!66866) (Cons!66866 (h!73314 C!34566) (t!380733 List!66990)) )
))
(declare-fun s!7408 () List!66990)

(assert (=> b!6977501 (= res!2845142 (is-Cons!66866 s!7408))))

(declare-fun tp!1927399 () Bool)

(declare-fun setNonEmpty!47374 () Bool)

(declare-fun setElem!47374 () Context!12288)

(declare-fun setRes!47374 () Bool)

(declare-fun e!4193457 () Bool)

(declare-fun inv!85730 (Context!12288) Bool)

(assert (=> setNonEmpty!47374 (= setRes!47374 (and tp!1927399 (inv!85730 setElem!47374) e!4193457))))

(declare-fun z1!570 () (Set Context!12288))

(declare-fun setRest!47374 () (Set Context!12288))

(assert (=> setNonEmpty!47374 (= z1!570 (set.union (set.insert setElem!47374 (as set.empty (Set Context!12288))) setRest!47374))))

(declare-fun b!6977502 () Bool)

(declare-fun res!2845144 () Bool)

(declare-fun e!4193453 () Bool)

(assert (=> b!6977502 (=> res!2845144 e!4193453)))

(declare-fun lt!2480223 () Context!12288)

(declare-fun lt!2480220 () (Set Context!12288))

(assert (=> b!6977502 (= res!2845144 (not (set.member lt!2480223 lt!2480220)))))

(assert (=> b!6977503 (= e!4193453 e!4193454)))

(declare-fun res!2845141 () Bool)

(assert (=> b!6977503 (=> res!2845141 e!4193454)))

(declare-fun lambda!398226 () Int)

(declare-fun mapPost2!3 ((Set Context!12288) Int Context!12288) Context!12288)

(assert (=> b!6977503 (= res!2845141 (not (forall!16022 (exprs!6644 (mapPost2!3 z1!570 lambda!398226 lt!2480223)) lambda!398225)))))

(assert (=> b!6977504 (= e!4193456 (not e!4193453))))

(declare-fun res!2845143 () Bool)

(assert (=> b!6977504 (=> res!2845143 e!4193453)))

(declare-fun matchZipper!2688 ((Set Context!12288) List!66990) Bool)

(assert (=> b!6977504 (= res!2845143 (not (matchZipper!2688 (set.insert lt!2480223 (as set.empty (Set Context!12288))) s!7408)))))

(declare-fun lambda!398224 () Int)

(declare-fun getWitness!1001 ((Set Context!12288) Int) Context!12288)

(assert (=> b!6977504 (= lt!2480223 (getWitness!1001 lt!2480220 lambda!398224))))

(declare-datatypes ((List!66991 0))(
  ( (Nil!66867) (Cons!66867 (h!73315 Context!12288) (t!380734 List!66991)) )
))
(declare-fun lt!2480221 () List!66991)

(declare-fun exists!2890 (List!66991 Int) Bool)

(assert (=> b!6977504 (exists!2890 lt!2480221 lambda!398224)))

(declare-datatypes ((Unit!160945 0))(
  ( (Unit!160946) )
))
(declare-fun lt!2480222 () Unit!160945)

(declare-fun lemmaZipperMatchesExistsMatchingContext!117 (List!66991 List!66990) Unit!160945)

(assert (=> b!6977504 (= lt!2480222 (lemmaZipperMatchesExistsMatchingContext!117 lt!2480221 s!7408))))

(declare-fun toList!10508 ((Set Context!12288)) List!66991)

(assert (=> b!6977504 (= lt!2480221 (toList!10508 lt!2480220))))

(declare-fun setIsEmpty!47374 () Bool)

(assert (=> setIsEmpty!47374 setRes!47374))

(declare-fun b!6977497 () Bool)

(declare-fun tp!1927400 () Bool)

(assert (=> b!6977497 (= e!4193457 tp!1927400)))

(declare-fun res!2845145 () Bool)

(assert (=> start!668982 (=> (not res!2845145) (not e!4193456))))

(assert (=> start!668982 (= res!2845145 (matchZipper!2688 lt!2480220 s!7408))))

(declare-fun appendTo!269 ((Set Context!12288) Context!12288) (Set Context!12288))

(assert (=> start!668982 (= lt!2480220 (appendTo!269 z1!570 ct2!306))))

(assert (=> start!668982 e!4193456))

(declare-fun condSetEmpty!47374 () Bool)

(assert (=> start!668982 (= condSetEmpty!47374 (= z1!570 (as set.empty (Set Context!12288))))))

(assert (=> start!668982 setRes!47374))

(assert (=> start!668982 (and (inv!85730 ct2!306) e!4193452)))

(assert (=> start!668982 e!4193455))

(assert (= (and start!668982 res!2845145) b!6977501))

(assert (= (and b!6977501 res!2845142) b!6977504))

(assert (= (and b!6977504 (not res!2845143)) b!6977502))

(assert (= (and b!6977502 (not res!2845144)) b!6977503))

(assert (= (and b!6977503 (not res!2845141)) b!6977500))

(assert (= (and start!668982 condSetEmpty!47374) setIsEmpty!47374))

(assert (= (and start!668982 (not condSetEmpty!47374)) setNonEmpty!47374))

(assert (= setNonEmpty!47374 b!6977497))

(assert (= start!668982 b!6977498))

(assert (= (and start!668982 (is-Cons!66866 s!7408)) b!6977499))

(declare-fun m!7662938 () Bool)

(assert (=> b!6977500 m!7662938))

(declare-fun m!7662940 () Bool)

(assert (=> b!6977503 m!7662940))

(declare-fun m!7662942 () Bool)

(assert (=> b!6977503 m!7662942))

(declare-fun m!7662944 () Bool)

(assert (=> start!668982 m!7662944))

(declare-fun m!7662946 () Bool)

(assert (=> start!668982 m!7662946))

(declare-fun m!7662948 () Bool)

(assert (=> start!668982 m!7662948))

(declare-fun m!7662950 () Bool)

(assert (=> b!6977504 m!7662950))

(declare-fun m!7662952 () Bool)

(assert (=> b!6977504 m!7662952))

(declare-fun m!7662954 () Bool)

(assert (=> b!6977504 m!7662954))

(assert (=> b!6977504 m!7662950))

(declare-fun m!7662956 () Bool)

(assert (=> b!6977504 m!7662956))

(declare-fun m!7662958 () Bool)

(assert (=> b!6977504 m!7662958))

(declare-fun m!7662960 () Bool)

(assert (=> b!6977504 m!7662960))

(declare-fun m!7662962 () Bool)

(assert (=> b!6977502 m!7662962))

(declare-fun m!7662964 () Bool)

(assert (=> setNonEmpty!47374 m!7662964))

(push 1)

(assert (not b!6977499))

(assert (not b!6977500))

(assert (not b!6977498))

(assert (not start!668982))

(assert (not b!6977504))

(assert tp_is_empty!43521)

(assert (not setNonEmpty!47374))

(assert (not b!6977497))

(assert (not b!6977503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172474 () Bool)

(declare-fun c!1293289 () Bool)

(declare-fun isEmpty!39041 (List!66990) Bool)

(assert (=> d!2172474 (= c!1293289 (isEmpty!39041 s!7408))))

(declare-fun e!4193478 () Bool)

(assert (=> d!2172474 (= (matchZipper!2688 (set.insert lt!2480223 (as set.empty (Set Context!12288))) s!7408) e!4193478)))

(declare-fun b!6977541 () Bool)

(declare-fun nullableZipper!2385 ((Set Context!12288)) Bool)

(assert (=> b!6977541 (= e!4193478 (nullableZipper!2385 (set.insert lt!2480223 (as set.empty (Set Context!12288)))))))

(declare-fun b!6977542 () Bool)

(declare-fun derivationStepZipper!2632 ((Set Context!12288) C!34566) (Set Context!12288))

(declare-fun head!14054 (List!66990) C!34566)

(declare-fun tail!13121 (List!66990) List!66990)

(assert (=> b!6977542 (= e!4193478 (matchZipper!2688 (derivationStepZipper!2632 (set.insert lt!2480223 (as set.empty (Set Context!12288))) (head!14054 s!7408)) (tail!13121 s!7408)))))

(assert (= (and d!2172474 c!1293289) b!6977541))

(assert (= (and d!2172474 (not c!1293289)) b!6977542))

(declare-fun m!7662994 () Bool)

(assert (=> d!2172474 m!7662994))

(assert (=> b!6977541 m!7662950))

(declare-fun m!7662996 () Bool)

(assert (=> b!6977541 m!7662996))

(declare-fun m!7662998 () Bool)

(assert (=> b!6977542 m!7662998))

(assert (=> b!6977542 m!7662950))

(assert (=> b!6977542 m!7662998))

(declare-fun m!7663000 () Bool)

(assert (=> b!6977542 m!7663000))

(declare-fun m!7663002 () Bool)

(assert (=> b!6977542 m!7663002))

(assert (=> b!6977542 m!7663000))

(assert (=> b!6977542 m!7663002))

(declare-fun m!7663004 () Bool)

(assert (=> b!6977542 m!7663004))

(assert (=> b!6977504 d!2172474))

(declare-fun d!2172476 () Bool)

(declare-fun e!4193481 () Bool)

(assert (=> d!2172476 e!4193481))

(declare-fun res!2845164 () Bool)

(assert (=> d!2172476 (=> (not res!2845164) (not e!4193481))))

(declare-fun lt!2480240 () Context!12288)

(declare-fun dynLambda!26675 (Int Context!12288) Bool)

(assert (=> d!2172476 (= res!2845164 (dynLambda!26675 lambda!398224 lt!2480240))))

(declare-fun getWitness!1003 (List!66991 Int) Context!12288)

(assert (=> d!2172476 (= lt!2480240 (getWitness!1003 (toList!10508 lt!2480220) lambda!398224))))

(declare-fun exists!2892 ((Set Context!12288) Int) Bool)

(assert (=> d!2172476 (exists!2892 lt!2480220 lambda!398224)))

(assert (=> d!2172476 (= (getWitness!1001 lt!2480220 lambda!398224) lt!2480240)))

(declare-fun b!6977545 () Bool)

(assert (=> b!6977545 (= e!4193481 (set.member lt!2480240 lt!2480220))))

(assert (= (and d!2172476 res!2845164) b!6977545))

(declare-fun b_lambda!261119 () Bool)

(assert (=> (not b_lambda!261119) (not d!2172476)))

(declare-fun m!7663006 () Bool)

(assert (=> d!2172476 m!7663006))

(assert (=> d!2172476 m!7662954))

(assert (=> d!2172476 m!7662954))

(declare-fun m!7663008 () Bool)

(assert (=> d!2172476 m!7663008))

(declare-fun m!7663010 () Bool)

(assert (=> d!2172476 m!7663010))

(declare-fun m!7663012 () Bool)

(assert (=> b!6977545 m!7663012))

(assert (=> b!6977504 d!2172476))

(declare-fun d!2172478 () Bool)

(declare-fun e!4193484 () Bool)

(assert (=> d!2172478 e!4193484))

(declare-fun res!2845167 () Bool)

(assert (=> d!2172478 (=> (not res!2845167) (not e!4193484))))

(declare-fun lt!2480243 () List!66991)

(declare-fun noDuplicate!2476 (List!66991) Bool)

(assert (=> d!2172478 (= res!2845167 (noDuplicate!2476 lt!2480243))))

(declare-fun choose!51945 ((Set Context!12288)) List!66991)

(assert (=> d!2172478 (= lt!2480243 (choose!51945 lt!2480220))))

(assert (=> d!2172478 (= (toList!10508 lt!2480220) lt!2480243)))

(declare-fun b!6977548 () Bool)

(declare-fun content!13167 (List!66991) (Set Context!12288))

(assert (=> b!6977548 (= e!4193484 (= (content!13167 lt!2480243) lt!2480220))))

(assert (= (and d!2172478 res!2845167) b!6977548))

(declare-fun m!7663014 () Bool)

(assert (=> d!2172478 m!7663014))

(declare-fun m!7663016 () Bool)

(assert (=> d!2172478 m!7663016))

(declare-fun m!7663018 () Bool)

(assert (=> b!6977548 m!7663018))

(assert (=> b!6977504 d!2172478))

(declare-fun bs!1860177 () Bool)

(declare-fun d!2172480 () Bool)

(assert (= bs!1860177 (and d!2172480 b!6977504)))

(declare-fun lambda!398242 () Int)

(assert (=> bs!1860177 (= lambda!398242 lambda!398224)))

(assert (=> d!2172480 true))

(assert (=> d!2172480 (exists!2890 lt!2480221 lambda!398242)))

(declare-fun lt!2480246 () Unit!160945)

(declare-fun choose!51946 (List!66991 List!66990) Unit!160945)

(assert (=> d!2172480 (= lt!2480246 (choose!51946 lt!2480221 s!7408))))

(assert (=> d!2172480 (matchZipper!2688 (content!13167 lt!2480221) s!7408)))

(assert (=> d!2172480 (= (lemmaZipperMatchesExistsMatchingContext!117 lt!2480221 s!7408) lt!2480246)))

(declare-fun bs!1860178 () Bool)

(assert (= bs!1860178 d!2172480))

(declare-fun m!7663020 () Bool)

(assert (=> bs!1860178 m!7663020))

(declare-fun m!7663022 () Bool)

(assert (=> bs!1860178 m!7663022))

(declare-fun m!7663024 () Bool)

(assert (=> bs!1860178 m!7663024))

(assert (=> bs!1860178 m!7663024))

(declare-fun m!7663026 () Bool)

(assert (=> bs!1860178 m!7663026))

(assert (=> b!6977504 d!2172480))

(declare-fun bs!1860179 () Bool)

(declare-fun d!2172482 () Bool)

(assert (= bs!1860179 (and d!2172482 b!6977504)))

(declare-fun lambda!398245 () Int)

(assert (=> bs!1860179 (not (= lambda!398245 lambda!398224))))

(declare-fun bs!1860180 () Bool)

(assert (= bs!1860180 (and d!2172482 d!2172480)))

(assert (=> bs!1860180 (not (= lambda!398245 lambda!398242))))

(assert (=> d!2172482 true))

(declare-fun order!27801 () Int)

(declare-fun dynLambda!26676 (Int Int) Int)

(assert (=> d!2172482 (< (dynLambda!26676 order!27801 lambda!398224) (dynLambda!26676 order!27801 lambda!398245))))

(declare-fun forall!16024 (List!66991 Int) Bool)

(assert (=> d!2172482 (= (exists!2890 lt!2480221 lambda!398224) (not (forall!16024 lt!2480221 lambda!398245)))))

(declare-fun bs!1860181 () Bool)

(assert (= bs!1860181 d!2172482))

(declare-fun m!7663028 () Bool)

(assert (=> bs!1860181 m!7663028))

(assert (=> b!6977504 d!2172482))

(declare-fun d!2172484 () Bool)

(declare-fun res!2845173 () Bool)

(declare-fun e!4193489 () Bool)

(assert (=> d!2172484 (=> res!2845173 e!4193489)))

(assert (=> d!2172484 (= res!2845173 (is-Nil!66865 (exprs!6644 ct2!306)))))

(assert (=> d!2172484 (= (forall!16022 (exprs!6644 ct2!306) lambda!398225) e!4193489)))

(declare-fun b!6977555 () Bool)

(declare-fun e!4193490 () Bool)

(assert (=> b!6977555 (= e!4193489 e!4193490)))

(declare-fun res!2845174 () Bool)

(assert (=> b!6977555 (=> (not res!2845174) (not e!4193490))))

(declare-fun dynLambda!26677 (Int Regex!17148) Bool)

(assert (=> b!6977555 (= res!2845174 (dynLambda!26677 lambda!398225 (h!73313 (exprs!6644 ct2!306))))))

(declare-fun b!6977556 () Bool)

(assert (=> b!6977556 (= e!4193490 (forall!16022 (t!380732 (exprs!6644 ct2!306)) lambda!398225))))

(assert (= (and d!2172484 (not res!2845173)) b!6977555))

(assert (= (and b!6977555 res!2845174) b!6977556))

(declare-fun b_lambda!261121 () Bool)

(assert (=> (not b_lambda!261121) (not b!6977555)))

(declare-fun m!7663030 () Bool)

(assert (=> b!6977555 m!7663030))

(declare-fun m!7663032 () Bool)

(assert (=> b!6977556 m!7663032))

(assert (=> b!6977500 d!2172484))

(declare-fun d!2172486 () Bool)

(declare-fun c!1293292 () Bool)

(assert (=> d!2172486 (= c!1293292 (isEmpty!39041 s!7408))))

(declare-fun e!4193491 () Bool)

(assert (=> d!2172486 (= (matchZipper!2688 lt!2480220 s!7408) e!4193491)))

(declare-fun b!6977557 () Bool)

(assert (=> b!6977557 (= e!4193491 (nullableZipper!2385 lt!2480220))))

(declare-fun b!6977558 () Bool)

(assert (=> b!6977558 (= e!4193491 (matchZipper!2688 (derivationStepZipper!2632 lt!2480220 (head!14054 s!7408)) (tail!13121 s!7408)))))

(assert (= (and d!2172486 c!1293292) b!6977557))

(assert (= (and d!2172486 (not c!1293292)) b!6977558))

(assert (=> d!2172486 m!7662994))

(declare-fun m!7663034 () Bool)

(assert (=> b!6977557 m!7663034))

(assert (=> b!6977558 m!7662998))

(assert (=> b!6977558 m!7662998))

(declare-fun m!7663036 () Bool)

(assert (=> b!6977558 m!7663036))

(assert (=> b!6977558 m!7663002))

(assert (=> b!6977558 m!7663036))

(assert (=> b!6977558 m!7663002))

(declare-fun m!7663038 () Bool)

(assert (=> b!6977558 m!7663038))

(assert (=> start!668982 d!2172486))

(declare-fun bs!1860182 () Bool)

(declare-fun d!2172488 () Bool)

(assert (= bs!1860182 (and d!2172488 b!6977503)))

(declare-fun lambda!398250 () Int)

(assert (=> bs!1860182 (= lambda!398250 lambda!398226)))

(assert (=> d!2172488 true))

(declare-fun map!15398 ((Set Context!12288) Int) (Set Context!12288))

(assert (=> d!2172488 (= (appendTo!269 z1!570 ct2!306) (map!15398 z1!570 lambda!398250))))

(declare-fun bs!1860183 () Bool)

(assert (= bs!1860183 d!2172488))

(declare-fun m!7663040 () Bool)

(assert (=> bs!1860183 m!7663040))

(assert (=> start!668982 d!2172488))

(declare-fun bs!1860184 () Bool)

(declare-fun d!2172490 () Bool)

(assert (= bs!1860184 (and d!2172490 b!6977503)))

(declare-fun lambda!398253 () Int)

(assert (=> bs!1860184 (= lambda!398253 lambda!398225)))

(assert (=> d!2172490 (= (inv!85730 ct2!306) (forall!16022 (exprs!6644 ct2!306) lambda!398253))))

(declare-fun bs!1860185 () Bool)

(assert (= bs!1860185 d!2172490))

(declare-fun m!7663042 () Bool)

(assert (=> bs!1860185 m!7663042))

(assert (=> start!668982 d!2172490))

(declare-fun bs!1860186 () Bool)

(declare-fun d!2172492 () Bool)

(assert (= bs!1860186 (and d!2172492 b!6977503)))

(declare-fun lambda!398254 () Int)

(assert (=> bs!1860186 (= lambda!398254 lambda!398225)))

(declare-fun bs!1860187 () Bool)

(assert (= bs!1860187 (and d!2172492 d!2172490)))

(assert (=> bs!1860187 (= lambda!398254 lambda!398253)))

(assert (=> d!2172492 (= (inv!85730 setElem!47374) (forall!16022 (exprs!6644 setElem!47374) lambda!398254))))

(declare-fun bs!1860188 () Bool)

(assert (= bs!1860188 d!2172492))

(declare-fun m!7663044 () Bool)

(assert (=> bs!1860188 m!7663044))

(assert (=> setNonEmpty!47374 d!2172492))

(declare-fun d!2172494 () Bool)

(declare-fun res!2845175 () Bool)

(declare-fun e!4193492 () Bool)

(assert (=> d!2172494 (=> res!2845175 e!4193492)))

(assert (=> d!2172494 (= res!2845175 (is-Nil!66865 (exprs!6644 (mapPost2!3 z1!570 lambda!398226 lt!2480223))))))

(assert (=> d!2172494 (= (forall!16022 (exprs!6644 (mapPost2!3 z1!570 lambda!398226 lt!2480223)) lambda!398225) e!4193492)))

(declare-fun b!6977559 () Bool)

(declare-fun e!4193493 () Bool)

(assert (=> b!6977559 (= e!4193492 e!4193493)))

(declare-fun res!2845176 () Bool)

(assert (=> b!6977559 (=> (not res!2845176) (not e!4193493))))

(assert (=> b!6977559 (= res!2845176 (dynLambda!26677 lambda!398225 (h!73313 (exprs!6644 (mapPost2!3 z1!570 lambda!398226 lt!2480223)))))))

(declare-fun b!6977560 () Bool)

(assert (=> b!6977560 (= e!4193493 (forall!16022 (t!380732 (exprs!6644 (mapPost2!3 z1!570 lambda!398226 lt!2480223))) lambda!398225))))

(assert (= (and d!2172494 (not res!2845175)) b!6977559))

(assert (= (and b!6977559 res!2845176) b!6977560))

(declare-fun b_lambda!261123 () Bool)

(assert (=> (not b_lambda!261123) (not b!6977559)))

(declare-fun m!7663046 () Bool)

(assert (=> b!6977559 m!7663046))

(declare-fun m!7663048 () Bool)

(assert (=> b!6977560 m!7663048))

(assert (=> b!6977503 d!2172494))

(declare-fun d!2172496 () Bool)

(declare-fun e!4193496 () Bool)

(assert (=> d!2172496 e!4193496))

(declare-fun res!2845179 () Bool)

(assert (=> d!2172496 (=> (not res!2845179) (not e!4193496))))

(declare-fun lt!2480251 () Context!12288)

(declare-fun dynLambda!26678 (Int Context!12288) Context!12288)

(assert (=> d!2172496 (= res!2845179 (= lt!2480223 (dynLambda!26678 lambda!398226 lt!2480251)))))

(declare-fun choose!51947 ((Set Context!12288) Int Context!12288) Context!12288)

(assert (=> d!2172496 (= lt!2480251 (choose!51947 z1!570 lambda!398226 lt!2480223))))

(assert (=> d!2172496 (set.member lt!2480223 (map!15398 z1!570 lambda!398226))))

(assert (=> d!2172496 (= (mapPost2!3 z1!570 lambda!398226 lt!2480223) lt!2480251)))

(declare-fun b!6977564 () Bool)

(assert (=> b!6977564 (= e!4193496 (set.member lt!2480251 z1!570))))

(assert (= (and d!2172496 res!2845179) b!6977564))

(declare-fun b_lambda!261125 () Bool)

(assert (=> (not b_lambda!261125) (not d!2172496)))

(declare-fun m!7663050 () Bool)

(assert (=> d!2172496 m!7663050))

(declare-fun m!7663052 () Bool)

(assert (=> d!2172496 m!7663052))

(declare-fun m!7663054 () Bool)

(assert (=> d!2172496 m!7663054))

(declare-fun m!7663056 () Bool)

(assert (=> d!2172496 m!7663056))

(declare-fun m!7663058 () Bool)

(assert (=> b!6977564 m!7663058))

(assert (=> b!6977503 d!2172496))

(declare-fun b!6977569 () Bool)

(declare-fun e!4193499 () Bool)

(declare-fun tp!1927417 () Bool)

(declare-fun tp!1927418 () Bool)

(assert (=> b!6977569 (= e!4193499 (and tp!1927417 tp!1927418))))

(assert (=> b!6977497 (= tp!1927400 e!4193499)))

(assert (= (and b!6977497 (is-Cons!66865 (exprs!6644 setElem!47374))) b!6977569))

(declare-fun condSetEmpty!47380 () Bool)

(assert (=> setNonEmpty!47374 (= condSetEmpty!47380 (= setRest!47374 (as set.empty (Set Context!12288))))))

(declare-fun setRes!47380 () Bool)

(assert (=> setNonEmpty!47374 (= tp!1927399 setRes!47380)))

(declare-fun setIsEmpty!47380 () Bool)

(assert (=> setIsEmpty!47380 setRes!47380))

(declare-fun setElem!47380 () Context!12288)

(declare-fun setNonEmpty!47380 () Bool)

(declare-fun e!4193502 () Bool)

(declare-fun tp!1927424 () Bool)

(assert (=> setNonEmpty!47380 (= setRes!47380 (and tp!1927424 (inv!85730 setElem!47380) e!4193502))))

(declare-fun setRest!47380 () (Set Context!12288))

(assert (=> setNonEmpty!47380 (= setRest!47374 (set.union (set.insert setElem!47380 (as set.empty (Set Context!12288))) setRest!47380))))

(declare-fun b!6977574 () Bool)

(declare-fun tp!1927423 () Bool)

(assert (=> b!6977574 (= e!4193502 tp!1927423)))

(assert (= (and setNonEmpty!47374 condSetEmpty!47380) setIsEmpty!47380))

(assert (= (and setNonEmpty!47374 (not condSetEmpty!47380)) setNonEmpty!47380))

(assert (= setNonEmpty!47380 b!6977574))

(declare-fun m!7663060 () Bool)

(assert (=> setNonEmpty!47380 m!7663060))

(declare-fun b!6977575 () Bool)

(declare-fun e!4193503 () Bool)

(declare-fun tp!1927425 () Bool)

(declare-fun tp!1927426 () Bool)

(assert (=> b!6977575 (= e!4193503 (and tp!1927425 tp!1927426))))

(assert (=> b!6977498 (= tp!1927398 e!4193503)))

(assert (= (and b!6977498 (is-Cons!66865 (exprs!6644 ct2!306))) b!6977575))

(declare-fun b!6977582 () Bool)

(declare-fun e!4193508 () Bool)

(declare-fun tp!1927429 () Bool)

(assert (=> b!6977582 (= e!4193508 (and tp_is_empty!43521 tp!1927429))))

(assert (=> b!6977499 (= tp!1927397 e!4193508)))

(assert (= (and b!6977499 (is-Cons!66866 (t!380733 s!7408))) b!6977582))

(declare-fun b_lambda!261127 () Bool)

(assert (= b_lambda!261121 (or b!6977503 b_lambda!261127)))

(declare-fun bs!1860189 () Bool)

(declare-fun d!2172500 () Bool)

(assert (= bs!1860189 (and d!2172500 b!6977503)))

(declare-fun validRegex!8823 (Regex!17148) Bool)

(assert (=> bs!1860189 (= (dynLambda!26677 lambda!398225 (h!73313 (exprs!6644 ct2!306))) (validRegex!8823 (h!73313 (exprs!6644 ct2!306))))))

(declare-fun m!7663062 () Bool)

(assert (=> bs!1860189 m!7663062))

(assert (=> b!6977555 d!2172500))

(declare-fun b_lambda!261129 () Bool)

(assert (= b_lambda!261125 (or b!6977503 b_lambda!261129)))

(declare-fun bs!1860190 () Bool)

(declare-fun d!2172502 () Bool)

(assert (= bs!1860190 (and d!2172502 b!6977503)))

(declare-fun lt!2480254 () Unit!160945)

(declare-fun lemmaConcatPreservesForall!485 (List!66989 List!66989 Int) Unit!160945)

(assert (=> bs!1860190 (= lt!2480254 (lemmaConcatPreservesForall!485 (exprs!6644 lt!2480251) (exprs!6644 ct2!306) lambda!398225))))

(declare-fun ++!15094 (List!66989 List!66989) List!66989)

(assert (=> bs!1860190 (= (dynLambda!26678 lambda!398226 lt!2480251) (Context!12289 (++!15094 (exprs!6644 lt!2480251) (exprs!6644 ct2!306))))))

(declare-fun m!7663064 () Bool)

(assert (=> bs!1860190 m!7663064))

(declare-fun m!7663066 () Bool)

(assert (=> bs!1860190 m!7663066))

(assert (=> d!2172496 d!2172502))

(declare-fun b_lambda!261131 () Bool)

(assert (= b_lambda!261119 (or b!6977504 b_lambda!261131)))

(declare-fun bs!1860191 () Bool)

(declare-fun d!2172504 () Bool)

(assert (= bs!1860191 (and d!2172504 b!6977504)))

(assert (=> bs!1860191 (= (dynLambda!26675 lambda!398224 lt!2480240) (matchZipper!2688 (set.insert lt!2480240 (as set.empty (Set Context!12288))) s!7408))))

(declare-fun m!7663068 () Bool)

(assert (=> bs!1860191 m!7663068))

(assert (=> bs!1860191 m!7663068))

(declare-fun m!7663070 () Bool)

(assert (=> bs!1860191 m!7663070))

(assert (=> d!2172476 d!2172504))

(declare-fun b_lambda!261133 () Bool)

(assert (= b_lambda!261123 (or b!6977503 b_lambda!261133)))

(declare-fun bs!1860192 () Bool)

(declare-fun d!2172506 () Bool)

(assert (= bs!1860192 (and d!2172506 b!6977503)))

(assert (=> bs!1860192 (= (dynLambda!26677 lambda!398225 (h!73313 (exprs!6644 (mapPost2!3 z1!570 lambda!398226 lt!2480223)))) (validRegex!8823 (h!73313 (exprs!6644 (mapPost2!3 z1!570 lambda!398226 lt!2480223)))))))

(declare-fun m!7663072 () Bool)

(assert (=> bs!1860192 m!7663072))

(assert (=> b!6977559 d!2172506))

(push 1)

(assert (not b!6977557))

(assert (not d!2172488))

(assert (not bs!1860191))

(assert (not bs!1860189))

(assert (not b!6977582))

(assert (not d!2172480))

(assert (not bs!1860192))

(assert (not setNonEmpty!47380))

(assert (not bs!1860190))

(assert (not b!6977574))

(assert (not d!2172492))

(assert (not b_lambda!261127))

(assert (not d!2172474))

(assert tp_is_empty!43521)

(assert (not b_lambda!261131))

(assert (not b!6977541))

(assert (not b!6977569))

(assert (not d!2172476))

(assert (not b_lambda!261133))

(assert (not b_lambda!261129))

(assert (not b!6977560))

(assert (not d!2172478))

(assert (not d!2172490))

(assert (not b!6977556))

(assert (not b!6977548))

(assert (not b!6977542))

(assert (not d!2172486))

(assert (not d!2172496))

(assert (not b!6977558))

(assert (not b!6977575))

(assert (not d!2172482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

