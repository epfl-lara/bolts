; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292120 () Bool)

(assert start!292120)

(declare-fun b!3060223 () Bool)

(declare-fun res!1256371 () Bool)

(declare-fun e!1916326 () Bool)

(assert (=> b!3060223 (=> res!1256371 e!1916326)))

(declare-datatypes ((C!19156 0))(
  ( (C!19157 (val!11614 Int)) )
))
(declare-datatypes ((Regex!9485 0))(
  ( (ElementMatch!9485 (c!507961 C!19156)) (Concat!14806 (regOne!19482 Regex!9485) (regTwo!19482 Regex!9485)) (EmptyExpr!9485) (Star!9485 (reg!9814 Regex!9485)) (EmptyLang!9485) (Union!9485 (regOne!19483 Regex!9485) (regTwo!19483 Regex!9485)) )
))
(declare-fun r!17423 () Regex!9485)

(declare-datatypes ((List!35350 0))(
  ( (Nil!35226) (Cons!35226 (h!40646 C!19156) (t!234415 List!35350)) )
))
(declare-fun matchR!4367 (Regex!9485 List!35350) Bool)

(assert (=> b!3060223 (= res!1256371 (not (matchR!4367 (regOne!19482 r!17423) Nil!35226)))))

(declare-fun b!3060224 () Bool)

(declare-fun e!1916327 () Bool)

(declare-fun tp!967217 () Bool)

(assert (=> b!3060224 (= e!1916327 tp!967217)))

(declare-fun res!1256374 () Bool)

(declare-fun e!1916325 () Bool)

(assert (=> start!292120 (=> (not res!1256374) (not e!1916325))))

(declare-fun validRegex!4218 (Regex!9485) Bool)

(assert (=> start!292120 (= res!1256374 (validRegex!4218 r!17423))))

(assert (=> start!292120 e!1916325))

(assert (=> start!292120 e!1916327))

(declare-fun e!1916322 () Bool)

(assert (=> start!292120 e!1916322))

(declare-fun b!3060225 () Bool)

(declare-fun e!1916323 () Bool)

(assert (=> b!3060225 (= e!1916325 (not e!1916323))))

(declare-fun res!1256380 () Bool)

(assert (=> b!3060225 (=> res!1256380 e!1916323)))

(declare-fun lt!1049747 () Bool)

(get-info :version)

(assert (=> b!3060225 (= res!1256380 (or lt!1049747 (not ((_ is Concat!14806) r!17423))))))

(declare-fun s!11993 () List!35350)

(declare-fun matchRSpec!1622 (Regex!9485 List!35350) Bool)

(assert (=> b!3060225 (= lt!1049747 (matchRSpec!1622 r!17423 s!11993))))

(assert (=> b!3060225 (= lt!1049747 (matchR!4367 r!17423 s!11993))))

(declare-datatypes ((Unit!49409 0))(
  ( (Unit!49410) )
))
(declare-fun lt!1049745 () Unit!49409)

(declare-fun mainMatchTheorem!1622 (Regex!9485 List!35350) Unit!49409)

(assert (=> b!3060225 (= lt!1049745 (mainMatchTheorem!1622 r!17423 s!11993))))

(declare-fun b!3060226 () Bool)

(declare-fun e!1916324 () Bool)

(assert (=> b!3060226 (= e!1916324 e!1916326)))

(declare-fun res!1256376 () Bool)

(assert (=> b!3060226 (=> res!1256376 e!1916326)))

(declare-fun lt!1049748 () Bool)

(assert (=> b!3060226 (= res!1256376 (not lt!1049748))))

(declare-fun lt!1049744 () Regex!9485)

(assert (=> b!3060226 (= lt!1049748 (matchR!4367 lt!1049744 s!11993))))

(assert (=> b!3060226 (= lt!1049748 (matchR!4367 (regTwo!19482 r!17423) s!11993))))

(declare-fun lt!1049743 () Unit!49409)

(declare-fun lemmaSimplifySound!270 (Regex!9485 List!35350) Unit!49409)

(assert (=> b!3060226 (= lt!1049743 (lemmaSimplifySound!270 (regTwo!19482 r!17423) s!11993))))

(declare-fun b!3060227 () Bool)

(assert (=> b!3060227 (= e!1916326 (validRegex!4218 (regTwo!19482 r!17423)))))

(declare-fun b!3060228 () Bool)

(declare-fun tp_is_empty!16533 () Bool)

(declare-fun tp!967215 () Bool)

(assert (=> b!3060228 (= e!1916322 (and tp_is_empty!16533 tp!967215))))

(declare-fun b!3060229 () Bool)

(declare-fun tp!967212 () Bool)

(declare-fun tp!967213 () Bool)

(assert (=> b!3060229 (= e!1916327 (and tp!967212 tp!967213))))

(declare-fun b!3060230 () Bool)

(assert (=> b!3060230 (= e!1916327 tp_is_empty!16533)))

(declare-fun b!3060231 () Bool)

(declare-fun res!1256378 () Bool)

(assert (=> b!3060231 (=> res!1256378 e!1916324)))

(declare-fun isEmptyLang!536 (Regex!9485) Bool)

(assert (=> b!3060231 (= res!1256378 (isEmptyLang!536 lt!1049744))))

(declare-fun b!3060232 () Bool)

(declare-fun res!1256372 () Bool)

(assert (=> b!3060232 (=> res!1256372 e!1916324)))

(declare-fun lt!1049746 () Regex!9485)

(declare-fun isEmptyExpr!542 (Regex!9485) Bool)

(assert (=> b!3060232 (= res!1256372 (not (isEmptyExpr!542 lt!1049746)))))

(declare-fun b!3060233 () Bool)

(declare-fun tp!967216 () Bool)

(declare-fun tp!967214 () Bool)

(assert (=> b!3060233 (= e!1916327 (and tp!967216 tp!967214))))

(declare-fun b!3060234 () Bool)

(declare-fun res!1256377 () Bool)

(assert (=> b!3060234 (=> res!1256377 e!1916326)))

(declare-fun nullable!3131 (Regex!9485) Bool)

(assert (=> b!3060234 (= res!1256377 (not (nullable!3131 (regOne!19482 r!17423))))))

(declare-fun b!3060235 () Bool)

(declare-fun res!1256375 () Bool)

(assert (=> b!3060235 (=> res!1256375 e!1916326)))

(assert (=> b!3060235 (= res!1256375 (not (validRegex!4218 (regOne!19482 r!17423))))))

(declare-fun b!3060236 () Bool)

(assert (=> b!3060236 (= e!1916323 e!1916324)))

(declare-fun res!1256373 () Bool)

(assert (=> b!3060236 (=> res!1256373 e!1916324)))

(assert (=> b!3060236 (= res!1256373 (isEmptyLang!536 lt!1049746))))

(declare-fun simplify!440 (Regex!9485) Regex!9485)

(assert (=> b!3060236 (= lt!1049744 (simplify!440 (regTwo!19482 r!17423)))))

(assert (=> b!3060236 (= lt!1049746 (simplify!440 (regOne!19482 r!17423)))))

(declare-fun b!3060237 () Bool)

(declare-fun res!1256379 () Bool)

(assert (=> b!3060237 (=> res!1256379 e!1916323)))

(declare-fun isEmpty!19541 (List!35350) Bool)

(assert (=> b!3060237 (= res!1256379 (isEmpty!19541 s!11993))))

(assert (= (and start!292120 res!1256374) b!3060225))

(assert (= (and b!3060225 (not res!1256380)) b!3060237))

(assert (= (and b!3060237 (not res!1256379)) b!3060236))

(assert (= (and b!3060236 (not res!1256373)) b!3060231))

(assert (= (and b!3060231 (not res!1256378)) b!3060232))

(assert (= (and b!3060232 (not res!1256372)) b!3060226))

(assert (= (and b!3060226 (not res!1256376)) b!3060234))

(assert (= (and b!3060234 (not res!1256377)) b!3060223))

(assert (= (and b!3060223 (not res!1256371)) b!3060235))

(assert (= (and b!3060235 (not res!1256375)) b!3060227))

(assert (= (and start!292120 ((_ is ElementMatch!9485) r!17423)) b!3060230))

(assert (= (and start!292120 ((_ is Concat!14806) r!17423)) b!3060229))

(assert (= (and start!292120 ((_ is Star!9485) r!17423)) b!3060224))

(assert (= (and start!292120 ((_ is Union!9485) r!17423)) b!3060233))

(assert (= (and start!292120 ((_ is Cons!35226) s!11993)) b!3060228))

(declare-fun m!3381279 () Bool)

(assert (=> b!3060223 m!3381279))

(declare-fun m!3381281 () Bool)

(assert (=> b!3060234 m!3381281))

(declare-fun m!3381283 () Bool)

(assert (=> b!3060231 m!3381283))

(declare-fun m!3381285 () Bool)

(assert (=> b!3060226 m!3381285))

(declare-fun m!3381287 () Bool)

(assert (=> b!3060226 m!3381287))

(declare-fun m!3381289 () Bool)

(assert (=> b!3060226 m!3381289))

(declare-fun m!3381291 () Bool)

(assert (=> b!3060232 m!3381291))

(declare-fun m!3381293 () Bool)

(assert (=> b!3060227 m!3381293))

(declare-fun m!3381295 () Bool)

(assert (=> b!3060235 m!3381295))

(declare-fun m!3381297 () Bool)

(assert (=> b!3060237 m!3381297))

(declare-fun m!3381299 () Bool)

(assert (=> start!292120 m!3381299))

(declare-fun m!3381301 () Bool)

(assert (=> b!3060236 m!3381301))

(declare-fun m!3381303 () Bool)

(assert (=> b!3060236 m!3381303))

(declare-fun m!3381305 () Bool)

(assert (=> b!3060236 m!3381305))

(declare-fun m!3381307 () Bool)

(assert (=> b!3060225 m!3381307))

(declare-fun m!3381309 () Bool)

(assert (=> b!3060225 m!3381309))

(declare-fun m!3381311 () Bool)

(assert (=> b!3060225 m!3381311))

(check-sat (not b!3060224) (not b!3060229) (not b!3060232) (not start!292120) (not b!3060223) (not b!3060236) (not b!3060237) (not b!3060225) (not b!3060231) (not b!3060227) (not b!3060234) (not b!3060233) (not b!3060226) tp_is_empty!16533 (not b!3060235) (not b!3060228))
(check-sat)
(get-model)

(declare-fun b!3060266 () Bool)

(declare-fun e!1916345 () Bool)

(declare-fun e!1916346 () Bool)

(assert (=> b!3060266 (= e!1916345 e!1916346)))

(declare-fun c!507970 () Bool)

(assert (=> b!3060266 (= c!507970 ((_ is EmptyLang!9485) (regOne!19482 r!17423)))))

(declare-fun b!3060267 () Bool)

(declare-fun e!1916348 () Bool)

(declare-fun e!1916347 () Bool)

(assert (=> b!3060267 (= e!1916348 e!1916347)))

(declare-fun res!1256398 () Bool)

(assert (=> b!3060267 (=> res!1256398 e!1916347)))

(declare-fun call!211599 () Bool)

(assert (=> b!3060267 (= res!1256398 call!211599)))

(declare-fun b!3060268 () Bool)

(declare-fun res!1256403 () Bool)

(declare-fun e!1916342 () Bool)

(assert (=> b!3060268 (=> res!1256403 e!1916342)))

(assert (=> b!3060268 (= res!1256403 (not ((_ is ElementMatch!9485) (regOne!19482 r!17423))))))

