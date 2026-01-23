; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696566 () Bool)

(assert start!696566)

(declare-fun b!7144349 () Bool)

(assert (=> b!7144349 true))

(declare-fun bs!1888915 () Bool)

(declare-fun b!7144348 () Bool)

(declare-fun b!7144353 () Bool)

(assert (= bs!1888915 (and b!7144348 b!7144353)))

(declare-fun lambda!435375 () Int)

(declare-fun lambda!435373 () Int)

(assert (=> bs!1888915 (not (= lambda!435375 lambda!435373))))

(declare-fun b!7144346 () Bool)

(declare-fun e!4293437 () Bool)

(declare-fun e!4293438 () Bool)

(assert (=> b!7144346 (= e!4293437 e!4293438)))

(declare-fun res!2914904 () Bool)

(assert (=> b!7144346 (=> (not res!2914904) (not e!4293438))))

(declare-datatypes ((C!36658 0))(
  ( (C!36659 (val!28277 Int)) )
))
(declare-datatypes ((Regex!18192 0))(
  ( (ElementMatch!18192 (c!1332333 C!36658)) (Concat!27037 (regOne!36896 Regex!18192) (regTwo!36896 Regex!18192)) (EmptyExpr!18192) (Star!18192 (reg!18521 Regex!18192)) (EmptyLang!18192) (Union!18192 (regOne!36897 Regex!18192) (regTwo!36897 Regex!18192)) )
))
(declare-fun r!11483 () Regex!18192)

(declare-fun lt!2568318 () Regex!18192)

(assert (=> b!7144346 (= res!2914904 (= r!11483 lt!2568318))))

(declare-datatypes ((List!69462 0))(
  ( (Nil!69338) (Cons!69338 (h!75786 Regex!18192) (t!383479 List!69462)) )
))
(declare-fun lt!2568323 () List!69462)

(declare-fun generalisedUnion!2697 (List!69462) Regex!18192)

(assert (=> b!7144346 (= lt!2568318 (generalisedUnion!2697 lt!2568323))))

(declare-datatypes ((Context!14372 0))(
  ( (Context!14373 (exprs!7686 List!69462)) )
))
(declare-datatypes ((List!69463 0))(
  ( (Nil!69339) (Cons!69339 (h!75787 Context!14372) (t!383480 List!69463)) )
))
(declare-fun lt!2568322 () List!69463)

(declare-fun unfocusZipperList!2233 (List!69463) List!69462)

(assert (=> b!7144346 (= lt!2568323 (unfocusZipperList!2233 lt!2568322))))

(declare-fun b!7144347 () Bool)

(declare-fun e!4293435 () Bool)

(declare-fun tp!1970779 () Bool)

(declare-fun tp!1970778 () Bool)

(assert (=> b!7144347 (= e!4293435 (and tp!1970779 tp!1970778))))

(declare-fun e!4293431 () Bool)

(declare-fun lt!2568321 () Context!14372)

(declare-fun forall!17028 (List!69462 Int) Bool)

(assert (=> b!7144348 (= e!4293431 (forall!17028 (exprs!7686 lt!2568321) lambda!435375))))

(declare-fun b!7144350 () Bool)

(declare-fun tp!1970781 () Bool)

(assert (=> b!7144350 (= e!4293435 tp!1970781)))

(declare-fun b!7144351 () Bool)

(declare-fun e!4293440 () Bool)

(declare-fun e!4293434 () Bool)

(assert (=> b!7144351 (= e!4293440 e!4293434)))

(declare-fun res!2914900 () Bool)

(assert (=> b!7144351 (=> res!2914900 e!4293434)))

(declare-fun z!3189 () (Set Context!14372))

(assert (=> b!7144351 (= res!2914900 (not (set.member lt!2568321 z!3189)))))

(declare-fun lambda!435374 () Int)

(declare-fun getWitness!1969 ((Set Context!14372) Int) Context!14372)

(assert (=> b!7144351 (= lt!2568321 (getWitness!1969 z!3189 lambda!435374))))

(declare-fun b!7144352 () Bool)

(declare-fun tp!1970782 () Bool)

(declare-fun tp!1970776 () Bool)

(assert (=> b!7144352 (= e!4293435 (and tp!1970782 tp!1970776))))

(declare-fun e!4293433 () Bool)

(assert (=> b!7144353 (= e!4293438 (not e!4293433))))

(declare-fun res!2914906 () Bool)

(assert (=> b!7144353 (=> res!2914906 e!4293433)))

(declare-fun lt!2568317 () Bool)

(declare-fun exists!4002 (List!69462 Int) Bool)

(assert (=> b!7144353 (= res!2914906 (not (= lt!2568317 (exists!4002 lt!2568323 lambda!435373))))))

(assert (=> b!7144353 (= lt!2568317 (exists!4002 lt!2568323 lambda!435373))))

(declare-fun nullable!7709 (Regex!18192) Bool)

(assert (=> b!7144353 (= lt!2568317 (nullable!7709 lt!2568318))))

(declare-datatypes ((Unit!163249 0))(
  ( (Unit!163250) )
))
(declare-fun lt!2568324 () Unit!163249)

(declare-fun nullableGenUnionSpec!73 (Regex!18192 List!69462) Unit!163249)

(assert (=> b!7144353 (= lt!2568324 (nullableGenUnionSpec!73 lt!2568318 lt!2568323))))

(declare-fun b!7144354 () Bool)

(declare-fun e!4293432 () Bool)

(assert (=> b!7144354 (= e!4293433 e!4293432)))

(declare-fun res!2914907 () Bool)

(assert (=> b!7144354 (=> res!2914907 e!4293432)))

(declare-fun lt!2568325 () Regex!18192)

(assert (=> b!7144354 (= res!2914907 (not (nullable!7709 lt!2568325)))))

(declare-fun getWitness!1970 (List!69462 Int) Regex!18192)

(assert (=> b!7144354 (= lt!2568325 (getWitness!1970 lt!2568323 lambda!435373))))

(declare-fun b!7144355 () Bool)

(declare-fun e!4293436 () Bool)

(assert (=> b!7144355 (= e!4293436 e!4293437)))

(declare-fun res!2914901 () Bool)

(assert (=> b!7144355 (=> (not res!2914901) (not e!4293437))))

(declare-fun unfocusZipper!2540 (List!69463) Regex!18192)

(assert (=> b!7144355 (= res!2914901 (= r!11483 (unfocusZipper!2540 lt!2568322)))))

(declare-fun toList!11223 ((Set Context!14372)) List!69463)

(assert (=> b!7144355 (= lt!2568322 (toList!11223 z!3189))))

(declare-fun b!7144356 () Bool)

(declare-fun res!2914903 () Bool)

(assert (=> b!7144356 (=> res!2914903 e!4293433)))

(assert (=> b!7144356 (= res!2914903 (not (exists!4002 lt!2568323 lambda!435373)))))

(declare-fun e!4293439 () Bool)

(declare-fun setNonEmpty!52678 () Bool)

(declare-fun setElem!52678 () Context!14372)

(declare-fun setRes!52678 () Bool)

(declare-fun tp!1970780 () Bool)

(declare-fun inv!88545 (Context!14372) Bool)

(assert (=> setNonEmpty!52678 (= setRes!52678 (and tp!1970780 (inv!88545 setElem!52678) e!4293439))))

(declare-fun setRest!52678 () (Set Context!14372))

(assert (=> setNonEmpty!52678 (= z!3189 (set.union (set.insert setElem!52678 (as set.empty (Set Context!14372))) setRest!52678))))

(declare-fun b!7144357 () Bool)

(assert (=> b!7144357 (= e!4293434 e!4293431)))

(declare-fun res!2914909 () Bool)

(assert (=> b!7144357 (=> res!2914909 e!4293431)))

(declare-fun lt!2568320 () Regex!18192)

(assert (=> b!7144357 (= res!2914909 (not (= lt!2568320 lt!2568325)))))

(declare-fun generalisedConcat!2369 (List!69462) Regex!18192)

(assert (=> b!7144357 (= lt!2568320 (generalisedConcat!2369 (exprs!7686 lt!2568321)))))

(declare-fun b!7144358 () Bool)

(declare-fun res!2914911 () Bool)

(assert (=> b!7144358 (=> res!2914911 e!4293431)))

(assert (=> b!7144358 (= res!2914911 (not (nullable!7709 lt!2568320)))))

(declare-fun setIsEmpty!52678 () Bool)

(assert (=> setIsEmpty!52678 setRes!52678))

(assert (=> b!7144349 (= e!4293432 e!4293440)))

