; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735604 () Bool)

(assert start!735604)

(declare-fun b!7642007 () Bool)

(declare-fun e!4542362 () Bool)

(declare-fun tp!2230852 () Bool)

(declare-fun tp!2230848 () Bool)

(assert (=> b!7642007 (= e!4542362 (and tp!2230852 tp!2230848))))

(declare-fun b!7642008 () Bool)

(declare-fun e!4542360 () Bool)

(declare-datatypes ((C!41220 0))(
  ( (C!41221 (val!31050 Int)) )
))
(declare-datatypes ((Regex!20447 0))(
  ( (ElementMatch!20447 (c!1407614 C!41220)) (Concat!29292 (regOne!41406 Regex!20447) (regTwo!41406 Regex!20447)) (EmptyExpr!20447) (Star!20447 (reg!20776 Regex!20447)) (EmptyLang!20447) (Union!20447 (regOne!41407 Regex!20447) (regTwo!41407 Regex!20447)) )
))
(declare-fun r!14126 () Regex!20447)

(declare-datatypes ((List!73298 0))(
  ( (Nil!73174) (Cons!73174 (h!79622 C!41220) (t!388033 List!73298)) )
))
(declare-fun s!9605 () List!73298)

(declare-fun matchR!9948 (Regex!20447 List!73298) Bool)

(assert (=> b!7642008 (= e!4542360 (matchR!9948 (regTwo!41407 r!14126) s!9605))))

(declare-fun res!3060856 () Bool)

(declare-fun e!4542363 () Bool)

(assert (=> start!735604 (=> (not res!3060856) (not e!4542363))))

(declare-fun validRegex!10865 (Regex!20447) Bool)

(assert (=> start!735604 (= res!3060856 (validRegex!10865 r!14126))))

(assert (=> start!735604 e!4542363))

(assert (=> start!735604 e!4542362))

(declare-fun e!4542361 () Bool)

(assert (=> start!735604 e!4542361))

(declare-fun b!7642009 () Bool)

(assert (=> b!7642009 (= e!4542363 (not (validRegex!10865 (regTwo!41407 r!14126))))))

(declare-fun lt!2660594 () Bool)

(declare-fun matchRSpec!4570 (Regex!20447 List!73298) Bool)

(assert (=> b!7642009 (= lt!2660594 (matchRSpec!4570 (regOne!41407 r!14126) s!9605))))

(declare-datatypes ((Unit!167870 0))(
  ( (Unit!167871) )
))
(declare-fun lt!2660593 () Unit!167870)

(declare-fun mainMatchTheorem!4550 (Regex!20447 List!73298) Unit!167870)

(assert (=> b!7642009 (= lt!2660593 (mainMatchTheorem!4550 (regOne!41407 r!14126) s!9605))))

(assert (=> b!7642009 e!4542360))

(declare-fun res!3060858 () Bool)

(assert (=> b!7642009 (=> res!3060858 e!4542360)))

(assert (=> b!7642009 (= res!3060858 lt!2660594)))

(assert (=> b!7642009 (= lt!2660594 (matchR!9948 (regOne!41407 r!14126) s!9605))))

(declare-fun lt!2660592 () Unit!167870)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!350 (Regex!20447 Regex!20447 List!73298) Unit!167870)

(assert (=> b!7642009 (= lt!2660592 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!350 (regOne!41407 r!14126) (regTwo!41407 r!14126) s!9605))))

(declare-fun b!7642010 () Bool)

(declare-fun tp_is_empty!51249 () Bool)

(assert (=> b!7642010 (= e!4542362 tp_is_empty!51249)))

(declare-fun b!7642011 () Bool)

(declare-fun tp!2230851 () Bool)

(assert (=> b!7642011 (= e!4542361 (and tp_is_empty!51249 tp!2230851))))

(declare-fun b!7642012 () Bool)

(declare-fun res!3060855 () Bool)

(assert (=> b!7642012 (=> (not res!3060855) (not e!4542363))))

(get-info :version)

(assert (=> b!7642012 (= res!3060855 (and (not ((_ is EmptyExpr!20447) r!14126)) (not ((_ is EmptyLang!20447) r!14126)) (not ((_ is ElementMatch!20447) r!14126)) ((_ is Union!20447) r!14126)))))

(declare-fun b!7642013 () Bool)

(declare-fun res!3060857 () Bool)

(assert (=> b!7642013 (=> (not res!3060857) (not e!4542363))))

(assert (=> b!7642013 (= res!3060857 (matchR!9948 r!14126 s!9605))))

(declare-fun b!7642014 () Bool)

(declare-fun tp!2230850 () Bool)

(assert (=> b!7642014 (= e!4542362 tp!2230850)))

(declare-fun b!7642015 () Bool)

(declare-fun tp!2230849 () Bool)

(declare-fun tp!2230853 () Bool)

(assert (=> b!7642015 (= e!4542362 (and tp!2230849 tp!2230853))))

(assert (= (and start!735604 res!3060856) b!7642012))

(assert (= (and b!7642012 res!3060855) b!7642013))

(assert (= (and b!7642013 res!3060857) b!7642009))

(assert (= (and b!7642009 (not res!3060858)) b!7642008))

(assert (= (and start!735604 ((_ is ElementMatch!20447) r!14126)) b!7642010))

(assert (= (and start!735604 ((_ is Concat!29292) r!14126)) b!7642007))

(assert (= (and start!735604 ((_ is Star!20447) r!14126)) b!7642014))

(assert (= (and start!735604 ((_ is Union!20447) r!14126)) b!7642015))

(assert (= (and start!735604 ((_ is Cons!73174) s!9605)) b!7642011))

(declare-fun m!8163274 () Bool)

(assert (=> b!7642008 m!8163274))

(declare-fun m!8163276 () Bool)

(assert (=> start!735604 m!8163276))

(declare-fun m!8163278 () Bool)

(assert (=> b!7642009 m!8163278))

(declare-fun m!8163280 () Bool)

(assert (=> b!7642009 m!8163280))

(declare-fun m!8163282 () Bool)

(assert (=> b!7642009 m!8163282))

(declare-fun m!8163284 () Bool)

(assert (=> b!7642009 m!8163284))

(declare-fun m!8163286 () Bool)

(assert (=> b!7642009 m!8163286))

(declare-fun m!8163288 () Bool)

(assert (=> b!7642013 m!8163288))

(check-sat (not b!7642013) (not b!7642009) (not b!7642007) (not b!7642015) tp_is_empty!51249 (not b!7642011) (not b!7642008) (not start!735604) (not b!7642014))
(check-sat)
(get-model)

(declare-fun b!7642100 () Bool)

(declare-fun e!4542411 () Bool)

(declare-fun e!4542410 () Bool)

