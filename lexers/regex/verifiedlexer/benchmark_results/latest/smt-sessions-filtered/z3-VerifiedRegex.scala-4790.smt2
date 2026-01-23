; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246640 () Bool)

(assert start!246640)

(declare-fun b!2535670 () Bool)

(declare-fun res!1069610 () Bool)

(declare-fun e!1603991 () Bool)

(assert (=> b!2535670 (=> (not res!1069610) (not e!1603991))))

(declare-datatypes ((C!15268 0))(
  ( (C!15269 (val!9286 Int)) )
))
(declare-datatypes ((Regex!7555 0))(
  ( (ElementMatch!7555 (c!405335 C!15268)) (Concat!12251 (regOne!15622 Regex!7555) (regTwo!15622 Regex!7555)) (EmptyExpr!7555) (Star!7555 (reg!7884 Regex!7555)) (EmptyLang!7555) (Union!7555 (regOne!15623 Regex!7555) (regTwo!15623 Regex!7555)) )
))
(declare-fun r!27340 () Regex!7555)

(declare-fun validRegex!3181 (Regex!7555) Bool)

(assert (=> b!2535670 (= res!1069610 (validRegex!3181 (regTwo!15623 r!27340)))))

(declare-fun b!2535671 () Bool)

(declare-fun res!1069606 () Bool)

(assert (=> b!2535671 (=> (not res!1069606) (not e!1603991))))

(declare-datatypes ((List!29620 0))(
  ( (Nil!29520) (Cons!29520 (h!34940 C!15268) (t!211319 List!29620)) )
))
(declare-fun tl!4068 () List!29620)

(declare-fun c!14016 () C!15268)

(declare-fun nullable!2472 (Regex!7555) Bool)

(declare-fun derivative!250 (Regex!7555 List!29620) Regex!7555)

(declare-fun derivativeStep!2124 (Regex!7555 C!15268) Regex!7555)

(assert (=> b!2535671 (= res!1069606 (not (nullable!2472 (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068))))))

(declare-fun b!2535672 () Bool)

(declare-fun e!1603992 () Bool)

(declare-fun tp!810127 () Bool)

(declare-fun tp!810128 () Bool)

(assert (=> b!2535672 (= e!1603992 (and tp!810127 tp!810128))))

(declare-fun res!1069609 () Bool)

(assert (=> start!246640 (=> (not res!1069609) (not e!1603991))))

(assert (=> start!246640 (= res!1069609 (validRegex!3181 r!27340))))

(assert (=> start!246640 e!1603991))

(assert (=> start!246640 e!1603992))

(declare-fun tp_is_empty!12965 () Bool)

(assert (=> start!246640 tp_is_empty!12965))

(declare-fun e!1603990 () Bool)

(assert (=> start!246640 e!1603990))

(declare-fun b!2535673 () Bool)

(declare-fun res!1069607 () Bool)

(assert (=> b!2535673 (=> (not res!1069607) (not e!1603991))))

(assert (=> b!2535673 (= res!1069607 (nullable!2472 (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)))))

(declare-fun b!2535674 () Bool)

(declare-fun res!1069608 () Bool)

(assert (=> b!2535674 (=> (not res!1069608) (not e!1603991))))

(get-info :version)

(assert (=> b!2535674 (= res!1069608 (and (not ((_ is EmptyExpr!7555) r!27340)) (not ((_ is EmptyLang!7555) r!27340)) (not ((_ is ElementMatch!7555) r!27340)) ((_ is Union!7555) r!27340)))))

(declare-fun b!2535675 () Bool)

(declare-fun res!1069605 () Bool)

(assert (=> b!2535675 (=> (not res!1069605) (not e!1603991))))

(assert (=> b!2535675 (= res!1069605 (nullable!2472 (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)))))

(declare-fun b!2535676 () Bool)

(declare-fun tp!810126 () Bool)

(assert (=> b!2535676 (= e!1603992 tp!810126)))

(declare-fun b!2535677 () Bool)

(assert (=> b!2535677 (= e!1603992 tp_is_empty!12965)))

(declare-fun b!2535678 () Bool)

(declare-fun tp!810130 () Bool)

(assert (=> b!2535678 (= e!1603990 (and tp_is_empty!12965 tp!810130))))

(declare-fun b!2535679 () Bool)

(declare-fun tp!810129 () Bool)

(declare-fun tp!810125 () Bool)

(assert (=> b!2535679 (= e!1603992 (and tp!810129 tp!810125))))

(declare-fun b!2535680 () Bool)

(declare-fun RegexPrimitiveSize!114 (Regex!7555) Int)

(assert (=> b!2535680 (= e!1603991 (>= (RegexPrimitiveSize!114 (regTwo!15623 r!27340)) (RegexPrimitiveSize!114 r!27340)))))

(assert (= (and start!246640 res!1069609) b!2535673))

(assert (= (and b!2535673 res!1069607) b!2535674))

(assert (= (and b!2535674 res!1069608) b!2535671))

(assert (= (and b!2535671 res!1069606) b!2535675))

(assert (= (and b!2535675 res!1069605) b!2535670))

(assert (= (and b!2535670 res!1069610) b!2535680))

(assert (= (and start!246640 ((_ is ElementMatch!7555) r!27340)) b!2535677))

(assert (= (and start!246640 ((_ is Concat!12251) r!27340)) b!2535672))

(assert (= (and start!246640 ((_ is Star!7555) r!27340)) b!2535676))

(assert (= (and start!246640 ((_ is Union!7555) r!27340)) b!2535679))

(assert (= (and start!246640 ((_ is Cons!29520) tl!4068)) b!2535678))

(declare-fun m!2884411 () Bool)

(assert (=> b!2535670 m!2884411))

(declare-fun m!2884413 () Bool)

(assert (=> b!2535680 m!2884413))

(declare-fun m!2884415 () Bool)

(assert (=> b!2535680 m!2884415))

(declare-fun m!2884417 () Bool)

(assert (=> b!2535673 m!2884417))

(assert (=> b!2535673 m!2884417))

(declare-fun m!2884419 () Bool)

(assert (=> b!2535673 m!2884419))

(assert (=> b!2535673 m!2884419))

(declare-fun m!2884421 () Bool)

(assert (=> b!2535673 m!2884421))

(declare-fun m!2884423 () Bool)

(assert (=> start!246640 m!2884423))

(declare-fun m!2884425 () Bool)

(assert (=> b!2535675 m!2884425))

(assert (=> b!2535675 m!2884425))

(declare-fun m!2884427 () Bool)

(assert (=> b!2535675 m!2884427))

(assert (=> b!2535675 m!2884427))

(declare-fun m!2884429 () Bool)

(assert (=> b!2535675 m!2884429))

(declare-fun m!2884431 () Bool)

(assert (=> b!2535671 m!2884431))

(assert (=> b!2535671 m!2884431))

(declare-fun m!2884433 () Bool)

(assert (=> b!2535671 m!2884433))

(assert (=> b!2535671 m!2884433))

(declare-fun m!2884435 () Bool)

(assert (=> b!2535671 m!2884435))

(check-sat (not start!246640) (not b!2535680) (not b!2535679) (not b!2535676) tp_is_empty!12965 (not b!2535673) (not b!2535675) (not b!2535671) (not b!2535672) (not b!2535678) (not b!2535670))
(check-sat)
(get-model)

(declare-fun d!720551 () Bool)

(declare-fun nullableFct!704 (Regex!7555) Bool)

(assert (=> d!720551 (= (nullable!2472 (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)) (nullableFct!704 (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469286 () Bool)

(assert (= bs!469286 d!720551))

(assert (=> bs!469286 m!2884427))

(declare-fun m!2884437 () Bool)

(assert (=> bs!469286 m!2884437))

(assert (=> b!2535675 d!720551))

(declare-fun d!720555 () Bool)

(declare-fun lt!901509 () Regex!7555)

(assert (=> d!720555 (validRegex!3181 lt!901509)))

(declare-fun e!1603997 () Regex!7555)

(assert (=> d!720555 (= lt!901509 e!1603997)))

(declare-fun c!405340 () Bool)

(assert (=> d!720555 (= c!405340 ((_ is Cons!29520) tl!4068))))

(assert (=> d!720555 (validRegex!3181 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))))

(assert (=> d!720555 (= (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068) lt!901509)))

(declare-fun b!2535689 () Bool)

(assert (=> b!2535689 (= e!1603997 (derivative!250 (derivativeStep!2124 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) (h!34940 tl!4068)) (t!211319 tl!4068)))))

(declare-fun b!2535690 () Bool)

(assert (=> b!2535690 (= e!1603997 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))))

(assert (= (and d!720555 c!405340) b!2535689))

(assert (= (and d!720555 (not c!405340)) b!2535690))

(declare-fun m!2884441 () Bool)

(assert (=> d!720555 m!2884441))

(assert (=> d!720555 m!2884425))

(declare-fun m!2884443 () Bool)

(assert (=> d!720555 m!2884443))

(assert (=> b!2535689 m!2884425))

(declare-fun m!2884445 () Bool)

(assert (=> b!2535689 m!2884445))

(assert (=> b!2535689 m!2884445))

(declare-fun m!2884447 () Bool)

(assert (=> b!2535689 m!2884447))

(assert (=> b!2535675 d!720555))

(declare-fun b!2535733 () Bool)

(declare-fun e!1604022 () Regex!7555)

(declare-fun call!159533 () Regex!7555)

(assert (=> b!2535733 (= e!1604022 (Concat!12251 call!159533 (regTwo!15623 r!27340)))))

(declare-fun d!720559 () Bool)

(declare-fun lt!901515 () Regex!7555)

(assert (=> d!720559 (validRegex!3181 lt!901515)))

(declare-fun e!1604019 () Regex!7555)

(assert (=> d!720559 (= lt!901515 e!1604019)))

(declare-fun c!405364 () Bool)

(assert (=> d!720559 (= c!405364 (or ((_ is EmptyExpr!7555) (regTwo!15623 r!27340)) ((_ is EmptyLang!7555) (regTwo!15623 r!27340))))))

(assert (=> d!720559 (validRegex!3181 (regTwo!15623 r!27340))))

(assert (=> d!720559 (= (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) lt!901515)))

(declare-fun b!2535734 () Bool)

(declare-fun e!1604023 () Regex!7555)

(assert (=> b!2535734 (= e!1604023 e!1604022)))

(declare-fun c!405366 () Bool)

(assert (=> b!2535734 (= c!405366 ((_ is Star!7555) (regTwo!15623 r!27340)))))

(declare-fun call!159532 () Regex!7555)

(declare-fun c!405365 () Bool)

(declare-fun bm!159525 () Bool)

(assert (=> bm!159525 (= call!159532 (derivativeStep!2124 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))) c!14016))))

(declare-fun bm!159526 () Bool)

(assert (=> bm!159526 (= call!159533 call!159532)))

(declare-fun b!2535735 () Bool)

(declare-fun e!1604020 () Regex!7555)

(assert (=> b!2535735 (= e!1604019 e!1604020)))

(declare-fun c!405363 () Bool)

(assert (=> b!2535735 (= c!405363 ((_ is ElementMatch!7555) (regTwo!15623 r!27340)))))

(declare-fun b!2535736 () Bool)

(assert (=> b!2535736 (= e!1604020 (ite (= c!14016 (c!405335 (regTwo!15623 r!27340))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2535737 () Bool)

(declare-fun call!159530 () Regex!7555)

(assert (=> b!2535737 (= e!1604023 (Union!7555 call!159532 call!159530))))

(declare-fun b!2535738 () Bool)

(declare-fun e!1604021 () Regex!7555)

(declare-fun call!159531 () Regex!7555)

(assert (=> b!2535738 (= e!1604021 (Union!7555 (Concat!12251 call!159531 (regTwo!15622 (regTwo!15623 r!27340))) EmptyLang!7555))))

(declare-fun bm!159527 () Bool)

(assert (=> bm!159527 (= call!159530 (derivativeStep!2124 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))) c!14016))))

(declare-fun b!2535739 () Bool)

(assert (=> b!2535739 (= e!1604021 (Union!7555 (Concat!12251 call!159531 (regTwo!15622 (regTwo!15623 r!27340))) call!159530))))

(declare-fun bm!159528 () Bool)

(assert (=> bm!159528 (= call!159531 call!159533)))

(declare-fun b!2535740 () Bool)

(assert (=> b!2535740 (= c!405365 ((_ is Union!7555) (regTwo!15623 r!27340)))))

(assert (=> b!2535740 (= e!1604020 e!1604023)))

(declare-fun b!2535741 () Bool)

(declare-fun c!405362 () Bool)

(assert (=> b!2535741 (= c!405362 (nullable!2472 (regOne!15622 (regTwo!15623 r!27340))))))

(assert (=> b!2535741 (= e!1604022 e!1604021)))

(declare-fun b!2535742 () Bool)

(assert (=> b!2535742 (= e!1604019 EmptyLang!7555)))

(assert (= (and d!720559 c!405364) b!2535742))

(assert (= (and d!720559 (not c!405364)) b!2535735))

(assert (= (and b!2535735 c!405363) b!2535736))

(assert (= (and b!2535735 (not c!405363)) b!2535740))

(assert (= (and b!2535740 c!405365) b!2535737))

(assert (= (and b!2535740 (not c!405365)) b!2535734))

(assert (= (and b!2535734 c!405366) b!2535733))

(assert (= (and b!2535734 (not c!405366)) b!2535741))

(assert (= (and b!2535741 c!405362) b!2535739))

(assert (= (and b!2535741 (not c!405362)) b!2535738))

(assert (= (or b!2535739 b!2535738) bm!159528))

(assert (= (or b!2535733 bm!159528) bm!159526))

(assert (= (or b!2535737 b!2535739) bm!159527))

(assert (= (or b!2535737 bm!159526) bm!159525))

(declare-fun m!2884457 () Bool)

(assert (=> d!720559 m!2884457))

(assert (=> d!720559 m!2884411))

(declare-fun m!2884459 () Bool)

(assert (=> bm!159525 m!2884459))

(declare-fun m!2884461 () Bool)

(assert (=> bm!159527 m!2884461))

(declare-fun m!2884463 () Bool)

(assert (=> b!2535741 m!2884463))

(assert (=> b!2535675 d!720559))

(declare-fun bm!159547 () Bool)

(declare-fun call!159554 () Bool)

(declare-fun call!159555 () Bool)

(assert (=> bm!159547 (= call!159554 call!159555)))

(declare-fun d!720563 () Bool)

(declare-fun res!1069622 () Bool)

(declare-fun e!1604069 () Bool)

(assert (=> d!720563 (=> res!1069622 e!1604069)))

(assert (=> d!720563 (= res!1069622 ((_ is ElementMatch!7555) r!27340))))

(assert (=> d!720563 (= (validRegex!3181 r!27340) e!1604069)))

(declare-fun b!2535815 () Bool)

(declare-fun e!1604070 () Bool)

(assert (=> b!2535815 (= e!1604070 call!159554)))

(declare-fun b!2535816 () Bool)

(declare-fun e!1604065 () Bool)

(assert (=> b!2535816 (= e!1604065 e!1604070)))

(declare-fun res!1069623 () Bool)

(assert (=> b!2535816 (=> (not res!1069623) (not e!1604070))))

(declare-fun call!159556 () Bool)

(assert (=> b!2535816 (= res!1069623 call!159556)))

(declare-fun b!2535817 () Bool)

(declare-fun e!1604071 () Bool)

(assert (=> b!2535817 (= e!1604071 call!159555)))

(declare-fun b!2535818 () Bool)

(declare-fun res!1069621 () Bool)

(assert (=> b!2535818 (=> res!1069621 e!1604065)))

(assert (=> b!2535818 (= res!1069621 (not ((_ is Concat!12251) r!27340)))))

(declare-fun e!1604067 () Bool)

(assert (=> b!2535818 (= e!1604067 e!1604065)))

(declare-fun b!2535819 () Bool)

(declare-fun e!1604066 () Bool)

(assert (=> b!2535819 (= e!1604066 e!1604067)))

(declare-fun c!405399 () Bool)

(assert (=> b!2535819 (= c!405399 ((_ is Union!7555) r!27340))))

(declare-fun b!2535820 () Bool)

(declare-fun res!1069625 () Bool)

(declare-fun e!1604068 () Bool)

(assert (=> b!2535820 (=> (not res!1069625) (not e!1604068))))

(assert (=> b!2535820 (= res!1069625 call!159554)))

(assert (=> b!2535820 (= e!1604067 e!1604068)))

(declare-fun b!2535821 () Bool)

(assert (=> b!2535821 (= e!1604069 e!1604066)))

(declare-fun c!405398 () Bool)

(assert (=> b!2535821 (= c!405398 ((_ is Star!7555) r!27340))))

(declare-fun b!2535822 () Bool)

(assert (=> b!2535822 (= e!1604068 call!159556)))

(declare-fun bm!159548 () Bool)

(assert (=> bm!159548 (= call!159556 (validRegex!3181 (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))))))

(declare-fun bm!159549 () Bool)

(assert (=> bm!159549 (= call!159555 (validRegex!3181 (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))))))

(declare-fun b!2535823 () Bool)

(assert (=> b!2535823 (= e!1604066 e!1604071)))

(declare-fun res!1069624 () Bool)

(assert (=> b!2535823 (= res!1069624 (not (nullable!2472 (reg!7884 r!27340))))))

(assert (=> b!2535823 (=> (not res!1069624) (not e!1604071))))

(assert (= (and d!720563 (not res!1069622)) b!2535821))

(assert (= (and b!2535821 c!405398) b!2535823))

(assert (= (and b!2535821 (not c!405398)) b!2535819))

(assert (= (and b!2535823 res!1069624) b!2535817))

(assert (= (and b!2535819 c!405399) b!2535820))

(assert (= (and b!2535819 (not c!405399)) b!2535818))

(assert (= (and b!2535820 res!1069625) b!2535822))

(assert (= (and b!2535818 (not res!1069621)) b!2535816))

(assert (= (and b!2535816 res!1069623) b!2535815))

(assert (= (or b!2535820 b!2535815) bm!159547))

(assert (= (or b!2535822 b!2535816) bm!159548))

(assert (= (or b!2535817 bm!159547) bm!159549))

(declare-fun m!2884511 () Bool)

(assert (=> bm!159548 m!2884511))

(declare-fun m!2884513 () Bool)

(assert (=> bm!159549 m!2884513))

(declare-fun m!2884515 () Bool)

(assert (=> b!2535823 m!2884515))

(assert (=> start!246640 d!720563))

(declare-fun b!2535878 () Bool)

(declare-fun e!1604103 () Int)

(assert (=> b!2535878 (= e!1604103 0)))

(declare-fun bm!159568 () Bool)

(declare-fun call!159573 () Int)

(declare-fun c!405424 () Bool)

(assert (=> bm!159568 (= call!159573 (RegexPrimitiveSize!114 (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))))))

(declare-fun d!720579 () Bool)

(declare-fun lt!901527 () Int)

(assert (=> d!720579 (>= lt!901527 0)))

(declare-fun e!1604102 () Int)

(assert (=> d!720579 (= lt!901527 e!1604102)))

(declare-fun c!405425 () Bool)

(assert (=> d!720579 (= c!405425 ((_ is ElementMatch!7555) (regTwo!15623 r!27340)))))

(assert (=> d!720579 (= (RegexPrimitiveSize!114 (regTwo!15623 r!27340)) lt!901527)))

(declare-fun b!2535879 () Bool)

(declare-fun e!1604105 () Int)

(declare-fun e!1604104 () Int)

(assert (=> b!2535879 (= e!1604105 e!1604104)))

(declare-fun c!405427 () Bool)

(assert (=> b!2535879 (= c!405427 ((_ is Star!7555) (regTwo!15623 r!27340)))))

(declare-fun b!2535880 () Bool)

(declare-fun c!405428 () Bool)

(assert (=> b!2535880 (= c!405428 ((_ is EmptyExpr!7555) (regTwo!15623 r!27340)))))

(declare-fun e!1604106 () Int)

(assert (=> b!2535880 (= e!1604106 e!1604105)))

(declare-fun b!2535881 () Bool)

(declare-fun call!159574 () Int)

(assert (=> b!2535881 (= e!1604103 (+ 1 call!159574 call!159573))))

(declare-fun b!2535882 () Bool)

(assert (=> b!2535882 (= e!1604102 e!1604106)))

(assert (=> b!2535882 (= c!405424 ((_ is Concat!12251) (regTwo!15623 r!27340)))))

(declare-fun b!2535883 () Bool)

(assert (=> b!2535883 (= e!1604104 (+ 1 call!159574))))

(declare-fun bm!159569 () Bool)

(declare-fun call!159575 () Int)

(assert (=> bm!159569 (= call!159574 call!159575)))

(declare-fun b!2535884 () Bool)

(declare-fun c!405426 () Bool)

(assert (=> b!2535884 (= c!405426 ((_ is EmptyLang!7555) (regTwo!15623 r!27340)))))

(assert (=> b!2535884 (= e!1604104 e!1604103)))

(declare-fun b!2535885 () Bool)

(assert (=> b!2535885 (= e!1604106 (+ 1 call!159573 call!159575))))

(declare-fun bm!159570 () Bool)

(assert (=> bm!159570 (= call!159575 (RegexPrimitiveSize!114 (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))))))

(declare-fun b!2535886 () Bool)

(assert (=> b!2535886 (= e!1604105 0)))

(declare-fun b!2535887 () Bool)

(assert (=> b!2535887 (= e!1604102 1)))

(assert (= (and d!720579 c!405425) b!2535887))

(assert (= (and d!720579 (not c!405425)) b!2535882))

(assert (= (and b!2535882 c!405424) b!2535885))

(assert (= (and b!2535882 (not c!405424)) b!2535880))

(assert (= (and b!2535880 c!405428) b!2535886))

(assert (= (and b!2535880 (not c!405428)) b!2535879))

(assert (= (and b!2535879 c!405427) b!2535883))

(assert (= (and b!2535879 (not c!405427)) b!2535884))

(assert (= (and b!2535884 c!405426) b!2535878))

(assert (= (and b!2535884 (not c!405426)) b!2535881))

(assert (= (or b!2535883 b!2535881) bm!159569))

(assert (= (or b!2535885 bm!159569) bm!159570))

(assert (= (or b!2535885 b!2535881) bm!159568))

(declare-fun m!2884525 () Bool)

(assert (=> bm!159568 m!2884525))

(declare-fun m!2884527 () Bool)

(assert (=> bm!159570 m!2884527))

(assert (=> b!2535680 d!720579))

(declare-fun b!2535892 () Bool)

(declare-fun e!1604112 () Int)

(assert (=> b!2535892 (= e!1604112 0)))

(declare-fun bm!159575 () Bool)

(declare-fun call!159580 () Int)

(declare-fun c!405429 () Bool)

(assert (=> bm!159575 (= call!159580 (RegexPrimitiveSize!114 (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))))))

(declare-fun d!720585 () Bool)

(declare-fun lt!901528 () Int)

(assert (=> d!720585 (>= lt!901528 0)))

(declare-fun e!1604111 () Int)

(assert (=> d!720585 (= lt!901528 e!1604111)))

(declare-fun c!405430 () Bool)

(assert (=> d!720585 (= c!405430 ((_ is ElementMatch!7555) r!27340))))

(assert (=> d!720585 (= (RegexPrimitiveSize!114 r!27340) lt!901528)))

(declare-fun b!2535893 () Bool)

(declare-fun e!1604114 () Int)

(declare-fun e!1604113 () Int)

(assert (=> b!2535893 (= e!1604114 e!1604113)))

(declare-fun c!405432 () Bool)

(assert (=> b!2535893 (= c!405432 ((_ is Star!7555) r!27340))))

(declare-fun b!2535894 () Bool)

(declare-fun c!405433 () Bool)

(assert (=> b!2535894 (= c!405433 ((_ is EmptyExpr!7555) r!27340))))

(declare-fun e!1604115 () Int)

(assert (=> b!2535894 (= e!1604115 e!1604114)))

(declare-fun b!2535895 () Bool)

(declare-fun call!159581 () Int)

(assert (=> b!2535895 (= e!1604112 (+ 1 call!159581 call!159580))))

(declare-fun b!2535896 () Bool)

(assert (=> b!2535896 (= e!1604111 e!1604115)))

(assert (=> b!2535896 (= c!405429 ((_ is Concat!12251) r!27340))))

(declare-fun b!2535897 () Bool)

(assert (=> b!2535897 (= e!1604113 (+ 1 call!159581))))

(declare-fun bm!159576 () Bool)

(declare-fun call!159582 () Int)

(assert (=> bm!159576 (= call!159581 call!159582)))

(declare-fun b!2535898 () Bool)

(declare-fun c!405431 () Bool)

(assert (=> b!2535898 (= c!405431 ((_ is EmptyLang!7555) r!27340))))

(assert (=> b!2535898 (= e!1604113 e!1604112)))

(declare-fun b!2535899 () Bool)

(assert (=> b!2535899 (= e!1604115 (+ 1 call!159580 call!159582))))

(declare-fun bm!159577 () Bool)

(assert (=> bm!159577 (= call!159582 (RegexPrimitiveSize!114 (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))))))

(declare-fun b!2535900 () Bool)

(assert (=> b!2535900 (= e!1604114 0)))

(declare-fun b!2535901 () Bool)

(assert (=> b!2535901 (= e!1604111 1)))

(assert (= (and d!720585 c!405430) b!2535901))

(assert (= (and d!720585 (not c!405430)) b!2535896))

(assert (= (and b!2535896 c!405429) b!2535899))

(assert (= (and b!2535896 (not c!405429)) b!2535894))

(assert (= (and b!2535894 c!405433) b!2535900))

(assert (= (and b!2535894 (not c!405433)) b!2535893))

(assert (= (and b!2535893 c!405432) b!2535897))

(assert (= (and b!2535893 (not c!405432)) b!2535898))

(assert (= (and b!2535898 c!405431) b!2535892))

(assert (= (and b!2535898 (not c!405431)) b!2535895))

(assert (= (or b!2535897 b!2535895) bm!159576))

(assert (= (or b!2535899 bm!159576) bm!159577))

(assert (= (or b!2535899 b!2535895) bm!159575))

(declare-fun m!2884529 () Bool)

(assert (=> bm!159575 m!2884529))

(declare-fun m!2884531 () Bool)

(assert (=> bm!159577 m!2884531))

(assert (=> b!2535680 d!720585))

(declare-fun bm!159580 () Bool)

(declare-fun call!159585 () Bool)

(declare-fun call!159586 () Bool)

(assert (=> bm!159580 (= call!159585 call!159586)))

(declare-fun d!720587 () Bool)

(declare-fun res!1069637 () Bool)

(declare-fun e!1604120 () Bool)

(assert (=> d!720587 (=> res!1069637 e!1604120)))

(assert (=> d!720587 (= res!1069637 ((_ is ElementMatch!7555) (regTwo!15623 r!27340)))))

(assert (=> d!720587 (= (validRegex!3181 (regTwo!15623 r!27340)) e!1604120)))

(declare-fun b!2535902 () Bool)

(declare-fun e!1604121 () Bool)

(assert (=> b!2535902 (= e!1604121 call!159585)))

(declare-fun b!2535903 () Bool)

(declare-fun e!1604116 () Bool)

(assert (=> b!2535903 (= e!1604116 e!1604121)))

(declare-fun res!1069638 () Bool)

(assert (=> b!2535903 (=> (not res!1069638) (not e!1604121))))

(declare-fun call!159587 () Bool)

(assert (=> b!2535903 (= res!1069638 call!159587)))

(declare-fun b!2535904 () Bool)

(declare-fun e!1604122 () Bool)

(assert (=> b!2535904 (= e!1604122 call!159586)))

(declare-fun b!2535905 () Bool)

(declare-fun res!1069636 () Bool)

(assert (=> b!2535905 (=> res!1069636 e!1604116)))

(assert (=> b!2535905 (= res!1069636 (not ((_ is Concat!12251) (regTwo!15623 r!27340))))))

(declare-fun e!1604118 () Bool)

(assert (=> b!2535905 (= e!1604118 e!1604116)))

(declare-fun b!2535906 () Bool)

(declare-fun e!1604117 () Bool)

(assert (=> b!2535906 (= e!1604117 e!1604118)))

(declare-fun c!405435 () Bool)

(assert (=> b!2535906 (= c!405435 ((_ is Union!7555) (regTwo!15623 r!27340)))))

(declare-fun b!2535907 () Bool)

(declare-fun res!1069640 () Bool)

(declare-fun e!1604119 () Bool)

(assert (=> b!2535907 (=> (not res!1069640) (not e!1604119))))

(assert (=> b!2535907 (= res!1069640 call!159585)))

(assert (=> b!2535907 (= e!1604118 e!1604119)))

(declare-fun b!2535908 () Bool)

(assert (=> b!2535908 (= e!1604120 e!1604117)))

(declare-fun c!405434 () Bool)

(assert (=> b!2535908 (= c!405434 ((_ is Star!7555) (regTwo!15623 r!27340)))))

(declare-fun b!2535909 () Bool)

(assert (=> b!2535909 (= e!1604119 call!159587)))

(declare-fun bm!159581 () Bool)

