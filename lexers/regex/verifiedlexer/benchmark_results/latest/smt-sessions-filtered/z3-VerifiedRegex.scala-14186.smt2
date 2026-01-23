; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743890 () Bool)

(assert start!743890)

(declare-fun b!7868287 () Bool)

(declare-fun e!4648565 () Bool)

(declare-fun tp_is_empty!52689 () Bool)

(declare-fun tp!2334349 () Bool)

(assert (=> b!7868287 (= e!4648565 (and tp_is_empty!52689 tp!2334349))))

(declare-fun b!7868288 () Bool)

(declare-fun e!4648564 () Bool)

(declare-fun tp!2334346 () Bool)

(declare-fun tp!2334348 () Bool)

(assert (=> b!7868288 (= e!4648564 (and tp!2334346 tp!2334348))))

(declare-fun b!7868289 () Bool)

(declare-fun res!3126686 () Bool)

(declare-fun e!4648563 () Bool)

(assert (=> b!7868289 (=> (not res!3126686) (not e!4648563))))

(declare-datatypes ((C!42616 0))(
  ( (C!42617 (val!31770 Int)) )
))
(declare-datatypes ((List!74004 0))(
  ( (Nil!73880) (Cons!73880 (h!80328 C!42616) (t!388739 List!74004)) )
))
(declare-fun s!14217 () List!74004)

(declare-fun isEmpty!42380 (List!74004) Bool)

(assert (=> b!7868289 (= res!3126686 (not (isEmpty!42380 s!14217)))))

(declare-fun b!7868290 () Bool)

(declare-fun res!3126685 () Bool)

(assert (=> b!7868290 (=> (not res!3126685) (not e!4648563))))

(declare-datatypes ((Regex!21145 0))(
  ( (ElementMatch!21145 (c!1445509 C!42616)) (Concat!29990 (regOne!42802 Regex!21145) (regTwo!42802 Regex!21145)) (EmptyExpr!21145) (Star!21145 (reg!21474 Regex!21145)) (EmptyLang!21145) (Union!21145 (regOne!42803 Regex!21145) (regTwo!42803 Regex!21145)) )
))
(declare-fun r!24826 () Regex!21145)

(declare-fun matchR!10581 (Regex!21145 List!74004) Bool)

(assert (=> b!7868290 (= res!3126685 (matchR!10581 r!24826 s!14217))))

(declare-fun res!3126684 () Bool)

(assert (=> start!743890 (=> (not res!3126684) (not e!4648563))))

(declare-fun validRegex!11555 (Regex!21145) Bool)

(assert (=> start!743890 (= res!3126684 (validRegex!11555 r!24826))))

(assert (=> start!743890 e!4648563))

(assert (=> start!743890 e!4648564))

(assert (=> start!743890 e!4648565))

(declare-fun b!7868291 () Bool)

(assert (=> b!7868291 (= e!4648563 (= s!14217 Nil!73880))))

(declare-fun lt!2680719 () Regex!21145)

(declare-fun derivativeStep!6376 (Regex!21145 C!42616) Regex!21145)

(declare-fun head!16091 (List!74004) C!42616)

(assert (=> b!7868291 (= lt!2680719 (derivativeStep!6376 r!24826 (head!16091 s!14217)))))

(declare-fun b!7868292 () Bool)

(declare-fun tp!2334350 () Bool)

(assert (=> b!7868292 (= e!4648564 tp!2334350)))

(declare-fun b!7868293 () Bool)

(declare-fun tp!2334347 () Bool)

(declare-fun tp!2334345 () Bool)

(assert (=> b!7868293 (= e!4648564 (and tp!2334347 tp!2334345))))

(declare-fun b!7868294 () Bool)

(assert (=> b!7868294 (= e!4648564 tp_is_empty!52689)))

(assert (= (and start!743890 res!3126684) b!7868290))

(assert (= (and b!7868290 res!3126685) b!7868289))

(assert (= (and b!7868289 res!3126686) b!7868291))

(get-info :version)

(assert (= (and start!743890 ((_ is ElementMatch!21145) r!24826)) b!7868294))

(assert (= (and start!743890 ((_ is Concat!29990) r!24826)) b!7868288))

(assert (= (and start!743890 ((_ is Star!21145) r!24826)) b!7868292))

(assert (= (and start!743890 ((_ is Union!21145) r!24826)) b!7868293))

