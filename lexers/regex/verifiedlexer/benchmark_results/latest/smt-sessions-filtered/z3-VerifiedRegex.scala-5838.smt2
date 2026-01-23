; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287120 () Bool)

(assert start!287120)

(declare-fun b!2965514 () Bool)

(declare-fun e!1866327 () Bool)

(declare-datatypes ((C!18640 0))(
  ( (C!18641 (val!11356 Int)) )
))
(declare-datatypes ((Regex!9227 0))(
  ( (ElementMatch!9227 (c!486285 C!18640)) (Concat!14548 (regOne!18966 Regex!9227) (regTwo!18966 Regex!9227)) (EmptyExpr!9227) (Star!9227 (reg!9556 Regex!9227)) (EmptyLang!9227) (Union!9227 (regOne!18967 Regex!9227) (regTwo!18967 Regex!9227)) )
))
(declare-fun lt!1035093 () Regex!9227)

(declare-datatypes ((List!35092 0))(
  ( (Nil!34968) (Cons!34968 (h!40388 C!18640) (t!234157 List!35092)) )
))
(declare-fun s!11993 () List!35092)

(declare-fun matchR!4109 (Regex!9227 List!35092) Bool)

(assert (=> b!2965514 (= e!1866327 (matchR!4109 lt!1035093 s!11993))))

(declare-fun b!2965515 () Bool)

(declare-fun e!1866328 () Bool)

(declare-fun r!17423 () Regex!9227)

(declare-fun validRegex!3960 (Regex!9227) Bool)

(assert (=> b!2965515 (= e!1866328 (validRegex!3960 (regOne!18967 r!17423)))))

(assert (=> b!2965515 (matchR!4109 (regOne!18967 r!17423) s!11993)))

(declare-datatypes ((Unit!48833 0))(
  ( (Unit!48834) )
))
(declare-fun lt!1035096 () Unit!48833)

(declare-fun lemmaSimplifySound!146 (Regex!9227 List!35092) Unit!48833)

(assert (=> b!2965515 (= lt!1035096 (lemmaSimplifySound!146 (regOne!18967 r!17423) s!11993))))

(declare-fun b!2965516 () Bool)

(declare-fun res!1223220 () Bool)

(declare-fun e!1866333 () Bool)

(assert (=> b!2965516 (=> res!1223220 e!1866333)))

(declare-fun lt!1035097 () Regex!9227)

(assert (=> b!2965516 (= res!1223220 (not (matchR!4109 (Union!9227 lt!1035097 lt!1035093) s!11993)))))

(declare-fun b!2965517 () Bool)

(declare-fun e!1866329 () Bool)

(declare-fun tp_is_empty!16017 () Bool)

(declare-fun tp!946041 () Bool)

(assert (=> b!2965517 (= e!1866329 (and tp_is_empty!16017 tp!946041))))

(declare-fun b!2965518 () Bool)

(declare-fun e!1866331 () Bool)

(declare-fun tp!946044 () Bool)

(declare-fun tp!946040 () Bool)

(assert (=> b!2965518 (= e!1866331 (and tp!946044 tp!946040))))

(declare-fun b!2965519 () Bool)

(declare-fun e!1866330 () Bool)

(assert (=> b!2965519 (= e!1866330 e!1866333)))

(declare-fun res!1223215 () Bool)

(assert (=> b!2965519 (=> res!1223215 e!1866333)))

(declare-fun isEmptyLang!343 (Regex!9227) Bool)

(assert (=> b!2965519 (= res!1223215 (isEmptyLang!343 lt!1035097))))

(declare-fun simplify!230 (Regex!9227) Regex!9227)

(assert (=> b!2965519 (= lt!1035093 (simplify!230 (regTwo!18967 r!17423)))))

(assert (=> b!2965519 (= lt!1035097 (simplify!230 (regOne!18967 r!17423)))))

(declare-fun b!2965520 () Bool)

(declare-fun tp!946042 () Bool)

(assert (=> b!2965520 (= e!1866331 tp!946042)))

(declare-fun b!2965521 () Bool)

(declare-fun tp!946043 () Bool)

(declare-fun tp!946045 () Bool)

(assert (=> b!2965521 (= e!1866331 (and tp!946043 tp!946045))))

(declare-fun res!1223214 () Bool)

(declare-fun e!1866332 () Bool)

(assert (=> start!287120 (=> (not res!1223214) (not e!1866332))))

(assert (=> start!287120 (= res!1223214 (validRegex!3960 r!17423))))

(assert (=> start!287120 e!1866332))

(assert (=> start!287120 e!1866331))

(assert (=> start!287120 e!1866329))

(declare-fun b!2965522 () Bool)

(assert (=> b!2965522 (= e!1866332 (not e!1866330))))

(declare-fun res!1223216 () Bool)

(assert (=> b!2965522 (=> res!1223216 e!1866330)))

(declare-fun lt!1035094 () Bool)

(get-info :version)

(assert (=> b!2965522 (= res!1223216 (or lt!1035094 ((_ is Concat!14548) r!17423) (not ((_ is Union!9227) r!17423))))))

(declare-fun matchRSpec!1364 (Regex!9227 List!35092) Bool)

(assert (=> b!2965522 (= lt!1035094 (matchRSpec!1364 r!17423 s!11993))))

(assert (=> b!2965522 (= lt!1035094 (matchR!4109 r!17423 s!11993))))

(declare-fun lt!1035092 () Unit!48833)

(declare-fun mainMatchTheorem!1364 (Regex!9227 List!35092) Unit!48833)

(assert (=> b!2965522 (= lt!1035092 (mainMatchTheorem!1364 r!17423 s!11993))))

(declare-fun b!2965523 () Bool)

(declare-fun res!1223217 () Bool)

(assert (=> b!2965523 (=> res!1223217 e!1866333)))

(assert (=> b!2965523 (= res!1223217 (isEmptyLang!343 lt!1035093))))

(declare-fun b!2965524 () Bool)

(assert (=> b!2965524 (= e!1866333 e!1866328)))

(declare-fun res!1223219 () Bool)

(assert (=> b!2965524 (=> res!1223219 e!1866328)))

(declare-fun lt!1035095 () Bool)

(assert (=> b!2965524 (= res!1223219 (not lt!1035095))))

(assert (=> b!2965524 e!1866327))

(declare-fun res!1223218 () Bool)

(assert (=> b!2965524 (=> res!1223218 e!1866327)))

(assert (=> b!2965524 (= res!1223218 lt!1035095)))

(assert (=> b!2965524 (= lt!1035095 (matchR!4109 lt!1035097 s!11993))))

(declare-fun lt!1035098 () Unit!48833)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!276 (Regex!9227 Regex!9227 List!35092) Unit!48833)

(assert (=> b!2965524 (= lt!1035098 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!276 lt!1035097 lt!1035093 s!11993))))

(declare-fun b!2965525 () Bool)

(assert (=> b!2965525 (= e!1866331 tp_is_empty!16017)))

(assert (= (and start!287120 res!1223214) b!2965522))

(assert (= (and b!2965522 (not res!1223216)) b!2965519))

(assert (= (and b!2965519 (not res!1223215)) b!2965523))

(assert (= (and b!2965523 (not res!1223217)) b!2965516))

(assert (= (and b!2965516 (not res!1223220)) b!2965524))

(assert (= (and b!2965524 (not res!1223218)) b!2965514))

(assert (= (and b!2965524 (not res!1223219)) b!2965515))

(assert (= (and start!287120 ((_ is ElementMatch!9227) r!17423)) b!2965525))

(assert (= (and start!287120 ((_ is Concat!14548) r!17423)) b!2965518))

(assert (= (and start!287120 ((_ is Star!9227) r!17423)) b!2965520))

(assert (= (and start!287120 ((_ is Union!9227) r!17423)) b!2965521))

(assert (= (and start!287120 ((_ is Cons!34968) s!11993)) b!2965517))

(declare-fun m!3336145 () Bool)

(assert (=> b!2965522 m!3336145))

(declare-fun m!3336147 () Bool)

(assert (=> b!2965522 m!3336147))

(declare-fun m!3336149 () Bool)

(assert (=> b!2965522 m!3336149))

(declare-fun m!3336151 () Bool)

(assert (=> b!2965515 m!3336151))

(declare-fun m!3336153 () Bool)

(assert (=> b!2965515 m!3336153))

(declare-fun m!3336155 () Bool)

(assert (=> b!2965515 m!3336155))

(declare-fun m!3336157 () Bool)

(assert (=> b!2965514 m!3336157))

(declare-fun m!3336159 () Bool)

(assert (=> start!287120 m!3336159))

(declare-fun m!3336161 () Bool)

(assert (=> b!2965523 m!3336161))

(declare-fun m!3336163 () Bool)

(assert (=> b!2965524 m!3336163))

(declare-fun m!3336165 () Bool)

(assert (=> b!2965524 m!3336165))

(declare-fun m!3336167 () Bool)

(assert (=> b!2965516 m!3336167))

(declare-fun m!3336169 () Bool)

(assert (=> b!2965519 m!3336169))

(declare-fun m!3336171 () Bool)

(assert (=> b!2965519 m!3336171))

(declare-fun m!3336173 () Bool)

(assert (=> b!2965519 m!3336173))

(check-sat (not b!2965520) (not b!2965521) (not b!2965516) (not b!2965518) (not b!2965524) (not b!2965517) (not b!2965519) (not b!2965514) (not b!2965515) (not start!287120) tp_is_empty!16017 (not b!2965523) (not b!2965522))
(check-sat)
(get-model)

(declare-fun d!842313 () Bool)

(declare-fun res!1223235 () Bool)

(declare-fun e!1866353 () Bool)

(assert (=> d!842313 (=> res!1223235 e!1866353)))

(assert (=> d!842313 (= res!1223235 ((_ is ElementMatch!9227) r!17423))))

(assert (=> d!842313 (= (validRegex!3960 r!17423) e!1866353)))

(declare-fun bm!197016 () Bool)

(declare-fun call!197023 () Bool)

(declare-fun call!197021 () Bool)

(assert (=> bm!197016 (= call!197023 call!197021)))

(declare-fun b!2965544 () Bool)

(declare-fun res!1223234 () Bool)

(declare-fun e!1866349 () Bool)

(assert (=> b!2965544 (=> (not res!1223234) (not e!1866349))))

(assert (=> b!2965544 (= res!1223234 call!197023)))

(declare-fun e!1866348 () Bool)

(assert (=> b!2965544 (= e!1866348 e!1866349)))

(declare-fun c!486291 () Bool)

(declare-fun bm!197017 () Bool)

(declare-fun c!486290 () Bool)

(assert (=> bm!197017 (= call!197021 (validRegex!3960 (ite c!486291 (reg!9556 r!17423) (ite c!486290 (regOne!18967 r!17423) (regTwo!18966 r!17423)))))))

(declare-fun bm!197018 () Bool)

(declare-fun call!197022 () Bool)

(assert (=> bm!197018 (= call!197022 (validRegex!3960 (ite c!486290 (regTwo!18967 r!17423) (regOne!18966 r!17423))))))

(declare-fun b!2965545 () Bool)

(declare-fun res!1223232 () Bool)

(declare-fun e!1866354 () Bool)

(assert (=> b!2965545 (=> res!1223232 e!1866354)))

(assert (=> b!2965545 (= res!1223232 (not ((_ is Concat!14548) r!17423)))))

(assert (=> b!2965545 (= e!1866348 e!1866354)))

(declare-fun b!2965546 () Bool)

(declare-fun e!1866351 () Bool)

(declare-fun e!1866352 () Bool)

(assert (=> b!2965546 (= e!1866351 e!1866352)))

(declare-fun res!1223231 () Bool)

(declare-fun nullable!2947 (Regex!9227) Bool)

