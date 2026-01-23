; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73658 () Bool)

(assert start!73658)

(declare-fun b!823169 () Bool)

(declare-fun e!543652 () Bool)

(declare-fun tp!257263 () Bool)

(declare-fun tp!257264 () Bool)

(assert (=> b!823169 (= e!543652 (and tp!257263 tp!257264))))

(declare-fun res!379698 () Bool)

(declare-fun e!543653 () Bool)

(assert (=> start!73658 (=> (not res!379698) (not e!543653))))

(declare-datatypes ((C!4664 0))(
  ( (C!4665 (val!2580 Int)) )
))
(declare-datatypes ((Regex!2047 0))(
  ( (ElementMatch!2047 (c!133462 C!4664)) (Concat!3778 (regOne!4606 Regex!2047) (regTwo!4606 Regex!2047)) (EmptyExpr!2047) (Star!2047 (reg!2376 Regex!2047)) (EmptyLang!2047) (Union!2047 (regOne!4607 Regex!2047) (regTwo!4607 Regex!2047)) )
))
(declare-fun r!27177 () Regex!2047)

(declare-fun validRegex!600 (Regex!2047) Bool)

(assert (=> start!73658 (= res!379698 (validRegex!600 r!27177))))

(assert (=> start!73658 e!543653))

(assert (=> start!73658 e!543652))

(declare-fun tp_is_empty!3817 () Bool)

(assert (=> start!73658 tp_is_empty!3817))

(declare-fun b!823170 () Bool)

(declare-fun res!379697 () Bool)

(assert (=> b!823170 (=> (not res!379697) (not e!543653))))

(declare-fun c!13916 () C!4664)

(declare-datatypes ((List!8873 0))(
  ( (Nil!8857) (Cons!8857 (h!14258 C!4664) (t!93165 List!8873)) )
))
(declare-fun contains!1638 (List!8873 C!4664) Bool)

(declare-fun firstChars!18 (Regex!2047) List!8873)

(assert (=> b!823170 (= res!379697 (contains!1638 (firstChars!18 r!27177) c!13916))))

(declare-fun b!823171 () Bool)

(declare-fun res!379699 () Bool)

(assert (=> b!823171 (=> (not res!379699) (not e!543653))))

(get-info :version)

(assert (=> b!823171 (= res!379699 (and (not ((_ is EmptyExpr!2047) r!27177)) ((_ is EmptyLang!2047) r!27177)))))

(declare-fun b!823172 () Bool)

(declare-fun usedCharacters!156 (Regex!2047) List!8873)

(assert (=> b!823172 (= e!543653 (not (contains!1638 (usedCharacters!156 r!27177) c!13916)))))

(declare-fun b!823173 () Bool)

(declare-fun tp!257260 () Bool)

(assert (=> b!823173 (= e!543652 tp!257260)))

(declare-fun b!823174 () Bool)

(declare-fun tp!257262 () Bool)

(declare-fun tp!257261 () Bool)

(assert (=> b!823174 (= e!543652 (and tp!257262 tp!257261))))

(declare-fun b!823175 () Bool)

(assert (=> b!823175 (= e!543652 tp_is_empty!3817)))

(assert (= (and start!73658 res!379698) b!823170))

(assert (= (and b!823170 res!379697) b!823171))

(assert (= (and b!823171 res!379699) b!823172))

(assert (= (and start!73658 ((_ is ElementMatch!2047) r!27177)) b!823175))

(assert (= (and start!73658 ((_ is Concat!3778) r!27177)) b!823169))

(assert (= (and start!73658 ((_ is Star!2047) r!27177)) b!823173))

(assert (= (and start!73658 ((_ is Union!2047) r!27177)) b!823174))

(declare-fun m!1063851 () Bool)

(assert (=> start!73658 m!1063851))

(declare-fun m!1063853 () Bool)

(assert (=> b!823170 m!1063853))

(assert (=> b!823170 m!1063853))

(declare-fun m!1063855 () Bool)

(assert (=> b!823170 m!1063855))

