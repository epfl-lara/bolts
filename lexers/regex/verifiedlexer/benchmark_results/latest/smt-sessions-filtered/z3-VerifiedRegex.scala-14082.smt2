; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742174 () Bool)

(assert start!742174)

(declare-fun b!7831520 () Bool)

(declare-fun e!4631524 () Bool)

(declare-fun tp!2315877 () Bool)

(declare-fun tp!2315880 () Bool)

(assert (=> b!7831520 (= e!4631524 (and tp!2315877 tp!2315880))))

(declare-fun res!3115053 () Bool)

(declare-fun e!4631527 () Bool)

(assert (=> start!742174 (=> (not res!3115053) (not e!4631527))))

(declare-datatypes ((C!42244 0))(
  ( (C!42245 (val!31562 Int)) )
))
(declare-datatypes ((Regex!20959 0))(
  ( (ElementMatch!20959 (c!1440560 C!42244)) (Concat!29804 (regOne!42430 Regex!20959) (regTwo!42430 Regex!20959)) (EmptyExpr!20959) (Star!20959 (reg!21288 Regex!20959)) (EmptyLang!20959) (Union!20959 (regOne!42431 Regex!20959) (regTwo!42431 Regex!20959)) )
))
(declare-fun r1!6261 () Regex!20959)

(declare-fun validRegex!11373 (Regex!20959) Bool)

(assert (=> start!742174 (= res!3115053 (validRegex!11373 r1!6261))))

(assert (=> start!742174 e!4631527))

(assert (=> start!742174 e!4631524))

(declare-fun e!4631523 () Bool)

(assert (=> start!742174 e!4631523))

(declare-fun e!4631528 () Bool)

(assert (=> start!742174 e!4631528))

(declare-fun e!4631525 () Bool)

(assert (=> start!742174 e!4631525))

(declare-fun e!4631529 () Bool)

(assert (=> start!742174 e!4631529))

(declare-fun e!4631526 () Bool)

(assert (=> start!742174 e!4631526))

(declare-fun e!4631522 () Bool)

(assert (=> start!742174 e!4631522))

(declare-fun b!7831521 () Bool)

(declare-fun tp!2315874 () Bool)

(declare-fun tp!2315873 () Bool)

(assert (=> b!7831521 (= e!4631526 (and tp!2315874 tp!2315873))))

(declare-fun b!7831522 () Bool)

(declare-fun tp_is_empty!52273 () Bool)

(declare-fun tp!2315870 () Bool)

(assert (=> b!7831522 (= e!4631525 (and tp_is_empty!52273 tp!2315870))))

(declare-fun b!7831523 () Bool)

(declare-fun tp!2315871 () Bool)

(assert (=> b!7831523 (= e!4631523 (and tp_is_empty!52273 tp!2315871))))

(declare-fun b!7831524 () Bool)

(declare-fun tp!2315869 () Bool)

(declare-fun tp!2315875 () Bool)

(assert (=> b!7831524 (= e!4631524 (and tp!2315869 tp!2315875))))

(declare-fun b!7831525 () Bool)

(declare-fun tp!2315883 () Bool)

(assert (=> b!7831525 (= e!4631528 (and tp_is_empty!52273 tp!2315883))))

(declare-fun b!7831526 () Bool)

(declare-fun tp!2315882 () Bool)

(assert (=> b!7831526 (= e!4631526 tp!2315882)))

(declare-fun b!7831527 () Bool)

(assert (=> b!7831527 (= e!4631524 tp_is_empty!52273)))

(declare-fun b!7831528 () Bool)

(declare-fun tp!2315872 () Bool)

(assert (=> b!7831528 (= e!4631529 (and tp_is_empty!52273 tp!2315872))))

(declare-fun b!7831529 () Bool)

(declare-fun res!3115048 () Bool)

(assert (=> b!7831529 (=> (not res!3115048) (not e!4631527))))

(declare-datatypes ((List!73796 0))(
  ( (Nil!73672) (Cons!73672 (h!80120 C!42244) (t!388531 List!73796)) )
))
(declare-fun s1Rec!453 () List!73796)

(declare-fun s2Rec!453 () List!73796)

(declare-fun s!14274 () List!73796)

(declare-fun ++!17993 (List!73796 List!73796) List!73796)

