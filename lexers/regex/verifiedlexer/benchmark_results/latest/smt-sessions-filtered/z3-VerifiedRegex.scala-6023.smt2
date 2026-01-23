; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294796 () Bool)

(assert start!294796)

(declare-fun b!3112526 () Bool)

(declare-fun e!1944199 () Bool)

(declare-fun e!1944200 () Bool)

(assert (=> b!3112526 (= e!1944199 e!1944200)))

(declare-fun res!1274212 () Bool)

(assert (=> b!3112526 (=> (not res!1274212) (not e!1944200))))

(declare-datatypes ((C!19380 0))(
  ( (C!19381 (val!11726 Int)) )
))
(declare-datatypes ((Regex!9597 0))(
  ( (ElementMatch!9597 (c!521069 C!19380)) (Concat!14918 (regOne!19706 Regex!9597) (regTwo!19706 Regex!9597)) (EmptyExpr!9597) (Star!9597 (reg!9926 Regex!9597)) (EmptyLang!9597) (Union!9597 (regOne!19707 Regex!9597) (regTwo!19707 Regex!9597)) )
))
(declare-fun r!17423 () Regex!9597)

(declare-fun validRegex!4330 (Regex!9597) Bool)

(assert (=> b!3112526 (= res!1274212 (validRegex!4330 (regTwo!19707 r!17423)))))

(declare-datatypes ((List!35462 0))(
  ( (Nil!35338) (Cons!35338 (h!40758 C!19380) (t!234527 List!35462)) )
))
(declare-fun s!11993 () List!35462)

(declare-fun matchR!4479 (Regex!9597 List!35462) Bool)

(assert (=> b!3112526 (matchR!4479 (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423)) s!11993)))

(declare-datatypes ((Unit!49633 0))(
  ( (Unit!49634) )
))
(declare-fun lt!1057704 () Unit!49633)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!86 (Regex!9597 Regex!9597 List!35462) Unit!49633)

(assert (=> b!3112526 (= lt!1057704 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!86 (regTwo!19707 r!17423) (regOne!19707 r!17423) s!11993))))

(declare-fun b!3112527 () Bool)

(assert (=> b!3112527 (= e!1944200 (validRegex!4330 (regOne!19707 r!17423)))))

(declare-fun b!3112528 () Bool)

(declare-fun res!1274218 () Bool)

(declare-fun e!1944195 () Bool)

(assert (=> b!3112528 (=> res!1274218 e!1944195)))

(declare-fun lt!1057710 () Regex!9597)

(declare-fun isEmptyLang!648 (Regex!9597) Bool)

(assert (=> b!3112528 (= res!1274218 (isEmptyLang!648 lt!1057710))))

(declare-fun b!3112529 () Bool)

(declare-fun e!1944202 () Bool)

(declare-fun tp!976597 () Bool)

(assert (=> b!3112529 (= e!1944202 tp!976597)))

(declare-fun b!3112530 () Bool)

(declare-fun tp!976592 () Bool)

(declare-fun tp!976595 () Bool)

(assert (=> b!3112530 (= e!1944202 (and tp!976592 tp!976595))))

(declare-fun b!3112531 () Bool)

(declare-fun e!1944197 () Bool)

(assert (=> b!3112531 (= e!1944197 (matchR!4479 lt!1057710 s!11993))))

(declare-fun b!3112532 () Bool)

(declare-fun e!1944201 () Bool)

(assert (=> b!3112532 (= e!1944201 e!1944195)))

(declare-fun res!1274215 () Bool)

(assert (=> b!3112532 (=> res!1274215 e!1944195)))

(declare-fun lt!1057705 () Regex!9597)

(assert (=> b!3112532 (= res!1274215 (isEmptyLang!648 lt!1057705))))

(declare-fun simplify!552 (Regex!9597) Regex!9597)

(assert (=> b!3112532 (= lt!1057710 (simplify!552 (regTwo!19707 r!17423)))))

(assert (=> b!3112532 (= lt!1057705 (simplify!552 (regOne!19707 r!17423)))))

(declare-fun b!3112533 () Bool)

(declare-fun e!1944196 () Bool)

(assert (=> b!3112533 (= e!1944196 e!1944199)))

(declare-fun res!1274219 () Bool)

(assert (=> b!3112533 (=> res!1274219 e!1944199)))

(declare-fun lt!1057709 () Bool)

(assert (=> b!3112533 (= res!1274219 (not lt!1057709))))

(assert (=> b!3112533 (= lt!1057709 (matchR!4479 lt!1057710 s!11993))))

(assert (=> b!3112533 (= lt!1057709 (matchR!4479 (regTwo!19707 r!17423) s!11993))))

(declare-fun lt!1057706 () Unit!49633)

(declare-fun lemmaSimplifySound!346 (Regex!9597 List!35462) Unit!49633)

(assert (=> b!3112533 (= lt!1057706 (lemmaSimplifySound!346 (regTwo!19707 r!17423) s!11993))))

(declare-fun b!3112534 () Bool)

(declare-fun e!1944203 () Bool)

(assert (=> b!3112534 (= e!1944203 (not e!1944201))))

(declare-fun res!1274213 () Bool)

(assert (=> b!3112534 (=> res!1274213 e!1944201)))

(declare-fun lt!1057702 () Bool)

(get-info :version)

(assert (=> b!3112534 (= res!1274213 (or lt!1057702 ((_ is Concat!14918) r!17423) (not ((_ is Union!9597) r!17423))))))

(declare-fun matchRSpec!1734 (Regex!9597 List!35462) Bool)

(assert (=> b!3112534 (= lt!1057702 (matchRSpec!1734 r!17423 s!11993))))

(assert (=> b!3112534 (= lt!1057702 (matchR!4479 r!17423 s!11993))))

(declare-fun lt!1057707 () Unit!49633)

(declare-fun mainMatchTheorem!1734 (Regex!9597 List!35462) Unit!49633)

(assert (=> b!3112534 (= lt!1057707 (mainMatchTheorem!1734 r!17423 s!11993))))

(declare-fun res!1274216 () Bool)

(assert (=> start!294796 (=> (not res!1274216) (not e!1944203))))

(assert (=> start!294796 (= res!1274216 (validRegex!4330 r!17423))))

(assert (=> start!294796 e!1944203))

(assert (=> start!294796 e!1944202))

(declare-fun e!1944198 () Bool)

(assert (=> start!294796 e!1944198))

(declare-fun b!3112535 () Bool)

(declare-fun res!1274217 () Bool)

(assert (=> b!3112535 (=> res!1274217 e!1944195)))

(assert (=> b!3112535 (= res!1274217 (not (matchR!4479 (Union!9597 lt!1057705 lt!1057710) s!11993)))))

(declare-fun b!3112536 () Bool)

(declare-fun tp_is_empty!16757 () Bool)

(declare-fun tp!976596 () Bool)

(assert (=> b!3112536 (= e!1944198 (and tp_is_empty!16757 tp!976596))))

(declare-fun b!3112537 () Bool)

(assert (=> b!3112537 (= e!1944202 tp_is_empty!16757)))

(declare-fun b!3112538 () Bool)

(declare-fun tp!976594 () Bool)

(declare-fun tp!976593 () Bool)

(assert (=> b!3112538 (= e!1944202 (and tp!976594 tp!976593))))

(declare-fun b!3112539 () Bool)

(assert (=> b!3112539 (= e!1944195 e!1944196)))

(declare-fun res!1274214 () Bool)

(assert (=> b!3112539 (=> res!1274214 e!1944196)))

(declare-fun lt!1057703 () Bool)

(assert (=> b!3112539 (= res!1274214 lt!1057703)))

(assert (=> b!3112539 e!1944197))

(declare-fun res!1274220 () Bool)

(assert (=> b!3112539 (=> res!1274220 e!1944197)))

(assert (=> b!3112539 (= res!1274220 lt!1057703)))

(assert (=> b!3112539 (= lt!1057703 (matchR!4479 lt!1057705 s!11993))))

(declare-fun lt!1057708 () Unit!49633)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!328 (Regex!9597 Regex!9597 List!35462) Unit!49633)

(assert (=> b!3112539 (= lt!1057708 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!328 lt!1057705 lt!1057710 s!11993))))

(assert (= (and start!294796 res!1274216) b!3112534))

(assert (= (and b!3112534 (not res!1274213)) b!3112532))

(assert (= (and b!3112532 (not res!1274215)) b!3112528))

(assert (= (and b!3112528 (not res!1274218)) b!3112535))

(assert (= (and b!3112535 (not res!1274217)) b!3112539))

(assert (= (and b!3112539 (not res!1274220)) b!3112531))

(assert (= (and b!3112539 (not res!1274214)) b!3112533))

(assert (= (and b!3112533 (not res!1274219)) b!3112526))

(assert (= (and b!3112526 res!1274212) b!3112527))

(assert (= (and start!294796 ((_ is ElementMatch!9597) r!17423)) b!3112537))

(assert (= (and start!294796 ((_ is Concat!14918) r!17423)) b!3112530))

(assert (= (and start!294796 ((_ is Star!9597) r!17423)) b!3112529))

(assert (= (and start!294796 ((_ is Union!9597) r!17423)) b!3112538))

(assert (= (and start!294796 ((_ is Cons!35338) s!11993)) b!3112536))

(declare-fun m!3405265 () Bool)

(assert (=> b!3112532 m!3405265))

(declare-fun m!3405267 () Bool)

(assert (=> b!3112532 m!3405267))

(declare-fun m!3405269 () Bool)

(assert (=> b!3112532 m!3405269))

(declare-fun m!3405271 () Bool)

(assert (=> b!3112528 m!3405271))

(declare-fun m!3405273 () Bool)

(assert (=> b!3112533 m!3405273))

(declare-fun m!3405275 () Bool)

(assert (=> b!3112533 m!3405275))

(declare-fun m!3405277 () Bool)

(assert (=> b!3112533 m!3405277))

(declare-fun m!3405279 () Bool)

(assert (=> b!3112526 m!3405279))

(declare-fun m!3405281 () Bool)

(assert (=> b!3112526 m!3405281))

(declare-fun m!3405283 () Bool)

(assert (=> b!3112526 m!3405283))

(declare-fun m!3405285 () Bool)

(assert (=> b!3112539 m!3405285))

(declare-fun m!3405287 () Bool)

(assert (=> b!3112539 m!3405287))

(declare-fun m!3405289 () Bool)

(assert (=> start!294796 m!3405289))

(declare-fun m!3405291 () Bool)

(assert (=> b!3112534 m!3405291))

(declare-fun m!3405293 () Bool)

(assert (=> b!3112534 m!3405293))

(declare-fun m!3405295 () Bool)

(assert (=> b!3112534 m!3405295))

(declare-fun m!3405297 () Bool)

(assert (=> b!3112527 m!3405297))

(assert (=> b!3112531 m!3405273))

(declare-fun m!3405299 () Bool)

(assert (=> b!3112535 m!3405299))

(check-sat (not b!3112528) (not b!3112527) (not b!3112526) tp_is_empty!16757 (not b!3112532) (not b!3112533) (not b!3112530) (not b!3112539) (not b!3112535) (not b!3112534) (not b!3112529) (not start!294796) (not b!3112531) (not b!3112538) (not b!3112536))
(check-sat)
(get-model)

(declare-fun b!3112623 () Bool)

(declare-fun e!1944253 () Bool)

(declare-fun e!1944258 () Bool)

(assert (=> b!3112623 (= e!1944253 e!1944258)))

(declare-fun res!1274270 () Bool)

(assert (=> b!3112623 (=> (not res!1274270) (not e!1944258))))

(declare-fun lt!1057715 () Bool)

(assert (=> b!3112623 (= res!1274270 (not lt!1057715))))

(declare-fun bm!220517 () Bool)

(declare-fun call!220522 () Bool)

(declare-fun isEmpty!19685 (List!35462) Bool)

(assert (=> bm!220517 (= call!220522 (isEmpty!19685 s!11993))))

(declare-fun b!3112624 () Bool)

(declare-fun res!1274268 () Bool)

(declare-fun e!1944256 () Bool)

(assert (=> b!3112624 (=> (not res!1274268) (not e!1944256))))

(declare-fun tail!5119 (List!35462) List!35462)

(assert (=> b!3112624 (= res!1274268 (isEmpty!19685 (tail!5119 s!11993)))))

(declare-fun b!3112626 () Bool)

(declare-fun res!1274272 () Bool)

(assert (=> b!3112626 (=> res!1274272 e!1944253)))

(assert (=> b!3112626 (= res!1274272 (not ((_ is ElementMatch!9597) lt!1057710)))))

(declare-fun e!1944254 () Bool)

(assert (=> b!3112626 (= e!1944254 e!1944253)))

(declare-fun b!3112627 () Bool)

(declare-fun e!1944259 () Bool)

(declare-fun head!6893 (List!35462) C!19380)

(assert (=> b!3112627 (= e!1944259 (not (= (head!6893 s!11993) (c!521069 lt!1057710))))))

(declare-fun b!3112628 () Bool)

(declare-fun res!1274269 () Bool)

(assert (=> b!3112628 (=> res!1274269 e!1944259)))

(assert (=> b!3112628 (= res!1274269 (not (isEmpty!19685 (tail!5119 s!11993))))))

(declare-fun b!3112629 () Bool)

(declare-fun e!1944257 () Bool)

(declare-fun derivativeStep!2834 (Regex!9597 C!19380) Regex!9597)

(assert (=> b!3112629 (= e!1944257 (matchR!4479 (derivativeStep!2834 lt!1057710 (head!6893 s!11993)) (tail!5119 s!11993)))))

