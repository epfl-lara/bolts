; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752620 () Bool)

(assert start!752620)

(declare-fun b!7996985 () Bool)

(declare-fun res!3163273 () Bool)

(declare-fun e!4711509 () Bool)

(assert (=> b!7996985 (=> (not res!3163273) (not e!4711509))))

(declare-datatypes ((C!43468 0))(
  ( (C!43469 (val!32282 Int)) )
))
(declare-datatypes ((List!74794 0))(
  ( (Nil!74670) (Cons!74670 (h!81118 C!43468) (t!390537 List!74794)) )
))
(declare-fun input!8036 () List!74794)

(get-info :version)

(assert (=> b!7996985 (= res!3163273 (not ((_ is Cons!74670) input!8036)))))

(declare-fun b!7996986 () Bool)

(declare-fun e!4711511 () Bool)

(declare-fun tp_is_empty!53673 () Bool)

(assert (=> b!7996986 (= e!4711511 tp_is_empty!53673)))

(declare-fun b!7996987 () Bool)

(declare-fun e!4711508 () Bool)

(assert (=> b!7996987 (= e!4711508 tp_is_empty!53673)))

(declare-fun b!7996988 () Bool)

(declare-fun tp!2391000 () Bool)

(assert (=> b!7996988 (= e!4711508 tp!2391000)))

(declare-fun b!7996989 () Bool)

(declare-fun tp!2391005 () Bool)

(declare-fun tp!2391002 () Bool)

(assert (=> b!7996989 (= e!4711508 (and tp!2391005 tp!2391002))))

(declare-fun b!7996990 () Bool)

(declare-fun e!4711510 () Bool)

(declare-fun tp!2391007 () Bool)

(assert (=> b!7996990 (= e!4711510 (and tp_is_empty!53673 tp!2391007))))

(declare-fun res!3163272 () Bool)

(assert (=> start!752620 (=> (not res!3163272) (not e!4711509))))

(declare-datatypes ((Regex!21565 0))(
  ( (ElementMatch!21565 (c!1468336 C!43468)) (Concat!30564 (regOne!43642 Regex!21565) (regTwo!43642 Regex!21565)) (EmptyExpr!21565) (Star!21565 (reg!21894 Regex!21565)) (EmptyLang!21565) (Union!21565 (regOne!43643 Regex!21565) (regTwo!43643 Regex!21565)) )
))
(declare-fun baseR!141 () Regex!21565)

(declare-fun validRegex!11869 (Regex!21565) Bool)

(assert (=> start!752620 (= res!3163272 (validRegex!11869 baseR!141))))

(assert (=> start!752620 e!4711509))

(assert (=> start!752620 e!4711508))

(assert (=> start!752620 e!4711510))

(assert (=> start!752620 e!4711511))

(declare-fun b!7996991 () Bool)

(declare-fun tp!2391009 () Bool)

(declare-fun tp!2391006 () Bool)

(assert (=> b!7996991 (= e!4711508 (and tp!2391009 tp!2391006))))

(declare-fun b!7996992 () Bool)

(declare-fun tp!2391001 () Bool)

(declare-fun tp!2391004 () Bool)

(assert (=> b!7996992 (= e!4711511 (and tp!2391001 tp!2391004))))

(declare-fun b!7996993 () Bool)

(declare-fun r!24786 () Regex!21565)

(assert (=> b!7996993 (= e!4711509 (not (validRegex!11869 r!24786)))))

(declare-fun b!7996994 () Bool)

(declare-fun tp!2391008 () Bool)

(declare-fun tp!2391010 () Bool)

(assert (=> b!7996994 (= e!4711511 (and tp!2391008 tp!2391010))))

(declare-fun b!7996995 () Bool)

(declare-fun res!3163274 () Bool)

(assert (=> b!7996995 (=> (not res!3163274) (not e!4711509))))

(declare-fun derivative!751 (Regex!21565 List!74794) Regex!21565)

