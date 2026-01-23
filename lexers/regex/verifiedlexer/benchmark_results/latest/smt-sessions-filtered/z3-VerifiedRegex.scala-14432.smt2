; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751952 () Bool)

(assert start!751952)

(declare-fun b!7973435 () Bool)

(declare-fun e!4700993 () Bool)

(declare-fun tp_is_empty!53633 () Bool)

(assert (=> b!7973435 (= e!4700993 tp_is_empty!53633)))

(declare-fun b!7973436 () Bool)

(declare-fun e!4700997 () Bool)

(declare-fun e!4700998 () Bool)

(assert (=> b!7973436 (= e!4700997 e!4700998)))

(declare-fun res!3158729 () Bool)

(assert (=> b!7973436 (=> (not res!3158729) (not e!4700998))))

(declare-datatypes ((C!43428 0))(
  ( (C!43429 (val!32262 Int)) )
))
(declare-datatypes ((List!74774 0))(
  ( (Nil!74650) (Cons!74650 (h!81098 C!43428) (t!390517 List!74774)) )
))
(declare-datatypes ((tuple2!70748 0))(
  ( (tuple2!70749 (_1!38677 List!74774) (_2!38677 List!74774)) )
))
(declare-fun lt!2708851 () tuple2!70748)

(declare-fun isEmpty!42949 (List!74774) Bool)

(assert (=> b!7973436 (= res!3158729 (not (isEmpty!42949 (_1!38677 lt!2708851))))))

(declare-fun lt!2708854 () List!74774)

(declare-fun lt!2708853 () Int)

(declare-fun testedP!447 () List!74774)

(declare-fun lt!2708844 () Int)

(declare-datatypes ((Regex!21545 0))(
  ( (ElementMatch!21545 (c!1464218 C!43428)) (Concat!30544 (regOne!43602 Regex!21545) (regTwo!43602 Regex!21545)) (EmptyExpr!21545) (Star!21545 (reg!21874 Regex!21545)) (EmptyLang!21545) (Union!21545 (regOne!43603 Regex!21545) (regTwo!43603 Regex!21545)) )
))
(declare-fun r!24602 () Regex!21545)

(declare-fun input!7927 () List!74774)

(declare-fun findLongestMatchInner!2324 (Regex!21545 List!74774 Int List!74774 List!74774 Int) tuple2!70748)

(assert (=> b!7973436 (= lt!2708851 (findLongestMatchInner!2324 r!24602 testedP!447 lt!2708853 lt!2708854 input!7927 lt!2708844))))

(declare-fun size!43481 (List!74774) Int)

(assert (=> b!7973436 (= lt!2708844 (size!43481 input!7927))))

(declare-fun getSuffix!3846 (List!74774 List!74774) List!74774)

(assert (=> b!7973436 (= lt!2708854 (getSuffix!3846 input!7927 testedP!447))))

(assert (=> b!7973436 (= lt!2708853 (size!43481 testedP!447))))

(declare-fun b!7973437 () Bool)

(declare-fun tp!2377550 () Bool)

(declare-fun tp!2377554 () Bool)

(assert (=> b!7973437 (= e!4700993 (and tp!2377550 tp!2377554))))

(declare-fun b!7973439 () Bool)

(declare-fun res!3158728 () Bool)

(assert (=> b!7973439 (=> (not res!3158728) (not e!4700998))))

(assert (=> b!7973439 (= res!3158728 (not (= testedP!447 input!7927)))))

(declare-fun b!7973440 () Bool)

(declare-fun tp!2377553 () Bool)

(assert (=> b!7973440 (= e!4700993 tp!2377553)))

(declare-fun b!7973441 () Bool)

(declare-datatypes ((Unit!170354 0))(
  ( (Unit!170355) )
))
(declare-fun e!4700990 () Unit!170354)

(declare-fun Unit!170356 () Unit!170354)

(assert (=> b!7973441 (= e!4700990 Unit!170356)))

(declare-fun lt!2708846 () Unit!170354)

(declare-fun lemmaIsPrefixRefl!4111 (List!74774 List!74774) Unit!170354)

(assert (=> b!7973441 (= lt!2708846 (lemmaIsPrefixRefl!4111 input!7927 input!7927))))

(declare-fun isPrefix!6645 (List!74774 List!74774) Bool)

(assert (=> b!7973441 (isPrefix!6645 input!7927 input!7927)))

(declare-fun lt!2708845 () Unit!170354)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1689 (List!74774 List!74774 List!74774) Unit!170354)

(assert (=> b!7973441 (= lt!2708845 (lemmaIsPrefixSameLengthThenSameList!1689 input!7927 testedP!447 input!7927))))

(assert (=> b!7973441 false))

(declare-fun b!7973442 () Bool)

(declare-fun e!4700992 () Bool)

(declare-fun tp!2377548 () Bool)

(declare-fun tp!2377552 () Bool)

(assert (=> b!7973442 (= e!4700992 (and tp!2377548 tp!2377552))))

(declare-fun b!7973443 () Bool)

(declare-fun tp!2377556 () Bool)

(assert (=> b!7973443 (= e!4700992 tp!2377556)))

(declare-fun b!7973444 () Bool)

(declare-fun res!3158730 () Bool)

(declare-fun e!4700996 () Bool)

(assert (=> b!7973444 (=> (not res!3158730) (not e!4700996))))

(assert (=> b!7973444 (= res!3158730 (isPrefix!6645 testedP!447 input!7927))))

(declare-fun b!7973445 () Bool)

(assert (=> b!7973445 (= e!4700992 tp_is_empty!53633)))

(declare-fun b!7973446 () Bool)

(declare-fun e!4700999 () Bool)

(declare-fun e!4700995 () Bool)

(assert (=> b!7973446 (= e!4700999 e!4700995)))

(declare-fun res!3158732 () Bool)

(assert (=> b!7973446 (=> res!3158732 e!4700995)))

(declare-fun nullable!9638 (Regex!21545) Bool)

(assert (=> b!7973446 (= res!3158732 (not (nullable!9638 r!24602)))))

(declare-fun lt!2708843 () List!74774)

(assert (=> b!7973446 (isPrefix!6645 lt!2708843 input!7927)))

(declare-fun lt!2708855 () Unit!170354)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1364 (List!74774 List!74774) Unit!170354)

(assert (=> b!7973446 (= lt!2708855 (lemmaAddHeadSuffixToPrefixStillPrefix!1364 testedP!447 input!7927))))

(declare-fun lt!2708848 () C!43428)

(declare-fun ++!18407 (List!74774 List!74774) List!74774)

(assert (=> b!7973446 (= lt!2708843 (++!18407 testedP!447 (Cons!74650 lt!2708848 Nil!74650)))))

(declare-fun head!16291 (List!74774) C!43428)

(assert (=> b!7973446 (= lt!2708848 (head!16291 lt!2708854))))

(declare-fun b!7973447 () Bool)

(assert (=> b!7973447 (= e!4700996 e!4700997)))

(declare-fun res!3158731 () Bool)

(assert (=> b!7973447 (=> (not res!3158731) (not e!4700997))))

(declare-fun lt!2708852 () Regex!21545)

(assert (=> b!7973447 (= res!3158731 (= lt!2708852 r!24602))))

(declare-fun baseR!116 () Regex!21545)

(declare-fun derivative!731 (Regex!21545 List!74774) Regex!21545)

(assert (=> b!7973447 (= lt!2708852 (derivative!731 baseR!116 testedP!447))))

(declare-fun res!3158727 () Bool)

(assert (=> start!751952 (=> (not res!3158727) (not e!4700996))))

(declare-fun validRegex!11849 (Regex!21545) Bool)

(assert (=> start!751952 (= res!3158727 (validRegex!11849 baseR!116))))

(assert (=> start!751952 e!4700996))

(assert (=> start!751952 e!4700993))

(declare-fun e!4700994 () Bool)

(assert (=> start!751952 e!4700994))

(declare-fun e!4700991 () Bool)

(assert (=> start!751952 e!4700991))

(assert (=> start!751952 e!4700992))

(declare-fun b!7973438 () Bool)

(declare-fun matchR!10760 (Regex!21545 List!74774) Bool)

(assert (=> b!7973438 (= e!4700995 (matchR!10760 baseR!116 (_1!38677 lt!2708851)))))

(assert (=> b!7973438 (= (matchR!10760 baseR!116 testedP!447) (matchR!10760 lt!2708852 Nil!74650))))

(declare-fun lt!2708847 () Unit!170354)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!306 (Regex!21545 List!74774) Unit!170354)

(assert (=> b!7973438 (= lt!2708847 (lemmaMatchRIsSameAsWholeDerivativeAndNil!306 baseR!116 testedP!447))))

(declare-fun b!7973448 () Bool)

(declare-fun res!3158734 () Bool)

(assert (=> b!7973448 (=> res!3158734 e!4700995)))

(declare-fun derivativeStep!6565 (Regex!21545 C!43428) Regex!21545)

(declare-fun tail!15818 (List!74774) List!74774)

(assert (=> b!7973448 (= res!3158734 (not (isEmpty!42949 (_1!38677 (findLongestMatchInner!2324 (derivativeStep!6565 r!24602 lt!2708848) lt!2708843 (+ 1 lt!2708853) (tail!15818 lt!2708854) input!7927 lt!2708844)))))))

(declare-fun b!7973449 () Bool)

(declare-fun tp!2377547 () Bool)

(assert (=> b!7973449 (= e!4700994 (and tp_is_empty!53633 tp!2377547))))

(declare-fun b!7973450 () Bool)

(declare-fun tp!2377555 () Bool)

(assert (=> b!7973450 (= e!4700991 (and tp_is_empty!53633 tp!2377555))))

(declare-fun b!7973451 () Bool)

(declare-fun Unit!170357 () Unit!170354)

(assert (=> b!7973451 (= e!4700990 Unit!170357)))

(declare-fun b!7973452 () Bool)

(assert (=> b!7973452 (= e!4700998 (not e!4700999))))

(declare-fun res!3158733 () Bool)

(assert (=> b!7973452 (=> res!3158733 e!4700999)))

(assert (=> b!7973452 (= res!3158733 (>= lt!2708853 lt!2708844))))

(declare-fun lt!2708850 () Unit!170354)

(assert (=> b!7973452 (= lt!2708850 e!4700990)))

(declare-fun c!1464217 () Bool)

(assert (=> b!7973452 (= c!1464217 (= lt!2708853 lt!2708844))))

(assert (=> b!7973452 (<= lt!2708853 lt!2708844)))

(declare-fun lt!2708849 () Unit!170354)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1160 (List!74774 List!74774) Unit!170354)

(assert (=> b!7973452 (= lt!2708849 (lemmaIsPrefixThenSmallerEqSize!1160 testedP!447 input!7927))))

(declare-fun b!7973453 () Bool)

(declare-fun tp!2377549 () Bool)

(declare-fun tp!2377557 () Bool)

(assert (=> b!7973453 (= e!4700993 (and tp!2377549 tp!2377557))))

(declare-fun b!7973454 () Bool)

(declare-fun tp!2377551 () Bool)

(declare-fun tp!2377558 () Bool)

(assert (=> b!7973454 (= e!4700992 (and tp!2377551 tp!2377558))))

(assert (= (and start!751952 res!3158727) b!7973444))

(assert (= (and b!7973444 res!3158730) b!7973447))

(assert (= (and b!7973447 res!3158731) b!7973436))

(assert (= (and b!7973436 res!3158729) b!7973439))

(assert (= (and b!7973439 res!3158728) b!7973452))

(assert (= (and b!7973452 c!1464217) b!7973441))

(assert (= (and b!7973452 (not c!1464217)) b!7973451))

(assert (= (and b!7973452 (not res!3158733)) b!7973446))

(assert (= (and b!7973446 (not res!3158732)) b!7973448))

(assert (= (and b!7973448 (not res!3158734)) b!7973438))

(get-info :version)

(assert (= (and start!751952 ((_ is ElementMatch!21545) baseR!116)) b!7973435))

(assert (= (and start!751952 ((_ is Concat!30544) baseR!116)) b!7973453))

(assert (= (and start!751952 ((_ is Star!21545) baseR!116)) b!7973440))

(assert (= (and start!751952 ((_ is Union!21545) baseR!116)) b!7973437))

(assert (= (and start!751952 ((_ is Cons!74650) testedP!447)) b!7973449))

(assert (= (and start!751952 ((_ is Cons!74650) input!7927)) b!7973450))

(assert (= (and start!751952 ((_ is ElementMatch!21545) r!24602)) b!7973445))

(assert (= (and start!751952 ((_ is Concat!30544) r!24602)) b!7973454))

(assert (= (and start!751952 ((_ is Star!21545) r!24602)) b!7973443))

(assert (= (and start!751952 ((_ is Union!21545) r!24602)) b!7973442))

(declare-fun m!8350428 () Bool)

(assert (=> b!7973441 m!8350428))

(declare-fun m!8350430 () Bool)

(assert (=> b!7973441 m!8350430))

(declare-fun m!8350432 () Bool)

(assert (=> b!7973441 m!8350432))

(declare-fun m!8350434 () Bool)

(assert (=> b!7973452 m!8350434))

(declare-fun m!8350436 () Bool)

(assert (=> start!751952 m!8350436))

(declare-fun m!8350438 () Bool)

(assert (=> b!7973436 m!8350438))

(declare-fun m!8350440 () Bool)

(assert (=> b!7973436 m!8350440))

(declare-fun m!8350442 () Bool)

(assert (=> b!7973436 m!8350442))

(declare-fun m!8350444 () Bool)

(assert (=> b!7973436 m!8350444))

(declare-fun m!8350446 () Bool)

(assert (=> b!7973436 m!8350446))

(declare-fun m!8350448 () Bool)

(assert (=> b!7973444 m!8350448))

(declare-fun m!8350450 () Bool)

(assert (=> b!7973438 m!8350450))

(declare-fun m!8350452 () Bool)

(assert (=> b!7973438 m!8350452))

(declare-fun m!8350454 () Bool)

(assert (=> b!7973438 m!8350454))

(declare-fun m!8350456 () Bool)

(assert (=> b!7973438 m!8350456))

(declare-fun m!8350458 () Bool)

(assert (=> b!7973448 m!8350458))

(declare-fun m!8350460 () Bool)

(assert (=> b!7973448 m!8350460))

(assert (=> b!7973448 m!8350458))

(assert (=> b!7973448 m!8350460))

(declare-fun m!8350462 () Bool)

(assert (=> b!7973448 m!8350462))

(declare-fun m!8350464 () Bool)

(assert (=> b!7973448 m!8350464))

(declare-fun m!8350466 () Bool)

