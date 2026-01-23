; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744394 () Bool)

(assert start!744394)

(declare-fun b!7886205 () Bool)

(declare-fun e!4656149 () Bool)

(declare-fun tp_is_empty!52801 () Bool)

(declare-fun tp!2345996 () Bool)

(assert (=> b!7886205 (= e!4656149 (and tp_is_empty!52801 tp!2345996))))

(declare-fun b!7886206 () Bool)

(declare-fun e!4656150 () Bool)

(declare-fun tp!2346001 () Bool)

(assert (=> b!7886206 (= e!4656150 (and tp_is_empty!52801 tp!2346001))))

(declare-fun b!7886207 () Bool)

(declare-fun res!3130744 () Bool)

(declare-fun e!4656151 () Bool)

(assert (=> b!7886207 (=> (not res!3130744) (not e!4656151))))

(declare-datatypes ((C!42728 0))(
  ( (C!42729 (val!31826 Int)) )
))
(declare-datatypes ((Regex!21201 0))(
  ( (ElementMatch!21201 (c!1447711 C!42728)) (Concat!30046 (regOne!42914 Regex!21201) (regTwo!42914 Regex!21201)) (EmptyExpr!21201) (Star!21201 (reg!21530 Regex!21201)) (EmptyLang!21201) (Union!21201 (regOne!42915 Regex!21201) (regTwo!42915 Regex!21201)) )
))
(declare-fun r!14100 () Regex!21201)

(get-info :version)

(assert (=> b!7886207 (= res!3130744 (and (not ((_ is EmptyExpr!21201) r!14100)) (not ((_ is EmptyLang!21201) r!14100)) (not ((_ is ElementMatch!21201) r!14100)) (not ((_ is Union!21201) r!14100)) (not ((_ is Star!21201) r!14100))))))

(declare-fun b!7886208 () Bool)

(declare-fun e!4656147 () Bool)

(assert (=> b!7886208 (= e!4656147 tp_is_empty!52801)))

(declare-fun b!7886210 () Bool)

(declare-fun validRegex!11611 (Regex!21201) Bool)

(assert (=> b!7886210 (= e!4656151 (not (validRegex!11611 (regOne!42914 r!14100))))))

(declare-fun b!7886211 () Bool)

(declare-fun res!3130743 () Bool)

(assert (=> b!7886211 (=> (not res!3130743) (not e!4656151))))

(declare-datatypes ((List!74058 0))(
  ( (Nil!73934) (Cons!73934 (h!80382 C!42728) (t!388793 List!74058)) )
))
(declare-datatypes ((tuple2!70048 0))(
  ( (tuple2!70049 (_1!38327 List!74058) (_2!38327 List!74058)) )
))
(declare-fun cut!3 () tuple2!70048)

(declare-fun s!9586 () List!74058)

(declare-fun ++!18109 (List!74058 List!74058) List!74058)

(assert (=> b!7886211 (= res!3130743 (= (++!18109 (_1!38327 cut!3) (_2!38327 cut!3)) s!9586))))

(declare-fun b!7886212 () Bool)

(declare-fun e!4656148 () Bool)

(declare-fun tp!2345995 () Bool)

(assert (=> b!7886212 (= e!4656148 (and tp_is_empty!52801 tp!2345995))))

(declare-fun b!7886213 () Bool)

(declare-fun tp!2346000 () Bool)

(declare-fun tp!2345999 () Bool)

(assert (=> b!7886213 (= e!4656147 (and tp!2346000 tp!2345999))))

(declare-fun b!7886214 () Bool)

(declare-fun tp!2346002 () Bool)

(assert (=> b!7886214 (= e!4656147 tp!2346002)))

(declare-fun res!3130742 () Bool)

(assert (=> start!744394 (=> (not res!3130742) (not e!4656151))))

(assert (=> start!744394 (= res!3130742 (validRegex!11611 r!14100))))

