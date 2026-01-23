; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752680 () Bool)

(assert start!752680)

(declare-fun b!7998177 () Bool)

(declare-fun e!4712041 () Bool)

(declare-fun tp!2391778 () Bool)

(declare-fun tp!2391777 () Bool)

(assert (=> b!7998177 (= e!4712041 (and tp!2391778 tp!2391777))))

(declare-fun b!7998178 () Bool)

(declare-fun e!4712038 () Bool)

(declare-fun tp_is_empty!53689 () Bool)

(assert (=> b!7998178 (= e!4712038 tp_is_empty!53689)))

(declare-fun b!7998179 () Bool)

(declare-fun res!3163504 () Bool)

(declare-fun e!4712037 () Bool)

(assert (=> b!7998179 (=> (not res!3163504) (not e!4712037))))

(declare-datatypes ((C!43484 0))(
  ( (C!43485 (val!32290 Int)) )
))
(declare-datatypes ((Regex!21573 0))(
  ( (ElementMatch!21573 (c!1468496 C!43484)) (Concat!30572 (regOne!43658 Regex!21573) (regTwo!43658 Regex!21573)) (EmptyExpr!21573) (Star!21573 (reg!21902 Regex!21573)) (EmptyLang!21573) (Union!21573 (regOne!43659 Regex!21573) (regTwo!43659 Regex!21573)) )
))
(declare-fun lt!2713499 () Regex!21573)

(declare-fun r!24786 () Regex!21573)

(declare-datatypes ((List!74802 0))(
  ( (Nil!74678) (Cons!74678 (h!81126 C!43484) (t!390545 List!74802)) )
))
(declare-fun input!8036 () List!74802)

(declare-fun derivative!759 (Regex!21573 List!74802) Regex!21573)

(assert (=> b!7998179 (= res!3163504 (= (derivative!759 lt!2713499 (t!390545 input!8036)) r!24786))))

(declare-fun b!7998180 () Bool)

(declare-fun tp!2391775 () Bool)

(declare-fun tp!2391776 () Bool)

(assert (=> b!7998180 (= e!4712038 (and tp!2391775 tp!2391776))))

(declare-fun b!7998181 () Bool)

(declare-fun size!43495 (List!74802) Int)

(assert (=> b!7998181 (= e!4712037 (>= (size!43495 (t!390545 input!8036)) (size!43495 input!8036)))))

(declare-fun b!7998182 () Bool)

(declare-fun tp!2391771 () Bool)

(declare-fun tp!2391769 () Bool)

(assert (=> b!7998182 (= e!4712041 (and tp!2391771 tp!2391769))))

(declare-fun b!7998183 () Bool)

(declare-fun res!3163506 () Bool)

(declare-fun e!4712040 () Bool)

(assert (=> b!7998183 (=> (not res!3163506) (not e!4712040))))

(declare-fun baseR!141 () Regex!21573)

(assert (=> b!7998183 (= res!3163506 (= (derivative!759 baseR!141 input!8036) r!24786))))

(declare-fun b!7998184 () Bool)

(declare-fun e!4712039 () Bool)

(declare-fun tp!2391770 () Bool)

(assert (=> b!7998184 (= e!4712039 (and tp_is_empty!53689 tp!2391770))))

(declare-fun b!7998185 () Bool)

(declare-fun tp!2391774 () Bool)

(assert (=> b!7998185 (= e!4712041 tp!2391774)))

(declare-fun res!3163507 () Bool)

(assert (=> start!752680 (=> (not res!3163507) (not e!4712040))))

(declare-fun validRegex!11877 (Regex!21573) Bool)

(assert (=> start!752680 (= res!3163507 (validRegex!11877 baseR!141))))

(assert (=> start!752680 e!4712040))

(assert (=> start!752680 e!4712041))

(assert (=> start!752680 e!4712039))

(assert (=> start!752680 e!4712038))

(declare-fun b!7998186 () Bool)

(declare-fun tp!2391772 () Bool)

(declare-fun tp!2391768 () Bool)

(assert (=> b!7998186 (= e!4712038 (and tp!2391772 tp!2391768))))

(declare-fun b!7998187 () Bool)

(declare-fun tp!2391773 () Bool)

(assert (=> b!7998187 (= e!4712038 tp!2391773)))

(declare-fun b!7998188 () Bool)

(assert (=> b!7998188 (= e!4712041 tp_is_empty!53689)))

(declare-fun b!7998189 () Bool)

(assert (=> b!7998189 (= e!4712040 e!4712037)))

(declare-fun res!3163508 () Bool)

(assert (=> b!7998189 (=> (not res!3163508) (not e!4712037))))

(assert (=> b!7998189 (= res!3163508 (validRegex!11877 lt!2713499))))

(declare-fun derivativeStep!6588 (Regex!21573 C!43484) Regex!21573)

(assert (=> b!7998189 (= lt!2713499 (derivativeStep!6588 baseR!141 (h!81126 input!8036)))))

(declare-fun b!7998190 () Bool)

(declare-fun res!3163505 () Bool)

(assert (=> b!7998190 (=> (not res!3163505) (not e!4712040))))

(get-info :version)

(assert (=> b!7998190 (= res!3163505 ((_ is Cons!74678) input!8036))))

(assert (= (and start!752680 res!3163507) b!7998183))

