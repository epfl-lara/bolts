; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732232 () Bool)

(assert start!732232)

(declare-fun b!7584982 () Bool)

(declare-fun res!3038445 () Bool)

(declare-fun e!4514221 () Bool)

(assert (=> b!7584982 (=> (not res!3038445) (not e!4514221))))

(declare-datatypes ((C!40520 0))(
  ( (C!40521 (val!30700 Int)) )
))
(declare-datatypes ((List!72980 0))(
  ( (Nil!72856) (Cons!72856 (h!79304 C!40520) (t!387715 List!72980)) )
))
(declare-fun s!13436 () List!72980)

(declare-fun isEmpty!41533 (List!72980) Bool)

(assert (=> b!7584982 (= res!3038445 (not (isEmpty!41533 s!13436)))))

(declare-fun b!7584983 () Bool)

(declare-fun e!4514223 () Bool)

(declare-fun tp!2210613 () Bool)

(declare-fun tp!2210617 () Bool)

(assert (=> b!7584983 (= e!4514223 (and tp!2210613 tp!2210617))))

(declare-fun b!7584984 () Bool)

(declare-fun tp!2210612 () Bool)

(assert (=> b!7584984 (= e!4514223 tp!2210612)))

(declare-fun b!7584985 () Bool)

(declare-fun res!3038447 () Bool)

(declare-fun e!4514220 () Bool)

(assert (=> b!7584985 (=> res!3038447 e!4514220)))

(declare-datatypes ((Regex!20097 0))(
  ( (ElementMatch!20097 (c!1399024 C!40520)) (Concat!28942 (regOne!40706 Regex!20097) (regTwo!40706 Regex!20097)) (EmptyExpr!20097) (Star!20097 (reg!20426 Regex!20097)) (EmptyLang!20097) (Union!20097 (regOne!40707 Regex!20097) (regTwo!40707 Regex!20097)) )
))
(declare-fun r!22341 () Regex!20097)

(declare-fun validRegex!10525 (Regex!20097) Bool)

(assert (=> b!7584985 (= res!3038447 (not (validRegex!10525 (regOne!40706 r!22341))))))

(declare-fun b!7584986 () Bool)

(declare-fun tp!2210614 () Bool)

(declare-fun tp!2210616 () Bool)

(assert (=> b!7584986 (= e!4514223 (and tp!2210614 tp!2210616))))

(declare-fun b!7584987 () Bool)

(assert (=> b!7584987 (= e!4514220 (validRegex!10525 (regTwo!40706 r!22341)))))

(declare-fun b!7584988 () Bool)

(declare-fun tp_is_empty!50549 () Bool)

(assert (=> b!7584988 (= e!4514223 tp_is_empty!50549)))

(declare-fun b!7584989 () Bool)

(assert (=> b!7584989 (= e!4514221 (not e!4514220))))

(declare-fun res!3038448 () Bool)

(assert (=> b!7584989 (=> res!3038448 e!4514220)))

(declare-fun lt!2652900 () Bool)

(get-info :version)

(assert (=> b!7584989 (= res!3038448 (or ((_ is EmptyLang!20097) r!22341) ((_ is EmptyExpr!20097) r!22341) ((_ is ElementMatch!20097) r!22341) ((_ is Union!20097) r!22341) ((_ is Star!20097) r!22341) (not lt!2652900)))))

(declare-fun matchRSpec!4410 (Regex!20097 List!72980) Bool)

(assert (=> b!7584989 (= lt!2652900 (matchRSpec!4410 r!22341 s!13436))))

(declare-fun matchR!9689 (Regex!20097 List!72980) Bool)

(assert (=> b!7584989 (= lt!2652900 (matchR!9689 r!22341 s!13436))))

(declare-datatypes ((Unit!167150 0))(
  ( (Unit!167151) )
))
(declare-fun lt!2652899 () Unit!167150)

(declare-fun mainMatchTheorem!4404 (Regex!20097 List!72980) Unit!167150)

(assert (=> b!7584989 (= lt!2652899 (mainMatchTheorem!4404 r!22341 s!13436))))

(declare-fun res!3038444 () Bool)

(assert (=> start!732232 (=> (not res!3038444) (not e!4514221))))

(assert (=> start!732232 (= res!3038444 (validRegex!10525 r!22341))))

(assert (=> start!732232 e!4514221))

(assert (=> start!732232 e!4514223))

(declare-fun e!4514222 () Bool)

(assert (=> start!732232 e!4514222))

(declare-fun b!7584990 () Bool)

(declare-fun tp!2210615 () Bool)

(assert (=> b!7584990 (= e!4514222 (and tp_is_empty!50549 tp!2210615))))

(declare-fun b!7584991 () Bool)

(declare-fun res!3038446 () Bool)

(assert (=> b!7584991 (=> (not res!3038446) (not e!4514221))))

(declare-fun lostCause!1873 (Regex!20097) Bool)

(assert (=> b!7584991 (= res!3038446 (lostCause!1873 r!22341))))

(assert (= (and start!732232 res!3038444) b!7584991))

(assert (= (and b!7584991 res!3038446) b!7584982))

(assert (= (and b!7584982 res!3038445) b!7584989))

(assert (= (and b!7584989 (not res!3038448)) b!7584985))

(assert (= (and b!7584985 (not res!3038447)) b!7584987))

(assert (= (and start!732232 ((_ is ElementMatch!20097) r!22341)) b!7584988))

