; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733562 () Bool)

(assert start!733562)

(declare-fun b!7613628 () Bool)

(declare-fun res!3047999 () Bool)

(declare-fun e!4527983 () Bool)

(assert (=> b!7613628 (=> (not res!3047999) (not e!4527983))))

(declare-datatypes ((C!40794 0))(
  ( (C!40795 (val!30837 Int)) )
))
(declare-datatypes ((Regex!20234 0))(
  ( (ElementMatch!20234 (c!1403645 C!40794)) (Concat!29079 (regOne!40980 Regex!20234) (regTwo!40980 Regex!20234)) (EmptyExpr!20234) (Star!20234 (reg!20563 Regex!20234)) (EmptyLang!20234) (Union!20234 (regOne!40981 Regex!20234) (regTwo!40981 Regex!20234)) )
))
(declare-fun r!19218 () Regex!20234)

(declare-fun nullable!8855 (Regex!20234) Bool)

(assert (=> b!7613628 (= res!3047999 (nullable!8855 r!19218))))

(declare-fun b!7613630 () Bool)

(declare-fun e!4527982 () Bool)

(declare-fun tp!2222454 () Bool)

(declare-fun tp!2222451 () Bool)

(assert (=> b!7613630 (= e!4527982 (and tp!2222454 tp!2222451))))

(declare-fun b!7613631 () Bool)

(declare-fun res!3048000 () Bool)

(assert (=> b!7613631 (=> (not res!3048000) (not e!4527983))))

(assert (=> b!7613631 (= res!3048000 (and (not (is-ElementMatch!20234 r!19218)) (not (is-Star!20234 r!19218)) (not (is-Union!20234 r!19218)) (not (is-Concat!29079 r!19218)) (is-EmptyExpr!20234 r!19218)))))

(declare-fun b!7613632 () Bool)

(declare-fun tp!2222452 () Bool)

(declare-fun tp!2222450 () Bool)

(assert (=> b!7613632 (= e!4527982 (and tp!2222452 tp!2222450))))

(declare-fun b!7613629 () Bool)

(declare-fun lostCause!1906 (Regex!20234) Bool)

(assert (=> b!7613629 (= e!4527983 (lostCause!1906 r!19218))))

(declare-fun res!3048001 () Bool)

(assert (=> start!733562 (=> (not res!3048001) (not e!4527983))))

(declare-fun validRegex!10656 (Regex!20234) Bool)

(assert (=> start!733562 (= res!3048001 (validRegex!10656 r!19218))))

(assert (=> start!733562 e!4527983))

(assert (=> start!733562 e!4527982))

(declare-fun b!7613633 () Bool)

(declare-fun tp_is_empty!50823 () Bool)

(assert (=> b!7613633 (= e!4527982 tp_is_empty!50823)))

(declare-fun b!7613634 () Bool)

(declare-fun tp!2222453 () Bool)

(assert (=> b!7613634 (= e!4527982 tp!2222453)))

(assert (= (and start!733562 res!3048001) b!7613628))

(assert (= (and b!7613628 res!3047999) b!7613631))

(assert (= (and b!7613631 res!3048000) b!7613629))

(assert (= (and start!733562 (is-ElementMatch!20234 r!19218)) b!7613633))

(assert (= (and start!733562 (is-Concat!29079 r!19218)) b!7613630))

(assert (= (and start!733562 (is-Star!20234 r!19218)) b!7613634))

(assert (= (and start!733562 (is-Union!20234 r!19218)) b!7613632))

(declare-fun m!8148966 () Bool)

(assert (=> b!7613628 m!8148966))

(declare-fun m!8148968 () Bool)

(assert (=> b!7613629 m!8148968))

(declare-fun m!8148970 () Bool)

(assert (=> start!733562 m!8148970))

(push 1)

(assert (not b!7613630))

(assert (not b!7613629))

(assert (not b!7613634))

(assert (not start!733562))

(assert (not b!7613628))

(assert tp_is_empty!50823)

(assert (not b!7613632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7613674 () Bool)

(declare-fun e!4528008 () Bool)

(declare-fun call!699465 () Bool)

(assert (=> b!7613674 (= e!4528008 call!699465)))

(declare-fun bm!699458 () Bool)

(declare-fun c!1403651 () Bool)

(declare-fun call!699463 () Bool)

(declare-fun c!1403652 () Bool)

(assert (=> bm!699458 (= call!699463 (validRegex!10656 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))))))

(declare-fun b!7613675 () Bool)

(declare-fun e!4528005 () Bool)

(declare-fun e!4528007 () Bool)

(assert (=> b!7613675 (= e!4528005 e!4528007)))

(declare-fun res!3048021 () Bool)

(assert (=> b!7613675 (=> (not res!3048021) (not e!4528007))))

(declare-fun call!699464 () Bool)

(assert (=> b!7613675 (= res!3048021 call!699464)))

(declare-fun b!7613676 () Bool)

(declare-fun res!3048022 () Bool)

(assert (=> b!7613676 (=> res!3048022 e!4528005)))

(assert (=> b!7613676 (= res!3048022 (not (is-Concat!29079 r!19218)))))

(declare-fun e!4528010 () Bool)

(assert (=> b!7613676 (= e!4528010 e!4528005)))

(declare-fun b!7613677 () Bool)

(assert (=> b!7613677 (= e!4528007 call!699465)))

(declare-fun b!7613678 () Bool)

(declare-fun e!4528006 () Bool)

(assert (=> b!7613678 (= e!4528006 e!4528010)))

(assert (=> b!7613678 (= c!1403652 (is-Union!20234 r!19218))))

(declare-fun b!7613679 () Bool)

(declare-fun e!4528004 () Bool)

(assert (=> b!7613679 (= e!4528004 call!699463)))

(declare-fun d!2322601 () Bool)

(declare-fun res!3048024 () Bool)

(declare-fun e!4528009 () Bool)

(assert (=> d!2322601 (=> res!3048024 e!4528009)))

(assert (=> d!2322601 (= res!3048024 (is-ElementMatch!20234 r!19218))))

(assert (=> d!2322601 (= (validRegex!10656 r!19218) e!4528009)))

(declare-fun b!7613680 () Bool)

(assert (=> b!7613680 (= e!4528009 e!4528006)))

(assert (=> b!7613680 (= c!1403651 (is-Star!20234 r!19218))))

(declare-fun bm!699459 () Bool)

(assert (=> bm!699459 (= call!699464 call!699463)))

(declare-fun b!7613681 () Bool)

(assert (=> b!7613681 (= e!4528006 e!4528004)))

(declare-fun res!3048025 () Bool)

(assert (=> b!7613681 (= res!3048025 (not (nullable!8855 (reg!20563 r!19218))))))

(assert (=> b!7613681 (=> (not res!3048025) (not e!4528004))))

(declare-fun bm!699460 () Bool)

(assert (=> bm!699460 (= call!699465 (validRegex!10656 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))))))

(declare-fun b!7613682 () Bool)

(declare-fun res!3048023 () Bool)

(assert (=> b!7613682 (=> (not res!3048023) (not e!4528008))))

(assert (=> b!7613682 (= res!3048023 call!699464)))

(assert (=> b!7613682 (= e!4528010 e!4528008)))

(assert (= (and d!2322601 (not res!3048024)) b!7613680))

(assert (= (and b!7613680 c!1403651) b!7613681))

(assert (= (and b!7613680 (not c!1403651)) b!7613678))

(assert (= (and b!7613681 res!3048025) b!7613679))

(assert (= (and b!7613678 c!1403652) b!7613682))

(assert (= (and b!7613678 (not c!1403652)) b!7613676))

(assert (= (and b!7613682 res!3048023) b!7613674))

(assert (= (and b!7613676 (not res!3048022)) b!7613675))

(assert (= (and b!7613675 res!3048021) b!7613677))

(assert (= (or b!7613682 b!7613675) bm!699459))

(assert (= (or b!7613674 b!7613677) bm!699460))

(assert (= (or b!7613679 bm!699459) bm!699458))

(declare-fun m!8148980 () Bool)

(assert (=> bm!699458 m!8148980))

(declare-fun m!8148982 () Bool)

(assert (=> b!7613681 m!8148982))

(declare-fun m!8148984 () Bool)

(assert (=> bm!699460 m!8148984))

(assert (=> start!733562 d!2322601))

(declare-fun d!2322607 () Bool)

(declare-fun lostCauseFct!553 (Regex!20234) Bool)

(assert (=> d!2322607 (= (lostCause!1906 r!19218) (lostCauseFct!553 r!19218))))

(declare-fun bs!1942942 () Bool)

(assert (= bs!1942942 d!2322607))

(declare-fun m!8148986 () Bool)

(assert (=> bs!1942942 m!8148986))

(assert (=> b!7613629 d!2322607))

(declare-fun d!2322609 () Bool)

(declare-fun nullableFct!3538 (Regex!20234) Bool)

(assert (=> d!2322609 (= (nullable!8855 r!19218) (nullableFct!3538 r!19218))))

(declare-fun bs!1942943 () Bool)

