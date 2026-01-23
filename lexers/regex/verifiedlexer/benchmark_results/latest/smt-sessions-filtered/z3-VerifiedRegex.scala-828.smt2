; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45612 () Bool)

(assert start!45612)

(declare-fun b!476376 () Bool)

(declare-fun res!211029 () Bool)

(declare-fun e!290741 () Bool)

(assert (=> b!476376 (=> (not res!211029) (not e!290741))))

(declare-datatypes ((C!3228 0))(
  ( (C!3229 (val!1600 Int)) )
))
(declare-datatypes ((Regex!1153 0))(
  ( (ElementMatch!1153 (c!95300 C!3228)) (Concat!2053 (regOne!2818 Regex!1153) (regTwo!2818 Regex!1153)) (EmptyExpr!1153) (Star!1153 (reg!1482 Regex!1153)) (EmptyLang!1153) (Union!1153 (regOne!2819 Regex!1153) (regTwo!2819 Regex!1153)) )
))
(declare-fun r!20230 () Regex!1153)

(declare-fun lostCause!147 (Regex!1153) Bool)

(assert (=> b!476376 (= res!211029 (lostCause!147 r!20230))))

(declare-fun res!211031 () Bool)

(assert (=> start!45612 (=> (not res!211031) (not e!290741))))

(declare-fun validRegex!381 (Regex!1153) Bool)

(assert (=> start!45612 (= res!211031 (validRegex!381 r!20230))))

(assert (=> start!45612 e!290741))

(declare-fun e!290740 () Bool)

(assert (=> start!45612 e!290740))

(declare-fun b!476377 () Bool)

(declare-fun tp_is_empty!2303 () Bool)

(assert (=> b!476377 (= e!290740 tp_is_empty!2303)))

(declare-fun b!476378 () Bool)

(declare-fun tp!133121 () Bool)

(assert (=> b!476378 (= e!290740 tp!133121)))

(declare-fun b!476379 () Bool)

(declare-fun regexDepth!4 (Regex!1153) Int)

(assert (=> b!476379 (= e!290741 (>= (regexDepth!4 (regOne!2819 r!20230)) (regexDepth!4 r!20230)))))

(declare-fun b!476380 () Bool)

(declare-fun tp!133118 () Bool)

(declare-fun tp!133117 () Bool)

(assert (=> b!476380 (= e!290740 (and tp!133118 tp!133117))))

(declare-fun b!476381 () Bool)

(declare-fun res!211030 () Bool)

(assert (=> b!476381 (=> (not res!211030) (not e!290741))))

(assert (=> b!476381 (= res!211030 (lostCause!147 (regOne!2819 r!20230)))))

(declare-fun b!476382 () Bool)

(declare-fun res!211032 () Bool)

(assert (=> b!476382 (=> (not res!211032) (not e!290741))))

(assert (=> b!476382 (= res!211032 (validRegex!381 (regOne!2819 r!20230)))))

(declare-fun b!476383 () Bool)

(declare-fun res!211033 () Bool)

(assert (=> b!476383 (=> (not res!211033) (not e!290741))))

(get-info :version)

(assert (=> b!476383 (= res!211033 (and (not ((_ is EmptyLang!1153) r!20230)) (not ((_ is EmptyExpr!1153) r!20230)) (not ((_ is ElementMatch!1153) r!20230)) ((_ is Union!1153) r!20230)))))

(declare-fun b!476384 () Bool)

(declare-fun tp!133120 () Bool)

(declare-fun tp!133119 () Bool)

(assert (=> b!476384 (= e!290740 (and tp!133120 tp!133119))))

(assert (= (and start!45612 res!211031) b!476376))

(assert (= (and b!476376 res!211029) b!476383))

(assert (= (and b!476383 res!211033) b!476382))

(assert (= (and b!476382 res!211032) b!476381))

(assert (= (and b!476381 res!211030) b!476379))

(assert (= (and start!45612 ((_ is ElementMatch!1153) r!20230)) b!476377))

(assert (= (and start!45612 ((_ is Concat!2053) r!20230)) b!476384))

(assert (= (and start!45612 ((_ is Star!1153) r!20230)) b!476378))

(assert (= (and start!45612 ((_ is Union!1153) r!20230)) b!476380))

(declare-fun m!747447 () Bool)

(assert (=> b!476376 m!747447))

(declare-fun m!747449 () Bool)

(assert (=> b!476379 m!747449))

(declare-fun m!747451 () Bool)

(assert (=> b!476379 m!747451))

(declare-fun m!747453 () Bool)

(assert (=> b!476381 m!747453))

(declare-fun m!747455 () Bool)

(assert (=> b!476382 m!747455))

(declare-fun m!747457 () Bool)