(assert (= (and start!732232 ((_ is Concat!28942) r!22341)) b!7584983))

(assert (= (and start!732232 ((_ is Star!20097) r!22341)) b!7584984))

(assert (= (and start!732232 ((_ is Union!20097) r!22341)) b!7584986))

(assert (= (and start!732232 ((_ is Cons!72856) s!13436)) b!7584990))

(declare-fun m!8137110 () Bool)

(assert (=> b!7584985 m!8137110))

(declare-fun m!8137112 () Bool)

(assert (=> b!7584982 m!8137112))

(declare-fun m!8137114 () Bool)

(assert (=> start!732232 m!8137114))

(declare-fun m!8137116 () Bool)

(assert (=> b!7584987 m!8137116))

(declare-fun m!8137118 () Bool)

(assert (=> b!7584991 m!8137118))

(declare-fun m!8137120 () Bool)

(assert (=> b!7584989 m!8137120))

(declare-fun m!8137122 () Bool)

(assert (=> b!7584989 m!8137122))

(declare-fun m!8137124 () Bool)

(assert (=> b!7584989 m!8137124))

(check-sat (not b!7584989) (not start!732232) (not b!7584984) tp_is_empty!50549 (not b!7584990) (not b!7584982) (not b!7584991) (not b!7584987) (not b!7584985) (not b!7584986) (not b!7584983))
(check-sat)
(get-model)

(declare-fun b!7585197 () Bool)

(assert (=> b!7585197 true))

(assert (=> b!7585197 true))

(declare-fun bs!1941200 () Bool)

(declare-fun b!7585193 () Bool)

(assert (= bs!1941200 (and b!7585193 b!7585197)))

(declare-fun lambda!467053 () Int)

(declare-fun lambda!467052 () Int)

(assert (=> bs!1941200 (not (= lambda!467053 lambda!467052))))

(assert (=> b!7585193 true))

(assert (=> b!7585193 true))

(declare-fun e!4514337 () Bool)

(declare-fun call!695593 () Bool)

(assert (=> b!7585193 (= e!4514337 call!695593)))

(declare-fun b!7585194 () Bool)

(declare-fun e!4514339 () Bool)

(assert (=> b!7585194 (= e!4514339 (= s!13436 (Cons!72856 (c!1399024 r!22341) Nil!72856)))))

(declare-fun bm!695588 () Bool)

(declare-fun call!695594 () Bool)

(assert (=> bm!695588 (= call!695594 (isEmpty!41533 s!13436))))

(declare-fun bm!695589 () Bool)

(declare-fun c!1399066 () Bool)

(declare-fun Exists!4329 (Int) Bool)

(assert (=> bm!695589 (= call!695593 (Exists!4329 (ite c!1399066 lambda!467052 lambda!467053)))))

(declare-fun b!7585195 () Bool)

(declare-fun e!4514333 () Bool)

(assert (=> b!7585195 (= e!4514333 (matchRSpec!4410 (regTwo!40707 r!22341) s!13436))))

(declare-fun b!7585196 () Bool)

(declare-fun e!4514334 () Bool)

(assert (=> b!7585196 (= e!4514334 e!4514333)))

(declare-fun res!3038533 () Bool)

(assert (=> b!7585196 (= res!3038533 (matchRSpec!4410 (regOne!40707 r!22341) s!13436))))

(assert (=> b!7585196 (=> res!3038533 e!4514333)))

(declare-fun e!4514335 () Bool)

(assert (=> b!7585197 (= e!4514335 call!695593)))

(declare-fun b!7585198 () Bool)

(declare-fun e!4514338 () Bool)

(assert (=> b!7585198 (= e!4514338 call!695594)))

(declare-fun b!7585199 () Bool)

(declare-fun c!1399065 () Bool)

(assert (=> b!7585199 (= c!1399065 ((_ is ElementMatch!20097) r!22341))))

(declare-fun e!4514336 () Bool)

(assert (=> b!7585199 (= e!4514336 e!4514339)))

(declare-fun b!7585200 () Bool)

(declare-fun c!1399064 () Bool)

(assert (=> b!7585200 (= c!1399064 ((_ is Union!20097) r!22341))))

(assert (=> b!7585200 (= e!4514339 e!4514334)))

(declare-fun b!7585201 () Bool)

(assert (=> b!7585201 (= e!4514338 e!4514336)))

(declare-fun res!3038535 () Bool)

(assert (=> b!7585201 (= res!3038535 (not ((_ is EmptyLang!20097) r!22341)))))

(assert (=> b!7585201 (=> (not res!3038535) (not e!4514336))))

(declare-fun b!7585202 () Bool)

(declare-fun res!3038534 () Bool)

(assert (=> b!7585202 (=> res!3038534 e!4514335)))

(assert (=> b!7585202 (= res!3038534 call!695594)))

(assert (=> b!7585202 (= e!4514337 e!4514335)))

(declare-fun d!2318854 () Bool)

(declare-fun c!1399067 () Bool)

(assert (=> d!2318854 (= c!1399067 ((_ is EmptyExpr!20097) r!22341))))

(assert (=> d!2318854 (= (matchRSpec!4410 r!22341 s!13436) e!4514338)))

(declare-fun b!7585203 () Bool)

(assert (=> b!7585203 (= e!4514334 e!4514337)))

(assert (=> b!7585203 (= c!1399066 ((_ is Star!20097) r!22341))))

(assert (= (and d!2318854 c!1399067) b!7585198))