(assert (= bs!1942943 d!2322609))

(declare-fun m!8148988 () Bool)

(assert (=> bs!1942943 m!8148988))

(assert (=> b!7613628 d!2322609))

(declare-fun b!7613695 () Bool)

(declare-fun e!4528013 () Bool)

(declare-fun tp!2222483 () Bool)

(assert (=> b!7613695 (= e!4528013 tp!2222483)))

(declare-fun b!7613694 () Bool)

(declare-fun tp!2222480 () Bool)

(declare-fun tp!2222484 () Bool)

(assert (=> b!7613694 (= e!4528013 (and tp!2222480 tp!2222484))))

(declare-fun b!7613696 () Bool)

(declare-fun tp!2222482 () Bool)

(declare-fun tp!2222481 () Bool)

(assert (=> b!7613696 (= e!4528013 (and tp!2222482 tp!2222481))))

(declare-fun b!7613693 () Bool)

(assert (=> b!7613693 (= e!4528013 tp_is_empty!50823)))

(assert (=> b!7613630 (= tp!2222454 e!4528013)))

(assert (= (and b!7613630 (is-ElementMatch!20234 (regOne!40980 r!19218))) b!7613693))

(assert (= (and b!7613630 (is-Concat!29079 (regOne!40980 r!19218))) b!7613694))

(assert (= (and b!7613630 (is-Star!20234 (regOne!40980 r!19218))) b!7613695))

(assert (= (and b!7613630 (is-Union!20234 (regOne!40980 r!19218))) b!7613696))

(declare-fun b!7613699 () Bool)

(declare-fun e!4528014 () Bool)

(declare-fun tp!2222488 () Bool)

(assert (=> b!7613699 (= e!4528014 tp!2222488)))

(declare-fun b!7613698 () Bool)

(declare-fun tp!2222485 () Bool)

(declare-fun tp!2222489 () Bool)

(assert (=> b!7613698 (= e!4528014 (and tp!2222485 tp!2222489))))

(declare-fun b!7613700 () Bool)

(declare-fun tp!2222487 () Bool)

(declare-fun tp!2222486 () Bool)

(assert (=> b!7613700 (= e!4528014 (and tp!2222487 tp!2222486))))

(declare-fun b!7613697 () Bool)

(assert (=> b!7613697 (= e!4528014 tp_is_empty!50823)))

(assert (=> b!7613630 (= tp!2222451 e!4528014)))

(assert (= (and b!7613630 (is-ElementMatch!20234 (regTwo!40980 r!19218))) b!7613697))

(assert (= (and b!7613630 (is-Concat!29079 (regTwo!40980 r!19218))) b!7613698))

(assert (= (and b!7613630 (is-Star!20234 (regTwo!40980 r!19218))) b!7613699))

(assert (= (and b!7613630 (is-Union!20234 (regTwo!40980 r!19218))) b!7613700))

(declare-fun b!7613703 () Bool)

(declare-fun e!4528015 () Bool)

(declare-fun tp!2222493 () Bool)

(assert (=> b!7613703 (= e!4528015 tp!2222493)))

(declare-fun b!7613702 () Bool)

(declare-fun tp!2222490 () Bool)

(declare-fun tp!2222494 () Bool)

(assert (=> b!7613702 (= e!4528015 (and tp!2222490 tp!2222494))))

(declare-fun b!7613704 () Bool)

(declare-fun tp!2222492 () Bool)

(declare-fun tp!2222491 () Bool)

(assert (=> b!7613704 (= e!4528015 (and tp!2222492 tp!2222491))))

(declare-fun b!7613701 () Bool)

(assert (=> b!7613701 (= e!4528015 tp_is_empty!50823)))

(assert (=> b!7613634 (= tp!2222453 e!4528015)))

(assert (= (and b!7613634 (is-ElementMatch!20234 (reg!20563 r!19218))) b!7613701))

(assert (= (and b!7613634 (is-Concat!29079 (reg!20563 r!19218))) b!7613702))

(assert (= (and b!7613634 (is-Star!20234 (reg!20563 r!19218))) b!7613703))

(assert (= (and b!7613634 (is-Union!20234 (reg!20563 r!19218))) b!7613704))

(declare-fun b!7613707 () Bool)

(declare-fun e!4528016 () Bool)

(declare-fun tp!2222498 () Bool)

(assert (=> b!7613707 (= e!4528016 tp!2222498)))

(declare-fun b!7613706 () Bool)

(declare-fun tp!2222495 () Bool)

(declare-fun tp!2222499 () Bool)

(assert (=> b!7613706 (= e!4528016 (and tp!2222495 tp!2222499))))

(declare-fun b!7613708 () Bool)

(declare-fun tp!2222497 () Bool)

(declare-fun tp!2222496 () Bool)

(assert (=> b!7613708 (= e!4528016 (and tp!2222497 tp!2222496))))

(declare-fun b!7613705 () Bool)

(assert (=> b!7613705 (= e!4528016 tp_is_empty!50823)))

(assert (=> b!7613632 (= tp!2222452 e!4528016)))

(assert (= (and b!7613632 (is-ElementMatch!20234 (regOne!40981 r!19218))) b!7613705))

(assert (= (and b!7613632 (is-Concat!29079 (regOne!40981 r!19218))) b!7613706))

(assert (= (and b!7613632 (is-Star!20234 (regOne!40981 r!19218))) b!7613707))

(assert (= (and b!7613632 (is-Union!20234 (regOne!40981 r!19218))) b!7613708))

(declare-fun b!7613714 () Bool)

(declare-fun e!4528019 () Bool)

(declare-fun tp!2222503 () Bool)

(assert (=> b!7613714 (= e!4528019 tp!2222503)))

(declare-fun b!7613712 () Bool)

(declare-fun tp!2222500 () Bool)

(declare-fun tp!2222504 () Bool)

(assert (=> b!7613712 (= e!4528019 (and tp!2222500 tp!2222504))))

(declare-fun b!7613716 () Bool)

(declare-fun tp!2222502 () Bool)

(declare-fun tp!2222501 () Bool)

(assert (=> b!7613716 (= e!4528019 (and tp!2222502 tp!2222501))))

(declare-fun b!7613711 () Bool)

(assert (=> b!7613711 (= e!4528019 tp_is_empty!50823)))

(assert (=> b!7613632 (= tp!2222450 e!4528019)))

(assert (= (and b!7613632 (is-ElementMatch!20234 (regTwo!40981 r!19218))) b!7613711))

(assert (= (and b!7613632 (is-Concat!29079 (regTwo!40981 r!19218))) b!7613712))

(assert (= (and b!7613632 (is-Star!20234 (regTwo!40981 r!19218))) b!7613714))

(assert (= (and b!7613632 (is-Union!20234 (regTwo!40981 r!19218))) b!7613716))

(push 1)

(assert (not d!2322609))

(assert (not b!7613695))

(assert (not b!7613702))

(assert (not b!7613706))

(assert tp_is_empty!50823)

(assert (not b!7613699))

(assert (not b!7613694))

(assert (not b!7613707))

(assert (not b!7613712))

(assert (not b!7613704))

(assert (not bm!699460))

(assert (not b!7613700))

(assert (not b!7613696))

(assert (not b!7613703))

(assert (not b!7613716))

(assert (not d!2322607))

(assert (not b!7613681))

(assert (not b!7613714))

(assert (not b!7613698))

(assert (not bm!699458))

