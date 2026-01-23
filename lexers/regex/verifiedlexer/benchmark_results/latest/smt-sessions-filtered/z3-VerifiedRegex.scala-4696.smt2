; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243620 () Bool)

(assert start!243620)

(declare-fun b!2494216 () Bool)

(declare-fun e!1582835 () Bool)

(declare-fun e!1582838 () Bool)

(assert (=> b!2494216 (= e!1582835 (not e!1582838))))

(declare-fun res!1054974 () Bool)

(assert (=> b!2494216 (=> res!1054974 e!1582838)))

(declare-fun lt!894286 () Bool)

(assert (=> b!2494216 (= res!1054974 (not lt!894286))))

(declare-datatypes ((C!14892 0))(
  ( (C!14893 (val!9098 Int)) )
))
(declare-datatypes ((Regex!7367 0))(
  ( (ElementMatch!7367 (c!396567 C!14892)) (Concat!12063 (regOne!15246 Regex!7367) (regTwo!15246 Regex!7367)) (EmptyExpr!7367) (Star!7367 (reg!7696 Regex!7367)) (EmptyLang!7367) (Union!7367 (regOne!15247 Regex!7367) (regTwo!15247 Regex!7367)) )
))
(declare-fun lt!894288 () Regex!7367)

(declare-datatypes ((List!29432 0))(
  ( (Nil!29332) (Cons!29332 (h!34752 C!14892) (t!211131 List!29432)) )
))
(declare-fun matchR!3376 (Regex!7367 List!29432) Bool)

(assert (=> b!2494216 (= lt!894286 (matchR!3376 lt!894288 Nil!29332))))

(declare-fun lt!894284 () Regex!7367)

(declare-fun tl!4068 () List!29432)

(assert (=> b!2494216 (= lt!894286 (matchR!3376 lt!894284 tl!4068))))

(declare-datatypes ((Unit!43003 0))(
  ( (Unit!43004) )
))
(declare-fun lt!894285 () Unit!43003)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!22 (Regex!7367 List!29432) Unit!43003)

(assert (=> b!2494216 (= lt!894285 (lemmaMatchRIsSameAsWholeDerivativeAndNil!22 lt!894284 tl!4068))))

(declare-fun b!2494217 () Bool)

(declare-fun e!1582839 () Bool)

(declare-fun tp_is_empty!12589 () Bool)

(declare-fun tp!798979 () Bool)

(assert (=> b!2494217 (= e!1582839 (and tp_is_empty!12589 tp!798979))))

(declare-fun b!2494218 () Bool)

(declare-fun e!1582837 () Bool)

(declare-fun tp!798982 () Bool)

(assert (=> b!2494218 (= e!1582837 tp!798982)))

(declare-fun res!1054977 () Bool)

(declare-fun e!1582840 () Bool)

(assert (=> start!243620 (=> (not res!1054977) (not e!1582840))))

(declare-fun r!27340 () Regex!7367)

(declare-fun validRegex!2993 (Regex!7367) Bool)

(assert (=> start!243620 (= res!1054977 (validRegex!2993 r!27340))))

(assert (=> start!243620 e!1582840))

(assert (=> start!243620 e!1582837))

(assert (=> start!243620 tp_is_empty!12589))

(assert (=> start!243620 e!1582839))

(declare-fun b!2494219 () Bool)

(declare-fun tp!798980 () Bool)

(declare-fun tp!798981 () Bool)

(assert (=> b!2494219 (= e!1582837 (and tp!798980 tp!798981))))

(declare-fun b!2494220 () Bool)

(declare-fun res!1054973 () Bool)

(assert (=> b!2494220 (=> (not res!1054973) (not e!1582835))))

(declare-fun lt!894287 () Regex!7367)

(declare-fun nullable!2284 (Regex!7367) Bool)

(declare-fun derivative!62 (Regex!7367 List!29432) Regex!7367)

(assert (=> b!2494220 (= res!1054973 (not (nullable!2284 (derivative!62 lt!894287 tl!4068))))))

(declare-fun b!2494221 () Bool)

(assert (=> b!2494221 (= e!1582837 tp_is_empty!12589)))

(declare-fun b!2494222 () Bool)

(declare-fun e!1582836 () Bool)

(assert (=> b!2494222 (= e!1582840 e!1582836)))

(declare-fun res!1054975 () Bool)

(assert (=> b!2494222 (=> (not res!1054975) (not e!1582836))))

(assert (=> b!2494222 (= res!1054975 (nullable!2284 lt!894288))))

(assert (=> b!2494222 (= lt!894288 (derivative!62 lt!894284 tl!4068))))

(declare-fun c!14016 () C!14892)

(declare-fun derivativeStep!1936 (Regex!7367 C!14892) Regex!7367)

(assert (=> b!2494222 (= lt!894284 (derivativeStep!1936 r!27340 c!14016))))

(declare-fun b!2494223 () Bool)

(declare-fun tp!798978 () Bool)

(declare-fun tp!798977 () Bool)

(assert (=> b!2494223 (= e!1582837 (and tp!798978 tp!798977))))

(declare-fun b!2494224 () Bool)

(assert (=> b!2494224 (= e!1582838 (validRegex!2993 (reg!7696 r!27340)))))

(declare-fun b!2494225 () Bool)

(declare-fun res!1054976 () Bool)

(assert (=> b!2494225 (=> (not res!1054976) (not e!1582836))))

(get-info :version)

(assert (=> b!2494225 (= res!1054976 (and (not ((_ is EmptyExpr!7367) r!27340)) (not ((_ is EmptyLang!7367) r!27340)) (not ((_ is ElementMatch!7367) r!27340)) (not ((_ is Union!7367) r!27340)) ((_ is Star!7367) r!27340)))))

(declare-fun b!2494226 () Bool)

(assert (=> b!2494226 (= e!1582836 e!1582835)))

(declare-fun res!1054978 () Bool)

(assert (=> b!2494226 (=> (not res!1054978) (not e!1582835))))

(assert (=> b!2494226 (= res!1054978 (= lt!894284 (Concat!12063 lt!894287 (Star!7367 (reg!7696 r!27340)))))))

(assert (=> b!2494226 (= lt!894287 (derivativeStep!1936 (reg!7696 r!27340) c!14016))))

(assert (= (and start!243620 res!1054977) b!2494222))

(assert (= (and b!2494222 res!1054975) b!2494225))

(assert (= (and b!2494225 res!1054976) b!2494226))

(assert (= (and b!2494226 res!1054978) b!2494220))

(assert (= (and b!2494220 res!1054973) b!2494216))

(assert (= (and b!2494216 (not res!1054974)) b!2494224))

(assert (= (and start!243620 ((_ is ElementMatch!7367) r!27340)) b!2494221))

(assert (= (and start!243620 ((_ is Concat!12063) r!27340)) b!2494219))

(assert (= (and start!243620 ((_ is Star!7367) r!27340)) b!2494218))