(declare-fun res!2914905 () Bool)

(assert (=> b!7144349 (=> res!2914905 e!4293440)))

(declare-fun exists!4003 ((Set Context!14372) Int) Bool)

(assert (=> b!7144349 (= res!2914905 (not (exists!4003 z!3189 lambda!435374)))))

(declare-fun exists!4004 (List!69463 Int) Bool)

(assert (=> b!7144349 (exists!4004 lt!2568322 lambda!435374)))

(declare-fun lt!2568319 () Unit!163249)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!29 (List!69463 Regex!18192) Unit!163249)

(assert (=> b!7144349 (= lt!2568319 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!29 lt!2568322 lt!2568325))))

(declare-fun res!2914902 () Bool)

(assert (=> start!696566 (=> (not res!2914902) (not e!4293436))))

(declare-fun validRegex!9359 (Regex!18192) Bool)

(assert (=> start!696566 (= res!2914902 (validRegex!9359 r!11483))))

(assert (=> start!696566 e!4293436))

(assert (=> start!696566 e!4293435))

(declare-fun condSetEmpty!52678 () Bool)

(assert (=> start!696566 (= condSetEmpty!52678 (= z!3189 (as set.empty (Set Context!14372))))))

(assert (=> start!696566 setRes!52678))

(declare-fun b!7144359 () Bool)

(declare-fun res!2914910 () Bool)

(assert (=> b!7144359 (=> res!2914910 e!4293433)))

(assert (=> b!7144359 (= res!2914910 (not lt!2568317))))

(declare-fun b!7144360 () Bool)

(declare-fun res!2914908 () Bool)

(assert (=> b!7144360 (=> res!2914908 e!4293432)))

(declare-fun contains!20624 (List!69462 Regex!18192) Bool)

(assert (=> b!7144360 (= res!2914908 (not (contains!20624 lt!2568323 lt!2568325)))))

(declare-fun b!7144361 () Bool)

(declare-fun tp_is_empty!46021 () Bool)

(assert (=> b!7144361 (= e!4293435 tp_is_empty!46021)))

(declare-fun b!7144362 () Bool)

(declare-fun tp!1970777 () Bool)

(assert (=> b!7144362 (= e!4293439 tp!1970777)))

(assert (= (and start!696566 res!2914902) b!7144355))

(assert (= (and b!7144355 res!2914901) b!7144346))

(assert (= (and b!7144346 res!2914904) b!7144353))

(assert (= (and b!7144353 (not res!2914906)) b!7144359))

(assert (= (and b!7144359 (not res!2914910)) b!7144356))

(assert (= (and b!7144356 (not res!2914903)) b!7144354))

(assert (= (and b!7144354 (not res!2914907)) b!7144360))

(assert (= (and b!7144360 (not res!2914908)) b!7144349))

(assert (= (and b!7144349 (not res!2914905)) b!7144351))

(assert (= (and b!7144351 (not res!2914900)) b!7144357))

(assert (= (and b!7144357 (not res!2914909)) b!7144358))

(assert (= (and b!7144358 (not res!2914911)) b!7144348))

(assert (= (and start!696566 (is-ElementMatch!18192 r!11483)) b!7144361))

(assert (= (and start!696566 (is-Concat!27037 r!11483)) b!7144352))

(assert (= (and start!696566 (is-Star!18192 r!11483)) b!7144350))

(assert (= (and start!696566 (is-Union!18192 r!11483)) b!7144347))

(assert (= (and start!696566 condSetEmpty!52678) setIsEmpty!52678))

(assert (= (and start!696566 (not condSetEmpty!52678)) setNonEmpty!52678))

(assert (= setNonEmpty!52678 b!7144362))

(declare-fun m!7858026 () Bool)

(assert (=> b!7144348 m!7858026))

(declare-fun m!7858028 () Bool)

(assert (=> b!7144346 m!7858028))

(declare-fun m!7858030 () Bool)

(assert (=> b!7144346 m!7858030))

(declare-fun m!7858032 () Bool)

(assert (=> b!7144351 m!7858032))

(declare-fun m!7858034 () Bool)

(assert (=> b!7144351 m!7858034))

(declare-fun m!7858036 () Bool)

(assert (=> start!696566 m!7858036))

(declare-fun m!7858038 () Bool)

(assert (=> setNonEmpty!52678 m!7858038))

(declare-fun m!7858040 () Bool)

(assert (=> b!7144357 m!7858040))

(declare-fun m!7858042 () Bool)

(assert (=> b!7144358 m!7858042))

(declare-fun m!7858044 () Bool)

(assert (=> b!7144349 m!7858044))

(declare-fun m!7858046 () Bool)

(assert (=> b!7144349 m!7858046))

(declare-fun m!7858048 () Bool)

(assert (=> b!7144349 m!7858048))

(declare-fun m!7858050 () Bool)

(assert (=> b!7144353 m!7858050))

(assert (=> b!7144353 m!7858050))

(declare-fun m!7858052 () Bool)

(assert (=> b!7144353 m!7858052))

(declare-fun m!7858054 () Bool)

(assert (=> b!7144353 m!7858054))

(assert (=> b!7144356 m!7858050))

(declare-fun m!7858056 () Bool)

(assert (=> b!7144360 m!7858056))

(declare-fun m!7858058 () Bool)

(assert (=> b!7144354 m!7858058))

(declare-fun m!7858060 () Bool)

(assert (=> b!7144354 m!7858060))

(declare-fun m!7858062 () Bool)

(assert (=> b!7144355 m!7858062))

(declare-fun m!7858064 () Bool)

(assert (=> b!7144355 m!7858064))

(push 1)

(assert (not start!696566))

(assert (not b!7144347))

(assert (not b!7144358))

(assert tp_is_empty!46021)

(assert (not b!7144356))

(assert (not b!7144352))

(assert (not b!7144354))

(assert (not b!7144350))

(assert (not b!7144357))

(assert (not b!7144348))

(assert (not setNonEmpty!52678))

(assert (not b!7144349))

(assert (not b!7144351))

(assert (not b!7144346))

(assert (not b!7144362))

(assert (not b!7144353))

(assert (not b!7144360))

