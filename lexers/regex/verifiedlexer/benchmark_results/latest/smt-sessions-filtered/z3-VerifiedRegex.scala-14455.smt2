; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752828 () Bool)

(assert start!752828)

(declare-fun b!8001081 () Bool)

(declare-fun e!4713387 () Bool)

(declare-datatypes ((C!43520 0))(
  ( (C!43521 (val!32308 Int)) )
))
(declare-datatypes ((Regex!21591 0))(
  ( (ElementMatch!21591 (c!1469004 C!43520)) (Concat!30590 (regOne!43694 Regex!21591) (regTwo!43694 Regex!21591)) (EmptyExpr!21591) (Star!21591 (reg!21920 Regex!21591)) (EmptyLang!21591) (Union!21591 (regOne!43695 Regex!21591) (regTwo!43695 Regex!21591)) )
))
(declare-fun r!24748 () Regex!21591)

(declare-datatypes ((List!74820 0))(
  ( (Nil!74696) (Cons!74696 (h!81144 C!43520) (t!390563 List!74820)) )
))
(declare-fun input!8006 () List!74820)

(declare-fun matchR!10770 (Regex!21591 List!74820) Bool)

(declare-fun derivative!771 (Regex!21591 List!74820) Regex!21591)

(assert (=> b!8001081 (= e!4713387 (not (= (matchR!10770 r!24748 input!8006) (matchR!10770 (derivative!771 r!24748 input!8006) Nil!74696))))))

(declare-fun lt!2713724 () Regex!21591)

(assert (=> b!8001081 (= (matchR!10770 lt!2713724 (t!390563 input!8006)) (matchR!10770 (derivative!771 lt!2713724 (t!390563 input!8006)) Nil!74696))))

(declare-datatypes ((Unit!170592 0))(
  ( (Unit!170593) )
))
(declare-fun lt!2713725 () Unit!170592)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!312 (Regex!21591 List!74820) Unit!170592)

(assert (=> b!8001081 (= lt!2713725 (lemmaMatchRIsSameAsWholeDerivativeAndNil!312 lt!2713724 (t!390563 input!8006)))))

(declare-fun b!8001082 () Bool)

(declare-fun e!4713384 () Bool)

(declare-fun tp!2393343 () Bool)

(declare-fun tp!2393346 () Bool)

(assert (=> b!8001082 (= e!4713384 (and tp!2393343 tp!2393346))))

(declare-fun b!8001083 () Bool)

(declare-fun e!4713385 () Bool)

(declare-fun tp_is_empty!53725 () Bool)

(declare-fun tp!2393342 () Bool)

(assert (=> b!8001083 (= e!4713385 (and tp_is_empty!53725 tp!2393342))))

(declare-fun b!8001084 () Bool)

(declare-fun tp!2393341 () Bool)

(assert (=> b!8001084 (= e!4713384 tp!2393341)))

(declare-fun res!3164100 () Bool)

(declare-fun e!4713386 () Bool)

(assert (=> start!752828 (=> (not res!3164100) (not e!4713386))))

(declare-fun validRegex!11895 (Regex!21591) Bool)

(assert (=> start!752828 (= res!3164100 (validRegex!11895 r!24748))))

(assert (=> start!752828 e!4713386))

(assert (=> start!752828 e!4713384))

(assert (=> start!752828 e!4713385))

(declare-fun b!8001085 () Bool)

(assert (=> b!8001085 (= e!4713384 tp_is_empty!53725)))

(declare-fun b!8001086 () Bool)

(assert (=> b!8001086 (= e!4713386 e!4713387)))

(declare-fun res!3164099 () Bool)

(assert (=> b!8001086 (=> (not res!3164099) (not e!4713387))))

(assert (=> b!8001086 (= res!3164099 (validRegex!11895 lt!2713724))))

(declare-fun derivativeStep!6606 (Regex!21591 C!43520) Regex!21591)

(assert (=> b!8001086 (= lt!2713724 (derivativeStep!6606 r!24748 (h!81144 input!8006)))))

(declare-fun b!8001087 () Bool)

(declare-fun res!3164098 () Bool)

(assert (=> b!8001087 (=> (not res!3164098) (not e!4713386))))

(get-info :version)

(assert (=> b!8001087 (= res!3164098 ((_ is Cons!74696) input!8006))))

(declare-fun b!8001088 () Bool)

(declare-fun tp!2393345 () Bool)

(declare-fun tp!2393344 () Bool)

(assert (=> b!8001088 (= e!4713384 (and tp!2393345 tp!2393344))))

(assert (= (and start!752828 res!3164100) b!8001087))

(assert (= (and b!8001087 res!3164098) b!8001086))

(assert (= (and b!8001086 res!3164099) b!8001081))

(assert (= (and start!752828 ((_ is ElementMatch!21591) r!24748)) b!8001085))

(assert (= (and start!752828 ((_ is Concat!30590) r!24748)) b!8001082))

(assert (= (and start!752828 ((_ is Star!21591) r!24748)) b!8001084))

(assert (= (and start!752828 ((_ is Union!21591) r!24748)) b!8001088))

(assert (= (and start!752828 ((_ is Cons!74696) input!8006)) b!8001083))

(declare-fun m!8368530 () Bool)

(assert (=> b!8001081 m!8368530))

(declare-fun m!8368532 () Bool)

(assert (=> b!8001081 m!8368532))

(declare-fun m!8368534 () Bool)

(assert (=> b!8001081 m!8368534))

(declare-fun m!8368536 () Bool)

(assert (=> b!8001081 m!8368536))

(declare-fun m!8368538 () Bool)

(assert (=> b!8001081 m!8368538))

(assert (=> b!8001081 m!8368530))

(assert (=> b!8001081 m!8368536))

(declare-fun m!8368540 () Bool)

(assert (=> b!8001081 m!8368540))

(declare-fun m!8368542 () Bool)

(assert (=> b!8001081 m!8368542))

(declare-fun m!8368544 () Bool)

(assert (=> start!752828 m!8368544))

(declare-fun m!8368546 () Bool)

(assert (=> b!8001086 m!8368546))

(declare-fun m!8368548 () Bool)

(assert (=> b!8001086 m!8368548))

(check-sat (not b!8001088) (not b!8001084) (not b!8001081) (not start!752828) tp_is_empty!53725 (not b!8001086) (not b!8001082) (not b!8001083))
(check-sat)
(get-model)

(declare-fun b!8001125 () Bool)

(declare-fun e!4713422 () Bool)

(declare-fun call!743343 () Bool)

(assert (=> b!8001125 (= e!4713422 call!743343)))

(declare-fun b!8001126 () Bool)

(declare-fun e!4713420 () Bool)

(declare-fun e!4713421 () Bool)

(assert (=> b!8001126 (= e!4713420 e!4713421)))

(declare-fun res!3164122 () Bool)

(declare-fun nullable!9672 (Regex!21591) Bool)

(assert (=> b!8001126 (= res!3164122 (not (nullable!9672 (reg!21920 lt!2713724))))))

(assert (=> b!8001126 (=> (not res!3164122) (not e!4713421))))

(declare-fun b!8001127 () Bool)

(declare-fun e!4713418 () Bool)

(assert (=> b!8001127 (= e!4713418 e!4713422)))

(declare-fun res!3164123 () Bool)

(assert (=> b!8001127 (=> (not res!3164123) (not e!4713422))))

(declare-fun call!743345 () Bool)

(assert (=> b!8001127 (= res!3164123 call!743345)))

(declare-fun bm!743338 () Bool)

(declare-fun call!743344 () Bool)

(assert (=> bm!743338 (= call!743343 call!743344)))

(declare-fun b!8001128 () Bool)

(declare-fun e!4713417 () Bool)

(assert (=> b!8001128 (= e!4713420 e!4713417)))

(declare-fun c!1469013 () Bool)

(assert (=> b!8001128 (= c!1469013 ((_ is Union!21591) lt!2713724))))

(declare-fun b!8001129 () Bool)

(declare-fun e!4713416 () Bool)

(assert (=> b!8001129 (= e!4713416 call!743345)))

(declare-fun bm!743339 () Bool)

(assert (=> bm!743339 (= call!743345 (validRegex!11895 (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))))))

(declare-fun b!8001130 () Bool)

(assert (=> b!8001130 (= e!4713421 call!743344)))

(declare-fun b!8001132 () Bool)

(declare-fun res!3164124 () Bool)

(assert (=> b!8001132 (=> res!3164124 e!4713418)))

(assert (=> b!8001132 (= res!3164124 (not ((_ is Concat!30590) lt!2713724)))))

(assert (=> b!8001132 (= e!4713417 e!4713418)))

(declare-fun c!1469014 () Bool)

(declare-fun bm!743340 () Bool)

(assert (=> bm!743340 (= call!743344 (validRegex!11895 (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))))))

(declare-fun b!8001133 () Bool)

(declare-fun res!3164121 () Bool)

(assert (=> b!8001133 (=> (not res!3164121) (not e!4713416))))

(assert (=> b!8001133 (= res!3164121 call!743343)))

(assert (=> b!8001133 (= e!4713417 e!4713416)))

(declare-fun d!2386688 () Bool)

(declare-fun res!3164125 () Bool)

(declare-fun e!4713419 () Bool)

(assert (=> d!2386688 (=> res!3164125 e!4713419)))

(assert (=> d!2386688 (= res!3164125 ((_ is ElementMatch!21591) lt!2713724))))

(assert (=> d!2386688 (= (validRegex!11895 lt!2713724) e!4713419)))

(declare-fun b!8001131 () Bool)

(assert (=> b!8001131 (= e!4713419 e!4713420)))

(assert (=> b!8001131 (= c!1469014 ((_ is Star!21591) lt!2713724))))

(assert (= (and d!2386688 (not res!3164125)) b!8001131))

(assert (= (and b!8001131 c!1469014) b!8001126))

(assert (= (and b!8001131 (not c!1469014)) b!8001128))

(assert (= (and b!8001126 res!3164122) b!8001130))

(assert (= (and b!8001128 c!1469013) b!8001133))

(assert (= (and b!8001128 (not c!1469013)) b!8001132))

(assert (= (and b!8001133 res!3164121) b!8001129))

(assert (= (and b!8001132 (not res!3164124)) b!8001127))

(assert (= (and b!8001127 res!3164123) b!8001125))

(assert (= (or b!8001129 b!8001127) bm!743339))

(assert (= (or b!8001133 b!8001125) bm!743338))

(assert (= (or b!8001130 bm!743338) bm!743340))

(declare-fun m!8368550 () Bool)

(assert (=> b!8001126 m!8368550))

(declare-fun m!8368552 () Bool)

(assert (=> bm!743339 m!8368552))

(declare-fun m!8368554 () Bool)

(assert (=> bm!743340 m!8368554))

(assert (=> b!8001086 d!2386688))

(declare-fun b!8001192 () Bool)

(declare-fun e!4713459 () Regex!21591)

(declare-fun call!743369 () Regex!21591)

(declare-fun call!743371 () Regex!21591)

(assert (=> b!8001192 (= e!4713459 (Union!21591 call!743369 call!743371))))

(declare-fun b!8001193 () Bool)

(declare-fun e!4713457 () Regex!21591)

(assert (=> b!8001193 (= e!4713457 (ite (= (h!81144 input!8006) (c!1469004 r!24748)) EmptyExpr!21591 EmptyLang!21591))))

(declare-fun b!8001194 () Bool)

(declare-fun e!4713458 () Regex!21591)

(declare-fun call!743368 () Regex!21591)

(assert (=> b!8001194 (= e!4713458 (Union!21591 (Concat!30590 call!743368 (regTwo!43694 r!24748)) EmptyLang!21591))))

(declare-fun b!8001195 () Bool)

(declare-fun e!4713460 () Regex!21591)

(assert (=> b!8001195 (= e!4713460 e!4713457)))

(declare-fun c!1469041 () Bool)

(assert (=> b!8001195 (= c!1469041 ((_ is ElementMatch!21591) r!24748))))

(declare-fun b!8001196 () Bool)

(assert (=> b!8001196 (= e!4713458 (Union!21591 (Concat!30590 call!743368 (regTwo!43694 r!24748)) call!743369))))

(declare-fun bm!743363 () Bool)

(declare-fun c!1469040 () Bool)

(declare-fun c!1469042 () Bool)

(assert (=> bm!743363 (= call!743371 (derivativeStep!6606 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))) (h!81144 input!8006)))))

(declare-fun bm!743364 () Bool)

(declare-fun call!743370 () Regex!21591)

(assert (=> bm!743364 (= call!743368 call!743370)))

(declare-fun bm!743365 () Bool)

(assert (=> bm!743365 (= call!743369 (derivativeStep!6606 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)) (h!81144 input!8006)))))

(declare-fun d!2386692 () Bool)

(declare-fun lt!2713730 () Regex!21591)

(assert (=> d!2386692 (validRegex!11895 lt!2713730)))

(assert (=> d!2386692 (= lt!2713730 e!4713460)))

(declare-fun c!1469043 () Bool)

(assert (=> d!2386692 (= c!1469043 (or ((_ is EmptyExpr!21591) r!24748) ((_ is EmptyLang!21591) r!24748)))))

(assert (=> d!2386692 (validRegex!11895 r!24748)))

(assert (=> d!2386692 (= (derivativeStep!6606 r!24748 (h!81144 input!8006)) lt!2713730)))

(declare-fun b!8001197 () Bool)

(declare-fun c!1469039 () Bool)

(assert (=> b!8001197 (= c!1469039 (nullable!9672 (regOne!43694 r!24748)))))

(declare-fun e!4713461 () Regex!21591)

(assert (=> b!8001197 (= e!4713461 e!4713458)))

(declare-fun b!8001198 () Bool)

(assert (=> b!8001198 (= e!4713460 EmptyLang!21591)))

(declare-fun b!8001199 () Bool)

(assert (=> b!8001199 (= e!4713461 (Concat!30590 call!743370 r!24748))))

(declare-fun b!8001200 () Bool)

(assert (=> b!8001200 (= c!1469040 ((_ is Union!21591) r!24748))))

(assert (=> b!8001200 (= e!4713457 e!4713459)))

(declare-fun bm!743366 () Bool)

(assert (=> bm!743366 (= call!743370 call!743371)))

(declare-fun b!8001201 () Bool)

(assert (=> b!8001201 (= e!4713459 e!4713461)))

(assert (=> b!8001201 (= c!1469042 ((_ is Star!21591) r!24748))))

(assert (= (and d!2386692 c!1469043) b!8001198))

(assert (= (and d!2386692 (not c!1469043)) b!8001195))

(assert (= (and b!8001195 c!1469041) b!8001193))

(assert (= (and b!8001195 (not c!1469041)) b!8001200))

(assert (= (and b!8001200 c!1469040) b!8001192))

(assert (= (and b!8001200 (not c!1469040)) b!8001201))

(assert (= (and b!8001201 c!1469042) b!8001199))

(assert (= (and b!8001201 (not c!1469042)) b!8001197))

(assert (= (and b!8001197 c!1469039) b!8001196))

(assert (= (and b!8001197 (not c!1469039)) b!8001194))

(assert (= (or b!8001196 b!8001194) bm!743364))

(assert (= (or b!8001199 bm!743364) bm!743366))

(assert (= (or b!8001192 b!8001196) bm!743365))

(assert (= (or b!8001192 bm!743366) bm!743363))

(declare-fun m!8368568 () Bool)

(assert (=> bm!743363 m!8368568))

(declare-fun m!8368570 () Bool)

(assert (=> bm!743365 m!8368570))

(declare-fun m!8368572 () Bool)

(assert (=> d!2386692 m!8368572))

(assert (=> d!2386692 m!8368544))

(declare-fun m!8368574 () Bool)

(assert (=> b!8001197 m!8368574))

(assert (=> b!8001086 d!2386692))

(declare-fun b!8001269 () Bool)

(declare-fun e!4713497 () Bool)

(declare-fun lt!2713736 () Bool)

(declare-fun call!743380 () Bool)

(assert (=> b!8001269 (= e!4713497 (= lt!2713736 call!743380))))

(declare-fun b!8001270 () Bool)

(declare-fun res!3164175 () Bool)

(declare-fun e!4713499 () Bool)

(assert (=> b!8001270 (=> res!3164175 e!4713499)))

(assert (=> b!8001270 (= res!3164175 (not ((_ is ElementMatch!21591) (derivative!771 r!24748 input!8006))))))

(declare-fun e!4713500 () Bool)

(assert (=> b!8001270 (= e!4713500 e!4713499)))

(declare-fun b!8001271 () Bool)

(declare-fun res!3164169 () Bool)

(assert (=> b!8001271 (=> res!3164169 e!4713499)))

(declare-fun e!4713496 () Bool)

(assert (=> b!8001271 (= res!3164169 e!4713496)))

(declare-fun res!3164170 () Bool)

(assert (=> b!8001271 (=> (not res!3164170) (not e!4713496))))

(assert (=> b!8001271 (= res!3164170 lt!2713736)))

(declare-fun b!8001272 () Bool)

(declare-fun head!16302 (List!74820) C!43520)

(assert (=> b!8001272 (= e!4713496 (= (head!16302 Nil!74696) (c!1469004 (derivative!771 r!24748 input!8006))))))

(declare-fun b!8001268 () Bool)

(declare-fun e!4713495 () Bool)

(declare-fun tail!15829 (List!74820) List!74820)

(assert (=> b!8001268 (= e!4713495 (matchR!10770 (derivativeStep!6606 (derivative!771 r!24748 input!8006) (head!16302 Nil!74696)) (tail!15829 Nil!74696)))))

(declare-fun d!2386698 () Bool)

(assert (=> d!2386698 e!4713497))

(declare-fun c!1469062 () Bool)

(assert (=> d!2386698 (= c!1469062 ((_ is EmptyExpr!21591) (derivative!771 r!24748 input!8006)))))

(assert (=> d!2386698 (= lt!2713736 e!4713495)))

(declare-fun c!1469063 () Bool)

(declare-fun isEmpty!42968 (List!74820) Bool)

(assert (=> d!2386698 (= c!1469063 (isEmpty!42968 Nil!74696))))

(assert (=> d!2386698 (validRegex!11895 (derivative!771 r!24748 input!8006))))

(assert (=> d!2386698 (= (matchR!10770 (derivative!771 r!24748 input!8006) Nil!74696) lt!2713736)))

(declare-fun b!8001273 () Bool)

(declare-fun e!4713498 () Bool)

(declare-fun e!4713501 () Bool)

(assert (=> b!8001273 (= e!4713498 e!4713501)))

(declare-fun res!3164168 () Bool)

(assert (=> b!8001273 (=> res!3164168 e!4713501)))

(assert (=> b!8001273 (= res!3164168 call!743380)))

(declare-fun b!8001274 () Bool)

(assert (=> b!8001274 (= e!4713501 (not (= (head!16302 Nil!74696) (c!1469004 (derivative!771 r!24748 input!8006)))))))

(declare-fun b!8001275 () Bool)

(assert (=> b!8001275 (= e!4713497 e!4713500)))

(declare-fun c!1469061 () Bool)

(assert (=> b!8001275 (= c!1469061 ((_ is EmptyLang!21591) (derivative!771 r!24748 input!8006)))))

(declare-fun bm!743375 () Bool)

(assert (=> bm!743375 (= call!743380 (isEmpty!42968 Nil!74696))))

(declare-fun b!8001276 () Bool)

(assert (=> b!8001276 (= e!4713499 e!4713498)))

(declare-fun res!3164174 () Bool)

(assert (=> b!8001276 (=> (not res!3164174) (not e!4713498))))

(assert (=> b!8001276 (= res!3164174 (not lt!2713736))))

(declare-fun b!8001277 () Bool)

(assert (=> b!8001277 (= e!4713495 (nullable!9672 (derivative!771 r!24748 input!8006)))))

(declare-fun b!8001278 () Bool)

(assert (=> b!8001278 (= e!4713500 (not lt!2713736))))

(declare-fun b!8001279 () Bool)

(declare-fun res!3164173 () Bool)

(assert (=> b!8001279 (=> (not res!3164173) (not e!4713496))))

(assert (=> b!8001279 (= res!3164173 (not call!743380))))

(declare-fun b!8001280 () Bool)

(declare-fun res!3164172 () Bool)

(assert (=> b!8001280 (=> res!3164172 e!4713501)))

(assert (=> b!8001280 (= res!3164172 (not (isEmpty!42968 (tail!15829 Nil!74696))))))

(declare-fun b!8001281 () Bool)

(declare-fun res!3164171 () Bool)

(assert (=> b!8001281 (=> (not res!3164171) (not e!4713496))))

(assert (=> b!8001281 (= res!3164171 (isEmpty!42968 (tail!15829 Nil!74696)))))

(assert (= (and d!2386698 c!1469063) b!8001277))

(assert (= (and d!2386698 (not c!1469063)) b!8001268))

(assert (= (and d!2386698 c!1469062) b!8001269))

(assert (= (and d!2386698 (not c!1469062)) b!8001275))

(assert (= (and b!8001275 c!1469061) b!8001278))

(assert (= (and b!8001275 (not c!1469061)) b!8001270))

(assert (= (and b!8001270 (not res!3164175)) b!8001271))

(assert (= (and b!8001271 res!3164170) b!8001279))

(assert (= (and b!8001279 res!3164173) b!8001281))

(assert (= (and b!8001281 res!3164171) b!8001272))

(assert (= (and b!8001271 (not res!3164169)) b!8001276))

(assert (= (and b!8001276 res!3164174) b!8001273))

(assert (= (and b!8001273 (not res!3164168)) b!8001280))

(assert (= (and b!8001280 (not res!3164172)) b!8001274))

(assert (= (or b!8001269 b!8001273 b!8001279) bm!743375))

(declare-fun m!8368584 () Bool)

(assert (=> b!8001272 m!8368584))

(declare-fun m!8368586 () Bool)

(assert (=> bm!743375 m!8368586))

(assert (=> d!2386698 m!8368586))

(assert (=> d!2386698 m!8368536))

(declare-fun m!8368588 () Bool)

(assert (=> d!2386698 m!8368588))

(assert (=> b!8001277 m!8368536))

(declare-fun m!8368590 () Bool)

(assert (=> b!8001277 m!8368590))

(assert (=> b!8001274 m!8368584))

(declare-fun m!8368592 () Bool)

(assert (=> b!8001280 m!8368592))

(assert (=> b!8001280 m!8368592))

(declare-fun m!8368594 () Bool)

(assert (=> b!8001280 m!8368594))

(assert (=> b!8001268 m!8368584))

(assert (=> b!8001268 m!8368536))

(assert (=> b!8001268 m!8368584))

(declare-fun m!8368596 () Bool)

(assert (=> b!8001268 m!8368596))

(assert (=> b!8001268 m!8368592))

(assert (=> b!8001268 m!8368596))

(assert (=> b!8001268 m!8368592))

(declare-fun m!8368598 () Bool)

(assert (=> b!8001268 m!8368598))

(assert (=> b!8001281 m!8368592))

(assert (=> b!8001281 m!8368592))

(assert (=> b!8001281 m!8368594))

(assert (=> b!8001081 d!2386698))

(declare-fun b!8001297 () Bool)

(declare-fun e!4713511 () Bool)

(declare-fun lt!2713738 () Bool)

(declare-fun call!743382 () Bool)

(assert (=> b!8001297 (= e!4713511 (= lt!2713738 call!743382))))

(declare-fun b!8001298 () Bool)

(declare-fun res!3164191 () Bool)

(declare-fun e!4713513 () Bool)

(assert (=> b!8001298 (=> res!3164191 e!4713513)))

(assert (=> b!8001298 (= res!3164191 (not ((_ is ElementMatch!21591) (derivative!771 lt!2713724 (t!390563 input!8006)))))))

(declare-fun e!4713514 () Bool)

(assert (=> b!8001298 (= e!4713514 e!4713513)))

(declare-fun b!8001299 () Bool)

(declare-fun res!3164185 () Bool)

(assert (=> b!8001299 (=> res!3164185 e!4713513)))

(declare-fun e!4713510 () Bool)

(assert (=> b!8001299 (= res!3164185 e!4713510)))

(declare-fun res!3164186 () Bool)

(assert (=> b!8001299 (=> (not res!3164186) (not e!4713510))))

(assert (=> b!8001299 (= res!3164186 lt!2713738)))

(declare-fun b!8001300 () Bool)

(assert (=> b!8001300 (= e!4713510 (= (head!16302 Nil!74696) (c!1469004 (derivative!771 lt!2713724 (t!390563 input!8006)))))))