(assert (= (and d!2318854 (not c!1399067)) b!7585201))

(assert (= (and b!7585201 res!3038535) b!7585199))

(assert (= (and b!7585199 c!1399065) b!7585194))

(assert (= (and b!7585199 (not c!1399065)) b!7585200))

(assert (= (and b!7585200 c!1399064) b!7585196))

(assert (= (and b!7585200 (not c!1399064)) b!7585203))

(assert (= (and b!7585196 (not res!3038533)) b!7585195))

(assert (= (and b!7585203 c!1399066) b!7585202))

(assert (= (and b!7585203 (not c!1399066)) b!7585193))

(assert (= (and b!7585202 (not res!3038534)) b!7585197))

(assert (= (or b!7585197 b!7585193) bm!695589))

(assert (= (or b!7585198 b!7585202) bm!695588))

(assert (=> bm!695588 m!8137112))

(declare-fun m!8137166 () Bool)

(assert (=> bm!695589 m!8137166))

(declare-fun m!8137168 () Bool)

(assert (=> b!7585195 m!8137168))

(declare-fun m!8137170 () Bool)

(assert (=> b!7585196 m!8137170))

(assert (=> b!7584989 d!2318854))

(declare-fun b!7585236 () Bool)

(declare-fun e!4514354 () Bool)

(declare-fun e!4514355 () Bool)

(assert (=> b!7585236 (= e!4514354 e!4514355)))

(declare-fun res!3038553 () Bool)

(assert (=> b!7585236 (=> res!3038553 e!4514355)))

(declare-fun call!695597 () Bool)

(assert (=> b!7585236 (= res!3038553 call!695597)))

(declare-fun b!7585237 () Bool)

(declare-fun e!4514357 () Bool)

(declare-fun derivativeStep!5815 (Regex!20097 C!40520) Regex!20097)

(declare-fun head!15615 (List!72980) C!40520)

(declare-fun tail!15155 (List!72980) List!72980)

(assert (=> b!7585237 (= e!4514357 (matchR!9689 (derivativeStep!5815 r!22341 (head!15615 s!13436)) (tail!15155 s!13436)))))

(declare-fun b!7585239 () Bool)

(assert (=> b!7585239 (= e!4514355 (not (= (head!15615 s!13436) (c!1399024 r!22341))))))

(declare-fun b!7585240 () Bool)

(declare-fun res!3038556 () Bool)

(declare-fun e!4514360 () Bool)

(assert (=> b!7585240 (=> (not res!3038556) (not e!4514360))))

(assert (=> b!7585240 (= res!3038556 (not call!695597))))

(declare-fun b!7585241 () Bool)

(declare-fun nullable!8788 (Regex!20097) Bool)

(assert (=> b!7585241 (= e!4514357 (nullable!8788 r!22341))))

(declare-fun b!7585242 () Bool)

(declare-fun e!4514359 () Bool)

(declare-fun e!4514358 () Bool)

(assert (=> b!7585242 (= e!4514359 e!4514358)))

(declare-fun c!1399076 () Bool)

(assert (=> b!7585242 (= c!1399076 ((_ is EmptyLang!20097) r!22341))))

(declare-fun bm!695592 () Bool)

(assert (=> bm!695592 (= call!695597 (isEmpty!41533 s!13436))))

(declare-fun b!7585243 () Bool)

(declare-fun lt!2652909 () Bool)

(assert (=> b!7585243 (= e!4514359 (= lt!2652909 call!695597))))

(declare-fun b!7585244 () Bool)

(declare-fun res!3038557 () Bool)

(declare-fun e!4514356 () Bool)

(assert (=> b!7585244 (=> res!3038557 e!4514356)))

(assert (=> b!7585244 (= res!3038557 e!4514360)))

(declare-fun res!3038558 () Bool)

(assert (=> b!7585244 (=> (not res!3038558) (not e!4514360))))

(assert (=> b!7585244 (= res!3038558 lt!2652909)))

(declare-fun b!7585245 () Bool)

(assert (=> b!7585245 (= e!4514356 e!4514354)))

(declare-fun res!3038555 () Bool)

(assert (=> b!7585245 (=> (not res!3038555) (not e!4514354))))

(assert (=> b!7585245 (= res!3038555 (not lt!2652909))))

(declare-fun d!2318870 () Bool)

(assert (=> d!2318870 e!4514359))

(declare-fun c!1399075 () Bool)

(assert (=> d!2318870 (= c!1399075 ((_ is EmptyExpr!20097) r!22341))))

(assert (=> d!2318870 (= lt!2652909 e!4514357)))

(declare-fun c!1399074 () Bool)

(assert (=> d!2318870 (= c!1399074 (isEmpty!41533 s!13436))))

(assert (=> d!2318870 (validRegex!10525 r!22341)))

(assert (=> d!2318870 (= (matchR!9689 r!22341 s!13436) lt!2652909)))

(declare-fun b!7585238 () Bool)

(assert (=> b!7585238 (= e!4514360 (= (head!15615 s!13436) (c!1399024 r!22341)))))

(declare-fun b!7585246 () Bool)

(declare-fun res!3038559 () Bool)

(assert (=> b!7585246 (=> (not res!3038559) (not e!4514360))))

(assert (=> b!7585246 (= res!3038559 (isEmpty!41533 (tail!15155 s!13436)))))

(declare-fun b!7585247 () Bool)

(declare-fun res!3038554 () Bool)