(assert (=> b!2965546 (= res!1223231 (not (nullable!2947 (reg!9556 r!17423))))))

(assert (=> b!2965546 (=> (not res!1223231) (not e!1866352))))

(declare-fun b!2965547 () Bool)

(declare-fun e!1866350 () Bool)

(assert (=> b!2965547 (= e!1866350 call!197023)))

(declare-fun b!2965548 () Bool)

(assert (=> b!2965548 (= e!1866354 e!1866350)))

(declare-fun res!1223233 () Bool)

(assert (=> b!2965548 (=> (not res!1223233) (not e!1866350))))

(assert (=> b!2965548 (= res!1223233 call!197022)))

(declare-fun b!2965549 () Bool)

(assert (=> b!2965549 (= e!1866349 call!197022)))

(declare-fun b!2965550 () Bool)

(assert (=> b!2965550 (= e!1866353 e!1866351)))

(assert (=> b!2965550 (= c!486291 ((_ is Star!9227) r!17423))))

(declare-fun b!2965551 () Bool)

(assert (=> b!2965551 (= e!1866352 call!197021)))

(declare-fun b!2965552 () Bool)

(assert (=> b!2965552 (= e!1866351 e!1866348)))

(assert (=> b!2965552 (= c!486290 ((_ is Union!9227) r!17423))))

(assert (= (and d!842313 (not res!1223235)) b!2965550))

(assert (= (and b!2965550 c!486291) b!2965546))

(assert (= (and b!2965550 (not c!486291)) b!2965552))

(assert (= (and b!2965546 res!1223231) b!2965551))

(assert (= (and b!2965552 c!486290) b!2965544))

(assert (= (and b!2965552 (not c!486290)) b!2965545))

(assert (= (and b!2965544 res!1223234) b!2965549))

(assert (= (and b!2965545 (not res!1223232)) b!2965548))

(assert (= (and b!2965548 res!1223233) b!2965547))

(assert (= (or b!2965544 b!2965547) bm!197016))

(assert (= (or b!2965549 b!2965548) bm!197018))

(assert (= (or b!2965551 bm!197016) bm!197017))

(declare-fun m!3336175 () Bool)

(assert (=> bm!197017 m!3336175))

(declare-fun m!3336177 () Bool)

(assert (=> bm!197018 m!3336177))

(declare-fun m!3336179 () Bool)

(assert (=> b!2965546 m!3336179))

(assert (=> start!287120 d!842313))

(declare-fun d!842317 () Bool)

(assert (=> d!842317 (= (isEmptyLang!343 lt!1035093) ((_ is EmptyLang!9227) lt!1035093))))

(assert (=> b!2965523 d!842317))

(declare-fun b!2965835 () Bool)

(assert (=> b!2965835 true))

(assert (=> b!2965835 true))

(declare-fun bs!526405 () Bool)

(declare-fun b!2965840 () Bool)

(assert (= bs!526405 (and b!2965840 b!2965835)))

(declare-fun lambda!110452 () Int)

(declare-fun lambda!110451 () Int)

(assert (=> bs!526405 (not (= lambda!110452 lambda!110451))))

(assert (=> b!2965840 true))

(assert (=> b!2965840 true))

(declare-fun d!842319 () Bool)

(declare-fun c!486381 () Bool)

(assert (=> d!842319 (= c!486381 ((_ is EmptyExpr!9227) r!17423))))

(declare-fun e!1866524 () Bool)

(assert (=> d!842319 (= (matchRSpec!1364 r!17423 s!11993) e!1866524)))

(declare-fun b!2965833 () Bool)

(declare-fun call!197075 () Bool)

(assert (=> b!2965833 (= e!1866524 call!197075)))

(declare-fun b!2965834 () Bool)

(declare-fun e!1866519 () Bool)

(declare-fun e!1866521 () Bool)

(assert (=> b!2965834 (= e!1866519 e!1866521)))

(declare-fun res!1223346 () Bool)

(assert (=> b!2965834 (= res!1223346 (matchRSpec!1364 (regOne!18967 r!17423) s!11993))))

(assert (=> b!2965834 (=> res!1223346 e!1866521)))

(declare-fun e!1866522 () Bool)

(declare-fun call!197074 () Bool)

(assert (=> b!2965835 (= e!1866522 call!197074)))

(declare-fun b!2965836 () Bool)

(declare-fun e!1866525 () Bool)

(assert (=> b!2965836 (= e!1866519 e!1866525)))

(declare-fun c!486380 () Bool)

(assert (=> b!2965836 (= c!486380 ((_ is Star!9227) r!17423))))

(declare-fun b!2965837 () Bool)

(declare-fun c!486379 () Bool)

(assert (=> b!2965837 (= c!486379 ((_ is ElementMatch!9227) r!17423))))

(declare-fun e!1866520 () Bool)

(declare-fun e!1866523 () Bool)

(assert (=> b!2965837 (= e!1866520 e!1866523)))

(declare-fun b!2965838 () Bool)

(declare-fun res!1223345 () Bool)

(assert (=> b!2965838 (=> res!1223345 e!1866522)))

(assert (=> b!2965838 (= res!1223345 call!197075)))

(assert (=> b!2965838 (= e!1866525 e!1866522)))

(declare-fun bm!197069 () Bool)

(declare-fun isEmpty!19228 (List!35092) Bool)

(assert (=> bm!197069 (= call!197075 (isEmpty!19228 s!11993))))

(declare-fun b!2965839 () Bool)

(declare-fun c!486378 () Bool)

(assert (=> b!2965839 (= c!486378 ((_ is Union!9227) r!17423))))

(assert (=> b!2965839 (= e!1866523 e!1866519)))

(declare-fun bm!197070 () Bool)

(declare-fun Exists!1533 (Int) Bool)

(assert (=> bm!197070 (= call!197074 (Exists!1533 (ite c!486380 lambda!110451 lambda!110452)))))

(assert (=> b!2965840 (= e!1866525 call!197074)))

(declare-fun b!2965841 () Bool)

(assert (=> b!2965841 (= e!1866523 (= s!11993 (Cons!34968 (c!486285 r!17423) Nil!34968)))))

(declare-fun b!2965842 () Bool)

(assert (=> b!2965842 (= e!1866524 e!1866520)))

(declare-fun res!1223344 () Bool)

(assert (=> b!2965842 (= res!1223344 (not ((_ is EmptyLang!9227) r!17423)))))

(assert (=> b!2965842 (=> (not res!1223344) (not e!1866520))))

(declare-fun b!2965843 () Bool)

(assert (=> b!2965843 (= e!1866521 (matchRSpec!1364 (regTwo!18967 r!17423) s!11993))))

(assert (= (and d!842319 c!486381) b!2965833))

(assert (= (and d!842319 (not c!486381)) b!2965842))

(assert (= (and b!2965842 res!1223344) b!2965837))

(assert (= (and b!2965837 c!486379) b!2965841))

(assert (= (and b!2965837 (not c!486379)) b!2965839))

(assert (= (and b!2965839 c!486378) b!2965834))

(assert (= (and b!2965839 (not c!486378)) b!2965836))

(assert (= (and b!2965834 (not res!1223346)) b!2965843))

(assert (= (and b!2965836 c!486380) b!2965838))

(assert (= (and b!2965836 (not c!486380)) b!2965840))

(assert (= (and b!2965838 (not res!1223345)) b!2965835))

(assert (= (or b!2965835 b!2965840) bm!197070))

(assert (= (or b!2965833 b!2965838) bm!197069))

(declare-fun m!3336273 () Bool)

(assert (=> b!2965834 m!3336273))

(declare-fun m!3336275 () Bool)

(assert (=> bm!197069 m!3336275))

(declare-fun m!3336277 () Bool)

(assert (=> bm!197070 m!3336277))

(declare-fun m!3336279 () Bool)

(assert (=> b!2965843 m!3336279))

(assert (=> b!2965522 d!842319))

(declare-fun b!2965876 () Bool)

(declare-fun e!1866545 () Bool)

(declare-fun head!6608 (List!35092) C!18640)

(assert (=> b!2965876 (= e!1866545 (= (head!6608 s!11993) (c!486285 r!17423)))))

(declare-fun b!2965877 () Bool)

(declare-fun e!1866546 () Bool)

(declare-fun lt!1035137 () Bool)

(assert (=> b!2965877 (= e!1866546 (not lt!1035137))))

(declare-fun b!2965878 () Bool)

(declare-fun res!1223369 () Bool)

(assert (=> b!2965878 (=> (not res!1223369) (not e!1866545))))

(declare-fun tail!4834 (List!35092) List!35092)

(assert (=> b!2965878 (= res!1223369 (isEmpty!19228 (tail!4834 s!11993)))))

(declare-fun b!2965879 () Bool)

(declare-fun e!1866543 () Bool)

(declare-fun e!1866544 () Bool)

(assert (=> b!2965879 (= e!1866543 e!1866544)))

(declare-fun res!1223368 () Bool)

(assert (=> b!2965879 (=> (not res!1223368) (not e!1866544))))

(assert (=> b!2965879 (= res!1223368 (not lt!1035137))))

(declare-fun b!2965880 () Bool)

(declare-fun e!1866540 () Bool)

(assert (=> b!2965880 (= e!1866540 (not (= (head!6608 s!11993) (c!486285 r!17423))))))

(declare-fun b!2965881 () Bool)

(declare-fun e!1866541 () Bool)

(declare-fun derivativeStep!2549 (Regex!9227 C!18640) Regex!9227)

(assert (=> b!2965881 (= e!1866541 (matchR!4109 (derivativeStep!2549 r!17423 (head!6608 s!11993)) (tail!4834 s!11993)))))

(declare-fun d!842343 () Bool)

(declare-fun e!1866542 () Bool)

(assert (=> d!842343 e!1866542))

(declare-fun c!486389 () Bool)

(assert (=> d!842343 (= c!486389 ((_ is EmptyExpr!9227) r!17423))))

(assert (=> d!842343 (= lt!1035137 e!1866541)))

(declare-fun c!486388 () Bool)

(assert (=> d!842343 (= c!486388 (isEmpty!19228 s!11993))))

(assert (=> d!842343 (validRegex!3960 r!17423)))

(assert (=> d!842343 (= (matchR!4109 r!17423 s!11993) lt!1035137)))

(declare-fun b!2965882 () Bool)

(assert (=> b!2965882 (= e!1866541 (nullable!2947 r!17423))))

(declare-fun b!2965883 () Bool)

(declare-fun res!1223366 () Bool)

(assert (=> b!2965883 (=> res!1223366 e!1866540)))

(assert (=> b!2965883 (= res!1223366 (not (isEmpty!19228 (tail!4834 s!11993))))))

(declare-fun b!2965884 () Bool)

(declare-fun res!1223367 () Bool)

(assert (=> b!2965884 (=> res!1223367 e!1866543)))

(assert (=> b!2965884 (= res!1223367 e!1866545)))

(declare-fun res!1223365 () Bool)

(assert (=> b!2965884 (=> (not res!1223365) (not e!1866545))))

(assert (=> b!2965884 (= res!1223365 lt!1035137)))

(declare-fun b!2965885 () Bool)

(declare-fun res!1223370 () Bool)

(assert (=> b!2965885 (=> (not res!1223370) (not e!1866545))))

(declare-fun call!197078 () Bool)

(assert (=> b!2965885 (= res!1223370 (not call!197078))))

(declare-fun b!2965886 () Bool)

(assert (=> b!2965886 (= e!1866542 e!1866546)))

(declare-fun c!486390 () Bool)

(assert (=> b!2965886 (= c!486390 ((_ is EmptyLang!9227) r!17423))))

(declare-fun b!2965887 () Bool)

(declare-fun res!1223364 () Bool)

(assert (=> b!2965887 (=> res!1223364 e!1866543)))