(assert (=> start!744394 e!4656151))

(assert (=> start!744394 e!4656147))

(assert (=> start!744394 (and e!4656149 e!4656148)))

(assert (=> start!744394 e!4656150))

(declare-fun b!7886209 () Bool)

(declare-fun tp!2345997 () Bool)

(declare-fun tp!2345998 () Bool)

(assert (=> b!7886209 (= e!4656147 (and tp!2345997 tp!2345998))))

(assert (= (and start!744394 res!3130742) b!7886207))

(assert (= (and b!7886207 res!3130744) b!7886211))

(assert (= (and b!7886211 res!3130743) b!7886210))

(assert (= (and start!744394 ((_ is ElementMatch!21201) r!14100)) b!7886208))

(assert (= (and start!744394 ((_ is Concat!30046) r!14100)) b!7886213))

(assert (= (and start!744394 ((_ is Star!21201) r!14100)) b!7886214))

(assert (= (and start!744394 ((_ is Union!21201) r!14100)) b!7886209))

(assert (= (and start!744394 ((_ is Cons!73934) (_1!38327 cut!3))) b!7886205))

(assert (= (and start!744394 ((_ is Cons!73934) (_2!38327 cut!3))) b!7886212))

(assert (= (and start!744394 ((_ is Cons!73934) s!9586)) b!7886206))

(declare-fun m!8269218 () Bool)

(assert (=> b!7886210 m!8269218))

(declare-fun m!8269220 () Bool)

(assert (=> b!7886211 m!8269220))

(declare-fun m!8269222 () Bool)

(assert (=> start!744394 m!8269222))

(check-sat tp_is_empty!52801 (not b!7886205) (not b!7886212) (not b!7886214) (not b!7886206) (not b!7886211) (not b!7886209) (not start!744394) (not b!7886213) (not b!7886210))
(check-sat)
(get-model)

(declare-fun call!731526 () Bool)

(declare-fun bm!731520 () Bool)

(declare-fun c!1447720 () Bool)

(declare-fun c!1447721 () Bool)

(assert (=> bm!731520 (= call!731526 (validRegex!11611 (ite c!1447720 (reg!21530 r!14100) (ite c!1447721 (regTwo!42915 r!14100) (regOne!42914 r!14100)))))))

(declare-fun b!7886251 () Bool)

(declare-fun e!4656182 () Bool)

(declare-fun e!4656180 () Bool)

(assert (=> b!7886251 (= e!4656182 e!4656180)))

(assert (=> b!7886251 (= c!1447721 ((_ is Union!21201) r!14100))))

(declare-fun b!7886252 () Bool)

(declare-fun e!4656181 () Bool)

(declare-fun e!4656183 () Bool)

(assert (=> b!7886252 (= e!4656181 e!4656183)))

(declare-fun res!3130769 () Bool)

(assert (=> b!7886252 (=> (not res!3130769) (not e!4656183))))

(declare-fun call!731525 () Bool)

(assert (=> b!7886252 (= res!3130769 call!731525)))

(declare-fun b!7886253 () Bool)

(declare-fun e!4656185 () Bool)

(assert (=> b!7886253 (= e!4656185 e!4656182)))

(assert (=> b!7886253 (= c!1447720 ((_ is Star!21201) r!14100))))

(declare-fun bm!731521 () Bool)

(declare-fun call!731527 () Bool)

(assert (=> bm!731521 (= call!731527 (validRegex!11611 (ite c!1447721 (regOne!42915 r!14100) (regTwo!42914 r!14100))))))

(declare-fun b!7886254 () Bool)

(declare-fun res!3130767 () Bool)

(assert (=> b!7886254 (=> res!3130767 e!4656181)))

(assert (=> b!7886254 (= res!3130767 (not ((_ is Concat!30046) r!14100)))))

(assert (=> b!7886254 (= e!4656180 e!4656181)))

(declare-fun b!7886255 () Bool)

