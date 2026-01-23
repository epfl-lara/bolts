; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290928 () Bool)

(assert start!290928)

(declare-fun b!3033655 () Bool)

(declare-fun e!1902422 () Bool)

(declare-fun tp_is_empty!16429 () Bool)

(declare-fun tp!961197 () Bool)

(assert (=> b!3033655 (= e!1902422 (and tp_is_empty!16429 tp!961197))))

(declare-fun b!3033656 () Bool)

(declare-fun e!1902424 () Bool)

(declare-fun tp!961195 () Bool)

(declare-fun tp!961194 () Bool)

(assert (=> b!3033656 (= e!1902424 (and tp!961195 tp!961194))))

(declare-fun b!3033657 () Bool)

(declare-fun tp!961192 () Bool)

(declare-fun tp!961196 () Bool)

(assert (=> b!3033657 (= e!1902424 (and tp!961192 tp!961196))))

(declare-fun b!3033658 () Bool)

(declare-fun e!1902427 () Bool)

(declare-fun e!1902425 () Bool)

(assert (=> b!3033658 (= e!1902427 e!1902425)))

(declare-fun res!1248038 () Bool)

(assert (=> b!3033658 (=> (not res!1248038) (not e!1902425))))

(declare-datatypes ((C!19052 0))(
  ( (C!19053 (val!11562 Int)) )
))
(declare-datatypes ((Regex!9433 0))(
  ( (ElementMatch!9433 (c!501415 C!19052)) (Concat!14754 (regOne!19378 Regex!9433) (regTwo!19378 Regex!9433)) (EmptyExpr!9433) (Star!9433 (reg!9762 Regex!9433)) (EmptyLang!9433) (Union!9433 (regOne!19379 Regex!9433) (regTwo!19379 Regex!9433)) )
))
(declare-fun lt!1046326 () Regex!9433)

(declare-fun validRegex!4166 (Regex!9433) Bool)

(assert (=> b!3033658 (= res!1248038 (validRegex!4166 lt!1046326))))

(declare-fun lt!1046327 () Regex!9433)

(declare-fun r!17423 () Regex!9433)

(declare-fun simplify!400 (Regex!9433) Regex!9433)

(assert (=> b!3033658 (= lt!1046327 (simplify!400 (regOne!19379 r!17423)))))

(declare-fun res!1248033 () Bool)

(declare-fun e!1902423 () Bool)

(assert (=> start!290928 (=> (not res!1248033) (not e!1902423))))

(assert (=> start!290928 (= res!1248033 (validRegex!4166 r!17423))))

(assert (=> start!290928 e!1902423))

(assert (=> start!290928 e!1902424))

(assert (=> start!290928 e!1902422))

(declare-fun b!3033659 () Bool)

(declare-fun e!1902428 () Bool)

(declare-fun e!1902426 () Bool)

(assert (=> b!3033659 (= e!1902428 e!1902426)))

(declare-fun res!1248036 () Bool)

(assert (=> b!3033659 (=> res!1248036 e!1902426)))

(declare-fun lt!1046328 () Bool)

(assert (=> b!3033659 (= res!1248036 lt!1046328)))

(declare-fun e!1902429 () Bool)

(assert (=> b!3033659 e!1902429))

(declare-fun res!1248037 () Bool)

(assert (=> b!3033659 (=> res!1248037 e!1902429)))

(assert (=> b!3033659 (= res!1248037 lt!1046328)))

(declare-datatypes ((List!35298 0))(
  ( (Nil!35174) (Cons!35174 (h!40594 C!19052) (t!234363 List!35298)) )
))
(declare-fun s!11993 () List!35298)

(declare-fun matchR!4315 (Regex!9433 List!35298) Bool)

(assert (=> b!3033659 (= lt!1046328 (matchR!4315 (regOne!19379 r!17423) s!11993))))

(declare-datatypes ((Unit!49289 0))(
  ( (Unit!49290) )
))
(declare-fun lt!1046331 () Unit!49289)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!310 (Regex!9433 Regex!9433 List!35298) Unit!49289)

(assert (=> b!3033659 (= lt!1046331 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!310 (regOne!19379 r!17423) (regTwo!19379 r!17423) s!11993))))

(declare-fun b!3033660 () Bool)

(assert (=> b!3033660 (= e!1902426 e!1902427)))

(declare-fun res!1248034 () Bool)

(assert (=> b!3033660 (=> res!1248034 e!1902427)))

(declare-fun lt!1046330 () Bool)

(assert (=> b!3033660 (= res!1248034 (not lt!1046330))))

(declare-fun lt!1046325 () Bool)

(assert (=> b!3033660 (= lt!1046325 lt!1046330)))

(assert (=> b!3033660 (= lt!1046330 (matchR!4315 lt!1046326 s!11993))))

(assert (=> b!3033660 (= lt!1046325 (matchR!4315 (regTwo!19379 r!17423) s!11993))))

(assert (=> b!3033660 (= lt!1046326 (simplify!400 (regTwo!19379 r!17423)))))

(declare-fun lt!1046324 () Unit!49289)

(declare-fun lemmaSimplifySound!248 (Regex!9433 List!35298) Unit!49289)

(assert (=> b!3033660 (= lt!1046324 (lemmaSimplifySound!248 (regTwo!19379 r!17423) s!11993))))

(declare-fun b!3033661 () Bool)

(assert (=> b!3033661 (= e!1902425 (validRegex!4166 lt!1046327))))

(declare-fun b!3033662 () Bool)

(assert (=> b!3033662 (= e!1902423 (not e!1902428))))

(declare-fun res!1248035 () Bool)

(assert (=> b!3033662 (=> res!1248035 e!1902428)))

(declare-fun lt!1046329 () Bool)

(get-info :version)

(assert (=> b!3033662 (= res!1248035 (or (not lt!1046329) ((_ is Concat!14754) r!17423) (not ((_ is Union!9433) r!17423))))))

(declare-fun matchRSpec!1570 (Regex!9433 List!35298) Bool)

(assert (=> b!3033662 (= lt!1046329 (matchRSpec!1570 r!17423 s!11993))))

(assert (=> b!3033662 (= lt!1046329 (matchR!4315 r!17423 s!11993))))

(declare-fun lt!1046332 () Unit!49289)

(declare-fun mainMatchTheorem!1570 (Regex!9433 List!35298) Unit!49289)

(assert (=> b!3033662 (= lt!1046332 (mainMatchTheorem!1570 r!17423 s!11993))))

(declare-fun b!3033663 () Bool)

(assert (=> b!3033663 (= e!1902429 (matchR!4315 (regTwo!19379 r!17423) s!11993))))

(declare-fun b!3033664 () Bool)

(declare-fun tp!961193 () Bool)

(assert (=> b!3033664 (= e!1902424 tp!961193)))

(declare-fun b!3033665 () Bool)

(assert (=> b!3033665 (= e!1902424 tp_is_empty!16429)))

(assert (= (and start!290928 res!1248033) b!3033662))

(assert (= (and b!3033662 (not res!1248035)) b!3033659))

(assert (= (and b!3033659 (not res!1248037)) b!3033663))

(assert (= (and b!3033659 (not res!1248036)) b!3033660))

(assert (= (and b!3033660 (not res!1248034)) b!3033658))

(assert (= (and b!3033658 res!1248038) b!3033661))

(assert (= (and start!290928 ((_ is ElementMatch!9433) r!17423)) b!3033665))

(assert (= (and start!290928 ((_ is Concat!14754) r!17423)) b!3033656))

(assert (= (and start!290928 ((_ is Star!9433) r!17423)) b!3033664))

(assert (= (and start!290928 ((_ is Union!9433) r!17423)) b!3033657))

(assert (= (and start!290928 ((_ is Cons!35174) s!11993)) b!3033655))

(declare-fun m!3369003 () Bool)

(assert (=> b!3033660 m!3369003))

(declare-fun m!3369005 () Bool)

(assert (=> b!3033660 m!3369005))

(declare-fun m!3369007 () Bool)

(assert (=> b!3033660 m!3369007))

(declare-fun m!3369009 () Bool)

(assert (=> b!3033660 m!3369009))

(declare-fun m!3369011 () Bool)

(assert (=> b!3033658 m!3369011))

(declare-fun m!3369013 () Bool)

(assert (=> b!3033658 m!3369013))

(declare-fun m!3369015 () Bool)

(assert (=> b!3033659 m!3369015))

(declare-fun m!3369017 () Bool)

(assert (=> b!3033659 m!3369017))

(declare-fun m!3369019 () Bool)

(assert (=> b!3033661 m!3369019))

(declare-fun m!3369021 () Bool)

(assert (=> b!3033662 m!3369021))

(declare-fun m!3369023 () Bool)

(assert (=> b!3033662 m!3369023))

(declare-fun m!3369025 () Bool)

(assert (=> b!3033662 m!3369025))

(declare-fun m!3369027 () Bool)

(assert (=> start!290928 m!3369027))

(assert (=> b!3033663 m!3369005))

(check-sat (not start!290928) (not b!3033663) (not b!3033655) (not b!3033662) (not b!3033660) (not b!3033657) (not b!3033664) (not b!3033659) (not b!3033658) (not b!3033661) (not b!3033656) tp_is_empty!16429)
(check-sat)
(get-model)

(declare-fun b!3033722 () Bool)

(declare-fun e!1902460 () Bool)

(declare-fun head!6739 (List!35298) C!19052)

(assert (=> b!3033722 (= e!1902460 (= (head!6739 s!11993) (c!501415 lt!1046326)))))

(declare-fun b!3033723 () Bool)

(declare-fun e!1902462 () Bool)

(assert (=> b!3033723 (= e!1902462 (not (= (head!6739 s!11993) (c!501415 lt!1046326))))))

(declare-fun b!3033724 () Bool)

(declare-fun res!1248074 () Bool)

(assert (=> b!3033724 (=> (not res!1248074) (not e!1902460))))

(declare-fun isEmpty!19474 (List!35298) Bool)

(declare-fun tail!4965 (List!35298) List!35298)

(assert (=> b!3033724 (= res!1248074 (isEmpty!19474 (tail!4965 s!11993)))))

(declare-fun b!3033725 () Bool)

(declare-fun res!1248075 () Bool)

(assert (=> b!3033725 (=> res!1248075 e!1902462)))

(assert (=> b!3033725 (= res!1248075 (not (isEmpty!19474 (tail!4965 s!11993))))))

(declare-fun b!3033726 () Bool)

(declare-fun e!1902459 () Bool)

(declare-fun nullable!3083 (Regex!9433) Bool)

(assert (=> b!3033726 (= e!1902459 (nullable!3083 lt!1046326))))

(declare-fun b!3033727 () Bool)

(declare-fun e!1902463 () Bool)

(assert (=> b!3033727 (= e!1902463 e!1902462)))

(declare-fun res!1248073 () Bool)

(assert (=> b!3033727 (=> res!1248073 e!1902462)))

(declare-fun call!206897 () Bool)

(assert (=> b!3033727 (= res!1248073 call!206897)))

(declare-fun d!851468 () Bool)

(declare-fun e!1902458 () Bool)

(assert (=> d!851468 e!1902458))

(declare-fun c!501430 () Bool)

(assert (=> d!851468 (= c!501430 ((_ is EmptyExpr!9433) lt!1046326))))

(declare-fun lt!1046337 () Bool)

(assert (=> d!851468 (= lt!1046337 e!1902459)))

