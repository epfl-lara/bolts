; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247356 () Bool)

(assert start!247356)

(declare-fun b!2549729 () Bool)

(declare-fun e!1611339 () Bool)

(declare-fun tp!813510 () Bool)

(declare-fun tp!813513 () Bool)

(assert (=> b!2549729 (= e!1611339 (and tp!813510 tp!813513))))

(declare-fun b!2549730 () Bool)

(declare-fun tp!813509 () Bool)

(assert (=> b!2549730 (= e!1611339 tp!813509)))

(declare-fun b!2549731 () Bool)

(declare-fun res!1074132 () Bool)

(declare-fun e!1611340 () Bool)

(assert (=> b!2549731 (=> (not res!1074132) (not e!1611340))))

(declare-datatypes ((C!15352 0))(
  ( (C!15353 (val!9328 Int)) )
))
(declare-datatypes ((List!29662 0))(
  ( (Nil!29562) (Cons!29562 (h!34982 C!15352) (t!211361 List!29662)) )
))
(declare-fun tl!4068 () List!29662)

(declare-datatypes ((Regex!7597 0))(
  ( (ElementMatch!7597 (c!408703 C!15352)) (Concat!12293 (regOne!15706 Regex!7597) (regTwo!15706 Regex!7597)) (EmptyExpr!7597) (Star!7597 (reg!7926 Regex!7597)) (EmptyLang!7597) (Union!7597 (regOne!15707 Regex!7597) (regTwo!15707 Regex!7597)) )
))
(declare-fun r!27340 () Regex!7597)

(declare-fun c!14016 () C!15352)

(declare-fun nullable!2514 (Regex!7597) Bool)

(declare-fun derivative!292 (Regex!7597 List!29662) Regex!7597)

(declare-fun derivativeStep!2166 (Regex!7597 C!15352) Regex!7597)

(assert (=> b!2549731 (= res!1074132 (nullable!2514 (derivative!292 (derivativeStep!2166 r!27340 c!14016) tl!4068)))))

(declare-fun b!2549732 () Bool)

(declare-fun tp_is_empty!13049 () Bool)

(assert (=> b!2549732 (= e!1611339 tp_is_empty!13049)))

(declare-fun b!2549733 () Bool)

(declare-fun e!1611342 () Bool)

(declare-fun tp!813512 () Bool)

(assert (=> b!2549733 (= e!1611342 (and tp_is_empty!13049 tp!813512))))

(declare-fun b!2549734 () Bool)

(declare-fun e!1611341 () Bool)

(declare-fun lt!903255 () Regex!7597)

(declare-fun validRegex!3223 (Regex!7597) Bool)

(assert (=> b!2549734 (= e!1611341 (validRegex!3223 lt!903255))))

(declare-fun b!2549735 () Bool)

(assert (=> b!2549735 (= e!1611340 (not e!1611341))))

(declare-fun res!1074131 () Bool)

(assert (=> b!2549735 (=> (not res!1074131) (not e!1611341))))

(declare-fun lt!903257 () Regex!7597)

(assert (=> b!2549735 (= res!1074131 (validRegex!3223 lt!903257))))

(declare-fun lt!903256 () Regex!7597)

(declare-fun matchR!3542 (Regex!7597 List!29662) Bool)

(assert (=> b!2549735 (= (matchR!3542 lt!903256 tl!4068) (matchR!3542 (derivative!292 lt!903256 tl!4068) Nil!29562))))

(declare-datatypes ((Unit!43379 0))(
  ( (Unit!43380) )
))
(declare-fun lt!903258 () Unit!43379)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!188 (Regex!7597 List!29662) Unit!43379)

(assert (=> b!2549735 (= lt!903258 (lemmaMatchRIsSameAsWholeDerivativeAndNil!188 lt!903256 tl!4068))))

(assert (=> b!2549735 (= lt!903256 (Union!7597 lt!903257 lt!903255))))

(assert (=> b!2549735 (= lt!903255 (derivativeStep!2166 (regTwo!15706 r!27340) c!14016))))

(assert (=> b!2549735 (= lt!903257 (Concat!12293 (derivativeStep!2166 (regOne!15706 r!27340) c!14016) (regTwo!15706 r!27340)))))

(declare-fun b!2549736 () Bool)

(declare-fun tp!813514 () Bool)

(declare-fun tp!813511 () Bool)

(assert (=> b!2549736 (= e!1611339 (and tp!813514 tp!813511))))

(declare-fun res!1074129 () Bool)

(assert (=> start!247356 (=> (not res!1074129) (not e!1611340))))

(assert (=> start!247356 (= res!1074129 (validRegex!3223 r!27340))))

(assert (=> start!247356 e!1611340))

(assert (=> start!247356 e!1611339))

(assert (=> start!247356 tp_is_empty!13049))

(assert (=> start!247356 e!1611342))

(declare-fun b!2549737 () Bool)

(declare-fun res!1074128 () Bool)

(assert (=> b!2549737 (=> (not res!1074128) (not e!1611340))))

(assert (=> b!2549737 (= res!1074128 (nullable!2514 (regOne!15706 r!27340)))))

(declare-fun b!2549738 () Bool)

(declare-fun res!1074130 () Bool)

(assert (=> b!2549738 (=> (not res!1074130) (not e!1611340))))

(get-info :version)

(assert (=> b!2549738 (= res!1074130 (and (not ((_ is EmptyExpr!7597) r!27340)) (not ((_ is EmptyLang!7597) r!27340)) (not ((_ is ElementMatch!7597) r!27340)) (not ((_ is Union!7597) r!27340)) (not ((_ is Star!7597) r!27340))))))

(assert (= (and start!247356 res!1074129) b!2549731))

(assert (= (and b!2549731 res!1074132) b!2549738))

(assert (= (and b!2549738 res!1074130) b!2549737))

(assert (= (and b!2549737 res!1074128) b!2549735))

(assert (= (and b!2549735 res!1074131) b!2549734))

(assert (= (and start!247356 ((_ is ElementMatch!7597) r!27340)) b!2549732))

(assert (= (and start!247356 ((_ is Concat!12293) r!27340)) b!2549736))

(assert (= (and start!247356 ((_ is Star!7597) r!27340)) b!2549730))

(assert (= (and start!247356 ((_ is Union!7597) r!27340)) b!2549729))

(assert (= (and start!247356 ((_ is Cons!29562) tl!4068)) b!2549733))

(declare-fun m!2893451 () Bool)

(assert (=> start!247356 m!2893451))

(declare-fun m!2893453 () Bool)

(assert (=> b!2549735 m!2893453))

(declare-fun m!2893455 () Bool)

(assert (=> b!2549735 m!2893455))

(declare-fun m!2893457 () Bool)

(assert (=> b!2549735 m!2893457))

(assert (=> b!2549735 m!2893457))

(declare-fun m!2893459 () Bool)

(assert (=> b!2549735 m!2893459))

(declare-fun m!2893461 () Bool)

(assert (=> b!2549735 m!2893461))

(declare-fun m!2893463 () Bool)

(assert (=> b!2549735 m!2893463))

(declare-fun m!2893465 () Bool)

(assert (=> b!2549735 m!2893465))

(declare-fun m!2893467 () Bool)

(assert (=> b!2549737 m!2893467))

(declare-fun m!2893469 () Bool)

(assert (=> b!2549734 m!2893469))

(declare-fun m!2893471 () Bool)

(assert (=> b!2549731 m!2893471))

(assert (=> b!2549731 m!2893471))

(declare-fun m!2893473 () Bool)

(assert (=> b!2549731 m!2893473))

(assert (=> b!2549731 m!2893473))

(declare-fun m!2893475 () Bool)

(assert (=> b!2549731 m!2893475))

(check-sat (not b!2549734) (not b!2549731) (not b!2549735) (not b!2549729) (not b!2549733) tp_is_empty!13049 (not b!2549737) (not b!2549730) (not b!2549736) (not start!247356))
(check-sat)
(get-model)

(declare-fun d!723116 () Bool)

(assert (=> d!723116 (= (matchR!3542 lt!903256 tl!4068) (matchR!3542 (derivative!292 lt!903256 tl!4068) Nil!29562))))

(declare-fun lt!903261 () Unit!43379)