(assert (=> start!45612 m!747457))

(check-sat (not b!476381) tp_is_empty!2303 (not b!476380) (not b!476378) (not b!476382) (not b!476376) (not b!476384) (not b!476379) (not start!45612))
(check-sat)
(get-model)

(declare-fun b!476455 () Bool)

(declare-fun e!290793 () Int)

(declare-fun call!33272 () Int)

(assert (=> b!476455 (= e!290793 (+ 1 call!33272))))

(declare-fun b!476456 () Bool)

(declare-fun e!290792 () Int)

(assert (=> b!476456 (= e!290792 1)))

(declare-fun bm!33263 () Bool)

(declare-fun call!33270 () Int)

(declare-fun call!33271 () Int)

(assert (=> bm!33263 (= call!33270 call!33271)))

(declare-fun call!33269 () Int)

(declare-fun c!95328 () Bool)

(declare-fun bm!33264 () Bool)

(declare-fun call!33268 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!33264 (= call!33272 (maxBigInt!0 (ite c!95328 call!33269 call!33268) (ite c!95328 call!33268 call!33269)))))

(declare-fun b!476457 () Bool)

(declare-fun e!290790 () Int)

(assert (=> b!476457 (= e!290790 1)))

(declare-fun b!476458 () Bool)

(declare-fun e!290799 () Int)

(assert (=> b!476458 (= e!290790 e!290799)))

(declare-fun c!95323 () Bool)

(assert (=> b!476458 (= c!95323 ((_ is Star!1153) (regOne!2819 r!20230)))))

(declare-fun b!476459 () Bool)

(declare-fun e!290796 () Bool)

(declare-fun e!290795 () Bool)

(assert (=> b!476459 (= e!290796 e!290795)))

(declare-fun c!95329 () Bool)

(assert (=> b!476459 (= c!95329 ((_ is Concat!2053) (regOne!2819 r!20230)))))

(declare-fun b!476460 () Bool)

(declare-fun e!290797 () Bool)

(assert (=> b!476460 (= e!290796 e!290797)))

(declare-fun res!211060 () Bool)

(declare-fun lt!210739 () Int)

(assert (=> b!476460 (= res!211060 (> lt!210739 call!33271))))

(assert (=> b!476460 (=> (not res!211060) (not e!290797))))

(declare-fun b!476461 () Bool)

(assert (=> b!476461 (= c!95328 ((_ is Union!1153) (regOne!2819 r!20230)))))

(assert (=> b!476461 (= e!290799 e!290793)))

(declare-fun bm!33265 () Bool)

(declare-fun call!33274 () Int)

(assert (=> bm!33265 (= call!33268 call!33274)))

(declare-fun b!476462 () Bool)

(declare-fun e!290791 () Bool)

(assert (=> b!476462 (= e!290791 e!290796)))

(declare-fun c!95326 () Bool)

(assert (=> b!476462 (= c!95326 ((_ is Union!1153) (regOne!2819 r!20230)))))

(declare-fun bm!33266 () Bool)

(declare-fun call!33273 () Int)

(assert (=> bm!33266 (= call!33273 (regexDepth!4 (ite c!95326 (regTwo!2819 (regOne!2819 r!20230)) (regTwo!2818 (regOne!2819 r!20230)))))))

(declare-fun b!476463 () Bool)

(declare-fun c!95325 () Bool)

(assert (=> b!476463 (= c!95325 ((_ is Star!1153) (regOne!2819 r!20230)))))

(declare-fun e!290794 () Bool)

(assert (=> b!476463 (= e!290795 e!290794)))

(declare-fun bm!33267 () Bool)

(assert (=> bm!33267 (= call!33271 (regexDepth!4 (ite c!95326 (regOne!2819 (regOne!2819 r!20230)) (ite c!95329 (regOne!2818 (regOne!2819 r!20230)) (reg!1482 (regOne!2819 r!20230))))))))

(declare-fun b!476464 () Bool)

(assert (=> b!476464 (= e!290794 (= lt!210739 1))))

(declare-fun b!476465 () Bool)

(assert (=> b!476465 (= e!290792 (+ 1 call!33272))))

(declare-fun b!476466 () Bool)

(declare-fun e!290798 () Bool)

(assert (=> b!476466 (= e!290798 (> lt!210739 call!33273))))

(declare-fun b!476467 () Bool)

(assert (=> b!476467 (= e!290794 (> lt!210739 call!33270))))

(declare-fun b!476468 () Bool)

(assert (=> b!476468 (= e!290799 (+ 1 call!33274))))

(declare-fun b!476469 () Bool)

(assert (=> b!476469 (= e!290797 (> lt!210739 call!33273))))

(declare-fun d!179979 () Bool)

(assert (=> d!179979 e!290791))