(assert (= (and start!243620 ((_ is Union!7367) r!27340)) b!2494223))

(assert (= (and start!243620 ((_ is Cons!29332) tl!4068)) b!2494217))

(declare-fun m!2859475 () Bool)

(assert (=> b!2494226 m!2859475))

(declare-fun m!2859477 () Bool)

(assert (=> b!2494220 m!2859477))

(assert (=> b!2494220 m!2859477))

(declare-fun m!2859479 () Bool)

(assert (=> b!2494220 m!2859479))

(declare-fun m!2859481 () Bool)

(assert (=> b!2494224 m!2859481))

(declare-fun m!2859483 () Bool)

(assert (=> b!2494222 m!2859483))

(declare-fun m!2859485 () Bool)

(assert (=> b!2494222 m!2859485))

(declare-fun m!2859487 () Bool)

(assert (=> b!2494222 m!2859487))

(declare-fun m!2859489 () Bool)

(assert (=> b!2494216 m!2859489))

(declare-fun m!2859491 () Bool)

(assert (=> b!2494216 m!2859491))

(declare-fun m!2859493 () Bool)

(assert (=> b!2494216 m!2859493))

(declare-fun m!2859495 () Bool)

(assert (=> start!243620 m!2859495))

(check-sat (not start!243620) (not b!2494222) (not b!2494219) (not b!2494218) (not b!2494220) (not b!2494223) (not b!2494224) (not b!2494226) (not b!2494217) (not b!2494216) tp_is_empty!12589)
(check-sat)
(get-model)

(declare-fun bm!153604 () Bool)

(declare-fun c!396578 () Bool)

(declare-fun c!396579 () Bool)

(declare-fun call!153611 () Bool)

(assert (=> bm!153604 (= call!153611 (validRegex!2993 (ite c!396579 (reg!7696 (reg!7696 r!27340)) (ite c!396578 (regTwo!15247 (reg!7696 r!27340)) (regOne!15246 (reg!7696 r!27340))))))))

(declare-fun b!2494272 () Bool)

(declare-fun e!1582881 () Bool)

(assert (=> b!2494272 (= e!1582881 call!153611)))

(declare-fun b!2494273 () Bool)

(declare-fun e!1582879 () Bool)

(assert (=> b!2494273 (= e!1582879 e!1582881)))

(declare-fun res!1055004 () Bool)

(assert (=> b!2494273 (= res!1055004 (not (nullable!2284 (reg!7696 (reg!7696 r!27340)))))))

(assert (=> b!2494273 (=> (not res!1055004) (not e!1582881))))

(declare-fun b!2494274 () Bool)

(declare-fun e!1582877 () Bool)

(declare-fun call!153609 () Bool)

(assert (=> b!2494274 (= e!1582877 call!153609)))

(declare-fun b!2494275 () Bool)

(declare-fun e!1582880 () Bool)

(assert (=> b!2494275 (= e!1582880 e!1582877)))

(declare-fun res!1055007 () Bool)

(assert (=> b!2494275 (=> (not res!1055007) (not e!1582877))))

(declare-fun call!153610 () Bool)

(assert (=> b!2494275 (= res!1055007 call!153610)))

(declare-fun b!2494276 () Bool)

(declare-fun res!1055005 () Bool)

(declare-fun e!1582882 () Bool)

(assert (=> b!2494276 (=> (not res!1055005) (not e!1582882))))

(assert (=> b!2494276 (= res!1055005 call!153609)))

(declare-fun e!1582876 () Bool)

(assert (=> b!2494276 (= e!1582876 e!1582882)))

(declare-fun bm!153605 () Bool)

(assert (=> bm!153605 (= call!153610 call!153611)))

(declare-fun b!2494278 () Bool)

(declare-fun res!1055008 () Bool)

(assert (=> b!2494278 (=> res!1055008 e!1582880)))

(assert (=> b!2494278 (= res!1055008 (not ((_ is Concat!12063) (reg!7696 r!27340))))))

(assert (=> b!2494278 (= e!1582876 e!1582880)))

(declare-fun b!2494279 () Bool)

(assert (=> b!2494279 (= e!1582879 e!1582876)))

(assert (=> b!2494279 (= c!396578 ((_ is Union!7367) (reg!7696 r!27340)))))

(declare-fun bm!153606 () Bool)

(assert (=> bm!153606 (= call!153609 (validRegex!2993 (ite c!396578 (regOne!15247 (reg!7696 r!27340)) (regTwo!15246 (reg!7696 r!27340)))))))

(declare-fun b!2494280 () Bool)

(declare-fun e!1582878 () Bool)

(assert (=> b!2494280 (= e!1582878 e!1582879)))

(assert (=> b!2494280 (= c!396579 ((_ is Star!7367) (reg!7696 r!27340)))))

(declare-fun b!2494277 () Bool)

(assert (=> b!2494277 (= e!1582882 call!153610)))

(declare-fun d!714673 () Bool)

(declare-fun res!1055006 () Bool)

(assert (=> d!714673 (=> res!1055006 e!1582878)))

(assert (=> d!714673 (= res!1055006 ((_ is ElementMatch!7367) (reg!7696 r!27340)))))

(assert (=> d!714673 (= (validRegex!2993 (reg!7696 r!27340)) e!1582878)))

(assert (= (and d!714673 (not res!1055006)) b!2494280))

(assert (= (and b!2494280 c!396579) b!2494273))

(assert (= (and b!2494280 (not c!396579)) b!2494279))

(assert (= (and b!2494273 res!1055004) b!2494272))

(assert (= (and b!2494279 c!396578) b!2494276))

(assert (= (and b!2494279 (not c!396578)) b!2494278))

(assert (= (and b!2494276 res!1055005) b!2494277))

(assert (= (and b!2494278 (not res!1055008)) b!2494275))

(assert (= (and b!2494275 res!1055007) b!2494274))

(assert (= (or b!2494276 b!2494274) bm!153606))

(assert (= (or b!2494277 b!2494275) bm!153605))

(assert (= (or b!2494272 bm!153605) bm!153604))

(declare-fun m!2859503 () Bool)

(assert (=> bm!153604 m!2859503))

(declare-fun m!2859505 () Bool)

(assert (=> b!2494273 m!2859505))

(declare-fun m!2859507 () Bool)

(assert (=> bm!153606 m!2859507))

(assert (=> b!2494224 d!714673))

(declare-fun c!396580 () Bool)

(declare-fun call!153614 () Bool)

(declare-fun c!396581 () Bool)

(declare-fun bm!153607 () Bool)

(assert (=> bm!153607 (= call!153614 (validRegex!2993 (ite c!396581 (reg!7696 r!27340) (ite c!396580 (regTwo!15247 r!27340) (regOne!15246 r!27340)))))))

(declare-fun b!2494281 () Bool)

(declare-fun e!1582888 () Bool)

(assert (=> b!2494281 (= e!1582888 call!153614)))

(declare-fun b!2494282 () Bool)

(declare-fun e!1582886 () Bool)

