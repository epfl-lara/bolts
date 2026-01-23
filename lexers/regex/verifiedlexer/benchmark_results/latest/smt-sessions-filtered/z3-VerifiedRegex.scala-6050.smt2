; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295836 () Bool)

(assert start!295836)

(declare-fun b!3138052 () Bool)

(declare-fun e!1957798 () Bool)

(declare-fun tp!982291 () Bool)

(declare-fun tp!982293 () Bool)

(assert (=> b!3138052 (= e!1957798 (and tp!982291 tp!982293))))

(declare-fun b!3138053 () Bool)

(declare-fun tp_is_empty!16865 () Bool)

(assert (=> b!3138053 (= e!1957798 tp_is_empty!16865)))

(declare-fun b!3138054 () Bool)

(declare-fun res!1282240 () Bool)

(declare-fun e!1957799 () Bool)

(assert (=> b!3138054 (=> (not res!1282240) (not e!1957799))))

(declare-datatypes ((C!19488 0))(
  ( (C!19489 (val!11780 Int)) )
))
(declare-datatypes ((Regex!9651 0))(
  ( (ElementMatch!9651 (c!527401 C!19488)) (Concat!14972 (regOne!19814 Regex!9651) (regTwo!19814 Regex!9651)) (EmptyExpr!9651) (Star!9651 (reg!9980 Regex!9651)) (EmptyLang!9651) (Union!9651 (regOne!19815 Regex!9651) (regTwo!19815 Regex!9651)) )
))
(declare-fun r!17345 () Regex!9651)

(get-info :version)

(assert (=> b!3138054 (= res!1282240 (and (not ((_ is EmptyLang!9651) r!17345)) (not ((_ is ElementMatch!9651) r!17345)) (not ((_ is EmptyExpr!9651) r!17345)) (not ((_ is Star!9651) r!17345)) ((_ is Union!9651) r!17345)))))

(declare-fun res!1282239 () Bool)

(assert (=> start!295836 (=> (not res!1282239) (not e!1957799))))

(declare-fun validRegex!4384 (Regex!9651) Bool)

(assert (=> start!295836 (= res!1282239 (validRegex!4384 r!17345))))

(assert (=> start!295836 e!1957799))

(assert (=> start!295836 e!1957798))

(declare-fun b!3138055 () Bool)

(declare-fun tp!982294 () Bool)

(declare-fun tp!982292 () Bool)

(assert (=> b!3138055 (= e!1957798 (and tp!982294 tp!982292))))

(declare-fun b!3138056 () Bool)

(assert (=> b!3138056 (= e!1957799 (not (validRegex!4384 (regTwo!19815 r!17345))))))

(declare-fun lt!1061010 () Regex!9651)

(declare-fun simplify!602 (Regex!9651) Regex!9651)

(assert (=> b!3138056 (= lt!1061010 (simplify!602 (regOne!19815 r!17345)))))

(declare-fun b!3138057 () Bool)

(declare-fun tp!982295 () Bool)

(assert (=> b!3138057 (= e!1957798 tp!982295)))

(assert (= (and start!295836 res!1282239) b!3138054))

(assert (= (and b!3138054 res!1282240) b!3138056))

(assert (= (and start!295836 ((_ is ElementMatch!9651) r!17345)) b!3138053))

(assert (= (and start!295836 ((_ is Concat!14972) r!17345)) b!3138052))

(assert (= (and start!295836 ((_ is Star!9651) r!17345)) b!3138057))

(assert (= (and start!295836 ((_ is Union!9651) r!17345)) b!3138055))

(declare-fun m!3417299 () Bool)

(assert (=> start!295836 m!3417299))

(declare-fun m!3417301 () Bool)

(assert (=> b!3138056 m!3417301))

(declare-fun m!3417303 () Bool)

(assert (=> b!3138056 m!3417303))

(check-sat tp_is_empty!16865 (not b!3138052) (not b!3138056) (not start!295836) (not b!3138055) (not b!3138057))
(check-sat)
(get-model)

(declare-fun b!3138103 () Bool)

(declare-fun e!1957835 () Bool)

(declare-fun e!1957837 () Bool)