(declare-fun e!4656184 () Bool)

(assert (=> b!7886255 (= e!4656184 call!731526)))

(declare-fun b!7886256 () Bool)

(assert (=> b!7886256 (= e!4656182 e!4656184)))

(declare-fun res!3130766 () Bool)

(declare-fun nullable!9455 (Regex!21201) Bool)

(assert (=> b!7886256 (= res!3130766 (not (nullable!9455 (reg!21530 r!14100))))))

(assert (=> b!7886256 (=> (not res!3130766) (not e!4656184))))

(declare-fun d!2356491 () Bool)

(declare-fun res!3130765 () Bool)

(assert (=> d!2356491 (=> res!3130765 e!4656185)))

(assert (=> d!2356491 (= res!3130765 ((_ is ElementMatch!21201) r!14100))))

(assert (=> d!2356491 (= (validRegex!11611 r!14100) e!4656185)))

(declare-fun b!7886257 () Bool)

(declare-fun res!3130768 () Bool)

(declare-fun e!4656186 () Bool)

(assert (=> b!7886257 (=> (not res!3130768) (not e!4656186))))

(assert (=> b!7886257 (= res!3130768 call!731527)))

(assert (=> b!7886257 (= e!4656180 e!4656186)))

(declare-fun bm!731522 () Bool)

(assert (=> bm!731522 (= call!731525 call!731526)))

(declare-fun b!7886258 () Bool)

(assert (=> b!7886258 (= e!4656186 call!731525)))

(declare-fun b!7886259 () Bool)

(assert (=> b!7886259 (= e!4656183 call!731527)))

(assert (= (and d!2356491 (not res!3130765)) b!7886253))

(assert (= (and b!7886253 c!1447720) b!7886256))

(assert (= (and b!7886253 (not c!1447720)) b!7886251))

(assert (= (and b!7886256 res!3130766) b!7886255))

(assert (= (and b!7886251 c!1447721) b!7886257))

(assert (= (and b!7886251 (not c!1447721)) b!7886254))

(assert (= (and b!7886257 res!3130768) b!7886258))

(assert (= (and b!7886254 (not res!3130767)) b!7886252))

(assert (= (and b!7886252 res!3130769) b!7886259))

(assert (= (or b!7886258 b!7886252) bm!731522))

(assert (= (or b!7886257 b!7886259) bm!731521))

(assert (= (or b!7886255 bm!731522) bm!731520))

(declare-fun m!8269224 () Bool)

(assert (=> bm!731520 m!8269224))

(declare-fun m!8269226 () Bool)

(assert (=> bm!731521 m!8269226))

(declare-fun m!8269228 () Bool)

(assert (=> b!7886256 m!8269228))

(assert (=> start!744394 d!2356491))

(declare-fun d!2356495 () Bool)

(declare-fun e!4656202 () Bool)

(assert (=> d!2356495 e!4656202))

(declare-fun res!3130783 () Bool)

(assert (=> d!2356495 (=> (not res!3130783) (not e!4656202))))

(declare-fun lt!2681374 () List!74058)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15688 (List!74058) (InoxSet C!42728))

(assert (=> d!2356495 (= res!3130783 (= (content!15688 lt!2681374) ((_ map or) (content!15688 (_1!38327 cut!3)) (content!15688 (_2!38327 cut!3)))))))

(declare-fun e!4656203 () List!74058)

(assert (=> d!2356495 (= lt!2681374 e!4656203)))

(declare-fun c!1447728 () Bool)

(assert (=> d!2356495 (= c!1447728 ((_ is Nil!73934) (_1!38327 cut!3)))))

(assert (=> d!2356495 (= (++!18109 (_1!38327 cut!3) (_2!38327 cut!3)) lt!2681374)))

(declare-fun b!7886286 () Bool)