(declare-fun b!8001296 () Bool)

(declare-fun e!4713509 () Bool)

(assert (=> b!8001296 (= e!4713509 (matchR!10770 (derivativeStep!6606 (derivative!771 lt!2713724 (t!390563 input!8006)) (head!16302 Nil!74696)) (tail!15829 Nil!74696)))))

(declare-fun d!2386702 () Bool)

(assert (=> d!2386702 e!4713511))

(declare-fun c!1469068 () Bool)

(assert (=> d!2386702 (= c!1469068 ((_ is EmptyExpr!21591) (derivative!771 lt!2713724 (t!390563 input!8006))))))

(assert (=> d!2386702 (= lt!2713738 e!4713509)))

(declare-fun c!1469069 () Bool)

(assert (=> d!2386702 (= c!1469069 (isEmpty!42968 Nil!74696))))

(assert (=> d!2386702 (validRegex!11895 (derivative!771 lt!2713724 (t!390563 input!8006)))))

(assert (=> d!2386702 (= (matchR!10770 (derivative!771 lt!2713724 (t!390563 input!8006)) Nil!74696) lt!2713738)))

(declare-fun b!8001301 () Bool)

(declare-fun e!4713512 () Bool)

(declare-fun e!4713515 () Bool)

(assert (=> b!8001301 (= e!4713512 e!4713515)))

(declare-fun res!3164184 () Bool)

(assert (=> b!8001301 (=> res!3164184 e!4713515)))

(assert (=> b!8001301 (= res!3164184 call!743382)))

(declare-fun b!8001302 () Bool)

(assert (=> b!8001302 (= e!4713515 (not (= (head!16302 Nil!74696) (c!1469004 (derivative!771 lt!2713724 (t!390563 input!8006))))))))

(declare-fun b!8001303 () Bool)

(assert (=> b!8001303 (= e!4713511 e!4713514)))

(declare-fun c!1469067 () Bool)

(assert (=> b!8001303 (= c!1469067 ((_ is EmptyLang!21591) (derivative!771 lt!2713724 (t!390563 input!8006))))))

(declare-fun bm!743377 () Bool)

(assert (=> bm!743377 (= call!743382 (isEmpty!42968 Nil!74696))))

(declare-fun b!8001304 () Bool)

(assert (=> b!8001304 (= e!4713513 e!4713512)))

(declare-fun res!3164190 () Bool)

(assert (=> b!8001304 (=> (not res!3164190) (not e!4713512))))

(assert (=> b!8001304 (= res!3164190 (not lt!2713738))))

(declare-fun b!8001305 () Bool)

(assert (=> b!8001305 (= e!4713509 (nullable!9672 (derivative!771 lt!2713724 (t!390563 input!8006))))))

(declare-fun b!8001306 () Bool)

(assert (=> b!8001306 (= e!4713514 (not lt!2713738))))

(declare-fun b!8001307 () Bool)

(declare-fun res!3164189 () Bool)

(assert (=> b!8001307 (=> (not res!3164189) (not e!4713510))))

(assert (=> b!8001307 (= res!3164189 (not call!743382))))

(declare-fun b!8001308 () Bool)

(declare-fun res!3164188 () Bool)

(assert (=> b!8001308 (=> res!3164188 e!4713515)))

(assert (=> b!8001308 (= res!3164188 (not (isEmpty!42968 (tail!15829 Nil!74696))))))

(declare-fun b!8001309 () Bool)

(declare-fun res!3164187 () Bool)

(assert (=> b!8001309 (=> (not res!3164187) (not e!4713510))))

(assert (=> b!8001309 (= res!3164187 (isEmpty!42968 (tail!15829 Nil!74696)))))

(assert (= (and d!2386702 c!1469069) b!8001305))

(assert (= (and d!2386702 (not c!1469069)) b!8001296))

(assert (= (and d!2386702 c!1469068) b!8001297))

(assert (= (and d!2386702 (not c!1469068)) b!8001303))

(assert (= (and b!8001303 c!1469067) b!8001306))

(assert (= (and b!8001303 (not c!1469067)) b!8001298))

(assert (= (and b!8001298 (not res!3164191)) b!8001299))

(assert (= (and b!8001299 res!3164186) b!8001307))

(assert (= (and b!8001307 res!3164189) b!8001309))

(assert (= (and b!8001309 res!3164187) b!8001300))

(assert (= (and b!8001299 (not res!3164185)) b!8001304))

(assert (= (and b!8001304 res!3164190) b!8001301))

(assert (= (and b!8001301 (not res!3164184)) b!8001308))

(assert (= (and b!8001308 (not res!3164188)) b!8001302))

(assert (= (or b!8001297 b!8001301 b!8001307) bm!743377))

(assert (=> b!8001300 m!8368584))

(assert (=> bm!743377 m!8368586))

(assert (=> d!2386702 m!8368586))

(assert (=> d!2386702 m!8368530))

(declare-fun m!8368614 () Bool)

(assert (=> d!2386702 m!8368614))

(assert (=> b!8001305 m!8368530))

(declare-fun m!8368616 () Bool)

(assert (=> b!8001305 m!8368616))

(assert (=> b!8001302 m!8368584))

(assert (=> b!8001308 m!8368592))

(assert (=> b!8001308 m!8368592))

(assert (=> b!8001308 m!8368594))

(assert (=> b!8001296 m!8368584))

(assert (=> b!8001296 m!8368530))

(assert (=> b!8001296 m!8368584))

(declare-fun m!8368618 () Bool)

(assert (=> b!8001296 m!8368618))

(assert (=> b!8001296 m!8368592))

(assert (=> b!8001296 m!8368618))

(assert (=> b!8001296 m!8368592))

(declare-fun m!8368620 () Bool)

(assert (=> b!8001296 m!8368620))

(assert (=> b!8001309 m!8368592))

(assert (=> b!8001309 m!8368592))

(assert (=> b!8001309 m!8368594))

(assert (=> b!8001081 d!2386702))

(declare-fun b!8001325 () Bool)

(declare-fun e!4713525 () Bool)

(declare-fun lt!2713740 () Bool)

(declare-fun call!743384 () Bool)

(assert (=> b!8001325 (= e!4713525 (= lt!2713740 call!743384))))

(declare-fun b!8001326 () Bool)

(declare-fun res!3164207 () Bool)

(declare-fun e!4713527 () Bool)

(assert (=> b!8001326 (=> res!3164207 e!4713527)))

(assert (=> b!8001326 (= res!3164207 (not ((_ is ElementMatch!21591) lt!2713724)))))

(declare-fun e!4713528 () Bool)

(assert (=> b!8001326 (= e!4713528 e!4713527)))

(declare-fun b!8001327 () Bool)

(declare-fun res!3164201 () Bool)

(assert (=> b!8001327 (=> res!3164201 e!4713527)))

(declare-fun e!4713524 () Bool)

(assert (=> b!8001327 (= res!3164201 e!4713524)))

(declare-fun res!3164202 () Bool)

(assert (=> b!8001327 (=> (not res!3164202) (not e!4713524))))

(assert (=> b!8001327 (= res!3164202 lt!2713740)))

(declare-fun b!8001328 () Bool)

(assert (=> b!8001328 (= e!4713524 (= (head!16302 (t!390563 input!8006)) (c!1469004 lt!2713724)))))

(declare-fun b!8001324 () Bool)

(declare-fun e!4713523 () Bool)

(assert (=> b!8001324 (= e!4713523 (matchR!10770 (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006))) (tail!15829 (t!390563 input!8006))))))

(declare-fun d!2386706 () Bool)

(assert (=> d!2386706 e!4713525))

(declare-fun c!1469074 () Bool)

(assert (=> d!2386706 (= c!1469074 ((_ is EmptyExpr!21591) lt!2713724))))

(assert (=> d!2386706 (= lt!2713740 e!4713523)))

(declare-fun c!1469075 () Bool)

(assert (=> d!2386706 (= c!1469075 (isEmpty!42968 (t!390563 input!8006)))))

(assert (=> d!2386706 (validRegex!11895 lt!2713724)))

(assert (=> d!2386706 (= (matchR!10770 lt!2713724 (t!390563 input!8006)) lt!2713740)))

(declare-fun b!8001329 () Bool)

(declare-fun e!4713526 () Bool)

(declare-fun e!4713529 () Bool)

(assert (=> b!8001329 (= e!4713526 e!4713529)))

(declare-fun res!3164200 () Bool)

(assert (=> b!8001329 (=> res!3164200 e!4713529)))

(assert (=> b!8001329 (= res!3164200 call!743384)))

(declare-fun b!8001330 () Bool)

(assert (=> b!8001330 (= e!4713529 (not (= (head!16302 (t!390563 input!8006)) (c!1469004 lt!2713724))))))

(declare-fun b!8001331 () Bool)

(assert (=> b!8001331 (= e!4713525 e!4713528)))

(declare-fun c!1469073 () Bool)

(assert (=> b!8001331 (= c!1469073 ((_ is EmptyLang!21591) lt!2713724))))

(declare-fun bm!743379 () Bool)

(assert (=> bm!743379 (= call!743384 (isEmpty!42968 (t!390563 input!8006)))))

(declare-fun b!8001332 () Bool)

(assert (=> b!8001332 (= e!4713527 e!4713526)))

(declare-fun res!3164206 () Bool)

(assert (=> b!8001332 (=> (not res!3164206) (not e!4713526))))

(assert (=> b!8001332 (= res!3164206 (not lt!2713740))))

(declare-fun b!8001333 () Bool)

(assert (=> b!8001333 (= e!4713523 (nullable!9672 lt!2713724))))

(declare-fun b!8001334 () Bool)

(assert (=> b!8001334 (= e!4713528 (not lt!2713740))))

(declare-fun b!8001335 () Bool)

(declare-fun res!3164205 () Bool)

(assert (=> b!8001335 (=> (not res!3164205) (not e!4713524))))

(assert (=> b!8001335 (= res!3164205 (not call!743384))))

(declare-fun b!8001336 () Bool)

(declare-fun res!3164204 () Bool)

(assert (=> b!8001336 (=> res!3164204 e!4713529)))

(assert (=> b!8001336 (= res!3164204 (not (isEmpty!42968 (tail!15829 (t!390563 input!8006)))))))

(declare-fun b!8001337 () Bool)

(declare-fun res!3164203 () Bool)

(assert (=> b!8001337 (=> (not res!3164203) (not e!4713524))))

(assert (=> b!8001337 (= res!3164203 (isEmpty!42968 (tail!15829 (t!390563 input!8006))))))

(assert (= (and d!2386706 c!1469075) b!8001333))

(assert (= (and d!2386706 (not c!1469075)) b!8001324))

(assert (= (and d!2386706 c!1469074) b!8001325))

(assert (= (and d!2386706 (not c!1469074)) b!8001331))

(assert (= (and b!8001331 c!1469073) b!8001334))

(assert (= (and b!8001331 (not c!1469073)) b!8001326))

(assert (= (and b!8001326 (not res!3164207)) b!8001327))

(assert (= (and b!8001327 res!3164202) b!8001335))

(assert (= (and b!8001335 res!3164205) b!8001337))

(assert (= (and b!8001337 res!3164203) b!8001328))

(assert (= (and b!8001327 (not res!3164201)) b!8001332))

(assert (= (and b!8001332 res!3164206) b!8001329))

(assert (= (and b!8001329 (not res!3164200)) b!8001336))

(assert (= (and b!8001336 (not res!3164204)) b!8001330))

(assert (= (or b!8001325 b!8001329 b!8001335) bm!743379))

(declare-fun m!8368634 () Bool)

(assert (=> b!8001328 m!8368634))

(declare-fun m!8368638 () Bool)

(assert (=> bm!743379 m!8368638))

(assert (=> d!2386706 m!8368638))

(assert (=> d!2386706 m!8368546))

(declare-fun m!8368640 () Bool)

(assert (=> b!8001333 m!8368640))

(assert (=> b!8001330 m!8368634))

(declare-fun m!8368644 () Bool)

(assert (=> b!8001336 m!8368644))

(assert (=> b!8001336 m!8368644))

(declare-fun m!8368646 () Bool)

(assert (=> b!8001336 m!8368646))

(assert (=> b!8001324 m!8368634))

(assert (=> b!8001324 m!8368634))

(declare-fun m!8368648 () Bool)

(assert (=> b!8001324 m!8368648))

(assert (=> b!8001324 m!8368644))

(assert (=> b!8001324 m!8368648))

(assert (=> b!8001324 m!8368644))

(declare-fun m!8368650 () Bool)

(assert (=> b!8001324 m!8368650))

(assert (=> b!8001337 m!8368644))

(assert (=> b!8001337 m!8368644))

(assert (=> b!8001337 m!8368646))

(assert (=> b!8001081 d!2386706))

(declare-fun d!2386710 () Bool)

(declare-fun lt!2713746 () Regex!21591)

(assert (=> d!2386710 (validRegex!11895 lt!2713746)))

(declare-fun e!4713532 () Regex!21591)

(assert (=> d!2386710 (= lt!2713746 e!4713532)))

(declare-fun c!1469078 () Bool)

(assert (=> d!2386710 (= c!1469078 ((_ is Cons!74696) input!8006))))

(assert (=> d!2386710 (validRegex!11895 r!24748)))

(assert (=> d!2386710 (= (derivative!771 r!24748 input!8006) lt!2713746)))

(declare-fun b!8001342 () Bool)

(assert (=> b!8001342 (= e!4713532 (derivative!771 (derivativeStep!6606 r!24748 (h!81144 input!8006)) (t!390563 input!8006)))))

(declare-fun b!8001343 () Bool)

(assert (=> b!8001343 (= e!4713532 r!24748)))

(assert (= (and d!2386710 c!1469078) b!8001342))

(assert (= (and d!2386710 (not c!1469078)) b!8001343))

(declare-fun m!8368654 () Bool)

(assert (=> d!2386710 m!8368654))

(assert (=> d!2386710 m!8368544))

(assert (=> b!8001342 m!8368548))

(assert (=> b!8001342 m!8368548))

(declare-fun m!8368656 () Bool)

(assert (=> b!8001342 m!8368656))

(assert (=> b!8001081 d!2386710))

(declare-fun d!2386714 () Bool)

(assert (=> d!2386714 (= (matchR!10770 lt!2713724 (t!390563 input!8006)) (matchR!10770 (derivative!771 lt!2713724 (t!390563 input!8006)) Nil!74696))))

(declare-fun lt!2713754 () Unit!170592)

(declare-fun choose!60208 (Regex!21591 List!74820) Unit!170592)

(assert (=> d!2386714 (= lt!2713754 (choose!60208 lt!2713724 (t!390563 input!8006)))))

(assert (=> d!2386714 (validRegex!11895 lt!2713724)))

(assert (=> d!2386714 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!312 lt!2713724 (t!390563 input!8006)) lt!2713754)))

(declare-fun bs!1970558 () Bool)

(assert (= bs!1970558 d!2386714))

(assert (=> bs!1970558 m!8368538))

(declare-fun m!8368682 () Bool)

(assert (=> bs!1970558 m!8368682))

(assert (=> bs!1970558 m!8368530))

(assert (=> bs!1970558 m!8368530))

(assert (=> bs!1970558 m!8368532))

(assert (=> bs!1970558 m!8368546))

(assert (=> b!8001081 d!2386714))

(declare-fun d!2386722 () Bool)

(declare-fun lt!2713756 () Regex!21591)

(assert (=> d!2386722 (validRegex!11895 lt!2713756)))

(declare-fun e!4713551 () Regex!21591)

(assert (=> d!2386722 (= lt!2713756 e!4713551)))

(declare-fun c!1469089 () Bool)

(assert (=> d!2386722 (= c!1469089 ((_ is Cons!74696) (t!390563 input!8006)))))

(assert (=> d!2386722 (validRegex!11895 lt!2713724)))

(assert (=> d!2386722 (= (derivative!771 lt!2713724 (t!390563 input!8006)) lt!2713756)))

(declare-fun b!8001380 () Bool)

(assert (=> b!8001380 (= e!4713551 (derivative!771 (derivativeStep!6606 lt!2713724 (h!81144 (t!390563 input!8006))) (t!390563 (t!390563 input!8006))))))

(declare-fun b!8001381 () Bool)

(assert (=> b!8001381 (= e!4713551 lt!2713724)))

(assert (= (and d!2386722 c!1469089) b!8001380))

(assert (= (and d!2386722 (not c!1469089)) b!8001381))

(declare-fun m!8368684 () Bool)

(assert (=> d!2386722 m!8368684))

(assert (=> d!2386722 m!8368546))

(declare-fun m!8368686 () Bool)

(assert (=> b!8001380 m!8368686))

(assert (=> b!8001380 m!8368686))

(declare-fun m!8368688 () Bool)

(assert (=> b!8001380 m!8368688))

(assert (=> b!8001081 d!2386722))

(declare-fun b!8001383 () Bool)

(declare-fun e!4713554 () Bool)

(declare-fun lt!2713757 () Bool)

(declare-fun call!743387 () Bool)

(assert (=> b!8001383 (= e!4713554 (= lt!2713757 call!743387))))

(declare-fun b!8001384 () Bool)

(declare-fun res!3164231 () Bool)

(declare-fun e!4713556 () Bool)

(assert (=> b!8001384 (=> res!3164231 e!4713556)))

(assert (=> b!8001384 (= res!3164231 (not ((_ is ElementMatch!21591) r!24748)))))

(declare-fun e!4713557 () Bool)

(assert (=> b!8001384 (= e!4713557 e!4713556)))

(declare-fun b!8001385 () Bool)

(declare-fun res!3164225 () Bool)

(assert (=> b!8001385 (=> res!3164225 e!4713556)))

(declare-fun e!4713553 () Bool)

(assert (=> b!8001385 (= res!3164225 e!4713553)))

(declare-fun res!3164226 () Bool)

(assert (=> b!8001385 (=> (not res!3164226) (not e!4713553))))

(assert (=> b!8001385 (= res!3164226 lt!2713757)))

(declare-fun b!8001386 () Bool)

(assert (=> b!8001386 (= e!4713553 (= (head!16302 input!8006) (c!1469004 r!24748)))))

(declare-fun b!8001382 () Bool)

(declare-fun e!4713552 () Bool)

(assert (=> b!8001382 (= e!4713552 (matchR!10770 (derivativeStep!6606 r!24748 (head!16302 input!8006)) (tail!15829 input!8006)))))

(declare-fun d!2386724 () Bool)

(assert (=> d!2386724 e!4713554))

(declare-fun c!1469091 () Bool)

(assert (=> d!2386724 (= c!1469091 ((_ is EmptyExpr!21591) r!24748))))

(assert (=> d!2386724 (= lt!2713757 e!4713552)))

(declare-fun c!1469092 () Bool)

(assert (=> d!2386724 (= c!1469092 (isEmpty!42968 input!8006))))

(assert (=> d!2386724 (validRegex!11895 r!24748)))

(assert (=> d!2386724 (= (matchR!10770 r!24748 input!8006) lt!2713757)))

(declare-fun b!8001387 () Bool)

(declare-fun e!4713555 () Bool)

(declare-fun e!4713558 () Bool)

(assert (=> b!8001387 (= e!4713555 e!4713558)))

(declare-fun res!3164224 () Bool)

(assert (=> b!8001387 (=> res!3164224 e!4713558)))

(assert (=> b!8001387 (= res!3164224 call!743387)))

(declare-fun b!8001388 () Bool)

(assert (=> b!8001388 (= e!4713558 (not (= (head!16302 input!8006) (c!1469004 r!24748))))))

(declare-fun b!8001389 () Bool)

(assert (=> b!8001389 (= e!4713554 e!4713557)))

(declare-fun c!1469090 () Bool)

(assert (=> b!8001389 (= c!1469090 ((_ is EmptyLang!21591) r!24748))))

(declare-fun bm!743382 () Bool)

(assert (=> bm!743382 (= call!743387 (isEmpty!42968 input!8006))))

(declare-fun b!8001390 () Bool)

(assert (=> b!8001390 (= e!4713556 e!4713555)))

(declare-fun res!3164230 () Bool)

(assert (=> b!8001390 (=> (not res!3164230) (not e!4713555))))

(assert (=> b!8001390 (= res!3164230 (not lt!2713757))))

(declare-fun b!8001391 () Bool)

(assert (=> b!8001391 (= e!4713552 (nullable!9672 r!24748))))

(declare-fun b!8001392 () Bool)

(assert (=> b!8001392 (= e!4713557 (not lt!2713757))))

(declare-fun b!8001393 () Bool)

(declare-fun res!3164229 () Bool)

(assert (=> b!8001393 (=> (not res!3164229) (not e!4713553))))

(assert (=> b!8001393 (= res!3164229 (not call!743387))))

(declare-fun b!8001394 () Bool)

(declare-fun res!3164228 () Bool)

(assert (=> b!8001394 (=> res!3164228 e!4713558)))

(assert (=> b!8001394 (= res!3164228 (not (isEmpty!42968 (tail!15829 input!8006))))))

(declare-fun b!8001395 () Bool)

(declare-fun res!3164227 () Bool)

(assert (=> b!8001395 (=> (not res!3164227) (not e!4713553))))

(assert (=> b!8001395 (= res!3164227 (isEmpty!42968 (tail!15829 input!8006)))))

(assert (= (and d!2386724 c!1469092) b!8001391))

(assert (= (and d!2386724 (not c!1469092)) b!8001382))

(assert (= (and d!2386724 c!1469091) b!8001383))

(assert (= (and d!2386724 (not c!1469091)) b!8001389))

(assert (= (and b!8001389 c!1469090) b!8001392))

(assert (= (and b!8001389 (not c!1469090)) b!8001384))

(assert (= (and b!8001384 (not res!3164231)) b!8001385))

(assert (= (and b!8001385 res!3164226) b!8001393))

(assert (= (and b!8001393 res!3164229) b!8001395))

(assert (= (and b!8001395 res!3164227) b!8001386))

(assert (= (and b!8001385 (not res!3164225)) b!8001390))

(assert (= (and b!8001390 res!3164230) b!8001387))

(assert (= (and b!8001387 (not res!3164224)) b!8001394))

(assert (= (and b!8001394 (not res!3164228)) b!8001388))

(assert (= (or b!8001383 b!8001387 b!8001393) bm!743382))

(declare-fun m!8368698 () Bool)

(assert (=> b!8001386 m!8368698))

(declare-fun m!8368700 () Bool)

(assert (=> bm!743382 m!8368700))

(assert (=> d!2386724 m!8368700))

(assert (=> d!2386724 m!8368544))

(declare-fun m!8368702 () Bool)

(assert (=> b!8001391 m!8368702))

(assert (=> b!8001388 m!8368698))

(declare-fun m!8368704 () Bool)

(assert (=> b!8001394 m!8368704))

(assert (=> b!8001394 m!8368704))

(declare-fun m!8368706 () Bool)

(assert (=> b!8001394 m!8368706))

(assert (=> b!8001382 m!8368698))

(assert (=> b!8001382 m!8368698))

(declare-fun m!8368708 () Bool)

(assert (=> b!8001382 m!8368708))

(assert (=> b!8001382 m!8368704))

(assert (=> b!8001382 m!8368708))

(assert (=> b!8001382 m!8368704))

(declare-fun m!8368710 () Bool)

(assert (=> b!8001382 m!8368710))

(assert (=> b!8001395 m!8368704))

(assert (=> b!8001395 m!8368704))

(assert (=> b!8001395 m!8368706))

(assert (=> b!8001081 d!2386724))

(declare-fun b!8001410 () Bool)

(declare-fun e!4713568 () Bool)

(declare-fun call!743388 () Bool)

(assert (=> b!8001410 (= e!4713568 call!743388)))

(declare-fun b!8001411 () Bool)

(declare-fun e!4713566 () Bool)

(declare-fun e!4713567 () Bool)

(assert (=> b!8001411 (= e!4713566 e!4713567)))

(declare-fun res!3164233 () Bool)

(assert (=> b!8001411 (= res!3164233 (not (nullable!9672 (reg!21920 r!24748))))))

(assert (=> b!8001411 (=> (not res!3164233) (not e!4713567))))

(declare-fun b!8001412 () Bool)

(declare-fun e!4713564 () Bool)

(assert (=> b!8001412 (= e!4713564 e!4713568)))

(declare-fun res!3164234 () Bool)

(assert (=> b!8001412 (=> (not res!3164234) (not e!4713568))))

(declare-fun call!743390 () Bool)

(assert (=> b!8001412 (= res!3164234 call!743390)))