(assert (=> b!3138103 (= e!1957835 e!1957837)))

(declare-fun c!527412 () Bool)

(assert (=> b!3138103 (= c!527412 ((_ is Star!9651) (regTwo!19815 r!17345)))))

(declare-fun b!3138104 () Bool)

(declare-fun e!1957836 () Bool)

(declare-fun e!1957840 () Bool)

(assert (=> b!3138104 (= e!1957836 e!1957840)))

(declare-fun res!1282266 () Bool)

(assert (=> b!3138104 (=> (not res!1282266) (not e!1957840))))

(declare-fun call!225089 () Bool)

(assert (=> b!3138104 (= res!1282266 call!225089)))

(declare-fun bm!225083 () Bool)

(declare-fun c!527413 () Bool)

(assert (=> bm!225083 (= call!225089 (validRegex!4384 (ite c!527413 (regTwo!19815 (regTwo!19815 r!17345)) (regOne!19814 (regTwo!19815 r!17345)))))))

(declare-fun b!3138105 () Bool)

(declare-fun e!1957839 () Bool)

(assert (=> b!3138105 (= e!1957837 e!1957839)))

(declare-fun res!1282267 () Bool)

(declare-fun nullable!3284 (Regex!9651) Bool)

(assert (=> b!3138105 (= res!1282267 (not (nullable!3284 (reg!9980 (regTwo!19815 r!17345)))))))

(assert (=> b!3138105 (=> (not res!1282267) (not e!1957839))))

(declare-fun bm!225084 () Bool)

(declare-fun call!225090 () Bool)

(declare-fun call!225088 () Bool)

(assert (=> bm!225084 (= call!225090 call!225088)))

(declare-fun b!3138106 () Bool)

(assert (=> b!3138106 (= e!1957839 call!225088)))

(declare-fun bm!225085 () Bool)

(assert (=> bm!225085 (= call!225088 (validRegex!4384 (ite c!527412 (reg!9980 (regTwo!19815 r!17345)) (ite c!527413 (regOne!19815 (regTwo!19815 r!17345)) (regTwo!19814 (regTwo!19815 r!17345))))))))

(declare-fun b!3138108 () Bool)

(declare-fun e!1957838 () Bool)

(assert (=> b!3138108 (= e!1957838 call!225089)))

(declare-fun b!3138109 () Bool)

(declare-fun res!1282268 () Bool)

(assert (=> b!3138109 (=> (not res!1282268) (not e!1957838))))

(assert (=> b!3138109 (= res!1282268 call!225090)))

(declare-fun e!1957841 () Bool)

(assert (=> b!3138109 (= e!1957841 e!1957838)))

(declare-fun b!3138110 () Bool)

(declare-fun res!1282270 () Bool)

(assert (=> b!3138110 (=> res!1282270 e!1957836)))

(assert (=> b!3138110 (= res!1282270 (not ((_ is Concat!14972) (regTwo!19815 r!17345))))))

(assert (=> b!3138110 (= e!1957841 e!1957836)))

(declare-fun b!3138111 () Bool)

(assert (=> b!3138111 (= e!1957837 e!1957841)))

(assert (=> b!3138111 (= c!527413 ((_ is Union!9651) (regTwo!19815 r!17345)))))

(declare-fun d!865527 () Bool)

(declare-fun res!1282269 () Bool)

(assert (=> d!865527 (=> res!1282269 e!1957835)))

(assert (=> d!865527 (= res!1282269 ((_ is ElementMatch!9651) (regTwo!19815 r!17345)))))

(assert (=> d!865527 (= (validRegex!4384 (regTwo!19815 r!17345)) e!1957835)))

(declare-fun b!3138107 () Bool)

(assert (=> b!3138107 (= e!1957840 call!225090)))

(assert (= (and d!865527 (not res!1282269)) b!3138103))

(assert (= (and b!3138103 c!527412) b!3138105))

(assert (= (and b!3138103 (not c!527412)) b!3138111))

(assert (= (and b!3138105 res!1282267) b!3138106))

(assert (= (and b!3138111 c!527413) b!3138109))