(declare-fun b!3112630 () Bool)

(declare-fun res!1274273 () Bool)

(assert (=> b!3112630 (=> (not res!1274273) (not e!1944256))))

(assert (=> b!3112630 (= res!1274273 (not call!220522))))

(declare-fun b!3112631 () Bool)

(declare-fun nullable!3239 (Regex!9597) Bool)

(assert (=> b!3112631 (= e!1944257 (nullable!3239 lt!1057710))))

(declare-fun b!3112632 () Bool)

(assert (=> b!3112632 (= e!1944256 (= (head!6893 s!11993) (c!521069 lt!1057710)))))

(declare-fun b!3112633 () Bool)

(assert (=> b!3112633 (= e!1944258 e!1944259)))

(declare-fun res!1274271 () Bool)

(assert (=> b!3112633 (=> res!1274271 e!1944259)))

(assert (=> b!3112633 (= res!1274271 call!220522)))

(declare-fun b!3112634 () Bool)

(declare-fun res!1274275 () Bool)

(assert (=> b!3112634 (=> res!1274275 e!1944253)))

(assert (=> b!3112634 (= res!1274275 e!1944256)))

(declare-fun res!1274274 () Bool)

(assert (=> b!3112634 (=> (not res!1274274) (not e!1944256))))

(assert (=> b!3112634 (= res!1274274 lt!1057715)))

(declare-fun b!3112625 () Bool)

(assert (=> b!3112625 (= e!1944254 (not lt!1057715))))

(declare-fun d!861892 () Bool)

(declare-fun e!1944255 () Bool)

(assert (=> d!861892 e!1944255))

(declare-fun c!521089 () Bool)

(assert (=> d!861892 (= c!521089 ((_ is EmptyExpr!9597) lt!1057710))))

(assert (=> d!861892 (= lt!1057715 e!1944257)))

(declare-fun c!521090 () Bool)

(assert (=> d!861892 (= c!521090 (isEmpty!19685 s!11993))))

(assert (=> d!861892 (validRegex!4330 lt!1057710)))

(assert (=> d!861892 (= (matchR!4479 lt!1057710 s!11993) lt!1057715)))

(declare-fun b!3112635 () Bool)

(assert (=> b!3112635 (= e!1944255 e!1944254)))

(declare-fun c!521088 () Bool)

(assert (=> b!3112635 (= c!521088 ((_ is EmptyLang!9597) lt!1057710))))

(declare-fun b!3112636 () Bool)

(assert (=> b!3112636 (= e!1944255 (= lt!1057715 call!220522))))

(assert (= (and d!861892 c!521090) b!3112631))

(assert (= (and d!861892 (not c!521090)) b!3112629))

(assert (= (and d!861892 c!521089) b!3112636))

(assert (= (and d!861892 (not c!521089)) b!3112635))

(assert (= (and b!3112635 c!521088) b!3112625))

(assert (= (and b!3112635 (not c!521088)) b!3112626))

(assert (= (and b!3112626 (not res!1274272)) b!3112634))

(assert (= (and b!3112634 res!1274274) b!3112630))

(assert (= (and b!3112630 res!1274273) b!3112624))

(assert (= (and b!3112624 res!1274268) b!3112632))

(assert (= (and b!3112634 (not res!1274275)) b!3112623))

(assert (= (and b!3112623 res!1274270) b!3112633))

(assert (= (and b!3112633 (not res!1274271)) b!3112628))

(assert (= (and b!3112628 (not res!1274269)) b!3112627))

(assert (= (or b!3112636 b!3112630 b!3112633) bm!220517))

(declare-fun m!3405307 () Bool)

(assert (=> b!3112631 m!3405307))

(declare-fun m!3405309 () Bool)

(assert (=> b!3112624 m!3405309))

(assert (=> b!3112624 m!3405309))

(declare-fun m!3405311 () Bool)

(assert (=> b!3112624 m!3405311))

(declare-fun m!3405313 () Bool)

(assert (=> bm!220517 m!3405313))

(declare-fun m!3405315 () Bool)

(assert (=> b!3112627 m!3405315))

(assert (=> b!3112628 m!3405309))

(assert (=> b!3112628 m!3405309))

(assert (=> b!3112628 m!3405311))

(assert (=> d!861892 m!3405313))

(declare-fun m!3405317 () Bool)

(assert (=> d!861892 m!3405317))

(assert (=> b!3112632 m!3405315))

(assert (=> b!3112629 m!3405315))

(assert (=> b!3112629 m!3405315))

(declare-fun m!3405319 () Bool)

(assert (=> b!3112629 m!3405319))

(assert (=> b!3112629 m!3405309))

(assert (=> b!3112629 m!3405319))

(assert (=> b!3112629 m!3405309))

(declare-fun m!3405321 () Bool)

(assert (=> b!3112629 m!3405321))

(assert (=> b!3112531 d!861892))

(declare-fun b!3112671 () Bool)

(declare-fun e!1944287 () Bool)

(declare-fun e!1944283 () Bool)

(assert (=> b!3112671 (= e!1944287 e!1944283)))

(declare-fun c!521099 () Bool)

(assert (=> b!3112671 (= c!521099 ((_ is Union!9597) (regTwo!19707 r!17423)))))

(declare-fun b!3112672 () Bool)

(declare-fun e!1944289 () Bool)

(declare-fun call!220533 () Bool)

(assert (=> b!3112672 (= e!1944289 call!220533)))

(declare-fun b!3112673 () Bool)

(declare-fun e!1944286 () Bool)

(declare-fun call!220532 () Bool)

(assert (=> b!3112673 (= e!1944286 call!220532)))

(declare-fun b!3112674 () Bool)

(declare-fun e!1944285 () Bool)

(declare-fun call!220534 () Bool)

(assert (=> b!3112674 (= e!1944285 call!220534)))

(declare-fun bm!220527 () Bool)

(assert (=> bm!220527 (= call!220533 call!220534)))

(declare-fun c!521098 () Bool)

(declare-fun bm!220528 () Bool)

(assert (=> bm!220528 (= call!220534 (validRegex!4330 (ite c!521098 (reg!9926 (regTwo!19707 r!17423)) (ite c!521099 (regOne!19707 (regTwo!19707 r!17423)) (regTwo!19706 (regTwo!19707 r!17423))))))))

(declare-fun b!3112675 () Bool)

(declare-fun e!1944288 () Bool)

(assert (=> b!3112675 (= e!1944288 e!1944287)))

(assert (=> b!3112675 (= c!521098 ((_ is Star!9597) (regTwo!19707 r!17423)))))

(declare-fun b!3112676 () Bool)

(declare-fun res!1274299 () Bool)

(assert (=> b!3112676 (=> (not res!1274299) (not e!1944286))))

(assert (=> b!3112676 (= res!1274299 call!220533)))

(assert (=> b!3112676 (= e!1944283 e!1944286)))

(declare-fun b!3112677 () Bool)

(assert (=> b!3112677 (= e!1944287 e!1944285)))

(declare-fun res!1274300 () Bool)

(assert (=> b!3112677 (= res!1274300 (not (nullable!3239 (reg!9926 (regTwo!19707 r!17423)))))))

(assert (=> b!3112677 (=> (not res!1274300) (not e!1944285))))

(declare-fun bm!220529 () Bool)

(assert (=> bm!220529 (= call!220532 (validRegex!4330 (ite c!521099 (regTwo!19707 (regTwo!19707 r!17423)) (regOne!19706 (regTwo!19707 r!17423)))))))

(declare-fun b!3112678 () Bool)

(declare-fun e!1944284 () Bool)

(assert (=> b!3112678 (= e!1944284 e!1944289)))

(declare-fun res!1274297 () Bool)

(assert (=> b!3112678 (=> (not res!1274297) (not e!1944289))))

(assert (=> b!3112678 (= res!1274297 call!220532)))

(declare-fun d!861896 () Bool)

(declare-fun res!1274296 () Bool)

(assert (=> d!861896 (=> res!1274296 e!1944288)))

(assert (=> d!861896 (= res!1274296 ((_ is ElementMatch!9597) (regTwo!19707 r!17423)))))

(assert (=> d!861896 (= (validRegex!4330 (regTwo!19707 r!17423)) e!1944288)))

(declare-fun b!3112679 () Bool)

(declare-fun res!1274298 () Bool)

(assert (=> b!3112679 (=> res!1274298 e!1944284)))

(assert (=> b!3112679 (= res!1274298 (not ((_ is Concat!14918) (regTwo!19707 r!17423))))))

(assert (=> b!3112679 (= e!1944283 e!1944284)))

(assert (= (and d!861896 (not res!1274296)) b!3112675))

(assert (= (and b!3112675 c!521098) b!3112677))

(assert (= (and b!3112675 (not c!521098)) b!3112671))

(assert (= (and b!3112677 res!1274300) b!3112674))

(assert (= (and b!3112671 c!521099) b!3112676))

(assert (= (and b!3112671 (not c!521099)) b!3112679))

(assert (= (and b!3112676 res!1274299) b!3112673))

(assert (= (and b!3112679 (not res!1274298)) b!3112678))

(assert (= (and b!3112678 res!1274297) b!3112672))

(assert (= (or b!3112676 b!3112672) bm!220527))

(assert (= (or b!3112673 b!3112678) bm!220529))

(assert (= (or b!3112674 bm!220527) bm!220528))

(declare-fun m!3405339 () Bool)

(assert (=> bm!220528 m!3405339))

(declare-fun m!3405341 () Bool)

(assert (=> b!3112677 m!3405341))

(declare-fun m!3405343 () Bool)

(assert (=> bm!220529 m!3405343))

(assert (=> b!3112526 d!861896))

(declare-fun b!3112681 () Bool)

(declare-fun e!1944291 () Bool)

(declare-fun e!1944296 () Bool)

(assert (=> b!3112681 (= e!1944291 e!1944296)))

(declare-fun res!1274304 () Bool)

(assert (=> b!3112681 (=> (not res!1274304) (not e!1944296))))

(declare-fun lt!1057720 () Bool)

(assert (=> b!3112681 (= res!1274304 (not lt!1057720))))

(declare-fun bm!220530 () Bool)

(declare-fun call!220535 () Bool)

(assert (=> bm!220530 (= call!220535 (isEmpty!19685 s!11993))))

(declare-fun b!3112682 () Bool)

(declare-fun res!1274302 () Bool)

(declare-fun e!1944294 () Bool)

(assert (=> b!3112682 (=> (not res!1274302) (not e!1944294))))

(assert (=> b!3112682 (= res!1274302 (isEmpty!19685 (tail!5119 s!11993)))))

(declare-fun b!3112684 () Bool)

(declare-fun res!1274306 () Bool)

(assert (=> b!3112684 (=> res!1274306 e!1944291)))

(assert (=> b!3112684 (= res!1274306 (not ((_ is ElementMatch!9597) (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423)))))))

(declare-fun e!1944292 () Bool)

(assert (=> b!3112684 (= e!1944292 e!1944291)))

(declare-fun b!3112685 () Bool)

(declare-fun e!1944297 () Bool)

(assert (=> b!3112685 (= e!1944297 (not (= (head!6893 s!11993) (c!521069 (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423))))))))

(declare-fun b!3112686 () Bool)

(declare-fun res!1274303 () Bool)

(assert (=> b!3112686 (=> res!1274303 e!1944297)))

(assert (=> b!3112686 (= res!1274303 (not (isEmpty!19685 (tail!5119 s!11993))))))

(declare-fun b!3112687 () Bool)

(declare-fun e!1944295 () Bool)

(assert (=> b!3112687 (= e!1944295 (matchR!4479 (derivativeStep!2834 (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423)) (head!6893 s!11993)) (tail!5119 s!11993)))))

(declare-fun b!3112688 () Bool)

(declare-fun res!1274307 () Bool)

(assert (=> b!3112688 (=> (not res!1274307) (not e!1944294))))

(assert (=> b!3112688 (= res!1274307 (not call!220535))))

(declare-fun b!3112689 () Bool)

(assert (=> b!3112689 (= e!1944295 (nullable!3239 (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423))))))

(declare-fun b!3112690 () Bool)

(assert (=> b!3112690 (= e!1944294 (= (head!6893 s!11993) (c!521069 (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423)))))))

(declare-fun b!3112691 () Bool)

(assert (=> b!3112691 (= e!1944296 e!1944297)))

(declare-fun res!1274305 () Bool)

(assert (=> b!3112691 (=> res!1274305 e!1944297)))

(assert (=> b!3112691 (= res!1274305 call!220535)))

(declare-fun b!3112692 () Bool)

(declare-fun res!1274309 () Bool)

(assert (=> b!3112692 (=> res!1274309 e!1944291)))

(assert (=> b!3112692 (= res!1274309 e!1944294)))

(declare-fun res!1274308 () Bool)

(assert (=> b!3112692 (=> (not res!1274308) (not e!1944294))))

(assert (=> b!3112692 (= res!1274308 lt!1057720)))

(declare-fun b!3112683 () Bool)

(assert (=> b!3112683 (= e!1944292 (not lt!1057720))))

(declare-fun d!861900 () Bool)

(declare-fun e!1944293 () Bool)

(assert (=> d!861900 e!1944293))

(declare-fun c!521101 () Bool)

(assert (=> d!861900 (= c!521101 ((_ is EmptyExpr!9597) (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423))))))

(assert (=> d!861900 (= lt!1057720 e!1944295)))

(declare-fun c!521102 () Bool)

(assert (=> d!861900 (= c!521102 (isEmpty!19685 s!11993))))

(assert (=> d!861900 (validRegex!4330 (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423)))))