(assert (= (and start!743890 ((_ is Cons!73880) s!14217)) b!7868287))

(declare-fun m!8264386 () Bool)

(assert (=> b!7868289 m!8264386))

(declare-fun m!8264388 () Bool)

(assert (=> b!7868290 m!8264388))

(declare-fun m!8264390 () Bool)

(assert (=> start!743890 m!8264390))

(declare-fun m!8264392 () Bool)

(assert (=> b!7868291 m!8264392))

(assert (=> b!7868291 m!8264392))

(declare-fun m!8264394 () Bool)

(assert (=> b!7868291 m!8264394))

(check-sat (not b!7868293) tp_is_empty!52689 (not b!7868290) (not b!7868288) (not b!7868292) (not b!7868291) (not start!743890) (not b!7868289) (not b!7868287))
(check-sat)
(get-model)

(declare-fun d!2355047 () Bool)

(assert (=> d!2355047 (= (isEmpty!42380 s!14217) ((_ is Nil!73880) s!14217))))

(assert (=> b!7868289 d!2355047))

(declare-fun bm!729568 () Bool)

(declare-fun call!729575 () Bool)

(declare-fun call!729577 () Bool)

(assert (=> bm!729568 (= call!729575 call!729577)))

(declare-fun b!7868333 () Bool)

(declare-fun e!4648596 () Bool)

(declare-fun e!4648593 () Bool)

(assert (=> b!7868333 (= e!4648596 e!4648593)))

(declare-fun c!1445524 () Bool)

(assert (=> b!7868333 (= c!1445524 ((_ is Star!21145) r!24826))))

(declare-fun d!2355051 () Bool)

(declare-fun res!3126700 () Bool)

(assert (=> d!2355051 (=> res!3126700 e!4648596)))

(assert (=> d!2355051 (= res!3126700 ((_ is ElementMatch!21145) r!24826))))

(assert (=> d!2355051 (= (validRegex!11555 r!24826) e!4648596)))

(declare-fun b!7868334 () Bool)

(declare-fun e!4648591 () Bool)

(assert (=> b!7868334 (= e!4648593 e!4648591)))

(declare-fun c!1445525 () Bool)

(assert (=> b!7868334 (= c!1445525 ((_ is Union!21145) r!24826))))

(declare-fun b!7868335 () Bool)

(declare-fun res!3126699 () Bool)

(declare-fun e!4648595 () Bool)

(assert (=> b!7868335 (=> (not res!3126699) (not e!4648595))))

(declare-fun call!729576 () Bool)

(assert (=> b!7868335 (= res!3126699 call!729576)))

(assert (=> b!7868335 (= e!4648591 e!4648595)))

(declare-fun b!7868336 () Bool)

(declare-fun e!4648594 () Bool)

(declare-fun e!4648590 () Bool)

(assert (=> b!7868336 (= e!4648594 e!4648590)))

(declare-fun res!3126701 () Bool)

(assert (=> b!7868336 (=> (not res!3126701) (not e!4648590))))

(assert (=> b!7868336 (= res!3126701 call!729575)))

(declare-fun b!7868337 () Bool)

(declare-fun e!4648592 () Bool)

(assert (=> b!7868337 (= e!4648593 e!4648592)))

(declare-fun res!3126698 () Bool)

(declare-fun nullable!9413 (Regex!21145) Bool)

(assert (=> b!7868337 (= res!3126698 (not (nullable!9413 (reg!21474 r!24826))))))

(assert (=> b!7868337 (=> (not res!3126698) (not e!4648592))))

(declare-fun b!7868338 () Bool)

(assert (=> b!7868338 (= e!4648592 call!729577)))

(declare-fun bm!729569 () Bool)

(assert (=> bm!729569 (= call!729577 (validRegex!11555 (ite c!1445524 (reg!21474 r!24826) (ite c!1445525 (regTwo!42803 r!24826) (regOne!42802 r!24826)))))))

(declare-fun bm!729570 () Bool)

(assert (=> bm!729570 (= call!729576 (validRegex!11555 (ite c!1445525 (regOne!42803 r!24826) (regTwo!42802 r!24826))))))

(declare-fun b!7868339 () Bool)

(declare-fun res!3126697 () Bool)

(assert (=> b!7868339 (=> res!3126697 e!4648594)))

(assert (=> b!7868339 (= res!3126697 (not ((_ is Concat!29990) r!24826)))))