(assert (not b!7613708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2322613 () Bool)

(assert (=> d!2322613 (= (nullable!8855 (reg!20563 r!19218)) (nullableFct!3538 (reg!20563 r!19218)))))

(declare-fun bs!1942945 () Bool)

(assert (= bs!1942945 d!2322613))

(declare-fun m!8148998 () Bool)

(assert (=> bs!1942945 m!8148998))

(assert (=> b!7613681 d!2322613))

(declare-fun bm!699474 () Bool)

(declare-fun call!699479 () Bool)

(declare-fun c!1403661 () Bool)

(assert (=> bm!699474 (= call!699479 (lostCause!1906 (ite c!1403661 (regTwo!40981 r!19218) (regTwo!40980 r!19218))))))

(declare-fun bm!699475 () Bool)

(declare-fun call!699480 () Bool)

(assert (=> bm!699475 (= call!699480 (lostCause!1906 (ite c!1403661 (regOne!40981 r!19218) (regOne!40980 r!19218))))))

(declare-fun d!2322615 () Bool)

(declare-fun lt!2655093 () Bool)

(declare-datatypes ((List!73087 0))(
  ( (Nil!72963) (Cons!72963 (h!79411 C!40794) (t!387822 List!73087)) )
))
(declare-datatypes ((Option!17335 0))(
  ( (None!17334) (Some!17334 (v!54469 List!73087)) )
))
(declare-fun isEmpty!41592 (Option!17335) Bool)

(declare-fun getLanguageWitness!1140 (Regex!20234) Option!17335)

(assert (=> d!2322615 (= lt!2655093 (isEmpty!41592 (getLanguageWitness!1140 r!19218)))))

(declare-fun e!4528058 () Bool)

(assert (=> d!2322615 (= lt!2655093 e!4528058)))

(declare-fun res!3048053 () Bool)

(assert (=> d!2322615 (=> (not res!3048053) (not e!4528058))))

(assert (=> d!2322615 (= res!3048053 (not (is-EmptyExpr!20234 r!19218)))))

(assert (=> d!2322615 (= (lostCauseFct!553 r!19218) lt!2655093)))

(declare-fun b!7613784 () Bool)

(declare-fun e!4528059 () Bool)

(assert (=> b!7613784 (= e!4528058 e!4528059)))

(declare-fun res!3048051 () Bool)

(assert (=> b!7613784 (=> res!3048051 e!4528059)))

(assert (=> b!7613784 (= res!3048051 (is-EmptyLang!20234 r!19218))))

(declare-fun b!7613785 () Bool)

(declare-fun e!4528061 () Bool)

(assert (=> b!7613785 (= e!4528059 e!4528061)))

(declare-fun res!3048055 () Bool)

(assert (=> b!7613785 (=> (not res!3048055) (not e!4528061))))

(assert (=> b!7613785 (= res!3048055 (and (not (is-ElementMatch!20234 r!19218)) (not (is-Star!20234 r!19218))))))

(declare-fun b!7613786 () Bool)

(declare-fun e!4528062 () Bool)

(declare-fun e!4528060 () Bool)

(assert (=> b!7613786 (= e!4528062 e!4528060)))

(declare-fun res!3048054 () Bool)

(assert (=> b!7613786 (= res!3048054 call!699480)))

(assert (=> b!7613786 (=> res!3048054 e!4528060)))

(declare-fun b!7613787 () Bool)

(assert (=> b!7613787 (= e!4528061 e!4528062)))

(assert (=> b!7613787 (= c!1403661 (is-Union!20234 r!19218))))

(declare-fun b!7613788 () Bool)

(declare-fun e!4528063 () Bool)

(assert (=> b!7613788 (= e!4528063 call!699479)))

(declare-fun b!7613789 () Bool)

(assert (=> b!7613789 (= e!4528060 call!699479)))

(declare-fun b!7613790 () Bool)

(assert (=> b!7613790 (= e!4528062 e!4528063)))

(declare-fun res!3048052 () Bool)

(assert (=> b!7613790 (= res!3048052 call!699480)))

(assert (=> b!7613790 (=> (not res!3048052) (not e!4528063))))

(assert (= (and d!2322615 res!3048053) b!7613784))

(assert (= (and b!7613784 (not res!3048051)) b!7613785))

(assert (= (and b!7613785 res!3048055) b!7613787))

(assert (= (and b!7613787 c!1403661) b!7613790))

(assert (= (and b!7613787 (not c!1403661)) b!7613786))

(assert (= (and b!7613790 res!3048052) b!7613788))

(assert (= (and b!7613786 (not res!3048054)) b!7613789))

(assert (= (or b!7613790 b!7613786) bm!699475))

(assert (= (or b!7613788 b!7613789) bm!699474))

(declare-fun m!8149000 () Bool)

(assert (=> bm!699474 m!8149000))

(declare-fun m!8149002 () Bool)

(assert (=> bm!699475 m!8149002))

(declare-fun m!8149004 () Bool)

(assert (=> d!2322615 m!8149004))

(assert (=> d!2322615 m!8149004))

(declare-fun m!8149006 () Bool)

(assert (=> d!2322615 m!8149006))

(assert (=> d!2322607 d!2322615))

(declare-fun b!7613791 () Bool)

(declare-fun e!4528068 () Bool)

(declare-fun call!699483 () Bool)

(assert (=> b!7613791 (= e!4528068 call!699483)))

(declare-fun c!1403663 () Bool)

(declare-fun c!1403662 () Bool)

(declare-fun bm!699476 () Bool)

(declare-fun call!699481 () Bool)

(assert (=> bm!699476 (= call!699481 (validRegex!10656 (ite c!1403662 (reg!20563 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))) (ite c!1403663 (regOne!40981 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))) (regOne!40980 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218))))))))))

(declare-fun b!7613792 () Bool)

(declare-fun e!4528065 () Bool)

(declare-fun e!4528067 () Bool)

(assert (=> b!7613792 (= e!4528065 e!4528067)))

(declare-fun res!3048056 () Bool)

(assert (=> b!7613792 (=> (not res!3048056) (not e!4528067))))

(declare-fun call!699482 () Bool)

(assert (=> b!7613792 (= res!3048056 call!699482)))

(declare-fun b!7613793 () Bool)

(declare-fun res!3048057 () Bool)

(assert (=> b!7613793 (=> res!3048057 e!4528065)))

(assert (=> b!7613793 (= res!3048057 (not (is-Concat!29079 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218))))))))

(declare-fun e!4528070 () Bool)

(assert (=> b!7613793 (= e!4528070 e!4528065)))

(declare-fun b!7613794 () Bool)

(assert (=> b!7613794 (= e!4528067 call!699483)))

(declare-fun b!7613795 () Bool)

(declare-fun e!4528066 () Bool)

(assert (=> b!7613795 (= e!4528066 e!4528070)))

(assert (=> b!7613795 (= c!1403663 (is-Union!20234 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))))))

(declare-fun b!7613796 () Bool)

(declare-fun e!4528064 () Bool)

(assert (=> b!7613796 (= e!4528064 call!699481)))

(declare-fun d!2322617 () Bool)

(declare-fun res!3048059 () Bool)

(declare-fun e!4528069 () Bool)

(assert (=> d!2322617 (=> res!3048059 e!4528069)))

(assert (=> d!2322617 (= res!3048059 (is-ElementMatch!20234 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))))))

(assert (=> d!2322617 (= (validRegex!10656 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))) e!4528069)))

(declare-fun b!7613797 () Bool)

(assert (=> b!7613797 (= e!4528069 e!4528066)))

(assert (=> b!7613797 (= c!1403662 (is-Star!20234 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))))))

(declare-fun bm!699477 () Bool)

(assert (=> bm!699477 (= call!699482 call!699481)))

(declare-fun b!7613798 () Bool)

(assert (=> b!7613798 (= e!4528066 e!4528064)))

(declare-fun res!3048060 () Bool)

(assert (=> b!7613798 (= res!3048060 (not (nullable!8855 (reg!20563 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))))))))

(assert (=> b!7613798 (=> (not res!3048060) (not e!4528064))))

(declare-fun bm!699478 () Bool)

(assert (=> bm!699478 (= call!699483 (validRegex!10656 (ite c!1403663 (regTwo!40981 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))) (regTwo!40980 (ite c!1403651 (reg!20563 r!19218) (ite c!1403652 (regOne!40981 r!19218) (regOne!40980 r!19218)))))))))

(declare-fun b!7613799 () Bool)

(declare-fun res!3048058 () Bool)

(assert (=> b!7613799 (=> (not res!3048058) (not e!4528068))))

(assert (=> b!7613799 (= res!3048058 call!699482)))

(assert (=> b!7613799 (= e!4528070 e!4528068)))

(assert (= (and d!2322617 (not res!3048059)) b!7613797))

(assert (= (and b!7613797 c!1403662) b!7613798))

(assert (= (and b!7613797 (not c!1403662)) b!7613795))

(assert (= (and b!7613798 res!3048060) b!7613796))

(assert (= (and b!7613795 c!1403663) b!7613799))

(assert (= (and b!7613795 (not c!1403663)) b!7613793))

(assert (= (and b!7613799 res!3048058) b!7613791))

(assert (= (and b!7613793 (not res!3048057)) b!7613792))

(assert (= (and b!7613792 res!3048056) b!7613794))

(assert (= (or b!7613799 b!7613792) bm!699477))

(assert (= (or b!7613791 b!7613794) bm!699478))

(assert (= (or b!7613796 bm!699477) bm!699476))

(declare-fun m!8149008 () Bool)

(assert (=> bm!699476 m!8149008))

(declare-fun m!8149010 () Bool)

(assert (=> b!7613798 m!8149010))

(declare-fun m!8149012 () Bool)

(assert (=> bm!699478 m!8149012))

(assert (=> bm!699458 d!2322617))

(declare-fun bm!699483 () Bool)

(declare-fun call!699488 () Bool)

(declare-fun c!1403666 () Bool)

(assert (=> bm!699483 (= call!699488 (nullable!8855 (ite c!1403666 (regTwo!40981 r!19218) (regOne!40980 r!19218))))))

(declare-fun d!2322619 () Bool)

(declare-fun res!3048073 () Bool)

(declare-fun e!4528086 () Bool)

(assert (=> d!2322619 (=> res!3048073 e!4528086)))

(assert (=> d!2322619 (= res!3048073 (is-EmptyExpr!20234 r!19218))))

(assert (=> d!2322619 (= (nullableFct!3538 r!19218) e!4528086)))

(declare-fun b!7613814 () Bool)

(declare-fun e!4528087 () Bool)

(declare-fun e!4528088 () Bool)

(assert (=> b!7613814 (= e!4528087 e!4528088)))

