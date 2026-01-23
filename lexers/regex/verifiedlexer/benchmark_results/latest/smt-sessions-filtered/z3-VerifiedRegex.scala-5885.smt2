; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288328 () Bool)

(assert start!288328)

(declare-fun b!2984381 () Bool)

(declare-fun e!1876672 () Bool)

(declare-datatypes ((C!18828 0))(
  ( (C!18829 (val!11450 Int)) )
))
(declare-datatypes ((Regex!9321 0))(
  ( (ElementMatch!9321 (c!490295 C!18828)) (Concat!14642 (regOne!19154 Regex!9321) (regTwo!19154 Regex!9321)) (EmptyExpr!9321) (Star!9321 (reg!9650 Regex!9321)) (EmptyLang!9321) (Union!9321 (regOne!19155 Regex!9321) (regTwo!19155 Regex!9321)) )
))
(declare-fun r!17423 () Regex!9321)

(declare-fun validRegex!4054 (Regex!9321) Bool)

(declare-fun simplify!322 (Regex!9321) Regex!9321)

(assert (=> b!2984381 (= e!1876672 (validRegex!4054 (simplify!322 r!17423)))))

(declare-fun b!2984382 () Bool)

(declare-fun e!1876675 () Bool)

(declare-fun e!1876673 () Bool)

(assert (=> b!2984382 (= e!1876675 (not e!1876673))))

(declare-fun res!1230828 () Bool)

(assert (=> b!2984382 (=> res!1230828 e!1876673)))

(declare-fun lt!1039132 () Bool)

(get-info :version)

(assert (=> b!2984382 (= res!1230828 (or lt!1039132 ((_ is Concat!14642) r!17423) ((_ is Union!9321) r!17423) (not ((_ is Star!9321) r!17423))))))

(declare-datatypes ((List!35186 0))(
  ( (Nil!35062) (Cons!35062 (h!40482 C!18828) (t!234251 List!35186)) )
))
(declare-fun s!11993 () List!35186)

(declare-fun matchRSpec!1458 (Regex!9321 List!35186) Bool)

(assert (=> b!2984382 (= lt!1039132 (matchRSpec!1458 r!17423 s!11993))))

(declare-fun matchR!4203 (Regex!9321 List!35186) Bool)

(assert (=> b!2984382 (= lt!1039132 (matchR!4203 r!17423 s!11993))))

(declare-datatypes ((Unit!49045 0))(
  ( (Unit!49046) )
))
(declare-fun lt!1039131 () Unit!49045)

(declare-fun mainMatchTheorem!1458 (Regex!9321 List!35186) Unit!49045)

(assert (=> b!2984382 (= lt!1039131 (mainMatchTheorem!1458 r!17423 s!11993))))

(declare-fun b!2984383 () Bool)

(declare-fun e!1876674 () Bool)

(declare-fun tp_is_empty!16205 () Bool)

(assert (=> b!2984383 (= e!1876674 tp_is_empty!16205)))

(declare-fun b!2984384 () Bool)

(declare-fun tp!949636 () Bool)

(declare-fun tp!949633 () Bool)

(assert (=> b!2984384 (= e!1876674 (and tp!949636 tp!949633))))

(declare-fun b!2984385 () Bool)

(declare-fun tp!949634 () Bool)

(declare-fun tp!949632 () Bool)

(assert (=> b!2984385 (= e!1876674 (and tp!949634 tp!949632))))

(declare-fun b!2984386 () Bool)

(declare-fun tp!949635 () Bool)

(assert (=> b!2984386 (= e!1876674 tp!949635)))

(declare-fun b!2984387 () Bool)

(declare-fun e!1876671 () Bool)

(declare-fun tp!949637 () Bool)

(assert (=> b!2984387 (= e!1876671 (and tp_is_empty!16205 tp!949637))))

(declare-fun b!2984388 () Bool)

(declare-fun res!1230827 () Bool)

(assert (=> b!2984388 (=> res!1230827 e!1876672)))

(declare-fun lt!1039130 () Regex!9321)

(assert (=> b!2984388 (= res!1230827 (matchR!4203 (Star!9321 lt!1039130) s!11993))))

(declare-fun res!1230825 () Bool)

(assert (=> start!288328 (=> (not res!1230825) (not e!1876675))))

(assert (=> start!288328 (= res!1230825 (validRegex!4054 r!17423))))

(assert (=> start!288328 e!1876675))

(assert (=> start!288328 e!1876674))

(assert (=> start!288328 e!1876671))

(declare-fun b!2984389 () Bool)

(assert (=> b!2984389 (= e!1876673 e!1876672)))

(declare-fun res!1230826 () Bool)

(assert (=> b!2984389 (=> res!1230826 e!1876672)))

(declare-fun isEmptyLang!435 (Regex!9321) Bool)

(assert (=> b!2984389 (= res!1230826 (isEmptyLang!435 lt!1039130))))

(assert (=> b!2984389 (= lt!1039130 (simplify!322 (reg!9650 r!17423)))))

(assert (= (and start!288328 res!1230825) b!2984382))

(assert (= (and b!2984382 (not res!1230828)) b!2984389))

(assert (= (and b!2984389 (not res!1230826)) b!2984388))

(assert (= (and b!2984388 (not res!1230827)) b!2984381))

(assert (= (and start!288328 ((_ is ElementMatch!9321) r!17423)) b!2984383))

(assert (= (and start!288328 ((_ is Concat!14642) r!17423)) b!2984384))

(assert (= (and start!288328 ((_ is Star!9321) r!17423)) b!2984386))

(assert (= (and start!288328 ((_ is Union!9321) r!17423)) b!2984385))

(assert (= (and start!288328 ((_ is Cons!35062) s!11993)) b!2984387))

(declare-fun m!3344199 () Bool)

(assert (=> b!2984389 m!3344199))

(declare-fun m!3344201 () Bool)

(assert (=> b!2984389 m!3344201))

(declare-fun m!3344203 () Bool)

(assert (=> b!2984382 m!3344203))

(declare-fun m!3344205 () Bool)

(assert (=> b!2984382 m!3344205))

(declare-fun m!3344207 () Bool)

(assert (=> b!2984382 m!3344207))

(declare-fun m!3344209 () Bool)

(assert (=> start!288328 m!3344209))

(declare-fun m!3344211 () Bool)

(assert (=> b!2984381 m!3344211))

(assert (=> b!2984381 m!3344211))

(declare-fun m!3344213 () Bool)

(assert (=> b!2984381 m!3344213))

(declare-fun m!3344215 () Bool)

(assert (=> b!2984388 m!3344215))

(check-sat (not b!2984389) (not b!2984385) (not start!288328) (not b!2984387) (not b!2984382) tp_is_empty!16205 (not b!2984381) (not b!2984388) (not b!2984384) (not b!2984386))
(check-sat)
(get-model)

(declare-fun d!843948 () Bool)

(assert (=> d!843948 (= (isEmptyLang!435 lt!1039130) ((_ is EmptyLang!9321) lt!1039130))))

(assert (=> b!2984389 d!843948))

(declare-fun b!2984515 () Bool)

(declare-fun e!1876759 () Regex!9321)

(declare-fun lt!1039162 () Regex!9321)

(declare-fun lt!1039159 () Regex!9321)

(assert (=> b!2984515 (= e!1876759 (Union!9321 lt!1039162 lt!1039159))))

(declare-fun b!2984516 () Bool)

(declare-fun c!490347 () Bool)

(assert (=> b!2984516 (= c!490347 ((_ is EmptyExpr!9321) (reg!9650 r!17423)))))

(declare-fun e!1876761 () Regex!9321)

(declare-fun e!1876756 () Regex!9321)

(assert (=> b!2984516 (= e!1876761 e!1876756)))

(declare-fun b!2984517 () Bool)

(declare-fun e!1876762 () Bool)

(declare-fun lt!1039158 () Regex!9321)

(declare-fun nullable!2998 (Regex!9321) Bool)

(assert (=> b!2984517 (= e!1876762 (= (nullable!2998 lt!1039158) (nullable!2998 (reg!9650 r!17423))))))

(declare-fun b!2984518 () Bool)

(declare-fun c!490350 () Bool)

(assert (=> b!2984518 (= c!490350 ((_ is Union!9321) (reg!9650 r!17423)))))

(declare-fun e!1876757 () Regex!9321)

(declare-fun e!1876758 () Regex!9321)

(assert (=> b!2984518 (= e!1876757 e!1876758)))