(assert (= (and b!7998183 res!3163506) b!7998190))

(assert (= (and b!7998190 res!3163505) b!7998189))

(assert (= (and b!7998189 res!3163508) b!7998179))

(assert (= (and b!7998179 res!3163504) b!7998181))

(assert (= (and start!752680 ((_ is ElementMatch!21573) baseR!141)) b!7998188))

(assert (= (and start!752680 ((_ is Concat!30572) baseR!141)) b!7998177))

(assert (= (and start!752680 ((_ is Star!21573) baseR!141)) b!7998185))

(assert (= (and start!752680 ((_ is Union!21573) baseR!141)) b!7998182))

(assert (= (and start!752680 ((_ is Cons!74678) input!8036)) b!7998184))

(assert (= (and start!752680 ((_ is ElementMatch!21573) r!24786)) b!7998178))

(assert (= (and start!752680 ((_ is Concat!30572) r!24786)) b!7998186))

(assert (= (and start!752680 ((_ is Star!21573) r!24786)) b!7998187))

(assert (= (and start!752680 ((_ is Union!21573) r!24786)) b!7998180))

(declare-fun m!8367520 () Bool)

(assert (=> b!7998183 m!8367520))

(declare-fun m!8367522 () Bool)

(assert (=> b!7998189 m!8367522))

(declare-fun m!8367524 () Bool)

(assert (=> b!7998189 m!8367524))

(declare-fun m!8367526 () Bool)

(assert (=> b!7998181 m!8367526))

(declare-fun m!8367528 () Bool)

(assert (=> b!7998181 m!8367528))

(declare-fun m!8367530 () Bool)

(assert (=> b!7998179 m!8367530))

(declare-fun m!8367532 () Bool)

(assert (=> start!752680 m!8367532))

(check-sat tp_is_empty!53689 (not b!7998179) (not b!7998180) (not b!7998189) (not b!7998185) (not b!7998182) (not b!7998184) (not b!7998177) (not b!7998187) (not b!7998183) (not start!752680) (not b!7998186) (not b!7998181))
(check-sat)
(get-model)

(declare-fun d!2386423 () Bool)

(declare-fun lt!2713502 () Regex!21573)

(assert (=> d!2386423 (validRegex!11877 lt!2713502)))

(declare-fun e!4712054 () Regex!21573)

(assert (=> d!2386423 (= lt!2713502 e!4712054)))

(declare-fun c!1468503 () Bool)

(assert (=> d!2386423 (= c!1468503 ((_ is Cons!74678) (t!390545 input!8036)))))

(assert (=> d!2386423 (validRegex!11877 lt!2713499)))

(assert (=> d!2386423 (= (derivative!759 lt!2713499 (t!390545 input!8036)) lt!2713502)))

(declare-fun b!7998209 () Bool)

(assert (=> b!7998209 (= e!4712054 (derivative!759 (derivativeStep!6588 lt!2713499 (h!81126 (t!390545 input!8036))) (t!390545 (t!390545 input!8036))))))

(declare-fun b!7998210 () Bool)

(assert (=> b!7998210 (= e!4712054 lt!2713499)))

(assert (= (and d!2386423 c!1468503) b!7998209))

(assert (= (and d!2386423 (not c!1468503)) b!7998210))

(declare-fun m!8367534 () Bool)

(assert (=> d!2386423 m!8367534))

(assert (=> d!2386423 m!8367522))

(declare-fun m!8367536 () Bool)

(assert (=> b!7998209 m!8367536))

(assert (=> b!7998209 m!8367536))

(declare-fun m!8367538 () Bool)

(assert (=> b!7998209 m!8367538))

(assert (=> b!7998179 d!2386423))

(declare-fun d!2386427 () Bool)

(declare-fun lt!2713505 () Int)

(assert (=> d!2386427 (>= lt!2713505 0)))

(declare-fun e!4712061 () Int)

(assert (=> d!2386427 (= lt!2713505 e!4712061)))

(declare-fun c!1468506 () Bool)

(assert (=> d!2386427 (= c!1468506 ((_ is Nil!74678) (t!390545 input!8036)))))

(assert (=> d!2386427 (= (size!43495 (t!390545 input!8036)) lt!2713505)))

(declare-fun b!7998219 () Bool)

(assert (=> b!7998219 (= e!4712061 0)))

(declare-fun b!7998220 () Bool)

(assert (=> b!7998220 (= e!4712061 (+ 1 (size!43495 (t!390545 (t!390545 input!8036)))))))

(assert (= (and d!2386427 c!1468506) b!7998219))

(assert (= (and d!2386427 (not c!1468506)) b!7998220))

(declare-fun m!8367540 () Bool)

(assert (=> b!7998220 m!8367540))

(assert (=> b!7998181 d!2386427))

(declare-fun d!2386429 () Bool)

(declare-fun lt!2713506 () Int)

(assert (=> d!2386429 (>= lt!2713506 0)))

(declare-fun e!4712062 () Int)

(assert (=> d!2386429 (= lt!2713506 e!4712062)))

(declare-fun c!1468507 () Bool)

(assert (=> d!2386429 (= c!1468507 ((_ is Nil!74678) input!8036))))

(assert (=> d!2386429 (= (size!43495 input!8036) lt!2713506)))

(declare-fun b!7998221 () Bool)