(assert (= (and b!3138111 (not c!527413)) b!3138110))

(assert (= (and b!3138109 res!1282268) b!3138108))

(assert (= (and b!3138110 (not res!1282270)) b!3138104))

(assert (= (and b!3138104 res!1282266) b!3138107))

(assert (= (or b!3138108 b!3138104) bm!225083))

(assert (= (or b!3138109 b!3138107) bm!225084))

(assert (= (or b!3138106 bm!225084) bm!225085))

(declare-fun m!3417311 () Bool)

(assert (=> bm!225083 m!3417311))

(declare-fun m!3417313 () Bool)

(assert (=> b!3138105 m!3417313))

(declare-fun m!3417315 () Bool)

(assert (=> bm!225085 m!3417315))

(assert (=> b!3138056 d!865527))

(declare-fun d!865531 () Bool)

(declare-fun e!1957918 () Bool)

(assert (=> d!865531 e!1957918))

(declare-fun res!1282287 () Bool)

(assert (=> d!865531 (=> (not res!1282287) (not e!1957918))))

(declare-fun lt!1061044 () Regex!9651)

(assert (=> d!865531 (= res!1282287 (validRegex!4384 lt!1061044))))

(declare-fun e!1957922 () Regex!9651)

(assert (=> d!865531 (= lt!1061044 e!1957922)))

(declare-fun c!527475 () Bool)

(assert (=> d!865531 (= c!527475 ((_ is EmptyLang!9651) (regOne!19815 r!17345)))))

(assert (=> d!865531 (validRegex!4384 (regOne!19815 r!17345))))

(assert (=> d!865531 (= (simplify!602 (regOne!19815 r!17345)) lt!1061044)))

(declare-fun call!225127 () Bool)

(declare-fun c!527479 () Bool)

(declare-fun lt!1061045 () Regex!9651)

(declare-fun lt!1061043 () Regex!9651)

(declare-fun bm!225121 () Bool)

(declare-fun isEmptyLang!698 (Regex!9651) Bool)

(assert (=> bm!225121 (= call!225127 (isEmptyLang!698 (ite c!527479 lt!1061043 lt!1061045)))))

(declare-fun b!3138237 () Bool)

(declare-fun c!527469 () Bool)

(assert (=> b!3138237 (= c!527469 call!225127)))

(declare-fun e!1957912 () Regex!9651)

(declare-fun e!1957913 () Regex!9651)

(assert (=> b!3138237 (= e!1957912 e!1957913)))

(declare-fun b!3138238 () Bool)

(declare-fun e!1957925 () Regex!9651)

(declare-fun lt!1061042 () Regex!9651)

(assert (=> b!3138238 (= e!1957925 (Concat!14972 lt!1061045 lt!1061042))))

(declare-fun b!3138239 () Bool)

(assert (=> b!3138239 (= e!1957925 lt!1061045)))

(declare-fun b!3138240 () Bool)

(declare-fun e!1957921 () Regex!9651)

(assert (=> b!3138240 (= e!1957921 (regOne!19815 r!17345))))

(declare-fun b!3138241 () Bool)

(declare-fun e!1957916 () Bool)

(declare-fun call!225130 () Bool)

(assert (=> b!3138241 (= e!1957916 call!225130)))

(declare-fun b!3138242 () Bool)

(declare-fun e!1957924 () Bool)

(declare-fun call!225132 () Bool)

(assert (=> b!3138242 (= e!1957924 call!225132)))

(declare-fun b!3138243 () Bool)

(declare-fun e!1957923 () Regex!9651)

(declare-fun lt!1061041 () Regex!9651)

(assert (=> b!3138243 (= e!1957923 (Star!9651 lt!1061041))))

(declare-fun b!3138244 () Bool)

(declare-fun lt!1061046 () Regex!9651)

(assert (=> b!3138244 (= e!1957913 (Union!9651 lt!1061046 lt!1061043))))

(declare-fun b!3138245 () Bool)

(declare-fun e!1957915 () Regex!9651)

(assert (=> b!3138245 (= e!1957915 EmptyExpr!9651)))

(declare-fun bm!225122 () Bool)