(declare-fun m!1063857 () Bool)

(assert (=> b!823172 m!1063857))

(assert (=> b!823172 m!1063857))

(declare-fun m!1063859 () Bool)

(assert (=> b!823172 m!1063859))

(check-sat (not b!823174) tp_is_empty!3817 (not b!823169) (not b!823172) (not start!73658) (not b!823170) (not b!823173))
(check-sat)
(get-model)

(declare-fun d!259047 () Bool)

(declare-fun lt!317400 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1285 (List!8873) (InoxSet C!4664))

(assert (=> d!259047 (= lt!317400 (select (content!1285 (firstChars!18 r!27177)) c!13916))))

(declare-fun e!543663 () Bool)

(assert (=> d!259047 (= lt!317400 e!543663)))

(declare-fun res!379708 () Bool)

(assert (=> d!259047 (=> (not res!379708) (not e!543663))))

(assert (=> d!259047 (= res!379708 ((_ is Cons!8857) (firstChars!18 r!27177)))))

(assert (=> d!259047 (= (contains!1638 (firstChars!18 r!27177) c!13916) lt!317400)))

(declare-fun b!823184 () Bool)

(declare-fun e!543662 () Bool)

(assert (=> b!823184 (= e!543663 e!543662)))

(declare-fun res!379709 () Bool)

(assert (=> b!823184 (=> res!379709 e!543662)))

(assert (=> b!823184 (= res!379709 (= (h!14258 (firstChars!18 r!27177)) c!13916))))

(declare-fun b!823185 () Bool)

(assert (=> b!823185 (= e!543662 (contains!1638 (t!93165 (firstChars!18 r!27177)) c!13916))))

(assert (= (and d!259047 res!379708) b!823184))

(assert (= (and b!823184 (not res!379709)) b!823185))

(assert (=> d!259047 m!1063853))

(declare-fun m!1063861 () Bool)

(assert (=> d!259047 m!1063861))

(declare-fun m!1063863 () Bool)

(assert (=> d!259047 m!1063863))

(declare-fun m!1063865 () Bool)

(assert (=> b!823185 m!1063865))

(assert (=> b!823170 d!259047))

(declare-fun bm!47247 () Bool)

(declare-fun call!47254 () List!8873)

(declare-fun c!133486 () Bool)

(assert (=> bm!47247 (= call!47254 (firstChars!18 (ite c!133486 (regTwo!4607 r!27177) (regOne!4606 r!27177))))))

(declare-fun b!823234 () Bool)

(declare-fun c!133489 () Bool)

(assert (=> b!823234 (= c!133489 ((_ is Star!2047) r!27177))))

(declare-fun e!543691 () List!8873)

(declare-fun e!543690 () List!8873)

(assert (=> b!823234 (= e!543691 e!543690)))

(declare-fun b!823235 () Bool)

(declare-fun e!543694 () List!8873)

(declare-fun call!47255 () List!8873)

(assert (=> b!823235 (= e!543694 call!47255)))

(declare-fun bm!47248 () Bool)

(declare-fun call!47253 () List!8873)

(assert (=> bm!47248 (= call!47253 call!47254)))

(declare-fun b!823236 () Bool)

(declare-fun c!133485 () Bool)

(declare-fun nullable!497 (Regex!2047) Bool)

(assert (=> b!823236 (= c!133485 (nullable!497 (regOne!4606 r!27177)))))

(declare-fun e!543693 () List!8873)

(assert (=> b!823236 (= e!543693 e!543694)))

(declare-fun b!823237 () Bool)

(declare-fun e!543692 () List!8873)

(assert (=> b!823237 (= e!543692 e!543691)))

(declare-fun c!133488 () Bool)

(assert (=> b!823237 (= c!133488 ((_ is ElementMatch!2047) r!27177))))

(declare-fun bm!47249 () Bool)

(declare-fun call!47252 () List!8873)

(declare-fun call!47256 () List!8873)

(assert (=> bm!47249 (= call!47252 call!47256)))