(assert (=> d!861900 (= (matchR!4479 (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423)) s!11993) lt!1057720)))

(declare-fun b!3112693 () Bool)

(assert (=> b!3112693 (= e!1944293 e!1944292)))

(declare-fun c!521100 () Bool)

(assert (=> b!3112693 (= c!521100 ((_ is EmptyLang!9597) (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423))))))

(declare-fun b!3112694 () Bool)

(assert (=> b!3112694 (= e!1944293 (= lt!1057720 call!220535))))

(assert (= (and d!861900 c!521102) b!3112689))

(assert (= (and d!861900 (not c!521102)) b!3112687))

(assert (= (and d!861900 c!521101) b!3112694))

(assert (= (and d!861900 (not c!521101)) b!3112693))

(assert (= (and b!3112693 c!521100) b!3112683))

(assert (= (and b!3112693 (not c!521100)) b!3112684))

(assert (= (and b!3112684 (not res!1274306)) b!3112692))

(assert (= (and b!3112692 res!1274308) b!3112688))

(assert (= (and b!3112688 res!1274307) b!3112682))

(assert (= (and b!3112682 res!1274302) b!3112690))

(assert (= (and b!3112692 (not res!1274309)) b!3112681))

(assert (= (and b!3112681 res!1274304) b!3112691))

(assert (= (and b!3112691 (not res!1274305)) b!3112686))

(assert (= (and b!3112686 (not res!1274303)) b!3112685))

(assert (= (or b!3112694 b!3112688 b!3112691) bm!220530))

(declare-fun m!3405347 () Bool)

(assert (=> b!3112689 m!3405347))

(assert (=> b!3112682 m!3405309))

(assert (=> b!3112682 m!3405309))

(assert (=> b!3112682 m!3405311))

(assert (=> bm!220530 m!3405313))

(assert (=> b!3112685 m!3405315))

(assert (=> b!3112686 m!3405309))

(assert (=> b!3112686 m!3405309))

(assert (=> b!3112686 m!3405311))

(assert (=> d!861900 m!3405313))

(declare-fun m!3405355 () Bool)

(assert (=> d!861900 m!3405355))

(assert (=> b!3112690 m!3405315))

(assert (=> b!3112687 m!3405315))

(assert (=> b!3112687 m!3405315))

(declare-fun m!3405357 () Bool)

(assert (=> b!3112687 m!3405357))

(assert (=> b!3112687 m!3405309))

(assert (=> b!3112687 m!3405357))

(assert (=> b!3112687 m!3405309))

(declare-fun m!3405359 () Bool)

(assert (=> b!3112687 m!3405359))

(assert (=> b!3112526 d!861900))

(declare-fun d!861908 () Bool)

(assert (=> d!861908 (matchR!4479 (Union!9597 (regTwo!19707 r!17423) (regOne!19707 r!17423)) s!11993)))

(declare-fun lt!1057724 () Unit!49633)

(declare-fun choose!18410 (Regex!9597 Regex!9597 List!35462) Unit!49633)

(assert (=> d!861908 (= lt!1057724 (choose!18410 (regTwo!19707 r!17423) (regOne!19707 r!17423) s!11993))))

(declare-fun e!1944321 () Bool)

(assert (=> d!861908 e!1944321))

(declare-fun res!1274330 () Bool)

(assert (=> d!861908 (=> (not res!1274330) (not e!1944321))))

(assert (=> d!861908 (= res!1274330 (validRegex!4330 (regTwo!19707 r!17423)))))

(assert (=> d!861908 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!86 (regTwo!19707 r!17423) (regOne!19707 r!17423) s!11993) lt!1057724)))

(declare-fun b!3112729 () Bool)

(assert (=> b!3112729 (= e!1944321 (validRegex!4330 (regOne!19707 r!17423)))))

(assert (= (and d!861908 res!1274330) b!3112729))

(assert (=> d!861908 m!3405281))

(declare-fun m!3405375 () Bool)

(assert (=> d!861908 m!3405375))

(assert (=> d!861908 m!3405279))

(assert (=> b!3112729 m!3405297))

(assert (=> b!3112526 d!861908))

(declare-fun b!3112730 () Bool)

(declare-fun e!1944322 () Bool)

(declare-fun e!1944327 () Bool)

(assert (=> b!3112730 (= e!1944322 e!1944327)))

(declare-fun res!1274333 () Bool)

(assert (=> b!3112730 (=> (not res!1274333) (not e!1944327))))

(declare-fun lt!1057725 () Bool)

(assert (=> b!3112730 (= res!1274333 (not lt!1057725))))

(declare-fun bm!220538 () Bool)

(declare-fun call!220543 () Bool)

(assert (=> bm!220538 (= call!220543 (isEmpty!19685 s!11993))))

(declare-fun b!3112731 () Bool)

(declare-fun res!1274331 () Bool)

(declare-fun e!1944325 () Bool)

(assert (=> b!3112731 (=> (not res!1274331) (not e!1944325))))

(assert (=> b!3112731 (= res!1274331 (isEmpty!19685 (tail!5119 s!11993)))))

(declare-fun b!3112733 () Bool)

(declare-fun res!1274335 () Bool)

(assert (=> b!3112733 (=> res!1274335 e!1944322)))

(assert (=> b!3112733 (= res!1274335 (not ((_ is ElementMatch!9597) (Union!9597 lt!1057705 lt!1057710))))))

(declare-fun e!1944323 () Bool)

(assert (=> b!3112733 (= e!1944323 e!1944322)))

(declare-fun e!1944328 () Bool)

(declare-fun b!3112734 () Bool)

(assert (=> b!3112734 (= e!1944328 (not (= (head!6893 s!11993) (c!521069 (Union!9597 lt!1057705 lt!1057710)))))))

(declare-fun b!3112735 () Bool)

(declare-fun res!1274332 () Bool)

(assert (=> b!3112735 (=> res!1274332 e!1944328)))

(assert (=> b!3112735 (= res!1274332 (not (isEmpty!19685 (tail!5119 s!11993))))))

(declare-fun b!3112736 () Bool)

(declare-fun e!1944326 () Bool)

(assert (=> b!3112736 (= e!1944326 (matchR!4479 (derivativeStep!2834 (Union!9597 lt!1057705 lt!1057710) (head!6893 s!11993)) (tail!5119 s!11993)))))

(declare-fun b!3112737 () Bool)

(declare-fun res!1274336 () Bool)

(assert (=> b!3112737 (=> (not res!1274336) (not e!1944325))))

(assert (=> b!3112737 (= res!1274336 (not call!220543))))

(declare-fun b!3112738 () Bool)

(assert (=> b!3112738 (= e!1944326 (nullable!3239 (Union!9597 lt!1057705 lt!1057710)))))

(declare-fun b!3112739 () Bool)

(assert (=> b!3112739 (= e!1944325 (= (head!6893 s!11993) (c!521069 (Union!9597 lt!1057705 lt!1057710))))))

(declare-fun b!3112740 () Bool)

(assert (=> b!3112740 (= e!1944327 e!1944328)))

(declare-fun res!1274334 () Bool)

(assert (=> b!3112740 (=> res!1274334 e!1944328)))

(assert (=> b!3112740 (= res!1274334 call!220543)))

(declare-fun b!3112741 () Bool)

(declare-fun res!1274338 () Bool)

(assert (=> b!3112741 (=> res!1274338 e!1944322)))

(assert (=> b!3112741 (= res!1274338 e!1944325)))

(declare-fun res!1274337 () Bool)

(assert (=> b!3112741 (=> (not res!1274337) (not e!1944325))))

(assert (=> b!3112741 (= res!1274337 lt!1057725)))

(declare-fun b!3112732 () Bool)

(assert (=> b!3112732 (= e!1944323 (not lt!1057725))))

(declare-fun d!861914 () Bool)

(declare-fun e!1944324 () Bool)

(assert (=> d!861914 e!1944324))

(declare-fun c!521111 () Bool)

(assert (=> d!861914 (= c!521111 ((_ is EmptyExpr!9597) (Union!9597 lt!1057705 lt!1057710)))))

(assert (=> d!861914 (= lt!1057725 e!1944326)))

(declare-fun c!521112 () Bool)

(assert (=> d!861914 (= c!521112 (isEmpty!19685 s!11993))))

(assert (=> d!861914 (validRegex!4330 (Union!9597 lt!1057705 lt!1057710))))

(assert (=> d!861914 (= (matchR!4479 (Union!9597 lt!1057705 lt!1057710) s!11993) lt!1057725)))

(declare-fun b!3112742 () Bool)

(assert (=> b!3112742 (= e!1944324 e!1944323)))

(declare-fun c!521110 () Bool)

(assert (=> b!3112742 (= c!521110 ((_ is EmptyLang!9597) (Union!9597 lt!1057705 lt!1057710)))))

(declare-fun b!3112743 () Bool)

(assert (=> b!3112743 (= e!1944324 (= lt!1057725 call!220543))))

(assert (= (and d!861914 c!521112) b!3112738))

(assert (= (and d!861914 (not c!521112)) b!3112736))

(assert (= (and d!861914 c!521111) b!3112743))

(assert (= (and d!861914 (not c!521111)) b!3112742))

(assert (= (and b!3112742 c!521110) b!3112732))

(assert (= (and b!3112742 (not c!521110)) b!3112733))

(assert (= (and b!3112733 (not res!1274335)) b!3112741))

(assert (= (and b!3112741 res!1274337) b!3112737))

(assert (= (and b!3112737 res!1274336) b!3112731))

(assert (= (and b!3112731 res!1274331) b!3112739))

(assert (= (and b!3112741 (not res!1274338)) b!3112730))

(assert (= (and b!3112730 res!1274333) b!3112740))

(assert (= (and b!3112740 (not res!1274334)) b!3112735))

(assert (= (and b!3112735 (not res!1274332)) b!3112734))

(assert (= (or b!3112743 b!3112737 b!3112740) bm!220538))

(declare-fun m!3405377 () Bool)

(assert (=> b!3112738 m!3405377))

(assert (=> b!3112731 m!3405309))

(assert (=> b!3112731 m!3405309))

(assert (=> b!3112731 m!3405311))

(assert (=> bm!220538 m!3405313))

(assert (=> b!3112734 m!3405315))

(assert (=> b!3112735 m!3405309))

(assert (=> b!3112735 m!3405309))

(assert (=> b!3112735 m!3405311))

(assert (=> d!861914 m!3405313))

(declare-fun m!3405379 () Bool)

(assert (=> d!861914 m!3405379))

(assert (=> b!3112739 m!3405315))

(assert (=> b!3112736 m!3405315))

(assert (=> b!3112736 m!3405315))

(declare-fun m!3405381 () Bool)

(assert (=> b!3112736 m!3405381))

(assert (=> b!3112736 m!3405309))

(assert (=> b!3112736 m!3405381))

(assert (=> b!3112736 m!3405309))

(declare-fun m!3405383 () Bool)

(assert (=> b!3112736 m!3405383))

(assert (=> b!3112535 d!861914))

(declare-fun b!3112744 () Bool)

(declare-fun e!1944333 () Bool)

(declare-fun e!1944329 () Bool)

(assert (=> b!3112744 (= e!1944333 e!1944329)))

(declare-fun c!521114 () Bool)

(assert (=> b!3112744 (= c!521114 ((_ is Union!9597) r!17423))))

(declare-fun b!3112745 () Bool)

(declare-fun e!1944335 () Bool)

(declare-fun call!220545 () Bool)

(assert (=> b!3112745 (= e!1944335 call!220545)))

(declare-fun b!3112746 () Bool)

(declare-fun e!1944332 () Bool)

(declare-fun call!220544 () Bool)

(assert (=> b!3112746 (= e!1944332 call!220544)))

(declare-fun b!3112747 () Bool)

(declare-fun e!1944331 () Bool)

(declare-fun call!220546 () Bool)

(assert (=> b!3112747 (= e!1944331 call!220546)))

(declare-fun bm!220539 () Bool)

(assert (=> bm!220539 (= call!220545 call!220546)))

(declare-fun c!521113 () Bool)

(declare-fun bm!220540 () Bool)

(assert (=> bm!220540 (= call!220546 (validRegex!4330 (ite c!521113 (reg!9926 r!17423) (ite c!521114 (regOne!19707 r!17423) (regTwo!19706 r!17423)))))))

(declare-fun b!3112748 () Bool)

(declare-fun e!1944334 () Bool)

(assert (=> b!3112748 (= e!1944334 e!1944333)))

(assert (=> b!3112748 (= c!521113 ((_ is Star!9597) r!17423))))

(declare-fun b!3112749 () Bool)

(declare-fun res!1274342 () Bool)

(assert (=> b!3112749 (=> (not res!1274342) (not e!1944332))))

(assert (=> b!3112749 (= res!1274342 call!220545)))

(assert (=> b!3112749 (= e!1944329 e!1944332)))

(declare-fun b!3112750 () Bool)

(assert (=> b!3112750 (= e!1944333 e!1944331)))

(declare-fun res!1274343 () Bool)

(assert (=> b!3112750 (= res!1274343 (not (nullable!3239 (reg!9926 r!17423))))))

(assert (=> b!3112750 (=> (not res!1274343) (not e!1944331))))

(declare-fun bm!220541 () Bool)

(assert (=> bm!220541 (= call!220544 (validRegex!4330 (ite c!521114 (regTwo!19707 r!17423) (regOne!19706 r!17423))))))

(declare-fun b!3112751 () Bool)

(declare-fun e!1944330 () Bool)

(assert (=> b!3112751 (= e!1944330 e!1944335)))

(declare-fun res!1274340 () Bool)

