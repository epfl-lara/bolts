; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290756 () Bool)

(assert start!290756)

(declare-fun res!1246765 () Bool)

(declare-fun e!1900392 () Bool)

(assert (=> start!290756 (=> (not res!1246765) (not e!1900392))))

(declare-datatypes ((C!19036 0))(
  ( (C!19037 (val!11554 Int)) )
))
(declare-datatypes ((Regex!9425 0))(
  ( (ElementMatch!9425 (c!500513 C!19036)) (Concat!14746 (regOne!19362 Regex!9425) (regTwo!19362 Regex!9425)) (EmptyExpr!9425) (Star!9425 (reg!9754 Regex!9425)) (EmptyLang!9425) (Union!9425 (regOne!19363 Regex!9425) (regTwo!19363 Regex!9425)) )
))
(declare-fun r!17423 () Regex!9425)

(declare-fun validRegex!4158 (Regex!9425) Bool)

(assert (=> start!290756 (= res!1246765 (validRegex!4158 r!17423))))

(assert (=> start!290756 e!1900392))

(declare-fun e!1900387 () Bool)

(assert (=> start!290756 e!1900387))

(declare-fun e!1900390 () Bool)

(assert (=> start!290756 e!1900390))

(declare-fun b!3029964 () Bool)

(declare-fun e!1900389 () Bool)

(declare-fun e!1900388 () Bool)

(assert (=> b!3029964 (= e!1900389 e!1900388)))

(declare-fun res!1246768 () Bool)

(assert (=> b!3029964 (=> res!1246768 e!1900388)))

(declare-fun lt!1045826 () Bool)

(assert (=> b!3029964 (= res!1246768 (not lt!1045826))))

(declare-fun e!1900393 () Bool)

(assert (=> b!3029964 e!1900393))

(declare-fun res!1246766 () Bool)

(assert (=> b!3029964 (=> res!1246766 e!1900393)))

(assert (=> b!3029964 (= res!1246766 lt!1045826)))

(declare-datatypes ((List!35290 0))(
  ( (Nil!35166) (Cons!35166 (h!40586 C!19036) (t!234355 List!35290)) )
))
(declare-fun s!11993 () List!35290)

(declare-fun matchR!4307 (Regex!9425 List!35290) Bool)

(assert (=> b!3029964 (= lt!1045826 (matchR!4307 (regOne!19363 r!17423) s!11993))))

(declare-datatypes ((Unit!49273 0))(
  ( (Unit!49274) )
))
(declare-fun lt!1045827 () Unit!49273)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!302 (Regex!9425 Regex!9425 List!35290) Unit!49273)

(assert (=> b!3029964 (= lt!1045827 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!302 (regOne!19363 r!17423) (regTwo!19363 r!17423) s!11993))))

(declare-fun b!3029965 () Bool)

(declare-fun e!1900391 () Bool)

(assert (=> b!3029965 (= e!1900388 e!1900391)))

(declare-fun res!1246767 () Bool)

(assert (=> b!3029965 (=> (not res!1246767) (not e!1900391))))

(declare-fun lt!1045828 () Regex!9425)

(assert (=> b!3029965 (= res!1246767 (validRegex!4158 lt!1045828))))

(declare-fun lt!1045831 () Regex!9425)

(declare-fun simplify!396 (Regex!9425) Regex!9425)

(assert (=> b!3029965 (= lt!1045831 (simplify!396 (regTwo!19363 r!17423)))))

(assert (=> b!3029965 (matchR!4307 lt!1045828 s!11993)))

(assert (=> b!3029965 (= lt!1045828 (simplify!396 (regOne!19363 r!17423)))))

(declare-fun lt!1045829 () Unit!49273)

(declare-fun lemmaSimplifySound!244 (Regex!9425 List!35290) Unit!49273)

(assert (=> b!3029965 (= lt!1045829 (lemmaSimplifySound!244 (regOne!19363 r!17423) s!11993))))

(declare-fun b!3029966 () Bool)

(declare-fun tp_is_empty!16413 () Bool)

(declare-fun tp!960493 () Bool)

(assert (=> b!3029966 (= e!1900390 (and tp_is_empty!16413 tp!960493))))

(declare-fun b!3029967 () Bool)

(assert (=> b!3029967 (= e!1900392 (not e!1900389))))

(declare-fun res!1246764 () Bool)

(assert (=> b!3029967 (=> res!1246764 e!1900389)))

(declare-fun lt!1045832 () Bool)

(get-info :version)

(assert (=> b!3029967 (= res!1246764 (or (not lt!1045832) ((_ is Concat!14746) r!17423) (not ((_ is Union!9425) r!17423))))))

(declare-fun matchRSpec!1562 (Regex!9425 List!35290) Bool)

(assert (=> b!3029967 (= lt!1045832 (matchRSpec!1562 r!17423 s!11993))))

(assert (=> b!3029967 (= lt!1045832 (matchR!4307 r!17423 s!11993))))

(declare-fun lt!1045830 () Unit!49273)

(declare-fun mainMatchTheorem!1562 (Regex!9425 List!35290) Unit!49273)

(assert (=> b!3029967 (= lt!1045830 (mainMatchTheorem!1562 r!17423 s!11993))))

(declare-fun b!3029968 () Bool)

(assert (=> b!3029968 (= e!1900387 tp_is_empty!16413)))

(declare-fun b!3029969 () Bool)

(declare-fun tp!960492 () Bool)

(declare-fun tp!960495 () Bool)

(assert (=> b!3029969 (= e!1900387 (and tp!960492 tp!960495))))

(declare-fun b!3029970 () Bool)

(declare-fun tp!960494 () Bool)

(assert (=> b!3029970 (= e!1900387 tp!960494)))

(declare-fun b!3029971 () Bool)

(declare-fun tp!960496 () Bool)

(declare-fun tp!960497 () Bool)

(assert (=> b!3029971 (= e!1900387 (and tp!960496 tp!960497))))

(declare-fun b!3029972 () Bool)

(assert (=> b!3029972 (= e!1900391 (validRegex!4158 lt!1045831))))

(declare-fun b!3029973 () Bool)

(assert (=> b!3029973 (= e!1900393 (matchR!4307 (regTwo!19363 r!17423) s!11993))))

(assert (= (and start!290756 res!1246765) b!3029967))

(assert (= (and b!3029967 (not res!1246764)) b!3029964))

(assert (= (and b!3029964 (not res!1246766)) b!3029973))

(assert (= (and b!3029964 (not res!1246768)) b!3029965))

(assert (= (and b!3029965 res!1246767) b!3029972))

(assert (= (and start!290756 ((_ is ElementMatch!9425) r!17423)) b!3029968))

(assert (= (and start!290756 ((_ is Concat!14746) r!17423)) b!3029971))

(assert (= (and start!290756 ((_ is Star!9425) r!17423)) b!3029970))

(assert (= (and start!290756 ((_ is Union!9425) r!17423)) b!3029969))

(assert (= (and start!290756 ((_ is Cons!35166) s!11993)) b!3029966))

(declare-fun m!3367403 () Bool)

(assert (=> b!3029973 m!3367403))

(declare-fun m!3367405 () Bool)

(assert (=> start!290756 m!3367405))

(declare-fun m!3367407 () Bool)

(assert (=> b!3029967 m!3367407))

(declare-fun m!3367409 () Bool)

(assert (=> b!3029967 m!3367409))

(declare-fun m!3367411 () Bool)

(assert (=> b!3029967 m!3367411))

(declare-fun m!3367413 () Bool)

(assert (=> b!3029972 m!3367413))

(declare-fun m!3367415 () Bool)

(assert (=> b!3029964 m!3367415))

(declare-fun m!3367417 () Bool)

(assert (=> b!3029964 m!3367417))

(declare-fun m!3367419 () Bool)

(assert (=> b!3029965 m!3367419))

(declare-fun m!3367421 () Bool)

(assert (=> b!3029965 m!3367421))

(declare-fun m!3367423 () Bool)

(assert (=> b!3029965 m!3367423))

(declare-fun m!3367425 () Bool)

(assert (=> b!3029965 m!3367425))

(declare-fun m!3367427 () Bool)

(assert (=> b!3029965 m!3367427))

(check-sat tp_is_empty!16413 (not b!3029971) (not b!3029969) (not start!290756) (not b!3029966) (not b!3029973) (not b!3029967) (not b!3029972) (not b!3029965) (not b!3029970) (not b!3029964))
(check-sat)
(get-model)

(declare-fun d!851000 () Bool)

(declare-fun e!1900432 () Bool)

(assert (=> d!851000 e!1900432))

(declare-fun c!500530 () Bool)

(assert (=> d!851000 (= c!500530 ((_ is EmptyExpr!9425) (regOne!19363 r!17423)))))

(declare-fun lt!1045838 () Bool)

(declare-fun e!1900431 () Bool)

(assert (=> d!851000 (= lt!1045838 e!1900431)))

(declare-fun c!500531 () Bool)

(declare-fun isEmpty!19466 (List!35290) Bool)

(assert (=> d!851000 (= c!500531 (isEmpty!19466 s!11993))))

(assert (=> d!851000 (validRegex!4158 (regOne!19363 r!17423))))

(assert (=> d!851000 (= (matchR!4307 (regOne!19363 r!17423) s!11993) lt!1045838)))

(declare-fun b!3030044 () Bool)

(declare-fun res!1246809 () Bool)

(declare-fun e!1900430 () Bool)

(assert (=> b!3030044 (=> res!1246809 e!1900430)))

(declare-fun e!1900435 () Bool)

(assert (=> b!3030044 (= res!1246809 e!1900435)))

(declare-fun res!1246815 () Bool)

(assert (=> b!3030044 (=> (not res!1246815) (not e!1900435))))

(assert (=> b!3030044 (= res!1246815 lt!1045838)))

(declare-fun b!3030045 () Bool)

(declare-fun e!1900433 () Bool)

(assert (=> b!3030045 (= e!1900432 e!1900433)))

(declare-fun c!500529 () Bool)

(assert (=> b!3030045 (= c!500529 ((_ is EmptyLang!9425) (regOne!19363 r!17423)))))

(declare-fun b!3030046 () Bool)

(declare-fun e!1900429 () Bool)

(declare-fun head!6731 (List!35290) C!19036)

(assert (=> b!3030046 (= e!1900429 (not (= (head!6731 s!11993) (c!500513 (regOne!19363 r!17423)))))))

(declare-fun bm!206261 () Bool)

(declare-fun call!206266 () Bool)

(assert (=> bm!206261 (= call!206266 (isEmpty!19466 s!11993))))

(declare-fun b!3030047 () Bool)

(assert (=> b!3030047 (= e!1900435 (= (head!6731 s!11993) (c!500513 (regOne!19363 r!17423))))))

(declare-fun b!3030048 () Bool)

(declare-fun res!1246816 () Bool)

(assert (=> b!3030048 (=> (not res!1246816) (not e!1900435))))

(assert (=> b!3030048 (= res!1246816 (not call!206266))))

(declare-fun b!3030049 () Bool)

(declare-fun derivativeStep!2672 (Regex!9425 C!19036) Regex!9425)

(declare-fun tail!4957 (List!35290) List!35290)

(assert (=> b!3030049 (= e!1900431 (matchR!4307 (derivativeStep!2672 (regOne!19363 r!17423) (head!6731 s!11993)) (tail!4957 s!11993)))))