(assert (not b!7144355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2227883 () Bool)

(declare-fun e!4293473 () Bool)

(assert (=> d!2227883 e!4293473))

(declare-fun res!2914950 () Bool)

(assert (=> d!2227883 (=> (not res!2914950) (not e!4293473))))

(declare-fun lt!2568355 () Context!14372)

(declare-fun dynLambda!28240 (Int Context!14372) Bool)

(assert (=> d!2227883 (= res!2914950 (dynLambda!28240 lambda!435374 lt!2568355))))

(declare-fun getWitness!1973 (List!69463 Int) Context!14372)

(assert (=> d!2227883 (= lt!2568355 (getWitness!1973 (toList!11223 z!3189) lambda!435374))))

(assert (=> d!2227883 (exists!4003 z!3189 lambda!435374)))

(assert (=> d!2227883 (= (getWitness!1969 z!3189 lambda!435374) lt!2568355)))

(declare-fun b!7144420 () Bool)

(assert (=> b!7144420 (= e!4293473 (set.member lt!2568355 z!3189))))

(assert (= (and d!2227883 res!2914950) b!7144420))

(declare-fun b_lambda!272693 () Bool)

(assert (=> (not b_lambda!272693) (not d!2227883)))

(declare-fun m!7858106 () Bool)

(assert (=> d!2227883 m!7858106))

(assert (=> d!2227883 m!7858064))

(assert (=> d!2227883 m!7858064))

(declare-fun m!7858108 () Bool)

(assert (=> d!2227883 m!7858108))

(assert (=> d!2227883 m!7858044))

(declare-fun m!7858110 () Bool)

(assert (=> b!7144420 m!7858110))

(assert (=> b!7144351 d!2227883))

(declare-fun d!2227885 () Bool)

(declare-fun lt!2568358 () Bool)

(declare-fun content!14224 (List!69462) (Set Regex!18192))

(assert (=> d!2227885 (= lt!2568358 (set.member lt!2568325 (content!14224 lt!2568323)))))

(declare-fun e!4293478 () Bool)

(assert (=> d!2227885 (= lt!2568358 e!4293478)))

(declare-fun res!2914956 () Bool)

(assert (=> d!2227885 (=> (not res!2914956) (not e!4293478))))

(assert (=> d!2227885 (= res!2914956 (is-Cons!69338 lt!2568323))))

(assert (=> d!2227885 (= (contains!20624 lt!2568323 lt!2568325) lt!2568358)))

(declare-fun b!7144425 () Bool)

(declare-fun e!4293479 () Bool)

(assert (=> b!7144425 (= e!4293478 e!4293479)))

(declare-fun res!2914955 () Bool)

(assert (=> b!7144425 (=> res!2914955 e!4293479)))

(assert (=> b!7144425 (= res!2914955 (= (h!75786 lt!2568323) lt!2568325))))

(declare-fun b!7144426 () Bool)

(assert (=> b!7144426 (= e!4293479 (contains!20624 (t!383479 lt!2568323) lt!2568325))))

(assert (= (and d!2227885 res!2914956) b!7144425))

(assert (= (and b!7144425 (not res!2914955)) b!7144426))

(declare-fun m!7858112 () Bool)

(assert (=> d!2227885 m!7858112))

(declare-fun m!7858114 () Bool)

(assert (=> d!2227885 m!7858114))

(declare-fun m!7858116 () Bool)

(assert (=> b!7144426 m!7858116))

(assert (=> b!7144360 d!2227885))

(declare-fun d!2227887 () Bool)

(declare-fun lt!2568361 () Bool)

(assert (=> d!2227887 (= lt!2568361 (exists!4004 (toList!11223 z!3189) lambda!435374))))

(declare-fun choose!55285 ((Set Context!14372) Int) Bool)

(assert (=> d!2227887 (= lt!2568361 (choose!55285 z!3189 lambda!435374))))

(assert (=> d!2227887 (= (exists!4003 z!3189 lambda!435374) lt!2568361)))

(declare-fun bs!1888917 () Bool)

(assert (= bs!1888917 d!2227887))

(assert (=> bs!1888917 m!7858064))

(assert (=> bs!1888917 m!7858064))

(declare-fun m!7858118 () Bool)

(assert (=> bs!1888917 m!7858118))

(declare-fun m!7858120 () Bool)

(assert (=> bs!1888917 m!7858120))

(assert (=> b!7144349 d!2227887))

(declare-fun bs!1888918 () Bool)

(declare-fun d!2227889 () Bool)

(assert (= bs!1888918 (and d!2227889 b!7144349)))

(declare-fun lambda!435397 () Int)

(assert (=> bs!1888918 (not (= lambda!435397 lambda!435374))))

(assert (=> d!2227889 true))

(declare-fun order!28595 () Int)

(declare-fun dynLambda!28241 (Int Int) Int)

(assert (=> d!2227889 (< (dynLambda!28241 order!28595 lambda!435374) (dynLambda!28241 order!28595 lambda!435397))))

(declare-fun forall!17030 (List!69463 Int) Bool)

(assert (=> d!2227889 (= (exists!4004 lt!2568322 lambda!435374) (not (forall!17030 lt!2568322 lambda!435397)))))

(declare-fun bs!1888919 () Bool)

(assert (= bs!1888919 d!2227889))

(declare-fun m!7858122 () Bool)

(assert (=> bs!1888919 m!7858122))

(assert (=> b!7144349 d!2227889))

(declare-fun bs!1888921 () Bool)

(declare-fun d!2227891 () Bool)

(assert (= bs!1888921 (and d!2227891 b!7144349)))

(declare-fun lambda!435400 () Int)

(assert (=> bs!1888921 (= lambda!435400 lambda!435374)))

(declare-fun bs!1888922 () Bool)

(assert (= bs!1888922 (and d!2227891 d!2227889)))

(assert (=> bs!1888922 (not (= lambda!435400 lambda!435397))))

(assert (=> d!2227891 true))

(assert (=> d!2227891 (exists!4004 lt!2568322 lambda!435400)))

(declare-fun lt!2568364 () Unit!163249)

(declare-fun choose!55286 (List!69463 Regex!18192) Unit!163249)

(assert (=> d!2227891 (= lt!2568364 (choose!55286 lt!2568322 lt!2568325))))

(assert (=> d!2227891 (contains!20624 (unfocusZipperList!2233 lt!2568322) lt!2568325)))

(assert (=> d!2227891 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!29 lt!2568322 lt!2568325) lt!2568364)))

(declare-fun bs!1888923 () Bool)

(assert (= bs!1888923 d!2227891))

(declare-fun m!7858126 () Bool)

(assert (=> bs!1888923 m!7858126))

(declare-fun m!7858128 () Bool)

(assert (=> bs!1888923 m!7858128))

(assert (=> bs!1888923 m!7858030))

(assert (=> bs!1888923 m!7858030))

(declare-fun m!7858130 () Bool)

(assert (=> bs!1888923 m!7858130))

(assert (=> b!7144349 d!2227891))

(declare-fun d!2227897 () Bool)

(declare-fun res!2914970 () Bool)

(declare-fun e!4293499 () Bool)

(assert (=> d!2227897 (=> res!2914970 e!4293499)))

(assert (=> d!2227897 (= res!2914970 (is-ElementMatch!18192 r!11483))))

(assert (=> d!2227897 (= (validRegex!9359 r!11483) e!4293499)))

(declare-fun b!7144447 () Bool)

(declare-fun e!4293497 () Bool)

(declare-fun call!651384 () Bool)

(assert (=> b!7144447 (= e!4293497 call!651384)))

(declare-fun b!7144448 () Bool)

(declare-fun res!2914968 () Bool)

(declare-fun e!4293500 () Bool)

(assert (=> b!7144448 (=> (not res!2914968) (not e!4293500))))

(declare-fun call!651385 () Bool)

(assert (=> b!7144448 (= res!2914968 call!651385)))

(declare-fun e!4293496 () Bool)

(assert (=> b!7144448 (= e!4293496 e!4293500)))

(declare-fun bm!651378 () Bool)

(declare-fun call!651383 () Bool)

(declare-fun c!1332348 () Bool)

(assert (=> bm!651378 (= call!651383 (validRegex!9359 (ite c!1332348 (regTwo!36897 r!11483) (regTwo!36896 r!11483))))))

(declare-fun b!7144449 () Bool)

(declare-fun res!2914967 () Bool)

(declare-fun e!4293494 () Bool)

(assert (=> b!7144449 (=> res!2914967 e!4293494)))

(assert (=> b!7144449 (= res!2914967 (not (is-Concat!27037 r!11483)))))

(assert (=> b!7144449 (= e!4293496 e!4293494)))

(declare-fun b!7144450 () Bool)

(declare-fun e!4293498 () Bool)

(assert (=> b!7144450 (= e!4293498 e!4293496)))

(assert (=> b!7144450 (= c!1332348 (is-Union!18192 r!11483))))

(declare-fun b!7144451 () Bool)

(assert (=> b!7144451 (= e!4293498 e!4293497)))

(declare-fun res!2914969 () Bool)

(assert (=> b!7144451 (= res!2914969 (not (nullable!7709 (reg!18521 r!11483))))))

(assert (=> b!7144451 (=> (not res!2914969) (not e!4293497))))

(declare-fun b!7144452 () Bool)

(declare-fun e!4293495 () Bool)

(assert (=> b!7144452 (= e!4293495 call!651383)))

(declare-fun bm!651379 () Bool)

(declare-fun c!1332347 () Bool)

(assert (=> bm!651379 (= call!651384 (validRegex!9359 (ite c!1332347 (reg!18521 r!11483) (ite c!1332348 (regOne!36897 r!11483) (regOne!36896 r!11483)))))))

(declare-fun b!7144453 () Bool)

(assert (=> b!7144453 (= e!4293500 call!651383)))

(declare-fun b!7144454 () Bool)

(assert (=> b!7144454 (= e!4293494 e!4293495)))

(declare-fun res!2914971 () Bool)

(assert (=> b!7144454 (=> (not res!2914971) (not e!4293495))))

(assert (=> b!7144454 (= res!2914971 call!651385)))

(declare-fun bm!651380 () Bool)

(assert (=> bm!651380 (= call!651385 call!651384)))

(declare-fun b!7144455 () Bool)

(assert (=> b!7144455 (= e!4293499 e!4293498)))

(assert (=> b!7144455 (= c!1332347 (is-Star!18192 r!11483))))

(assert (= (and d!2227897 (not res!2914970)) b!7144455))

(assert (= (and b!7144455 c!1332347) b!7144451))

(assert (= (and b!7144455 (not c!1332347)) b!7144450))

(assert (= (and b!7144451 res!2914969) b!7144447))

(assert (= (and b!7144450 c!1332348) b!7144448))

(assert (= (and b!7144450 (not c!1332348)) b!7144449))

(assert (= (and b!7144448 res!2914968) b!7144453))

