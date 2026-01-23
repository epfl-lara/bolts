; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741794 () Bool)

(assert start!741794)

(declare-fun b!7811352 () Bool)

(declare-fun e!4623176 () Bool)

(declare-fun tp!2302092 () Bool)

(declare-fun tp!2302090 () Bool)

(assert (=> b!7811352 (= e!4623176 (and tp!2302092 tp!2302090))))

(declare-fun b!7811353 () Bool)

(declare-fun res!3110641 () Bool)

(declare-fun e!4623174 () Bool)

(assert (=> b!7811353 (=> (not res!3110641) (not e!4623174))))

(declare-datatypes ((C!42148 0))(
  ( (C!42149 (val!31514 Int)) )
))
(declare-datatypes ((List!73748 0))(
  ( (Nil!73624) (Cons!73624 (h!80072 C!42148) (t!388483 List!73748)) )
))
(declare-fun s!14225 () List!73748)

(get-info :version)

(assert (=> b!7811353 (= res!3110641 ((_ is Cons!73624) s!14225))))

(declare-fun b!7811354 () Bool)

(declare-fun e!4623175 () Bool)

(assert (=> b!7811354 (= e!4623174 e!4623175)))

(declare-fun res!3110642 () Bool)

(assert (=> b!7811354 (=> res!3110642 e!4623175)))

(declare-datatypes ((Regex!20911 0))(
  ( (ElementMatch!20911 (c!1438258 C!42148)) (Concat!29756 (regOne!42334 Regex!20911) (regTwo!42334 Regex!20911)) (EmptyExpr!20911) (Star!20911 (reg!21240 Regex!20911)) (EmptyLang!20911) (Union!20911 (regOne!42335 Regex!20911) (regTwo!42335 Regex!20911)) )
))
(declare-fun lt!2675872 () Regex!20911)

(declare-fun validRegex!11325 (Regex!20911) Bool)

(assert (=> b!7811354 (= res!3110642 (not (validRegex!11325 lt!2675872)))))

(declare-fun lt!2675871 () Regex!20911)

(declare-fun r2!6144 () Regex!20911)

(declare-fun derivativeStep!6242 (Regex!20911 C!42148) Regex!20911)

(assert (=> b!7811354 (= lt!2675871 (derivativeStep!6242 r2!6144 (h!80072 s!14225)))))

(declare-fun r1!6206 () Regex!20911)

(assert (=> b!7811354 (= lt!2675872 (derivativeStep!6242 r1!6206 (h!80072 s!14225)))))

(declare-fun b!7811355 () Bool)

(declare-fun res!3110643 () Bool)

(assert (=> b!7811355 (=> (not res!3110643) (not e!4623174))))

(declare-fun matchR!10369 (Regex!20911 List!73748) Bool)

(assert (=> b!7811355 (= res!3110643 (matchR!10369 (Union!20911 r1!6206 r2!6144) s!14225))))

(declare-fun b!7811356 () Bool)

(declare-fun e!4623173 () Bool)

(declare-fun tp_is_empty!52177 () Bool)

(assert (=> b!7811356 (= e!4623173 tp_is_empty!52177)))

(declare-fun b!7811357 () Bool)

(declare-fun tp!2302087 () Bool)

(assert (=> b!7811357 (= e!4623173 tp!2302087)))

(declare-fun b!7811358 () Bool)

(declare-fun tp!2302095 () Bool)

(declare-fun tp!2302091 () Bool)

(assert (=> b!7811358 (= e!4623173 (and tp!2302095 tp!2302091))))

(declare-fun res!3110644 () Bool)

(assert (=> start!741794 (=> (not res!3110644) (not e!4623174))))

(assert (=> start!741794 (= res!3110644 (validRegex!11325 r1!6206))))

(assert (=> start!741794 e!4623174))

(assert (=> start!741794 e!4623176))

(assert (=> start!741794 e!4623173))

(declare-fun e!4623177 () Bool)

(assert (=> start!741794 e!4623177))

(declare-fun b!7811359 () Bool)

(declare-fun tp!2302088 () Bool)

(assert (=> b!7811359 (= e!4623176 tp!2302088)))

(declare-fun b!7811360 () Bool)

(declare-fun tp!2302086 () Bool)

(declare-fun tp!2302094 () Bool)

(assert (=> b!7811360 (= e!4623173 (and tp!2302086 tp!2302094))))

(declare-fun b!7811361 () Bool)

(declare-fun tp!2302085 () Bool)

(assert (=> b!7811361 (= e!4623177 (and tp_is_empty!52177 tp!2302085))))

(declare-fun b!7811362 () Bool)

(declare-fun res!3110640 () Bool)

(assert (=> b!7811362 (=> (not res!3110640) (not e!4623174))))

(assert (=> b!7811362 (= res!3110640 (validRegex!11325 r2!6144))))

(declare-fun b!7811363 () Bool)

(assert (=> b!7811363 (= e!4623176 tp_is_empty!52177)))

(declare-fun b!7811364 () Bool)

(declare-fun tp!2302093 () Bool)

(declare-fun tp!2302089 () Bool)

(assert (=> b!7811364 (= e!4623176 (and tp!2302093 tp!2302089))))

(declare-fun b!7811365 () Bool)

(assert (=> b!7811365 (= e!4623175 (not (validRegex!11325 lt!2675871)))))

(assert (= (and start!741794 res!3110644) b!7811362))

(assert (= (and b!7811362 res!3110640) b!7811355))

(assert (= (and b!7811355 res!3110643) b!7811353))

(assert (= (and b!7811353 res!3110641) b!7811354))

(assert (= (and b!7811354 (not res!3110642)) b!7811365))

(assert (= (and start!741794 ((_ is ElementMatch!20911) r1!6206)) b!7811363))

(assert (= (and start!741794 ((_ is Concat!29756) r1!6206)) b!7811352))

(assert (= (and start!741794 ((_ is Star!20911) r1!6206)) b!7811359))

(assert (= (and start!741794 ((_ is Union!20911) r1!6206)) b!7811364))

(assert (= (and start!741794 ((_ is ElementMatch!20911) r2!6144)) b!7811356))

(assert (= (and start!741794 ((_ is Concat!29756) r2!6144)) b!7811360))

(assert (= (and start!741794 ((_ is Star!20911) r2!6144)) b!7811357))

(assert (= (and start!741794 ((_ is Union!20911) r2!6144)) b!7811358))

(assert (= (and start!741794 ((_ is Cons!73624) s!14225)) b!7811361))

(declare-fun m!8242028 () Bool)

(assert (=> b!7811365 m!8242028))

(declare-fun m!8242030 () Bool)

(assert (=> start!741794 m!8242030))

(declare-fun m!8242032 () Bool)

(assert (=> b!7811354 m!8242032))

(declare-fun m!8242034 () Bool)

(assert (=> b!7811354 m!8242034))

(declare-fun m!8242036 () Bool)

(assert (=> b!7811354 m!8242036))

(declare-fun m!8242038 () Bool)

(assert (=> b!7811355 m!8242038))

(declare-fun m!8242040 () Bool)

(assert (=> b!7811362 m!8242040))

(check-sat (not b!7811358) (not start!741794) (not b!7811359) (not b!7811361) (not b!7811365) (not b!7811362) (not b!7811354) (not b!7811357) (not b!7811360) tp_is_empty!52177 (not b!7811352) (not b!7811364) (not b!7811355))
(check-sat)
(get-model)

(declare-fun b!7811441 () Bool)