(declare-fun b!823238 () Bool)

(assert (=> b!823238 (= e!543692 Nil!8857)))

(declare-fun d!259051 () Bool)

(declare-fun c!133487 () Bool)

(assert (=> d!259051 (= c!133487 (or ((_ is EmptyExpr!2047) r!27177) ((_ is EmptyLang!2047) r!27177)))))

(assert (=> d!259051 (= (firstChars!18 r!27177) e!543692)))

(declare-fun b!823239 () Bool)

(assert (=> b!823239 (= e!543691 (Cons!8857 (c!133462 r!27177) Nil!8857))))

(declare-fun bm!47250 () Bool)

(assert (=> bm!47250 (= call!47256 (firstChars!18 (ite c!133489 (reg!2376 r!27177) (ite c!133486 (regOne!4607 r!27177) (regTwo!4606 r!27177)))))))

(declare-fun b!823240 () Bool)

(assert (=> b!823240 (= e!543690 call!47256)))

(declare-fun b!823241 () Bool)

(assert (=> b!823241 (= e!543693 call!47255)))

(declare-fun b!823242 () Bool)

(assert (=> b!823242 (= e!543694 call!47253)))

(declare-fun bm!47251 () Bool)

(declare-fun ++!2274 (List!8873 List!8873) List!8873)

(assert (=> bm!47251 (= call!47255 (++!2274 (ite c!133486 call!47252 call!47253) (ite c!133486 call!47254 call!47252)))))

(declare-fun b!823243 () Bool)

(assert (=> b!823243 (= e!543690 e!543693)))

(assert (=> b!823243 (= c!133486 ((_ is Union!2047) r!27177))))

(assert (= (and d!259051 c!133487) b!823238))

(assert (= (and d!259051 (not c!133487)) b!823237))

(assert (= (and b!823237 c!133488) b!823239))

(assert (= (and b!823237 (not c!133488)) b!823234))

(assert (= (and b!823234 c!133489) b!823240))

(assert (= (and b!823234 (not c!133489)) b!823243))

(assert (= (and b!823243 c!133486) b!823241))

(assert (= (and b!823243 (not c!133486)) b!823236))

(assert (= (and b!823236 c!133485) b!823235))

(assert (= (and b!823236 (not c!133485)) b!823242))

(assert (= (or b!823235 b!823242) bm!47248))

(assert (= (or b!823241 bm!47248) bm!47247))

(assert (= (or b!823241 b!823235) bm!47249))

(assert (= (or b!823241 b!823235) bm!47251))

(assert (= (or b!823240 bm!47249) bm!47250))

(declare-fun m!1063885 () Bool)

(assert (=> bm!47247 m!1063885))

(declare-fun m!1063887 () Bool)

(assert (=> b!823236 m!1063887))

(declare-fun m!1063889 () Bool)

(assert (=> bm!47250 m!1063889))

(declare-fun m!1063891 () Bool)

(assert (=> bm!47251 m!1063891))

(assert (=> b!823170 d!259051))

(declare-fun d!259059 () Bool)

(declare-fun res!379727 () Bool)

(declare-fun e!543720 () Bool)

(assert (=> d!259059 (=> res!379727 e!543720)))

(assert (=> d!259059 (= res!379727 ((_ is ElementMatch!2047) r!27177))))

(assert (=> d!259059 (= (validRegex!600 r!27177) e!543720)))

(declare-fun bm!47268 () Bool)

(declare-fun call!47275 () Bool)

(declare-fun c!133505 () Bool)

(assert (=> bm!47268 (= call!47275 (validRegex!600 (ite c!133505 (regTwo!4607 r!27177) (regOne!4606 r!27177))))))

(declare-fun b!823282 () Bool)

(declare-fun e!543724 () Bool)

(declare-fun call!47274 () Bool)

(assert (=> b!823282 (= e!543724 call!47274)))

(declare-fun b!823283 () Bool)

(declare-fun e!543723 () Bool)

(assert (=> b!823283 (= e!543723 call!47275)))