(declare-fun res!211062 () Bool)

(assert (=> d!179979 (=> (not res!211062) (not e!290791))))

(assert (=> d!179979 (= res!211062 (> lt!210739 0))))

(assert (=> d!179979 (= lt!210739 e!290790)))

(declare-fun c!95324 () Bool)

(assert (=> d!179979 (= c!95324 ((_ is ElementMatch!1153) (regOne!2819 r!20230)))))

(assert (=> d!179979 (= (regexDepth!4 (regOne!2819 r!20230)) lt!210739)))

(declare-fun bm!33268 () Bool)

(assert (=> bm!33268 (= call!33274 (regexDepth!4 (ite c!95323 (reg!1482 (regOne!2819 r!20230)) (ite c!95328 (regTwo!2819 (regOne!2819 r!20230)) (regOne!2818 (regOne!2819 r!20230))))))))

(declare-fun b!476470 () Bool)

(declare-fun res!211061 () Bool)

(assert (=> b!476470 (=> (not res!211061) (not e!290798))))

(assert (=> b!476470 (= res!211061 (> lt!210739 call!33270))))

(assert (=> b!476470 (= e!290795 e!290798)))

(declare-fun b!476471 () Bool)

(assert (=> b!476471 (= e!290793 e!290792)))

(declare-fun c!95327 () Bool)

(assert (=> b!476471 (= c!95327 ((_ is Concat!2053) (regOne!2819 r!20230)))))

(declare-fun bm!33269 () Bool)

(assert (=> bm!33269 (= call!33269 (regexDepth!4 (ite c!95328 (regOne!2819 (regOne!2819 r!20230)) (regTwo!2818 (regOne!2819 r!20230)))))))

(assert (= (and d!179979 c!95324) b!476457))

(assert (= (and d!179979 (not c!95324)) b!476458))

(assert (= (and b!476458 c!95323) b!476468))

(assert (= (and b!476458 (not c!95323)) b!476461))

(assert (= (and b!476461 c!95328) b!476455))

(assert (= (and b!476461 (not c!95328)) b!476471))

(assert (= (and b!476471 c!95327) b!476465))

(assert (= (and b!476471 (not c!95327)) b!476456))

(assert (= (or b!476455 b!476465) bm!33265))

(assert (= (or b!476455 b!476465) bm!33269))

(assert (= (or b!476455 b!476465) bm!33264))

(assert (= (or b!476468 bm!33265) bm!33268))

(assert (= (and d!179979 res!211062) b!476462))

(assert (= (and b!476462 c!95326) b!476460))

(assert (= (and b!476462 (not c!95326)) b!476459))

(assert (= (and b!476460 res!211060) b!476469))

(assert (= (and b!476459 c!95329) b!476470))

(assert (= (and b!476459 (not c!95329)) b!476463))

(assert (= (and b!476470 res!211061) b!476466))

(assert (= (and b!476463 c!95325) b!476467))

(assert (= (and b!476463 (not c!95325)) b!476464))

(assert (= (or b!476470 b!476467) bm!33263))

(assert (= (or b!476469 b!476466) bm!33266))

(assert (= (or b!476460 bm!33263) bm!33267))

(declare-fun m!747475 () Bool)

(assert (=> bm!33264 m!747475))

(declare-fun m!747477 () Bool)

(assert (=> bm!33268 m!747477))

(declare-fun m!747479 () Bool)

(assert (=> bm!33269 m!747479))

(declare-fun m!747481 () Bool)

(assert (=> bm!33266 m!747481))

(declare-fun m!747483 () Bool)

(assert (=> bm!33267 m!747483))

(assert (=> b!476379 d!179979))

(declare-fun b!476488 () Bool)

(declare-fun e!290811 () Int)

(declare-fun call!33281 () Int)

(assert (=> b!476488 (= e!290811 (+ 1 call!33281))))

(declare-fun b!476489 () Bool)

(declare-fun e!290810 () Int)

(assert (=> b!476489 (= e!290810 1)))

(declare-fun bm!33270 () Bool)

(declare-fun call!33277 () Int)

(declare-fun call!33278 () Int)

(assert (=> bm!33270 (= call!33277 call!33278)))

(declare-fun c!95343 () Bool)

(declare-fun call!33275 () Int)

(declare-fun call!33276 () Int)

(declare-fun bm!33271 () Bool)

(assert (=> bm!33271 (= call!33281 (maxBigInt!0 (ite c!95343 call!33276 call!33275) (ite c!95343 call!33275 call!33276)))))

(declare-fun b!476490 () Bool)

(declare-fun e!290808 () Int)

(assert (=> b!476490 (= e!290808 1)))

(declare-fun b!476491 () Bool)

(declare-fun e!290817 () Int)