(assert (=> b!3112751 (=> (not res!1274340) (not e!1944335))))

(assert (=> b!3112751 (= res!1274340 call!220544)))

(declare-fun d!861916 () Bool)

(declare-fun res!1274339 () Bool)

(assert (=> d!861916 (=> res!1274339 e!1944334)))

(assert (=> d!861916 (= res!1274339 ((_ is ElementMatch!9597) r!17423))))

(assert (=> d!861916 (= (validRegex!4330 r!17423) e!1944334)))

(declare-fun b!3112752 () Bool)

(declare-fun res!1274341 () Bool)

(assert (=> b!3112752 (=> res!1274341 e!1944330)))

(assert (=> b!3112752 (= res!1274341 (not ((_ is Concat!14918) r!17423)))))

(assert (=> b!3112752 (= e!1944329 e!1944330)))

(assert (= (and d!861916 (not res!1274339)) b!3112748))

(assert (= (and b!3112748 c!521113) b!3112750))

(assert (= (and b!3112748 (not c!521113)) b!3112744))

(assert (= (and b!3112750 res!1274343) b!3112747))

(assert (= (and b!3112744 c!521114) b!3112749))

(assert (= (and b!3112744 (not c!521114)) b!3112752))

(assert (= (and b!3112749 res!1274342) b!3112746))

(assert (= (and b!3112752 (not res!1274341)) b!3112751))

(assert (= (and b!3112751 res!1274340) b!3112745))

(assert (= (or b!3112749 b!3112745) bm!220539))

(assert (= (or b!3112746 b!3112751) bm!220541))

(assert (= (or b!3112747 bm!220539) bm!220540))

(declare-fun m!3405385 () Bool)

(assert (=> bm!220540 m!3405385))

(declare-fun m!3405387 () Bool)

(assert (=> b!3112750 m!3405387))

(declare-fun m!3405389 () Bool)

(assert (=> bm!220541 m!3405389))

(assert (=> start!294796 d!861916))

(declare-fun b!3112763 () Bool)

(declare-fun e!1944340 () Bool)

(declare-fun e!1944346 () Bool)

(assert (=> b!3112763 (= e!1944340 e!1944346)))

(declare-fun res!1274348 () Bool)

(assert (=> b!3112763 (=> (not res!1274348) (not e!1944346))))

(declare-fun lt!1057726 () Bool)

(assert (=> b!3112763 (= res!1274348 (not lt!1057726))))

(declare-fun bm!220542 () Bool)

(declare-fun call!220547 () Bool)

(assert (=> bm!220542 (= call!220547 (isEmpty!19685 s!11993))))

(declare-fun b!3112764 () Bool)

(declare-fun res!1274346 () Bool)

(declare-fun e!1944343 () Bool)

(assert (=> b!3112764 (=> (not res!1274346) (not e!1944343))))

(assert (=> b!3112764 (= res!1274346 (isEmpty!19685 (tail!5119 s!11993)))))

(declare-fun b!3112766 () Bool)

(declare-fun res!1274350 () Bool)

(assert (=> b!3112766 (=> res!1274350 e!1944340)))

(assert (=> b!3112766 (= res!1274350 (not ((_ is ElementMatch!9597) lt!1057705)))))

(declare-fun e!1944341 () Bool)

(assert (=> b!3112766 (= e!1944341 e!1944340)))

(declare-fun b!3112767 () Bool)

(declare-fun e!1944347 () Bool)

(assert (=> b!3112767 (= e!1944347 (not (= (head!6893 s!11993) (c!521069 lt!1057705))))))

(declare-fun b!3112768 () Bool)

(declare-fun res!1274347 () Bool)

(assert (=> b!3112768 (=> res!1274347 e!1944347)))

(assert (=> b!3112768 (= res!1274347 (not (isEmpty!19685 (tail!5119 s!11993))))))

(declare-fun b!3112769 () Bool)

(declare-fun e!1944344 () Bool)

(assert (=> b!3112769 (= e!1944344 (matchR!4479 (derivativeStep!2834 lt!1057705 (head!6893 s!11993)) (tail!5119 s!11993)))))

(declare-fun b!3112770 () Bool)

(declare-fun res!1274351 () Bool)

(assert (=> b!3112770 (=> (not res!1274351) (not e!1944343))))

(assert (=> b!3112770 (= res!1274351 (not call!220547))))

(declare-fun b!3112771 () Bool)

(assert (=> b!3112771 (= e!1944344 (nullable!3239 lt!1057705))))

(declare-fun b!3112772 () Bool)

(assert (=> b!3112772 (= e!1944343 (= (head!6893 s!11993) (c!521069 lt!1057705)))))

(declare-fun b!3112773 () Bool)

(assert (=> b!3112773 (= e!1944346 e!1944347)))

(declare-fun res!1274349 () Bool)

(assert (=> b!3112773 (=> res!1274349 e!1944347)))

(assert (=> b!3112773 (= res!1274349 call!220547)))

(declare-fun b!3112774 () Bool)

(declare-fun res!1274353 () Bool)

(assert (=> b!3112774 (=> res!1274353 e!1944340)))

(assert (=> b!3112774 (= res!1274353 e!1944343)))

(declare-fun res!1274352 () Bool)

(assert (=> b!3112774 (=> (not res!1274352) (not e!1944343))))

(assert (=> b!3112774 (= res!1274352 lt!1057726)))

(declare-fun b!3112765 () Bool)

(assert (=> b!3112765 (= e!1944341 (not lt!1057726))))

(declare-fun d!861918 () Bool)

(declare-fun e!1944342 () Bool)

(assert (=> d!861918 e!1944342))

(declare-fun c!521118 () Bool)

(assert (=> d!861918 (= c!521118 ((_ is EmptyExpr!9597) lt!1057705))))

(assert (=> d!861918 (= lt!1057726 e!1944344)))

(declare-fun c!521121 () Bool)

(assert (=> d!861918 (= c!521121 (isEmpty!19685 s!11993))))

(assert (=> d!861918 (validRegex!4330 lt!1057705)))

(assert (=> d!861918 (= (matchR!4479 lt!1057705 s!11993) lt!1057726)))

(declare-fun b!3112775 () Bool)

(assert (=> b!3112775 (= e!1944342 e!1944341)))

(declare-fun c!521117 () Bool)

(assert (=> b!3112775 (= c!521117 ((_ is EmptyLang!9597) lt!1057705))))

(declare-fun b!3112776 () Bool)

(assert (=> b!3112776 (= e!1944342 (= lt!1057726 call!220547))))

(assert (= (and d!861918 c!521121) b!3112771))

(assert (= (and d!861918 (not c!521121)) b!3112769))

(assert (= (and d!861918 c!521118) b!3112776))

(assert (= (and d!861918 (not c!521118)) b!3112775))

(assert (= (and b!3112775 c!521117) b!3112765))

(assert (= (and b!3112775 (not c!521117)) b!3112766))

(assert (= (and b!3112766 (not res!1274350)) b!3112774))

(assert (= (and b!3112774 res!1274352) b!3112770))

(assert (= (and b!3112770 res!1274351) b!3112764))

(assert (= (and b!3112764 res!1274346) b!3112772))

(assert (= (and b!3112774 (not res!1274353)) b!3112763))

(assert (= (and b!3112763 res!1274348) b!3112773))

(assert (= (and b!3112773 (not res!1274349)) b!3112768))

(assert (= (and b!3112768 (not res!1274347)) b!3112767))

(assert (= (or b!3112776 b!3112770 b!3112773) bm!220542))

(declare-fun m!3405391 () Bool)

(assert (=> b!3112771 m!3405391))

(assert (=> b!3112764 m!3405309))

(assert (=> b!3112764 m!3405309))

(assert (=> b!3112764 m!3405311))

(assert (=> bm!220542 m!3405313))

(assert (=> b!3112767 m!3405315))

(assert (=> b!3112768 m!3405309))

(assert (=> b!3112768 m!3405309))

(assert (=> b!3112768 m!3405311))

(assert (=> d!861918 m!3405313))

(declare-fun m!3405393 () Bool)

(assert (=> d!861918 m!3405393))

(assert (=> b!3112772 m!3405315))

(assert (=> b!3112769 m!3405315))

(assert (=> b!3112769 m!3405315))

(declare-fun m!3405395 () Bool)

(assert (=> b!3112769 m!3405395))

(assert (=> b!3112769 m!3405309))

(assert (=> b!3112769 m!3405395))

(assert (=> b!3112769 m!3405309))

(declare-fun m!3405397 () Bool)

(assert (=> b!3112769 m!3405397))

(assert (=> b!3112539 d!861918))

(declare-fun d!861920 () Bool)

(declare-fun e!1944361 () Bool)

(assert (=> d!861920 e!1944361))

(declare-fun res!1274362 () Bool)

(assert (=> d!861920 (=> res!1274362 e!1944361)))

(assert (=> d!861920 (= res!1274362 (matchR!4479 lt!1057705 s!11993))))

(declare-fun lt!1057729 () Unit!49633)

(declare-fun choose!18413 (Regex!9597 Regex!9597 List!35462) Unit!49633)

(assert (=> d!861920 (= lt!1057729 (choose!18413 lt!1057705 lt!1057710 s!11993))))

(declare-fun e!1944362 () Bool)

(assert (=> d!861920 e!1944362))

(declare-fun res!1274363 () Bool)

(assert (=> d!861920 (=> (not res!1274363) (not e!1944362))))

(assert (=> d!861920 (= res!1274363 (validRegex!4330 lt!1057705))))

(assert (=> d!861920 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!328 lt!1057705 lt!1057710 s!11993) lt!1057729)))

(declare-fun b!3112793 () Bool)

(assert (=> b!3112793 (= e!1944362 (validRegex!4330 lt!1057710))))

(declare-fun b!3112794 () Bool)

(assert (=> b!3112794 (= e!1944361 (matchR!4479 lt!1057710 s!11993))))

(assert (= (and d!861920 res!1274363) b!3112793))

(assert (= (and d!861920 (not res!1274362)) b!3112794))

(assert (=> d!861920 m!3405285))

(declare-fun m!3405399 () Bool)

(assert (=> d!861920 m!3405399))

(assert (=> d!861920 m!3405393))

(assert (=> b!3112793 m!3405317))

(assert (=> b!3112794 m!3405273))

(assert (=> b!3112539 d!861920))

(declare-fun d!861922 () Bool)

(assert (=> d!861922 (= (isEmptyLang!648 lt!1057710) ((_ is EmptyLang!9597) lt!1057710))))

(assert (=> b!3112528 d!861922))

(declare-fun b!3113050 () Bool)

(assert (=> b!3113050 true))

(assert (=> b!3113050 true))

(declare-fun bs!535807 () Bool)

(declare-fun b!3113054 () Bool)

(assert (= bs!535807 (and b!3113054 b!3113050)))

(declare-fun lambda!115084 () Int)

(declare-fun lambda!115083 () Int)

(assert (=> bs!535807 (not (= lambda!115084 lambda!115083))))

(assert (=> b!3113054 true))

(assert (=> b!3113054 true))

(declare-fun call!220590 () Bool)

(declare-fun bm!220585 () Bool)

(declare-fun c!521194 () Bool)

(declare-fun Exists!1855 (Int) Bool)

(assert (=> bm!220585 (= call!220590 (Exists!1855 (ite c!521194 lambda!115083 lambda!115084)))))

(declare-fun b!3113049 () Bool)

(declare-fun e!1944493 () Bool)

(assert (=> b!3113049 (= e!1944493 (= s!11993 (Cons!35338 (c!521069 r!17423) Nil!35338)))))

(declare-fun e!1944494 () Bool)

(assert (=> b!3113050 (= e!1944494 call!220590)))

(declare-fun b!3113051 () Bool)

(declare-fun res!1274444 () Bool)

(assert (=> b!3113051 (=> res!1274444 e!1944494)))

(declare-fun call!220591 () Bool)

(assert (=> b!3113051 (= res!1274444 call!220591)))

(declare-fun e!1944495 () Bool)

(assert (=> b!3113051 (= e!1944495 e!1944494)))

(declare-fun b!3113052 () Bool)

(declare-fun e!1944497 () Bool)

(declare-fun e!1944496 () Bool)

(assert (=> b!3113052 (= e!1944497 e!1944496)))

(declare-fun res!1274445 () Bool)

(assert (=> b!3113052 (= res!1274445 (matchRSpec!1734 (regOne!19707 r!17423) s!11993))))

(assert (=> b!3113052 (=> res!1274445 e!1944496)))

(declare-fun b!3113053 () Bool)

(declare-fun c!521196 () Bool)

(assert (=> b!3113053 (= c!521196 ((_ is ElementMatch!9597) r!17423))))

(declare-fun e!1944492 () Bool)

(assert (=> b!3113053 (= e!1944492 e!1944493)))

(declare-fun d!861924 () Bool)

(declare-fun c!521195 () Bool)

(assert (=> d!861924 (= c!521195 ((_ is EmptyExpr!9597) r!17423))))

(declare-fun e!1944498 () Bool)

(assert (=> d!861924 (= (matchRSpec!1734 r!17423 s!11993) e!1944498)))

(assert (=> b!3113054 (= e!1944495 call!220590)))

(declare-fun b!3113055 () Bool)

(assert (=> b!3113055 (= e!1944498 call!220591)))

(declare-fun b!3113056 () Bool)

(assert (=> b!3113056 (= e!1944497 e!1944495)))

(assert (=> b!3113056 (= c!521194 ((_ is Star!9597) r!17423))))

(declare-fun b!3113057 () Bool)

(assert (=> b!3113057 (= e!1944498 e!1944492)))