(assert (=> b!7996995 (= res!3163274 (= (derivative!751 baseR!141 input!8036) r!24786))))

(declare-fun b!7996996 () Bool)

(declare-fun tp!2391003 () Bool)

(assert (=> b!7996996 (= e!4711511 tp!2391003)))

(assert (= (and start!752620 res!3163272) b!7996995))

(assert (= (and b!7996995 res!3163274) b!7996985))

(assert (= (and b!7996985 res!3163273) b!7996993))

(assert (= (and start!752620 ((_ is ElementMatch!21565) baseR!141)) b!7996987))

(assert (= (and start!752620 ((_ is Concat!30564) baseR!141)) b!7996991))

(assert (= (and start!752620 ((_ is Star!21565) baseR!141)) b!7996988))

(assert (= (and start!752620 ((_ is Union!21565) baseR!141)) b!7996989))

(assert (= (and start!752620 ((_ is Cons!74670) input!8036)) b!7996990))

(assert (= (and start!752620 ((_ is ElementMatch!21565) r!24786)) b!7996986))

(assert (= (and start!752620 ((_ is Concat!30564) r!24786)) b!7996992))

(assert (= (and start!752620 ((_ is Star!21565) r!24786)) b!7996996))

(assert (= (and start!752620 ((_ is Union!21565) r!24786)) b!7996994))

(declare-fun m!8367280 () Bool)

(assert (=> start!752620 m!8367280))

(declare-fun m!8367282 () Bool)

(assert (=> b!7996993 m!8367282))

(declare-fun m!8367284 () Bool)

(assert (=> b!7996995 m!8367284))

(check-sat (not b!7996996) (not b!7996990) tp_is_empty!53673 (not start!752620) (not b!7996989) (not b!7996994) (not b!7996991) (not b!7996988) (not b!7996992) (not b!7996995) (not b!7996993))
(check-sat)
(get-model)

(declare-fun b!7997015 () Bool)

(declare-fun e!4711529 () Bool)

(declare-fun e!4711532 () Bool)

(assert (=> b!7997015 (= e!4711529 e!4711532)))

(declare-fun res!3163287 () Bool)

(assert (=> b!7997015 (=> (not res!3163287) (not e!4711532))))

(declare-fun call!742803 () Bool)

(assert (=> b!7997015 (= res!3163287 call!742803)))

(declare-fun b!7997016 () Bool)

(declare-fun res!3163285 () Bool)

(declare-fun e!4711530 () Bool)

(assert (=> b!7997016 (=> (not res!3163285) (not e!4711530))))

(declare-fun call!742805 () Bool)

(assert (=> b!7997016 (= res!3163285 call!742805)))

(declare-fun e!4711526 () Bool)

(assert (=> b!7997016 (= e!4711526 e!4711530)))

(declare-fun b!7997017 () Bool)

(declare-fun res!3163289 () Bool)

(assert (=> b!7997017 (=> res!3163289 e!4711529)))

(assert (=> b!7997017 (= res!3163289 (not ((_ is Concat!30564) baseR!141)))))

(assert (=> b!7997017 (= e!4711526 e!4711529)))

(declare-fun b!7997018 () Bool)

(assert (=> b!7997018 (= e!4711532 call!742805)))

(declare-fun b!7997019 () Bool)

(declare-fun e!4711528 () Bool)

(declare-fun call!742804 () Bool)

(assert (=> b!7997019 (= e!4711528 call!742804)))

(declare-fun b!7997020 () Bool)

(declare-fun e!4711527 () Bool)

(declare-fun e!4711531 () Bool)

(assert (=> b!7997020 (= e!4711527 e!4711531)))

(declare-fun c!1468342 () Bool)

(assert (=> b!7997020 (= c!1468342 ((_ is Star!21565) baseR!141))))

(declare-fun b!7997021 () Bool)

(assert (=> b!7997021 (= e!4711531 e!4711528)))

(declare-fun res!3163288 () Bool)

(declare-fun nullable!9649 (Regex!21565) Bool)

