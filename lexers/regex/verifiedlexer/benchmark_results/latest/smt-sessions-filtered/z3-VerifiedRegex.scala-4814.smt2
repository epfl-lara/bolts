; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247464 () Bool)

(assert start!247464)

(declare-fun b!2551935 () Bool)

(declare-fun e!1612507 () Bool)

(declare-fun tp_is_empty!13061 () Bool)

(declare-fun tp!814099 () Bool)

(assert (=> b!2551935 (= e!1612507 (and tp_is_empty!13061 tp!814099))))

(declare-fun b!2551936 () Bool)

(declare-fun e!1612510 () Bool)

(declare-fun tp!814101 () Bool)

(assert (=> b!2551936 (= e!1612510 tp!814101)))

(declare-fun b!2551937 () Bool)

(declare-fun e!1612509 () Bool)

(declare-fun e!1612506 () Bool)

(assert (=> b!2551937 (= e!1612509 (not e!1612506))))

(declare-fun res!1074853 () Bool)

(assert (=> b!2551937 (=> res!1074853 e!1612506)))

(declare-fun lt!903505 () Bool)

(assert (=> b!2551937 (= res!1074853 (not lt!903505))))

(declare-fun e!1612508 () Bool)

(assert (=> b!2551937 e!1612508))

(declare-fun res!1074854 () Bool)

(assert (=> b!2551937 (=> res!1074854 e!1612508)))

(assert (=> b!2551937 (= res!1074854 lt!903505)))

(declare-datatypes ((C!15364 0))(
  ( (C!15365 (val!9334 Int)) )
))
(declare-datatypes ((Regex!7603 0))(
  ( (ElementMatch!7603 (c!409201 C!15364)) (Concat!12299 (regOne!15718 Regex!7603) (regTwo!15718 Regex!7603)) (EmptyExpr!7603) (Star!7603 (reg!7932 Regex!7603)) (EmptyLang!7603) (Union!7603 (regOne!15719 Regex!7603) (regTwo!15719 Regex!7603)) )
))
(declare-fun lt!903510 () Regex!7603)

(declare-datatypes ((List!29668 0))(
  ( (Nil!29568) (Cons!29568 (h!34988 C!15364) (t!211367 List!29668)) )
))
(declare-fun tl!4068 () List!29668)

(declare-fun matchR!3548 (Regex!7603 List!29668) Bool)

(assert (=> b!2551937 (= lt!903505 (matchR!3548 lt!903510 tl!4068))))

(declare-fun lt!903506 () Regex!7603)

(declare-datatypes ((Unit!43391 0))(
  ( (Unit!43392) )
))
(declare-fun lt!903509 () Unit!43391)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!198 (Regex!7603 Regex!7603 List!29668) Unit!43391)

(assert (=> b!2551937 (= lt!903509 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!198 lt!903510 lt!903506 tl!4068))))

(declare-fun lt!903504 () Regex!7603)

(declare-fun derivative!298 (Regex!7603 List!29668) Regex!7603)

(assert (=> b!2551937 (= (matchR!3548 lt!903504 tl!4068) (matchR!3548 (derivative!298 lt!903504 tl!4068) Nil!29568))))

(declare-fun lt!903508 () Unit!43391)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!194 (Regex!7603 List!29668) Unit!43391)

(assert (=> b!2551937 (= lt!903508 (lemmaMatchRIsSameAsWholeDerivativeAndNil!194 lt!903504 tl!4068))))

(assert (=> b!2551937 (= lt!903504 (Union!7603 lt!903510 lt!903506))))

(declare-fun r!27340 () Regex!7603)

(declare-fun c!14016 () C!15364)

(declare-fun derivativeStep!2172 (Regex!7603 C!15364) Regex!7603)

(assert (=> b!2551937 (= lt!903506 (derivativeStep!2172 (regTwo!15718 r!27340) c!14016))))

(declare-fun lt!903507 () Regex!7603)

(assert (=> b!2551937 (= lt!903510 (Concat!12299 lt!903507 (regTwo!15718 r!27340)))))

(assert (=> b!2551937 (= lt!903507 (derivativeStep!2172 (regOne!15718 r!27340) c!14016))))

(declare-fun b!2551938 () Bool)

(assert (=> b!2551938 (= e!1612508 (matchR!3548 lt!903506 tl!4068))))

(declare-fun b!2551939 () Bool)

(declare-fun res!1074849 () Bool)

(assert (=> b!2551939 (=> (not res!1074849) (not e!1612509))))

(declare-fun nullable!2520 (Regex!7603) Bool)

(assert (=> b!2551939 (= res!1074849 (nullable!2520 (regOne!15718 r!27340)))))

(declare-fun b!2551941 () Bool)

(declare-fun res!1074852 () Bool)

(assert (=> b!2551941 (=> (not res!1074852) (not e!1612509))))

(get-info :version)

(assert (=> b!2551941 (= res!1074852 (and (not ((_ is EmptyExpr!7603) r!27340)) (not ((_ is EmptyLang!7603) r!27340)) (not ((_ is ElementMatch!7603) r!27340)) (not ((_ is Union!7603) r!27340)) (not ((_ is Star!7603) r!27340))))))

(declare-fun b!2551942 () Bool)

(declare-fun validRegex!3229 (Regex!7603) Bool)

(assert (=> b!2551942 (= e!1612506 (validRegex!3229 (regTwo!15718 r!27340)))))

(declare-fun b!2551943 () Bool)

(declare-fun tp!814097 () Bool)

(declare-fun tp!814102 () Bool)

(assert (=> b!2551943 (= e!1612510 (and tp!814097 tp!814102))))

(declare-fun b!2551944 () Bool)

(declare-fun tp!814100 () Bool)

(declare-fun tp!814098 () Bool)

(assert (=> b!2551944 (= e!1612510 (and tp!814100 tp!814098))))

(declare-fun b!2551945 () Bool)

(declare-fun res!1074850 () Bool)

(assert (=> b!2551945 (=> res!1074850 e!1612506)))

(assert (=> b!2551945 (= res!1074850 (not (validRegex!3229 lt!903507)))))

(declare-fun b!2551946 () Bool)

(declare-fun res!1074848 () Bool)

(assert (=> b!2551946 (=> (not res!1074848) (not e!1612509))))

(assert (=> b!2551946 (= res!1074848 (nullable!2520 (derivative!298 (derivativeStep!2172 r!27340 c!14016) tl!4068)))))

(declare-fun b!2551940 () Bool)

(assert (=> b!2551940 (= e!1612510 tp_is_empty!13061)))

(declare-fun res!1074851 () Bool)

(assert (=> start!247464 (=> (not res!1074851) (not e!1612509))))

(assert (=> start!247464 (= res!1074851 (validRegex!3229 r!27340))))

(assert (=> start!247464 e!1612509))

(assert (=> start!247464 e!1612510))

(assert (=> start!247464 tp_is_empty!13061))

(assert (=> start!247464 e!1612507))

(assert (= (and start!247464 res!1074851) b!2551946))

(assert (= (and b!2551946 res!1074848) b!2551941))

(assert (= (and b!2551941 res!1074852) b!2551939))

(assert (= (and b!2551939 res!1074849) b!2551937))

(assert (= (and b!2551937 (not res!1074854)) b!2551938))

(assert (= (and b!2551937 (not res!1074853)) b!2551945))

(assert (= (and b!2551945 (not res!1074850)) b!2551942))

(assert (= (and start!247464 ((_ is ElementMatch!7603) r!27340)) b!2551940))

(assert (= (and start!247464 ((_ is Concat!12299) r!27340)) b!2551943))

(assert (= (and start!247464 ((_ is Star!7603) r!27340)) b!2551936))

(assert (= (and start!247464 ((_ is Union!7603) r!27340)) b!2551944))

(assert (= (and start!247464 ((_ is Cons!29568) tl!4068)) b!2551935))

(declare-fun m!2894701 () Bool)

(assert (=> b!2551937 m!2894701))

(declare-fun m!2894703 () Bool)

(assert (=> b!2551937 m!2894703))

(assert (=> b!2551937 m!2894701))

(declare-fun m!2894705 () Bool)

(assert (=> b!2551937 m!2894705))

(declare-fun m!2894707 () Bool)

(assert (=> b!2551937 m!2894707))

(declare-fun m!2894709 () Bool)

(assert (=> b!2551937 m!2894709))

(declare-fun m!2894711 () Bool)

(assert (=> b!2551937 m!2894711))

(declare-fun m!2894713 () Bool)

(assert (=> b!2551937 m!2894713))

(declare-fun m!2894715 () Bool)

(assert (=> b!2551937 m!2894715))

(declare-fun m!2894717 () Bool)

(assert (=> b!2551942 m!2894717))

(declare-fun m!2894719 () Bool)

(assert (=> b!2551946 m!2894719))

(assert (=> b!2551946 m!2894719))

(declare-fun m!2894721 () Bool)

(assert (=> b!2551946 m!2894721))

(assert (=> b!2551946 m!2894721))

(declare-fun m!2894723 () Bool)

(assert (=> b!2551946 m!2894723))

(declare-fun m!2894725 () Bool)

(assert (=> b!2551945 m!2894725))

(declare-fun m!2894727 () Bool)

(assert (=> b!2551938 m!2894727))

(declare-fun m!2894729 () Bool)

(assert (=> start!247464 m!2894729))

(declare-fun m!2894731 () Bool)

(assert (=> b!2551939 m!2894731))

(check-sat (not b!2551936) (not b!2551945) (not b!2551946) (not b!2551938) (not b!2551944) (not b!2551942) (not start!247464) (not b!2551937) (not b!2551943) (not b!2551939) (not b!2551935) tp_is_empty!13061)
(check-sat)
(get-model)

(declare-fun d!723481 () Bool)

(declare-fun nullableFct!744 (Regex!7603) Bool)