(assert (=> b!7973447 m!8350466))

(declare-fun m!8350468 () Bool)

(assert (=> b!7973446 m!8350468))

(declare-fun m!8350470 () Bool)

(assert (=> b!7973446 m!8350470))

(declare-fun m!8350472 () Bool)

(assert (=> b!7973446 m!8350472))

(declare-fun m!8350474 () Bool)

(assert (=> b!7973446 m!8350474))

(declare-fun m!8350476 () Bool)

(assert (=> b!7973446 m!8350476))

(check-sat (not b!7973449) (not b!7973452) (not b!7973436) (not b!7973440) (not b!7973443) (not b!7973442) (not b!7973438) (not b!7973441) tp_is_empty!53633 (not b!7973447) (not b!7973450) (not b!7973453) (not b!7973446) (not b!7973437) (not b!7973444) (not b!7973454) (not start!751952) (not b!7973448))
(check-sat)
(get-model)

(declare-fun b!7973507 () Bool)

(declare-fun e!4701030 () Bool)

(declare-fun lt!2708870 () Bool)

(assert (=> b!7973507 (= e!4701030 (not lt!2708870))))

(declare-fun b!7973508 () Bool)

(declare-fun res!3158763 () Bool)

(declare-fun e!4701029 () Bool)

(assert (=> b!7973508 (=> (not res!3158763) (not e!4701029))))

(declare-fun call!739887 () Bool)

(assert (=> b!7973508 (= res!3158763 (not call!739887))))

(declare-fun b!7973509 () Bool)

(declare-fun res!3158764 () Bool)

(assert (=> b!7973509 (=> (not res!3158764) (not e!4701029))))

(assert (=> b!7973509 (= res!3158764 (isEmpty!42949 (tail!15818 (_1!38677 lt!2708851))))))

(declare-fun b!7973510 () Bool)

(declare-fun e!4701032 () Bool)

(assert (=> b!7973510 (= e!4701032 e!4701030)))

(declare-fun c!1464233 () Bool)

(assert (=> b!7973510 (= c!1464233 ((_ is EmptyLang!21545) baseR!116))))

(declare-fun d!2380239 () Bool)

(assert (=> d!2380239 e!4701032))

(declare-fun c!1464232 () Bool)

(assert (=> d!2380239 (= c!1464232 ((_ is EmptyExpr!21545) baseR!116))))

(declare-fun e!4701031 () Bool)

(assert (=> d!2380239 (= lt!2708870 e!4701031)))

(declare-fun c!1464231 () Bool)

(assert (=> d!2380239 (= c!1464231 (isEmpty!42949 (_1!38677 lt!2708851)))))

(assert (=> d!2380239 (validRegex!11849 baseR!116)))

(assert (=> d!2380239 (= (matchR!10760 baseR!116 (_1!38677 lt!2708851)) lt!2708870)))

(declare-fun b!7973511 () Bool)

(declare-fun res!3158770 () Bool)

(declare-fun e!4701035 () Bool)

(assert (=> b!7973511 (=> res!3158770 e!4701035)))

(assert (=> b!7973511 (= res!3158770 (not (isEmpty!42949 (tail!15818 (_1!38677 lt!2708851)))))))

(declare-fun b!7973512 () Bool)

(assert (=> b!7973512 (= e!4701032 (= lt!2708870 call!739887))))

(declare-fun b!7973513 () Bool)

(declare-fun res!3158767 () Bool)

(declare-fun e!4701033 () Bool)

(assert (=> b!7973513 (=> res!3158767 e!4701033)))

(assert (=> b!7973513 (= res!3158767 (not ((_ is ElementMatch!21545) baseR!116)))))

(assert (=> b!7973513 (= e!4701030 e!4701033)))

(declare-fun b!7973514 () Bool)

(assert (=> b!7973514 (= e!4701031 (matchR!10760 (derivativeStep!6565 baseR!116 (head!16291 (_1!38677 lt!2708851))) (tail!15818 (_1!38677 lt!2708851))))))

(declare-fun b!7973515 () Bool)

(declare-fun e!4701034 () Bool)

(assert (=> b!7973515 (= e!4701034 e!4701035)))

(declare-fun res!3158769 () Bool)

(assert (=> b!7973515 (=> res!3158769 e!4701035)))

(assert (=> b!7973515 (= res!3158769 call!739887)))

(declare-fun b!7973516 () Bool)

(assert (=> b!7973516 (= e!4701033 e!4701034)))

(declare-fun res!3158765 () Bool)

(assert (=> b!7973516 (=> (not res!3158765) (not e!4701034))))

(assert (=> b!7973516 (= res!3158765 (not lt!2708870))))

(declare-fun bm!739882 () Bool)

(assert (=> bm!739882 (= call!739887 (isEmpty!42949 (_1!38677 lt!2708851)))))

(declare-fun b!7973517 () Bool)

(assert (=> b!7973517 (= e!4701031 (nullable!9638 baseR!116))))

(declare-fun b!7973518 () Bool)

(declare-fun res!3158768 () Bool)

(assert (=> b!7973518 (=> res!3158768 e!4701033)))

(assert (=> b!7973518 (= res!3158768 e!4701029)))

(declare-fun res!3158766 () Bool)

(assert (=> b!7973518 (=> (not res!3158766) (not e!4701029))))

(assert (=> b!7973518 (= res!3158766 lt!2708870)))

(declare-fun b!7973519 () Bool)

(assert (=> b!7973519 (= e!4701029 (= (head!16291 (_1!38677 lt!2708851)) (c!1464218 baseR!116)))))

(declare-fun b!7973520 () Bool)

(assert (=> b!7973520 (= e!4701035 (not (= (head!16291 (_1!38677 lt!2708851)) (c!1464218 baseR!116))))))

(assert (= (and d!2380239 c!1464231) b!7973517))

(assert (= (and d!2380239 (not c!1464231)) b!7973514))

(assert (= (and d!2380239 c!1464232) b!7973512))

(assert (= (and d!2380239 (not c!1464232)) b!7973510))

(assert (= (and b!7973510 c!1464233) b!7973507))

(assert (= (and b!7973510 (not c!1464233)) b!7973513))

(assert (= (and b!7973513 (not res!3158767)) b!7973518))

(assert (= (and b!7973518 res!3158766) b!7973508))

(assert (= (and b!7973508 res!3158763) b!7973509))

(assert (= (and b!7973509 res!3158764) b!7973519))

(assert (= (and b!7973518 (not res!3158768)) b!7973516))

(assert (= (and b!7973516 res!3158765) b!7973515))

(assert (= (and b!7973515 (not res!3158769)) b!7973511))

(assert (= (and b!7973511 (not res!3158770)) b!7973520))

(assert (= (or b!7973512 b!7973508 b!7973515) bm!739882))

(declare-fun m!8350496 () Bool)

(assert (=> b!7973517 m!8350496))

(declare-fun m!8350498 () Bool)

(assert (=> b!7973519 m!8350498))

(assert (=> b!7973520 m!8350498))

(declare-fun m!8350500 () Bool)

(assert (=> b!7973509 m!8350500))

(assert (=> b!7973509 m!8350500))

(declare-fun m!8350502 () Bool)

(assert (=> b!7973509 m!8350502))

(assert (=> b!7973514 m!8350498))

(assert (=> b!7973514 m!8350498))

(declare-fun m!8350504 () Bool)

(assert (=> b!7973514 m!8350504))

(assert (=> b!7973514 m!8350500))

(assert (=> b!7973514 m!8350504))

(assert (=> b!7973514 m!8350500))

(declare-fun m!8350506 () Bool)

(assert (=> b!7973514 m!8350506))

(assert (=> d!2380239 m!8350444))

(assert (=> d!2380239 m!8350436))

(assert (=> b!7973511 m!8350500))

(assert (=> b!7973511 m!8350500))

(assert (=> b!7973511 m!8350502))

(assert (=> bm!739882 m!8350444))

(assert (=> b!7973438 d!2380239))

(declare-fun b!7973521 () Bool)

(declare-fun e!4701037 () Bool)

(declare-fun lt!2708871 () Bool)

(assert (=> b!7973521 (= e!4701037 (not lt!2708871))))

(declare-fun b!7973522 () Bool)

(declare-fun res!3158771 () Bool)

(declare-fun e!4701036 () Bool)

(assert (=> b!7973522 (=> (not res!3158771) (not e!4701036))))

(declare-fun call!739888 () Bool)

(assert (=> b!7973522 (= res!3158771 (not call!739888))))

(declare-fun b!7973523 () Bool)

(declare-fun res!3158772 () Bool)

(assert (=> b!7973523 (=> (not res!3158772) (not e!4701036))))

(assert (=> b!7973523 (= res!3158772 (isEmpty!42949 (tail!15818 testedP!447)))))

(declare-fun b!7973524 () Bool)

(declare-fun e!4701039 () Bool)

(assert (=> b!7973524 (= e!4701039 e!4701037)))

(declare-fun c!1464236 () Bool)

(assert (=> b!7973524 (= c!1464236 ((_ is EmptyLang!21545) baseR!116))))

(declare-fun d!2380249 () Bool)

(assert (=> d!2380249 e!4701039))

(declare-fun c!1464235 () Bool)

(assert (=> d!2380249 (= c!1464235 ((_ is EmptyExpr!21545) baseR!116))))

(declare-fun e!4701038 () Bool)

(assert (=> d!2380249 (= lt!2708871 e!4701038)))

(declare-fun c!1464234 () Bool)

(assert (=> d!2380249 (= c!1464234 (isEmpty!42949 testedP!447))))

(assert (=> d!2380249 (validRegex!11849 baseR!116)))

(assert (=> d!2380249 (= (matchR!10760 baseR!116 testedP!447) lt!2708871)))

(declare-fun b!7973525 () Bool)

(declare-fun res!3158778 () Bool)

(declare-fun e!4701042 () Bool)

(assert (=> b!7973525 (=> res!3158778 e!4701042)))

(assert (=> b!7973525 (= res!3158778 (not (isEmpty!42949 (tail!15818 testedP!447))))))

(declare-fun b!7973526 () Bool)

(assert (=> b!7973526 (= e!4701039 (= lt!2708871 call!739888))))

(declare-fun b!7973527 () Bool)

(declare-fun res!3158775 () Bool)

(declare-fun e!4701040 () Bool)

(assert (=> b!7973527 (=> res!3158775 e!4701040)))

(assert (=> b!7973527 (= res!3158775 (not ((_ is ElementMatch!21545) baseR!116)))))

(assert (=> b!7973527 (= e!4701037 e!4701040)))

(declare-fun b!7973528 () Bool)

(assert (=> b!7973528 (= e!4701038 (matchR!10760 (derivativeStep!6565 baseR!116 (head!16291 testedP!447)) (tail!15818 testedP!447)))))

(declare-fun b!7973529 () Bool)

(declare-fun e!4701041 () Bool)

(assert (=> b!7973529 (= e!4701041 e!4701042)))

(declare-fun res!3158777 () Bool)

(assert (=> b!7973529 (=> res!3158777 e!4701042)))

(assert (=> b!7973529 (= res!3158777 call!739888)))

(declare-fun b!7973530 () Bool)

(assert (=> b!7973530 (= e!4701040 e!4701041)))

(declare-fun res!3158773 () Bool)

(assert (=> b!7973530 (=> (not res!3158773) (not e!4701041))))

(assert (=> b!7973530 (= res!3158773 (not lt!2708871))))

(declare-fun bm!739883 () Bool)

(assert (=> bm!739883 (= call!739888 (isEmpty!42949 testedP!447))))

(declare-fun b!7973531 () Bool)

(assert (=> b!7973531 (= e!4701038 (nullable!9638 baseR!116))))

(declare-fun b!7973532 () Bool)

(declare-fun res!3158776 () Bool)

(assert (=> b!7973532 (=> res!3158776 e!4701040)))

(assert (=> b!7973532 (= res!3158776 e!4701036)))

(declare-fun res!3158774 () Bool)

(assert (=> b!7973532 (=> (not res!3158774) (not e!4701036))))

(assert (=> b!7973532 (= res!3158774 lt!2708871)))

(declare-fun b!7973533 () Bool)

(assert (=> b!7973533 (= e!4701036 (= (head!16291 testedP!447) (c!1464218 baseR!116)))))

(declare-fun b!7973534 () Bool)

(assert (=> b!7973534 (= e!4701042 (not (= (head!16291 testedP!447) (c!1464218 baseR!116))))))

(assert (= (and d!2380249 c!1464234) b!7973531))

(assert (= (and d!2380249 (not c!1464234)) b!7973528))

(assert (= (and d!2380249 c!1464235) b!7973526))

(assert (= (and d!2380249 (not c!1464235)) b!7973524))

(assert (= (and b!7973524 c!1464236) b!7973521))

(assert (= (and b!7973524 (not c!1464236)) b!7973527))

(assert (= (and b!7973527 (not res!3158775)) b!7973532))

(assert (= (and b!7973532 res!3158774) b!7973522))

(assert (= (and b!7973522 res!3158771) b!7973523))

(assert (= (and b!7973523 res!3158772) b!7973533))

(assert (= (and b!7973532 (not res!3158776)) b!7973530))

(assert (= (and b!7973530 res!3158773) b!7973529))

(assert (= (and b!7973529 (not res!3158777)) b!7973525))

(assert (= (and b!7973525 (not res!3158778)) b!7973534))

(assert (= (or b!7973526 b!7973522 b!7973529) bm!739883))

(assert (=> b!7973531 m!8350496))

(declare-fun m!8350508 () Bool)

(assert (=> b!7973533 m!8350508))

(assert (=> b!7973534 m!8350508))

(declare-fun m!8350510 () Bool)

(assert (=> b!7973523 m!8350510))

(assert (=> b!7973523 m!8350510))

(declare-fun m!8350512 () Bool)

(assert (=> b!7973523 m!8350512))

(assert (=> b!7973528 m!8350508))

(assert (=> b!7973528 m!8350508))

(declare-fun m!8350514 () Bool)

(assert (=> b!7973528 m!8350514))

(assert (=> b!7973528 m!8350510))

(assert (=> b!7973528 m!8350514))

(assert (=> b!7973528 m!8350510))

(declare-fun m!8350516 () Bool)

(assert (=> b!7973528 m!8350516))

(declare-fun m!8350518 () Bool)

(assert (=> d!2380249 m!8350518))

(assert (=> d!2380249 m!8350436))

(assert (=> b!7973525 m!8350510))

(assert (=> b!7973525 m!8350510))

(assert (=> b!7973525 m!8350512))

(assert (=> bm!739883 m!8350518))

(assert (=> b!7973438 d!2380249))