(assert (=> b!7997021 (= res!3163288 (not (nullable!9649 (reg!21894 baseR!141))))))

(assert (=> b!7997021 (=> (not res!3163288) (not e!4711528))))

(declare-fun bm!742799 () Bool)

(assert (=> bm!742799 (= call!742803 call!742804)))

(declare-fun c!1468341 () Bool)

(declare-fun bm!742800 () Bool)

(assert (=> bm!742800 (= call!742804 (validRegex!11869 (ite c!1468342 (reg!21894 baseR!141) (ite c!1468341 (regTwo!43643 baseR!141) (regOne!43642 baseR!141)))))))

(declare-fun b!7997022 () Bool)

(assert (=> b!7997022 (= e!4711530 call!742803)))

(declare-fun b!7997023 () Bool)

(assert (=> b!7997023 (= e!4711531 e!4711526)))

(assert (=> b!7997023 (= c!1468341 ((_ is Union!21565) baseR!141))))

(declare-fun bm!742798 () Bool)

(assert (=> bm!742798 (= call!742805 (validRegex!11869 (ite c!1468341 (regOne!43643 baseR!141) (regTwo!43642 baseR!141))))))

(declare-fun d!2386359 () Bool)

(declare-fun res!3163286 () Bool)

(assert (=> d!2386359 (=> res!3163286 e!4711527)))

(assert (=> d!2386359 (= res!3163286 ((_ is ElementMatch!21565) baseR!141))))

(assert (=> d!2386359 (= (validRegex!11869 baseR!141) e!4711527)))

(assert (= (and d!2386359 (not res!3163286)) b!7997020))

(assert (= (and b!7997020 c!1468342) b!7997021))

(assert (= (and b!7997020 (not c!1468342)) b!7997023))

(assert (= (and b!7997021 res!3163288) b!7997019))

(assert (= (and b!7997023 c!1468341) b!7997016))

(assert (= (and b!7997023 (not c!1468341)) b!7997017))

(assert (= (and b!7997016 res!3163285) b!7997022))

(assert (= (and b!7997017 (not res!3163289)) b!7997015))

(assert (= (and b!7997015 res!3163287) b!7997018))

(assert (= (or b!7997016 b!7997018) bm!742798))

(assert (= (or b!7997022 b!7997015) bm!742799))

(assert (= (or b!7997019 bm!742799) bm!742800))

(declare-fun m!8367286 () Bool)

(assert (=> b!7997021 m!8367286))

(declare-fun m!8367288 () Bool)

(assert (=> bm!742800 m!8367288))

(declare-fun m!8367290 () Bool)

(assert (=> bm!742798 m!8367290))

(assert (=> start!752620 d!2386359))

(declare-fun d!2386363 () Bool)

(declare-fun lt!2713446 () Regex!21565)

(assert (=> d!2386363 (validRegex!11869 lt!2713446)))

(declare-fun e!4711543 () Regex!21565)

(assert (=> d!2386363 (= lt!2713446 e!4711543)))

(declare-fun c!1468349 () Bool)

(assert (=> d!2386363 (= c!1468349 ((_ is Cons!74670) input!8036))))

(assert (=> d!2386363 (validRegex!11869 baseR!141)))

(assert (=> d!2386363 (= (derivative!751 baseR!141 input!8036) lt!2713446)))

(declare-fun b!7997040 () Bool)

(declare-fun derivativeStep!6580 (Regex!21565 C!43468) Regex!21565)

(assert (=> b!7997040 (= e!4711543 (derivative!751 (derivativeStep!6580 baseR!141 (h!81118 input!8036)) (t!390537 input!8036)))))

(declare-fun b!7997041 () Bool)

(assert (=> b!7997041 (= e!4711543 baseR!141)))

(assert (= (and d!2386363 c!1468349) b!7997040))

(assert (= (and d!2386363 (not c!1468349)) b!7997041))

(declare-fun m!8367292 () Bool)

(assert (=> d!2386363 m!8367292))

(assert (=> d!2386363 m!8367280))