(assert (=> b!3060268 (= e!1916346 e!1916342)))

(declare-fun b!3060269 () Bool)

(assert (=> b!3060269 (= e!1916342 e!1916348)))

(declare-fun res!1256402 () Bool)

(assert (=> b!3060269 (=> (not res!1256402) (not e!1916348))))

(declare-fun lt!1049751 () Bool)

(assert (=> b!3060269 (= res!1256402 (not lt!1049751))))

(declare-fun b!3060270 () Bool)

(declare-fun res!1256404 () Bool)

(assert (=> b!3060270 (=> res!1256404 e!1916342)))

(declare-fun e!1916343 () Bool)

(assert (=> b!3060270 (= res!1256404 e!1916343)))

(declare-fun res!1256401 () Bool)

(assert (=> b!3060270 (=> (not res!1256401) (not e!1916343))))

(assert (=> b!3060270 (= res!1256401 lt!1049751)))

(declare-fun b!3060271 () Bool)

(assert (=> b!3060271 (= e!1916345 (= lt!1049751 call!211599))))

(declare-fun b!3060272 () Bool)

(declare-fun res!1256397 () Bool)

(assert (=> b!3060272 (=> (not res!1256397) (not e!1916343))))

(declare-fun tail!5011 (List!35350) List!35350)

(assert (=> b!3060272 (= res!1256397 (isEmpty!19541 (tail!5011 Nil!35226)))))

(declare-fun b!3060273 () Bool)

(declare-fun head!6786 (List!35350) C!19156)

(assert (=> b!3060273 (= e!1916343 (= (head!6786 Nil!35226) (c!507961 (regOne!19482 r!17423))))))

(declare-fun bm!211594 () Bool)

(assert (=> bm!211594 (= call!211599 (isEmpty!19541 Nil!35226))))

(declare-fun d!855162 () Bool)

(assert (=> d!855162 e!1916345))

(declare-fun c!507968 () Bool)

(assert (=> d!855162 (= c!507968 ((_ is EmptyExpr!9485) (regOne!19482 r!17423)))))

(declare-fun e!1916344 () Bool)

(assert (=> d!855162 (= lt!1049751 e!1916344)))

(declare-fun c!507969 () Bool)

(assert (=> d!855162 (= c!507969 (isEmpty!19541 Nil!35226))))

(assert (=> d!855162 (validRegex!4218 (regOne!19482 r!17423))))

(assert (=> d!855162 (= (matchR!4367 (regOne!19482 r!17423) Nil!35226) lt!1049751)))

(declare-fun b!3060274 () Bool)

(assert (=> b!3060274 (= e!1916344 (nullable!3131 (regOne!19482 r!17423)))))

(declare-fun b!3060275 () Bool)

(assert (=> b!3060275 (= e!1916346 (not lt!1049751))))

(declare-fun b!3060276 () Bool)

(declare-fun derivativeStep!2727 (Regex!9485 C!19156) Regex!9485)

(assert (=> b!3060276 (= e!1916344 (matchR!4367 (derivativeStep!2727 (regOne!19482 r!17423) (head!6786 Nil!35226)) (tail!5011 Nil!35226)))))

(declare-fun b!3060277 () Bool)

(declare-fun res!1256399 () Bool)

(assert (=> b!3060277 (=> (not res!1256399) (not e!1916343))))

(assert (=> b!3060277 (= res!1256399 (not call!211599))))

(declare-fun b!3060278 () Bool)

(declare-fun res!1256400 () Bool)

(assert (=> b!3060278 (=> res!1256400 e!1916347)))

(assert (=> b!3060278 (= res!1256400 (not (isEmpty!19541 (tail!5011 Nil!35226))))))

(declare-fun b!3060279 () Bool)

(assert (=> b!3060279 (= e!1916347 (not (= (head!6786 Nil!35226) (c!507961 (regOne!19482 r!17423)))))))

(assert (= (and d!855162 c!507969) b!3060274))

(assert (= (and d!855162 (not c!507969)) b!3060276))

(assert (= (and d!855162 c!507968) b!3060271))

(assert (= (and d!855162 (not c!507968)) b!3060266))

(assert (= (and b!3060266 c!507970) b!3060275))

(assert (= (and b!3060266 (not c!507970)) b!3060268))

(assert (= (and b!3060268 (not res!1256403)) b!3060270))

(assert (= (and b!3060270 res!1256401) b!3060277))

(assert (= (and b!3060277 res!1256399) b!3060272))

(assert (= (and b!3060272 res!1256397) b!3060273))

(assert (= (and b!3060270 (not res!1256404)) b!3060269))

(assert (= (and b!3060269 res!1256402) b!3060267))

(assert (= (and b!3060267 (not res!1256398)) b!3060278))

(assert (= (and b!3060278 (not res!1256400)) b!3060279))

(assert (= (or b!3060271 b!3060267 b!3060277) bm!211594))

(declare-fun m!3381313 () Bool)

(assert (=> bm!211594 m!3381313))

(assert (=> d!855162 m!3381313))

(assert (=> d!855162 m!3381295))

(assert (=> b!3060274 m!3381281))

(declare-fun m!3381315 () Bool)

(assert (=> b!3060273 m!3381315))

(declare-fun m!3381317 () Bool)

(assert (=> b!3060272 m!3381317))

(assert (=> b!3060272 m!3381317))

(declare-fun m!3381319 () Bool)

(assert (=> b!3060272 m!3381319))

(assert (=> b!3060278 m!3381317))

(assert (=> b!3060278 m!3381317))

(assert (=> b!3060278 m!3381319))

(assert (=> b!3060279 m!3381315))

(assert (=> b!3060276 m!3381315))

(assert (=> b!3060276 m!3381315))

(declare-fun m!3381321 () Bool)

(assert (=> b!3060276 m!3381321))

(assert (=> b!3060276 m!3381317))

(assert (=> b!3060276 m!3381321))

(assert (=> b!3060276 m!3381317))

(declare-fun m!3381323 () Bool)

(assert (=> b!3060276 m!3381323))

(assert (=> b!3060223 d!855162))

(declare-fun bm!211604 () Bool)

(declare-fun call!211609 () Bool)

(declare-fun c!507984 () Bool)

(declare-fun c!507985 () Bool)

(assert (=> bm!211604 (= call!211609 (validRegex!4218 (ite c!507984 (reg!9814 r!17423) (ite c!507985 (regOne!19483 r!17423) (regTwo!19482 r!17423)))))))

(declare-fun b!3060340 () Bool)

(declare-fun e!1916385 () Bool)

(declare-fun e!1916390 () Bool)

(assert (=> b!3060340 (= e!1916385 e!1916390)))

(declare-fun res!1256442 () Bool)

(assert (=> b!3060340 (=> (not res!1256442) (not e!1916390))))

(declare-fun call!211611 () Bool)

(assert (=> b!3060340 (= res!1256442 call!211611)))

(declare-fun b!3060341 () Bool)

(declare-fun e!1916388 () Bool)

(assert (=> b!3060341 (= e!1916388 call!211609)))

(declare-fun bm!211605 () Bool)

(assert (=> bm!211605 (= call!211611 (validRegex!4218 (ite c!507985 (regTwo!19483 r!17423) (regOne!19482 r!17423))))))

(declare-fun b!3060342 () Bool)

(declare-fun e!1916389 () Bool)

(declare-fun e!1916384 () Bool)

(assert (=> b!3060342 (= e!1916389 e!1916384)))

(assert (=> b!3060342 (= c!507984 ((_ is Star!9485) r!17423))))

(declare-fun b!3060343 () Bool)

(declare-fun res!1256439 () Bool)

(declare-fun e!1916386 () Bool)

(assert (=> b!3060343 (=> (not res!1256439) (not e!1916386))))

(declare-fun call!211610 () Bool)

(assert (=> b!3060343 (= res!1256439 call!211610)))

(declare-fun e!1916387 () Bool)

(assert (=> b!3060343 (= e!1916387 e!1916386)))

(declare-fun b!3060344 () Bool)

(assert (=> b!3060344 (= e!1916386 call!211611)))

(declare-fun b!3060345 () Bool)

(assert (=> b!3060345 (= e!1916384 e!1916388)))

(declare-fun res!1256440 () Bool)

(assert (=> b!3060345 (= res!1256440 (not (nullable!3131 (reg!9814 r!17423))))))

(assert (=> b!3060345 (=> (not res!1256440) (not e!1916388))))

(declare-fun b!3060346 () Bool)

(declare-fun res!1256443 () Bool)

(assert (=> b!3060346 (=> res!1256443 e!1916385)))

(assert (=> b!3060346 (= res!1256443 (not ((_ is Concat!14806) r!17423)))))

(assert (=> b!3060346 (= e!1916387 e!1916385)))

(declare-fun b!3060347 () Bool)

(assert (=> b!3060347 (= e!1916390 call!211610)))

(declare-fun b!3060348 () Bool)

(assert (=> b!3060348 (= e!1916384 e!1916387)))

(assert (=> b!3060348 (= c!507985 ((_ is Union!9485) r!17423))))

(declare-fun d!855166 () Bool)

(declare-fun res!1256441 () Bool)

(assert (=> d!855166 (=> res!1256441 e!1916389)))

(assert (=> d!855166 (= res!1256441 ((_ is ElementMatch!9485) r!17423))))

(assert (=> d!855166 (= (validRegex!4218 r!17423) e!1916389)))

(declare-fun bm!211606 () Bool)

(assert (=> bm!211606 (= call!211610 call!211609)))

(assert (= (and d!855166 (not res!1256441)) b!3060342))

(assert (= (and b!3060342 c!507984) b!3060345))

(assert (= (and b!3060342 (not c!507984)) b!3060348))

(assert (= (and b!3060345 res!1256440) b!3060341))

(assert (= (and b!3060348 c!507985) b!3060343))

(assert (= (and b!3060348 (not c!507985)) b!3060346))

(assert (= (and b!3060343 res!1256439) b!3060344))

(assert (= (and b!3060346 (not res!1256443)) b!3060340))

(assert (= (and b!3060340 res!1256442) b!3060347))

(assert (= (or b!3060343 b!3060347) bm!211606))

(assert (= (or b!3060344 b!3060340) bm!211605))

(assert (= (or b!3060341 bm!211606) bm!211604))

(declare-fun m!3381333 () Bool)

(assert (=> bm!211604 m!3381333))

(declare-fun m!3381335 () Bool)

(assert (=> bm!211605 m!3381335))

(declare-fun m!3381339 () Bool)

(assert (=> b!3060345 m!3381339))

(assert (=> start!292120 d!855166))

(declare-fun d!855168 () Bool)

(declare-fun nullableFct!890 (Regex!9485) Bool)

(assert (=> d!855168 (= (nullable!3131 (regOne!19482 r!17423)) (nullableFct!890 (regOne!19482 r!17423)))))

(declare-fun bs!532444 () Bool)

(assert (= bs!532444 d!855168))

(declare-fun m!3381343 () Bool)

(assert (=> bs!532444 m!3381343))

(assert (=> b!3060234 d!855168))

(declare-fun bm!211607 () Bool)

(declare-fun call!211612 () Bool)

(declare-fun c!507986 () Bool)

(declare-fun c!507987 () Bool)

(assert (=> bm!211607 (= call!211612 (validRegex!4218 (ite c!507986 (reg!9814 (regOne!19482 r!17423)) (ite c!507987 (regOne!19483 (regOne!19482 r!17423)) (regTwo!19482 (regOne!19482 r!17423))))))))

