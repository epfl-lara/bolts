; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756810 () Bool)

(assert start!756810)

(declare-fun b!8036448 () Bool)

(declare-fun res!3177189 () Bool)

(declare-fun e!4733802 () Bool)

(assert (=> b!8036448 (=> (not res!3177189) (not e!4733802))))

(declare-datatypes ((C!43830 0))(
  ( (C!43831 (val!32691 Int)) )
))
(declare-datatypes ((Regex!21746 0))(
  ( (ElementMatch!21746 (c!1474303 C!43830)) (Concat!30749 (regOne!44004 Regex!21746) (regTwo!44004 Regex!21746)) (EmptyExpr!21746) (Star!21746 (reg!22075 Regex!21746)) (EmptyLang!21746) (Union!21746 (regOne!44005 Regex!21746) (regTwo!44005 Regex!21746)) )
))
(declare-fun r!13107 () Regex!21746)

(declare-fun nullable!9771 (Regex!21746) Bool)

(assert (=> b!8036448 (= res!3177189 (nullable!9771 (regOne!44004 r!13107)))))

(declare-fun b!8036449 () Bool)

(declare-fun e!4733803 () Bool)

(declare-fun tp_is_empty!54487 () Bool)

(assert (=> b!8036449 (= e!4733803 tp_is_empty!54487)))

(declare-fun res!3177188 () Bool)

(assert (=> start!756810 (=> (not res!3177188) (not e!4733802))))

(declare-fun validRegex!12042 (Regex!21746) Bool)

(assert (=> start!756810 (= res!3177188 (validRegex!12042 r!13107))))

(assert (=> start!756810 e!4733802))

(assert (=> start!756810 e!4733803))

(assert (=> start!756810 tp_is_empty!54487))

(declare-fun b!8036450 () Bool)

(declare-fun RegexPrimitiveSize!160 (Regex!21746) Int)

(assert (=> b!8036450 (= e!4733802 (>= (RegexPrimitiveSize!160 (regTwo!44004 r!13107)) (RegexPrimitiveSize!160 r!13107)))))

(declare-fun lt!2722099 () Regex!21746)

(declare-fun a!2390 () C!43830)

(declare-fun derivativeStep!6665 (Regex!21746 C!43830) Regex!21746)

(assert (=> b!8036450 (= lt!2722099 (derivativeStep!6665 (regOne!44004 r!13107) a!2390))))

(declare-fun b!8036451 () Bool)

(declare-fun tp!2406428 () Bool)

(assert (=> b!8036451 (= e!4733803 tp!2406428)))

(declare-fun b!8036452 () Bool)

(declare-fun tp!2406426 () Bool)

(declare-fun tp!2406424 () Bool)

(assert (=> b!8036452 (= e!4733803 (and tp!2406426 tp!2406424))))

(declare-fun b!8036453 () Bool)

(declare-fun res!3177190 () Bool)

(assert (=> b!8036453 (=> (not res!3177190) (not e!4733802))))

(assert (=> b!8036453 (= res!3177190 (and (not (is-EmptyExpr!21746 r!13107)) (not (is-EmptyLang!21746 r!13107)) (not (is-ElementMatch!21746 r!13107)) (not (is-Union!21746 r!13107)) (not (is-Star!21746 r!13107))))))

(declare-fun b!8036454 () Bool)

(declare-fun tp!2406427 () Bool)

(declare-fun tp!2406425 () Bool)

(assert (=> b!8036454 (= e!4733803 (and tp!2406427 tp!2406425))))

(assert (= (and start!756810 res!3177188) b!8036453))

(assert (= (and b!8036453 res!3177190) b!8036448))

(assert (= (and b!8036448 res!3177189) b!8036450))

(assert (= (and start!756810 (is-ElementMatch!21746 r!13107)) b!8036449))

(assert (= (and start!756810 (is-Concat!30749 r!13107)) b!8036454))

(assert (= (and start!756810 (is-Star!21746 r!13107)) b!8036451))

(assert (= (and start!756810 (is-Union!21746 r!13107)) b!8036452))

(declare-fun m!8393398 () Bool)

(assert (=> b!8036448 m!8393398))

(declare-fun m!8393400 () Bool)

(assert (=> start!756810 m!8393400))

(declare-fun m!8393402 () Bool)

(assert (=> b!8036450 m!8393402))

(declare-fun m!8393404 () Bool)

(assert (=> b!8036450 m!8393404))

(declare-fun m!8393406 () Bool)

(assert (=> b!8036450 m!8393406))

(push 1)

(assert tp_is_empty!54487)

(assert (not b!8036448))

(assert (not b!8036451))

(assert (not b!8036454))

(assert (not start!756810))

(assert (not b!8036450))

(assert (not b!8036452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8036494 () Bool)

(declare-fun res!3177212 () Bool)

(declare-fun e!4733824 () Bool)

(assert (=> b!8036494 (=> res!3177212 e!4733824)))

(assert (=> b!8036494 (= res!3177212 (not (is-Concat!30749 r!13107)))))

(declare-fun e!4733827 () Bool)

(assert (=> b!8036494 (= e!4733827 e!4733824)))

(declare-fun b!8036495 () Bool)

(declare-fun e!4733825 () Bool)

(declare-fun call!745810 () Bool)

(assert (=> b!8036495 (= e!4733825 call!745810)))

(declare-fun b!8036496 () Bool)

(declare-fun e!4733826 () Bool)

(assert (=> b!8036496 (= e!4733826 e!4733827)))

(declare-fun c!1474309 () Bool)

(assert (=> b!8036496 (= c!1474309 (is-Union!21746 r!13107))))

(declare-fun b!8036497 () Bool)

(declare-fun e!4733828 () Bool)

(assert (=> b!8036497 (= e!4733824 e!4733828)))

(declare-fun res!3177213 () Bool)

(assert (=> b!8036497 (=> (not res!3177213) (not e!4733828))))

(declare-fun call!745811 () Bool)

(assert (=> b!8036497 (= res!3177213 call!745811)))

(declare-fun b!8036498 () Bool)

(declare-fun res!3177210 () Bool)

(assert (=> b!8036498 (=> (not res!3177210) (not e!4733825))))

(assert (=> b!8036498 (= res!3177210 call!745811)))

(assert (=> b!8036498 (= e!4733827 e!4733825)))

(declare-fun bm!745804 () Bool)

(declare-fun call!745809 () Bool)

(assert (=> bm!745804 (= call!745811 call!745809)))

(declare-fun b!8036499 () Bool)

(declare-fun e!4733829 () Bool)

(assert (=> b!8036499 (= e!4733829 e!4733826)))

(declare-fun c!1474310 () Bool)

(assert (=> b!8036499 (= c!1474310 (is-Star!21746 r!13107))))

(declare-fun bm!745805 () Bool)

(assert (=> bm!745805 (= call!745810 (validRegex!12042 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))))))

(declare-fun b!8036500 () Bool)

(declare-fun e!4733830 () Bool)

(assert (=> b!8036500 (= e!4733830 call!745809)))

(declare-fun b!8036501 () Bool)

(assert (=> b!8036501 (= e!4733828 call!745810)))

(declare-fun d!2395050 () Bool)

(declare-fun res!3177214 () Bool)

(assert (=> d!2395050 (=> res!3177214 e!4733829)))

(assert (=> d!2395050 (= res!3177214 (is-ElementMatch!21746 r!13107))))

(assert (=> d!2395050 (= (validRegex!12042 r!13107) e!4733829)))

(declare-fun bm!745806 () Bool)

(assert (=> bm!745806 (= call!745809 (validRegex!12042 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))))))

(declare-fun b!8036502 () Bool)

(assert (=> b!8036502 (= e!4733826 e!4733830)))

(declare-fun res!3177211 () Bool)

(assert (=> b!8036502 (= res!3177211 (not (nullable!9771 (reg!22075 r!13107))))))

(assert (=> b!8036502 (=> (not res!3177211) (not e!4733830))))

(assert (= (and d!2395050 (not res!3177214)) b!8036499))

(assert (= (and b!8036499 c!1474310) b!8036502))

(assert (= (and b!8036499 (not c!1474310)) b!8036496))

(assert (= (and b!8036502 res!3177211) b!8036500))

(assert (= (and b!8036496 c!1474309) b!8036498))

(assert (= (and b!8036496 (not c!1474309)) b!8036494))

(assert (= (and b!8036498 res!3177210) b!8036495))

(assert (= (and b!8036494 (not res!3177212)) b!8036497))

(assert (= (and b!8036497 res!3177213) b!8036501))

(assert (= (or b!8036495 b!8036501) bm!745805))

(assert (= (or b!8036498 b!8036497) bm!745804))

(assert (= (or b!8036500 bm!745804) bm!745806))

(declare-fun m!8393420 () Bool)

(assert (=> bm!745805 m!8393420))

(declare-fun m!8393422 () Bool)

(assert (=> bm!745806 m!8393422))

(declare-fun m!8393424 () Bool)

(assert (=> b!8036502 m!8393424))

(assert (=> start!756810 d!2395050))

(declare-fun c!1474332 () Bool)

(declare-fun call!745824 () Int)

(declare-fun bm!745817 () Bool)

(declare-fun c!1474335 () Bool)

(assert (=> bm!745817 (= call!745824 (RegexPrimitiveSize!160 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))))))

(declare-fun b!8036543 () Bool)

(declare-fun e!4733853 () Int)

(assert (=> b!8036543 (= e!4733853 0)))

(declare-fun bm!745818 () Bool)

(declare-fun call!745822 () Int)

(assert (=> bm!745818 (= call!745822 (RegexPrimitiveSize!160 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))))))

(declare-fun b!8036544 () Bool)

(declare-fun e!4733852 () Int)

(declare-fun call!745823 () Int)

(assert (=> b!8036544 (= e!4733852 (+ 1 call!745823))))

(declare-fun bm!745819 () Bool)

(assert (=> bm!745819 (= call!745823 call!745824)))

(declare-fun b!8036545 () Bool)

(declare-fun e!4733855 () Int)

(declare-fun e!4733851 () Int)

(assert (=> b!8036545 (= e!4733855 e!4733851)))

(assert (=> b!8036545 (= c!1474335 (is-Concat!30749 (regTwo!44004 r!13107)))))

(declare-fun d!2395056 () Bool)

(declare-fun lt!2722107 () Int)

(assert (=> d!2395056 (>= lt!2722107 0)))

(assert (=> d!2395056 (= lt!2722107 e!4733855)))

(declare-fun c!1474333 () Bool)

(assert (=> d!2395056 (= c!1474333 (is-ElementMatch!21746 (regTwo!44004 r!13107)))))

(assert (=> d!2395056 (= (RegexPrimitiveSize!160 (regTwo!44004 r!13107)) lt!2722107)))

(declare-fun b!8036546 () Bool)

(assert (=> b!8036546 (= e!4733851 (+ 1 call!745824 call!745822))))

(declare-fun b!8036547 () Bool)

(declare-fun e!4733854 () Int)

(assert (=> b!8036547 (= e!4733854 (+ 1 call!745823 call!745822))))

(declare-fun b!8036548 () Bool)

(declare-fun c!1474331 () Bool)

(assert (=> b!8036548 (= c!1474331 (is-EmptyLang!21746 (regTwo!44004 r!13107)))))

(assert (=> b!8036548 (= e!4733852 e!4733854)))

(declare-fun b!8036549 () Bool)

(assert (=> b!8036549 (= e!4733854 0)))

(declare-fun b!8036550 () Bool)

(assert (=> b!8036550 (= e!4733853 e!4733852)))

(assert (=> b!8036550 (= c!1474332 (is-Star!21746 (regTwo!44004 r!13107)))))

(declare-fun b!8036551 () Bool)

(declare-fun c!1474334 () Bool)

(assert (=> b!8036551 (= c!1474334 (is-EmptyExpr!21746 (regTwo!44004 r!13107)))))

(assert (=> b!8036551 (= e!4733851 e!4733853)))

(declare-fun b!8036552 () Bool)

(assert (=> b!8036552 (= e!4733855 1)))

(assert (= (and d!2395056 c!1474333) b!8036552))

(assert (= (and d!2395056 (not c!1474333)) b!8036545))

(assert (= (and b!8036545 c!1474335) b!8036546))

(assert (= (and b!8036545 (not c!1474335)) b!8036551))

(assert (= (and b!8036551 c!1474334) b!8036543))

(assert (= (and b!8036551 (not c!1474334)) b!8036550))

(assert (= (and b!8036550 c!1474332) b!8036544))

(assert (= (and b!8036550 (not c!1474332)) b!8036548))

(assert (= (and b!8036548 c!1474331) b!8036549))

(assert (= (and b!8036548 (not c!1474331)) b!8036547))

(assert (= (or b!8036544 b!8036547) bm!745819))

(assert (= (or b!8036546 b!8036547) bm!745818))

(assert (= (or b!8036546 bm!745819) bm!745817))

(declare-fun m!8393426 () Bool)

(assert (=> bm!745817 m!8393426))

(declare-fun m!8393428 () Bool)

(assert (=> bm!745818 m!8393428))

(assert (=> b!8036450 d!2395056))

(declare-fun bm!745822 () Bool)

(declare-fun call!745829 () Int)

(declare-fun c!1474340 () Bool)

(declare-fun c!1474337 () Bool)

(assert (=> bm!745822 (= call!745829 (RegexPrimitiveSize!160 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))))))

(declare-fun b!8036553 () Bool)

(declare-fun e!4733858 () Int)

(assert (=> b!8036553 (= e!4733858 0)))

(declare-fun bm!745823 () Bool)

(declare-fun call!745827 () Int)

(assert (=> bm!745823 (= call!745827 (RegexPrimitiveSize!160 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))))))

(declare-fun b!8036554 () Bool)

(declare-fun e!4733857 () Int)

(declare-fun call!745828 () Int)

(assert (=> b!8036554 (= e!4733857 (+ 1 call!745828))))

(declare-fun bm!745824 () Bool)

(assert (=> bm!745824 (= call!745828 call!745829)))

(declare-fun b!8036555 () Bool)

(declare-fun e!4733860 () Int)

(declare-fun e!4733856 () Int)

(assert (=> b!8036555 (= e!4733860 e!4733856)))

(assert (=> b!8036555 (= c!1474340 (is-Concat!30749 r!13107))))

(declare-fun d!2395058 () Bool)

(declare-fun lt!2722108 () Int)

(assert (=> d!2395058 (>= lt!2722108 0)))

(assert (=> d!2395058 (= lt!2722108 e!4733860)))

(declare-fun c!1474338 () Bool)

(assert (=> d!2395058 (= c!1474338 (is-ElementMatch!21746 r!13107))))

(assert (=> d!2395058 (= (RegexPrimitiveSize!160 r!13107) lt!2722108)))

(declare-fun b!8036556 () Bool)

(assert (=> b!8036556 (= e!4733856 (+ 1 call!745829 call!745827))))