(assert (=> b!7868339 (= e!4648591 e!4648594)))

(declare-fun b!7868340 () Bool)

(assert (=> b!7868340 (= e!4648595 call!729575)))

(declare-fun b!7868341 () Bool)

(assert (=> b!7868341 (= e!4648590 call!729576)))

(assert (= (and d!2355051 (not res!3126700)) b!7868333))

(assert (= (and b!7868333 c!1445524) b!7868337))

(assert (= (and b!7868333 (not c!1445524)) b!7868334))

(assert (= (and b!7868337 res!3126698) b!7868338))

(assert (= (and b!7868334 c!1445525) b!7868335))

(assert (= (and b!7868334 (not c!1445525)) b!7868339))

(assert (= (and b!7868335 res!3126699) b!7868340))

(assert (= (and b!7868339 (not res!3126697)) b!7868336))

(assert (= (and b!7868336 res!3126701) b!7868341))

(assert (= (or b!7868335 b!7868341) bm!729570))

(assert (= (or b!7868340 b!7868336) bm!729568))

(assert (= (or b!7868338 bm!729568) bm!729569))

(declare-fun m!8264396 () Bool)

(assert (=> b!7868337 m!8264396))

(declare-fun m!8264398 () Bool)

(assert (=> bm!729569 m!8264398))

(declare-fun m!8264400 () Bool)

(assert (=> bm!729570 m!8264400))

(assert (=> start!743890 d!2355051))

(declare-fun b!7868386 () Bool)

(declare-fun c!1445550 () Bool)

(assert (=> b!7868386 (= c!1445550 (nullable!9413 (regOne!42802 r!24826)))))

(declare-fun e!4648624 () Regex!21145)

(declare-fun e!4648622 () Regex!21145)

(assert (=> b!7868386 (= e!4648624 e!4648622)))

(declare-fun bm!729587 () Bool)

(declare-fun c!1445547 () Bool)

(declare-fun call!729593 () Regex!21145)

(declare-fun c!1445551 () Bool)

(assert (=> bm!729587 (= call!729593 (derivativeStep!6376 (ite c!1445547 (regTwo!42803 r!24826) (ite c!1445551 (reg!21474 r!24826) (regOne!42802 r!24826))) (head!16091 s!14217)))))

(declare-fun bm!729588 () Bool)

(declare-fun call!729595 () Regex!21145)

(declare-fun call!729594 () Regex!21145)

(assert (=> bm!729588 (= call!729595 call!729594)))

(declare-fun b!7868387 () Bool)

(declare-fun e!4648621 () Regex!21145)

(declare-fun call!729592 () Regex!21145)

(assert (=> b!7868387 (= e!4648621 (Union!21145 call!729592 call!729593))))

(declare-fun b!7868388 () Bool)

(assert (=> b!7868388 (= e!4648622 (Union!21145 (Concat!29990 call!729595 (regTwo!42802 r!24826)) EmptyLang!21145))))

(declare-fun b!7868389 () Bool)

(assert (=> b!7868389 (= e!4648622 (Union!21145 (Concat!29990 call!729595 (regTwo!42802 r!24826)) call!729592))))

(declare-fun d!2355053 () Bool)

(declare-fun lt!2680727 () Regex!21145)

(assert (=> d!2355053 (validRegex!11555 lt!2680727)))

(declare-fun e!4648623 () Regex!21145)

(assert (=> d!2355053 (= lt!2680727 e!4648623)))

(declare-fun c!1445548 () Bool)

(assert (=> d!2355053 (= c!1445548 (or ((_ is EmptyExpr!21145) r!24826) ((_ is EmptyLang!21145) r!24826)))))

(assert (=> d!2355053 (validRegex!11555 r!24826)))

(assert (=> d!2355053 (= (derivativeStep!6376 r!24826 (head!16091 s!14217)) lt!2680727)))

(declare-fun bm!729589 () Bool)

(assert (=> bm!729589 (= call!729594 call!729593)))

(declare-fun b!7868390 () Bool)

(assert (=> b!7868390 (= e!4648621 e!4648624)))

(assert (=> b!7868390 (= c!1445551 ((_ is Star!21145) r!24826))))

(declare-fun b!7868391 () Bool)

(declare-fun e!4648620 () Regex!21145)

(assert (=> b!7868391 (= e!4648623 e!4648620)))

(declare-fun c!1445549 () Bool)