(assert (=> b!2494282 (= e!1582886 e!1582888)))

(declare-fun res!1055009 () Bool)

(assert (=> b!2494282 (= res!1055009 (not (nullable!2284 (reg!7696 r!27340))))))

(assert (=> b!2494282 (=> (not res!1055009) (not e!1582888))))

(declare-fun b!2494283 () Bool)

(declare-fun e!1582884 () Bool)

(declare-fun call!153612 () Bool)

(assert (=> b!2494283 (= e!1582884 call!153612)))

(declare-fun b!2494284 () Bool)

(declare-fun e!1582887 () Bool)

(assert (=> b!2494284 (= e!1582887 e!1582884)))

(declare-fun res!1055012 () Bool)

(assert (=> b!2494284 (=> (not res!1055012) (not e!1582884))))

(declare-fun call!153613 () Bool)

(assert (=> b!2494284 (= res!1055012 call!153613)))

(declare-fun b!2494285 () Bool)

(declare-fun res!1055010 () Bool)

(declare-fun e!1582889 () Bool)

(assert (=> b!2494285 (=> (not res!1055010) (not e!1582889))))

(assert (=> b!2494285 (= res!1055010 call!153612)))

(declare-fun e!1582883 () Bool)

(assert (=> b!2494285 (= e!1582883 e!1582889)))

(declare-fun bm!153608 () Bool)

(assert (=> bm!153608 (= call!153613 call!153614)))

(declare-fun b!2494287 () Bool)

(declare-fun res!1055013 () Bool)

(assert (=> b!2494287 (=> res!1055013 e!1582887)))

(assert (=> b!2494287 (= res!1055013 (not ((_ is Concat!12063) r!27340)))))

(assert (=> b!2494287 (= e!1582883 e!1582887)))

(declare-fun b!2494288 () Bool)

(assert (=> b!2494288 (= e!1582886 e!1582883)))

(assert (=> b!2494288 (= c!396580 ((_ is Union!7367) r!27340))))

(declare-fun bm!153609 () Bool)

(assert (=> bm!153609 (= call!153612 (validRegex!2993 (ite c!396580 (regOne!15247 r!27340) (regTwo!15246 r!27340))))))

(declare-fun b!2494289 () Bool)

(declare-fun e!1582885 () Bool)

(assert (=> b!2494289 (= e!1582885 e!1582886)))

(assert (=> b!2494289 (= c!396581 ((_ is Star!7367) r!27340))))

(declare-fun b!2494286 () Bool)

(assert (=> b!2494286 (= e!1582889 call!153613)))

(declare-fun d!714679 () Bool)

(declare-fun res!1055011 () Bool)

(assert (=> d!714679 (=> res!1055011 e!1582885)))

(assert (=> d!714679 (= res!1055011 ((_ is ElementMatch!7367) r!27340))))

(assert (=> d!714679 (= (validRegex!2993 r!27340) e!1582885)))

(assert (= (and d!714679 (not res!1055011)) b!2494289))

(assert (= (and b!2494289 c!396581) b!2494282))

(assert (= (and b!2494289 (not c!396581)) b!2494288))

(assert (= (and b!2494282 res!1055009) b!2494281))

(assert (= (and b!2494288 c!396580) b!2494285))

(assert (= (and b!2494288 (not c!396580)) b!2494287))

(assert (= (and b!2494285 res!1055010) b!2494286))

(assert (= (and b!2494287 (not res!1055013)) b!2494284))

(assert (= (and b!2494284 res!1055012) b!2494283))

(assert (= (or b!2494285 b!2494283) bm!153609))

(assert (= (or b!2494286 b!2494284) bm!153608))

(assert (= (or b!2494281 bm!153608) bm!153607))

(declare-fun m!2859509 () Bool)

(assert (=> bm!153607 m!2859509))

(declare-fun m!2859511 () Bool)

(assert (=> b!2494282 m!2859511))

(declare-fun m!2859513 () Bool)

(assert (=> bm!153609 m!2859513))

(assert (=> start!243620 d!714679))

(declare-fun d!714681 () Bool)

(declare-fun nullableFct!569 (Regex!7367) Bool)

(assert (=> d!714681 (= (nullable!2284 lt!894288) (nullableFct!569 lt!894288))))

(declare-fun bs!468424 () Bool)

(assert (= bs!468424 d!714681))

(declare-fun m!2859515 () Bool)

(assert (=> bs!468424 m!2859515))

(assert (=> b!2494222 d!714681))

(declare-fun d!714683 () Bool)

(declare-fun lt!894293 () Regex!7367)

(assert (=> d!714683 (validRegex!2993 lt!894293)))

(declare-fun e!1582902 () Regex!7367)

(assert (=> d!714683 (= lt!894293 e!1582902)))

(declare-fun c!396594 () Bool)

(assert (=> d!714683 (= c!396594 ((_ is Cons!29332) tl!4068))))

(assert (=> d!714683 (validRegex!2993 lt!894284)))

(assert (=> d!714683 (= (derivative!62 lt!894284 tl!4068) lt!894293)))

(declare-fun b!2494314 () Bool)

(assert (=> b!2494314 (= e!1582902 (derivative!62 (derivativeStep!1936 lt!894284 (h!34752 tl!4068)) (t!211131 tl!4068)))))

(declare-fun b!2494315 () Bool)

(assert (=> b!2494315 (= e!1582902 lt!894284)))

(assert (= (and d!714683 c!396594) b!2494314))

(assert (= (and d!714683 (not c!396594)) b!2494315))

(declare-fun m!2859517 () Bool)

(assert (=> d!714683 m!2859517))

(declare-fun m!2859519 () Bool)

(assert (=> d!714683 m!2859519))

(declare-fun m!2859521 () Bool)

(assert (=> b!2494314 m!2859521))

(assert (=> b!2494314 m!2859521))

(declare-fun m!2859523 () Bool)

(assert (=> b!2494314 m!2859523))

(assert (=> b!2494222 d!714683))

(declare-fun b!2494372 () Bool)

(declare-fun c!396624 () Bool)

(assert (=> b!2494372 (= c!396624 ((_ is Union!7367) r!27340))))

(declare-fun e!1582935 () Regex!7367)

(declare-fun e!1582933 () Regex!7367)

(assert (=> b!2494372 (= e!1582935 e!1582933)))

(declare-fun b!2494373 () Bool)

(declare-fun e!1582936 () Regex!7367)

(assert (=> b!2494373 (= e!1582933 e!1582936)))

(declare-fun c!396621 () Bool)

(assert (=> b!2494373 (= c!396621 ((_ is Star!7367) r!27340))))

(declare-fun b!2494374 () Bool)

(declare-fun e!1582934 () Regex!7367)

(declare-fun call!153645 () Regex!7367)

(assert (=> b!2494374 (= e!1582934 (Union!7367 (Concat!12063 call!153645 (regTwo!15246 r!27340)) EmptyLang!7367))))

(declare-fun call!153643 () Regex!7367)