(declare-fun b!3030050 () Bool)

(declare-fun e!1900434 () Bool)

(assert (=> b!3030050 (= e!1900434 e!1900429)))

(declare-fun res!1246814 () Bool)

(assert (=> b!3030050 (=> res!1246814 e!1900429)))

(assert (=> b!3030050 (= res!1246814 call!206266)))

(declare-fun b!3030051 () Bool)

(assert (=> b!3030051 (= e!1900432 (= lt!1045838 call!206266))))

(declare-fun b!3030052 () Bool)

(declare-fun nullable!3075 (Regex!9425) Bool)

(assert (=> b!3030052 (= e!1900431 (nullable!3075 (regOne!19363 r!17423)))))

(declare-fun b!3030053 () Bool)

(declare-fun res!1246812 () Bool)

(assert (=> b!3030053 (=> res!1246812 e!1900430)))

(assert (=> b!3030053 (= res!1246812 (not ((_ is ElementMatch!9425) (regOne!19363 r!17423))))))

(assert (=> b!3030053 (= e!1900433 e!1900430)))

(declare-fun b!3030054 () Bool)

(declare-fun res!1246811 () Bool)

(assert (=> b!3030054 (=> (not res!1246811) (not e!1900435))))

(assert (=> b!3030054 (= res!1246811 (isEmpty!19466 (tail!4957 s!11993)))))

(declare-fun b!3030055 () Bool)

(assert (=> b!3030055 (= e!1900430 e!1900434)))

(declare-fun res!1246813 () Bool)

(assert (=> b!3030055 (=> (not res!1246813) (not e!1900434))))

(assert (=> b!3030055 (= res!1246813 (not lt!1045838))))

(declare-fun b!3030056 () Bool)

(assert (=> b!3030056 (= e!1900433 (not lt!1045838))))

(declare-fun b!3030057 () Bool)

(declare-fun res!1246810 () Bool)

(assert (=> b!3030057 (=> res!1246810 e!1900429)))

(assert (=> b!3030057 (= res!1246810 (not (isEmpty!19466 (tail!4957 s!11993))))))

(assert (= (and d!851000 c!500531) b!3030052))

(assert (= (and d!851000 (not c!500531)) b!3030049))

(assert (= (and d!851000 c!500530) b!3030051))

(assert (= (and d!851000 (not c!500530)) b!3030045))

(assert (= (and b!3030045 c!500529) b!3030056))

(assert (= (and b!3030045 (not c!500529)) b!3030053))

(assert (= (and b!3030053 (not res!1246812)) b!3030044))

(assert (= (and b!3030044 res!1246815) b!3030048))

(assert (= (and b!3030048 res!1246816) b!3030054))

(assert (= (and b!3030054 res!1246811) b!3030047))

(assert (= (and b!3030044 (not res!1246809)) b!3030055))

(assert (= (and b!3030055 res!1246813) b!3030050))

(assert (= (and b!3030050 (not res!1246814)) b!3030057))

(assert (= (and b!3030057 (not res!1246810)) b!3030046))

(assert (= (or b!3030051 b!3030048 b!3030050) bm!206261))

(declare-fun m!3367445 () Bool)

(assert (=> d!851000 m!3367445))

(declare-fun m!3367447 () Bool)

(assert (=> d!851000 m!3367447))

(declare-fun m!3367449 () Bool)

(assert (=> b!3030054 m!3367449))

(assert (=> b!3030054 m!3367449))

(declare-fun m!3367451 () Bool)

(assert (=> b!3030054 m!3367451))

(declare-fun m!3367453 () Bool)

(assert (=> b!3030047 m!3367453))

(assert (=> bm!206261 m!3367445))

(assert (=> b!3030046 m!3367453))

(assert (=> b!3030057 m!3367449))

(assert (=> b!3030057 m!3367449))

(assert (=> b!3030057 m!3367451))

(assert (=> b!3030049 m!3367453))

(assert (=> b!3030049 m!3367453))

(declare-fun m!3367455 () Bool)

(assert (=> b!3030049 m!3367455))

(assert (=> b!3030049 m!3367449))

(assert (=> b!3030049 m!3367455))

(assert (=> b!3030049 m!3367449))

(declare-fun m!3367457 () Bool)

(assert (=> b!3030049 m!3367457))

(declare-fun m!3367459 () Bool)

(assert (=> b!3030052 m!3367459))

(assert (=> b!3029964 d!851000))

(declare-fun d!851006 () Bool)

(declare-fun e!1900446 () Bool)

(assert (=> d!851006 e!1900446))

(declare-fun res!1246827 () Bool)

(assert (=> d!851006 (=> res!1246827 e!1900446)))

(assert (=> d!851006 (= res!1246827 (matchR!4307 (regOne!19363 r!17423) s!11993))))

(declare-fun lt!1045844 () Unit!49273)

(declare-fun choose!17968 (Regex!9425 Regex!9425 List!35290) Unit!49273)

(assert (=> d!851006 (= lt!1045844 (choose!17968 (regOne!19363 r!17423) (regTwo!19363 r!17423) s!11993))))

(declare-fun e!1900447 () Bool)

(assert (=> d!851006 e!1900447))

(declare-fun res!1246828 () Bool)

(assert (=> d!851006 (=> (not res!1246828) (not e!1900447))))

(assert (=> d!851006 (= res!1246828 (validRegex!4158 (regOne!19363 r!17423)))))

(assert (=> d!851006 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!302 (regOne!19363 r!17423) (regTwo!19363 r!17423) s!11993) lt!1045844)))

(declare-fun b!3030068 () Bool)

(assert (=> b!3030068 (= e!1900447 (validRegex!4158 (regTwo!19363 r!17423)))))

(declare-fun b!3030069 () Bool)

(assert (=> b!3030069 (= e!1900446 (matchR!4307 (regTwo!19363 r!17423) s!11993))))

(assert (= (and d!851006 res!1246828) b!3030068))

(assert (= (and d!851006 (not res!1246827)) b!3030069))

(assert (=> d!851006 m!3367415))

(declare-fun m!3367465 () Bool)

(assert (=> d!851006 m!3367465))

(assert (=> d!851006 m!3367447))

(declare-fun m!3367467 () Bool)

(assert (=> b!3030068 m!3367467))

(assert (=> b!3030069 m!3367403))

(assert (=> b!3029964 d!851006))

(declare-fun b!3030115 () Bool)

(declare-fun e!1900486 () Bool)

(declare-fun call!206283 () Bool)

(assert (=> b!3030115 (= e!1900486 call!206283)))

(declare-fun d!851010 () Bool)

(declare-fun res!1246858 () Bool)

(declare-fun e!1900487 () Bool)

(assert (=> d!851010 (=> res!1246858 e!1900487)))

(assert (=> d!851010 (= res!1246858 ((_ is ElementMatch!9425) lt!1045828))))

(assert (=> d!851010 (= (validRegex!4158 lt!1045828) e!1900487)))

(declare-fun b!3030116 () Bool)

(declare-fun e!1900483 () Bool)

(declare-fun call!206284 () Bool)

(assert (=> b!3030116 (= e!1900483 call!206284)))

(declare-fun b!3030117 () Bool)

(declare-fun res!1246855 () Bool)

(declare-fun e!1900489 () Bool)

(assert (=> b!3030117 (=> (not res!1246855) (not e!1900489))))

(assert (=> b!3030117 (= res!1246855 call!206283)))

(declare-fun e!1900488 () Bool)

(assert (=> b!3030117 (= e!1900488 e!1900489)))

(declare-fun b!3030118 () Bool)

(declare-fun res!1246854 () Bool)

(declare-fun e!1900485 () Bool)

(assert (=> b!3030118 (=> res!1246854 e!1900485)))

(assert (=> b!3030118 (= res!1246854 (not ((_ is Concat!14746) lt!1045828)))))

(assert (=> b!3030118 (= e!1900488 e!1900485)))

(declare-fun c!500542 () Bool)

(declare-fun bm!206277 () Bool)

(declare-fun c!500543 () Bool)

(assert (=> bm!206277 (= call!206284 (validRegex!4158 (ite c!500543 (reg!9754 lt!1045828) (ite c!500542 (regOne!19363 lt!1045828) (regTwo!19362 lt!1045828)))))))

(declare-fun b!3030119 () Bool)

(declare-fun e!1900484 () Bool)

(assert (=> b!3030119 (= e!1900484 e!1900483)))

(declare-fun res!1246856 () Bool)

(assert (=> b!3030119 (= res!1246856 (not (nullable!3075 (reg!9754 lt!1045828))))))

(assert (=> b!3030119 (=> (not res!1246856) (not e!1900483))))

(declare-fun bm!206278 () Bool)

(declare-fun call!206282 () Bool)

(assert (=> bm!206278 (= call!206282 (validRegex!4158 (ite c!500542 (regTwo!19363 lt!1045828) (regOne!19362 lt!1045828))))))

(declare-fun bm!206279 () Bool)

(assert (=> bm!206279 (= call!206283 call!206284)))

(declare-fun b!3030120 () Bool)

(assert (=> b!3030120 (= e!1900485 e!1900486)))

(declare-fun res!1246857 () Bool)

(assert (=> b!3030120 (=> (not res!1246857) (not e!1900486))))

(assert (=> b!3030120 (= res!1246857 call!206282)))

(declare-fun b!3030121 () Bool)

(assert (=> b!3030121 (= e!1900489 call!206282)))

(declare-fun b!3030122 () Bool)

(assert (=> b!3030122 (= e!1900484 e!1900488)))

(assert (=> b!3030122 (= c!500542 ((_ is Union!9425) lt!1045828))))

(declare-fun b!3030123 () Bool)

(assert (=> b!3030123 (= e!1900487 e!1900484)))

(assert (=> b!3030123 (= c!500543 ((_ is Star!9425) lt!1045828))))

(assert (= (and d!851010 (not res!1246858)) b!3030123))

(assert (= (and b!3030123 c!500543) b!3030119))

(assert (= (and b!3030123 (not c!500543)) b!3030122))

(assert (= (and b!3030119 res!1246856) b!3030116))

(assert (= (and b!3030122 c!500542) b!3030117))

(assert (= (and b!3030122 (not c!500542)) b!3030118))

(assert (= (and b!3030117 res!1246855) b!3030121))

(assert (= (and b!3030118 (not res!1246854)) b!3030120))

(assert (= (and b!3030120 res!1246857) b!3030115))

(assert (= (or b!3030117 b!3030115) bm!206279))

(assert (= (or b!3030121 b!3030120) bm!206278))

(assert (= (or b!3030116 bm!206279) bm!206277))

(declare-fun m!3367475 () Bool)

(assert (=> bm!206277 m!3367475))

(declare-fun m!3367477 () Bool)

(assert (=> b!3030119 m!3367477))

(declare-fun m!3367479 () Bool)

(assert (=> bm!206278 m!3367479))

(assert (=> b!3029965 d!851010))

(declare-fun b!3030196 () Bool)

(declare-fun e!1900539 () Regex!9425)

(declare-fun e!1900541 () Regex!9425)

(assert (=> b!3030196 (= e!1900539 e!1900541)))

(declare-fun lt!1045862 () Regex!9425)

(declare-fun call!206299 () Regex!9425)