(declare-fun e!4623225 () Bool)

(declare-fun lt!2675877 () Bool)

(declare-fun call!724544 () Bool)

(assert (=> b!7811441 (= e!4623225 (= lt!2675877 call!724544))))

(declare-fun b!7811442 () Bool)

(declare-fun res!3110681 () Bool)

(declare-fun e!4623224 () Bool)

(assert (=> b!7811442 (=> (not res!3110681) (not e!4623224))))

(assert (=> b!7811442 (= res!3110681 (not call!724544))))

(declare-fun b!7811443 () Bool)

(declare-fun res!3110682 () Bool)

(declare-fun e!4623223 () Bool)

(assert (=> b!7811443 (=> res!3110682 e!4623223)))

(assert (=> b!7811443 (= res!3110682 (not ((_ is ElementMatch!20911) (Union!20911 r1!6206 r2!6144))))))

(declare-fun e!4623227 () Bool)

(assert (=> b!7811443 (= e!4623227 e!4623223)))

(declare-fun b!7811444 () Bool)

(assert (=> b!7811444 (= e!4623225 e!4623227)))

(declare-fun c!1438282 () Bool)

(assert (=> b!7811444 (= c!1438282 ((_ is EmptyLang!20911) (Union!20911 r1!6206 r2!6144)))))

(declare-fun b!7811445 () Bool)

(declare-fun e!4623228 () Bool)

(declare-fun e!4623229 () Bool)

(assert (=> b!7811445 (= e!4623228 e!4623229)))

(declare-fun res!3110680 () Bool)

(assert (=> b!7811445 (=> res!3110680 e!4623229)))

(assert (=> b!7811445 (= res!3110680 call!724544)))

(declare-fun b!7811446 () Bool)

(declare-fun head!15971 (List!73748) C!42148)

(assert (=> b!7811446 (= e!4623229 (not (= (head!15971 s!14225) (c!1438258 (Union!20911 r1!6206 r2!6144)))))))

(declare-fun b!7811447 () Bool)

(declare-fun res!3110676 () Bool)

(assert (=> b!7811447 (=> res!3110676 e!4623229)))

(declare-fun isEmpty!42270 (List!73748) Bool)

(declare-fun tail!15512 (List!73748) List!73748)

(assert (=> b!7811447 (= res!3110676 (not (isEmpty!42270 (tail!15512 s!14225))))))

(declare-fun e!4623226 () Bool)

(declare-fun b!7811448 () Bool)

(assert (=> b!7811448 (= e!4623226 (matchR!10369 (derivativeStep!6242 (Union!20911 r1!6206 r2!6144) (head!15971 s!14225)) (tail!15512 s!14225)))))

(declare-fun b!7811449 () Bool)

(assert (=> b!7811449 (= e!4623223 e!4623228)))

(declare-fun res!3110677 () Bool)

(assert (=> b!7811449 (=> (not res!3110677) (not e!4623228))))

(assert (=> b!7811449 (= res!3110677 (not lt!2675877))))

(declare-fun b!7811450 () Bool)

(assert (=> b!7811450 (= e!4623227 (not lt!2675877))))

(declare-fun d!2348749 () Bool)

(assert (=> d!2348749 e!4623225))

(declare-fun c!1438283 () Bool)

(assert (=> d!2348749 (= c!1438283 ((_ is EmptyExpr!20911) (Union!20911 r1!6206 r2!6144)))))

(assert (=> d!2348749 (= lt!2675877 e!4623226)))

(declare-fun c!1438281 () Bool)

(assert (=> d!2348749 (= c!1438281 (isEmpty!42270 s!14225))))

(assert (=> d!2348749 (validRegex!11325 (Union!20911 r1!6206 r2!6144))))

(assert (=> d!2348749 (= (matchR!10369 (Union!20911 r1!6206 r2!6144) s!14225) lt!2675877)))

(declare-fun b!7811451 () Bool)

(declare-fun nullable!9283 (Regex!20911) Bool)

(assert (=> b!7811451 (= e!4623226 (nullable!9283 (Union!20911 r1!6206 r2!6144)))))

(declare-fun b!7811452 () Bool)

(declare-fun res!3110679 () Bool)

(assert (=> b!7811452 (=> (not res!3110679) (not e!4623224))))

(assert (=> b!7811452 (= res!3110679 (isEmpty!42270 (tail!15512 s!14225)))))

(declare-fun b!7811453 () Bool)

(assert (=> b!7811453 (= e!4623224 (= (head!15971 s!14225) (c!1438258 (Union!20911 r1!6206 r2!6144))))))

(declare-fun b!7811454 () Bool)

(declare-fun res!3110683 () Bool)

(assert (=> b!7811454 (=> res!3110683 e!4623223)))

(assert (=> b!7811454 (= res!3110683 e!4623224)))

(declare-fun res!3110678 () Bool)

(assert (=> b!7811454 (=> (not res!3110678) (not e!4623224))))

(assert (=> b!7811454 (= res!3110678 lt!2675877)))

(declare-fun bm!724539 () Bool)

(assert (=> bm!724539 (= call!724544 (isEmpty!42270 s!14225))))

(assert (= (and d!2348749 c!1438281) b!7811451))

(assert (= (and d!2348749 (not c!1438281)) b!7811448))

(assert (= (and d!2348749 c!1438283) b!7811441))

(assert (= (and d!2348749 (not c!1438283)) b!7811444))

(assert (= (and b!7811444 c!1438282) b!7811450))

(assert (= (and b!7811444 (not c!1438282)) b!7811443))

(assert (= (and b!7811443 (not res!3110682)) b!7811454))

(assert (= (and b!7811454 res!3110678) b!7811442))

(assert (= (and b!7811442 res!3110681) b!7811452))

(assert (= (and b!7811452 res!3110679) b!7811453))

(assert (= (and b!7811454 (not res!3110683)) b!7811449))

(assert (= (and b!7811449 res!3110677) b!7811445))

(assert (= (and b!7811445 (not res!3110680)) b!7811447))

(assert (= (and b!7811447 (not res!3110676)) b!7811446))

(assert (= (or b!7811441 b!7811442 b!7811445) bm!724539))

(declare-fun m!8242048 () Bool)

(assert (=> b!7811453 m!8242048))

(declare-fun m!8242050 () Bool)

(assert (=> d!2348749 m!8242050))

(declare-fun m!8242052 () Bool)

(assert (=> d!2348749 m!8242052))

(assert (=> bm!724539 m!8242050))

(assert (=> b!7811448 m!8242048))

(assert (=> b!7811448 m!8242048))

(declare-fun m!8242054 () Bool)

(assert (=> b!7811448 m!8242054))

(declare-fun m!8242056 () Bool)

(assert (=> b!7811448 m!8242056))

(assert (=> b!7811448 m!8242054))

(assert (=> b!7811448 m!8242056))

(declare-fun m!8242058 () Bool)

(assert (=> b!7811448 m!8242058))

(assert (=> b!7811447 m!8242056))

(assert (=> b!7811447 m!8242056))

(declare-fun m!8242060 () Bool)

(assert (=> b!7811447 m!8242060))

(assert (=> b!7811446 m!8242048))

(declare-fun m!8242062 () Bool)

(assert (=> b!7811451 m!8242062))

(assert (=> b!7811452 m!8242056))

(assert (=> b!7811452 m!8242056))

(assert (=> b!7811452 m!8242060))

(assert (=> b!7811355 d!2348749))

(declare-fun b!7811539 () Bool)