(declare-fun bm!153637 () Bool)

(assert (=> bm!153637 (= call!153643 (derivativeStep!1936 (ite c!396624 (regTwo!15247 r!27340) (ite c!396621 (reg!7696 r!27340) (regOne!15246 r!27340))) c!14016))))

(declare-fun b!2494375 () Bool)

(declare-fun c!396623 () Bool)

(assert (=> b!2494375 (= c!396623 (nullable!2284 (regOne!15246 r!27340)))))

(assert (=> b!2494375 (= e!1582936 e!1582934)))

(declare-fun bm!153638 () Bool)

(declare-fun call!153644 () Regex!7367)

(assert (=> bm!153638 (= call!153645 call!153644)))

(declare-fun b!2494376 () Bool)

(declare-fun e!1582937 () Regex!7367)

(assert (=> b!2494376 (= e!1582937 e!1582935)))

(declare-fun c!396620 () Bool)

(assert (=> b!2494376 (= c!396620 ((_ is ElementMatch!7367) r!27340))))

(declare-fun bm!153639 () Bool)

(declare-fun call!153642 () Regex!7367)

(assert (=> bm!153639 (= call!153642 (derivativeStep!1936 (ite c!396624 (regOne!15247 r!27340) (regTwo!15246 r!27340)) c!14016))))

(declare-fun b!2494377 () Bool)

(assert (=> b!2494377 (= e!1582933 (Union!7367 call!153642 call!153643))))

(declare-fun b!2494378 () Bool)

(assert (=> b!2494378 (= e!1582937 EmptyLang!7367)))

(declare-fun b!2494379 () Bool)

(assert (=> b!2494379 (= e!1582934 (Union!7367 (Concat!12063 call!153645 (regTwo!15246 r!27340)) call!153642))))

(declare-fun b!2494371 () Bool)

(assert (=> b!2494371 (= e!1582936 (Concat!12063 call!153644 r!27340))))

(declare-fun d!714685 () Bool)

(declare-fun lt!894301 () Regex!7367)

(assert (=> d!714685 (validRegex!2993 lt!894301)))

(assert (=> d!714685 (= lt!894301 e!1582937)))

(declare-fun c!396622 () Bool)

(assert (=> d!714685 (= c!396622 (or ((_ is EmptyExpr!7367) r!27340) ((_ is EmptyLang!7367) r!27340)))))

(assert (=> d!714685 (validRegex!2993 r!27340)))

(assert (=> d!714685 (= (derivativeStep!1936 r!27340 c!14016) lt!894301)))

(declare-fun bm!153640 () Bool)

(assert (=> bm!153640 (= call!153644 call!153643)))

(declare-fun b!2494380 () Bool)

(assert (=> b!2494380 (= e!1582935 (ite (= c!14016 (c!396567 r!27340)) EmptyExpr!7367 EmptyLang!7367))))

(assert (= (and d!714685 c!396622) b!2494378))

(assert (= (and d!714685 (not c!396622)) b!2494376))

(assert (= (and b!2494376 c!396620) b!2494380))

(assert (= (and b!2494376 (not c!396620)) b!2494372))

(assert (= (and b!2494372 c!396624) b!2494377))

(assert (= (and b!2494372 (not c!396624)) b!2494373))

(assert (= (and b!2494373 c!396621) b!2494371))

(assert (= (and b!2494373 (not c!396621)) b!2494375))

(assert (= (and b!2494375 c!396623) b!2494379))

(assert (= (and b!2494375 (not c!396623)) b!2494374))

(assert (= (or b!2494379 b!2494374) bm!153638))

(assert (= (or b!2494371 bm!153638) bm!153640))

(assert (= (or b!2494377 bm!153640) bm!153637))

(assert (= (or b!2494377 b!2494379) bm!153639))

(declare-fun m!2859557 () Bool)

(assert (=> bm!153637 m!2859557))

(declare-fun m!2859559 () Bool)

(assert (=> b!2494375 m!2859559))

(declare-fun m!2859561 () Bool)

(assert (=> bm!153639 m!2859561))

(declare-fun m!2859563 () Bool)

(assert (=> d!714685 m!2859563))

(assert (=> d!714685 m!2859495))

(assert (=> b!2494222 d!714685))

(declare-fun b!2494465 () Bool)

(declare-fun e!1582980 () Bool)

(declare-fun head!5677 (List!29432) C!14892)

(declare-fun tail!3954 (List!29432) List!29432)

(assert (=> b!2494465 (= e!1582980 (matchR!3376 (derivativeStep!1936 lt!894288 (head!5677 Nil!29332)) (tail!3954 Nil!29332)))))

(declare-fun b!2494466 () Bool)

(declare-fun res!1055069 () Bool)

(declare-fun e!1582983 () Bool)

(assert (=> b!2494466 (=> res!1055069 e!1582983)))

(declare-fun isEmpty!16801 (List!29432) Bool)

(assert (=> b!2494466 (= res!1055069 (not (isEmpty!16801 (tail!3954 Nil!29332))))))

(declare-fun b!2494467 () Bool)

(assert (=> b!2494467 (= e!1582980 (nullable!2284 lt!894288))))

(declare-fun b!2494468 () Bool)

(declare-fun res!1055070 () Bool)

(declare-fun e!1582985 () Bool)

(assert (=> b!2494468 (=> (not res!1055070) (not e!1582985))))

(declare-fun call!153652 () Bool)

(assert (=> b!2494468 (= res!1055070 (not call!153652))))

(declare-fun b!2494469 () Bool)

(declare-fun e!1582986 () Bool)

(declare-fun e!1582982 () Bool)

(assert (=> b!2494469 (= e!1582986 e!1582982)))

(declare-fun c!396644 () Bool)

(assert (=> b!2494469 (= c!396644 ((_ is EmptyLang!7367) lt!894288))))

(declare-fun b!2494470 () Bool)

(declare-fun lt!894310 () Bool)

(assert (=> b!2494470 (= e!1582982 (not lt!894310))))

(declare-fun b!2494471 () Bool)

(assert (=> b!2494471 (= e!1582986 (= lt!894310 call!153652))))

(declare-fun b!2494472 () Bool)

(declare-fun res!1055067 () Bool)

(assert (=> b!2494472 (=> (not res!1055067) (not e!1582985))))

(assert (=> b!2494472 (= res!1055067 (isEmpty!16801 (tail!3954 Nil!29332)))))

(declare-fun b!2494473 () Bool)

(assert (=> b!2494473 (= e!1582985 (= (head!5677 Nil!29332) (c!396567 lt!894288)))))

(declare-fun b!2494474 () Bool)

(assert (=> b!2494474 (= e!1582983 (not (= (head!5677 Nil!29332) (c!396567 lt!894288))))))

(declare-fun d!714697 () Bool)

(assert (=> d!714697 e!1582986))

(declare-fun c!396645 () Bool)

(assert (=> d!714697 (= c!396645 ((_ is EmptyExpr!7367) lt!894288))))