(assert (=> b!7585247 (=> res!3038554 e!4514355)))

(assert (=> b!7585247 (= res!3038554 (not (isEmpty!41533 (tail!15155 s!13436))))))

(declare-fun b!7585248 () Bool)

(assert (=> b!7585248 (= e!4514358 (not lt!2652909))))

(declare-fun b!7585249 () Bool)

(declare-fun res!3038552 () Bool)

(assert (=> b!7585249 (=> res!3038552 e!4514356)))

(assert (=> b!7585249 (= res!3038552 (not ((_ is ElementMatch!20097) r!22341)))))

(assert (=> b!7585249 (= e!4514358 e!4514356)))

(assert (= (and d!2318870 c!1399074) b!7585241))

(assert (= (and d!2318870 (not c!1399074)) b!7585237))

(assert (= (and d!2318870 c!1399075) b!7585243))

(assert (= (and d!2318870 (not c!1399075)) b!7585242))

(assert (= (and b!7585242 c!1399076) b!7585248))

(assert (= (and b!7585242 (not c!1399076)) b!7585249))

(assert (= (and b!7585249 (not res!3038552)) b!7585244))

(assert (= (and b!7585244 res!3038558) b!7585240))

(assert (= (and b!7585240 res!3038556) b!7585246))

(assert (= (and b!7585246 res!3038559) b!7585238))

(assert (= (and b!7585244 (not res!3038557)) b!7585245))

(assert (= (and b!7585245 res!3038555) b!7585236))

(assert (= (and b!7585236 (not res!3038553)) b!7585247))

(assert (= (and b!7585247 (not res!3038554)) b!7585239))

(assert (= (or b!7585243 b!7585236 b!7585240) bm!695592))

(declare-fun m!8137172 () Bool)

(assert (=> b!7585238 m!8137172))

(assert (=> d!2318870 m!8137112))

(assert (=> d!2318870 m!8137114))

(declare-fun m!8137174 () Bool)

(assert (=> b!7585246 m!8137174))

(assert (=> b!7585246 m!8137174))

(declare-fun m!8137176 () Bool)

(assert (=> b!7585246 m!8137176))

(assert (=> b!7585237 m!8137172))

(assert (=> b!7585237 m!8137172))

(declare-fun m!8137178 () Bool)

(assert (=> b!7585237 m!8137178))

(assert (=> b!7585237 m!8137174))

(assert (=> b!7585237 m!8137178))

(assert (=> b!7585237 m!8137174))

(declare-fun m!8137180 () Bool)

(assert (=> b!7585237 m!8137180))

(assert (=> b!7585239 m!8137172))

(assert (=> b!7585247 m!8137174))

(assert (=> b!7585247 m!8137174))

(assert (=> b!7585247 m!8137176))

(assert (=> bm!695592 m!8137112))

(declare-fun m!8137182 () Bool)

(assert (=> b!7585241 m!8137182))

(assert (=> b!7584989 d!2318870))

(declare-fun d!2318872 () Bool)

(assert (=> d!2318872 (= (matchR!9689 r!22341 s!13436) (matchRSpec!4410 r!22341 s!13436))))

(declare-fun lt!2652912 () Unit!167150)

(declare-fun choose!58636 (Regex!20097 List!72980) Unit!167150)

(assert (=> d!2318872 (= lt!2652912 (choose!58636 r!22341 s!13436))))

(assert (=> d!2318872 (validRegex!10525 r!22341)))

(assert (=> d!2318872 (= (mainMatchTheorem!4404 r!22341 s!13436) lt!2652912)))

(declare-fun bs!1941201 () Bool)

(assert (= bs!1941201 d!2318872))

(assert (=> bs!1941201 m!8137122))

(assert (=> bs!1941201 m!8137120))

(declare-fun m!8137184 () Bool)

(assert (=> bs!1941201 m!8137184))

(assert (=> bs!1941201 m!8137114))

(assert (=> b!7584989 d!2318872))

(declare-fun b!7585268 () Bool)

(declare-fun e!4514379 () Bool)

(declare-fun e!4514375 () Bool)

(assert (=> b!7585268 (= e!4514379 e!4514375)))

(declare-fun c!1399081 () Bool)

(assert (=> b!7585268 (= c!1399081 ((_ is Star!20097) r!22341))))

(declare-fun b!7585269 () Bool)

(declare-fun e!4514381 () Bool)

(declare-fun call!695605 () Bool)

(assert (=> b!7585269 (= e!4514381 call!695605)))

(declare-fun b!7585270 () Bool)

(declare-fun res!3038573 () Bool)

(declare-fun e!4514380 () Bool)

(assert (=> b!7585270 (=> res!3038573 e!4514380)))

(assert (=> b!7585270 (= res!3038573 (not ((_ is Concat!28942) r!22341)))))

(declare-fun e!4514377 () Bool)

(assert (=> b!7585270 (= e!4514377 e!4514380)))

(declare-fun c!1399082 () Bool)

(declare-fun bm!695599 () Bool)

(declare-fun call!695604 () Bool)

(assert (=> bm!695599 (= call!695604 (validRegex!10525 (ite c!1399081 (reg!20426 r!22341) (ite c!1399082 (regOne!40707 r!22341) (regTwo!40706 r!22341)))))))

(declare-fun b!7585271 () Bool)

(assert (=> b!7585271 (= e!4514375 e!4514377)))

(assert (=> b!7585271 (= c!1399082 ((_ is Union!20097) r!22341))))