(declare-fun choose!15056 (Regex!7597 List!29662) Unit!43379)

(assert (=> d!723116 (= lt!903261 (choose!15056 lt!903256 tl!4068))))

(assert (=> d!723116 (validRegex!3223 lt!903256)))

(assert (=> d!723116 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!188 lt!903256 tl!4068) lt!903261)))

(declare-fun bs!469594 () Bool)

(assert (= bs!469594 d!723116))

(assert (=> bs!469594 m!2893457))

(assert (=> bs!469594 m!2893459))

(declare-fun m!2893477 () Bool)

(assert (=> bs!469594 m!2893477))

(declare-fun m!2893479 () Bool)

(assert (=> bs!469594 m!2893479))

(assert (=> bs!469594 m!2893457))

(assert (=> bs!469594 m!2893465))

(assert (=> b!2549735 d!723116))

(declare-fun d!723120 () Bool)

(declare-fun lt!903264 () Regex!7597)

(assert (=> d!723120 (validRegex!3223 lt!903264)))

(declare-fun e!1611359 () Regex!7597)

(assert (=> d!723120 (= lt!903264 e!1611359)))

(declare-fun c!408710 () Bool)

(assert (=> d!723120 (= c!408710 ((_ is Cons!29562) tl!4068))))

(assert (=> d!723120 (validRegex!3223 lt!903256)))

(assert (=> d!723120 (= (derivative!292 lt!903256 tl!4068) lt!903264)))

(declare-fun b!2549761 () Bool)

(assert (=> b!2549761 (= e!1611359 (derivative!292 (derivativeStep!2166 lt!903256 (h!34982 tl!4068)) (t!211361 tl!4068)))))

(declare-fun b!2549762 () Bool)

(assert (=> b!2549762 (= e!1611359 lt!903256)))

(assert (= (and d!723120 c!408710) b!2549761))

(assert (= (and d!723120 (not c!408710)) b!2549762))

(declare-fun m!2893481 () Bool)

(assert (=> d!723120 m!2893481))

(assert (=> d!723120 m!2893479))

(declare-fun m!2893483 () Bool)

(assert (=> b!2549761 m!2893483))

(assert (=> b!2549761 m!2893483))

(declare-fun m!2893485 () Bool)

(assert (=> b!2549761 m!2893485))

(assert (=> b!2549735 d!723120))

(declare-fun b!2549815 () Bool)

(declare-fun res!1074172 () Bool)

(declare-fun e!1611391 () Bool)

(assert (=> b!2549815 (=> res!1074172 e!1611391)))

(assert (=> b!2549815 (= res!1074172 (not ((_ is ElementMatch!7597) lt!903256)))))

(declare-fun e!1611394 () Bool)

(assert (=> b!2549815 (= e!1611394 e!1611391)))

(declare-fun b!2549816 () Bool)

(declare-fun e!1611395 () Bool)

(assert (=> b!2549816 (= e!1611395 (nullable!2514 lt!903256))))

(declare-fun b!2549818 () Bool)

(declare-fun lt!903273 () Bool)

(assert (=> b!2549818 (= e!1611394 (not lt!903273))))

(declare-fun b!2549819 () Bool)

(declare-fun e!1611397 () Bool)

(declare-fun head!5803 (List!29662) C!15352)

(assert (=> b!2549819 (= e!1611397 (not (= (head!5803 tl!4068) (c!408703 lt!903256))))))

(declare-fun b!2549820 () Bool)

(declare-fun e!1611393 () Bool)

(declare-fun call!162116 () Bool)

(assert (=> b!2549820 (= e!1611393 (= lt!903273 call!162116))))

(declare-fun b!2549821 () Bool)

(declare-fun res!1074171 () Bool)

(assert (=> b!2549821 (=> res!1074171 e!1611397)))

(declare-fun isEmpty!17009 (List!29662) Bool)

(declare-fun tail!4078 (List!29662) List!29662)

(assert (=> b!2549821 (= res!1074171 (not (isEmpty!17009 (tail!4078 tl!4068))))))

(declare-fun b!2549822 () Bool)

(declare-fun e!1611396 () Bool)

(assert (=> b!2549822 (= e!1611396 e!1611397)))

(declare-fun res!1074174 () Bool)

(assert (=> b!2549822 (=> res!1074174 e!1611397)))

(assert (=> b!2549822 (= res!1074174 call!162116)))

(declare-fun b!2549823 () Bool)

(declare-fun e!1611392 () Bool)

(assert (=> b!2549823 (= e!1611392 (= (head!5803 tl!4068) (c!408703 lt!903256)))))

(declare-fun b!2549824 () Bool)

(assert (=> b!2549824 (= e!1611393 e!1611394)))

(declare-fun c!408724 () Bool)

(assert (=> b!2549824 (= c!408724 ((_ is EmptyLang!7597) lt!903256))))

(declare-fun b!2549825 () Bool)

(declare-fun res!1074175 () Bool)

(assert (=> b!2549825 (=> (not res!1074175) (not e!1611392))))

(assert (=> b!2549825 (= res!1074175 (not call!162116))))

(declare-fun bm!162111 () Bool)

(assert (=> bm!162111 (= call!162116 (isEmpty!17009 tl!4068))))

(declare-fun b!2549826 () Bool)

(declare-fun res!1074170 () Bool)

(assert (=> b!2549826 (=> (not res!1074170) (not e!1611392))))

(assert (=> b!2549826 (= res!1074170 (isEmpty!17009 (tail!4078 tl!4068)))))

(declare-fun b!2549817 () Bool)

(assert (=> b!2549817 (= e!1611395 (matchR!3542 (derivativeStep!2166 lt!903256 (head!5803 tl!4068)) (tail!4078 tl!4068)))))

(declare-fun d!723122 () Bool)

(assert (=> d!723122 e!1611393))

(declare-fun c!408725 () Bool)

(assert (=> d!723122 (= c!408725 ((_ is EmptyExpr!7597) lt!903256))))

(assert (=> d!723122 (= lt!903273 e!1611395)))

(declare-fun c!408726 () Bool)

(assert (=> d!723122 (= c!408726 (isEmpty!17009 tl!4068))))

(assert (=> d!723122 (validRegex!3223 lt!903256)))

(assert (=> d!723122 (= (matchR!3542 lt!903256 tl!4068) lt!903273)))

(declare-fun b!2549827 () Bool)

(assert (=> b!2549827 (= e!1611391 e!1611396)))

(declare-fun res!1074169 () Bool)

(assert (=> b!2549827 (=> (not res!1074169) (not e!1611396))))

(assert (=> b!2549827 (= res!1074169 (not lt!903273))))

(declare-fun b!2549828 () Bool)

(declare-fun res!1074173 () Bool)

(assert (=> b!2549828 (=> res!1074173 e!1611391)))

(assert (=> b!2549828 (= res!1074173 e!1611392)))

(declare-fun res!1074176 () Bool)

(assert (=> b!2549828 (=> (not res!1074176) (not e!1611392))))

(assert (=> b!2549828 (= res!1074176 lt!903273)))

(assert (= (and d!723122 c!408726) b!2549816))

(assert (= (and d!723122 (not c!408726)) b!2549817))

(assert (= (and d!723122 c!408725) b!2549820))

(assert (= (and d!723122 (not c!408725)) b!2549824))

(assert (= (and b!2549824 c!408724) b!2549818))

(assert (= (and b!2549824 (not c!408724)) b!2549815))

(assert (= (and b!2549815 (not res!1074172)) b!2549828))

(assert (= (and b!2549828 res!1074176) b!2549825))

(assert (= (and b!2549825 res!1074175) b!2549826))

(assert (= (and b!2549826 res!1074170) b!2549823))

(assert (= (and b!2549828 (not res!1074173)) b!2549827))

(assert (= (and b!2549827 res!1074169) b!2549822))

(assert (= (and b!2549822 (not res!1074174)) b!2549821))

(assert (= (and b!2549821 (not res!1074171)) b!2549819))

(assert (= (or b!2549820 b!2549822 b!2549825) bm!162111))

(declare-fun m!2893509 () Bool)

(assert (=> bm!162111 m!2893509))

(declare-fun m!2893511 () Bool)

(assert (=> b!2549823 m!2893511))

(declare-fun m!2893513 () Bool)