(declare-fun e!4623285 () Bool)

(declare-fun e!4623286 () Bool)

(assert (=> b!7811539 (= e!4623285 e!4623286)))

(declare-fun c!1438309 () Bool)

(assert (=> b!7811539 (= c!1438309 ((_ is Star!20911) r1!6206))))

(declare-fun d!2348753 () Bool)

(declare-fun res!3110720 () Bool)

(assert (=> d!2348753 (=> res!3110720 e!4623285)))

(assert (=> d!2348753 (= res!3110720 ((_ is ElementMatch!20911) r1!6206))))

(assert (=> d!2348753 (= (validRegex!11325 r1!6206) e!4623285)))

(declare-fun b!7811540 () Bool)

(declare-fun e!4623283 () Bool)

(declare-fun e!4623284 () Bool)

(assert (=> b!7811540 (= e!4623283 e!4623284)))

(declare-fun res!3110724 () Bool)

(assert (=> b!7811540 (=> (not res!3110724) (not e!4623284))))

(declare-fun call!724567 () Bool)

(assert (=> b!7811540 (= res!3110724 call!724567)))

(declare-fun b!7811541 () Bool)

(declare-fun call!724566 () Bool)

(assert (=> b!7811541 (= e!4623284 call!724566)))

(declare-fun bm!724560 () Bool)

(declare-fun call!724565 () Bool)

(assert (=> bm!724560 (= call!724566 call!724565)))

(declare-fun bm!724561 () Bool)

(declare-fun c!1438308 () Bool)

(assert (=> bm!724561 (= call!724567 (validRegex!11325 (ite c!1438308 (regOne!42335 r1!6206) (regOne!42334 r1!6206))))))

(declare-fun b!7811542 () Bool)

(declare-fun e!4623282 () Bool)

(assert (=> b!7811542 (= e!4623282 call!724565)))

(declare-fun b!7811543 () Bool)

(declare-fun res!3110722 () Bool)

(assert (=> b!7811543 (=> res!3110722 e!4623283)))

(assert (=> b!7811543 (= res!3110722 (not ((_ is Concat!29756) r1!6206)))))

(declare-fun e!4623287 () Bool)

(assert (=> b!7811543 (= e!4623287 e!4623283)))

(declare-fun b!7811544 () Bool)

(assert (=> b!7811544 (= e!4623286 e!4623282)))

(declare-fun res!3110721 () Bool)

(assert (=> b!7811544 (= res!3110721 (not (nullable!9283 (reg!21240 r1!6206))))))

(assert (=> b!7811544 (=> (not res!3110721) (not e!4623282))))

(declare-fun b!7811545 () Bool)

(declare-fun res!3110723 () Bool)

(declare-fun e!4623288 () Bool)

(assert (=> b!7811545 (=> (not res!3110723) (not e!4623288))))

(assert (=> b!7811545 (= res!3110723 call!724567)))

(assert (=> b!7811545 (= e!4623287 e!4623288)))

(declare-fun b!7811546 () Bool)

(assert (=> b!7811546 (= e!4623286 e!4623287)))

(assert (=> b!7811546 (= c!1438308 ((_ is Union!20911) r1!6206))))

(declare-fun bm!724562 () Bool)

(assert (=> bm!724562 (= call!724565 (validRegex!11325 (ite c!1438309 (reg!21240 r1!6206) (ite c!1438308 (regTwo!42335 r1!6206) (regTwo!42334 r1!6206)))))))

(declare-fun b!7811547 () Bool)

(assert (=> b!7811547 (= e!4623288 call!724566)))

(assert (= (and d!2348753 (not res!3110720)) b!7811539))

(assert (= (and b!7811539 c!1438309) b!7811544))

(assert (= (and b!7811539 (not c!1438309)) b!7811546))

(assert (= (and b!7811544 res!3110721) b!7811542))

(assert (= (and b!7811546 c!1438308) b!7811545))

(assert (= (and b!7811546 (not c!1438308)) b!7811543))

(assert (= (and b!7811545 res!3110723) b!7811547))

(assert (= (and b!7811543 (not res!3110722)) b!7811540))

(assert (= (and b!7811540 res!3110724) b!7811541))

(assert (= (or b!7811545 b!7811540) bm!724561))

(assert (= (or b!7811547 b!7811541) bm!724560))

(assert (= (or b!7811542 bm!724560) bm!724562))

(declare-fun m!8242092 () Bool)

(assert (=> bm!724561 m!8242092))

(declare-fun m!8242094 () Bool)

(assert (=> b!7811544 m!8242094))

(declare-fun m!8242096 () Bool)

(assert (=> bm!724562 m!8242096))

(assert (=> start!741794 d!2348753))

(declare-fun b!7811548 () Bool)

(declare-fun e!4623292 () Bool)

(declare-fun e!4623293 () Bool)

(assert (=> b!7811548 (= e!4623292 e!4623293)))

(declare-fun c!1438311 () Bool)

(assert (=> b!7811548 (= c!1438311 ((_ is Star!20911) lt!2675872))))

(declare-fun d!2348763 () Bool)

(declare-fun res!3110725 () Bool)

(assert (=> d!2348763 (=> res!3110725 e!4623292)))

(assert (=> d!2348763 (= res!3110725 ((_ is ElementMatch!20911) lt!2675872))))

(assert (=> d!2348763 (= (validRegex!11325 lt!2675872) e!4623292)))

(declare-fun b!7811549 () Bool)

(declare-fun e!4623290 () Bool)

(declare-fun e!4623291 () Bool)

(assert (=> b!7811549 (= e!4623290 e!4623291)))

(declare-fun res!3110729 () Bool)

(assert (=> b!7811549 (=> (not res!3110729) (not e!4623291))))

(declare-fun call!724572 () Bool)

(assert (=> b!7811549 (= res!3110729 call!724572)))

(declare-fun b!7811550 () Bool)

(declare-fun call!724571 () Bool)

(assert (=> b!7811550 (= e!4623291 call!724571)))

(declare-fun bm!724565 () Bool)

(declare-fun call!724570 () Bool)

(assert (=> bm!724565 (= call!724571 call!724570)))

(declare-fun bm!724566 () Bool)

(declare-fun c!1438310 () Bool)

(assert (=> bm!724566 (= call!724572 (validRegex!11325 (ite c!1438310 (regOne!42335 lt!2675872) (regOne!42334 lt!2675872))))))

(declare-fun b!7811551 () Bool)

(declare-fun e!4623289 () Bool)

(assert (=> b!7811551 (= e!4623289 call!724570)))

(declare-fun b!7811552 () Bool)

(declare-fun res!3110727 () Bool)

(assert (=> b!7811552 (=> res!3110727 e!4623290)))

(assert (=> b!7811552 (= res!3110727 (not ((_ is Concat!29756) lt!2675872)))))

(declare-fun e!4623294 () Bool)

(assert (=> b!7811552 (= e!4623294 e!4623290)))

(declare-fun b!7811553 () Bool)

(assert (=> b!7811553 (= e!4623293 e!4623289)))

(declare-fun res!3110726 () Bool)

(assert (=> b!7811553 (= res!3110726 (not (nullable!9283 (reg!21240 lt!2675872))))))

(assert (=> b!7811553 (=> (not res!3110726) (not e!4623289))))

(declare-fun b!7811554 () Bool)

(declare-fun res!3110728 () Bool)

(declare-fun e!4623295 () Bool)

(assert (=> b!7811554 (=> (not res!3110728) (not e!4623295))))

