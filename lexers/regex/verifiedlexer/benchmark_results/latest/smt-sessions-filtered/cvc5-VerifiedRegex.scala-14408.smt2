; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!750950 () Bool)

(assert start!750950)

(declare-fun b!7961637 () Bool)

(declare-datatypes ((Unit!170038 0))(
  ( (Unit!170039) )
))
(declare-fun e!4695177 () Unit!170038)

(declare-fun Unit!170040 () Unit!170038)

(assert (=> b!7961637 (= e!4695177 Unit!170040)))

(declare-fun lt!2703545 () Unit!170038)

(declare-datatypes ((C!43330 0))(
  ( (C!43331 (val!32213 Int)) )
))
(declare-datatypes ((List!74725 0))(
  ( (Nil!74601) (Cons!74601 (h!81049 C!43330) (t!390468 List!74725)) )
))
(declare-fun input!7927 () List!74725)

(declare-fun lemmaIsPrefixRefl!4064 (List!74725 List!74725) Unit!170038)

(assert (=> b!7961637 (= lt!2703545 (lemmaIsPrefixRefl!4064 input!7927 input!7927))))

(declare-fun isPrefix!6596 (List!74725 List!74725) Bool)

(assert (=> b!7961637 (isPrefix!6596 input!7927 input!7927)))

(declare-fun lt!2703544 () Unit!170038)

(declare-fun testedP!447 () List!74725)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1644 (List!74725 List!74725 List!74725) Unit!170038)

(assert (=> b!7961637 (= lt!2703544 (lemmaIsPrefixSameLengthThenSameList!1644 input!7927 testedP!447 input!7927))))

(assert (=> b!7961637 false))

(declare-fun b!7961639 () Bool)

(declare-fun e!4695178 () Bool)

(declare-fun tp_is_empty!53535 () Bool)

(declare-fun tp!2372231 () Bool)

(assert (=> b!7961639 (= e!4695178 (and tp_is_empty!53535 tp!2372231))))

(declare-fun b!7961640 () Bool)

(declare-fun e!4695183 () Bool)

(declare-fun e!4695180 () Bool)

(assert (=> b!7961640 (= e!4695183 e!4695180)))

(declare-fun res!3155434 () Bool)

(assert (=> b!7961640 (=> res!3155434 e!4695180)))

(declare-datatypes ((Regex!21496 0))(
  ( (ElementMatch!21496 (c!1462114 C!43330)) (Concat!30495 (regOne!43504 Regex!21496) (regTwo!43504 Regex!21496)) (EmptyExpr!21496) (Star!21496 (reg!21825 Regex!21496)) (EmptyLang!21496) (Union!21496 (regOne!43505 Regex!21496) (regTwo!43505 Regex!21496)) )
))
(declare-fun r!24602 () Regex!21496)

(declare-fun nullable!9597 (Regex!21496) Bool)

(assert (=> b!7961640 (= res!3155434 (not (nullable!9597 r!24602)))))

(declare-fun lt!2703539 () List!74725)

(assert (=> b!7961640 (isPrefix!6596 lt!2703539 input!7927)))

(declare-fun lt!2703536 () Unit!170038)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1323 (List!74725 List!74725) Unit!170038)

(assert (=> b!7961640 (= lt!2703536 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 testedP!447 input!7927))))

(declare-fun lt!2703542 () C!43330)

(declare-fun ++!18366 (List!74725 List!74725) List!74725)

(assert (=> b!7961640 (= lt!2703539 (++!18366 testedP!447 (Cons!74601 lt!2703542 Nil!74601)))))

(declare-fun lt!2703538 () List!74725)

(declare-fun head!16248 (List!74725) C!43330)

(assert (=> b!7961640 (= lt!2703542 (head!16248 lt!2703538))))

(declare-fun b!7961641 () Bool)

(declare-fun e!4695181 () Bool)

(declare-fun tp!2372241 () Bool)

(assert (=> b!7961641 (= e!4695181 tp!2372241)))

(declare-fun b!7961642 () Bool)

(declare-fun Unit!170041 () Unit!170038)

(assert (=> b!7961642 (= e!4695177 Unit!170041)))

(declare-fun b!7961643 () Bool)

(declare-fun tp!2372236 () Bool)

(declare-fun tp!2372240 () Bool)

(assert (=> b!7961643 (= e!4695181 (and tp!2372236 tp!2372240))))

(declare-fun b!7961644 () Bool)

(declare-fun e!4695179 () Bool)

(declare-fun e!4695184 () Bool)

(assert (=> b!7961644 (= e!4695179 e!4695184)))

(declare-fun res!3155436 () Bool)

(assert (=> b!7961644 (=> (not res!3155436) (not e!4695184))))

(declare-fun lt!2703540 () Int)

(declare-fun lt!2703534 () Int)

(declare-fun isEmpty!42902 (List!74725) Bool)

(declare-datatypes ((tuple2!70654 0))(
  ( (tuple2!70655 (_1!38630 List!74725) (_2!38630 List!74725)) )
))
(declare-fun findLongestMatchInner!2277 (Regex!21496 List!74725 Int List!74725 List!74725 Int) tuple2!70654)

(assert (=> b!7961644 (= res!3155436 (not (isEmpty!42902 (_1!38630 (findLongestMatchInner!2277 r!24602 testedP!447 lt!2703534 lt!2703538 input!7927 lt!2703540)))))))

(declare-fun size!43432 (List!74725) Int)

(assert (=> b!7961644 (= lt!2703540 (size!43432 input!7927))))

(declare-fun getSuffix!3799 (List!74725 List!74725) List!74725)

(assert (=> b!7961644 (= lt!2703538 (getSuffix!3799 input!7927 testedP!447))))

(assert (=> b!7961644 (= lt!2703534 (size!43432 testedP!447))))

(declare-fun b!7961645 () Bool)

(declare-fun res!3155429 () Bool)

(assert (=> b!7961645 (=> (not res!3155429) (not e!4695179))))

(assert (=> b!7961645 (= res!3155429 (isPrefix!6596 testedP!447 input!7927))))

(declare-fun b!7961646 () Bool)

(declare-fun e!4695176 () Bool)

(assert (=> b!7961646 (= e!4695176 (not (= lt!2703538 Nil!74601)))))

(declare-fun baseR!116 () Regex!21496)

(declare-fun lt!2703543 () Regex!21496)

(declare-fun derivative!682 (Regex!21496 List!74725) Regex!21496)

(assert (=> b!7961646 (= (derivative!682 baseR!116 lt!2703539) lt!2703543)))

(declare-fun lt!2703535 () Unit!170038)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!208 (Regex!21496 Regex!21496 List!74725 C!43330) Unit!170038)

(assert (=> b!7961646 (= lt!2703535 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!208 baseR!116 r!24602 testedP!447 lt!2703542))))

(declare-fun b!7961647 () Bool)

(declare-fun res!3155433 () Bool)

(assert (=> b!7961647 (=> (not res!3155433) (not e!4695184))))

(assert (=> b!7961647 (= res!3155433 (not (= testedP!447 input!7927)))))

(declare-fun b!7961648 () Bool)

(assert (=> b!7961648 (= e!4695181 tp_is_empty!53535)))

(declare-fun b!7961649 () Bool)

(assert (=> b!7961649 (= e!4695184 (not e!4695183))))

(declare-fun res!3155435 () Bool)

(assert (=> b!7961649 (=> res!3155435 e!4695183)))

(assert (=> b!7961649 (= res!3155435 (>= lt!2703534 lt!2703540))))

(declare-fun lt!2703537 () Unit!170038)

(assert (=> b!7961649 (= lt!2703537 e!4695177)))

(declare-fun c!1462113 () Bool)

(assert (=> b!7961649 (= c!1462113 (= lt!2703534 lt!2703540))))

(assert (=> b!7961649 (<= lt!2703534 lt!2703540)))

(declare-fun lt!2703541 () Unit!170038)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1113 (List!74725 List!74725) Unit!170038)

(assert (=> b!7961649 (= lt!2703541 (lemmaIsPrefixThenSmallerEqSize!1113 testedP!447 input!7927))))

(declare-fun b!7961650 () Bool)

(declare-fun e!4695185 () Bool)

(declare-fun tp!2372237 () Bool)

(declare-fun tp!2372239 () Bool)

(assert (=> b!7961650 (= e!4695185 (and tp!2372237 tp!2372239))))

(declare-fun b!7961651 () Bool)

(declare-fun tp!2372233 () Bool)

(declare-fun tp!2372238 () Bool)

(assert (=> b!7961651 (= e!4695185 (and tp!2372233 tp!2372238))))

(declare-fun b!7961638 () Bool)

(declare-fun tp!2372232 () Bool)

(assert (=> b!7961638 (= e!4695185 tp!2372232)))

(declare-fun res!3155431 () Bool)

(assert (=> start!750950 (=> (not res!3155431) (not e!4695179))))

(declare-fun validRegex!11800 (Regex!21496) Bool)

(assert (=> start!750950 (= res!3155431 (validRegex!11800 baseR!116))))

(assert (=> start!750950 e!4695179))

(assert (=> start!750950 e!4695181))

(declare-fun e!4695182 () Bool)

(assert (=> start!750950 e!4695182))

(assert (=> start!750950 e!4695178))

(assert (=> start!750950 e!4695185))

(declare-fun b!7961652 () Bool)

(declare-fun tp!2372242 () Bool)

(assert (=> b!7961652 (= e!4695182 (and tp_is_empty!53535 tp!2372242))))

(declare-fun b!7961653 () Bool)

(assert (=> b!7961653 (= e!4695180 e!4695176)))

(declare-fun res!3155430 () Bool)

(assert (=> b!7961653 (=> res!3155430 e!4695176)))

(declare-fun tail!15785 (List!74725) List!74725)

(assert (=> b!7961653 (= res!3155430 (isEmpty!42902 (_1!38630 (findLongestMatchInner!2277 lt!2703543 lt!2703539 (+ 1 lt!2703534) (tail!15785 lt!2703538) input!7927 lt!2703540))))))

(declare-fun derivativeStep!6524 (Regex!21496 C!43330) Regex!21496)

(assert (=> b!7961653 (= lt!2703543 (derivativeStep!6524 r!24602 lt!2703542))))

(declare-fun b!7961654 () Bool)

(assert (=> b!7961654 (= e!4695185 tp_is_empty!53535)))

(declare-fun b!7961655 () Bool)

(declare-fun res!3155432 () Bool)

(assert (=> b!7961655 (=> (not res!3155432) (not e!4695179))))

(assert (=> b!7961655 (= res!3155432 (= (derivative!682 baseR!116 testedP!447) r!24602))))

(declare-fun b!7961656 () Bool)

(declare-fun tp!2372235 () Bool)

(declare-fun tp!2372234 () Bool)

(assert (=> b!7961656 (= e!4695181 (and tp!2372235 tp!2372234))))

(assert (= (and start!750950 res!3155431) b!7961645))

(assert (= (and b!7961645 res!3155429) b!7961655))

(assert (= (and b!7961655 res!3155432) b!7961644))

(assert (= (and b!7961644 res!3155436) b!7961647))

(assert (= (and b!7961647 res!3155433) b!7961649))

(assert (= (and b!7961649 c!1462113) b!7961637))

(assert (= (and b!7961649 (not c!1462113)) b!7961642))

(assert (= (and b!7961649 (not res!3155435)) b!7961640))

(assert (= (and b!7961640 (not res!3155434)) b!7961653))

(assert (= (and b!7961653 (not res!3155430)) b!7961646))

(assert (= (and start!750950 (is-ElementMatch!21496 baseR!116)) b!7961648))

(assert (= (and start!750950 (is-Concat!30495 baseR!116)) b!7961643))

(assert (= (and start!750950 (is-Star!21496 baseR!116)) b!7961641))

(assert (= (and start!750950 (is-Union!21496 baseR!116)) b!7961656))

(assert (= (and start!750950 (is-Cons!74601 testedP!447)) b!7961652))

(assert (= (and start!750950 (is-Cons!74601 input!7927)) b!7961639))

(assert (= (and start!750950 (is-ElementMatch!21496 r!24602)) b!7961654))

(assert (= (and start!750950 (is-Concat!30495 r!24602)) b!7961650))

(assert (= (and start!750950 (is-Star!21496 r!24602)) b!7961638))

(assert (= (and start!750950 (is-Union!21496 r!24602)) b!7961651))

(declare-fun m!8342046 () Bool)

(assert (=> start!750950 m!8342046))

(declare-fun m!8342048 () Bool)

(assert (=> b!7961644 m!8342048))

(declare-fun m!8342050 () Bool)

(assert (=> b!7961644 m!8342050))

(declare-fun m!8342052 () Bool)

(assert (=> b!7961644 m!8342052))

(declare-fun m!8342054 () Bool)

(assert (=> b!7961644 m!8342054))

(declare-fun m!8342056 () Bool)

(assert (=> b!7961644 m!8342056))

(declare-fun m!8342058 () Bool)

(assert (=> b!7961649 m!8342058))

(declare-fun m!8342060 () Bool)

(assert (=> b!7961645 m!8342060))

(declare-fun m!8342062 () Bool)

(assert (=> b!7961637 m!8342062))

(declare-fun m!8342064 () Bool)

(assert (=> b!7961637 m!8342064))

(declare-fun m!8342066 () Bool)

(assert (=> b!7961637 m!8342066))

(declare-fun m!8342068 () Bool)

(assert (=> b!7961646 m!8342068))

(declare-fun m!8342070 () Bool)

(assert (=> b!7961646 m!8342070))

(declare-fun m!8342072 () Bool)

(assert (=> b!7961640 m!8342072))

(declare-fun m!8342074 () Bool)

(assert (=> b!7961640 m!8342074))

(declare-fun m!8342076 () Bool)

(assert (=> b!7961640 m!8342076))

(declare-fun m!8342078 () Bool)

(assert (=> b!7961640 m!8342078))

(declare-fun m!8342080 () Bool)

(assert (=> b!7961640 m!8342080))

(declare-fun m!8342082 () Bool)

(assert (=> b!7961653 m!8342082))

(assert (=> b!7961653 m!8342082))

(declare-fun m!8342084 () Bool)

(assert (=> b!7961653 m!8342084))

(declare-fun m!8342086 () Bool)

(assert (=> b!7961653 m!8342086))

(declare-fun m!8342088 () Bool)

(assert (=> b!7961653 m!8342088))

(declare-fun m!8342090 () Bool)

(assert (=> b!7961655 m!8342090))

(push 1)

(assert (not b!7961637))

(assert (not b!7961643))

(assert (not b!7961653))

(assert (not start!750950))

(assert (not b!7961646))

(assert (not b!7961650))

(assert (not b!7961640))

(assert (not b!7961639))

(assert (not b!7961649))

(assert (not b!7961644))

(assert (not b!7961652))

(assert (not b!7961655))

(assert (not b!7961638))

(assert tp_is_empty!53535)

(assert (not b!7961645))

(assert (not b!7961656))

(assert (not b!7961641))

(assert (not b!7961651))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2378199 () Bool)

(assert (=> d!2378199 (isPrefix!6596 input!7927 input!7927)))

(declare-fun lt!2703584 () Unit!170038)

(declare-fun choose!59994 (List!74725 List!74725) Unit!170038)

(assert (=> d!2378199 (= lt!2703584 (choose!59994 input!7927 input!7927))))

(assert (=> d!2378199 (= (lemmaIsPrefixRefl!4064 input!7927 input!7927) lt!2703584)))

(declare-fun bs!1969759 () Bool)

(assert (= bs!1969759 d!2378199))

(assert (=> bs!1969759 m!8342064))

(declare-fun m!8342138 () Bool)

(assert (=> bs!1969759 m!8342138))

(assert (=> b!7961637 d!2378199))

(declare-fun b!7961739 () Bool)

(declare-fun e!4695231 () Bool)

(assert (=> b!7961739 (= e!4695231 (isPrefix!6596 (tail!15785 input!7927) (tail!15785 input!7927)))))

(declare-fun b!7961740 () Bool)

(declare-fun e!4695233 () Bool)

(assert (=> b!7961740 (= e!4695233 (>= (size!43432 input!7927) (size!43432 input!7927)))))

(declare-fun b!7961737 () Bool)

(declare-fun e!4695232 () Bool)

(assert (=> b!7961737 (= e!4695232 e!4695231)))

(declare-fun res!3155484 () Bool)

(assert (=> b!7961737 (=> (not res!3155484) (not e!4695231))))

(assert (=> b!7961737 (= res!3155484 (not (is-Nil!74601 input!7927)))))

(declare-fun b!7961738 () Bool)

(declare-fun res!3155482 () Bool)

(assert (=> b!7961738 (=> (not res!3155482) (not e!4695231))))

(assert (=> b!7961738 (= res!3155482 (= (head!16248 input!7927) (head!16248 input!7927)))))

(declare-fun d!2378201 () Bool)

(assert (=> d!2378201 e!4695233))

(declare-fun res!3155483 () Bool)

(assert (=> d!2378201 (=> res!3155483 e!4695233)))

(declare-fun lt!2703590 () Bool)

(assert (=> d!2378201 (= res!3155483 (not lt!2703590))))

(assert (=> d!2378201 (= lt!2703590 e!4695232)))

(declare-fun res!3155481 () Bool)

(assert (=> d!2378201 (=> res!3155481 e!4695232)))

(assert (=> d!2378201 (= res!3155481 (is-Nil!74601 input!7927))))

(assert (=> d!2378201 (= (isPrefix!6596 input!7927 input!7927) lt!2703590)))

(assert (= (and d!2378201 (not res!3155481)) b!7961737))

(assert (= (and b!7961737 res!3155484) b!7961738))

(assert (= (and b!7961738 res!3155482) b!7961739))

(assert (= (and d!2378201 (not res!3155483)) b!7961740))

(declare-fun m!8342150 () Bool)

(assert (=> b!7961739 m!8342150))

(assert (=> b!7961739 m!8342150))

(assert (=> b!7961739 m!8342150))

(assert (=> b!7961739 m!8342150))

(declare-fun m!8342152 () Bool)

(assert (=> b!7961739 m!8342152))

(assert (=> b!7961740 m!8342052))

(assert (=> b!7961740 m!8342052))

(declare-fun m!8342158 () Bool)

(assert (=> b!7961738 m!8342158))

(assert (=> b!7961738 m!8342158))

(assert (=> b!7961637 d!2378201))

(declare-fun d!2378205 () Bool)

(assert (=> d!2378205 (= input!7927 testedP!447)))

(declare-fun lt!2703594 () Unit!170038)

(declare-fun choose!59995 (List!74725 List!74725 List!74725) Unit!170038)

(assert (=> d!2378205 (= lt!2703594 (choose!59995 input!7927 testedP!447 input!7927))))

(assert (=> d!2378205 (isPrefix!6596 input!7927 input!7927)))

(assert (=> d!2378205 (= (lemmaIsPrefixSameLengthThenSameList!1644 input!7927 testedP!447 input!7927) lt!2703594)))

(declare-fun bs!1969760 () Bool)

(assert (= bs!1969760 d!2378205))

(declare-fun m!8342164 () Bool)

(assert (=> bs!1969760 m!8342164))

(assert (=> bs!1969760 m!8342064))

(assert (=> b!7961637 d!2378205))

(declare-fun d!2378209 () Bool)

(assert (=> d!2378209 (= (isEmpty!42902 (_1!38630 (findLongestMatchInner!2277 lt!2703543 lt!2703539 (+ 1 lt!2703534) (tail!15785 lt!2703538) input!7927 lt!2703540))) (is-Nil!74601 (_1!38630 (findLongestMatchInner!2277 lt!2703543 lt!2703539 (+ 1 lt!2703534) (tail!15785 lt!2703538) input!7927 lt!2703540))))))

(assert (=> b!7961653 d!2378209))

(declare-fun bm!738322 () Bool)

(declare-fun call!738330 () Unit!170038)

(assert (=> bm!738322 (= call!738330 (lemmaIsPrefixSameLengthThenSameList!1644 input!7927 lt!2703539 input!7927))))

(declare-fun d!2378211 () Bool)

(declare-fun e!4695265 () Bool)

(assert (=> d!2378211 e!4695265))

(declare-fun res!3155500 () Bool)

(assert (=> d!2378211 (=> (not res!3155500) (not e!4695265))))

(declare-fun lt!2703686 () tuple2!70654)

(assert (=> d!2378211 (= res!3155500 (= (++!18366 (_1!38630 lt!2703686) (_2!38630 lt!2703686)) input!7927))))

(declare-fun e!4695270 () tuple2!70654)

(assert (=> d!2378211 (= lt!2703686 e!4695270)))

(declare-fun c!1462145 () Bool)

(declare-fun lostCause!1975 (Regex!21496) Bool)

(assert (=> d!2378211 (= c!1462145 (lostCause!1975 lt!2703543))))

(declare-fun lt!2703683 () Unit!170038)

(declare-fun Unit!170046 () Unit!170038)

(assert (=> d!2378211 (= lt!2703683 Unit!170046)))

(assert (=> d!2378211 (= (getSuffix!3799 input!7927 lt!2703539) (tail!15785 lt!2703538))))

(declare-fun lt!2703688 () Unit!170038)

(declare-fun lt!2703666 () Unit!170038)

(assert (=> d!2378211 (= lt!2703688 lt!2703666)))

(declare-fun lt!2703675 () List!74725)

(assert (=> d!2378211 (= (tail!15785 lt!2703538) lt!2703675)))

(declare-fun lemmaSamePrefixThenSameSuffix!2991 (List!74725 List!74725 List!74725 List!74725 List!74725) Unit!170038)

(assert (=> d!2378211 (= lt!2703666 (lemmaSamePrefixThenSameSuffix!2991 lt!2703539 (tail!15785 lt!2703538) lt!2703539 lt!2703675 input!7927))))

(assert (=> d!2378211 (= lt!2703675 (getSuffix!3799 input!7927 lt!2703539))))

(declare-fun lt!2703692 () Unit!170038)

(declare-fun lt!2703667 () Unit!170038)

(assert (=> d!2378211 (= lt!2703692 lt!2703667)))

(assert (=> d!2378211 (isPrefix!6596 lt!2703539 (++!18366 lt!2703539 (tail!15785 lt!2703538)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3853 (List!74725 List!74725) Unit!170038)

(assert (=> d!2378211 (= lt!2703667 (lemmaConcatTwoListThenFirstIsPrefix!3853 lt!2703539 (tail!15785 lt!2703538)))))

(assert (=> d!2378211 (validRegex!11800 lt!2703543)))

(assert (=> d!2378211 (= (findLongestMatchInner!2277 lt!2703543 lt!2703539 (+ 1 lt!2703534) (tail!15785 lt!2703538) input!7927 lt!2703540) lt!2703686)))

(declare-fun b!7961797 () Bool)

(declare-fun c!1462141 () Bool)

(declare-fun call!738332 () Bool)

(assert (=> b!7961797 (= c!1462141 call!738332)))

(declare-fun lt!2703677 () Unit!170038)

(declare-fun lt!2703670 () Unit!170038)

(assert (=> b!7961797 (= lt!2703677 lt!2703670)))

(declare-fun lt!2703679 () C!43330)

(declare-fun lt!2703671 () List!74725)

(assert (=> b!7961797 (= (++!18366 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601)) lt!2703671) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3531 (List!74725 C!43330 List!74725 List!74725) Unit!170038)

(assert (=> b!7961797 (= lt!2703670 (lemmaMoveElementToOtherListKeepsConcatEq!3531 lt!2703539 lt!2703679 lt!2703671 input!7927))))

(assert (=> b!7961797 (= lt!2703671 (tail!15785 (tail!15785 lt!2703538)))))

(assert (=> b!7961797 (= lt!2703679 (head!16248 (tail!15785 lt!2703538)))))

(declare-fun lt!2703678 () Unit!170038)

(declare-fun lt!2703669 () Unit!170038)

(assert (=> b!7961797 (= lt!2703678 lt!2703669)))

(assert (=> b!7961797 (isPrefix!6596 (++!18366 lt!2703539 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601)) input!7927)))

(assert (=> b!7961797 (= lt!2703669 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 lt!2703539 input!7927))))

(declare-fun lt!2703684 () Unit!170038)

(declare-fun lt!2703685 () Unit!170038)

(assert (=> b!7961797 (= lt!2703684 lt!2703685)))

(assert (=> b!7961797 (= lt!2703685 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 lt!2703539 input!7927))))

(declare-fun lt!2703682 () List!74725)

(assert (=> b!7961797 (= lt!2703682 (++!18366 lt!2703539 (Cons!74601 (head!16248 (tail!15785 lt!2703538)) Nil!74601)))))

(declare-fun lt!2703674 () Unit!170038)

(declare-fun e!4695272 () Unit!170038)

(assert (=> b!7961797 (= lt!2703674 e!4695272)))

(declare-fun c!1462144 () Bool)

(assert (=> b!7961797 (= c!1462144 (= (size!43432 lt!2703539) (size!43432 input!7927)))))

(declare-fun lt!2703676 () Unit!170038)

(declare-fun lt!2703691 () Unit!170038)

(assert (=> b!7961797 (= lt!2703676 lt!2703691)))

(assert (=> b!7961797 (<= (size!43432 lt!2703539) (size!43432 input!7927))))

(assert (=> b!7961797 (= lt!2703691 (lemmaIsPrefixThenSmallerEqSize!1113 lt!2703539 input!7927))))

(declare-fun e!4695269 () tuple2!70654)

(declare-fun e!4695266 () tuple2!70654)

(assert (=> b!7961797 (= e!4695269 e!4695266)))

(declare-fun bm!738323 () Bool)

(declare-fun call!738331 () List!74725)

(assert (=> bm!738323 (= call!738331 (tail!15785 (tail!15785 lt!2703538)))))

(declare-fun bm!738324 () Bool)

(declare-fun call!738327 () C!43330)

(assert (=> bm!738324 (= call!738327 (head!16248 (tail!15785 lt!2703538)))))

(declare-fun b!7961798 () Bool)

(declare-fun e!4695267 () tuple2!70654)

(declare-fun lt!2703681 () tuple2!70654)

(assert (=> b!7961798 (= e!4695267 lt!2703681)))

(declare-fun bm!738325 () Bool)

(declare-fun call!738334 () Bool)

(assert (=> bm!738325 (= call!738334 (isPrefix!6596 input!7927 input!7927))))

(declare-fun bm!738326 () Bool)

(declare-fun call!738333 () Regex!21496)

(assert (=> bm!738326 (= call!738333 (derivativeStep!6524 lt!2703543 call!738327))))

(declare-fun b!7961799 () Bool)

(declare-fun e!4695268 () Bool)

(assert (=> b!7961799 (= e!4695268 (>= (size!43432 (_1!38630 lt!2703686)) (size!43432 lt!2703539)))))

(declare-fun b!7961800 () Bool)

(declare-fun e!4695271 () tuple2!70654)

(assert (=> b!7961800 (= e!4695271 (tuple2!70655 Nil!74601 input!7927))))

(declare-fun bm!738327 () Bool)

(declare-fun call!738328 () Unit!170038)

(assert (=> bm!738327 (= call!738328 (lemmaIsPrefixRefl!4064 input!7927 input!7927))))

(declare-fun b!7961801 () Bool)

(assert (=> b!7961801 (= e!4695270 e!4695269)))

(declare-fun c!1462143 () Bool)

(assert (=> b!7961801 (= c!1462143 (= (+ 1 lt!2703534) lt!2703540))))

(declare-fun b!7961802 () Bool)

(declare-fun Unit!170047 () Unit!170038)

(assert (=> b!7961802 (= e!4695272 Unit!170047)))

(declare-fun b!7961803 () Bool)

(assert (=> b!7961803 (= e!4695271 (tuple2!70655 lt!2703539 Nil!74601))))

(declare-fun b!7961804 () Bool)

(assert (=> b!7961804 (= e!4695266 e!4695267)))

(declare-fun call!738329 () tuple2!70654)

(assert (=> b!7961804 (= lt!2703681 call!738329)))

(declare-fun c!1462146 () Bool)

(assert (=> b!7961804 (= c!1462146 (isEmpty!42902 (_1!38630 lt!2703681)))))

(declare-fun bm!738328 () Bool)

(assert (=> bm!738328 (= call!738332 (nullable!9597 lt!2703543))))

(declare-fun b!7961805 () Bool)

(assert (=> b!7961805 (= e!4695265 e!4695268)))

(declare-fun res!3155499 () Bool)

(assert (=> b!7961805 (=> res!3155499 e!4695268)))

(assert (=> b!7961805 (= res!3155499 (isEmpty!42902 (_1!38630 lt!2703686)))))

(declare-fun b!7961806 () Bool)

(assert (=> b!7961806 (= e!4695266 call!738329)))

(declare-fun bm!738329 () Bool)

(assert (=> bm!738329 (= call!738329 (findLongestMatchInner!2277 call!738333 lt!2703682 (+ 1 lt!2703534 1) call!738331 input!7927 lt!2703540))))

(declare-fun b!7961807 () Bool)

(assert (=> b!7961807 (= e!4695270 (tuple2!70655 Nil!74601 input!7927))))

(declare-fun b!7961808 () Bool)

(declare-fun Unit!170048 () Unit!170038)

(assert (=> b!7961808 (= e!4695272 Unit!170048)))

(declare-fun lt!2703672 () Unit!170038)

(assert (=> b!7961808 (= lt!2703672 call!738328)))

(assert (=> b!7961808 call!738334))

(declare-fun lt!2703687 () Unit!170038)

(assert (=> b!7961808 (= lt!2703687 lt!2703672)))

(declare-fun lt!2703690 () Unit!170038)

(assert (=> b!7961808 (= lt!2703690 call!738330)))

(assert (=> b!7961808 (= input!7927 lt!2703539)))

(declare-fun lt!2703689 () Unit!170038)

(assert (=> b!7961808 (= lt!2703689 lt!2703690)))

(assert (=> b!7961808 false))

(declare-fun b!7961809 () Bool)

(declare-fun c!1462142 () Bool)

(assert (=> b!7961809 (= c!1462142 call!738332)))

(declare-fun lt!2703693 () Unit!170038)

(declare-fun lt!2703680 () Unit!170038)

(assert (=> b!7961809 (= lt!2703693 lt!2703680)))

(assert (=> b!7961809 (= input!7927 lt!2703539)))

(assert (=> b!7961809 (= lt!2703680 call!738330)))

(declare-fun lt!2703673 () Unit!170038)

(declare-fun lt!2703668 () Unit!170038)

(assert (=> b!7961809 (= lt!2703673 lt!2703668)))

(assert (=> b!7961809 call!738334))

(assert (=> b!7961809 (= lt!2703668 call!738328)))

(assert (=> b!7961809 (= e!4695269 e!4695271)))

(declare-fun b!7961810 () Bool)

(assert (=> b!7961810 (= e!4695267 (tuple2!70655 lt!2703539 (tail!15785 lt!2703538)))))

(assert (= (and d!2378211 c!1462145) b!7961807))

(assert (= (and d!2378211 (not c!1462145)) b!7961801))

(assert (= (and b!7961801 c!1462143) b!7961809))

(assert (= (and b!7961801 (not c!1462143)) b!7961797))

(assert (= (and b!7961809 c!1462142) b!7961803))

(assert (= (and b!7961809 (not c!1462142)) b!7961800))

(assert (= (and b!7961797 c!1462144) b!7961808))

(assert (= (and b!7961797 (not c!1462144)) b!7961802))

(assert (= (and b!7961797 c!1462141) b!7961804))

(assert (= (and b!7961797 (not c!1462141)) b!7961806))

(assert (= (and b!7961804 c!1462146) b!7961810))

(assert (= (and b!7961804 (not c!1462146)) b!7961798))

(assert (= (or b!7961804 b!7961806) bm!738324))

(assert (= (or b!7961804 b!7961806) bm!738323))

(assert (= (or b!7961804 b!7961806) bm!738326))

(assert (= (or b!7961804 b!7961806) bm!738329))

(assert (= (or b!7961809 b!7961797) bm!738328))

(assert (= (or b!7961809 b!7961808) bm!738322))

(assert (= (or b!7961809 b!7961808) bm!738327))

(assert (= (or b!7961809 b!7961808) bm!738325))

(assert (= (and d!2378211 res!3155500) b!7961805))

(assert (= (and b!7961805 (not res!3155499)) b!7961799))

(assert (=> d!2378211 m!8342082))

(declare-fun m!8342200 () Bool)

(assert (=> d!2378211 m!8342200))

(assert (=> d!2378211 m!8342082))

(declare-fun m!8342202 () Bool)

(assert (=> d!2378211 m!8342202))

(assert (=> d!2378211 m!8342200))

(declare-fun m!8342204 () Bool)

(assert (=> d!2378211 m!8342204))

(declare-fun m!8342206 () Bool)

(assert (=> d!2378211 m!8342206))

(assert (=> d!2378211 m!8342082))

(declare-fun m!8342208 () Bool)

(assert (=> d!2378211 m!8342208))

(declare-fun m!8342210 () Bool)

(assert (=> d!2378211 m!8342210))

(declare-fun m!8342212 () Bool)

(assert (=> d!2378211 m!8342212))

(declare-fun m!8342214 () Bool)

(assert (=> d!2378211 m!8342214))

(assert (=> bm!738323 m!8342082))

(declare-fun m!8342216 () Bool)

(assert (=> bm!738323 m!8342216))

(declare-fun m!8342218 () Bool)

(assert (=> bm!738326 m!8342218))

(assert (=> bm!738325 m!8342064))

(declare-fun m!8342220 () Bool)

(assert (=> b!7961805 m!8342220))

(declare-fun m!8342222 () Bool)

(assert (=> b!7961804 m!8342222))

(declare-fun m!8342224 () Bool)

(assert (=> bm!738328 m!8342224))

(declare-fun m!8342226 () Bool)

(assert (=> bm!738322 m!8342226))

(assert (=> bm!738327 m!8342062))

(assert (=> bm!738324 m!8342082))

(declare-fun m!8342228 () Bool)

(assert (=> bm!738324 m!8342228))

(declare-fun m!8342230 () Bool)

(assert (=> b!7961799 m!8342230))

(declare-fun m!8342232 () Bool)

(assert (=> b!7961799 m!8342232))

(declare-fun m!8342234 () Bool)

(assert (=> bm!738329 m!8342234))

(assert (=> b!7961797 m!8342210))

(assert (=> b!7961797 m!8342082))

(assert (=> b!7961797 m!8342228))

(declare-fun m!8342236 () Bool)

(assert (=> b!7961797 m!8342236))

(assert (=> b!7961797 m!8342232))

(declare-fun m!8342238 () Bool)

(assert (=> b!7961797 m!8342238))

(declare-fun m!8342240 () Bool)

(assert (=> b!7961797 m!8342240))

(assert (=> b!7961797 m!8342052))

(assert (=> b!7961797 m!8342082))

(assert (=> b!7961797 m!8342216))

(declare-fun m!8342242 () Bool)

(assert (=> b!7961797 m!8342242))

(declare-fun m!8342244 () Bool)

(assert (=> b!7961797 m!8342244))

(declare-fun m!8342246 () Bool)

(assert (=> b!7961797 m!8342246))

(declare-fun m!8342248 () Bool)

(assert (=> b!7961797 m!8342248))

(declare-fun m!8342250 () Bool)

(assert (=> b!7961797 m!8342250))

(assert (=> b!7961797 m!8342242))

(assert (=> b!7961797 m!8342246))

(assert (=> b!7961797 m!8342210))

(declare-fun m!8342252 () Bool)

(assert (=> b!7961797 m!8342252))

(assert (=> b!7961653 d!2378211))

(declare-fun d!2378229 () Bool)

(assert (=> d!2378229 (= (tail!15785 lt!2703538) (t!390468 lt!2703538))))

(assert (=> b!7961653 d!2378229))

(declare-fun b!7961831 () Bool)

(declare-fun e!4695283 () Regex!21496)

(declare-fun call!738344 () Regex!21496)

(assert (=> b!7961831 (= e!4695283 (Concat!30495 call!738344 r!24602))))

(declare-fun b!7961832 () Bool)

(declare-fun e!4695286 () Regex!21496)

(declare-fun e!4695285 () Regex!21496)

(assert (=> b!7961832 (= e!4695286 e!4695285)))

(declare-fun c!1462158 () Bool)

(assert (=> b!7961832 (= c!1462158 (is-ElementMatch!21496 r!24602))))

(declare-fun c!1462157 () Bool)

(declare-fun call!738346 () Regex!21496)

(declare-fun c!1462159 () Bool)

(declare-fun bm!738338 () Bool)

(assert (=> bm!738338 (= call!738346 (derivativeStep!6524 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602))) lt!2703542))))

(declare-fun bm!738339 () Bool)

(declare-fun call!738345 () Regex!21496)

(assert (=> bm!738339 (= call!738345 call!738346)))

(declare-fun b!7961833 () Bool)

(assert (=> b!7961833 (= c!1462159 (nullable!9597 (regOne!43504 r!24602)))))

(declare-fun e!4695287 () Regex!21496)

(assert (=> b!7961833 (= e!4695283 e!4695287)))

(declare-fun b!7961834 () Bool)

(assert (=> b!7961834 (= e!4695287 (Union!21496 (Concat!30495 call!738345 (regTwo!43504 r!24602)) EmptyLang!21496))))

(declare-fun b!7961835 () Bool)

(assert (=> b!7961835 (= c!1462157 (is-Union!21496 r!24602))))

(declare-fun e!4695284 () Regex!21496)

(assert (=> b!7961835 (= e!4695285 e!4695284)))

(declare-fun b!7961836 () Bool)

(assert (=> b!7961836 (= e!4695287 (Union!21496 (Concat!30495 call!738344 (regTwo!43504 r!24602)) call!738345))))

(declare-fun b!7961837 () Bool)

(assert (=> b!7961837 (= e!4695286 EmptyLang!21496)))

(declare-fun b!7961838 () Bool)

(declare-fun call!738343 () Regex!21496)

(assert (=> b!7961838 (= e!4695284 (Union!21496 call!738346 call!738343))))

(declare-fun bm!738340 () Bool)

(assert (=> bm!738340 (= call!738344 call!738343)))

(declare-fun d!2378231 () Bool)

(declare-fun lt!2703696 () Regex!21496)

(assert (=> d!2378231 (validRegex!11800 lt!2703696)))

(assert (=> d!2378231 (= lt!2703696 e!4695286)))

(declare-fun c!1462161 () Bool)

(assert (=> d!2378231 (= c!1462161 (or (is-EmptyExpr!21496 r!24602) (is-EmptyLang!21496 r!24602)))))

(assert (=> d!2378231 (validRegex!11800 r!24602)))

(assert (=> d!2378231 (= (derivativeStep!6524 r!24602 lt!2703542) lt!2703696)))

(declare-fun bm!738341 () Bool)

(declare-fun c!1462160 () Bool)

(assert (=> bm!738341 (= call!738343 (derivativeStep!6524 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602))) lt!2703542))))

(declare-fun b!7961839 () Bool)

(assert (=> b!7961839 (= e!4695284 e!4695283)))

(assert (=> b!7961839 (= c!1462160 (is-Star!21496 r!24602))))

(declare-fun b!7961840 () Bool)

(assert (=> b!7961840 (= e!4695285 (ite (= lt!2703542 (c!1462114 r!24602)) EmptyExpr!21496 EmptyLang!21496))))

(assert (= (and d!2378231 c!1462161) b!7961837))

(assert (= (and d!2378231 (not c!1462161)) b!7961832))

(assert (= (and b!7961832 c!1462158) b!7961840))

(assert (= (and b!7961832 (not c!1462158)) b!7961835))

(assert (= (and b!7961835 c!1462157) b!7961838))

(assert (= (and b!7961835 (not c!1462157)) b!7961839))

(assert (= (and b!7961839 c!1462160) b!7961831))

(assert (= (and b!7961839 (not c!1462160)) b!7961833))

(assert (= (and b!7961833 c!1462159) b!7961836))

(assert (= (and b!7961833 (not c!1462159)) b!7961834))

(assert (= (or b!7961836 b!7961834) bm!738339))

(assert (= (or b!7961831 b!7961836) bm!738340))

(assert (= (or b!7961838 bm!738340) bm!738341))

(assert (= (or b!7961838 bm!738339) bm!738338))

(declare-fun m!8342254 () Bool)

(assert (=> bm!738338 m!8342254))

(declare-fun m!8342256 () Bool)

(assert (=> b!7961833 m!8342256))

(declare-fun m!8342258 () Bool)

(assert (=> d!2378231 m!8342258))

(declare-fun m!8342260 () Bool)

(assert (=> d!2378231 m!8342260))

(declare-fun m!8342262 () Bool)

(assert (=> bm!738341 m!8342262))

(assert (=> b!7961653 d!2378231))

(declare-fun d!2378233 () Bool)

(assert (=> d!2378233 (<= (size!43432 testedP!447) (size!43432 input!7927))))

(declare-fun lt!2703699 () Unit!170038)

(declare-fun choose!59996 (List!74725 List!74725) Unit!170038)

(assert (=> d!2378233 (= lt!2703699 (choose!59996 testedP!447 input!7927))))

(assert (=> d!2378233 (isPrefix!6596 testedP!447 input!7927)))

(assert (=> d!2378233 (= (lemmaIsPrefixThenSmallerEqSize!1113 testedP!447 input!7927) lt!2703699)))

(declare-fun bs!1969764 () Bool)

(assert (= bs!1969764 d!2378233))

(assert (=> bs!1969764 m!8342050))

(assert (=> bs!1969764 m!8342052))

(declare-fun m!8342264 () Bool)

(assert (=> bs!1969764 m!8342264))

(assert (=> bs!1969764 m!8342060))

(assert (=> b!7961649 d!2378233))

(declare-fun d!2378235 () Bool)

(declare-fun lt!2703702 () Int)

(assert (=> d!2378235 (>= lt!2703702 0)))

(declare-fun e!4695290 () Int)

(assert (=> d!2378235 (= lt!2703702 e!4695290)))

(declare-fun c!1462164 () Bool)

(assert (=> d!2378235 (= c!1462164 (is-Nil!74601 input!7927))))

(assert (=> d!2378235 (= (size!43432 input!7927) lt!2703702)))

(declare-fun b!7961845 () Bool)

(assert (=> b!7961845 (= e!4695290 0)))

(declare-fun b!7961846 () Bool)

(assert (=> b!7961846 (= e!4695290 (+ 1 (size!43432 (t!390468 input!7927))))))

(assert (= (and d!2378235 c!1462164) b!7961845))

(assert (= (and d!2378235 (not c!1462164)) b!7961846))

(declare-fun m!8342266 () Bool)

(assert (=> b!7961846 m!8342266))

(assert (=> b!7961644 d!2378235))

(declare-fun bm!738342 () Bool)

(declare-fun call!738350 () Unit!170038)

(assert (=> bm!738342 (= call!738350 (lemmaIsPrefixSameLengthThenSameList!1644 input!7927 testedP!447 input!7927))))

(declare-fun d!2378237 () Bool)

(declare-fun e!4695291 () Bool)

(assert (=> d!2378237 e!4695291))

(declare-fun res!3155502 () Bool)

(assert (=> d!2378237 (=> (not res!3155502) (not e!4695291))))

(declare-fun lt!2703723 () tuple2!70654)

(assert (=> d!2378237 (= res!3155502 (= (++!18366 (_1!38630 lt!2703723) (_2!38630 lt!2703723)) input!7927))))

(declare-fun e!4695296 () tuple2!70654)

(assert (=> d!2378237 (= lt!2703723 e!4695296)))

(declare-fun c!1462169 () Bool)

(assert (=> d!2378237 (= c!1462169 (lostCause!1975 r!24602))))

(declare-fun lt!2703720 () Unit!170038)

(declare-fun Unit!170049 () Unit!170038)

(assert (=> d!2378237 (= lt!2703720 Unit!170049)))

(assert (=> d!2378237 (= (getSuffix!3799 input!7927 testedP!447) lt!2703538)))

(declare-fun lt!2703725 () Unit!170038)

(declare-fun lt!2703703 () Unit!170038)

(assert (=> d!2378237 (= lt!2703725 lt!2703703)))

(declare-fun lt!2703712 () List!74725)

(assert (=> d!2378237 (= lt!2703538 lt!2703712)))

(assert (=> d!2378237 (= lt!2703703 (lemmaSamePrefixThenSameSuffix!2991 testedP!447 lt!2703538 testedP!447 lt!2703712 input!7927))))

(assert (=> d!2378237 (= lt!2703712 (getSuffix!3799 input!7927 testedP!447))))

(declare-fun lt!2703729 () Unit!170038)

(declare-fun lt!2703704 () Unit!170038)

(assert (=> d!2378237 (= lt!2703729 lt!2703704)))

(assert (=> d!2378237 (isPrefix!6596 testedP!447 (++!18366 testedP!447 lt!2703538))))

(assert (=> d!2378237 (= lt!2703704 (lemmaConcatTwoListThenFirstIsPrefix!3853 testedP!447 lt!2703538))))

(assert (=> d!2378237 (validRegex!11800 r!24602)))

(assert (=> d!2378237 (= (findLongestMatchInner!2277 r!24602 testedP!447 lt!2703534 lt!2703538 input!7927 lt!2703540) lt!2703723)))

(declare-fun b!7961847 () Bool)

(declare-fun c!1462165 () Bool)

(declare-fun call!738352 () Bool)

(assert (=> b!7961847 (= c!1462165 call!738352)))

(declare-fun lt!2703714 () Unit!170038)

(declare-fun lt!2703707 () Unit!170038)

(assert (=> b!7961847 (= lt!2703714 lt!2703707)))

(declare-fun lt!2703708 () List!74725)

(declare-fun lt!2703716 () C!43330)

(assert (=> b!7961847 (= (++!18366 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601)) lt!2703708) input!7927)))

(assert (=> b!7961847 (= lt!2703707 (lemmaMoveElementToOtherListKeepsConcatEq!3531 testedP!447 lt!2703716 lt!2703708 input!7927))))

(assert (=> b!7961847 (= lt!2703708 (tail!15785 lt!2703538))))

(assert (=> b!7961847 (= lt!2703716 (head!16248 lt!2703538))))

(declare-fun lt!2703715 () Unit!170038)

(declare-fun lt!2703706 () Unit!170038)

(assert (=> b!7961847 (= lt!2703715 lt!2703706)))

(assert (=> b!7961847 (isPrefix!6596 (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601)) input!7927)))

(assert (=> b!7961847 (= lt!2703706 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 testedP!447 input!7927))))

(declare-fun lt!2703721 () Unit!170038)

(declare-fun lt!2703722 () Unit!170038)

(assert (=> b!7961847 (= lt!2703721 lt!2703722)))

(assert (=> b!7961847 (= lt!2703722 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 testedP!447 input!7927))))

(declare-fun lt!2703719 () List!74725)

(assert (=> b!7961847 (= lt!2703719 (++!18366 testedP!447 (Cons!74601 (head!16248 lt!2703538) Nil!74601)))))

(declare-fun lt!2703711 () Unit!170038)

(declare-fun e!4695298 () Unit!170038)

(assert (=> b!7961847 (= lt!2703711 e!4695298)))

(declare-fun c!1462168 () Bool)

(assert (=> b!7961847 (= c!1462168 (= (size!43432 testedP!447) (size!43432 input!7927)))))

(declare-fun lt!2703713 () Unit!170038)

(declare-fun lt!2703728 () Unit!170038)

(assert (=> b!7961847 (= lt!2703713 lt!2703728)))

(assert (=> b!7961847 (<= (size!43432 testedP!447) (size!43432 input!7927))))

(assert (=> b!7961847 (= lt!2703728 (lemmaIsPrefixThenSmallerEqSize!1113 testedP!447 input!7927))))

(declare-fun e!4695295 () tuple2!70654)

(declare-fun e!4695292 () tuple2!70654)

(assert (=> b!7961847 (= e!4695295 e!4695292)))

(declare-fun bm!738343 () Bool)

(declare-fun call!738351 () List!74725)

(assert (=> bm!738343 (= call!738351 (tail!15785 lt!2703538))))

(declare-fun bm!738344 () Bool)

(declare-fun call!738347 () C!43330)

(assert (=> bm!738344 (= call!738347 (head!16248 lt!2703538))))

(declare-fun b!7961848 () Bool)

(declare-fun e!4695293 () tuple2!70654)

(declare-fun lt!2703718 () tuple2!70654)

(assert (=> b!7961848 (= e!4695293 lt!2703718)))

(declare-fun bm!738345 () Bool)

(declare-fun call!738354 () Bool)

(assert (=> bm!738345 (= call!738354 (isPrefix!6596 input!7927 input!7927))))

(declare-fun bm!738346 () Bool)

(declare-fun call!738353 () Regex!21496)

(assert (=> bm!738346 (= call!738353 (derivativeStep!6524 r!24602 call!738347))))

(declare-fun b!7961849 () Bool)

(declare-fun e!4695294 () Bool)

(assert (=> b!7961849 (= e!4695294 (>= (size!43432 (_1!38630 lt!2703723)) (size!43432 testedP!447)))))

(declare-fun b!7961850 () Bool)

(declare-fun e!4695297 () tuple2!70654)

(assert (=> b!7961850 (= e!4695297 (tuple2!70655 Nil!74601 input!7927))))

(declare-fun bm!738347 () Bool)

(declare-fun call!738348 () Unit!170038)

(assert (=> bm!738347 (= call!738348 (lemmaIsPrefixRefl!4064 input!7927 input!7927))))

(declare-fun b!7961851 () Bool)

(assert (=> b!7961851 (= e!4695296 e!4695295)))

(declare-fun c!1462167 () Bool)

(assert (=> b!7961851 (= c!1462167 (= lt!2703534 lt!2703540))))

(declare-fun b!7961852 () Bool)

(declare-fun Unit!170050 () Unit!170038)

(assert (=> b!7961852 (= e!4695298 Unit!170050)))

(declare-fun b!7961853 () Bool)

(assert (=> b!7961853 (= e!4695297 (tuple2!70655 testedP!447 Nil!74601))))

(declare-fun b!7961854 () Bool)

(assert (=> b!7961854 (= e!4695292 e!4695293)))

(declare-fun call!738349 () tuple2!70654)

(assert (=> b!7961854 (= lt!2703718 call!738349)))

(declare-fun c!1462170 () Bool)

(assert (=> b!7961854 (= c!1462170 (isEmpty!42902 (_1!38630 lt!2703718)))))

(declare-fun bm!738348 () Bool)

(assert (=> bm!738348 (= call!738352 (nullable!9597 r!24602))))

(declare-fun b!7961855 () Bool)

(assert (=> b!7961855 (= e!4695291 e!4695294)))

(declare-fun res!3155501 () Bool)

(assert (=> b!7961855 (=> res!3155501 e!4695294)))

(assert (=> b!7961855 (= res!3155501 (isEmpty!42902 (_1!38630 lt!2703723)))))

(declare-fun b!7961856 () Bool)

(assert (=> b!7961856 (= e!4695292 call!738349)))

(declare-fun bm!738349 () Bool)

(assert (=> bm!738349 (= call!738349 (findLongestMatchInner!2277 call!738353 lt!2703719 (+ lt!2703534 1) call!738351 input!7927 lt!2703540))))

(declare-fun b!7961857 () Bool)

(assert (=> b!7961857 (= e!4695296 (tuple2!70655 Nil!74601 input!7927))))

(declare-fun b!7961858 () Bool)

(declare-fun Unit!170051 () Unit!170038)

(assert (=> b!7961858 (= e!4695298 Unit!170051)))

(declare-fun lt!2703709 () Unit!170038)

(assert (=> b!7961858 (= lt!2703709 call!738348)))

(assert (=> b!7961858 call!738354))

(declare-fun lt!2703724 () Unit!170038)

(assert (=> b!7961858 (= lt!2703724 lt!2703709)))

(declare-fun lt!2703727 () Unit!170038)

(assert (=> b!7961858 (= lt!2703727 call!738350)))

(assert (=> b!7961858 (= input!7927 testedP!447)))

(declare-fun lt!2703726 () Unit!170038)

(assert (=> b!7961858 (= lt!2703726 lt!2703727)))

(assert (=> b!7961858 false))

(declare-fun b!7961859 () Bool)

(declare-fun c!1462166 () Bool)

(assert (=> b!7961859 (= c!1462166 call!738352)))

(declare-fun lt!2703730 () Unit!170038)

(declare-fun lt!2703717 () Unit!170038)

(assert (=> b!7961859 (= lt!2703730 lt!2703717)))

(assert (=> b!7961859 (= input!7927 testedP!447)))

(assert (=> b!7961859 (= lt!2703717 call!738350)))

(declare-fun lt!2703710 () Unit!170038)

(declare-fun lt!2703705 () Unit!170038)

(assert (=> b!7961859 (= lt!2703710 lt!2703705)))

(assert (=> b!7961859 call!738354))

(assert (=> b!7961859 (= lt!2703705 call!738348)))

(assert (=> b!7961859 (= e!4695295 e!4695297)))

(declare-fun b!7961860 () Bool)

(assert (=> b!7961860 (= e!4695293 (tuple2!70655 testedP!447 lt!2703538))))

(assert (= (and d!2378237 c!1462169) b!7961857))

(assert (= (and d!2378237 (not c!1462169)) b!7961851))

(assert (= (and b!7961851 c!1462167) b!7961859))

(assert (= (and b!7961851 (not c!1462167)) b!7961847))

(assert (= (and b!7961859 c!1462166) b!7961853))

(assert (= (and b!7961859 (not c!1462166)) b!7961850))

(assert (= (and b!7961847 c!1462168) b!7961858))

(assert (= (and b!7961847 (not c!1462168)) b!7961852))

(assert (= (and b!7961847 c!1462165) b!7961854))

(assert (= (and b!7961847 (not c!1462165)) b!7961856))

(assert (= (and b!7961854 c!1462170) b!7961860))

(assert (= (and b!7961854 (not c!1462170)) b!7961848))

(assert (= (or b!7961854 b!7961856) bm!738344))

(assert (= (or b!7961854 b!7961856) bm!738343))

(assert (= (or b!7961854 b!7961856) bm!738346))

(assert (= (or b!7961854 b!7961856) bm!738349))

(assert (= (or b!7961859 b!7961847) bm!738348))

(assert (= (or b!7961859 b!7961858) bm!738342))

(assert (= (or b!7961859 b!7961858) bm!738347))

(assert (= (or b!7961859 b!7961858) bm!738345))

(assert (= (and d!2378237 res!3155502) b!7961855))

(assert (= (and b!7961855 (not res!3155501)) b!7961849))

(declare-fun m!8342268 () Bool)

(assert (=> d!2378237 m!8342268))

(declare-fun m!8342270 () Bool)

(assert (=> d!2378237 m!8342270))

(assert (=> d!2378237 m!8342268))

(declare-fun m!8342272 () Bool)

(assert (=> d!2378237 m!8342272))

(declare-fun m!8342274 () Bool)

(assert (=> d!2378237 m!8342274))

(declare-fun m!8342276 () Bool)

(assert (=> d!2378237 m!8342276))

(assert (=> d!2378237 m!8342054))

(declare-fun m!8342278 () Bool)

(assert (=> d!2378237 m!8342278))

(assert (=> d!2378237 m!8342260))

(assert (=> bm!738343 m!8342082))

(declare-fun m!8342280 () Bool)

(assert (=> bm!738346 m!8342280))

(assert (=> bm!738345 m!8342064))

(declare-fun m!8342282 () Bool)

(assert (=> b!7961855 m!8342282))

(declare-fun m!8342284 () Bool)

(assert (=> b!7961854 m!8342284))

(assert (=> bm!738348 m!8342072))

(assert (=> bm!738342 m!8342066))

(assert (=> bm!738347 m!8342062))

(assert (=> bm!738344 m!8342078))

(declare-fun m!8342286 () Bool)

(assert (=> b!7961849 m!8342286))

(assert (=> b!7961849 m!8342050))

(declare-fun m!8342288 () Bool)

(assert (=> bm!738349 m!8342288))

(assert (=> b!7961847 m!8342054))

(assert (=> b!7961847 m!8342078))

(declare-fun m!8342290 () Bool)

(assert (=> b!7961847 m!8342290))

(assert (=> b!7961847 m!8342050))

(assert (=> b!7961847 m!8342080))

(declare-fun m!8342292 () Bool)

(assert (=> b!7961847 m!8342292))

(assert (=> b!7961847 m!8342052))

(assert (=> b!7961847 m!8342082))

(declare-fun m!8342294 () Bool)

(assert (=> b!7961847 m!8342294))

(declare-fun m!8342296 () Bool)

(assert (=> b!7961847 m!8342296))

(declare-fun m!8342298 () Bool)

(assert (=> b!7961847 m!8342298))

(declare-fun m!8342300 () Bool)

(assert (=> b!7961847 m!8342300))

(assert (=> b!7961847 m!8342058))

(assert (=> b!7961847 m!8342294))

(assert (=> b!7961847 m!8342298))

(assert (=> b!7961847 m!8342054))

(declare-fun m!8342302 () Bool)

(assert (=> b!7961847 m!8342302))

(assert (=> b!7961644 d!2378237))

(declare-fun d!2378239 () Bool)

(declare-fun lt!2703733 () List!74725)

(assert (=> d!2378239 (= (++!18366 testedP!447 lt!2703733) input!7927)))

(declare-fun e!4695301 () List!74725)

(assert (=> d!2378239 (= lt!2703733 e!4695301)))

(declare-fun c!1462173 () Bool)

(assert (=> d!2378239 (= c!1462173 (is-Cons!74601 testedP!447))))

(assert (=> d!2378239 (>= (size!43432 input!7927) (size!43432 testedP!447))))

(assert (=> d!2378239 (= (getSuffix!3799 input!7927 testedP!447) lt!2703733)))

(declare-fun b!7961865 () Bool)

(assert (=> b!7961865 (= e!4695301 (getSuffix!3799 (tail!15785 input!7927) (t!390468 testedP!447)))))

(declare-fun b!7961866 () Bool)

(assert (=> b!7961866 (= e!4695301 input!7927)))

(assert (= (and d!2378239 c!1462173) b!7961865))

(assert (= (and d!2378239 (not c!1462173)) b!7961866))

(declare-fun m!8342304 () Bool)

(assert (=> d!2378239 m!8342304))

(assert (=> d!2378239 m!8342052))

(assert (=> d!2378239 m!8342050))

(assert (=> b!7961865 m!8342150))

(assert (=> b!7961865 m!8342150))

(declare-fun m!8342306 () Bool)

(assert (=> b!7961865 m!8342306))

(assert (=> b!7961644 d!2378239))

(declare-fun d!2378241 () Bool)

(assert (=> d!2378241 (= (isEmpty!42902 (_1!38630 (findLongestMatchInner!2277 r!24602 testedP!447 lt!2703534 lt!2703538 input!7927 lt!2703540))) (is-Nil!74601 (_1!38630 (findLongestMatchInner!2277 r!24602 testedP!447 lt!2703534 lt!2703538 input!7927 lt!2703540))))))

(assert (=> b!7961644 d!2378241))

(declare-fun d!2378243 () Bool)

(declare-fun lt!2703734 () Int)

(assert (=> d!2378243 (>= lt!2703734 0)))

(declare-fun e!4695302 () Int)

(assert (=> d!2378243 (= lt!2703734 e!4695302)))

(declare-fun c!1462174 () Bool)

(assert (=> d!2378243 (= c!1462174 (is-Nil!74601 testedP!447))))

(assert (=> d!2378243 (= (size!43432 testedP!447) lt!2703734)))

(declare-fun b!7961867 () Bool)

(assert (=> b!7961867 (= e!4695302 0)))

(declare-fun b!7961868 () Bool)

(assert (=> b!7961868 (= e!4695302 (+ 1 (size!43432 (t!390468 testedP!447))))))

(assert (= (and d!2378243 c!1462174) b!7961867))

(assert (= (and d!2378243 (not c!1462174)) b!7961868))

(declare-fun m!8342308 () Bool)

(assert (=> b!7961868 m!8342308))

(assert (=> b!7961644 d!2378243))

(declare-fun d!2378245 () Bool)

(declare-fun lt!2703737 () Regex!21496)

(assert (=> d!2378245 (validRegex!11800 lt!2703737)))

(declare-fun e!4695305 () Regex!21496)

(assert (=> d!2378245 (= lt!2703737 e!4695305)))

(declare-fun c!1462177 () Bool)

(assert (=> d!2378245 (= c!1462177 (is-Cons!74601 testedP!447))))

(assert (=> d!2378245 (validRegex!11800 baseR!116)))

(assert (=> d!2378245 (= (derivative!682 baseR!116 testedP!447) lt!2703737)))

(declare-fun b!7961873 () Bool)

(assert (=> b!7961873 (= e!4695305 (derivative!682 (derivativeStep!6524 baseR!116 (h!81049 testedP!447)) (t!390468 testedP!447)))))

(declare-fun b!7961874 () Bool)

(assert (=> b!7961874 (= e!4695305 baseR!116)))

(assert (= (and d!2378245 c!1462177) b!7961873))

(assert (= (and d!2378245 (not c!1462177)) b!7961874))

(declare-fun m!8342310 () Bool)

(assert (=> d!2378245 m!8342310))

(assert (=> d!2378245 m!8342046))

(declare-fun m!8342312 () Bool)

(assert (=> b!7961873 m!8342312))

(assert (=> b!7961873 m!8342312))

(declare-fun m!8342314 () Bool)

(assert (=> b!7961873 m!8342314))

(assert (=> b!7961655 d!2378245))

(declare-fun b!7961877 () Bool)

(declare-fun e!4695306 () Bool)

(assert (=> b!7961877 (= e!4695306 (isPrefix!6596 (tail!15785 testedP!447) (tail!15785 input!7927)))))

(declare-fun b!7961878 () Bool)

(declare-fun e!4695308 () Bool)

(assert (=> b!7961878 (= e!4695308 (>= (size!43432 input!7927) (size!43432 testedP!447)))))

(declare-fun b!7961875 () Bool)

(declare-fun e!4695307 () Bool)

(assert (=> b!7961875 (= e!4695307 e!4695306)))

(declare-fun res!3155506 () Bool)

(assert (=> b!7961875 (=> (not res!3155506) (not e!4695306))))

(assert (=> b!7961875 (= res!3155506 (not (is-Nil!74601 input!7927)))))

(declare-fun b!7961876 () Bool)

(declare-fun res!3155504 () Bool)

(assert (=> b!7961876 (=> (not res!3155504) (not e!4695306))))

(assert (=> b!7961876 (= res!3155504 (= (head!16248 testedP!447) (head!16248 input!7927)))))

(declare-fun d!2378247 () Bool)

(assert (=> d!2378247 e!4695308))

(declare-fun res!3155505 () Bool)

(assert (=> d!2378247 (=> res!3155505 e!4695308)))

(declare-fun lt!2703738 () Bool)

(assert (=> d!2378247 (= res!3155505 (not lt!2703738))))

(assert (=> d!2378247 (= lt!2703738 e!4695307)))

(declare-fun res!3155503 () Bool)

(assert (=> d!2378247 (=> res!3155503 e!4695307)))

(assert (=> d!2378247 (= res!3155503 (is-Nil!74601 testedP!447))))

(assert (=> d!2378247 (= (isPrefix!6596 testedP!447 input!7927) lt!2703738)))

(assert (= (and d!2378247 (not res!3155503)) b!7961875))

(assert (= (and b!7961875 res!3155506) b!7961876))

(assert (= (and b!7961876 res!3155504) b!7961877))

(assert (= (and d!2378247 (not res!3155505)) b!7961878))

(declare-fun m!8342316 () Bool)

(assert (=> b!7961877 m!8342316))

(assert (=> b!7961877 m!8342150))

(assert (=> b!7961877 m!8342316))

(assert (=> b!7961877 m!8342150))

(declare-fun m!8342318 () Bool)

(assert (=> b!7961877 m!8342318))

(assert (=> b!7961878 m!8342052))

(assert (=> b!7961878 m!8342050))

(declare-fun m!8342320 () Bool)

(assert (=> b!7961876 m!8342320))

(assert (=> b!7961876 m!8342158))

(assert (=> b!7961645 d!2378247))

(declare-fun d!2378249 () Bool)

(assert (=> d!2378249 (isPrefix!6596 (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601)) input!7927)))

(declare-fun lt!2703741 () Unit!170038)

(declare-fun choose!59998 (List!74725 List!74725) Unit!170038)

(assert (=> d!2378249 (= lt!2703741 (choose!59998 testedP!447 input!7927))))

(assert (=> d!2378249 (isPrefix!6596 testedP!447 input!7927)))

(assert (=> d!2378249 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1323 testedP!447 input!7927) lt!2703741)))

(declare-fun bs!1969765 () Bool)

(assert (= bs!1969765 d!2378249))

(declare-fun m!8342322 () Bool)

(assert (=> bs!1969765 m!8342322))

(assert (=> bs!1969765 m!8342060))

(assert (=> bs!1969765 m!8342294))

(assert (=> bs!1969765 m!8342054))

(assert (=> bs!1969765 m!8342302))

(assert (=> bs!1969765 m!8342054))

(assert (=> bs!1969765 m!8342294))

(assert (=> bs!1969765 m!8342296))

(assert (=> b!7961640 d!2378249))

(declare-fun d!2378251 () Bool)

(assert (=> d!2378251 (= (head!16248 lt!2703538) (h!81049 lt!2703538))))

(assert (=> b!7961640 d!2378251))

(declare-fun d!2378253 () Bool)

(declare-fun nullableFct!3786 (Regex!21496) Bool)

(assert (=> d!2378253 (= (nullable!9597 r!24602) (nullableFct!3786 r!24602))))

(declare-fun bs!1969766 () Bool)

(assert (= bs!1969766 d!2378253))

(declare-fun m!8342324 () Bool)

(assert (=> bs!1969766 m!8342324))

(assert (=> b!7961640 d!2378253))

(declare-fun b!7961890 () Bool)

(declare-fun lt!2703744 () List!74725)

(declare-fun e!4695313 () Bool)

(assert (=> b!7961890 (= e!4695313 (or (not (= (Cons!74601 lt!2703542 Nil!74601) Nil!74601)) (= lt!2703744 testedP!447)))))

(declare-fun d!2378255 () Bool)

(assert (=> d!2378255 e!4695313))

(declare-fun res!3155511 () Bool)

(assert (=> d!2378255 (=> (not res!3155511) (not e!4695313))))

(declare-fun content!15844 (List!74725) (Set C!43330))

(assert (=> d!2378255 (= res!3155511 (= (content!15844 lt!2703744) (set.union (content!15844 testedP!447) (content!15844 (Cons!74601 lt!2703542 Nil!74601)))))))

(declare-fun e!4695314 () List!74725)

(assert (=> d!2378255 (= lt!2703744 e!4695314)))

(declare-fun c!1462180 () Bool)

(assert (=> d!2378255 (= c!1462180 (is-Nil!74601 testedP!447))))

(assert (=> d!2378255 (= (++!18366 testedP!447 (Cons!74601 lt!2703542 Nil!74601)) lt!2703744)))

(declare-fun b!7961888 () Bool)

(assert (=> b!7961888 (= e!4695314 (Cons!74601 (h!81049 testedP!447) (++!18366 (t!390468 testedP!447) (Cons!74601 lt!2703542 Nil!74601))))))

(declare-fun b!7961889 () Bool)

(declare-fun res!3155512 () Bool)

(assert (=> b!7961889 (=> (not res!3155512) (not e!4695313))))

(assert (=> b!7961889 (= res!3155512 (= (size!43432 lt!2703744) (+ (size!43432 testedP!447) (size!43432 (Cons!74601 lt!2703542 Nil!74601)))))))

(declare-fun b!7961887 () Bool)

(assert (=> b!7961887 (= e!4695314 (Cons!74601 lt!2703542 Nil!74601))))

(assert (= (and d!2378255 c!1462180) b!7961887))

(assert (= (and d!2378255 (not c!1462180)) b!7961888))

(assert (= (and d!2378255 res!3155511) b!7961889))

(assert (= (and b!7961889 res!3155512) b!7961890))

(declare-fun m!8342326 () Bool)

(assert (=> d!2378255 m!8342326))

(declare-fun m!8342328 () Bool)

(assert (=> d!2378255 m!8342328))

(declare-fun m!8342330 () Bool)

(assert (=> d!2378255 m!8342330))

(declare-fun m!8342332 () Bool)

(assert (=> b!7961888 m!8342332))

(declare-fun m!8342334 () Bool)

(assert (=> b!7961889 m!8342334))

(assert (=> b!7961889 m!8342050))

(declare-fun m!8342336 () Bool)

(assert (=> b!7961889 m!8342336))

(assert (=> b!7961640 d!2378255))

(declare-fun b!7961893 () Bool)

(declare-fun e!4695315 () Bool)

(assert (=> b!7961893 (= e!4695315 (isPrefix!6596 (tail!15785 lt!2703539) (tail!15785 input!7927)))))

(declare-fun b!7961894 () Bool)

(declare-fun e!4695317 () Bool)

(assert (=> b!7961894 (= e!4695317 (>= (size!43432 input!7927) (size!43432 lt!2703539)))))

(declare-fun b!7961891 () Bool)

(declare-fun e!4695316 () Bool)

(assert (=> b!7961891 (= e!4695316 e!4695315)))

(declare-fun res!3155516 () Bool)

(assert (=> b!7961891 (=> (not res!3155516) (not e!4695315))))

(assert (=> b!7961891 (= res!3155516 (not (is-Nil!74601 input!7927)))))

(declare-fun b!7961892 () Bool)

(declare-fun res!3155514 () Bool)

(assert (=> b!7961892 (=> (not res!3155514) (not e!4695315))))

(assert (=> b!7961892 (= res!3155514 (= (head!16248 lt!2703539) (head!16248 input!7927)))))

(declare-fun d!2378257 () Bool)

(assert (=> d!2378257 e!4695317))

(declare-fun res!3155515 () Bool)

(assert (=> d!2378257 (=> res!3155515 e!4695317)))

(declare-fun lt!2703745 () Bool)

(assert (=> d!2378257 (= res!3155515 (not lt!2703745))))

(assert (=> d!2378257 (= lt!2703745 e!4695316)))

(declare-fun res!3155513 () Bool)

(assert (=> d!2378257 (=> res!3155513 e!4695316)))

(assert (=> d!2378257 (= res!3155513 (is-Nil!74601 lt!2703539))))

(assert (=> d!2378257 (= (isPrefix!6596 lt!2703539 input!7927) lt!2703745)))

(assert (= (and d!2378257 (not res!3155513)) b!7961891))

(assert (= (and b!7961891 res!3155516) b!7961892))

(assert (= (and b!7961892 res!3155514) b!7961893))

(assert (= (and d!2378257 (not res!3155515)) b!7961894))

(declare-fun m!8342338 () Bool)

(assert (=> b!7961893 m!8342338))

(assert (=> b!7961893 m!8342150))

(assert (=> b!7961893 m!8342338))

(assert (=> b!7961893 m!8342150))

(declare-fun m!8342340 () Bool)

(assert (=> b!7961893 m!8342340))

(assert (=> b!7961894 m!8342052))

(assert (=> b!7961894 m!8342232))

(declare-fun m!8342342 () Bool)

(assert (=> b!7961892 m!8342342))

(assert (=> b!7961892 m!8342158))

(assert (=> b!7961640 d!2378257))

(declare-fun d!2378259 () Bool)

(declare-fun lt!2703746 () Regex!21496)

(assert (=> d!2378259 (validRegex!11800 lt!2703746)))

(declare-fun e!4695318 () Regex!21496)

(assert (=> d!2378259 (= lt!2703746 e!4695318)))

(declare-fun c!1462181 () Bool)

(assert (=> d!2378259 (= c!1462181 (is-Cons!74601 lt!2703539))))

(assert (=> d!2378259 (validRegex!11800 baseR!116)))

(assert (=> d!2378259 (= (derivative!682 baseR!116 lt!2703539) lt!2703746)))

(declare-fun b!7961895 () Bool)

(assert (=> b!7961895 (= e!4695318 (derivative!682 (derivativeStep!6524 baseR!116 (h!81049 lt!2703539)) (t!390468 lt!2703539)))))

(declare-fun b!7961896 () Bool)

(assert (=> b!7961896 (= e!4695318 baseR!116)))

(assert (= (and d!2378259 c!1462181) b!7961895))

(assert (= (and d!2378259 (not c!1462181)) b!7961896))

(declare-fun m!8342344 () Bool)

(assert (=> d!2378259 m!8342344))

(assert (=> d!2378259 m!8342046))

(declare-fun m!8342346 () Bool)

(assert (=> b!7961895 m!8342346))

(assert (=> b!7961895 m!8342346))

(declare-fun m!8342348 () Bool)

(assert (=> b!7961895 m!8342348))

(assert (=> b!7961646 d!2378259))

(declare-fun d!2378261 () Bool)

(assert (=> d!2378261 (= (derivative!682 baseR!116 (++!18366 testedP!447 (Cons!74601 lt!2703542 Nil!74601))) (derivativeStep!6524 r!24602 lt!2703542))))

(declare-fun lt!2703749 () Unit!170038)

(declare-fun choose!60000 (Regex!21496 Regex!21496 List!74725 C!43330) Unit!170038)

(assert (=> d!2378261 (= lt!2703749 (choose!60000 baseR!116 r!24602 testedP!447 lt!2703542))))

(assert (=> d!2378261 (validRegex!11800 baseR!116)))

(assert (=> d!2378261 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!208 baseR!116 r!24602 testedP!447 lt!2703542) lt!2703749)))

(declare-fun bs!1969767 () Bool)

(assert (= bs!1969767 d!2378261))

(declare-fun m!8342350 () Bool)

(assert (=> bs!1969767 m!8342350))

(assert (=> bs!1969767 m!8342046))

(assert (=> bs!1969767 m!8342088))

(assert (=> bs!1969767 m!8342076))

(declare-fun m!8342352 () Bool)

(assert (=> bs!1969767 m!8342352))

(assert (=> bs!1969767 m!8342076))

(assert (=> b!7961646 d!2378261))

(declare-fun b!7961915 () Bool)

(declare-fun e!4695339 () Bool)

(declare-fun call!738361 () Bool)

(assert (=> b!7961915 (= e!4695339 call!738361)))

(declare-fun bm!738356 () Bool)

(declare-fun c!1462188 () Bool)

(assert (=> bm!738356 (= call!738361 (validRegex!11800 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))))))

(declare-fun b!7961916 () Bool)

(declare-fun e!4695337 () Bool)

(declare-fun e!4695336 () Bool)

(assert (=> b!7961916 (= e!4695337 e!4695336)))

(declare-fun c!1462187 () Bool)

(assert (=> b!7961916 (= c!1462187 (is-Star!21496 baseR!116))))

(declare-fun b!7961917 () Bool)

(declare-fun e!4695334 () Bool)

(assert (=> b!7961917 (= e!4695336 e!4695334)))

(assert (=> b!7961917 (= c!1462188 (is-Union!21496 baseR!116))))

(declare-fun b!7961918 () Bool)

(declare-fun e!4695338 () Bool)

(assert (=> b!7961918 (= e!4695338 call!738361)))

(declare-fun b!7961919 () Bool)

(declare-fun res!3155527 () Bool)

(declare-fun e!4695335 () Bool)

(assert (=> b!7961919 (=> res!3155527 e!4695335)))

(assert (=> b!7961919 (= res!3155527 (not (is-Concat!30495 baseR!116)))))

(assert (=> b!7961919 (= e!4695334 e!4695335)))

(declare-fun b!7961920 () Bool)

(declare-fun e!4695333 () Bool)

(assert (=> b!7961920 (= e!4695336 e!4695333)))

(declare-fun res!3155528 () Bool)

(assert (=> b!7961920 (= res!3155528 (not (nullable!9597 (reg!21825 baseR!116))))))

(assert (=> b!7961920 (=> (not res!3155528) (not e!4695333))))

(declare-fun d!2378263 () Bool)

(declare-fun res!3155529 () Bool)

(assert (=> d!2378263 (=> res!3155529 e!4695337)))

(assert (=> d!2378263 (= res!3155529 (is-ElementMatch!21496 baseR!116))))

(assert (=> d!2378263 (= (validRegex!11800 baseR!116) e!4695337)))

(declare-fun b!7961921 () Bool)

(declare-fun call!738363 () Bool)

(assert (=> b!7961921 (= e!4695333 call!738363)))

(declare-fun bm!738357 () Bool)

(declare-fun call!738362 () Bool)

(assert (=> bm!738357 (= call!738362 call!738363)))

(declare-fun b!7961922 () Bool)

(declare-fun res!3155530 () Bool)

(assert (=> b!7961922 (=> (not res!3155530) (not e!4695338))))

(assert (=> b!7961922 (= res!3155530 call!738362)))

(assert (=> b!7961922 (= e!4695334 e!4695338)))

(declare-fun b!7961923 () Bool)

(assert (=> b!7961923 (= e!4695335 e!4695339)))

(declare-fun res!3155531 () Bool)

(assert (=> b!7961923 (=> (not res!3155531) (not e!4695339))))

(assert (=> b!7961923 (= res!3155531 call!738362)))

(declare-fun bm!738358 () Bool)

(assert (=> bm!738358 (= call!738363 (validRegex!11800 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))))))

(assert (= (and d!2378263 (not res!3155529)) b!7961916))

(assert (= (and b!7961916 c!1462187) b!7961920))

(assert (= (and b!7961916 (not c!1462187)) b!7961917))

(assert (= (and b!7961920 res!3155528) b!7961921))

(assert (= (and b!7961917 c!1462188) b!7961922))

(assert (= (and b!7961917 (not c!1462188)) b!7961919))

(assert (= (and b!7961922 res!3155530) b!7961918))

(assert (= (and b!7961919 (not res!3155527)) b!7961923))

(assert (= (and b!7961923 res!3155531) b!7961915))

(assert (= (or b!7961918 b!7961915) bm!738356))

(assert (= (or b!7961922 b!7961923) bm!738357))

(assert (= (or b!7961921 bm!738357) bm!738358))

(declare-fun m!8342354 () Bool)

(assert (=> bm!738356 m!8342354))

(declare-fun m!8342356 () Bool)

(assert (=> b!7961920 m!8342356))

(declare-fun m!8342358 () Bool)

(assert (=> bm!738358 m!8342358))

(assert (=> start!750950 d!2378263))

(declare-fun b!7961928 () Bool)

(declare-fun e!4695342 () Bool)

(declare-fun tp!2372281 () Bool)

(assert (=> b!7961928 (= e!4695342 (and tp_is_empty!53535 tp!2372281))))

(assert (=> b!7961652 (= tp!2372242 e!4695342)))

(assert (= (and b!7961652 (is-Cons!74601 (t!390468 testedP!447))) b!7961928))

(declare-fun e!4695345 () Bool)

(assert (=> b!7961643 (= tp!2372236 e!4695345)))

(declare-fun b!7961939 () Bool)

(assert (=> b!7961939 (= e!4695345 tp_is_empty!53535)))

(declare-fun b!7961941 () Bool)

(declare-fun tp!2372292 () Bool)

(assert (=> b!7961941 (= e!4695345 tp!2372292)))

(declare-fun b!7961940 () Bool)

(declare-fun tp!2372293 () Bool)

(declare-fun tp!2372295 () Bool)

(assert (=> b!7961940 (= e!4695345 (and tp!2372293 tp!2372295))))

(declare-fun b!7961942 () Bool)

(declare-fun tp!2372296 () Bool)

(declare-fun tp!2372294 () Bool)

(assert (=> b!7961942 (= e!4695345 (and tp!2372296 tp!2372294))))

(assert (= (and b!7961643 (is-ElementMatch!21496 (regOne!43504 baseR!116))) b!7961939))

(assert (= (and b!7961643 (is-Concat!30495 (regOne!43504 baseR!116))) b!7961940))

(assert (= (and b!7961643 (is-Star!21496 (regOne!43504 baseR!116))) b!7961941))

(assert (= (and b!7961643 (is-Union!21496 (regOne!43504 baseR!116))) b!7961942))

(declare-fun e!4695346 () Bool)

(assert (=> b!7961643 (= tp!2372240 e!4695346)))

(declare-fun b!7961943 () Bool)

(assert (=> b!7961943 (= e!4695346 tp_is_empty!53535)))

(declare-fun b!7961945 () Bool)

(declare-fun tp!2372297 () Bool)

(assert (=> b!7961945 (= e!4695346 tp!2372297)))

(declare-fun b!7961944 () Bool)

(declare-fun tp!2372298 () Bool)

(declare-fun tp!2372300 () Bool)

(assert (=> b!7961944 (= e!4695346 (and tp!2372298 tp!2372300))))

(declare-fun b!7961946 () Bool)

(declare-fun tp!2372301 () Bool)

(declare-fun tp!2372299 () Bool)

(assert (=> b!7961946 (= e!4695346 (and tp!2372301 tp!2372299))))

(assert (= (and b!7961643 (is-ElementMatch!21496 (regTwo!43504 baseR!116))) b!7961943))

(assert (= (and b!7961643 (is-Concat!30495 (regTwo!43504 baseR!116))) b!7961944))

(assert (= (and b!7961643 (is-Star!21496 (regTwo!43504 baseR!116))) b!7961945))

(assert (= (and b!7961643 (is-Union!21496 (regTwo!43504 baseR!116))) b!7961946))

(declare-fun e!4695347 () Bool)

(assert (=> b!7961638 (= tp!2372232 e!4695347)))

(declare-fun b!7961947 () Bool)

(assert (=> b!7961947 (= e!4695347 tp_is_empty!53535)))

(declare-fun b!7961949 () Bool)

(declare-fun tp!2372302 () Bool)

(assert (=> b!7961949 (= e!4695347 tp!2372302)))

(declare-fun b!7961948 () Bool)

(declare-fun tp!2372303 () Bool)

(declare-fun tp!2372305 () Bool)

(assert (=> b!7961948 (= e!4695347 (and tp!2372303 tp!2372305))))

(declare-fun b!7961950 () Bool)

(declare-fun tp!2372306 () Bool)

(declare-fun tp!2372304 () Bool)

(assert (=> b!7961950 (= e!4695347 (and tp!2372306 tp!2372304))))

(assert (= (and b!7961638 (is-ElementMatch!21496 (reg!21825 r!24602))) b!7961947))

(assert (= (and b!7961638 (is-Concat!30495 (reg!21825 r!24602))) b!7961948))

(assert (= (and b!7961638 (is-Star!21496 (reg!21825 r!24602))) b!7961949))

(assert (= (and b!7961638 (is-Union!21496 (reg!21825 r!24602))) b!7961950))

(declare-fun b!7961951 () Bool)

(declare-fun e!4695348 () Bool)

(declare-fun tp!2372307 () Bool)

(assert (=> b!7961951 (= e!4695348 (and tp_is_empty!53535 tp!2372307))))

(assert (=> b!7961639 (= tp!2372231 e!4695348)))

(assert (= (and b!7961639 (is-Cons!74601 (t!390468 input!7927))) b!7961951))

(declare-fun e!4695349 () Bool)

(assert (=> b!7961650 (= tp!2372237 e!4695349)))

(declare-fun b!7961952 () Bool)

(assert (=> b!7961952 (= e!4695349 tp_is_empty!53535)))

(declare-fun b!7961954 () Bool)

(declare-fun tp!2372308 () Bool)

(assert (=> b!7961954 (= e!4695349 tp!2372308)))

(declare-fun b!7961953 () Bool)

(declare-fun tp!2372309 () Bool)

(declare-fun tp!2372311 () Bool)

(assert (=> b!7961953 (= e!4695349 (and tp!2372309 tp!2372311))))

(declare-fun b!7961955 () Bool)

(declare-fun tp!2372312 () Bool)

(declare-fun tp!2372310 () Bool)

(assert (=> b!7961955 (= e!4695349 (and tp!2372312 tp!2372310))))

(assert (= (and b!7961650 (is-ElementMatch!21496 (regOne!43504 r!24602))) b!7961952))

(assert (= (and b!7961650 (is-Concat!30495 (regOne!43504 r!24602))) b!7961953))

(assert (= (and b!7961650 (is-Star!21496 (regOne!43504 r!24602))) b!7961954))

(assert (= (and b!7961650 (is-Union!21496 (regOne!43504 r!24602))) b!7961955))

(declare-fun e!4695350 () Bool)

(assert (=> b!7961650 (= tp!2372239 e!4695350)))

(declare-fun b!7961956 () Bool)

(assert (=> b!7961956 (= e!4695350 tp_is_empty!53535)))

(declare-fun b!7961958 () Bool)

(declare-fun tp!2372313 () Bool)

(assert (=> b!7961958 (= e!4695350 tp!2372313)))

(declare-fun b!7961957 () Bool)

(declare-fun tp!2372314 () Bool)

(declare-fun tp!2372316 () Bool)

(assert (=> b!7961957 (= e!4695350 (and tp!2372314 tp!2372316))))

(declare-fun b!7961959 () Bool)

(declare-fun tp!2372317 () Bool)

(declare-fun tp!2372315 () Bool)

(assert (=> b!7961959 (= e!4695350 (and tp!2372317 tp!2372315))))

(assert (= (and b!7961650 (is-ElementMatch!21496 (regTwo!43504 r!24602))) b!7961956))

(assert (= (and b!7961650 (is-Concat!30495 (regTwo!43504 r!24602))) b!7961957))

(assert (= (and b!7961650 (is-Star!21496 (regTwo!43504 r!24602))) b!7961958))

(assert (= (and b!7961650 (is-Union!21496 (regTwo!43504 r!24602))) b!7961959))

(declare-fun e!4695351 () Bool)

(assert (=> b!7961656 (= tp!2372235 e!4695351)))

(declare-fun b!7961960 () Bool)

(assert (=> b!7961960 (= e!4695351 tp_is_empty!53535)))

(declare-fun b!7961962 () Bool)

(declare-fun tp!2372318 () Bool)

(assert (=> b!7961962 (= e!4695351 tp!2372318)))

(declare-fun b!7961961 () Bool)

(declare-fun tp!2372319 () Bool)

(declare-fun tp!2372321 () Bool)

(assert (=> b!7961961 (= e!4695351 (and tp!2372319 tp!2372321))))

(declare-fun b!7961963 () Bool)

(declare-fun tp!2372322 () Bool)

(declare-fun tp!2372320 () Bool)

(assert (=> b!7961963 (= e!4695351 (and tp!2372322 tp!2372320))))

(assert (= (and b!7961656 (is-ElementMatch!21496 (regOne!43505 baseR!116))) b!7961960))

(assert (= (and b!7961656 (is-Concat!30495 (regOne!43505 baseR!116))) b!7961961))

(assert (= (and b!7961656 (is-Star!21496 (regOne!43505 baseR!116))) b!7961962))

(assert (= (and b!7961656 (is-Union!21496 (regOne!43505 baseR!116))) b!7961963))

(declare-fun e!4695352 () Bool)

(assert (=> b!7961656 (= tp!2372234 e!4695352)))

(declare-fun b!7961964 () Bool)

(assert (=> b!7961964 (= e!4695352 tp_is_empty!53535)))

(declare-fun b!7961966 () Bool)

(declare-fun tp!2372323 () Bool)

(assert (=> b!7961966 (= e!4695352 tp!2372323)))

(declare-fun b!7961965 () Bool)

(declare-fun tp!2372324 () Bool)

(declare-fun tp!2372326 () Bool)

(assert (=> b!7961965 (= e!4695352 (and tp!2372324 tp!2372326))))

(declare-fun b!7961967 () Bool)

(declare-fun tp!2372327 () Bool)

(declare-fun tp!2372325 () Bool)

(assert (=> b!7961967 (= e!4695352 (and tp!2372327 tp!2372325))))

(assert (= (and b!7961656 (is-ElementMatch!21496 (regTwo!43505 baseR!116))) b!7961964))

(assert (= (and b!7961656 (is-Concat!30495 (regTwo!43505 baseR!116))) b!7961965))

(assert (= (and b!7961656 (is-Star!21496 (regTwo!43505 baseR!116))) b!7961966))

(assert (= (and b!7961656 (is-Union!21496 (regTwo!43505 baseR!116))) b!7961967))

(declare-fun e!4695353 () Bool)

(assert (=> b!7961651 (= tp!2372233 e!4695353)))

(declare-fun b!7961968 () Bool)

(assert (=> b!7961968 (= e!4695353 tp_is_empty!53535)))

(declare-fun b!7961970 () Bool)

(declare-fun tp!2372328 () Bool)

(assert (=> b!7961970 (= e!4695353 tp!2372328)))

(declare-fun b!7961969 () Bool)

(declare-fun tp!2372329 () Bool)

(declare-fun tp!2372331 () Bool)

(assert (=> b!7961969 (= e!4695353 (and tp!2372329 tp!2372331))))

(declare-fun b!7961971 () Bool)

(declare-fun tp!2372332 () Bool)

(declare-fun tp!2372330 () Bool)

(assert (=> b!7961971 (= e!4695353 (and tp!2372332 tp!2372330))))

(assert (= (and b!7961651 (is-ElementMatch!21496 (regOne!43505 r!24602))) b!7961968))

(assert (= (and b!7961651 (is-Concat!30495 (regOne!43505 r!24602))) b!7961969))

(assert (= (and b!7961651 (is-Star!21496 (regOne!43505 r!24602))) b!7961970))

(assert (= (and b!7961651 (is-Union!21496 (regOne!43505 r!24602))) b!7961971))

(declare-fun e!4695354 () Bool)

(assert (=> b!7961651 (= tp!2372238 e!4695354)))

(declare-fun b!7961972 () Bool)

(assert (=> b!7961972 (= e!4695354 tp_is_empty!53535)))

(declare-fun b!7961974 () Bool)

(declare-fun tp!2372333 () Bool)

(assert (=> b!7961974 (= e!4695354 tp!2372333)))

(declare-fun b!7961973 () Bool)

(declare-fun tp!2372334 () Bool)

(declare-fun tp!2372336 () Bool)

(assert (=> b!7961973 (= e!4695354 (and tp!2372334 tp!2372336))))

(declare-fun b!7961975 () Bool)

(declare-fun tp!2372337 () Bool)

(declare-fun tp!2372335 () Bool)

(assert (=> b!7961975 (= e!4695354 (and tp!2372337 tp!2372335))))

(assert (= (and b!7961651 (is-ElementMatch!21496 (regTwo!43505 r!24602))) b!7961972))

(assert (= (and b!7961651 (is-Concat!30495 (regTwo!43505 r!24602))) b!7961973))

(assert (= (and b!7961651 (is-Star!21496 (regTwo!43505 r!24602))) b!7961974))

(assert (= (and b!7961651 (is-Union!21496 (regTwo!43505 r!24602))) b!7961975))

(declare-fun e!4695355 () Bool)

(assert (=> b!7961641 (= tp!2372241 e!4695355)))

(declare-fun b!7961976 () Bool)

(assert (=> b!7961976 (= e!4695355 tp_is_empty!53535)))

(declare-fun b!7961978 () Bool)

(declare-fun tp!2372338 () Bool)

(assert (=> b!7961978 (= e!4695355 tp!2372338)))

(declare-fun b!7961977 () Bool)

(declare-fun tp!2372339 () Bool)

(declare-fun tp!2372341 () Bool)

(assert (=> b!7961977 (= e!4695355 (and tp!2372339 tp!2372341))))

(declare-fun b!7961979 () Bool)

(declare-fun tp!2372342 () Bool)

(declare-fun tp!2372340 () Bool)

(assert (=> b!7961979 (= e!4695355 (and tp!2372342 tp!2372340))))

(assert (= (and b!7961641 (is-ElementMatch!21496 (reg!21825 baseR!116))) b!7961976))

(assert (= (and b!7961641 (is-Concat!30495 (reg!21825 baseR!116))) b!7961977))

(assert (= (and b!7961641 (is-Star!21496 (reg!21825 baseR!116))) b!7961978))

(assert (= (and b!7961641 (is-Union!21496 (reg!21825 baseR!116))) b!7961979))

(push 1)

(assert (not b!7961944))

(assert (not b!7961894))

(assert (not b!7961920))

(assert (not bm!738344))

(assert (not b!7961970))

(assert (not d!2378205))

(assert (not bm!738342))

(assert (not b!7961892))

(assert (not d!2378239))

(assert (not b!7961739))

(assert (not b!7961959))

(assert (not bm!738345))

(assert (not b!7961945))

(assert (not b!7961889))

(assert (not d!2378261))

(assert (not b!7961868))

(assert (not d!2378249))

(assert (not b!7961955))

(assert (not bm!738346))

(assert (not bm!738324))

(assert (not b!7961876))

(assert (not b!7961946))

(assert (not b!7961951))

(assert (not bm!738323))

(assert (not bm!738326))

(assert (not b!7961797))

(assert (not bm!738338))

(assert (not b!7961979))

(assert (not d!2378255))

(assert (not b!7961940))

(assert (not b!7961963))

(assert (not b!7961942))

(assert (not b!7961804))

(assert (not b!7961948))

(assert (not b!7961893))

(assert (not b!7961975))

(assert (not b!7961978))

(assert (not b!7961799))

(assert (not b!7961977))

(assert (not b!7961849))

(assert (not bm!738329))

(assert (not b!7961967))

(assert (not b!7961950))

(assert (not bm!738347))

(assert (not bm!738348))

(assert (not bm!738343))

(assert (not d!2378253))

(assert (not b!7961846))

(assert (not d!2378245))

(assert (not b!7961961))

(assert tp_is_empty!53535)

(assert (not b!7961957))

(assert (not b!7961928))

(assert (not b!7961953))

(assert (not d!2378259))

(assert (not b!7961965))

(assert (not bm!738328))

(assert (not b!7961941))

(assert (not b!7961854))

(assert (not b!7961958))

(assert (not d!2378237))

(assert (not b!7961971))

(assert (not b!7961740))

(assert (not b!7961877))

(assert (not d!2378233))

(assert (not b!7961969))

(assert (not b!7961873))

(assert (not b!7961888))

(assert (not b!7961949))

(assert (not b!7961865))

(assert (not b!7961973))

(assert (not d!2378199))

(assert (not bm!738358))

(assert (not b!7961847))

(assert (not b!7961738))

(assert (not bm!738322))

(assert (not b!7961805))

(assert (not b!7961833))

(assert (not b!7961855))

(assert (not bm!738341))

(assert (not b!7961962))

(assert (not bm!738356))

(assert (not b!7961878))

(assert (not b!7961974))

(assert (not b!7961954))

(assert (not d!2378231))

(assert (not bm!738327))

(assert (not bm!738349))

(assert (not b!7961966))

(assert (not b!7961895))

(assert (not bm!738325))

(assert (not d!2378211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> bm!738327 d!2378199))

(declare-fun d!2378289 () Bool)

(assert (=> d!2378289 (= (isEmpty!42902 (_1!38630 lt!2703681)) (is-Nil!74601 (_1!38630 lt!2703681)))))

(assert (=> b!7961804 d!2378289))

(declare-fun b!7962163 () Bool)

(declare-fun call!738418 () Regex!21496)

(declare-fun e!4695448 () Regex!21496)

(assert (=> b!7962163 (= e!4695448 (Concat!30495 call!738418 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))))))

(declare-fun b!7962164 () Bool)

(declare-fun e!4695451 () Regex!21496)

(declare-fun e!4695450 () Regex!21496)

(assert (=> b!7962164 (= e!4695451 e!4695450)))

(declare-fun c!1462240 () Bool)

(assert (=> b!7962164 (= c!1462240 (is-ElementMatch!21496 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))))))

(declare-fun bm!738412 () Bool)

(declare-fun c!1462241 () Bool)

(declare-fun call!738420 () Regex!21496)

(declare-fun c!1462239 () Bool)

(assert (=> bm!738412 (= call!738420 (derivativeStep!6524 (ite c!1462239 (regOne!43505 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))) (ite c!1462241 (regTwo!43504 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))) (regOne!43504 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))))) lt!2703542))))

(declare-fun bm!738413 () Bool)

(declare-fun call!738419 () Regex!21496)

(assert (=> bm!738413 (= call!738419 call!738420)))

(declare-fun b!7962165 () Bool)

(assert (=> b!7962165 (= c!1462241 (nullable!9597 (regOne!43504 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602))))))))

(declare-fun e!4695452 () Regex!21496)

(assert (=> b!7962165 (= e!4695448 e!4695452)))

(declare-fun b!7962166 () Bool)

(assert (=> b!7962166 (= e!4695452 (Union!21496 (Concat!30495 call!738419 (regTwo!43504 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602))))) EmptyLang!21496))))

(declare-fun b!7962167 () Bool)

(assert (=> b!7962167 (= c!1462239 (is-Union!21496 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))))))

(declare-fun e!4695449 () Regex!21496)

(assert (=> b!7962167 (= e!4695450 e!4695449)))

(declare-fun b!7962168 () Bool)

(assert (=> b!7962168 (= e!4695452 (Union!21496 (Concat!30495 call!738418 (regTwo!43504 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602))))) call!738419))))

(declare-fun b!7962169 () Bool)

(assert (=> b!7962169 (= e!4695451 EmptyLang!21496)))

(declare-fun b!7962170 () Bool)

(declare-fun call!738417 () Regex!21496)

(assert (=> b!7962170 (= e!4695449 (Union!21496 call!738420 call!738417))))

(declare-fun bm!738414 () Bool)

(assert (=> bm!738414 (= call!738418 call!738417)))

(declare-fun d!2378291 () Bool)

(declare-fun lt!2703880 () Regex!21496)

(assert (=> d!2378291 (validRegex!11800 lt!2703880)))

(assert (=> d!2378291 (= lt!2703880 e!4695451)))

(declare-fun c!1462243 () Bool)

(assert (=> d!2378291 (= c!1462243 (or (is-EmptyExpr!21496 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))) (is-EmptyLang!21496 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602))))))))

(assert (=> d!2378291 (validRegex!11800 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602))))))

(assert (=> d!2378291 (= (derivativeStep!6524 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602))) lt!2703542) lt!2703880)))

(declare-fun c!1462242 () Bool)

(declare-fun bm!738415 () Bool)

(assert (=> bm!738415 (= call!738417 (derivativeStep!6524 (ite c!1462239 (regTwo!43505 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))) (ite c!1462242 (reg!21825 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))) (regOne!43504 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))))) lt!2703542))))

(declare-fun b!7962171 () Bool)

(assert (=> b!7962171 (= e!4695449 e!4695448)))

(assert (=> b!7962171 (= c!1462242 (is-Star!21496 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602)))))))

(declare-fun b!7962172 () Bool)

(assert (=> b!7962172 (= e!4695450 (ite (= lt!2703542 (c!1462114 (ite c!1462157 (regOne!43505 r!24602) (ite c!1462159 (regTwo!43504 r!24602) (regOne!43504 r!24602))))) EmptyExpr!21496 EmptyLang!21496))))

(assert (= (and d!2378291 c!1462243) b!7962169))

(assert (= (and d!2378291 (not c!1462243)) b!7962164))

(assert (= (and b!7962164 c!1462240) b!7962172))

(assert (= (and b!7962164 (not c!1462240)) b!7962167))

(assert (= (and b!7962167 c!1462239) b!7962170))

(assert (= (and b!7962167 (not c!1462239)) b!7962171))

(assert (= (and b!7962171 c!1462242) b!7962163))

(assert (= (and b!7962171 (not c!1462242)) b!7962165))

(assert (= (and b!7962165 c!1462241) b!7962168))

(assert (= (and b!7962165 (not c!1462241)) b!7962166))

(assert (= (or b!7962168 b!7962166) bm!738413))

(assert (= (or b!7962163 b!7962168) bm!738414))

(assert (= (or b!7962170 bm!738414) bm!738415))

(assert (= (or b!7962170 bm!738413) bm!738412))

(declare-fun m!8342478 () Bool)

(assert (=> bm!738412 m!8342478))

(declare-fun m!8342480 () Bool)

(assert (=> b!7962165 m!8342480))

(declare-fun m!8342482 () Bool)

(assert (=> d!2378291 m!8342482))

(declare-fun m!8342484 () Bool)

(assert (=> d!2378291 m!8342484))

(declare-fun m!8342486 () Bool)

(assert (=> bm!738415 m!8342486))

(assert (=> bm!738338 d!2378291))

(declare-fun d!2378293 () Bool)

(declare-fun c!1462246 () Bool)

(assert (=> d!2378293 (= c!1462246 (is-Nil!74601 lt!2703744))))

(declare-fun e!4695455 () (Set C!43330))

(assert (=> d!2378293 (= (content!15844 lt!2703744) e!4695455)))

(declare-fun b!7962177 () Bool)

(assert (=> b!7962177 (= e!4695455 (as set.empty (Set C!43330)))))

(declare-fun b!7962178 () Bool)

(assert (=> b!7962178 (= e!4695455 (set.union (set.insert (h!81049 lt!2703744) (as set.empty (Set C!43330))) (content!15844 (t!390468 lt!2703744))))))

(assert (= (and d!2378293 c!1462246) b!7962177))

(assert (= (and d!2378293 (not c!1462246)) b!7962178))

(declare-fun m!8342488 () Bool)

(assert (=> b!7962178 m!8342488))

(declare-fun m!8342490 () Bool)

(assert (=> b!7962178 m!8342490))

(assert (=> d!2378255 d!2378293))

(declare-fun d!2378295 () Bool)

(declare-fun c!1462247 () Bool)

(assert (=> d!2378295 (= c!1462247 (is-Nil!74601 testedP!447))))

(declare-fun e!4695456 () (Set C!43330))

(assert (=> d!2378295 (= (content!15844 testedP!447) e!4695456)))

(declare-fun b!7962179 () Bool)

(assert (=> b!7962179 (= e!4695456 (as set.empty (Set C!43330)))))

(declare-fun b!7962180 () Bool)

(assert (=> b!7962180 (= e!4695456 (set.union (set.insert (h!81049 testedP!447) (as set.empty (Set C!43330))) (content!15844 (t!390468 testedP!447))))))

(assert (= (and d!2378295 c!1462247) b!7962179))

(assert (= (and d!2378295 (not c!1462247)) b!7962180))

(declare-fun m!8342492 () Bool)

(assert (=> b!7962180 m!8342492))

(declare-fun m!8342494 () Bool)

(assert (=> b!7962180 m!8342494))

(assert (=> d!2378255 d!2378295))

(declare-fun d!2378297 () Bool)

(declare-fun c!1462248 () Bool)

(assert (=> d!2378297 (= c!1462248 (is-Nil!74601 (Cons!74601 lt!2703542 Nil!74601)))))

(declare-fun e!4695457 () (Set C!43330))

(assert (=> d!2378297 (= (content!15844 (Cons!74601 lt!2703542 Nil!74601)) e!4695457)))

(declare-fun b!7962181 () Bool)

(assert (=> b!7962181 (= e!4695457 (as set.empty (Set C!43330)))))

(declare-fun b!7962182 () Bool)

(assert (=> b!7962182 (= e!4695457 (set.union (set.insert (h!81049 (Cons!74601 lt!2703542 Nil!74601)) (as set.empty (Set C!43330))) (content!15844 (t!390468 (Cons!74601 lt!2703542 Nil!74601)))))))

(assert (= (and d!2378297 c!1462248) b!7962181))

(assert (= (and d!2378297 (not c!1462248)) b!7962182))

(declare-fun m!8342496 () Bool)

(assert (=> b!7962182 m!8342496))

(declare-fun m!8342498 () Bool)

(assert (=> b!7962182 m!8342498))

(assert (=> d!2378255 d!2378297))

(declare-fun d!2378299 () Bool)

(assert (=> d!2378299 (= (isEmpty!42902 (_1!38630 lt!2703686)) (is-Nil!74601 (_1!38630 lt!2703686)))))

(assert (=> b!7961805 d!2378299))

(declare-fun d!2378301 () Bool)

(assert (=> d!2378301 (= (nullable!9597 (regOne!43504 r!24602)) (nullableFct!3786 (regOne!43504 r!24602)))))

(declare-fun bs!1969771 () Bool)

(assert (= bs!1969771 d!2378301))

(declare-fun m!8342500 () Bool)

(assert (=> bs!1969771 m!8342500))

(assert (=> b!7961833 d!2378301))

(assert (=> d!2378233 d!2378243))

(assert (=> d!2378233 d!2378235))

(declare-fun d!2378303 () Bool)

(assert (=> d!2378303 (<= (size!43432 testedP!447) (size!43432 input!7927))))

(assert (=> d!2378303 true))

(declare-fun _$64!922 () Unit!170038)

(assert (=> d!2378303 (= (choose!59996 testedP!447 input!7927) _$64!922)))

(declare-fun bs!1969772 () Bool)

(assert (= bs!1969772 d!2378303))

(assert (=> bs!1969772 m!8342050))

(assert (=> bs!1969772 m!8342052))

(assert (=> d!2378233 d!2378303))

(assert (=> d!2378233 d!2378247))

(assert (=> bm!738344 d!2378251))

(declare-fun b!7962183 () Bool)

(declare-fun e!4695464 () Bool)

(declare-fun call!738421 () Bool)

(assert (=> b!7962183 (= e!4695464 call!738421)))

(declare-fun bm!738416 () Bool)

(declare-fun c!1462250 () Bool)

(assert (=> bm!738416 (= call!738421 (validRegex!11800 (ite c!1462250 (regTwo!43505 lt!2703696) (regTwo!43504 lt!2703696))))))

(declare-fun b!7962184 () Bool)

(declare-fun e!4695462 () Bool)

(declare-fun e!4695461 () Bool)

(assert (=> b!7962184 (= e!4695462 e!4695461)))

(declare-fun c!1462249 () Bool)

(assert (=> b!7962184 (= c!1462249 (is-Star!21496 lt!2703696))))

(declare-fun b!7962185 () Bool)

(declare-fun e!4695459 () Bool)

(assert (=> b!7962185 (= e!4695461 e!4695459)))

(assert (=> b!7962185 (= c!1462250 (is-Union!21496 lt!2703696))))

(declare-fun b!7962186 () Bool)

(declare-fun e!4695463 () Bool)

(assert (=> b!7962186 (= e!4695463 call!738421)))

(declare-fun b!7962187 () Bool)

(declare-fun res!3155559 () Bool)

(declare-fun e!4695460 () Bool)

(assert (=> b!7962187 (=> res!3155559 e!4695460)))

(assert (=> b!7962187 (= res!3155559 (not (is-Concat!30495 lt!2703696)))))

(assert (=> b!7962187 (= e!4695459 e!4695460)))

(declare-fun b!7962188 () Bool)

(declare-fun e!4695458 () Bool)

(assert (=> b!7962188 (= e!4695461 e!4695458)))

(declare-fun res!3155560 () Bool)

(assert (=> b!7962188 (= res!3155560 (not (nullable!9597 (reg!21825 lt!2703696))))))

(assert (=> b!7962188 (=> (not res!3155560) (not e!4695458))))

(declare-fun d!2378305 () Bool)

(declare-fun res!3155561 () Bool)

(assert (=> d!2378305 (=> res!3155561 e!4695462)))

(assert (=> d!2378305 (= res!3155561 (is-ElementMatch!21496 lt!2703696))))

(assert (=> d!2378305 (= (validRegex!11800 lt!2703696) e!4695462)))

(declare-fun b!7962189 () Bool)

(declare-fun call!738423 () Bool)

(assert (=> b!7962189 (= e!4695458 call!738423)))

(declare-fun bm!738417 () Bool)

(declare-fun call!738422 () Bool)

(assert (=> bm!738417 (= call!738422 call!738423)))

(declare-fun b!7962190 () Bool)

(declare-fun res!3155562 () Bool)

(assert (=> b!7962190 (=> (not res!3155562) (not e!4695463))))

(assert (=> b!7962190 (= res!3155562 call!738422)))

(assert (=> b!7962190 (= e!4695459 e!4695463)))

(declare-fun b!7962191 () Bool)

(assert (=> b!7962191 (= e!4695460 e!4695464)))

(declare-fun res!3155563 () Bool)

(assert (=> b!7962191 (=> (not res!3155563) (not e!4695464))))

(assert (=> b!7962191 (= res!3155563 call!738422)))

(declare-fun bm!738418 () Bool)

(assert (=> bm!738418 (= call!738423 (validRegex!11800 (ite c!1462249 (reg!21825 lt!2703696) (ite c!1462250 (regOne!43505 lt!2703696) (regOne!43504 lt!2703696)))))))

(assert (= (and d!2378305 (not res!3155561)) b!7962184))

(assert (= (and b!7962184 c!1462249) b!7962188))

(assert (= (and b!7962184 (not c!1462249)) b!7962185))

(assert (= (and b!7962188 res!3155560) b!7962189))

(assert (= (and b!7962185 c!1462250) b!7962190))

(assert (= (and b!7962185 (not c!1462250)) b!7962187))

(assert (= (and b!7962190 res!3155562) b!7962186))

(assert (= (and b!7962187 (not res!3155559)) b!7962191))

(assert (= (and b!7962191 res!3155563) b!7962183))

(assert (= (or b!7962186 b!7962183) bm!738416))

(assert (= (or b!7962190 b!7962191) bm!738417))

(assert (= (or b!7962189 bm!738417) bm!738418))

(declare-fun m!8342502 () Bool)

(assert (=> bm!738416 m!8342502))

(declare-fun m!8342504 () Bool)

(assert (=> b!7962188 m!8342504))

(declare-fun m!8342506 () Bool)

(assert (=> bm!738418 m!8342506))

(assert (=> d!2378231 d!2378305))

(declare-fun b!7962192 () Bool)

(declare-fun e!4695471 () Bool)

(declare-fun call!738424 () Bool)

(assert (=> b!7962192 (= e!4695471 call!738424)))

(declare-fun bm!738419 () Bool)

(declare-fun c!1462252 () Bool)

(assert (=> bm!738419 (= call!738424 (validRegex!11800 (ite c!1462252 (regTwo!43505 r!24602) (regTwo!43504 r!24602))))))

(declare-fun b!7962193 () Bool)

(declare-fun e!4695469 () Bool)

(declare-fun e!4695468 () Bool)

(assert (=> b!7962193 (= e!4695469 e!4695468)))

(declare-fun c!1462251 () Bool)

(assert (=> b!7962193 (= c!1462251 (is-Star!21496 r!24602))))

(declare-fun b!7962194 () Bool)

(declare-fun e!4695466 () Bool)

(assert (=> b!7962194 (= e!4695468 e!4695466)))

(assert (=> b!7962194 (= c!1462252 (is-Union!21496 r!24602))))

(declare-fun b!7962195 () Bool)

(declare-fun e!4695470 () Bool)

(assert (=> b!7962195 (= e!4695470 call!738424)))

(declare-fun b!7962196 () Bool)

(declare-fun res!3155564 () Bool)

(declare-fun e!4695467 () Bool)

(assert (=> b!7962196 (=> res!3155564 e!4695467)))

(assert (=> b!7962196 (= res!3155564 (not (is-Concat!30495 r!24602)))))

(assert (=> b!7962196 (= e!4695466 e!4695467)))

(declare-fun b!7962197 () Bool)

(declare-fun e!4695465 () Bool)

(assert (=> b!7962197 (= e!4695468 e!4695465)))

(declare-fun res!3155565 () Bool)

(assert (=> b!7962197 (= res!3155565 (not (nullable!9597 (reg!21825 r!24602))))))

(assert (=> b!7962197 (=> (not res!3155565) (not e!4695465))))

(declare-fun d!2378307 () Bool)

(declare-fun res!3155566 () Bool)

(assert (=> d!2378307 (=> res!3155566 e!4695469)))

(assert (=> d!2378307 (= res!3155566 (is-ElementMatch!21496 r!24602))))

(assert (=> d!2378307 (= (validRegex!11800 r!24602) e!4695469)))

(declare-fun b!7962198 () Bool)

(declare-fun call!738426 () Bool)

(assert (=> b!7962198 (= e!4695465 call!738426)))

(declare-fun bm!738420 () Bool)

(declare-fun call!738425 () Bool)

(assert (=> bm!738420 (= call!738425 call!738426)))

(declare-fun b!7962199 () Bool)

(declare-fun res!3155567 () Bool)

(assert (=> b!7962199 (=> (not res!3155567) (not e!4695470))))

(assert (=> b!7962199 (= res!3155567 call!738425)))

(assert (=> b!7962199 (= e!4695466 e!4695470)))

(declare-fun b!7962200 () Bool)

(assert (=> b!7962200 (= e!4695467 e!4695471)))

(declare-fun res!3155568 () Bool)

(assert (=> b!7962200 (=> (not res!3155568) (not e!4695471))))

(assert (=> b!7962200 (= res!3155568 call!738425)))

(declare-fun bm!738421 () Bool)

(assert (=> bm!738421 (= call!738426 (validRegex!11800 (ite c!1462251 (reg!21825 r!24602) (ite c!1462252 (regOne!43505 r!24602) (regOne!43504 r!24602)))))))

(assert (= (and d!2378307 (not res!3155566)) b!7962193))

(assert (= (and b!7962193 c!1462251) b!7962197))

(assert (= (and b!7962193 (not c!1462251)) b!7962194))

(assert (= (and b!7962197 res!3155565) b!7962198))

(assert (= (and b!7962194 c!1462252) b!7962199))

(assert (= (and b!7962194 (not c!1462252)) b!7962196))

(assert (= (and b!7962199 res!3155567) b!7962195))

(assert (= (and b!7962196 (not res!3155564)) b!7962200))

(assert (= (and b!7962200 res!3155568) b!7962192))

(assert (= (or b!7962195 b!7962192) bm!738419))

(assert (= (or b!7962199 b!7962200) bm!738420))

(assert (= (or b!7962198 bm!738420) bm!738421))

(declare-fun m!8342508 () Bool)

(assert (=> bm!738419 m!8342508))

(declare-fun m!8342510 () Bool)

(assert (=> b!7962197 m!8342510))

(declare-fun m!8342512 () Bool)

(assert (=> bm!738421 m!8342512))

(assert (=> d!2378231 d!2378307))

(declare-fun b!7962203 () Bool)

(declare-fun e!4695472 () Bool)

(assert (=> b!7962203 (= e!4695472 (isPrefix!6596 (tail!15785 (tail!15785 input!7927)) (tail!15785 (tail!15785 input!7927))))))

(declare-fun b!7962204 () Bool)

(declare-fun e!4695474 () Bool)

(assert (=> b!7962204 (= e!4695474 (>= (size!43432 (tail!15785 input!7927)) (size!43432 (tail!15785 input!7927))))))

(declare-fun b!7962201 () Bool)

(declare-fun e!4695473 () Bool)

(assert (=> b!7962201 (= e!4695473 e!4695472)))

(declare-fun res!3155572 () Bool)

(assert (=> b!7962201 (=> (not res!3155572) (not e!4695472))))

(assert (=> b!7962201 (= res!3155572 (not (is-Nil!74601 (tail!15785 input!7927))))))

(declare-fun b!7962202 () Bool)

(declare-fun res!3155570 () Bool)

(assert (=> b!7962202 (=> (not res!3155570) (not e!4695472))))

(assert (=> b!7962202 (= res!3155570 (= (head!16248 (tail!15785 input!7927)) (head!16248 (tail!15785 input!7927))))))

(declare-fun d!2378309 () Bool)

(assert (=> d!2378309 e!4695474))

(declare-fun res!3155571 () Bool)

(assert (=> d!2378309 (=> res!3155571 e!4695474)))

(declare-fun lt!2703881 () Bool)

(assert (=> d!2378309 (= res!3155571 (not lt!2703881))))

(assert (=> d!2378309 (= lt!2703881 e!4695473)))

(declare-fun res!3155569 () Bool)

(assert (=> d!2378309 (=> res!3155569 e!4695473)))

(assert (=> d!2378309 (= res!3155569 (is-Nil!74601 (tail!15785 input!7927)))))

(assert (=> d!2378309 (= (isPrefix!6596 (tail!15785 input!7927) (tail!15785 input!7927)) lt!2703881)))

(assert (= (and d!2378309 (not res!3155569)) b!7962201))

(assert (= (and b!7962201 res!3155572) b!7962202))

(assert (= (and b!7962202 res!3155570) b!7962203))

(assert (= (and d!2378309 (not res!3155571)) b!7962204))

(assert (=> b!7962203 m!8342150))

(declare-fun m!8342514 () Bool)

(assert (=> b!7962203 m!8342514))

(assert (=> b!7962203 m!8342150))

(assert (=> b!7962203 m!8342514))

(assert (=> b!7962203 m!8342514))

(assert (=> b!7962203 m!8342514))

(declare-fun m!8342516 () Bool)

(assert (=> b!7962203 m!8342516))

(assert (=> b!7962204 m!8342150))

(declare-fun m!8342518 () Bool)

(assert (=> b!7962204 m!8342518))

(assert (=> b!7962204 m!8342150))

(assert (=> b!7962204 m!8342518))

(assert (=> b!7962202 m!8342150))

(declare-fun m!8342520 () Bool)

(assert (=> b!7962202 m!8342520))

(assert (=> b!7962202 m!8342150))

(assert (=> b!7962202 m!8342520))

(assert (=> b!7961739 d!2378309))

(declare-fun d!2378311 () Bool)

(assert (=> d!2378311 (= (tail!15785 input!7927) (t!390468 input!7927))))

(assert (=> b!7961739 d!2378311))

(assert (=> b!7961847 d!2378235))

(declare-fun lt!2703882 () List!74725)

(declare-fun b!7962208 () Bool)

(declare-fun e!4695475 () Bool)

(assert (=> b!7962208 (= e!4695475 (or (not (= (Cons!74601 lt!2703716 Nil!74601) Nil!74601)) (= lt!2703882 testedP!447)))))

(declare-fun d!2378313 () Bool)

(assert (=> d!2378313 e!4695475))

(declare-fun res!3155573 () Bool)

(assert (=> d!2378313 (=> (not res!3155573) (not e!4695475))))

(assert (=> d!2378313 (= res!3155573 (= (content!15844 lt!2703882) (set.union (content!15844 testedP!447) (content!15844 (Cons!74601 lt!2703716 Nil!74601)))))))

(declare-fun e!4695476 () List!74725)

(assert (=> d!2378313 (= lt!2703882 e!4695476)))

(declare-fun c!1462253 () Bool)

(assert (=> d!2378313 (= c!1462253 (is-Nil!74601 testedP!447))))

(assert (=> d!2378313 (= (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601)) lt!2703882)))

(declare-fun b!7962206 () Bool)

(assert (=> b!7962206 (= e!4695476 (Cons!74601 (h!81049 testedP!447) (++!18366 (t!390468 testedP!447) (Cons!74601 lt!2703716 Nil!74601))))))

(declare-fun b!7962207 () Bool)

(declare-fun res!3155574 () Bool)

(assert (=> b!7962207 (=> (not res!3155574) (not e!4695475))))

(assert (=> b!7962207 (= res!3155574 (= (size!43432 lt!2703882) (+ (size!43432 testedP!447) (size!43432 (Cons!74601 lt!2703716 Nil!74601)))))))

(declare-fun b!7962205 () Bool)

(assert (=> b!7962205 (= e!4695476 (Cons!74601 lt!2703716 Nil!74601))))

(assert (= (and d!2378313 c!1462253) b!7962205))

(assert (= (and d!2378313 (not c!1462253)) b!7962206))

(assert (= (and d!2378313 res!3155573) b!7962207))

(assert (= (and b!7962207 res!3155574) b!7962208))

(declare-fun m!8342522 () Bool)

(assert (=> d!2378313 m!8342522))

(assert (=> d!2378313 m!8342328))

(declare-fun m!8342524 () Bool)

(assert (=> d!2378313 m!8342524))

(declare-fun m!8342526 () Bool)

(assert (=> b!7962206 m!8342526))

(declare-fun m!8342528 () Bool)

(assert (=> b!7962207 m!8342528))

(assert (=> b!7962207 m!8342050))

(declare-fun m!8342530 () Bool)

(assert (=> b!7962207 m!8342530))

(assert (=> b!7961847 d!2378313))

(assert (=> b!7961847 d!2378249))

(declare-fun d!2378315 () Bool)

(assert (=> d!2378315 (= (head!16248 (getSuffix!3799 input!7927 testedP!447)) (h!81049 (getSuffix!3799 input!7927 testedP!447)))))

(assert (=> b!7961847 d!2378315))

(assert (=> b!7961847 d!2378251))

(declare-fun lt!2703883 () List!74725)

(declare-fun b!7962212 () Bool)

(declare-fun e!4695477 () Bool)

(assert (=> b!7962212 (= e!4695477 (or (not (= (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601) Nil!74601)) (= lt!2703883 testedP!447)))))

(declare-fun d!2378317 () Bool)

(assert (=> d!2378317 e!4695477))

(declare-fun res!3155575 () Bool)

(assert (=> d!2378317 (=> (not res!3155575) (not e!4695477))))

(assert (=> d!2378317 (= res!3155575 (= (content!15844 lt!2703883) (set.union (content!15844 testedP!447) (content!15844 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601)))))))

(declare-fun e!4695478 () List!74725)

(assert (=> d!2378317 (= lt!2703883 e!4695478)))

(declare-fun c!1462254 () Bool)

(assert (=> d!2378317 (= c!1462254 (is-Nil!74601 testedP!447))))

(assert (=> d!2378317 (= (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601)) lt!2703883)))

(declare-fun b!7962210 () Bool)

(assert (=> b!7962210 (= e!4695478 (Cons!74601 (h!81049 testedP!447) (++!18366 (t!390468 testedP!447) (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601))))))

(declare-fun b!7962211 () Bool)

(declare-fun res!3155576 () Bool)

(assert (=> b!7962211 (=> (not res!3155576) (not e!4695477))))

(assert (=> b!7962211 (= res!3155576 (= (size!43432 lt!2703883) (+ (size!43432 testedP!447) (size!43432 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601)))))))

(declare-fun b!7962209 () Bool)

(assert (=> b!7962209 (= e!4695478 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601))))

(assert (= (and d!2378317 c!1462254) b!7962209))

(assert (= (and d!2378317 (not c!1462254)) b!7962210))

(assert (= (and d!2378317 res!3155575) b!7962211))

(assert (= (and b!7962211 res!3155576) b!7962212))

(declare-fun m!8342532 () Bool)

(assert (=> d!2378317 m!8342532))

(assert (=> d!2378317 m!8342328))

(declare-fun m!8342534 () Bool)

(assert (=> d!2378317 m!8342534))

(declare-fun m!8342536 () Bool)

(assert (=> b!7962210 m!8342536))

(declare-fun m!8342538 () Bool)

(assert (=> b!7962211 m!8342538))

(assert (=> b!7962211 m!8342050))

(declare-fun m!8342540 () Bool)

(assert (=> b!7962211 m!8342540))

(assert (=> b!7961847 d!2378317))

(declare-fun b!7962215 () Bool)

(declare-fun e!4695479 () Bool)

(assert (=> b!7962215 (= e!4695479 (isPrefix!6596 (tail!15785 (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601))) (tail!15785 input!7927)))))

(declare-fun b!7962216 () Bool)

(declare-fun e!4695481 () Bool)

(assert (=> b!7962216 (= e!4695481 (>= (size!43432 input!7927) (size!43432 (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601)))))))

(declare-fun b!7962213 () Bool)

(declare-fun e!4695480 () Bool)

(assert (=> b!7962213 (= e!4695480 e!4695479)))

(declare-fun res!3155580 () Bool)

(assert (=> b!7962213 (=> (not res!3155580) (not e!4695479))))

(assert (=> b!7962213 (= res!3155580 (not (is-Nil!74601 input!7927)))))

(declare-fun b!7962214 () Bool)

(declare-fun res!3155578 () Bool)

(assert (=> b!7962214 (=> (not res!3155578) (not e!4695479))))

(assert (=> b!7962214 (= res!3155578 (= (head!16248 (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601))) (head!16248 input!7927)))))

(declare-fun d!2378319 () Bool)

(assert (=> d!2378319 e!4695481))

(declare-fun res!3155579 () Bool)

(assert (=> d!2378319 (=> res!3155579 e!4695481)))

(declare-fun lt!2703884 () Bool)

(assert (=> d!2378319 (= res!3155579 (not lt!2703884))))

(assert (=> d!2378319 (= lt!2703884 e!4695480)))

(declare-fun res!3155577 () Bool)

(assert (=> d!2378319 (=> res!3155577 e!4695480)))

(assert (=> d!2378319 (= res!3155577 (is-Nil!74601 (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601))))))

(assert (=> d!2378319 (= (isPrefix!6596 (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601)) input!7927) lt!2703884)))

(assert (= (and d!2378319 (not res!3155577)) b!7962213))

(assert (= (and b!7962213 res!3155580) b!7962214))

(assert (= (and b!7962214 res!3155578) b!7962215))

(assert (= (and d!2378319 (not res!3155579)) b!7962216))

(assert (=> b!7962215 m!8342294))

(declare-fun m!8342542 () Bool)

(assert (=> b!7962215 m!8342542))

(assert (=> b!7962215 m!8342150))

(assert (=> b!7962215 m!8342542))

(assert (=> b!7962215 m!8342150))

(declare-fun m!8342544 () Bool)

(assert (=> b!7962215 m!8342544))

(assert (=> b!7962216 m!8342052))

(assert (=> b!7962216 m!8342294))

(declare-fun m!8342546 () Bool)

(assert (=> b!7962216 m!8342546))

(assert (=> b!7962214 m!8342294))

(declare-fun m!8342548 () Bool)

(assert (=> b!7962214 m!8342548))

(assert (=> b!7962214 m!8342158))

(assert (=> b!7961847 d!2378319))

(assert (=> b!7961847 d!2378239))

(declare-fun d!2378321 () Bool)

(assert (=> d!2378321 (= (++!18366 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601)) lt!2703708) input!7927)))

(declare-fun lt!2703887 () Unit!170038)

(declare-fun choose!60005 (List!74725 C!43330 List!74725 List!74725) Unit!170038)

(assert (=> d!2378321 (= lt!2703887 (choose!60005 testedP!447 lt!2703716 lt!2703708 input!7927))))

(assert (=> d!2378321 (= (++!18366 testedP!447 (Cons!74601 lt!2703716 lt!2703708)) input!7927)))

(assert (=> d!2378321 (= (lemmaMoveElementToOtherListKeepsConcatEq!3531 testedP!447 lt!2703716 lt!2703708 input!7927) lt!2703887)))

(declare-fun bs!1969773 () Bool)

(assert (= bs!1969773 d!2378321))

(assert (=> bs!1969773 m!8342298))

(assert (=> bs!1969773 m!8342298))

(assert (=> bs!1969773 m!8342300))

(declare-fun m!8342550 () Bool)

(assert (=> bs!1969773 m!8342550))

(declare-fun m!8342552 () Bool)

(assert (=> bs!1969773 m!8342552))

(assert (=> b!7961847 d!2378321))

(assert (=> b!7961847 d!2378243))

(declare-fun lt!2703888 () List!74725)

(declare-fun b!7962220 () Bool)

(declare-fun e!4695482 () Bool)

(assert (=> b!7962220 (= e!4695482 (or (not (= lt!2703708 Nil!74601)) (= lt!2703888 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601)))))))

(declare-fun d!2378323 () Bool)

(assert (=> d!2378323 e!4695482))

(declare-fun res!3155581 () Bool)

(assert (=> d!2378323 (=> (not res!3155581) (not e!4695482))))

(assert (=> d!2378323 (= res!3155581 (= (content!15844 lt!2703888) (set.union (content!15844 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601))) (content!15844 lt!2703708))))))

(declare-fun e!4695483 () List!74725)

(assert (=> d!2378323 (= lt!2703888 e!4695483)))

(declare-fun c!1462255 () Bool)

(assert (=> d!2378323 (= c!1462255 (is-Nil!74601 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601))))))

(assert (=> d!2378323 (= (++!18366 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601)) lt!2703708) lt!2703888)))

(declare-fun b!7962218 () Bool)

(assert (=> b!7962218 (= e!4695483 (Cons!74601 (h!81049 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601))) (++!18366 (t!390468 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601))) lt!2703708)))))

(declare-fun b!7962219 () Bool)

(declare-fun res!3155582 () Bool)

(assert (=> b!7962219 (=> (not res!3155582) (not e!4695482))))

(assert (=> b!7962219 (= res!3155582 (= (size!43432 lt!2703888) (+ (size!43432 (++!18366 testedP!447 (Cons!74601 lt!2703716 Nil!74601))) (size!43432 lt!2703708))))))

(declare-fun b!7962217 () Bool)

(assert (=> b!7962217 (= e!4695483 lt!2703708)))

(assert (= (and d!2378323 c!1462255) b!7962217))

(assert (= (and d!2378323 (not c!1462255)) b!7962218))

(assert (= (and d!2378323 res!3155581) b!7962219))

(assert (= (and b!7962219 res!3155582) b!7962220))

(declare-fun m!8342554 () Bool)

(assert (=> d!2378323 m!8342554))

(assert (=> d!2378323 m!8342298))

(declare-fun m!8342556 () Bool)

(assert (=> d!2378323 m!8342556))

(declare-fun m!8342558 () Bool)

(assert (=> d!2378323 m!8342558))

(declare-fun m!8342560 () Bool)

(assert (=> b!7962218 m!8342560))

(declare-fun m!8342562 () Bool)

(assert (=> b!7962219 m!8342562))

(assert (=> b!7962219 m!8342298))

(declare-fun m!8342564 () Bool)

(assert (=> b!7962219 m!8342564))

(declare-fun m!8342566 () Bool)

(assert (=> b!7962219 m!8342566))

(assert (=> b!7961847 d!2378323))

(assert (=> b!7961847 d!2378229))

(declare-fun b!7962224 () Bool)

(declare-fun lt!2703889 () List!74725)

(declare-fun e!4695484 () Bool)

(assert (=> b!7962224 (= e!4695484 (or (not (= (Cons!74601 (head!16248 lt!2703538) Nil!74601) Nil!74601)) (= lt!2703889 testedP!447)))))

(declare-fun d!2378325 () Bool)

(assert (=> d!2378325 e!4695484))

(declare-fun res!3155583 () Bool)

(assert (=> d!2378325 (=> (not res!3155583) (not e!4695484))))

(assert (=> d!2378325 (= res!3155583 (= (content!15844 lt!2703889) (set.union (content!15844 testedP!447) (content!15844 (Cons!74601 (head!16248 lt!2703538) Nil!74601)))))))

(declare-fun e!4695485 () List!74725)

(assert (=> d!2378325 (= lt!2703889 e!4695485)))

(declare-fun c!1462256 () Bool)

(assert (=> d!2378325 (= c!1462256 (is-Nil!74601 testedP!447))))

(assert (=> d!2378325 (= (++!18366 testedP!447 (Cons!74601 (head!16248 lt!2703538) Nil!74601)) lt!2703889)))

(declare-fun b!7962222 () Bool)

(assert (=> b!7962222 (= e!4695485 (Cons!74601 (h!81049 testedP!447) (++!18366 (t!390468 testedP!447) (Cons!74601 (head!16248 lt!2703538) Nil!74601))))))

(declare-fun b!7962223 () Bool)

(declare-fun res!3155584 () Bool)

(assert (=> b!7962223 (=> (not res!3155584) (not e!4695484))))

(assert (=> b!7962223 (= res!3155584 (= (size!43432 lt!2703889) (+ (size!43432 testedP!447) (size!43432 (Cons!74601 (head!16248 lt!2703538) Nil!74601)))))))

(declare-fun b!7962221 () Bool)

(assert (=> b!7962221 (= e!4695485 (Cons!74601 (head!16248 lt!2703538) Nil!74601))))

(assert (= (and d!2378325 c!1462256) b!7962221))

(assert (= (and d!2378325 (not c!1462256)) b!7962222))

(assert (= (and d!2378325 res!3155583) b!7962223))

(assert (= (and b!7962223 res!3155584) b!7962224))

(declare-fun m!8342568 () Bool)

(assert (=> d!2378325 m!8342568))

(assert (=> d!2378325 m!8342328))

(declare-fun m!8342570 () Bool)

(assert (=> d!2378325 m!8342570))

(declare-fun m!8342572 () Bool)

(assert (=> b!7962222 m!8342572))

(declare-fun m!8342574 () Bool)

(assert (=> b!7962223 m!8342574))

(assert (=> b!7962223 m!8342050))

(declare-fun m!8342576 () Bool)

(assert (=> b!7962223 m!8342576))

(assert (=> b!7961847 d!2378325))

(assert (=> b!7961847 d!2378233))

(declare-fun bm!738422 () Bool)

(declare-fun call!738430 () Unit!170038)

(assert (=> bm!738422 (= call!738430 (lemmaIsPrefixSameLengthThenSameList!1644 input!7927 lt!2703682 input!7927))))

(declare-fun d!2378327 () Bool)

(declare-fun e!4695486 () Bool)

(assert (=> d!2378327 e!4695486))

(declare-fun res!3155586 () Bool)

(assert (=> d!2378327 (=> (not res!3155586) (not e!4695486))))

(declare-fun lt!2703910 () tuple2!70654)

(assert (=> d!2378327 (= res!3155586 (= (++!18366 (_1!38630 lt!2703910) (_2!38630 lt!2703910)) input!7927))))

(declare-fun e!4695491 () tuple2!70654)

(assert (=> d!2378327 (= lt!2703910 e!4695491)))

(declare-fun c!1462261 () Bool)

(assert (=> d!2378327 (= c!1462261 (lostCause!1975 call!738333))))

(declare-fun lt!2703907 () Unit!170038)

(declare-fun Unit!170058 () Unit!170038)

(assert (=> d!2378327 (= lt!2703907 Unit!170058)))

(assert (=> d!2378327 (= (getSuffix!3799 input!7927 lt!2703682) call!738331)))

(declare-fun lt!2703912 () Unit!170038)

(declare-fun lt!2703890 () Unit!170038)

(assert (=> d!2378327 (= lt!2703912 lt!2703890)))

(declare-fun lt!2703899 () List!74725)

(assert (=> d!2378327 (= call!738331 lt!2703899)))

(assert (=> d!2378327 (= lt!2703890 (lemmaSamePrefixThenSameSuffix!2991 lt!2703682 call!738331 lt!2703682 lt!2703899 input!7927))))

(assert (=> d!2378327 (= lt!2703899 (getSuffix!3799 input!7927 lt!2703682))))

(declare-fun lt!2703916 () Unit!170038)

(declare-fun lt!2703891 () Unit!170038)

(assert (=> d!2378327 (= lt!2703916 lt!2703891)))

(assert (=> d!2378327 (isPrefix!6596 lt!2703682 (++!18366 lt!2703682 call!738331))))

(assert (=> d!2378327 (= lt!2703891 (lemmaConcatTwoListThenFirstIsPrefix!3853 lt!2703682 call!738331))))

(assert (=> d!2378327 (validRegex!11800 call!738333)))

(assert (=> d!2378327 (= (findLongestMatchInner!2277 call!738333 lt!2703682 (+ 1 lt!2703534 1) call!738331 input!7927 lt!2703540) lt!2703910)))

(declare-fun b!7962225 () Bool)

(declare-fun c!1462257 () Bool)

(declare-fun call!738432 () Bool)

(assert (=> b!7962225 (= c!1462257 call!738432)))

(declare-fun lt!2703901 () Unit!170038)

(declare-fun lt!2703894 () Unit!170038)

(assert (=> b!7962225 (= lt!2703901 lt!2703894)))

(declare-fun lt!2703903 () C!43330)

(declare-fun lt!2703895 () List!74725)

(assert (=> b!7962225 (= (++!18366 (++!18366 lt!2703682 (Cons!74601 lt!2703903 Nil!74601)) lt!2703895) input!7927)))

(assert (=> b!7962225 (= lt!2703894 (lemmaMoveElementToOtherListKeepsConcatEq!3531 lt!2703682 lt!2703903 lt!2703895 input!7927))))

(assert (=> b!7962225 (= lt!2703895 (tail!15785 call!738331))))

(assert (=> b!7962225 (= lt!2703903 (head!16248 call!738331))))

(declare-fun lt!2703902 () Unit!170038)

(declare-fun lt!2703893 () Unit!170038)

(assert (=> b!7962225 (= lt!2703902 lt!2703893)))

(assert (=> b!7962225 (isPrefix!6596 (++!18366 lt!2703682 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703682)) Nil!74601)) input!7927)))

(assert (=> b!7962225 (= lt!2703893 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 lt!2703682 input!7927))))

(declare-fun lt!2703908 () Unit!170038)

(declare-fun lt!2703909 () Unit!170038)

(assert (=> b!7962225 (= lt!2703908 lt!2703909)))

(assert (=> b!7962225 (= lt!2703909 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 lt!2703682 input!7927))))

(declare-fun lt!2703906 () List!74725)

(assert (=> b!7962225 (= lt!2703906 (++!18366 lt!2703682 (Cons!74601 (head!16248 call!738331) Nil!74601)))))

(declare-fun lt!2703898 () Unit!170038)

(declare-fun e!4695493 () Unit!170038)

(assert (=> b!7962225 (= lt!2703898 e!4695493)))

(declare-fun c!1462260 () Bool)

(assert (=> b!7962225 (= c!1462260 (= (size!43432 lt!2703682) (size!43432 input!7927)))))

(declare-fun lt!2703900 () Unit!170038)

(declare-fun lt!2703915 () Unit!170038)

(assert (=> b!7962225 (= lt!2703900 lt!2703915)))

(assert (=> b!7962225 (<= (size!43432 lt!2703682) (size!43432 input!7927))))

(assert (=> b!7962225 (= lt!2703915 (lemmaIsPrefixThenSmallerEqSize!1113 lt!2703682 input!7927))))

(declare-fun e!4695490 () tuple2!70654)

(declare-fun e!4695487 () tuple2!70654)

(assert (=> b!7962225 (= e!4695490 e!4695487)))

(declare-fun bm!738423 () Bool)

(declare-fun call!738431 () List!74725)

(assert (=> bm!738423 (= call!738431 (tail!15785 call!738331))))

(declare-fun bm!738424 () Bool)

(declare-fun call!738427 () C!43330)

(assert (=> bm!738424 (= call!738427 (head!16248 call!738331))))

(declare-fun b!7962226 () Bool)

(declare-fun e!4695488 () tuple2!70654)

(declare-fun lt!2703905 () tuple2!70654)

(assert (=> b!7962226 (= e!4695488 lt!2703905)))

(declare-fun bm!738425 () Bool)

(declare-fun call!738434 () Bool)

(assert (=> bm!738425 (= call!738434 (isPrefix!6596 input!7927 input!7927))))

(declare-fun bm!738426 () Bool)

(declare-fun call!738433 () Regex!21496)

(assert (=> bm!738426 (= call!738433 (derivativeStep!6524 call!738333 call!738427))))

(declare-fun b!7962227 () Bool)

(declare-fun e!4695489 () Bool)

(assert (=> b!7962227 (= e!4695489 (>= (size!43432 (_1!38630 lt!2703910)) (size!43432 lt!2703682)))))

(declare-fun b!7962228 () Bool)

(declare-fun e!4695492 () tuple2!70654)

(assert (=> b!7962228 (= e!4695492 (tuple2!70655 Nil!74601 input!7927))))

(declare-fun bm!738427 () Bool)

(declare-fun call!738428 () Unit!170038)

(assert (=> bm!738427 (= call!738428 (lemmaIsPrefixRefl!4064 input!7927 input!7927))))

(declare-fun b!7962229 () Bool)

(assert (=> b!7962229 (= e!4695491 e!4695490)))

(declare-fun c!1462259 () Bool)

(assert (=> b!7962229 (= c!1462259 (= (+ 1 lt!2703534 1) lt!2703540))))

(declare-fun b!7962230 () Bool)

(declare-fun Unit!170059 () Unit!170038)

(assert (=> b!7962230 (= e!4695493 Unit!170059)))

(declare-fun b!7962231 () Bool)

(assert (=> b!7962231 (= e!4695492 (tuple2!70655 lt!2703682 Nil!74601))))

(declare-fun b!7962232 () Bool)

(assert (=> b!7962232 (= e!4695487 e!4695488)))

(declare-fun call!738429 () tuple2!70654)

(assert (=> b!7962232 (= lt!2703905 call!738429)))

(declare-fun c!1462262 () Bool)

(assert (=> b!7962232 (= c!1462262 (isEmpty!42902 (_1!38630 lt!2703905)))))

(declare-fun bm!738428 () Bool)

(assert (=> bm!738428 (= call!738432 (nullable!9597 call!738333))))

(declare-fun b!7962233 () Bool)

(assert (=> b!7962233 (= e!4695486 e!4695489)))

(declare-fun res!3155585 () Bool)

(assert (=> b!7962233 (=> res!3155585 e!4695489)))

(assert (=> b!7962233 (= res!3155585 (isEmpty!42902 (_1!38630 lt!2703910)))))

(declare-fun b!7962234 () Bool)

(assert (=> b!7962234 (= e!4695487 call!738429)))

(declare-fun bm!738429 () Bool)

(assert (=> bm!738429 (= call!738429 (findLongestMatchInner!2277 call!738433 lt!2703906 (+ 1 lt!2703534 1 1) call!738431 input!7927 lt!2703540))))

(declare-fun b!7962235 () Bool)

(assert (=> b!7962235 (= e!4695491 (tuple2!70655 Nil!74601 input!7927))))

(declare-fun b!7962236 () Bool)

(declare-fun Unit!170060 () Unit!170038)

(assert (=> b!7962236 (= e!4695493 Unit!170060)))

(declare-fun lt!2703896 () Unit!170038)

(assert (=> b!7962236 (= lt!2703896 call!738428)))

(assert (=> b!7962236 call!738434))

(declare-fun lt!2703911 () Unit!170038)

(assert (=> b!7962236 (= lt!2703911 lt!2703896)))

(declare-fun lt!2703914 () Unit!170038)

(assert (=> b!7962236 (= lt!2703914 call!738430)))

(assert (=> b!7962236 (= input!7927 lt!2703682)))

(declare-fun lt!2703913 () Unit!170038)

(assert (=> b!7962236 (= lt!2703913 lt!2703914)))

(assert (=> b!7962236 false))

(declare-fun b!7962237 () Bool)

(declare-fun c!1462258 () Bool)

(assert (=> b!7962237 (= c!1462258 call!738432)))

(declare-fun lt!2703917 () Unit!170038)

(declare-fun lt!2703904 () Unit!170038)

(assert (=> b!7962237 (= lt!2703917 lt!2703904)))

(assert (=> b!7962237 (= input!7927 lt!2703682)))

(assert (=> b!7962237 (= lt!2703904 call!738430)))

(declare-fun lt!2703897 () Unit!170038)

(declare-fun lt!2703892 () Unit!170038)

(assert (=> b!7962237 (= lt!2703897 lt!2703892)))

(assert (=> b!7962237 call!738434))

(assert (=> b!7962237 (= lt!2703892 call!738428)))

(assert (=> b!7962237 (= e!4695490 e!4695492)))

(declare-fun b!7962238 () Bool)

(assert (=> b!7962238 (= e!4695488 (tuple2!70655 lt!2703682 call!738331))))

(assert (= (and d!2378327 c!1462261) b!7962235))

(assert (= (and d!2378327 (not c!1462261)) b!7962229))

(assert (= (and b!7962229 c!1462259) b!7962237))

(assert (= (and b!7962229 (not c!1462259)) b!7962225))

(assert (= (and b!7962237 c!1462258) b!7962231))

(assert (= (and b!7962237 (not c!1462258)) b!7962228))

(assert (= (and b!7962225 c!1462260) b!7962236))

(assert (= (and b!7962225 (not c!1462260)) b!7962230))

(assert (= (and b!7962225 c!1462257) b!7962232))

(assert (= (and b!7962225 (not c!1462257)) b!7962234))

(assert (= (and b!7962232 c!1462262) b!7962238))

(assert (= (and b!7962232 (not c!1462262)) b!7962226))

(assert (= (or b!7962232 b!7962234) bm!738424))

(assert (= (or b!7962232 b!7962234) bm!738423))

(assert (= (or b!7962232 b!7962234) bm!738426))

(assert (= (or b!7962232 b!7962234) bm!738429))

(assert (= (or b!7962237 b!7962225) bm!738428))

(assert (= (or b!7962237 b!7962236) bm!738422))

(assert (= (or b!7962237 b!7962236) bm!738427))

(assert (= (or b!7962237 b!7962236) bm!738425))

(assert (= (and d!2378327 res!3155586) b!7962233))

(assert (= (and b!7962233 (not res!3155585)) b!7962227))

(declare-fun m!8342578 () Bool)

(assert (=> d!2378327 m!8342578))

(declare-fun m!8342580 () Bool)

(assert (=> d!2378327 m!8342580))

(assert (=> d!2378327 m!8342578))

(declare-fun m!8342582 () Bool)

(assert (=> d!2378327 m!8342582))

(declare-fun m!8342584 () Bool)

(assert (=> d!2378327 m!8342584))

(declare-fun m!8342586 () Bool)

(assert (=> d!2378327 m!8342586))

(declare-fun m!8342588 () Bool)

(assert (=> d!2378327 m!8342588))

(declare-fun m!8342590 () Bool)

(assert (=> d!2378327 m!8342590))

(declare-fun m!8342592 () Bool)

(assert (=> d!2378327 m!8342592))

(declare-fun m!8342594 () Bool)

(assert (=> bm!738423 m!8342594))

(declare-fun m!8342596 () Bool)

(assert (=> bm!738426 m!8342596))

(assert (=> bm!738425 m!8342064))

(declare-fun m!8342598 () Bool)

(assert (=> b!7962233 m!8342598))

(declare-fun m!8342600 () Bool)

(assert (=> b!7962232 m!8342600))

(declare-fun m!8342602 () Bool)

(assert (=> bm!738428 m!8342602))

(declare-fun m!8342604 () Bool)

(assert (=> bm!738422 m!8342604))

(assert (=> bm!738427 m!8342062))

(declare-fun m!8342606 () Bool)

(assert (=> bm!738424 m!8342606))

(declare-fun m!8342608 () Bool)

(assert (=> b!7962227 m!8342608))

(declare-fun m!8342610 () Bool)

(assert (=> b!7962227 m!8342610))

(declare-fun m!8342612 () Bool)

(assert (=> bm!738429 m!8342612))

(assert (=> b!7962225 m!8342588))

(assert (=> b!7962225 m!8342606))

(declare-fun m!8342614 () Bool)

(assert (=> b!7962225 m!8342614))

(assert (=> b!7962225 m!8342610))

(declare-fun m!8342616 () Bool)

(assert (=> b!7962225 m!8342616))

(declare-fun m!8342618 () Bool)

(assert (=> b!7962225 m!8342618))

(assert (=> b!7962225 m!8342052))

(assert (=> b!7962225 m!8342594))

(declare-fun m!8342620 () Bool)

(assert (=> b!7962225 m!8342620))

(declare-fun m!8342622 () Bool)

(assert (=> b!7962225 m!8342622))

(declare-fun m!8342624 () Bool)

(assert (=> b!7962225 m!8342624))

(declare-fun m!8342626 () Bool)

(assert (=> b!7962225 m!8342626))

(declare-fun m!8342628 () Bool)

(assert (=> b!7962225 m!8342628))

(assert (=> b!7962225 m!8342620))

(assert (=> b!7962225 m!8342624))

(assert (=> b!7962225 m!8342588))

(declare-fun m!8342630 () Bool)

(assert (=> b!7962225 m!8342630))

(assert (=> bm!738329 d!2378327))

(declare-fun d!2378329 () Bool)

(declare-fun lt!2703918 () Int)

(assert (=> d!2378329 (>= lt!2703918 0)))

(declare-fun e!4695494 () Int)

(assert (=> d!2378329 (= lt!2703918 e!4695494)))

(declare-fun c!1462263 () Bool)

(assert (=> d!2378329 (= c!1462263 (is-Nil!74601 (t!390468 testedP!447)))))

(assert (=> d!2378329 (= (size!43432 (t!390468 testedP!447)) lt!2703918)))

(declare-fun b!7962239 () Bool)

(assert (=> b!7962239 (= e!4695494 0)))

(declare-fun b!7962240 () Bool)

(assert (=> b!7962240 (= e!4695494 (+ 1 (size!43432 (t!390468 (t!390468 testedP!447)))))))

(assert (= (and d!2378329 c!1462263) b!7962239))

(assert (= (and d!2378329 (not c!1462263)) b!7962240))

(declare-fun m!8342632 () Bool)

(assert (=> b!7962240 m!8342632))

(assert (=> b!7961868 d!2378329))

(declare-fun d!2378331 () Bool)

(assert (=> d!2378331 (= input!7927 lt!2703539)))

(declare-fun lt!2703919 () Unit!170038)

(assert (=> d!2378331 (= lt!2703919 (choose!59995 input!7927 lt!2703539 input!7927))))

(assert (=> d!2378331 (isPrefix!6596 input!7927 input!7927)))

(assert (=> d!2378331 (= (lemmaIsPrefixSameLengthThenSameList!1644 input!7927 lt!2703539 input!7927) lt!2703919)))

(declare-fun bs!1969774 () Bool)

(assert (= bs!1969774 d!2378331))

(declare-fun m!8342634 () Bool)

(assert (=> bs!1969774 m!8342634))

(assert (=> bs!1969774 m!8342064))

(assert (=> bm!738322 d!2378331))

(assert (=> d!2378199 d!2378201))

(declare-fun d!2378333 () Bool)

(assert (=> d!2378333 (isPrefix!6596 input!7927 input!7927)))

(assert (=> d!2378333 true))

(declare-fun _$45!2476 () Unit!170038)

(assert (=> d!2378333 (= (choose!59994 input!7927 input!7927) _$45!2476)))

(declare-fun bs!1969775 () Bool)

(assert (= bs!1969775 d!2378333))

(assert (=> bs!1969775 m!8342064))

(assert (=> d!2378199 d!2378333))

(assert (=> bm!738345 d!2378201))

(declare-fun b!7962243 () Bool)

(declare-fun e!4695495 () Bool)

(assert (=> b!7962243 (= e!4695495 (isPrefix!6596 (tail!15785 (tail!15785 testedP!447)) (tail!15785 (tail!15785 input!7927))))))

(declare-fun b!7962244 () Bool)

(declare-fun e!4695497 () Bool)

(assert (=> b!7962244 (= e!4695497 (>= (size!43432 (tail!15785 input!7927)) (size!43432 (tail!15785 testedP!447))))))

(declare-fun b!7962241 () Bool)

(declare-fun e!4695496 () Bool)

(assert (=> b!7962241 (= e!4695496 e!4695495)))

(declare-fun res!3155590 () Bool)

(assert (=> b!7962241 (=> (not res!3155590) (not e!4695495))))

(assert (=> b!7962241 (= res!3155590 (not (is-Nil!74601 (tail!15785 input!7927))))))

(declare-fun b!7962242 () Bool)

(declare-fun res!3155588 () Bool)

(assert (=> b!7962242 (=> (not res!3155588) (not e!4695495))))

(assert (=> b!7962242 (= res!3155588 (= (head!16248 (tail!15785 testedP!447)) (head!16248 (tail!15785 input!7927))))))

(declare-fun d!2378335 () Bool)

(assert (=> d!2378335 e!4695497))

(declare-fun res!3155589 () Bool)

(assert (=> d!2378335 (=> res!3155589 e!4695497)))

(declare-fun lt!2703920 () Bool)

(assert (=> d!2378335 (= res!3155589 (not lt!2703920))))

(assert (=> d!2378335 (= lt!2703920 e!4695496)))

(declare-fun res!3155587 () Bool)

(assert (=> d!2378335 (=> res!3155587 e!4695496)))

(assert (=> d!2378335 (= res!3155587 (is-Nil!74601 (tail!15785 testedP!447)))))

(assert (=> d!2378335 (= (isPrefix!6596 (tail!15785 testedP!447) (tail!15785 input!7927)) lt!2703920)))

(assert (= (and d!2378335 (not res!3155587)) b!7962241))

(assert (= (and b!7962241 res!3155590) b!7962242))

(assert (= (and b!7962242 res!3155588) b!7962243))

(assert (= (and d!2378335 (not res!3155589)) b!7962244))

(assert (=> b!7962243 m!8342316))

(declare-fun m!8342636 () Bool)

(assert (=> b!7962243 m!8342636))

(assert (=> b!7962243 m!8342150))

(assert (=> b!7962243 m!8342514))

(assert (=> b!7962243 m!8342636))

(assert (=> b!7962243 m!8342514))

(declare-fun m!8342638 () Bool)

(assert (=> b!7962243 m!8342638))

(assert (=> b!7962244 m!8342150))

(assert (=> b!7962244 m!8342518))

(assert (=> b!7962244 m!8342316))

(declare-fun m!8342640 () Bool)

(assert (=> b!7962244 m!8342640))

(assert (=> b!7962242 m!8342316))

(declare-fun m!8342642 () Bool)

(assert (=> b!7962242 m!8342642))

(assert (=> b!7962242 m!8342150))

(assert (=> b!7962242 m!8342520))

(assert (=> b!7961877 d!2378335))

(declare-fun d!2378337 () Bool)

(assert (=> d!2378337 (= (tail!15785 testedP!447) (t!390468 testedP!447))))

(assert (=> b!7961877 d!2378337))

(assert (=> b!7961877 d!2378311))

(declare-fun d!2378339 () Bool)

(declare-fun lt!2703921 () Int)

(assert (=> d!2378339 (>= lt!2703921 0)))

(declare-fun e!4695498 () Int)

(assert (=> d!2378339 (= lt!2703921 e!4695498)))

(declare-fun c!1462264 () Bool)

(assert (=> d!2378339 (= c!1462264 (is-Nil!74601 lt!2703744))))

(assert (=> d!2378339 (= (size!43432 lt!2703744) lt!2703921)))

(declare-fun b!7962245 () Bool)

(assert (=> b!7962245 (= e!4695498 0)))

(declare-fun b!7962246 () Bool)

(assert (=> b!7962246 (= e!4695498 (+ 1 (size!43432 (t!390468 lt!2703744))))))

(assert (= (and d!2378339 c!1462264) b!7962245))

(assert (= (and d!2378339 (not c!1462264)) b!7962246))

(declare-fun m!8342644 () Bool)

(assert (=> b!7962246 m!8342644))

(assert (=> b!7961889 d!2378339))

(assert (=> b!7961889 d!2378243))

(declare-fun d!2378341 () Bool)

(declare-fun lt!2703922 () Int)

(assert (=> d!2378341 (>= lt!2703922 0)))

(declare-fun e!4695499 () Int)

(assert (=> d!2378341 (= lt!2703922 e!4695499)))

(declare-fun c!1462265 () Bool)

(assert (=> d!2378341 (= c!1462265 (is-Nil!74601 (Cons!74601 lt!2703542 Nil!74601)))))

(assert (=> d!2378341 (= (size!43432 (Cons!74601 lt!2703542 Nil!74601)) lt!2703922)))

(declare-fun b!7962247 () Bool)

(assert (=> b!7962247 (= e!4695499 0)))

(declare-fun b!7962248 () Bool)

(assert (=> b!7962248 (= e!4695499 (+ 1 (size!43432 (t!390468 (Cons!74601 lt!2703542 Nil!74601)))))))

(assert (= (and d!2378341 c!1462265) b!7962247))

(assert (= (and d!2378341 (not c!1462265)) b!7962248))

(declare-fun m!8342646 () Bool)

(assert (=> b!7962248 m!8342646))

(assert (=> b!7961889 d!2378341))

(declare-fun d!2378343 () Bool)

(assert (=> d!2378343 (= (nullable!9597 (reg!21825 baseR!116)) (nullableFct!3786 (reg!21825 baseR!116)))))

(declare-fun bs!1969776 () Bool)

(assert (= bs!1969776 d!2378343))

(declare-fun m!8342648 () Bool)

(assert (=> bs!1969776 m!8342648))

(assert (=> b!7961920 d!2378343))

(declare-fun d!2378345 () Bool)

(assert (=> d!2378345 (= input!7927 testedP!447)))

(assert (=> d!2378345 true))

(declare-fun _$60!1336 () Unit!170038)

(assert (=> d!2378345 (= (choose!59995 input!7927 testedP!447 input!7927) _$60!1336)))

(assert (=> d!2378205 d!2378345))

(assert (=> d!2378205 d!2378201))

(declare-fun d!2378347 () Bool)

(assert (=> d!2378347 (= (tail!15785 (tail!15785 lt!2703538)) (t!390468 (tail!15785 lt!2703538)))))

(assert (=> bm!738323 d!2378347))

(declare-fun d!2378349 () Bool)

(declare-fun lt!2703923 () Int)

(assert (=> d!2378349 (>= lt!2703923 0)))

(declare-fun e!4695500 () Int)

(assert (=> d!2378349 (= lt!2703923 e!4695500)))

(declare-fun c!1462266 () Bool)

(assert (=> d!2378349 (= c!1462266 (is-Nil!74601 (_1!38630 lt!2703723)))))

(assert (=> d!2378349 (= (size!43432 (_1!38630 lt!2703723)) lt!2703923)))

(declare-fun b!7962249 () Bool)

(assert (=> b!7962249 (= e!4695500 0)))

(declare-fun b!7962250 () Bool)

(assert (=> b!7962250 (= e!4695500 (+ 1 (size!43432 (t!390468 (_1!38630 lt!2703723)))))))

(assert (= (and d!2378349 c!1462266) b!7962249))

(assert (= (and d!2378349 (not c!1462266)) b!7962250))

(declare-fun m!8342650 () Bool)

(assert (=> b!7962250 m!8342650))

(assert (=> b!7961849 d!2378349))

(assert (=> b!7961849 d!2378243))

(declare-fun b!7962251 () Bool)

(declare-fun e!4695501 () Regex!21496)

(declare-fun call!738436 () Regex!21496)

(assert (=> b!7962251 (= e!4695501 (Concat!30495 call!738436 lt!2703543))))

(declare-fun b!7962252 () Bool)

(declare-fun e!4695504 () Regex!21496)

(declare-fun e!4695503 () Regex!21496)

(assert (=> b!7962252 (= e!4695504 e!4695503)))

(declare-fun c!1462268 () Bool)

(assert (=> b!7962252 (= c!1462268 (is-ElementMatch!21496 lt!2703543))))

(declare-fun c!1462267 () Bool)

(declare-fun bm!738430 () Bool)

(declare-fun call!738438 () Regex!21496)

(declare-fun c!1462269 () Bool)

(assert (=> bm!738430 (= call!738438 (derivativeStep!6524 (ite c!1462267 (regOne!43505 lt!2703543) (ite c!1462269 (regTwo!43504 lt!2703543) (regOne!43504 lt!2703543))) call!738327))))

(declare-fun bm!738431 () Bool)

(declare-fun call!738437 () Regex!21496)

(assert (=> bm!738431 (= call!738437 call!738438)))

(declare-fun b!7962253 () Bool)

(assert (=> b!7962253 (= c!1462269 (nullable!9597 (regOne!43504 lt!2703543)))))

(declare-fun e!4695505 () Regex!21496)

(assert (=> b!7962253 (= e!4695501 e!4695505)))

(declare-fun b!7962254 () Bool)

(assert (=> b!7962254 (= e!4695505 (Union!21496 (Concat!30495 call!738437 (regTwo!43504 lt!2703543)) EmptyLang!21496))))

(declare-fun b!7962255 () Bool)

(assert (=> b!7962255 (= c!1462267 (is-Union!21496 lt!2703543))))

(declare-fun e!4695502 () Regex!21496)

(assert (=> b!7962255 (= e!4695503 e!4695502)))

(declare-fun b!7962256 () Bool)

(assert (=> b!7962256 (= e!4695505 (Union!21496 (Concat!30495 call!738436 (regTwo!43504 lt!2703543)) call!738437))))

(declare-fun b!7962257 () Bool)

(assert (=> b!7962257 (= e!4695504 EmptyLang!21496)))

(declare-fun b!7962258 () Bool)

(declare-fun call!738435 () Regex!21496)

(assert (=> b!7962258 (= e!4695502 (Union!21496 call!738438 call!738435))))

(declare-fun bm!738432 () Bool)

(assert (=> bm!738432 (= call!738436 call!738435)))

(declare-fun d!2378351 () Bool)

(declare-fun lt!2703924 () Regex!21496)

(assert (=> d!2378351 (validRegex!11800 lt!2703924)))

(assert (=> d!2378351 (= lt!2703924 e!4695504)))

(declare-fun c!1462271 () Bool)

(assert (=> d!2378351 (= c!1462271 (or (is-EmptyExpr!21496 lt!2703543) (is-EmptyLang!21496 lt!2703543)))))

(assert (=> d!2378351 (validRegex!11800 lt!2703543)))

(assert (=> d!2378351 (= (derivativeStep!6524 lt!2703543 call!738327) lt!2703924)))

(declare-fun bm!738433 () Bool)

(declare-fun c!1462270 () Bool)

(assert (=> bm!738433 (= call!738435 (derivativeStep!6524 (ite c!1462267 (regTwo!43505 lt!2703543) (ite c!1462270 (reg!21825 lt!2703543) (regOne!43504 lt!2703543))) call!738327))))

(declare-fun b!7962259 () Bool)

(assert (=> b!7962259 (= e!4695502 e!4695501)))

(assert (=> b!7962259 (= c!1462270 (is-Star!21496 lt!2703543))))

(declare-fun b!7962260 () Bool)

(assert (=> b!7962260 (= e!4695503 (ite (= call!738327 (c!1462114 lt!2703543)) EmptyExpr!21496 EmptyLang!21496))))

(assert (= (and d!2378351 c!1462271) b!7962257))

(assert (= (and d!2378351 (not c!1462271)) b!7962252))

(assert (= (and b!7962252 c!1462268) b!7962260))

(assert (= (and b!7962252 (not c!1462268)) b!7962255))

(assert (= (and b!7962255 c!1462267) b!7962258))

(assert (= (and b!7962255 (not c!1462267)) b!7962259))

(assert (= (and b!7962259 c!1462270) b!7962251))

(assert (= (and b!7962259 (not c!1462270)) b!7962253))

(assert (= (and b!7962253 c!1462269) b!7962256))

(assert (= (and b!7962253 (not c!1462269)) b!7962254))

(assert (= (or b!7962256 b!7962254) bm!738431))

(assert (= (or b!7962251 b!7962256) bm!738432))

(assert (= (or b!7962258 bm!738432) bm!738433))

(assert (= (or b!7962258 bm!738431) bm!738430))

(declare-fun m!8342652 () Bool)

(assert (=> bm!738430 m!8342652))

(declare-fun m!8342654 () Bool)

(assert (=> b!7962253 m!8342654))

(declare-fun m!8342656 () Bool)

(assert (=> d!2378351 m!8342656))

(assert (=> d!2378351 m!8342214))

(declare-fun m!8342658 () Bool)

(assert (=> bm!738433 m!8342658))

(assert (=> bm!738326 d!2378351))

(declare-fun b!7962261 () Bool)

(declare-fun e!4695512 () Bool)

(declare-fun call!738439 () Bool)

(assert (=> b!7962261 (= e!4695512 call!738439)))

(declare-fun bm!738434 () Bool)

(declare-fun c!1462273 () Bool)

(assert (=> bm!738434 (= call!738439 (validRegex!11800 (ite c!1462273 (regTwo!43505 lt!2703737) (regTwo!43504 lt!2703737))))))

(declare-fun b!7962262 () Bool)

(declare-fun e!4695510 () Bool)

(declare-fun e!4695509 () Bool)

(assert (=> b!7962262 (= e!4695510 e!4695509)))

(declare-fun c!1462272 () Bool)

(assert (=> b!7962262 (= c!1462272 (is-Star!21496 lt!2703737))))

(declare-fun b!7962263 () Bool)

(declare-fun e!4695507 () Bool)

(assert (=> b!7962263 (= e!4695509 e!4695507)))

(assert (=> b!7962263 (= c!1462273 (is-Union!21496 lt!2703737))))

(declare-fun b!7962264 () Bool)

(declare-fun e!4695511 () Bool)

(assert (=> b!7962264 (= e!4695511 call!738439)))

(declare-fun b!7962265 () Bool)

(declare-fun res!3155591 () Bool)

(declare-fun e!4695508 () Bool)

(assert (=> b!7962265 (=> res!3155591 e!4695508)))

(assert (=> b!7962265 (= res!3155591 (not (is-Concat!30495 lt!2703737)))))

(assert (=> b!7962265 (= e!4695507 e!4695508)))

(declare-fun b!7962266 () Bool)

(declare-fun e!4695506 () Bool)

(assert (=> b!7962266 (= e!4695509 e!4695506)))

(declare-fun res!3155592 () Bool)

(assert (=> b!7962266 (= res!3155592 (not (nullable!9597 (reg!21825 lt!2703737))))))

(assert (=> b!7962266 (=> (not res!3155592) (not e!4695506))))

(declare-fun d!2378353 () Bool)

(declare-fun res!3155593 () Bool)

(assert (=> d!2378353 (=> res!3155593 e!4695510)))

(assert (=> d!2378353 (= res!3155593 (is-ElementMatch!21496 lt!2703737))))

(assert (=> d!2378353 (= (validRegex!11800 lt!2703737) e!4695510)))

(declare-fun b!7962267 () Bool)

(declare-fun call!738441 () Bool)

(assert (=> b!7962267 (= e!4695506 call!738441)))

(declare-fun bm!738435 () Bool)

(declare-fun call!738440 () Bool)

(assert (=> bm!738435 (= call!738440 call!738441)))

(declare-fun b!7962268 () Bool)

(declare-fun res!3155594 () Bool)

(assert (=> b!7962268 (=> (not res!3155594) (not e!4695511))))

(assert (=> b!7962268 (= res!3155594 call!738440)))

(assert (=> b!7962268 (= e!4695507 e!4695511)))

(declare-fun b!7962269 () Bool)

(assert (=> b!7962269 (= e!4695508 e!4695512)))

(declare-fun res!3155595 () Bool)

(assert (=> b!7962269 (=> (not res!3155595) (not e!4695512))))

(assert (=> b!7962269 (= res!3155595 call!738440)))

(declare-fun bm!738436 () Bool)

(assert (=> bm!738436 (= call!738441 (validRegex!11800 (ite c!1462272 (reg!21825 lt!2703737) (ite c!1462273 (regOne!43505 lt!2703737) (regOne!43504 lt!2703737)))))))

(assert (= (and d!2378353 (not res!3155593)) b!7962262))

(assert (= (and b!7962262 c!1462272) b!7962266))

(assert (= (and b!7962262 (not c!1462272)) b!7962263))

(assert (= (and b!7962266 res!3155592) b!7962267))

(assert (= (and b!7962263 c!1462273) b!7962268))

(assert (= (and b!7962263 (not c!1462273)) b!7962265))

(assert (= (and b!7962268 res!3155594) b!7962264))

(assert (= (and b!7962265 (not res!3155591)) b!7962269))

(assert (= (and b!7962269 res!3155595) b!7962261))

(assert (= (or b!7962264 b!7962261) bm!738434))

(assert (= (or b!7962268 b!7962269) bm!738435))

(assert (= (or b!7962267 bm!738435) bm!738436))

(declare-fun m!8342660 () Bool)

(assert (=> bm!738434 m!8342660))

(declare-fun m!8342662 () Bool)

(assert (=> b!7962266 m!8342662))

(declare-fun m!8342664 () Bool)

(assert (=> bm!738436 m!8342664))

(assert (=> d!2378245 d!2378353))

(assert (=> d!2378245 d!2378263))

(assert (=> bm!738347 d!2378199))

(assert (=> b!7961894 d!2378235))

(declare-fun d!2378355 () Bool)

(declare-fun lt!2703925 () Int)

(assert (=> d!2378355 (>= lt!2703925 0)))

(declare-fun e!4695513 () Int)

(assert (=> d!2378355 (= lt!2703925 e!4695513)))

(declare-fun c!1462274 () Bool)

(assert (=> d!2378355 (= c!1462274 (is-Nil!74601 lt!2703539))))

(assert (=> d!2378355 (= (size!43432 lt!2703539) lt!2703925)))

(declare-fun b!7962270 () Bool)

(assert (=> b!7962270 (= e!4695513 0)))

(declare-fun b!7962271 () Bool)

(assert (=> b!7962271 (= e!4695513 (+ 1 (size!43432 (t!390468 lt!2703539))))))

(assert (= (and d!2378355 c!1462274) b!7962270))

(assert (= (and d!2378355 (not c!1462274)) b!7962271))

(declare-fun m!8342666 () Bool)

(assert (=> b!7962271 m!8342666))

(assert (=> b!7961894 d!2378355))

(assert (=> d!2378261 d!2378255))

(assert (=> d!2378261 d!2378263))

(declare-fun d!2378357 () Bool)

(assert (=> d!2378357 (= (derivative!682 baseR!116 (++!18366 testedP!447 (Cons!74601 lt!2703542 Nil!74601))) (derivativeStep!6524 r!24602 lt!2703542))))

(assert (=> d!2378357 true))

(declare-fun _$109!60 () Unit!170038)

(assert (=> d!2378357 (= (choose!60000 baseR!116 r!24602 testedP!447 lt!2703542) _$109!60)))

(declare-fun bs!1969777 () Bool)

(assert (= bs!1969777 d!2378357))

(assert (=> bs!1969777 m!8342076))

(assert (=> bs!1969777 m!8342076))

(assert (=> bs!1969777 m!8342352))

(assert (=> bs!1969777 m!8342088))

(assert (=> d!2378261 d!2378357))

(assert (=> d!2378261 d!2378231))

(declare-fun d!2378359 () Bool)

(declare-fun lt!2703926 () Regex!21496)

(assert (=> d!2378359 (validRegex!11800 lt!2703926)))

(declare-fun e!4695514 () Regex!21496)

(assert (=> d!2378359 (= lt!2703926 e!4695514)))

(declare-fun c!1462276 () Bool)

(assert (=> d!2378359 (= c!1462276 (is-Cons!74601 (++!18366 testedP!447 (Cons!74601 lt!2703542 Nil!74601))))))

(assert (=> d!2378359 (validRegex!11800 baseR!116)))

(assert (=> d!2378359 (= (derivative!682 baseR!116 (++!18366 testedP!447 (Cons!74601 lt!2703542 Nil!74601))) lt!2703926)))

(declare-fun b!7962272 () Bool)

(assert (=> b!7962272 (= e!4695514 (derivative!682 (derivativeStep!6524 baseR!116 (h!81049 (++!18366 testedP!447 (Cons!74601 lt!2703542 Nil!74601)))) (t!390468 (++!18366 testedP!447 (Cons!74601 lt!2703542 Nil!74601)))))))

(declare-fun b!7962273 () Bool)

(assert (=> b!7962273 (= e!4695514 baseR!116)))

(assert (= (and d!2378359 c!1462276) b!7962272))

(assert (= (and d!2378359 (not c!1462276)) b!7962273))

(declare-fun m!8342668 () Bool)

(assert (=> d!2378359 m!8342668))

(assert (=> d!2378359 m!8342046))

(declare-fun m!8342670 () Bool)

(assert (=> b!7962272 m!8342670))

(assert (=> b!7962272 m!8342670))

(declare-fun m!8342672 () Bool)

(assert (=> b!7962272 m!8342672))

(assert (=> d!2378261 d!2378359))

(declare-fun d!2378361 () Bool)

(assert (=> d!2378361 (= (isEmpty!42902 (_1!38630 lt!2703718)) (is-Nil!74601 (_1!38630 lt!2703718)))))

(assert (=> b!7961854 d!2378361))

(declare-fun d!2378363 () Bool)

(assert (=> d!2378363 (= (head!16248 lt!2703539) (h!81049 lt!2703539))))

(assert (=> b!7961892 d!2378363))

(declare-fun d!2378365 () Bool)

(assert (=> d!2378365 (= (head!16248 input!7927) (h!81049 input!7927))))

(assert (=> b!7961892 d!2378365))

(declare-fun b!7962277 () Bool)

(declare-fun lt!2703927 () List!74725)

(declare-fun e!4695515 () Bool)

(assert (=> b!7962277 (= e!4695515 (or (not (= lt!2703733 Nil!74601)) (= lt!2703927 testedP!447)))))

(declare-fun d!2378367 () Bool)

(assert (=> d!2378367 e!4695515))

(declare-fun res!3155596 () Bool)

(assert (=> d!2378367 (=> (not res!3155596) (not e!4695515))))

(assert (=> d!2378367 (= res!3155596 (= (content!15844 lt!2703927) (set.union (content!15844 testedP!447) (content!15844 lt!2703733))))))

(declare-fun e!4695516 () List!74725)

(assert (=> d!2378367 (= lt!2703927 e!4695516)))

(declare-fun c!1462277 () Bool)

(assert (=> d!2378367 (= c!1462277 (is-Nil!74601 testedP!447))))

(assert (=> d!2378367 (= (++!18366 testedP!447 lt!2703733) lt!2703927)))

(declare-fun b!7962275 () Bool)

(assert (=> b!7962275 (= e!4695516 (Cons!74601 (h!81049 testedP!447) (++!18366 (t!390468 testedP!447) lt!2703733)))))

(declare-fun b!7962276 () Bool)

(declare-fun res!3155597 () Bool)

(assert (=> b!7962276 (=> (not res!3155597) (not e!4695515))))

(assert (=> b!7962276 (= res!3155597 (= (size!43432 lt!2703927) (+ (size!43432 testedP!447) (size!43432 lt!2703733))))))

(declare-fun b!7962274 () Bool)

(assert (=> b!7962274 (= e!4695516 lt!2703733)))

(assert (= (and d!2378367 c!1462277) b!7962274))

(assert (= (and d!2378367 (not c!1462277)) b!7962275))

(assert (= (and d!2378367 res!3155596) b!7962276))

(assert (= (and b!7962276 res!3155597) b!7962277))

(declare-fun m!8342674 () Bool)

(assert (=> d!2378367 m!8342674))

(assert (=> d!2378367 m!8342328))

(declare-fun m!8342676 () Bool)

(assert (=> d!2378367 m!8342676))

(declare-fun m!8342678 () Bool)

(assert (=> b!7962275 m!8342678))

(declare-fun m!8342680 () Bool)

(assert (=> b!7962276 m!8342680))

(assert (=> b!7962276 m!8342050))

(declare-fun m!8342682 () Bool)

(assert (=> b!7962276 m!8342682))

(assert (=> d!2378239 d!2378367))

(assert (=> d!2378239 d!2378235))

(assert (=> d!2378239 d!2378243))

(declare-fun d!2378369 () Bool)

(assert (=> d!2378369 (= (isEmpty!42902 (_1!38630 lt!2703723)) (is-Nil!74601 (_1!38630 lt!2703723)))))

(assert (=> b!7961855 d!2378369))

(declare-fun d!2378371 () Bool)

(assert (=> d!2378371 (= (nullable!9597 lt!2703543) (nullableFct!3786 lt!2703543))))

(declare-fun bs!1969778 () Bool)

(assert (= bs!1969778 d!2378371))

(declare-fun m!8342684 () Bool)

(assert (=> bs!1969778 m!8342684))

(assert (=> bm!738328 d!2378371))

(declare-fun bm!738437 () Bool)

(declare-fun call!738445 () Unit!170038)

(assert (=> bm!738437 (= call!738445 (lemmaIsPrefixSameLengthThenSameList!1644 input!7927 lt!2703719 input!7927))))

(declare-fun d!2378373 () Bool)

(declare-fun e!4695517 () Bool)

(assert (=> d!2378373 e!4695517))

(declare-fun res!3155599 () Bool)

(assert (=> d!2378373 (=> (not res!3155599) (not e!4695517))))

(declare-fun lt!2703948 () tuple2!70654)

(assert (=> d!2378373 (= res!3155599 (= (++!18366 (_1!38630 lt!2703948) (_2!38630 lt!2703948)) input!7927))))

(declare-fun e!4695522 () tuple2!70654)

(assert (=> d!2378373 (= lt!2703948 e!4695522)))

(declare-fun c!1462282 () Bool)

(assert (=> d!2378373 (= c!1462282 (lostCause!1975 call!738353))))

(declare-fun lt!2703945 () Unit!170038)

(declare-fun Unit!170061 () Unit!170038)

(assert (=> d!2378373 (= lt!2703945 Unit!170061)))

(assert (=> d!2378373 (= (getSuffix!3799 input!7927 lt!2703719) call!738351)))

(declare-fun lt!2703950 () Unit!170038)

(declare-fun lt!2703928 () Unit!170038)

(assert (=> d!2378373 (= lt!2703950 lt!2703928)))

(declare-fun lt!2703937 () List!74725)

(assert (=> d!2378373 (= call!738351 lt!2703937)))

(assert (=> d!2378373 (= lt!2703928 (lemmaSamePrefixThenSameSuffix!2991 lt!2703719 call!738351 lt!2703719 lt!2703937 input!7927))))

(assert (=> d!2378373 (= lt!2703937 (getSuffix!3799 input!7927 lt!2703719))))

(declare-fun lt!2703954 () Unit!170038)

(declare-fun lt!2703929 () Unit!170038)

(assert (=> d!2378373 (= lt!2703954 lt!2703929)))

(assert (=> d!2378373 (isPrefix!6596 lt!2703719 (++!18366 lt!2703719 call!738351))))

(assert (=> d!2378373 (= lt!2703929 (lemmaConcatTwoListThenFirstIsPrefix!3853 lt!2703719 call!738351))))

(assert (=> d!2378373 (validRegex!11800 call!738353)))

(assert (=> d!2378373 (= (findLongestMatchInner!2277 call!738353 lt!2703719 (+ lt!2703534 1) call!738351 input!7927 lt!2703540) lt!2703948)))

(declare-fun b!7962278 () Bool)

(declare-fun c!1462278 () Bool)

(declare-fun call!738447 () Bool)

(assert (=> b!7962278 (= c!1462278 call!738447)))

(declare-fun lt!2703939 () Unit!170038)

(declare-fun lt!2703932 () Unit!170038)

(assert (=> b!7962278 (= lt!2703939 lt!2703932)))

(declare-fun lt!2703933 () List!74725)

(declare-fun lt!2703941 () C!43330)

(assert (=> b!7962278 (= (++!18366 (++!18366 lt!2703719 (Cons!74601 lt!2703941 Nil!74601)) lt!2703933) input!7927)))

(assert (=> b!7962278 (= lt!2703932 (lemmaMoveElementToOtherListKeepsConcatEq!3531 lt!2703719 lt!2703941 lt!2703933 input!7927))))

(assert (=> b!7962278 (= lt!2703933 (tail!15785 call!738351))))

(assert (=> b!7962278 (= lt!2703941 (head!16248 call!738351))))

(declare-fun lt!2703940 () Unit!170038)

(declare-fun lt!2703931 () Unit!170038)

(assert (=> b!7962278 (= lt!2703940 lt!2703931)))

(assert (=> b!7962278 (isPrefix!6596 (++!18366 lt!2703719 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703719)) Nil!74601)) input!7927)))

(assert (=> b!7962278 (= lt!2703931 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 lt!2703719 input!7927))))

(declare-fun lt!2703946 () Unit!170038)

(declare-fun lt!2703947 () Unit!170038)

(assert (=> b!7962278 (= lt!2703946 lt!2703947)))

(assert (=> b!7962278 (= lt!2703947 (lemmaAddHeadSuffixToPrefixStillPrefix!1323 lt!2703719 input!7927))))

(declare-fun lt!2703944 () List!74725)

(assert (=> b!7962278 (= lt!2703944 (++!18366 lt!2703719 (Cons!74601 (head!16248 call!738351) Nil!74601)))))

(declare-fun lt!2703936 () Unit!170038)

(declare-fun e!4695524 () Unit!170038)

(assert (=> b!7962278 (= lt!2703936 e!4695524)))

(declare-fun c!1462281 () Bool)

(assert (=> b!7962278 (= c!1462281 (= (size!43432 lt!2703719) (size!43432 input!7927)))))

(declare-fun lt!2703938 () Unit!170038)

(declare-fun lt!2703953 () Unit!170038)

(assert (=> b!7962278 (= lt!2703938 lt!2703953)))

(assert (=> b!7962278 (<= (size!43432 lt!2703719) (size!43432 input!7927))))

(assert (=> b!7962278 (= lt!2703953 (lemmaIsPrefixThenSmallerEqSize!1113 lt!2703719 input!7927))))

(declare-fun e!4695521 () tuple2!70654)

(declare-fun e!4695518 () tuple2!70654)

(assert (=> b!7962278 (= e!4695521 e!4695518)))

(declare-fun bm!738438 () Bool)

(declare-fun call!738446 () List!74725)

(assert (=> bm!738438 (= call!738446 (tail!15785 call!738351))))

(declare-fun bm!738439 () Bool)

(declare-fun call!738442 () C!43330)

(assert (=> bm!738439 (= call!738442 (head!16248 call!738351))))

(declare-fun b!7962279 () Bool)

(declare-fun e!4695519 () tuple2!70654)

(declare-fun lt!2703943 () tuple2!70654)

(assert (=> b!7962279 (= e!4695519 lt!2703943)))

(declare-fun bm!738440 () Bool)

(declare-fun call!738449 () Bool)

(assert (=> bm!738440 (= call!738449 (isPrefix!6596 input!7927 input!7927))))

(declare-fun bm!738441 () Bool)

(declare-fun call!738448 () Regex!21496)

(assert (=> bm!738441 (= call!738448 (derivativeStep!6524 call!738353 call!738442))))

(declare-fun b!7962280 () Bool)

(declare-fun e!4695520 () Bool)

(assert (=> b!7962280 (= e!4695520 (>= (size!43432 (_1!38630 lt!2703948)) (size!43432 lt!2703719)))))

(declare-fun b!7962281 () Bool)

(declare-fun e!4695523 () tuple2!70654)

(assert (=> b!7962281 (= e!4695523 (tuple2!70655 Nil!74601 input!7927))))

(declare-fun bm!738442 () Bool)

(declare-fun call!738443 () Unit!170038)

(assert (=> bm!738442 (= call!738443 (lemmaIsPrefixRefl!4064 input!7927 input!7927))))

(declare-fun b!7962282 () Bool)

(assert (=> b!7962282 (= e!4695522 e!4695521)))

(declare-fun c!1462280 () Bool)

(assert (=> b!7962282 (= c!1462280 (= (+ lt!2703534 1) lt!2703540))))

(declare-fun b!7962283 () Bool)

(declare-fun Unit!170062 () Unit!170038)

(assert (=> b!7962283 (= e!4695524 Unit!170062)))

(declare-fun b!7962284 () Bool)

(assert (=> b!7962284 (= e!4695523 (tuple2!70655 lt!2703719 Nil!74601))))

(declare-fun b!7962285 () Bool)

(assert (=> b!7962285 (= e!4695518 e!4695519)))

(declare-fun call!738444 () tuple2!70654)

(assert (=> b!7962285 (= lt!2703943 call!738444)))

(declare-fun c!1462283 () Bool)

(assert (=> b!7962285 (= c!1462283 (isEmpty!42902 (_1!38630 lt!2703943)))))

(declare-fun bm!738443 () Bool)

(assert (=> bm!738443 (= call!738447 (nullable!9597 call!738353))))

(declare-fun b!7962286 () Bool)

(assert (=> b!7962286 (= e!4695517 e!4695520)))

(declare-fun res!3155598 () Bool)

(assert (=> b!7962286 (=> res!3155598 e!4695520)))

(assert (=> b!7962286 (= res!3155598 (isEmpty!42902 (_1!38630 lt!2703948)))))

(declare-fun b!7962287 () Bool)

(assert (=> b!7962287 (= e!4695518 call!738444)))

(declare-fun bm!738444 () Bool)

(assert (=> bm!738444 (= call!738444 (findLongestMatchInner!2277 call!738448 lt!2703944 (+ lt!2703534 1 1) call!738446 input!7927 lt!2703540))))

(declare-fun b!7962288 () Bool)

(assert (=> b!7962288 (= e!4695522 (tuple2!70655 Nil!74601 input!7927))))

(declare-fun b!7962289 () Bool)

(declare-fun Unit!170063 () Unit!170038)

(assert (=> b!7962289 (= e!4695524 Unit!170063)))

(declare-fun lt!2703934 () Unit!170038)

(assert (=> b!7962289 (= lt!2703934 call!738443)))

(assert (=> b!7962289 call!738449))

(declare-fun lt!2703949 () Unit!170038)

(assert (=> b!7962289 (= lt!2703949 lt!2703934)))

(declare-fun lt!2703952 () Unit!170038)

(assert (=> b!7962289 (= lt!2703952 call!738445)))

(assert (=> b!7962289 (= input!7927 lt!2703719)))

(declare-fun lt!2703951 () Unit!170038)

(assert (=> b!7962289 (= lt!2703951 lt!2703952)))

(assert (=> b!7962289 false))

(declare-fun b!7962290 () Bool)

(declare-fun c!1462279 () Bool)

(assert (=> b!7962290 (= c!1462279 call!738447)))

(declare-fun lt!2703955 () Unit!170038)

(declare-fun lt!2703942 () Unit!170038)

(assert (=> b!7962290 (= lt!2703955 lt!2703942)))

(assert (=> b!7962290 (= input!7927 lt!2703719)))

(assert (=> b!7962290 (= lt!2703942 call!738445)))

(declare-fun lt!2703935 () Unit!170038)

(declare-fun lt!2703930 () Unit!170038)

(assert (=> b!7962290 (= lt!2703935 lt!2703930)))

(assert (=> b!7962290 call!738449))

(assert (=> b!7962290 (= lt!2703930 call!738443)))

(assert (=> b!7962290 (= e!4695521 e!4695523)))

(declare-fun b!7962291 () Bool)

(assert (=> b!7962291 (= e!4695519 (tuple2!70655 lt!2703719 call!738351))))

(assert (= (and d!2378373 c!1462282) b!7962288))

(assert (= (and d!2378373 (not c!1462282)) b!7962282))

(assert (= (and b!7962282 c!1462280) b!7962290))

(assert (= (and b!7962282 (not c!1462280)) b!7962278))

(assert (= (and b!7962290 c!1462279) b!7962284))

(assert (= (and b!7962290 (not c!1462279)) b!7962281))

(assert (= (and b!7962278 c!1462281) b!7962289))

(assert (= (and b!7962278 (not c!1462281)) b!7962283))

(assert (= (and b!7962278 c!1462278) b!7962285))

(assert (= (and b!7962278 (not c!1462278)) b!7962287))

(assert (= (and b!7962285 c!1462283) b!7962291))

(assert (= (and b!7962285 (not c!1462283)) b!7962279))

(assert (= (or b!7962285 b!7962287) bm!738439))

(assert (= (or b!7962285 b!7962287) bm!738438))

(assert (= (or b!7962285 b!7962287) bm!738441))

(assert (= (or b!7962285 b!7962287) bm!738444))

(assert (= (or b!7962290 b!7962278) bm!738443))

(assert (= (or b!7962290 b!7962289) bm!738437))

(assert (= (or b!7962290 b!7962289) bm!738442))

(assert (= (or b!7962290 b!7962289) bm!738440))

(assert (= (and d!2378373 res!3155599) b!7962286))

(assert (= (and b!7962286 (not res!3155598)) b!7962280))

(declare-fun m!8342686 () Bool)

(assert (=> d!2378373 m!8342686))

(declare-fun m!8342688 () Bool)

(assert (=> d!2378373 m!8342688))

(assert (=> d!2378373 m!8342686))

(declare-fun m!8342690 () Bool)

(assert (=> d!2378373 m!8342690))

(declare-fun m!8342692 () Bool)

(assert (=> d!2378373 m!8342692))

(declare-fun m!8342694 () Bool)

(assert (=> d!2378373 m!8342694))

(declare-fun m!8342696 () Bool)

(assert (=> d!2378373 m!8342696))

(declare-fun m!8342698 () Bool)

(assert (=> d!2378373 m!8342698))

(declare-fun m!8342700 () Bool)

(assert (=> d!2378373 m!8342700))

(declare-fun m!8342702 () Bool)

(assert (=> bm!738438 m!8342702))

(declare-fun m!8342704 () Bool)

(assert (=> bm!738441 m!8342704))

(assert (=> bm!738440 m!8342064))

(declare-fun m!8342706 () Bool)

(assert (=> b!7962286 m!8342706))

(declare-fun m!8342708 () Bool)

(assert (=> b!7962285 m!8342708))

(declare-fun m!8342710 () Bool)

(assert (=> bm!738443 m!8342710))

(declare-fun m!8342712 () Bool)

(assert (=> bm!738437 m!8342712))

(assert (=> bm!738442 m!8342062))

(declare-fun m!8342714 () Bool)

(assert (=> bm!738439 m!8342714))

(declare-fun m!8342716 () Bool)

(assert (=> b!7962280 m!8342716))

(declare-fun m!8342718 () Bool)

(assert (=> b!7962280 m!8342718))

(declare-fun m!8342720 () Bool)

(assert (=> bm!738444 m!8342720))

(assert (=> b!7962278 m!8342696))

(assert (=> b!7962278 m!8342714))

(declare-fun m!8342722 () Bool)

(assert (=> b!7962278 m!8342722))

(assert (=> b!7962278 m!8342718))

(declare-fun m!8342724 () Bool)

(assert (=> b!7962278 m!8342724))

(declare-fun m!8342726 () Bool)

(assert (=> b!7962278 m!8342726))

(assert (=> b!7962278 m!8342052))

(assert (=> b!7962278 m!8342702))

(declare-fun m!8342728 () Bool)

(assert (=> b!7962278 m!8342728))

(declare-fun m!8342730 () Bool)

(assert (=> b!7962278 m!8342730))

(declare-fun m!8342732 () Bool)

(assert (=> b!7962278 m!8342732))

(declare-fun m!8342734 () Bool)

(assert (=> b!7962278 m!8342734))

(declare-fun m!8342736 () Bool)

(assert (=> b!7962278 m!8342736))

(assert (=> b!7962278 m!8342728))

(assert (=> b!7962278 m!8342732))

(assert (=> b!7962278 m!8342696))

(declare-fun m!8342738 () Bool)

(assert (=> b!7962278 m!8342738))

(assert (=> bm!738349 d!2378373))

(assert (=> b!7961738 d!2378365))

(declare-fun b!7962292 () Bool)

(declare-fun e!4695531 () Bool)

(declare-fun call!738450 () Bool)

(assert (=> b!7962292 (= e!4695531 call!738450)))

(declare-fun bm!738445 () Bool)

(declare-fun c!1462285 () Bool)

(assert (=> bm!738445 (= call!738450 (validRegex!11800 (ite c!1462285 (regTwo!43505 lt!2703746) (regTwo!43504 lt!2703746))))))

(declare-fun b!7962293 () Bool)

(declare-fun e!4695529 () Bool)

(declare-fun e!4695528 () Bool)

(assert (=> b!7962293 (= e!4695529 e!4695528)))

(declare-fun c!1462284 () Bool)

(assert (=> b!7962293 (= c!1462284 (is-Star!21496 lt!2703746))))

(declare-fun b!7962294 () Bool)

(declare-fun e!4695526 () Bool)

(assert (=> b!7962294 (= e!4695528 e!4695526)))

(assert (=> b!7962294 (= c!1462285 (is-Union!21496 lt!2703746))))

(declare-fun b!7962295 () Bool)

(declare-fun e!4695530 () Bool)

(assert (=> b!7962295 (= e!4695530 call!738450)))

(declare-fun b!7962296 () Bool)

(declare-fun res!3155600 () Bool)

(declare-fun e!4695527 () Bool)

(assert (=> b!7962296 (=> res!3155600 e!4695527)))

(assert (=> b!7962296 (= res!3155600 (not (is-Concat!30495 lt!2703746)))))

(assert (=> b!7962296 (= e!4695526 e!4695527)))

(declare-fun b!7962297 () Bool)

(declare-fun e!4695525 () Bool)

(assert (=> b!7962297 (= e!4695528 e!4695525)))

(declare-fun res!3155601 () Bool)

(assert (=> b!7962297 (= res!3155601 (not (nullable!9597 (reg!21825 lt!2703746))))))

(assert (=> b!7962297 (=> (not res!3155601) (not e!4695525))))

(declare-fun d!2378375 () Bool)

(declare-fun res!3155602 () Bool)

(assert (=> d!2378375 (=> res!3155602 e!4695529)))

(assert (=> d!2378375 (= res!3155602 (is-ElementMatch!21496 lt!2703746))))

(assert (=> d!2378375 (= (validRegex!11800 lt!2703746) e!4695529)))

(declare-fun b!7962298 () Bool)

(declare-fun call!738452 () Bool)

(assert (=> b!7962298 (= e!4695525 call!738452)))

(declare-fun bm!738446 () Bool)

(declare-fun call!738451 () Bool)

(assert (=> bm!738446 (= call!738451 call!738452)))

(declare-fun b!7962299 () Bool)

(declare-fun res!3155603 () Bool)

(assert (=> b!7962299 (=> (not res!3155603) (not e!4695530))))

(assert (=> b!7962299 (= res!3155603 call!738451)))

(assert (=> b!7962299 (= e!4695526 e!4695530)))

(declare-fun b!7962300 () Bool)

(assert (=> b!7962300 (= e!4695527 e!4695531)))

(declare-fun res!3155604 () Bool)

(assert (=> b!7962300 (=> (not res!3155604) (not e!4695531))))

(assert (=> b!7962300 (= res!3155604 call!738451)))

(declare-fun bm!738447 () Bool)

(assert (=> bm!738447 (= call!738452 (validRegex!11800 (ite c!1462284 (reg!21825 lt!2703746) (ite c!1462285 (regOne!43505 lt!2703746) (regOne!43504 lt!2703746)))))))

(assert (= (and d!2378375 (not res!3155602)) b!7962293))

(assert (= (and b!7962293 c!1462284) b!7962297))

(assert (= (and b!7962293 (not c!1462284)) b!7962294))

(assert (= (and b!7962297 res!3155601) b!7962298))

(assert (= (and b!7962294 c!1462285) b!7962299))

(assert (= (and b!7962294 (not c!1462285)) b!7962296))

(assert (= (and b!7962299 res!3155603) b!7962295))

(assert (= (and b!7962296 (not res!3155600)) b!7962300))

(assert (= (and b!7962300 res!3155604) b!7962292))

(assert (= (or b!7962295 b!7962292) bm!738445))

(assert (= (or b!7962299 b!7962300) bm!738446))

(assert (= (or b!7962298 bm!738446) bm!738447))

(declare-fun m!8342740 () Bool)

(assert (=> bm!738445 m!8342740))

(declare-fun m!8342742 () Bool)

(assert (=> b!7962297 m!8342742))

(declare-fun m!8342744 () Bool)

(assert (=> bm!738447 m!8342744))

(assert (=> d!2378259 d!2378375))

(assert (=> d!2378259 d!2378263))

(assert (=> bm!738342 d!2378205))

(assert (=> b!7961740 d!2378235))

(declare-fun b!7962301 () Bool)

(declare-fun e!4695538 () Bool)

(declare-fun call!738453 () Bool)

(assert (=> b!7962301 (= e!4695538 call!738453)))

(declare-fun c!1462287 () Bool)

(declare-fun bm!738448 () Bool)

(assert (=> bm!738448 (= call!738453 (validRegex!11800 (ite c!1462287 (regTwo!43505 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))) (regTwo!43504 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))))))))

(declare-fun b!7962302 () Bool)

(declare-fun e!4695536 () Bool)

(declare-fun e!4695535 () Bool)

(assert (=> b!7962302 (= e!4695536 e!4695535)))

(declare-fun c!1462286 () Bool)

(assert (=> b!7962302 (= c!1462286 (is-Star!21496 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))))))

(declare-fun b!7962303 () Bool)

(declare-fun e!4695533 () Bool)

(assert (=> b!7962303 (= e!4695535 e!4695533)))

(assert (=> b!7962303 (= c!1462287 (is-Union!21496 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))))))

(declare-fun b!7962304 () Bool)

(declare-fun e!4695537 () Bool)

(assert (=> b!7962304 (= e!4695537 call!738453)))

(declare-fun b!7962305 () Bool)

(declare-fun res!3155605 () Bool)

(declare-fun e!4695534 () Bool)

(assert (=> b!7962305 (=> res!3155605 e!4695534)))

(assert (=> b!7962305 (= res!3155605 (not (is-Concat!30495 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116)))))))

(assert (=> b!7962305 (= e!4695533 e!4695534)))

(declare-fun b!7962306 () Bool)

(declare-fun e!4695532 () Bool)

(assert (=> b!7962306 (= e!4695535 e!4695532)))

(declare-fun res!3155606 () Bool)

(assert (=> b!7962306 (= res!3155606 (not (nullable!9597 (reg!21825 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))))))))

(assert (=> b!7962306 (=> (not res!3155606) (not e!4695532))))

(declare-fun d!2378377 () Bool)

(declare-fun res!3155607 () Bool)

(assert (=> d!2378377 (=> res!3155607 e!4695536)))

(assert (=> d!2378377 (= res!3155607 (is-ElementMatch!21496 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))))))

(assert (=> d!2378377 (= (validRegex!11800 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))) e!4695536)))

(declare-fun b!7962307 () Bool)

(declare-fun call!738455 () Bool)

(assert (=> b!7962307 (= e!4695532 call!738455)))

(declare-fun bm!738449 () Bool)

(declare-fun call!738454 () Bool)

(assert (=> bm!738449 (= call!738454 call!738455)))

(declare-fun b!7962308 () Bool)

(declare-fun res!3155608 () Bool)

(assert (=> b!7962308 (=> (not res!3155608) (not e!4695537))))

(assert (=> b!7962308 (= res!3155608 call!738454)))

(assert (=> b!7962308 (= e!4695533 e!4695537)))

(declare-fun b!7962309 () Bool)

(assert (=> b!7962309 (= e!4695534 e!4695538)))

(declare-fun res!3155609 () Bool)

(assert (=> b!7962309 (=> (not res!3155609) (not e!4695538))))

(assert (=> b!7962309 (= res!3155609 call!738454)))

(declare-fun bm!738450 () Bool)

(assert (=> bm!738450 (= call!738455 (validRegex!11800 (ite c!1462286 (reg!21825 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))) (ite c!1462287 (regOne!43505 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116))) (regOne!43504 (ite c!1462188 (regTwo!43505 baseR!116) (regTwo!43504 baseR!116)))))))))

(assert (= (and d!2378377 (not res!3155607)) b!7962302))

(assert (= (and b!7962302 c!1462286) b!7962306))

(assert (= (and b!7962302 (not c!1462286)) b!7962303))

(assert (= (and b!7962306 res!3155606) b!7962307))

(assert (= (and b!7962303 c!1462287) b!7962308))

(assert (= (and b!7962303 (not c!1462287)) b!7962305))

(assert (= (and b!7962308 res!3155608) b!7962304))

(assert (= (and b!7962305 (not res!3155605)) b!7962309))

(assert (= (and b!7962309 res!3155609) b!7962301))

(assert (= (or b!7962304 b!7962301) bm!738448))

(assert (= (or b!7962308 b!7962309) bm!738449))

(assert (= (or b!7962307 bm!738449) bm!738450))

(declare-fun m!8342746 () Bool)

(assert (=> bm!738448 m!8342746))

(declare-fun m!8342748 () Bool)

(assert (=> b!7962306 m!8342748))

(declare-fun m!8342750 () Bool)

(assert (=> bm!738450 m!8342750))

(assert (=> bm!738356 d!2378377))

(assert (=> bm!738343 d!2378229))

(declare-fun b!7962310 () Bool)

(declare-fun e!4695539 () Regex!21496)

(declare-fun call!738457 () Regex!21496)

(assert (=> b!7962310 (= e!4695539 (Concat!30495 call!738457 r!24602))))

(declare-fun b!7962311 () Bool)

(declare-fun e!4695542 () Regex!21496)

(declare-fun e!4695541 () Regex!21496)

(assert (=> b!7962311 (= e!4695542 e!4695541)))

(declare-fun c!1462289 () Bool)

(assert (=> b!7962311 (= c!1462289 (is-ElementMatch!21496 r!24602))))

(declare-fun call!738459 () Regex!21496)

(declare-fun c!1462290 () Bool)

(declare-fun bm!738451 () Bool)

(declare-fun c!1462288 () Bool)

(assert (=> bm!738451 (= call!738459 (derivativeStep!6524 (ite c!1462288 (regOne!43505 r!24602) (ite c!1462290 (regTwo!43504 r!24602) (regOne!43504 r!24602))) call!738347))))

(declare-fun bm!738452 () Bool)

(declare-fun call!738458 () Regex!21496)

(assert (=> bm!738452 (= call!738458 call!738459)))

(declare-fun b!7962312 () Bool)

(assert (=> b!7962312 (= c!1462290 (nullable!9597 (regOne!43504 r!24602)))))

(declare-fun e!4695543 () Regex!21496)

(assert (=> b!7962312 (= e!4695539 e!4695543)))

(declare-fun b!7962313 () Bool)

(assert (=> b!7962313 (= e!4695543 (Union!21496 (Concat!30495 call!738458 (regTwo!43504 r!24602)) EmptyLang!21496))))

(declare-fun b!7962314 () Bool)

(assert (=> b!7962314 (= c!1462288 (is-Union!21496 r!24602))))

(declare-fun e!4695540 () Regex!21496)

(assert (=> b!7962314 (= e!4695541 e!4695540)))

(declare-fun b!7962315 () Bool)

(assert (=> b!7962315 (= e!4695543 (Union!21496 (Concat!30495 call!738457 (regTwo!43504 r!24602)) call!738458))))

(declare-fun b!7962316 () Bool)

(assert (=> b!7962316 (= e!4695542 EmptyLang!21496)))

(declare-fun b!7962317 () Bool)

(declare-fun call!738456 () Regex!21496)

(assert (=> b!7962317 (= e!4695540 (Union!21496 call!738459 call!738456))))

(declare-fun bm!738453 () Bool)

(assert (=> bm!738453 (= call!738457 call!738456)))

(declare-fun d!2378379 () Bool)

(declare-fun lt!2703956 () Regex!21496)

(assert (=> d!2378379 (validRegex!11800 lt!2703956)))

(assert (=> d!2378379 (= lt!2703956 e!4695542)))

(declare-fun c!1462292 () Bool)

(assert (=> d!2378379 (= c!1462292 (or (is-EmptyExpr!21496 r!24602) (is-EmptyLang!21496 r!24602)))))

(assert (=> d!2378379 (validRegex!11800 r!24602)))

(assert (=> d!2378379 (= (derivativeStep!6524 r!24602 call!738347) lt!2703956)))

(declare-fun bm!738454 () Bool)

(declare-fun c!1462291 () Bool)

(assert (=> bm!738454 (= call!738456 (derivativeStep!6524 (ite c!1462288 (regTwo!43505 r!24602) (ite c!1462291 (reg!21825 r!24602) (regOne!43504 r!24602))) call!738347))))

(declare-fun b!7962318 () Bool)

(assert (=> b!7962318 (= e!4695540 e!4695539)))

(assert (=> b!7962318 (= c!1462291 (is-Star!21496 r!24602))))

(declare-fun b!7962319 () Bool)

(assert (=> b!7962319 (= e!4695541 (ite (= call!738347 (c!1462114 r!24602)) EmptyExpr!21496 EmptyLang!21496))))

(assert (= (and d!2378379 c!1462292) b!7962316))

(assert (= (and d!2378379 (not c!1462292)) b!7962311))

(assert (= (and b!7962311 c!1462289) b!7962319))

(assert (= (and b!7962311 (not c!1462289)) b!7962314))

(assert (= (and b!7962314 c!1462288) b!7962317))

(assert (= (and b!7962314 (not c!1462288)) b!7962318))

(assert (= (and b!7962318 c!1462291) b!7962310))

(assert (= (and b!7962318 (not c!1462291)) b!7962312))

(assert (= (and b!7962312 c!1462290) b!7962315))

(assert (= (and b!7962312 (not c!1462290)) b!7962313))

(assert (= (or b!7962315 b!7962313) bm!738452))

(assert (= (or b!7962310 b!7962315) bm!738453))

(assert (= (or b!7962317 bm!738453) bm!738454))

(assert (= (or b!7962317 bm!738452) bm!738451))

(declare-fun m!8342752 () Bool)

(assert (=> bm!738451 m!8342752))

(assert (=> b!7962312 m!8342256))

(declare-fun m!8342754 () Bool)

(assert (=> d!2378379 m!8342754))

(assert (=> d!2378379 m!8342260))

(declare-fun m!8342756 () Bool)

(assert (=> bm!738454 m!8342756))

(assert (=> bm!738346 d!2378379))

(assert (=> b!7961878 d!2378235))

(assert (=> b!7961878 d!2378243))

(declare-fun b!7962320 () Bool)

(declare-fun call!738461 () Regex!21496)

(declare-fun e!4695544 () Regex!21496)

(assert (=> b!7962320 (= e!4695544 (Concat!30495 call!738461 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))))))

(declare-fun b!7962321 () Bool)

(declare-fun e!4695547 () Regex!21496)

(declare-fun e!4695546 () Regex!21496)

(assert (=> b!7962321 (= e!4695547 e!4695546)))

(declare-fun c!1462294 () Bool)

(assert (=> b!7962321 (= c!1462294 (is-ElementMatch!21496 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))))))

(declare-fun c!1462295 () Bool)

(declare-fun c!1462293 () Bool)

(declare-fun call!738463 () Regex!21496)

(declare-fun bm!738455 () Bool)

(assert (=> bm!738455 (= call!738463 (derivativeStep!6524 (ite c!1462293 (regOne!43505 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))) (ite c!1462295 (regTwo!43504 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))) (regOne!43504 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))))) lt!2703542))))

(declare-fun bm!738456 () Bool)

(declare-fun call!738462 () Regex!21496)

(assert (=> bm!738456 (= call!738462 call!738463)))

(declare-fun b!7962322 () Bool)

(assert (=> b!7962322 (= c!1462295 (nullable!9597 (regOne!43504 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602))))))))

(declare-fun e!4695548 () Regex!21496)

(assert (=> b!7962322 (= e!4695544 e!4695548)))

(declare-fun b!7962323 () Bool)

(assert (=> b!7962323 (= e!4695548 (Union!21496 (Concat!30495 call!738462 (regTwo!43504 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602))))) EmptyLang!21496))))

(declare-fun b!7962324 () Bool)

(assert (=> b!7962324 (= c!1462293 (is-Union!21496 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))))))

(declare-fun e!4695545 () Regex!21496)

(assert (=> b!7962324 (= e!4695546 e!4695545)))

(declare-fun b!7962325 () Bool)

(assert (=> b!7962325 (= e!4695548 (Union!21496 (Concat!30495 call!738461 (regTwo!43504 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602))))) call!738462))))

(declare-fun b!7962326 () Bool)

(assert (=> b!7962326 (= e!4695547 EmptyLang!21496)))

(declare-fun b!7962327 () Bool)

(declare-fun call!738460 () Regex!21496)

(assert (=> b!7962327 (= e!4695545 (Union!21496 call!738463 call!738460))))

(declare-fun bm!738457 () Bool)

(assert (=> bm!738457 (= call!738461 call!738460)))

(declare-fun d!2378381 () Bool)

(declare-fun lt!2703957 () Regex!21496)

(assert (=> d!2378381 (validRegex!11800 lt!2703957)))

(assert (=> d!2378381 (= lt!2703957 e!4695547)))

(declare-fun c!1462297 () Bool)

(assert (=> d!2378381 (= c!1462297 (or (is-EmptyExpr!21496 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))) (is-EmptyLang!21496 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602))))))))

(assert (=> d!2378381 (validRegex!11800 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602))))))

(assert (=> d!2378381 (= (derivativeStep!6524 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602))) lt!2703542) lt!2703957)))

(declare-fun bm!738458 () Bool)

(declare-fun c!1462296 () Bool)

(assert (=> bm!738458 (= call!738460 (derivativeStep!6524 (ite c!1462293 (regTwo!43505 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))) (ite c!1462296 (reg!21825 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))) (regOne!43504 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))))) lt!2703542))))

(declare-fun b!7962328 () Bool)

(assert (=> b!7962328 (= e!4695545 e!4695544)))

(assert (=> b!7962328 (= c!1462296 (is-Star!21496 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602)))))))

(declare-fun b!7962329 () Bool)

(assert (=> b!7962329 (= e!4695546 (ite (= lt!2703542 (c!1462114 (ite c!1462157 (regTwo!43505 r!24602) (ite c!1462160 (reg!21825 r!24602) (regOne!43504 r!24602))))) EmptyExpr!21496 EmptyLang!21496))))

(assert (= (and d!2378381 c!1462297) b!7962326))

(assert (= (and d!2378381 (not c!1462297)) b!7962321))

(assert (= (and b!7962321 c!1462294) b!7962329))

(assert (= (and b!7962321 (not c!1462294)) b!7962324))

(assert (= (and b!7962324 c!1462293) b!7962327))

(assert (= (and b!7962324 (not c!1462293)) b!7962328))

(assert (= (and b!7962328 c!1462296) b!7962320))

(assert (= (and b!7962328 (not c!1462296)) b!7962322))

(assert (= (and b!7962322 c!1462295) b!7962325))

(assert (= (and b!7962322 (not c!1462295)) b!7962323))

(assert (= (or b!7962325 b!7962323) bm!738456))

(assert (= (or b!7962320 b!7962325) bm!738457))

(assert (= (or b!7962327 bm!738457) bm!738458))

(assert (= (or b!7962327 bm!738456) bm!738455))

(declare-fun m!8342758 () Bool)

(assert (=> bm!738455 m!8342758))

(declare-fun m!8342760 () Bool)

(assert (=> b!7962322 m!8342760))

(declare-fun m!8342762 () Bool)

(assert (=> d!2378381 m!8342762))

(declare-fun m!8342764 () Bool)

(assert (=> d!2378381 m!8342764))

(declare-fun m!8342766 () Bool)

(assert (=> bm!738458 m!8342766))

(assert (=> bm!738341 d!2378381))

(declare-fun d!2378383 () Bool)

(declare-fun lt!2703958 () Regex!21496)

(assert (=> d!2378383 (validRegex!11800 lt!2703958)))

(declare-fun e!4695549 () Regex!21496)

(assert (=> d!2378383 (= lt!2703958 e!4695549)))

(declare-fun c!1462298 () Bool)

(assert (=> d!2378383 (= c!1462298 (is-Cons!74601 (t!390468 lt!2703539)))))

(assert (=> d!2378383 (validRegex!11800 (derivativeStep!6524 baseR!116 (h!81049 lt!2703539)))))

(assert (=> d!2378383 (= (derivative!682 (derivativeStep!6524 baseR!116 (h!81049 lt!2703539)) (t!390468 lt!2703539)) lt!2703958)))

(declare-fun b!7962330 () Bool)

(assert (=> b!7962330 (= e!4695549 (derivative!682 (derivativeStep!6524 (derivativeStep!6524 baseR!116 (h!81049 lt!2703539)) (h!81049 (t!390468 lt!2703539))) (t!390468 (t!390468 lt!2703539))))))

(declare-fun b!7962331 () Bool)

(assert (=> b!7962331 (= e!4695549 (derivativeStep!6524 baseR!116 (h!81049 lt!2703539)))))

(assert (= (and d!2378383 c!1462298) b!7962330))

(assert (= (and d!2378383 (not c!1462298)) b!7962331))

(declare-fun m!8342768 () Bool)

(assert (=> d!2378383 m!8342768))

(assert (=> d!2378383 m!8342346))

(declare-fun m!8342770 () Bool)

(assert (=> d!2378383 m!8342770))

(assert (=> b!7962330 m!8342346))

(declare-fun m!8342772 () Bool)

(assert (=> b!7962330 m!8342772))

(assert (=> b!7962330 m!8342772))

(declare-fun m!8342774 () Bool)

(assert (=> b!7962330 m!8342774))

(assert (=> b!7961895 d!2378383))

(declare-fun b!7962332 () Bool)

(declare-fun e!4695550 () Regex!21496)

(declare-fun call!738465 () Regex!21496)

(assert (=> b!7962332 (= e!4695550 (Concat!30495 call!738465 baseR!116))))

(declare-fun b!7962333 () Bool)

(declare-fun e!4695553 () Regex!21496)

(declare-fun e!4695552 () Regex!21496)

(assert (=> b!7962333 (= e!4695553 e!4695552)))

(declare-fun c!1462300 () Bool)

(assert (=> b!7962333 (= c!1462300 (is-ElementMatch!21496 baseR!116))))

(declare-fun c!1462301 () Bool)

(declare-fun call!738467 () Regex!21496)

(declare-fun c!1462299 () Bool)

(declare-fun bm!738459 () Bool)

(assert (=> bm!738459 (= call!738467 (derivativeStep!6524 (ite c!1462299 (regOne!43505 baseR!116) (ite c!1462301 (regTwo!43504 baseR!116) (regOne!43504 baseR!116))) (h!81049 lt!2703539)))))

(declare-fun bm!738460 () Bool)

(declare-fun call!738466 () Regex!21496)

(assert (=> bm!738460 (= call!738466 call!738467)))

(declare-fun b!7962334 () Bool)

(assert (=> b!7962334 (= c!1462301 (nullable!9597 (regOne!43504 baseR!116)))))

(declare-fun e!4695554 () Regex!21496)

(assert (=> b!7962334 (= e!4695550 e!4695554)))

(declare-fun b!7962335 () Bool)

(assert (=> b!7962335 (= e!4695554 (Union!21496 (Concat!30495 call!738466 (regTwo!43504 baseR!116)) EmptyLang!21496))))

(declare-fun b!7962336 () Bool)

(assert (=> b!7962336 (= c!1462299 (is-Union!21496 baseR!116))))

(declare-fun e!4695551 () Regex!21496)

(assert (=> b!7962336 (= e!4695552 e!4695551)))

(declare-fun b!7962337 () Bool)

(assert (=> b!7962337 (= e!4695554 (Union!21496 (Concat!30495 call!738465 (regTwo!43504 baseR!116)) call!738466))))

(declare-fun b!7962338 () Bool)

(assert (=> b!7962338 (= e!4695553 EmptyLang!21496)))

(declare-fun b!7962339 () Bool)

(declare-fun call!738464 () Regex!21496)

(assert (=> b!7962339 (= e!4695551 (Union!21496 call!738467 call!738464))))

(declare-fun bm!738461 () Bool)

(assert (=> bm!738461 (= call!738465 call!738464)))

(declare-fun d!2378385 () Bool)

(declare-fun lt!2703959 () Regex!21496)

(assert (=> d!2378385 (validRegex!11800 lt!2703959)))

(assert (=> d!2378385 (= lt!2703959 e!4695553)))

(declare-fun c!1462303 () Bool)

(assert (=> d!2378385 (= c!1462303 (or (is-EmptyExpr!21496 baseR!116) (is-EmptyLang!21496 baseR!116)))))

(assert (=> d!2378385 (validRegex!11800 baseR!116)))

(assert (=> d!2378385 (= (derivativeStep!6524 baseR!116 (h!81049 lt!2703539)) lt!2703959)))

(declare-fun c!1462302 () Bool)

(declare-fun bm!738462 () Bool)

(assert (=> bm!738462 (= call!738464 (derivativeStep!6524 (ite c!1462299 (regTwo!43505 baseR!116) (ite c!1462302 (reg!21825 baseR!116) (regOne!43504 baseR!116))) (h!81049 lt!2703539)))))

(declare-fun b!7962340 () Bool)

(assert (=> b!7962340 (= e!4695551 e!4695550)))

(assert (=> b!7962340 (= c!1462302 (is-Star!21496 baseR!116))))

(declare-fun b!7962341 () Bool)

(assert (=> b!7962341 (= e!4695552 (ite (= (h!81049 lt!2703539) (c!1462114 baseR!116)) EmptyExpr!21496 EmptyLang!21496))))

(assert (= (and d!2378385 c!1462303) b!7962338))

(assert (= (and d!2378385 (not c!1462303)) b!7962333))

(assert (= (and b!7962333 c!1462300) b!7962341))

(assert (= (and b!7962333 (not c!1462300)) b!7962336))

(assert (= (and b!7962336 c!1462299) b!7962339))

(assert (= (and b!7962336 (not c!1462299)) b!7962340))

(assert (= (and b!7962340 c!1462302) b!7962332))

(assert (= (and b!7962340 (not c!1462302)) b!7962334))

(assert (= (and b!7962334 c!1462301) b!7962337))

(assert (= (and b!7962334 (not c!1462301)) b!7962335))

(assert (= (or b!7962337 b!7962335) bm!738460))

(assert (= (or b!7962332 b!7962337) bm!738461))

(assert (= (or b!7962339 bm!738461) bm!738462))

(assert (= (or b!7962339 bm!738460) bm!738459))

(declare-fun m!8342776 () Bool)

(assert (=> bm!738459 m!8342776))

(declare-fun m!8342778 () Bool)

(assert (=> b!7962334 m!8342778))

(declare-fun m!8342780 () Bool)

(assert (=> d!2378385 m!8342780))

(assert (=> d!2378385 m!8342046))

(declare-fun m!8342782 () Bool)

(assert (=> bm!738462 m!8342782))

(assert (=> b!7961895 d!2378385))

(declare-fun d!2378387 () Bool)

(assert (=> d!2378387 (= (head!16248 testedP!447) (h!81049 testedP!447))))

(assert (=> b!7961876 d!2378387))

(assert (=> b!7961876 d!2378365))

(declare-fun d!2378389 () Bool)

(assert (=> d!2378389 (= (head!16248 (tail!15785 lt!2703538)) (h!81049 (tail!15785 lt!2703538)))))

(assert (=> bm!738324 d!2378389))

(declare-fun d!2378391 () Bool)

(declare-fun lt!2703960 () Int)

(assert (=> d!2378391 (>= lt!2703960 0)))

(declare-fun e!4695555 () Int)

(assert (=> d!2378391 (= lt!2703960 e!4695555)))

(declare-fun c!1462304 () Bool)

(assert (=> d!2378391 (= c!1462304 (is-Nil!74601 (t!390468 input!7927)))))

(assert (=> d!2378391 (= (size!43432 (t!390468 input!7927)) lt!2703960)))

(declare-fun b!7962342 () Bool)

(assert (=> b!7962342 (= e!4695555 0)))

(declare-fun b!7962343 () Bool)

(assert (=> b!7962343 (= e!4695555 (+ 1 (size!43432 (t!390468 (t!390468 input!7927)))))))

(assert (= (and d!2378391 c!1462304) b!7962342))

(assert (= (and d!2378391 (not c!1462304)) b!7962343))

(declare-fun m!8342784 () Bool)

(assert (=> b!7962343 m!8342784))

(assert (=> b!7961846 d!2378391))

(declare-fun e!4695556 () Bool)

(declare-fun b!7962347 () Bool)

(declare-fun lt!2703961 () List!74725)

(assert (=> b!7962347 (= e!4695556 (or (not (= (Cons!74601 lt!2703542 Nil!74601) Nil!74601)) (= lt!2703961 (t!390468 testedP!447))))))

(declare-fun d!2378393 () Bool)

(assert (=> d!2378393 e!4695556))

(declare-fun res!3155610 () Bool)

(assert (=> d!2378393 (=> (not res!3155610) (not e!4695556))))

(assert (=> d!2378393 (= res!3155610 (= (content!15844 lt!2703961) (set.union (content!15844 (t!390468 testedP!447)) (content!15844 (Cons!74601 lt!2703542 Nil!74601)))))))

(declare-fun e!4695557 () List!74725)

(assert (=> d!2378393 (= lt!2703961 e!4695557)))

(declare-fun c!1462305 () Bool)

(assert (=> d!2378393 (= c!1462305 (is-Nil!74601 (t!390468 testedP!447)))))

(assert (=> d!2378393 (= (++!18366 (t!390468 testedP!447) (Cons!74601 lt!2703542 Nil!74601)) lt!2703961)))

(declare-fun b!7962345 () Bool)

(assert (=> b!7962345 (= e!4695557 (Cons!74601 (h!81049 (t!390468 testedP!447)) (++!18366 (t!390468 (t!390468 testedP!447)) (Cons!74601 lt!2703542 Nil!74601))))))

(declare-fun b!7962346 () Bool)

(declare-fun res!3155611 () Bool)

(assert (=> b!7962346 (=> (not res!3155611) (not e!4695556))))

(assert (=> b!7962346 (= res!3155611 (= (size!43432 lt!2703961) (+ (size!43432 (t!390468 testedP!447)) (size!43432 (Cons!74601 lt!2703542 Nil!74601)))))))

(declare-fun b!7962344 () Bool)

(assert (=> b!7962344 (= e!4695557 (Cons!74601 lt!2703542 Nil!74601))))

(assert (= (and d!2378393 c!1462305) b!7962344))

(assert (= (and d!2378393 (not c!1462305)) b!7962345))

(assert (= (and d!2378393 res!3155610) b!7962346))

(assert (= (and b!7962346 res!3155611) b!7962347))

(declare-fun m!8342786 () Bool)

(assert (=> d!2378393 m!8342786))

(assert (=> d!2378393 m!8342494))

(assert (=> d!2378393 m!8342330))

(declare-fun m!8342788 () Bool)

(assert (=> b!7962345 m!8342788))

(declare-fun m!8342790 () Bool)

(assert (=> b!7962346 m!8342790))

(assert (=> b!7962346 m!8342308))

(assert (=> b!7962346 m!8342336))

(assert (=> b!7961888 d!2378393))

(declare-fun d!2378395 () Bool)

(declare-fun lt!2703962 () Regex!21496)

(assert (=> d!2378395 (validRegex!11800 lt!2703962)))

(declare-fun e!4695558 () Regex!21496)

(assert (=> d!2378395 (= lt!2703962 e!4695558)))

(declare-fun c!1462306 () Bool)

(assert (=> d!2378395 (= c!1462306 (is-Cons!74601 (t!390468 testedP!447)))))

(assert (=> d!2378395 (validRegex!11800 (derivativeStep!6524 baseR!116 (h!81049 testedP!447)))))

(assert (=> d!2378395 (= (derivative!682 (derivativeStep!6524 baseR!116 (h!81049 testedP!447)) (t!390468 testedP!447)) lt!2703962)))

(declare-fun b!7962348 () Bool)

(assert (=> b!7962348 (= e!4695558 (derivative!682 (derivativeStep!6524 (derivativeStep!6524 baseR!116 (h!81049 testedP!447)) (h!81049 (t!390468 testedP!447))) (t!390468 (t!390468 testedP!447))))))

(declare-fun b!7962349 () Bool)

(assert (=> b!7962349 (= e!4695558 (derivativeStep!6524 baseR!116 (h!81049 testedP!447)))))

(assert (= (and d!2378395 c!1462306) b!7962348))

(assert (= (and d!2378395 (not c!1462306)) b!7962349))

(declare-fun m!8342792 () Bool)

(assert (=> d!2378395 m!8342792))

(assert (=> d!2378395 m!8342312))

(declare-fun m!8342794 () Bool)

(assert (=> d!2378395 m!8342794))

(assert (=> b!7962348 m!8342312))

(declare-fun m!8342796 () Bool)

(assert (=> b!7962348 m!8342796))

(assert (=> b!7962348 m!8342796))

(declare-fun m!8342798 () Bool)

(assert (=> b!7962348 m!8342798))

(assert (=> b!7961873 d!2378395))

(declare-fun b!7962350 () Bool)

(declare-fun e!4695559 () Regex!21496)

(declare-fun call!738469 () Regex!21496)

(assert (=> b!7962350 (= e!4695559 (Concat!30495 call!738469 baseR!116))))

(declare-fun b!7962351 () Bool)

(declare-fun e!4695562 () Regex!21496)

(declare-fun e!4695561 () Regex!21496)

(assert (=> b!7962351 (= e!4695562 e!4695561)))

(declare-fun c!1462308 () Bool)

(assert (=> b!7962351 (= c!1462308 (is-ElementMatch!21496 baseR!116))))

(declare-fun bm!738463 () Bool)

(declare-fun call!738471 () Regex!21496)

(declare-fun c!1462307 () Bool)

(declare-fun c!1462309 () Bool)

(assert (=> bm!738463 (= call!738471 (derivativeStep!6524 (ite c!1462307 (regOne!43505 baseR!116) (ite c!1462309 (regTwo!43504 baseR!116) (regOne!43504 baseR!116))) (h!81049 testedP!447)))))

(declare-fun bm!738464 () Bool)

(declare-fun call!738470 () Regex!21496)

(assert (=> bm!738464 (= call!738470 call!738471)))

(declare-fun b!7962352 () Bool)

(assert (=> b!7962352 (= c!1462309 (nullable!9597 (regOne!43504 baseR!116)))))

(declare-fun e!4695563 () Regex!21496)

(assert (=> b!7962352 (= e!4695559 e!4695563)))

(declare-fun b!7962353 () Bool)

(assert (=> b!7962353 (= e!4695563 (Union!21496 (Concat!30495 call!738470 (regTwo!43504 baseR!116)) EmptyLang!21496))))

(declare-fun b!7962354 () Bool)

(assert (=> b!7962354 (= c!1462307 (is-Union!21496 baseR!116))))

(declare-fun e!4695560 () Regex!21496)

(assert (=> b!7962354 (= e!4695561 e!4695560)))

(declare-fun b!7962355 () Bool)

(assert (=> b!7962355 (= e!4695563 (Union!21496 (Concat!30495 call!738469 (regTwo!43504 baseR!116)) call!738470))))

(declare-fun b!7962356 () Bool)

(assert (=> b!7962356 (= e!4695562 EmptyLang!21496)))

(declare-fun b!7962357 () Bool)

(declare-fun call!738468 () Regex!21496)

(assert (=> b!7962357 (= e!4695560 (Union!21496 call!738471 call!738468))))

(declare-fun bm!738465 () Bool)

(assert (=> bm!738465 (= call!738469 call!738468)))

(declare-fun d!2378397 () Bool)

(declare-fun lt!2703963 () Regex!21496)

(assert (=> d!2378397 (validRegex!11800 lt!2703963)))

(assert (=> d!2378397 (= lt!2703963 e!4695562)))

(declare-fun c!1462311 () Bool)

(assert (=> d!2378397 (= c!1462311 (or (is-EmptyExpr!21496 baseR!116) (is-EmptyLang!21496 baseR!116)))))

(assert (=> d!2378397 (validRegex!11800 baseR!116)))

(assert (=> d!2378397 (= (derivativeStep!6524 baseR!116 (h!81049 testedP!447)) lt!2703963)))

(declare-fun c!1462310 () Bool)

(declare-fun bm!738466 () Bool)

(assert (=> bm!738466 (= call!738468 (derivativeStep!6524 (ite c!1462307 (regTwo!43505 baseR!116) (ite c!1462310 (reg!21825 baseR!116) (regOne!43504 baseR!116))) (h!81049 testedP!447)))))

(declare-fun b!7962358 () Bool)

(assert (=> b!7962358 (= e!4695560 e!4695559)))

(assert (=> b!7962358 (= c!1462310 (is-Star!21496 baseR!116))))

(declare-fun b!7962359 () Bool)

(assert (=> b!7962359 (= e!4695561 (ite (= (h!81049 testedP!447) (c!1462114 baseR!116)) EmptyExpr!21496 EmptyLang!21496))))

(assert (= (and d!2378397 c!1462311) b!7962356))

(assert (= (and d!2378397 (not c!1462311)) b!7962351))

(assert (= (and b!7962351 c!1462308) b!7962359))

(assert (= (and b!7962351 (not c!1462308)) b!7962354))

(assert (= (and b!7962354 c!1462307) b!7962357))

(assert (= (and b!7962354 (not c!1462307)) b!7962358))

(assert (= (and b!7962358 c!1462310) b!7962350))

(assert (= (and b!7962358 (not c!1462310)) b!7962352))

(assert (= (and b!7962352 c!1462309) b!7962355))

(assert (= (and b!7962352 (not c!1462309)) b!7962353))

(assert (= (or b!7962355 b!7962353) bm!738464))

(assert (= (or b!7962350 b!7962355) bm!738465))

(assert (= (or b!7962357 bm!738465) bm!738466))

(assert (= (or b!7962357 bm!738464) bm!738463))

(declare-fun m!8342800 () Bool)

(assert (=> bm!738463 m!8342800))

(assert (=> b!7962352 m!8342778))

(declare-fun m!8342802 () Bool)

(assert (=> d!2378397 m!8342802))

(assert (=> d!2378397 m!8342046))

(declare-fun m!8342804 () Bool)

(assert (=> bm!738466 m!8342804))

(assert (=> b!7961873 d!2378397))

(assert (=> b!7961797 d!2378235))

(declare-fun lt!2703964 () List!74725)

(declare-fun b!7962363 () Bool)

(declare-fun e!4695564 () Bool)

(assert (=> b!7962363 (= e!4695564 (or (not (= lt!2703671 Nil!74601)) (= lt!2703964 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601)))))))

(declare-fun d!2378399 () Bool)

(assert (=> d!2378399 e!4695564))

(declare-fun res!3155612 () Bool)

(assert (=> d!2378399 (=> (not res!3155612) (not e!4695564))))

(assert (=> d!2378399 (= res!3155612 (= (content!15844 lt!2703964) (set.union (content!15844 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601))) (content!15844 lt!2703671))))))

(declare-fun e!4695565 () List!74725)

(assert (=> d!2378399 (= lt!2703964 e!4695565)))

(declare-fun c!1462312 () Bool)

(assert (=> d!2378399 (= c!1462312 (is-Nil!74601 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601))))))

(assert (=> d!2378399 (= (++!18366 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601)) lt!2703671) lt!2703964)))

(declare-fun b!7962361 () Bool)

(assert (=> b!7962361 (= e!4695565 (Cons!74601 (h!81049 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601))) (++!18366 (t!390468 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601))) lt!2703671)))))

(declare-fun b!7962362 () Bool)

(declare-fun res!3155613 () Bool)

(assert (=> b!7962362 (=> (not res!3155613) (not e!4695564))))

(assert (=> b!7962362 (= res!3155613 (= (size!43432 lt!2703964) (+ (size!43432 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601))) (size!43432 lt!2703671))))))

(declare-fun b!7962360 () Bool)

(assert (=> b!7962360 (= e!4695565 lt!2703671)))

(assert (= (and d!2378399 c!1462312) b!7962360))

(assert (= (and d!2378399 (not c!1462312)) b!7962361))

(assert (= (and d!2378399 res!3155612) b!7962362))

(assert (= (and b!7962362 res!3155613) b!7962363))

(declare-fun m!8342806 () Bool)

(assert (=> d!2378399 m!8342806))

(assert (=> d!2378399 m!8342246))

(declare-fun m!8342808 () Bool)

(assert (=> d!2378399 m!8342808))

(declare-fun m!8342810 () Bool)

(assert (=> d!2378399 m!8342810))

(declare-fun m!8342812 () Bool)

(assert (=> b!7962361 m!8342812))

(declare-fun m!8342814 () Bool)

(assert (=> b!7962362 m!8342814))

(assert (=> b!7962362 m!8342246))

(declare-fun m!8342816 () Bool)

(assert (=> b!7962362 m!8342816))

(declare-fun m!8342818 () Bool)

(assert (=> b!7962362 m!8342818))

(assert (=> b!7961797 d!2378399))

(assert (=> b!7961797 d!2378347))

(assert (=> b!7961797 d!2378355))

(declare-fun d!2378401 () Bool)

(assert (=> d!2378401 (= (head!16248 (getSuffix!3799 input!7927 lt!2703539)) (h!81049 (getSuffix!3799 input!7927 lt!2703539)))))

(assert (=> b!7961797 d!2378401))

(assert (=> b!7961797 d!2378389))

(declare-fun d!2378405 () Bool)

(assert (=> d!2378405 (<= (size!43432 lt!2703539) (size!43432 input!7927))))

(declare-fun lt!2703965 () Unit!170038)

(assert (=> d!2378405 (= lt!2703965 (choose!59996 lt!2703539 input!7927))))

(assert (=> d!2378405 (isPrefix!6596 lt!2703539 input!7927)))

(assert (=> d!2378405 (= (lemmaIsPrefixThenSmallerEqSize!1113 lt!2703539 input!7927) lt!2703965)))

(declare-fun bs!1969779 () Bool)

(assert (= bs!1969779 d!2378405))

(assert (=> bs!1969779 m!8342232))

(assert (=> bs!1969779 m!8342052))

(declare-fun m!8342820 () Bool)

(assert (=> bs!1969779 m!8342820))

(assert (=> bs!1969779 m!8342074))

(assert (=> b!7961797 d!2378405))

(declare-fun d!2378407 () Bool)

(declare-fun lt!2703967 () List!74725)

(assert (=> d!2378407 (= (++!18366 lt!2703539 lt!2703967) input!7927)))

(declare-fun e!4695567 () List!74725)

(assert (=> d!2378407 (= lt!2703967 e!4695567)))

(declare-fun c!1462314 () Bool)

(assert (=> d!2378407 (= c!1462314 (is-Cons!74601 lt!2703539))))

(assert (=> d!2378407 (>= (size!43432 input!7927) (size!43432 lt!2703539))))

(assert (=> d!2378407 (= (getSuffix!3799 input!7927 lt!2703539) lt!2703967)))

(declare-fun b!7962366 () Bool)

(assert (=> b!7962366 (= e!4695567 (getSuffix!3799 (tail!15785 input!7927) (t!390468 lt!2703539)))))

(declare-fun b!7962367 () Bool)

(assert (=> b!7962367 (= e!4695567 input!7927)))

(assert (= (and d!2378407 c!1462314) b!7962366))

(assert (= (and d!2378407 (not c!1462314)) b!7962367))

(declare-fun m!8342824 () Bool)

(assert (=> d!2378407 m!8342824))

(assert (=> d!2378407 m!8342052))

(assert (=> d!2378407 m!8342232))

(assert (=> b!7962366 m!8342150))

(assert (=> b!7962366 m!8342150))

(declare-fun m!8342826 () Bool)

(assert (=> b!7962366 m!8342826))

(assert (=> b!7961797 d!2378407))

(declare-fun e!4695568 () Bool)

(declare-fun b!7962371 () Bool)

(declare-fun lt!2703968 () List!74725)

(assert (=> b!7962371 (= e!4695568 (or (not (= (Cons!74601 (head!16248 (tail!15785 lt!2703538)) Nil!74601) Nil!74601)) (= lt!2703968 lt!2703539)))))

(declare-fun d!2378411 () Bool)

(assert (=> d!2378411 e!4695568))

(declare-fun res!3155614 () Bool)

(assert (=> d!2378411 (=> (not res!3155614) (not e!4695568))))

(assert (=> d!2378411 (= res!3155614 (= (content!15844 lt!2703968) (set.union (content!15844 lt!2703539) (content!15844 (Cons!74601 (head!16248 (tail!15785 lt!2703538)) Nil!74601)))))))

(declare-fun e!4695569 () List!74725)

(assert (=> d!2378411 (= lt!2703968 e!4695569)))

(declare-fun c!1462315 () Bool)

(assert (=> d!2378411 (= c!1462315 (is-Nil!74601 lt!2703539))))

(assert (=> d!2378411 (= (++!18366 lt!2703539 (Cons!74601 (head!16248 (tail!15785 lt!2703538)) Nil!74601)) lt!2703968)))

(declare-fun b!7962369 () Bool)

(assert (=> b!7962369 (= e!4695569 (Cons!74601 (h!81049 lt!2703539) (++!18366 (t!390468 lt!2703539) (Cons!74601 (head!16248 (tail!15785 lt!2703538)) Nil!74601))))))

(declare-fun b!7962370 () Bool)

(declare-fun res!3155615 () Bool)

(assert (=> b!7962370 (=> (not res!3155615) (not e!4695568))))

(assert (=> b!7962370 (= res!3155615 (= (size!43432 lt!2703968) (+ (size!43432 lt!2703539) (size!43432 (Cons!74601 (head!16248 (tail!15785 lt!2703538)) Nil!74601)))))))

(declare-fun b!7962368 () Bool)

(assert (=> b!7962368 (= e!4695569 (Cons!74601 (head!16248 (tail!15785 lt!2703538)) Nil!74601))))

(assert (= (and d!2378411 c!1462315) b!7962368))

(assert (= (and d!2378411 (not c!1462315)) b!7962369))

(assert (= (and d!2378411 res!3155614) b!7962370))

(assert (= (and b!7962370 res!3155615) b!7962371))

(declare-fun m!8342828 () Bool)

(assert (=> d!2378411 m!8342828))

(declare-fun m!8342830 () Bool)

(assert (=> d!2378411 m!8342830))

(declare-fun m!8342832 () Bool)

(assert (=> d!2378411 m!8342832))

(declare-fun m!8342834 () Bool)

(assert (=> b!7962369 m!8342834))

(declare-fun m!8342836 () Bool)

(assert (=> b!7962370 m!8342836))

(assert (=> b!7962370 m!8342232))

(declare-fun m!8342838 () Bool)

(assert (=> b!7962370 m!8342838))

(assert (=> b!7961797 d!2378411))

(declare-fun b!7962374 () Bool)

(declare-fun e!4695570 () Bool)

(assert (=> b!7962374 (= e!4695570 (isPrefix!6596 (tail!15785 (++!18366 lt!2703539 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601))) (tail!15785 input!7927)))))

(declare-fun b!7962375 () Bool)

(declare-fun e!4695572 () Bool)

(assert (=> b!7962375 (= e!4695572 (>= (size!43432 input!7927) (size!43432 (++!18366 lt!2703539 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601)))))))

(declare-fun b!7962372 () Bool)

(declare-fun e!4695571 () Bool)

(assert (=> b!7962372 (= e!4695571 e!4695570)))

(declare-fun res!3155619 () Bool)

(assert (=> b!7962372 (=> (not res!3155619) (not e!4695570))))

(assert (=> b!7962372 (= res!3155619 (not (is-Nil!74601 input!7927)))))

(declare-fun b!7962373 () Bool)

(declare-fun res!3155617 () Bool)

(assert (=> b!7962373 (=> (not res!3155617) (not e!4695570))))

(assert (=> b!7962373 (= res!3155617 (= (head!16248 (++!18366 lt!2703539 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601))) (head!16248 input!7927)))))

(declare-fun d!2378413 () Bool)

(assert (=> d!2378413 e!4695572))

(declare-fun res!3155618 () Bool)

(assert (=> d!2378413 (=> res!3155618 e!4695572)))

(declare-fun lt!2703969 () Bool)

(assert (=> d!2378413 (= res!3155618 (not lt!2703969))))

(assert (=> d!2378413 (= lt!2703969 e!4695571)))

(declare-fun res!3155616 () Bool)

(assert (=> d!2378413 (=> res!3155616 e!4695571)))

(assert (=> d!2378413 (= res!3155616 (is-Nil!74601 (++!18366 lt!2703539 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601))))))

(assert (=> d!2378413 (= (isPrefix!6596 (++!18366 lt!2703539 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601)) input!7927) lt!2703969)))

(assert (= (and d!2378413 (not res!3155616)) b!7962372))

(assert (= (and b!7962372 res!3155619) b!7962373))

(assert (= (and b!7962373 res!3155617) b!7962374))

(assert (= (and d!2378413 (not res!3155618)) b!7962375))

(assert (=> b!7962374 m!8342242))

(declare-fun m!8342840 () Bool)

(assert (=> b!7962374 m!8342840))

(assert (=> b!7962374 m!8342150))

(assert (=> b!7962374 m!8342840))

(assert (=> b!7962374 m!8342150))

(declare-fun m!8342842 () Bool)

(assert (=> b!7962374 m!8342842))

(assert (=> b!7962375 m!8342052))

(assert (=> b!7962375 m!8342242))

(declare-fun m!8342844 () Bool)

(assert (=> b!7962375 m!8342844))

(assert (=> b!7962373 m!8342242))

(declare-fun m!8342846 () Bool)

(assert (=> b!7962373 m!8342846))

(assert (=> b!7962373 m!8342158))

(assert (=> b!7961797 d!2378413))

(declare-fun lt!2703970 () List!74725)

(declare-fun e!4695573 () Bool)

(declare-fun b!7962379 () Bool)

(assert (=> b!7962379 (= e!4695573 (or (not (= (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601) Nil!74601)) (= lt!2703970 lt!2703539)))))

(declare-fun d!2378419 () Bool)

(assert (=> d!2378419 e!4695573))

(declare-fun res!3155620 () Bool)

(assert (=> d!2378419 (=> (not res!3155620) (not e!4695573))))

(assert (=> d!2378419 (= res!3155620 (= (content!15844 lt!2703970) (set.union (content!15844 lt!2703539) (content!15844 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601)))))))

(declare-fun e!4695574 () List!74725)

(assert (=> d!2378419 (= lt!2703970 e!4695574)))

(declare-fun c!1462316 () Bool)

(assert (=> d!2378419 (= c!1462316 (is-Nil!74601 lt!2703539))))

(assert (=> d!2378419 (= (++!18366 lt!2703539 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601)) lt!2703970)))

(declare-fun b!7962377 () Bool)

(assert (=> b!7962377 (= e!4695574 (Cons!74601 (h!81049 lt!2703539) (++!18366 (t!390468 lt!2703539) (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601))))))

(declare-fun b!7962378 () Bool)

(declare-fun res!3155621 () Bool)

(assert (=> b!7962378 (=> (not res!3155621) (not e!4695573))))

(assert (=> b!7962378 (= res!3155621 (= (size!43432 lt!2703970) (+ (size!43432 lt!2703539) (size!43432 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601)))))))

(declare-fun b!7962376 () Bool)

(assert (=> b!7962376 (= e!4695574 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601))))

(assert (= (and d!2378419 c!1462316) b!7962376))

(assert (= (and d!2378419 (not c!1462316)) b!7962377))

(assert (= (and d!2378419 res!3155620) b!7962378))

(assert (= (and b!7962378 res!3155621) b!7962379))

(declare-fun m!8342848 () Bool)

(assert (=> d!2378419 m!8342848))

(assert (=> d!2378419 m!8342830))

(declare-fun m!8342850 () Bool)

(assert (=> d!2378419 m!8342850))

(declare-fun m!8342852 () Bool)

(assert (=> b!7962377 m!8342852))

(declare-fun m!8342854 () Bool)

(assert (=> b!7962378 m!8342854))

(assert (=> b!7962378 m!8342232))

(declare-fun m!8342856 () Bool)

(assert (=> b!7962378 m!8342856))

(assert (=> b!7961797 d!2378419))

(declare-fun b!7962383 () Bool)

(declare-fun lt!2703971 () List!74725)

(declare-fun e!4695575 () Bool)

(assert (=> b!7962383 (= e!4695575 (or (not (= (Cons!74601 lt!2703679 Nil!74601) Nil!74601)) (= lt!2703971 lt!2703539)))))

(declare-fun d!2378421 () Bool)

(assert (=> d!2378421 e!4695575))

(declare-fun res!3155622 () Bool)

(assert (=> d!2378421 (=> (not res!3155622) (not e!4695575))))

(assert (=> d!2378421 (= res!3155622 (= (content!15844 lt!2703971) (set.union (content!15844 lt!2703539) (content!15844 (Cons!74601 lt!2703679 Nil!74601)))))))

(declare-fun e!4695576 () List!74725)

(assert (=> d!2378421 (= lt!2703971 e!4695576)))

(declare-fun c!1462317 () Bool)

(assert (=> d!2378421 (= c!1462317 (is-Nil!74601 lt!2703539))))

(assert (=> d!2378421 (= (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601)) lt!2703971)))

(declare-fun b!7962381 () Bool)

(assert (=> b!7962381 (= e!4695576 (Cons!74601 (h!81049 lt!2703539) (++!18366 (t!390468 lt!2703539) (Cons!74601 lt!2703679 Nil!74601))))))

(declare-fun b!7962382 () Bool)

(declare-fun res!3155623 () Bool)

(assert (=> b!7962382 (=> (not res!3155623) (not e!4695575))))

(assert (=> b!7962382 (= res!3155623 (= (size!43432 lt!2703971) (+ (size!43432 lt!2703539) (size!43432 (Cons!74601 lt!2703679 Nil!74601)))))))

(declare-fun b!7962380 () Bool)

(assert (=> b!7962380 (= e!4695576 (Cons!74601 lt!2703679 Nil!74601))))

(assert (= (and d!2378421 c!1462317) b!7962380))

(assert (= (and d!2378421 (not c!1462317)) b!7962381))

(assert (= (and d!2378421 res!3155622) b!7962382))

(assert (= (and b!7962382 res!3155623) b!7962383))

(declare-fun m!8342858 () Bool)

(assert (=> d!2378421 m!8342858))

(assert (=> d!2378421 m!8342830))

(declare-fun m!8342860 () Bool)

(assert (=> d!2378421 m!8342860))

(declare-fun m!8342862 () Bool)

(assert (=> b!7962381 m!8342862))

(declare-fun m!8342864 () Bool)

(assert (=> b!7962382 m!8342864))

(assert (=> b!7962382 m!8342232))

(declare-fun m!8342866 () Bool)

(assert (=> b!7962382 m!8342866))

(assert (=> b!7961797 d!2378421))

(declare-fun d!2378423 () Bool)

(assert (=> d!2378423 (= (++!18366 (++!18366 lt!2703539 (Cons!74601 lt!2703679 Nil!74601)) lt!2703671) input!7927)))

(declare-fun lt!2703972 () Unit!170038)

(assert (=> d!2378423 (= lt!2703972 (choose!60005 lt!2703539 lt!2703679 lt!2703671 input!7927))))

(assert (=> d!2378423 (= (++!18366 lt!2703539 (Cons!74601 lt!2703679 lt!2703671)) input!7927)))

(assert (=> d!2378423 (= (lemmaMoveElementToOtherListKeepsConcatEq!3531 lt!2703539 lt!2703679 lt!2703671 input!7927) lt!2703972)))

(declare-fun bs!1969781 () Bool)

(assert (= bs!1969781 d!2378423))

(assert (=> bs!1969781 m!8342246))

(assert (=> bs!1969781 m!8342246))

(assert (=> bs!1969781 m!8342248))

(declare-fun m!8342868 () Bool)

(assert (=> bs!1969781 m!8342868))

(declare-fun m!8342870 () Bool)

(assert (=> bs!1969781 m!8342870))

(assert (=> b!7961797 d!2378423))

(declare-fun d!2378425 () Bool)

(assert (=> d!2378425 (isPrefix!6596 (++!18366 lt!2703539 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 lt!2703539)) Nil!74601)) input!7927)))

(declare-fun lt!2703973 () Unit!170038)

(assert (=> d!2378425 (= lt!2703973 (choose!59998 lt!2703539 input!7927))))

(assert (=> d!2378425 (isPrefix!6596 lt!2703539 input!7927)))

(assert (=> d!2378425 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1323 lt!2703539 input!7927) lt!2703973)))

(declare-fun bs!1969782 () Bool)

(assert (= bs!1969782 d!2378425))

(declare-fun m!8342872 () Bool)

(assert (=> bs!1969782 m!8342872))

(assert (=> bs!1969782 m!8342074))

(assert (=> bs!1969782 m!8342242))

(assert (=> bs!1969782 m!8342210))

(assert (=> bs!1969782 m!8342252))

(assert (=> bs!1969782 m!8342210))

(assert (=> bs!1969782 m!8342242))

(assert (=> bs!1969782 m!8342244))

(assert (=> b!7961797 d!2378425))

(declare-fun d!2378427 () Bool)

(assert (=> d!2378427 (= lt!2703538 lt!2703712)))

(declare-fun lt!2703980 () Unit!170038)

(declare-fun choose!60006 (List!74725 List!74725 List!74725 List!74725 List!74725) Unit!170038)

(assert (=> d!2378427 (= lt!2703980 (choose!60006 testedP!447 lt!2703538 testedP!447 lt!2703712 input!7927))))

(assert (=> d!2378427 (isPrefix!6596 testedP!447 input!7927)))

(assert (=> d!2378427 (= (lemmaSamePrefixThenSameSuffix!2991 testedP!447 lt!2703538 testedP!447 lt!2703712 input!7927) lt!2703980)))

(declare-fun bs!1969784 () Bool)

(assert (= bs!1969784 d!2378427))

(declare-fun m!8342892 () Bool)

(assert (=> bs!1969784 m!8342892))

(assert (=> bs!1969784 m!8342060))

(assert (=> d!2378237 d!2378427))

(assert (=> d!2378237 d!2378239))

(assert (=> d!2378237 d!2378307))

(declare-fun b!7962395 () Bool)

(declare-fun lt!2703982 () List!74725)

(declare-fun e!4695582 () Bool)

(assert (=> b!7962395 (= e!4695582 (or (not (= lt!2703538 Nil!74601)) (= lt!2703982 testedP!447)))))

(declare-fun d!2378433 () Bool)

(assert (=> d!2378433 e!4695582))

(declare-fun res!3155630 () Bool)

(assert (=> d!2378433 (=> (not res!3155630) (not e!4695582))))

(assert (=> d!2378433 (= res!3155630 (= (content!15844 lt!2703982) (set.union (content!15844 testedP!447) (content!15844 lt!2703538))))))

(declare-fun e!4695583 () List!74725)

(assert (=> d!2378433 (= lt!2703982 e!4695583)))

(declare-fun c!1462319 () Bool)

(assert (=> d!2378433 (= c!1462319 (is-Nil!74601 testedP!447))))

(assert (=> d!2378433 (= (++!18366 testedP!447 lt!2703538) lt!2703982)))

(declare-fun b!7962393 () Bool)

(assert (=> b!7962393 (= e!4695583 (Cons!74601 (h!81049 testedP!447) (++!18366 (t!390468 testedP!447) lt!2703538)))))

(declare-fun b!7962394 () Bool)

(declare-fun res!3155631 () Bool)

(assert (=> b!7962394 (=> (not res!3155631) (not e!4695582))))

(assert (=> b!7962394 (= res!3155631 (= (size!43432 lt!2703982) (+ (size!43432 testedP!447) (size!43432 lt!2703538))))))

(declare-fun b!7962392 () Bool)

(assert (=> b!7962392 (= e!4695583 lt!2703538)))

(assert (= (and d!2378433 c!1462319) b!7962392))

(assert (= (and d!2378433 (not c!1462319)) b!7962393))

(assert (= (and d!2378433 res!3155630) b!7962394))

(assert (= (and b!7962394 res!3155631) b!7962395))

(declare-fun m!8342900 () Bool)

(assert (=> d!2378433 m!8342900))

(assert (=> d!2378433 m!8342328))

(declare-fun m!8342902 () Bool)

(assert (=> d!2378433 m!8342902))

(declare-fun m!8342906 () Bool)

(assert (=> b!7962393 m!8342906))

(declare-fun m!8342908 () Bool)

(assert (=> b!7962394 m!8342908))

(assert (=> b!7962394 m!8342050))

(declare-fun m!8342910 () Bool)

(assert (=> b!7962394 m!8342910))

(assert (=> d!2378237 d!2378433))

(declare-fun d!2378437 () Bool)

(declare-fun lostCauseFct!571 (Regex!21496) Bool)

(assert (=> d!2378437 (= (lostCause!1975 r!24602) (lostCauseFct!571 r!24602))))

(declare-fun bs!1969787 () Bool)

(assert (= bs!1969787 d!2378437))

(declare-fun m!8342920 () Bool)

(assert (=> bs!1969787 m!8342920))

(assert (=> d!2378237 d!2378437))

(declare-fun d!2378447 () Bool)

(assert (=> d!2378447 (isPrefix!6596 testedP!447 (++!18366 testedP!447 lt!2703538))))

(declare-fun lt!2703991 () Unit!170038)

(declare-fun choose!60007 (List!74725 List!74725) Unit!170038)

(assert (=> d!2378447 (= lt!2703991 (choose!60007 testedP!447 lt!2703538))))

(assert (=> d!2378447 (= (lemmaConcatTwoListThenFirstIsPrefix!3853 testedP!447 lt!2703538) lt!2703991)))

(declare-fun bs!1969789 () Bool)

(assert (= bs!1969789 d!2378447))

(assert (=> bs!1969789 m!8342268))

(assert (=> bs!1969789 m!8342268))

(assert (=> bs!1969789 m!8342272))

(declare-fun m!8342956 () Bool)

(assert (=> bs!1969789 m!8342956))

(assert (=> d!2378237 d!2378447))

(declare-fun b!7962421 () Bool)

(declare-fun e!4695598 () Bool)

(assert (=> b!7962421 (= e!4695598 (isPrefix!6596 (tail!15785 testedP!447) (tail!15785 (++!18366 testedP!447 lt!2703538))))))

(declare-fun b!7962422 () Bool)

(declare-fun e!4695600 () Bool)

(assert (=> b!7962422 (= e!4695600 (>= (size!43432 (++!18366 testedP!447 lt!2703538)) (size!43432 testedP!447)))))

(declare-fun b!7962419 () Bool)

(declare-fun e!4695599 () Bool)

(assert (=> b!7962419 (= e!4695599 e!4695598)))

(declare-fun res!3155646 () Bool)

(assert (=> b!7962419 (=> (not res!3155646) (not e!4695598))))

(assert (=> b!7962419 (= res!3155646 (not (is-Nil!74601 (++!18366 testedP!447 lt!2703538))))))

(declare-fun b!7962420 () Bool)

(declare-fun res!3155644 () Bool)

(assert (=> b!7962420 (=> (not res!3155644) (not e!4695598))))

(assert (=> b!7962420 (= res!3155644 (= (head!16248 testedP!447) (head!16248 (++!18366 testedP!447 lt!2703538))))))

(declare-fun d!2378465 () Bool)

(assert (=> d!2378465 e!4695600))

(declare-fun res!3155645 () Bool)

(assert (=> d!2378465 (=> res!3155645 e!4695600)))

(declare-fun lt!2703992 () Bool)

(assert (=> d!2378465 (= res!3155645 (not lt!2703992))))

(assert (=> d!2378465 (= lt!2703992 e!4695599)))

(declare-fun res!3155643 () Bool)

(assert (=> d!2378465 (=> res!3155643 e!4695599)))

(assert (=> d!2378465 (= res!3155643 (is-Nil!74601 testedP!447))))

(assert (=> d!2378465 (= (isPrefix!6596 testedP!447 (++!18366 testedP!447 lt!2703538)) lt!2703992)))

(assert (= (and d!2378465 (not res!3155643)) b!7962419))

(assert (= (and b!7962419 res!3155646) b!7962420))

(assert (= (and b!7962420 res!3155644) b!7962421))

(assert (= (and d!2378465 (not res!3155645)) b!7962422))

(assert (=> b!7962421 m!8342316))

(assert (=> b!7962421 m!8342268))

(declare-fun m!8342958 () Bool)

(assert (=> b!7962421 m!8342958))

(assert (=> b!7962421 m!8342316))

(assert (=> b!7962421 m!8342958))

(declare-fun m!8342962 () Bool)

(assert (=> b!7962421 m!8342962))

(assert (=> b!7962422 m!8342268))

(declare-fun m!8342966 () Bool)

(assert (=> b!7962422 m!8342966))

(assert (=> b!7962422 m!8342050))

(assert (=> b!7962420 m!8342320))

(assert (=> b!7962420 m!8342268))

(declare-fun m!8342970 () Bool)

(assert (=> b!7962420 m!8342970))

(assert (=> d!2378237 d!2378465))

(declare-fun b!7962428 () Bool)

(declare-fun e!4695602 () Bool)

(declare-fun lt!2703994 () List!74725)

(assert (=> b!7962428 (= e!4695602 (or (not (= (_2!38630 lt!2703723) Nil!74601)) (= lt!2703994 (_1!38630 lt!2703723))))))

(declare-fun d!2378467 () Bool)

(assert (=> d!2378467 e!4695602))

(declare-fun res!3155647 () Bool)

(assert (=> d!2378467 (=> (not res!3155647) (not e!4695602))))

(assert (=> d!2378467 (= res!3155647 (= (content!15844 lt!2703994) (set.union (content!15844 (_1!38630 lt!2703723)) (content!15844 (_2!38630 lt!2703723)))))))

(declare-fun e!4695603 () List!74725)

(assert (=> d!2378467 (= lt!2703994 e!4695603)))

(declare-fun c!1462327 () Bool)

(assert (=> d!2378467 (= c!1462327 (is-Nil!74601 (_1!38630 lt!2703723)))))

(assert (=> d!2378467 (= (++!18366 (_1!38630 lt!2703723) (_2!38630 lt!2703723)) lt!2703994)))

(declare-fun b!7962426 () Bool)

(assert (=> b!7962426 (= e!4695603 (Cons!74601 (h!81049 (_1!38630 lt!2703723)) (++!18366 (t!390468 (_1!38630 lt!2703723)) (_2!38630 lt!2703723))))))

(declare-fun b!7962427 () Bool)

(declare-fun res!3155648 () Bool)

(assert (=> b!7962427 (=> (not res!3155648) (not e!4695602))))

(assert (=> b!7962427 (= res!3155648 (= (size!43432 lt!2703994) (+ (size!43432 (_1!38630 lt!2703723)) (size!43432 (_2!38630 lt!2703723)))))))

(declare-fun b!7962425 () Bool)

(assert (=> b!7962425 (= e!4695603 (_2!38630 lt!2703723))))

(assert (= (and d!2378467 c!1462327) b!7962425))

(assert (= (and d!2378467 (not c!1462327)) b!7962426))

(assert (= (and d!2378467 res!3155647) b!7962427))

(assert (= (and b!7962427 res!3155648) b!7962428))

(declare-fun m!8342974 () Bool)

(assert (=> d!2378467 m!8342974))

(declare-fun m!8342976 () Bool)

(assert (=> d!2378467 m!8342976))

(declare-fun m!8342978 () Bool)

(assert (=> d!2378467 m!8342978))

(declare-fun m!8342980 () Bool)

(assert (=> b!7962426 m!8342980))

(declare-fun m!8342982 () Bool)

(assert (=> b!7962427 m!8342982))

(assert (=> b!7962427 m!8342286))

(declare-fun m!8342984 () Bool)

(assert (=> b!7962427 m!8342984))

(assert (=> d!2378237 d!2378467))

(assert (=> bm!738325 d!2378201))

(declare-fun b!7962434 () Bool)

(declare-fun e!4695605 () Bool)

(declare-fun lt!2703996 () List!74725)

(assert (=> b!7962434 (= e!4695605 (or (not (= (_2!38630 lt!2703686) Nil!74601)) (= lt!2703996 (_1!38630 lt!2703686))))))

(declare-fun d!2378473 () Bool)

(assert (=> d!2378473 e!4695605))

(declare-fun res!3155649 () Bool)

(assert (=> d!2378473 (=> (not res!3155649) (not e!4695605))))

(assert (=> d!2378473 (= res!3155649 (= (content!15844 lt!2703996) (set.union (content!15844 (_1!38630 lt!2703686)) (content!15844 (_2!38630 lt!2703686)))))))

(declare-fun e!4695606 () List!74725)

(assert (=> d!2378473 (= lt!2703996 e!4695606)))

(declare-fun c!1462329 () Bool)

(assert (=> d!2378473 (= c!1462329 (is-Nil!74601 (_1!38630 lt!2703686)))))

(assert (=> d!2378473 (= (++!18366 (_1!38630 lt!2703686) (_2!38630 lt!2703686)) lt!2703996)))

(declare-fun b!7962432 () Bool)

(assert (=> b!7962432 (= e!4695606 (Cons!74601 (h!81049 (_1!38630 lt!2703686)) (++!18366 (t!390468 (_1!38630 lt!2703686)) (_2!38630 lt!2703686))))))

(declare-fun b!7962433 () Bool)

(declare-fun res!3155650 () Bool)

(assert (=> b!7962433 (=> (not res!3155650) (not e!4695605))))

(assert (=> b!7962433 (= res!3155650 (= (size!43432 lt!2703996) (+ (size!43432 (_1!38630 lt!2703686)) (size!43432 (_2!38630 lt!2703686)))))))

(declare-fun b!7962431 () Bool)

(assert (=> b!7962431 (= e!4695606 (_2!38630 lt!2703686))))

(assert (= (and d!2378473 c!1462329) b!7962431))

(assert (= (and d!2378473 (not c!1462329)) b!7962432))

(assert (= (and d!2378473 res!3155649) b!7962433))

(assert (= (and b!7962433 res!3155650) b!7962434))

(declare-fun m!8342988 () Bool)

(assert (=> d!2378473 m!8342988))

(declare-fun m!8342990 () Bool)

(assert (=> d!2378473 m!8342990))

(declare-fun m!8342992 () Bool)

(assert (=> d!2378473 m!8342992))

(declare-fun m!8342994 () Bool)

(assert (=> b!7962432 m!8342994))

(declare-fun m!8342996 () Bool)

(assert (=> b!7962433 m!8342996))

(assert (=> b!7962433 m!8342230))

(declare-fun m!8342998 () Bool)

(assert (=> b!7962433 m!8342998))

(assert (=> d!2378211 d!2378473))

(assert (=> d!2378211 d!2378407))

(declare-fun d!2378479 () Bool)

(assert (=> d!2378479 (= (tail!15785 lt!2703538) lt!2703675)))

(declare-fun lt!2703998 () Unit!170038)

(assert (=> d!2378479 (= lt!2703998 (choose!60006 lt!2703539 (tail!15785 lt!2703538) lt!2703539 lt!2703675 input!7927))))

(assert (=> d!2378479 (isPrefix!6596 lt!2703539 input!7927)))

(assert (=> d!2378479 (= (lemmaSamePrefixThenSameSuffix!2991 lt!2703539 (tail!15785 lt!2703538) lt!2703539 lt!2703675 input!7927) lt!2703998)))

(declare-fun bs!1969790 () Bool)

(assert (= bs!1969790 d!2378479))

(assert (=> bs!1969790 m!8342082))

(declare-fun m!8343000 () Bool)

(assert (=> bs!1969790 m!8343000))

(assert (=> bs!1969790 m!8342074))

(assert (=> d!2378211 d!2378479))

(declare-fun d!2378481 () Bool)

(assert (=> d!2378481 (isPrefix!6596 lt!2703539 (++!18366 lt!2703539 (tail!15785 lt!2703538)))))

(declare-fun lt!2703999 () Unit!170038)

(assert (=> d!2378481 (= lt!2703999 (choose!60007 lt!2703539 (tail!15785 lt!2703538)))))

(assert (=> d!2378481 (= (lemmaConcatTwoListThenFirstIsPrefix!3853 lt!2703539 (tail!15785 lt!2703538)) lt!2703999)))

(declare-fun bs!1969791 () Bool)

(assert (= bs!1969791 d!2378481))

(assert (=> bs!1969791 m!8342082))

(assert (=> bs!1969791 m!8342200))

(assert (=> bs!1969791 m!8342200))

(assert (=> bs!1969791 m!8342204))

(assert (=> bs!1969791 m!8342082))

(declare-fun m!8343002 () Bool)

(assert (=> bs!1969791 m!8343002))

(assert (=> d!2378211 d!2378481))

(declare-fun lt!2704000 () List!74725)

(declare-fun b!7962448 () Bool)

(declare-fun e!4695612 () Bool)

(assert (=> b!7962448 (= e!4695612 (or (not (= (tail!15785 lt!2703538) Nil!74601)) (= lt!2704000 lt!2703539)))))

(declare-fun d!2378483 () Bool)

(assert (=> d!2378483 e!4695612))

(declare-fun res!3155651 () Bool)

(assert (=> d!2378483 (=> (not res!3155651) (not e!4695612))))

(assert (=> d!2378483 (= res!3155651 (= (content!15844 lt!2704000) (set.union (content!15844 lt!2703539) (content!15844 (tail!15785 lt!2703538)))))))

(declare-fun e!4695613 () List!74725)

(assert (=> d!2378483 (= lt!2704000 e!4695613)))

(declare-fun c!1462335 () Bool)

(assert (=> d!2378483 (= c!1462335 (is-Nil!74601 lt!2703539))))

(assert (=> d!2378483 (= (++!18366 lt!2703539 (tail!15785 lt!2703538)) lt!2704000)))

(declare-fun b!7962446 () Bool)

(assert (=> b!7962446 (= e!4695613 (Cons!74601 (h!81049 lt!2703539) (++!18366 (t!390468 lt!2703539) (tail!15785 lt!2703538))))))

(declare-fun b!7962447 () Bool)

(declare-fun res!3155652 () Bool)

(assert (=> b!7962447 (=> (not res!3155652) (not e!4695612))))

(assert (=> b!7962447 (= res!3155652 (= (size!43432 lt!2704000) (+ (size!43432 lt!2703539) (size!43432 (tail!15785 lt!2703538)))))))

(declare-fun b!7962445 () Bool)

(assert (=> b!7962445 (= e!4695613 (tail!15785 lt!2703538))))

(assert (= (and d!2378483 c!1462335) b!7962445))

(assert (= (and d!2378483 (not c!1462335)) b!7962446))

(assert (= (and d!2378483 res!3155651) b!7962447))

(assert (= (and b!7962447 res!3155652) b!7962448))

(declare-fun m!8343004 () Bool)

(assert (=> d!2378483 m!8343004))

(assert (=> d!2378483 m!8342830))

(assert (=> d!2378483 m!8342082))

(declare-fun m!8343006 () Bool)

(assert (=> d!2378483 m!8343006))

(assert (=> b!7962446 m!8342082))

(declare-fun m!8343008 () Bool)

(assert (=> b!7962446 m!8343008))

(declare-fun m!8343010 () Bool)

(assert (=> b!7962447 m!8343010))

(assert (=> b!7962447 m!8342232))

(assert (=> b!7962447 m!8342082))

(declare-fun m!8343012 () Bool)

(assert (=> b!7962447 m!8343012))

(assert (=> d!2378211 d!2378483))

(declare-fun b!7962449 () Bool)

(declare-fun e!4695620 () Bool)

(declare-fun call!738479 () Bool)

(assert (=> b!7962449 (= e!4695620 call!738479)))

(declare-fun bm!738474 () Bool)

(declare-fun c!1462337 () Bool)

(assert (=> bm!738474 (= call!738479 (validRegex!11800 (ite c!1462337 (regTwo!43505 lt!2703543) (regTwo!43504 lt!2703543))))))

(declare-fun b!7962450 () Bool)

(declare-fun e!4695618 () Bool)

(declare-fun e!4695617 () Bool)

(assert (=> b!7962450 (= e!4695618 e!4695617)))

(declare-fun c!1462336 () Bool)

(assert (=> b!7962450 (= c!1462336 (is-Star!21496 lt!2703543))))

(declare-fun b!7962451 () Bool)

(declare-fun e!4695615 () Bool)

(assert (=> b!7962451 (= e!4695617 e!4695615)))

(assert (=> b!7962451 (= c!1462337 (is-Union!21496 lt!2703543))))

(declare-fun b!7962452 () Bool)

(declare-fun e!4695619 () Bool)

(assert (=> b!7962452 (= e!4695619 call!738479)))

(declare-fun b!7962453 () Bool)

(declare-fun res!3155653 () Bool)

(declare-fun e!4695616 () Bool)

(assert (=> b!7962453 (=> res!3155653 e!4695616)))

(assert (=> b!7962453 (= res!3155653 (not (is-Concat!30495 lt!2703543)))))

(assert (=> b!7962453 (= e!4695615 e!4695616)))

(declare-fun b!7962454 () Bool)

(declare-fun e!4695614 () Bool)

(assert (=> b!7962454 (= e!4695617 e!4695614)))

(declare-fun res!3155654 () Bool)

(assert (=> b!7962454 (= res!3155654 (not (nullable!9597 (reg!21825 lt!2703543))))))

(assert (=> b!7962454 (=> (not res!3155654) (not e!4695614))))

(declare-fun d!2378485 () Bool)

(declare-fun res!3155655 () Bool)

(assert (=> d!2378485 (=> res!3155655 e!4695618)))

(assert (=> d!2378485 (= res!3155655 (is-ElementMatch!21496 lt!2703543))))

(assert (=> d!2378485 (= (validRegex!11800 lt!2703543) e!4695618)))

(declare-fun b!7962455 () Bool)

(declare-fun call!738481 () Bool)

(assert (=> b!7962455 (= e!4695614 call!738481)))

(declare-fun bm!738475 () Bool)

(declare-fun call!738480 () Bool)

(assert (=> bm!738475 (= call!738480 call!738481)))

(declare-fun b!7962456 () Bool)

(declare-fun res!3155656 () Bool)

(assert (=> b!7962456 (=> (not res!3155656) (not e!4695619))))

(assert (=> b!7962456 (= res!3155656 call!738480)))

(assert (=> b!7962456 (= e!4695615 e!4695619)))

(declare-fun b!7962457 () Bool)

(assert (=> b!7962457 (= e!4695616 e!4695620)))

(declare-fun res!3155657 () Bool)

(assert (=> b!7962457 (=> (not res!3155657) (not e!4695620))))

(assert (=> b!7962457 (= res!3155657 call!738480)))

(declare-fun bm!738476 () Bool)

(assert (=> bm!738476 (= call!738481 (validRegex!11800 (ite c!1462336 (reg!21825 lt!2703543) (ite c!1462337 (regOne!43505 lt!2703543) (regOne!43504 lt!2703543)))))))

(assert (= (and d!2378485 (not res!3155655)) b!7962450))

(assert (= (and b!7962450 c!1462336) b!7962454))

(assert (= (and b!7962450 (not c!1462336)) b!7962451))

(assert (= (and b!7962454 res!3155654) b!7962455))

(assert (= (and b!7962451 c!1462337) b!7962456))

(assert (= (and b!7962451 (not c!1462337)) b!7962453))

(assert (= (and b!7962456 res!3155656) b!7962452))

(assert (= (and b!7962453 (not res!3155653)) b!7962457))

(assert (= (and b!7962457 res!3155657) b!7962449))

(assert (= (or b!7962452 b!7962449) bm!738474))

(assert (= (or b!7962456 b!7962457) bm!738475))

(assert (= (or b!7962455 bm!738475) bm!738476))

(declare-fun m!8343022 () Bool)

(assert (=> bm!738474 m!8343022))

(declare-fun m!8343024 () Bool)

(assert (=> b!7962454 m!8343024))

(declare-fun m!8343026 () Bool)

(assert (=> bm!738476 m!8343026))

(assert (=> d!2378211 d!2378485))

(declare-fun b!7962469 () Bool)

(declare-fun e!4695628 () Bool)

(assert (=> b!7962469 (= e!4695628 (isPrefix!6596 (tail!15785 lt!2703539) (tail!15785 (++!18366 lt!2703539 (tail!15785 lt!2703538)))))))

(declare-fun b!7962470 () Bool)

(declare-fun e!4695630 () Bool)

(assert (=> b!7962470 (= e!4695630 (>= (size!43432 (++!18366 lt!2703539 (tail!15785 lt!2703538))) (size!43432 lt!2703539)))))

(declare-fun b!7962467 () Bool)

(declare-fun e!4695629 () Bool)

(assert (=> b!7962467 (= e!4695629 e!4695628)))

(declare-fun res!3155666 () Bool)

(assert (=> b!7962467 (=> (not res!3155666) (not e!4695628))))

(assert (=> b!7962467 (= res!3155666 (not (is-Nil!74601 (++!18366 lt!2703539 (tail!15785 lt!2703538)))))))

(declare-fun b!7962468 () Bool)

(declare-fun res!3155664 () Bool)

(assert (=> b!7962468 (=> (not res!3155664) (not e!4695628))))

(assert (=> b!7962468 (= res!3155664 (= (head!16248 lt!2703539) (head!16248 (++!18366 lt!2703539 (tail!15785 lt!2703538)))))))

(declare-fun d!2378489 () Bool)

(assert (=> d!2378489 e!4695630))

(declare-fun res!3155665 () Bool)

(assert (=> d!2378489 (=> res!3155665 e!4695630)))

(declare-fun lt!2704001 () Bool)

(assert (=> d!2378489 (= res!3155665 (not lt!2704001))))

(assert (=> d!2378489 (= lt!2704001 e!4695629)))

(declare-fun res!3155663 () Bool)

(assert (=> d!2378489 (=> res!3155663 e!4695629)))

(assert (=> d!2378489 (= res!3155663 (is-Nil!74601 lt!2703539))))

(assert (=> d!2378489 (= (isPrefix!6596 lt!2703539 (++!18366 lt!2703539 (tail!15785 lt!2703538))) lt!2704001)))

(assert (= (and d!2378489 (not res!3155663)) b!7962467))

(assert (= (and b!7962467 res!3155666) b!7962468))

(assert (= (and b!7962468 res!3155664) b!7962469))

(assert (= (and d!2378489 (not res!3155665)) b!7962470))

(assert (=> b!7962469 m!8342338))

(assert (=> b!7962469 m!8342200))

(declare-fun m!8343028 () Bool)

(assert (=> b!7962469 m!8343028))

(assert (=> b!7962469 m!8342338))

(assert (=> b!7962469 m!8343028))

(declare-fun m!8343030 () Bool)

(assert (=> b!7962469 m!8343030))

(assert (=> b!7962470 m!8342200))

(declare-fun m!8343032 () Bool)

(assert (=> b!7962470 m!8343032))

(assert (=> b!7962470 m!8342232))

(assert (=> b!7962468 m!8342342))

(assert (=> b!7962468 m!8342200))

(declare-fun m!8343034 () Bool)

(assert (=> b!7962468 m!8343034))

(assert (=> d!2378211 d!2378489))

(declare-fun d!2378491 () Bool)

(assert (=> d!2378491 (= (lostCause!1975 lt!2703543) (lostCauseFct!571 lt!2703543))))

(declare-fun bs!1969792 () Bool)

(assert (= bs!1969792 d!2378491))

(declare-fun m!8343036 () Bool)

(assert (=> bs!1969792 m!8343036))

(assert (=> d!2378211 d!2378491))

(declare-fun b!7962513 () Bool)

(declare-fun e!4695663 () Bool)

(declare-fun e!4695662 () Bool)

(assert (=> b!7962513 (= e!4695663 e!4695662)))

(declare-fun res!3155688 () Bool)

(declare-fun call!738500 () Bool)

(assert (=> b!7962513 (= res!3155688 call!738500)))

(assert (=> b!7962513 (=> res!3155688 e!4695662)))

(declare-fun b!7962514 () Bool)

(declare-fun call!738499 () Bool)

(assert (=> b!7962514 (= e!4695662 call!738499)))

(declare-fun bm!738494 () Bool)

(declare-fun c!1462351 () Bool)

(assert (=> bm!738494 (= call!738500 (nullable!9597 (ite c!1462351 (regOne!43505 r!24602) (regTwo!43504 r!24602))))))

(declare-fun d!2378493 () Bool)

(declare-fun res!3155689 () Bool)

(declare-fun e!4695667 () Bool)

(assert (=> d!2378493 (=> res!3155689 e!4695667)))

(assert (=> d!2378493 (= res!3155689 (is-EmptyExpr!21496 r!24602))))

(assert (=> d!2378493 (= (nullableFct!3786 r!24602) e!4695667)))

(declare-fun b!7962515 () Bool)

(declare-fun e!4695664 () Bool)

(assert (=> b!7962515 (= e!4695664 e!4695663)))

(assert (=> b!7962515 (= c!1462351 (is-Union!21496 r!24602))))

(declare-fun b!7962516 () Bool)

(declare-fun e!4695666 () Bool)

(assert (=> b!7962516 (= e!4695667 e!4695666)))

(declare-fun res!3155691 () Bool)

(assert (=> b!7962516 (=> (not res!3155691) (not e!4695666))))

(assert (=> b!7962516 (= res!3155691 (and (not (is-EmptyLang!21496 r!24602)) (not (is-ElementMatch!21496 r!24602))))))

(declare-fun bm!738495 () Bool)

(assert (=> bm!738495 (= call!738499 (nullable!9597 (ite c!1462351 (regTwo!43505 r!24602) (regOne!43504 r!24602))))))

(declare-fun b!7962517 () Bool)

(declare-fun e!4695665 () Bool)

(assert (=> b!7962517 (= e!4695665 call!738500)))

(declare-fun b!7962518 () Bool)

(assert (=> b!7962518 (= e!4695663 e!4695665)))

(declare-fun res!3155690 () Bool)

(assert (=> b!7962518 (= res!3155690 call!738499)))

(assert (=> b!7962518 (=> (not res!3155690) (not e!4695665))))

(declare-fun b!7962519 () Bool)

(assert (=> b!7962519 (= e!4695666 e!4695664)))

(declare-fun res!3155687 () Bool)

(assert (=> b!7962519 (=> res!3155687 e!4695664)))

(assert (=> b!7962519 (= res!3155687 (is-Star!21496 r!24602))))

(assert (= (and d!2378493 (not res!3155689)) b!7962516))

(assert (= (and b!7962516 res!3155691) b!7962519))

(assert (= (and b!7962519 (not res!3155687)) b!7962515))

(assert (= (and b!7962515 c!1462351) b!7962513))

(assert (= (and b!7962515 (not c!1462351)) b!7962518))

(assert (= (and b!7962513 (not res!3155688)) b!7962514))

(assert (= (and b!7962518 res!3155690) b!7962517))

(assert (= (or b!7962513 b!7962517) bm!738494))

(assert (= (or b!7962514 b!7962518) bm!738495))

(declare-fun m!8343068 () Bool)

(assert (=> bm!738494 m!8343068))

(declare-fun m!8343070 () Bool)

(assert (=> bm!738495 m!8343070))

(assert (=> d!2378253 d!2378493))

(assert (=> bm!738348 d!2378253))

(assert (=> d!2378249 d!2378315))

(declare-fun d!2378505 () Bool)

(assert (=> d!2378505 (isPrefix!6596 (++!18366 testedP!447 (Cons!74601 (head!16248 (getSuffix!3799 input!7927 testedP!447)) Nil!74601)) input!7927)))

(assert (=> d!2378505 true))

(declare-fun _$65!1949 () Unit!170038)

(assert (=> d!2378505 (= (choose!59998 testedP!447 input!7927) _$65!1949)))

(declare-fun bs!1969794 () Bool)

(assert (= bs!1969794 d!2378505))

(assert (=> bs!1969794 m!8342054))

(assert (=> bs!1969794 m!8342054))

(assert (=> bs!1969794 m!8342302))

(assert (=> bs!1969794 m!8342294))

(assert (=> bs!1969794 m!8342294))

(assert (=> bs!1969794 m!8342296))

(assert (=> d!2378249 d!2378505))

(assert (=> d!2378249 d!2378317))

(assert (=> d!2378249 d!2378319))

(assert (=> d!2378249 d!2378247))

(assert (=> d!2378249 d!2378239))

(declare-fun d!2378511 () Bool)

(declare-fun lt!2704005 () List!74725)

(assert (=> d!2378511 (= (++!18366 (t!390468 testedP!447) lt!2704005) (tail!15785 input!7927))))

(declare-fun e!4695680 () List!74725)

(assert (=> d!2378511 (= lt!2704005 e!4695680)))

(declare-fun c!1462355 () Bool)

(assert (=> d!2378511 (= c!1462355 (is-Cons!74601 (t!390468 testedP!447)))))

(assert (=> d!2378511 (>= (size!43432 (tail!15785 input!7927)) (size!43432 (t!390468 testedP!447)))))

(assert (=> d!2378511 (= (getSuffix!3799 (tail!15785 input!7927) (t!390468 testedP!447)) lt!2704005)))

(declare-fun b!7962537 () Bool)

(assert (=> b!7962537 (= e!4695680 (getSuffix!3799 (tail!15785 (tail!15785 input!7927)) (t!390468 (t!390468 testedP!447))))))

(declare-fun b!7962538 () Bool)

(assert (=> b!7962538 (= e!4695680 (tail!15785 input!7927))))

(assert (= (and d!2378511 c!1462355) b!7962537))

(assert (= (and d!2378511 (not c!1462355)) b!7962538))

(declare-fun m!8343086 () Bool)

(assert (=> d!2378511 m!8343086))

(assert (=> d!2378511 m!8342150))

(assert (=> d!2378511 m!8342518))

(assert (=> d!2378511 m!8342308))

(assert (=> b!7962537 m!8342150))

(assert (=> b!7962537 m!8342514))

(assert (=> b!7962537 m!8342514))

(declare-fun m!8343090 () Bool)

(assert (=> b!7962537 m!8343090))

(assert (=> b!7961865 d!2378511))

(assert (=> b!7961865 d!2378311))

(declare-fun b!7962541 () Bool)

(declare-fun e!4695681 () Bool)

(assert (=> b!7962541 (= e!4695681 (isPrefix!6596 (tail!15785 (tail!15785 lt!2703539)) (tail!15785 (tail!15785 input!7927))))))

(declare-fun b!7962542 () Bool)

(declare-fun e!4695683 () Bool)

(assert (=> b!7962542 (= e!4695683 (>= (size!43432 (tail!15785 input!7927)) (size!43432 (tail!15785 lt!2703539))))))

(declare-fun b!7962539 () Bool)

(declare-fun e!4695682 () Bool)

(assert (=> b!7962539 (= e!4695682 e!4695681)))

(declare-fun res!3155706 () Bool)

(assert (=> b!7962539 (=> (not res!3155706) (not e!4695681))))

(assert (=> b!7962539 (= res!3155706 (not (is-Nil!74601 (tail!15785 input!7927))))))

(declare-fun b!7962540 () Bool)

(declare-fun res!3155704 () Bool)

(assert (=> b!7962540 (=> (not res!3155704) (not e!4695681))))

(assert (=> b!7962540 (= res!3155704 (= (head!16248 (tail!15785 lt!2703539)) (head!16248 (tail!15785 input!7927))))))

(declare-fun d!2378513 () Bool)

(assert (=> d!2378513 e!4695683))

(declare-fun res!3155705 () Bool)

(assert (=> d!2378513 (=> res!3155705 e!4695683)))

(declare-fun lt!2704006 () Bool)

(assert (=> d!2378513 (= res!3155705 (not lt!2704006))))

(assert (=> d!2378513 (= lt!2704006 e!4695682)))

(declare-fun res!3155703 () Bool)

(assert (=> d!2378513 (=> res!3155703 e!4695682)))

(assert (=> d!2378513 (= res!3155703 (is-Nil!74601 (tail!15785 lt!2703539)))))

(assert (=> d!2378513 (= (isPrefix!6596 (tail!15785 lt!2703539) (tail!15785 input!7927)) lt!2704006)))

(assert (= (and d!2378513 (not res!3155703)) b!7962539))

(assert (= (and b!7962539 res!3155706) b!7962540))

(assert (= (and b!7962540 res!3155704) b!7962541))

(assert (= (and d!2378513 (not res!3155705)) b!7962542))

(assert (=> b!7962541 m!8342338))

(declare-fun m!8343098 () Bool)

(assert (=> b!7962541 m!8343098))

(assert (=> b!7962541 m!8342150))

(assert (=> b!7962541 m!8342514))

(assert (=> b!7962541 m!8343098))

(assert (=> b!7962541 m!8342514))

(declare-fun m!8343100 () Bool)

(assert (=> b!7962541 m!8343100))

(assert (=> b!7962542 m!8342150))

(assert (=> b!7962542 m!8342518))

(assert (=> b!7962542 m!8342338))

(declare-fun m!8343102 () Bool)

(assert (=> b!7962542 m!8343102))

(assert (=> b!7962540 m!8342338))

(declare-fun m!8343104 () Bool)

(assert (=> b!7962540 m!8343104))

(assert (=> b!7962540 m!8342150))

(assert (=> b!7962540 m!8342520))

(assert (=> b!7961893 d!2378513))

(declare-fun d!2378519 () Bool)

(assert (=> d!2378519 (= (tail!15785 lt!2703539) (t!390468 lt!2703539))))

(assert (=> b!7961893 d!2378519))

(assert (=> b!7961893 d!2378311))

(declare-fun d!2378521 () Bool)

(declare-fun lt!2704008 () Int)

(assert (=> d!2378521 (>= lt!2704008 0)))

(declare-fun e!4695686 () Int)

(assert (=> d!2378521 (= lt!2704008 e!4695686)))

(declare-fun c!1462357 () Bool)

(assert (=> d!2378521 (= c!1462357 (is-Nil!74601 (_1!38630 lt!2703686)))))

(assert (=> d!2378521 (= (size!43432 (_1!38630 lt!2703686)) lt!2704008)))

(declare-fun b!7962547 () Bool)

(assert (=> b!7962547 (= e!4695686 0)))

(declare-fun b!7962548 () Bool)

(assert (=> b!7962548 (= e!4695686 (+ 1 (size!43432 (t!390468 (_1!38630 lt!2703686)))))))

(assert (= (and d!2378521 c!1462357) b!7962547))

(assert (= (and d!2378521 (not c!1462357)) b!7962548))

(declare-fun m!8343106 () Bool)

(assert (=> b!7962548 m!8343106))

(assert (=> b!7961799 d!2378521))

(assert (=> b!7961799 d!2378355))

(declare-fun b!7962549 () Bool)

(declare-fun e!4695693 () Bool)

(declare-fun call!738504 () Bool)

(assert (=> b!7962549 (= e!4695693 call!738504)))

(declare-fun bm!738499 () Bool)

(declare-fun c!1462359 () Bool)

(assert (=> bm!738499 (= call!738504 (validRegex!11800 (ite c!1462359 (regTwo!43505 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))) (regTwo!43504 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))))))))

(declare-fun b!7962550 () Bool)

(declare-fun e!4695691 () Bool)

(declare-fun e!4695690 () Bool)

(assert (=> b!7962550 (= e!4695691 e!4695690)))

(declare-fun c!1462358 () Bool)

(assert (=> b!7962550 (= c!1462358 (is-Star!21496 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))))))

(declare-fun b!7962551 () Bool)

(declare-fun e!4695688 () Bool)

(assert (=> b!7962551 (= e!4695690 e!4695688)))

(assert (=> b!7962551 (= c!1462359 (is-Union!21496 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))))))

(declare-fun b!7962552 () Bool)

(declare-fun e!4695692 () Bool)

(assert (=> b!7962552 (= e!4695692 call!738504)))

(declare-fun b!7962553 () Bool)

(declare-fun res!3155709 () Bool)

(declare-fun e!4695689 () Bool)

(assert (=> b!7962553 (=> res!3155709 e!4695689)))

(assert (=> b!7962553 (= res!3155709 (not (is-Concat!30495 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116))))))))

(assert (=> b!7962553 (= e!4695688 e!4695689)))

(declare-fun b!7962554 () Bool)

(declare-fun e!4695687 () Bool)

(assert (=> b!7962554 (= e!4695690 e!4695687)))

(declare-fun res!3155710 () Bool)

(assert (=> b!7962554 (= res!3155710 (not (nullable!9597 (reg!21825 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))))))))

(assert (=> b!7962554 (=> (not res!3155710) (not e!4695687))))

(declare-fun d!2378523 () Bool)

(declare-fun res!3155711 () Bool)

(assert (=> d!2378523 (=> res!3155711 e!4695691)))

(assert (=> d!2378523 (= res!3155711 (is-ElementMatch!21496 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))))))

(assert (=> d!2378523 (= (validRegex!11800 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))) e!4695691)))

(declare-fun b!7962555 () Bool)

(declare-fun call!738506 () Bool)

(assert (=> b!7962555 (= e!4695687 call!738506)))

(declare-fun bm!738500 () Bool)

(declare-fun call!738505 () Bool)

(assert (=> bm!738500 (= call!738505 call!738506)))

(declare-fun b!7962556 () Bool)

(declare-fun res!3155712 () Bool)

(assert (=> b!7962556 (=> (not res!3155712) (not e!4695692))))

(assert (=> b!7962556 (= res!3155712 call!738505)))

(assert (=> b!7962556 (= e!4695688 e!4695692)))

(declare-fun b!7962557 () Bool)

(assert (=> b!7962557 (= e!4695689 e!4695693)))

(declare-fun res!3155713 () Bool)

(assert (=> b!7962557 (=> (not res!3155713) (not e!4695693))))

(assert (=> b!7962557 (= res!3155713 call!738505)))

(declare-fun bm!738501 () Bool)

(assert (=> bm!738501 (= call!738506 (validRegex!11800 (ite c!1462358 (reg!21825 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))) (ite c!1462359 (regOne!43505 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116)))) (regOne!43504 (ite c!1462187 (reg!21825 baseR!116) (ite c!1462188 (regOne!43505 baseR!116) (regOne!43504 baseR!116))))))))))

(assert (= (and d!2378523 (not res!3155711)) b!7962550))

(assert (= (and b!7962550 c!1462358) b!7962554))

(assert (= (and b!7962550 (not c!1462358)) b!7962551))

(assert (= (and b!7962554 res!3155710) b!7962555))

(assert (= (and b!7962551 c!1462359) b!7962556))

(assert (= (and b!7962551 (not c!1462359)) b!7962553))

(assert (= (and b!7962556 res!3155712) b!7962552))

(assert (= (and b!7962553 (not res!3155709)) b!7962557))

(assert (= (and b!7962557 res!3155713) b!7962549))

(assert (= (or b!7962552 b!7962549) bm!738499))

(assert (= (or b!7962556 b!7962557) bm!738500))

(assert (= (or b!7962555 bm!738500) bm!738501))

(declare-fun m!8343122 () Bool)

(assert (=> bm!738499 m!8343122))

(declare-fun m!8343124 () Bool)

(assert (=> b!7962554 m!8343124))

(declare-fun m!8343126 () Bool)

(assert (=> bm!738501 m!8343126))

(assert (=> bm!738358 d!2378523))

(declare-fun e!4695696 () Bool)

(assert (=> b!7961954 (= tp!2372308 e!4695696)))

(declare-fun b!7962562 () Bool)

(assert (=> b!7962562 (= e!4695696 tp_is_empty!53535)))

(declare-fun b!7962564 () Bool)

(declare-fun tp!2372407 () Bool)

(assert (=> b!7962564 (= e!4695696 tp!2372407)))

(declare-fun b!7962563 () Bool)

(declare-fun tp!2372408 () Bool)

(declare-fun tp!2372410 () Bool)

(assert (=> b!7962563 (= e!4695696 (and tp!2372408 tp!2372410))))

(declare-fun b!7962565 () Bool)

(declare-fun tp!2372411 () Bool)

(declare-fun tp!2372409 () Bool)

(assert (=> b!7962565 (= e!4695696 (and tp!2372411 tp!2372409))))

(assert (= (and b!7961954 (is-ElementMatch!21496 (reg!21825 (regOne!43504 r!24602)))) b!7962562))

(assert (= (and b!7961954 (is-Concat!30495 (reg!21825 (regOne!43504 r!24602)))) b!7962563))

(assert (= (and b!7961954 (is-Star!21496 (reg!21825 (regOne!43504 r!24602)))) b!7962564))

(assert (= (and b!7961954 (is-Union!21496 (reg!21825 (regOne!43504 r!24602)))) b!7962565))

(declare-fun e!4695697 () Bool)

(assert (=> b!7961946 (= tp!2372301 e!4695697)))

(declare-fun b!7962566 () Bool)

(assert (=> b!7962566 (= e!4695697 tp_is_empty!53535)))

(declare-fun b!7962568 () Bool)

(declare-fun tp!2372412 () Bool)

(assert (=> b!7962568 (= e!4695697 tp!2372412)))

(declare-fun b!7962567 () Bool)

(declare-fun tp!2372413 () Bool)

(declare-fun tp!2372415 () Bool)

(assert (=> b!7962567 (= e!4695697 (and tp!2372413 tp!2372415))))

(declare-fun b!7962569 () Bool)

(declare-fun tp!2372416 () Bool)

(declare-fun tp!2372414 () Bool)

(assert (=> b!7962569 (= e!4695697 (and tp!2372416 tp!2372414))))

(assert (= (and b!7961946 (is-ElementMatch!21496 (regOne!43505 (regTwo!43504 baseR!116)))) b!7962566))

(assert (= (and b!7961946 (is-Concat!30495 (regOne!43505 (regTwo!43504 baseR!116)))) b!7962567))

(assert (= (and b!7961946 (is-Star!21496 (regOne!43505 (regTwo!43504 baseR!116)))) b!7962568))

(assert (= (and b!7961946 (is-Union!21496 (regOne!43505 (regTwo!43504 baseR!116)))) b!7962569))

(declare-fun e!4695698 () Bool)

(assert (=> b!7961946 (= tp!2372299 e!4695698)))

(declare-fun b!7962570 () Bool)

(assert (=> b!7962570 (= e!4695698 tp_is_empty!53535)))

(declare-fun b!7962572 () Bool)

(declare-fun tp!2372417 () Bool)

(assert (=> b!7962572 (= e!4695698 tp!2372417)))

(declare-fun b!7962571 () Bool)

(declare-fun tp!2372418 () Bool)

(declare-fun tp!2372420 () Bool)

(assert (=> b!7962571 (= e!4695698 (and tp!2372418 tp!2372420))))

(declare-fun b!7962573 () Bool)

(declare-fun tp!2372421 () Bool)

(declare-fun tp!2372419 () Bool)

(assert (=> b!7962573 (= e!4695698 (and tp!2372421 tp!2372419))))

(assert (= (and b!7961946 (is-ElementMatch!21496 (regTwo!43505 (regTwo!43504 baseR!116)))) b!7962570))

(assert (= (and b!7961946 (is-Concat!30495 (regTwo!43505 (regTwo!43504 baseR!116)))) b!7962571))

(assert (= (and b!7961946 (is-Star!21496 (regTwo!43505 (regTwo!43504 baseR!116)))) b!7962572))

(assert (= (and b!7961946 (is-Union!21496 (regTwo!43505 (regTwo!43504 baseR!116)))) b!7962573))

(declare-fun e!4695701 () Bool)

(assert (=> b!7961963 (= tp!2372322 e!4695701)))

(declare-fun b!7962578 () Bool)

(assert (=> b!7962578 (= e!4695701 tp_is_empty!53535)))

(declare-fun b!7962580 () Bool)

(declare-fun tp!2372422 () Bool)

(assert (=> b!7962580 (= e!4695701 tp!2372422)))

(declare-fun b!7962579 () Bool)

(declare-fun tp!2372423 () Bool)

(declare-fun tp!2372425 () Bool)

(assert (=> b!7962579 (= e!4695701 (and tp!2372423 tp!2372425))))

(declare-fun b!7962581 () Bool)

(declare-fun tp!2372426 () Bool)

(declare-fun tp!2372424 () Bool)

(assert (=> b!7962581 (= e!4695701 (and tp!2372426 tp!2372424))))

(assert (= (and b!7961963 (is-ElementMatch!21496 (regOne!43505 (regOne!43505 baseR!116)))) b!7962578))

(assert (= (and b!7961963 (is-Concat!30495 (regOne!43505 (regOne!43505 baseR!116)))) b!7962579))

(assert (= (and b!7961963 (is-Star!21496 (regOne!43505 (regOne!43505 baseR!116)))) b!7962580))

(assert (= (and b!7961963 (is-Union!21496 (regOne!43505 (regOne!43505 baseR!116)))) b!7962581))

(declare-fun e!4695702 () Bool)

(assert (=> b!7961963 (= tp!2372320 e!4695702)))

(declare-fun b!7962582 () Bool)

(assert (=> b!7962582 (= e!4695702 tp_is_empty!53535)))

(declare-fun b!7962584 () Bool)

(declare-fun tp!2372427 () Bool)

(assert (=> b!7962584 (= e!4695702 tp!2372427)))

(declare-fun b!7962583 () Bool)

(declare-fun tp!2372428 () Bool)

(declare-fun tp!2372430 () Bool)

(assert (=> b!7962583 (= e!4695702 (and tp!2372428 tp!2372430))))

(declare-fun b!7962585 () Bool)

(declare-fun tp!2372431 () Bool)

(declare-fun tp!2372429 () Bool)

(assert (=> b!7962585 (= e!4695702 (and tp!2372431 tp!2372429))))

(assert (= (and b!7961963 (is-ElementMatch!21496 (regTwo!43505 (regOne!43505 baseR!116)))) b!7962582))

(assert (= (and b!7961963 (is-Concat!30495 (regTwo!43505 (regOne!43505 baseR!116)))) b!7962583))

(assert (= (and b!7961963 (is-Star!21496 (regTwo!43505 (regOne!43505 baseR!116)))) b!7962584))

(assert (= (and b!7961963 (is-Union!21496 (regTwo!43505 (regOne!43505 baseR!116)))) b!7962585))

(declare-fun e!4695703 () Bool)

(assert (=> b!7961962 (= tp!2372318 e!4695703)))

(declare-fun b!7962586 () Bool)

(assert (=> b!7962586 (= e!4695703 tp_is_empty!53535)))

(declare-fun b!7962588 () Bool)

(declare-fun tp!2372432 () Bool)

(assert (=> b!7962588 (= e!4695703 tp!2372432)))

(declare-fun b!7962587 () Bool)

(declare-fun tp!2372433 () Bool)

(declare-fun tp!2372435 () Bool)

(assert (=> b!7962587 (= e!4695703 (and tp!2372433 tp!2372435))))

(declare-fun b!7962589 () Bool)

(declare-fun tp!2372436 () Bool)

(declare-fun tp!2372434 () Bool)

(assert (=> b!7962589 (= e!4695703 (and tp!2372436 tp!2372434))))

(assert (= (and b!7961962 (is-ElementMatch!21496 (reg!21825 (regOne!43505 baseR!116)))) b!7962586))

(assert (= (and b!7961962 (is-Concat!30495 (reg!21825 (regOne!43505 baseR!116)))) b!7962587))

(assert (= (and b!7961962 (is-Star!21496 (reg!21825 (regOne!43505 baseR!116)))) b!7962588))

(assert (= (and b!7961962 (is-Union!21496 (reg!21825 (regOne!43505 baseR!116)))) b!7962589))

(declare-fun e!4695704 () Bool)

(assert (=> b!7961953 (= tp!2372309 e!4695704)))

(declare-fun b!7962590 () Bool)

(assert (=> b!7962590 (= e!4695704 tp_is_empty!53535)))

(declare-fun b!7962592 () Bool)

(declare-fun tp!2372437 () Bool)

(assert (=> b!7962592 (= e!4695704 tp!2372437)))

(declare-fun b!7962591 () Bool)

(declare-fun tp!2372438 () Bool)

(declare-fun tp!2372440 () Bool)

(assert (=> b!7962591 (= e!4695704 (and tp!2372438 tp!2372440))))

(declare-fun b!7962593 () Bool)

(declare-fun tp!2372441 () Bool)

(declare-fun tp!2372439 () Bool)

(assert (=> b!7962593 (= e!4695704 (and tp!2372441 tp!2372439))))

(assert (= (and b!7961953 (is-ElementMatch!21496 (regOne!43504 (regOne!43504 r!24602)))) b!7962590))

(assert (= (and b!7961953 (is-Concat!30495 (regOne!43504 (regOne!43504 r!24602)))) b!7962591))

(assert (= (and b!7961953 (is-Star!21496 (regOne!43504 (regOne!43504 r!24602)))) b!7962592))

(assert (= (and b!7961953 (is-Union!21496 (regOne!43504 (regOne!43504 r!24602)))) b!7962593))

(declare-fun e!4695705 () Bool)

(assert (=> b!7961953 (= tp!2372311 e!4695705)))

(declare-fun b!7962594 () Bool)

(assert (=> b!7962594 (= e!4695705 tp_is_empty!53535)))

(declare-fun b!7962596 () Bool)

(declare-fun tp!2372442 () Bool)

(assert (=> b!7962596 (= e!4695705 tp!2372442)))

(declare-fun b!7962595 () Bool)

(declare-fun tp!2372443 () Bool)

(declare-fun tp!2372445 () Bool)

(assert (=> b!7962595 (= e!4695705 (and tp!2372443 tp!2372445))))

(declare-fun b!7962597 () Bool)

(declare-fun tp!2372446 () Bool)

(declare-fun tp!2372444 () Bool)

(assert (=> b!7962597 (= e!4695705 (and tp!2372446 tp!2372444))))

(assert (= (and b!7961953 (is-ElementMatch!21496 (regTwo!43504 (regOne!43504 r!24602)))) b!7962594))

(assert (= (and b!7961953 (is-Concat!30495 (regTwo!43504 (regOne!43504 r!24602)))) b!7962595))

(assert (= (and b!7961953 (is-Star!21496 (regTwo!43504 (regOne!43504 r!24602)))) b!7962596))

(assert (= (and b!7961953 (is-Union!21496 (regTwo!43504 (regOne!43504 r!24602)))) b!7962597))

(declare-fun e!4695706 () Bool)

(assert (=> b!7961945 (= tp!2372297 e!4695706)))

(declare-fun b!7962598 () Bool)

(assert (=> b!7962598 (= e!4695706 tp_is_empty!53535)))

(declare-fun b!7962600 () Bool)

(declare-fun tp!2372447 () Bool)

(assert (=> b!7962600 (= e!4695706 tp!2372447)))

(declare-fun b!7962599 () Bool)

(declare-fun tp!2372448 () Bool)

(declare-fun tp!2372450 () Bool)

(assert (=> b!7962599 (= e!4695706 (and tp!2372448 tp!2372450))))

(declare-fun b!7962601 () Bool)

(declare-fun tp!2372451 () Bool)

(declare-fun tp!2372449 () Bool)

(assert (=> b!7962601 (= e!4695706 (and tp!2372451 tp!2372449))))

(assert (= (and b!7961945 (is-ElementMatch!21496 (reg!21825 (regTwo!43504 baseR!116)))) b!7962598))

(assert (= (and b!7961945 (is-Concat!30495 (reg!21825 (regTwo!43504 baseR!116)))) b!7962599))

(assert (= (and b!7961945 (is-Star!21496 (reg!21825 (regTwo!43504 baseR!116)))) b!7962600))

(assert (= (and b!7961945 (is-Union!21496 (reg!21825 (regTwo!43504 baseR!116)))) b!7962601))

(declare-fun e!4695710 () Bool)

(assert (=> b!7961971 (= tp!2372332 e!4695710)))

(declare-fun b!7962606 () Bool)

(assert (=> b!7962606 (= e!4695710 tp_is_empty!53535)))

(declare-fun b!7962608 () Bool)

(declare-fun tp!2372452 () Bool)

(assert (=> b!7962608 (= e!4695710 tp!2372452)))

(declare-fun b!7962607 () Bool)

(declare-fun tp!2372453 () Bool)

(declare-fun tp!2372455 () Bool)

(assert (=> b!7962607 (= e!4695710 (and tp!2372453 tp!2372455))))

(declare-fun b!7962609 () Bool)

(declare-fun tp!2372456 () Bool)

(declare-fun tp!2372454 () Bool)

(assert (=> b!7962609 (= e!4695710 (and tp!2372456 tp!2372454))))

(assert (= (and b!7961971 (is-ElementMatch!21496 (regOne!43505 (regOne!43505 r!24602)))) b!7962606))

(assert (= (and b!7961971 (is-Concat!30495 (regOne!43505 (regOne!43505 r!24602)))) b!7962607))

(assert (= (and b!7961971 (is-Star!21496 (regOne!43505 (regOne!43505 r!24602)))) b!7962608))

(assert (= (and b!7961971 (is-Union!21496 (regOne!43505 (regOne!43505 r!24602)))) b!7962609))

(declare-fun e!4695711 () Bool)

(assert (=> b!7961971 (= tp!2372330 e!4695711)))

(declare-fun b!7962610 () Bool)

(assert (=> b!7962610 (= e!4695711 tp_is_empty!53535)))

(declare-fun b!7962612 () Bool)

(declare-fun tp!2372457 () Bool)

(assert (=> b!7962612 (= e!4695711 tp!2372457)))

(declare-fun b!7962611 () Bool)

(declare-fun tp!2372458 () Bool)

(declare-fun tp!2372460 () Bool)

(assert (=> b!7962611 (= e!4695711 (and tp!2372458 tp!2372460))))

(declare-fun b!7962613 () Bool)

(declare-fun tp!2372461 () Bool)

(declare-fun tp!2372459 () Bool)

(assert (=> b!7962613 (= e!4695711 (and tp!2372461 tp!2372459))))

(assert (= (and b!7961971 (is-ElementMatch!21496 (regTwo!43505 (regOne!43505 r!24602)))) b!7962610))

(assert (= (and b!7961971 (is-Concat!30495 (regTwo!43505 (regOne!43505 r!24602)))) b!7962611))

(assert (= (and b!7961971 (is-Star!21496 (regTwo!43505 (regOne!43505 r!24602)))) b!7962612))

(assert (= (and b!7961971 (is-Union!21496 (regTwo!43505 (regOne!43505 r!24602)))) b!7962613))

(declare-fun e!4695712 () Bool)

(assert (=> b!7961955 (= tp!2372312 e!4695712)))

(declare-fun b!7962614 () Bool)

(assert (=> b!7962614 (= e!4695712 tp_is_empty!53535)))

(declare-fun b!7962616 () Bool)

(declare-fun tp!2372462 () Bool)

(assert (=> b!7962616 (= e!4695712 tp!2372462)))

(declare-fun b!7962615 () Bool)

(declare-fun tp!2372463 () Bool)

(declare-fun tp!2372465 () Bool)

(assert (=> b!7962615 (= e!4695712 (and tp!2372463 tp!2372465))))

(declare-fun b!7962617 () Bool)

(declare-fun tp!2372466 () Bool)

(declare-fun tp!2372464 () Bool)

(assert (=> b!7962617 (= e!4695712 (and tp!2372466 tp!2372464))))

(assert (= (and b!7961955 (is-ElementMatch!21496 (regOne!43505 (regOne!43504 r!24602)))) b!7962614))

(assert (= (and b!7961955 (is-Concat!30495 (regOne!43505 (regOne!43504 r!24602)))) b!7962615))

(assert (= (and b!7961955 (is-Star!21496 (regOne!43505 (regOne!43504 r!24602)))) b!7962616))

(assert (= (and b!7961955 (is-Union!21496 (regOne!43505 (regOne!43504 r!24602)))) b!7962617))

(declare-fun e!4695713 () Bool)

(assert (=> b!7961955 (= tp!2372310 e!4695713)))

(declare-fun b!7962618 () Bool)

(assert (=> b!7962618 (= e!4695713 tp_is_empty!53535)))

(declare-fun b!7962620 () Bool)

(declare-fun tp!2372467 () Bool)

(assert (=> b!7962620 (= e!4695713 tp!2372467)))

(declare-fun b!7962619 () Bool)

(declare-fun tp!2372468 () Bool)

(declare-fun tp!2372470 () Bool)

(assert (=> b!7962619 (= e!4695713 (and tp!2372468 tp!2372470))))

(declare-fun b!7962621 () Bool)

(declare-fun tp!2372471 () Bool)

(declare-fun tp!2372469 () Bool)

(assert (=> b!7962621 (= e!4695713 (and tp!2372471 tp!2372469))))

(assert (= (and b!7961955 (is-ElementMatch!21496 (regTwo!43505 (regOne!43504 r!24602)))) b!7962618))

(assert (= (and b!7961955 (is-Concat!30495 (regTwo!43505 (regOne!43504 r!24602)))) b!7962619))

(assert (= (and b!7961955 (is-Star!21496 (regTwo!43505 (regOne!43504 r!24602)))) b!7962620))

(assert (= (and b!7961955 (is-Union!21496 (regTwo!43505 (regOne!43504 r!24602)))) b!7962621))

(declare-fun e!4695714 () Bool)

(assert (=> b!7961949 (= tp!2372302 e!4695714)))

(declare-fun b!7962622 () Bool)

(assert (=> b!7962622 (= e!4695714 tp_is_empty!53535)))

(declare-fun b!7962624 () Bool)

(declare-fun tp!2372472 () Bool)

(assert (=> b!7962624 (= e!4695714 tp!2372472)))

(declare-fun b!7962623 () Bool)

(declare-fun tp!2372473 () Bool)

(declare-fun tp!2372475 () Bool)

(assert (=> b!7962623 (= e!4695714 (and tp!2372473 tp!2372475))))

(declare-fun b!7962625 () Bool)

(declare-fun tp!2372476 () Bool)

(declare-fun tp!2372474 () Bool)

(assert (=> b!7962625 (= e!4695714 (and tp!2372476 tp!2372474))))

(assert (= (and b!7961949 (is-ElementMatch!21496 (reg!21825 (reg!21825 r!24602)))) b!7962622))

(assert (= (and b!7961949 (is-Concat!30495 (reg!21825 (reg!21825 r!24602)))) b!7962623))

(assert (= (and b!7961949 (is-Star!21496 (reg!21825 (reg!21825 r!24602)))) b!7962624))

(assert (= (and b!7961949 (is-Union!21496 (reg!21825 (reg!21825 r!24602)))) b!7962625))

(declare-fun e!4695715 () Bool)

(assert (=> b!7961975 (= tp!2372337 e!4695715)))

(declare-fun b!7962626 () Bool)

(assert (=> b!7962626 (= e!4695715 tp_is_empty!53535)))

(declare-fun b!7962628 () Bool)

(declare-fun tp!2372477 () Bool)

(assert (=> b!7962628 (= e!4695715 tp!2372477)))

(declare-fun b!7962627 () Bool)

(declare-fun tp!2372478 () Bool)

(declare-fun tp!2372480 () Bool)

(assert (=> b!7962627 (= e!4695715 (and tp!2372478 tp!2372480))))

(declare-fun b!7962629 () Bool)

(declare-fun tp!2372481 () Bool)

(declare-fun tp!2372479 () Bool)

(assert (=> b!7962629 (= e!4695715 (and tp!2372481 tp!2372479))))

(assert (= (and b!7961975 (is-ElementMatch!21496 (regOne!43505 (regTwo!43505 r!24602)))) b!7962626))

(assert (= (and b!7961975 (is-Concat!30495 (regOne!43505 (regTwo!43505 r!24602)))) b!7962627))

(assert (= (and b!7961975 (is-Star!21496 (regOne!43505 (regTwo!43505 r!24602)))) b!7962628))

(assert (= (and b!7961975 (is-Union!21496 (regOne!43505 (regTwo!43505 r!24602)))) b!7962629))

(declare-fun e!4695716 () Bool)

(assert (=> b!7961975 (= tp!2372335 e!4695716)))

(declare-fun b!7962630 () Bool)

(assert (=> b!7962630 (= e!4695716 tp_is_empty!53535)))

(declare-fun b!7962632 () Bool)

(declare-fun tp!2372482 () Bool)

(assert (=> b!7962632 (= e!4695716 tp!2372482)))

(declare-fun b!7962631 () Bool)

(declare-fun tp!2372483 () Bool)

(declare-fun tp!2372485 () Bool)

(assert (=> b!7962631 (= e!4695716 (and tp!2372483 tp!2372485))))

(declare-fun b!7962633 () Bool)

(declare-fun tp!2372486 () Bool)

(declare-fun tp!2372484 () Bool)

(assert (=> b!7962633 (= e!4695716 (and tp!2372486 tp!2372484))))

(assert (= (and b!7961975 (is-ElementMatch!21496 (regTwo!43505 (regTwo!43505 r!24602)))) b!7962630))

(assert (= (and b!7961975 (is-Concat!30495 (regTwo!43505 (regTwo!43505 r!24602)))) b!7962631))

(assert (= (and b!7961975 (is-Star!21496 (regTwo!43505 (regTwo!43505 r!24602)))) b!7962632))

(assert (= (and b!7961975 (is-Union!21496 (regTwo!43505 (regTwo!43505 r!24602)))) b!7962633))

(declare-fun e!4695717 () Bool)

(assert (=> b!7961948 (= tp!2372303 e!4695717)))

(declare-fun b!7962634 () Bool)

(assert (=> b!7962634 (= e!4695717 tp_is_empty!53535)))

(declare-fun b!7962636 () Bool)

(declare-fun tp!2372487 () Bool)

(assert (=> b!7962636 (= e!4695717 tp!2372487)))

(declare-fun b!7962635 () Bool)

(declare-fun tp!2372488 () Bool)

(declare-fun tp!2372490 () Bool)

(assert (=> b!7962635 (= e!4695717 (and tp!2372488 tp!2372490))))

(declare-fun b!7962637 () Bool)

(declare-fun tp!2372491 () Bool)

(declare-fun tp!2372489 () Bool)

(assert (=> b!7962637 (= e!4695717 (and tp!2372491 tp!2372489))))

(assert (= (and b!7961948 (is-ElementMatch!21496 (regOne!43504 (reg!21825 r!24602)))) b!7962634))

(assert (= (and b!7961948 (is-Concat!30495 (regOne!43504 (reg!21825 r!24602)))) b!7962635))

(assert (= (and b!7961948 (is-Star!21496 (regOne!43504 (reg!21825 r!24602)))) b!7962636))

(assert (= (and b!7961948 (is-Union!21496 (regOne!43504 (reg!21825 r!24602)))) b!7962637))

(declare-fun e!4695720 () Bool)

(assert (=> b!7961948 (= tp!2372305 e!4695720)))

(declare-fun b!7962642 () Bool)

(assert (=> b!7962642 (= e!4695720 tp_is_empty!53535)))

(declare-fun b!7962644 () Bool)

(declare-fun tp!2372492 () Bool)

(assert (=> b!7962644 (= e!4695720 tp!2372492)))

(declare-fun b!7962643 () Bool)

(declare-fun tp!2372493 () Bool)

(declare-fun tp!2372495 () Bool)

(assert (=> b!7962643 (= e!4695720 (and tp!2372493 tp!2372495))))

(declare-fun b!7962645 () Bool)

(declare-fun tp!2372496 () Bool)

(declare-fun tp!2372494 () Bool)

(assert (=> b!7962645 (= e!4695720 (and tp!2372496 tp!2372494))))

(assert (= (and b!7961948 (is-ElementMatch!21496 (regTwo!43504 (reg!21825 r!24602)))) b!7962642))

(assert (= (and b!7961948 (is-Concat!30495 (regTwo!43504 (reg!21825 r!24602)))) b!7962643))

(assert (= (and b!7961948 (is-Star!21496 (regTwo!43504 (reg!21825 r!24602)))) b!7962644))

(assert (= (and b!7961948 (is-Union!21496 (regTwo!43504 (reg!21825 r!24602)))) b!7962645))

(declare-fun e!4695721 () Bool)

(assert (=> b!7961974 (= tp!2372333 e!4695721)))

(declare-fun b!7962646 () Bool)

(assert (=> b!7962646 (= e!4695721 tp_is_empty!53535)))

(declare-fun b!7962648 () Bool)

(declare-fun tp!2372497 () Bool)

(assert (=> b!7962648 (= e!4695721 tp!2372497)))

(declare-fun b!7962647 () Bool)

(declare-fun tp!2372498 () Bool)

(declare-fun tp!2372500 () Bool)

(assert (=> b!7962647 (= e!4695721 (and tp!2372498 tp!2372500))))

(declare-fun b!7962649 () Bool)

(declare-fun tp!2372501 () Bool)

(declare-fun tp!2372499 () Bool)

(assert (=> b!7962649 (= e!4695721 (and tp!2372501 tp!2372499))))

(assert (= (and b!7961974 (is-ElementMatch!21496 (reg!21825 (regTwo!43505 r!24602)))) b!7962646))

(assert (= (and b!7961974 (is-Concat!30495 (reg!21825 (regTwo!43505 r!24602)))) b!7962647))

(assert (= (and b!7961974 (is-Star!21496 (reg!21825 (regTwo!43505 r!24602)))) b!7962648))

(assert (= (and b!7961974 (is-Union!21496 (reg!21825 (regTwo!43505 r!24602)))) b!7962649))

(declare-fun e!4695722 () Bool)

(assert (=> b!7961965 (= tp!2372324 e!4695722)))

(declare-fun b!7962650 () Bool)

(assert (=> b!7962650 (= e!4695722 tp_is_empty!53535)))

(declare-fun b!7962652 () Bool)

(declare-fun tp!2372502 () Bool)

(assert (=> b!7962652 (= e!4695722 tp!2372502)))

(declare-fun b!7962651 () Bool)

(declare-fun tp!2372503 () Bool)

(declare-fun tp!2372505 () Bool)

(assert (=> b!7962651 (= e!4695722 (and tp!2372503 tp!2372505))))

(declare-fun b!7962653 () Bool)

(declare-fun tp!2372506 () Bool)

(declare-fun tp!2372504 () Bool)

(assert (=> b!7962653 (= e!4695722 (and tp!2372506 tp!2372504))))

(assert (= (and b!7961965 (is-ElementMatch!21496 (regOne!43504 (regTwo!43505 baseR!116)))) b!7962650))

(assert (= (and b!7961965 (is-Concat!30495 (regOne!43504 (regTwo!43505 baseR!116)))) b!7962651))

(assert (= (and b!7961965 (is-Star!21496 (regOne!43504 (regTwo!43505 baseR!116)))) b!7962652))

(assert (= (and b!7961965 (is-Union!21496 (regOne!43504 (regTwo!43505 baseR!116)))) b!7962653))

(declare-fun e!4695723 () Bool)

(assert (=> b!7961965 (= tp!2372326 e!4695723)))

(declare-fun b!7962654 () Bool)

(assert (=> b!7962654 (= e!4695723 tp_is_empty!53535)))

(declare-fun b!7962656 () Bool)

(declare-fun tp!2372507 () Bool)

(assert (=> b!7962656 (= e!4695723 tp!2372507)))

(declare-fun b!7962655 () Bool)

(declare-fun tp!2372508 () Bool)

(declare-fun tp!2372510 () Bool)

(assert (=> b!7962655 (= e!4695723 (and tp!2372508 tp!2372510))))

(declare-fun b!7962657 () Bool)

(declare-fun tp!2372511 () Bool)

(declare-fun tp!2372509 () Bool)

(assert (=> b!7962657 (= e!4695723 (and tp!2372511 tp!2372509))))

(assert (= (and b!7961965 (is-ElementMatch!21496 (regTwo!43504 (regTwo!43505 baseR!116)))) b!7962654))

(assert (= (and b!7961965 (is-Concat!30495 (regTwo!43504 (regTwo!43505 baseR!116)))) b!7962655))

(assert (= (and b!7961965 (is-Star!21496 (regTwo!43504 (regTwo!43505 baseR!116)))) b!7962656))

(assert (= (and b!7961965 (is-Union!21496 (regTwo!43504 (regTwo!43505 baseR!116)))) b!7962657))

(declare-fun e!4695724 () Bool)

(assert (=> b!7961973 (= tp!2372334 e!4695724)))

(declare-fun b!7962658 () Bool)

(assert (=> b!7962658 (= e!4695724 tp_is_empty!53535)))

(declare-fun b!7962660 () Bool)

(declare-fun tp!2372512 () Bool)

(assert (=> b!7962660 (= e!4695724 tp!2372512)))

(declare-fun b!7962659 () Bool)

(declare-fun tp!2372513 () Bool)

(declare-fun tp!2372515 () Bool)

(assert (=> b!7962659 (= e!4695724 (and tp!2372513 tp!2372515))))

(declare-fun b!7962661 () Bool)

(declare-fun tp!2372516 () Bool)

(declare-fun tp!2372514 () Bool)

(assert (=> b!7962661 (= e!4695724 (and tp!2372516 tp!2372514))))

(assert (= (and b!7961973 (is-ElementMatch!21496 (regOne!43504 (regTwo!43505 r!24602)))) b!7962658))

(assert (= (and b!7961973 (is-Concat!30495 (regOne!43504 (regTwo!43505 r!24602)))) b!7962659))

(assert (= (and b!7961973 (is-Star!21496 (regOne!43504 (regTwo!43505 r!24602)))) b!7962660))

(assert (= (and b!7961973 (is-Union!21496 (regOne!43504 (regTwo!43505 r!24602)))) b!7962661))

(declare-fun e!4695725 () Bool)

(assert (=> b!7961973 (= tp!2372336 e!4695725)))

(declare-fun b!7962662 () Bool)

(assert (=> b!7962662 (= e!4695725 tp_is_empty!53535)))

(declare-fun b!7962664 () Bool)

(declare-fun tp!2372517 () Bool)

(assert (=> b!7962664 (= e!4695725 tp!2372517)))

(declare-fun b!7962663 () Bool)

(declare-fun tp!2372518 () Bool)

(declare-fun tp!2372520 () Bool)

(assert (=> b!7962663 (= e!4695725 (and tp!2372518 tp!2372520))))

(declare-fun b!7962665 () Bool)

(declare-fun tp!2372521 () Bool)

(declare-fun tp!2372519 () Bool)

(assert (=> b!7962665 (= e!4695725 (and tp!2372521 tp!2372519))))

(assert (= (and b!7961973 (is-ElementMatch!21496 (regTwo!43504 (regTwo!43505 r!24602)))) b!7962662))

(assert (= (and b!7961973 (is-Concat!30495 (regTwo!43504 (regTwo!43505 r!24602)))) b!7962663))

(assert (= (and b!7961973 (is-Star!21496 (regTwo!43504 (regTwo!43505 r!24602)))) b!7962664))

(assert (= (and b!7961973 (is-Union!21496 (regTwo!43504 (regTwo!43505 r!24602)))) b!7962665))

(declare-fun e!4695726 () Bool)

(assert (=> b!7961942 (= tp!2372296 e!4695726)))

(declare-fun b!7962666 () Bool)

(assert (=> b!7962666 (= e!4695726 tp_is_empty!53535)))

(declare-fun b!7962668 () Bool)

(declare-fun tp!2372522 () Bool)

(assert (=> b!7962668 (= e!4695726 tp!2372522)))

(declare-fun b!7962667 () Bool)

(declare-fun tp!2372523 () Bool)

(declare-fun tp!2372525 () Bool)

(assert (=> b!7962667 (= e!4695726 (and tp!2372523 tp!2372525))))

(declare-fun b!7962669 () Bool)

(declare-fun tp!2372526 () Bool)

(declare-fun tp!2372524 () Bool)

(assert (=> b!7962669 (= e!4695726 (and tp!2372526 tp!2372524))))

(assert (= (and b!7961942 (is-ElementMatch!21496 (regOne!43505 (regOne!43504 baseR!116)))) b!7962666))

(assert (= (and b!7961942 (is-Concat!30495 (regOne!43505 (regOne!43504 baseR!116)))) b!7962667))

(assert (= (and b!7961942 (is-Star!21496 (regOne!43505 (regOne!43504 baseR!116)))) b!7962668))

(assert (= (and b!7961942 (is-Union!21496 (regOne!43505 (regOne!43504 baseR!116)))) b!7962669))

(declare-fun e!4695727 () Bool)

(assert (=> b!7961942 (= tp!2372294 e!4695727)))

(declare-fun b!7962670 () Bool)

(assert (=> b!7962670 (= e!4695727 tp_is_empty!53535)))

(declare-fun b!7962672 () Bool)

(declare-fun tp!2372527 () Bool)

(assert (=> b!7962672 (= e!4695727 tp!2372527)))

(declare-fun b!7962671 () Bool)

(declare-fun tp!2372528 () Bool)

(declare-fun tp!2372530 () Bool)

(assert (=> b!7962671 (= e!4695727 (and tp!2372528 tp!2372530))))

(declare-fun b!7962673 () Bool)

(declare-fun tp!2372531 () Bool)

(declare-fun tp!2372529 () Bool)

(assert (=> b!7962673 (= e!4695727 (and tp!2372531 tp!2372529))))

(assert (= (and b!7961942 (is-ElementMatch!21496 (regTwo!43505 (regOne!43504 baseR!116)))) b!7962670))

(assert (= (and b!7961942 (is-Concat!30495 (regTwo!43505 (regOne!43504 baseR!116)))) b!7962671))

(assert (= (and b!7961942 (is-Star!21496 (regTwo!43505 (regOne!43504 baseR!116)))) b!7962672))

(assert (= (and b!7961942 (is-Union!21496 (regTwo!43505 (regOne!43504 baseR!116)))) b!7962673))

(declare-fun e!4695728 () Bool)

(assert (=> b!7961959 (= tp!2372317 e!4695728)))

(declare-fun b!7962674 () Bool)

(assert (=> b!7962674 (= e!4695728 tp_is_empty!53535)))

(declare-fun b!7962676 () Bool)

(declare-fun tp!2372532 () Bool)

(assert (=> b!7962676 (= e!4695728 tp!2372532)))

(declare-fun b!7962675 () Bool)

(declare-fun tp!2372533 () Bool)

(declare-fun tp!2372535 () Bool)

(assert (=> b!7962675 (= e!4695728 (and tp!2372533 tp!2372535))))

(declare-fun b!7962677 () Bool)

(declare-fun tp!2372536 () Bool)

(declare-fun tp!2372534 () Bool)

(assert (=> b!7962677 (= e!4695728 (and tp!2372536 tp!2372534))))

(assert (= (and b!7961959 (is-ElementMatch!21496 (regOne!43505 (regTwo!43504 r!24602)))) b!7962674))

(assert (= (and b!7961959 (is-Concat!30495 (regOne!43505 (regTwo!43504 r!24602)))) b!7962675))

(assert (= (and b!7961959 (is-Star!21496 (regOne!43505 (regTwo!43504 r!24602)))) b!7962676))

(assert (= (and b!7961959 (is-Union!21496 (regOne!43505 (regTwo!43504 r!24602)))) b!7962677))

(declare-fun e!4695729 () Bool)

(assert (=> b!7961959 (= tp!2372315 e!4695729)))

(declare-fun b!7962678 () Bool)

(assert (=> b!7962678 (= e!4695729 tp_is_empty!53535)))

(declare-fun b!7962680 () Bool)

(declare-fun tp!2372537 () Bool)

(assert (=> b!7962680 (= e!4695729 tp!2372537)))

(declare-fun b!7962679 () Bool)

(declare-fun tp!2372538 () Bool)

(declare-fun tp!2372540 () Bool)

(assert (=> b!7962679 (= e!4695729 (and tp!2372538 tp!2372540))))

(declare-fun b!7962681 () Bool)

(declare-fun tp!2372541 () Bool)

(declare-fun tp!2372539 () Bool)

(assert (=> b!7962681 (= e!4695729 (and tp!2372541 tp!2372539))))

(assert (= (and b!7961959 (is-ElementMatch!21496 (regTwo!43505 (regTwo!43504 r!24602)))) b!7962678))

(assert (= (and b!7961959 (is-Concat!30495 (regTwo!43505 (regTwo!43504 r!24602)))) b!7962679))

(assert (= (and b!7961959 (is-Star!21496 (regTwo!43505 (regTwo!43504 r!24602)))) b!7962680))

(assert (= (and b!7961959 (is-Union!21496 (regTwo!43505 (regTwo!43504 r!24602)))) b!7962681))

(declare-fun e!4695730 () Bool)

(assert (=> b!7961958 (= tp!2372313 e!4695730)))

(declare-fun b!7962682 () Bool)

(assert (=> b!7962682 (= e!4695730 tp_is_empty!53535)))

(declare-fun b!7962684 () Bool)

(declare-fun tp!2372542 () Bool)

(assert (=> b!7962684 (= e!4695730 tp!2372542)))

(declare-fun b!7962683 () Bool)

(declare-fun tp!2372543 () Bool)

(declare-fun tp!2372545 () Bool)

(assert (=> b!7962683 (= e!4695730 (and tp!2372543 tp!2372545))))

(declare-fun b!7962685 () Bool)

(declare-fun tp!2372546 () Bool)

(declare-fun tp!2372544 () Bool)

(assert (=> b!7962685 (= e!4695730 (and tp!2372546 tp!2372544))))

(assert (= (and b!7961958 (is-ElementMatch!21496 (reg!21825 (regTwo!43504 r!24602)))) b!7962682))

(assert (= (and b!7961958 (is-Concat!30495 (reg!21825 (regTwo!43504 r!24602)))) b!7962683))

(assert (= (and b!7961958 (is-Star!21496 (reg!21825 (regTwo!43504 r!24602)))) b!7962684))

(assert (= (and b!7961958 (is-Union!21496 (reg!21825 (regTwo!43504 r!24602)))) b!7962685))

(declare-fun e!4695731 () Bool)

(assert (=> b!7961950 (= tp!2372306 e!4695731)))

(declare-fun b!7962686 () Bool)

(assert (=> b!7962686 (= e!4695731 tp_is_empty!53535)))

(declare-fun b!7962688 () Bool)

(declare-fun tp!2372547 () Bool)

(assert (=> b!7962688 (= e!4695731 tp!2372547)))

(declare-fun b!7962687 () Bool)

(declare-fun tp!2372548 () Bool)

(declare-fun tp!2372550 () Bool)

(assert (=> b!7962687 (= e!4695731 (and tp!2372548 tp!2372550))))

(declare-fun b!7962689 () Bool)

(declare-fun tp!2372551 () Bool)

(declare-fun tp!2372549 () Bool)

(assert (=> b!7962689 (= e!4695731 (and tp!2372551 tp!2372549))))

(assert (= (and b!7961950 (is-ElementMatch!21496 (regOne!43505 (reg!21825 r!24602)))) b!7962686))

(assert (= (and b!7961950 (is-Concat!30495 (regOne!43505 (reg!21825 r!24602)))) b!7962687))

(assert (= (and b!7961950 (is-Star!21496 (regOne!43505 (reg!21825 r!24602)))) b!7962688))

(assert (= (and b!7961950 (is-Union!21496 (regOne!43505 (reg!21825 r!24602)))) b!7962689))

(declare-fun e!4695732 () Bool)

(assert (=> b!7961950 (= tp!2372304 e!4695732)))

(declare-fun b!7962690 () Bool)

(assert (=> b!7962690 (= e!4695732 tp_is_empty!53535)))

(declare-fun b!7962692 () Bool)

(declare-fun tp!2372552 () Bool)

(assert (=> b!7962692 (= e!4695732 tp!2372552)))

(declare-fun b!7962691 () Bool)

(declare-fun tp!2372553 () Bool)

(declare-fun tp!2372555 () Bool)

(assert (=> b!7962691 (= e!4695732 (and tp!2372553 tp!2372555))))

(declare-fun b!7962693 () Bool)

(declare-fun tp!2372556 () Bool)

(declare-fun tp!2372554 () Bool)

(assert (=> b!7962693 (= e!4695732 (and tp!2372556 tp!2372554))))

(assert (= (and b!7961950 (is-ElementMatch!21496 (regTwo!43505 (reg!21825 r!24602)))) b!7962690))

(assert (= (and b!7961950 (is-Concat!30495 (regTwo!43505 (reg!21825 r!24602)))) b!7962691))

(assert (= (and b!7961950 (is-Star!21496 (regTwo!43505 (reg!21825 r!24602)))) b!7962692))

(assert (= (and b!7961950 (is-Union!21496 (regTwo!43505 (reg!21825 r!24602)))) b!7962693))

(declare-fun e!4695733 () Bool)

(assert (=> b!7961941 (= tp!2372292 e!4695733)))

(declare-fun b!7962694 () Bool)

(assert (=> b!7962694 (= e!4695733 tp_is_empty!53535)))

(declare-fun b!7962696 () Bool)

(declare-fun tp!2372557 () Bool)

(assert (=> b!7962696 (= e!4695733 tp!2372557)))

(declare-fun b!7962695 () Bool)

(declare-fun tp!2372558 () Bool)

(declare-fun tp!2372560 () Bool)

(assert (=> b!7962695 (= e!4695733 (and tp!2372558 tp!2372560))))

(declare-fun b!7962697 () Bool)

(declare-fun tp!2372561 () Bool)

(declare-fun tp!2372559 () Bool)

(assert (=> b!7962697 (= e!4695733 (and tp!2372561 tp!2372559))))

(assert (= (and b!7961941 (is-ElementMatch!21496 (reg!21825 (regOne!43504 baseR!116)))) b!7962694))

(assert (= (and b!7961941 (is-Concat!30495 (reg!21825 (regOne!43504 baseR!116)))) b!7962695))

(assert (= (and b!7961941 (is-Star!21496 (reg!21825 (regOne!43504 baseR!116)))) b!7962696))

(assert (= (and b!7961941 (is-Union!21496 (reg!21825 (regOne!43504 baseR!116)))) b!7962697))

(declare-fun e!4695734 () Bool)

(assert (=> b!7961967 (= tp!2372327 e!4695734)))

(declare-fun b!7962698 () Bool)

(assert (=> b!7962698 (= e!4695734 tp_is_empty!53535)))

(declare-fun b!7962700 () Bool)

(declare-fun tp!2372562 () Bool)

(assert (=> b!7962700 (= e!4695734 tp!2372562)))

(declare-fun b!7962699 () Bool)

(declare-fun tp!2372563 () Bool)

(declare-fun tp!2372565 () Bool)

(assert (=> b!7962699 (= e!4695734 (and tp!2372563 tp!2372565))))

(declare-fun b!7962701 () Bool)

(declare-fun tp!2372566 () Bool)

(declare-fun tp!2372564 () Bool)

(assert (=> b!7962701 (= e!4695734 (and tp!2372566 tp!2372564))))

(assert (= (and b!7961967 (is-ElementMatch!21496 (regOne!43505 (regTwo!43505 baseR!116)))) b!7962698))

(assert (= (and b!7961967 (is-Concat!30495 (regOne!43505 (regTwo!43505 baseR!116)))) b!7962699))

(assert (= (and b!7961967 (is-Star!21496 (regOne!43505 (regTwo!43505 baseR!116)))) b!7962700))

(assert (= (and b!7961967 (is-Union!21496 (regOne!43505 (regTwo!43505 baseR!116)))) b!7962701))

(declare-fun e!4695735 () Bool)

(assert (=> b!7961967 (= tp!2372325 e!4695735)))

(declare-fun b!7962702 () Bool)

(assert (=> b!7962702 (= e!4695735 tp_is_empty!53535)))

(declare-fun b!7962704 () Bool)

(declare-fun tp!2372567 () Bool)

(assert (=> b!7962704 (= e!4695735 tp!2372567)))

(declare-fun b!7962703 () Bool)

(declare-fun tp!2372568 () Bool)

(declare-fun tp!2372570 () Bool)

(assert (=> b!7962703 (= e!4695735 (and tp!2372568 tp!2372570))))

(declare-fun b!7962705 () Bool)

(declare-fun tp!2372571 () Bool)

(declare-fun tp!2372569 () Bool)

(assert (=> b!7962705 (= e!4695735 (and tp!2372571 tp!2372569))))

(assert (= (and b!7961967 (is-ElementMatch!21496 (regTwo!43505 (regTwo!43505 baseR!116)))) b!7962702))

(assert (= (and b!7961967 (is-Concat!30495 (regTwo!43505 (regTwo!43505 baseR!116)))) b!7962703))

(assert (= (and b!7961967 (is-Star!21496 (regTwo!43505 (regTwo!43505 baseR!116)))) b!7962704))

(assert (= (and b!7961967 (is-Union!21496 (regTwo!43505 (regTwo!43505 baseR!116)))) b!7962705))

(declare-fun e!4695736 () Bool)

(assert (=> b!7961940 (= tp!2372293 e!4695736)))

(declare-fun b!7962706 () Bool)

(assert (=> b!7962706 (= e!4695736 tp_is_empty!53535)))

(declare-fun b!7962708 () Bool)

(declare-fun tp!2372572 () Bool)

(assert (=> b!7962708 (= e!4695736 tp!2372572)))

(declare-fun b!7962707 () Bool)

(declare-fun tp!2372573 () Bool)

(declare-fun tp!2372575 () Bool)

(assert (=> b!7962707 (= e!4695736 (and tp!2372573 tp!2372575))))

(declare-fun b!7962709 () Bool)

(declare-fun tp!2372576 () Bool)

(declare-fun tp!2372574 () Bool)

(assert (=> b!7962709 (= e!4695736 (and tp!2372576 tp!2372574))))

(assert (= (and b!7961940 (is-ElementMatch!21496 (regOne!43504 (regOne!43504 baseR!116)))) b!7962706))

(assert (= (and b!7961940 (is-Concat!30495 (regOne!43504 (regOne!43504 baseR!116)))) b!7962707))

(assert (= (and b!7961940 (is-Star!21496 (regOne!43504 (regOne!43504 baseR!116)))) b!7962708))

(assert (= (and b!7961940 (is-Union!21496 (regOne!43504 (regOne!43504 baseR!116)))) b!7962709))

(declare-fun e!4695737 () Bool)

(assert (=> b!7961940 (= tp!2372295 e!4695737)))

(declare-fun b!7962710 () Bool)

(assert (=> b!7962710 (= e!4695737 tp_is_empty!53535)))

(declare-fun b!7962712 () Bool)

(declare-fun tp!2372577 () Bool)

(assert (=> b!7962712 (= e!4695737 tp!2372577)))

(declare-fun b!7962711 () Bool)

(declare-fun tp!2372578 () Bool)

(declare-fun tp!2372580 () Bool)

(assert (=> b!7962711 (= e!4695737 (and tp!2372578 tp!2372580))))

(declare-fun b!7962713 () Bool)

(declare-fun tp!2372581 () Bool)

(declare-fun tp!2372579 () Bool)

(assert (=> b!7962713 (= e!4695737 (and tp!2372581 tp!2372579))))

(assert (= (and b!7961940 (is-ElementMatch!21496 (regTwo!43504 (regOne!43504 baseR!116)))) b!7962710))

(assert (= (and b!7961940 (is-Concat!30495 (regTwo!43504 (regOne!43504 baseR!116)))) b!7962711))

(assert (= (and b!7961940 (is-Star!21496 (regTwo!43504 (regOne!43504 baseR!116)))) b!7962712))

(assert (= (and b!7961940 (is-Union!21496 (regTwo!43504 (regOne!43504 baseR!116)))) b!7962713))

(declare-fun e!4695738 () Bool)

(assert (=> b!7961966 (= tp!2372323 e!4695738)))

(declare-fun b!7962714 () Bool)

(assert (=> b!7962714 (= e!4695738 tp_is_empty!53535)))

(declare-fun b!7962716 () Bool)

(declare-fun tp!2372582 () Bool)

(assert (=> b!7962716 (= e!4695738 tp!2372582)))

(declare-fun b!7962715 () Bool)

(declare-fun tp!2372583 () Bool)

(declare-fun tp!2372585 () Bool)

(assert (=> b!7962715 (= e!4695738 (and tp!2372583 tp!2372585))))

(declare-fun b!7962717 () Bool)

(declare-fun tp!2372586 () Bool)

(declare-fun tp!2372584 () Bool)

(assert (=> b!7962717 (= e!4695738 (and tp!2372586 tp!2372584))))

(assert (= (and b!7961966 (is-ElementMatch!21496 (reg!21825 (regTwo!43505 baseR!116)))) b!7962714))

(assert (= (and b!7961966 (is-Concat!30495 (reg!21825 (regTwo!43505 baseR!116)))) b!7962715))

(assert (= (and b!7961966 (is-Star!21496 (reg!21825 (regTwo!43505 baseR!116)))) b!7962716))

(assert (= (and b!7961966 (is-Union!21496 (reg!21825 (regTwo!43505 baseR!116)))) b!7962717))

(declare-fun e!4695739 () Bool)

(assert (=> b!7961957 (= tp!2372314 e!4695739)))

(declare-fun b!7962718 () Bool)

(assert (=> b!7962718 (= e!4695739 tp_is_empty!53535)))

(declare-fun b!7962720 () Bool)

(declare-fun tp!2372587 () Bool)

(assert (=> b!7962720 (= e!4695739 tp!2372587)))

(declare-fun b!7962719 () Bool)

(declare-fun tp!2372588 () Bool)

(declare-fun tp!2372590 () Bool)

(assert (=> b!7962719 (= e!4695739 (and tp!2372588 tp!2372590))))

(declare-fun b!7962721 () Bool)

(declare-fun tp!2372591 () Bool)

(declare-fun tp!2372589 () Bool)

(assert (=> b!7962721 (= e!4695739 (and tp!2372591 tp!2372589))))

(assert (= (and b!7961957 (is-ElementMatch!21496 (regOne!43504 (regTwo!43504 r!24602)))) b!7962718))

(assert (= (and b!7961957 (is-Concat!30495 (regOne!43504 (regTwo!43504 r!24602)))) b!7962719))

(assert (= (and b!7961957 (is-Star!21496 (regOne!43504 (regTwo!43504 r!24602)))) b!7962720))

(assert (= (and b!7961957 (is-Union!21496 (regOne!43504 (regTwo!43504 r!24602)))) b!7962721))

(declare-fun e!4695740 () Bool)

(assert (=> b!7961957 (= tp!2372316 e!4695740)))

(declare-fun b!7962722 () Bool)

(assert (=> b!7962722 (= e!4695740 tp_is_empty!53535)))

(declare-fun b!7962724 () Bool)

(declare-fun tp!2372592 () Bool)

(assert (=> b!7962724 (= e!4695740 tp!2372592)))

(declare-fun b!7962723 () Bool)

(declare-fun tp!2372593 () Bool)

(declare-fun tp!2372595 () Bool)

(assert (=> b!7962723 (= e!4695740 (and tp!2372593 tp!2372595))))

(declare-fun b!7962725 () Bool)

(declare-fun tp!2372596 () Bool)

(declare-fun tp!2372594 () Bool)

(assert (=> b!7962725 (= e!4695740 (and tp!2372596 tp!2372594))))

(assert (= (and b!7961957 (is-ElementMatch!21496 (regTwo!43504 (regTwo!43504 r!24602)))) b!7962722))

(assert (= (and b!7961957 (is-Concat!30495 (regTwo!43504 (regTwo!43504 r!24602)))) b!7962723))

(assert (= (and b!7961957 (is-Star!21496 (regTwo!43504 (regTwo!43504 r!24602)))) b!7962724))

(assert (= (and b!7961957 (is-Union!21496 (regTwo!43504 (regTwo!43504 r!24602)))) b!7962725))

(declare-fun b!7962726 () Bool)

(declare-fun e!4695741 () Bool)

(declare-fun tp!2372597 () Bool)

(assert (=> b!7962726 (= e!4695741 (and tp_is_empty!53535 tp!2372597))))

(assert (=> b!7961951 (= tp!2372307 e!4695741)))

(assert (= (and b!7961951 (is-Cons!74601 (t!390468 (t!390468 input!7927)))) b!7962726))

(declare-fun e!4695742 () Bool)

(assert (=> b!7961977 (= tp!2372339 e!4695742)))

(declare-fun b!7962727 () Bool)

(assert (=> b!7962727 (= e!4695742 tp_is_empty!53535)))

(declare-fun b!7962729 () Bool)

(declare-fun tp!2372598 () Bool)

(assert (=> b!7962729 (= e!4695742 tp!2372598)))

(declare-fun b!7962728 () Bool)

(declare-fun tp!2372599 () Bool)

(declare-fun tp!2372601 () Bool)

(assert (=> b!7962728 (= e!4695742 (and tp!2372599 tp!2372601))))

(declare-fun b!7962730 () Bool)

(declare-fun tp!2372602 () Bool)

(declare-fun tp!2372600 () Bool)

(assert (=> b!7962730 (= e!4695742 (and tp!2372602 tp!2372600))))

(assert (= (and b!7961977 (is-ElementMatch!21496 (regOne!43504 (reg!21825 baseR!116)))) b!7962727))

(assert (= (and b!7961977 (is-Concat!30495 (regOne!43504 (reg!21825 baseR!116)))) b!7962728))

(assert (= (and b!7961977 (is-Star!21496 (regOne!43504 (reg!21825 baseR!116)))) b!7962729))

(assert (= (and b!7961977 (is-Union!21496 (regOne!43504 (reg!21825 baseR!116)))) b!7962730))

(declare-fun e!4695743 () Bool)

(assert (=> b!7961977 (= tp!2372341 e!4695743)))

(declare-fun b!7962731 () Bool)

(assert (=> b!7962731 (= e!4695743 tp_is_empty!53535)))

(declare-fun b!7962733 () Bool)

(declare-fun tp!2372603 () Bool)

(assert (=> b!7962733 (= e!4695743 tp!2372603)))

(declare-fun b!7962732 () Bool)

(declare-fun tp!2372604 () Bool)

(declare-fun tp!2372606 () Bool)

(assert (=> b!7962732 (= e!4695743 (and tp!2372604 tp!2372606))))

(declare-fun b!7962734 () Bool)

(declare-fun tp!2372607 () Bool)

(declare-fun tp!2372605 () Bool)

(assert (=> b!7962734 (= e!4695743 (and tp!2372607 tp!2372605))))

(assert (= (and b!7961977 (is-ElementMatch!21496 (regTwo!43504 (reg!21825 baseR!116)))) b!7962731))

(assert (= (and b!7961977 (is-Concat!30495 (regTwo!43504 (reg!21825 baseR!116)))) b!7962732))

(assert (= (and b!7961977 (is-Star!21496 (regTwo!43504 (reg!21825 baseR!116)))) b!7962733))

(assert (= (and b!7961977 (is-Union!21496 (regTwo!43504 (reg!21825 baseR!116)))) b!7962734))

(declare-fun e!4695744 () Bool)

(assert (=> b!7961944 (= tp!2372298 e!4695744)))

(declare-fun b!7962735 () Bool)

(assert (=> b!7962735 (= e!4695744 tp_is_empty!53535)))

(declare-fun b!7962737 () Bool)

(declare-fun tp!2372608 () Bool)

(assert (=> b!7962737 (= e!4695744 tp!2372608)))

(declare-fun b!7962736 () Bool)

(declare-fun tp!2372609 () Bool)

(declare-fun tp!2372611 () Bool)

(assert (=> b!7962736 (= e!4695744 (and tp!2372609 tp!2372611))))

(declare-fun b!7962738 () Bool)

(declare-fun tp!2372612 () Bool)

(declare-fun tp!2372610 () Bool)

(assert (=> b!7962738 (= e!4695744 (and tp!2372612 tp!2372610))))

(assert (= (and b!7961944 (is-ElementMatch!21496 (regOne!43504 (regTwo!43504 baseR!116)))) b!7962735))

(assert (= (and b!7961944 (is-Concat!30495 (regOne!43504 (regTwo!43504 baseR!116)))) b!7962736))

(assert (= (and b!7961944 (is-Star!21496 (regOne!43504 (regTwo!43504 baseR!116)))) b!7962737))

(assert (= (and b!7961944 (is-Union!21496 (regOne!43504 (regTwo!43504 baseR!116)))) b!7962738))

(declare-fun e!4695745 () Bool)

(assert (=> b!7961944 (= tp!2372300 e!4695745)))

(declare-fun b!7962739 () Bool)

(assert (=> b!7962739 (= e!4695745 tp_is_empty!53535)))

(declare-fun b!7962741 () Bool)

(declare-fun tp!2372613 () Bool)

(assert (=> b!7962741 (= e!4695745 tp!2372613)))

(declare-fun b!7962740 () Bool)

(declare-fun tp!2372614 () Bool)

(declare-fun tp!2372616 () Bool)

(assert (=> b!7962740 (= e!4695745 (and tp!2372614 tp!2372616))))

(declare-fun b!7962742 () Bool)

(declare-fun tp!2372617 () Bool)

(declare-fun tp!2372615 () Bool)

(assert (=> b!7962742 (= e!4695745 (and tp!2372617 tp!2372615))))

(assert (= (and b!7961944 (is-ElementMatch!21496 (regTwo!43504 (regTwo!43504 baseR!116)))) b!7962739))

(assert (= (and b!7961944 (is-Concat!30495 (regTwo!43504 (regTwo!43504 baseR!116)))) b!7962740))

(assert (= (and b!7961944 (is-Star!21496 (regTwo!43504 (regTwo!43504 baseR!116)))) b!7962741))

(assert (= (and b!7961944 (is-Union!21496 (regTwo!43504 (regTwo!43504 baseR!116)))) b!7962742))

(declare-fun e!4695746 () Bool)

(assert (=> b!7961970 (= tp!2372328 e!4695746)))

(declare-fun b!7962743 () Bool)

(assert (=> b!7962743 (= e!4695746 tp_is_empty!53535)))

(declare-fun b!7962745 () Bool)

(declare-fun tp!2372618 () Bool)

(assert (=> b!7962745 (= e!4695746 tp!2372618)))

(declare-fun b!7962744 () Bool)

(declare-fun tp!2372619 () Bool)

(declare-fun tp!2372621 () Bool)

(assert (=> b!7962744 (= e!4695746 (and tp!2372619 tp!2372621))))

(declare-fun b!7962746 () Bool)

(declare-fun tp!2372622 () Bool)

(declare-fun tp!2372620 () Bool)

(assert (=> b!7962746 (= e!4695746 (and tp!2372622 tp!2372620))))

(assert (= (and b!7961970 (is-ElementMatch!21496 (reg!21825 (regOne!43505 r!24602)))) b!7962743))

(assert (= (and b!7961970 (is-Concat!30495 (reg!21825 (regOne!43505 r!24602)))) b!7962744))

(assert (= (and b!7961970 (is-Star!21496 (reg!21825 (regOne!43505 r!24602)))) b!7962745))

(assert (= (and b!7961970 (is-Union!21496 (reg!21825 (regOne!43505 r!24602)))) b!7962746))

(declare-fun e!4695747 () Bool)

(assert (=> b!7961961 (= tp!2372319 e!4695747)))

(declare-fun b!7962747 () Bool)

(assert (=> b!7962747 (= e!4695747 tp_is_empty!53535)))

(declare-fun b!7962749 () Bool)

(declare-fun tp!2372623 () Bool)

(assert (=> b!7962749 (= e!4695747 tp!2372623)))

(declare-fun b!7962748 () Bool)

(declare-fun tp!2372624 () Bool)

(declare-fun tp!2372626 () Bool)

(assert (=> b!7962748 (= e!4695747 (and tp!2372624 tp!2372626))))

(declare-fun b!7962750 () Bool)

(declare-fun tp!2372627 () Bool)

(declare-fun tp!2372625 () Bool)

(assert (=> b!7962750 (= e!4695747 (and tp!2372627 tp!2372625))))

(assert (= (and b!7961961 (is-ElementMatch!21496 (regOne!43504 (regOne!43505 baseR!116)))) b!7962747))

(assert (= (and b!7961961 (is-Concat!30495 (regOne!43504 (regOne!43505 baseR!116)))) b!7962748))

(assert (= (and b!7961961 (is-Star!21496 (regOne!43504 (regOne!43505 baseR!116)))) b!7962749))

(assert (= (and b!7961961 (is-Union!21496 (regOne!43504 (regOne!43505 baseR!116)))) b!7962750))

(declare-fun e!4695748 () Bool)

(assert (=> b!7961961 (= tp!2372321 e!4695748)))

(declare-fun b!7962751 () Bool)

(assert (=> b!7962751 (= e!4695748 tp_is_empty!53535)))

(declare-fun b!7962753 () Bool)

(declare-fun tp!2372628 () Bool)

(assert (=> b!7962753 (= e!4695748 tp!2372628)))

(declare-fun b!7962752 () Bool)

(declare-fun tp!2372629 () Bool)

(declare-fun tp!2372631 () Bool)

(assert (=> b!7962752 (= e!4695748 (and tp!2372629 tp!2372631))))

(declare-fun b!7962754 () Bool)

(declare-fun tp!2372632 () Bool)

(declare-fun tp!2372630 () Bool)

(assert (=> b!7962754 (= e!4695748 (and tp!2372632 tp!2372630))))

(assert (= (and b!7961961 (is-ElementMatch!21496 (regTwo!43504 (regOne!43505 baseR!116)))) b!7962751))

(assert (= (and b!7961961 (is-Concat!30495 (regTwo!43504 (regOne!43505 baseR!116)))) b!7962752))

(assert (= (and b!7961961 (is-Star!21496 (regTwo!43504 (regOne!43505 baseR!116)))) b!7962753))

(assert (= (and b!7961961 (is-Union!21496 (regTwo!43504 (regOne!43505 baseR!116)))) b!7962754))

(declare-fun e!4695749 () Bool)

(assert (=> b!7961979 (= tp!2372342 e!4695749)))

(declare-fun b!7962755 () Bool)

(assert (=> b!7962755 (= e!4695749 tp_is_empty!53535)))

(declare-fun b!7962757 () Bool)

(declare-fun tp!2372633 () Bool)

(assert (=> b!7962757 (= e!4695749 tp!2372633)))

(declare-fun b!7962756 () Bool)

(declare-fun tp!2372634 () Bool)

(declare-fun tp!2372636 () Bool)

(assert (=> b!7962756 (= e!4695749 (and tp!2372634 tp!2372636))))

(declare-fun b!7962758 () Bool)

(declare-fun tp!2372637 () Bool)

(declare-fun tp!2372635 () Bool)

(assert (=> b!7962758 (= e!4695749 (and tp!2372637 tp!2372635))))

(assert (= (and b!7961979 (is-ElementMatch!21496 (regOne!43505 (reg!21825 baseR!116)))) b!7962755))

(assert (= (and b!7961979 (is-Concat!30495 (regOne!43505 (reg!21825 baseR!116)))) b!7962756))

(assert (= (and b!7961979 (is-Star!21496 (regOne!43505 (reg!21825 baseR!116)))) b!7962757))

(assert (= (and b!7961979 (is-Union!21496 (regOne!43505 (reg!21825 baseR!116)))) b!7962758))

(declare-fun e!4695750 () Bool)

(assert (=> b!7961979 (= tp!2372340 e!4695750)))

(declare-fun b!7962759 () Bool)

(assert (=> b!7962759 (= e!4695750 tp_is_empty!53535)))

(declare-fun b!7962761 () Bool)

(declare-fun tp!2372638 () Bool)

(assert (=> b!7962761 (= e!4695750 tp!2372638)))

(declare-fun b!7962760 () Bool)

(declare-fun tp!2372639 () Bool)

(declare-fun tp!2372641 () Bool)

(assert (=> b!7962760 (= e!4695750 (and tp!2372639 tp!2372641))))

(declare-fun b!7962762 () Bool)

(declare-fun tp!2372642 () Bool)

(declare-fun tp!2372640 () Bool)

(assert (=> b!7962762 (= e!4695750 (and tp!2372642 tp!2372640))))

(assert (= (and b!7961979 (is-ElementMatch!21496 (regTwo!43505 (reg!21825 baseR!116)))) b!7962759))

(assert (= (and b!7961979 (is-Concat!30495 (regTwo!43505 (reg!21825 baseR!116)))) b!7962760))

(assert (= (and b!7961979 (is-Star!21496 (regTwo!43505 (reg!21825 baseR!116)))) b!7962761))

(assert (= (and b!7961979 (is-Union!21496 (regTwo!43505 (reg!21825 baseR!116)))) b!7962762))

(declare-fun b!7962763 () Bool)

(declare-fun e!4695751 () Bool)

(declare-fun tp!2372643 () Bool)

(assert (=> b!7962763 (= e!4695751 (and tp_is_empty!53535 tp!2372643))))

(assert (=> b!7961928 (= tp!2372281 e!4695751)))

(assert (= (and b!7961928 (is-Cons!74601 (t!390468 (t!390468 testedP!447)))) b!7962763))

(declare-fun e!4695752 () Bool)

(assert (=> b!7961978 (= tp!2372338 e!4695752)))

(declare-fun b!7962764 () Bool)

(assert (=> b!7962764 (= e!4695752 tp_is_empty!53535)))

(declare-fun b!7962766 () Bool)

(declare-fun tp!2372644 () Bool)

(assert (=> b!7962766 (= e!4695752 tp!2372644)))

(declare-fun b!7962765 () Bool)

(declare-fun tp!2372645 () Bool)

(declare-fun tp!2372647 () Bool)

(assert (=> b!7962765 (= e!4695752 (and tp!2372645 tp!2372647))))

(declare-fun b!7962767 () Bool)

(declare-fun tp!2372648 () Bool)

(declare-fun tp!2372646 () Bool)

(assert (=> b!7962767 (= e!4695752 (and tp!2372648 tp!2372646))))

(assert (= (and b!7961978 (is-ElementMatch!21496 (reg!21825 (reg!21825 baseR!116)))) b!7962764))

(assert (= (and b!7961978 (is-Concat!30495 (reg!21825 (reg!21825 baseR!116)))) b!7962765))

(assert (= (and b!7961978 (is-Star!21496 (reg!21825 (reg!21825 baseR!116)))) b!7962766))

(assert (= (and b!7961978 (is-Union!21496 (reg!21825 (reg!21825 baseR!116)))) b!7962767))

(declare-fun e!4695753 () Bool)

(assert (=> b!7961969 (= tp!2372329 e!4695753)))

(declare-fun b!7962768 () Bool)

(assert (=> b!7962768 (= e!4695753 tp_is_empty!53535)))

(declare-fun b!7962770 () Bool)

(declare-fun tp!2372649 () Bool)

(assert (=> b!7962770 (= e!4695753 tp!2372649)))

(declare-fun b!7962769 () Bool)

(declare-fun tp!2372650 () Bool)

(declare-fun tp!2372652 () Bool)

(assert (=> b!7962769 (= e!4695753 (and tp!2372650 tp!2372652))))

(declare-fun b!7962771 () Bool)

(declare-fun tp!2372653 () Bool)

(declare-fun tp!2372651 () Bool)

(assert (=> b!7962771 (= e!4695753 (and tp!2372653 tp!2372651))))

(assert (= (and b!7961969 (is-ElementMatch!21496 (regOne!43504 (regOne!43505 r!24602)))) b!7962768))

(assert (= (and b!7961969 (is-Concat!30495 (regOne!43504 (regOne!43505 r!24602)))) b!7962769))

(assert (= (and b!7961969 (is-Star!21496 (regOne!43504 (regOne!43505 r!24602)))) b!7962770))

(assert (= (and b!7961969 (is-Union!21496 (regOne!43504 (regOne!43505 r!24602)))) b!7962771))

(declare-fun e!4695754 () Bool)

(assert (=> b!7961969 (= tp!2372331 e!4695754)))

(declare-fun b!7962772 () Bool)

(assert (=> b!7962772 (= e!4695754 tp_is_empty!53535)))

(declare-fun b!7962774 () Bool)

(declare-fun tp!2372654 () Bool)

(assert (=> b!7962774 (= e!4695754 tp!2372654)))

(declare-fun b!7962773 () Bool)

(declare-fun tp!2372655 () Bool)

(declare-fun tp!2372657 () Bool)

(assert (=> b!7962773 (= e!4695754 (and tp!2372655 tp!2372657))))

(declare-fun b!7962775 () Bool)

(declare-fun tp!2372658 () Bool)

(declare-fun tp!2372656 () Bool)

(assert (=> b!7962775 (= e!4695754 (and tp!2372658 tp!2372656))))

(assert (= (and b!7961969 (is-ElementMatch!21496 (regTwo!43504 (regOne!43505 r!24602)))) b!7962772))

(assert (= (and b!7961969 (is-Concat!30495 (regTwo!43504 (regOne!43505 r!24602)))) b!7962773))

(assert (= (and b!7961969 (is-Star!21496 (regTwo!43504 (regOne!43505 r!24602)))) b!7962774))

(assert (= (and b!7961969 (is-Union!21496 (regTwo!43504 (regOne!43505 r!24602)))) b!7962775))

(push 1)

(assert (not d!2378481))

(assert (not bm!738434))

(assert (not d!2378405))

(assert (not b!7962649))

(assert (not b!7962233))

(assert (not b!7962620))

(assert (not bm!738415))

(assert (not b!7962699))

(assert (not b!7962655))

(assert (not b!7962280))

(assert (not b!7962757))

(assert (not d!2378333))

(assert (not bm!738443))

(assert (not b!7962470))

(assert (not b!7962599))

(assert (not d!2378331))

(assert (not b!7962571))

(assert (not b!7962211))

(assert (not b!7962569))

(assert (not b!7962704))

(assert (not bm!738442))

(assert (not b!7962540))

(assert (not bm!738438))

(assert (not b!7962726))

(assert (not d!2378427))

(assert (not b!7962669))

(assert (not b!7962312))

(assert (not b!7962683))

(assert (not b!7962178))

(assert (not b!7962420))

(assert (not b!7962568))

(assert (not b!7962723))

(assert (not b!7962696))

(assert (not b!7962741))

(assert (not b!7962713))

(assert (not d!2378399))

(assert (not d!2378393))

(assert (not b!7962596))

(assert (not d!2378325))

(assert (not b!7962667))

(assert (not d!2378511))

(assert (not b!7962663))

(assert (not b!7962643))

(assert (not b!7962421))

(assert (not b!7962243))

(assert (not d!2378473))

(assert (not b!7962285))

(assert (not b!7962637))

(assert (not b!7962773))

(assert (not d!2378351))

(assert (not b!7962701))

(assert (not b!7962697))

(assert (not b!7962554))

(assert (not b!7962374))

(assert (not bm!738433))

(assert (not d!2378359))

(assert (not bm!738458))

(assert (not b!7962427))

(assert (not b!7962753))

(assert (not bm!738474))

(assert (not b!7962676))

(assert (not b!7962276))

(assert (not d!2378367))

(assert (not b!7962681))

(assert (not b!7962652))

(assert (not b!7962664))

(assert (not b!7962703))

(assert (not d!2378395))

(assert (not b!7962691))

(assert (not b!7962733))

(assert (not b!7962286))

(assert (not b!7962628))

(assert (not b!7962572))

(assert (not b!7962612))

(assert (not b!7962608))

(assert (not b!7962588))

(assert (not b!7962763))

(assert (not b!7962188))

(assert (not bm!738412))

(assert (not b!7962737))

(assert (not b!7962433))

(assert (not b!7962362))

(assert (not b!7962203))

(assert (not b!7962266))

(assert (not b!7962771))

(assert (not b!7962306))

(assert (not b!7962592))

(assert (not d!2378433))

(assert (not b!7962378))

(assert (not b!7962720))

(assert (not b!7962375))

(assert (not b!7962382))

(assert (not b!7962742))

(assert (not b!7962422))

(assert (not b!7962631))

(assert (not bm!738424))

(assert (not b!7962275))

(assert (not b!7962672))

(assert (not d!2378419))

(assert (not b!7962611))

(assert (not b!7962165))

(assert (not b!7962589))

(assert (not b!7962644))

(assert (not d!2378317))

(assert (not b!7962581))

(assert (not b!7962225))

(assert (not d!2378421))

(assert (not b!7962660))

(assert (not b!7962343))

(assert (not b!7962677))

(assert (not d!2378381))

(assert (not b!7962585))

(assert (not b!7962240))

(assert (not d!2378301))

(assert (not bm!738448))

(assert (not bm!738429))

(assert (not b!7962705))

(assert (not b!7962348))

(assert (not b!7962736))

(assert (not bm!738423))

(assert (not d!2378467))

(assert (not b!7962468))

(assert (not b!7962219))

(assert (not b!7962625))

(assert (not b!7962432))

(assert (not bm!738437))

(assert (not b!7962587))

(assert (not b!7962734))

(assert (not b!7962679))

(assert (not b!7962393))

(assert (not b!7962246))

(assert (not bm!738422))

(assert (not b!7962632))

(assert (not b!7962207))

(assert (not d!2378373))

(assert (not b!7962648))

(assert (not b!7962719))

(assert (not b!7962729))

(assert (not b!7962346))

(assert (not bm!738447))

(assert (not bm!738428))

(assert (not d!2378313))

(assert (not d!2378383))

(assert (not bm!738462))

(assert (not b!7962730))

(assert (not bm!738454))

(assert (not b!7962232))

(assert (not b!7962752))

(assert (not b!7962579))

(assert (not b!7962668))

(assert (not bm!738441))

(assert (not b!7962601))

(assert (not b!7962617))

(assert (not b!7962272))

(assert (not b!7962762))

(assert (not b!7962542))

(assert (not bm!738430))

(assert (not b!7962366))

(assert (not b!7962711))

(assert (not b!7962202))

(assert (not b!7962565))

(assert (not b!7962322))

(assert (not d!2378327))

(assert (not b!7962695))

(assert (not b!7962537))

(assert (not d!2378479))

(assert (not b!7962724))

(assert (not b!7962454))

(assert tp_is_empty!53535)

(assert (not b!7962373))

(assert (not b!7962766))

(assert (not b!7962659))

(assert (not b!7962446))

(assert (not d!2378291))

(assert (not b!7962721))

(assert (not d!2378483))

(assert (not b!7962250))

(assert (not b!7962278))

(assert (not bm!738427))

(assert (not b!7962394))

(assert (not b!7962204))

(assert (not b!7962216))

(assert (not b!7962656))

(assert (not b!7962651))

(assert (not b!7962377))

(assert (not b!7962469))

(assert (not b!7962740))

(assert (not bm!738445))

(assert (not b!7962580))

(assert (not b!7962748))

(assert (not b!7962738))

(assert (not d!2378437))

(assert (not bm!738476))

(assert (not b!7962593))

(assert (not b!7962675))

(assert (not b!7962689))

(assert (not d!2378357))

(assert (not b!7962624))

(assert (not bm!738421))

(assert (not b!7962728))

(assert (not b!7962765))

(assert (not b!7962770))

(assert (not bm!738436))

(assert (not bm!738466))

(assert (not b!7962564))

(assert (not bm!738459))

(assert (not b!7962595))

(assert (not d!2378505))

(assert (not b!7962244))

(assert (not bm!738416))

(assert (not d!2378321))

(assert (not b!7962665))

(assert (not b!7962769))

(assert (not b!7962645))

(assert (not b!7962746))

(assert (not d!2378323))

(assert (not b!7962657))

(assert (not b!7962222))

(assert (not b!7962180))

(assert (not b!7962633))

(assert (not b!7962623))

(assert (not b!7962709))

(assert (not b!7962619))

(assert (not d!2378491))

(assert (not b!7962563))

(assert (not b!7962573))

(assert (not d!2378411))

(assert (not b!7962215))

(assert (not b!7962687))

(assert (not b!7962613))

(assert (not bm!738495))

(assert (not d!2378385))

(assert (not b!7962716))

(assert (not b!7962754))

(assert (not b!7962661))

(assert (not b!7962583))

(assert (not b!7962708))

(assert (not b!7962447))

(assert (not b!7962242))

(assert (not b!7962600))

(assert (not b!7962707))

(assert (not b!7962760))

(assert (not b!7962712))

(assert (not b!7962297))

(assert (not b!7962214))

(assert (not d!2378379))

(assert (not b!7962756))

(assert (not d!2378423))

(assert (not b!7962426))

(assert (not b!7962745))

(assert (not b!7962381))

(assert (not b!7962685))

(assert (not bm!738463))

(assert (not b!7962609))

(assert (not d!2378343))

(assert (not b!7962334))

(assert (not b!7962361))

(assert (not b!7962761))

(assert (not b!7962567))

(assert (not bm!738418))

(assert (not b!7962330))

(assert (not bm!738455))

(assert (not b!7962271))

(assert (not bm!738419))

(assert (not d!2378447))

(assert (not d!2378425))

(assert (not d!2378407))

(assert (not d!2378397))

(assert (not bm!738440))

(assert (not bm!738439))

(assert (not b!7962636))

(assert (not b!7962680))

(assert (not b!7962616))

(assert (not b!7962700))

(assert (not bm!738425))

(assert (not b!7962627))

(assert (not b!7962774))

(assert (not b!7962749))

(assert (not b!7962591))

(assert (not b!7962541))

(assert (not b!7962597))

(assert (not b!7962182))

(assert (not b!7962684))

(assert (not bm!738450))

(assert (not b!7962369))

(assert (not bm!738494))

(assert (not b!7962732))

(assert (not b!7962693))

(assert (not b!7962548))

(assert (not b!7962352))

(assert (not b!7962197))

(assert (not b!7962227))

(assert (not b!7962253))

(assert (not b!7962775))

(assert (not b!7962647))

(assert (not b!7962635))

(assert (not b!7962206))

(assert (not b!7962223))

(assert (not b!7962584))

(assert (not b!7962692))

(assert (not b!7962345))

(assert (not bm!738501))

(assert (not b!7962673))

(assert (not d!2378303))

(assert (not b!7962653))

(assert (not b!7962688))

(assert (not b!7962607))

(assert (not b!7962767))

(assert (not b!7962715))

(assert (not b!7962210))

(assert (not b!7962671))

(assert (not bm!738444))

(assert (not b!7962725))

(assert (not b!7962615))

(assert (not b!7962370))

(assert (not b!7962248))

(assert (not d!2378371))

(assert (not b!7962744))

(assert (not b!7962750))

(assert (not b!7962218))

(assert (not bm!738451))

(assert (not b!7962621))

(assert (not b!7962717))

(assert (not b!7962758))

(assert (not b!7962629))

(assert (not bm!738499))

(assert (not bm!738426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