(assert (=> b!2549826 m!2893513))

(assert (=> b!2549826 m!2893513))

(declare-fun m!2893515 () Bool)

(assert (=> b!2549826 m!2893515))

(declare-fun m!2893517 () Bool)

(assert (=> b!2549816 m!2893517))

(assert (=> b!2549817 m!2893511))

(assert (=> b!2549817 m!2893511))

(declare-fun m!2893519 () Bool)

(assert (=> b!2549817 m!2893519))

(assert (=> b!2549817 m!2893513))

(assert (=> b!2549817 m!2893519))

(assert (=> b!2549817 m!2893513))

(declare-fun m!2893521 () Bool)

(assert (=> b!2549817 m!2893521))

(assert (=> d!723122 m!2893509))

(assert (=> d!723122 m!2893479))

(assert (=> b!2549821 m!2893513))

(assert (=> b!2549821 m!2893513))

(assert (=> b!2549821 m!2893515))

(assert (=> b!2549819 m!2893511))

(assert (=> b!2549735 d!723122))

(declare-fun b!2549889 () Bool)

(declare-fun e!1611430 () Regex!7597)

(declare-fun call!162141 () Regex!7597)

(assert (=> b!2549889 (= e!1611430 (Concat!12293 call!162141 (regTwo!15706 r!27340)))))

(declare-fun b!2549890 () Bool)

(declare-fun e!1611432 () Regex!7597)

(assert (=> b!2549890 (= e!1611432 e!1611430)))

(declare-fun c!408761 () Bool)

(assert (=> b!2549890 (= c!408761 ((_ is Star!7597) (regTwo!15706 r!27340)))))

(declare-fun bm!162136 () Bool)

(declare-fun call!162142 () Regex!7597)

(assert (=> bm!162136 (= call!162142 call!162141)))

(declare-fun b!2549891 () Bool)

(declare-fun call!162143 () Regex!7597)

(declare-fun call!162144 () Regex!7597)

(assert (=> b!2549891 (= e!1611432 (Union!7597 call!162143 call!162144))))

(declare-fun b!2549892 () Bool)

(declare-fun c!408757 () Bool)

(assert (=> b!2549892 (= c!408757 ((_ is Union!7597) (regTwo!15706 r!27340)))))

(declare-fun e!1611429 () Regex!7597)

(assert (=> b!2549892 (= e!1611429 e!1611432)))

(declare-fun bm!162137 () Bool)

(assert (=> bm!162137 (= call!162141 call!162143)))

(declare-fun e!1611428 () Regex!7597)

(declare-fun b!2549893 () Bool)

(assert (=> b!2549893 (= e!1611428 (Union!7597 (Concat!12293 call!162142 (regTwo!15706 (regTwo!15706 r!27340))) call!162144))))

(declare-fun b!2549894 () Bool)

(declare-fun c!408760 () Bool)

(assert (=> b!2549894 (= c!408760 (nullable!2514 (regOne!15706 (regTwo!15706 r!27340))))))

(assert (=> b!2549894 (= e!1611430 e!1611428)))

(declare-fun bm!162138 () Bool)

(assert (=> bm!162138 (= call!162143 (derivativeStep!2166 (ite c!408757 (regOne!15707 (regTwo!15706 r!27340)) (ite c!408761 (reg!7926 (regTwo!15706 r!27340)) (regOne!15706 (regTwo!15706 r!27340)))) c!14016))))

(declare-fun b!2549895 () Bool)

(assert (=> b!2549895 (= e!1611428 (Union!7597 (Concat!12293 call!162142 (regTwo!15706 (regTwo!15706 r!27340))) EmptyLang!7597))))

(declare-fun b!2549896 () Bool)

(declare-fun e!1611431 () Regex!7597)

(assert (=> b!2549896 (= e!1611431 EmptyLang!7597)))

(declare-fun bm!162139 () Bool)

(assert (=> bm!162139 (= call!162144 (derivativeStep!2166 (ite c!408757 (regTwo!15707 (regTwo!15706 r!27340)) (regTwo!15706 (regTwo!15706 r!27340))) c!14016))))

(declare-fun d!723132 () Bool)

(declare-fun lt!903280 () Regex!7597)

(assert (=> d!723132 (validRegex!3223 lt!903280)))

(assert (=> d!723132 (= lt!903280 e!1611431)))

(declare-fun c!408759 () Bool)

(assert (=> d!723132 (= c!408759 (or ((_ is EmptyExpr!7597) (regTwo!15706 r!27340)) ((_ is EmptyLang!7597) (regTwo!15706 r!27340))))))

(assert (=> d!723132 (validRegex!3223 (regTwo!15706 r!27340))))

(assert (=> d!723132 (= (derivativeStep!2166 (regTwo!15706 r!27340) c!14016) lt!903280)))

(declare-fun b!2549897 () Bool)

(assert (=> b!2549897 (= e!1611431 e!1611429)))

(declare-fun c!408758 () Bool)

(assert (=> b!2549897 (= c!408758 ((_ is ElementMatch!7597) (regTwo!15706 r!27340)))))

(declare-fun b!2549898 () Bool)

(assert (=> b!2549898 (= e!1611429 (ite (= c!14016 (c!408703 (regTwo!15706 r!27340))) EmptyExpr!7597 EmptyLang!7597))))

(assert (= (and d!723132 c!408759) b!2549896))

(assert (= (and d!723132 (not c!408759)) b!2549897))

(assert (= (and b!2549897 c!408758) b!2549898))

(assert (= (and b!2549897 (not c!408758)) b!2549892))

(assert (= (and b!2549892 c!408757) b!2549891))

(assert (= (and b!2549892 (not c!408757)) b!2549890))

(assert (= (and b!2549890 c!408761) b!2549889))

(assert (= (and b!2549890 (not c!408761)) b!2549894))

(assert (= (and b!2549894 c!408760) b!2549893))

(assert (= (and b!2549894 (not c!408760)) b!2549895))

(assert (= (or b!2549893 b!2549895) bm!162136))

(assert (= (or b!2549889 bm!162136) bm!162137))

(assert (= (or b!2549891 b!2549893) bm!162139))

(assert (= (or b!2549891 bm!162137) bm!162138))

(declare-fun m!2893543 () Bool)

(assert (=> b!2549894 m!2893543))

(declare-fun m!2893545 () Bool)

(assert (=> bm!162138 m!2893545))

(declare-fun m!2893547 () Bool)

(assert (=> bm!162139 m!2893547))

(declare-fun m!2893549 () Bool)

(assert (=> d!723132 m!2893549))

(declare-fun m!2893551 () Bool)

(assert (=> d!723132 m!2893551))

(assert (=> b!2549735 d!723132))

(declare-fun b!2549899 () Bool)

(declare-fun e!1611435 () Regex!7597)

(declare-fun call!162145 () Regex!7597)

(assert (=> b!2549899 (= e!1611435 (Concat!12293 call!162145 (regOne!15706 r!27340)))))

(declare-fun b!2549900 () Bool)

(declare-fun e!1611437 () Regex!7597)

(assert (=> b!2549900 (= e!1611437 e!1611435)))

(declare-fun c!408766 () Bool)

(assert (=> b!2549900 (= c!408766 ((_ is Star!7597) (regOne!15706 r!27340)))))

(declare-fun bm!162140 () Bool)

(declare-fun call!162146 () Regex!7597)

(assert (=> bm!162140 (= call!162146 call!162145)))

(declare-fun b!2549901 () Bool)

(declare-fun call!162147 () Regex!7597)

(declare-fun call!162148 () Regex!7597)

(assert (=> b!2549901 (= e!1611437 (Union!7597 call!162147 call!162148))))

(declare-fun b!2549902 () Bool)

(declare-fun c!408762 () Bool)

(assert (=> b!2549902 (= c!408762 ((_ is Union!7597) (regOne!15706 r!27340)))))

(declare-fun e!1611434 () Regex!7597)

(assert (=> b!2549902 (= e!1611434 e!1611437)))

(declare-fun bm!162141 () Bool)

(assert (=> bm!162141 (= call!162145 call!162147)))

(declare-fun b!2549903 () Bool)

(declare-fun e!1611433 () Regex!7597)