(assert (=> b!7886286 (= e!4656203 (Cons!73934 (h!80382 (_1!38327 cut!3)) (++!18109 (t!388793 (_1!38327 cut!3)) (_2!38327 cut!3))))))

(declare-fun b!7886288 () Bool)

(assert (=> b!7886288 (= e!4656202 (or (not (= (_2!38327 cut!3) Nil!73934)) (= lt!2681374 (_1!38327 cut!3))))))

(declare-fun b!7886285 () Bool)

(assert (=> b!7886285 (= e!4656203 (_2!38327 cut!3))))

(declare-fun b!7886287 () Bool)

(declare-fun res!3130784 () Bool)

(assert (=> b!7886287 (=> (not res!3130784) (not e!4656202))))

(declare-fun size!42841 (List!74058) Int)

(assert (=> b!7886287 (= res!3130784 (= (size!42841 lt!2681374) (+ (size!42841 (_1!38327 cut!3)) (size!42841 (_2!38327 cut!3)))))))

(assert (= (and d!2356495 c!1447728) b!7886285))

(assert (= (and d!2356495 (not c!1447728)) b!7886286))

(assert (= (and d!2356495 res!3130783) b!7886287))

(assert (= (and b!7886287 res!3130784) b!7886288))

(declare-fun m!8269236 () Bool)

(assert (=> d!2356495 m!8269236))

(declare-fun m!8269238 () Bool)

(assert (=> d!2356495 m!8269238))

(declare-fun m!8269240 () Bool)

(assert (=> d!2356495 m!8269240))

(declare-fun m!8269242 () Bool)

(assert (=> b!7886286 m!8269242))

(declare-fun m!8269244 () Bool)

(assert (=> b!7886287 m!8269244))

(declare-fun m!8269246 () Bool)

(assert (=> b!7886287 m!8269246))

(declare-fun m!8269248 () Bool)

(assert (=> b!7886287 m!8269248))

(assert (=> b!7886211 d!2356495))

(declare-fun call!731532 () Bool)

(declare-fun bm!731526 () Bool)

(declare-fun c!1447731 () Bool)

(declare-fun c!1447730 () Bool)

(assert (=> bm!731526 (= call!731532 (validRegex!11611 (ite c!1447730 (reg!21530 (regOne!42914 r!14100)) (ite c!1447731 (regTwo!42915 (regOne!42914 r!14100)) (regOne!42914 (regOne!42914 r!14100))))))))

(declare-fun b!7886293 () Bool)

(declare-fun e!4656208 () Bool)

(declare-fun e!4656206 () Bool)

(assert (=> b!7886293 (= e!4656208 e!4656206)))

(assert (=> b!7886293 (= c!1447731 ((_ is Union!21201) (regOne!42914 r!14100)))))

(declare-fun b!7886294 () Bool)

(declare-fun e!4656207 () Bool)

(declare-fun e!4656209 () Bool)

(assert (=> b!7886294 (= e!4656207 e!4656209)))

(declare-fun res!3130791 () Bool)

(assert (=> b!7886294 (=> (not res!3130791) (not e!4656209))))

(declare-fun call!731531 () Bool)

(assert (=> b!7886294 (= res!3130791 call!731531)))

(declare-fun b!7886295 () Bool)

(declare-fun e!4656211 () Bool)

(assert (=> b!7886295 (= e!4656211 e!4656208)))

(assert (=> b!7886295 (= c!1447730 ((_ is Star!21201) (regOne!42914 r!14100)))))

(declare-fun bm!731527 () Bool)

(declare-fun call!731533 () Bool)

(assert (=> bm!731527 (= call!731533 (validRegex!11611 (ite c!1447731 (regOne!42915 (regOne!42914 r!14100)) (regTwo!42914 (regOne!42914 r!14100)))))))

(declare-fun b!7886296 () Bool)

(declare-fun res!3130789 () Bool)

(assert (=> b!7886296 (=> res!3130789 e!4656207)))

