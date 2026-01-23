; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752700 () Bool)

(assert start!752700)

(declare-fun b!7998535 () Bool)

(declare-fun e!4712199 () Bool)

(declare-fun tp_is_empty!53693 () Bool)

(assert (=> b!7998535 (= e!4712199 tp_is_empty!53693)))

(declare-fun res!3163574 () Bool)

(declare-fun e!4712203 () Bool)

(assert (=> start!752700 (=> (not res!3163574) (not e!4712203))))

(declare-datatypes ((C!43488 0))(
  ( (C!43489 (val!32292 Int)) )
))
(declare-datatypes ((Regex!21575 0))(
  ( (ElementMatch!21575 (c!1468560 C!43488)) (Concat!30574 (regOne!43662 Regex!21575) (regTwo!43662 Regex!21575)) (EmptyExpr!21575) (Star!21575 (reg!21904 Regex!21575)) (EmptyLang!21575) (Union!21575 (regOne!43663 Regex!21575) (regTwo!43663 Regex!21575)) )
))
(declare-fun baseR!141 () Regex!21575)

(declare-fun validRegex!11879 (Regex!21575) Bool)

(assert (=> start!752700 (= res!3163574 (validRegex!11879 baseR!141))))

(assert (=> start!752700 e!4712203))

(declare-fun e!4712201 () Bool)

(assert (=> start!752700 e!4712201))

(declare-fun e!4712200 () Bool)

(assert (=> start!752700 e!4712200))

(assert (=> start!752700 e!4712199))

(assert (=> start!752700 tp_is_empty!53693))

(declare-fun b!7998536 () Bool)

(declare-fun tp!2391962 () Bool)

(assert (=> b!7998536 (= e!4712199 tp!2391962)))

(declare-fun b!7998537 () Bool)

(declare-fun res!3163575 () Bool)

(assert (=> b!7998537 (=> (not res!3163575) (not e!4712203))))

(declare-datatypes ((List!74804 0))(
  ( (Nil!74680) (Cons!74680 (h!81128 C!43488) (t!390547 List!74804)) )
))
(declare-fun input!8036 () List!74804)

(get-info :version)

(assert (=> b!7998537 (= res!3163575 ((_ is Cons!74680) input!8036))))

(declare-fun b!7998538 () Bool)

(declare-fun res!3163578 () Bool)

(assert (=> b!7998538 (=> (not res!3163578) (not e!4712203))))

(declare-fun r!24786 () Regex!21575)

(declare-fun derivative!761 (Regex!21575 List!74804) Regex!21575)

(assert (=> b!7998538 (= res!3163578 (= (derivative!761 baseR!141 input!8036) r!24786))))

(declare-fun b!7998539 () Bool)

(declare-fun tp!2391968 () Bool)

(declare-fun tp!2391965 () Bool)

(assert (=> b!7998539 (= e!4712199 (and tp!2391968 tp!2391965))))

(declare-fun b!7998540 () Bool)

(declare-fun tp!2391963 () Bool)

(assert (=> b!7998540 (= e!4712201 tp!2391963)))

(declare-fun b!7998541 () Bool)

(declare-fun lt!2713549 () Regex!21575)

(declare-fun lt!2713547 () List!74804)

(declare-fun e!4712202 () Bool)

(declare-fun ++!18423 (List!74804 List!74804) List!74804)

(assert (=> b!7998541 (= e!4712202 (not (= (derivative!761 baseR!141 (++!18423 input!8036 lt!2713547)) lt!2713549)))))

(declare-fun lt!2713548 () Regex!21575)

(assert (=> b!7998541 (= lt!2713548 lt!2713549)))

(declare-fun c!12996 () C!43488)

(declare-fun derivativeStep!6590 (Regex!21575 C!43488) Regex!21575)

(assert (=> b!7998541 (= lt!2713549 (derivativeStep!6590 r!24786 c!12996))))

(declare-fun lt!2713551 () Regex!21575)

(assert (=> b!7998541 (= lt!2713548 (derivative!761 lt!2713551 (++!18423 (t!390547 input!8036) lt!2713547)))))

(assert (=> b!7998541 (= lt!2713547 (Cons!74680 c!12996 Nil!74680))))

(declare-datatypes ((Unit!170580 0))(
  ( (Unit!170581) )
))
(declare-fun lt!2713550 () Unit!170580)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!253 (Regex!21575 Regex!21575 List!74804 C!43488) Unit!170580)

(assert (=> b!7998541 (= lt!2713550 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!253 lt!2713551 r!24786 (t!390547 input!8036) c!12996))))

(declare-fun b!7998542 () Bool)

(assert (=> b!7998542 (= e!4712203 e!4712202)))

(declare-fun res!3163576 () Bool)

(assert (=> b!7998542 (=> (not res!3163576) (not e!4712202))))

(assert (=> b!7998542 (= res!3163576 (validRegex!11879 lt!2713551))))

(assert (=> b!7998542 (= lt!2713551 (derivativeStep!6590 baseR!141 (h!81128 input!8036)))))

(declare-fun b!7998543 () Bool)

(declare-fun tp!2391961 () Bool)

(declare-fun tp!2391966 () Bool)

(assert (=> b!7998543 (= e!4712201 (and tp!2391961 tp!2391966))))

(declare-fun b!7998544 () Bool)

(declare-fun tp!2391969 () Bool)

(declare-fun tp!2391967 () Bool)

(assert (=> b!7998544 (= e!4712199 (and tp!2391969 tp!2391967))))

(declare-fun b!7998545 () Bool)

(declare-fun tp!2391960 () Bool)

(declare-fun tp!2391970 () Bool)

(assert (=> b!7998545 (= e!4712201 (and tp!2391960 tp!2391970))))

(declare-fun b!7998546 () Bool)

(assert (=> b!7998546 (= e!4712201 tp_is_empty!53693)))

(declare-fun b!7998547 () Bool)

(declare-fun res!3163577 () Bool)

(assert (=> b!7998547 (=> (not res!3163577) (not e!4712202))))

(assert (=> b!7998547 (= res!3163577 (= (derivative!761 lt!2713551 (t!390547 input!8036)) r!24786))))

(declare-fun b!7998548 () Bool)

(declare-fun tp!2391964 () Bool)

(assert (=> b!7998548 (= e!4712200 (and tp_is_empty!53693 tp!2391964))))

(assert (= (and start!752700 res!3163574) b!7998538))

(assert (= (and b!7998538 res!3163578) b!7998537))

(assert (= (and b!7998537 res!3163575) b!7998542))

(assert (= (and b!7998542 res!3163576) b!7998547))

(assert (= (and b!7998547 res!3163577) b!7998541))

(assert (= (and start!752700 ((_ is ElementMatch!21575) baseR!141)) b!7998546))

(assert (= (and start!752700 ((_ is Concat!30574) baseR!141)) b!7998543))

(assert (= (and start!752700 ((_ is Star!21575) baseR!141)) b!7998540))

(assert (= (and start!752700 ((_ is Union!21575) baseR!141)) b!7998545))

(assert (= (and start!752700 ((_ is Cons!74680) input!8036)) b!7998548))

(assert (= (and start!752700 ((_ is ElementMatch!21575) r!24786)) b!7998535))