(declare-fun res!1274443 () Bool)

(assert (=> b!3113057 (= res!1274443 (not ((_ is EmptyLang!9597) r!17423)))))

(assert (=> b!3113057 (=> (not res!1274443) (not e!1944492))))

(declare-fun bm!220586 () Bool)

(assert (=> bm!220586 (= call!220591 (isEmpty!19685 s!11993))))

(declare-fun b!3113058 () Bool)

(declare-fun c!521197 () Bool)

(assert (=> b!3113058 (= c!521197 ((_ is Union!9597) r!17423))))

(assert (=> b!3113058 (= e!1944493 e!1944497)))

(declare-fun b!3113059 () Bool)

(assert (=> b!3113059 (= e!1944496 (matchRSpec!1734 (regTwo!19707 r!17423) s!11993))))

(assert (= (and d!861924 c!521195) b!3113055))

(assert (= (and d!861924 (not c!521195)) b!3113057))

(assert (= (and b!3113057 res!1274443) b!3113053))

(assert (= (and b!3113053 c!521196) b!3113049))

(assert (= (and b!3113053 (not c!521196)) b!3113058))

(assert (= (and b!3113058 c!521197) b!3113052))

(assert (= (and b!3113058 (not c!521197)) b!3113056))

(assert (= (and b!3113052 (not res!1274445)) b!3113059))

(assert (= (and b!3113056 c!521194) b!3113051))

(assert (= (and b!3113056 (not c!521194)) b!3113054))

(assert (= (and b!3113051 (not res!1274444)) b!3113050))

(assert (= (or b!3113050 b!3113054) bm!220585))

(assert (= (or b!3113055 b!3113051) bm!220586))

(declare-fun m!3405477 () Bool)

(assert (=> bm!220585 m!3405477))

(declare-fun m!3405479 () Bool)

(assert (=> b!3113052 m!3405479))

(assert (=> bm!220586 m!3405313))

(declare-fun m!3405481 () Bool)

(assert (=> b!3113059 m!3405481))

(assert (=> b!3112534 d!861924))

(declare-fun b!3113064 () Bool)

(declare-fun e!1944499 () Bool)

(declare-fun e!1944504 () Bool)

(assert (=> b!3113064 (= e!1944499 e!1944504)))

(declare-fun res!1274448 () Bool)

(assert (=> b!3113064 (=> (not res!1274448) (not e!1944504))))

(declare-fun lt!1057767 () Bool)

(assert (=> b!3113064 (= res!1274448 (not lt!1057767))))

(declare-fun bm!220587 () Bool)

(declare-fun call!220592 () Bool)

(assert (=> bm!220587 (= call!220592 (isEmpty!19685 s!11993))))

(declare-fun b!3113065 () Bool)

(declare-fun res!1274446 () Bool)

(declare-fun e!1944502 () Bool)

(assert (=> b!3113065 (=> (not res!1274446) (not e!1944502))))

(assert (=> b!3113065 (= res!1274446 (isEmpty!19685 (tail!5119 s!11993)))))

(declare-fun b!3113067 () Bool)

(declare-fun res!1274450 () Bool)

(assert (=> b!3113067 (=> res!1274450 e!1944499)))

(assert (=> b!3113067 (= res!1274450 (not ((_ is ElementMatch!9597) r!17423)))))

(declare-fun e!1944500 () Bool)

(assert (=> b!3113067 (= e!1944500 e!1944499)))

(declare-fun b!3113068 () Bool)

(declare-fun e!1944505 () Bool)

(assert (=> b!3113068 (= e!1944505 (not (= (head!6893 s!11993) (c!521069 r!17423))))))

(declare-fun b!3113069 () Bool)

(declare-fun res!1274447 () Bool)

(assert (=> b!3113069 (=> res!1274447 e!1944505)))

(assert (=> b!3113069 (= res!1274447 (not (isEmpty!19685 (tail!5119 s!11993))))))

(declare-fun b!3113070 () Bool)

(declare-fun e!1944503 () Bool)

(assert (=> b!3113070 (= e!1944503 (matchR!4479 (derivativeStep!2834 r!17423 (head!6893 s!11993)) (tail!5119 s!11993)))))

(declare-fun b!3113071 () Bool)

(declare-fun res!1274451 () Bool)

(assert (=> b!3113071 (=> (not res!1274451) (not e!1944502))))

(assert (=> b!3113071 (= res!1274451 (not call!220592))))

(declare-fun b!3113072 () Bool)

(assert (=> b!3113072 (= e!1944503 (nullable!3239 r!17423))))

(declare-fun b!3113073 () Bool)

(assert (=> b!3113073 (= e!1944502 (= (head!6893 s!11993) (c!521069 r!17423)))))

(declare-fun b!3113074 () Bool)

(assert (=> b!3113074 (= e!1944504 e!1944505)))

(declare-fun res!1274449 () Bool)

(assert (=> b!3113074 (=> res!1274449 e!1944505)))

(assert (=> b!3113074 (= res!1274449 call!220592)))

(declare-fun b!3113075 () Bool)

(declare-fun res!1274453 () Bool)

(assert (=> b!3113075 (=> res!1274453 e!1944499)))

(assert (=> b!3113075 (= res!1274453 e!1944502)))

(declare-fun res!1274452 () Bool)

(assert (=> b!3113075 (=> (not res!1274452) (not e!1944502))))

(assert (=> b!3113075 (= res!1274452 lt!1057767)))

(declare-fun b!3113066 () Bool)

(assert (=> b!3113066 (= e!1944500 (not lt!1057767))))

(declare-fun d!861946 () Bool)

(declare-fun e!1944501 () Bool)

(assert (=> d!861946 e!1944501))

(declare-fun c!521199 () Bool)

(assert (=> d!861946 (= c!521199 ((_ is EmptyExpr!9597) r!17423))))

(assert (=> d!861946 (= lt!1057767 e!1944503)))

(declare-fun c!521200 () Bool)

(assert (=> d!861946 (= c!521200 (isEmpty!19685 s!11993))))

(assert (=> d!861946 (validRegex!4330 r!17423)))

(assert (=> d!861946 (= (matchR!4479 r!17423 s!11993) lt!1057767)))

(declare-fun b!3113076 () Bool)

(assert (=> b!3113076 (= e!1944501 e!1944500)))

(declare-fun c!521198 () Bool)

(assert (=> b!3113076 (= c!521198 ((_ is EmptyLang!9597) r!17423))))

(declare-fun b!3113077 () Bool)

(assert (=> b!3113077 (= e!1944501 (= lt!1057767 call!220592))))

(assert (= (and d!861946 c!521200) b!3113072))

(assert (= (and d!861946 (not c!521200)) b!3113070))

(assert (= (and d!861946 c!521199) b!3113077))

(assert (= (and d!861946 (not c!521199)) b!3113076))

(assert (= (and b!3113076 c!521198) b!3113066))

(assert (= (and b!3113076 (not c!521198)) b!3113067))

(assert (= (and b!3113067 (not res!1274450)) b!3113075))

(assert (= (and b!3113075 res!1274452) b!3113071))

(assert (= (and b!3113071 res!1274451) b!3113065))

(assert (= (and b!3113065 res!1274446) b!3113073))

(assert (= (and b!3113075 (not res!1274453)) b!3113064))

(assert (= (and b!3113064 res!1274448) b!3113074))

(assert (= (and b!3113074 (not res!1274449)) b!3113069))

(assert (= (and b!3113069 (not res!1274447)) b!3113068))

(assert (= (or b!3113077 b!3113071 b!3113074) bm!220587))

(declare-fun m!3405483 () Bool)

(assert (=> b!3113072 m!3405483))

(assert (=> b!3113065 m!3405309))

(assert (=> b!3113065 m!3405309))

(assert (=> b!3113065 m!3405311))

(assert (=> bm!220587 m!3405313))

(assert (=> b!3113068 m!3405315))

(assert (=> b!3113069 m!3405309))

(assert (=> b!3113069 m!3405309))

(assert (=> b!3113069 m!3405311))

(assert (=> d!861946 m!3405313))

(assert (=> d!861946 m!3405289))

(assert (=> b!3113073 m!3405315))

(assert (=> b!3113070 m!3405315))

(assert (=> b!3113070 m!3405315))

(declare-fun m!3405485 () Bool)

(assert (=> b!3113070 m!3405485))

(assert (=> b!3113070 m!3405309))

(assert (=> b!3113070 m!3405485))

(assert (=> b!3113070 m!3405309))

(declare-fun m!3405487 () Bool)

(assert (=> b!3113070 m!3405487))

(assert (=> b!3112534 d!861946))

(declare-fun d!861948 () Bool)

(assert (=> d!861948 (= (matchR!4479 r!17423 s!11993) (matchRSpec!1734 r!17423 s!11993))))

(declare-fun lt!1057770 () Unit!49633)

(declare-fun choose!18414 (Regex!9597 List!35462) Unit!49633)

(assert (=> d!861948 (= lt!1057770 (choose!18414 r!17423 s!11993))))

(assert (=> d!861948 (validRegex!4330 r!17423)))

(assert (=> d!861948 (= (mainMatchTheorem!1734 r!17423 s!11993) lt!1057770)))

(declare-fun bs!535808 () Bool)

(assert (= bs!535808 d!861948))

(assert (=> bs!535808 m!3405293))

(assert (=> bs!535808 m!3405291))

(declare-fun m!3405489 () Bool)

(assert (=> bs!535808 m!3405489))

(assert (=> bs!535808 m!3405289))

(assert (=> b!3112534 d!861948))

(declare-fun b!3113078 () Bool)

(declare-fun e!1944510 () Bool)

(declare-fun e!1944506 () Bool)

(assert (=> b!3113078 (= e!1944510 e!1944506)))

(declare-fun c!521202 () Bool)

(assert (=> b!3113078 (= c!521202 ((_ is Union!9597) (regOne!19707 r!17423)))))

(declare-fun b!3113079 () Bool)

(declare-fun e!1944512 () Bool)

(declare-fun call!220594 () Bool)

(assert (=> b!3113079 (= e!1944512 call!220594)))

(declare-fun b!3113080 () Bool)

(declare-fun e!1944509 () Bool)

(declare-fun call!220593 () Bool)

(assert (=> b!3113080 (= e!1944509 call!220593)))

(declare-fun b!3113081 () Bool)

(declare-fun e!1944508 () Bool)

(declare-fun call!220595 () Bool)

(assert (=> b!3113081 (= e!1944508 call!220595)))

(declare-fun bm!220588 () Bool)

(assert (=> bm!220588 (= call!220594 call!220595)))

(declare-fun c!521201 () Bool)

(declare-fun bm!220589 () Bool)

(assert (=> bm!220589 (= call!220595 (validRegex!4330 (ite c!521201 (reg!9926 (regOne!19707 r!17423)) (ite c!521202 (regOne!19707 (regOne!19707 r!17423)) (regTwo!19706 (regOne!19707 r!17423))))))))

(declare-fun b!3113082 () Bool)

(declare-fun e!1944511 () Bool)

(assert (=> b!3113082 (= e!1944511 e!1944510)))

(assert (=> b!3113082 (= c!521201 ((_ is Star!9597) (regOne!19707 r!17423)))))

(declare-fun b!3113083 () Bool)

(declare-fun res!1274457 () Bool)

(assert (=> b!3113083 (=> (not res!1274457) (not e!1944509))))

(assert (=> b!3113083 (= res!1274457 call!220594)))

(assert (=> b!3113083 (= e!1944506 e!1944509)))

(declare-fun b!3113084 () Bool)

(assert (=> b!3113084 (= e!1944510 e!1944508)))

(declare-fun res!1274458 () Bool)

(assert (=> b!3113084 (= res!1274458 (not (nullable!3239 (reg!9926 (regOne!19707 r!17423)))))))

(assert (=> b!3113084 (=> (not res!1274458) (not e!1944508))))

(declare-fun bm!220590 () Bool)

(assert (=> bm!220590 (= call!220593 (validRegex!4330 (ite c!521202 (regTwo!19707 (regOne!19707 r!17423)) (regOne!19706 (regOne!19707 r!17423)))))))

(declare-fun b!3113085 () Bool)

(declare-fun e!1944507 () Bool)

(assert (=> b!3113085 (= e!1944507 e!1944512)))

(declare-fun res!1274455 () Bool)

(assert (=> b!3113085 (=> (not res!1274455) (not e!1944512))))

(assert (=> b!3113085 (= res!1274455 call!220593)))

(declare-fun d!861950 () Bool)

(declare-fun res!1274454 () Bool)

(assert (=> d!861950 (=> res!1274454 e!1944511)))

(assert (=> d!861950 (= res!1274454 ((_ is ElementMatch!9597) (regOne!19707 r!17423)))))

(assert (=> d!861950 (= (validRegex!4330 (regOne!19707 r!17423)) e!1944511)))

(declare-fun b!3113086 () Bool)

(declare-fun res!1274456 () Bool)

(assert (=> b!3113086 (=> res!1274456 e!1944507)))

(assert (=> b!3113086 (= res!1274456 (not ((_ is Concat!14918) (regOne!19707 r!17423))))))

(assert (=> b!3113086 (= e!1944506 e!1944507)))

(assert (= (and d!861950 (not res!1274454)) b!3113082))

(assert (= (and b!3113082 c!521201) b!3113084))

(assert (= (and b!3113082 (not c!521201)) b!3113078))

(assert (= (and b!3113084 res!1274458) b!3113081))

(assert (= (and b!3113078 c!521202) b!3113083))

(assert (= (and b!3113078 (not c!521202)) b!3113086))

(assert (= (and b!3113083 res!1274457) b!3113080))