(assert (=> b!7886296 (= res!3130789 (not ((_ is Concat!30046) (regOne!42914 r!14100))))))

(assert (=> b!7886296 (= e!4656206 e!4656207)))

(declare-fun b!7886297 () Bool)

(declare-fun e!4656210 () Bool)

(assert (=> b!7886297 (= e!4656210 call!731532)))

(declare-fun b!7886298 () Bool)

(assert (=> b!7886298 (= e!4656208 e!4656210)))

(declare-fun res!3130788 () Bool)

(assert (=> b!7886298 (= res!3130788 (not (nullable!9455 (reg!21530 (regOne!42914 r!14100)))))))

(assert (=> b!7886298 (=> (not res!3130788) (not e!4656210))))

(declare-fun d!2356499 () Bool)

(declare-fun res!3130787 () Bool)

(assert (=> d!2356499 (=> res!3130787 e!4656211)))

(assert (=> d!2356499 (= res!3130787 ((_ is ElementMatch!21201) (regOne!42914 r!14100)))))

(assert (=> d!2356499 (= (validRegex!11611 (regOne!42914 r!14100)) e!4656211)))

(declare-fun b!7886299 () Bool)

(declare-fun res!3130790 () Bool)

(declare-fun e!4656212 () Bool)

(assert (=> b!7886299 (=> (not res!3130790) (not e!4656212))))

(assert (=> b!7886299 (= res!3130790 call!731533)))

(assert (=> b!7886299 (= e!4656206 e!4656212)))

(declare-fun bm!731528 () Bool)

(assert (=> bm!731528 (= call!731531 call!731532)))

(declare-fun b!7886300 () Bool)

(assert (=> b!7886300 (= e!4656212 call!731531)))

(declare-fun b!7886301 () Bool)

(assert (=> b!7886301 (= e!4656209 call!731533)))

(assert (= (and d!2356499 (not res!3130787)) b!7886295))

(assert (= (and b!7886295 c!1447730) b!7886298))

(assert (= (and b!7886295 (not c!1447730)) b!7886293))

(assert (= (and b!7886298 res!3130788) b!7886297))

(assert (= (and b!7886293 c!1447731) b!7886299))

(assert (= (and b!7886293 (not c!1447731)) b!7886296))

(assert (= (and b!7886299 res!3130790) b!7886300))

(assert (= (and b!7886296 (not res!3130789)) b!7886294))

(assert (= (and b!7886294 res!3130791) b!7886301))

(assert (= (or b!7886300 b!7886294) bm!731528))

(assert (= (or b!7886299 b!7886301) bm!731527))

(assert (= (or b!7886297 bm!731528) bm!731526))

(declare-fun m!8269264 () Bool)

(assert (=> bm!731526 m!8269264))

(declare-fun m!8269266 () Bool)

(assert (=> bm!731527 m!8269266))

(declare-fun m!8269268 () Bool)

(assert (=> b!7886298 m!8269268))

(assert (=> b!7886210 d!2356499))

(declare-fun e!4656224 () Bool)

(assert (=> b!7886209 (= tp!2345997 e!4656224)))

(declare-fun b!7886331 () Bool)

(assert (=> b!7886331 (= e!4656224 tp_is_empty!52801)))

(declare-fun b!7886334 () Bool)

(declare-fun tp!2346027 () Bool)

(declare-fun tp!2346025 () Bool)

(assert (=> b!7886334 (= e!4656224 (and tp!2346027 tp!2346025))))

(declare-fun b!7886332 () Bool)

(declare-fun tp!2346024 () Bool)

(declare-fun tp!2346026 () Bool)

(assert (=> b!7886332 (= e!4656224 (and tp!2346024 tp!2346026))))

(declare-fun b!7886333 () Bool)

(declare-fun tp!2346023 () Bool)

(assert (=> b!7886333 (= e!4656224 tp!2346023)))