(assert (=> b!3030196 (= lt!1045862 call!206299)))

(declare-fun lt!1045857 () Regex!9425)

(declare-fun call!206301 () Regex!9425)

(assert (=> b!3030196 (= lt!1045857 call!206301)))

(declare-fun c!500575 () Bool)

(declare-fun call!206303 () Bool)

(assert (=> b!3030196 (= c!500575 call!206303)))

(declare-fun b!3030197 () Bool)

(declare-fun e!1900534 () Regex!9425)

(assert (=> b!3030197 (= e!1900534 lt!1045862)))

(declare-fun b!3030198 () Bool)

(declare-fun e!1900545 () Regex!9425)

(declare-fun lt!1045858 () Regex!9425)

(declare-fun lt!1045861 () Regex!9425)

(assert (=> b!3030198 (= e!1900545 (Concat!14746 lt!1045858 lt!1045861))))

(declare-fun b!3030199 () Bool)

(declare-fun c!500582 () Bool)

(assert (=> b!3030199 (= c!500582 ((_ is EmptyExpr!9425) (regOne!19363 r!17423)))))

(declare-fun e!1900536 () Regex!9425)

(declare-fun e!1900532 () Regex!9425)

(assert (=> b!3030199 (= e!1900536 e!1900532)))

(declare-fun b!3030200 () Bool)

(declare-fun e!1900543 () Regex!9425)

(assert (=> b!3030200 (= e!1900543 e!1900545)))

(declare-fun c!500577 () Bool)

(declare-fun isEmptyExpr!499 (Regex!9425) Bool)

(assert (=> b!3030200 (= c!500577 (isEmptyExpr!499 lt!1045861))))

(declare-fun b!3030201 () Bool)

(declare-fun e!1900540 () Regex!9425)

(assert (=> b!3030201 (= e!1900540 EmptyLang!9425)))

(declare-fun b!3030202 () Bool)

(declare-fun e!1900537 () Regex!9425)

(assert (=> b!3030202 (= e!1900537 EmptyExpr!9425)))

(declare-fun d!851014 () Bool)

(declare-fun e!1900544 () Bool)

(assert (=> d!851014 e!1900544))

(declare-fun res!1246871 () Bool)

(assert (=> d!851014 (=> (not res!1246871) (not e!1900544))))

(declare-fun lt!1045859 () Regex!9425)

(assert (=> d!851014 (= res!1246871 (validRegex!4158 lt!1045859))))

(assert (=> d!851014 (= lt!1045859 e!1900540)))

(declare-fun c!500579 () Bool)

(assert (=> d!851014 (= c!500579 ((_ is EmptyLang!9425) (regOne!19363 r!17423)))))

(assert (=> d!851014 (validRegex!4158 (regOne!19363 r!17423))))

(assert (=> d!851014 (= (simplify!396 (regOne!19363 r!17423)) lt!1045859)))

(declare-fun b!3030203 () Bool)

(assert (=> b!3030203 (= e!1900543 lt!1045861)))

(declare-fun b!3030204 () Bool)

(declare-fun c!500584 () Bool)

(declare-fun e!1900538 () Bool)

(assert (=> b!3030204 (= c!500584 e!1900538)))

(declare-fun res!1246872 () Bool)

(assert (=> b!3030204 (=> res!1246872 e!1900538)))

(declare-fun call!206302 () Bool)

(assert (=> b!3030204 (= res!1246872 call!206302)))

(declare-fun lt!1045860 () Regex!9425)

(declare-fun call!206304 () Regex!9425)

(assert (=> b!3030204 (= lt!1045860 call!206304)))

(declare-fun e!1900542 () Regex!9425)

(assert (=> b!3030204 (= e!1900542 e!1900537)))

(declare-fun c!500581 () Bool)

(declare-fun bm!206294 () Bool)

(declare-fun call!206300 () Bool)

(assert (=> bm!206294 (= call!206300 (isEmptyExpr!499 (ite c!500581 lt!1045860 lt!1045858)))))

(declare-fun b!3030205 () Bool)

(declare-fun c!500578 () Bool)

(declare-fun call!206305 () Bool)

(assert (=> b!3030205 (= c!500578 call!206305)))

(assert (=> b!3030205 (= e!1900541 e!1900534)))

(declare-fun b!3030206 () Bool)

(assert (=> b!3030206 (= e!1900541 lt!1045857)))

(declare-fun b!3030207 () Bool)

(assert (=> b!3030207 (= e!1900536 (regOne!19363 r!17423))))

(declare-fun b!3030208 () Bool)

(assert (=> b!3030208 (= e!1900544 (= (nullable!3075 lt!1045859) (nullable!3075 (regOne!19363 r!17423))))))

(declare-fun b!3030209 () Bool)

(declare-fun e!1900533 () Regex!9425)

(assert (=> b!3030209 (= e!1900533 EmptyLang!9425)))

(declare-fun bm!206295 () Bool)

(declare-fun c!500580 () Bool)

(declare-fun isEmptyLang!494 (Regex!9425) Bool)

(assert (=> bm!206295 (= call!206302 (isEmptyLang!494 (ite c!500581 lt!1045860 (ite c!500580 lt!1045862 lt!1045861))))))

(declare-fun bm!206296 () Bool)

(assert (=> bm!206296 (= call!206305 (isEmptyLang!494 (ite c!500580 lt!1045857 lt!1045858)))))

(declare-fun b!3030210 () Bool)

(assert (=> b!3030210 (= e!1900532 e!1900542)))

(assert (=> b!3030210 (= c!500581 ((_ is Star!9425) (regOne!19363 r!17423)))))

(declare-fun b!3030211 () Bool)

(assert (=> b!3030211 (= e!1900540 e!1900536)))

(declare-fun c!500583 () Bool)

(assert (=> b!3030211 (= c!500583 ((_ is ElementMatch!9425) (regOne!19363 r!17423)))))

(declare-fun bm!206297 () Bool)

(assert (=> bm!206297 (= call!206299 (simplify!396 (ite c!500580 (regOne!19363 (regOne!19363 r!17423)) (regTwo!19362 (regOne!19363 r!17423)))))))

(declare-fun b!3030212 () Bool)

(assert (=> b!3030212 (= e!1900539 e!1900533)))

(assert (=> b!3030212 (= lt!1045858 call!206301)))

(assert (=> b!3030212 (= lt!1045861 call!206299)))

(declare-fun res!1246873 () Bool)

(assert (=> b!3030212 (= res!1246873 call!206305)))

(declare-fun e!1900535 () Bool)

(assert (=> b!3030212 (=> res!1246873 e!1900535)))

(declare-fun c!500574 () Bool)

(assert (=> b!3030212 (= c!500574 e!1900535)))

(declare-fun b!3030213 () Bool)

(assert (=> b!3030213 (= e!1900538 call!206300)))

(declare-fun b!3030214 () Bool)

(assert (=> b!3030214 (= e!1900545 lt!1045858)))

(declare-fun b!3030215 () Bool)

(assert (=> b!3030215 (= e!1900532 EmptyExpr!9425)))

(declare-fun b!3030216 () Bool)

(assert (=> b!3030216 (= c!500580 ((_ is Union!9425) (regOne!19363 r!17423)))))

(assert (=> b!3030216 (= e!1900542 e!1900539)))

(declare-fun b!3030217 () Bool)

(assert (=> b!3030217 (= e!1900534 (Union!9425 lt!1045862 lt!1045857))))

(declare-fun b!3030218 () Bool)

(declare-fun c!500576 () Bool)

(assert (=> b!3030218 (= c!500576 call!206300)))

(assert (=> b!3030218 (= e!1900533 e!1900543)))

(declare-fun bm!206298 () Bool)

(assert (=> bm!206298 (= call!206304 (simplify!396 (ite c!500581 (reg!9754 (regOne!19363 r!17423)) (ite c!500580 (regTwo!19363 (regOne!19363 r!17423)) (regOne!19362 (regOne!19363 r!17423))))))))

(declare-fun b!3030219 () Bool)

(assert (=> b!3030219 (= e!1900535 call!206303)))

(declare-fun bm!206299 () Bool)

(assert (=> bm!206299 (= call!206301 call!206304)))

(declare-fun bm!206300 () Bool)

(assert (=> bm!206300 (= call!206303 call!206302)))

(declare-fun b!3030220 () Bool)

(assert (=> b!3030220 (= e!1900537 (Star!9425 lt!1045860))))

(assert (= (and d!851014 c!500579) b!3030201))

(assert (= (and d!851014 (not c!500579)) b!3030211))

(assert (= (and b!3030211 c!500583) b!3030207))

(assert (= (and b!3030211 (not c!500583)) b!3030199))

(assert (= (and b!3030199 c!500582) b!3030215))

(assert (= (and b!3030199 (not c!500582)) b!3030210))

(assert (= (and b!3030210 c!500581) b!3030204))

(assert (= (and b!3030210 (not c!500581)) b!3030216))

(assert (= (and b!3030204 (not res!1246872)) b!3030213))

(assert (= (and b!3030204 c!500584) b!3030202))

(assert (= (and b!3030204 (not c!500584)) b!3030220))

(assert (= (and b!3030216 c!500580) b!3030196))

(assert (= (and b!3030216 (not c!500580)) b!3030212))

(assert (= (and b!3030196 c!500575) b!3030206))

(assert (= (and b!3030196 (not c!500575)) b!3030205))

(assert (= (and b!3030205 c!500578) b!3030197))

(assert (= (and b!3030205 (not c!500578)) b!3030217))

(assert (= (and b!3030212 (not res!1246873)) b!3030219))

(assert (= (and b!3030212 c!500574) b!3030209))

(assert (= (and b!3030212 (not c!500574)) b!3030218))

(assert (= (and b!3030218 c!500576) b!3030203))

(assert (= (and b!3030218 (not c!500576)) b!3030200))

(assert (= (and b!3030200 c!500577) b!3030214))

(assert (= (and b!3030200 (not c!500577)) b!3030198))

(assert (= (or b!3030196 b!3030212) bm!206297))

(assert (= (or b!3030196 b!3030212) bm!206299))

(assert (= (or b!3030196 b!3030219) bm!206300))

(assert (= (or b!3030205 b!3030212) bm!206296))

(assert (= (or b!3030213 b!3030218) bm!206294))

(assert (= (or b!3030204 bm!206299) bm!206298))

(assert (= (or b!3030204 bm!206300) bm!206295))

(assert (= (and d!851014 res!1246871) b!3030208))

(declare-fun m!3367481 () Bool)

(assert (=> b!3030200 m!3367481))

(declare-fun m!3367483 () Bool)

(assert (=> b!3030208 m!3367483))

(assert (=> b!3030208 m!3367459))

(declare-fun m!3367485 () Bool)

(assert (=> bm!206296 m!3367485))

(declare-fun m!3367487 () Bool)

(assert (=> bm!206297 m!3367487))

(declare-fun m!3367489 () Bool)

(assert (=> d!851014 m!3367489))

(assert (=> d!851014 m!3367447))

(declare-fun m!3367491 () Bool)

(assert (=> bm!206295 m!3367491))

(declare-fun m!3367493 () Bool)

(assert (=> bm!206294 m!3367493))

(declare-fun m!3367495 () Bool)

(assert (=> bm!206298 m!3367495))

(assert (=> b!3029965 d!851014))