(assert (=> b!7998221 (= e!4712062 0)))

(declare-fun b!7998222 () Bool)

(assert (=> b!7998222 (= e!4712062 (+ 1 (size!43495 (t!390545 input!8036))))))

(assert (= (and d!2386429 c!1468507) b!7998221))

(assert (= (and d!2386429 (not c!1468507)) b!7998222))

(assert (=> b!7998222 m!8367526))

(assert (=> b!7998181 d!2386429))

(declare-fun bm!742945 () Bool)

(declare-fun call!742951 () Bool)

(declare-fun call!742952 () Bool)

(assert (=> bm!742945 (= call!742951 call!742952)))

(declare-fun bm!742946 () Bool)

(declare-fun call!742950 () Bool)

(declare-fun c!1468521 () Bool)

(assert (=> bm!742946 (= call!742950 (validRegex!11877 (ite c!1468521 (regTwo!43659 baseR!141) (regOne!43658 baseR!141))))))

(declare-fun b!7998262 () Bool)

(declare-fun e!4712095 () Bool)

(declare-fun e!4712093 () Bool)

(assert (=> b!7998262 (= e!4712095 e!4712093)))

(declare-fun res!3163535 () Bool)

(declare-fun nullable!9658 (Regex!21573) Bool)

(assert (=> b!7998262 (= res!3163535 (not (nullable!9658 (reg!21902 baseR!141))))))

(assert (=> b!7998262 (=> (not res!3163535) (not e!4712093))))

(declare-fun b!7998263 () Bool)

(declare-fun e!4712090 () Bool)

(assert (=> b!7998263 (= e!4712090 call!742950)))

(declare-fun b!7998264 () Bool)

(declare-fun e!4712091 () Bool)

(declare-fun e!4712092 () Bool)

(assert (=> b!7998264 (= e!4712091 e!4712092)))

(declare-fun res!3163536 () Bool)

(assert (=> b!7998264 (=> (not res!3163536) (not e!4712092))))

(assert (=> b!7998264 (= res!3163536 call!742950)))

(declare-fun b!7998265 () Bool)

(assert (=> b!7998265 (= e!4712093 call!742952)))

(declare-fun b!7998266 () Bool)

(declare-fun res!3163537 () Bool)

(assert (=> b!7998266 (=> res!3163537 e!4712091)))

(assert (=> b!7998266 (= res!3163537 (not ((_ is Concat!30572) baseR!141)))))

(declare-fun e!4712096 () Bool)

(assert (=> b!7998266 (= e!4712096 e!4712091)))

(declare-fun b!7998267 () Bool)

(assert (=> b!7998267 (= e!4712095 e!4712096)))

(assert (=> b!7998267 (= c!1468521 ((_ is Union!21573) baseR!141))))

(declare-fun b!7998268 () Bool)

(assert (=> b!7998268 (= e!4712092 call!742951)))

(declare-fun d!2386431 () Bool)

(declare-fun res!3163538 () Bool)

(declare-fun e!4712094 () Bool)

(assert (=> d!2386431 (=> res!3163538 e!4712094)))

(assert (=> d!2386431 (= res!3163538 ((_ is ElementMatch!21573) baseR!141))))

(assert (=> d!2386431 (= (validRegex!11877 baseR!141) e!4712094)))

(declare-fun b!7998269 () Bool)

(assert (=> b!7998269 (= e!4712094 e!4712095)))

(declare-fun c!1468520 () Bool)

(assert (=> b!7998269 (= c!1468520 ((_ is Star!21573) baseR!141))))

(declare-fun b!7998270 () Bool)

(declare-fun res!3163534 () Bool)

(assert (=> b!7998270 (=> (not res!3163534) (not e!4712090))))

(assert (=> b!7998270 (= res!3163534 call!742951)))

(assert (=> b!7998270 (= e!4712096 e!4712090)))

(declare-fun bm!742947 () Bool)

(assert (=> bm!742947 (= call!742952 (validRegex!11877 (ite c!1468520 (reg!21902 baseR!141) (ite c!1468521 (regOne!43659 baseR!141) (regTwo!43658 baseR!141)))))))

(assert (= (and d!2386431 (not res!3163538)) b!7998269))

(assert (= (and b!7998269 c!1468520) b!7998262))

(assert (= (and b!7998269 (not c!1468520)) b!7998267))

(assert (= (and b!7998262 res!3163535) b!7998265))

(assert (= (and b!7998267 c!1468521) b!7998270))

(assert (= (and b!7998267 (not c!1468521)) b!7998266))

(assert (= (and b!7998270 res!3163534) b!7998263))

(assert (= (and b!7998266 (not res!3163537)) b!7998264))

(assert (= (and b!7998264 res!3163536) b!7998268))

(assert (= (or b!7998270 b!7998268) bm!742945))

(assert (= (or b!7998263 b!7998264) bm!742946))

(assert (= (or b!7998265 bm!742945) bm!742947))

(declare-fun m!8367550 () Bool)

(assert (=> bm!742946 m!8367550))

(declare-fun m!8367552 () Bool)

(assert (=> b!7998262 m!8367552))

(declare-fun m!8367554 () Bool)

(assert (=> bm!742947 m!8367554))

(assert (=> start!752680 d!2386431))

(declare-fun bm!742948 () Bool)

(declare-fun call!742954 () Bool)