(declare-fun b!8036557 () Bool)

(declare-fun e!4733859 () Int)

(assert (=> b!8036557 (= e!4733859 (+ 1 call!745828 call!745827))))

(declare-fun b!8036558 () Bool)

(declare-fun c!1474336 () Bool)

(assert (=> b!8036558 (= c!1474336 (is-EmptyLang!21746 r!13107))))

(assert (=> b!8036558 (= e!4733857 e!4733859)))

(declare-fun b!8036559 () Bool)

(assert (=> b!8036559 (= e!4733859 0)))

(declare-fun b!8036560 () Bool)

(assert (=> b!8036560 (= e!4733858 e!4733857)))

(assert (=> b!8036560 (= c!1474337 (is-Star!21746 r!13107))))

(declare-fun b!8036561 () Bool)

(declare-fun c!1474339 () Bool)

(assert (=> b!8036561 (= c!1474339 (is-EmptyExpr!21746 r!13107))))

(assert (=> b!8036561 (= e!4733856 e!4733858)))

(declare-fun b!8036562 () Bool)

(assert (=> b!8036562 (= e!4733860 1)))

(assert (= (and d!2395058 c!1474338) b!8036562))

(assert (= (and d!2395058 (not c!1474338)) b!8036555))

(assert (= (and b!8036555 c!1474340) b!8036556))

(assert (= (and b!8036555 (not c!1474340)) b!8036561))

(assert (= (and b!8036561 c!1474339) b!8036553))

(assert (= (and b!8036561 (not c!1474339)) b!8036560))

(assert (= (and b!8036560 c!1474337) b!8036554))

(assert (= (and b!8036560 (not c!1474337)) b!8036558))

(assert (= (and b!8036558 c!1474336) b!8036559))

(assert (= (and b!8036558 (not c!1474336)) b!8036557))

(assert (= (or b!8036554 b!8036557) bm!745824))

(assert (= (or b!8036556 b!8036557) bm!745823))

(assert (= (or b!8036556 bm!745824) bm!745822))

(declare-fun m!8393430 () Bool)

(assert (=> bm!745822 m!8393430))

(declare-fun m!8393432 () Bool)

(assert (=> bm!745823 m!8393432))

(assert (=> b!8036450 d!2395058))

(declare-fun e!4733885 () Regex!21746)

(declare-fun call!745844 () Regex!21746)

(declare-fun call!745846 () Regex!21746)

(declare-fun b!8036603 () Bool)

(assert (=> b!8036603 (= e!4733885 (Union!21746 (Concat!30749 call!745844 (regTwo!44004 (regOne!44004 r!13107))) call!745846))))

(declare-fun b!8036604 () Bool)

(declare-fun e!4733884 () Regex!21746)

(assert (=> b!8036604 (= e!4733884 (Concat!30749 call!745844 (regOne!44004 r!13107)))))

(declare-fun bm!745839 () Bool)

(declare-fun call!745847 () Regex!21746)

(assert (=> bm!745839 (= call!745844 call!745847)))

(declare-fun d!2395060 () Bool)

(declare-fun lt!2722113 () Regex!21746)

(assert (=> d!2395060 (validRegex!12042 lt!2722113)))

(declare-fun e!4733882 () Regex!21746)

(assert (=> d!2395060 (= lt!2722113 e!4733882)))

(declare-fun c!1474364 () Bool)

(assert (=> d!2395060 (= c!1474364 (or (is-EmptyExpr!21746 (regOne!44004 r!13107)) (is-EmptyLang!21746 (regOne!44004 r!13107))))))

(assert (=> d!2395060 (validRegex!12042 (regOne!44004 r!13107))))

(assert (=> d!2395060 (= (derivativeStep!6665 (regOne!44004 r!13107) a!2390) lt!2722113)))

(declare-fun b!8036605 () Bool)

(assert (=> b!8036605 (= e!4733882 EmptyLang!21746)))

(declare-fun b!8036606 () Bool)

(declare-fun c!1474362 () Bool)

(assert (=> b!8036606 (= c!1474362 (is-Union!21746 (regOne!44004 r!13107)))))

(declare-fun e!4733883 () Regex!21746)

(declare-fun e!4733881 () Regex!21746)

(assert (=> b!8036606 (= e!4733883 e!4733881)))

(declare-fun b!8036607 () Bool)

(assert (=> b!8036607 (= e!4733885 (Union!21746 (Concat!30749 call!745846 (regTwo!44004 (regOne!44004 r!13107))) EmptyLang!21746))))

(declare-fun b!8036608 () Bool)

(declare-fun call!745845 () Regex!21746)

(assert (=> b!8036608 (= e!4733881 (Union!21746 call!745845 call!745847))))

(declare-fun b!8036609 () Bool)

(assert (=> b!8036609 (= e!4733881 e!4733884)))

(declare-fun c!1474365 () Bool)

(assert (=> b!8036609 (= c!1474365 (is-Star!21746 (regOne!44004 r!13107)))))

(declare-fun b!8036610 () Bool)

(assert (=> b!8036610 (= e!4733882 e!4733883)))

(declare-fun c!1474361 () Bool)

(assert (=> b!8036610 (= c!1474361 (is-ElementMatch!21746 (regOne!44004 r!13107)))))

(declare-fun b!8036611 () Bool)

(declare-fun c!1474363 () Bool)

(assert (=> b!8036611 (= c!1474363 (nullable!9771 (regOne!44004 (regOne!44004 r!13107))))))

(assert (=> b!8036611 (= e!4733884 e!4733885)))

(declare-fun bm!745840 () Bool)

(assert (=> bm!745840 (= call!745846 call!745845)))

(declare-fun b!8036612 () Bool)

(assert (=> b!8036612 (= e!4733883 (ite (= a!2390 (c!1474303 (regOne!44004 r!13107))) EmptyExpr!21746 EmptyLang!21746))))

(declare-fun bm!745841 () Bool)

(assert (=> bm!745841 (= call!745845 (derivativeStep!6665 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))) a!2390))))

(declare-fun bm!745842 () Bool)

(assert (=> bm!745842 (= call!745847 (derivativeStep!6665 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))) a!2390))))

(assert (= (and d!2395060 c!1474364) b!8036605))

(assert (= (and d!2395060 (not c!1474364)) b!8036610))

(assert (= (and b!8036610 c!1474361) b!8036612))

(assert (= (and b!8036610 (not c!1474361)) b!8036606))

(assert (= (and b!8036606 c!1474362) b!8036608))

(assert (= (and b!8036606 (not c!1474362)) b!8036609))

(assert (= (and b!8036609 c!1474365) b!8036604))

(assert (= (and b!8036609 (not c!1474365)) b!8036611))

(assert (= (and b!8036611 c!1474363) b!8036603))

(assert (= (and b!8036611 (not c!1474363)) b!8036607))

(assert (= (or b!8036603 b!8036607) bm!745840))

(assert (= (or b!8036604 b!8036603) bm!745839))

(assert (= (or b!8036608 bm!745839) bm!745842))

(assert (= (or b!8036608 bm!745840) bm!745841))

(declare-fun m!8393442 () Bool)

(assert (=> d!2395060 m!8393442))

(declare-fun m!8393444 () Bool)

(assert (=> d!2395060 m!8393444))

(declare-fun m!8393446 () Bool)

(assert (=> b!8036611 m!8393446))

(declare-fun m!8393448 () Bool)

(assert (=> bm!745841 m!8393448))

(declare-fun m!8393450 () Bool)

(assert (=> bm!745842 m!8393450))

(assert (=> b!8036450 d!2395060))

(declare-fun d!2395066 () Bool)

(declare-fun nullableFct!3865 (Regex!21746) Bool)

(assert (=> d!2395066 (= (nullable!9771 (regOne!44004 r!13107)) (nullableFct!3865 (regOne!44004 r!13107)))))

(declare-fun bs!1971512 () Bool)

(assert (= bs!1971512 d!2395066))

(declare-fun m!8393452 () Bool)

(assert (=> bs!1971512 m!8393452))

(assert (=> b!8036448 d!2395066))

(declare-fun b!8036623 () Bool)

(declare-fun e!4733888 () Bool)

(assert (=> b!8036623 (= e!4733888 tp_is_empty!54487)))

(declare-fun b!8036624 () Bool)

(declare-fun tp!2406458 () Bool)

(declare-fun tp!2406454 () Bool)

(assert (=> b!8036624 (= e!4733888 (and tp!2406458 tp!2406454))))

(declare-fun b!8036626 () Bool)

(declare-fun tp!2406457 () Bool)

(declare-fun tp!2406455 () Bool)

(assert (=> b!8036626 (= e!4733888 (and tp!2406457 tp!2406455))))

(assert (=> b!8036452 (= tp!2406426 e!4733888)))

(declare-fun b!8036625 () Bool)

(declare-fun tp!2406456 () Bool)

(assert (=> b!8036625 (= e!4733888 tp!2406456)))

(assert (= (and b!8036452 (is-ElementMatch!21746 (regOne!44005 r!13107))) b!8036623))

(assert (= (and b!8036452 (is-Concat!30749 (regOne!44005 r!13107))) b!8036624))

(assert (= (and b!8036452 (is-Star!21746 (regOne!44005 r!13107))) b!8036625))

(assert (= (and b!8036452 (is-Union!21746 (regOne!44005 r!13107))) b!8036626))

(declare-fun b!8036627 () Bool)

(declare-fun e!4733889 () Bool)

(assert (=> b!8036627 (= e!4733889 tp_is_empty!54487)))

(declare-fun b!8036628 () Bool)

(declare-fun tp!2406463 () Bool)

(declare-fun tp!2406459 () Bool)

(assert (=> b!8036628 (= e!4733889 (and tp!2406463 tp!2406459))))

(declare-fun b!8036630 () Bool)

(declare-fun tp!2406462 () Bool)

(declare-fun tp!2406460 () Bool)

(assert (=> b!8036630 (= e!4733889 (and tp!2406462 tp!2406460))))

(assert (=> b!8036452 (= tp!2406424 e!4733889)))

(declare-fun b!8036629 () Bool)

(declare-fun tp!2406461 () Bool)

(assert (=> b!8036629 (= e!4733889 tp!2406461)))

(assert (= (and b!8036452 (is-ElementMatch!21746 (regTwo!44005 r!13107))) b!8036627))

(assert (= (and b!8036452 (is-Concat!30749 (regTwo!44005 r!13107))) b!8036628))

(assert (= (and b!8036452 (is-Star!21746 (regTwo!44005 r!13107))) b!8036629))

(assert (= (and b!8036452 (is-Union!21746 (regTwo!44005 r!13107))) b!8036630))

(declare-fun b!8036631 () Bool)

(declare-fun e!4733890 () Bool)

(assert (=> b!8036631 (= e!4733890 tp_is_empty!54487)))

(declare-fun b!8036632 () Bool)

(declare-fun tp!2406468 () Bool)

(declare-fun tp!2406464 () Bool)

(assert (=> b!8036632 (= e!4733890 (and tp!2406468 tp!2406464))))

(declare-fun b!8036634 () Bool)

(declare-fun tp!2406467 () Bool)

(declare-fun tp!2406465 () Bool)

(assert (=> b!8036634 (= e!4733890 (and tp!2406467 tp!2406465))))

(assert (=> b!8036451 (= tp!2406428 e!4733890)))

(declare-fun b!8036633 () Bool)

(declare-fun tp!2406466 () Bool)

(assert (=> b!8036633 (= e!4733890 tp!2406466)))

(assert (= (and b!8036451 (is-ElementMatch!21746 (reg!22075 r!13107))) b!8036631))

(assert (= (and b!8036451 (is-Concat!30749 (reg!22075 r!13107))) b!8036632))

(assert (= (and b!8036451 (is-Star!21746 (reg!22075 r!13107))) b!8036633))

(assert (= (and b!8036451 (is-Union!21746 (reg!22075 r!13107))) b!8036634))

(declare-fun b!8036635 () Bool)

(declare-fun e!4733891 () Bool)

(assert (=> b!8036635 (= e!4733891 tp_is_empty!54487)))

(declare-fun b!8036636 () Bool)

(declare-fun tp!2406473 () Bool)

(declare-fun tp!2406469 () Bool)

(assert (=> b!8036636 (= e!4733891 (and tp!2406473 tp!2406469))))

(declare-fun b!8036638 () Bool)

(declare-fun tp!2406472 () Bool)

(declare-fun tp!2406470 () Bool)

(assert (=> b!8036638 (= e!4733891 (and tp!2406472 tp!2406470))))

(assert (=> b!8036454 (= tp!2406427 e!4733891)))

(declare-fun b!8036637 () Bool)

(declare-fun tp!2406471 () Bool)

(assert (=> b!8036637 (= e!4733891 tp!2406471)))

(assert (= (and b!8036454 (is-ElementMatch!21746 (regOne!44004 r!13107))) b!8036635))

(assert (= (and b!8036454 (is-Concat!30749 (regOne!44004 r!13107))) b!8036636))

(assert (= (and b!8036454 (is-Star!21746 (regOne!44004 r!13107))) b!8036637))

(assert (= (and b!8036454 (is-Union!21746 (regOne!44004 r!13107))) b!8036638))

(declare-fun b!8036639 () Bool)

(declare-fun e!4733892 () Bool)

(assert (=> b!8036639 (= e!4733892 tp_is_empty!54487)))

(declare-fun b!8036640 () Bool)

(declare-fun tp!2406478 () Bool)

(declare-fun tp!2406474 () Bool)

(assert (=> b!8036640 (= e!4733892 (and tp!2406478 tp!2406474))))

(declare-fun b!8036642 () Bool)

(declare-fun tp!2406477 () Bool)

(declare-fun tp!2406475 () Bool)

(assert (=> b!8036642 (= e!4733892 (and tp!2406477 tp!2406475))))

(assert (=> b!8036454 (= tp!2406425 e!4733892)))

(declare-fun b!8036641 () Bool)

(declare-fun tp!2406476 () Bool)

(assert (=> b!8036641 (= e!4733892 tp!2406476)))

(assert (= (and b!8036454 (is-ElementMatch!21746 (regTwo!44004 r!13107))) b!8036639))

(assert (= (and b!8036454 (is-Concat!30749 (regTwo!44004 r!13107))) b!8036640))

(assert (= (and b!8036454 (is-Star!21746 (regTwo!44004 r!13107))) b!8036641))

(assert (= (and b!8036454 (is-Union!21746 (regTwo!44004 r!13107))) b!8036642))

(push 1)

(assert (not bm!745822))

(assert tp_is_empty!54487)

(assert (not b!8036636))

(assert (not d!2395066))

(assert (not b!8036611))

(assert (not b!8036502))

(assert (not b!8036630))

(assert (not bm!745806))

(assert (not b!8036629))

(assert (not bm!745805))

(assert (not b!8036633))

(assert (not b!8036637))

(assert (not b!8036625))

(assert (not bm!745818))