(declare-fun d!851016 () Bool)

(assert (=> d!851016 (= (matchR!4307 (regOne!19363 r!17423) s!11993) (matchR!4307 (simplify!396 (regOne!19363 r!17423)) s!11993))))

(declare-fun lt!1045865 () Unit!49273)

(declare-fun choose!17969 (Regex!9425 List!35290) Unit!49273)

(assert (=> d!851016 (= lt!1045865 (choose!17969 (regOne!19363 r!17423) s!11993))))

(assert (=> d!851016 (validRegex!4158 (regOne!19363 r!17423))))

(assert (=> d!851016 (= (lemmaSimplifySound!244 (regOne!19363 r!17423) s!11993) lt!1045865)))

(declare-fun bs!530822 () Bool)

(assert (= bs!530822 d!851016))

(assert (=> bs!530822 m!3367415))

(assert (=> bs!530822 m!3367421))

(declare-fun m!3367497 () Bool)

(assert (=> bs!530822 m!3367497))

(assert (=> bs!530822 m!3367421))

(assert (=> bs!530822 m!3367447))

(declare-fun m!3367499 () Bool)

(assert (=> bs!530822 m!3367499))

(assert (=> b!3029965 d!851016))

(declare-fun d!851018 () Bool)

(declare-fun e!1900549 () Bool)

(assert (=> d!851018 e!1900549))

(declare-fun c!500586 () Bool)

(assert (=> d!851018 (= c!500586 ((_ is EmptyExpr!9425) lt!1045828))))

(declare-fun lt!1045866 () Bool)

(declare-fun e!1900548 () Bool)

(assert (=> d!851018 (= lt!1045866 e!1900548)))

(declare-fun c!500587 () Bool)

(assert (=> d!851018 (= c!500587 (isEmpty!19466 s!11993))))

(assert (=> d!851018 (validRegex!4158 lt!1045828)))

(assert (=> d!851018 (= (matchR!4307 lt!1045828 s!11993) lt!1045866)))

(declare-fun b!3030221 () Bool)

(declare-fun res!1246874 () Bool)

(declare-fun e!1900547 () Bool)

(assert (=> b!3030221 (=> res!1246874 e!1900547)))

(declare-fun e!1900552 () Bool)

(assert (=> b!3030221 (= res!1246874 e!1900552)))

(declare-fun res!1246880 () Bool)

(assert (=> b!3030221 (=> (not res!1246880) (not e!1900552))))

(assert (=> b!3030221 (= res!1246880 lt!1045866)))

(declare-fun b!3030222 () Bool)

(declare-fun e!1900550 () Bool)

(assert (=> b!3030222 (= e!1900549 e!1900550)))

(declare-fun c!500585 () Bool)

(assert (=> b!3030222 (= c!500585 ((_ is EmptyLang!9425) lt!1045828))))

(declare-fun b!3030223 () Bool)

(declare-fun e!1900546 () Bool)

(assert (=> b!3030223 (= e!1900546 (not (= (head!6731 s!11993) (c!500513 lt!1045828))))))

(declare-fun bm!206301 () Bool)

(declare-fun call!206306 () Bool)

(assert (=> bm!206301 (= call!206306 (isEmpty!19466 s!11993))))

(declare-fun b!3030224 () Bool)

(assert (=> b!3030224 (= e!1900552 (= (head!6731 s!11993) (c!500513 lt!1045828)))))

(declare-fun b!3030225 () Bool)

(declare-fun res!1246881 () Bool)

(assert (=> b!3030225 (=> (not res!1246881) (not e!1900552))))

(assert (=> b!3030225 (= res!1246881 (not call!206306))))

(declare-fun b!3030226 () Bool)

(assert (=> b!3030226 (= e!1900548 (matchR!4307 (derivativeStep!2672 lt!1045828 (head!6731 s!11993)) (tail!4957 s!11993)))))

(declare-fun b!3030227 () Bool)

(declare-fun e!1900551 () Bool)

(assert (=> b!3030227 (= e!1900551 e!1900546)))

(declare-fun res!1246879 () Bool)

(assert (=> b!3030227 (=> res!1246879 e!1900546)))

(assert (=> b!3030227 (= res!1246879 call!206306)))

(declare-fun b!3030228 () Bool)

(assert (=> b!3030228 (= e!1900549 (= lt!1045866 call!206306))))

(declare-fun b!3030229 () Bool)

(assert (=> b!3030229 (= e!1900548 (nullable!3075 lt!1045828))))

(declare-fun b!3030230 () Bool)

(declare-fun res!1246877 () Bool)

(assert (=> b!3030230 (=> res!1246877 e!1900547)))

(assert (=> b!3030230 (= res!1246877 (not ((_ is ElementMatch!9425) lt!1045828)))))

(assert (=> b!3030230 (= e!1900550 e!1900547)))

(declare-fun b!3030231 () Bool)

(declare-fun res!1246876 () Bool)

(assert (=> b!3030231 (=> (not res!1246876) (not e!1900552))))

(assert (=> b!3030231 (= res!1246876 (isEmpty!19466 (tail!4957 s!11993)))))

(declare-fun b!3030232 () Bool)

(assert (=> b!3030232 (= e!1900547 e!1900551)))

(declare-fun res!1246878 () Bool)

(assert (=> b!3030232 (=> (not res!1246878) (not e!1900551))))

(assert (=> b!3030232 (= res!1246878 (not lt!1045866))))

(declare-fun b!3030233 () Bool)

(assert (=> b!3030233 (= e!1900550 (not lt!1045866))))

(declare-fun b!3030234 () Bool)

(declare-fun res!1246875 () Bool)

(assert (=> b!3030234 (=> res!1246875 e!1900546)))

(assert (=> b!3030234 (= res!1246875 (not (isEmpty!19466 (tail!4957 s!11993))))))

(assert (= (and d!851018 c!500587) b!3030229))

(assert (= (and d!851018 (not c!500587)) b!3030226))

(assert (= (and d!851018 c!500586) b!3030228))

(assert (= (and d!851018 (not c!500586)) b!3030222))

(assert (= (and b!3030222 c!500585) b!3030233))

(assert (= (and b!3030222 (not c!500585)) b!3030230))

(assert (= (and b!3030230 (not res!1246877)) b!3030221))

(assert (= (and b!3030221 res!1246880) b!3030225))

(assert (= (and b!3030225 res!1246881) b!3030231))

(assert (= (and b!3030231 res!1246876) b!3030224))

(assert (= (and b!3030221 (not res!1246874)) b!3030232))

(assert (= (and b!3030232 res!1246878) b!3030227))

(assert (= (and b!3030227 (not res!1246879)) b!3030234))

(assert (= (and b!3030234 (not res!1246875)) b!3030223))

(assert (= (or b!3030228 b!3030225 b!3030227) bm!206301))

(assert (=> d!851018 m!3367445))

(assert (=> d!851018 m!3367425))

(assert (=> b!3030231 m!3367449))

(assert (=> b!3030231 m!3367449))

(assert (=> b!3030231 m!3367451))

(assert (=> b!3030224 m!3367453))

(assert (=> bm!206301 m!3367445))

(assert (=> b!3030223 m!3367453))

(assert (=> b!3030234 m!3367449))

(assert (=> b!3030234 m!3367449))

(assert (=> b!3030234 m!3367451))

(assert (=> b!3030226 m!3367453))

(assert (=> b!3030226 m!3367453))

(declare-fun m!3367501 () Bool)

(assert (=> b!3030226 m!3367501))

(assert (=> b!3030226 m!3367449))

(assert (=> b!3030226 m!3367501))

(assert (=> b!3030226 m!3367449))

(declare-fun m!3367503 () Bool)

(assert (=> b!3030226 m!3367503))

(declare-fun m!3367505 () Bool)

(assert (=> b!3030229 m!3367505))

(assert (=> b!3029965 d!851018))

(declare-fun b!3030235 () Bool)

(declare-fun e!1900560 () Regex!9425)

(declare-fun e!1900562 () Regex!9425)

(assert (=> b!3030235 (= e!1900560 e!1900562)))

(declare-fun lt!1045872 () Regex!9425)

(declare-fun call!206307 () Regex!9425)

(assert (=> b!3030235 (= lt!1045872 call!206307)))

(declare-fun lt!1045867 () Regex!9425)

(declare-fun call!206309 () Regex!9425)

(assert (=> b!3030235 (= lt!1045867 call!206309)))

(declare-fun c!500589 () Bool)

(declare-fun call!206311 () Bool)

(assert (=> b!3030235 (= c!500589 call!206311)))

(declare-fun b!3030236 () Bool)

(declare-fun e!1900555 () Regex!9425)

(assert (=> b!3030236 (= e!1900555 lt!1045872)))

(declare-fun b!3030237 () Bool)

(declare-fun e!1900566 () Regex!9425)

(declare-fun lt!1045868 () Regex!9425)

(declare-fun lt!1045871 () Regex!9425)

(assert (=> b!3030237 (= e!1900566 (Concat!14746 lt!1045868 lt!1045871))))

(declare-fun b!3030238 () Bool)

(declare-fun c!500596 () Bool)

(assert (=> b!3030238 (= c!500596 ((_ is EmptyExpr!9425) (regTwo!19363 r!17423)))))

(declare-fun e!1900557 () Regex!9425)

(declare-fun e!1900553 () Regex!9425)

(assert (=> b!3030238 (= e!1900557 e!1900553)))

(declare-fun b!3030239 () Bool)

(declare-fun e!1900564 () Regex!9425)

(assert (=> b!3030239 (= e!1900564 e!1900566)))

(declare-fun c!500591 () Bool)

(assert (=> b!3030239 (= c!500591 (isEmptyExpr!499 lt!1045871))))

(declare-fun b!3030240 () Bool)

(declare-fun e!1900561 () Regex!9425)

(assert (=> b!3030240 (= e!1900561 EmptyLang!9425)))

(declare-fun b!3030241 () Bool)

(declare-fun e!1900558 () Regex!9425)

(assert (=> b!3030241 (= e!1900558 EmptyExpr!9425)))

(declare-fun d!851020 () Bool)

(declare-fun e!1900565 () Bool)

(assert (=> d!851020 e!1900565))

(declare-fun res!1246882 () Bool)

(assert (=> d!851020 (=> (not res!1246882) (not e!1900565))))

(declare-fun lt!1045869 () Regex!9425)

(assert (=> d!851020 (= res!1246882 (validRegex!4158 lt!1045869))))

(assert (=> d!851020 (= lt!1045869 e!1900561)))

(declare-fun c!500593 () Bool)

(assert (=> d!851020 (= c!500593 ((_ is EmptyLang!9425) (regTwo!19363 r!17423)))))

(assert (=> d!851020 (validRegex!4158 (regTwo!19363 r!17423))))

(assert (=> d!851020 (= (simplify!396 (regTwo!19363 r!17423)) lt!1045869)))

(declare-fun b!3030242 () Bool)

(assert (=> b!3030242 (= e!1900564 lt!1045871)))

(declare-fun b!3030243 () Bool)

(declare-fun c!500598 () Bool)

(declare-fun e!1900559 () Bool)

(assert (=> b!3030243 (= c!500598 e!1900559)))

(declare-fun res!1246883 () Bool)

(assert (=> b!3030243 (=> res!1246883 e!1900559)))