(assert (=> b!2549903 (= e!1611433 (Union!7597 (Concat!12293 call!162146 (regTwo!15706 (regOne!15706 r!27340))) call!162148))))

(declare-fun b!2549904 () Bool)

(declare-fun c!408765 () Bool)

(assert (=> b!2549904 (= c!408765 (nullable!2514 (regOne!15706 (regOne!15706 r!27340))))))

(assert (=> b!2549904 (= e!1611435 e!1611433)))

(declare-fun bm!162142 () Bool)

(assert (=> bm!162142 (= call!162147 (derivativeStep!2166 (ite c!408762 (regOne!15707 (regOne!15706 r!27340)) (ite c!408766 (reg!7926 (regOne!15706 r!27340)) (regOne!15706 (regOne!15706 r!27340)))) c!14016))))

(declare-fun b!2549905 () Bool)

(assert (=> b!2549905 (= e!1611433 (Union!7597 (Concat!12293 call!162146 (regTwo!15706 (regOne!15706 r!27340))) EmptyLang!7597))))

(declare-fun b!2549906 () Bool)

(declare-fun e!1611436 () Regex!7597)

(assert (=> b!2549906 (= e!1611436 EmptyLang!7597)))

(declare-fun bm!162143 () Bool)

(assert (=> bm!162143 (= call!162148 (derivativeStep!2166 (ite c!408762 (regTwo!15707 (regOne!15706 r!27340)) (regTwo!15706 (regOne!15706 r!27340))) c!14016))))

(declare-fun d!723138 () Bool)

(declare-fun lt!903281 () Regex!7597)

(assert (=> d!723138 (validRegex!3223 lt!903281)))

(assert (=> d!723138 (= lt!903281 e!1611436)))

(declare-fun c!408764 () Bool)

(assert (=> d!723138 (= c!408764 (or ((_ is EmptyExpr!7597) (regOne!15706 r!27340)) ((_ is EmptyLang!7597) (regOne!15706 r!27340))))))

(assert (=> d!723138 (validRegex!3223 (regOne!15706 r!27340))))

(assert (=> d!723138 (= (derivativeStep!2166 (regOne!15706 r!27340) c!14016) lt!903281)))

(declare-fun b!2549907 () Bool)

(assert (=> b!2549907 (= e!1611436 e!1611434)))

(declare-fun c!408763 () Bool)

(assert (=> b!2549907 (= c!408763 ((_ is ElementMatch!7597) (regOne!15706 r!27340)))))

(declare-fun b!2549908 () Bool)

(assert (=> b!2549908 (= e!1611434 (ite (= c!14016 (c!408703 (regOne!15706 r!27340))) EmptyExpr!7597 EmptyLang!7597))))

(assert (= (and d!723138 c!408764) b!2549906))

(assert (= (and d!723138 (not c!408764)) b!2549907))

(assert (= (and b!2549907 c!408763) b!2549908))

(assert (= (and b!2549907 (not c!408763)) b!2549902))

(assert (= (and b!2549902 c!408762) b!2549901))

(assert (= (and b!2549902 (not c!408762)) b!2549900))

(assert (= (and b!2549900 c!408766) b!2549899))

(assert (= (and b!2549900 (not c!408766)) b!2549904))

(assert (= (and b!2549904 c!408765) b!2549903))

(assert (= (and b!2549904 (not c!408765)) b!2549905))

(assert (= (or b!2549903 b!2549905) bm!162140))

(assert (= (or b!2549899 bm!162140) bm!162141))

(assert (= (or b!2549901 b!2549903) bm!162143))

(assert (= (or b!2549901 bm!162141) bm!162142))

(declare-fun m!2893553 () Bool)

(assert (=> b!2549904 m!2893553))

(declare-fun m!2893555 () Bool)

(assert (=> bm!162142 m!2893555))

(declare-fun m!2893557 () Bool)

(assert (=> bm!162143 m!2893557))

(declare-fun m!2893559 () Bool)

(assert (=> d!723138 m!2893559))

(declare-fun m!2893561 () Bool)

(assert (=> d!723138 m!2893561))

(assert (=> b!2549735 d!723138))

(declare-fun b!2549909 () Bool)

(declare-fun res!1074180 () Bool)

(declare-fun e!1611438 () Bool)

(assert (=> b!2549909 (=> res!1074180 e!1611438)))

(assert (=> b!2549909 (= res!1074180 (not ((_ is ElementMatch!7597) (derivative!292 lt!903256 tl!4068))))))

(declare-fun e!1611441 () Bool)

(assert (=> b!2549909 (= e!1611441 e!1611438)))

(declare-fun b!2549910 () Bool)

(declare-fun e!1611442 () Bool)

(assert (=> b!2549910 (= e!1611442 (nullable!2514 (derivative!292 lt!903256 tl!4068)))))

(declare-fun b!2549912 () Bool)

(declare-fun lt!903282 () Bool)

(assert (=> b!2549912 (= e!1611441 (not lt!903282))))

(declare-fun b!2549913 () Bool)

(declare-fun e!1611444 () Bool)

(assert (=> b!2549913 (= e!1611444 (not (= (head!5803 Nil!29562) (c!408703 (derivative!292 lt!903256 tl!4068)))))))

(declare-fun b!2549914 () Bool)

(declare-fun e!1611440 () Bool)

(declare-fun call!162149 () Bool)

(assert (=> b!2549914 (= e!1611440 (= lt!903282 call!162149))))

(declare-fun b!2549915 () Bool)

(declare-fun res!1074179 () Bool)

(assert (=> b!2549915 (=> res!1074179 e!1611444)))

(assert (=> b!2549915 (= res!1074179 (not (isEmpty!17009 (tail!4078 Nil!29562))))))

(declare-fun b!2549916 () Bool)

(declare-fun e!1611443 () Bool)

(assert (=> b!2549916 (= e!1611443 e!1611444)))

(declare-fun res!1074182 () Bool)

(assert (=> b!2549916 (=> res!1074182 e!1611444)))

(assert (=> b!2549916 (= res!1074182 call!162149)))

(declare-fun b!2549917 () Bool)

(declare-fun e!1611439 () Bool)

(assert (=> b!2549917 (= e!1611439 (= (head!5803 Nil!29562) (c!408703 (derivative!292 lt!903256 tl!4068))))))

(declare-fun b!2549918 () Bool)

(assert (=> b!2549918 (= e!1611440 e!1611441)))

(declare-fun c!408767 () Bool)

(assert (=> b!2549918 (= c!408767 ((_ is EmptyLang!7597) (derivative!292 lt!903256 tl!4068)))))

(declare-fun b!2549919 () Bool)

(declare-fun res!1074183 () Bool)

(assert (=> b!2549919 (=> (not res!1074183) (not e!1611439))))

(assert (=> b!2549919 (= res!1074183 (not call!162149))))

(declare-fun bm!162144 () Bool)

(assert (=> bm!162144 (= call!162149 (isEmpty!17009 Nil!29562))))

(declare-fun b!2549920 () Bool)

(declare-fun res!1074178 () Bool)

(assert (=> b!2549920 (=> (not res!1074178) (not e!1611439))))

(assert (=> b!2549920 (= res!1074178 (isEmpty!17009 (tail!4078 Nil!29562)))))

(declare-fun b!2549911 () Bool)

(assert (=> b!2549911 (= e!1611442 (matchR!3542 (derivativeStep!2166 (derivative!292 lt!903256 tl!4068) (head!5803 Nil!29562)) (tail!4078 Nil!29562)))))

(declare-fun d!723140 () Bool)

(assert (=> d!723140 e!1611440))

(declare-fun c!408768 () Bool)

(assert (=> d!723140 (= c!408768 ((_ is EmptyExpr!7597) (derivative!292 lt!903256 tl!4068)))))

(assert (=> d!723140 (= lt!903282 e!1611442)))

(declare-fun c!408769 () Bool)

(assert (=> d!723140 (= c!408769 (isEmpty!17009 Nil!29562))))

(assert (=> d!723140 (validRegex!3223 (derivative!292 lt!903256 tl!4068))))

(assert (=> d!723140 (= (matchR!3542 (derivative!292 lt!903256 tl!4068) Nil!29562) lt!903282)))

(declare-fun b!2549921 () Bool)

(assert (=> b!2549921 (= e!1611438 e!1611443)))