(declare-fun lt!1039160 () Regex!9321)

(declare-fun c!490355 () Bool)

(declare-fun bm!199441 () Bool)

(declare-fun call!199451 () Bool)

(declare-fun lt!1039157 () Regex!9321)

(declare-fun isEmptyExpr!452 (Regex!9321) Bool)

(assert (=> bm!199441 (= call!199451 (isEmptyExpr!452 (ite c!490355 lt!1039157 lt!1039160)))))

(declare-fun bm!199442 () Bool)

(declare-fun lt!1039161 () Regex!9321)

(declare-fun call!199452 () Bool)

(assert (=> bm!199442 (= call!199452 (isEmptyLang!435 (ite c!490355 lt!1039157 (ite c!490350 lt!1039159 lt!1039161))))))

(declare-fun d!843950 () Bool)

(assert (=> d!843950 e!1876762))

(declare-fun res!1230855 () Bool)

(assert (=> d!843950 (=> (not res!1230855) (not e!1876762))))

(assert (=> d!843950 (= res!1230855 (validRegex!4054 lt!1039158))))

(declare-fun e!1876763 () Regex!9321)

(assert (=> d!843950 (= lt!1039158 e!1876763)))

(declare-fun c!490356 () Bool)

(assert (=> d!843950 (= c!490356 ((_ is EmptyLang!9321) (reg!9650 r!17423)))))

(assert (=> d!843950 (validRegex!4054 (reg!9650 r!17423))))

(assert (=> d!843950 (= (simplify!322 (reg!9650 r!17423)) lt!1039158)))

(declare-fun b!2984519 () Bool)

(assert (=> b!2984519 (= e!1876763 EmptyLang!9321)))

(declare-fun b!2984520 () Bool)

(declare-fun c!490354 () Bool)

(assert (=> b!2984520 (= c!490354 call!199451)))

(declare-fun e!1876751 () Regex!9321)

(declare-fun e!1876764 () Regex!9321)

(assert (=> b!2984520 (= e!1876751 e!1876764)))

(declare-fun b!2984521 () Bool)

(declare-fun e!1876760 () Regex!9321)

(assert (=> b!2984521 (= e!1876764 e!1876760)))

(declare-fun c!490346 () Bool)

(assert (=> b!2984521 (= c!490346 (isEmptyExpr!452 lt!1039161))))

(declare-fun bm!199443 () Bool)

(declare-fun call!199449 () Regex!9321)

(assert (=> bm!199443 (= call!199449 (simplify!322 (ite c!490350 (regOne!19155 (reg!9650 r!17423)) (regTwo!19154 (reg!9650 r!17423)))))))

(declare-fun b!2984522 () Bool)

(declare-fun c!490349 () Bool)

(declare-fun e!1876753 () Bool)

(assert (=> b!2984522 (= c!490349 e!1876753)))

(declare-fun res!1230856 () Bool)

(assert (=> b!2984522 (=> res!1230856 e!1876753)))

(assert (=> b!2984522 (= res!1230856 call!199452)))

(declare-fun call!199447 () Regex!9321)

(assert (=> b!2984522 (= lt!1039157 call!199447)))

(declare-fun e!1876752 () Regex!9321)

(assert (=> b!2984522 (= e!1876757 e!1876752)))

(declare-fun b!2984523 () Bool)

(assert (=> b!2984523 (= e!1876760 lt!1039160)))

(declare-fun b!2984524 () Bool)

(declare-fun e!1876755 () Regex!9321)

(assert (=> b!2984524 (= e!1876758 e!1876755)))

(assert (=> b!2984524 (= lt!1039162 call!199449)))

(declare-fun call!199448 () Regex!9321)

(assert (=> b!2984524 (= lt!1039159 call!199448)))

(declare-fun c!490353 () Bool)

(declare-fun call!199450 () Bool)

(assert (=> b!2984524 (= c!490353 call!199450)))

(declare-fun b!2984525 () Bool)

(assert (=> b!2984525 (= e!1876753 call!199451)))

(declare-fun bm!199444 () Bool)

(declare-fun call!199446 () Bool)

(assert (=> bm!199444 (= call!199446 call!199452)))

(declare-fun bm!199445 () Bool)

(assert (=> bm!199445 (= call!199447 (simplify!322 (ite c!490355 (reg!9650 (reg!9650 r!17423)) (ite c!490350 (regTwo!19155 (reg!9650 r!17423)) (regOne!19154 (reg!9650 r!17423))))))))

(declare-fun bm!199446 () Bool)

(assert (=> bm!199446 (= call!199450 (isEmptyLang!435 (ite c!490350 lt!1039162 lt!1039160)))))

(declare-fun b!2984526 () Bool)

(assert (=> b!2984526 (= e!1876764 lt!1039161)))

(declare-fun bm!199447 () Bool)

(assert (=> bm!199447 (= call!199448 call!199447)))

(declare-fun b!2984527 () Bool)

(assert (=> b!2984527 (= e!1876755 lt!1039159)))

(declare-fun b!2984528 () Bool)

(assert (=> b!2984528 (= e!1876756 EmptyExpr!9321)))

(declare-fun b!2984529 () Bool)

(assert (=> b!2984529 (= e!1876751 EmptyLang!9321)))

(declare-fun b!2984530 () Bool)

(assert (=> b!2984530 (= e!1876752 (Star!9321 lt!1039157))))

(declare-fun b!2984531 () Bool)

(declare-fun c!490348 () Bool)

(assert (=> b!2984531 (= c!490348 call!199446)))

(assert (=> b!2984531 (= e!1876755 e!1876759)))

(declare-fun b!2984532 () Bool)

(assert (=> b!2984532 (= e!1876756 e!1876757)))

(assert (=> b!2984532 (= c!490355 ((_ is Star!9321) (reg!9650 r!17423)))))

(declare-fun b!2984533 () Bool)

(assert (=> b!2984533 (= e!1876752 EmptyExpr!9321)))

(declare-fun b!2984534 () Bool)

(assert (=> b!2984534 (= e!1876763 e!1876761)))

(declare-fun c!490351 () Bool)

(assert (=> b!2984534 (= c!490351 ((_ is ElementMatch!9321) (reg!9650 r!17423)))))

(declare-fun b!2984535 () Bool)

(assert (=> b!2984535 (= e!1876759 lt!1039162)))

(declare-fun b!2984536 () Bool)

(assert (=> b!2984536 (= e!1876761 (reg!9650 r!17423))))

(declare-fun b!2984537 () Bool)

(assert (=> b!2984537 (= e!1876758 e!1876751)))

(assert (=> b!2984537 (= lt!1039160 call!199448)))

(assert (=> b!2984537 (= lt!1039161 call!199449)))

(declare-fun res!1230854 () Bool)

(assert (=> b!2984537 (= res!1230854 call!199450)))

(declare-fun e!1876754 () Bool)

(assert (=> b!2984537 (=> res!1230854 e!1876754)))

(declare-fun c!490352 () Bool)

(assert (=> b!2984537 (= c!490352 e!1876754)))

(declare-fun b!2984538 () Bool)

(assert (=> b!2984538 (= e!1876760 (Concat!14642 lt!1039160 lt!1039161))))

(declare-fun b!2984539 () Bool)

(assert (=> b!2984539 (= e!1876754 call!199446)))

(assert (= (and d!843950 c!490356) b!2984519))

(assert (= (and d!843950 (not c!490356)) b!2984534))

(assert (= (and b!2984534 c!490351) b!2984536))

(assert (= (and b!2984534 (not c!490351)) b!2984516))

(assert (= (and b!2984516 c!490347) b!2984528))

(assert (= (and b!2984516 (not c!490347)) b!2984532))

(assert (= (and b!2984532 c!490355) b!2984522))

(assert (= (and b!2984532 (not c!490355)) b!2984518))

(assert (= (and b!2984522 (not res!1230856)) b!2984525))

(assert (= (and b!2984522 c!490349) b!2984533))

(assert (= (and b!2984522 (not c!490349)) b!2984530))

(assert (= (and b!2984518 c!490350) b!2984524))

(assert (= (and b!2984518 (not c!490350)) b!2984537))

(assert (= (and b!2984524 c!490353) b!2984527))

(assert (= (and b!2984524 (not c!490353)) b!2984531))

(assert (= (and b!2984531 c!490348) b!2984535))

(assert (= (and b!2984531 (not c!490348)) b!2984515))

(assert (= (and b!2984537 (not res!1230854)) b!2984539))