(declare-fun b!823284 () Bool)

(declare-fun e!543722 () Bool)

(assert (=> b!823284 (= e!543722 e!543724)))

(declare-fun res!379725 () Bool)

(assert (=> b!823284 (= res!379725 (not (nullable!497 (reg!2376 r!27177))))))

(assert (=> b!823284 (=> (not res!379725) (not e!543724))))

(declare-fun b!823285 () Bool)

(declare-fun e!543725 () Bool)

(declare-fun call!47273 () Bool)

(assert (=> b!823285 (= e!543725 call!47273)))

(declare-fun b!823286 () Bool)

(declare-fun res!379724 () Bool)

(declare-fun e!543721 () Bool)

(assert (=> b!823286 (=> res!379724 e!543721)))

(assert (=> b!823286 (= res!379724 (not ((_ is Concat!3778) r!27177)))))

(declare-fun e!543719 () Bool)

(assert (=> b!823286 (= e!543719 e!543721)))

(declare-fun bm!47269 () Bool)

(declare-fun c!133504 () Bool)

(assert (=> bm!47269 (= call!47274 (validRegex!600 (ite c!133504 (reg!2376 r!27177) (ite c!133505 (regOne!4607 r!27177) (regTwo!4606 r!27177)))))))

(declare-fun b!823287 () Bool)

(declare-fun res!379728 () Bool)

(assert (=> b!823287 (=> (not res!379728) (not e!543723))))

(assert (=> b!823287 (= res!379728 call!47273)))

(assert (=> b!823287 (= e!543719 e!543723)))

(declare-fun b!823288 () Bool)

(assert (=> b!823288 (= e!543721 e!543725)))

(declare-fun res!379726 () Bool)

(assert (=> b!823288 (=> (not res!379726) (not e!543725))))

(assert (=> b!823288 (= res!379726 call!47275)))

(declare-fun b!823289 () Bool)

(assert (=> b!823289 (= e!543720 e!543722)))

(assert (=> b!823289 (= c!133504 ((_ is Star!2047) r!27177))))

(declare-fun bm!47270 () Bool)

(assert (=> bm!47270 (= call!47273 call!47274)))

(declare-fun b!823290 () Bool)

(assert (=> b!823290 (= e!543722 e!543719)))

(assert (=> b!823290 (= c!133505 ((_ is Union!2047) r!27177))))

(assert (= (and d!259059 (not res!379727)) b!823289))

(assert (= (and b!823289 c!133504) b!823284))

(assert (= (and b!823289 (not c!133504)) b!823290))

(assert (= (and b!823284 res!379725) b!823282))

(assert (= (and b!823290 c!133505) b!823287))

(assert (= (and b!823290 (not c!133505)) b!823286))

(assert (= (and b!823287 res!379728) b!823283))

(assert (= (and b!823286 (not res!379724)) b!823288))

(assert (= (and b!823288 res!379726) b!823285))

(assert (= (or b!823287 b!823285) bm!47270))

(assert (= (or b!823283 b!823288) bm!47268))

(assert (= (or b!823282 bm!47270) bm!47269))

(declare-fun m!1063893 () Bool)

(assert (=> bm!47268 m!1063893))

(declare-fun m!1063895 () Bool)

(assert (=> b!823284 m!1063895))

(declare-fun m!1063897 () Bool)

(assert (=> bm!47269 m!1063897))

(assert (=> start!73658 d!259059))

(declare-fun d!259061 () Bool)

(declare-fun lt!317403 () Bool)

(assert (=> d!259061 (= lt!317403 (select (content!1285 (usedCharacters!156 r!27177)) c!13916))))

(declare-fun e!543727 () Bool)

(assert (=> d!259061 (= lt!317403 e!543727)))

(declare-fun res!379729 () Bool)

(assert (=> d!259061 (=> (not res!379729) (not e!543727))))

(assert (=> d!259061 (= res!379729 ((_ is Cons!8857) (usedCharacters!156 r!27177)))))