(assert (= (and b!7144449 (not res!2914967)) b!7144454))

(assert (= (and b!7144454 res!2914971) b!7144452))

(assert (= (or b!7144453 b!7144452) bm!651378))

(assert (= (or b!7144448 b!7144454) bm!651380))

(assert (= (or b!7144447 bm!651380) bm!651379))

(declare-fun m!7858132 () Bool)

(assert (=> bm!651378 m!7858132))

(declare-fun m!7858134 () Bool)

(assert (=> b!7144451 m!7858134))

(declare-fun m!7858136 () Bool)

(assert (=> bm!651379 m!7858136))

(assert (=> start!696566 d!2227897))

(declare-fun d!2227899 () Bool)

(declare-fun res!2914980 () Bool)

(declare-fun e!4293513 () Bool)

(assert (=> d!2227899 (=> res!2914980 e!4293513)))

(assert (=> d!2227899 (= res!2914980 (is-Nil!69338 (exprs!7686 lt!2568321)))))

(assert (=> d!2227899 (= (forall!17028 (exprs!7686 lt!2568321) lambda!435375) e!4293513)))

(declare-fun b!7144472 () Bool)

(declare-fun e!4293514 () Bool)

(assert (=> b!7144472 (= e!4293513 e!4293514)))

(declare-fun res!2914981 () Bool)

(assert (=> b!7144472 (=> (not res!2914981) (not e!4293514))))

(declare-fun dynLambda!28242 (Int Regex!18192) Bool)

(assert (=> b!7144472 (= res!2914981 (dynLambda!28242 lambda!435375 (h!75786 (exprs!7686 lt!2568321))))))

(declare-fun b!7144473 () Bool)

(assert (=> b!7144473 (= e!4293514 (forall!17028 (t!383479 (exprs!7686 lt!2568321)) lambda!435375))))

(assert (= (and d!2227899 (not res!2914980)) b!7144472))

(assert (= (and b!7144472 res!2914981) b!7144473))

(declare-fun b_lambda!272695 () Bool)

(assert (=> (not b_lambda!272695) (not b!7144472)))

(declare-fun m!7858138 () Bool)

(assert (=> b!7144472 m!7858138))

(declare-fun m!7858140 () Bool)

(assert (=> b!7144473 m!7858140))

(assert (=> b!7144348 d!2227899))

(declare-fun d!2227901 () Bool)

(declare-fun nullableFct!3001 (Regex!18192) Bool)

(assert (=> d!2227901 (= (nullable!7709 lt!2568320) (nullableFct!3001 lt!2568320))))

(declare-fun bs!1888924 () Bool)

(assert (= bs!1888924 d!2227901))

(declare-fun m!7858142 () Bool)

(assert (=> bs!1888924 m!7858142))

(assert (=> b!7144358 d!2227901))

(declare-fun bs!1888925 () Bool)

(declare-fun d!2227903 () Bool)

(assert (= bs!1888925 (and d!2227903 b!7144353)))

(declare-fun lambda!435403 () Int)

(assert (=> bs!1888925 (not (= lambda!435403 lambda!435373))))

(declare-fun bs!1888926 () Bool)

(assert (= bs!1888926 (and d!2227903 b!7144348)))

(assert (=> bs!1888926 (= lambda!435403 lambda!435375)))

(assert (=> d!2227903 (= (inv!88545 setElem!52678) (forall!17028 (exprs!7686 setElem!52678) lambda!435403))))

(declare-fun bs!1888927 () Bool)

(assert (= bs!1888927 d!2227903))

(declare-fun m!7858144 () Bool)

(assert (=> bs!1888927 m!7858144))

(assert (=> setNonEmpty!52678 d!2227903))

(declare-fun bs!1888931 () Bool)

(declare-fun d!2227905 () Bool)

(assert (= bs!1888931 (and d!2227905 b!7144353)))

(declare-fun lambda!435409 () Int)

(assert (=> bs!1888931 (not (= lambda!435409 lambda!435373))))

(declare-fun bs!1888932 () Bool)

(assert (= bs!1888932 (and d!2227905 b!7144348)))

(assert (=> bs!1888932 (= lambda!435409 lambda!435375)))

(declare-fun bs!1888933 () Bool)

(assert (= bs!1888933 (and d!2227905 d!2227903)))

(assert (=> bs!1888933 (= lambda!435409 lambda!435403)))

(declare-fun b!7144502 () Bool)

(declare-fun e!4293535 () Regex!18192)

(assert (=> b!7144502 (= e!4293535 (Concat!27037 (h!75786 (exprs!7686 lt!2568321)) (generalisedConcat!2369 (t!383479 (exprs!7686 lt!2568321)))))))

(declare-fun b!7144503 () Bool)

(declare-fun e!4293536 () Regex!18192)

(assert (=> b!7144503 (= e!4293536 (h!75786 (exprs!7686 lt!2568321)))))

(declare-fun b!7144504 () Bool)

(assert (=> b!7144504 (= e!4293535 EmptyExpr!18192)))

(declare-fun b!7144505 () Bool)

(declare-fun e!4293533 () Bool)

(declare-fun isEmpty!40081 (List!69462) Bool)

(assert (=> b!7144505 (= e!4293533 (isEmpty!40081 (t!383479 (exprs!7686 lt!2568321))))))

(declare-fun e!4293534 () Bool)

(assert (=> d!2227905 e!4293534))

(declare-fun res!2914988 () Bool)

(assert (=> d!2227905 (=> (not res!2914988) (not e!4293534))))

(declare-fun lt!2568373 () Regex!18192)

(assert (=> d!2227905 (= res!2914988 (validRegex!9359 lt!2568373))))

(assert (=> d!2227905 (= lt!2568373 e!4293536)))

(declare-fun c!1332365 () Bool)

(assert (=> d!2227905 (= c!1332365 e!4293533)))

(declare-fun res!2914989 () Bool)

(assert (=> d!2227905 (=> (not res!2914989) (not e!4293533))))

(assert (=> d!2227905 (= res!2914989 (is-Cons!69338 (exprs!7686 lt!2568321)))))

(assert (=> d!2227905 (forall!17028 (exprs!7686 lt!2568321) lambda!435409)))

(assert (=> d!2227905 (= (generalisedConcat!2369 (exprs!7686 lt!2568321)) lt!2568373)))

(declare-fun b!7144506 () Bool)

(assert (=> b!7144506 (= e!4293536 e!4293535)))

(declare-fun c!1332366 () Bool)

(assert (=> b!7144506 (= c!1332366 (is-Cons!69338 (exprs!7686 lt!2568321)))))

(declare-fun b!7144507 () Bool)

(declare-fun e!4293531 () Bool)

(declare-fun isEmptyExpr!2044 (Regex!18192) Bool)

(assert (=> b!7144507 (= e!4293531 (isEmptyExpr!2044 lt!2568373))))

(declare-fun b!7144508 () Bool)

(declare-fun e!4293532 () Bool)

(assert (=> b!7144508 (= e!4293531 e!4293532)))

(declare-fun c!1332363 () Bool)

(declare-fun tail!13992 (List!69462) List!69462)

(assert (=> b!7144508 (= c!1332363 (isEmpty!40081 (tail!13992 (exprs!7686 lt!2568321))))))

(declare-fun b!7144509 () Bool)

(declare-fun isConcat!1567 (Regex!18192) Bool)

(assert (=> b!7144509 (= e!4293532 (isConcat!1567 lt!2568373))))

(declare-fun b!7144510 () Bool)

(assert (=> b!7144510 (= e!4293534 e!4293531)))

(declare-fun c!1332364 () Bool)

(assert (=> b!7144510 (= c!1332364 (isEmpty!40081 (exprs!7686 lt!2568321)))))

(declare-fun b!7144511 () Bool)

(declare-fun head!14522 (List!69462) Regex!18192)

(assert (=> b!7144511 (= e!4293532 (= lt!2568373 (head!14522 (exprs!7686 lt!2568321))))))

(assert (= (and d!2227905 res!2914989) b!7144505))

(assert (= (and d!2227905 c!1332365) b!7144503))

(assert (= (and d!2227905 (not c!1332365)) b!7144506))

(assert (= (and b!7144506 c!1332366) b!7144502))

(assert (= (and b!7144506 (not c!1332366)) b!7144504))

(assert (= (and d!2227905 res!2914988) b!7144510))

(assert (= (and b!7144510 c!1332364) b!7144507))

(assert (= (and b!7144510 (not c!1332364)) b!7144508))

(assert (= (and b!7144508 c!1332363) b!7144511))