(declare-fun call!742955 () Bool)

(assert (=> bm!742948 (= call!742954 call!742955)))

(declare-fun bm!742949 () Bool)

(declare-fun call!742953 () Bool)

(declare-fun c!1468523 () Bool)

(assert (=> bm!742949 (= call!742953 (validRegex!11877 (ite c!1468523 (regTwo!43659 lt!2713499) (regOne!43658 lt!2713499))))))

(declare-fun b!7998271 () Bool)

(declare-fun e!4712102 () Bool)

(declare-fun e!4712100 () Bool)

(assert (=> b!7998271 (= e!4712102 e!4712100)))

(declare-fun res!3163540 () Bool)

(assert (=> b!7998271 (= res!3163540 (not (nullable!9658 (reg!21902 lt!2713499))))))

(assert (=> b!7998271 (=> (not res!3163540) (not e!4712100))))

(declare-fun b!7998272 () Bool)

(declare-fun e!4712097 () Bool)

(assert (=> b!7998272 (= e!4712097 call!742953)))

(declare-fun b!7998273 () Bool)

(declare-fun e!4712098 () Bool)

(declare-fun e!4712099 () Bool)

(assert (=> b!7998273 (= e!4712098 e!4712099)))

(declare-fun res!3163541 () Bool)

(assert (=> b!7998273 (=> (not res!3163541) (not e!4712099))))

(assert (=> b!7998273 (= res!3163541 call!742953)))

(declare-fun b!7998274 () Bool)

(assert (=> b!7998274 (= e!4712100 call!742955)))

(declare-fun b!7998275 () Bool)

(declare-fun res!3163542 () Bool)

(assert (=> b!7998275 (=> res!3163542 e!4712098)))

(assert (=> b!7998275 (= res!3163542 (not ((_ is Concat!30572) lt!2713499)))))

(declare-fun e!4712103 () Bool)

(assert (=> b!7998275 (= e!4712103 e!4712098)))

(declare-fun b!7998276 () Bool)

(assert (=> b!7998276 (= e!4712102 e!4712103)))

(assert (=> b!7998276 (= c!1468523 ((_ is Union!21573) lt!2713499))))

(declare-fun b!7998277 () Bool)

(assert (=> b!7998277 (= e!4712099 call!742954)))

(declare-fun d!2386439 () Bool)

(declare-fun res!3163543 () Bool)

(declare-fun e!4712101 () Bool)

(assert (=> d!2386439 (=> res!3163543 e!4712101)))

(assert (=> d!2386439 (= res!3163543 ((_ is ElementMatch!21573) lt!2713499))))

(assert (=> d!2386439 (= (validRegex!11877 lt!2713499) e!4712101)))

(declare-fun b!7998278 () Bool)

(assert (=> b!7998278 (= e!4712101 e!4712102)))

(declare-fun c!1468522 () Bool)

(assert (=> b!7998278 (= c!1468522 ((_ is Star!21573) lt!2713499))))

(declare-fun b!7998279 () Bool)

(declare-fun res!3163539 () Bool)

(assert (=> b!7998279 (=> (not res!3163539) (not e!4712097))))

(assert (=> b!7998279 (= res!3163539 call!742954)))

(assert (=> b!7998279 (= e!4712103 e!4712097)))

(declare-fun bm!742950 () Bool)

(assert (=> bm!742950 (= call!742955 (validRegex!11877 (ite c!1468522 (reg!21902 lt!2713499) (ite c!1468523 (regOne!43659 lt!2713499) (regTwo!43658 lt!2713499)))))))

(assert (= (and d!2386439 (not res!3163543)) b!7998278))

(assert (= (and b!7998278 c!1468522) b!7998271))

(assert (= (and b!7998278 (not c!1468522)) b!7998276))

(assert (= (and b!7998271 res!3163540) b!7998274))

(assert (= (and b!7998276 c!1468523) b!7998279))

(assert (= (and b!7998276 (not c!1468523)) b!7998275))

(assert (= (and b!7998279 res!3163539) b!7998272))

(assert (= (and b!7998275 (not res!3163542)) b!7998273))

(assert (= (and b!7998273 res!3163541) b!7998277))

(assert (= (or b!7998279 b!7998277) bm!742948))

(assert (= (or b!7998272 b!7998273) bm!742949))

(assert (= (or b!7998274 bm!742948) bm!742950))

(declare-fun m!8367556 () Bool)

(assert (=> bm!742949 m!8367556))

(declare-fun m!8367560 () Bool)

(assert (=> b!7998271 m!8367560))

(declare-fun m!8367563 () Bool)

(assert (=> bm!742950 m!8367563))

(assert (=> b!7998189 d!2386439))

(declare-fun b!7998331 () Bool)

(declare-fun e!4712132 () Regex!21573)

(declare-fun call!742977 () Regex!21573)

(assert (=> b!7998331 (= e!4712132 (Concat!30572 call!742977 baseR!141))))

(declare-fun b!7998332 () Bool)

(declare-fun e!4712136 () Regex!21573)

(declare-fun call!742978 () Regex!21573)

(declare-fun call!742976 () Regex!21573)

(assert (=> b!7998332 (= e!4712136 (Union!21573 (Concat!30572 call!742976 (regTwo!43658 baseR!141)) call!742978))))

(declare-fun call!742975 () Regex!21573)