(declare-fun call!225128 () Regex!9651)

(declare-fun call!225126 () Regex!9651)

(assert (=> bm!225122 (= call!225128 call!225126)))

(declare-fun b!3138246 () Bool)

(assert (=> b!3138246 (= e!1957918 (= (nullable!3284 lt!1061044) (nullable!3284 (regOne!19815 r!17345))))))

(declare-fun bm!225123 () Bool)

(declare-fun c!527477 () Bool)

(declare-fun isEmptyExpr!692 (Regex!9651) Bool)

(assert (=> bm!225123 (= call!225132 (isEmptyExpr!692 (ite c!527477 lt!1061041 lt!1061042)))))

(declare-fun b!3138247 () Bool)

(assert (=> b!3138247 (= e!1957912 lt!1061043)))

(declare-fun bm!225124 () Bool)

(declare-fun call!225131 () Bool)

(assert (=> bm!225124 (= call!225131 (isEmptyLang!698 (ite c!527477 lt!1061041 (ite c!527479 lt!1061046 lt!1061042))))))

(declare-fun b!3138248 () Bool)

(assert (=> b!3138248 (= e!1957923 EmptyExpr!9651)))

(declare-fun b!3138249 () Bool)

(declare-fun c!527478 () Bool)

(assert (=> b!3138249 (= c!527478 e!1957924)))

(declare-fun res!1282288 () Bool)

(assert (=> b!3138249 (=> res!1282288 e!1957924)))

(assert (=> b!3138249 (= res!1282288 call!225131)))

(assert (=> b!3138249 (= lt!1061041 call!225126)))

(declare-fun e!1957914 () Regex!9651)

(assert (=> b!3138249 (= e!1957914 e!1957923)))

(declare-fun b!3138250 () Bool)

(assert (=> b!3138250 (= e!1957913 lt!1061046)))

(declare-fun b!3138251 () Bool)

(assert (=> b!3138251 (= e!1957922 e!1957921)))

(declare-fun c!527470 () Bool)

(assert (=> b!3138251 (= c!527470 ((_ is ElementMatch!9651) (regOne!19815 r!17345)))))

(declare-fun b!3138252 () Bool)

(declare-fun e!1957920 () Regex!9651)

(assert (=> b!3138252 (= e!1957920 e!1957925)))

(declare-fun c!527472 () Bool)

(assert (=> b!3138252 (= c!527472 call!225132)))

(declare-fun b!3138253 () Bool)

(declare-fun e!1957919 () Regex!9651)

(assert (=> b!3138253 (= e!1957919 EmptyLang!9651)))

(declare-fun bm!225125 () Bool)

(declare-fun call!225129 () Regex!9651)

(assert (=> bm!225125 (= call!225129 (simplify!602 (ite c!527479 (regOne!19815 (regOne!19815 r!17345)) (regOne!19814 (regOne!19815 r!17345)))))))

(declare-fun b!3138254 () Bool)

(assert (=> b!3138254 (= e!1957920 lt!1061042)))

(declare-fun b!3138255 () Bool)

(declare-fun e!1957917 () Regex!9651)

(assert (=> b!3138255 (= e!1957917 e!1957912)))

(assert (=> b!3138255 (= lt!1061046 call!225129)))

(assert (=> b!3138255 (= lt!1061043 call!225128)))

(declare-fun c!527474 () Bool)

(assert (=> b!3138255 (= c!527474 call!225130)))

(declare-fun b!3138256 () Bool)

(assert (=> b!3138256 (= c!527479 ((_ is Union!9651) (regOne!19815 r!17345)))))

(assert (=> b!3138256 (= e!1957914 e!1957917)))

(declare-fun bm!225126 () Bool)

(assert (=> bm!225126 (= call!225126 (simplify!602 (ite c!527477 (reg!9980 (regOne!19815 r!17345)) (ite c!527479 (regTwo!19815 (regOne!19815 r!17345)) (regTwo!19814 (regOne!19815 r!17345))))))))

(declare-fun b!3138257 () Bool)

(assert (=> b!3138257 (= e!1957922 EmptyLang!9651)))

(declare-fun b!3138258 () Bool)