(declare-fun bm!743383 () Bool)

(declare-fun call!743389 () Bool)

(assert (=> bm!743383 (= call!743388 call!743389)))

(declare-fun b!8001413 () Bool)

(declare-fun e!4713563 () Bool)

(assert (=> b!8001413 (= e!4713566 e!4713563)))

(declare-fun c!1469093 () Bool)

(assert (=> b!8001413 (= c!1469093 ((_ is Union!21591) r!24748))))

(declare-fun b!8001414 () Bool)

(declare-fun e!4713562 () Bool)

(assert (=> b!8001414 (= e!4713562 call!743390)))

(declare-fun bm!743384 () Bool)

(assert (=> bm!743384 (= call!743390 (validRegex!11895 (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))))))

(declare-fun b!8001415 () Bool)

(assert (=> b!8001415 (= e!4713567 call!743389)))

(declare-fun b!8001417 () Bool)

(declare-fun res!3164235 () Bool)

(assert (=> b!8001417 (=> res!3164235 e!4713564)))

(assert (=> b!8001417 (= res!3164235 (not ((_ is Concat!30590) r!24748)))))

(assert (=> b!8001417 (= e!4713563 e!4713564)))

(declare-fun c!1469094 () Bool)

(declare-fun bm!743385 () Bool)

(assert (=> bm!743385 (= call!743389 (validRegex!11895 (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))))

(declare-fun b!8001418 () Bool)

(declare-fun res!3164232 () Bool)

(assert (=> b!8001418 (=> (not res!3164232) (not e!4713562))))

(assert (=> b!8001418 (= res!3164232 call!743388)))

(assert (=> b!8001418 (= e!4713563 e!4713562)))

(declare-fun d!2386726 () Bool)

(declare-fun res!3164236 () Bool)

(declare-fun e!4713565 () Bool)

(assert (=> d!2386726 (=> res!3164236 e!4713565)))

(assert (=> d!2386726 (= res!3164236 ((_ is ElementMatch!21591) r!24748))))

(assert (=> d!2386726 (= (validRegex!11895 r!24748) e!4713565)))

(declare-fun b!8001416 () Bool)

(assert (=> b!8001416 (= e!4713565 e!4713566)))

(assert (=> b!8001416 (= c!1469094 ((_ is Star!21591) r!24748))))

(assert (= (and d!2386726 (not res!3164236)) b!8001416))

(assert (= (and b!8001416 c!1469094) b!8001411))

(assert (= (and b!8001416 (not c!1469094)) b!8001413))

(assert (= (and b!8001411 res!3164233) b!8001415))

(assert (= (and b!8001413 c!1469093) b!8001418))

(assert (= (and b!8001413 (not c!1469093)) b!8001417))

(assert (= (and b!8001418 res!3164232) b!8001414))

(assert (= (and b!8001417 (not res!3164235)) b!8001412))

(assert (= (and b!8001412 res!3164234) b!8001410))

(assert (= (or b!8001414 b!8001412) bm!743384))

(assert (= (or b!8001418 b!8001410) bm!743383))

(assert (= (or b!8001415 bm!743383) bm!743385))

(declare-fun m!8368712 () Bool)

(assert (=> b!8001411 m!8368712))

(declare-fun m!8368714 () Bool)

(assert (=> bm!743384 m!8368714))

(declare-fun m!8368716 () Bool)

(assert (=> bm!743385 m!8368716))

(assert (=> start!752828 d!2386726))

(declare-fun b!8001452 () Bool)

(declare-fun e!4713578 () Bool)

(declare-fun tp!2393399 () Bool)

(assert (=> b!8001452 (= e!4713578 tp!2393399)))

(declare-fun b!8001450 () Bool)

(assert (=> b!8001450 (= e!4713578 tp_is_empty!53725)))

(declare-fun b!8001453 () Bool)

(declare-fun tp!2393398 () Bool)

(declare-fun tp!2393397 () Bool)

(assert (=> b!8001453 (= e!4713578 (and tp!2393398 tp!2393397))))

(assert (=> b!8001082 (= tp!2393343 e!4713578)))

(declare-fun b!8001451 () Bool)

(declare-fun tp!2393395 () Bool)

(declare-fun tp!2393396 () Bool)

(assert (=> b!8001451 (= e!4713578 (and tp!2393395 tp!2393396))))

(assert (= (and b!8001082 ((_ is ElementMatch!21591) (regOne!43694 r!24748))) b!8001450))

(assert (= (and b!8001082 ((_ is Concat!30590) (regOne!43694 r!24748))) b!8001451))

(assert (= (and b!8001082 ((_ is Star!21591) (regOne!43694 r!24748))) b!8001452))

(assert (= (and b!8001082 ((_ is Union!21591) (regOne!43694 r!24748))) b!8001453))

(declare-fun b!8001456 () Bool)

(declare-fun e!4713579 () Bool)

(declare-fun tp!2393404 () Bool)

(assert (=> b!8001456 (= e!4713579 tp!2393404)))

(declare-fun b!8001454 () Bool)

(assert (=> b!8001454 (= e!4713579 tp_is_empty!53725)))

(declare-fun b!8001457 () Bool)

(declare-fun tp!2393403 () Bool)

(declare-fun tp!2393402 () Bool)

(assert (=> b!8001457 (= e!4713579 (and tp!2393403 tp!2393402))))

(assert (=> b!8001082 (= tp!2393346 e!4713579)))

(declare-fun b!8001455 () Bool)

(declare-fun tp!2393400 () Bool)

(declare-fun tp!2393401 () Bool)

(assert (=> b!8001455 (= e!4713579 (and tp!2393400 tp!2393401))))

(assert (= (and b!8001082 ((_ is ElementMatch!21591) (regTwo!43694 r!24748))) b!8001454))

(assert (= (and b!8001082 ((_ is Concat!30590) (regTwo!43694 r!24748))) b!8001455))

(assert (= (and b!8001082 ((_ is Star!21591) (regTwo!43694 r!24748))) b!8001456))

(assert (= (and b!8001082 ((_ is Union!21591) (regTwo!43694 r!24748))) b!8001457))

(declare-fun b!8001460 () Bool)

(declare-fun e!4713580 () Bool)

(declare-fun tp!2393409 () Bool)

(assert (=> b!8001460 (= e!4713580 tp!2393409)))

(declare-fun b!8001458 () Bool)

(assert (=> b!8001458 (= e!4713580 tp_is_empty!53725)))

(declare-fun b!8001461 () Bool)

(declare-fun tp!2393408 () Bool)

(declare-fun tp!2393407 () Bool)

(assert (=> b!8001461 (= e!4713580 (and tp!2393408 tp!2393407))))

(assert (=> b!8001088 (= tp!2393345 e!4713580)))

(declare-fun b!8001459 () Bool)

(declare-fun tp!2393405 () Bool)

(declare-fun tp!2393406 () Bool)

(assert (=> b!8001459 (= e!4713580 (and tp!2393405 tp!2393406))))

(assert (= (and b!8001088 ((_ is ElementMatch!21591) (regOne!43695 r!24748))) b!8001458))

(assert (= (and b!8001088 ((_ is Concat!30590) (regOne!43695 r!24748))) b!8001459))

(assert (= (and b!8001088 ((_ is Star!21591) (regOne!43695 r!24748))) b!8001460))

(assert (= (and b!8001088 ((_ is Union!21591) (regOne!43695 r!24748))) b!8001461))

(declare-fun b!8001464 () Bool)

(declare-fun e!4713581 () Bool)

(declare-fun tp!2393414 () Bool)

(assert (=> b!8001464 (= e!4713581 tp!2393414)))

(declare-fun b!8001462 () Bool)

(assert (=> b!8001462 (= e!4713581 tp_is_empty!53725)))

(declare-fun b!8001465 () Bool)

(declare-fun tp!2393413 () Bool)

(declare-fun tp!2393412 () Bool)

(assert (=> b!8001465 (= e!4713581 (and tp!2393413 tp!2393412))))

(assert (=> b!8001088 (= tp!2393344 e!4713581)))

(declare-fun b!8001463 () Bool)

(declare-fun tp!2393410 () Bool)

(declare-fun tp!2393411 () Bool)

(assert (=> b!8001463 (= e!4713581 (and tp!2393410 tp!2393411))))

(assert (= (and b!8001088 ((_ is ElementMatch!21591) (regTwo!43695 r!24748))) b!8001462))

(assert (= (and b!8001088 ((_ is Concat!30590) (regTwo!43695 r!24748))) b!8001463))

(assert (= (and b!8001088 ((_ is Star!21591) (regTwo!43695 r!24748))) b!8001464))

(assert (= (and b!8001088 ((_ is Union!21591) (regTwo!43695 r!24748))) b!8001465))

(declare-fun b!8001470 () Bool)

(declare-fun e!4713584 () Bool)

(declare-fun tp!2393417 () Bool)

(assert (=> b!8001470 (= e!4713584 (and tp_is_empty!53725 tp!2393417))))

(assert (=> b!8001083 (= tp!2393342 e!4713584)))

(assert (= (and b!8001083 ((_ is Cons!74696) (t!390563 input!8006))) b!8001470))

(declare-fun b!8001473 () Bool)

(declare-fun e!4713585 () Bool)

(declare-fun tp!2393422 () Bool)

(assert (=> b!8001473 (= e!4713585 tp!2393422)))

(declare-fun b!8001471 () Bool)

(assert (=> b!8001471 (= e!4713585 tp_is_empty!53725)))

(declare-fun b!8001474 () Bool)

(declare-fun tp!2393421 () Bool)

(declare-fun tp!2393420 () Bool)

(assert (=> b!8001474 (= e!4713585 (and tp!2393421 tp!2393420))))

(assert (=> b!8001084 (= tp!2393341 e!4713585)))

(declare-fun b!8001472 () Bool)

(declare-fun tp!2393418 () Bool)

(declare-fun tp!2393419 () Bool)

(assert (=> b!8001472 (= e!4713585 (and tp!2393418 tp!2393419))))

(assert (= (and b!8001084 ((_ is ElementMatch!21591) (reg!21920 r!24748))) b!8001471))

(assert (= (and b!8001084 ((_ is Concat!30590) (reg!21920 r!24748))) b!8001472))

(assert (= (and b!8001084 ((_ is Star!21591) (reg!21920 r!24748))) b!8001473))

(assert (= (and b!8001084 ((_ is Union!21591) (reg!21920 r!24748))) b!8001474))

(check-sat (not b!8001302) (not b!8001411) (not b!8001296) (not b!8001274) (not b!8001465) (not b!8001451) (not b!8001455) (not d!2386724) (not b!8001394) (not b!8001391) (not b!8001305) (not bm!743385) (not b!8001126) (not b!8001300) (not b!8001342) (not bm!743363) (not bm!743339) (not b!8001459) (not b!8001324) (not bm!743375) (not b!8001330) (not b!8001473) (not bm!743384) (not b!8001268) (not d!2386722) (not b!8001453) (not b!8001308) (not bm!743379) (not b!8001281) (not b!8001472) (not b!8001309) (not b!8001470) (not bm!743340) (not d!2386710) (not b!8001328) (not b!8001460) (not d!2386714) (not b!8001277) (not b!8001386) (not b!8001382) (not b!8001337) (not d!2386706) (not b!8001380) (not bm!743377) (not b!8001272) (not d!2386698) (not bm!743382) (not b!8001456) (not d!2386692) (not b!8001461) (not b!8001333) (not d!2386702) tp_is_empty!53725 (not b!8001197) (not b!8001388) (not b!8001452) (not b!8001464) (not b!8001280) (not b!8001336) (not b!8001395) (not bm!743365) (not b!8001457) (not b!8001474) (not b!8001463))
(check-sat)
(get-model)

(declare-fun b!8001475 () Bool)

(declare-fun e!4713592 () Bool)

(declare-fun call!743391 () Bool)

(assert (=> b!8001475 (= e!4713592 call!743391)))

(declare-fun b!8001476 () Bool)

(declare-fun e!4713590 () Bool)

(declare-fun e!4713591 () Bool)

(assert (=> b!8001476 (= e!4713590 e!4713591)))

(declare-fun res!3164238 () Bool)

(assert (=> b!8001476 (= res!3164238 (not (nullable!9672 (reg!21920 (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))))))))

(assert (=> b!8001476 (=> (not res!3164238) (not e!4713591))))

(declare-fun b!8001477 () Bool)

(declare-fun e!4713588 () Bool)

(assert (=> b!8001477 (= e!4713588 e!4713592)))

(declare-fun res!3164239 () Bool)

(assert (=> b!8001477 (=> (not res!3164239) (not e!4713592))))

(declare-fun call!743393 () Bool)

(assert (=> b!8001477 (= res!3164239 call!743393)))

(declare-fun bm!743386 () Bool)

(declare-fun call!743392 () Bool)

(assert (=> bm!743386 (= call!743391 call!743392)))

(declare-fun b!8001478 () Bool)

(declare-fun e!4713587 () Bool)

(assert (=> b!8001478 (= e!4713590 e!4713587)))

(declare-fun c!1469095 () Bool)

(assert (=> b!8001478 (= c!1469095 ((_ is Union!21591) (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))))))

(declare-fun b!8001479 () Bool)

(declare-fun e!4713586 () Bool)

(assert (=> b!8001479 (= e!4713586 call!743393)))

(declare-fun bm!743387 () Bool)

(assert (=> bm!743387 (= call!743393 (validRegex!11895 (ite c!1469095 (regTwo!43695 (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))) (regOne!43694 (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))))))))

(declare-fun b!8001480 () Bool)

(assert (=> b!8001480 (= e!4713591 call!743392)))

(declare-fun b!8001482 () Bool)

(declare-fun res!3164240 () Bool)

(assert (=> b!8001482 (=> res!3164240 e!4713588)))

(assert (=> b!8001482 (= res!3164240 (not ((_ is Concat!30590) (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724))))))))

(assert (=> b!8001482 (= e!4713587 e!4713588)))

(declare-fun c!1469096 () Bool)

(declare-fun bm!743388 () Bool)

(assert (=> bm!743388 (= call!743392 (validRegex!11895 (ite c!1469096 (reg!21920 (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))) (ite c!1469095 (regOne!43695 (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))) (regTwo!43694 (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724))))))))))

(declare-fun b!8001483 () Bool)

(declare-fun res!3164237 () Bool)

(assert (=> b!8001483 (=> (not res!3164237) (not e!4713586))))

(assert (=> b!8001483 (= res!3164237 call!743391)))

(assert (=> b!8001483 (= e!4713587 e!4713586)))

(declare-fun d!2386728 () Bool)

(declare-fun res!3164241 () Bool)

(declare-fun e!4713589 () Bool)

(assert (=> d!2386728 (=> res!3164241 e!4713589)))

(assert (=> d!2386728 (= res!3164241 ((_ is ElementMatch!21591) (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))))))

(assert (=> d!2386728 (= (validRegex!11895 (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))) e!4713589)))

(declare-fun b!8001481 () Bool)

(assert (=> b!8001481 (= e!4713589 e!4713590)))

(assert (=> b!8001481 (= c!1469096 ((_ is Star!21591) (ite c!1469014 (reg!21920 lt!2713724) (ite c!1469013 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)))))))

(assert (= (and d!2386728 (not res!3164241)) b!8001481))

(assert (= (and b!8001481 c!1469096) b!8001476))

(assert (= (and b!8001481 (not c!1469096)) b!8001478))

(assert (= (and b!8001476 res!3164238) b!8001480))

(assert (= (and b!8001478 c!1469095) b!8001483))

(assert (= (and b!8001478 (not c!1469095)) b!8001482))

(assert (= (and b!8001483 res!3164237) b!8001479))

(assert (= (and b!8001482 (not res!3164240)) b!8001477))

(assert (= (and b!8001477 res!3164239) b!8001475))

(assert (= (or b!8001479 b!8001477) bm!743387))

(assert (= (or b!8001483 b!8001475) bm!743386))

(assert (= (or b!8001480 bm!743386) bm!743388))

(declare-fun m!8368718 () Bool)

(assert (=> b!8001476 m!8368718))

(declare-fun m!8368720 () Bool)

(assert (=> bm!743387 m!8368720))

(declare-fun m!8368722 () Bool)

(assert (=> bm!743388 m!8368722))

(assert (=> bm!743340 d!2386728))

(declare-fun b!8001485 () Bool)

(declare-fun e!4713595 () Bool)

(declare-fun lt!2713758 () Bool)

(declare-fun call!743394 () Bool)

(assert (=> b!8001485 (= e!4713595 (= lt!2713758 call!743394))))

(declare-fun b!8001486 () Bool)

(declare-fun res!3164249 () Bool)

(declare-fun e!4713597 () Bool)

(assert (=> b!8001486 (=> res!3164249 e!4713597)))

(assert (=> b!8001486 (= res!3164249 (not ((_ is ElementMatch!21591) (derivativeStep!6606 r!24748 (head!16302 input!8006)))))))

(declare-fun e!4713598 () Bool)

(assert (=> b!8001486 (= e!4713598 e!4713597)))

(declare-fun b!8001487 () Bool)

(declare-fun res!3164243 () Bool)

(assert (=> b!8001487 (=> res!3164243 e!4713597)))

(declare-fun e!4713594 () Bool)

(assert (=> b!8001487 (= res!3164243 e!4713594)))

(declare-fun res!3164244 () Bool)

(assert (=> b!8001487 (=> (not res!3164244) (not e!4713594))))

(assert (=> b!8001487 (= res!3164244 lt!2713758)))

(declare-fun b!8001488 () Bool)

(assert (=> b!8001488 (= e!4713594 (= (head!16302 (tail!15829 input!8006)) (c!1469004 (derivativeStep!6606 r!24748 (head!16302 input!8006)))))))

(declare-fun b!8001484 () Bool)

(declare-fun e!4713593 () Bool)

(assert (=> b!8001484 (= e!4713593 (matchR!10770 (derivativeStep!6606 (derivativeStep!6606 r!24748 (head!16302 input!8006)) (head!16302 (tail!15829 input!8006))) (tail!15829 (tail!15829 input!8006))))))

(declare-fun d!2386730 () Bool)

(assert (=> d!2386730 e!4713595))

(declare-fun c!1469098 () Bool)

(assert (=> d!2386730 (= c!1469098 ((_ is EmptyExpr!21591) (derivativeStep!6606 r!24748 (head!16302 input!8006))))))

(assert (=> d!2386730 (= lt!2713758 e!4713593)))

(declare-fun c!1469099 () Bool)

(assert (=> d!2386730 (= c!1469099 (isEmpty!42968 (tail!15829 input!8006)))))

(assert (=> d!2386730 (validRegex!11895 (derivativeStep!6606 r!24748 (head!16302 input!8006)))))

(assert (=> d!2386730 (= (matchR!10770 (derivativeStep!6606 r!24748 (head!16302 input!8006)) (tail!15829 input!8006)) lt!2713758)))

(declare-fun b!8001489 () Bool)

(declare-fun e!4713596 () Bool)

(declare-fun e!4713599 () Bool)

(assert (=> b!8001489 (= e!4713596 e!4713599)))

(declare-fun res!3164242 () Bool)

(assert (=> b!8001489 (=> res!3164242 e!4713599)))

(assert (=> b!8001489 (= res!3164242 call!743394)))

(declare-fun b!8001490 () Bool)

(assert (=> b!8001490 (= e!4713599 (not (= (head!16302 (tail!15829 input!8006)) (c!1469004 (derivativeStep!6606 r!24748 (head!16302 input!8006))))))))

(declare-fun b!8001491 () Bool)

(assert (=> b!8001491 (= e!4713595 e!4713598)))

(declare-fun c!1469097 () Bool)

(assert (=> b!8001491 (= c!1469097 ((_ is EmptyLang!21591) (derivativeStep!6606 r!24748 (head!16302 input!8006))))))

(declare-fun bm!743389 () Bool)

(assert (=> bm!743389 (= call!743394 (isEmpty!42968 (tail!15829 input!8006)))))

(declare-fun b!8001492 () Bool)

(assert (=> b!8001492 (= e!4713597 e!4713596)))

(declare-fun res!3164248 () Bool)

(assert (=> b!8001492 (=> (not res!3164248) (not e!4713596))))

(assert (=> b!8001492 (= res!3164248 (not lt!2713758))))

(declare-fun b!8001493 () Bool)

(assert (=> b!8001493 (= e!4713593 (nullable!9672 (derivativeStep!6606 r!24748 (head!16302 input!8006))))))

(declare-fun b!8001494 () Bool)

(assert (=> b!8001494 (= e!4713598 (not lt!2713758))))

(declare-fun b!8001495 () Bool)

(declare-fun res!3164247 () Bool)

(assert (=> b!8001495 (=> (not res!3164247) (not e!4713594))))

(assert (=> b!8001495 (= res!3164247 (not call!743394))))

(declare-fun b!8001496 () Bool)

(declare-fun res!3164246 () Bool)

(assert (=> b!8001496 (=> res!3164246 e!4713599)))

(assert (=> b!8001496 (= res!3164246 (not (isEmpty!42968 (tail!15829 (tail!15829 input!8006)))))))

(declare-fun b!8001497 () Bool)

(declare-fun res!3164245 () Bool)

(assert (=> b!8001497 (=> (not res!3164245) (not e!4713594))))

(assert (=> b!8001497 (= res!3164245 (isEmpty!42968 (tail!15829 (tail!15829 input!8006))))))

(assert (= (and d!2386730 c!1469099) b!8001493))

(assert (= (and d!2386730 (not c!1469099)) b!8001484))

(assert (= (and d!2386730 c!1469098) b!8001485))

(assert (= (and d!2386730 (not c!1469098)) b!8001491))

(assert (= (and b!8001491 c!1469097) b!8001494))

(assert (= (and b!8001491 (not c!1469097)) b!8001486))

(assert (= (and b!8001486 (not res!3164249)) b!8001487))

(assert (= (and b!8001487 res!3164244) b!8001495))

(assert (= (and b!8001495 res!3164247) b!8001497))

(assert (= (and b!8001497 res!3164245) b!8001488))

(assert (= (and b!8001487 (not res!3164243)) b!8001492))

(assert (= (and b!8001492 res!3164248) b!8001489))

(assert (= (and b!8001489 (not res!3164242)) b!8001496))

(assert (= (and b!8001496 (not res!3164246)) b!8001490))

(assert (= (or b!8001485 b!8001489 b!8001495) bm!743389))

(assert (=> b!8001488 m!8368704))

(declare-fun m!8368724 () Bool)

(assert (=> b!8001488 m!8368724))

(assert (=> bm!743389 m!8368704))

(assert (=> bm!743389 m!8368706))

(assert (=> d!2386730 m!8368704))

(assert (=> d!2386730 m!8368706))

(assert (=> d!2386730 m!8368708))

(declare-fun m!8368726 () Bool)

(assert (=> d!2386730 m!8368726))

(assert (=> b!8001493 m!8368708))

(declare-fun m!8368728 () Bool)

(assert (=> b!8001493 m!8368728))

(assert (=> b!8001490 m!8368704))

(assert (=> b!8001490 m!8368724))

(assert (=> b!8001496 m!8368704))

(declare-fun m!8368730 () Bool)

(assert (=> b!8001496 m!8368730))

(assert (=> b!8001496 m!8368730))

(declare-fun m!8368732 () Bool)

(assert (=> b!8001496 m!8368732))

(assert (=> b!8001484 m!8368704))

(assert (=> b!8001484 m!8368724))

(assert (=> b!8001484 m!8368708))

(assert (=> b!8001484 m!8368724))

(declare-fun m!8368734 () Bool)

(assert (=> b!8001484 m!8368734))

(assert (=> b!8001484 m!8368704))

(assert (=> b!8001484 m!8368730))

(assert (=> b!8001484 m!8368734))

(assert (=> b!8001484 m!8368730))

(declare-fun m!8368736 () Bool)

(assert (=> b!8001484 m!8368736))

(assert (=> b!8001497 m!8368704))

(assert (=> b!8001497 m!8368730))

(assert (=> b!8001497 m!8368730))

(assert (=> b!8001497 m!8368732))

(assert (=> b!8001382 d!2386730))

(declare-fun b!8001498 () Bool)

(declare-fun e!4713602 () Regex!21591)

(declare-fun call!743396 () Regex!21591)

(declare-fun call!743398 () Regex!21591)

(assert (=> b!8001498 (= e!4713602 (Union!21591 call!743396 call!743398))))

(declare-fun b!8001499 () Bool)

(declare-fun e!4713600 () Regex!21591)