(assert (=> d!723481 (= (nullable!2520 (derivative!298 (derivativeStep!2172 r!27340 c!14016) tl!4068)) (nullableFct!744 (derivative!298 (derivativeStep!2172 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469634 () Bool)

(assert (= bs!469634 d!723481))

(assert (=> bs!469634 m!2894721))

(declare-fun m!2894733 () Bool)

(assert (=> bs!469634 m!2894733))

(assert (=> b!2551946 d!723481))

(declare-fun d!723483 () Bool)

(declare-fun lt!903513 () Regex!7603)

(assert (=> d!723483 (validRegex!3229 lt!903513)))

(declare-fun e!1612534 () Regex!7603)

(assert (=> d!723483 (= lt!903513 e!1612534)))

(declare-fun c!409210 () Bool)

(assert (=> d!723483 (= c!409210 ((_ is Cons!29568) tl!4068))))

(assert (=> d!723483 (validRegex!3229 (derivativeStep!2172 r!27340 c!14016))))

(assert (=> d!723483 (= (derivative!298 (derivativeStep!2172 r!27340 c!14016) tl!4068) lt!903513)))

(declare-fun b!2551978 () Bool)

(assert (=> b!2551978 (= e!1612534 (derivative!298 (derivativeStep!2172 (derivativeStep!2172 r!27340 c!14016) (h!34988 tl!4068)) (t!211367 tl!4068)))))

(declare-fun b!2551979 () Bool)

(assert (=> b!2551979 (= e!1612534 (derivativeStep!2172 r!27340 c!14016))))

(assert (= (and d!723483 c!409210) b!2551978))

(assert (= (and d!723483 (not c!409210)) b!2551979))

(declare-fun m!2894741 () Bool)

(assert (=> d!723483 m!2894741))

(assert (=> d!723483 m!2894719))

(declare-fun m!2894743 () Bool)

(assert (=> d!723483 m!2894743))

(assert (=> b!2551978 m!2894719))

(declare-fun m!2894745 () Bool)

(assert (=> b!2551978 m!2894745))

(assert (=> b!2551978 m!2894745))

(declare-fun m!2894747 () Bool)

(assert (=> b!2551978 m!2894747))

(assert (=> b!2551946 d!723483))

(declare-fun d!723487 () Bool)

(declare-fun lt!903519 () Regex!7603)

(assert (=> d!723487 (validRegex!3229 lt!903519)))

(declare-fun e!1612567 () Regex!7603)

(assert (=> d!723487 (= lt!903519 e!1612567)))

(declare-fun c!409232 () Bool)

(assert (=> d!723487 (= c!409232 (or ((_ is EmptyExpr!7603) r!27340) ((_ is EmptyLang!7603) r!27340)))))

(assert (=> d!723487 (validRegex!3229 r!27340)))

(assert (=> d!723487 (= (derivativeStep!2172 r!27340 c!14016) lt!903519)))

(declare-fun c!409234 () Bool)

(declare-fun bm!162537 () Bool)

(declare-fun call!162543 () Regex!7603)

(assert (=> bm!162537 (= call!162543 (derivativeStep!2172 (ite c!409234 (regOne!15719 r!27340) (regTwo!15718 r!27340)) c!14016))))

(declare-fun bm!162538 () Bool)

(declare-fun c!409231 () Bool)

(declare-fun call!162542 () Regex!7603)

(assert (=> bm!162538 (= call!162542 (derivativeStep!2172 (ite c!409234 (regTwo!15719 r!27340) (ite c!409231 (reg!7932 r!27340) (regOne!15718 r!27340))) c!14016))))

(declare-fun bm!162539 () Bool)

(declare-fun call!162545 () Regex!7603)

(declare-fun call!162544 () Regex!7603)

(assert (=> bm!162539 (= call!162545 call!162544)))

(declare-fun b!2552042 () Bool)

(declare-fun c!409233 () Bool)

(assert (=> b!2552042 (= c!409233 (nullable!2520 (regOne!15718 r!27340)))))

(declare-fun e!1612569 () Regex!7603)

(declare-fun e!1612570 () Regex!7603)

(assert (=> b!2552042 (= e!1612569 e!1612570)))

(declare-fun b!2552043 () Bool)

(assert (=> b!2552043 (= e!1612567 EmptyLang!7603)))

(declare-fun b!2552044 () Bool)

(assert (=> b!2552044 (= e!1612570 (Union!7603 (Concat!12299 call!162545 (regTwo!15718 r!27340)) call!162543))))

(declare-fun b!2552045 () Bool)

(assert (=> b!2552045 (= c!409234 ((_ is Union!7603) r!27340))))

(declare-fun e!1612566 () Regex!7603)

(declare-fun e!1612568 () Regex!7603)

(assert (=> b!2552045 (= e!1612566 e!1612568)))

(declare-fun b!2552046 () Bool)

(assert (=> b!2552046 (= e!1612570 (Union!7603 (Concat!12299 call!162545 (regTwo!15718 r!27340)) EmptyLang!7603))))

(declare-fun b!2552047 () Bool)

(assert (=> b!2552047 (= e!1612568 (Union!7603 call!162543 call!162542))))

(declare-fun b!2552048 () Bool)

(assert (=> b!2552048 (= e!1612569 (Concat!12299 call!162544 r!27340))))

(declare-fun b!2552049 () Bool)

(assert (=> b!2552049 (= e!1612567 e!1612566)))

(declare-fun c!409230 () Bool)

(assert (=> b!2552049 (= c!409230 ((_ is ElementMatch!7603) r!27340))))

(declare-fun bm!162540 () Bool)

(assert (=> bm!162540 (= call!162544 call!162542)))

(declare-fun b!2552050 () Bool)

(assert (=> b!2552050 (= e!1612568 e!1612569)))

(assert (=> b!2552050 (= c!409231 ((_ is Star!7603) r!27340))))

(declare-fun b!2552051 () Bool)

(assert (=> b!2552051 (= e!1612566 (ite (= c!14016 (c!409201 r!27340)) EmptyExpr!7603 EmptyLang!7603))))

(assert (= (and d!723487 c!409232) b!2552043))

(assert (= (and d!723487 (not c!409232)) b!2552049))

(assert (= (and b!2552049 c!409230) b!2552051))

(assert (= (and b!2552049 (not c!409230)) b!2552045))

(assert (= (and b!2552045 c!409234) b!2552047))

(assert (= (and b!2552045 (not c!409234)) b!2552050))

(assert (= (and b!2552050 c!409231) b!2552048))

(assert (= (and b!2552050 (not c!409231)) b!2552042))

(assert (= (and b!2552042 c!409233) b!2552044))

(assert (= (and b!2552042 (not c!409233)) b!2552046))

(assert (= (or b!2552044 b!2552046) bm!162539))

(assert (= (or b!2552048 bm!162539) bm!162540))

(assert (= (or b!2552047 bm!162540) bm!162538))

(assert (= (or b!2552047 b!2552044) bm!162537))

(declare-fun m!2894765 () Bool)

(assert (=> d!723487 m!2894765))

(assert (=> d!723487 m!2894729))

(declare-fun m!2894767 () Bool)

(assert (=> bm!162537 m!2894767))

(declare-fun m!2894769 () Bool)

(assert (=> bm!162538 m!2894769))

(assert (=> b!2552042 m!2894731))

(assert (=> b!2551946 d!723487))

(declare-fun bm!162548 () Bool)

(declare-fun call!162553 () Bool)

(declare-fun call!162555 () Bool)

(assert (=> bm!162548 (= call!162553 call!162555)))

(declare-fun b!2552088 () Bool)

(declare-fun res!1074914 () Bool)

(declare-fun e!1612595 () Bool)

(assert (=> b!2552088 (=> res!1074914 e!1612595)))

(assert (=> b!2552088 (= res!1074914 (not ((_ is Concat!12299) lt!903507)))))

(declare-fun e!1612594 () Bool)

(assert (=> b!2552088 (= e!1612594 e!1612595)))

(declare-fun bm!162549 () Bool)

(declare-fun c!409245 () Bool)

(declare-fun c!409244 () Bool)

(assert (=> bm!162549 (= call!162555 (validRegex!3229 (ite c!409244 (reg!7932 lt!903507) (ite c!409245 (regTwo!15719 lt!903507) (regOne!15718 lt!903507)))))))

(declare-fun b!2552089 () Bool)

(declare-fun e!1612596 () Bool)

(assert (=> b!2552089 (= e!1612596 e!1612594)))

(assert (=> b!2552089 (= c!409245 ((_ is Union!7603) lt!903507))))

(declare-fun b!2552090 () Bool)

(declare-fun res!1074915 () Bool)

(declare-fun e!1612598 () Bool)

(assert (=> b!2552090 (=> (not res!1074915) (not e!1612598))))

(declare-fun call!162554 () Bool)

(assert (=> b!2552090 (= res!1074915 call!162554)))

(assert (=> b!2552090 (= e!1612594 e!1612598)))

(declare-fun b!2552091 () Bool)

(declare-fun e!1612600 () Bool)

(assert (=> b!2552091 (= e!1612600 call!162554)))

(declare-fun b!2552092 () Bool)

(declare-fun e!1612597 () Bool)

(assert (=> b!2552092 (= e!1612596 e!1612597)))

(declare-fun res!1074913 () Bool)

(assert (=> b!2552092 (= res!1074913 (not (nullable!2520 (reg!7932 lt!903507))))))

(assert (=> b!2552092 (=> (not res!1074913) (not e!1612597))))

(declare-fun b!2552093 () Bool)

(assert (=> b!2552093 (= e!1612595 e!1612600)))

(declare-fun res!1074912 () Bool)

(assert (=> b!2552093 (=> (not res!1074912) (not e!1612600))))

(assert (=> b!2552093 (= res!1074912 call!162553)))

(declare-fun b!2552094 () Bool)

(declare-fun e!1612599 () Bool)

(assert (=> b!2552094 (= e!1612599 e!1612596)))

(assert (=> b!2552094 (= c!409244 ((_ is Star!7603) lt!903507))))

(declare-fun d!723491 () Bool)

(declare-fun res!1074916 () Bool)

(assert (=> d!723491 (=> res!1074916 e!1612599)))

(assert (=> d!723491 (= res!1074916 ((_ is ElementMatch!7603) lt!903507))))

(assert (=> d!723491 (= (validRegex!3229 lt!903507) e!1612599)))

(declare-fun bm!162550 () Bool)

(assert (=> bm!162550 (= call!162554 (validRegex!3229 (ite c!409245 (regOne!15719 lt!903507) (regTwo!15718 lt!903507))))))

(declare-fun b!2552095 () Bool)

(assert (=> b!2552095 (= e!1612598 call!162553)))

(declare-fun b!2552096 () Bool)

(assert (=> b!2552096 (= e!1612597 call!162555)))

(assert (= (and d!723491 (not res!1074916)) b!2552094))

(assert (= (and b!2552094 c!409244) b!2552092))

(assert (= (and b!2552094 (not c!409244)) b!2552089))

(assert (= (and b!2552092 res!1074913) b!2552096))

(assert (= (and b!2552089 c!409245) b!2552090))

(assert (= (and b!2552089 (not c!409245)) b!2552088))

(assert (= (and b!2552090 res!1074915) b!2552095))

(assert (= (and b!2552088 (not res!1074914)) b!2552093))

(assert (= (and b!2552093 res!1074912) b!2552091))

(assert (= (or b!2552090 b!2552091) bm!162550))

(assert (= (or b!2552095 b!2552093) bm!162548))

(assert (= (or b!2552096 bm!162548) bm!162549))

(declare-fun m!2894791 () Bool)

(assert (=> bm!162549 m!2894791))

(declare-fun m!2894793 () Bool)

(assert (=> b!2552092 m!2894793))

(declare-fun m!2894795 () Bool)

(assert (=> bm!162550 m!2894795))

(assert (=> b!2551945 d!723491))

(declare-fun bm!162551 () Bool)

(declare-fun call!162556 () Bool)

(declare-fun call!162558 () Bool)

(assert (=> bm!162551 (= call!162556 call!162558)))

(declare-fun b!2552097 () Bool)

(declare-fun res!1074919 () Bool)

(declare-fun e!1612602 () Bool)

(assert (=> b!2552097 (=> res!1074919 e!1612602)))

(assert (=> b!2552097 (= res!1074919 (not ((_ is Concat!12299) r!27340)))))

(declare-fun e!1612601 () Bool)

(assert (=> b!2552097 (= e!1612601 e!1612602)))

(declare-fun c!409247 () Bool)

(declare-fun bm!162552 () Bool)

(declare-fun c!409246 () Bool)

(assert (=> bm!162552 (= call!162558 (validRegex!3229 (ite c!409246 (reg!7932 r!27340) (ite c!409247 (regTwo!15719 r!27340) (regOne!15718 r!27340)))))))

(declare-fun b!2552098 () Bool)

(declare-fun e!1612603 () Bool)

(assert (=> b!2552098 (= e!1612603 e!1612601)))

(assert (=> b!2552098 (= c!409247 ((_ is Union!7603) r!27340))))

(declare-fun b!2552099 () Bool)

(declare-fun res!1074920 () Bool)

(declare-fun e!1612605 () Bool)

(assert (=> b!2552099 (=> (not res!1074920) (not e!1612605))))

(declare-fun call!162557 () Bool)

(assert (=> b!2552099 (= res!1074920 call!162557)))

(assert (=> b!2552099 (= e!1612601 e!1612605)))

(declare-fun b!2552100 () Bool)

(declare-fun e!1612607 () Bool)

(assert (=> b!2552100 (= e!1612607 call!162557)))

(declare-fun b!2552101 () Bool)

(declare-fun e!1612604 () Bool)

(assert (=> b!2552101 (= e!1612603 e!1612604)))

(declare-fun res!1074918 () Bool)

(assert (=> b!2552101 (= res!1074918 (not (nullable!2520 (reg!7932 r!27340))))))

(assert (=> b!2552101 (=> (not res!1074918) (not e!1612604))))

(declare-fun b!2552102 () Bool)

(assert (=> b!2552102 (= e!1612602 e!1612607)))

(declare-fun res!1074917 () Bool)

(assert (=> b!2552102 (=> (not res!1074917) (not e!1612607))))

(assert (=> b!2552102 (= res!1074917 call!162556)))

(declare-fun b!2552103 () Bool)

(declare-fun e!1612606 () Bool)

(assert (=> b!2552103 (= e!1612606 e!1612603)))

(assert (=> b!2552103 (= c!409246 ((_ is Star!7603) r!27340))))

(declare-fun d!723497 () Bool)

(declare-fun res!1074921 () Bool)

(assert (=> d!723497 (=> res!1074921 e!1612606)))

(assert (=> d!723497 (= res!1074921 ((_ is ElementMatch!7603) r!27340))))

(assert (=> d!723497 (= (validRegex!3229 r!27340) e!1612606)))

(declare-fun bm!162553 () Bool)

(assert (=> bm!162553 (= call!162557 (validRegex!3229 (ite c!409247 (regOne!15719 r!27340) (regTwo!15718 r!27340))))))

(declare-fun b!2552104 () Bool)

(assert (=> b!2552104 (= e!1612605 call!162556)))

(declare-fun b!2552105 () Bool)

(assert (=> b!2552105 (= e!1612604 call!162558)))

(assert (= (and d!723497 (not res!1074921)) b!2552103))

(assert (= (and b!2552103 c!409246) b!2552101))

(assert (= (and b!2552103 (not c!409246)) b!2552098))

(assert (= (and b!2552101 res!1074918) b!2552105))

(assert (= (and b!2552098 c!409247) b!2552099))

(assert (= (and b!2552098 (not c!409247)) b!2552097))

(assert (= (and b!2552099 res!1074920) b!2552104))

(assert (= (and b!2552097 (not res!1074919)) b!2552102))

(assert (= (and b!2552102 res!1074917) b!2552100))

(assert (= (or b!2552099 b!2552100) bm!162553))

(assert (= (or b!2552104 b!2552102) bm!162551))

(assert (= (or b!2552105 bm!162551) bm!162552))

(declare-fun m!2894803 () Bool)

(assert (=> bm!162552 m!2894803))

(declare-fun m!2894805 () Bool)

(assert (=> b!2552101 m!2894805))

(declare-fun m!2894807 () Bool)

(assert (=> bm!162553 m!2894807))

(assert (=> start!247464 d!723497))

(declare-fun d!723501 () Bool)

(declare-fun e!1612656 () Bool)

(assert (=> d!723501 e!1612656))

(declare-fun c!409277 () Bool)

(assert (=> d!723501 (= c!409277 ((_ is EmptyExpr!7603) lt!903506))))

(declare-fun lt!903534 () Bool)

(declare-fun e!1612658 () Bool)

(assert (=> d!723501 (= lt!903534 e!1612658)))

(declare-fun c!409276 () Bool)

(declare-fun isEmpty!17016 (List!29668) Bool)

(assert (=> d!723501 (= c!409276 (isEmpty!17016 tl!4068))))

(assert (=> d!723501 (validRegex!3229 lt!903506)))

(assert (=> d!723501 (= (matchR!3548 lt!903506 tl!4068) lt!903534)))

(declare-fun b!2552194 () Bool)

(declare-fun e!1612654 () Bool)

(assert (=> b!2552194 (= e!1612656 e!1612654)))

(declare-fun c!409278 () Bool)

(assert (=> b!2552194 (= c!409278 ((_ is EmptyLang!7603) lt!903506))))

(declare-fun b!2552195 () Bool)

(declare-fun e!1612653 () Bool)

(declare-fun head!5810 (List!29668) C!15364)

(assert (=> b!2552195 (= e!1612653 (= (head!5810 tl!4068) (c!409201 lt!903506)))))

(declare-fun b!2552196 () Bool)

(assert (=> b!2552196 (= e!1612654 (not lt!903534))))

(declare-fun b!2552197 () Bool)

(declare-fun res!1074959 () Bool)

(assert (=> b!2552197 (=> (not res!1074959) (not e!1612653))))

(declare-fun tail!4085 (List!29668) List!29668)

(assert (=> b!2552197 (= res!1074959 (isEmpty!17016 (tail!4085 tl!4068)))))

(declare-fun bm!162570 () Bool)

(declare-fun call!162575 () Bool)

(assert (=> bm!162570 (= call!162575 (isEmpty!17016 tl!4068))))

(declare-fun b!2552198 () Bool)

(assert (=> b!2552198 (= e!1612658 (nullable!2520 lt!903506))))

(declare-fun b!2552199 () Bool)

(declare-fun res!1074958 () Bool)

(declare-fun e!1612655 () Bool)

(assert (=> b!2552199 (=> res!1074958 e!1612655)))

(assert (=> b!2552199 (= res!1074958 (not ((_ is ElementMatch!7603) lt!903506)))))

(assert (=> b!2552199 (= e!1612654 e!1612655)))

(declare-fun b!2552200 () Bool)

(declare-fun e!1612657 () Bool)

(assert (=> b!2552200 (= e!1612657 (not (= (head!5810 tl!4068) (c!409201 lt!903506))))))

(declare-fun b!2552201 () Bool)

(assert (=> b!2552201 (= e!1612658 (matchR!3548 (derivativeStep!2172 lt!903506 (head!5810 tl!4068)) (tail!4085 tl!4068)))))

(declare-fun b!2552202 () Bool)

(declare-fun res!1074957 () Bool)

(assert (=> b!2552202 (=> res!1074957 e!1612655)))

(assert (=> b!2552202 (= res!1074957 e!1612653)))

(declare-fun res!1074960 () Bool)

(assert (=> b!2552202 (=> (not res!1074960) (not e!1612653))))

(assert (=> b!2552202 (= res!1074960 lt!903534)))

(declare-fun b!2552203 () Bool)

(declare-fun e!1612652 () Bool)

(assert (=> b!2552203 (= e!1612655 e!1612652)))

(declare-fun res!1074956 () Bool)

(assert (=> b!2552203 (=> (not res!1074956) (not e!1612652))))

(assert (=> b!2552203 (= res!1074956 (not lt!903534))))

(declare-fun b!2552204 () Bool)

(assert (=> b!2552204 (= e!1612656 (= lt!903534 call!162575))))

(declare-fun b!2552205 () Bool)

(declare-fun res!1074961 () Bool)

(assert (=> b!2552205 (=> res!1074961 e!1612657)))

(assert (=> b!2552205 (= res!1074961 (not (isEmpty!17016 (tail!4085 tl!4068))))))

(declare-fun b!2552206 () Bool)

(assert (=> b!2552206 (= e!1612652 e!1612657)))

(declare-fun res!1074955 () Bool)

(assert (=> b!2552206 (=> res!1074955 e!1612657)))

(assert (=> b!2552206 (= res!1074955 call!162575)))

(declare-fun b!2552207 () Bool)

(declare-fun res!1074954 () Bool)

(assert (=> b!2552207 (=> (not res!1074954) (not e!1612653))))

(assert (=> b!2552207 (= res!1074954 (not call!162575))))

(assert (= (and d!723501 c!409276) b!2552198))

(assert (= (and d!723501 (not c!409276)) b!2552201))

(assert (= (and d!723501 c!409277) b!2552204))

(assert (= (and d!723501 (not c!409277)) b!2552194))

(assert (= (and b!2552194 c!409278) b!2552196))

(assert (= (and b!2552194 (not c!409278)) b!2552199))

(assert (= (and b!2552199 (not res!1074958)) b!2552202))

(assert (= (and b!2552202 res!1074960) b!2552207))

(assert (= (and b!2552207 res!1074954) b!2552197))

(assert (= (and b!2552197 res!1074959) b!2552195))

(assert (= (and b!2552202 (not res!1074957)) b!2552203))

(assert (= (and b!2552203 res!1074956) b!2552206))

(assert (= (and b!2552206 (not res!1074955)) b!2552205))

(assert (= (and b!2552205 (not res!1074961)) b!2552200))

(assert (= (or b!2552204 b!2552206 b!2552207) bm!162570))

(declare-fun m!2894831 () Bool)

(assert (=> b!2552201 m!2894831))

(assert (=> b!2552201 m!2894831))

(declare-fun m!2894833 () Bool)

(assert (=> b!2552201 m!2894833))

(declare-fun m!2894835 () Bool)

(assert (=> b!2552201 m!2894835))

(assert (=> b!2552201 m!2894833))

(assert (=> b!2552201 m!2894835))

(declare-fun m!2894837 () Bool)

(assert (=> b!2552201 m!2894837))

(declare-fun m!2894839 () Bool)

(assert (=> d!723501 m!2894839))

(declare-fun m!2894841 () Bool)

(assert (=> d!723501 m!2894841))

(assert (=> b!2552200 m!2894831))

(assert (=> b!2552195 m!2894831))

(assert (=> b!2552205 m!2894835))

(assert (=> b!2552205 m!2894835))

(declare-fun m!2894843 () Bool)

(assert (=> b!2552205 m!2894843))

(assert (=> b!2552197 m!2894835))

(assert (=> b!2552197 m!2894835))

(assert (=> b!2552197 m!2894843))

(assert (=> bm!162570 m!2894839))

(declare-fun m!2894845 () Bool)

(assert (=> b!2552198 m!2894845))

(assert (=> b!2551938 d!723501))

(declare-fun d!723509 () Bool)

(assert (=> d!723509 (= (nullable!2520 (regOne!15718 r!27340)) (nullableFct!744 (regOne!15718 r!27340)))))

(declare-fun bs!469636 () Bool)

(assert (= bs!469636 d!723509))

(declare-fun m!2894847 () Bool)

(assert (=> bs!469636 m!2894847))

(assert (=> b!2551939 d!723509))

(declare-fun bm!162571 () Bool)

(declare-fun call!162576 () Bool)

(declare-fun call!162578 () Bool)

(assert (=> bm!162571 (= call!162576 call!162578)))

(declare-fun b!2552210 () Bool)

(declare-fun res!1074966 () Bool)

(declare-fun e!1612662 () Bool)

(assert (=> b!2552210 (=> res!1074966 e!1612662)))

(assert (=> b!2552210 (= res!1074966 (not ((_ is Concat!12299) (regTwo!15718 r!27340))))))

(declare-fun e!1612661 () Bool)

(assert (=> b!2552210 (= e!1612661 e!1612662)))

(declare-fun c!409280 () Bool)

(declare-fun c!409279 () Bool)

(declare-fun bm!162572 () Bool)

(assert (=> bm!162572 (= call!162578 (validRegex!3229 (ite c!409279 (reg!7932 (regTwo!15718 r!27340)) (ite c!409280 (regTwo!15719 (regTwo!15718 r!27340)) (regOne!15718 (regTwo!15718 r!27340))))))))

(declare-fun b!2552213 () Bool)

(declare-fun e!1612663 () Bool)

(assert (=> b!2552213 (= e!1612663 e!1612661)))

(assert (=> b!2552213 (= c!409280 ((_ is Union!7603) (regTwo!15718 r!27340)))))

(declare-fun b!2552214 () Bool)

(declare-fun res!1074967 () Bool)

(declare-fun e!1612665 () Bool)

(assert (=> b!2552214 (=> (not res!1074967) (not e!1612665))))

(declare-fun call!162577 () Bool)

(assert (=> b!2552214 (= res!1074967 call!162577)))

(assert (=> b!2552214 (= e!1612661 e!1612665)))

(declare-fun b!2552215 () Bool)

(declare-fun e!1612669 () Bool)

(assert (=> b!2552215 (= e!1612669 call!162577)))

(declare-fun b!2552216 () Bool)

(declare-fun e!1612664 () Bool)

(assert (=> b!2552216 (= e!1612663 e!1612664)))

(declare-fun res!1074965 () Bool)

(assert (=> b!2552216 (= res!1074965 (not (nullable!2520 (reg!7932 (regTwo!15718 r!27340)))))))

(assert (=> b!2552216 (=> (not res!1074965) (not e!1612664))))

(declare-fun b!2552217 () Bool)

(assert (=> b!2552217 (= e!1612662 e!1612669)))

(declare-fun res!1074964 () Bool)

(assert (=> b!2552217 (=> (not res!1074964) (not e!1612669))))

(assert (=> b!2552217 (= res!1074964 call!162576)))

(declare-fun b!2552218 () Bool)

(declare-fun e!1612666 () Bool)

(assert (=> b!2552218 (= e!1612666 e!1612663)))

(assert (=> b!2552218 (= c!409279 ((_ is Star!7603) (regTwo!15718 r!27340)))))

(declare-fun d!723511 () Bool)

(declare-fun res!1074970 () Bool)

(assert (=> d!723511 (=> res!1074970 e!1612666)))

(assert (=> d!723511 (= res!1074970 ((_ is ElementMatch!7603) (regTwo!15718 r!27340)))))

(assert (=> d!723511 (= (validRegex!3229 (regTwo!15718 r!27340)) e!1612666)))

(declare-fun bm!162573 () Bool)

(assert (=> bm!162573 (= call!162577 (validRegex!3229 (ite c!409280 (regOne!15719 (regTwo!15718 r!27340)) (regTwo!15718 (regTwo!15718 r!27340)))))))

(declare-fun b!2552219 () Bool)

(assert (=> b!2552219 (= e!1612665 call!162576)))

(declare-fun b!2552220 () Bool)

(assert (=> b!2552220 (= e!1612664 call!162578)))

(assert (= (and d!723511 (not res!1074970)) b!2552218))

(assert (= (and b!2552218 c!409279) b!2552216))

(assert (= (and b!2552218 (not c!409279)) b!2552213))

(assert (= (and b!2552216 res!1074965) b!2552220))

(assert (= (and b!2552213 c!409280) b!2552214))

(assert (= (and b!2552213 (not c!409280)) b!2552210))

(assert (= (and b!2552214 res!1074967) b!2552219))

(assert (= (and b!2552210 (not res!1074966)) b!2552217))

(assert (= (and b!2552217 res!1074964) b!2552215))

(assert (= (or b!2552214 b!2552215) bm!162573))

(assert (= (or b!2552219 b!2552217) bm!162571))

(assert (= (or b!2552220 bm!162571) bm!162572))

(declare-fun m!2894849 () Bool)

(assert (=> bm!162572 m!2894849))

(declare-fun m!2894851 () Bool)

(assert (=> b!2552216 m!2894851))

(declare-fun m!2894853 () Bool)

(assert (=> bm!162573 m!2894853))

(assert (=> b!2551942 d!723511))

(declare-fun d!723513 () Bool)

(assert (=> d!723513 (= (matchR!3548 lt!903504 tl!4068) (matchR!3548 (derivative!298 lt!903504 tl!4068) Nil!29568))))

(declare-fun lt!903543 () Unit!43391)

(declare-fun choose!15066 (Regex!7603 List!29668) Unit!43391)

(assert (=> d!723513 (= lt!903543 (choose!15066 lt!903504 tl!4068))))

(assert (=> d!723513 (validRegex!3229 lt!903504)))

(assert (=> d!723513 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!194 lt!903504 tl!4068) lt!903543)))

(declare-fun bs!469638 () Bool)

(assert (= bs!469638 d!723513))

(assert (=> bs!469638 m!2894705))

(assert (=> bs!469638 m!2894701))

(declare-fun m!2894893 () Bool)

(assert (=> bs!469638 m!2894893))

(assert (=> bs!469638 m!2894701))

(assert (=> bs!469638 m!2894703))

(declare-fun m!2894897 () Bool)

(assert (=> bs!469638 m!2894897))

(assert (=> b!2551937 d!723513))

(declare-fun d!723529 () Bool)

(declare-fun e!1612701 () Bool)

(assert (=> d!723529 e!1612701))

(declare-fun c!409297 () Bool)

(assert (=> d!723529 (= c!409297 ((_ is EmptyExpr!7603) lt!903510))))

(declare-fun lt!903544 () Bool)

(declare-fun e!1612703 () Bool)

(assert (=> d!723529 (= lt!903544 e!1612703)))

(declare-fun c!409296 () Bool)

(assert (=> d!723529 (= c!409296 (isEmpty!17016 tl!4068))))

(assert (=> d!723529 (validRegex!3229 lt!903510)))

(assert (=> d!723529 (= (matchR!3548 lt!903510 tl!4068) lt!903544)))

(declare-fun b!2552265 () Bool)

(declare-fun e!1612699 () Bool)

(assert (=> b!2552265 (= e!1612701 e!1612699)))

(declare-fun c!409298 () Bool)

(assert (=> b!2552265 (= c!409298 ((_ is EmptyLang!7603) lt!903510))))

(declare-fun b!2552266 () Bool)

(declare-fun e!1612698 () Bool)

(assert (=> b!2552266 (= e!1612698 (= (head!5810 tl!4068) (c!409201 lt!903510)))))

(declare-fun b!2552267 () Bool)

(assert (=> b!2552267 (= e!1612699 (not lt!903544))))

(declare-fun b!2552268 () Bool)

(declare-fun res!1074988 () Bool)

(assert (=> b!2552268 (=> (not res!1074988) (not e!1612698))))

(assert (=> b!2552268 (= res!1074988 (isEmpty!17016 (tail!4085 tl!4068)))))

(declare-fun bm!162588 () Bool)

(declare-fun call!162593 () Bool)

(assert (=> bm!162588 (= call!162593 (isEmpty!17016 tl!4068))))

(declare-fun b!2552269 () Bool)

(assert (=> b!2552269 (= e!1612703 (nullable!2520 lt!903510))))

(declare-fun b!2552270 () Bool)

(declare-fun res!1074987 () Bool)

(declare-fun e!1612700 () Bool)

(assert (=> b!2552270 (=> res!1074987 e!1612700)))

(assert (=> b!2552270 (= res!1074987 (not ((_ is ElementMatch!7603) lt!903510)))))

(assert (=> b!2552270 (= e!1612699 e!1612700)))

(declare-fun b!2552271 () Bool)

(declare-fun e!1612702 () Bool)

(assert (=> b!2552271 (= e!1612702 (not (= (head!5810 tl!4068) (c!409201 lt!903510))))))

(declare-fun b!2552272 () Bool)

(assert (=> b!2552272 (= e!1612703 (matchR!3548 (derivativeStep!2172 lt!903510 (head!5810 tl!4068)) (tail!4085 tl!4068)))))

(declare-fun b!2552273 () Bool)

(declare-fun res!1074986 () Bool)

(assert (=> b!2552273 (=> res!1074986 e!1612700)))

(assert (=> b!2552273 (= res!1074986 e!1612698)))

(declare-fun res!1074989 () Bool)

(assert (=> b!2552273 (=> (not res!1074989) (not e!1612698))))

(assert (=> b!2552273 (= res!1074989 lt!903544)))

(declare-fun b!2552274 () Bool)

(declare-fun e!1612697 () Bool)

(assert (=> b!2552274 (= e!1612700 e!1612697)))

(declare-fun res!1074985 () Bool)

(assert (=> b!2552274 (=> (not res!1074985) (not e!1612697))))

(assert (=> b!2552274 (= res!1074985 (not lt!903544))))

(declare-fun b!2552275 () Bool)

(assert (=> b!2552275 (= e!1612701 (= lt!903544 call!162593))))

(declare-fun b!2552278 () Bool)

(declare-fun res!1074990 () Bool)

(assert (=> b!2552278 (=> res!1074990 e!1612702)))

(assert (=> b!2552278 (= res!1074990 (not (isEmpty!17016 (tail!4085 tl!4068))))))

(declare-fun b!2552279 () Bool)

(assert (=> b!2552279 (= e!1612697 e!1612702)))

(declare-fun res!1074984 () Bool)

(assert (=> b!2552279 (=> res!1074984 e!1612702)))

(assert (=> b!2552279 (= res!1074984 call!162593)))

(declare-fun b!2552280 () Bool)

(declare-fun res!1074983 () Bool)

(assert (=> b!2552280 (=> (not res!1074983) (not e!1612698))))

(assert (=> b!2552280 (= res!1074983 (not call!162593))))

(assert (= (and d!723529 c!409296) b!2552269))

(assert (= (and d!723529 (not c!409296)) b!2552272))

(assert (= (and d!723529 c!409297) b!2552275))

(assert (= (and d!723529 (not c!409297)) b!2552265))

(assert (= (and b!2552265 c!409298) b!2552267))

(assert (= (and b!2552265 (not c!409298)) b!2552270))

(assert (= (and b!2552270 (not res!1074987)) b!2552273))

(assert (= (and b!2552273 res!1074989) b!2552280))

(assert (= (and b!2552280 res!1074983) b!2552268))

(assert (= (and b!2552268 res!1074988) b!2552266))

(assert (= (and b!2552273 (not res!1074986)) b!2552274))

(assert (= (and b!2552274 res!1074985) b!2552279))

(assert (= (and b!2552279 (not res!1074984)) b!2552278))

(assert (= (and b!2552278 (not res!1074990)) b!2552271))

(assert (= (or b!2552275 b!2552279 b!2552280) bm!162588))

(assert (=> b!2552272 m!2894831))

(assert (=> b!2552272 m!2894831))

(declare-fun m!2894901 () Bool)

(assert (=> b!2552272 m!2894901))

(assert (=> b!2552272 m!2894835))

(assert (=> b!2552272 m!2894901))

(assert (=> b!2552272 m!2894835))

(declare-fun m!2894903 () Bool)

(assert (=> b!2552272 m!2894903))

(assert (=> d!723529 m!2894839))

(declare-fun m!2894905 () Bool)

(assert (=> d!723529 m!2894905))

(assert (=> b!2552271 m!2894831))

(assert (=> b!2552266 m!2894831))

(assert (=> b!2552278 m!2894835))

(assert (=> b!2552278 m!2894835))

(assert (=> b!2552278 m!2894843))

(assert (=> b!2552268 m!2894835))

(assert (=> b!2552268 m!2894835))

(assert (=> b!2552268 m!2894843))

(assert (=> bm!162588 m!2894839))

(declare-fun m!2894907 () Bool)

(assert (=> b!2552269 m!2894907))

(assert (=> b!2551937 d!723529))

(declare-fun d!723531 () Bool)

(declare-fun lt!903545 () Regex!7603)

(assert (=> d!723531 (validRegex!3229 lt!903545)))

(declare-fun e!1612709 () Regex!7603)

(assert (=> d!723531 (= lt!903545 e!1612709)))

(declare-fun c!409299 () Bool)

(assert (=> d!723531 (= c!409299 ((_ is Cons!29568) tl!4068))))

(assert (=> d!723531 (validRegex!3229 lt!903504)))

(assert (=> d!723531 (= (derivative!298 lt!903504 tl!4068) lt!903545)))

(declare-fun b!2552299 () Bool)

(assert (=> b!2552299 (= e!1612709 (derivative!298 (derivativeStep!2172 lt!903504 (h!34988 tl!4068)) (t!211367 tl!4068)))))

(declare-fun b!2552300 () Bool)

(assert (=> b!2552300 (= e!1612709 lt!903504)))

(assert (= (and d!723531 c!409299) b!2552299))

(assert (= (and d!723531 (not c!409299)) b!2552300))

(declare-fun m!2894909 () Bool)

(assert (=> d!723531 m!2894909))

(assert (=> d!723531 m!2894893))

(declare-fun m!2894911 () Bool)

(assert (=> b!2552299 m!2894911))

(assert (=> b!2552299 m!2894911))

(declare-fun m!2894913 () Bool)

(assert (=> b!2552299 m!2894913))

(assert (=> b!2551937 d!723531))

(declare-fun d!723533 () Bool)

(declare-fun e!1612720 () Bool)

(assert (=> d!723533 e!1612720))

(declare-fun res!1074995 () Bool)

(assert (=> d!723533 (=> res!1074995 e!1612720)))

(assert (=> d!723533 (= res!1074995 (matchR!3548 lt!903510 tl!4068))))

(declare-fun lt!903548 () Unit!43391)

(declare-fun choose!15067 (Regex!7603 Regex!7603 List!29668) Unit!43391)

(assert (=> d!723533 (= lt!903548 (choose!15067 lt!903510 lt!903506 tl!4068))))

(declare-fun e!1612719 () Bool)

(assert (=> d!723533 e!1612719))

(declare-fun res!1074996 () Bool)

(assert (=> d!723533 (=> (not res!1074996) (not e!1612719))))

(assert (=> d!723533 (= res!1074996 (validRegex!3229 lt!903510))))

(assert (=> d!723533 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!198 lt!903510 lt!903506 tl!4068) lt!903548)))

(declare-fun b!2552318 () Bool)

(assert (=> b!2552318 (= e!1612719 (validRegex!3229 lt!903506))))

(declare-fun b!2552319 () Bool)

(assert (=> b!2552319 (= e!1612720 (matchR!3548 lt!903506 tl!4068))))

(assert (= (and d!723533 res!1074996) b!2552318))

(assert (= (and d!723533 (not res!1074995)) b!2552319))

(assert (=> d!723533 m!2894709))

(declare-fun m!2894915 () Bool)

(assert (=> d!723533 m!2894915))

(assert (=> d!723533 m!2894905))

(assert (=> b!2552318 m!2894841))

(assert (=> b!2552319 m!2894727))

(assert (=> b!2551937 d!723533))

(declare-fun d!723535 () Bool)

(declare-fun lt!903549 () Regex!7603)

(assert (=> d!723535 (validRegex!3229 lt!903549)))

(declare-fun e!1612722 () Regex!7603)

(assert (=> d!723535 (= lt!903549 e!1612722)))

(declare-fun c!409302 () Bool)

(assert (=> d!723535 (= c!409302 (or ((_ is EmptyExpr!7603) (regTwo!15718 r!27340)) ((_ is EmptyLang!7603) (regTwo!15718 r!27340))))))

(assert (=> d!723535 (validRegex!3229 (regTwo!15718 r!27340))))

(assert (=> d!723535 (= (derivativeStep!2172 (regTwo!15718 r!27340) c!14016) lt!903549)))

(declare-fun c!409304 () Bool)

(declare-fun bm!162589 () Bool)

(declare-fun call!162595 () Regex!7603)

(assert (=> bm!162589 (= call!162595 (derivativeStep!2172 (ite c!409304 (regOne!15719 (regTwo!15718 r!27340)) (regTwo!15718 (regTwo!15718 r!27340))) c!14016))))

(declare-fun c!409301 () Bool)

(declare-fun bm!162590 () Bool)

(declare-fun call!162594 () Regex!7603)

(assert (=> bm!162590 (= call!162594 (derivativeStep!2172 (ite c!409304 (regTwo!15719 (regTwo!15718 r!27340)) (ite c!409301 (reg!7932 (regTwo!15718 r!27340)) (regOne!15718 (regTwo!15718 r!27340)))) c!14016))))

(declare-fun bm!162591 () Bool)

(declare-fun call!162597 () Regex!7603)

(declare-fun call!162596 () Regex!7603)

(assert (=> bm!162591 (= call!162597 call!162596)))

(declare-fun b!2552320 () Bool)

(declare-fun c!409303 () Bool)

(assert (=> b!2552320 (= c!409303 (nullable!2520 (regOne!15718 (regTwo!15718 r!27340))))))

(declare-fun e!1612724 () Regex!7603)

(declare-fun e!1612725 () Regex!7603)

(assert (=> b!2552320 (= e!1612724 e!1612725)))

(declare-fun b!2552321 () Bool)

(assert (=> b!2552321 (= e!1612722 EmptyLang!7603)))

(declare-fun b!2552322 () Bool)

(assert (=> b!2552322 (= e!1612725 (Union!7603 (Concat!12299 call!162597 (regTwo!15718 (regTwo!15718 r!27340))) call!162595))))

(declare-fun b!2552323 () Bool)

(assert (=> b!2552323 (= c!409304 ((_ is Union!7603) (regTwo!15718 r!27340)))))

(declare-fun e!1612721 () Regex!7603)

(declare-fun e!1612723 () Regex!7603)

(assert (=> b!2552323 (= e!1612721 e!1612723)))

(declare-fun b!2552324 () Bool)

(assert (=> b!2552324 (= e!1612725 (Union!7603 (Concat!12299 call!162597 (regTwo!15718 (regTwo!15718 r!27340))) EmptyLang!7603))))

(declare-fun b!2552325 () Bool)

(assert (=> b!2552325 (= e!1612723 (Union!7603 call!162595 call!162594))))

(declare-fun b!2552326 () Bool)

(assert (=> b!2552326 (= e!1612724 (Concat!12299 call!162596 (regTwo!15718 r!27340)))))

(declare-fun b!2552327 () Bool)

(assert (=> b!2552327 (= e!1612722 e!1612721)))

(declare-fun c!409300 () Bool)

(assert (=> b!2552327 (= c!409300 ((_ is ElementMatch!7603) (regTwo!15718 r!27340)))))

(declare-fun bm!162592 () Bool)

(assert (=> bm!162592 (= call!162596 call!162594)))

(declare-fun b!2552328 () Bool)

(assert (=> b!2552328 (= e!1612723 e!1612724)))

(assert (=> b!2552328 (= c!409301 ((_ is Star!7603) (regTwo!15718 r!27340)))))

(declare-fun b!2552329 () Bool)

(assert (=> b!2552329 (= e!1612721 (ite (= c!14016 (c!409201 (regTwo!15718 r!27340))) EmptyExpr!7603 EmptyLang!7603))))

(assert (= (and d!723535 c!409302) b!2552321))

(assert (= (and d!723535 (not c!409302)) b!2552327))

(assert (= (and b!2552327 c!409300) b!2552329))

(assert (= (and b!2552327 (not c!409300)) b!2552323))

(assert (= (and b!2552323 c!409304) b!2552325))

(assert (= (and b!2552323 (not c!409304)) b!2552328))

(assert (= (and b!2552328 c!409301) b!2552326))

(assert (= (and b!2552328 (not c!409301)) b!2552320))

(assert (= (and b!2552320 c!409303) b!2552322))

(assert (= (and b!2552320 (not c!409303)) b!2552324))

(assert (= (or b!2552322 b!2552324) bm!162591))

(assert (= (or b!2552326 bm!162591) bm!162592))

(assert (= (or b!2552325 bm!162592) bm!162590))

(assert (= (or b!2552325 b!2552322) bm!162589))

(declare-fun m!2894917 () Bool)

(assert (=> d!723535 m!2894917))

(assert (=> d!723535 m!2894717))

(declare-fun m!2894919 () Bool)

(assert (=> bm!162589 m!2894919))

(declare-fun m!2894921 () Bool)

(assert (=> bm!162590 m!2894921))

(declare-fun m!2894923 () Bool)

(assert (=> b!2552320 m!2894923))

(assert (=> b!2551937 d!723535))

(declare-fun d!723537 () Bool)

(declare-fun e!1612730 () Bool)

(assert (=> d!723537 e!1612730))

(declare-fun c!409306 () Bool)

(assert (=> d!723537 (= c!409306 ((_ is EmptyExpr!7603) lt!903504))))

(declare-fun lt!903550 () Bool)

(declare-fun e!1612732 () Bool)

(assert (=> d!723537 (= lt!903550 e!1612732)))

(declare-fun c!409305 () Bool)

(assert (=> d!723537 (= c!409305 (isEmpty!17016 tl!4068))))

(assert (=> d!723537 (validRegex!3229 lt!903504)))

(assert (=> d!723537 (= (matchR!3548 lt!903504 tl!4068) lt!903550)))

(declare-fun b!2552330 () Bool)

(declare-fun e!1612728 () Bool)

(assert (=> b!2552330 (= e!1612730 e!1612728)))

(declare-fun c!409307 () Bool)

(assert (=> b!2552330 (= c!409307 ((_ is EmptyLang!7603) lt!903504))))

(declare-fun b!2552331 () Bool)

(declare-fun e!1612727 () Bool)

(assert (=> b!2552331 (= e!1612727 (= (head!5810 tl!4068) (c!409201 lt!903504)))))

(declare-fun b!2552332 () Bool)

(assert (=> b!2552332 (= e!1612728 (not lt!903550))))

(declare-fun b!2552333 () Bool)

(declare-fun res!1075002 () Bool)

(assert (=> b!2552333 (=> (not res!1075002) (not e!1612727))))

(assert (=> b!2552333 (= res!1075002 (isEmpty!17016 (tail!4085 tl!4068)))))

(declare-fun bm!162593 () Bool)

(declare-fun call!162598 () Bool)

(assert (=> bm!162593 (= call!162598 (isEmpty!17016 tl!4068))))

(declare-fun b!2552334 () Bool)

(assert (=> b!2552334 (= e!1612732 (nullable!2520 lt!903504))))

(declare-fun b!2552335 () Bool)

(declare-fun res!1075001 () Bool)

(declare-fun e!1612729 () Bool)

(assert (=> b!2552335 (=> res!1075001 e!1612729)))

(assert (=> b!2552335 (= res!1075001 (not ((_ is ElementMatch!7603) lt!903504)))))

(assert (=> b!2552335 (= e!1612728 e!1612729)))

(declare-fun b!2552336 () Bool)

(declare-fun e!1612731 () Bool)

(assert (=> b!2552336 (= e!1612731 (not (= (head!5810 tl!4068) (c!409201 lt!903504))))))

(declare-fun b!2552337 () Bool)

(assert (=> b!2552337 (= e!1612732 (matchR!3548 (derivativeStep!2172 lt!903504 (head!5810 tl!4068)) (tail!4085 tl!4068)))))

(declare-fun b!2552338 () Bool)

(declare-fun res!1075000 () Bool)

(assert (=> b!2552338 (=> res!1075000 e!1612729)))

(assert (=> b!2552338 (= res!1075000 e!1612727)))

(declare-fun res!1075003 () Bool)

(assert (=> b!2552338 (=> (not res!1075003) (not e!1612727))))

(assert (=> b!2552338 (= res!1075003 lt!903550)))

(declare-fun b!2552339 () Bool)

(declare-fun e!1612726 () Bool)

(assert (=> b!2552339 (= e!1612729 e!1612726)))

(declare-fun res!1074999 () Bool)

(assert (=> b!2552339 (=> (not res!1074999) (not e!1612726))))

(assert (=> b!2552339 (= res!1074999 (not lt!903550))))

(declare-fun b!2552340 () Bool)

(assert (=> b!2552340 (= e!1612730 (= lt!903550 call!162598))))

(declare-fun b!2552341 () Bool)

(declare-fun res!1075004 () Bool)

(assert (=> b!2552341 (=> res!1075004 e!1612731)))

(assert (=> b!2552341 (= res!1075004 (not (isEmpty!17016 (tail!4085 tl!4068))))))

(declare-fun b!2552342 () Bool)

(assert (=> b!2552342 (= e!1612726 e!1612731)))

(declare-fun res!1074998 () Bool)

(assert (=> b!2552342 (=> res!1074998 e!1612731)))

(assert (=> b!2552342 (= res!1074998 call!162598)))

(declare-fun b!2552343 () Bool)

(declare-fun res!1074997 () Bool)

(assert (=> b!2552343 (=> (not res!1074997) (not e!1612727))))

(assert (=> b!2552343 (= res!1074997 (not call!162598))))

(assert (= (and d!723537 c!409305) b!2552334))

(assert (= (and d!723537 (not c!409305)) b!2552337))

(assert (= (and d!723537 c!409306) b!2552340))

(assert (= (and d!723537 (not c!409306)) b!2552330))

(assert (= (and b!2552330 c!409307) b!2552332))

(assert (= (and b!2552330 (not c!409307)) b!2552335))

(assert (= (and b!2552335 (not res!1075001)) b!2552338))

(assert (= (and b!2552338 res!1075003) b!2552343))

(assert (= (and b!2552343 res!1074997) b!2552333))

(assert (= (and b!2552333 res!1075002) b!2552331))

(assert (= (and b!2552338 (not res!1075000)) b!2552339))

(assert (= (and b!2552339 res!1074999) b!2552342))

(assert (= (and b!2552342 (not res!1074998)) b!2552341))

(assert (= (and b!2552341 (not res!1075004)) b!2552336))

(assert (= (or b!2552340 b!2552342 b!2552343) bm!162593))

(assert (=> b!2552337 m!2894831))

(assert (=> b!2552337 m!2894831))

(declare-fun m!2894925 () Bool)

(assert (=> b!2552337 m!2894925))

(assert (=> b!2552337 m!2894835))

(assert (=> b!2552337 m!2894925))

(assert (=> b!2552337 m!2894835))

(declare-fun m!2894927 () Bool)

(assert (=> b!2552337 m!2894927))

(assert (=> d!723537 m!2894839))

(assert (=> d!723537 m!2894893))

(assert (=> b!2552336 m!2894831))

(assert (=> b!2552331 m!2894831))

(assert (=> b!2552341 m!2894835))

(assert (=> b!2552341 m!2894835))

(assert (=> b!2552341 m!2894843))

(assert (=> b!2552333 m!2894835))

(assert (=> b!2552333 m!2894835))

(assert (=> b!2552333 m!2894843))

(assert (=> bm!162593 m!2894839))

(declare-fun m!2894929 () Bool)

(assert (=> b!2552334 m!2894929))

(assert (=> b!2551937 d!723537))

(declare-fun d!723539 () Bool)

(declare-fun e!1612737 () Bool)

(assert (=> d!723539 e!1612737))

(declare-fun c!409309 () Bool)

(assert (=> d!723539 (= c!409309 ((_ is EmptyExpr!7603) (derivative!298 lt!903504 tl!4068)))))

(declare-fun lt!903551 () Bool)

(declare-fun e!1612739 () Bool)

(assert (=> d!723539 (= lt!903551 e!1612739)))

(declare-fun c!409308 () Bool)

(assert (=> d!723539 (= c!409308 (isEmpty!17016 Nil!29568))))

(assert (=> d!723539 (validRegex!3229 (derivative!298 lt!903504 tl!4068))))

(assert (=> d!723539 (= (matchR!3548 (derivative!298 lt!903504 tl!4068) Nil!29568) lt!903551)))

(declare-fun b!2552344 () Bool)

(declare-fun e!1612735 () Bool)

(assert (=> b!2552344 (= e!1612737 e!1612735)))

(declare-fun c!409310 () Bool)

(assert (=> b!2552344 (= c!409310 ((_ is EmptyLang!7603) (derivative!298 lt!903504 tl!4068)))))

(declare-fun b!2552345 () Bool)

(declare-fun e!1612734 () Bool)

(assert (=> b!2552345 (= e!1612734 (= (head!5810 Nil!29568) (c!409201 (derivative!298 lt!903504 tl!4068))))))

(declare-fun b!2552346 () Bool)

(assert (=> b!2552346 (= e!1612735 (not lt!903551))))

(declare-fun b!2552347 () Bool)

(declare-fun res!1075010 () Bool)

(assert (=> b!2552347 (=> (not res!1075010) (not e!1612734))))

(assert (=> b!2552347 (= res!1075010 (isEmpty!17016 (tail!4085 Nil!29568)))))

(declare-fun bm!162594 () Bool)

(declare-fun call!162599 () Bool)

(assert (=> bm!162594 (= call!162599 (isEmpty!17016 Nil!29568))))

(declare-fun b!2552348 () Bool)

(assert (=> b!2552348 (= e!1612739 (nullable!2520 (derivative!298 lt!903504 tl!4068)))))

(declare-fun b!2552349 () Bool)

(declare-fun res!1075009 () Bool)

(declare-fun e!1612736 () Bool)

(assert (=> b!2552349 (=> res!1075009 e!1612736)))

(assert (=> b!2552349 (= res!1075009 (not ((_ is ElementMatch!7603) (derivative!298 lt!903504 tl!4068))))))

(assert (=> b!2552349 (= e!1612735 e!1612736)))

(declare-fun b!2552350 () Bool)

(declare-fun e!1612738 () Bool)

(assert (=> b!2552350 (= e!1612738 (not (= (head!5810 Nil!29568) (c!409201 (derivative!298 lt!903504 tl!4068)))))))

(declare-fun b!2552351 () Bool)

(assert (=> b!2552351 (= e!1612739 (matchR!3548 (derivativeStep!2172 (derivative!298 lt!903504 tl!4068) (head!5810 Nil!29568)) (tail!4085 Nil!29568)))))

(declare-fun b!2552352 () Bool)

(declare-fun res!1075008 () Bool)

(assert (=> b!2552352 (=> res!1075008 e!1612736)))

(assert (=> b!2552352 (= res!1075008 e!1612734)))

(declare-fun res!1075011 () Bool)

(assert (=> b!2552352 (=> (not res!1075011) (not e!1612734))))

(assert (=> b!2552352 (= res!1075011 lt!903551)))

(declare-fun b!2552353 () Bool)

(declare-fun e!1612733 () Bool)

(assert (=> b!2552353 (= e!1612736 e!1612733)))

(declare-fun res!1075007 () Bool)

(assert (=> b!2552353 (=> (not res!1075007) (not e!1612733))))

(assert (=> b!2552353 (= res!1075007 (not lt!903551))))

(declare-fun b!2552354 () Bool)

(assert (=> b!2552354 (= e!1612737 (= lt!903551 call!162599))))

(declare-fun b!2552355 () Bool)

(declare-fun res!1075012 () Bool)

(assert (=> b!2552355 (=> res!1075012 e!1612738)))

(assert (=> b!2552355 (= res!1075012 (not (isEmpty!17016 (tail!4085 Nil!29568))))))

(declare-fun b!2552356 () Bool)

(assert (=> b!2552356 (= e!1612733 e!1612738)))

(declare-fun res!1075006 () Bool)

(assert (=> b!2552356 (=> res!1075006 e!1612738)))

(assert (=> b!2552356 (= res!1075006 call!162599)))

(declare-fun b!2552357 () Bool)

(declare-fun res!1075005 () Bool)

(assert (=> b!2552357 (=> (not res!1075005) (not e!1612734))))

(assert (=> b!2552357 (= res!1075005 (not call!162599))))

(assert (= (and d!723539 c!409308) b!2552348))

(assert (= (and d!723539 (not c!409308)) b!2552351))

(assert (= (and d!723539 c!409309) b!2552354))

(assert (= (and d!723539 (not c!409309)) b!2552344))

(assert (= (and b!2552344 c!409310) b!2552346))

(assert (= (and b!2552344 (not c!409310)) b!2552349))

(assert (= (and b!2552349 (not res!1075009)) b!2552352))

(assert (= (and b!2552352 res!1075011) b!2552357))

(assert (= (and b!2552357 res!1075005) b!2552347))

(assert (= (and b!2552347 res!1075010) b!2552345))

(assert (= (and b!2552352 (not res!1075008)) b!2552353))

(assert (= (and b!2552353 res!1075007) b!2552356))

(assert (= (and b!2552356 (not res!1075006)) b!2552355))

(assert (= (and b!2552355 (not res!1075012)) b!2552350))

(assert (= (or b!2552354 b!2552356 b!2552357) bm!162594))

(declare-fun m!2894931 () Bool)

(assert (=> b!2552351 m!2894931))

(assert (=> b!2552351 m!2894701))

(assert (=> b!2552351 m!2894931))

(declare-fun m!2894933 () Bool)

(assert (=> b!2552351 m!2894933))

(declare-fun m!2894935 () Bool)

(assert (=> b!2552351 m!2894935))

(assert (=> b!2552351 m!2894933))

(assert (=> b!2552351 m!2894935))

(declare-fun m!2894937 () Bool)

(assert (=> b!2552351 m!2894937))

(declare-fun m!2894939 () Bool)

(assert (=> d!723539 m!2894939))

(assert (=> d!723539 m!2894701))

(declare-fun m!2894941 () Bool)

(assert (=> d!723539 m!2894941))

(assert (=> b!2552350 m!2894931))

(assert (=> b!2552345 m!2894931))

(assert (=> b!2552355 m!2894935))

(assert (=> b!2552355 m!2894935))

(declare-fun m!2894943 () Bool)

(assert (=> b!2552355 m!2894943))

(assert (=> b!2552347 m!2894935))

(assert (=> b!2552347 m!2894935))

(assert (=> b!2552347 m!2894943))

(assert (=> bm!162594 m!2894939))

(assert (=> b!2552348 m!2894701))

(declare-fun m!2894945 () Bool)

(assert (=> b!2552348 m!2894945))

(assert (=> b!2551937 d!723539))

(declare-fun d!723541 () Bool)

(declare-fun lt!903552 () Regex!7603)

(assert (=> d!723541 (validRegex!3229 lt!903552)))

(declare-fun e!1612741 () Regex!7603)

(assert (=> d!723541 (= lt!903552 e!1612741)))

(declare-fun c!409313 () Bool)

(assert (=> d!723541 (= c!409313 (or ((_ is EmptyExpr!7603) (regOne!15718 r!27340)) ((_ is EmptyLang!7603) (regOne!15718 r!27340))))))

(assert (=> d!723541 (validRegex!3229 (regOne!15718 r!27340))))

(assert (=> d!723541 (= (derivativeStep!2172 (regOne!15718 r!27340) c!14016) lt!903552)))

(declare-fun call!162601 () Regex!7603)

(declare-fun bm!162595 () Bool)

(declare-fun c!409315 () Bool)

(assert (=> bm!162595 (= call!162601 (derivativeStep!2172 (ite c!409315 (regOne!15719 (regOne!15718 r!27340)) (regTwo!15718 (regOne!15718 r!27340))) c!14016))))

(declare-fun bm!162596 () Bool)

(declare-fun call!162600 () Regex!7603)

(declare-fun c!409312 () Bool)

(assert (=> bm!162596 (= call!162600 (derivativeStep!2172 (ite c!409315 (regTwo!15719 (regOne!15718 r!27340)) (ite c!409312 (reg!7932 (regOne!15718 r!27340)) (regOne!15718 (regOne!15718 r!27340)))) c!14016))))

(declare-fun bm!162597 () Bool)

(declare-fun call!162603 () Regex!7603)

(declare-fun call!162602 () Regex!7603)

(assert (=> bm!162597 (= call!162603 call!162602)))

(declare-fun b!2552358 () Bool)

(declare-fun c!409314 () Bool)

(assert (=> b!2552358 (= c!409314 (nullable!2520 (regOne!15718 (regOne!15718 r!27340))))))

(declare-fun e!1612743 () Regex!7603)

(declare-fun e!1612744 () Regex!7603)

(assert (=> b!2552358 (= e!1612743 e!1612744)))

(declare-fun b!2552359 () Bool)

(assert (=> b!2552359 (= e!1612741 EmptyLang!7603)))

(declare-fun b!2552360 () Bool)

(assert (=> b!2552360 (= e!1612744 (Union!7603 (Concat!12299 call!162603 (regTwo!15718 (regOne!15718 r!27340))) call!162601))))

(declare-fun b!2552361 () Bool)

(assert (=> b!2552361 (= c!409315 ((_ is Union!7603) (regOne!15718 r!27340)))))

(declare-fun e!1612740 () Regex!7603)

(declare-fun e!1612742 () Regex!7603)

(assert (=> b!2552361 (= e!1612740 e!1612742)))

(declare-fun b!2552362 () Bool)

(assert (=> b!2552362 (= e!1612744 (Union!7603 (Concat!12299 call!162603 (regTwo!15718 (regOne!15718 r!27340))) EmptyLang!7603))))

(declare-fun b!2552363 () Bool)

(assert (=> b!2552363 (= e!1612742 (Union!7603 call!162601 call!162600))))

(declare-fun b!2552364 () Bool)

(assert (=> b!2552364 (= e!1612743 (Concat!12299 call!162602 (regOne!15718 r!27340)))))

(declare-fun b!2552365 () Bool)

(assert (=> b!2552365 (= e!1612741 e!1612740)))

(declare-fun c!409311 () Bool)

(assert (=> b!2552365 (= c!409311 ((_ is ElementMatch!7603) (regOne!15718 r!27340)))))

(declare-fun bm!162598 () Bool)

(assert (=> bm!162598 (= call!162602 call!162600)))

(declare-fun b!2552366 () Bool)

(assert (=> b!2552366 (= e!1612742 e!1612743)))

(assert (=> b!2552366 (= c!409312 ((_ is Star!7603) (regOne!15718 r!27340)))))

(declare-fun b!2552367 () Bool)

(assert (=> b!2552367 (= e!1612740 (ite (= c!14016 (c!409201 (regOne!15718 r!27340))) EmptyExpr!7603 EmptyLang!7603))))

(assert (= (and d!723541 c!409313) b!2552359))

(assert (= (and d!723541 (not c!409313)) b!2552365))

(assert (= (and b!2552365 c!409311) b!2552367))

(assert (= (and b!2552365 (not c!409311)) b!2552361))

(assert (= (and b!2552361 c!409315) b!2552363))

(assert (= (and b!2552361 (not c!409315)) b!2552366))

(assert (= (and b!2552366 c!409312) b!2552364))

(assert (= (and b!2552366 (not c!409312)) b!2552358))

(assert (= (and b!2552358 c!409314) b!2552360))

(assert (= (and b!2552358 (not c!409314)) b!2552362))

(assert (= (or b!2552360 b!2552362) bm!162597))

(assert (= (or b!2552364 bm!162597) bm!162598))

(assert (= (or b!2552363 bm!162598) bm!162596))

(assert (= (or b!2552363 b!2552360) bm!162595))

(declare-fun m!2894947 () Bool)

(assert (=> d!723541 m!2894947))

(declare-fun m!2894949 () Bool)

(assert (=> d!723541 m!2894949))

(declare-fun m!2894951 () Bool)

(assert (=> bm!162595 m!2894951))

(declare-fun m!2894953 () Bool)

(assert (=> bm!162596 m!2894953))

(declare-fun m!2894955 () Bool)

(assert (=> b!2552358 m!2894955))

(assert (=> b!2551937 d!723541))

(declare-fun e!1612747 () Bool)

(assert (=> b!2551936 (= tp!814101 e!1612747)))

(declare-fun b!2552379 () Bool)

(declare-fun tp!814151 () Bool)

(declare-fun tp!814153 () Bool)

(assert (=> b!2552379 (= e!1612747 (and tp!814151 tp!814153))))

(declare-fun b!2552380 () Bool)

(declare-fun tp!814152 () Bool)

(assert (=> b!2552380 (= e!1612747 tp!814152)))

(declare-fun b!2552381 () Bool)

(declare-fun tp!814154 () Bool)

(declare-fun tp!814155 () Bool)

(assert (=> b!2552381 (= e!1612747 (and tp!814154 tp!814155))))

(declare-fun b!2552378 () Bool)

(assert (=> b!2552378 (= e!1612747 tp_is_empty!13061)))

(assert (= (and b!2551936 ((_ is ElementMatch!7603) (reg!7932 r!27340))) b!2552378))

(assert (= (and b!2551936 ((_ is Concat!12299) (reg!7932 r!27340))) b!2552379))

(assert (= (and b!2551936 ((_ is Star!7603) (reg!7932 r!27340))) b!2552380))

(assert (= (and b!2551936 ((_ is Union!7603) (reg!7932 r!27340))) b!2552381))

(declare-fun b!2552386 () Bool)

(declare-fun e!1612750 () Bool)

(declare-fun tp!814158 () Bool)

(assert (=> b!2552386 (= e!1612750 (and tp_is_empty!13061 tp!814158))))

(assert (=> b!2551935 (= tp!814099 e!1612750)))

(assert (= (and b!2551935 ((_ is Cons!29568) (t!211367 tl!4068))) b!2552386))

(declare-fun e!1612751 () Bool)

(assert (=> b!2551944 (= tp!814100 e!1612751)))

(declare-fun b!2552388 () Bool)

(declare-fun tp!814159 () Bool)

(declare-fun tp!814161 () Bool)

(assert (=> b!2552388 (= e!1612751 (and tp!814159 tp!814161))))

(declare-fun b!2552389 () Bool)

(declare-fun tp!814160 () Bool)

(assert (=> b!2552389 (= e!1612751 tp!814160)))

(declare-fun b!2552390 () Bool)

(declare-fun tp!814162 () Bool)

(declare-fun tp!814163 () Bool)

(assert (=> b!2552390 (= e!1612751 (and tp!814162 tp!814163))))

(declare-fun b!2552387 () Bool)

(assert (=> b!2552387 (= e!1612751 tp_is_empty!13061)))

(assert (= (and b!2551944 ((_ is ElementMatch!7603) (regOne!15719 r!27340))) b!2552387))

(assert (= (and b!2551944 ((_ is Concat!12299) (regOne!15719 r!27340))) b!2552388))

(assert (= (and b!2551944 ((_ is Star!7603) (regOne!15719 r!27340))) b!2552389))

(assert (= (and b!2551944 ((_ is Union!7603) (regOne!15719 r!27340))) b!2552390))

(declare-fun e!1612752 () Bool)

(assert (=> b!2551944 (= tp!814098 e!1612752)))

(declare-fun b!2552392 () Bool)

(declare-fun tp!814164 () Bool)

(declare-fun tp!814166 () Bool)

(assert (=> b!2552392 (= e!1612752 (and tp!814164 tp!814166))))

(declare-fun b!2552393 () Bool)

(declare-fun tp!814165 () Bool)

(assert (=> b!2552393 (= e!1612752 tp!814165)))

(declare-fun b!2552394 () Bool)

(declare-fun tp!814167 () Bool)

(declare-fun tp!814168 () Bool)

(assert (=> b!2552394 (= e!1612752 (and tp!814167 tp!814168))))

(declare-fun b!2552391 () Bool)

(assert (=> b!2552391 (= e!1612752 tp_is_empty!13061)))

(assert (= (and b!2551944 ((_ is ElementMatch!7603) (regTwo!15719 r!27340))) b!2552391))

(assert (= (and b!2551944 ((_ is Concat!12299) (regTwo!15719 r!27340))) b!2552392))

(assert (= (and b!2551944 ((_ is Star!7603) (regTwo!15719 r!27340))) b!2552393))

(assert (= (and b!2551944 ((_ is Union!7603) (regTwo!15719 r!27340))) b!2552394))

(declare-fun e!1612753 () Bool)

(assert (=> b!2551943 (= tp!814097 e!1612753)))

(declare-fun b!2552396 () Bool)

(declare-fun tp!814169 () Bool)

(declare-fun tp!814171 () Bool)

(assert (=> b!2552396 (= e!1612753 (and tp!814169 tp!814171))))

(declare-fun b!2552397 () Bool)

(declare-fun tp!814170 () Bool)

(assert (=> b!2552397 (= e!1612753 tp!814170)))

(declare-fun b!2552398 () Bool)

(declare-fun tp!814172 () Bool)

(declare-fun tp!814173 () Bool)

(assert (=> b!2552398 (= e!1612753 (and tp!814172 tp!814173))))

(declare-fun b!2552395 () Bool)

(assert (=> b!2552395 (= e!1612753 tp_is_empty!13061)))

(assert (= (and b!2551943 ((_ is ElementMatch!7603) (regOne!15718 r!27340))) b!2552395))

(assert (= (and b!2551943 ((_ is Concat!12299) (regOne!15718 r!27340))) b!2552396))

(assert (= (and b!2551943 ((_ is Star!7603) (regOne!15718 r!27340))) b!2552397))

(assert (= (and b!2551943 ((_ is Union!7603) (regOne!15718 r!27340))) b!2552398))

(declare-fun e!1612754 () Bool)

(assert (=> b!2551943 (= tp!814102 e!1612754)))

(declare-fun b!2552400 () Bool)

(declare-fun tp!814174 () Bool)

(declare-fun tp!814176 () Bool)

(assert (=> b!2552400 (= e!1612754 (and tp!814174 tp!814176))))

(declare-fun b!2552401 () Bool)

(declare-fun tp!814175 () Bool)

(assert (=> b!2552401 (= e!1612754 tp!814175)))

(declare-fun b!2552402 () Bool)

(declare-fun tp!814177 () Bool)

(declare-fun tp!814178 () Bool)

(assert (=> b!2552402 (= e!1612754 (and tp!814177 tp!814178))))

(declare-fun b!2552399 () Bool)

(assert (=> b!2552399 (= e!1612754 tp_is_empty!13061)))

(assert (= (and b!2551943 ((_ is ElementMatch!7603) (regTwo!15718 r!27340))) b!2552399))

(assert (= (and b!2551943 ((_ is Concat!12299) (regTwo!15718 r!27340))) b!2552400))

(assert (= (and b!2551943 ((_ is Star!7603) (regTwo!15718 r!27340))) b!2552401))

(assert (= (and b!2551943 ((_ is Union!7603) (regTwo!15718 r!27340))) b!2552402))

(check-sat (not b!2552397) (not b!2552201) (not b!2552390) (not bm!162553) (not b!2552350) (not bm!162570) (not b!2552379) (not bm!162596) (not b!2551978) (not bm!162538) (not b!2552389) (not d!723539) (not b!2552319) (not bm!162552) (not b!2552271) (not b!2552195) (not b!2552320) (not b!2552351) (not b!2552336) (not d!723531) (not b!2552272) (not d!723487) (not b!2552042) (not b!2552337) (not d!723529) (not b!2552396) (not b!2552347) (not d!723481) (not b!2552401) (not b!2552402) (not b!2552216) (not d!723509) (not b!2552394) (not b!2552381) (not b!2552318) (not d!723513) (not d!723533) (not b!2552278) (not bm!162572) (not b!2552299) (not b!2552341) (not b!2552334) (not b!2552333) (not b!2552388) (not bm!162573) (not b!2552398) (not bm!162549) (not b!2552355) (not d!723537) (not b!2552386) (not bm!162594) (not bm!162537) (not b!2552200) (not b!2552197) (not b!2552393) (not b!2552092) tp_is_empty!13061 (not b!2552269) (not b!2552392) (not b!2552198) (not b!2552268) (not b!2552345) (not bm!162590) (not b!2552400) (not bm!162595) (not b!2552348) (not d!723535) (not bm!162588) (not bm!162593) (not d!723483) (not bm!162550) (not b!2552205) (not b!2552331) (not b!2552380) (not d!723541) (not b!2552101) (not b!2552266) (not d!723501) (not b!2552358) (not bm!162589))
(check-sat)