(assert (=> bm!159581 (= call!159587 (validRegex!3181 (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))

(declare-fun bm!159582 () Bool)

(assert (=> bm!159582 (= call!159586 (validRegex!3181 (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))))

(declare-fun b!2535910 () Bool)

(assert (=> b!2535910 (= e!1604117 e!1604122)))

(declare-fun res!1069639 () Bool)

(assert (=> b!2535910 (= res!1069639 (not (nullable!2472 (reg!7884 (regTwo!15623 r!27340)))))))

(assert (=> b!2535910 (=> (not res!1069639) (not e!1604122))))

(assert (= (and d!720587 (not res!1069637)) b!2535908))

(assert (= (and b!2535908 c!405434) b!2535910))

(assert (= (and b!2535908 (not c!405434)) b!2535906))

(assert (= (and b!2535910 res!1069639) b!2535904))

(assert (= (and b!2535906 c!405435) b!2535907))

(assert (= (and b!2535906 (not c!405435)) b!2535905))

(assert (= (and b!2535907 res!1069640) b!2535909))

(assert (= (and b!2535905 (not res!1069636)) b!2535903))

(assert (= (and b!2535903 res!1069638) b!2535902))

(assert (= (or b!2535907 b!2535902) bm!159580))

(assert (= (or b!2535909 b!2535903) bm!159581))

(assert (= (or b!2535904 bm!159580) bm!159582))

(declare-fun m!2884533 () Bool)

(assert (=> bm!159581 m!2884533))

(declare-fun m!2884535 () Bool)

(assert (=> bm!159582 m!2884535))

(declare-fun m!2884537 () Bool)

(assert (=> b!2535910 m!2884537))

(assert (=> b!2535670 d!720587))

(declare-fun d!720589 () Bool)

(assert (=> d!720589 (= (nullable!2472 (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)) (nullableFct!704 (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469290 () Bool)

(assert (= bs!469290 d!720589))

(assert (=> bs!469290 m!2884433))

(declare-fun m!2884539 () Bool)

(assert (=> bs!469290 m!2884539))

(assert (=> b!2535671 d!720589))

(declare-fun d!720591 () Bool)

(declare-fun lt!901529 () Regex!7555)

(assert (=> d!720591 (validRegex!3181 lt!901529)))

(declare-fun e!1604123 () Regex!7555)

(assert (=> d!720591 (= lt!901529 e!1604123)))

(declare-fun c!405436 () Bool)

(assert (=> d!720591 (= c!405436 ((_ is Cons!29520) tl!4068))))

(assert (=> d!720591 (validRegex!3181 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))))

(assert (=> d!720591 (= (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068) lt!901529)))

(declare-fun b!2535911 () Bool)

(assert (=> b!2535911 (= e!1604123 (derivative!250 (derivativeStep!2124 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) (h!34940 tl!4068)) (t!211319 tl!4068)))))

(declare-fun b!2535912 () Bool)

(assert (=> b!2535912 (= e!1604123 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))))

(assert (= (and d!720591 c!405436) b!2535911))

(assert (= (and d!720591 (not c!405436)) b!2535912))

(declare-fun m!2884541 () Bool)

(assert (=> d!720591 m!2884541))

(assert (=> d!720591 m!2884431))

(declare-fun m!2884543 () Bool)

(assert (=> d!720591 m!2884543))

(assert (=> b!2535911 m!2884431))

(declare-fun m!2884545 () Bool)

(assert (=> b!2535911 m!2884545))

(assert (=> b!2535911 m!2884545))

(declare-fun m!2884547 () Bool)

(assert (=> b!2535911 m!2884547))

(assert (=> b!2535671 d!720591))

(declare-fun b!2535913 () Bool)

(declare-fun e!1604127 () Regex!7555)

(declare-fun call!159591 () Regex!7555)

(assert (=> b!2535913 (= e!1604127 (Concat!12251 call!159591 (regOne!15623 r!27340)))))

(declare-fun d!720593 () Bool)

(declare-fun lt!901530 () Regex!7555)

(assert (=> d!720593 (validRegex!3181 lt!901530)))

(declare-fun e!1604124 () Regex!7555)

(assert (=> d!720593 (= lt!901530 e!1604124)))

(declare-fun c!405439 () Bool)

(assert (=> d!720593 (= c!405439 (or ((_ is EmptyExpr!7555) (regOne!15623 r!27340)) ((_ is EmptyLang!7555) (regOne!15623 r!27340))))))

(assert (=> d!720593 (validRegex!3181 (regOne!15623 r!27340))))

(assert (=> d!720593 (= (derivativeStep!2124 (regOne!15623 r!27340) c!14016) lt!901530)))

(declare-fun b!2535914 () Bool)

(declare-fun e!1604128 () Regex!7555)

(assert (=> b!2535914 (= e!1604128 e!1604127)))

(declare-fun c!405441 () Bool)

(assert (=> b!2535914 (= c!405441 ((_ is Star!7555) (regOne!15623 r!27340)))))

(declare-fun c!405440 () Bool)

(declare-fun call!159590 () Regex!7555)

(declare-fun bm!159583 () Bool)

(assert (=> bm!159583 (= call!159590 (derivativeStep!2124 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))) c!14016))))

(declare-fun bm!159584 () Bool)

(assert (=> bm!159584 (= call!159591 call!159590)))

(declare-fun b!2535915 () Bool)

(declare-fun e!1604125 () Regex!7555)

(assert (=> b!2535915 (= e!1604124 e!1604125)))

(declare-fun c!405438 () Bool)

(assert (=> b!2535915 (= c!405438 ((_ is ElementMatch!7555) (regOne!15623 r!27340)))))

(declare-fun b!2535916 () Bool)

(assert (=> b!2535916 (= e!1604125 (ite (= c!14016 (c!405335 (regOne!15623 r!27340))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2535917 () Bool)

(declare-fun call!159588 () Regex!7555)

(assert (=> b!2535917 (= e!1604128 (Union!7555 call!159590 call!159588))))

(declare-fun b!2535918 () Bool)

(declare-fun e!1604126 () Regex!7555)

(declare-fun call!159589 () Regex!7555)

(assert (=> b!2535918 (= e!1604126 (Union!7555 (Concat!12251 call!159589 (regTwo!15622 (regOne!15623 r!27340))) EmptyLang!7555))))

(declare-fun bm!159585 () Bool)

(assert (=> bm!159585 (= call!159588 (derivativeStep!2124 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))) c!14016))))

(declare-fun b!2535919 () Bool)

(assert (=> b!2535919 (= e!1604126 (Union!7555 (Concat!12251 call!159589 (regTwo!15622 (regOne!15623 r!27340))) call!159588))))

(declare-fun bm!159586 () Bool)

(assert (=> bm!159586 (= call!159589 call!159591)))

(declare-fun b!2535920 () Bool)

(assert (=> b!2535920 (= c!405440 ((_ is Union!7555) (regOne!15623 r!27340)))))

(assert (=> b!2535920 (= e!1604125 e!1604128)))

(declare-fun b!2535921 () Bool)

(declare-fun c!405437 () Bool)

(assert (=> b!2535921 (= c!405437 (nullable!2472 (regOne!15622 (regOne!15623 r!27340))))))

(assert (=> b!2535921 (= e!1604127 e!1604126)))

(declare-fun b!2535922 () Bool)

(assert (=> b!2535922 (= e!1604124 EmptyLang!7555)))

(assert (= (and d!720593 c!405439) b!2535922))

(assert (= (and d!720593 (not c!405439)) b!2535915))

(assert (= (and b!2535915 c!405438) b!2535916))

(assert (= (and b!2535915 (not c!405438)) b!2535920))

(assert (= (and b!2535920 c!405440) b!2535917))

(assert (= (and b!2535920 (not c!405440)) b!2535914))

(assert (= (and b!2535914 c!405441) b!2535913))

(assert (= (and b!2535914 (not c!405441)) b!2535921))

(assert (= (and b!2535921 c!405437) b!2535919))

(assert (= (and b!2535921 (not c!405437)) b!2535918))

(assert (= (or b!2535919 b!2535918) bm!159586))

(assert (= (or b!2535913 bm!159586) bm!159584))

(assert (= (or b!2535917 b!2535919) bm!159585))

(assert (= (or b!2535917 bm!159584) bm!159583))

(declare-fun m!2884549 () Bool)

(assert (=> d!720593 m!2884549))

(declare-fun m!2884551 () Bool)

(assert (=> d!720593 m!2884551))

(declare-fun m!2884553 () Bool)

(assert (=> bm!159583 m!2884553))

(declare-fun m!2884555 () Bool)

(assert (=> bm!159585 m!2884555))

(declare-fun m!2884557 () Bool)

(assert (=> b!2535921 m!2884557))

(assert (=> b!2535671 d!720593))

(declare-fun d!720595 () Bool)

(assert (=> d!720595 (= (nullable!2472 (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)) (nullableFct!704 (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469291 () Bool)

(assert (= bs!469291 d!720595))

(assert (=> bs!469291 m!2884419))

(declare-fun m!2884559 () Bool)

(assert (=> bs!469291 m!2884559))

(assert (=> b!2535673 d!720595))

(declare-fun d!720597 () Bool)

(declare-fun lt!901531 () Regex!7555)

(assert (=> d!720597 (validRegex!3181 lt!901531)))

(declare-fun e!1604129 () Regex!7555)

(assert (=> d!720597 (= lt!901531 e!1604129)))

(declare-fun c!405442 () Bool)

(assert (=> d!720597 (= c!405442 ((_ is Cons!29520) tl!4068))))

(assert (=> d!720597 (validRegex!3181 (derivativeStep!2124 r!27340 c!14016))))

(assert (=> d!720597 (= (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068) lt!901531)))

(declare-fun b!2535923 () Bool)

(assert (=> b!2535923 (= e!1604129 (derivative!250 (derivativeStep!2124 (derivativeStep!2124 r!27340 c!14016) (h!34940 tl!4068)) (t!211319 tl!4068)))))

(declare-fun b!2535924 () Bool)

(assert (=> b!2535924 (= e!1604129 (derivativeStep!2124 r!27340 c!14016))))

(assert (= (and d!720597 c!405442) b!2535923))

(assert (= (and d!720597 (not c!405442)) b!2535924))

(declare-fun m!2884561 () Bool)

(assert (=> d!720597 m!2884561))

(assert (=> d!720597 m!2884417))

(declare-fun m!2884563 () Bool)

(assert (=> d!720597 m!2884563))

(assert (=> b!2535923 m!2884417))

(declare-fun m!2884565 () Bool)

(assert (=> b!2535923 m!2884565))

(assert (=> b!2535923 m!2884565))

(declare-fun m!2884567 () Bool)

(assert (=> b!2535923 m!2884567))

(assert (=> b!2535673 d!720597))

(declare-fun b!2535934 () Bool)

(declare-fun e!1604140 () Regex!7555)

(declare-fun call!159598 () Regex!7555)

(assert (=> b!2535934 (= e!1604140 (Concat!12251 call!159598 r!27340))))

(declare-fun d!720599 () Bool)

(declare-fun lt!901532 () Regex!7555)

(assert (=> d!720599 (validRegex!3181 lt!901532)))

(declare-fun e!1604137 () Regex!7555)

(assert (=> d!720599 (= lt!901532 e!1604137)))

(declare-fun c!405447 () Bool)

(assert (=> d!720599 (= c!405447 (or ((_ is EmptyExpr!7555) r!27340) ((_ is EmptyLang!7555) r!27340)))))

(assert (=> d!720599 (validRegex!3181 r!27340)))

(assert (=> d!720599 (= (derivativeStep!2124 r!27340 c!14016) lt!901532)))

(declare-fun b!2535935 () Bool)

(declare-fun e!1604141 () Regex!7555)

(assert (=> b!2535935 (= e!1604141 e!1604140)))

(declare-fun c!405449 () Bool)

(assert (=> b!2535935 (= c!405449 ((_ is Star!7555) r!27340))))

(declare-fun c!405448 () Bool)

(declare-fun call!159597 () Regex!7555)

(declare-fun bm!159590 () Bool)

(assert (=> bm!159590 (= call!159597 (derivativeStep!2124 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))) c!14016))))

(declare-fun bm!159591 () Bool)

(assert (=> bm!159591 (= call!159598 call!159597)))

(declare-fun b!2535936 () Bool)

(declare-fun e!1604138 () Regex!7555)

(assert (=> b!2535936 (= e!1604137 e!1604138)))

(declare-fun c!405446 () Bool)

(assert (=> b!2535936 (= c!405446 ((_ is ElementMatch!7555) r!27340))))

(declare-fun b!2535937 () Bool)

(assert (=> b!2535937 (= e!1604138 (ite (= c!14016 (c!405335 r!27340)) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2535938 () Bool)

(declare-fun call!159595 () Regex!7555)

(assert (=> b!2535938 (= e!1604141 (Union!7555 call!159597 call!159595))))

(declare-fun b!2535939 () Bool)

(declare-fun e!1604139 () Regex!7555)

(declare-fun call!159596 () Regex!7555)

(assert (=> b!2535939 (= e!1604139 (Union!7555 (Concat!12251 call!159596 (regTwo!15622 r!27340)) EmptyLang!7555))))

(declare-fun bm!159592 () Bool)

(assert (=> bm!159592 (= call!159595 (derivativeStep!2124 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)) c!14016))))

(declare-fun b!2535940 () Bool)

(assert (=> b!2535940 (= e!1604139 (Union!7555 (Concat!12251 call!159596 (regTwo!15622 r!27340)) call!159595))))

(declare-fun bm!159593 () Bool)

(assert (=> bm!159593 (= call!159596 call!159598)))

(declare-fun b!2535941 () Bool)

(assert (=> b!2535941 (= c!405448 ((_ is Union!7555) r!27340))))

(assert (=> b!2535941 (= e!1604138 e!1604141)))

(declare-fun b!2535942 () Bool)

(declare-fun c!405445 () Bool)

(assert (=> b!2535942 (= c!405445 (nullable!2472 (regOne!15622 r!27340)))))

(assert (=> b!2535942 (= e!1604140 e!1604139)))

(declare-fun b!2535943 () Bool)

(assert (=> b!2535943 (= e!1604137 EmptyLang!7555)))

(assert (= (and d!720599 c!405447) b!2535943))

(assert (= (and d!720599 (not c!405447)) b!2535936))

(assert (= (and b!2535936 c!405446) b!2535937))

(assert (= (and b!2535936 (not c!405446)) b!2535941))

(assert (= (and b!2535941 c!405448) b!2535938))

(assert (= (and b!2535941 (not c!405448)) b!2535935))

(assert (= (and b!2535935 c!405449) b!2535934))

(assert (= (and b!2535935 (not c!405449)) b!2535942))

(assert (= (and b!2535942 c!405445) b!2535940))

(assert (= (and b!2535942 (not c!405445)) b!2535939))

(assert (= (or b!2535940 b!2535939) bm!159593))

(assert (= (or b!2535934 bm!159593) bm!159591))

(assert (= (or b!2535938 b!2535940) bm!159592))

(assert (= (or b!2535938 bm!159591) bm!159590))

(declare-fun m!2884575 () Bool)

(assert (=> d!720599 m!2884575))

(assert (=> d!720599 m!2884423))

(declare-fun m!2884577 () Bool)

(assert (=> bm!159590 m!2884577))

(declare-fun m!2884579 () Bool)

(assert (=> bm!159592 m!2884579))

(declare-fun m!2884581 () Bool)

(assert (=> b!2535942 m!2884581))

(assert (=> b!2535673 d!720599))

(declare-fun b!2535977 () Bool)

(declare-fun e!1604156 () Bool)

(declare-fun tp!810154 () Bool)

(declare-fun tp!810151 () Bool)

(assert (=> b!2535977 (= e!1604156 (and tp!810154 tp!810151))))

(assert (=> b!2535676 (= tp!810126 e!1604156)))

(declare-fun b!2535976 () Bool)

(assert (=> b!2535976 (= e!1604156 tp_is_empty!12965)))

(declare-fun b!2535978 () Bool)

(declare-fun tp!810153 () Bool)

(assert (=> b!2535978 (= e!1604156 tp!810153)))

(declare-fun b!2535979 () Bool)

(declare-fun tp!810148 () Bool)

(declare-fun tp!810152 () Bool)

(assert (=> b!2535979 (= e!1604156 (and tp!810148 tp!810152))))

(assert (= (and b!2535676 ((_ is ElementMatch!7555) (reg!7884 r!27340))) b!2535976))

(assert (= (and b!2535676 ((_ is Concat!12251) (reg!7884 r!27340))) b!2535977))

(assert (= (and b!2535676 ((_ is Star!7555) (reg!7884 r!27340))) b!2535978))

(assert (= (and b!2535676 ((_ is Union!7555) (reg!7884 r!27340))) b!2535979))

(declare-fun b!2535983 () Bool)

(declare-fun e!1604157 () Bool)

(declare-fun tp!810163 () Bool)

(declare-fun tp!810160 () Bool)

(assert (=> b!2535983 (= e!1604157 (and tp!810163 tp!810160))))

(assert (=> b!2535672 (= tp!810127 e!1604157)))

(declare-fun b!2535982 () Bool)

(assert (=> b!2535982 (= e!1604157 tp_is_empty!12965)))

(declare-fun b!2535984 () Bool)

(declare-fun tp!810162 () Bool)

(assert (=> b!2535984 (= e!1604157 tp!810162)))

(declare-fun b!2535985 () Bool)

(declare-fun tp!810159 () Bool)

(declare-fun tp!810161 () Bool)

(assert (=> b!2535985 (= e!1604157 (and tp!810159 tp!810161))))

(assert (= (and b!2535672 ((_ is ElementMatch!7555) (regOne!15622 r!27340))) b!2535982))

(assert (= (and b!2535672 ((_ is Concat!12251) (regOne!15622 r!27340))) b!2535983))

(assert (= (and b!2535672 ((_ is Star!7555) (regOne!15622 r!27340))) b!2535984))

(assert (= (and b!2535672 ((_ is Union!7555) (regOne!15622 r!27340))) b!2535985))

(declare-fun b!2535987 () Bool)

(declare-fun e!1604158 () Bool)

(declare-fun tp!810168 () Bool)

(declare-fun tp!810165 () Bool)

(assert (=> b!2535987 (= e!1604158 (and tp!810168 tp!810165))))

(assert (=> b!2535672 (= tp!810128 e!1604158)))

(declare-fun b!2535986 () Bool)

(assert (=> b!2535986 (= e!1604158 tp_is_empty!12965)))

(declare-fun b!2535988 () Bool)

(declare-fun tp!810167 () Bool)

(assert (=> b!2535988 (= e!1604158 tp!810167)))

(declare-fun b!2535989 () Bool)

(declare-fun tp!810164 () Bool)

(declare-fun tp!810166 () Bool)

(assert (=> b!2535989 (= e!1604158 (and tp!810164 tp!810166))))

(assert (= (and b!2535672 ((_ is ElementMatch!7555) (regTwo!15622 r!27340))) b!2535986))

(assert (= (and b!2535672 ((_ is Concat!12251) (regTwo!15622 r!27340))) b!2535987))

(assert (= (and b!2535672 ((_ is Star!7555) (regTwo!15622 r!27340))) b!2535988))

(assert (= (and b!2535672 ((_ is Union!7555) (regTwo!15622 r!27340))) b!2535989))

(declare-fun b!2536006 () Bool)

(declare-fun e!1604164 () Bool)

(declare-fun tp!810186 () Bool)

(assert (=> b!2536006 (= e!1604164 (and tp_is_empty!12965 tp!810186))))

(assert (=> b!2535678 (= tp!810130 e!1604164)))

(assert (= (and b!2535678 ((_ is Cons!29520) (t!211319 tl!4068))) b!2536006))

(declare-fun b!2536008 () Bool)

(declare-fun e!1604165 () Bool)

(declare-fun tp!810191 () Bool)

(declare-fun tp!810188 () Bool)

(assert (=> b!2536008 (= e!1604165 (and tp!810191 tp!810188))))

(assert (=> b!2535679 (= tp!810129 e!1604165)))

(declare-fun b!2536007 () Bool)

(assert (=> b!2536007 (= e!1604165 tp_is_empty!12965)))

(declare-fun b!2536009 () Bool)

(declare-fun tp!810190 () Bool)

(assert (=> b!2536009 (= e!1604165 tp!810190)))

(declare-fun b!2536010 () Bool)

(declare-fun tp!810187 () Bool)

(declare-fun tp!810189 () Bool)

(assert (=> b!2536010 (= e!1604165 (and tp!810187 tp!810189))))

(assert (= (and b!2535679 ((_ is ElementMatch!7555) (regOne!15623 r!27340))) b!2536007))

(assert (= (and b!2535679 ((_ is Concat!12251) (regOne!15623 r!27340))) b!2536008))

(assert (= (and b!2535679 ((_ is Star!7555) (regOne!15623 r!27340))) b!2536009))

(assert (= (and b!2535679 ((_ is Union!7555) (regOne!15623 r!27340))) b!2536010))

(declare-fun b!2536020 () Bool)

(declare-fun e!1604168 () Bool)

(declare-fun tp!810206 () Bool)

(declare-fun tp!810203 () Bool)

(assert (=> b!2536020 (= e!1604168 (and tp!810206 tp!810203))))

(assert (=> b!2535679 (= tp!810125 e!1604168)))

(declare-fun b!2536019 () Bool)

(assert (=> b!2536019 (= e!1604168 tp_is_empty!12965)))

(declare-fun b!2536021 () Bool)

(declare-fun tp!810205 () Bool)

(assert (=> b!2536021 (= e!1604168 tp!810205)))

(declare-fun b!2536022 () Bool)

(declare-fun tp!810202 () Bool)

(declare-fun tp!810204 () Bool)

(assert (=> b!2536022 (= e!1604168 (and tp!810202 tp!810204))))

(assert (= (and b!2535679 ((_ is ElementMatch!7555) (regTwo!15623 r!27340))) b!2536019))

(assert (= (and b!2535679 ((_ is Concat!12251) (regTwo!15623 r!27340))) b!2536020))

(assert (= (and b!2535679 ((_ is Star!7555) (regTwo!15623 r!27340))) b!2536021))

(assert (= (and b!2535679 ((_ is Union!7555) (regTwo!15623 r!27340))) b!2536022))

(check-sat (not b!2535689) (not b!2535988) (not bm!159581) (not d!720599) (not bm!159548) tp_is_empty!12965 (not b!2536022) (not bm!159527) (not b!2535921) (not d!720591) (not bm!159592) (not bm!159582) (not b!2535923) (not d!720593) (not bm!159577) (not d!720559) (not b!2535979) (not b!2535977) (not b!2536021) (not d!720589) (not b!2535910) (not bm!159568) (not d!720555) (not b!2536009) (not bm!159575) (not b!2535741) (not b!2536008) (not bm!159525) (not bm!159583) (not bm!159570) (not b!2536010) (not bm!159585) (not bm!159590) (not b!2535823) (not b!2535942) (not b!2535987) (not b!2535984) (not b!2536006) (not b!2535983) (not b!2535989) (not d!720595) (not b!2535911) (not d!720551) (not d!720597) (not b!2535985) (not b!2536020) (not b!2535978) (not bm!159549))
(check-sat)
(get-model)

(declare-fun bm!159597 () Bool)

(declare-fun call!159602 () Bool)

(declare-fun call!159603 () Bool)

(assert (=> bm!159597 (= call!159602 call!159603)))

(declare-fun d!720603 () Bool)

(declare-fun res!1069652 () Bool)

(declare-fun e!1604173 () Bool)

(assert (=> d!720603 (=> res!1069652 e!1604173)))

(assert (=> d!720603 (= res!1069652 ((_ is ElementMatch!7555) lt!901531))))

(assert (=> d!720603 (= (validRegex!3181 lt!901531) e!1604173)))

(declare-fun b!2536023 () Bool)

(declare-fun e!1604174 () Bool)

(assert (=> b!2536023 (= e!1604174 call!159602)))

(declare-fun b!2536024 () Bool)

(declare-fun e!1604169 () Bool)

(assert (=> b!2536024 (= e!1604169 e!1604174)))

(declare-fun res!1069653 () Bool)

(assert (=> b!2536024 (=> (not res!1069653) (not e!1604174))))

(declare-fun call!159604 () Bool)

(assert (=> b!2536024 (= res!1069653 call!159604)))

(declare-fun b!2536025 () Bool)

(declare-fun e!1604175 () Bool)

(assert (=> b!2536025 (= e!1604175 call!159603)))

(declare-fun b!2536026 () Bool)

(declare-fun res!1069651 () Bool)

(assert (=> b!2536026 (=> res!1069651 e!1604169)))

(assert (=> b!2536026 (= res!1069651 (not ((_ is Concat!12251) lt!901531)))))

(declare-fun e!1604171 () Bool)

(assert (=> b!2536026 (= e!1604171 e!1604169)))

(declare-fun b!2536027 () Bool)

(declare-fun e!1604170 () Bool)

(assert (=> b!2536027 (= e!1604170 e!1604171)))

(declare-fun c!405453 () Bool)

(assert (=> b!2536027 (= c!405453 ((_ is Union!7555) lt!901531))))

(declare-fun b!2536028 () Bool)

(declare-fun res!1069655 () Bool)

(declare-fun e!1604172 () Bool)

(assert (=> b!2536028 (=> (not res!1069655) (not e!1604172))))

(assert (=> b!2536028 (= res!1069655 call!159602)))

(assert (=> b!2536028 (= e!1604171 e!1604172)))

(declare-fun b!2536029 () Bool)

(assert (=> b!2536029 (= e!1604173 e!1604170)))

(declare-fun c!405452 () Bool)

(assert (=> b!2536029 (= c!405452 ((_ is Star!7555) lt!901531))))

(declare-fun b!2536030 () Bool)

(assert (=> b!2536030 (= e!1604172 call!159604)))

(declare-fun bm!159598 () Bool)

(assert (=> bm!159598 (= call!159604 (validRegex!3181 (ite c!405453 (regTwo!15623 lt!901531) (regOne!15622 lt!901531))))))

(declare-fun bm!159599 () Bool)

(assert (=> bm!159599 (= call!159603 (validRegex!3181 (ite c!405452 (reg!7884 lt!901531) (ite c!405453 (regOne!15623 lt!901531) (regTwo!15622 lt!901531)))))))

(declare-fun b!2536031 () Bool)

(assert (=> b!2536031 (= e!1604170 e!1604175)))

(declare-fun res!1069654 () Bool)

(assert (=> b!2536031 (= res!1069654 (not (nullable!2472 (reg!7884 lt!901531))))))

(assert (=> b!2536031 (=> (not res!1069654) (not e!1604175))))

(assert (= (and d!720603 (not res!1069652)) b!2536029))

(assert (= (and b!2536029 c!405452) b!2536031))

(assert (= (and b!2536029 (not c!405452)) b!2536027))

(assert (= (and b!2536031 res!1069654) b!2536025))

(assert (= (and b!2536027 c!405453) b!2536028))

(assert (= (and b!2536027 (not c!405453)) b!2536026))

(assert (= (and b!2536028 res!1069655) b!2536030))

(assert (= (and b!2536026 (not res!1069651)) b!2536024))

(assert (= (and b!2536024 res!1069653) b!2536023))

(assert (= (or b!2536028 b!2536023) bm!159597))

(assert (= (or b!2536030 b!2536024) bm!159598))

(assert (= (or b!2536025 bm!159597) bm!159599))

(declare-fun m!2884589 () Bool)

(assert (=> bm!159598 m!2884589))

(declare-fun m!2884591 () Bool)

(assert (=> bm!159599 m!2884591))

(declare-fun m!2884593 () Bool)

(assert (=> b!2536031 m!2884593))

(assert (=> d!720597 d!720603))

(declare-fun bm!159600 () Bool)

(declare-fun call!159605 () Bool)

(declare-fun call!159606 () Bool)

(assert (=> bm!159600 (= call!159605 call!159606)))

(declare-fun d!720605 () Bool)

(declare-fun res!1069657 () Bool)

(declare-fun e!1604180 () Bool)

(assert (=> d!720605 (=> res!1069657 e!1604180)))

(assert (=> d!720605 (= res!1069657 ((_ is ElementMatch!7555) (derivativeStep!2124 r!27340 c!14016)))))

(assert (=> d!720605 (= (validRegex!3181 (derivativeStep!2124 r!27340 c!14016)) e!1604180)))

(declare-fun b!2536032 () Bool)

(declare-fun e!1604181 () Bool)

(assert (=> b!2536032 (= e!1604181 call!159605)))

(declare-fun b!2536033 () Bool)

(declare-fun e!1604176 () Bool)

(assert (=> b!2536033 (= e!1604176 e!1604181)))

(declare-fun res!1069658 () Bool)

(assert (=> b!2536033 (=> (not res!1069658) (not e!1604181))))

(declare-fun call!159607 () Bool)

(assert (=> b!2536033 (= res!1069658 call!159607)))

(declare-fun b!2536034 () Bool)

(declare-fun e!1604182 () Bool)

(assert (=> b!2536034 (= e!1604182 call!159606)))

(declare-fun b!2536035 () Bool)

(declare-fun res!1069656 () Bool)

(assert (=> b!2536035 (=> res!1069656 e!1604176)))

(assert (=> b!2536035 (= res!1069656 (not ((_ is Concat!12251) (derivativeStep!2124 r!27340 c!14016))))))

(declare-fun e!1604178 () Bool)

(assert (=> b!2536035 (= e!1604178 e!1604176)))

(declare-fun b!2536036 () Bool)

(declare-fun e!1604177 () Bool)

(assert (=> b!2536036 (= e!1604177 e!1604178)))

(declare-fun c!405455 () Bool)

(assert (=> b!2536036 (= c!405455 ((_ is Union!7555) (derivativeStep!2124 r!27340 c!14016)))))

(declare-fun b!2536037 () Bool)

(declare-fun res!1069660 () Bool)

(declare-fun e!1604179 () Bool)

(assert (=> b!2536037 (=> (not res!1069660) (not e!1604179))))

(assert (=> b!2536037 (= res!1069660 call!159605)))

(assert (=> b!2536037 (= e!1604178 e!1604179)))

(declare-fun b!2536038 () Bool)

(assert (=> b!2536038 (= e!1604180 e!1604177)))

(declare-fun c!405454 () Bool)

(assert (=> b!2536038 (= c!405454 ((_ is Star!7555) (derivativeStep!2124 r!27340 c!14016)))))

(declare-fun b!2536039 () Bool)

(assert (=> b!2536039 (= e!1604179 call!159607)))

(declare-fun bm!159601 () Bool)

(assert (=> bm!159601 (= call!159607 (validRegex!3181 (ite c!405455 (regTwo!15623 (derivativeStep!2124 r!27340 c!14016)) (regOne!15622 (derivativeStep!2124 r!27340 c!14016)))))))

(declare-fun bm!159602 () Bool)

(assert (=> bm!159602 (= call!159606 (validRegex!3181 (ite c!405454 (reg!7884 (derivativeStep!2124 r!27340 c!14016)) (ite c!405455 (regOne!15623 (derivativeStep!2124 r!27340 c!14016)) (regTwo!15622 (derivativeStep!2124 r!27340 c!14016))))))))

(declare-fun b!2536040 () Bool)

(assert (=> b!2536040 (= e!1604177 e!1604182)))

(declare-fun res!1069659 () Bool)

(assert (=> b!2536040 (= res!1069659 (not (nullable!2472 (reg!7884 (derivativeStep!2124 r!27340 c!14016)))))))

(assert (=> b!2536040 (=> (not res!1069659) (not e!1604182))))

(assert (= (and d!720605 (not res!1069657)) b!2536038))

(assert (= (and b!2536038 c!405454) b!2536040))

(assert (= (and b!2536038 (not c!405454)) b!2536036))

(assert (= (and b!2536040 res!1069659) b!2536034))

(assert (= (and b!2536036 c!405455) b!2536037))

(assert (= (and b!2536036 (not c!405455)) b!2536035))

(assert (= (and b!2536037 res!1069660) b!2536039))

(assert (= (and b!2536035 (not res!1069656)) b!2536033))

(assert (= (and b!2536033 res!1069658) b!2536032))

(assert (= (or b!2536037 b!2536032) bm!159600))

(assert (= (or b!2536039 b!2536033) bm!159601))

(assert (= (or b!2536034 bm!159600) bm!159602))

(declare-fun m!2884595 () Bool)

(assert (=> bm!159601 m!2884595))

(declare-fun m!2884597 () Bool)

(assert (=> bm!159602 m!2884597))

(declare-fun m!2884599 () Bool)

(assert (=> b!2536040 m!2884599))

(assert (=> d!720597 d!720605))

(declare-fun bm!159603 () Bool)

(declare-fun call!159608 () Bool)

(declare-fun call!159609 () Bool)

(assert (=> bm!159603 (= call!159608 call!159609)))

(declare-fun d!720607 () Bool)

(declare-fun res!1069662 () Bool)

(declare-fun e!1604187 () Bool)

(assert (=> d!720607 (=> res!1069662 e!1604187)))

(assert (=> d!720607 (= res!1069662 ((_ is ElementMatch!7555) lt!901509))))

(assert (=> d!720607 (= (validRegex!3181 lt!901509) e!1604187)))

(declare-fun b!2536041 () Bool)

(declare-fun e!1604188 () Bool)

(assert (=> b!2536041 (= e!1604188 call!159608)))

(declare-fun b!2536042 () Bool)

(declare-fun e!1604183 () Bool)

(assert (=> b!2536042 (= e!1604183 e!1604188)))

(declare-fun res!1069663 () Bool)

(assert (=> b!2536042 (=> (not res!1069663) (not e!1604188))))

(declare-fun call!159610 () Bool)

(assert (=> b!2536042 (= res!1069663 call!159610)))

(declare-fun b!2536043 () Bool)

(declare-fun e!1604189 () Bool)

(assert (=> b!2536043 (= e!1604189 call!159609)))

(declare-fun b!2536044 () Bool)

(declare-fun res!1069661 () Bool)

(assert (=> b!2536044 (=> res!1069661 e!1604183)))

(assert (=> b!2536044 (= res!1069661 (not ((_ is Concat!12251) lt!901509)))))

(declare-fun e!1604185 () Bool)

(assert (=> b!2536044 (= e!1604185 e!1604183)))

(declare-fun b!2536045 () Bool)

(declare-fun e!1604184 () Bool)

(assert (=> b!2536045 (= e!1604184 e!1604185)))

(declare-fun c!405457 () Bool)

(assert (=> b!2536045 (= c!405457 ((_ is Union!7555) lt!901509))))

(declare-fun b!2536046 () Bool)

(declare-fun res!1069665 () Bool)

(declare-fun e!1604186 () Bool)

(assert (=> b!2536046 (=> (not res!1069665) (not e!1604186))))

(assert (=> b!2536046 (= res!1069665 call!159608)))

(assert (=> b!2536046 (= e!1604185 e!1604186)))

(declare-fun b!2536047 () Bool)

(assert (=> b!2536047 (= e!1604187 e!1604184)))

(declare-fun c!405456 () Bool)

(assert (=> b!2536047 (= c!405456 ((_ is Star!7555) lt!901509))))

(declare-fun b!2536048 () Bool)

(assert (=> b!2536048 (= e!1604186 call!159610)))

(declare-fun bm!159604 () Bool)

(assert (=> bm!159604 (= call!159610 (validRegex!3181 (ite c!405457 (regTwo!15623 lt!901509) (regOne!15622 lt!901509))))))

(declare-fun bm!159605 () Bool)

(assert (=> bm!159605 (= call!159609 (validRegex!3181 (ite c!405456 (reg!7884 lt!901509) (ite c!405457 (regOne!15623 lt!901509) (regTwo!15622 lt!901509)))))))

(declare-fun b!2536049 () Bool)

(assert (=> b!2536049 (= e!1604184 e!1604189)))

(declare-fun res!1069664 () Bool)

(assert (=> b!2536049 (= res!1069664 (not (nullable!2472 (reg!7884 lt!901509))))))

(assert (=> b!2536049 (=> (not res!1069664) (not e!1604189))))

(assert (= (and d!720607 (not res!1069662)) b!2536047))

(assert (= (and b!2536047 c!405456) b!2536049))

(assert (= (and b!2536047 (not c!405456)) b!2536045))

(assert (= (and b!2536049 res!1069664) b!2536043))

(assert (= (and b!2536045 c!405457) b!2536046))

(assert (= (and b!2536045 (not c!405457)) b!2536044))

(assert (= (and b!2536046 res!1069665) b!2536048))

(assert (= (and b!2536044 (not res!1069661)) b!2536042))

(assert (= (and b!2536042 res!1069663) b!2536041))

(assert (= (or b!2536046 b!2536041) bm!159603))

(assert (= (or b!2536048 b!2536042) bm!159604))

(assert (= (or b!2536043 bm!159603) bm!159605))

(declare-fun m!2884601 () Bool)

(assert (=> bm!159604 m!2884601))

(declare-fun m!2884603 () Bool)

(assert (=> bm!159605 m!2884603))

(declare-fun m!2884605 () Bool)

(assert (=> b!2536049 m!2884605))

(assert (=> d!720555 d!720607))

(declare-fun bm!159606 () Bool)

(declare-fun call!159611 () Bool)

(declare-fun call!159612 () Bool)

(assert (=> bm!159606 (= call!159611 call!159612)))

(declare-fun d!720609 () Bool)

(declare-fun res!1069667 () Bool)

(declare-fun e!1604194 () Bool)

(assert (=> d!720609 (=> res!1069667 e!1604194)))

(assert (=> d!720609 (= res!1069667 ((_ is ElementMatch!7555) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))

(assert (=> d!720609 (= (validRegex!3181 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)) e!1604194)))

(declare-fun b!2536050 () Bool)

(declare-fun e!1604195 () Bool)

(assert (=> b!2536050 (= e!1604195 call!159611)))

(declare-fun b!2536051 () Bool)

(declare-fun e!1604190 () Bool)

(assert (=> b!2536051 (= e!1604190 e!1604195)))

(declare-fun res!1069668 () Bool)

(assert (=> b!2536051 (=> (not res!1069668) (not e!1604195))))

(declare-fun call!159613 () Bool)

(assert (=> b!2536051 (= res!1069668 call!159613)))

(declare-fun b!2536052 () Bool)

(declare-fun e!1604196 () Bool)

(assert (=> b!2536052 (= e!1604196 call!159612)))

(declare-fun b!2536053 () Bool)

(declare-fun res!1069666 () Bool)

(assert (=> b!2536053 (=> res!1069666 e!1604190)))

(assert (=> b!2536053 (= res!1069666 (not ((_ is Concat!12251) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))))))

(declare-fun e!1604192 () Bool)

(assert (=> b!2536053 (= e!1604192 e!1604190)))

(declare-fun b!2536054 () Bool)

(declare-fun e!1604191 () Bool)

(assert (=> b!2536054 (= e!1604191 e!1604192)))

(declare-fun c!405459 () Bool)

(assert (=> b!2536054 (= c!405459 ((_ is Union!7555) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))

(declare-fun b!2536055 () Bool)

(declare-fun res!1069670 () Bool)

(declare-fun e!1604193 () Bool)

(assert (=> b!2536055 (=> (not res!1069670) (not e!1604193))))

(assert (=> b!2536055 (= res!1069670 call!159611)))

(assert (=> b!2536055 (= e!1604192 e!1604193)))

(declare-fun b!2536056 () Bool)

(assert (=> b!2536056 (= e!1604194 e!1604191)))

(declare-fun c!405458 () Bool)

(assert (=> b!2536056 (= c!405458 ((_ is Star!7555) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))

(declare-fun b!2536057 () Bool)

(assert (=> b!2536057 (= e!1604193 call!159613)))

(declare-fun bm!159607 () Bool)

(assert (=> bm!159607 (= call!159613 (validRegex!3181 (ite c!405459 (regTwo!15623 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)) (regOne!15622 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))))

(declare-fun bm!159608 () Bool)

(assert (=> bm!159608 (= call!159612 (validRegex!3181 (ite c!405458 (reg!7884 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)) (ite c!405459 (regOne!15623 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)) (regTwo!15622 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))))))))

(declare-fun b!2536058 () Bool)

(assert (=> b!2536058 (= e!1604191 e!1604196)))

(declare-fun res!1069669 () Bool)

(assert (=> b!2536058 (= res!1069669 (not (nullable!2472 (reg!7884 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))))

(assert (=> b!2536058 (=> (not res!1069669) (not e!1604196))))

(assert (= (and d!720609 (not res!1069667)) b!2536056))

(assert (= (and b!2536056 c!405458) b!2536058))

(assert (= (and b!2536056 (not c!405458)) b!2536054))

(assert (= (and b!2536058 res!1069669) b!2536052))

(assert (= (and b!2536054 c!405459) b!2536055))

(assert (= (and b!2536054 (not c!405459)) b!2536053))

(assert (= (and b!2536055 res!1069670) b!2536057))

(assert (= (and b!2536053 (not res!1069666)) b!2536051))

(assert (= (and b!2536051 res!1069668) b!2536050))

(assert (= (or b!2536055 b!2536050) bm!159606))

(assert (= (or b!2536057 b!2536051) bm!159607))

(assert (= (or b!2536052 bm!159606) bm!159608))

(declare-fun m!2884607 () Bool)

(assert (=> bm!159607 m!2884607))

(declare-fun m!2884609 () Bool)

(assert (=> bm!159608 m!2884609))

(declare-fun m!2884611 () Bool)

(assert (=> b!2536058 m!2884611))

(assert (=> d!720555 d!720609))

(declare-fun e!1604200 () Regex!7555)

(declare-fun b!2536059 () Bool)

(declare-fun call!159617 () Regex!7555)

(assert (=> b!2536059 (= e!1604200 (Concat!12251 call!159617 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))))))

(declare-fun d!720611 () Bool)

(declare-fun lt!901533 () Regex!7555)

(assert (=> d!720611 (validRegex!3181 lt!901533)))

(declare-fun e!1604197 () Regex!7555)

(assert (=> d!720611 (= lt!901533 e!1604197)))

(declare-fun c!405462 () Bool)

(assert (=> d!720611 (= c!405462 (or ((_ is EmptyExpr!7555) (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))) ((_ is EmptyLang!7555) (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))))

(assert (=> d!720611 (validRegex!3181 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))

(assert (=> d!720611 (= (derivativeStep!2124 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))) c!14016) lt!901533)))

(declare-fun b!2536060 () Bool)

(declare-fun e!1604201 () Regex!7555)

(assert (=> b!2536060 (= e!1604201 e!1604200)))

(declare-fun c!405464 () Bool)

(assert (=> b!2536060 (= c!405464 ((_ is Star!7555) (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))))))

(declare-fun c!405463 () Bool)

(declare-fun bm!159609 () Bool)

(declare-fun call!159616 () Regex!7555)

(assert (=> bm!159609 (= call!159616 (derivativeStep!2124 (ite c!405463 (regOne!15623 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))) (ite c!405464 (reg!7884 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))) (regOne!15622 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))))) c!14016))))