(assert (=> b!7811554 (= res!3110728 call!724572)))

(assert (=> b!7811554 (= e!4623294 e!4623295)))

(declare-fun b!7811555 () Bool)

(assert (=> b!7811555 (= e!4623293 e!4623294)))

(assert (=> b!7811555 (= c!1438310 ((_ is Union!20911) lt!2675872))))

(declare-fun bm!724567 () Bool)

(assert (=> bm!724567 (= call!724570 (validRegex!11325 (ite c!1438311 (reg!21240 lt!2675872) (ite c!1438310 (regTwo!42335 lt!2675872) (regTwo!42334 lt!2675872)))))))

(declare-fun b!7811556 () Bool)

(assert (=> b!7811556 (= e!4623295 call!724571)))

(assert (= (and d!2348763 (not res!3110725)) b!7811548))

(assert (= (and b!7811548 c!1438311) b!7811553))

(assert (= (and b!7811548 (not c!1438311)) b!7811555))

(assert (= (and b!7811553 res!3110726) b!7811551))

(assert (= (and b!7811555 c!1438310) b!7811554))

(assert (= (and b!7811555 (not c!1438310)) b!7811552))

(assert (= (and b!7811554 res!3110728) b!7811556))

(assert (= (and b!7811552 (not res!3110727)) b!7811549))

(assert (= (and b!7811549 res!3110729) b!7811550))

(assert (= (or b!7811554 b!7811549) bm!724566))

(assert (= (or b!7811556 b!7811550) bm!724565))

(assert (= (or b!7811551 bm!724565) bm!724567))

(declare-fun m!8242098 () Bool)

(assert (=> bm!724566 m!8242098))

(declare-fun m!8242100 () Bool)

(assert (=> b!7811553 m!8242100))

(declare-fun m!8242102 () Bool)

(assert (=> bm!724567 m!8242102))

(assert (=> b!7811354 d!2348763))

(declare-fun b!7811655 () Bool)

(declare-fun e!4623337 () Regex!20911)

(declare-fun e!4623339 () Regex!20911)

(assert (=> b!7811655 (= e!4623337 e!4623339)))

(declare-fun c!1438331 () Bool)

(assert (=> b!7811655 (= c!1438331 ((_ is ElementMatch!20911) r2!6144))))

(declare-fun bm!724580 () Bool)

(declare-fun call!724588 () Regex!20911)

(declare-fun call!724585 () Regex!20911)

(assert (=> bm!724580 (= call!724588 call!724585)))

(declare-fun b!7811656 () Bool)

(assert (=> b!7811656 (= e!4623339 (ite (= (h!80072 s!14225) (c!1438258 r2!6144)) EmptyExpr!20911 EmptyLang!20911))))

(declare-fun b!7811657 () Bool)

(declare-fun e!4623335 () Regex!20911)

(declare-fun e!4623338 () Regex!20911)

(assert (=> b!7811657 (= e!4623335 e!4623338)))

(declare-fun c!1438330 () Bool)

(assert (=> b!7811657 (= c!1438330 ((_ is Star!20911) r2!6144))))

(declare-fun call!724586 () Regex!20911)

(declare-fun call!724587 () Regex!20911)

(declare-fun e!4623336 () Regex!20911)

(declare-fun b!7811658 () Bool)

(assert (=> b!7811658 (= e!4623336 (Union!20911 (Concat!29756 call!724587 (regTwo!42334 r2!6144)) call!724586))))

(declare-fun c!1438328 () Bool)

(declare-fun c!1438327 () Bool)

(declare-fun bm!724581 () Bool)

(assert (=> bm!724581 (= call!724585 (derivativeStep!6242 (ite c!1438327 (regOne!42335 r2!6144) (ite c!1438330 (reg!21240 r2!6144) (ite c!1438328 (regTwo!42334 r2!6144) (regOne!42334 r2!6144)))) (h!80072 s!14225)))))

(declare-fun b!7811659 () Bool)

(assert (=> b!7811659 (= e!4623336 (Union!20911 (Concat!29756 call!724586 (regTwo!42334 r2!6144)) EmptyLang!20911))))

(declare-fun b!7811660 () Bool)

(assert (=> b!7811660 (= c!1438328 (nullable!9283 (regOne!42334 r2!6144)))))

(assert (=> b!7811660 (= e!4623338 e!4623336)))

(declare-fun bm!724582 () Bool)

(assert (=> bm!724582 (= call!724586 call!724588)))

(declare-fun bm!724583 () Bool)

(assert (=> bm!724583 (= call!724587 (derivativeStep!6242 (ite c!1438327 (regTwo!42335 r2!6144) (regOne!42334 r2!6144)) (h!80072 s!14225)))))

(declare-fun d!2348765 () Bool)

(declare-fun lt!2675885 () Regex!20911)

(assert (=> d!2348765 (validRegex!11325 lt!2675885)))

(assert (=> d!2348765 (= lt!2675885 e!4623337)))

(declare-fun c!1438329 () Bool)

(assert (=> d!2348765 (= c!1438329 (or ((_ is EmptyExpr!20911) r2!6144) ((_ is EmptyLang!20911) r2!6144)))))

(assert (=> d!2348765 (validRegex!11325 r2!6144)))

(assert (=> d!2348765 (= (derivativeStep!6242 r2!6144 (h!80072 s!14225)) lt!2675885)))

(declare-fun b!7811661 () Bool)

(assert (=> b!7811661 (= c!1438327 ((_ is Union!20911) r2!6144))))

(assert (=> b!7811661 (= e!4623339 e!4623335)))

(declare-fun b!7811662 () Bool)

(assert (=> b!7811662 (= e!4623335 (Union!20911 call!724585 call!724587))))

(declare-fun b!7811663 () Bool)

(assert (=> b!7811663 (= e!4623337 EmptyLang!20911)))

(declare-fun b!7811664 () Bool)

(assert (=> b!7811664 (= e!4623338 (Concat!29756 call!724588 r2!6144))))

(assert (= (and d!2348765 c!1438329) b!7811663))

(assert (= (and d!2348765 (not c!1438329)) b!7811655))

(assert (= (and b!7811655 c!1438331) b!7811656))

(assert (= (and b!7811655 (not c!1438331)) b!7811661))

(assert (= (and b!7811661 c!1438327) b!7811662))

(assert (= (and b!7811661 (not c!1438327)) b!7811657))

(assert (= (and b!7811657 c!1438330) b!7811664))

(assert (= (and b!7811657 (not c!1438330)) b!7811660))

(assert (= (and b!7811660 c!1438328) b!7811658))

(assert (= (and b!7811660 (not c!1438328)) b!7811659))

(assert (= (or b!7811658 b!7811659) bm!724582))

(assert (= (or b!7811664 bm!724582) bm!724580))

(assert (= (or b!7811662 b!7811658) bm!724583))

(assert (= (or b!7811662 bm!724580) bm!724581))

(declare-fun m!8242126 () Bool)

(assert (=> bm!724581 m!8242126))

(declare-fun m!8242128 () Bool)

(assert (=> b!7811660 m!8242128))

(declare-fun m!8242130 () Bool)

(assert (=> bm!724583 m!8242130))

(declare-fun m!8242132 () Bool)

(assert (=> d!2348765 m!8242132))

(assert (=> d!2348765 m!8242040))

(assert (=> b!7811354 d!2348765))

(declare-fun b!7811665 () Bool)

(declare-fun e!4623342 () Regex!20911)