(assert (= (and b!3113086 (not res!1274456)) b!3113085))

(assert (= (and b!3113085 res!1274455) b!3113079))

(assert (= (or b!3113083 b!3113079) bm!220588))

(assert (= (or b!3113080 b!3113085) bm!220590))

(assert (= (or b!3113081 bm!220588) bm!220589))

(declare-fun m!3405491 () Bool)

(assert (=> bm!220589 m!3405491))

(declare-fun m!3405493 () Bool)

(assert (=> b!3113084 m!3405493))

(declare-fun m!3405495 () Bool)

(assert (=> bm!220590 m!3405495))

(assert (=> b!3112527 d!861950))

(declare-fun d!861952 () Bool)

(assert (=> d!861952 (= (isEmptyLang!648 lt!1057705) ((_ is EmptyLang!9597) lt!1057705))))

(assert (=> b!3112532 d!861952))

(declare-fun b!3113137 () Bool)

(declare-fun e!1944548 () Regex!9597)

(assert (=> b!3113137 (= e!1944548 EmptyLang!9597)))

(declare-fun d!861954 () Bool)

(declare-fun e!1944553 () Bool)

(assert (=> d!861954 e!1944553))

(declare-fun res!1274466 () Bool)

(assert (=> d!861954 (=> (not res!1274466) (not e!1944553))))

(declare-fun lt!1057788 () Regex!9597)

(assert (=> d!861954 (= res!1274466 (validRegex!4330 lt!1057788))))

(declare-fun e!1944551 () Regex!9597)

(assert (=> d!861954 (= lt!1057788 e!1944551)))

(declare-fun c!521235 () Bool)

(assert (=> d!861954 (= c!521235 ((_ is EmptyLang!9597) (regTwo!19707 r!17423)))))

(assert (=> d!861954 (validRegex!4330 (regTwo!19707 r!17423))))

(assert (=> d!861954 (= (simplify!552 (regTwo!19707 r!17423)) lt!1057788)))

(declare-fun b!3113138 () Bool)

(declare-fun e!1944546 () Regex!9597)

(declare-fun lt!1057785 () Regex!9597)

(assert (=> b!3113138 (= e!1944546 lt!1057785)))

(declare-fun bm!220605 () Bool)

(declare-fun lt!1057784 () Regex!9597)

(declare-fun call!220612 () Bool)

(declare-fun lt!1057783 () Regex!9597)

(declare-fun c!521228 () Bool)

(declare-fun c!521233 () Bool)

(assert (=> bm!220605 (= call!220612 (isEmptyLang!648 (ite c!521233 lt!1057783 (ite c!521228 lt!1057784 lt!1057785))))))

(declare-fun call!220610 () Regex!9597)

(declare-fun bm!220606 () Bool)

(assert (=> bm!220606 (= call!220610 (simplify!552 (ite c!521233 (reg!9926 (regTwo!19707 r!17423)) (ite c!521228 (regOne!19707 (regTwo!19707 r!17423)) (regTwo!19706 (regTwo!19707 r!17423))))))))

(declare-fun bm!220607 () Bool)

(declare-fun call!220611 () Regex!9597)

(assert (=> bm!220607 (= call!220611 (simplify!552 (ite c!521228 (regTwo!19707 (regTwo!19707 r!17423)) (regOne!19706 (regTwo!19707 r!17423)))))))

(declare-fun b!3113139 () Bool)

(assert (=> b!3113139 (= e!1944551 EmptyLang!9597)))

(declare-fun lt!1057786 () Regex!9597)

(declare-fun bm!220608 () Bool)

(declare-fun lt!1057787 () Regex!9597)

(declare-fun call!220614 () Bool)

(assert (=> bm!220608 (= call!220614 (isEmptyLang!648 (ite c!521228 lt!1057786 lt!1057787)))))

(declare-fun b!3113140 () Bool)

(declare-fun e!1944541 () Regex!9597)

(assert (=> b!3113140 (= e!1944541 lt!1057786)))

(declare-fun bm!220609 () Bool)

(declare-fun call!220616 () Bool)

(assert (=> bm!220609 (= call!220616 call!220612)))

(declare-fun b!3113141 () Bool)

(declare-fun e!1944550 () Regex!9597)

(assert (=> b!3113141 (= e!1944550 lt!1057787)))

(declare-fun b!3113142 () Bool)

(declare-fun e!1944547 () Regex!9597)

(assert (=> b!3113142 (= e!1944547 (Union!9597 lt!1057784 lt!1057786))))

(declare-fun bm!220610 () Bool)

(declare-fun call!220613 () Regex!9597)

(assert (=> bm!220610 (= call!220613 call!220610)))

(declare-fun b!3113143 () Bool)

(declare-fun e!1944543 () Regex!9597)

(assert (=> b!3113143 (= e!1944543 (regTwo!19707 r!17423))))

(declare-fun b!3113144 () Bool)

(declare-fun e!1944552 () Regex!9597)

(declare-fun e!1944542 () Regex!9597)

(assert (=> b!3113144 (= e!1944552 e!1944542)))

(assert (=> b!3113144 (= c!521233 ((_ is Star!9597) (regTwo!19707 r!17423)))))

(declare-fun b!3113145 () Bool)

(declare-fun c!521226 () Bool)

(assert (=> b!3113145 (= c!521226 ((_ is EmptyExpr!9597) (regTwo!19707 r!17423)))))

(assert (=> b!3113145 (= e!1944543 e!1944552)))

(declare-fun b!3113146 () Bool)

(assert (=> b!3113146 (= c!521228 ((_ is Union!9597) (regTwo!19707 r!17423)))))

(declare-fun e!1944549 () Regex!9597)

(assert (=> b!3113146 (= e!1944542 e!1944549)))

(declare-fun b!3113147 () Bool)

(declare-fun c!521230 () Bool)

(declare-fun call!220615 () Bool)

(assert (=> b!3113147 (= c!521230 call!220615)))

(assert (=> b!3113147 (= e!1944548 e!1944550)))

(declare-fun b!3113148 () Bool)

(assert (=> b!3113148 (= e!1944549 e!1944548)))

(assert (=> b!3113148 (= lt!1057785 call!220611)))

(assert (=> b!3113148 (= lt!1057787 call!220613)))

(declare-fun res!1274467 () Bool)

(assert (=> b!3113148 (= res!1274467 call!220616)))

(declare-fun e!1944544 () Bool)

(assert (=> b!3113148 (=> res!1274467 e!1944544)))

(declare-fun c!521229 () Bool)

(assert (=> b!3113148 (= c!521229 e!1944544)))

(declare-fun b!3113149 () Bool)

(assert (=> b!3113149 (= e!1944552 EmptyExpr!9597)))

(declare-fun b!3113150 () Bool)

(assert (=> b!3113150 (= e!1944553 (= (nullable!3239 lt!1057788) (nullable!3239 (regTwo!19707 r!17423))))))

(declare-fun b!3113151 () Bool)

(declare-fun c!521231 () Bool)

(assert (=> b!3113151 (= c!521231 call!220614)))

(assert (=> b!3113151 (= e!1944541 e!1944547)))

(declare-fun b!3113152 () Bool)

(declare-fun c!521227 () Bool)

(declare-fun e!1944554 () Bool)

(assert (=> b!3113152 (= c!521227 e!1944554)))

(declare-fun res!1274465 () Bool)

(assert (=> b!3113152 (=> res!1274465 e!1944554)))

(assert (=> b!3113152 (= res!1274465 call!220612)))

(assert (=> b!3113152 (= lt!1057783 call!220610)))

(declare-fun e!1944545 () Regex!9597)

(assert (=> b!3113152 (= e!1944542 e!1944545)))

(declare-fun b!3113153 () Bool)

(assert (=> b!3113153 (= e!1944544 call!220614)))

(declare-fun bm!220611 () Bool)

(declare-fun isEmptyExpr!650 (Regex!9597) Bool)

(assert (=> bm!220611 (= call!220615 (isEmptyExpr!650 (ite c!521233 lt!1057783 lt!1057785)))))

(declare-fun b!3113154 () Bool)

(assert (=> b!3113154 (= e!1944547 lt!1057784)))

(declare-fun b!3113155 () Bool)

(assert (=> b!3113155 (= e!1944550 e!1944546)))

(declare-fun c!521232 () Bool)

(assert (=> b!3113155 (= c!521232 (isEmptyExpr!650 lt!1057787))))

(declare-fun b!3113156 () Bool)

(assert (=> b!3113156 (= e!1944545 EmptyExpr!9597)))

(declare-fun b!3113157 () Bool)

(assert (=> b!3113157 (= e!1944546 (Concat!14918 lt!1057785 lt!1057787))))

(declare-fun b!3113158 () Bool)

(assert (=> b!3113158 (= e!1944554 call!220615)))

(declare-fun b!3113159 () Bool)

(assert (=> b!3113159 (= e!1944549 e!1944541)))

(assert (=> b!3113159 (= lt!1057784 call!220613)))

(assert (=> b!3113159 (= lt!1057786 call!220611)))

(declare-fun c!521225 () Bool)

(assert (=> b!3113159 (= c!521225 call!220616)))

(declare-fun b!3113160 () Bool)

(assert (=> b!3113160 (= e!1944545 (Star!9597 lt!1057783))))

(declare-fun b!3113161 () Bool)

(assert (=> b!3113161 (= e!1944551 e!1944543)))

(declare-fun c!521234 () Bool)

(assert (=> b!3113161 (= c!521234 ((_ is ElementMatch!9597) (regTwo!19707 r!17423)))))

(assert (= (and d!861954 c!521235) b!3113139))

(assert (= (and d!861954 (not c!521235)) b!3113161))

(assert (= (and b!3113161 c!521234) b!3113143))

(assert (= (and b!3113161 (not c!521234)) b!3113145))

(assert (= (and b!3113145 c!521226) b!3113149))

(assert (= (and b!3113145 (not c!521226)) b!3113144))

(assert (= (and b!3113144 c!521233) b!3113152))

(assert (= (and b!3113144 (not c!521233)) b!3113146))

(assert (= (and b!3113152 (not res!1274465)) b!3113158))

(assert (= (and b!3113152 c!521227) b!3113156))

(assert (= (and b!3113152 (not c!521227)) b!3113160))

(assert (= (and b!3113146 c!521228) b!3113159))

(assert (= (and b!3113146 (not c!521228)) b!3113148))

(assert (= (and b!3113159 c!521225) b!3113140))

(assert (= (and b!3113159 (not c!521225)) b!3113151))

(assert (= (and b!3113151 c!521231) b!3113154))

(assert (= (and b!3113151 (not c!521231)) b!3113142))

(assert (= (and b!3113148 (not res!1274467)) b!3113153))

(assert (= (and b!3113148 c!521229) b!3113137))

(assert (= (and b!3113148 (not c!521229)) b!3113147))

(assert (= (and b!3113147 c!521230) b!3113141))

(assert (= (and b!3113147 (not c!521230)) b!3113155))

(assert (= (and b!3113155 c!521232) b!3113138))

(assert (= (and b!3113155 (not c!521232)) b!3113157))

(assert (= (or b!3113159 b!3113148) bm!220610))

(assert (= (or b!3113159 b!3113148) bm!220607))

(assert (= (or b!3113151 b!3113153) bm!220608))

(assert (= (or b!3113159 b!3113148) bm!220609))

(assert (= (or b!3113158 b!3113147) bm!220611))

(assert (= (or b!3113152 bm!220610) bm!220606))

(assert (= (or b!3113152 bm!220609) bm!220605))

(assert (= (and d!861954 res!1274466) b!3113150))

(declare-fun m!3405497 () Bool)

(assert (=> b!3113150 m!3405497))

(declare-fun m!3405499 () Bool)

(assert (=> b!3113150 m!3405499))

(declare-fun m!3405501 () Bool)

(assert (=> bm!220608 m!3405501))

(declare-fun m!3405503 () Bool)

(assert (=> b!3113155 m!3405503))

(declare-fun m!3405505 () Bool)

(assert (=> bm!220611 m!3405505))

(declare-fun m!3405507 () Bool)

(assert (=> bm!220605 m!3405507))

(declare-fun m!3405509 () Bool)

(assert (=> d!861954 m!3405509))

(assert (=> d!861954 m!3405279))

(declare-fun m!3405511 () Bool)

(assert (=> bm!220607 m!3405511))

(declare-fun m!3405513 () Bool)

(assert (=> bm!220606 m!3405513))

(assert (=> b!3112532 d!861954))

(declare-fun b!3113162 () Bool)

(declare-fun e!1944562 () Regex!9597)

(assert (=> b!3113162 (= e!1944562 EmptyLang!9597)))

(declare-fun d!861956 () Bool)

(declare-fun e!1944567 () Bool)

(assert (=> d!861956 e!1944567))

(declare-fun res!1274469 () Bool)

(assert (=> d!861956 (=> (not res!1274469) (not e!1944567))))

(declare-fun lt!1057794 () Regex!9597)

(assert (=> d!861956 (= res!1274469 (validRegex!4330 lt!1057794))))

(declare-fun e!1944565 () Regex!9597)

(assert (=> d!861956 (= lt!1057794 e!1944565)))

(declare-fun c!521246 () Bool)

(assert (=> d!861956 (= c!521246 ((_ is EmptyLang!9597) (regOne!19707 r!17423)))))

(assert (=> d!861956 (validRegex!4330 (regOne!19707 r!17423))))

(assert (=> d!861956 (= (simplify!552 (regOne!19707 r!17423)) lt!1057794)))

(declare-fun b!3113163 () Bool)