(assert (=> b!7868391 (= c!1445549 ((_ is ElementMatch!21145) r!24826))))

(declare-fun b!7868392 () Bool)

(assert (=> b!7868392 (= e!4648620 (ite (= (head!16091 s!14217) (c!1445509 r!24826)) EmptyExpr!21145 EmptyLang!21145))))

(declare-fun b!7868393 () Bool)

(assert (=> b!7868393 (= e!4648623 EmptyLang!21145)))

(declare-fun bm!729590 () Bool)

(assert (=> bm!729590 (= call!729592 (derivativeStep!6376 (ite c!1445547 (regOne!42803 r!24826) (regTwo!42802 r!24826)) (head!16091 s!14217)))))

(declare-fun b!7868394 () Bool)

(assert (=> b!7868394 (= c!1445547 ((_ is Union!21145) r!24826))))

(assert (=> b!7868394 (= e!4648620 e!4648621)))

(declare-fun b!7868395 () Bool)

(assert (=> b!7868395 (= e!4648624 (Concat!29990 call!729594 r!24826))))

(assert (= (and d!2355053 c!1445548) b!7868393))

(assert (= (and d!2355053 (not c!1445548)) b!7868391))

(assert (= (and b!7868391 c!1445549) b!7868392))

(assert (= (and b!7868391 (not c!1445549)) b!7868394))

(assert (= (and b!7868394 c!1445547) b!7868387))

(assert (= (and b!7868394 (not c!1445547)) b!7868390))

(assert (= (and b!7868390 c!1445551) b!7868395))

(assert (= (and b!7868390 (not c!1445551)) b!7868386))

(assert (= (and b!7868386 c!1445550) b!7868389))

(assert (= (and b!7868386 (not c!1445550)) b!7868388))

(assert (= (or b!7868389 b!7868388) bm!729588))

(assert (= (or b!7868395 bm!729588) bm!729589))

(assert (= (or b!7868387 bm!729589) bm!729587))

(assert (= (or b!7868387 b!7868389) bm!729590))

(declare-fun m!8264410 () Bool)

(assert (=> b!7868386 m!8264410))

(assert (=> bm!729587 m!8264392))

(declare-fun m!8264412 () Bool)

(assert (=> bm!729587 m!8264412))

(declare-fun m!8264414 () Bool)

(assert (=> d!2355053 m!8264414))

(assert (=> d!2355053 m!8264390))

(assert (=> bm!729590 m!8264392))

(declare-fun m!8264416 () Bool)

(assert (=> bm!729590 m!8264416))

(assert (=> b!7868291 d!2355053))

(declare-fun d!2355059 () Bool)

(assert (=> d!2355059 (= (head!16091 s!14217) (h!80328 s!14217))))

(assert (=> b!7868291 d!2355059))

(declare-fun b!7868470 () Bool)

(declare-fun e!4648670 () Bool)

(declare-fun lt!2680731 () Bool)

(assert (=> b!7868470 (= e!4648670 (not lt!2680731))))

(declare-fun b!7868471 () Bool)

(declare-fun res!3126757 () Bool)

(declare-fun e!4648667 () Bool)

(assert (=> b!7868471 (=> res!3126757 e!4648667)))

(declare-fun e!4648672 () Bool)

(assert (=> b!7868471 (= res!3126757 e!4648672)))

(declare-fun res!3126758 () Bool)

(assert (=> b!7868471 (=> (not res!3126758) (not e!4648672))))

(assert (=> b!7868471 (= res!3126758 lt!2680731)))

(declare-fun b!7868472 () Bool)

(declare-fun res!3126754 () Bool)

(assert (=> b!7868472 (=> res!3126754 e!4648667)))

(assert (=> b!7868472 (= res!3126754 (not ((_ is ElementMatch!21145) r!24826)))))

(assert (=> b!7868472 (= e!4648670 e!4648667)))

(declare-fun d!2355061 () Bool)

(declare-fun e!4648666 () Bool)

(assert (=> d!2355061 e!4648666))

(declare-fun c!1445567 () Bool)

(assert (=> d!2355061 (= c!1445567 ((_ is EmptyExpr!21145) r!24826))))

(declare-fun e!4648669 () Bool)

(assert (=> d!2355061 (= lt!2680731 e!4648669)))

(declare-fun c!1445566 () Bool)

(assert (=> d!2355061 (= c!1445566 (isEmpty!42380 s!14217))))