(declare-fun bm!159610 () Bool)

(assert (=> bm!159610 (= call!159617 call!159616)))

(declare-fun b!2536061 () Bool)

(declare-fun e!1604198 () Regex!7555)

(assert (=> b!2536061 (= e!1604197 e!1604198)))

(declare-fun c!405461 () Bool)

(assert (=> b!2536061 (= c!405461 ((_ is ElementMatch!7555) (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))))))

(declare-fun b!2536062 () Bool)

(assert (=> b!2536062 (= e!1604198 (ite (= c!14016 (c!405335 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536063 () Bool)

(declare-fun call!159614 () Regex!7555)

(assert (=> b!2536063 (= e!1604201 (Union!7555 call!159616 call!159614))))

(declare-fun b!2536064 () Bool)

(declare-fun call!159615 () Regex!7555)

(declare-fun e!1604199 () Regex!7555)

(assert (=> b!2536064 (= e!1604199 (Union!7555 (Concat!12251 call!159615 (regTwo!15622 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))) EmptyLang!7555))))

(declare-fun bm!159611 () Bool)

(assert (=> bm!159611 (= call!159614 (derivativeStep!2124 (ite c!405463 (regTwo!15623 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))) (regTwo!15622 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))) c!14016))))

(declare-fun b!2536065 () Bool)

(assert (=> b!2536065 (= e!1604199 (Union!7555 (Concat!12251 call!159615 (regTwo!15622 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))) call!159614))))

(declare-fun bm!159612 () Bool)

(assert (=> bm!159612 (= call!159615 call!159617)))

(declare-fun b!2536066 () Bool)

(assert (=> b!2536066 (= c!405463 ((_ is Union!7555) (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))))))

(assert (=> b!2536066 (= e!1604198 e!1604201)))

(declare-fun b!2536067 () Bool)

(declare-fun c!405460 () Bool)

(assert (=> b!2536067 (= c!405460 (nullable!2472 (regOne!15622 (ite c!405365 (regTwo!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))))

(assert (=> b!2536067 (= e!1604200 e!1604199)))

(declare-fun b!2536068 () Bool)

(assert (=> b!2536068 (= e!1604197 EmptyLang!7555)))

(assert (= (and d!720611 c!405462) b!2536068))

(assert (= (and d!720611 (not c!405462)) b!2536061))

(assert (= (and b!2536061 c!405461) b!2536062))

(assert (= (and b!2536061 (not c!405461)) b!2536066))

(assert (= (and b!2536066 c!405463) b!2536063))

(assert (= (and b!2536066 (not c!405463)) b!2536060))

(assert (= (and b!2536060 c!405464) b!2536059))

(assert (= (and b!2536060 (not c!405464)) b!2536067))

(assert (= (and b!2536067 c!405460) b!2536065))

(assert (= (and b!2536067 (not c!405460)) b!2536064))

(assert (= (or b!2536065 b!2536064) bm!159612))

(assert (= (or b!2536059 bm!159612) bm!159610))

(assert (= (or b!2536063 b!2536065) bm!159611))

(assert (= (or b!2536063 bm!159610) bm!159609))

(declare-fun m!2884613 () Bool)

(assert (=> d!720611 m!2884613))

(declare-fun m!2884615 () Bool)

(assert (=> d!720611 m!2884615))

(declare-fun m!2884617 () Bool)

(assert (=> bm!159609 m!2884617))

(declare-fun m!2884619 () Bool)

(assert (=> bm!159611 m!2884619))

(declare-fun m!2884621 () Bool)

(assert (=> b!2536067 m!2884621))

(assert (=> bm!159527 d!720611))

(declare-fun bm!159613 () Bool)

(declare-fun call!159618 () Bool)

(declare-fun call!159619 () Bool)

(assert (=> bm!159613 (= call!159618 call!159619)))

(declare-fun d!720613 () Bool)

(declare-fun res!1069672 () Bool)

(declare-fun e!1604206 () Bool)

(assert (=> d!720613 (=> res!1069672 e!1604206)))

(assert (=> d!720613 (= res!1069672 ((_ is ElementMatch!7555) lt!901532))))

(assert (=> d!720613 (= (validRegex!3181 lt!901532) e!1604206)))

(declare-fun b!2536069 () Bool)

(declare-fun e!1604207 () Bool)

(assert (=> b!2536069 (= e!1604207 call!159618)))

(declare-fun b!2536070 () Bool)

(declare-fun e!1604202 () Bool)

(assert (=> b!2536070 (= e!1604202 e!1604207)))

(declare-fun res!1069673 () Bool)

(assert (=> b!2536070 (=> (not res!1069673) (not e!1604207))))

(declare-fun call!159620 () Bool)

(assert (=> b!2536070 (= res!1069673 call!159620)))

(declare-fun b!2536071 () Bool)

(declare-fun e!1604208 () Bool)

(assert (=> b!2536071 (= e!1604208 call!159619)))

(declare-fun b!2536072 () Bool)

(declare-fun res!1069671 () Bool)

(assert (=> b!2536072 (=> res!1069671 e!1604202)))

(assert (=> b!2536072 (= res!1069671 (not ((_ is Concat!12251) lt!901532)))))

(declare-fun e!1604204 () Bool)

(assert (=> b!2536072 (= e!1604204 e!1604202)))

(declare-fun b!2536073 () Bool)

(declare-fun e!1604203 () Bool)

(assert (=> b!2536073 (= e!1604203 e!1604204)))

(declare-fun c!405466 () Bool)

(assert (=> b!2536073 (= c!405466 ((_ is Union!7555) lt!901532))))

(declare-fun b!2536074 () Bool)

(declare-fun res!1069675 () Bool)

(declare-fun e!1604205 () Bool)

(assert (=> b!2536074 (=> (not res!1069675) (not e!1604205))))

(assert (=> b!2536074 (= res!1069675 call!159618)))

(assert (=> b!2536074 (= e!1604204 e!1604205)))

(declare-fun b!2536075 () Bool)

(assert (=> b!2536075 (= e!1604206 e!1604203)))

(declare-fun c!405465 () Bool)

(assert (=> b!2536075 (= c!405465 ((_ is Star!7555) lt!901532))))

(declare-fun b!2536076 () Bool)

(assert (=> b!2536076 (= e!1604205 call!159620)))

(declare-fun bm!159614 () Bool)

(assert (=> bm!159614 (= call!159620 (validRegex!3181 (ite c!405466 (regTwo!15623 lt!901532) (regOne!15622 lt!901532))))))

(declare-fun bm!159615 () Bool)

(assert (=> bm!159615 (= call!159619 (validRegex!3181 (ite c!405465 (reg!7884 lt!901532) (ite c!405466 (regOne!15623 lt!901532) (regTwo!15622 lt!901532)))))))

(declare-fun b!2536077 () Bool)

(assert (=> b!2536077 (= e!1604203 e!1604208)))

(declare-fun res!1069674 () Bool)

(assert (=> b!2536077 (= res!1069674 (not (nullable!2472 (reg!7884 lt!901532))))))

(assert (=> b!2536077 (=> (not res!1069674) (not e!1604208))))

(assert (= (and d!720613 (not res!1069672)) b!2536075))

(assert (= (and b!2536075 c!405465) b!2536077))

(assert (= (and b!2536075 (not c!405465)) b!2536073))

(assert (= (and b!2536077 res!1069674) b!2536071))

(assert (= (and b!2536073 c!405466) b!2536074))

(assert (= (and b!2536073 (not c!405466)) b!2536072))

(assert (= (and b!2536074 res!1069675) b!2536076))

(assert (= (and b!2536072 (not res!1069671)) b!2536070))

(assert (= (and b!2536070 res!1069673) b!2536069))

(assert (= (or b!2536074 b!2536069) bm!159613))

(assert (= (or b!2536076 b!2536070) bm!159614))

(assert (= (or b!2536071 bm!159613) bm!159615))

(declare-fun m!2884623 () Bool)

(assert (=> bm!159614 m!2884623))

(declare-fun m!2884625 () Bool)

(assert (=> bm!159615 m!2884625))

(declare-fun m!2884627 () Bool)

(assert (=> b!2536077 m!2884627))

(assert (=> d!720599 d!720613))

(assert (=> d!720599 d!720563))

(declare-fun d!720615 () Bool)

(declare-fun lt!901534 () Regex!7555)

(assert (=> d!720615 (validRegex!3181 lt!901534)))

(declare-fun e!1604209 () Regex!7555)

(assert (=> d!720615 (= lt!901534 e!1604209)))

(declare-fun c!405467 () Bool)

(assert (=> d!720615 (= c!405467 ((_ is Cons!29520) (t!211319 tl!4068)))))

(assert (=> d!720615 (validRegex!3181 (derivativeStep!2124 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) (h!34940 tl!4068)))))

(assert (=> d!720615 (= (derivative!250 (derivativeStep!2124 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) (h!34940 tl!4068)) (t!211319 tl!4068)) lt!901534)))

(declare-fun b!2536078 () Bool)

(assert (=> b!2536078 (= e!1604209 (derivative!250 (derivativeStep!2124 (derivativeStep!2124 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) (h!34940 tl!4068)) (h!34940 (t!211319 tl!4068))) (t!211319 (t!211319 tl!4068))))))

(declare-fun b!2536079 () Bool)

(assert (=> b!2536079 (= e!1604209 (derivativeStep!2124 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) (h!34940 tl!4068)))))

(assert (= (and d!720615 c!405467) b!2536078))

(assert (= (and d!720615 (not c!405467)) b!2536079))

(declare-fun m!2884629 () Bool)

(assert (=> d!720615 m!2884629))

(assert (=> d!720615 m!2884445))

(declare-fun m!2884631 () Bool)

(assert (=> d!720615 m!2884631))

(assert (=> b!2536078 m!2884445))

(declare-fun m!2884633 () Bool)

(assert (=> b!2536078 m!2884633))

(assert (=> b!2536078 m!2884633))

(declare-fun m!2884635 () Bool)

(assert (=> b!2536078 m!2884635))

(assert (=> b!2535689 d!720615))

(declare-fun call!159624 () Regex!7555)

(declare-fun e!1604213 () Regex!7555)

(declare-fun b!2536080 () Bool)

(assert (=> b!2536080 (= e!1604213 (Concat!12251 call!159624 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))

(declare-fun d!720617 () Bool)

(declare-fun lt!901535 () Regex!7555)

(assert (=> d!720617 (validRegex!3181 lt!901535)))

(declare-fun e!1604210 () Regex!7555)

(assert (=> d!720617 (= lt!901535 e!1604210)))

(declare-fun c!405470 () Bool)

(assert (=> d!720617 (= c!405470 (or ((_ is EmptyExpr!7555) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)) ((_ is EmptyLang!7555) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))))))

(assert (=> d!720617 (validRegex!3181 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))))

(assert (=> d!720617 (= (derivativeStep!2124 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) (h!34940 tl!4068)) lt!901535)))

(declare-fun b!2536081 () Bool)

(declare-fun e!1604214 () Regex!7555)

(assert (=> b!2536081 (= e!1604214 e!1604213)))

(declare-fun c!405472 () Bool)

(assert (=> b!2536081 (= c!405472 ((_ is Star!7555) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))

(declare-fun call!159623 () Regex!7555)

(declare-fun c!405471 () Bool)

(declare-fun bm!159616 () Bool)

(assert (=> bm!159616 (= call!159623 (derivativeStep!2124 (ite c!405471 (regOne!15623 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)) (ite c!405472 (reg!7884 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)) (regOne!15622 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))) (h!34940 tl!4068)))))

(declare-fun bm!159617 () Bool)

(assert (=> bm!159617 (= call!159624 call!159623)))

(declare-fun b!2536082 () Bool)

(declare-fun e!1604211 () Regex!7555)

(assert (=> b!2536082 (= e!1604210 e!1604211)))

(declare-fun c!405469 () Bool)

(assert (=> b!2536082 (= c!405469 ((_ is ElementMatch!7555) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))

(declare-fun b!2536083 () Bool)

(assert (=> b!2536083 (= e!1604211 (ite (= (h!34940 tl!4068) (c!405335 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536084 () Bool)

(declare-fun call!159621 () Regex!7555)

(assert (=> b!2536084 (= e!1604214 (Union!7555 call!159623 call!159621))))

(declare-fun e!1604212 () Regex!7555)

(declare-fun b!2536085 () Bool)

(declare-fun call!159622 () Regex!7555)

(assert (=> b!2536085 (= e!1604212 (Union!7555 (Concat!12251 call!159622 (regTwo!15622 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))) EmptyLang!7555))))

(declare-fun bm!159618 () Bool)

(assert (=> bm!159618 (= call!159621 (derivativeStep!2124 (ite c!405471 (regTwo!15623 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)) (regTwo!15622 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))) (h!34940 tl!4068)))))

(declare-fun b!2536086 () Bool)

(assert (=> b!2536086 (= e!1604212 (Union!7555 (Concat!12251 call!159622 (regTwo!15622 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))) call!159621))))

(declare-fun bm!159619 () Bool)

(assert (=> bm!159619 (= call!159622 call!159624)))

(declare-fun b!2536087 () Bool)

(assert (=> b!2536087 (= c!405471 ((_ is Union!7555) (derivativeStep!2124 (regTwo!15623 r!27340) c!14016)))))

(assert (=> b!2536087 (= e!1604211 e!1604214)))

(declare-fun b!2536088 () Bool)

(declare-fun c!405468 () Bool)

(assert (=> b!2536088 (= c!405468 (nullable!2472 (regOne!15622 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016))))))

(assert (=> b!2536088 (= e!1604213 e!1604212)))

(declare-fun b!2536089 () Bool)

(assert (=> b!2536089 (= e!1604210 EmptyLang!7555)))

(assert (= (and d!720617 c!405470) b!2536089))

(assert (= (and d!720617 (not c!405470)) b!2536082))

(assert (= (and b!2536082 c!405469) b!2536083))

(assert (= (and b!2536082 (not c!405469)) b!2536087))

(assert (= (and b!2536087 c!405471) b!2536084))

(assert (= (and b!2536087 (not c!405471)) b!2536081))

(assert (= (and b!2536081 c!405472) b!2536080))

(assert (= (and b!2536081 (not c!405472)) b!2536088))

(assert (= (and b!2536088 c!405468) b!2536086))

(assert (= (and b!2536088 (not c!405468)) b!2536085))

(assert (= (or b!2536086 b!2536085) bm!159619))

(assert (= (or b!2536080 bm!159619) bm!159617))

(assert (= (or b!2536084 b!2536086) bm!159618))

(assert (= (or b!2536084 bm!159617) bm!159616))

(declare-fun m!2884637 () Bool)

(assert (=> d!720617 m!2884637))

(assert (=> d!720617 m!2884425))

(assert (=> d!720617 m!2884443))

(declare-fun m!2884639 () Bool)

(assert (=> bm!159616 m!2884639))

(declare-fun m!2884641 () Bool)

(assert (=> bm!159618 m!2884641))

(declare-fun m!2884643 () Bool)

(assert (=> b!2536088 m!2884643))

(assert (=> b!2535689 d!720617))

(declare-fun b!2536090 () Bool)

(declare-fun e!1604218 () Regex!7555)

(declare-fun call!159628 () Regex!7555)

(assert (=> b!2536090 (= e!1604218 (Concat!12251 call!159628 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))))))

(declare-fun d!720619 () Bool)

(declare-fun lt!901536 () Regex!7555)

(assert (=> d!720619 (validRegex!3181 lt!901536)))

(declare-fun e!1604215 () Regex!7555)

(assert (=> d!720619 (= lt!901536 e!1604215)))

(declare-fun c!405475 () Bool)

(assert (=> d!720619 (= c!405475 (or ((_ is EmptyExpr!7555) (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))) ((_ is EmptyLang!7555) (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))))))))

(assert (=> d!720619 (validRegex!3181 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))))))

(assert (=> d!720619 (= (derivativeStep!2124 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))) c!14016) lt!901536)))

(declare-fun b!2536091 () Bool)

(declare-fun e!1604219 () Regex!7555)

(assert (=> b!2536091 (= e!1604219 e!1604218)))

(declare-fun c!405477 () Bool)

(assert (=> b!2536091 (= c!405477 ((_ is Star!7555) (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))))))

(declare-fun bm!159620 () Bool)

(declare-fun call!159627 () Regex!7555)

(declare-fun c!405476 () Bool)

(assert (=> bm!159620 (= call!159627 (derivativeStep!2124 (ite c!405476 (regOne!15623 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))) (ite c!405477 (reg!7884 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))) (regOne!15622 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))))) c!14016))))

(declare-fun bm!159621 () Bool)

(assert (=> bm!159621 (= call!159628 call!159627)))