(declare-fun b!3060349 () Bool)

(declare-fun e!1916392 () Bool)

(declare-fun e!1916397 () Bool)

(assert (=> b!3060349 (= e!1916392 e!1916397)))

(declare-fun res!1256447 () Bool)

(assert (=> b!3060349 (=> (not res!1256447) (not e!1916397))))

(declare-fun call!211614 () Bool)

(assert (=> b!3060349 (= res!1256447 call!211614)))

(declare-fun b!3060350 () Bool)

(declare-fun e!1916395 () Bool)

(assert (=> b!3060350 (= e!1916395 call!211612)))

(declare-fun bm!211608 () Bool)

(assert (=> bm!211608 (= call!211614 (validRegex!4218 (ite c!507987 (regTwo!19483 (regOne!19482 r!17423)) (regOne!19482 (regOne!19482 r!17423)))))))

(declare-fun b!3060351 () Bool)

(declare-fun e!1916396 () Bool)

(declare-fun e!1916391 () Bool)

(assert (=> b!3060351 (= e!1916396 e!1916391)))

(assert (=> b!3060351 (= c!507986 ((_ is Star!9485) (regOne!19482 r!17423)))))

(declare-fun b!3060352 () Bool)

(declare-fun res!1256444 () Bool)

(declare-fun e!1916393 () Bool)

(assert (=> b!3060352 (=> (not res!1256444) (not e!1916393))))

(declare-fun call!211613 () Bool)

(assert (=> b!3060352 (= res!1256444 call!211613)))

(declare-fun e!1916394 () Bool)

(assert (=> b!3060352 (= e!1916394 e!1916393)))

(declare-fun b!3060353 () Bool)

(assert (=> b!3060353 (= e!1916393 call!211614)))

(declare-fun b!3060354 () Bool)

(assert (=> b!3060354 (= e!1916391 e!1916395)))

(declare-fun res!1256445 () Bool)

(assert (=> b!3060354 (= res!1256445 (not (nullable!3131 (reg!9814 (regOne!19482 r!17423)))))))

(assert (=> b!3060354 (=> (not res!1256445) (not e!1916395))))

(declare-fun b!3060355 () Bool)

(declare-fun res!1256448 () Bool)

(assert (=> b!3060355 (=> res!1256448 e!1916392)))

(assert (=> b!3060355 (= res!1256448 (not ((_ is Concat!14806) (regOne!19482 r!17423))))))

(assert (=> b!3060355 (= e!1916394 e!1916392)))

(declare-fun b!3060356 () Bool)

(assert (=> b!3060356 (= e!1916397 call!211613)))

(declare-fun b!3060357 () Bool)

(assert (=> b!3060357 (= e!1916391 e!1916394)))

(assert (=> b!3060357 (= c!507987 ((_ is Union!9485) (regOne!19482 r!17423)))))

(declare-fun d!855174 () Bool)

(declare-fun res!1256446 () Bool)

(assert (=> d!855174 (=> res!1256446 e!1916396)))

(assert (=> d!855174 (= res!1256446 ((_ is ElementMatch!9485) (regOne!19482 r!17423)))))

(assert (=> d!855174 (= (validRegex!4218 (regOne!19482 r!17423)) e!1916396)))

(declare-fun bm!211609 () Bool)

(assert (=> bm!211609 (= call!211613 call!211612)))

(assert (= (and d!855174 (not res!1256446)) b!3060351))

(assert (= (and b!3060351 c!507986) b!3060354))

(assert (= (and b!3060351 (not c!507986)) b!3060357))

(assert (= (and b!3060354 res!1256445) b!3060350))

(assert (= (and b!3060357 c!507987) b!3060352))

(assert (= (and b!3060357 (not c!507987)) b!3060355))

(assert (= (and b!3060352 res!1256444) b!3060353))

(assert (= (and b!3060355 (not res!1256448)) b!3060349))

(assert (= (and b!3060349 res!1256447) b!3060356))

(assert (= (or b!3060352 b!3060356) bm!211609))

(assert (= (or b!3060353 b!3060349) bm!211608))

(assert (= (or b!3060350 bm!211609) bm!211607))

(declare-fun m!3381345 () Bool)

(assert (=> bm!211607 m!3381345))

(declare-fun m!3381347 () Bool)

(assert (=> bm!211608 m!3381347))

(declare-fun m!3381349 () Bool)

(assert (=> b!3060354 m!3381349))

(assert (=> b!3060235 d!855174))

(declare-fun b!3060558 () Bool)

(assert (=> b!3060558 true))

(assert (=> b!3060558 true))

(declare-fun bs!532446 () Bool)

(declare-fun b!3060562 () Bool)

(assert (= bs!532446 (and b!3060562 b!3060558)))

(declare-fun lambda!113868 () Int)

(declare-fun lambda!113867 () Int)

(assert (=> bs!532446 (not (= lambda!113868 lambda!113867))))

(assert (=> b!3060562 true))

(assert (=> b!3060562 true))

(declare-fun b!3060557 () Bool)

(declare-fun e!1916525 () Bool)

(assert (=> b!3060557 (= e!1916525 (= s!11993 (Cons!35226 (c!507961 r!17423) Nil!35226)))))

(declare-fun d!855176 () Bool)

(declare-fun c!508061 () Bool)

(assert (=> d!855176 (= c!508061 ((_ is EmptyExpr!9485) r!17423))))

(declare-fun e!1916526 () Bool)

(assert (=> d!855176 (= (matchRSpec!1622 r!17423 s!11993) e!1916526)))

(declare-fun e!1916527 () Bool)

(declare-fun call!211663 () Bool)

(assert (=> b!3060558 (= e!1916527 call!211663)))

(declare-fun b!3060559 () Bool)

(declare-fun e!1916522 () Bool)

(assert (=> b!3060559 (= e!1916526 e!1916522)))

(declare-fun res!1256510 () Bool)

(assert (=> b!3060559 (= res!1256510 (not ((_ is EmptyLang!9485) r!17423)))))

(assert (=> b!3060559 (=> (not res!1256510) (not e!1916522))))

(declare-fun bm!211657 () Bool)

(declare-fun call!211662 () Bool)

(assert (=> bm!211657 (= call!211662 (isEmpty!19541 s!11993))))

(declare-fun b!3060560 () Bool)

(declare-fun c!508058 () Bool)

(assert (=> b!3060560 (= c!508058 ((_ is ElementMatch!9485) r!17423))))

(assert (=> b!3060560 (= e!1916522 e!1916525)))

(declare-fun b!3060561 () Bool)

(declare-fun e!1916521 () Bool)

(assert (=> b!3060561 (= e!1916521 (matchRSpec!1622 (regTwo!19483 r!17423) s!11993))))

(declare-fun e!1916524 () Bool)

(assert (=> b!3060562 (= e!1916524 call!211663)))

(declare-fun c!508059 () Bool)

(declare-fun bm!211658 () Bool)

(declare-fun Exists!1747 (Int) Bool)

(assert (=> bm!211658 (= call!211663 (Exists!1747 (ite c!508059 lambda!113867 lambda!113868)))))

(declare-fun b!3060563 () Bool)

(declare-fun c!508060 () Bool)

(assert (=> b!3060563 (= c!508060 ((_ is Union!9485) r!17423))))

(declare-fun e!1916523 () Bool)

(assert (=> b!3060563 (= e!1916525 e!1916523)))

(declare-fun b!3060564 () Bool)

(declare-fun res!1256508 () Bool)

(assert (=> b!3060564 (=> res!1256508 e!1916527)))

(assert (=> b!3060564 (= res!1256508 call!211662)))

(assert (=> b!3060564 (= e!1916524 e!1916527)))

(declare-fun b!3060565 () Bool)

(assert (=> b!3060565 (= e!1916523 e!1916524)))

(assert (=> b!3060565 (= c!508059 ((_ is Star!9485) r!17423))))

(declare-fun b!3060566 () Bool)

(assert (=> b!3060566 (= e!1916526 call!211662)))

(declare-fun b!3060567 () Bool)

(assert (=> b!3060567 (= e!1916523 e!1916521)))

(declare-fun res!1256509 () Bool)

(assert (=> b!3060567 (= res!1256509 (matchRSpec!1622 (regOne!19483 r!17423) s!11993))))

(assert (=> b!3060567 (=> res!1256509 e!1916521)))

(assert (= (and d!855176 c!508061) b!3060566))

(assert (= (and d!855176 (not c!508061)) b!3060559))

(assert (= (and b!3060559 res!1256510) b!3060560))

(assert (= (and b!3060560 c!508058) b!3060557))

(assert (= (and b!3060560 (not c!508058)) b!3060563))

(assert (= (and b!3060563 c!508060) b!3060567))

(assert (= (and b!3060563 (not c!508060)) b!3060565))

(assert (= (and b!3060567 (not res!1256509)) b!3060561))

(assert (= (and b!3060565 c!508059) b!3060564))

(assert (= (and b!3060565 (not c!508059)) b!3060562))

(assert (= (and b!3060564 (not res!1256508)) b!3060558))

(assert (= (or b!3060558 b!3060562) bm!211658))

(assert (= (or b!3060566 b!3060564) bm!211657))

(assert (=> bm!211657 m!3381297))

(declare-fun m!3381405 () Bool)

(assert (=> b!3060561 m!3381405))

(declare-fun m!3381407 () Bool)

(assert (=> bm!211658 m!3381407))

(declare-fun m!3381409 () Bool)

(assert (=> b!3060567 m!3381409))

(assert (=> b!3060225 d!855176))

(declare-fun b!3060572 () Bool)

(declare-fun e!1916531 () Bool)

(declare-fun e!1916532 () Bool)

(assert (=> b!3060572 (= e!1916531 e!1916532)))

(declare-fun c!508064 () Bool)

(assert (=> b!3060572 (= c!508064 ((_ is EmptyLang!9485) r!17423))))

(declare-fun b!3060573 () Bool)

(declare-fun e!1916534 () Bool)

(declare-fun e!1916533 () Bool)

(assert (=> b!3060573 (= e!1916534 e!1916533)))

(declare-fun res!1256512 () Bool)

(assert (=> b!3060573 (=> res!1256512 e!1916533)))

(declare-fun call!211664 () Bool)

(assert (=> b!3060573 (= res!1256512 call!211664)))

(declare-fun b!3060574 () Bool)

(declare-fun res!1256517 () Bool)

(declare-fun e!1916528 () Bool)

(assert (=> b!3060574 (=> res!1256517 e!1916528)))

(assert (=> b!3060574 (= res!1256517 (not ((_ is ElementMatch!9485) r!17423)))))

(assert (=> b!3060574 (= e!1916532 e!1916528)))

(declare-fun b!3060575 () Bool)

(assert (=> b!3060575 (= e!1916528 e!1916534)))

(declare-fun res!1256516 () Bool)

(assert (=> b!3060575 (=> (not res!1256516) (not e!1916534))))

(declare-fun lt!1049779 () Bool)

(assert (=> b!3060575 (= res!1256516 (not lt!1049779))))

(declare-fun b!3060576 () Bool)

(declare-fun res!1256518 () Bool)

(assert (=> b!3060576 (=> res!1256518 e!1916528)))

(declare-fun e!1916529 () Bool)

(assert (=> b!3060576 (= res!1256518 e!1916529)))

(declare-fun res!1256515 () Bool)

(assert (=> b!3060576 (=> (not res!1256515) (not e!1916529))))

(assert (=> b!3060576 (= res!1256515 lt!1049779)))