(assert (=> d!259061 (= (contains!1638 (usedCharacters!156 r!27177) c!13916) lt!317403)))

(declare-fun b!823291 () Bool)

(declare-fun e!543726 () Bool)

(assert (=> b!823291 (= e!543727 e!543726)))

(declare-fun res!379730 () Bool)

(assert (=> b!823291 (=> res!379730 e!543726)))

(assert (=> b!823291 (= res!379730 (= (h!14258 (usedCharacters!156 r!27177)) c!13916))))

(declare-fun b!823292 () Bool)

(assert (=> b!823292 (= e!543726 (contains!1638 (t!93165 (usedCharacters!156 r!27177)) c!13916))))

(assert (= (and d!259061 res!379729) b!823291))

(assert (= (and b!823291 (not res!379730)) b!823292))

(assert (=> d!259061 m!1063857))

(declare-fun m!1063899 () Bool)

(assert (=> d!259061 m!1063899))

(declare-fun m!1063901 () Bool)

(assert (=> d!259061 m!1063901))

(declare-fun m!1063903 () Bool)

(assert (=> b!823292 m!1063903))

(assert (=> b!823172 d!259061))

(declare-fun b!823337 () Bool)

(declare-fun e!543756 () List!8873)

(declare-fun e!543758 () List!8873)

(assert (=> b!823337 (= e!543756 e!543758)))

(declare-fun c!133526 () Bool)

(assert (=> b!823337 (= c!133526 ((_ is Union!2047) r!27177))))

(declare-fun b!823338 () Bool)

(declare-fun call!47298 () List!8873)

(assert (=> b!823338 (= e!543758 call!47298)))

(declare-fun bm!47290 () Bool)

(declare-fun call!47296 () List!8873)

(declare-fun call!47297 () List!8873)

(assert (=> bm!47290 (= call!47296 call!47297)))

(declare-fun b!823339 () Bool)

(declare-fun e!543757 () List!8873)

(assert (=> b!823339 (= e!543757 (Cons!8857 (c!133462 r!27177) Nil!8857))))

(declare-fun d!259063 () Bool)

(declare-fun c!133525 () Bool)

(assert (=> d!259063 (= c!133525 (or ((_ is EmptyExpr!2047) r!27177) ((_ is EmptyLang!2047) r!27177)))))

(declare-fun e!543755 () List!8873)

(assert (=> d!259063 (= (usedCharacters!156 r!27177) e!543755)))

(declare-fun b!823340 () Bool)

(assert (=> b!823340 (= e!543756 call!47297)))

(declare-fun call!47295 () List!8873)

(declare-fun bm!47291 () Bool)

(assert (=> bm!47291 (= call!47298 (++!2274 (ite c!133526 call!47295 call!47296) (ite c!133526 call!47296 call!47295)))))

(declare-fun bm!47292 () Bool)

(assert (=> bm!47292 (= call!47295 (usedCharacters!156 (ite c!133526 (regOne!4607 r!27177) (regTwo!4606 r!27177))))))

(declare-fun b!823341 () Bool)

(assert (=> b!823341 (= e!543755 e!543757)))

(declare-fun c!133523 () Bool)

(assert (=> b!823341 (= c!133523 ((_ is ElementMatch!2047) r!27177))))

(declare-fun bm!47293 () Bool)

(declare-fun c!133524 () Bool)

(assert (=> bm!47293 (= call!47297 (usedCharacters!156 (ite c!133524 (reg!2376 r!27177) (ite c!133526 (regTwo!4607 r!27177) (regOne!4606 r!27177)))))))

(declare-fun b!823342 () Bool)

(assert (=> b!823342 (= e!543758 call!47298)))

(declare-fun b!823343 () Bool)

(assert (=> b!823343 (= e!543755 Nil!8857)))

(declare-fun b!823344 () Bool)

(assert (=> b!823344 (= c!133524 ((_ is Star!2047) r!27177))))

(assert (=> b!823344 (= e!543757 e!543756)))