(assert (= (and start!752700 ((_ is Concat!30574) r!24786)) b!7998544))

(assert (= (and start!752700 ((_ is Star!21575) r!24786)) b!7998536))

(assert (= (and start!752700 ((_ is Union!21575) r!24786)) b!7998539))

(declare-fun m!8367620 () Bool)

(assert (=> b!7998547 m!8367620))

(declare-fun m!8367622 () Bool)

(assert (=> b!7998538 m!8367622))

(declare-fun m!8367624 () Bool)

(assert (=> start!752700 m!8367624))

(declare-fun m!8367626 () Bool)

(assert (=> b!7998541 m!8367626))

(assert (=> b!7998541 m!8367626))

(declare-fun m!8367628 () Bool)

(assert (=> b!7998541 m!8367628))

(declare-fun m!8367630 () Bool)

(assert (=> b!7998541 m!8367630))

(declare-fun m!8367632 () Bool)

(assert (=> b!7998541 m!8367632))

(assert (=> b!7998541 m!8367630))

(declare-fun m!8367634 () Bool)

(assert (=> b!7998541 m!8367634))

(declare-fun m!8367636 () Bool)

(assert (=> b!7998541 m!8367636))

(declare-fun m!8367638 () Bool)

(assert (=> b!7998542 m!8367638))

(declare-fun m!8367640 () Bool)

(assert (=> b!7998542 m!8367640))

(check-sat (not b!7998545) (not start!752700) (not b!7998541) (not b!7998543) (not b!7998538) (not b!7998540) (not b!7998547) (not b!7998542) (not b!7998536) (not b!7998539) tp_is_empty!53693 (not b!7998544) (not b!7998548))
(check-sat)
(get-model)

(declare-fun b!7998596 () Bool)

(declare-fun e!4712239 () Regex!21575)

(declare-fun e!4712238 () Regex!21575)

(assert (=> b!7998596 (= e!4712239 e!4712238)))

(declare-fun c!1468580 () Bool)

(assert (=> b!7998596 (= c!1468580 ((_ is Star!21575) r!24786))))

(declare-fun bm!742995 () Bool)

(declare-fun call!743003 () Regex!21575)

(declare-fun call!743000 () Regex!21575)

(assert (=> bm!742995 (= call!743003 call!743000)))

(declare-fun b!7998597 () Bool)

(declare-fun e!4712237 () Regex!21575)

(declare-fun call!743002 () Regex!21575)

(assert (=> b!7998597 (= e!4712237 (Union!21575 (Concat!30574 call!743003 (regTwo!43662 r!24786)) call!743002))))

(declare-fun b!7998598 () Bool)

(declare-fun e!4712236 () Regex!21575)

(declare-fun e!4712235 () Regex!21575)

(assert (=> b!7998598 (= e!4712236 e!4712235)))

(declare-fun c!1468577 () Bool)

(assert (=> b!7998598 (= c!1468577 ((_ is ElementMatch!21575) r!24786))))

(declare-fun b!7998599 () Bool)

(assert (=> b!7998599 (= e!4712235 (ite (= c!12996 (c!1468560 r!24786)) EmptyExpr!21575 EmptyLang!21575))))

(declare-fun bm!742996 () Bool)

(declare-fun c!1468579 () Bool)

(assert (=> bm!742996 (= call!743002 (derivativeStep!6590 (ite c!1468579 (regOne!43663 r!24786) (regTwo!43662 r!24786)) c!12996))))

(declare-fun b!7998600 () Bool)

(assert (=> b!7998600 (= c!1468579 ((_ is Union!21575) r!24786))))

(assert (=> b!7998600 (= e!4712235 e!4712239)))

(declare-fun b!7998601 () Bool)

(assert (=> b!7998601 (= e!4712237 (Union!21575 (Concat!30574 call!743003 (regTwo!43662 r!24786)) EmptyLang!21575))))

(declare-fun d!2386452 () Bool)

(declare-fun lt!2713554 () Regex!21575)

(assert (=> d!2386452 (validRegex!11879 lt!2713554)))

(assert (=> d!2386452 (= lt!2713554 e!4712236)))

(declare-fun c!1468578 () Bool)

(assert (=> d!2386452 (= c!1468578 (or ((_ is EmptyExpr!21575) r!24786) ((_ is EmptyLang!21575) r!24786)))))

(assert (=> d!2386452 (validRegex!11879 r!24786)))

(assert (=> d!2386452 (= (derivativeStep!6590 r!24786 c!12996) lt!2713554)))

(declare-fun b!7998602 () Bool)

(assert (=> b!7998602 (= e!4712236 EmptyLang!21575)))

(declare-fun b!7998603 () Bool)

(declare-fun call!743001 () Regex!21575)

(assert (=> b!7998603 (= e!4712239 (Union!21575 call!743002 call!743001))))

(declare-fun b!7998604 () Bool)

(assert (=> b!7998604 (= e!4712238 (Concat!30574 call!743000 r!24786))))

(declare-fun bm!742997 () Bool)

(assert (=> bm!742997 (= call!743001 (derivativeStep!6590 (ite c!1468579 (regTwo!43663 r!24786) (ite c!1468580 (reg!21904 r!24786) (regOne!43662 r!24786))) c!12996))))

(declare-fun b!7998605 () Bool)

(declare-fun c!1468581 () Bool)

(declare-fun nullable!9660 (Regex!21575) Bool)

(assert (=> b!7998605 (= c!1468581 (nullable!9660 (regOne!43662 r!24786)))))

(assert (=> b!7998605 (= e!4712238 e!4712237)))

(declare-fun bm!742998 () Bool)

(assert (=> bm!742998 (= call!743000 call!743001)))

(assert (= (and d!2386452 c!1468578) b!7998602))

(assert (= (and d!2386452 (not c!1468578)) b!7998598))

(assert (= (and b!7998598 c!1468577) b!7998599))

(assert (= (and b!7998598 (not c!1468577)) b!7998600))

(assert (= (and b!7998600 c!1468579) b!7998603))

(assert (= (and b!7998600 (not c!1468579)) b!7998596))

(assert (= (and b!7998596 c!1468580) b!7998604))

(assert (= (and b!7998596 (not c!1468580)) b!7998605))

(assert (= (and b!7998605 c!1468581) b!7998597))

(assert (= (and b!7998605 (not c!1468581)) b!7998601))

(assert (= (or b!7998597 b!7998601) bm!742995))

(assert (= (or b!7998604 bm!742995) bm!742998))

(assert (= (or b!7998603 bm!742998) bm!742997))

(assert (= (or b!7998603 b!7998597) bm!742996))

(declare-fun m!8367648 () Bool)

(assert (=> bm!742996 m!8367648))

(declare-fun m!8367650 () Bool)

(assert (=> d!2386452 m!8367650))

(declare-fun m!8367652 () Bool)

(assert (=> d!2386452 m!8367652))

(declare-fun m!8367654 () Bool)

(assert (=> bm!742997 m!8367654))

(declare-fun m!8367656 () Bool)

(assert (=> b!7998605 m!8367656))

(assert (=> b!7998541 d!2386452))

(declare-fun d!2386458 () Bool)