(declare-fun b!7973535 () Bool)

(declare-fun e!4701044 () Bool)

(declare-fun lt!2708872 () Bool)

(assert (=> b!7973535 (= e!4701044 (not lt!2708872))))

(declare-fun b!7973536 () Bool)

(declare-fun res!3158779 () Bool)

(declare-fun e!4701043 () Bool)

(assert (=> b!7973536 (=> (not res!3158779) (not e!4701043))))

(declare-fun call!739889 () Bool)

(assert (=> b!7973536 (= res!3158779 (not call!739889))))

(declare-fun b!7973537 () Bool)

(declare-fun res!3158780 () Bool)

(assert (=> b!7973537 (=> (not res!3158780) (not e!4701043))))

(assert (=> b!7973537 (= res!3158780 (isEmpty!42949 (tail!15818 Nil!74650)))))

(declare-fun b!7973538 () Bool)

(declare-fun e!4701046 () Bool)

(assert (=> b!7973538 (= e!4701046 e!4701044)))

(declare-fun c!1464239 () Bool)

(assert (=> b!7973538 (= c!1464239 ((_ is EmptyLang!21545) lt!2708852))))

(declare-fun d!2380251 () Bool)

(assert (=> d!2380251 e!4701046))

(declare-fun c!1464238 () Bool)

(assert (=> d!2380251 (= c!1464238 ((_ is EmptyExpr!21545) lt!2708852))))

(declare-fun e!4701045 () Bool)

(assert (=> d!2380251 (= lt!2708872 e!4701045)))

(declare-fun c!1464237 () Bool)

(assert (=> d!2380251 (= c!1464237 (isEmpty!42949 Nil!74650))))

(assert (=> d!2380251 (validRegex!11849 lt!2708852)))

(assert (=> d!2380251 (= (matchR!10760 lt!2708852 Nil!74650) lt!2708872)))

(declare-fun b!7973539 () Bool)

(declare-fun res!3158786 () Bool)

(declare-fun e!4701049 () Bool)

(assert (=> b!7973539 (=> res!3158786 e!4701049)))

(assert (=> b!7973539 (= res!3158786 (not (isEmpty!42949 (tail!15818 Nil!74650))))))

(declare-fun b!7973540 () Bool)

(assert (=> b!7973540 (= e!4701046 (= lt!2708872 call!739889))))

(declare-fun b!7973541 () Bool)

(declare-fun res!3158783 () Bool)

(declare-fun e!4701047 () Bool)

(assert (=> b!7973541 (=> res!3158783 e!4701047)))

(assert (=> b!7973541 (= res!3158783 (not ((_ is ElementMatch!21545) lt!2708852)))))

(assert (=> b!7973541 (= e!4701044 e!4701047)))

(declare-fun b!7973542 () Bool)

(assert (=> b!7973542 (= e!4701045 (matchR!10760 (derivativeStep!6565 lt!2708852 (head!16291 Nil!74650)) (tail!15818 Nil!74650)))))

(declare-fun b!7973543 () Bool)

(declare-fun e!4701048 () Bool)

(assert (=> b!7973543 (= e!4701048 e!4701049)))

(declare-fun res!3158785 () Bool)

(assert (=> b!7973543 (=> res!3158785 e!4701049)))

(assert (=> b!7973543 (= res!3158785 call!739889)))

(declare-fun b!7973544 () Bool)

(assert (=> b!7973544 (= e!4701047 e!4701048)))

(declare-fun res!3158781 () Bool)

(assert (=> b!7973544 (=> (not res!3158781) (not e!4701048))))

(assert (=> b!7973544 (= res!3158781 (not lt!2708872))))

(declare-fun bm!739884 () Bool)

(assert (=> bm!739884 (= call!739889 (isEmpty!42949 Nil!74650))))

(declare-fun b!7973545 () Bool)

(assert (=> b!7973545 (= e!4701045 (nullable!9638 lt!2708852))))

(declare-fun b!7973546 () Bool)

(declare-fun res!3158784 () Bool)

(assert (=> b!7973546 (=> res!3158784 e!4701047)))

(assert (=> b!7973546 (= res!3158784 e!4701043)))

(declare-fun res!3158782 () Bool)

(assert (=> b!7973546 (=> (not res!3158782) (not e!4701043))))

(assert (=> b!7973546 (= res!3158782 lt!2708872)))

(declare-fun b!7973547 () Bool)

(assert (=> b!7973547 (= e!4701043 (= (head!16291 Nil!74650) (c!1464218 lt!2708852)))))

(declare-fun b!7973548 () Bool)

(assert (=> b!7973548 (= e!4701049 (not (= (head!16291 Nil!74650) (c!1464218 lt!2708852))))))

(assert (= (and d!2380251 c!1464237) b!7973545))

(assert (= (and d!2380251 (not c!1464237)) b!7973542))

(assert (= (and d!2380251 c!1464238) b!7973540))

(assert (= (and d!2380251 (not c!1464238)) b!7973538))

(assert (= (and b!7973538 c!1464239) b!7973535))

(assert (= (and b!7973538 (not c!1464239)) b!7973541))

(assert (= (and b!7973541 (not res!3158783)) b!7973546))

(assert (= (and b!7973546 res!3158782) b!7973536))

(assert (= (and b!7973536 res!3158779) b!7973537))

(assert (= (and b!7973537 res!3158780) b!7973547))

(assert (= (and b!7973546 (not res!3158784)) b!7973544))

(assert (= (and b!7973544 res!3158781) b!7973543))

(assert (= (and b!7973543 (not res!3158785)) b!7973539))

(assert (= (and b!7973539 (not res!3158786)) b!7973548))

(assert (= (or b!7973540 b!7973536 b!7973543) bm!739884))

(declare-fun m!8350520 () Bool)

(assert (=> b!7973545 m!8350520))

(declare-fun m!8350522 () Bool)

(assert (=> b!7973547 m!8350522))

(assert (=> b!7973548 m!8350522))

(declare-fun m!8350524 () Bool)

(assert (=> b!7973537 m!8350524))

(assert (=> b!7973537 m!8350524))

(declare-fun m!8350526 () Bool)

(assert (=> b!7973537 m!8350526))

(assert (=> b!7973542 m!8350522))

(assert (=> b!7973542 m!8350522))

(declare-fun m!8350528 () Bool)

(assert (=> b!7973542 m!8350528))

(assert (=> b!7973542 m!8350524))

(assert (=> b!7973542 m!8350528))

(assert (=> b!7973542 m!8350524))

(declare-fun m!8350530 () Bool)

(assert (=> b!7973542 m!8350530))

(declare-fun m!8350532 () Bool)

(assert (=> d!2380251 m!8350532))

(declare-fun m!8350534 () Bool)

(assert (=> d!2380251 m!8350534))

(assert (=> b!7973539 m!8350524))

(assert (=> b!7973539 m!8350524))

(assert (=> b!7973539 m!8350526))

(assert (=> bm!739884 m!8350532))

(assert (=> b!7973438 d!2380251))

(declare-fun d!2380253 () Bool)

(assert (=> d!2380253 (= (matchR!10760 baseR!116 testedP!447) (matchR!10760 (derivative!731 baseR!116 testedP!447) Nil!74650))))

(declare-fun lt!2708875 () Unit!170354)

(declare-fun choose!60126 (Regex!21545 List!74774) Unit!170354)

(assert (=> d!2380253 (= lt!2708875 (choose!60126 baseR!116 testedP!447))))

(assert (=> d!2380253 (validRegex!11849 baseR!116)))

(assert (=> d!2380253 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!306 baseR!116 testedP!447) lt!2708875)))

(declare-fun bs!1970016 () Bool)

(assert (= bs!1970016 d!2380253))

(declare-fun m!8350536 () Bool)

(assert (=> bs!1970016 m!8350536))

(assert (=> bs!1970016 m!8350436))

(assert (=> bs!1970016 m!8350466))

(declare-fun m!8350538 () Bool)

(assert (=> bs!1970016 m!8350538))

(assert (=> bs!1970016 m!8350452))

(assert (=> bs!1970016 m!8350466))

(assert (=> b!7973438 d!2380253))

(declare-fun b!7973557 () Bool)

(declare-fun e!4701056 () Bool)

(declare-fun e!4701058 () Bool)

(assert (=> b!7973557 (= e!4701056 e!4701058)))

(declare-fun res!3158795 () Bool)

(assert (=> b!7973557 (=> (not res!3158795) (not e!4701058))))

(assert (=> b!7973557 (= res!3158795 (not ((_ is Nil!74650) input!7927)))))

(declare-fun b!7973559 () Bool)

(assert (=> b!7973559 (= e!4701058 (isPrefix!6645 (tail!15818 testedP!447) (tail!15818 input!7927)))))

(declare-fun b!7973558 () Bool)

(declare-fun res!3158797 () Bool)

(assert (=> b!7973558 (=> (not res!3158797) (not e!4701058))))

(assert (=> b!7973558 (= res!3158797 (= (head!16291 testedP!447) (head!16291 input!7927)))))

(declare-fun d!2380255 () Bool)

(declare-fun e!4701057 () Bool)

(assert (=> d!2380255 e!4701057))

(declare-fun res!3158796 () Bool)

(assert (=> d!2380255 (=> res!3158796 e!4701057)))

(declare-fun lt!2708878 () Bool)

(assert (=> d!2380255 (= res!3158796 (not lt!2708878))))

(assert (=> d!2380255 (= lt!2708878 e!4701056)))

(declare-fun res!3158798 () Bool)

(assert (=> d!2380255 (=> res!3158798 e!4701056)))

(assert (=> d!2380255 (= res!3158798 ((_ is Nil!74650) testedP!447))))

(assert (=> d!2380255 (= (isPrefix!6645 testedP!447 input!7927) lt!2708878)))

(declare-fun b!7973560 () Bool)

(assert (=> b!7973560 (= e!4701057 (>= (size!43481 input!7927) (size!43481 testedP!447)))))

(assert (= (and d!2380255 (not res!3158798)) b!7973557))

(assert (= (and b!7973557 res!3158795) b!7973558))

(assert (= (and b!7973558 res!3158797) b!7973559))

(assert (= (and d!2380255 (not res!3158796)) b!7973560))

(assert (=> b!7973559 m!8350510))

(declare-fun m!8350540 () Bool)

(assert (=> b!7973559 m!8350540))

(assert (=> b!7973559 m!8350510))

(assert (=> b!7973559 m!8350540))

(declare-fun m!8350542 () Bool)

(assert (=> b!7973559 m!8350542))

(assert (=> b!7973558 m!8350508))

(declare-fun m!8350544 () Bool)

(assert (=> b!7973558 m!8350544))

(assert (=> b!7973560 m!8350440))

(assert (=> b!7973560 m!8350438))

(assert (=> b!7973444 d!2380255))

(declare-fun d!2380257 () Bool)

(assert (=> d!2380257 (= (isEmpty!42949 (_1!38677 (findLongestMatchInner!2324 (derivativeStep!6565 r!24602 lt!2708848) lt!2708843 (+ 1 lt!2708853) (tail!15818 lt!2708854) input!7927 lt!2708844))) ((_ is Nil!74650) (_1!38677 (findLongestMatchInner!2324 (derivativeStep!6565 r!24602 lt!2708848) lt!2708843 (+ 1 lt!2708853) (tail!15818 lt!2708854) input!7927 lt!2708844))))))

(assert (=> b!7973448 d!2380257))

(declare-fun b!7973836 () Bool)

(declare-fun e!4701207 () tuple2!70748)

(assert (=> b!7973836 (= e!4701207 (tuple2!70749 lt!2708843 (tail!15818 lt!2708854)))))

(declare-fun bm!739959 () Bool)

(declare-fun call!739964 () Unit!170354)

(assert (=> bm!739959 (= call!739964 (lemmaIsPrefixRefl!4111 input!7927 input!7927))))

(declare-fun b!7973837 () Bool)

(declare-fun e!4701211 () Bool)

(declare-fun e!4701206 () Bool)

(assert (=> b!7973837 (= e!4701211 e!4701206)))

(declare-fun res!3158881 () Bool)

(assert (=> b!7973837 (=> res!3158881 e!4701206)))

(declare-fun lt!2709101 () tuple2!70748)

(assert (=> b!7973837 (= res!3158881 (isEmpty!42949 (_1!38677 lt!2709101)))))

(declare-fun bm!739960 () Bool)

(declare-fun call!739969 () List!74774)

(assert (=> bm!739960 (= call!739969 (tail!15818 (tail!15818 lt!2708854)))))

(declare-fun b!7973838 () Bool)

(declare-fun e!4701209 () tuple2!70748)

(assert (=> b!7973838 (= e!4701209 e!4701207)))

(declare-fun lt!2709100 () tuple2!70748)

(declare-fun call!739965 () tuple2!70748)

(assert (=> b!7973838 (= lt!2709100 call!739965)))

(declare-fun c!1464323 () Bool)

(assert (=> b!7973838 (= c!1464323 (isEmpty!42949 (_1!38677 lt!2709100)))))

(declare-fun bm!739961 () Bool)

(declare-fun call!739970 () C!43428)

(declare-fun call!739968 () Regex!21545)

(assert (=> bm!739961 (= call!739968 (derivativeStep!6565 (derivativeStep!6565 r!24602 lt!2708848) call!739970))))

(declare-fun bm!739962 () Bool)

(declare-fun call!739971 () Unit!170354)

(assert (=> bm!739962 (= call!739971 (lemmaIsPrefixSameLengthThenSameList!1689 input!7927 lt!2708843 input!7927))))

(declare-fun b!7973839 () Bool)

(declare-fun e!4701210 () tuple2!70748)

(assert (=> b!7973839 (= e!4701210 (tuple2!70749 Nil!74650 input!7927))))

(declare-fun bm!739963 () Bool)

(declare-fun call!739967 () Bool)

(assert (=> bm!739963 (= call!739967 (isPrefix!6645 input!7927 input!7927))))

(declare-fun lt!2709092 () List!74774)

(declare-fun bm!739964 () Bool)

(assert (=> bm!739964 (= call!739965 (findLongestMatchInner!2324 call!739968 lt!2709092 (+ 1 lt!2708853 1) call!739969 input!7927 lt!2708844))))

(declare-fun b!7973840 () Bool)

(assert (=> b!7973840 (= e!4701207 lt!2709100)))

(declare-fun bm!739965 () Bool)

(declare-fun call!739966 () Bool)

(assert (=> bm!739965 (= call!739966 (nullable!9638 (derivativeStep!6565 r!24602 lt!2708848)))))

(declare-fun d!2380259 () Bool)