(declare-fun res!3048071 () Bool)

(declare-fun call!699489 () Bool)

(assert (=> b!7613814 (= res!3048071 call!699489)))

(assert (=> b!7613814 (=> res!3048071 e!4528088)))

(declare-fun b!7613815 () Bool)

(assert (=> b!7613815 (= e!4528088 call!699488)))

(declare-fun b!7613816 () Bool)

(declare-fun e!4528083 () Bool)

(assert (=> b!7613816 (= e!4528083 e!4528087)))

(assert (=> b!7613816 (= c!1403666 (is-Union!20234 r!19218))))

(declare-fun b!7613817 () Bool)

(declare-fun e!4528084 () Bool)

(assert (=> b!7613817 (= e!4528086 e!4528084)))

(declare-fun res!3048074 () Bool)

(assert (=> b!7613817 (=> (not res!3048074) (not e!4528084))))

(assert (=> b!7613817 (= res!3048074 (and (not (is-EmptyLang!20234 r!19218)) (not (is-ElementMatch!20234 r!19218))))))

(declare-fun b!7613818 () Bool)

(declare-fun e!4528085 () Bool)

(assert (=> b!7613818 (= e!4528087 e!4528085)))

(declare-fun res!3048075 () Bool)

(assert (=> b!7613818 (= res!3048075 call!699488)))

(assert (=> b!7613818 (=> (not res!3048075) (not e!4528085))))

(declare-fun bm!699484 () Bool)

(assert (=> bm!699484 (= call!699489 (nullable!8855 (ite c!1403666 (regOne!40981 r!19218) (regTwo!40980 r!19218))))))

(declare-fun b!7613819 () Bool)

(assert (=> b!7613819 (= e!4528084 e!4528083)))

(declare-fun res!3048072 () Bool)

(assert (=> b!7613819 (=> res!3048072 e!4528083)))

(assert (=> b!7613819 (= res!3048072 (is-Star!20234 r!19218))))

(declare-fun b!7613820 () Bool)

(assert (=> b!7613820 (= e!4528085 call!699489)))

(assert (= (and d!2322619 (not res!3048073)) b!7613817))

(assert (= (and b!7613817 res!3048074) b!7613819))

(assert (= (and b!7613819 (not res!3048072)) b!7613816))

(assert (= (and b!7613816 c!1403666) b!7613814))

(assert (= (and b!7613816 (not c!1403666)) b!7613818))

(assert (= (and b!7613814 (not res!3048071)) b!7613815))

(assert (= (and b!7613818 res!3048075) b!7613820))

(assert (= (or b!7613815 b!7613818) bm!699483))

(assert (= (or b!7613814 b!7613820) bm!699484))

(declare-fun m!8149014 () Bool)

(assert (=> bm!699483 m!8149014))

(declare-fun m!8149016 () Bool)

(assert (=> bm!699484 m!8149016))

(assert (=> d!2322609 d!2322619))

(declare-fun b!7613821 () Bool)

(declare-fun e!4528093 () Bool)

(declare-fun call!699492 () Bool)

(assert (=> b!7613821 (= e!4528093 call!699492)))

(declare-fun c!1403668 () Bool)

(declare-fun bm!699485 () Bool)

(declare-fun c!1403667 () Bool)

(declare-fun call!699490 () Bool)

(assert (=> bm!699485 (= call!699490 (validRegex!10656 (ite c!1403667 (reg!20563 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))) (ite c!1403668 (regOne!40981 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))) (regOne!40980 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218)))))))))

(declare-fun b!7613822 () Bool)

(declare-fun e!4528090 () Bool)

(declare-fun e!4528092 () Bool)

(assert (=> b!7613822 (= e!4528090 e!4528092)))

(declare-fun res!3048076 () Bool)

(assert (=> b!7613822 (=> (not res!3048076) (not e!4528092))))

(declare-fun call!699491 () Bool)

(assert (=> b!7613822 (= res!3048076 call!699491)))

(declare-fun b!7613823 () Bool)

(declare-fun res!3048077 () Bool)

(assert (=> b!7613823 (=> res!3048077 e!4528090)))

(assert (=> b!7613823 (= res!3048077 (not (is-Concat!29079 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218)))))))

(declare-fun e!4528095 () Bool)

(assert (=> b!7613823 (= e!4528095 e!4528090)))

(declare-fun b!7613824 () Bool)

(assert (=> b!7613824 (= e!4528092 call!699492)))

(declare-fun b!7613825 () Bool)

(declare-fun e!4528091 () Bool)

(assert (=> b!7613825 (= e!4528091 e!4528095)))

(assert (=> b!7613825 (= c!1403668 (is-Union!20234 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))))))

(declare-fun b!7613826 () Bool)

(declare-fun e!4528089 () Bool)

(assert (=> b!7613826 (= e!4528089 call!699490)))

(declare-fun d!2322621 () Bool)

(declare-fun res!3048079 () Bool)

(declare-fun e!4528094 () Bool)

(assert (=> d!2322621 (=> res!3048079 e!4528094)))

(assert (=> d!2322621 (= res!3048079 (is-ElementMatch!20234 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))))))

(assert (=> d!2322621 (= (validRegex!10656 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))) e!4528094)))

(declare-fun b!7613827 () Bool)

(assert (=> b!7613827 (= e!4528094 e!4528091)))

(assert (=> b!7613827 (= c!1403667 (is-Star!20234 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))))))

(declare-fun bm!699486 () Bool)

(assert (=> bm!699486 (= call!699491 call!699490)))

(declare-fun b!7613828 () Bool)

(assert (=> b!7613828 (= e!4528091 e!4528089)))

(declare-fun res!3048080 () Bool)

(assert (=> b!7613828 (= res!3048080 (not (nullable!8855 (reg!20563 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))))))))

(assert (=> b!7613828 (=> (not res!3048080) (not e!4528089))))

(declare-fun bm!699487 () Bool)

(assert (=> bm!699487 (= call!699492 (validRegex!10656 (ite c!1403668 (regTwo!40981 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))) (regTwo!40980 (ite c!1403652 (regTwo!40981 r!19218) (regTwo!40980 r!19218))))))))

(declare-fun b!7613829 () Bool)

(declare-fun res!3048078 () Bool)

(assert (=> b!7613829 (=> (not res!3048078) (not e!4528093))))

(assert (=> b!7613829 (= res!3048078 call!699491)))

(assert (=> b!7613829 (= e!4528095 e!4528093)))

(assert (= (and d!2322621 (not res!3048079)) b!7613827))

(assert (= (and b!7613827 c!1403667) b!7613828))

(assert (= (and b!7613827 (not c!1403667)) b!7613825))

(assert (= (and b!7613828 res!3048080) b!7613826))

(assert (= (and b!7613825 c!1403668) b!7613829))

(assert (= (and b!7613825 (not c!1403668)) b!7613823))

(assert (= (and b!7613829 res!3048078) b!7613821))

(assert (= (and b!7613823 (not res!3048077)) b!7613822))

(assert (= (and b!7613822 res!3048076) b!7613824))

(assert (= (or b!7613829 b!7613822) bm!699486))

(assert (= (or b!7613821 b!7613824) bm!699487))

(assert (= (or b!7613826 bm!699486) bm!699485))

(declare-fun m!8149018 () Bool)

(assert (=> bm!699485 m!8149018))

(declare-fun m!8149020 () Bool)

(assert (=> b!7613828 m!8149020))

(declare-fun m!8149022 () Bool)

(assert (=> bm!699487 m!8149022))

(assert (=> bm!699460 d!2322621))

(declare-fun b!7613832 () Bool)

(declare-fun e!4528096 () Bool)

(declare-fun tp!2222543 () Bool)

(assert (=> b!7613832 (= e!4528096 tp!2222543)))

(declare-fun b!7613831 () Bool)

(declare-fun tp!2222540 () Bool)

(declare-fun tp!2222544 () Bool)

(assert (=> b!7613831 (= e!4528096 (and tp!2222540 tp!2222544))))

(declare-fun b!7613833 () Bool)

(declare-fun tp!2222542 () Bool)

(declare-fun tp!2222541 () Bool)

(assert (=> b!7613833 (= e!4528096 (and tp!2222542 tp!2222541))))

(declare-fun b!7613830 () Bool)

(assert (=> b!7613830 (= e!4528096 tp_is_empty!50823)))

(assert (=> b!7613704 (= tp!2222492 e!4528096)))

(assert (= (and b!7613704 (is-ElementMatch!20234 (regOne!40981 (reg!20563 r!19218)))) b!7613830))

(assert (= (and b!7613704 (is-Concat!29079 (regOne!40981 (reg!20563 r!19218)))) b!7613831))

(assert (= (and b!7613704 (is-Star!20234 (regOne!40981 (reg!20563 r!19218)))) b!7613832))

(assert (= (and b!7613704 (is-Union!20234 (regOne!40981 (reg!20563 r!19218)))) b!7613833))

(declare-fun b!7613836 () Bool)

(declare-fun e!4528097 () Bool)

(declare-fun tp!2222548 () Bool)