(assert (=> b!2965887 (= res!1223364 (not ((_ is ElementMatch!9227) r!17423)))))

(assert (=> b!2965887 (= e!1866546 e!1866543)))

(declare-fun b!2965888 () Bool)

(assert (=> b!2965888 (= e!1866542 (= lt!1035137 call!197078))))

(declare-fun b!2965889 () Bool)

(assert (=> b!2965889 (= e!1866544 e!1866540)))

(declare-fun res!1223363 () Bool)

(assert (=> b!2965889 (=> res!1223363 e!1866540)))

(assert (=> b!2965889 (= res!1223363 call!197078)))

(declare-fun bm!197073 () Bool)

(assert (=> bm!197073 (= call!197078 (isEmpty!19228 s!11993))))

(assert (= (and d!842343 c!486388) b!2965882))

(assert (= (and d!842343 (not c!486388)) b!2965881))

(assert (= (and d!842343 c!486389) b!2965888))

(assert (= (and d!842343 (not c!486389)) b!2965886))

(assert (= (and b!2965886 c!486390) b!2965877))

(assert (= (and b!2965886 (not c!486390)) b!2965887))

(assert (= (and b!2965887 (not res!1223364)) b!2965884))

(assert (= (and b!2965884 res!1223365) b!2965885))

(assert (= (and b!2965885 res!1223370) b!2965878))

(assert (= (and b!2965878 res!1223369) b!2965876))

(assert (= (and b!2965884 (not res!1223367)) b!2965879))

(assert (= (and b!2965879 res!1223368) b!2965889))

(assert (= (and b!2965889 (not res!1223363)) b!2965883))

(assert (= (and b!2965883 (not res!1223366)) b!2965880))

(assert (= (or b!2965888 b!2965889 b!2965885) bm!197073))

(assert (=> d!842343 m!3336275))

(assert (=> d!842343 m!3336159))

(assert (=> bm!197073 m!3336275))

(declare-fun m!3336281 () Bool)

(assert (=> b!2965880 m!3336281))

(declare-fun m!3336283 () Bool)

(assert (=> b!2965882 m!3336283))

(assert (=> b!2965881 m!3336281))

(assert (=> b!2965881 m!3336281))

(declare-fun m!3336285 () Bool)

(assert (=> b!2965881 m!3336285))

(declare-fun m!3336287 () Bool)

(assert (=> b!2965881 m!3336287))

(assert (=> b!2965881 m!3336285))

(assert (=> b!2965881 m!3336287))

(declare-fun m!3336289 () Bool)

(assert (=> b!2965881 m!3336289))

(assert (=> b!2965876 m!3336281))

(assert (=> b!2965883 m!3336287))

(assert (=> b!2965883 m!3336287))

(declare-fun m!3336291 () Bool)

(assert (=> b!2965883 m!3336291))

(assert (=> b!2965878 m!3336287))

(assert (=> b!2965878 m!3336287))

(assert (=> b!2965878 m!3336291))

(assert (=> b!2965522 d!842343))

(declare-fun d!842345 () Bool)

(assert (=> d!842345 (= (matchR!4109 r!17423 s!11993) (matchRSpec!1364 r!17423 s!11993))))

(declare-fun lt!1035140 () Unit!48833)

(declare-fun choose!17540 (Regex!9227 List!35092) Unit!48833)

(assert (=> d!842345 (= lt!1035140 (choose!17540 r!17423 s!11993))))

(assert (=> d!842345 (validRegex!3960 r!17423)))

(assert (=> d!842345 (= (mainMatchTheorem!1364 r!17423 s!11993) lt!1035140)))

(declare-fun bs!526406 () Bool)

(assert (= bs!526406 d!842345))

(assert (=> bs!526406 m!3336147))

(assert (=> bs!526406 m!3336145))

(declare-fun m!3336293 () Bool)

(assert (=> bs!526406 m!3336293))

(assert (=> bs!526406 m!3336159))

(assert (=> b!2965522 d!842345))

(declare-fun e!1866552 () Bool)

(declare-fun b!2965890 () Bool)

(assert (=> b!2965890 (= e!1866552 (= (head!6608 s!11993) (c!486285 (Union!9227 lt!1035097 lt!1035093))))))

(declare-fun b!2965891 () Bool)

(declare-fun e!1866553 () Bool)

(declare-fun lt!1035141 () Bool)

(assert (=> b!2965891 (= e!1866553 (not lt!1035141))))

(declare-fun b!2965892 () Bool)

(declare-fun res!1223377 () Bool)

(assert (=> b!2965892 (=> (not res!1223377) (not e!1866552))))

(assert (=> b!2965892 (= res!1223377 (isEmpty!19228 (tail!4834 s!11993)))))

(declare-fun b!2965893 () Bool)

(declare-fun e!1866550 () Bool)

(declare-fun e!1866551 () Bool)

(assert (=> b!2965893 (= e!1866550 e!1866551)))

(declare-fun res!1223376 () Bool)

(assert (=> b!2965893 (=> (not res!1223376) (not e!1866551))))

(assert (=> b!2965893 (= res!1223376 (not lt!1035141))))

(declare-fun b!2965894 () Bool)

(declare-fun e!1866547 () Bool)

(assert (=> b!2965894 (= e!1866547 (not (= (head!6608 s!11993) (c!486285 (Union!9227 lt!1035097 lt!1035093)))))))

(declare-fun e!1866548 () Bool)

(declare-fun b!2965895 () Bool)

(assert (=> b!2965895 (= e!1866548 (matchR!4109 (derivativeStep!2549 (Union!9227 lt!1035097 lt!1035093) (head!6608 s!11993)) (tail!4834 s!11993)))))

(declare-fun d!842347 () Bool)

(declare-fun e!1866549 () Bool)

(assert (=> d!842347 e!1866549))

(declare-fun c!486392 () Bool)

(assert (=> d!842347 (= c!486392 ((_ is EmptyExpr!9227) (Union!9227 lt!1035097 lt!1035093)))))

(assert (=> d!842347 (= lt!1035141 e!1866548)))

(declare-fun c!486391 () Bool)

(assert (=> d!842347 (= c!486391 (isEmpty!19228 s!11993))))

(assert (=> d!842347 (validRegex!3960 (Union!9227 lt!1035097 lt!1035093))))

(assert (=> d!842347 (= (matchR!4109 (Union!9227 lt!1035097 lt!1035093) s!11993) lt!1035141)))

(declare-fun b!2965896 () Bool)

(assert (=> b!2965896 (= e!1866548 (nullable!2947 (Union!9227 lt!1035097 lt!1035093)))))

(declare-fun b!2965897 () Bool)

(declare-fun res!1223374 () Bool)

(assert (=> b!2965897 (=> res!1223374 e!1866547)))

(assert (=> b!2965897 (= res!1223374 (not (isEmpty!19228 (tail!4834 s!11993))))))

(declare-fun b!2965898 () Bool)

(declare-fun res!1223375 () Bool)

(assert (=> b!2965898 (=> res!1223375 e!1866550)))

(assert (=> b!2965898 (= res!1223375 e!1866552)))

(declare-fun res!1223373 () Bool)

(assert (=> b!2965898 (=> (not res!1223373) (not e!1866552))))

(assert (=> b!2965898 (= res!1223373 lt!1035141)))

(declare-fun b!2965899 () Bool)

(declare-fun res!1223378 () Bool)

(assert (=> b!2965899 (=> (not res!1223378) (not e!1866552))))

(declare-fun call!197079 () Bool)

(assert (=> b!2965899 (= res!1223378 (not call!197079))))

(declare-fun b!2965900 () Bool)

(assert (=> b!2965900 (= e!1866549 e!1866553)))

(declare-fun c!486393 () Bool)

(assert (=> b!2965900 (= c!486393 ((_ is EmptyLang!9227) (Union!9227 lt!1035097 lt!1035093)))))

(declare-fun b!2965901 () Bool)

(declare-fun res!1223372 () Bool)

(assert (=> b!2965901 (=> res!1223372 e!1866550)))

(assert (=> b!2965901 (= res!1223372 (not ((_ is ElementMatch!9227) (Union!9227 lt!1035097 lt!1035093))))))

(assert (=> b!2965901 (= e!1866553 e!1866550)))

(declare-fun b!2965902 () Bool)

(assert (=> b!2965902 (= e!1866549 (= lt!1035141 call!197079))))

(declare-fun b!2965903 () Bool)

(assert (=> b!2965903 (= e!1866551 e!1866547)))

(declare-fun res!1223371 () Bool)

(assert (=> b!2965903 (=> res!1223371 e!1866547)))

(assert (=> b!2965903 (= res!1223371 call!197079)))

(declare-fun bm!197074 () Bool)

(assert (=> bm!197074 (= call!197079 (isEmpty!19228 s!11993))))

(assert (= (and d!842347 c!486391) b!2965896))

(assert (= (and d!842347 (not c!486391)) b!2965895))

(assert (= (and d!842347 c!486392) b!2965902))

(assert (= (and d!842347 (not c!486392)) b!2965900))

(assert (= (and b!2965900 c!486393) b!2965891))

(assert (= (and b!2965900 (not c!486393)) b!2965901))

(assert (= (and b!2965901 (not res!1223372)) b!2965898))

(assert (= (and b!2965898 res!1223373) b!2965899))

(assert (= (and b!2965899 res!1223378) b!2965892))

(assert (= (and b!2965892 res!1223377) b!2965890))

(assert (= (and b!2965898 (not res!1223375)) b!2965893))

(assert (= (and b!2965893 res!1223376) b!2965903))

(assert (= (and b!2965903 (not res!1223371)) b!2965897))

(assert (= (and b!2965897 (not res!1223374)) b!2965894))

(assert (= (or b!2965902 b!2965903 b!2965899) bm!197074))

(assert (=> d!842347 m!3336275))

(declare-fun m!3336295 () Bool)

(assert (=> d!842347 m!3336295))

(assert (=> bm!197074 m!3336275))

(assert (=> b!2965894 m!3336281))

(declare-fun m!3336297 () Bool)

(assert (=> b!2965896 m!3336297))

(assert (=> b!2965895 m!3336281))

(assert (=> b!2965895 m!3336281))

(declare-fun m!3336299 () Bool)

(assert (=> b!2965895 m!3336299))

(assert (=> b!2965895 m!3336287))

(assert (=> b!2965895 m!3336299))

(assert (=> b!2965895 m!3336287))

(declare-fun m!3336301 () Bool)

(assert (=> b!2965895 m!3336301))

(assert (=> b!2965890 m!3336281))

(assert (=> b!2965897 m!3336287))

(assert (=> b!2965897 m!3336287))

(assert (=> b!2965897 m!3336291))

(assert (=> b!2965892 m!3336287))

(assert (=> b!2965892 m!3336287))

(assert (=> b!2965892 m!3336291))

(assert (=> b!2965516 d!842347))

(declare-fun d!842349 () Bool)

(declare-fun res!1223383 () Bool)

(declare-fun e!1866559 () Bool)

(assert (=> d!842349 (=> res!1223383 e!1866559)))

(assert (=> d!842349 (= res!1223383 ((_ is ElementMatch!9227) (regOne!18967 r!17423)))))

(assert (=> d!842349 (= (validRegex!3960 (regOne!18967 r!17423)) e!1866559)))

(declare-fun bm!197075 () Bool)

(declare-fun call!197082 () Bool)

(declare-fun call!197080 () Bool)

(assert (=> bm!197075 (= call!197082 call!197080)))

(declare-fun b!2965904 () Bool)

(declare-fun res!1223382 () Bool)

(declare-fun e!1866555 () Bool)

(assert (=> b!2965904 (=> (not res!1223382) (not e!1866555))))

(assert (=> b!2965904 (= res!1223382 call!197082)))

(declare-fun e!1866554 () Bool)