(assert (=> d!2380259 e!4701211))

(declare-fun res!3158880 () Bool)

(assert (=> d!2380259 (=> (not res!3158880) (not e!4701211))))

(assert (=> d!2380259 (= res!3158880 (= (++!18407 (_1!38677 lt!2709101) (_2!38677 lt!2709101)) input!7927))))

(declare-fun e!4701208 () tuple2!70748)

(assert (=> d!2380259 (= lt!2709101 e!4701208)))

(declare-fun c!1464321 () Bool)

(declare-fun lostCause!1998 (Regex!21545) Bool)

(assert (=> d!2380259 (= c!1464321 (lostCause!1998 (derivativeStep!6565 r!24602 lt!2708848)))))

(declare-fun lt!2709085 () Unit!170354)

(declare-fun Unit!170364 () Unit!170354)

(assert (=> d!2380259 (= lt!2709085 Unit!170364)))

(assert (=> d!2380259 (= (getSuffix!3846 input!7927 lt!2708843) (tail!15818 lt!2708854))))

(declare-fun lt!2709082 () Unit!170354)

(declare-fun lt!2709083 () Unit!170354)

(assert (=> d!2380259 (= lt!2709082 lt!2709083)))

(declare-fun lt!2709080 () List!74774)

(assert (=> d!2380259 (= (tail!15818 lt!2708854) lt!2709080)))

(declare-fun lemmaSamePrefixThenSameSuffix!3014 (List!74774 List!74774 List!74774 List!74774 List!74774) Unit!170354)

(assert (=> d!2380259 (= lt!2709083 (lemmaSamePrefixThenSameSuffix!3014 lt!2708843 (tail!15818 lt!2708854) lt!2708843 lt!2709080 input!7927))))

(assert (=> d!2380259 (= lt!2709080 (getSuffix!3846 input!7927 lt!2708843))))

(declare-fun lt!2709096 () Unit!170354)

(declare-fun lt!2709086 () Unit!170354)

(assert (=> d!2380259 (= lt!2709096 lt!2709086)))