(assert (= (and b!2984537 c!490352) b!2984529))

(assert (= (and b!2984537 (not c!490352)) b!2984520))

(assert (= (and b!2984520 c!490354) b!2984526))

(assert (= (and b!2984520 (not c!490354)) b!2984521))

(assert (= (and b!2984521 c!490346) b!2984523))

(assert (= (and b!2984521 (not c!490346)) b!2984538))

(assert (= (or b!2984524 b!2984537) bm!199443))

(assert (= (or b!2984524 b!2984537) bm!199447))

(assert (= (or b!2984524 b!2984537) bm!199446))

(assert (= (or b!2984531 b!2984539) bm!199444))

(assert (= (or b!2984525 b!2984520) bm!199441))

(assert (= (or b!2984522 bm!199447) bm!199445))

(assert (= (or b!2984522 bm!199444) bm!199442))

(assert (= (and d!843950 res!1230855) b!2984517))

(declare-fun m!3344223 () Bool)

(assert (=> d!843950 m!3344223))

(declare-fun m!3344225 () Bool)

(assert (=> d!843950 m!3344225))

(declare-fun m!3344227 () Bool)

(assert (=> b!2984521 m!3344227))

(declare-fun m!3344229 () Bool)

(assert (=> bm!199442 m!3344229))

(declare-fun m!3344231 () Bool)

(assert (=> bm!199441 m!3344231))

(declare-fun m!3344233 () Bool)

(assert (=> b!2984517 m!3344233))

(declare-fun m!3344235 () Bool)

(assert (=> b!2984517 m!3344235))

(declare-fun m!3344237 () Bool)

(assert (=> bm!199443 m!3344237))

(declare-fun m!3344239 () Bool)

(assert (=> bm!199446 m!3344239))

(declare-fun m!3344241 () Bool)

(assert (=> bm!199445 m!3344241))

(assert (=> b!2984389 d!843950))

(declare-fun b!2984772 () Bool)

(assert (=> b!2984772 true))

(assert (=> b!2984772 true))

(declare-fun bs!527360 () Bool)

(declare-fun b!2984781 () Bool)

(assert (= bs!527360 (and b!2984781 b!2984772)))

(declare-fun lambda!111394 () Int)

(declare-fun lambda!111393 () Int)

(assert (=> bs!527360 (not (= lambda!111394 lambda!111393))))

(assert (=> b!2984781 true))

(assert (=> b!2984781 true))

(declare-fun d!843956 () Bool)

(declare-fun c!490414 () Bool)

(assert (=> d!843956 (= c!490414 ((_ is EmptyExpr!9321) r!17423))))

(declare-fun e!1876886 () Bool)

(assert (=> d!843956 (= (matchRSpec!1458 r!17423 s!11993) e!1876886)))

(declare-fun b!2984771 () Bool)

(declare-fun e!1876887 () Bool)

(declare-fun e!1876889 () Bool)

(assert (=> b!2984771 (= e!1876887 e!1876889)))

(declare-fun c!490413 () Bool)

(assert (=> b!2984771 (= c!490413 ((_ is Star!9321) r!17423))))

(declare-fun e!1876885 () Bool)

(declare-fun call!199484 () Bool)

(assert (=> b!2984772 (= e!1876885 call!199484)))

(declare-fun b!2984773 () Bool)

(declare-fun call!199485 () Bool)

(assert (=> b!2984773 (= e!1876886 call!199485)))

(declare-fun bm!199479 () Bool)

(declare-fun Exists!1599 (Int) Bool)

(assert (=> bm!199479 (= call!199484 (Exists!1599 (ite c!490413 lambda!111393 lambda!111394)))))

(declare-fun b!2984774 () Bool)

(declare-fun c!490415 () Bool)

(assert (=> b!2984774 (= c!490415 ((_ is Union!9321) r!17423))))

(declare-fun e!1876888 () Bool)

(assert (=> b!2984774 (= e!1876888 e!1876887)))

(declare-fun b!2984775 () Bool)

(declare-fun e!1876883 () Bool)

(assert (=> b!2984775 (= e!1876887 e!1876883)))

(declare-fun res!1230937 () Bool)

(assert (=> b!2984775 (= res!1230937 (matchRSpec!1458 (regOne!19155 r!17423) s!11993))))

(assert (=> b!2984775 (=> res!1230937 e!1876883)))

(declare-fun b!2984776 () Bool)

(assert (=> b!2984776 (= e!1876888 (= s!11993 (Cons!35062 (c!490295 r!17423) Nil!35062)))))

(declare-fun bm!199480 () Bool)

(declare-fun isEmpty!19323 (List!35186) Bool)

(assert (=> bm!199480 (= call!199485 (isEmpty!19323 s!11993))))

(declare-fun b!2984777 () Bool)

(declare-fun res!1230939 () Bool)

(assert (=> b!2984777 (=> res!1230939 e!1876885)))

(assert (=> b!2984777 (= res!1230939 call!199485)))

(assert (=> b!2984777 (= e!1876889 e!1876885)))

(declare-fun b!2984778 () Bool)

(assert (=> b!2984778 (= e!1876883 (matchRSpec!1458 (regTwo!19155 r!17423) s!11993))))

(declare-fun b!2984779 () Bool)

(declare-fun e!1876884 () Bool)

(assert (=> b!2984779 (= e!1876886 e!1876884)))

(declare-fun res!1230938 () Bool)

(assert (=> b!2984779 (= res!1230938 (not ((_ is EmptyLang!9321) r!17423)))))

(assert (=> b!2984779 (=> (not res!1230938) (not e!1876884))))

(declare-fun b!2984780 () Bool)

(declare-fun c!490416 () Bool)

(assert (=> b!2984780 (= c!490416 ((_ is ElementMatch!9321) r!17423))))

(assert (=> b!2984780 (= e!1876884 e!1876888)))

(assert (=> b!2984781 (= e!1876889 call!199484)))

(assert (= (and d!843956 c!490414) b!2984773))

(assert (= (and d!843956 (not c!490414)) b!2984779))

(assert (= (and b!2984779 res!1230938) b!2984780))

(assert (= (and b!2984780 c!490416) b!2984776))

(assert (= (and b!2984780 (not c!490416)) b!2984774))

(assert (= (and b!2984774 c!490415) b!2984775))

(assert (= (and b!2984774 (not c!490415)) b!2984771))

(assert (= (and b!2984775 (not res!1230937)) b!2984778))

(assert (= (and b!2984771 c!490413) b!2984777))

(assert (= (and b!2984771 (not c!490413)) b!2984781))

(assert (= (and b!2984777 (not res!1230939)) b!2984772))

(assert (= (or b!2984772 b!2984781) bm!199479))

(assert (= (or b!2984773 b!2984777) bm!199480))

(declare-fun m!3344313 () Bool)

(assert (=> bm!199479 m!3344313))

(declare-fun m!3344315 () Bool)

(assert (=> b!2984775 m!3344315))

(declare-fun m!3344317 () Bool)

(assert (=> bm!199480 m!3344317))

(declare-fun m!3344319 () Bool)

(assert (=> b!2984778 m!3344319))

(assert (=> b!2984382 d!843956))

(declare-fun b!2984814 () Bool)

(declare-fun e!1876907 () Bool)

(declare-fun lt!1039184 () Bool)

(assert (=> b!2984814 (= e!1876907 (not lt!1039184))))

(declare-fun b!2984815 () Bool)

(declare-fun res!1230956 () Bool)

(declare-fun e!1876910 () Bool)

(assert (=> b!2984815 (=> res!1230956 e!1876910)))

(declare-fun tail!4883 (List!35186) List!35186)

(assert (=> b!2984815 (= res!1230956 (not (isEmpty!19323 (tail!4883 s!11993))))))

(declare-fun b!2984816 () Bool)

(declare-fun e!1876909 () Bool)

(declare-fun e!1876906 () Bool)

(assert (=> b!2984816 (= e!1876909 e!1876906)))

(declare-fun res!1230958 () Bool)

(assert (=> b!2984816 (=> (not res!1230958) (not e!1876906))))

(assert (=> b!2984816 (= res!1230958 (not lt!1039184))))

(declare-fun b!2984817 () Bool)

(declare-fun head!6657 (List!35186) C!18828)

(assert (=> b!2984817 (= e!1876910 (not (= (head!6657 s!11993) (c!490295 r!17423))))))

(declare-fun b!2984818 () Bool)