(assert (= (and d!259063 c!133525) b!823343))

(assert (= (and d!259063 (not c!133525)) b!823341))

(assert (= (and b!823341 c!133523) b!823339))

(assert (= (and b!823341 (not c!133523)) b!823344))

(assert (= (and b!823344 c!133524) b!823340))

(assert (= (and b!823344 (not c!133524)) b!823337))

(assert (= (and b!823337 c!133526) b!823342))

(assert (= (and b!823337 (not c!133526)) b!823338))

(assert (= (or b!823342 b!823338) bm!47290))

(assert (= (or b!823342 b!823338) bm!47292))

(assert (= (or b!823342 b!823338) bm!47291))

(assert (= (or b!823340 bm!47290) bm!47293))

(declare-fun m!1063913 () Bool)

(assert (=> bm!47291 m!1063913))

(declare-fun m!1063915 () Bool)

(assert (=> bm!47292 m!1063915))

(declare-fun m!1063917 () Bool)

(assert (=> bm!47293 m!1063917))

(assert (=> b!823172 d!259063))

(declare-fun e!543770 () Bool)

(assert (=> b!823169 (= tp!257263 e!543770)))

(declare-fun b!823375 () Bool)

(declare-fun tp!257289 () Bool)

(declare-fun tp!257288 () Bool)

(assert (=> b!823375 (= e!543770 (and tp!257289 tp!257288))))

(declare-fun b!823376 () Bool)

(declare-fun tp!257286 () Bool)

(assert (=> b!823376 (= e!543770 tp!257286)))

(declare-fun b!823374 () Bool)

(assert (=> b!823374 (= e!543770 tp_is_empty!3817)))

(declare-fun b!823377 () Bool)

(declare-fun tp!257285 () Bool)

(declare-fun tp!257287 () Bool)

(assert (=> b!823377 (= e!543770 (and tp!257285 tp!257287))))

(assert (= (and b!823169 ((_ is ElementMatch!2047) (regOne!4606 r!27177))) b!823374))

(assert (= (and b!823169 ((_ is Concat!3778) (regOne!4606 r!27177))) b!823375))

(assert (= (and b!823169 ((_ is Star!2047) (regOne!4606 r!27177))) b!823376))

(assert (= (and b!823169 ((_ is Union!2047) (regOne!4606 r!27177))) b!823377))

(declare-fun e!543771 () Bool)

(assert (=> b!823169 (= tp!257264 e!543771)))

(declare-fun b!823379 () Bool)

(declare-fun tp!257294 () Bool)

(declare-fun tp!257293 () Bool)

(assert (=> b!823379 (= e!543771 (and tp!257294 tp!257293))))

(declare-fun b!823380 () Bool)

(declare-fun tp!257291 () Bool)

(assert (=> b!823380 (= e!543771 tp!257291)))

(declare-fun b!823378 () Bool)

(assert (=> b!823378 (= e!543771 tp_is_empty!3817)))

(declare-fun b!823381 () Bool)

(declare-fun tp!257290 () Bool)

(declare-fun tp!257292 () Bool)

(assert (=> b!823381 (= e!543771 (and tp!257290 tp!257292))))

(assert (= (and b!823169 ((_ is ElementMatch!2047) (regTwo!4606 r!27177))) b!823378))

(assert (= (and b!823169 ((_ is Concat!3778) (regTwo!4606 r!27177))) b!823379))

(assert (= (and b!823169 ((_ is Star!2047) (regTwo!4606 r!27177))) b!823380))

(assert (= (and b!823169 ((_ is Union!2047) (regTwo!4606 r!27177))) b!823381))

(declare-fun e!543772 () Bool)

(assert (=> b!823173 (= tp!257260 e!543772)))

(declare-fun b!823383 () Bool)

(declare-fun tp!257299 () Bool)

(declare-fun tp!257298 () Bool)

(assert (=> b!823383 (= e!543772 (and tp!257299 tp!257298))))

(declare-fun b!823384 () Bool)

(declare-fun tp!257296 () Bool)