(declare-fun c!1468549 () Bool)

(declare-fun bm!742970 () Bool)

(declare-fun c!1468551 () Bool)

(assert (=> bm!742970 (= call!742975 (derivativeStep!6588 (ite c!1468549 (regTwo!43659 baseR!141) (ite c!1468551 (reg!21902 baseR!141) (regOne!43658 baseR!141))) (h!81126 input!8036)))))

(declare-fun bm!742971 () Bool)

(assert (=> bm!742971 (= call!742978 (derivativeStep!6588 (ite c!1468549 (regOne!43659 baseR!141) (regTwo!43658 baseR!141)) (h!81126 input!8036)))))

(declare-fun b!7998333 () Bool)

(declare-fun e!4712135 () Regex!21573)

(assert (=> b!7998333 (= e!4712135 EmptyLang!21573)))

(declare-fun bm!742972 () Bool)

(assert (=> bm!742972 (= call!742976 call!742977)))

(declare-fun b!7998334 () Bool)

(declare-fun e!4712133 () Regex!21573)

(assert (=> b!7998334 (= e!4712133 (ite (= (h!81126 input!8036) (c!1468496 baseR!141)) EmptyExpr!21573 EmptyLang!21573))))

(declare-fun bm!742973 () Bool)

(assert (=> bm!742973 (= call!742977 call!742975)))

(declare-fun b!7998335 () Bool)

(assert (=> b!7998335 (= c!1468549 ((_ is Union!21573) baseR!141))))

(declare-fun e!4712134 () Regex!21573)

(assert (=> b!7998335 (= e!4712133 e!4712134)))

(declare-fun b!7998336 () Bool)

(assert (=> b!7998336 (= e!4712136 (Union!21573 (Concat!30572 call!742976 (regTwo!43658 baseR!141)) EmptyLang!21573))))

(declare-fun b!7998337 () Bool)

(declare-fun c!1468548 () Bool)

(assert (=> b!7998337 (= c!1468548 (nullable!9658 (regOne!43658 baseR!141)))))

(assert (=> b!7998337 (= e!4712132 e!4712136)))

(declare-fun b!7998338 () Bool)

(assert (=> b!7998338 (= e!4712135 e!4712133)))

(declare-fun c!1468547 () Bool)

(assert (=> b!7998338 (= c!1468547 ((_ is ElementMatch!21573) baseR!141))))

(declare-fun b!7998339 () Bool)

(assert (=> b!7998339 (= e!4712134 e!4712132)))

(assert (=> b!7998339 (= c!1468551 ((_ is Star!21573) baseR!141))))

(declare-fun b!7998340 () Bool)

(assert (=> b!7998340 (= e!4712134 (Union!21573 call!742978 call!742975))))

(declare-fun d!2386441 () Bool)

(declare-fun lt!2713518 () Regex!21573)

(assert (=> d!2386441 (validRegex!11877 lt!2713518)))

(assert (=> d!2386441 (= lt!2713518 e!4712135)))

(declare-fun c!1468550 () Bool)

(assert (=> d!2386441 (= c!1468550 (or ((_ is EmptyExpr!21573) baseR!141) ((_ is EmptyLang!21573) baseR!141)))))

(assert (=> d!2386441 (validRegex!11877 baseR!141)))

(assert (=> d!2386441 (= (derivativeStep!6588 baseR!141 (h!81126 input!8036)) lt!2713518)))

(assert (= (and d!2386441 c!1468550) b!7998333))

(assert (= (and d!2386441 (not c!1468550)) b!7998338))

(assert (= (and b!7998338 c!1468547) b!7998334))

(assert (= (and b!7998338 (not c!1468547)) b!7998335))

(assert (= (and b!7998335 c!1468549) b!7998340))

(assert (= (and b!7998335 (not c!1468549)) b!7998339))

(assert (= (and b!7998339 c!1468551) b!7998331))

(assert (= (and b!7998339 (not c!1468551)) b!7998337))

(assert (= (and b!7998337 c!1468548) b!7998332))

(assert (= (and b!7998337 (not c!1468548)) b!7998336))

(assert (= (or b!7998332 b!7998336) bm!742972))

(assert (= (or b!7998331 bm!742972) bm!742973))

(assert (= (or b!7998340 bm!742973) bm!742970))

(assert (= (or b!7998340 b!7998332) bm!742971))

(declare-fun m!8367574 () Bool)

(assert (=> bm!742970 m!8367574))

(declare-fun m!8367576 () Bool)

(assert (=> bm!742971 m!8367576))

(declare-fun m!8367578 () Bool)

(assert (=> b!7998337 m!8367578))

(declare-fun m!8367580 () Bool)

(assert (=> d!2386441 m!8367580))

(assert (=> d!2386441 m!8367532))

(assert (=> b!7998189 d!2386441))

(declare-fun d!2386447 () Bool)

(declare-fun lt!2713520 () Regex!21573)

(assert (=> d!2386447 (validRegex!11877 lt!2713520)))

(declare-fun e!4712142 () Regex!21573)

(assert (=> d!2386447 (= lt!2713520 e!4712142)))

(declare-fun c!1468557 () Bool)

(assert (=> d!2386447 (= c!1468557 ((_ is Cons!74678) input!8036))))

(assert (=> d!2386447 (validRegex!11877 baseR!141)))