(declare-fun c!501429 () Bool)

(assert (=> d!851468 (= c!501429 (isEmpty!19474 s!11993))))

(assert (=> d!851468 (validRegex!4166 lt!1046326)))

(assert (=> d!851468 (= (matchR!4315 lt!1046326 s!11993) lt!1046337)))

(declare-fun b!3033728 () Bool)

(declare-fun res!1248078 () Bool)

(declare-fun e!1902464 () Bool)

(assert (=> b!3033728 (=> res!1248078 e!1902464)))

(assert (=> b!3033728 (= res!1248078 (not ((_ is ElementMatch!9433) lt!1046326)))))

(declare-fun e!1902461 () Bool)

(assert (=> b!3033728 (= e!1902461 e!1902464)))

(declare-fun b!3033729 () Bool)

(declare-fun derivativeStep!2680 (Regex!9433 C!19052) Regex!9433)

(assert (=> b!3033729 (= e!1902459 (matchR!4315 (derivativeStep!2680 lt!1046326 (head!6739 s!11993)) (tail!4965 s!11993)))))

(declare-fun b!3033730 () Bool)

(assert (=> b!3033730 (= e!1902464 e!1902463)))

(declare-fun res!1248071 () Bool)

(assert (=> b!3033730 (=> (not res!1248071) (not e!1902463))))

(assert (=> b!3033730 (= res!1248071 (not lt!1046337))))

(declare-fun b!3033731 () Bool)

(declare-fun res!1248072 () Bool)

(assert (=> b!3033731 (=> (not res!1248072) (not e!1902460))))

(assert (=> b!3033731 (= res!1248072 (not call!206897))))

(declare-fun bm!206892 () Bool)

(assert (=> bm!206892 (= call!206897 (isEmpty!19474 s!11993))))

(declare-fun b!3033732 () Bool)

(assert (=> b!3033732 (= e!1902458 (= lt!1046337 call!206897))))

(declare-fun b!3033733 () Bool)

(assert (=> b!3033733 (= e!1902461 (not lt!1046337))))

(declare-fun b!3033734 () Bool)

(declare-fun res!1248076 () Bool)

(assert (=> b!3033734 (=> res!1248076 e!1902464)))

(assert (=> b!3033734 (= res!1248076 e!1902460)))

(declare-fun res!1248077 () Bool)

(assert (=> b!3033734 (=> (not res!1248077) (not e!1902460))))

(assert (=> b!3033734 (= res!1248077 lt!1046337)))

(declare-fun b!3033735 () Bool)

(assert (=> b!3033735 (= e!1902458 e!1902461)))

(declare-fun c!501428 () Bool)

(assert (=> b!3033735 (= c!501428 ((_ is EmptyLang!9433) lt!1046326))))

(assert (= (and d!851468 c!501429) b!3033726))

(assert (= (and d!851468 (not c!501429)) b!3033729))

(assert (= (and d!851468 c!501430) b!3033732))

(assert (= (and d!851468 (not c!501430)) b!3033735))

(assert (= (and b!3033735 c!501428) b!3033733))

(assert (= (and b!3033735 (not c!501428)) b!3033728))

(assert (= (and b!3033728 (not res!1248078)) b!3033734))

(assert (= (and b!3033734 res!1248077) b!3033731))

(assert (= (and b!3033731 res!1248072) b!3033724))

(assert (= (and b!3033724 res!1248074) b!3033722))

(assert (= (and b!3033734 (not res!1248076)) b!3033730))

(assert (= (and b!3033730 res!1248071) b!3033727))

(assert (= (and b!3033727 (not res!1248073)) b!3033725))

(assert (= (and b!3033725 (not res!1248075)) b!3033723))

(assert (= (or b!3033732 b!3033727 b!3033731) bm!206892))

(declare-fun m!3369029 () Bool)

(assert (=> d!851468 m!3369029))

(assert (=> d!851468 m!3369011))

(declare-fun m!3369031 () Bool)

(assert (=> b!3033729 m!3369031))

(assert (=> b!3033729 m!3369031))

(declare-fun m!3369033 () Bool)

(assert (=> b!3033729 m!3369033))

(declare-fun m!3369035 () Bool)

(assert (=> b!3033729 m!3369035))

(assert (=> b!3033729 m!3369033))

(assert (=> b!3033729 m!3369035))

(declare-fun m!3369037 () Bool)

(assert (=> b!3033729 m!3369037))

(assert (=> b!3033722 m!3369031))

(assert (=> b!3033724 m!3369035))

(assert (=> b!3033724 m!3369035))

(declare-fun m!3369039 () Bool)

(assert (=> b!3033724 m!3369039))

(assert (=> bm!206892 m!3369029))

(assert (=> b!3033723 m!3369031))

(declare-fun m!3369041 () Bool)

(assert (=> b!3033726 m!3369041))

(assert (=> b!3033725 m!3369035))

(assert (=> b!3033725 m!3369035))

(assert (=> b!3033725 m!3369039))

(assert (=> b!3033660 d!851468))

(declare-fun b!3033736 () Bool)

(declare-fun e!1902467 () Bool)

(assert (=> b!3033736 (= e!1902467 (= (head!6739 s!11993) (c!501415 (regTwo!19379 r!17423))))))

(declare-fun b!3033737 () Bool)

(declare-fun e!1902469 () Bool)

(assert (=> b!3033737 (= e!1902469 (not (= (head!6739 s!11993) (c!501415 (regTwo!19379 r!17423)))))))

(declare-fun b!3033738 () Bool)

(declare-fun res!1248082 () Bool)

(assert (=> b!3033738 (=> (not res!1248082) (not e!1902467))))

(assert (=> b!3033738 (= res!1248082 (isEmpty!19474 (tail!4965 s!11993)))))

(declare-fun b!3033739 () Bool)

(declare-fun res!1248083 () Bool)

(assert (=> b!3033739 (=> res!1248083 e!1902469)))

(assert (=> b!3033739 (= res!1248083 (not (isEmpty!19474 (tail!4965 s!11993))))))

(declare-fun b!3033740 () Bool)

(declare-fun e!1902466 () Bool)

(assert (=> b!3033740 (= e!1902466 (nullable!3083 (regTwo!19379 r!17423)))))

(declare-fun b!3033741 () Bool)

(declare-fun e!1902470 () Bool)

(assert (=> b!3033741 (= e!1902470 e!1902469)))

(declare-fun res!1248081 () Bool)

(assert (=> b!3033741 (=> res!1248081 e!1902469)))

(declare-fun call!206900 () Bool)

(assert (=> b!3033741 (= res!1248081 call!206900)))

(declare-fun d!851472 () Bool)

(declare-fun e!1902465 () Bool)

(assert (=> d!851472 e!1902465))

(declare-fun c!501433 () Bool)

(assert (=> d!851472 (= c!501433 ((_ is EmptyExpr!9433) (regTwo!19379 r!17423)))))

(declare-fun lt!1046338 () Bool)

(assert (=> d!851472 (= lt!1046338 e!1902466)))

(declare-fun c!501432 () Bool)

(assert (=> d!851472 (= c!501432 (isEmpty!19474 s!11993))))

(assert (=> d!851472 (validRegex!4166 (regTwo!19379 r!17423))))

(assert (=> d!851472 (= (matchR!4315 (regTwo!19379 r!17423) s!11993) lt!1046338)))

(declare-fun b!3033742 () Bool)

(declare-fun res!1248086 () Bool)

(declare-fun e!1902471 () Bool)

(assert (=> b!3033742 (=> res!1248086 e!1902471)))

(assert (=> b!3033742 (= res!1248086 (not ((_ is ElementMatch!9433) (regTwo!19379 r!17423))))))

(declare-fun e!1902468 () Bool)

(assert (=> b!3033742 (= e!1902468 e!1902471)))

(declare-fun b!3033743 () Bool)

(assert (=> b!3033743 (= e!1902466 (matchR!4315 (derivativeStep!2680 (regTwo!19379 r!17423) (head!6739 s!11993)) (tail!4965 s!11993)))))

(declare-fun b!3033744 () Bool)

(assert (=> b!3033744 (= e!1902471 e!1902470)))

(declare-fun res!1248079 () Bool)

(assert (=> b!3033744 (=> (not res!1248079) (not e!1902470))))

(assert (=> b!3033744 (= res!1248079 (not lt!1046338))))

(declare-fun b!3033745 () Bool)

(declare-fun res!1248080 () Bool)

(assert (=> b!3033745 (=> (not res!1248080) (not e!1902467))))

(assert (=> b!3033745 (= res!1248080 (not call!206900))))

(declare-fun bm!206895 () Bool)

(assert (=> bm!206895 (= call!206900 (isEmpty!19474 s!11993))))

(declare-fun b!3033746 () Bool)

(assert (=> b!3033746 (= e!1902465 (= lt!1046338 call!206900))))

(declare-fun b!3033747 () Bool)

(assert (=> b!3033747 (= e!1902468 (not lt!1046338))))

(declare-fun b!3033748 () Bool)

(declare-fun res!1248084 () Bool)

(assert (=> b!3033748 (=> res!1248084 e!1902471)))

(assert (=> b!3033748 (= res!1248084 e!1902467)))

(declare-fun res!1248085 () Bool)

(assert (=> b!3033748 (=> (not res!1248085) (not e!1902467))))

(assert (=> b!3033748 (= res!1248085 lt!1046338)))

(declare-fun b!3033749 () Bool)

(assert (=> b!3033749 (= e!1902465 e!1902468)))

(declare-fun c!501431 () Bool)

(assert (=> b!3033749 (= c!501431 ((_ is EmptyLang!9433) (regTwo!19379 r!17423)))))

(assert (= (and d!851472 c!501432) b!3033740))

(assert (= (and d!851472 (not c!501432)) b!3033743))

(assert (= (and d!851472 c!501433) b!3033746))

(assert (= (and d!851472 (not c!501433)) b!3033749))

(assert (= (and b!3033749 c!501431) b!3033747))

(assert (= (and b!3033749 (not c!501431)) b!3033742))

(assert (= (and b!3033742 (not res!1248086)) b!3033748))

(assert (= (and b!3033748 res!1248085) b!3033745))

(assert (= (and b!3033745 res!1248080) b!3033738))

(assert (= (and b!3033738 res!1248082) b!3033736))

(assert (= (and b!3033748 (not res!1248084)) b!3033744))

(assert (= (and b!3033744 res!1248079) b!3033741))

(assert (= (and b!3033741 (not res!1248081)) b!3033739))

(assert (= (and b!3033739 (not res!1248083)) b!3033737))

(assert (= (or b!3033746 b!3033741 b!3033745) bm!206895))

(assert (=> d!851472 m!3369029))

(declare-fun m!3369043 () Bool)

(assert (=> d!851472 m!3369043))

(assert (=> b!3033743 m!3369031))

(assert (=> b!3033743 m!3369031))

(declare-fun m!3369045 () Bool)

(assert (=> b!3033743 m!3369045))

(assert (=> b!3033743 m!3369035))

(assert (=> b!3033743 m!3369045))

(assert (=> b!3033743 m!3369035))

(declare-fun m!3369047 () Bool)

(assert (=> b!3033743 m!3369047))

(assert (=> b!3033736 m!3369031))

(assert (=> b!3033738 m!3369035))

(assert (=> b!3033738 m!3369035))

(assert (=> b!3033738 m!3369039))

(assert (=> bm!206895 m!3369029))