(declare-fun lt!2713560 () Regex!21575)

(assert (=> d!2386458 (validRegex!11879 lt!2713560)))

(declare-fun e!4712245 () Regex!21575)

(assert (=> d!2386458 (= lt!2713560 e!4712245)))

(declare-fun c!1468587 () Bool)

(assert (=> d!2386458 (= c!1468587 ((_ is Cons!74680) (++!18423 (t!390547 input!8036) lt!2713547)))))

(assert (=> d!2386458 (validRegex!11879 lt!2713551)))

(assert (=> d!2386458 (= (derivative!761 lt!2713551 (++!18423 (t!390547 input!8036) lt!2713547)) lt!2713560)))

(declare-fun b!7998616 () Bool)

(assert (=> b!7998616 (= e!4712245 (derivative!761 (derivativeStep!6590 lt!2713551 (h!81128 (++!18423 (t!390547 input!8036) lt!2713547))) (t!390547 (++!18423 (t!390547 input!8036) lt!2713547))))))

(declare-fun b!7998617 () Bool)

(assert (=> b!7998617 (= e!4712245 lt!2713551)))

(assert (= (and d!2386458 c!1468587) b!7998616))

(assert (= (and d!2386458 (not c!1468587)) b!7998617))

(declare-fun m!8367664 () Bool)

(assert (=> d!2386458 m!8367664))

(assert (=> d!2386458 m!8367638))

(declare-fun m!8367666 () Bool)

(assert (=> b!7998616 m!8367666))

(assert (=> b!7998616 m!8367666))

(declare-fun m!8367668 () Bool)

(assert (=> b!7998616 m!8367668))

(assert (=> b!7998541 d!2386458))

(declare-fun lt!2713565 () List!74804)

(declare-fun e!4712260 () Bool)

(declare-fun b!7998649 () Bool)

(assert (=> b!7998649 (= e!4712260 (or (not (= lt!2713547 Nil!74680)) (= lt!2713565 (t!390547 input!8036))))))

(declare-fun b!7998646 () Bool)

(declare-fun e!4712261 () List!74804)

(assert (=> b!7998646 (= e!4712261 lt!2713547)))

(declare-fun d!2386462 () Bool)

(assert (=> d!2386462 e!4712260))

(declare-fun res!3163599 () Bool)

(assert (=> d!2386462 (=> (not res!3163599) (not e!4712260))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15875 (List!74804) (InoxSet C!43488))

(assert (=> d!2386462 (= res!3163599 (= (content!15875 lt!2713565) ((_ map or) (content!15875 (t!390547 input!8036)) (content!15875 lt!2713547))))))

(assert (=> d!2386462 (= lt!2713565 e!4712261)))

(declare-fun c!1468600 () Bool)

(assert (=> d!2386462 (= c!1468600 ((_ is Nil!74680) (t!390547 input!8036)))))

(assert (=> d!2386462 (= (++!18423 (t!390547 input!8036) lt!2713547) lt!2713565)))

(declare-fun b!7998648 () Bool)

(declare-fun res!3163598 () Bool)

(assert (=> b!7998648 (=> (not res!3163598) (not e!4712260))))

(declare-fun size!43496 (List!74804) Int)

(assert (=> b!7998648 (= res!3163598 (= (size!43496 lt!2713565) (+ (size!43496 (t!390547 input!8036)) (size!43496 lt!2713547))))))

(declare-fun b!7998647 () Bool)

(assert (=> b!7998647 (= e!4712261 (Cons!74680 (h!81128 (t!390547 input!8036)) (++!18423 (t!390547 (t!390547 input!8036)) lt!2713547)))))

(assert (= (and d!2386462 c!1468600) b!7998646))

(assert (= (and d!2386462 (not c!1468600)) b!7998647))

(assert (= (and d!2386462 res!3163599) b!7998648))

(assert (= (and b!7998648 res!3163598) b!7998649))

(declare-fun m!8367670 () Bool)

(assert (=> d!2386462 m!8367670))

(declare-fun m!8367672 () Bool)

(assert (=> d!2386462 m!8367672))

(declare-fun m!8367674 () Bool)

(assert (=> d!2386462 m!8367674))

(declare-fun m!8367676 () Bool)

(assert (=> b!7998648 m!8367676))

(declare-fun m!8367678 () Bool)

(assert (=> b!7998648 m!8367678))

(declare-fun m!8367680 () Bool)

(assert (=> b!7998648 m!8367680))

(declare-fun m!8367682 () Bool)

(assert (=> b!7998647 m!8367682))

(assert (=> b!7998541 d!2386462))

(declare-fun d!2386464 () Bool)

(assert (=> d!2386464 (= (derivative!761 lt!2713551 (++!18423 (t!390547 input!8036) (Cons!74680 c!12996 Nil!74680))) (derivativeStep!6590 r!24786 c!12996))))

(declare-fun lt!2713569 () Unit!170580)

(declare-fun choose!60204 (Regex!21575 Regex!21575 List!74804 C!43488) Unit!170580)

(assert (=> d!2386464 (= lt!2713569 (choose!60204 lt!2713551 r!24786 (t!390547 input!8036) c!12996))))

(assert (=> d!2386464 (validRegex!11879 lt!2713551)))

(assert (=> d!2386464 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!253 lt!2713551 r!24786 (t!390547 input!8036) c!12996) lt!2713569)))

(declare-fun bs!1970533 () Bool)

(assert (= bs!1970533 d!2386464))

(declare-fun m!8367684 () Bool)

(assert (=> bs!1970533 m!8367684))

(assert (=> bs!1970533 m!8367638))

(assert (=> bs!1970533 m!8367636))

(declare-fun m!8367686 () Bool)

(assert (=> bs!1970533 m!8367686))

(assert (=> bs!1970533 m!8367686))

(declare-fun m!8367688 () Bool)

(assert (=> bs!1970533 m!8367688))

(assert (=> b!7998541 d!2386464))

(declare-fun d!2386466 () Bool)

(declare-fun lt!2713570 () Regex!21575)

(assert (=> d!2386466 (validRegex!11879 lt!2713570)))

(declare-fun e!4712267 () Regex!21575)

(assert (=> d!2386466 (= lt!2713570 e!4712267)))

(declare-fun c!1468607 () Bool)

(assert (=> d!2386466 (= c!1468607 ((_ is Cons!74680) (++!18423 input!8036 lt!2713547)))))

(assert (=> d!2386466 (validRegex!11879 baseR!141)))

(assert (=> d!2386466 (= (derivative!761 baseR!141 (++!18423 input!8036 lt!2713547)) lt!2713570)))

(declare-fun b!7998660 () Bool)

(assert (=> b!7998660 (= e!4712267 (derivative!761 (derivativeStep!6590 baseR!141 (h!81128 (++!18423 input!8036 lt!2713547))) (t!390547 (++!18423 input!8036 lt!2713547))))))

(declare-fun b!7998661 () Bool)

(assert (=> b!7998661 (= e!4712267 baseR!141)))

(assert (= (and d!2386466 c!1468607) b!7998660))

(assert (= (and d!2386466 (not c!1468607)) b!7998661))

(declare-fun m!8367700 () Bool)