(assert (=> b!2965904 (= e!1866554 e!1866555)))

(declare-fun bm!197076 () Bool)

(declare-fun c!486394 () Bool)

(declare-fun c!486395 () Bool)

(assert (=> bm!197076 (= call!197080 (validRegex!3960 (ite c!486395 (reg!9556 (regOne!18967 r!17423)) (ite c!486394 (regOne!18967 (regOne!18967 r!17423)) (regTwo!18966 (regOne!18967 r!17423))))))))

(declare-fun bm!197077 () Bool)

(declare-fun call!197081 () Bool)

(assert (=> bm!197077 (= call!197081 (validRegex!3960 (ite c!486394 (regTwo!18967 (regOne!18967 r!17423)) (regOne!18966 (regOne!18967 r!17423)))))))

(declare-fun b!2965905 () Bool)

(declare-fun res!1223380 () Bool)

(declare-fun e!1866560 () Bool)

(assert (=> b!2965905 (=> res!1223380 e!1866560)))

(assert (=> b!2965905 (= res!1223380 (not ((_ is Concat!14548) (regOne!18967 r!17423))))))

(assert (=> b!2965905 (= e!1866554 e!1866560)))

(declare-fun b!2965906 () Bool)

(declare-fun e!1866557 () Bool)

(declare-fun e!1866558 () Bool)

(assert (=> b!2965906 (= e!1866557 e!1866558)))

(declare-fun res!1223379 () Bool)

(assert (=> b!2965906 (= res!1223379 (not (nullable!2947 (reg!9556 (regOne!18967 r!17423)))))))

(assert (=> b!2965906 (=> (not res!1223379) (not e!1866558))))

(declare-fun b!2965907 () Bool)

(declare-fun e!1866556 () Bool)

(assert (=> b!2965907 (= e!1866556 call!197082)))

(declare-fun b!2965908 () Bool)

(assert (=> b!2965908 (= e!1866560 e!1866556)))

(declare-fun res!1223381 () Bool)

(assert (=> b!2965908 (=> (not res!1223381) (not e!1866556))))

(assert (=> b!2965908 (= res!1223381 call!197081)))

(declare-fun b!2965909 () Bool)

(assert (=> b!2965909 (= e!1866555 call!197081)))

(declare-fun b!2965910 () Bool)

(assert (=> b!2965910 (= e!1866559 e!1866557)))

(assert (=> b!2965910 (= c!486395 ((_ is Star!9227) (regOne!18967 r!17423)))))

(declare-fun b!2965911 () Bool)

(assert (=> b!2965911 (= e!1866558 call!197080)))

(declare-fun b!2965912 () Bool)

(assert (=> b!2965912 (= e!1866557 e!1866554)))

(assert (=> b!2965912 (= c!486394 ((_ is Union!9227) (regOne!18967 r!17423)))))

(assert (= (and d!842349 (not res!1223383)) b!2965910))

(assert (= (and b!2965910 c!486395) b!2965906))

(assert (= (and b!2965910 (not c!486395)) b!2965912))

(assert (= (and b!2965906 res!1223379) b!2965911))

(assert (= (and b!2965912 c!486394) b!2965904))

(assert (= (and b!2965912 (not c!486394)) b!2965905))

(assert (= (and b!2965904 res!1223382) b!2965909))

(assert (= (and b!2965905 (not res!1223380)) b!2965908))

(assert (= (and b!2965908 res!1223381) b!2965907))

(assert (= (or b!2965904 b!2965907) bm!197075))

(assert (= (or b!2965909 b!2965908) bm!197077))

(assert (= (or b!2965911 bm!197075) bm!197076))

(declare-fun m!3336303 () Bool)

(assert (=> bm!197076 m!3336303))

(declare-fun m!3336305 () Bool)

(assert (=> bm!197077 m!3336305))

(declare-fun m!3336307 () Bool)

(assert (=> b!2965906 m!3336307))

(assert (=> b!2965515 d!842349))

(declare-fun b!2965913 () Bool)

(declare-fun e!1866566 () Bool)

(assert (=> b!2965913 (= e!1866566 (= (head!6608 s!11993) (c!486285 (regOne!18967 r!17423))))))

(declare-fun b!2965914 () Bool)

(declare-fun e!1866567 () Bool)

(declare-fun lt!1035142 () Bool)

(assert (=> b!2965914 (= e!1866567 (not lt!1035142))))

(declare-fun b!2965915 () Bool)

(declare-fun res!1223390 () Bool)

(assert (=> b!2965915 (=> (not res!1223390) (not e!1866566))))

(assert (=> b!2965915 (= res!1223390 (isEmpty!19228 (tail!4834 s!11993)))))

(declare-fun b!2965916 () Bool)

(declare-fun e!1866564 () Bool)

(declare-fun e!1866565 () Bool)

(assert (=> b!2965916 (= e!1866564 e!1866565)))

(declare-fun res!1223389 () Bool)

(assert (=> b!2965916 (=> (not res!1223389) (not e!1866565))))

(assert (=> b!2965916 (= res!1223389 (not lt!1035142))))

(declare-fun b!2965917 () Bool)

(declare-fun e!1866561 () Bool)

(assert (=> b!2965917 (= e!1866561 (not (= (head!6608 s!11993) (c!486285 (regOne!18967 r!17423)))))))

(declare-fun b!2965918 () Bool)

(declare-fun e!1866562 () Bool)

(assert (=> b!2965918 (= e!1866562 (matchR!4109 (derivativeStep!2549 (regOne!18967 r!17423) (head!6608 s!11993)) (tail!4834 s!11993)))))

(declare-fun d!842351 () Bool)

(declare-fun e!1866563 () Bool)

(assert (=> d!842351 e!1866563))

(declare-fun c!486397 () Bool)

(assert (=> d!842351 (= c!486397 ((_ is EmptyExpr!9227) (regOne!18967 r!17423)))))

(assert (=> d!842351 (= lt!1035142 e!1866562)))

(declare-fun c!486396 () Bool)

(assert (=> d!842351 (= c!486396 (isEmpty!19228 s!11993))))

(assert (=> d!842351 (validRegex!3960 (regOne!18967 r!17423))))

(assert (=> d!842351 (= (matchR!4109 (regOne!18967 r!17423) s!11993) lt!1035142)))

(declare-fun b!2965919 () Bool)

(assert (=> b!2965919 (= e!1866562 (nullable!2947 (regOne!18967 r!17423)))))

(declare-fun b!2965920 () Bool)

(declare-fun res!1223387 () Bool)

(assert (=> b!2965920 (=> res!1223387 e!1866561)))

(assert (=> b!2965920 (= res!1223387 (not (isEmpty!19228 (tail!4834 s!11993))))))

(declare-fun b!2965921 () Bool)

(declare-fun res!1223388 () Bool)

(assert (=> b!2965921 (=> res!1223388 e!1866564)))

(assert (=> b!2965921 (= res!1223388 e!1866566)))

(declare-fun res!1223386 () Bool)

(assert (=> b!2965921 (=> (not res!1223386) (not e!1866566))))

(assert (=> b!2965921 (= res!1223386 lt!1035142)))

(declare-fun b!2965922 () Bool)

(declare-fun res!1223391 () Bool)

(assert (=> b!2965922 (=> (not res!1223391) (not e!1866566))))

(declare-fun call!197083 () Bool)

(assert (=> b!2965922 (= res!1223391 (not call!197083))))

(declare-fun b!2965923 () Bool)

(assert (=> b!2965923 (= e!1866563 e!1866567)))

(declare-fun c!486398 () Bool)

(assert (=> b!2965923 (= c!486398 ((_ is EmptyLang!9227) (regOne!18967 r!17423)))))

(declare-fun b!2965924 () Bool)

(declare-fun res!1223385 () Bool)

(assert (=> b!2965924 (=> res!1223385 e!1866564)))

(assert (=> b!2965924 (= res!1223385 (not ((_ is ElementMatch!9227) (regOne!18967 r!17423))))))

(assert (=> b!2965924 (= e!1866567 e!1866564)))

(declare-fun b!2965925 () Bool)

(assert (=> b!2965925 (= e!1866563 (= lt!1035142 call!197083))))

(declare-fun b!2965926 () Bool)

(assert (=> b!2965926 (= e!1866565 e!1866561)))

(declare-fun res!1223384 () Bool)

(assert (=> b!2965926 (=> res!1223384 e!1866561)))

(assert (=> b!2965926 (= res!1223384 call!197083)))

(declare-fun bm!197078 () Bool)

(assert (=> bm!197078 (= call!197083 (isEmpty!19228 s!11993))))

(assert (= (and d!842351 c!486396) b!2965919))

(assert (= (and d!842351 (not c!486396)) b!2965918))

(assert (= (and d!842351 c!486397) b!2965925))

(assert (= (and d!842351 (not c!486397)) b!2965923))

(assert (= (and b!2965923 c!486398) b!2965914))

(assert (= (and b!2965923 (not c!486398)) b!2965924))

(assert (= (and b!2965924 (not res!1223385)) b!2965921))

(assert (= (and b!2965921 res!1223386) b!2965922))

(assert (= (and b!2965922 res!1223391) b!2965915))

(assert (= (and b!2965915 res!1223390) b!2965913))

(assert (= (and b!2965921 (not res!1223388)) b!2965916))

(assert (= (and b!2965916 res!1223389) b!2965926))

(assert (= (and b!2965926 (not res!1223384)) b!2965920))

(assert (= (and b!2965920 (not res!1223387)) b!2965917))

(assert (= (or b!2965925 b!2965926 b!2965922) bm!197078))

(assert (=> d!842351 m!3336275))

(assert (=> d!842351 m!3336151))

(assert (=> bm!197078 m!3336275))

(assert (=> b!2965917 m!3336281))

(declare-fun m!3336309 () Bool)

(assert (=> b!2965919 m!3336309))

(assert (=> b!2965918 m!3336281))

(assert (=> b!2965918 m!3336281))

(declare-fun m!3336311 () Bool)

(assert (=> b!2965918 m!3336311))

(assert (=> b!2965918 m!3336287))

(assert (=> b!2965918 m!3336311))

(assert (=> b!2965918 m!3336287))

(declare-fun m!3336313 () Bool)

(assert (=> b!2965918 m!3336313))

(assert (=> b!2965913 m!3336281))

(assert (=> b!2965920 m!3336287))

(assert (=> b!2965920 m!3336287))

(assert (=> b!2965920 m!3336291))

(assert (=> b!2965915 m!3336287))

(assert (=> b!2965915 m!3336287))

(assert (=> b!2965915 m!3336291))

(assert (=> b!2965515 d!842351))

(declare-fun d!842353 () Bool)

(assert (=> d!842353 (= (matchR!4109 (regOne!18967 r!17423) s!11993) (matchR!4109 (simplify!230 (regOne!18967 r!17423)) s!11993))))

(declare-fun lt!1035145 () Unit!48833)

(declare-fun choose!17541 (Regex!9227 List!35092) Unit!48833)

(assert (=> d!842353 (= lt!1035145 (choose!17541 (regOne!18967 r!17423) s!11993))))

(assert (=> d!842353 (validRegex!3960 (regOne!18967 r!17423))))

(assert (=> d!842353 (= (lemmaSimplifySound!146 (regOne!18967 r!17423) s!11993) lt!1035145)))

(declare-fun bs!526407 () Bool)

(assert (= bs!526407 d!842353))

(assert (=> bs!526407 m!3336153))

(assert (=> bs!526407 m!3336173))

(declare-fun m!3336315 () Bool)

(assert (=> bs!526407 m!3336315))

(assert (=> bs!526407 m!3336173))

(assert (=> bs!526407 m!3336151))

(declare-fun m!3336317 () Bool)

(assert (=> bs!526407 m!3336317))