(declare-fun b!2536092 () Bool)

(declare-fun e!1604216 () Regex!7555)

(assert (=> b!2536092 (= e!1604215 e!1604216)))

(declare-fun c!405474 () Bool)

(assert (=> b!2536092 (= c!405474 ((_ is ElementMatch!7555) (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))))))

(declare-fun b!2536093 () Bool)

(assert (=> b!2536093 (= e!1604216 (ite (= c!14016 (c!405335 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536094 () Bool)

(declare-fun call!159625 () Regex!7555)

(assert (=> b!2536094 (= e!1604219 (Union!7555 call!159627 call!159625))))

(declare-fun call!159626 () Regex!7555)

(declare-fun b!2536095 () Bool)

(declare-fun e!1604217 () Regex!7555)

(assert (=> b!2536095 (= e!1604217 (Union!7555 (Concat!12251 call!159626 (regTwo!15622 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))))) EmptyLang!7555))))

(declare-fun bm!159622 () Bool)

(assert (=> bm!159622 (= call!159625 (derivativeStep!2124 (ite c!405476 (regTwo!15623 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))) (regTwo!15622 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))))) c!14016))))

(declare-fun b!2536096 () Bool)

(assert (=> b!2536096 (= e!1604217 (Union!7555 (Concat!12251 call!159626 (regTwo!15622 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))))) call!159625))))

(declare-fun bm!159623 () Bool)

(assert (=> bm!159623 (= call!159626 call!159628)))

(declare-fun b!2536097 () Bool)

(assert (=> b!2536097 (= c!405476 ((_ is Union!7555) (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340)))))))

(assert (=> b!2536097 (= e!1604216 e!1604219)))

(declare-fun c!405473 () Bool)

(declare-fun b!2536098 () Bool)

(assert (=> b!2536098 (= c!405473 (nullable!2472 (regOne!15622 (ite c!405448 (regOne!15623 r!27340) (ite c!405449 (reg!7884 r!27340) (regOne!15622 r!27340))))))))

(assert (=> b!2536098 (= e!1604218 e!1604217)))

(declare-fun b!2536099 () Bool)

(assert (=> b!2536099 (= e!1604215 EmptyLang!7555)))

(assert (= (and d!720619 c!405475) b!2536099))

(assert (= (and d!720619 (not c!405475)) b!2536092))

(assert (= (and b!2536092 c!405474) b!2536093))

(assert (= (and b!2536092 (not c!405474)) b!2536097))

(assert (= (and b!2536097 c!405476) b!2536094))

(assert (= (and b!2536097 (not c!405476)) b!2536091))

(assert (= (and b!2536091 c!405477) b!2536090))

(assert (= (and b!2536091 (not c!405477)) b!2536098))

(assert (= (and b!2536098 c!405473) b!2536096))

(assert (= (and b!2536098 (not c!405473)) b!2536095))

(assert (= (or b!2536096 b!2536095) bm!159623))

(assert (= (or b!2536090 bm!159623) bm!159621))

(assert (= (or b!2536094 b!2536096) bm!159622))

(assert (= (or b!2536094 bm!159621) bm!159620))

(declare-fun m!2884645 () Bool)

(assert (=> d!720619 m!2884645))

(declare-fun m!2884647 () Bool)

(assert (=> d!720619 m!2884647))

(declare-fun m!2884649 () Bool)

(assert (=> bm!159620 m!2884649))

(declare-fun m!2884651 () Bool)

(assert (=> bm!159622 m!2884651))

(declare-fun m!2884653 () Bool)

(assert (=> b!2536098 m!2884653))

(assert (=> bm!159590 d!720619))

(declare-fun b!2536114 () Bool)

(declare-fun e!1604235 () Bool)

(declare-fun e!1604236 () Bool)

(assert (=> b!2536114 (= e!1604235 e!1604236)))

(declare-fun res!1069689 () Bool)

(declare-fun call!159633 () Bool)

(assert (=> b!2536114 (= res!1069689 call!159633)))

(assert (=> b!2536114 (=> res!1069689 e!1604236)))

(declare-fun b!2536115 () Bool)

(declare-fun e!1604233 () Bool)

(assert (=> b!2536115 (= e!1604235 e!1604233)))

(declare-fun res!1069687 () Bool)

(declare-fun call!159634 () Bool)

(assert (=> b!2536115 (= res!1069687 call!159634)))

(assert (=> b!2536115 (=> (not res!1069687) (not e!1604233))))

(declare-fun d!720621 () Bool)

(declare-fun res!1069686 () Bool)

(declare-fun e!1604232 () Bool)

(assert (=> d!720621 (=> res!1069686 e!1604232)))

(assert (=> d!720621 (= res!1069686 ((_ is EmptyExpr!7555) (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)))))

(assert (=> d!720621 (= (nullableFct!704 (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)) e!1604232)))

(declare-fun c!405480 () Bool)

(declare-fun bm!159628 () Bool)

(assert (=> bm!159628 (= call!159634 (nullable!2472 (ite c!405480 (regTwo!15623 (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)) (regOne!15622 (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2536116 () Bool)

(declare-fun e!1604234 () Bool)

(assert (=> b!2536116 (= e!1604232 e!1604234)))

(declare-fun res!1069688 () Bool)

(assert (=> b!2536116 (=> (not res!1069688) (not e!1604234))))

(assert (=> b!2536116 (= res!1069688 (and (not ((_ is EmptyLang!7555) (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7555) (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2536117 () Bool)

(assert (=> b!2536117 (= e!1604233 call!159633)))

(declare-fun bm!159629 () Bool)

(assert (=> bm!159629 (= call!159633 (nullable!2472 (ite c!405480 (regOne!15623 (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)) (regTwo!15622 (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2536118 () Bool)

(assert (=> b!2536118 (= e!1604236 call!159634)))

(declare-fun b!2536119 () Bool)

(declare-fun e!1604237 () Bool)

(assert (=> b!2536119 (= e!1604234 e!1604237)))

(declare-fun res!1069690 () Bool)

(assert (=> b!2536119 (=> res!1069690 e!1604237)))

(assert (=> b!2536119 (= res!1069690 ((_ is Star!7555) (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)))))

(declare-fun b!2536120 () Bool)

(assert (=> b!2536120 (= e!1604237 e!1604235)))

(assert (=> b!2536120 (= c!405480 ((_ is Union!7555) (derivative!250 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) tl!4068)))))

(assert (= (and d!720621 (not res!1069686)) b!2536116))

(assert (= (and b!2536116 res!1069688) b!2536119))

(assert (= (and b!2536119 (not res!1069690)) b!2536120))

(assert (= (and b!2536120 c!405480) b!2536114))

(assert (= (and b!2536120 (not c!405480)) b!2536115))

(assert (= (and b!2536114 (not res!1069689)) b!2536118))

(assert (= (and b!2536115 res!1069687) b!2536117))

(assert (= (or b!2536118 b!2536115) bm!159628))

(assert (= (or b!2536114 b!2536117) bm!159629))

(declare-fun m!2884655 () Bool)

(assert (=> bm!159628 m!2884655))

(declare-fun m!2884657 () Bool)

(assert (=> bm!159629 m!2884657))

(assert (=> d!720589 d!720621))

(declare-fun b!2536121 () Bool)

(declare-fun call!159638 () Regex!7555)

(declare-fun e!1604241 () Regex!7555)

(assert (=> b!2536121 (= e!1604241 (Concat!12251 call!159638 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))))))

(declare-fun d!720623 () Bool)

(declare-fun lt!901537 () Regex!7555)

(assert (=> d!720623 (validRegex!3181 lt!901537)))

(declare-fun e!1604238 () Regex!7555)

(assert (=> d!720623 (= lt!901537 e!1604238)))

(declare-fun c!405483 () Bool)

(assert (=> d!720623 (= c!405483 (or ((_ is EmptyExpr!7555) (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))) ((_ is EmptyLang!7555) (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))))))))

(assert (=> d!720623 (validRegex!3181 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))))))

(assert (=> d!720623 (= (derivativeStep!2124 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))) c!14016) lt!901537)))

(declare-fun b!2536122 () Bool)

(declare-fun e!1604242 () Regex!7555)

(assert (=> b!2536122 (= e!1604242 e!1604241)))

(declare-fun c!405485 () Bool)

(assert (=> b!2536122 (= c!405485 ((_ is Star!7555) (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))))))

(declare-fun c!405484 () Bool)

(declare-fun bm!159630 () Bool)

(declare-fun call!159637 () Regex!7555)

(assert (=> bm!159630 (= call!159637 (derivativeStep!2124 (ite c!405484 (regOne!15623 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))) (ite c!405485 (reg!7884 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))) (regOne!15622 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))))) c!14016))))

(declare-fun bm!159631 () Bool)

(assert (=> bm!159631 (= call!159638 call!159637)))

(declare-fun b!2536123 () Bool)

(declare-fun e!1604239 () Regex!7555)

(assert (=> b!2536123 (= e!1604238 e!1604239)))

(declare-fun c!405482 () Bool)

(assert (=> b!2536123 (= c!405482 ((_ is ElementMatch!7555) (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))))))

(declare-fun b!2536124 () Bool)

(assert (=> b!2536124 (= e!1604239 (ite (= c!14016 (c!405335 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536125 () Bool)

(declare-fun call!159635 () Regex!7555)

(assert (=> b!2536125 (= e!1604242 (Union!7555 call!159637 call!159635))))

(declare-fun e!1604240 () Regex!7555)

(declare-fun call!159636 () Regex!7555)

(declare-fun b!2536126 () Bool)

(assert (=> b!2536126 (= e!1604240 (Union!7555 (Concat!12251 call!159636 (regTwo!15622 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))))) EmptyLang!7555))))

(declare-fun bm!159632 () Bool)

(assert (=> bm!159632 (= call!159635 (derivativeStep!2124 (ite c!405484 (regTwo!15623 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))) (regTwo!15622 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))))) c!14016))))

(declare-fun b!2536127 () Bool)

(assert (=> b!2536127 (= e!1604240 (Union!7555 (Concat!12251 call!159636 (regTwo!15622 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))))) call!159635))))

(declare-fun bm!159633 () Bool)

(assert (=> bm!159633 (= call!159636 call!159638)))

(declare-fun b!2536128 () Bool)

(assert (=> b!2536128 (= c!405484 ((_ is Union!7555) (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340)))))))

(assert (=> b!2536128 (= e!1604239 e!1604242)))

(declare-fun b!2536129 () Bool)

(declare-fun c!405481 () Bool)

(assert (=> b!2536129 (= c!405481 (nullable!2472 (regOne!15622 (ite c!405440 (regTwo!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))))))))

(assert (=> b!2536129 (= e!1604241 e!1604240)))

(declare-fun b!2536130 () Bool)

(assert (=> b!2536130 (= e!1604238 EmptyLang!7555)))

(assert (= (and d!720623 c!405483) b!2536130))

(assert (= (and d!720623 (not c!405483)) b!2536123))

(assert (= (and b!2536123 c!405482) b!2536124))

(assert (= (and b!2536123 (not c!405482)) b!2536128))

(assert (= (and b!2536128 c!405484) b!2536125))

(assert (= (and b!2536128 (not c!405484)) b!2536122))

(assert (= (and b!2536122 c!405485) b!2536121))

(assert (= (and b!2536122 (not c!405485)) b!2536129))

(assert (= (and b!2536129 c!405481) b!2536127))

(assert (= (and b!2536129 (not c!405481)) b!2536126))

(assert (= (or b!2536127 b!2536126) bm!159633))

(assert (= (or b!2536121 bm!159633) bm!159631))

(assert (= (or b!2536125 b!2536127) bm!159632))

(assert (= (or b!2536125 bm!159631) bm!159630))

(declare-fun m!2884659 () Bool)

(assert (=> d!720623 m!2884659))

(declare-fun m!2884661 () Bool)

(assert (=> d!720623 m!2884661))

(declare-fun m!2884663 () Bool)

(assert (=> bm!159630 m!2884663))

(declare-fun m!2884665 () Bool)

(assert (=> bm!159632 m!2884665))

(declare-fun m!2884667 () Bool)

(assert (=> b!2536129 m!2884667))

(assert (=> bm!159585 d!720623))

(declare-fun d!720625 () Bool)

(declare-fun lt!901538 () Regex!7555)

(assert (=> d!720625 (validRegex!3181 lt!901538)))

(declare-fun e!1604243 () Regex!7555)

(assert (=> d!720625 (= lt!901538 e!1604243)))

(declare-fun c!405486 () Bool)

(assert (=> d!720625 (= c!405486 ((_ is Cons!29520) (t!211319 tl!4068)))))

(assert (=> d!720625 (validRegex!3181 (derivativeStep!2124 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) (h!34940 tl!4068)))))

(assert (=> d!720625 (= (derivative!250 (derivativeStep!2124 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) (h!34940 tl!4068)) (t!211319 tl!4068)) lt!901538)))

(declare-fun b!2536131 () Bool)

(assert (=> b!2536131 (= e!1604243 (derivative!250 (derivativeStep!2124 (derivativeStep!2124 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) (h!34940 tl!4068)) (h!34940 (t!211319 tl!4068))) (t!211319 (t!211319 tl!4068))))))

(declare-fun b!2536132 () Bool)

(assert (=> b!2536132 (= e!1604243 (derivativeStep!2124 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) (h!34940 tl!4068)))))

(assert (= (and d!720625 c!405486) b!2536131))

(assert (= (and d!720625 (not c!405486)) b!2536132))

(declare-fun m!2884669 () Bool)

(assert (=> d!720625 m!2884669))

(assert (=> d!720625 m!2884545))

(declare-fun m!2884671 () Bool)

(assert (=> d!720625 m!2884671))

(assert (=> b!2536131 m!2884545))

(declare-fun m!2884673 () Bool)

(assert (=> b!2536131 m!2884673))

(assert (=> b!2536131 m!2884673))

(declare-fun m!2884675 () Bool)

(assert (=> b!2536131 m!2884675))

(assert (=> b!2535911 d!720625))

(declare-fun e!1604247 () Regex!7555)

(declare-fun b!2536133 () Bool)

(declare-fun call!159642 () Regex!7555)

(assert (=> b!2536133 (= e!1604247 (Concat!12251 call!159642 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))

(declare-fun d!720627 () Bool)

(declare-fun lt!901539 () Regex!7555)

(assert (=> d!720627 (validRegex!3181 lt!901539)))

(declare-fun e!1604244 () Regex!7555)

(assert (=> d!720627 (= lt!901539 e!1604244)))

(declare-fun c!405489 () Bool)

(assert (=> d!720627 (= c!405489 (or ((_ is EmptyExpr!7555) (derivativeStep!2124 (regOne!15623 r!27340) c!14016)) ((_ is EmptyLang!7555) (derivativeStep!2124 (regOne!15623 r!27340) c!14016))))))

(assert (=> d!720627 (validRegex!3181 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))))

(assert (=> d!720627 (= (derivativeStep!2124 (derivativeStep!2124 (regOne!15623 r!27340) c!14016) (h!34940 tl!4068)) lt!901539)))

(declare-fun b!2536134 () Bool)

(declare-fun e!1604248 () Regex!7555)

(assert (=> b!2536134 (= e!1604248 e!1604247)))

(declare-fun c!405491 () Bool)

(assert (=> b!2536134 (= c!405491 ((_ is Star!7555) (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))

(declare-fun c!405490 () Bool)

(declare-fun bm!159634 () Bool)

(declare-fun call!159641 () Regex!7555)

(assert (=> bm!159634 (= call!159641 (derivativeStep!2124 (ite c!405490 (regOne!15623 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)) (ite c!405491 (reg!7884 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)) (regOne!15622 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))) (h!34940 tl!4068)))))

(declare-fun bm!159635 () Bool)

(assert (=> bm!159635 (= call!159642 call!159641)))

(declare-fun b!2536135 () Bool)

(declare-fun e!1604245 () Regex!7555)

(assert (=> b!2536135 (= e!1604244 e!1604245)))

(declare-fun c!405488 () Bool)

(assert (=> b!2536135 (= c!405488 ((_ is ElementMatch!7555) (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))

(declare-fun b!2536136 () Bool)

(assert (=> b!2536136 (= e!1604245 (ite (= (h!34940 tl!4068) (c!405335 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536137 () Bool)

(declare-fun call!159639 () Regex!7555)

(assert (=> b!2536137 (= e!1604248 (Union!7555 call!159641 call!159639))))

(declare-fun b!2536138 () Bool)

(declare-fun e!1604246 () Regex!7555)

(declare-fun call!159640 () Regex!7555)

(assert (=> b!2536138 (= e!1604246 (Union!7555 (Concat!12251 call!159640 (regTwo!15622 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))) EmptyLang!7555))))

(declare-fun bm!159636 () Bool)

(assert (=> bm!159636 (= call!159639 (derivativeStep!2124 (ite c!405490 (regTwo!15623 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)) (regTwo!15622 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))) (h!34940 tl!4068)))))

(declare-fun b!2536139 () Bool)

(assert (=> b!2536139 (= e!1604246 (Union!7555 (Concat!12251 call!159640 (regTwo!15622 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))) call!159639))))

(declare-fun bm!159637 () Bool)

(assert (=> bm!159637 (= call!159640 call!159642)))

(declare-fun b!2536140 () Bool)

(assert (=> b!2536140 (= c!405490 ((_ is Union!7555) (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))

(assert (=> b!2536140 (= e!1604245 e!1604248)))

(declare-fun b!2536141 () Bool)

(declare-fun c!405487 () Bool)

(assert (=> b!2536141 (= c!405487 (nullable!2472 (regOne!15622 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))))))

(assert (=> b!2536141 (= e!1604247 e!1604246)))

(declare-fun b!2536142 () Bool)

(assert (=> b!2536142 (= e!1604244 EmptyLang!7555)))

(assert (= (and d!720627 c!405489) b!2536142))

(assert (= (and d!720627 (not c!405489)) b!2536135))

(assert (= (and b!2536135 c!405488) b!2536136))

(assert (= (and b!2536135 (not c!405488)) b!2536140))

(assert (= (and b!2536140 c!405490) b!2536137))

(assert (= (and b!2536140 (not c!405490)) b!2536134))

(assert (= (and b!2536134 c!405491) b!2536133))

(assert (= (and b!2536134 (not c!405491)) b!2536141))

(assert (= (and b!2536141 c!405487) b!2536139))

(assert (= (and b!2536141 (not c!405487)) b!2536138))

(assert (= (or b!2536139 b!2536138) bm!159637))

(assert (= (or b!2536133 bm!159637) bm!159635))

(assert (= (or b!2536137 b!2536139) bm!159636))

(assert (= (or b!2536137 bm!159635) bm!159634))

(declare-fun m!2884677 () Bool)

(assert (=> d!720627 m!2884677))

(assert (=> d!720627 m!2884431))

(assert (=> d!720627 m!2884543))

(declare-fun m!2884679 () Bool)

(assert (=> bm!159634 m!2884679))

(declare-fun m!2884681 () Bool)

(assert (=> bm!159636 m!2884681))

(declare-fun m!2884683 () Bool)

(assert (=> b!2536141 m!2884683))

(assert (=> b!2535911 d!720627))

(declare-fun b!2536143 () Bool)

(declare-fun e!1604250 () Int)

(assert (=> b!2536143 (= e!1604250 0)))

(declare-fun call!159643 () Int)

(declare-fun bm!159638 () Bool)

(declare-fun c!405492 () Bool)

(assert (=> bm!159638 (= call!159643 (RegexPrimitiveSize!114 (ite c!405492 (regOne!15622 (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))) (regTwo!15623 (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))))))))

(declare-fun d!720629 () Bool)

(declare-fun lt!901540 () Int)

(assert (=> d!720629 (>= lt!901540 0)))

(declare-fun e!1604249 () Int)

(assert (=> d!720629 (= lt!901540 e!1604249)))

(declare-fun c!405493 () Bool)

(assert (=> d!720629 (= c!405493 ((_ is ElementMatch!7555) (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))))))

(assert (=> d!720629 (= (RegexPrimitiveSize!114 (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))) lt!901540)))

(declare-fun b!2536144 () Bool)

(declare-fun e!1604252 () Int)

(declare-fun e!1604251 () Int)

(assert (=> b!2536144 (= e!1604252 e!1604251)))

(declare-fun c!405495 () Bool)

(assert (=> b!2536144 (= c!405495 ((_ is Star!7555) (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))))))

(declare-fun b!2536145 () Bool)

(declare-fun c!405496 () Bool)

(assert (=> b!2536145 (= c!405496 ((_ is EmptyExpr!7555) (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))))))

(declare-fun e!1604253 () Int)

(assert (=> b!2536145 (= e!1604253 e!1604252)))

(declare-fun b!2536146 () Bool)

(declare-fun call!159644 () Int)

(assert (=> b!2536146 (= e!1604250 (+ 1 call!159644 call!159643))))

(declare-fun b!2536147 () Bool)

(assert (=> b!2536147 (= e!1604249 e!1604253)))

(assert (=> b!2536147 (= c!405492 ((_ is Concat!12251) (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))))))

(declare-fun b!2536148 () Bool)

(assert (=> b!2536148 (= e!1604251 (+ 1 call!159644))))

(declare-fun bm!159639 () Bool)

(declare-fun call!159645 () Int)

(assert (=> bm!159639 (= call!159644 call!159645)))

(declare-fun b!2536149 () Bool)

(declare-fun c!405494 () Bool)

(assert (=> b!2536149 (= c!405494 ((_ is EmptyLang!7555) (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))))))

(assert (=> b!2536149 (= e!1604251 e!1604250)))

(declare-fun b!2536150 () Bool)

(assert (=> b!2536150 (= e!1604253 (+ 1 call!159643 call!159645))))

(declare-fun bm!159640 () Bool)

(assert (=> bm!159640 (= call!159645 (RegexPrimitiveSize!114 (ite c!405492 (regTwo!15622 (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))) (ite c!405495 (reg!7884 (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340))))) (regOne!15623 (ite c!405424 (regTwo!15622 (regTwo!15623 r!27340)) (ite c!405427 (reg!7884 (regTwo!15623 r!27340)) (regOne!15623 (regTwo!15623 r!27340)))))))))))

(declare-fun b!2536151 () Bool)

(assert (=> b!2536151 (= e!1604252 0)))

(declare-fun b!2536152 () Bool)

(assert (=> b!2536152 (= e!1604249 1)))

(assert (= (and d!720629 c!405493) b!2536152))

(assert (= (and d!720629 (not c!405493)) b!2536147))

(assert (= (and b!2536147 c!405492) b!2536150))

(assert (= (and b!2536147 (not c!405492)) b!2536145))

(assert (= (and b!2536145 c!405496) b!2536151))

(assert (= (and b!2536145 (not c!405496)) b!2536144))

(assert (= (and b!2536144 c!405495) b!2536148))

(assert (= (and b!2536144 (not c!405495)) b!2536149))

(assert (= (and b!2536149 c!405494) b!2536143))

(assert (= (and b!2536149 (not c!405494)) b!2536146))

(assert (= (or b!2536148 b!2536146) bm!159639))

(assert (= (or b!2536150 bm!159639) bm!159640))

(assert (= (or b!2536150 b!2536146) bm!159638))

(declare-fun m!2884685 () Bool)

(assert (=> bm!159638 m!2884685))

(declare-fun m!2884687 () Bool)

(assert (=> bm!159640 m!2884687))

(assert (=> bm!159570 d!720629))

(declare-fun bm!159641 () Bool)

(declare-fun call!159646 () Bool)

(declare-fun call!159647 () Bool)

(assert (=> bm!159641 (= call!159646 call!159647)))

(declare-fun d!720631 () Bool)

(declare-fun res!1069692 () Bool)

(declare-fun e!1604258 () Bool)

(assert (=> d!720631 (=> res!1069692 e!1604258)))

(assert (=> d!720631 (= res!1069692 ((_ is ElementMatch!7555) lt!901529))))

(assert (=> d!720631 (= (validRegex!3181 lt!901529) e!1604258)))

(declare-fun b!2536153 () Bool)

(declare-fun e!1604259 () Bool)

(assert (=> b!2536153 (= e!1604259 call!159646)))

(declare-fun b!2536154 () Bool)

(declare-fun e!1604254 () Bool)

(assert (=> b!2536154 (= e!1604254 e!1604259)))

(declare-fun res!1069693 () Bool)

(assert (=> b!2536154 (=> (not res!1069693) (not e!1604259))))

(declare-fun call!159648 () Bool)

(assert (=> b!2536154 (= res!1069693 call!159648)))

(declare-fun b!2536155 () Bool)

(declare-fun e!1604260 () Bool)

(assert (=> b!2536155 (= e!1604260 call!159647)))

(declare-fun b!2536156 () Bool)

(declare-fun res!1069691 () Bool)

(assert (=> b!2536156 (=> res!1069691 e!1604254)))

(assert (=> b!2536156 (= res!1069691 (not ((_ is Concat!12251) lt!901529)))))

(declare-fun e!1604256 () Bool)

(assert (=> b!2536156 (= e!1604256 e!1604254)))

(declare-fun b!2536157 () Bool)

(declare-fun e!1604255 () Bool)

(assert (=> b!2536157 (= e!1604255 e!1604256)))

(declare-fun c!405498 () Bool)

(assert (=> b!2536157 (= c!405498 ((_ is Union!7555) lt!901529))))

(declare-fun b!2536158 () Bool)

(declare-fun res!1069695 () Bool)

(declare-fun e!1604257 () Bool)

(assert (=> b!2536158 (=> (not res!1069695) (not e!1604257))))

(assert (=> b!2536158 (= res!1069695 call!159646)))

(assert (=> b!2536158 (= e!1604256 e!1604257)))

(declare-fun b!2536159 () Bool)

(assert (=> b!2536159 (= e!1604258 e!1604255)))

(declare-fun c!405497 () Bool)

(assert (=> b!2536159 (= c!405497 ((_ is Star!7555) lt!901529))))

(declare-fun b!2536160 () Bool)

(assert (=> b!2536160 (= e!1604257 call!159648)))

(declare-fun bm!159642 () Bool)

(assert (=> bm!159642 (= call!159648 (validRegex!3181 (ite c!405498 (regTwo!15623 lt!901529) (regOne!15622 lt!901529))))))

(declare-fun bm!159643 () Bool)

(assert (=> bm!159643 (= call!159647 (validRegex!3181 (ite c!405497 (reg!7884 lt!901529) (ite c!405498 (regOne!15623 lt!901529) (regTwo!15622 lt!901529)))))))

(declare-fun b!2536161 () Bool)

(assert (=> b!2536161 (= e!1604255 e!1604260)))

(declare-fun res!1069694 () Bool)

(assert (=> b!2536161 (= res!1069694 (not (nullable!2472 (reg!7884 lt!901529))))))

(assert (=> b!2536161 (=> (not res!1069694) (not e!1604260))))

(assert (= (and d!720631 (not res!1069692)) b!2536159))

(assert (= (and b!2536159 c!405497) b!2536161))

(assert (= (and b!2536159 (not c!405497)) b!2536157))

(assert (= (and b!2536161 res!1069694) b!2536155))

(assert (= (and b!2536157 c!405498) b!2536158))

(assert (= (and b!2536157 (not c!405498)) b!2536156))

(assert (= (and b!2536158 res!1069695) b!2536160))

(assert (= (and b!2536156 (not res!1069691)) b!2536154))

(assert (= (and b!2536154 res!1069693) b!2536153))

(assert (= (or b!2536158 b!2536153) bm!159641))

(assert (= (or b!2536160 b!2536154) bm!159642))

(assert (= (or b!2536155 bm!159641) bm!159643))

(declare-fun m!2884689 () Bool)

(assert (=> bm!159642 m!2884689))

(declare-fun m!2884691 () Bool)

(assert (=> bm!159643 m!2884691))

(declare-fun m!2884693 () Bool)

(assert (=> b!2536161 m!2884693))

(assert (=> d!720591 d!720631))

(declare-fun bm!159644 () Bool)

(declare-fun call!159649 () Bool)

(declare-fun call!159650 () Bool)

(assert (=> bm!159644 (= call!159649 call!159650)))

(declare-fun d!720633 () Bool)

(declare-fun res!1069697 () Bool)

(declare-fun e!1604265 () Bool)

(assert (=> d!720633 (=> res!1069697 e!1604265)))