(assert (=> b!7613836 (= e!4528097 tp!2222548)))

(declare-fun b!7613835 () Bool)

(declare-fun tp!2222545 () Bool)

(declare-fun tp!2222549 () Bool)

(assert (=> b!7613835 (= e!4528097 (and tp!2222545 tp!2222549))))

(declare-fun b!7613837 () Bool)

(declare-fun tp!2222547 () Bool)

(declare-fun tp!2222546 () Bool)

(assert (=> b!7613837 (= e!4528097 (and tp!2222547 tp!2222546))))

(declare-fun b!7613834 () Bool)

(assert (=> b!7613834 (= e!4528097 tp_is_empty!50823)))

(assert (=> b!7613704 (= tp!2222491 e!4528097)))

(assert (= (and b!7613704 (is-ElementMatch!20234 (regTwo!40981 (reg!20563 r!19218)))) b!7613834))

(assert (= (and b!7613704 (is-Concat!29079 (regTwo!40981 (reg!20563 r!19218)))) b!7613835))

(assert (= (and b!7613704 (is-Star!20234 (regTwo!40981 (reg!20563 r!19218)))) b!7613836))

(assert (= (and b!7613704 (is-Union!20234 (regTwo!40981 (reg!20563 r!19218)))) b!7613837))

(declare-fun b!7613840 () Bool)

(declare-fun e!4528098 () Bool)

(declare-fun tp!2222553 () Bool)

(assert (=> b!7613840 (= e!4528098 tp!2222553)))

(declare-fun b!7613839 () Bool)

(declare-fun tp!2222550 () Bool)

(declare-fun tp!2222554 () Bool)

(assert (=> b!7613839 (= e!4528098 (and tp!2222550 tp!2222554))))

(declare-fun b!7613841 () Bool)

(declare-fun tp!2222552 () Bool)

(declare-fun tp!2222551 () Bool)

(assert (=> b!7613841 (= e!4528098 (and tp!2222552 tp!2222551))))

(declare-fun b!7613838 () Bool)

(assert (=> b!7613838 (= e!4528098 tp_is_empty!50823)))

(assert (=> b!7613703 (= tp!2222493 e!4528098)))

(assert (= (and b!7613703 (is-ElementMatch!20234 (reg!20563 (reg!20563 r!19218)))) b!7613838))

(assert (= (and b!7613703 (is-Concat!29079 (reg!20563 (reg!20563 r!19218)))) b!7613839))

(assert (= (and b!7613703 (is-Star!20234 (reg!20563 (reg!20563 r!19218)))) b!7613840))

(assert (= (and b!7613703 (is-Union!20234 (reg!20563 (reg!20563 r!19218)))) b!7613841))

(declare-fun b!7613844 () Bool)

(declare-fun e!4528099 () Bool)

(declare-fun tp!2222558 () Bool)

(assert (=> b!7613844 (= e!4528099 tp!2222558)))

(declare-fun b!7613843 () Bool)

(declare-fun tp!2222555 () Bool)

(declare-fun tp!2222559 () Bool)

(assert (=> b!7613843 (= e!4528099 (and tp!2222555 tp!2222559))))

(declare-fun b!7613845 () Bool)

(declare-fun tp!2222557 () Bool)

(declare-fun tp!2222556 () Bool)

(assert (=> b!7613845 (= e!4528099 (and tp!2222557 tp!2222556))))

(declare-fun b!7613842 () Bool)

(assert (=> b!7613842 (= e!4528099 tp_is_empty!50823)))

(assert (=> b!7613708 (= tp!2222497 e!4528099)))

(assert (= (and b!7613708 (is-ElementMatch!20234 (regOne!40981 (regOne!40981 r!19218)))) b!7613842))

(assert (= (and b!7613708 (is-Concat!29079 (regOne!40981 (regOne!40981 r!19218)))) b!7613843))

(assert (= (and b!7613708 (is-Star!20234 (regOne!40981 (regOne!40981 r!19218)))) b!7613844))

(assert (= (and b!7613708 (is-Union!20234 (regOne!40981 (regOne!40981 r!19218)))) b!7613845))

(declare-fun b!7613848 () Bool)

(declare-fun e!4528100 () Bool)

(declare-fun tp!2222563 () Bool)

(assert (=> b!7613848 (= e!4528100 tp!2222563)))

(declare-fun b!7613847 () Bool)

(declare-fun tp!2222560 () Bool)

(declare-fun tp!2222564 () Bool)

(assert (=> b!7613847 (= e!4528100 (and tp!2222560 tp!2222564))))

(declare-fun b!7613849 () Bool)

(declare-fun tp!2222562 () Bool)

(declare-fun tp!2222561 () Bool)

(assert (=> b!7613849 (= e!4528100 (and tp!2222562 tp!2222561))))

(declare-fun b!7613846 () Bool)

(assert (=> b!7613846 (= e!4528100 tp_is_empty!50823)))

(assert (=> b!7613708 (= tp!2222496 e!4528100)))

(assert (= (and b!7613708 (is-ElementMatch!20234 (regTwo!40981 (regOne!40981 r!19218)))) b!7613846))

(assert (= (and b!7613708 (is-Concat!29079 (regTwo!40981 (regOne!40981 r!19218)))) b!7613847))

(assert (= (and b!7613708 (is-Star!20234 (regTwo!40981 (regOne!40981 r!19218)))) b!7613848))

(assert (= (and b!7613708 (is-Union!20234 (regTwo!40981 (regOne!40981 r!19218)))) b!7613849))

(declare-fun b!7613852 () Bool)

(declare-fun e!4528101 () Bool)

(declare-fun tp!2222568 () Bool)

(assert (=> b!7613852 (= e!4528101 tp!2222568)))

(declare-fun b!7613851 () Bool)

(declare-fun tp!2222565 () Bool)

(declare-fun tp!2222569 () Bool)

(assert (=> b!7613851 (= e!4528101 (and tp!2222565 tp!2222569))))

(declare-fun b!7613853 () Bool)

(declare-fun tp!2222567 () Bool)

(declare-fun tp!2222566 () Bool)

(assert (=> b!7613853 (= e!4528101 (and tp!2222567 tp!2222566))))

(declare-fun b!7613850 () Bool)

(assert (=> b!7613850 (= e!4528101 tp_is_empty!50823)))

(assert (=> b!7613700 (= tp!2222487 e!4528101)))

(assert (= (and b!7613700 (is-ElementMatch!20234 (regOne!40981 (regTwo!40980 r!19218)))) b!7613850))

(assert (= (and b!7613700 (is-Concat!29079 (regOne!40981 (regTwo!40980 r!19218)))) b!7613851))

(assert (= (and b!7613700 (is-Star!20234 (regOne!40981 (regTwo!40980 r!19218)))) b!7613852))

(assert (= (and b!7613700 (is-Union!20234 (regOne!40981 (regTwo!40980 r!19218)))) b!7613853))

(declare-fun b!7613856 () Bool)

(declare-fun e!4528102 () Bool)

(declare-fun tp!2222573 () Bool)

(assert (=> b!7613856 (= e!4528102 tp!2222573)))

(declare-fun b!7613855 () Bool)

(declare-fun tp!2222570 () Bool)

(declare-fun tp!2222574 () Bool)

(assert (=> b!7613855 (= e!4528102 (and tp!2222570 tp!2222574))))

(declare-fun b!7613857 () Bool)

(declare-fun tp!2222572 () Bool)

(declare-fun tp!2222571 () Bool)

(assert (=> b!7613857 (= e!4528102 (and tp!2222572 tp!2222571))))

(declare-fun b!7613854 () Bool)

(assert (=> b!7613854 (= e!4528102 tp_is_empty!50823)))

(assert (=> b!7613700 (= tp!2222486 e!4528102)))

(assert (= (and b!7613700 (is-ElementMatch!20234 (regTwo!40981 (regTwo!40980 r!19218)))) b!7613854))

(assert (= (and b!7613700 (is-Concat!29079 (regTwo!40981 (regTwo!40980 r!19218)))) b!7613855))

(assert (= (and b!7613700 (is-Star!20234 (regTwo!40981 (regTwo!40980 r!19218)))) b!7613856))

(assert (= (and b!7613700 (is-Union!20234 (regTwo!40981 (regTwo!40980 r!19218)))) b!7613857))

(declare-fun b!7613860 () Bool)

(declare-fun e!4528103 () Bool)

(declare-fun tp!2222578 () Bool)

(assert (=> b!7613860 (= e!4528103 tp!2222578)))

(declare-fun b!7613859 () Bool)

(declare-fun tp!2222575 () Bool)

(declare-fun tp!2222579 () Bool)

(assert (=> b!7613859 (= e!4528103 (and tp!2222575 tp!2222579))))

(declare-fun b!7613861 () Bool)

(declare-fun tp!2222577 () Bool)

(declare-fun tp!2222576 () Bool)

(assert (=> b!7613861 (= e!4528103 (and tp!2222577 tp!2222576))))

(declare-fun b!7613858 () Bool)

(assert (=> b!7613858 (= e!4528103 tp_is_empty!50823)))