(assert (=> b!8001499 (= e!4713600 (ite (= (head!16302 input!8006) (c!1469004 r!24748)) EmptyExpr!21591 EmptyLang!21591))))

(declare-fun b!8001500 () Bool)

(declare-fun e!4713601 () Regex!21591)

(declare-fun call!743395 () Regex!21591)

(assert (=> b!8001500 (= e!4713601 (Union!21591 (Concat!30590 call!743395 (regTwo!43694 r!24748)) EmptyLang!21591))))

(declare-fun b!8001501 () Bool)

(declare-fun e!4713603 () Regex!21591)

(assert (=> b!8001501 (= e!4713603 e!4713600)))

(declare-fun c!1469102 () Bool)

(assert (=> b!8001501 (= c!1469102 ((_ is ElementMatch!21591) r!24748))))

(declare-fun b!8001502 () Bool)

(assert (=> b!8001502 (= e!4713601 (Union!21591 (Concat!30590 call!743395 (regTwo!43694 r!24748)) call!743396))))

(declare-fun c!1469101 () Bool)

(declare-fun c!1469103 () Bool)

(declare-fun bm!743390 () Bool)

(assert (=> bm!743390 (= call!743398 (derivativeStep!6606 (ite c!1469101 (regTwo!43695 r!24748) (ite c!1469103 (reg!21920 r!24748) (regOne!43694 r!24748))) (head!16302 input!8006)))))

(declare-fun bm!743391 () Bool)

(declare-fun call!743397 () Regex!21591)

(assert (=> bm!743391 (= call!743395 call!743397)))

(declare-fun bm!743392 () Bool)

(assert (=> bm!743392 (= call!743396 (derivativeStep!6606 (ite c!1469101 (regOne!43695 r!24748) (regTwo!43694 r!24748)) (head!16302 input!8006)))))

(declare-fun d!2386732 () Bool)

(declare-fun lt!2713759 () Regex!21591)

(assert (=> d!2386732 (validRegex!11895 lt!2713759)))

(assert (=> d!2386732 (= lt!2713759 e!4713603)))

(declare-fun c!1469104 () Bool)

(assert (=> d!2386732 (= c!1469104 (or ((_ is EmptyExpr!21591) r!24748) ((_ is EmptyLang!21591) r!24748)))))

(assert (=> d!2386732 (validRegex!11895 r!24748)))

(assert (=> d!2386732 (= (derivativeStep!6606 r!24748 (head!16302 input!8006)) lt!2713759)))

(declare-fun b!8001503 () Bool)

(declare-fun c!1469100 () Bool)

(assert (=> b!8001503 (= c!1469100 (nullable!9672 (regOne!43694 r!24748)))))

(declare-fun e!4713604 () Regex!21591)

(assert (=> b!8001503 (= e!4713604 e!4713601)))

(declare-fun b!8001504 () Bool)

(assert (=> b!8001504 (= e!4713603 EmptyLang!21591)))

(declare-fun b!8001505 () Bool)

(assert (=> b!8001505 (= e!4713604 (Concat!30590 call!743397 r!24748))))

(declare-fun b!8001506 () Bool)

(assert (=> b!8001506 (= c!1469101 ((_ is Union!21591) r!24748))))

(assert (=> b!8001506 (= e!4713600 e!4713602)))

(declare-fun bm!743393 () Bool)

(assert (=> bm!743393 (= call!743397 call!743398)))

(declare-fun b!8001507 () Bool)

(assert (=> b!8001507 (= e!4713602 e!4713604)))

(assert (=> b!8001507 (= c!1469103 ((_ is Star!21591) r!24748))))

(assert (= (and d!2386732 c!1469104) b!8001504))

(assert (= (and d!2386732 (not c!1469104)) b!8001501))

(assert (= (and b!8001501 c!1469102) b!8001499))

(assert (= (and b!8001501 (not c!1469102)) b!8001506))

(assert (= (and b!8001506 c!1469101) b!8001498))

(assert (= (and b!8001506 (not c!1469101)) b!8001507))

(assert (= (and b!8001507 c!1469103) b!8001505))

(assert (= (and b!8001507 (not c!1469103)) b!8001503))

(assert (= (and b!8001503 c!1469100) b!8001502))

(assert (= (and b!8001503 (not c!1469100)) b!8001500))

(assert (= (or b!8001502 b!8001500) bm!743391))

(assert (= (or b!8001505 bm!743391) bm!743393))

(assert (= (or b!8001498 b!8001502) bm!743392))

(assert (= (or b!8001498 bm!743393) bm!743390))

(assert (=> bm!743390 m!8368698))

(declare-fun m!8368738 () Bool)

(assert (=> bm!743390 m!8368738))

(assert (=> bm!743392 m!8368698))

(declare-fun m!8368740 () Bool)

(assert (=> bm!743392 m!8368740))

(declare-fun m!8368742 () Bool)

(assert (=> d!2386732 m!8368742))

(assert (=> d!2386732 m!8368544))

(assert (=> b!8001503 m!8368574))

(assert (=> b!8001382 d!2386732))

(declare-fun d!2386734 () Bool)

(assert (=> d!2386734 (= (head!16302 input!8006) (h!81144 input!8006))))

(assert (=> b!8001382 d!2386734))

(declare-fun d!2386736 () Bool)

(assert (=> d!2386736 (= (tail!15829 input!8006) (t!390563 input!8006))))

(assert (=> b!8001382 d!2386736))

(declare-fun d!2386738 () Bool)

(assert (not d!2386738))

(assert (=> b!8001281 d!2386738))

(declare-fun d!2386740 () Bool)

(assert (not d!2386740))

(assert (=> b!8001281 d!2386740))

(declare-fun d!2386742 () Bool)

(assert (=> d!2386742 (= (isEmpty!42968 (t!390563 input!8006)) ((_ is Nil!74696) (t!390563 input!8006)))))

(assert (=> d!2386706 d!2386742))

(assert (=> d!2386706 d!2386688))

(declare-fun b!8001509 () Bool)

(declare-fun e!4713607 () Bool)

(declare-fun lt!2713760 () Bool)

(declare-fun call!743399 () Bool)

(assert (=> b!8001509 (= e!4713607 (= lt!2713760 call!743399))))

(declare-fun b!8001510 () Bool)

(declare-fun res!3164257 () Bool)

(declare-fun e!4713609 () Bool)

(assert (=> b!8001510 (=> res!3164257 e!4713609)))

(assert (=> b!8001510 (= res!3164257 (not ((_ is ElementMatch!21591) (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006))))))))

(declare-fun e!4713610 () Bool)

(assert (=> b!8001510 (= e!4713610 e!4713609)))

(declare-fun b!8001511 () Bool)

(declare-fun res!3164251 () Bool)

(assert (=> b!8001511 (=> res!3164251 e!4713609)))

(declare-fun e!4713606 () Bool)

(assert (=> b!8001511 (= res!3164251 e!4713606)))

(declare-fun res!3164252 () Bool)

(assert (=> b!8001511 (=> (not res!3164252) (not e!4713606))))

(assert (=> b!8001511 (= res!3164252 lt!2713760)))

(declare-fun b!8001512 () Bool)

(assert (=> b!8001512 (= e!4713606 (= (head!16302 (tail!15829 (t!390563 input!8006))) (c!1469004 (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006))))))))

(declare-fun b!8001508 () Bool)

(declare-fun e!4713605 () Bool)

(assert (=> b!8001508 (= e!4713605 (matchR!10770 (derivativeStep!6606 (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006))) (head!16302 (tail!15829 (t!390563 input!8006)))) (tail!15829 (tail!15829 (t!390563 input!8006)))))))

(declare-fun d!2386744 () Bool)

(assert (=> d!2386744 e!4713607))

(declare-fun c!1469106 () Bool)

(assert (=> d!2386744 (= c!1469106 ((_ is EmptyExpr!21591) (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006)))))))

(assert (=> d!2386744 (= lt!2713760 e!4713605)))

(declare-fun c!1469107 () Bool)

(assert (=> d!2386744 (= c!1469107 (isEmpty!42968 (tail!15829 (t!390563 input!8006))))))

(assert (=> d!2386744 (validRegex!11895 (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006))))))

(assert (=> d!2386744 (= (matchR!10770 (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006))) (tail!15829 (t!390563 input!8006))) lt!2713760)))

(declare-fun b!8001513 () Bool)

(declare-fun e!4713608 () Bool)

(declare-fun e!4713611 () Bool)

(assert (=> b!8001513 (= e!4713608 e!4713611)))

(declare-fun res!3164250 () Bool)

(assert (=> b!8001513 (=> res!3164250 e!4713611)))

(assert (=> b!8001513 (= res!3164250 call!743399)))

(declare-fun b!8001514 () Bool)

(assert (=> b!8001514 (= e!4713611 (not (= (head!16302 (tail!15829 (t!390563 input!8006))) (c!1469004 (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006)))))))))

(declare-fun b!8001515 () Bool)

(assert (=> b!8001515 (= e!4713607 e!4713610)))

(declare-fun c!1469105 () Bool)

(assert (=> b!8001515 (= c!1469105 ((_ is EmptyLang!21591) (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006)))))))

(declare-fun bm!743394 () Bool)

(assert (=> bm!743394 (= call!743399 (isEmpty!42968 (tail!15829 (t!390563 input!8006))))))

(declare-fun b!8001516 () Bool)

(assert (=> b!8001516 (= e!4713609 e!4713608)))

(declare-fun res!3164256 () Bool)

(assert (=> b!8001516 (=> (not res!3164256) (not e!4713608))))

(assert (=> b!8001516 (= res!3164256 (not lt!2713760))))

(declare-fun b!8001517 () Bool)

(assert (=> b!8001517 (= e!4713605 (nullable!9672 (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006)))))))

(declare-fun b!8001518 () Bool)

(assert (=> b!8001518 (= e!4713610 (not lt!2713760))))

(declare-fun b!8001519 () Bool)

(declare-fun res!3164255 () Bool)

(assert (=> b!8001519 (=> (not res!3164255) (not e!4713606))))

(assert (=> b!8001519 (= res!3164255 (not call!743399))))

(declare-fun b!8001520 () Bool)

(declare-fun res!3164254 () Bool)

(assert (=> b!8001520 (=> res!3164254 e!4713611)))

(assert (=> b!8001520 (= res!3164254 (not (isEmpty!42968 (tail!15829 (tail!15829 (t!390563 input!8006))))))))

(declare-fun b!8001521 () Bool)

(declare-fun res!3164253 () Bool)

(assert (=> b!8001521 (=> (not res!3164253) (not e!4713606))))

(assert (=> b!8001521 (= res!3164253 (isEmpty!42968 (tail!15829 (tail!15829 (t!390563 input!8006)))))))

(assert (= (and d!2386744 c!1469107) b!8001517))

(assert (= (and d!2386744 (not c!1469107)) b!8001508))

(assert (= (and d!2386744 c!1469106) b!8001509))

(assert (= (and d!2386744 (not c!1469106)) b!8001515))

(assert (= (and b!8001515 c!1469105) b!8001518))

(assert (= (and b!8001515 (not c!1469105)) b!8001510))

(assert (= (and b!8001510 (not res!3164257)) b!8001511))

(assert (= (and b!8001511 res!3164252) b!8001519))

(assert (= (and b!8001519 res!3164255) b!8001521))

(assert (= (and b!8001521 res!3164253) b!8001512))

(assert (= (and b!8001511 (not res!3164251)) b!8001516))

(assert (= (and b!8001516 res!3164256) b!8001513))

(assert (= (and b!8001513 (not res!3164250)) b!8001520))

(assert (= (and b!8001520 (not res!3164254)) b!8001514))

(assert (= (or b!8001509 b!8001513 b!8001519) bm!743394))

(assert (=> b!8001512 m!8368644))

(declare-fun m!8368744 () Bool)

(assert (=> b!8001512 m!8368744))

(assert (=> bm!743394 m!8368644))

(assert (=> bm!743394 m!8368646))

(assert (=> d!2386744 m!8368644))

(assert (=> d!2386744 m!8368646))

(assert (=> d!2386744 m!8368648))

(declare-fun m!8368746 () Bool)

(assert (=> d!2386744 m!8368746))

(assert (=> b!8001517 m!8368648))

(declare-fun m!8368748 () Bool)

(assert (=> b!8001517 m!8368748))

(assert (=> b!8001514 m!8368644))

(assert (=> b!8001514 m!8368744))

(assert (=> b!8001520 m!8368644))

(declare-fun m!8368750 () Bool)

(assert (=> b!8001520 m!8368750))

(assert (=> b!8001520 m!8368750))

(declare-fun m!8368752 () Bool)

(assert (=> b!8001520 m!8368752))

(assert (=> b!8001508 m!8368644))

(assert (=> b!8001508 m!8368744))

(assert (=> b!8001508 m!8368648))

(assert (=> b!8001508 m!8368744))

(declare-fun m!8368754 () Bool)

(assert (=> b!8001508 m!8368754))

(assert (=> b!8001508 m!8368644))

(assert (=> b!8001508 m!8368750))

(assert (=> b!8001508 m!8368754))

(assert (=> b!8001508 m!8368750))

(declare-fun m!8368756 () Bool)

(assert (=> b!8001508 m!8368756))

(assert (=> b!8001521 m!8368644))

(assert (=> b!8001521 m!8368750))

(assert (=> b!8001521 m!8368750))

(assert (=> b!8001521 m!8368752))

(assert (=> b!8001324 d!2386744))

(declare-fun b!8001522 () Bool)

(declare-fun e!4713614 () Regex!21591)

(declare-fun call!743401 () Regex!21591)

(declare-fun call!743403 () Regex!21591)

(assert (=> b!8001522 (= e!4713614 (Union!21591 call!743401 call!743403))))

(declare-fun b!8001523 () Bool)

(declare-fun e!4713612 () Regex!21591)

(assert (=> b!8001523 (= e!4713612 (ite (= (head!16302 (t!390563 input!8006)) (c!1469004 lt!2713724)) EmptyExpr!21591 EmptyLang!21591))))

(declare-fun b!8001524 () Bool)

(declare-fun e!4713613 () Regex!21591)

(declare-fun call!743400 () Regex!21591)

(assert (=> b!8001524 (= e!4713613 (Union!21591 (Concat!30590 call!743400 (regTwo!43694 lt!2713724)) EmptyLang!21591))))

(declare-fun b!8001525 () Bool)

(declare-fun e!4713615 () Regex!21591)

(assert (=> b!8001525 (= e!4713615 e!4713612)))

(declare-fun c!1469110 () Bool)

(assert (=> b!8001525 (= c!1469110 ((_ is ElementMatch!21591) lt!2713724))))

(declare-fun b!8001526 () Bool)

(assert (=> b!8001526 (= e!4713613 (Union!21591 (Concat!30590 call!743400 (regTwo!43694 lt!2713724)) call!743401))))

(declare-fun c!1469111 () Bool)

(declare-fun c!1469109 () Bool)

(declare-fun bm!743395 () Bool)

(assert (=> bm!743395 (= call!743403 (derivativeStep!6606 (ite c!1469109 (regTwo!43695 lt!2713724) (ite c!1469111 (reg!21920 lt!2713724) (regOne!43694 lt!2713724))) (head!16302 (t!390563 input!8006))))))

(declare-fun bm!743396 () Bool)

(declare-fun call!743402 () Regex!21591)

(assert (=> bm!743396 (= call!743400 call!743402)))

(declare-fun bm!743397 () Bool)

(assert (=> bm!743397 (= call!743401 (derivativeStep!6606 (ite c!1469109 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)) (head!16302 (t!390563 input!8006))))))

(declare-fun d!2386746 () Bool)

(declare-fun lt!2713761 () Regex!21591)

(assert (=> d!2386746 (validRegex!11895 lt!2713761)))

(assert (=> d!2386746 (= lt!2713761 e!4713615)))

(declare-fun c!1469112 () Bool)

(assert (=> d!2386746 (= c!1469112 (or ((_ is EmptyExpr!21591) lt!2713724) ((_ is EmptyLang!21591) lt!2713724)))))

(assert (=> d!2386746 (validRegex!11895 lt!2713724)))

(assert (=> d!2386746 (= (derivativeStep!6606 lt!2713724 (head!16302 (t!390563 input!8006))) lt!2713761)))

(declare-fun b!8001527 () Bool)

(declare-fun c!1469108 () Bool)

(assert (=> b!8001527 (= c!1469108 (nullable!9672 (regOne!43694 lt!2713724)))))

(declare-fun e!4713616 () Regex!21591)

(assert (=> b!8001527 (= e!4713616 e!4713613)))

(declare-fun b!8001528 () Bool)

(assert (=> b!8001528 (= e!4713615 EmptyLang!21591)))

(declare-fun b!8001529 () Bool)

(assert (=> b!8001529 (= e!4713616 (Concat!30590 call!743402 lt!2713724))))

(declare-fun b!8001530 () Bool)

(assert (=> b!8001530 (= c!1469109 ((_ is Union!21591) lt!2713724))))

(assert (=> b!8001530 (= e!4713612 e!4713614)))

(declare-fun bm!743398 () Bool)

(assert (=> bm!743398 (= call!743402 call!743403)))

(declare-fun b!8001531 () Bool)

(assert (=> b!8001531 (= e!4713614 e!4713616)))

(assert (=> b!8001531 (= c!1469111 ((_ is Star!21591) lt!2713724))))

(assert (= (and d!2386746 c!1469112) b!8001528))

(assert (= (and d!2386746 (not c!1469112)) b!8001525))

(assert (= (and b!8001525 c!1469110) b!8001523))

(assert (= (and b!8001525 (not c!1469110)) b!8001530))

(assert (= (and b!8001530 c!1469109) b!8001522))

(assert (= (and b!8001530 (not c!1469109)) b!8001531))

(assert (= (and b!8001531 c!1469111) b!8001529))

(assert (= (and b!8001531 (not c!1469111)) b!8001527))

(assert (= (and b!8001527 c!1469108) b!8001526))

(assert (= (and b!8001527 (not c!1469108)) b!8001524))

(assert (= (or b!8001526 b!8001524) bm!743396))

(assert (= (or b!8001529 bm!743396) bm!743398))

(assert (= (or b!8001522 b!8001526) bm!743397))

(assert (= (or b!8001522 bm!743398) bm!743395))

(assert (=> bm!743395 m!8368634))

(declare-fun m!8368758 () Bool)

(assert (=> bm!743395 m!8368758))

(assert (=> bm!743397 m!8368634))

(declare-fun m!8368760 () Bool)

(assert (=> bm!743397 m!8368760))

(declare-fun m!8368762 () Bool)

(assert (=> d!2386746 m!8368762))

(assert (=> d!2386746 m!8368546))

(declare-fun m!8368764 () Bool)

(assert (=> b!8001527 m!8368764))

(assert (=> b!8001324 d!2386746))

(declare-fun d!2386748 () Bool)

(assert (=> d!2386748 (= (head!16302 (t!390563 input!8006)) (h!81144 (t!390563 input!8006)))))

(assert (=> b!8001324 d!2386748))

(declare-fun d!2386750 () Bool)

(assert (=> d!2386750 (= (tail!15829 (t!390563 input!8006)) (t!390563 (t!390563 input!8006)))))

(assert (=> b!8001324 d!2386750))

(assert (=> b!8001280 d!2386738))

(assert (=> b!8001280 d!2386740))

(assert (=> d!2386714 d!2386706))

(assert (=> d!2386714 d!2386688))

(assert (=> d!2386714 d!2386722))

(declare-fun d!2386752 () Bool)

(assert (=> d!2386752 (= (matchR!10770 lt!2713724 (t!390563 input!8006)) (matchR!10770 (derivative!771 lt!2713724 (t!390563 input!8006)) Nil!74696))))

(assert (=> d!2386752 true))

(declare-fun _$108!460 () Unit!170592)

(assert (=> d!2386752 (= (choose!60208 lt!2713724 (t!390563 input!8006)) _$108!460)))

(declare-fun bs!1970559 () Bool)

(assert (= bs!1970559 d!2386752))

(assert (=> bs!1970559 m!8368538))

(assert (=> bs!1970559 m!8368530))

(assert (=> bs!1970559 m!8368530))

(assert (=> bs!1970559 m!8368532))

(assert (=> d!2386714 d!2386752))

(assert (=> d!2386714 d!2386702))

(declare-fun d!2386754 () Bool)

(assert (=> d!2386754 (= (isEmpty!42968 input!8006) ((_ is Nil!74696) input!8006))))

(assert (=> d!2386724 d!2386754))

(assert (=> d!2386724 d!2386726))

(declare-fun d!2386756 () Bool)

(declare-fun nullableFct!3819 (Regex!21591) Bool)

(assert (=> d!2386756 (= (nullable!9672 (derivative!771 lt!2713724 (t!390563 input!8006))) (nullableFct!3819 (derivative!771 lt!2713724 (t!390563 input!8006))))))

(declare-fun bs!1970560 () Bool)

(assert (= bs!1970560 d!2386756))

(assert (=> bs!1970560 m!8368530))

(declare-fun m!8368766 () Bool)

(assert (=> bs!1970560 m!8368766))

(assert (=> b!8001305 d!2386756))

(declare-fun d!2386758 () Bool)

(assert (=> d!2386758 (= (isEmpty!42968 Nil!74696) true)))

(assert (=> bm!743377 d!2386758))

(declare-fun d!2386760 () Bool)

(assert (=> d!2386760 (= (nullable!9672 (derivative!771 r!24748 input!8006)) (nullableFct!3819 (derivative!771 r!24748 input!8006)))))

(declare-fun bs!1970561 () Bool)

(assert (= bs!1970561 d!2386760))

(assert (=> bs!1970561 m!8368536))

(declare-fun m!8368768 () Bool)

(assert (=> bs!1970561 m!8368768))

(assert (=> b!8001277 d!2386760))

(declare-fun d!2386762 () Bool)

(assert (=> d!2386762 (= (nullable!9672 (reg!21920 r!24748)) (nullableFct!3819 (reg!21920 r!24748)))))

(declare-fun bs!1970562 () Bool)

(assert (= bs!1970562 d!2386762))

(declare-fun m!8368770 () Bool)

(assert (=> bs!1970562 m!8368770))

(assert (=> b!8001411 d!2386762))

(assert (=> b!8001330 d!2386748))

(declare-fun b!8001532 () Bool)

(declare-fun e!4713619 () Regex!21591)

(declare-fun call!743405 () Regex!21591)

(declare-fun call!743407 () Regex!21591)

(assert (=> b!8001532 (= e!4713619 (Union!21591 call!743405 call!743407))))

(declare-fun e!4713617 () Regex!21591)

(declare-fun b!8001533 () Bool)

(assert (=> b!8001533 (= e!4713617 (ite (= (h!81144 input!8006) (c!1469004 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)))) EmptyExpr!21591 EmptyLang!21591))))

(declare-fun call!743404 () Regex!21591)

(declare-fun e!4713618 () Regex!21591)

(declare-fun b!8001534 () Bool)

(assert (=> b!8001534 (= e!4713618 (Union!21591 (Concat!30590 call!743404 (regTwo!43694 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)))) EmptyLang!21591))))

(declare-fun b!8001535 () Bool)

(declare-fun e!4713620 () Regex!21591)

(assert (=> b!8001535 (= e!4713620 e!4713617)))

(declare-fun c!1469115 () Bool)

(assert (=> b!8001535 (= c!1469115 ((_ is ElementMatch!21591) (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))))))

(declare-fun b!8001536 () Bool)

(assert (=> b!8001536 (= e!4713618 (Union!21591 (Concat!30590 call!743404 (regTwo!43694 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)))) call!743405))))

(declare-fun c!1469114 () Bool)

(declare-fun c!1469116 () Bool)

(declare-fun bm!743399 () Bool)

(assert (=> bm!743399 (= call!743407 (derivativeStep!6606 (ite c!1469114 (regTwo!43695 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))) (ite c!1469116 (reg!21920 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))) (regOne!43694 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))))) (h!81144 input!8006)))))

(declare-fun bm!743400 () Bool)

(declare-fun call!743406 () Regex!21591)

(assert (=> bm!743400 (= call!743404 call!743406)))

(declare-fun bm!743401 () Bool)

(assert (=> bm!743401 (= call!743405 (derivativeStep!6606 (ite c!1469114 (regOne!43695 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))) (regTwo!43694 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)))) (h!81144 input!8006)))))

(declare-fun d!2386764 () Bool)

(declare-fun lt!2713762 () Regex!21591)