(assert (=> b!476491 (= e!290808 e!290817)))

(declare-fun c!95338 () Bool)

(assert (=> b!476491 (= c!95338 ((_ is Star!1153) r!20230))))

(declare-fun b!476492 () Bool)

(declare-fun e!290814 () Bool)

(declare-fun e!290813 () Bool)

(assert (=> b!476492 (= e!290814 e!290813)))

(declare-fun c!95344 () Bool)

(assert (=> b!476492 (= c!95344 ((_ is Concat!2053) r!20230))))

(declare-fun b!476493 () Bool)

(declare-fun e!290815 () Bool)

(assert (=> b!476493 (= e!290814 e!290815)))

(declare-fun res!211063 () Bool)

(declare-fun lt!210742 () Int)

(assert (=> b!476493 (= res!211063 (> lt!210742 call!33278))))

(assert (=> b!476493 (=> (not res!211063) (not e!290815))))

(declare-fun b!476494 () Bool)

(assert (=> b!476494 (= c!95343 ((_ is Union!1153) r!20230))))

(assert (=> b!476494 (= e!290817 e!290811)))

(declare-fun bm!33272 () Bool)

(declare-fun call!33283 () Int)

(assert (=> bm!33272 (= call!33275 call!33283)))

(declare-fun b!476495 () Bool)

(declare-fun e!290809 () Bool)

(assert (=> b!476495 (= e!290809 e!290814)))

(declare-fun c!95341 () Bool)

(assert (=> b!476495 (= c!95341 ((_ is Union!1153) r!20230))))

(declare-fun bm!33273 () Bool)

(declare-fun call!33282 () Int)

(assert (=> bm!33273 (= call!33282 (regexDepth!4 (ite c!95341 (regTwo!2819 r!20230) (regTwo!2818 r!20230))))))

(declare-fun b!476496 () Bool)

(declare-fun c!95340 () Bool)

(assert (=> b!476496 (= c!95340 ((_ is Star!1153) r!20230))))

(declare-fun e!290812 () Bool)

(assert (=> b!476496 (= e!290813 e!290812)))

(declare-fun bm!33274 () Bool)

(assert (=> bm!33274 (= call!33278 (regexDepth!4 (ite c!95341 (regOne!2819 r!20230) (ite c!95344 (regOne!2818 r!20230) (reg!1482 r!20230)))))))

(declare-fun b!476497 () Bool)

(assert (=> b!476497 (= e!290812 (= lt!210742 1))))

(declare-fun b!476498 () Bool)

(assert (=> b!476498 (= e!290810 (+ 1 call!33281))))

(declare-fun b!476499 () Bool)

(declare-fun e!290816 () Bool)

(assert (=> b!476499 (= e!290816 (> lt!210742 call!33282))))

(declare-fun b!476500 () Bool)

(assert (=> b!476500 (= e!290812 (> lt!210742 call!33277))))

(declare-fun b!476501 () Bool)

(assert (=> b!476501 (= e!290817 (+ 1 call!33283))))

(declare-fun b!476502 () Bool)

(assert (=> b!476502 (= e!290815 (> lt!210742 call!33282))))

(declare-fun d!179989 () Bool)

(assert (=> d!179989 e!290809))

(declare-fun res!211065 () Bool)

(assert (=> d!179989 (=> (not res!211065) (not e!290809))))

(assert (=> d!179989 (= res!211065 (> lt!210742 0))))

(assert (=> d!179989 (= lt!210742 e!290808)))

(declare-fun c!95339 () Bool)

(assert (=> d!179989 (= c!95339 ((_ is ElementMatch!1153) r!20230))))

(assert (=> d!179989 (= (regexDepth!4 r!20230) lt!210742)))

(declare-fun bm!33275 () Bool)

(assert (=> bm!33275 (= call!33283 (regexDepth!4 (ite c!95338 (reg!1482 r!20230) (ite c!95343 (regTwo!2819 r!20230) (regOne!2818 r!20230)))))))

(declare-fun b!476503 () Bool)

(declare-fun res!211064 () Bool)

(assert (=> b!476503 (=> (not res!211064) (not e!290816))))

(assert (=> b!476503 (= res!211064 (> lt!210742 call!33277))))

(assert (=> b!476503 (= e!290813 e!290816)))

(declare-fun b!476504 () Bool)

(assert (=> b!476504 (= e!290811 e!290810)))

(declare-fun c!95342 () Bool)

(assert (=> b!476504 (= c!95342 ((_ is Concat!2053) r!20230))))

(declare-fun bm!33276 () Bool)

(assert (=> bm!33276 (= call!33276 (regexDepth!4 (ite c!95343 (regOne!2819 r!20230) (regTwo!2818 r!20230))))))