(assert (=> b!7642100 (= e!4542411 e!4542410)))

(declare-fun res!3060914 () Bool)

(assert (=> b!7642100 (=> res!3060914 e!4542410)))

(declare-fun call!701471 () Bool)

(assert (=> b!7642100 (= res!3060914 call!701471)))

(declare-fun b!7642101 () Bool)

(declare-fun res!3060912 () Bool)

(declare-fun e!4542406 () Bool)

(assert (=> b!7642101 (=> (not res!3060912) (not e!4542406))))

(declare-fun isEmpty!41803 (List!73298) Bool)

(declare-fun tail!15263 (List!73298) List!73298)

(assert (=> b!7642101 (= res!3060912 (isEmpty!41803 (tail!15263 s!9605)))))

(declare-fun b!7642102 () Bool)

(declare-fun head!15723 (List!73298) C!41220)

(assert (=> b!7642102 (= e!4542406 (= (head!15723 s!9605) (c!1407614 (regTwo!41407 r!14126))))))

(declare-fun b!7642103 () Bool)

(assert (=> b!7642103 (= e!4542410 (not (= (head!15723 s!9605) (c!1407614 (regTwo!41407 r!14126)))))))

(declare-fun b!7642104 () Bool)

(declare-fun e!4542409 () Bool)

(declare-fun e!4542412 () Bool)

(assert (=> b!7642104 (= e!4542409 e!4542412)))

(declare-fun c!1407634 () Bool)

(assert (=> b!7642104 (= c!1407634 ((_ is EmptyLang!20447) (regTwo!41407 r!14126)))))

(declare-fun b!7642105 () Bool)

(declare-fun e!4542407 () Bool)

(declare-fun nullable!8952 (Regex!20447) Bool)

(assert (=> b!7642105 (= e!4542407 (nullable!8952 (regTwo!41407 r!14126)))))

(declare-fun b!7642106 () Bool)

(declare-fun res!3060908 () Bool)

(assert (=> b!7642106 (=> res!3060908 e!4542410)))

(assert (=> b!7642106 (= res!3060908 (not (isEmpty!41803 (tail!15263 s!9605))))))

(declare-fun b!7642107 () Bool)

(declare-fun res!3060909 () Bool)

(declare-fun e!4542408 () Bool)

(assert (=> b!7642107 (=> res!3060909 e!4542408)))

(assert (=> b!7642107 (= res!3060909 e!4542406)))

(declare-fun res!3060907 () Bool)

(assert (=> b!7642107 (=> (not res!3060907) (not e!4542406))))

(declare-fun lt!2660601 () Bool)

(assert (=> b!7642107 (= res!3060907 lt!2660601)))

(declare-fun b!7642108 () Bool)

(declare-fun res!3060913 () Bool)

(assert (=> b!7642108 (=> (not res!3060913) (not e!4542406))))

(assert (=> b!7642108 (= res!3060913 (not call!701471))))

(declare-fun b!7642110 () Bool)

(declare-fun res!3060910 () Bool)

(assert (=> b!7642110 (=> res!3060910 e!4542408)))

(assert (=> b!7642110 (= res!3060910 (not ((_ is ElementMatch!20447) (regTwo!41407 r!14126))))))

(assert (=> b!7642110 (= e!4542412 e!4542408)))

(declare-fun b!7642111 () Bool)

(assert (=> b!7642111 (= e!4542412 (not lt!2660601))))

(declare-fun bm!701466 () Bool)

(assert (=> bm!701466 (= call!701471 (isEmpty!41803 s!9605))))

(declare-fun b!7642112 () Bool)

(declare-fun derivativeStep!5923 (Regex!20447 C!41220) Regex!20447)

(assert (=> b!7642112 (= e!4542407 (matchR!9948 (derivativeStep!5923 (regTwo!41407 r!14126) (head!15723 s!9605)) (tail!15263 s!9605)))))

(declare-fun b!7642113 () Bool)

(assert (=> b!7642113 (= e!4542408 e!4542411)))

(declare-fun res!3060911 () Bool)

(assert (=> b!7642113 (=> (not res!3060911) (not e!4542411))))

(assert (=> b!7642113 (= res!3060911 (not lt!2660601))))

(declare-fun b!7642109 () Bool)

(assert (=> b!7642109 (= e!4542409 (= lt!2660601 call!701471))))

(declare-fun d!2325241 () Bool)

(assert (=> d!2325241 e!4542409))

(declare-fun c!1407633 () Bool)

(assert (=> d!2325241 (= c!1407633 ((_ is EmptyExpr!20447) (regTwo!41407 r!14126)))))

(assert (=> d!2325241 (= lt!2660601 e!4542407)))

(declare-fun c!1407635 () Bool)

(assert (=> d!2325241 (= c!1407635 (isEmpty!41803 s!9605))))

(assert (=> d!2325241 (validRegex!10865 (regTwo!41407 r!14126))))

(assert (=> d!2325241 (= (matchR!9948 (regTwo!41407 r!14126) s!9605) lt!2660601)))

(assert (= (and d!2325241 c!1407635) b!7642105))

(assert (= (and d!2325241 (not c!1407635)) b!7642112))

(assert (= (and d!2325241 c!1407633) b!7642109))

(assert (= (and d!2325241 (not c!1407633)) b!7642104))

(assert (= (and b!7642104 c!1407634) b!7642111))

(assert (= (and b!7642104 (not c!1407634)) b!7642110))

(assert (= (and b!7642110 (not res!3060910)) b!7642107))

(assert (= (and b!7642107 res!3060907) b!7642108))

(assert (= (and b!7642108 res!3060913) b!7642101))

(assert (= (and b!7642101 res!3060912) b!7642102))

(assert (= (and b!7642107 (not res!3060909)) b!7642113))

(assert (= (and b!7642113 res!3060911) b!7642100))

(assert (= (and b!7642100 (not res!3060914)) b!7642106))

(assert (= (and b!7642106 (not res!3060908)) b!7642103))

(assert (= (or b!7642109 b!7642100 b!7642108) bm!701466))

(declare-fun m!8163310 () Bool)

(assert (=> bm!701466 m!8163310))

(declare-fun m!8163312 () Bool)

(assert (=> b!7642105 m!8163312))

(declare-fun m!8163314 () Bool)

(assert (=> b!7642103 m!8163314))

(assert (=> d!2325241 m!8163310))

(assert (=> d!2325241 m!8163282))

(assert (=> b!7642112 m!8163314))

(assert (=> b!7642112 m!8163314))

(declare-fun m!8163316 () Bool)

(assert (=> b!7642112 m!8163316))

(declare-fun m!8163318 () Bool)

(assert (=> b!7642112 m!8163318))

(assert (=> b!7642112 m!8163316))

(assert (=> b!7642112 m!8163318))