(declare-fun c!527471 () Bool)

(assert (=> b!3138258 (= c!527471 (isEmptyExpr!692 lt!1061045))))

(assert (=> b!3138258 (= e!1957919 e!1957920)))

(declare-fun b!3138259 () Bool)

(declare-fun c!527476 () Bool)

(assert (=> b!3138259 (= c!527476 ((_ is EmptyExpr!9651) (regOne!19815 r!17345)))))

(assert (=> b!3138259 (= e!1957921 e!1957915)))

(declare-fun bm!225127 () Bool)

(assert (=> bm!225127 (= call!225130 call!225131)))

(declare-fun b!3138260 () Bool)

(assert (=> b!3138260 (= e!1957917 e!1957919)))

(assert (=> b!3138260 (= lt!1061045 call!225129)))

(assert (=> b!3138260 (= lt!1061042 call!225128)))

(declare-fun res!1282286 () Bool)

(assert (=> b!3138260 (= res!1282286 call!225127)))

(assert (=> b!3138260 (=> res!1282286 e!1957916)))

(declare-fun c!527473 () Bool)

(assert (=> b!3138260 (= c!527473 e!1957916)))

(declare-fun b!3138261 () Bool)

(assert (=> b!3138261 (= e!1957915 e!1957914)))

(assert (=> b!3138261 (= c!527477 ((_ is Star!9651) (regOne!19815 r!17345)))))

(assert (= (and d!865531 c!527475) b!3138257))

(assert (= (and d!865531 (not c!527475)) b!3138251))

(assert (= (and b!3138251 c!527470) b!3138240))

(assert (= (and b!3138251 (not c!527470)) b!3138259))

(assert (= (and b!3138259 c!527476) b!3138245))

(assert (= (and b!3138259 (not c!527476)) b!3138261))

(assert (= (and b!3138261 c!527477) b!3138249))

(assert (= (and b!3138261 (not c!527477)) b!3138256))

(assert (= (and b!3138249 (not res!1282288)) b!3138242))

(assert (= (and b!3138249 c!527478) b!3138248))

(assert (= (and b!3138249 (not c!527478)) b!3138243))

(assert (= (and b!3138256 c!527479) b!3138255))

(assert (= (and b!3138256 (not c!527479)) b!3138260))

(assert (= (and b!3138255 c!527474) b!3138247))

(assert (= (and b!3138255 (not c!527474)) b!3138237))

(assert (= (and b!3138237 c!527469) b!3138250))

(assert (= (and b!3138237 (not c!527469)) b!3138244))

(assert (= (and b!3138260 (not res!1282286)) b!3138241))

(assert (= (and b!3138260 c!527473) b!3138253))

(assert (= (and b!3138260 (not c!527473)) b!3138258))

(assert (= (and b!3138258 c!527471) b!3138254))

(assert (= (and b!3138258 (not c!527471)) b!3138252))

(assert (= (and b!3138252 c!527472) b!3138239))

(assert (= (and b!3138252 (not c!527472)) b!3138238))

(assert (= (or b!3138237 b!3138260) bm!225121))

(assert (= (or b!3138255 b!3138241) bm!225127))

(assert (= (or b!3138255 b!3138260) bm!225125))

(assert (= (or b!3138255 b!3138260) bm!225122))

(assert (= (or b!3138242 b!3138252) bm!225123))

(assert (= (or b!3138249 bm!225127) bm!225124))

(assert (= (or b!3138249 bm!225122) bm!225126))

(assert (= (and d!865531 res!1282287) b!3138246))

(declare-fun m!3417337 () Bool)

(assert (=> bm!225126 m!3417337))

(declare-fun m!3417339 () Bool)

(assert (=> b!3138246 m!3417339))

(declare-fun m!3417341 () Bool)

(assert (=> b!3138246 m!3417341))

(declare-fun m!3417343 () Bool)

(assert (=> b!3138258 m!3417343))

(declare-fun m!3417345 () Bool)

(assert (=> d!865531 m!3417345))

(declare-fun m!3417347 () Bool)

(assert (=> d!865531 m!3417347))