(assert (=> b!3033737 m!3369031))

(declare-fun m!3369049 () Bool)

(assert (=> b!3033740 m!3369049))

(assert (=> b!3033739 m!3369035))

(assert (=> b!3033739 m!3369035))

(assert (=> b!3033739 m!3369039))

(assert (=> b!3033660 d!851472))

(declare-fun b!3033842 () Bool)

(declare-fun e!1902533 () Regex!9433)

(assert (=> b!3033842 (= e!1902533 EmptyLang!9433)))

(declare-fun bm!206911 () Bool)

(declare-fun lt!1046355 () Regex!9433)

(declare-fun c!501467 () Bool)

(declare-fun lt!1046359 () Regex!9433)

(declare-fun call!206922 () Bool)

(declare-fun isEmptyExpr!503 (Regex!9433) Bool)

(assert (=> bm!206911 (= call!206922 (isEmptyExpr!503 (ite c!501467 lt!1046359 lt!1046355)))))

(declare-fun b!3033843 () Bool)

(declare-fun e!1902534 () Bool)

(assert (=> b!3033843 (= e!1902534 call!206922)))

(declare-fun b!3033844 () Bool)

(declare-fun e!1902539 () Regex!9433)

(assert (=> b!3033844 (= e!1902539 EmptyLang!9433)))

(declare-fun d!851474 () Bool)

(declare-fun e!1902532 () Bool)

(assert (=> d!851474 e!1902532))

(declare-fun res!1248115 () Bool)

(assert (=> d!851474 (=> (not res!1248115) (not e!1902532))))

(declare-fun lt!1046356 () Regex!9433)

(assert (=> d!851474 (= res!1248115 (validRegex!4166 lt!1046356))))

(assert (=> d!851474 (= lt!1046356 e!1902533)))

(declare-fun c!501476 () Bool)

(assert (=> d!851474 (= c!501476 ((_ is EmptyLang!9433) (regTwo!19379 r!17423)))))

(assert (=> d!851474 (validRegex!4166 (regTwo!19379 r!17423))))

(assert (=> d!851474 (= (simplify!400 (regTwo!19379 r!17423)) lt!1046356)))

(declare-fun call!206919 () Regex!9433)

(declare-fun bm!206912 () Bool)

(declare-fun c!501471 () Bool)

(assert (=> bm!206912 (= call!206919 (simplify!400 (ite c!501467 (reg!9762 (regTwo!19379 r!17423)) (ite c!501471 (regTwo!19379 (regTwo!19379 r!17423)) (regOne!19378 (regTwo!19379 r!17423))))))))

(declare-fun bm!206913 () Bool)

(declare-fun call!206918 () Bool)

(declare-fun call!206916 () Bool)

(assert (=> bm!206913 (= call!206918 call!206916)))

(declare-fun b!3033845 () Bool)

(declare-fun e!1902530 () Regex!9433)

(declare-fun lt!1046358 () Regex!9433)

(assert (=> b!3033845 (= e!1902530 lt!1046358)))

(declare-fun b!3033846 () Bool)

(declare-fun e!1902540 () Regex!9433)

(declare-fun lt!1046357 () Regex!9433)

(assert (=> b!3033846 (= e!1902540 lt!1046357)))

(declare-fun b!3033847 () Bool)

(declare-fun c!501468 () Bool)

(assert (=> b!3033847 (= c!501468 ((_ is EmptyExpr!9433) (regTwo!19379 r!17423)))))

(declare-fun e!1902538 () Regex!9433)

(declare-fun e!1902529 () Regex!9433)

(assert (=> b!3033847 (= e!1902538 e!1902529)))

(declare-fun call!206920 () Bool)

(declare-fun bm!206914 () Bool)

(declare-fun isEmptyLang!497 (Regex!9433) Bool)

(assert (=> bm!206914 (= call!206920 (isEmptyLang!497 (ite c!501471 lt!1046358 lt!1046355)))))

(declare-fun bm!206915 () Bool)

(declare-fun call!206921 () Regex!9433)

(assert (=> bm!206915 (= call!206921 (simplify!400 (ite c!501471 (regOne!19379 (regTwo!19379 r!17423)) (regTwo!19378 (regTwo!19379 r!17423)))))))

(declare-fun bm!206916 () Bool)

(declare-fun call!206917 () Regex!9433)

(assert (=> bm!206916 (= call!206917 call!206919)))

(declare-fun b!3033848 () Bool)

(declare-fun e!1902536 () Regex!9433)

(declare-fun lt!1046360 () Regex!9433)

(assert (=> b!3033848 (= e!1902536 (Union!9433 lt!1046360 lt!1046358))))

(declare-fun b!3033849 () Bool)

(assert (=> b!3033849 (= e!1902536 lt!1046360)))

(declare-fun b!3033850 () Bool)

(assert (=> b!3033850 (= c!501471 ((_ is Union!9433) (regTwo!19379 r!17423)))))

(declare-fun e!1902531 () Regex!9433)

(declare-fun e!1902537 () Regex!9433)

(assert (=> b!3033850 (= e!1902531 e!1902537)))

(declare-fun b!3033851 () Bool)

(declare-fun c!501472 () Bool)

(assert (=> b!3033851 (= c!501472 (isEmptyExpr!503 lt!1046357))))

(declare-fun e!1902527 () Regex!9433)

(assert (=> b!3033851 (= e!1902539 e!1902527)))

(declare-fun b!3033852 () Bool)

(assert (=> b!3033852 (= e!1902538 (regTwo!19379 r!17423))))

(declare-fun b!3033853 () Bool)

(declare-fun c!501470 () Bool)

(assert (=> b!3033853 (= c!501470 e!1902534)))

(declare-fun res!1248114 () Bool)

(assert (=> b!3033853 (=> res!1248114 e!1902534)))

(assert (=> b!3033853 (= res!1248114 call!206916)))

(assert (=> b!3033853 (= lt!1046359 call!206919)))

(declare-fun e!1902528 () Regex!9433)

(assert (=> b!3033853 (= e!1902531 e!1902528)))

(declare-fun b!3033854 () Bool)

(assert (=> b!3033854 (= e!1902537 e!1902539)))

(assert (=> b!3033854 (= lt!1046357 call!206917)))

(assert (=> b!3033854 (= lt!1046355 call!206921)))

(declare-fun res!1248113 () Bool)

(assert (=> b!3033854 (= res!1248113 call!206918)))

(declare-fun e!1902535 () Bool)

(assert (=> b!3033854 (=> res!1248113 e!1902535)))

(declare-fun c!501475 () Bool)

(assert (=> b!3033854 (= c!501475 e!1902535)))

(declare-fun b!3033855 () Bool)

(assert (=> b!3033855 (= e!1902529 EmptyExpr!9433)))

(declare-fun b!3033856 () Bool)

(assert (=> b!3033856 (= e!1902528 EmptyExpr!9433)))

(declare-fun b!3033857 () Bool)

(assert (=> b!3033857 (= e!1902527 lt!1046355)))

(declare-fun b!3033858 () Bool)

(assert (=> b!3033858 (= e!1902528 (Star!9433 lt!1046359))))

(declare-fun b!3033859 () Bool)

(declare-fun c!501473 () Bool)

(assert (=> b!3033859 (= c!501473 call!206920)))

(assert (=> b!3033859 (= e!1902530 e!1902536)))

(declare-fun b!3033860 () Bool)

(assert (=> b!3033860 (= e!1902537 e!1902530)))

(assert (=> b!3033860 (= lt!1046360 call!206921)))

(assert (=> b!3033860 (= lt!1046358 call!206917)))

(declare-fun c!501474 () Bool)

(assert (=> b!3033860 (= c!501474 call!206918)))

(declare-fun b!3033861 () Bool)

(assert (=> b!3033861 (= e!1902529 e!1902531)))

(assert (=> b!3033861 (= c!501467 ((_ is Star!9433) (regTwo!19379 r!17423)))))

(declare-fun b!3033862 () Bool)

(assert (=> b!3033862 (= e!1902532 (= (nullable!3083 lt!1046356) (nullable!3083 (regTwo!19379 r!17423))))))

(declare-fun b!3033863 () Bool)

(assert (=> b!3033863 (= e!1902535 call!206920)))

(declare-fun b!3033864 () Bool)

(assert (=> b!3033864 (= e!1902533 e!1902538)))

(declare-fun c!501469 () Bool)

(assert (=> b!3033864 (= c!501469 ((_ is ElementMatch!9433) (regTwo!19379 r!17423)))))

(declare-fun b!3033865 () Bool)

(assert (=> b!3033865 (= e!1902527 e!1902540)))

(declare-fun c!501477 () Bool)

(assert (=> b!3033865 (= c!501477 call!206922)))

(declare-fun b!3033866 () Bool)

(assert (=> b!3033866 (= e!1902540 (Concat!14754 lt!1046357 lt!1046355))))

(declare-fun bm!206917 () Bool)

(assert (=> bm!206917 (= call!206916 (isEmptyLang!497 (ite c!501467 lt!1046359 (ite c!501471 lt!1046360 lt!1046357))))))

(assert (= (and d!851474 c!501476) b!3033842))

(assert (= (and d!851474 (not c!501476)) b!3033864))

(assert (= (and b!3033864 c!501469) b!3033852))

(assert (= (and b!3033864 (not c!501469)) b!3033847))

(assert (= (and b!3033847 c!501468) b!3033855))

(assert (= (and b!3033847 (not c!501468)) b!3033861))

(assert (= (and b!3033861 c!501467) b!3033853))

(assert (= (and b!3033861 (not c!501467)) b!3033850))

(assert (= (and b!3033853 (not res!1248114)) b!3033843))

(assert (= (and b!3033853 c!501470) b!3033856))

(assert (= (and b!3033853 (not c!501470)) b!3033858))

(assert (= (and b!3033850 c!501471) b!3033860))

(assert (= (and b!3033850 (not c!501471)) b!3033854))

(assert (= (and b!3033860 c!501474) b!3033845))

(assert (= (and b!3033860 (not c!501474)) b!3033859))

(assert (= (and b!3033859 c!501473) b!3033849))

(assert (= (and b!3033859 (not c!501473)) b!3033848))

(assert (= (and b!3033854 (not res!1248113)) b!3033863))

(assert (= (and b!3033854 c!501475) b!3033844))

(assert (= (and b!3033854 (not c!501475)) b!3033851))

(assert (= (and b!3033851 c!501472) b!3033857))

(assert (= (and b!3033851 (not c!501472)) b!3033865))

(assert (= (and b!3033865 c!501477) b!3033846))

(assert (= (and b!3033865 (not c!501477)) b!3033866))

(assert (= (or b!3033860 b!3033854) bm!206915))

(assert (= (or b!3033860 b!3033854) bm!206916))

(assert (= (or b!3033859 b!3033863) bm!206914))

(assert (= (or b!3033860 b!3033854) bm!206913))

(assert (= (or b!3033843 b!3033865) bm!206911))

(assert (= (or b!3033853 bm!206916) bm!206912))

(assert (= (or b!3033853 bm!206913) bm!206917))

(assert (= (and d!851474 res!1248115) b!3033862))

(declare-fun m!3369071 () Bool)

(assert (=> bm!206912 m!3369071))

(declare-fun m!3369073 () Bool)

(assert (=> bm!206915 m!3369073))

(declare-fun m!3369075 () Bool)

(assert (=> bm!206911 m!3369075))