(declare-fun m!8163320 () Bool)

(assert (=> b!7642112 m!8163320))

(assert (=> b!7642106 m!8163318))

(assert (=> b!7642106 m!8163318))

(declare-fun m!8163322 () Bool)

(assert (=> b!7642106 m!8163322))

(assert (=> b!7642101 m!8163318))

(assert (=> b!7642101 m!8163318))

(assert (=> b!7642101 m!8163322))

(assert (=> b!7642102 m!8163314))

(assert (=> b!7642008 d!2325241))

(declare-fun b!7642292 () Bool)

(assert (=> b!7642292 true))

(assert (=> b!7642292 true))

(declare-fun bs!1944737 () Bool)

(declare-fun b!7642290 () Bool)

(assert (= bs!1944737 (and b!7642290 b!7642292)))

(declare-fun lambda!469659 () Int)

(declare-fun lambda!469658 () Int)

(assert (=> bs!1944737 (not (= lambda!469659 lambda!469658))))

(assert (=> b!7642290 true))

(assert (=> b!7642290 true))

(declare-fun d!2325247 () Bool)

(declare-fun c!1407670 () Bool)

(assert (=> d!2325247 (= c!1407670 ((_ is EmptyExpr!20447) (regOne!41407 r!14126)))))

(declare-fun e!4542512 () Bool)

(assert (=> d!2325247 (= (matchRSpec!4570 (regOne!41407 r!14126) s!9605) e!4542512)))

(declare-fun b!7642284 () Bool)

(declare-fun e!4542507 () Bool)

(declare-fun e!4542513 () Bool)

(assert (=> b!7642284 (= e!4542507 e!4542513)))

(declare-fun res!3060984 () Bool)

(assert (=> b!7642284 (= res!3060984 (matchRSpec!4570 (regOne!41407 (regOne!41407 r!14126)) s!9605))))

(assert (=> b!7642284 (=> res!3060984 e!4542513)))

(declare-fun b!7642285 () Bool)

(declare-fun call!701495 () Bool)

(assert (=> b!7642285 (= e!4542512 call!701495)))

(declare-fun b!7642286 () Bool)

(declare-fun c!1407667 () Bool)

(assert (=> b!7642286 (= c!1407667 ((_ is Union!20447) (regOne!41407 r!14126)))))

(declare-fun e!4542509 () Bool)

(assert (=> b!7642286 (= e!4542509 e!4542507)))

(declare-fun bm!701490 () Bool)

(assert (=> bm!701490 (= call!701495 (isEmpty!41803 s!9605))))

(declare-fun b!7642287 () Bool)

(declare-fun e!4542510 () Bool)

(assert (=> b!7642287 (= e!4542507 e!4542510)))

(declare-fun c!1407669 () Bool)

(assert (=> b!7642287 (= c!1407669 ((_ is Star!20447) (regOne!41407 r!14126)))))

(declare-fun b!7642288 () Bool)

(declare-fun c!1407668 () Bool)

(assert (=> b!7642288 (= c!1407668 ((_ is ElementMatch!20447) (regOne!41407 r!14126)))))

(declare-fun e!4542508 () Bool)

(assert (=> b!7642288 (= e!4542508 e!4542509)))

(declare-fun b!7642289 () Bool)

(declare-fun res!3060986 () Bool)

(declare-fun e!4542511 () Bool)

(assert (=> b!7642289 (=> res!3060986 e!4542511)))

(assert (=> b!7642289 (= res!3060986 call!701495)))

(assert (=> b!7642289 (= e!4542510 e!4542511)))

(declare-fun call!701496 () Bool)

(assert (=> b!7642290 (= e!4542510 call!701496)))

(declare-fun b!7642291 () Bool)

(assert (=> b!7642291 (= e!4542512 e!4542508)))

(declare-fun res!3060985 () Bool)

(assert (=> b!7642291 (= res!3060985 (not ((_ is EmptyLang!20447) (regOne!41407 r!14126))))))

(assert (=> b!7642291 (=> (not res!3060985) (not e!4542508))))

(assert (=> b!7642292 (= e!4542511 call!701496)))

(declare-fun b!7642293 () Bool)

(assert (=> b!7642293 (= e!4542509 (= s!9605 (Cons!73174 (c!1407614 (regOne!41407 r!14126)) Nil!73174)))))

(declare-fun b!7642294 () Bool)

(assert (=> b!7642294 (= e!4542513 (matchRSpec!4570 (regTwo!41407 (regOne!41407 r!14126)) s!9605))))

(declare-fun bm!701491 () Bool)

(declare-fun Exists!4591 (Int) Bool)

(assert (=> bm!701491 (= call!701496 (Exists!4591 (ite c!1407669 lambda!469658 lambda!469659)))))

(assert (= (and d!2325247 c!1407670) b!7642285))

(assert (= (and d!2325247 (not c!1407670)) b!7642291))

(assert (= (and b!7642291 res!3060985) b!7642288))

(assert (= (and b!7642288 c!1407668) b!7642293))

(assert (= (and b!7642288 (not c!1407668)) b!7642286))

(assert (= (and b!7642286 c!1407667) b!7642284))

(assert (= (and b!7642286 (not c!1407667)) b!7642287))

(assert (= (and b!7642284 (not res!3060984)) b!7642294))

(assert (= (and b!7642287 c!1407669) b!7642289))

(assert (= (and b!7642287 (not c!1407669)) b!7642290))

(assert (= (and b!7642289 (not res!3060986)) b!7642292))

(assert (= (or b!7642292 b!7642290) bm!701491))

(assert (= (or b!7642285 b!7642289) bm!701490))

(declare-fun m!8163354 () Bool)

(assert (=> b!7642284 m!8163354))

(assert (=> bm!701490 m!8163310))

(declare-fun m!8163356 () Bool)

(assert (=> b!7642294 m!8163356))

(declare-fun m!8163358 () Bool)

(assert (=> bm!701491 m!8163358))

(assert (=> b!7642009 d!2325247))

(declare-fun d!2325259 () Bool)

(declare-fun e!4542518 () Bool)

(assert (=> d!2325259 e!4542518))

(declare-fun res!3060991 () Bool)

(assert (=> d!2325259 (=> res!3060991 e!4542518)))

(assert (=> d!2325259 (= res!3060991 (matchR!9948 (regOne!41407 r!14126) s!9605))))

(declare-fun lt!2660611 () Unit!167870)

(declare-fun choose!59013 (Regex!20447 Regex!20447 List!73298) Unit!167870)

(assert (=> d!2325259 (= lt!2660611 (choose!59013 (regOne!41407 r!14126) (regTwo!41407 r!14126) s!9605))))

(declare-fun e!4542519 () Bool)

(assert (=> d!2325259 e!4542519))