(declare-fun b!3060577 () Bool)

(assert (=> b!3060577 (= e!1916531 (= lt!1049779 call!211664))))

(declare-fun b!3060578 () Bool)

(declare-fun res!1256511 () Bool)

(assert (=> b!3060578 (=> (not res!1256511) (not e!1916529))))

(assert (=> b!3060578 (= res!1256511 (isEmpty!19541 (tail!5011 s!11993)))))

(declare-fun b!3060579 () Bool)

(assert (=> b!3060579 (= e!1916529 (= (head!6786 s!11993) (c!507961 r!17423)))))

(declare-fun bm!211659 () Bool)

(assert (=> bm!211659 (= call!211664 (isEmpty!19541 s!11993))))

(declare-fun d!855196 () Bool)

(assert (=> d!855196 e!1916531))

(declare-fun c!508062 () Bool)

(assert (=> d!855196 (= c!508062 ((_ is EmptyExpr!9485) r!17423))))

(declare-fun e!1916530 () Bool)

(assert (=> d!855196 (= lt!1049779 e!1916530)))

(declare-fun c!508063 () Bool)

(assert (=> d!855196 (= c!508063 (isEmpty!19541 s!11993))))

(assert (=> d!855196 (validRegex!4218 r!17423)))

(assert (=> d!855196 (= (matchR!4367 r!17423 s!11993) lt!1049779)))

(declare-fun b!3060580 () Bool)

(assert (=> b!3060580 (= e!1916530 (nullable!3131 r!17423))))

(declare-fun b!3060581 () Bool)

(assert (=> b!3060581 (= e!1916532 (not lt!1049779))))

(declare-fun b!3060582 () Bool)

(assert (=> b!3060582 (= e!1916530 (matchR!4367 (derivativeStep!2727 r!17423 (head!6786 s!11993)) (tail!5011 s!11993)))))

(declare-fun b!3060583 () Bool)

(declare-fun res!1256513 () Bool)

(assert (=> b!3060583 (=> (not res!1256513) (not e!1916529))))

(assert (=> b!3060583 (= res!1256513 (not call!211664))))

(declare-fun b!3060584 () Bool)

(declare-fun res!1256514 () Bool)

(assert (=> b!3060584 (=> res!1256514 e!1916533)))

(assert (=> b!3060584 (= res!1256514 (not (isEmpty!19541 (tail!5011 s!11993))))))

(declare-fun b!3060585 () Bool)

(assert (=> b!3060585 (= e!1916533 (not (= (head!6786 s!11993) (c!507961 r!17423))))))

(assert (= (and d!855196 c!508063) b!3060580))

(assert (= (and d!855196 (not c!508063)) b!3060582))

(assert (= (and d!855196 c!508062) b!3060577))

(assert (= (and d!855196 (not c!508062)) b!3060572))

(assert (= (and b!3060572 c!508064) b!3060581))

(assert (= (and b!3060572 (not c!508064)) b!3060574))

(assert (= (and b!3060574 (not res!1256517)) b!3060576))

(assert (= (and b!3060576 res!1256515) b!3060583))

(assert (= (and b!3060583 res!1256513) b!3060578))

(assert (= (and b!3060578 res!1256511) b!3060579))

(assert (= (and b!3060576 (not res!1256518)) b!3060575))

(assert (= (and b!3060575 res!1256516) b!3060573))

(assert (= (and b!3060573 (not res!1256512)) b!3060584))

(assert (= (and b!3060584 (not res!1256514)) b!3060585))

(assert (= (or b!3060577 b!3060573 b!3060583) bm!211659))

(assert (=> bm!211659 m!3381297))

(assert (=> d!855196 m!3381297))

(assert (=> d!855196 m!3381299))

(declare-fun m!3381411 () Bool)

(assert (=> b!3060580 m!3381411))

(declare-fun m!3381413 () Bool)

(assert (=> b!3060579 m!3381413))

(declare-fun m!3381415 () Bool)

(assert (=> b!3060578 m!3381415))

(assert (=> b!3060578 m!3381415))

(declare-fun m!3381417 () Bool)

(assert (=> b!3060578 m!3381417))

(assert (=> b!3060584 m!3381415))

(assert (=> b!3060584 m!3381415))

(assert (=> b!3060584 m!3381417))

(assert (=> b!3060585 m!3381413))

(assert (=> b!3060582 m!3381413))

(assert (=> b!3060582 m!3381413))

(declare-fun m!3381419 () Bool)

(assert (=> b!3060582 m!3381419))

(assert (=> b!3060582 m!3381415))

(assert (=> b!3060582 m!3381419))

(assert (=> b!3060582 m!3381415))

(declare-fun m!3381421 () Bool)

(assert (=> b!3060582 m!3381421))

(assert (=> b!3060225 d!855196))

(declare-fun d!855198 () Bool)

(assert (=> d!855198 (= (matchR!4367 r!17423 s!11993) (matchRSpec!1622 r!17423 s!11993))))

(declare-fun lt!1049782 () Unit!49409)

(declare-fun choose!18120 (Regex!9485 List!35350) Unit!49409)

(assert (=> d!855198 (= lt!1049782 (choose!18120 r!17423 s!11993))))

(assert (=> d!855198 (validRegex!4218 r!17423)))

(assert (=> d!855198 (= (mainMatchTheorem!1622 r!17423 s!11993) lt!1049782)))

(declare-fun bs!532447 () Bool)

(assert (= bs!532447 d!855198))

(assert (=> bs!532447 m!3381309))

(assert (=> bs!532447 m!3381307))

(declare-fun m!3381423 () Bool)

(assert (=> bs!532447 m!3381423))

(assert (=> bs!532447 m!3381299))

(assert (=> b!3060225 d!855198))

(declare-fun d!855200 () Bool)

(assert (=> d!855200 (= (isEmptyLang!536 lt!1049746) ((_ is EmptyLang!9485) lt!1049746))))

(assert (=> b!3060236 d!855200))

(declare-fun b!3060661 () Bool)

(declare-fun e!1916585 () Regex!9485)

(assert (=> b!3060661 (= e!1916585 EmptyExpr!9485)))

(declare-fun b!3060662 () Bool)

(declare-fun c!508100 () Bool)

(assert (=> b!3060662 (= c!508100 ((_ is EmptyExpr!9485) (regTwo!19482 r!17423)))))

(declare-fun e!1916581 () Regex!9485)

(declare-fun e!1916578 () Regex!9485)

(assert (=> b!3060662 (= e!1916581 e!1916578)))

(declare-fun b!3060663 () Bool)

(declare-fun e!1916587 () Regex!9485)

(assert (=> b!3060663 (= e!1916587 EmptyLang!9485)))

(declare-fun b!3060664 () Bool)

(declare-fun c!508099 () Bool)

(declare-fun call!211685 () Bool)

(assert (=> b!3060664 (= c!508099 call!211685)))

(declare-fun e!1916584 () Regex!9485)

(assert (=> b!3060664 (= e!1916587 e!1916584)))

(declare-fun b!3060665 () Bool)

(declare-fun c!508094 () Bool)

(assert (=> b!3060665 (= c!508094 ((_ is Union!9485) (regTwo!19482 r!17423)))))

(declare-fun e!1916582 () Regex!9485)

(declare-fun e!1916574 () Regex!9485)

(assert (=> b!3060665 (= e!1916582 e!1916574)))

(declare-fun b!3060666 () Bool)

(assert (=> b!3060666 (= e!1916578 e!1916582)))

(declare-fun c!508092 () Bool)

(assert (=> b!3060666 (= c!508092 ((_ is Star!9485) (regTwo!19482 r!17423)))))

(declare-fun lt!1049796 () Regex!9485)

(declare-fun call!211688 () Bool)

(declare-fun lt!1049799 () Regex!9485)

(declare-fun bm!211680 () Bool)

(declare-fun lt!1049800 () Regex!9485)

(assert (=> bm!211680 (= call!211688 (isEmptyLang!536 (ite c!508092 lt!1049799 (ite c!508094 lt!1049796 lt!1049800))))))

(declare-fun bm!211681 () Bool)

(declare-fun call!211686 () Regex!9485)

(declare-fun call!211687 () Regex!9485)

(assert (=> bm!211681 (= call!211686 call!211687)))

(declare-fun bm!211682 () Bool)

(assert (=> bm!211682 (= call!211687 (simplify!440 (ite c!508092 (reg!9814 (regTwo!19482 r!17423)) (ite c!508094 (regTwo!19483 (regTwo!19482 r!17423)) (regOne!19482 (regTwo!19482 r!17423))))))))

(declare-fun b!3060667 () Bool)

(declare-fun e!1916579 () Regex!9485)

(declare-fun lt!1049795 () Regex!9485)

(assert (=> b!3060667 (= e!1916579 lt!1049795)))

(declare-fun call!211689 () Bool)

(declare-fun bm!211683 () Bool)

(declare-fun lt!1049797 () Regex!9485)

(assert (=> bm!211683 (= call!211689 (isEmptyLang!536 (ite c!508094 lt!1049795 lt!1049797)))))

(declare-fun b!3060668 () Bool)

(declare-fun e!1916586 () Bool)

(declare-fun lt!1049798 () Regex!9485)

(assert (=> b!3060668 (= e!1916586 (= (nullable!3131 lt!1049798) (nullable!3131 (regTwo!19482 r!17423))))))

(declare-fun bm!211684 () Bool)

(declare-fun call!211690 () Regex!9485)

(assert (=> bm!211684 (= call!211690 (simplify!440 (ite c!508094 (regOne!19483 (regTwo!19482 r!17423)) (regTwo!19482 (regTwo!19482 r!17423)))))))

(declare-fun b!3060669 () Bool)

(declare-fun e!1916576 () Regex!9485)

(assert (=> b!3060669 (= e!1916584 e!1916576)))

(declare-fun c!508096 () Bool)

(assert (=> b!3060669 (= c!508096 (isEmptyExpr!542 lt!1049800))))

(declare-fun b!3060670 () Bool)

(declare-fun e!1916577 () Regex!9485)

(assert (=> b!3060670 (= e!1916574 e!1916577)))

(assert (=> b!3060670 (= lt!1049795 call!211690)))

(assert (=> b!3060670 (= lt!1049796 call!211686)))

(declare-fun c!508091 () Bool)

(assert (=> b!3060670 (= c!508091 call!211689)))

(declare-fun b!3060671 () Bool)

(assert (=> b!3060671 (= e!1916581 (regTwo!19482 r!17423))))

(declare-fun b!3060672 () Bool)

(assert (=> b!3060672 (= e!1916576 lt!1049797)))

(declare-fun b!3060673 () Bool)

(assert (=> b!3060673 (= e!1916584 lt!1049800)))

(declare-fun b!3060674 () Bool)

(assert (=> b!3060674 (= e!1916577 lt!1049796)))

(declare-fun d!855202 () Bool)

(assert (=> d!855202 e!1916586))

(declare-fun res!1256540 () Bool)

(assert (=> d!855202 (=> (not res!1256540) (not e!1916586))))

(assert (=> d!855202 (= res!1256540 (validRegex!4218 lt!1049798))))

(declare-fun e!1916575 () Regex!9485)

(assert (=> d!855202 (= lt!1049798 e!1916575)))

(declare-fun c!508093 () Bool)

(assert (=> d!855202 (= c!508093 ((_ is EmptyLang!9485) (regTwo!19482 r!17423)))))

(assert (=> d!855202 (validRegex!4218 (regTwo!19482 r!17423))))