(assert (= (and d!179989 c!95339) b!476490))

(assert (= (and d!179989 (not c!95339)) b!476491))

(assert (= (and b!476491 c!95338) b!476501))

(assert (= (and b!476491 (not c!95338)) b!476494))

(assert (= (and b!476494 c!95343) b!476488))

(assert (= (and b!476494 (not c!95343)) b!476504))

(assert (= (and b!476504 c!95342) b!476498))

(assert (= (and b!476504 (not c!95342)) b!476489))

(assert (= (or b!476488 b!476498) bm!33272))

(assert (= (or b!476488 b!476498) bm!33276))

(assert (= (or b!476488 b!476498) bm!33271))

(assert (= (or b!476501 bm!33272) bm!33275))

(assert (= (and d!179989 res!211065) b!476495))

(assert (= (and b!476495 c!95341) b!476493))

(assert (= (and b!476495 (not c!95341)) b!476492))

(assert (= (and b!476493 res!211063) b!476502))

(assert (= (and b!476492 c!95344) b!476503))

(assert (= (and b!476492 (not c!95344)) b!476496))

(assert (= (and b!476503 res!211064) b!476499))

(assert (= (and b!476496 c!95340) b!476500))

(assert (= (and b!476496 (not c!95340)) b!476497))

(assert (= (or b!476503 b!476500) bm!33270))

(assert (= (or b!476502 b!476499) bm!33273))

(assert (= (or b!476493 bm!33270) bm!33274))

(declare-fun m!747485 () Bool)

(assert (=> bm!33271 m!747485))

(declare-fun m!747487 () Bool)

(assert (=> bm!33275 m!747487))

(declare-fun m!747489 () Bool)

(assert (=> bm!33276 m!747489))

(declare-fun m!747491 () Bool)

(assert (=> bm!33273 m!747491))

(declare-fun m!747493 () Bool)

(assert (=> bm!33274 m!747493))

(assert (=> b!476379 d!179989))

(declare-fun c!95355 () Bool)

(declare-fun call!33302 () Bool)

(declare-fun c!95356 () Bool)

(declare-fun bm!33297 () Bool)

(assert (=> bm!33297 (= call!33302 (validRegex!381 (ite c!95355 (reg!1482 (regOne!2819 r!20230)) (ite c!95356 (regTwo!2819 (regOne!2819 r!20230)) (regOne!2818 (regOne!2819 r!20230))))))))

(declare-fun bm!33298 () Bool)

(declare-fun call!33303 () Bool)

(assert (=> bm!33298 (= call!33303 (validRegex!381 (ite c!95356 (regOne!2819 (regOne!2819 r!20230)) (regTwo!2818 (regOne!2819 r!20230)))))))

(declare-fun b!476541 () Bool)

(declare-fun e!290850 () Bool)

(declare-fun e!290849 () Bool)

(assert (=> b!476541 (= e!290850 e!290849)))

(declare-fun res!211086 () Bool)

(assert (=> b!476541 (=> (not res!211086) (not e!290849))))

(declare-fun call!33304 () Bool)

(assert (=> b!476541 (= res!211086 call!33304)))

(declare-fun b!476542 () Bool)

(assert (=> b!476542 (= e!290849 call!33303)))

(declare-fun b!476543 () Bool)

(declare-fun e!290845 () Bool)

(declare-fun e!290844 () Bool)

(assert (=> b!476543 (= e!290845 e!290844)))

(declare-fun res!211083 () Bool)

(declare-fun nullable!288 (Regex!1153) Bool)

(assert (=> b!476543 (= res!211083 (not (nullable!288 (reg!1482 (regOne!2819 r!20230)))))))

(assert (=> b!476543 (=> (not res!211083) (not e!290844))))

(declare-fun d!179991 () Bool)

(declare-fun res!211084 () Bool)

(declare-fun e!290846 () Bool)

(assert (=> d!179991 (=> res!211084 e!290846)))

(assert (=> d!179991 (= res!211084 ((_ is ElementMatch!1153) (regOne!2819 r!20230)))))

(assert (=> d!179991 (= (validRegex!381 (regOne!2819 r!20230)) e!290846)))

(declare-fun b!476544 () Bool)

(declare-fun res!211082 () Bool)

(declare-fun e!290848 () Bool)

(assert (=> b!476544 (=> (not res!211082) (not e!290848))))

(assert (=> b!476544 (= res!211082 call!33303)))

(declare-fun e!290847 () Bool)

(assert (=> b!476544 (= e!290847 e!290848)))

(declare-fun b!476545 () Bool)

(assert (=> b!476545 (= e!290848 call!33304)))

(declare-fun b!476546 () Bool)

(assert (=> b!476546 (= e!290845 e!290847)))