(assert (= (and b!7144508 (not c!1332363)) b!7144509))

(declare-fun m!7858158 () Bool)

(assert (=> b!7144510 m!7858158))

(declare-fun m!7858160 () Bool)

(assert (=> b!7144511 m!7858160))

(declare-fun m!7858162 () Bool)

(assert (=> b!7144508 m!7858162))

(assert (=> b!7144508 m!7858162))

(declare-fun m!7858164 () Bool)

(assert (=> b!7144508 m!7858164))

(declare-fun m!7858166 () Bool)

(assert (=> b!7144502 m!7858166))

(declare-fun m!7858168 () Bool)

(assert (=> b!7144509 m!7858168))

(declare-fun m!7858170 () Bool)

(assert (=> b!7144507 m!7858170))

(declare-fun m!7858172 () Bool)

(assert (=> b!7144505 m!7858172))

(declare-fun m!7858174 () Bool)

(assert (=> d!2227905 m!7858174))

(declare-fun m!7858176 () Bool)

(assert (=> d!2227905 m!7858176))

(assert (=> b!7144357 d!2227905))

(declare-fun bs!1888934 () Bool)

(declare-fun d!2227911 () Bool)

(assert (= bs!1888934 (and d!2227911 b!7144353)))

(declare-fun lambda!435412 () Int)

(assert (=> bs!1888934 (not (= lambda!435412 lambda!435373))))

(declare-fun bs!1888935 () Bool)

(assert (= bs!1888935 (and d!2227911 b!7144348)))

(assert (=> bs!1888935 (not (= lambda!435412 lambda!435375))))

(declare-fun bs!1888936 () Bool)

(assert (= bs!1888936 (and d!2227911 d!2227903)))

(assert (=> bs!1888936 (not (= lambda!435412 lambda!435403))))

(declare-fun bs!1888937 () Bool)

(assert (= bs!1888937 (and d!2227911 d!2227905)))

(assert (=> bs!1888937 (not (= lambda!435412 lambda!435409))))

(assert (=> d!2227911 true))

(declare-fun order!28599 () Int)

(declare-fun dynLambda!28243 (Int Int) Int)

(assert (=> d!2227911 (< (dynLambda!28243 order!28599 lambda!435373) (dynLambda!28243 order!28599 lambda!435412))))

(assert (=> d!2227911 (= (exists!4002 lt!2568323 lambda!435373) (not (forall!17028 lt!2568323 lambda!435412)))))

(declare-fun bs!1888938 () Bool)

(assert (= bs!1888938 d!2227911))

(declare-fun m!7858178 () Bool)

(assert (=> bs!1888938 m!7858178))

(assert (=> b!7144356 d!2227911))

(declare-fun bs!1888939 () Bool)

(declare-fun d!2227913 () Bool)

(assert (= bs!1888939 (and d!2227913 d!2227903)))

(declare-fun lambda!435415 () Int)

(assert (=> bs!1888939 (= lambda!435415 lambda!435403)))

(declare-fun bs!1888940 () Bool)

(assert (= bs!1888940 (and d!2227913 d!2227911)))

(assert (=> bs!1888940 (not (= lambda!435415 lambda!435412))))

(declare-fun bs!1888941 () Bool)

(assert (= bs!1888941 (and d!2227913 b!7144353)))

(assert (=> bs!1888941 (not (= lambda!435415 lambda!435373))))

(declare-fun bs!1888942 () Bool)

(assert (= bs!1888942 (and d!2227913 d!2227905)))

(assert (=> bs!1888942 (= lambda!435415 lambda!435409)))

(declare-fun bs!1888943 () Bool)

(assert (= bs!1888943 (and d!2227913 b!7144348)))

(assert (=> bs!1888943 (= lambda!435415 lambda!435375)))

(declare-fun b!7144561 () Bool)

(declare-fun e!4293571 () Bool)

(declare-fun e!4293570 () Bool)

(assert (=> b!7144561 (= e!4293571 e!4293570)))

(declare-fun c!1332382 () Bool)

(assert (=> b!7144561 (= c!1332382 (isEmpty!40081 lt!2568323))))

(declare-fun b!7144562 () Bool)

(declare-fun e!4293572 () Bool)

(assert (=> b!7144562 (= e!4293570 e!4293572)))

(declare-fun c!1332381 () Bool)

(assert (=> b!7144562 (= c!1332381 (isEmpty!40081 (tail!13992 lt!2568323)))))

(declare-fun b!7144563 () Bool)

(declare-fun e!4293573 () Regex!18192)

(declare-fun e!4293574 () Regex!18192)

(assert (=> b!7144563 (= e!4293573 e!4293574)))

(declare-fun c!1332383 () Bool)

(assert (=> b!7144563 (= c!1332383 (is-Cons!69338 lt!2568323))))

(declare-fun b!7144564 () Bool)

(assert (=> b!7144564 (= e!4293573 (h!75786 lt!2568323))))

(declare-fun b!7144565 () Bool)

(declare-fun lt!2568376 () Regex!18192)

(declare-fun isUnion!1540 (Regex!18192) Bool)

(assert (=> b!7144565 (= e!4293572 (isUnion!1540 lt!2568376))))

(declare-fun b!7144566 () Bool)

(declare-fun isEmptyLang!2113 (Regex!18192) Bool)

(assert (=> b!7144566 (= e!4293570 (isEmptyLang!2113 lt!2568376))))

(assert (=> d!2227913 e!4293571))

(declare-fun res!2915009 () Bool)

(assert (=> d!2227913 (=> (not res!2915009) (not e!4293571))))

(assert (=> d!2227913 (= res!2915009 (validRegex!9359 lt!2568376))))

(assert (=> d!2227913 (= lt!2568376 e!4293573)))

(declare-fun c!1332384 () Bool)

(declare-fun e!4293575 () Bool)

(assert (=> d!2227913 (= c!1332384 e!4293575)))

(declare-fun res!2915010 () Bool)

(assert (=> d!2227913 (=> (not res!2915010) (not e!4293575))))

(assert (=> d!2227913 (= res!2915010 (is-Cons!69338 lt!2568323))))

(assert (=> d!2227913 (forall!17028 lt!2568323 lambda!435415)))

(assert (=> d!2227913 (= (generalisedUnion!2697 lt!2568323) lt!2568376)))

(declare-fun b!7144567 () Bool)

(assert (=> b!7144567 (= e!4293572 (= lt!2568376 (head!14522 lt!2568323)))))

(declare-fun b!7144568 () Bool)

(assert (=> b!7144568 (= e!4293574 EmptyLang!18192)))

(declare-fun b!7144569 () Bool)

(assert (=> b!7144569 (= e!4293575 (isEmpty!40081 (t!383479 lt!2568323)))))

(declare-fun b!7144570 () Bool)

(assert (=> b!7144570 (= e!4293574 (Union!18192 (h!75786 lt!2568323) (generalisedUnion!2697 (t!383479 lt!2568323))))))

(assert (= (and d!2227913 res!2915010) b!7144569))

(assert (= (and d!2227913 c!1332384) b!7144564))

(assert (= (and d!2227913 (not c!1332384)) b!7144563))

(assert (= (and b!7144563 c!1332383) b!7144570))

(assert (= (and b!7144563 (not c!1332383)) b!7144568))

(assert (= (and d!2227913 res!2915009) b!7144561))

(assert (= (and b!7144561 c!1332382) b!7144566))

(assert (= (and b!7144561 (not c!1332382)) b!7144562))

(assert (= (and b!7144562 c!1332381) b!7144567))

(assert (= (and b!7144562 (not c!1332381)) b!7144565))

(declare-fun m!7858186 () Bool)

(assert (=> b!7144562 m!7858186))

(assert (=> b!7144562 m!7858186))

(declare-fun m!7858188 () Bool)

(assert (=> b!7144562 m!7858188))

(declare-fun m!7858190 () Bool)

(assert (=> b!7144561 m!7858190))

(declare-fun m!7858192 () Bool)

(assert (=> b!7144567 m!7858192))

(declare-fun m!7858194 () Bool)

(assert (=> d!2227913 m!7858194))

(declare-fun m!7858196 () Bool)

(assert (=> d!2227913 m!7858196))

(declare-fun m!7858198 () Bool)

(assert (=> b!7144569 m!7858198))

(declare-fun m!7858200 () Bool)

(assert (=> b!7144565 m!7858200))

(declare-fun m!7858202 () Bool)

(assert (=> b!7144566 m!7858202))

(declare-fun m!7858204 () Bool)

(assert (=> b!7144570 m!7858204))