(assert (=> d!2386466 m!8367700))

(assert (=> d!2386466 m!8367624))

(declare-fun m!8367702 () Bool)

(assert (=> b!7998660 m!8367702))

(assert (=> b!7998660 m!8367702))

(declare-fun m!8367704 () Bool)

(assert (=> b!7998660 m!8367704))

(assert (=> b!7998541 d!2386466))

(declare-fun e!4712268 () Bool)

(declare-fun lt!2713571 () List!74804)

(declare-fun b!7998665 () Bool)

(assert (=> b!7998665 (= e!4712268 (or (not (= lt!2713547 Nil!74680)) (= lt!2713571 input!8036)))))

(declare-fun b!7998662 () Bool)

(declare-fun e!4712269 () List!74804)

(assert (=> b!7998662 (= e!4712269 lt!2713547)))

(declare-fun d!2386470 () Bool)

(assert (=> d!2386470 e!4712268))

(declare-fun res!3163601 () Bool)

(assert (=> d!2386470 (=> (not res!3163601) (not e!4712268))))

(assert (=> d!2386470 (= res!3163601 (= (content!15875 lt!2713571) ((_ map or) (content!15875 input!8036) (content!15875 lt!2713547))))))

(assert (=> d!2386470 (= lt!2713571 e!4712269)))

(declare-fun c!1468608 () Bool)

(assert (=> d!2386470 (= c!1468608 ((_ is Nil!74680) input!8036))))

(assert (=> d!2386470 (= (++!18423 input!8036 lt!2713547) lt!2713571)))

(declare-fun b!7998664 () Bool)

(declare-fun res!3163600 () Bool)

(assert (=> b!7998664 (=> (not res!3163600) (not e!4712268))))

(assert (=> b!7998664 (= res!3163600 (= (size!43496 lt!2713571) (+ (size!43496 input!8036) (size!43496 lt!2713547))))))

(declare-fun b!7998663 () Bool)

(assert (=> b!7998663 (= e!4712269 (Cons!74680 (h!81128 input!8036) (++!18423 (t!390547 input!8036) lt!2713547)))))

(assert (= (and d!2386470 c!1468608) b!7998662))

(assert (= (and d!2386470 (not c!1468608)) b!7998663))

(assert (= (and d!2386470 res!3163601) b!7998664))

(assert (= (and b!7998664 res!3163600) b!7998665))

(declare-fun m!8367706 () Bool)

(assert (=> d!2386470 m!8367706))

(declare-fun m!8367708 () Bool)

(assert (=> d!2386470 m!8367708))

(assert (=> d!2386470 m!8367674))

(declare-fun m!8367710 () Bool)

(assert (=> b!7998664 m!8367710))

(declare-fun m!8367712 () Bool)

(assert (=> b!7998664 m!8367712))

(assert (=> b!7998664 m!8367680))

(assert (=> b!7998663 m!8367630))

(assert (=> b!7998541 d!2386470))

(declare-fun b!7998694 () Bool)

(declare-fun e!4712290 () Bool)

(declare-fun call!743024 () Bool)

(assert (=> b!7998694 (= e!4712290 call!743024)))

(declare-fun b!7998695 () Bool)

(declare-fun e!4712291 () Bool)

(declare-fun e!4712289 () Bool)

(assert (=> b!7998695 (= e!4712291 e!4712289)))

(declare-fun res!3163618 () Bool)

(assert (=> b!7998695 (=> (not res!3163618) (not e!4712289))))

(declare-fun call!743022 () Bool)

(assert (=> b!7998695 (= res!3163618 call!743022)))

(declare-fun b!7998696 () Bool)

(declare-fun e!4712294 () Bool)

(assert (=> b!7998696 (= e!4712294 call!743022)))

(declare-fun b!7998697 () Bool)

(declare-fun call!743023 () Bool)

(assert (=> b!7998697 (= e!4712289 call!743023)))

(declare-fun b!7998699 () Bool)

(declare-fun e!4712293 () Bool)

(assert (=> b!7998699 (= e!4712293 e!4712290)))

(declare-fun res!3163620 () Bool)

(assert (=> b!7998699 (= res!3163620 (not (nullable!9660 (reg!21904 lt!2713551))))))

(assert (=> b!7998699 (=> (not res!3163620) (not e!4712290))))

(declare-fun b!7998700 () Bool)

(declare-fun res!3163617 () Bool)

(assert (=> b!7998700 (=> (not res!3163617) (not e!4712294))))

(assert (=> b!7998700 (= res!3163617 call!743023)))

(declare-fun e!4712295 () Bool)

(assert (=> b!7998700 (= e!4712295 e!4712294)))

(declare-fun d!2386472 () Bool)

(declare-fun res!3163616 () Bool)

(declare-fun e!4712292 () Bool)

(assert (=> d!2386472 (=> res!3163616 e!4712292)))

(assert (=> d!2386472 (= res!3163616 ((_ is ElementMatch!21575) lt!2713551))))

(assert (=> d!2386472 (= (validRegex!11879 lt!2713551) e!4712292)))

(declare-fun b!7998698 () Bool)

(assert (=> b!7998698 (= e!4712292 e!4712293)))

(declare-fun c!1468618 () Bool)

(assert (=> b!7998698 (= c!1468618 ((_ is Star!21575) lt!2713551))))

(declare-fun b!7998701 () Bool)

(assert (=> b!7998701 (= e!4712293 e!4712295)))

(declare-fun c!1468617 () Bool)

(assert (=> b!7998701 (= c!1468617 ((_ is Union!21575) lt!2713551))))

(declare-fun bm!743017 () Bool)

(assert (=> bm!743017 (= call!743022 (validRegex!11879 (ite c!1468617 (regTwo!43663 lt!2713551) (regOne!43662 lt!2713551))))))

(declare-fun bm!743018 () Bool)

(assert (=> bm!743018 (= call!743023 call!743024)))

(declare-fun bm!743019 () Bool)

(assert (=> bm!743019 (= call!743024 (validRegex!11879 (ite c!1468618 (reg!21904 lt!2713551) (ite c!1468617 (regOne!43663 lt!2713551) (regTwo!43662 lt!2713551)))))))

(declare-fun b!7998702 () Bool)

(declare-fun res!3163619 () Bool)

(assert (=> b!7998702 (=> res!3163619 e!4712291)))

(assert (=> b!7998702 (= res!3163619 (not ((_ is Concat!30574) lt!2713551)))))

(assert (=> b!7998702 (= e!4712295 e!4712291)))

(assert (= (and d!2386472 (not res!3163616)) b!7998698))

(assert (= (and b!7998698 c!1468618) b!7998699))

(assert (= (and b!7998698 (not c!1468618)) b!7998701))

(assert (= (and b!7998699 res!3163620) b!7998694))

(assert (= (and b!7998701 c!1468617) b!7998700))

(assert (= (and b!7998701 (not c!1468617)) b!7998702))

(assert (= (and b!7998700 res!3163617) b!7998696))

(assert (= (and b!7998702 (not res!3163619)) b!7998695))

(assert (= (and b!7998695 res!3163618) b!7998697))

(assert (= (or b!7998700 b!7998697) bm!743018))