(declare-fun res!3060992 () Bool)

(assert (=> d!2325259 (=> (not res!3060992) (not e!4542519))))

(assert (=> d!2325259 (= res!3060992 (validRegex!10865 (regOne!41407 r!14126)))))

(assert (=> d!2325259 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!350 (regOne!41407 r!14126) (regTwo!41407 r!14126) s!9605) lt!2660611)))

(declare-fun b!7642303 () Bool)

(assert (=> b!7642303 (= e!4542519 (validRegex!10865 (regTwo!41407 r!14126)))))

(declare-fun b!7642304 () Bool)

(assert (=> b!7642304 (= e!4542518 (matchR!9948 (regTwo!41407 r!14126) s!9605))))

(assert (= (and d!2325259 res!3060992) b!7642303))

(assert (= (and d!2325259 (not res!3060991)) b!7642304))

(assert (=> d!2325259 m!8163286))

(declare-fun m!8163360 () Bool)

(assert (=> d!2325259 m!8163360))

(declare-fun m!8163362 () Bool)

(assert (=> d!2325259 m!8163362))

(assert (=> b!7642303 m!8163282))

(assert (=> b!7642304 m!8163274))

(assert (=> b!7642009 d!2325259))

(declare-fun b!7642323 () Bool)

(declare-fun e!4542536 () Bool)

(declare-fun e!4542538 () Bool)

(assert (=> b!7642323 (= e!4542536 e!4542538)))

(declare-fun res!3061006 () Bool)

(assert (=> b!7642323 (= res!3061006 (not (nullable!8952 (reg!20776 (regTwo!41407 r!14126)))))))

(assert (=> b!7642323 (=> (not res!3061006) (not e!4542538))))

(declare-fun b!7642324 () Bool)

(declare-fun e!4542540 () Bool)

(declare-fun call!701504 () Bool)

(assert (=> b!7642324 (= e!4542540 call!701504)))

(declare-fun b!7642325 () Bool)

(declare-fun e!4542535 () Bool)

(declare-fun e!4542537 () Bool)

(assert (=> b!7642325 (= e!4542535 e!4542537)))

(declare-fun res!3061003 () Bool)

(assert (=> b!7642325 (=> (not res!3061003) (not e!4542537))))

(declare-fun call!701505 () Bool)

(assert (=> b!7642325 (= res!3061003 call!701505)))

(declare-fun bm!701498 () Bool)

(declare-fun c!1407675 () Bool)

(assert (=> bm!701498 (= call!701504 (validRegex!10865 (ite c!1407675 (regTwo!41407 (regTwo!41407 r!14126)) (regTwo!41406 (regTwo!41407 r!14126)))))))

(declare-fun b!7642326 () Bool)

(declare-fun res!3061004 () Bool)

(assert (=> b!7642326 (=> res!3061004 e!4542535)))

(assert (=> b!7642326 (= res!3061004 (not ((_ is Concat!29292) (regTwo!41407 r!14126))))))

(declare-fun e!4542539 () Bool)

(assert (=> b!7642326 (= e!4542539 e!4542535)))

(declare-fun bm!701499 () Bool)

(declare-fun c!1407676 () Bool)

(declare-fun call!701503 () Bool)

(assert (=> bm!701499 (= call!701503 (validRegex!10865 (ite c!1407676 (reg!20776 (regTwo!41407 r!14126)) (ite c!1407675 (regOne!41407 (regTwo!41407 r!14126)) (regOne!41406 (regTwo!41407 r!14126))))))))

(declare-fun b!7642327 () Bool)

(assert (=> b!7642327 (= e!4542537 call!701504)))

(declare-fun b!7642328 () Bool)

(assert (=> b!7642328 (= e!4542538 call!701503)))

(declare-fun b!7642329 () Bool)

(assert (=> b!7642329 (= e!4542536 e!4542539)))

(assert (=> b!7642329 (= c!1407675 ((_ is Union!20447) (regTwo!41407 r!14126)))))

(declare-fun bm!701500 () Bool)

(assert (=> bm!701500 (= call!701505 call!701503)))

(declare-fun b!7642330 () Bool)

(declare-fun res!3061005 () Bool)

(assert (=> b!7642330 (=> (not res!3061005) (not e!4542540))))

(assert (=> b!7642330 (= res!3061005 call!701505)))

(assert (=> b!7642330 (= e!4542539 e!4542540)))

(declare-fun d!2325261 () Bool)

(declare-fun res!3061007 () Bool)

(declare-fun e!4542534 () Bool)

(assert (=> d!2325261 (=> res!3061007 e!4542534)))

(assert (=> d!2325261 (= res!3061007 ((_ is ElementMatch!20447) (regTwo!41407 r!14126)))))

(assert (=> d!2325261 (= (validRegex!10865 (regTwo!41407 r!14126)) e!4542534)))

(declare-fun b!7642331 () Bool)

(assert (=> b!7642331 (= e!4542534 e!4542536)))

(assert (=> b!7642331 (= c!1407676 ((_ is Star!20447) (regTwo!41407 r!14126)))))

(assert (= (and d!2325261 (not res!3061007)) b!7642331))

(assert (= (and b!7642331 c!1407676) b!7642323))

(assert (= (and b!7642331 (not c!1407676)) b!7642329))

(assert (= (and b!7642323 res!3061006) b!7642328))

(assert (= (and b!7642329 c!1407675) b!7642330))

(assert (= (and b!7642329 (not c!1407675)) b!7642326))

(assert (= (and b!7642330 res!3061005) b!7642324))

(assert (= (and b!7642326 (not res!3061004)) b!7642325))

(assert (= (and b!7642325 res!3061003) b!7642327))

(assert (= (or b!7642330 b!7642325) bm!701500))

(assert (= (or b!7642324 b!7642327) bm!701498))

(assert (= (or b!7642328 bm!701500) bm!701499))

(declare-fun m!8163364 () Bool)

(assert (=> b!7642323 m!8163364))

(declare-fun m!8163366 () Bool)

(assert (=> bm!701498 m!8163366))

(declare-fun m!8163368 () Bool)

(assert (=> bm!701499 m!8163368))

(assert (=> b!7642009 d!2325261))

(declare-fun d!2325263 () Bool)

(assert (=> d!2325263 (= (matchR!9948 (regOne!41407 r!14126) s!9605) (matchRSpec!4570 (regOne!41407 r!14126) s!9605))))

(declare-fun lt!2660614 () Unit!167870)

(declare-fun choose!59015 (Regex!20447 List!73298) Unit!167870)

(assert (=> d!2325263 (= lt!2660614 (choose!59015 (regOne!41407 r!14126) s!9605))))

(assert (=> d!2325263 (validRegex!10865 (regOne!41407 r!14126))))