(declare-fun m!8367294 () Bool)

(assert (=> b!7997040 m!8367294))

(assert (=> b!7997040 m!8367294))

(declare-fun m!8367296 () Bool)

(assert (=> b!7997040 m!8367296))

(assert (=> b!7996995 d!2386363))

(declare-fun b!7997048 () Bool)

(declare-fun e!4711553 () Bool)

(declare-fun e!4711556 () Bool)

(assert (=> b!7997048 (= e!4711553 e!4711556)))

(declare-fun res!3163302 () Bool)

(assert (=> b!7997048 (=> (not res!3163302) (not e!4711556))))

(declare-fun call!742806 () Bool)

(assert (=> b!7997048 (= res!3163302 call!742806)))

(declare-fun b!7997049 () Bool)

(declare-fun res!3163300 () Bool)

(declare-fun e!4711554 () Bool)

(assert (=> b!7997049 (=> (not res!3163300) (not e!4711554))))

(declare-fun call!742808 () Bool)

(assert (=> b!7997049 (= res!3163300 call!742808)))

(declare-fun e!4711550 () Bool)

(assert (=> b!7997049 (= e!4711550 e!4711554)))

(declare-fun b!7997050 () Bool)

(declare-fun res!3163304 () Bool)

(assert (=> b!7997050 (=> res!3163304 e!4711553)))

(assert (=> b!7997050 (= res!3163304 (not ((_ is Concat!30564) r!24786)))))

(assert (=> b!7997050 (= e!4711550 e!4711553)))

(declare-fun b!7997051 () Bool)

(assert (=> b!7997051 (= e!4711556 call!742808)))

(declare-fun b!7997052 () Bool)

(declare-fun e!4711552 () Bool)

(declare-fun call!742807 () Bool)

(assert (=> b!7997052 (= e!4711552 call!742807)))

(declare-fun b!7997053 () Bool)

(declare-fun e!4711551 () Bool)

(declare-fun e!4711555 () Bool)

(assert (=> b!7997053 (= e!4711551 e!4711555)))

(declare-fun c!1468351 () Bool)

(assert (=> b!7997053 (= c!1468351 ((_ is Star!21565) r!24786))))

(declare-fun b!7997054 () Bool)

(assert (=> b!7997054 (= e!4711555 e!4711552)))

(declare-fun res!3163303 () Bool)

(assert (=> b!7997054 (= res!3163303 (not (nullable!9649 (reg!21894 r!24786))))))

(assert (=> b!7997054 (=> (not res!3163303) (not e!4711552))))

(declare-fun bm!742802 () Bool)

(assert (=> bm!742802 (= call!742806 call!742807)))

(declare-fun bm!742803 () Bool)

(declare-fun c!1468350 () Bool)

(assert (=> bm!742803 (= call!742807 (validRegex!11869 (ite c!1468351 (reg!21894 r!24786) (ite c!1468350 (regTwo!43643 r!24786) (regOne!43642 r!24786)))))))

(declare-fun b!7997055 () Bool)

(assert (=> b!7997055 (= e!4711554 call!742806)))

(declare-fun b!7997056 () Bool)

(assert (=> b!7997056 (= e!4711555 e!4711550)))

(assert (=> b!7997056 (= c!1468350 ((_ is Union!21565) r!24786))))

(declare-fun bm!742801 () Bool)

(assert (=> bm!742801 (= call!742808 (validRegex!11869 (ite c!1468350 (regOne!43643 r!24786) (regTwo!43642 r!24786))))))

(declare-fun d!2386365 () Bool)

(declare-fun res!3163301 () Bool)

(assert (=> d!2386365 (=> res!3163301 e!4711551)))

(assert (=> d!2386365 (= res!3163301 ((_ is ElementMatch!21565) r!24786))))

(assert (=> d!2386365 (= (validRegex!11869 r!24786) e!4711551)))

(assert (= (and d!2386365 (not res!3163301)) b!7997053))