(assert (=> d!855202 (= (simplify!440 (regTwo!19482 r!17423)) lt!1049798)))

(declare-fun b!3060675 () Bool)

(assert (=> b!3060675 (= e!1916574 e!1916587)))

(assert (=> b!3060675 (= lt!1049797 call!211686)))

(assert (=> b!3060675 (= lt!1049800 call!211690)))

(declare-fun res!1256539 () Bool)

(assert (=> b!3060675 (= res!1256539 call!211689)))

(declare-fun e!1916580 () Bool)

(assert (=> b!3060675 (=> res!1256539 e!1916580)))

(declare-fun c!508098 () Bool)

(assert (=> b!3060675 (= c!508098 e!1916580)))

(declare-fun b!3060676 () Bool)

(declare-fun c!508101 () Bool)

(declare-fun e!1916583 () Bool)

(assert (=> b!3060676 (= c!508101 e!1916583)))

(declare-fun res!1256538 () Bool)

(assert (=> b!3060676 (=> res!1256538 e!1916583)))

(assert (=> b!3060676 (= res!1256538 call!211688)))

(assert (=> b!3060676 (= lt!1049799 call!211687)))

(assert (=> b!3060676 (= e!1916582 e!1916585)))

(declare-fun b!3060677 () Bool)

(assert (=> b!3060677 (= e!1916585 (Star!9485 lt!1049799))))

(declare-fun bm!211685 () Bool)

(declare-fun call!211691 () Bool)

(assert (=> bm!211685 (= call!211691 call!211688)))

(declare-fun b!3060678 () Bool)

(assert (=> b!3060678 (= e!1916575 e!1916581)))

(declare-fun c!508095 () Bool)

(assert (=> b!3060678 (= c!508095 ((_ is ElementMatch!9485) (regTwo!19482 r!17423)))))

(declare-fun b!3060679 () Bool)

(assert (=> b!3060679 (= e!1916578 EmptyExpr!9485)))

(declare-fun b!3060680 () Bool)

(assert (=> b!3060680 (= e!1916579 (Union!9485 lt!1049795 lt!1049796))))

(declare-fun bm!211686 () Bool)

(assert (=> bm!211686 (= call!211685 (isEmptyExpr!542 (ite c!508092 lt!1049799 lt!1049797)))))

(declare-fun b!3060681 () Bool)

(assert (=> b!3060681 (= e!1916575 EmptyLang!9485)))

(declare-fun b!3060682 () Bool)

(assert (=> b!3060682 (= e!1916580 call!211691)))

(declare-fun b!3060683 () Bool)

(assert (=> b!3060683 (= e!1916576 (Concat!14806 lt!1049797 lt!1049800))))

(declare-fun b!3060684 () Bool)

(declare-fun c!508097 () Bool)

(assert (=> b!3060684 (= c!508097 call!211691)))

(assert (=> b!3060684 (= e!1916577 e!1916579)))

(declare-fun b!3060685 () Bool)

(assert (=> b!3060685 (= e!1916583 call!211685)))

(assert (= (and d!855202 c!508093) b!3060681))

(assert (= (and d!855202 (not c!508093)) b!3060678))

(assert (= (and b!3060678 c!508095) b!3060671))

(assert (= (and b!3060678 (not c!508095)) b!3060662))

(assert (= (and b!3060662 c!508100) b!3060679))

(assert (= (and b!3060662 (not c!508100)) b!3060666))

(assert (= (and b!3060666 c!508092) b!3060676))

(assert (= (and b!3060666 (not c!508092)) b!3060665))

(assert (= (and b!3060676 (not res!1256538)) b!3060685))

(assert (= (and b!3060676 c!508101) b!3060661))

(assert (= (and b!3060676 (not c!508101)) b!3060677))

(assert (= (and b!3060665 c!508094) b!3060670))

(assert (= (and b!3060665 (not c!508094)) b!3060675))

(assert (= (and b!3060670 c!508091) b!3060674))

(assert (= (and b!3060670 (not c!508091)) b!3060684))

(assert (= (and b!3060684 c!508097) b!3060667))

(assert (= (and b!3060684 (not c!508097)) b!3060680))

(assert (= (and b!3060675 (not res!1256539)) b!3060682))

(assert (= (and b!3060675 c!508098) b!3060663))

(assert (= (and b!3060675 (not c!508098)) b!3060664))

(assert (= (and b!3060664 c!508099) b!3060673))

(assert (= (and b!3060664 (not c!508099)) b!3060669))

(assert (= (and b!3060669 c!508096) b!3060672))

(assert (= (and b!3060669 (not c!508096)) b!3060683))

(assert (= (or b!3060670 b!3060675) bm!211684))

(assert (= (or b!3060670 b!3060675) bm!211681))

(assert (= (or b!3060684 b!3060682) bm!211685))

(assert (= (or b!3060670 b!3060675) bm!211683))

(assert (= (or b!3060685 b!3060664) bm!211686))

(assert (= (or b!3060676 bm!211681) bm!211682))

(assert (= (or b!3060676 bm!211685) bm!211680))

(assert (= (and d!855202 res!1256540) b!3060668))

(declare-fun m!3381431 () Bool)

(assert (=> bm!211683 m!3381431))

(declare-fun m!3381433 () Bool)

(assert (=> d!855202 m!3381433))

(assert (=> d!855202 m!3381293))

(declare-fun m!3381435 () Bool)

(assert (=> b!3060669 m!3381435))

(declare-fun m!3381437 () Bool)

(assert (=> bm!211684 m!3381437))

(declare-fun m!3381439 () Bool)

(assert (=> bm!211682 m!3381439))

(declare-fun m!3381441 () Bool)

(assert (=> b!3060668 m!3381441))

(declare-fun m!3381443 () Bool)

(assert (=> b!3060668 m!3381443))

(declare-fun m!3381445 () Bool)

(assert (=> bm!211680 m!3381445))

(declare-fun m!3381447 () Bool)

(assert (=> bm!211686 m!3381447))

(assert (=> b!3060236 d!855202))

(declare-fun b!3060700 () Bool)

(declare-fun e!1916606 () Regex!9485)

(assert (=> b!3060700 (= e!1916606 EmptyExpr!9485)))

(declare-fun b!3060701 () Bool)

(declare-fun c!508114 () Bool)

(assert (=> b!3060701 (= c!508114 ((_ is EmptyExpr!9485) (regOne!19482 r!17423)))))

(declare-fun e!1916602 () Regex!9485)

(declare-fun e!1916599 () Regex!9485)

(assert (=> b!3060701 (= e!1916602 e!1916599)))

(declare-fun b!3060702 () Bool)

(declare-fun e!1916608 () Regex!9485)

(assert (=> b!3060702 (= e!1916608 EmptyLang!9485)))

(declare-fun b!3060703 () Bool)

(declare-fun c!508113 () Bool)

(declare-fun call!211693 () Bool)

(assert (=> b!3060703 (= c!508113 call!211693)))

(declare-fun e!1916605 () Regex!9485)

(assert (=> b!3060703 (= e!1916608 e!1916605)))

(declare-fun b!3060704 () Bool)

(declare-fun c!508108 () Bool)

(assert (=> b!3060704 (= c!508108 ((_ is Union!9485) (regOne!19482 r!17423)))))

(declare-fun e!1916603 () Regex!9485)

(declare-fun e!1916595 () Regex!9485)

(assert (=> b!3060704 (= e!1916603 e!1916595)))

(declare-fun b!3060705 () Bool)

(assert (=> b!3060705 (= e!1916599 e!1916603)))

(declare-fun c!508106 () Bool)

(assert (=> b!3060705 (= c!508106 ((_ is Star!9485) (regOne!19482 r!17423)))))

(declare-fun bm!211688 () Bool)

(declare-fun lt!1049803 () Regex!9485)

(declare-fun lt!1049807 () Regex!9485)

(declare-fun call!211696 () Bool)

(declare-fun lt!1049806 () Regex!9485)

(assert (=> bm!211688 (= call!211696 (isEmptyLang!536 (ite c!508106 lt!1049806 (ite c!508108 lt!1049803 lt!1049807))))))

(declare-fun bm!211689 () Bool)

(declare-fun call!211694 () Regex!9485)

(declare-fun call!211695 () Regex!9485)

(assert (=> bm!211689 (= call!211694 call!211695)))

(declare-fun bm!211690 () Bool)

(assert (=> bm!211690 (= call!211695 (simplify!440 (ite c!508106 (reg!9814 (regOne!19482 r!17423)) (ite c!508108 (regTwo!19483 (regOne!19482 r!17423)) (regOne!19482 (regOne!19482 r!17423))))))))

(declare-fun b!3060706 () Bool)

(declare-fun e!1916600 () Regex!9485)

(declare-fun lt!1049802 () Regex!9485)

(assert (=> b!3060706 (= e!1916600 lt!1049802)))

(declare-fun call!211697 () Bool)

(declare-fun lt!1049804 () Regex!9485)

(declare-fun bm!211691 () Bool)

(assert (=> bm!211691 (= call!211697 (isEmptyLang!536 (ite c!508108 lt!1049802 lt!1049804)))))

(declare-fun b!3060707 () Bool)

(declare-fun e!1916607 () Bool)

(declare-fun lt!1049805 () Regex!9485)

(assert (=> b!3060707 (= e!1916607 (= (nullable!3131 lt!1049805) (nullable!3131 (regOne!19482 r!17423))))))

(declare-fun bm!211692 () Bool)

(declare-fun call!211698 () Regex!9485)

(assert (=> bm!211692 (= call!211698 (simplify!440 (ite c!508108 (regOne!19483 (regOne!19482 r!17423)) (regTwo!19482 (regOne!19482 r!17423)))))))

(declare-fun b!3060708 () Bool)

(declare-fun e!1916597 () Regex!9485)

(assert (=> b!3060708 (= e!1916605 e!1916597)))

(declare-fun c!508110 () Bool)

(assert (=> b!3060708 (= c!508110 (isEmptyExpr!542 lt!1049807))))

(declare-fun b!3060709 () Bool)

(declare-fun e!1916598 () Regex!9485)

(assert (=> b!3060709 (= e!1916595 e!1916598)))

(assert (=> b!3060709 (= lt!1049802 call!211698)))

(assert (=> b!3060709 (= lt!1049803 call!211694)))

(declare-fun c!508105 () Bool)

(assert (=> b!3060709 (= c!508105 call!211697)))

(declare-fun b!3060710 () Bool)

(assert (=> b!3060710 (= e!1916602 (regOne!19482 r!17423))))

(declare-fun b!3060711 () Bool)

(assert (=> b!3060711 (= e!1916597 lt!1049804)))

(declare-fun b!3060712 () Bool)

(assert (=> b!3060712 (= e!1916605 lt!1049807)))

(declare-fun b!3060713 () Bool)

(assert (=> b!3060713 (= e!1916598 lt!1049803)))

(declare-fun d!855206 () Bool)

(assert (=> d!855206 e!1916607))

(declare-fun res!1256551 () Bool)

(assert (=> d!855206 (=> (not res!1256551) (not e!1916607))))

(assert (=> d!855206 (= res!1256551 (validRegex!4218 lt!1049805))))

(declare-fun e!1916596 () Regex!9485)

(assert (=> d!855206 (= lt!1049805 e!1916596)))

(declare-fun c!508107 () Bool)

(assert (=> d!855206 (= c!508107 ((_ is EmptyLang!9485) (regOne!19482 r!17423)))))

(assert (=> d!855206 (validRegex!4218 (regOne!19482 r!17423))))