(declare-fun call!206310 () Bool)

(assert (=> b!3030243 (= res!1246883 call!206310)))

(declare-fun lt!1045870 () Regex!9425)

(declare-fun call!206312 () Regex!9425)

(assert (=> b!3030243 (= lt!1045870 call!206312)))

(declare-fun e!1900563 () Regex!9425)

(assert (=> b!3030243 (= e!1900563 e!1900558)))

(declare-fun bm!206302 () Bool)

(declare-fun call!206308 () Bool)

(declare-fun c!500595 () Bool)

(assert (=> bm!206302 (= call!206308 (isEmptyExpr!499 (ite c!500595 lt!1045870 lt!1045868)))))

(declare-fun b!3030244 () Bool)

(declare-fun c!500592 () Bool)

(declare-fun call!206313 () Bool)

(assert (=> b!3030244 (= c!500592 call!206313)))

(assert (=> b!3030244 (= e!1900562 e!1900555)))

(declare-fun b!3030245 () Bool)

(assert (=> b!3030245 (= e!1900562 lt!1045867)))

(declare-fun b!3030246 () Bool)

(assert (=> b!3030246 (= e!1900557 (regTwo!19363 r!17423))))

(declare-fun b!3030247 () Bool)

(assert (=> b!3030247 (= e!1900565 (= (nullable!3075 lt!1045869) (nullable!3075 (regTwo!19363 r!17423))))))

(declare-fun b!3030248 () Bool)

(declare-fun e!1900554 () Regex!9425)

(assert (=> b!3030248 (= e!1900554 EmptyLang!9425)))

(declare-fun c!500594 () Bool)

(declare-fun bm!206303 () Bool)

(assert (=> bm!206303 (= call!206310 (isEmptyLang!494 (ite c!500595 lt!1045870 (ite c!500594 lt!1045872 lt!1045871))))))

(declare-fun bm!206304 () Bool)

(assert (=> bm!206304 (= call!206313 (isEmptyLang!494 (ite c!500594 lt!1045867 lt!1045868)))))

(declare-fun b!3030249 () Bool)

(assert (=> b!3030249 (= e!1900553 e!1900563)))

(assert (=> b!3030249 (= c!500595 ((_ is Star!9425) (regTwo!19363 r!17423)))))

(declare-fun b!3030250 () Bool)

(assert (=> b!3030250 (= e!1900561 e!1900557)))

(declare-fun c!500597 () Bool)

(assert (=> b!3030250 (= c!500597 ((_ is ElementMatch!9425) (regTwo!19363 r!17423)))))

(declare-fun bm!206305 () Bool)

(assert (=> bm!206305 (= call!206307 (simplify!396 (ite c!500594 (regOne!19363 (regTwo!19363 r!17423)) (regTwo!19362 (regTwo!19363 r!17423)))))))

(declare-fun b!3030251 () Bool)

(assert (=> b!3030251 (= e!1900560 e!1900554)))

(assert (=> b!3030251 (= lt!1045868 call!206309)))

(assert (=> b!3030251 (= lt!1045871 call!206307)))

(declare-fun res!1246884 () Bool)

(assert (=> b!3030251 (= res!1246884 call!206313)))

(declare-fun e!1900556 () Bool)

(assert (=> b!3030251 (=> res!1246884 e!1900556)))

(declare-fun c!500588 () Bool)

(assert (=> b!3030251 (= c!500588 e!1900556)))

(declare-fun b!3030252 () Bool)

(assert (=> b!3030252 (= e!1900559 call!206308)))

(declare-fun b!3030253 () Bool)

(assert (=> b!3030253 (= e!1900566 lt!1045868)))

(declare-fun b!3030254 () Bool)

(assert (=> b!3030254 (= e!1900553 EmptyExpr!9425)))

(declare-fun b!3030255 () Bool)

(assert (=> b!3030255 (= c!500594 ((_ is Union!9425) (regTwo!19363 r!17423)))))

(assert (=> b!3030255 (= e!1900563 e!1900560)))

(declare-fun b!3030256 () Bool)

(assert (=> b!3030256 (= e!1900555 (Union!9425 lt!1045872 lt!1045867))))

(declare-fun b!3030257 () Bool)

(declare-fun c!500590 () Bool)

(assert (=> b!3030257 (= c!500590 call!206308)))

(assert (=> b!3030257 (= e!1900554 e!1900564)))

(declare-fun bm!206306 () Bool)

(assert (=> bm!206306 (= call!206312 (simplify!396 (ite c!500595 (reg!9754 (regTwo!19363 r!17423)) (ite c!500594 (regTwo!19363 (regTwo!19363 r!17423)) (regOne!19362 (regTwo!19363 r!17423))))))))

(declare-fun b!3030258 () Bool)

(assert (=> b!3030258 (= e!1900556 call!206311)))

(declare-fun bm!206307 () Bool)

(assert (=> bm!206307 (= call!206309 call!206312)))

(declare-fun bm!206308 () Bool)

(assert (=> bm!206308 (= call!206311 call!206310)))

(declare-fun b!3030259 () Bool)

(assert (=> b!3030259 (= e!1900558 (Star!9425 lt!1045870))))

(assert (= (and d!851020 c!500593) b!3030240))

(assert (= (and d!851020 (not c!500593)) b!3030250))

(assert (= (and b!3030250 c!500597) b!3030246))

(assert (= (and b!3030250 (not c!500597)) b!3030238))

(assert (= (and b!3030238 c!500596) b!3030254))

(assert (= (and b!3030238 (not c!500596)) b!3030249))

(assert (= (and b!3030249 c!500595) b!3030243))

(assert (= (and b!3030249 (not c!500595)) b!3030255))

(assert (= (and b!3030243 (not res!1246883)) b!3030252))

(assert (= (and b!3030243 c!500598) b!3030241))

(assert (= (and b!3030243 (not c!500598)) b!3030259))

(assert (= (and b!3030255 c!500594) b!3030235))

(assert (= (and b!3030255 (not c!500594)) b!3030251))

(assert (= (and b!3030235 c!500589) b!3030245))

(assert (= (and b!3030235 (not c!500589)) b!3030244))

(assert (= (and b!3030244 c!500592) b!3030236))

(assert (= (and b!3030244 (not c!500592)) b!3030256))

(assert (= (and b!3030251 (not res!1246884)) b!3030258))

(assert (= (and b!3030251 c!500588) b!3030248))

(assert (= (and b!3030251 (not c!500588)) b!3030257))

(assert (= (and b!3030257 c!500590) b!3030242))

(assert (= (and b!3030257 (not c!500590)) b!3030239))

(assert (= (and b!3030239 c!500591) b!3030253))

(assert (= (and b!3030239 (not c!500591)) b!3030237))

(assert (= (or b!3030235 b!3030251) bm!206305))

(assert (= (or b!3030235 b!3030251) bm!206307))

(assert (= (or b!3030235 b!3030258) bm!206308))

(assert (= (or b!3030244 b!3030251) bm!206304))

(assert (= (or b!3030252 b!3030257) bm!206302))

(assert (= (or b!3030243 bm!206307) bm!206306))

(assert (= (or b!3030243 bm!206308) bm!206303))

(assert (= (and d!851020 res!1246882) b!3030247))

(declare-fun m!3367507 () Bool)

(assert (=> b!3030239 m!3367507))

(declare-fun m!3367509 () Bool)

(assert (=> b!3030247 m!3367509))

(declare-fun m!3367511 () Bool)

(assert (=> b!3030247 m!3367511))

(declare-fun m!3367513 () Bool)

(assert (=> bm!206304 m!3367513))

(declare-fun m!3367515 () Bool)

(assert (=> bm!206305 m!3367515))

(declare-fun m!3367517 () Bool)

(assert (=> d!851020 m!3367517))

(assert (=> d!851020 m!3367467))

(declare-fun m!3367519 () Bool)

(assert (=> bm!206303 m!3367519))

(declare-fun m!3367521 () Bool)

(assert (=> bm!206302 m!3367521))

(declare-fun m!3367523 () Bool)

(assert (=> bm!206306 m!3367523))

(assert (=> b!3029965 d!851020))

(declare-fun b!3030516 () Bool)

(assert (=> b!3030516 true))

(assert (=> b!3030516 true))

(declare-fun bs!530826 () Bool)

(declare-fun b!3030518 () Bool)

(assert (= bs!530826 (and b!3030518 b!3030516)))

(declare-fun lambda!113178 () Int)

(declare-fun lambda!113177 () Int)

(assert (=> bs!530826 (not (= lambda!113178 lambda!113177))))

(assert (=> b!3030518 true))

(assert (=> b!3030518 true))

(declare-fun b!3030512 () Bool)

(declare-fun e!1900701 () Bool)

(declare-fun e!1900702 () Bool)

(assert (=> b!3030512 (= e!1900701 e!1900702)))

(declare-fun res!1246960 () Bool)

(assert (=> b!3030512 (= res!1246960 (not ((_ is EmptyLang!9425) r!17423)))))

(assert (=> b!3030512 (=> (not res!1246960) (not e!1900702))))

(declare-fun b!3030513 () Bool)

(declare-fun res!1246962 () Bool)

(declare-fun e!1900703 () Bool)

(assert (=> b!3030513 (=> res!1246962 e!1900703)))

(declare-fun call!206362 () Bool)

(assert (=> b!3030513 (= res!1246962 call!206362)))

(declare-fun e!1900697 () Bool)

(assert (=> b!3030513 (= e!1900697 e!1900703)))

(declare-fun d!851022 () Bool)

(declare-fun c!500668 () Bool)

(assert (=> d!851022 (= c!500668 ((_ is EmptyExpr!9425) r!17423))))

(assert (=> d!851022 (= (matchRSpec!1562 r!17423 s!11993) e!1900701)))

(declare-fun b!3030514 () Bool)

(declare-fun e!1900698 () Bool)

(assert (=> b!3030514 (= e!1900698 (= s!11993 (Cons!35166 (c!500513 r!17423) Nil!35166)))))

(declare-fun b!3030515 () Bool)

(declare-fun e!1900700 () Bool)

(assert (=> b!3030515 (= e!1900700 (matchRSpec!1562 (regTwo!19363 r!17423) s!11993))))

(declare-fun call!206361 () Bool)

(assert (=> b!3030516 (= e!1900703 call!206361)))

(declare-fun b!3030517 () Bool)

(declare-fun e!1900699 () Bool)

(assert (=> b!3030517 (= e!1900699 e!1900700)))

(declare-fun res!1246961 () Bool)

(assert (=> b!3030517 (= res!1246961 (matchRSpec!1562 (regOne!19363 r!17423) s!11993))))

(assert (=> b!3030517 (=> res!1246961 e!1900700)))

(assert (=> b!3030518 (= e!1900697 call!206361)))

(declare-fun b!3030519 () Bool)

(declare-fun c!500671 () Bool)

(assert (=> b!3030519 (= c!500671 ((_ is ElementMatch!9425) r!17423))))

(assert (=> b!3030519 (= e!1900702 e!1900698)))

(declare-fun b!3030520 () Bool)

(assert (=> b!3030520 (= e!1900699 e!1900697)))

(declare-fun c!500669 () Bool)

(assert (=> b!3030520 (= c!500669 ((_ is Star!9425) r!17423))))

(declare-fun b!3030521 () Bool)