(assert (= (or b!7998696 b!7998695) bm!743017))

(assert (= (or b!7998694 bm!743018) bm!743019))

(declare-fun m!8367726 () Bool)

(assert (=> b!7998699 m!8367726))

(declare-fun m!8367728 () Bool)

(assert (=> bm!743017 m!8367728))

(declare-fun m!8367730 () Bool)

(assert (=> bm!743019 m!8367730))

(assert (=> b!7998542 d!2386472))

(declare-fun b!7998703 () Bool)

(declare-fun e!4712300 () Regex!21575)

(declare-fun e!4712299 () Regex!21575)

(assert (=> b!7998703 (= e!4712300 e!4712299)))

(declare-fun c!1468622 () Bool)

(assert (=> b!7998703 (= c!1468622 ((_ is Star!21575) baseR!141))))

(declare-fun bm!743020 () Bool)

(declare-fun call!743028 () Regex!21575)

(declare-fun call!743025 () Regex!21575)

(assert (=> bm!743020 (= call!743028 call!743025)))

(declare-fun e!4712298 () Regex!21575)

(declare-fun b!7998704 () Bool)

(declare-fun call!743027 () Regex!21575)

(assert (=> b!7998704 (= e!4712298 (Union!21575 (Concat!30574 call!743028 (regTwo!43662 baseR!141)) call!743027))))

(declare-fun b!7998705 () Bool)

(declare-fun e!4712297 () Regex!21575)

(declare-fun e!4712296 () Regex!21575)

(assert (=> b!7998705 (= e!4712297 e!4712296)))

(declare-fun c!1468619 () Bool)

(assert (=> b!7998705 (= c!1468619 ((_ is ElementMatch!21575) baseR!141))))

(declare-fun b!7998706 () Bool)

(assert (=> b!7998706 (= e!4712296 (ite (= (h!81128 input!8036) (c!1468560 baseR!141)) EmptyExpr!21575 EmptyLang!21575))))

(declare-fun bm!743021 () Bool)

(declare-fun c!1468621 () Bool)

(assert (=> bm!743021 (= call!743027 (derivativeStep!6590 (ite c!1468621 (regOne!43663 baseR!141) (regTwo!43662 baseR!141)) (h!81128 input!8036)))))

(declare-fun b!7998707 () Bool)

(assert (=> b!7998707 (= c!1468621 ((_ is Union!21575) baseR!141))))

(assert (=> b!7998707 (= e!4712296 e!4712300)))

(declare-fun b!7998708 () Bool)

(assert (=> b!7998708 (= e!4712298 (Union!21575 (Concat!30574 call!743028 (regTwo!43662 baseR!141)) EmptyLang!21575))))

(declare-fun d!2386478 () Bool)

(declare-fun lt!2713578 () Regex!21575)

(assert (=> d!2386478 (validRegex!11879 lt!2713578)))

(assert (=> d!2386478 (= lt!2713578 e!4712297)))

(declare-fun c!1468620 () Bool)

(assert (=> d!2386478 (= c!1468620 (or ((_ is EmptyExpr!21575) baseR!141) ((_ is EmptyLang!21575) baseR!141)))))

(assert (=> d!2386478 (validRegex!11879 baseR!141)))

(assert (=> d!2386478 (= (derivativeStep!6590 baseR!141 (h!81128 input!8036)) lt!2713578)))

(declare-fun b!7998709 () Bool)

(assert (=> b!7998709 (= e!4712297 EmptyLang!21575)))

(declare-fun b!7998710 () Bool)

(declare-fun call!743026 () Regex!21575)

(assert (=> b!7998710 (= e!4712300 (Union!21575 call!743027 call!743026))))

(declare-fun b!7998711 () Bool)

(assert (=> b!7998711 (= e!4712299 (Concat!30574 call!743025 baseR!141))))

(declare-fun bm!743022 () Bool)

(assert (=> bm!743022 (= call!743026 (derivativeStep!6590 (ite c!1468621 (regTwo!43663 baseR!141) (ite c!1468622 (reg!21904 baseR!141) (regOne!43662 baseR!141))) (h!81128 input!8036)))))

(declare-fun b!7998712 () Bool)

(declare-fun c!1468623 () Bool)

(assert (=> b!7998712 (= c!1468623 (nullable!9660 (regOne!43662 baseR!141)))))

(assert (=> b!7998712 (= e!4712299 e!4712298)))

(declare-fun bm!743023 () Bool)

(assert (=> bm!743023 (= call!743025 call!743026)))

(assert (= (and d!2386478 c!1468620) b!7998709))

(assert (= (and d!2386478 (not c!1468620)) b!7998705))

(assert (= (and b!7998705 c!1468619) b!7998706))

(assert (= (and b!7998705 (not c!1468619)) b!7998707))

(assert (= (and b!7998707 c!1468621) b!7998710))

(assert (= (and b!7998707 (not c!1468621)) b!7998703))

(assert (= (and b!7998703 c!1468622) b!7998711))

(assert (= (and b!7998703 (not c!1468622)) b!7998712))

(assert (= (and b!7998712 c!1468623) b!7998704))

(assert (= (and b!7998712 (not c!1468623)) b!7998708))

(assert (= (or b!7998704 b!7998708) bm!743020))

(assert (= (or b!7998711 bm!743020) bm!743023))

(assert (= (or b!7998710 bm!743023) bm!743022))

(assert (= (or b!7998710 b!7998704) bm!743021))

(declare-fun m!8367734 () Bool)

(assert (=> bm!743021 m!8367734))

(declare-fun m!8367738 () Bool)

(assert (=> d!2386478 m!8367738))

(assert (=> d!2386478 m!8367624))

(declare-fun m!8367748 () Bool)

(assert (=> bm!743022 m!8367748))

(declare-fun m!8367750 () Bool)

(assert (=> b!7998712 m!8367750))

(assert (=> b!7998542 d!2386478))

(declare-fun d!2386482 () Bool)

(declare-fun lt!2713581 () Regex!21575)

(assert (=> d!2386482 (validRegex!11879 lt!2713581)))

(declare-fun e!4712304 () Regex!21575)

(assert (=> d!2386482 (= lt!2713581 e!4712304)))

(declare-fun c!1468626 () Bool)

(assert (=> d!2386482 (= c!1468626 ((_ is Cons!74680) (t!390547 input!8036)))))

(assert (=> d!2386482 (validRegex!11879 lt!2713551)))

(assert (=> d!2386482 (= (derivative!761 lt!2713551 (t!390547 input!8036)) lt!2713581)))

(declare-fun b!7998719 () Bool)

(assert (=> b!7998719 (= e!4712304 (derivative!761 (derivativeStep!6590 lt!2713551 (h!81128 (t!390547 input!8036))) (t!390547 (t!390547 input!8036))))))

(declare-fun b!7998720 () Bool)

(assert (=> b!7998720 (= e!4712304 lt!2713551)))

(assert (= (and d!2386482 c!1468626) b!7998719))

(assert (= (and d!2386482 (not c!1468626)) b!7998720))

(declare-fun m!8367756 () Bool)

(assert (=> d!2386482 m!8367756))

(assert (=> d!2386482 m!8367638))