(assert (=> d!720633 (= res!1069697 ((_ is ElementMatch!7555) (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))

(assert (=> d!720633 (= (validRegex!3181 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)) e!1604265)))

(declare-fun b!2536162 () Bool)

(declare-fun e!1604266 () Bool)

(assert (=> b!2536162 (= e!1604266 call!159649)))

(declare-fun b!2536163 () Bool)

(declare-fun e!1604261 () Bool)

(assert (=> b!2536163 (= e!1604261 e!1604266)))

(declare-fun res!1069698 () Bool)

(assert (=> b!2536163 (=> (not res!1069698) (not e!1604266))))

(declare-fun call!159651 () Bool)

(assert (=> b!2536163 (= res!1069698 call!159651)))

(declare-fun b!2536164 () Bool)

(declare-fun e!1604267 () Bool)

(assert (=> b!2536164 (= e!1604267 call!159650)))

(declare-fun b!2536165 () Bool)

(declare-fun res!1069696 () Bool)

(assert (=> b!2536165 (=> res!1069696 e!1604261)))

(assert (=> b!2536165 (= res!1069696 (not ((_ is Concat!12251) (derivativeStep!2124 (regOne!15623 r!27340) c!14016))))))

(declare-fun e!1604263 () Bool)

(assert (=> b!2536165 (= e!1604263 e!1604261)))

(declare-fun b!2536166 () Bool)

(declare-fun e!1604262 () Bool)

(assert (=> b!2536166 (= e!1604262 e!1604263)))

(declare-fun c!405500 () Bool)

(assert (=> b!2536166 (= c!405500 ((_ is Union!7555) (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))

(declare-fun b!2536167 () Bool)

(declare-fun res!1069700 () Bool)

(declare-fun e!1604264 () Bool)

(assert (=> b!2536167 (=> (not res!1069700) (not e!1604264))))

(assert (=> b!2536167 (= res!1069700 call!159649)))

(assert (=> b!2536167 (= e!1604263 e!1604264)))

(declare-fun b!2536168 () Bool)

(assert (=> b!2536168 (= e!1604265 e!1604262)))

(declare-fun c!405499 () Bool)

(assert (=> b!2536168 (= c!405499 ((_ is Star!7555) (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))

(declare-fun b!2536169 () Bool)

(assert (=> b!2536169 (= e!1604264 call!159651)))

(declare-fun bm!159645 () Bool)

(assert (=> bm!159645 (= call!159651 (validRegex!3181 (ite c!405500 (regTwo!15623 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)) (regOne!15622 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))))

(declare-fun bm!159646 () Bool)

(assert (=> bm!159646 (= call!159650 (validRegex!3181 (ite c!405499 (reg!7884 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)) (ite c!405500 (regOne!15623 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)) (regTwo!15622 (derivativeStep!2124 (regOne!15623 r!27340) c!14016))))))))

(declare-fun b!2536170 () Bool)

(assert (=> b!2536170 (= e!1604262 e!1604267)))

(declare-fun res!1069699 () Bool)

(assert (=> b!2536170 (= res!1069699 (not (nullable!2472 (reg!7884 (derivativeStep!2124 (regOne!15623 r!27340) c!14016)))))))

(assert (=> b!2536170 (=> (not res!1069699) (not e!1604267))))

(assert (= (and d!720633 (not res!1069697)) b!2536168))

(assert (= (and b!2536168 c!405499) b!2536170))

(assert (= (and b!2536168 (not c!405499)) b!2536166))

(assert (= (and b!2536170 res!1069699) b!2536164))

(assert (= (and b!2536166 c!405500) b!2536167))

(assert (= (and b!2536166 (not c!405500)) b!2536165))

(assert (= (and b!2536167 res!1069700) b!2536169))

(assert (= (and b!2536165 (not res!1069696)) b!2536163))

(assert (= (and b!2536163 res!1069698) b!2536162))

(assert (= (or b!2536167 b!2536162) bm!159644))

(assert (= (or b!2536169 b!2536163) bm!159645))

(assert (= (or b!2536164 bm!159644) bm!159646))

(declare-fun m!2884695 () Bool)

(assert (=> bm!159645 m!2884695))

(declare-fun m!2884697 () Bool)

(assert (=> bm!159646 m!2884697))

(declare-fun m!2884699 () Bool)

(assert (=> b!2536170 m!2884699))

(assert (=> d!720591 d!720633))

(declare-fun d!720635 () Bool)

(assert (=> d!720635 (= (nullable!2472 (regOne!15622 (regOne!15623 r!27340))) (nullableFct!704 (regOne!15622 (regOne!15623 r!27340))))))

(declare-fun bs!469292 () Bool)

(assert (= bs!469292 d!720635))

(declare-fun m!2884701 () Bool)

(assert (=> bs!469292 m!2884701))

(assert (=> b!2535921 d!720635))

(declare-fun d!720637 () Bool)

(declare-fun lt!901541 () Regex!7555)

(assert (=> d!720637 (validRegex!3181 lt!901541)))

(declare-fun e!1604268 () Regex!7555)

(assert (=> d!720637 (= lt!901541 e!1604268)))

(declare-fun c!405501 () Bool)

(assert (=> d!720637 (= c!405501 ((_ is Cons!29520) (t!211319 tl!4068)))))

(assert (=> d!720637 (validRegex!3181 (derivativeStep!2124 (derivativeStep!2124 r!27340 c!14016) (h!34940 tl!4068)))))

(assert (=> d!720637 (= (derivative!250 (derivativeStep!2124 (derivativeStep!2124 r!27340 c!14016) (h!34940 tl!4068)) (t!211319 tl!4068)) lt!901541)))

(declare-fun b!2536171 () Bool)

(assert (=> b!2536171 (= e!1604268 (derivative!250 (derivativeStep!2124 (derivativeStep!2124 (derivativeStep!2124 r!27340 c!14016) (h!34940 tl!4068)) (h!34940 (t!211319 tl!4068))) (t!211319 (t!211319 tl!4068))))))

(declare-fun b!2536172 () Bool)

(assert (=> b!2536172 (= e!1604268 (derivativeStep!2124 (derivativeStep!2124 r!27340 c!14016) (h!34940 tl!4068)))))

(assert (= (and d!720637 c!405501) b!2536171))

(assert (= (and d!720637 (not c!405501)) b!2536172))

(declare-fun m!2884703 () Bool)

(assert (=> d!720637 m!2884703))

(assert (=> d!720637 m!2884565))

(declare-fun m!2884705 () Bool)

(assert (=> d!720637 m!2884705))

(assert (=> b!2536171 m!2884565))

(declare-fun m!2884707 () Bool)

(assert (=> b!2536171 m!2884707))

(assert (=> b!2536171 m!2884707))

(declare-fun m!2884709 () Bool)

(assert (=> b!2536171 m!2884709))

(assert (=> b!2535923 d!720637))

(declare-fun e!1604272 () Regex!7555)

(declare-fun call!159655 () Regex!7555)

(declare-fun b!2536173 () Bool)

(assert (=> b!2536173 (= e!1604272 (Concat!12251 call!159655 (derivativeStep!2124 r!27340 c!14016)))))

(declare-fun d!720639 () Bool)

(declare-fun lt!901542 () Regex!7555)

(assert (=> d!720639 (validRegex!3181 lt!901542)))

(declare-fun e!1604269 () Regex!7555)

(assert (=> d!720639 (= lt!901542 e!1604269)))

(declare-fun c!405504 () Bool)

(assert (=> d!720639 (= c!405504 (or ((_ is EmptyExpr!7555) (derivativeStep!2124 r!27340 c!14016)) ((_ is EmptyLang!7555) (derivativeStep!2124 r!27340 c!14016))))))

(assert (=> d!720639 (validRegex!3181 (derivativeStep!2124 r!27340 c!14016))))

(assert (=> d!720639 (= (derivativeStep!2124 (derivativeStep!2124 r!27340 c!14016) (h!34940 tl!4068)) lt!901542)))

(declare-fun b!2536174 () Bool)

(declare-fun e!1604273 () Regex!7555)

(assert (=> b!2536174 (= e!1604273 e!1604272)))

(declare-fun c!405506 () Bool)

(assert (=> b!2536174 (= c!405506 ((_ is Star!7555) (derivativeStep!2124 r!27340 c!14016)))))

(declare-fun call!159654 () Regex!7555)

(declare-fun c!405505 () Bool)

(declare-fun bm!159647 () Bool)

(assert (=> bm!159647 (= call!159654 (derivativeStep!2124 (ite c!405505 (regOne!15623 (derivativeStep!2124 r!27340 c!14016)) (ite c!405506 (reg!7884 (derivativeStep!2124 r!27340 c!14016)) (regOne!15622 (derivativeStep!2124 r!27340 c!14016)))) (h!34940 tl!4068)))))

(declare-fun bm!159648 () Bool)

(assert (=> bm!159648 (= call!159655 call!159654)))

(declare-fun b!2536175 () Bool)

(declare-fun e!1604270 () Regex!7555)

(assert (=> b!2536175 (= e!1604269 e!1604270)))

(declare-fun c!405503 () Bool)

(assert (=> b!2536175 (= c!405503 ((_ is ElementMatch!7555) (derivativeStep!2124 r!27340 c!14016)))))

(declare-fun b!2536176 () Bool)

(assert (=> b!2536176 (= e!1604270 (ite (= (h!34940 tl!4068) (c!405335 (derivativeStep!2124 r!27340 c!14016))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536177 () Bool)

(declare-fun call!159652 () Regex!7555)

(assert (=> b!2536177 (= e!1604273 (Union!7555 call!159654 call!159652))))

(declare-fun call!159653 () Regex!7555)

(declare-fun e!1604271 () Regex!7555)

(declare-fun b!2536178 () Bool)

(assert (=> b!2536178 (= e!1604271 (Union!7555 (Concat!12251 call!159653 (regTwo!15622 (derivativeStep!2124 r!27340 c!14016))) EmptyLang!7555))))

(declare-fun bm!159649 () Bool)

(assert (=> bm!159649 (= call!159652 (derivativeStep!2124 (ite c!405505 (regTwo!15623 (derivativeStep!2124 r!27340 c!14016)) (regTwo!15622 (derivativeStep!2124 r!27340 c!14016))) (h!34940 tl!4068)))))

(declare-fun b!2536179 () Bool)

(assert (=> b!2536179 (= e!1604271 (Union!7555 (Concat!12251 call!159653 (regTwo!15622 (derivativeStep!2124 r!27340 c!14016))) call!159652))))

(declare-fun bm!159650 () Bool)

(assert (=> bm!159650 (= call!159653 call!159655)))

(declare-fun b!2536180 () Bool)

(assert (=> b!2536180 (= c!405505 ((_ is Union!7555) (derivativeStep!2124 r!27340 c!14016)))))

(assert (=> b!2536180 (= e!1604270 e!1604273)))

(declare-fun b!2536181 () Bool)

(declare-fun c!405502 () Bool)

(assert (=> b!2536181 (= c!405502 (nullable!2472 (regOne!15622 (derivativeStep!2124 r!27340 c!14016))))))

(assert (=> b!2536181 (= e!1604272 e!1604271)))

(declare-fun b!2536182 () Bool)

(assert (=> b!2536182 (= e!1604269 EmptyLang!7555)))

(assert (= (and d!720639 c!405504) b!2536182))

(assert (= (and d!720639 (not c!405504)) b!2536175))

(assert (= (and b!2536175 c!405503) b!2536176))

(assert (= (and b!2536175 (not c!405503)) b!2536180))

(assert (= (and b!2536180 c!405505) b!2536177))

(assert (= (and b!2536180 (not c!405505)) b!2536174))

(assert (= (and b!2536174 c!405506) b!2536173))

(assert (= (and b!2536174 (not c!405506)) b!2536181))

(assert (= (and b!2536181 c!405502) b!2536179))

(assert (= (and b!2536181 (not c!405502)) b!2536178))

(assert (= (or b!2536179 b!2536178) bm!159650))

(assert (= (or b!2536173 bm!159650) bm!159648))

(assert (= (or b!2536177 b!2536179) bm!159649))

(assert (= (or b!2536177 bm!159648) bm!159647))

(declare-fun m!2884711 () Bool)

(assert (=> d!720639 m!2884711))

(assert (=> d!720639 m!2884417))

(assert (=> d!720639 m!2884563))

(declare-fun m!2884713 () Bool)

(assert (=> bm!159647 m!2884713))

(declare-fun m!2884715 () Bool)

(assert (=> bm!159649 m!2884715))

(declare-fun m!2884717 () Bool)

(assert (=> b!2536181 m!2884717))

(assert (=> b!2535923 d!720639))

(declare-fun call!159659 () Regex!7555)

(declare-fun b!2536183 () Bool)

(declare-fun e!1604277 () Regex!7555)

(assert (=> b!2536183 (= e!1604277 (Concat!12251 call!159659 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))))))

(declare-fun d!720641 () Bool)

(declare-fun lt!901543 () Regex!7555)

(assert (=> d!720641 (validRegex!3181 lt!901543)))

(declare-fun e!1604274 () Regex!7555)

(assert (=> d!720641 (= lt!901543 e!1604274)))

(declare-fun c!405509 () Bool)

(assert (=> d!720641 (= c!405509 (or ((_ is EmptyExpr!7555) (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))) ((_ is EmptyLang!7555) (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)))))))

(assert (=> d!720641 (validRegex!3181 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)))))

(assert (=> d!720641 (= (derivativeStep!2124 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)) c!14016) lt!901543)))

(declare-fun b!2536184 () Bool)

(declare-fun e!1604278 () Regex!7555)

(assert (=> b!2536184 (= e!1604278 e!1604277)))

(declare-fun c!405511 () Bool)

(assert (=> b!2536184 (= c!405511 ((_ is Star!7555) (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))))))

(declare-fun bm!159651 () Bool)

(declare-fun c!405510 () Bool)

(declare-fun call!159658 () Regex!7555)

(assert (=> bm!159651 (= call!159658 (derivativeStep!2124 (ite c!405510 (regOne!15623 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))) (ite c!405511 (reg!7884 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))) (regOne!15622 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))))) c!14016))))

(declare-fun bm!159652 () Bool)

(assert (=> bm!159652 (= call!159659 call!159658)))

(declare-fun b!2536185 () Bool)

(declare-fun e!1604275 () Regex!7555)

(assert (=> b!2536185 (= e!1604274 e!1604275)))

(declare-fun c!405508 () Bool)

(assert (=> b!2536185 (= c!405508 ((_ is ElementMatch!7555) (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))))))

(declare-fun b!2536186 () Bool)

(assert (=> b!2536186 (= e!1604275 (ite (= c!14016 (c!405335 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536187 () Bool)

(declare-fun call!159656 () Regex!7555)

(assert (=> b!2536187 (= e!1604278 (Union!7555 call!159658 call!159656))))

(declare-fun e!1604276 () Regex!7555)

(declare-fun b!2536188 () Bool)

(declare-fun call!159657 () Regex!7555)

(assert (=> b!2536188 (= e!1604276 (Union!7555 (Concat!12251 call!159657 (regTwo!15622 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)))) EmptyLang!7555))))

(declare-fun bm!159653 () Bool)

(assert (=> bm!159653 (= call!159656 (derivativeStep!2124 (ite c!405510 (regTwo!15623 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))) (regTwo!15622 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)))) c!14016))))

(declare-fun b!2536189 () Bool)

(assert (=> b!2536189 (= e!1604276 (Union!7555 (Concat!12251 call!159657 (regTwo!15622 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)))) call!159656))))

(declare-fun bm!159654 () Bool)

(assert (=> bm!159654 (= call!159657 call!159659)))

(declare-fun b!2536190 () Bool)

(assert (=> b!2536190 (= c!405510 ((_ is Union!7555) (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340))))))

(assert (=> b!2536190 (= e!1604275 e!1604278)))

(declare-fun b!2536191 () Bool)

(declare-fun c!405507 () Bool)

(assert (=> b!2536191 (= c!405507 (nullable!2472 (regOne!15622 (ite c!405448 (regTwo!15623 r!27340) (regTwo!15622 r!27340)))))))

(assert (=> b!2536191 (= e!1604277 e!1604276)))

(declare-fun b!2536192 () Bool)

(assert (=> b!2536192 (= e!1604274 EmptyLang!7555)))

(assert (= (and d!720641 c!405509) b!2536192))

(assert (= (and d!720641 (not c!405509)) b!2536185))

(assert (= (and b!2536185 c!405508) b!2536186))

(assert (= (and b!2536185 (not c!405508)) b!2536190))

(assert (= (and b!2536190 c!405510) b!2536187))

(assert (= (and b!2536190 (not c!405510)) b!2536184))

(assert (= (and b!2536184 c!405511) b!2536183))

(assert (= (and b!2536184 (not c!405511)) b!2536191))

(assert (= (and b!2536191 c!405507) b!2536189))

(assert (= (and b!2536191 (not c!405507)) b!2536188))

(assert (= (or b!2536189 b!2536188) bm!159654))

(assert (= (or b!2536183 bm!159654) bm!159652))

(assert (= (or b!2536187 b!2536189) bm!159653))

(assert (= (or b!2536187 bm!159652) bm!159651))

(declare-fun m!2884719 () Bool)

(assert (=> d!720641 m!2884719))

(declare-fun m!2884721 () Bool)

(assert (=> d!720641 m!2884721))

(declare-fun m!2884723 () Bool)

(assert (=> bm!159651 m!2884723))

(declare-fun m!2884725 () Bool)

(assert (=> bm!159653 m!2884725))

(declare-fun m!2884727 () Bool)

(assert (=> b!2536191 m!2884727))

(assert (=> bm!159592 d!720641))

(declare-fun b!2536193 () Bool)

(declare-fun e!1604280 () Int)

(assert (=> b!2536193 (= e!1604280 0)))

(declare-fun c!405512 () Bool)

(declare-fun bm!159655 () Bool)

(declare-fun call!159660 () Int)

(assert (=> bm!159655 (= call!159660 (RegexPrimitiveSize!114 (ite c!405512 (regOne!15622 (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))) (regTwo!15623 (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))))))))

(declare-fun d!720643 () Bool)

(declare-fun lt!901544 () Int)

(assert (=> d!720643 (>= lt!901544 0)))

(declare-fun e!1604279 () Int)

(assert (=> d!720643 (= lt!901544 e!1604279)))

(declare-fun c!405513 () Bool)

(assert (=> d!720643 (= c!405513 ((_ is ElementMatch!7555) (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))))))

(assert (=> d!720643 (= (RegexPrimitiveSize!114 (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))) lt!901544)))

(declare-fun b!2536194 () Bool)

(declare-fun e!1604282 () Int)

(declare-fun e!1604281 () Int)

(assert (=> b!2536194 (= e!1604282 e!1604281)))

(declare-fun c!405515 () Bool)

(assert (=> b!2536194 (= c!405515 ((_ is Star!7555) (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))))))

(declare-fun b!2536195 () Bool)

(declare-fun c!405516 () Bool)

(assert (=> b!2536195 (= c!405516 ((_ is EmptyExpr!7555) (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))))))

(declare-fun e!1604283 () Int)

(assert (=> b!2536195 (= e!1604283 e!1604282)))

(declare-fun b!2536196 () Bool)

(declare-fun call!159661 () Int)

(assert (=> b!2536196 (= e!1604280 (+ 1 call!159661 call!159660))))

(declare-fun b!2536197 () Bool)

(assert (=> b!2536197 (= e!1604279 e!1604283)))

(assert (=> b!2536197 (= c!405512 ((_ is Concat!12251) (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))))))

(declare-fun b!2536198 () Bool)

(assert (=> b!2536198 (= e!1604281 (+ 1 call!159661))))

(declare-fun bm!159656 () Bool)

(declare-fun call!159662 () Int)

(assert (=> bm!159656 (= call!159661 call!159662)))

(declare-fun b!2536199 () Bool)

(declare-fun c!405514 () Bool)

(assert (=> b!2536199 (= c!405514 ((_ is EmptyLang!7555) (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))))))

(assert (=> b!2536199 (= e!1604281 e!1604280)))

(declare-fun b!2536200 () Bool)

(assert (=> b!2536200 (= e!1604283 (+ 1 call!159660 call!159662))))

(declare-fun bm!159657 () Bool)

(assert (=> bm!159657 (= call!159662 (RegexPrimitiveSize!114 (ite c!405512 (regTwo!15622 (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))) (ite c!405515 (reg!7884 (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340))) (regOne!15623 (ite c!405429 (regOne!15622 r!27340) (regTwo!15623 r!27340)))))))))

(declare-fun b!2536201 () Bool)

(assert (=> b!2536201 (= e!1604282 0)))

(declare-fun b!2536202 () Bool)

(assert (=> b!2536202 (= e!1604279 1)))

(assert (= (and d!720643 c!405513) b!2536202))

(assert (= (and d!720643 (not c!405513)) b!2536197))

(assert (= (and b!2536197 c!405512) b!2536200))

(assert (= (and b!2536197 (not c!405512)) b!2536195))

(assert (= (and b!2536195 c!405516) b!2536201))

(assert (= (and b!2536195 (not c!405516)) b!2536194))

(assert (= (and b!2536194 c!405515) b!2536198))

(assert (= (and b!2536194 (not c!405515)) b!2536199))

(assert (= (and b!2536199 c!405514) b!2536193))

(assert (= (and b!2536199 (not c!405514)) b!2536196))

(assert (= (or b!2536198 b!2536196) bm!159656))

(assert (= (or b!2536200 bm!159656) bm!159657))

(assert (= (or b!2536200 b!2536196) bm!159655))

(declare-fun m!2884729 () Bool)

(assert (=> bm!159655 m!2884729))

(declare-fun m!2884731 () Bool)

(assert (=> bm!159657 m!2884731))

(assert (=> bm!159575 d!720643))

(declare-fun d!720645 () Bool)

(assert (=> d!720645 (= (nullable!2472 (regOne!15622 (regTwo!15623 r!27340))) (nullableFct!704 (regOne!15622 (regTwo!15623 r!27340))))))

(declare-fun bs!469293 () Bool)

(assert (= bs!469293 d!720645))

(declare-fun m!2884733 () Bool)

(assert (=> bs!469293 m!2884733))

(assert (=> b!2535741 d!720645))

(declare-fun bm!159658 () Bool)

(declare-fun call!159663 () Bool)

(declare-fun call!159664 () Bool)

(assert (=> bm!159658 (= call!159663 call!159664)))

(declare-fun d!720647 () Bool)

(declare-fun res!1069702 () Bool)

(declare-fun e!1604288 () Bool)

(assert (=> d!720647 (=> res!1069702 e!1604288)))

(assert (=> d!720647 (= res!1069702 ((_ is ElementMatch!7555) (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))))))

(assert (=> d!720647 (= (validRegex!3181 (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))) e!1604288)))

(declare-fun b!2536203 () Bool)

(declare-fun e!1604289 () Bool)

(assert (=> b!2536203 (= e!1604289 call!159663)))

(declare-fun b!2536204 () Bool)

(declare-fun e!1604284 () Bool)

(assert (=> b!2536204 (= e!1604284 e!1604289)))

(declare-fun res!1069703 () Bool)

(assert (=> b!2536204 (=> (not res!1069703) (not e!1604289))))

(declare-fun call!159665 () Bool)

(assert (=> b!2536204 (= res!1069703 call!159665)))

(declare-fun b!2536205 () Bool)

(declare-fun e!1604290 () Bool)

(assert (=> b!2536205 (= e!1604290 call!159664)))

(declare-fun b!2536206 () Bool)

(declare-fun res!1069701 () Bool)

(assert (=> b!2536206 (=> res!1069701 e!1604284)))

(assert (=> b!2536206 (= res!1069701 (not ((_ is Concat!12251) (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340)))))))

(declare-fun e!1604286 () Bool)

(assert (=> b!2536206 (= e!1604286 e!1604284)))

(declare-fun b!2536207 () Bool)

(declare-fun e!1604285 () Bool)

(assert (=> b!2536207 (= e!1604285 e!1604286)))

(declare-fun c!405518 () Bool)

(assert (=> b!2536207 (= c!405518 ((_ is Union!7555) (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))))))

(declare-fun b!2536208 () Bool)

(declare-fun res!1069705 () Bool)

(declare-fun e!1604287 () Bool)

(assert (=> b!2536208 (=> (not res!1069705) (not e!1604287))))

(assert (=> b!2536208 (= res!1069705 call!159663)))

(assert (=> b!2536208 (= e!1604286 e!1604287)))

(declare-fun b!2536209 () Bool)

(assert (=> b!2536209 (= e!1604288 e!1604285)))

(declare-fun c!405517 () Bool)

(assert (=> b!2536209 (= c!405517 ((_ is Star!7555) (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))))))

(declare-fun b!2536210 () Bool)

(assert (=> b!2536210 (= e!1604287 call!159665)))

(declare-fun bm!159659 () Bool)

(assert (=> bm!159659 (= call!159665 (validRegex!3181 (ite c!405518 (regTwo!15623 (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))) (regOne!15622 (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))))))))

(declare-fun bm!159660 () Bool)

(assert (=> bm!159660 (= call!159664 (validRegex!3181 (ite c!405517 (reg!7884 (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))) (ite c!405518 (regOne!15623 (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))) (regTwo!15622 (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340)))))))))

(declare-fun b!2536211 () Bool)

(assert (=> b!2536211 (= e!1604285 e!1604290)))

(declare-fun res!1069704 () Bool)

(assert (=> b!2536211 (= res!1069704 (not (nullable!2472 (reg!7884 (ite c!405399 (regTwo!15623 r!27340) (regOne!15622 r!27340))))))))

(assert (=> b!2536211 (=> (not res!1069704) (not e!1604290))))

(assert (= (and d!720647 (not res!1069702)) b!2536209))

(assert (= (and b!2536209 c!405517) b!2536211))

(assert (= (and b!2536209 (not c!405517)) b!2536207))

(assert (= (and b!2536211 res!1069704) b!2536205))

(assert (= (and b!2536207 c!405518) b!2536208))

(assert (= (and b!2536207 (not c!405518)) b!2536206))

(assert (= (and b!2536208 res!1069705) b!2536210))

(assert (= (and b!2536206 (not res!1069701)) b!2536204))

(assert (= (and b!2536204 res!1069703) b!2536203))

(assert (= (or b!2536208 b!2536203) bm!159658))

(assert (= (or b!2536210 b!2536204) bm!159659))

(assert (= (or b!2536205 bm!159658) bm!159660))

(declare-fun m!2884735 () Bool)

(assert (=> bm!159659 m!2884735))

(declare-fun m!2884737 () Bool)

(assert (=> bm!159660 m!2884737))

(declare-fun m!2884739 () Bool)

(assert (=> b!2536211 m!2884739))

(assert (=> bm!159548 d!720647))

(declare-fun d!720649 () Bool)

(assert (=> d!720649 (= (nullable!2472 (reg!7884 (regTwo!15623 r!27340))) (nullableFct!704 (reg!7884 (regTwo!15623 r!27340))))))

(declare-fun bs!469294 () Bool)

(assert (= bs!469294 d!720649))

(declare-fun m!2884741 () Bool)

(assert (=> bs!469294 m!2884741))

(assert (=> b!2535910 d!720649))

(declare-fun b!2536212 () Bool)

(declare-fun e!1604294 () Bool)

(declare-fun e!1604295 () Bool)

(assert (=> b!2536212 (= e!1604294 e!1604295)))

(declare-fun res!1069709 () Bool)

(declare-fun call!159666 () Bool)

(assert (=> b!2536212 (= res!1069709 call!159666)))

(assert (=> b!2536212 (=> res!1069709 e!1604295)))

(declare-fun b!2536213 () Bool)

(declare-fun e!1604292 () Bool)

(assert (=> b!2536213 (= e!1604294 e!1604292)))

(declare-fun res!1069707 () Bool)

(declare-fun call!159667 () Bool)

(assert (=> b!2536213 (= res!1069707 call!159667)))

(assert (=> b!2536213 (=> (not res!1069707) (not e!1604292))))

(declare-fun d!720651 () Bool)

(declare-fun res!1069706 () Bool)

(declare-fun e!1604291 () Bool)

(assert (=> d!720651 (=> res!1069706 e!1604291)))

(assert (=> d!720651 (= res!1069706 ((_ is EmptyExpr!7555) (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)))))

(assert (=> d!720651 (= (nullableFct!704 (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)) e!1604291)))

(declare-fun c!405519 () Bool)

(declare-fun bm!159661 () Bool)

