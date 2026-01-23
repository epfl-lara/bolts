; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84556 () Bool)

(assert start!84556)

(declare-fun b!948968 () Bool)

(declare-fun e!614593 () Bool)

(declare-datatypes ((C!5798 0))(
  ( (C!5799 (val!3147 Int)) )
))
(declare-datatypes ((Regex!2614 0))(
  ( (ElementMatch!2614 (c!154517 C!5798)) (Concat!4447 (regOne!5740 Regex!2614) (regTwo!5740 Regex!2614)) (EmptyExpr!2614) (Star!2614 (reg!2943 Regex!2614)) (EmptyLang!2614) (Union!2614 (regOne!5741 Regex!2614) (regTwo!5741 Regex!2614)) )
))
(declare-fun r!15766 () Regex!2614)

(declare-fun validRegex!1083 (Regex!2614) Bool)

(declare-fun removeUselessConcat!283 (Regex!2614) Regex!2614)

(assert (=> b!948968 (= e!614593 (validRegex!1083 (removeUselessConcat!283 r!15766)))))

(declare-fun b!948969 () Bool)

(declare-fun e!614592 () Bool)

(declare-fun tp!292482 () Bool)

(declare-fun tp!292479 () Bool)

(assert (=> b!948969 (= e!614592 (and tp!292482 tp!292479))))

(declare-fun b!948970 () Bool)

(declare-fun tp_is_empty!4871 () Bool)

(assert (=> b!948970 (= e!614592 tp_is_empty!4871)))

(declare-fun b!948972 () Bool)

(declare-fun tp!292480 () Bool)

(declare-fun tp!292481 () Bool)

(assert (=> b!948972 (= e!614592 (and tp!292480 tp!292481))))

(declare-fun b!948973 () Bool)

(declare-fun tp!292478 () Bool)

(assert (=> b!948973 (= e!614592 tp!292478)))

(declare-fun b!948974 () Bool)

(declare-fun e!614594 () Bool)

(declare-fun tp!292477 () Bool)

(assert (=> b!948974 (= e!614594 (and tp_is_empty!4871 tp!292477))))

(declare-fun res!431365 () Bool)

(declare-fun e!614595 () Bool)

(assert (=> start!84556 (=> (not res!431365) (not e!614595))))

(assert (=> start!84556 (= res!431365 (validRegex!1083 r!15766))))

(assert (=> start!84556 e!614595))

(assert (=> start!84556 e!614592))

(assert (=> start!84556 e!614594))

(declare-fun b!948971 () Bool)

(assert (=> b!948971 (= e!614595 (not e!614593))))

(declare-fun res!431366 () Bool)

(assert (=> b!948971 (=> res!431366 e!614593)))

(declare-fun lt!344357 () Bool)

(assert (=> b!948971 (= res!431366 (or lt!344357 (and (is-Concat!4447 r!15766) (is-EmptyExpr!2614 (regOne!5740 r!15766))) (and (is-Concat!4447 r!15766) (is-EmptyExpr!2614 (regTwo!5740 r!15766))) (is-Concat!4447 r!15766) (is-Union!2614 r!15766) (is-Star!2614 r!15766)))))

(declare-datatypes ((List!9844 0))(
  ( (Nil!9828) (Cons!9828 (h!15229 C!5798) (t!100890 List!9844)) )
))
(declare-fun s!10566 () List!9844)

(declare-fun matchRSpec!415 (Regex!2614 List!9844) Bool)

(assert (=> b!948971 (= lt!344357 (matchRSpec!415 r!15766 s!10566))))

(declare-fun matchR!1152 (Regex!2614 List!9844) Bool)

(assert (=> b!948971 (= lt!344357 (matchR!1152 r!15766 s!10566))))

(declare-datatypes ((Unit!14871 0))(
  ( (Unit!14872) )
))
(declare-fun lt!344356 () Unit!14871)

(declare-fun mainMatchTheorem!415 (Regex!2614 List!9844) Unit!14871)

(assert (=> b!948971 (= lt!344356 (mainMatchTheorem!415 r!15766 s!10566))))

(assert (= (and start!84556 res!431365) b!948971))

(assert (= (and b!948971 (not res!431366)) b!948968))

(assert (= (and start!84556 (is-ElementMatch!2614 r!15766)) b!948970))

(assert (= (and start!84556 (is-Concat!4447 r!15766)) b!948972))

(assert (= (and start!84556 (is-Star!2614 r!15766)) b!948973))

(assert (= (and start!84556 (is-Union!2614 r!15766)) b!948969))

(assert (= (and start!84556 (is-Cons!9828 s!10566)) b!948974))

(declare-fun m!1162925 () Bool)

(assert (=> b!948968 m!1162925))

(assert (=> b!948968 m!1162925))

(declare-fun m!1162927 () Bool)

(assert (=> b!948968 m!1162927))

(declare-fun m!1162929 () Bool)

(assert (=> start!84556 m!1162929))

(declare-fun m!1162931 () Bool)

(assert (=> b!948971 m!1162931))

(declare-fun m!1162933 () Bool)

