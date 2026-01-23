; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749634 () Bool)

(assert start!749634)

(declare-fun b!7942367 () Bool)

(declare-fun e!4686244 () Bool)

(declare-fun tp_is_empty!53367 () Bool)

(declare-fun tp!2361624 () Bool)

(assert (=> b!7942367 (= e!4686244 (and tp_is_empty!53367 tp!2361624))))

(declare-fun b!7942368 () Bool)

(declare-fun res!3150647 () Bool)

(declare-fun e!4686243 () Bool)

(assert (=> b!7942368 (=> (not res!3150647) (not e!4686243))))

(declare-datatypes ((C!43162 0))(
  ( (C!43163 (val!32129 Int)) )
))
(declare-datatypes ((Regex!21412 0))(
  ( (ElementMatch!21412 (c!1459177 C!43162)) (Concat!30411 (regOne!43336 Regex!21412) (regTwo!43336 Regex!21412)) (EmptyExpr!21412) (Star!21412 (reg!21741 Regex!21412)) (EmptyLang!21412) (Union!21412 (regOne!43337 Regex!21412) (regTwo!43337 Regex!21412)) )
))
(declare-fun baseR!116 () Regex!21412)

(declare-fun r!24602 () Regex!21412)

(declare-datatypes ((List!74641 0))(
  ( (Nil!74517) (Cons!74517 (h!80965 C!43162) (t!390384 List!74641)) )
))
(declare-fun testedP!447 () List!74641)

(declare-fun derivative!598 (Regex!21412 List!74641) Regex!21412)

(assert (=> b!7942368 (= res!3150647 (= (derivative!598 baseR!116 testedP!447) r!24602))))

(declare-fun b!7942369 () Bool)

(declare-fun e!4686240 () Bool)

(declare-fun tp!2361625 () Bool)

(declare-fun tp!2361623 () Bool)

(assert (=> b!7942369 (= e!4686240 (and tp!2361625 tp!2361623))))

(declare-fun b!7942370 () Bool)

(declare-fun input!7927 () List!74641)

(declare-fun size!43348 (List!74641) Int)

(assert (=> b!7942370 (= e!4686243 (< (size!43348 input!7927) (size!43348 testedP!447)))))

(declare-fun b!7942371 () Bool)

(declare-fun e!4686242 () Bool)

(declare-fun tp!2361634 () Bool)

(assert (=> b!7942371 (= e!4686242 tp!2361634)))

(declare-fun b!7942372 () Bool)

(declare-fun tp!2361629 () Bool)

(declare-fun tp!2361628 () Bool)

(assert (=> b!7942372 (= e!4686242 (and tp!2361629 tp!2361628))))

(declare-fun b!7942373 () Bool)

(assert (=> b!7942373 (= e!4686242 tp_is_empty!53367)))

(declare-fun b!7942374 () Bool)

(declare-fun e!4686241 () Bool)

(declare-fun tp!2361633 () Bool)

(assert (=> b!7942374 (= e!4686241 (and tp_is_empty!53367 tp!2361633))))

(declare-fun b!7942375 () Bool)

(declare-fun tp!2361626 () Bool)

(assert (=> b!7942375 (= e!4686240 tp!2361626)))

(declare-fun b!7942377 () Bool)

(declare-fun res!3150648 () Bool)

(assert (=> b!7942377 (=> (not res!3150648) (not e!4686243))))

(declare-fun isPrefix!6512 (List!74641 List!74641) Bool)

(assert (=> b!7942377 (= res!3150648 (isPrefix!6512 testedP!447 input!7927))))

(declare-fun b!7942378 () Bool)

(declare-fun tp!2361631 () Bool)

(declare-fun tp!2361630 () Bool)

(assert (=> b!7942378 (= e!4686242 (and tp!2361631 tp!2361630))))

(declare-fun b!7942379 () Bool)

(assert (=> b!7942379 (= e!4686240 tp_is_empty!53367)))

(declare-fun res!3150649 () Bool)

(assert (=> start!749634 (=> (not res!3150649) (not e!4686243))))

(declare-fun validRegex!11716 (Regex!21412) Bool)

(assert (=> start!749634 (= res!3150649 (validRegex!11716 baseR!116))))