(assert (=> b!2965515 d!842353))

(declare-fun b!2965927 () Bool)

(declare-fun e!1866573 () Bool)

(assert (=> b!2965927 (= e!1866573 (= (head!6608 s!11993) (c!486285 lt!1035093)))))

(declare-fun b!2965928 () Bool)

(declare-fun e!1866574 () Bool)

(declare-fun lt!1035146 () Bool)

(assert (=> b!2965928 (= e!1866574 (not lt!1035146))))

(declare-fun b!2965929 () Bool)

(declare-fun res!1223398 () Bool)

(assert (=> b!2965929 (=> (not res!1223398) (not e!1866573))))

(assert (=> b!2965929 (= res!1223398 (isEmpty!19228 (tail!4834 s!11993)))))

(declare-fun b!2965930 () Bool)

(declare-fun e!1866571 () Bool)

(declare-fun e!1866572 () Bool)

(assert (=> b!2965930 (= e!1866571 e!1866572)))

(declare-fun res!1223397 () Bool)

(assert (=> b!2965930 (=> (not res!1223397) (not e!1866572))))

(assert (=> b!2965930 (= res!1223397 (not lt!1035146))))

(declare-fun b!2965931 () Bool)

(declare-fun e!1866568 () Bool)

(assert (=> b!2965931 (= e!1866568 (not (= (head!6608 s!11993) (c!486285 lt!1035093))))))

(declare-fun b!2965932 () Bool)

(declare-fun e!1866569 () Bool)

(assert (=> b!2965932 (= e!1866569 (matchR!4109 (derivativeStep!2549 lt!1035093 (head!6608 s!11993)) (tail!4834 s!11993)))))

(declare-fun d!842355 () Bool)

(declare-fun e!1866570 () Bool)

(assert (=> d!842355 e!1866570))

(declare-fun c!486400 () Bool)

(assert (=> d!842355 (= c!486400 ((_ is EmptyExpr!9227) lt!1035093))))

(assert (=> d!842355 (= lt!1035146 e!1866569)))

(declare-fun c!486399 () Bool)

(assert (=> d!842355 (= c!486399 (isEmpty!19228 s!11993))))

(assert (=> d!842355 (validRegex!3960 lt!1035093)))

(assert (=> d!842355 (= (matchR!4109 lt!1035093 s!11993) lt!1035146)))

(declare-fun b!2965933 () Bool)

(assert (=> b!2965933 (= e!1866569 (nullable!2947 lt!1035093))))

(declare-fun b!2965934 () Bool)

(declare-fun res!1223395 () Bool)

(assert (=> b!2965934 (=> res!1223395 e!1866568)))

(assert (=> b!2965934 (= res!1223395 (not (isEmpty!19228 (tail!4834 s!11993))))))

(declare-fun b!2965935 () Bool)

(declare-fun res!1223396 () Bool)

(assert (=> b!2965935 (=> res!1223396 e!1866571)))

(assert (=> b!2965935 (= res!1223396 e!1866573)))

(declare-fun res!1223394 () Bool)

(assert (=> b!2965935 (=> (not res!1223394) (not e!1866573))))

(assert (=> b!2965935 (= res!1223394 lt!1035146)))

(declare-fun b!2965936 () Bool)

(declare-fun res!1223399 () Bool)

(assert (=> b!2965936 (=> (not res!1223399) (not e!1866573))))

(declare-fun call!197084 () Bool)

(assert (=> b!2965936 (= res!1223399 (not call!197084))))

(declare-fun b!2965937 () Bool)

(assert (=> b!2965937 (= e!1866570 e!1866574)))

(declare-fun c!486401 () Bool)

(assert (=> b!2965937 (= c!486401 ((_ is EmptyLang!9227) lt!1035093))))

(declare-fun b!2965938 () Bool)

(declare-fun res!1223393 () Bool)

(assert (=> b!2965938 (=> res!1223393 e!1866571)))

(assert (=> b!2965938 (= res!1223393 (not ((_ is ElementMatch!9227) lt!1035093)))))

(assert (=> b!2965938 (= e!1866574 e!1866571)))

(declare-fun b!2965939 () Bool)

(assert (=> b!2965939 (= e!1866570 (= lt!1035146 call!197084))))

(declare-fun b!2965940 () Bool)

(assert (=> b!2965940 (= e!1866572 e!1866568)))

(declare-fun res!1223392 () Bool)

(assert (=> b!2965940 (=> res!1223392 e!1866568)))

(assert (=> b!2965940 (= res!1223392 call!197084)))

(declare-fun bm!197079 () Bool)

(assert (=> bm!197079 (= call!197084 (isEmpty!19228 s!11993))))

(assert (= (and d!842355 c!486399) b!2965933))

(assert (= (and d!842355 (not c!486399)) b!2965932))

(assert (= (and d!842355 c!486400) b!2965939))

(assert (= (and d!842355 (not c!486400)) b!2965937))

(assert (= (and b!2965937 c!486401) b!2965928))

(assert (= (and b!2965937 (not c!486401)) b!2965938))

(assert (= (and b!2965938 (not res!1223393)) b!2965935))

(assert (= (and b!2965935 res!1223394) b!2965936))

(assert (= (and b!2965936 res!1223399) b!2965929))

(assert (= (and b!2965929 res!1223398) b!2965927))

(assert (= (and b!2965935 (not res!1223396)) b!2965930))

(assert (= (and b!2965930 res!1223397) b!2965940))

(assert (= (and b!2965940 (not res!1223392)) b!2965934))

(assert (= (and b!2965934 (not res!1223395)) b!2965931))

(assert (= (or b!2965939 b!2965940 b!2965936) bm!197079))

(assert (=> d!842355 m!3336275))

(declare-fun m!3336319 () Bool)

(assert (=> d!842355 m!3336319))

(assert (=> bm!197079 m!3336275))

(assert (=> b!2965931 m!3336281))

(declare-fun m!3336321 () Bool)

(assert (=> b!2965933 m!3336321))

(assert (=> b!2965932 m!3336281))

(assert (=> b!2965932 m!3336281))

(declare-fun m!3336323 () Bool)

(assert (=> b!2965932 m!3336323))

(assert (=> b!2965932 m!3336287))

(assert (=> b!2965932 m!3336323))

(assert (=> b!2965932 m!3336287))

(declare-fun m!3336325 () Bool)

(assert (=> b!2965932 m!3336325))

(assert (=> b!2965927 m!3336281))

(assert (=> b!2965934 m!3336287))

(assert (=> b!2965934 m!3336287))

(assert (=> b!2965934 m!3336291))

(assert (=> b!2965929 m!3336287))

(assert (=> b!2965929 m!3336287))

(assert (=> b!2965929 m!3336291))

(assert (=> b!2965514 d!842355))

(declare-fun b!2965941 () Bool)

(declare-fun e!1866580 () Bool)

(assert (=> b!2965941 (= e!1866580 (= (head!6608 s!11993) (c!486285 lt!1035097)))))

(declare-fun b!2965942 () Bool)

(declare-fun e!1866581 () Bool)

(declare-fun lt!1035147 () Bool)

(assert (=> b!2965942 (= e!1866581 (not lt!1035147))))

(declare-fun b!2965943 () Bool)

(declare-fun res!1223406 () Bool)

(assert (=> b!2965943 (=> (not res!1223406) (not e!1866580))))

(assert (=> b!2965943 (= res!1223406 (isEmpty!19228 (tail!4834 s!11993)))))

(declare-fun b!2965944 () Bool)

(declare-fun e!1866578 () Bool)

(declare-fun e!1866579 () Bool)

(assert (=> b!2965944 (= e!1866578 e!1866579)))

(declare-fun res!1223405 () Bool)

(assert (=> b!2965944 (=> (not res!1223405) (not e!1866579))))

(assert (=> b!2965944 (= res!1223405 (not lt!1035147))))

(declare-fun b!2965945 () Bool)

(declare-fun e!1866575 () Bool)

(assert (=> b!2965945 (= e!1866575 (not (= (head!6608 s!11993) (c!486285 lt!1035097))))))

(declare-fun b!2965946 () Bool)

(declare-fun e!1866576 () Bool)

(assert (=> b!2965946 (= e!1866576 (matchR!4109 (derivativeStep!2549 lt!1035097 (head!6608 s!11993)) (tail!4834 s!11993)))))

(declare-fun d!842357 () Bool)

(declare-fun e!1866577 () Bool)

(assert (=> d!842357 e!1866577))

(declare-fun c!486403 () Bool)

(assert (=> d!842357 (= c!486403 ((_ is EmptyExpr!9227) lt!1035097))))

(assert (=> d!842357 (= lt!1035147 e!1866576)))

(declare-fun c!486402 () Bool)

(assert (=> d!842357 (= c!486402 (isEmpty!19228 s!11993))))

(assert (=> d!842357 (validRegex!3960 lt!1035097)))

(assert (=> d!842357 (= (matchR!4109 lt!1035097 s!11993) lt!1035147)))

(declare-fun b!2965947 () Bool)

(assert (=> b!2965947 (= e!1866576 (nullable!2947 lt!1035097))))

(declare-fun b!2965948 () Bool)

(declare-fun res!1223403 () Bool)

(assert (=> b!2965948 (=> res!1223403 e!1866575)))

(assert (=> b!2965948 (= res!1223403 (not (isEmpty!19228 (tail!4834 s!11993))))))

(declare-fun b!2965949 () Bool)

(declare-fun res!1223404 () Bool)

(assert (=> b!2965949 (=> res!1223404 e!1866578)))

(assert (=> b!2965949 (= res!1223404 e!1866580)))

(declare-fun res!1223402 () Bool)

(assert (=> b!2965949 (=> (not res!1223402) (not e!1866580))))

(assert (=> b!2965949 (= res!1223402 lt!1035147)))

(declare-fun b!2965950 () Bool)

(declare-fun res!1223407 () Bool)

(assert (=> b!2965950 (=> (not res!1223407) (not e!1866580))))

(declare-fun call!197085 () Bool)

(assert (=> b!2965950 (= res!1223407 (not call!197085))))

(declare-fun b!2965951 () Bool)

(assert (=> b!2965951 (= e!1866577 e!1866581)))

(declare-fun c!486404 () Bool)

(assert (=> b!2965951 (= c!486404 ((_ is EmptyLang!9227) lt!1035097))))

(declare-fun b!2965952 () Bool)

(declare-fun res!1223401 () Bool)

(assert (=> b!2965952 (=> res!1223401 e!1866578)))

(assert (=> b!2965952 (= res!1223401 (not ((_ is ElementMatch!9227) lt!1035097)))))

(assert (=> b!2965952 (= e!1866581 e!1866578)))

(declare-fun b!2965953 () Bool)

(assert (=> b!2965953 (= e!1866577 (= lt!1035147 call!197085))))

(declare-fun b!2965954 () Bool)

(assert (=> b!2965954 (= e!1866579 e!1866575)))

(declare-fun res!1223400 () Bool)

(assert (=> b!2965954 (=> res!1223400 e!1866575)))

(assert (=> b!2965954 (= res!1223400 call!197085)))

(declare-fun bm!197080 () Bool)

(assert (=> bm!197080 (= call!197085 (isEmpty!19228 s!11993))))

(assert (= (and d!842357 c!486402) b!2965947))

(assert (= (and d!842357 (not c!486402)) b!2965946))

(assert (= (and d!842357 c!486403) b!2965953))

(assert (= (and d!842357 (not c!486403)) b!2965951))

(assert (= (and b!2965951 c!486404) b!2965942))

(assert (= (and b!2965951 (not c!486404)) b!2965952))

(assert (= (and b!2965952 (not res!1223401)) b!2965949))

(assert (= (and b!2965949 res!1223402) b!2965950))

(assert (= (and b!2965950 res!1223407) b!2965943))