(assert (not b!8036638))

(assert (not bm!745823))

(assert (not b!8036641))

(assert (not bm!745841))

(assert (not b!8036640))

(assert (not d!2395060))

(assert (not b!8036634))

(assert (not b!8036624))

(assert (not b!8036642))

(assert (not b!8036626))

(assert (not b!8036628))

(assert (not b!8036632))

(assert (not bm!745817))

(assert (not bm!745842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!745871 () Int)

(declare-fun bm!745864 () Bool)

(declare-fun c!1474391 () Bool)

(declare-fun c!1474388 () Bool)

(assert (=> bm!745864 (= call!745871 (RegexPrimitiveSize!160 (ite c!1474391 (regOne!44004 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))) (ite c!1474388 (reg!22075 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))) (regOne!44005 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107)))))))))))

(declare-fun b!8036730 () Bool)

(declare-fun e!4733938 () Int)

(assert (=> b!8036730 (= e!4733938 0)))

(declare-fun bm!745865 () Bool)

(declare-fun call!745869 () Int)

(assert (=> bm!745865 (= call!745869 (RegexPrimitiveSize!160 (ite c!1474391 (regTwo!44004 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))) (regTwo!44005 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))))))))

(declare-fun b!8036731 () Bool)

(declare-fun e!4733937 () Int)

(declare-fun call!745870 () Int)

(assert (=> b!8036731 (= e!4733937 (+ 1 call!745870))))

(declare-fun bm!745866 () Bool)

(assert (=> bm!745866 (= call!745870 call!745871)))

(declare-fun b!8036732 () Bool)

(declare-fun e!4733940 () Int)

(declare-fun e!4733936 () Int)

(assert (=> b!8036732 (= e!4733940 e!4733936)))

(assert (=> b!8036732 (= c!1474391 (is-Concat!30749 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))))))

(declare-fun d!2395070 () Bool)

(declare-fun lt!2722117 () Int)

(assert (=> d!2395070 (>= lt!2722117 0)))

(assert (=> d!2395070 (= lt!2722117 e!4733940)))

(declare-fun c!1474389 () Bool)

(assert (=> d!2395070 (= c!1474389 (is-ElementMatch!21746 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))))))

(assert (=> d!2395070 (= (RegexPrimitiveSize!160 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))) lt!2722117)))

(declare-fun b!8036733 () Bool)

(assert (=> b!8036733 (= e!4733936 (+ 1 call!745871 call!745869))))

(declare-fun b!8036734 () Bool)

(declare-fun e!4733939 () Int)

(assert (=> b!8036734 (= e!4733939 (+ 1 call!745870 call!745869))))

(declare-fun b!8036735 () Bool)

(declare-fun c!1474387 () Bool)

(assert (=> b!8036735 (= c!1474387 (is-EmptyLang!21746 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))))))

(assert (=> b!8036735 (= e!4733937 e!4733939)))

(declare-fun b!8036736 () Bool)

(assert (=> b!8036736 (= e!4733939 0)))

(declare-fun b!8036737 () Bool)

(assert (=> b!8036737 (= e!4733938 e!4733937)))

(assert (=> b!8036737 (= c!1474388 (is-Star!21746 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))))))

(declare-fun c!1474390 () Bool)

(declare-fun b!8036738 () Bool)

(assert (=> b!8036738 (= c!1474390 (is-EmptyExpr!21746 (ite c!1474335 (regOne!44004 (regTwo!44004 r!13107)) (ite c!1474332 (reg!22075 (regTwo!44004 r!13107)) (regOne!44005 (regTwo!44004 r!13107))))))))

(assert (=> b!8036738 (= e!4733936 e!4733938)))

(declare-fun b!8036739 () Bool)

(assert (=> b!8036739 (= e!4733940 1)))

(assert (= (and d!2395070 c!1474389) b!8036739))

(assert (= (and d!2395070 (not c!1474389)) b!8036732))

(assert (= (and b!8036732 c!1474391) b!8036733))

(assert (= (and b!8036732 (not c!1474391)) b!8036738))

(assert (= (and b!8036738 c!1474390) b!8036730))

(assert (= (and b!8036738 (not c!1474390)) b!8036737))

(assert (= (and b!8036737 c!1474388) b!8036731))

(assert (= (and b!8036737 (not c!1474388)) b!8036735))

(assert (= (and b!8036735 c!1474387) b!8036736))

(assert (= (and b!8036735 (not c!1474387)) b!8036734))

(assert (= (or b!8036731 b!8036734) bm!745866))

(assert (= (or b!8036733 b!8036734) bm!745865))

(assert (= (or b!8036733 bm!745866) bm!745864))

(declare-fun m!8393470 () Bool)

(assert (=> bm!745864 m!8393470))

(declare-fun m!8393472 () Bool)

(assert (=> bm!745865 m!8393472))

(assert (=> bm!745817 d!2395070))

(declare-fun b!8036740 () Bool)

(declare-fun res!3177232 () Bool)

(declare-fun e!4733941 () Bool)

(assert (=> b!8036740 (=> res!3177232 e!4733941)))

(assert (=> b!8036740 (= res!3177232 (not (is-Concat!30749 lt!2722113)))))

(declare-fun e!4733944 () Bool)

(assert (=> b!8036740 (= e!4733944 e!4733941)))

(declare-fun b!8036741 () Bool)

(declare-fun e!4733942 () Bool)

(declare-fun call!745873 () Bool)

(assert (=> b!8036741 (= e!4733942 call!745873)))

(declare-fun b!8036742 () Bool)

(declare-fun e!4733943 () Bool)

(assert (=> b!8036742 (= e!4733943 e!4733944)))

(declare-fun c!1474392 () Bool)

(assert (=> b!8036742 (= c!1474392 (is-Union!21746 lt!2722113))))

(declare-fun b!8036743 () Bool)

(declare-fun e!4733945 () Bool)

(assert (=> b!8036743 (= e!4733941 e!4733945)))

(declare-fun res!3177233 () Bool)

(assert (=> b!8036743 (=> (not res!3177233) (not e!4733945))))

(declare-fun call!745874 () Bool)

(assert (=> b!8036743 (= res!3177233 call!745874)))

(declare-fun b!8036744 () Bool)

(declare-fun res!3177230 () Bool)

(assert (=> b!8036744 (=> (not res!3177230) (not e!4733942))))

(assert (=> b!8036744 (= res!3177230 call!745874)))

(assert (=> b!8036744 (= e!4733944 e!4733942)))

(declare-fun bm!745867 () Bool)

(declare-fun call!745872 () Bool)

(assert (=> bm!745867 (= call!745874 call!745872)))

(declare-fun b!8036745 () Bool)

(declare-fun e!4733946 () Bool)

(assert (=> b!8036745 (= e!4733946 e!4733943)))

(declare-fun c!1474393 () Bool)

(assert (=> b!8036745 (= c!1474393 (is-Star!21746 lt!2722113))))

(declare-fun bm!745868 () Bool)

(assert (=> bm!745868 (= call!745873 (validRegex!12042 (ite c!1474392 (regTwo!44005 lt!2722113) (regTwo!44004 lt!2722113))))))

(declare-fun b!8036746 () Bool)

(declare-fun e!4733947 () Bool)

(assert (=> b!8036746 (= e!4733947 call!745872)))

(declare-fun b!8036747 () Bool)

(assert (=> b!8036747 (= e!4733945 call!745873)))

(declare-fun d!2395072 () Bool)

(declare-fun res!3177234 () Bool)

(assert (=> d!2395072 (=> res!3177234 e!4733946)))

(assert (=> d!2395072 (= res!3177234 (is-ElementMatch!21746 lt!2722113))))

(assert (=> d!2395072 (= (validRegex!12042 lt!2722113) e!4733946)))

(declare-fun bm!745869 () Bool)

(assert (=> bm!745869 (= call!745872 (validRegex!12042 (ite c!1474393 (reg!22075 lt!2722113) (ite c!1474392 (regOne!44005 lt!2722113) (regOne!44004 lt!2722113)))))))

(declare-fun b!8036748 () Bool)

(assert (=> b!8036748 (= e!4733943 e!4733947)))

(declare-fun res!3177231 () Bool)

(assert (=> b!8036748 (= res!3177231 (not (nullable!9771 (reg!22075 lt!2722113))))))

(assert (=> b!8036748 (=> (not res!3177231) (not e!4733947))))

(assert (= (and d!2395072 (not res!3177234)) b!8036745))

(assert (= (and b!8036745 c!1474393) b!8036748))

(assert (= (and b!8036745 (not c!1474393)) b!8036742))

(assert (= (and b!8036748 res!3177231) b!8036746))

(assert (= (and b!8036742 c!1474392) b!8036744))

(assert (= (and b!8036742 (not c!1474392)) b!8036740))

(assert (= (and b!8036744 res!3177230) b!8036741))

(assert (= (and b!8036740 (not res!3177232)) b!8036743))

(assert (= (and b!8036743 res!3177233) b!8036747))

(assert (= (or b!8036741 b!8036747) bm!745868))

(assert (= (or b!8036744 b!8036743) bm!745867))

(assert (= (or b!8036746 bm!745867) bm!745869))

(declare-fun m!8393474 () Bool)

(assert (=> bm!745868 m!8393474))

(declare-fun m!8393476 () Bool)

(assert (=> bm!745869 m!8393476))

(declare-fun m!8393478 () Bool)

(assert (=> b!8036748 m!8393478))

(assert (=> d!2395060 d!2395072))

(declare-fun b!8036749 () Bool)

(declare-fun res!3177237 () Bool)

(declare-fun e!4733948 () Bool)

(assert (=> b!8036749 (=> res!3177237 e!4733948)))

(assert (=> b!8036749 (= res!3177237 (not (is-Concat!30749 (regOne!44004 r!13107))))))

(declare-fun e!4733951 () Bool)

(assert (=> b!8036749 (= e!4733951 e!4733948)))

(declare-fun b!8036750 () Bool)

(declare-fun e!4733949 () Bool)

(declare-fun call!745876 () Bool)

(assert (=> b!8036750 (= e!4733949 call!745876)))

(declare-fun b!8036751 () Bool)

(declare-fun e!4733950 () Bool)

(assert (=> b!8036751 (= e!4733950 e!4733951)))

(declare-fun c!1474394 () Bool)

(assert (=> b!8036751 (= c!1474394 (is-Union!21746 (regOne!44004 r!13107)))))

(declare-fun b!8036752 () Bool)

(declare-fun e!4733952 () Bool)

(assert (=> b!8036752 (= e!4733948 e!4733952)))

(declare-fun res!3177238 () Bool)

(assert (=> b!8036752 (=> (not res!3177238) (not e!4733952))))

(declare-fun call!745877 () Bool)

(assert (=> b!8036752 (= res!3177238 call!745877)))

(declare-fun b!8036753 () Bool)

(declare-fun res!3177235 () Bool)

(assert (=> b!8036753 (=> (not res!3177235) (not e!4733949))))

(assert (=> b!8036753 (= res!3177235 call!745877)))

(assert (=> b!8036753 (= e!4733951 e!4733949)))

(declare-fun bm!745870 () Bool)

(declare-fun call!745875 () Bool)

(assert (=> bm!745870 (= call!745877 call!745875)))

(declare-fun b!8036754 () Bool)

(declare-fun e!4733953 () Bool)

(assert (=> b!8036754 (= e!4733953 e!4733950)))

(declare-fun c!1474395 () Bool)

(assert (=> b!8036754 (= c!1474395 (is-Star!21746 (regOne!44004 r!13107)))))

(declare-fun bm!745871 () Bool)

(assert (=> bm!745871 (= call!745876 (validRegex!12042 (ite c!1474394 (regTwo!44005 (regOne!44004 r!13107)) (regTwo!44004 (regOne!44004 r!13107)))))))

(declare-fun b!8036755 () Bool)

(declare-fun e!4733954 () Bool)

(assert (=> b!8036755 (= e!4733954 call!745875)))

(declare-fun b!8036756 () Bool)

(assert (=> b!8036756 (= e!4733952 call!745876)))

(declare-fun d!2395074 () Bool)

(declare-fun res!3177239 () Bool)

(assert (=> d!2395074 (=> res!3177239 e!4733953)))

(assert (=> d!2395074 (= res!3177239 (is-ElementMatch!21746 (regOne!44004 r!13107)))))

(assert (=> d!2395074 (= (validRegex!12042 (regOne!44004 r!13107)) e!4733953)))

(declare-fun bm!745872 () Bool)

(assert (=> bm!745872 (= call!745875 (validRegex!12042 (ite c!1474395 (reg!22075 (regOne!44004 r!13107)) (ite c!1474394 (regOne!44005 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun b!8036757 () Bool)

(assert (=> b!8036757 (= e!4733950 e!4733954)))

(declare-fun res!3177236 () Bool)

(assert (=> b!8036757 (= res!3177236 (not (nullable!9771 (reg!22075 (regOne!44004 r!13107)))))))

(assert (=> b!8036757 (=> (not res!3177236) (not e!4733954))))

(assert (= (and d!2395074 (not res!3177239)) b!8036754))

(assert (= (and b!8036754 c!1474395) b!8036757))

(assert (= (and b!8036754 (not c!1474395)) b!8036751))

(assert (= (and b!8036757 res!3177236) b!8036755))

(assert (= (and b!8036751 c!1474394) b!8036753))

(assert (= (and b!8036751 (not c!1474394)) b!8036749))

(assert (= (and b!8036753 res!3177235) b!8036750))

(assert (= (and b!8036749 (not res!3177237)) b!8036752))

(assert (= (and b!8036752 res!3177238) b!8036756))

(assert (= (or b!8036750 b!8036756) bm!745871))

(assert (= (or b!8036753 b!8036752) bm!745870))

(assert (= (or b!8036755 bm!745870) bm!745872))

(declare-fun m!8393480 () Bool)

(assert (=> bm!745871 m!8393480))

(declare-fun m!8393482 () Bool)

(assert (=> bm!745872 m!8393482))

(declare-fun m!8393484 () Bool)

(assert (=> b!8036757 m!8393484))

(assert (=> d!2395060 d!2395074))

(declare-fun b!8036758 () Bool)

(declare-fun res!3177242 () Bool)

(declare-fun e!4733955 () Bool)

(assert (=> b!8036758 (=> res!3177242 e!4733955)))

(assert (=> b!8036758 (= res!3177242 (not (is-Concat!30749 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107)))))))

(declare-fun e!4733958 () Bool)

(assert (=> b!8036758 (= e!4733958 e!4733955)))

(declare-fun b!8036759 () Bool)

(declare-fun e!4733956 () Bool)

(declare-fun call!745879 () Bool)

(assert (=> b!8036759 (= e!4733956 call!745879)))

(declare-fun b!8036760 () Bool)

(declare-fun e!4733957 () Bool)

(assert (=> b!8036760 (= e!4733957 e!4733958)))

(declare-fun c!1474396 () Bool)

(assert (=> b!8036760 (= c!1474396 (is-Union!21746 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))))))

(declare-fun b!8036761 () Bool)

(declare-fun e!4733959 () Bool)

(assert (=> b!8036761 (= e!4733955 e!4733959)))

(declare-fun res!3177243 () Bool)

(assert (=> b!8036761 (=> (not res!3177243) (not e!4733959))))

(declare-fun call!745880 () Bool)

(assert (=> b!8036761 (= res!3177243 call!745880)))

(declare-fun b!8036762 () Bool)

(declare-fun res!3177240 () Bool)

(assert (=> b!8036762 (=> (not res!3177240) (not e!4733956))))

(assert (=> b!8036762 (= res!3177240 call!745880)))

(assert (=> b!8036762 (= e!4733958 e!4733956)))

(declare-fun bm!745873 () Bool)

(declare-fun call!745878 () Bool)

(assert (=> bm!745873 (= call!745880 call!745878)))

(declare-fun b!8036763 () Bool)

(declare-fun e!4733960 () Bool)

(assert (=> b!8036763 (= e!4733960 e!4733957)))

(declare-fun c!1474397 () Bool)

(assert (=> b!8036763 (= c!1474397 (is-Star!21746 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))))))