(declare-fun c!500670 () Bool)

(assert (=> b!3030521 (= c!500670 ((_ is Union!9425) r!17423))))

(assert (=> b!3030521 (= e!1900698 e!1900699)))

(declare-fun bm!206356 () Bool)

(assert (=> bm!206356 (= call!206362 (isEmpty!19466 s!11993))))

(declare-fun bm!206357 () Bool)

(declare-fun Exists!1691 (Int) Bool)

(assert (=> bm!206357 (= call!206361 (Exists!1691 (ite c!500669 lambda!113177 lambda!113178)))))

(declare-fun b!3030522 () Bool)

(assert (=> b!3030522 (= e!1900701 call!206362)))

(assert (= (and d!851022 c!500668) b!3030522))

(assert (= (and d!851022 (not c!500668)) b!3030512))

(assert (= (and b!3030512 res!1246960) b!3030519))

(assert (= (and b!3030519 c!500671) b!3030514))

(assert (= (and b!3030519 (not c!500671)) b!3030521))

(assert (= (and b!3030521 c!500670) b!3030517))

(assert (= (and b!3030521 (not c!500670)) b!3030520))

(assert (= (and b!3030517 (not res!1246961)) b!3030515))

(assert (= (and b!3030520 c!500669) b!3030513))

(assert (= (and b!3030520 (not c!500669)) b!3030518))

(assert (= (and b!3030513 (not res!1246962)) b!3030516))

(assert (= (or b!3030516 b!3030518) bm!206357))

(assert (= (or b!3030522 b!3030513) bm!206356))

(declare-fun m!3367599 () Bool)

(assert (=> b!3030515 m!3367599))

(declare-fun m!3367601 () Bool)

(assert (=> b!3030517 m!3367601))

(assert (=> bm!206356 m!3367445))

(declare-fun m!3367603 () Bool)

(assert (=> bm!206357 m!3367603))

(assert (=> b!3029967 d!851022))

(declare-fun d!851042 () Bool)

(declare-fun e!1900707 () Bool)

(assert (=> d!851042 e!1900707))

(declare-fun c!500673 () Bool)

(assert (=> d!851042 (= c!500673 ((_ is EmptyExpr!9425) r!17423))))

(declare-fun lt!1045906 () Bool)

(declare-fun e!1900706 () Bool)

(assert (=> d!851042 (= lt!1045906 e!1900706)))

(declare-fun c!500674 () Bool)

(assert (=> d!851042 (= c!500674 (isEmpty!19466 s!11993))))

(assert (=> d!851042 (validRegex!4158 r!17423)))

(assert (=> d!851042 (= (matchR!4307 r!17423 s!11993) lt!1045906)))

(declare-fun b!3030527 () Bool)

(declare-fun res!1246963 () Bool)

(declare-fun e!1900705 () Bool)

(assert (=> b!3030527 (=> res!1246963 e!1900705)))

(declare-fun e!1900710 () Bool)

(assert (=> b!3030527 (= res!1246963 e!1900710)))

(declare-fun res!1246969 () Bool)

(assert (=> b!3030527 (=> (not res!1246969) (not e!1900710))))

(assert (=> b!3030527 (= res!1246969 lt!1045906)))

(declare-fun b!3030528 () Bool)

(declare-fun e!1900708 () Bool)

(assert (=> b!3030528 (= e!1900707 e!1900708)))

(declare-fun c!500672 () Bool)

(assert (=> b!3030528 (= c!500672 ((_ is EmptyLang!9425) r!17423))))

(declare-fun b!3030529 () Bool)

(declare-fun e!1900704 () Bool)

(assert (=> b!3030529 (= e!1900704 (not (= (head!6731 s!11993) (c!500513 r!17423))))))

(declare-fun bm!206358 () Bool)

(declare-fun call!206363 () Bool)

(assert (=> bm!206358 (= call!206363 (isEmpty!19466 s!11993))))

(declare-fun b!3030530 () Bool)

(assert (=> b!3030530 (= e!1900710 (= (head!6731 s!11993) (c!500513 r!17423)))))

(declare-fun b!3030531 () Bool)

(declare-fun res!1246970 () Bool)

(assert (=> b!3030531 (=> (not res!1246970) (not e!1900710))))

(assert (=> b!3030531 (= res!1246970 (not call!206363))))

(declare-fun b!3030532 () Bool)

(assert (=> b!3030532 (= e!1900706 (matchR!4307 (derivativeStep!2672 r!17423 (head!6731 s!11993)) (tail!4957 s!11993)))))

(declare-fun b!3030533 () Bool)

(declare-fun e!1900709 () Bool)

(assert (=> b!3030533 (= e!1900709 e!1900704)))

(declare-fun res!1246968 () Bool)

(assert (=> b!3030533 (=> res!1246968 e!1900704)))

(assert (=> b!3030533 (= res!1246968 call!206363)))

(declare-fun b!3030534 () Bool)

(assert (=> b!3030534 (= e!1900707 (= lt!1045906 call!206363))))

(declare-fun b!3030535 () Bool)

(assert (=> b!3030535 (= e!1900706 (nullable!3075 r!17423))))

(declare-fun b!3030536 () Bool)

(declare-fun res!1246966 () Bool)

(assert (=> b!3030536 (=> res!1246966 e!1900705)))

(assert (=> b!3030536 (= res!1246966 (not ((_ is ElementMatch!9425) r!17423)))))

(assert (=> b!3030536 (= e!1900708 e!1900705)))

(declare-fun b!3030537 () Bool)

(declare-fun res!1246965 () Bool)

(assert (=> b!3030537 (=> (not res!1246965) (not e!1900710))))

(assert (=> b!3030537 (= res!1246965 (isEmpty!19466 (tail!4957 s!11993)))))

(declare-fun b!3030538 () Bool)

(assert (=> b!3030538 (= e!1900705 e!1900709)))

(declare-fun res!1246967 () Bool)

(assert (=> b!3030538 (=> (not res!1246967) (not e!1900709))))

(assert (=> b!3030538 (= res!1246967 (not lt!1045906))))

(declare-fun b!3030539 () Bool)

(assert (=> b!3030539 (= e!1900708 (not lt!1045906))))

(declare-fun b!3030540 () Bool)

(declare-fun res!1246964 () Bool)

(assert (=> b!3030540 (=> res!1246964 e!1900704)))

(assert (=> b!3030540 (= res!1246964 (not (isEmpty!19466 (tail!4957 s!11993))))))

(assert (= (and d!851042 c!500674) b!3030535))

(assert (= (and d!851042 (not c!500674)) b!3030532))

(assert (= (and d!851042 c!500673) b!3030534))

(assert (= (and d!851042 (not c!500673)) b!3030528))

(assert (= (and b!3030528 c!500672) b!3030539))

(assert (= (and b!3030528 (not c!500672)) b!3030536))

(assert (= (and b!3030536 (not res!1246966)) b!3030527))

(assert (= (and b!3030527 res!1246969) b!3030531))

(assert (= (and b!3030531 res!1246970) b!3030537))

(assert (= (and b!3030537 res!1246965) b!3030530))

(assert (= (and b!3030527 (not res!1246963)) b!3030538))

(assert (= (and b!3030538 res!1246967) b!3030533))

(assert (= (and b!3030533 (not res!1246968)) b!3030540))

(assert (= (and b!3030540 (not res!1246964)) b!3030529))

(assert (= (or b!3030534 b!3030531 b!3030533) bm!206358))

(assert (=> d!851042 m!3367445))

(assert (=> d!851042 m!3367405))

(assert (=> b!3030537 m!3367449))

(assert (=> b!3030537 m!3367449))

(assert (=> b!3030537 m!3367451))

(assert (=> b!3030530 m!3367453))

(assert (=> bm!206358 m!3367445))

(assert (=> b!3030529 m!3367453))

(assert (=> b!3030540 m!3367449))

(assert (=> b!3030540 m!3367449))

(assert (=> b!3030540 m!3367451))

(assert (=> b!3030532 m!3367453))

(assert (=> b!3030532 m!3367453))

(declare-fun m!3367605 () Bool)

(assert (=> b!3030532 m!3367605))

(assert (=> b!3030532 m!3367449))

(assert (=> b!3030532 m!3367605))

(assert (=> b!3030532 m!3367449))

(declare-fun m!3367607 () Bool)

(assert (=> b!3030532 m!3367607))

(declare-fun m!3367609 () Bool)

(assert (=> b!3030535 m!3367609))

(assert (=> b!3029967 d!851042))

(declare-fun d!851044 () Bool)

(assert (=> d!851044 (= (matchR!4307 r!17423 s!11993) (matchRSpec!1562 r!17423 s!11993))))

(declare-fun lt!1045909 () Unit!49273)

(declare-fun choose!17971 (Regex!9425 List!35290) Unit!49273)

(assert (=> d!851044 (= lt!1045909 (choose!17971 r!17423 s!11993))))

(assert (=> d!851044 (validRegex!4158 r!17423)))

(assert (=> d!851044 (= (mainMatchTheorem!1562 r!17423 s!11993) lt!1045909)))

(declare-fun bs!530827 () Bool)

(assert (= bs!530827 d!851044))

(assert (=> bs!530827 m!3367409))

(assert (=> bs!530827 m!3367407))

(declare-fun m!3367611 () Bool)

(assert (=> bs!530827 m!3367611))

(assert (=> bs!530827 m!3367405))

(assert (=> b!3029967 d!851044))

(declare-fun b!3030541 () Bool)

(declare-fun e!1900714 () Bool)

(declare-fun call!206365 () Bool)

(assert (=> b!3030541 (= e!1900714 call!206365)))

(declare-fun d!851046 () Bool)

(declare-fun res!1246975 () Bool)

(declare-fun e!1900715 () Bool)

(assert (=> d!851046 (=> res!1246975 e!1900715)))

(assert (=> d!851046 (= res!1246975 ((_ is ElementMatch!9425) lt!1045831))))

(assert (=> d!851046 (= (validRegex!4158 lt!1045831) e!1900715)))

(declare-fun b!3030542 () Bool)

(declare-fun e!1900711 () Bool)

(declare-fun call!206366 () Bool)

(assert (=> b!3030542 (= e!1900711 call!206366)))

(declare-fun b!3030543 () Bool)

(declare-fun res!1246972 () Bool)

(declare-fun e!1900717 () Bool)

(assert (=> b!3030543 (=> (not res!1246972) (not e!1900717))))

(assert (=> b!3030543 (= res!1246972 call!206365)))

(declare-fun e!1900716 () Bool)

(assert (=> b!3030543 (= e!1900716 e!1900717)))

(declare-fun b!3030544 () Bool)

(declare-fun res!1246971 () Bool)

(declare-fun e!1900713 () Bool)

(assert (=> b!3030544 (=> res!1246971 e!1900713)))

(assert (=> b!3030544 (= res!1246971 (not ((_ is Concat!14746) lt!1045831)))))

(assert (=> b!3030544 (= e!1900716 e!1900713)))

(declare-fun bm!206359 () Bool)

(declare-fun c!500676 () Bool)

(declare-fun c!500675 () Bool)

(assert (=> bm!206359 (= call!206366 (validRegex!4158 (ite c!500676 (reg!9754 lt!1045831) (ite c!500675 (regOne!19363 lt!1045831) (regTwo!19362 lt!1045831)))))))