(assert (=> b!7144346 d!2227913))

(declare-fun bs!1888945 () Bool)

(declare-fun d!2227917 () Bool)

(assert (= bs!1888945 (and d!2227917 d!2227903)))

(declare-fun lambda!435420 () Int)

(assert (=> bs!1888945 (= lambda!435420 lambda!435403)))

(declare-fun bs!1888946 () Bool)

(assert (= bs!1888946 (and d!2227917 d!2227913)))

(assert (=> bs!1888946 (= lambda!435420 lambda!435415)))

(declare-fun bs!1888947 () Bool)

(assert (= bs!1888947 (and d!2227917 d!2227911)))

(assert (=> bs!1888947 (not (= lambda!435420 lambda!435412))))

(declare-fun bs!1888948 () Bool)

(assert (= bs!1888948 (and d!2227917 b!7144353)))

(assert (=> bs!1888948 (not (= lambda!435420 lambda!435373))))

(declare-fun bs!1888949 () Bool)

(assert (= bs!1888949 (and d!2227917 d!2227905)))

(assert (=> bs!1888949 (= lambda!435420 lambda!435409)))

(declare-fun bs!1888950 () Bool)

(assert (= bs!1888950 (and d!2227917 b!7144348)))

(assert (=> bs!1888950 (= lambda!435420 lambda!435375)))

(declare-fun lt!2568382 () List!69462)

(assert (=> d!2227917 (forall!17028 lt!2568382 lambda!435420)))

(declare-fun e!4293578 () List!69462)

(assert (=> d!2227917 (= lt!2568382 e!4293578)))

(declare-fun c!1332387 () Bool)

(assert (=> d!2227917 (= c!1332387 (is-Cons!69339 lt!2568322))))

(assert (=> d!2227917 (= (unfocusZipperList!2233 lt!2568322) lt!2568382)))

(declare-fun b!7144575 () Bool)

(assert (=> b!7144575 (= e!4293578 (Cons!69338 (generalisedConcat!2369 (exprs!7686 (h!75787 lt!2568322))) (unfocusZipperList!2233 (t!383480 lt!2568322))))))

(declare-fun b!7144576 () Bool)

(assert (=> b!7144576 (= e!4293578 Nil!69338)))

(assert (= (and d!2227917 c!1332387) b!7144575))

(assert (= (and d!2227917 (not c!1332387)) b!7144576))

(declare-fun m!7858210 () Bool)

(assert (=> d!2227917 m!7858210))

(declare-fun m!7858212 () Bool)

(assert (=> b!7144575 m!7858212))

(declare-fun m!7858214 () Bool)

(assert (=> b!7144575 m!7858214))

(assert (=> b!7144346 d!2227917))

(declare-fun d!2227921 () Bool)

(declare-fun lt!2568385 () Regex!18192)

(assert (=> d!2227921 (validRegex!9359 lt!2568385)))

(assert (=> d!2227921 (= lt!2568385 (generalisedUnion!2697 (unfocusZipperList!2233 lt!2568322)))))

(assert (=> d!2227921 (= (unfocusZipper!2540 lt!2568322) lt!2568385)))

(declare-fun bs!1888953 () Bool)

(assert (= bs!1888953 d!2227921))

(declare-fun m!7858218 () Bool)

(assert (=> bs!1888953 m!7858218))

(assert (=> bs!1888953 m!7858030))

(assert (=> bs!1888953 m!7858030))

(declare-fun m!7858220 () Bool)

(assert (=> bs!1888953 m!7858220))

(assert (=> b!7144355 d!2227921))

(declare-fun d!2227925 () Bool)

(declare-fun e!4293581 () Bool)

(assert (=> d!2227925 e!4293581))

(declare-fun res!2915013 () Bool)

(assert (=> d!2227925 (=> (not res!2915013) (not e!4293581))))

(declare-fun lt!2568388 () List!69463)

(declare-fun noDuplicate!2844 (List!69463) Bool)

(assert (=> d!2227925 (= res!2915013 (noDuplicate!2844 lt!2568388))))

(declare-fun choose!55287 ((Set Context!14372)) List!69463)

(assert (=> d!2227925 (= lt!2568388 (choose!55287 z!3189))))

(assert (=> d!2227925 (= (toList!11223 z!3189) lt!2568388)))

(declare-fun b!7144581 () Bool)

(declare-fun content!14225 (List!69463) (Set Context!14372))

(assert (=> b!7144581 (= e!4293581 (= (content!14225 lt!2568388) z!3189))))

(assert (= (and d!2227925 res!2915013) b!7144581))

(declare-fun m!7858222 () Bool)

(assert (=> d!2227925 m!7858222))

(declare-fun m!7858224 () Bool)

(assert (=> d!2227925 m!7858224))

(declare-fun m!7858226 () Bool)

(assert (=> b!7144581 m!7858226))

(assert (=> b!7144355 d!2227925))

(assert (=> b!7144353 d!2227911))

(declare-fun d!2227927 () Bool)

(assert (=> d!2227927 (= (nullable!7709 lt!2568318) (nullableFct!3001 lt!2568318))))

(declare-fun bs!1888954 () Bool)

(assert (= bs!1888954 d!2227927))

(declare-fun m!7858228 () Bool)

(assert (=> bs!1888954 m!7858228))

(assert (=> b!7144353 d!2227927))

(declare-fun bs!1888955 () Bool)

(declare-fun d!2227929 () Bool)

(assert (= bs!1888955 (and d!2227929 d!2227903)))

(declare-fun lambda!435428 () Int)

(assert (=> bs!1888955 (= lambda!435428 lambda!435403)))

(declare-fun bs!1888956 () Bool)

(assert (= bs!1888956 (and d!2227929 d!2227913)))

(assert (=> bs!1888956 (= lambda!435428 lambda!435415)))

(declare-fun bs!1888957 () Bool)

(assert (= bs!1888957 (and d!2227929 d!2227917)))

(assert (=> bs!1888957 (= lambda!435428 lambda!435420)))

(declare-fun bs!1888958 () Bool)

(assert (= bs!1888958 (and d!2227929 d!2227911)))

(assert (=> bs!1888958 (not (= lambda!435428 lambda!435412))))

(declare-fun bs!1888960 () Bool)

(assert (= bs!1888960 (and d!2227929 b!7144353)))

(assert (=> bs!1888960 (not (= lambda!435428 lambda!435373))))

(declare-fun bs!1888961 () Bool)

(assert (= bs!1888961 (and d!2227929 d!2227905)))

(assert (=> bs!1888961 (= lambda!435428 lambda!435409)))

(declare-fun bs!1888962 () Bool)

(assert (= bs!1888962 (and d!2227929 b!7144348)))

(assert (=> bs!1888962 (= lambda!435428 lambda!435375)))

(declare-fun lambda!435430 () Int)

(assert (=> bs!1888955 (not (= lambda!435430 lambda!435403))))

(assert (=> bs!1888956 (not (= lambda!435430 lambda!435415))))

(declare-fun bs!1888964 () Bool)

(assert (= bs!1888964 d!2227929))

(assert (=> bs!1888964 (not (= lambda!435430 lambda!435428))))

(assert (=> bs!1888957 (not (= lambda!435430 lambda!435420))))

(assert (=> bs!1888958 (not (= lambda!435430 lambda!435412))))

(assert (=> bs!1888960 (= lambda!435430 lambda!435373)))

(assert (=> bs!1888961 (not (= lambda!435430 lambda!435409))))

(assert (=> bs!1888962 (not (= lambda!435430 lambda!435375))))

(assert (=> d!2227929 (= (nullable!7709 lt!2568318) (exists!4002 lt!2568323 lambda!435430))))

(declare-fun lt!2568393 () Unit!163249)

(declare-fun choose!55288 (Regex!18192 List!69462) Unit!163249)

(assert (=> d!2227929 (= lt!2568393 (choose!55288 lt!2568318 lt!2568323))))

(assert (=> d!2227929 (forall!17028 lt!2568323 lambda!435428)))

(assert (=> d!2227929 (= (nullableGenUnionSpec!73 lt!2568318 lt!2568323) lt!2568393)))

(assert (=> bs!1888964 m!7858052))

(declare-fun m!7858236 () Bool)

(assert (=> bs!1888964 m!7858236))

(declare-fun m!7858238 () Bool)

(assert (=> bs!1888964 m!7858238))

(declare-fun m!7858240 () Bool)

(assert (=> bs!1888964 m!7858240))

(assert (=> b!7144353 d!2227929))

(declare-fun d!2227933 () Bool)