(declare-fun b!7585272 () Bool)

(declare-fun e!4514378 () Bool)

(assert (=> b!7585272 (= e!4514378 call!695604)))

(declare-fun bm!695600 () Bool)

(declare-fun call!695606 () Bool)

(assert (=> bm!695600 (= call!695606 (validRegex!10525 (ite c!1399082 (regTwo!40707 r!22341) (regOne!40706 r!22341))))))

(declare-fun b!7585273 () Bool)

(assert (=> b!7585273 (= e!4514375 e!4514378)))

(declare-fun res!3038574 () Bool)

(assert (=> b!7585273 (= res!3038574 (not (nullable!8788 (reg!20426 r!22341))))))

(assert (=> b!7585273 (=> (not res!3038574) (not e!4514378))))

(declare-fun b!7585274 () Bool)

(assert (=> b!7585274 (= e!4514380 e!4514381)))

(declare-fun res!3038570 () Bool)

(assert (=> b!7585274 (=> (not res!3038570) (not e!4514381))))

(assert (=> b!7585274 (= res!3038570 call!695606)))

(declare-fun d!2318874 () Bool)

(declare-fun res!3038571 () Bool)

(assert (=> d!2318874 (=> res!3038571 e!4514379)))

(assert (=> d!2318874 (= res!3038571 ((_ is ElementMatch!20097) r!22341))))

(assert (=> d!2318874 (= (validRegex!10525 r!22341) e!4514379)))

(declare-fun bm!695601 () Bool)

(assert (=> bm!695601 (= call!695605 call!695604)))

(declare-fun b!7585275 () Bool)

(declare-fun res!3038572 () Bool)

(declare-fun e!4514376 () Bool)

(assert (=> b!7585275 (=> (not res!3038572) (not e!4514376))))

(assert (=> b!7585275 (= res!3038572 call!695605)))

(assert (=> b!7585275 (= e!4514377 e!4514376)))

(declare-fun b!7585276 () Bool)

(assert (=> b!7585276 (= e!4514376 call!695606)))

(assert (= (and d!2318874 (not res!3038571)) b!7585268))

(assert (= (and b!7585268 c!1399081) b!7585273))

(assert (= (and b!7585268 (not c!1399081)) b!7585271))

(assert (= (and b!7585273 res!3038574) b!7585272))

(assert (= (and b!7585271 c!1399082) b!7585275))

(assert (= (and b!7585271 (not c!1399082)) b!7585270))

(assert (= (and b!7585275 res!3038572) b!7585276))

(assert (= (and b!7585270 (not res!3038573)) b!7585274))

(assert (= (and b!7585274 res!3038570) b!7585269))

(assert (= (or b!7585276 b!7585274) bm!695600))

(assert (= (or b!7585275 b!7585269) bm!695601))

(assert (= (or b!7585272 bm!695601) bm!695599))

(declare-fun m!8137186 () Bool)

(assert (=> bm!695599 m!8137186))

(declare-fun m!8137188 () Bool)

(assert (=> bm!695600 m!8137188))

(declare-fun m!8137190 () Bool)

(assert (=> b!7585273 m!8137190))

(assert (=> start!732232 d!2318874))

(declare-fun d!2318876 () Bool)

(assert (=> d!2318876 (= (isEmpty!41533 s!13436) ((_ is Nil!72856) s!13436))))

(assert (=> b!7584982 d!2318876))

(declare-fun b!7585277 () Bool)

(declare-fun e!4514386 () Bool)

(declare-fun e!4514382 () Bool)

(assert (=> b!7585277 (= e!4514386 e!4514382)))

(declare-fun c!1399083 () Bool)

(assert (=> b!7585277 (= c!1399083 ((_ is Star!20097) (regTwo!40706 r!22341)))))

(declare-fun b!7585278 () Bool)

(declare-fun e!4514388 () Bool)

(declare-fun call!695608 () Bool)

(assert (=> b!7585278 (= e!4514388 call!695608)))

(declare-fun b!7585279 () Bool)

(declare-fun res!3038578 () Bool)

(declare-fun e!4514387 () Bool)

(assert (=> b!7585279 (=> res!3038578 e!4514387)))

(assert (=> b!7585279 (= res!3038578 (not ((_ is Concat!28942) (regTwo!40706 r!22341))))))

(declare-fun e!4514384 () Bool)

(assert (=> b!7585279 (= e!4514384 e!4514387)))

(declare-fun bm!695602 () Bool)

(declare-fun call!695607 () Bool)

(declare-fun c!1399084 () Bool)

(assert (=> bm!695602 (= call!695607 (validRegex!10525 (ite c!1399083 (reg!20426 (regTwo!40706 r!22341)) (ite c!1399084 (regOne!40707 (regTwo!40706 r!22341)) (regTwo!40706 (regTwo!40706 r!22341))))))))

(declare-fun b!7585280 () Bool)

(assert (=> b!7585280 (= e!4514382 e!4514384)))

(assert (=> b!7585280 (= c!1399084 ((_ is Union!20097) (regTwo!40706 r!22341)))))

(declare-fun b!7585281 () Bool)

(declare-fun e!4514385 () Bool)

(assert (=> b!7585281 (= e!4514385 call!695607)))

(declare-fun bm!695603 () Bool)

(declare-fun call!695609 () Bool)

(assert (=> bm!695603 (= call!695609 (validRegex!10525 (ite c!1399084 (regTwo!40707 (regTwo!40706 r!22341)) (regOne!40706 (regTwo!40706 r!22341)))))))