(declare-fun bm!745874 () Bool)

(assert (=> bm!745874 (= call!745879 (validRegex!12042 (ite c!1474396 (regTwo!44005 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))) (regTwo!44004 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))))))))

(declare-fun b!8036764 () Bool)

(declare-fun e!4733961 () Bool)

(assert (=> b!8036764 (= e!4733961 call!745878)))

(declare-fun b!8036765 () Bool)

(assert (=> b!8036765 (= e!4733959 call!745879)))

(declare-fun d!2395076 () Bool)

(declare-fun res!3177244 () Bool)

(assert (=> d!2395076 (=> res!3177244 e!4733960)))

(assert (=> d!2395076 (= res!3177244 (is-ElementMatch!21746 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))))))

(assert (=> d!2395076 (= (validRegex!12042 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))) e!4733960)))

(declare-fun bm!745875 () Bool)

(assert (=> bm!745875 (= call!745878 (validRegex!12042 (ite c!1474397 (reg!22075 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))) (ite c!1474396 (regOne!44005 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))) (regOne!44004 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107)))))))))

(declare-fun b!8036766 () Bool)

(assert (=> b!8036766 (= e!4733957 e!4733961)))

(declare-fun res!3177241 () Bool)

(assert (=> b!8036766 (= res!3177241 (not (nullable!9771 (reg!22075 (ite c!1474309 (regTwo!44005 r!13107) (regTwo!44004 r!13107))))))))

(assert (=> b!8036766 (=> (not res!3177241) (not e!4733961))))

(assert (= (and d!2395076 (not res!3177244)) b!8036763))

(assert (= (and b!8036763 c!1474397) b!8036766))

(assert (= (and b!8036763 (not c!1474397)) b!8036760))

(assert (= (and b!8036766 res!3177241) b!8036764))

(assert (= (and b!8036760 c!1474396) b!8036762))

(assert (= (and b!8036760 (not c!1474396)) b!8036758))

(assert (= (and b!8036762 res!3177240) b!8036759))

(assert (= (and b!8036758 (not res!3177242)) b!8036761))

(assert (= (and b!8036761 res!3177243) b!8036765))

(assert (= (or b!8036759 b!8036765) bm!745874))

(assert (= (or b!8036762 b!8036761) bm!745873))

(assert (= (or b!8036764 bm!745873) bm!745875))

(declare-fun m!8393486 () Bool)

(assert (=> bm!745874 m!8393486))

(declare-fun m!8393488 () Bool)

(assert (=> bm!745875 m!8393488))

(declare-fun m!8393490 () Bool)

(assert (=> b!8036766 m!8393490))

(assert (=> bm!745805 d!2395076))

(declare-fun b!8036767 () Bool)

(declare-fun res!3177247 () Bool)

(declare-fun e!4733962 () Bool)

(assert (=> b!8036767 (=> res!3177247 e!4733962)))

(assert (=> b!8036767 (= res!3177247 (not (is-Concat!30749 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107))))))))

(declare-fun e!4733965 () Bool)

(assert (=> b!8036767 (= e!4733965 e!4733962)))

(declare-fun b!8036768 () Bool)

(declare-fun e!4733963 () Bool)

(declare-fun call!745882 () Bool)

(assert (=> b!8036768 (= e!4733963 call!745882)))

(declare-fun b!8036769 () Bool)

(declare-fun e!4733964 () Bool)

(assert (=> b!8036769 (= e!4733964 e!4733965)))

(declare-fun c!1474398 () Bool)

(assert (=> b!8036769 (= c!1474398 (is-Union!21746 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))))))

(declare-fun b!8036770 () Bool)

(declare-fun e!4733966 () Bool)

(assert (=> b!8036770 (= e!4733962 e!4733966)))

(declare-fun res!3177248 () Bool)

(assert (=> b!8036770 (=> (not res!3177248) (not e!4733966))))

(declare-fun call!745883 () Bool)

(assert (=> b!8036770 (= res!3177248 call!745883)))

(declare-fun b!8036771 () Bool)

(declare-fun res!3177245 () Bool)

(assert (=> b!8036771 (=> (not res!3177245) (not e!4733963))))

(assert (=> b!8036771 (= res!3177245 call!745883)))

(assert (=> b!8036771 (= e!4733965 e!4733963)))

(declare-fun bm!745876 () Bool)

(declare-fun call!745881 () Bool)

(assert (=> bm!745876 (= call!745883 call!745881)))

(declare-fun b!8036772 () Bool)

(declare-fun e!4733967 () Bool)

(assert (=> b!8036772 (= e!4733967 e!4733964)))

(declare-fun c!1474399 () Bool)

(assert (=> b!8036772 (= c!1474399 (is-Star!21746 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))))))

(declare-fun bm!745877 () Bool)

(assert (=> bm!745877 (= call!745882 (validRegex!12042 (ite c!1474398 (regTwo!44005 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))) (regTwo!44004 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))))))))

(declare-fun b!8036773 () Bool)

(declare-fun e!4733968 () Bool)

(assert (=> b!8036773 (= e!4733968 call!745881)))

(declare-fun b!8036774 () Bool)

(assert (=> b!8036774 (= e!4733966 call!745882)))

(declare-fun d!2395078 () Bool)

(declare-fun res!3177249 () Bool)

(assert (=> d!2395078 (=> res!3177249 e!4733967)))

(assert (=> d!2395078 (= res!3177249 (is-ElementMatch!21746 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))))))

(assert (=> d!2395078 (= (validRegex!12042 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))) e!4733967)))

(declare-fun bm!745878 () Bool)

(assert (=> bm!745878 (= call!745881 (validRegex!12042 (ite c!1474399 (reg!22075 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))) (ite c!1474398 (regOne!44005 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))) (regOne!44004 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107))))))))))

(declare-fun b!8036775 () Bool)

(assert (=> b!8036775 (= e!4733964 e!4733968)))

(declare-fun res!3177246 () Bool)

(assert (=> b!8036775 (= res!3177246 (not (nullable!9771 (reg!22075 (ite c!1474310 (reg!22075 r!13107) (ite c!1474309 (regOne!44005 r!13107) (regOne!44004 r!13107)))))))))

(assert (=> b!8036775 (=> (not res!3177246) (not e!4733968))))

(assert (= (and d!2395078 (not res!3177249)) b!8036772))

(assert (= (and b!8036772 c!1474399) b!8036775))

(assert (= (and b!8036772 (not c!1474399)) b!8036769))

(assert (= (and b!8036775 res!3177246) b!8036773))

(assert (= (and b!8036769 c!1474398) b!8036771))

(assert (= (and b!8036769 (not c!1474398)) b!8036767))

(assert (= (and b!8036771 res!3177245) b!8036768))

(assert (= (and b!8036767 (not res!3177247)) b!8036770))

(assert (= (and b!8036770 res!3177248) b!8036774))

(assert (= (or b!8036768 b!8036774) bm!745877))

(assert (= (or b!8036771 b!8036770) bm!745876))

(assert (= (or b!8036773 bm!745876) bm!745878))

(declare-fun m!8393492 () Bool)

(assert (=> bm!745877 m!8393492))

(declare-fun m!8393494 () Bool)

(assert (=> bm!745878 m!8393494))

(declare-fun m!8393496 () Bool)

(assert (=> b!8036775 m!8393496))

(assert (=> bm!745806 d!2395078))

(declare-fun bm!745879 () Bool)

(declare-fun c!1474401 () Bool)

(declare-fun c!1474404 () Bool)

(declare-fun call!745886 () Int)

(assert (=> bm!745879 (= call!745886 (RegexPrimitiveSize!160 (ite c!1474404 (regOne!44004 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))) (ite c!1474401 (reg!22075 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))) (regOne!44005 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107))))))))))

(declare-fun b!8036776 () Bool)

(declare-fun e!4733971 () Int)

(assert (=> b!8036776 (= e!4733971 0)))

(declare-fun bm!745880 () Bool)

(declare-fun call!745884 () Int)

(assert (=> bm!745880 (= call!745884 (RegexPrimitiveSize!160 (ite c!1474404 (regTwo!44004 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))) (regTwo!44005 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))))))))

(declare-fun b!8036777 () Bool)

(declare-fun e!4733970 () Int)

(declare-fun call!745885 () Int)

(assert (=> b!8036777 (= e!4733970 (+ 1 call!745885))))

(declare-fun bm!745881 () Bool)

(assert (=> bm!745881 (= call!745885 call!745886)))

(declare-fun b!8036778 () Bool)

(declare-fun e!4733973 () Int)

(declare-fun e!4733969 () Int)

(assert (=> b!8036778 (= e!4733973 e!4733969)))

(assert (=> b!8036778 (= c!1474404 (is-Concat!30749 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))))))

(declare-fun d!2395080 () Bool)

(declare-fun lt!2722118 () Int)

(assert (=> d!2395080 (>= lt!2722118 0)))

(assert (=> d!2395080 (= lt!2722118 e!4733973)))

(declare-fun c!1474402 () Bool)

(assert (=> d!2395080 (= c!1474402 (is-ElementMatch!21746 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))))))

(assert (=> d!2395080 (= (RegexPrimitiveSize!160 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))) lt!2722118)))

(declare-fun b!8036779 () Bool)

(assert (=> b!8036779 (= e!4733969 (+ 1 call!745886 call!745884))))

(declare-fun b!8036780 () Bool)

(declare-fun e!4733972 () Int)

(assert (=> b!8036780 (= e!4733972 (+ 1 call!745885 call!745884))))

(declare-fun c!1474400 () Bool)

(declare-fun b!8036781 () Bool)

(assert (=> b!8036781 (= c!1474400 (is-EmptyLang!21746 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))))))

(assert (=> b!8036781 (= e!4733970 e!4733972)))

(declare-fun b!8036782 () Bool)

(assert (=> b!8036782 (= e!4733972 0)))

(declare-fun b!8036783 () Bool)

(assert (=> b!8036783 (= e!4733971 e!4733970)))

(assert (=> b!8036783 (= c!1474401 (is-Star!21746 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))))))

(declare-fun c!1474403 () Bool)

(declare-fun b!8036784 () Bool)

(assert (=> b!8036784 (= c!1474403 (is-EmptyExpr!21746 (ite c!1474340 (regOne!44004 r!13107) (ite c!1474337 (reg!22075 r!13107) (regOne!44005 r!13107)))))))

(assert (=> b!8036784 (= e!4733969 e!4733971)))

(declare-fun b!8036785 () Bool)

(assert (=> b!8036785 (= e!4733973 1)))

(assert (= (and d!2395080 c!1474402) b!8036785))

(assert (= (and d!2395080 (not c!1474402)) b!8036778))

(assert (= (and b!8036778 c!1474404) b!8036779))

(assert (= (and b!8036778 (not c!1474404)) b!8036784))

(assert (= (and b!8036784 c!1474403) b!8036776))

(assert (= (and b!8036784 (not c!1474403)) b!8036783))

(assert (= (and b!8036783 c!1474401) b!8036777))

(assert (= (and b!8036783 (not c!1474401)) b!8036781))

(assert (= (and b!8036781 c!1474400) b!8036782))

(assert (= (and b!8036781 (not c!1474400)) b!8036780))

(assert (= (or b!8036777 b!8036780) bm!745881))

(assert (= (or b!8036779 b!8036780) bm!745880))

(assert (= (or b!8036779 bm!745881) bm!745879))

(declare-fun m!8393498 () Bool)

(assert (=> bm!745879 m!8393498))

(declare-fun m!8393500 () Bool)

(assert (=> bm!745880 m!8393500))

(assert (=> bm!745822 d!2395080))

(declare-fun d!2395082 () Bool)

(assert (=> d!2395082 (= (nullable!9771 (regOne!44004 (regOne!44004 r!13107))) (nullableFct!3865 (regOne!44004 (regOne!44004 r!13107))))))

(declare-fun bs!1971513 () Bool)

(assert (= bs!1971513 d!2395082))

(declare-fun m!8393502 () Bool)

(assert (=> bs!1971513 m!8393502))

(assert (=> b!8036611 d!2395082))

(declare-fun d!2395084 () Bool)

(assert (=> d!2395084 (= (nullable!9771 (reg!22075 r!13107)) (nullableFct!3865 (reg!22075 r!13107)))))

(declare-fun bs!1971514 () Bool)

(assert (= bs!1971514 d!2395084))

(declare-fun m!8393504 () Bool)

(assert (=> bs!1971514 m!8393504))

(assert (=> b!8036502 d!2395084))

(declare-fun c!1474406 () Bool)

(declare-fun c!1474409 () Bool)

(declare-fun call!745889 () Int)

(declare-fun bm!745882 () Bool)

(assert (=> bm!745882 (= call!745889 (RegexPrimitiveSize!160 (ite c!1474409 (regOne!44004 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))) (ite c!1474406 (reg!22075 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))) (regOne!44005 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107))))))))))

(declare-fun b!8036786 () Bool)

(declare-fun e!4733976 () Int)

(assert (=> b!8036786 (= e!4733976 0)))

(declare-fun bm!745883 () Bool)

(declare-fun call!745887 () Int)

(assert (=> bm!745883 (= call!745887 (RegexPrimitiveSize!160 (ite c!1474409 (regTwo!44004 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))) (regTwo!44005 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))))))))

(declare-fun b!8036787 () Bool)

(declare-fun e!4733975 () Int)

(declare-fun call!745888 () Int)

(assert (=> b!8036787 (= e!4733975 (+ 1 call!745888))))

(declare-fun bm!745884 () Bool)

(assert (=> bm!745884 (= call!745888 call!745889)))

(declare-fun b!8036788 () Bool)

(declare-fun e!4733978 () Int)

(declare-fun e!4733974 () Int)