(assert (=> d!2325263 (= (mainMatchTheorem!4550 (regOne!41407 r!14126) s!9605) lt!2660614)))

(declare-fun bs!1944738 () Bool)

(assert (= bs!1944738 d!2325263))

(assert (=> bs!1944738 m!8163286))

(assert (=> bs!1944738 m!8163278))

(declare-fun m!8163370 () Bool)

(assert (=> bs!1944738 m!8163370))

(assert (=> bs!1944738 m!8163362))

(assert (=> b!7642009 d!2325263))

(declare-fun b!7642332 () Bool)

(declare-fun e!4542546 () Bool)

(declare-fun e!4542545 () Bool)

(assert (=> b!7642332 (= e!4542546 e!4542545)))

(declare-fun res!3061015 () Bool)

(assert (=> b!7642332 (=> res!3061015 e!4542545)))

(declare-fun call!701506 () Bool)

(assert (=> b!7642332 (= res!3061015 call!701506)))

(declare-fun b!7642333 () Bool)

(declare-fun res!3061013 () Bool)

(declare-fun e!4542541 () Bool)

(assert (=> b!7642333 (=> (not res!3061013) (not e!4542541))))

(assert (=> b!7642333 (= res!3061013 (isEmpty!41803 (tail!15263 s!9605)))))

(declare-fun b!7642334 () Bool)

(assert (=> b!7642334 (= e!4542541 (= (head!15723 s!9605) (c!1407614 (regOne!41407 r!14126))))))

(declare-fun b!7642335 () Bool)

(assert (=> b!7642335 (= e!4542545 (not (= (head!15723 s!9605) (c!1407614 (regOne!41407 r!14126)))))))

(declare-fun b!7642336 () Bool)

(declare-fun e!4542544 () Bool)

(declare-fun e!4542547 () Bool)

(assert (=> b!7642336 (= e!4542544 e!4542547)))

(declare-fun c!1407678 () Bool)

(assert (=> b!7642336 (= c!1407678 ((_ is EmptyLang!20447) (regOne!41407 r!14126)))))

(declare-fun b!7642337 () Bool)

(declare-fun e!4542542 () Bool)

(assert (=> b!7642337 (= e!4542542 (nullable!8952 (regOne!41407 r!14126)))))

(declare-fun b!7642338 () Bool)

(declare-fun res!3061009 () Bool)

(assert (=> b!7642338 (=> res!3061009 e!4542545)))

(assert (=> b!7642338 (= res!3061009 (not (isEmpty!41803 (tail!15263 s!9605))))))

(declare-fun b!7642339 () Bool)

(declare-fun res!3061010 () Bool)

(declare-fun e!4542543 () Bool)

(assert (=> b!7642339 (=> res!3061010 e!4542543)))

(assert (=> b!7642339 (= res!3061010 e!4542541)))

(declare-fun res!3061008 () Bool)

(assert (=> b!7642339 (=> (not res!3061008) (not e!4542541))))

(declare-fun lt!2660615 () Bool)

(assert (=> b!7642339 (= res!3061008 lt!2660615)))

(declare-fun b!7642340 () Bool)

(declare-fun res!3061014 () Bool)

(assert (=> b!7642340 (=> (not res!3061014) (not e!4542541))))

(assert (=> b!7642340 (= res!3061014 (not call!701506))))

(declare-fun b!7642342 () Bool)

(declare-fun res!3061011 () Bool)

(assert (=> b!7642342 (=> res!3061011 e!4542543)))

(assert (=> b!7642342 (= res!3061011 (not ((_ is ElementMatch!20447) (regOne!41407 r!14126))))))

(assert (=> b!7642342 (= e!4542547 e!4542543)))

(declare-fun b!7642343 () Bool)

(assert (=> b!7642343 (= e!4542547 (not lt!2660615))))

(declare-fun bm!701501 () Bool)

(assert (=> bm!701501 (= call!701506 (isEmpty!41803 s!9605))))

(declare-fun b!7642344 () Bool)

(assert (=> b!7642344 (= e!4542542 (matchR!9948 (derivativeStep!5923 (regOne!41407 r!14126) (head!15723 s!9605)) (tail!15263 s!9605)))))

(declare-fun b!7642345 () Bool)

(assert (=> b!7642345 (= e!4542543 e!4542546)))

(declare-fun res!3061012 () Bool)

(assert (=> b!7642345 (=> (not res!3061012) (not e!4542546))))

(assert (=> b!7642345 (= res!3061012 (not lt!2660615))))

(declare-fun b!7642341 () Bool)

(assert (=> b!7642341 (= e!4542544 (= lt!2660615 call!701506))))

(declare-fun d!2325265 () Bool)

(assert (=> d!2325265 e!4542544))

(declare-fun c!1407677 () Bool)

(assert (=> d!2325265 (= c!1407677 ((_ is EmptyExpr!20447) (regOne!41407 r!14126)))))

(assert (=> d!2325265 (= lt!2660615 e!4542542)))

(declare-fun c!1407679 () Bool)

(assert (=> d!2325265 (= c!1407679 (isEmpty!41803 s!9605))))

(assert (=> d!2325265 (validRegex!10865 (regOne!41407 r!14126))))

(assert (=> d!2325265 (= (matchR!9948 (regOne!41407 r!14126) s!9605) lt!2660615)))

(assert (= (and d!2325265 c!1407679) b!7642337))

(assert (= (and d!2325265 (not c!1407679)) b!7642344))

(assert (= (and d!2325265 c!1407677) b!7642341))

(assert (= (and d!2325265 (not c!1407677)) b!7642336))

(assert (= (and b!7642336 c!1407678) b!7642343))

(assert (= (and b!7642336 (not c!1407678)) b!7642342))

(assert (= (and b!7642342 (not res!3061011)) b!7642339))

(assert (= (and b!7642339 res!3061008) b!7642340))

(assert (= (and b!7642340 res!3061014) b!7642333))

(assert (= (and b!7642333 res!3061013) b!7642334))

(assert (= (and b!7642339 (not res!3061010)) b!7642345))

(assert (= (and b!7642345 res!3061012) b!7642332))

(assert (= (and b!7642332 (not res!3061015)) b!7642338))

(assert (= (and b!7642338 (not res!3061009)) b!7642335))

(assert (= (or b!7642341 b!7642332 b!7642340) bm!701501))

(assert (=> bm!701501 m!8163310))

(declare-fun m!8163372 () Bool)

(assert (=> b!7642337 m!8163372))

(assert (=> b!7642335 m!8163314))

(assert (=> d!2325265 m!8163310))

(assert (=> d!2325265 m!8163362))

(assert (=> b!7642344 m!8163314))

(assert (=> b!7642344 m!8163314))

(declare-fun m!8163374 () Bool)

(assert (=> b!7642344 m!8163374))