(assert (=> b!7613695 (= tp!2222483 e!4528103)))

(assert (= (and b!7613695 (is-ElementMatch!20234 (reg!20563 (regOne!40980 r!19218)))) b!7613858))

(assert (= (and b!7613695 (is-Concat!29079 (reg!20563 (regOne!40980 r!19218)))) b!7613859))

(assert (= (and b!7613695 (is-Star!20234 (reg!20563 (regOne!40980 r!19218)))) b!7613860))

(assert (= (and b!7613695 (is-Union!20234 (reg!20563 (regOne!40980 r!19218)))) b!7613861))

(declare-fun b!7613864 () Bool)

(declare-fun e!4528104 () Bool)

(declare-fun tp!2222583 () Bool)

(assert (=> b!7613864 (= e!4528104 tp!2222583)))

(declare-fun b!7613863 () Bool)

(declare-fun tp!2222580 () Bool)

(declare-fun tp!2222584 () Bool)

(assert (=> b!7613863 (= e!4528104 (and tp!2222580 tp!2222584))))

(declare-fun b!7613865 () Bool)

(declare-fun tp!2222582 () Bool)

(declare-fun tp!2222581 () Bool)

(assert (=> b!7613865 (= e!4528104 (and tp!2222582 tp!2222581))))

(declare-fun b!7613862 () Bool)

(assert (=> b!7613862 (= e!4528104 tp_is_empty!50823)))

(assert (=> b!7613706 (= tp!2222495 e!4528104)))

(assert (= (and b!7613706 (is-ElementMatch!20234 (regOne!40980 (regOne!40981 r!19218)))) b!7613862))

(assert (= (and b!7613706 (is-Concat!29079 (regOne!40980 (regOne!40981 r!19218)))) b!7613863))

(assert (= (and b!7613706 (is-Star!20234 (regOne!40980 (regOne!40981 r!19218)))) b!7613864))

(assert (= (and b!7613706 (is-Union!20234 (regOne!40980 (regOne!40981 r!19218)))) b!7613865))

(declare-fun b!7613868 () Bool)

(declare-fun e!4528105 () Bool)

(declare-fun tp!2222588 () Bool)

(assert (=> b!7613868 (= e!4528105 tp!2222588)))

(declare-fun b!7613867 () Bool)

(declare-fun tp!2222585 () Bool)

(declare-fun tp!2222589 () Bool)

(assert (=> b!7613867 (= e!4528105 (and tp!2222585 tp!2222589))))

(declare-fun b!7613869 () Bool)

(declare-fun tp!2222587 () Bool)

(declare-fun tp!2222586 () Bool)

(assert (=> b!7613869 (= e!4528105 (and tp!2222587 tp!2222586))))

(declare-fun b!7613866 () Bool)

(assert (=> b!7613866 (= e!4528105 tp_is_empty!50823)))

(assert (=> b!7613706 (= tp!2222499 e!4528105)))

(assert (= (and b!7613706 (is-ElementMatch!20234 (regTwo!40980 (regOne!40981 r!19218)))) b!7613866))

(assert (= (and b!7613706 (is-Concat!29079 (regTwo!40980 (regOne!40981 r!19218)))) b!7613867))

(assert (= (and b!7613706 (is-Star!20234 (regTwo!40980 (regOne!40981 r!19218)))) b!7613868))

(assert (= (and b!7613706 (is-Union!20234 (regTwo!40980 (regOne!40981 r!19218)))) b!7613869))

(declare-fun b!7613872 () Bool)

(declare-fun e!4528106 () Bool)

(declare-fun tp!2222593 () Bool)

(assert (=> b!7613872 (= e!4528106 tp!2222593)))

(declare-fun b!7613871 () Bool)

(declare-fun tp!2222590 () Bool)

(declare-fun tp!2222594 () Bool)

(assert (=> b!7613871 (= e!4528106 (and tp!2222590 tp!2222594))))

(declare-fun b!7613873 () Bool)

(declare-fun tp!2222592 () Bool)

(declare-fun tp!2222591 () Bool)

(assert (=> b!7613873 (= e!4528106 (and tp!2222592 tp!2222591))))

(declare-fun b!7613870 () Bool)

(assert (=> b!7613870 (= e!4528106 tp_is_empty!50823)))

(assert (=> b!7613696 (= tp!2222482 e!4528106)))

(assert (= (and b!7613696 (is-ElementMatch!20234 (regOne!40981 (regOne!40980 r!19218)))) b!7613870))

(assert (= (and b!7613696 (is-Concat!29079 (regOne!40981 (regOne!40980 r!19218)))) b!7613871))

(assert (= (and b!7613696 (is-Star!20234 (regOne!40981 (regOne!40980 r!19218)))) b!7613872))

(assert (= (and b!7613696 (is-Union!20234 (regOne!40981 (regOne!40980 r!19218)))) b!7613873))

(declare-fun b!7613876 () Bool)

(declare-fun e!4528107 () Bool)

(declare-fun tp!2222598 () Bool)

(assert (=> b!7613876 (= e!4528107 tp!2222598)))

(declare-fun b!7613875 () Bool)

(declare-fun tp!2222595 () Bool)

(declare-fun tp!2222599 () Bool)

(assert (=> b!7613875 (= e!4528107 (and tp!2222595 tp!2222599))))

(declare-fun b!7613877 () Bool)

(declare-fun tp!2222597 () Bool)

(declare-fun tp!2222596 () Bool)

(assert (=> b!7613877 (= e!4528107 (and tp!2222597 tp!2222596))))

(declare-fun b!7613874 () Bool)

(assert (=> b!7613874 (= e!4528107 tp_is_empty!50823)))

(assert (=> b!7613696 (= tp!2222481 e!4528107)))

(assert (= (and b!7613696 (is-ElementMatch!20234 (regTwo!40981 (regOne!40980 r!19218)))) b!7613874))

(assert (= (and b!7613696 (is-Concat!29079 (regTwo!40981 (regOne!40980 r!19218)))) b!7613875))

(assert (= (and b!7613696 (is-Star!20234 (regTwo!40981 (regOne!40980 r!19218)))) b!7613876))

(assert (= (and b!7613696 (is-Union!20234 (regTwo!40981 (regOne!40980 r!19218)))) b!7613877))

(declare-fun b!7613880 () Bool)

(declare-fun e!4528108 () Bool)

(declare-fun tp!2222603 () Bool)

(assert (=> b!7613880 (= e!4528108 tp!2222603)))

(declare-fun b!7613879 () Bool)

(declare-fun tp!2222600 () Bool)

(declare-fun tp!2222604 () Bool)

(assert (=> b!7613879 (= e!4528108 (and tp!2222600 tp!2222604))))

(declare-fun b!7613881 () Bool)

(declare-fun tp!2222602 () Bool)

(declare-fun tp!2222601 () Bool)

(assert (=> b!7613881 (= e!4528108 (and tp!2222602 tp!2222601))))

(declare-fun b!7613878 () Bool)

(assert (=> b!7613878 (= e!4528108 tp_is_empty!50823)))

(assert (=> b!7613707 (= tp!2222498 e!4528108)))

(assert (= (and b!7613707 (is-ElementMatch!20234 (reg!20563 (regOne!40981 r!19218)))) b!7613878))

(assert (= (and b!7613707 (is-Concat!29079 (reg!20563 (regOne!40981 r!19218)))) b!7613879))

(assert (= (and b!7613707 (is-Star!20234 (reg!20563 (regOne!40981 r!19218)))) b!7613880))

(assert (= (and b!7613707 (is-Union!20234 (reg!20563 (regOne!40981 r!19218)))) b!7613881))

(declare-fun b!7613884 () Bool)

(declare-fun e!4528109 () Bool)

(declare-fun tp!2222608 () Bool)

(assert (=> b!7613884 (= e!4528109 tp!2222608)))

(declare-fun b!7613883 () Bool)

(declare-fun tp!2222605 () Bool)

(declare-fun tp!2222609 () Bool)

(assert (=> b!7613883 (= e!4528109 (and tp!2222605 tp!2222609))))

(declare-fun b!7613885 () Bool)

(declare-fun tp!2222607 () Bool)

(declare-fun tp!2222606 () Bool)

(assert (=> b!7613885 (= e!4528109 (and tp!2222607 tp!2222606))))

(declare-fun b!7613882 () Bool)

(assert (=> b!7613882 (= e!4528109 tp_is_empty!50823)))

(assert (=> b!7613702 (= tp!2222490 e!4528109)))

(assert (= (and b!7613702 (is-ElementMatch!20234 (regOne!40980 (reg!20563 r!19218)))) b!7613882))

(assert (= (and b!7613702 (is-Concat!29079 (regOne!40980 (reg!20563 r!19218)))) b!7613883))

(assert (= (and b!7613702 (is-Star!20234 (regOne!40980 (reg!20563 r!19218)))) b!7613884))

(assert (= (and b!7613702 (is-Union!20234 (regOne!40980 (reg!20563 r!19218)))) b!7613885))

(declare-fun b!7613888 () Bool)