(declare-fun e!1944560 () Regex!9597)

(declare-fun lt!1057791 () Regex!9597)

(assert (=> b!3113163 (= e!1944560 lt!1057791)))

(declare-fun c!521244 () Bool)

(declare-fun call!220619 () Bool)

(declare-fun lt!1057790 () Regex!9597)

(declare-fun bm!220612 () Bool)

(declare-fun lt!1057789 () Regex!9597)

(declare-fun c!521239 () Bool)

(assert (=> bm!220612 (= call!220619 (isEmptyLang!648 (ite c!521244 lt!1057789 (ite c!521239 lt!1057790 lt!1057791))))))

(declare-fun call!220617 () Regex!9597)

(declare-fun bm!220613 () Bool)

(assert (=> bm!220613 (= call!220617 (simplify!552 (ite c!521244 (reg!9926 (regOne!19707 r!17423)) (ite c!521239 (regOne!19707 (regOne!19707 r!17423)) (regTwo!19706 (regOne!19707 r!17423))))))))

(declare-fun bm!220614 () Bool)

(declare-fun call!220618 () Regex!9597)

(assert (=> bm!220614 (= call!220618 (simplify!552 (ite c!521239 (regTwo!19707 (regOne!19707 r!17423)) (regOne!19706 (regOne!19707 r!17423)))))))

(declare-fun b!3113164 () Bool)

(assert (=> b!3113164 (= e!1944565 EmptyLang!9597)))

(declare-fun lt!1057793 () Regex!9597)

(declare-fun call!220621 () Bool)

(declare-fun lt!1057792 () Regex!9597)

(declare-fun bm!220615 () Bool)

(assert (=> bm!220615 (= call!220621 (isEmptyLang!648 (ite c!521239 lt!1057792 lt!1057793)))))

(declare-fun b!3113165 () Bool)

(declare-fun e!1944555 () Regex!9597)

(assert (=> b!3113165 (= e!1944555 lt!1057792)))

(declare-fun bm!220616 () Bool)

(declare-fun call!220623 () Bool)

(assert (=> bm!220616 (= call!220623 call!220619)))

(declare-fun b!3113166 () Bool)

(declare-fun e!1944564 () Regex!9597)

(assert (=> b!3113166 (= e!1944564 lt!1057793)))

(declare-fun b!3113167 () Bool)

(declare-fun e!1944561 () Regex!9597)

(assert (=> b!3113167 (= e!1944561 (Union!9597 lt!1057790 lt!1057792))))

(declare-fun bm!220617 () Bool)

(declare-fun call!220620 () Regex!9597)

(assert (=> bm!220617 (= call!220620 call!220617)))

(declare-fun b!3113168 () Bool)

(declare-fun e!1944557 () Regex!9597)

(assert (=> b!3113168 (= e!1944557 (regOne!19707 r!17423))))

(declare-fun b!3113169 () Bool)

(declare-fun e!1944566 () Regex!9597)

(declare-fun e!1944556 () Regex!9597)

(assert (=> b!3113169 (= e!1944566 e!1944556)))

(assert (=> b!3113169 (= c!521244 ((_ is Star!9597) (regOne!19707 r!17423)))))

(declare-fun b!3113170 () Bool)

(declare-fun c!521237 () Bool)

(assert (=> b!3113170 (= c!521237 ((_ is EmptyExpr!9597) (regOne!19707 r!17423)))))

(assert (=> b!3113170 (= e!1944557 e!1944566)))

(declare-fun b!3113171 () Bool)

(assert (=> b!3113171 (= c!521239 ((_ is Union!9597) (regOne!19707 r!17423)))))

(declare-fun e!1944563 () Regex!9597)

(assert (=> b!3113171 (= e!1944556 e!1944563)))

(declare-fun b!3113172 () Bool)

(declare-fun c!521241 () Bool)

(declare-fun call!220622 () Bool)

(assert (=> b!3113172 (= c!521241 call!220622)))

(assert (=> b!3113172 (= e!1944562 e!1944564)))

(declare-fun b!3113173 () Bool)

(assert (=> b!3113173 (= e!1944563 e!1944562)))

(assert (=> b!3113173 (= lt!1057791 call!220618)))

(assert (=> b!3113173 (= lt!1057793 call!220620)))

(declare-fun res!1274470 () Bool)

(assert (=> b!3113173 (= res!1274470 call!220623)))

(declare-fun e!1944558 () Bool)

(assert (=> b!3113173 (=> res!1274470 e!1944558)))

(declare-fun c!521240 () Bool)

(assert (=> b!3113173 (= c!521240 e!1944558)))

(declare-fun b!3113174 () Bool)

(assert (=> b!3113174 (= e!1944566 EmptyExpr!9597)))

(declare-fun b!3113175 () Bool)

(assert (=> b!3113175 (= e!1944567 (= (nullable!3239 lt!1057794) (nullable!3239 (regOne!19707 r!17423))))))

(declare-fun b!3113176 () Bool)

(declare-fun c!521242 () Bool)

(assert (=> b!3113176 (= c!521242 call!220621)))

(assert (=> b!3113176 (= e!1944555 e!1944561)))

(declare-fun b!3113177 () Bool)

(declare-fun c!521238 () Bool)

(declare-fun e!1944568 () Bool)

(assert (=> b!3113177 (= c!521238 e!1944568)))

(declare-fun res!1274468 () Bool)

(assert (=> b!3113177 (=> res!1274468 e!1944568)))

(assert (=> b!3113177 (= res!1274468 call!220619)))

(assert (=> b!3113177 (= lt!1057789 call!220617)))

(declare-fun e!1944559 () Regex!9597)

(assert (=> b!3113177 (= e!1944556 e!1944559)))

(declare-fun b!3113178 () Bool)

(assert (=> b!3113178 (= e!1944558 call!220621)))

(declare-fun bm!220618 () Bool)

(assert (=> bm!220618 (= call!220622 (isEmptyExpr!650 (ite c!521244 lt!1057789 lt!1057791)))))

(declare-fun b!3113179 () Bool)

(assert (=> b!3113179 (= e!1944561 lt!1057790)))

(declare-fun b!3113180 () Bool)

(assert (=> b!3113180 (= e!1944564 e!1944560)))

(declare-fun c!521243 () Bool)

(assert (=> b!3113180 (= c!521243 (isEmptyExpr!650 lt!1057793))))

(declare-fun b!3113181 () Bool)

(assert (=> b!3113181 (= e!1944559 EmptyExpr!9597)))

(declare-fun b!3113182 () Bool)

(assert (=> b!3113182 (= e!1944560 (Concat!14918 lt!1057791 lt!1057793))))

(declare-fun b!3113183 () Bool)

(assert (=> b!3113183 (= e!1944568 call!220622)))

(declare-fun b!3113184 () Bool)

(assert (=> b!3113184 (= e!1944563 e!1944555)))

(assert (=> b!3113184 (= lt!1057790 call!220620)))

(assert (=> b!3113184 (= lt!1057792 call!220618)))

(declare-fun c!521236 () Bool)

(assert (=> b!3113184 (= c!521236 call!220623)))

(declare-fun b!3113185 () Bool)

(assert (=> b!3113185 (= e!1944559 (Star!9597 lt!1057789))))

(declare-fun b!3113186 () Bool)

(assert (=> b!3113186 (= e!1944565 e!1944557)))

(declare-fun c!521245 () Bool)

(assert (=> b!3113186 (= c!521245 ((_ is ElementMatch!9597) (regOne!19707 r!17423)))))

(assert (= (and d!861956 c!521246) b!3113164))

(assert (= (and d!861956 (not c!521246)) b!3113186))

(assert (= (and b!3113186 c!521245) b!3113168))

(assert (= (and b!3113186 (not c!521245)) b!3113170))

(assert (= (and b!3113170 c!521237) b!3113174))

(assert (= (and b!3113170 (not c!521237)) b!3113169))

(assert (= (and b!3113169 c!521244) b!3113177))

(assert (= (and b!3113169 (not c!521244)) b!3113171))

(assert (= (and b!3113177 (not res!1274468)) b!3113183))

(assert (= (and b!3113177 c!521238) b!3113181))

(assert (= (and b!3113177 (not c!521238)) b!3113185))

(assert (= (and b!3113171 c!521239) b!3113184))

(assert (= (and b!3113171 (not c!521239)) b!3113173))

(assert (= (and b!3113184 c!521236) b!3113165))

(assert (= (and b!3113184 (not c!521236)) b!3113176))

(assert (= (and b!3113176 c!521242) b!3113179))

(assert (= (and b!3113176 (not c!521242)) b!3113167))

(assert (= (and b!3113173 (not res!1274470)) b!3113178))

(assert (= (and b!3113173 c!521240) b!3113162))

(assert (= (and b!3113173 (not c!521240)) b!3113172))

(assert (= (and b!3113172 c!521241) b!3113166))

(assert (= (and b!3113172 (not c!521241)) b!3113180))

(assert (= (and b!3113180 c!521243) b!3113163))

(assert (= (and b!3113180 (not c!521243)) b!3113182))

(assert (= (or b!3113184 b!3113173) bm!220617))

(assert (= (or b!3113184 b!3113173) bm!220614))

(assert (= (or b!3113176 b!3113178) bm!220615))

(assert (= (or b!3113184 b!3113173) bm!220616))

(assert (= (or b!3113183 b!3113172) bm!220618))

(assert (= (or b!3113177 bm!220617) bm!220613))

(assert (= (or b!3113177 bm!220616) bm!220612))

(assert (= (and d!861956 res!1274469) b!3113175))

(declare-fun m!3405515 () Bool)

(assert (=> b!3113175 m!3405515))

(declare-fun m!3405517 () Bool)

(assert (=> b!3113175 m!3405517))

(declare-fun m!3405519 () Bool)

(assert (=> bm!220615 m!3405519))

(declare-fun m!3405521 () Bool)

(assert (=> b!3113180 m!3405521))

(declare-fun m!3405523 () Bool)

(assert (=> bm!220618 m!3405523))

(declare-fun m!3405525 () Bool)

(assert (=> bm!220612 m!3405525))

(declare-fun m!3405527 () Bool)

(assert (=> d!861956 m!3405527))

(assert (=> d!861956 m!3405297))

(declare-fun m!3405529 () Bool)

(assert (=> bm!220614 m!3405529))

(declare-fun m!3405531 () Bool)

(assert (=> bm!220613 m!3405531))

(assert (=> b!3112532 d!861956))

(assert (=> b!3112533 d!861892))

(declare-fun b!3113187 () Bool)

(declare-fun e!1944569 () Bool)

(declare-fun e!1944574 () Bool)

(assert (=> b!3113187 (= e!1944569 e!1944574)))

(declare-fun res!1274473 () Bool)

(assert (=> b!3113187 (=> (not res!1274473) (not e!1944574))))

(declare-fun lt!1057795 () Bool)

(assert (=> b!3113187 (= res!1274473 (not lt!1057795))))

(declare-fun bm!220619 () Bool)

(declare-fun call!220624 () Bool)

(assert (=> bm!220619 (= call!220624 (isEmpty!19685 s!11993))))

(declare-fun b!3113188 () Bool)

(declare-fun res!1274471 () Bool)

(declare-fun e!1944572 () Bool)

(assert (=> b!3113188 (=> (not res!1274471) (not e!1944572))))

(assert (=> b!3113188 (= res!1274471 (isEmpty!19685 (tail!5119 s!11993)))))

(declare-fun b!3113190 () Bool)

(declare-fun res!1274475 () Bool)

(assert (=> b!3113190 (=> res!1274475 e!1944569)))

(assert (=> b!3113190 (= res!1274475 (not ((_ is ElementMatch!9597) (regTwo!19707 r!17423))))))

(declare-fun e!1944570 () Bool)

(assert (=> b!3113190 (= e!1944570 e!1944569)))

(declare-fun b!3113191 () Bool)

(declare-fun e!1944575 () Bool)

(assert (=> b!3113191 (= e!1944575 (not (= (head!6893 s!11993) (c!521069 (regTwo!19707 r!17423)))))))

(declare-fun b!3113192 () Bool)

(declare-fun res!1274472 () Bool)

(assert (=> b!3113192 (=> res!1274472 e!1944575)))

(assert (=> b!3113192 (= res!1274472 (not (isEmpty!19685 (tail!5119 s!11993))))))

(declare-fun b!3113193 () Bool)

(declare-fun e!1944573 () Bool)

(assert (=> b!3113193 (= e!1944573 (matchR!4479 (derivativeStep!2834 (regTwo!19707 r!17423) (head!6893 s!11993)) (tail!5119 s!11993)))))

(declare-fun b!3113194 () Bool)

(declare-fun res!1274476 () Bool)

(assert (=> b!3113194 (=> (not res!1274476) (not e!1944572))))

(assert (=> b!3113194 (= res!1274476 (not call!220624))))

(declare-fun b!3113195 () Bool)

(assert (=> b!3113195 (= e!1944573 (nullable!3239 (regTwo!19707 r!17423)))))

(declare-fun b!3113196 () Bool)

(assert (=> b!3113196 (= e!1944572 (= (head!6893 s!11993) (c!521069 (regTwo!19707 r!17423))))))

(declare-fun b!3113197 () Bool)

(assert (=> b!3113197 (= e!1944574 e!1944575)))

(declare-fun res!1274474 () Bool)

(assert (=> b!3113197 (=> res!1274474 e!1944575)))

(assert (=> b!3113197 (= res!1274474 call!220624)))

(declare-fun b!3113198 () Bool)

(declare-fun res!1274478 () Bool)

(assert (=> b!3113198 (=> res!1274478 e!1944569)))