(declare-fun res!1074177 () Bool)

(assert (=> b!2549921 (=> (not res!1074177) (not e!1611443))))

(assert (=> b!2549921 (= res!1074177 (not lt!903282))))

(declare-fun b!2549922 () Bool)

(declare-fun res!1074181 () Bool)

(assert (=> b!2549922 (=> res!1074181 e!1611438)))

(assert (=> b!2549922 (= res!1074181 e!1611439)))

(declare-fun res!1074184 () Bool)

(assert (=> b!2549922 (=> (not res!1074184) (not e!1611439))))

(assert (=> b!2549922 (= res!1074184 lt!903282)))

(assert (= (and d!723140 c!408769) b!2549910))

(assert (= (and d!723140 (not c!408769)) b!2549911))

(assert (= (and d!723140 c!408768) b!2549914))

(assert (= (and d!723140 (not c!408768)) b!2549918))

(assert (= (and b!2549918 c!408767) b!2549912))

(assert (= (and b!2549918 (not c!408767)) b!2549909))

(assert (= (and b!2549909 (not res!1074180)) b!2549922))

(assert (= (and b!2549922 res!1074184) b!2549919))

(assert (= (and b!2549919 res!1074183) b!2549920))

(assert (= (and b!2549920 res!1074178) b!2549917))

(assert (= (and b!2549922 (not res!1074181)) b!2549921))

(assert (= (and b!2549921 res!1074177) b!2549916))

(assert (= (and b!2549916 (not res!1074182)) b!2549915))

(assert (= (and b!2549915 (not res!1074179)) b!2549913))

(assert (= (or b!2549914 b!2549916 b!2549919) bm!162144))

(declare-fun m!2893563 () Bool)

(assert (=> bm!162144 m!2893563))

(declare-fun m!2893565 () Bool)

(assert (=> b!2549917 m!2893565))

(declare-fun m!2893567 () Bool)

(assert (=> b!2549920 m!2893567))

(assert (=> b!2549920 m!2893567))

(declare-fun m!2893569 () Bool)

(assert (=> b!2549920 m!2893569))

(assert (=> b!2549910 m!2893457))

(declare-fun m!2893571 () Bool)

(assert (=> b!2549910 m!2893571))

(assert (=> b!2549911 m!2893565))

(assert (=> b!2549911 m!2893457))

(assert (=> b!2549911 m!2893565))

(declare-fun m!2893573 () Bool)

(assert (=> b!2549911 m!2893573))

(assert (=> b!2549911 m!2893567))

(assert (=> b!2549911 m!2893573))

(assert (=> b!2549911 m!2893567))

(declare-fun m!2893575 () Bool)

(assert (=> b!2549911 m!2893575))

(assert (=> d!723140 m!2893563))

(assert (=> d!723140 m!2893457))

(declare-fun m!2893577 () Bool)

(assert (=> d!723140 m!2893577))

(assert (=> b!2549915 m!2893567))

(assert (=> b!2549915 m!2893567))

(assert (=> b!2549915 m!2893569))

(assert (=> b!2549913 m!2893565))

(assert (=> b!2549735 d!723140))

(declare-fun call!162165 () Bool)

(declare-fun c!408788 () Bool)

(declare-fun bm!162158 () Bool)

(declare-fun c!408789 () Bool)

(assert (=> bm!162158 (= call!162165 (validRegex!3223 (ite c!408789 (reg!7926 lt!903257) (ite c!408788 (regOne!15707 lt!903257) (regTwo!15706 lt!903257)))))))

(declare-fun d!723142 () Bool)

(declare-fun res!1074235 () Bool)

(declare-fun e!1611495 () Bool)

(assert (=> d!723142 (=> res!1074235 e!1611495)))

(assert (=> d!723142 (= res!1074235 ((_ is ElementMatch!7597) lt!903257))))

(assert (=> d!723142 (= (validRegex!3223 lt!903257) e!1611495)))

(declare-fun bm!162159 () Bool)

(declare-fun call!162163 () Bool)

(assert (=> bm!162159 (= call!162163 (validRegex!3223 (ite c!408788 (regTwo!15707 lt!903257) (regOne!15706 lt!903257))))))

(declare-fun b!2550006 () Bool)

(declare-fun e!1611500 () Bool)

(assert (=> b!2550006 (= e!1611495 e!1611500)))

(assert (=> b!2550006 (= c!408789 ((_ is Star!7597) lt!903257))))

(declare-fun b!2550007 () Bool)

(declare-fun e!1611499 () Bool)

(declare-fun call!162164 () Bool)

(assert (=> b!2550007 (= e!1611499 call!162164)))

(declare-fun bm!162160 () Bool)

(assert (=> bm!162160 (= call!162164 call!162165)))

(declare-fun b!2550008 () Bool)

(declare-fun e!1611497 () Bool)

(assert (=> b!2550008 (= e!1611500 e!1611497)))

(assert (=> b!2550008 (= c!408788 ((_ is Union!7597) lt!903257))))

(declare-fun b!2550009 () Bool)

(declare-fun res!1074233 () Bool)

(declare-fun e!1611496 () Bool)

(assert (=> b!2550009 (=> res!1074233 e!1611496)))

(assert (=> b!2550009 (= res!1074233 (not ((_ is Concat!12293) lt!903257)))))

(assert (=> b!2550009 (= e!1611497 e!1611496)))

(declare-fun b!2550010 () Bool)

(declare-fun e!1611494 () Bool)

(assert (=> b!2550010 (= e!1611500 e!1611494)))

(declare-fun res!1074236 () Bool)

(assert (=> b!2550010 (= res!1074236 (not (nullable!2514 (reg!7926 lt!903257))))))

(assert (=> b!2550010 (=> (not res!1074236) (not e!1611494))))

(declare-fun b!2550011 () Bool)

(declare-fun e!1611498 () Bool)

(assert (=> b!2550011 (= e!1611498 call!162163)))

(declare-fun b!2550012 () Bool)

(declare-fun res!1074234 () Bool)

(assert (=> b!2550012 (=> (not res!1074234) (not e!1611498))))

(assert (=> b!2550012 (= res!1074234 call!162164)))

(assert (=> b!2550012 (= e!1611497 e!1611498)))

(declare-fun b!2550013 () Bool)

(assert (=> b!2550013 (= e!1611496 e!1611499)))

(declare-fun res!1074232 () Bool)

(assert (=> b!2550013 (=> (not res!1074232) (not e!1611499))))

(assert (=> b!2550013 (= res!1074232 call!162163)))

(declare-fun b!2550014 () Bool)

(assert (=> b!2550014 (= e!1611494 call!162165)))

(assert (= (and d!723142 (not res!1074235)) b!2550006))

(assert (= (and b!2550006 c!408789) b!2550010))

(assert (= (and b!2550006 (not c!408789)) b!2550008))

(assert (= (and b!2550010 res!1074236) b!2550014))

(assert (= (and b!2550008 c!408788) b!2550012))

(assert (= (and b!2550008 (not c!408788)) b!2550009))

(assert (= (and b!2550012 res!1074234) b!2550011))

(assert (= (and b!2550009 (not res!1074233)) b!2550013))

(assert (= (and b!2550013 res!1074232) b!2550007))

(assert (= (or b!2550012 b!2550007) bm!162160))

(assert (= (or b!2550011 b!2550013) bm!162159))

(assert (= (or b!2550014 bm!162160) bm!162158))

(declare-fun m!2893615 () Bool)

(assert (=> bm!162158 m!2893615))

(declare-fun m!2893617 () Bool)

(assert (=> bm!162159 m!2893617))

(declare-fun m!2893619 () Bool)

(assert (=> b!2550010 m!2893619))

(assert (=> b!2549735 d!723142))

(declare-fun bm!162161 () Bool)

(declare-fun c!408791 () Bool)

(declare-fun call!162168 () Bool)

(declare-fun c!408790 () Bool)

(assert (=> bm!162161 (= call!162168 (validRegex!3223 (ite c!408791 (reg!7926 lt!903255) (ite c!408790 (regOne!15707 lt!903255) (regTwo!15706 lt!903255)))))))

(declare-fun d!723150 () Bool)

(declare-fun res!1074240 () Bool)

(declare-fun e!1611502 () Bool)