(assert (=> d!2386447 (= (derivative!759 baseR!141 input!8036) lt!2713520)))

(declare-fun b!7998351 () Bool)

(assert (=> b!7998351 (= e!4712142 (derivative!759 (derivativeStep!6588 baseR!141 (h!81126 input!8036)) (t!390545 input!8036)))))

(declare-fun b!7998352 () Bool)

(assert (=> b!7998352 (= e!4712142 baseR!141)))

(assert (= (and d!2386447 c!1468557) b!7998351))

(assert (= (and d!2386447 (not c!1468557)) b!7998352))

(declare-fun m!8367582 () Bool)

(assert (=> d!2386447 m!8367582))

(assert (=> d!2386447 m!8367532))

(assert (=> b!7998351 m!8367524))

(assert (=> b!7998351 m!8367524))

(declare-fun m!8367584 () Bool)

(assert (=> b!7998351 m!8367584))

(assert (=> b!7998183 d!2386447))

(declare-fun b!7998378 () Bool)

(declare-fun e!4712148 () Bool)

(declare-fun tp!2391801 () Bool)

(declare-fun tp!2391799 () Bool)

(assert (=> b!7998378 (= e!4712148 (and tp!2391801 tp!2391799))))

(declare-fun b!7998375 () Bool)

(assert (=> b!7998375 (= e!4712148 tp_is_empty!53689)))

(assert (=> b!7998185 (= tp!2391774 e!4712148)))

(declare-fun b!7998377 () Bool)

(declare-fun tp!2391800 () Bool)

(assert (=> b!7998377 (= e!4712148 tp!2391800)))

(declare-fun b!7998376 () Bool)

(declare-fun tp!2391803 () Bool)

(declare-fun tp!2391802 () Bool)

(assert (=> b!7998376 (= e!4712148 (and tp!2391803 tp!2391802))))

(assert (= (and b!7998185 ((_ is ElementMatch!21573) (reg!21902 baseR!141))) b!7998375))

(assert (= (and b!7998185 ((_ is Concat!30572) (reg!21902 baseR!141))) b!7998376))

(assert (= (and b!7998185 ((_ is Star!21573) (reg!21902 baseR!141))) b!7998377))

(assert (= (and b!7998185 ((_ is Union!21573) (reg!21902 baseR!141))) b!7998378))

(declare-fun b!7998382 () Bool)

(declare-fun e!4712149 () Bool)

(declare-fun tp!2391806 () Bool)

(declare-fun tp!2391804 () Bool)

(assert (=> b!7998382 (= e!4712149 (and tp!2391806 tp!2391804))))

(declare-fun b!7998379 () Bool)

(assert (=> b!7998379 (= e!4712149 tp_is_empty!53689)))

(assert (=> b!7998180 (= tp!2391775 e!4712149)))

(declare-fun b!7998381 () Bool)

(declare-fun tp!2391805 () Bool)

(assert (=> b!7998381 (= e!4712149 tp!2391805)))

(declare-fun b!7998380 () Bool)

(declare-fun tp!2391808 () Bool)

(declare-fun tp!2391807 () Bool)

(assert (=> b!7998380 (= e!4712149 (and tp!2391808 tp!2391807))))

(assert (= (and b!7998180 ((_ is ElementMatch!21573) (regOne!43659 r!24786))) b!7998379))

(assert (= (and b!7998180 ((_ is Concat!30572) (regOne!43659 r!24786))) b!7998380))

(assert (= (and b!7998180 ((_ is Star!21573) (regOne!43659 r!24786))) b!7998381))

(assert (= (and b!7998180 ((_ is Union!21573) (regOne!43659 r!24786))) b!7998382))

(declare-fun b!7998386 () Bool)

(declare-fun e!4712150 () Bool)

(declare-fun tp!2391811 () Bool)

(declare-fun tp!2391809 () Bool)

(assert (=> b!7998386 (= e!4712150 (and tp!2391811 tp!2391809))))

(declare-fun b!7998383 () Bool)

(assert (=> b!7998383 (= e!4712150 tp_is_empty!53689)))

(assert (=> b!7998180 (= tp!2391776 e!4712150)))

(declare-fun b!7998385 () Bool)

(declare-fun tp!2391810 () Bool)

(assert (=> b!7998385 (= e!4712150 tp!2391810)))

(declare-fun b!7998384 () Bool)

(declare-fun tp!2391813 () Bool)

(declare-fun tp!2391812 () Bool)

(assert (=> b!7998384 (= e!4712150 (and tp!2391813 tp!2391812))))

(assert (= (and b!7998180 ((_ is ElementMatch!21573) (regTwo!43659 r!24786))) b!7998383))

(assert (= (and b!7998180 ((_ is Concat!30572) (regTwo!43659 r!24786))) b!7998384))

(assert (= (and b!7998180 ((_ is Star!21573) (regTwo!43659 r!24786))) b!7998385))

(assert (= (and b!7998180 ((_ is Union!21573) (regTwo!43659 r!24786))) b!7998386))

(declare-fun b!7998394 () Bool)

(declare-fun e!4712152 () Bool)

(declare-fun tp!2391821 () Bool)

(declare-fun tp!2391819 () Bool)

(assert (=> b!7998394 (= e!4712152 (and tp!2391821 tp!2391819))))