(assert (= (and b!2965943 res!1223406) b!2965941))

(assert (= (and b!2965949 (not res!1223404)) b!2965944))

(assert (= (and b!2965944 res!1223405) b!2965954))

(assert (= (and b!2965954 (not res!1223400)) b!2965948))

(assert (= (and b!2965948 (not res!1223403)) b!2965945))

(assert (= (or b!2965953 b!2965954 b!2965950) bm!197080))

(assert (=> d!842357 m!3336275))

(declare-fun m!3336327 () Bool)

(assert (=> d!842357 m!3336327))

(assert (=> bm!197080 m!3336275))

(assert (=> b!2965945 m!3336281))

(declare-fun m!3336329 () Bool)

(assert (=> b!2965947 m!3336329))

(assert (=> b!2965946 m!3336281))

(assert (=> b!2965946 m!3336281))

(declare-fun m!3336331 () Bool)

(assert (=> b!2965946 m!3336331))

(assert (=> b!2965946 m!3336287))

(assert (=> b!2965946 m!3336331))

(assert (=> b!2965946 m!3336287))

(declare-fun m!3336333 () Bool)

(assert (=> b!2965946 m!3336333))

(assert (=> b!2965941 m!3336281))

(assert (=> b!2965948 m!3336287))

(assert (=> b!2965948 m!3336287))

(assert (=> b!2965948 m!3336291))

(assert (=> b!2965943 m!3336287))

(assert (=> b!2965943 m!3336287))

(assert (=> b!2965943 m!3336291))

(assert (=> b!2965524 d!842357))

(declare-fun d!842359 () Bool)

(declare-fun e!1866587 () Bool)

(assert (=> d!842359 e!1866587))

(declare-fun res!1223412 () Bool)

(assert (=> d!842359 (=> res!1223412 e!1866587)))

(assert (=> d!842359 (= res!1223412 (matchR!4109 lt!1035097 s!11993))))

(declare-fun lt!1035150 () Unit!48833)

(declare-fun choose!17543 (Regex!9227 Regex!9227 List!35092) Unit!48833)

(assert (=> d!842359 (= lt!1035150 (choose!17543 lt!1035097 lt!1035093 s!11993))))

(declare-fun e!1866586 () Bool)

(assert (=> d!842359 e!1866586))

(declare-fun res!1223413 () Bool)

(assert (=> d!842359 (=> (not res!1223413) (not e!1866586))))

(assert (=> d!842359 (= res!1223413 (validRegex!3960 lt!1035097))))

(assert (=> d!842359 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!276 lt!1035097 lt!1035093 s!11993) lt!1035150)))

(declare-fun b!2965959 () Bool)

(assert (=> b!2965959 (= e!1866586 (validRegex!3960 lt!1035093))))

(declare-fun b!2965960 () Bool)

(assert (=> b!2965960 (= e!1866587 (matchR!4109 lt!1035093 s!11993))))

(assert (= (and d!842359 res!1223413) b!2965959))

(assert (= (and d!842359 (not res!1223412)) b!2965960))

(assert (=> d!842359 m!3336163))

(declare-fun m!3336335 () Bool)

(assert (=> d!842359 m!3336335))

(assert (=> d!842359 m!3336327))

(assert (=> b!2965959 m!3336319))

(assert (=> b!2965960 m!3336157))

(assert (=> b!2965524 d!842359))

(declare-fun d!842361 () Bool)

(assert (=> d!842361 (= (isEmptyLang!343 lt!1035097) ((_ is EmptyLang!9227) lt!1035097))))

(assert (=> b!2965519 d!842361))

(declare-fun b!2966011 () Bool)

(declare-fun e!1866620 () Regex!9227)

(declare-fun e!1866621 () Regex!9227)

(assert (=> b!2966011 (= e!1866620 e!1866621)))

(declare-fun c!486429 () Bool)

(assert (=> b!2966011 (= c!486429 ((_ is Star!9227) (regTwo!18967 r!17423)))))

(declare-fun lt!1035163 () Regex!9227)

(declare-fun lt!1035164 () Regex!9227)

(declare-fun call!197103 () Bool)

(declare-fun c!486435 () Bool)

(declare-fun bm!197095 () Bool)

(assert (=> bm!197095 (= call!197103 (isEmptyLang!343 (ite c!486435 lt!1035163 lt!1035164)))))

(declare-fun b!2966012 () Bool)

(declare-fun e!1866618 () Regex!9227)

(declare-fun lt!1035168 () Regex!9227)

(assert (=> b!2966012 (= e!1866618 lt!1035168)))

(declare-fun b!2966013 () Bool)

(declare-fun e!1866626 () Bool)

(declare-fun call!197100 () Bool)

(assert (=> b!2966013 (= e!1866626 call!197100)))

(declare-fun b!2966014 () Bool)

(declare-fun c!486436 () Bool)

(assert (=> b!2966014 (= c!486436 call!197103)))

(declare-fun e!1866617 () Regex!9227)

(assert (=> b!2966014 (= e!1866617 e!1866618)))

(declare-fun b!2966015 () Bool)

(assert (=> b!2966015 (= c!486435 ((_ is Union!9227) (regTwo!18967 r!17423)))))

(declare-fun e!1866616 () Regex!9227)

(assert (=> b!2966015 (= e!1866621 e!1866616)))

(declare-fun b!2966017 () Bool)

(declare-fun e!1866629 () Regex!9227)

(assert (=> b!2966017 (= e!1866629 EmptyLang!9227)))

(declare-fun bm!197096 () Bool)

(declare-fun lt!1035167 () Regex!9227)

(declare-fun lt!1035165 () Regex!9227)

(declare-fun isEmptyExpr!406 (Regex!9227) Bool)

(assert (=> bm!197096 (= call!197100 (isEmptyExpr!406 (ite c!486429 lt!1035167 lt!1035165)))))

(declare-fun bm!197097 () Bool)

(declare-fun call!197106 () Regex!9227)

(declare-fun call!197102 () Regex!9227)

(assert (=> bm!197097 (= call!197106 call!197102)))

(declare-fun b!2966018 () Bool)

(declare-fun e!1866628 () Regex!9227)

(declare-fun e!1866627 () Regex!9227)

(assert (=> b!2966018 (= e!1866628 e!1866627)))

(declare-fun c!486430 () Bool)

(assert (=> b!2966018 (= c!486430 ((_ is ElementMatch!9227) (regTwo!18967 r!17423)))))

(declare-fun b!2966019 () Bool)

(assert (=> b!2966019 (= e!1866616 e!1866629)))

(assert (=> b!2966019 (= lt!1035164 call!197106)))

(declare-fun call!197101 () Regex!9227)

(assert (=> b!2966019 (= lt!1035165 call!197101)))

(declare-fun res!1223421 () Bool)

(assert (=> b!2966019 (= res!1223421 call!197103)))

(declare-fun e!1866624 () Bool)

(assert (=> b!2966019 (=> res!1223421 e!1866624)))

(declare-fun c!486431 () Bool)

(assert (=> b!2966019 (= c!486431 e!1866624)))

(declare-fun b!2966020 () Bool)

(declare-fun e!1866619 () Regex!9227)

(assert (=> b!2966020 (= e!1866619 EmptyExpr!9227)))

(declare-fun bm!197098 () Bool)

(declare-fun call!197105 () Bool)

(declare-fun call!197104 () Bool)

(assert (=> bm!197098 (= call!197105 call!197104)))

(declare-fun b!2966021 () Bool)

(declare-fun e!1866625 () Regex!9227)

(assert (=> b!2966021 (= e!1866625 lt!1035164)))

(declare-fun bm!197099 () Bool)

(assert (=> bm!197099 (= call!197104 (isEmptyLang!343 (ite c!486429 lt!1035167 (ite c!486435 lt!1035168 lt!1035165))))))

(declare-fun b!2966022 () Bool)

(assert (=> b!2966022 (= e!1866618 (Union!9227 lt!1035168 lt!1035163))))

(declare-fun b!2966023 () Bool)

(declare-fun e!1866622 () Regex!9227)

(assert (=> b!2966023 (= e!1866622 lt!1035165)))

(declare-fun b!2966024 () Bool)

(assert (=> b!2966024 (= e!1866624 call!197105)))

(declare-fun b!2966025 () Bool)

(assert (=> b!2966025 (= e!1866616 e!1866617)))

(assert (=> b!2966025 (= lt!1035168 call!197101)))

(assert (=> b!2966025 (= lt!1035163 call!197106)))

(declare-fun c!486433 () Bool)

(assert (=> b!2966025 (= c!486433 call!197105)))

(declare-fun b!2966026 () Bool)

(assert (=> b!2966026 (= e!1866619 (Star!9227 lt!1035167))))

(declare-fun b!2966027 () Bool)

(declare-fun c!486427 () Bool)

(assert (=> b!2966027 (= c!486427 e!1866626)))

(declare-fun res!1223422 () Bool)

(assert (=> b!2966027 (=> res!1223422 e!1866626)))

(assert (=> b!2966027 (= res!1223422 call!197104)))

(assert (=> b!2966027 (= lt!1035167 call!197102)))

(assert (=> b!2966027 (= e!1866621 e!1866619)))

(declare-fun b!2966028 () Bool)

(declare-fun e!1866623 () Bool)

(declare-fun lt!1035166 () Regex!9227)

(assert (=> b!2966028 (= e!1866623 (= (nullable!2947 lt!1035166) (nullable!2947 (regTwo!18967 r!17423))))))

(declare-fun b!2966029 () Bool)

(assert (=> b!2966029 (= e!1866617 lt!1035163)))

(declare-fun b!2966030 () Bool)

(assert (=> b!2966030 (= e!1866622 e!1866625)))

(declare-fun c!486432 () Bool)

(assert (=> b!2966030 (= c!486432 call!197100)))

(declare-fun b!2966016 () Bool)

(assert (=> b!2966016 (= e!1866627 (regTwo!18967 r!17423))))

(declare-fun d!842363 () Bool)

(assert (=> d!842363 e!1866623))

(declare-fun res!1223420 () Bool)

(assert (=> d!842363 (=> (not res!1223420) (not e!1866623))))

(assert (=> d!842363 (= res!1223420 (validRegex!3960 lt!1035166))))

(assert (=> d!842363 (= lt!1035166 e!1866628)))

(declare-fun c!486437 () Bool)

(assert (=> d!842363 (= c!486437 ((_ is EmptyLang!9227) (regTwo!18967 r!17423)))))

(assert (=> d!842363 (validRegex!3960 (regTwo!18967 r!17423))))

(assert (=> d!842363 (= (simplify!230 (regTwo!18967 r!17423)) lt!1035166)))

(declare-fun b!2966031 () Bool)

(assert (=> b!2966031 (= e!1866628 EmptyLang!9227)))

(declare-fun b!2966032 () Bool)

(declare-fun c!486428 () Bool)

(assert (=> b!2966032 (= c!486428 ((_ is EmptyExpr!9227) (regTwo!18967 r!17423)))))

(assert (=> b!2966032 (= e!1866627 e!1866620)))

(declare-fun b!2966033 () Bool)

(declare-fun c!486434 () Bool)

(assert (=> b!2966033 (= c!486434 (isEmptyExpr!406 lt!1035164))))

(assert (=> b!2966033 (= e!1866629 e!1866622)))

(declare-fun bm!197100 () Bool)

(assert (=> bm!197100 (= call!197102 (simplify!230 (ite c!486429 (reg!9556 (regTwo!18967 r!17423)) (ite c!486435 (regTwo!18967 (regTwo!18967 r!17423)) (regOne!18966 (regTwo!18967 r!17423))))))))

(declare-fun b!2966034 () Bool)

(assert (=> b!2966034 (= e!1866625 (Concat!14548 lt!1035164 lt!1035165))))