(assert (=> bm!159661 (= call!159667 (nullable!2472 (ite c!405519 (regTwo!15623 (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)) (regOne!15622 (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2536214 () Bool)

(declare-fun e!1604293 () Bool)

(assert (=> b!2536214 (= e!1604291 e!1604293)))

(declare-fun res!1069708 () Bool)

(assert (=> b!2536214 (=> (not res!1069708) (not e!1604293))))

(assert (=> b!2536214 (= res!1069708 (and (not ((_ is EmptyLang!7555) (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068))) (not ((_ is ElementMatch!7555) (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2536215 () Bool)

(assert (=> b!2536215 (= e!1604292 call!159666)))

(declare-fun bm!159662 () Bool)

(assert (=> bm!159662 (= call!159666 (nullable!2472 (ite c!405519 (regOne!15623 (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)) (regTwo!15622 (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)))))))

(declare-fun b!2536216 () Bool)

(assert (=> b!2536216 (= e!1604295 call!159667)))

(declare-fun b!2536217 () Bool)

(declare-fun e!1604296 () Bool)

(assert (=> b!2536217 (= e!1604293 e!1604296)))

(declare-fun res!1069710 () Bool)

(assert (=> b!2536217 (=> res!1069710 e!1604296)))

(assert (=> b!2536217 (= res!1069710 ((_ is Star!7555) (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)))))

(declare-fun b!2536218 () Bool)

(assert (=> b!2536218 (= e!1604296 e!1604294)))

(assert (=> b!2536218 (= c!405519 ((_ is Union!7555) (derivative!250 (derivativeStep!2124 (regTwo!15623 r!27340) c!14016) tl!4068)))))

(assert (= (and d!720651 (not res!1069706)) b!2536214))

(assert (= (and b!2536214 res!1069708) b!2536217))

(assert (= (and b!2536217 (not res!1069710)) b!2536218))

(assert (= (and b!2536218 c!405519) b!2536212))

(assert (= (and b!2536218 (not c!405519)) b!2536213))

(assert (= (and b!2536212 (not res!1069709)) b!2536216))

(assert (= (and b!2536213 res!1069707) b!2536215))

(assert (= (or b!2536216 b!2536213) bm!159661))

(assert (= (or b!2536212 b!2536215) bm!159662))

(declare-fun m!2884743 () Bool)

(assert (=> bm!159661 m!2884743))

(declare-fun m!2884745 () Bool)

(assert (=> bm!159662 m!2884745))

(assert (=> d!720551 d!720651))

(declare-fun bm!159663 () Bool)

(declare-fun call!159668 () Bool)

(declare-fun call!159669 () Bool)

(assert (=> bm!159663 (= call!159668 call!159669)))

(declare-fun d!720653 () Bool)

(declare-fun res!1069712 () Bool)

(declare-fun e!1604301 () Bool)

(assert (=> d!720653 (=> res!1069712 e!1604301)))

(assert (=> d!720653 (= res!1069712 ((_ is ElementMatch!7555) (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))))))

(assert (=> d!720653 (= (validRegex!3181 (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))) e!1604301)))

(declare-fun b!2536219 () Bool)

(declare-fun e!1604302 () Bool)

(assert (=> b!2536219 (= e!1604302 call!159668)))

(declare-fun b!2536220 () Bool)

(declare-fun e!1604297 () Bool)

(assert (=> b!2536220 (= e!1604297 e!1604302)))

(declare-fun res!1069713 () Bool)

(assert (=> b!2536220 (=> (not res!1069713) (not e!1604302))))

(declare-fun call!159670 () Bool)

(assert (=> b!2536220 (= res!1069713 call!159670)))

(declare-fun b!2536221 () Bool)

(declare-fun e!1604303 () Bool)

(assert (=> b!2536221 (= e!1604303 call!159669)))

(declare-fun b!2536222 () Bool)

(declare-fun res!1069711 () Bool)

(assert (=> b!2536222 (=> res!1069711 e!1604297)))

(assert (=> b!2536222 (= res!1069711 (not ((_ is Concat!12251) (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340))))))))

(declare-fun e!1604299 () Bool)

(assert (=> b!2536222 (= e!1604299 e!1604297)))

(declare-fun b!2536223 () Bool)

(declare-fun e!1604298 () Bool)

(assert (=> b!2536223 (= e!1604298 e!1604299)))

(declare-fun c!405521 () Bool)

(assert (=> b!2536223 (= c!405521 ((_ is Union!7555) (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))))))

(declare-fun b!2536224 () Bool)

(declare-fun res!1069715 () Bool)

(declare-fun e!1604300 () Bool)

(assert (=> b!2536224 (=> (not res!1069715) (not e!1604300))))

(assert (=> b!2536224 (= res!1069715 call!159668)))

(assert (=> b!2536224 (= e!1604299 e!1604300)))

(declare-fun b!2536225 () Bool)

(assert (=> b!2536225 (= e!1604301 e!1604298)))

(declare-fun c!405520 () Bool)

(assert (=> b!2536225 (= c!405520 ((_ is Star!7555) (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))))))

(declare-fun b!2536226 () Bool)

(assert (=> b!2536226 (= e!1604300 call!159670)))

(declare-fun bm!159664 () Bool)

(assert (=> bm!159664 (= call!159670 (validRegex!3181 (ite c!405521 (regTwo!15623 (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))) (regOne!15622 (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))))))))

(declare-fun bm!159665 () Bool)

(assert (=> bm!159665 (= call!159669 (validRegex!3181 (ite c!405520 (reg!7884 (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))) (ite c!405521 (regOne!15623 (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))) (regTwo!15622 (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340))))))))))

(declare-fun b!2536227 () Bool)

(assert (=> b!2536227 (= e!1604298 e!1604303)))

(declare-fun res!1069714 () Bool)

(assert (=> b!2536227 (= res!1069714 (not (nullable!2472 (reg!7884 (ite c!405398 (reg!7884 r!27340) (ite c!405399 (regOne!15623 r!27340) (regTwo!15622 r!27340)))))))))

(assert (=> b!2536227 (=> (not res!1069714) (not e!1604303))))

(assert (= (and d!720653 (not res!1069712)) b!2536225))

(assert (= (and b!2536225 c!405520) b!2536227))

(assert (= (and b!2536225 (not c!405520)) b!2536223))

(assert (= (and b!2536227 res!1069714) b!2536221))

(assert (= (and b!2536223 c!405521) b!2536224))

(assert (= (and b!2536223 (not c!405521)) b!2536222))

(assert (= (and b!2536224 res!1069715) b!2536226))

(assert (= (and b!2536222 (not res!1069711)) b!2536220))

(assert (= (and b!2536220 res!1069713) b!2536219))

(assert (= (or b!2536224 b!2536219) bm!159663))

(assert (= (or b!2536226 b!2536220) bm!159664))

(assert (= (or b!2536221 bm!159663) bm!159665))

(declare-fun m!2884747 () Bool)

(assert (=> bm!159664 m!2884747))

(declare-fun m!2884749 () Bool)

(assert (=> bm!159665 m!2884749))

(declare-fun m!2884751 () Bool)

(assert (=> b!2536227 m!2884751))

(assert (=> bm!159549 d!720653))

(declare-fun d!720655 () Bool)

(assert (=> d!720655 (= (nullable!2472 (reg!7884 r!27340)) (nullableFct!704 (reg!7884 r!27340)))))

(declare-fun bs!469295 () Bool)

(assert (= bs!469295 d!720655))

(declare-fun m!2884753 () Bool)

(assert (=> bs!469295 m!2884753))

(assert (=> b!2535823 d!720655))

(declare-fun b!2536228 () Bool)

(declare-fun e!1604305 () Int)

(assert (=> b!2536228 (= e!1604305 0)))

(declare-fun bm!159666 () Bool)

(declare-fun call!159671 () Int)

(declare-fun c!405522 () Bool)

(assert (=> bm!159666 (= call!159671 (RegexPrimitiveSize!114 (ite c!405522 (regOne!15622 (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))) (regTwo!15623 (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))))))))

(declare-fun d!720657 () Bool)

(declare-fun lt!901545 () Int)

(assert (=> d!720657 (>= lt!901545 0)))

(declare-fun e!1604304 () Int)

(assert (=> d!720657 (= lt!901545 e!1604304)))

(declare-fun c!405523 () Bool)

(assert (=> d!720657 (= c!405523 ((_ is ElementMatch!7555) (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))))))

(assert (=> d!720657 (= (RegexPrimitiveSize!114 (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))) lt!901545)))

(declare-fun b!2536229 () Bool)

(declare-fun e!1604307 () Int)

(declare-fun e!1604306 () Int)

(assert (=> b!2536229 (= e!1604307 e!1604306)))

(declare-fun c!405525 () Bool)

(assert (=> b!2536229 (= c!405525 ((_ is Star!7555) (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))))))

(declare-fun c!405526 () Bool)

(declare-fun b!2536230 () Bool)

(assert (=> b!2536230 (= c!405526 ((_ is EmptyExpr!7555) (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))))))

(declare-fun e!1604308 () Int)

(assert (=> b!2536230 (= e!1604308 e!1604307)))

(declare-fun b!2536231 () Bool)

(declare-fun call!159672 () Int)

(assert (=> b!2536231 (= e!1604305 (+ 1 call!159672 call!159671))))

(declare-fun b!2536232 () Bool)

(assert (=> b!2536232 (= e!1604304 e!1604308)))

(assert (=> b!2536232 (= c!405522 ((_ is Concat!12251) (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))))))

(declare-fun b!2536233 () Bool)

(assert (=> b!2536233 (= e!1604306 (+ 1 call!159672))))

(declare-fun bm!159667 () Bool)

(declare-fun call!159673 () Int)

(assert (=> bm!159667 (= call!159672 call!159673)))

(declare-fun b!2536234 () Bool)

(declare-fun c!405524 () Bool)

(assert (=> b!2536234 (= c!405524 ((_ is EmptyLang!7555) (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))))))

(assert (=> b!2536234 (= e!1604306 e!1604305)))

(declare-fun b!2536235 () Bool)

(assert (=> b!2536235 (= e!1604308 (+ 1 call!159671 call!159673))))

(declare-fun bm!159668 () Bool)

(assert (=> bm!159668 (= call!159673 (RegexPrimitiveSize!114 (ite c!405522 (regTwo!15622 (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))) (ite c!405525 (reg!7884 (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340)))) (regOne!15623 (ite c!405429 (regTwo!15622 r!27340) (ite c!405432 (reg!7884 r!27340) (regOne!15623 r!27340))))))))))

(declare-fun b!2536236 () Bool)

(assert (=> b!2536236 (= e!1604307 0)))

(declare-fun b!2536237 () Bool)

(assert (=> b!2536237 (= e!1604304 1)))

(assert (= (and d!720657 c!405523) b!2536237))

(assert (= (and d!720657 (not c!405523)) b!2536232))

(assert (= (and b!2536232 c!405522) b!2536235))

(assert (= (and b!2536232 (not c!405522)) b!2536230))

(assert (= (and b!2536230 c!405526) b!2536236))

(assert (= (and b!2536230 (not c!405526)) b!2536229))

(assert (= (and b!2536229 c!405525) b!2536233))

(assert (= (and b!2536229 (not c!405525)) b!2536234))

(assert (= (and b!2536234 c!405524) b!2536228))

(assert (= (and b!2536234 (not c!405524)) b!2536231))

(assert (= (or b!2536233 b!2536231) bm!159667))

(assert (= (or b!2536235 bm!159667) bm!159668))

(assert (= (or b!2536235 b!2536231) bm!159666))

(declare-fun m!2884755 () Bool)

(assert (=> bm!159666 m!2884755))

(declare-fun m!2884757 () Bool)

(assert (=> bm!159668 m!2884757))

(assert (=> bm!159577 d!720657))

(declare-fun bm!159669 () Bool)

(declare-fun call!159674 () Bool)

(declare-fun call!159675 () Bool)

(assert (=> bm!159669 (= call!159674 call!159675)))

(declare-fun d!720659 () Bool)

(declare-fun res!1069717 () Bool)

(declare-fun e!1604313 () Bool)

(assert (=> d!720659 (=> res!1069717 e!1604313)))

(assert (=> d!720659 (= res!1069717 ((_ is ElementMatch!7555) lt!901515))))

(assert (=> d!720659 (= (validRegex!3181 lt!901515) e!1604313)))

(declare-fun b!2536238 () Bool)

(declare-fun e!1604314 () Bool)

(assert (=> b!2536238 (= e!1604314 call!159674)))

(declare-fun b!2536239 () Bool)

(declare-fun e!1604309 () Bool)

(assert (=> b!2536239 (= e!1604309 e!1604314)))

(declare-fun res!1069718 () Bool)

(assert (=> b!2536239 (=> (not res!1069718) (not e!1604314))))

(declare-fun call!159676 () Bool)

(assert (=> b!2536239 (= res!1069718 call!159676)))

(declare-fun b!2536240 () Bool)

(declare-fun e!1604315 () Bool)

(assert (=> b!2536240 (= e!1604315 call!159675)))

(declare-fun b!2536241 () Bool)

(declare-fun res!1069716 () Bool)

(assert (=> b!2536241 (=> res!1069716 e!1604309)))

(assert (=> b!2536241 (= res!1069716 (not ((_ is Concat!12251) lt!901515)))))

(declare-fun e!1604311 () Bool)

(assert (=> b!2536241 (= e!1604311 e!1604309)))

(declare-fun b!2536242 () Bool)

(declare-fun e!1604310 () Bool)

(assert (=> b!2536242 (= e!1604310 e!1604311)))

(declare-fun c!405528 () Bool)

(assert (=> b!2536242 (= c!405528 ((_ is Union!7555) lt!901515))))

(declare-fun b!2536243 () Bool)

(declare-fun res!1069720 () Bool)

(declare-fun e!1604312 () Bool)

(assert (=> b!2536243 (=> (not res!1069720) (not e!1604312))))

(assert (=> b!2536243 (= res!1069720 call!159674)))

(assert (=> b!2536243 (= e!1604311 e!1604312)))

(declare-fun b!2536244 () Bool)

(assert (=> b!2536244 (= e!1604313 e!1604310)))

(declare-fun c!405527 () Bool)

(assert (=> b!2536244 (= c!405527 ((_ is Star!7555) lt!901515))))

(declare-fun b!2536245 () Bool)

(assert (=> b!2536245 (= e!1604312 call!159676)))

(declare-fun bm!159670 () Bool)

(assert (=> bm!159670 (= call!159676 (validRegex!3181 (ite c!405528 (regTwo!15623 lt!901515) (regOne!15622 lt!901515))))))

(declare-fun bm!159671 () Bool)

(assert (=> bm!159671 (= call!159675 (validRegex!3181 (ite c!405527 (reg!7884 lt!901515) (ite c!405528 (regOne!15623 lt!901515) (regTwo!15622 lt!901515)))))))

(declare-fun b!2536246 () Bool)

(assert (=> b!2536246 (= e!1604310 e!1604315)))

(declare-fun res!1069719 () Bool)

(assert (=> b!2536246 (= res!1069719 (not (nullable!2472 (reg!7884 lt!901515))))))

(assert (=> b!2536246 (=> (not res!1069719) (not e!1604315))))

(assert (= (and d!720659 (not res!1069717)) b!2536244))

(assert (= (and b!2536244 c!405527) b!2536246))

(assert (= (and b!2536244 (not c!405527)) b!2536242))

(assert (= (and b!2536246 res!1069719) b!2536240))

(assert (= (and b!2536242 c!405528) b!2536243))

(assert (= (and b!2536242 (not c!405528)) b!2536241))

(assert (= (and b!2536243 res!1069720) b!2536245))

(assert (= (and b!2536241 (not res!1069716)) b!2536239))

(assert (= (and b!2536239 res!1069718) b!2536238))

(assert (= (or b!2536243 b!2536238) bm!159669))

(assert (= (or b!2536245 b!2536239) bm!159670))

(assert (= (or b!2536240 bm!159669) bm!159671))

(declare-fun m!2884759 () Bool)

(assert (=> bm!159670 m!2884759))

(declare-fun m!2884761 () Bool)

(assert (=> bm!159671 m!2884761))

(declare-fun m!2884763 () Bool)

(assert (=> b!2536246 m!2884763))

(assert (=> d!720559 d!720659))

(assert (=> d!720559 d!720587))

(declare-fun d!720661 () Bool)

(assert (=> d!720661 (= (nullable!2472 (regOne!15622 r!27340)) (nullableFct!704 (regOne!15622 r!27340)))))

(declare-fun bs!469296 () Bool)

(assert (= bs!469296 d!720661))

(declare-fun m!2884765 () Bool)

(assert (=> bs!469296 m!2884765))

(assert (=> b!2535942 d!720661))

(declare-fun bm!159672 () Bool)

(declare-fun call!159677 () Bool)

(declare-fun call!159678 () Bool)

(assert (=> bm!159672 (= call!159677 call!159678)))

(declare-fun d!720663 () Bool)

(declare-fun res!1069722 () Bool)

(declare-fun e!1604320 () Bool)

(assert (=> d!720663 (=> res!1069722 e!1604320)))

(assert (=> d!720663 (= res!1069722 ((_ is ElementMatch!7555) (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))

(assert (=> d!720663 (= (validRegex!3181 (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))) e!1604320)))

(declare-fun b!2536247 () Bool)

(declare-fun e!1604321 () Bool)

(assert (=> b!2536247 (= e!1604321 call!159677)))

(declare-fun b!2536248 () Bool)

(declare-fun e!1604316 () Bool)

(assert (=> b!2536248 (= e!1604316 e!1604321)))

(declare-fun res!1069723 () Bool)

(assert (=> b!2536248 (=> (not res!1069723) (not e!1604321))))

(declare-fun call!159679 () Bool)

(assert (=> b!2536248 (= res!1069723 call!159679)))

(declare-fun b!2536249 () Bool)

(declare-fun e!1604322 () Bool)

(assert (=> b!2536249 (= e!1604322 call!159678)))

(declare-fun b!2536250 () Bool)

(declare-fun res!1069721 () Bool)

(assert (=> b!2536250 (=> res!1069721 e!1604316)))

(assert (=> b!2536250 (= res!1069721 (not ((_ is Concat!12251) (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))))))

(declare-fun e!1604318 () Bool)

(assert (=> b!2536250 (= e!1604318 e!1604316)))

(declare-fun b!2536251 () Bool)

(declare-fun e!1604317 () Bool)

(assert (=> b!2536251 (= e!1604317 e!1604318)))

(declare-fun c!405530 () Bool)

(assert (=> b!2536251 (= c!405530 ((_ is Union!7555) (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))

(declare-fun b!2536252 () Bool)

(declare-fun res!1069725 () Bool)

(declare-fun e!1604319 () Bool)

(assert (=> b!2536252 (=> (not res!1069725) (not e!1604319))))

(assert (=> b!2536252 (= res!1069725 call!159677)))

(assert (=> b!2536252 (= e!1604318 e!1604319)))

(declare-fun b!2536253 () Bool)

(assert (=> b!2536253 (= e!1604320 e!1604317)))

(declare-fun c!405529 () Bool)

(assert (=> b!2536253 (= c!405529 ((_ is Star!7555) (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))

(declare-fun b!2536254 () Bool)

(assert (=> b!2536254 (= e!1604319 call!159679)))

(declare-fun bm!159673 () Bool)

(assert (=> bm!159673 (= call!159679 (validRegex!3181 (ite c!405530 (regTwo!15623 (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))) (regOne!15622 (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))))

(declare-fun bm!159674 () Bool)

(assert (=> bm!159674 (= call!159678 (validRegex!3181 (ite c!405529 (reg!7884 (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))) (ite c!405530 (regOne!15623 (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))) (regTwo!15622 (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))))))))

(declare-fun b!2536255 () Bool)

(assert (=> b!2536255 (= e!1604317 e!1604322)))

(declare-fun res!1069724 () Bool)

(assert (=> b!2536255 (= res!1069724 (not (nullable!2472 (reg!7884 (ite c!405435 (regTwo!15623 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))))

(assert (=> b!2536255 (=> (not res!1069724) (not e!1604322))))

(assert (= (and d!720663 (not res!1069722)) b!2536253))

(assert (= (and b!2536253 c!405529) b!2536255))

(assert (= (and b!2536253 (not c!405529)) b!2536251))

(assert (= (and b!2536255 res!1069724) b!2536249))

(assert (= (and b!2536251 c!405530) b!2536252))

(assert (= (and b!2536251 (not c!405530)) b!2536250))

(assert (= (and b!2536252 res!1069725) b!2536254))

(assert (= (and b!2536250 (not res!1069721)) b!2536248))

(assert (= (and b!2536248 res!1069723) b!2536247))

(assert (= (or b!2536252 b!2536247) bm!159672))

(assert (= (or b!2536254 b!2536248) bm!159673))

(assert (= (or b!2536249 bm!159672) bm!159674))

(declare-fun m!2884767 () Bool)

(assert (=> bm!159673 m!2884767))

(declare-fun m!2884769 () Bool)

(assert (=> bm!159674 m!2884769))

(declare-fun m!2884771 () Bool)

(assert (=> b!2536255 m!2884771))

(assert (=> bm!159581 d!720663))

(declare-fun bm!159675 () Bool)

(declare-fun call!159680 () Bool)

(declare-fun call!159681 () Bool)

(assert (=> bm!159675 (= call!159680 call!159681)))

(declare-fun d!720665 () Bool)

(declare-fun res!1069727 () Bool)

(declare-fun e!1604327 () Bool)

(assert (=> d!720665 (=> res!1069727 e!1604327)))

(assert (=> d!720665 (= res!1069727 ((_ is ElementMatch!7555) (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))))

(assert (=> d!720665 (= (validRegex!3181 (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))) e!1604327)))

(declare-fun b!2536256 () Bool)

(declare-fun e!1604328 () Bool)

(assert (=> b!2536256 (= e!1604328 call!159680)))

(declare-fun b!2536257 () Bool)

(declare-fun e!1604323 () Bool)

(assert (=> b!2536257 (= e!1604323 e!1604328)))

(declare-fun res!1069728 () Bool)

(assert (=> b!2536257 (=> (not res!1069728) (not e!1604328))))

(declare-fun call!159682 () Bool)

(assert (=> b!2536257 (= res!1069728 call!159682)))

(declare-fun b!2536258 () Bool)

(declare-fun e!1604329 () Bool)

(assert (=> b!2536258 (= e!1604329 call!159681)))

(declare-fun b!2536259 () Bool)

(declare-fun res!1069726 () Bool)

(assert (=> b!2536259 (=> res!1069726 e!1604323)))

(assert (=> b!2536259 (= res!1069726 (not ((_ is Concat!12251) (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))))))))

(declare-fun e!1604325 () Bool)

(assert (=> b!2536259 (= e!1604325 e!1604323)))

(declare-fun b!2536260 () Bool)

(declare-fun e!1604324 () Bool)

(assert (=> b!2536260 (= e!1604324 e!1604325)))

(declare-fun c!405532 () Bool)

(assert (=> b!2536260 (= c!405532 ((_ is Union!7555) (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))))

(declare-fun b!2536261 () Bool)

(declare-fun res!1069730 () Bool)

(declare-fun e!1604326 () Bool)

(assert (=> b!2536261 (=> (not res!1069730) (not e!1604326))))

(assert (=> b!2536261 (= res!1069730 call!159680)))

(assert (=> b!2536261 (= e!1604325 e!1604326)))

(declare-fun b!2536262 () Bool)

(assert (=> b!2536262 (= e!1604327 e!1604324)))

(declare-fun c!405531 () Bool)

(assert (=> b!2536262 (= c!405531 ((_ is Star!7555) (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))))

(declare-fun b!2536263 () Bool)

(assert (=> b!2536263 (= e!1604326 call!159682)))

(declare-fun bm!159676 () Bool)

(assert (=> bm!159676 (= call!159682 (validRegex!3181 (ite c!405532 (regTwo!15623 (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))) (regOne!15622 (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))))))

(declare-fun bm!159677 () Bool)

(assert (=> bm!159677 (= call!159681 (validRegex!3181 (ite c!405531 (reg!7884 (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))) (ite c!405532 (regOne!15623 (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))) (regTwo!15622 (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340)))))))))))

(declare-fun b!2536264 () Bool)

(assert (=> b!2536264 (= e!1604324 e!1604329)))

(declare-fun res!1069729 () Bool)

(assert (=> b!2536264 (= res!1069729 (not (nullable!2472 (reg!7884 (ite c!405434 (reg!7884 (regTwo!15623 r!27340)) (ite c!405435 (regOne!15623 (regTwo!15623 r!27340)) (regTwo!15622 (regTwo!15623 r!27340))))))))))

(assert (=> b!2536264 (=> (not res!1069729) (not e!1604329))))

(assert (= (and d!720665 (not res!1069727)) b!2536262))

(assert (= (and b!2536262 c!405531) b!2536264))

(assert (= (and b!2536262 (not c!405531)) b!2536260))

(assert (= (and b!2536264 res!1069729) b!2536258))

(assert (= (and b!2536260 c!405532) b!2536261))

(assert (= (and b!2536260 (not c!405532)) b!2536259))

(assert (= (and b!2536261 res!1069730) b!2536263))

(assert (= (and b!2536259 (not res!1069726)) b!2536257))

(assert (= (and b!2536257 res!1069728) b!2536256))

(assert (= (or b!2536261 b!2536256) bm!159675))

(assert (= (or b!2536263 b!2536257) bm!159676))

(assert (= (or b!2536258 bm!159675) bm!159677))

(declare-fun m!2884773 () Bool)

(assert (=> bm!159676 m!2884773))

(declare-fun m!2884775 () Bool)

(assert (=> bm!159677 m!2884775))

(declare-fun m!2884777 () Bool)

(assert (=> b!2536264 m!2884777))

(assert (=> bm!159582 d!720665))

(declare-fun call!159686 () Regex!7555)

(declare-fun b!2536265 () Bool)

(declare-fun e!1604333 () Regex!7555)

(assert (=> b!2536265 (= e!1604333 (Concat!12251 call!159686 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))))))

(declare-fun d!720667 () Bool)

(declare-fun lt!901546 () Regex!7555)

(assert (=> d!720667 (validRegex!3181 lt!901546)))

(declare-fun e!1604330 () Regex!7555)

(assert (=> d!720667 (= lt!901546 e!1604330)))

(declare-fun c!405535 () Bool)

(assert (=> d!720667 (= c!405535 (or ((_ is EmptyExpr!7555) (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))) ((_ is EmptyLang!7555) (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))))

(assert (=> d!720667 (validRegex!3181 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))

(assert (=> d!720667 (= (derivativeStep!2124 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))) c!14016) lt!901546)))

(declare-fun b!2536266 () Bool)

(declare-fun e!1604334 () Regex!7555)

(assert (=> b!2536266 (= e!1604334 e!1604333)))

(declare-fun c!405537 () Bool)

(assert (=> b!2536266 (= c!405537 ((_ is Star!7555) (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))))))

(declare-fun c!405536 () Bool)

(declare-fun call!159685 () Regex!7555)

(declare-fun bm!159678 () Bool)

(assert (=> bm!159678 (= call!159685 (derivativeStep!2124 (ite c!405536 (regOne!15623 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))) (ite c!405537 (reg!7884 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))) (regOne!15622 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))))) c!14016))))

(declare-fun bm!159679 () Bool)

(assert (=> bm!159679 (= call!159686 call!159685)))

(declare-fun b!2536267 () Bool)

(declare-fun e!1604331 () Regex!7555)

(assert (=> b!2536267 (= e!1604330 e!1604331)))

(declare-fun c!405534 () Bool)

(assert (=> b!2536267 (= c!405534 ((_ is ElementMatch!7555) (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))))))

(declare-fun b!2536268 () Bool)

(assert (=> b!2536268 (= e!1604331 (ite (= c!14016 (c!405335 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536269 () Bool)

(declare-fun call!159683 () Regex!7555)

(assert (=> b!2536269 (= e!1604334 (Union!7555 call!159685 call!159683))))

(declare-fun e!1604332 () Regex!7555)

(declare-fun b!2536270 () Bool)

(declare-fun call!159684 () Regex!7555)

(assert (=> b!2536270 (= e!1604332 (Union!7555 (Concat!12251 call!159684 (regTwo!15622 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))) EmptyLang!7555))))

(declare-fun bm!159680 () Bool)

(assert (=> bm!159680 (= call!159683 (derivativeStep!2124 (ite c!405536 (regTwo!15623 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))) (regTwo!15622 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))) c!14016))))

(declare-fun b!2536271 () Bool)

(assert (=> b!2536271 (= e!1604332 (Union!7555 (Concat!12251 call!159684 (regTwo!15622 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))) call!159683))))

(declare-fun bm!159681 () Bool)

(assert (=> bm!159681 (= call!159684 call!159686)))

(declare-fun b!2536272 () Bool)

(assert (=> b!2536272 (= c!405536 ((_ is Union!7555) (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340))))))))

(assert (=> b!2536272 (= e!1604331 e!1604334)))

(declare-fun b!2536273 () Bool)

(declare-fun c!405533 () Bool)

(assert (=> b!2536273 (= c!405533 (nullable!2472 (regOne!15622 (ite c!405365 (regOne!15623 (regTwo!15623 r!27340)) (ite c!405366 (reg!7884 (regTwo!15623 r!27340)) (regOne!15622 (regTwo!15623 r!27340)))))))))

(assert (=> b!2536273 (= e!1604333 e!1604332)))

(declare-fun b!2536274 () Bool)

(assert (=> b!2536274 (= e!1604330 EmptyLang!7555)))

(assert (= (and d!720667 c!405535) b!2536274))

(assert (= (and d!720667 (not c!405535)) b!2536267))

(assert (= (and b!2536267 c!405534) b!2536268))

(assert (= (and b!2536267 (not c!405534)) b!2536272))

(assert (= (and b!2536272 c!405536) b!2536269))

(assert (= (and b!2536272 (not c!405536)) b!2536266))

(assert (= (and b!2536266 c!405537) b!2536265))

(assert (= (and b!2536266 (not c!405537)) b!2536273))

(assert (= (and b!2536273 c!405533) b!2536271))

(assert (= (and b!2536273 (not c!405533)) b!2536270))

(assert (= (or b!2536271 b!2536270) bm!159681))

(assert (= (or b!2536265 bm!159681) bm!159679))

(assert (= (or b!2536269 b!2536271) bm!159680))

(assert (= (or b!2536269 bm!159679) bm!159678))

(declare-fun m!2884779 () Bool)

(assert (=> d!720667 m!2884779))

(declare-fun m!2884781 () Bool)

(assert (=> d!720667 m!2884781))

(declare-fun m!2884783 () Bool)

(assert (=> bm!159678 m!2884783))

(declare-fun m!2884785 () Bool)

(assert (=> bm!159680 m!2884785))

(declare-fun m!2884787 () Bool)

(assert (=> b!2536273 m!2884787))

(assert (=> bm!159525 d!720667))

(declare-fun b!2536285 () Bool)

(declare-fun e!1604343 () Bool)

(declare-fun e!1604344 () Bool)

(assert (=> b!2536285 (= e!1604343 e!1604344)))

(declare-fun res!1069734 () Bool)

(declare-fun call!159691 () Bool)

(assert (=> b!2536285 (= res!1069734 call!159691)))

(assert (=> b!2536285 (=> res!1069734 e!1604344)))

(declare-fun b!2536286 () Bool)

(declare-fun e!1604341 () Bool)

(assert (=> b!2536286 (= e!1604343 e!1604341)))

(declare-fun res!1069732 () Bool)

(declare-fun call!159692 () Bool)

(assert (=> b!2536286 (= res!1069732 call!159692)))

(assert (=> b!2536286 (=> (not res!1069732) (not e!1604341))))

(declare-fun d!720671 () Bool)

(declare-fun res!1069731 () Bool)

(declare-fun e!1604340 () Bool)

(assert (=> d!720671 (=> res!1069731 e!1604340)))

(assert (=> d!720671 (= res!1069731 ((_ is EmptyExpr!7555) (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)))))

(assert (=> d!720671 (= (nullableFct!704 (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)) e!1604340)))