(assert (=> b!476546 (= c!95356 ((_ is Union!1153) (regOne!2819 r!20230)))))

(declare-fun bm!33299 () Bool)

(assert (=> bm!33299 (= call!33304 call!33302)))

(declare-fun b!476547 () Bool)

(assert (=> b!476547 (= e!290844 call!33302)))

(declare-fun b!476548 () Bool)

(assert (=> b!476548 (= e!290846 e!290845)))

(assert (=> b!476548 (= c!95355 ((_ is Star!1153) (regOne!2819 r!20230)))))

(declare-fun b!476549 () Bool)

(declare-fun res!211085 () Bool)

(assert (=> b!476549 (=> res!211085 e!290850)))

(assert (=> b!476549 (= res!211085 (not ((_ is Concat!2053) (regOne!2819 r!20230))))))

(assert (=> b!476549 (= e!290847 e!290850)))

(assert (= (and d!179991 (not res!211084)) b!476548))

(assert (= (and b!476548 c!95355) b!476543))

(assert (= (and b!476548 (not c!95355)) b!476546))

(assert (= (and b!476543 res!211083) b!476547))

(assert (= (and b!476546 c!95356) b!476544))

(assert (= (and b!476546 (not c!95356)) b!476549))

(assert (= (and b!476544 res!211082) b!476545))

(assert (= (and b!476549 (not res!211085)) b!476541))

(assert (= (and b!476541 res!211086) b!476542))

(assert (= (or b!476545 b!476541) bm!33299))

(assert (= (or b!476544 b!476542) bm!33298))

(assert (= (or b!476547 bm!33299) bm!33297))

(declare-fun m!747495 () Bool)

(assert (=> bm!33297 m!747495))

(declare-fun m!747497 () Bool)

(assert (=> bm!33298 m!747497))

(declare-fun m!747499 () Bool)

(assert (=> b!476543 m!747499))

(assert (=> b!476382 d!179991))

(declare-fun c!95365 () Bool)

(declare-fun call!33312 () Bool)

(declare-fun c!95364 () Bool)

(declare-fun bm!33307 () Bool)

(assert (=> bm!33307 (= call!33312 (validRegex!381 (ite c!95364 (reg!1482 r!20230) (ite c!95365 (regTwo!2819 r!20230) (regOne!2818 r!20230)))))))

(declare-fun bm!33308 () Bool)

(declare-fun call!33313 () Bool)

(assert (=> bm!33308 (= call!33313 (validRegex!381 (ite c!95365 (regOne!2819 r!20230) (regTwo!2818 r!20230))))))

(declare-fun b!476567 () Bool)

(declare-fun e!290867 () Bool)

(declare-fun e!290866 () Bool)

(assert (=> b!476567 (= e!290867 e!290866)))

(declare-fun res!211094 () Bool)

(assert (=> b!476567 (=> (not res!211094) (not e!290866))))

(declare-fun call!33314 () Bool)

(assert (=> b!476567 (= res!211094 call!33314)))

(declare-fun b!476568 () Bool)

(assert (=> b!476568 (= e!290866 call!33313)))

(declare-fun b!476569 () Bool)

(declare-fun e!290862 () Bool)

(declare-fun e!290861 () Bool)

(assert (=> b!476569 (= e!290862 e!290861)))

(declare-fun res!211091 () Bool)

(assert (=> b!476569 (= res!211091 (not (nullable!288 (reg!1482 r!20230))))))

(assert (=> b!476569 (=> (not res!211091) (not e!290861))))

(declare-fun d!179993 () Bool)

(declare-fun res!211092 () Bool)

(declare-fun e!290863 () Bool)

(assert (=> d!179993 (=> res!211092 e!290863)))

(assert (=> d!179993 (= res!211092 ((_ is ElementMatch!1153) r!20230))))

(assert (=> d!179993 (= (validRegex!381 r!20230) e!290863)))

(declare-fun b!476570 () Bool)

(declare-fun res!211090 () Bool)

(declare-fun e!290865 () Bool)

(assert (=> b!476570 (=> (not res!211090) (not e!290865))))

(assert (=> b!476570 (= res!211090 call!33313)))

(declare-fun e!290864 () Bool)

(assert (=> b!476570 (= e!290864 e!290865)))

(declare-fun b!476571 () Bool)

(assert (=> b!476571 (= e!290865 call!33314)))

(declare-fun b!476572 () Bool)

(assert (=> b!476572 (= e!290862 e!290864)))

(assert (=> b!476572 (= c!95365 ((_ is Union!1153) r!20230))))

(declare-fun bm!33309 () Bool)

(assert (=> bm!33309 (= call!33314 call!33312)))

(declare-fun b!476573 () Bool)