(assert (=> d!855206 (= (simplify!440 (regOne!19482 r!17423)) lt!1049805)))

(declare-fun b!3060714 () Bool)

(assert (=> b!3060714 (= e!1916595 e!1916608)))

(assert (=> b!3060714 (= lt!1049804 call!211694)))

(assert (=> b!3060714 (= lt!1049807 call!211698)))

(declare-fun res!1256550 () Bool)

(assert (=> b!3060714 (= res!1256550 call!211697)))

(declare-fun e!1916601 () Bool)

(assert (=> b!3060714 (=> res!1256550 e!1916601)))

(declare-fun c!508112 () Bool)

(assert (=> b!3060714 (= c!508112 e!1916601)))

(declare-fun b!3060715 () Bool)

(declare-fun c!508115 () Bool)

(declare-fun e!1916604 () Bool)

(assert (=> b!3060715 (= c!508115 e!1916604)))

(declare-fun res!1256549 () Bool)

(assert (=> b!3060715 (=> res!1256549 e!1916604)))

(assert (=> b!3060715 (= res!1256549 call!211696)))

(assert (=> b!3060715 (= lt!1049806 call!211695)))

(assert (=> b!3060715 (= e!1916603 e!1916606)))

(declare-fun b!3060716 () Bool)

(assert (=> b!3060716 (= e!1916606 (Star!9485 lt!1049806))))

(declare-fun bm!211693 () Bool)

(declare-fun call!211699 () Bool)

(assert (=> bm!211693 (= call!211699 call!211696)))

(declare-fun b!3060717 () Bool)

(assert (=> b!3060717 (= e!1916596 e!1916602)))

(declare-fun c!508109 () Bool)

(assert (=> b!3060717 (= c!508109 ((_ is ElementMatch!9485) (regOne!19482 r!17423)))))

(declare-fun b!3060718 () Bool)

(assert (=> b!3060718 (= e!1916599 EmptyExpr!9485)))

(declare-fun b!3060719 () Bool)

(assert (=> b!3060719 (= e!1916600 (Union!9485 lt!1049802 lt!1049803))))

(declare-fun bm!211694 () Bool)

(assert (=> bm!211694 (= call!211693 (isEmptyExpr!542 (ite c!508106 lt!1049806 lt!1049804)))))

(declare-fun b!3060720 () Bool)

(assert (=> b!3060720 (= e!1916596 EmptyLang!9485)))

(declare-fun b!3060721 () Bool)

(assert (=> b!3060721 (= e!1916601 call!211699)))

(declare-fun b!3060722 () Bool)

(assert (=> b!3060722 (= e!1916597 (Concat!14806 lt!1049804 lt!1049807))))

(declare-fun b!3060723 () Bool)

(declare-fun c!508111 () Bool)

(assert (=> b!3060723 (= c!508111 call!211699)))

(assert (=> b!3060723 (= e!1916598 e!1916600)))

(declare-fun b!3060724 () Bool)

(assert (=> b!3060724 (= e!1916604 call!211693)))

(assert (= (and d!855206 c!508107) b!3060720))

(assert (= (and d!855206 (not c!508107)) b!3060717))

(assert (= (and b!3060717 c!508109) b!3060710))

(assert (= (and b!3060717 (not c!508109)) b!3060701))

(assert (= (and b!3060701 c!508114) b!3060718))

(assert (= (and b!3060701 (not c!508114)) b!3060705))

(assert (= (and b!3060705 c!508106) b!3060715))

(assert (= (and b!3060705 (not c!508106)) b!3060704))

(assert (= (and b!3060715 (not res!1256549)) b!3060724))

(assert (= (and b!3060715 c!508115) b!3060700))

(assert (= (and b!3060715 (not c!508115)) b!3060716))

(assert (= (and b!3060704 c!508108) b!3060709))

(assert (= (and b!3060704 (not c!508108)) b!3060714))

(assert (= (and b!3060709 c!508105) b!3060713))

(assert (= (and b!3060709 (not c!508105)) b!3060723))

(assert (= (and b!3060723 c!508111) b!3060706))

(assert (= (and b!3060723 (not c!508111)) b!3060719))

(assert (= (and b!3060714 (not res!1256550)) b!3060721))

(assert (= (and b!3060714 c!508112) b!3060702))

(assert (= (and b!3060714 (not c!508112)) b!3060703))

(assert (= (and b!3060703 c!508113) b!3060712))

(assert (= (and b!3060703 (not c!508113)) b!3060708))

(assert (= (and b!3060708 c!508110) b!3060711))

(assert (= (and b!3060708 (not c!508110)) b!3060722))

(assert (= (or b!3060709 b!3060714) bm!211692))

(assert (= (or b!3060709 b!3060714) bm!211689))

(assert (= (or b!3060723 b!3060721) bm!211693))

(assert (= (or b!3060709 b!3060714) bm!211691))

(assert (= (or b!3060724 b!3060703) bm!211694))

(assert (= (or b!3060715 bm!211689) bm!211690))

(assert (= (or b!3060715 bm!211693) bm!211688))

(assert (= (and d!855206 res!1256551) b!3060707))

(declare-fun m!3381461 () Bool)

(assert (=> bm!211691 m!3381461))

(declare-fun m!3381463 () Bool)

(assert (=> d!855206 m!3381463))

(assert (=> d!855206 m!3381295))

(declare-fun m!3381465 () Bool)

(assert (=> b!3060708 m!3381465))

(declare-fun m!3381467 () Bool)

(assert (=> bm!211692 m!3381467))

(declare-fun m!3381469 () Bool)

(assert (=> bm!211690 m!3381469))

(declare-fun m!3381471 () Bool)

(assert (=> b!3060707 m!3381471))

(assert (=> b!3060707 m!3381281))

(declare-fun m!3381473 () Bool)

(assert (=> bm!211688 m!3381473))

(declare-fun m!3381475 () Bool)

(assert (=> bm!211694 m!3381475))

(assert (=> b!3060236 d!855206))

(declare-fun d!855210 () Bool)

(assert (=> d!855210 (= (isEmptyLang!536 lt!1049744) ((_ is EmptyLang!9485) lt!1049744))))

(assert (=> b!3060231 d!855210))

(declare-fun b!3060725 () Bool)

(declare-fun e!1916612 () Bool)

(declare-fun e!1916613 () Bool)

(assert (=> b!3060725 (= e!1916612 e!1916613)))

(declare-fun c!508118 () Bool)

(assert (=> b!3060725 (= c!508118 ((_ is EmptyLang!9485) lt!1049744))))

(declare-fun b!3060726 () Bool)

(declare-fun e!1916615 () Bool)

(declare-fun e!1916614 () Bool)

(assert (=> b!3060726 (= e!1916615 e!1916614)))

(declare-fun res!1256553 () Bool)

(assert (=> b!3060726 (=> res!1256553 e!1916614)))

(declare-fun call!211700 () Bool)

(assert (=> b!3060726 (= res!1256553 call!211700)))

(declare-fun b!3060727 () Bool)

(declare-fun res!1256558 () Bool)

(declare-fun e!1916609 () Bool)

(assert (=> b!3060727 (=> res!1256558 e!1916609)))

(assert (=> b!3060727 (= res!1256558 (not ((_ is ElementMatch!9485) lt!1049744)))))

(assert (=> b!3060727 (= e!1916613 e!1916609)))

(declare-fun b!3060728 () Bool)

(assert (=> b!3060728 (= e!1916609 e!1916615)))

(declare-fun res!1256557 () Bool)

(assert (=> b!3060728 (=> (not res!1256557) (not e!1916615))))

(declare-fun lt!1049808 () Bool)

(assert (=> b!3060728 (= res!1256557 (not lt!1049808))))

(declare-fun b!3060729 () Bool)

(declare-fun res!1256559 () Bool)

(assert (=> b!3060729 (=> res!1256559 e!1916609)))

(declare-fun e!1916610 () Bool)

(assert (=> b!3060729 (= res!1256559 e!1916610)))

(declare-fun res!1256556 () Bool)

(assert (=> b!3060729 (=> (not res!1256556) (not e!1916610))))

(assert (=> b!3060729 (= res!1256556 lt!1049808)))

(declare-fun b!3060730 () Bool)

(assert (=> b!3060730 (= e!1916612 (= lt!1049808 call!211700))))

(declare-fun b!3060731 () Bool)

(declare-fun res!1256552 () Bool)

(assert (=> b!3060731 (=> (not res!1256552) (not e!1916610))))

(assert (=> b!3060731 (= res!1256552 (isEmpty!19541 (tail!5011 s!11993)))))

(declare-fun b!3060732 () Bool)

(assert (=> b!3060732 (= e!1916610 (= (head!6786 s!11993) (c!507961 lt!1049744)))))

(declare-fun bm!211695 () Bool)

(assert (=> bm!211695 (= call!211700 (isEmpty!19541 s!11993))))

(declare-fun d!855212 () Bool)

(assert (=> d!855212 e!1916612))

(declare-fun c!508116 () Bool)

(assert (=> d!855212 (= c!508116 ((_ is EmptyExpr!9485) lt!1049744))))

(declare-fun e!1916611 () Bool)

(assert (=> d!855212 (= lt!1049808 e!1916611)))

(declare-fun c!508117 () Bool)

(assert (=> d!855212 (= c!508117 (isEmpty!19541 s!11993))))

(assert (=> d!855212 (validRegex!4218 lt!1049744)))

(assert (=> d!855212 (= (matchR!4367 lt!1049744 s!11993) lt!1049808)))

(declare-fun b!3060733 () Bool)

(assert (=> b!3060733 (= e!1916611 (nullable!3131 lt!1049744))))

(declare-fun b!3060734 () Bool)

(assert (=> b!3060734 (= e!1916613 (not lt!1049808))))

(declare-fun b!3060735 () Bool)

(assert (=> b!3060735 (= e!1916611 (matchR!4367 (derivativeStep!2727 lt!1049744 (head!6786 s!11993)) (tail!5011 s!11993)))))

(declare-fun b!3060736 () Bool)

(declare-fun res!1256554 () Bool)

(assert (=> b!3060736 (=> (not res!1256554) (not e!1916610))))

(assert (=> b!3060736 (= res!1256554 (not call!211700))))

(declare-fun b!3060737 () Bool)

(declare-fun res!1256555 () Bool)

(assert (=> b!3060737 (=> res!1256555 e!1916614)))

(assert (=> b!3060737 (= res!1256555 (not (isEmpty!19541 (tail!5011 s!11993))))))

(declare-fun b!3060738 () Bool)

(assert (=> b!3060738 (= e!1916614 (not (= (head!6786 s!11993) (c!507961 lt!1049744))))))

(assert (= (and d!855212 c!508117) b!3060733))

(assert (= (and d!855212 (not c!508117)) b!3060735))

(assert (= (and d!855212 c!508116) b!3060730))

(assert (= (and d!855212 (not c!508116)) b!3060725))

(assert (= (and b!3060725 c!508118) b!3060734))

(assert (= (and b!3060725 (not c!508118)) b!3060727))

(assert (= (and b!3060727 (not res!1256558)) b!3060729))

(assert (= (and b!3060729 res!1256556) b!3060736))

(assert (= (and b!3060736 res!1256554) b!3060731))

(assert (= (and b!3060731 res!1256552) b!3060732))

(assert (= (and b!3060729 (not res!1256559)) b!3060728))

(assert (= (and b!3060728 res!1256557) b!3060726))

(assert (= (and b!3060726 (not res!1256553)) b!3060737))