(declare-fun e!4528110 () Bool)

(declare-fun tp!2222613 () Bool)

(assert (=> b!7613888 (= e!4528110 tp!2222613)))

(declare-fun b!7613887 () Bool)

(declare-fun tp!2222610 () Bool)

(declare-fun tp!2222614 () Bool)

(assert (=> b!7613887 (= e!4528110 (and tp!2222610 tp!2222614))))

(declare-fun b!7613889 () Bool)

(declare-fun tp!2222612 () Bool)

(declare-fun tp!2222611 () Bool)

(assert (=> b!7613889 (= e!4528110 (and tp!2222612 tp!2222611))))

(declare-fun b!7613886 () Bool)

(assert (=> b!7613886 (= e!4528110 tp_is_empty!50823)))

(assert (=> b!7613702 (= tp!2222494 e!4528110)))

(assert (= (and b!7613702 (is-ElementMatch!20234 (regTwo!40980 (reg!20563 r!19218)))) b!7613886))

(assert (= (and b!7613702 (is-Concat!29079 (regTwo!40980 (reg!20563 r!19218)))) b!7613887))

(assert (= (and b!7613702 (is-Star!20234 (regTwo!40980 (reg!20563 r!19218)))) b!7613888))

(assert (= (and b!7613702 (is-Union!20234 (regTwo!40980 (reg!20563 r!19218)))) b!7613889))

(declare-fun b!7613892 () Bool)

(declare-fun e!4528111 () Bool)

(declare-fun tp!2222618 () Bool)

(assert (=> b!7613892 (= e!4528111 tp!2222618)))

(declare-fun b!7613891 () Bool)

(declare-fun tp!2222615 () Bool)

(declare-fun tp!2222619 () Bool)

(assert (=> b!7613891 (= e!4528111 (and tp!2222615 tp!2222619))))

(declare-fun b!7613893 () Bool)

(declare-fun tp!2222617 () Bool)

(declare-fun tp!2222616 () Bool)

(assert (=> b!7613893 (= e!4528111 (and tp!2222617 tp!2222616))))

(declare-fun b!7613890 () Bool)

(assert (=> b!7613890 (= e!4528111 tp_is_empty!50823)))

(assert (=> b!7613694 (= tp!2222480 e!4528111)))

(assert (= (and b!7613694 (is-ElementMatch!20234 (regOne!40980 (regOne!40980 r!19218)))) b!7613890))

(assert (= (and b!7613694 (is-Concat!29079 (regOne!40980 (regOne!40980 r!19218)))) b!7613891))

(assert (= (and b!7613694 (is-Star!20234 (regOne!40980 (regOne!40980 r!19218)))) b!7613892))

(assert (= (and b!7613694 (is-Union!20234 (regOne!40980 (regOne!40980 r!19218)))) b!7613893))

(declare-fun b!7613896 () Bool)

(declare-fun e!4528112 () Bool)

(declare-fun tp!2222623 () Bool)

(assert (=> b!7613896 (= e!4528112 tp!2222623)))

(declare-fun b!7613895 () Bool)

(declare-fun tp!2222620 () Bool)

(declare-fun tp!2222624 () Bool)

(assert (=> b!7613895 (= e!4528112 (and tp!2222620 tp!2222624))))

(declare-fun b!7613897 () Bool)

(declare-fun tp!2222622 () Bool)

(declare-fun tp!2222621 () Bool)

(assert (=> b!7613897 (= e!4528112 (and tp!2222622 tp!2222621))))

(declare-fun b!7613894 () Bool)

(assert (=> b!7613894 (= e!4528112 tp_is_empty!50823)))

(assert (=> b!7613694 (= tp!2222484 e!4528112)))

(assert (= (and b!7613694 (is-ElementMatch!20234 (regTwo!40980 (regOne!40980 r!19218)))) b!7613894))

(assert (= (and b!7613694 (is-Concat!29079 (regTwo!40980 (regOne!40980 r!19218)))) b!7613895))

(assert (= (and b!7613694 (is-Star!20234 (regTwo!40980 (regOne!40980 r!19218)))) b!7613896))

(assert (= (and b!7613694 (is-Union!20234 (regTwo!40980 (regOne!40980 r!19218)))) b!7613897))

(declare-fun b!7613900 () Bool)

(declare-fun e!4528113 () Bool)

(declare-fun tp!2222628 () Bool)

(assert (=> b!7613900 (= e!4528113 tp!2222628)))

(declare-fun b!7613899 () Bool)

(declare-fun tp!2222625 () Bool)

(declare-fun tp!2222629 () Bool)

(assert (=> b!7613899 (= e!4528113 (and tp!2222625 tp!2222629))))

(declare-fun b!7613901 () Bool)

(declare-fun tp!2222627 () Bool)

(declare-fun tp!2222626 () Bool)

(assert (=> b!7613901 (= e!4528113 (and tp!2222627 tp!2222626))))

(declare-fun b!7613898 () Bool)

(assert (=> b!7613898 (= e!4528113 tp_is_empty!50823)))

(assert (=> b!7613716 (= tp!2222502 e!4528113)))

(assert (= (and b!7613716 (is-ElementMatch!20234 (regOne!40981 (regTwo!40981 r!19218)))) b!7613898))

(assert (= (and b!7613716 (is-Concat!29079 (regOne!40981 (regTwo!40981 r!19218)))) b!7613899))

(assert (= (and b!7613716 (is-Star!20234 (regOne!40981 (regTwo!40981 r!19218)))) b!7613900))

(assert (= (and b!7613716 (is-Union!20234 (regOne!40981 (regTwo!40981 r!19218)))) b!7613901))

(declare-fun b!7613904 () Bool)

(declare-fun e!4528114 () Bool)

(declare-fun tp!2222633 () Bool)

(assert (=> b!7613904 (= e!4528114 tp!2222633)))

(declare-fun b!7613903 () Bool)

(declare-fun tp!2222630 () Bool)

(declare-fun tp!2222634 () Bool)

(assert (=> b!7613903 (= e!4528114 (and tp!2222630 tp!2222634))))

(declare-fun b!7613905 () Bool)

(declare-fun tp!2222632 () Bool)

(declare-fun tp!2222631 () Bool)

(assert (=> b!7613905 (= e!4528114 (and tp!2222632 tp!2222631))))

(declare-fun b!7613902 () Bool)

(assert (=> b!7613902 (= e!4528114 tp_is_empty!50823)))

(assert (=> b!7613716 (= tp!2222501 e!4528114)))

(assert (= (and b!7613716 (is-ElementMatch!20234 (regTwo!40981 (regTwo!40981 r!19218)))) b!7613902))

(assert (= (and b!7613716 (is-Concat!29079 (regTwo!40981 (regTwo!40981 r!19218)))) b!7613903))

(assert (= (and b!7613716 (is-Star!20234 (regTwo!40981 (regTwo!40981 r!19218)))) b!7613904))

(assert (= (and b!7613716 (is-Union!20234 (regTwo!40981 (regTwo!40981 r!19218)))) b!7613905))

(declare-fun b!7613908 () Bool)

(declare-fun e!4528115 () Bool)

(declare-fun tp!2222638 () Bool)

(assert (=> b!7613908 (= e!4528115 tp!2222638)))

(declare-fun b!7613907 () Bool)

(declare-fun tp!2222635 () Bool)

(declare-fun tp!2222639 () Bool)

(assert (=> b!7613907 (= e!4528115 (and tp!2222635 tp!2222639))))

(declare-fun b!7613909 () Bool)

(declare-fun tp!2222637 () Bool)

(declare-fun tp!2222636 () Bool)

(assert (=> b!7613909 (= e!4528115 (and tp!2222637 tp!2222636))))

(declare-fun b!7613906 () Bool)

(assert (=> b!7613906 (= e!4528115 tp_is_empty!50823)))

(assert (=> b!7613699 (= tp!2222488 e!4528115)))

(assert (= (and b!7613699 (is-ElementMatch!20234 (reg!20563 (regTwo!40980 r!19218)))) b!7613906))

(assert (= (and b!7613699 (is-Concat!29079 (reg!20563 (regTwo!40980 r!19218)))) b!7613907))

(assert (= (and b!7613699 (is-Star!20234 (reg!20563 (regTwo!40980 r!19218)))) b!7613908))

(assert (= (and b!7613699 (is-Union!20234 (reg!20563 (regTwo!40980 r!19218)))) b!7613909))

(declare-fun b!7613912 () Bool)

(declare-fun e!4528116 () Bool)

(declare-fun tp!2222643 () Bool)

(assert (=> b!7613912 (= e!4528116 tp!2222643)))

(declare-fun b!7613911 () Bool)

(declare-fun tp!2222640 () Bool)

(declare-fun tp!2222644 () Bool)

(assert (=> b!7613911 (= e!4528116 (and tp!2222640 tp!2222644))))

(declare-fun b!7613913 () Bool)

(declare-fun tp!2222642 () Bool)

(declare-fun tp!2222641 () Bool)

(assert (=> b!7613913 (= e!4528116 (and tp!2222642 tp!2222641))))

