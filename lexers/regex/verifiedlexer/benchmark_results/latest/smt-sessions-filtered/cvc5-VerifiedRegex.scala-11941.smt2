; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668508 () Bool)

(assert start!668508)

(declare-fun b!6971588 () Bool)

(declare-fun e!4190536 () Bool)

(declare-fun tp_is_empty!43481 () Bool)

(assert (=> b!6971588 (= e!4190536 tp_is_empty!43481)))

(declare-fun b!6971589 () Bool)

(declare-fun tp!1924227 () Bool)

(assert (=> b!6971589 (= e!4190536 tp!1924227)))

(declare-fun b!6971590 () Bool)

(declare-fun e!4190537 () Bool)

(declare-datatypes ((C!34526 0))(
  ( (C!34527 (val!26965 Int)) )
))
(declare-datatypes ((Regex!17128 0))(
  ( (ElementMatch!17128 (c!1292356 C!34526)) (Concat!25973 (regOne!34768 Regex!17128) (regTwo!34768 Regex!17128)) (EmptyExpr!17128) (Star!17128 (reg!17457 Regex!17128)) (EmptyLang!17128) (Union!17128 (regOne!34769 Regex!17128) (regTwo!34769 Regex!17128)) )
))
(declare-fun r!13765 () Regex!17128)

(declare-datatypes ((List!66937 0))(
  ( (Nil!66813) (Cons!66813 (h!73261 Regex!17128) (t!380680 List!66937)) )
))
(declare-fun lt!2479653 () List!66937)

(declare-fun generalisedUnion!2603 (List!66937) Regex!17128)

(assert (=> b!6971590 (= e!4190537 (= (regTwo!34769 r!13765) (generalisedUnion!2603 lt!2479653)))))

(declare-fun b!6971591 () Bool)

(declare-fun tp!1924224 () Bool)

(declare-fun tp!1924223 () Bool)

(assert (=> b!6971591 (= e!4190536 (and tp!1924224 tp!1924223))))

(declare-fun b!6971592 () Bool)

(declare-fun res!2843548 () Bool)

(declare-fun e!4190532 () Bool)

(assert (=> b!6971592 (=> res!2843548 e!4190532)))

(declare-fun l!9142 () List!66937)

(declare-fun isEmpty!39016 (List!66937) Bool)

(assert (=> b!6971592 (= res!2843548 (isEmpty!39016 l!9142))))

(declare-fun b!6971593 () Bool)

(declare-fun res!2843544 () Bool)

(declare-fun e!4190535 () Bool)

(assert (=> b!6971593 (=> (not res!2843544) (not e!4190535))))

(assert (=> b!6971593 (= res!2843544 (= r!13765 (generalisedUnion!2603 l!9142)))))

(declare-fun b!6971594 () Bool)

(declare-fun e!4190534 () Bool)

(declare-datatypes ((List!66938 0))(
  ( (Nil!66814) (Cons!66814 (h!73262 C!34526) (t!380681 List!66938)) )
))
(declare-fun s!9351 () List!66938)

(declare-fun matchRSpec!4145 (Regex!17128 List!66938) Bool)

(assert (=> b!6971594 (= e!4190534 (matchRSpec!4145 (regTwo!34769 r!13765) s!9351))))

(declare-fun b!6971595 () Bool)

(assert (=> b!6971595 (= e!4190535 (not e!4190532))))

(declare-fun res!2843547 () Bool)

(assert (=> b!6971595 (=> res!2843547 e!4190532)))

(assert (=> b!6971595 (= res!2843547 (not (is-Union!17128 r!13765)))))

(declare-fun lt!2479654 () Bool)

(assert (=> b!6971595 (= lt!2479654 (matchRSpec!4145 r!13765 s!9351))))

(declare-fun matchR!9230 (Regex!17128 List!66938) Bool)

(assert (=> b!6971595 (= lt!2479654 (matchR!9230 r!13765 s!9351))))

(declare-datatypes ((Unit!160908 0))(
  ( (Unit!160909) )
))
(declare-fun lt!2479655 () Unit!160908)

(declare-fun mainMatchTheorem!4139 (Regex!17128 List!66938) Unit!160908)

(assert (=> b!6971595 (= lt!2479655 (mainMatchTheorem!4139 r!13765 s!9351))))

(declare-fun res!2843550 () Bool)

(assert (=> start!668508 (=> (not res!2843550) (not e!4190535))))

(declare-fun lambda!397727 () Int)

(declare-fun forall!15999 (List!66937 Int) Bool)

(assert (=> start!668508 (= res!2843550 (forall!15999 l!9142 lambda!397727))))

(assert (=> start!668508 e!4190535))

(declare-fun e!4190531 () Bool)

(assert (=> start!668508 e!4190531))

(assert (=> start!668508 e!4190536))

(declare-fun e!4190538 () Bool)

(assert (=> start!668508 e!4190538))

(declare-fun b!6971596 () Bool)

(declare-fun tp!1924222 () Bool)

(declare-fun tp!1924225 () Bool)

(assert (=> b!6971596 (= e!4190536 (and tp!1924222 tp!1924225))))

(declare-fun b!6971597 () Bool)

(declare-fun e!4190539 () Bool)

(assert (=> b!6971597 (= e!4190532 e!4190539)))

(declare-fun res!2843549 () Bool)

(assert (=> b!6971597 (=> res!2843549 e!4190539)))

(assert (=> b!6971597 (= res!2843549 (isEmpty!39016 lt!2479653))))

(declare-fun tail!13096 (List!66937) List!66937)

(assert (=> b!6971597 (= lt!2479653 (tail!13096 l!9142))))

(declare-fun b!6971598 () Bool)

(declare-fun e!4190533 () Bool)

(assert (=> b!6971598 (= e!4190533 e!4190537)))

(declare-fun res!2843545 () Bool)

(assert (=> b!6971598 (=> res!2843545 e!4190537)))

(assert (=> b!6971598 (= res!2843545 (not (forall!15999 lt!2479653 lambda!397727)))))

(assert (=> b!6971598 (= (matchR!9230 (regTwo!34769 r!13765) s!9351) (matchRSpec!4145 (regTwo!34769 r!13765) s!9351))))

(declare-fun lt!2479652 () Unit!160908)

(assert (=> b!6971598 (= lt!2479652 (mainMatchTheorem!4139 (regTwo!34769 r!13765) s!9351))))

(declare-fun lt!2479657 () Bool)

(assert (=> b!6971598 (= (matchR!9230 (regOne!34769 r!13765) s!9351) lt!2479657)))

(declare-fun lt!2479656 () Unit!160908)

(assert (=> b!6971598 (= lt!2479656 (mainMatchTheorem!4139 (regOne!34769 r!13765) s!9351))))

(declare-fun b!6971599 () Bool)

(declare-fun tp!1924228 () Bool)

(assert (=> b!6971599 (= e!4190538 (and tp_is_empty!43481 tp!1924228))))

(declare-fun b!6971600 () Bool)

(assert (=> b!6971600 (= e!4190539 e!4190533)))

(declare-fun res!2843543 () Bool)

(assert (=> b!6971600 (=> res!2843543 e!4190533)))

(assert (=> b!6971600 (= res!2843543 (not (= lt!2479654 e!4190534)))))

(declare-fun res!2843546 () Bool)

(assert (=> b!6971600 (=> res!2843546 e!4190534)))

(assert (=> b!6971600 (= res!2843546 lt!2479657)))

(assert (=> b!6971600 (= lt!2479657 (matchRSpec!4145 (regOne!34769 r!13765) s!9351))))

(declare-fun b!6971601 () Bool)

(declare-fun tp!1924226 () Bool)

(declare-fun tp!1924229 () Bool)

(assert (=> b!6971601 (= e!4190531 (and tp!1924226 tp!1924229))))

(assert (= (and start!668508 res!2843550) b!6971593))

(assert (= (and b!6971593 res!2843544) b!6971595))

(assert (= (and b!6971595 (not res!2843547)) b!6971592))

(assert (= (and b!6971592 (not res!2843548)) b!6971597))

(assert (= (and b!6971597 (not res!2843549)) b!6971600))

(assert (= (and b!6971600 (not res!2843546)) b!6971594))

(assert (= (and b!6971600 (not res!2843543)) b!6971598))

(assert (= (and b!6971598 (not res!2843545)) b!6971590))

(assert (= (and start!668508 (is-Cons!66813 l!9142)) b!6971601))

(assert (= (and start!668508 (is-ElementMatch!17128 r!13765)) b!6971588))

(assert (= (and start!668508 (is-Concat!25973 r!13765)) b!6971591))

(assert (= (and start!668508 (is-Star!17128 r!13765)) b!6971589))

(assert (= (and start!668508 (is-Union!17128 r!13765)) b!6971596))

(assert (= (and start!668508 (is-Cons!66814 s!9351)) b!6971599))

(declare-fun m!7659952 () Bool)

(assert (=> b!6971597 m!7659952))

(declare-fun m!7659954 () Bool)

(assert (=> b!6971597 m!7659954))

(declare-fun m!7659956 () Bool)

(assert (=> b!6971600 m!7659956))

(declare-fun m!7659958 () Bool)

(assert (=> b!6971595 m!7659958))

(declare-fun m!7659960 () Bool)

(assert (=> b!6971595 m!7659960))

(declare-fun m!7659962 () Bool)

(assert (=> b!6971595 m!7659962))

(declare-fun m!7659964 () Bool)

(assert (=> b!6971592 m!7659964))

(declare-fun m!7659966 () Bool)

(assert (=> b!6971593 m!7659966))

(declare-fun m!7659968 () Bool)

(assert (=> start!668508 m!7659968))

(declare-fun m!7659970 () Bool)

(assert (=> b!6971590 m!7659970))

(declare-fun m!7659972 () Bool)

(assert (=> b!6971598 m!7659972))

(declare-fun m!7659974 () Bool)

(assert (=> b!6971598 m!7659974))

(declare-fun m!7659976 () Bool)

(assert (=> b!6971598 m!7659976))

(declare-fun m!7659978 () Bool)