(assert (=> b!7642344 m!8163318))

(assert (=> b!7642344 m!8163374))

(assert (=> b!7642344 m!8163318))

(declare-fun m!8163376 () Bool)

(assert (=> b!7642344 m!8163376))

(assert (=> b!7642338 m!8163318))

(assert (=> b!7642338 m!8163318))

(assert (=> b!7642338 m!8163322))

(assert (=> b!7642333 m!8163318))

(assert (=> b!7642333 m!8163318))

(assert (=> b!7642333 m!8163322))

(assert (=> b!7642334 m!8163314))

(assert (=> b!7642009 d!2325265))

(declare-fun b!7642346 () Bool)

(declare-fun e!4542550 () Bool)

(declare-fun e!4542552 () Bool)

(assert (=> b!7642346 (= e!4542550 e!4542552)))

(declare-fun res!3061019 () Bool)

(assert (=> b!7642346 (= res!3061019 (not (nullable!8952 (reg!20776 r!14126))))))

(assert (=> b!7642346 (=> (not res!3061019) (not e!4542552))))

(declare-fun b!7642347 () Bool)

(declare-fun e!4542554 () Bool)

(declare-fun call!701508 () Bool)

(assert (=> b!7642347 (= e!4542554 call!701508)))

(declare-fun b!7642348 () Bool)

(declare-fun e!4542549 () Bool)

(declare-fun e!4542551 () Bool)

(assert (=> b!7642348 (= e!4542549 e!4542551)))

(declare-fun res!3061016 () Bool)

(assert (=> b!7642348 (=> (not res!3061016) (not e!4542551))))

(declare-fun call!701509 () Bool)

(assert (=> b!7642348 (= res!3061016 call!701509)))

(declare-fun bm!701502 () Bool)

(declare-fun c!1407680 () Bool)

(assert (=> bm!701502 (= call!701508 (validRegex!10865 (ite c!1407680 (regTwo!41407 r!14126) (regTwo!41406 r!14126))))))

(declare-fun b!7642349 () Bool)

(declare-fun res!3061017 () Bool)

(assert (=> b!7642349 (=> res!3061017 e!4542549)))

(assert (=> b!7642349 (= res!3061017 (not ((_ is Concat!29292) r!14126)))))

(declare-fun e!4542553 () Bool)

(assert (=> b!7642349 (= e!4542553 e!4542549)))

(declare-fun c!1407681 () Bool)

(declare-fun call!701507 () Bool)

(declare-fun bm!701503 () Bool)

(assert (=> bm!701503 (= call!701507 (validRegex!10865 (ite c!1407681 (reg!20776 r!14126) (ite c!1407680 (regOne!41407 r!14126) (regOne!41406 r!14126)))))))

(declare-fun b!7642350 () Bool)

(assert (=> b!7642350 (= e!4542551 call!701508)))

(declare-fun b!7642351 () Bool)

(assert (=> b!7642351 (= e!4542552 call!701507)))

(declare-fun b!7642352 () Bool)

(assert (=> b!7642352 (= e!4542550 e!4542553)))

(assert (=> b!7642352 (= c!1407680 ((_ is Union!20447) r!14126))))

(declare-fun bm!701504 () Bool)

(assert (=> bm!701504 (= call!701509 call!701507)))

(declare-fun b!7642353 () Bool)

(declare-fun res!3061018 () Bool)

(assert (=> b!7642353 (=> (not res!3061018) (not e!4542554))))

(assert (=> b!7642353 (= res!3061018 call!701509)))

(assert (=> b!7642353 (= e!4542553 e!4542554)))

(declare-fun d!2325267 () Bool)

(declare-fun res!3061020 () Bool)

(declare-fun e!4542548 () Bool)

(assert (=> d!2325267 (=> res!3061020 e!4542548)))

(assert (=> d!2325267 (= res!3061020 ((_ is ElementMatch!20447) r!14126))))

(assert (=> d!2325267 (= (validRegex!10865 r!14126) e!4542548)))

(declare-fun b!7642354 () Bool)

(assert (=> b!7642354 (= e!4542548 e!4542550)))

(assert (=> b!7642354 (= c!1407681 ((_ is Star!20447) r!14126))))

(assert (= (and d!2325267 (not res!3061020)) b!7642354))

(assert (= (and b!7642354 c!1407681) b!7642346))

(assert (= (and b!7642354 (not c!1407681)) b!7642352))

(assert (= (and b!7642346 res!3061019) b!7642351))

(assert (= (and b!7642352 c!1407680) b!7642353))

(assert (= (and b!7642352 (not c!1407680)) b!7642349))

(assert (= (and b!7642353 res!3061018) b!7642347))

(assert (= (and b!7642349 (not res!3061017)) b!7642348))

(assert (= (and b!7642348 res!3061016) b!7642350))

(assert (= (or b!7642353 b!7642348) bm!701504))

(assert (= (or b!7642347 b!7642350) bm!701502))

(assert (= (or b!7642351 bm!701504) bm!701503))

(declare-fun m!8163378 () Bool)

(assert (=> b!7642346 m!8163378))

(declare-fun m!8163380 () Bool)

(assert (=> bm!701502 m!8163380))

(declare-fun m!8163382 () Bool)

(assert (=> bm!701503 m!8163382))

(assert (=> start!735604 d!2325267))

(declare-fun b!7642355 () Bool)

(declare-fun e!4542560 () Bool)

(declare-fun e!4542559 () Bool)

(assert (=> b!7642355 (= e!4542560 e!4542559)))

(declare-fun res!3061028 () Bool)

(assert (=> b!7642355 (=> res!3061028 e!4542559)))

(declare-fun call!701510 () Bool)

(assert (=> b!7642355 (= res!3061028 call!701510)))

(declare-fun b!7642356 () Bool)

(declare-fun res!3061026 () Bool)

(declare-fun e!4542555 () Bool)

(assert (=> b!7642356 (=> (not res!3061026) (not e!4542555))))

(assert (=> b!7642356 (= res!3061026 (isEmpty!41803 (tail!15263 s!9605)))))

(declare-fun b!7642357 () Bool)

(assert (=> b!7642357 (= e!4542555 (= (head!15723 s!9605) (c!1407614 r!14126)))))

(declare-fun b!7642358 () Bool)

(assert (=> b!7642358 (= e!4542559 (not (= (head!15723 s!9605) (c!1407614 r!14126))))))

(declare-fun b!7642359 () Bool)

(declare-fun e!4542558 () Bool)

(declare-fun e!4542561 () Bool)

(assert (=> b!7642359 (= e!4542558 e!4542561)))

(declare-fun c!1407683 () Bool)

(assert (=> b!7642359 (= c!1407683 ((_ is EmptyLang!20447) r!14126))))