(assert (=> d!723150 (=> res!1074240 e!1611502)))

(assert (=> d!723150 (= res!1074240 ((_ is ElementMatch!7597) lt!903255))))

(assert (=> d!723150 (= (validRegex!3223 lt!903255) e!1611502)))

(declare-fun bm!162162 () Bool)

(declare-fun call!162166 () Bool)

(assert (=> bm!162162 (= call!162166 (validRegex!3223 (ite c!408790 (regTwo!15707 lt!903255) (regOne!15706 lt!903255))))))

(declare-fun b!2550015 () Bool)

(declare-fun e!1611507 () Bool)

(assert (=> b!2550015 (= e!1611502 e!1611507)))

(assert (=> b!2550015 (= c!408791 ((_ is Star!7597) lt!903255))))

(declare-fun b!2550016 () Bool)

(declare-fun e!1611506 () Bool)

(declare-fun call!162167 () Bool)

(assert (=> b!2550016 (= e!1611506 call!162167)))

(declare-fun bm!162163 () Bool)

(assert (=> bm!162163 (= call!162167 call!162168)))

(declare-fun b!2550017 () Bool)

(declare-fun e!1611504 () Bool)

(assert (=> b!2550017 (= e!1611507 e!1611504)))

(assert (=> b!2550017 (= c!408790 ((_ is Union!7597) lt!903255))))

(declare-fun b!2550018 () Bool)

(declare-fun res!1074238 () Bool)

(declare-fun e!1611503 () Bool)

(assert (=> b!2550018 (=> res!1074238 e!1611503)))

(assert (=> b!2550018 (= res!1074238 (not ((_ is Concat!12293) lt!903255)))))

(assert (=> b!2550018 (= e!1611504 e!1611503)))

(declare-fun b!2550019 () Bool)

(declare-fun e!1611501 () Bool)

(assert (=> b!2550019 (= e!1611507 e!1611501)))

(declare-fun res!1074241 () Bool)

(assert (=> b!2550019 (= res!1074241 (not (nullable!2514 (reg!7926 lt!903255))))))

(assert (=> b!2550019 (=> (not res!1074241) (not e!1611501))))

(declare-fun b!2550020 () Bool)

(declare-fun e!1611505 () Bool)

(assert (=> b!2550020 (= e!1611505 call!162166)))

(declare-fun b!2550021 () Bool)

(declare-fun res!1074239 () Bool)

(assert (=> b!2550021 (=> (not res!1074239) (not e!1611505))))

(assert (=> b!2550021 (= res!1074239 call!162167)))

(assert (=> b!2550021 (= e!1611504 e!1611505)))

(declare-fun b!2550022 () Bool)

(assert (=> b!2550022 (= e!1611503 e!1611506)))

(declare-fun res!1074237 () Bool)

(assert (=> b!2550022 (=> (not res!1074237) (not e!1611506))))

(assert (=> b!2550022 (= res!1074237 call!162166)))

(declare-fun b!2550023 () Bool)

(assert (=> b!2550023 (= e!1611501 call!162168)))

(assert (= (and d!723150 (not res!1074240)) b!2550015))

(assert (= (and b!2550015 c!408791) b!2550019))

(assert (= (and b!2550015 (not c!408791)) b!2550017))

(assert (= (and b!2550019 res!1074241) b!2550023))

(assert (= (and b!2550017 c!408790) b!2550021))

(assert (= (and b!2550017 (not c!408790)) b!2550018))

(assert (= (and b!2550021 res!1074239) b!2550020))

(assert (= (and b!2550018 (not res!1074238)) b!2550022))

(assert (= (and b!2550022 res!1074237) b!2550016))

(assert (= (or b!2550021 b!2550016) bm!162163))

(assert (= (or b!2550020 b!2550022) bm!162162))

(assert (= (or b!2550023 bm!162163) bm!162161))

(declare-fun m!2893631 () Bool)

(assert (=> bm!162161 m!2893631))

(declare-fun m!2893633 () Bool)

(assert (=> bm!162162 m!2893633))

(declare-fun m!2893635 () Bool)

(assert (=> b!2550019 m!2893635))

(assert (=> b!2549734 d!723150))

(declare-fun c!408799 () Bool)

(declare-fun call!162175 () Bool)

(declare-fun bm!162168 () Bool)

(declare-fun c!408798 () Bool)

(assert (=> bm!162168 (= call!162175 (validRegex!3223 (ite c!408799 (reg!7926 r!27340) (ite c!408798 (regOne!15707 r!27340) (regTwo!15706 r!27340)))))))

(declare-fun d!723156 () Bool)

(declare-fun res!1074245 () Bool)

(declare-fun e!1611515 () Bool)

(assert (=> d!723156 (=> res!1074245 e!1611515)))

(assert (=> d!723156 (= res!1074245 ((_ is ElementMatch!7597) r!27340))))

(assert (=> d!723156 (= (validRegex!3223 r!27340) e!1611515)))

(declare-fun bm!162169 () Bool)

(declare-fun call!162173 () Bool)

(assert (=> bm!162169 (= call!162173 (validRegex!3223 (ite c!408798 (regTwo!15707 r!27340) (regOne!15706 r!27340))))))

(declare-fun b!2550036 () Bool)

(declare-fun e!1611520 () Bool)

(assert (=> b!2550036 (= e!1611515 e!1611520)))

(assert (=> b!2550036 (= c!408799 ((_ is Star!7597) r!27340))))

(declare-fun b!2550037 () Bool)

(declare-fun e!1611519 () Bool)

(declare-fun call!162174 () Bool)

(assert (=> b!2550037 (= e!1611519 call!162174)))

(declare-fun bm!162170 () Bool)

(assert (=> bm!162170 (= call!162174 call!162175)))

(declare-fun b!2550038 () Bool)

(declare-fun e!1611517 () Bool)

(assert (=> b!2550038 (= e!1611520 e!1611517)))

(assert (=> b!2550038 (= c!408798 ((_ is Union!7597) r!27340))))

(declare-fun b!2550039 () Bool)

(declare-fun res!1074243 () Bool)

(declare-fun e!1611516 () Bool)

(assert (=> b!2550039 (=> res!1074243 e!1611516)))

(assert (=> b!2550039 (= res!1074243 (not ((_ is Concat!12293) r!27340)))))

(assert (=> b!2550039 (= e!1611517 e!1611516)))

(declare-fun b!2550040 () Bool)

(declare-fun e!1611514 () Bool)

(assert (=> b!2550040 (= e!1611520 e!1611514)))

(declare-fun res!1074246 () Bool)

(assert (=> b!2550040 (= res!1074246 (not (nullable!2514 (reg!7926 r!27340))))))

(assert (=> b!2550040 (=> (not res!1074246) (not e!1611514))))

(declare-fun b!2550041 () Bool)

(declare-fun e!1611518 () Bool)

(assert (=> b!2550041 (= e!1611518 call!162173)))

(declare-fun b!2550042 () Bool)

(declare-fun res!1074244 () Bool)

(assert (=> b!2550042 (=> (not res!1074244) (not e!1611518))))

(assert (=> b!2550042 (= res!1074244 call!162174)))

(assert (=> b!2550042 (= e!1611517 e!1611518)))

(declare-fun b!2550043 () Bool)

(assert (=> b!2550043 (= e!1611516 e!1611519)))

(declare-fun res!1074242 () Bool)

(assert (=> b!2550043 (=> (not res!1074242) (not e!1611519))))

(assert (=> b!2550043 (= res!1074242 call!162173)))

(declare-fun b!2550044 () Bool)

(assert (=> b!2550044 (= e!1611514 call!162175)))

(assert (= (and d!723156 (not res!1074245)) b!2550036))

(assert (= (and b!2550036 c!408799) b!2550040))

(assert (= (and b!2550036 (not c!408799)) b!2550038))

(assert (= (and b!2550040 res!1074246) b!2550044))

(assert (= (and b!2550038 c!408798) b!2550042))

(assert (= (and b!2550038 (not c!408798)) b!2550039))

(assert (= (and b!2550042 res!1074244) b!2550041))

(assert (= (and b!2550039 (not res!1074243)) b!2550043))

(assert (= (and b!2550043 res!1074242) b!2550037))

(assert (= (or b!2550042 b!2550037) bm!162170))