(assert (=> b!3113198 (= res!1274478 e!1944572)))

(declare-fun res!1274477 () Bool)

(assert (=> b!3113198 (=> (not res!1274477) (not e!1944572))))

(assert (=> b!3113198 (= res!1274477 lt!1057795)))

(declare-fun b!3113189 () Bool)

(assert (=> b!3113189 (= e!1944570 (not lt!1057795))))

(declare-fun d!861958 () Bool)

(declare-fun e!1944571 () Bool)

(assert (=> d!861958 e!1944571))

(declare-fun c!521248 () Bool)

(assert (=> d!861958 (= c!521248 ((_ is EmptyExpr!9597) (regTwo!19707 r!17423)))))

(assert (=> d!861958 (= lt!1057795 e!1944573)))

(declare-fun c!521249 () Bool)

(assert (=> d!861958 (= c!521249 (isEmpty!19685 s!11993))))

(assert (=> d!861958 (validRegex!4330 (regTwo!19707 r!17423))))

(assert (=> d!861958 (= (matchR!4479 (regTwo!19707 r!17423) s!11993) lt!1057795)))

(declare-fun b!3113199 () Bool)

(assert (=> b!3113199 (= e!1944571 e!1944570)))

(declare-fun c!521247 () Bool)

(assert (=> b!3113199 (= c!521247 ((_ is EmptyLang!9597) (regTwo!19707 r!17423)))))

(declare-fun b!3113200 () Bool)

(assert (=> b!3113200 (= e!1944571 (= lt!1057795 call!220624))))

(assert (= (and d!861958 c!521249) b!3113195))

(assert (= (and d!861958 (not c!521249)) b!3113193))

(assert (= (and d!861958 c!521248) b!3113200))

(assert (= (and d!861958 (not c!521248)) b!3113199))

(assert (= (and b!3113199 c!521247) b!3113189))

(assert (= (and b!3113199 (not c!521247)) b!3113190))

(assert (= (and b!3113190 (not res!1274475)) b!3113198))

(assert (= (and b!3113198 res!1274477) b!3113194))

(assert (= (and b!3113194 res!1274476) b!3113188))

(assert (= (and b!3113188 res!1274471) b!3113196))

(assert (= (and b!3113198 (not res!1274478)) b!3113187))

(assert (= (and b!3113187 res!1274473) b!3113197))

(assert (= (and b!3113197 (not res!1274474)) b!3113192))

(assert (= (and b!3113192 (not res!1274472)) b!3113191))

(assert (= (or b!3113200 b!3113194 b!3113197) bm!220619))

(assert (=> b!3113195 m!3405499))

(assert (=> b!3113188 m!3405309))

(assert (=> b!3113188 m!3405309))

(assert (=> b!3113188 m!3405311))

(assert (=> bm!220619 m!3405313))

(assert (=> b!3113191 m!3405315))

(assert (=> b!3113192 m!3405309))

(assert (=> b!3113192 m!3405309))

(assert (=> b!3113192 m!3405311))

(assert (=> d!861958 m!3405313))

(assert (=> d!861958 m!3405279))

(assert (=> b!3113196 m!3405315))

(assert (=> b!3113193 m!3405315))

(assert (=> b!3113193 m!3405315))

(declare-fun m!3405533 () Bool)

(assert (=> b!3113193 m!3405533))

(assert (=> b!3113193 m!3405309))

(assert (=> b!3113193 m!3405533))

(assert (=> b!3113193 m!3405309))

(declare-fun m!3405535 () Bool)

(assert (=> b!3113193 m!3405535))

(assert (=> b!3112533 d!861958))

(declare-fun d!861960 () Bool)

(assert (=> d!861960 (= (matchR!4479 (regTwo!19707 r!17423) s!11993) (matchR!4479 (simplify!552 (regTwo!19707 r!17423)) s!11993))))

(declare-fun lt!1057798 () Unit!49633)

(declare-fun choose!18416 (Regex!9597 List!35462) Unit!49633)

(assert (=> d!861960 (= lt!1057798 (choose!18416 (regTwo!19707 r!17423) s!11993))))

(assert (=> d!861960 (validRegex!4330 (regTwo!19707 r!17423))))

(assert (=> d!861960 (= (lemmaSimplifySound!346 (regTwo!19707 r!17423) s!11993) lt!1057798)))

(declare-fun bs!535809 () Bool)

(assert (= bs!535809 d!861960))

(assert (=> bs!535809 m!3405275))

(declare-fun m!3405537 () Bool)

(assert (=> bs!535809 m!3405537))

(assert (=> bs!535809 m!3405279))

(assert (=> bs!535809 m!3405267))

(assert (=> bs!535809 m!3405267))

(declare-fun m!3405539 () Bool)

(assert (=> bs!535809 m!3405539))

(assert (=> b!3112533 d!861960))

(declare-fun b!3113205 () Bool)

(declare-fun e!1944578 () Bool)

(declare-fun tp!976638 () Bool)

(assert (=> b!3113205 (= e!1944578 (and tp_is_empty!16757 tp!976638))))

(assert (=> b!3112536 (= tp!976596 e!1944578)))

(assert (= (and b!3112536 ((_ is Cons!35338) (t!234527 s!11993))) b!3113205))

(declare-fun b!3113218 () Bool)

(declare-fun e!1944581 () Bool)

(declare-fun tp!976651 () Bool)

(assert (=> b!3113218 (= e!1944581 tp!976651)))

(declare-fun b!3113217 () Bool)

(declare-fun tp!976650 () Bool)

(declare-fun tp!976652 () Bool)

(assert (=> b!3113217 (= e!1944581 (and tp!976650 tp!976652))))

(assert (=> b!3112530 (= tp!976592 e!1944581)))

(declare-fun b!3113219 () Bool)

(declare-fun tp!976649 () Bool)

(declare-fun tp!976653 () Bool)

(assert (=> b!3113219 (= e!1944581 (and tp!976649 tp!976653))))

(declare-fun b!3113216 () Bool)

(assert (=> b!3113216 (= e!1944581 tp_is_empty!16757)))

(assert (= (and b!3112530 ((_ is ElementMatch!9597) (regOne!19706 r!17423))) b!3113216))

(assert (= (and b!3112530 ((_ is Concat!14918) (regOne!19706 r!17423))) b!3113217))

(assert (= (and b!3112530 ((_ is Star!9597) (regOne!19706 r!17423))) b!3113218))

(assert (= (and b!3112530 ((_ is Union!9597) (regOne!19706 r!17423))) b!3113219))

(declare-fun b!3113222 () Bool)

(declare-fun e!1944582 () Bool)

(declare-fun tp!976656 () Bool)

(assert (=> b!3113222 (= e!1944582 tp!976656)))

(declare-fun b!3113221 () Bool)

(declare-fun tp!976655 () Bool)

(declare-fun tp!976657 () Bool)

(assert (=> b!3113221 (= e!1944582 (and tp!976655 tp!976657))))

(assert (=> b!3112530 (= tp!976595 e!1944582)))

(declare-fun b!3113223 () Bool)

(declare-fun tp!976654 () Bool)

(declare-fun tp!976658 () Bool)

(assert (=> b!3113223 (= e!1944582 (and tp!976654 tp!976658))))

(declare-fun b!3113220 () Bool)

(assert (=> b!3113220 (= e!1944582 tp_is_empty!16757)))

(assert (= (and b!3112530 ((_ is ElementMatch!9597) (regTwo!19706 r!17423))) b!3113220))

(assert (= (and b!3112530 ((_ is Concat!14918) (regTwo!19706 r!17423))) b!3113221))

(assert (= (and b!3112530 ((_ is Star!9597) (regTwo!19706 r!17423))) b!3113222))

(assert (= (and b!3112530 ((_ is Union!9597) (regTwo!19706 r!17423))) b!3113223))

(declare-fun b!3113226 () Bool)

(declare-fun e!1944583 () Bool)

(declare-fun tp!976661 () Bool)

(assert (=> b!3113226 (= e!1944583 tp!976661)))

(declare-fun b!3113225 () Bool)

(declare-fun tp!976660 () Bool)

(declare-fun tp!976662 () Bool)

(assert (=> b!3113225 (= e!1944583 (and tp!976660 tp!976662))))

(assert (=> b!3112529 (= tp!976597 e!1944583)))

(declare-fun b!3113227 () Bool)

(declare-fun tp!976659 () Bool)

(declare-fun tp!976663 () Bool)

(assert (=> b!3113227 (= e!1944583 (and tp!976659 tp!976663))))

(declare-fun b!3113224 () Bool)

(assert (=> b!3113224 (= e!1944583 tp_is_empty!16757)))

(assert (= (and b!3112529 ((_ is ElementMatch!9597) (reg!9926 r!17423))) b!3113224))

(assert (= (and b!3112529 ((_ is Concat!14918) (reg!9926 r!17423))) b!3113225))

(assert (= (and b!3112529 ((_ is Star!9597) (reg!9926 r!17423))) b!3113226))

(assert (= (and b!3112529 ((_ is Union!9597) (reg!9926 r!17423))) b!3113227))

(declare-fun b!3113230 () Bool)

(declare-fun e!1944584 () Bool)

(declare-fun tp!976666 () Bool)

(assert (=> b!3113230 (= e!1944584 tp!976666)))

(declare-fun b!3113229 () Bool)

(declare-fun tp!976665 () Bool)

(declare-fun tp!976667 () Bool)

(assert (=> b!3113229 (= e!1944584 (and tp!976665 tp!976667))))

(assert (=> b!3112538 (= tp!976594 e!1944584)))

(declare-fun b!3113231 () Bool)

(declare-fun tp!976664 () Bool)

(declare-fun tp!976668 () Bool)

(assert (=> b!3113231 (= e!1944584 (and tp!976664 tp!976668))))

(declare-fun b!3113228 () Bool)

(assert (=> b!3113228 (= e!1944584 tp_is_empty!16757)))

(assert (= (and b!3112538 ((_ is ElementMatch!9597) (regOne!19707 r!17423))) b!3113228))

(assert (= (and b!3112538 ((_ is Concat!14918) (regOne!19707 r!17423))) b!3113229))

(assert (= (and b!3112538 ((_ is Star!9597) (regOne!19707 r!17423))) b!3113230))

(assert (= (and b!3112538 ((_ is Union!9597) (regOne!19707 r!17423))) b!3113231))

(declare-fun b!3113234 () Bool)

(declare-fun e!1944585 () Bool)

(declare-fun tp!976671 () Bool)

(assert (=> b!3113234 (= e!1944585 tp!976671)))

(declare-fun b!3113233 () Bool)

(declare-fun tp!976670 () Bool)

(declare-fun tp!976672 () Bool)

(assert (=> b!3113233 (= e!1944585 (and tp!976670 tp!976672))))

(assert (=> b!3112538 (= tp!976593 e!1944585)))

(declare-fun b!3113235 () Bool)

(declare-fun tp!976669 () Bool)

(declare-fun tp!976673 () Bool)

(assert (=> b!3113235 (= e!1944585 (and tp!976669 tp!976673))))

(declare-fun b!3113232 () Bool)

(assert (=> b!3113232 (= e!1944585 tp_is_empty!16757)))

(assert (= (and b!3112538 ((_ is ElementMatch!9597) (regTwo!19707 r!17423))) b!3113232))

(assert (= (and b!3112538 ((_ is Concat!14918) (regTwo!19707 r!17423))) b!3113233))

(assert (= (and b!3112538 ((_ is Star!9597) (regTwo!19707 r!17423))) b!3113234))

(assert (= (and b!3112538 ((_ is Union!9597) (regTwo!19707 r!17423))) b!3113235))

(check-sat (not b!3113084) (not b!3112771) (not bm!220606) (not b!3113219) (not b!3113196) (not b!3113231) (not bm!220540) (not b!3113205) (not b!3113180) (not d!861958) (not bm!220590) (not bm!220615) (not bm!220529) (not bm!220541) (not b!3113073) (not bm!220542) (not bm!220618) (not d!861920) (not b!3113068) (not d!861918) (not b!3112793) (not b!3113222) (not b!3112735) (not b!3113221) (not b!3113175) tp_is_empty!16757 (not bm!220585) (not d!861892) (not bm!220538) (not bm!220517) (not bm!220589) (not b!3112729) (not d!861946) (not bm!220587) (not b!3112628) (not b!3113235) (not b!3112632) (not b!3113195) (not b!3113192) (not bm!220613) (not b!3112794) (not bm!220608) (not b!3113188) (not b!3112686) (not b!3113072) (not b!3113227) (not b!3112769) (not b!3113069) (not b!3113234) (not b!3113193) (not bm!220619) (not b!3113070) (not b!3113229) (not b!3112734) (not b!3112764) (not b!3113223) (not d!861954) (not b!3113150) (not b!3113217) (not d!861914) (not b!3112690) (not bm!220605) (not b!3112687) (not b!3113225) (not bm!220586) (not b!3113226) (not b!3112685) (not bm!220612) (not b!3112677) (not b!3113218) (not bm!220614) (not b!3112624) (not b!3112768) (not bm!220530) (not bm!220611) (not b!3112739) (not b!3113059) (not d!861956) (not b!3112767) (not b!3113233) (not b!3112682) (not b!3112736) (not d!861908) (not b!3113065) (not bm!220528) (not b!3112731) (not b!3112631) (not b!3113191) (not b!3112689) (not bm!220607) (not b!3112750) (not b!3112629) (not b!3112627) (not b!3112738) (not b!3113155) (not d!861948) (not b!3113052) (not d!861900) (not d!861960) (not b!3113230) (not b!3112772))
(check-sat)