(declare-fun b!7642360 () Bool)

(declare-fun e!4542556 () Bool)

(assert (=> b!7642360 (= e!4542556 (nullable!8952 r!14126))))

(declare-fun b!7642361 () Bool)

(declare-fun res!3061022 () Bool)

(assert (=> b!7642361 (=> res!3061022 e!4542559)))

(assert (=> b!7642361 (= res!3061022 (not (isEmpty!41803 (tail!15263 s!9605))))))

(declare-fun b!7642362 () Bool)

(declare-fun res!3061023 () Bool)

(declare-fun e!4542557 () Bool)

(assert (=> b!7642362 (=> res!3061023 e!4542557)))

(assert (=> b!7642362 (= res!3061023 e!4542555)))

(declare-fun res!3061021 () Bool)

(assert (=> b!7642362 (=> (not res!3061021) (not e!4542555))))

(declare-fun lt!2660616 () Bool)

(assert (=> b!7642362 (= res!3061021 lt!2660616)))

(declare-fun b!7642363 () Bool)

(declare-fun res!3061027 () Bool)

(assert (=> b!7642363 (=> (not res!3061027) (not e!4542555))))

(assert (=> b!7642363 (= res!3061027 (not call!701510))))

(declare-fun b!7642365 () Bool)

(declare-fun res!3061024 () Bool)

(assert (=> b!7642365 (=> res!3061024 e!4542557)))

(assert (=> b!7642365 (= res!3061024 (not ((_ is ElementMatch!20447) r!14126)))))

(assert (=> b!7642365 (= e!4542561 e!4542557)))

(declare-fun b!7642366 () Bool)

(assert (=> b!7642366 (= e!4542561 (not lt!2660616))))

(declare-fun bm!701505 () Bool)

(assert (=> bm!701505 (= call!701510 (isEmpty!41803 s!9605))))

(declare-fun b!7642367 () Bool)

(assert (=> b!7642367 (= e!4542556 (matchR!9948 (derivativeStep!5923 r!14126 (head!15723 s!9605)) (tail!15263 s!9605)))))

(declare-fun b!7642368 () Bool)

(assert (=> b!7642368 (= e!4542557 e!4542560)))

(declare-fun res!3061025 () Bool)

(assert (=> b!7642368 (=> (not res!3061025) (not e!4542560))))

(assert (=> b!7642368 (= res!3061025 (not lt!2660616))))

(declare-fun b!7642364 () Bool)

(assert (=> b!7642364 (= e!4542558 (= lt!2660616 call!701510))))

(declare-fun d!2325269 () Bool)

(assert (=> d!2325269 e!4542558))

(declare-fun c!1407682 () Bool)

(assert (=> d!2325269 (= c!1407682 ((_ is EmptyExpr!20447) r!14126))))

(assert (=> d!2325269 (= lt!2660616 e!4542556)))

(declare-fun c!1407684 () Bool)

(assert (=> d!2325269 (= c!1407684 (isEmpty!41803 s!9605))))

(assert (=> d!2325269 (validRegex!10865 r!14126)))

(assert (=> d!2325269 (= (matchR!9948 r!14126 s!9605) lt!2660616)))

(assert (= (and d!2325269 c!1407684) b!7642360))

(assert (= (and d!2325269 (not c!1407684)) b!7642367))

(assert (= (and d!2325269 c!1407682) b!7642364))

(assert (= (and d!2325269 (not c!1407682)) b!7642359))

(assert (= (and b!7642359 c!1407683) b!7642366))

(assert (= (and b!7642359 (not c!1407683)) b!7642365))

(assert (= (and b!7642365 (not res!3061024)) b!7642362))

(assert (= (and b!7642362 res!3061021) b!7642363))

(assert (= (and b!7642363 res!3061027) b!7642356))

(assert (= (and b!7642356 res!3061026) b!7642357))

(assert (= (and b!7642362 (not res!3061023)) b!7642368))

(assert (= (and b!7642368 res!3061025) b!7642355))

(assert (= (and b!7642355 (not res!3061028)) b!7642361))

(assert (= (and b!7642361 (not res!3061022)) b!7642358))

(assert (= (or b!7642364 b!7642355 b!7642363) bm!701505))

(assert (=> bm!701505 m!8163310))

(declare-fun m!8163384 () Bool)

(assert (=> b!7642360 m!8163384))

(assert (=> b!7642358 m!8163314))

(assert (=> d!2325269 m!8163310))

(assert (=> d!2325269 m!8163276))

(assert (=> b!7642367 m!8163314))

(assert (=> b!7642367 m!8163314))

(declare-fun m!8163386 () Bool)

(assert (=> b!7642367 m!8163386))

(assert (=> b!7642367 m!8163318))

(assert (=> b!7642367 m!8163386))

(assert (=> b!7642367 m!8163318))

(declare-fun m!8163388 () Bool)

(assert (=> b!7642367 m!8163388))

(assert (=> b!7642361 m!8163318))

(assert (=> b!7642361 m!8163318))

(assert (=> b!7642361 m!8163322))

(assert (=> b!7642356 m!8163318))

(assert (=> b!7642356 m!8163318))

(assert (=> b!7642356 m!8163322))

(assert (=> b!7642357 m!8163314))

(assert (=> b!7642013 d!2325269))

(declare-fun b!7642381 () Bool)

(declare-fun e!4542564 () Bool)

(declare-fun tp!2230905 () Bool)

(assert (=> b!7642381 (= e!4542564 tp!2230905)))

(declare-fun b!7642379 () Bool)

(assert (=> b!7642379 (= e!4542564 tp_is_empty!51249)))

(declare-fun b!7642382 () Bool)

(declare-fun tp!2230903 () Bool)

(declare-fun tp!2230902 () Bool)

(assert (=> b!7642382 (= e!4542564 (and tp!2230903 tp!2230902))))

(assert (=> b!7642014 (= tp!2230850 e!4542564)))

(declare-fun b!7642380 () Bool)

(declare-fun tp!2230904 () Bool)

(declare-fun tp!2230906 () Bool)

(assert (=> b!7642380 (= e!4542564 (and tp!2230904 tp!2230906))))

(assert (= (and b!7642014 ((_ is ElementMatch!20447) (reg!20776 r!14126))) b!7642379))

(assert (= (and b!7642014 ((_ is Concat!29292) (reg!20776 r!14126))) b!7642380))

(assert (= (and b!7642014 ((_ is Star!20447) (reg!20776 r!14126))) b!7642381))

(assert (= (and b!7642014 ((_ is Union!20447) (reg!20776 r!14126))) b!7642382))

(declare-fun b!7642385 () Bool)

(declare-fun e!4542565 () Bool)

(declare-fun tp!2230910 () Bool)

(assert (=> b!7642385 (= e!4542565 tp!2230910)))