(assert (=> b!2984818 (= e!1876906 e!1876910)))

(declare-fun res!1230957 () Bool)

(assert (=> b!2984818 (=> res!1230957 e!1876910)))

(declare-fun call!199488 () Bool)

(assert (=> b!2984818 (= res!1230957 call!199488)))

(declare-fun b!2984819 () Bool)

(declare-fun e!1876904 () Bool)

(assert (=> b!2984819 (= e!1876904 (= lt!1039184 call!199488))))

(declare-fun b!2984820 () Bool)

(declare-fun res!1230960 () Bool)

(assert (=> b!2984820 (=> res!1230960 e!1876909)))

(declare-fun e!1876908 () Bool)

(assert (=> b!2984820 (= res!1230960 e!1876908)))

(declare-fun res!1230962 () Bool)

(assert (=> b!2984820 (=> (not res!1230962) (not e!1876908))))

(assert (=> b!2984820 (= res!1230962 lt!1039184)))

(declare-fun b!2984821 () Bool)

(declare-fun e!1876905 () Bool)

(declare-fun derivativeStep!2598 (Regex!9321 C!18828) Regex!9321)

(assert (=> b!2984821 (= e!1876905 (matchR!4203 (derivativeStep!2598 r!17423 (head!6657 s!11993)) (tail!4883 s!11993)))))

(declare-fun b!2984822 () Bool)

(assert (=> b!2984822 (= e!1876904 e!1876907)))

(declare-fun c!490424 () Bool)

(assert (=> b!2984822 (= c!490424 ((_ is EmptyLang!9321) r!17423))))

(declare-fun b!2984823 () Bool)

(declare-fun res!1230963 () Bool)

(assert (=> b!2984823 (=> (not res!1230963) (not e!1876908))))

(assert (=> b!2984823 (= res!1230963 (isEmpty!19323 (tail!4883 s!11993)))))

(declare-fun d!843972 () Bool)

(assert (=> d!843972 e!1876904))

(declare-fun c!490423 () Bool)

(assert (=> d!843972 (= c!490423 ((_ is EmptyExpr!9321) r!17423))))

(assert (=> d!843972 (= lt!1039184 e!1876905)))

(declare-fun c!490425 () Bool)

(assert (=> d!843972 (= c!490425 (isEmpty!19323 s!11993))))

(assert (=> d!843972 (validRegex!4054 r!17423)))

(assert (=> d!843972 (= (matchR!4203 r!17423 s!11993) lt!1039184)))

(declare-fun b!2984824 () Bool)

(declare-fun res!1230961 () Bool)

(assert (=> b!2984824 (=> res!1230961 e!1876909)))

(assert (=> b!2984824 (= res!1230961 (not ((_ is ElementMatch!9321) r!17423)))))

(assert (=> b!2984824 (= e!1876907 e!1876909)))

(declare-fun b!2984825 () Bool)

(assert (=> b!2984825 (= e!1876908 (= (head!6657 s!11993) (c!490295 r!17423)))))

(declare-fun b!2984826 () Bool)

(assert (=> b!2984826 (= e!1876905 (nullable!2998 r!17423))))

(declare-fun b!2984827 () Bool)

(declare-fun res!1230959 () Bool)

(assert (=> b!2984827 (=> (not res!1230959) (not e!1876908))))

(assert (=> b!2984827 (= res!1230959 (not call!199488))))

(declare-fun bm!199483 () Bool)

(assert (=> bm!199483 (= call!199488 (isEmpty!19323 s!11993))))

(assert (= (and d!843972 c!490425) b!2984826))

(assert (= (and d!843972 (not c!490425)) b!2984821))

(assert (= (and d!843972 c!490423) b!2984819))

(assert (= (and d!843972 (not c!490423)) b!2984822))

(assert (= (and b!2984822 c!490424) b!2984814))

(assert (= (and b!2984822 (not c!490424)) b!2984824))

(assert (= (and b!2984824 (not res!1230961)) b!2984820))

(assert (= (and b!2984820 res!1230962) b!2984827))

(assert (= (and b!2984827 res!1230959) b!2984823))

(assert (= (and b!2984823 res!1230963) b!2984825))

(assert (= (and b!2984820 (not res!1230960)) b!2984816))

(assert (= (and b!2984816 res!1230958) b!2984818))

(assert (= (and b!2984818 (not res!1230957)) b!2984815))

(assert (= (and b!2984815 (not res!1230956)) b!2984817))

(assert (= (or b!2984819 b!2984818 b!2984827) bm!199483))

(declare-fun m!3344321 () Bool)

(assert (=> b!2984815 m!3344321))

(assert (=> b!2984815 m!3344321))

(declare-fun m!3344323 () Bool)

(assert (=> b!2984815 m!3344323))

(declare-fun m!3344325 () Bool)

(assert (=> b!2984825 m!3344325))

(assert (=> b!2984817 m!3344325))

(declare-fun m!3344327 () Bool)

(assert (=> b!2984826 m!3344327))

(assert (=> b!2984821 m!3344325))

(assert (=> b!2984821 m!3344325))

(declare-fun m!3344329 () Bool)

(assert (=> b!2984821 m!3344329))

(assert (=> b!2984821 m!3344321))

(assert (=> b!2984821 m!3344329))

(assert (=> b!2984821 m!3344321))

(declare-fun m!3344331 () Bool)

(assert (=> b!2984821 m!3344331))

(assert (=> d!843972 m!3344317))

(assert (=> d!843972 m!3344209))

(assert (=> b!2984823 m!3344321))

(assert (=> b!2984823 m!3344321))

(assert (=> b!2984823 m!3344323))

(assert (=> bm!199483 m!3344317))

(assert (=> b!2984382 d!843972))

(declare-fun d!843974 () Bool)

(assert (=> d!843974 (= (matchR!4203 r!17423 s!11993) (matchRSpec!1458 r!17423 s!11993))))

(declare-fun lt!1039187 () Unit!49045)

(declare-fun choose!17688 (Regex!9321 List!35186) Unit!49045)

(assert (=> d!843974 (= lt!1039187 (choose!17688 r!17423 s!11993))))

(assert (=> d!843974 (validRegex!4054 r!17423)))

(assert (=> d!843974 (= (mainMatchTheorem!1458 r!17423 s!11993) lt!1039187)))

(declare-fun bs!527361 () Bool)

(assert (= bs!527361 d!843974))

(assert (=> bs!527361 m!3344205))

(assert (=> bs!527361 m!3344203))

(declare-fun m!3344333 () Bool)

(assert (=> bs!527361 m!3344333))

(assert (=> bs!527361 m!3344209))

(assert (=> b!2984382 d!843974))

(declare-fun b!2984828 () Bool)

(declare-fun e!1876914 () Bool)

(declare-fun lt!1039188 () Bool)

(assert (=> b!2984828 (= e!1876914 (not lt!1039188))))

(declare-fun b!2984829 () Bool)

(declare-fun res!1230964 () Bool)

(declare-fun e!1876917 () Bool)

(assert (=> b!2984829 (=> res!1230964 e!1876917)))

(assert (=> b!2984829 (= res!1230964 (not (isEmpty!19323 (tail!4883 s!11993))))))

(declare-fun b!2984830 () Bool)

(declare-fun e!1876916 () Bool)

(declare-fun e!1876913 () Bool)

(assert (=> b!2984830 (= e!1876916 e!1876913)))

(declare-fun res!1230966 () Bool)

(assert (=> b!2984830 (=> (not res!1230966) (not e!1876913))))

(assert (=> b!2984830 (= res!1230966 (not lt!1039188))))

(declare-fun b!2984831 () Bool)

(assert (=> b!2984831 (= e!1876917 (not (= (head!6657 s!11993) (c!490295 (Star!9321 lt!1039130)))))))

(declare-fun b!2984832 () Bool)

(assert (=> b!2984832 (= e!1876913 e!1876917)))

(declare-fun res!1230965 () Bool)

(assert (=> b!2984832 (=> res!1230965 e!1876917)))

(declare-fun call!199489 () Bool)

(assert (=> b!2984832 (= res!1230965 call!199489)))

(declare-fun b!2984833 () Bool)

(declare-fun e!1876911 () Bool)

(assert (=> b!2984833 (= e!1876911 (= lt!1039188 call!199489))))

(declare-fun b!2984834 () Bool)

(declare-fun res!1230968 () Bool)

(assert (=> b!2984834 (=> res!1230968 e!1876916)))

(declare-fun e!1876915 () Bool)