(declare-fun m!3417351 () Bool)

(assert (=> bm!225121 m!3417351))

(declare-fun m!3417355 () Bool)

(assert (=> bm!225125 m!3417355))

(declare-fun m!3417359 () Bool)

(assert (=> bm!225124 m!3417359))

(declare-fun m!3417361 () Bool)

(assert (=> bm!225123 m!3417361))

(assert (=> b!3138056 d!865531))

(declare-fun b!3138275 () Bool)

(declare-fun e!1957935 () Bool)

(declare-fun e!1957937 () Bool)

(assert (=> b!3138275 (= e!1957935 e!1957937)))

(declare-fun c!527482 () Bool)

(assert (=> b!3138275 (= c!527482 ((_ is Star!9651) r!17345))))

(declare-fun b!3138276 () Bool)

(declare-fun e!1957936 () Bool)

(declare-fun e!1957940 () Bool)

(assert (=> b!3138276 (= e!1957936 e!1957940)))

(declare-fun res!1282294 () Bool)

(assert (=> b!3138276 (=> (not res!1282294) (not e!1957940))))

(declare-fun call!225137 () Bool)

(assert (=> b!3138276 (= res!1282294 call!225137)))

(declare-fun bm!225131 () Bool)

(declare-fun c!527483 () Bool)

(assert (=> bm!225131 (= call!225137 (validRegex!4384 (ite c!527483 (regTwo!19815 r!17345) (regOne!19814 r!17345))))))

(declare-fun b!3138277 () Bool)

(declare-fun e!1957939 () Bool)

(assert (=> b!3138277 (= e!1957937 e!1957939)))

(declare-fun res!1282295 () Bool)

(assert (=> b!3138277 (= res!1282295 (not (nullable!3284 (reg!9980 r!17345))))))

(assert (=> b!3138277 (=> (not res!1282295) (not e!1957939))))

(declare-fun bm!225132 () Bool)

(declare-fun call!225138 () Bool)

(declare-fun call!225136 () Bool)

(assert (=> bm!225132 (= call!225138 call!225136)))

(declare-fun b!3138280 () Bool)

(assert (=> b!3138280 (= e!1957939 call!225136)))

(declare-fun bm!225133 () Bool)

(assert (=> bm!225133 (= call!225136 (validRegex!4384 (ite c!527482 (reg!9980 r!17345) (ite c!527483 (regOne!19815 r!17345) (regTwo!19814 r!17345)))))))

(declare-fun b!3138282 () Bool)

(declare-fun e!1957938 () Bool)

(assert (=> b!3138282 (= e!1957938 call!225137)))

(declare-fun b!3138283 () Bool)

(declare-fun res!1282296 () Bool)

(assert (=> b!3138283 (=> (not res!1282296) (not e!1957938))))

(assert (=> b!3138283 (= res!1282296 call!225138)))

(declare-fun e!1957941 () Bool)

(assert (=> b!3138283 (= e!1957941 e!1957938)))

(declare-fun b!3138284 () Bool)

(declare-fun res!1282298 () Bool)

(assert (=> b!3138284 (=> res!1282298 e!1957936)))

(assert (=> b!3138284 (= res!1282298 (not ((_ is Concat!14972) r!17345)))))

(assert (=> b!3138284 (= e!1957941 e!1957936)))

(declare-fun b!3138285 () Bool)

(assert (=> b!3138285 (= e!1957937 e!1957941)))

(assert (=> b!3138285 (= c!527483 ((_ is Union!9651) r!17345))))

(declare-fun d!865535 () Bool)

(declare-fun res!1282297 () Bool)

(assert (=> d!865535 (=> res!1282297 e!1957935)))

(assert (=> d!865535 (= res!1282297 ((_ is ElementMatch!9651) r!17345))))

(assert (=> d!865535 (= (validRegex!4384 r!17345) e!1957935)))

(declare-fun b!3138281 () Bool)

(assert (=> b!3138281 (= e!1957940 call!225138)))

(assert (= (and d!865535 (not res!1282297)) b!3138275))

(assert (= (and b!3138275 c!527482) b!3138277))