(assert (=> b!476573 (= e!290861 call!33312)))

(declare-fun b!476574 () Bool)

(assert (=> b!476574 (= e!290863 e!290862)))

(assert (=> b!476574 (= c!95364 ((_ is Star!1153) r!20230))))

(declare-fun b!476575 () Bool)

(declare-fun res!211093 () Bool)

(assert (=> b!476575 (=> res!211093 e!290867)))

(assert (=> b!476575 (= res!211093 (not ((_ is Concat!2053) r!20230)))))

(assert (=> b!476575 (= e!290864 e!290867)))

(assert (= (and d!179993 (not res!211092)) b!476574))

(assert (= (and b!476574 c!95364) b!476569))

(assert (= (and b!476574 (not c!95364)) b!476572))

(assert (= (and b!476569 res!211091) b!476573))

(assert (= (and b!476572 c!95365) b!476570))

(assert (= (and b!476572 (not c!95365)) b!476575))

(assert (= (and b!476570 res!211090) b!476571))

(assert (= (and b!476575 (not res!211093)) b!476567))

(assert (= (and b!476567 res!211094) b!476568))

(assert (= (or b!476571 b!476567) bm!33309))

(assert (= (or b!476570 b!476568) bm!33308))

(assert (= (or b!476573 bm!33309) bm!33307))

(declare-fun m!747501 () Bool)

(assert (=> bm!33307 m!747501))

(declare-fun m!747503 () Bool)

(assert (=> bm!33308 m!747503))

(declare-fun m!747505 () Bool)

(assert (=> b!476569 m!747505))

(assert (=> start!45612 d!179993))

(declare-fun d!179995 () Bool)

(declare-fun lostCauseFct!57 (Regex!1153) Bool)

(assert (=> d!179995 (= (lostCause!147 (regOne!2819 r!20230)) (lostCauseFct!57 (regOne!2819 r!20230)))))

(declare-fun bs!58716 () Bool)

(assert (= bs!58716 d!179995))

(declare-fun m!747517 () Bool)

(assert (=> bs!58716 m!747517))

(assert (=> b!476381 d!179995))

(declare-fun d!179999 () Bool)

(assert (=> d!179999 (= (lostCause!147 r!20230) (lostCauseFct!57 r!20230))))

(declare-fun bs!58717 () Bool)

(assert (= bs!58717 d!179999))

(declare-fun m!747519 () Bool)

(assert (=> bs!58717 m!747519))

(assert (=> b!476376 d!179999))

(declare-fun e!290882 () Bool)

(assert (=> b!476380 (= tp!133118 e!290882)))

(declare-fun b!476615 () Bool)

(declare-fun tp!133146 () Bool)

(assert (=> b!476615 (= e!290882 tp!133146)))

(declare-fun b!476616 () Bool)

(declare-fun tp!133142 () Bool)

(declare-fun tp!133145 () Bool)

(assert (=> b!476616 (= e!290882 (and tp!133142 tp!133145))))

(declare-fun b!476614 () Bool)

(declare-fun tp!133144 () Bool)

(declare-fun tp!133143 () Bool)

(assert (=> b!476614 (= e!290882 (and tp!133144 tp!133143))))

(declare-fun b!476613 () Bool)

(assert (=> b!476613 (= e!290882 tp_is_empty!2303)))

(assert (= (and b!476380 ((_ is ElementMatch!1153) (regOne!2819 r!20230))) b!476613))

(assert (= (and b!476380 ((_ is Concat!2053) (regOne!2819 r!20230))) b!476614))

(assert (= (and b!476380 ((_ is Star!1153) (regOne!2819 r!20230))) b!476615))

(assert (= (and b!476380 ((_ is Union!1153) (regOne!2819 r!20230))) b!476616))

(declare-fun e!290884 () Bool)

(assert (=> b!476380 (= tp!133117 e!290884)))

(declare-fun b!476623 () Bool)

(declare-fun tp!133156 () Bool)

(assert (=> b!476623 (= e!290884 tp!133156)))

(declare-fun b!476624 () Bool)

(declare-fun tp!133152 () Bool)

(declare-fun tp!133155 () Bool)

(assert (=> b!476624 (= e!290884 (and tp!133152 tp!133155))))

(declare-fun b!476622 () Bool)

(declare-fun tp!133154 () Bool)

(declare-fun tp!133153 () Bool)

(assert (=> b!476622 (= e!290884 (and tp!133154 tp!133153))))

(declare-fun b!476621 () Bool)

(assert (=> b!476621 (= e!290884 tp_is_empty!2303)))

(assert (= (and b!476380 ((_ is ElementMatch!1153) (regTwo!2819 r!20230))) b!476621))

(assert (= (and b!476380 ((_ is Concat!2053) (regTwo!2819 r!20230))) b!476622))