(assert (= (and b!7886209 ((_ is ElementMatch!21201) (regOne!42915 r!14100))) b!7886331))

(assert (= (and b!7886209 ((_ is Concat!30046) (regOne!42915 r!14100))) b!7886332))

(assert (= (and b!7886209 ((_ is Star!21201) (regOne!42915 r!14100))) b!7886333))

(assert (= (and b!7886209 ((_ is Union!21201) (regOne!42915 r!14100))) b!7886334))

(declare-fun e!4656225 () Bool)

(assert (=> b!7886209 (= tp!2345998 e!4656225)))

(declare-fun b!7886335 () Bool)

(assert (=> b!7886335 (= e!4656225 tp_is_empty!52801)))

(declare-fun b!7886338 () Bool)

(declare-fun tp!2346032 () Bool)

(declare-fun tp!2346030 () Bool)

(assert (=> b!7886338 (= e!4656225 (and tp!2346032 tp!2346030))))

(declare-fun b!7886336 () Bool)

(declare-fun tp!2346029 () Bool)

(declare-fun tp!2346031 () Bool)

(assert (=> b!7886336 (= e!4656225 (and tp!2346029 tp!2346031))))

(declare-fun b!7886337 () Bool)

(declare-fun tp!2346028 () Bool)

(assert (=> b!7886337 (= e!4656225 tp!2346028)))

(assert (= (and b!7886209 ((_ is ElementMatch!21201) (regTwo!42915 r!14100))) b!7886335))

(assert (= (and b!7886209 ((_ is Concat!30046) (regTwo!42915 r!14100))) b!7886336))

(assert (= (and b!7886209 ((_ is Star!21201) (regTwo!42915 r!14100))) b!7886337))

(assert (= (and b!7886209 ((_ is Union!21201) (regTwo!42915 r!14100))) b!7886338))

(declare-fun e!4656227 () Bool)

(assert (=> b!7886214 (= tp!2346002 e!4656227)))

(declare-fun b!7886343 () Bool)

(assert (=> b!7886343 (= e!4656227 tp_is_empty!52801)))

(declare-fun b!7886346 () Bool)

(declare-fun tp!2346042 () Bool)

(declare-fun tp!2346040 () Bool)

(assert (=> b!7886346 (= e!4656227 (and tp!2346042 tp!2346040))))

(declare-fun b!7886344 () Bool)

(declare-fun tp!2346039 () Bool)

(declare-fun tp!2346041 () Bool)

(assert (=> b!7886344 (= e!4656227 (and tp!2346039 tp!2346041))))

(declare-fun b!7886345 () Bool)

(declare-fun tp!2346038 () Bool)

(assert (=> b!7886345 (= e!4656227 tp!2346038)))

(assert (= (and b!7886214 ((_ is ElementMatch!21201) (reg!21530 r!14100))) b!7886343))

(assert (= (and b!7886214 ((_ is Concat!30046) (reg!21530 r!14100))) b!7886344))

(assert (= (and b!7886214 ((_ is Star!21201) (reg!21530 r!14100))) b!7886345))

(assert (= (and b!7886214 ((_ is Union!21201) (reg!21530 r!14100))) b!7886346))

(declare-fun e!4656228 () Bool)

(assert (=> b!7886213 (= tp!2346000 e!4656228)))

(declare-fun b!7886347 () Bool)

(assert (=> b!7886347 (= e!4656228 tp_is_empty!52801)))

(declare-fun b!7886350 () Bool)

(declare-fun tp!2346047 () Bool)

(declare-fun tp!2346045 () Bool)

(assert (=> b!7886350 (= e!4656228 (and tp!2346047 tp!2346045))))

(declare-fun b!7886348 () Bool)

(declare-fun tp!2346044 () Bool)

(declare-fun tp!2346046 () Bool)

(assert (=> b!7886348 (= e!4656228 (and tp!2346044 tp!2346046))))

(declare-fun b!7886349 () Bool)