(assert (= (and b!3060737 (not res!1256555)) b!3060738))

(assert (= (or b!3060730 b!3060726 b!3060736) bm!211695))

(assert (=> bm!211695 m!3381297))

(assert (=> d!855212 m!3381297))

(declare-fun m!3381477 () Bool)

(assert (=> d!855212 m!3381477))

(declare-fun m!3381479 () Bool)

(assert (=> b!3060733 m!3381479))

(assert (=> b!3060732 m!3381413))

(assert (=> b!3060731 m!3381415))

(assert (=> b!3060731 m!3381415))

(assert (=> b!3060731 m!3381417))

(assert (=> b!3060737 m!3381415))

(assert (=> b!3060737 m!3381415))

(assert (=> b!3060737 m!3381417))

(assert (=> b!3060738 m!3381413))

(assert (=> b!3060735 m!3381413))

(assert (=> b!3060735 m!3381413))

(declare-fun m!3381481 () Bool)

(assert (=> b!3060735 m!3381481))

(assert (=> b!3060735 m!3381415))

(assert (=> b!3060735 m!3381481))

(assert (=> b!3060735 m!3381415))

(declare-fun m!3381483 () Bool)

(assert (=> b!3060735 m!3381483))

(assert (=> b!3060226 d!855212))

(declare-fun b!3060739 () Bool)

(declare-fun e!1916619 () Bool)

(declare-fun e!1916620 () Bool)

(assert (=> b!3060739 (= e!1916619 e!1916620)))

(declare-fun c!508121 () Bool)

(assert (=> b!3060739 (= c!508121 ((_ is EmptyLang!9485) (regTwo!19482 r!17423)))))

(declare-fun b!3060740 () Bool)

(declare-fun e!1916622 () Bool)

(declare-fun e!1916621 () Bool)

(assert (=> b!3060740 (= e!1916622 e!1916621)))

(declare-fun res!1256561 () Bool)

(assert (=> b!3060740 (=> res!1256561 e!1916621)))

(declare-fun call!211701 () Bool)

(assert (=> b!3060740 (= res!1256561 call!211701)))

(declare-fun b!3060741 () Bool)

(declare-fun res!1256566 () Bool)

(declare-fun e!1916616 () Bool)

(assert (=> b!3060741 (=> res!1256566 e!1916616)))

(assert (=> b!3060741 (= res!1256566 (not ((_ is ElementMatch!9485) (regTwo!19482 r!17423))))))

(assert (=> b!3060741 (= e!1916620 e!1916616)))

(declare-fun b!3060742 () Bool)

(assert (=> b!3060742 (= e!1916616 e!1916622)))

(declare-fun res!1256565 () Bool)

(assert (=> b!3060742 (=> (not res!1256565) (not e!1916622))))

(declare-fun lt!1049809 () Bool)

(assert (=> b!3060742 (= res!1256565 (not lt!1049809))))

(declare-fun b!3060743 () Bool)

(declare-fun res!1256567 () Bool)

(assert (=> b!3060743 (=> res!1256567 e!1916616)))

(declare-fun e!1916617 () Bool)

(assert (=> b!3060743 (= res!1256567 e!1916617)))

(declare-fun res!1256564 () Bool)

(assert (=> b!3060743 (=> (not res!1256564) (not e!1916617))))

(assert (=> b!3060743 (= res!1256564 lt!1049809)))

(declare-fun b!3060744 () Bool)

(assert (=> b!3060744 (= e!1916619 (= lt!1049809 call!211701))))

(declare-fun b!3060745 () Bool)

(declare-fun res!1256560 () Bool)

(assert (=> b!3060745 (=> (not res!1256560) (not e!1916617))))

(assert (=> b!3060745 (= res!1256560 (isEmpty!19541 (tail!5011 s!11993)))))

(declare-fun b!3060746 () Bool)

(assert (=> b!3060746 (= e!1916617 (= (head!6786 s!11993) (c!507961 (regTwo!19482 r!17423))))))

(declare-fun bm!211696 () Bool)

(assert (=> bm!211696 (= call!211701 (isEmpty!19541 s!11993))))

(declare-fun d!855214 () Bool)

(assert (=> d!855214 e!1916619))

(declare-fun c!508119 () Bool)

(assert (=> d!855214 (= c!508119 ((_ is EmptyExpr!9485) (regTwo!19482 r!17423)))))

(declare-fun e!1916618 () Bool)

(assert (=> d!855214 (= lt!1049809 e!1916618)))

(declare-fun c!508120 () Bool)

(assert (=> d!855214 (= c!508120 (isEmpty!19541 s!11993))))

(assert (=> d!855214 (validRegex!4218 (regTwo!19482 r!17423))))

(assert (=> d!855214 (= (matchR!4367 (regTwo!19482 r!17423) s!11993) lt!1049809)))

(declare-fun b!3060747 () Bool)

(assert (=> b!3060747 (= e!1916618 (nullable!3131 (regTwo!19482 r!17423)))))

(declare-fun b!3060748 () Bool)

(assert (=> b!3060748 (= e!1916620 (not lt!1049809))))

(declare-fun b!3060749 () Bool)

(assert (=> b!3060749 (= e!1916618 (matchR!4367 (derivativeStep!2727 (regTwo!19482 r!17423) (head!6786 s!11993)) (tail!5011 s!11993)))))

(declare-fun b!3060750 () Bool)

(declare-fun res!1256562 () Bool)

(assert (=> b!3060750 (=> (not res!1256562) (not e!1916617))))

(assert (=> b!3060750 (= res!1256562 (not call!211701))))

(declare-fun b!3060751 () Bool)

(declare-fun res!1256563 () Bool)

(assert (=> b!3060751 (=> res!1256563 e!1916621)))

(assert (=> b!3060751 (= res!1256563 (not (isEmpty!19541 (tail!5011 s!11993))))))

(declare-fun b!3060752 () Bool)

(assert (=> b!3060752 (= e!1916621 (not (= (head!6786 s!11993) (c!507961 (regTwo!19482 r!17423)))))))

(assert (= (and d!855214 c!508120) b!3060747))

(assert (= (and d!855214 (not c!508120)) b!3060749))

(assert (= (and d!855214 c!508119) b!3060744))

(assert (= (and d!855214 (not c!508119)) b!3060739))

(assert (= (and b!3060739 c!508121) b!3060748))

(assert (= (and b!3060739 (not c!508121)) b!3060741))

(assert (= (and b!3060741 (not res!1256566)) b!3060743))

(assert (= (and b!3060743 res!1256564) b!3060750))

(assert (= (and b!3060750 res!1256562) b!3060745))

(assert (= (and b!3060745 res!1256560) b!3060746))

(assert (= (and b!3060743 (not res!1256567)) b!3060742))

(assert (= (and b!3060742 res!1256565) b!3060740))

(assert (= (and b!3060740 (not res!1256561)) b!3060751))

(assert (= (and b!3060751 (not res!1256563)) b!3060752))

(assert (= (or b!3060744 b!3060740 b!3060750) bm!211696))

(assert (=> bm!211696 m!3381297))

(assert (=> d!855214 m!3381297))

(assert (=> d!855214 m!3381293))

(assert (=> b!3060747 m!3381443))

(assert (=> b!3060746 m!3381413))

(assert (=> b!3060745 m!3381415))

(assert (=> b!3060745 m!3381415))

(assert (=> b!3060745 m!3381417))

(assert (=> b!3060751 m!3381415))

(assert (=> b!3060751 m!3381415))

(assert (=> b!3060751 m!3381417))

(assert (=> b!3060752 m!3381413))

(assert (=> b!3060749 m!3381413))

(assert (=> b!3060749 m!3381413))

(declare-fun m!3381485 () Bool)

(assert (=> b!3060749 m!3381485))

(assert (=> b!3060749 m!3381415))

(assert (=> b!3060749 m!3381485))

(assert (=> b!3060749 m!3381415))

(declare-fun m!3381487 () Bool)

(assert (=> b!3060749 m!3381487))

(assert (=> b!3060226 d!855214))

(declare-fun d!855216 () Bool)

(assert (=> d!855216 (= (matchR!4367 (regTwo!19482 r!17423) s!11993) (matchR!4367 (simplify!440 (regTwo!19482 r!17423)) s!11993))))

(declare-fun lt!1049817 () Unit!49409)

(declare-fun choose!18121 (Regex!9485 List!35350) Unit!49409)

(assert (=> d!855216 (= lt!1049817 (choose!18121 (regTwo!19482 r!17423) s!11993))))

(assert (=> d!855216 (validRegex!4218 (regTwo!19482 r!17423))))

(assert (=> d!855216 (= (lemmaSimplifySound!270 (regTwo!19482 r!17423) s!11993) lt!1049817)))

(declare-fun bs!532450 () Bool)

(assert (= bs!532450 d!855216))

(assert (=> bs!532450 m!3381293))

(assert (=> bs!532450 m!3381303))

(declare-fun m!3381503 () Bool)

(assert (=> bs!532450 m!3381503))

(assert (=> bs!532450 m!3381303))

(declare-fun m!3381505 () Bool)

(assert (=> bs!532450 m!3381505))

(assert (=> bs!532450 m!3381287))

(assert (=> b!3060226 d!855216))

(declare-fun d!855224 () Bool)

(assert (=> d!855224 (= (isEmpty!19541 s!11993) ((_ is Nil!35226) s!11993))))

(assert (=> b!3060237 d!855224))

(declare-fun d!855226 () Bool)

(assert (=> d!855226 (= (isEmptyExpr!542 lt!1049746) ((_ is EmptyExpr!9485) lt!1049746))))

(assert (=> b!3060232 d!855226))

(declare-fun bm!211699 () Bool)

(declare-fun c!508129 () Bool)

(declare-fun c!508128 () Bool)

(declare-fun call!211704 () Bool)

(assert (=> bm!211699 (= call!211704 (validRegex!4218 (ite c!508128 (reg!9814 (regTwo!19482 r!17423)) (ite c!508129 (regOne!19483 (regTwo!19482 r!17423)) (regTwo!19482 (regTwo!19482 r!17423))))))))

(declare-fun b!3060781 () Bool)

(declare-fun e!1916638 () Bool)

(declare-fun e!1916643 () Bool)

(assert (=> b!3060781 (= e!1916638 e!1916643)))

(declare-fun res!1256587 () Bool)

(assert (=> b!3060781 (=> (not res!1256587) (not e!1916643))))

(declare-fun call!211706 () Bool)

(assert (=> b!3060781 (= res!1256587 call!211706)))

(declare-fun b!3060782 () Bool)

(declare-fun e!1916641 () Bool)

(assert (=> b!3060782 (= e!1916641 call!211704)))

(declare-fun bm!211700 () Bool)

(assert (=> bm!211700 (= call!211706 (validRegex!4218 (ite c!508129 (regTwo!19483 (regTwo!19482 r!17423)) (regOne!19482 (regTwo!19482 r!17423)))))))

(declare-fun b!3060783 () Bool)

(declare-fun e!1916642 () Bool)

(declare-fun e!1916637 () Bool)

(assert (=> b!3060783 (= e!1916642 e!1916637)))

(assert (=> b!3060783 (= c!508128 ((_ is Star!9485) (regTwo!19482 r!17423)))))

(declare-fun b!3060784 () Bool)

(declare-fun res!1256584 () Bool)

(declare-fun e!1916639 () Bool)

(assert (=> b!3060784 (=> (not res!1256584) (not e!1916639))))

(declare-fun call!211705 () Bool)