(declare-fun b!7585282 () Bool)

(assert (=> b!7585282 (= e!4514382 e!4514385)))

(declare-fun res!3038579 () Bool)

(assert (=> b!7585282 (= res!3038579 (not (nullable!8788 (reg!20426 (regTwo!40706 r!22341)))))))

(assert (=> b!7585282 (=> (not res!3038579) (not e!4514385))))

(declare-fun b!7585283 () Bool)

(assert (=> b!7585283 (= e!4514387 e!4514388)))

(declare-fun res!3038575 () Bool)

(assert (=> b!7585283 (=> (not res!3038575) (not e!4514388))))

(assert (=> b!7585283 (= res!3038575 call!695609)))

(declare-fun d!2318878 () Bool)

(declare-fun res!3038576 () Bool)

(assert (=> d!2318878 (=> res!3038576 e!4514386)))

(assert (=> d!2318878 (= res!3038576 ((_ is ElementMatch!20097) (regTwo!40706 r!22341)))))

(assert (=> d!2318878 (= (validRegex!10525 (regTwo!40706 r!22341)) e!4514386)))

(declare-fun bm!695604 () Bool)

(assert (=> bm!695604 (= call!695608 call!695607)))

(declare-fun b!7585284 () Bool)

(declare-fun res!3038577 () Bool)

(declare-fun e!4514383 () Bool)

(assert (=> b!7585284 (=> (not res!3038577) (not e!4514383))))

(assert (=> b!7585284 (= res!3038577 call!695608)))

(assert (=> b!7585284 (= e!4514384 e!4514383)))

(declare-fun b!7585285 () Bool)

(assert (=> b!7585285 (= e!4514383 call!695609)))

(assert (= (and d!2318878 (not res!3038576)) b!7585277))

(assert (= (and b!7585277 c!1399083) b!7585282))

(assert (= (and b!7585277 (not c!1399083)) b!7585280))

(assert (= (and b!7585282 res!3038579) b!7585281))

(assert (= (and b!7585280 c!1399084) b!7585284))

(assert (= (and b!7585280 (not c!1399084)) b!7585279))

(assert (= (and b!7585284 res!3038577) b!7585285))

(assert (= (and b!7585279 (not res!3038578)) b!7585283))

(assert (= (and b!7585283 res!3038575) b!7585278))

(assert (= (or b!7585285 b!7585283) bm!695603))

(assert (= (or b!7585284 b!7585278) bm!695604))

(assert (= (or b!7585281 bm!695604) bm!695602))

(declare-fun m!8137192 () Bool)

(assert (=> bm!695602 m!8137192))

(declare-fun m!8137194 () Bool)

(assert (=> bm!695603 m!8137194))

(declare-fun m!8137196 () Bool)

(assert (=> b!7585282 m!8137196))

(assert (=> b!7584987 d!2318878))

(declare-fun d!2318880 () Bool)

(declare-fun lostCauseFct!524 (Regex!20097) Bool)

(assert (=> d!2318880 (= (lostCause!1873 r!22341) (lostCauseFct!524 r!22341))))

(declare-fun bs!1941202 () Bool)

(assert (= bs!1941202 d!2318880))

(declare-fun m!8137198 () Bool)

(assert (=> bs!1941202 m!8137198))

(assert (=> b!7584991 d!2318880))

(declare-fun b!7585286 () Bool)

(declare-fun e!4514393 () Bool)

(declare-fun e!4514389 () Bool)

(assert (=> b!7585286 (= e!4514393 e!4514389)))

(declare-fun c!1399085 () Bool)

(assert (=> b!7585286 (= c!1399085 ((_ is Star!20097) (regOne!40706 r!22341)))))

(declare-fun b!7585287 () Bool)

(declare-fun e!4514395 () Bool)

(declare-fun call!695611 () Bool)

(assert (=> b!7585287 (= e!4514395 call!695611)))

(declare-fun b!7585288 () Bool)

(declare-fun res!3038583 () Bool)

(declare-fun e!4514394 () Bool)

(assert (=> b!7585288 (=> res!3038583 e!4514394)))

(assert (=> b!7585288 (= res!3038583 (not ((_ is Concat!28942) (regOne!40706 r!22341))))))

(declare-fun e!4514391 () Bool)

(assert (=> b!7585288 (= e!4514391 e!4514394)))

(declare-fun c!1399086 () Bool)

(declare-fun bm!695605 () Bool)

(declare-fun call!695610 () Bool)

(assert (=> bm!695605 (= call!695610 (validRegex!10525 (ite c!1399085 (reg!20426 (regOne!40706 r!22341)) (ite c!1399086 (regOne!40707 (regOne!40706 r!22341)) (regTwo!40706 (regOne!40706 r!22341))))))))

(declare-fun b!7585289 () Bool)

(assert (=> b!7585289 (= e!4514389 e!4514391)))

(assert (=> b!7585289 (= c!1399086 ((_ is Union!20097) (regOne!40706 r!22341)))))

(declare-fun b!7585290 () Bool)

(declare-fun e!4514392 () Bool)

(assert (=> b!7585290 (= e!4514392 call!695610)))

(declare-fun bm!695606 () Bool)

(declare-fun call!695612 () Bool)

(assert (=> bm!695606 (= call!695612 (validRegex!10525 (ite c!1399086 (regTwo!40707 (regOne!40706 r!22341)) (regOne!40706 (regOne!40706 r!22341)))))))