(assert (=> b!823384 (= e!543772 tp!257296)))

(declare-fun b!823382 () Bool)

(assert (=> b!823382 (= e!543772 tp_is_empty!3817)))

(declare-fun b!823385 () Bool)

(declare-fun tp!257295 () Bool)

(declare-fun tp!257297 () Bool)

(assert (=> b!823385 (= e!543772 (and tp!257295 tp!257297))))

(assert (= (and b!823173 ((_ is ElementMatch!2047) (reg!2376 r!27177))) b!823382))

(assert (= (and b!823173 ((_ is Concat!3778) (reg!2376 r!27177))) b!823383))

(assert (= (and b!823173 ((_ is Star!2047) (reg!2376 r!27177))) b!823384))

(assert (= (and b!823173 ((_ is Union!2047) (reg!2376 r!27177))) b!823385))

(declare-fun e!543774 () Bool)

(assert (=> b!823174 (= tp!257262 e!543774)))

(declare-fun b!823391 () Bool)

(declare-fun tp!257309 () Bool)

(declare-fun tp!257308 () Bool)

(assert (=> b!823391 (= e!543774 (and tp!257309 tp!257308))))

(declare-fun b!823392 () Bool)

(declare-fun tp!257306 () Bool)

(assert (=> b!823392 (= e!543774 tp!257306)))

(declare-fun b!823390 () Bool)

(assert (=> b!823390 (= e!543774 tp_is_empty!3817)))

(declare-fun b!823393 () Bool)

(declare-fun tp!257305 () Bool)

(declare-fun tp!257307 () Bool)

(assert (=> b!823393 (= e!543774 (and tp!257305 tp!257307))))

(assert (= (and b!823174 ((_ is ElementMatch!2047) (regOne!4607 r!27177))) b!823390))

(assert (= (and b!823174 ((_ is Concat!3778) (regOne!4607 r!27177))) b!823391))

(assert (= (and b!823174 ((_ is Star!2047) (regOne!4607 r!27177))) b!823392))

(assert (= (and b!823174 ((_ is Union!2047) (regOne!4607 r!27177))) b!823393))

(declare-fun e!543776 () Bool)

(assert (=> b!823174 (= tp!257261 e!543776)))

(declare-fun b!823399 () Bool)

(declare-fun tp!257319 () Bool)

(declare-fun tp!257318 () Bool)

(assert (=> b!823399 (= e!543776 (and tp!257319 tp!257318))))

(declare-fun b!823400 () Bool)

(declare-fun tp!257316 () Bool)

(assert (=> b!823400 (= e!543776 tp!257316)))

(declare-fun b!823398 () Bool)

(assert (=> b!823398 (= e!543776 tp_is_empty!3817)))

(declare-fun b!823401 () Bool)

(declare-fun tp!257315 () Bool)

(declare-fun tp!257317 () Bool)

(assert (=> b!823401 (= e!543776 (and tp!257315 tp!257317))))

(assert (= (and b!823174 ((_ is ElementMatch!2047) (regTwo!4607 r!27177))) b!823398))

(assert (= (and b!823174 ((_ is Concat!3778) (regTwo!4607 r!27177))) b!823399))

(assert (= (and b!823174 ((_ is Star!2047) (regTwo!4607 r!27177))) b!823400))

(assert (= (and b!823174 ((_ is Union!2047) (regTwo!4607 r!27177))) b!823401))

(check-sat (not b!823391) tp_is_empty!3817 (not b!823376) (not bm!47251) (not bm!47247) (not b!823383) (not bm!47268) (not b!823379) (not b!823392) (not b!823401) (not b!823381) (not b!823380) (not bm!47269) (not bm!47250) (not bm!47291) (not d!259047) (not bm!47292) (not b!823284) (not b!823375) (not b!823400) (not b!823385) (not bm!47293) (not b!823185) (not b!823384) (not b!823399) (not d!259061) (not b!823377) (not b!823292) (not b!823393) (not b!823236))
(check-sat)