(assert (= (or b!2550041 b!2550043) bm!162169))

(assert (= (or b!2550044 bm!162170) bm!162168))

(declare-fun m!2893645 () Bool)

(assert (=> bm!162168 m!2893645))

(declare-fun m!2893647 () Bool)

(assert (=> bm!162169 m!2893647))

(declare-fun m!2893649 () Bool)

(assert (=> b!2550040 m!2893649))

(assert (=> start!247356 d!723156))

(declare-fun d!723160 () Bool)

(declare-fun nullableFct!739 (Regex!7597) Bool)

(assert (=> d!723160 (= (nullable!2514 (derivative!292 (derivativeStep!2166 r!27340 c!14016) tl!4068)) (nullableFct!739 (derivative!292 (derivativeStep!2166 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469598 () Bool)

(assert (= bs!469598 d!723160))

(assert (=> bs!469598 m!2893473))

(declare-fun m!2893651 () Bool)

(assert (=> bs!469598 m!2893651))

(assert (=> b!2549731 d!723160))

(declare-fun d!723162 () Bool)

(declare-fun lt!903289 () Regex!7597)

(assert (=> d!723162 (validRegex!3223 lt!903289)))

(declare-fun e!1611526 () Regex!7597)

(assert (=> d!723162 (= lt!903289 e!1611526)))

(declare-fun c!408800 () Bool)

(assert (=> d!723162 (= c!408800 ((_ is Cons!29562) tl!4068))))

(assert (=> d!723162 (validRegex!3223 (derivativeStep!2166 r!27340 c!14016))))

(assert (=> d!723162 (= (derivative!292 (derivativeStep!2166 r!27340 c!14016) tl!4068) lt!903289)))

(declare-fun b!2550060 () Bool)

(assert (=> b!2550060 (= e!1611526 (derivative!292 (derivativeStep!2166 (derivativeStep!2166 r!27340 c!14016) (h!34982 tl!4068)) (t!211361 tl!4068)))))

(declare-fun b!2550061 () Bool)

(assert (=> b!2550061 (= e!1611526 (derivativeStep!2166 r!27340 c!14016))))

(assert (= (and d!723162 c!408800) b!2550060))

(assert (= (and d!723162 (not c!408800)) b!2550061))

(declare-fun m!2893653 () Bool)

(assert (=> d!723162 m!2893653))

(assert (=> d!723162 m!2893471))

(declare-fun m!2893655 () Bool)

(assert (=> d!723162 m!2893655))

(assert (=> b!2550060 m!2893471))

(declare-fun m!2893657 () Bool)

(assert (=> b!2550060 m!2893657))

(assert (=> b!2550060 m!2893657))

(declare-fun m!2893659 () Bool)

(assert (=> b!2550060 m!2893659))

(assert (=> b!2549731 d!723162))

(declare-fun b!2550066 () Bool)

(declare-fun e!1611530 () Regex!7597)

(declare-fun call!162176 () Regex!7597)

(assert (=> b!2550066 (= e!1611530 (Concat!12293 call!162176 r!27340))))

(declare-fun b!2550067 () Bool)

(declare-fun e!1611532 () Regex!7597)

(assert (=> b!2550067 (= e!1611532 e!1611530)))

(declare-fun c!408805 () Bool)

(assert (=> b!2550067 (= c!408805 ((_ is Star!7597) r!27340))))

(declare-fun bm!162171 () Bool)

(declare-fun call!162177 () Regex!7597)

(assert (=> bm!162171 (= call!162177 call!162176)))

(declare-fun b!2550068 () Bool)

(declare-fun call!162178 () Regex!7597)

(declare-fun call!162179 () Regex!7597)

(assert (=> b!2550068 (= e!1611532 (Union!7597 call!162178 call!162179))))

(declare-fun b!2550069 () Bool)

(declare-fun c!408801 () Bool)

(assert (=> b!2550069 (= c!408801 ((_ is Union!7597) r!27340))))

(declare-fun e!1611529 () Regex!7597)

(assert (=> b!2550069 (= e!1611529 e!1611532)))

(declare-fun bm!162172 () Bool)

(assert (=> bm!162172 (= call!162176 call!162178)))

(declare-fun b!2550070 () Bool)

(declare-fun e!1611528 () Regex!7597)

(assert (=> b!2550070 (= e!1611528 (Union!7597 (Concat!12293 call!162177 (regTwo!15706 r!27340)) call!162179))))

(declare-fun b!2550071 () Bool)

(declare-fun c!408804 () Bool)

(assert (=> b!2550071 (= c!408804 (nullable!2514 (regOne!15706 r!27340)))))

(assert (=> b!2550071 (= e!1611530 e!1611528)))

(declare-fun bm!162173 () Bool)

(assert (=> bm!162173 (= call!162178 (derivativeStep!2166 (ite c!408801 (regOne!15707 r!27340) (ite c!408805 (reg!7926 r!27340) (regOne!15706 r!27340))) c!14016))))

(declare-fun b!2550072 () Bool)

(assert (=> b!2550072 (= e!1611528 (Union!7597 (Concat!12293 call!162177 (regTwo!15706 r!27340)) EmptyLang!7597))))

(declare-fun b!2550073 () Bool)

(declare-fun e!1611531 () Regex!7597)

(assert (=> b!2550073 (= e!1611531 EmptyLang!7597)))

(declare-fun bm!162174 () Bool)

(assert (=> bm!162174 (= call!162179 (derivativeStep!2166 (ite c!408801 (regTwo!15707 r!27340) (regTwo!15706 r!27340)) c!14016))))

(declare-fun d!723164 () Bool)

(declare-fun lt!903290 () Regex!7597)

(assert (=> d!723164 (validRegex!3223 lt!903290)))

(assert (=> d!723164 (= lt!903290 e!1611531)))

(declare-fun c!408803 () Bool)

(assert (=> d!723164 (= c!408803 (or ((_ is EmptyExpr!7597) r!27340) ((_ is EmptyLang!7597) r!27340)))))

(assert (=> d!723164 (validRegex!3223 r!27340)))

(assert (=> d!723164 (= (derivativeStep!2166 r!27340 c!14016) lt!903290)))

(declare-fun b!2550074 () Bool)

(assert (=> b!2550074 (= e!1611531 e!1611529)))

(declare-fun c!408802 () Bool)

(assert (=> b!2550074 (= c!408802 ((_ is ElementMatch!7597) r!27340))))

(declare-fun b!2550075 () Bool)

(assert (=> b!2550075 (= e!1611529 (ite (= c!14016 (c!408703 r!27340)) EmptyExpr!7597 EmptyLang!7597))))

(assert (= (and d!723164 c!408803) b!2550073))

(assert (= (and d!723164 (not c!408803)) b!2550074))

(assert (= (and b!2550074 c!408802) b!2550075))

(assert (= (and b!2550074 (not c!408802)) b!2550069))

(assert (= (and b!2550069 c!408801) b!2550068))

(assert (= (and b!2550069 (not c!408801)) b!2550067))

(assert (= (and b!2550067 c!408805) b!2550066))

(assert (= (and b!2550067 (not c!408805)) b!2550071))

(assert (= (and b!2550071 c!408804) b!2550070))

(assert (= (and b!2550071 (not c!408804)) b!2550072))

(assert (= (or b!2550070 b!2550072) bm!162171))

(assert (= (or b!2550066 bm!162171) bm!162172))

(assert (= (or b!2550068 b!2550070) bm!162174))

(assert (= (or b!2550068 bm!162172) bm!162173))

(assert (=> b!2550071 m!2893467))

(declare-fun m!2893661 () Bool)

(assert (=> bm!162173 m!2893661))

(declare-fun m!2893663 () Bool)

(assert (=> bm!162174 m!2893663))

(declare-fun m!2893665 () Bool)

(assert (=> d!723164 m!2893665))

(assert (=> d!723164 m!2893451))

(assert (=> b!2549731 d!723164))

(declare-fun d!723166 () Bool)

(assert (=> d!723166 (= (nullable!2514 (regOne!15706 r!27340)) (nullableFct!739 (regOne!15706 r!27340)))))

(declare-fun bs!469599 () Bool)

(assert (= bs!469599 d!723166))

(declare-fun m!2893667 () Bool)

(assert (=> bs!469599 m!2893667))

(assert (=> b!2549737 d!723166))

(declare-fun b!2550102 () Bool)

(declare-fun e!1611539 () Bool)

(assert (=> b!2550102 (= e!1611539 tp_is_empty!13049)))

(declare-fun b!2550104 () Bool)

(declare-fun tp!813565 () Bool)

(assert (=> b!2550104 (= e!1611539 tp!813565)))

(declare-fun b!2550103 () Bool)

(declare-fun tp!813566 () Bool)

(declare-fun tp!813563 () Bool)

(assert (=> b!2550103 (= e!1611539 (and tp!813566 tp!813563))))

(assert (=> b!2549730 (= tp!813509 e!1611539)))

(declare-fun b!2550105 () Bool)

(declare-fun tp!813567 () Bool)

(declare-fun tp!813564 () Bool)

(assert (=> b!2550105 (= e!1611539 (and tp!813567 tp!813564))))

(assert (= (and b!2549730 ((_ is ElementMatch!7597) (reg!7926 r!27340))) b!2550102))

(assert (= (and b!2549730 ((_ is Concat!12293) (reg!7926 r!27340))) b!2550103))

(assert (= (and b!2549730 ((_ is Star!7597) (reg!7926 r!27340))) b!2550104))

(assert (= (and b!2549730 ((_ is Union!7597) (reg!7926 r!27340))) b!2550105))

(declare-fun b!2550106 () Bool)

(declare-fun e!1611540 () Bool)

(assert (=> b!2550106 (= e!1611540 tp_is_empty!13049)))

(declare-fun b!2550108 () Bool)

(declare-fun tp!813570 () Bool)

(assert (=> b!2550108 (= e!1611540 tp!813570)))

(declare-fun b!2550107 () Bool)

(declare-fun tp!813571 () Bool)

(declare-fun tp!813568 () Bool)

(assert (=> b!2550107 (= e!1611540 (and tp!813571 tp!813568))))

(assert (=> b!2549736 (= tp!813514 e!1611540)))

(declare-fun b!2550109 () Bool)

(declare-fun tp!813572 () Bool)

(declare-fun tp!813569 () Bool)

(assert (=> b!2550109 (= e!1611540 (and tp!813572 tp!813569))))

(assert (= (and b!2549736 ((_ is ElementMatch!7597) (regOne!15706 r!27340))) b!2550106))

(assert (= (and b!2549736 ((_ is Concat!12293) (regOne!15706 r!27340))) b!2550107))

(assert (= (and b!2549736 ((_ is Star!7597) (regOne!15706 r!27340))) b!2550108))

(assert (= (and b!2549736 ((_ is Union!7597) (regOne!15706 r!27340))) b!2550109))

(declare-fun b!2550110 () Bool)

(declare-fun e!1611541 () Bool)

(assert (=> b!2550110 (= e!1611541 tp_is_empty!13049)))

(declare-fun b!2550112 () Bool)

(declare-fun tp!813575 () Bool)

(assert (=> b!2550112 (= e!1611541 tp!813575)))

(declare-fun b!2550111 () Bool)

(declare-fun tp!813576 () Bool)

(declare-fun tp!813573 () Bool)

(assert (=> b!2550111 (= e!1611541 (and tp!813576 tp!813573))))

(assert (=> b!2549736 (= tp!813511 e!1611541)))

(declare-fun b!2550113 () Bool)

(declare-fun tp!813577 () Bool)

(declare-fun tp!813574 () Bool)

(assert (=> b!2550113 (= e!1611541 (and tp!813577 tp!813574))))

(assert (= (and b!2549736 ((_ is ElementMatch!7597) (regTwo!15706 r!27340))) b!2550110))

(assert (= (and b!2549736 ((_ is Concat!12293) (regTwo!15706 r!27340))) b!2550111))

(assert (= (and b!2549736 ((_ is Star!7597) (regTwo!15706 r!27340))) b!2550112))

(assert (= (and b!2549736 ((_ is Union!7597) (regTwo!15706 r!27340))) b!2550113))

(declare-fun b!2550114 () Bool)

(declare-fun e!1611542 () Bool)

(assert (=> b!2550114 (= e!1611542 tp_is_empty!13049)))

(declare-fun b!2550116 () Bool)

(declare-fun tp!813580 () Bool)

(assert (=> b!2550116 (= e!1611542 tp!813580)))

(declare-fun b!2550115 () Bool)

(declare-fun tp!813581 () Bool)

(declare-fun tp!813578 () Bool)

(assert (=> b!2550115 (= e!1611542 (and tp!813581 tp!813578))))

(assert (=> b!2549729 (= tp!813510 e!1611542)))

(declare-fun b!2550117 () Bool)

(declare-fun tp!813582 () Bool)

(declare-fun tp!813579 () Bool)

(assert (=> b!2550117 (= e!1611542 (and tp!813582 tp!813579))))

(assert (= (and b!2549729 ((_ is ElementMatch!7597) (regOne!15707 r!27340))) b!2550114))

(assert (= (and b!2549729 ((_ is Concat!12293) (regOne!15707 r!27340))) b!2550115))

(assert (= (and b!2549729 ((_ is Star!7597) (regOne!15707 r!27340))) b!2550116))

(assert (= (and b!2549729 ((_ is Union!7597) (regOne!15707 r!27340))) b!2550117))

(declare-fun b!2550118 () Bool)

(declare-fun e!1611543 () Bool)

(assert (=> b!2550118 (= e!1611543 tp_is_empty!13049)))

(declare-fun b!2550120 () Bool)

(declare-fun tp!813585 () Bool)

(assert (=> b!2550120 (= e!1611543 tp!813585)))

(declare-fun b!2550119 () Bool)

(declare-fun tp!813586 () Bool)

(declare-fun tp!813583 () Bool)

(assert (=> b!2550119 (= e!1611543 (and tp!813586 tp!813583))))

(assert (=> b!2549729 (= tp!813513 e!1611543)))

(declare-fun b!2550121 () Bool)

(declare-fun tp!813587 () Bool)

(declare-fun tp!813584 () Bool)

(assert (=> b!2550121 (= e!1611543 (and tp!813587 tp!813584))))

(assert (= (and b!2549729 ((_ is ElementMatch!7597) (regTwo!15707 r!27340))) b!2550118))

(assert (= (and b!2549729 ((_ is Concat!12293) (regTwo!15707 r!27340))) b!2550119))

(assert (= (and b!2549729 ((_ is Star!7597) (regTwo!15707 r!27340))) b!2550120))

(assert (= (and b!2549729 ((_ is Union!7597) (regTwo!15707 r!27340))) b!2550121))

(declare-fun b!2550126 () Bool)

(declare-fun e!1611546 () Bool)

(declare-fun tp!813590 () Bool)

(assert (=> b!2550126 (= e!1611546 (and tp_is_empty!13049 tp!813590))))

(assert (=> b!2549733 (= tp!813512 e!1611546)))

(assert (= (and b!2549733 ((_ is Cons!29562) (t!211361 tl!4068))) b!2550126))

(check-sat (not bm!162169) (not bm!162111) (not b!2549894) (not b!2550121) (not b!2549823) (not b!2550113) (not b!2549915) (not bm!162138) (not d!723132) (not b!2549910) (not bm!162142) (not b!2550103) (not bm!162158) (not d!723160) (not bm!162168) (not bm!162139) (not bm!162144) (not b!2549920) (not d!723140) (not d!723138) (not b!2549821) (not b!2549826) (not b!2549816) (not d!723166) (not b!2549911) (not b!2549817) (not b!2549761) (not d!723116) (not b!2550010) (not b!2550117) (not b!2550105) (not bm!162162) (not b!2550112) (not b!2550104) (not b!2550119) (not bm!162173) (not b!2550060) (not d!723122) (not d!723164) (not b!2549904) (not d!723120) (not bm!162159) (not b!2549917) (not bm!162174) (not b!2550116) (not b!2550120) (not b!2550071) (not b!2550126) (not b!2550109) (not b!2550108) (not b!2549819) (not b!2550107) (not b!2550111) (not bm!162161) (not b!2550019) (not b!2550115) (not b!2549913) (not d!723162) (not b!2550040) (not bm!162143) tp_is_empty!13049)
(check-sat)