(assert (=> b!6971598 m!7659978))

(declare-fun m!7659980 () Bool)

(assert (=> b!6971598 m!7659980))

(declare-fun m!7659982 () Bool)

(assert (=> b!6971598 m!7659982))

(assert (=> b!6971594 m!7659982))

(push 1)

(assert (not b!6971592))

(assert tp_is_empty!43481)

(assert (not b!6971590))

(assert (not b!6971600))

(assert (not b!6971589))

(assert (not b!6971596))

(assert (not b!6971593))

(assert (not b!6971597))

(assert (not b!6971599))

(assert (not b!6971601))

(assert (not b!6971594))

(assert (not b!6971598))

(assert (not start!668508))

(assert (not b!6971591))

(assert (not b!6971595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6971696 () Bool)

(assert (=> b!6971696 true))

(assert (=> b!6971696 true))

(declare-fun bs!1859280 () Bool)

(declare-fun b!6971705 () Bool)

(assert (= bs!1859280 (and b!6971705 b!6971696)))

(declare-fun lambda!397740 () Int)

(declare-fun lambda!397739 () Int)

(assert (=> bs!1859280 (not (= lambda!397740 lambda!397739))))

(assert (=> b!6971705 true))

(assert (=> b!6971705 true))

(declare-fun e!4190597 () Bool)

(declare-fun call!632833 () Bool)

(assert (=> b!6971696 (= e!4190597 call!632833)))

(declare-fun bm!632827 () Bool)

(declare-fun call!632832 () Bool)

(declare-fun isEmpty!39018 (List!66938) Bool)

(assert (=> bm!632827 (= call!632832 (isEmpty!39018 s!9351))))

(declare-fun bm!632828 () Bool)

(declare-fun c!1292374 () Bool)

(declare-fun Exists!4091 (Int) Bool)

(assert (=> bm!632828 (= call!632833 (Exists!4091 (ite c!1292374 lambda!397739 lambda!397740)))))

(declare-fun b!6971697 () Bool)

(declare-fun e!4190598 () Bool)

(assert (=> b!6971697 (= e!4190598 call!632832)))

(declare-fun b!6971698 () Bool)

(declare-fun e!4190600 () Bool)

(assert (=> b!6971698 (= e!4190600 (= s!9351 (Cons!66814 (c!1292356 (regTwo!34769 r!13765)) Nil!66814)))))

(declare-fun b!6971699 () Bool)

(declare-fun e!4190602 () Bool)

(assert (=> b!6971699 (= e!4190602 (matchRSpec!4145 (regTwo!34769 (regTwo!34769 r!13765)) s!9351))))

(declare-fun b!6971700 () Bool)

(declare-fun c!1292375 () Bool)

(assert (=> b!6971700 (= c!1292375 (is-Union!17128 (regTwo!34769 r!13765)))))

(declare-fun e!4190603 () Bool)

(assert (=> b!6971700 (= e!4190600 e!4190603)))

(declare-fun b!6971701 () Bool)

(declare-fun e!4190599 () Bool)

(assert (=> b!6971701 (= e!4190598 e!4190599)))

(declare-fun res!2843597 () Bool)

(assert (=> b!6971701 (= res!2843597 (not (is-EmptyLang!17128 (regTwo!34769 r!13765))))))

(assert (=> b!6971701 (=> (not res!2843597) (not e!4190599))))

(declare-fun b!6971702 () Bool)

(declare-fun res!2843595 () Bool)

(assert (=> b!6971702 (=> res!2843595 e!4190597)))

(assert (=> b!6971702 (= res!2843595 call!632832)))

(declare-fun e!4190601 () Bool)

(assert (=> b!6971702 (= e!4190601 e!4190597)))

(declare-fun b!6971703 () Bool)

(assert (=> b!6971703 (= e!4190603 e!4190601)))

(assert (=> b!6971703 (= c!1292374 (is-Star!17128 (regTwo!34769 r!13765)))))

(declare-fun b!6971704 () Bool)

(assert (=> b!6971704 (= e!4190603 e!4190602)))

(declare-fun res!2843596 () Bool)

(assert (=> b!6971704 (= res!2843596 (matchRSpec!4145 (regOne!34769 (regTwo!34769 r!13765)) s!9351))))

(assert (=> b!6971704 (=> res!2843596 e!4190602)))

(declare-fun d!2171328 () Bool)

(declare-fun c!1292376 () Bool)

(assert (=> d!2171328 (= c!1292376 (is-EmptyExpr!17128 (regTwo!34769 r!13765)))))

(assert (=> d!2171328 (= (matchRSpec!4145 (regTwo!34769 r!13765) s!9351) e!4190598)))

(assert (=> b!6971705 (= e!4190601 call!632833)))

(declare-fun b!6971706 () Bool)

(declare-fun c!1292377 () Bool)

(assert (=> b!6971706 (= c!1292377 (is-ElementMatch!17128 (regTwo!34769 r!13765)))))

(assert (=> b!6971706 (= e!4190599 e!4190600)))

(assert (= (and d!2171328 c!1292376) b!6971697))

(assert (= (and d!2171328 (not c!1292376)) b!6971701))

(assert (= (and b!6971701 res!2843597) b!6971706))

(assert (= (and b!6971706 c!1292377) b!6971698))

(assert (= (and b!6971706 (not c!1292377)) b!6971700))

(assert (= (and b!6971700 c!1292375) b!6971704))

(assert (= (and b!6971700 (not c!1292375)) b!6971703))

(assert (= (and b!6971704 (not res!2843596)) b!6971699))

(assert (= (and b!6971703 c!1292374) b!6971702))

(assert (= (and b!6971703 (not c!1292374)) b!6971705))

(assert (= (and b!6971702 (not res!2843595)) b!6971696))

(assert (= (or b!6971696 b!6971705) bm!632828))

(assert (= (or b!6971697 b!6971702) bm!632827))

(declare-fun m!7660016 () Bool)

(assert (=> bm!632827 m!7660016))

(declare-fun m!7660018 () Bool)

(assert (=> bm!632828 m!7660018))

(declare-fun m!7660020 () Bool)

(assert (=> b!6971699 m!7660020))

(declare-fun m!7660022 () Bool)

(assert (=> b!6971704 m!7660022))

(assert (=> b!6971594 d!2171328))

(declare-fun bs!1859282 () Bool)

(declare-fun d!2171330 () Bool)

(assert (= bs!1859282 (and d!2171330 start!668508)))

(declare-fun lambda!397744 () Int)

(assert (=> bs!1859282 (= lambda!397744 lambda!397727)))

(declare-fun b!6971741 () Bool)

(declare-fun e!4190626 () Regex!17128)

(assert (=> b!6971741 (= e!4190626 EmptyLang!17128)))

(declare-fun b!6971742 () Bool)

(declare-fun e!4190625 () Bool)

(assert (=> b!6971742 (= e!4190625 (isEmpty!39016 (t!380680 lt!2479653)))))

(declare-fun b!6971744 () Bool)

(declare-fun e!4190623 () Bool)

(declare-fun e!4190622 () Bool)

(assert (=> b!6971744 (= e!4190623 e!4190622)))

(declare-fun c!1292392 () Bool)

(assert (=> b!6971744 (= c!1292392 (isEmpty!39016 (tail!13096 lt!2479653)))))

(declare-fun b!6971745 () Bool)

(declare-fun e!4190624 () Bool)

(assert (=> b!6971745 (= e!4190624 e!4190623)))

(declare-fun c!1292390 () Bool)

(assert (=> b!6971745 (= c!1292390 (isEmpty!39016 lt!2479653))))

(declare-fun b!6971746 () Bool)

(declare-fun e!4190627 () Regex!17128)

(assert (=> b!6971746 (= e!4190627 e!4190626)))

(declare-fun c!1292391 () Bool)

(assert (=> b!6971746 (= c!1292391 (is-Cons!66813 lt!2479653))))

(declare-fun b!6971747 () Bool)

(assert (=> b!6971747 (= e!4190627 (h!73261 lt!2479653))))

(declare-fun b!6971748 () Bool)

(assert (=> b!6971748 (= e!4190626 (Union!17128 (h!73261 lt!2479653) (generalisedUnion!2603 (t!380680 lt!2479653))))))

(declare-fun b!6971749 () Bool)

(declare-fun lt!2479681 () Regex!17128)

(declare-fun isEmptyLang!2066 (Regex!17128) Bool)

(assert (=> b!6971749 (= e!4190623 (isEmptyLang!2066 lt!2479681))))

(declare-fun b!6971750 () Bool)

(declare-fun isUnion!1494 (Regex!17128) Bool)

(assert (=> b!6971750 (= e!4190622 (isUnion!1494 lt!2479681))))

(declare-fun b!6971743 () Bool)

(declare-fun head!14028 (List!66937) Regex!17128)

(assert (=> b!6971743 (= e!4190622 (= lt!2479681 (head!14028 lt!2479653)))))

(assert (=> d!2171330 e!4190624))

(declare-fun res!2843605 () Bool)

(assert (=> d!2171330 (=> (not res!2843605) (not e!4190624))))

(declare-fun validRegex!8810 (Regex!17128) Bool)

(assert (=> d!2171330 (= res!2843605 (validRegex!8810 lt!2479681))))

(assert (=> d!2171330 (= lt!2479681 e!4190627)))

(declare-fun c!1292393 () Bool)

(assert (=> d!2171330 (= c!1292393 e!4190625)))

(declare-fun res!2843604 () Bool)

(assert (=> d!2171330 (=> (not res!2843604) (not e!4190625))))

(assert (=> d!2171330 (= res!2843604 (is-Cons!66813 lt!2479653))))

(assert (=> d!2171330 (forall!15999 lt!2479653 lambda!397744)))

(assert (=> d!2171330 (= (generalisedUnion!2603 lt!2479653) lt!2479681)))

(assert (= (and d!2171330 res!2843604) b!6971742))

(assert (= (and d!2171330 c!1292393) b!6971747))

(assert (= (and d!2171330 (not c!1292393)) b!6971746))

(assert (= (and b!6971746 c!1292391) b!6971748))

(assert (= (and b!6971746 (not c!1292391)) b!6971741))

(assert (= (and d!2171330 res!2843605) b!6971745))

(assert (= (and b!6971745 c!1292390) b!6971749))

(assert (= (and b!6971745 (not c!1292390)) b!6971744))

(assert (= (and b!6971744 c!1292392) b!6971743))

(assert (= (and b!6971744 (not c!1292392)) b!6971750))

(assert (=> b!6971745 m!7659952))

(declare-fun m!7660042 () Bool)

(assert (=> b!6971748 m!7660042))

(declare-fun m!7660044 () Bool)

(assert (=> b!6971749 m!7660044))

(declare-fun m!7660046 () Bool)

(assert (=> b!6971750 m!7660046))

(declare-fun m!7660048 () Bool)

(assert (=> b!6971743 m!7660048))

(declare-fun m!7660050 () Bool)

(assert (=> b!6971742 m!7660050))

(declare-fun m!7660052 () Bool)

(assert (=> d!2171330 m!7660052))

(declare-fun m!7660054 () Bool)

(assert (=> d!2171330 m!7660054))

(declare-fun m!7660056 () Bool)

(assert (=> b!6971744 m!7660056))

(assert (=> b!6971744 m!7660056))

(declare-fun m!7660058 () Bool)

(assert (=> b!6971744 m!7660058))

(assert (=> b!6971590 d!2171330))

(declare-fun bs!1859283 () Bool)

(declare-fun b!6971751 () Bool)

(assert (= bs!1859283 (and b!6971751 b!6971696)))

(declare-fun lambda!397745 () Int)

(assert (=> bs!1859283 (= (and (= (reg!17457 (regOne!34769 r!13765)) (reg!17457 (regTwo!34769 r!13765))) (= (regOne!34769 r!13765) (regTwo!34769 r!13765))) (= lambda!397745 lambda!397739))))

(declare-fun bs!1859284 () Bool)

(assert (= bs!1859284 (and b!6971751 b!6971705)))

(assert (=> bs!1859284 (not (= lambda!397745 lambda!397740))))

(assert (=> b!6971751 true))

(assert (=> b!6971751 true))

(declare-fun bs!1859285 () Bool)

(declare-fun b!6971760 () Bool)

(assert (= bs!1859285 (and b!6971760 b!6971696)))

(declare-fun lambda!397746 () Int)

(assert (=> bs!1859285 (not (= lambda!397746 lambda!397739))))

(declare-fun bs!1859286 () Bool)

(assert (= bs!1859286 (and b!6971760 b!6971705)))

(assert (=> bs!1859286 (= (and (= (regOne!34768 (regOne!34769 r!13765)) (regOne!34768 (regTwo!34769 r!13765))) (= (regTwo!34768 (regOne!34769 r!13765)) (regTwo!34768 (regTwo!34769 r!13765)))) (= lambda!397746 lambda!397740))))

(declare-fun bs!1859287 () Bool)

(assert (= bs!1859287 (and b!6971760 b!6971751)))

(assert (=> bs!1859287 (not (= lambda!397746 lambda!397745))))

(assert (=> b!6971760 true))

(assert (=> b!6971760 true))

(declare-fun e!4190628 () Bool)

(declare-fun call!632835 () Bool)

(assert (=> b!6971751 (= e!4190628 call!632835)))

(declare-fun bm!632829 () Bool)

(declare-fun call!632834 () Bool)

(assert (=> bm!632829 (= call!632834 (isEmpty!39018 s!9351))))

(declare-fun bm!632830 () Bool)

(declare-fun c!1292394 () Bool)

(assert (=> bm!632830 (= call!632835 (Exists!4091 (ite c!1292394 lambda!397745 lambda!397746)))))

(declare-fun b!6971752 () Bool)

(declare-fun e!4190629 () Bool)

(assert (=> b!6971752 (= e!4190629 call!632834)))

(declare-fun b!6971753 () Bool)

(declare-fun e!4190631 () Bool)

(assert (=> b!6971753 (= e!4190631 (= s!9351 (Cons!66814 (c!1292356 (regOne!34769 r!13765)) Nil!66814)))))

(declare-fun b!6971754 () Bool)

(declare-fun e!4190633 () Bool)

(assert (=> b!6971754 (= e!4190633 (matchRSpec!4145 (regTwo!34769 (regOne!34769 r!13765)) s!9351))))

(declare-fun b!6971755 () Bool)

(declare-fun c!1292395 () Bool)

(assert (=> b!6971755 (= c!1292395 (is-Union!17128 (regOne!34769 r!13765)))))

(declare-fun e!4190634 () Bool)

(assert (=> b!6971755 (= e!4190631 e!4190634)))

(declare-fun b!6971756 () Bool)

(declare-fun e!4190630 () Bool)

(assert (=> b!6971756 (= e!4190629 e!4190630)))

(declare-fun res!2843608 () Bool)

(assert (=> b!6971756 (= res!2843608 (not (is-EmptyLang!17128 (regOne!34769 r!13765))))))

(assert (=> b!6971756 (=> (not res!2843608) (not e!4190630))))

(declare-fun b!6971757 () Bool)

(declare-fun res!2843606 () Bool)

(assert (=> b!6971757 (=> res!2843606 e!4190628)))

(assert (=> b!6971757 (= res!2843606 call!632834)))

(declare-fun e!4190632 () Bool)

(assert (=> b!6971757 (= e!4190632 e!4190628)))

(declare-fun b!6971758 () Bool)

(assert (=> b!6971758 (= e!4190634 e!4190632)))

(assert (=> b!6971758 (= c!1292394 (is-Star!17128 (regOne!34769 r!13765)))))

(declare-fun b!6971759 () Bool)

(assert (=> b!6971759 (= e!4190634 e!4190633)))

(declare-fun res!2843607 () Bool)

(assert (=> b!6971759 (= res!2843607 (matchRSpec!4145 (regOne!34769 (regOne!34769 r!13765)) s!9351))))

(assert (=> b!6971759 (=> res!2843607 e!4190633)))

(declare-fun d!2171334 () Bool)

(declare-fun c!1292396 () Bool)

(assert (=> d!2171334 (= c!1292396 (is-EmptyExpr!17128 (regOne!34769 r!13765)))))

(assert (=> d!2171334 (= (matchRSpec!4145 (regOne!34769 r!13765) s!9351) e!4190629)))

(assert (=> b!6971760 (= e!4190632 call!632835)))

(declare-fun b!6971761 () Bool)

(declare-fun c!1292397 () Bool)

(assert (=> b!6971761 (= c!1292397 (is-ElementMatch!17128 (regOne!34769 r!13765)))))

(assert (=> b!6971761 (= e!4190630 e!4190631)))

(assert (= (and d!2171334 c!1292396) b!6971752))

(assert (= (and d!2171334 (not c!1292396)) b!6971756))

(assert (= (and b!6971756 res!2843608) b!6971761))

(assert (= (and b!6971761 c!1292397) b!6971753))

(assert (= (and b!6971761 (not c!1292397)) b!6971755))

(assert (= (and b!6971755 c!1292395) b!6971759))

(assert (= (and b!6971755 (not c!1292395)) b!6971758))

(assert (= (and b!6971759 (not res!2843607)) b!6971754))

(assert (= (and b!6971758 c!1292394) b!6971757))

(assert (= (and b!6971758 (not c!1292394)) b!6971760))

(assert (= (and b!6971757 (not res!2843606)) b!6971751))

(assert (= (or b!6971751 b!6971760) bm!632830))

(assert (= (or b!6971752 b!6971757) bm!632829))

(assert (=> bm!632829 m!7660016))

(declare-fun m!7660060 () Bool)

(assert (=> bm!632830 m!7660060))

(declare-fun m!7660062 () Bool)

(assert (=> b!6971754 m!7660062))

(declare-fun m!7660064 () Bool)

(assert (=> b!6971759 m!7660064))

(assert (=> b!6971600 d!2171334))

(declare-fun bs!1859288 () Bool)

(declare-fun b!6971762 () Bool)

(assert (= bs!1859288 (and b!6971762 b!6971696)))

(declare-fun lambda!397747 () Int)

(assert (=> bs!1859288 (= (and (= (reg!17457 r!13765) (reg!17457 (regTwo!34769 r!13765))) (= r!13765 (regTwo!34769 r!13765))) (= lambda!397747 lambda!397739))))

(declare-fun bs!1859289 () Bool)

(assert (= bs!1859289 (and b!6971762 b!6971705)))

(assert (=> bs!1859289 (not (= lambda!397747 lambda!397740))))

(declare-fun bs!1859290 () Bool)

(assert (= bs!1859290 (and b!6971762 b!6971751)))

(assert (=> bs!1859290 (= (and (= (reg!17457 r!13765) (reg!17457 (regOne!34769 r!13765))) (= r!13765 (regOne!34769 r!13765))) (= lambda!397747 lambda!397745))))

(declare-fun bs!1859291 () Bool)

(assert (= bs!1859291 (and b!6971762 b!6971760)))

(assert (=> bs!1859291 (not (= lambda!397747 lambda!397746))))

(assert (=> b!6971762 true))

(assert (=> b!6971762 true))

(declare-fun bs!1859292 () Bool)

(declare-fun b!6971771 () Bool)

(assert (= bs!1859292 (and b!6971771 b!6971705)))

(declare-fun lambda!397748 () Int)

(assert (=> bs!1859292 (= (and (= (regOne!34768 r!13765) (regOne!34768 (regTwo!34769 r!13765))) (= (regTwo!34768 r!13765) (regTwo!34768 (regTwo!34769 r!13765)))) (= lambda!397748 lambda!397740))))

(declare-fun bs!1859293 () Bool)

(assert (= bs!1859293 (and b!6971771 b!6971696)))

(assert (=> bs!1859293 (not (= lambda!397748 lambda!397739))))

(declare-fun bs!1859294 () Bool)

(assert (= bs!1859294 (and b!6971771 b!6971760)))

(assert (=> bs!1859294 (= (and (= (regOne!34768 r!13765) (regOne!34768 (regOne!34769 r!13765))) (= (regTwo!34768 r!13765) (regTwo!34768 (regOne!34769 r!13765)))) (= lambda!397748 lambda!397746))))

(declare-fun bs!1859295 () Bool)

(assert (= bs!1859295 (and b!6971771 b!6971762)))

(assert (=> bs!1859295 (not (= lambda!397748 lambda!397747))))

(declare-fun bs!1859296 () Bool)

(assert (= bs!1859296 (and b!6971771 b!6971751)))

(assert (=> bs!1859296 (not (= lambda!397748 lambda!397745))))

(assert (=> b!6971771 true))

(assert (=> b!6971771 true))

(declare-fun e!4190635 () Bool)

(declare-fun call!632837 () Bool)

(assert (=> b!6971762 (= e!4190635 call!632837)))

(declare-fun bm!632831 () Bool)

(declare-fun call!632836 () Bool)

(assert (=> bm!632831 (= call!632836 (isEmpty!39018 s!9351))))

(declare-fun c!1292398 () Bool)

(declare-fun bm!632832 () Bool)

(assert (=> bm!632832 (= call!632837 (Exists!4091 (ite c!1292398 lambda!397747 lambda!397748)))))

(declare-fun b!6971763 () Bool)

(declare-fun e!4190636 () Bool)

(assert (=> b!6971763 (= e!4190636 call!632836)))

(declare-fun b!6971764 () Bool)

(declare-fun e!4190638 () Bool)

(assert (=> b!6971764 (= e!4190638 (= s!9351 (Cons!66814 (c!1292356 r!13765) Nil!66814)))))

(declare-fun b!6971765 () Bool)

(declare-fun e!4190640 () Bool)

(assert (=> b!6971765 (= e!4190640 (matchRSpec!4145 (regTwo!34769 r!13765) s!9351))))

(declare-fun b!6971766 () Bool)

(declare-fun c!1292399 () Bool)

(assert (=> b!6971766 (= c!1292399 (is-Union!17128 r!13765))))

(declare-fun e!4190641 () Bool)

(assert (=> b!6971766 (= e!4190638 e!4190641)))

(declare-fun b!6971767 () Bool)

(declare-fun e!4190637 () Bool)

(assert (=> b!6971767 (= e!4190636 e!4190637)))

(declare-fun res!2843611 () Bool)

(assert (=> b!6971767 (= res!2843611 (not (is-EmptyLang!17128 r!13765)))))

(assert (=> b!6971767 (=> (not res!2843611) (not e!4190637))))

(declare-fun b!6971768 () Bool)

(declare-fun res!2843609 () Bool)

(assert (=> b!6971768 (=> res!2843609 e!4190635)))

(assert (=> b!6971768 (= res!2843609 call!632836)))

(declare-fun e!4190639 () Bool)

(assert (=> b!6971768 (= e!4190639 e!4190635)))

(declare-fun b!6971769 () Bool)

(assert (=> b!6971769 (= e!4190641 e!4190639)))

(assert (=> b!6971769 (= c!1292398 (is-Star!17128 r!13765))))

(declare-fun b!6971770 () Bool)

(assert (=> b!6971770 (= e!4190641 e!4190640)))

(declare-fun res!2843610 () Bool)

(assert (=> b!6971770 (= res!2843610 (matchRSpec!4145 (regOne!34769 r!13765) s!9351))))

(assert (=> b!6971770 (=> res!2843610 e!4190640)))

(declare-fun d!2171336 () Bool)

(declare-fun c!1292400 () Bool)

(assert (=> d!2171336 (= c!1292400 (is-EmptyExpr!17128 r!13765))))

(assert (=> d!2171336 (= (matchRSpec!4145 r!13765 s!9351) e!4190636)))

(assert (=> b!6971771 (= e!4190639 call!632837)))

(declare-fun b!6971772 () Bool)

(declare-fun c!1292401 () Bool)

(assert (=> b!6971772 (= c!1292401 (is-ElementMatch!17128 r!13765))))

(assert (=> b!6971772 (= e!4190637 e!4190638)))

(assert (= (and d!2171336 c!1292400) b!6971763))

(assert (= (and d!2171336 (not c!1292400)) b!6971767))

(assert (= (and b!6971767 res!2843611) b!6971772))

(assert (= (and b!6971772 c!1292401) b!6971764))

(assert (= (and b!6971772 (not c!1292401)) b!6971766))

(assert (= (and b!6971766 c!1292399) b!6971770))

(assert (= (and b!6971766 (not c!1292399)) b!6971769))

(assert (= (and b!6971770 (not res!2843610)) b!6971765))

(assert (= (and b!6971769 c!1292398) b!6971768))

(assert (= (and b!6971769 (not c!1292398)) b!6971771))

(assert (= (and b!6971768 (not res!2843609)) b!6971762))

(assert (= (or b!6971762 b!6971771) bm!632832))

(assert (= (or b!6971763 b!6971768) bm!632831))

(assert (=> bm!632831 m!7660016))

(declare-fun m!7660066 () Bool)

(assert (=> bm!632832 m!7660066))

(assert (=> b!6971765 m!7659982))

(assert (=> b!6971770 m!7659956))

(assert (=> b!6971595 d!2171336))

(declare-fun b!6971829 () Bool)

(declare-fun res!2843648 () Bool)

(declare-fun e!4190671 () Bool)

(assert (=> b!6971829 (=> res!2843648 e!4190671)))

(declare-fun tail!13098 (List!66938) List!66938)

(assert (=> b!6971829 (= res!2843648 (not (isEmpty!39018 (tail!13098 s!9351))))))

(declare-fun b!6971830 () Bool)

(declare-fun e!4190675 () Bool)

(declare-fun lt!2479686 () Bool)

(assert (=> b!6971830 (= e!4190675 (not lt!2479686))))

(declare-fun b!6971831 () Bool)

(declare-fun res!2843645 () Bool)

(declare-fun e!4190670 () Bool)

(assert (=> b!6971831 (=> res!2843645 e!4190670)))

(assert (=> b!6971831 (= res!2843645 (not (is-ElementMatch!17128 r!13765)))))

(assert (=> b!6971831 (= e!4190675 e!4190670)))

(declare-fun b!6971832 () Bool)

(declare-fun e!4190673 () Bool)

(assert (=> b!6971832 (= e!4190673 e!4190671)))

(declare-fun res!2843646 () Bool)

(assert (=> b!6971832 (=> res!2843646 e!4190671)))

(declare-fun call!632842 () Bool)

(assert (=> b!6971832 (= res!2843646 call!632842)))

(declare-fun b!6971833 () Bool)

(declare-fun e!4190676 () Bool)

(assert (=> b!6971833 (= e!4190676 (= lt!2479686 call!632842))))

(declare-fun b!6971834 () Bool)

(declare-fun e!4190672 () Bool)

(declare-fun derivativeStep!5538 (Regex!17128 C!34526) Regex!17128)

(declare-fun head!14029 (List!66938) C!34526)

(assert (=> b!6971834 (= e!4190672 (matchR!9230 (derivativeStep!5538 r!13765 (head!14029 s!9351)) (tail!13098 s!9351)))))

(declare-fun b!6971835 () Bool)

(declare-fun res!2843644 () Bool)

(declare-fun e!4190674 () Bool)

(assert (=> b!6971835 (=> (not res!2843644) (not e!4190674))))

(assert (=> b!6971835 (= res!2843644 (isEmpty!39018 (tail!13098 s!9351)))))

(declare-fun d!2171338 () Bool)

(assert (=> d!2171338 e!4190676))

(declare-fun c!1292416 () Bool)

(assert (=> d!2171338 (= c!1292416 (is-EmptyExpr!17128 r!13765))))

(assert (=> d!2171338 (= lt!2479686 e!4190672)))

(declare-fun c!1292414 () Bool)

(assert (=> d!2171338 (= c!1292414 (isEmpty!39018 s!9351))))

(assert (=> d!2171338 (validRegex!8810 r!13765)))

(assert (=> d!2171338 (= (matchR!9230 r!13765 s!9351) lt!2479686)))

(declare-fun b!6971836 () Bool)

(declare-fun res!2843650 () Bool)

(assert (=> b!6971836 (=> res!2843650 e!4190670)))

(assert (=> b!6971836 (= res!2843650 e!4190674)))

(declare-fun res!2843649 () Bool)

(assert (=> b!6971836 (=> (not res!2843649) (not e!4190674))))

(assert (=> b!6971836 (= res!2843649 lt!2479686)))

(declare-fun b!6971837 () Bool)

(assert (=> b!6971837 (= e!4190671 (not (= (head!14029 s!9351) (c!1292356 r!13765))))))

(declare-fun b!6971838 () Bool)

(declare-fun nullable!6913 (Regex!17128) Bool)

(assert (=> b!6971838 (= e!4190672 (nullable!6913 r!13765))))

(declare-fun b!6971839 () Bool)

(declare-fun res!2843651 () Bool)

(assert (=> b!6971839 (=> (not res!2843651) (not e!4190674))))

(assert (=> b!6971839 (= res!2843651 (not call!632842))))

(declare-fun b!6971840 () Bool)

(assert (=> b!6971840 (= e!4190674 (= (head!14029 s!9351) (c!1292356 r!13765)))))

(declare-fun bm!632837 () Bool)

(assert (=> bm!632837 (= call!632842 (isEmpty!39018 s!9351))))

(declare-fun b!6971841 () Bool)

(assert (=> b!6971841 (= e!4190676 e!4190675)))

(declare-fun c!1292415 () Bool)

(assert (=> b!6971841 (= c!1292415 (is-EmptyLang!17128 r!13765))))

(declare-fun b!6971842 () Bool)

(assert (=> b!6971842 (= e!4190670 e!4190673)))

(declare-fun res!2843647 () Bool)

(assert (=> b!6971842 (=> (not res!2843647) (not e!4190673))))

(assert (=> b!6971842 (= res!2843647 (not lt!2479686))))

(assert (= (and d!2171338 c!1292414) b!6971838))

(assert (= (and d!2171338 (not c!1292414)) b!6971834))

(assert (= (and d!2171338 c!1292416) b!6971833))

(assert (= (and d!2171338 (not c!1292416)) b!6971841))

(assert (= (and b!6971841 c!1292415) b!6971830))

(assert (= (and b!6971841 (not c!1292415)) b!6971831))

(assert (= (and b!6971831 (not res!2843645)) b!6971836))

(assert (= (and b!6971836 res!2843649) b!6971839))

(assert (= (and b!6971839 res!2843651) b!6971835))

(assert (= (and b!6971835 res!2843644) b!6971840))

(assert (= (and b!6971836 (not res!2843650)) b!6971842))

(assert (= (and b!6971842 res!2843647) b!6971832))

(assert (= (and b!6971832 (not res!2843646)) b!6971829))

(assert (= (and b!6971829 (not res!2843648)) b!6971837))

(assert (= (or b!6971833 b!6971832 b!6971839) bm!632837))

(assert (=> bm!632837 m!7660016))

(declare-fun m!7660068 () Bool)

(assert (=> b!6971840 m!7660068))

(declare-fun m!7660070 () Bool)

(assert (=> b!6971835 m!7660070))

(assert (=> b!6971835 m!7660070))

(declare-fun m!7660072 () Bool)

(assert (=> b!6971835 m!7660072))

(assert (=> b!6971834 m!7660068))

(assert (=> b!6971834 m!7660068))

(declare-fun m!7660074 () Bool)

(assert (=> b!6971834 m!7660074))

(assert (=> b!6971834 m!7660070))

(assert (=> b!6971834 m!7660074))

(assert (=> b!6971834 m!7660070))

(declare-fun m!7660076 () Bool)

(assert (=> b!6971834 m!7660076))

(declare-fun m!7660078 () Bool)

(assert (=> b!6971838 m!7660078))

(assert (=> b!6971837 m!7660068))

(assert (=> d!2171338 m!7660016))

(declare-fun m!7660080 () Bool)

(assert (=> d!2171338 m!7660080))

(assert (=> b!6971829 m!7660070))

(assert (=> b!6971829 m!7660070))

(assert (=> b!6971829 m!7660072))

(assert (=> b!6971595 d!2171338))

(declare-fun d!2171340 () Bool)

(assert (=> d!2171340 (= (matchR!9230 r!13765 s!9351) (matchRSpec!4145 r!13765 s!9351))))

(declare-fun lt!2479690 () Unit!160908)

(declare-fun choose!51910 (Regex!17128 List!66938) Unit!160908)

(assert (=> d!2171340 (= lt!2479690 (choose!51910 r!13765 s!9351))))

(assert (=> d!2171340 (validRegex!8810 r!13765)))

(assert (=> d!2171340 (= (mainMatchTheorem!4139 r!13765 s!9351) lt!2479690)))

(declare-fun bs!1859297 () Bool)

(assert (= bs!1859297 d!2171340))

(assert (=> bs!1859297 m!7659960))

(assert (=> bs!1859297 m!7659958))

(declare-fun m!7660098 () Bool)

(assert (=> bs!1859297 m!7660098))

(assert (=> bs!1859297 m!7660080))

(assert (=> b!6971595 d!2171340))

(declare-fun d!2171344 () Bool)

(assert (=> d!2171344 (= (isEmpty!39016 lt!2479653) (is-Nil!66813 lt!2479653))))

(assert (=> b!6971597 d!2171344))

(declare-fun d!2171346 () Bool)

(assert (=> d!2171346 (= (tail!13096 l!9142) (t!380680 l!9142))))

(assert (=> b!6971597 d!2171346))

(declare-fun d!2171348 () Bool)

(declare-fun res!2843668 () Bool)

(declare-fun e!4190692 () Bool)

(assert (=> d!2171348 (=> res!2843668 e!4190692)))

(assert (=> d!2171348 (= res!2843668 (is-Nil!66813 l!9142))))

(assert (=> d!2171348 (= (forall!15999 l!9142 lambda!397727) e!4190692)))

(declare-fun b!6971865 () Bool)

(declare-fun e!4190693 () Bool)

(assert (=> b!6971865 (= e!4190692 e!4190693)))

(declare-fun res!2843669 () Bool)

(assert (=> b!6971865 (=> (not res!2843669) (not e!4190693))))

(declare-fun dynLambda!26642 (Int Regex!17128) Bool)

(assert (=> b!6971865 (= res!2843669 (dynLambda!26642 lambda!397727 (h!73261 l!9142)))))

(declare-fun b!6971866 () Bool)

(assert (=> b!6971866 (= e!4190693 (forall!15999 (t!380680 l!9142) lambda!397727))))

(assert (= (and d!2171348 (not res!2843668)) b!6971865))

(assert (= (and b!6971865 res!2843669) b!6971866))

(declare-fun b_lambda!260813 () Bool)

(assert (=> (not b_lambda!260813) (not b!6971865)))

(declare-fun m!7660100 () Bool)

(assert (=> b!6971865 m!7660100))

(declare-fun m!7660102 () Bool)

(assert (=> b!6971866 m!7660102))

(assert (=> start!668508 d!2171348))

(declare-fun b!6971867 () Bool)

(declare-fun res!2843674 () Bool)

(declare-fun e!4190695 () Bool)

(assert (=> b!6971867 (=> res!2843674 e!4190695)))

(assert (=> b!6971867 (= res!2843674 (not (isEmpty!39018 (tail!13098 s!9351))))))

(declare-fun b!6971868 () Bool)

(declare-fun e!4190699 () Bool)

(declare-fun lt!2479691 () Bool)

(assert (=> b!6971868 (= e!4190699 (not lt!2479691))))

(declare-fun b!6971869 () Bool)

(declare-fun res!2843671 () Bool)

(declare-fun e!4190694 () Bool)

(assert (=> b!6971869 (=> res!2843671 e!4190694)))

(assert (=> b!6971869 (= res!2843671 (not (is-ElementMatch!17128 (regTwo!34769 r!13765))))))

(assert (=> b!6971869 (= e!4190699 e!4190694)))

(declare-fun b!6971870 () Bool)

(declare-fun e!4190697 () Bool)

(assert (=> b!6971870 (= e!4190697 e!4190695)))

(declare-fun res!2843672 () Bool)

(assert (=> b!6971870 (=> res!2843672 e!4190695)))

(declare-fun call!632844 () Bool)

(assert (=> b!6971870 (= res!2843672 call!632844)))

(declare-fun b!6971871 () Bool)

(declare-fun e!4190700 () Bool)

(assert (=> b!6971871 (= e!4190700 (= lt!2479691 call!632844))))

(declare-fun b!6971872 () Bool)

(declare-fun e!4190696 () Bool)

(assert (=> b!6971872 (= e!4190696 (matchR!9230 (derivativeStep!5538 (regTwo!34769 r!13765) (head!14029 s!9351)) (tail!13098 s!9351)))))

(declare-fun b!6971873 () Bool)

(declare-fun res!2843670 () Bool)

(declare-fun e!4190698 () Bool)

(assert (=> b!6971873 (=> (not res!2843670) (not e!4190698))))

(assert (=> b!6971873 (= res!2843670 (isEmpty!39018 (tail!13098 s!9351)))))

(declare-fun d!2171350 () Bool)

(assert (=> d!2171350 e!4190700))

(declare-fun c!1292422 () Bool)

(assert (=> d!2171350 (= c!1292422 (is-EmptyExpr!17128 (regTwo!34769 r!13765)))))

(assert (=> d!2171350 (= lt!2479691 e!4190696)))

(declare-fun c!1292420 () Bool)

(assert (=> d!2171350 (= c!1292420 (isEmpty!39018 s!9351))))

(assert (=> d!2171350 (validRegex!8810 (regTwo!34769 r!13765))))

(assert (=> d!2171350 (= (matchR!9230 (regTwo!34769 r!13765) s!9351) lt!2479691)))

(declare-fun b!6971874 () Bool)

(declare-fun res!2843676 () Bool)

(assert (=> b!6971874 (=> res!2843676 e!4190694)))

(assert (=> b!6971874 (= res!2843676 e!4190698)))

(declare-fun res!2843675 () Bool)

(assert (=> b!6971874 (=> (not res!2843675) (not e!4190698))))

(assert (=> b!6971874 (= res!2843675 lt!2479691)))

(declare-fun b!6971875 () Bool)

(assert (=> b!6971875 (= e!4190695 (not (= (head!14029 s!9351) (c!1292356 (regTwo!34769 r!13765)))))))

(declare-fun b!6971876 () Bool)

(assert (=> b!6971876 (= e!4190696 (nullable!6913 (regTwo!34769 r!13765)))))

(declare-fun b!6971877 () Bool)

(declare-fun res!2843677 () Bool)

(assert (=> b!6971877 (=> (not res!2843677) (not e!4190698))))

(assert (=> b!6971877 (= res!2843677 (not call!632844))))

(declare-fun b!6971878 () Bool)

(assert (=> b!6971878 (= e!4190698 (= (head!14029 s!9351) (c!1292356 (regTwo!34769 r!13765))))))

(declare-fun bm!632839 () Bool)

(assert (=> bm!632839 (= call!632844 (isEmpty!39018 s!9351))))

(declare-fun b!6971879 () Bool)

(assert (=> b!6971879 (= e!4190700 e!4190699)))

(declare-fun c!1292421 () Bool)

(assert (=> b!6971879 (= c!1292421 (is-EmptyLang!17128 (regTwo!34769 r!13765)))))

(declare-fun b!6971880 () Bool)

(assert (=> b!6971880 (= e!4190694 e!4190697)))

(declare-fun res!2843673 () Bool)

(assert (=> b!6971880 (=> (not res!2843673) (not e!4190697))))

(assert (=> b!6971880 (= res!2843673 (not lt!2479691))))

(assert (= (and d!2171350 c!1292420) b!6971876))

(assert (= (and d!2171350 (not c!1292420)) b!6971872))

(assert (= (and d!2171350 c!1292422) b!6971871))

(assert (= (and d!2171350 (not c!1292422)) b!6971879))

(assert (= (and b!6971879 c!1292421) b!6971868))

(assert (= (and b!6971879 (not c!1292421)) b!6971869))

(assert (= (and b!6971869 (not res!2843671)) b!6971874))

(assert (= (and b!6971874 res!2843675) b!6971877))

(assert (= (and b!6971877 res!2843677) b!6971873))

(assert (= (and b!6971873 res!2843670) b!6971878))

(assert (= (and b!6971874 (not res!2843676)) b!6971880))

(assert (= (and b!6971880 res!2843673) b!6971870))

(assert (= (and b!6971870 (not res!2843672)) b!6971867))

(assert (= (and b!6971867 (not res!2843674)) b!6971875))

(assert (= (or b!6971871 b!6971870 b!6971877) bm!632839))

(assert (=> bm!632839 m!7660016))

(assert (=> b!6971878 m!7660068))

(assert (=> b!6971873 m!7660070))

(assert (=> b!6971873 m!7660070))

(assert (=> b!6971873 m!7660072))

(assert (=> b!6971872 m!7660068))

(assert (=> b!6971872 m!7660068))

(declare-fun m!7660104 () Bool)

(assert (=> b!6971872 m!7660104))

(assert (=> b!6971872 m!7660070))

(assert (=> b!6971872 m!7660104))

(assert (=> b!6971872 m!7660070))

(declare-fun m!7660106 () Bool)

(assert (=> b!6971872 m!7660106))

(declare-fun m!7660108 () Bool)

(assert (=> b!6971876 m!7660108))

(assert (=> b!6971875 m!7660068))

(assert (=> d!2171350 m!7660016))

(declare-fun m!7660110 () Bool)

(assert (=> d!2171350 m!7660110))

(assert (=> b!6971867 m!7660070))

(assert (=> b!6971867 m!7660070))

(assert (=> b!6971867 m!7660072))

(assert (=> b!6971598 d!2171350))

(assert (=> b!6971598 d!2171328))

(declare-fun d!2171352 () Bool)

(declare-fun res!2843680 () Bool)

(declare-fun e!4190703 () Bool)

(assert (=> d!2171352 (=> res!2843680 e!4190703)))

(assert (=> d!2171352 (= res!2843680 (is-Nil!66813 lt!2479653))))

(assert (=> d!2171352 (= (forall!15999 lt!2479653 lambda!397727) e!4190703)))

(declare-fun b!6971883 () Bool)

(declare-fun e!4190704 () Bool)

(assert (=> b!6971883 (= e!4190703 e!4190704)))

(declare-fun res!2843681 () Bool)

(assert (=> b!6971883 (=> (not res!2843681) (not e!4190704))))

(assert (=> b!6971883 (= res!2843681 (dynLambda!26642 lambda!397727 (h!73261 lt!2479653)))))

(declare-fun b!6971884 () Bool)

(assert (=> b!6971884 (= e!4190704 (forall!15999 (t!380680 lt!2479653) lambda!397727))))

(assert (= (and d!2171352 (not res!2843680)) b!6971883))

(assert (= (and b!6971883 res!2843681) b!6971884))

(declare-fun b_lambda!260815 () Bool)

(assert (=> (not b_lambda!260815) (not b!6971883)))

(declare-fun m!7660112 () Bool)

(assert (=> b!6971883 m!7660112))

(declare-fun m!7660114 () Bool)

(assert (=> b!6971884 m!7660114))

(assert (=> b!6971598 d!2171352))

(declare-fun d!2171354 () Bool)

(assert (=> d!2171354 (= (matchR!9230 (regTwo!34769 r!13765) s!9351) (matchRSpec!4145 (regTwo!34769 r!13765) s!9351))))

(declare-fun lt!2479692 () Unit!160908)

(assert (=> d!2171354 (= lt!2479692 (choose!51910 (regTwo!34769 r!13765) s!9351))))

(assert (=> d!2171354 (validRegex!8810 (regTwo!34769 r!13765))))

(assert (=> d!2171354 (= (mainMatchTheorem!4139 (regTwo!34769 r!13765) s!9351) lt!2479692)))

(declare-fun bs!1859298 () Bool)

(assert (= bs!1859298 d!2171354))

(assert (=> bs!1859298 m!7659972))

(assert (=> bs!1859298 m!7659982))

(declare-fun m!7660118 () Bool)

(assert (=> bs!1859298 m!7660118))

(assert (=> bs!1859298 m!7660110))

(assert (=> b!6971598 d!2171354))

(declare-fun b!6971885 () Bool)

(declare-fun res!2843686 () Bool)

(declare-fun e!4190706 () Bool)

(assert (=> b!6971885 (=> res!2843686 e!4190706)))

(assert (=> b!6971885 (= res!2843686 (not (isEmpty!39018 (tail!13098 s!9351))))))

(declare-fun b!6971886 () Bool)

(declare-fun e!4190710 () Bool)

(declare-fun lt!2479693 () Bool)

(assert (=> b!6971886 (= e!4190710 (not lt!2479693))))

(declare-fun b!6971887 () Bool)

(declare-fun res!2843683 () Bool)

(declare-fun e!4190705 () Bool)

(assert (=> b!6971887 (=> res!2843683 e!4190705)))

(assert (=> b!6971887 (= res!2843683 (not (is-ElementMatch!17128 (regOne!34769 r!13765))))))

(assert (=> b!6971887 (= e!4190710 e!4190705)))

(declare-fun b!6971888 () Bool)

(declare-fun e!4190708 () Bool)

(assert (=> b!6971888 (= e!4190708 e!4190706)))

(declare-fun res!2843684 () Bool)

(assert (=> b!6971888 (=> res!2843684 e!4190706)))

(declare-fun call!632845 () Bool)

(assert (=> b!6971888 (= res!2843684 call!632845)))

(declare-fun b!6971889 () Bool)

(declare-fun e!4190711 () Bool)

(assert (=> b!6971889 (= e!4190711 (= lt!2479693 call!632845))))

(declare-fun b!6971890 () Bool)

(declare-fun e!4190707 () Bool)

(assert (=> b!6971890 (= e!4190707 (matchR!9230 (derivativeStep!5538 (regOne!34769 r!13765) (head!14029 s!9351)) (tail!13098 s!9351)))))

(declare-fun b!6971891 () Bool)

(declare-fun res!2843682 () Bool)

(declare-fun e!4190709 () Bool)

(assert (=> b!6971891 (=> (not res!2843682) (not e!4190709))))

(assert (=> b!6971891 (= res!2843682 (isEmpty!39018 (tail!13098 s!9351)))))

(declare-fun d!2171356 () Bool)

(assert (=> d!2171356 e!4190711))

(declare-fun c!1292425 () Bool)

(assert (=> d!2171356 (= c!1292425 (is-EmptyExpr!17128 (regOne!34769 r!13765)))))

(assert (=> d!2171356 (= lt!2479693 e!4190707)))

(declare-fun c!1292423 () Bool)

(assert (=> d!2171356 (= c!1292423 (isEmpty!39018 s!9351))))

(assert (=> d!2171356 (validRegex!8810 (regOne!34769 r!13765))))

(assert (=> d!2171356 (= (matchR!9230 (regOne!34769 r!13765) s!9351) lt!2479693)))

(declare-fun b!6971892 () Bool)

(declare-fun res!2843688 () Bool)

(assert (=> b!6971892 (=> res!2843688 e!4190705)))

(assert (=> b!6971892 (= res!2843688 e!4190709)))

(declare-fun res!2843687 () Bool)

(assert (=> b!6971892 (=> (not res!2843687) (not e!4190709))))

(assert (=> b!6971892 (= res!2843687 lt!2479693)))

(declare-fun b!6971893 () Bool)

(assert (=> b!6971893 (= e!4190706 (not (= (head!14029 s!9351) (c!1292356 (regOne!34769 r!13765)))))))

(declare-fun b!6971894 () Bool)

(assert (=> b!6971894 (= e!4190707 (nullable!6913 (regOne!34769 r!13765)))))

(declare-fun b!6971895 () Bool)

(declare-fun res!2843689 () Bool)

(assert (=> b!6971895 (=> (not res!2843689) (not e!4190709))))

(assert (=> b!6971895 (= res!2843689 (not call!632845))))

(declare-fun b!6971896 () Bool)

(assert (=> b!6971896 (= e!4190709 (= (head!14029 s!9351) (c!1292356 (regOne!34769 r!13765))))))

(declare-fun bm!632840 () Bool)

(assert (=> bm!632840 (= call!632845 (isEmpty!39018 s!9351))))

(declare-fun b!6971897 () Bool)

(assert (=> b!6971897 (= e!4190711 e!4190710)))

(declare-fun c!1292424 () Bool)

(assert (=> b!6971897 (= c!1292424 (is-EmptyLang!17128 (regOne!34769 r!13765)))))

(declare-fun b!6971898 () Bool)

(assert (=> b!6971898 (= e!4190705 e!4190708)))

(declare-fun res!2843685 () Bool)

(assert (=> b!6971898 (=> (not res!2843685) (not e!4190708))))

(assert (=> b!6971898 (= res!2843685 (not lt!2479693))))

(assert (= (and d!2171356 c!1292423) b!6971894))

(assert (= (and d!2171356 (not c!1292423)) b!6971890))

(assert (= (and d!2171356 c!1292425) b!6971889))

(assert (= (and d!2171356 (not c!1292425)) b!6971897))

(assert (= (and b!6971897 c!1292424) b!6971886))

(assert (= (and b!6971897 (not c!1292424)) b!6971887))

(assert (= (and b!6971887 (not res!2843683)) b!6971892))

(assert (= (and b!6971892 res!2843687) b!6971895))

(assert (= (and b!6971895 res!2843689) b!6971891))

(assert (= (and b!6971891 res!2843682) b!6971896))

(assert (= (and b!6971892 (not res!2843688)) b!6971898))

(assert (= (and b!6971898 res!2843685) b!6971888))

(assert (= (and b!6971888 (not res!2843684)) b!6971885))

(assert (= (and b!6971885 (not res!2843686)) b!6971893))

(assert (= (or b!6971889 b!6971888 b!6971895) bm!632840))

(assert (=> bm!632840 m!7660016))

(assert (=> b!6971896 m!7660068))

(assert (=> b!6971891 m!7660070))

(assert (=> b!6971891 m!7660070))

(assert (=> b!6971891 m!7660072))

(assert (=> b!6971890 m!7660068))

(assert (=> b!6971890 m!7660068))

(declare-fun m!7660122 () Bool)

(assert (=> b!6971890 m!7660122))

(assert (=> b!6971890 m!7660070))

(assert (=> b!6971890 m!7660122))

(assert (=> b!6971890 m!7660070))

(declare-fun m!7660124 () Bool)

(assert (=> b!6971890 m!7660124))

(declare-fun m!7660126 () Bool)

(assert (=> b!6971894 m!7660126))

(assert (=> b!6971893 m!7660068))

(assert (=> d!2171356 m!7660016))

(declare-fun m!7660128 () Bool)

(assert (=> d!2171356 m!7660128))

(assert (=> b!6971885 m!7660070))

(assert (=> b!6971885 m!7660070))

(assert (=> b!6971885 m!7660072))

(assert (=> b!6971598 d!2171356))

(declare-fun d!2171360 () Bool)

(assert (=> d!2171360 (= (matchR!9230 (regOne!34769 r!13765) s!9351) (matchRSpec!4145 (regOne!34769 r!13765) s!9351))))

(declare-fun lt!2479694 () Unit!160908)

(assert (=> d!2171360 (= lt!2479694 (choose!51910 (regOne!34769 r!13765) s!9351))))

(assert (=> d!2171360 (validRegex!8810 (regOne!34769 r!13765))))

(assert (=> d!2171360 (= (mainMatchTheorem!4139 (regOne!34769 r!13765) s!9351) lt!2479694)))

(declare-fun bs!1859299 () Bool)

(assert (= bs!1859299 d!2171360))

(assert (=> bs!1859299 m!7659976))

(assert (=> bs!1859299 m!7659956))

(declare-fun m!7660130 () Bool)

(assert (=> bs!1859299 m!7660130))

(assert (=> bs!1859299 m!7660128))

(assert (=> b!6971598 d!2171360))

(declare-fun bs!1859300 () Bool)

(declare-fun d!2171362 () Bool)

(assert (= bs!1859300 (and d!2171362 start!668508)))

(declare-fun lambda!397749 () Int)

(assert (=> bs!1859300 (= lambda!397749 lambda!397727)))

(declare-fun bs!1859301 () Bool)

(assert (= bs!1859301 (and d!2171362 d!2171330)))

(assert (=> bs!1859301 (= lambda!397749 lambda!397744)))

(declare-fun b!6971899 () Bool)

(declare-fun e!4190716 () Regex!17128)

(assert (=> b!6971899 (= e!4190716 EmptyLang!17128)))

(declare-fun b!6971900 () Bool)

(declare-fun e!4190715 () Bool)

(assert (=> b!6971900 (= e!4190715 (isEmpty!39016 (t!380680 l!9142)))))

(declare-fun b!6971902 () Bool)

(declare-fun e!4190713 () Bool)

(declare-fun e!4190712 () Bool)

(assert (=> b!6971902 (= e!4190713 e!4190712)))

(declare-fun c!1292428 () Bool)

(assert (=> b!6971902 (= c!1292428 (isEmpty!39016 (tail!13096 l!9142)))))

(declare-fun b!6971903 () Bool)

(declare-fun e!4190714 () Bool)

(assert (=> b!6971903 (= e!4190714 e!4190713)))

(declare-fun c!1292426 () Bool)

(assert (=> b!6971903 (= c!1292426 (isEmpty!39016 l!9142))))

(declare-fun b!6971904 () Bool)

(declare-fun e!4190717 () Regex!17128)

(assert (=> b!6971904 (= e!4190717 e!4190716)))

(declare-fun c!1292427 () Bool)

(assert (=> b!6971904 (= c!1292427 (is-Cons!66813 l!9142))))

(declare-fun b!6971905 () Bool)

(assert (=> b!6971905 (= e!4190717 (h!73261 l!9142))))

(declare-fun b!6971906 () Bool)

(assert (=> b!6971906 (= e!4190716 (Union!17128 (h!73261 l!9142) (generalisedUnion!2603 (t!380680 l!9142))))))

(declare-fun b!6971907 () Bool)

(declare-fun lt!2479695 () Regex!17128)

(assert (=> b!6971907 (= e!4190713 (isEmptyLang!2066 lt!2479695))))

(declare-fun b!6971908 () Bool)

(assert (=> b!6971908 (= e!4190712 (isUnion!1494 lt!2479695))))

(declare-fun b!6971901 () Bool)

(assert (=> b!6971901 (= e!4190712 (= lt!2479695 (head!14028 l!9142)))))

(assert (=> d!2171362 e!4190714))

(declare-fun res!2843691 () Bool)

(assert (=> d!2171362 (=> (not res!2843691) (not e!4190714))))

(assert (=> d!2171362 (= res!2843691 (validRegex!8810 lt!2479695))))

(assert (=> d!2171362 (= lt!2479695 e!4190717)))

(declare-fun c!1292429 () Bool)

(assert (=> d!2171362 (= c!1292429 e!4190715)))

(declare-fun res!2843690 () Bool)

(assert (=> d!2171362 (=> (not res!2843690) (not e!4190715))))

(assert (=> d!2171362 (= res!2843690 (is-Cons!66813 l!9142))))

(assert (=> d!2171362 (forall!15999 l!9142 lambda!397749)))

(assert (=> d!2171362 (= (generalisedUnion!2603 l!9142) lt!2479695)))

(assert (= (and d!2171362 res!2843690) b!6971900))

(assert (= (and d!2171362 c!1292429) b!6971905))

(assert (= (and d!2171362 (not c!1292429)) b!6971904))

(assert (= (and b!6971904 c!1292427) b!6971906))

(assert (= (and b!6971904 (not c!1292427)) b!6971899))

(assert (= (and d!2171362 res!2843691) b!6971903))

(assert (= (and b!6971903 c!1292426) b!6971907))

(assert (= (and b!6971903 (not c!1292426)) b!6971902))

(assert (= (and b!6971902 c!1292428) b!6971901))

(assert (= (and b!6971902 (not c!1292428)) b!6971908))

(assert (=> b!6971903 m!7659964))

(declare-fun m!7660132 () Bool)

(assert (=> b!6971906 m!7660132))

(declare-fun m!7660134 () Bool)

(assert (=> b!6971907 m!7660134))

(declare-fun m!7660136 () Bool)

(assert (=> b!6971908 m!7660136))

(declare-fun m!7660138 () Bool)

(assert (=> b!6971901 m!7660138))

(declare-fun m!7660140 () Bool)

(assert (=> b!6971900 m!7660140))

(declare-fun m!7660142 () Bool)

(assert (=> d!2171362 m!7660142))

(declare-fun m!7660144 () Bool)

(assert (=> d!2171362 m!7660144))

(assert (=> b!6971902 m!7659954))

(assert (=> b!6971902 m!7659954))

(declare-fun m!7660146 () Bool)

(assert (=> b!6971902 m!7660146))

(assert (=> b!6971593 d!2171362))

(declare-fun d!2171364 () Bool)

(assert (=> d!2171364 (= (isEmpty!39016 l!9142) (is-Nil!66813 l!9142))))

(assert (=> b!6971592 d!2171364))

(declare-fun b!6971919 () Bool)

(declare-fun e!4190720 () Bool)

(assert (=> b!6971919 (= e!4190720 tp_is_empty!43481)))

(declare-fun b!6971921 () Bool)

(declare-fun tp!1924268 () Bool)

(assert (=> b!6971921 (= e!4190720 tp!1924268)))

(declare-fun b!6971920 () Bool)

(declare-fun tp!1924267 () Bool)

(declare-fun tp!1924265 () Bool)

(assert (=> b!6971920 (= e!4190720 (and tp!1924267 tp!1924265))))

(declare-fun b!6971922 () Bool)

(declare-fun tp!1924264 () Bool)

(declare-fun tp!1924266 () Bool)

(assert (=> b!6971922 (= e!4190720 (and tp!1924264 tp!1924266))))

(assert (=> b!6971589 (= tp!1924227 e!4190720)))

(assert (= (and b!6971589 (is-ElementMatch!17128 (reg!17457 r!13765))) b!6971919))

(assert (= (and b!6971589 (is-Concat!25973 (reg!17457 r!13765))) b!6971920))

(assert (= (and b!6971589 (is-Star!17128 (reg!17457 r!13765))) b!6971921))

(assert (= (and b!6971589 (is-Union!17128 (reg!17457 r!13765))) b!6971922))

(declare-fun b!6971927 () Bool)

(declare-fun e!4190723 () Bool)

(declare-fun tp!1924271 () Bool)

(assert (=> b!6971927 (= e!4190723 (and tp_is_empty!43481 tp!1924271))))

(assert (=> b!6971599 (= tp!1924228 e!4190723)))

(assert (= (and b!6971599 (is-Cons!66814 (t!380681 s!9351))) b!6971927))

(declare-fun b!6971928 () Bool)

(declare-fun e!4190724 () Bool)

(assert (=> b!6971928 (= e!4190724 tp_is_empty!43481)))

(declare-fun b!6971930 () Bool)

(declare-fun tp!1924276 () Bool)

(assert (=> b!6971930 (= e!4190724 tp!1924276)))

(declare-fun b!6971929 () Bool)

(declare-fun tp!1924275 () Bool)

(declare-fun tp!1924273 () Bool)

(assert (=> b!6971929 (= e!4190724 (and tp!1924275 tp!1924273))))

(declare-fun b!6971931 () Bool)

(declare-fun tp!1924272 () Bool)

(declare-fun tp!1924274 () Bool)

(assert (=> b!6971931 (= e!4190724 (and tp!1924272 tp!1924274))))

(assert (=> b!6971601 (= tp!1924226 e!4190724)))

(assert (= (and b!6971601 (is-ElementMatch!17128 (h!73261 l!9142))) b!6971928))

(assert (= (and b!6971601 (is-Concat!25973 (h!73261 l!9142))) b!6971929))

(assert (= (and b!6971601 (is-Star!17128 (h!73261 l!9142))) b!6971930))

(assert (= (and b!6971601 (is-Union!17128 (h!73261 l!9142))) b!6971931))

(declare-fun b!6971936 () Bool)

(declare-fun e!4190727 () Bool)

(declare-fun tp!1924281 () Bool)

(declare-fun tp!1924282 () Bool)

(assert (=> b!6971936 (= e!4190727 (and tp!1924281 tp!1924282))))

(assert (=> b!6971601 (= tp!1924229 e!4190727)))

(assert (= (and b!6971601 (is-Cons!66813 (t!380680 l!9142))) b!6971936))

(declare-fun b!6971937 () Bool)

(declare-fun e!4190728 () Bool)

(assert (=> b!6971937 (= e!4190728 tp_is_empty!43481)))

(declare-fun b!6971939 () Bool)

(declare-fun tp!1924287 () Bool)

(assert (=> b!6971939 (= e!4190728 tp!1924287)))

(declare-fun b!6971938 () Bool)

(declare-fun tp!1924286 () Bool)

(declare-fun tp!1924284 () Bool)

(assert (=> b!6971938 (= e!4190728 (and tp!1924286 tp!1924284))))

(declare-fun b!6971940 () Bool)

(declare-fun tp!1924283 () Bool)

(declare-fun tp!1924285 () Bool)

(assert (=> b!6971940 (= e!4190728 (and tp!1924283 tp!1924285))))

(assert (=> b!6971596 (= tp!1924222 e!4190728)))

(assert (= (and b!6971596 (is-ElementMatch!17128 (regOne!34769 r!13765))) b!6971937))

(assert (= (and b!6971596 (is-Concat!25973 (regOne!34769 r!13765))) b!6971938))

(assert (= (and b!6971596 (is-Star!17128 (regOne!34769 r!13765))) b!6971939))

(assert (= (and b!6971596 (is-Union!17128 (regOne!34769 r!13765))) b!6971940))

(declare-fun b!6971941 () Bool)

(declare-fun e!4190729 () Bool)

(assert (=> b!6971941 (= e!4190729 tp_is_empty!43481)))

(declare-fun b!6971943 () Bool)

(declare-fun tp!1924292 () Bool)

(assert (=> b!6971943 (= e!4190729 tp!1924292)))

(declare-fun b!6971942 () Bool)

(declare-fun tp!1924291 () Bool)

(declare-fun tp!1924289 () Bool)

(assert (=> b!6971942 (= e!4190729 (and tp!1924291 tp!1924289))))

(declare-fun b!6971944 () Bool)

(declare-fun tp!1924288 () Bool)

(declare-fun tp!1924290 () Bool)

(assert (=> b!6971944 (= e!4190729 (and tp!1924288 tp!1924290))))

(assert (=> b!6971596 (= tp!1924225 e!4190729)))

(assert (= (and b!6971596 (is-ElementMatch!17128 (regTwo!34769 r!13765))) b!6971941))

(assert (= (and b!6971596 (is-Concat!25973 (regTwo!34769 r!13765))) b!6971942))

(assert (= (and b!6971596 (is-Star!17128 (regTwo!34769 r!13765))) b!6971943))

(assert (= (and b!6971596 (is-Union!17128 (regTwo!34769 r!13765))) b!6971944))

(declare-fun b!6971945 () Bool)

(declare-fun e!4190730 () Bool)

(assert (=> b!6971945 (= e!4190730 tp_is_empty!43481)))

(declare-fun b!6971947 () Bool)

(declare-fun tp!1924297 () Bool)

(assert (=> b!6971947 (= e!4190730 tp!1924297)))

(declare-fun b!6971946 () Bool)

(declare-fun tp!1924296 () Bool)

(declare-fun tp!1924294 () Bool)

(assert (=> b!6971946 (= e!4190730 (and tp!1924296 tp!1924294))))

(declare-fun b!6971948 () Bool)

(declare-fun tp!1924293 () Bool)

(declare-fun tp!1924295 () Bool)

(assert (=> b!6971948 (= e!4190730 (and tp!1924293 tp!1924295))))

(assert (=> b!6971591 (= tp!1924224 e!4190730)))

(assert (= (and b!6971591 (is-ElementMatch!17128 (regOne!34768 r!13765))) b!6971945))

(assert (= (and b!6971591 (is-Concat!25973 (regOne!34768 r!13765))) b!6971946))

(assert (= (and b!6971591 (is-Star!17128 (regOne!34768 r!13765))) b!6971947))

(assert (= (and b!6971591 (is-Union!17128 (regOne!34768 r!13765))) b!6971948))

(declare-fun b!6971949 () Bool)

(declare-fun e!4190731 () Bool)

(assert (=> b!6971949 (= e!4190731 tp_is_empty!43481)))

(declare-fun b!6971951 () Bool)

(declare-fun tp!1924302 () Bool)

(assert (=> b!6971951 (= e!4190731 tp!1924302)))

(declare-fun b!6971950 () Bool)

(declare-fun tp!1924301 () Bool)

(declare-fun tp!1924299 () Bool)

(assert (=> b!6971950 (= e!4190731 (and tp!1924301 tp!1924299))))

(declare-fun b!6971952 () Bool)

(declare-fun tp!1924298 () Bool)

(declare-fun tp!1924300 () Bool)

(assert (=> b!6971952 (= e!4190731 (and tp!1924298 tp!1924300))))

(assert (=> b!6971591 (= tp!1924223 e!4190731)))

(assert (= (and b!6971591 (is-ElementMatch!17128 (regTwo!34768 r!13765))) b!6971949))

(assert (= (and b!6971591 (is-Concat!25973 (regTwo!34768 r!13765))) b!6971950))

(assert (= (and b!6971591 (is-Star!17128 (regTwo!34768 r!13765))) b!6971951))

(assert (= (and b!6971591 (is-Union!17128 (regTwo!34768 r!13765))) b!6971952))

(declare-fun b_lambda!260819 () Bool)

(assert (= b_lambda!260813 (or start!668508 b_lambda!260819)))

(declare-fun bs!1859302 () Bool)

(declare-fun d!2171366 () Bool)

(assert (= bs!1859302 (and d!2171366 start!668508)))

(assert (=> bs!1859302 (= (dynLambda!26642 lambda!397727 (h!73261 l!9142)) (validRegex!8810 (h!73261 l!9142)))))

(declare-fun m!7660148 () Bool)

(assert (=> bs!1859302 m!7660148))

(assert (=> b!6971865 d!2171366))

(declare-fun b_lambda!260821 () Bool)

(assert (= b_lambda!260815 (or start!668508 b_lambda!260821)))

(declare-fun bs!1859303 () Bool)

(declare-fun d!2171368 () Bool)

(assert (= bs!1859303 (and d!2171368 start!668508)))

(assert (=> bs!1859303 (= (dynLambda!26642 lambda!397727 (h!73261 lt!2479653)) (validRegex!8810 (h!73261 lt!2479653)))))

(declare-fun m!7660150 () Bool)

(assert (=> bs!1859303 m!7660150))

(assert (=> b!6971883 d!2171368))

(push 1)

(assert (not b!6971829))

(assert (not b!6971922))

(assert (not b!6971907))

(assert (not b!6971939))

(assert (not b_lambda!260819))

(assert (not b!6971876))

(assert (not b!6971901))

(assert (not b!6971946))

(assert (not d!2171354))

(assert (not b!6971744))

(assert (not b!6971837))

(assert (not b!6971942))

(assert (not bs!1859303))

(assert (not d!2171338))

(assert (not b!6971770))

(assert (not b!6971952))

(assert (not b!6971754))

(assert (not bm!632830))

(assert (not b!6971927))

(assert (not b!6971749))

(assert (not b!6971872))

(assert (not d!2171360))

(assert (not b!6971929))

(assert (not b!6971944))

(assert (not b!6971867))

(assert (not b!6971743))

(assert (not b!6971921))

(assert (not b!6971931))

(assert (not b!6971920))

(assert (not b_lambda!260821))

(assert (not b!6971951))

(assert (not b!6971704))

(assert (not d!2171356))

(assert (not b!6971866))

(assert (not d!2171362))

(assert (not b!6971948))

(assert (not b!6971938))

(assert (not b!6971750))

(assert (not bm!632839))

(assert (not b!6971748))

(assert (not b!6971896))

(assert (not bm!632837))

(assert (not b!6971891))

(assert (not b!6971950))

(assert (not b!6971699))

(assert (not b!6971745))

(assert tp_is_empty!43481)

(assert (not b!6971835))

(assert (not b!6971930))

(assert (not b!6971884))

(assert (not bm!632827))

(assert (not b!6971894))

(assert (not b!6971759))

(assert (not b!6971903))

(assert (not b!6971943))

(assert (not bm!632829))

(assert (not b!6971900))

(assert (not b!6971893))

(assert (not b!6971947))

(assert (not bm!632831))

(assert (not b!6971878))

(assert (not bm!632840))

(assert (not b!6971834))

(assert (not bm!632832))

(assert (not b!6971875))

(assert (not bs!1859302))

(assert (not b!6971838))

(assert (not d!2171350))

(assert (not b!6971902))

(assert (not b!6971890))

(assert (not b!6971873))

(assert (not b!6971742))

(assert (not b!6971908))

(assert (not d!2171340))

(assert (not b!6971765))

(assert (not b!6971906))

(assert (not b!6971936))

(assert (not bm!632828))

(assert (not b!6971840))

(assert (not b!6971940))

(assert (not d!2171330))

(assert (not b!6971885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