(declare-fun m!8367760 () Bool)

(assert (=> b!7998719 m!8367760))

(assert (=> b!7998719 m!8367760))

(declare-fun m!8367762 () Bool)

(assert (=> b!7998719 m!8367762))

(assert (=> b!7998547 d!2386482))

(declare-fun b!7998725 () Bool)

(declare-fun e!4712308 () Bool)

(declare-fun call!743031 () Bool)

(assert (=> b!7998725 (= e!4712308 call!743031)))

(declare-fun b!7998726 () Bool)

(declare-fun e!4712309 () Bool)

(declare-fun e!4712307 () Bool)

(assert (=> b!7998726 (= e!4712309 e!4712307)))

(declare-fun res!3163627 () Bool)

(assert (=> b!7998726 (=> (not res!3163627) (not e!4712307))))

(declare-fun call!743029 () Bool)

(assert (=> b!7998726 (= res!3163627 call!743029)))

(declare-fun b!7998727 () Bool)

(declare-fun e!4712312 () Bool)

(assert (=> b!7998727 (= e!4712312 call!743029)))

(declare-fun b!7998728 () Bool)

(declare-fun call!743030 () Bool)

(assert (=> b!7998728 (= e!4712307 call!743030)))

(declare-fun b!7998730 () Bool)

(declare-fun e!4712311 () Bool)

(assert (=> b!7998730 (= e!4712311 e!4712308)))

(declare-fun res!3163629 () Bool)

(assert (=> b!7998730 (= res!3163629 (not (nullable!9660 (reg!21904 baseR!141))))))

(assert (=> b!7998730 (=> (not res!3163629) (not e!4712308))))

(declare-fun b!7998731 () Bool)

(declare-fun res!3163626 () Bool)

(assert (=> b!7998731 (=> (not res!3163626) (not e!4712312))))

(assert (=> b!7998731 (= res!3163626 call!743030)))

(declare-fun e!4712313 () Bool)

(assert (=> b!7998731 (= e!4712313 e!4712312)))

(declare-fun d!2386486 () Bool)

(declare-fun res!3163625 () Bool)

(declare-fun e!4712310 () Bool)

(assert (=> d!2386486 (=> res!3163625 e!4712310)))

(assert (=> d!2386486 (= res!3163625 ((_ is ElementMatch!21575) baseR!141))))

(assert (=> d!2386486 (= (validRegex!11879 baseR!141) e!4712310)))

(declare-fun b!7998729 () Bool)

(assert (=> b!7998729 (= e!4712310 e!4712311)))

(declare-fun c!1468629 () Bool)

(assert (=> b!7998729 (= c!1468629 ((_ is Star!21575) baseR!141))))

(declare-fun b!7998732 () Bool)

(assert (=> b!7998732 (= e!4712311 e!4712313)))

(declare-fun c!1468628 () Bool)

(assert (=> b!7998732 (= c!1468628 ((_ is Union!21575) baseR!141))))

(declare-fun bm!743024 () Bool)

(assert (=> bm!743024 (= call!743029 (validRegex!11879 (ite c!1468628 (regTwo!43663 baseR!141) (regOne!43662 baseR!141))))))

(declare-fun bm!743025 () Bool)

(assert (=> bm!743025 (= call!743030 call!743031)))

(declare-fun bm!743026 () Bool)

(assert (=> bm!743026 (= call!743031 (validRegex!11879 (ite c!1468629 (reg!21904 baseR!141) (ite c!1468628 (regOne!43663 baseR!141) (regTwo!43662 baseR!141)))))))

(declare-fun b!7998733 () Bool)

(declare-fun res!3163628 () Bool)

(assert (=> b!7998733 (=> res!3163628 e!4712309)))

(assert (=> b!7998733 (= res!3163628 (not ((_ is Concat!30574) baseR!141)))))

(assert (=> b!7998733 (= e!4712313 e!4712309)))

(assert (= (and d!2386486 (not res!3163625)) b!7998729))

(assert (= (and b!7998729 c!1468629) b!7998730))

(assert (= (and b!7998729 (not c!1468629)) b!7998732))

(assert (= (and b!7998730 res!3163629) b!7998725))

(assert (= (and b!7998732 c!1468628) b!7998731))

(assert (= (and b!7998732 (not c!1468628)) b!7998733))

(assert (= (and b!7998731 res!3163626) b!7998727))

(assert (= (and b!7998733 (not res!3163628)) b!7998726))

(assert (= (and b!7998726 res!3163627) b!7998728))

(assert (= (or b!7998731 b!7998728) bm!743025))

(assert (= (or b!7998727 b!7998726) bm!743024))

(assert (= (or b!7998725 bm!743025) bm!743026))

(declare-fun m!8367778 () Bool)

(assert (=> b!7998730 m!8367778))

(declare-fun m!8367780 () Bool)

(assert (=> bm!743024 m!8367780))

(declare-fun m!8367782 () Bool)

(assert (=> bm!743026 m!8367782))

(assert (=> start!752700 d!2386486))

(declare-fun d!2386492 () Bool)

(declare-fun lt!2713584 () Regex!21575)

(assert (=> d!2386492 (validRegex!11879 lt!2713584)))

(declare-fun e!4712322 () Regex!21575)

(assert (=> d!2386492 (= lt!2713584 e!4712322)))

(declare-fun c!1468633 () Bool)

(assert (=> d!2386492 (= c!1468633 ((_ is Cons!74680) input!8036))))

(assert (=> d!2386492 (validRegex!11879 baseR!141)))

(assert (=> d!2386492 (= (derivative!761 baseR!141 input!8036) lt!2713584)))

(declare-fun b!7998745 () Bool)

(assert (=> b!7998745 (= e!4712322 (derivative!761 (derivativeStep!6590 baseR!141 (h!81128 input!8036)) (t!390547 input!8036)))))

(declare-fun b!7998746 () Bool)

(assert (=> b!7998746 (= e!4712322 baseR!141)))

(assert (= (and d!2386492 c!1468633) b!7998745))

(assert (= (and d!2386492 (not c!1468633)) b!7998746))

(declare-fun m!8367784 () Bool)

(assert (=> d!2386492 m!8367784))

(assert (=> d!2386492 m!8367624))

(assert (=> b!7998745 m!8367640))

(assert (=> b!7998745 m!8367640))

(declare-fun m!8367786 () Bool)

(assert (=> b!7998745 m!8367786))

(assert (=> b!7998538 d!2386492))

(declare-fun b!7998776 () Bool)

(declare-fun e!4712332 () Bool)

(declare-fun tp!2391989 () Bool)

(declare-fun tp!2391986 () Bool)

(assert (=> b!7998776 (= e!4712332 (and tp!2391989 tp!2391986))))

(declare-fun b!7998777 () Bool)

(declare-fun tp!2391988 () Bool)

(assert (=> b!7998777 (= e!4712332 tp!2391988)))

(declare-fun b!7998778 () Bool)

(declare-fun tp!2391987 () Bool)

(declare-fun tp!2391985 () Bool)

(assert (=> b!7998778 (= e!4712332 (and tp!2391987 tp!2391985))))

(assert (=> b!7998540 (= tp!2391963 e!4712332)))