(declare-fun bm!197101 () Bool)

(assert (=> bm!197101 (= call!197101 (simplify!230 (ite c!486435 (regOne!18967 (regTwo!18967 r!17423)) (regTwo!18966 (regTwo!18967 r!17423)))))))

(declare-fun b!2966035 () Bool)

(assert (=> b!2966035 (= e!1866620 EmptyExpr!9227)))

(assert (= (and d!842363 c!486437) b!2966031))

(assert (= (and d!842363 (not c!486437)) b!2966018))

(assert (= (and b!2966018 c!486430) b!2966016))

(assert (= (and b!2966018 (not c!486430)) b!2966032))

(assert (= (and b!2966032 c!486428) b!2966035))

(assert (= (and b!2966032 (not c!486428)) b!2966011))

(assert (= (and b!2966011 c!486429) b!2966027))

(assert (= (and b!2966011 (not c!486429)) b!2966015))

(assert (= (and b!2966027 (not res!1223422)) b!2966013))

(assert (= (and b!2966027 c!486427) b!2966020))

(assert (= (and b!2966027 (not c!486427)) b!2966026))

(assert (= (and b!2966015 c!486435) b!2966025))

(assert (= (and b!2966015 (not c!486435)) b!2966019))

(assert (= (and b!2966025 c!486433) b!2966029))

(assert (= (and b!2966025 (not c!486433)) b!2966014))

(assert (= (and b!2966014 c!486436) b!2966012))

(assert (= (and b!2966014 (not c!486436)) b!2966022))

(assert (= (and b!2966019 (not res!1223421)) b!2966024))

(assert (= (and b!2966019 c!486431) b!2966017))

(assert (= (and b!2966019 (not c!486431)) b!2966033))

(assert (= (and b!2966033 c!486434) b!2966023))

(assert (= (and b!2966033 (not c!486434)) b!2966030))

(assert (= (and b!2966030 c!486432) b!2966021))

(assert (= (and b!2966030 (not c!486432)) b!2966034))

(assert (= (or b!2966025 b!2966019) bm!197101))

(assert (= (or b!2966025 b!2966019) bm!197097))

(assert (= (or b!2966014 b!2966019) bm!197095))

(assert (= (or b!2966025 b!2966024) bm!197098))

(assert (= (or b!2966013 b!2966030) bm!197096))

(assert (= (or b!2966027 bm!197097) bm!197100))

(assert (= (or b!2966027 bm!197098) bm!197099))

(assert (= (and d!842363 res!1223420) b!2966028))

(declare-fun m!3336337 () Bool)

(assert (=> bm!197095 m!3336337))

(declare-fun m!3336339 () Bool)

(assert (=> b!2966033 m!3336339))

(declare-fun m!3336341 () Bool)

(assert (=> bm!197099 m!3336341))

(declare-fun m!3336343 () Bool)

(assert (=> bm!197096 m!3336343))

(declare-fun m!3336345 () Bool)

(assert (=> bm!197101 m!3336345))

(declare-fun m!3336347 () Bool)

(assert (=> b!2966028 m!3336347))

(declare-fun m!3336349 () Bool)

(assert (=> b!2966028 m!3336349))

(declare-fun m!3336351 () Bool)

(assert (=> bm!197100 m!3336351))

(declare-fun m!3336353 () Bool)

(assert (=> d!842363 m!3336353))

(declare-fun m!3336355 () Bool)

(assert (=> d!842363 m!3336355))

(assert (=> b!2965519 d!842363))

(declare-fun b!2966036 () Bool)

(declare-fun e!1866634 () Regex!9227)

(declare-fun e!1866635 () Regex!9227)

(assert (=> b!2966036 (= e!1866634 e!1866635)))

(declare-fun c!486440 () Bool)

(assert (=> b!2966036 (= c!486440 ((_ is Star!9227) (regOne!18967 r!17423)))))

(declare-fun bm!197102 () Bool)

(declare-fun call!197110 () Bool)

(declare-fun lt!1035170 () Regex!9227)

(declare-fun lt!1035169 () Regex!9227)

(declare-fun c!486446 () Bool)

(assert (=> bm!197102 (= call!197110 (isEmptyLang!343 (ite c!486446 lt!1035169 lt!1035170)))))

(declare-fun b!2966037 () Bool)

(declare-fun e!1866632 () Regex!9227)

(declare-fun lt!1035174 () Regex!9227)

(assert (=> b!2966037 (= e!1866632 lt!1035174)))

(declare-fun b!2966038 () Bool)

(declare-fun e!1866640 () Bool)

(declare-fun call!197107 () Bool)

(assert (=> b!2966038 (= e!1866640 call!197107)))

(declare-fun b!2966039 () Bool)

(declare-fun c!486447 () Bool)

(assert (=> b!2966039 (= c!486447 call!197110)))

(declare-fun e!1866631 () Regex!9227)

(assert (=> b!2966039 (= e!1866631 e!1866632)))

(declare-fun b!2966040 () Bool)

(assert (=> b!2966040 (= c!486446 ((_ is Union!9227) (regOne!18967 r!17423)))))

(declare-fun e!1866630 () Regex!9227)

(assert (=> b!2966040 (= e!1866635 e!1866630)))

(declare-fun b!2966042 () Bool)

(declare-fun e!1866643 () Regex!9227)

(assert (=> b!2966042 (= e!1866643 EmptyLang!9227)))

(declare-fun lt!1035173 () Regex!9227)

(declare-fun bm!197103 () Bool)

(declare-fun lt!1035171 () Regex!9227)

(assert (=> bm!197103 (= call!197107 (isEmptyExpr!406 (ite c!486440 lt!1035173 lt!1035171)))))

(declare-fun bm!197104 () Bool)

(declare-fun call!197113 () Regex!9227)

(declare-fun call!197109 () Regex!9227)

(assert (=> bm!197104 (= call!197113 call!197109)))

(declare-fun b!2966043 () Bool)

(declare-fun e!1866642 () Regex!9227)

(declare-fun e!1866641 () Regex!9227)

(assert (=> b!2966043 (= e!1866642 e!1866641)))

(declare-fun c!486441 () Bool)

(assert (=> b!2966043 (= c!486441 ((_ is ElementMatch!9227) (regOne!18967 r!17423)))))

(declare-fun b!2966044 () Bool)

(assert (=> b!2966044 (= e!1866630 e!1866643)))

(assert (=> b!2966044 (= lt!1035170 call!197113)))

(declare-fun call!197108 () Regex!9227)

(assert (=> b!2966044 (= lt!1035171 call!197108)))

(declare-fun res!1223424 () Bool)

(assert (=> b!2966044 (= res!1223424 call!197110)))

(declare-fun e!1866638 () Bool)

(assert (=> b!2966044 (=> res!1223424 e!1866638)))

(declare-fun c!486442 () Bool)

(assert (=> b!2966044 (= c!486442 e!1866638)))

(declare-fun b!2966045 () Bool)

(declare-fun e!1866633 () Regex!9227)

(assert (=> b!2966045 (= e!1866633 EmptyExpr!9227)))

(declare-fun bm!197105 () Bool)

(declare-fun call!197112 () Bool)

(declare-fun call!197111 () Bool)

(assert (=> bm!197105 (= call!197112 call!197111)))

(declare-fun b!2966046 () Bool)

(declare-fun e!1866639 () Regex!9227)

(assert (=> b!2966046 (= e!1866639 lt!1035170)))

(declare-fun bm!197106 () Bool)

(assert (=> bm!197106 (= call!197111 (isEmptyLang!343 (ite c!486440 lt!1035173 (ite c!486446 lt!1035174 lt!1035171))))))

(declare-fun b!2966047 () Bool)

(assert (=> b!2966047 (= e!1866632 (Union!9227 lt!1035174 lt!1035169))))

(declare-fun b!2966048 () Bool)

(declare-fun e!1866636 () Regex!9227)

(assert (=> b!2966048 (= e!1866636 lt!1035171)))

(declare-fun b!2966049 () Bool)

(assert (=> b!2966049 (= e!1866638 call!197112)))

(declare-fun b!2966050 () Bool)

(assert (=> b!2966050 (= e!1866630 e!1866631)))

(assert (=> b!2966050 (= lt!1035174 call!197108)))

(assert (=> b!2966050 (= lt!1035169 call!197113)))

(declare-fun c!486444 () Bool)

(assert (=> b!2966050 (= c!486444 call!197112)))

(declare-fun b!2966051 () Bool)

(assert (=> b!2966051 (= e!1866633 (Star!9227 lt!1035173))))

(declare-fun b!2966052 () Bool)

(declare-fun c!486438 () Bool)

(assert (=> b!2966052 (= c!486438 e!1866640)))

(declare-fun res!1223425 () Bool)

(assert (=> b!2966052 (=> res!1223425 e!1866640)))

(assert (=> b!2966052 (= res!1223425 call!197111)))

(assert (=> b!2966052 (= lt!1035173 call!197109)))

(assert (=> b!2966052 (= e!1866635 e!1866633)))

(declare-fun b!2966053 () Bool)

(declare-fun e!1866637 () Bool)

(declare-fun lt!1035172 () Regex!9227)

(assert (=> b!2966053 (= e!1866637 (= (nullable!2947 lt!1035172) (nullable!2947 (regOne!18967 r!17423))))))

(declare-fun b!2966054 () Bool)

(assert (=> b!2966054 (= e!1866631 lt!1035169)))

(declare-fun b!2966055 () Bool)

(assert (=> b!2966055 (= e!1866636 e!1866639)))

(declare-fun c!486443 () Bool)

(assert (=> b!2966055 (= c!486443 call!197107)))

(declare-fun b!2966041 () Bool)

(assert (=> b!2966041 (= e!1866641 (regOne!18967 r!17423))))

(declare-fun d!842365 () Bool)

(assert (=> d!842365 e!1866637))

(declare-fun res!1223423 () Bool)

(assert (=> d!842365 (=> (not res!1223423) (not e!1866637))))

(assert (=> d!842365 (= res!1223423 (validRegex!3960 lt!1035172))))

(assert (=> d!842365 (= lt!1035172 e!1866642)))

(declare-fun c!486448 () Bool)

(assert (=> d!842365 (= c!486448 ((_ is EmptyLang!9227) (regOne!18967 r!17423)))))

(assert (=> d!842365 (validRegex!3960 (regOne!18967 r!17423))))

(assert (=> d!842365 (= (simplify!230 (regOne!18967 r!17423)) lt!1035172)))

(declare-fun b!2966056 () Bool)

(assert (=> b!2966056 (= e!1866642 EmptyLang!9227)))

(declare-fun b!2966057 () Bool)

(declare-fun c!486439 () Bool)

(assert (=> b!2966057 (= c!486439 ((_ is EmptyExpr!9227) (regOne!18967 r!17423)))))

(assert (=> b!2966057 (= e!1866641 e!1866634)))

(declare-fun b!2966058 () Bool)

(declare-fun c!486445 () Bool)

(assert (=> b!2966058 (= c!486445 (isEmptyExpr!406 lt!1035170))))

(assert (=> b!2966058 (= e!1866643 e!1866636)))

(declare-fun bm!197107 () Bool)

(assert (=> bm!197107 (= call!197109 (simplify!230 (ite c!486440 (reg!9556 (regOne!18967 r!17423)) (ite c!486446 (regTwo!18967 (regOne!18967 r!17423)) (regOne!18966 (regOne!18967 r!17423))))))))

(declare-fun b!2966059 () Bool)

(assert (=> b!2966059 (= e!1866639 (Concat!14548 lt!1035170 lt!1035171))))

(declare-fun bm!197108 () Bool)

(assert (=> bm!197108 (= call!197108 (simplify!230 (ite c!486446 (regOne!18967 (regOne!18967 r!17423)) (regTwo!18966 (regOne!18967 r!17423)))))))