(declare-fun b!3030545 () Bool)

(declare-fun e!1900712 () Bool)

(assert (=> b!3030545 (= e!1900712 e!1900711)))

(declare-fun res!1246973 () Bool)

(assert (=> b!3030545 (= res!1246973 (not (nullable!3075 (reg!9754 lt!1045831))))))

(assert (=> b!3030545 (=> (not res!1246973) (not e!1900711))))

(declare-fun bm!206360 () Bool)

(declare-fun call!206364 () Bool)

(assert (=> bm!206360 (= call!206364 (validRegex!4158 (ite c!500675 (regTwo!19363 lt!1045831) (regOne!19362 lt!1045831))))))

(declare-fun bm!206361 () Bool)

(assert (=> bm!206361 (= call!206365 call!206366)))

(declare-fun b!3030546 () Bool)

(assert (=> b!3030546 (= e!1900713 e!1900714)))

(declare-fun res!1246974 () Bool)

(assert (=> b!3030546 (=> (not res!1246974) (not e!1900714))))

(assert (=> b!3030546 (= res!1246974 call!206364)))

(declare-fun b!3030547 () Bool)

(assert (=> b!3030547 (= e!1900717 call!206364)))

(declare-fun b!3030548 () Bool)

(assert (=> b!3030548 (= e!1900712 e!1900716)))

(assert (=> b!3030548 (= c!500675 ((_ is Union!9425) lt!1045831))))

(declare-fun b!3030549 () Bool)

(assert (=> b!3030549 (= e!1900715 e!1900712)))

(assert (=> b!3030549 (= c!500676 ((_ is Star!9425) lt!1045831))))

(assert (= (and d!851046 (not res!1246975)) b!3030549))

(assert (= (and b!3030549 c!500676) b!3030545))

(assert (= (and b!3030549 (not c!500676)) b!3030548))

(assert (= (and b!3030545 res!1246973) b!3030542))

(assert (= (and b!3030548 c!500675) b!3030543))

(assert (= (and b!3030548 (not c!500675)) b!3030544))

(assert (= (and b!3030543 res!1246972) b!3030547))

(assert (= (and b!3030544 (not res!1246971)) b!3030546))

(assert (= (and b!3030546 res!1246974) b!3030541))

(assert (= (or b!3030543 b!3030541) bm!206361))

(assert (= (or b!3030547 b!3030546) bm!206360))

(assert (= (or b!3030542 bm!206361) bm!206359))

(declare-fun m!3367613 () Bool)

(assert (=> bm!206359 m!3367613))

(declare-fun m!3367615 () Bool)

(assert (=> b!3030545 m!3367615))

(declare-fun m!3367617 () Bool)

(assert (=> bm!206360 m!3367617))

(assert (=> b!3029972 d!851046))

(declare-fun d!851048 () Bool)

(declare-fun e!1900721 () Bool)

(assert (=> d!851048 e!1900721))

(declare-fun c!500678 () Bool)

(assert (=> d!851048 (= c!500678 ((_ is EmptyExpr!9425) (regTwo!19363 r!17423)))))

(declare-fun lt!1045910 () Bool)

(declare-fun e!1900720 () Bool)

(assert (=> d!851048 (= lt!1045910 e!1900720)))

(declare-fun c!500679 () Bool)

(assert (=> d!851048 (= c!500679 (isEmpty!19466 s!11993))))

(assert (=> d!851048 (validRegex!4158 (regTwo!19363 r!17423))))

(assert (=> d!851048 (= (matchR!4307 (regTwo!19363 r!17423) s!11993) lt!1045910)))

(declare-fun b!3030550 () Bool)

(declare-fun res!1246976 () Bool)

(declare-fun e!1900719 () Bool)

(assert (=> b!3030550 (=> res!1246976 e!1900719)))

(declare-fun e!1900724 () Bool)

(assert (=> b!3030550 (= res!1246976 e!1900724)))

(declare-fun res!1246982 () Bool)

(assert (=> b!3030550 (=> (not res!1246982) (not e!1900724))))

(assert (=> b!3030550 (= res!1246982 lt!1045910)))

(declare-fun b!3030551 () Bool)

(declare-fun e!1900722 () Bool)

(assert (=> b!3030551 (= e!1900721 e!1900722)))

(declare-fun c!500677 () Bool)

(assert (=> b!3030551 (= c!500677 ((_ is EmptyLang!9425) (regTwo!19363 r!17423)))))

(declare-fun b!3030552 () Bool)

(declare-fun e!1900718 () Bool)

(assert (=> b!3030552 (= e!1900718 (not (= (head!6731 s!11993) (c!500513 (regTwo!19363 r!17423)))))))

(declare-fun bm!206362 () Bool)

(declare-fun call!206367 () Bool)

(assert (=> bm!206362 (= call!206367 (isEmpty!19466 s!11993))))

(declare-fun b!3030553 () Bool)

(assert (=> b!3030553 (= e!1900724 (= (head!6731 s!11993) (c!500513 (regTwo!19363 r!17423))))))

(declare-fun b!3030554 () Bool)

(declare-fun res!1246983 () Bool)

(assert (=> b!3030554 (=> (not res!1246983) (not e!1900724))))

(assert (=> b!3030554 (= res!1246983 (not call!206367))))

(declare-fun b!3030555 () Bool)

(assert (=> b!3030555 (= e!1900720 (matchR!4307 (derivativeStep!2672 (regTwo!19363 r!17423) (head!6731 s!11993)) (tail!4957 s!11993)))))

(declare-fun b!3030556 () Bool)

(declare-fun e!1900723 () Bool)

(assert (=> b!3030556 (= e!1900723 e!1900718)))

(declare-fun res!1246981 () Bool)

(assert (=> b!3030556 (=> res!1246981 e!1900718)))

(assert (=> b!3030556 (= res!1246981 call!206367)))

(declare-fun b!3030557 () Bool)

(assert (=> b!3030557 (= e!1900721 (= lt!1045910 call!206367))))

(declare-fun b!3030558 () Bool)

(assert (=> b!3030558 (= e!1900720 (nullable!3075 (regTwo!19363 r!17423)))))

(declare-fun b!3030559 () Bool)

(declare-fun res!1246979 () Bool)

(assert (=> b!3030559 (=> res!1246979 e!1900719)))

(assert (=> b!3030559 (= res!1246979 (not ((_ is ElementMatch!9425) (regTwo!19363 r!17423))))))

(assert (=> b!3030559 (= e!1900722 e!1900719)))

(declare-fun b!3030560 () Bool)

(declare-fun res!1246978 () Bool)

(assert (=> b!3030560 (=> (not res!1246978) (not e!1900724))))

(assert (=> b!3030560 (= res!1246978 (isEmpty!19466 (tail!4957 s!11993)))))

(declare-fun b!3030561 () Bool)

(assert (=> b!3030561 (= e!1900719 e!1900723)))

(declare-fun res!1246980 () Bool)

(assert (=> b!3030561 (=> (not res!1246980) (not e!1900723))))

(assert (=> b!3030561 (= res!1246980 (not lt!1045910))))

(declare-fun b!3030562 () Bool)

(assert (=> b!3030562 (= e!1900722 (not lt!1045910))))

(declare-fun b!3030563 () Bool)

(declare-fun res!1246977 () Bool)

(assert (=> b!3030563 (=> res!1246977 e!1900718)))

(assert (=> b!3030563 (= res!1246977 (not (isEmpty!19466 (tail!4957 s!11993))))))

(assert (= (and d!851048 c!500679) b!3030558))

(assert (= (and d!851048 (not c!500679)) b!3030555))

(assert (= (and d!851048 c!500678) b!3030557))

(assert (= (and d!851048 (not c!500678)) b!3030551))

(assert (= (and b!3030551 c!500677) b!3030562))

(assert (= (and b!3030551 (not c!500677)) b!3030559))

(assert (= (and b!3030559 (not res!1246979)) b!3030550))

(assert (= (and b!3030550 res!1246982) b!3030554))

(assert (= (and b!3030554 res!1246983) b!3030560))

(assert (= (and b!3030560 res!1246978) b!3030553))

(assert (= (and b!3030550 (not res!1246976)) b!3030561))

(assert (= (and b!3030561 res!1246980) b!3030556))

(assert (= (and b!3030556 (not res!1246981)) b!3030563))

(assert (= (and b!3030563 (not res!1246977)) b!3030552))

(assert (= (or b!3030557 b!3030554 b!3030556) bm!206362))

(assert (=> d!851048 m!3367445))

(assert (=> d!851048 m!3367467))

(assert (=> b!3030560 m!3367449))

(assert (=> b!3030560 m!3367449))

(assert (=> b!3030560 m!3367451))

(assert (=> b!3030553 m!3367453))

(assert (=> bm!206362 m!3367445))

(assert (=> b!3030552 m!3367453))

(assert (=> b!3030563 m!3367449))

(assert (=> b!3030563 m!3367449))

(assert (=> b!3030563 m!3367451))

(assert (=> b!3030555 m!3367453))

(assert (=> b!3030555 m!3367453))

(declare-fun m!3367619 () Bool)

(assert (=> b!3030555 m!3367619))

(assert (=> b!3030555 m!3367449))

(assert (=> b!3030555 m!3367619))

(assert (=> b!3030555 m!3367449))

(declare-fun m!3367621 () Bool)

(assert (=> b!3030555 m!3367621))

(assert (=> b!3030558 m!3367511))

(assert (=> b!3029973 d!851048))

(declare-fun b!3030564 () Bool)

(declare-fun e!1900728 () Bool)

(declare-fun call!206369 () Bool)

(assert (=> b!3030564 (= e!1900728 call!206369)))

(declare-fun d!851050 () Bool)

(declare-fun res!1246988 () Bool)

(declare-fun e!1900729 () Bool)

(assert (=> d!851050 (=> res!1246988 e!1900729)))

(assert (=> d!851050 (= res!1246988 ((_ is ElementMatch!9425) r!17423))))

(assert (=> d!851050 (= (validRegex!4158 r!17423) e!1900729)))

(declare-fun b!3030565 () Bool)

(declare-fun e!1900725 () Bool)

(declare-fun call!206370 () Bool)

(assert (=> b!3030565 (= e!1900725 call!206370)))

(declare-fun b!3030566 () Bool)

(declare-fun res!1246985 () Bool)

(declare-fun e!1900731 () Bool)

(assert (=> b!3030566 (=> (not res!1246985) (not e!1900731))))

(assert (=> b!3030566 (= res!1246985 call!206369)))

(declare-fun e!1900730 () Bool)

(assert (=> b!3030566 (= e!1900730 e!1900731)))

(declare-fun b!3030567 () Bool)

(declare-fun res!1246984 () Bool)

(declare-fun e!1900727 () Bool)

(assert (=> b!3030567 (=> res!1246984 e!1900727)))

(assert (=> b!3030567 (= res!1246984 (not ((_ is Concat!14746) r!17423)))))

(assert (=> b!3030567 (= e!1900730 e!1900727)))

(declare-fun c!500681 () Bool)

(declare-fun bm!206363 () Bool)

(declare-fun c!500680 () Bool)

(assert (=> bm!206363 (= call!206370 (validRegex!4158 (ite c!500681 (reg!9754 r!17423) (ite c!500680 (regOne!19363 r!17423) (regTwo!19362 r!17423)))))))