(declare-fun m!3369077 () Bool)

(assert (=> b!3033862 m!3369077))

(assert (=> b!3033862 m!3369049))

(declare-fun m!3369079 () Bool)

(assert (=> d!851474 m!3369079))

(assert (=> d!851474 m!3369043))

(declare-fun m!3369081 () Bool)

(assert (=> b!3033851 m!3369081))

(declare-fun m!3369083 () Bool)

(assert (=> bm!206914 m!3369083))

(declare-fun m!3369085 () Bool)

(assert (=> bm!206917 m!3369085))

(assert (=> b!3033660 d!851474))

(declare-fun d!851480 () Bool)

(assert (=> d!851480 (= (matchR!4315 (regTwo!19379 r!17423) s!11993) (matchR!4315 (simplify!400 (regTwo!19379 r!17423)) s!11993))))

(declare-fun lt!1046363 () Unit!49289)

(declare-fun choose!17992 (Regex!9433 List!35298) Unit!49289)

(assert (=> d!851480 (= lt!1046363 (choose!17992 (regTwo!19379 r!17423) s!11993))))

(assert (=> d!851480 (validRegex!4166 (regTwo!19379 r!17423))))

(assert (=> d!851480 (= (lemmaSimplifySound!248 (regTwo!19379 r!17423) s!11993) lt!1046363)))

(declare-fun bs!530910 () Bool)

(assert (= bs!530910 d!851480))

(assert (=> bs!530910 m!3369005))

(assert (=> bs!530910 m!3369007))

(assert (=> bs!530910 m!3369043))

(declare-fun m!3369087 () Bool)

(assert (=> bs!530910 m!3369087))

(assert (=> bs!530910 m!3369007))

(declare-fun m!3369089 () Bool)

(assert (=> bs!530910 m!3369089))

(assert (=> b!3033660 d!851480))

(declare-fun b!3033867 () Bool)

(declare-fun e!1902543 () Bool)

(assert (=> b!3033867 (= e!1902543 (= (head!6739 s!11993) (c!501415 (regOne!19379 r!17423))))))

(declare-fun b!3033868 () Bool)

(declare-fun e!1902545 () Bool)

(assert (=> b!3033868 (= e!1902545 (not (= (head!6739 s!11993) (c!501415 (regOne!19379 r!17423)))))))

(declare-fun b!3033869 () Bool)

(declare-fun res!1248119 () Bool)

(assert (=> b!3033869 (=> (not res!1248119) (not e!1902543))))

(assert (=> b!3033869 (= res!1248119 (isEmpty!19474 (tail!4965 s!11993)))))

(declare-fun b!3033870 () Bool)

(declare-fun res!1248120 () Bool)

(assert (=> b!3033870 (=> res!1248120 e!1902545)))

(assert (=> b!3033870 (= res!1248120 (not (isEmpty!19474 (tail!4965 s!11993))))))

(declare-fun b!3033871 () Bool)

(declare-fun e!1902542 () Bool)

(assert (=> b!3033871 (= e!1902542 (nullable!3083 (regOne!19379 r!17423)))))

(declare-fun b!3033872 () Bool)

(declare-fun e!1902546 () Bool)

(assert (=> b!3033872 (= e!1902546 e!1902545)))

(declare-fun res!1248118 () Bool)

(assert (=> b!3033872 (=> res!1248118 e!1902545)))

(declare-fun call!206923 () Bool)

(assert (=> b!3033872 (= res!1248118 call!206923)))

(declare-fun d!851482 () Bool)

(declare-fun e!1902541 () Bool)

(assert (=> d!851482 e!1902541))

(declare-fun c!501480 () Bool)

(assert (=> d!851482 (= c!501480 ((_ is EmptyExpr!9433) (regOne!19379 r!17423)))))

(declare-fun lt!1046364 () Bool)

(assert (=> d!851482 (= lt!1046364 e!1902542)))

(declare-fun c!501479 () Bool)

(assert (=> d!851482 (= c!501479 (isEmpty!19474 s!11993))))

(assert (=> d!851482 (validRegex!4166 (regOne!19379 r!17423))))

(assert (=> d!851482 (= (matchR!4315 (regOne!19379 r!17423) s!11993) lt!1046364)))

(declare-fun b!3033873 () Bool)

(declare-fun res!1248123 () Bool)

(declare-fun e!1902547 () Bool)

(assert (=> b!3033873 (=> res!1248123 e!1902547)))

(assert (=> b!3033873 (= res!1248123 (not ((_ is ElementMatch!9433) (regOne!19379 r!17423))))))

(declare-fun e!1902544 () Bool)

(assert (=> b!3033873 (= e!1902544 e!1902547)))

(declare-fun b!3033874 () Bool)

(assert (=> b!3033874 (= e!1902542 (matchR!4315 (derivativeStep!2680 (regOne!19379 r!17423) (head!6739 s!11993)) (tail!4965 s!11993)))))

(declare-fun b!3033875 () Bool)

(assert (=> b!3033875 (= e!1902547 e!1902546)))

(declare-fun res!1248116 () Bool)

(assert (=> b!3033875 (=> (not res!1248116) (not e!1902546))))

(assert (=> b!3033875 (= res!1248116 (not lt!1046364))))

(declare-fun b!3033876 () Bool)

(declare-fun res!1248117 () Bool)

(assert (=> b!3033876 (=> (not res!1248117) (not e!1902543))))

(assert (=> b!3033876 (= res!1248117 (not call!206923))))

(declare-fun bm!206918 () Bool)

(assert (=> bm!206918 (= call!206923 (isEmpty!19474 s!11993))))

(declare-fun b!3033877 () Bool)

(assert (=> b!3033877 (= e!1902541 (= lt!1046364 call!206923))))

(declare-fun b!3033878 () Bool)

(assert (=> b!3033878 (= e!1902544 (not lt!1046364))))

(declare-fun b!3033879 () Bool)

(declare-fun res!1248121 () Bool)

(assert (=> b!3033879 (=> res!1248121 e!1902547)))

(assert (=> b!3033879 (= res!1248121 e!1902543)))

(declare-fun res!1248122 () Bool)

(assert (=> b!3033879 (=> (not res!1248122) (not e!1902543))))

(assert (=> b!3033879 (= res!1248122 lt!1046364)))

(declare-fun b!3033880 () Bool)

(assert (=> b!3033880 (= e!1902541 e!1902544)))

(declare-fun c!501478 () Bool)

(assert (=> b!3033880 (= c!501478 ((_ is EmptyLang!9433) (regOne!19379 r!17423)))))

(assert (= (and d!851482 c!501479) b!3033871))

(assert (= (and d!851482 (not c!501479)) b!3033874))

(assert (= (and d!851482 c!501480) b!3033877))

(assert (= (and d!851482 (not c!501480)) b!3033880))

(assert (= (and b!3033880 c!501478) b!3033878))

(assert (= (and b!3033880 (not c!501478)) b!3033873))

(assert (= (and b!3033873 (not res!1248123)) b!3033879))

(assert (= (and b!3033879 res!1248122) b!3033876))

(assert (= (and b!3033876 res!1248117) b!3033869))

(assert (= (and b!3033869 res!1248119) b!3033867))

(assert (= (and b!3033879 (not res!1248121)) b!3033875))

(assert (= (and b!3033875 res!1248116) b!3033872))

(assert (= (and b!3033872 (not res!1248118)) b!3033870))

(assert (= (and b!3033870 (not res!1248120)) b!3033868))

(assert (= (or b!3033877 b!3033872 b!3033876) bm!206918))

(assert (=> d!851482 m!3369029))

(declare-fun m!3369091 () Bool)

(assert (=> d!851482 m!3369091))

(assert (=> b!3033874 m!3369031))

(assert (=> b!3033874 m!3369031))

(declare-fun m!3369093 () Bool)

(assert (=> b!3033874 m!3369093))

(assert (=> b!3033874 m!3369035))

(assert (=> b!3033874 m!3369093))

(assert (=> b!3033874 m!3369035))

(declare-fun m!3369095 () Bool)

(assert (=> b!3033874 m!3369095))

(assert (=> b!3033867 m!3369031))

(assert (=> b!3033869 m!3369035))

(assert (=> b!3033869 m!3369035))

(assert (=> b!3033869 m!3369039))

(assert (=> bm!206918 m!3369029))

(assert (=> b!3033868 m!3369031))

(declare-fun m!3369097 () Bool)

(assert (=> b!3033871 m!3369097))

(assert (=> b!3033870 m!3369035))

(assert (=> b!3033870 m!3369035))

(assert (=> b!3033870 m!3369039))

(assert (=> b!3033659 d!851482))

(declare-fun d!851484 () Bool)

(declare-fun e!1902553 () Bool)

(assert (=> d!851484 e!1902553))

(declare-fun res!1248129 () Bool)

(assert (=> d!851484 (=> res!1248129 e!1902553)))

(assert (=> d!851484 (= res!1248129 (matchR!4315 (regOne!19379 r!17423) s!11993))))

(declare-fun lt!1046367 () Unit!49289)

(declare-fun choose!17993 (Regex!9433 Regex!9433 List!35298) Unit!49289)

(assert (=> d!851484 (= lt!1046367 (choose!17993 (regOne!19379 r!17423) (regTwo!19379 r!17423) s!11993))))

(declare-fun e!1902552 () Bool)

(assert (=> d!851484 e!1902552))

(declare-fun res!1248128 () Bool)

(assert (=> d!851484 (=> (not res!1248128) (not e!1902552))))

(assert (=> d!851484 (= res!1248128 (validRegex!4166 (regOne!19379 r!17423)))))

(assert (=> d!851484 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!310 (regOne!19379 r!17423) (regTwo!19379 r!17423) s!11993) lt!1046367)))

(declare-fun b!3033885 () Bool)

(assert (=> b!3033885 (= e!1902552 (validRegex!4166 (regTwo!19379 r!17423)))))

(declare-fun b!3033886 () Bool)

(assert (=> b!3033886 (= e!1902553 (matchR!4315 (regTwo!19379 r!17423) s!11993))))

(assert (= (and d!851484 res!1248128) b!3033885))

(assert (= (and d!851484 (not res!1248129)) b!3033886))

(assert (=> d!851484 m!3369015))

(declare-fun m!3369099 () Bool)

(assert (=> d!851484 m!3369099))

(assert (=> d!851484 m!3369091))

(assert (=> b!3033885 m!3369043))

(assert (=> b!3033886 m!3369005))

(assert (=> b!3033659 d!851484))

(assert (=> b!3033663 d!851472))

(declare-fun b!3033905 () Bool)

(declare-fun e!1902569 () Bool)

(declare-fun call!206932 () Bool)

(assert (=> b!3033905 (= e!1902569 call!206932)))

(declare-fun b!3033906 () Bool)

(declare-fun e!1902573 () Bool)

(declare-fun e!1902571 () Bool)

(assert (=> b!3033906 (= e!1902573 e!1902571)))

(declare-fun c!501485 () Bool)

(assert (=> b!3033906 (= c!501485 ((_ is Star!9433) lt!1046326))))

(declare-fun b!3033907 () Bool)

(declare-fun res!1248144 () Bool)

(declare-fun e!1902570 () Bool)

(assert (=> b!3033907 (=> (not res!1248144) (not e!1902570))))

(declare-fun call!206930 () Bool)

(assert (=> b!3033907 (= res!1248144 call!206930)))

(declare-fun e!1902572 () Bool)