(declare-fun b!7613910 () Bool)

(assert (=> b!7613910 (= e!4528116 tp_is_empty!50823)))

(assert (=> b!7613698 (= tp!2222485 e!4528116)))

(assert (= (and b!7613698 (is-ElementMatch!20234 (regOne!40980 (regTwo!40980 r!19218)))) b!7613910))

(assert (= (and b!7613698 (is-Concat!29079 (regOne!40980 (regTwo!40980 r!19218)))) b!7613911))

(assert (= (and b!7613698 (is-Star!20234 (regOne!40980 (regTwo!40980 r!19218)))) b!7613912))

(assert (= (and b!7613698 (is-Union!20234 (regOne!40980 (regTwo!40980 r!19218)))) b!7613913))

(declare-fun b!7613916 () Bool)

(declare-fun e!4528117 () Bool)

(declare-fun tp!2222648 () Bool)

(assert (=> b!7613916 (= e!4528117 tp!2222648)))

(declare-fun b!7613915 () Bool)

(declare-fun tp!2222645 () Bool)

(declare-fun tp!2222649 () Bool)

(assert (=> b!7613915 (= e!4528117 (and tp!2222645 tp!2222649))))

(declare-fun b!7613917 () Bool)

(declare-fun tp!2222647 () Bool)

(declare-fun tp!2222646 () Bool)

(assert (=> b!7613917 (= e!4528117 (and tp!2222647 tp!2222646))))

(declare-fun b!7613914 () Bool)

(assert (=> b!7613914 (= e!4528117 tp_is_empty!50823)))

(assert (=> b!7613698 (= tp!2222489 e!4528117)))

(assert (= (and b!7613698 (is-ElementMatch!20234 (regTwo!40980 (regTwo!40980 r!19218)))) b!7613914))

(assert (= (and b!7613698 (is-Concat!29079 (regTwo!40980 (regTwo!40980 r!19218)))) b!7613915))

(assert (= (and b!7613698 (is-Star!20234 (regTwo!40980 (regTwo!40980 r!19218)))) b!7613916))

(assert (= (and b!7613698 (is-Union!20234 (regTwo!40980 (regTwo!40980 r!19218)))) b!7613917))

(declare-fun b!7613920 () Bool)

(declare-fun e!4528118 () Bool)

(declare-fun tp!2222653 () Bool)

(assert (=> b!7613920 (= e!4528118 tp!2222653)))

(declare-fun b!7613919 () Bool)

(declare-fun tp!2222650 () Bool)

(declare-fun tp!2222654 () Bool)

(assert (=> b!7613919 (= e!4528118 (and tp!2222650 tp!2222654))))

(declare-fun b!7613921 () Bool)

(declare-fun tp!2222652 () Bool)

(declare-fun tp!2222651 () Bool)

(assert (=> b!7613921 (= e!4528118 (and tp!2222652 tp!2222651))))

(declare-fun b!7613918 () Bool)

(assert (=> b!7613918 (= e!4528118 tp_is_empty!50823)))

(assert (=> b!7613714 (= tp!2222503 e!4528118)))

(assert (= (and b!7613714 (is-ElementMatch!20234 (reg!20563 (regTwo!40981 r!19218)))) b!7613918))

(assert (= (and b!7613714 (is-Concat!29079 (reg!20563 (regTwo!40981 r!19218)))) b!7613919))

(assert (= (and b!7613714 (is-Star!20234 (reg!20563 (regTwo!40981 r!19218)))) b!7613920))

(assert (= (and b!7613714 (is-Union!20234 (reg!20563 (regTwo!40981 r!19218)))) b!7613921))

(declare-fun b!7613924 () Bool)

(declare-fun e!4528119 () Bool)

(declare-fun tp!2222658 () Bool)

(assert (=> b!7613924 (= e!4528119 tp!2222658)))

(declare-fun b!7613923 () Bool)

(declare-fun tp!2222655 () Bool)

(declare-fun tp!2222659 () Bool)

(assert (=> b!7613923 (= e!4528119 (and tp!2222655 tp!2222659))))

(declare-fun b!7613925 () Bool)

(declare-fun tp!2222657 () Bool)

(declare-fun tp!2222656 () Bool)

(assert (=> b!7613925 (= e!4528119 (and tp!2222657 tp!2222656))))

(declare-fun b!7613922 () Bool)

(assert (=> b!7613922 (= e!4528119 tp_is_empty!50823)))

(assert (=> b!7613712 (= tp!2222500 e!4528119)))

(assert (= (and b!7613712 (is-ElementMatch!20234 (regOne!40980 (regTwo!40981 r!19218)))) b!7613922))

(assert (= (and b!7613712 (is-Concat!29079 (regOne!40980 (regTwo!40981 r!19218)))) b!7613923))

(assert (= (and b!7613712 (is-Star!20234 (regOne!40980 (regTwo!40981 r!19218)))) b!7613924))

(assert (= (and b!7613712 (is-Union!20234 (regOne!40980 (regTwo!40981 r!19218)))) b!7613925))

(declare-fun b!7613928 () Bool)

(declare-fun e!4528120 () Bool)

(declare-fun tp!2222663 () Bool)

(assert (=> b!7613928 (= e!4528120 tp!2222663)))

(declare-fun b!7613927 () Bool)

(declare-fun tp!2222660 () Bool)

(declare-fun tp!2222664 () Bool)

(assert (=> b!7613927 (= e!4528120 (and tp!2222660 tp!2222664))))

(declare-fun b!7613929 () Bool)

(declare-fun tp!2222662 () Bool)

(declare-fun tp!2222661 () Bool)

(assert (=> b!7613929 (= e!4528120 (and tp!2222662 tp!2222661))))

(declare-fun b!7613926 () Bool)

(assert (=> b!7613926 (= e!4528120 tp_is_empty!50823)))

(assert (=> b!7613712 (= tp!2222504 e!4528120)))

(assert (= (and b!7613712 (is-ElementMatch!20234 (regTwo!40980 (regTwo!40981 r!19218)))) b!7613926))

(assert (= (and b!7613712 (is-Concat!29079 (regTwo!40980 (regTwo!40981 r!19218)))) b!7613927))

(assert (= (and b!7613712 (is-Star!20234 (regTwo!40980 (regTwo!40981 r!19218)))) b!7613928))

(assert (= (and b!7613712 (is-Union!20234 (regTwo!40980 (regTwo!40981 r!19218)))) b!7613929))

(push 1)

(assert (not b!7613833))

(assert (not b!7613877))

(assert (not b!7613855))

(assert (not b!7613909))

(assert (not b!7613917))

(assert (not b!7613859))

(assert (not b!7613880))

(assert (not b!7613905))

(assert (not b!7613849))

(assert (not b!7613876))

(assert (not b!7613875))

(assert (not b!7613901))

(assert (not b!7613881))

(assert (not b!7613840))

(assert (not b!7613836))

(assert (not b!7613831))

(assert (not b!7613919))

(assert (not b!7613911))

(assert (not bm!699485))

(assert (not bm!699478))

(assert (not bm!699487))

(assert (not b!7613915))

(assert (not b!7613841))

(assert (not b!7613873))

(assert (not b!7613837))

(assert (not b!7613920))

(assert (not b!7613798))

(assert (not b!7613851))

(assert (not bm!699474))

(assert (not d!2322615))

(assert (not b!7613893))

(assert (not b!7613925))

(assert (not bm!699476))

(assert (not b!7613839))

(assert (not b!7613835))

(assert (not b!7613879))

(assert (not b!7613883))

(assert (not b!7613861))

(assert (not b!7613895))

(assert (not b!7613871))

(assert (not b!7613891))

(assert (not b!7613872))

(assert (not b!7613929))

(assert (not b!7613884))

(assert (not b!7613900))

(assert (not b!7613888))

(assert (not b!7613885))

(assert (not d!2322613))

(assert (not b!7613843))

(assert (not b!7613896))

(assert tp_is_empty!50823)

(assert (not b!7613853))

(assert (not b!7613916))

(assert (not b!7613897))

(assert (not b!7613847))

(assert (not b!7613863))

(assert (not b!7613868))

(assert (not b!7613927))

(assert (not b!7613908))

(assert (not b!7613892))

(assert (not b!7613903))

(assert (not bm!699475))

(assert (not b!7613921))

(assert (not b!7613865))

(assert (not b!7613828))

(assert (not b!7613928))

(assert (not b!7613864))

(assert (not b!7613869))

(assert (not bm!699483))

(assert (not b!7613844))

(assert (not b!7613848))

(assert (not b!7613889))

(assert (not b!7613923))

(assert (not b!7613924))

(assert (not bm!699484))

(assert (not b!7613913))

(assert (not b!7613852))

(assert (not b!7613857))

(assert (not b!7613832))

(assert (not b!7613899))

(assert (not b!7613912))

(assert (not b!7613856))

(assert (not b!7613887))

(assert (not b!7613907))

(assert (not b!7613860))

(assert (not b!7613867))

(assert (not b!7613904))

(assert (not b!7613845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