(assert (=> b!8036788 (= e!4733978 e!4733974)))

(assert (=> b!8036788 (= c!1474409 (is-Concat!30749 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))))))

(declare-fun d!2395086 () Bool)

(declare-fun lt!2722119 () Int)

(assert (=> d!2395086 (>= lt!2722119 0)))

(assert (=> d!2395086 (= lt!2722119 e!4733978)))

(declare-fun c!1474407 () Bool)

(assert (=> d!2395086 (= c!1474407 (is-ElementMatch!21746 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))))))

(assert (=> d!2395086 (= (RegexPrimitiveSize!160 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))) lt!2722119)))

(declare-fun b!8036789 () Bool)

(assert (=> b!8036789 (= e!4733974 (+ 1 call!745889 call!745887))))

(declare-fun b!8036790 () Bool)

(declare-fun e!4733977 () Int)

(assert (=> b!8036790 (= e!4733977 (+ 1 call!745888 call!745887))))

(declare-fun b!8036791 () Bool)

(declare-fun c!1474405 () Bool)

(assert (=> b!8036791 (= c!1474405 (is-EmptyLang!21746 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))))))

(assert (=> b!8036791 (= e!4733975 e!4733977)))

(declare-fun b!8036792 () Bool)

(assert (=> b!8036792 (= e!4733977 0)))

(declare-fun b!8036793 () Bool)

(assert (=> b!8036793 (= e!4733976 e!4733975)))

(assert (=> b!8036793 (= c!1474406 (is-Star!21746 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))))))

(declare-fun b!8036794 () Bool)

(declare-fun c!1474408 () Bool)

(assert (=> b!8036794 (= c!1474408 (is-EmptyExpr!21746 (ite c!1474335 (regTwo!44004 (regTwo!44004 r!13107)) (regTwo!44005 (regTwo!44004 r!13107)))))))

(assert (=> b!8036794 (= e!4733974 e!4733976)))

(declare-fun b!8036795 () Bool)

(assert (=> b!8036795 (= e!4733978 1)))

(assert (= (and d!2395086 c!1474407) b!8036795))

(assert (= (and d!2395086 (not c!1474407)) b!8036788))

(assert (= (and b!8036788 c!1474409) b!8036789))

(assert (= (and b!8036788 (not c!1474409)) b!8036794))

(assert (= (and b!8036794 c!1474408) b!8036786))

(assert (= (and b!8036794 (not c!1474408)) b!8036793))

(assert (= (and b!8036793 c!1474406) b!8036787))

(assert (= (and b!8036793 (not c!1474406)) b!8036791))

(assert (= (and b!8036791 c!1474405) b!8036792))

(assert (= (and b!8036791 (not c!1474405)) b!8036790))

(assert (= (or b!8036787 b!8036790) bm!745884))

(assert (= (or b!8036789 b!8036790) bm!745883))

(assert (= (or b!8036789 bm!745884) bm!745882))

(declare-fun m!8393506 () Bool)

(assert (=> bm!745882 m!8393506))

(declare-fun m!8393508 () Bool)

(assert (=> bm!745883 m!8393508))

(assert (=> bm!745818 d!2395086))

(declare-fun call!745890 () Regex!21746)

(declare-fun b!8036796 () Bool)

(declare-fun call!745892 () Regex!21746)

(declare-fun e!4733983 () Regex!21746)

(assert (=> b!8036796 (= e!4733983 (Union!21746 (Concat!30749 call!745890 (regTwo!44004 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))) call!745892))))

(declare-fun e!4733982 () Regex!21746)

(declare-fun b!8036797 () Bool)

(assert (=> b!8036797 (= e!4733982 (Concat!30749 call!745890 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun bm!745885 () Bool)

(declare-fun call!745893 () Regex!21746)

(assert (=> bm!745885 (= call!745890 call!745893)))

(declare-fun d!2395088 () Bool)

(declare-fun lt!2722120 () Regex!21746)

(assert (=> d!2395088 (validRegex!12042 lt!2722120)))

(declare-fun e!4733980 () Regex!21746)

(assert (=> d!2395088 (= lt!2722120 e!4733980)))

(declare-fun c!1474413 () Bool)

(assert (=> d!2395088 (= c!1474413 (or (is-EmptyExpr!21746 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (is-EmptyLang!21746 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))))))

(assert (=> d!2395088 (validRegex!12042 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))))

(assert (=> d!2395088 (= (derivativeStep!6665 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))) a!2390) lt!2722120)))

(declare-fun b!8036798 () Bool)

(assert (=> b!8036798 (= e!4733980 EmptyLang!21746)))

(declare-fun c!1474411 () Bool)

(declare-fun b!8036799 () Bool)

(assert (=> b!8036799 (= c!1474411 (is-Union!21746 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun e!4733981 () Regex!21746)

(declare-fun e!4733979 () Regex!21746)

(assert (=> b!8036799 (= e!4733981 e!4733979)))

(declare-fun b!8036800 () Bool)

(assert (=> b!8036800 (= e!4733983 (Union!21746 (Concat!30749 call!745892 (regTwo!44004 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))) EmptyLang!21746))))

(declare-fun b!8036801 () Bool)

(declare-fun call!745891 () Regex!21746)

(assert (=> b!8036801 (= e!4733979 (Union!21746 call!745891 call!745893))))

(declare-fun b!8036802 () Bool)

(assert (=> b!8036802 (= e!4733979 e!4733982)))

(declare-fun c!1474414 () Bool)

(assert (=> b!8036802 (= c!1474414 (is-Star!21746 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun b!8036803 () Bool)

(assert (=> b!8036803 (= e!4733980 e!4733981)))

(declare-fun c!1474410 () Bool)

(assert (=> b!8036803 (= c!1474410 (is-ElementMatch!21746 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun b!8036804 () Bool)

(declare-fun c!1474412 () Bool)

(assert (=> b!8036804 (= c!1474412 (nullable!9771 (regOne!44004 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))))))

(assert (=> b!8036804 (= e!4733982 e!4733983)))

(declare-fun bm!745886 () Bool)

(assert (=> bm!745886 (= call!745892 call!745891)))

(declare-fun b!8036805 () Bool)

(assert (=> b!8036805 (= e!4733981 (ite (= a!2390 (c!1474303 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))) EmptyExpr!21746 EmptyLang!21746))))

(declare-fun bm!745887 () Bool)

(assert (=> bm!745887 (= call!745891 (derivativeStep!6665 (ite c!1474411 (regOne!44005 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (ite c!1474412 (regTwo!44004 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (regOne!44004 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))) a!2390))))

(declare-fun bm!745888 () Bool)

(assert (=> bm!745888 (= call!745893 (derivativeStep!6665 (ite c!1474411 (regTwo!44005 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (ite c!1474414 (reg!22075 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (regOne!44004 (ite c!1474362 (regOne!44005 (regOne!44004 r!13107)) (ite c!1474363 (regTwo!44004 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))) a!2390))))

(assert (= (and d!2395088 c!1474413) b!8036798))

(assert (= (and d!2395088 (not c!1474413)) b!8036803))

(assert (= (and b!8036803 c!1474410) b!8036805))

(assert (= (and b!8036803 (not c!1474410)) b!8036799))

(assert (= (and b!8036799 c!1474411) b!8036801))

(assert (= (and b!8036799 (not c!1474411)) b!8036802))

(assert (= (and b!8036802 c!1474414) b!8036797))

(assert (= (and b!8036802 (not c!1474414)) b!8036804))

(assert (= (and b!8036804 c!1474412) b!8036796))

(assert (= (and b!8036804 (not c!1474412)) b!8036800))

(assert (= (or b!8036796 b!8036800) bm!745886))

(assert (= (or b!8036797 b!8036796) bm!745885))

(assert (= (or b!8036801 bm!745885) bm!745888))

(assert (= (or b!8036801 bm!745886) bm!745887))

(declare-fun m!8393510 () Bool)

(assert (=> d!2395088 m!8393510))

(declare-fun m!8393512 () Bool)

(assert (=> d!2395088 m!8393512))

(declare-fun m!8393514 () Bool)

(assert (=> b!8036804 m!8393514))

(declare-fun m!8393516 () Bool)

(assert (=> bm!745887 m!8393516))

(declare-fun m!8393518 () Bool)

(assert (=> bm!745888 m!8393518))

(assert (=> bm!745841 d!2395088))

(declare-fun c!1474419 () Bool)

(declare-fun bm!745889 () Bool)

(declare-fun c!1474416 () Bool)

(declare-fun call!745896 () Int)

(assert (=> bm!745889 (= call!745896 (RegexPrimitiveSize!160 (ite c!1474419 (regOne!44004 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))) (ite c!1474416 (reg!22075 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))) (regOne!44005 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107)))))))))

(declare-fun b!8036806 () Bool)

(declare-fun e!4733986 () Int)

(assert (=> b!8036806 (= e!4733986 0)))

(declare-fun call!745894 () Int)

(declare-fun bm!745890 () Bool)

(assert (=> bm!745890 (= call!745894 (RegexPrimitiveSize!160 (ite c!1474419 (regTwo!44004 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))) (regTwo!44005 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))))))))

(declare-fun b!8036807 () Bool)

(declare-fun e!4733985 () Int)

(declare-fun call!745895 () Int)

(assert (=> b!8036807 (= e!4733985 (+ 1 call!745895))))

(declare-fun bm!745891 () Bool)

(assert (=> bm!745891 (= call!745895 call!745896)))

(declare-fun b!8036808 () Bool)

(declare-fun e!4733988 () Int)

(declare-fun e!4733984 () Int)

(assert (=> b!8036808 (= e!4733988 e!4733984)))

(assert (=> b!8036808 (= c!1474419 (is-Concat!30749 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))))))

(declare-fun d!2395090 () Bool)

(declare-fun lt!2722121 () Int)

(assert (=> d!2395090 (>= lt!2722121 0)))

(assert (=> d!2395090 (= lt!2722121 e!4733988)))

(declare-fun c!1474417 () Bool)

(assert (=> d!2395090 (= c!1474417 (is-ElementMatch!21746 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))))))

(assert (=> d!2395090 (= (RegexPrimitiveSize!160 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))) lt!2722121)))

(declare-fun b!8036809 () Bool)

(assert (=> b!8036809 (= e!4733984 (+ 1 call!745896 call!745894))))

(declare-fun b!8036810 () Bool)

(declare-fun e!4733987 () Int)

(assert (=> b!8036810 (= e!4733987 (+ 1 call!745895 call!745894))))

(declare-fun b!8036811 () Bool)

(declare-fun c!1474415 () Bool)

(assert (=> b!8036811 (= c!1474415 (is-EmptyLang!21746 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))))))

(assert (=> b!8036811 (= e!4733985 e!4733987)))

(declare-fun b!8036812 () Bool)

(assert (=> b!8036812 (= e!4733987 0)))

(declare-fun b!8036813 () Bool)

(assert (=> b!8036813 (= e!4733986 e!4733985)))

(assert (=> b!8036813 (= c!1474416 (is-Star!21746 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))))))

(declare-fun b!8036814 () Bool)

(declare-fun c!1474418 () Bool)

(assert (=> b!8036814 (= c!1474418 (is-EmptyExpr!21746 (ite c!1474340 (regTwo!44004 r!13107) (regTwo!44005 r!13107))))))

(assert (=> b!8036814 (= e!4733984 e!4733986)))

(declare-fun b!8036815 () Bool)

(assert (=> b!8036815 (= e!4733988 1)))

(assert (= (and d!2395090 c!1474417) b!8036815))

(assert (= (and d!2395090 (not c!1474417)) b!8036808))

(assert (= (and b!8036808 c!1474419) b!8036809))

(assert (= (and b!8036808 (not c!1474419)) b!8036814))

(assert (= (and b!8036814 c!1474418) b!8036806))

(assert (= (and b!8036814 (not c!1474418)) b!8036813))

(assert (= (and b!8036813 c!1474416) b!8036807))

(assert (= (and b!8036813 (not c!1474416)) b!8036811))

(assert (= (and b!8036811 c!1474415) b!8036812))

(assert (= (and b!8036811 (not c!1474415)) b!8036810))

(assert (= (or b!8036807 b!8036810) bm!745891))

(assert (= (or b!8036809 b!8036810) bm!745890))

(assert (= (or b!8036809 bm!745891) bm!745889))

(declare-fun m!8393520 () Bool)

(assert (=> bm!745889 m!8393520))

(declare-fun m!8393522 () Bool)

(assert (=> bm!745890 m!8393522))

(assert (=> bm!745823 d!2395090))

(declare-fun bm!745896 () Bool)

(declare-fun call!745901 () Bool)

(declare-fun c!1474422 () Bool)

(assert (=> bm!745896 (= call!745901 (nullable!9771 (ite c!1474422 (regTwo!44005 (regOne!44004 r!13107)) (regTwo!44004 (regOne!44004 r!13107)))))))

(declare-fun b!8036830 () Bool)

(declare-fun e!4734003 () Bool)

(declare-fun e!4734006 () Bool)

(assert (=> b!8036830 (= e!4734003 e!4734006)))

(declare-fun res!3177261 () Bool)

(assert (=> b!8036830 (=> res!3177261 e!4734006)))

(assert (=> b!8036830 (= res!3177261 (is-Star!21746 (regOne!44004 r!13107)))))

(declare-fun b!8036831 () Bool)

(declare-fun e!4734004 () Bool)

(assert (=> b!8036831 (= e!4734004 e!4734003)))

(declare-fun res!3177264 () Bool)

(assert (=> b!8036831 (=> (not res!3177264) (not e!4734003))))

(assert (=> b!8036831 (= res!3177264 (and (not (is-EmptyLang!21746 (regOne!44004 r!13107))) (not (is-ElementMatch!21746 (regOne!44004 r!13107)))))))

(declare-fun b!8036832 () Bool)

(declare-fun e!4734005 () Bool)

(assert (=> b!8036832 (= e!4734005 call!745901)))

(declare-fun d!2395092 () Bool)

(declare-fun res!3177260 () Bool)

(assert (=> d!2395092 (=> res!3177260 e!4734004)))

(assert (=> d!2395092 (= res!3177260 (is-EmptyExpr!21746 (regOne!44004 r!13107)))))

(assert (=> d!2395092 (= (nullableFct!3865 (regOne!44004 r!13107)) e!4734004)))

(declare-fun b!8036833 () Bool)

(declare-fun e!4734001 () Bool)

(assert (=> b!8036833 (= e!4734001 call!745901)))

(declare-fun b!8036834 () Bool)

(declare-fun e!4734002 () Bool)

(assert (=> b!8036834 (= e!4734002 e!4734001)))

(declare-fun res!3177262 () Bool)

(declare-fun call!745902 () Bool)

(assert (=> b!8036834 (= res!3177262 call!745902)))

(assert (=> b!8036834 (=> res!3177262 e!4734001)))

(declare-fun bm!745897 () Bool)