(assert (=> b!948971 m!1162933))

(declare-fun m!1162935 () Bool)

(assert (=> b!948971 m!1162935))

(push 1)

(assert (not b!948972))

(assert (not b!948971))

(assert (not start!84556))

(assert tp_is_empty!4871)

(assert (not b!948968))

(assert (not b!948973))

(assert (not b!948974))

(assert (not b!948969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!949059 () Bool)

(assert (=> b!949059 true))

(assert (=> b!949059 true))

(declare-fun bs!239842 () Bool)

(declare-fun b!949057 () Bool)

(assert (= bs!239842 (and b!949057 b!949059)))

(declare-fun lambda!32526 () Int)

(declare-fun lambda!32525 () Int)

(assert (=> bs!239842 (not (= lambda!32526 lambda!32525))))

(assert (=> b!949057 true))

(assert (=> b!949057 true))

(declare-fun bm!59447 () Bool)

(declare-fun call!59452 () Bool)

(declare-fun isEmpty!6093 (List!9844) Bool)

(assert (=> bm!59447 (= call!59452 (isEmpty!6093 s!10566))))

(declare-fun b!949050 () Bool)

(declare-fun res!431396 () Bool)

(declare-fun e!614644 () Bool)

(assert (=> b!949050 (=> res!431396 e!614644)))

(assert (=> b!949050 (= res!431396 call!59452)))

(declare-fun e!614643 () Bool)

(assert (=> b!949050 (= e!614643 e!614644)))

(declare-fun b!949051 () Bool)

(declare-fun e!614646 () Bool)

(declare-fun e!614645 () Bool)

(assert (=> b!949051 (= e!614646 e!614645)))

(declare-fun res!431397 () Bool)

(assert (=> b!949051 (= res!431397 (matchRSpec!415 (regOne!5741 r!15766) s!10566))))

(assert (=> b!949051 (=> res!431397 e!614645)))

(declare-fun b!949052 () Bool)

(assert (=> b!949052 (= e!614645 (matchRSpec!415 (regTwo!5741 r!15766) s!10566))))

(declare-fun b!949053 () Bool)

(declare-fun e!614642 () Bool)

(assert (=> b!949053 (= e!614642 call!59452)))

(declare-fun b!949054 () Bool)

(assert (=> b!949054 (= e!614646 e!614643)))

(declare-fun c!154535 () Bool)

(assert (=> b!949054 (= c!154535 (is-Star!2614 r!15766))))

(declare-fun b!949055 () Bool)

(declare-fun c!154536 () Bool)

(assert (=> b!949055 (= c!154536 (is-ElementMatch!2614 r!15766))))

(declare-fun e!614641 () Bool)

(declare-fun e!614640 () Bool)

(assert (=> b!949055 (= e!614641 e!614640)))

(declare-fun d!283543 () Bool)

(declare-fun c!154538 () Bool)

(assert (=> d!283543 (= c!154538 (is-EmptyExpr!2614 r!15766))))

(assert (=> d!283543 (= (matchRSpec!415 r!15766 s!10566) e!614642)))

(declare-fun b!949056 () Bool)

(declare-fun c!154537 () Bool)

(assert (=> b!949056 (= c!154537 (is-Union!2614 r!15766))))

(assert (=> b!949056 (= e!614640 e!614646)))

(declare-fun call!59453 () Bool)

(assert (=> b!949057 (= e!614643 call!59453)))

(declare-fun b!949058 () Bool)

(assert (=> b!949058 (= e!614642 e!614641)))

(declare-fun res!431395 () Bool)

(assert (=> b!949058 (= res!431395 (not (is-EmptyLang!2614 r!15766)))))

(assert (=> b!949058 (=> (not res!431395) (not e!614641))))

(declare-fun bm!59448 () Bool)

(declare-fun Exists!365 (Int) Bool)

(assert (=> bm!59448 (= call!59453 (Exists!365 (ite c!154535 lambda!32525 lambda!32526)))))

(assert (=> b!949059 (= e!614644 call!59453)))

(declare-fun b!949060 () Bool)

(assert (=> b!949060 (= e!614640 (= s!10566 (Cons!9828 (c!154517 r!15766) Nil!9828)))))

(assert (= (and d!283543 c!154538) b!949053))

(assert (= (and d!283543 (not c!154538)) b!949058))

(assert (= (and b!949058 res!431395) b!949055))

(assert (= (and b!949055 c!154536) b!949060))

(assert (= (and b!949055 (not c!154536)) b!949056))

(assert (= (and b!949056 c!154537) b!949051))

(assert (= (and b!949056 (not c!154537)) b!949054))

(assert (= (and b!949051 (not res!431397)) b!949052))

(assert (= (and b!949054 c!154535) b!949050))

(assert (= (and b!949054 (not c!154535)) b!949057))

(assert (= (and b!949050 (not res!431396)) b!949059))

(assert (= (or b!949059 b!949057) bm!59448))

(assert (= (or b!949053 b!949050) bm!59447))

(declare-fun m!1162949 () Bool)

(assert (=> bm!59447 m!1162949))

(declare-fun m!1162951 () Bool)

(assert (=> b!949051 m!1162951))

(declare-fun m!1162953 () Bool)

(assert (=> b!949052 m!1162953))

(declare-fun m!1162955 () Bool)

(assert (=> bm!59448 m!1162955))

(assert (=> b!948971 d!283543))

(declare-fun b!949093 () Bool)

(declare-fun e!614666 () Bool)

(declare-fun lt!344366 () Bool)

(assert (=> b!949093 (= e!614666 (not lt!344366))))

(declare-fun b!949094 () Bool)

(declare-fun e!614662 () Bool)

(declare-fun nullable!770 (Regex!2614) Bool)

(assert (=> b!949094 (= e!614662 (nullable!770 r!15766))))

(declare-fun b!949095 () Bool)

(declare-fun e!614665 () Bool)

(declare-fun head!1732 (List!9844) C!5798)

(assert (=> b!949095 (= e!614665 (= (head!1732 s!10566) (c!154517 r!15766)))))

(declare-fun b!949096 () Bool)

(declare-fun res!431416 () Bool)

(declare-fun e!614664 () Bool)

(assert (=> b!949096 (=> res!431416 e!614664)))

(declare-fun tail!1294 (List!9844) List!9844)

(assert (=> b!949096 (= res!431416 (not (isEmpty!6093 (tail!1294 s!10566))))))

(declare-fun d!283547 () Bool)

(declare-fun e!614663 () Bool)

(assert (=> d!283547 e!614663))

(declare-fun c!154546 () Bool)

(assert (=> d!283547 (= c!154546 (is-EmptyExpr!2614 r!15766))))

(assert (=> d!283547 (= lt!344366 e!614662)))

(declare-fun c!154545 () Bool)

(assert (=> d!283547 (= c!154545 (isEmpty!6093 s!10566))))

(assert (=> d!283547 (validRegex!1083 r!15766)))

(assert (=> d!283547 (= (matchR!1152 r!15766 s!10566) lt!344366)))

(declare-fun b!949097 () Bool)

(assert (=> b!949097 (= e!614663 e!614666)))

(declare-fun c!154547 () Bool)

(assert (=> b!949097 (= c!154547 (is-EmptyLang!2614 r!15766))))

(declare-fun b!949098 () Bool)

(declare-fun res!431419 () Bool)

(assert (=> b!949098 (=> (not res!431419) (not e!614665))))

(assert (=> b!949098 (= res!431419 (isEmpty!6093 (tail!1294 s!10566)))))

(declare-fun b!949099 () Bool)

(declare-fun res!431414 () Bool)

(assert (=> b!949099 (=> (not res!431414) (not e!614665))))

(declare-fun call!59456 () Bool)

(assert (=> b!949099 (= res!431414 (not call!59456))))

(declare-fun b!949100 () Bool)

(assert (=> b!949100 (= e!614663 (= lt!344366 call!59456))))

(declare-fun b!949101 () Bool)

(declare-fun derivativeStep!579 (Regex!2614 C!5798) Regex!2614)

(assert (=> b!949101 (= e!614662 (matchR!1152 (derivativeStep!579 r!15766 (head!1732 s!10566)) (tail!1294 s!10566)))))

(declare-fun b!949102 () Bool)

(declare-fun e!614661 () Bool)

(declare-fun e!614667 () Bool)

(assert (=> b!949102 (= e!614661 e!614667)))

(declare-fun res!431415 () Bool)

(assert (=> b!949102 (=> (not res!431415) (not e!614667))))

(assert (=> b!949102 (= res!431415 (not lt!344366))))

(declare-fun b!949103 () Bool)

(declare-fun res!431418 () Bool)

(assert (=> b!949103 (=> res!431418 e!614661)))

(assert (=> b!949103 (= res!431418 (not (is-ElementMatch!2614 r!15766)))))

(assert (=> b!949103 (= e!614666 e!614661)))

(declare-fun b!949104 () Bool)

(assert (=> b!949104 (= e!614667 e!614664)))

(declare-fun res!431421 () Bool)

(assert (=> b!949104 (=> res!431421 e!614664)))

(assert (=> b!949104 (= res!431421 call!59456)))

(declare-fun b!949105 () Bool)

(declare-fun res!431417 () Bool)

(assert (=> b!949105 (=> res!431417 e!614661)))

(assert (=> b!949105 (= res!431417 e!614665)))

(declare-fun res!431420 () Bool)

(assert (=> b!949105 (=> (not res!431420) (not e!614665))))

(assert (=> b!949105 (= res!431420 lt!344366)))

(declare-fun b!949106 () Bool)

(assert (=> b!949106 (= e!614664 (not (= (head!1732 s!10566) (c!154517 r!15766))))))

(declare-fun bm!59451 () Bool)

(assert (=> bm!59451 (= call!59456 (isEmpty!6093 s!10566))))

(assert (= (and d!283547 c!154545) b!949094))

(assert (= (and d!283547 (not c!154545)) b!949101))

(assert (= (and d!283547 c!154546) b!949100))

(assert (= (and d!283547 (not c!154546)) b!949097))

(assert (= (and b!949097 c!154547) b!949093))

(assert (= (and b!949097 (not c!154547)) b!949103))

(assert (= (and b!949103 (not res!431418)) b!949105))

(assert (= (and b!949105 res!431420) b!949099))

(assert (= (and b!949099 res!431414) b!949098))

(assert (= (and b!949098 res!431419) b!949095))

(assert (= (and b!949105 (not res!431417)) b!949102))

(assert (= (and b!949102 res!431415) b!949104))

(assert (= (and b!949104 (not res!431421)) b!949096))

(assert (= (and b!949096 (not res!431416)) b!949106))

(assert (= (or b!949100 b!949099 b!949104) bm!59451))

(declare-fun m!1162957 () Bool)

(assert (=> b!949096 m!1162957))

(assert (=> b!949096 m!1162957))

(declare-fun m!1162959 () Bool)

(assert (=> b!949096 m!1162959))

(assert (=> b!949098 m!1162957))

(assert (=> b!949098 m!1162957))

(assert (=> b!949098 m!1162959))

(assert (=> d!283547 m!1162949))

(assert (=> d!283547 m!1162929))

(declare-fun m!1162961 () Bool)

(assert (=> b!949095 m!1162961))

(assert (=> bm!59451 m!1162949))

(declare-fun m!1162963 () Bool)

(assert (=> b!949094 m!1162963))

(assert (=> b!949106 m!1162961))

(assert (=> b!949101 m!1162961))

(assert (=> b!949101 m!1162961))

(declare-fun m!1162965 () Bool)

(assert (=> b!949101 m!1162965))

(assert (=> b!949101 m!1162957))

(assert (=> b!949101 m!1162965))

(assert (=> b!949101 m!1162957))

(declare-fun m!1162967 () Bool)

(assert (=> b!949101 m!1162967))

(assert (=> b!948971 d!283547))

(declare-fun d!283549 () Bool)

(assert (=> d!283549 (= (matchR!1152 r!15766 s!10566) (matchRSpec!415 r!15766 s!10566))))

(declare-fun lt!344369 () Unit!14871)

(declare-fun choose!5911 (Regex!2614 List!9844) Unit!14871)

(assert (=> d!283549 (= lt!344369 (choose!5911 r!15766 s!10566))))

(assert (=> d!283549 (validRegex!1083 r!15766)))

(assert (=> d!283549 (= (mainMatchTheorem!415 r!15766 s!10566) lt!344369)))

(declare-fun bs!239843 () Bool)

(assert (= bs!239843 d!283549))

(assert (=> bs!239843 m!1162933))

(assert (=> bs!239843 m!1162931))

(declare-fun m!1162969 () Bool)

(assert (=> bs!239843 m!1162969))

(assert (=> bs!239843 m!1162929))

(assert (=> b!948971 d!283549))

(declare-fun b!949125 () Bool)

(declare-fun res!431433 () Bool)

(declare-fun e!614687 () Bool)

(assert (=> b!949125 (=> (not res!431433) (not e!614687))))

(declare-fun call!59465 () Bool)

(assert (=> b!949125 (= res!431433 call!59465)))

(declare-fun e!614683 () Bool)

(assert (=> b!949125 (= e!614683 e!614687)))

(declare-fun b!949126 () Bool)

(declare-fun call!59464 () Bool)

(assert (=> b!949126 (= e!614687 call!59464)))

(declare-fun b!949127 () Bool)

(declare-fun e!614685 () Bool)

(declare-fun call!59463 () Bool)

(assert (=> b!949127 (= e!614685 call!59463)))

(declare-fun d!283551 () Bool)

(declare-fun res!431435 () Bool)

(declare-fun e!614682 () Bool)

(assert (=> d!283551 (=> res!431435 e!614682)))

(assert (=> d!283551 (= res!431435 (is-ElementMatch!2614 (removeUselessConcat!283 r!15766)))))

(assert (=> d!283551 (= (validRegex!1083 (removeUselessConcat!283 r!15766)) e!614682)))

(declare-fun b!949128 () Bool)

(declare-fun e!614684 () Bool)

(assert (=> b!949128 (= e!614684 e!614683)))

(declare-fun c!154552 () Bool)

(assert (=> b!949128 (= c!154552 (is-Union!2614 (removeUselessConcat!283 r!15766)))))

(declare-fun bm!59458 () Bool)

(assert (=> bm!59458 (= call!59464 call!59463)))

(declare-fun b!949129 () Bool)

(assert (=> b!949129 (= e!614682 e!614684)))

(declare-fun c!154553 () Bool)

(assert (=> b!949129 (= c!154553 (is-Star!2614 (removeUselessConcat!283 r!15766)))))

(declare-fun b!949130 () Bool)

(assert (=> b!949130 (= e!614684 e!614685)))

(declare-fun res!431436 () Bool)

(assert (=> b!949130 (= res!431436 (not (nullable!770 (reg!2943 (removeUselessConcat!283 r!15766)))))))

(assert (=> b!949130 (=> (not res!431436) (not e!614685))))

(declare-fun bm!59459 () Bool)

(assert (=> bm!59459 (= call!59465 (validRegex!1083 (ite c!154552 (regOne!5741 (removeUselessConcat!283 r!15766)) (regOne!5740 (removeUselessConcat!283 r!15766)))))))

(declare-fun bm!59460 () Bool)

(assert (=> bm!59460 (= call!59463 (validRegex!1083 (ite c!154553 (reg!2943 (removeUselessConcat!283 r!15766)) (ite c!154552 (regTwo!5741 (removeUselessConcat!283 r!15766)) (regTwo!5740 (removeUselessConcat!283 r!15766))))))))

(declare-fun b!949131 () Bool)

(declare-fun e!614686 () Bool)

(declare-fun e!614688 () Bool)

(assert (=> b!949131 (= e!614686 e!614688)))

(declare-fun res!431434 () Bool)

(assert (=> b!949131 (=> (not res!431434) (not e!614688))))

(assert (=> b!949131 (= res!431434 call!59465)))

(declare-fun b!949132 () Bool)

(assert (=> b!949132 (= e!614688 call!59464)))

(declare-fun b!949133 () Bool)

(declare-fun res!431432 () Bool)

(assert (=> b!949133 (=> res!431432 e!614686)))

(assert (=> b!949133 (= res!431432 (not (is-Concat!4447 (removeUselessConcat!283 r!15766))))))

(assert (=> b!949133 (= e!614683 e!614686)))

(assert (= (and d!283551 (not res!431435)) b!949129))

(assert (= (and b!949129 c!154553) b!949130))

(assert (= (and b!949129 (not c!154553)) b!949128))

(assert (= (and b!949130 res!431436) b!949127))

(assert (= (and b!949128 c!154552) b!949125))

(assert (= (and b!949128 (not c!154552)) b!949133))

(assert (= (and b!949125 res!431433) b!949126))

(assert (= (and b!949133 (not res!431432)) b!949131))

(assert (= (and b!949131 res!431434) b!949132))

(assert (= (or b!949126 b!949132) bm!59458))

(assert (= (or b!949125 b!949131) bm!59459))

(assert (= (or b!949127 bm!59458) bm!59460))

(declare-fun m!1162971 () Bool)

(assert (=> b!949130 m!1162971))

(declare-fun m!1162973 () Bool)

(assert (=> bm!59459 m!1162973))

(declare-fun m!1162975 () Bool)

(assert (=> bm!59460 m!1162975))

(assert (=> b!948968 d!283551))

(declare-fun b!949156 () Bool)

(declare-fun c!154565 () Bool)

(assert (=> b!949156 (= c!154565 (is-Concat!4447 r!15766))))

(declare-fun e!614701 () Regex!2614)

(declare-fun e!614703 () Regex!2614)

(assert (=> b!949156 (= e!614701 e!614703)))

(declare-fun b!949157 () Bool)

(declare-fun e!614702 () Regex!2614)

(assert (=> b!949157 (= e!614702 r!15766)))

(declare-fun c!154567 () Bool)

(declare-fun call!59477 () Regex!2614)

(declare-fun c!154566 () Bool)

(declare-fun bm!59471 () Bool)

(assert (=> bm!59471 (= call!59477 (removeUselessConcat!283 (ite c!154566 (regTwo!5740 r!15766) (ite c!154567 (regOne!5740 r!15766) (ite c!154565 (regTwo!5740 r!15766) (regOne!5741 r!15766))))))))

(declare-fun call!59480 () Regex!2614)

(declare-fun bm!59472 () Bool)

(declare-fun c!154568 () Bool)

(assert (=> bm!59472 (= call!59480 (removeUselessConcat!283 (ite c!154565 (regOne!5740 r!15766) (ite c!154568 (regTwo!5741 r!15766) (reg!2943 r!15766)))))))

(declare-fun b!949158 () Bool)

(declare-fun c!154564 () Bool)

(assert (=> b!949158 (= c!154564 (is-Star!2614 r!15766))))

(declare-fun e!614705 () Regex!2614)

(assert (=> b!949158 (= e!614705 e!614702)))

(declare-fun bm!59473 () Bool)

(declare-fun call!59479 () Regex!2614)

(declare-fun call!59478 () Regex!2614)

(assert (=> bm!59473 (= call!59479 call!59478)))

(declare-fun b!949159 () Bool)

(declare-fun call!59476 () Regex!2614)

(assert (=> b!949159 (= e!614705 (Union!2614 call!59479 call!59476))))

(declare-fun b!949160 () Bool)

(declare-fun e!614706 () Bool)

(declare-fun lt!344372 () Regex!2614)

(assert (=> b!949160 (= e!614706 (= (nullable!770 lt!344372) (nullable!770 r!15766)))))

(declare-fun b!949161 () Bool)

(declare-fun e!614704 () Regex!2614)

(assert (=> b!949161 (= e!614704 e!614701)))

(assert (=> b!949161 (= c!154567 (and (is-Concat!4447 r!15766) (is-EmptyExpr!2614 (regTwo!5740 r!15766))))))

(declare-fun bm!59474 () Bool)

(assert (=> bm!59474 (= call!59476 call!59480)))

(declare-fun b!949162 () Bool)

(assert (=> b!949162 (= e!614702 (Star!2614 call!59476))))

(declare-fun b!949163 () Bool)

(assert (=> b!949163 (= e!614703 (Concat!4447 call!59480 call!59479))))

(declare-fun d!283553 () Bool)

(assert (=> d!283553 e!614706))

(declare-fun res!431439 () Bool)

(assert (=> d!283553 (=> (not res!431439) (not e!614706))))

(assert (=> d!283553 (= res!431439 (validRegex!1083 lt!344372))))

(assert (=> d!283553 (= lt!344372 e!614704)))

(assert (=> d!283553 (= c!154566 (and (is-Concat!4447 r!15766) (is-EmptyExpr!2614 (regOne!5740 r!15766))))))

(assert (=> d!283553 (validRegex!1083 r!15766)))

(assert (=> d!283553 (= (removeUselessConcat!283 r!15766) lt!344372)))

(declare-fun bm!59475 () Bool)

(assert (=> bm!59475 (= call!59478 call!59477)))

(declare-fun b!949164 () Bool)

(assert (=> b!949164 (= e!614701 call!59478)))

(declare-fun b!949165 () Bool)

(assert (=> b!949165 (= e!614703 e!614705)))

(assert (=> b!949165 (= c!154568 (is-Union!2614 r!15766))))

(declare-fun b!949166 () Bool)

(assert (=> b!949166 (= e!614704 call!59477)))

(assert (= (and d!283553 c!154566) b!949166))

(assert (= (and d!283553 (not c!154566)) b!949161))

(assert (= (and b!949161 c!154567) b!949164))

(assert (= (and b!949161 (not c!154567)) b!949156))

(assert (= (and b!949156 c!154565) b!949163))

(assert (= (and b!949156 (not c!154565)) b!949165))

(assert (= (and b!949165 c!154568) b!949159))

(assert (= (and b!949165 (not c!154568)) b!949158))

(assert (= (and b!949158 c!154564) b!949162))

(assert (= (and b!949158 (not c!154564)) b!949157))

(assert (= (or b!949159 b!949162) bm!59474))

(assert (= (or b!949163 b!949159) bm!59473))

(assert (= (or b!949163 bm!59474) bm!59472))

(assert (= (or b!949164 bm!59473) bm!59475))

(assert (= (or b!949166 bm!59475) bm!59471))

(assert (= (and d!283553 res!431439) b!949160))

(declare-fun m!1162977 () Bool)

(assert (=> bm!59471 m!1162977))

(declare-fun m!1162979 () Bool)

(assert (=> bm!59472 m!1162979))

(declare-fun m!1162981 () Bool)

(assert (=> b!949160 m!1162981))

(assert (=> b!949160 m!1162963))

(declare-fun m!1162983 () Bool)

(assert (=> d!283553 m!1162983))

(assert (=> d!283553 m!1162929))

(assert (=> b!948968 d!283553))

(declare-fun b!949167 () Bool)

(declare-fun res!431441 () Bool)

(declare-fun e!614712 () Bool)

(assert (=> b!949167 (=> (not res!431441) (not e!614712))))

(declare-fun call!59483 () Bool)

(assert (=> b!949167 (= res!431441 call!59483)))

(declare-fun e!614708 () Bool)

(assert (=> b!949167 (= e!614708 e!614712)))

(declare-fun b!949168 () Bool)

(declare-fun call!59482 () Bool)

(assert (=> b!949168 (= e!614712 call!59482)))

(declare-fun b!949169 () Bool)

(declare-fun e!614710 () Bool)

(declare-fun call!59481 () Bool)

(assert (=> b!949169 (= e!614710 call!59481)))

(declare-fun d!283555 () Bool)

(declare-fun res!431443 () Bool)

(declare-fun e!614707 () Bool)

(assert (=> d!283555 (=> res!431443 e!614707)))

(assert (=> d!283555 (= res!431443 (is-ElementMatch!2614 r!15766))))

(assert (=> d!283555 (= (validRegex!1083 r!15766) e!614707)))

(declare-fun b!949170 () Bool)

(declare-fun e!614709 () Bool)

(assert (=> b!949170 (= e!614709 e!614708)))

(declare-fun c!154569 () Bool)

(assert (=> b!949170 (= c!154569 (is-Union!2614 r!15766))))

(declare-fun bm!59476 () Bool)

(assert (=> bm!59476 (= call!59482 call!59481)))

(declare-fun b!949171 () Bool)

(assert (=> b!949171 (= e!614707 e!614709)))

(declare-fun c!154570 () Bool)

(assert (=> b!949171 (= c!154570 (is-Star!2614 r!15766))))

(declare-fun b!949172 () Bool)

(assert (=> b!949172 (= e!614709 e!614710)))

(declare-fun res!431444 () Bool)

(assert (=> b!949172 (= res!431444 (not (nullable!770 (reg!2943 r!15766))))))

(assert (=> b!949172 (=> (not res!431444) (not e!614710))))

(declare-fun bm!59477 () Bool)

(assert (=> bm!59477 (= call!59483 (validRegex!1083 (ite c!154569 (regOne!5741 r!15766) (regOne!5740 r!15766))))))

(declare-fun bm!59478 () Bool)

(assert (=> bm!59478 (= call!59481 (validRegex!1083 (ite c!154570 (reg!2943 r!15766) (ite c!154569 (regTwo!5741 r!15766) (regTwo!5740 r!15766)))))))

(declare-fun b!949173 () Bool)

(declare-fun e!614711 () Bool)

(declare-fun e!614713 () Bool)

(assert (=> b!949173 (= e!614711 e!614713)))

(declare-fun res!431442 () Bool)

(assert (=> b!949173 (=> (not res!431442) (not e!614713))))

(assert (=> b!949173 (= res!431442 call!59483)))

(declare-fun b!949174 () Bool)

(assert (=> b!949174 (= e!614713 call!59482)))

(declare-fun b!949175 () Bool)

(declare-fun res!431440 () Bool)

(assert (=> b!949175 (=> res!431440 e!614711)))

(assert (=> b!949175 (= res!431440 (not (is-Concat!4447 r!15766)))))

(assert (=> b!949175 (= e!614708 e!614711)))

(assert (= (and d!283555 (not res!431443)) b!949171))

(assert (= (and b!949171 c!154570) b!949172))

(assert (= (and b!949171 (not c!154570)) b!949170))

(assert (= (and b!949172 res!431444) b!949169))

(assert (= (and b!949170 c!154569) b!949167))

(assert (= (and b!949170 (not c!154569)) b!949175))

(assert (= (and b!949167 res!431441) b!949168))

(assert (= (and b!949175 (not res!431440)) b!949173))

(assert (= (and b!949173 res!431442) b!949174))

(assert (= (or b!949168 b!949174) bm!59476))

(assert (= (or b!949167 b!949173) bm!59477))

(assert (= (or b!949169 bm!59476) bm!59478))

(declare-fun m!1162985 () Bool)

(assert (=> b!949172 m!1162985))

(declare-fun m!1162987 () Bool)

(assert (=> bm!59477 m!1162987))

(declare-fun m!1162989 () Bool)

(assert (=> bm!59478 m!1162989))

(assert (=> start!84556 d!283555))

(declare-fun b!949180 () Bool)

(declare-fun e!614716 () Bool)

(declare-fun tp!292503 () Bool)

(assert (=> b!949180 (= e!614716 (and tp_is_empty!4871 tp!292503))))

(assert (=> b!948974 (= tp!292477 e!614716)))

(assert (= (and b!948974 (is-Cons!9828 (t!100890 s!10566))) b!949180))

(declare-fun b!949193 () Bool)

(declare-fun e!614719 () Bool)

(declare-fun tp!292515 () Bool)

(assert (=> b!949193 (= e!614719 tp!292515)))

(declare-fun b!949191 () Bool)

(assert (=> b!949191 (= e!614719 tp_is_empty!4871)))

(declare-fun b!949194 () Bool)

(declare-fun tp!292516 () Bool)

(declare-fun tp!292514 () Bool)

(assert (=> b!949194 (= e!614719 (and tp!292516 tp!292514))))

(assert (=> b!948969 (= tp!292482 e!614719)))

(declare-fun b!949192 () Bool)

(declare-fun tp!292518 () Bool)

(declare-fun tp!292517 () Bool)

(assert (=> b!949192 (= e!614719 (and tp!292518 tp!292517))))

(assert (= (and b!948969 (is-ElementMatch!2614 (regOne!5741 r!15766))) b!949191))

(assert (= (and b!948969 (is-Concat!4447 (regOne!5741 r!15766))) b!949192))

(assert (= (and b!948969 (is-Star!2614 (regOne!5741 r!15766))) b!949193))

(assert (= (and b!948969 (is-Union!2614 (regOne!5741 r!15766))) b!949194))

(declare-fun b!949197 () Bool)

(declare-fun e!614720 () Bool)

(declare-fun tp!292520 () Bool)

(assert (=> b!949197 (= e!614720 tp!292520)))

(declare-fun b!949195 () Bool)

(assert (=> b!949195 (= e!614720 tp_is_empty!4871)))

(declare-fun b!949198 () Bool)

(declare-fun tp!292521 () Bool)

(declare-fun tp!292519 () Bool)

(assert (=> b!949198 (= e!614720 (and tp!292521 tp!292519))))

(assert (=> b!948969 (= tp!292479 e!614720)))

(declare-fun b!949196 () Bool)

(declare-fun tp!292523 () Bool)

(declare-fun tp!292522 () Bool)

(assert (=> b!949196 (= e!614720 (and tp!292523 tp!292522))))

(assert (= (and b!948969 (is-ElementMatch!2614 (regTwo!5741 r!15766))) b!949195))

(assert (= (and b!948969 (is-Concat!4447 (regTwo!5741 r!15766))) b!949196))

(assert (= (and b!948969 (is-Star!2614 (regTwo!5741 r!15766))) b!949197))

(assert (= (and b!948969 (is-Union!2614 (regTwo!5741 r!15766))) b!949198))

(declare-fun b!949201 () Bool)

(declare-fun e!614721 () Bool)

(declare-fun tp!292525 () Bool)

(assert (=> b!949201 (= e!614721 tp!292525)))

(declare-fun b!949199 () Bool)

(assert (=> b!949199 (= e!614721 tp_is_empty!4871)))

(declare-fun b!949202 () Bool)

(declare-fun tp!292526 () Bool)

(declare-fun tp!292524 () Bool)

(assert (=> b!949202 (= e!614721 (and tp!292526 tp!292524))))

(assert (=> b!948972 (= tp!292480 e!614721)))

(declare-fun b!949200 () Bool)

(declare-fun tp!292528 () Bool)

(declare-fun tp!292527 () Bool)

(assert (=> b!949200 (= e!614721 (and tp!292528 tp!292527))))

(assert (= (and b!948972 (is-ElementMatch!2614 (regOne!5740 r!15766))) b!949199))

(assert (= (and b!948972 (is-Concat!4447 (regOne!5740 r!15766))) b!949200))

(assert (= (and b!948972 (is-Star!2614 (regOne!5740 r!15766))) b!949201))

(assert (= (and b!948972 (is-Union!2614 (regOne!5740 r!15766))) b!949202))

(declare-fun b!949205 () Bool)

(declare-fun e!614722 () Bool)

(declare-fun tp!292530 () Bool)

(assert (=> b!949205 (= e!614722 tp!292530)))

(declare-fun b!949203 () Bool)

(assert (=> b!949203 (= e!614722 tp_is_empty!4871)))

(declare-fun b!949206 () Bool)

(declare-fun tp!292531 () Bool)

(declare-fun tp!292529 () Bool)

(assert (=> b!949206 (= e!614722 (and tp!292531 tp!292529))))

(assert (=> b!948972 (= tp!292481 e!614722)))

(declare-fun b!949204 () Bool)

(declare-fun tp!292533 () Bool)

(declare-fun tp!292532 () Bool)

(assert (=> b!949204 (= e!614722 (and tp!292533 tp!292532))))

(assert (= (and b!948972 (is-ElementMatch!2614 (regTwo!5740 r!15766))) b!949203))

(assert (= (and b!948972 (is-Concat!4447 (regTwo!5740 r!15766))) b!949204))

(assert (= (and b!948972 (is-Star!2614 (regTwo!5740 r!15766))) b!949205))

(assert (= (and b!948972 (is-Union!2614 (regTwo!5740 r!15766))) b!949206))

(declare-fun b!949209 () Bool)

(declare-fun e!614723 () Bool)

(declare-fun tp!292535 () Bool)

(assert (=> b!949209 (= e!614723 tp!292535)))

(declare-fun b!949207 () Bool)

(assert (=> b!949207 (= e!614723 tp_is_empty!4871)))

(declare-fun b!949210 () Bool)

(declare-fun tp!292536 () Bool)

(declare-fun tp!292534 () Bool)

(assert (=> b!949210 (= e!614723 (and tp!292536 tp!292534))))

(assert (=> b!948973 (= tp!292478 e!614723)))

(declare-fun b!949208 () Bool)

(declare-fun tp!292538 () Bool)

(declare-fun tp!292537 () Bool)

(assert (=> b!949208 (= e!614723 (and tp!292538 tp!292537))))

(assert (= (and b!948973 (is-ElementMatch!2614 (reg!2943 r!15766))) b!949207))

(assert (= (and b!948973 (is-Concat!4447 (reg!2943 r!15766))) b!949208))

(assert (= (and b!948973 (is-Star!2614 (reg!2943 r!15766))) b!949209))

(assert (= (and b!948973 (is-Union!2614 (reg!2943 r!15766))) b!949210))

(push 1)

(assert (not b!949172))

(assert (not b!949106))

(assert (not b!949193))

(assert (not b!949192))

(assert (not b!949210))

(assert (not b!949197))

(assert (not b!949209))

(assert (not d!283553))

(assert (not bm!59459))

(assert (not b!949095))

(assert (not b!949101))

(assert (not d!283547))

(assert (not b!949180))

(assert (not bm!59448))

(assert (not bm!59460))

(assert (not b!949196))

(assert (not b!949094))

(assert (not b!949198))

(assert (not b!949098))

(assert (not b!949200))

(assert (not bm!59472))

(assert (not b!949194))

(assert (not bm!59451))

(assert (not bm!59447))

(assert (not d!283549))

(assert (not b!949202))

(assert (not b!949206))

(assert (not b!949208))

(assert (not b!949160))

(assert (not b!949051))

(assert (not b!949130))

(assert (not b!949052))

(assert (not b!949204))

(assert (not b!949096))

(assert (not bm!59477))

(assert (not b!949201))

(assert tp_is_empty!4871)

(assert (not bm!59478))

(assert (not b!949205))

(assert (not bm!59471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