(declare-fun b!7998391 () Bool)

(assert (=> b!7998391 (= e!4712152 tp_is_empty!53689)))

(assert (=> b!7998186 (= tp!2391772 e!4712152)))

(declare-fun b!7998393 () Bool)

(declare-fun tp!2391820 () Bool)

(assert (=> b!7998393 (= e!4712152 tp!2391820)))

(declare-fun b!7998392 () Bool)

(declare-fun tp!2391823 () Bool)

(declare-fun tp!2391822 () Bool)

(assert (=> b!7998392 (= e!4712152 (and tp!2391823 tp!2391822))))

(assert (= (and b!7998186 ((_ is ElementMatch!21573) (regOne!43658 r!24786))) b!7998391))

(assert (= (and b!7998186 ((_ is Concat!30572) (regOne!43658 r!24786))) b!7998392))

(assert (= (and b!7998186 ((_ is Star!21573) (regOne!43658 r!24786))) b!7998393))

(assert (= (and b!7998186 ((_ is Union!21573) (regOne!43658 r!24786))) b!7998394))

(declare-fun b!7998402 () Bool)

(declare-fun e!4712154 () Bool)

(declare-fun tp!2391831 () Bool)

(declare-fun tp!2391829 () Bool)

(assert (=> b!7998402 (= e!4712154 (and tp!2391831 tp!2391829))))

(declare-fun b!7998399 () Bool)

(assert (=> b!7998399 (= e!4712154 tp_is_empty!53689)))

(assert (=> b!7998186 (= tp!2391768 e!4712154)))

(declare-fun b!7998401 () Bool)

(declare-fun tp!2391830 () Bool)

(assert (=> b!7998401 (= e!4712154 tp!2391830)))

(declare-fun b!7998400 () Bool)

(declare-fun tp!2391833 () Bool)

(declare-fun tp!2391832 () Bool)

(assert (=> b!7998400 (= e!4712154 (and tp!2391833 tp!2391832))))

(assert (= (and b!7998186 ((_ is ElementMatch!21573) (regTwo!43658 r!24786))) b!7998399))

(assert (= (and b!7998186 ((_ is Concat!30572) (regTwo!43658 r!24786))) b!7998400))

(assert (= (and b!7998186 ((_ is Star!21573) (regTwo!43658 r!24786))) b!7998401))

(assert (= (and b!7998186 ((_ is Union!21573) (regTwo!43658 r!24786))) b!7998402))

(declare-fun b!7998410 () Bool)

(declare-fun e!4712156 () Bool)

(declare-fun tp!2391839 () Bool)

(declare-fun tp!2391835 () Bool)

(assert (=> b!7998410 (= e!4712156 (and tp!2391839 tp!2391835))))

(declare-fun b!7998404 () Bool)

(assert (=> b!7998404 (= e!4712156 tp_is_empty!53689)))

(assert (=> b!7998177 (= tp!2391778 e!4712156)))

(declare-fun b!7998408 () Bool)

(declare-fun tp!2391837 () Bool)

(assert (=> b!7998408 (= e!4712156 tp!2391837)))

(declare-fun b!7998406 () Bool)

(declare-fun tp!2391842 () Bool)

(declare-fun tp!2391840 () Bool)

(assert (=> b!7998406 (= e!4712156 (and tp!2391842 tp!2391840))))

(assert (= (and b!7998177 ((_ is ElementMatch!21573) (regOne!43658 baseR!141))) b!7998404))

(assert (= (and b!7998177 ((_ is Concat!30572) (regOne!43658 baseR!141))) b!7998406))

(assert (= (and b!7998177 ((_ is Star!21573) (regOne!43658 baseR!141))) b!7998408))

(assert (= (and b!7998177 ((_ is Union!21573) (regOne!43658 baseR!141))) b!7998410))

(declare-fun b!7998416 () Bool)

(declare-fun e!4712158 () Bool)

(declare-fun tp!2391847 () Bool)

(declare-fun tp!2391844 () Bool)

(assert (=> b!7998416 (= e!4712158 (and tp!2391847 tp!2391844))))

(declare-fun b!7998411 () Bool)

(assert (=> b!7998411 (= e!4712158 tp_is_empty!53689)))

(assert (=> b!7998177 (= tp!2391777 e!4712158)))

(declare-fun b!7998414 () Bool)

(declare-fun tp!2391845 () Bool)

(assert (=> b!7998414 (= e!4712158 tp!2391845)))

(declare-fun b!7998412 () Bool)

(declare-fun tp!2391851 () Bool)

(declare-fun tp!2391849 () Bool)

(assert (=> b!7998412 (= e!4712158 (and tp!2391851 tp!2391849))))

(assert (= (and b!7998177 ((_ is ElementMatch!21573) (regTwo!43658 baseR!141))) b!7998411))

(assert (= (and b!7998177 ((_ is Concat!30572) (regTwo!43658 baseR!141))) b!7998412))

(assert (= (and b!7998177 ((_ is Star!21573) (regTwo!43658 baseR!141))) b!7998414))

(assert (= (and b!7998177 ((_ is Union!21573) (regTwo!43658 baseR!141))) b!7998416))

(declare-fun b!7998422 () Bool)

(declare-fun e!4712159 () Bool)

(declare-fun tp!2391856 () Bool)

(declare-fun tp!2391854 () Bool)