(declare-fun b!2966060 () Bool)

(assert (=> b!2966060 (= e!1866634 EmptyExpr!9227)))

(assert (= (and d!842365 c!486448) b!2966056))

(assert (= (and d!842365 (not c!486448)) b!2966043))

(assert (= (and b!2966043 c!486441) b!2966041))

(assert (= (and b!2966043 (not c!486441)) b!2966057))

(assert (= (and b!2966057 c!486439) b!2966060))

(assert (= (and b!2966057 (not c!486439)) b!2966036))

(assert (= (and b!2966036 c!486440) b!2966052))

(assert (= (and b!2966036 (not c!486440)) b!2966040))

(assert (= (and b!2966052 (not res!1223425)) b!2966038))

(assert (= (and b!2966052 c!486438) b!2966045))

(assert (= (and b!2966052 (not c!486438)) b!2966051))

(assert (= (and b!2966040 c!486446) b!2966050))

(assert (= (and b!2966040 (not c!486446)) b!2966044))

(assert (= (and b!2966050 c!486444) b!2966054))

(assert (= (and b!2966050 (not c!486444)) b!2966039))

(assert (= (and b!2966039 c!486447) b!2966037))

(assert (= (and b!2966039 (not c!486447)) b!2966047))

(assert (= (and b!2966044 (not res!1223424)) b!2966049))

(assert (= (and b!2966044 c!486442) b!2966042))

(assert (= (and b!2966044 (not c!486442)) b!2966058))

(assert (= (and b!2966058 c!486445) b!2966048))

(assert (= (and b!2966058 (not c!486445)) b!2966055))

(assert (= (and b!2966055 c!486443) b!2966046))

(assert (= (and b!2966055 (not c!486443)) b!2966059))

(assert (= (or b!2966050 b!2966044) bm!197108))

(assert (= (or b!2966050 b!2966044) bm!197104))

(assert (= (or b!2966039 b!2966044) bm!197102))

(assert (= (or b!2966050 b!2966049) bm!197105))

(assert (= (or b!2966038 b!2966055) bm!197103))

(assert (= (or b!2966052 bm!197104) bm!197107))

(assert (= (or b!2966052 bm!197105) bm!197106))

(assert (= (and d!842365 res!1223423) b!2966053))

(declare-fun m!3336357 () Bool)

(assert (=> bm!197102 m!3336357))

(declare-fun m!3336359 () Bool)

(assert (=> b!2966058 m!3336359))

(declare-fun m!3336361 () Bool)

(assert (=> bm!197106 m!3336361))

(declare-fun m!3336363 () Bool)

(assert (=> bm!197103 m!3336363))

(declare-fun m!3336365 () Bool)

(assert (=> bm!197108 m!3336365))

(declare-fun m!3336367 () Bool)

(assert (=> b!2966053 m!3336367))

(assert (=> b!2966053 m!3336309))

(declare-fun m!3336369 () Bool)

(assert (=> bm!197107 m!3336369))

(declare-fun m!3336371 () Bool)

(assert (=> d!842365 m!3336371))

(assert (=> d!842365 m!3336151))

(assert (=> b!2965519 d!842365))

(declare-fun b!2966071 () Bool)

(declare-fun e!1866646 () Bool)

(assert (=> b!2966071 (= e!1866646 tp_is_empty!16017)))

(declare-fun b!2966074 () Bool)

(declare-fun tp!946059 () Bool)

(declare-fun tp!946060 () Bool)

(assert (=> b!2966074 (= e!1866646 (and tp!946059 tp!946060))))

(declare-fun b!2966073 () Bool)

(declare-fun tp!946057 () Bool)

(assert (=> b!2966073 (= e!1866646 tp!946057)))

(assert (=> b!2965518 (= tp!946044 e!1866646)))

(declare-fun b!2966072 () Bool)

(declare-fun tp!946058 () Bool)

(declare-fun tp!946056 () Bool)

(assert (=> b!2966072 (= e!1866646 (and tp!946058 tp!946056))))

(assert (= (and b!2965518 ((_ is ElementMatch!9227) (regOne!18966 r!17423))) b!2966071))

(assert (= (and b!2965518 ((_ is Concat!14548) (regOne!18966 r!17423))) b!2966072))

(assert (= (and b!2965518 ((_ is Star!9227) (regOne!18966 r!17423))) b!2966073))

(assert (= (and b!2965518 ((_ is Union!9227) (regOne!18966 r!17423))) b!2966074))

(declare-fun b!2966075 () Bool)

(declare-fun e!1866647 () Bool)

(assert (=> b!2966075 (= e!1866647 tp_is_empty!16017)))

(declare-fun b!2966078 () Bool)

(declare-fun tp!946064 () Bool)

(declare-fun tp!946065 () Bool)

(assert (=> b!2966078 (= e!1866647 (and tp!946064 tp!946065))))

(declare-fun b!2966077 () Bool)

(declare-fun tp!946062 () Bool)

(assert (=> b!2966077 (= e!1866647 tp!946062)))

(assert (=> b!2965518 (= tp!946040 e!1866647)))

(declare-fun b!2966076 () Bool)

(declare-fun tp!946063 () Bool)

(declare-fun tp!946061 () Bool)

(assert (=> b!2966076 (= e!1866647 (and tp!946063 tp!946061))))

(assert (= (and b!2965518 ((_ is ElementMatch!9227) (regTwo!18966 r!17423))) b!2966075))

(assert (= (and b!2965518 ((_ is Concat!14548) (regTwo!18966 r!17423))) b!2966076))

(assert (= (and b!2965518 ((_ is Star!9227) (regTwo!18966 r!17423))) b!2966077))

(assert (= (and b!2965518 ((_ is Union!9227) (regTwo!18966 r!17423))) b!2966078))

(declare-fun b!2966083 () Bool)

(declare-fun e!1866650 () Bool)

(declare-fun tp!946068 () Bool)

(assert (=> b!2966083 (= e!1866650 (and tp_is_empty!16017 tp!946068))))

(assert (=> b!2965517 (= tp!946041 e!1866650)))

(assert (= (and b!2965517 ((_ is Cons!34968) (t!234157 s!11993))) b!2966083))

(declare-fun b!2966084 () Bool)

(declare-fun e!1866651 () Bool)

(assert (=> b!2966084 (= e!1866651 tp_is_empty!16017)))

(declare-fun b!2966087 () Bool)

(declare-fun tp!946072 () Bool)

(declare-fun tp!946073 () Bool)

(assert (=> b!2966087 (= e!1866651 (and tp!946072 tp!946073))))

(declare-fun b!2966086 () Bool)

(declare-fun tp!946070 () Bool)

(assert (=> b!2966086 (= e!1866651 tp!946070)))

(assert (=> b!2965521 (= tp!946043 e!1866651)))

(declare-fun b!2966085 () Bool)

(declare-fun tp!946071 () Bool)

(declare-fun tp!946069 () Bool)

(assert (=> b!2966085 (= e!1866651 (and tp!946071 tp!946069))))

(assert (= (and b!2965521 ((_ is ElementMatch!9227) (regOne!18967 r!17423))) b!2966084))

(assert (= (and b!2965521 ((_ is Concat!14548) (regOne!18967 r!17423))) b!2966085))

(assert (= (and b!2965521 ((_ is Star!9227) (regOne!18967 r!17423))) b!2966086))

(assert (= (and b!2965521 ((_ is Union!9227) (regOne!18967 r!17423))) b!2966087))

(declare-fun b!2966088 () Bool)

(declare-fun e!1866652 () Bool)

(assert (=> b!2966088 (= e!1866652 tp_is_empty!16017)))

(declare-fun b!2966091 () Bool)

(declare-fun tp!946077 () Bool)

(declare-fun tp!946078 () Bool)

(assert (=> b!2966091 (= e!1866652 (and tp!946077 tp!946078))))

(declare-fun b!2966090 () Bool)

(declare-fun tp!946075 () Bool)

(assert (=> b!2966090 (= e!1866652 tp!946075)))

(assert (=> b!2965521 (= tp!946045 e!1866652)))

(declare-fun b!2966089 () Bool)

(declare-fun tp!946076 () Bool)

(declare-fun tp!946074 () Bool)

(assert (=> b!2966089 (= e!1866652 (and tp!946076 tp!946074))))

(assert (= (and b!2965521 ((_ is ElementMatch!9227) (regTwo!18967 r!17423))) b!2966088))

(assert (= (and b!2965521 ((_ is Concat!14548) (regTwo!18967 r!17423))) b!2966089))

(assert (= (and b!2965521 ((_ is Star!9227) (regTwo!18967 r!17423))) b!2966090))

(assert (= (and b!2965521 ((_ is Union!9227) (regTwo!18967 r!17423))) b!2966091))

(declare-fun b!2966092 () Bool)

(declare-fun e!1866653 () Bool)

(assert (=> b!2966092 (= e!1866653 tp_is_empty!16017)))

(declare-fun b!2966095 () Bool)

(declare-fun tp!946082 () Bool)

(declare-fun tp!946083 () Bool)

(assert (=> b!2966095 (= e!1866653 (and tp!946082 tp!946083))))

(declare-fun b!2966094 () Bool)

(declare-fun tp!946080 () Bool)

(assert (=> b!2966094 (= e!1866653 tp!946080)))

(assert (=> b!2965520 (= tp!946042 e!1866653)))

(declare-fun b!2966093 () Bool)

(declare-fun tp!946081 () Bool)

(declare-fun tp!946079 () Bool)

(assert (=> b!2966093 (= e!1866653 (and tp!946081 tp!946079))))

(assert (= (and b!2965520 ((_ is ElementMatch!9227) (reg!9556 r!17423))) b!2966092))

(assert (= (and b!2965520 ((_ is Concat!14548) (reg!9556 r!17423))) b!2966093))

(assert (= (and b!2965520 ((_ is Star!9227) (reg!9556 r!17423))) b!2966094))

(assert (= (and b!2965520 ((_ is Union!9227) (reg!9556 r!17423))) b!2966095))

(check-sat (not d!842363) (not b!2966073) (not b!2965934) (not b!2965880) (not b!2965918) (not bm!197100) (not d!842355) (not b!2966058) (not b!2966087) (not b!2965876) (not b!2965946) (not b!2965929) (not bm!197096) (not b!2965892) (not b!2965959) (not b!2965941) (not b!2965945) (not b!2965890) (not bm!197102) (not b!2965917) (not b!2965920) (not bm!197018) (not b!2966028) (not b!2965883) (not bm!197017) tp_is_empty!16017 (not b!2965943) (not b!2965948) (not b!2966083) (not b!2966072) (not d!842345) (not b!2965919) (not d!842365) (not b!2966076) (not b!2965843) (not d!842357) (not bm!197099) (not b!2966089) (not b!2966091) (not b!2965882) (not d!842351) (not b!2965878) (not b!2965894) (not b!2966085) (not b!2965906) (not d!842343) (not b!2965881) (not b!2966053) (not b!2966077) (not bm!197077) (not bm!197107) (not bm!197101) (not b!2965895) (not b!2965931) (not bm!197069) (not bm!197080) (not bm!197076) (not b!2965546) (not d!842347) (not b!2966093) (not b!2966094) (not b!2966095) (not bm!197078) (not b!2966074) (not d!842353) (not b!2965932) (not b!2965927) (not bm!197103) (not b!2965915) (not b!2965947) (not bm!197108) (not bm!197070) (not b!2966086) (not b!2965960) (not b!2965897) (not bm!197074) (not b!2966078) (not b!2965896) (not b!2965933) (not b!2965913) (not bm!197095) (not bm!197079) (not bm!197073) (not bm!197106) (not b!2966090) (not b!2966033) (not d!842359) (not b!2965834))
(check-sat)