(assert (=> d!2355061 (validRegex!11555 r!24826)))

(assert (=> d!2355061 (= (matchR!10581 r!24826 s!14217) lt!2680731)))

(declare-fun b!7868473 () Bool)

(declare-fun e!4648671 () Bool)

(assert (=> b!7868473 (= e!4648667 e!4648671)))

(declare-fun res!3126756 () Bool)

(assert (=> b!7868473 (=> (not res!3126756) (not e!4648671))))

(assert (=> b!7868473 (= res!3126756 (not lt!2680731))))

(declare-fun b!7868474 () Bool)

(declare-fun e!4648668 () Bool)

(assert (=> b!7868474 (= e!4648671 e!4648668)))

(declare-fun res!3126755 () Bool)

(assert (=> b!7868474 (=> res!3126755 e!4648668)))

(declare-fun call!729607 () Bool)

(assert (=> b!7868474 (= res!3126755 call!729607)))

(declare-fun b!7868475 () Bool)

(declare-fun res!3126753 () Bool)

(assert (=> b!7868475 (=> res!3126753 e!4648668)))

(declare-fun tail!15634 (List!74004) List!74004)

(assert (=> b!7868475 (= res!3126753 (not (isEmpty!42380 (tail!15634 s!14217))))))

(declare-fun b!7868476 () Bool)

(declare-fun res!3126759 () Bool)

(assert (=> b!7868476 (=> (not res!3126759) (not e!4648672))))

(assert (=> b!7868476 (= res!3126759 (isEmpty!42380 (tail!15634 s!14217)))))

(declare-fun b!7868477 () Bool)

(assert (=> b!7868477 (= e!4648666 e!4648670)))

(declare-fun c!1445565 () Bool)

(assert (=> b!7868477 (= c!1445565 ((_ is EmptyLang!21145) r!24826))))

(declare-fun b!7868478 () Bool)

(assert (=> b!7868478 (= e!4648666 (= lt!2680731 call!729607))))

(declare-fun bm!729602 () Bool)

(assert (=> bm!729602 (= call!729607 (isEmpty!42380 s!14217))))

(declare-fun b!7868479 () Bool)

(assert (=> b!7868479 (= e!4648669 (matchR!10581 (derivativeStep!6376 r!24826 (head!16091 s!14217)) (tail!15634 s!14217)))))

(declare-fun b!7868480 () Bool)

(declare-fun res!3126752 () Bool)

(assert (=> b!7868480 (=> (not res!3126752) (not e!4648672))))

(assert (=> b!7868480 (= res!3126752 (not call!729607))))

(declare-fun b!7868481 () Bool)

(assert (=> b!7868481 (= e!4648669 (nullable!9413 r!24826))))

(declare-fun b!7868482 () Bool)

(assert (=> b!7868482 (= e!4648668 (not (= (head!16091 s!14217) (c!1445509 r!24826))))))

(declare-fun b!7868483 () Bool)

(assert (=> b!7868483 (= e!4648672 (= (head!16091 s!14217) (c!1445509 r!24826)))))

(assert (= (and d!2355061 c!1445566) b!7868481))

(assert (= (and d!2355061 (not c!1445566)) b!7868479))

(assert (= (and d!2355061 c!1445567) b!7868478))

(assert (= (and d!2355061 (not c!1445567)) b!7868477))

(assert (= (and b!7868477 c!1445565) b!7868470))

(assert (= (and b!7868477 (not c!1445565)) b!7868472))

(assert (= (and b!7868472 (not res!3126754)) b!7868471))

(assert (= (and b!7868471 res!3126758) b!7868480))

(assert (= (and b!7868480 res!3126752) b!7868476))

(assert (= (and b!7868476 res!3126759) b!7868483))

(assert (= (and b!7868471 (not res!3126757)) b!7868473))

(assert (= (and b!7868473 res!3126756) b!7868474))

(assert (= (and b!7868474 (not res!3126755)) b!7868475))

(assert (= (and b!7868475 (not res!3126753)) b!7868482))

(assert (= (or b!7868478 b!7868480 b!7868474) bm!729602))

(declare-fun m!8264432 () Bool)

(assert (=> b!7868476 m!8264432))

(assert (=> b!7868476 m!8264432))

(declare-fun m!8264434 () Bool)

(assert (=> b!7868476 m!8264434))

(assert (=> d!2355061 m!8264386))