(assert (= (and b!7997053 c!1468351) b!7997054))

(assert (= (and b!7997053 (not c!1468351)) b!7997056))

(assert (= (and b!7997054 res!3163303) b!7997052))

(assert (= (and b!7997056 c!1468350) b!7997049))

(assert (= (and b!7997056 (not c!1468350)) b!7997050))

(assert (= (and b!7997049 res!3163300) b!7997055))

(assert (= (and b!7997050 (not res!3163304)) b!7997048))

(assert (= (and b!7997048 res!3163302) b!7997051))

(assert (= (or b!7997049 b!7997051) bm!742801))

(assert (= (or b!7997055 b!7997048) bm!742802))

(assert (= (or b!7997052 bm!742802) bm!742803))

(declare-fun m!8367298 () Bool)

(assert (=> b!7997054 m!8367298))

(declare-fun m!8367300 () Bool)

(assert (=> bm!742803 m!8367300))

(declare-fun m!8367302 () Bool)

(assert (=> bm!742801 m!8367302))

(assert (=> b!7996993 d!2386365))

(declare-fun b!7997061 () Bool)

(declare-fun e!4711559 () Bool)

(declare-fun tp!2391013 () Bool)

(assert (=> b!7997061 (= e!4711559 (and tp_is_empty!53673 tp!2391013))))

(assert (=> b!7996990 (= tp!2391007 e!4711559)))

(assert (= (and b!7996990 ((_ is Cons!74670) (t!390537 input!8036))) b!7997061))

(declare-fun b!7997073 () Bool)

(declare-fun e!4711562 () Bool)

(declare-fun tp!2391024 () Bool)

(declare-fun tp!2391027 () Bool)

(assert (=> b!7997073 (= e!4711562 (and tp!2391024 tp!2391027))))

(declare-fun b!7997074 () Bool)

(declare-fun tp!2391025 () Bool)

(assert (=> b!7997074 (= e!4711562 tp!2391025)))

(declare-fun b!7997075 () Bool)

(declare-fun tp!2391028 () Bool)

(declare-fun tp!2391026 () Bool)

(assert (=> b!7997075 (= e!4711562 (and tp!2391028 tp!2391026))))

(declare-fun b!7997072 () Bool)

(assert (=> b!7997072 (= e!4711562 tp_is_empty!53673)))

(assert (=> b!7996994 (= tp!2391008 e!4711562)))

(assert (= (and b!7996994 ((_ is ElementMatch!21565) (regOne!43643 r!24786))) b!7997072))

(assert (= (and b!7996994 ((_ is Concat!30564) (regOne!43643 r!24786))) b!7997073))

(assert (= (and b!7996994 ((_ is Star!21565) (regOne!43643 r!24786))) b!7997074))

(assert (= (and b!7996994 ((_ is Union!21565) (regOne!43643 r!24786))) b!7997075))

(declare-fun b!7997077 () Bool)

(declare-fun e!4711563 () Bool)

(declare-fun tp!2391029 () Bool)

(declare-fun tp!2391032 () Bool)

(assert (=> b!7997077 (= e!4711563 (and tp!2391029 tp!2391032))))

(declare-fun b!7997078 () Bool)

(declare-fun tp!2391030 () Bool)

(assert (=> b!7997078 (= e!4711563 tp!2391030)))

(declare-fun b!7997079 () Bool)

(declare-fun tp!2391033 () Bool)

(declare-fun tp!2391031 () Bool)

(assert (=> b!7997079 (= e!4711563 (and tp!2391033 tp!2391031))))

(declare-fun b!7997076 () Bool)

(assert (=> b!7997076 (= e!4711563 tp_is_empty!53673)))

(assert (=> b!7996994 (= tp!2391010 e!4711563)))

(assert (= (and b!7996994 ((_ is ElementMatch!21565) (regTwo!43643 r!24786))) b!7997076))

(assert (= (and b!7996994 ((_ is Concat!30564) (regTwo!43643 r!24786))) b!7997077))