(assert (=> start!749634 e!4686243))

(assert (=> start!749634 e!4686242))

(assert (=> start!749634 e!4686244))

(assert (=> start!749634 e!4686241))

(assert (=> start!749634 e!4686240))

(declare-fun b!7942376 () Bool)

(declare-fun tp!2361632 () Bool)

(declare-fun tp!2361627 () Bool)

(assert (=> b!7942376 (= e!4686240 (and tp!2361632 tp!2361627))))

(assert (= (and start!749634 res!3150649) b!7942377))

(assert (= (and b!7942377 res!3150648) b!7942368))

(assert (= (and b!7942368 res!3150647) b!7942370))

(assert (= (and start!749634 (is-ElementMatch!21412 baseR!116)) b!7942373))

(assert (= (and start!749634 (is-Concat!30411 baseR!116)) b!7942372))

(assert (= (and start!749634 (is-Star!21412 baseR!116)) b!7942371))

(assert (= (and start!749634 (is-Union!21412 baseR!116)) b!7942378))

(assert (= (and start!749634 (is-Cons!74517 testedP!447)) b!7942367))

(assert (= (and start!749634 (is-Cons!74517 input!7927)) b!7942374))

(assert (= (and start!749634 (is-ElementMatch!21412 r!24602)) b!7942379))

(assert (= (and start!749634 (is-Concat!30411 r!24602)) b!7942369))

(assert (= (and start!749634 (is-Star!21412 r!24602)) b!7942375))

(assert (= (and start!749634 (is-Union!21412 r!24602)) b!7942376))

(declare-fun m!8330762 () Bool)

(assert (=> b!7942368 m!8330762))

(declare-fun m!8330764 () Bool)

(assert (=> b!7942370 m!8330764))

(declare-fun m!8330766 () Bool)

(assert (=> b!7942370 m!8330766))

(declare-fun m!8330768 () Bool)

(assert (=> b!7942377 m!8330768))

(declare-fun m!8330770 () Bool)

(assert (=> start!749634 m!8330770))

(push 1)

(assert (not b!7942372))

(assert (not b!7942377))

(assert (not b!7942370))

(assert (not b!7942375))

(assert tp_is_empty!53367)

(assert (not b!7942378))

(assert (not b!7942368))

(assert (not b!7942367))

(assert (not b!7942369))

(assert (not b!7942374))

(assert (not b!7942371))

(assert (not b!7942376))