(assert (=> b!3033907 (= e!1902572 e!1902570)))

(declare-fun bm!206925 () Bool)

(declare-fun c!501486 () Bool)

(assert (=> bm!206925 (= call!206930 (validRegex!4166 (ite c!501486 (regOne!19379 lt!1046326) (regTwo!19378 lt!1046326))))))

(declare-fun b!3033908 () Bool)

(assert (=> b!3033908 (= e!1902571 e!1902569)))

(declare-fun res!1248143 () Bool)

(assert (=> b!3033908 (= res!1248143 (not (nullable!3083 (reg!9762 lt!1046326))))))

(assert (=> b!3033908 (=> (not res!1248143) (not e!1902569))))

(declare-fun bm!206926 () Bool)

(assert (=> bm!206926 (= call!206932 (validRegex!4166 (ite c!501485 (reg!9762 lt!1046326) (ite c!501486 (regTwo!19379 lt!1046326) (regOne!19378 lt!1046326)))))))

(declare-fun b!3033909 () Bool)

(declare-fun e!1902568 () Bool)

(declare-fun e!1902574 () Bool)

(assert (=> b!3033909 (= e!1902568 e!1902574)))

(declare-fun res!1248141 () Bool)

(assert (=> b!3033909 (=> (not res!1248141) (not e!1902574))))

(declare-fun call!206931 () Bool)

(assert (=> b!3033909 (= res!1248141 call!206931)))

(declare-fun bm!206927 () Bool)

(assert (=> bm!206927 (= call!206931 call!206932)))

(declare-fun d!851486 () Bool)

(declare-fun res!1248142 () Bool)

(assert (=> d!851486 (=> res!1248142 e!1902573)))

(assert (=> d!851486 (= res!1248142 ((_ is ElementMatch!9433) lt!1046326))))

(assert (=> d!851486 (= (validRegex!4166 lt!1046326) e!1902573)))

(declare-fun b!3033910 () Bool)

(declare-fun res!1248140 () Bool)

(assert (=> b!3033910 (=> res!1248140 e!1902568)))

(assert (=> b!3033910 (= res!1248140 (not ((_ is Concat!14754) lt!1046326)))))

(assert (=> b!3033910 (= e!1902572 e!1902568)))

(declare-fun b!3033911 () Bool)

(assert (=> b!3033911 (= e!1902571 e!1902572)))

(assert (=> b!3033911 (= c!501486 ((_ is Union!9433) lt!1046326))))

(declare-fun b!3033912 () Bool)

(assert (=> b!3033912 (= e!1902574 call!206930)))

(declare-fun b!3033913 () Bool)

(assert (=> b!3033913 (= e!1902570 call!206931)))

(assert (= (and d!851486 (not res!1248142)) b!3033906))

(assert (= (and b!3033906 c!501485) b!3033908))

(assert (= (and b!3033906 (not c!501485)) b!3033911))

(assert (= (and b!3033908 res!1248143) b!3033905))

(assert (= (and b!3033911 c!501486) b!3033907))

(assert (= (and b!3033911 (not c!501486)) b!3033910))

(assert (= (and b!3033907 res!1248144) b!3033913))

(assert (= (and b!3033910 (not res!1248140)) b!3033909))

(assert (= (and b!3033909 res!1248141) b!3033912))

(assert (= (or b!3033907 b!3033912) bm!206925))

(assert (= (or b!3033913 b!3033909) bm!206927))

(assert (= (or b!3033905 bm!206927) bm!206926))

(declare-fun m!3369101 () Bool)

(assert (=> bm!206925 m!3369101))

(declare-fun m!3369103 () Bool)

(assert (=> b!3033908 m!3369103))

(declare-fun m!3369105 () Bool)

(assert (=> bm!206926 m!3369105))

(assert (=> b!3033658 d!851486))

(declare-fun b!3033914 () Bool)

(declare-fun e!1902581 () Regex!9433)

(assert (=> b!3033914 (= e!1902581 EmptyLang!9433)))

(declare-fun c!501487 () Bool)

(declare-fun bm!206928 () Bool)

(declare-fun lt!1046372 () Regex!9433)

(declare-fun call!206939 () Bool)

(declare-fun lt!1046368 () Regex!9433)

(assert (=> bm!206928 (= call!206939 (isEmptyExpr!503 (ite c!501487 lt!1046372 lt!1046368)))))

(declare-fun b!3033915 () Bool)

(declare-fun e!1902582 () Bool)

(assert (=> b!3033915 (= e!1902582 call!206939)))

(declare-fun b!3033916 () Bool)

(declare-fun e!1902587 () Regex!9433)

(assert (=> b!3033916 (= e!1902587 EmptyLang!9433)))

(declare-fun d!851488 () Bool)

(declare-fun e!1902580 () Bool)

(assert (=> d!851488 e!1902580))

(declare-fun res!1248147 () Bool)

(assert (=> d!851488 (=> (not res!1248147) (not e!1902580))))

(declare-fun lt!1046369 () Regex!9433)

(assert (=> d!851488 (= res!1248147 (validRegex!4166 lt!1046369))))

(assert (=> d!851488 (= lt!1046369 e!1902581)))

(declare-fun c!501496 () Bool)

(assert (=> d!851488 (= c!501496 ((_ is EmptyLang!9433) (regOne!19379 r!17423)))))

(assert (=> d!851488 (validRegex!4166 (regOne!19379 r!17423))))

(assert (=> d!851488 (= (simplify!400 (regOne!19379 r!17423)) lt!1046369)))

(declare-fun bm!206929 () Bool)

(declare-fun call!206936 () Regex!9433)

(declare-fun c!501491 () Bool)

(assert (=> bm!206929 (= call!206936 (simplify!400 (ite c!501487 (reg!9762 (regOne!19379 r!17423)) (ite c!501491 (regTwo!19379 (regOne!19379 r!17423)) (regOne!19378 (regOne!19379 r!17423))))))))

(declare-fun bm!206930 () Bool)

(declare-fun call!206935 () Bool)

(declare-fun call!206933 () Bool)

(assert (=> bm!206930 (= call!206935 call!206933)))

(declare-fun b!3033917 () Bool)

(declare-fun e!1902578 () Regex!9433)

(declare-fun lt!1046371 () Regex!9433)

(assert (=> b!3033917 (= e!1902578 lt!1046371)))

(declare-fun b!3033918 () Bool)

(declare-fun e!1902588 () Regex!9433)

(declare-fun lt!1046370 () Regex!9433)

(assert (=> b!3033918 (= e!1902588 lt!1046370)))

(declare-fun b!3033919 () Bool)

(declare-fun c!501488 () Bool)

(assert (=> b!3033919 (= c!501488 ((_ is EmptyExpr!9433) (regOne!19379 r!17423)))))

(declare-fun e!1902586 () Regex!9433)

(declare-fun e!1902577 () Regex!9433)

(assert (=> b!3033919 (= e!1902586 e!1902577)))

(declare-fun bm!206931 () Bool)

(declare-fun call!206937 () Bool)

(assert (=> bm!206931 (= call!206937 (isEmptyLang!497 (ite c!501491 lt!1046371 lt!1046368)))))

(declare-fun bm!206932 () Bool)

(declare-fun call!206938 () Regex!9433)

(assert (=> bm!206932 (= call!206938 (simplify!400 (ite c!501491 (regOne!19379 (regOne!19379 r!17423)) (regTwo!19378 (regOne!19379 r!17423)))))))

(declare-fun bm!206933 () Bool)

(declare-fun call!206934 () Regex!9433)

(assert (=> bm!206933 (= call!206934 call!206936)))

(declare-fun b!3033920 () Bool)

(declare-fun e!1902584 () Regex!9433)

(declare-fun lt!1046373 () Regex!9433)

(assert (=> b!3033920 (= e!1902584 (Union!9433 lt!1046373 lt!1046371))))

(declare-fun b!3033921 () Bool)

(assert (=> b!3033921 (= e!1902584 lt!1046373)))

(declare-fun b!3033922 () Bool)

(assert (=> b!3033922 (= c!501491 ((_ is Union!9433) (regOne!19379 r!17423)))))

(declare-fun e!1902579 () Regex!9433)

(declare-fun e!1902585 () Regex!9433)

(assert (=> b!3033922 (= e!1902579 e!1902585)))

(declare-fun b!3033923 () Bool)

(declare-fun c!501492 () Bool)

(assert (=> b!3033923 (= c!501492 (isEmptyExpr!503 lt!1046370))))

(declare-fun e!1902575 () Regex!9433)

(assert (=> b!3033923 (= e!1902587 e!1902575)))

(declare-fun b!3033924 () Bool)

(assert (=> b!3033924 (= e!1902586 (regOne!19379 r!17423))))

(declare-fun b!3033925 () Bool)

(declare-fun c!501490 () Bool)

(assert (=> b!3033925 (= c!501490 e!1902582)))

(declare-fun res!1248146 () Bool)

(assert (=> b!3033925 (=> res!1248146 e!1902582)))

(assert (=> b!3033925 (= res!1248146 call!206933)))

(assert (=> b!3033925 (= lt!1046372 call!206936)))

(declare-fun e!1902576 () Regex!9433)

(assert (=> b!3033925 (= e!1902579 e!1902576)))

(declare-fun b!3033926 () Bool)

(assert (=> b!3033926 (= e!1902585 e!1902587)))

(assert (=> b!3033926 (= lt!1046370 call!206934)))

(assert (=> b!3033926 (= lt!1046368 call!206938)))

(declare-fun res!1248145 () Bool)

(assert (=> b!3033926 (= res!1248145 call!206935)))

(declare-fun e!1902583 () Bool)

(assert (=> b!3033926 (=> res!1248145 e!1902583)))

(declare-fun c!501495 () Bool)

(assert (=> b!3033926 (= c!501495 e!1902583)))

(declare-fun b!3033927 () Bool)

(assert (=> b!3033927 (= e!1902577 EmptyExpr!9433)))

(declare-fun b!3033928 () Bool)

(assert (=> b!3033928 (= e!1902576 EmptyExpr!9433)))

(declare-fun b!3033929 () Bool)

(assert (=> b!3033929 (= e!1902575 lt!1046368)))

(declare-fun b!3033930 () Bool)

(assert (=> b!3033930 (= e!1902576 (Star!9433 lt!1046372))))

(declare-fun b!3033931 () Bool)

(declare-fun c!501493 () Bool)

(assert (=> b!3033931 (= c!501493 call!206937)))

(assert (=> b!3033931 (= e!1902578 e!1902584)))

(declare-fun b!3033932 () Bool)

(assert (=> b!3033932 (= e!1902585 e!1902578)))

(assert (=> b!3033932 (= lt!1046373 call!206938)))

(assert (=> b!3033932 (= lt!1046371 call!206934)))

(declare-fun c!501494 () Bool)

(assert (=> b!3033932 (= c!501494 call!206935)))

(declare-fun b!3033933 () Bool)

(assert (=> b!3033933 (= e!1902577 e!1902579)))

(assert (=> b!3033933 (= c!501487 ((_ is Star!9433) (regOne!19379 r!17423)))))

(declare-fun b!3033934 () Bool)

(assert (=> b!3033934 (= e!1902580 (= (nullable!3083 lt!1046369) (nullable!3083 (regOne!19379 r!17423))))))

(declare-fun b!3033935 () Bool)

(assert (=> b!3033935 (= e!1902583 call!206937)))