(assert (=> d!2386764 (validRegex!11895 lt!2713762)))

(assert (=> d!2386764 (= lt!2713762 e!4713620)))

(declare-fun c!1469117 () Bool)

(assert (=> d!2386764 (= c!1469117 (or ((_ is EmptyExpr!21591) (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))) ((_ is EmptyLang!21591) (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))))

(assert (=> d!2386764 (validRegex!11895 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))

(assert (=> d!2386764 (= (derivativeStep!6606 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)) (h!81144 input!8006)) lt!2713762)))

(declare-fun b!8001537 () Bool)

(declare-fun c!1469113 () Bool)

(assert (=> b!8001537 (= c!1469113 (nullable!9672 (regOne!43694 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))))

(declare-fun e!4713621 () Regex!21591)

(assert (=> b!8001537 (= e!4713621 e!4713618)))

(declare-fun b!8001538 () Bool)

(assert (=> b!8001538 (= e!4713620 EmptyLang!21591)))

(declare-fun b!8001539 () Bool)

(assert (=> b!8001539 (= e!4713621 (Concat!30590 call!743406 (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))))))

(declare-fun b!8001540 () Bool)

(assert (=> b!8001540 (= c!1469114 ((_ is Union!21591) (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))))))

(assert (=> b!8001540 (= e!4713617 e!4713619)))

(declare-fun bm!743402 () Bool)

(assert (=> bm!743402 (= call!743406 call!743407)))

(declare-fun b!8001541 () Bool)

(assert (=> b!8001541 (= e!4713619 e!4713621)))

(assert (=> b!8001541 (= c!1469116 ((_ is Star!21591) (ite c!1469040 (regOne!43695 r!24748) (regTwo!43694 r!24748))))))

(assert (= (and d!2386764 c!1469117) b!8001538))

(assert (= (and d!2386764 (not c!1469117)) b!8001535))

(assert (= (and b!8001535 c!1469115) b!8001533))

(assert (= (and b!8001535 (not c!1469115)) b!8001540))

(assert (= (and b!8001540 c!1469114) b!8001532))

(assert (= (and b!8001540 (not c!1469114)) b!8001541))

(assert (= (and b!8001541 c!1469116) b!8001539))

(assert (= (and b!8001541 (not c!1469116)) b!8001537))

(assert (= (and b!8001537 c!1469113) b!8001536))

(assert (= (and b!8001537 (not c!1469113)) b!8001534))

(assert (= (or b!8001536 b!8001534) bm!743400))

(assert (= (or b!8001539 bm!743400) bm!743402))

(assert (= (or b!8001532 b!8001536) bm!743401))

(assert (= (or b!8001532 bm!743402) bm!743399))

(declare-fun m!8368772 () Bool)

(assert (=> bm!743399 m!8368772))

(declare-fun m!8368774 () Bool)

(assert (=> bm!743401 m!8368774))

(declare-fun m!8368776 () Bool)

(assert (=> d!2386764 m!8368776))

(declare-fun m!8368778 () Bool)

(assert (=> d!2386764 m!8368778))

(declare-fun m!8368780 () Bool)

(assert (=> b!8001537 m!8368780))

(assert (=> bm!743365 d!2386764))

(declare-fun b!8001542 () Bool)

(declare-fun e!4713628 () Bool)

(declare-fun call!743408 () Bool)

(assert (=> b!8001542 (= e!4713628 call!743408)))

(declare-fun b!8001543 () Bool)

(declare-fun e!4713626 () Bool)

(declare-fun e!4713627 () Bool)

(assert (=> b!8001543 (= e!4713626 e!4713627)))

(declare-fun res!3164259 () Bool)

(assert (=> b!8001543 (= res!3164259 (not (nullable!9672 (reg!21920 lt!2713746))))))

(assert (=> b!8001543 (=> (not res!3164259) (not e!4713627))))

(declare-fun b!8001544 () Bool)

(declare-fun e!4713624 () Bool)

(assert (=> b!8001544 (= e!4713624 e!4713628)))

(declare-fun res!3164260 () Bool)

(assert (=> b!8001544 (=> (not res!3164260) (not e!4713628))))

(declare-fun call!743410 () Bool)

(assert (=> b!8001544 (= res!3164260 call!743410)))

(declare-fun bm!743403 () Bool)

(declare-fun call!743409 () Bool)

(assert (=> bm!743403 (= call!743408 call!743409)))

(declare-fun b!8001545 () Bool)

(declare-fun e!4713623 () Bool)

(assert (=> b!8001545 (= e!4713626 e!4713623)))

(declare-fun c!1469118 () Bool)

(assert (=> b!8001545 (= c!1469118 ((_ is Union!21591) lt!2713746))))

(declare-fun b!8001546 () Bool)

(declare-fun e!4713622 () Bool)

(assert (=> b!8001546 (= e!4713622 call!743410)))

(declare-fun bm!743404 () Bool)

(assert (=> bm!743404 (= call!743410 (validRegex!11895 (ite c!1469118 (regTwo!43695 lt!2713746) (regOne!43694 lt!2713746))))))

(declare-fun b!8001547 () Bool)

(assert (=> b!8001547 (= e!4713627 call!743409)))

(declare-fun b!8001549 () Bool)

(declare-fun res!3164261 () Bool)

(assert (=> b!8001549 (=> res!3164261 e!4713624)))

(assert (=> b!8001549 (= res!3164261 (not ((_ is Concat!30590) lt!2713746)))))

(assert (=> b!8001549 (= e!4713623 e!4713624)))

(declare-fun c!1469119 () Bool)

(declare-fun bm!743405 () Bool)

(assert (=> bm!743405 (= call!743409 (validRegex!11895 (ite c!1469119 (reg!21920 lt!2713746) (ite c!1469118 (regOne!43695 lt!2713746) (regTwo!43694 lt!2713746)))))))

(declare-fun b!8001550 () Bool)

(declare-fun res!3164258 () Bool)

(assert (=> b!8001550 (=> (not res!3164258) (not e!4713622))))

(assert (=> b!8001550 (= res!3164258 call!743408)))

(assert (=> b!8001550 (= e!4713623 e!4713622)))

(declare-fun d!2386766 () Bool)

(declare-fun res!3164262 () Bool)

(declare-fun e!4713625 () Bool)

(assert (=> d!2386766 (=> res!3164262 e!4713625)))

(assert (=> d!2386766 (= res!3164262 ((_ is ElementMatch!21591) lt!2713746))))

(assert (=> d!2386766 (= (validRegex!11895 lt!2713746) e!4713625)))

(declare-fun b!8001548 () Bool)

(assert (=> b!8001548 (= e!4713625 e!4713626)))

(assert (=> b!8001548 (= c!1469119 ((_ is Star!21591) lt!2713746))))

(assert (= (and d!2386766 (not res!3164262)) b!8001548))

(assert (= (and b!8001548 c!1469119) b!8001543))

(assert (= (and b!8001548 (not c!1469119)) b!8001545))

(assert (= (and b!8001543 res!3164259) b!8001547))

(assert (= (and b!8001545 c!1469118) b!8001550))

(assert (= (and b!8001545 (not c!1469118)) b!8001549))

(assert (= (and b!8001550 res!3164258) b!8001546))

(assert (= (and b!8001549 (not res!3164261)) b!8001544))

(assert (= (and b!8001544 res!3164260) b!8001542))

(assert (= (or b!8001546 b!8001544) bm!743404))

(assert (= (or b!8001550 b!8001542) bm!743403))

(assert (= (or b!8001547 bm!743403) bm!743405))

(declare-fun m!8368782 () Bool)

(assert (=> b!8001543 m!8368782))

(declare-fun m!8368784 () Bool)

(assert (=> bm!743404 m!8368784))

(declare-fun m!8368786 () Bool)

(assert (=> bm!743405 m!8368786))

(assert (=> d!2386710 d!2386766))

(assert (=> d!2386710 d!2386726))

(declare-fun b!8001551 () Bool)

(declare-fun e!4713635 () Bool)

(declare-fun call!743411 () Bool)

(assert (=> b!8001551 (= e!4713635 call!743411)))

(declare-fun b!8001552 () Bool)

(declare-fun e!4713633 () Bool)

(declare-fun e!4713634 () Bool)

(assert (=> b!8001552 (= e!4713633 e!4713634)))

(declare-fun res!3164264 () Bool)

(assert (=> b!8001552 (= res!3164264 (not (nullable!9672 (reg!21920 (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))))))))

(assert (=> b!8001552 (=> (not res!3164264) (not e!4713634))))

(declare-fun b!8001553 () Bool)

(declare-fun e!4713631 () Bool)

(assert (=> b!8001553 (= e!4713631 e!4713635)))

(declare-fun res!3164265 () Bool)

(assert (=> b!8001553 (=> (not res!3164265) (not e!4713635))))

(declare-fun call!743413 () Bool)

(assert (=> b!8001553 (= res!3164265 call!743413)))

(declare-fun bm!743406 () Bool)

(declare-fun call!743412 () Bool)

(assert (=> bm!743406 (= call!743411 call!743412)))

(declare-fun b!8001554 () Bool)

(declare-fun e!4713630 () Bool)

(assert (=> b!8001554 (= e!4713633 e!4713630)))

(declare-fun c!1469120 () Bool)

(assert (=> b!8001554 (= c!1469120 ((_ is Union!21591) (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))))))

(declare-fun b!8001555 () Bool)

(declare-fun e!4713629 () Bool)

(assert (=> b!8001555 (= e!4713629 call!743413)))

(declare-fun bm!743407 () Bool)

(assert (=> bm!743407 (= call!743413 (validRegex!11895 (ite c!1469120 (regTwo!43695 (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))) (regOne!43694 (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))))))))

(declare-fun b!8001556 () Bool)

(assert (=> b!8001556 (= e!4713634 call!743412)))

(declare-fun b!8001558 () Bool)

(declare-fun res!3164266 () Bool)

(assert (=> b!8001558 (=> res!3164266 e!4713631)))

(assert (=> b!8001558 (= res!3164266 (not ((_ is Concat!30590) (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724)))))))

(assert (=> b!8001558 (= e!4713630 e!4713631)))

(declare-fun c!1469121 () Bool)

(declare-fun bm!743408 () Bool)

(assert (=> bm!743408 (= call!743412 (validRegex!11895 (ite c!1469121 (reg!21920 (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))) (ite c!1469120 (regOne!43695 (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))) (regTwo!43694 (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724)))))))))

(declare-fun b!8001559 () Bool)

(declare-fun res!3164263 () Bool)

(assert (=> b!8001559 (=> (not res!3164263) (not e!4713629))))

(assert (=> b!8001559 (= res!3164263 call!743411)))

(assert (=> b!8001559 (= e!4713630 e!4713629)))

(declare-fun d!2386768 () Bool)

(declare-fun res!3164267 () Bool)

(declare-fun e!4713632 () Bool)

(assert (=> d!2386768 (=> res!3164267 e!4713632)))

(assert (=> d!2386768 (= res!3164267 ((_ is ElementMatch!21591) (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))))))

(assert (=> d!2386768 (= (validRegex!11895 (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))) e!4713632)))

(declare-fun b!8001557 () Bool)

(assert (=> b!8001557 (= e!4713632 e!4713633)))

(assert (=> b!8001557 (= c!1469121 ((_ is Star!21591) (ite c!1469013 (regTwo!43695 lt!2713724) (regOne!43694 lt!2713724))))))

(assert (= (and d!2386768 (not res!3164267)) b!8001557))

(assert (= (and b!8001557 c!1469121) b!8001552))

(assert (= (and b!8001557 (not c!1469121)) b!8001554))

(assert (= (and b!8001552 res!3164264) b!8001556))

(assert (= (and b!8001554 c!1469120) b!8001559))

(assert (= (and b!8001554 (not c!1469120)) b!8001558))

(assert (= (and b!8001559 res!3164263) b!8001555))

(assert (= (and b!8001558 (not res!3164266)) b!8001553))

(assert (= (and b!8001553 res!3164265) b!8001551))

(assert (= (or b!8001555 b!8001553) bm!743407))

(assert (= (or b!8001559 b!8001551) bm!743406))

(assert (= (or b!8001556 bm!743406) bm!743408))

(declare-fun m!8368788 () Bool)

(assert (=> b!8001552 m!8368788))

(declare-fun m!8368790 () Bool)

(assert (=> bm!743407 m!8368790))

(declare-fun m!8368792 () Bool)

(assert (=> bm!743408 m!8368792))

(assert (=> bm!743339 d!2386768))

(assert (=> b!8001386 d!2386734))

(declare-fun d!2386770 () Bool)

(assert (=> d!2386770 (= (nullable!9672 (regOne!43694 r!24748)) (nullableFct!3819 (regOne!43694 r!24748)))))

(declare-fun bs!1970563 () Bool)

(assert (= bs!1970563 d!2386770))

(declare-fun m!8368794 () Bool)

(assert (=> bs!1970563 m!8368794))

(assert (=> b!8001197 d!2386770))

(assert (=> b!8001328 d!2386748))

(assert (=> b!8001309 d!2386738))

(assert (=> b!8001309 d!2386740))

(assert (=> b!8001308 d!2386738))

(assert (=> b!8001308 d!2386740))

(declare-fun d!2386772 () Bool)

(assert (not d!2386772))

(assert (=> b!8001272 d!2386772))

(declare-fun d!2386774 () Bool)

(declare-fun lt!2713763 () Regex!21591)

(assert (=> d!2386774 (validRegex!11895 lt!2713763)))

(declare-fun e!4713636 () Regex!21591)

(assert (=> d!2386774 (= lt!2713763 e!4713636)))

(declare-fun c!1469122 () Bool)

(assert (=> d!2386774 (= c!1469122 ((_ is Cons!74696) (t!390563 (t!390563 input!8006))))))

(assert (=> d!2386774 (validRegex!11895 (derivativeStep!6606 lt!2713724 (h!81144 (t!390563 input!8006))))))

(assert (=> d!2386774 (= (derivative!771 (derivativeStep!6606 lt!2713724 (h!81144 (t!390563 input!8006))) (t!390563 (t!390563 input!8006))) lt!2713763)))

(declare-fun b!8001560 () Bool)

(assert (=> b!8001560 (= e!4713636 (derivative!771 (derivativeStep!6606 (derivativeStep!6606 lt!2713724 (h!81144 (t!390563 input!8006))) (h!81144 (t!390563 (t!390563 input!8006)))) (t!390563 (t!390563 (t!390563 input!8006)))))))

(declare-fun b!8001561 () Bool)

(assert (=> b!8001561 (= e!4713636 (derivativeStep!6606 lt!2713724 (h!81144 (t!390563 input!8006))))))

(assert (= (and d!2386774 c!1469122) b!8001560))

(assert (= (and d!2386774 (not c!1469122)) b!8001561))

(declare-fun m!8368796 () Bool)

(assert (=> d!2386774 m!8368796))

(assert (=> d!2386774 m!8368686))

(declare-fun m!8368798 () Bool)

(assert (=> d!2386774 m!8368798))

(assert (=> b!8001560 m!8368686))

(declare-fun m!8368800 () Bool)

(assert (=> b!8001560 m!8368800))

(assert (=> b!8001560 m!8368800))

(declare-fun m!8368802 () Bool)

(assert (=> b!8001560 m!8368802))

(assert (=> b!8001380 d!2386774))

(declare-fun b!8001562 () Bool)

(declare-fun e!4713639 () Regex!21591)

(declare-fun call!743415 () Regex!21591)

(declare-fun call!743417 () Regex!21591)

(assert (=> b!8001562 (= e!4713639 (Union!21591 call!743415 call!743417))))

(declare-fun b!8001563 () Bool)

(declare-fun e!4713637 () Regex!21591)

(assert (=> b!8001563 (= e!4713637 (ite (= (h!81144 (t!390563 input!8006)) (c!1469004 lt!2713724)) EmptyExpr!21591 EmptyLang!21591))))

(declare-fun b!8001564 () Bool)

(declare-fun e!4713638 () Regex!21591)

(declare-fun call!743414 () Regex!21591)

(assert (=> b!8001564 (= e!4713638 (Union!21591 (Concat!30590 call!743414 (regTwo!43694 lt!2713724)) EmptyLang!21591))))

(declare-fun b!8001565 () Bool)

(declare-fun e!4713640 () Regex!21591)

(assert (=> b!8001565 (= e!4713640 e!4713637)))

(declare-fun c!1469125 () Bool)

(assert (=> b!8001565 (= c!1469125 ((_ is ElementMatch!21591) lt!2713724))))

(declare-fun b!8001566 () Bool)

(assert (=> b!8001566 (= e!4713638 (Union!21591 (Concat!30590 call!743414 (regTwo!43694 lt!2713724)) call!743415))))

(declare-fun c!1469126 () Bool)

(declare-fun bm!743409 () Bool)

(declare-fun c!1469124 () Bool)

(assert (=> bm!743409 (= call!743417 (derivativeStep!6606 (ite c!1469124 (regTwo!43695 lt!2713724) (ite c!1469126 (reg!21920 lt!2713724) (regOne!43694 lt!2713724))) (h!81144 (t!390563 input!8006))))))

(declare-fun bm!743410 () Bool)

(declare-fun call!743416 () Regex!21591)

(assert (=> bm!743410 (= call!743414 call!743416)))

(declare-fun bm!743411 () Bool)

(assert (=> bm!743411 (= call!743415 (derivativeStep!6606 (ite c!1469124 (regOne!43695 lt!2713724) (regTwo!43694 lt!2713724)) (h!81144 (t!390563 input!8006))))))

(declare-fun d!2386776 () Bool)

(declare-fun lt!2713764 () Regex!21591)

(assert (=> d!2386776 (validRegex!11895 lt!2713764)))

(assert (=> d!2386776 (= lt!2713764 e!4713640)))

(declare-fun c!1469127 () Bool)

(assert (=> d!2386776 (= c!1469127 (or ((_ is EmptyExpr!21591) lt!2713724) ((_ is EmptyLang!21591) lt!2713724)))))

(assert (=> d!2386776 (validRegex!11895 lt!2713724)))

(assert (=> d!2386776 (= (derivativeStep!6606 lt!2713724 (h!81144 (t!390563 input!8006))) lt!2713764)))

(declare-fun b!8001567 () Bool)

(declare-fun c!1469123 () Bool)

(assert (=> b!8001567 (= c!1469123 (nullable!9672 (regOne!43694 lt!2713724)))))

(declare-fun e!4713641 () Regex!21591)

(assert (=> b!8001567 (= e!4713641 e!4713638)))

(declare-fun b!8001568 () Bool)

(assert (=> b!8001568 (= e!4713640 EmptyLang!21591)))

(declare-fun b!8001569 () Bool)

(assert (=> b!8001569 (= e!4713641 (Concat!30590 call!743416 lt!2713724))))

(declare-fun b!8001570 () Bool)

(assert (=> b!8001570 (= c!1469124 ((_ is Union!21591) lt!2713724))))

(assert (=> b!8001570 (= e!4713637 e!4713639)))

(declare-fun bm!743412 () Bool)

(assert (=> bm!743412 (= call!743416 call!743417)))

(declare-fun b!8001571 () Bool)

(assert (=> b!8001571 (= e!4713639 e!4713641)))

(assert (=> b!8001571 (= c!1469126 ((_ is Star!21591) lt!2713724))))

(assert (= (and d!2386776 c!1469127) b!8001568))

(assert (= (and d!2386776 (not c!1469127)) b!8001565))

(assert (= (and b!8001565 c!1469125) b!8001563))

(assert (= (and b!8001565 (not c!1469125)) b!8001570))

(assert (= (and b!8001570 c!1469124) b!8001562))

(assert (= (and b!8001570 (not c!1469124)) b!8001571))

(assert (= (and b!8001571 c!1469126) b!8001569))

(assert (= (and b!8001571 (not c!1469126)) b!8001567))

(assert (= (and b!8001567 c!1469123) b!8001566))

(assert (= (and b!8001567 (not c!1469123)) b!8001564))

(assert (= (or b!8001566 b!8001564) bm!743410))

(assert (= (or b!8001569 bm!743410) bm!743412))

(assert (= (or b!8001562 b!8001566) bm!743411))

(assert (= (or b!8001562 bm!743412) bm!743409))

(declare-fun m!8368804 () Bool)

(assert (=> bm!743409 m!8368804))

(declare-fun m!8368806 () Bool)

(assert (=> bm!743411 m!8368806))

(declare-fun m!8368808 () Bool)

(assert (=> d!2386776 m!8368808))

(assert (=> d!2386776 m!8368546))

(assert (=> b!8001567 m!8368764))

(assert (=> b!8001380 d!2386776))

(declare-fun b!8001572 () Bool)

(declare-fun e!4713648 () Bool)

(declare-fun call!743418 () Bool)

(assert (=> b!8001572 (= e!4713648 call!743418)))

(declare-fun b!8001573 () Bool)

(declare-fun e!4713646 () Bool)

(declare-fun e!4713647 () Bool)

(assert (=> b!8001573 (= e!4713646 e!4713647)))

(declare-fun res!3164269 () Bool)

(assert (=> b!8001573 (= res!3164269 (not (nullable!9672 (reg!21920 (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))))))))

(assert (=> b!8001573 (=> (not res!3164269) (not e!4713647))))

(declare-fun b!8001574 () Bool)

(declare-fun e!4713644 () Bool)

(assert (=> b!8001574 (= e!4713644 e!4713648)))

(declare-fun res!3164270 () Bool)

(assert (=> b!8001574 (=> (not res!3164270) (not e!4713648))))

(declare-fun call!743420 () Bool)

(assert (=> b!8001574 (= res!3164270 call!743420)))

(declare-fun bm!743413 () Bool)

(declare-fun call!743419 () Bool)

(assert (=> bm!743413 (= call!743418 call!743419)))

(declare-fun b!8001575 () Bool)

(declare-fun e!4713643 () Bool)

(assert (=> b!8001575 (= e!4713646 e!4713643)))

(declare-fun c!1469128 () Bool)

(assert (=> b!8001575 (= c!1469128 ((_ is Union!21591) (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))))))

(declare-fun b!8001576 () Bool)

(declare-fun e!4713642 () Bool)

(assert (=> b!8001576 (= e!4713642 call!743420)))

(declare-fun bm!743414 () Bool)

(assert (=> bm!743414 (= call!743420 (validRegex!11895 (ite c!1469128 (regTwo!43695 (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))) (regOne!43694 (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))))))))

(declare-fun b!8001577 () Bool)

(assert (=> b!8001577 (= e!4713647 call!743419)))

(declare-fun b!8001579 () Bool)

(declare-fun res!3164271 () Bool)

(assert (=> b!8001579 (=> res!3164271 e!4713644)))

(assert (=> b!8001579 (= res!3164271 (not ((_ is Concat!30590) (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748)))))))

(assert (=> b!8001579 (= e!4713643 e!4713644)))

(declare-fun c!1469129 () Bool)

(declare-fun bm!743415 () Bool)

(assert (=> bm!743415 (= call!743419 (validRegex!11895 (ite c!1469129 (reg!21920 (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))) (ite c!1469128 (regOne!43695 (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))) (regTwo!43694 (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748)))))))))

(declare-fun b!8001580 () Bool)

(declare-fun res!3164268 () Bool)

(assert (=> b!8001580 (=> (not res!3164268) (not e!4713642))))

(assert (=> b!8001580 (= res!3164268 call!743418)))

(assert (=> b!8001580 (= e!4713643 e!4713642)))

(declare-fun d!2386778 () Bool)

(declare-fun res!3164272 () Bool)

(declare-fun e!4713645 () Bool)

(assert (=> d!2386778 (=> res!3164272 e!4713645)))

(assert (=> d!2386778 (= res!3164272 ((_ is ElementMatch!21591) (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))))))

(assert (=> d!2386778 (= (validRegex!11895 (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))) e!4713645)))

(declare-fun b!8001578 () Bool)

(assert (=> b!8001578 (= e!4713645 e!4713646)))

(assert (=> b!8001578 (= c!1469129 ((_ is Star!21591) (ite c!1469093 (regTwo!43695 r!24748) (regOne!43694 r!24748))))))

(assert (= (and d!2386778 (not res!3164272)) b!8001578))

(assert (= (and b!8001578 c!1469129) b!8001573))

(assert (= (and b!8001578 (not c!1469129)) b!8001575))

(assert (= (and b!8001573 res!3164269) b!8001577))

(assert (= (and b!8001575 c!1469128) b!8001580))

(assert (= (and b!8001575 (not c!1469128)) b!8001579))