(assert (= (and b!476380 ((_ is Star!1153) (regTwo!2819 r!20230))) b!476623))

(assert (= (and b!476380 ((_ is Union!1153) (regTwo!2819 r!20230))) b!476624))

(declare-fun e!290886 () Bool)

(assert (=> b!476378 (= tp!133121 e!290886)))

(declare-fun b!476631 () Bool)

(declare-fun tp!133166 () Bool)

(assert (=> b!476631 (= e!290886 tp!133166)))

(declare-fun b!476632 () Bool)

(declare-fun tp!133162 () Bool)

(declare-fun tp!133165 () Bool)

(assert (=> b!476632 (= e!290886 (and tp!133162 tp!133165))))

(declare-fun b!476630 () Bool)

(declare-fun tp!133164 () Bool)

(declare-fun tp!133163 () Bool)

(assert (=> b!476630 (= e!290886 (and tp!133164 tp!133163))))

(declare-fun b!476629 () Bool)

(assert (=> b!476629 (= e!290886 tp_is_empty!2303)))

(assert (= (and b!476378 ((_ is ElementMatch!1153) (reg!1482 r!20230))) b!476629))

(assert (= (and b!476378 ((_ is Concat!2053) (reg!1482 r!20230))) b!476630))

(assert (= (and b!476378 ((_ is Star!1153) (reg!1482 r!20230))) b!476631))

(assert (= (and b!476378 ((_ is Union!1153) (reg!1482 r!20230))) b!476632))

(declare-fun e!290888 () Bool)

(assert (=> b!476384 (= tp!133120 e!290888)))

(declare-fun b!476639 () Bool)

(declare-fun tp!133176 () Bool)

(assert (=> b!476639 (= e!290888 tp!133176)))

(declare-fun b!476640 () Bool)

(declare-fun tp!133172 () Bool)

(declare-fun tp!133175 () Bool)

(assert (=> b!476640 (= e!290888 (and tp!133172 tp!133175))))

(declare-fun b!476638 () Bool)

(declare-fun tp!133174 () Bool)

(declare-fun tp!133173 () Bool)

(assert (=> b!476638 (= e!290888 (and tp!133174 tp!133173))))

(declare-fun b!476637 () Bool)

(assert (=> b!476637 (= e!290888 tp_is_empty!2303)))

(assert (= (and b!476384 ((_ is ElementMatch!1153) (regOne!2818 r!20230))) b!476637))

(assert (= (and b!476384 ((_ is Concat!2053) (regOne!2818 r!20230))) b!476638))

(assert (= (and b!476384 ((_ is Star!1153) (regOne!2818 r!20230))) b!476639))

(assert (= (and b!476384 ((_ is Union!1153) (regOne!2818 r!20230))) b!476640))

(declare-fun e!290890 () Bool)

(assert (=> b!476384 (= tp!133119 e!290890)))

(declare-fun b!476647 () Bool)

(declare-fun tp!133186 () Bool)

(assert (=> b!476647 (= e!290890 tp!133186)))

(declare-fun b!476648 () Bool)

(declare-fun tp!133182 () Bool)

(declare-fun tp!133185 () Bool)

(assert (=> b!476648 (= e!290890 (and tp!133182 tp!133185))))

(declare-fun b!476646 () Bool)

(declare-fun tp!133184 () Bool)

(declare-fun tp!133183 () Bool)

(assert (=> b!476646 (= e!290890 (and tp!133184 tp!133183))))

(declare-fun b!476645 () Bool)

(assert (=> b!476645 (= e!290890 tp_is_empty!2303)))

(assert (= (and b!476384 ((_ is ElementMatch!1153) (regTwo!2818 r!20230))) b!476645))

(assert (= (and b!476384 ((_ is Concat!2053) (regTwo!2818 r!20230))) b!476646))

(assert (= (and b!476384 ((_ is Star!1153) (regTwo!2818 r!20230))) b!476647))

(assert (= (and b!476384 ((_ is Union!1153) (regTwo!2818 r!20230))) b!476648))

(check-sat (not b!476646) (not bm!33266) (not b!476569) (not bm!33275) (not bm!33297) (not d!179995) (not b!476632) (not bm!33274) (not b!476616) (not bm!33271) tp_is_empty!2303 (not bm!33308) (not b!476622) (not b!476647) (not b!476631) (not bm!33298) (not b!476630) (not b!476543) (not bm!33264) (not b!476638) (not b!476614) (not bm!33276) (not bm!33269) (not b!476639) (not b!476624) (not b!476648) (not bm!33307) (not bm!33267) (not d!179999) (not b!476640) (not b!476623) (not bm!33273) (not b!476615) (not bm!33268))
(check-sat)