(declare-fun b!7642383 () Bool)

(assert (=> b!7642383 (= e!4542565 tp_is_empty!51249)))

(declare-fun b!7642386 () Bool)

(declare-fun tp!2230908 () Bool)

(declare-fun tp!2230907 () Bool)

(assert (=> b!7642386 (= e!4542565 (and tp!2230908 tp!2230907))))

(assert (=> b!7642015 (= tp!2230849 e!4542565)))

(declare-fun b!7642384 () Bool)

(declare-fun tp!2230909 () Bool)

(declare-fun tp!2230911 () Bool)

(assert (=> b!7642384 (= e!4542565 (and tp!2230909 tp!2230911))))

(assert (= (and b!7642015 ((_ is ElementMatch!20447) (regOne!41407 r!14126))) b!7642383))

(assert (= (and b!7642015 ((_ is Concat!29292) (regOne!41407 r!14126))) b!7642384))

(assert (= (and b!7642015 ((_ is Star!20447) (regOne!41407 r!14126))) b!7642385))

(assert (= (and b!7642015 ((_ is Union!20447) (regOne!41407 r!14126))) b!7642386))

(declare-fun b!7642389 () Bool)

(declare-fun e!4542566 () Bool)

(declare-fun tp!2230915 () Bool)

(assert (=> b!7642389 (= e!4542566 tp!2230915)))

(declare-fun b!7642387 () Bool)

(assert (=> b!7642387 (= e!4542566 tp_is_empty!51249)))

(declare-fun b!7642390 () Bool)

(declare-fun tp!2230913 () Bool)

(declare-fun tp!2230912 () Bool)

(assert (=> b!7642390 (= e!4542566 (and tp!2230913 tp!2230912))))

(assert (=> b!7642015 (= tp!2230853 e!4542566)))

(declare-fun b!7642388 () Bool)

(declare-fun tp!2230914 () Bool)

(declare-fun tp!2230916 () Bool)

(assert (=> b!7642388 (= e!4542566 (and tp!2230914 tp!2230916))))

(assert (= (and b!7642015 ((_ is ElementMatch!20447) (regTwo!41407 r!14126))) b!7642387))

(assert (= (and b!7642015 ((_ is Concat!29292) (regTwo!41407 r!14126))) b!7642388))

(assert (= (and b!7642015 ((_ is Star!20447) (regTwo!41407 r!14126))) b!7642389))

(assert (= (and b!7642015 ((_ is Union!20447) (regTwo!41407 r!14126))) b!7642390))

(declare-fun b!7642395 () Bool)

(declare-fun e!4542569 () Bool)

(declare-fun tp!2230919 () Bool)

(assert (=> b!7642395 (= e!4542569 (and tp_is_empty!51249 tp!2230919))))

(assert (=> b!7642011 (= tp!2230851 e!4542569)))

(assert (= (and b!7642011 ((_ is Cons!73174) (t!388033 s!9605))) b!7642395))

(declare-fun b!7642398 () Bool)

(declare-fun e!4542570 () Bool)

(declare-fun tp!2230923 () Bool)

(assert (=> b!7642398 (= e!4542570 tp!2230923)))

(declare-fun b!7642396 () Bool)

(assert (=> b!7642396 (= e!4542570 tp_is_empty!51249)))

(declare-fun b!7642399 () Bool)

(declare-fun tp!2230921 () Bool)

(declare-fun tp!2230920 () Bool)

(assert (=> b!7642399 (= e!4542570 (and tp!2230921 tp!2230920))))

(assert (=> b!7642007 (= tp!2230852 e!4542570)))

(declare-fun b!7642397 () Bool)

(declare-fun tp!2230922 () Bool)

(declare-fun tp!2230924 () Bool)

(assert (=> b!7642397 (= e!4542570 (and tp!2230922 tp!2230924))))

(assert (= (and b!7642007 ((_ is ElementMatch!20447) (regOne!41406 r!14126))) b!7642396))

(assert (= (and b!7642007 ((_ is Concat!29292) (regOne!41406 r!14126))) b!7642397))

(assert (= (and b!7642007 ((_ is Star!20447) (regOne!41406 r!14126))) b!7642398))

(assert (= (and b!7642007 ((_ is Union!20447) (regOne!41406 r!14126))) b!7642399))

(declare-fun b!7642402 () Bool)

(declare-fun e!4542571 () Bool)

(declare-fun tp!2230928 () Bool)

(assert (=> b!7642402 (= e!4542571 tp!2230928)))

(declare-fun b!7642400 () Bool)

(assert (=> b!7642400 (= e!4542571 tp_is_empty!51249)))

(declare-fun b!7642403 () Bool)

(declare-fun tp!2230926 () Bool)

(declare-fun tp!2230925 () Bool)

(assert (=> b!7642403 (= e!4542571 (and tp!2230926 tp!2230925))))

(assert (=> b!7642007 (= tp!2230848 e!4542571)))

(declare-fun b!7642401 () Bool)

(declare-fun tp!2230927 () Bool)

(declare-fun tp!2230929 () Bool)

(assert (=> b!7642401 (= e!4542571 (and tp!2230927 tp!2230929))))

(assert (= (and b!7642007 ((_ is ElementMatch!20447) (regTwo!41406 r!14126))) b!7642400))

(assert (= (and b!7642007 ((_ is Concat!29292) (regTwo!41406 r!14126))) b!7642401))

(assert (= (and b!7642007 ((_ is Star!20447) (regTwo!41406 r!14126))) b!7642402))

(assert (= (and b!7642007 ((_ is Union!20447) (regTwo!41406 r!14126))) b!7642403))

(check-sat (not bm!701499) (not b!7642333) (not b!7642395) (not b!7642105) (not bm!701502) (not bm!701491) (not b!7642390) (not b!7642101) (not b!7642361) (not b!7642398) (not bm!701501) (not b!7642367) (not d!2325263) (not b!7642384) (not d!2325241) (not b!7642112) (not d!2325259) (not bm!701498) (not b!7642385) (not b!7642357) (not b!7642337) (not b!7642399) (not bm!701466) (not b!7642380) (not b!7642323) (not b!7642386) (not b!7642346) (not d!2325265) (not b!7642382) (not d!2325269) (not b!7642397) (not b!7642344) (not b!7642303) (not b!7642338) (not b!7642103) (not b!7642294) (not b!7642402) (not b!7642356) (not b!7642388) (not bm!701503) tp_is_empty!51249 (not b!7642389) (not b!7642304) (not bm!701490) (not b!7642403) (not b!7642381) (not bm!701505) (not b!7642401) (not b!7642284) (not b!7642106) (not b!7642335) (not b!7642358) (not b!7642360) (not b!7642334) (not b!7642102))
(check-sat)