(assert (= (and b!8001580 res!3164268) b!8001576))

(assert (= (and b!8001579 (not res!3164271)) b!8001574))

(assert (= (and b!8001574 res!3164270) b!8001572))

(assert (= (or b!8001576 b!8001574) bm!743414))

(assert (= (or b!8001580 b!8001572) bm!743413))

(assert (= (or b!8001577 bm!743413) bm!743415))

(declare-fun m!8368810 () Bool)

(assert (=> b!8001573 m!8368810))

(declare-fun m!8368812 () Bool)

(assert (=> bm!743414 m!8368812))

(declare-fun m!8368814 () Bool)

(assert (=> bm!743415 m!8368814))

(assert (=> bm!743384 d!2386778))

(declare-fun d!2386780 () Bool)

(assert (=> d!2386780 (= (nullable!9672 r!24748) (nullableFct!3819 r!24748))))

(declare-fun bs!1970564 () Bool)

(assert (= bs!1970564 d!2386780))

(declare-fun m!8368816 () Bool)

(assert (=> bs!1970564 m!8368816))

(assert (=> b!8001391 d!2386780))

(assert (=> d!2386702 d!2386758))

(declare-fun b!8001581 () Bool)

(declare-fun e!4713655 () Bool)

(declare-fun call!743421 () Bool)

(assert (=> b!8001581 (= e!4713655 call!743421)))

(declare-fun b!8001582 () Bool)

(declare-fun e!4713653 () Bool)

(declare-fun e!4713654 () Bool)

(assert (=> b!8001582 (= e!4713653 e!4713654)))

(declare-fun res!3164274 () Bool)

(assert (=> b!8001582 (= res!3164274 (not (nullable!9672 (reg!21920 (derivative!771 lt!2713724 (t!390563 input!8006))))))))

(assert (=> b!8001582 (=> (not res!3164274) (not e!4713654))))

(declare-fun b!8001583 () Bool)

(declare-fun e!4713651 () Bool)

(assert (=> b!8001583 (= e!4713651 e!4713655)))

(declare-fun res!3164275 () Bool)

(assert (=> b!8001583 (=> (not res!3164275) (not e!4713655))))

(declare-fun call!743423 () Bool)

(assert (=> b!8001583 (= res!3164275 call!743423)))

(declare-fun bm!743416 () Bool)

(declare-fun call!743422 () Bool)

(assert (=> bm!743416 (= call!743421 call!743422)))

(declare-fun b!8001584 () Bool)

(declare-fun e!4713650 () Bool)

(assert (=> b!8001584 (= e!4713653 e!4713650)))

(declare-fun c!1469130 () Bool)

(assert (=> b!8001584 (= c!1469130 ((_ is Union!21591) (derivative!771 lt!2713724 (t!390563 input!8006))))))

(declare-fun b!8001585 () Bool)

(declare-fun e!4713649 () Bool)

(assert (=> b!8001585 (= e!4713649 call!743423)))

(declare-fun bm!743417 () Bool)

(assert (=> bm!743417 (= call!743423 (validRegex!11895 (ite c!1469130 (regTwo!43695 (derivative!771 lt!2713724 (t!390563 input!8006))) (regOne!43694 (derivative!771 lt!2713724 (t!390563 input!8006))))))))

(declare-fun b!8001586 () Bool)

(assert (=> b!8001586 (= e!4713654 call!743422)))

(declare-fun b!8001588 () Bool)

(declare-fun res!3164276 () Bool)

(assert (=> b!8001588 (=> res!3164276 e!4713651)))

(assert (=> b!8001588 (= res!3164276 (not ((_ is Concat!30590) (derivative!771 lt!2713724 (t!390563 input!8006)))))))

(assert (=> b!8001588 (= e!4713650 e!4713651)))

(declare-fun bm!743418 () Bool)

(declare-fun c!1469131 () Bool)

(assert (=> bm!743418 (= call!743422 (validRegex!11895 (ite c!1469131 (reg!21920 (derivative!771 lt!2713724 (t!390563 input!8006))) (ite c!1469130 (regOne!43695 (derivative!771 lt!2713724 (t!390563 input!8006))) (regTwo!43694 (derivative!771 lt!2713724 (t!390563 input!8006)))))))))

(declare-fun b!8001589 () Bool)

(declare-fun res!3164273 () Bool)

(assert (=> b!8001589 (=> (not res!3164273) (not e!4713649))))

(assert (=> b!8001589 (= res!3164273 call!743421)))

(assert (=> b!8001589 (= e!4713650 e!4713649)))

(declare-fun d!2386782 () Bool)

(declare-fun res!3164277 () Bool)

(declare-fun e!4713652 () Bool)

(assert (=> d!2386782 (=> res!3164277 e!4713652)))

(assert (=> d!2386782 (= res!3164277 ((_ is ElementMatch!21591) (derivative!771 lt!2713724 (t!390563 input!8006))))))

(assert (=> d!2386782 (= (validRegex!11895 (derivative!771 lt!2713724 (t!390563 input!8006))) e!4713652)))

(declare-fun b!8001587 () Bool)

(assert (=> b!8001587 (= e!4713652 e!4713653)))

(assert (=> b!8001587 (= c!1469131 ((_ is Star!21591) (derivative!771 lt!2713724 (t!390563 input!8006))))))

(assert (= (and d!2386782 (not res!3164277)) b!8001587))

(assert (= (and b!8001587 c!1469131) b!8001582))

(assert (= (and b!8001587 (not c!1469131)) b!8001584))

(assert (= (and b!8001582 res!3164274) b!8001586))

(assert (= (and b!8001584 c!1469130) b!8001589))

(assert (= (and b!8001584 (not c!1469130)) b!8001588))

(assert (= (and b!8001589 res!3164273) b!8001585))

(assert (= (and b!8001588 (not res!3164276)) b!8001583))

(assert (= (and b!8001583 res!3164275) b!8001581))

(assert (= (or b!8001585 b!8001583) bm!743417))

(assert (= (or b!8001589 b!8001581) bm!743416))

(assert (= (or b!8001586 bm!743416) bm!743418))

(declare-fun m!8368818 () Bool)

(assert (=> b!8001582 m!8368818))

(declare-fun m!8368820 () Bool)

(assert (=> bm!743417 m!8368820))

(declare-fun m!8368822 () Bool)

(assert (=> bm!743418 m!8368822))

(assert (=> d!2386702 d!2386782))

(declare-fun d!2386784 () Bool)

(assert (not d!2386784))

(assert (=> b!8001296 d!2386784))

(declare-fun d!2386786 () Bool)

(assert (not d!2386786))

(assert (=> b!8001296 d!2386786))

(assert (=> b!8001296 d!2386772))

(assert (=> b!8001296 d!2386740))

(declare-fun d!2386788 () Bool)

(assert (=> d!2386788 (= (nullable!9672 (reg!21920 lt!2713724)) (nullableFct!3819 (reg!21920 lt!2713724)))))

(declare-fun bs!1970565 () Bool)

(assert (= bs!1970565 d!2386788))

(declare-fun m!8368824 () Bool)

(assert (=> bs!1970565 m!8368824))

(assert (=> b!8001126 d!2386788))

(declare-fun d!2386790 () Bool)

(assert (=> d!2386790 (= (nullable!9672 lt!2713724) (nullableFct!3819 lt!2713724))))

(declare-fun bs!1970566 () Bool)

(assert (= bs!1970566 d!2386790))

(declare-fun m!8368826 () Bool)

(assert (=> bs!1970566 m!8368826))

(assert (=> b!8001333 d!2386790))

(assert (=> bm!743382 d!2386754))

(declare-fun d!2386792 () Bool)

(assert (not d!2386792))

(assert (=> b!8001268 d!2386792))

(declare-fun d!2386794 () Bool)

(assert (not d!2386794))

(assert (=> b!8001268 d!2386794))

(assert (=> b!8001268 d!2386772))

(assert (=> b!8001268 d!2386740))

(assert (=> bm!743379 d!2386742))

(declare-fun b!8001590 () Bool)

(declare-fun e!4713658 () Regex!21591)

(declare-fun call!743425 () Regex!21591)

(declare-fun call!743427 () Regex!21591)

(assert (=> b!8001590 (= e!4713658 (Union!21591 call!743425 call!743427))))

(declare-fun b!8001591 () Bool)

(declare-fun e!4713656 () Regex!21591)

(assert (=> b!8001591 (= e!4713656 (ite (= (h!81144 input!8006) (c!1469004 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))))) EmptyExpr!21591 EmptyLang!21591))))

(declare-fun b!8001592 () Bool)

(declare-fun e!4713657 () Regex!21591)

(declare-fun call!743424 () Regex!21591)

(assert (=> b!8001592 (= e!4713657 (Union!21591 (Concat!30590 call!743424 (regTwo!43694 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))))) EmptyLang!21591))))

(declare-fun b!8001593 () Bool)

(declare-fun e!4713659 () Regex!21591)

(assert (=> b!8001593 (= e!4713659 e!4713656)))

(declare-fun c!1469134 () Bool)

(assert (=> b!8001593 (= c!1469134 ((_ is ElementMatch!21591) (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))))))

(declare-fun b!8001594 () Bool)

(assert (=> b!8001594 (= e!4713657 (Union!21591 (Concat!30590 call!743424 (regTwo!43694 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))))) call!743425))))

(declare-fun bm!743419 () Bool)

(declare-fun c!1469133 () Bool)

(declare-fun c!1469135 () Bool)

(assert (=> bm!743419 (= call!743427 (derivativeStep!6606 (ite c!1469133 (regTwo!43695 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))) (ite c!1469135 (reg!21920 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))) (regOne!43694 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))))) (h!81144 input!8006)))))

(declare-fun bm!743420 () Bool)

(declare-fun call!743426 () Regex!21591)

(assert (=> bm!743420 (= call!743424 call!743426)))

(declare-fun bm!743421 () Bool)

(assert (=> bm!743421 (= call!743425 (derivativeStep!6606 (ite c!1469133 (regOne!43695 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))) (regTwo!43694 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))))) (h!81144 input!8006)))))

(declare-fun d!2386796 () Bool)

(declare-fun lt!2713765 () Regex!21591)

(assert (=> d!2386796 (validRegex!11895 lt!2713765)))

(assert (=> d!2386796 (= lt!2713765 e!4713659)))

(declare-fun c!1469136 () Bool)

(assert (=> d!2386796 (= c!1469136 (or ((_ is EmptyExpr!21591) (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))) ((_ is EmptyLang!21591) (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))))))))

(assert (=> d!2386796 (validRegex!11895 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))))))

(assert (=> d!2386796 (= (derivativeStep!6606 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))) (h!81144 input!8006)) lt!2713765)))

(declare-fun c!1469132 () Bool)

(declare-fun b!8001595 () Bool)

(assert (=> b!8001595 (= c!1469132 (nullable!9672 (regOne!43694 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748))))))))

(declare-fun e!4713660 () Regex!21591)

(assert (=> b!8001595 (= e!4713660 e!4713657)))

(declare-fun b!8001596 () Bool)

(assert (=> b!8001596 (= e!4713659 EmptyLang!21591)))

(declare-fun b!8001597 () Bool)

(assert (=> b!8001597 (= e!4713660 (Concat!30590 call!743426 (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))))))

(declare-fun b!8001598 () Bool)

(assert (=> b!8001598 (= c!1469133 ((_ is Union!21591) (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))))))

(assert (=> b!8001598 (= e!4713656 e!4713658)))

(declare-fun bm!743422 () Bool)

(assert (=> bm!743422 (= call!743426 call!743427)))

(declare-fun b!8001599 () Bool)

(assert (=> b!8001599 (= e!4713658 e!4713660)))

(assert (=> b!8001599 (= c!1469135 ((_ is Star!21591) (ite c!1469040 (regTwo!43695 r!24748) (ite c!1469042 (reg!21920 r!24748) (regOne!43694 r!24748)))))))

(assert (= (and d!2386796 c!1469136) b!8001596))

(assert (= (and d!2386796 (not c!1469136)) b!8001593))

(assert (= (and b!8001593 c!1469134) b!8001591))

(assert (= (and b!8001593 (not c!1469134)) b!8001598))

(assert (= (and b!8001598 c!1469133) b!8001590))

(assert (= (and b!8001598 (not c!1469133)) b!8001599))

(assert (= (and b!8001599 c!1469135) b!8001597))

(assert (= (and b!8001599 (not c!1469135)) b!8001595))

(assert (= (and b!8001595 c!1469132) b!8001594))

(assert (= (and b!8001595 (not c!1469132)) b!8001592))

(assert (= (or b!8001594 b!8001592) bm!743420))

(assert (= (or b!8001597 bm!743420) bm!743422))

(assert (= (or b!8001590 b!8001594) bm!743421))

(assert (= (or b!8001590 bm!743422) bm!743419))

(declare-fun m!8368828 () Bool)

(assert (=> bm!743419 m!8368828))

(declare-fun m!8368830 () Bool)

(assert (=> bm!743421 m!8368830))

(declare-fun m!8368832 () Bool)

(assert (=> d!2386796 m!8368832))

(declare-fun m!8368834 () Bool)

(assert (=> d!2386796 m!8368834))

(declare-fun m!8368836 () Bool)

(assert (=> b!8001595 m!8368836))

(assert (=> bm!743363 d!2386796))

(declare-fun b!8001600 () Bool)

(declare-fun e!4713667 () Bool)

(declare-fun call!743428 () Bool)

(assert (=> b!8001600 (= e!4713667 call!743428)))

(declare-fun b!8001601 () Bool)

(declare-fun e!4713665 () Bool)

(declare-fun e!4713666 () Bool)

(assert (=> b!8001601 (= e!4713665 e!4713666)))

(declare-fun res!3164279 () Bool)

(assert (=> b!8001601 (= res!3164279 (not (nullable!9672 (reg!21920 lt!2713756))))))

(assert (=> b!8001601 (=> (not res!3164279) (not e!4713666))))

(declare-fun b!8001602 () Bool)

(declare-fun e!4713663 () Bool)

(assert (=> b!8001602 (= e!4713663 e!4713667)))

(declare-fun res!3164280 () Bool)

(assert (=> b!8001602 (=> (not res!3164280) (not e!4713667))))

(declare-fun call!743430 () Bool)

(assert (=> b!8001602 (= res!3164280 call!743430)))

(declare-fun bm!743423 () Bool)

(declare-fun call!743429 () Bool)

(assert (=> bm!743423 (= call!743428 call!743429)))

(declare-fun b!8001603 () Bool)

(declare-fun e!4713662 () Bool)

(assert (=> b!8001603 (= e!4713665 e!4713662)))

(declare-fun c!1469137 () Bool)

(assert (=> b!8001603 (= c!1469137 ((_ is Union!21591) lt!2713756))))

(declare-fun b!8001604 () Bool)

(declare-fun e!4713661 () Bool)

(assert (=> b!8001604 (= e!4713661 call!743430)))

(declare-fun bm!743424 () Bool)

(assert (=> bm!743424 (= call!743430 (validRegex!11895 (ite c!1469137 (regTwo!43695 lt!2713756) (regOne!43694 lt!2713756))))))

(declare-fun b!8001605 () Bool)

(assert (=> b!8001605 (= e!4713666 call!743429)))

(declare-fun b!8001607 () Bool)

(declare-fun res!3164281 () Bool)

(assert (=> b!8001607 (=> res!3164281 e!4713663)))

(assert (=> b!8001607 (= res!3164281 (not ((_ is Concat!30590) lt!2713756)))))

(assert (=> b!8001607 (= e!4713662 e!4713663)))

(declare-fun bm!743425 () Bool)

(declare-fun c!1469138 () Bool)

(assert (=> bm!743425 (= call!743429 (validRegex!11895 (ite c!1469138 (reg!21920 lt!2713756) (ite c!1469137 (regOne!43695 lt!2713756) (regTwo!43694 lt!2713756)))))))

(declare-fun b!8001608 () Bool)

(declare-fun res!3164278 () Bool)

(assert (=> b!8001608 (=> (not res!3164278) (not e!4713661))))

(assert (=> b!8001608 (= res!3164278 call!743428)))

(assert (=> b!8001608 (= e!4713662 e!4713661)))

(declare-fun d!2386798 () Bool)

(declare-fun res!3164282 () Bool)

(declare-fun e!4713664 () Bool)

(assert (=> d!2386798 (=> res!3164282 e!4713664)))

(assert (=> d!2386798 (= res!3164282 ((_ is ElementMatch!21591) lt!2713756))))

(assert (=> d!2386798 (= (validRegex!11895 lt!2713756) e!4713664)))

(declare-fun b!8001606 () Bool)

(assert (=> b!8001606 (= e!4713664 e!4713665)))

(assert (=> b!8001606 (= c!1469138 ((_ is Star!21591) lt!2713756))))

(assert (= (and d!2386798 (not res!3164282)) b!8001606))

(assert (= (and b!8001606 c!1469138) b!8001601))

(assert (= (and b!8001606 (not c!1469138)) b!8001603))

(assert (= (and b!8001601 res!3164279) b!8001605))

(assert (= (and b!8001603 c!1469137) b!8001608))

(assert (= (and b!8001603 (not c!1469137)) b!8001607))

(assert (= (and b!8001608 res!3164278) b!8001604))

(assert (= (and b!8001607 (not res!3164281)) b!8001602))

(assert (= (and b!8001602 res!3164280) b!8001600))

(assert (= (or b!8001604 b!8001602) bm!743424))

(assert (= (or b!8001608 b!8001600) bm!743423))

(assert (= (or b!8001605 bm!743423) bm!743425))

(declare-fun m!8368838 () Bool)

(assert (=> b!8001601 m!8368838))

(declare-fun m!8368840 () Bool)

(assert (=> bm!743424 m!8368840))

(declare-fun m!8368842 () Bool)

(assert (=> bm!743425 m!8368842))

(assert (=> d!2386722 d!2386798))

(assert (=> d!2386722 d!2386688))

(assert (=> b!8001388 d!2386734))

(assert (=> b!8001302 d!2386772))

(assert (=> bm!743375 d!2386758))

(declare-fun b!8001609 () Bool)

(declare-fun e!4713674 () Bool)

(declare-fun call!743431 () Bool)

(assert (=> b!8001609 (= e!4713674 call!743431)))

(declare-fun b!8001610 () Bool)

(declare-fun e!4713672 () Bool)

(declare-fun e!4713673 () Bool)

(assert (=> b!8001610 (= e!4713672 e!4713673)))

(declare-fun res!3164284 () Bool)

(assert (=> b!8001610 (= res!3164284 (not (nullable!9672 (reg!21920 (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))))))

(assert (=> b!8001610 (=> (not res!3164284) (not e!4713673))))

(declare-fun b!8001611 () Bool)

(declare-fun e!4713670 () Bool)

(assert (=> b!8001611 (= e!4713670 e!4713674)))

(declare-fun res!3164285 () Bool)

(assert (=> b!8001611 (=> (not res!3164285) (not e!4713674))))

(declare-fun call!743433 () Bool)

(assert (=> b!8001611 (= res!3164285 call!743433)))

(declare-fun bm!743426 () Bool)

(declare-fun call!743432 () Bool)

(assert (=> bm!743426 (= call!743431 call!743432)))

(declare-fun b!8001612 () Bool)

(declare-fun e!4713669 () Bool)

(assert (=> b!8001612 (= e!4713672 e!4713669)))

(declare-fun c!1469139 () Bool)

(assert (=> b!8001612 (= c!1469139 ((_ is Union!21591) (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))))

(declare-fun b!8001613 () Bool)

(declare-fun e!4713668 () Bool)

(assert (=> b!8001613 (= e!4713668 call!743433)))

(declare-fun bm!743427 () Bool)

(assert (=> bm!743427 (= call!743433 (validRegex!11895 (ite c!1469139 (regTwo!43695 (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))) (regOne!43694 (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))))))

(declare-fun b!8001614 () Bool)

(assert (=> b!8001614 (= e!4713673 call!743432)))

(declare-fun b!8001616 () Bool)

(declare-fun res!3164286 () Bool)

(assert (=> b!8001616 (=> res!3164286 e!4713670)))

(assert (=> b!8001616 (= res!3164286 (not ((_ is Concat!30590) (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748))))))))

(assert (=> b!8001616 (= e!4713669 e!4713670)))

(declare-fun bm!743428 () Bool)

(declare-fun c!1469140 () Bool)

(assert (=> bm!743428 (= call!743432 (validRegex!11895 (ite c!1469140 (reg!21920 (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))) (ite c!1469139 (regOne!43695 (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))) (regTwo!43694 (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748))))))))))

(declare-fun b!8001617 () Bool)

(declare-fun res!3164283 () Bool)

(assert (=> b!8001617 (=> (not res!3164283) (not e!4713668))))

(assert (=> b!8001617 (= res!3164283 call!743431)))

(assert (=> b!8001617 (= e!4713669 e!4713668)))

(declare-fun d!2386800 () Bool)

(declare-fun res!3164287 () Bool)

(declare-fun e!4713671 () Bool)

(assert (=> d!2386800 (=> res!3164287 e!4713671)))

(assert (=> d!2386800 (= res!3164287 ((_ is ElementMatch!21591) (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))))

(assert (=> d!2386800 (= (validRegex!11895 (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))) e!4713671)))

(declare-fun b!8001615 () Bool)

(assert (=> b!8001615 (= e!4713671 e!4713672)))

(assert (=> b!8001615 (= c!1469140 ((_ is Star!21591) (ite c!1469094 (reg!21920 r!24748) (ite c!1469093 (regOne!43695 r!24748) (regTwo!43694 r!24748)))))))

(assert (= (and d!2386800 (not res!3164287)) b!8001615))

(assert (= (and b!8001615 c!1469140) b!8001610))

(assert (= (and b!8001615 (not c!1469140)) b!8001612))

(assert (= (and b!8001610 res!3164284) b!8001614))

(assert (= (and b!8001612 c!1469139) b!8001617))

(assert (= (and b!8001612 (not c!1469139)) b!8001616))

(assert (= (and b!8001617 res!3164283) b!8001613))

(assert (= (and b!8001616 (not res!3164286)) b!8001611))

(assert (= (and b!8001611 res!3164285) b!8001609))

(assert (= (or b!8001613 b!8001611) bm!743427))

(assert (= (or b!8001617 b!8001609) bm!743426))

(assert (= (or b!8001614 bm!743426) bm!743428))

(declare-fun m!8368844 () Bool)

(assert (=> b!8001610 m!8368844))

(declare-fun m!8368846 () Bool)

(assert (=> bm!743427 m!8368846))

(declare-fun m!8368848 () Bool)

(assert (=> bm!743428 m!8368848))

(assert (=> bm!743385 d!2386800))

(declare-fun d!2386802 () Bool)

(assert (=> d!2386802 (= (isEmpty!42968 (tail!15829 input!8006)) ((_ is Nil!74696) (tail!15829 input!8006)))))

(assert (=> b!8001395 d!2386802))

(assert (=> b!8001395 d!2386736))

(assert (=> b!8001300 d!2386772))

(assert (=> b!8001394 d!2386802))

(assert (=> b!8001394 d!2386736))

(assert (=> b!8001274 d!2386772))

(declare-fun d!2386804 () Bool)

(declare-fun lt!2713766 () Regex!21591)

(assert (=> d!2386804 (validRegex!11895 lt!2713766)))

(declare-fun e!4713675 () Regex!21591)

(assert (=> d!2386804 (= lt!2713766 e!4713675)))

(declare-fun c!1469141 () Bool)

(assert (=> d!2386804 (= c!1469141 ((_ is Cons!74696) (t!390563 input!8006)))))

(assert (=> d!2386804 (validRegex!11895 (derivativeStep!6606 r!24748 (h!81144 input!8006)))))

(assert (=> d!2386804 (= (derivative!771 (derivativeStep!6606 r!24748 (h!81144 input!8006)) (t!390563 input!8006)) lt!2713766)))

(declare-fun b!8001618 () Bool)

(assert (=> b!8001618 (= e!4713675 (derivative!771 (derivativeStep!6606 (derivativeStep!6606 r!24748 (h!81144 input!8006)) (h!81144 (t!390563 input!8006))) (t!390563 (t!390563 input!8006))))))

(declare-fun b!8001619 () Bool)

(assert (=> b!8001619 (= e!4713675 (derivativeStep!6606 r!24748 (h!81144 input!8006)))))

(assert (= (and d!2386804 c!1469141) b!8001618))

(assert (= (and d!2386804 (not c!1469141)) b!8001619))

(declare-fun m!8368850 () Bool)