(declare-fun b!3030568 () Bool)

(declare-fun e!1900726 () Bool)

(assert (=> b!3030568 (= e!1900726 e!1900725)))

(declare-fun res!1246986 () Bool)

(assert (=> b!3030568 (= res!1246986 (not (nullable!3075 (reg!9754 r!17423))))))

(assert (=> b!3030568 (=> (not res!1246986) (not e!1900725))))

(declare-fun bm!206364 () Bool)

(declare-fun call!206368 () Bool)

(assert (=> bm!206364 (= call!206368 (validRegex!4158 (ite c!500680 (regTwo!19363 r!17423) (regOne!19362 r!17423))))))

(declare-fun bm!206365 () Bool)

(assert (=> bm!206365 (= call!206369 call!206370)))

(declare-fun b!3030569 () Bool)

(assert (=> b!3030569 (= e!1900727 e!1900728)))

(declare-fun res!1246987 () Bool)

(assert (=> b!3030569 (=> (not res!1246987) (not e!1900728))))

(assert (=> b!3030569 (= res!1246987 call!206368)))

(declare-fun b!3030570 () Bool)

(assert (=> b!3030570 (= e!1900731 call!206368)))

(declare-fun b!3030571 () Bool)

(assert (=> b!3030571 (= e!1900726 e!1900730)))

(assert (=> b!3030571 (= c!500680 ((_ is Union!9425) r!17423))))

(declare-fun b!3030572 () Bool)

(assert (=> b!3030572 (= e!1900729 e!1900726)))

(assert (=> b!3030572 (= c!500681 ((_ is Star!9425) r!17423))))

(assert (= (and d!851050 (not res!1246988)) b!3030572))

(assert (= (and b!3030572 c!500681) b!3030568))

(assert (= (and b!3030572 (not c!500681)) b!3030571))

(assert (= (and b!3030568 res!1246986) b!3030565))

(assert (= (and b!3030571 c!500680) b!3030566))

(assert (= (and b!3030571 (not c!500680)) b!3030567))

(assert (= (and b!3030566 res!1246985) b!3030570))

(assert (= (and b!3030567 (not res!1246984)) b!3030569))

(assert (= (and b!3030569 res!1246987) b!3030564))

(assert (= (or b!3030566 b!3030564) bm!206365))

(assert (= (or b!3030570 b!3030569) bm!206364))

(assert (= (or b!3030565 bm!206365) bm!206363))

(declare-fun m!3367623 () Bool)

(assert (=> bm!206363 m!3367623))

(declare-fun m!3367625 () Bool)

(assert (=> b!3030568 m!3367625))

(declare-fun m!3367627 () Bool)

(assert (=> bm!206364 m!3367627))

(assert (=> start!290756 d!851050))

(declare-fun e!1900734 () Bool)

(assert (=> b!3029969 (= tp!960492 e!1900734)))

(declare-fun b!3030585 () Bool)

(declare-fun tp!960547 () Bool)

(assert (=> b!3030585 (= e!1900734 tp!960547)))

(declare-fun b!3030586 () Bool)

(declare-fun tp!960546 () Bool)

(declare-fun tp!960550 () Bool)

(assert (=> b!3030586 (= e!1900734 (and tp!960546 tp!960550))))

(declare-fun b!3030583 () Bool)

(assert (=> b!3030583 (= e!1900734 tp_is_empty!16413)))

(declare-fun b!3030584 () Bool)

(declare-fun tp!960548 () Bool)

(declare-fun tp!960549 () Bool)

(assert (=> b!3030584 (= e!1900734 (and tp!960548 tp!960549))))

(assert (= (and b!3029969 ((_ is ElementMatch!9425) (regOne!19363 r!17423))) b!3030583))

(assert (= (and b!3029969 ((_ is Concat!14746) (regOne!19363 r!17423))) b!3030584))

(assert (= (and b!3029969 ((_ is Star!9425) (regOne!19363 r!17423))) b!3030585))

(assert (= (and b!3029969 ((_ is Union!9425) (regOne!19363 r!17423))) b!3030586))

(declare-fun e!1900735 () Bool)

(assert (=> b!3029969 (= tp!960495 e!1900735)))

(declare-fun b!3030589 () Bool)

(declare-fun tp!960552 () Bool)

(assert (=> b!3030589 (= e!1900735 tp!960552)))

(declare-fun b!3030590 () Bool)

(declare-fun tp!960551 () Bool)

(declare-fun tp!960555 () Bool)

(assert (=> b!3030590 (= e!1900735 (and tp!960551 tp!960555))))

(declare-fun b!3030587 () Bool)

(assert (=> b!3030587 (= e!1900735 tp_is_empty!16413)))

(declare-fun b!3030588 () Bool)

(declare-fun tp!960553 () Bool)

(declare-fun tp!960554 () Bool)

(assert (=> b!3030588 (= e!1900735 (and tp!960553 tp!960554))))

(assert (= (and b!3029969 ((_ is ElementMatch!9425) (regTwo!19363 r!17423))) b!3030587))

(assert (= (and b!3029969 ((_ is Concat!14746) (regTwo!19363 r!17423))) b!3030588))

(assert (= (and b!3029969 ((_ is Star!9425) (regTwo!19363 r!17423))) b!3030589))

(assert (= (and b!3029969 ((_ is Union!9425) (regTwo!19363 r!17423))) b!3030590))

(declare-fun e!1900736 () Bool)

(assert (=> b!3029971 (= tp!960496 e!1900736)))

(declare-fun b!3030593 () Bool)

(declare-fun tp!960557 () Bool)

(assert (=> b!3030593 (= e!1900736 tp!960557)))

(declare-fun b!3030594 () Bool)

(declare-fun tp!960556 () Bool)

(declare-fun tp!960560 () Bool)

(assert (=> b!3030594 (= e!1900736 (and tp!960556 tp!960560))))

(declare-fun b!3030591 () Bool)

(assert (=> b!3030591 (= e!1900736 tp_is_empty!16413)))

(declare-fun b!3030592 () Bool)

(declare-fun tp!960558 () Bool)

(declare-fun tp!960559 () Bool)

(assert (=> b!3030592 (= e!1900736 (and tp!960558 tp!960559))))

(assert (= (and b!3029971 ((_ is ElementMatch!9425) (regOne!19362 r!17423))) b!3030591))

(assert (= (and b!3029971 ((_ is Concat!14746) (regOne!19362 r!17423))) b!3030592))

(assert (= (and b!3029971 ((_ is Star!9425) (regOne!19362 r!17423))) b!3030593))

(assert (= (and b!3029971 ((_ is Union!9425) (regOne!19362 r!17423))) b!3030594))

(declare-fun e!1900737 () Bool)

(assert (=> b!3029971 (= tp!960497 e!1900737)))

(declare-fun b!3030597 () Bool)

(declare-fun tp!960562 () Bool)

(assert (=> b!3030597 (= e!1900737 tp!960562)))

(declare-fun b!3030598 () Bool)

(declare-fun tp!960561 () Bool)

(declare-fun tp!960565 () Bool)

(assert (=> b!3030598 (= e!1900737 (and tp!960561 tp!960565))))

(declare-fun b!3030595 () Bool)

(assert (=> b!3030595 (= e!1900737 tp_is_empty!16413)))

(declare-fun b!3030596 () Bool)

(declare-fun tp!960563 () Bool)

(declare-fun tp!960564 () Bool)

(assert (=> b!3030596 (= e!1900737 (and tp!960563 tp!960564))))

(assert (= (and b!3029971 ((_ is ElementMatch!9425) (regTwo!19362 r!17423))) b!3030595))

(assert (= (and b!3029971 ((_ is Concat!14746) (regTwo!19362 r!17423))) b!3030596))

(assert (= (and b!3029971 ((_ is Star!9425) (regTwo!19362 r!17423))) b!3030597))

(assert (= (and b!3029971 ((_ is Union!9425) (regTwo!19362 r!17423))) b!3030598))

(declare-fun e!1900738 () Bool)

(assert (=> b!3029970 (= tp!960494 e!1900738)))

(declare-fun b!3030601 () Bool)

(declare-fun tp!960567 () Bool)

(assert (=> b!3030601 (= e!1900738 tp!960567)))

(declare-fun b!3030602 () Bool)

(declare-fun tp!960566 () Bool)

(declare-fun tp!960570 () Bool)

(assert (=> b!3030602 (= e!1900738 (and tp!960566 tp!960570))))

(declare-fun b!3030599 () Bool)

(assert (=> b!3030599 (= e!1900738 tp_is_empty!16413)))

(declare-fun b!3030600 () Bool)

(declare-fun tp!960568 () Bool)

(declare-fun tp!960569 () Bool)

(assert (=> b!3030600 (= e!1900738 (and tp!960568 tp!960569))))

(assert (= (and b!3029970 ((_ is ElementMatch!9425) (reg!9754 r!17423))) b!3030599))

(assert (= (and b!3029970 ((_ is Concat!14746) (reg!9754 r!17423))) b!3030600))

(assert (= (and b!3029970 ((_ is Star!9425) (reg!9754 r!17423))) b!3030601))

(assert (= (and b!3029970 ((_ is Union!9425) (reg!9754 r!17423))) b!3030602))

(declare-fun b!3030607 () Bool)

(declare-fun e!1900741 () Bool)

(declare-fun tp!960573 () Bool)

(assert (=> b!3030607 (= e!1900741 (and tp_is_empty!16413 tp!960573))))

(assert (=> b!3029966 (= tp!960493 e!1900741)))

(assert (= (and b!3029966 ((_ is Cons!35166) (t!234355 s!11993))) b!3030607))

(check-sat tp_is_empty!16413 (not b!3030046) (not b!3030600) (not b!3030229) (not bm!206301) (not bm!206294) (not b!3030530) (not b!3030517) (not d!851014) (not bm!206296) (not bm!206362) (not b!3030239) (not b!3030540) (not b!3030558) (not b!3030601) (not bm!206304) (not b!3030054) (not b!3030231) (not b!3030592) (not d!851006) (not b!3030200) (not bm!206364) (not bm!206295) (not b!3030596) (not b!3030602) (not b!3030563) (not b!3030208) (not bm!206363) (not b!3030584) (not b!3030589) (not d!851018) (not bm!206358) (not b!3030052) (not b!3030057) (not b!3030069) (not b!3030535) (not bm!206305) (not b!3030049) (not bm!206360) (not bm!206278) (not b!3030568) (not bm!206297) (not b!3030247) (not b!3030068) (not b!3030537) (not bm!206357) (not b!3030234) (not b!3030593) (not b!3030588) (not d!851016) (not b!3030597) (not bm!206306) (not b!3030607) (not b!3030224) (not b!3030598) (not d!851044) (not bm!206302) (not b!3030552) (not b!3030590) (not bm!206261) (not bm!206356) (not b!3030560) (not b!3030545) (not b!3030515) (not b!3030594) (not b!3030555) (not b!3030532) (not b!3030223) (not bm!206277) (not d!851020) (not d!851000) (not bm!206359) (not bm!206303) (not b!3030585) (not bm!206298) (not d!851048) (not d!851042) (not b!3030047) (not b!3030586) (not b!3030119) (not b!3030226) (not b!3030553) (not b!3030529))
(check-sat)