(assert (=> b!2984834 (= res!1230968 e!1876915)))

(declare-fun res!1230970 () Bool)

(assert (=> b!2984834 (=> (not res!1230970) (not e!1876915))))

(assert (=> b!2984834 (= res!1230970 lt!1039188)))

(declare-fun b!2984835 () Bool)

(declare-fun e!1876912 () Bool)

(assert (=> b!2984835 (= e!1876912 (matchR!4203 (derivativeStep!2598 (Star!9321 lt!1039130) (head!6657 s!11993)) (tail!4883 s!11993)))))

(declare-fun b!2984836 () Bool)

(assert (=> b!2984836 (= e!1876911 e!1876914)))

(declare-fun c!490427 () Bool)

(assert (=> b!2984836 (= c!490427 ((_ is EmptyLang!9321) (Star!9321 lt!1039130)))))

(declare-fun b!2984837 () Bool)

(declare-fun res!1230971 () Bool)

(assert (=> b!2984837 (=> (not res!1230971) (not e!1876915))))

(assert (=> b!2984837 (= res!1230971 (isEmpty!19323 (tail!4883 s!11993)))))

(declare-fun d!843976 () Bool)

(assert (=> d!843976 e!1876911))

(declare-fun c!490426 () Bool)

(assert (=> d!843976 (= c!490426 ((_ is EmptyExpr!9321) (Star!9321 lt!1039130)))))

(assert (=> d!843976 (= lt!1039188 e!1876912)))

(declare-fun c!490428 () Bool)

(assert (=> d!843976 (= c!490428 (isEmpty!19323 s!11993))))

(assert (=> d!843976 (validRegex!4054 (Star!9321 lt!1039130))))

(assert (=> d!843976 (= (matchR!4203 (Star!9321 lt!1039130) s!11993) lt!1039188)))

(declare-fun b!2984838 () Bool)

(declare-fun res!1230969 () Bool)

(assert (=> b!2984838 (=> res!1230969 e!1876916)))

(assert (=> b!2984838 (= res!1230969 (not ((_ is ElementMatch!9321) (Star!9321 lt!1039130))))))

(assert (=> b!2984838 (= e!1876914 e!1876916)))

(declare-fun b!2984839 () Bool)

(assert (=> b!2984839 (= e!1876915 (= (head!6657 s!11993) (c!490295 (Star!9321 lt!1039130))))))

(declare-fun b!2984840 () Bool)

(assert (=> b!2984840 (= e!1876912 (nullable!2998 (Star!9321 lt!1039130)))))

(declare-fun b!2984841 () Bool)

(declare-fun res!1230967 () Bool)

(assert (=> b!2984841 (=> (not res!1230967) (not e!1876915))))

(assert (=> b!2984841 (= res!1230967 (not call!199489))))

(declare-fun bm!199484 () Bool)

(assert (=> bm!199484 (= call!199489 (isEmpty!19323 s!11993))))

(assert (= (and d!843976 c!490428) b!2984840))

(assert (= (and d!843976 (not c!490428)) b!2984835))

(assert (= (and d!843976 c!490426) b!2984833))

(assert (= (and d!843976 (not c!490426)) b!2984836))

(assert (= (and b!2984836 c!490427) b!2984828))

(assert (= (and b!2984836 (not c!490427)) b!2984838))

(assert (= (and b!2984838 (not res!1230969)) b!2984834))

(assert (= (and b!2984834 res!1230970) b!2984841))

(assert (= (and b!2984841 res!1230967) b!2984837))

(assert (= (and b!2984837 res!1230971) b!2984839))

(assert (= (and b!2984834 (not res!1230968)) b!2984830))

(assert (= (and b!2984830 res!1230966) b!2984832))

(assert (= (and b!2984832 (not res!1230965)) b!2984829))

(assert (= (and b!2984829 (not res!1230964)) b!2984831))

(assert (= (or b!2984833 b!2984832 b!2984841) bm!199484))

(assert (=> b!2984829 m!3344321))

(assert (=> b!2984829 m!3344321))

(assert (=> b!2984829 m!3344323))

(assert (=> b!2984839 m!3344325))

(assert (=> b!2984831 m!3344325))

(declare-fun m!3344335 () Bool)

(assert (=> b!2984840 m!3344335))

(assert (=> b!2984835 m!3344325))

(assert (=> b!2984835 m!3344325))

(declare-fun m!3344337 () Bool)

(assert (=> b!2984835 m!3344337))

(assert (=> b!2984835 m!3344321))

(assert (=> b!2984835 m!3344337))

(assert (=> b!2984835 m!3344321))

(declare-fun m!3344339 () Bool)

(assert (=> b!2984835 m!3344339))

(assert (=> d!843976 m!3344317))

(declare-fun m!3344341 () Bool)

(assert (=> d!843976 m!3344341))

(assert (=> b!2984837 m!3344321))

(assert (=> b!2984837 m!3344321))

(assert (=> b!2984837 m!3344323))

(assert (=> bm!199484 m!3344317))

(assert (=> b!2984388 d!843976))

(declare-fun c!490434 () Bool)

(declare-fun c!490433 () Bool)

(declare-fun bm!199491 () Bool)

(declare-fun call!199497 () Bool)

(assert (=> bm!199491 (= call!199497 (validRegex!4054 (ite c!490434 (reg!9650 (simplify!322 r!17423)) (ite c!490433 (regTwo!19155 (simplify!322 r!17423)) (regOne!19154 (simplify!322 r!17423))))))))

(declare-fun bm!199492 () Bool)

(declare-fun call!199498 () Bool)

(assert (=> bm!199492 (= call!199498 (validRegex!4054 (ite c!490433 (regOne!19155 (simplify!322 r!17423)) (regTwo!19154 (simplify!322 r!17423)))))))

(declare-fun b!2984860 () Bool)

(declare-fun e!1876935 () Bool)

(declare-fun e!1876933 () Bool)

(assert (=> b!2984860 (= e!1876935 e!1876933)))

(declare-fun res!1230982 () Bool)

(assert (=> b!2984860 (=> (not res!1230982) (not e!1876933))))

(declare-fun call!199496 () Bool)

(assert (=> b!2984860 (= res!1230982 call!199496)))

(declare-fun b!2984861 () Bool)

(declare-fun e!1876937 () Bool)

(declare-fun e!1876938 () Bool)

(assert (=> b!2984861 (= e!1876937 e!1876938)))

(assert (=> b!2984861 (= c!490433 ((_ is Union!9321) (simplify!322 r!17423)))))

(declare-fun d!843978 () Bool)

(declare-fun res!1230986 () Bool)

(declare-fun e!1876932 () Bool)

(assert (=> d!843978 (=> res!1230986 e!1876932)))

(assert (=> d!843978 (= res!1230986 ((_ is ElementMatch!9321) (simplify!322 r!17423)))))

(assert (=> d!843978 (= (validRegex!4054 (simplify!322 r!17423)) e!1876932)))

(declare-fun bm!199493 () Bool)

(assert (=> bm!199493 (= call!199496 call!199497)))

(declare-fun b!2984862 () Bool)

(assert (=> b!2984862 (= e!1876932 e!1876937)))

(assert (=> b!2984862 (= c!490434 ((_ is Star!9321) (simplify!322 r!17423)))))

(declare-fun b!2984863 () Bool)

(declare-fun e!1876934 () Bool)

(assert (=> b!2984863 (= e!1876937 e!1876934)))

(declare-fun res!1230984 () Bool)

(assert (=> b!2984863 (= res!1230984 (not (nullable!2998 (reg!9650 (simplify!322 r!17423)))))))

(assert (=> b!2984863 (=> (not res!1230984) (not e!1876934))))

(declare-fun b!2984864 () Bool)

(assert (=> b!2984864 (= e!1876934 call!199497)))

(declare-fun b!2984865 () Bool)

(assert (=> b!2984865 (= e!1876933 call!199498)))

(declare-fun b!2984866 () Bool)

(declare-fun e!1876936 () Bool)

(assert (=> b!2984866 (= e!1876936 call!199496)))

(declare-fun b!2984867 () Bool)

(declare-fun res!1230983 () Bool)

(assert (=> b!2984867 (=> res!1230983 e!1876935)))

(assert (=> b!2984867 (= res!1230983 (not ((_ is Concat!14642) (simplify!322 r!17423))))))

(assert (=> b!2984867 (= e!1876938 e!1876935)))

(declare-fun b!2984868 () Bool)