(assert (=> d!2386804 m!8368850))

(assert (=> d!2386804 m!8368548))

(declare-fun m!8368852 () Bool)

(assert (=> d!2386804 m!8368852))

(assert (=> b!8001618 m!8368548))

(declare-fun m!8368854 () Bool)

(assert (=> b!8001618 m!8368854))

(assert (=> b!8001618 m!8368854))

(declare-fun m!8368856 () Bool)

(assert (=> b!8001618 m!8368856))

(assert (=> b!8001342 d!2386804))

(assert (=> b!8001342 d!2386692))

(declare-fun d!2386806 () Bool)

(assert (=> d!2386806 (= (isEmpty!42968 (tail!15829 (t!390563 input!8006))) ((_ is Nil!74696) (tail!15829 (t!390563 input!8006))))))

(assert (=> b!8001337 d!2386806))

(assert (=> b!8001337 d!2386750))

(declare-fun b!8001620 () Bool)

(declare-fun e!4713682 () Bool)

(declare-fun call!743434 () Bool)

(assert (=> b!8001620 (= e!4713682 call!743434)))

(declare-fun b!8001621 () Bool)

(declare-fun e!4713680 () Bool)

(declare-fun e!4713681 () Bool)

(assert (=> b!8001621 (= e!4713680 e!4713681)))

(declare-fun res!3164289 () Bool)

(assert (=> b!8001621 (= res!3164289 (not (nullable!9672 (reg!21920 lt!2713730))))))

(assert (=> b!8001621 (=> (not res!3164289) (not e!4713681))))

(declare-fun b!8001622 () Bool)

(declare-fun e!4713678 () Bool)

(assert (=> b!8001622 (= e!4713678 e!4713682)))

(declare-fun res!3164290 () Bool)

(assert (=> b!8001622 (=> (not res!3164290) (not e!4713682))))

(declare-fun call!743436 () Bool)

(assert (=> b!8001622 (= res!3164290 call!743436)))

(declare-fun bm!743429 () Bool)

(declare-fun call!743435 () Bool)

(assert (=> bm!743429 (= call!743434 call!743435)))

(declare-fun b!8001623 () Bool)

(declare-fun e!4713677 () Bool)

(assert (=> b!8001623 (= e!4713680 e!4713677)))

(declare-fun c!1469142 () Bool)

(assert (=> b!8001623 (= c!1469142 ((_ is Union!21591) lt!2713730))))

(declare-fun b!8001624 () Bool)

(declare-fun e!4713676 () Bool)

(assert (=> b!8001624 (= e!4713676 call!743436)))

(declare-fun bm!743430 () Bool)

(assert (=> bm!743430 (= call!743436 (validRegex!11895 (ite c!1469142 (regTwo!43695 lt!2713730) (regOne!43694 lt!2713730))))))

(declare-fun b!8001625 () Bool)

(assert (=> b!8001625 (= e!4713681 call!743435)))

(declare-fun b!8001627 () Bool)

(declare-fun res!3164291 () Bool)

(assert (=> b!8001627 (=> res!3164291 e!4713678)))

(assert (=> b!8001627 (= res!3164291 (not ((_ is Concat!30590) lt!2713730)))))

(assert (=> b!8001627 (= e!4713677 e!4713678)))

(declare-fun c!1469143 () Bool)

(declare-fun bm!743431 () Bool)

(assert (=> bm!743431 (= call!743435 (validRegex!11895 (ite c!1469143 (reg!21920 lt!2713730) (ite c!1469142 (regOne!43695 lt!2713730) (regTwo!43694 lt!2713730)))))))

(declare-fun b!8001628 () Bool)

(declare-fun res!3164288 () Bool)

(assert (=> b!8001628 (=> (not res!3164288) (not e!4713676))))

(assert (=> b!8001628 (= res!3164288 call!743434)))

(assert (=> b!8001628 (= e!4713677 e!4713676)))

(declare-fun d!2386808 () Bool)

(declare-fun res!3164292 () Bool)

(declare-fun e!4713679 () Bool)

(assert (=> d!2386808 (=> res!3164292 e!4713679)))

(assert (=> d!2386808 (= res!3164292 ((_ is ElementMatch!21591) lt!2713730))))

(assert (=> d!2386808 (= (validRegex!11895 lt!2713730) e!4713679)))

(declare-fun b!8001626 () Bool)

(assert (=> b!8001626 (= e!4713679 e!4713680)))

(assert (=> b!8001626 (= c!1469143 ((_ is Star!21591) lt!2713730))))

(assert (= (and d!2386808 (not res!3164292)) b!8001626))

(assert (= (and b!8001626 c!1469143) b!8001621))

(assert (= (and b!8001626 (not c!1469143)) b!8001623))

(assert (= (and b!8001621 res!3164289) b!8001625))

(assert (= (and b!8001623 c!1469142) b!8001628))

(assert (= (and b!8001623 (not c!1469142)) b!8001627))

(assert (= (and b!8001628 res!3164288) b!8001624))

(assert (= (and b!8001627 (not res!3164291)) b!8001622))

(assert (= (and b!8001622 res!3164290) b!8001620))

(assert (= (or b!8001624 b!8001622) bm!743430))

(assert (= (or b!8001628 b!8001620) bm!743429))

(assert (= (or b!8001625 bm!743429) bm!743431))

(declare-fun m!8368858 () Bool)

(assert (=> b!8001621 m!8368858))

(declare-fun m!8368860 () Bool)

(assert (=> bm!743430 m!8368860))

(declare-fun m!8368862 () Bool)

(assert (=> bm!743431 m!8368862))

(assert (=> d!2386692 d!2386808))

(assert (=> d!2386692 d!2386726))

(assert (=> d!2386698 d!2386758))

(declare-fun b!8001629 () Bool)

(declare-fun e!4713689 () Bool)

(declare-fun call!743437 () Bool)

(assert (=> b!8001629 (= e!4713689 call!743437)))

(declare-fun b!8001630 () Bool)

(declare-fun e!4713687 () Bool)

(declare-fun e!4713688 () Bool)

(assert (=> b!8001630 (= e!4713687 e!4713688)))

(declare-fun res!3164294 () Bool)

(assert (=> b!8001630 (= res!3164294 (not (nullable!9672 (reg!21920 (derivative!771 r!24748 input!8006)))))))

(assert (=> b!8001630 (=> (not res!3164294) (not e!4713688))))

(declare-fun b!8001631 () Bool)

(declare-fun e!4713685 () Bool)

(assert (=> b!8001631 (= e!4713685 e!4713689)))

(declare-fun res!3164295 () Bool)

(assert (=> b!8001631 (=> (not res!3164295) (not e!4713689))))

(declare-fun call!743439 () Bool)

(assert (=> b!8001631 (= res!3164295 call!743439)))

(declare-fun bm!743432 () Bool)

(declare-fun call!743438 () Bool)

(assert (=> bm!743432 (= call!743437 call!743438)))

(declare-fun b!8001632 () Bool)

(declare-fun e!4713684 () Bool)

(assert (=> b!8001632 (= e!4713687 e!4713684)))

(declare-fun c!1469144 () Bool)

(assert (=> b!8001632 (= c!1469144 ((_ is Union!21591) (derivative!771 r!24748 input!8006)))))

(declare-fun b!8001633 () Bool)

(declare-fun e!4713683 () Bool)

(assert (=> b!8001633 (= e!4713683 call!743439)))

(declare-fun bm!743433 () Bool)

(assert (=> bm!743433 (= call!743439 (validRegex!11895 (ite c!1469144 (regTwo!43695 (derivative!771 r!24748 input!8006)) (regOne!43694 (derivative!771 r!24748 input!8006)))))))

(declare-fun b!8001634 () Bool)

(assert (=> b!8001634 (= e!4713688 call!743438)))

(declare-fun b!8001636 () Bool)

(declare-fun res!3164296 () Bool)

(assert (=> b!8001636 (=> res!3164296 e!4713685)))

(assert (=> b!8001636 (= res!3164296 (not ((_ is Concat!30590) (derivative!771 r!24748 input!8006))))))

(assert (=> b!8001636 (= e!4713684 e!4713685)))

(declare-fun c!1469145 () Bool)

(declare-fun bm!743434 () Bool)

(assert (=> bm!743434 (= call!743438 (validRegex!11895 (ite c!1469145 (reg!21920 (derivative!771 r!24748 input!8006)) (ite c!1469144 (regOne!43695 (derivative!771 r!24748 input!8006)) (regTwo!43694 (derivative!771 r!24748 input!8006))))))))

(declare-fun b!8001637 () Bool)

(declare-fun res!3164293 () Bool)

(assert (=> b!8001637 (=> (not res!3164293) (not e!4713683))))

(assert (=> b!8001637 (= res!3164293 call!743437)))

(assert (=> b!8001637 (= e!4713684 e!4713683)))

(declare-fun d!2386810 () Bool)

(declare-fun res!3164297 () Bool)

(declare-fun e!4713686 () Bool)

(assert (=> d!2386810 (=> res!3164297 e!4713686)))

(assert (=> d!2386810 (= res!3164297 ((_ is ElementMatch!21591) (derivative!771 r!24748 input!8006)))))

(assert (=> d!2386810 (= (validRegex!11895 (derivative!771 r!24748 input!8006)) e!4713686)))

(declare-fun b!8001635 () Bool)

(assert (=> b!8001635 (= e!4713686 e!4713687)))

(assert (=> b!8001635 (= c!1469145 ((_ is Star!21591) (derivative!771 r!24748 input!8006)))))

(assert (= (and d!2386810 (not res!3164297)) b!8001635))

(assert (= (and b!8001635 c!1469145) b!8001630))

(assert (= (and b!8001635 (not c!1469145)) b!8001632))

(assert (= (and b!8001630 res!3164294) b!8001634))

(assert (= (and b!8001632 c!1469144) b!8001637))

(assert (= (and b!8001632 (not c!1469144)) b!8001636))

(assert (= (and b!8001637 res!3164293) b!8001633))

(assert (= (and b!8001636 (not res!3164296)) b!8001631))

(assert (= (and b!8001631 res!3164295) b!8001629))

(assert (= (or b!8001633 b!8001631) bm!743433))

(assert (= (or b!8001637 b!8001629) bm!743432))

(assert (= (or b!8001634 bm!743432) bm!743434))

(declare-fun m!8368864 () Bool)

(assert (=> b!8001630 m!8368864))

(declare-fun m!8368866 () Bool)

(assert (=> bm!743433 m!8368866))

(declare-fun m!8368868 () Bool)

(assert (=> bm!743434 m!8368868))

(assert (=> d!2386698 d!2386810))

(assert (=> b!8001336 d!2386806))

(assert (=> b!8001336 d!2386750))

(declare-fun b!8001638 () Bool)

(declare-fun e!4713690 () Bool)

(declare-fun tp!2393423 () Bool)

(assert (=> b!8001638 (= e!4713690 (and tp_is_empty!53725 tp!2393423))))

(assert (=> b!8001470 (= tp!2393417 e!4713690)))

(assert (= (and b!8001470 ((_ is Cons!74696) (t!390563 (t!390563 input!8006)))) b!8001638))

(declare-fun b!8001641 () Bool)

(declare-fun e!4713691 () Bool)

(declare-fun tp!2393428 () Bool)

(assert (=> b!8001641 (= e!4713691 tp!2393428)))

(declare-fun b!8001639 () Bool)

(assert (=> b!8001639 (= e!4713691 tp_is_empty!53725)))

(declare-fun b!8001642 () Bool)

(declare-fun tp!2393427 () Bool)

(declare-fun tp!2393426 () Bool)

(assert (=> b!8001642 (= e!4713691 (and tp!2393427 tp!2393426))))

(assert (=> b!8001474 (= tp!2393421 e!4713691)))

(declare-fun b!8001640 () Bool)

(declare-fun tp!2393424 () Bool)

(declare-fun tp!2393425 () Bool)

(assert (=> b!8001640 (= e!4713691 (and tp!2393424 tp!2393425))))

(assert (= (and b!8001474 ((_ is ElementMatch!21591) (regOne!43695 (reg!21920 r!24748)))) b!8001639))

(assert (= (and b!8001474 ((_ is Concat!30590) (regOne!43695 (reg!21920 r!24748)))) b!8001640))

(assert (= (and b!8001474 ((_ is Star!21591) (regOne!43695 (reg!21920 r!24748)))) b!8001641))

(assert (= (and b!8001474 ((_ is Union!21591) (regOne!43695 (reg!21920 r!24748)))) b!8001642))

(declare-fun b!8001645 () Bool)

(declare-fun e!4713692 () Bool)

(declare-fun tp!2393433 () Bool)

(assert (=> b!8001645 (= e!4713692 tp!2393433)))

(declare-fun b!8001643 () Bool)

(assert (=> b!8001643 (= e!4713692 tp_is_empty!53725)))

(declare-fun b!8001646 () Bool)

(declare-fun tp!2393432 () Bool)

(declare-fun tp!2393431 () Bool)

(assert (=> b!8001646 (= e!4713692 (and tp!2393432 tp!2393431))))

(assert (=> b!8001474 (= tp!2393420 e!4713692)))

(declare-fun b!8001644 () Bool)

(declare-fun tp!2393429 () Bool)

(declare-fun tp!2393430 () Bool)

(assert (=> b!8001644 (= e!4713692 (and tp!2393429 tp!2393430))))

(assert (= (and b!8001474 ((_ is ElementMatch!21591) (regTwo!43695 (reg!21920 r!24748)))) b!8001643))

(assert (= (and b!8001474 ((_ is Concat!30590) (regTwo!43695 (reg!21920 r!24748)))) b!8001644))

(assert (= (and b!8001474 ((_ is Star!21591) (regTwo!43695 (reg!21920 r!24748)))) b!8001645))

(assert (= (and b!8001474 ((_ is Union!21591) (regTwo!43695 (reg!21920 r!24748)))) b!8001646))

(declare-fun b!8001649 () Bool)

(declare-fun e!4713693 () Bool)

(declare-fun tp!2393438 () Bool)

(assert (=> b!8001649 (= e!4713693 tp!2393438)))

(declare-fun b!8001647 () Bool)

(assert (=> b!8001647 (= e!4713693 tp_is_empty!53725)))

(declare-fun b!8001650 () Bool)

(declare-fun tp!2393437 () Bool)

(declare-fun tp!2393436 () Bool)

(assert (=> b!8001650 (= e!4713693 (and tp!2393437 tp!2393436))))

(assert (=> b!8001473 (= tp!2393422 e!4713693)))

(declare-fun b!8001648 () Bool)

(declare-fun tp!2393434 () Bool)

(declare-fun tp!2393435 () Bool)

(assert (=> b!8001648 (= e!4713693 (and tp!2393434 tp!2393435))))

(assert (= (and b!8001473 ((_ is ElementMatch!21591) (reg!21920 (reg!21920 r!24748)))) b!8001647))

(assert (= (and b!8001473 ((_ is Concat!30590) (reg!21920 (reg!21920 r!24748)))) b!8001648))

(assert (= (and b!8001473 ((_ is Star!21591) (reg!21920 (reg!21920 r!24748)))) b!8001649))

(assert (= (and b!8001473 ((_ is Union!21591) (reg!21920 (reg!21920 r!24748)))) b!8001650))

(declare-fun b!8001653 () Bool)

(declare-fun e!4713694 () Bool)

(declare-fun tp!2393443 () Bool)

(assert (=> b!8001653 (= e!4713694 tp!2393443)))

(declare-fun b!8001651 () Bool)

(assert (=> b!8001651 (= e!4713694 tp_is_empty!53725)))

(declare-fun b!8001654 () Bool)

(declare-fun tp!2393442 () Bool)

(declare-fun tp!2393441 () Bool)

(assert (=> b!8001654 (= e!4713694 (and tp!2393442 tp!2393441))))

(assert (=> b!8001472 (= tp!2393418 e!4713694)))

(declare-fun b!8001652 () Bool)

(declare-fun tp!2393439 () Bool)

(declare-fun tp!2393440 () Bool)

(assert (=> b!8001652 (= e!4713694 (and tp!2393439 tp!2393440))))

(assert (= (and b!8001472 ((_ is ElementMatch!21591) (regOne!43694 (reg!21920 r!24748)))) b!8001651))

(assert (= (and b!8001472 ((_ is Concat!30590) (regOne!43694 (reg!21920 r!24748)))) b!8001652))

(assert (= (and b!8001472 ((_ is Star!21591) (regOne!43694 (reg!21920 r!24748)))) b!8001653))

(assert (= (and b!8001472 ((_ is Union!21591) (regOne!43694 (reg!21920 r!24748)))) b!8001654))

(declare-fun b!8001657 () Bool)

(declare-fun e!4713695 () Bool)

(declare-fun tp!2393448 () Bool)

(assert (=> b!8001657 (= e!4713695 tp!2393448)))

(declare-fun b!8001655 () Bool)

(assert (=> b!8001655 (= e!4713695 tp_is_empty!53725)))

(declare-fun b!8001658 () Bool)

(declare-fun tp!2393447 () Bool)

(declare-fun tp!2393446 () Bool)

(assert (=> b!8001658 (= e!4713695 (and tp!2393447 tp!2393446))))

(assert (=> b!8001472 (= tp!2393419 e!4713695)))

(declare-fun b!8001656 () Bool)

(declare-fun tp!2393444 () Bool)

(declare-fun tp!2393445 () Bool)

(assert (=> b!8001656 (= e!4713695 (and tp!2393444 tp!2393445))))

(assert (= (and b!8001472 ((_ is ElementMatch!21591) (regTwo!43694 (reg!21920 r!24748)))) b!8001655))

(assert (= (and b!8001472 ((_ is Concat!30590) (regTwo!43694 (reg!21920 r!24748)))) b!8001656))

(assert (= (and b!8001472 ((_ is Star!21591) (regTwo!43694 (reg!21920 r!24748)))) b!8001657))

(assert (= (and b!8001472 ((_ is Union!21591) (regTwo!43694 (reg!21920 r!24748)))) b!8001658))

(declare-fun b!8001661 () Bool)

(declare-fun e!4713696 () Bool)

(declare-fun tp!2393453 () Bool)

(assert (=> b!8001661 (= e!4713696 tp!2393453)))

(declare-fun b!8001659 () Bool)

(assert (=> b!8001659 (= e!4713696 tp_is_empty!53725)))

(declare-fun b!8001662 () Bool)

(declare-fun tp!2393452 () Bool)

(declare-fun tp!2393451 () Bool)

(assert (=> b!8001662 (= e!4713696 (and tp!2393452 tp!2393451))))

(assert (=> b!8001453 (= tp!2393398 e!4713696)))

(declare-fun b!8001660 () Bool)

(declare-fun tp!2393449 () Bool)

(declare-fun tp!2393450 () Bool)

(assert (=> b!8001660 (= e!4713696 (and tp!2393449 tp!2393450))))

(assert (= (and b!8001453 ((_ is ElementMatch!21591) (regOne!43695 (regOne!43694 r!24748)))) b!8001659))

(assert (= (and b!8001453 ((_ is Concat!30590) (regOne!43695 (regOne!43694 r!24748)))) b!8001660))

(assert (= (and b!8001453 ((_ is Star!21591) (regOne!43695 (regOne!43694 r!24748)))) b!8001661))

(assert (= (and b!8001453 ((_ is Union!21591) (regOne!43695 (regOne!43694 r!24748)))) b!8001662))

(declare-fun b!8001665 () Bool)

(declare-fun e!4713697 () Bool)

(declare-fun tp!2393458 () Bool)

(assert (=> b!8001665 (= e!4713697 tp!2393458)))

(declare-fun b!8001663 () Bool)

(assert (=> b!8001663 (= e!4713697 tp_is_empty!53725)))

(declare-fun b!8001666 () Bool)

(declare-fun tp!2393457 () Bool)

(declare-fun tp!2393456 () Bool)

(assert (=> b!8001666 (= e!4713697 (and tp!2393457 tp!2393456))))

(assert (=> b!8001453 (= tp!2393397 e!4713697)))

(declare-fun b!8001664 () Bool)

(declare-fun tp!2393454 () Bool)

(declare-fun tp!2393455 () Bool)

(assert (=> b!8001664 (= e!4713697 (and tp!2393454 tp!2393455))))

(assert (= (and b!8001453 ((_ is ElementMatch!21591) (regTwo!43695 (regOne!43694 r!24748)))) b!8001663))

(assert (= (and b!8001453 ((_ is Concat!30590) (regTwo!43695 (regOne!43694 r!24748)))) b!8001664))

(assert (= (and b!8001453 ((_ is Star!21591) (regTwo!43695 (regOne!43694 r!24748)))) b!8001665))

(assert (= (and b!8001453 ((_ is Union!21591) (regTwo!43695 (regOne!43694 r!24748)))) b!8001666))

(declare-fun b!8001669 () Bool)

(declare-fun e!4713698 () Bool)

(declare-fun tp!2393463 () Bool)

(assert (=> b!8001669 (= e!4713698 tp!2393463)))

(declare-fun b!8001667 () Bool)

(assert (=> b!8001667 (= e!4713698 tp_is_empty!53725)))

(declare-fun b!8001670 () Bool)

(declare-fun tp!2393462 () Bool)

(declare-fun tp!2393461 () Bool)

(assert (=> b!8001670 (= e!4713698 (and tp!2393462 tp!2393461))))

(assert (=> b!8001457 (= tp!2393403 e!4713698)))

(declare-fun b!8001668 () Bool)

(declare-fun tp!2393459 () Bool)

(declare-fun tp!2393460 () Bool)

(assert (=> b!8001668 (= e!4713698 (and tp!2393459 tp!2393460))))

(assert (= (and b!8001457 ((_ is ElementMatch!21591) (regOne!43695 (regTwo!43694 r!24748)))) b!8001667))

(assert (= (and b!8001457 ((_ is Concat!30590) (regOne!43695 (regTwo!43694 r!24748)))) b!8001668))

(assert (= (and b!8001457 ((_ is Star!21591) (regOne!43695 (regTwo!43694 r!24748)))) b!8001669))

(assert (= (and b!8001457 ((_ is Union!21591) (regOne!43695 (regTwo!43694 r!24748)))) b!8001670))

(declare-fun b!8001673 () Bool)

(declare-fun e!4713699 () Bool)

(declare-fun tp!2393468 () Bool)

(assert (=> b!8001673 (= e!4713699 tp!2393468)))

(declare-fun b!8001671 () Bool)

(assert (=> b!8001671 (= e!4713699 tp_is_empty!53725)))

(declare-fun b!8001674 () Bool)

(declare-fun tp!2393467 () Bool)

(declare-fun tp!2393466 () Bool)

(assert (=> b!8001674 (= e!4713699 (and tp!2393467 tp!2393466))))

(assert (=> b!8001457 (= tp!2393402 e!4713699)))

(declare-fun b!8001672 () Bool)

(declare-fun tp!2393464 () Bool)

(declare-fun tp!2393465 () Bool)

(assert (=> b!8001672 (= e!4713699 (and tp!2393464 tp!2393465))))

(assert (= (and b!8001457 ((_ is ElementMatch!21591) (regTwo!43695 (regTwo!43694 r!24748)))) b!8001671))

(assert (= (and b!8001457 ((_ is Concat!30590) (regTwo!43695 (regTwo!43694 r!24748)))) b!8001672))

(assert (= (and b!8001457 ((_ is Star!21591) (regTwo!43695 (regTwo!43694 r!24748)))) b!8001673))

(assert (= (and b!8001457 ((_ is Union!21591) (regTwo!43695 (regTwo!43694 r!24748)))) b!8001674))

(declare-fun b!8001677 () Bool)

(declare-fun e!4713700 () Bool)

(declare-fun tp!2393473 () Bool)

(assert (=> b!8001677 (= e!4713700 tp!2393473)))

(declare-fun b!8001675 () Bool)

(assert (=> b!8001675 (= e!4713700 tp_is_empty!53725)))

(declare-fun b!8001678 () Bool)

(declare-fun tp!2393472 () Bool)

(declare-fun tp!2393471 () Bool)

(assert (=> b!8001678 (= e!4713700 (and tp!2393472 tp!2393471))))

(assert (=> b!8001452 (= tp!2393399 e!4713700)))

(declare-fun b!8001676 () Bool)

(declare-fun tp!2393469 () Bool)

(declare-fun tp!2393470 () Bool)

(assert (=> b!8001676 (= e!4713700 (and tp!2393469 tp!2393470))))