(declare-fun e!4623344 () Regex!20911)

(assert (=> b!7811665 (= e!4623342 e!4623344)))

(declare-fun c!1438336 () Bool)

(assert (=> b!7811665 (= c!1438336 ((_ is ElementMatch!20911) r1!6206))))

(declare-fun bm!724584 () Bool)

(declare-fun call!724592 () Regex!20911)

(declare-fun call!724589 () Regex!20911)

(assert (=> bm!724584 (= call!724592 call!724589)))

(declare-fun b!7811666 () Bool)

(assert (=> b!7811666 (= e!4623344 (ite (= (h!80072 s!14225) (c!1438258 r1!6206)) EmptyExpr!20911 EmptyLang!20911))))

(declare-fun b!7811667 () Bool)

(declare-fun e!4623340 () Regex!20911)

(declare-fun e!4623343 () Regex!20911)

(assert (=> b!7811667 (= e!4623340 e!4623343)))

(declare-fun c!1438335 () Bool)

(assert (=> b!7811667 (= c!1438335 ((_ is Star!20911) r1!6206))))

(declare-fun call!724591 () Regex!20911)

(declare-fun call!724590 () Regex!20911)

(declare-fun b!7811668 () Bool)

(declare-fun e!4623341 () Regex!20911)

(assert (=> b!7811668 (= e!4623341 (Union!20911 (Concat!29756 call!724591 (regTwo!42334 r1!6206)) call!724590))))

(declare-fun c!1438333 () Bool)

(declare-fun bm!724585 () Bool)

(declare-fun c!1438332 () Bool)

(assert (=> bm!724585 (= call!724589 (derivativeStep!6242 (ite c!1438332 (regOne!42335 r1!6206) (ite c!1438335 (reg!21240 r1!6206) (ite c!1438333 (regTwo!42334 r1!6206) (regOne!42334 r1!6206)))) (h!80072 s!14225)))))

(declare-fun b!7811669 () Bool)

(assert (=> b!7811669 (= e!4623341 (Union!20911 (Concat!29756 call!724590 (regTwo!42334 r1!6206)) EmptyLang!20911))))

(declare-fun b!7811670 () Bool)

(assert (=> b!7811670 (= c!1438333 (nullable!9283 (regOne!42334 r1!6206)))))

(assert (=> b!7811670 (= e!4623343 e!4623341)))

(declare-fun bm!724586 () Bool)

(assert (=> bm!724586 (= call!724590 call!724592)))

(declare-fun bm!724587 () Bool)

(assert (=> bm!724587 (= call!724591 (derivativeStep!6242 (ite c!1438332 (regTwo!42335 r1!6206) (regOne!42334 r1!6206)) (h!80072 s!14225)))))

(declare-fun d!2348769 () Bool)

(declare-fun lt!2675886 () Regex!20911)

(assert (=> d!2348769 (validRegex!11325 lt!2675886)))

(assert (=> d!2348769 (= lt!2675886 e!4623342)))

(declare-fun c!1438334 () Bool)

(assert (=> d!2348769 (= c!1438334 (or ((_ is EmptyExpr!20911) r1!6206) ((_ is EmptyLang!20911) r1!6206)))))

(assert (=> d!2348769 (validRegex!11325 r1!6206)))

(assert (=> d!2348769 (= (derivativeStep!6242 r1!6206 (h!80072 s!14225)) lt!2675886)))

(declare-fun b!7811671 () Bool)

(assert (=> b!7811671 (= c!1438332 ((_ is Union!20911) r1!6206))))

(assert (=> b!7811671 (= e!4623344 e!4623340)))

(declare-fun b!7811672 () Bool)

(assert (=> b!7811672 (= e!4623340 (Union!20911 call!724589 call!724591))))

(declare-fun b!7811673 () Bool)

(assert (=> b!7811673 (= e!4623342 EmptyLang!20911)))

(declare-fun b!7811674 () Bool)

(assert (=> b!7811674 (= e!4623343 (Concat!29756 call!724592 r1!6206))))

(assert (= (and d!2348769 c!1438334) b!7811673))

(assert (= (and d!2348769 (not c!1438334)) b!7811665))

(assert (= (and b!7811665 c!1438336) b!7811666))

(assert (= (and b!7811665 (not c!1438336)) b!7811671))

(assert (= (and b!7811671 c!1438332) b!7811672))

(assert (= (and b!7811671 (not c!1438332)) b!7811667))

(assert (= (and b!7811667 c!1438335) b!7811674))

(assert (= (and b!7811667 (not c!1438335)) b!7811670))

(assert (= (and b!7811670 c!1438333) b!7811668))

(assert (= (and b!7811670 (not c!1438333)) b!7811669))

(assert (= (or b!7811668 b!7811669) bm!724586))

(assert (= (or b!7811674 bm!724586) bm!724584))

(assert (= (or b!7811672 b!7811668) bm!724587))

(assert (= (or b!7811672 bm!724584) bm!724585))

(declare-fun m!8242134 () Bool)

(assert (=> bm!724585 m!8242134))

(declare-fun m!8242136 () Bool)

(assert (=> b!7811670 m!8242136))

(declare-fun m!8242138 () Bool)

(assert (=> bm!724587 m!8242138))

(declare-fun m!8242140 () Bool)

(assert (=> d!2348769 m!8242140))

(assert (=> d!2348769 m!8242030))

(assert (=> b!7811354 d!2348769))

(declare-fun b!7811675 () Bool)

(declare-fun e!4623348 () Bool)

(declare-fun e!4623349 () Bool)

(assert (=> b!7811675 (= e!4623348 e!4623349)))

(declare-fun c!1438338 () Bool)

(assert (=> b!7811675 (= c!1438338 ((_ is Star!20911) lt!2675871))))

(declare-fun d!2348771 () Bool)

(declare-fun res!3110743 () Bool)

(assert (=> d!2348771 (=> res!3110743 e!4623348)))

(assert (=> d!2348771 (= res!3110743 ((_ is ElementMatch!20911) lt!2675871))))

(assert (=> d!2348771 (= (validRegex!11325 lt!2675871) e!4623348)))

(declare-fun b!7811676 () Bool)

(declare-fun e!4623346 () Bool)

(declare-fun e!4623347 () Bool)

(assert (=> b!7811676 (= e!4623346 e!4623347)))

(declare-fun res!3110747 () Bool)

(assert (=> b!7811676 (=> (not res!3110747) (not e!4623347))))

(declare-fun call!724595 () Bool)

(assert (=> b!7811676 (= res!3110747 call!724595)))

(declare-fun b!7811677 () Bool)

(declare-fun call!724594 () Bool)

(assert (=> b!7811677 (= e!4623347 call!724594)))

(declare-fun bm!724588 () Bool)

(declare-fun call!724593 () Bool)

(assert (=> bm!724588 (= call!724594 call!724593)))

(declare-fun bm!724589 () Bool)

(declare-fun c!1438337 () Bool)

(assert (=> bm!724589 (= call!724595 (validRegex!11325 (ite c!1438337 (regOne!42335 lt!2675871) (regOne!42334 lt!2675871))))))

(declare-fun b!7811678 () Bool)

(declare-fun e!4623345 () Bool)

(assert (=> b!7811678 (= e!4623345 call!724593)))

(declare-fun b!7811679 () Bool)

(declare-fun res!3110745 () Bool)

(assert (=> b!7811679 (=> res!3110745 e!4623346)))

(assert (=> b!7811679 (= res!3110745 (not ((_ is Concat!29756) lt!2675871)))))