(assert (not start!749634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7942441 () Bool)

(declare-fun e!4686276 () Bool)

(declare-fun e!4686277 () Bool)

(assert (=> b!7942441 (= e!4686276 e!4686277)))

(declare-fun res!3150672 () Bool)

(assert (=> b!7942441 (=> (not res!3150672) (not e!4686277))))

(declare-fun call!736084 () Bool)

(assert (=> b!7942441 (= res!3150672 call!736084)))

(declare-fun b!7942442 () Bool)

(declare-fun e!4686278 () Bool)

(declare-fun call!736083 () Bool)

(assert (=> b!7942442 (= e!4686278 call!736083)))

(declare-fun bm!736078 () Bool)

(declare-fun call!736085 () Bool)

(declare-fun c!1459186 () Bool)

(assert (=> bm!736078 (= call!736085 (validRegex!11716 (ite c!1459186 (regTwo!43337 baseR!116) (regTwo!43336 baseR!116))))))

(declare-fun b!7942443 () Bool)

(assert (=> b!7942443 (= e!4686277 call!736085)))

(declare-fun b!7942444 () Bool)

(declare-fun e!4686280 () Bool)

(assert (=> b!7942444 (= e!4686280 call!736085)))

(declare-fun b!7942445 () Bool)

(declare-fun e!4686282 () Bool)

(declare-fun e!4686279 () Bool)

(assert (=> b!7942445 (= e!4686282 e!4686279)))

(assert (=> b!7942445 (= c!1459186 (is-Union!21412 baseR!116))))

(declare-fun bm!736079 () Bool)

(assert (=> bm!736079 (= call!736084 call!736083)))

(declare-fun b!7942447 () Bool)

(declare-fun res!3150673 () Bool)

(assert (=> b!7942447 (=> (not res!3150673) (not e!4686280))))

(assert (=> b!7942447 (= res!3150673 call!736084)))

(assert (=> b!7942447 (= e!4686279 e!4686280)))

(declare-fun b!7942448 () Bool)

(assert (=> b!7942448 (= e!4686282 e!4686278)))

(declare-fun res!3150670 () Bool)

(declare-fun nullable!9533 (Regex!21412) Bool)

(assert (=> b!7942448 (= res!3150670 (not (nullable!9533 (reg!21741 baseR!116))))))

(assert (=> b!7942448 (=> (not res!3150670) (not e!4686278))))

(declare-fun d!2375183 () Bool)

(declare-fun res!3150669 () Bool)

(declare-fun e!4686281 () Bool)

(assert (=> d!2375183 (=> res!3150669 e!4686281)))

(assert (=> d!2375183 (= res!3150669 (is-ElementMatch!21412 baseR!116))))

(assert (=> d!2375183 (= (validRegex!11716 baseR!116) e!4686281)))

(declare-fun b!7942446 () Bool)

(declare-fun res!3150671 () Bool)

(assert (=> b!7942446 (=> res!3150671 e!4686276)))

(assert (=> b!7942446 (= res!3150671 (not (is-Concat!30411 baseR!116)))))

(assert (=> b!7942446 (= e!4686279 e!4686276)))

(declare-fun b!7942449 () Bool)

(assert (=> b!7942449 (= e!4686281 e!4686282)))

(declare-fun c!1459185 () Bool)

(assert (=> b!7942449 (= c!1459185 (is-Star!21412 baseR!116))))

(declare-fun bm!736080 () Bool)

(assert (=> bm!736080 (= call!736083 (validRegex!11716 (ite c!1459185 (reg!21741 baseR!116) (ite c!1459186 (regOne!43337 baseR!116) (regOne!43336 baseR!116)))))))

(assert (= (and d!2375183 (not res!3150669)) b!7942449))

(assert (= (and b!7942449 c!1459185) b!7942448))

(assert (= (and b!7942449 (not c!1459185)) b!7942445))

(assert (= (and b!7942448 res!3150670) b!7942442))

(assert (= (and b!7942445 c!1459186) b!7942447))

(assert (= (and b!7942445 (not c!1459186)) b!7942446))

(assert (= (and b!7942447 res!3150673) b!7942444))

(assert (= (and b!7942446 (not res!3150671)) b!7942441))

(assert (= (and b!7942441 res!3150672) b!7942443))

(assert (= (or b!7942444 b!7942443) bm!736078))

(assert (= (or b!7942447 b!7942441) bm!736079))

(assert (= (or b!7942442 bm!736079) bm!736080))

(declare-fun m!8330782 () Bool)

(assert (=> bm!736078 m!8330782))

(declare-fun m!8330784 () Bool)

(assert (=> b!7942448 m!8330784))

(declare-fun m!8330786 () Bool)

(assert (=> bm!736080 m!8330786))

(assert (=> start!749634 d!2375183))

(declare-fun d!2375187 () Bool)

(declare-fun lt!2697042 () Regex!21412)

(assert (=> d!2375187 (validRegex!11716 lt!2697042)))

(declare-fun e!4686287 () Regex!21412)

(assert (=> d!2375187 (= lt!2697042 e!4686287)))

(declare-fun c!1459191 () Bool)

(assert (=> d!2375187 (= c!1459191 (is-Cons!74517 testedP!447))))

(assert (=> d!2375187 (validRegex!11716 baseR!116)))

(assert (=> d!2375187 (= (derivative!598 baseR!116 testedP!447) lt!2697042)))

(declare-fun b!7942458 () Bool)

(declare-fun derivativeStep!6470 (Regex!21412 C!43162) Regex!21412)

(assert (=> b!7942458 (= e!4686287 (derivative!598 (derivativeStep!6470 baseR!116 (h!80965 testedP!447)) (t!390384 testedP!447)))))

(declare-fun b!7942459 () Bool)

(assert (=> b!7942459 (= e!4686287 baseR!116)))

(assert (= (and d!2375187 c!1459191) b!7942458))

(assert (= (and d!2375187 (not c!1459191)) b!7942459))

(declare-fun m!8330792 () Bool)

(assert (=> d!2375187 m!8330792))

(assert (=> d!2375187 m!8330770))

(declare-fun m!8330794 () Bool)

(assert (=> b!7942458 m!8330794))

(assert (=> b!7942458 m!8330794))

(declare-fun m!8330796 () Bool)

(assert (=> b!7942458 m!8330796))

(assert (=> b!7942368 d!2375187))

(declare-fun b!7942476 () Bool)

(declare-fun e!4686300 () Bool)

(declare-fun tail!15735 (List!74641) List!74641)

(assert (=> b!7942476 (= e!4686300 (isPrefix!6512 (tail!15735 testedP!447) (tail!15735 input!7927)))))

(declare-fun b!7942474 () Bool)

(declare-fun e!4686302 () Bool)

(assert (=> b!7942474 (= e!4686302 e!4686300)))

(declare-fun res!3150689 () Bool)

(assert (=> b!7942474 (=> (not res!3150689) (not e!4686300))))

(assert (=> b!7942474 (= res!3150689 (not (is-Nil!74517 input!7927)))))

(declare-fun b!7942475 () Bool)

(declare-fun res!3150687 () Bool)

(assert (=> b!7942475 (=> (not res!3150687) (not e!4686300))))

(declare-fun head!16192 (List!74641) C!43162)

(assert (=> b!7942475 (= res!3150687 (= (head!16192 testedP!447) (head!16192 input!7927)))))

(declare-fun b!7942477 () Bool)

(declare-fun e!4686301 () Bool)

(assert (=> b!7942477 (= e!4686301 (>= (size!43348 input!7927) (size!43348 testedP!447)))))

(declare-fun d!2375193 () Bool)

(assert (=> d!2375193 e!4686301))

(declare-fun res!3150688 () Bool)

(assert (=> d!2375193 (=> res!3150688 e!4686301)))

(declare-fun lt!2697045 () Bool)

(assert (=> d!2375193 (= res!3150688 (not lt!2697045))))

(assert (=> d!2375193 (= lt!2697045 e!4686302)))

(declare-fun res!3150685 () Bool)

(assert (=> d!2375193 (=> res!3150685 e!4686302)))

(assert (=> d!2375193 (= res!3150685 (is-Nil!74517 testedP!447))))

(assert (=> d!2375193 (= (isPrefix!6512 testedP!447 input!7927) lt!2697045)))

(assert (= (and d!2375193 (not res!3150685)) b!7942474))

(assert (= (and b!7942474 res!3150689) b!7942475))

(assert (= (and b!7942475 res!3150687) b!7942476))

(assert (= (and d!2375193 (not res!3150688)) b!7942477))

(declare-fun m!8330798 () Bool)

(assert (=> b!7942476 m!8330798))

(declare-fun m!8330800 () Bool)

(assert (=> b!7942476 m!8330800))

(assert (=> b!7942476 m!8330798))

(assert (=> b!7942476 m!8330800))

(declare-fun m!8330802 () Bool)

(assert (=> b!7942476 m!8330802))

(declare-fun m!8330804 () Bool)

(assert (=> b!7942475 m!8330804))

(declare-fun m!8330806 () Bool)

(assert (=> b!7942475 m!8330806))

(assert (=> b!7942477 m!8330764))

(assert (=> b!7942477 m!8330766))

(assert (=> b!7942377 d!2375193))

(declare-fun d!2375195 () Bool)

(declare-fun lt!2697048 () Int)

(assert (=> d!2375195 (>= lt!2697048 0)))

(declare-fun e!4686313 () Int)

(assert (=> d!2375195 (= lt!2697048 e!4686313)))

(declare-fun c!1459198 () Bool)

(assert (=> d!2375195 (= c!1459198 (is-Nil!74517 input!7927))))

(assert (=> d!2375195 (= (size!43348 input!7927) lt!2697048)))

(declare-fun b!7942494 () Bool)

(assert (=> b!7942494 (= e!4686313 0)))

(declare-fun b!7942495 () Bool)

(assert (=> b!7942495 (= e!4686313 (+ 1 (size!43348 (t!390384 input!7927))))))

(assert (= (and d!2375195 c!1459198) b!7942494))

(assert (= (and d!2375195 (not c!1459198)) b!7942495))

(declare-fun m!8330808 () Bool)

(assert (=> b!7942495 m!8330808))

(assert (=> b!7942370 d!2375195))

(declare-fun d!2375197 () Bool)

(declare-fun lt!2697049 () Int)

(assert (=> d!2375197 (>= lt!2697049 0)))

(declare-fun e!4686314 () Int)

(assert (=> d!2375197 (= lt!2697049 e!4686314)))

(declare-fun c!1459199 () Bool)

(assert (=> d!2375197 (= c!1459199 (is-Nil!74517 testedP!447))))

(assert (=> d!2375197 (= (size!43348 testedP!447) lt!2697049)))

(declare-fun b!7942496 () Bool)

(assert (=> b!7942496 (= e!4686314 0)))

(declare-fun b!7942497 () Bool)

(assert (=> b!7942497 (= e!4686314 (+ 1 (size!43348 (t!390384 testedP!447))))))

(assert (= (and d!2375197 c!1459199) b!7942496))

(assert (= (and d!2375197 (not c!1459199)) b!7942497))

(declare-fun m!8330810 () Bool)

(assert (=> b!7942497 m!8330810))

(assert (=> b!7942370 d!2375197))

(declare-fun b!7942508 () Bool)

(declare-fun e!4686317 () Bool)

(assert (=> b!7942508 (= e!4686317 tp_is_empty!53367)))

(declare-fun b!7942511 () Bool)

(declare-fun tp!2361685 () Bool)

(declare-fun tp!2361683 () Bool)

(assert (=> b!7942511 (= e!4686317 (and tp!2361685 tp!2361683))))

(declare-fun b!7942509 () Bool)

(declare-fun tp!2361682 () Bool)

(declare-fun tp!2361681 () Bool)

(assert (=> b!7942509 (= e!4686317 (and tp!2361682 tp!2361681))))

(declare-fun b!7942510 () Bool)

(declare-fun tp!2361684 () Bool)

(assert (=> b!7942510 (= e!4686317 tp!2361684)))

(assert (=> b!7942369 (= tp!2361625 e!4686317)))

(assert (= (and b!7942369 (is-ElementMatch!21412 (regOne!43336 r!24602))) b!7942508))

(assert (= (and b!7942369 (is-Concat!30411 (regOne!43336 r!24602))) b!7942509))

(assert (= (and b!7942369 (is-Star!21412 (regOne!43336 r!24602))) b!7942510))

(assert (= (and b!7942369 (is-Union!21412 (regOne!43336 r!24602))) b!7942511))

(declare-fun b!7942512 () Bool)

(declare-fun e!4686318 () Bool)

(assert (=> b!7942512 (= e!4686318 tp_is_empty!53367)))

(declare-fun b!7942515 () Bool)

(declare-fun tp!2361690 () Bool)

(declare-fun tp!2361688 () Bool)

(assert (=> b!7942515 (= e!4686318 (and tp!2361690 tp!2361688))))

(declare-fun b!7942513 () Bool)

(declare-fun tp!2361687 () Bool)

(declare-fun tp!2361686 () Bool)

(assert (=> b!7942513 (= e!4686318 (and tp!2361687 tp!2361686))))

(declare-fun b!7942514 () Bool)

(declare-fun tp!2361689 () Bool)

(assert (=> b!7942514 (= e!4686318 tp!2361689)))

(assert (=> b!7942369 (= tp!2361623 e!4686318)))

(assert (= (and b!7942369 (is-ElementMatch!21412 (regTwo!43336 r!24602))) b!7942512))

(assert (= (and b!7942369 (is-Concat!30411 (regTwo!43336 r!24602))) b!7942513))

(assert (= (and b!7942369 (is-Star!21412 (regTwo!43336 r!24602))) b!7942514))

(assert (= (and b!7942369 (is-Union!21412 (regTwo!43336 r!24602))) b!7942515))

(declare-fun b!7942520 () Bool)

(declare-fun e!4686321 () Bool)

(declare-fun tp!2361693 () Bool)

(assert (=> b!7942520 (= e!4686321 (and tp_is_empty!53367 tp!2361693))))

(assert (=> b!7942374 (= tp!2361633 e!4686321)))

(assert (= (and b!7942374 (is-Cons!74517 (t!390384 input!7927))) b!7942520))

(declare-fun b!7942521 () Bool)

(declare-fun e!4686322 () Bool)

(assert (=> b!7942521 (= e!4686322 tp_is_empty!53367)))

(declare-fun b!7942524 () Bool)

(declare-fun tp!2361698 () Bool)

(declare-fun tp!2361696 () Bool)

(assert (=> b!7942524 (= e!4686322 (and tp!2361698 tp!2361696))))

(declare-fun b!7942522 () Bool)

(declare-fun tp!2361695 () Bool)

(declare-fun tp!2361694 () Bool)

(assert (=> b!7942522 (= e!4686322 (and tp!2361695 tp!2361694))))

(declare-fun b!7942523 () Bool)

(declare-fun tp!2361697 () Bool)

(assert (=> b!7942523 (= e!4686322 tp!2361697)))

(assert (=> b!7942375 (= tp!2361626 e!4686322)))

(assert (= (and b!7942375 (is-ElementMatch!21412 (reg!21741 r!24602))) b!7942521))

(assert (= (and b!7942375 (is-Concat!30411 (reg!21741 r!24602))) b!7942522))

(assert (= (and b!7942375 (is-Star!21412 (reg!21741 r!24602))) b!7942523))

(assert (= (and b!7942375 (is-Union!21412 (reg!21741 r!24602))) b!7942524))

(declare-fun b!7942525 () Bool)

(declare-fun e!4686323 () Bool)

(assert (=> b!7942525 (= e!4686323 tp_is_empty!53367)))

(declare-fun b!7942528 () Bool)

(declare-fun tp!2361703 () Bool)

(declare-fun tp!2361701 () Bool)

(assert (=> b!7942528 (= e!4686323 (and tp!2361703 tp!2361701))))

(declare-fun b!7942526 () Bool)

(declare-fun tp!2361700 () Bool)

(declare-fun tp!2361699 () Bool)

(assert (=> b!7942526 (= e!4686323 (and tp!2361700 tp!2361699))))

(declare-fun b!7942527 () Bool)

(declare-fun tp!2361702 () Bool)

(assert (=> b!7942527 (= e!4686323 tp!2361702)))

(assert (=> b!7942378 (= tp!2361631 e!4686323)))

(assert (= (and b!7942378 (is-ElementMatch!21412 (regOne!43337 baseR!116))) b!7942525))

(assert (= (and b!7942378 (is-Concat!30411 (regOne!43337 baseR!116))) b!7942526))

(assert (= (and b!7942378 (is-Star!21412 (regOne!43337 baseR!116))) b!7942527))

(assert (= (and b!7942378 (is-Union!21412 (regOne!43337 baseR!116))) b!7942528))

(declare-fun b!7942529 () Bool)

(declare-fun e!4686324 () Bool)

(assert (=> b!7942529 (= e!4686324 tp_is_empty!53367)))

(declare-fun b!7942532 () Bool)

(declare-fun tp!2361708 () Bool)

(declare-fun tp!2361706 () Bool)

(assert (=> b!7942532 (= e!4686324 (and tp!2361708 tp!2361706))))

(declare-fun b!7942530 () Bool)

(declare-fun tp!2361705 () Bool)

(declare-fun tp!2361704 () Bool)

(assert (=> b!7942530 (= e!4686324 (and tp!2361705 tp!2361704))))

(declare-fun b!7942531 () Bool)

(declare-fun tp!2361707 () Bool)

(assert (=> b!7942531 (= e!4686324 tp!2361707)))

(assert (=> b!7942378 (= tp!2361630 e!4686324)))

(assert (= (and b!7942378 (is-ElementMatch!21412 (regTwo!43337 baseR!116))) b!7942529))

(assert (= (and b!7942378 (is-Concat!30411 (regTwo!43337 baseR!116))) b!7942530))

(assert (= (and b!7942378 (is-Star!21412 (regTwo!43337 baseR!116))) b!7942531))

(assert (= (and b!7942378 (is-Union!21412 (regTwo!43337 baseR!116))) b!7942532))

(declare-fun b!7942533 () Bool)

(declare-fun e!4686325 () Bool)

(declare-fun tp!2361709 () Bool)

(assert (=> b!7942533 (= e!4686325 (and tp_is_empty!53367 tp!2361709))))

(assert (=> b!7942367 (= tp!2361624 e!4686325)))

(assert (= (and b!7942367 (is-Cons!74517 (t!390384 testedP!447))) b!7942533))

(declare-fun b!7942534 () Bool)

(declare-fun e!4686326 () Bool)

(assert (=> b!7942534 (= e!4686326 tp_is_empty!53367)))

(declare-fun b!7942537 () Bool)

(declare-fun tp!2361714 () Bool)

(declare-fun tp!2361712 () Bool)

(assert (=> b!7942537 (= e!4686326 (and tp!2361714 tp!2361712))))

(declare-fun b!7942535 () Bool)

(declare-fun tp!2361711 () Bool)

(declare-fun tp!2361710 () Bool)

(assert (=> b!7942535 (= e!4686326 (and tp!2361711 tp!2361710))))

(declare-fun b!7942536 () Bool)

(declare-fun tp!2361713 () Bool)

(assert (=> b!7942536 (= e!4686326 tp!2361713)))

(assert (=> b!7942372 (= tp!2361629 e!4686326)))

(assert (= (and b!7942372 (is-ElementMatch!21412 (regOne!43336 baseR!116))) b!7942534))

(assert (= (and b!7942372 (is-Concat!30411 (regOne!43336 baseR!116))) b!7942535))

(assert (= (and b!7942372 (is-Star!21412 (regOne!43336 baseR!116))) b!7942536))

(assert (= (and b!7942372 (is-Union!21412 (regOne!43336 baseR!116))) b!7942537))

(declare-fun b!7942538 () Bool)

(declare-fun e!4686327 () Bool)

(assert (=> b!7942538 (= e!4686327 tp_is_empty!53367)))

(declare-fun b!7942541 () Bool)

(declare-fun tp!2361719 () Bool)

(declare-fun tp!2361717 () Bool)

(assert (=> b!7942541 (= e!4686327 (and tp!2361719 tp!2361717))))

(declare-fun b!7942539 () Bool)

(declare-fun tp!2361716 () Bool)

(declare-fun tp!2361715 () Bool)

(assert (=> b!7942539 (= e!4686327 (and tp!2361716 tp!2361715))))

(declare-fun b!7942540 () Bool)

(declare-fun tp!2361718 () Bool)

(assert (=> b!7942540 (= e!4686327 tp!2361718)))

(assert (=> b!7942372 (= tp!2361628 e!4686327)))

(assert (= (and b!7942372 (is-ElementMatch!21412 (regTwo!43336 baseR!116))) b!7942538))

(assert (= (and b!7942372 (is-Concat!30411 (regTwo!43336 baseR!116))) b!7942539))

(assert (= (and b!7942372 (is-Star!21412 (regTwo!43336 baseR!116))) b!7942540))

(assert (= (and b!7942372 (is-Union!21412 (regTwo!43336 baseR!116))) b!7942541))

(declare-fun b!7942542 () Bool)

(declare-fun e!4686328 () Bool)

(assert (=> b!7942542 (= e!4686328 tp_is_empty!53367)))

(declare-fun b!7942545 () Bool)

(declare-fun tp!2361724 () Bool)

(declare-fun tp!2361722 () Bool)

(assert (=> b!7942545 (= e!4686328 (and tp!2361724 tp!2361722))))

(declare-fun b!7942543 () Bool)

(declare-fun tp!2361721 () Bool)

(declare-fun tp!2361720 () Bool)

(assert (=> b!7942543 (= e!4686328 (and tp!2361721 tp!2361720))))

(declare-fun b!7942544 () Bool)

(declare-fun tp!2361723 () Bool)

(assert (=> b!7942544 (= e!4686328 tp!2361723)))

(assert (=> b!7942371 (= tp!2361634 e!4686328)))

(assert (= (and b!7942371 (is-ElementMatch!21412 (reg!21741 baseR!116))) b!7942542))

(assert (= (and b!7942371 (is-Concat!30411 (reg!21741 baseR!116))) b!7942543))

(assert (= (and b!7942371 (is-Star!21412 (reg!21741 baseR!116))) b!7942544))

(assert (= (and b!7942371 (is-Union!21412 (reg!21741 baseR!116))) b!7942545))

(declare-fun b!7942546 () Bool)

(declare-fun e!4686329 () Bool)

(assert (=> b!7942546 (= e!4686329 tp_is_empty!53367)))

(declare-fun b!7942549 () Bool)

(declare-fun tp!2361729 () Bool)

(declare-fun tp!2361727 () Bool)

(assert (=> b!7942549 (= e!4686329 (and tp!2361729 tp!2361727))))

(declare-fun b!7942547 () Bool)

(declare-fun tp!2361726 () Bool)

(declare-fun tp!2361725 () Bool)

(assert (=> b!7942547 (= e!4686329 (and tp!2361726 tp!2361725))))

(declare-fun b!7942548 () Bool)

(declare-fun tp!2361728 () Bool)

(assert (=> b!7942548 (= e!4686329 tp!2361728)))

(assert (=> b!7942376 (= tp!2361632 e!4686329)))

(assert (= (and b!7942376 (is-ElementMatch!21412 (regOne!43337 r!24602))) b!7942546))

(assert (= (and b!7942376 (is-Concat!30411 (regOne!43337 r!24602))) b!7942547))

(assert (= (and b!7942376 (is-Star!21412 (regOne!43337 r!24602))) b!7942548))

(assert (= (and b!7942376 (is-Union!21412 (regOne!43337 r!24602))) b!7942549))

(declare-fun b!7942550 () Bool)

(declare-fun e!4686330 () Bool)

(assert (=> b!7942550 (= e!4686330 tp_is_empty!53367)))

(declare-fun b!7942553 () Bool)

(declare-fun tp!2361734 () Bool)

(declare-fun tp!2361732 () Bool)

(assert (=> b!7942553 (= e!4686330 (and tp!2361734 tp!2361732))))

(declare-fun b!7942551 () Bool)

(declare-fun tp!2361731 () Bool)

(declare-fun tp!2361730 () Bool)

(assert (=> b!7942551 (= e!4686330 (and tp!2361731 tp!2361730))))

(declare-fun b!7942552 () Bool)

(declare-fun tp!2361733 () Bool)

(assert (=> b!7942552 (= e!4686330 tp!2361733)))

(assert (=> b!7942376 (= tp!2361627 e!4686330)))

(assert (= (and b!7942376 (is-ElementMatch!21412 (regTwo!43337 r!24602))) b!7942550))

(assert (= (and b!7942376 (is-Concat!30411 (regTwo!43337 r!24602))) b!7942551))

(assert (= (and b!7942376 (is-Star!21412 (regTwo!43337 r!24602))) b!7942552))

(assert (= (and b!7942376 (is-Union!21412 (regTwo!43337 r!24602))) b!7942553))

(push 1)

(assert (not b!7942522))

(assert (not b!7942515))

(assert (not b!7942548))

(assert (not b!7942448))

(assert (not b!7942458))

(assert (not b!7942552))

(assert (not b!7942536))

(assert (not b!7942495))

(assert (not b!7942540))

(assert (not b!7942533))

(assert (not b!7942532))

(assert (not bm!736078))

(assert (not b!7942531))

(assert (not b!7942547))

(assert (not b!7942523))

(assert (not b!7942539))

(assert (not b!7942526))

(assert (not b!7942527))

(assert (not b!7942545))

(assert (not b!7942477))

(assert (not b!7942509))

(assert (not b!7942497))

(assert (not b!7942514))

(assert (not b!7942475))

(assert (not b!7942535))

(assert (not b!7942544))

(assert (not bm!736080))

(assert (not b!7942511))

(assert (not b!7942510))

(assert (not b!7942530))

(assert (not b!7942543))

(assert (not b!7942553))

(assert tp_is_empty!53367)

(assert (not b!7942551))

(assert (not b!7942549))

(assert (not b!7942528))

(assert (not b!7942541))

(assert (not b!7942537))

(assert (not b!7942524))

(assert (not d!2375187))

(assert (not b!7942476))

(assert (not b!7942520))

(assert (not b!7942513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