(assert (= (and b!3138275 (not c!527482)) b!3138285))

(assert (= (and b!3138277 res!1282295) b!3138280))

(assert (= (and b!3138285 c!527483) b!3138283))

(assert (= (and b!3138285 (not c!527483)) b!3138284))

(assert (= (and b!3138283 res!1282296) b!3138282))

(assert (= (and b!3138284 (not res!1282298)) b!3138276))

(assert (= (and b!3138276 res!1282294) b!3138281))

(assert (= (or b!3138282 b!3138276) bm!225131))

(assert (= (or b!3138283 b!3138281) bm!225132))

(assert (= (or b!3138280 bm!225132) bm!225133))

(declare-fun m!3417363 () Bool)

(assert (=> bm!225131 m!3417363))

(declare-fun m!3417365 () Bool)

(assert (=> b!3138277 m!3417365))

(declare-fun m!3417367 () Bool)

(assert (=> bm!225133 m!3417367))

(assert (=> start!295836 d!865535))

(declare-fun b!3138319 () Bool)

(declare-fun e!1957948 () Bool)

(declare-fun tp!982338 () Bool)

(declare-fun tp!982336 () Bool)

(assert (=> b!3138319 (= e!1957948 (and tp!982338 tp!982336))))

(assert (=> b!3138057 (= tp!982295 e!1957948)))

(declare-fun b!3138318 () Bool)

(declare-fun tp!982340 () Bool)

(assert (=> b!3138318 (= e!1957948 tp!982340)))

(declare-fun b!3138316 () Bool)

(assert (=> b!3138316 (= e!1957948 tp_is_empty!16865)))

(declare-fun b!3138317 () Bool)

(declare-fun tp!982339 () Bool)

(declare-fun tp!982337 () Bool)

(assert (=> b!3138317 (= e!1957948 (and tp!982339 tp!982337))))

(assert (= (and b!3138057 ((_ is ElementMatch!9651) (reg!9980 r!17345))) b!3138316))

(assert (= (and b!3138057 ((_ is Concat!14972) (reg!9980 r!17345))) b!3138317))

(assert (= (and b!3138057 ((_ is Star!9651) (reg!9980 r!17345))) b!3138318))

(assert (= (and b!3138057 ((_ is Union!9651) (reg!9980 r!17345))) b!3138319))

(declare-fun b!3138327 () Bool)

(declare-fun e!1957950 () Bool)

(declare-fun tp!982348 () Bool)

(declare-fun tp!982346 () Bool)

(assert (=> b!3138327 (= e!1957950 (and tp!982348 tp!982346))))

(assert (=> b!3138052 (= tp!982291 e!1957950)))

(declare-fun b!3138326 () Bool)

(declare-fun tp!982350 () Bool)

(assert (=> b!3138326 (= e!1957950 tp!982350)))

(declare-fun b!3138324 () Bool)

(assert (=> b!3138324 (= e!1957950 tp_is_empty!16865)))

(declare-fun b!3138325 () Bool)

(declare-fun tp!982349 () Bool)

(declare-fun tp!982347 () Bool)

(assert (=> b!3138325 (= e!1957950 (and tp!982349 tp!982347))))

(assert (= (and b!3138052 ((_ is ElementMatch!9651) (regOne!19814 r!17345))) b!3138324))

(assert (= (and b!3138052 ((_ is Concat!14972) (regOne!19814 r!17345))) b!3138325))

(assert (= (and b!3138052 ((_ is Star!9651) (regOne!19814 r!17345))) b!3138326))

(assert (= (and b!3138052 ((_ is Union!9651) (regOne!19814 r!17345))) b!3138327))

(declare-fun b!3138331 () Bool)

(declare-fun e!1957951 () Bool)

(declare-fun tp!982353 () Bool)

(declare-fun tp!982351 () Bool)

(assert (=> b!3138331 (= e!1957951 (and tp!982353 tp!982351))))

(assert (=> b!3138052 (= tp!982293 e!1957951)))

(declare-fun b!3138330 () Bool)

(declare-fun tp!982355 () Bool)

(assert (=> b!3138330 (= e!1957951 tp!982355)))