(declare-fun b!3033936 () Bool)

(assert (=> b!3033936 (= e!1902581 e!1902586)))

(declare-fun c!501489 () Bool)

(assert (=> b!3033936 (= c!501489 ((_ is ElementMatch!9433) (regOne!19379 r!17423)))))

(declare-fun b!3033937 () Bool)

(assert (=> b!3033937 (= e!1902575 e!1902588)))

(declare-fun c!501497 () Bool)

(assert (=> b!3033937 (= c!501497 call!206939)))

(declare-fun b!3033938 () Bool)

(assert (=> b!3033938 (= e!1902588 (Concat!14754 lt!1046370 lt!1046368))))

(declare-fun bm!206934 () Bool)

(assert (=> bm!206934 (= call!206933 (isEmptyLang!497 (ite c!501487 lt!1046372 (ite c!501491 lt!1046373 lt!1046370))))))

(assert (= (and d!851488 c!501496) b!3033914))

(assert (= (and d!851488 (not c!501496)) b!3033936))

(assert (= (and b!3033936 c!501489) b!3033924))

(assert (= (and b!3033936 (not c!501489)) b!3033919))

(assert (= (and b!3033919 c!501488) b!3033927))

(assert (= (and b!3033919 (not c!501488)) b!3033933))

(assert (= (and b!3033933 c!501487) b!3033925))

(assert (= (and b!3033933 (not c!501487)) b!3033922))

(assert (= (and b!3033925 (not res!1248146)) b!3033915))

(assert (= (and b!3033925 c!501490) b!3033928))

(assert (= (and b!3033925 (not c!501490)) b!3033930))

(assert (= (and b!3033922 c!501491) b!3033932))

(assert (= (and b!3033922 (not c!501491)) b!3033926))

(assert (= (and b!3033932 c!501494) b!3033917))

(assert (= (and b!3033932 (not c!501494)) b!3033931))

(assert (= (and b!3033931 c!501493) b!3033921))

(assert (= (and b!3033931 (not c!501493)) b!3033920))

(assert (= (and b!3033926 (not res!1248145)) b!3033935))

(assert (= (and b!3033926 c!501495) b!3033916))

(assert (= (and b!3033926 (not c!501495)) b!3033923))

(assert (= (and b!3033923 c!501492) b!3033929))

(assert (= (and b!3033923 (not c!501492)) b!3033937))

(assert (= (and b!3033937 c!501497) b!3033918))

(assert (= (and b!3033937 (not c!501497)) b!3033938))

(assert (= (or b!3033932 b!3033926) bm!206932))

(assert (= (or b!3033932 b!3033926) bm!206933))

(assert (= (or b!3033931 b!3033935) bm!206931))

(assert (= (or b!3033932 b!3033926) bm!206930))

(assert (= (or b!3033915 b!3033937) bm!206928))

(assert (= (or b!3033925 bm!206933) bm!206929))

(assert (= (or b!3033925 bm!206930) bm!206934))

(assert (= (and d!851488 res!1248147) b!3033934))

(declare-fun m!3369107 () Bool)

(assert (=> bm!206929 m!3369107))

(declare-fun m!3369109 () Bool)

(assert (=> bm!206932 m!3369109))

(declare-fun m!3369111 () Bool)

(assert (=> bm!206928 m!3369111))

(declare-fun m!3369113 () Bool)

(assert (=> b!3033934 m!3369113))

(assert (=> b!3033934 m!3369097))

(declare-fun m!3369115 () Bool)

(assert (=> d!851488 m!3369115))

(assert (=> d!851488 m!3369091))

(declare-fun m!3369117 () Bool)

(assert (=> b!3033923 m!3369117))

(declare-fun m!3369119 () Bool)

(assert (=> bm!206931 m!3369119))

(declare-fun m!3369121 () Bool)

(assert (=> bm!206934 m!3369121))

(assert (=> b!3033658 d!851488))

(declare-fun b!3034222 () Bool)

(assert (=> b!3034222 true))

(assert (=> b!3034222 true))

(declare-fun bs!530914 () Bool)

(declare-fun b!3034228 () Bool)

(assert (= bs!530914 (and b!3034228 b!3034222)))

(declare-fun lambda!113234 () Int)

(declare-fun lambda!113233 () Int)

(assert (=> bs!530914 (not (= lambda!113234 lambda!113233))))

(assert (=> b!3034228 true))

(assert (=> b!3034228 true))

(declare-fun b!3034218 () Bool)

(declare-fun res!1248239 () Bool)

(declare-fun e!1902745 () Bool)

(assert (=> b!3034218 (=> res!1248239 e!1902745)))

(declare-fun call!206997 () Bool)

(assert (=> b!3034218 (= res!1248239 call!206997)))

(declare-fun e!1902746 () Bool)

(assert (=> b!3034218 (= e!1902746 e!1902745)))

(declare-fun b!3034219 () Bool)

(declare-fun e!1902743 () Bool)

(assert (=> b!3034219 (= e!1902743 (matchRSpec!1570 (regTwo!19379 r!17423) s!11993))))

(declare-fun b!3034220 () Bool)

(declare-fun e!1902740 () Bool)

(assert (=> b!3034220 (= e!1902740 e!1902743)))

(declare-fun res!1248240 () Bool)

(assert (=> b!3034220 (= res!1248240 (matchRSpec!1570 (regOne!19379 r!17423) s!11993))))

(assert (=> b!3034220 (=> res!1248240 e!1902743)))

(declare-fun b!3034221 () Bool)

(declare-fun c!501575 () Bool)

(assert (=> b!3034221 (= c!501575 ((_ is Union!9433) r!17423))))

(declare-fun e!1902741 () Bool)

(assert (=> b!3034221 (= e!1902741 e!1902740)))

(declare-fun call!206996 () Bool)

(assert (=> b!3034222 (= e!1902745 call!206996)))

(declare-fun b!3034223 () Bool)

(declare-fun e!1902744 () Bool)

(declare-fun e!1902742 () Bool)

(assert (=> b!3034223 (= e!1902744 e!1902742)))

(declare-fun res!1248238 () Bool)

(assert (=> b!3034223 (= res!1248238 (not ((_ is EmptyLang!9433) r!17423)))))

(assert (=> b!3034223 (=> (not res!1248238) (not e!1902742))))

(declare-fun bm!206991 () Bool)

(assert (=> bm!206991 (= call!206997 (isEmpty!19474 s!11993))))

(declare-fun d!851490 () Bool)

(declare-fun c!501573 () Bool)

(assert (=> d!851490 (= c!501573 ((_ is EmptyExpr!9433) r!17423))))

(assert (=> d!851490 (= (matchRSpec!1570 r!17423 s!11993) e!1902744)))

(declare-fun bm!206992 () Bool)

(declare-fun c!501574 () Bool)

(declare-fun Exists!1699 (Int) Bool)

(assert (=> bm!206992 (= call!206996 (Exists!1699 (ite c!501574 lambda!113233 lambda!113234)))))

(declare-fun b!3034224 () Bool)

(assert (=> b!3034224 (= e!1902744 call!206997)))

(declare-fun b!3034225 () Bool)

(assert (=> b!3034225 (= e!1902741 (= s!11993 (Cons!35174 (c!501415 r!17423) Nil!35174)))))

(declare-fun b!3034226 () Bool)

(assert (=> b!3034226 (= e!1902740 e!1902746)))

(assert (=> b!3034226 (= c!501574 ((_ is Star!9433) r!17423))))

(declare-fun b!3034227 () Bool)

(declare-fun c!501576 () Bool)

(assert (=> b!3034227 (= c!501576 ((_ is ElementMatch!9433) r!17423))))

(assert (=> b!3034227 (= e!1902742 e!1902741)))

(assert (=> b!3034228 (= e!1902746 call!206996)))

(assert (= (and d!851490 c!501573) b!3034224))

(assert (= (and d!851490 (not c!501573)) b!3034223))

(assert (= (and b!3034223 res!1248238) b!3034227))

(assert (= (and b!3034227 c!501576) b!3034225))

(assert (= (and b!3034227 (not c!501576)) b!3034221))

(assert (= (and b!3034221 c!501575) b!3034220))

(assert (= (and b!3034221 (not c!501575)) b!3034226))

(assert (= (and b!3034220 (not res!1248240)) b!3034219))

(assert (= (and b!3034226 c!501574) b!3034218))

(assert (= (and b!3034226 (not c!501574)) b!3034228))

(assert (= (and b!3034218 (not res!1248239)) b!3034222))

(assert (= (or b!3034222 b!3034228) bm!206992))

(assert (= (or b!3034224 b!3034218) bm!206991))

(declare-fun m!3369203 () Bool)

(assert (=> b!3034219 m!3369203))

(declare-fun m!3369205 () Bool)

(assert (=> b!3034220 m!3369205))

(assert (=> bm!206991 m!3369029))

(declare-fun m!3369207 () Bool)

(assert (=> bm!206992 m!3369207))

(assert (=> b!3033662 d!851490))

(declare-fun b!3034233 () Bool)

(declare-fun e!1902749 () Bool)

(assert (=> b!3034233 (= e!1902749 (= (head!6739 s!11993) (c!501415 r!17423)))))

(declare-fun b!3034234 () Bool)

(declare-fun e!1902751 () Bool)

(assert (=> b!3034234 (= e!1902751 (not (= (head!6739 s!11993) (c!501415 r!17423))))))

(declare-fun b!3034235 () Bool)

(declare-fun res!1248244 () Bool)

(assert (=> b!3034235 (=> (not res!1248244) (not e!1902749))))

(assert (=> b!3034235 (= res!1248244 (isEmpty!19474 (tail!4965 s!11993)))))

(declare-fun b!3034236 () Bool)

(declare-fun res!1248245 () Bool)

(assert (=> b!3034236 (=> res!1248245 e!1902751)))

(assert (=> b!3034236 (= res!1248245 (not (isEmpty!19474 (tail!4965 s!11993))))))

(declare-fun b!3034237 () Bool)

(declare-fun e!1902748 () Bool)

(assert (=> b!3034237 (= e!1902748 (nullable!3083 r!17423))))

(declare-fun b!3034238 () Bool)

(declare-fun e!1902752 () Bool)

(assert (=> b!3034238 (= e!1902752 e!1902751)))

(declare-fun res!1248243 () Bool)

(assert (=> b!3034238 (=> res!1248243 e!1902751)))

(declare-fun call!206998 () Bool)

(assert (=> b!3034238 (= res!1248243 call!206998)))

(declare-fun d!851512 () Bool)

(declare-fun e!1902747 () Bool)

(assert (=> d!851512 e!1902747))

(declare-fun c!501579 () Bool)

(assert (=> d!851512 (= c!501579 ((_ is EmptyExpr!9433) r!17423))))

(declare-fun lt!1046407 () Bool)

(assert (=> d!851512 (= lt!1046407 e!1902748)))

(declare-fun c!501578 () Bool)

(assert (=> d!851512 (= c!501578 (isEmpty!19474 s!11993))))

(assert (=> d!851512 (validRegex!4166 r!17423)))

(assert (=> d!851512 (= (matchR!4315 r!17423 s!11993) lt!1046407)))

(declare-fun b!3034239 () Bool)

(declare-fun res!1248248 () Bool)

(declare-fun e!1902753 () Bool)

(assert (=> b!3034239 (=> res!1248248 e!1902753)))