(declare-fun bm!159686 () Bool)

(declare-fun c!405543 () Bool)

(assert (=> bm!159686 (= call!159692 (nullable!2472 (ite c!405543 (regTwo!15623 (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)) (regOne!15622 (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2536287 () Bool)

(declare-fun e!1604342 () Bool)

(assert (=> b!2536287 (= e!1604340 e!1604342)))

(declare-fun res!1069733 () Bool)

(assert (=> b!2536287 (=> (not res!1069733) (not e!1604342))))

(assert (=> b!2536287 (= res!1069733 (and (not ((_ is EmptyLang!7555) (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7555) (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2536288 () Bool)

(assert (=> b!2536288 (= e!1604341 call!159691)))

(declare-fun bm!159687 () Bool)

(assert (=> bm!159687 (= call!159691 (nullable!2472 (ite c!405543 (regOne!15623 (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)) (regTwo!15622 (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2536289 () Bool)

(assert (=> b!2536289 (= e!1604344 call!159692)))

(declare-fun b!2536290 () Bool)

(declare-fun e!1604345 () Bool)

(assert (=> b!2536290 (= e!1604342 e!1604345)))

(declare-fun res!1069735 () Bool)

(assert (=> b!2536290 (=> res!1069735 e!1604345)))

(assert (=> b!2536290 (= res!1069735 ((_ is Star!7555) (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)))))

(declare-fun b!2536291 () Bool)

(assert (=> b!2536291 (= e!1604345 e!1604343)))

(assert (=> b!2536291 (= c!405543 ((_ is Union!7555) (derivative!250 (derivativeStep!2124 r!27340 c!14016) tl!4068)))))

(assert (= (and d!720671 (not res!1069731)) b!2536287))

(assert (= (and b!2536287 res!1069733) b!2536290))

(assert (= (and b!2536290 (not res!1069735)) b!2536291))

(assert (= (and b!2536291 c!405543) b!2536285))

(assert (= (and b!2536291 (not c!405543)) b!2536286))

(assert (= (and b!2536285 (not res!1069734)) b!2536289))

(assert (= (and b!2536286 res!1069732) b!2536288))

(assert (= (or b!2536289 b!2536286) bm!159686))

(assert (= (or b!2536285 b!2536288) bm!159687))

(declare-fun m!2884789 () Bool)

(assert (=> bm!159686 m!2884789))

(declare-fun m!2884791 () Bool)

(assert (=> bm!159687 m!2884791))

(assert (=> d!720595 d!720671))

(declare-fun bm!159688 () Bool)

(declare-fun call!159693 () Bool)

(declare-fun call!159694 () Bool)

(assert (=> bm!159688 (= call!159693 call!159694)))

(declare-fun d!720673 () Bool)

(declare-fun res!1069737 () Bool)

(declare-fun e!1604350 () Bool)

(assert (=> d!720673 (=> res!1069737 e!1604350)))

(assert (=> d!720673 (= res!1069737 ((_ is ElementMatch!7555) lt!901530))))

(assert (=> d!720673 (= (validRegex!3181 lt!901530) e!1604350)))

(declare-fun b!2536292 () Bool)

(declare-fun e!1604351 () Bool)

(assert (=> b!2536292 (= e!1604351 call!159693)))

(declare-fun b!2536293 () Bool)

(declare-fun e!1604346 () Bool)

(assert (=> b!2536293 (= e!1604346 e!1604351)))

(declare-fun res!1069738 () Bool)

(assert (=> b!2536293 (=> (not res!1069738) (not e!1604351))))

(declare-fun call!159695 () Bool)

(assert (=> b!2536293 (= res!1069738 call!159695)))

(declare-fun b!2536294 () Bool)

(declare-fun e!1604352 () Bool)

(assert (=> b!2536294 (= e!1604352 call!159694)))

(declare-fun b!2536295 () Bool)

(declare-fun res!1069736 () Bool)

(assert (=> b!2536295 (=> res!1069736 e!1604346)))

(assert (=> b!2536295 (= res!1069736 (not ((_ is Concat!12251) lt!901530)))))

(declare-fun e!1604348 () Bool)

(assert (=> b!2536295 (= e!1604348 e!1604346)))

(declare-fun b!2536296 () Bool)

(declare-fun e!1604347 () Bool)

(assert (=> b!2536296 (= e!1604347 e!1604348)))

(declare-fun c!405545 () Bool)

(assert (=> b!2536296 (= c!405545 ((_ is Union!7555) lt!901530))))

(declare-fun b!2536297 () Bool)

(declare-fun res!1069740 () Bool)

(declare-fun e!1604349 () Bool)

(assert (=> b!2536297 (=> (not res!1069740) (not e!1604349))))

(assert (=> b!2536297 (= res!1069740 call!159693)))

(assert (=> b!2536297 (= e!1604348 e!1604349)))

(declare-fun b!2536298 () Bool)

(assert (=> b!2536298 (= e!1604350 e!1604347)))

(declare-fun c!405544 () Bool)

(assert (=> b!2536298 (= c!405544 ((_ is Star!7555) lt!901530))))

(declare-fun b!2536299 () Bool)

(assert (=> b!2536299 (= e!1604349 call!159695)))

(declare-fun bm!159689 () Bool)

(assert (=> bm!159689 (= call!159695 (validRegex!3181 (ite c!405545 (regTwo!15623 lt!901530) (regOne!15622 lt!901530))))))

(declare-fun bm!159690 () Bool)

(assert (=> bm!159690 (= call!159694 (validRegex!3181 (ite c!405544 (reg!7884 lt!901530) (ite c!405545 (regOne!15623 lt!901530) (regTwo!15622 lt!901530)))))))

(declare-fun b!2536300 () Bool)

(assert (=> b!2536300 (= e!1604347 e!1604352)))

(declare-fun res!1069739 () Bool)

(assert (=> b!2536300 (= res!1069739 (not (nullable!2472 (reg!7884 lt!901530))))))

(assert (=> b!2536300 (=> (not res!1069739) (not e!1604352))))

(assert (= (and d!720673 (not res!1069737)) b!2536298))

(assert (= (and b!2536298 c!405544) b!2536300))

(assert (= (and b!2536298 (not c!405544)) b!2536296))

(assert (= (and b!2536300 res!1069739) b!2536294))

(assert (= (and b!2536296 c!405545) b!2536297))

(assert (= (and b!2536296 (not c!405545)) b!2536295))

(assert (= (and b!2536297 res!1069740) b!2536299))

(assert (= (and b!2536295 (not res!1069736)) b!2536293))

(assert (= (and b!2536293 res!1069738) b!2536292))

(assert (= (or b!2536297 b!2536292) bm!159688))

(assert (= (or b!2536299 b!2536293) bm!159689))

(assert (= (or b!2536294 bm!159688) bm!159690))

(declare-fun m!2884803 () Bool)

(assert (=> bm!159689 m!2884803))

(declare-fun m!2884805 () Bool)

(assert (=> bm!159690 m!2884805))

(declare-fun m!2884807 () Bool)

(assert (=> b!2536300 m!2884807))

(assert (=> d!720593 d!720673))

(declare-fun bm!159695 () Bool)

(declare-fun call!159700 () Bool)

(declare-fun call!159701 () Bool)

(assert (=> bm!159695 (= call!159700 call!159701)))

(declare-fun d!720677 () Bool)

(declare-fun res!1069742 () Bool)

(declare-fun e!1604362 () Bool)

(assert (=> d!720677 (=> res!1069742 e!1604362)))

(assert (=> d!720677 (= res!1069742 ((_ is ElementMatch!7555) (regOne!15623 r!27340)))))

(assert (=> d!720677 (= (validRegex!3181 (regOne!15623 r!27340)) e!1604362)))

(declare-fun b!2536311 () Bool)

(declare-fun e!1604363 () Bool)

(assert (=> b!2536311 (= e!1604363 call!159700)))

(declare-fun b!2536312 () Bool)

(declare-fun e!1604358 () Bool)

(assert (=> b!2536312 (= e!1604358 e!1604363)))

(declare-fun res!1069743 () Bool)

(assert (=> b!2536312 (=> (not res!1069743) (not e!1604363))))

(declare-fun call!159702 () Bool)

(assert (=> b!2536312 (= res!1069743 call!159702)))

(declare-fun b!2536313 () Bool)

(declare-fun e!1604364 () Bool)

(assert (=> b!2536313 (= e!1604364 call!159701)))

(declare-fun b!2536314 () Bool)

(declare-fun res!1069741 () Bool)

(assert (=> b!2536314 (=> res!1069741 e!1604358)))

(assert (=> b!2536314 (= res!1069741 (not ((_ is Concat!12251) (regOne!15623 r!27340))))))

(declare-fun e!1604360 () Bool)

(assert (=> b!2536314 (= e!1604360 e!1604358)))

(declare-fun b!2536315 () Bool)

(declare-fun e!1604359 () Bool)

(assert (=> b!2536315 (= e!1604359 e!1604360)))

(declare-fun c!405552 () Bool)

(assert (=> b!2536315 (= c!405552 ((_ is Union!7555) (regOne!15623 r!27340)))))

(declare-fun b!2536316 () Bool)

(declare-fun res!1069745 () Bool)

(declare-fun e!1604361 () Bool)

(assert (=> b!2536316 (=> (not res!1069745) (not e!1604361))))

(assert (=> b!2536316 (= res!1069745 call!159700)))

(assert (=> b!2536316 (= e!1604360 e!1604361)))

(declare-fun b!2536317 () Bool)

(assert (=> b!2536317 (= e!1604362 e!1604359)))

(declare-fun c!405551 () Bool)

(assert (=> b!2536317 (= c!405551 ((_ is Star!7555) (regOne!15623 r!27340)))))

(declare-fun b!2536318 () Bool)

(assert (=> b!2536318 (= e!1604361 call!159702)))

(declare-fun bm!159696 () Bool)

(assert (=> bm!159696 (= call!159702 (validRegex!3181 (ite c!405552 (regTwo!15623 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))))))

(declare-fun bm!159697 () Bool)

(assert (=> bm!159697 (= call!159701 (validRegex!3181 (ite c!405551 (reg!7884 (regOne!15623 r!27340)) (ite c!405552 (regOne!15623 (regOne!15623 r!27340)) (regTwo!15622 (regOne!15623 r!27340))))))))

(declare-fun b!2536319 () Bool)

(assert (=> b!2536319 (= e!1604359 e!1604364)))

(declare-fun res!1069744 () Bool)

(assert (=> b!2536319 (= res!1069744 (not (nullable!2472 (reg!7884 (regOne!15623 r!27340)))))))

(assert (=> b!2536319 (=> (not res!1069744) (not e!1604364))))

(assert (= (and d!720677 (not res!1069742)) b!2536317))

(assert (= (and b!2536317 c!405551) b!2536319))

(assert (= (and b!2536317 (not c!405551)) b!2536315))

(assert (= (and b!2536319 res!1069744) b!2536313))

(assert (= (and b!2536315 c!405552) b!2536316))

(assert (= (and b!2536315 (not c!405552)) b!2536314))

(assert (= (and b!2536316 res!1069745) b!2536318))

(assert (= (and b!2536314 (not res!1069741)) b!2536312))

(assert (= (and b!2536312 res!1069743) b!2536311))

(assert (= (or b!2536316 b!2536311) bm!159695))

(assert (= (or b!2536318 b!2536312) bm!159696))

(assert (= (or b!2536313 bm!159695) bm!159697))

(declare-fun m!2884809 () Bool)

(assert (=> bm!159696 m!2884809))

(declare-fun m!2884811 () Bool)

(assert (=> bm!159697 m!2884811))

(declare-fun m!2884813 () Bool)

(assert (=> b!2536319 m!2884813))

(assert (=> d!720593 d!720677))

(declare-fun b!2536320 () Bool)

(declare-fun e!1604368 () Regex!7555)

(declare-fun call!159706 () Regex!7555)

(assert (=> b!2536320 (= e!1604368 (Concat!12251 call!159706 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))))))

(declare-fun d!720679 () Bool)

(declare-fun lt!901549 () Regex!7555)

(assert (=> d!720679 (validRegex!3181 lt!901549)))

(declare-fun e!1604365 () Regex!7555)

(assert (=> d!720679 (= lt!901549 e!1604365)))

(declare-fun c!405555 () Bool)

(assert (=> d!720679 (= c!405555 (or ((_ is EmptyExpr!7555) (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))) ((_ is EmptyLang!7555) (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))))))))

(assert (=> d!720679 (validRegex!3181 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))))))

(assert (=> d!720679 (= (derivativeStep!2124 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))) c!14016) lt!901549)))

(declare-fun b!2536321 () Bool)

(declare-fun e!1604369 () Regex!7555)

(assert (=> b!2536321 (= e!1604369 e!1604368)))

(declare-fun c!405557 () Bool)

(assert (=> b!2536321 (= c!405557 ((_ is Star!7555) (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))))))

(declare-fun call!159705 () Regex!7555)

(declare-fun c!405556 () Bool)

(declare-fun bm!159698 () Bool)

(assert (=> bm!159698 (= call!159705 (derivativeStep!2124 (ite c!405556 (regOne!15623 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))) (ite c!405557 (reg!7884 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))) (regOne!15622 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))))) c!14016))))

(declare-fun bm!159699 () Bool)

(assert (=> bm!159699 (= call!159706 call!159705)))

(declare-fun b!2536322 () Bool)

(declare-fun e!1604366 () Regex!7555)

(assert (=> b!2536322 (= e!1604365 e!1604366)))

(declare-fun c!405554 () Bool)

(assert (=> b!2536322 (= c!405554 ((_ is ElementMatch!7555) (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))))))

(declare-fun b!2536323 () Bool)

(assert (=> b!2536323 (= e!1604366 (ite (= c!14016 (c!405335 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))))) EmptyExpr!7555 EmptyLang!7555))))

(declare-fun b!2536324 () Bool)

(declare-fun call!159703 () Regex!7555)

(assert (=> b!2536324 (= e!1604369 (Union!7555 call!159705 call!159703))))

(declare-fun e!1604367 () Regex!7555)

(declare-fun b!2536325 () Bool)

(declare-fun call!159704 () Regex!7555)

(assert (=> b!2536325 (= e!1604367 (Union!7555 (Concat!12251 call!159704 (regTwo!15622 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))))) EmptyLang!7555))))

(declare-fun bm!159700 () Bool)

(assert (=> bm!159700 (= call!159703 (derivativeStep!2124 (ite c!405556 (regTwo!15623 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))) (regTwo!15622 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))))) c!14016))))

(declare-fun b!2536326 () Bool)

(assert (=> b!2536326 (= e!1604367 (Union!7555 (Concat!12251 call!159704 (regTwo!15622 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))))) call!159703))))

(declare-fun bm!159701 () Bool)

(assert (=> bm!159701 (= call!159704 call!159706)))

(declare-fun b!2536327 () Bool)

(assert (=> b!2536327 (= c!405556 ((_ is Union!7555) (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340))))))))

(assert (=> b!2536327 (= e!1604366 e!1604369)))

(declare-fun b!2536328 () Bool)

(declare-fun c!405553 () Bool)

(assert (=> b!2536328 (= c!405553 (nullable!2472 (regOne!15622 (ite c!405440 (regOne!15623 (regOne!15623 r!27340)) (ite c!405441 (reg!7884 (regOne!15623 r!27340)) (regOne!15622 (regOne!15623 r!27340)))))))))

(assert (=> b!2536328 (= e!1604368 e!1604367)))

(declare-fun b!2536329 () Bool)

(assert (=> b!2536329 (= e!1604365 EmptyLang!7555)))

(assert (= (and d!720679 c!405555) b!2536329))

(assert (= (and d!720679 (not c!405555)) b!2536322))

(assert (= (and b!2536322 c!405554) b!2536323))

(assert (= (and b!2536322 (not c!405554)) b!2536327))

(assert (= (and b!2536327 c!405556) b!2536324))

(assert (= (and b!2536327 (not c!405556)) b!2536321))

(assert (= (and b!2536321 c!405557) b!2536320))

(assert (= (and b!2536321 (not c!405557)) b!2536328))

(assert (= (and b!2536328 c!405553) b!2536326))

(assert (= (and b!2536328 (not c!405553)) b!2536325))

(assert (= (or b!2536326 b!2536325) bm!159701))

(assert (= (or b!2536320 bm!159701) bm!159699))

(assert (= (or b!2536324 b!2536326) bm!159700))

(assert (= (or b!2536324 bm!159699) bm!159698))

(declare-fun m!2884825 () Bool)

(assert (=> d!720679 m!2884825))

(declare-fun m!2884827 () Bool)

(assert (=> d!720679 m!2884827))

(declare-fun m!2884829 () Bool)

(assert (=> bm!159698 m!2884829))

(declare-fun m!2884831 () Bool)

(assert (=> bm!159700 m!2884831))

(declare-fun m!2884833 () Bool)

(assert (=> b!2536328 m!2884833))

(assert (=> bm!159583 d!720679))

(declare-fun b!2536330 () Bool)

(declare-fun e!1604371 () Int)

(assert (=> b!2536330 (= e!1604371 0)))

(declare-fun c!405558 () Bool)

(declare-fun call!159707 () Int)

(declare-fun bm!159702 () Bool)

(assert (=> bm!159702 (= call!159707 (RegexPrimitiveSize!114 (ite c!405558 (regOne!15622 (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))) (regTwo!15623 (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))))))))

(declare-fun d!720683 () Bool)

(declare-fun lt!901550 () Int)

(assert (=> d!720683 (>= lt!901550 0)))

(declare-fun e!1604370 () Int)

(assert (=> d!720683 (= lt!901550 e!1604370)))

(declare-fun c!405559 () Bool)

(assert (=> d!720683 (= c!405559 ((_ is ElementMatch!7555) (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))))))

(assert (=> d!720683 (= (RegexPrimitiveSize!114 (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))) lt!901550)))

(declare-fun b!2536331 () Bool)

(declare-fun e!1604373 () Int)

(declare-fun e!1604372 () Int)

(assert (=> b!2536331 (= e!1604373 e!1604372)))

(declare-fun c!405561 () Bool)

(assert (=> b!2536331 (= c!405561 ((_ is Star!7555) (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))))))

(declare-fun b!2536332 () Bool)

(declare-fun c!405562 () Bool)

(assert (=> b!2536332 (= c!405562 ((_ is EmptyExpr!7555) (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))))))

(declare-fun e!1604374 () Int)

(assert (=> b!2536332 (= e!1604374 e!1604373)))

(declare-fun b!2536333 () Bool)

(declare-fun call!159708 () Int)

(assert (=> b!2536333 (= e!1604371 (+ 1 call!159708 call!159707))))

(declare-fun b!2536334 () Bool)

(assert (=> b!2536334 (= e!1604370 e!1604374)))

(assert (=> b!2536334 (= c!405558 ((_ is Concat!12251) (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))))))

(declare-fun b!2536335 () Bool)

(assert (=> b!2536335 (= e!1604372 (+ 1 call!159708))))

(declare-fun bm!159703 () Bool)

(declare-fun call!159709 () Int)

(assert (=> bm!159703 (= call!159708 call!159709)))

(declare-fun b!2536336 () Bool)

(declare-fun c!405560 () Bool)

(assert (=> b!2536336 (= c!405560 ((_ is EmptyLang!7555) (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))))))

(assert (=> b!2536336 (= e!1604372 e!1604371)))

(declare-fun b!2536337 () Bool)

(assert (=> b!2536337 (= e!1604374 (+ 1 call!159707 call!159709))))

(declare-fun bm!159704 () Bool)

(assert (=> bm!159704 (= call!159709 (RegexPrimitiveSize!114 (ite c!405558 (regTwo!15622 (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))) (ite c!405561 (reg!7884 (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340)))) (regOne!15623 (ite c!405424 (regOne!15622 (regTwo!15623 r!27340)) (regTwo!15623 (regTwo!15623 r!27340))))))))))

(declare-fun b!2536338 () Bool)

(assert (=> b!2536338 (= e!1604373 0)))

(declare-fun b!2536339 () Bool)

(assert (=> b!2536339 (= e!1604370 1)))

(assert (= (and d!720683 c!405559) b!2536339))

(assert (= (and d!720683 (not c!405559)) b!2536334))

(assert (= (and b!2536334 c!405558) b!2536337))

(assert (= (and b!2536334 (not c!405558)) b!2536332))

(assert (= (and b!2536332 c!405562) b!2536338))

(assert (= (and b!2536332 (not c!405562)) b!2536331))

(assert (= (and b!2536331 c!405561) b!2536335))

(assert (= (and b!2536331 (not c!405561)) b!2536336))

(assert (= (and b!2536336 c!405560) b!2536330))

(assert (= (and b!2536336 (not c!405560)) b!2536333))

(assert (= (or b!2536335 b!2536333) bm!159703))

(assert (= (or b!2536337 bm!159703) bm!159704))

(assert (= (or b!2536337 b!2536333) bm!159702))

(declare-fun m!2884835 () Bool)

(assert (=> bm!159702 m!2884835))

(declare-fun m!2884837 () Bool)

(assert (=> bm!159704 m!2884837))

(assert (=> bm!159568 d!720683))

(declare-fun b!2536341 () Bool)

(declare-fun e!1604375 () Bool)

(declare-fun tp!810211 () Bool)

(declare-fun tp!810208 () Bool)

(assert (=> b!2536341 (= e!1604375 (and tp!810211 tp!810208))))

(assert (=> b!2535977 (= tp!810154 e!1604375)))

(declare-fun b!2536340 () Bool)

(assert (=> b!2536340 (= e!1604375 tp_is_empty!12965)))

(declare-fun b!2536342 () Bool)

(declare-fun tp!810210 () Bool)

(assert (=> b!2536342 (= e!1604375 tp!810210)))

(declare-fun b!2536343 () Bool)

(declare-fun tp!810207 () Bool)

(declare-fun tp!810209 () Bool)

(assert (=> b!2536343 (= e!1604375 (and tp!810207 tp!810209))))

(assert (= (and b!2535977 ((_ is ElementMatch!7555) (regOne!15622 (reg!7884 r!27340)))) b!2536340))

(assert (= (and b!2535977 ((_ is Concat!12251) (regOne!15622 (reg!7884 r!27340)))) b!2536341))

(assert (= (and b!2535977 ((_ is Star!7555) (regOne!15622 (reg!7884 r!27340)))) b!2536342))

(assert (= (and b!2535977 ((_ is Union!7555) (regOne!15622 (reg!7884 r!27340)))) b!2536343))

(declare-fun b!2536345 () Bool)

(declare-fun e!1604376 () Bool)

(declare-fun tp!810216 () Bool)

(declare-fun tp!810213 () Bool)

(assert (=> b!2536345 (= e!1604376 (and tp!810216 tp!810213))))

(assert (=> b!2535977 (= tp!810151 e!1604376)))

(declare-fun b!2536344 () Bool)

(assert (=> b!2536344 (= e!1604376 tp_is_empty!12965)))

(declare-fun b!2536346 () Bool)

(declare-fun tp!810215 () Bool)

(assert (=> b!2536346 (= e!1604376 tp!810215)))

(declare-fun b!2536347 () Bool)

(declare-fun tp!810212 () Bool)

(declare-fun tp!810214 () Bool)

(assert (=> b!2536347 (= e!1604376 (and tp!810212 tp!810214))))

(assert (= (and b!2535977 ((_ is ElementMatch!7555) (regTwo!15622 (reg!7884 r!27340)))) b!2536344))

(assert (= (and b!2535977 ((_ is Concat!12251) (regTwo!15622 (reg!7884 r!27340)))) b!2536345))

(assert (= (and b!2535977 ((_ is Star!7555) (regTwo!15622 (reg!7884 r!27340)))) b!2536346))

(assert (= (and b!2535977 ((_ is Union!7555) (regTwo!15622 (reg!7884 r!27340)))) b!2536347))

(declare-fun b!2536349 () Bool)

(declare-fun e!1604377 () Bool)

(declare-fun tp!810221 () Bool)

(declare-fun tp!810218 () Bool)

(assert (=> b!2536349 (= e!1604377 (and tp!810221 tp!810218))))

(assert (=> b!2535978 (= tp!810153 e!1604377)))

(declare-fun b!2536348 () Bool)

(assert (=> b!2536348 (= e!1604377 tp_is_empty!12965)))

(declare-fun b!2536350 () Bool)

(declare-fun tp!810220 () Bool)

(assert (=> b!2536350 (= e!1604377 tp!810220)))

(declare-fun b!2536351 () Bool)

(declare-fun tp!810217 () Bool)

(declare-fun tp!810219 () Bool)

(assert (=> b!2536351 (= e!1604377 (and tp!810217 tp!810219))))

(assert (= (and b!2535978 ((_ is ElementMatch!7555) (reg!7884 (reg!7884 r!27340)))) b!2536348))

(assert (= (and b!2535978 ((_ is Concat!12251) (reg!7884 (reg!7884 r!27340)))) b!2536349))

(assert (= (and b!2535978 ((_ is Star!7555) (reg!7884 (reg!7884 r!27340)))) b!2536350))

(assert (= (and b!2535978 ((_ is Union!7555) (reg!7884 (reg!7884 r!27340)))) b!2536351))

(declare-fun b!2536353 () Bool)

(declare-fun e!1604378 () Bool)

(declare-fun tp!810226 () Bool)

(declare-fun tp!810223 () Bool)

(assert (=> b!2536353 (= e!1604378 (and tp!810226 tp!810223))))

(assert (=> b!2536009 (= tp!810190 e!1604378)))

(declare-fun b!2536352 () Bool)

(assert (=> b!2536352 (= e!1604378 tp_is_empty!12965)))

(declare-fun b!2536354 () Bool)

(declare-fun tp!810225 () Bool)

(assert (=> b!2536354 (= e!1604378 tp!810225)))

(declare-fun b!2536355 () Bool)

(declare-fun tp!810222 () Bool)

(declare-fun tp!810224 () Bool)

(assert (=> b!2536355 (= e!1604378 (and tp!810222 tp!810224))))

(assert (= (and b!2536009 ((_ is ElementMatch!7555) (reg!7884 (regOne!15623 r!27340)))) b!2536352))

(assert (= (and b!2536009 ((_ is Concat!12251) (reg!7884 (regOne!15623 r!27340)))) b!2536353))

(assert (= (and b!2536009 ((_ is Star!7555) (reg!7884 (regOne!15623 r!27340)))) b!2536354))

(assert (= (and b!2536009 ((_ is Union!7555) (reg!7884 (regOne!15623 r!27340)))) b!2536355))

(declare-fun b!2536359 () Bool)

(declare-fun e!1604383 () Bool)

(declare-fun tp!810231 () Bool)

(declare-fun tp!810228 () Bool)

(assert (=> b!2536359 (= e!1604383 (and tp!810231 tp!810228))))

(assert (=> b!2535985 (= tp!810159 e!1604383)))

(declare-fun b!2536358 () Bool)

(assert (=> b!2536358 (= e!1604383 tp_is_empty!12965)))

(declare-fun b!2536360 () Bool)

(declare-fun tp!810230 () Bool)

(assert (=> b!2536360 (= e!1604383 tp!810230)))

(declare-fun b!2536361 () Bool)

(declare-fun tp!810227 () Bool)

(declare-fun tp!810229 () Bool)

(assert (=> b!2536361 (= e!1604383 (and tp!810227 tp!810229))))

(assert (= (and b!2535985 ((_ is ElementMatch!7555) (regOne!15623 (regOne!15622 r!27340)))) b!2536358))

(assert (= (and b!2535985 ((_ is Concat!12251) (regOne!15623 (regOne!15622 r!27340)))) b!2536359))

(assert (= (and b!2535985 ((_ is Star!7555) (regOne!15623 (regOne!15622 r!27340)))) b!2536360))

(assert (= (and b!2535985 ((_ is Union!7555) (regOne!15623 (regOne!15622 r!27340)))) b!2536361))

(declare-fun b!2536369 () Bool)

(declare-fun e!1604386 () Bool)

(declare-fun tp!810236 () Bool)

(declare-fun tp!810233 () Bool)

(assert (=> b!2536369 (= e!1604386 (and tp!810236 tp!810233))))

(assert (=> b!2535985 (= tp!810161 e!1604386)))

(declare-fun b!2536368 () Bool)

(assert (=> b!2536368 (= e!1604386 tp_is_empty!12965)))

(declare-fun b!2536370 () Bool)

(declare-fun tp!810235 () Bool)

(assert (=> b!2536370 (= e!1604386 tp!810235)))

(declare-fun b!2536371 () Bool)

(declare-fun tp!810232 () Bool)

(declare-fun tp!810234 () Bool)

(assert (=> b!2536371 (= e!1604386 (and tp!810232 tp!810234))))

(assert (= (and b!2535985 ((_ is ElementMatch!7555) (regTwo!15623 (regOne!15622 r!27340)))) b!2536368))

(assert (= (and b!2535985 ((_ is Concat!12251) (regTwo!15623 (regOne!15622 r!27340)))) b!2536369))

(assert (= (and b!2535985 ((_ is Star!7555) (regTwo!15623 (regOne!15622 r!27340)))) b!2536370))

(assert (= (and b!2535985 ((_ is Union!7555) (regTwo!15623 (regOne!15622 r!27340)))) b!2536371))

(declare-fun b!2536376 () Bool)

(declare-fun e!1604391 () Bool)

(declare-fun tp!810237 () Bool)

(assert (=> b!2536376 (= e!1604391 (and tp_is_empty!12965 tp!810237))))

(assert (=> b!2536006 (= tp!810186 e!1604391)))

(assert (= (and b!2536006 ((_ is Cons!29520) (t!211319 (t!211319 tl!4068)))) b!2536376))