(assert (=> b!3060784 (= res!1256584 call!211705)))

(declare-fun e!1916640 () Bool)

(assert (=> b!3060784 (= e!1916640 e!1916639)))

(declare-fun b!3060785 () Bool)

(assert (=> b!3060785 (= e!1916639 call!211706)))

(declare-fun b!3060786 () Bool)

(assert (=> b!3060786 (= e!1916637 e!1916641)))

(declare-fun res!1256585 () Bool)

(assert (=> b!3060786 (= res!1256585 (not (nullable!3131 (reg!9814 (regTwo!19482 r!17423)))))))

(assert (=> b!3060786 (=> (not res!1256585) (not e!1916641))))

(declare-fun b!3060787 () Bool)

(declare-fun res!1256588 () Bool)

(assert (=> b!3060787 (=> res!1256588 e!1916638)))

(assert (=> b!3060787 (= res!1256588 (not ((_ is Concat!14806) (regTwo!19482 r!17423))))))

(assert (=> b!3060787 (= e!1916640 e!1916638)))

(declare-fun b!3060788 () Bool)

(assert (=> b!3060788 (= e!1916643 call!211705)))

(declare-fun b!3060789 () Bool)

(assert (=> b!3060789 (= e!1916637 e!1916640)))

(assert (=> b!3060789 (= c!508129 ((_ is Union!9485) (regTwo!19482 r!17423)))))

(declare-fun d!855228 () Bool)

(declare-fun res!1256586 () Bool)

(assert (=> d!855228 (=> res!1256586 e!1916642)))

(assert (=> d!855228 (= res!1256586 ((_ is ElementMatch!9485) (regTwo!19482 r!17423)))))

(assert (=> d!855228 (= (validRegex!4218 (regTwo!19482 r!17423)) e!1916642)))

(declare-fun bm!211701 () Bool)

(assert (=> bm!211701 (= call!211705 call!211704)))

(assert (= (and d!855228 (not res!1256586)) b!3060783))

(assert (= (and b!3060783 c!508128) b!3060786))

(assert (= (and b!3060783 (not c!508128)) b!3060789))

(assert (= (and b!3060786 res!1256585) b!3060782))

(assert (= (and b!3060789 c!508129) b!3060784))

(assert (= (and b!3060789 (not c!508129)) b!3060787))

(assert (= (and b!3060784 res!1256584) b!3060785))

(assert (= (and b!3060787 (not res!1256588)) b!3060781))

(assert (= (and b!3060781 res!1256587) b!3060788))

(assert (= (or b!3060784 b!3060788) bm!211701))

(assert (= (or b!3060785 b!3060781) bm!211700))

(assert (= (or b!3060782 bm!211701) bm!211699))

(declare-fun m!3381507 () Bool)

(assert (=> bm!211699 m!3381507))

(declare-fun m!3381509 () Bool)

(assert (=> bm!211700 m!3381509))

(declare-fun m!3381511 () Bool)

(assert (=> b!3060786 m!3381511))

(assert (=> b!3060227 d!855228))

(declare-fun b!3060794 () Bool)

(declare-fun e!1916646 () Bool)

(declare-fun tp!967220 () Bool)

(assert (=> b!3060794 (= e!1916646 (and tp_is_empty!16533 tp!967220))))

(assert (=> b!3060228 (= tp!967215 e!1916646)))

(assert (= (and b!3060228 ((_ is Cons!35226) (t!234415 s!11993))) b!3060794))

(declare-fun b!3060820 () Bool)

(declare-fun e!1916654 () Bool)

(assert (=> b!3060820 (= e!1916654 tp_is_empty!16533)))

(declare-fun b!3060823 () Bool)

(declare-fun tp!967246 () Bool)

(declare-fun tp!967244 () Bool)

(assert (=> b!3060823 (= e!1916654 (and tp!967246 tp!967244))))

(declare-fun b!3060821 () Bool)

(declare-fun tp!967248 () Bool)

(declare-fun tp!967245 () Bool)

(assert (=> b!3060821 (= e!1916654 (and tp!967248 tp!967245))))

(assert (=> b!3060229 (= tp!967212 e!1916654)))

(declare-fun b!3060822 () Bool)

(declare-fun tp!967247 () Bool)

(assert (=> b!3060822 (= e!1916654 tp!967247)))

(assert (= (and b!3060229 ((_ is ElementMatch!9485) (regOne!19482 r!17423))) b!3060820))

(assert (= (and b!3060229 ((_ is Concat!14806) (regOne!19482 r!17423))) b!3060821))

(assert (= (and b!3060229 ((_ is Star!9485) (regOne!19482 r!17423))) b!3060822))

(assert (= (and b!3060229 ((_ is Union!9485) (regOne!19482 r!17423))) b!3060823))

(declare-fun b!3060824 () Bool)

(declare-fun e!1916655 () Bool)

(assert (=> b!3060824 (= e!1916655 tp_is_empty!16533)))

(declare-fun b!3060827 () Bool)

(declare-fun tp!967251 () Bool)

(declare-fun tp!967249 () Bool)

(assert (=> b!3060827 (= e!1916655 (and tp!967251 tp!967249))))

(declare-fun b!3060825 () Bool)

(declare-fun tp!967253 () Bool)

(declare-fun tp!967250 () Bool)

(assert (=> b!3060825 (= e!1916655 (and tp!967253 tp!967250))))

(assert (=> b!3060229 (= tp!967213 e!1916655)))

(declare-fun b!3060826 () Bool)

(declare-fun tp!967252 () Bool)

(assert (=> b!3060826 (= e!1916655 tp!967252)))

(assert (= (and b!3060229 ((_ is ElementMatch!9485) (regTwo!19482 r!17423))) b!3060824))

(assert (= (and b!3060229 ((_ is Concat!14806) (regTwo!19482 r!17423))) b!3060825))

(assert (= (and b!3060229 ((_ is Star!9485) (regTwo!19482 r!17423))) b!3060826))

(assert (= (and b!3060229 ((_ is Union!9485) (regTwo!19482 r!17423))) b!3060827))

(declare-fun b!3060832 () Bool)

(declare-fun e!1916657 () Bool)

(assert (=> b!3060832 (= e!1916657 tp_is_empty!16533)))

(declare-fun b!3060835 () Bool)

(declare-fun tp!967261 () Bool)

(declare-fun tp!967259 () Bool)

(assert (=> b!3060835 (= e!1916657 (and tp!967261 tp!967259))))

(declare-fun b!3060833 () Bool)

(declare-fun tp!967263 () Bool)

(declare-fun tp!967260 () Bool)

(assert (=> b!3060833 (= e!1916657 (and tp!967263 tp!967260))))

(assert (=> b!3060224 (= tp!967217 e!1916657)))

(declare-fun b!3060834 () Bool)

(declare-fun tp!967262 () Bool)

(assert (=> b!3060834 (= e!1916657 tp!967262)))

(assert (= (and b!3060224 ((_ is ElementMatch!9485) (reg!9814 r!17423))) b!3060832))

(assert (= (and b!3060224 ((_ is Concat!14806) (reg!9814 r!17423))) b!3060833))

(assert (= (and b!3060224 ((_ is Star!9485) (reg!9814 r!17423))) b!3060834))

(assert (= (and b!3060224 ((_ is Union!9485) (reg!9814 r!17423))) b!3060835))

(declare-fun b!3060840 () Bool)

(declare-fun e!1916659 () Bool)

(assert (=> b!3060840 (= e!1916659 tp_is_empty!16533)))

(declare-fun b!3060843 () Bool)

(declare-fun tp!967271 () Bool)

(declare-fun tp!967269 () Bool)

(assert (=> b!3060843 (= e!1916659 (and tp!967271 tp!967269))))

(declare-fun b!3060841 () Bool)

(declare-fun tp!967273 () Bool)

(declare-fun tp!967270 () Bool)

(assert (=> b!3060841 (= e!1916659 (and tp!967273 tp!967270))))

(assert (=> b!3060233 (= tp!967216 e!1916659)))

(declare-fun b!3060842 () Bool)

(declare-fun tp!967272 () Bool)

(assert (=> b!3060842 (= e!1916659 tp!967272)))

(assert (= (and b!3060233 ((_ is ElementMatch!9485) (regOne!19483 r!17423))) b!3060840))

(assert (= (and b!3060233 ((_ is Concat!14806) (regOne!19483 r!17423))) b!3060841))

(assert (= (and b!3060233 ((_ is Star!9485) (regOne!19483 r!17423))) b!3060842))

(assert (= (and b!3060233 ((_ is Union!9485) (regOne!19483 r!17423))) b!3060843))

(declare-fun b!3060848 () Bool)

(declare-fun e!1916661 () Bool)

(assert (=> b!3060848 (= e!1916661 tp_is_empty!16533)))

(declare-fun b!3060851 () Bool)

(declare-fun tp!967281 () Bool)

(declare-fun tp!967279 () Bool)

(assert (=> b!3060851 (= e!1916661 (and tp!967281 tp!967279))))

(declare-fun b!3060849 () Bool)

(declare-fun tp!967283 () Bool)

(declare-fun tp!967280 () Bool)

(assert (=> b!3060849 (= e!1916661 (and tp!967283 tp!967280))))

(assert (=> b!3060233 (= tp!967214 e!1916661)))

(declare-fun b!3060850 () Bool)

(declare-fun tp!967282 () Bool)

(assert (=> b!3060850 (= e!1916661 tp!967282)))

(assert (= (and b!3060233 ((_ is ElementMatch!9485) (regTwo!19483 r!17423))) b!3060848))

(assert (= (and b!3060233 ((_ is Concat!14806) (regTwo!19483 r!17423))) b!3060849))

(assert (= (and b!3060233 ((_ is Star!9485) (regTwo!19483 r!17423))) b!3060850))

(assert (= (and b!3060233 ((_ is Union!9485) (regTwo!19483 r!17423))) b!3060851))

(check-sat (not bm!211692) (not bm!211695) (not b!3060849) (not b!3060745) (not b!3060834) tp_is_empty!16533 (not d!855168) (not bm!211658) (not bm!211605) (not bm!211657) (not bm!211594) (not b!3060274) (not bm!211680) (not b!3060833) (not b!3060579) (not b!3060752) (not b!3060273) (not b!3060582) (not b!3060578) (not b!3060851) (not bm!211683) (not b!3060354) (not b!3060585) (not b!3060850) (not bm!211688) (not b!3060826) (not b!3060732) (not bm!211691) (not b!3060823) (not bm!211682) (not b!3060821) (not b!3060794) (not d!855216) (not d!855202) (not b!3060835) (not b!3060751) (not b!3060749) (not d!855198) (not b!3060567) (not b!3060272) (not b!3060707) (not b!3060580) (not bm!211699) (not bm!211696) (not b!3060841) (not b!3060843) (not bm!211607) (not b!3060733) (not bm!211686) (not d!855196) (not b!3060669) (not bm!211700) (not bm!211694) (not bm!211684) (not bm!211608) (not d!855162) (not b!3060668) (not b!3060747) (not d!855214) (not bm!211604) (not d!855206) (not b!3060735) (not b!3060746) (not b!3060842) (not b!3060731) (not b!3060825) (not b!3060276) (not b!3060827) (not b!3060786) (not b!3060345) (not b!3060278) (not bm!211690) (not b!3060708) (not bm!211659) (not b!3060279) (not b!3060738) (not b!3060737) (not b!3060822) (not b!3060561) (not b!3060584) (not d!855212))
(check-sat)