(assert (=> b!3034239 (= res!1248248 (not ((_ is ElementMatch!9433) r!17423)))))

(declare-fun e!1902750 () Bool)

(assert (=> b!3034239 (= e!1902750 e!1902753)))

(declare-fun b!3034240 () Bool)

(assert (=> b!3034240 (= e!1902748 (matchR!4315 (derivativeStep!2680 r!17423 (head!6739 s!11993)) (tail!4965 s!11993)))))

(declare-fun b!3034241 () Bool)

(assert (=> b!3034241 (= e!1902753 e!1902752)))

(declare-fun res!1248241 () Bool)

(assert (=> b!3034241 (=> (not res!1248241) (not e!1902752))))

(assert (=> b!3034241 (= res!1248241 (not lt!1046407))))

(declare-fun b!3034242 () Bool)

(declare-fun res!1248242 () Bool)

(assert (=> b!3034242 (=> (not res!1248242) (not e!1902749))))

(assert (=> b!3034242 (= res!1248242 (not call!206998))))

(declare-fun bm!206993 () Bool)

(assert (=> bm!206993 (= call!206998 (isEmpty!19474 s!11993))))

(declare-fun b!3034243 () Bool)

(assert (=> b!3034243 (= e!1902747 (= lt!1046407 call!206998))))

(declare-fun b!3034244 () Bool)

(assert (=> b!3034244 (= e!1902750 (not lt!1046407))))

(declare-fun b!3034245 () Bool)

(declare-fun res!1248246 () Bool)

(assert (=> b!3034245 (=> res!1248246 e!1902753)))

(assert (=> b!3034245 (= res!1248246 e!1902749)))

(declare-fun res!1248247 () Bool)

(assert (=> b!3034245 (=> (not res!1248247) (not e!1902749))))

(assert (=> b!3034245 (= res!1248247 lt!1046407)))

(declare-fun b!3034246 () Bool)

(assert (=> b!3034246 (= e!1902747 e!1902750)))

(declare-fun c!501577 () Bool)

(assert (=> b!3034246 (= c!501577 ((_ is EmptyLang!9433) r!17423))))

(assert (= (and d!851512 c!501578) b!3034237))

(assert (= (and d!851512 (not c!501578)) b!3034240))

(assert (= (and d!851512 c!501579) b!3034243))

(assert (= (and d!851512 (not c!501579)) b!3034246))

(assert (= (and b!3034246 c!501577) b!3034244))

(assert (= (and b!3034246 (not c!501577)) b!3034239))

(assert (= (and b!3034239 (not res!1248248)) b!3034245))

(assert (= (and b!3034245 res!1248247) b!3034242))

(assert (= (and b!3034242 res!1248242) b!3034235))

(assert (= (and b!3034235 res!1248244) b!3034233))

(assert (= (and b!3034245 (not res!1248246)) b!3034241))

(assert (= (and b!3034241 res!1248241) b!3034238))

(assert (= (and b!3034238 (not res!1248243)) b!3034236))

(assert (= (and b!3034236 (not res!1248245)) b!3034234))

(assert (= (or b!3034243 b!3034238 b!3034242) bm!206993))

(assert (=> d!851512 m!3369029))

(assert (=> d!851512 m!3369027))

(assert (=> b!3034240 m!3369031))

(assert (=> b!3034240 m!3369031))

(declare-fun m!3369209 () Bool)

(assert (=> b!3034240 m!3369209))

(assert (=> b!3034240 m!3369035))

(assert (=> b!3034240 m!3369209))

(assert (=> b!3034240 m!3369035))

(declare-fun m!3369211 () Bool)

(assert (=> b!3034240 m!3369211))

(assert (=> b!3034233 m!3369031))

(assert (=> b!3034235 m!3369035))

(assert (=> b!3034235 m!3369035))

(assert (=> b!3034235 m!3369039))

(assert (=> bm!206993 m!3369029))

(assert (=> b!3034234 m!3369031))

(declare-fun m!3369213 () Bool)

(assert (=> b!3034237 m!3369213))

(assert (=> b!3034236 m!3369035))

(assert (=> b!3034236 m!3369035))

(assert (=> b!3034236 m!3369039))

(assert (=> b!3033662 d!851512))

(declare-fun d!851514 () Bool)

(assert (=> d!851514 (= (matchR!4315 r!17423 s!11993) (matchRSpec!1570 r!17423 s!11993))))

(declare-fun lt!1046410 () Unit!49289)

(declare-fun choose!17995 (Regex!9433 List!35298) Unit!49289)

(assert (=> d!851514 (= lt!1046410 (choose!17995 r!17423 s!11993))))

(assert (=> d!851514 (validRegex!4166 r!17423)))

(assert (=> d!851514 (= (mainMatchTheorem!1570 r!17423 s!11993) lt!1046410)))

(declare-fun bs!530915 () Bool)

(assert (= bs!530915 d!851514))

(assert (=> bs!530915 m!3369023))

(assert (=> bs!530915 m!3369021))

(declare-fun m!3369215 () Bool)

(assert (=> bs!530915 m!3369215))

(assert (=> bs!530915 m!3369027))

(assert (=> b!3033662 d!851514))

(declare-fun b!3034247 () Bool)

(declare-fun e!1902755 () Bool)

(declare-fun call!207001 () Bool)

(assert (=> b!3034247 (= e!1902755 call!207001)))

(declare-fun b!3034248 () Bool)

(declare-fun e!1902759 () Bool)

(declare-fun e!1902757 () Bool)

(assert (=> b!3034248 (= e!1902759 e!1902757)))

(declare-fun c!501580 () Bool)

(assert (=> b!3034248 (= c!501580 ((_ is Star!9433) lt!1046327))))

(declare-fun b!3034249 () Bool)

(declare-fun res!1248253 () Bool)

(declare-fun e!1902756 () Bool)

(assert (=> b!3034249 (=> (not res!1248253) (not e!1902756))))

(declare-fun call!206999 () Bool)

(assert (=> b!3034249 (= res!1248253 call!206999)))

(declare-fun e!1902758 () Bool)

(assert (=> b!3034249 (= e!1902758 e!1902756)))

(declare-fun bm!206994 () Bool)

(declare-fun c!501581 () Bool)

(assert (=> bm!206994 (= call!206999 (validRegex!4166 (ite c!501581 (regOne!19379 lt!1046327) (regTwo!19378 lt!1046327))))))

(declare-fun b!3034250 () Bool)

(assert (=> b!3034250 (= e!1902757 e!1902755)))

(declare-fun res!1248252 () Bool)

(assert (=> b!3034250 (= res!1248252 (not (nullable!3083 (reg!9762 lt!1046327))))))

(assert (=> b!3034250 (=> (not res!1248252) (not e!1902755))))

(declare-fun bm!206995 () Bool)

(assert (=> bm!206995 (= call!207001 (validRegex!4166 (ite c!501580 (reg!9762 lt!1046327) (ite c!501581 (regTwo!19379 lt!1046327) (regOne!19378 lt!1046327)))))))

(declare-fun b!3034251 () Bool)

(declare-fun e!1902754 () Bool)

(declare-fun e!1902760 () Bool)

(assert (=> b!3034251 (= e!1902754 e!1902760)))

(declare-fun res!1248250 () Bool)

(assert (=> b!3034251 (=> (not res!1248250) (not e!1902760))))

(declare-fun call!207000 () Bool)

(assert (=> b!3034251 (= res!1248250 call!207000)))

(declare-fun bm!206996 () Bool)

(assert (=> bm!206996 (= call!207000 call!207001)))

(declare-fun d!851516 () Bool)

(declare-fun res!1248251 () Bool)

(assert (=> d!851516 (=> res!1248251 e!1902759)))

(assert (=> d!851516 (= res!1248251 ((_ is ElementMatch!9433) lt!1046327))))

(assert (=> d!851516 (= (validRegex!4166 lt!1046327) e!1902759)))

(declare-fun b!3034252 () Bool)

(declare-fun res!1248249 () Bool)

(assert (=> b!3034252 (=> res!1248249 e!1902754)))

(assert (=> b!3034252 (= res!1248249 (not ((_ is Concat!14754) lt!1046327)))))

(assert (=> b!3034252 (= e!1902758 e!1902754)))

(declare-fun b!3034253 () Bool)

(assert (=> b!3034253 (= e!1902757 e!1902758)))

(assert (=> b!3034253 (= c!501581 ((_ is Union!9433) lt!1046327))))

(declare-fun b!3034254 () Bool)

(assert (=> b!3034254 (= e!1902760 call!206999)))

(declare-fun b!3034255 () Bool)

(assert (=> b!3034255 (= e!1902756 call!207000)))

(assert (= (and d!851516 (not res!1248251)) b!3034248))

(assert (= (and b!3034248 c!501580) b!3034250))

(assert (= (and b!3034248 (not c!501580)) b!3034253))

(assert (= (and b!3034250 res!1248252) b!3034247))

(assert (= (and b!3034253 c!501581) b!3034249))

(assert (= (and b!3034253 (not c!501581)) b!3034252))

(assert (= (and b!3034249 res!1248253) b!3034255))

(assert (= (and b!3034252 (not res!1248249)) b!3034251))

(assert (= (and b!3034251 res!1248250) b!3034254))

(assert (= (or b!3034249 b!3034254) bm!206994))

(assert (= (or b!3034255 b!3034251) bm!206996))

(assert (= (or b!3034247 bm!206996) bm!206995))

(declare-fun m!3369217 () Bool)

(assert (=> bm!206994 m!3369217))

(declare-fun m!3369219 () Bool)

(assert (=> b!3034250 m!3369219))

(declare-fun m!3369221 () Bool)

(assert (=> bm!206995 m!3369221))

(assert (=> b!3033661 d!851516))

(declare-fun b!3034256 () Bool)

(declare-fun e!1902762 () Bool)

(declare-fun call!207004 () Bool)

(assert (=> b!3034256 (= e!1902762 call!207004)))

(declare-fun b!3034257 () Bool)

(declare-fun e!1902766 () Bool)

(declare-fun e!1902764 () Bool)

(assert (=> b!3034257 (= e!1902766 e!1902764)))

(declare-fun c!501582 () Bool)

(assert (=> b!3034257 (= c!501582 ((_ is Star!9433) r!17423))))

(declare-fun b!3034258 () Bool)

(declare-fun res!1248258 () Bool)

(declare-fun e!1902763 () Bool)

(assert (=> b!3034258 (=> (not res!1248258) (not e!1902763))))

(declare-fun call!207002 () Bool)

(assert (=> b!3034258 (= res!1248258 call!207002)))

(declare-fun e!1902765 () Bool)

(assert (=> b!3034258 (= e!1902765 e!1902763)))

(declare-fun bm!206997 () Bool)

(declare-fun c!501583 () Bool)

(assert (=> bm!206997 (= call!207002 (validRegex!4166 (ite c!501583 (regOne!19379 r!17423) (regTwo!19378 r!17423))))))

(declare-fun b!3034259 () Bool)

(assert (=> b!3034259 (= e!1902764 e!1902762)))

(declare-fun res!1248257 () Bool)

(assert (=> b!3034259 (= res!1248257 (not (nullable!3083 (reg!9762 r!17423))))))

(assert (=> b!3034259 (=> (not res!1248257) (not e!1902762))))

(declare-fun bm!206998 () Bool)

(assert (=> bm!206998 (= call!207004 (validRegex!4166 (ite c!501582 (reg!9762 r!17423) (ite c!501583 (regTwo!19379 r!17423) (regOne!19378 r!17423)))))))