(declare-fun b!2536380 () Bool)

(declare-fun e!1604394 () Bool)

(declare-fun tp!810242 () Bool)

(declare-fun tp!810239 () Bool)

(assert (=> b!2536380 (= e!1604394 (and tp!810242 tp!810239))))

(assert (=> b!2536010 (= tp!810187 e!1604394)))

(declare-fun b!2536379 () Bool)

(assert (=> b!2536379 (= e!1604394 tp_is_empty!12965)))

(declare-fun b!2536381 () Bool)

(declare-fun tp!810241 () Bool)

(assert (=> b!2536381 (= e!1604394 tp!810241)))

(declare-fun b!2536382 () Bool)

(declare-fun tp!810238 () Bool)

(declare-fun tp!810240 () Bool)

(assert (=> b!2536382 (= e!1604394 (and tp!810238 tp!810240))))

(assert (= (and b!2536010 ((_ is ElementMatch!7555) (regOne!15623 (regOne!15623 r!27340)))) b!2536379))

(assert (= (and b!2536010 ((_ is Concat!12251) (regOne!15623 (regOne!15623 r!27340)))) b!2536380))

(assert (= (and b!2536010 ((_ is Star!7555) (regOne!15623 (regOne!15623 r!27340)))) b!2536381))

(assert (= (and b!2536010 ((_ is Union!7555) (regOne!15623 (regOne!15623 r!27340)))) b!2536382))

(declare-fun b!2536384 () Bool)

(declare-fun e!1604395 () Bool)

(declare-fun tp!810247 () Bool)

(declare-fun tp!810244 () Bool)

(assert (=> b!2536384 (= e!1604395 (and tp!810247 tp!810244))))

(assert (=> b!2536010 (= tp!810189 e!1604395)))

(declare-fun b!2536383 () Bool)

(assert (=> b!2536383 (= e!1604395 tp_is_empty!12965)))

(declare-fun b!2536385 () Bool)

(declare-fun tp!810246 () Bool)

(assert (=> b!2536385 (= e!1604395 tp!810246)))

(declare-fun b!2536386 () Bool)

(declare-fun tp!810243 () Bool)

(declare-fun tp!810245 () Bool)

(assert (=> b!2536386 (= e!1604395 (and tp!810243 tp!810245))))

(assert (= (and b!2536010 ((_ is ElementMatch!7555) (regTwo!15623 (regOne!15623 r!27340)))) b!2536383))

(assert (= (and b!2536010 ((_ is Concat!12251) (regTwo!15623 (regOne!15623 r!27340)))) b!2536384))

(assert (= (and b!2536010 ((_ is Star!7555) (regTwo!15623 (regOne!15623 r!27340)))) b!2536385))

(assert (= (and b!2536010 ((_ is Union!7555) (regTwo!15623 (regOne!15623 r!27340)))) b!2536386))

(declare-fun b!2536388 () Bool)

(declare-fun e!1604396 () Bool)

(declare-fun tp!810252 () Bool)

(declare-fun tp!810249 () Bool)

(assert (=> b!2536388 (= e!1604396 (and tp!810252 tp!810249))))

(assert (=> b!2536020 (= tp!810206 e!1604396)))

(declare-fun b!2536387 () Bool)

(assert (=> b!2536387 (= e!1604396 tp_is_empty!12965)))

(declare-fun b!2536389 () Bool)

(declare-fun tp!810251 () Bool)

(assert (=> b!2536389 (= e!1604396 tp!810251)))

(declare-fun b!2536390 () Bool)

(declare-fun tp!810248 () Bool)

(declare-fun tp!810250 () Bool)

(assert (=> b!2536390 (= e!1604396 (and tp!810248 tp!810250))))

(assert (= (and b!2536020 ((_ is ElementMatch!7555) (regOne!15622 (regTwo!15623 r!27340)))) b!2536387))

(assert (= (and b!2536020 ((_ is Concat!12251) (regOne!15622 (regTwo!15623 r!27340)))) b!2536388))

(assert (= (and b!2536020 ((_ is Star!7555) (regOne!15622 (regTwo!15623 r!27340)))) b!2536389))

(assert (= (and b!2536020 ((_ is Union!7555) (regOne!15622 (regTwo!15623 r!27340)))) b!2536390))

(declare-fun b!2536392 () Bool)

(declare-fun e!1604397 () Bool)

(declare-fun tp!810257 () Bool)

(declare-fun tp!810254 () Bool)

(assert (=> b!2536392 (= e!1604397 (and tp!810257 tp!810254))))

(assert (=> b!2536020 (= tp!810203 e!1604397)))

(declare-fun b!2536391 () Bool)

(assert (=> b!2536391 (= e!1604397 tp_is_empty!12965)))

(declare-fun b!2536393 () Bool)

(declare-fun tp!810256 () Bool)

(assert (=> b!2536393 (= e!1604397 tp!810256)))

(declare-fun b!2536394 () Bool)

(declare-fun tp!810253 () Bool)

(declare-fun tp!810255 () Bool)

(assert (=> b!2536394 (= e!1604397 (and tp!810253 tp!810255))))

(assert (= (and b!2536020 ((_ is ElementMatch!7555) (regTwo!15622 (regTwo!15623 r!27340)))) b!2536391))

(assert (= (and b!2536020 ((_ is Concat!12251) (regTwo!15622 (regTwo!15623 r!27340)))) b!2536392))

(assert (= (and b!2536020 ((_ is Star!7555) (regTwo!15622 (regTwo!15623 r!27340)))) b!2536393))

(assert (= (and b!2536020 ((_ is Union!7555) (regTwo!15622 (regTwo!15623 r!27340)))) b!2536394))

(declare-fun b!2536396 () Bool)

(declare-fun e!1604398 () Bool)

(declare-fun tp!810262 () Bool)

(declare-fun tp!810259 () Bool)

(assert (=> b!2536396 (= e!1604398 (and tp!810262 tp!810259))))

(assert (=> b!2535987 (= tp!810168 e!1604398)))

(declare-fun b!2536395 () Bool)

(assert (=> b!2536395 (= e!1604398 tp_is_empty!12965)))

(declare-fun b!2536397 () Bool)

(declare-fun tp!810261 () Bool)

(assert (=> b!2536397 (= e!1604398 tp!810261)))

(declare-fun b!2536398 () Bool)

(declare-fun tp!810258 () Bool)

(declare-fun tp!810260 () Bool)

(assert (=> b!2536398 (= e!1604398 (and tp!810258 tp!810260))))

(assert (= (and b!2535987 ((_ is ElementMatch!7555) (regOne!15622 (regTwo!15622 r!27340)))) b!2536395))

(assert (= (and b!2535987 ((_ is Concat!12251) (regOne!15622 (regTwo!15622 r!27340)))) b!2536396))

(assert (= (and b!2535987 ((_ is Star!7555) (regOne!15622 (regTwo!15622 r!27340)))) b!2536397))

(assert (= (and b!2535987 ((_ is Union!7555) (regOne!15622 (regTwo!15622 r!27340)))) b!2536398))

(declare-fun b!2536400 () Bool)

(declare-fun e!1604399 () Bool)

(declare-fun tp!810267 () Bool)

(declare-fun tp!810264 () Bool)

(assert (=> b!2536400 (= e!1604399 (and tp!810267 tp!810264))))

(assert (=> b!2535987 (= tp!810165 e!1604399)))

(declare-fun b!2536399 () Bool)

(assert (=> b!2536399 (= e!1604399 tp_is_empty!12965)))

(declare-fun b!2536401 () Bool)

(declare-fun tp!810266 () Bool)

(assert (=> b!2536401 (= e!1604399 tp!810266)))

(declare-fun b!2536402 () Bool)

(declare-fun tp!810263 () Bool)

(declare-fun tp!810265 () Bool)

(assert (=> b!2536402 (= e!1604399 (and tp!810263 tp!810265))))

(assert (= (and b!2535987 ((_ is ElementMatch!7555) (regTwo!15622 (regTwo!15622 r!27340)))) b!2536399))

(assert (= (and b!2535987 ((_ is Concat!12251) (regTwo!15622 (regTwo!15622 r!27340)))) b!2536400))

(assert (= (and b!2535987 ((_ is Star!7555) (regTwo!15622 (regTwo!15622 r!27340)))) b!2536401))

(assert (= (and b!2535987 ((_ is Union!7555) (regTwo!15622 (regTwo!15622 r!27340)))) b!2536402))

(declare-fun b!2536404 () Bool)

(declare-fun e!1604400 () Bool)

(declare-fun tp!810272 () Bool)

(declare-fun tp!810269 () Bool)

(assert (=> b!2536404 (= e!1604400 (and tp!810272 tp!810269))))

(assert (=> b!2536021 (= tp!810205 e!1604400)))

(declare-fun b!2536403 () Bool)

(assert (=> b!2536403 (= e!1604400 tp_is_empty!12965)))

(declare-fun b!2536405 () Bool)

(declare-fun tp!810271 () Bool)

(assert (=> b!2536405 (= e!1604400 tp!810271)))

(declare-fun b!2536406 () Bool)

(declare-fun tp!810268 () Bool)

(declare-fun tp!810270 () Bool)

(assert (=> b!2536406 (= e!1604400 (and tp!810268 tp!810270))))

(assert (= (and b!2536021 ((_ is ElementMatch!7555) (reg!7884 (regTwo!15623 r!27340)))) b!2536403))

(assert (= (and b!2536021 ((_ is Concat!12251) (reg!7884 (regTwo!15623 r!27340)))) b!2536404))

(assert (= (and b!2536021 ((_ is Star!7555) (reg!7884 (regTwo!15623 r!27340)))) b!2536405))

(assert (= (and b!2536021 ((_ is Union!7555) (reg!7884 (regTwo!15623 r!27340)))) b!2536406))

(declare-fun b!2536408 () Bool)

(declare-fun e!1604401 () Bool)

(declare-fun tp!810277 () Bool)

(declare-fun tp!810274 () Bool)

(assert (=> b!2536408 (= e!1604401 (and tp!810277 tp!810274))))

(assert (=> b!2535983 (= tp!810163 e!1604401)))

(declare-fun b!2536407 () Bool)

(assert (=> b!2536407 (= e!1604401 tp_is_empty!12965)))

(declare-fun b!2536409 () Bool)

(declare-fun tp!810276 () Bool)

(assert (=> b!2536409 (= e!1604401 tp!810276)))

(declare-fun b!2536410 () Bool)

(declare-fun tp!810273 () Bool)

(declare-fun tp!810275 () Bool)

(assert (=> b!2536410 (= e!1604401 (and tp!810273 tp!810275))))

(assert (= (and b!2535983 ((_ is ElementMatch!7555) (regOne!15622 (regOne!15622 r!27340)))) b!2536407))

(assert (= (and b!2535983 ((_ is Concat!12251) (regOne!15622 (regOne!15622 r!27340)))) b!2536408))

(assert (= (and b!2535983 ((_ is Star!7555) (regOne!15622 (regOne!15622 r!27340)))) b!2536409))

(assert (= (and b!2535983 ((_ is Union!7555) (regOne!15622 (regOne!15622 r!27340)))) b!2536410))

(declare-fun b!2536412 () Bool)

(declare-fun e!1604402 () Bool)

(declare-fun tp!810282 () Bool)

(declare-fun tp!810279 () Bool)

(assert (=> b!2536412 (= e!1604402 (and tp!810282 tp!810279))))

(assert (=> b!2535983 (= tp!810160 e!1604402)))

(declare-fun b!2536411 () Bool)

(assert (=> b!2536411 (= e!1604402 tp_is_empty!12965)))

(declare-fun b!2536413 () Bool)

(declare-fun tp!810281 () Bool)

(assert (=> b!2536413 (= e!1604402 tp!810281)))

(declare-fun b!2536414 () Bool)

(declare-fun tp!810278 () Bool)

(declare-fun tp!810280 () Bool)

(assert (=> b!2536414 (= e!1604402 (and tp!810278 tp!810280))))

(assert (= (and b!2535983 ((_ is ElementMatch!7555) (regTwo!15622 (regOne!15622 r!27340)))) b!2536411))

(assert (= (and b!2535983 ((_ is Concat!12251) (regTwo!15622 (regOne!15622 r!27340)))) b!2536412))

(assert (= (and b!2535983 ((_ is Star!7555) (regTwo!15622 (regOne!15622 r!27340)))) b!2536413))

(assert (= (and b!2535983 ((_ is Union!7555) (regTwo!15622 (regOne!15622 r!27340)))) b!2536414))

(declare-fun b!2536416 () Bool)

(declare-fun e!1604403 () Bool)

(declare-fun tp!810287 () Bool)

(declare-fun tp!810284 () Bool)

(assert (=> b!2536416 (= e!1604403 (and tp!810287 tp!810284))))

(assert (=> b!2535988 (= tp!810167 e!1604403)))

(declare-fun b!2536415 () Bool)

(assert (=> b!2536415 (= e!1604403 tp_is_empty!12965)))

(declare-fun b!2536417 () Bool)

(declare-fun tp!810286 () Bool)

(assert (=> b!2536417 (= e!1604403 tp!810286)))

(declare-fun b!2536418 () Bool)

(declare-fun tp!810283 () Bool)

(declare-fun tp!810285 () Bool)

(assert (=> b!2536418 (= e!1604403 (and tp!810283 tp!810285))))

(assert (= (and b!2535988 ((_ is ElementMatch!7555) (reg!7884 (regTwo!15622 r!27340)))) b!2536415))

(assert (= (and b!2535988 ((_ is Concat!12251) (reg!7884 (regTwo!15622 r!27340)))) b!2536416))

(assert (= (and b!2535988 ((_ is Star!7555) (reg!7884 (regTwo!15622 r!27340)))) b!2536417))

(assert (= (and b!2535988 ((_ is Union!7555) (reg!7884 (regTwo!15622 r!27340)))) b!2536418))

(declare-fun b!2536420 () Bool)

(declare-fun e!1604404 () Bool)

(declare-fun tp!810292 () Bool)

(declare-fun tp!810289 () Bool)

(assert (=> b!2536420 (= e!1604404 (and tp!810292 tp!810289))))

(assert (=> b!2536008 (= tp!810191 e!1604404)))

(declare-fun b!2536419 () Bool)

(assert (=> b!2536419 (= e!1604404 tp_is_empty!12965)))

(declare-fun b!2536421 () Bool)

(declare-fun tp!810291 () Bool)

(assert (=> b!2536421 (= e!1604404 tp!810291)))

(declare-fun b!2536422 () Bool)

(declare-fun tp!810288 () Bool)

(declare-fun tp!810290 () Bool)

(assert (=> b!2536422 (= e!1604404 (and tp!810288 tp!810290))))

(assert (= (and b!2536008 ((_ is ElementMatch!7555) (regOne!15622 (regOne!15623 r!27340)))) b!2536419))

(assert (= (and b!2536008 ((_ is Concat!12251) (regOne!15622 (regOne!15623 r!27340)))) b!2536420))

(assert (= (and b!2536008 ((_ is Star!7555) (regOne!15622 (regOne!15623 r!27340)))) b!2536421))

(assert (= (and b!2536008 ((_ is Union!7555) (regOne!15622 (regOne!15623 r!27340)))) b!2536422))

(declare-fun b!2536424 () Bool)

(declare-fun e!1604405 () Bool)

(declare-fun tp!810297 () Bool)

(declare-fun tp!810294 () Bool)

(assert (=> b!2536424 (= e!1604405 (and tp!810297 tp!810294))))

(assert (=> b!2536008 (= tp!810188 e!1604405)))

(declare-fun b!2536423 () Bool)

(assert (=> b!2536423 (= e!1604405 tp_is_empty!12965)))

(declare-fun b!2536425 () Bool)

(declare-fun tp!810296 () Bool)

(assert (=> b!2536425 (= e!1604405 tp!810296)))

(declare-fun b!2536426 () Bool)

(declare-fun tp!810293 () Bool)

(declare-fun tp!810295 () Bool)

(assert (=> b!2536426 (= e!1604405 (and tp!810293 tp!810295))))

(assert (= (and b!2536008 ((_ is ElementMatch!7555) (regTwo!15622 (regOne!15623 r!27340)))) b!2536423))

(assert (= (and b!2536008 ((_ is Concat!12251) (regTwo!15622 (regOne!15623 r!27340)))) b!2536424))

(assert (= (and b!2536008 ((_ is Star!7555) (regTwo!15622 (regOne!15623 r!27340)))) b!2536425))

(assert (= (and b!2536008 ((_ is Union!7555) (regTwo!15622 (regOne!15623 r!27340)))) b!2536426))

(declare-fun b!2536428 () Bool)

(declare-fun e!1604406 () Bool)

(declare-fun tp!810302 () Bool)

(declare-fun tp!810299 () Bool)

(assert (=> b!2536428 (= e!1604406 (and tp!810302 tp!810299))))

(assert (=> b!2536022 (= tp!810202 e!1604406)))

(declare-fun b!2536427 () Bool)

(assert (=> b!2536427 (= e!1604406 tp_is_empty!12965)))

(declare-fun b!2536429 () Bool)

(declare-fun tp!810301 () Bool)

(assert (=> b!2536429 (= e!1604406 tp!810301)))

(declare-fun b!2536430 () Bool)

(declare-fun tp!810298 () Bool)

(declare-fun tp!810300 () Bool)

(assert (=> b!2536430 (= e!1604406 (and tp!810298 tp!810300))))

(assert (= (and b!2536022 ((_ is ElementMatch!7555) (regOne!15623 (regTwo!15623 r!27340)))) b!2536427))

(assert (= (and b!2536022 ((_ is Concat!12251) (regOne!15623 (regTwo!15623 r!27340)))) b!2536428))

(assert (= (and b!2536022 ((_ is Star!7555) (regOne!15623 (regTwo!15623 r!27340)))) b!2536429))

(assert (= (and b!2536022 ((_ is Union!7555) (regOne!15623 (regTwo!15623 r!27340)))) b!2536430))

(declare-fun b!2536432 () Bool)

(declare-fun e!1604407 () Bool)

(declare-fun tp!810307 () Bool)

(declare-fun tp!810304 () Bool)

(assert (=> b!2536432 (= e!1604407 (and tp!810307 tp!810304))))

(assert (=> b!2536022 (= tp!810204 e!1604407)))

(declare-fun b!2536431 () Bool)

(assert (=> b!2536431 (= e!1604407 tp_is_empty!12965)))

(declare-fun b!2536433 () Bool)

(declare-fun tp!810306 () Bool)

(assert (=> b!2536433 (= e!1604407 tp!810306)))

(declare-fun b!2536434 () Bool)

(declare-fun tp!810303 () Bool)

(declare-fun tp!810305 () Bool)

(assert (=> b!2536434 (= e!1604407 (and tp!810303 tp!810305))))

(assert (= (and b!2536022 ((_ is ElementMatch!7555) (regTwo!15623 (regTwo!15623 r!27340)))) b!2536431))

(assert (= (and b!2536022 ((_ is Concat!12251) (regTwo!15623 (regTwo!15623 r!27340)))) b!2536432))

(assert (= (and b!2536022 ((_ is Star!7555) (regTwo!15623 (regTwo!15623 r!27340)))) b!2536433))

(assert (= (and b!2536022 ((_ is Union!7555) (regTwo!15623 (regTwo!15623 r!27340)))) b!2536434))

(declare-fun b!2536436 () Bool)

(declare-fun e!1604408 () Bool)

(declare-fun tp!810312 () Bool)

(declare-fun tp!810309 () Bool)

(assert (=> b!2536436 (= e!1604408 (and tp!810312 tp!810309))))

(assert (=> b!2535984 (= tp!810162 e!1604408)))

(declare-fun b!2536435 () Bool)

(assert (=> b!2536435 (= e!1604408 tp_is_empty!12965)))

(declare-fun b!2536437 () Bool)

(declare-fun tp!810311 () Bool)

(assert (=> b!2536437 (= e!1604408 tp!810311)))

(declare-fun b!2536438 () Bool)

(declare-fun tp!810308 () Bool)

(declare-fun tp!810310 () Bool)

(assert (=> b!2536438 (= e!1604408 (and tp!810308 tp!810310))))

(assert (= (and b!2535984 ((_ is ElementMatch!7555) (reg!7884 (regOne!15622 r!27340)))) b!2536435))

(assert (= (and b!2535984 ((_ is Concat!12251) (reg!7884 (regOne!15622 r!27340)))) b!2536436))

(assert (= (and b!2535984 ((_ is Star!7555) (reg!7884 (regOne!15622 r!27340)))) b!2536437))

(assert (= (and b!2535984 ((_ is Union!7555) (reg!7884 (regOne!15622 r!27340)))) b!2536438))

(declare-fun b!2536440 () Bool)

(declare-fun e!1604409 () Bool)

(declare-fun tp!810317 () Bool)

(declare-fun tp!810314 () Bool)

(assert (=> b!2536440 (= e!1604409 (and tp!810317 tp!810314))))

(assert (=> b!2535989 (= tp!810164 e!1604409)))

(declare-fun b!2536439 () Bool)

(assert (=> b!2536439 (= e!1604409 tp_is_empty!12965)))

(declare-fun b!2536441 () Bool)

(declare-fun tp!810316 () Bool)

(assert (=> b!2536441 (= e!1604409 tp!810316)))

(declare-fun b!2536442 () Bool)

(declare-fun tp!810313 () Bool)

(declare-fun tp!810315 () Bool)

(assert (=> b!2536442 (= e!1604409 (and tp!810313 tp!810315))))

(assert (= (and b!2535989 ((_ is ElementMatch!7555) (regOne!15623 (regTwo!15622 r!27340)))) b!2536439))

(assert (= (and b!2535989 ((_ is Concat!12251) (regOne!15623 (regTwo!15622 r!27340)))) b!2536440))

(assert (= (and b!2535989 ((_ is Star!7555) (regOne!15623 (regTwo!15622 r!27340)))) b!2536441))

(assert (= (and b!2535989 ((_ is Union!7555) (regOne!15623 (regTwo!15622 r!27340)))) b!2536442))

(declare-fun b!2536444 () Bool)

(declare-fun e!1604410 () Bool)

(declare-fun tp!810322 () Bool)

(declare-fun tp!810319 () Bool)

(assert (=> b!2536444 (= e!1604410 (and tp!810322 tp!810319))))

(assert (=> b!2535989 (= tp!810166 e!1604410)))

(declare-fun b!2536443 () Bool)

(assert (=> b!2536443 (= e!1604410 tp_is_empty!12965)))

(declare-fun b!2536445 () Bool)

(declare-fun tp!810321 () Bool)

(assert (=> b!2536445 (= e!1604410 tp!810321)))

(declare-fun b!2536446 () Bool)

(declare-fun tp!810318 () Bool)

(declare-fun tp!810320 () Bool)

(assert (=> b!2536446 (= e!1604410 (and tp!810318 tp!810320))))

(assert (= (and b!2535989 ((_ is ElementMatch!7555) (regTwo!15623 (regTwo!15622 r!27340)))) b!2536443))

(assert (= (and b!2535989 ((_ is Concat!12251) (regTwo!15623 (regTwo!15622 r!27340)))) b!2536444))

(assert (= (and b!2535989 ((_ is Star!7555) (regTwo!15623 (regTwo!15622 r!27340)))) b!2536445))

(assert (= (and b!2535989 ((_ is Union!7555) (regTwo!15623 (regTwo!15622 r!27340)))) b!2536446))

(declare-fun b!2536448 () Bool)

(declare-fun e!1604411 () Bool)

(declare-fun tp!810327 () Bool)

(declare-fun tp!810324 () Bool)

(assert (=> b!2536448 (= e!1604411 (and tp!810327 tp!810324))))

(assert (=> b!2535979 (= tp!810148 e!1604411)))

(declare-fun b!2536447 () Bool)

(assert (=> b!2536447 (= e!1604411 tp_is_empty!12965)))

(declare-fun b!2536449 () Bool)

(declare-fun tp!810326 () Bool)

(assert (=> b!2536449 (= e!1604411 tp!810326)))

(declare-fun b!2536450 () Bool)

(declare-fun tp!810323 () Bool)

(declare-fun tp!810325 () Bool)

(assert (=> b!2536450 (= e!1604411 (and tp!810323 tp!810325))))

(assert (= (and b!2535979 ((_ is ElementMatch!7555) (regOne!15623 (reg!7884 r!27340)))) b!2536447))

(assert (= (and b!2535979 ((_ is Concat!12251) (regOne!15623 (reg!7884 r!27340)))) b!2536448))

(assert (= (and b!2535979 ((_ is Star!7555) (regOne!15623 (reg!7884 r!27340)))) b!2536449))

(assert (= (and b!2535979 ((_ is Union!7555) (regOne!15623 (reg!7884 r!27340)))) b!2536450))

(declare-fun b!2536452 () Bool)

(declare-fun e!1604413 () Bool)

(declare-fun tp!810332 () Bool)

(declare-fun tp!810329 () Bool)

(assert (=> b!2536452 (= e!1604413 (and tp!810332 tp!810329))))

(assert (=> b!2535979 (= tp!810152 e!1604413)))

(declare-fun b!2536451 () Bool)

(assert (=> b!2536451 (= e!1604413 tp_is_empty!12965)))

(declare-fun b!2536453 () Bool)

(declare-fun tp!810331 () Bool)

(assert (=> b!2536453 (= e!1604413 tp!810331)))

(declare-fun b!2536454 () Bool)

(declare-fun tp!810328 () Bool)

(declare-fun tp!810330 () Bool)

(assert (=> b!2536454 (= e!1604413 (and tp!810328 tp!810330))))

(assert (= (and b!2535979 ((_ is ElementMatch!7555) (regTwo!15623 (reg!7884 r!27340)))) b!2536451))

(assert (= (and b!2535979 ((_ is Concat!12251) (regTwo!15623 (reg!7884 r!27340)))) b!2536452))

(assert (= (and b!2535979 ((_ is Star!7555) (regTwo!15623 (reg!7884 r!27340)))) b!2536453))

(assert (= (and b!2535979 ((_ is Union!7555) (regTwo!15623 (reg!7884 r!27340)))) b!2536454))

(check-sat (not b!2536421) (not bm!159646) (not b!2536077) (not b!2536360) (not bm!159611) (not b!2536088) (not b!2536359) (not bm!159653) (not d!720641) (not bm!159676) (not bm!159643) (not bm!159700) (not bm!159660) (not b!2536401) (not b!2536408) (not bm!159632) (not b!2536067) (not b!2536452) (not b!2536264) (not b!2536446) (not b!2536429) (not b!2536392) (not b!2536191) (not b!2536319) (not b!2536420) (not b!2536361) (not bm!159604) (not b!2536409) (not bm!159636) (not b!2536438) (not b!2536450) (not bm!159630) (not bm!159642) (not b!2536382) (not bm!159659) (not b!2536369) (not d!720655) (not b!2536402) (not b!2536430) (not bm!159668) (not b!2536031) (not bm!159702) (not bm!159607) (not bm!159686) (not b!2536376) (not d!720667) (not b!2536350) (not bm!159628) (not b!2536328) (not b!2536393) (not bm!159647) (not d!720645) (not b!2536413) (not bm!159620) (not b!2536441) (not b!2536211) (not b!2536442) (not bm!159704) (not b!2536141) (not b!2536273) (not bm!159670) (not b!2536390) (not b!2536412) (not b!2536181) (not d!720615) (not b!2536040) (not b!2536396) (not d!720619) (not b!2536058) (not b!2536384) (not d!720625) (not bm!159618) (not d!720623) (not bm!159662) (not b!2536400) (not b!2536347) (not b!2536255) (not d!720679) (not b!2536227) (not b!2536098) (not b!2536448) (not bm!159609) (not bm!159616) (not bm!159599) tp_is_empty!12965 (not b!2536049) (not b!2536422) (not b!2536129) (not b!2536433) (not bm!159664) (not bm!159629) (not b!2536380) (not bm!159687) (not b!2536388) (not b!2536170) (not d!720635) (not bm!159640) (not bm!159622) (not b!2536386) (not b!2536414) (not bm!159665) (not b!2536410) (not b!2536354) (not bm!159697) (not b!2536351) (not b!2536341) (not b!2536426) (not bm!159645) (not b!2536346) (not bm!159615) (not d!720639) (not b!2536444) (not d!720661) (not b!2536428) (not bm!159649) (not b!2536371) (not b!2536397) (not bm!159655) (not b!2536246) (not b!2536440) (not b!2536131) (not b!2536404) (not b!2536437) (not bm!159698) (not b!2536417) (not bm!159601) (not bm!159608) (not b!2536418) (not bm!159690) (not b!2536355) (not b!2536381) (not bm!159678) (not b!2536161) (not b!2536342) (not bm!159605) (not bm!159689) (not bm!159666) (not b!2536370) (not b!2536454) (not bm!159671) (not bm!159651) (not bm!159673) (not b!2536445) (not b!2536449) (not b!2536394) (not bm!159661) (not d!720637) (not b!2536078) (not b!2536343) (not d!720649) (not b!2536353) (not bm!159614) (not b!2536434) (not b!2536349) (not bm!159598) (not bm!159674) (not bm!159677) (not bm!159638) (not b!2536405) (not d!720617) (not b!2536171) (not bm!159657) (not bm!159602) (not b!2536432) (not b!2536436) (not bm!159680) (not b!2536300) (not b!2536424) (not b!2536398) (not b!2536385) (not b!2536453) (not b!2536389) (not b!2536345) (not bm!159696) (not b!2536416) (not d!720611) (not b!2536406) (not bm!159634) (not b!2536425) (not d!720627))
(check-sat)