(declare-fun res!1230985 () Bool)

(assert (=> b!2984868 (=> (not res!1230985) (not e!1876936))))

(assert (=> b!2984868 (= res!1230985 call!199498)))

(assert (=> b!2984868 (= e!1876938 e!1876936)))

(assert (= (and d!843978 (not res!1230986)) b!2984862))

(assert (= (and b!2984862 c!490434) b!2984863))

(assert (= (and b!2984862 (not c!490434)) b!2984861))

(assert (= (and b!2984863 res!1230984) b!2984864))

(assert (= (and b!2984861 c!490433) b!2984868))

(assert (= (and b!2984861 (not c!490433)) b!2984867))

(assert (= (and b!2984868 res!1230985) b!2984866))

(assert (= (and b!2984867 (not res!1230983)) b!2984860))

(assert (= (and b!2984860 res!1230982) b!2984865))

(assert (= (or b!2984868 b!2984865) bm!199492))

(assert (= (or b!2984866 b!2984860) bm!199493))

(assert (= (or b!2984864 bm!199493) bm!199491))

(declare-fun m!3344343 () Bool)

(assert (=> bm!199491 m!3344343))

(declare-fun m!3344345 () Bool)

(assert (=> bm!199492 m!3344345))

(declare-fun m!3344347 () Bool)

(assert (=> b!2984863 m!3344347))

(assert (=> b!2984381 d!843978))

(declare-fun b!2984869 () Bool)

(declare-fun e!1876947 () Regex!9321)

(declare-fun lt!1039194 () Regex!9321)

(declare-fun lt!1039191 () Regex!9321)

(assert (=> b!2984869 (= e!1876947 (Union!9321 lt!1039194 lt!1039191))))

(declare-fun b!2984870 () Bool)

(declare-fun c!490436 () Bool)

(assert (=> b!2984870 (= c!490436 ((_ is EmptyExpr!9321) r!17423))))

(declare-fun e!1876949 () Regex!9321)

(declare-fun e!1876944 () Regex!9321)

(assert (=> b!2984870 (= e!1876949 e!1876944)))

(declare-fun b!2984871 () Bool)

(declare-fun e!1876950 () Bool)

(declare-fun lt!1039190 () Regex!9321)

(assert (=> b!2984871 (= e!1876950 (= (nullable!2998 lt!1039190) (nullable!2998 r!17423)))))

(declare-fun b!2984872 () Bool)

(declare-fun c!490439 () Bool)

(assert (=> b!2984872 (= c!490439 ((_ is Union!9321) r!17423))))

(declare-fun e!1876945 () Regex!9321)

(declare-fun e!1876946 () Regex!9321)

(assert (=> b!2984872 (= e!1876945 e!1876946)))

(declare-fun lt!1039189 () Regex!9321)

(declare-fun c!490444 () Bool)

(declare-fun lt!1039192 () Regex!9321)

(declare-fun bm!199494 () Bool)

(declare-fun call!199504 () Bool)

(assert (=> bm!199494 (= call!199504 (isEmptyExpr!452 (ite c!490444 lt!1039189 lt!1039192)))))

(declare-fun call!199505 () Bool)

(declare-fun lt!1039193 () Regex!9321)

(declare-fun bm!199495 () Bool)

(assert (=> bm!199495 (= call!199505 (isEmptyLang!435 (ite c!490444 lt!1039189 (ite c!490439 lt!1039191 lt!1039193))))))

(declare-fun d!843980 () Bool)

(assert (=> d!843980 e!1876950))

(declare-fun res!1230988 () Bool)

(assert (=> d!843980 (=> (not res!1230988) (not e!1876950))))

(assert (=> d!843980 (= res!1230988 (validRegex!4054 lt!1039190))))

(declare-fun e!1876951 () Regex!9321)

(assert (=> d!843980 (= lt!1039190 e!1876951)))

(declare-fun c!490445 () Bool)

(assert (=> d!843980 (= c!490445 ((_ is EmptyLang!9321) r!17423))))

(assert (=> d!843980 (validRegex!4054 r!17423)))

(assert (=> d!843980 (= (simplify!322 r!17423) lt!1039190)))

(declare-fun b!2984873 () Bool)

(assert (=> b!2984873 (= e!1876951 EmptyLang!9321)))

(declare-fun b!2984874 () Bool)

(declare-fun c!490443 () Bool)

(assert (=> b!2984874 (= c!490443 call!199504)))

(declare-fun e!1876939 () Regex!9321)

(declare-fun e!1876952 () Regex!9321)

(assert (=> b!2984874 (= e!1876939 e!1876952)))

(declare-fun b!2984875 () Bool)

(declare-fun e!1876948 () Regex!9321)

(assert (=> b!2984875 (= e!1876952 e!1876948)))

(declare-fun c!490435 () Bool)

(assert (=> b!2984875 (= c!490435 (isEmptyExpr!452 lt!1039193))))

(declare-fun bm!199496 () Bool)

(declare-fun call!199502 () Regex!9321)

(assert (=> bm!199496 (= call!199502 (simplify!322 (ite c!490439 (regOne!19155 r!17423) (regTwo!19154 r!17423))))))

(declare-fun b!2984876 () Bool)

(declare-fun c!490438 () Bool)

(declare-fun e!1876941 () Bool)

(assert (=> b!2984876 (= c!490438 e!1876941)))

(declare-fun res!1230989 () Bool)

(assert (=> b!2984876 (=> res!1230989 e!1876941)))

(assert (=> b!2984876 (= res!1230989 call!199505)))

(declare-fun call!199500 () Regex!9321)

(assert (=> b!2984876 (= lt!1039189 call!199500)))

(declare-fun e!1876940 () Regex!9321)

(assert (=> b!2984876 (= e!1876945 e!1876940)))

(declare-fun b!2984877 () Bool)

(assert (=> b!2984877 (= e!1876948 lt!1039192)))

(declare-fun b!2984878 () Bool)

(declare-fun e!1876943 () Regex!9321)

(assert (=> b!2984878 (= e!1876946 e!1876943)))

(assert (=> b!2984878 (= lt!1039194 call!199502)))

(declare-fun call!199501 () Regex!9321)

(assert (=> b!2984878 (= lt!1039191 call!199501)))

(declare-fun c!490442 () Bool)

(declare-fun call!199503 () Bool)

(assert (=> b!2984878 (= c!490442 call!199503)))

(declare-fun b!2984879 () Bool)

(assert (=> b!2984879 (= e!1876941 call!199504)))

(declare-fun bm!199497 () Bool)

(declare-fun call!199499 () Bool)

(assert (=> bm!199497 (= call!199499 call!199505)))

(declare-fun bm!199498 () Bool)

(assert (=> bm!199498 (= call!199500 (simplify!322 (ite c!490444 (reg!9650 r!17423) (ite c!490439 (regTwo!19155 r!17423) (regOne!19154 r!17423)))))))

(declare-fun bm!199499 () Bool)

(assert (=> bm!199499 (= call!199503 (isEmptyLang!435 (ite c!490439 lt!1039194 lt!1039192)))))

(declare-fun b!2984880 () Bool)

(assert (=> b!2984880 (= e!1876952 lt!1039193)))

(declare-fun bm!199500 () Bool)

(assert (=> bm!199500 (= call!199501 call!199500)))

(declare-fun b!2984881 () Bool)

(assert (=> b!2984881 (= e!1876943 lt!1039191)))

(declare-fun b!2984882 () Bool)

(assert (=> b!2984882 (= e!1876944 EmptyExpr!9321)))

(declare-fun b!2984883 () Bool)

(assert (=> b!2984883 (= e!1876939 EmptyLang!9321)))

(declare-fun b!2984884 () Bool)

(assert (=> b!2984884 (= e!1876940 (Star!9321 lt!1039189))))

(declare-fun b!2984885 () Bool)

(declare-fun c!490437 () Bool)

(assert (=> b!2984885 (= c!490437 call!199499)))

(assert (=> b!2984885 (= e!1876943 e!1876947)))

(declare-fun b!2984886 () Bool)

(assert (=> b!2984886 (= e!1876944 e!1876945)))

(assert (=> b!2984886 (= c!490444 ((_ is Star!9321) r!17423))))

(declare-fun b!2984887 () Bool)

(assert (=> b!2984887 (= e!1876940 EmptyExpr!9321)))

(declare-fun b!2984888 () Bool)

(assert (=> b!2984888 (= e!1876951 e!1876949)))

(declare-fun c!490440 () Bool)