(assert (= (and b!7996994 ((_ is Star!21565) (regTwo!43643 r!24786))) b!7997078))

(assert (= (and b!7996994 ((_ is Union!21565) (regTwo!43643 r!24786))) b!7997079))

(declare-fun b!7997081 () Bool)

(declare-fun e!4711564 () Bool)

(declare-fun tp!2391034 () Bool)

(declare-fun tp!2391037 () Bool)

(assert (=> b!7997081 (= e!4711564 (and tp!2391034 tp!2391037))))

(declare-fun b!7997082 () Bool)

(declare-fun tp!2391035 () Bool)

(assert (=> b!7997082 (= e!4711564 tp!2391035)))

(declare-fun b!7997083 () Bool)

(declare-fun tp!2391038 () Bool)

(declare-fun tp!2391036 () Bool)

(assert (=> b!7997083 (= e!4711564 (and tp!2391038 tp!2391036))))

(declare-fun b!7997080 () Bool)

(assert (=> b!7997080 (= e!4711564 tp_is_empty!53673)))

(assert (=> b!7996989 (= tp!2391005 e!4711564)))

(assert (= (and b!7996989 ((_ is ElementMatch!21565) (regOne!43643 baseR!141))) b!7997080))

(assert (= (and b!7996989 ((_ is Concat!30564) (regOne!43643 baseR!141))) b!7997081))

(assert (= (and b!7996989 ((_ is Star!21565) (regOne!43643 baseR!141))) b!7997082))

(assert (= (and b!7996989 ((_ is Union!21565) (regOne!43643 baseR!141))) b!7997083))

(declare-fun b!7997085 () Bool)

(declare-fun e!4711565 () Bool)

(declare-fun tp!2391039 () Bool)

(declare-fun tp!2391042 () Bool)

(assert (=> b!7997085 (= e!4711565 (and tp!2391039 tp!2391042))))

(declare-fun b!7997086 () Bool)

(declare-fun tp!2391040 () Bool)

(assert (=> b!7997086 (= e!4711565 tp!2391040)))

(declare-fun b!7997087 () Bool)

(declare-fun tp!2391043 () Bool)

(declare-fun tp!2391041 () Bool)

(assert (=> b!7997087 (= e!4711565 (and tp!2391043 tp!2391041))))

(declare-fun b!7997084 () Bool)

(assert (=> b!7997084 (= e!4711565 tp_is_empty!53673)))

(assert (=> b!7996989 (= tp!2391002 e!4711565)))

(assert (= (and b!7996989 ((_ is ElementMatch!21565) (regTwo!43643 baseR!141))) b!7997084))

(assert (= (and b!7996989 ((_ is Concat!30564) (regTwo!43643 baseR!141))) b!7997085))

(assert (= (and b!7996989 ((_ is Star!21565) (regTwo!43643 baseR!141))) b!7997086))

(assert (= (and b!7996989 ((_ is Union!21565) (regTwo!43643 baseR!141))) b!7997087))

(declare-fun b!7997089 () Bool)

(declare-fun e!4711566 () Bool)

(declare-fun tp!2391044 () Bool)

(declare-fun tp!2391047 () Bool)

(assert (=> b!7997089 (= e!4711566 (and tp!2391044 tp!2391047))))

(declare-fun b!7997090 () Bool)

(declare-fun tp!2391045 () Bool)

(assert (=> b!7997090 (= e!4711566 tp!2391045)))

(declare-fun b!7997091 () Bool)

(declare-fun tp!2391048 () Bool)

(declare-fun tp!2391046 () Bool)

(assert (=> b!7997091 (= e!4711566 (and tp!2391048 tp!2391046))))

(declare-fun b!7997088 () Bool)

(assert (=> b!7997088 (= e!4711566 tp_is_empty!53673)))

(assert (=> b!7996988 (= tp!2391000 e!4711566)))

(assert (= (and b!7996988 ((_ is ElementMatch!21565) (reg!21894 baseR!141))) b!7997088))