(assert (=> d!2355061 m!8264390))

(assert (=> b!7868483 m!8264392))

(assert (=> b!7868482 m!8264392))

(declare-fun m!8264436 () Bool)

(assert (=> b!7868481 m!8264436))

(assert (=> b!7868475 m!8264432))

(assert (=> b!7868475 m!8264432))

(assert (=> b!7868475 m!8264434))

(assert (=> b!7868479 m!8264392))

(assert (=> b!7868479 m!8264392))

(assert (=> b!7868479 m!8264394))

(assert (=> b!7868479 m!8264432))

(assert (=> b!7868479 m!8264394))

(assert (=> b!7868479 m!8264432))

(declare-fun m!8264438 () Bool)

(assert (=> b!7868479 m!8264438))

(assert (=> bm!729602 m!8264386))

(assert (=> b!7868290 d!2355061))

(declare-fun e!4648687 () Bool)

(assert (=> b!7868288 (= tp!2334346 e!4648687)))

(declare-fun b!7868521 () Bool)

(declare-fun tp!2334377 () Bool)

(declare-fun tp!2334375 () Bool)

(assert (=> b!7868521 (= e!4648687 (and tp!2334377 tp!2334375))))

(declare-fun b!7868518 () Bool)

(assert (=> b!7868518 (= e!4648687 tp_is_empty!52689)))

(declare-fun b!7868520 () Bool)

(declare-fun tp!2334374 () Bool)

(assert (=> b!7868520 (= e!4648687 tp!2334374)))

(declare-fun b!7868519 () Bool)

(declare-fun tp!2334376 () Bool)

(declare-fun tp!2334378 () Bool)

(assert (=> b!7868519 (= e!4648687 (and tp!2334376 tp!2334378))))

(assert (= (and b!7868288 ((_ is ElementMatch!21145) (regOne!42802 r!24826))) b!7868518))

(assert (= (and b!7868288 ((_ is Concat!29990) (regOne!42802 r!24826))) b!7868519))

(assert (= (and b!7868288 ((_ is Star!21145) (regOne!42802 r!24826))) b!7868520))

(assert (= (and b!7868288 ((_ is Union!21145) (regOne!42802 r!24826))) b!7868521))

(declare-fun e!4648688 () Bool)

(assert (=> b!7868288 (= tp!2334348 e!4648688)))

(declare-fun b!7868525 () Bool)

(declare-fun tp!2334382 () Bool)

(declare-fun tp!2334380 () Bool)

(assert (=> b!7868525 (= e!4648688 (and tp!2334382 tp!2334380))))

(declare-fun b!7868522 () Bool)

(assert (=> b!7868522 (= e!4648688 tp_is_empty!52689)))

(declare-fun b!7868524 () Bool)

(declare-fun tp!2334379 () Bool)

(assert (=> b!7868524 (= e!4648688 tp!2334379)))

(declare-fun b!7868523 () Bool)

(declare-fun tp!2334381 () Bool)

(declare-fun tp!2334383 () Bool)

(assert (=> b!7868523 (= e!4648688 (and tp!2334381 tp!2334383))))

(assert (= (and b!7868288 ((_ is ElementMatch!21145) (regTwo!42802 r!24826))) b!7868522))

(assert (= (and b!7868288 ((_ is Concat!29990) (regTwo!42802 r!24826))) b!7868523))

(assert (= (and b!7868288 ((_ is Star!21145) (regTwo!42802 r!24826))) b!7868524))

(assert (= (and b!7868288 ((_ is Union!21145) (regTwo!42802 r!24826))) b!7868525))

(declare-fun e!4648689 () Bool)

(assert (=> b!7868293 (= tp!2334347 e!4648689)))

(declare-fun b!7868529 () Bool)

(declare-fun tp!2334387 () Bool)

(declare-fun tp!2334385 () Bool)

(assert (=> b!7868529 (= e!4648689 (and tp!2334387 tp!2334385))))

(declare-fun b!7868526 () Bool)

(assert (=> b!7868526 (= e!4648689 tp_is_empty!52689)))

(declare-fun b!7868528 () Bool)

(declare-fun tp!2334384 () Bool)

(assert (=> b!7868528 (= e!4648689 tp!2334384)))

(declare-fun b!7868527 () Bool)

(declare-fun tp!2334386 () Bool)

(declare-fun tp!2334388 () Bool)