(declare-fun b!3138328 () Bool)

(assert (=> b!3138328 (= e!1957951 tp_is_empty!16865)))

(declare-fun b!3138329 () Bool)

(declare-fun tp!982354 () Bool)

(declare-fun tp!982352 () Bool)

(assert (=> b!3138329 (= e!1957951 (and tp!982354 tp!982352))))

(assert (= (and b!3138052 ((_ is ElementMatch!9651) (regTwo!19814 r!17345))) b!3138328))

(assert (= (and b!3138052 ((_ is Concat!14972) (regTwo!19814 r!17345))) b!3138329))

(assert (= (and b!3138052 ((_ is Star!9651) (regTwo!19814 r!17345))) b!3138330))

(assert (= (and b!3138052 ((_ is Union!9651) (regTwo!19814 r!17345))) b!3138331))

(declare-fun b!3138335 () Bool)

(declare-fun e!1957952 () Bool)

(declare-fun tp!982358 () Bool)

(declare-fun tp!982356 () Bool)

(assert (=> b!3138335 (= e!1957952 (and tp!982358 tp!982356))))

(assert (=> b!3138055 (= tp!982294 e!1957952)))

(declare-fun b!3138334 () Bool)

(declare-fun tp!982360 () Bool)

(assert (=> b!3138334 (= e!1957952 tp!982360)))

(declare-fun b!3138332 () Bool)

(assert (=> b!3138332 (= e!1957952 tp_is_empty!16865)))

(declare-fun b!3138333 () Bool)

(declare-fun tp!982359 () Bool)

(declare-fun tp!982357 () Bool)

(assert (=> b!3138333 (= e!1957952 (and tp!982359 tp!982357))))

(assert (= (and b!3138055 ((_ is ElementMatch!9651) (regOne!19815 r!17345))) b!3138332))

(assert (= (and b!3138055 ((_ is Concat!14972) (regOne!19815 r!17345))) b!3138333))

(assert (= (and b!3138055 ((_ is Star!9651) (regOne!19815 r!17345))) b!3138334))

(assert (= (and b!3138055 ((_ is Union!9651) (regOne!19815 r!17345))) b!3138335))

(declare-fun b!3138339 () Bool)

(declare-fun e!1957953 () Bool)

(declare-fun tp!982363 () Bool)

(declare-fun tp!982361 () Bool)

(assert (=> b!3138339 (= e!1957953 (and tp!982363 tp!982361))))

(assert (=> b!3138055 (= tp!982292 e!1957953)))

(declare-fun b!3138338 () Bool)

(declare-fun tp!982365 () Bool)

(assert (=> b!3138338 (= e!1957953 tp!982365)))

(declare-fun b!3138336 () Bool)

(assert (=> b!3138336 (= e!1957953 tp_is_empty!16865)))

(declare-fun b!3138337 () Bool)

(declare-fun tp!982364 () Bool)

(declare-fun tp!982362 () Bool)

(assert (=> b!3138337 (= e!1957953 (and tp!982364 tp!982362))))

(assert (= (and b!3138055 ((_ is ElementMatch!9651) (regTwo!19815 r!17345))) b!3138336))

(assert (= (and b!3138055 ((_ is Concat!14972) (regTwo!19815 r!17345))) b!3138337))

(assert (= (and b!3138055 ((_ is Star!9651) (regTwo!19815 r!17345))) b!3138338))

(assert (= (and b!3138055 ((_ is Union!9651) (regTwo!19815 r!17345))) b!3138339))

(check-sat (not bm!225126) (not b!3138246) (not b!3138317) tp_is_empty!16865 (not b!3138334) (not b!3138105) (not b!3138277) (not b!3138337) (not b!3138333) (not bm!225083) (not b!3138326) (not bm!225123) (not bm!225085) (not b!3138319) (not bm!225124) (not b!3138335) (not b!3138325) (not b!3138330) (not b!3138338) (not b!3138318) (not bm!225121) (not b!3138258) (not d!865531) (not bm!225133) (not b!3138331) (not bm!225131) (not bm!225125) (not b!3138339) (not b!3138329) (not b!3138327))
(check-sat)