(assert (=> b!2984888 (= c!490440 ((_ is ElementMatch!9321) r!17423))))

(declare-fun b!2984889 () Bool)

(assert (=> b!2984889 (= e!1876947 lt!1039194)))

(declare-fun b!2984890 () Bool)

(assert (=> b!2984890 (= e!1876949 r!17423)))

(declare-fun b!2984891 () Bool)

(assert (=> b!2984891 (= e!1876946 e!1876939)))

(assert (=> b!2984891 (= lt!1039192 call!199501)))

(assert (=> b!2984891 (= lt!1039193 call!199502)))

(declare-fun res!1230987 () Bool)

(assert (=> b!2984891 (= res!1230987 call!199503)))

(declare-fun e!1876942 () Bool)

(assert (=> b!2984891 (=> res!1230987 e!1876942)))

(declare-fun c!490441 () Bool)

(assert (=> b!2984891 (= c!490441 e!1876942)))

(declare-fun b!2984892 () Bool)

(assert (=> b!2984892 (= e!1876948 (Concat!14642 lt!1039192 lt!1039193))))

(declare-fun b!2984893 () Bool)

(assert (=> b!2984893 (= e!1876942 call!199499)))

(assert (= (and d!843980 c!490445) b!2984873))

(assert (= (and d!843980 (not c!490445)) b!2984888))

(assert (= (and b!2984888 c!490440) b!2984890))

(assert (= (and b!2984888 (not c!490440)) b!2984870))

(assert (= (and b!2984870 c!490436) b!2984882))

(assert (= (and b!2984870 (not c!490436)) b!2984886))

(assert (= (and b!2984886 c!490444) b!2984876))

(assert (= (and b!2984886 (not c!490444)) b!2984872))

(assert (= (and b!2984876 (not res!1230989)) b!2984879))

(assert (= (and b!2984876 c!490438) b!2984887))

(assert (= (and b!2984876 (not c!490438)) b!2984884))

(assert (= (and b!2984872 c!490439) b!2984878))

(assert (= (and b!2984872 (not c!490439)) b!2984891))

(assert (= (and b!2984878 c!490442) b!2984881))

(assert (= (and b!2984878 (not c!490442)) b!2984885))

(assert (= (and b!2984885 c!490437) b!2984889))

(assert (= (and b!2984885 (not c!490437)) b!2984869))

(assert (= (and b!2984891 (not res!1230987)) b!2984893))

(assert (= (and b!2984891 c!490441) b!2984883))

(assert (= (and b!2984891 (not c!490441)) b!2984874))

(assert (= (and b!2984874 c!490443) b!2984880))

(assert (= (and b!2984874 (not c!490443)) b!2984875))

(assert (= (and b!2984875 c!490435) b!2984877))

(assert (= (and b!2984875 (not c!490435)) b!2984892))

(assert (= (or b!2984878 b!2984891) bm!199496))

(assert (= (or b!2984878 b!2984891) bm!199500))

(assert (= (or b!2984878 b!2984891) bm!199499))

(assert (= (or b!2984885 b!2984893) bm!199497))

(assert (= (or b!2984879 b!2984874) bm!199494))

(assert (= (or b!2984876 bm!199500) bm!199498))

(assert (= (or b!2984876 bm!199497) bm!199495))

(assert (= (and d!843980 res!1230988) b!2984871))

(declare-fun m!3344349 () Bool)

(assert (=> d!843980 m!3344349))

(assert (=> d!843980 m!3344209))

(declare-fun m!3344351 () Bool)

(assert (=> b!2984875 m!3344351))

(declare-fun m!3344353 () Bool)

(assert (=> bm!199495 m!3344353))

(declare-fun m!3344355 () Bool)

(assert (=> bm!199494 m!3344355))

(declare-fun m!3344357 () Bool)

(assert (=> b!2984871 m!3344357))

(assert (=> b!2984871 m!3344327))

(declare-fun m!3344359 () Bool)

(assert (=> bm!199496 m!3344359))

(declare-fun m!3344361 () Bool)

(assert (=> bm!199499 m!3344361))

(declare-fun m!3344363 () Bool)

(assert (=> bm!199498 m!3344363))

(assert (=> b!2984381 d!843980))

(declare-fun bm!199501 () Bool)

(declare-fun c!490446 () Bool)

(declare-fun call!199507 () Bool)

(declare-fun c!490447 () Bool)

(assert (=> bm!199501 (= call!199507 (validRegex!4054 (ite c!490447 (reg!9650 r!17423) (ite c!490446 (regTwo!19155 r!17423) (regOne!19154 r!17423)))))))

(declare-fun bm!199502 () Bool)

(declare-fun call!199508 () Bool)

(assert (=> bm!199502 (= call!199508 (validRegex!4054 (ite c!490446 (regOne!19155 r!17423) (regTwo!19154 r!17423))))))

(declare-fun b!2984894 () Bool)

(declare-fun e!1876956 () Bool)

(declare-fun e!1876954 () Bool)

(assert (=> b!2984894 (= e!1876956 e!1876954)))

(declare-fun res!1230990 () Bool)

(assert (=> b!2984894 (=> (not res!1230990) (not e!1876954))))

(declare-fun call!199506 () Bool)

(assert (=> b!2984894 (= res!1230990 call!199506)))

(declare-fun b!2984895 () Bool)

(declare-fun e!1876958 () Bool)

(declare-fun e!1876959 () Bool)

(assert (=> b!2984895 (= e!1876958 e!1876959)))

(assert (=> b!2984895 (= c!490446 ((_ is Union!9321) r!17423))))

(declare-fun d!843982 () Bool)

(declare-fun res!1230994 () Bool)

(declare-fun e!1876953 () Bool)

(assert (=> d!843982 (=> res!1230994 e!1876953)))

(assert (=> d!843982 (= res!1230994 ((_ is ElementMatch!9321) r!17423))))

(assert (=> d!843982 (= (validRegex!4054 r!17423) e!1876953)))

(declare-fun bm!199503 () Bool)

(assert (=> bm!199503 (= call!199506 call!199507)))

(declare-fun b!2984896 () Bool)

(assert (=> b!2984896 (= e!1876953 e!1876958)))

(assert (=> b!2984896 (= c!490447 ((_ is Star!9321) r!17423))))

(declare-fun b!2984897 () Bool)

(declare-fun e!1876955 () Bool)

(assert (=> b!2984897 (= e!1876958 e!1876955)))

(declare-fun res!1230992 () Bool)

(assert (=> b!2984897 (= res!1230992 (not (nullable!2998 (reg!9650 r!17423))))))

(assert (=> b!2984897 (=> (not res!1230992) (not e!1876955))))

(declare-fun b!2984898 () Bool)

(assert (=> b!2984898 (= e!1876955 call!199507)))

(declare-fun b!2984899 () Bool)

(assert (=> b!2984899 (= e!1876954 call!199508)))

(declare-fun b!2984900 () Bool)

(declare-fun e!1876957 () Bool)

(assert (=> b!2984900 (= e!1876957 call!199506)))

(declare-fun b!2984901 () Bool)

(declare-fun res!1230991 () Bool)

(assert (=> b!2984901 (=> res!1230991 e!1876956)))

(assert (=> b!2984901 (= res!1230991 (not ((_ is Concat!14642) r!17423)))))

(assert (=> b!2984901 (= e!1876959 e!1876956)))

(declare-fun b!2984902 () Bool)

(declare-fun res!1230993 () Bool)

(assert (=> b!2984902 (=> (not res!1230993) (not e!1876957))))

(assert (=> b!2984902 (= res!1230993 call!199508)))

(assert (=> b!2984902 (= e!1876959 e!1876957)))

(assert (= (and d!843982 (not res!1230994)) b!2984896))

(assert (= (and b!2984896 c!490447) b!2984897))

(assert (= (and b!2984896 (not c!490447)) b!2984895))

(assert (= (and b!2984897 res!1230992) b!2984898))

(assert (= (and b!2984895 c!490446) b!2984902))

(assert (= (and b!2984895 (not c!490446)) b!2984901))

(assert (= (and b!2984902 res!1230993) b!2984900))

(assert (= (and b!2984901 (not res!1230991)) b!2984894))

(assert (= (and b!2984894 res!1230990) b!2984899))

(assert (= (or b!2984902 b!2984899) bm!199502))

(assert (= (or b!2984900 b!2984894) bm!199503))

(assert (= (or b!2984898 bm!199503) bm!199501))