(assert (=> d!714697 (= lt!894310 e!1582980)))

(declare-fun c!396643 () Bool)

(assert (=> d!714697 (= c!396643 (isEmpty!16801 Nil!29332))))

(assert (=> d!714697 (validRegex!2993 lt!894288)))

(assert (=> d!714697 (= (matchR!3376 lt!894288 Nil!29332) lt!894310)))

(declare-fun bm!153647 () Bool)

(assert (=> bm!153647 (= call!153652 (isEmpty!16801 Nil!29332))))

(declare-fun b!2494475 () Bool)

(declare-fun res!1055072 () Bool)

(declare-fun e!1582981 () Bool)

(assert (=> b!2494475 (=> res!1055072 e!1582981)))

(assert (=> b!2494475 (= res!1055072 e!1582985)))

(declare-fun res!1055071 () Bool)

(assert (=> b!2494475 (=> (not res!1055071) (not e!1582985))))

(assert (=> b!2494475 (= res!1055071 lt!894310)))

(declare-fun b!2494476 () Bool)

(declare-fun res!1055073 () Bool)

(assert (=> b!2494476 (=> res!1055073 e!1582981)))

(assert (=> b!2494476 (= res!1055073 (not ((_ is ElementMatch!7367) lt!894288)))))

(assert (=> b!2494476 (= e!1582982 e!1582981)))

(declare-fun b!2494477 () Bool)

(declare-fun e!1582984 () Bool)

(assert (=> b!2494477 (= e!1582981 e!1582984)))

(declare-fun res!1055068 () Bool)

(assert (=> b!2494477 (=> (not res!1055068) (not e!1582984))))

(assert (=> b!2494477 (= res!1055068 (not lt!894310))))

(declare-fun b!2494478 () Bool)

(assert (=> b!2494478 (= e!1582984 e!1582983)))

(declare-fun res!1055074 () Bool)

(assert (=> b!2494478 (=> res!1055074 e!1582983)))

(assert (=> b!2494478 (= res!1055074 call!153652)))

(assert (= (and d!714697 c!396643) b!2494467))

(assert (= (and d!714697 (not c!396643)) b!2494465))

(assert (= (and d!714697 c!396645) b!2494471))

(assert (= (and d!714697 (not c!396645)) b!2494469))

(assert (= (and b!2494469 c!396644) b!2494470))

(assert (= (and b!2494469 (not c!396644)) b!2494476))

(assert (= (and b!2494476 (not res!1055073)) b!2494475))

(assert (= (and b!2494475 res!1055071) b!2494468))

(assert (= (and b!2494468 res!1055070) b!2494472))

(assert (= (and b!2494472 res!1055067) b!2494473))

(assert (= (and b!2494475 (not res!1055072)) b!2494477))

(assert (= (and b!2494477 res!1055068) b!2494478))

(assert (= (and b!2494478 (not res!1055074)) b!2494466))

(assert (= (and b!2494466 (not res!1055069)) b!2494474))

(assert (= (or b!2494471 b!2494468 b!2494478) bm!153647))

(assert (=> b!2494467 m!2859483))

(declare-fun m!2859607 () Bool)

(assert (=> b!2494474 m!2859607))

(assert (=> b!2494465 m!2859607))

(assert (=> b!2494465 m!2859607))

(declare-fun m!2859609 () Bool)

(assert (=> b!2494465 m!2859609))

(declare-fun m!2859611 () Bool)

(assert (=> b!2494465 m!2859611))

(assert (=> b!2494465 m!2859609))

(assert (=> b!2494465 m!2859611))

(declare-fun m!2859613 () Bool)

(assert (=> b!2494465 m!2859613))

(assert (=> b!2494466 m!2859611))

(assert (=> b!2494466 m!2859611))

(declare-fun m!2859615 () Bool)

(assert (=> b!2494466 m!2859615))

(declare-fun m!2859617 () Bool)

(assert (=> bm!153647 m!2859617))

(assert (=> d!714697 m!2859617))

(declare-fun m!2859619 () Bool)

(assert (=> d!714697 m!2859619))

(assert (=> b!2494472 m!2859611))

(assert (=> b!2494472 m!2859611))

(assert (=> b!2494472 m!2859615))

(assert (=> b!2494473 m!2859607))

(assert (=> b!2494216 d!714697))

(declare-fun b!2494491 () Bool)

(declare-fun e!1582990 () Bool)

(assert (=> b!2494491 (= e!1582990 (matchR!3376 (derivativeStep!1936 lt!894284 (head!5677 tl!4068)) (tail!3954 tl!4068)))))

(declare-fun b!2494492 () Bool)

(declare-fun res!1055077 () Bool)

(declare-fun e!1582993 () Bool)

(assert (=> b!2494492 (=> res!1055077 e!1582993)))

(assert (=> b!2494492 (= res!1055077 (not (isEmpty!16801 (tail!3954 tl!4068))))))

(declare-fun b!2494493 () Bool)

(assert (=> b!2494493 (= e!1582990 (nullable!2284 lt!894284))))

(declare-fun b!2494494 () Bool)

(declare-fun res!1055078 () Bool)

(declare-fun e!1582995 () Bool)

(assert (=> b!2494494 (=> (not res!1055078) (not e!1582995))))

(declare-fun call!153653 () Bool)

(assert (=> b!2494494 (= res!1055078 (not call!153653))))

(declare-fun b!2494495 () Bool)

(declare-fun e!1582996 () Bool)

(declare-fun e!1582992 () Bool)

(assert (=> b!2494495 (= e!1582996 e!1582992)))

(declare-fun c!396648 () Bool)

(assert (=> b!2494495 (= c!396648 ((_ is EmptyLang!7367) lt!894284))))

(declare-fun b!2494496 () Bool)

(declare-fun lt!894313 () Bool)

(assert (=> b!2494496 (= e!1582992 (not lt!894313))))

(declare-fun b!2494497 () Bool)

(assert (=> b!2494497 (= e!1582996 (= lt!894313 call!153653))))

(declare-fun b!2494498 () Bool)

(declare-fun res!1055075 () Bool)

(assert (=> b!2494498 (=> (not res!1055075) (not e!1582995))))

(assert (=> b!2494498 (= res!1055075 (isEmpty!16801 (tail!3954 tl!4068)))))

(declare-fun b!2494499 () Bool)

(assert (=> b!2494499 (= e!1582995 (= (head!5677 tl!4068) (c!396567 lt!894284)))))

(declare-fun b!2494500 () Bool)

(assert (=> b!2494500 (= e!1582993 (not (= (head!5677 tl!4068) (c!396567 lt!894284))))))

(declare-fun d!714707 () Bool)

(assert (=> d!714707 e!1582996))

(declare-fun c!396649 () Bool)

(assert (=> d!714707 (= c!396649 ((_ is EmptyExpr!7367) lt!894284))))

(assert (=> d!714707 (= lt!894313 e!1582990)))

(declare-fun c!396647 () Bool)