(declare-fun b!7585291 () Bool)

(assert (=> b!7585291 (= e!4514389 e!4514392)))

(declare-fun res!3038584 () Bool)

(assert (=> b!7585291 (= res!3038584 (not (nullable!8788 (reg!20426 (regOne!40706 r!22341)))))))

(assert (=> b!7585291 (=> (not res!3038584) (not e!4514392))))

(declare-fun b!7585292 () Bool)

(assert (=> b!7585292 (= e!4514394 e!4514395)))

(declare-fun res!3038580 () Bool)

(assert (=> b!7585292 (=> (not res!3038580) (not e!4514395))))

(assert (=> b!7585292 (= res!3038580 call!695612)))

(declare-fun d!2318882 () Bool)

(declare-fun res!3038581 () Bool)

(assert (=> d!2318882 (=> res!3038581 e!4514393)))

(assert (=> d!2318882 (= res!3038581 ((_ is ElementMatch!20097) (regOne!40706 r!22341)))))

(assert (=> d!2318882 (= (validRegex!10525 (regOne!40706 r!22341)) e!4514393)))

(declare-fun bm!695607 () Bool)

(assert (=> bm!695607 (= call!695611 call!695610)))

(declare-fun b!7585293 () Bool)

(declare-fun res!3038582 () Bool)

(declare-fun e!4514390 () Bool)

(assert (=> b!7585293 (=> (not res!3038582) (not e!4514390))))

(assert (=> b!7585293 (= res!3038582 call!695611)))

(assert (=> b!7585293 (= e!4514391 e!4514390)))

(declare-fun b!7585294 () Bool)

(assert (=> b!7585294 (= e!4514390 call!695612)))

(assert (= (and d!2318882 (not res!3038581)) b!7585286))

(assert (= (and b!7585286 c!1399085) b!7585291))

(assert (= (and b!7585286 (not c!1399085)) b!7585289))

(assert (= (and b!7585291 res!3038584) b!7585290))

(assert (= (and b!7585289 c!1399086) b!7585293))

(assert (= (and b!7585289 (not c!1399086)) b!7585288))

(assert (= (and b!7585293 res!3038582) b!7585294))

(assert (= (and b!7585288 (not res!3038583)) b!7585292))

(assert (= (and b!7585292 res!3038580) b!7585287))

(assert (= (or b!7585294 b!7585292) bm!695606))

(assert (= (or b!7585293 b!7585287) bm!695607))

(assert (= (or b!7585290 bm!695607) bm!695605))

(declare-fun m!8137200 () Bool)

(assert (=> bm!695605 m!8137200))

(declare-fun m!8137202 () Bool)

(assert (=> bm!695606 m!8137202))

(declare-fun m!8137204 () Bool)

(assert (=> b!7585291 m!8137204))

(assert (=> b!7584985 d!2318882))

(declare-fun e!4514398 () Bool)

(assert (=> b!7584984 (= tp!2210612 e!4514398)))

(declare-fun b!7585306 () Bool)

(declare-fun tp!2210669 () Bool)

(declare-fun tp!2210670 () Bool)

(assert (=> b!7585306 (= e!4514398 (and tp!2210669 tp!2210670))))

(declare-fun b!7585307 () Bool)

(declare-fun tp!2210667 () Bool)

(assert (=> b!7585307 (= e!4514398 tp!2210667)))

(declare-fun b!7585305 () Bool)

(assert (=> b!7585305 (= e!4514398 tp_is_empty!50549)))

(declare-fun b!7585308 () Bool)

(declare-fun tp!2210668 () Bool)

(declare-fun tp!2210666 () Bool)

(assert (=> b!7585308 (= e!4514398 (and tp!2210668 tp!2210666))))

(assert (= (and b!7584984 ((_ is ElementMatch!20097) (reg!20426 r!22341))) b!7585305))

(assert (= (and b!7584984 ((_ is Concat!28942) (reg!20426 r!22341))) b!7585306))

(assert (= (and b!7584984 ((_ is Star!20097) (reg!20426 r!22341))) b!7585307))

(assert (= (and b!7584984 ((_ is Union!20097) (reg!20426 r!22341))) b!7585308))

(declare-fun e!4514399 () Bool)

(assert (=> b!7584983 (= tp!2210613 e!4514399)))

(declare-fun b!7585310 () Bool)

(declare-fun tp!2210674 () Bool)

(declare-fun tp!2210675 () Bool)

(assert (=> b!7585310 (= e!4514399 (and tp!2210674 tp!2210675))))

(declare-fun b!7585311 () Bool)

(declare-fun tp!2210672 () Bool)

(assert (=> b!7585311 (= e!4514399 tp!2210672)))

(declare-fun b!7585309 () Bool)

(assert (=> b!7585309 (= e!4514399 tp_is_empty!50549)))

(declare-fun b!7585312 () Bool)

(declare-fun tp!2210673 () Bool)

(declare-fun tp!2210671 () Bool)

(assert (=> b!7585312 (= e!4514399 (and tp!2210673 tp!2210671))))

(assert (= (and b!7584983 ((_ is ElementMatch!20097) (regOne!40706 r!22341))) b!7585309))

(assert (= (and b!7584983 ((_ is Concat!28942) (regOne!40706 r!22341))) b!7585310))

(assert (= (and b!7584983 ((_ is Star!20097) (regOne!40706 r!22341))) b!7585311))