(declare-fun m!3344365 () Bool)

(assert (=> bm!199501 m!3344365))

(declare-fun m!3344367 () Bool)

(assert (=> bm!199502 m!3344367))

(assert (=> b!2984897 m!3344235))

(assert (=> start!288328 d!843982))

(declare-fun e!1876962 () Bool)

(assert (=> b!2984384 (= tp!949636 e!1876962)))

(declare-fun b!2984914 () Bool)

(declare-fun tp!949688 () Bool)

(declare-fun tp!949690 () Bool)

(assert (=> b!2984914 (= e!1876962 (and tp!949688 tp!949690))))

(declare-fun b!2984915 () Bool)

(declare-fun tp!949689 () Bool)

(assert (=> b!2984915 (= e!1876962 tp!949689)))

(declare-fun b!2984913 () Bool)

(assert (=> b!2984913 (= e!1876962 tp_is_empty!16205)))

(declare-fun b!2984916 () Bool)

(declare-fun tp!949686 () Bool)

(declare-fun tp!949687 () Bool)

(assert (=> b!2984916 (= e!1876962 (and tp!949686 tp!949687))))

(assert (= (and b!2984384 ((_ is ElementMatch!9321) (regOne!19154 r!17423))) b!2984913))

(assert (= (and b!2984384 ((_ is Concat!14642) (regOne!19154 r!17423))) b!2984914))

(assert (= (and b!2984384 ((_ is Star!9321) (regOne!19154 r!17423))) b!2984915))

(assert (= (and b!2984384 ((_ is Union!9321) (regOne!19154 r!17423))) b!2984916))

(declare-fun e!1876963 () Bool)

(assert (=> b!2984384 (= tp!949633 e!1876963)))

(declare-fun b!2984918 () Bool)

(declare-fun tp!949693 () Bool)

(declare-fun tp!949695 () Bool)

(assert (=> b!2984918 (= e!1876963 (and tp!949693 tp!949695))))

(declare-fun b!2984919 () Bool)

(declare-fun tp!949694 () Bool)

(assert (=> b!2984919 (= e!1876963 tp!949694)))

(declare-fun b!2984917 () Bool)

(assert (=> b!2984917 (= e!1876963 tp_is_empty!16205)))

(declare-fun b!2984920 () Bool)

(declare-fun tp!949691 () Bool)

(declare-fun tp!949692 () Bool)

(assert (=> b!2984920 (= e!1876963 (and tp!949691 tp!949692))))

(assert (= (and b!2984384 ((_ is ElementMatch!9321) (regTwo!19154 r!17423))) b!2984917))

(assert (= (and b!2984384 ((_ is Concat!14642) (regTwo!19154 r!17423))) b!2984918))

(assert (= (and b!2984384 ((_ is Star!9321) (regTwo!19154 r!17423))) b!2984919))

(assert (= (and b!2984384 ((_ is Union!9321) (regTwo!19154 r!17423))) b!2984920))

(declare-fun e!1876964 () Bool)

(assert (=> b!2984386 (= tp!949635 e!1876964)))

(declare-fun b!2984922 () Bool)

(declare-fun tp!949698 () Bool)

(declare-fun tp!949700 () Bool)

(assert (=> b!2984922 (= e!1876964 (and tp!949698 tp!949700))))

(declare-fun b!2984923 () Bool)

(declare-fun tp!949699 () Bool)

(assert (=> b!2984923 (= e!1876964 tp!949699)))

(declare-fun b!2984921 () Bool)

(assert (=> b!2984921 (= e!1876964 tp_is_empty!16205)))

(declare-fun b!2984924 () Bool)

(declare-fun tp!949696 () Bool)

(declare-fun tp!949697 () Bool)

(assert (=> b!2984924 (= e!1876964 (and tp!949696 tp!949697))))

(assert (= (and b!2984386 ((_ is ElementMatch!9321) (reg!9650 r!17423))) b!2984921))

(assert (= (and b!2984386 ((_ is Concat!14642) (reg!9650 r!17423))) b!2984922))

(assert (= (and b!2984386 ((_ is Star!9321) (reg!9650 r!17423))) b!2984923))

(assert (= (and b!2984386 ((_ is Union!9321) (reg!9650 r!17423))) b!2984924))

(declare-fun b!2984929 () Bool)

(declare-fun e!1876967 () Bool)

(declare-fun tp!949703 () Bool)

(assert (=> b!2984929 (= e!1876967 (and tp_is_empty!16205 tp!949703))))

(assert (=> b!2984387 (= tp!949637 e!1876967)))

(assert (= (and b!2984387 ((_ is Cons!35062) (t!234251 s!11993))) b!2984929))

(declare-fun e!1876968 () Bool)

(assert (=> b!2984385 (= tp!949634 e!1876968)))

(declare-fun b!2984931 () Bool)

(declare-fun tp!949706 () Bool)

(declare-fun tp!949708 () Bool)

(assert (=> b!2984931 (= e!1876968 (and tp!949706 tp!949708))))

(declare-fun b!2984932 () Bool)

(declare-fun tp!949707 () Bool)

(assert (=> b!2984932 (= e!1876968 tp!949707)))

(declare-fun b!2984930 () Bool)

(assert (=> b!2984930 (= e!1876968 tp_is_empty!16205)))

(declare-fun b!2984933 () Bool)

(declare-fun tp!949704 () Bool)

(declare-fun tp!949705 () Bool)

(assert (=> b!2984933 (= e!1876968 (and tp!949704 tp!949705))))

(assert (= (and b!2984385 ((_ is ElementMatch!9321) (regOne!19155 r!17423))) b!2984930))

(assert (= (and b!2984385 ((_ is Concat!14642) (regOne!19155 r!17423))) b!2984931))

(assert (= (and b!2984385 ((_ is Star!9321) (regOne!19155 r!17423))) b!2984932))

(assert (= (and b!2984385 ((_ is Union!9321) (regOne!19155 r!17423))) b!2984933))

(declare-fun e!1876969 () Bool)

(assert (=> b!2984385 (= tp!949632 e!1876969)))

(declare-fun b!2984935 () Bool)

(declare-fun tp!949711 () Bool)

(declare-fun tp!949713 () Bool)

(assert (=> b!2984935 (= e!1876969 (and tp!949711 tp!949713))))

(declare-fun b!2984936 () Bool)

(declare-fun tp!949712 () Bool)

(assert (=> b!2984936 (= e!1876969 tp!949712)))

(declare-fun b!2984934 () Bool)

(assert (=> b!2984934 (= e!1876969 tp_is_empty!16205)))

(declare-fun b!2984937 () Bool)

(declare-fun tp!949709 () Bool)

(declare-fun tp!949710 () Bool)

(assert (=> b!2984937 (= e!1876969 (and tp!949709 tp!949710))))

(assert (= (and b!2984385 ((_ is ElementMatch!9321) (regTwo!19155 r!17423))) b!2984934))

(assert (= (and b!2984385 ((_ is Concat!14642) (regTwo!19155 r!17423))) b!2984935))

(assert (= (and b!2984385 ((_ is Star!9321) (regTwo!19155 r!17423))) b!2984936))

(assert (= (and b!2984385 ((_ is Union!9321) (regTwo!19155 r!17423))) b!2984937))

(check-sat (not b!2984933) (not d!843980) (not bm!199443) (not b!2984915) (not bm!199494) (not b!2984922) (not b!2984831) (not d!843972) (not b!2984936) (not b!2984521) (not b!2984918) (not b!2984923) (not b!2984835) (not b!2984829) (not b!2984778) (not b!2984517) (not bm!199496) (not b!2984825) (not d!843974) (not bm!199491) (not b!2984919) (not b!2984920) (not bm!199479) (not b!2984839) (not b!2984935) (not bm!199446) (not bm!199445) (not b!2984863) (not b!2984840) (not bm!199502) (not bm!199480) (not bm!199495) (not b!2984817) (not b!2984916) (not b!2984914) (not b!2984821) (not b!2984924) (not b!2984931) (not b!2984871) tp_is_empty!16205 (not b!2984823) (not b!2984826) (not b!2984815) (not bm!199499) (not b!2984929) (not bm!199442) (not b!2984775) (not bm!199498) (not bm!199483) (not d!843950) (not b!2984837) (not b!2984875) (not b!2984932) (not d!843976) (not bm!199501) (not b!2984937) (not bm!199484) (not b!2984897) (not bm!199441) (not bm!199492))
(check-sat)