(assert (=> d!714707 (= c!396647 (isEmpty!16801 tl!4068))))

(assert (=> d!714707 (validRegex!2993 lt!894284)))

(assert (=> d!714707 (= (matchR!3376 lt!894284 tl!4068) lt!894313)))

(declare-fun bm!153648 () Bool)

(assert (=> bm!153648 (= call!153653 (isEmpty!16801 tl!4068))))

(declare-fun b!2494501 () Bool)

(declare-fun res!1055080 () Bool)

(declare-fun e!1582991 () Bool)

(assert (=> b!2494501 (=> res!1055080 e!1582991)))

(assert (=> b!2494501 (= res!1055080 e!1582995)))

(declare-fun res!1055079 () Bool)

(assert (=> b!2494501 (=> (not res!1055079) (not e!1582995))))

(assert (=> b!2494501 (= res!1055079 lt!894313)))

(declare-fun b!2494502 () Bool)

(declare-fun res!1055081 () Bool)

(assert (=> b!2494502 (=> res!1055081 e!1582991)))

(assert (=> b!2494502 (= res!1055081 (not ((_ is ElementMatch!7367) lt!894284)))))

(assert (=> b!2494502 (= e!1582992 e!1582991)))

(declare-fun b!2494503 () Bool)

(declare-fun e!1582994 () Bool)

(assert (=> b!2494503 (= e!1582991 e!1582994)))

(declare-fun res!1055076 () Bool)

(assert (=> b!2494503 (=> (not res!1055076) (not e!1582994))))

(assert (=> b!2494503 (= res!1055076 (not lt!894313))))

(declare-fun b!2494504 () Bool)

(assert (=> b!2494504 (= e!1582994 e!1582993)))

(declare-fun res!1055082 () Bool)

(assert (=> b!2494504 (=> res!1055082 e!1582993)))

(assert (=> b!2494504 (= res!1055082 call!153653)))

(assert (= (and d!714707 c!396647) b!2494493))

(assert (= (and d!714707 (not c!396647)) b!2494491))

(assert (= (and d!714707 c!396649) b!2494497))

(assert (= (and d!714707 (not c!396649)) b!2494495))

(assert (= (and b!2494495 c!396648) b!2494496))

(assert (= (and b!2494495 (not c!396648)) b!2494502))

(assert (= (and b!2494502 (not res!1055081)) b!2494501))

(assert (= (and b!2494501 res!1055079) b!2494494))

(assert (= (and b!2494494 res!1055078) b!2494498))

(assert (= (and b!2494498 res!1055075) b!2494499))

(assert (= (and b!2494501 (not res!1055080)) b!2494503))

(assert (= (and b!2494503 res!1055076) b!2494504))

(assert (= (and b!2494504 (not res!1055082)) b!2494492))

(assert (= (and b!2494492 (not res!1055077)) b!2494500))

(assert (= (or b!2494497 b!2494494 b!2494504) bm!153648))

(declare-fun m!2859621 () Bool)

(assert (=> b!2494493 m!2859621))

(declare-fun m!2859623 () Bool)

(assert (=> b!2494500 m!2859623))

(assert (=> b!2494491 m!2859623))

(assert (=> b!2494491 m!2859623))

(declare-fun m!2859625 () Bool)

(assert (=> b!2494491 m!2859625))

(declare-fun m!2859627 () Bool)

(assert (=> b!2494491 m!2859627))

(assert (=> b!2494491 m!2859625))

(assert (=> b!2494491 m!2859627))

(declare-fun m!2859629 () Bool)

(assert (=> b!2494491 m!2859629))

(assert (=> b!2494492 m!2859627))

(assert (=> b!2494492 m!2859627))

(declare-fun m!2859631 () Bool)

(assert (=> b!2494492 m!2859631))

(declare-fun m!2859633 () Bool)

(assert (=> bm!153648 m!2859633))

(assert (=> d!714707 m!2859633))

(assert (=> d!714707 m!2859519))

(assert (=> b!2494498 m!2859627))

(assert (=> b!2494498 m!2859627))

(assert (=> b!2494498 m!2859631))

(assert (=> b!2494499 m!2859623))

(assert (=> b!2494216 d!714707))

(declare-fun d!714709 () Bool)

(assert (=> d!714709 (= (matchR!3376 lt!894284 tl!4068) (matchR!3376 (derivative!62 lt!894284 tl!4068) Nil!29332))))

(declare-fun lt!894316 () Unit!43003)

(declare-fun choose!14735 (Regex!7367 List!29432) Unit!43003)

(assert (=> d!714709 (= lt!894316 (choose!14735 lt!894284 tl!4068))))

(assert (=> d!714709 (validRegex!2993 lt!894284)))

(assert (=> d!714709 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!22 lt!894284 tl!4068) lt!894316)))

(declare-fun bs!468428 () Bool)

(assert (= bs!468428 d!714709))

(assert (=> bs!468428 m!2859519))

(assert (=> bs!468428 m!2859485))

(declare-fun m!2859635 () Bool)

(assert (=> bs!468428 m!2859635))

(assert (=> bs!468428 m!2859491))

(declare-fun m!2859637 () Bool)

(assert (=> bs!468428 m!2859637))

(assert (=> bs!468428 m!2859485))

(assert (=> b!2494216 d!714709))

(declare-fun b!2494531 () Bool)

(declare-fun c!396654 () Bool)

(assert (=> b!2494531 (= c!396654 ((_ is Union!7367) (reg!7696 r!27340)))))

(declare-fun e!1583007 () Regex!7367)

(declare-fun e!1583005 () Regex!7367)

(assert (=> b!2494531 (= e!1583007 e!1583005)))

(declare-fun b!2494532 () Bool)

(declare-fun e!1583008 () Regex!7367)

(assert (=> b!2494532 (= e!1583005 e!1583008)))

(declare-fun c!396651 () Bool)

(assert (=> b!2494532 (= c!396651 ((_ is Star!7367) (reg!7696 r!27340)))))

(declare-fun b!2494533 () Bool)

(declare-fun e!1583006 () Regex!7367)

(declare-fun call!153657 () Regex!7367)

(assert (=> b!2494533 (= e!1583006 (Union!7367 (Concat!12063 call!153657 (regTwo!15246 (reg!7696 r!27340))) EmptyLang!7367))))

(declare-fun bm!153649 () Bool)

(declare-fun call!153655 () Regex!7367)

(assert (=> bm!153649 (= call!153655 (derivativeStep!1936 (ite c!396654 (regTwo!15247 (reg!7696 r!27340)) (ite c!396651 (reg!7696 (reg!7696 r!27340)) (regOne!15246 (reg!7696 r!27340)))) c!14016))))

(declare-fun b!2494534 () Bool)

(declare-fun c!396653 () Bool)

(assert (=> b!2494534 (= c!396653 (nullable!2284 (regOne!15246 (reg!7696 r!27340))))))

(assert (=> b!2494534 (= e!1583008 e!1583006)))