(declare-fun e!4623350 () Bool)

(assert (=> b!7811679 (= e!4623350 e!4623346)))

(declare-fun b!7811680 () Bool)

(assert (=> b!7811680 (= e!4623349 e!4623345)))

(declare-fun res!3110744 () Bool)

(assert (=> b!7811680 (= res!3110744 (not (nullable!9283 (reg!21240 lt!2675871))))))

(assert (=> b!7811680 (=> (not res!3110744) (not e!4623345))))

(declare-fun b!7811681 () Bool)

(declare-fun res!3110746 () Bool)

(declare-fun e!4623351 () Bool)

(assert (=> b!7811681 (=> (not res!3110746) (not e!4623351))))

(assert (=> b!7811681 (= res!3110746 call!724595)))

(assert (=> b!7811681 (= e!4623350 e!4623351)))

(declare-fun b!7811682 () Bool)

(assert (=> b!7811682 (= e!4623349 e!4623350)))

(assert (=> b!7811682 (= c!1438337 ((_ is Union!20911) lt!2675871))))

(declare-fun bm!724590 () Bool)

(assert (=> bm!724590 (= call!724593 (validRegex!11325 (ite c!1438338 (reg!21240 lt!2675871) (ite c!1438337 (regTwo!42335 lt!2675871) (regTwo!42334 lt!2675871)))))))

(declare-fun b!7811683 () Bool)

(assert (=> b!7811683 (= e!4623351 call!724594)))

(assert (= (and d!2348771 (not res!3110743)) b!7811675))

(assert (= (and b!7811675 c!1438338) b!7811680))

(assert (= (and b!7811675 (not c!1438338)) b!7811682))

(assert (= (and b!7811680 res!3110744) b!7811678))

(assert (= (and b!7811682 c!1438337) b!7811681))

(assert (= (and b!7811682 (not c!1438337)) b!7811679))

(assert (= (and b!7811681 res!3110746) b!7811683))

(assert (= (and b!7811679 (not res!3110745)) b!7811676))

(assert (= (and b!7811676 res!3110747) b!7811677))

(assert (= (or b!7811681 b!7811676) bm!724589))

(assert (= (or b!7811683 b!7811677) bm!724588))

(assert (= (or b!7811678 bm!724588) bm!724590))

(declare-fun m!8242142 () Bool)

(assert (=> bm!724589 m!8242142))

(declare-fun m!8242144 () Bool)

(assert (=> b!7811680 m!8242144))

(declare-fun m!8242146 () Bool)

(assert (=> bm!724590 m!8242146))

(assert (=> b!7811365 d!2348771))

(declare-fun b!7811684 () Bool)

(declare-fun e!4623355 () Bool)

(declare-fun e!4623356 () Bool)

(assert (=> b!7811684 (= e!4623355 e!4623356)))

(declare-fun c!1438340 () Bool)

(assert (=> b!7811684 (= c!1438340 ((_ is Star!20911) r2!6144))))

(declare-fun d!2348773 () Bool)

(declare-fun res!3110748 () Bool)

(assert (=> d!2348773 (=> res!3110748 e!4623355)))

(assert (=> d!2348773 (= res!3110748 ((_ is ElementMatch!20911) r2!6144))))

(assert (=> d!2348773 (= (validRegex!11325 r2!6144) e!4623355)))

(declare-fun b!7811685 () Bool)

(declare-fun e!4623353 () Bool)

(declare-fun e!4623354 () Bool)

(assert (=> b!7811685 (= e!4623353 e!4623354)))

(declare-fun res!3110752 () Bool)

(assert (=> b!7811685 (=> (not res!3110752) (not e!4623354))))

(declare-fun call!724598 () Bool)

(assert (=> b!7811685 (= res!3110752 call!724598)))

(declare-fun b!7811686 () Bool)

(declare-fun call!724597 () Bool)

(assert (=> b!7811686 (= e!4623354 call!724597)))

(declare-fun bm!724591 () Bool)

(declare-fun call!724596 () Bool)

(assert (=> bm!724591 (= call!724597 call!724596)))

(declare-fun bm!724592 () Bool)

(declare-fun c!1438339 () Bool)

(assert (=> bm!724592 (= call!724598 (validRegex!11325 (ite c!1438339 (regOne!42335 r2!6144) (regOne!42334 r2!6144))))))

(declare-fun b!7811687 () Bool)

(declare-fun e!4623352 () Bool)

(assert (=> b!7811687 (= e!4623352 call!724596)))

(declare-fun b!7811688 () Bool)

(declare-fun res!3110750 () Bool)

(assert (=> b!7811688 (=> res!3110750 e!4623353)))

(assert (=> b!7811688 (= res!3110750 (not ((_ is Concat!29756) r2!6144)))))

(declare-fun e!4623357 () Bool)

(assert (=> b!7811688 (= e!4623357 e!4623353)))

(declare-fun b!7811689 () Bool)

(assert (=> b!7811689 (= e!4623356 e!4623352)))

(declare-fun res!3110749 () Bool)

(assert (=> b!7811689 (= res!3110749 (not (nullable!9283 (reg!21240 r2!6144))))))

(assert (=> b!7811689 (=> (not res!3110749) (not e!4623352))))

(declare-fun b!7811690 () Bool)

(declare-fun res!3110751 () Bool)

(declare-fun e!4623358 () Bool)

(assert (=> b!7811690 (=> (not res!3110751) (not e!4623358))))

(assert (=> b!7811690 (= res!3110751 call!724598)))

(assert (=> b!7811690 (= e!4623357 e!4623358)))

(declare-fun b!7811691 () Bool)

(assert (=> b!7811691 (= e!4623356 e!4623357)))

(assert (=> b!7811691 (= c!1438339 ((_ is Union!20911) r2!6144))))

(declare-fun bm!724593 () Bool)

(assert (=> bm!724593 (= call!724596 (validRegex!11325 (ite c!1438340 (reg!21240 r2!6144) (ite c!1438339 (regTwo!42335 r2!6144) (regTwo!42334 r2!6144)))))))

(declare-fun b!7811692 () Bool)

(assert (=> b!7811692 (= e!4623358 call!724597)))

(assert (= (and d!2348773 (not res!3110748)) b!7811684))

(assert (= (and b!7811684 c!1438340) b!7811689))

(assert (= (and b!7811684 (not c!1438340)) b!7811691))

(assert (= (and b!7811689 res!3110749) b!7811687))

(assert (= (and b!7811691 c!1438339) b!7811690))

(assert (= (and b!7811691 (not c!1438339)) b!7811688))

(assert (= (and b!7811690 res!3110751) b!7811692))

(assert (= (and b!7811688 (not res!3110750)) b!7811685))

(assert (= (and b!7811685 res!3110752) b!7811686))

(assert (= (or b!7811690 b!7811685) bm!724592))

(assert (= (or b!7811692 b!7811686) bm!724591))

(assert (= (or b!7811687 bm!724591) bm!724593))

(declare-fun m!8242148 () Bool)

(assert (=> bm!724592 m!8242148))

(declare-fun m!8242150 () Bool)

(assert (=> b!7811689 m!8242150))

(declare-fun m!8242152 () Bool)

(assert (=> bm!724593 m!8242152))

(assert (=> b!7811362 d!2348773))

(declare-fun b!7811706 () Bool)

(declare-fun e!4623361 () Bool)

(declare-fun tp!2302172 () Bool)

(declare-fun tp!2302170 () Bool)