(assert (= (and b!7996988 ((_ is Concat!30564) (reg!21894 baseR!141))) b!7997089))

(assert (= (and b!7996988 ((_ is Star!21565) (reg!21894 baseR!141))) b!7997090))

(assert (= (and b!7996988 ((_ is Union!21565) (reg!21894 baseR!141))) b!7997091))

(declare-fun b!7997093 () Bool)

(declare-fun e!4711567 () Bool)

(declare-fun tp!2391049 () Bool)

(declare-fun tp!2391052 () Bool)

(assert (=> b!7997093 (= e!4711567 (and tp!2391049 tp!2391052))))

(declare-fun b!7997094 () Bool)

(declare-fun tp!2391050 () Bool)

(assert (=> b!7997094 (= e!4711567 tp!2391050)))

(declare-fun b!7997095 () Bool)

(declare-fun tp!2391053 () Bool)

(declare-fun tp!2391051 () Bool)

(assert (=> b!7997095 (= e!4711567 (and tp!2391053 tp!2391051))))

(declare-fun b!7997092 () Bool)

(assert (=> b!7997092 (= e!4711567 tp_is_empty!53673)))

(assert (=> b!7996992 (= tp!2391001 e!4711567)))

(assert (= (and b!7996992 ((_ is ElementMatch!21565) (regOne!43642 r!24786))) b!7997092))

(assert (= (and b!7996992 ((_ is Concat!30564) (regOne!43642 r!24786))) b!7997093))

(assert (= (and b!7996992 ((_ is Star!21565) (regOne!43642 r!24786))) b!7997094))

(assert (= (and b!7996992 ((_ is Union!21565) (regOne!43642 r!24786))) b!7997095))

(declare-fun b!7997097 () Bool)

(declare-fun e!4711568 () Bool)

(declare-fun tp!2391054 () Bool)

(declare-fun tp!2391057 () Bool)

(assert (=> b!7997097 (= e!4711568 (and tp!2391054 tp!2391057))))

(declare-fun b!7997098 () Bool)

(declare-fun tp!2391055 () Bool)

(assert (=> b!7997098 (= e!4711568 tp!2391055)))

(declare-fun b!7997099 () Bool)

(declare-fun tp!2391058 () Bool)

(declare-fun tp!2391056 () Bool)

(assert (=> b!7997099 (= e!4711568 (and tp!2391058 tp!2391056))))

(declare-fun b!7997096 () Bool)

(assert (=> b!7997096 (= e!4711568 tp_is_empty!53673)))

(assert (=> b!7996992 (= tp!2391004 e!4711568)))

(assert (= (and b!7996992 ((_ is ElementMatch!21565) (regTwo!43642 r!24786))) b!7997096))

(assert (= (and b!7996992 ((_ is Concat!30564) (regTwo!43642 r!24786))) b!7997097))

(assert (= (and b!7996992 ((_ is Star!21565) (regTwo!43642 r!24786))) b!7997098))

(assert (= (and b!7996992 ((_ is Union!21565) (regTwo!43642 r!24786))) b!7997099))

(declare-fun b!7997101 () Bool)

(declare-fun e!4711569 () Bool)

(declare-fun tp!2391059 () Bool)

(declare-fun tp!2391062 () Bool)

(assert (=> b!7997101 (= e!4711569 (and tp!2391059 tp!2391062))))

(declare-fun b!7997102 () Bool)

(declare-fun tp!2391060 () Bool)

(assert (=> b!7997102 (= e!4711569 tp!2391060)))

(declare-fun b!7997103 () Bool)

(declare-fun tp!2391063 () Bool)

(declare-fun tp!2391061 () Bool)

(assert (=> b!7997103 (= e!4711569 (and tp!2391063 tp!2391061))))

(declare-fun b!7997100 () Bool)

(assert (=> b!7997100 (= e!4711569 tp_is_empty!53673)))

(assert (=> b!7996996 (= tp!2391003 e!4711569)))