(declare-fun tp!2346043 () Bool)

(assert (=> b!7886349 (= e!4656228 tp!2346043)))

(assert (= (and b!7886213 ((_ is ElementMatch!21201) (regOne!42914 r!14100))) b!7886347))

(assert (= (and b!7886213 ((_ is Concat!30046) (regOne!42914 r!14100))) b!7886348))

(assert (= (and b!7886213 ((_ is Star!21201) (regOne!42914 r!14100))) b!7886349))

(assert (= (and b!7886213 ((_ is Union!21201) (regOne!42914 r!14100))) b!7886350))

(declare-fun e!4656230 () Bool)

(assert (=> b!7886213 (= tp!2345999 e!4656230)))

(declare-fun b!7886355 () Bool)

(assert (=> b!7886355 (= e!4656230 tp_is_empty!52801)))

(declare-fun b!7886358 () Bool)

(declare-fun tp!2346057 () Bool)

(declare-fun tp!2346055 () Bool)

(assert (=> b!7886358 (= e!4656230 (and tp!2346057 tp!2346055))))

(declare-fun b!7886356 () Bool)

(declare-fun tp!2346054 () Bool)

(declare-fun tp!2346056 () Bool)

(assert (=> b!7886356 (= e!4656230 (and tp!2346054 tp!2346056))))

(declare-fun b!7886357 () Bool)

(declare-fun tp!2346053 () Bool)

(assert (=> b!7886357 (= e!4656230 tp!2346053)))

(assert (= (and b!7886213 ((_ is ElementMatch!21201) (regTwo!42914 r!14100))) b!7886355))

(assert (= (and b!7886213 ((_ is Concat!30046) (regTwo!42914 r!14100))) b!7886356))

(assert (= (and b!7886213 ((_ is Star!21201) (regTwo!42914 r!14100))) b!7886357))

(assert (= (and b!7886213 ((_ is Union!21201) (regTwo!42914 r!14100))) b!7886358))

(declare-fun b!7886372 () Bool)

(declare-fun e!4656237 () Bool)

(declare-fun tp!2346068 () Bool)

(assert (=> b!7886372 (= e!4656237 (and tp_is_empty!52801 tp!2346068))))

(assert (=> b!7886212 (= tp!2345995 e!4656237)))

(assert (= (and b!7886212 ((_ is Cons!73934) (t!388793 (_2!38327 cut!3)))) b!7886372))

(declare-fun b!7886373 () Bool)

(declare-fun e!4656238 () Bool)

(declare-fun tp!2346069 () Bool)

(assert (=> b!7886373 (= e!4656238 (and tp_is_empty!52801 tp!2346069))))

(assert (=> b!7886206 (= tp!2346001 e!4656238)))

(assert (= (and b!7886206 ((_ is Cons!73934) (t!388793 s!9586))) b!7886373))

(declare-fun b!7886378 () Bool)

(declare-fun e!4656240 () Bool)

(declare-fun tp!2346075 () Bool)

(assert (=> b!7886378 (= e!4656240 (and tp_is_empty!52801 tp!2346075))))

(assert (=> b!7886205 (= tp!2345996 e!4656240)))

(assert (= (and b!7886205 ((_ is Cons!73934) (t!388793 (_1!38327 cut!3)))) b!7886378))

(check-sat (not b!7886348) (not b!7886286) (not b!7886287) (not b!7886356) (not b!7886332) (not b!7886349) (not b!7886372) (not bm!731520) (not bm!731527) (not b!7886334) (not b!7886256) (not b!7886373) (not b!7886346) (not b!7886357) (not bm!731521) (not b!7886336) (not b!7886298) (not bm!731526) (not b!7886344) (not b!7886345) (not b!7886333) tp_is_empty!52801 (not d!2356495) (not b!7886378) (not b!7886338) (not b!7886350) (not b!7886337) (not b!7886358))
(check-sat)