(assert (=> bm!745897 (= call!745902 (nullable!9771 (ite c!1474422 (regOne!44005 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))))

(declare-fun b!8036835 () Bool)

(assert (=> b!8036835 (= e!4734002 e!4734005)))

(declare-fun res!3177263 () Bool)

(assert (=> b!8036835 (= res!3177263 call!745902)))

(assert (=> b!8036835 (=> (not res!3177263) (not e!4734005))))

(declare-fun b!8036836 () Bool)

(assert (=> b!8036836 (= e!4734006 e!4734002)))

(assert (=> b!8036836 (= c!1474422 (is-Union!21746 (regOne!44004 r!13107)))))

(assert (= (and d!2395092 (not res!3177260)) b!8036831))

(assert (= (and b!8036831 res!3177264) b!8036830))

(assert (= (and b!8036830 (not res!3177261)) b!8036836))

(assert (= (and b!8036836 c!1474422) b!8036834))

(assert (= (and b!8036836 (not c!1474422)) b!8036835))

(assert (= (and b!8036834 (not res!3177262)) b!8036833))

(assert (= (and b!8036835 res!3177263) b!8036832))

(assert (= (or b!8036833 b!8036832) bm!745896))

(assert (= (or b!8036834 b!8036835) bm!745897))

(declare-fun m!8393524 () Bool)

(assert (=> bm!745896 m!8393524))

(declare-fun m!8393526 () Bool)

(assert (=> bm!745897 m!8393526))

(assert (=> d!2395066 d!2395092))

(declare-fun b!8036837 () Bool)

(declare-fun e!4734011 () Regex!21746)

(declare-fun call!745905 () Regex!21746)

(declare-fun call!745903 () Regex!21746)

(assert (=> b!8036837 (= e!4734011 (Union!21746 (Concat!30749 call!745903 (regTwo!44004 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))) call!745905))))

(declare-fun e!4734010 () Regex!21746)

(declare-fun b!8036838 () Bool)

(assert (=> b!8036838 (= e!4734010 (Concat!30749 call!745903 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun bm!745898 () Bool)

(declare-fun call!745906 () Regex!21746)

(assert (=> bm!745898 (= call!745903 call!745906)))

(declare-fun d!2395094 () Bool)

(declare-fun lt!2722122 () Regex!21746)

(assert (=> d!2395094 (validRegex!12042 lt!2722122)))

(declare-fun e!4734008 () Regex!21746)

(assert (=> d!2395094 (= lt!2722122 e!4734008)))

(declare-fun c!1474426 () Bool)

(assert (=> d!2395094 (= c!1474426 (or (is-EmptyExpr!21746 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (is-EmptyLang!21746 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))))))

(assert (=> d!2395094 (validRegex!12042 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))))

(assert (=> d!2395094 (= (derivativeStep!6665 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))) a!2390) lt!2722122)))

(declare-fun b!8036839 () Bool)

(assert (=> b!8036839 (= e!4734008 EmptyLang!21746)))

(declare-fun b!8036840 () Bool)

(declare-fun c!1474424 () Bool)

(assert (=> b!8036840 (= c!1474424 (is-Union!21746 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun e!4734009 () Regex!21746)

(declare-fun e!4734007 () Regex!21746)

(assert (=> b!8036840 (= e!4734009 e!4734007)))

(declare-fun b!8036841 () Bool)

(assert (=> b!8036841 (= e!4734011 (Union!21746 (Concat!30749 call!745905 (regTwo!44004 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))) EmptyLang!21746))))

(declare-fun b!8036842 () Bool)

(declare-fun call!745904 () Regex!21746)

(assert (=> b!8036842 (= e!4734007 (Union!21746 call!745904 call!745906))))

(declare-fun b!8036843 () Bool)

(assert (=> b!8036843 (= e!4734007 e!4734010)))

(declare-fun c!1474427 () Bool)

(assert (=> b!8036843 (= c!1474427 (is-Star!21746 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun b!8036844 () Bool)

(assert (=> b!8036844 (= e!4734008 e!4734009)))

(declare-fun c!1474423 () Bool)

(assert (=> b!8036844 (= c!1474423 (is-ElementMatch!21746 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))))

(declare-fun b!8036845 () Bool)

(declare-fun c!1474425 () Bool)

(assert (=> b!8036845 (= c!1474425 (nullable!9771 (regOne!44004 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))))))

(assert (=> b!8036845 (= e!4734010 e!4734011)))

(declare-fun bm!745899 () Bool)

(assert (=> bm!745899 (= call!745905 call!745904)))

(declare-fun b!8036846 () Bool)

(assert (=> b!8036846 (= e!4734009 (ite (= a!2390 (c!1474303 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107)))))) EmptyExpr!21746 EmptyLang!21746))))

(declare-fun bm!745900 () Bool)