(assert (= (and b!7996996 ((_ is ElementMatch!21565) (reg!21894 r!24786))) b!7997100))

(assert (= (and b!7996996 ((_ is Concat!30564) (reg!21894 r!24786))) b!7997101))

(assert (= (and b!7996996 ((_ is Star!21565) (reg!21894 r!24786))) b!7997102))

(assert (= (and b!7996996 ((_ is Union!21565) (reg!21894 r!24786))) b!7997103))

(declare-fun b!7997105 () Bool)

(declare-fun e!4711570 () Bool)

(declare-fun tp!2391064 () Bool)

(declare-fun tp!2391067 () Bool)

(assert (=> b!7997105 (= e!4711570 (and tp!2391064 tp!2391067))))

(declare-fun b!7997106 () Bool)

(declare-fun tp!2391065 () Bool)

(assert (=> b!7997106 (= e!4711570 tp!2391065)))

(declare-fun b!7997107 () Bool)

(declare-fun tp!2391068 () Bool)

(declare-fun tp!2391066 () Bool)

(assert (=> b!7997107 (= e!4711570 (and tp!2391068 tp!2391066))))

(declare-fun b!7997104 () Bool)

(assert (=> b!7997104 (= e!4711570 tp_is_empty!53673)))

(assert (=> b!7996991 (= tp!2391009 e!4711570)))

(assert (= (and b!7996991 ((_ is ElementMatch!21565) (regOne!43642 baseR!141))) b!7997104))

(assert (= (and b!7996991 ((_ is Concat!30564) (regOne!43642 baseR!141))) b!7997105))

(assert (= (and b!7996991 ((_ is Star!21565) (regOne!43642 baseR!141))) b!7997106))

(assert (= (and b!7996991 ((_ is Union!21565) (regOne!43642 baseR!141))) b!7997107))

(declare-fun b!7997109 () Bool)

(declare-fun e!4711571 () Bool)

(declare-fun tp!2391069 () Bool)

(declare-fun tp!2391072 () Bool)

(assert (=> b!7997109 (= e!4711571 (and tp!2391069 tp!2391072))))

(declare-fun b!7997110 () Bool)

(declare-fun tp!2391070 () Bool)

(assert (=> b!7997110 (= e!4711571 tp!2391070)))

(declare-fun b!7997111 () Bool)

(declare-fun tp!2391073 () Bool)

(declare-fun tp!2391071 () Bool)

(assert (=> b!7997111 (= e!4711571 (and tp!2391073 tp!2391071))))

(declare-fun b!7997108 () Bool)

(assert (=> b!7997108 (= e!4711571 tp_is_empty!53673)))

(assert (=> b!7996991 (= tp!2391006 e!4711571)))

(assert (= (and b!7996991 ((_ is ElementMatch!21565) (regTwo!43642 baseR!141))) b!7997108))

(assert (= (and b!7996991 ((_ is Concat!30564) (regTwo!43642 baseR!141))) b!7997109))

(assert (= (and b!7996991 ((_ is Star!21565) (regTwo!43642 baseR!141))) b!7997110))

(assert (= (and b!7996991 ((_ is Union!21565) (regTwo!43642 baseR!141))) b!7997111))

(check-sat (not bm!742801) (not bm!742800) (not b!7997103) (not b!7997094) (not b!7997078) (not b!7997102) (not bm!742798) (not b!7997106) (not b!7997109) (not b!7997097) (not b!7997083) (not d!2386363) (not b!7997085) (not b!7997082) (not b!7997079) (not b!7997081) (not b!7997101) (not b!7997021) (not b!7997086) (not b!7997077) (not b!7997074) (not b!7997075) (not b!7997095) (not b!7997091) (not b!7997054) (not b!7997099) (not b!7997087) (not b!7997110) tp_is_empty!53673 (not b!7997098) (not b!7997040) (not b!7997089) (not b!7997073) (not bm!742803) (not b!7997111) (not b!7997093) (not b!7997090) (not b!7997105) (not b!7997107) (not b!7997061))
(check-sat)