(assert (=> d!2227933 (= (nullable!7709 lt!2568325) (nullableFct!3001 lt!2568325))))

(declare-fun bs!1888966 () Bool)

(assert (= bs!1888966 d!2227933))

(declare-fun m!7858242 () Bool)

(assert (=> bs!1888966 m!7858242))

(assert (=> b!7144354 d!2227933))

(declare-fun b!7144594 () Bool)

(declare-fun e!4293593 () Bool)

(declare-fun lt!2568400 () Regex!18192)

(assert (=> b!7144594 (= e!4293593 (contains!20624 lt!2568323 lt!2568400))))

(declare-fun b!7144595 () Bool)

(declare-fun lt!2568399 () Unit!163249)

(declare-fun Unit!163253 () Unit!163249)

(assert (=> b!7144595 (= lt!2568399 Unit!163253)))

(assert (=> b!7144595 false))

(declare-fun e!4293591 () Regex!18192)

(assert (=> b!7144595 (= e!4293591 (head!14522 lt!2568323))))

(declare-fun b!7144596 () Bool)

(declare-fun e!4293592 () Regex!18192)

(assert (=> b!7144596 (= e!4293592 e!4293591)))

(declare-fun c!1332395 () Bool)

(assert (=> b!7144596 (= c!1332395 (is-Cons!69338 lt!2568323))))

(declare-fun b!7144597 () Bool)

(assert (=> b!7144597 (= e!4293592 (h!75786 lt!2568323))))

(declare-fun d!2227935 () Bool)

(assert (=> d!2227935 e!4293593))

(declare-fun res!2915019 () Bool)

(assert (=> d!2227935 (=> (not res!2915019) (not e!4293593))))

(assert (=> d!2227935 (= res!2915019 (dynLambda!28242 lambda!435373 lt!2568400))))

(assert (=> d!2227935 (= lt!2568400 e!4293592)))

(declare-fun c!1332394 () Bool)

(declare-fun e!4293590 () Bool)

(assert (=> d!2227935 (= c!1332394 e!4293590)))

(declare-fun res!2915018 () Bool)

(assert (=> d!2227935 (=> (not res!2915018) (not e!4293590))))

(assert (=> d!2227935 (= res!2915018 (is-Cons!69338 lt!2568323))))

(assert (=> d!2227935 (exists!4002 lt!2568323 lambda!435373)))

(assert (=> d!2227935 (= (getWitness!1970 lt!2568323 lambda!435373) lt!2568400)))

(declare-fun b!7144598 () Bool)

(assert (=> b!7144598 (= e!4293590 (dynLambda!28242 lambda!435373 (h!75786 lt!2568323)))))

(declare-fun b!7144599 () Bool)

(assert (=> b!7144599 (= e!4293591 (getWitness!1970 (t!383479 lt!2568323) lambda!435373))))

(assert (= (and d!2227935 res!2915018) b!7144598))

(assert (= (and d!2227935 c!1332394) b!7144597))

(assert (= (and d!2227935 (not c!1332394)) b!7144596))

(assert (= (and b!7144596 c!1332395) b!7144599))

(assert (= (and b!7144596 (not c!1332395)) b!7144595))

(assert (= (and d!2227935 res!2915019) b!7144594))

(declare-fun b_lambda!272701 () Bool)

(assert (=> (not b_lambda!272701) (not d!2227935)))

(declare-fun b_lambda!272703 () Bool)

(assert (=> (not b_lambda!272703) (not b!7144598)))

(declare-fun m!7858246 () Bool)

(assert (=> b!7144594 m!7858246))

(declare-fun m!7858248 () Bool)

(assert (=> d!2227935 m!7858248))

(assert (=> d!2227935 m!7858050))

(declare-fun m!7858250 () Bool)

(assert (=> b!7144599 m!7858250))

(declare-fun m!7858252 () Bool)

(assert (=> b!7144598 m!7858252))

(assert (=> b!7144595 m!7858192))

(assert (=> b!7144354 d!2227935))

(declare-fun condSetEmpty!52684 () Bool)

(assert (=> setNonEmpty!52678 (= condSetEmpty!52684 (= setRest!52678 (as set.empty (Set Context!14372))))))

(declare-fun setRes!52684 () Bool)

(assert (=> setNonEmpty!52678 (= tp!1970780 setRes!52684)))

(declare-fun setIsEmpty!52684 () Bool)

(assert (=> setIsEmpty!52684 setRes!52684))

(declare-fun setNonEmpty!52684 () Bool)

(declare-fun e!4293596 () Bool)

(declare-fun tp!1970808 () Bool)

(declare-fun setElem!52684 () Context!14372)

(assert (=> setNonEmpty!52684 (= setRes!52684 (and tp!1970808 (inv!88545 setElem!52684) e!4293596))))

(declare-fun setRest!52684 () (Set Context!14372))

(assert (=> setNonEmpty!52684 (= setRest!52678 (set.union (set.insert setElem!52684 (as set.empty (Set Context!14372))) setRest!52684))))

(declare-fun b!7144604 () Bool)

(declare-fun tp!1970809 () Bool)

(assert (=> b!7144604 (= e!4293596 tp!1970809)))

(assert (= (and setNonEmpty!52678 condSetEmpty!52684) setIsEmpty!52684))

(assert (= (and setNonEmpty!52678 (not condSetEmpty!52684)) setNonEmpty!52684))

(assert (= setNonEmpty!52684 b!7144604))

(declare-fun m!7858258 () Bool)

(assert (=> setNonEmpty!52684 m!7858258))

(declare-fun b!7144616 () Bool)

(declare-fun e!4293599 () Bool)

(declare-fun tp!1970820 () Bool)

(declare-fun tp!1970823 () Bool)

(assert (=> b!7144616 (= e!4293599 (and tp!1970820 tp!1970823))))

(declare-fun b!7144615 () Bool)

(assert (=> b!7144615 (= e!4293599 tp_is_empty!46021)))

(declare-fun b!7144617 () Bool)

(declare-fun tp!1970822 () Bool)

(assert (=> b!7144617 (= e!4293599 tp!1970822)))

(declare-fun b!7144618 () Bool)

(declare-fun tp!1970824 () Bool)

(declare-fun tp!1970821 () Bool)

(assert (=> b!7144618 (= e!4293599 (and tp!1970824 tp!1970821))))

(assert (=> b!7144352 (= tp!1970782 e!4293599)))

(assert (= (and b!7144352 (is-ElementMatch!18192 (regOne!36896 r!11483))) b!7144615))

(assert (= (and b!7144352 (is-Concat!27037 (regOne!36896 r!11483))) b!7144616))

(assert (= (and b!7144352 (is-Star!18192 (regOne!36896 r!11483))) b!7144617))

(assert (= (and b!7144352 (is-Union!18192 (regOne!36896 r!11483))) b!7144618))

(declare-fun b!7144620 () Bool)

(declare-fun e!4293600 () Bool)

(declare-fun tp!1970825 () Bool)

(declare-fun tp!1970828 () Bool)

(assert (=> b!7144620 (= e!4293600 (and tp!1970825 tp!1970828))))

(declare-fun b!7144619 () Bool)

(assert (=> b!7144619 (= e!4293600 tp_is_empty!46021)))

(declare-fun b!7144621 () Bool)

(declare-fun tp!1970827 () Bool)

(assert (=> b!7144621 (= e!4293600 tp!1970827)))

(declare-fun b!7144622 () Bool)

(declare-fun tp!1970829 () Bool)

(declare-fun tp!1970826 () Bool)

(assert (=> b!7144622 (= e!4293600 (and tp!1970829 tp!1970826))))

(assert (=> b!7144352 (= tp!1970776 e!4293600)))

(assert (= (and b!7144352 (is-ElementMatch!18192 (regTwo!36896 r!11483))) b!7144619))

(assert (= (and b!7144352 (is-Concat!27037 (regTwo!36896 r!11483))) b!7144620))

(assert (= (and b!7144352 (is-Star!18192 (regTwo!36896 r!11483))) b!7144621))

(assert (= (and b!7144352 (is-Union!18192 (regTwo!36896 r!11483))) b!7144622))

(declare-fun b!7144624 () Bool)

(declare-fun e!4293601 () Bool)

(declare-fun tp!1970830 () Bool)

(declare-fun tp!1970833 () Bool)

(assert (=> b!7144624 (= e!4293601 (and tp!1970830 tp!1970833))))

(declare-fun b!7144623 () Bool)

(assert (=> b!7144623 (= e!4293601 tp_is_empty!46021)))

(declare-fun b!7144625 () Bool)