(assert (=> b!7831529 (= res!3115048 (= (++!17993 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7831530 () Bool)

(declare-fun res!3115051 () Bool)

(assert (=> b!7831530 (=> (not res!3115051) (not e!4631527))))

(declare-fun r2!6199 () Regex!20959)

(assert (=> b!7831530 (= res!3115051 (validRegex!11373 r2!6199))))

(declare-fun b!7831531 () Bool)

(declare-fun size!42759 (List!73796) Int)

(assert (=> b!7831531 (= e!4631527 (< (size!42759 s2Rec!453) 0))))

(declare-fun b!7831532 () Bool)

(assert (=> b!7831532 (= e!4631526 tp_is_empty!52273)))

(declare-fun b!7831533 () Bool)

(declare-fun res!3115050 () Bool)

(assert (=> b!7831533 (=> (not res!3115050) (not e!4631527))))

(declare-fun s1!4101 () List!73796)

(declare-fun isPrefix!6309 (List!73796 List!73796) Bool)

(assert (=> b!7831533 (= res!3115050 (isPrefix!6309 s1Rec!453 s1!4101))))

(declare-fun b!7831534 () Bool)

(declare-fun tp!2315879 () Bool)

(assert (=> b!7831534 (= e!4631522 (and tp_is_empty!52273 tp!2315879))))

(declare-fun b!7831535 () Bool)

(declare-fun res!3115054 () Bool)

(assert (=> b!7831535 (=> (not res!3115054) (not e!4631527))))

(declare-fun matchR!10415 (Regex!20959 List!73796) Bool)

(assert (=> b!7831535 (= res!3115054 (matchR!10415 r1!6261 s1!4101))))

(declare-fun b!7831536 () Bool)

(declare-fun tp!2315878 () Bool)

(declare-fun tp!2315876 () Bool)

(assert (=> b!7831536 (= e!4631526 (and tp!2315878 tp!2315876))))

(declare-fun b!7831537 () Bool)

(declare-fun res!3115052 () Bool)

(assert (=> b!7831537 (=> (not res!3115052) (not e!4631527))))

(declare-fun s2!3721 () List!73796)

(assert (=> b!7831537 (= res!3115052 (matchR!10415 r2!6199 s2!3721))))

(declare-fun b!7831538 () Bool)

(declare-fun tp!2315881 () Bool)

(assert (=> b!7831538 (= e!4631524 tp!2315881)))

(declare-fun b!7831539 () Bool)

(declare-fun res!3115049 () Bool)

(assert (=> b!7831539 (=> (not res!3115049) (not e!4631527))))

(assert (=> b!7831539 (= res!3115049 (= (++!17993 s1!4101 s2!3721) s!14274))))

(assert (= (and start!742174 res!3115053) b!7831530))

(assert (= (and b!7831530 res!3115051) b!7831539))

(assert (= (and b!7831539 res!3115049) b!7831533))

(assert (= (and b!7831533 res!3115050) b!7831529))

(assert (= (and b!7831529 res!3115048) b!7831535))

(assert (= (and b!7831535 res!3115054) b!7831537))

(assert (= (and b!7831537 res!3115052) b!7831531))

(get-info :version)

(assert (= (and start!742174 ((_ is ElementMatch!20959) r2!6199)) b!7831527))

(assert (= (and start!742174 ((_ is Concat!29804) r2!6199)) b!7831524))

(assert (= (and start!742174 ((_ is Star!20959) r2!6199)) b!7831538))

(assert (= (and start!742174 ((_ is Union!20959) r2!6199)) b!7831520))

(assert (= (and start!742174 ((_ is Cons!73672) s1!4101)) b!7831523))

(assert (= (and start!742174 ((_ is Cons!73672) s2!3721)) b!7831525))

(assert (= (and start!742174 ((_ is Cons!73672) s2Rec!453)) b!7831522))

(assert (= (and start!742174 ((_ is Cons!73672) s!14274)) b!7831528))

(assert (= (and start!742174 ((_ is ElementMatch!20959) r1!6261)) b!7831532))

(assert (= (and start!742174 ((_ is Concat!29804) r1!6261)) b!7831521))

(assert (= (and start!742174 ((_ is Star!20959) r1!6261)) b!7831526))

(assert (= (and start!742174 ((_ is Union!20959) r1!6261)) b!7831536))

(assert (= (and start!742174 ((_ is Cons!73672) s1Rec!453)) b!7831534))

(declare-fun m!8248714 () Bool)

(assert (=> b!7831535 m!8248714))

(declare-fun m!8248716 () Bool)

(assert (=> b!7831530 m!8248716))

(declare-fun m!8248718 () Bool)

(assert (=> start!742174 m!8248718))

(declare-fun m!8248720 () Bool)

(assert (=> b!7831531 m!8248720))

(declare-fun m!8248722 () Bool)

(assert (=> b!7831529 m!8248722))

(declare-fun m!8248724 () Bool)

(assert (=> b!7831537 m!8248724))

(declare-fun m!8248726 () Bool)

(assert (=> b!7831533 m!8248726))

(declare-fun m!8248728 () Bool)

(assert (=> b!7831539 m!8248728))

(check-sat (not b!7831534) (not b!7831528) (not b!7831520) (not b!7831522) (not b!7831538) (not b!7831531) (not b!7831526) (not b!7831529) (not b!7831537) (not b!7831525) (not b!7831535) (not b!7831533) (not b!7831524) (not start!742174) (not b!7831536) tp_is_empty!52273 (not b!7831539) (not b!7831521) (not b!7831523) (not b!7831530))
(check-sat)
(get-model)

(declare-fun b!7831568 () Bool)

(declare-fun e!4631550 () Bool)

(declare-fun e!4631544 () Bool)

(assert (=> b!7831568 (= e!4631550 e!4631544)))

(declare-fun res!3115076 () Bool)

(assert (=> b!7831568 (=> (not res!3115076) (not e!4631544))))

(declare-fun lt!2676937 () Bool)

(assert (=> b!7831568 (= res!3115076 (not lt!2676937))))

(declare-fun b!7831569 () Bool)

(declare-fun e!4631545 () Bool)

(declare-fun call!726269 () Bool)

(assert (=> b!7831569 (= e!4631545 (= lt!2676937 call!726269))))

(declare-fun b!7831570 () Bool)

(declare-fun e!4631548 () Bool)

(declare-fun nullable!9300 (Regex!20959) Bool)

(assert (=> b!7831570 (= e!4631548 (nullable!9300 r2!6199))))

(declare-fun b!7831571 () Bool)

(declare-fun res!3115077 () Bool)

(declare-fun e!4631546 () Bool)

(assert (=> b!7831571 (=> res!3115077 e!4631546)))

(declare-fun isEmpty!42288 (List!73796) Bool)

(declare-fun tail!15530 (List!73796) List!73796)

(assert (=> b!7831571 (= res!3115077 (not (isEmpty!42288 (tail!15530 s2!3721))))))

(declare-fun b!7831572 () Bool)

(declare-fun head!15989 (List!73796) C!42244)

(assert (=> b!7831572 (= e!4631546 (not (= (head!15989 s2!3721) (c!1440560 r2!6199))))))

(declare-fun b!7831573 () Bool)

(declare-fun e!4631547 () Bool)

(assert (=> b!7831573 (= e!4631547 (not lt!2676937))))

(declare-fun b!7831574 () Bool)

(assert (=> b!7831574 (= e!4631545 e!4631547)))

(declare-fun c!1440568 () Bool)

(assert (=> b!7831574 (= c!1440568 ((_ is EmptyLang!20959) r2!6199))))

(declare-fun b!7831575 () Bool)

(declare-fun res!3115073 () Bool)

(declare-fun e!4631549 () Bool)

(assert (=> b!7831575 (=> (not res!3115073) (not e!4631549))))

(assert (=> b!7831575 (= res!3115073 (not call!726269))))

(declare-fun b!7831576 () Bool)

(declare-fun res!3115078 () Bool)

(assert (=> b!7831576 (=> (not res!3115078) (not e!4631549))))

(assert (=> b!7831576 (= res!3115078 (isEmpty!42288 (tail!15530 s2!3721)))))

(declare-fun d!2350955 () Bool)

(assert (=> d!2350955 e!4631545))

(declare-fun c!1440567 () Bool)

(assert (=> d!2350955 (= c!1440567 ((_ is EmptyExpr!20959) r2!6199))))

(assert (=> d!2350955 (= lt!2676937 e!4631548)))

(declare-fun c!1440569 () Bool)

(assert (=> d!2350955 (= c!1440569 (isEmpty!42288 s2!3721))))

(assert (=> d!2350955 (validRegex!11373 r2!6199)))

(assert (=> d!2350955 (= (matchR!10415 r2!6199 s2!3721) lt!2676937)))

(declare-fun b!7831577 () Bool)

(declare-fun res!3115072 () Bool)

(assert (=> b!7831577 (=> res!3115072 e!4631550)))

(assert (=> b!7831577 (= res!3115072 e!4631549)))

(declare-fun res!3115074 () Bool)

(assert (=> b!7831577 (=> (not res!3115074) (not e!4631549))))

(assert (=> b!7831577 (= res!3115074 lt!2676937)))

(declare-fun b!7831578 () Bool)

(assert (=> b!7831578 (= e!4631544 e!4631546)))

(declare-fun res!3115071 () Bool)

(assert (=> b!7831578 (=> res!3115071 e!4631546)))

(assert (=> b!7831578 (= res!3115071 call!726269)))

(declare-fun b!7831579 () Bool)

(declare-fun derivativeStep!6259 (Regex!20959 C!42244) Regex!20959)

(assert (=> b!7831579 (= e!4631548 (matchR!10415 (derivativeStep!6259 r2!6199 (head!15989 s2!3721)) (tail!15530 s2!3721)))))

(declare-fun bm!726264 () Bool)

(assert (=> bm!726264 (= call!726269 (isEmpty!42288 s2!3721))))

(declare-fun b!7831580 () Bool)

(assert (=> b!7831580 (= e!4631549 (= (head!15989 s2!3721) (c!1440560 r2!6199)))))

(declare-fun b!7831581 () Bool)

(declare-fun res!3115075 () Bool)

(assert (=> b!7831581 (=> res!3115075 e!4631550)))

(assert (=> b!7831581 (= res!3115075 (not ((_ is ElementMatch!20959) r2!6199)))))

(assert (=> b!7831581 (= e!4631547 e!4631550)))

(assert (= (and d!2350955 c!1440569) b!7831570))

(assert (= (and d!2350955 (not c!1440569)) b!7831579))

(assert (= (and d!2350955 c!1440567) b!7831569))

(assert (= (and d!2350955 (not c!1440567)) b!7831574))

(assert (= (and b!7831574 c!1440568) b!7831573))

(assert (= (and b!7831574 (not c!1440568)) b!7831581))

(assert (= (and b!7831581 (not res!3115075)) b!7831577))

(assert (= (and b!7831577 res!3115074) b!7831575))

(assert (= (and b!7831575 res!3115073) b!7831576))

(assert (= (and b!7831576 res!3115078) b!7831580))

(assert (= (and b!7831577 (not res!3115072)) b!7831568))

(assert (= (and b!7831568 res!3115076) b!7831578))

(assert (= (and b!7831578 (not res!3115071)) b!7831571))

(assert (= (and b!7831571 (not res!3115077)) b!7831572))

(assert (= (or b!7831569 b!7831575 b!7831578) bm!726264))

(declare-fun m!8248730 () Bool)

(assert (=> b!7831571 m!8248730))

(assert (=> b!7831571 m!8248730))

(declare-fun m!8248732 () Bool)

(assert (=> b!7831571 m!8248732))

(assert (=> b!7831576 m!8248730))

(assert (=> b!7831576 m!8248730))

(assert (=> b!7831576 m!8248732))

(declare-fun m!8248734 () Bool)

(assert (=> b!7831580 m!8248734))

(declare-fun m!8248736 () Bool)

(assert (=> bm!726264 m!8248736))

(assert (=> b!7831579 m!8248734))

(assert (=> b!7831579 m!8248734))

(declare-fun m!8248738 () Bool)

(assert (=> b!7831579 m!8248738))

(assert (=> b!7831579 m!8248730))

(assert (=> b!7831579 m!8248738))

(assert (=> b!7831579 m!8248730))

(declare-fun m!8248740 () Bool)

(assert (=> b!7831579 m!8248740))

(assert (=> b!7831572 m!8248734))

(declare-fun m!8248742 () Bool)

(assert (=> b!7831570 m!8248742))

(assert (=> d!2350955 m!8248736))

(assert (=> d!2350955 m!8248716))

(assert (=> b!7831537 d!2350955))

(declare-fun b!7831627 () Bool)

(declare-fun e!4631587 () Bool)

(declare-fun e!4631590 () Bool)

(assert (=> b!7831627 (= e!4631587 e!4631590)))

(declare-fun res!3115106 () Bool)

(assert (=> b!7831627 (= res!3115106 (not (nullable!9300 (reg!21288 r1!6261))))))

(assert (=> b!7831627 (=> (not res!3115106) (not e!4631590))))

(declare-fun bm!726280 () Bool)

(declare-fun call!726287 () Bool)

(declare-fun c!1440580 () Bool)

(assert (=> bm!726280 (= call!726287 (validRegex!11373 (ite c!1440580 (regTwo!42431 r1!6261) (regOne!42430 r1!6261))))))

(declare-fun b!7831628 () Bool)

(declare-fun call!726286 () Bool)

(assert (=> b!7831628 (= e!4631590 call!726286)))

(declare-fun b!7831629 () Bool)

(declare-fun res!3115104 () Bool)

(declare-fun e!4631586 () Bool)

(assert (=> b!7831629 (=> res!3115104 e!4631586)))

(assert (=> b!7831629 (= res!3115104 (not ((_ is Concat!29804) r1!6261)))))

(declare-fun e!4631591 () Bool)

(assert (=> b!7831629 (= e!4631591 e!4631586)))

(declare-fun bm!726281 () Bool)

(declare-fun call!726285 () Bool)

(assert (=> bm!726281 (= call!726285 call!726286)))

(declare-fun b!7831630 () Bool)

(declare-fun e!4631588 () Bool)

(assert (=> b!7831630 (= e!4631586 e!4631588)))

(declare-fun res!3115108 () Bool)

(assert (=> b!7831630 (=> (not res!3115108) (not e!4631588))))

(assert (=> b!7831630 (= res!3115108 call!726287)))

(declare-fun b!7831631 () Bool)

(declare-fun e!4631592 () Bool)

(assert (=> b!7831631 (= e!4631592 e!4631587)))

(declare-fun c!1440581 () Bool)

(assert (=> b!7831631 (= c!1440581 ((_ is Star!20959) r1!6261))))

(declare-fun b!7831632 () Bool)

(assert (=> b!7831632 (= e!4631587 e!4631591)))

(assert (=> b!7831632 (= c!1440580 ((_ is Union!20959) r1!6261))))

(declare-fun d!2350959 () Bool)

(declare-fun res!3115107 () Bool)

(assert (=> d!2350959 (=> res!3115107 e!4631592)))

(assert (=> d!2350959 (= res!3115107 ((_ is ElementMatch!20959) r1!6261))))

(assert (=> d!2350959 (= (validRegex!11373 r1!6261) e!4631592)))

(declare-fun bm!726282 () Bool)

(assert (=> bm!726282 (= call!726286 (validRegex!11373 (ite c!1440581 (reg!21288 r1!6261) (ite c!1440580 (regOne!42431 r1!6261) (regTwo!42430 r1!6261)))))))

(declare-fun b!7831633 () Bool)

(declare-fun e!4631589 () Bool)

(assert (=> b!7831633 (= e!4631589 call!726287)))

(declare-fun b!7831634 () Bool)

(declare-fun res!3115105 () Bool)

(assert (=> b!7831634 (=> (not res!3115105) (not e!4631589))))

(assert (=> b!7831634 (= res!3115105 call!726285)))

(assert (=> b!7831634 (= e!4631591 e!4631589)))

(declare-fun b!7831635 () Bool)

(assert (=> b!7831635 (= e!4631588 call!726285)))

(assert (= (and d!2350959 (not res!3115107)) b!7831631))

(assert (= (and b!7831631 c!1440581) b!7831627))

(assert (= (and b!7831631 (not c!1440581)) b!7831632))

(assert (= (and b!7831627 res!3115106) b!7831628))

(assert (= (and b!7831632 c!1440580) b!7831634))

(assert (= (and b!7831632 (not c!1440580)) b!7831629))

(assert (= (and b!7831634 res!3115105) b!7831633))

(assert (= (and b!7831629 (not res!3115104)) b!7831630))

(assert (= (and b!7831630 res!3115108) b!7831635))

(assert (= (or b!7831633 b!7831630) bm!726280))

(assert (= (or b!7831634 b!7831635) bm!726281))

(assert (= (or b!7831628 bm!726281) bm!726282))

(declare-fun m!8248750 () Bool)

(assert (=> b!7831627 m!8248750))

(declare-fun m!8248752 () Bool)

(assert (=> bm!726280 m!8248752))

(declare-fun m!8248754 () Bool)

(assert (=> bm!726282 m!8248754))

(assert (=> start!742174 d!2350959))

(declare-fun d!2350963 () Bool)

(declare-fun lt!2676940 () Int)

(assert (=> d!2350963 (>= lt!2676940 0)))

(declare-fun e!4631595 () Int)

(assert (=> d!2350963 (= lt!2676940 e!4631595)))

(declare-fun c!1440584 () Bool)

(assert (=> d!2350963 (= c!1440584 ((_ is Nil!73672) s2Rec!453))))

(assert (=> d!2350963 (= (size!42759 s2Rec!453) lt!2676940)))

(declare-fun b!7831640 () Bool)

(assert (=> b!7831640 (= e!4631595 0)))

(declare-fun b!7831641 () Bool)

(assert (=> b!7831641 (= e!4631595 (+ 1 (size!42759 (t!388531 s2Rec!453))))))

(assert (= (and d!2350963 c!1440584) b!7831640))

(assert (= (and d!2350963 (not c!1440584)) b!7831641))

(declare-fun m!8248756 () Bool)

(assert (=> b!7831641 m!8248756))

(assert (=> b!7831531 d!2350963))

(declare-fun b!7831642 () Bool)

(declare-fun e!4631602 () Bool)

(declare-fun e!4631596 () Bool)

(assert (=> b!7831642 (= e!4631602 e!4631596)))

(declare-fun res!3115114 () Bool)

(assert (=> b!7831642 (=> (not res!3115114) (not e!4631596))))

(declare-fun lt!2676941 () Bool)

(assert (=> b!7831642 (= res!3115114 (not lt!2676941))))

(declare-fun b!7831643 () Bool)

(declare-fun e!4631597 () Bool)

(declare-fun call!726288 () Bool)

(assert (=> b!7831643 (= e!4631597 (= lt!2676941 call!726288))))

(declare-fun b!7831644 () Bool)

(declare-fun e!4631600 () Bool)

(assert (=> b!7831644 (= e!4631600 (nullable!9300 r1!6261))))

(declare-fun b!7831645 () Bool)

(declare-fun res!3115115 () Bool)

(declare-fun e!4631598 () Bool)

(assert (=> b!7831645 (=> res!3115115 e!4631598)))

(assert (=> b!7831645 (= res!3115115 (not (isEmpty!42288 (tail!15530 s1!4101))))))

(declare-fun b!7831646 () Bool)

(assert (=> b!7831646 (= e!4631598 (not (= (head!15989 s1!4101) (c!1440560 r1!6261))))))

(declare-fun b!7831647 () Bool)

(declare-fun e!4631599 () Bool)

(assert (=> b!7831647 (= e!4631599 (not lt!2676941))))

(declare-fun b!7831648 () Bool)

(assert (=> b!7831648 (= e!4631597 e!4631599)))

(declare-fun c!1440586 () Bool)

(assert (=> b!7831648 (= c!1440586 ((_ is EmptyLang!20959) r1!6261))))

(declare-fun b!7831649 () Bool)

(declare-fun res!3115111 () Bool)

(declare-fun e!4631601 () Bool)

(assert (=> b!7831649 (=> (not res!3115111) (not e!4631601))))

(assert (=> b!7831649 (= res!3115111 (not call!726288))))

(declare-fun b!7831650 () Bool)

(declare-fun res!3115116 () Bool)

(assert (=> b!7831650 (=> (not res!3115116) (not e!4631601))))

(assert (=> b!7831650 (= res!3115116 (isEmpty!42288 (tail!15530 s1!4101)))))

(declare-fun d!2350965 () Bool)

(assert (=> d!2350965 e!4631597))

(declare-fun c!1440585 () Bool)

(assert (=> d!2350965 (= c!1440585 ((_ is EmptyExpr!20959) r1!6261))))

(assert (=> d!2350965 (= lt!2676941 e!4631600)))

(declare-fun c!1440587 () Bool)

(assert (=> d!2350965 (= c!1440587 (isEmpty!42288 s1!4101))))

(assert (=> d!2350965 (validRegex!11373 r1!6261)))

(assert (=> d!2350965 (= (matchR!10415 r1!6261 s1!4101) lt!2676941)))

(declare-fun b!7831651 () Bool)

(declare-fun res!3115110 () Bool)

(assert (=> b!7831651 (=> res!3115110 e!4631602)))

(assert (=> b!7831651 (= res!3115110 e!4631601)))

(declare-fun res!3115112 () Bool)

(assert (=> b!7831651 (=> (not res!3115112) (not e!4631601))))

(assert (=> b!7831651 (= res!3115112 lt!2676941)))

(declare-fun b!7831652 () Bool)

(assert (=> b!7831652 (= e!4631596 e!4631598)))

(declare-fun res!3115109 () Bool)

(assert (=> b!7831652 (=> res!3115109 e!4631598)))

(assert (=> b!7831652 (= res!3115109 call!726288)))

(declare-fun b!7831653 () Bool)

(assert (=> b!7831653 (= e!4631600 (matchR!10415 (derivativeStep!6259 r1!6261 (head!15989 s1!4101)) (tail!15530 s1!4101)))))

(declare-fun bm!726283 () Bool)

(assert (=> bm!726283 (= call!726288 (isEmpty!42288 s1!4101))))

(declare-fun b!7831654 () Bool)

(assert (=> b!7831654 (= e!4631601 (= (head!15989 s1!4101) (c!1440560 r1!6261)))))

(declare-fun b!7831655 () Bool)

(declare-fun res!3115113 () Bool)

(assert (=> b!7831655 (=> res!3115113 e!4631602)))

(assert (=> b!7831655 (= res!3115113 (not ((_ is ElementMatch!20959) r1!6261)))))

(assert (=> b!7831655 (= e!4631599 e!4631602)))

(assert (= (and d!2350965 c!1440587) b!7831644))

(assert (= (and d!2350965 (not c!1440587)) b!7831653))

(assert (= (and d!2350965 c!1440585) b!7831643))

(assert (= (and d!2350965 (not c!1440585)) b!7831648))

(assert (= (and b!7831648 c!1440586) b!7831647))

(assert (= (and b!7831648 (not c!1440586)) b!7831655))

(assert (= (and b!7831655 (not res!3115113)) b!7831651))

(assert (= (and b!7831651 res!3115112) b!7831649))

(assert (= (and b!7831649 res!3115111) b!7831650))

(assert (= (and b!7831650 res!3115116) b!7831654))

(assert (= (and b!7831651 (not res!3115110)) b!7831642))

(assert (= (and b!7831642 res!3115114) b!7831652))

(assert (= (and b!7831652 (not res!3115109)) b!7831645))

(assert (= (and b!7831645 (not res!3115115)) b!7831646))

(assert (= (or b!7831643 b!7831649 b!7831652) bm!726283))

(declare-fun m!8248758 () Bool)

(assert (=> b!7831645 m!8248758))

(assert (=> b!7831645 m!8248758))

(declare-fun m!8248760 () Bool)

(assert (=> b!7831645 m!8248760))

(assert (=> b!7831650 m!8248758))

(assert (=> b!7831650 m!8248758))

(assert (=> b!7831650 m!8248760))

(declare-fun m!8248762 () Bool)

(assert (=> b!7831654 m!8248762))

(declare-fun m!8248764 () Bool)

(assert (=> bm!726283 m!8248764))

(assert (=> b!7831653 m!8248762))

(assert (=> b!7831653 m!8248762))

(declare-fun m!8248766 () Bool)

(assert (=> b!7831653 m!8248766))

(assert (=> b!7831653 m!8248758))

(assert (=> b!7831653 m!8248766))

(assert (=> b!7831653 m!8248758))

(declare-fun m!8248768 () Bool)

(assert (=> b!7831653 m!8248768))

(assert (=> b!7831646 m!8248762))

(declare-fun m!8248770 () Bool)

(assert (=> b!7831644 m!8248770))

(assert (=> d!2350965 m!8248764))

(assert (=> d!2350965 m!8248718))

(assert (=> b!7831535 d!2350965))

(declare-fun b!7831656 () Bool)

(declare-fun e!4631604 () Bool)

(declare-fun e!4631607 () Bool)

(assert (=> b!7831656 (= e!4631604 e!4631607)))

(declare-fun res!3115119 () Bool)

(assert (=> b!7831656 (= res!3115119 (not (nullable!9300 (reg!21288 r2!6199))))))

(assert (=> b!7831656 (=> (not res!3115119) (not e!4631607))))

(declare-fun bm!726284 () Bool)

(declare-fun call!726291 () Bool)

(declare-fun c!1440588 () Bool)

(assert (=> bm!726284 (= call!726291 (validRegex!11373 (ite c!1440588 (regTwo!42431 r2!6199) (regOne!42430 r2!6199))))))

(declare-fun b!7831657 () Bool)

(declare-fun call!726290 () Bool)

(assert (=> b!7831657 (= e!4631607 call!726290)))

(declare-fun b!7831658 () Bool)

(declare-fun res!3115117 () Bool)

(declare-fun e!4631603 () Bool)

(assert (=> b!7831658 (=> res!3115117 e!4631603)))

(assert (=> b!7831658 (= res!3115117 (not ((_ is Concat!29804) r2!6199)))))

(declare-fun e!4631608 () Bool)

(assert (=> b!7831658 (= e!4631608 e!4631603)))

(declare-fun bm!726285 () Bool)

(declare-fun call!726289 () Bool)

(assert (=> bm!726285 (= call!726289 call!726290)))

(declare-fun b!7831659 () Bool)

(declare-fun e!4631605 () Bool)

(assert (=> b!7831659 (= e!4631603 e!4631605)))

(declare-fun res!3115121 () Bool)

(assert (=> b!7831659 (=> (not res!3115121) (not e!4631605))))

(assert (=> b!7831659 (= res!3115121 call!726291)))

(declare-fun b!7831660 () Bool)

(declare-fun e!4631609 () Bool)

(assert (=> b!7831660 (= e!4631609 e!4631604)))

(declare-fun c!1440589 () Bool)

(assert (=> b!7831660 (= c!1440589 ((_ is Star!20959) r2!6199))))

(declare-fun b!7831661 () Bool)

(assert (=> b!7831661 (= e!4631604 e!4631608)))

(assert (=> b!7831661 (= c!1440588 ((_ is Union!20959) r2!6199))))

(declare-fun d!2350967 () Bool)

(declare-fun res!3115120 () Bool)

(assert (=> d!2350967 (=> res!3115120 e!4631609)))

(assert (=> d!2350967 (= res!3115120 ((_ is ElementMatch!20959) r2!6199))))

(assert (=> d!2350967 (= (validRegex!11373 r2!6199) e!4631609)))

(declare-fun bm!726286 () Bool)

(assert (=> bm!726286 (= call!726290 (validRegex!11373 (ite c!1440589 (reg!21288 r2!6199) (ite c!1440588 (regOne!42431 r2!6199) (regTwo!42430 r2!6199)))))))

(declare-fun b!7831662 () Bool)

(declare-fun e!4631606 () Bool)

(assert (=> b!7831662 (= e!4631606 call!726291)))

(declare-fun b!7831663 () Bool)

(declare-fun res!3115118 () Bool)

(assert (=> b!7831663 (=> (not res!3115118) (not e!4631606))))

(assert (=> b!7831663 (= res!3115118 call!726289)))

(assert (=> b!7831663 (= e!4631608 e!4631606)))

(declare-fun b!7831664 () Bool)

(assert (=> b!7831664 (= e!4631605 call!726289)))

(assert (= (and d!2350967 (not res!3115120)) b!7831660))

(assert (= (and b!7831660 c!1440589) b!7831656))

(assert (= (and b!7831660 (not c!1440589)) b!7831661))

(assert (= (and b!7831656 res!3115119) b!7831657))

(assert (= (and b!7831661 c!1440588) b!7831663))

(assert (= (and b!7831661 (not c!1440588)) b!7831658))

(assert (= (and b!7831663 res!3115118) b!7831662))

(assert (= (and b!7831658 (not res!3115117)) b!7831659))

(assert (= (and b!7831659 res!3115121) b!7831664))

(assert (= (or b!7831662 b!7831659) bm!726284))

(assert (= (or b!7831663 b!7831664) bm!726285))

(assert (= (or b!7831657 bm!726285) bm!726286))

(declare-fun m!8248772 () Bool)

(assert (=> b!7831656 m!8248772))

(declare-fun m!8248774 () Bool)

(assert (=> bm!726284 m!8248774))

(declare-fun m!8248776 () Bool)

(assert (=> bm!726286 m!8248776))

(assert (=> b!7831530 d!2350967))

(declare-fun b!7831703 () Bool)

(declare-fun res!3115143 () Bool)

(declare-fun e!4631628 () Bool)

(assert (=> b!7831703 (=> (not res!3115143) (not e!4631628))))

(declare-fun lt!2676946 () List!73796)

(assert (=> b!7831703 (= res!3115143 (= (size!42759 lt!2676946) (+ (size!42759 s1Rec!453) (size!42759 s2Rec!453))))))

(declare-fun b!7831704 () Bool)

(assert (=> b!7831704 (= e!4631628 (or (not (= s2Rec!453 Nil!73672)) (= lt!2676946 s1Rec!453)))))

(declare-fun d!2350969 () Bool)

(assert (=> d!2350969 e!4631628))

(declare-fun res!3115142 () Bool)

(assert (=> d!2350969 (=> (not res!3115142) (not e!4631628))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15641 (List!73796) (InoxSet C!42244))

(assert (=> d!2350969 (= res!3115142 (= (content!15641 lt!2676946) ((_ map or) (content!15641 s1Rec!453) (content!15641 s2Rec!453))))))

(declare-fun e!4631629 () List!73796)

(assert (=> d!2350969 (= lt!2676946 e!4631629)))

(declare-fun c!1440598 () Bool)

(assert (=> d!2350969 (= c!1440598 ((_ is Nil!73672) s1Rec!453))))

(assert (=> d!2350969 (= (++!17993 s1Rec!453 s2Rec!453) lt!2676946)))

(declare-fun b!7831702 () Bool)

(assert (=> b!7831702 (= e!4631629 (Cons!73672 (h!80120 s1Rec!453) (++!17993 (t!388531 s1Rec!453) s2Rec!453)))))

(declare-fun b!7831701 () Bool)

(assert (=> b!7831701 (= e!4631629 s2Rec!453)))

(assert (= (and d!2350969 c!1440598) b!7831701))

(assert (= (and d!2350969 (not c!1440598)) b!7831702))

(assert (= (and d!2350969 res!3115142) b!7831703))

(assert (= (and b!7831703 res!3115143) b!7831704))

(declare-fun m!8248778 () Bool)

(assert (=> b!7831703 m!8248778))

(declare-fun m!8248780 () Bool)

(assert (=> b!7831703 m!8248780))

(assert (=> b!7831703 m!8248720))

(declare-fun m!8248782 () Bool)

(assert (=> d!2350969 m!8248782))

(declare-fun m!8248784 () Bool)

(assert (=> d!2350969 m!8248784))

(declare-fun m!8248786 () Bool)

(assert (=> d!2350969 m!8248786))

(declare-fun m!8248788 () Bool)

(assert (=> b!7831702 m!8248788))

(assert (=> b!7831529 d!2350969))

(declare-fun b!7831707 () Bool)

(declare-fun res!3115145 () Bool)

(declare-fun e!4631630 () Bool)

(assert (=> b!7831707 (=> (not res!3115145) (not e!4631630))))

(declare-fun lt!2676947 () List!73796)

(assert (=> b!7831707 (= res!3115145 (= (size!42759 lt!2676947) (+ (size!42759 s1!4101) (size!42759 s2!3721))))))

(declare-fun b!7831708 () Bool)

(assert (=> b!7831708 (= e!4631630 (or (not (= s2!3721 Nil!73672)) (= lt!2676947 s1!4101)))))

(declare-fun d!2350971 () Bool)

(assert (=> d!2350971 e!4631630))

(declare-fun res!3115144 () Bool)

(assert (=> d!2350971 (=> (not res!3115144) (not e!4631630))))

(assert (=> d!2350971 (= res!3115144 (= (content!15641 lt!2676947) ((_ map or) (content!15641 s1!4101) (content!15641 s2!3721))))))

(declare-fun e!4631631 () List!73796)

(assert (=> d!2350971 (= lt!2676947 e!4631631)))

(declare-fun c!1440599 () Bool)

(assert (=> d!2350971 (= c!1440599 ((_ is Nil!73672) s1!4101))))

(assert (=> d!2350971 (= (++!17993 s1!4101 s2!3721) lt!2676947)))

(declare-fun b!7831706 () Bool)

(assert (=> b!7831706 (= e!4631631 (Cons!73672 (h!80120 s1!4101) (++!17993 (t!388531 s1!4101) s2!3721)))))

(declare-fun b!7831705 () Bool)

(assert (=> b!7831705 (= e!4631631 s2!3721)))

(assert (= (and d!2350971 c!1440599) b!7831705))

(assert (= (and d!2350971 (not c!1440599)) b!7831706))

(assert (= (and d!2350971 res!3115144) b!7831707))

(assert (= (and b!7831707 res!3115145) b!7831708))

(declare-fun m!8248790 () Bool)

(assert (=> b!7831707 m!8248790))

(declare-fun m!8248792 () Bool)

(assert (=> b!7831707 m!8248792))

(declare-fun m!8248794 () Bool)

(assert (=> b!7831707 m!8248794))

(declare-fun m!8248796 () Bool)

(assert (=> d!2350971 m!8248796))

(declare-fun m!8248798 () Bool)

(assert (=> d!2350971 m!8248798))

(declare-fun m!8248800 () Bool)

(assert (=> d!2350971 m!8248800))

(declare-fun m!8248802 () Bool)

(assert (=> b!7831706 m!8248802))

(assert (=> b!7831539 d!2350971))

(declare-fun b!7831731 () Bool)

(declare-fun e!4631645 () Bool)

(declare-fun e!4631646 () Bool)

(assert (=> b!7831731 (= e!4631645 e!4631646)))

(declare-fun res!3115164 () Bool)

(assert (=> b!7831731 (=> (not res!3115164) (not e!4631646))))

(assert (=> b!7831731 (= res!3115164 (not ((_ is Nil!73672) s1!4101)))))

(declare-fun d!2350973 () Bool)

(declare-fun e!4631647 () Bool)

(assert (=> d!2350973 e!4631647))

(declare-fun res!3115165 () Bool)

(assert (=> d!2350973 (=> res!3115165 e!4631647)))

(declare-fun lt!2676951 () Bool)

(assert (=> d!2350973 (= res!3115165 (not lt!2676951))))

(assert (=> d!2350973 (= lt!2676951 e!4631645)))

(declare-fun res!3115162 () Bool)

(assert (=> d!2350973 (=> res!3115162 e!4631645)))

(assert (=> d!2350973 (= res!3115162 ((_ is Nil!73672) s1Rec!453))))

(assert (=> d!2350973 (= (isPrefix!6309 s1Rec!453 s1!4101) lt!2676951)))

(declare-fun b!7831734 () Bool)

(assert (=> b!7831734 (= e!4631647 (>= (size!42759 s1!4101) (size!42759 s1Rec!453)))))

(declare-fun b!7831732 () Bool)

(declare-fun res!3115163 () Bool)

(assert (=> b!7831732 (=> (not res!3115163) (not e!4631646))))

(assert (=> b!7831732 (= res!3115163 (= (head!15989 s1Rec!453) (head!15989 s1!4101)))))

(declare-fun b!7831733 () Bool)

(assert (=> b!7831733 (= e!4631646 (isPrefix!6309 (tail!15530 s1Rec!453) (tail!15530 s1!4101)))))

(assert (= (and d!2350973 (not res!3115162)) b!7831731))

(assert (= (and b!7831731 res!3115164) b!7831732))

(assert (= (and b!7831732 res!3115163) b!7831733))

(assert (= (and d!2350973 (not res!3115165)) b!7831734))

(assert (=> b!7831734 m!8248792))

(assert (=> b!7831734 m!8248780))

(declare-fun m!8248818 () Bool)

(assert (=> b!7831732 m!8248818))

(assert (=> b!7831732 m!8248762))

(declare-fun m!8248820 () Bool)

(assert (=> b!7831733 m!8248820))

(assert (=> b!7831733 m!8248758))

(assert (=> b!7831733 m!8248820))

(assert (=> b!7831733 m!8248758))

(declare-fun m!8248822 () Bool)

(assert (=> b!7831733 m!8248822))

(assert (=> b!7831533 d!2350973))

(declare-fun b!7831755 () Bool)

(declare-fun e!4631656 () Bool)

(declare-fun tp!2315898 () Bool)

(assert (=> b!7831755 (= e!4631656 tp!2315898)))

(declare-fun b!7831753 () Bool)

(assert (=> b!7831753 (= e!4631656 tp_is_empty!52273)))

(assert (=> b!7831538 (= tp!2315881 e!4631656)))

(declare-fun b!7831756 () Bool)

(declare-fun tp!2315895 () Bool)

(declare-fun tp!2315896 () Bool)

(assert (=> b!7831756 (= e!4631656 (and tp!2315895 tp!2315896))))

(declare-fun b!7831754 () Bool)

(declare-fun tp!2315894 () Bool)

(declare-fun tp!2315897 () Bool)

(assert (=> b!7831754 (= e!4631656 (and tp!2315894 tp!2315897))))

(assert (= (and b!7831538 ((_ is ElementMatch!20959) (reg!21288 r2!6199))) b!7831753))

(assert (= (and b!7831538 ((_ is Concat!29804) (reg!21288 r2!6199))) b!7831754))

(assert (= (and b!7831538 ((_ is Star!20959) (reg!21288 r2!6199))) b!7831755))

(assert (= (and b!7831538 ((_ is Union!20959) (reg!21288 r2!6199))) b!7831756))

(declare-fun b!7831765 () Bool)

(declare-fun e!4631662 () Bool)

(declare-fun tp!2315901 () Bool)

(assert (=> b!7831765 (= e!4631662 (and tp_is_empty!52273 tp!2315901))))

(assert (=> b!7831522 (= tp!2315870 e!4631662)))

(assert (= (and b!7831522 ((_ is Cons!73672) (t!388531 s2Rec!453))) b!7831765))

(declare-fun b!7831780 () Bool)

(declare-fun e!4631670 () Bool)

(declare-fun tp!2315906 () Bool)

(assert (=> b!7831780 (= e!4631670 tp!2315906)))

(declare-fun b!7831776 () Bool)

(assert (=> b!7831776 (= e!4631670 tp_is_empty!52273)))

(assert (=> b!7831521 (= tp!2315874 e!4631670)))

(declare-fun b!7831782 () Bool)

(declare-fun tp!2315903 () Bool)

(declare-fun tp!2315904 () Bool)

(assert (=> b!7831782 (= e!4631670 (and tp!2315903 tp!2315904))))

(declare-fun b!7831778 () Bool)

(declare-fun tp!2315902 () Bool)

(declare-fun tp!2315905 () Bool)

(assert (=> b!7831778 (= e!4631670 (and tp!2315902 tp!2315905))))

(assert (= (and b!7831521 ((_ is ElementMatch!20959) (regOne!42430 r1!6261))) b!7831776))

(assert (= (and b!7831521 ((_ is Concat!29804) (regOne!42430 r1!6261))) b!7831778))

(assert (= (and b!7831521 ((_ is Star!20959) (regOne!42430 r1!6261))) b!7831780))

(assert (= (and b!7831521 ((_ is Union!20959) (regOne!42430 r1!6261))) b!7831782))

(declare-fun b!7831786 () Bool)

(declare-fun e!4631671 () Bool)

(declare-fun tp!2315911 () Bool)

(assert (=> b!7831786 (= e!4631671 tp!2315911)))

(declare-fun b!7831784 () Bool)

(assert (=> b!7831784 (= e!4631671 tp_is_empty!52273)))

(assert (=> b!7831521 (= tp!2315873 e!4631671)))

(declare-fun b!7831787 () Bool)

(declare-fun tp!2315908 () Bool)

(declare-fun tp!2315909 () Bool)

(assert (=> b!7831787 (= e!4631671 (and tp!2315908 tp!2315909))))

(declare-fun b!7831785 () Bool)

(declare-fun tp!2315907 () Bool)

(declare-fun tp!2315910 () Bool)

(assert (=> b!7831785 (= e!4631671 (and tp!2315907 tp!2315910))))

(assert (= (and b!7831521 ((_ is ElementMatch!20959) (regTwo!42430 r1!6261))) b!7831784))

(assert (= (and b!7831521 ((_ is Concat!29804) (regTwo!42430 r1!6261))) b!7831785))

(assert (= (and b!7831521 ((_ is Star!20959) (regTwo!42430 r1!6261))) b!7831786))

(assert (= (and b!7831521 ((_ is Union!20959) (regTwo!42430 r1!6261))) b!7831787))

(declare-fun b!7831790 () Bool)

(declare-fun e!4631672 () Bool)

(declare-fun tp!2315916 () Bool)

(assert (=> b!7831790 (= e!4631672 tp!2315916)))

(declare-fun b!7831788 () Bool)

(assert (=> b!7831788 (= e!4631672 tp_is_empty!52273)))

(assert (=> b!7831526 (= tp!2315882 e!4631672)))

(declare-fun b!7831791 () Bool)

(declare-fun tp!2315913 () Bool)

(declare-fun tp!2315914 () Bool)

(assert (=> b!7831791 (= e!4631672 (and tp!2315913 tp!2315914))))

(declare-fun b!7831789 () Bool)

(declare-fun tp!2315912 () Bool)

(declare-fun tp!2315915 () Bool)

(assert (=> b!7831789 (= e!4631672 (and tp!2315912 tp!2315915))))

(assert (= (and b!7831526 ((_ is ElementMatch!20959) (reg!21288 r1!6261))) b!7831788))

(assert (= (and b!7831526 ((_ is Concat!29804) (reg!21288 r1!6261))) b!7831789))

(assert (= (and b!7831526 ((_ is Star!20959) (reg!21288 r1!6261))) b!7831790))

(assert (= (and b!7831526 ((_ is Union!20959) (reg!21288 r1!6261))) b!7831791))

(declare-fun b!7831792 () Bool)

(declare-fun e!4631673 () Bool)

(declare-fun tp!2315917 () Bool)

(assert (=> b!7831792 (= e!4631673 (and tp_is_empty!52273 tp!2315917))))

(assert (=> b!7831525 (= tp!2315883 e!4631673)))

(assert (= (and b!7831525 ((_ is Cons!73672) (t!388531 s2!3721))) b!7831792))

(declare-fun b!7831795 () Bool)

(declare-fun e!4631674 () Bool)

(declare-fun tp!2315922 () Bool)

(assert (=> b!7831795 (= e!4631674 tp!2315922)))

(declare-fun b!7831793 () Bool)

(assert (=> b!7831793 (= e!4631674 tp_is_empty!52273)))

(assert (=> b!7831536 (= tp!2315878 e!4631674)))

(declare-fun b!7831796 () Bool)

(declare-fun tp!2315919 () Bool)

(declare-fun tp!2315920 () Bool)

(assert (=> b!7831796 (= e!4631674 (and tp!2315919 tp!2315920))))

(declare-fun b!7831794 () Bool)

(declare-fun tp!2315918 () Bool)

(declare-fun tp!2315921 () Bool)

(assert (=> b!7831794 (= e!4631674 (and tp!2315918 tp!2315921))))

(assert (= (and b!7831536 ((_ is ElementMatch!20959) (regOne!42431 r1!6261))) b!7831793))

(assert (= (and b!7831536 ((_ is Concat!29804) (regOne!42431 r1!6261))) b!7831794))

(assert (= (and b!7831536 ((_ is Star!20959) (regOne!42431 r1!6261))) b!7831795))

(assert (= (and b!7831536 ((_ is Union!20959) (regOne!42431 r1!6261))) b!7831796))

(declare-fun b!7831799 () Bool)

(declare-fun e!4631675 () Bool)

(declare-fun tp!2315927 () Bool)

(assert (=> b!7831799 (= e!4631675 tp!2315927)))

(declare-fun b!7831797 () Bool)

(assert (=> b!7831797 (= e!4631675 tp_is_empty!52273)))

(assert (=> b!7831536 (= tp!2315876 e!4631675)))

(declare-fun b!7831800 () Bool)

(declare-fun tp!2315924 () Bool)

(declare-fun tp!2315925 () Bool)

(assert (=> b!7831800 (= e!4631675 (and tp!2315924 tp!2315925))))

(declare-fun b!7831798 () Bool)

(declare-fun tp!2315923 () Bool)

(declare-fun tp!2315926 () Bool)

(assert (=> b!7831798 (= e!4631675 (and tp!2315923 tp!2315926))))

(assert (= (and b!7831536 ((_ is ElementMatch!20959) (regTwo!42431 r1!6261))) b!7831797))

(assert (= (and b!7831536 ((_ is Concat!29804) (regTwo!42431 r1!6261))) b!7831798))

(assert (= (and b!7831536 ((_ is Star!20959) (regTwo!42431 r1!6261))) b!7831799))

(assert (= (and b!7831536 ((_ is Union!20959) (regTwo!42431 r1!6261))) b!7831800))

(declare-fun b!7831803 () Bool)

(declare-fun e!4631676 () Bool)

(declare-fun tp!2315932 () Bool)

(assert (=> b!7831803 (= e!4631676 tp!2315932)))

(declare-fun b!7831801 () Bool)

(assert (=> b!7831801 (= e!4631676 tp_is_empty!52273)))

(assert (=> b!7831520 (= tp!2315877 e!4631676)))

(declare-fun b!7831804 () Bool)

(declare-fun tp!2315929 () Bool)

(declare-fun tp!2315930 () Bool)

(assert (=> b!7831804 (= e!4631676 (and tp!2315929 tp!2315930))))

(declare-fun b!7831802 () Bool)

(declare-fun tp!2315928 () Bool)

(declare-fun tp!2315931 () Bool)

(assert (=> b!7831802 (= e!4631676 (and tp!2315928 tp!2315931))))

(assert (= (and b!7831520 ((_ is ElementMatch!20959) (regOne!42431 r2!6199))) b!7831801))

(assert (= (and b!7831520 ((_ is Concat!29804) (regOne!42431 r2!6199))) b!7831802))

(assert (= (and b!7831520 ((_ is Star!20959) (regOne!42431 r2!6199))) b!7831803))

(assert (= (and b!7831520 ((_ is Union!20959) (regOne!42431 r2!6199))) b!7831804))

(declare-fun b!7831807 () Bool)

(declare-fun e!4631677 () Bool)

(declare-fun tp!2315937 () Bool)

(assert (=> b!7831807 (= e!4631677 tp!2315937)))

(declare-fun b!7831805 () Bool)

(assert (=> b!7831805 (= e!4631677 tp_is_empty!52273)))

(assert (=> b!7831520 (= tp!2315880 e!4631677)))

(declare-fun b!7831808 () Bool)

(declare-fun tp!2315934 () Bool)

(declare-fun tp!2315935 () Bool)

(assert (=> b!7831808 (= e!4631677 (and tp!2315934 tp!2315935))))

(declare-fun b!7831806 () Bool)

(declare-fun tp!2315933 () Bool)

(declare-fun tp!2315936 () Bool)

(assert (=> b!7831806 (= e!4631677 (and tp!2315933 tp!2315936))))

(assert (= (and b!7831520 ((_ is ElementMatch!20959) (regTwo!42431 r2!6199))) b!7831805))

(assert (= (and b!7831520 ((_ is Concat!29804) (regTwo!42431 r2!6199))) b!7831806))

(assert (= (and b!7831520 ((_ is Star!20959) (regTwo!42431 r2!6199))) b!7831807))

(assert (= (and b!7831520 ((_ is Union!20959) (regTwo!42431 r2!6199))) b!7831808))

(declare-fun b!7831811 () Bool)

(declare-fun e!4631678 () Bool)

(declare-fun tp!2315942 () Bool)

(assert (=> b!7831811 (= e!4631678 tp!2315942)))

(declare-fun b!7831809 () Bool)

(assert (=> b!7831809 (= e!4631678 tp_is_empty!52273)))

(assert (=> b!7831524 (= tp!2315869 e!4631678)))

(declare-fun b!7831812 () Bool)

(declare-fun tp!2315939 () Bool)

(declare-fun tp!2315940 () Bool)

(assert (=> b!7831812 (= e!4631678 (and tp!2315939 tp!2315940))))

(declare-fun b!7831810 () Bool)

(declare-fun tp!2315938 () Bool)

(declare-fun tp!2315941 () Bool)

(assert (=> b!7831810 (= e!4631678 (and tp!2315938 tp!2315941))))

(assert (= (and b!7831524 ((_ is ElementMatch!20959) (regOne!42430 r2!6199))) b!7831809))

(assert (= (and b!7831524 ((_ is Concat!29804) (regOne!42430 r2!6199))) b!7831810))

(assert (= (and b!7831524 ((_ is Star!20959) (regOne!42430 r2!6199))) b!7831811))

(assert (= (and b!7831524 ((_ is Union!20959) (regOne!42430 r2!6199))) b!7831812))

(declare-fun b!7831815 () Bool)

(declare-fun e!4631679 () Bool)

(declare-fun tp!2315947 () Bool)

(assert (=> b!7831815 (= e!4631679 tp!2315947)))

(declare-fun b!7831813 () Bool)

(assert (=> b!7831813 (= e!4631679 tp_is_empty!52273)))

(assert (=> b!7831524 (= tp!2315875 e!4631679)))

(declare-fun b!7831816 () Bool)

(declare-fun tp!2315944 () Bool)

(declare-fun tp!2315945 () Bool)

(assert (=> b!7831816 (= e!4631679 (and tp!2315944 tp!2315945))))

(declare-fun b!7831814 () Bool)

(declare-fun tp!2315943 () Bool)

(declare-fun tp!2315946 () Bool)

(assert (=> b!7831814 (= e!4631679 (and tp!2315943 tp!2315946))))

(assert (= (and b!7831524 ((_ is ElementMatch!20959) (regTwo!42430 r2!6199))) b!7831813))

(assert (= (and b!7831524 ((_ is Concat!29804) (regTwo!42430 r2!6199))) b!7831814))

(assert (= (and b!7831524 ((_ is Star!20959) (regTwo!42430 r2!6199))) b!7831815))

(assert (= (and b!7831524 ((_ is Union!20959) (regTwo!42430 r2!6199))) b!7831816))

(declare-fun b!7831817 () Bool)

(declare-fun e!4631680 () Bool)

(declare-fun tp!2315948 () Bool)

(assert (=> b!7831817 (= e!4631680 (and tp_is_empty!52273 tp!2315948))))

(assert (=> b!7831523 (= tp!2315871 e!4631680)))

(assert (= (and b!7831523 ((_ is Cons!73672) (t!388531 s1!4101))) b!7831817))

(declare-fun b!7831818 () Bool)

(declare-fun e!4631681 () Bool)

(declare-fun tp!2315949 () Bool)

(assert (=> b!7831818 (= e!4631681 (and tp_is_empty!52273 tp!2315949))))

(assert (=> b!7831534 (= tp!2315879 e!4631681)))

(assert (= (and b!7831534 ((_ is Cons!73672) (t!388531 s1Rec!453))) b!7831818))

(declare-fun b!7831819 () Bool)

(declare-fun e!4631682 () Bool)

(declare-fun tp!2315950 () Bool)

(assert (=> b!7831819 (= e!4631682 (and tp_is_empty!52273 tp!2315950))))

(assert (=> b!7831528 (= tp!2315872 e!4631682)))

(assert (= (and b!7831528 ((_ is Cons!73672) (t!388531 s!14274))) b!7831819))

(check-sat (not b!7831800) (not b!7831804) (not d!2350971) (not b!7831808) (not b!7831798) (not b!7831802) (not b!7831733) (not bm!726282) (not b!7831645) (not b!7831794) (not b!7831754) (not b!7831786) (not b!7831732) (not b!7831756) (not b!7831785) (not bm!726264) (not b!7831579) (not b!7831815) (not b!7831819) (not b!7831792) (not b!7831656) (not b!7831627) (not b!7831790) (not b!7831653) (not bm!726284) (not b!7831650) (not bm!726286) (not b!7831789) (not b!7831654) (not d!2350969) tp_is_empty!52273 (not b!7831703) (not b!7831791) (not b!7831778) (not b!7831799) (not b!7831646) (not b!7831818) (not d!2350955) (not b!7831572) (not b!7831787) (not b!7831571) (not b!7831780) (not b!7831795) (not bm!726280) (not b!7831810) (not b!7831702) (not b!7831814) (not b!7831644) (not b!7831782) (not bm!726283) (not d!2350965) (not b!7831580) (not b!7831816) (not b!7831806) (not b!7831803) (not b!7831576) (not b!7831817) (not b!7831706) (not b!7831765) (not b!7831641) (not b!7831796) (not b!7831570) (not b!7831807) (not b!7831707) (not b!7831812) (not b!7831755) (not b!7831811) (not b!7831734))
(check-sat)