(assert (=> b!7811706 (= e!4623361 (and tp!2302172 tp!2302170))))

(declare-fun b!7811705 () Bool)

(declare-fun tp!2302173 () Bool)

(assert (=> b!7811705 (= e!4623361 tp!2302173)))

(declare-fun b!7811704 () Bool)

(declare-fun tp!2302169 () Bool)

(declare-fun tp!2302171 () Bool)

(assert (=> b!7811704 (= e!4623361 (and tp!2302169 tp!2302171))))

(declare-fun b!7811703 () Bool)

(assert (=> b!7811703 (= e!4623361 tp_is_empty!52177)))

(assert (=> b!7811360 (= tp!2302086 e!4623361)))

(assert (= (and b!7811360 ((_ is ElementMatch!20911) (regOne!42334 r2!6144))) b!7811703))

(assert (= (and b!7811360 ((_ is Concat!29756) (regOne!42334 r2!6144))) b!7811704))

(assert (= (and b!7811360 ((_ is Star!20911) (regOne!42334 r2!6144))) b!7811705))

(assert (= (and b!7811360 ((_ is Union!20911) (regOne!42334 r2!6144))) b!7811706))

(declare-fun b!7811710 () Bool)

(declare-fun e!4623362 () Bool)

(declare-fun tp!2302177 () Bool)

(declare-fun tp!2302175 () Bool)

(assert (=> b!7811710 (= e!4623362 (and tp!2302177 tp!2302175))))

(declare-fun b!7811709 () Bool)

(declare-fun tp!2302178 () Bool)

(assert (=> b!7811709 (= e!4623362 tp!2302178)))

(declare-fun b!7811708 () Bool)

(declare-fun tp!2302174 () Bool)

(declare-fun tp!2302176 () Bool)

(assert (=> b!7811708 (= e!4623362 (and tp!2302174 tp!2302176))))

(declare-fun b!7811707 () Bool)

(assert (=> b!7811707 (= e!4623362 tp_is_empty!52177)))

(assert (=> b!7811360 (= tp!2302094 e!4623362)))

(assert (= (and b!7811360 ((_ is ElementMatch!20911) (regTwo!42334 r2!6144))) b!7811707))

(assert (= (and b!7811360 ((_ is Concat!29756) (regTwo!42334 r2!6144))) b!7811708))

(assert (= (and b!7811360 ((_ is Star!20911) (regTwo!42334 r2!6144))) b!7811709))

(assert (= (and b!7811360 ((_ is Union!20911) (regTwo!42334 r2!6144))) b!7811710))

(declare-fun b!7811715 () Bool)

(declare-fun e!4623365 () Bool)

(declare-fun tp!2302181 () Bool)

(assert (=> b!7811715 (= e!4623365 (and tp_is_empty!52177 tp!2302181))))

(assert (=> b!7811361 (= tp!2302085 e!4623365)))

(assert (= (and b!7811361 ((_ is Cons!73624) (t!388483 s!14225))) b!7811715))

(declare-fun b!7811719 () Bool)

(declare-fun e!4623366 () Bool)

(declare-fun tp!2302185 () Bool)

(declare-fun tp!2302183 () Bool)

(assert (=> b!7811719 (= e!4623366 (and tp!2302185 tp!2302183))))

(declare-fun b!7811718 () Bool)

(declare-fun tp!2302186 () Bool)

(assert (=> b!7811718 (= e!4623366 tp!2302186)))

(declare-fun b!7811717 () Bool)

(declare-fun tp!2302182 () Bool)

(declare-fun tp!2302184 () Bool)

(assert (=> b!7811717 (= e!4623366 (and tp!2302182 tp!2302184))))

(declare-fun b!7811716 () Bool)

(assert (=> b!7811716 (= e!4623366 tp_is_empty!52177)))

(assert (=> b!7811364 (= tp!2302093 e!4623366)))

(assert (= (and b!7811364 ((_ is ElementMatch!20911) (regOne!42335 r1!6206))) b!7811716))

(assert (= (and b!7811364 ((_ is Concat!29756) (regOne!42335 r1!6206))) b!7811717))

(assert (= (and b!7811364 ((_ is Star!20911) (regOne!42335 r1!6206))) b!7811718))

(assert (= (and b!7811364 ((_ is Union!20911) (regOne!42335 r1!6206))) b!7811719))

(declare-fun b!7811723 () Bool)

(declare-fun e!4623367 () Bool)

(declare-fun tp!2302190 () Bool)

(declare-fun tp!2302188 () Bool)

(assert (=> b!7811723 (= e!4623367 (and tp!2302190 tp!2302188))))

(declare-fun b!7811722 () Bool)

(declare-fun tp!2302191 () Bool)

(assert (=> b!7811722 (= e!4623367 tp!2302191)))

(declare-fun b!7811721 () Bool)

(declare-fun tp!2302187 () Bool)

(declare-fun tp!2302189 () Bool)

(assert (=> b!7811721 (= e!4623367 (and tp!2302187 tp!2302189))))

(declare-fun b!7811720 () Bool)

(assert (=> b!7811720 (= e!4623367 tp_is_empty!52177)))

(assert (=> b!7811364 (= tp!2302089 e!4623367)))

(assert (= (and b!7811364 ((_ is ElementMatch!20911) (regTwo!42335 r1!6206))) b!7811720))

(assert (= (and b!7811364 ((_ is Concat!29756) (regTwo!42335 r1!6206))) b!7811721))

(assert (= (and b!7811364 ((_ is Star!20911) (regTwo!42335 r1!6206))) b!7811722))

(assert (= (and b!7811364 ((_ is Union!20911) (regTwo!42335 r1!6206))) b!7811723))

(declare-fun b!7811727 () Bool)

(declare-fun e!4623368 () Bool)

(declare-fun tp!2302195 () Bool)

(declare-fun tp!2302193 () Bool)

(assert (=> b!7811727 (= e!4623368 (and tp!2302195 tp!2302193))))

(declare-fun b!7811726 () Bool)

(declare-fun tp!2302196 () Bool)

(assert (=> b!7811726 (= e!4623368 tp!2302196)))

(declare-fun b!7811725 () Bool)

(declare-fun tp!2302192 () Bool)

(declare-fun tp!2302194 () Bool)

(assert (=> b!7811725 (= e!4623368 (and tp!2302192 tp!2302194))))

(declare-fun b!7811724 () Bool)

(assert (=> b!7811724 (= e!4623368 tp_is_empty!52177)))

(assert (=> b!7811359 (= tp!2302088 e!4623368)))

(assert (= (and b!7811359 ((_ is ElementMatch!20911) (reg!21240 r1!6206))) b!7811724))

(assert (= (and b!7811359 ((_ is Concat!29756) (reg!21240 r1!6206))) b!7811725))

(assert (= (and b!7811359 ((_ is Star!20911) (reg!21240 r1!6206))) b!7811726))

(assert (= (and b!7811359 ((_ is Union!20911) (reg!21240 r1!6206))) b!7811727))

(declare-fun b!7811731 () Bool)

(declare-fun e!4623369 () Bool)

(declare-fun tp!2302200 () Bool)

(declare-fun tp!2302198 () Bool)

(assert (=> b!7811731 (= e!4623369 (and tp!2302200 tp!2302198))))

(declare-fun b!7811730 () Bool)

(declare-fun tp!2302201 () Bool)

(assert (=> b!7811730 (= e!4623369 tp!2302201)))

(declare-fun b!7811729 () Bool)