(assert (=> b!7998422 (= e!4712159 (and tp!2391856 tp!2391854))))

(declare-fun b!7998419 () Bool)

(assert (=> b!7998419 (= e!4712159 tp_is_empty!53689)))

(assert (=> b!7998187 (= tp!2391773 e!4712159)))

(declare-fun b!7998421 () Bool)

(declare-fun tp!2391855 () Bool)

(assert (=> b!7998421 (= e!4712159 tp!2391855)))

(declare-fun b!7998420 () Bool)

(declare-fun tp!2391859 () Bool)

(declare-fun tp!2391857 () Bool)

(assert (=> b!7998420 (= e!4712159 (and tp!2391859 tp!2391857))))

(assert (= (and b!7998187 ((_ is ElementMatch!21573) (reg!21902 r!24786))) b!7998419))

(assert (= (and b!7998187 ((_ is Concat!30572) (reg!21902 r!24786))) b!7998420))

(assert (= (and b!7998187 ((_ is Star!21573) (reg!21902 r!24786))) b!7998421))

(assert (= (and b!7998187 ((_ is Union!21573) (reg!21902 r!24786))) b!7998422))

(declare-fun b!7998434 () Bool)

(declare-fun e!4712162 () Bool)

(declare-fun tp!2391869 () Bool)

(declare-fun tp!2391866 () Bool)

(assert (=> b!7998434 (= e!4712162 (and tp!2391869 tp!2391866))))

(declare-fun b!7998429 () Bool)

(assert (=> b!7998429 (= e!4712162 tp_is_empty!53689)))

(assert (=> b!7998182 (= tp!2391771 e!4712162)))

(declare-fun b!7998433 () Bool)

(declare-fun tp!2391868 () Bool)

(assert (=> b!7998433 (= e!4712162 tp!2391868)))

(declare-fun b!7998431 () Bool)

(declare-fun tp!2391873 () Bool)

(declare-fun tp!2391871 () Bool)

(assert (=> b!7998431 (= e!4712162 (and tp!2391873 tp!2391871))))

(assert (= (and b!7998182 ((_ is ElementMatch!21573) (regOne!43659 baseR!141))) b!7998429))

(assert (= (and b!7998182 ((_ is Concat!30572) (regOne!43659 baseR!141))) b!7998431))

(assert (= (and b!7998182 ((_ is Star!21573) (regOne!43659 baseR!141))) b!7998433))

(assert (= (and b!7998182 ((_ is Union!21573) (regOne!43659 baseR!141))) b!7998434))

(declare-fun b!7998442 () Bool)

(declare-fun e!4712164 () Bool)

(declare-fun tp!2391881 () Bool)

(declare-fun tp!2391879 () Bool)

(assert (=> b!7998442 (= e!4712164 (and tp!2391881 tp!2391879))))

(declare-fun b!7998439 () Bool)

(assert (=> b!7998439 (= e!4712164 tp_is_empty!53689)))

(assert (=> b!7998182 (= tp!2391769 e!4712164)))

(declare-fun b!7998441 () Bool)

(declare-fun tp!2391880 () Bool)

(assert (=> b!7998441 (= e!4712164 tp!2391880)))

(declare-fun b!7998440 () Bool)

(declare-fun tp!2391883 () Bool)

(declare-fun tp!2391882 () Bool)

(assert (=> b!7998440 (= e!4712164 (and tp!2391883 tp!2391882))))

(assert (= (and b!7998182 ((_ is ElementMatch!21573) (regTwo!43659 baseR!141))) b!7998439))

(assert (= (and b!7998182 ((_ is Concat!30572) (regTwo!43659 baseR!141))) b!7998440))

(assert (= (and b!7998182 ((_ is Star!21573) (regTwo!43659 baseR!141))) b!7998441))

(assert (= (and b!7998182 ((_ is Union!21573) (regTwo!43659 baseR!141))) b!7998442))

(declare-fun b!7998455 () Bool)

(declare-fun e!4712169 () Bool)

(declare-fun tp!2391896 () Bool)

(assert (=> b!7998455 (= e!4712169 (and tp_is_empty!53689 tp!2391896))))

(assert (=> b!7998184 (= tp!2391770 e!4712169)))

(assert (= (and b!7998184 ((_ is Cons!74678) (t!390545 input!8036))) b!7998455))

(check-sat (not b!7998420) (not b!7998351) (not d!2386423) (not b!7998410) (not b!7998441) (not bm!742950) (not b!7998381) (not b!7998392) (not b!7998422) (not b!7998416) (not b!7998393) (not b!7998394) (not b!7998414) (not b!7998222) (not d!2386441) tp_is_empty!53689 (not b!7998271) (not b!7998442) (not b!7998385) (not b!7998406) (not bm!742970) (not b!7998377) (not b!7998431) (not b!7998262) (not bm!742946) (not b!7998433) (not bm!742971) (not d!2386447) (not b!7998384) (not b!7998401) (not b!7998408) (not b!7998440) (not b!7998380) (not bm!742947) (not b!7998455) (not b!7998376) (not bm!742949) (not b!7998382) (not b!7998337) (not b!7998434) (not b!7998412) (not b!7998402) (not b!7998209) (not b!7998400) (not b!7998220) (not b!7998386) (not b!7998378) (not b!7998421))
(check-sat)