(declare-fun bm!153650 () Bool)

(declare-fun call!153656 () Regex!7367)

(assert (=> bm!153650 (= call!153657 call!153656)))

(declare-fun b!2494535 () Bool)

(declare-fun e!1583009 () Regex!7367)

(assert (=> b!2494535 (= e!1583009 e!1583007)))

(declare-fun c!396650 () Bool)

(assert (=> b!2494535 (= c!396650 ((_ is ElementMatch!7367) (reg!7696 r!27340)))))

(declare-fun call!153654 () Regex!7367)

(declare-fun bm!153651 () Bool)

(assert (=> bm!153651 (= call!153654 (derivativeStep!1936 (ite c!396654 (regOne!15247 (reg!7696 r!27340)) (regTwo!15246 (reg!7696 r!27340))) c!14016))))

(declare-fun b!2494536 () Bool)

(assert (=> b!2494536 (= e!1583005 (Union!7367 call!153654 call!153655))))

(declare-fun b!2494537 () Bool)

(assert (=> b!2494537 (= e!1583009 EmptyLang!7367)))

(declare-fun b!2494538 () Bool)

(assert (=> b!2494538 (= e!1583006 (Union!7367 (Concat!12063 call!153657 (regTwo!15246 (reg!7696 r!27340))) call!153654))))

(declare-fun b!2494530 () Bool)

(assert (=> b!2494530 (= e!1583008 (Concat!12063 call!153656 (reg!7696 r!27340)))))

(declare-fun d!714711 () Bool)

(declare-fun lt!894317 () Regex!7367)

(assert (=> d!714711 (validRegex!2993 lt!894317)))

(assert (=> d!714711 (= lt!894317 e!1583009)))

(declare-fun c!396652 () Bool)

(assert (=> d!714711 (= c!396652 (or ((_ is EmptyExpr!7367) (reg!7696 r!27340)) ((_ is EmptyLang!7367) (reg!7696 r!27340))))))

(assert (=> d!714711 (validRegex!2993 (reg!7696 r!27340))))

(assert (=> d!714711 (= (derivativeStep!1936 (reg!7696 r!27340) c!14016) lt!894317)))

(declare-fun bm!153652 () Bool)

(assert (=> bm!153652 (= call!153656 call!153655)))

(declare-fun b!2494539 () Bool)

(assert (=> b!2494539 (= e!1583007 (ite (= c!14016 (c!396567 (reg!7696 r!27340))) EmptyExpr!7367 EmptyLang!7367))))

(assert (= (and d!714711 c!396652) b!2494537))

(assert (= (and d!714711 (not c!396652)) b!2494535))

(assert (= (and b!2494535 c!396650) b!2494539))

(assert (= (and b!2494535 (not c!396650)) b!2494531))

(assert (= (and b!2494531 c!396654) b!2494536))

(assert (= (and b!2494531 (not c!396654)) b!2494532))

(assert (= (and b!2494532 c!396651) b!2494530))

(assert (= (and b!2494532 (not c!396651)) b!2494534))

(assert (= (and b!2494534 c!396653) b!2494538))

(assert (= (and b!2494534 (not c!396653)) b!2494533))

(assert (= (or b!2494538 b!2494533) bm!153650))

(assert (= (or b!2494530 bm!153650) bm!153652))

(assert (= (or b!2494536 bm!153652) bm!153649))

(assert (= (or b!2494536 b!2494538) bm!153651))

(declare-fun m!2859639 () Bool)

(assert (=> bm!153649 m!2859639))

(declare-fun m!2859641 () Bool)

(assert (=> b!2494534 m!2859641))

(declare-fun m!2859643 () Bool)

(assert (=> bm!153651 m!2859643))

(declare-fun m!2859645 () Bool)

(assert (=> d!714711 m!2859645))

(assert (=> d!714711 m!2859481))

(assert (=> b!2494226 d!714711))

(declare-fun d!714713 () Bool)

(assert (=> d!714713 (= (nullable!2284 (derivative!62 lt!894287 tl!4068)) (nullableFct!569 (derivative!62 lt!894287 tl!4068)))))

(declare-fun bs!468429 () Bool)

(assert (= bs!468429 d!714713))

(assert (=> bs!468429 m!2859477))

(declare-fun m!2859647 () Bool)

(assert (=> bs!468429 m!2859647))

(assert (=> b!2494220 d!714713))

(declare-fun d!714715 () Bool)

(declare-fun lt!894318 () Regex!7367)

(assert (=> d!714715 (validRegex!2993 lt!894318)))

(declare-fun e!1583010 () Regex!7367)

(assert (=> d!714715 (= lt!894318 e!1583010)))

(declare-fun c!396655 () Bool)

(assert (=> d!714715 (= c!396655 ((_ is Cons!29332) tl!4068))))

(assert (=> d!714715 (validRegex!2993 lt!894287)))

(assert (=> d!714715 (= (derivative!62 lt!894287 tl!4068) lt!894318)))

(declare-fun b!2494540 () Bool)

(assert (=> b!2494540 (= e!1583010 (derivative!62 (derivativeStep!1936 lt!894287 (h!34752 tl!4068)) (t!211131 tl!4068)))))

(declare-fun b!2494541 () Bool)

(assert (=> b!2494541 (= e!1583010 lt!894287)))

(assert (= (and d!714715 c!396655) b!2494540))

(assert (= (and d!714715 (not c!396655)) b!2494541))

(declare-fun m!2859649 () Bool)

(assert (=> d!714715 m!2859649))

(declare-fun m!2859651 () Bool)

(assert (=> d!714715 m!2859651))

(declare-fun m!2859653 () Bool)

(assert (=> b!2494540 m!2859653))

(assert (=> b!2494540 m!2859653))

(declare-fun m!2859655 () Bool)

(assert (=> b!2494540 m!2859655))

(assert (=> b!2494220 d!714715))

(declare-fun b!2494555 () Bool)

(declare-fun e!1583013 () Bool)

(declare-fun tp!799031 () Bool)

(declare-fun tp!799035 () Bool)

(assert (=> b!2494555 (= e!1583013 (and tp!799031 tp!799035))))

(declare-fun b!2494553 () Bool)

(declare-fun tp!799034 () Bool)

(declare-fun tp!799033 () Bool)

(assert (=> b!2494553 (= e!1583013 (and tp!799034 tp!799033))))

(declare-fun b!2494552 () Bool)

(assert (=> b!2494552 (= e!1583013 tp_is_empty!12589)))

(declare-fun b!2494554 () Bool)

(declare-fun tp!799032 () Bool)

(assert (=> b!2494554 (= e!1583013 tp!799032)))

(assert (=> b!2494219 (= tp!798980 e!1583013)))

(assert (= (and b!2494219 ((_ is ElementMatch!7367) (regOne!15246 r!27340))) b!2494552))

(assert (= (and b!2494219 ((_ is Concat!12063) (regOne!15246 r!27340))) b!2494553))