(assert (=> d!2380259 (isPrefix!6645 lt!2708843 (++!18407 lt!2708843 (tail!15818 lt!2708854)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3876 (List!74774 List!74774) Unit!170354)

(assert (=> d!2380259 (= lt!2709086 (lemmaConcatTwoListThenFirstIsPrefix!3876 lt!2708843 (tail!15818 lt!2708854)))))

(assert (=> d!2380259 (validRegex!11849 (derivativeStep!6565 r!24602 lt!2708848))))

(assert (=> d!2380259 (= (findLongestMatchInner!2324 (derivativeStep!6565 r!24602 lt!2708848) lt!2708843 (+ 1 lt!2708853) (tail!15818 lt!2708854) input!7927 lt!2708844) lt!2709101)))

(declare-fun b!7973841 () Bool)

(assert (=> b!7973841 (= e!4701210 (tuple2!70749 lt!2708843 Nil!74650))))

(declare-fun bm!739966 () Bool)

(assert (=> bm!739966 (= call!739970 (head!16291 (tail!15818 lt!2708854)))))

(declare-fun b!7973842 () Bool)

(assert (=> b!7973842 (= e!4701206 (>= (size!43481 (_1!38677 lt!2709101)) (size!43481 lt!2708843)))))

(declare-fun b!7973843 () Bool)

(declare-fun e!4701205 () Unit!170354)

(declare-fun Unit!170365 () Unit!170354)

(assert (=> b!7973843 (= e!4701205 Unit!170365)))

(declare-fun b!7973844 () Bool)

(assert (=> b!7973844 (= e!4701208 (tuple2!70749 Nil!74650 input!7927))))

(declare-fun b!7973845 () Bool)

(declare-fun Unit!170366 () Unit!170354)

(assert (=> b!7973845 (= e!4701205 Unit!170366)))

(declare-fun lt!2709084 () Unit!170354)

(assert (=> b!7973845 (= lt!2709084 call!739964)))

(assert (=> b!7973845 call!739967))

(declare-fun lt!2709077 () Unit!170354)

(assert (=> b!7973845 (= lt!2709077 lt!2709084)))

(declare-fun lt!2709095 () Unit!170354)

(assert (=> b!7973845 (= lt!2709095 call!739971)))

(assert (=> b!7973845 (= input!7927 lt!2708843)))

(declare-fun lt!2709087 () Unit!170354)

(assert (=> b!7973845 (= lt!2709087 lt!2709095)))

(assert (=> b!7973845 false))

(declare-fun b!7973846 () Bool)

(assert (=> b!7973846 (= e!4701209 call!739965)))

(declare-fun b!7973847 () Bool)

(declare-fun e!4701212 () tuple2!70748)

(assert (=> b!7973847 (= e!4701208 e!4701212)))

(declare-fun c!1464324 () Bool)

(assert (=> b!7973847 (= c!1464324 (= (+ 1 lt!2708853) lt!2708844))))

(declare-fun b!7973848 () Bool)

(declare-fun c!1464322 () Bool)

(assert (=> b!7973848 (= c!1464322 call!739966)))

(declare-fun lt!2709098 () Unit!170354)

(declare-fun lt!2709091 () Unit!170354)

(assert (=> b!7973848 (= lt!2709098 lt!2709091)))

(assert (=> b!7973848 (= input!7927 lt!2708843)))

(assert (=> b!7973848 (= lt!2709091 call!739971)))

(declare-fun lt!2709076 () Unit!170354)

(declare-fun lt!2709094 () Unit!170354)

(assert (=> b!7973848 (= lt!2709076 lt!2709094)))

(assert (=> b!7973848 call!739967))

(assert (=> b!7973848 (= lt!2709094 call!739964)))

(assert (=> b!7973848 (= e!4701212 e!4701210)))

(declare-fun b!7973849 () Bool)

(declare-fun c!1464320 () Bool)

(assert (=> b!7973849 (= c!1464320 call!739966)))

(declare-fun lt!2709081 () Unit!170354)

(declare-fun lt!2709078 () Unit!170354)

(assert (=> b!7973849 (= lt!2709081 lt!2709078)))

(declare-fun lt!2709103 () List!74774)

(declare-fun lt!2709089 () C!43428)

(assert (=> b!7973849 (= (++!18407 (++!18407 lt!2708843 (Cons!74650 lt!2709089 Nil!74650)) lt!2709103) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3554 (List!74774 C!43428 List!74774 List!74774) Unit!170354)

(assert (=> b!7973849 (= lt!2709078 (lemmaMoveElementToOtherListKeepsConcatEq!3554 lt!2708843 lt!2709089 lt!2709103 input!7927))))

(assert (=> b!7973849 (= lt!2709103 (tail!15818 (tail!15818 lt!2708854)))))

(assert (=> b!7973849 (= lt!2709089 (head!16291 (tail!15818 lt!2708854)))))

(declare-fun lt!2709097 () Unit!170354)

(declare-fun lt!2709088 () Unit!170354)

(assert (=> b!7973849 (= lt!2709097 lt!2709088)))

(assert (=> b!7973849 (isPrefix!6645 (++!18407 lt!2708843 (Cons!74650 (head!16291 (getSuffix!3846 input!7927 lt!2708843)) Nil!74650)) input!7927)))

(assert (=> b!7973849 (= lt!2709088 (lemmaAddHeadSuffixToPrefixStillPrefix!1364 lt!2708843 input!7927))))

(declare-fun lt!2709090 () Unit!170354)

(declare-fun lt!2709099 () Unit!170354)

(assert (=> b!7973849 (= lt!2709090 lt!2709099)))

(assert (=> b!7973849 (= lt!2709099 (lemmaAddHeadSuffixToPrefixStillPrefix!1364 lt!2708843 input!7927))))

(assert (=> b!7973849 (= lt!2709092 (++!18407 lt!2708843 (Cons!74650 (head!16291 (tail!15818 lt!2708854)) Nil!74650)))))

(declare-fun lt!2709102 () Unit!170354)

(assert (=> b!7973849 (= lt!2709102 e!4701205)))

(declare-fun c!1464319 () Bool)

(assert (=> b!7973849 (= c!1464319 (= (size!43481 lt!2708843) (size!43481 input!7927)))))

(declare-fun lt!2709079 () Unit!170354)

(declare-fun lt!2709093 () Unit!170354)

(assert (=> b!7973849 (= lt!2709079 lt!2709093)))

(assert (=> b!7973849 (<= (size!43481 lt!2708843) (size!43481 input!7927))))

(assert (=> b!7973849 (= lt!2709093 (lemmaIsPrefixThenSmallerEqSize!1160 lt!2708843 input!7927))))

(assert (=> b!7973849 (= e!4701212 e!4701209)))

(assert (= (and d!2380259 c!1464321) b!7973844))

(assert (= (and d!2380259 (not c!1464321)) b!7973847))

(assert (= (and b!7973847 c!1464324) b!7973848))

(assert (= (and b!7973847 (not c!1464324)) b!7973849))

(assert (= (and b!7973848 c!1464322) b!7973841))

(assert (= (and b!7973848 (not c!1464322)) b!7973839))

(assert (= (and b!7973849 c!1464319) b!7973845))

(assert (= (and b!7973849 (not c!1464319)) b!7973843))

(assert (= (and b!7973849 c!1464320) b!7973838))

(assert (= (and b!7973849 (not c!1464320)) b!7973846))

(assert (= (and b!7973838 c!1464323) b!7973836))

(assert (= (and b!7973838 (not c!1464323)) b!7973840))

(assert (= (or b!7973838 b!7973846) bm!739966))

(assert (= (or b!7973838 b!7973846) bm!739960))

(assert (= (or b!7973838 b!7973846) bm!739961))

(assert (= (or b!7973838 b!7973846) bm!739964))

(assert (= (or b!7973848 b!7973849) bm!739965))

(assert (= (or b!7973848 b!7973845) bm!739962))

(assert (= (or b!7973848 b!7973845) bm!739959))

(assert (= (or b!7973848 b!7973845) bm!739963))

(assert (= (and d!2380259 res!3158880) b!7973837))

(assert (= (and b!7973837 (not res!3158881)) b!7973842))

(declare-fun m!8350728 () Bool)

(assert (=> b!7973842 m!8350728))

(declare-fun m!8350730 () Bool)

(assert (=> b!7973842 m!8350730))

(assert (=> bm!739961 m!8350458))

(declare-fun m!8350732 () Bool)

(assert (=> bm!739961 m!8350732))

(assert (=> bm!739963 m!8350430))

(declare-fun m!8350734 () Bool)

(assert (=> bm!739964 m!8350734))

(assert (=> b!7973849 m!8350440))

(declare-fun m!8350736 () Bool)

(assert (=> b!7973849 m!8350736))

(declare-fun m!8350738 () Bool)

(assert (=> b!7973849 m!8350738))

(declare-fun m!8350740 () Bool)

(assert (=> b!7973849 m!8350740))

(declare-fun m!8350742 () Bool)

(assert (=> b!7973849 m!8350742))

(declare-fun m!8350744 () Bool)

(assert (=> b!7973849 m!8350744))

(assert (=> b!7973849 m!8350736))

(declare-fun m!8350746 () Bool)

(assert (=> b!7973849 m!8350746))

(assert (=> b!7973849 m!8350740))

(declare-fun m!8350748 () Bool)

(assert (=> b!7973849 m!8350748))

(assert (=> b!7973849 m!8350460))

(declare-fun m!8350750 () Bool)

(assert (=> b!7973849 m!8350750))

(declare-fun m!8350752 () Bool)

(assert (=> b!7973849 m!8350752))

(assert (=> b!7973849 m!8350744))

(declare-fun m!8350754 () Bool)

(assert (=> b!7973849 m!8350754))

(declare-fun m!8350756 () Bool)

(assert (=> b!7973849 m!8350756))

(assert (=> b!7973849 m!8350730))

(assert (=> b!7973849 m!8350460))

(declare-fun m!8350758 () Bool)

(assert (=> b!7973849 m!8350758))

(declare-fun m!8350760 () Bool)

(assert (=> b!7973838 m!8350760))

(declare-fun m!8350762 () Bool)

(assert (=> d!2380259 m!8350762))

(assert (=> d!2380259 m!8350460))

(declare-fun m!8350764 () Bool)

(assert (=> d!2380259 m!8350764))

(assert (=> d!2380259 m!8350460))

(declare-fun m!8350766 () Bool)

(assert (=> d!2380259 m!8350766))

(assert (=> d!2380259 m!8350458))

(declare-fun m!8350768 () Bool)

(assert (=> d!2380259 m!8350768))

(assert (=> d!2380259 m!8350744))

(assert (=> d!2380259 m!8350460))

(declare-fun m!8350770 () Bool)

(assert (=> d!2380259 m!8350770))

(assert (=> d!2380259 m!8350458))

(declare-fun m!8350772 () Bool)

(assert (=> d!2380259 m!8350772))

(assert (=> d!2380259 m!8350770))

(declare-fun m!8350774 () Bool)

(assert (=> d!2380259 m!8350774))

(assert (=> bm!739960 m!8350460))

(assert (=> bm!739960 m!8350750))

(declare-fun m!8350776 () Bool)

(assert (=> bm!739962 m!8350776))

(declare-fun m!8350778 () Bool)

(assert (=> b!7973837 m!8350778))

(assert (=> bm!739965 m!8350458))

(declare-fun m!8350780 () Bool)

(assert (=> bm!739965 m!8350780))

(assert (=> bm!739959 m!8350428))

(assert (=> bm!739966 m!8350460))

(assert (=> bm!739966 m!8350758))

(assert (=> b!7973448 d!2380259))

(declare-fun b!7973890 () Bool)

(declare-fun e!4701230 () Regex!21545)

(declare-fun e!4701232 () Regex!21545)

(assert (=> b!7973890 (= e!4701230 e!4701232)))

(declare-fun c!1464336 () Bool)

(assert (=> b!7973890 (= c!1464336 ((_ is Star!21545) r!24602))))

(declare-fun b!7973891 () Bool)

(declare-fun e!4701231 () Regex!21545)

(declare-fun e!4701229 () Regex!21545)

(assert (=> b!7973891 (= e!4701231 e!4701229)))

(declare-fun c!1464337 () Bool)

(assert (=> b!7973891 (= c!1464337 ((_ is ElementMatch!21545) r!24602))))

(declare-fun b!7973892 () Bool)

(declare-fun call!739981 () Regex!21545)

(declare-fun call!739982 () Regex!21545)

(assert (=> b!7973892 (= e!4701230 (Union!21545 call!739981 call!739982))))

(declare-fun b!7973893 () Bool)

(assert (=> b!7973893 (= e!4701229 (ite (= lt!2708848 (c!1464218 r!24602)) EmptyExpr!21545 EmptyLang!21545))))

(declare-fun b!7973894 () Bool)

(declare-fun c!1464338 () Bool)

(assert (=> b!7973894 (= c!1464338 ((_ is Union!21545) r!24602))))

(assert (=> b!7973894 (= e!4701229 e!4701230)))

(declare-fun b!7973895 () Bool)

(declare-fun call!739980 () Regex!21545)

(assert (=> b!7973895 (= e!4701232 (Concat!30544 call!739980 r!24602))))

(declare-fun bm!739975 () Bool)

(declare-fun call!739983 () Regex!21545)

(assert (=> bm!739975 (= call!739983 call!739980)))

(declare-fun b!7973896 () Bool)

(assert (=> b!7973896 (= e!4701231 EmptyLang!21545)))

(declare-fun d!2380301 () Bool)

(declare-fun lt!2709106 () Regex!21545)

(assert (=> d!2380301 (validRegex!11849 lt!2709106)))

(assert (=> d!2380301 (= lt!2709106 e!4701231)))

(declare-fun c!1464339 () Bool)

(assert (=> d!2380301 (= c!1464339 (or ((_ is EmptyExpr!21545) r!24602) ((_ is EmptyLang!21545) r!24602)))))

(assert (=> d!2380301 (validRegex!11849 r!24602)))

(assert (=> d!2380301 (= (derivativeStep!6565 r!24602 lt!2708848) lt!2709106)))

(declare-fun bm!739976 () Bool)

(declare-fun c!1464335 () Bool)

(assert (=> bm!739976 (= call!739982 (derivativeStep!6565 (ite c!1464338 (regTwo!43603 r!24602) (ite c!1464336 (reg!21874 r!24602) (ite c!1464335 (regTwo!43602 r!24602) (regOne!43602 r!24602)))) lt!2708848))))

(declare-fun b!7973897 () Bool)

(declare-fun e!4701228 () Regex!21545)

(assert (=> b!7973897 (= e!4701228 (Union!21545 (Concat!30544 call!739981 (regTwo!43602 r!24602)) call!739983))))

(declare-fun b!7973898 () Bool)

(assert (=> b!7973898 (= e!4701228 (Union!21545 (Concat!30544 call!739983 (regTwo!43602 r!24602)) EmptyLang!21545))))

(declare-fun bm!739977 () Bool)

(assert (=> bm!739977 (= call!739980 call!739982)))

(declare-fun b!7973899 () Bool)

(assert (=> b!7973899 (= c!1464335 (nullable!9638 (regOne!43602 r!24602)))))

(assert (=> b!7973899 (= e!4701232 e!4701228)))

(declare-fun bm!739978 () Bool)

(assert (=> bm!739978 (= call!739981 (derivativeStep!6565 (ite c!1464338 (regOne!43603 r!24602) (regOne!43602 r!24602)) lt!2708848))))

(assert (= (and d!2380301 c!1464339) b!7973896))

(assert (= (and d!2380301 (not c!1464339)) b!7973891))

(assert (= (and b!7973891 c!1464337) b!7973893))

(assert (= (and b!7973891 (not c!1464337)) b!7973894))

(assert (= (and b!7973894 c!1464338) b!7973892))

(assert (= (and b!7973894 (not c!1464338)) b!7973890))

(assert (= (and b!7973890 c!1464336) b!7973895))

(assert (= (and b!7973890 (not c!1464336)) b!7973899))

(assert (= (and b!7973899 c!1464335) b!7973897))

(assert (= (and b!7973899 (not c!1464335)) b!7973898))

(assert (= (or b!7973897 b!7973898) bm!739975))

(assert (= (or b!7973895 bm!739975) bm!739977))

(assert (= (or b!7973892 bm!739977) bm!739976))

(assert (= (or b!7973892 b!7973897) bm!739978))

(declare-fun m!8350782 () Bool)

(assert (=> d!2380301 m!8350782))

(declare-fun m!8350784 () Bool)

(assert (=> d!2380301 m!8350784))

(declare-fun m!8350786 () Bool)

(assert (=> bm!739976 m!8350786))

(declare-fun m!8350788 () Bool)

(assert (=> b!7973899 m!8350788))

(declare-fun m!8350790 () Bool)

(assert (=> bm!739978 m!8350790))

(assert (=> b!7973448 d!2380301))

(declare-fun d!2380303 () Bool)

(assert (=> d!2380303 (= (tail!15818 lt!2708854) (t!390517 lt!2708854))))

(assert (=> b!7973448 d!2380303))

(declare-fun d!2380305 () Bool)

(assert (=> d!2380305 (isPrefix!6645 input!7927 input!7927)))

(declare-fun lt!2709109 () Unit!170354)

(declare-fun choose!60129 (List!74774 List!74774) Unit!170354)

(assert (=> d!2380305 (= lt!2709109 (choose!60129 input!7927 input!7927))))

(assert (=> d!2380305 (= (lemmaIsPrefixRefl!4111 input!7927 input!7927) lt!2709109)))

(declare-fun bs!1970022 () Bool)

(assert (= bs!1970022 d!2380305))

(assert (=> bs!1970022 m!8350430))

(declare-fun m!8350792 () Bool)

(assert (=> bs!1970022 m!8350792))

(assert (=> b!7973441 d!2380305))

(declare-fun b!7973900 () Bool)

(declare-fun e!4701233 () Bool)

(declare-fun e!4701235 () Bool)

(assert (=> b!7973900 (= e!4701233 e!4701235)))

(declare-fun res!3158882 () Bool)

(assert (=> b!7973900 (=> (not res!3158882) (not e!4701235))))

(assert (=> b!7973900 (= res!3158882 (not ((_ is Nil!74650) input!7927)))))

(declare-fun b!7973902 () Bool)

(assert (=> b!7973902 (= e!4701235 (isPrefix!6645 (tail!15818 input!7927) (tail!15818 input!7927)))))

(declare-fun b!7973901 () Bool)

(declare-fun res!3158884 () Bool)

(assert (=> b!7973901 (=> (not res!3158884) (not e!4701235))))

(assert (=> b!7973901 (= res!3158884 (= (head!16291 input!7927) (head!16291 input!7927)))))

(declare-fun d!2380307 () Bool)

(declare-fun e!4701234 () Bool)

(assert (=> d!2380307 e!4701234))

(declare-fun res!3158883 () Bool)

(assert (=> d!2380307 (=> res!3158883 e!4701234)))

(declare-fun lt!2709110 () Bool)

(assert (=> d!2380307 (= res!3158883 (not lt!2709110))))

(assert (=> d!2380307 (= lt!2709110 e!4701233)))

(declare-fun res!3158885 () Bool)

(assert (=> d!2380307 (=> res!3158885 e!4701233)))

(assert (=> d!2380307 (= res!3158885 ((_ is Nil!74650) input!7927))))

(assert (=> d!2380307 (= (isPrefix!6645 input!7927 input!7927) lt!2709110)))

(declare-fun b!7973903 () Bool)

(assert (=> b!7973903 (= e!4701234 (>= (size!43481 input!7927) (size!43481 input!7927)))))

(assert (= (and d!2380307 (not res!3158885)) b!7973900))

(assert (= (and b!7973900 res!3158882) b!7973901))

(assert (= (and b!7973901 res!3158884) b!7973902))

(assert (= (and d!2380307 (not res!3158883)) b!7973903))

(assert (=> b!7973902 m!8350540))

(assert (=> b!7973902 m!8350540))

(assert (=> b!7973902 m!8350540))

(assert (=> b!7973902 m!8350540))

(declare-fun m!8350794 () Bool)

(assert (=> b!7973902 m!8350794))

(assert (=> b!7973901 m!8350544))

(assert (=> b!7973901 m!8350544))

(assert (=> b!7973903 m!8350440))

(assert (=> b!7973903 m!8350440))

(assert (=> b!7973441 d!2380307))

(declare-fun d!2380309 () Bool)

(assert (=> d!2380309 (= input!7927 testedP!447)))

(declare-fun lt!2709113 () Unit!170354)

(declare-fun choose!60130 (List!74774 List!74774 List!74774) Unit!170354)

(assert (=> d!2380309 (= lt!2709113 (choose!60130 input!7927 testedP!447 input!7927))))

(assert (=> d!2380309 (isPrefix!6645 input!7927 input!7927)))

(assert (=> d!2380309 (= (lemmaIsPrefixSameLengthThenSameList!1689 input!7927 testedP!447 input!7927) lt!2709113)))

(declare-fun bs!1970023 () Bool)

(assert (= bs!1970023 d!2380309))

(declare-fun m!8350796 () Bool)

(assert (=> bs!1970023 m!8350796))

(assert (=> bs!1970023 m!8350430))

(assert (=> b!7973441 d!2380309))

(declare-fun d!2380311 () Bool)

(assert (=> d!2380311 (isPrefix!6645 (++!18407 testedP!447 (Cons!74650 (head!16291 (getSuffix!3846 input!7927 testedP!447)) Nil!74650)) input!7927)))

(declare-fun lt!2709116 () Unit!170354)

(declare-fun choose!60131 (List!74774 List!74774) Unit!170354)

(assert (=> d!2380311 (= lt!2709116 (choose!60131 testedP!447 input!7927))))

(assert (=> d!2380311 (isPrefix!6645 testedP!447 input!7927)))

(assert (=> d!2380311 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1364 testedP!447 input!7927) lt!2709116)))

(declare-fun bs!1970024 () Bool)

(assert (= bs!1970024 d!2380311))

(assert (=> bs!1970024 m!8350448))

(assert (=> bs!1970024 m!8350446))

(declare-fun m!8350798 () Bool)

(assert (=> bs!1970024 m!8350798))

(declare-fun m!8350800 () Bool)

(assert (=> bs!1970024 m!8350800))

(declare-fun m!8350802 () Bool)

(assert (=> bs!1970024 m!8350802))

(assert (=> bs!1970024 m!8350446))

(declare-fun m!8350804 () Bool)

(assert (=> bs!1970024 m!8350804))

(assert (=> bs!1970024 m!8350800))

(assert (=> b!7973446 d!2380311))

(declare-fun b!7973904 () Bool)

(declare-fun e!4701236 () Bool)

(declare-fun e!4701238 () Bool)

(assert (=> b!7973904 (= e!4701236 e!4701238)))

(declare-fun res!3158886 () Bool)

(assert (=> b!7973904 (=> (not res!3158886) (not e!4701238))))

(assert (=> b!7973904 (= res!3158886 (not ((_ is Nil!74650) input!7927)))))

(declare-fun b!7973906 () Bool)

(assert (=> b!7973906 (= e!4701238 (isPrefix!6645 (tail!15818 lt!2708843) (tail!15818 input!7927)))))

(declare-fun b!7973905 () Bool)

(declare-fun res!3158888 () Bool)

(assert (=> b!7973905 (=> (not res!3158888) (not e!4701238))))

(assert (=> b!7973905 (= res!3158888 (= (head!16291 lt!2708843) (head!16291 input!7927)))))

(declare-fun d!2380313 () Bool)

(declare-fun e!4701237 () Bool)

(assert (=> d!2380313 e!4701237))

(declare-fun res!3158887 () Bool)

(assert (=> d!2380313 (=> res!3158887 e!4701237)))

(declare-fun lt!2709117 () Bool)

(assert (=> d!2380313 (= res!3158887 (not lt!2709117))))

(assert (=> d!2380313 (= lt!2709117 e!4701236)))

(declare-fun res!3158889 () Bool)

(assert (=> d!2380313 (=> res!3158889 e!4701236)))

(assert (=> d!2380313 (= res!3158889 ((_ is Nil!74650) lt!2708843))))

(assert (=> d!2380313 (= (isPrefix!6645 lt!2708843 input!7927) lt!2709117)))

(declare-fun b!7973907 () Bool)

(assert (=> b!7973907 (= e!4701237 (>= (size!43481 input!7927) (size!43481 lt!2708843)))))

(assert (= (and d!2380313 (not res!3158889)) b!7973904))

(assert (= (and b!7973904 res!3158886) b!7973905))

(assert (= (and b!7973905 res!3158888) b!7973906))

(assert (= (and d!2380313 (not res!3158887)) b!7973907))

(declare-fun m!8350806 () Bool)

(assert (=> b!7973906 m!8350806))

(assert (=> b!7973906 m!8350540))

(assert (=> b!7973906 m!8350806))

(assert (=> b!7973906 m!8350540))

(declare-fun m!8350808 () Bool)

(assert (=> b!7973906 m!8350808))

(declare-fun m!8350810 () Bool)

(assert (=> b!7973905 m!8350810))

(assert (=> b!7973905 m!8350544))

(assert (=> b!7973907 m!8350440))

(assert (=> b!7973907 m!8350730))

(assert (=> b!7973446 d!2380313))

(declare-fun b!7973917 () Bool)

(declare-fun e!4701243 () List!74774)

(assert (=> b!7973917 (= e!4701243 (Cons!74650 (h!81098 testedP!447) (++!18407 (t!390517 testedP!447) (Cons!74650 lt!2708848 Nil!74650))))))

(declare-fun b!7973916 () Bool)

(assert (=> b!7973916 (= e!4701243 (Cons!74650 lt!2708848 Nil!74650))))

(declare-fun b!7973918 () Bool)

(declare-fun res!3158894 () Bool)

(declare-fun e!4701244 () Bool)

(assert (=> b!7973918 (=> (not res!3158894) (not e!4701244))))

(declare-fun lt!2709120 () List!74774)

(assert (=> b!7973918 (= res!3158894 (= (size!43481 lt!2709120) (+ (size!43481 testedP!447) (size!43481 (Cons!74650 lt!2708848 Nil!74650)))))))

(declare-fun d!2380315 () Bool)

(assert (=> d!2380315 e!4701244))

(declare-fun res!3158895 () Bool)

(assert (=> d!2380315 (=> (not res!3158895) (not e!4701244))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15864 (List!74774) (InoxSet C!43428))

(assert (=> d!2380315 (= res!3158895 (= (content!15864 lt!2709120) ((_ map or) (content!15864 testedP!447) (content!15864 (Cons!74650 lt!2708848 Nil!74650)))))))

(assert (=> d!2380315 (= lt!2709120 e!4701243)))

(declare-fun c!1464342 () Bool)

(assert (=> d!2380315 (= c!1464342 ((_ is Nil!74650) testedP!447))))

(assert (=> d!2380315 (= (++!18407 testedP!447 (Cons!74650 lt!2708848 Nil!74650)) lt!2709120)))

(declare-fun b!7973919 () Bool)

(assert (=> b!7973919 (= e!4701244 (or (not (= (Cons!74650 lt!2708848 Nil!74650) Nil!74650)) (= lt!2709120 testedP!447)))))

(assert (= (and d!2380315 c!1464342) b!7973916))

(assert (= (and d!2380315 (not c!1464342)) b!7973917))

(assert (= (and d!2380315 res!3158895) b!7973918))

(assert (= (and b!7973918 res!3158894) b!7973919))

(declare-fun m!8350812 () Bool)

(assert (=> b!7973917 m!8350812))

(declare-fun m!8350814 () Bool)

(assert (=> b!7973918 m!8350814))

(assert (=> b!7973918 m!8350438))

(declare-fun m!8350816 () Bool)

(assert (=> b!7973918 m!8350816))

(declare-fun m!8350818 () Bool)

(assert (=> d!2380315 m!8350818))

(declare-fun m!8350820 () Bool)

(assert (=> d!2380315 m!8350820))

(declare-fun m!8350822 () Bool)

(assert (=> d!2380315 m!8350822))

(assert (=> b!7973446 d!2380315))

(declare-fun d!2380317 () Bool)

(declare-fun nullableFct!3808 (Regex!21545) Bool)

(assert (=> d!2380317 (= (nullable!9638 r!24602) (nullableFct!3808 r!24602))))

(declare-fun bs!1970025 () Bool)

(assert (= bs!1970025 d!2380317))

(declare-fun m!8350824 () Bool)

(assert (=> bs!1970025 m!8350824))

(assert (=> b!7973446 d!2380317))

(declare-fun d!2380319 () Bool)

(assert (=> d!2380319 (= (head!16291 lt!2708854) (h!81098 lt!2708854))))

(assert (=> b!7973446 d!2380319))

(declare-fun d!2380321 () Bool)

(declare-fun lt!2709123 () Regex!21545)

(assert (=> d!2380321 (validRegex!11849 lt!2709123)))

(declare-fun e!4701247 () Regex!21545)

(assert (=> d!2380321 (= lt!2709123 e!4701247)))

(declare-fun c!1464345 () Bool)

(assert (=> d!2380321 (= c!1464345 ((_ is Cons!74650) testedP!447))))

(assert (=> d!2380321 (validRegex!11849 baseR!116)))

(assert (=> d!2380321 (= (derivative!731 baseR!116 testedP!447) lt!2709123)))

(declare-fun b!7973924 () Bool)

(assert (=> b!7973924 (= e!4701247 (derivative!731 (derivativeStep!6565 baseR!116 (h!81098 testedP!447)) (t!390517 testedP!447)))))

(declare-fun b!7973925 () Bool)

(assert (=> b!7973925 (= e!4701247 baseR!116)))

(assert (= (and d!2380321 c!1464345) b!7973924))

(assert (= (and d!2380321 (not c!1464345)) b!7973925))

(declare-fun m!8350826 () Bool)

(assert (=> d!2380321 m!8350826))

(assert (=> d!2380321 m!8350436))

(declare-fun m!8350828 () Bool)

(assert (=> b!7973924 m!8350828))

(assert (=> b!7973924 m!8350828))

(declare-fun m!8350830 () Bool)

(assert (=> b!7973924 m!8350830))

(assert (=> b!7973447 d!2380321))

(declare-fun c!1464350 () Bool)

(declare-fun call!739990 () Bool)

(declare-fun c!1464351 () Bool)

(declare-fun bm!739985 () Bool)

(assert (=> bm!739985 (= call!739990 (validRegex!11849 (ite c!1464350 (reg!21874 baseR!116) (ite c!1464351 (regTwo!43603 baseR!116) (regTwo!43602 baseR!116)))))))

(declare-fun bm!739986 () Bool)

(declare-fun call!739991 () Bool)

(assert (=> bm!739986 (= call!739991 (validRegex!11849 (ite c!1464351 (regOne!43603 baseR!116) (regOne!43602 baseR!116))))))

(declare-fun b!7973944 () Bool)

(declare-fun e!4701267 () Bool)

(declare-fun call!739992 () Bool)

(assert (=> b!7973944 (= e!4701267 call!739992)))

(declare-fun b!7973945 () Bool)

(declare-fun e!4701266 () Bool)

(declare-fun e!4701263 () Bool)

(assert (=> b!7973945 (= e!4701266 e!4701263)))

(assert (=> b!7973945 (= c!1464351 ((_ is Union!21545) baseR!116))))

(declare-fun b!7973946 () Bool)

(declare-fun e!4701265 () Bool)

(assert (=> b!7973946 (= e!4701265 call!739992)))

(declare-fun b!7973947 () Bool)

(declare-fun e!4701262 () Bool)

(assert (=> b!7973947 (= e!4701262 e!4701266)))

(assert (=> b!7973947 (= c!1464350 ((_ is Star!21545) baseR!116))))

(declare-fun b!7973948 () Bool)

(declare-fun res!3158909 () Bool)

(declare-fun e!4701264 () Bool)

(assert (=> b!7973948 (=> res!3158909 e!4701264)))

(assert (=> b!7973948 (= res!3158909 (not ((_ is Concat!30544) baseR!116)))))

(assert (=> b!7973948 (= e!4701263 e!4701264)))

(declare-fun b!7973949 () Bool)

(declare-fun e!4701268 () Bool)

(assert (=> b!7973949 (= e!4701266 e!4701268)))

(declare-fun res!3158908 () Bool)

(assert (=> b!7973949 (= res!3158908 (not (nullable!9638 (reg!21874 baseR!116))))))

(assert (=> b!7973949 (=> (not res!3158908) (not e!4701268))))

(declare-fun b!7973950 () Bool)

(declare-fun res!3158907 () Bool)

(assert (=> b!7973950 (=> (not res!3158907) (not e!4701267))))

(assert (=> b!7973950 (= res!3158907 call!739991)))

(assert (=> b!7973950 (= e!4701263 e!4701267)))

(declare-fun b!7973951 () Bool)

(assert (=> b!7973951 (= e!4701264 e!4701265)))

(declare-fun res!3158906 () Bool)

(assert (=> b!7973951 (=> (not res!3158906) (not e!4701265))))

(assert (=> b!7973951 (= res!3158906 call!739991)))

(declare-fun b!7973952 () Bool)

(assert (=> b!7973952 (= e!4701268 call!739990)))

(declare-fun d!2380323 () Bool)

(declare-fun res!3158910 () Bool)

(assert (=> d!2380323 (=> res!3158910 e!4701262)))

(assert (=> d!2380323 (= res!3158910 ((_ is ElementMatch!21545) baseR!116))))

(assert (=> d!2380323 (= (validRegex!11849 baseR!116) e!4701262)))

(declare-fun bm!739987 () Bool)

(assert (=> bm!739987 (= call!739992 call!739990)))

(assert (= (and d!2380323 (not res!3158910)) b!7973947))

(assert (= (and b!7973947 c!1464350) b!7973949))

(assert (= (and b!7973947 (not c!1464350)) b!7973945))

(assert (= (and b!7973949 res!3158908) b!7973952))

(assert (= (and b!7973945 c!1464351) b!7973950))

(assert (= (and b!7973945 (not c!1464351)) b!7973948))

(assert (= (and b!7973950 res!3158907) b!7973944))

(assert (= (and b!7973948 (not res!3158909)) b!7973951))

(assert (= (and b!7973951 res!3158906) b!7973946))

(assert (= (or b!7973944 b!7973946) bm!739987))

(assert (= (or b!7973950 b!7973951) bm!739986))

(assert (= (or b!7973952 bm!739987) bm!739985))

(declare-fun m!8350832 () Bool)

(assert (=> bm!739985 m!8350832))

(declare-fun m!8350834 () Bool)

(assert (=> bm!739986 m!8350834))

(declare-fun m!8350836 () Bool)

(assert (=> b!7973949 m!8350836))

(assert (=> start!751952 d!2380323))

(declare-fun d!2380325 () Bool)

(assert (=> d!2380325 (<= (size!43481 testedP!447) (size!43481 input!7927))))

(declare-fun lt!2709126 () Unit!170354)

(declare-fun choose!60133 (List!74774 List!74774) Unit!170354)

(assert (=> d!2380325 (= lt!2709126 (choose!60133 testedP!447 input!7927))))

(assert (=> d!2380325 (isPrefix!6645 testedP!447 input!7927)))

(assert (=> d!2380325 (= (lemmaIsPrefixThenSmallerEqSize!1160 testedP!447 input!7927) lt!2709126)))

(declare-fun bs!1970026 () Bool)

(assert (= bs!1970026 d!2380325))

(assert (=> bs!1970026 m!8350438))

(assert (=> bs!1970026 m!8350440))

(declare-fun m!8350838 () Bool)

(assert (=> bs!1970026 m!8350838))

(assert (=> bs!1970026 m!8350448))

(assert (=> b!7973452 d!2380325))

(declare-fun d!2380327 () Bool)

(declare-fun lt!2709129 () Int)

(assert (=> d!2380327 (>= lt!2709129 0)))

(declare-fun e!4701271 () Int)

(assert (=> d!2380327 (= lt!2709129 e!4701271)))

(declare-fun c!1464354 () Bool)

(assert (=> d!2380327 (= c!1464354 ((_ is Nil!74650) input!7927))))

(assert (=> d!2380327 (= (size!43481 input!7927) lt!2709129)))

(declare-fun b!7973957 () Bool)

(assert (=> b!7973957 (= e!4701271 0)))

(declare-fun b!7973958 () Bool)

(assert (=> b!7973958 (= e!4701271 (+ 1 (size!43481 (t!390517 input!7927))))))

(assert (= (and d!2380327 c!1464354) b!7973957))

(assert (= (and d!2380327 (not c!1464354)) b!7973958))

(declare-fun m!8350840 () Bool)

(assert (=> b!7973958 m!8350840))

(assert (=> b!7973436 d!2380327))

(declare-fun b!7973959 () Bool)

(declare-fun e!4701274 () tuple2!70748)

(assert (=> b!7973959 (= e!4701274 (tuple2!70749 testedP!447 lt!2708854))))

(declare-fun bm!739988 () Bool)

(declare-fun call!739993 () Unit!170354)

(assert (=> bm!739988 (= call!739993 (lemmaIsPrefixRefl!4111 input!7927 input!7927))))

(declare-fun b!7973960 () Bool)

(declare-fun e!4701278 () Bool)

(declare-fun e!4701273 () Bool)

(assert (=> b!7973960 (= e!4701278 e!4701273)))

(declare-fun res!3158912 () Bool)

(assert (=> b!7973960 (=> res!3158912 e!4701273)))

(declare-fun lt!2709155 () tuple2!70748)

(assert (=> b!7973960 (= res!3158912 (isEmpty!42949 (_1!38677 lt!2709155)))))

(declare-fun bm!739989 () Bool)

(declare-fun call!739998 () List!74774)

(assert (=> bm!739989 (= call!739998 (tail!15818 lt!2708854))))

(declare-fun b!7973961 () Bool)

(declare-fun e!4701276 () tuple2!70748)

(assert (=> b!7973961 (= e!4701276 e!4701274)))

(declare-fun lt!2709154 () tuple2!70748)

(declare-fun call!739994 () tuple2!70748)

(assert (=> b!7973961 (= lt!2709154 call!739994)))

(declare-fun c!1464359 () Bool)

(assert (=> b!7973961 (= c!1464359 (isEmpty!42949 (_1!38677 lt!2709154)))))

(declare-fun bm!739990 () Bool)

(declare-fun call!739997 () Regex!21545)

(declare-fun call!739999 () C!43428)

(assert (=> bm!739990 (= call!739997 (derivativeStep!6565 r!24602 call!739999))))

(declare-fun bm!739991 () Bool)

(declare-fun call!740000 () Unit!170354)

(assert (=> bm!739991 (= call!740000 (lemmaIsPrefixSameLengthThenSameList!1689 input!7927 testedP!447 input!7927))))

(declare-fun b!7973962 () Bool)

(declare-fun e!4701277 () tuple2!70748)

(assert (=> b!7973962 (= e!4701277 (tuple2!70749 Nil!74650 input!7927))))

(declare-fun bm!739992 () Bool)

(declare-fun call!739996 () Bool)

(assert (=> bm!739992 (= call!739996 (isPrefix!6645 input!7927 input!7927))))

(declare-fun bm!739993 () Bool)

(declare-fun lt!2709146 () List!74774)

(assert (=> bm!739993 (= call!739994 (findLongestMatchInner!2324 call!739997 lt!2709146 (+ lt!2708853 1) call!739998 input!7927 lt!2708844))))

(declare-fun b!7973963 () Bool)

(assert (=> b!7973963 (= e!4701274 lt!2709154)))

(declare-fun bm!739994 () Bool)

(declare-fun call!739995 () Bool)

(assert (=> bm!739994 (= call!739995 (nullable!9638 r!24602))))

(declare-fun d!2380329 () Bool)

(assert (=> d!2380329 e!4701278))

(declare-fun res!3158911 () Bool)

(assert (=> d!2380329 (=> (not res!3158911) (not e!4701278))))

(assert (=> d!2380329 (= res!3158911 (= (++!18407 (_1!38677 lt!2709155) (_2!38677 lt!2709155)) input!7927))))

(declare-fun e!4701275 () tuple2!70748)

(assert (=> d!2380329 (= lt!2709155 e!4701275)))

(declare-fun c!1464357 () Bool)

(assert (=> d!2380329 (= c!1464357 (lostCause!1998 r!24602))))

(declare-fun lt!2709139 () Unit!170354)

(declare-fun Unit!170367 () Unit!170354)

(assert (=> d!2380329 (= lt!2709139 Unit!170367)))

(assert (=> d!2380329 (= (getSuffix!3846 input!7927 testedP!447) lt!2708854)))

(declare-fun lt!2709136 () Unit!170354)

(declare-fun lt!2709137 () Unit!170354)

(assert (=> d!2380329 (= lt!2709136 lt!2709137)))

(declare-fun lt!2709134 () List!74774)

(assert (=> d!2380329 (= lt!2708854 lt!2709134)))

(assert (=> d!2380329 (= lt!2709137 (lemmaSamePrefixThenSameSuffix!3014 testedP!447 lt!2708854 testedP!447 lt!2709134 input!7927))))

(assert (=> d!2380329 (= lt!2709134 (getSuffix!3846 input!7927 testedP!447))))

(declare-fun lt!2709150 () Unit!170354)

(declare-fun lt!2709140 () Unit!170354)

(assert (=> d!2380329 (= lt!2709150 lt!2709140)))

(assert (=> d!2380329 (isPrefix!6645 testedP!447 (++!18407 testedP!447 lt!2708854))))

(assert (=> d!2380329 (= lt!2709140 (lemmaConcatTwoListThenFirstIsPrefix!3876 testedP!447 lt!2708854))))

(assert (=> d!2380329 (validRegex!11849 r!24602)))

(assert (=> d!2380329 (= (findLongestMatchInner!2324 r!24602 testedP!447 lt!2708853 lt!2708854 input!7927 lt!2708844) lt!2709155)))

(declare-fun b!7973964 () Bool)

(assert (=> b!7973964 (= e!4701277 (tuple2!70749 testedP!447 Nil!74650))))

(declare-fun bm!739995 () Bool)

(assert (=> bm!739995 (= call!739999 (head!16291 lt!2708854))))

(declare-fun b!7973965 () Bool)

(assert (=> b!7973965 (= e!4701273 (>= (size!43481 (_1!38677 lt!2709155)) (size!43481 testedP!447)))))

(declare-fun b!7973966 () Bool)

(declare-fun e!4701272 () Unit!170354)

(declare-fun Unit!170368 () Unit!170354)

(assert (=> b!7973966 (= e!4701272 Unit!170368)))

(declare-fun b!7973967 () Bool)

(assert (=> b!7973967 (= e!4701275 (tuple2!70749 Nil!74650 input!7927))))

(declare-fun b!7973968 () Bool)

(declare-fun Unit!170369 () Unit!170354)

(assert (=> b!7973968 (= e!4701272 Unit!170369)))

(declare-fun lt!2709138 () Unit!170354)

(assert (=> b!7973968 (= lt!2709138 call!739993)))

(assert (=> b!7973968 call!739996))

(declare-fun lt!2709131 () Unit!170354)

(assert (=> b!7973968 (= lt!2709131 lt!2709138)))

(declare-fun lt!2709149 () Unit!170354)

(assert (=> b!7973968 (= lt!2709149 call!740000)))

(assert (=> b!7973968 (= input!7927 testedP!447)))

(declare-fun lt!2709141 () Unit!170354)

(assert (=> b!7973968 (= lt!2709141 lt!2709149)))

(assert (=> b!7973968 false))

(declare-fun b!7973969 () Bool)

(assert (=> b!7973969 (= e!4701276 call!739994)))

(declare-fun b!7973970 () Bool)

(declare-fun e!4701279 () tuple2!70748)

(assert (=> b!7973970 (= e!4701275 e!4701279)))

(declare-fun c!1464360 () Bool)

(assert (=> b!7973970 (= c!1464360 (= lt!2708853 lt!2708844))))

(declare-fun b!7973971 () Bool)

(declare-fun c!1464358 () Bool)

(assert (=> b!7973971 (= c!1464358 call!739995)))

(declare-fun lt!2709152 () Unit!170354)

(declare-fun lt!2709145 () Unit!170354)

(assert (=> b!7973971 (= lt!2709152 lt!2709145)))

(assert (=> b!7973971 (= input!7927 testedP!447)))

(assert (=> b!7973971 (= lt!2709145 call!740000)))

(declare-fun lt!2709130 () Unit!170354)

(declare-fun lt!2709148 () Unit!170354)

(assert (=> b!7973971 (= lt!2709130 lt!2709148)))

(assert (=> b!7973971 call!739996))

(assert (=> b!7973971 (= lt!2709148 call!739993)))

(assert (=> b!7973971 (= e!4701279 e!4701277)))

(declare-fun b!7973972 () Bool)

(declare-fun c!1464356 () Bool)

(assert (=> b!7973972 (= c!1464356 call!739995)))

(declare-fun lt!2709135 () Unit!170354)

(declare-fun lt!2709132 () Unit!170354)

(assert (=> b!7973972 (= lt!2709135 lt!2709132)))

(declare-fun lt!2709157 () List!74774)

(declare-fun lt!2709143 () C!43428)

(assert (=> b!7973972 (= (++!18407 (++!18407 testedP!447 (Cons!74650 lt!2709143 Nil!74650)) lt!2709157) input!7927)))

(assert (=> b!7973972 (= lt!2709132 (lemmaMoveElementToOtherListKeepsConcatEq!3554 testedP!447 lt!2709143 lt!2709157 input!7927))))

(assert (=> b!7973972 (= lt!2709157 (tail!15818 lt!2708854))))

(assert (=> b!7973972 (= lt!2709143 (head!16291 lt!2708854))))

(declare-fun lt!2709151 () Unit!170354)

(declare-fun lt!2709142 () Unit!170354)

(assert (=> b!7973972 (= lt!2709151 lt!2709142)))

(assert (=> b!7973972 (isPrefix!6645 (++!18407 testedP!447 (Cons!74650 (head!16291 (getSuffix!3846 input!7927 testedP!447)) Nil!74650)) input!7927)))

(assert (=> b!7973972 (= lt!2709142 (lemmaAddHeadSuffixToPrefixStillPrefix!1364 testedP!447 input!7927))))

(declare-fun lt!2709144 () Unit!170354)

(declare-fun lt!2709153 () Unit!170354)

(assert (=> b!7973972 (= lt!2709144 lt!2709153)))

(assert (=> b!7973972 (= lt!2709153 (lemmaAddHeadSuffixToPrefixStillPrefix!1364 testedP!447 input!7927))))

(assert (=> b!7973972 (= lt!2709146 (++!18407 testedP!447 (Cons!74650 (head!16291 lt!2708854) Nil!74650)))))

(declare-fun lt!2709156 () Unit!170354)

(assert (=> b!7973972 (= lt!2709156 e!4701272)))

(declare-fun c!1464355 () Bool)

(assert (=> b!7973972 (= c!1464355 (= (size!43481 testedP!447) (size!43481 input!7927)))))

(declare-fun lt!2709133 () Unit!170354)

(declare-fun lt!2709147 () Unit!170354)

(assert (=> b!7973972 (= lt!2709133 lt!2709147)))

(assert (=> b!7973972 (<= (size!43481 testedP!447) (size!43481 input!7927))))

(assert (=> b!7973972 (= lt!2709147 (lemmaIsPrefixThenSmallerEqSize!1160 testedP!447 input!7927))))

(assert (=> b!7973972 (= e!4701279 e!4701276)))

(assert (= (and d!2380329 c!1464357) b!7973967))

(assert (= (and d!2380329 (not c!1464357)) b!7973970))

(assert (= (and b!7973970 c!1464360) b!7973971))

(assert (= (and b!7973970 (not c!1464360)) b!7973972))

(assert (= (and b!7973971 c!1464358) b!7973964))

(assert (= (and b!7973971 (not c!1464358)) b!7973962))

(assert (= (and b!7973972 c!1464355) b!7973968))

(assert (= (and b!7973972 (not c!1464355)) b!7973966))

(assert (= (and b!7973972 c!1464356) b!7973961))

(assert (= (and b!7973972 (not c!1464356)) b!7973969))

(assert (= (and b!7973961 c!1464359) b!7973959))

(assert (= (and b!7973961 (not c!1464359)) b!7973963))

(assert (= (or b!7973961 b!7973969) bm!739995))

(assert (= (or b!7973961 b!7973969) bm!739989))

(assert (= (or b!7973961 b!7973969) bm!739990))

(assert (= (or b!7973961 b!7973969) bm!739993))

(assert (= (or b!7973971 b!7973972) bm!739994))

(assert (= (or b!7973971 b!7973968) bm!739991))

(assert (= (or b!7973971 b!7973968) bm!739988))

(assert (= (or b!7973971 b!7973968) bm!739992))

(assert (= (and d!2380329 res!3158911) b!7973960))

(assert (= (and b!7973960 (not res!3158912)) b!7973965))

(declare-fun m!8350842 () Bool)

(assert (=> b!7973965 m!8350842))

(assert (=> b!7973965 m!8350438))

(declare-fun m!8350844 () Bool)

(assert (=> bm!739990 m!8350844))

(assert (=> bm!739992 m!8350430))

(declare-fun m!8350846 () Bool)

(assert (=> bm!739993 m!8350846))

(assert (=> b!7973972 m!8350440))

(assert (=> b!7973972 m!8350800))

(assert (=> b!7973972 m!8350802))

(declare-fun m!8350848 () Bool)

(assert (=> b!7973972 m!8350848))

(declare-fun m!8350850 () Bool)

(assert (=> b!7973972 m!8350850))

(assert (=> b!7973972 m!8350446))

(assert (=> b!7973972 m!8350800))

(declare-fun m!8350852 () Bool)

(assert (=> b!7973972 m!8350852))

(assert (=> b!7973972 m!8350848))

(assert (=> b!7973972 m!8350434))

(assert (=> b!7973972 m!8350460))

(declare-fun m!8350854 () Bool)

(assert (=> b!7973972 m!8350854))

(assert (=> b!7973972 m!8350446))

(assert (=> b!7973972 m!8350798))

(assert (=> b!7973972 m!8350472))

(assert (=> b!7973972 m!8350438))

(assert (=> b!7973972 m!8350468))

(declare-fun m!8350856 () Bool)

(assert (=> b!7973961 m!8350856))

(declare-fun m!8350858 () Bool)

(assert (=> d!2380329 m!8350858))

(declare-fun m!8350860 () Bool)

(assert (=> d!2380329 m!8350860))

(declare-fun m!8350862 () Bool)

(assert (=> d!2380329 m!8350862))

(declare-fun m!8350864 () Bool)

(assert (=> d!2380329 m!8350864))

(assert (=> d!2380329 m!8350446))

(declare-fun m!8350866 () Bool)

(assert (=> d!2380329 m!8350866))

(assert (=> d!2380329 m!8350784))

(assert (=> d!2380329 m!8350866))

(declare-fun m!8350868 () Bool)

(assert (=> d!2380329 m!8350868))

(assert (=> bm!739989 m!8350460))

(assert (=> bm!739991 m!8350432))

(declare-fun m!8350870 () Bool)

(assert (=> b!7973960 m!8350870))

(assert (=> bm!739994 m!8350470))

(assert (=> bm!739988 m!8350428))

(assert (=> bm!739995 m!8350468))

(assert (=> b!7973436 d!2380329))

(declare-fun d!2380331 () Bool)

(declare-fun lt!2709160 () List!74774)

(assert (=> d!2380331 (= (++!18407 testedP!447 lt!2709160) input!7927)))

(declare-fun e!4701282 () List!74774)

(assert (=> d!2380331 (= lt!2709160 e!4701282)))

(declare-fun c!1464363 () Bool)

(assert (=> d!2380331 (= c!1464363 ((_ is Cons!74650) testedP!447))))

(assert (=> d!2380331 (>= (size!43481 input!7927) (size!43481 testedP!447))))

(assert (=> d!2380331 (= (getSuffix!3846 input!7927 testedP!447) lt!2709160)))

(declare-fun b!7973977 () Bool)

(assert (=> b!7973977 (= e!4701282 (getSuffix!3846 (tail!15818 input!7927) (t!390517 testedP!447)))))

(declare-fun b!7973978 () Bool)

(assert (=> b!7973978 (= e!4701282 input!7927)))

(assert (= (and d!2380331 c!1464363) b!7973977))

(assert (= (and d!2380331 (not c!1464363)) b!7973978))

(declare-fun m!8350872 () Bool)

(assert (=> d!2380331 m!8350872))

(assert (=> d!2380331 m!8350440))

(assert (=> d!2380331 m!8350438))

(assert (=> b!7973977 m!8350540))

(assert (=> b!7973977 m!8350540))

(declare-fun m!8350874 () Bool)

(assert (=> b!7973977 m!8350874))

(assert (=> b!7973436 d!2380331))

(declare-fun d!2380333 () Bool)

(declare-fun lt!2709161 () Int)

(assert (=> d!2380333 (>= lt!2709161 0)))

(declare-fun e!4701283 () Int)

(assert (=> d!2380333 (= lt!2709161 e!4701283)))

(declare-fun c!1464364 () Bool)

(assert (=> d!2380333 (= c!1464364 ((_ is Nil!74650) testedP!447))))

(assert (=> d!2380333 (= (size!43481 testedP!447) lt!2709161)))

(declare-fun b!7973979 () Bool)

(assert (=> b!7973979 (= e!4701283 0)))

(declare-fun b!7973980 () Bool)

(assert (=> b!7973980 (= e!4701283 (+ 1 (size!43481 (t!390517 testedP!447))))))

(assert (= (and d!2380333 c!1464364) b!7973979))

(assert (= (and d!2380333 (not c!1464364)) b!7973980))

(declare-fun m!8350876 () Bool)

(assert (=> b!7973980 m!8350876))

(assert (=> b!7973436 d!2380333))

(declare-fun d!2380335 () Bool)

(assert (=> d!2380335 (= (isEmpty!42949 (_1!38677 lt!2708851)) ((_ is Nil!74650) (_1!38677 lt!2708851)))))

(assert (=> b!7973436 d!2380335))

(declare-fun b!7973985 () Bool)

(declare-fun e!4701286 () Bool)

(declare-fun tp!2377625 () Bool)

(assert (=> b!7973985 (= e!4701286 (and tp_is_empty!53633 tp!2377625))))

(assert (=> b!7973450 (= tp!2377555 e!4701286)))

(assert (= (and b!7973450 ((_ is Cons!74650) (t!390517 input!7927))) b!7973985))

(declare-fun b!7973998 () Bool)

(declare-fun e!4701289 () Bool)

(declare-fun tp!2377637 () Bool)

(assert (=> b!7973998 (= e!4701289 tp!2377637)))

(declare-fun b!7973996 () Bool)

(assert (=> b!7973996 (= e!4701289 tp_is_empty!53633)))

(declare-fun b!7973997 () Bool)

(declare-fun tp!2377636 () Bool)

(declare-fun tp!2377638 () Bool)

(assert (=> b!7973997 (= e!4701289 (and tp!2377636 tp!2377638))))

(declare-fun b!7973999 () Bool)

(declare-fun tp!2377639 () Bool)

(declare-fun tp!2377640 () Bool)

(assert (=> b!7973999 (= e!4701289 (and tp!2377639 tp!2377640))))

(assert (=> b!7973440 (= tp!2377553 e!4701289)))

(assert (= (and b!7973440 ((_ is ElementMatch!21545) (reg!21874 baseR!116))) b!7973996))

(assert (= (and b!7973440 ((_ is Concat!30544) (reg!21874 baseR!116))) b!7973997))

(assert (= (and b!7973440 ((_ is Star!21545) (reg!21874 baseR!116))) b!7973998))

(assert (= (and b!7973440 ((_ is Union!21545) (reg!21874 baseR!116))) b!7973999))

(declare-fun b!7974000 () Bool)

(declare-fun e!4701290 () Bool)

(declare-fun tp!2377641 () Bool)

(assert (=> b!7974000 (= e!4701290 (and tp_is_empty!53633 tp!2377641))))

(assert (=> b!7973449 (= tp!2377547 e!4701290)))

(assert (= (and b!7973449 ((_ is Cons!74650) (t!390517 testedP!447))) b!7974000))

(declare-fun b!7974003 () Bool)

(declare-fun e!4701291 () Bool)

(declare-fun tp!2377643 () Bool)

(assert (=> b!7974003 (= e!4701291 tp!2377643)))

(declare-fun b!7974001 () Bool)

(assert (=> b!7974001 (= e!4701291 tp_is_empty!53633)))

(declare-fun b!7974002 () Bool)

(declare-fun tp!2377642 () Bool)

(declare-fun tp!2377644 () Bool)

(assert (=> b!7974002 (= e!4701291 (and tp!2377642 tp!2377644))))

(declare-fun b!7974004 () Bool)

(declare-fun tp!2377645 () Bool)

(declare-fun tp!2377646 () Bool)

(assert (=> b!7974004 (= e!4701291 (and tp!2377645 tp!2377646))))

(assert (=> b!7973454 (= tp!2377551 e!4701291)))

(assert (= (and b!7973454 ((_ is ElementMatch!21545) (regOne!43602 r!24602))) b!7974001))

(assert (= (and b!7973454 ((_ is Concat!30544) (regOne!43602 r!24602))) b!7974002))

(assert (= (and b!7973454 ((_ is Star!21545) (regOne!43602 r!24602))) b!7974003))

(assert (= (and b!7973454 ((_ is Union!21545) (regOne!43602 r!24602))) b!7974004))

(declare-fun b!7974007 () Bool)

(declare-fun e!4701292 () Bool)

(declare-fun tp!2377648 () Bool)

(assert (=> b!7974007 (= e!4701292 tp!2377648)))

(declare-fun b!7974005 () Bool)

(assert (=> b!7974005 (= e!4701292 tp_is_empty!53633)))

(declare-fun b!7974006 () Bool)

(declare-fun tp!2377647 () Bool)

(declare-fun tp!2377649 () Bool)

(assert (=> b!7974006 (= e!4701292 (and tp!2377647 tp!2377649))))

(declare-fun b!7974008 () Bool)

(declare-fun tp!2377650 () Bool)

(declare-fun tp!2377651 () Bool)

(assert (=> b!7974008 (= e!4701292 (and tp!2377650 tp!2377651))))

(assert (=> b!7973454 (= tp!2377558 e!4701292)))

(assert (= (and b!7973454 ((_ is ElementMatch!21545) (regTwo!43602 r!24602))) b!7974005))

(assert (= (and b!7973454 ((_ is Concat!30544) (regTwo!43602 r!24602))) b!7974006))

(assert (= (and b!7973454 ((_ is Star!21545) (regTwo!43602 r!24602))) b!7974007))

(assert (= (and b!7973454 ((_ is Union!21545) (regTwo!43602 r!24602))) b!7974008))

(declare-fun b!7974011 () Bool)

(declare-fun e!4701293 () Bool)

(declare-fun tp!2377653 () Bool)

(assert (=> b!7974011 (= e!4701293 tp!2377653)))

(declare-fun b!7974009 () Bool)

(assert (=> b!7974009 (= e!4701293 tp_is_empty!53633)))

(declare-fun b!7974010 () Bool)

(declare-fun tp!2377652 () Bool)

(declare-fun tp!2377654 () Bool)

(assert (=> b!7974010 (= e!4701293 (and tp!2377652 tp!2377654))))

(declare-fun b!7974012 () Bool)

(declare-fun tp!2377655 () Bool)

(declare-fun tp!2377656 () Bool)

(assert (=> b!7974012 (= e!4701293 (and tp!2377655 tp!2377656))))

(assert (=> b!7973453 (= tp!2377549 e!4701293)))

(assert (= (and b!7973453 ((_ is ElementMatch!21545) (regOne!43602 baseR!116))) b!7974009))

(assert (= (and b!7973453 ((_ is Concat!30544) (regOne!43602 baseR!116))) b!7974010))

(assert (= (and b!7973453 ((_ is Star!21545) (regOne!43602 baseR!116))) b!7974011))

(assert (= (and b!7973453 ((_ is Union!21545) (regOne!43602 baseR!116))) b!7974012))

(declare-fun b!7974015 () Bool)

(declare-fun e!4701294 () Bool)

(declare-fun tp!2377658 () Bool)

(assert (=> b!7974015 (= e!4701294 tp!2377658)))

(declare-fun b!7974013 () Bool)

(assert (=> b!7974013 (= e!4701294 tp_is_empty!53633)))

(declare-fun b!7974014 () Bool)

(declare-fun tp!2377657 () Bool)

(declare-fun tp!2377659 () Bool)

(assert (=> b!7974014 (= e!4701294 (and tp!2377657 tp!2377659))))

(declare-fun b!7974016 () Bool)

(declare-fun tp!2377660 () Bool)

(declare-fun tp!2377661 () Bool)

(assert (=> b!7974016 (= e!4701294 (and tp!2377660 tp!2377661))))

(assert (=> b!7973453 (= tp!2377557 e!4701294)))

(assert (= (and b!7973453 ((_ is ElementMatch!21545) (regTwo!43602 baseR!116))) b!7974013))

(assert (= (and b!7973453 ((_ is Concat!30544) (regTwo!43602 baseR!116))) b!7974014))

(assert (= (and b!7973453 ((_ is Star!21545) (regTwo!43602 baseR!116))) b!7974015))

(assert (= (and b!7973453 ((_ is Union!21545) (regTwo!43602 baseR!116))) b!7974016))

(declare-fun b!7974019 () Bool)

(declare-fun e!4701295 () Bool)

(declare-fun tp!2377663 () Bool)

(assert (=> b!7974019 (= e!4701295 tp!2377663)))

(declare-fun b!7974017 () Bool)

(assert (=> b!7974017 (= e!4701295 tp_is_empty!53633)))

(declare-fun b!7974018 () Bool)

(declare-fun tp!2377662 () Bool)

(declare-fun tp!2377664 () Bool)

(assert (=> b!7974018 (= e!4701295 (and tp!2377662 tp!2377664))))

(declare-fun b!7974020 () Bool)

(declare-fun tp!2377665 () Bool)

(declare-fun tp!2377666 () Bool)

(assert (=> b!7974020 (= e!4701295 (and tp!2377665 tp!2377666))))

(assert (=> b!7973437 (= tp!2377550 e!4701295)))

(assert (= (and b!7973437 ((_ is ElementMatch!21545) (regOne!43603 baseR!116))) b!7974017))

(assert (= (and b!7973437 ((_ is Concat!30544) (regOne!43603 baseR!116))) b!7974018))

(assert (= (and b!7973437 ((_ is Star!21545) (regOne!43603 baseR!116))) b!7974019))

(assert (= (and b!7973437 ((_ is Union!21545) (regOne!43603 baseR!116))) b!7974020))

(declare-fun b!7974023 () Bool)

(declare-fun e!4701296 () Bool)

(declare-fun tp!2377668 () Bool)

(assert (=> b!7974023 (= e!4701296 tp!2377668)))

(declare-fun b!7974021 () Bool)

(assert (=> b!7974021 (= e!4701296 tp_is_empty!53633)))

(declare-fun b!7974022 () Bool)

(declare-fun tp!2377667 () Bool)

(declare-fun tp!2377669 () Bool)

(assert (=> b!7974022 (= e!4701296 (and tp!2377667 tp!2377669))))

(declare-fun b!7974024 () Bool)

(declare-fun tp!2377670 () Bool)

(declare-fun tp!2377671 () Bool)

(assert (=> b!7974024 (= e!4701296 (and tp!2377670 tp!2377671))))

(assert (=> b!7973437 (= tp!2377554 e!4701296)))

(assert (= (and b!7973437 ((_ is ElementMatch!21545) (regTwo!43603 baseR!116))) b!7974021))

(assert (= (and b!7973437 ((_ is Concat!30544) (regTwo!43603 baseR!116))) b!7974022))

(assert (= (and b!7973437 ((_ is Star!21545) (regTwo!43603 baseR!116))) b!7974023))

(assert (= (and b!7973437 ((_ is Union!21545) (regTwo!43603 baseR!116))) b!7974024))

(declare-fun b!7974027 () Bool)

(declare-fun e!4701297 () Bool)

(declare-fun tp!2377673 () Bool)

(assert (=> b!7974027 (= e!4701297 tp!2377673)))

(declare-fun b!7974025 () Bool)

(assert (=> b!7974025 (= e!4701297 tp_is_empty!53633)))

(declare-fun b!7974026 () Bool)

(declare-fun tp!2377672 () Bool)

(declare-fun tp!2377674 () Bool)

(assert (=> b!7974026 (= e!4701297 (and tp!2377672 tp!2377674))))

(declare-fun b!7974028 () Bool)

(declare-fun tp!2377675 () Bool)

(declare-fun tp!2377676 () Bool)

(assert (=> b!7974028 (= e!4701297 (and tp!2377675 tp!2377676))))

(assert (=> b!7973442 (= tp!2377548 e!4701297)))

(assert (= (and b!7973442 ((_ is ElementMatch!21545) (regOne!43603 r!24602))) b!7974025))

(assert (= (and b!7973442 ((_ is Concat!30544) (regOne!43603 r!24602))) b!7974026))

(assert (= (and b!7973442 ((_ is Star!21545) (regOne!43603 r!24602))) b!7974027))

(assert (= (and b!7973442 ((_ is Union!21545) (regOne!43603 r!24602))) b!7974028))

(declare-fun b!7974031 () Bool)

(declare-fun e!4701298 () Bool)

(declare-fun tp!2377678 () Bool)

(assert (=> b!7974031 (= e!4701298 tp!2377678)))

(declare-fun b!7974029 () Bool)

(assert (=> b!7974029 (= e!4701298 tp_is_empty!53633)))

(declare-fun b!7974030 () Bool)

(declare-fun tp!2377677 () Bool)

(declare-fun tp!2377679 () Bool)

(assert (=> b!7974030 (= e!4701298 (and tp!2377677 tp!2377679))))

(declare-fun b!7974032 () Bool)

(declare-fun tp!2377680 () Bool)

(declare-fun tp!2377681 () Bool)

(assert (=> b!7974032 (= e!4701298 (and tp!2377680 tp!2377681))))

(assert (=> b!7973442 (= tp!2377552 e!4701298)))

(assert (= (and b!7973442 ((_ is ElementMatch!21545) (regTwo!43603 r!24602))) b!7974029))

(assert (= (and b!7973442 ((_ is Concat!30544) (regTwo!43603 r!24602))) b!7974030))

(assert (= (and b!7973442 ((_ is Star!21545) (regTwo!43603 r!24602))) b!7974031))

(assert (= (and b!7973442 ((_ is Union!21545) (regTwo!43603 r!24602))) b!7974032))

(declare-fun b!7974035 () Bool)

(declare-fun e!4701299 () Bool)

(declare-fun tp!2377683 () Bool)

(assert (=> b!7974035 (= e!4701299 tp!2377683)))

(declare-fun b!7974033 () Bool)

(assert (=> b!7974033 (= e!4701299 tp_is_empty!53633)))

(declare-fun b!7974034 () Bool)

(declare-fun tp!2377682 () Bool)

(declare-fun tp!2377684 () Bool)

(assert (=> b!7974034 (= e!4701299 (and tp!2377682 tp!2377684))))

(declare-fun b!7974036 () Bool)

(declare-fun tp!2377685 () Bool)

(declare-fun tp!2377686 () Bool)

(assert (=> b!7974036 (= e!4701299 (and tp!2377685 tp!2377686))))

(assert (=> b!7973443 (= tp!2377556 e!4701299)))

(assert (= (and b!7973443 ((_ is ElementMatch!21545) (reg!21874 r!24602))) b!7974033))

(assert (= (and b!7973443 ((_ is Concat!30544) (reg!21874 r!24602))) b!7974034))

(assert (= (and b!7973443 ((_ is Star!21545) (reg!21874 r!24602))) b!7974035))

(assert (= (and b!7973443 ((_ is Union!21545) (reg!21874 r!24602))) b!7974036))

(check-sat (not b!7973977) (not b!7974014) (not b!7973520) (not b!7973998) (not b!7974015) (not b!7973531) (not b!7974012) (not b!7973534) (not b!7973514) (not bm!739962) (not b!7973903) (not b!7973999) (not b!7973905) (not b!7973965) (not bm!739961) (not b!7974010) (not bm!739993) (not d!2380315) (not d!2380301) (not b!7973961) (not b!7973902) (not b!7973558) (not b!7974008) (not b!7973517) (not bm!739991) (not bm!739884) (not bm!739963) (not b!7973542) (not b!7973924) (not b!7973528) (not d!2380321) (not b!7973907) (not bm!739965) (not b!7973849) (not b!7974035) (not b!7973837) (not b!7973980) (not b!7974007) (not b!7973509) (not b!7973539) (not b!7973548) (not b!7973985) (not b!7974000) (not bm!739995) (not b!7974018) (not b!7974026) (not d!2380249) (not b!7974016) (not bm!739959) (not d!2380329) (not b!7974003) (not b!7973547) (not b!7974022) (not b!7973958) (not b!7974036) (not b!7973972) (not b!7973901) (not bm!739960) (not b!7974027) (not d!2380305) (not b!7973533) (not b!7974019) (not d!2380253) (not b!7973838) (not bm!739988) (not d!2380259) (not bm!739883) (not b!7974006) (not b!7973899) (not b!7973949) (not b!7974034) (not d!2380251) (not bm!739976) (not b!7974031) (not b!7973906) (not d!2380317) (not b!7974028) (not b!7973842) (not bm!739992) (not bm!739966) (not d!2380309) (not b!7973537) (not b!7973917) (not b!7973559) (not bm!739994) (not b!7974023) (not bm!739882) (not d!2380311) (not b!7973960) (not bm!739964) (not bm!739989) (not b!7973918) (not b!7973997) (not b!7974024) (not bm!739985) (not bm!739990) (not b!7973519) (not b!7973545) (not d!2380239) (not b!7974011) (not b!7973525) (not b!7973511) (not bm!739978) (not b!7974002) (not b!7974004) tp_is_empty!53633 (not b!7974020) (not d!2380331) (not bm!739986) (not b!7974032) (not d!2380325) (not b!7973560) (not b!7974030) (not b!7973523))
(check-sat)