(declare-fun b!7998775 () Bool)

(assert (=> b!7998775 (= e!4712332 tp_is_empty!53693)))

(assert (= (and b!7998540 ((_ is ElementMatch!21575) (reg!21904 baseR!141))) b!7998775))

(assert (= (and b!7998540 ((_ is Concat!30574) (reg!21904 baseR!141))) b!7998776))

(assert (= (and b!7998540 ((_ is Star!21575) (reg!21904 baseR!141))) b!7998777))

(assert (= (and b!7998540 ((_ is Union!21575) (reg!21904 baseR!141))) b!7998778))

(declare-fun b!7998782 () Bool)

(declare-fun e!4712333 () Bool)

(declare-fun tp!2392000 () Bool)

(declare-fun tp!2391997 () Bool)

(assert (=> b!7998782 (= e!4712333 (and tp!2392000 tp!2391997))))

(declare-fun b!7998783 () Bool)

(declare-fun tp!2391999 () Bool)

(assert (=> b!7998783 (= e!4712333 tp!2391999)))

(declare-fun b!7998784 () Bool)

(declare-fun tp!2391998 () Bool)

(declare-fun tp!2391996 () Bool)

(assert (=> b!7998784 (= e!4712333 (and tp!2391998 tp!2391996))))

(assert (=> b!7998545 (= tp!2391960 e!4712333)))

(declare-fun b!7998781 () Bool)

(assert (=> b!7998781 (= e!4712333 tp_is_empty!53693)))

(assert (= (and b!7998545 ((_ is ElementMatch!21575) (regOne!43663 baseR!141))) b!7998781))

(assert (= (and b!7998545 ((_ is Concat!30574) (regOne!43663 baseR!141))) b!7998782))

(assert (= (and b!7998545 ((_ is Star!21575) (regOne!43663 baseR!141))) b!7998783))

(assert (= (and b!7998545 ((_ is Union!21575) (regOne!43663 baseR!141))) b!7998784))

(declare-fun b!7998786 () Bool)

(declare-fun e!4712334 () Bool)

(declare-fun tp!2392005 () Bool)

(declare-fun tp!2392002 () Bool)

(assert (=> b!7998786 (= e!4712334 (and tp!2392005 tp!2392002))))

(declare-fun b!7998787 () Bool)

(declare-fun tp!2392004 () Bool)

(assert (=> b!7998787 (= e!4712334 tp!2392004)))

(declare-fun b!7998788 () Bool)

(declare-fun tp!2392003 () Bool)

(declare-fun tp!2392001 () Bool)

(assert (=> b!7998788 (= e!4712334 (and tp!2392003 tp!2392001))))

(assert (=> b!7998545 (= tp!2391970 e!4712334)))

(declare-fun b!7998785 () Bool)

(assert (=> b!7998785 (= e!4712334 tp_is_empty!53693)))

(assert (= (and b!7998545 ((_ is ElementMatch!21575) (regTwo!43663 baseR!141))) b!7998785))

(assert (= (and b!7998545 ((_ is Concat!30574) (regTwo!43663 baseR!141))) b!7998786))

(assert (= (and b!7998545 ((_ is Star!21575) (regTwo!43663 baseR!141))) b!7998787))

(assert (= (and b!7998545 ((_ is Union!21575) (regTwo!43663 baseR!141))) b!7998788))

(declare-fun b!7998790 () Bool)

(declare-fun e!4712335 () Bool)

(declare-fun tp!2392010 () Bool)

(declare-fun tp!2392007 () Bool)

(assert (=> b!7998790 (= e!4712335 (and tp!2392010 tp!2392007))))

(declare-fun b!7998791 () Bool)

(declare-fun tp!2392009 () Bool)

(assert (=> b!7998791 (= e!4712335 tp!2392009)))

(declare-fun b!7998792 () Bool)

(declare-fun tp!2392008 () Bool)

(declare-fun tp!2392006 () Bool)

(assert (=> b!7998792 (= e!4712335 (and tp!2392008 tp!2392006))))

(assert (=> b!7998536 (= tp!2391962 e!4712335)))

(declare-fun b!7998789 () Bool)

(assert (=> b!7998789 (= e!4712335 tp_is_empty!53693)))

(assert (= (and b!7998536 ((_ is ElementMatch!21575) (reg!21904 r!24786))) b!7998789))

(assert (= (and b!7998536 ((_ is Concat!30574) (reg!21904 r!24786))) b!7998790))

(assert (= (and b!7998536 ((_ is Star!21575) (reg!21904 r!24786))) b!7998791))

(assert (= (and b!7998536 ((_ is Union!21575) (reg!21904 r!24786))) b!7998792))

(declare-fun b!7998809 () Bool)

(declare-fun e!4712341 () Bool)

(declare-fun tp!2392028 () Bool)

(assert (=> b!7998809 (= e!4712341 (and tp_is_empty!53693 tp!2392028))))

(assert (=> b!7998548 (= tp!2391964 e!4712341)))

(assert (= (and b!7998548 ((_ is Cons!74680) (t!390547 input!8036))) b!7998809))

(declare-fun b!7998815 () Bool)

(declare-fun e!4712343 () Bool)

(declare-fun tp!2392038 () Bool)

(declare-fun tp!2392035 () Bool)

(assert (=> b!7998815 (= e!4712343 (and tp!2392038 tp!2392035))))

(declare-fun b!7998816 () Bool)

(declare-fun tp!2392037 () Bool)

(assert (=> b!7998816 (= e!4712343 tp!2392037)))

(declare-fun b!7998817 () Bool)

(declare-fun tp!2392036 () Bool)

(declare-fun tp!2392034 () Bool)

(assert (=> b!7998817 (= e!4712343 (and tp!2392036 tp!2392034))))

(assert (=> b!7998543 (= tp!2391961 e!4712343)))

(declare-fun b!7998814 () Bool)

(assert (=> b!7998814 (= e!4712343 tp_is_empty!53693)))

(assert (= (and b!7998543 ((_ is ElementMatch!21575) (regOne!43662 baseR!141))) b!7998814))

(assert (= (and b!7998543 ((_ is Concat!30574) (regOne!43662 baseR!141))) b!7998815))

(assert (= (and b!7998543 ((_ is Star!21575) (regOne!43662 baseR!141))) b!7998816))

(assert (= (and b!7998543 ((_ is Union!21575) (regOne!43662 baseR!141))) b!7998817))

(declare-fun b!7998823 () Bool)

(declare-fun e!4712346 () Bool)

(declare-fun tp!2392045 () Bool)

(declare-fun tp!2392042 () Bool)

(assert (=> b!7998823 (= e!4712346 (and tp!2392045 tp!2392042))))

(declare-fun b!7998824 () Bool)

(declare-fun tp!2392044 () Bool)

(assert (=> b!7998824 (= e!4712346 tp!2392044)))

(declare-fun b!7998825 () Bool)

(declare-fun tp!2392043 () Bool)

(declare-fun tp!2392041 () Bool)

(assert (=> b!7998825 (= e!4712346 (and tp!2392043 tp!2392041))))

(assert (=> b!7998543 (= tp!2391966 e!4712346)))

(declare-fun b!7998822 () Bool)