(assert (= (and b!2494219 ((_ is Star!7367) (regOne!15246 r!27340))) b!2494554))

(assert (= (and b!2494219 ((_ is Union!7367) (regOne!15246 r!27340))) b!2494555))

(declare-fun b!2494559 () Bool)

(declare-fun e!1583014 () Bool)

(declare-fun tp!799036 () Bool)

(declare-fun tp!799040 () Bool)

(assert (=> b!2494559 (= e!1583014 (and tp!799036 tp!799040))))

(declare-fun b!2494557 () Bool)

(declare-fun tp!799039 () Bool)

(declare-fun tp!799038 () Bool)

(assert (=> b!2494557 (= e!1583014 (and tp!799039 tp!799038))))

(declare-fun b!2494556 () Bool)

(assert (=> b!2494556 (= e!1583014 tp_is_empty!12589)))

(declare-fun b!2494558 () Bool)

(declare-fun tp!799037 () Bool)

(assert (=> b!2494558 (= e!1583014 tp!799037)))

(assert (=> b!2494219 (= tp!798981 e!1583014)))

(assert (= (and b!2494219 ((_ is ElementMatch!7367) (regTwo!15246 r!27340))) b!2494556))

(assert (= (and b!2494219 ((_ is Concat!12063) (regTwo!15246 r!27340))) b!2494557))

(assert (= (and b!2494219 ((_ is Star!7367) (regTwo!15246 r!27340))) b!2494558))

(assert (= (and b!2494219 ((_ is Union!7367) (regTwo!15246 r!27340))) b!2494559))

(declare-fun b!2494563 () Bool)

(declare-fun e!1583015 () Bool)

(declare-fun tp!799041 () Bool)

(declare-fun tp!799045 () Bool)

(assert (=> b!2494563 (= e!1583015 (and tp!799041 tp!799045))))

(declare-fun b!2494561 () Bool)

(declare-fun tp!799044 () Bool)

(declare-fun tp!799043 () Bool)

(assert (=> b!2494561 (= e!1583015 (and tp!799044 tp!799043))))

(declare-fun b!2494560 () Bool)

(assert (=> b!2494560 (= e!1583015 tp_is_empty!12589)))

(declare-fun b!2494562 () Bool)

(declare-fun tp!799042 () Bool)

(assert (=> b!2494562 (= e!1583015 tp!799042)))

(assert (=> b!2494218 (= tp!798982 e!1583015)))

(assert (= (and b!2494218 ((_ is ElementMatch!7367) (reg!7696 r!27340))) b!2494560))

(assert (= (and b!2494218 ((_ is Concat!12063) (reg!7696 r!27340))) b!2494561))

(assert (= (and b!2494218 ((_ is Star!7367) (reg!7696 r!27340))) b!2494562))

(assert (= (and b!2494218 ((_ is Union!7367) (reg!7696 r!27340))) b!2494563))

(declare-fun b!2494567 () Bool)

(declare-fun e!1583016 () Bool)

(declare-fun tp!799046 () Bool)

(declare-fun tp!799050 () Bool)

(assert (=> b!2494567 (= e!1583016 (and tp!799046 tp!799050))))

(declare-fun b!2494565 () Bool)

(declare-fun tp!799049 () Bool)

(declare-fun tp!799048 () Bool)

(assert (=> b!2494565 (= e!1583016 (and tp!799049 tp!799048))))

(declare-fun b!2494564 () Bool)

(assert (=> b!2494564 (= e!1583016 tp_is_empty!12589)))

(declare-fun b!2494566 () Bool)

(declare-fun tp!799047 () Bool)

(assert (=> b!2494566 (= e!1583016 tp!799047)))

(assert (=> b!2494223 (= tp!798978 e!1583016)))

(assert (= (and b!2494223 ((_ is ElementMatch!7367) (regOne!15247 r!27340))) b!2494564))

(assert (= (and b!2494223 ((_ is Concat!12063) (regOne!15247 r!27340))) b!2494565))

(assert (= (and b!2494223 ((_ is Star!7367) (regOne!15247 r!27340))) b!2494566))

(assert (= (and b!2494223 ((_ is Union!7367) (regOne!15247 r!27340))) b!2494567))

(declare-fun b!2494571 () Bool)

(declare-fun e!1583017 () Bool)

(declare-fun tp!799051 () Bool)

(declare-fun tp!799055 () Bool)

(assert (=> b!2494571 (= e!1583017 (and tp!799051 tp!799055))))

(declare-fun b!2494569 () Bool)

(declare-fun tp!799054 () Bool)

(declare-fun tp!799053 () Bool)

(assert (=> b!2494569 (= e!1583017 (and tp!799054 tp!799053))))

(declare-fun b!2494568 () Bool)

(assert (=> b!2494568 (= e!1583017 tp_is_empty!12589)))

(declare-fun b!2494570 () Bool)

(declare-fun tp!799052 () Bool)

(assert (=> b!2494570 (= e!1583017 tp!799052)))

(assert (=> b!2494223 (= tp!798977 e!1583017)))

(assert (= (and b!2494223 ((_ is ElementMatch!7367) (regTwo!15247 r!27340))) b!2494568))

(assert (= (and b!2494223 ((_ is Concat!12063) (regTwo!15247 r!27340))) b!2494569))

(assert (= (and b!2494223 ((_ is Star!7367) (regTwo!15247 r!27340))) b!2494570))

(assert (= (and b!2494223 ((_ is Union!7367) (regTwo!15247 r!27340))) b!2494571))

(declare-fun b!2494576 () Bool)

(declare-fun e!1583020 () Bool)

(declare-fun tp!799058 () Bool)

(assert (=> b!2494576 (= e!1583020 (and tp_is_empty!12589 tp!799058))))

(assert (=> b!2494217 (= tp!798979 e!1583020)))

(assert (= (and b!2494217 ((_ is Cons!29332) (t!211131 tl!4068))) b!2494576))

(check-sat (not bm!153604) (not b!2494559) (not d!714707) (not b!2494557) (not b!2494273) (not bm!153606) (not b!2494554) (not d!714681) (not d!714685) (not b!2494472) (not b!2494282) (not b!2494473) (not b!2494491) (not b!2494567) (not b!2494563) (not b!2494466) (not b!2494540) (not bm!153607) (not b!2494571) (not b!2494534) (not bm!153639) (not b!2494561) (not d!714709) (not d!714713) (not b!2494498) (not b!2494493) (not b!2494566) (not d!714697) (not bm!153648) (not b!2494465) (not d!714715) (not b!2494474) (not bm!153649) (not bm!153637) (not b!2494562) (not b!2494553) (not b!2494314) (not b!2494576) (not b!2494569) (not b!2494500) (not d!714683) (not b!2494558) (not bm!153651) (not b!2494375) (not b!2494570) (not b!2494492) (not b!2494467) (not bm!153609) (not b!2494555) (not bm!153647) (not d!714711) (not b!2494565) tp_is_empty!12589 (not b!2494499))
(check-sat)