(assert (=> bm!745900 (= call!745904 (derivativeStep!6665 (ite c!1474424 (regOne!44005 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (ite c!1474425 (regTwo!44004 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (regOne!44004 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))) a!2390))))

(declare-fun bm!745901 () Bool)

(assert (=> bm!745901 (= call!745906 (derivativeStep!6665 (ite c!1474424 (regTwo!44005 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (ite c!1474427 (reg!22075 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))) (regOne!44004 (ite c!1474362 (regTwo!44005 (regOne!44004 r!13107)) (ite c!1474365 (reg!22075 (regOne!44004 r!13107)) (regOne!44004 (regOne!44004 r!13107))))))) a!2390))))

(assert (= (and d!2395094 c!1474426) b!8036839))

(assert (= (and d!2395094 (not c!1474426)) b!8036844))

(assert (= (and b!8036844 c!1474423) b!8036846))

(assert (= (and b!8036844 (not c!1474423)) b!8036840))

(assert (= (and b!8036840 c!1474424) b!8036842))

(assert (= (and b!8036840 (not c!1474424)) b!8036843))

(assert (= (and b!8036843 c!1474427) b!8036838))

(assert (= (and b!8036843 (not c!1474427)) b!8036845))

(assert (= (and b!8036845 c!1474425) b!8036837))

(assert (= (and b!8036845 (not c!1474425)) b!8036841))

(assert (= (or b!8036837 b!8036841) bm!745899))

(assert (= (or b!8036838 b!8036837) bm!745898))

(assert (= (or b!8036842 bm!745898) bm!745901))

(assert (= (or b!8036842 bm!745899) bm!745900))

(declare-fun m!8393528 () Bool)

(assert (=> d!2395094 m!8393528))

(declare-fun m!8393530 () Bool)

(assert (=> d!2395094 m!8393530))

(declare-fun m!8393532 () Bool)

(assert (=> b!8036845 m!8393532))

(declare-fun m!8393534 () Bool)

(assert (=> bm!745900 m!8393534))

(declare-fun m!8393536 () Bool)

(assert (=> bm!745901 m!8393536))

(assert (=> bm!745842 d!2395094))

(declare-fun b!8036847 () Bool)

(declare-fun e!4734012 () Bool)

(assert (=> b!8036847 (= e!4734012 tp_is_empty!54487)))

(declare-fun b!8036848 () Bool)

(declare-fun tp!2406518 () Bool)

(declare-fun tp!2406514 () Bool)

(assert (=> b!8036848 (= e!4734012 (and tp!2406518 tp!2406514))))

(declare-fun b!8036850 () Bool)

(declare-fun tp!2406517 () Bool)

(declare-fun tp!2406515 () Bool)

(assert (=> b!8036850 (= e!4734012 (and tp!2406517 tp!2406515))))

(assert (=> b!8036640 (= tp!2406478 e!4734012)))

(declare-fun b!8036849 () Bool)

(declare-fun tp!2406516 () Bool)

(assert (=> b!8036849 (= e!4734012 tp!2406516)))

(assert (= (and b!8036640 (is-ElementMatch!21746 (regOne!44004 (regTwo!44004 r!13107)))) b!8036847))

(assert (= (and b!8036640 (is-Concat!30749 (regOne!44004 (regTwo!44004 r!13107)))) b!8036848))

(assert (= (and b!8036640 (is-Star!21746 (regOne!44004 (regTwo!44004 r!13107)))) b!8036849))

(assert (= (and b!8036640 (is-Union!21746 (regOne!44004 (regTwo!44004 r!13107)))) b!8036850))

(declare-fun b!8036851 () Bool)

(declare-fun e!4734013 () Bool)

(assert (=> b!8036851 (= e!4734013 tp_is_empty!54487)))

(declare-fun b!8036852 () Bool)

(declare-fun tp!2406523 () Bool)

(declare-fun tp!2406519 () Bool)

(assert (=> b!8036852 (= e!4734013 (and tp!2406523 tp!2406519))))

(declare-fun b!8036854 () Bool)

(declare-fun tp!2406522 () Bool)

(declare-fun tp!2406520 () Bool)

(assert (=> b!8036854 (= e!4734013 (and tp!2406522 tp!2406520))))

(assert (=> b!8036640 (= tp!2406474 e!4734013)))

(declare-fun b!8036853 () Bool)

(declare-fun tp!2406521 () Bool)

(assert (=> b!8036853 (= e!4734013 tp!2406521)))

(assert (= (and b!8036640 (is-ElementMatch!21746 (regTwo!44004 (regTwo!44004 r!13107)))) b!8036851))

(assert (= (and b!8036640 (is-Concat!30749 (regTwo!44004 (regTwo!44004 r!13107)))) b!8036852))

(assert (= (and b!8036640 (is-Star!21746 (regTwo!44004 (regTwo!44004 r!13107)))) b!8036853))

(assert (= (and b!8036640 (is-Union!21746 (regTwo!44004 (regTwo!44004 r!13107)))) b!8036854))

(declare-fun b!8036855 () Bool)

(declare-fun e!4734014 () Bool)

(assert (=> b!8036855 (= e!4734014 tp_is_empty!54487)))

(declare-fun b!8036856 () Bool)

(declare-fun tp!2406528 () Bool)

(declare-fun tp!2406524 () Bool)

(assert (=> b!8036856 (= e!4734014 (and tp!2406528 tp!2406524))))

(declare-fun b!8036858 () Bool)

(declare-fun tp!2406527 () Bool)

(declare-fun tp!2406525 () Bool)

(assert (=> b!8036858 (= e!4734014 (and tp!2406527 tp!2406525))))

(assert (=> b!8036628 (= tp!2406463 e!4734014)))

(declare-fun b!8036857 () Bool)

(declare-fun tp!2406526 () Bool)

(assert (=> b!8036857 (= e!4734014 tp!2406526)))

(assert (= (and b!8036628 (is-ElementMatch!21746 (regOne!44004 (regTwo!44005 r!13107)))) b!8036855))

(assert (= (and b!8036628 (is-Concat!30749 (regOne!44004 (regTwo!44005 r!13107)))) b!8036856))

(assert (= (and b!8036628 (is-Star!21746 (regOne!44004 (regTwo!44005 r!13107)))) b!8036857))

(assert (= (and b!8036628 (is-Union!21746 (regOne!44004 (regTwo!44005 r!13107)))) b!8036858))

(declare-fun b!8036859 () Bool)

(declare-fun e!4734015 () Bool)

(assert (=> b!8036859 (= e!4734015 tp_is_empty!54487)))

(declare-fun b!8036860 () Bool)

(declare-fun tp!2406533 () Bool)

(declare-fun tp!2406529 () Bool)

(assert (=> b!8036860 (= e!4734015 (and tp!2406533 tp!2406529))))

(declare-fun b!8036862 () Bool)

(declare-fun tp!2406532 () Bool)

(declare-fun tp!2406530 () Bool)

(assert (=> b!8036862 (= e!4734015 (and tp!2406532 tp!2406530))))

(assert (=> b!8036628 (= tp!2406459 e!4734015)))

(declare-fun b!8036861 () Bool)

(declare-fun tp!2406531 () Bool)

(assert (=> b!8036861 (= e!4734015 tp!2406531)))

(assert (= (and b!8036628 (is-ElementMatch!21746 (regTwo!44004 (regTwo!44005 r!13107)))) b!8036859))

(assert (= (and b!8036628 (is-Concat!30749 (regTwo!44004 (regTwo!44005 r!13107)))) b!8036860))

(assert (= (and b!8036628 (is-Star!21746 (regTwo!44004 (regTwo!44005 r!13107)))) b!8036861))

(assert (= (and b!8036628 (is-Union!21746 (regTwo!44004 (regTwo!44005 r!13107)))) b!8036862))

(declare-fun b!8036863 () Bool)

(declare-fun e!4734016 () Bool)

(assert (=> b!8036863 (= e!4734016 tp_is_empty!54487)))

(declare-fun b!8036864 () Bool)

(declare-fun tp!2406538 () Bool)

(declare-fun tp!2406534 () Bool)

(assert (=> b!8036864 (= e!4734016 (and tp!2406538 tp!2406534))))

(declare-fun b!8036866 () Bool)

(declare-fun tp!2406537 () Bool)

(declare-fun tp!2406535 () Bool)

(assert (=> b!8036866 (= e!4734016 (and tp!2406537 tp!2406535))))

(assert (=> b!8036642 (= tp!2406477 e!4734016)))

(declare-fun b!8036865 () Bool)

(declare-fun tp!2406536 () Bool)

(assert (=> b!8036865 (= e!4734016 tp!2406536)))

(assert (= (and b!8036642 (is-ElementMatch!21746 (regOne!44005 (regTwo!44004 r!13107)))) b!8036863))

(assert (= (and b!8036642 (is-Concat!30749 (regOne!44005 (regTwo!44004 r!13107)))) b!8036864))

(assert (= (and b!8036642 (is-Star!21746 (regOne!44005 (regTwo!44004 r!13107)))) b!8036865))

(assert (= (and b!8036642 (is-Union!21746 (regOne!44005 (regTwo!44004 r!13107)))) b!8036866))

(declare-fun b!8036867 () Bool)

(declare-fun e!4734017 () Bool)

(assert (=> b!8036867 (= e!4734017 tp_is_empty!54487)))

(declare-fun b!8036868 () Bool)

(declare-fun tp!2406543 () Bool)

(declare-fun tp!2406539 () Bool)

(assert (=> b!8036868 (= e!4734017 (and tp!2406543 tp!2406539))))

(declare-fun b!8036870 () Bool)

(declare-fun tp!2406542 () Bool)

(declare-fun tp!2406540 () Bool)

(assert (=> b!8036870 (= e!4734017 (and tp!2406542 tp!2406540))))

(assert (=> b!8036642 (= tp!2406475 e!4734017)))

(declare-fun b!8036869 () Bool)

(declare-fun tp!2406541 () Bool)

(assert (=> b!8036869 (= e!4734017 tp!2406541)))

(assert (= (and b!8036642 (is-ElementMatch!21746 (regTwo!44005 (regTwo!44004 r!13107)))) b!8036867))

(assert (= (and b!8036642 (is-Concat!30749 (regTwo!44005 (regTwo!44004 r!13107)))) b!8036868))

(assert (= (and b!8036642 (is-Star!21746 (regTwo!44005 (regTwo!44004 r!13107)))) b!8036869))

(assert (= (and b!8036642 (is-Union!21746 (regTwo!44005 (regTwo!44004 r!13107)))) b!8036870))

(declare-fun b!8036871 () Bool)

(declare-fun e!4734018 () Bool)

(assert (=> b!8036871 (= e!4734018 tp_is_empty!54487)))

(declare-fun b!8036872 () Bool)

(declare-fun tp!2406548 () Bool)

(declare-fun tp!2406544 () Bool)

(assert (=> b!8036872 (= e!4734018 (and tp!2406548 tp!2406544))))

(declare-fun b!8036874 () Bool)

(declare-fun tp!2406547 () Bool)

(declare-fun tp!2406545 () Bool)

(assert (=> b!8036874 (= e!4734018 (and tp!2406547 tp!2406545))))

(assert (=> b!8036633 (= tp!2406466 e!4734018)))

(declare-fun b!8036873 () Bool)

(declare-fun tp!2406546 () Bool)

(assert (=> b!8036873 (= e!4734018 tp!2406546)))

(assert (= (and b!8036633 (is-ElementMatch!21746 (reg!22075 (reg!22075 r!13107)))) b!8036871))

(assert (= (and b!8036633 (is-Concat!30749 (reg!22075 (reg!22075 r!13107)))) b!8036872))

(assert (= (and b!8036633 (is-Star!21746 (reg!22075 (reg!22075 r!13107)))) b!8036873))

(assert (= (and b!8036633 (is-Union!21746 (reg!22075 (reg!22075 r!13107)))) b!8036874))

(declare-fun b!8036875 () Bool)

(declare-fun e!4734019 () Bool)

(assert (=> b!8036875 (= e!4734019 tp_is_empty!54487)))

(declare-fun b!8036876 () Bool)

(declare-fun tp!2406553 () Bool)

(declare-fun tp!2406549 () Bool)

(assert (=> b!8036876 (= e!4734019 (and tp!2406553 tp!2406549))))

(declare-fun b!8036878 () Bool)

(declare-fun tp!2406552 () Bool)

(declare-fun tp!2406550 () Bool)

(assert (=> b!8036878 (= e!4734019 (and tp!2406552 tp!2406550))))

(assert (=> b!8036624 (= tp!2406458 e!4734019)))

(declare-fun b!8036877 () Bool)

(declare-fun tp!2406551 () Bool)

(assert (=> b!8036877 (= e!4734019 tp!2406551)))

(assert (= (and b!8036624 (is-ElementMatch!21746 (regOne!44004 (regOne!44005 r!13107)))) b!8036875))

(assert (= (and b!8036624 (is-Concat!30749 (regOne!44004 (regOne!44005 r!13107)))) b!8036876))

(assert (= (and b!8036624 (is-Star!21746 (regOne!44004 (regOne!44005 r!13107)))) b!8036877))

(assert (= (and b!8036624 (is-Union!21746 (regOne!44004 (regOne!44005 r!13107)))) b!8036878))

(declare-fun b!8036879 () Bool)

(declare-fun e!4734020 () Bool)

(assert (=> b!8036879 (= e!4734020 tp_is_empty!54487)))

(declare-fun b!8036880 () Bool)

(declare-fun tp!2406558 () Bool)

(declare-fun tp!2406554 () Bool)

(assert (=> b!8036880 (= e!4734020 (and tp!2406558 tp!2406554))))

(declare-fun b!8036882 () Bool)

(declare-fun tp!2406557 () Bool)

(declare-fun tp!2406555 () Bool)

(assert (=> b!8036882 (= e!4734020 (and tp!2406557 tp!2406555))))

(assert (=> b!8036624 (= tp!2406454 e!4734020)))

(declare-fun b!8036881 () Bool)

(declare-fun tp!2406556 () Bool)

(assert (=> b!8036881 (= e!4734020 tp!2406556)))

(assert (= (and b!8036624 (is-ElementMatch!21746 (regTwo!44004 (regOne!44005 r!13107)))) b!8036879))

(assert (= (and b!8036624 (is-Concat!30749 (regTwo!44004 (regOne!44005 r!13107)))) b!8036880))

(assert (= (and b!8036624 (is-Star!21746 (regTwo!44004 (regOne!44005 r!13107)))) b!8036881))

(assert (= (and b!8036624 (is-Union!21746 (regTwo!44004 (regOne!44005 r!13107)))) b!8036882))

(declare-fun b!8036883 () Bool)

(declare-fun e!4734021 () Bool)

(assert (=> b!8036883 (= e!4734021 tp_is_empty!54487)))

(declare-fun b!8036884 () Bool)

(declare-fun tp!2406563 () Bool)

(declare-fun tp!2406559 () Bool)

(assert (=> b!8036884 (= e!4734021 (and tp!2406563 tp!2406559))))

(declare-fun b!8036886 () Bool)

(declare-fun tp!2406562 () Bool)

(declare-fun tp!2406560 () Bool)

(assert (=> b!8036886 (= e!4734021 (and tp!2406562 tp!2406560))))

(assert (=> b!8036638 (= tp!2406472 e!4734021)))

(declare-fun b!8036885 () Bool)

(declare-fun tp!2406561 () Bool)

(assert (=> b!8036885 (= e!4734021 tp!2406561)))

(assert (= (and b!8036638 (is-ElementMatch!21746 (regOne!44005 (regOne!44004 r!13107)))) b!8036883))

(assert (= (and b!8036638 (is-Concat!30749 (regOne!44005 (regOne!44004 r!13107)))) b!8036884))

(assert (= (and b!8036638 (is-Star!21746 (regOne!44005 (regOne!44004 r!13107)))) b!8036885))

(assert (= (and b!8036638 (is-Union!21746 (regOne!44005 (regOne!44004 r!13107)))) b!8036886))

(declare-fun b!8036887 () Bool)

(declare-fun e!4734022 () Bool)

(assert (=> b!8036887 (= e!4734022 tp_is_empty!54487)))

(declare-fun b!8036888 () Bool)

(declare-fun tp!2406568 () Bool)

(declare-fun tp!2406564 () Bool)

(assert (=> b!8036888 (= e!4734022 (and tp!2406568 tp!2406564))))

(declare-fun b!8036890 () Bool)

(declare-fun tp!2406567 () Bool)

(declare-fun tp!2406565 () Bool)

(assert (=> b!8036890 (= e!4734022 (and tp!2406567 tp!2406565))))

(assert (=> b!8036638 (= tp!2406470 e!4734022)))

(declare-fun b!8036889 () Bool)

(declare-fun tp!2406566 () Bool)

(assert (=> b!8036889 (= e!4734022 tp!2406566)))

(assert (= (and b!8036638 (is-ElementMatch!21746 (regTwo!44005 (regOne!44004 r!13107)))) b!8036887))

(assert (= (and b!8036638 (is-Concat!30749 (regTwo!44005 (regOne!44004 r!13107)))) b!8036888))

(assert (= (and b!8036638 (is-Star!21746 (regTwo!44005 (regOne!44004 r!13107)))) b!8036889))

(assert (= (and b!8036638 (is-Union!21746 (regTwo!44005 (regOne!44004 r!13107)))) b!8036890))

(declare-fun b!8036891 () Bool)

(declare-fun e!4734023 () Bool)

(assert (=> b!8036891 (= e!4734023 tp_is_empty!54487)))

(declare-fun b!8036892 () Bool)

(declare-fun tp!2406573 () Bool)

(declare-fun tp!2406569 () Bool)

(assert (=> b!8036892 (= e!4734023 (and tp!2406573 tp!2406569))))

(declare-fun b!8036894 () Bool)

(declare-fun tp!2406572 () Bool)

(declare-fun tp!2406570 () Bool)

(assert (=> b!8036894 (= e!4734023 (and tp!2406572 tp!2406570))))

(assert (=> b!8036629 (= tp!2406461 e!4734023)))

(declare-fun b!8036893 () Bool)

(declare-fun tp!2406571 () Bool)

(assert (=> b!8036893 (= e!4734023 tp!2406571)))

(assert (= (and b!8036629 (is-ElementMatch!21746 (reg!22075 (regTwo!44005 r!13107)))) b!8036891))

(assert (= (and b!8036629 (is-Concat!30749 (reg!22075 (regTwo!44005 r!13107)))) b!8036892))

(assert (= (and b!8036629 (is-Star!21746 (reg!22075 (regTwo!44005 r!13107)))) b!8036893))

(assert (= (and b!8036629 (is-Union!21746 (reg!22075 (regTwo!44005 r!13107)))) b!8036894))

(declare-fun b!8036895 () Bool)

(declare-fun e!4734024 () Bool)

(assert (=> b!8036895 (= e!4734024 tp_is_empty!54487)))

(declare-fun b!8036896 () Bool)

(declare-fun tp!2406578 () Bool)

(declare-fun tp!2406574 () Bool)

(assert (=> b!8036896 (= e!4734024 (and tp!2406578 tp!2406574))))

(declare-fun b!8036898 () Bool)

(declare-fun tp!2406577 () Bool)

(declare-fun tp!2406575 () Bool)

(assert (=> b!8036898 (= e!4734024 (and tp!2406577 tp!2406575))))

(assert (=> b!8036636 (= tp!2406473 e!4734024)))

(declare-fun b!8036897 () Bool)

(declare-fun tp!2406576 () Bool)

(assert (=> b!8036897 (= e!4734024 tp!2406576)))

(assert (= (and b!8036636 (is-ElementMatch!21746 (regOne!44004 (regOne!44004 r!13107)))) b!8036895))

(assert (= (and b!8036636 (is-Concat!30749 (regOne!44004 (regOne!44004 r!13107)))) b!8036896))

(assert (= (and b!8036636 (is-Star!21746 (regOne!44004 (regOne!44004 r!13107)))) b!8036897))

(assert (= (and b!8036636 (is-Union!21746 (regOne!44004 (regOne!44004 r!13107)))) b!8036898))

(declare-fun b!8036899 () Bool)

(declare-fun e!4734025 () Bool)

(assert (=> b!8036899 (= e!4734025 tp_is_empty!54487)))

(declare-fun b!8036900 () Bool)

(declare-fun tp!2406583 () Bool)

(declare-fun tp!2406579 () Bool)

(assert (=> b!8036900 (= e!4734025 (and tp!2406583 tp!2406579))))

(declare-fun b!8036902 () Bool)

(declare-fun tp!2406582 () Bool)

(declare-fun tp!2406580 () Bool)

(assert (=> b!8036902 (= e!4734025 (and tp!2406582 tp!2406580))))

(assert (=> b!8036636 (= tp!2406469 e!4734025)))

(declare-fun b!8036901 () Bool)

(declare-fun tp!2406581 () Bool)

(assert (=> b!8036901 (= e!4734025 tp!2406581)))

(assert (= (and b!8036636 (is-ElementMatch!21746 (regTwo!44004 (regOne!44004 r!13107)))) b!8036899))

(assert (= (and b!8036636 (is-Concat!30749 (regTwo!44004 (regOne!44004 r!13107)))) b!8036900))

(assert (= (and b!8036636 (is-Star!21746 (regTwo!44004 (regOne!44004 r!13107)))) b!8036901))

(assert (= (and b!8036636 (is-Union!21746 (regTwo!44004 (regOne!44004 r!13107)))) b!8036902))

(declare-fun b!8036903 () Bool)

(declare-fun e!4734026 () Bool)

(assert (=> b!8036903 (= e!4734026 tp_is_empty!54487)))

(declare-fun b!8036904 () Bool)

(declare-fun tp!2406588 () Bool)

(declare-fun tp!2406584 () Bool)

(assert (=> b!8036904 (= e!4734026 (and tp!2406588 tp!2406584))))

(declare-fun b!8036906 () Bool)

(declare-fun tp!2406587 () Bool)

(declare-fun tp!2406585 () Bool)

(assert (=> b!8036906 (= e!4734026 (and tp!2406587 tp!2406585))))

(assert (=> b!8036641 (= tp!2406476 e!4734026)))

(declare-fun b!8036905 () Bool)

(declare-fun tp!2406586 () Bool)

(assert (=> b!8036905 (= e!4734026 tp!2406586)))

(assert (= (and b!8036641 (is-ElementMatch!21746 (reg!22075 (regTwo!44004 r!13107)))) b!8036903))

(assert (= (and b!8036641 (is-Concat!30749 (reg!22075 (regTwo!44004 r!13107)))) b!8036904))

(assert (= (and b!8036641 (is-Star!21746 (reg!22075 (regTwo!44004 r!13107)))) b!8036905))

(assert (= (and b!8036641 (is-Union!21746 (reg!22075 (regTwo!44004 r!13107)))) b!8036906))

(declare-fun b!8036907 () Bool)

(declare-fun e!4734027 () Bool)

(assert (=> b!8036907 (= e!4734027 tp_is_empty!54487)))

(declare-fun b!8036908 () Bool)

(declare-fun tp!2406593 () Bool)

(declare-fun tp!2406589 () Bool)

(assert (=> b!8036908 (= e!4734027 (and tp!2406593 tp!2406589))))

(declare-fun b!8036910 () Bool)

(declare-fun tp!2406592 () Bool)

(declare-fun tp!2406590 () Bool)

(assert (=> b!8036910 (= e!4734027 (and tp!2406592 tp!2406590))))

(assert (=> b!8036632 (= tp!2406468 e!4734027)))

(declare-fun b!8036909 () Bool)

(declare-fun tp!2406591 () Bool)

(assert (=> b!8036909 (= e!4734027 tp!2406591)))

(assert (= (and b!8036632 (is-ElementMatch!21746 (regOne!44004 (reg!22075 r!13107)))) b!8036907))

(assert (= (and b!8036632 (is-Concat!30749 (regOne!44004 (reg!22075 r!13107)))) b!8036908))

(assert (= (and b!8036632 (is-Star!21746 (regOne!44004 (reg!22075 r!13107)))) b!8036909))

(assert (= (and b!8036632 (is-Union!21746 (regOne!44004 (reg!22075 r!13107)))) b!8036910))

(declare-fun b!8036911 () Bool)

(declare-fun e!4734028 () Bool)

(assert (=> b!8036911 (= e!4734028 tp_is_empty!54487)))

(declare-fun b!8036912 () Bool)

(declare-fun tp!2406598 () Bool)

(declare-fun tp!2406594 () Bool)

(assert (=> b!8036912 (= e!4734028 (and tp!2406598 tp!2406594))))

(declare-fun b!8036914 () Bool)

(declare-fun tp!2406597 () Bool)

(declare-fun tp!2406595 () Bool)

(assert (=> b!8036914 (= e!4734028 (and tp!2406597 tp!2406595))))

(assert (=> b!8036632 (= tp!2406464 e!4734028)))

(declare-fun b!8036913 () Bool)

(declare-fun tp!2406596 () Bool)

(assert (=> b!8036913 (= e!4734028 tp!2406596)))

(assert (= (and b!8036632 (is-ElementMatch!21746 (regTwo!44004 (reg!22075 r!13107)))) b!8036911))

(assert (= (and b!8036632 (is-Concat!30749 (regTwo!44004 (reg!22075 r!13107)))) b!8036912))

(assert (= (and b!8036632 (is-Star!21746 (regTwo!44004 (reg!22075 r!13107)))) b!8036913))

(assert (= (and b!8036632 (is-Union!21746 (regTwo!44004 (reg!22075 r!13107)))) b!8036914))

(declare-fun b!8036915 () Bool)

(declare-fun e!4734029 () Bool)

(assert (=> b!8036915 (= e!4734029 tp_is_empty!54487)))

(declare-fun b!8036916 () Bool)

(declare-fun tp!2406603 () Bool)

(declare-fun tp!2406599 () Bool)

(assert (=> b!8036916 (= e!4734029 (and tp!2406603 tp!2406599))))

(declare-fun b!8036918 () Bool)

(declare-fun tp!2406602 () Bool)

(declare-fun tp!2406600 () Bool)

(assert (=> b!8036918 (= e!4734029 (and tp!2406602 tp!2406600))))

(assert (=> b!8036637 (= tp!2406471 e!4734029)))

(declare-fun b!8036917 () Bool)

(declare-fun tp!2406601 () Bool)

(assert (=> b!8036917 (= e!4734029 tp!2406601)))

(assert (= (and b!8036637 (is-ElementMatch!21746 (reg!22075 (regOne!44004 r!13107)))) b!8036915))

(assert (= (and b!8036637 (is-Concat!30749 (reg!22075 (regOne!44004 r!13107)))) b!8036916))

(assert (= (and b!8036637 (is-Star!21746 (reg!22075 (regOne!44004 r!13107)))) b!8036917))

(assert (= (and b!8036637 (is-Union!21746 (reg!22075 (regOne!44004 r!13107)))) b!8036918))

(declare-fun b!8036919 () Bool)

(declare-fun e!4734030 () Bool)

(assert (=> b!8036919 (= e!4734030 tp_is_empty!54487)))

(declare-fun b!8036920 () Bool)

(declare-fun tp!2406608 () Bool)

(declare-fun tp!2406604 () Bool)

(assert (=> b!8036920 (= e!4734030 (and tp!2406608 tp!2406604))))

(declare-fun b!8036922 () Bool)

(declare-fun tp!2406607 () Bool)

(declare-fun tp!2406605 () Bool)

(assert (=> b!8036922 (= e!4734030 (and tp!2406607 tp!2406605))))

(assert (=> b!8036626 (= tp!2406457 e!4734030)))

(declare-fun b!8036921 () Bool)

(declare-fun tp!2406606 () Bool)

(assert (=> b!8036921 (= e!4734030 tp!2406606)))

(assert (= (and b!8036626 (is-ElementMatch!21746 (regOne!44005 (regOne!44005 r!13107)))) b!8036919))

(assert (= (and b!8036626 (is-Concat!30749 (regOne!44005 (regOne!44005 r!13107)))) b!8036920))

(assert (= (and b!8036626 (is-Star!21746 (regOne!44005 (regOne!44005 r!13107)))) b!8036921))

(assert (= (and b!8036626 (is-Union!21746 (regOne!44005 (regOne!44005 r!13107)))) b!8036922))

(declare-fun b!8036923 () Bool)

(declare-fun e!4734031 () Bool)

(assert (=> b!8036923 (= e!4734031 tp_is_empty!54487)))

(declare-fun b!8036924 () Bool)

(declare-fun tp!2406613 () Bool)

(declare-fun tp!2406609 () Bool)

(assert (=> b!8036924 (= e!4734031 (and tp!2406613 tp!2406609))))

(declare-fun b!8036926 () Bool)

(declare-fun tp!2406612 () Bool)

(declare-fun tp!2406610 () Bool)

(assert (=> b!8036926 (= e!4734031 (and tp!2406612 tp!2406610))))

(assert (=> b!8036626 (= tp!2406455 e!4734031)))

(declare-fun b!8036925 () Bool)

(declare-fun tp!2406611 () Bool)

(assert (=> b!8036925 (= e!4734031 tp!2406611)))

(assert (= (and b!8036626 (is-ElementMatch!21746 (regTwo!44005 (regOne!44005 r!13107)))) b!8036923))

(assert (= (and b!8036626 (is-Concat!30749 (regTwo!44005 (regOne!44005 r!13107)))) b!8036924))

(assert (= (and b!8036626 (is-Star!21746 (regTwo!44005 (regOne!44005 r!13107)))) b!8036925))

(assert (= (and b!8036626 (is-Union!21746 (regTwo!44005 (regOne!44005 r!13107)))) b!8036926))

(declare-fun b!8036927 () Bool)

(declare-fun e!4734032 () Bool)

(assert (=> b!8036927 (= e!4734032 tp_is_empty!54487)))

(declare-fun b!8036928 () Bool)

(declare-fun tp!2406618 () Bool)

(declare-fun tp!2406614 () Bool)

(assert (=> b!8036928 (= e!4734032 (and tp!2406618 tp!2406614))))

(declare-fun b!8036930 () Bool)

(declare-fun tp!2406617 () Bool)

(declare-fun tp!2406615 () Bool)

(assert (=> b!8036930 (= e!4734032 (and tp!2406617 tp!2406615))))

(assert (=> b!8036634 (= tp!2406467 e!4734032)))

(declare-fun b!8036929 () Bool)

(declare-fun tp!2406616 () Bool)

(assert (=> b!8036929 (= e!4734032 tp!2406616)))

(assert (= (and b!8036634 (is-ElementMatch!21746 (regOne!44005 (reg!22075 r!13107)))) b!8036927))

(assert (= (and b!8036634 (is-Concat!30749 (regOne!44005 (reg!22075 r!13107)))) b!8036928))

(assert (= (and b!8036634 (is-Star!21746 (regOne!44005 (reg!22075 r!13107)))) b!8036929))

(assert (= (and b!8036634 (is-Union!21746 (regOne!44005 (reg!22075 r!13107)))) b!8036930))

(declare-fun b!8036931 () Bool)

(declare-fun e!4734033 () Bool)

(assert (=> b!8036931 (= e!4734033 tp_is_empty!54487)))

(declare-fun b!8036932 () Bool)

(declare-fun tp!2406623 () Bool)

(declare-fun tp!2406619 () Bool)

(assert (=> b!8036932 (= e!4734033 (and tp!2406623 tp!2406619))))

(declare-fun b!8036934 () Bool)

(declare-fun tp!2406622 () Bool)

(declare-fun tp!2406620 () Bool)

(assert (=> b!8036934 (= e!4734033 (and tp!2406622 tp!2406620))))

(assert (=> b!8036634 (= tp!2406465 e!4734033)))

(declare-fun b!8036933 () Bool)

(declare-fun tp!2406621 () Bool)

(assert (=> b!8036933 (= e!4734033 tp!2406621)))

(assert (= (and b!8036634 (is-ElementMatch!21746 (regTwo!44005 (reg!22075 r!13107)))) b!8036931))

(assert (= (and b!8036634 (is-Concat!30749 (regTwo!44005 (reg!22075 r!13107)))) b!8036932))

(assert (= (and b!8036634 (is-Star!21746 (regTwo!44005 (reg!22075 r!13107)))) b!8036933))

(assert (= (and b!8036634 (is-Union!21746 (regTwo!44005 (reg!22075 r!13107)))) b!8036934))

(declare-fun b!8036935 () Bool)

(declare-fun e!4734034 () Bool)

(assert (=> b!8036935 (= e!4734034 tp_is_empty!54487)))

(declare-fun b!8036936 () Bool)

(declare-fun tp!2406628 () Bool)

(declare-fun tp!2406624 () Bool)

(assert (=> b!8036936 (= e!4734034 (and tp!2406628 tp!2406624))))

(declare-fun b!8036938 () Bool)

(declare-fun tp!2406627 () Bool)

(declare-fun tp!2406625 () Bool)

(assert (=> b!8036938 (= e!4734034 (and tp!2406627 tp!2406625))))

(assert (=> b!8036625 (= tp!2406456 e!4734034)))

(declare-fun b!8036937 () Bool)

(declare-fun tp!2406626 () Bool)

(assert (=> b!8036937 (= e!4734034 tp!2406626)))

(assert (= (and b!8036625 (is-ElementMatch!21746 (reg!22075 (regOne!44005 r!13107)))) b!8036935))

(assert (= (and b!8036625 (is-Concat!30749 (reg!22075 (regOne!44005 r!13107)))) b!8036936))

(assert (= (and b!8036625 (is-Star!21746 (reg!22075 (regOne!44005 r!13107)))) b!8036937))

(assert (= (and b!8036625 (is-Union!21746 (reg!22075 (regOne!44005 r!13107)))) b!8036938))

(declare-fun b!8036939 () Bool)

(declare-fun e!4734035 () Bool)

(assert (=> b!8036939 (= e!4734035 tp_is_empty!54487)))

(declare-fun b!8036940 () Bool)

(declare-fun tp!2406633 () Bool)

(declare-fun tp!2406629 () Bool)

(assert (=> b!8036940 (= e!4734035 (and tp!2406633 tp!2406629))))

(declare-fun b!8036942 () Bool)

(declare-fun tp!2406632 () Bool)

(declare-fun tp!2406630 () Bool)

(assert (=> b!8036942 (= e!4734035 (and tp!2406632 tp!2406630))))

(assert (=> b!8036630 (= tp!2406462 e!4734035)))

(declare-fun b!8036941 () Bool)

(declare-fun tp!2406631 () Bool)

(assert (=> b!8036941 (= e!4734035 tp!2406631)))

(assert (= (and b!8036630 (is-ElementMatch!21746 (regOne!44005 (regTwo!44005 r!13107)))) b!8036939))

(assert (= (and b!8036630 (is-Concat!30749 (regOne!44005 (regTwo!44005 r!13107)))) b!8036940))

(assert (= (and b!8036630 (is-Star!21746 (regOne!44005 (regTwo!44005 r!13107)))) b!8036941))

(assert (= (and b!8036630 (is-Union!21746 (regOne!44005 (regTwo!44005 r!13107)))) b!8036942))

(declare-fun b!8036943 () Bool)

(declare-fun e!4734036 () Bool)

(assert (=> b!8036943 (= e!4734036 tp_is_empty!54487)))

(declare-fun b!8036944 () Bool)

(declare-fun tp!2406638 () Bool)

(declare-fun tp!2406634 () Bool)

(assert (=> b!8036944 (= e!4734036 (and tp!2406638 tp!2406634))))

(declare-fun b!8036946 () Bool)

(declare-fun tp!2406637 () Bool)

(declare-fun tp!2406635 () Bool)

(assert (=> b!8036946 (= e!4734036 (and tp!2406637 tp!2406635))))

(assert (=> b!8036630 (= tp!2406460 e!4734036)))

(declare-fun b!8036945 () Bool)

(declare-fun tp!2406636 () Bool)

(assert (=> b!8036945 (= e!4734036 tp!2406636)))

(assert (= (and b!8036630 (is-ElementMatch!21746 (regTwo!44005 (regTwo!44005 r!13107)))) b!8036943))

(assert (= (and b!8036630 (is-Concat!30749 (regTwo!44005 (regTwo!44005 r!13107)))) b!8036944))

(assert (= (and b!8036630 (is-Star!21746 (regTwo!44005 (regTwo!44005 r!13107)))) b!8036945))

(assert (= (and b!8036630 (is-Union!21746 (regTwo!44005 (regTwo!44005 r!13107)))) b!8036946))

(push 1)

(assert (not d!2395088))

(assert tp_is_empty!54487)

(assert (not bm!745872))

(assert (not b!8036884))

(assert (not b!8036896))

(assert (not b!8036945))

(assert (not b!8036804))

(assert (not b!8036909))

(assert (not b!8036894))

(assert (not b!8036845))

(assert (not bm!745879))

(assert (not bm!745889))

(assert (not b!8036876))

(assert (not b!8036869))

(assert (not bm!745865))

(assert (not bm!745896))

(assert (not b!8036868))

(assert (not bm!745864))

(assert (not b!8036926))

(assert (not b!8036885))

(assert (not bm!745880))

(assert (not b!8036934))

(assert (not b!8036921))

(assert (not b!8036866))

(assert (not b!8036916))

(assert (not d!2395094))

(assert (not bm!745868))

(assert (not b!8036898))

(assert (not b!8036873))

(assert (not b!8036890))

(assert (not b!8036766))

(assert (not b!8036928))

(assert (not b!8036946))

(assert (not b!8036913))

(assert (not b!8036849))

(assert (not b!8036924))

(assert (not b!8036900))

(assert (not b!8036897))

(assert (not bm!745887))

(assert (not b!8036850))

(assert (not b!8036892))

(assert (not b!8036908))

(assert (not d!2395084))

(assert (not b!8036864))

(assert (not b!8036888))

(assert (not bm!745875))

(assert (not b!8036889))

(assert (not b!8036918))

(assert (not b!8036856))

(assert (not b!8036852))

(assert (not b!8036870))

(assert (not b!8036941))

(assert (not bm!745890))

(assert (not b!8036912))

(assert (not b!8036917))

(assert (not b!8036929))

(assert (not b!8036882))

(assert (not bm!745869))

(assert (not b!8036881))

(assert (not d!2395082))

(assert (not bm!745877))

(assert (not b!8036848))

(assert (not bm!745897))

(assert (not b!8036904))

(assert (not b!8036858))

(assert (not bm!745882))

(assert (not b!8036874))

(assert (not b!8036757))

(assert (not b!8036906))

(assert (not b!8036940))

(assert (not bm!745888))

(assert (not b!8036872))

(assert (not b!8036865))

(assert (not b!8036905))

(assert (not b!8036938))

(assert (not bm!745871))

(assert (not b!8036854))

(assert (not b!8036937))

(assert (not bm!745883))

(assert (not b!8036936))

(assert (not b!8036914))

(assert (not b!8036862))

(assert (not b!8036901))

(assert (not b!8036775))

(assert (not b!8036860))

(assert (not b!8036932))

(assert (not b!8036857))

(assert (not b!8036886))

(assert (not b!8036893))

(assert (not b!8036942))

(assert (not b!8036922))

(assert (not b!8036944))

(assert (not b!8036748))

(assert (not bm!745900))

(assert (not bm!745878))

(assert (not b!8036878))

(assert (not b!8036902))

(assert (not b!8036861))

(assert (not b!8036853))

(assert (not b!8036933))

(assert (not b!8036910))

(assert (not bm!745901))

(assert (not b!8036877))

(assert (not b!8036925))

(assert (not bm!745874))

(assert (not b!8036930))

(assert (not b!8036920))

(assert (not b!8036880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