(assert (= (and b!8001452 ((_ is ElementMatch!21591) (reg!21920 (regOne!43694 r!24748)))) b!8001675))

(assert (= (and b!8001452 ((_ is Concat!30590) (reg!21920 (regOne!43694 r!24748)))) b!8001676))

(assert (= (and b!8001452 ((_ is Star!21591) (reg!21920 (regOne!43694 r!24748)))) b!8001677))

(assert (= (and b!8001452 ((_ is Union!21591) (reg!21920 (regOne!43694 r!24748)))) b!8001678))

(declare-fun b!8001681 () Bool)

(declare-fun e!4713701 () Bool)

(declare-fun tp!2393478 () Bool)

(assert (=> b!8001681 (= e!4713701 tp!2393478)))

(declare-fun b!8001679 () Bool)

(assert (=> b!8001679 (= e!4713701 tp_is_empty!53725)))

(declare-fun b!8001682 () Bool)

(declare-fun tp!2393477 () Bool)

(declare-fun tp!2393476 () Bool)

(assert (=> b!8001682 (= e!4713701 (and tp!2393477 tp!2393476))))

(assert (=> b!8001461 (= tp!2393408 e!4713701)))

(declare-fun b!8001680 () Bool)

(declare-fun tp!2393474 () Bool)

(declare-fun tp!2393475 () Bool)

(assert (=> b!8001680 (= e!4713701 (and tp!2393474 tp!2393475))))

(assert (= (and b!8001461 ((_ is ElementMatch!21591) (regOne!43695 (regOne!43695 r!24748)))) b!8001679))

(assert (= (and b!8001461 ((_ is Concat!30590) (regOne!43695 (regOne!43695 r!24748)))) b!8001680))

(assert (= (and b!8001461 ((_ is Star!21591) (regOne!43695 (regOne!43695 r!24748)))) b!8001681))

(assert (= (and b!8001461 ((_ is Union!21591) (regOne!43695 (regOne!43695 r!24748)))) b!8001682))

(declare-fun b!8001685 () Bool)

(declare-fun e!4713702 () Bool)

(declare-fun tp!2393483 () Bool)

(assert (=> b!8001685 (= e!4713702 tp!2393483)))

(declare-fun b!8001683 () Bool)

(assert (=> b!8001683 (= e!4713702 tp_is_empty!53725)))

(declare-fun b!8001686 () Bool)

(declare-fun tp!2393482 () Bool)

(declare-fun tp!2393481 () Bool)

(assert (=> b!8001686 (= e!4713702 (and tp!2393482 tp!2393481))))

(assert (=> b!8001461 (= tp!2393407 e!4713702)))

(declare-fun b!8001684 () Bool)

(declare-fun tp!2393479 () Bool)

(declare-fun tp!2393480 () Bool)

(assert (=> b!8001684 (= e!4713702 (and tp!2393479 tp!2393480))))

(assert (= (and b!8001461 ((_ is ElementMatch!21591) (regTwo!43695 (regOne!43695 r!24748)))) b!8001683))

(assert (= (and b!8001461 ((_ is Concat!30590) (regTwo!43695 (regOne!43695 r!24748)))) b!8001684))

(assert (= (and b!8001461 ((_ is Star!21591) (regTwo!43695 (regOne!43695 r!24748)))) b!8001685))

(assert (= (and b!8001461 ((_ is Union!21591) (regTwo!43695 (regOne!43695 r!24748)))) b!8001686))

(declare-fun b!8001689 () Bool)

(declare-fun e!4713703 () Bool)

(declare-fun tp!2393488 () Bool)

(assert (=> b!8001689 (= e!4713703 tp!2393488)))

(declare-fun b!8001687 () Bool)

(assert (=> b!8001687 (= e!4713703 tp_is_empty!53725)))

(declare-fun b!8001690 () Bool)

(declare-fun tp!2393487 () Bool)

(declare-fun tp!2393486 () Bool)

(assert (=> b!8001690 (= e!4713703 (and tp!2393487 tp!2393486))))

(assert (=> b!8001456 (= tp!2393404 e!4713703)))

(declare-fun b!8001688 () Bool)

(declare-fun tp!2393484 () Bool)

(declare-fun tp!2393485 () Bool)

(assert (=> b!8001688 (= e!4713703 (and tp!2393484 tp!2393485))))

(assert (= (and b!8001456 ((_ is ElementMatch!21591) (reg!21920 (regTwo!43694 r!24748)))) b!8001687))

(assert (= (and b!8001456 ((_ is Concat!30590) (reg!21920 (regTwo!43694 r!24748)))) b!8001688))

(assert (= (and b!8001456 ((_ is Star!21591) (reg!21920 (regTwo!43694 r!24748)))) b!8001689))

(assert (= (and b!8001456 ((_ is Union!21591) (reg!21920 (regTwo!43694 r!24748)))) b!8001690))

(declare-fun b!8001693 () Bool)

(declare-fun e!4713704 () Bool)

(declare-fun tp!2393493 () Bool)

(assert (=> b!8001693 (= e!4713704 tp!2393493)))

(declare-fun b!8001691 () Bool)

(assert (=> b!8001691 (= e!4713704 tp_is_empty!53725)))

(declare-fun b!8001694 () Bool)

(declare-fun tp!2393492 () Bool)

(declare-fun tp!2393491 () Bool)

(assert (=> b!8001694 (= e!4713704 (and tp!2393492 tp!2393491))))

(assert (=> b!8001465 (= tp!2393413 e!4713704)))

(declare-fun b!8001692 () Bool)

(declare-fun tp!2393489 () Bool)

(declare-fun tp!2393490 () Bool)

(assert (=> b!8001692 (= e!4713704 (and tp!2393489 tp!2393490))))

(assert (= (and b!8001465 ((_ is ElementMatch!21591) (regOne!43695 (regTwo!43695 r!24748)))) b!8001691))

(assert (= (and b!8001465 ((_ is Concat!30590) (regOne!43695 (regTwo!43695 r!24748)))) b!8001692))

(assert (= (and b!8001465 ((_ is Star!21591) (regOne!43695 (regTwo!43695 r!24748)))) b!8001693))

(assert (= (and b!8001465 ((_ is Union!21591) (regOne!43695 (regTwo!43695 r!24748)))) b!8001694))

(declare-fun b!8001697 () Bool)

(declare-fun e!4713705 () Bool)

(declare-fun tp!2393498 () Bool)

(assert (=> b!8001697 (= e!4713705 tp!2393498)))

(declare-fun b!8001695 () Bool)

(assert (=> b!8001695 (= e!4713705 tp_is_empty!53725)))

(declare-fun b!8001698 () Bool)

(declare-fun tp!2393497 () Bool)

(declare-fun tp!2393496 () Bool)

(assert (=> b!8001698 (= e!4713705 (and tp!2393497 tp!2393496))))

(assert (=> b!8001465 (= tp!2393412 e!4713705)))

(declare-fun b!8001696 () Bool)

(declare-fun tp!2393494 () Bool)

(declare-fun tp!2393495 () Bool)

(assert (=> b!8001696 (= e!4713705 (and tp!2393494 tp!2393495))))

(assert (= (and b!8001465 ((_ is ElementMatch!21591) (regTwo!43695 (regTwo!43695 r!24748)))) b!8001695))

(assert (= (and b!8001465 ((_ is Concat!30590) (regTwo!43695 (regTwo!43695 r!24748)))) b!8001696))

(assert (= (and b!8001465 ((_ is Star!21591) (regTwo!43695 (regTwo!43695 r!24748)))) b!8001697))

(assert (= (and b!8001465 ((_ is Union!21591) (regTwo!43695 (regTwo!43695 r!24748)))) b!8001698))

(declare-fun b!8001701 () Bool)

(declare-fun e!4713706 () Bool)

(declare-fun tp!2393503 () Bool)

(assert (=> b!8001701 (= e!4713706 tp!2393503)))

(declare-fun b!8001699 () Bool)

(assert (=> b!8001699 (= e!4713706 tp_is_empty!53725)))

(declare-fun b!8001702 () Bool)

(declare-fun tp!2393502 () Bool)

(declare-fun tp!2393501 () Bool)

(assert (=> b!8001702 (= e!4713706 (and tp!2393502 tp!2393501))))

(assert (=> b!8001451 (= tp!2393395 e!4713706)))

(declare-fun b!8001700 () Bool)

(declare-fun tp!2393499 () Bool)

(declare-fun tp!2393500 () Bool)

(assert (=> b!8001700 (= e!4713706 (and tp!2393499 tp!2393500))))

(assert (= (and b!8001451 ((_ is ElementMatch!21591) (regOne!43694 (regOne!43694 r!24748)))) b!8001699))

(assert (= (and b!8001451 ((_ is Concat!30590) (regOne!43694 (regOne!43694 r!24748)))) b!8001700))

(assert (= (and b!8001451 ((_ is Star!21591) (regOne!43694 (regOne!43694 r!24748)))) b!8001701))

(assert (= (and b!8001451 ((_ is Union!21591) (regOne!43694 (regOne!43694 r!24748)))) b!8001702))

(declare-fun b!8001705 () Bool)

(declare-fun e!4713707 () Bool)

(declare-fun tp!2393508 () Bool)

(assert (=> b!8001705 (= e!4713707 tp!2393508)))

(declare-fun b!8001703 () Bool)

(assert (=> b!8001703 (= e!4713707 tp_is_empty!53725)))

(declare-fun b!8001706 () Bool)

(declare-fun tp!2393507 () Bool)

(declare-fun tp!2393506 () Bool)

(assert (=> b!8001706 (= e!4713707 (and tp!2393507 tp!2393506))))

(assert (=> b!8001451 (= tp!2393396 e!4713707)))

(declare-fun b!8001704 () Bool)

(declare-fun tp!2393504 () Bool)

(declare-fun tp!2393505 () Bool)

(assert (=> b!8001704 (= e!4713707 (and tp!2393504 tp!2393505))))

(assert (= (and b!8001451 ((_ is ElementMatch!21591) (regTwo!43694 (regOne!43694 r!24748)))) b!8001703))

(assert (= (and b!8001451 ((_ is Concat!30590) (regTwo!43694 (regOne!43694 r!24748)))) b!8001704))

(assert (= (and b!8001451 ((_ is Star!21591) (regTwo!43694 (regOne!43694 r!24748)))) b!8001705))

(assert (= (and b!8001451 ((_ is Union!21591) (regTwo!43694 (regOne!43694 r!24748)))) b!8001706))

(declare-fun b!8001709 () Bool)

(declare-fun e!4713708 () Bool)

(declare-fun tp!2393513 () Bool)

(assert (=> b!8001709 (= e!4713708 tp!2393513)))

(declare-fun b!8001707 () Bool)

(assert (=> b!8001707 (= e!4713708 tp_is_empty!53725)))

(declare-fun b!8001710 () Bool)

(declare-fun tp!2393512 () Bool)

(declare-fun tp!2393511 () Bool)

(assert (=> b!8001710 (= e!4713708 (and tp!2393512 tp!2393511))))

(assert (=> b!8001460 (= tp!2393409 e!4713708)))

(declare-fun b!8001708 () Bool)

(declare-fun tp!2393509 () Bool)

(declare-fun tp!2393510 () Bool)

(assert (=> b!8001708 (= e!4713708 (and tp!2393509 tp!2393510))))

(assert (= (and b!8001460 ((_ is ElementMatch!21591) (reg!21920 (regOne!43695 r!24748)))) b!8001707))

(assert (= (and b!8001460 ((_ is Concat!30590) (reg!21920 (regOne!43695 r!24748)))) b!8001708))

(assert (= (and b!8001460 ((_ is Star!21591) (reg!21920 (regOne!43695 r!24748)))) b!8001709))

(assert (= (and b!8001460 ((_ is Union!21591) (reg!21920 (regOne!43695 r!24748)))) b!8001710))

(declare-fun b!8001713 () Bool)

(declare-fun e!4713709 () Bool)

(declare-fun tp!2393518 () Bool)

(assert (=> b!8001713 (= e!4713709 tp!2393518)))

(declare-fun b!8001711 () Bool)

(assert (=> b!8001711 (= e!4713709 tp_is_empty!53725)))

(declare-fun b!8001714 () Bool)

(declare-fun tp!2393517 () Bool)

(declare-fun tp!2393516 () Bool)

(assert (=> b!8001714 (= e!4713709 (and tp!2393517 tp!2393516))))

(assert (=> b!8001455 (= tp!2393400 e!4713709)))

(declare-fun b!8001712 () Bool)

(declare-fun tp!2393514 () Bool)

(declare-fun tp!2393515 () Bool)

(assert (=> b!8001712 (= e!4713709 (and tp!2393514 tp!2393515))))

(assert (= (and b!8001455 ((_ is ElementMatch!21591) (regOne!43694 (regTwo!43694 r!24748)))) b!8001711))

(assert (= (and b!8001455 ((_ is Concat!30590) (regOne!43694 (regTwo!43694 r!24748)))) b!8001712))

(assert (= (and b!8001455 ((_ is Star!21591) (regOne!43694 (regTwo!43694 r!24748)))) b!8001713))

(assert (= (and b!8001455 ((_ is Union!21591) (regOne!43694 (regTwo!43694 r!24748)))) b!8001714))

(declare-fun b!8001717 () Bool)

(declare-fun e!4713710 () Bool)

(declare-fun tp!2393523 () Bool)

(assert (=> b!8001717 (= e!4713710 tp!2393523)))

(declare-fun b!8001715 () Bool)

(assert (=> b!8001715 (= e!4713710 tp_is_empty!53725)))

(declare-fun b!8001718 () Bool)

(declare-fun tp!2393522 () Bool)

(declare-fun tp!2393521 () Bool)

(assert (=> b!8001718 (= e!4713710 (and tp!2393522 tp!2393521))))

(assert (=> b!8001455 (= tp!2393401 e!4713710)))

(declare-fun b!8001716 () Bool)

(declare-fun tp!2393519 () Bool)

(declare-fun tp!2393520 () Bool)

(assert (=> b!8001716 (= e!4713710 (and tp!2393519 tp!2393520))))

(assert (= (and b!8001455 ((_ is ElementMatch!21591) (regTwo!43694 (regTwo!43694 r!24748)))) b!8001715))

(assert (= (and b!8001455 ((_ is Concat!30590) (regTwo!43694 (regTwo!43694 r!24748)))) b!8001716))

(assert (= (and b!8001455 ((_ is Star!21591) (regTwo!43694 (regTwo!43694 r!24748)))) b!8001717))

(assert (= (and b!8001455 ((_ is Union!21591) (regTwo!43694 (regTwo!43694 r!24748)))) b!8001718))

(declare-fun b!8001721 () Bool)

(declare-fun e!4713711 () Bool)

(declare-fun tp!2393528 () Bool)

(assert (=> b!8001721 (= e!4713711 tp!2393528)))

(declare-fun b!8001719 () Bool)

(assert (=> b!8001719 (= e!4713711 tp_is_empty!53725)))

(declare-fun b!8001722 () Bool)

(declare-fun tp!2393527 () Bool)

(declare-fun tp!2393526 () Bool)

(assert (=> b!8001722 (= e!4713711 (and tp!2393527 tp!2393526))))

(assert (=> b!8001464 (= tp!2393414 e!4713711)))

(declare-fun b!8001720 () Bool)

(declare-fun tp!2393524 () Bool)

(declare-fun tp!2393525 () Bool)

(assert (=> b!8001720 (= e!4713711 (and tp!2393524 tp!2393525))))

(assert (= (and b!8001464 ((_ is ElementMatch!21591) (reg!21920 (regTwo!43695 r!24748)))) b!8001719))

(assert (= (and b!8001464 ((_ is Concat!30590) (reg!21920 (regTwo!43695 r!24748)))) b!8001720))

(assert (= (and b!8001464 ((_ is Star!21591) (reg!21920 (regTwo!43695 r!24748)))) b!8001721))

(assert (= (and b!8001464 ((_ is Union!21591) (reg!21920 (regTwo!43695 r!24748)))) b!8001722))

(declare-fun b!8001725 () Bool)

(declare-fun e!4713712 () Bool)

(declare-fun tp!2393533 () Bool)

(assert (=> b!8001725 (= e!4713712 tp!2393533)))

(declare-fun b!8001723 () Bool)

(assert (=> b!8001723 (= e!4713712 tp_is_empty!53725)))

(declare-fun b!8001726 () Bool)

(declare-fun tp!2393532 () Bool)

(declare-fun tp!2393531 () Bool)

(assert (=> b!8001726 (= e!4713712 (and tp!2393532 tp!2393531))))

(assert (=> b!8001459 (= tp!2393405 e!4713712)))

(declare-fun b!8001724 () Bool)

(declare-fun tp!2393529 () Bool)

(declare-fun tp!2393530 () Bool)

(assert (=> b!8001724 (= e!4713712 (and tp!2393529 tp!2393530))))

(assert (= (and b!8001459 ((_ is ElementMatch!21591) (regOne!43694 (regOne!43695 r!24748)))) b!8001723))

(assert (= (and b!8001459 ((_ is Concat!30590) (regOne!43694 (regOne!43695 r!24748)))) b!8001724))

(assert (= (and b!8001459 ((_ is Star!21591) (regOne!43694 (regOne!43695 r!24748)))) b!8001725))

(assert (= (and b!8001459 ((_ is Union!21591) (regOne!43694 (regOne!43695 r!24748)))) b!8001726))

(declare-fun b!8001729 () Bool)

(declare-fun e!4713713 () Bool)

(declare-fun tp!2393538 () Bool)

(assert (=> b!8001729 (= e!4713713 tp!2393538)))

(declare-fun b!8001727 () Bool)

(assert (=> b!8001727 (= e!4713713 tp_is_empty!53725)))

(declare-fun b!8001730 () Bool)

(declare-fun tp!2393537 () Bool)

(declare-fun tp!2393536 () Bool)

(assert (=> b!8001730 (= e!4713713 (and tp!2393537 tp!2393536))))

(assert (=> b!8001459 (= tp!2393406 e!4713713)))

(declare-fun b!8001728 () Bool)

(declare-fun tp!2393534 () Bool)

(declare-fun tp!2393535 () Bool)

(assert (=> b!8001728 (= e!4713713 (and tp!2393534 tp!2393535))))

(assert (= (and b!8001459 ((_ is ElementMatch!21591) (regTwo!43694 (regOne!43695 r!24748)))) b!8001727))

(assert (= (and b!8001459 ((_ is Concat!30590) (regTwo!43694 (regOne!43695 r!24748)))) b!8001728))

(assert (= (and b!8001459 ((_ is Star!21591) (regTwo!43694 (regOne!43695 r!24748)))) b!8001729))

(assert (= (and b!8001459 ((_ is Union!21591) (regTwo!43694 (regOne!43695 r!24748)))) b!8001730))

(declare-fun b!8001733 () Bool)

(declare-fun e!4713714 () Bool)

(declare-fun tp!2393543 () Bool)

(assert (=> b!8001733 (= e!4713714 tp!2393543)))

(declare-fun b!8001731 () Bool)

(assert (=> b!8001731 (= e!4713714 tp_is_empty!53725)))

(declare-fun b!8001734 () Bool)

(declare-fun tp!2393542 () Bool)

(declare-fun tp!2393541 () Bool)

(assert (=> b!8001734 (= e!4713714 (and tp!2393542 tp!2393541))))

(assert (=> b!8001463 (= tp!2393410 e!4713714)))

(declare-fun b!8001732 () Bool)

(declare-fun tp!2393539 () Bool)

(declare-fun tp!2393540 () Bool)

(assert (=> b!8001732 (= e!4713714 (and tp!2393539 tp!2393540))))

(assert (= (and b!8001463 ((_ is ElementMatch!21591) (regOne!43694 (regTwo!43695 r!24748)))) b!8001731))

(assert (= (and b!8001463 ((_ is Concat!30590) (regOne!43694 (regTwo!43695 r!24748)))) b!8001732))

(assert (= (and b!8001463 ((_ is Star!21591) (regOne!43694 (regTwo!43695 r!24748)))) b!8001733))

(assert (= (and b!8001463 ((_ is Union!21591) (regOne!43694 (regTwo!43695 r!24748)))) b!8001734))

(declare-fun b!8001737 () Bool)

(declare-fun e!4713715 () Bool)

(declare-fun tp!2393548 () Bool)

(assert (=> b!8001737 (= e!4713715 tp!2393548)))

(declare-fun b!8001735 () Bool)

(assert (=> b!8001735 (= e!4713715 tp_is_empty!53725)))

(declare-fun b!8001738 () Bool)

(declare-fun tp!2393547 () Bool)

(declare-fun tp!2393546 () Bool)

(assert (=> b!8001738 (= e!4713715 (and tp!2393547 tp!2393546))))

(assert (=> b!8001463 (= tp!2393411 e!4713715)))

(declare-fun b!8001736 () Bool)

(declare-fun tp!2393544 () Bool)

(declare-fun tp!2393545 () Bool)

(assert (=> b!8001736 (= e!4713715 (and tp!2393544 tp!2393545))))

(assert (= (and b!8001463 ((_ is ElementMatch!21591) (regTwo!43694 (regTwo!43695 r!24748)))) b!8001735))

(assert (= (and b!8001463 ((_ is Concat!30590) (regTwo!43694 (regTwo!43695 r!24748)))) b!8001736))

(assert (= (and b!8001463 ((_ is Star!21591) (regTwo!43694 (regTwo!43695 r!24748)))) b!8001737))

(assert (= (and b!8001463 ((_ is Union!21591) (regTwo!43694 (regTwo!43695 r!24748)))) b!8001738))

(check-sat (not b!8001645) (not d!2386762) (not bm!743419) (not bm!743430) (not d!2386776) (not b!8001674) (not b!8001646) (not bm!743387) (not d!2386796) (not b!8001582) (not b!8001724) (not b!8001681) (not b!8001488) (not bm!743401) (not b!8001630) (not bm!743428) (not b!8001734) (not b!8001517) (not bm!743397) (not b!8001672) (not b!8001664) (not b!8001527) (not b!8001484) (not b!8001490) (not bm!743409) (not b!8001618) (not b!8001520) (not d!2386760) (not bm!743431) (not b!8001660) (not b!8001537) (not d!2386790) (not b!8001689) (not b!8001658) (not b!8001662) (not b!8001496) (not d!2386732) (not b!8001656) (not d!2386756) (not bm!743427) (not bm!743399) (not bm!743392) (not b!8001654) (not b!8001552) (not b!8001652) (not d!2386780) (not b!8001650) (not b!8001690) (not b!8001560) (not bm!743407) (not d!2386804) (not b!8001595) (not b!8001697) (not bm!743421) (not bm!743395) (not d!2386774) (not b!8001710) (not b!8001693) (not b!8001601) (not b!8001680) (not b!8001726) (not d!2386746) (not bm!743389) (not b!8001682) (not bm!743415) (not b!8001709) (not b!8001684) (not b!8001685) (not b!8001720) (not b!8001521) (not b!8001730) (not b!8001738) (not b!8001702) (not bm!743388) (not b!8001712) (not b!8001666) (not b!8001610) (not b!8001657) (not b!8001476) (not b!8001503) (not b!8001642) (not b!8001736) (not b!8001713) (not bm!743425) (not b!8001696) (not bm!743424) (not b!8001508) (not b!8001514) (not b!8001676) (not b!8001649) (not b!8001698) (not b!8001732) (not d!2386752) (not b!8001641) (not b!8001665) (not bm!743418) (not b!8001729) (not b!8001706) (not d!2386764) (not d!2386744) (not b!8001638) (not b!8001661) (not b!8001733) (not b!8001701) (not bm!743404) (not bm!743408) (not b!8001716) (not b!8001653) (not b!8001621) (not bm!743433) (not b!8001737) (not b!8001497) (not bm!743414) (not b!8001688) (not bm!743405) (not b!8001692) (not b!8001728) (not b!8001673) (not bm!743394) (not b!8001493) (not b!8001700) (not bm!743434) (not bm!743411) (not b!8001670) (not b!8001705) (not d!2386730) (not b!8001669) (not b!8001512) (not b!8001573) (not b!8001648) (not b!8001677) (not b!8001644) (not bm!743390) (not b!8001721) (not b!8001714) (not b!8001718) (not b!8001543) tp_is_empty!53725 (not d!2386788) (not bm!743417) (not b!8001708) (not b!8001678) (not b!8001686) (not b!8001668) (not d!2386770) (not b!8001722) (not b!8001694) (not b!8001725) (not b!8001717) (not b!8001640) (not b!8001567) (not b!8001704))
(check-sat)