(assert (= (and b!7584983 ((_ is Union!20097) (regOne!40706 r!22341))) b!7585312))

(declare-fun e!4514400 () Bool)

(assert (=> b!7584983 (= tp!2210617 e!4514400)))

(declare-fun b!7585314 () Bool)

(declare-fun tp!2210679 () Bool)

(declare-fun tp!2210680 () Bool)

(assert (=> b!7585314 (= e!4514400 (and tp!2210679 tp!2210680))))

(declare-fun b!7585315 () Bool)

(declare-fun tp!2210677 () Bool)

(assert (=> b!7585315 (= e!4514400 tp!2210677)))

(declare-fun b!7585313 () Bool)

(assert (=> b!7585313 (= e!4514400 tp_is_empty!50549)))

(declare-fun b!7585316 () Bool)

(declare-fun tp!2210678 () Bool)

(declare-fun tp!2210676 () Bool)

(assert (=> b!7585316 (= e!4514400 (and tp!2210678 tp!2210676))))

(assert (= (and b!7584983 ((_ is ElementMatch!20097) (regTwo!40706 r!22341))) b!7585313))

(assert (= (and b!7584983 ((_ is Concat!28942) (regTwo!40706 r!22341))) b!7585314))

(assert (= (and b!7584983 ((_ is Star!20097) (regTwo!40706 r!22341))) b!7585315))

(assert (= (and b!7584983 ((_ is Union!20097) (regTwo!40706 r!22341))) b!7585316))

(declare-fun e!4514401 () Bool)

(assert (=> b!7584986 (= tp!2210614 e!4514401)))

(declare-fun b!7585318 () Bool)

(declare-fun tp!2210684 () Bool)

(declare-fun tp!2210685 () Bool)

(assert (=> b!7585318 (= e!4514401 (and tp!2210684 tp!2210685))))

(declare-fun b!7585319 () Bool)

(declare-fun tp!2210682 () Bool)

(assert (=> b!7585319 (= e!4514401 tp!2210682)))

(declare-fun b!7585317 () Bool)

(assert (=> b!7585317 (= e!4514401 tp_is_empty!50549)))

(declare-fun b!7585320 () Bool)

(declare-fun tp!2210683 () Bool)

(declare-fun tp!2210681 () Bool)

(assert (=> b!7585320 (= e!4514401 (and tp!2210683 tp!2210681))))

(assert (= (and b!7584986 ((_ is ElementMatch!20097) (regOne!40707 r!22341))) b!7585317))

(assert (= (and b!7584986 ((_ is Concat!28942) (regOne!40707 r!22341))) b!7585318))

(assert (= (and b!7584986 ((_ is Star!20097) (regOne!40707 r!22341))) b!7585319))

(assert (= (and b!7584986 ((_ is Union!20097) (regOne!40707 r!22341))) b!7585320))

(declare-fun e!4514402 () Bool)

(assert (=> b!7584986 (= tp!2210616 e!4514402)))

(declare-fun b!7585322 () Bool)

(declare-fun tp!2210689 () Bool)

(declare-fun tp!2210690 () Bool)

(assert (=> b!7585322 (= e!4514402 (and tp!2210689 tp!2210690))))

(declare-fun b!7585323 () Bool)

(declare-fun tp!2210687 () Bool)

(assert (=> b!7585323 (= e!4514402 tp!2210687)))

(declare-fun b!7585321 () Bool)

(assert (=> b!7585321 (= e!4514402 tp_is_empty!50549)))

(declare-fun b!7585324 () Bool)

(declare-fun tp!2210688 () Bool)

(declare-fun tp!2210686 () Bool)

(assert (=> b!7585324 (= e!4514402 (and tp!2210688 tp!2210686))))

(assert (= (and b!7584986 ((_ is ElementMatch!20097) (regTwo!40707 r!22341))) b!7585321))

(assert (= (and b!7584986 ((_ is Concat!28942) (regTwo!40707 r!22341))) b!7585322))

(assert (= (and b!7584986 ((_ is Star!20097) (regTwo!40707 r!22341))) b!7585323))

(assert (= (and b!7584986 ((_ is Union!20097) (regTwo!40707 r!22341))) b!7585324))

(declare-fun b!7585329 () Bool)

(declare-fun e!4514405 () Bool)

(declare-fun tp!2210693 () Bool)

(assert (=> b!7585329 (= e!4514405 (and tp_is_empty!50549 tp!2210693))))

(assert (=> b!7584990 (= tp!2210615 e!4514405)))

(assert (= (and b!7584990 ((_ is Cons!72856) (t!387715 s!13436))) b!7585329))

(check-sat (not bm!695605) (not b!7585273) (not b!7585318) (not bm!695603) (not d!2318872) (not bm!695589) (not b!7585291) (not b!7585238) (not b!7585306) (not b!7585312) (not b!7585239) (not b!7585241) (not b!7585314) (not b!7585246) (not d!2318880) (not d!2318870) (not bm!695588) (not bm!695600) (not b!7585195) (not b!7585322) tp_is_empty!50549 (not bm!695592) (not b!7585329) (not b!7585196) (not b!7585310) (not b!7585308) (not b!7585319) (not b!7585311) (not b!7585247) (not b!7585324) (not b!7585323) (not b!7585282) (not b!7585307) (not bm!695606) (not b!7585237) (not bm!695602) (not b!7585315) (not bm!695599) (not b!7585316) (not b!7585320))
(check-sat)