(assert (=> b!7868527 (= e!4648689 (and tp!2334386 tp!2334388))))

(assert (= (and b!7868293 ((_ is ElementMatch!21145) (regOne!42803 r!24826))) b!7868526))

(assert (= (and b!7868293 ((_ is Concat!29990) (regOne!42803 r!24826))) b!7868527))

(assert (= (and b!7868293 ((_ is Star!21145) (regOne!42803 r!24826))) b!7868528))

(assert (= (and b!7868293 ((_ is Union!21145) (regOne!42803 r!24826))) b!7868529))

(declare-fun e!4648691 () Bool)

(assert (=> b!7868293 (= tp!2334345 e!4648691)))

(declare-fun b!7868537 () Bool)

(declare-fun tp!2334397 () Bool)

(declare-fun tp!2334395 () Bool)

(assert (=> b!7868537 (= e!4648691 (and tp!2334397 tp!2334395))))

(declare-fun b!7868534 () Bool)

(assert (=> b!7868534 (= e!4648691 tp_is_empty!52689)))

(declare-fun b!7868536 () Bool)

(declare-fun tp!2334394 () Bool)

(assert (=> b!7868536 (= e!4648691 tp!2334394)))

(declare-fun b!7868535 () Bool)

(declare-fun tp!2334396 () Bool)

(declare-fun tp!2334398 () Bool)

(assert (=> b!7868535 (= e!4648691 (and tp!2334396 tp!2334398))))

(assert (= (and b!7868293 ((_ is ElementMatch!21145) (regTwo!42803 r!24826))) b!7868534))

(assert (= (and b!7868293 ((_ is Concat!29990) (regTwo!42803 r!24826))) b!7868535))

(assert (= (and b!7868293 ((_ is Star!21145) (regTwo!42803 r!24826))) b!7868536))

(assert (= (and b!7868293 ((_ is Union!21145) (regTwo!42803 r!24826))) b!7868537))

(declare-fun e!4648693 () Bool)

(assert (=> b!7868292 (= tp!2334350 e!4648693)))

(declare-fun b!7868545 () Bool)

(declare-fun tp!2334407 () Bool)

(declare-fun tp!2334405 () Bool)

(assert (=> b!7868545 (= e!4648693 (and tp!2334407 tp!2334405))))

(declare-fun b!7868542 () Bool)

(assert (=> b!7868542 (= e!4648693 tp_is_empty!52689)))

(declare-fun b!7868544 () Bool)

(declare-fun tp!2334404 () Bool)

(assert (=> b!7868544 (= e!4648693 tp!2334404)))

(declare-fun b!7868543 () Bool)

(declare-fun tp!2334406 () Bool)

(declare-fun tp!2334408 () Bool)

(assert (=> b!7868543 (= e!4648693 (and tp!2334406 tp!2334408))))

(assert (= (and b!7868292 ((_ is ElementMatch!21145) (reg!21474 r!24826))) b!7868542))

(assert (= (and b!7868292 ((_ is Concat!29990) (reg!21474 r!24826))) b!7868543))

(assert (= (and b!7868292 ((_ is Star!21145) (reg!21474 r!24826))) b!7868544))

(assert (= (and b!7868292 ((_ is Union!21145) (reg!21474 r!24826))) b!7868545))

(declare-fun b!7868562 () Bool)

(declare-fun e!4648699 () Bool)

(declare-fun tp!2334426 () Bool)

(assert (=> b!7868562 (= e!4648699 (and tp_is_empty!52689 tp!2334426))))

(assert (=> b!7868287 (= tp!2334349 e!4648699)))

(assert (= (and b!7868287 ((_ is Cons!73880) (t!388739 s!14217))) b!7868562))

(check-sat (not b!7868482) (not b!7868475) (not b!7868479) (not b!7868562) (not b!7868476) (not b!7868386) (not b!7868521) (not b!7868535) (not b!7868525) (not b!7868543) (not d!2355061) (not b!7868524) (not b!7868528) (not bm!729587) (not bm!729602) (not bm!729570) (not bm!729590) (not b!7868520) (not b!7868529) tp_is_empty!52689 (not b!7868523) (not b!7868519) (not b!7868483) (not d!2355053) (not bm!729569) (not b!7868544) (not b!7868537) (not b!7868527) (not b!7868337) (not b!7868536) (not b!7868545) (not b!7868481))
(check-sat)