(declare-fun b!3034260 () Bool)

(declare-fun e!1902761 () Bool)

(declare-fun e!1902767 () Bool)

(assert (=> b!3034260 (= e!1902761 e!1902767)))

(declare-fun res!1248255 () Bool)

(assert (=> b!3034260 (=> (not res!1248255) (not e!1902767))))

(declare-fun call!207003 () Bool)

(assert (=> b!3034260 (= res!1248255 call!207003)))

(declare-fun bm!206999 () Bool)

(assert (=> bm!206999 (= call!207003 call!207004)))

(declare-fun d!851518 () Bool)

(declare-fun res!1248256 () Bool)

(assert (=> d!851518 (=> res!1248256 e!1902766)))

(assert (=> d!851518 (= res!1248256 ((_ is ElementMatch!9433) r!17423))))

(assert (=> d!851518 (= (validRegex!4166 r!17423) e!1902766)))

(declare-fun b!3034261 () Bool)

(declare-fun res!1248254 () Bool)

(assert (=> b!3034261 (=> res!1248254 e!1902761)))

(assert (=> b!3034261 (= res!1248254 (not ((_ is Concat!14754) r!17423)))))

(assert (=> b!3034261 (= e!1902765 e!1902761)))

(declare-fun b!3034262 () Bool)

(assert (=> b!3034262 (= e!1902764 e!1902765)))

(assert (=> b!3034262 (= c!501583 ((_ is Union!9433) r!17423))))

(declare-fun b!3034263 () Bool)

(assert (=> b!3034263 (= e!1902767 call!207002)))

(declare-fun b!3034264 () Bool)

(assert (=> b!3034264 (= e!1902763 call!207003)))

(assert (= (and d!851518 (not res!1248256)) b!3034257))

(assert (= (and b!3034257 c!501582) b!3034259))

(assert (= (and b!3034257 (not c!501582)) b!3034262))

(assert (= (and b!3034259 res!1248257) b!3034256))

(assert (= (and b!3034262 c!501583) b!3034258))

(assert (= (and b!3034262 (not c!501583)) b!3034261))

(assert (= (and b!3034258 res!1248258) b!3034264))

(assert (= (and b!3034261 (not res!1248254)) b!3034260))

(assert (= (and b!3034260 res!1248255) b!3034263))

(assert (= (or b!3034258 b!3034263) bm!206997))

(assert (= (or b!3034264 b!3034260) bm!206999))

(assert (= (or b!3034256 bm!206999) bm!206998))

(declare-fun m!3369223 () Bool)

(assert (=> bm!206997 m!3369223))

(declare-fun m!3369225 () Bool)

(assert (=> b!3034259 m!3369225))

(declare-fun m!3369227 () Bool)

(assert (=> bm!206998 m!3369227))

(assert (=> start!290928 d!851518))

(declare-fun b!3034276 () Bool)

(declare-fun e!1902770 () Bool)

(declare-fun tp!961250 () Bool)

(declare-fun tp!961248 () Bool)

(assert (=> b!3034276 (= e!1902770 (and tp!961250 tp!961248))))

(assert (=> b!3033664 (= tp!961193 e!1902770)))

(declare-fun b!3034275 () Bool)

(assert (=> b!3034275 (= e!1902770 tp_is_empty!16429)))

(declare-fun b!3034278 () Bool)

(declare-fun tp!961247 () Bool)

(declare-fun tp!961246 () Bool)

(assert (=> b!3034278 (= e!1902770 (and tp!961247 tp!961246))))

(declare-fun b!3034277 () Bool)

(declare-fun tp!961249 () Bool)

(assert (=> b!3034277 (= e!1902770 tp!961249)))

(assert (= (and b!3033664 ((_ is ElementMatch!9433) (reg!9762 r!17423))) b!3034275))

(assert (= (and b!3033664 ((_ is Concat!14754) (reg!9762 r!17423))) b!3034276))

(assert (= (and b!3033664 ((_ is Star!9433) (reg!9762 r!17423))) b!3034277))

(assert (= (and b!3033664 ((_ is Union!9433) (reg!9762 r!17423))) b!3034278))

(declare-fun b!3034280 () Bool)

(declare-fun e!1902771 () Bool)

(declare-fun tp!961255 () Bool)

(declare-fun tp!961253 () Bool)

(assert (=> b!3034280 (= e!1902771 (and tp!961255 tp!961253))))

(assert (=> b!3033657 (= tp!961192 e!1902771)))

(declare-fun b!3034279 () Bool)

(assert (=> b!3034279 (= e!1902771 tp_is_empty!16429)))

(declare-fun b!3034282 () Bool)

(declare-fun tp!961252 () Bool)

(declare-fun tp!961251 () Bool)

(assert (=> b!3034282 (= e!1902771 (and tp!961252 tp!961251))))

(declare-fun b!3034281 () Bool)

(declare-fun tp!961254 () Bool)

(assert (=> b!3034281 (= e!1902771 tp!961254)))

(assert (= (and b!3033657 ((_ is ElementMatch!9433) (regOne!19379 r!17423))) b!3034279))

(assert (= (and b!3033657 ((_ is Concat!14754) (regOne!19379 r!17423))) b!3034280))

(assert (= (and b!3033657 ((_ is Star!9433) (regOne!19379 r!17423))) b!3034281))

(assert (= (and b!3033657 ((_ is Union!9433) (regOne!19379 r!17423))) b!3034282))

(declare-fun b!3034284 () Bool)

(declare-fun e!1902772 () Bool)

(declare-fun tp!961260 () Bool)

(declare-fun tp!961258 () Bool)

(assert (=> b!3034284 (= e!1902772 (and tp!961260 tp!961258))))

(assert (=> b!3033657 (= tp!961196 e!1902772)))

(declare-fun b!3034283 () Bool)

(assert (=> b!3034283 (= e!1902772 tp_is_empty!16429)))

(declare-fun b!3034286 () Bool)

(declare-fun tp!961257 () Bool)

(declare-fun tp!961256 () Bool)

(assert (=> b!3034286 (= e!1902772 (and tp!961257 tp!961256))))

(declare-fun b!3034285 () Bool)

(declare-fun tp!961259 () Bool)

(assert (=> b!3034285 (= e!1902772 tp!961259)))

(assert (= (and b!3033657 ((_ is ElementMatch!9433) (regTwo!19379 r!17423))) b!3034283))

(assert (= (and b!3033657 ((_ is Concat!14754) (regTwo!19379 r!17423))) b!3034284))

(assert (= (and b!3033657 ((_ is Star!9433) (regTwo!19379 r!17423))) b!3034285))

(assert (= (and b!3033657 ((_ is Union!9433) (regTwo!19379 r!17423))) b!3034286))

(declare-fun b!3034288 () Bool)

(declare-fun e!1902773 () Bool)

(declare-fun tp!961265 () Bool)

(declare-fun tp!961263 () Bool)

(assert (=> b!3034288 (= e!1902773 (and tp!961265 tp!961263))))

(assert (=> b!3033656 (= tp!961195 e!1902773)))

(declare-fun b!3034287 () Bool)

(assert (=> b!3034287 (= e!1902773 tp_is_empty!16429)))

(declare-fun b!3034290 () Bool)

(declare-fun tp!961262 () Bool)

(declare-fun tp!961261 () Bool)

(assert (=> b!3034290 (= e!1902773 (and tp!961262 tp!961261))))

(declare-fun b!3034289 () Bool)

(declare-fun tp!961264 () Bool)

(assert (=> b!3034289 (= e!1902773 tp!961264)))

(assert (= (and b!3033656 ((_ is ElementMatch!9433) (regOne!19378 r!17423))) b!3034287))

(assert (= (and b!3033656 ((_ is Concat!14754) (regOne!19378 r!17423))) b!3034288))

(assert (= (and b!3033656 ((_ is Star!9433) (regOne!19378 r!17423))) b!3034289))

(assert (= (and b!3033656 ((_ is Union!9433) (regOne!19378 r!17423))) b!3034290))

(declare-fun b!3034292 () Bool)

(declare-fun e!1902774 () Bool)

(declare-fun tp!961270 () Bool)

(declare-fun tp!961268 () Bool)

(assert (=> b!3034292 (= e!1902774 (and tp!961270 tp!961268))))

(assert (=> b!3033656 (= tp!961194 e!1902774)))

(declare-fun b!3034291 () Bool)

(assert (=> b!3034291 (= e!1902774 tp_is_empty!16429)))

(declare-fun b!3034294 () Bool)

(declare-fun tp!961267 () Bool)

(declare-fun tp!961266 () Bool)

(assert (=> b!3034294 (= e!1902774 (and tp!961267 tp!961266))))

(declare-fun b!3034293 () Bool)

(declare-fun tp!961269 () Bool)

(assert (=> b!3034293 (= e!1902774 tp!961269)))

(assert (= (and b!3033656 ((_ is ElementMatch!9433) (regTwo!19378 r!17423))) b!3034291))

(assert (= (and b!3033656 ((_ is Concat!14754) (regTwo!19378 r!17423))) b!3034292))

(assert (= (and b!3033656 ((_ is Star!9433) (regTwo!19378 r!17423))) b!3034293))

(assert (= (and b!3033656 ((_ is Union!9433) (regTwo!19378 r!17423))) b!3034294))

(declare-fun b!3034299 () Bool)

(declare-fun e!1902777 () Bool)

(declare-fun tp!961273 () Bool)

(assert (=> b!3034299 (= e!1902777 (and tp_is_empty!16429 tp!961273))))

(assert (=> b!3033655 (= tp!961197 e!1902777)))

(assert (= (and b!3033655 ((_ is Cons!35174) (t!234363 s!11993))) b!3034299))

(check-sat (not b!3033740) (not bm!206998) (not b!3033729) (not bm!206914) (not bm!206915) (not b!3034259) (not b!3034278) (not b!3034284) (not b!3034237) (not b!3034240) (not bm!206991) (not b!3033739) (not d!851512) (not d!851472) (not b!3034288) (not bm!206928) (not bm!206929) (not bm!206925) (not b!3034276) (not bm!206895) (not b!3033867) (not b!3034220) (not b!3034289) (not bm!206932) (not bm!206992) (not b!3033738) (not b!3034281) (not b!3033908) (not b!3033885) (not b!3034235) (not d!851514) (not b!3034293) (not b!3034290) (not d!851488) (not b!3033851) (not b!3033724) (not b!3033869) (not bm!206993) (not b!3033862) (not b!3034286) (not b!3033726) (not b!3033737) (not b!3033871) (not bm!206892) (not d!851480) (not b!3033743) (not bm!206931) (not bm!206997) (not b!3034277) (not b!3033870) (not b!3033934) (not b!3034282) (not d!851482) (not b!3033868) (not b!3033736) (not b!3034280) (not bm!206995) (not b!3034299) (not bm!206918) (not b!3034292) (not d!851484) (not bm!206917) (not b!3034285) (not bm!206911) (not b!3033725) (not d!851474) (not b!3034234) (not b!3033874) (not b!3034294) (not bm!206934) (not b!3033722) (not b!3033923) (not b!3033723) (not b!3034250) (not b!3034219) tp_is_empty!16429 (not b!3034236) (not bm!206912) (not b!3033886) (not bm!206994) (not d!851468) (not bm!206926) (not b!3034233))
(check-sat)