(declare-fun tp!1970832 () Bool)

(assert (=> b!7144625 (= e!4293601 tp!1970832)))

(declare-fun b!7144626 () Bool)

(declare-fun tp!1970834 () Bool)

(declare-fun tp!1970831 () Bool)

(assert (=> b!7144626 (= e!4293601 (and tp!1970834 tp!1970831))))

(assert (=> b!7144347 (= tp!1970779 e!4293601)))

(assert (= (and b!7144347 (is-ElementMatch!18192 (regOne!36897 r!11483))) b!7144623))

(assert (= (and b!7144347 (is-Concat!27037 (regOne!36897 r!11483))) b!7144624))

(assert (= (and b!7144347 (is-Star!18192 (regOne!36897 r!11483))) b!7144625))

(assert (= (and b!7144347 (is-Union!18192 (regOne!36897 r!11483))) b!7144626))

(declare-fun b!7144630 () Bool)

(declare-fun e!4293604 () Bool)

(declare-fun tp!1970835 () Bool)

(declare-fun tp!1970838 () Bool)

(assert (=> b!7144630 (= e!4293604 (and tp!1970835 tp!1970838))))

(declare-fun b!7144629 () Bool)

(assert (=> b!7144629 (= e!4293604 tp_is_empty!46021)))

(declare-fun b!7144631 () Bool)

(declare-fun tp!1970837 () Bool)

(assert (=> b!7144631 (= e!4293604 tp!1970837)))

(declare-fun b!7144632 () Bool)

(declare-fun tp!1970839 () Bool)

(declare-fun tp!1970836 () Bool)

(assert (=> b!7144632 (= e!4293604 (and tp!1970839 tp!1970836))))

(assert (=> b!7144347 (= tp!1970778 e!4293604)))

(assert (= (and b!7144347 (is-ElementMatch!18192 (regTwo!36897 r!11483))) b!7144629))

(assert (= (and b!7144347 (is-Concat!27037 (regTwo!36897 r!11483))) b!7144630))

(assert (= (and b!7144347 (is-Star!18192 (regTwo!36897 r!11483))) b!7144631))

(assert (= (and b!7144347 (is-Union!18192 (regTwo!36897 r!11483))) b!7144632))

(declare-fun b!7144634 () Bool)

(declare-fun e!4293605 () Bool)

(declare-fun tp!1970840 () Bool)

(declare-fun tp!1970843 () Bool)

(assert (=> b!7144634 (= e!4293605 (and tp!1970840 tp!1970843))))

(declare-fun b!7144633 () Bool)

(assert (=> b!7144633 (= e!4293605 tp_is_empty!46021)))

(declare-fun b!7144635 () Bool)

(declare-fun tp!1970842 () Bool)

(assert (=> b!7144635 (= e!4293605 tp!1970842)))

(declare-fun b!7144636 () Bool)

(declare-fun tp!1970844 () Bool)

(declare-fun tp!1970841 () Bool)

(assert (=> b!7144636 (= e!4293605 (and tp!1970844 tp!1970841))))

(assert (=> b!7144350 (= tp!1970781 e!4293605)))

(assert (= (and b!7144350 (is-ElementMatch!18192 (reg!18521 r!11483))) b!7144633))

(assert (= (and b!7144350 (is-Concat!27037 (reg!18521 r!11483))) b!7144634))

(assert (= (and b!7144350 (is-Star!18192 (reg!18521 r!11483))) b!7144635))

(assert (= (and b!7144350 (is-Union!18192 (reg!18521 r!11483))) b!7144636))

(declare-fun b!7144641 () Bool)

(declare-fun e!4293608 () Bool)

(declare-fun tp!1970849 () Bool)

(declare-fun tp!1970850 () Bool)

(assert (=> b!7144641 (= e!4293608 (and tp!1970849 tp!1970850))))

(assert (=> b!7144362 (= tp!1970777 e!4293608)))

(assert (= (and b!7144362 (is-Cons!69338 (exprs!7686 setElem!52678))) b!7144641))

(declare-fun b_lambda!272705 () Bool)

(assert (= b_lambda!272701 (or b!7144353 b_lambda!272705)))

(declare-fun bs!1888972 () Bool)

(declare-fun d!2227941 () Bool)

(assert (= bs!1888972 (and d!2227941 b!7144353)))

(assert (=> bs!1888972 (= (dynLambda!28242 lambda!435373 lt!2568400) (nullable!7709 lt!2568400))))

(declare-fun m!7858260 () Bool)

(assert (=> bs!1888972 m!7858260))

(assert (=> d!2227935 d!2227941))

(declare-fun b_lambda!272707 () Bool)

(assert (= b_lambda!272703 (or b!7144353 b_lambda!272707)))

(declare-fun bs!1888973 () Bool)

(declare-fun d!2227943 () Bool)

(assert (= bs!1888973 (and d!2227943 b!7144353)))

(assert (=> bs!1888973 (= (dynLambda!28242 lambda!435373 (h!75786 lt!2568323)) (nullable!7709 (h!75786 lt!2568323)))))

(declare-fun m!7858262 () Bool)

(assert (=> bs!1888973 m!7858262))

(assert (=> b!7144598 d!2227943))

(declare-fun b_lambda!272709 () Bool)

(assert (= b_lambda!272693 (or b!7144349 b_lambda!272709)))

(declare-fun bs!1888974 () Bool)

(declare-fun d!2227945 () Bool)

(assert (= bs!1888974 (and d!2227945 b!7144349)))

(assert (=> bs!1888974 (= (dynLambda!28240 lambda!435374 lt!2568355) (= (generalisedConcat!2369 (exprs!7686 lt!2568355)) lt!2568325))))

(declare-fun m!7858264 () Bool)

(assert (=> bs!1888974 m!7858264))

(assert (=> d!2227883 d!2227945))

(declare-fun b_lambda!272711 () Bool)

(assert (= b_lambda!272695 (or b!7144348 b_lambda!272711)))

(declare-fun bs!1888975 () Bool)

(declare-fun d!2227947 () Bool)

(assert (= bs!1888975 (and d!2227947 b!7144348)))

(assert (=> bs!1888975 (= (dynLambda!28242 lambda!435375 (h!75786 (exprs!7686 lt!2568321))) (validRegex!9359 (h!75786 (exprs!7686 lt!2568321))))))

(declare-fun m!7858266 () Bool)

(assert (=> bs!1888975 m!7858266))

(assert (=> b!7144472 d!2227947))

(push 1)

(assert (not b!7144595))

(assert (not b!7144575))

(assert (not b!7144636))

(assert (not d!2227905))

(assert (not b!7144604))

(assert (not d!2227891))

(assert (not b!7144508))

(assert (not d!2227925))

(assert (not b!7144502))

(assert (not b!7144509))

(assert (not b!7144567))

(assert (not d!2227913))

(assert (not d!2227933))

(assert (not b_lambda!272707))

(assert (not b!7144565))

(assert (not b!7144632))

(assert (not b_lambda!272709))

(assert (not b!7144622))

(assert (not b!7144635))

(assert (not b!7144625))

(assert (not b!7144507))

(assert (not d!2227889))

(assert (not b!7144617))

(assert (not bs!1888973))

(assert (not b!7144569))

(assert (not d!2227901))

(assert (not b!7144561))

(assert tp_is_empty!46021)

(assert (not b!7144426))

(assert (not bs!1888975))

(assert (not d!2227911))

(assert (not setNonEmpty!52684))

(assert (not b!7144566))

(assert (not b!7144451))

(assert (not b!7144599))

(assert (not d!2227927))

(assert (not b!7144562))

(assert (not b!7144630))

(assert (not b!7144631))

(assert (not b_lambda!272711))

(assert (not d!2227921))

(assert (not b!7144570))

(assert (not b!7144616))

(assert (not d!2227887))

(assert (not bs!1888972))

(assert (not d!2227929))

(assert (not b!7144626))

(assert (not b!7144510))

(assert (not b!7144624))

(assert (not b!7144621))

(assert (not b!7144641))

(assert (not b!7144511))

(assert (not b!7144505))

(assert (not bs!1888974))

(assert (not b!7144618))

(assert (not b!7144594))

(assert (not b!7144634))

(assert (not b!7144473))

(assert (not bm!651379))

(assert (not b_lambda!272705))

(assert (not d!2227883))

(assert (not bm!651378))

(assert (not b!7144581))

(assert (not d!2227917))

(assert (not d!2227903))

(assert (not d!2227885))

(assert (not b!7144620))

(assert (not d!2227935))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