(declare-fun tp!2302197 () Bool)

(declare-fun tp!2302199 () Bool)

(assert (=> b!7811729 (= e!4623369 (and tp!2302197 tp!2302199))))

(declare-fun b!7811728 () Bool)

(assert (=> b!7811728 (= e!4623369 tp_is_empty!52177)))

(assert (=> b!7811352 (= tp!2302092 e!4623369)))

(assert (= (and b!7811352 ((_ is ElementMatch!20911) (regOne!42334 r1!6206))) b!7811728))

(assert (= (and b!7811352 ((_ is Concat!29756) (regOne!42334 r1!6206))) b!7811729))

(assert (= (and b!7811352 ((_ is Star!20911) (regOne!42334 r1!6206))) b!7811730))

(assert (= (and b!7811352 ((_ is Union!20911) (regOne!42334 r1!6206))) b!7811731))

(declare-fun b!7811735 () Bool)

(declare-fun e!4623370 () Bool)

(declare-fun tp!2302205 () Bool)

(declare-fun tp!2302203 () Bool)

(assert (=> b!7811735 (= e!4623370 (and tp!2302205 tp!2302203))))

(declare-fun b!7811734 () Bool)

(declare-fun tp!2302206 () Bool)

(assert (=> b!7811734 (= e!4623370 tp!2302206)))

(declare-fun b!7811733 () Bool)

(declare-fun tp!2302202 () Bool)

(declare-fun tp!2302204 () Bool)

(assert (=> b!7811733 (= e!4623370 (and tp!2302202 tp!2302204))))

(declare-fun b!7811732 () Bool)

(assert (=> b!7811732 (= e!4623370 tp_is_empty!52177)))

(assert (=> b!7811352 (= tp!2302090 e!4623370)))

(assert (= (and b!7811352 ((_ is ElementMatch!20911) (regTwo!42334 r1!6206))) b!7811732))

(assert (= (and b!7811352 ((_ is Concat!29756) (regTwo!42334 r1!6206))) b!7811733))

(assert (= (and b!7811352 ((_ is Star!20911) (regTwo!42334 r1!6206))) b!7811734))

(assert (= (and b!7811352 ((_ is Union!20911) (regTwo!42334 r1!6206))) b!7811735))

(declare-fun b!7811739 () Bool)

(declare-fun e!4623371 () Bool)

(declare-fun tp!2302210 () Bool)

(declare-fun tp!2302208 () Bool)

(assert (=> b!7811739 (= e!4623371 (and tp!2302210 tp!2302208))))

(declare-fun b!7811738 () Bool)

(declare-fun tp!2302211 () Bool)

(assert (=> b!7811738 (= e!4623371 tp!2302211)))

(declare-fun b!7811737 () Bool)

(declare-fun tp!2302207 () Bool)

(declare-fun tp!2302209 () Bool)

(assert (=> b!7811737 (= e!4623371 (and tp!2302207 tp!2302209))))

(declare-fun b!7811736 () Bool)

(assert (=> b!7811736 (= e!4623371 tp_is_empty!52177)))

(assert (=> b!7811358 (= tp!2302095 e!4623371)))

(assert (= (and b!7811358 ((_ is ElementMatch!20911) (regOne!42335 r2!6144))) b!7811736))

(assert (= (and b!7811358 ((_ is Concat!29756) (regOne!42335 r2!6144))) b!7811737))

(assert (= (and b!7811358 ((_ is Star!20911) (regOne!42335 r2!6144))) b!7811738))

(assert (= (and b!7811358 ((_ is Union!20911) (regOne!42335 r2!6144))) b!7811739))

(declare-fun b!7811743 () Bool)

(declare-fun e!4623372 () Bool)

(declare-fun tp!2302215 () Bool)

(declare-fun tp!2302213 () Bool)

(assert (=> b!7811743 (= e!4623372 (and tp!2302215 tp!2302213))))

(declare-fun b!7811742 () Bool)

(declare-fun tp!2302216 () Bool)

(assert (=> b!7811742 (= e!4623372 tp!2302216)))

(declare-fun b!7811741 () Bool)

(declare-fun tp!2302212 () Bool)

(declare-fun tp!2302214 () Bool)

(assert (=> b!7811741 (= e!4623372 (and tp!2302212 tp!2302214))))

(declare-fun b!7811740 () Bool)

(assert (=> b!7811740 (= e!4623372 tp_is_empty!52177)))

(assert (=> b!7811358 (= tp!2302091 e!4623372)))

(assert (= (and b!7811358 ((_ is ElementMatch!20911) (regTwo!42335 r2!6144))) b!7811740))

(assert (= (and b!7811358 ((_ is Concat!29756) (regTwo!42335 r2!6144))) b!7811741))

(assert (= (and b!7811358 ((_ is Star!20911) (regTwo!42335 r2!6144))) b!7811742))

(assert (= (and b!7811358 ((_ is Union!20911) (regTwo!42335 r2!6144))) b!7811743))

(declare-fun b!7811747 () Bool)

(declare-fun e!4623373 () Bool)

(declare-fun tp!2302220 () Bool)

(declare-fun tp!2302218 () Bool)

(assert (=> b!7811747 (= e!4623373 (and tp!2302220 tp!2302218))))

(declare-fun b!7811746 () Bool)

(declare-fun tp!2302221 () Bool)

(assert (=> b!7811746 (= e!4623373 tp!2302221)))

(declare-fun b!7811745 () Bool)

(declare-fun tp!2302217 () Bool)

(declare-fun tp!2302219 () Bool)

(assert (=> b!7811745 (= e!4623373 (and tp!2302217 tp!2302219))))

(declare-fun b!7811744 () Bool)

(assert (=> b!7811744 (= e!4623373 tp_is_empty!52177)))

(assert (=> b!7811357 (= tp!2302087 e!4623373)))

(assert (= (and b!7811357 ((_ is ElementMatch!20911) (reg!21240 r2!6144))) b!7811744))

(assert (= (and b!7811357 ((_ is Concat!29756) (reg!21240 r2!6144))) b!7811745))

(assert (= (and b!7811357 ((_ is Star!20911) (reg!21240 r2!6144))) b!7811746))

(assert (= (and b!7811357 ((_ is Union!20911) (reg!21240 r2!6144))) b!7811747))

(check-sat (not b!7811544) (not b!7811739) (not b!7811731) (not b!7811670) (not b!7811721) (not b!7811745) (not b!7811735) (not b!7811453) (not bm!724592) tp_is_empty!52177 (not bm!724590) (not b!7811743) (not d!2348769) (not b!7811680) (not bm!724561) (not b!7811446) (not b!7811729) (not b!7811727) (not b!7811447) (not b!7811448) (not b!7811718) (not b!7811747) (not b!7811704) (not b!7811660) (not bm!724585) (not b!7811722) (not bm!724583) (not d!2348765) (not bm!724566) (not bm!724581) (not b!7811746) (not b!7811717) (not b!7811719) (not b!7811452) (not b!7811742) (not b!7811553) (not b!7811733) (not b!7811451) (not bm!724562) (not bm!724567) (not bm!724539) (not b!7811723) (not b!7811737) (not d!2348749) (not b!7811689) (not b!7811734) (not b!7811726) (not bm!724587) (not b!7811725) (not b!7811741) (not b!7811708) (not bm!724589) (not bm!724593) (not b!7811705) (not b!7811706) (not b!7811710) (not b!7811730) (not b!7811738) (not b!7811715) (not b!7811709))
(check-sat)