(assert (=> b!7998822 (= e!4712346 tp_is_empty!53693)))

(assert (= (and b!7998543 ((_ is ElementMatch!21575) (regTwo!43662 baseR!141))) b!7998822))

(assert (= (and b!7998543 ((_ is Concat!30574) (regTwo!43662 baseR!141))) b!7998823))

(assert (= (and b!7998543 ((_ is Star!21575) (regTwo!43662 baseR!141))) b!7998824))

(assert (= (and b!7998543 ((_ is Union!21575) (regTwo!43662 baseR!141))) b!7998825))

(declare-fun b!7998828 () Bool)

(declare-fun e!4712348 () Bool)

(declare-fun tp!2392051 () Bool)

(declare-fun tp!2392048 () Bool)

(assert (=> b!7998828 (= e!4712348 (and tp!2392051 tp!2392048))))

(declare-fun b!7998829 () Bool)

(declare-fun tp!2392050 () Bool)

(assert (=> b!7998829 (= e!4712348 tp!2392050)))

(declare-fun b!7998830 () Bool)

(declare-fun tp!2392049 () Bool)

(declare-fun tp!2392047 () Bool)

(assert (=> b!7998830 (= e!4712348 (and tp!2392049 tp!2392047))))

(assert (=> b!7998544 (= tp!2391969 e!4712348)))

(declare-fun b!7998827 () Bool)

(assert (=> b!7998827 (= e!4712348 tp_is_empty!53693)))

(assert (= (and b!7998544 ((_ is ElementMatch!21575) (regOne!43662 r!24786))) b!7998827))

(assert (= (and b!7998544 ((_ is Concat!30574) (regOne!43662 r!24786))) b!7998828))

(assert (= (and b!7998544 ((_ is Star!21575) (regOne!43662 r!24786))) b!7998829))

(assert (= (and b!7998544 ((_ is Union!21575) (regOne!43662 r!24786))) b!7998830))

(declare-fun b!7998836 () Bool)

(declare-fun e!4712350 () Bool)

(declare-fun tp!2392061 () Bool)

(declare-fun tp!2392058 () Bool)

(assert (=> b!7998836 (= e!4712350 (and tp!2392061 tp!2392058))))

(declare-fun b!7998837 () Bool)

(declare-fun tp!2392060 () Bool)

(assert (=> b!7998837 (= e!4712350 tp!2392060)))

(declare-fun b!7998838 () Bool)

(declare-fun tp!2392059 () Bool)

(declare-fun tp!2392057 () Bool)

(assert (=> b!7998838 (= e!4712350 (and tp!2392059 tp!2392057))))

(assert (=> b!7998544 (= tp!2391967 e!4712350)))

(declare-fun b!7998835 () Bool)

(assert (=> b!7998835 (= e!4712350 tp_is_empty!53693)))

(assert (= (and b!7998544 ((_ is ElementMatch!21575) (regTwo!43662 r!24786))) b!7998835))

(assert (= (and b!7998544 ((_ is Concat!30574) (regTwo!43662 r!24786))) b!7998836))

(assert (= (and b!7998544 ((_ is Star!21575) (regTwo!43662 r!24786))) b!7998837))

(assert (= (and b!7998544 ((_ is Union!21575) (regTwo!43662 r!24786))) b!7998838))

(declare-fun b!7998844 () Bool)

(declare-fun e!4712352 () Bool)

(declare-fun tp!2392074 () Bool)

(declare-fun tp!2392068 () Bool)

(assert (=> b!7998844 (= e!4712352 (and tp!2392074 tp!2392068))))

(declare-fun b!7998845 () Bool)

(declare-fun tp!2392072 () Bool)

(assert (=> b!7998845 (= e!4712352 tp!2392072)))

(declare-fun b!7998847 () Bool)

(declare-fun tp!2392069 () Bool)

(declare-fun tp!2392067 () Bool)

(assert (=> b!7998847 (= e!4712352 (and tp!2392069 tp!2392067))))

(assert (=> b!7998539 (= tp!2391968 e!4712352)))

(declare-fun b!7998843 () Bool)

(assert (=> b!7998843 (= e!4712352 tp_is_empty!53693)))

(assert (= (and b!7998539 ((_ is ElementMatch!21575) (regOne!43663 r!24786))) b!7998843))

(assert (= (and b!7998539 ((_ is Concat!30574) (regOne!43663 r!24786))) b!7998844))

(assert (= (and b!7998539 ((_ is Star!21575) (regOne!43663 r!24786))) b!7998845))

(assert (= (and b!7998539 ((_ is Union!21575) (regOne!43663 r!24786))) b!7998847))

(declare-fun b!7998856 () Bool)

(declare-fun e!4712355 () Bool)

(declare-fun tp!2392086 () Bool)

(declare-fun tp!2392083 () Bool)

(assert (=> b!7998856 (= e!4712355 (and tp!2392086 tp!2392083))))

(declare-fun b!7998857 () Bool)

(declare-fun tp!2392085 () Bool)

(assert (=> b!7998857 (= e!4712355 tp!2392085)))

(declare-fun b!7998858 () Bool)

(declare-fun tp!2392084 () Bool)

(declare-fun tp!2392082 () Bool)

(assert (=> b!7998858 (= e!4712355 (and tp!2392084 tp!2392082))))

(assert (=> b!7998539 (= tp!2391965 e!4712355)))

(declare-fun b!7998855 () Bool)

(assert (=> b!7998855 (= e!4712355 tp_is_empty!53693)))

(assert (= (and b!7998539 ((_ is ElementMatch!21575) (regTwo!43663 r!24786))) b!7998855))

(assert (= (and b!7998539 ((_ is Concat!30574) (regTwo!43663 r!24786))) b!7998856))

(assert (= (and b!7998539 ((_ is Star!21575) (regTwo!43663 r!24786))) b!7998857))

(assert (= (and b!7998539 ((_ is Union!21575) (regTwo!43663 r!24786))) b!7998858))

(check-sat (not bm!743024) (not b!7998784) (not b!7998836) (not b!7998663) (not b!7998838) (not b!7998786) (not d!2386458) (not b!7998788) (not bm!743017) (not b!7998782) (not b!7998828) (not bm!743022) (not b!7998856) (not b!7998605) (not b!7998660) (not b!7998783) (not b!7998778) (not b!7998776) (not b!7998845) (not bm!743021) (not b!7998745) (not b!7998792) (not b!7998817) (not b!7998809) (not b!7998648) (not b!7998730) (not b!7998830) (not d!2386464) (not b!7998824) (not b!7998777) (not b!7998815) (not b!7998858) (not b!7998790) (not b!7998791) (not bm!742996) (not bm!743026) (not b!7998823) (not b!7998719) (not d!2386466) (not b!7998837) tp_is_empty!53693 (not b!7998825) (not d!2386482) (not d!2386452) (not b!7998712) (not b!7998699) (not b!7998616) (not b!7998816) (not d!2386492) (not b!7998844) (not d!2386462) (not d!2386470) (not bm!743019) (not b!7998787) (not b!7998847) (not b!7998664) (not bm!742997) (not b!7998857) (not b!7998829) (not b!7998647) (not d!2386478))
(check-sat)
