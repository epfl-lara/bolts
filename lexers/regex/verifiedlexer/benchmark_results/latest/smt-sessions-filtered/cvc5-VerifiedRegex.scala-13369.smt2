; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724520 () Bool)

(assert start!724520)

(declare-fun b!7475803 () Bool)

(assert (=> b!7475803 true))

(assert (=> b!7475803 true))

(assert (=> b!7475803 true))

(declare-fun lambda!463139 () Int)

(declare-fun lambda!463138 () Int)

(assert (=> b!7475803 (not (= lambda!463139 lambda!463138))))

(assert (=> b!7475803 true))

(assert (=> b!7475803 true))

(assert (=> b!7475803 true))

(declare-fun b!7475786 () Bool)

(declare-fun e!4459693 () Bool)

(declare-fun tp_is_empty!49489 () Bool)

(assert (=> b!7475786 (= e!4459693 tp_is_empty!49489)))

(declare-fun b!7475787 () Bool)

(declare-fun tp!2168157 () Bool)

(declare-fun tp!2168161 () Bool)

(assert (=> b!7475787 (= e!4459693 (and tp!2168157 tp!2168161))))

(declare-fun b!7475788 () Bool)

(declare-fun e!4459692 () Bool)

(declare-fun e!4459691 () Bool)

(assert (=> b!7475788 (= e!4459692 (not e!4459691))))

(declare-fun res!2999208 () Bool)

(assert (=> b!7475788 (=> res!2999208 e!4459691)))

(declare-fun lt!2627116 () Bool)

(assert (=> b!7475788 (= res!2999208 (not lt!2627116))))

(declare-datatypes ((C!39474 0))(
  ( (C!39475 (val!30135 Int)) )
))
(declare-datatypes ((Regex!19600 0))(
  ( (ElementMatch!19600 (c!1381001 C!39474)) (Concat!28445 (regOne!39712 Regex!19600) (regTwo!39712 Regex!19600)) (EmptyExpr!19600) (Star!19600 (reg!19929 Regex!19600)) (EmptyLang!19600) (Union!19600 (regOne!39713 Regex!19600) (regTwo!39713 Regex!19600)) )
))
(declare-fun lt!2627117 () Regex!19600)

(declare-datatypes ((List!72316 0))(
  ( (Nil!72192) (Cons!72192 (h!78640 C!39474) (t!386885 List!72316)) )
))
(declare-fun s!13591 () List!72316)

(declare-fun matchR!9364 (Regex!19600 List!72316) Bool)

(declare-fun matchRSpec!4279 (Regex!19600 List!72316) Bool)

(assert (=> b!7475788 (= (matchR!9364 lt!2627117 s!13591) (matchRSpec!4279 lt!2627117 s!13591))))

(declare-datatypes ((Unit!166035 0))(
  ( (Unit!166036) )
))
(declare-fun lt!2627109 () Unit!166035)

(declare-fun mainMatchTheorem!4273 (Regex!19600 List!72316) Unit!166035)

(assert (=> b!7475788 (= lt!2627109 (mainMatchTheorem!4273 lt!2627117 s!13591))))

(declare-fun lt!2627115 () Regex!19600)

(assert (=> b!7475788 (= lt!2627116 (matchRSpec!4279 lt!2627115 s!13591))))

(assert (=> b!7475788 (= lt!2627116 (matchR!9364 lt!2627115 s!13591))))

(declare-fun lt!2627110 () Unit!166035)

(assert (=> b!7475788 (= lt!2627110 (mainMatchTheorem!4273 lt!2627115 s!13591))))

(declare-fun r2!5783 () Regex!19600)

(declare-fun r1!5845 () Regex!19600)

(declare-fun rTail!78 () Regex!19600)

(assert (=> b!7475788 (= lt!2627117 (Union!19600 (Concat!28445 r1!5845 rTail!78) (Concat!28445 r2!5783 rTail!78)))))

(declare-fun lt!2627112 () Regex!19600)

(assert (=> b!7475788 (= lt!2627115 (Concat!28445 lt!2627112 rTail!78))))

(assert (=> b!7475788 (= lt!2627112 (Union!19600 r1!5845 r2!5783))))

(declare-fun b!7475789 () Bool)

(declare-fun tp!2168163 () Bool)

(assert (=> b!7475789 (= e!4459693 tp!2168163)))

(declare-fun b!7475790 () Bool)

(declare-fun e!4459687 () Bool)

(declare-fun tp!2168166 () Bool)

(assert (=> b!7475790 (= e!4459687 (and tp_is_empty!49489 tp!2168166))))

(declare-fun b!7475791 () Bool)

(declare-fun e!4459689 () Bool)

(declare-fun tp!2168170 () Bool)

(assert (=> b!7475791 (= e!4459689 tp!2168170)))

(declare-fun res!2999210 () Bool)

(assert (=> start!724520 (=> (not res!2999210) (not e!4459692))))

(declare-fun validRegex!10114 (Regex!19600) Bool)

(assert (=> start!724520 (= res!2999210 (validRegex!10114 r1!5845))))

(assert (=> start!724520 e!4459692))

(declare-fun e!4459688 () Bool)

(assert (=> start!724520 e!4459688))

(assert (=> start!724520 e!4459689))

(assert (=> start!724520 e!4459693))

(assert (=> start!724520 e!4459687))

(declare-fun b!7475792 () Bool)

(declare-fun e!4459690 () Bool)

(declare-fun lt!2627121 () Bool)

(declare-fun lt!2627108 () Bool)

(assert (=> b!7475792 (= e!4459690 (or lt!2627121 lt!2627108))))

(declare-datatypes ((tuple2!68650 0))(
  ( (tuple2!68651 (_1!37628 List!72316) (_2!37628 List!72316)) )
))
(declare-fun lt!2627113 () tuple2!68650)

(assert (=> b!7475792 (= lt!2627108 (matchRSpec!4279 r2!5783 (_1!37628 lt!2627113)))))

(assert (=> b!7475792 (= lt!2627108 (matchR!9364 r2!5783 (_1!37628 lt!2627113)))))

(declare-fun lt!2627119 () Unit!166035)

(assert (=> b!7475792 (= lt!2627119 (mainMatchTheorem!4273 r2!5783 (_1!37628 lt!2627113)))))

(assert (=> b!7475792 (= lt!2627121 (matchRSpec!4279 r1!5845 (_1!37628 lt!2627113)))))

(assert (=> b!7475792 (= lt!2627121 (matchR!9364 r1!5845 (_1!37628 lt!2627113)))))

(declare-fun lt!2627122 () Unit!166035)

(assert (=> b!7475792 (= lt!2627122 (mainMatchTheorem!4273 r1!5845 (_1!37628 lt!2627113)))))

(assert (=> b!7475792 (matchRSpec!4279 rTail!78 (_2!37628 lt!2627113))))

(declare-fun lt!2627120 () Unit!166035)

(assert (=> b!7475792 (= lt!2627120 (mainMatchTheorem!4273 rTail!78 (_2!37628 lt!2627113)))))

(assert (=> b!7475792 (matchRSpec!4279 lt!2627112 (_1!37628 lt!2627113))))

(declare-fun lt!2627123 () Unit!166035)

(assert (=> b!7475792 (= lt!2627123 (mainMatchTheorem!4273 lt!2627112 (_1!37628 lt!2627113)))))

(declare-fun b!7475793 () Bool)

(declare-fun tp!2168162 () Bool)

(declare-fun tp!2168171 () Bool)

(assert (=> b!7475793 (= e!4459689 (and tp!2168162 tp!2168171))))

(declare-fun b!7475794 () Bool)

(declare-fun tp!2168164 () Bool)

(declare-fun tp!2168165 () Bool)

(assert (=> b!7475794 (= e!4459693 (and tp!2168164 tp!2168165))))

(declare-fun b!7475795 () Bool)

(declare-fun res!2999207 () Bool)

(assert (=> b!7475795 (=> res!2999207 e!4459690)))

(assert (=> b!7475795 (= res!2999207 (not (matchR!9364 rTail!78 (_2!37628 lt!2627113))))))

(declare-fun b!7475796 () Bool)

(assert (=> b!7475796 (= e!4459688 tp_is_empty!49489)))

(declare-fun b!7475797 () Bool)

(declare-fun tp!2168156 () Bool)

(assert (=> b!7475797 (= e!4459688 tp!2168156)))

(declare-fun b!7475798 () Bool)

(declare-fun res!2999205 () Bool)

(assert (=> b!7475798 (=> (not res!2999205) (not e!4459692))))

(assert (=> b!7475798 (= res!2999205 (validRegex!10114 r2!5783))))

(declare-fun b!7475799 () Bool)

(declare-fun tp!2168159 () Bool)

(declare-fun tp!2168167 () Bool)

(assert (=> b!7475799 (= e!4459688 (and tp!2168159 tp!2168167))))

(declare-fun b!7475800 () Bool)

(declare-fun tp!2168168 () Bool)

(declare-fun tp!2168169 () Bool)

(assert (=> b!7475800 (= e!4459688 (and tp!2168168 tp!2168169))))

(declare-fun b!7475801 () Bool)

(declare-fun res!2999209 () Bool)

(assert (=> b!7475801 (=> (not res!2999209) (not e!4459692))))

(assert (=> b!7475801 (= res!2999209 (validRegex!10114 rTail!78))))

(declare-fun b!7475802 () Bool)

(declare-fun tp!2168160 () Bool)

(declare-fun tp!2168158 () Bool)

(assert (=> b!7475802 (= e!4459689 (and tp!2168160 tp!2168158))))

(assert (=> b!7475803 (= e!4459691 e!4459690)))

(declare-fun res!2999206 () Bool)

(assert (=> b!7475803 (=> res!2999206 e!4459690)))

(assert (=> b!7475803 (= res!2999206 (not (matchR!9364 lt!2627112 (_1!37628 lt!2627113))))))

(declare-datatypes ((Option!17157 0))(
  ( (None!17156) (Some!17156 (v!54285 tuple2!68650)) )
))
(declare-fun lt!2627111 () Option!17157)

(declare-fun get!25264 (Option!17157) tuple2!68650)

(assert (=> b!7475803 (= lt!2627113 (get!25264 lt!2627111))))

(declare-fun Exists!4219 (Int) Bool)

(assert (=> b!7475803 (= (Exists!4219 lambda!463138) (Exists!4219 lambda!463139))))

(declare-fun lt!2627114 () Unit!166035)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2553 (Regex!19600 Regex!19600 List!72316) Unit!166035)

(assert (=> b!7475803 (= lt!2627114 (lemmaExistCutMatchRandMatchRSpecEquivalent!2553 lt!2627112 rTail!78 s!13591))))

(declare-fun isDefined!13846 (Option!17157) Bool)

(assert (=> b!7475803 (= (isDefined!13846 lt!2627111) (Exists!4219 lambda!463138))))

(declare-fun findConcatSeparation!3279 (Regex!19600 Regex!19600 List!72316 List!72316 List!72316) Option!17157)

(assert (=> b!7475803 (= lt!2627111 (findConcatSeparation!3279 lt!2627112 rTail!78 Nil!72192 s!13591 s!13591))))

(declare-fun lt!2627118 () Unit!166035)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3037 (Regex!19600 Regex!19600 List!72316) Unit!166035)

(assert (=> b!7475803 (= lt!2627118 (lemmaFindConcatSeparationEquivalentToExists!3037 lt!2627112 rTail!78 s!13591))))

(declare-fun b!7475804 () Bool)

(assert (=> b!7475804 (= e!4459689 tp_is_empty!49489)))

(assert (= (and start!724520 res!2999210) b!7475798))

(assert (= (and b!7475798 res!2999205) b!7475801))

(assert (= (and b!7475801 res!2999209) b!7475788))

(assert (= (and b!7475788 (not res!2999208)) b!7475803))

(assert (= (and b!7475803 (not res!2999206)) b!7475795))

(assert (= (and b!7475795 (not res!2999207)) b!7475792))

(assert (= (and start!724520 (is-ElementMatch!19600 r1!5845)) b!7475796))

(assert (= (and start!724520 (is-Concat!28445 r1!5845)) b!7475800))

(assert (= (and start!724520 (is-Star!19600 r1!5845)) b!7475797))

(assert (= (and start!724520 (is-Union!19600 r1!5845)) b!7475799))

(assert (= (and start!724520 (is-ElementMatch!19600 r2!5783)) b!7475804))

(assert (= (and start!724520 (is-Concat!28445 r2!5783)) b!7475802))

(assert (= (and start!724520 (is-Star!19600 r2!5783)) b!7475791))

(assert (= (and start!724520 (is-Union!19600 r2!5783)) b!7475793))

(assert (= (and start!724520 (is-ElementMatch!19600 rTail!78)) b!7475786))

(assert (= (and start!724520 (is-Concat!28445 rTail!78)) b!7475787))

(assert (= (and start!724520 (is-Star!19600 rTail!78)) b!7475789))

(assert (= (and start!724520 (is-Union!19600 rTail!78)) b!7475794))

(assert (= (and start!724520 (is-Cons!72192 s!13591)) b!7475790))

(declare-fun m!8070436 () Bool)

(assert (=> b!7475795 m!8070436))

(declare-fun m!8070438 () Bool)

(assert (=> b!7475798 m!8070438))

(declare-fun m!8070440 () Bool)

(assert (=> b!7475801 m!8070440))

(declare-fun m!8070442 () Bool)

(assert (=> b!7475803 m!8070442))

(declare-fun m!8070444 () Bool)

(assert (=> b!7475803 m!8070444))

(declare-fun m!8070446 () Bool)

(assert (=> b!7475803 m!8070446))

(declare-fun m!8070448 () Bool)

(assert (=> b!7475803 m!8070448))

(declare-fun m!8070450 () Bool)

(assert (=> b!7475803 m!8070450))

(declare-fun m!8070452 () Bool)

(assert (=> b!7475803 m!8070452))

(declare-fun m!8070454 () Bool)

(assert (=> b!7475803 m!8070454))

(declare-fun m!8070456 () Bool)

(assert (=> b!7475803 m!8070456))

(assert (=> b!7475803 m!8070446))

(declare-fun m!8070458 () Bool)

(assert (=> b!7475788 m!8070458))

(declare-fun m!8070460 () Bool)

(assert (=> b!7475788 m!8070460))

(declare-fun m!8070462 () Bool)

(assert (=> b!7475788 m!8070462))

(declare-fun m!8070464 () Bool)

(assert (=> b!7475788 m!8070464))

(declare-fun m!8070466 () Bool)

(assert (=> b!7475788 m!8070466))

(declare-fun m!8070468 () Bool)

(assert (=> b!7475788 m!8070468))

(declare-fun m!8070470 () Bool)

(assert (=> b!7475792 m!8070470))

(declare-fun m!8070472 () Bool)

(assert (=> b!7475792 m!8070472))

(declare-fun m!8070474 () Bool)

(assert (=> b!7475792 m!8070474))

(declare-fun m!8070476 () Bool)

(assert (=> b!7475792 m!8070476))

(declare-fun m!8070478 () Bool)

(assert (=> b!7475792 m!8070478))

(declare-fun m!8070480 () Bool)

(assert (=> b!7475792 m!8070480))

(declare-fun m!8070482 () Bool)

(assert (=> b!7475792 m!8070482))

(declare-fun m!8070484 () Bool)

(assert (=> b!7475792 m!8070484))

(declare-fun m!8070486 () Bool)

(assert (=> b!7475792 m!8070486))

(declare-fun m!8070488 () Bool)

(assert (=> b!7475792 m!8070488))

(declare-fun m!8070490 () Bool)

(assert (=> start!724520 m!8070490))

(push 1)

(assert tp_is_empty!49489)

(assert (not b!7475802))

(assert (not b!7475801))

(assert (not b!7475798))

(assert (not b!7475792))

(assert (not b!7475799))

(assert (not b!7475791))

(assert (not start!724520))

(assert (not b!7475787))

(assert (not b!7475803))

(assert (not b!7475793))

(assert (not b!7475789))

(assert (not b!7475795))

(assert (not b!7475788))

(assert (not b!7475797))

(assert (not b!7475794))

(assert (not b!7475800))

(assert (not b!7475790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1931840 () Bool)

(declare-fun b!7475950 () Bool)

(assert (= bs!1931840 (and b!7475950 b!7475803)))

(declare-fun lambda!463152 () Int)

(assert (=> bs!1931840 (not (= lambda!463152 lambda!463138))))

(assert (=> bs!1931840 (not (= lambda!463152 lambda!463139))))

(assert (=> b!7475950 true))

(assert (=> b!7475950 true))

(declare-fun bs!1931841 () Bool)

(declare-fun b!7475960 () Bool)

(assert (= bs!1931841 (and b!7475960 b!7475803)))

(declare-fun lambda!463153 () Int)

(assert (=> bs!1931841 (not (= lambda!463153 lambda!463138))))

(assert (=> bs!1931841 (= (and (= (regOne!39712 lt!2627117) lt!2627112) (= (regTwo!39712 lt!2627117) rTail!78)) (= lambda!463153 lambda!463139))))

(declare-fun bs!1931842 () Bool)

(assert (= bs!1931842 (and b!7475960 b!7475950)))

(assert (=> bs!1931842 (not (= lambda!463153 lambda!463152))))

(assert (=> b!7475960 true))

(assert (=> b!7475960 true))

(declare-fun bm!686354 () Bool)

(declare-fun call!686360 () Bool)

(declare-fun isEmpty!41191 (List!72316) Bool)

(assert (=> bm!686354 (= call!686360 (isEmpty!41191 s!13591))))

(declare-fun d!2299468 () Bool)

(declare-fun c!1381019 () Bool)

(assert (=> d!2299468 (= c!1381019 (is-EmptyExpr!19600 lt!2627117))))

(declare-fun e!4459773 () Bool)

(assert (=> d!2299468 (= (matchRSpec!4279 lt!2627117 s!13591) e!4459773)))

(declare-fun e!4459767 () Bool)

(declare-fun call!686359 () Bool)

(assert (=> b!7475950 (= e!4459767 call!686359)))

(declare-fun b!7475951 () Bool)

(declare-fun c!1381022 () Bool)

(assert (=> b!7475951 (= c!1381022 (is-ElementMatch!19600 lt!2627117))))

(declare-fun e!4459772 () Bool)

(declare-fun e!4459770 () Bool)

(assert (=> b!7475951 (= e!4459772 e!4459770)))

(declare-fun b!7475952 () Bool)

(declare-fun res!2999278 () Bool)

(assert (=> b!7475952 (=> res!2999278 e!4459767)))

(assert (=> b!7475952 (= res!2999278 call!686360)))

(declare-fun e!4459769 () Bool)

(assert (=> b!7475952 (= e!4459769 e!4459767)))

(declare-fun b!7475953 () Bool)

(declare-fun e!4459768 () Bool)

(assert (=> b!7475953 (= e!4459768 (matchRSpec!4279 (regTwo!39713 lt!2627117) s!13591))))

(declare-fun b!7475954 () Bool)

(assert (=> b!7475954 (= e!4459773 e!4459772)))

(declare-fun res!2999277 () Bool)

(assert (=> b!7475954 (= res!2999277 (not (is-EmptyLang!19600 lt!2627117)))))

(assert (=> b!7475954 (=> (not res!2999277) (not e!4459772))))

(declare-fun b!7475955 () Bool)

(declare-fun e!4459771 () Bool)

(assert (=> b!7475955 (= e!4459771 e!4459768)))

(declare-fun res!2999279 () Bool)

(assert (=> b!7475955 (= res!2999279 (matchRSpec!4279 (regOne!39713 lt!2627117) s!13591))))

(assert (=> b!7475955 (=> res!2999279 e!4459768)))

(declare-fun c!1381020 () Bool)

(declare-fun bm!686355 () Bool)

(assert (=> bm!686355 (= call!686359 (Exists!4219 (ite c!1381020 lambda!463152 lambda!463153)))))

(declare-fun b!7475956 () Bool)

(assert (=> b!7475956 (= e!4459771 e!4459769)))

(assert (=> b!7475956 (= c!1381020 (is-Star!19600 lt!2627117))))

(declare-fun b!7475957 () Bool)

(assert (=> b!7475957 (= e!4459770 (= s!13591 (Cons!72192 (c!1381001 lt!2627117) Nil!72192)))))

(declare-fun b!7475958 () Bool)

(declare-fun c!1381021 () Bool)

(assert (=> b!7475958 (= c!1381021 (is-Union!19600 lt!2627117))))

(assert (=> b!7475958 (= e!4459770 e!4459771)))

(declare-fun b!7475959 () Bool)

(assert (=> b!7475959 (= e!4459773 call!686360)))

(assert (=> b!7475960 (= e!4459769 call!686359)))

(assert (= (and d!2299468 c!1381019) b!7475959))

(assert (= (and d!2299468 (not c!1381019)) b!7475954))

(assert (= (and b!7475954 res!2999277) b!7475951))

(assert (= (and b!7475951 c!1381022) b!7475957))

(assert (= (and b!7475951 (not c!1381022)) b!7475958))

(assert (= (and b!7475958 c!1381021) b!7475955))

(assert (= (and b!7475958 (not c!1381021)) b!7475956))

(assert (= (and b!7475955 (not res!2999279)) b!7475953))

(assert (= (and b!7475956 c!1381020) b!7475952))

(assert (= (and b!7475956 (not c!1381020)) b!7475960))

(assert (= (and b!7475952 (not res!2999278)) b!7475950))

(assert (= (or b!7475950 b!7475960) bm!686355))

(assert (= (or b!7475959 b!7475952) bm!686354))

(declare-fun m!8070566 () Bool)

(assert (=> bm!686354 m!8070566))

(declare-fun m!8070568 () Bool)

(assert (=> b!7475953 m!8070568))

(declare-fun m!8070570 () Bool)

(assert (=> b!7475955 m!8070570))

(declare-fun m!8070572 () Bool)

(assert (=> bm!686355 m!8070572))

(assert (=> b!7475788 d!2299468))

(declare-fun d!2299476 () Bool)

(assert (=> d!2299476 (= (matchR!9364 lt!2627117 s!13591) (matchRSpec!4279 lt!2627117 s!13591))))

(declare-fun lt!2627174 () Unit!166035)

(declare-fun choose!57786 (Regex!19600 List!72316) Unit!166035)

(assert (=> d!2299476 (= lt!2627174 (choose!57786 lt!2627117 s!13591))))

(assert (=> d!2299476 (validRegex!10114 lt!2627117)))

(assert (=> d!2299476 (= (mainMatchTheorem!4273 lt!2627117 s!13591) lt!2627174)))

(declare-fun bs!1931843 () Bool)

(assert (= bs!1931843 d!2299476))

(assert (=> bs!1931843 m!8070460))

(assert (=> bs!1931843 m!8070462))

(declare-fun m!8070574 () Bool)

(assert (=> bs!1931843 m!8070574))

(declare-fun m!8070576 () Bool)

(assert (=> bs!1931843 m!8070576))

(assert (=> b!7475788 d!2299476))

(declare-fun d!2299478 () Bool)

(assert (=> d!2299478 (= (matchR!9364 lt!2627115 s!13591) (matchRSpec!4279 lt!2627115 s!13591))))

(declare-fun lt!2627175 () Unit!166035)

(assert (=> d!2299478 (= lt!2627175 (choose!57786 lt!2627115 s!13591))))

(assert (=> d!2299478 (validRegex!10114 lt!2627115)))

(assert (=> d!2299478 (= (mainMatchTheorem!4273 lt!2627115 s!13591) lt!2627175)))

(declare-fun bs!1931844 () Bool)

(assert (= bs!1931844 d!2299478))

(assert (=> bs!1931844 m!8070458))

(assert (=> bs!1931844 m!8070466))

(declare-fun m!8070578 () Bool)

(assert (=> bs!1931844 m!8070578))

(declare-fun m!8070580 () Bool)

(assert (=> bs!1931844 m!8070580))

(assert (=> b!7475788 d!2299478))

(declare-fun b!7475998 () Bool)

(declare-fun res!2999303 () Bool)

(declare-fun e!4459795 () Bool)

(assert (=> b!7475998 (=> (not res!2999303) (not e!4459795))))

(declare-fun call!686366 () Bool)

(assert (=> b!7475998 (= res!2999303 (not call!686366))))

(declare-fun b!7475999 () Bool)

(declare-fun e!4459797 () Bool)

(declare-fun head!15337 (List!72316) C!39474)

(assert (=> b!7475999 (= e!4459797 (not (= (head!15337 s!13591) (c!1381001 lt!2627115))))))

(declare-fun b!7476000 () Bool)

(assert (=> b!7476000 (= e!4459795 (= (head!15337 s!13591) (c!1381001 lt!2627115)))))

(declare-fun b!7476001 () Bool)

(declare-fun res!2999302 () Bool)

(assert (=> b!7476001 (=> res!2999302 e!4459797)))

(declare-fun tail!14906 (List!72316) List!72316)

(assert (=> b!7476001 (= res!2999302 (not (isEmpty!41191 (tail!14906 s!13591))))))

(declare-fun b!7476002 () Bool)

(declare-fun res!2999307 () Bool)

(declare-fun e!4459800 () Bool)

(assert (=> b!7476002 (=> res!2999307 e!4459800)))

(assert (=> b!7476002 (= res!2999307 (not (is-ElementMatch!19600 lt!2627115)))))

(declare-fun e!4459799 () Bool)

(assert (=> b!7476002 (= e!4459799 e!4459800)))

(declare-fun b!7476003 () Bool)

(declare-fun e!4459801 () Bool)

(declare-fun lt!2627182 () Bool)

(assert (=> b!7476003 (= e!4459801 (= lt!2627182 call!686366))))

(declare-fun b!7476004 () Bool)

(declare-fun res!2999301 () Bool)

(assert (=> b!7476004 (=> res!2999301 e!4459800)))

(assert (=> b!7476004 (= res!2999301 e!4459795)))

(declare-fun res!2999305 () Bool)

(assert (=> b!7476004 (=> (not res!2999305) (not e!4459795))))

(assert (=> b!7476004 (= res!2999305 lt!2627182)))

(declare-fun d!2299480 () Bool)

(assert (=> d!2299480 e!4459801))

(declare-fun c!1381031 () Bool)

(assert (=> d!2299480 (= c!1381031 (is-EmptyExpr!19600 lt!2627115))))

(declare-fun e!4459796 () Bool)

(assert (=> d!2299480 (= lt!2627182 e!4459796)))

(declare-fun c!1381033 () Bool)

(assert (=> d!2299480 (= c!1381033 (isEmpty!41191 s!13591))))

(assert (=> d!2299480 (validRegex!10114 lt!2627115)))

(assert (=> d!2299480 (= (matchR!9364 lt!2627115 s!13591) lt!2627182)))

(declare-fun b!7476005 () Bool)

(declare-fun e!4459798 () Bool)

(assert (=> b!7476005 (= e!4459800 e!4459798)))

(declare-fun res!2999308 () Bool)

(assert (=> b!7476005 (=> (not res!2999308) (not e!4459798))))

(assert (=> b!7476005 (= res!2999308 (not lt!2627182))))

(declare-fun b!7476006 () Bool)

(assert (=> b!7476006 (= e!4459798 e!4459797)))

(declare-fun res!2999304 () Bool)

(assert (=> b!7476006 (=> res!2999304 e!4459797)))

(assert (=> b!7476006 (= res!2999304 call!686366)))

(declare-fun bm!686361 () Bool)

(assert (=> bm!686361 (= call!686366 (isEmpty!41191 s!13591))))

(declare-fun b!7476007 () Bool)

(declare-fun derivativeStep!5597 (Regex!19600 C!39474) Regex!19600)

(assert (=> b!7476007 (= e!4459796 (matchR!9364 (derivativeStep!5597 lt!2627115 (head!15337 s!13591)) (tail!14906 s!13591)))))

(declare-fun b!7476008 () Bool)

(declare-fun nullable!8538 (Regex!19600) Bool)

(assert (=> b!7476008 (= e!4459796 (nullable!8538 lt!2627115))))

(declare-fun b!7476009 () Bool)

(declare-fun res!2999306 () Bool)

(assert (=> b!7476009 (=> (not res!2999306) (not e!4459795))))

(assert (=> b!7476009 (= res!2999306 (isEmpty!41191 (tail!14906 s!13591)))))

(declare-fun b!7476010 () Bool)

(assert (=> b!7476010 (= e!4459801 e!4459799)))

(declare-fun c!1381032 () Bool)

(assert (=> b!7476010 (= c!1381032 (is-EmptyLang!19600 lt!2627115))))

(declare-fun b!7476011 () Bool)

(assert (=> b!7476011 (= e!4459799 (not lt!2627182))))

(assert (= (and d!2299480 c!1381033) b!7476008))

(assert (= (and d!2299480 (not c!1381033)) b!7476007))

(assert (= (and d!2299480 c!1381031) b!7476003))

(assert (= (and d!2299480 (not c!1381031)) b!7476010))

(assert (= (and b!7476010 c!1381032) b!7476011))

(assert (= (and b!7476010 (not c!1381032)) b!7476002))

(assert (= (and b!7476002 (not res!2999307)) b!7476004))

(assert (= (and b!7476004 res!2999305) b!7475998))

(assert (= (and b!7475998 res!2999303) b!7476009))

(assert (= (and b!7476009 res!2999306) b!7476000))

(assert (= (and b!7476004 (not res!2999301)) b!7476005))

(assert (= (and b!7476005 res!2999308) b!7476006))

(assert (= (and b!7476006 (not res!2999304)) b!7476001))

(assert (= (and b!7476001 (not res!2999302)) b!7475999))

(assert (= (or b!7476003 b!7475998 b!7476006) bm!686361))

(declare-fun m!8070588 () Bool)

(assert (=> b!7476008 m!8070588))

(assert (=> bm!686361 m!8070566))

(declare-fun m!8070590 () Bool)

(assert (=> b!7476007 m!8070590))

(assert (=> b!7476007 m!8070590))

(declare-fun m!8070592 () Bool)

(assert (=> b!7476007 m!8070592))

(declare-fun m!8070594 () Bool)

(assert (=> b!7476007 m!8070594))

(assert (=> b!7476007 m!8070592))

(assert (=> b!7476007 m!8070594))

(declare-fun m!8070596 () Bool)

(assert (=> b!7476007 m!8070596))

(assert (=> b!7476000 m!8070590))

(assert (=> d!2299480 m!8070566))

(assert (=> d!2299480 m!8070580))

(assert (=> b!7476009 m!8070594))

(assert (=> b!7476009 m!8070594))

(declare-fun m!8070598 () Bool)

(assert (=> b!7476009 m!8070598))

(assert (=> b!7476001 m!8070594))

(assert (=> b!7476001 m!8070594))

(assert (=> b!7476001 m!8070598))

(assert (=> b!7475999 m!8070590))

(assert (=> b!7475788 d!2299480))

(declare-fun bs!1931847 () Bool)

(declare-fun b!7476012 () Bool)

(assert (= bs!1931847 (and b!7476012 b!7475803)))

(declare-fun lambda!463154 () Int)

(assert (=> bs!1931847 (not (= lambda!463154 lambda!463138))))

(assert (=> bs!1931847 (not (= lambda!463154 lambda!463139))))

(declare-fun bs!1931848 () Bool)

(assert (= bs!1931848 (and b!7476012 b!7475950)))

(assert (=> bs!1931848 (= (and (= (reg!19929 lt!2627115) (reg!19929 lt!2627117)) (= lt!2627115 lt!2627117)) (= lambda!463154 lambda!463152))))

(declare-fun bs!1931849 () Bool)

(assert (= bs!1931849 (and b!7476012 b!7475960)))

(assert (=> bs!1931849 (not (= lambda!463154 lambda!463153))))

(assert (=> b!7476012 true))

(assert (=> b!7476012 true))

(declare-fun bs!1931850 () Bool)

(declare-fun b!7476022 () Bool)

(assert (= bs!1931850 (and b!7476022 b!7475803)))

(declare-fun lambda!463155 () Int)

(assert (=> bs!1931850 (not (= lambda!463155 lambda!463138))))

(declare-fun bs!1931851 () Bool)

(assert (= bs!1931851 (and b!7476022 b!7476012)))

(assert (=> bs!1931851 (not (= lambda!463155 lambda!463154))))

(declare-fun bs!1931852 () Bool)

(assert (= bs!1931852 (and b!7476022 b!7475960)))

(assert (=> bs!1931852 (= (and (= (regOne!39712 lt!2627115) (regOne!39712 lt!2627117)) (= (regTwo!39712 lt!2627115) (regTwo!39712 lt!2627117))) (= lambda!463155 lambda!463153))))

(assert (=> bs!1931850 (= (and (= (regOne!39712 lt!2627115) lt!2627112) (= (regTwo!39712 lt!2627115) rTail!78)) (= lambda!463155 lambda!463139))))

(declare-fun bs!1931853 () Bool)

(assert (= bs!1931853 (and b!7476022 b!7475950)))

(assert (=> bs!1931853 (not (= lambda!463155 lambda!463152))))

(assert (=> b!7476022 true))

(assert (=> b!7476022 true))

(declare-fun bm!686362 () Bool)

(declare-fun call!686368 () Bool)

(assert (=> bm!686362 (= call!686368 (isEmpty!41191 s!13591))))

(declare-fun d!2299486 () Bool)

(declare-fun c!1381034 () Bool)

(assert (=> d!2299486 (= c!1381034 (is-EmptyExpr!19600 lt!2627115))))

(declare-fun e!4459808 () Bool)

(assert (=> d!2299486 (= (matchRSpec!4279 lt!2627115 s!13591) e!4459808)))

(declare-fun e!4459802 () Bool)

(declare-fun call!686367 () Bool)

(assert (=> b!7476012 (= e!4459802 call!686367)))

(declare-fun b!7476013 () Bool)

(declare-fun c!1381037 () Bool)

(assert (=> b!7476013 (= c!1381037 (is-ElementMatch!19600 lt!2627115))))

(declare-fun e!4459807 () Bool)

(declare-fun e!4459805 () Bool)

(assert (=> b!7476013 (= e!4459807 e!4459805)))

(declare-fun b!7476014 () Bool)

(declare-fun res!2999310 () Bool)

(assert (=> b!7476014 (=> res!2999310 e!4459802)))

(assert (=> b!7476014 (= res!2999310 call!686368)))

(declare-fun e!4459804 () Bool)

(assert (=> b!7476014 (= e!4459804 e!4459802)))

(declare-fun b!7476015 () Bool)

(declare-fun e!4459803 () Bool)

(assert (=> b!7476015 (= e!4459803 (matchRSpec!4279 (regTwo!39713 lt!2627115) s!13591))))

(declare-fun b!7476016 () Bool)

(assert (=> b!7476016 (= e!4459808 e!4459807)))

(declare-fun res!2999309 () Bool)

(assert (=> b!7476016 (= res!2999309 (not (is-EmptyLang!19600 lt!2627115)))))

(assert (=> b!7476016 (=> (not res!2999309) (not e!4459807))))

(declare-fun b!7476017 () Bool)

(declare-fun e!4459806 () Bool)

(assert (=> b!7476017 (= e!4459806 e!4459803)))

(declare-fun res!2999311 () Bool)

(assert (=> b!7476017 (= res!2999311 (matchRSpec!4279 (regOne!39713 lt!2627115) s!13591))))

(assert (=> b!7476017 (=> res!2999311 e!4459803)))

(declare-fun c!1381035 () Bool)

(declare-fun bm!686363 () Bool)

(assert (=> bm!686363 (= call!686367 (Exists!4219 (ite c!1381035 lambda!463154 lambda!463155)))))

(declare-fun b!7476018 () Bool)

(assert (=> b!7476018 (= e!4459806 e!4459804)))

(assert (=> b!7476018 (= c!1381035 (is-Star!19600 lt!2627115))))

(declare-fun b!7476019 () Bool)

(assert (=> b!7476019 (= e!4459805 (= s!13591 (Cons!72192 (c!1381001 lt!2627115) Nil!72192)))))

(declare-fun b!7476020 () Bool)

(declare-fun c!1381036 () Bool)

(assert (=> b!7476020 (= c!1381036 (is-Union!19600 lt!2627115))))

(assert (=> b!7476020 (= e!4459805 e!4459806)))

(declare-fun b!7476021 () Bool)

(assert (=> b!7476021 (= e!4459808 call!686368)))

(assert (=> b!7476022 (= e!4459804 call!686367)))

(assert (= (and d!2299486 c!1381034) b!7476021))

(assert (= (and d!2299486 (not c!1381034)) b!7476016))

(assert (= (and b!7476016 res!2999309) b!7476013))

(assert (= (and b!7476013 c!1381037) b!7476019))

(assert (= (and b!7476013 (not c!1381037)) b!7476020))

(assert (= (and b!7476020 c!1381036) b!7476017))

(assert (= (and b!7476020 (not c!1381036)) b!7476018))

(assert (= (and b!7476017 (not res!2999311)) b!7476015))

(assert (= (and b!7476018 c!1381035) b!7476014))

(assert (= (and b!7476018 (not c!1381035)) b!7476022))

(assert (= (and b!7476014 (not res!2999310)) b!7476012))

(assert (= (or b!7476012 b!7476022) bm!686363))

(assert (= (or b!7476021 b!7476014) bm!686362))

(assert (=> bm!686362 m!8070566))

(declare-fun m!8070600 () Bool)

(assert (=> b!7476015 m!8070600))

(declare-fun m!8070602 () Bool)

(assert (=> b!7476017 m!8070602))

(declare-fun m!8070604 () Bool)

(assert (=> bm!686363 m!8070604))

(assert (=> b!7475788 d!2299486))

(declare-fun b!7476023 () Bool)

(declare-fun res!2999314 () Bool)

(declare-fun e!4459809 () Bool)

(assert (=> b!7476023 (=> (not res!2999314) (not e!4459809))))

(declare-fun call!686369 () Bool)

(assert (=> b!7476023 (= res!2999314 (not call!686369))))

(declare-fun b!7476024 () Bool)

(declare-fun e!4459811 () Bool)

(assert (=> b!7476024 (= e!4459811 (not (= (head!15337 s!13591) (c!1381001 lt!2627117))))))

(declare-fun b!7476025 () Bool)

(assert (=> b!7476025 (= e!4459809 (= (head!15337 s!13591) (c!1381001 lt!2627117)))))

(declare-fun b!7476026 () Bool)

(declare-fun res!2999313 () Bool)

(assert (=> b!7476026 (=> res!2999313 e!4459811)))

(assert (=> b!7476026 (= res!2999313 (not (isEmpty!41191 (tail!14906 s!13591))))))

(declare-fun b!7476027 () Bool)

(declare-fun res!2999318 () Bool)

(declare-fun e!4459814 () Bool)

(assert (=> b!7476027 (=> res!2999318 e!4459814)))

(assert (=> b!7476027 (= res!2999318 (not (is-ElementMatch!19600 lt!2627117)))))

(declare-fun e!4459813 () Bool)

(assert (=> b!7476027 (= e!4459813 e!4459814)))

(declare-fun b!7476028 () Bool)

(declare-fun e!4459815 () Bool)

(declare-fun lt!2627183 () Bool)

(assert (=> b!7476028 (= e!4459815 (= lt!2627183 call!686369))))

(declare-fun b!7476029 () Bool)

(declare-fun res!2999312 () Bool)

(assert (=> b!7476029 (=> res!2999312 e!4459814)))

(assert (=> b!7476029 (= res!2999312 e!4459809)))

(declare-fun res!2999316 () Bool)

(assert (=> b!7476029 (=> (not res!2999316) (not e!4459809))))

(assert (=> b!7476029 (= res!2999316 lt!2627183)))

(declare-fun d!2299488 () Bool)

(assert (=> d!2299488 e!4459815))

(declare-fun c!1381038 () Bool)

(assert (=> d!2299488 (= c!1381038 (is-EmptyExpr!19600 lt!2627117))))

(declare-fun e!4459810 () Bool)

(assert (=> d!2299488 (= lt!2627183 e!4459810)))

(declare-fun c!1381040 () Bool)

(assert (=> d!2299488 (= c!1381040 (isEmpty!41191 s!13591))))

(assert (=> d!2299488 (validRegex!10114 lt!2627117)))

(assert (=> d!2299488 (= (matchR!9364 lt!2627117 s!13591) lt!2627183)))

(declare-fun b!7476030 () Bool)

(declare-fun e!4459812 () Bool)

(assert (=> b!7476030 (= e!4459814 e!4459812)))

(declare-fun res!2999319 () Bool)

(assert (=> b!7476030 (=> (not res!2999319) (not e!4459812))))

(assert (=> b!7476030 (= res!2999319 (not lt!2627183))))

(declare-fun b!7476031 () Bool)

(assert (=> b!7476031 (= e!4459812 e!4459811)))

(declare-fun res!2999315 () Bool)

(assert (=> b!7476031 (=> res!2999315 e!4459811)))

(assert (=> b!7476031 (= res!2999315 call!686369)))

(declare-fun bm!686364 () Bool)

(assert (=> bm!686364 (= call!686369 (isEmpty!41191 s!13591))))

(declare-fun b!7476032 () Bool)

(assert (=> b!7476032 (= e!4459810 (matchR!9364 (derivativeStep!5597 lt!2627117 (head!15337 s!13591)) (tail!14906 s!13591)))))

(declare-fun b!7476033 () Bool)

(assert (=> b!7476033 (= e!4459810 (nullable!8538 lt!2627117))))

(declare-fun b!7476034 () Bool)

(declare-fun res!2999317 () Bool)

(assert (=> b!7476034 (=> (not res!2999317) (not e!4459809))))

(assert (=> b!7476034 (= res!2999317 (isEmpty!41191 (tail!14906 s!13591)))))

(declare-fun b!7476035 () Bool)

(assert (=> b!7476035 (= e!4459815 e!4459813)))

(declare-fun c!1381039 () Bool)

(assert (=> b!7476035 (= c!1381039 (is-EmptyLang!19600 lt!2627117))))

(declare-fun b!7476036 () Bool)

(assert (=> b!7476036 (= e!4459813 (not lt!2627183))))

(assert (= (and d!2299488 c!1381040) b!7476033))

(assert (= (and d!2299488 (not c!1381040)) b!7476032))

(assert (= (and d!2299488 c!1381038) b!7476028))

(assert (= (and d!2299488 (not c!1381038)) b!7476035))

(assert (= (and b!7476035 c!1381039) b!7476036))

(assert (= (and b!7476035 (not c!1381039)) b!7476027))

(assert (= (and b!7476027 (not res!2999318)) b!7476029))

(assert (= (and b!7476029 res!2999316) b!7476023))

(assert (= (and b!7476023 res!2999314) b!7476034))

(assert (= (and b!7476034 res!2999317) b!7476025))

(assert (= (and b!7476029 (not res!2999312)) b!7476030))

(assert (= (and b!7476030 res!2999319) b!7476031))

(assert (= (and b!7476031 (not res!2999315)) b!7476026))

(assert (= (and b!7476026 (not res!2999313)) b!7476024))

(assert (= (or b!7476028 b!7476023 b!7476031) bm!686364))

(declare-fun m!8070606 () Bool)

(assert (=> b!7476033 m!8070606))

(assert (=> bm!686364 m!8070566))

(assert (=> b!7476032 m!8070590))

(assert (=> b!7476032 m!8070590))

(declare-fun m!8070608 () Bool)

(assert (=> b!7476032 m!8070608))

(assert (=> b!7476032 m!8070594))

(assert (=> b!7476032 m!8070608))

(assert (=> b!7476032 m!8070594))

(declare-fun m!8070610 () Bool)

(assert (=> b!7476032 m!8070610))

(assert (=> b!7476025 m!8070590))

(assert (=> d!2299488 m!8070566))

(assert (=> d!2299488 m!8070576))

(assert (=> b!7476034 m!8070594))

(assert (=> b!7476034 m!8070594))

(assert (=> b!7476034 m!8070598))

(assert (=> b!7476026 m!8070594))

(assert (=> b!7476026 m!8070594))

(assert (=> b!7476026 m!8070598))

(assert (=> b!7476024 m!8070590))

(assert (=> b!7475788 d!2299488))

(declare-fun bm!686373 () Bool)

(declare-fun call!686380 () Bool)

(declare-fun call!686378 () Bool)

(assert (=> bm!686373 (= call!686380 call!686378)))

(declare-fun b!7476083 () Bool)

(declare-fun e!4459850 () Bool)

(declare-fun e!4459848 () Bool)

(assert (=> b!7476083 (= e!4459850 e!4459848)))

(declare-fun res!2999347 () Bool)

(assert (=> b!7476083 (=> (not res!2999347) (not e!4459848))))

(declare-fun call!686379 () Bool)

(assert (=> b!7476083 (= res!2999347 call!686379)))

(declare-fun d!2299490 () Bool)

(declare-fun res!2999350 () Bool)

(declare-fun e!4459847 () Bool)

(assert (=> d!2299490 (=> res!2999350 e!4459847)))

(assert (=> d!2299490 (= res!2999350 (is-ElementMatch!19600 r2!5783))))

(assert (=> d!2299490 (= (validRegex!10114 r2!5783) e!4459847)))

(declare-fun b!7476084 () Bool)

(declare-fun e!4459849 () Bool)

(assert (=> b!7476084 (= e!4459849 call!686378)))

(declare-fun bm!686374 () Bool)

(declare-fun c!1381052 () Bool)

(declare-fun c!1381051 () Bool)

(assert (=> bm!686374 (= call!686378 (validRegex!10114 (ite c!1381051 (reg!19929 r2!5783) (ite c!1381052 (regTwo!39713 r2!5783) (regTwo!39712 r2!5783)))))))

(declare-fun bm!686375 () Bool)

(assert (=> bm!686375 (= call!686379 (validRegex!10114 (ite c!1381052 (regOne!39713 r2!5783) (regOne!39712 r2!5783))))))

(declare-fun b!7476085 () Bool)

(declare-fun e!4459844 () Bool)

(assert (=> b!7476085 (= e!4459844 e!4459849)))

(declare-fun res!2999348 () Bool)

(assert (=> b!7476085 (= res!2999348 (not (nullable!8538 (reg!19929 r2!5783))))))

(assert (=> b!7476085 (=> (not res!2999348) (not e!4459849))))

(declare-fun b!7476086 () Bool)

(assert (=> b!7476086 (= e!4459847 e!4459844)))

(assert (=> b!7476086 (= c!1381051 (is-Star!19600 r2!5783))))

(declare-fun b!7476087 () Bool)

(declare-fun res!2999349 () Bool)

(assert (=> b!7476087 (=> res!2999349 e!4459850)))

(assert (=> b!7476087 (= res!2999349 (not (is-Concat!28445 r2!5783)))))

(declare-fun e!4459845 () Bool)

(assert (=> b!7476087 (= e!4459845 e!4459850)))

(declare-fun b!7476088 () Bool)

(assert (=> b!7476088 (= e!4459844 e!4459845)))

(assert (=> b!7476088 (= c!1381052 (is-Union!19600 r2!5783))))

(declare-fun b!7476089 () Bool)

(declare-fun e!4459846 () Bool)

(assert (=> b!7476089 (= e!4459846 call!686380)))

(declare-fun b!7476090 () Bool)

(declare-fun res!2999346 () Bool)

(assert (=> b!7476090 (=> (not res!2999346) (not e!4459846))))

(assert (=> b!7476090 (= res!2999346 call!686379)))

(assert (=> b!7476090 (= e!4459845 e!4459846)))

(declare-fun b!7476091 () Bool)

(assert (=> b!7476091 (= e!4459848 call!686380)))

(assert (= (and d!2299490 (not res!2999350)) b!7476086))

(assert (= (and b!7476086 c!1381051) b!7476085))

(assert (= (and b!7476086 (not c!1381051)) b!7476088))

(assert (= (and b!7476085 res!2999348) b!7476084))

(assert (= (and b!7476088 c!1381052) b!7476090))

(assert (= (and b!7476088 (not c!1381052)) b!7476087))

(assert (= (and b!7476090 res!2999346) b!7476089))

(assert (= (and b!7476087 (not res!2999349)) b!7476083))

(assert (= (and b!7476083 res!2999347) b!7476091))

(assert (= (or b!7476089 b!7476091) bm!686373))

(assert (= (or b!7476090 b!7476083) bm!686375))

(assert (= (or b!7476084 bm!686373) bm!686374))

(declare-fun m!8070612 () Bool)

(assert (=> bm!686374 m!8070612))

(declare-fun m!8070614 () Bool)

(assert (=> bm!686375 m!8070614))

(declare-fun m!8070616 () Bool)

(assert (=> b!7476085 m!8070616))

(assert (=> b!7475798 d!2299490))

(declare-fun d!2299492 () Bool)

(declare-fun choose!57787 (Int) Bool)

(assert (=> d!2299492 (= (Exists!4219 lambda!463139) (choose!57787 lambda!463139))))

(declare-fun bs!1931854 () Bool)

(assert (= bs!1931854 d!2299492))

(declare-fun m!8070618 () Bool)

(assert (=> bs!1931854 m!8070618))

(assert (=> b!7475803 d!2299492))

(declare-fun b!7476124 () Bool)

(declare-fun e!4459868 () Option!17157)

(assert (=> b!7476124 (= e!4459868 (Some!17156 (tuple2!68651 Nil!72192 s!13591)))))

(declare-fun b!7476125 () Bool)

(declare-fun e!4459869 () Option!17157)

(assert (=> b!7476125 (= e!4459869 None!17156)))

(declare-fun b!7476126 () Bool)

(assert (=> b!7476126 (= e!4459868 e!4459869)))

(declare-fun c!1381061 () Bool)

(assert (=> b!7476126 (= c!1381061 (is-Nil!72192 s!13591))))

(declare-fun b!7476127 () Bool)

(declare-fun e!4459870 () Bool)

(declare-fun lt!2627193 () Option!17157)

(assert (=> b!7476127 (= e!4459870 (not (isDefined!13846 lt!2627193)))))

(declare-fun b!7476128 () Bool)

(declare-fun e!4459872 () Bool)

(declare-fun ++!17214 (List!72316 List!72316) List!72316)

(assert (=> b!7476128 (= e!4459872 (= (++!17214 (_1!37628 (get!25264 lt!2627193)) (_2!37628 (get!25264 lt!2627193))) s!13591))))

(declare-fun d!2299494 () Bool)

(assert (=> d!2299494 e!4459870))

(declare-fun res!2999372 () Bool)

(assert (=> d!2299494 (=> res!2999372 e!4459870)))

(assert (=> d!2299494 (= res!2999372 e!4459872)))

(declare-fun res!2999371 () Bool)

(assert (=> d!2299494 (=> (not res!2999371) (not e!4459872))))

(assert (=> d!2299494 (= res!2999371 (isDefined!13846 lt!2627193))))

(assert (=> d!2299494 (= lt!2627193 e!4459868)))

(declare-fun c!1381060 () Bool)

(declare-fun e!4459871 () Bool)

(assert (=> d!2299494 (= c!1381060 e!4459871)))

(declare-fun res!2999370 () Bool)

(assert (=> d!2299494 (=> (not res!2999370) (not e!4459871))))

(assert (=> d!2299494 (= res!2999370 (matchR!9364 lt!2627112 Nil!72192))))

(assert (=> d!2299494 (validRegex!10114 lt!2627112)))

(assert (=> d!2299494 (= (findConcatSeparation!3279 lt!2627112 rTail!78 Nil!72192 s!13591 s!13591) lt!2627193)))

(declare-fun b!7476129 () Bool)

(declare-fun lt!2627194 () Unit!166035)

(declare-fun lt!2627195 () Unit!166035)

(assert (=> b!7476129 (= lt!2627194 lt!2627195)))

(assert (=> b!7476129 (= (++!17214 (++!17214 Nil!72192 (Cons!72192 (h!78640 s!13591) Nil!72192)) (t!386885 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3090 (List!72316 C!39474 List!72316 List!72316) Unit!166035)

(assert (=> b!7476129 (= lt!2627195 (lemmaMoveElementToOtherListKeepsConcatEq!3090 Nil!72192 (h!78640 s!13591) (t!386885 s!13591) s!13591))))

(assert (=> b!7476129 (= e!4459869 (findConcatSeparation!3279 lt!2627112 rTail!78 (++!17214 Nil!72192 (Cons!72192 (h!78640 s!13591) Nil!72192)) (t!386885 s!13591) s!13591))))

(declare-fun b!7476130 () Bool)

(declare-fun res!2999373 () Bool)

(assert (=> b!7476130 (=> (not res!2999373) (not e!4459872))))

(assert (=> b!7476130 (= res!2999373 (matchR!9364 lt!2627112 (_1!37628 (get!25264 lt!2627193))))))

(declare-fun b!7476131 () Bool)

(declare-fun res!2999369 () Bool)

(assert (=> b!7476131 (=> (not res!2999369) (not e!4459872))))

(assert (=> b!7476131 (= res!2999369 (matchR!9364 rTail!78 (_2!37628 (get!25264 lt!2627193))))))

(declare-fun b!7476132 () Bool)

(assert (=> b!7476132 (= e!4459871 (matchR!9364 rTail!78 s!13591))))

(assert (= (and d!2299494 res!2999370) b!7476132))

(assert (= (and d!2299494 c!1381060) b!7476124))

(assert (= (and d!2299494 (not c!1381060)) b!7476126))

(assert (= (and b!7476126 c!1381061) b!7476125))

(assert (= (and b!7476126 (not c!1381061)) b!7476129))

(assert (= (and d!2299494 res!2999371) b!7476130))

(assert (= (and b!7476130 res!2999373) b!7476131))

(assert (= (and b!7476131 res!2999369) b!7476128))

(assert (= (and d!2299494 (not res!2999372)) b!7476127))

(declare-fun m!8070634 () Bool)

(assert (=> b!7476131 m!8070634))

(declare-fun m!8070636 () Bool)

(assert (=> b!7476131 m!8070636))

(declare-fun m!8070638 () Bool)

(assert (=> b!7476127 m!8070638))

(assert (=> b!7476128 m!8070634))

(declare-fun m!8070640 () Bool)

(assert (=> b!7476128 m!8070640))

(declare-fun m!8070642 () Bool)

(assert (=> b!7476129 m!8070642))

(assert (=> b!7476129 m!8070642))

(declare-fun m!8070644 () Bool)

(assert (=> b!7476129 m!8070644))

(declare-fun m!8070646 () Bool)

(assert (=> b!7476129 m!8070646))

(assert (=> b!7476129 m!8070642))

(declare-fun m!8070648 () Bool)

(assert (=> b!7476129 m!8070648))

(assert (=> d!2299494 m!8070638))

(declare-fun m!8070650 () Bool)

(assert (=> d!2299494 m!8070650))

(declare-fun m!8070652 () Bool)

(assert (=> d!2299494 m!8070652))

(declare-fun m!8070654 () Bool)

(assert (=> b!7476132 m!8070654))

(assert (=> b!7476130 m!8070634))

(declare-fun m!8070656 () Bool)

(assert (=> b!7476130 m!8070656))

(assert (=> b!7475803 d!2299494))

(declare-fun d!2299498 () Bool)

(assert (=> d!2299498 (= (Exists!4219 lambda!463138) (choose!57787 lambda!463138))))

(declare-fun bs!1931855 () Bool)

(assert (= bs!1931855 d!2299498))

(declare-fun m!8070658 () Bool)

(assert (=> bs!1931855 m!8070658))

(assert (=> b!7475803 d!2299498))

(declare-fun d!2299500 () Bool)

(assert (=> d!2299500 (= (get!25264 lt!2627111) (v!54285 lt!2627111))))

(assert (=> b!7475803 d!2299500))

(declare-fun bs!1931856 () Bool)

(declare-fun d!2299502 () Bool)

(assert (= bs!1931856 (and d!2299502 b!7476022)))

(declare-fun lambda!463160 () Int)

(assert (=> bs!1931856 (not (= lambda!463160 lambda!463155))))

(declare-fun bs!1931857 () Bool)

(assert (= bs!1931857 (and d!2299502 b!7475803)))

(assert (=> bs!1931857 (= lambda!463160 lambda!463138)))

(declare-fun bs!1931858 () Bool)

(assert (= bs!1931858 (and d!2299502 b!7476012)))

(assert (=> bs!1931858 (not (= lambda!463160 lambda!463154))))

(declare-fun bs!1931859 () Bool)

(assert (= bs!1931859 (and d!2299502 b!7475960)))

(assert (=> bs!1931859 (not (= lambda!463160 lambda!463153))))

(assert (=> bs!1931857 (not (= lambda!463160 lambda!463139))))

(declare-fun bs!1931860 () Bool)

(assert (= bs!1931860 (and d!2299502 b!7475950)))

(assert (=> bs!1931860 (not (= lambda!463160 lambda!463152))))

(assert (=> d!2299502 true))

(assert (=> d!2299502 true))

(assert (=> d!2299502 true))

(assert (=> d!2299502 (= (isDefined!13846 (findConcatSeparation!3279 lt!2627112 rTail!78 Nil!72192 s!13591 s!13591)) (Exists!4219 lambda!463160))))

(declare-fun lt!2627198 () Unit!166035)

(declare-fun choose!57788 (Regex!19600 Regex!19600 List!72316) Unit!166035)

(assert (=> d!2299502 (= lt!2627198 (choose!57788 lt!2627112 rTail!78 s!13591))))

(assert (=> d!2299502 (validRegex!10114 lt!2627112)))

(assert (=> d!2299502 (= (lemmaFindConcatSeparationEquivalentToExists!3037 lt!2627112 rTail!78 s!13591) lt!2627198)))

(declare-fun bs!1931861 () Bool)

(assert (= bs!1931861 d!2299502))

(assert (=> bs!1931861 m!8070456))

(assert (=> bs!1931861 m!8070652))

(assert (=> bs!1931861 m!8070456))

(declare-fun m!8070660 () Bool)

(assert (=> bs!1931861 m!8070660))

(declare-fun m!8070662 () Bool)

(assert (=> bs!1931861 m!8070662))

(declare-fun m!8070664 () Bool)

(assert (=> bs!1931861 m!8070664))

(assert (=> b!7475803 d!2299502))

(declare-fun bs!1931862 () Bool)

(declare-fun d!2299504 () Bool)

(assert (= bs!1931862 (and d!2299504 b!7476022)))

(declare-fun lambda!463167 () Int)

(assert (=> bs!1931862 (not (= lambda!463167 lambda!463155))))

(declare-fun bs!1931863 () Bool)

(assert (= bs!1931863 (and d!2299504 b!7476012)))

(assert (=> bs!1931863 (not (= lambda!463167 lambda!463154))))

(declare-fun bs!1931864 () Bool)

(assert (= bs!1931864 (and d!2299504 b!7475960)))

(assert (=> bs!1931864 (not (= lambda!463167 lambda!463153))))

(declare-fun bs!1931865 () Bool)

(assert (= bs!1931865 (and d!2299504 d!2299502)))

(assert (=> bs!1931865 (= lambda!463167 lambda!463160)))

(declare-fun bs!1931866 () Bool)

(assert (= bs!1931866 (and d!2299504 b!7475803)))

(assert (=> bs!1931866 (= lambda!463167 lambda!463138)))

(assert (=> bs!1931866 (not (= lambda!463167 lambda!463139))))

(declare-fun bs!1931867 () Bool)

(assert (= bs!1931867 (and d!2299504 b!7475950)))

(assert (=> bs!1931867 (not (= lambda!463167 lambda!463152))))

(assert (=> d!2299504 true))

(assert (=> d!2299504 true))

(assert (=> d!2299504 true))

(declare-fun lambda!463168 () Int)

(assert (=> bs!1931863 (not (= lambda!463168 lambda!463154))))

(assert (=> bs!1931864 (= (and (= lt!2627112 (regOne!39712 lt!2627117)) (= rTail!78 (regTwo!39712 lt!2627117))) (= lambda!463168 lambda!463153))))

(assert (=> bs!1931862 (= (and (= lt!2627112 (regOne!39712 lt!2627115)) (= rTail!78 (regTwo!39712 lt!2627115))) (= lambda!463168 lambda!463155))))

(declare-fun bs!1931868 () Bool)

(assert (= bs!1931868 d!2299504))

(assert (=> bs!1931868 (not (= lambda!463168 lambda!463167))))

(assert (=> bs!1931865 (not (= lambda!463168 lambda!463160))))

(assert (=> bs!1931866 (not (= lambda!463168 lambda!463138))))

(assert (=> bs!1931866 (= lambda!463168 lambda!463139)))

(assert (=> bs!1931867 (not (= lambda!463168 lambda!463152))))

(assert (=> d!2299504 true))

(assert (=> d!2299504 true))

(assert (=> d!2299504 true))

(assert (=> d!2299504 (= (Exists!4219 lambda!463167) (Exists!4219 lambda!463168))))

(declare-fun lt!2627201 () Unit!166035)

(declare-fun choose!57789 (Regex!19600 Regex!19600 List!72316) Unit!166035)

(assert (=> d!2299504 (= lt!2627201 (choose!57789 lt!2627112 rTail!78 s!13591))))

(assert (=> d!2299504 (validRegex!10114 lt!2627112)))

(assert (=> d!2299504 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2553 lt!2627112 rTail!78 s!13591) lt!2627201)))

(declare-fun m!8070666 () Bool)

(assert (=> bs!1931868 m!8070666))

(declare-fun m!8070668 () Bool)

(assert (=> bs!1931868 m!8070668))

(declare-fun m!8070670 () Bool)

(assert (=> bs!1931868 m!8070670))

(assert (=> bs!1931868 m!8070652))

(assert (=> b!7475803 d!2299504))

(declare-fun d!2299506 () Bool)

(declare-fun isEmpty!41192 (Option!17157) Bool)

(assert (=> d!2299506 (= (isDefined!13846 lt!2627111) (not (isEmpty!41192 lt!2627111)))))

(declare-fun bs!1931869 () Bool)

(assert (= bs!1931869 d!2299506))

(declare-fun m!8070672 () Bool)

(assert (=> bs!1931869 m!8070672))

(assert (=> b!7475803 d!2299506))

(declare-fun b!7476177 () Bool)

(declare-fun res!2999404 () Bool)

(declare-fun e!4459897 () Bool)

(assert (=> b!7476177 (=> (not res!2999404) (not e!4459897))))

(declare-fun call!686386 () Bool)

(assert (=> b!7476177 (= res!2999404 (not call!686386))))

(declare-fun b!7476178 () Bool)

(declare-fun e!4459899 () Bool)

(assert (=> b!7476178 (= e!4459899 (not (= (head!15337 (_1!37628 lt!2627113)) (c!1381001 lt!2627112))))))

(declare-fun b!7476179 () Bool)

(assert (=> b!7476179 (= e!4459897 (= (head!15337 (_1!37628 lt!2627113)) (c!1381001 lt!2627112)))))

(declare-fun b!7476180 () Bool)

(declare-fun res!2999403 () Bool)

(assert (=> b!7476180 (=> res!2999403 e!4459899)))

(assert (=> b!7476180 (= res!2999403 (not (isEmpty!41191 (tail!14906 (_1!37628 lt!2627113)))))))

(declare-fun b!7476181 () Bool)

(declare-fun res!2999408 () Bool)

(declare-fun e!4459902 () Bool)

(assert (=> b!7476181 (=> res!2999408 e!4459902)))

(assert (=> b!7476181 (= res!2999408 (not (is-ElementMatch!19600 lt!2627112)))))

(declare-fun e!4459901 () Bool)

(assert (=> b!7476181 (= e!4459901 e!4459902)))

(declare-fun b!7476182 () Bool)

(declare-fun e!4459903 () Bool)

(declare-fun lt!2627202 () Bool)

(assert (=> b!7476182 (= e!4459903 (= lt!2627202 call!686386))))

(declare-fun b!7476183 () Bool)

(declare-fun res!2999402 () Bool)

(assert (=> b!7476183 (=> res!2999402 e!4459902)))

(assert (=> b!7476183 (= res!2999402 e!4459897)))

(declare-fun res!2999406 () Bool)

(assert (=> b!7476183 (=> (not res!2999406) (not e!4459897))))

(assert (=> b!7476183 (= res!2999406 lt!2627202)))

(declare-fun d!2299508 () Bool)

(assert (=> d!2299508 e!4459903))

(declare-fun c!1381070 () Bool)

(assert (=> d!2299508 (= c!1381070 (is-EmptyExpr!19600 lt!2627112))))

(declare-fun e!4459898 () Bool)

(assert (=> d!2299508 (= lt!2627202 e!4459898)))

(declare-fun c!1381072 () Bool)

(assert (=> d!2299508 (= c!1381072 (isEmpty!41191 (_1!37628 lt!2627113)))))

(assert (=> d!2299508 (validRegex!10114 lt!2627112)))

(assert (=> d!2299508 (= (matchR!9364 lt!2627112 (_1!37628 lt!2627113)) lt!2627202)))

(declare-fun b!7476184 () Bool)

(declare-fun e!4459900 () Bool)

(assert (=> b!7476184 (= e!4459902 e!4459900)))

(declare-fun res!2999409 () Bool)

(assert (=> b!7476184 (=> (not res!2999409) (not e!4459900))))

(assert (=> b!7476184 (= res!2999409 (not lt!2627202))))

(declare-fun b!7476185 () Bool)

(assert (=> b!7476185 (= e!4459900 e!4459899)))

(declare-fun res!2999405 () Bool)

(assert (=> b!7476185 (=> res!2999405 e!4459899)))

(assert (=> b!7476185 (= res!2999405 call!686386)))

(declare-fun bm!686381 () Bool)

(assert (=> bm!686381 (= call!686386 (isEmpty!41191 (_1!37628 lt!2627113)))))

(declare-fun b!7476186 () Bool)

(assert (=> b!7476186 (= e!4459898 (matchR!9364 (derivativeStep!5597 lt!2627112 (head!15337 (_1!37628 lt!2627113))) (tail!14906 (_1!37628 lt!2627113))))))

(declare-fun b!7476187 () Bool)

(assert (=> b!7476187 (= e!4459898 (nullable!8538 lt!2627112))))

(declare-fun b!7476188 () Bool)

(declare-fun res!2999407 () Bool)

(assert (=> b!7476188 (=> (not res!2999407) (not e!4459897))))

(assert (=> b!7476188 (= res!2999407 (isEmpty!41191 (tail!14906 (_1!37628 lt!2627113))))))

(declare-fun b!7476189 () Bool)

(assert (=> b!7476189 (= e!4459903 e!4459901)))

(declare-fun c!1381071 () Bool)

(assert (=> b!7476189 (= c!1381071 (is-EmptyLang!19600 lt!2627112))))

(declare-fun b!7476190 () Bool)

(assert (=> b!7476190 (= e!4459901 (not lt!2627202))))

(assert (= (and d!2299508 c!1381072) b!7476187))

(assert (= (and d!2299508 (not c!1381072)) b!7476186))

(assert (= (and d!2299508 c!1381070) b!7476182))

(assert (= (and d!2299508 (not c!1381070)) b!7476189))

(assert (= (and b!7476189 c!1381071) b!7476190))

(assert (= (and b!7476189 (not c!1381071)) b!7476181))

(assert (= (and b!7476181 (not res!2999408)) b!7476183))

(assert (= (and b!7476183 res!2999406) b!7476177))

(assert (= (and b!7476177 res!2999404) b!7476188))

(assert (= (and b!7476188 res!2999407) b!7476179))

(assert (= (and b!7476183 (not res!2999402)) b!7476184))

(assert (= (and b!7476184 res!2999409) b!7476185))

(assert (= (and b!7476185 (not res!2999405)) b!7476180))

(assert (= (and b!7476180 (not res!2999403)) b!7476178))

(assert (= (or b!7476182 b!7476177 b!7476185) bm!686381))

(declare-fun m!8070674 () Bool)

(assert (=> b!7476187 m!8070674))

(declare-fun m!8070676 () Bool)

(assert (=> bm!686381 m!8070676))

(declare-fun m!8070678 () Bool)

(assert (=> b!7476186 m!8070678))

(assert (=> b!7476186 m!8070678))

(declare-fun m!8070680 () Bool)

(assert (=> b!7476186 m!8070680))

(declare-fun m!8070682 () Bool)

(assert (=> b!7476186 m!8070682))

(assert (=> b!7476186 m!8070680))

(assert (=> b!7476186 m!8070682))

(declare-fun m!8070684 () Bool)

(assert (=> b!7476186 m!8070684))

(assert (=> b!7476179 m!8070678))

(assert (=> d!2299508 m!8070676))

(assert (=> d!2299508 m!8070652))

(assert (=> b!7476188 m!8070682))

(assert (=> b!7476188 m!8070682))

(declare-fun m!8070686 () Bool)

(assert (=> b!7476188 m!8070686))

(assert (=> b!7476180 m!8070682))

(assert (=> b!7476180 m!8070682))

(assert (=> b!7476180 m!8070686))

(assert (=> b!7476178 m!8070678))

(assert (=> b!7475803 d!2299508))

(declare-fun bm!686382 () Bool)

(declare-fun call!686389 () Bool)

(declare-fun call!686387 () Bool)

(assert (=> bm!686382 (= call!686389 call!686387)))

(declare-fun b!7476191 () Bool)

(declare-fun e!4459910 () Bool)

(declare-fun e!4459908 () Bool)

(assert (=> b!7476191 (= e!4459910 e!4459908)))

(declare-fun res!2999411 () Bool)

(assert (=> b!7476191 (=> (not res!2999411) (not e!4459908))))

(declare-fun call!686388 () Bool)

(assert (=> b!7476191 (= res!2999411 call!686388)))

(declare-fun d!2299510 () Bool)

(declare-fun res!2999414 () Bool)

(declare-fun e!4459907 () Bool)

(assert (=> d!2299510 (=> res!2999414 e!4459907)))

(assert (=> d!2299510 (= res!2999414 (is-ElementMatch!19600 rTail!78))))

(assert (=> d!2299510 (= (validRegex!10114 rTail!78) e!4459907)))

(declare-fun b!7476192 () Bool)

(declare-fun e!4459909 () Bool)

(assert (=> b!7476192 (= e!4459909 call!686387)))

(declare-fun c!1381074 () Bool)

(declare-fun bm!686383 () Bool)

(declare-fun c!1381073 () Bool)

(assert (=> bm!686383 (= call!686387 (validRegex!10114 (ite c!1381073 (reg!19929 rTail!78) (ite c!1381074 (regTwo!39713 rTail!78) (regTwo!39712 rTail!78)))))))

(declare-fun bm!686384 () Bool)

(assert (=> bm!686384 (= call!686388 (validRegex!10114 (ite c!1381074 (regOne!39713 rTail!78) (regOne!39712 rTail!78))))))

(declare-fun b!7476193 () Bool)

(declare-fun e!4459904 () Bool)

(assert (=> b!7476193 (= e!4459904 e!4459909)))

(declare-fun res!2999412 () Bool)

(assert (=> b!7476193 (= res!2999412 (not (nullable!8538 (reg!19929 rTail!78))))))

(assert (=> b!7476193 (=> (not res!2999412) (not e!4459909))))

(declare-fun b!7476194 () Bool)

(assert (=> b!7476194 (= e!4459907 e!4459904)))

(assert (=> b!7476194 (= c!1381073 (is-Star!19600 rTail!78))))

(declare-fun b!7476195 () Bool)

(declare-fun res!2999413 () Bool)

(assert (=> b!7476195 (=> res!2999413 e!4459910)))

(assert (=> b!7476195 (= res!2999413 (not (is-Concat!28445 rTail!78)))))

(declare-fun e!4459905 () Bool)

(assert (=> b!7476195 (= e!4459905 e!4459910)))

(declare-fun b!7476196 () Bool)

(assert (=> b!7476196 (= e!4459904 e!4459905)))

(assert (=> b!7476196 (= c!1381074 (is-Union!19600 rTail!78))))

(declare-fun b!7476197 () Bool)

(declare-fun e!4459906 () Bool)

(assert (=> b!7476197 (= e!4459906 call!686389)))

(declare-fun b!7476198 () Bool)

(declare-fun res!2999410 () Bool)

(assert (=> b!7476198 (=> (not res!2999410) (not e!4459906))))

(assert (=> b!7476198 (= res!2999410 call!686388)))

(assert (=> b!7476198 (= e!4459905 e!4459906)))

(declare-fun b!7476199 () Bool)

(assert (=> b!7476199 (= e!4459908 call!686389)))

(assert (= (and d!2299510 (not res!2999414)) b!7476194))

(assert (= (and b!7476194 c!1381073) b!7476193))

(assert (= (and b!7476194 (not c!1381073)) b!7476196))

(assert (= (and b!7476193 res!2999412) b!7476192))

(assert (= (and b!7476196 c!1381074) b!7476198))

(assert (= (and b!7476196 (not c!1381074)) b!7476195))

(assert (= (and b!7476198 res!2999410) b!7476197))

(assert (= (and b!7476195 (not res!2999413)) b!7476191))

(assert (= (and b!7476191 res!2999411) b!7476199))

(assert (= (or b!7476197 b!7476199) bm!686382))

(assert (= (or b!7476198 b!7476191) bm!686384))

(assert (= (or b!7476192 bm!686382) bm!686383))

(declare-fun m!8070688 () Bool)

(assert (=> bm!686383 m!8070688))

(declare-fun m!8070690 () Bool)

(assert (=> bm!686384 m!8070690))

(declare-fun m!8070692 () Bool)

(assert (=> b!7476193 m!8070692))

(assert (=> b!7475801 d!2299510))

(declare-fun b!7476200 () Bool)

(declare-fun res!2999417 () Bool)

(declare-fun e!4459911 () Bool)

(assert (=> b!7476200 (=> (not res!2999417) (not e!4459911))))

(declare-fun call!686390 () Bool)

(assert (=> b!7476200 (= res!2999417 (not call!686390))))

(declare-fun b!7476201 () Bool)

(declare-fun e!4459913 () Bool)

(assert (=> b!7476201 (= e!4459913 (not (= (head!15337 (_2!37628 lt!2627113)) (c!1381001 rTail!78))))))

(declare-fun b!7476202 () Bool)

(assert (=> b!7476202 (= e!4459911 (= (head!15337 (_2!37628 lt!2627113)) (c!1381001 rTail!78)))))

(declare-fun b!7476203 () Bool)

(declare-fun res!2999416 () Bool)

(assert (=> b!7476203 (=> res!2999416 e!4459913)))

(assert (=> b!7476203 (= res!2999416 (not (isEmpty!41191 (tail!14906 (_2!37628 lt!2627113)))))))

(declare-fun b!7476204 () Bool)

(declare-fun res!2999421 () Bool)

(declare-fun e!4459916 () Bool)

(assert (=> b!7476204 (=> res!2999421 e!4459916)))

(assert (=> b!7476204 (= res!2999421 (not (is-ElementMatch!19600 rTail!78)))))

(declare-fun e!4459915 () Bool)

(assert (=> b!7476204 (= e!4459915 e!4459916)))

(declare-fun b!7476205 () Bool)

(declare-fun e!4459917 () Bool)

(declare-fun lt!2627203 () Bool)

(assert (=> b!7476205 (= e!4459917 (= lt!2627203 call!686390))))

(declare-fun b!7476206 () Bool)

(declare-fun res!2999415 () Bool)

(assert (=> b!7476206 (=> res!2999415 e!4459916)))

(assert (=> b!7476206 (= res!2999415 e!4459911)))

(declare-fun res!2999419 () Bool)

(assert (=> b!7476206 (=> (not res!2999419) (not e!4459911))))

(assert (=> b!7476206 (= res!2999419 lt!2627203)))

(declare-fun d!2299512 () Bool)

(assert (=> d!2299512 e!4459917))

(declare-fun c!1381075 () Bool)

(assert (=> d!2299512 (= c!1381075 (is-EmptyExpr!19600 rTail!78))))

(declare-fun e!4459912 () Bool)

(assert (=> d!2299512 (= lt!2627203 e!4459912)))

(declare-fun c!1381077 () Bool)

(assert (=> d!2299512 (= c!1381077 (isEmpty!41191 (_2!37628 lt!2627113)))))

(assert (=> d!2299512 (validRegex!10114 rTail!78)))

(assert (=> d!2299512 (= (matchR!9364 rTail!78 (_2!37628 lt!2627113)) lt!2627203)))

(declare-fun b!7476207 () Bool)

(declare-fun e!4459914 () Bool)

(assert (=> b!7476207 (= e!4459916 e!4459914)))

(declare-fun res!2999422 () Bool)

(assert (=> b!7476207 (=> (not res!2999422) (not e!4459914))))

(assert (=> b!7476207 (= res!2999422 (not lt!2627203))))

(declare-fun b!7476208 () Bool)

(assert (=> b!7476208 (= e!4459914 e!4459913)))

(declare-fun res!2999418 () Bool)

(assert (=> b!7476208 (=> res!2999418 e!4459913)))

(assert (=> b!7476208 (= res!2999418 call!686390)))

(declare-fun bm!686385 () Bool)

(assert (=> bm!686385 (= call!686390 (isEmpty!41191 (_2!37628 lt!2627113)))))

(declare-fun b!7476209 () Bool)

(assert (=> b!7476209 (= e!4459912 (matchR!9364 (derivativeStep!5597 rTail!78 (head!15337 (_2!37628 lt!2627113))) (tail!14906 (_2!37628 lt!2627113))))))

(declare-fun b!7476210 () Bool)

(assert (=> b!7476210 (= e!4459912 (nullable!8538 rTail!78))))

(declare-fun b!7476211 () Bool)

(declare-fun res!2999420 () Bool)

(assert (=> b!7476211 (=> (not res!2999420) (not e!4459911))))

(assert (=> b!7476211 (= res!2999420 (isEmpty!41191 (tail!14906 (_2!37628 lt!2627113))))))

(declare-fun b!7476212 () Bool)

(assert (=> b!7476212 (= e!4459917 e!4459915)))

(declare-fun c!1381076 () Bool)

(assert (=> b!7476212 (= c!1381076 (is-EmptyLang!19600 rTail!78))))

(declare-fun b!7476213 () Bool)

(assert (=> b!7476213 (= e!4459915 (not lt!2627203))))

(assert (= (and d!2299512 c!1381077) b!7476210))

(assert (= (and d!2299512 (not c!1381077)) b!7476209))

(assert (= (and d!2299512 c!1381075) b!7476205))

(assert (= (and d!2299512 (not c!1381075)) b!7476212))

(assert (= (and b!7476212 c!1381076) b!7476213))

(assert (= (and b!7476212 (not c!1381076)) b!7476204))

(assert (= (and b!7476204 (not res!2999421)) b!7476206))

(assert (= (and b!7476206 res!2999419) b!7476200))

(assert (= (and b!7476200 res!2999417) b!7476211))

(assert (= (and b!7476211 res!2999420) b!7476202))

(assert (= (and b!7476206 (not res!2999415)) b!7476207))

(assert (= (and b!7476207 res!2999422) b!7476208))

(assert (= (and b!7476208 (not res!2999418)) b!7476203))

(assert (= (and b!7476203 (not res!2999416)) b!7476201))

(assert (= (or b!7476205 b!7476200 b!7476208) bm!686385))

(declare-fun m!8070694 () Bool)

(assert (=> b!7476210 m!8070694))

(declare-fun m!8070696 () Bool)

(assert (=> bm!686385 m!8070696))

(declare-fun m!8070698 () Bool)

(assert (=> b!7476209 m!8070698))

(assert (=> b!7476209 m!8070698))

(declare-fun m!8070700 () Bool)

(assert (=> b!7476209 m!8070700))

(declare-fun m!8070702 () Bool)

(assert (=> b!7476209 m!8070702))

(assert (=> b!7476209 m!8070700))

(assert (=> b!7476209 m!8070702))

(declare-fun m!8070704 () Bool)

(assert (=> b!7476209 m!8070704))

(assert (=> b!7476202 m!8070698))

(assert (=> d!2299512 m!8070696))

(assert (=> d!2299512 m!8070440))

(assert (=> b!7476211 m!8070702))

(assert (=> b!7476211 m!8070702))

(declare-fun m!8070706 () Bool)

(assert (=> b!7476211 m!8070706))

(assert (=> b!7476203 m!8070702))

(assert (=> b!7476203 m!8070702))

(assert (=> b!7476203 m!8070706))

(assert (=> b!7476201 m!8070698))

(assert (=> b!7475795 d!2299512))

(declare-fun bm!686388 () Bool)

(declare-fun call!686395 () Bool)

(declare-fun call!686393 () Bool)

(assert (=> bm!686388 (= call!686395 call!686393)))

(declare-fun b!7476225 () Bool)

(declare-fun e!4459931 () Bool)

(declare-fun e!4459929 () Bool)

(assert (=> b!7476225 (= e!4459931 e!4459929)))

(declare-fun res!2999427 () Bool)

(assert (=> b!7476225 (=> (not res!2999427) (not e!4459929))))

(declare-fun call!686394 () Bool)

(assert (=> b!7476225 (= res!2999427 call!686394)))

(declare-fun d!2299514 () Bool)

(declare-fun res!2999430 () Bool)

(declare-fun e!4459928 () Bool)

(assert (=> d!2299514 (=> res!2999430 e!4459928)))

(assert (=> d!2299514 (= res!2999430 (is-ElementMatch!19600 r1!5845))))

(assert (=> d!2299514 (= (validRegex!10114 r1!5845) e!4459928)))

(declare-fun b!7476226 () Bool)

(declare-fun e!4459930 () Bool)

(assert (=> b!7476226 (= e!4459930 call!686393)))

(declare-fun c!1381082 () Bool)

(declare-fun c!1381083 () Bool)

(declare-fun bm!686389 () Bool)

(assert (=> bm!686389 (= call!686393 (validRegex!10114 (ite c!1381082 (reg!19929 r1!5845) (ite c!1381083 (regTwo!39713 r1!5845) (regTwo!39712 r1!5845)))))))

(declare-fun bm!686390 () Bool)

(assert (=> bm!686390 (= call!686394 (validRegex!10114 (ite c!1381083 (regOne!39713 r1!5845) (regOne!39712 r1!5845))))))

(declare-fun b!7476227 () Bool)

(declare-fun e!4459925 () Bool)

(assert (=> b!7476227 (= e!4459925 e!4459930)))

(declare-fun res!2999428 () Bool)

(assert (=> b!7476227 (= res!2999428 (not (nullable!8538 (reg!19929 r1!5845))))))

(assert (=> b!7476227 (=> (not res!2999428) (not e!4459930))))

(declare-fun b!7476228 () Bool)

(assert (=> b!7476228 (= e!4459928 e!4459925)))

(assert (=> b!7476228 (= c!1381082 (is-Star!19600 r1!5845))))

(declare-fun b!7476229 () Bool)

(declare-fun res!2999429 () Bool)

(assert (=> b!7476229 (=> res!2999429 e!4459931)))

(assert (=> b!7476229 (= res!2999429 (not (is-Concat!28445 r1!5845)))))

(declare-fun e!4459926 () Bool)

(assert (=> b!7476229 (= e!4459926 e!4459931)))

(declare-fun b!7476230 () Bool)

(assert (=> b!7476230 (= e!4459925 e!4459926)))

(assert (=> b!7476230 (= c!1381083 (is-Union!19600 r1!5845))))

(declare-fun b!7476231 () Bool)

(declare-fun e!4459927 () Bool)

(assert (=> b!7476231 (= e!4459927 call!686395)))

(declare-fun b!7476232 () Bool)

(declare-fun res!2999426 () Bool)

(assert (=> b!7476232 (=> (not res!2999426) (not e!4459927))))

(assert (=> b!7476232 (= res!2999426 call!686394)))

(assert (=> b!7476232 (= e!4459926 e!4459927)))

(declare-fun b!7476233 () Bool)

(assert (=> b!7476233 (= e!4459929 call!686395)))

(assert (= (and d!2299514 (not res!2999430)) b!7476228))

(assert (= (and b!7476228 c!1381082) b!7476227))

(assert (= (and b!7476228 (not c!1381082)) b!7476230))

(assert (= (and b!7476227 res!2999428) b!7476226))

(assert (= (and b!7476230 c!1381083) b!7476232))

(assert (= (and b!7476230 (not c!1381083)) b!7476229))

(assert (= (and b!7476232 res!2999426) b!7476231))

(assert (= (and b!7476229 (not res!2999429)) b!7476225))

(assert (= (and b!7476225 res!2999427) b!7476233))

(assert (= (or b!7476231 b!7476233) bm!686388))

(assert (= (or b!7476232 b!7476225) bm!686390))

(assert (= (or b!7476226 bm!686388) bm!686389))

(declare-fun m!8070708 () Bool)

(assert (=> bm!686389 m!8070708))

(declare-fun m!8070710 () Bool)

(assert (=> bm!686390 m!8070710))

(declare-fun m!8070712 () Bool)

(assert (=> b!7476227 m!8070712))

(assert (=> start!724520 d!2299514))

(declare-fun b!7476234 () Bool)

(declare-fun res!2999433 () Bool)

(declare-fun e!4459932 () Bool)

(assert (=> b!7476234 (=> (not res!2999433) (not e!4459932))))

(declare-fun call!686396 () Bool)

(assert (=> b!7476234 (= res!2999433 (not call!686396))))

(declare-fun b!7476235 () Bool)

(declare-fun e!4459934 () Bool)

(assert (=> b!7476235 (= e!4459934 (not (= (head!15337 (_1!37628 lt!2627113)) (c!1381001 r1!5845))))))

(declare-fun b!7476236 () Bool)

(assert (=> b!7476236 (= e!4459932 (= (head!15337 (_1!37628 lt!2627113)) (c!1381001 r1!5845)))))

(declare-fun b!7476237 () Bool)

(declare-fun res!2999432 () Bool)

(assert (=> b!7476237 (=> res!2999432 e!4459934)))

(assert (=> b!7476237 (= res!2999432 (not (isEmpty!41191 (tail!14906 (_1!37628 lt!2627113)))))))

(declare-fun b!7476238 () Bool)

(declare-fun res!2999437 () Bool)

(declare-fun e!4459937 () Bool)

(assert (=> b!7476238 (=> res!2999437 e!4459937)))

(assert (=> b!7476238 (= res!2999437 (not (is-ElementMatch!19600 r1!5845)))))

(declare-fun e!4459936 () Bool)

(assert (=> b!7476238 (= e!4459936 e!4459937)))

(declare-fun b!7476239 () Bool)

(declare-fun e!4459938 () Bool)

(declare-fun lt!2627204 () Bool)

(assert (=> b!7476239 (= e!4459938 (= lt!2627204 call!686396))))

(declare-fun b!7476240 () Bool)

(declare-fun res!2999431 () Bool)

(assert (=> b!7476240 (=> res!2999431 e!4459937)))

(assert (=> b!7476240 (= res!2999431 e!4459932)))

(declare-fun res!2999435 () Bool)

(assert (=> b!7476240 (=> (not res!2999435) (not e!4459932))))

(assert (=> b!7476240 (= res!2999435 lt!2627204)))

(declare-fun d!2299516 () Bool)

(assert (=> d!2299516 e!4459938))

(declare-fun c!1381084 () Bool)

(assert (=> d!2299516 (= c!1381084 (is-EmptyExpr!19600 r1!5845))))

(declare-fun e!4459933 () Bool)

(assert (=> d!2299516 (= lt!2627204 e!4459933)))

(declare-fun c!1381086 () Bool)

(assert (=> d!2299516 (= c!1381086 (isEmpty!41191 (_1!37628 lt!2627113)))))

(assert (=> d!2299516 (validRegex!10114 r1!5845)))

(assert (=> d!2299516 (= (matchR!9364 r1!5845 (_1!37628 lt!2627113)) lt!2627204)))

(declare-fun b!7476241 () Bool)

(declare-fun e!4459935 () Bool)

(assert (=> b!7476241 (= e!4459937 e!4459935)))

(declare-fun res!2999438 () Bool)

(assert (=> b!7476241 (=> (not res!2999438) (not e!4459935))))

(assert (=> b!7476241 (= res!2999438 (not lt!2627204))))

(declare-fun b!7476242 () Bool)

(assert (=> b!7476242 (= e!4459935 e!4459934)))

(declare-fun res!2999434 () Bool)

(assert (=> b!7476242 (=> res!2999434 e!4459934)))

(assert (=> b!7476242 (= res!2999434 call!686396)))

(declare-fun bm!686391 () Bool)

(assert (=> bm!686391 (= call!686396 (isEmpty!41191 (_1!37628 lt!2627113)))))

(declare-fun b!7476243 () Bool)

(assert (=> b!7476243 (= e!4459933 (matchR!9364 (derivativeStep!5597 r1!5845 (head!15337 (_1!37628 lt!2627113))) (tail!14906 (_1!37628 lt!2627113))))))

(declare-fun b!7476244 () Bool)

(assert (=> b!7476244 (= e!4459933 (nullable!8538 r1!5845))))

(declare-fun b!7476245 () Bool)

(declare-fun res!2999436 () Bool)

(assert (=> b!7476245 (=> (not res!2999436) (not e!4459932))))

(assert (=> b!7476245 (= res!2999436 (isEmpty!41191 (tail!14906 (_1!37628 lt!2627113))))))

(declare-fun b!7476246 () Bool)

(assert (=> b!7476246 (= e!4459938 e!4459936)))

(declare-fun c!1381085 () Bool)

(assert (=> b!7476246 (= c!1381085 (is-EmptyLang!19600 r1!5845))))

(declare-fun b!7476247 () Bool)

(assert (=> b!7476247 (= e!4459936 (not lt!2627204))))

(assert (= (and d!2299516 c!1381086) b!7476244))

(assert (= (and d!2299516 (not c!1381086)) b!7476243))

(assert (= (and d!2299516 c!1381084) b!7476239))

(assert (= (and d!2299516 (not c!1381084)) b!7476246))

(assert (= (and b!7476246 c!1381085) b!7476247))

(assert (= (and b!7476246 (not c!1381085)) b!7476238))

(assert (= (and b!7476238 (not res!2999437)) b!7476240))

(assert (= (and b!7476240 res!2999435) b!7476234))

(assert (= (and b!7476234 res!2999433) b!7476245))

(assert (= (and b!7476245 res!2999436) b!7476236))

(assert (= (and b!7476240 (not res!2999431)) b!7476241))

(assert (= (and b!7476241 res!2999438) b!7476242))

(assert (= (and b!7476242 (not res!2999434)) b!7476237))

(assert (= (and b!7476237 (not res!2999432)) b!7476235))

(assert (= (or b!7476239 b!7476234 b!7476242) bm!686391))

(declare-fun m!8070714 () Bool)

(assert (=> b!7476244 m!8070714))

(assert (=> bm!686391 m!8070676))

(assert (=> b!7476243 m!8070678))

(assert (=> b!7476243 m!8070678))

(declare-fun m!8070716 () Bool)

(assert (=> b!7476243 m!8070716))

(assert (=> b!7476243 m!8070682))

(assert (=> b!7476243 m!8070716))

(assert (=> b!7476243 m!8070682))

(declare-fun m!8070718 () Bool)

(assert (=> b!7476243 m!8070718))

(assert (=> b!7476236 m!8070678))

(assert (=> d!2299516 m!8070676))

(assert (=> d!2299516 m!8070490))

(assert (=> b!7476245 m!8070682))

(assert (=> b!7476245 m!8070682))

(assert (=> b!7476245 m!8070686))

(assert (=> b!7476237 m!8070682))

(assert (=> b!7476237 m!8070682))

(assert (=> b!7476237 m!8070686))

(assert (=> b!7476235 m!8070678))

(assert (=> b!7475792 d!2299516))

(declare-fun bs!1931871 () Bool)

(declare-fun b!7476248 () Bool)

(assert (= bs!1931871 (and b!7476248 b!7476012)))

(declare-fun lambda!463170 () Int)

(assert (=> bs!1931871 (= (and (= (_1!37628 lt!2627113) s!13591) (= (reg!19929 r1!5845) (reg!19929 lt!2627115)) (= r1!5845 lt!2627115)) (= lambda!463170 lambda!463154))))

(declare-fun bs!1931872 () Bool)

(assert (= bs!1931872 (and b!7476248 b!7475960)))

(assert (=> bs!1931872 (not (= lambda!463170 lambda!463153))))

(declare-fun bs!1931873 () Bool)

(assert (= bs!1931873 (and b!7476248 d!2299504)))

(assert (=> bs!1931873 (not (= lambda!463170 lambda!463168))))

(declare-fun bs!1931874 () Bool)

(assert (= bs!1931874 (and b!7476248 b!7476022)))

(assert (=> bs!1931874 (not (= lambda!463170 lambda!463155))))

(assert (=> bs!1931873 (not (= lambda!463170 lambda!463167))))

(declare-fun bs!1931875 () Bool)

(assert (= bs!1931875 (and b!7476248 d!2299502)))

(assert (=> bs!1931875 (not (= lambda!463170 lambda!463160))))

(declare-fun bs!1931877 () Bool)

(assert (= bs!1931877 (and b!7476248 b!7475803)))

(assert (=> bs!1931877 (not (= lambda!463170 lambda!463138))))

(assert (=> bs!1931877 (not (= lambda!463170 lambda!463139))))

(declare-fun bs!1931878 () Bool)

(assert (= bs!1931878 (and b!7476248 b!7475950)))

(assert (=> bs!1931878 (= (and (= (_1!37628 lt!2627113) s!13591) (= (reg!19929 r1!5845) (reg!19929 lt!2627117)) (= r1!5845 lt!2627117)) (= lambda!463170 lambda!463152))))

(assert (=> b!7476248 true))

(assert (=> b!7476248 true))

(declare-fun bs!1931880 () Bool)

(declare-fun b!7476258 () Bool)

(assert (= bs!1931880 (and b!7476258 b!7476012)))

(declare-fun lambda!463172 () Int)

(assert (=> bs!1931880 (not (= lambda!463172 lambda!463154))))

(declare-fun bs!1931881 () Bool)

(assert (= bs!1931881 (and b!7476258 b!7475960)))

(assert (=> bs!1931881 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 r1!5845) (regOne!39712 lt!2627117)) (= (regTwo!39712 r1!5845) (regTwo!39712 lt!2627117))) (= lambda!463172 lambda!463153))))

(declare-fun bs!1931882 () Bool)

(assert (= bs!1931882 (and b!7476258 d!2299504)))

(assert (=> bs!1931882 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 r1!5845) lt!2627112) (= (regTwo!39712 r1!5845) rTail!78)) (= lambda!463172 lambda!463168))))

(declare-fun bs!1931883 () Bool)

(assert (= bs!1931883 (and b!7476258 b!7476248)))

(assert (=> bs!1931883 (not (= lambda!463172 lambda!463170))))

(declare-fun bs!1931884 () Bool)

(assert (= bs!1931884 (and b!7476258 b!7476022)))

(assert (=> bs!1931884 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 r1!5845) (regOne!39712 lt!2627115)) (= (regTwo!39712 r1!5845) (regTwo!39712 lt!2627115))) (= lambda!463172 lambda!463155))))

(assert (=> bs!1931882 (not (= lambda!463172 lambda!463167))))

(declare-fun bs!1931885 () Bool)

(assert (= bs!1931885 (and b!7476258 d!2299502)))

(assert (=> bs!1931885 (not (= lambda!463172 lambda!463160))))

(declare-fun bs!1931886 () Bool)

(assert (= bs!1931886 (and b!7476258 b!7475803)))

(assert (=> bs!1931886 (not (= lambda!463172 lambda!463138))))

(assert (=> bs!1931886 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 r1!5845) lt!2627112) (= (regTwo!39712 r1!5845) rTail!78)) (= lambda!463172 lambda!463139))))

(declare-fun bs!1931887 () Bool)

(assert (= bs!1931887 (and b!7476258 b!7475950)))

(assert (=> bs!1931887 (not (= lambda!463172 lambda!463152))))

(assert (=> b!7476258 true))

(assert (=> b!7476258 true))

(declare-fun bm!686392 () Bool)

(declare-fun call!686398 () Bool)

(assert (=> bm!686392 (= call!686398 (isEmpty!41191 (_1!37628 lt!2627113)))))

(declare-fun d!2299518 () Bool)

(declare-fun c!1381087 () Bool)

(assert (=> d!2299518 (= c!1381087 (is-EmptyExpr!19600 r1!5845))))

(declare-fun e!4459945 () Bool)

(assert (=> d!2299518 (= (matchRSpec!4279 r1!5845 (_1!37628 lt!2627113)) e!4459945)))

(declare-fun e!4459939 () Bool)

(declare-fun call!686397 () Bool)

(assert (=> b!7476248 (= e!4459939 call!686397)))

(declare-fun b!7476249 () Bool)

(declare-fun c!1381090 () Bool)

(assert (=> b!7476249 (= c!1381090 (is-ElementMatch!19600 r1!5845))))

(declare-fun e!4459944 () Bool)

(declare-fun e!4459942 () Bool)

(assert (=> b!7476249 (= e!4459944 e!4459942)))

(declare-fun b!7476250 () Bool)

(declare-fun res!2999440 () Bool)

(assert (=> b!7476250 (=> res!2999440 e!4459939)))

(assert (=> b!7476250 (= res!2999440 call!686398)))

(declare-fun e!4459941 () Bool)

(assert (=> b!7476250 (= e!4459941 e!4459939)))

(declare-fun b!7476251 () Bool)

(declare-fun e!4459940 () Bool)

(assert (=> b!7476251 (= e!4459940 (matchRSpec!4279 (regTwo!39713 r1!5845) (_1!37628 lt!2627113)))))

(declare-fun b!7476252 () Bool)

(assert (=> b!7476252 (= e!4459945 e!4459944)))

(declare-fun res!2999439 () Bool)

(assert (=> b!7476252 (= res!2999439 (not (is-EmptyLang!19600 r1!5845)))))

(assert (=> b!7476252 (=> (not res!2999439) (not e!4459944))))

(declare-fun b!7476253 () Bool)

(declare-fun e!4459943 () Bool)

(assert (=> b!7476253 (= e!4459943 e!4459940)))

(declare-fun res!2999441 () Bool)

(assert (=> b!7476253 (= res!2999441 (matchRSpec!4279 (regOne!39713 r1!5845) (_1!37628 lt!2627113)))))

(assert (=> b!7476253 (=> res!2999441 e!4459940)))

(declare-fun bm!686393 () Bool)

(declare-fun c!1381088 () Bool)

(assert (=> bm!686393 (= call!686397 (Exists!4219 (ite c!1381088 lambda!463170 lambda!463172)))))

(declare-fun b!7476254 () Bool)

(assert (=> b!7476254 (= e!4459943 e!4459941)))

(assert (=> b!7476254 (= c!1381088 (is-Star!19600 r1!5845))))

(declare-fun b!7476255 () Bool)

(assert (=> b!7476255 (= e!4459942 (= (_1!37628 lt!2627113) (Cons!72192 (c!1381001 r1!5845) Nil!72192)))))

(declare-fun b!7476256 () Bool)

(declare-fun c!1381089 () Bool)

(assert (=> b!7476256 (= c!1381089 (is-Union!19600 r1!5845))))

(assert (=> b!7476256 (= e!4459942 e!4459943)))

(declare-fun b!7476257 () Bool)

(assert (=> b!7476257 (= e!4459945 call!686398)))

(assert (=> b!7476258 (= e!4459941 call!686397)))

(assert (= (and d!2299518 c!1381087) b!7476257))

(assert (= (and d!2299518 (not c!1381087)) b!7476252))

(assert (= (and b!7476252 res!2999439) b!7476249))

(assert (= (and b!7476249 c!1381090) b!7476255))

(assert (= (and b!7476249 (not c!1381090)) b!7476256))

(assert (= (and b!7476256 c!1381089) b!7476253))

(assert (= (and b!7476256 (not c!1381089)) b!7476254))

(assert (= (and b!7476253 (not res!2999441)) b!7476251))

(assert (= (and b!7476254 c!1381088) b!7476250))

(assert (= (and b!7476254 (not c!1381088)) b!7476258))

(assert (= (and b!7476250 (not res!2999440)) b!7476248))

(assert (= (or b!7476248 b!7476258) bm!686393))

(assert (= (or b!7476257 b!7476250) bm!686392))

(assert (=> bm!686392 m!8070676))

(declare-fun m!8070728 () Bool)

(assert (=> b!7476251 m!8070728))

(declare-fun m!8070730 () Bool)

(assert (=> b!7476253 m!8070730))

(declare-fun m!8070732 () Bool)

(assert (=> bm!686393 m!8070732))

(assert (=> b!7475792 d!2299518))

(declare-fun bs!1931889 () Bool)

(declare-fun b!7476259 () Bool)

(assert (= bs!1931889 (and b!7476259 b!7476012)))

(declare-fun lambda!463173 () Int)

(assert (=> bs!1931889 (= (and (= (_1!37628 lt!2627113) s!13591) (= (reg!19929 r2!5783) (reg!19929 lt!2627115)) (= r2!5783 lt!2627115)) (= lambda!463173 lambda!463154))))

(declare-fun bs!1931890 () Bool)

(assert (= bs!1931890 (and b!7476259 b!7475960)))

(assert (=> bs!1931890 (not (= lambda!463173 lambda!463153))))

(declare-fun bs!1931891 () Bool)

(assert (= bs!1931891 (and b!7476259 d!2299504)))

(assert (=> bs!1931891 (not (= lambda!463173 lambda!463168))))

(declare-fun bs!1931892 () Bool)

(assert (= bs!1931892 (and b!7476259 b!7476258)))

(assert (=> bs!1931892 (not (= lambda!463173 lambda!463172))))

(declare-fun bs!1931893 () Bool)

(assert (= bs!1931893 (and b!7476259 b!7476248)))

(assert (=> bs!1931893 (= (and (= (reg!19929 r2!5783) (reg!19929 r1!5845)) (= r2!5783 r1!5845)) (= lambda!463173 lambda!463170))))

(declare-fun bs!1931894 () Bool)

(assert (= bs!1931894 (and b!7476259 b!7476022)))

(assert (=> bs!1931894 (not (= lambda!463173 lambda!463155))))

(assert (=> bs!1931891 (not (= lambda!463173 lambda!463167))))

(declare-fun bs!1931895 () Bool)

(assert (= bs!1931895 (and b!7476259 d!2299502)))

(assert (=> bs!1931895 (not (= lambda!463173 lambda!463160))))

(declare-fun bs!1931896 () Bool)

(assert (= bs!1931896 (and b!7476259 b!7475803)))

(assert (=> bs!1931896 (not (= lambda!463173 lambda!463138))))

(assert (=> bs!1931896 (not (= lambda!463173 lambda!463139))))

(declare-fun bs!1931897 () Bool)

(assert (= bs!1931897 (and b!7476259 b!7475950)))

(assert (=> bs!1931897 (= (and (= (_1!37628 lt!2627113) s!13591) (= (reg!19929 r2!5783) (reg!19929 lt!2627117)) (= r2!5783 lt!2627117)) (= lambda!463173 lambda!463152))))

(assert (=> b!7476259 true))

(assert (=> b!7476259 true))

(declare-fun bs!1931898 () Bool)

(declare-fun b!7476269 () Bool)

(assert (= bs!1931898 (and b!7476269 b!7476012)))

(declare-fun lambda!463174 () Int)

(assert (=> bs!1931898 (not (= lambda!463174 lambda!463154))))

(declare-fun bs!1931899 () Bool)

(assert (= bs!1931899 (and b!7476269 b!7475960)))

(assert (=> bs!1931899 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 r2!5783) (regOne!39712 lt!2627117)) (= (regTwo!39712 r2!5783) (regTwo!39712 lt!2627117))) (= lambda!463174 lambda!463153))))

(declare-fun bs!1931900 () Bool)

(assert (= bs!1931900 (and b!7476269 d!2299504)))

(assert (=> bs!1931900 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 r2!5783) lt!2627112) (= (regTwo!39712 r2!5783) rTail!78)) (= lambda!463174 lambda!463168))))

(declare-fun bs!1931901 () Bool)

(assert (= bs!1931901 (and b!7476269 b!7476258)))

(assert (=> bs!1931901 (= (and (= (regOne!39712 r2!5783) (regOne!39712 r1!5845)) (= (regTwo!39712 r2!5783) (regTwo!39712 r1!5845))) (= lambda!463174 lambda!463172))))

(declare-fun bs!1931902 () Bool)

(assert (= bs!1931902 (and b!7476269 b!7476259)))

(assert (=> bs!1931902 (not (= lambda!463174 lambda!463173))))

(declare-fun bs!1931903 () Bool)

(assert (= bs!1931903 (and b!7476269 b!7476248)))

(assert (=> bs!1931903 (not (= lambda!463174 lambda!463170))))

(declare-fun bs!1931904 () Bool)

(assert (= bs!1931904 (and b!7476269 b!7476022)))

(assert (=> bs!1931904 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 r2!5783) (regOne!39712 lt!2627115)) (= (regTwo!39712 r2!5783) (regTwo!39712 lt!2627115))) (= lambda!463174 lambda!463155))))

(assert (=> bs!1931900 (not (= lambda!463174 lambda!463167))))

(declare-fun bs!1931905 () Bool)

(assert (= bs!1931905 (and b!7476269 d!2299502)))

(assert (=> bs!1931905 (not (= lambda!463174 lambda!463160))))

(declare-fun bs!1931906 () Bool)

(assert (= bs!1931906 (and b!7476269 b!7475803)))

(assert (=> bs!1931906 (not (= lambda!463174 lambda!463138))))

(assert (=> bs!1931906 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 r2!5783) lt!2627112) (= (regTwo!39712 r2!5783) rTail!78)) (= lambda!463174 lambda!463139))))

(declare-fun bs!1931907 () Bool)

(assert (= bs!1931907 (and b!7476269 b!7475950)))

(assert (=> bs!1931907 (not (= lambda!463174 lambda!463152))))

(assert (=> b!7476269 true))

(assert (=> b!7476269 true))

(declare-fun bm!686394 () Bool)

(declare-fun call!686400 () Bool)

(assert (=> bm!686394 (= call!686400 (isEmpty!41191 (_1!37628 lt!2627113)))))

(declare-fun d!2299522 () Bool)

(declare-fun c!1381091 () Bool)

(assert (=> d!2299522 (= c!1381091 (is-EmptyExpr!19600 r2!5783))))

(declare-fun e!4459952 () Bool)

(assert (=> d!2299522 (= (matchRSpec!4279 r2!5783 (_1!37628 lt!2627113)) e!4459952)))

(declare-fun e!4459946 () Bool)

(declare-fun call!686399 () Bool)

(assert (=> b!7476259 (= e!4459946 call!686399)))

(declare-fun b!7476260 () Bool)

(declare-fun c!1381094 () Bool)

(assert (=> b!7476260 (= c!1381094 (is-ElementMatch!19600 r2!5783))))

(declare-fun e!4459951 () Bool)

(declare-fun e!4459949 () Bool)

(assert (=> b!7476260 (= e!4459951 e!4459949)))

(declare-fun b!7476261 () Bool)

(declare-fun res!2999443 () Bool)

(assert (=> b!7476261 (=> res!2999443 e!4459946)))

(assert (=> b!7476261 (= res!2999443 call!686400)))

(declare-fun e!4459948 () Bool)

(assert (=> b!7476261 (= e!4459948 e!4459946)))

(declare-fun b!7476262 () Bool)

(declare-fun e!4459947 () Bool)

(assert (=> b!7476262 (= e!4459947 (matchRSpec!4279 (regTwo!39713 r2!5783) (_1!37628 lt!2627113)))))

(declare-fun b!7476263 () Bool)

(assert (=> b!7476263 (= e!4459952 e!4459951)))

(declare-fun res!2999442 () Bool)

(assert (=> b!7476263 (= res!2999442 (not (is-EmptyLang!19600 r2!5783)))))

(assert (=> b!7476263 (=> (not res!2999442) (not e!4459951))))

(declare-fun b!7476264 () Bool)

(declare-fun e!4459950 () Bool)

(assert (=> b!7476264 (= e!4459950 e!4459947)))

(declare-fun res!2999444 () Bool)

(assert (=> b!7476264 (= res!2999444 (matchRSpec!4279 (regOne!39713 r2!5783) (_1!37628 lt!2627113)))))

(assert (=> b!7476264 (=> res!2999444 e!4459947)))

(declare-fun bm!686395 () Bool)

(declare-fun c!1381092 () Bool)

(assert (=> bm!686395 (= call!686399 (Exists!4219 (ite c!1381092 lambda!463173 lambda!463174)))))

(declare-fun b!7476265 () Bool)

(assert (=> b!7476265 (= e!4459950 e!4459948)))

(assert (=> b!7476265 (= c!1381092 (is-Star!19600 r2!5783))))

(declare-fun b!7476266 () Bool)

(assert (=> b!7476266 (= e!4459949 (= (_1!37628 lt!2627113) (Cons!72192 (c!1381001 r2!5783) Nil!72192)))))

(declare-fun b!7476267 () Bool)

(declare-fun c!1381093 () Bool)

(assert (=> b!7476267 (= c!1381093 (is-Union!19600 r2!5783))))

(assert (=> b!7476267 (= e!4459949 e!4459950)))

(declare-fun b!7476268 () Bool)

(assert (=> b!7476268 (= e!4459952 call!686400)))

(assert (=> b!7476269 (= e!4459948 call!686399)))

(assert (= (and d!2299522 c!1381091) b!7476268))

(assert (= (and d!2299522 (not c!1381091)) b!7476263))

(assert (= (and b!7476263 res!2999442) b!7476260))

(assert (= (and b!7476260 c!1381094) b!7476266))

(assert (= (and b!7476260 (not c!1381094)) b!7476267))

(assert (= (and b!7476267 c!1381093) b!7476264))

(assert (= (and b!7476267 (not c!1381093)) b!7476265))

(assert (= (and b!7476264 (not res!2999444)) b!7476262))

(assert (= (and b!7476265 c!1381092) b!7476261))

(assert (= (and b!7476265 (not c!1381092)) b!7476269))

(assert (= (and b!7476261 (not res!2999443)) b!7476259))

(assert (= (or b!7476259 b!7476269) bm!686395))

(assert (= (or b!7476268 b!7476261) bm!686394))

(assert (=> bm!686394 m!8070676))

(declare-fun m!8070742 () Bool)

(assert (=> b!7476262 m!8070742))

(declare-fun m!8070744 () Bool)

(assert (=> b!7476264 m!8070744))

(declare-fun m!8070746 () Bool)

(assert (=> bm!686395 m!8070746))

(assert (=> b!7475792 d!2299522))

(declare-fun bs!1931911 () Bool)

(declare-fun b!7476295 () Bool)

(assert (= bs!1931911 (and b!7476295 b!7476269)))

(declare-fun lambda!463176 () Int)

(assert (=> bs!1931911 (not (= lambda!463176 lambda!463174))))

(declare-fun bs!1931912 () Bool)

(assert (= bs!1931912 (and b!7476295 b!7476012)))

(assert (=> bs!1931912 (= (and (= (_1!37628 lt!2627113) s!13591) (= (reg!19929 lt!2627112) (reg!19929 lt!2627115)) (= lt!2627112 lt!2627115)) (= lambda!463176 lambda!463154))))

(declare-fun bs!1931913 () Bool)

(assert (= bs!1931913 (and b!7476295 b!7475960)))

(assert (=> bs!1931913 (not (= lambda!463176 lambda!463153))))

(declare-fun bs!1931914 () Bool)

(assert (= bs!1931914 (and b!7476295 d!2299504)))

(assert (=> bs!1931914 (not (= lambda!463176 lambda!463168))))

(declare-fun bs!1931915 () Bool)

(assert (= bs!1931915 (and b!7476295 b!7476258)))

(assert (=> bs!1931915 (not (= lambda!463176 lambda!463172))))

(declare-fun bs!1931916 () Bool)

(assert (= bs!1931916 (and b!7476295 b!7476259)))

(assert (=> bs!1931916 (= (and (= (reg!19929 lt!2627112) (reg!19929 r2!5783)) (= lt!2627112 r2!5783)) (= lambda!463176 lambda!463173))))

(declare-fun bs!1931917 () Bool)

(assert (= bs!1931917 (and b!7476295 b!7476248)))

(assert (=> bs!1931917 (= (and (= (reg!19929 lt!2627112) (reg!19929 r1!5845)) (= lt!2627112 r1!5845)) (= lambda!463176 lambda!463170))))

(declare-fun bs!1931918 () Bool)

(assert (= bs!1931918 (and b!7476295 b!7476022)))

(assert (=> bs!1931918 (not (= lambda!463176 lambda!463155))))

(assert (=> bs!1931914 (not (= lambda!463176 lambda!463167))))

(declare-fun bs!1931919 () Bool)

(assert (= bs!1931919 (and b!7476295 d!2299502)))

(assert (=> bs!1931919 (not (= lambda!463176 lambda!463160))))

(declare-fun bs!1931920 () Bool)

(assert (= bs!1931920 (and b!7476295 b!7475803)))

(assert (=> bs!1931920 (not (= lambda!463176 lambda!463138))))

(assert (=> bs!1931920 (not (= lambda!463176 lambda!463139))))

(declare-fun bs!1931921 () Bool)

(assert (= bs!1931921 (and b!7476295 b!7475950)))

(assert (=> bs!1931921 (= (and (= (_1!37628 lt!2627113) s!13591) (= (reg!19929 lt!2627112) (reg!19929 lt!2627117)) (= lt!2627112 lt!2627117)) (= lambda!463176 lambda!463152))))

(assert (=> b!7476295 true))

(assert (=> b!7476295 true))

(declare-fun bs!1931925 () Bool)

(declare-fun b!7476305 () Bool)

(assert (= bs!1931925 (and b!7476305 b!7476269)))

(declare-fun lambda!463178 () Int)

(assert (=> bs!1931925 (= (and (= (regOne!39712 lt!2627112) (regOne!39712 r2!5783)) (= (regTwo!39712 lt!2627112) (regTwo!39712 r2!5783))) (= lambda!463178 lambda!463174))))

(declare-fun bs!1931926 () Bool)

(assert (= bs!1931926 (and b!7476305 b!7476012)))

(assert (=> bs!1931926 (not (= lambda!463178 lambda!463154))))

(declare-fun bs!1931927 () Bool)

(assert (= bs!1931927 (and b!7476305 b!7475960)))

(assert (=> bs!1931927 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 lt!2627112) (regOne!39712 lt!2627117)) (= (regTwo!39712 lt!2627112) (regTwo!39712 lt!2627117))) (= lambda!463178 lambda!463153))))

(declare-fun bs!1931928 () Bool)

(assert (= bs!1931928 (and b!7476305 d!2299504)))

(assert (=> bs!1931928 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 lt!2627112) lt!2627112) (= (regTwo!39712 lt!2627112) rTail!78)) (= lambda!463178 lambda!463168))))

(declare-fun bs!1931929 () Bool)

(assert (= bs!1931929 (and b!7476305 b!7476258)))

(assert (=> bs!1931929 (= (and (= (regOne!39712 lt!2627112) (regOne!39712 r1!5845)) (= (regTwo!39712 lt!2627112) (regTwo!39712 r1!5845))) (= lambda!463178 lambda!463172))))

(declare-fun bs!1931931 () Bool)

(assert (= bs!1931931 (and b!7476305 b!7476259)))

(assert (=> bs!1931931 (not (= lambda!463178 lambda!463173))))

(declare-fun bs!1931932 () Bool)

(assert (= bs!1931932 (and b!7476305 b!7476248)))

(assert (=> bs!1931932 (not (= lambda!463178 lambda!463170))))

(declare-fun bs!1931933 () Bool)

(assert (= bs!1931933 (and b!7476305 b!7476022)))

(assert (=> bs!1931933 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 lt!2627112) (regOne!39712 lt!2627115)) (= (regTwo!39712 lt!2627112) (regTwo!39712 lt!2627115))) (= lambda!463178 lambda!463155))))

(assert (=> bs!1931928 (not (= lambda!463178 lambda!463167))))

(declare-fun bs!1931934 () Bool)

(assert (= bs!1931934 (and b!7476305 d!2299502)))

(assert (=> bs!1931934 (not (= lambda!463178 lambda!463160))))

(declare-fun bs!1931935 () Bool)

(assert (= bs!1931935 (and b!7476305 b!7476295)))

(assert (=> bs!1931935 (not (= lambda!463178 lambda!463176))))

(declare-fun bs!1931936 () Bool)

(assert (= bs!1931936 (and b!7476305 b!7475803)))

(assert (=> bs!1931936 (not (= lambda!463178 lambda!463138))))

(assert (=> bs!1931936 (= (and (= (_1!37628 lt!2627113) s!13591) (= (regOne!39712 lt!2627112) lt!2627112) (= (regTwo!39712 lt!2627112) rTail!78)) (= lambda!463178 lambda!463139))))

(declare-fun bs!1931937 () Bool)

(assert (= bs!1931937 (and b!7476305 b!7475950)))

(assert (=> bs!1931937 (not (= lambda!463178 lambda!463152))))

(assert (=> b!7476305 true))

(assert (=> b!7476305 true))

(declare-fun bm!686399 () Bool)

(declare-fun call!686405 () Bool)

(assert (=> bm!686399 (= call!686405 (isEmpty!41191 (_1!37628 lt!2627113)))))

(declare-fun d!2299528 () Bool)

(declare-fun c!1381102 () Bool)

(assert (=> d!2299528 (= c!1381102 (is-EmptyExpr!19600 lt!2627112))))

(declare-fun e!4459973 () Bool)

(assert (=> d!2299528 (= (matchRSpec!4279 lt!2627112 (_1!37628 lt!2627113)) e!4459973)))

(declare-fun e!4459967 () Bool)

(declare-fun call!686404 () Bool)

(assert (=> b!7476295 (= e!4459967 call!686404)))

(declare-fun b!7476296 () Bool)

(declare-fun c!1381105 () Bool)

(assert (=> b!7476296 (= c!1381105 (is-ElementMatch!19600 lt!2627112))))

(declare-fun e!4459972 () Bool)

(declare-fun e!4459970 () Bool)

(assert (=> b!7476296 (= e!4459972 e!4459970)))

(declare-fun b!7476297 () Bool)

(declare-fun res!2999457 () Bool)

(assert (=> b!7476297 (=> res!2999457 e!4459967)))

(assert (=> b!7476297 (= res!2999457 call!686405)))

(declare-fun e!4459969 () Bool)

(assert (=> b!7476297 (= e!4459969 e!4459967)))

(declare-fun b!7476298 () Bool)

(declare-fun e!4459968 () Bool)

(assert (=> b!7476298 (= e!4459968 (matchRSpec!4279 (regTwo!39713 lt!2627112) (_1!37628 lt!2627113)))))

(declare-fun b!7476299 () Bool)

(assert (=> b!7476299 (= e!4459973 e!4459972)))

(declare-fun res!2999456 () Bool)

(assert (=> b!7476299 (= res!2999456 (not (is-EmptyLang!19600 lt!2627112)))))

(assert (=> b!7476299 (=> (not res!2999456) (not e!4459972))))

(declare-fun b!7476300 () Bool)

(declare-fun e!4459971 () Bool)

(assert (=> b!7476300 (= e!4459971 e!4459968)))

(declare-fun res!2999458 () Bool)

(assert (=> b!7476300 (= res!2999458 (matchRSpec!4279 (regOne!39713 lt!2627112) (_1!37628 lt!2627113)))))

(assert (=> b!7476300 (=> res!2999458 e!4459968)))

(declare-fun bm!686400 () Bool)

(declare-fun c!1381103 () Bool)

(assert (=> bm!686400 (= call!686404 (Exists!4219 (ite c!1381103 lambda!463176 lambda!463178)))))

(declare-fun b!7476301 () Bool)

(assert (=> b!7476301 (= e!4459971 e!4459969)))

(assert (=> b!7476301 (= c!1381103 (is-Star!19600 lt!2627112))))

(declare-fun b!7476302 () Bool)

(assert (=> b!7476302 (= e!4459970 (= (_1!37628 lt!2627113) (Cons!72192 (c!1381001 lt!2627112) Nil!72192)))))

(declare-fun b!7476303 () Bool)

(declare-fun c!1381104 () Bool)

(assert (=> b!7476303 (= c!1381104 (is-Union!19600 lt!2627112))))

(assert (=> b!7476303 (= e!4459970 e!4459971)))

(declare-fun b!7476304 () Bool)

(assert (=> b!7476304 (= e!4459973 call!686405)))

(assert (=> b!7476305 (= e!4459969 call!686404)))

(assert (= (and d!2299528 c!1381102) b!7476304))

(assert (= (and d!2299528 (not c!1381102)) b!7476299))

(assert (= (and b!7476299 res!2999456) b!7476296))

(assert (= (and b!7476296 c!1381105) b!7476302))

(assert (= (and b!7476296 (not c!1381105)) b!7476303))

(assert (= (and b!7476303 c!1381104) b!7476300))

(assert (= (and b!7476303 (not c!1381104)) b!7476301))

(assert (= (and b!7476300 (not res!2999458)) b!7476298))

(assert (= (and b!7476301 c!1381103) b!7476297))

(assert (= (and b!7476301 (not c!1381103)) b!7476305))

(assert (= (and b!7476297 (not res!2999457)) b!7476295))

(assert (= (or b!7476295 b!7476305) bm!686400))

(assert (= (or b!7476304 b!7476297) bm!686399))

(assert (=> bm!686399 m!8070676))

(declare-fun m!8070752 () Bool)

(assert (=> b!7476298 m!8070752))

(declare-fun m!8070754 () Bool)

(assert (=> b!7476300 m!8070754))

(declare-fun m!8070758 () Bool)

(assert (=> bm!686400 m!8070758))

(assert (=> b!7475792 d!2299528))

(declare-fun d!2299532 () Bool)

(assert (=> d!2299532 (= (matchR!9364 rTail!78 (_2!37628 lt!2627113)) (matchRSpec!4279 rTail!78 (_2!37628 lt!2627113)))))

(declare-fun lt!2627207 () Unit!166035)

(assert (=> d!2299532 (= lt!2627207 (choose!57786 rTail!78 (_2!37628 lt!2627113)))))

(assert (=> d!2299532 (validRegex!10114 rTail!78)))

(assert (=> d!2299532 (= (mainMatchTheorem!4273 rTail!78 (_2!37628 lt!2627113)) lt!2627207)))

(declare-fun bs!1931938 () Bool)

(assert (= bs!1931938 d!2299532))

(assert (=> bs!1931938 m!8070436))

(assert (=> bs!1931938 m!8070474))

(declare-fun m!8070760 () Bool)

(assert (=> bs!1931938 m!8070760))

(assert (=> bs!1931938 m!8070440))

(assert (=> b!7475792 d!2299532))

(declare-fun bs!1931939 () Bool)

(declare-fun b!7476317 () Bool)

(assert (= bs!1931939 (and b!7476317 b!7476269)))

(declare-fun lambda!463179 () Int)

(assert (=> bs!1931939 (not (= lambda!463179 lambda!463174))))

(declare-fun bs!1931940 () Bool)

(assert (= bs!1931940 (and b!7476317 b!7476012)))

(assert (=> bs!1931940 (= (and (= (_2!37628 lt!2627113) s!13591) (= (reg!19929 rTail!78) (reg!19929 lt!2627115)) (= rTail!78 lt!2627115)) (= lambda!463179 lambda!463154))))

(declare-fun bs!1931941 () Bool)

(assert (= bs!1931941 (and b!7476317 b!7475960)))

(assert (=> bs!1931941 (not (= lambda!463179 lambda!463153))))

(declare-fun bs!1931942 () Bool)

(assert (= bs!1931942 (and b!7476317 d!2299504)))

(assert (=> bs!1931942 (not (= lambda!463179 lambda!463168))))

(declare-fun bs!1931943 () Bool)

(assert (= bs!1931943 (and b!7476317 b!7476258)))

(assert (=> bs!1931943 (not (= lambda!463179 lambda!463172))))

(declare-fun bs!1931944 () Bool)

(assert (= bs!1931944 (and b!7476317 b!7476248)))

(assert (=> bs!1931944 (= (and (= (_2!37628 lt!2627113) (_1!37628 lt!2627113)) (= (reg!19929 rTail!78) (reg!19929 r1!5845)) (= rTail!78 r1!5845)) (= lambda!463179 lambda!463170))))

(declare-fun bs!1931946 () Bool)

(assert (= bs!1931946 (and b!7476317 b!7476022)))

(assert (=> bs!1931946 (not (= lambda!463179 lambda!463155))))

(assert (=> bs!1931942 (not (= lambda!463179 lambda!463167))))

(declare-fun bs!1931947 () Bool)

(assert (= bs!1931947 (and b!7476317 d!2299502)))

(assert (=> bs!1931947 (not (= lambda!463179 lambda!463160))))

(declare-fun bs!1931948 () Bool)

(assert (= bs!1931948 (and b!7476317 b!7476295)))

(assert (=> bs!1931948 (= (and (= (_2!37628 lt!2627113) (_1!37628 lt!2627113)) (= (reg!19929 rTail!78) (reg!19929 lt!2627112)) (= rTail!78 lt!2627112)) (= lambda!463179 lambda!463176))))

(declare-fun bs!1931950 () Bool)

(assert (= bs!1931950 (and b!7476317 b!7475803)))

(assert (=> bs!1931950 (not (= lambda!463179 lambda!463138))))

(assert (=> bs!1931950 (not (= lambda!463179 lambda!463139))))

(declare-fun bs!1931952 () Bool)

(assert (= bs!1931952 (and b!7476317 b!7475950)))

(assert (=> bs!1931952 (= (and (= (_2!37628 lt!2627113) s!13591) (= (reg!19929 rTail!78) (reg!19929 lt!2627117)) (= rTail!78 lt!2627117)) (= lambda!463179 lambda!463152))))

(declare-fun bs!1931953 () Bool)

(assert (= bs!1931953 (and b!7476317 b!7476259)))

(assert (=> bs!1931953 (= (and (= (_2!37628 lt!2627113) (_1!37628 lt!2627113)) (= (reg!19929 rTail!78) (reg!19929 r2!5783)) (= rTail!78 r2!5783)) (= lambda!463179 lambda!463173))))

(declare-fun bs!1931954 () Bool)

(assert (= bs!1931954 (and b!7476317 b!7476305)))

(assert (=> bs!1931954 (not (= lambda!463179 lambda!463178))))

(assert (=> b!7476317 true))

(assert (=> b!7476317 true))

(declare-fun bs!1931957 () Bool)

(declare-fun b!7476327 () Bool)

(assert (= bs!1931957 (and b!7476327 b!7476317)))

(declare-fun lambda!463181 () Int)

(assert (=> bs!1931957 (not (= lambda!463181 lambda!463179))))

(declare-fun bs!1931958 () Bool)

(assert (= bs!1931958 (and b!7476327 b!7476269)))

(assert (=> bs!1931958 (= (and (= (_2!37628 lt!2627113) (_1!37628 lt!2627113)) (= (regOne!39712 rTail!78) (regOne!39712 r2!5783)) (= (regTwo!39712 rTail!78) (regTwo!39712 r2!5783))) (= lambda!463181 lambda!463174))))

(declare-fun bs!1931959 () Bool)

(assert (= bs!1931959 (and b!7476327 b!7476012)))

(assert (=> bs!1931959 (not (= lambda!463181 lambda!463154))))

(declare-fun bs!1931960 () Bool)

(assert (= bs!1931960 (and b!7476327 b!7475960)))

(assert (=> bs!1931960 (= (and (= (_2!37628 lt!2627113) s!13591) (= (regOne!39712 rTail!78) (regOne!39712 lt!2627117)) (= (regTwo!39712 rTail!78) (regTwo!39712 lt!2627117))) (= lambda!463181 lambda!463153))))

(declare-fun bs!1931961 () Bool)

(assert (= bs!1931961 (and b!7476327 d!2299504)))

(assert (=> bs!1931961 (= (and (= (_2!37628 lt!2627113) s!13591) (= (regOne!39712 rTail!78) lt!2627112) (= (regTwo!39712 rTail!78) rTail!78)) (= lambda!463181 lambda!463168))))

(declare-fun bs!1931962 () Bool)

(assert (= bs!1931962 (and b!7476327 b!7476258)))

(assert (=> bs!1931962 (= (and (= (_2!37628 lt!2627113) (_1!37628 lt!2627113)) (= (regOne!39712 rTail!78) (regOne!39712 r1!5845)) (= (regTwo!39712 rTail!78) (regTwo!39712 r1!5845))) (= lambda!463181 lambda!463172))))

(declare-fun bs!1931963 () Bool)

(assert (= bs!1931963 (and b!7476327 b!7476248)))

(assert (=> bs!1931963 (not (= lambda!463181 lambda!463170))))

(declare-fun bs!1931964 () Bool)

(assert (= bs!1931964 (and b!7476327 b!7476022)))

(assert (=> bs!1931964 (= (and (= (_2!37628 lt!2627113) s!13591) (= (regOne!39712 rTail!78) (regOne!39712 lt!2627115)) (= (regTwo!39712 rTail!78) (regTwo!39712 lt!2627115))) (= lambda!463181 lambda!463155))))

(assert (=> bs!1931961 (not (= lambda!463181 lambda!463167))))

(declare-fun bs!1931965 () Bool)

(assert (= bs!1931965 (and b!7476327 d!2299502)))

(assert (=> bs!1931965 (not (= lambda!463181 lambda!463160))))

(declare-fun bs!1931966 () Bool)

(assert (= bs!1931966 (and b!7476327 b!7476295)))

(assert (=> bs!1931966 (not (= lambda!463181 lambda!463176))))

(declare-fun bs!1931967 () Bool)

(assert (= bs!1931967 (and b!7476327 b!7475803)))

(assert (=> bs!1931967 (not (= lambda!463181 lambda!463138))))

(assert (=> bs!1931967 (= (and (= (_2!37628 lt!2627113) s!13591) (= (regOne!39712 rTail!78) lt!2627112) (= (regTwo!39712 rTail!78) rTail!78)) (= lambda!463181 lambda!463139))))

(declare-fun bs!1931969 () Bool)

(assert (= bs!1931969 (and b!7476327 b!7475950)))

(assert (=> bs!1931969 (not (= lambda!463181 lambda!463152))))

(declare-fun bs!1931971 () Bool)

(assert (= bs!1931971 (and b!7476327 b!7476259)))

(assert (=> bs!1931971 (not (= lambda!463181 lambda!463173))))

(declare-fun bs!1931972 () Bool)

(assert (= bs!1931972 (and b!7476327 b!7476305)))

(assert (=> bs!1931972 (= (and (= (_2!37628 lt!2627113) (_1!37628 lt!2627113)) (= (regOne!39712 rTail!78) (regOne!39712 lt!2627112)) (= (regTwo!39712 rTail!78) (regTwo!39712 lt!2627112))) (= lambda!463181 lambda!463178))))

(assert (=> b!7476327 true))

(assert (=> b!7476327 true))

(declare-fun bm!686403 () Bool)

(declare-fun call!686409 () Bool)

(assert (=> bm!686403 (= call!686409 (isEmpty!41191 (_2!37628 lt!2627113)))))

(declare-fun d!2299534 () Bool)

(declare-fun c!1381110 () Bool)

(assert (=> d!2299534 (= c!1381110 (is-EmptyExpr!19600 rTail!78))))

(declare-fun e!4459987 () Bool)

(assert (=> d!2299534 (= (matchRSpec!4279 rTail!78 (_2!37628 lt!2627113)) e!4459987)))

(declare-fun e!4459981 () Bool)

(declare-fun call!686408 () Bool)

(assert (=> b!7476317 (= e!4459981 call!686408)))

(declare-fun b!7476318 () Bool)

(declare-fun c!1381113 () Bool)

(assert (=> b!7476318 (= c!1381113 (is-ElementMatch!19600 rTail!78))))

(declare-fun e!4459986 () Bool)

(declare-fun e!4459984 () Bool)

(assert (=> b!7476318 (= e!4459986 e!4459984)))

(declare-fun b!7476319 () Bool)

(declare-fun res!2999463 () Bool)

(assert (=> b!7476319 (=> res!2999463 e!4459981)))

(assert (=> b!7476319 (= res!2999463 call!686409)))

(declare-fun e!4459983 () Bool)

(assert (=> b!7476319 (= e!4459983 e!4459981)))

(declare-fun b!7476320 () Bool)

(declare-fun e!4459982 () Bool)

(assert (=> b!7476320 (= e!4459982 (matchRSpec!4279 (regTwo!39713 rTail!78) (_2!37628 lt!2627113)))))

(declare-fun b!7476321 () Bool)

(assert (=> b!7476321 (= e!4459987 e!4459986)))

(declare-fun res!2999462 () Bool)

(assert (=> b!7476321 (= res!2999462 (not (is-EmptyLang!19600 rTail!78)))))

(assert (=> b!7476321 (=> (not res!2999462) (not e!4459986))))

(declare-fun b!7476322 () Bool)

(declare-fun e!4459985 () Bool)

(assert (=> b!7476322 (= e!4459985 e!4459982)))

(declare-fun res!2999464 () Bool)

(assert (=> b!7476322 (= res!2999464 (matchRSpec!4279 (regOne!39713 rTail!78) (_2!37628 lt!2627113)))))

(assert (=> b!7476322 (=> res!2999464 e!4459982)))

(declare-fun c!1381111 () Bool)

(declare-fun bm!686404 () Bool)

(assert (=> bm!686404 (= call!686408 (Exists!4219 (ite c!1381111 lambda!463179 lambda!463181)))))

(declare-fun b!7476323 () Bool)

(assert (=> b!7476323 (= e!4459985 e!4459983)))

(assert (=> b!7476323 (= c!1381111 (is-Star!19600 rTail!78))))

(declare-fun b!7476324 () Bool)

(assert (=> b!7476324 (= e!4459984 (= (_2!37628 lt!2627113) (Cons!72192 (c!1381001 rTail!78) Nil!72192)))))

(declare-fun b!7476325 () Bool)

(declare-fun c!1381112 () Bool)

(assert (=> b!7476325 (= c!1381112 (is-Union!19600 rTail!78))))

(assert (=> b!7476325 (= e!4459984 e!4459985)))

(declare-fun b!7476326 () Bool)

(assert (=> b!7476326 (= e!4459987 call!686409)))

(assert (=> b!7476327 (= e!4459983 call!686408)))

(assert (= (and d!2299534 c!1381110) b!7476326))

(assert (= (and d!2299534 (not c!1381110)) b!7476321))

(assert (= (and b!7476321 res!2999462) b!7476318))

(assert (= (and b!7476318 c!1381113) b!7476324))

(assert (= (and b!7476318 (not c!1381113)) b!7476325))

(assert (= (and b!7476325 c!1381112) b!7476322))

(assert (= (and b!7476325 (not c!1381112)) b!7476323))

(assert (= (and b!7476322 (not res!2999464)) b!7476320))

(assert (= (and b!7476323 c!1381111) b!7476319))

(assert (= (and b!7476323 (not c!1381111)) b!7476327))

(assert (= (and b!7476319 (not res!2999463)) b!7476317))

(assert (= (or b!7476317 b!7476327) bm!686404))

(assert (= (or b!7476326 b!7476319) bm!686403))

(assert (=> bm!686403 m!8070696))

(declare-fun m!8070762 () Bool)

(assert (=> b!7476320 m!8070762))

(declare-fun m!8070764 () Bool)

(assert (=> b!7476322 m!8070764))

(declare-fun m!8070766 () Bool)

(assert (=> bm!686404 m!8070766))

(assert (=> b!7475792 d!2299534))

(declare-fun d!2299536 () Bool)

(assert (=> d!2299536 (= (matchR!9364 lt!2627112 (_1!37628 lt!2627113)) (matchRSpec!4279 lt!2627112 (_1!37628 lt!2627113)))))

(declare-fun lt!2627208 () Unit!166035)

(assert (=> d!2299536 (= lt!2627208 (choose!57786 lt!2627112 (_1!37628 lt!2627113)))))

(assert (=> d!2299536 (validRegex!10114 lt!2627112)))

(assert (=> d!2299536 (= (mainMatchTheorem!4273 lt!2627112 (_1!37628 lt!2627113)) lt!2627208)))

(declare-fun bs!1931975 () Bool)

(assert (= bs!1931975 d!2299536))

(assert (=> bs!1931975 m!8070444))

(assert (=> bs!1931975 m!8070478))

(declare-fun m!8070768 () Bool)

(assert (=> bs!1931975 m!8070768))

(assert (=> bs!1931975 m!8070652))

(assert (=> b!7475792 d!2299536))

(declare-fun b!7476328 () Bool)

(declare-fun res!2999467 () Bool)

(declare-fun e!4459988 () Bool)

(assert (=> b!7476328 (=> (not res!2999467) (not e!4459988))))

(declare-fun call!686410 () Bool)

(assert (=> b!7476328 (= res!2999467 (not call!686410))))

(declare-fun b!7476329 () Bool)

(declare-fun e!4459990 () Bool)

(assert (=> b!7476329 (= e!4459990 (not (= (head!15337 (_1!37628 lt!2627113)) (c!1381001 r2!5783))))))

(declare-fun b!7476330 () Bool)

(assert (=> b!7476330 (= e!4459988 (= (head!15337 (_1!37628 lt!2627113)) (c!1381001 r2!5783)))))

(declare-fun b!7476331 () Bool)

(declare-fun res!2999466 () Bool)

(assert (=> b!7476331 (=> res!2999466 e!4459990)))

(assert (=> b!7476331 (= res!2999466 (not (isEmpty!41191 (tail!14906 (_1!37628 lt!2627113)))))))

(declare-fun b!7476332 () Bool)

(declare-fun res!2999471 () Bool)

(declare-fun e!4459993 () Bool)

(assert (=> b!7476332 (=> res!2999471 e!4459993)))

(assert (=> b!7476332 (= res!2999471 (not (is-ElementMatch!19600 r2!5783)))))

(declare-fun e!4459992 () Bool)

(assert (=> b!7476332 (= e!4459992 e!4459993)))

(declare-fun b!7476333 () Bool)

(declare-fun e!4459994 () Bool)

(declare-fun lt!2627209 () Bool)

(assert (=> b!7476333 (= e!4459994 (= lt!2627209 call!686410))))

(declare-fun b!7476334 () Bool)

(declare-fun res!2999465 () Bool)

(assert (=> b!7476334 (=> res!2999465 e!4459993)))

(assert (=> b!7476334 (= res!2999465 e!4459988)))

(declare-fun res!2999469 () Bool)

(assert (=> b!7476334 (=> (not res!2999469) (not e!4459988))))

(assert (=> b!7476334 (= res!2999469 lt!2627209)))

(declare-fun d!2299538 () Bool)

(assert (=> d!2299538 e!4459994))

(declare-fun c!1381114 () Bool)

(assert (=> d!2299538 (= c!1381114 (is-EmptyExpr!19600 r2!5783))))

(declare-fun e!4459989 () Bool)

(assert (=> d!2299538 (= lt!2627209 e!4459989)))

(declare-fun c!1381116 () Bool)

(assert (=> d!2299538 (= c!1381116 (isEmpty!41191 (_1!37628 lt!2627113)))))

(assert (=> d!2299538 (validRegex!10114 r2!5783)))

(assert (=> d!2299538 (= (matchR!9364 r2!5783 (_1!37628 lt!2627113)) lt!2627209)))

(declare-fun b!7476335 () Bool)

(declare-fun e!4459991 () Bool)

(assert (=> b!7476335 (= e!4459993 e!4459991)))

(declare-fun res!2999472 () Bool)

(assert (=> b!7476335 (=> (not res!2999472) (not e!4459991))))

(assert (=> b!7476335 (= res!2999472 (not lt!2627209))))

(declare-fun b!7476336 () Bool)

(assert (=> b!7476336 (= e!4459991 e!4459990)))

(declare-fun res!2999468 () Bool)

(assert (=> b!7476336 (=> res!2999468 e!4459990)))

(assert (=> b!7476336 (= res!2999468 call!686410)))

(declare-fun bm!686405 () Bool)

(assert (=> bm!686405 (= call!686410 (isEmpty!41191 (_1!37628 lt!2627113)))))

(declare-fun b!7476337 () Bool)

(assert (=> b!7476337 (= e!4459989 (matchR!9364 (derivativeStep!5597 r2!5783 (head!15337 (_1!37628 lt!2627113))) (tail!14906 (_1!37628 lt!2627113))))))

(declare-fun b!7476338 () Bool)

(assert (=> b!7476338 (= e!4459989 (nullable!8538 r2!5783))))

(declare-fun b!7476339 () Bool)

(declare-fun res!2999470 () Bool)

(assert (=> b!7476339 (=> (not res!2999470) (not e!4459988))))

(assert (=> b!7476339 (= res!2999470 (isEmpty!41191 (tail!14906 (_1!37628 lt!2627113))))))

(declare-fun b!7476340 () Bool)

(assert (=> b!7476340 (= e!4459994 e!4459992)))

(declare-fun c!1381115 () Bool)

(assert (=> b!7476340 (= c!1381115 (is-EmptyLang!19600 r2!5783))))

(declare-fun b!7476341 () Bool)

(assert (=> b!7476341 (= e!4459992 (not lt!2627209))))

(assert (= (and d!2299538 c!1381116) b!7476338))

(assert (= (and d!2299538 (not c!1381116)) b!7476337))

(assert (= (and d!2299538 c!1381114) b!7476333))

(assert (= (and d!2299538 (not c!1381114)) b!7476340))

(assert (= (and b!7476340 c!1381115) b!7476341))

(assert (= (and b!7476340 (not c!1381115)) b!7476332))

(assert (= (and b!7476332 (not res!2999471)) b!7476334))

(assert (= (and b!7476334 res!2999469) b!7476328))

(assert (= (and b!7476328 res!2999467) b!7476339))

(assert (= (and b!7476339 res!2999470) b!7476330))

(assert (= (and b!7476334 (not res!2999465)) b!7476335))

(assert (= (and b!7476335 res!2999472) b!7476336))

(assert (= (and b!7476336 (not res!2999468)) b!7476331))

(assert (= (and b!7476331 (not res!2999466)) b!7476329))

(assert (= (or b!7476333 b!7476328 b!7476336) bm!686405))

(declare-fun m!8070770 () Bool)

(assert (=> b!7476338 m!8070770))

(assert (=> bm!686405 m!8070676))

(assert (=> b!7476337 m!8070678))

(assert (=> b!7476337 m!8070678))

(declare-fun m!8070772 () Bool)

(assert (=> b!7476337 m!8070772))

(assert (=> b!7476337 m!8070682))

(assert (=> b!7476337 m!8070772))

(assert (=> b!7476337 m!8070682))

(declare-fun m!8070774 () Bool)

(assert (=> b!7476337 m!8070774))

(assert (=> b!7476330 m!8070678))

(assert (=> d!2299538 m!8070676))

(assert (=> d!2299538 m!8070438))

(assert (=> b!7476339 m!8070682))

(assert (=> b!7476339 m!8070682))

(assert (=> b!7476339 m!8070686))

(assert (=> b!7476331 m!8070682))

(assert (=> b!7476331 m!8070682))

(assert (=> b!7476331 m!8070686))

(assert (=> b!7476329 m!8070678))

(assert (=> b!7475792 d!2299538))

(declare-fun d!2299540 () Bool)

(assert (=> d!2299540 (= (matchR!9364 r1!5845 (_1!37628 lt!2627113)) (matchRSpec!4279 r1!5845 (_1!37628 lt!2627113)))))

(declare-fun lt!2627210 () Unit!166035)

(assert (=> d!2299540 (= lt!2627210 (choose!57786 r1!5845 (_1!37628 lt!2627113)))))

(assert (=> d!2299540 (validRegex!10114 r1!5845)))

(assert (=> d!2299540 (= (mainMatchTheorem!4273 r1!5845 (_1!37628 lt!2627113)) lt!2627210)))

(declare-fun bs!1931978 () Bool)

(assert (= bs!1931978 d!2299540))

(assert (=> bs!1931978 m!8070476))

(assert (=> bs!1931978 m!8070484))

(declare-fun m!8070776 () Bool)

(assert (=> bs!1931978 m!8070776))

(assert (=> bs!1931978 m!8070490))

(assert (=> b!7475792 d!2299540))

(declare-fun d!2299542 () Bool)

(assert (=> d!2299542 (= (matchR!9364 r2!5783 (_1!37628 lt!2627113)) (matchRSpec!4279 r2!5783 (_1!37628 lt!2627113)))))

(declare-fun lt!2627211 () Unit!166035)

(assert (=> d!2299542 (= lt!2627211 (choose!57786 r2!5783 (_1!37628 lt!2627113)))))

(assert (=> d!2299542 (validRegex!10114 r2!5783)))

(assert (=> d!2299542 (= (mainMatchTheorem!4273 r2!5783 (_1!37628 lt!2627113)) lt!2627211)))

(declare-fun bs!1931979 () Bool)

(assert (= bs!1931979 d!2299542))

(assert (=> bs!1931979 m!8070486))

(assert (=> bs!1931979 m!8070482))

(declare-fun m!8070778 () Bool)

(assert (=> bs!1931979 m!8070778))

(assert (=> bs!1931979 m!8070438))

(assert (=> b!7475792 d!2299542))

(declare-fun b!7476364 () Bool)

(declare-fun e!4460004 () Bool)

(declare-fun tp!2168234 () Bool)

(declare-fun tp!2168232 () Bool)

(assert (=> b!7476364 (= e!4460004 (and tp!2168234 tp!2168232))))

(declare-fun b!7476365 () Bool)

(declare-fun tp!2168231 () Bool)

(assert (=> b!7476365 (= e!4460004 tp!2168231)))

(assert (=> b!7475793 (= tp!2168162 e!4460004)))

(declare-fun b!7476366 () Bool)

(declare-fun tp!2168230 () Bool)

(declare-fun tp!2168233 () Bool)

(assert (=> b!7476366 (= e!4460004 (and tp!2168230 tp!2168233))))

(declare-fun b!7476363 () Bool)

(assert (=> b!7476363 (= e!4460004 tp_is_empty!49489)))

(assert (= (and b!7475793 (is-ElementMatch!19600 (regOne!39713 r2!5783))) b!7476363))

(assert (= (and b!7475793 (is-Concat!28445 (regOne!39713 r2!5783))) b!7476364))

(assert (= (and b!7475793 (is-Star!19600 (regOne!39713 r2!5783))) b!7476365))

(assert (= (and b!7475793 (is-Union!19600 (regOne!39713 r2!5783))) b!7476366))

(declare-fun b!7476368 () Bool)

(declare-fun e!4460005 () Bool)

(declare-fun tp!2168239 () Bool)

(declare-fun tp!2168237 () Bool)

(assert (=> b!7476368 (= e!4460005 (and tp!2168239 tp!2168237))))

(declare-fun b!7476369 () Bool)

(declare-fun tp!2168236 () Bool)

(assert (=> b!7476369 (= e!4460005 tp!2168236)))

(assert (=> b!7475793 (= tp!2168171 e!4460005)))

(declare-fun b!7476370 () Bool)

(declare-fun tp!2168235 () Bool)

(declare-fun tp!2168238 () Bool)

(assert (=> b!7476370 (= e!4460005 (and tp!2168235 tp!2168238))))

(declare-fun b!7476367 () Bool)

(assert (=> b!7476367 (= e!4460005 tp_is_empty!49489)))

(assert (= (and b!7475793 (is-ElementMatch!19600 (regTwo!39713 r2!5783))) b!7476367))

(assert (= (and b!7475793 (is-Concat!28445 (regTwo!39713 r2!5783))) b!7476368))

(assert (= (and b!7475793 (is-Star!19600 (regTwo!39713 r2!5783))) b!7476369))

(assert (= (and b!7475793 (is-Union!19600 (regTwo!39713 r2!5783))) b!7476370))

(declare-fun b!7476372 () Bool)

(declare-fun e!4460006 () Bool)

(declare-fun tp!2168244 () Bool)

(declare-fun tp!2168242 () Bool)

(assert (=> b!7476372 (= e!4460006 (and tp!2168244 tp!2168242))))

(declare-fun b!7476373 () Bool)

(declare-fun tp!2168241 () Bool)

(assert (=> b!7476373 (= e!4460006 tp!2168241)))

(assert (=> b!7475787 (= tp!2168157 e!4460006)))

(declare-fun b!7476374 () Bool)

(declare-fun tp!2168240 () Bool)

(declare-fun tp!2168243 () Bool)

(assert (=> b!7476374 (= e!4460006 (and tp!2168240 tp!2168243))))

(declare-fun b!7476371 () Bool)

(assert (=> b!7476371 (= e!4460006 tp_is_empty!49489)))

(assert (= (and b!7475787 (is-ElementMatch!19600 (regOne!39712 rTail!78))) b!7476371))

(assert (= (and b!7475787 (is-Concat!28445 (regOne!39712 rTail!78))) b!7476372))

(assert (= (and b!7475787 (is-Star!19600 (regOne!39712 rTail!78))) b!7476373))

(assert (= (and b!7475787 (is-Union!19600 (regOne!39712 rTail!78))) b!7476374))

(declare-fun b!7476376 () Bool)

(declare-fun e!4460007 () Bool)

(declare-fun tp!2168249 () Bool)

(declare-fun tp!2168247 () Bool)

(assert (=> b!7476376 (= e!4460007 (and tp!2168249 tp!2168247))))

(declare-fun b!7476377 () Bool)

(declare-fun tp!2168246 () Bool)

(assert (=> b!7476377 (= e!4460007 tp!2168246)))

(assert (=> b!7475787 (= tp!2168161 e!4460007)))

(declare-fun b!7476378 () Bool)

(declare-fun tp!2168245 () Bool)

(declare-fun tp!2168248 () Bool)

(assert (=> b!7476378 (= e!4460007 (and tp!2168245 tp!2168248))))

(declare-fun b!7476375 () Bool)

(assert (=> b!7476375 (= e!4460007 tp_is_empty!49489)))

(assert (= (and b!7475787 (is-ElementMatch!19600 (regTwo!39712 rTail!78))) b!7476375))

(assert (= (and b!7475787 (is-Concat!28445 (regTwo!39712 rTail!78))) b!7476376))

(assert (= (and b!7475787 (is-Star!19600 (regTwo!39712 rTail!78))) b!7476377))

(assert (= (and b!7475787 (is-Union!19600 (regTwo!39712 rTail!78))) b!7476378))

(declare-fun b!7476380 () Bool)

(declare-fun e!4460008 () Bool)

(declare-fun tp!2168254 () Bool)

(declare-fun tp!2168252 () Bool)

(assert (=> b!7476380 (= e!4460008 (and tp!2168254 tp!2168252))))

(declare-fun b!7476381 () Bool)

(declare-fun tp!2168251 () Bool)

(assert (=> b!7476381 (= e!4460008 tp!2168251)))

(assert (=> b!7475800 (= tp!2168168 e!4460008)))

(declare-fun b!7476382 () Bool)

(declare-fun tp!2168250 () Bool)

(declare-fun tp!2168253 () Bool)

(assert (=> b!7476382 (= e!4460008 (and tp!2168250 tp!2168253))))

(declare-fun b!7476379 () Bool)

(assert (=> b!7476379 (= e!4460008 tp_is_empty!49489)))

(assert (= (and b!7475800 (is-ElementMatch!19600 (regOne!39712 r1!5845))) b!7476379))

(assert (= (and b!7475800 (is-Concat!28445 (regOne!39712 r1!5845))) b!7476380))

(assert (= (and b!7475800 (is-Star!19600 (regOne!39712 r1!5845))) b!7476381))

(assert (= (and b!7475800 (is-Union!19600 (regOne!39712 r1!5845))) b!7476382))

(declare-fun b!7476384 () Bool)

(declare-fun e!4460009 () Bool)

(declare-fun tp!2168259 () Bool)

(declare-fun tp!2168257 () Bool)

(assert (=> b!7476384 (= e!4460009 (and tp!2168259 tp!2168257))))

(declare-fun b!7476385 () Bool)

(declare-fun tp!2168256 () Bool)

(assert (=> b!7476385 (= e!4460009 tp!2168256)))

(assert (=> b!7475800 (= tp!2168169 e!4460009)))

(declare-fun b!7476386 () Bool)

(declare-fun tp!2168255 () Bool)

(declare-fun tp!2168258 () Bool)

(assert (=> b!7476386 (= e!4460009 (and tp!2168255 tp!2168258))))

(declare-fun b!7476383 () Bool)

(assert (=> b!7476383 (= e!4460009 tp_is_empty!49489)))

(assert (= (and b!7475800 (is-ElementMatch!19600 (regTwo!39712 r1!5845))) b!7476383))

(assert (= (and b!7475800 (is-Concat!28445 (regTwo!39712 r1!5845))) b!7476384))

(assert (= (and b!7475800 (is-Star!19600 (regTwo!39712 r1!5845))) b!7476385))

(assert (= (and b!7475800 (is-Union!19600 (regTwo!39712 r1!5845))) b!7476386))

(declare-fun b!7476388 () Bool)

(declare-fun e!4460010 () Bool)

(declare-fun tp!2168264 () Bool)

(declare-fun tp!2168262 () Bool)

(assert (=> b!7476388 (= e!4460010 (and tp!2168264 tp!2168262))))

(declare-fun b!7476389 () Bool)

(declare-fun tp!2168261 () Bool)

(assert (=> b!7476389 (= e!4460010 tp!2168261)))

(assert (=> b!7475789 (= tp!2168163 e!4460010)))

(declare-fun b!7476390 () Bool)

(declare-fun tp!2168260 () Bool)

(declare-fun tp!2168263 () Bool)

(assert (=> b!7476390 (= e!4460010 (and tp!2168260 tp!2168263))))

(declare-fun b!7476387 () Bool)

(assert (=> b!7476387 (= e!4460010 tp_is_empty!49489)))

(assert (= (and b!7475789 (is-ElementMatch!19600 (reg!19929 rTail!78))) b!7476387))

(assert (= (and b!7475789 (is-Concat!28445 (reg!19929 rTail!78))) b!7476388))

(assert (= (and b!7475789 (is-Star!19600 (reg!19929 rTail!78))) b!7476389))

(assert (= (and b!7475789 (is-Union!19600 (reg!19929 rTail!78))) b!7476390))

(declare-fun b!7476392 () Bool)

(declare-fun e!4460011 () Bool)

(declare-fun tp!2168269 () Bool)

(declare-fun tp!2168267 () Bool)

(assert (=> b!7476392 (= e!4460011 (and tp!2168269 tp!2168267))))

(declare-fun b!7476393 () Bool)

(declare-fun tp!2168266 () Bool)

(assert (=> b!7476393 (= e!4460011 tp!2168266)))

(assert (=> b!7475794 (= tp!2168164 e!4460011)))

(declare-fun b!7476394 () Bool)

(declare-fun tp!2168265 () Bool)

(declare-fun tp!2168268 () Bool)

(assert (=> b!7476394 (= e!4460011 (and tp!2168265 tp!2168268))))

(declare-fun b!7476391 () Bool)

(assert (=> b!7476391 (= e!4460011 tp_is_empty!49489)))

(assert (= (and b!7475794 (is-ElementMatch!19600 (regOne!39713 rTail!78))) b!7476391))

(assert (= (and b!7475794 (is-Concat!28445 (regOne!39713 rTail!78))) b!7476392))

(assert (= (and b!7475794 (is-Star!19600 (regOne!39713 rTail!78))) b!7476393))

(assert (= (and b!7475794 (is-Union!19600 (regOne!39713 rTail!78))) b!7476394))

(declare-fun b!7476396 () Bool)

(declare-fun e!4460012 () Bool)

(declare-fun tp!2168274 () Bool)

(declare-fun tp!2168272 () Bool)

(assert (=> b!7476396 (= e!4460012 (and tp!2168274 tp!2168272))))

(declare-fun b!7476397 () Bool)

(declare-fun tp!2168271 () Bool)

(assert (=> b!7476397 (= e!4460012 tp!2168271)))

(assert (=> b!7475794 (= tp!2168165 e!4460012)))

(declare-fun b!7476398 () Bool)

(declare-fun tp!2168270 () Bool)

(declare-fun tp!2168273 () Bool)

(assert (=> b!7476398 (= e!4460012 (and tp!2168270 tp!2168273))))

(declare-fun b!7476395 () Bool)

(assert (=> b!7476395 (= e!4460012 tp_is_empty!49489)))

(assert (= (and b!7475794 (is-ElementMatch!19600 (regTwo!39713 rTail!78))) b!7476395))

(assert (= (and b!7475794 (is-Concat!28445 (regTwo!39713 rTail!78))) b!7476396))

(assert (= (and b!7475794 (is-Star!19600 (regTwo!39713 rTail!78))) b!7476397))

(assert (= (and b!7475794 (is-Union!19600 (regTwo!39713 rTail!78))) b!7476398))

(declare-fun b!7476400 () Bool)

(declare-fun e!4460013 () Bool)

(declare-fun tp!2168279 () Bool)

(declare-fun tp!2168277 () Bool)

(assert (=> b!7476400 (= e!4460013 (and tp!2168279 tp!2168277))))

(declare-fun b!7476401 () Bool)

(declare-fun tp!2168276 () Bool)

(assert (=> b!7476401 (= e!4460013 tp!2168276)))

(assert (=> b!7475799 (= tp!2168159 e!4460013)))

(declare-fun b!7476402 () Bool)

(declare-fun tp!2168275 () Bool)

(declare-fun tp!2168278 () Bool)

(assert (=> b!7476402 (= e!4460013 (and tp!2168275 tp!2168278))))

(declare-fun b!7476399 () Bool)

(assert (=> b!7476399 (= e!4460013 tp_is_empty!49489)))

(assert (= (and b!7475799 (is-ElementMatch!19600 (regOne!39713 r1!5845))) b!7476399))

(assert (= (and b!7475799 (is-Concat!28445 (regOne!39713 r1!5845))) b!7476400))

(assert (= (and b!7475799 (is-Star!19600 (regOne!39713 r1!5845))) b!7476401))

(assert (= (and b!7475799 (is-Union!19600 (regOne!39713 r1!5845))) b!7476402))

(declare-fun b!7476404 () Bool)

(declare-fun e!4460014 () Bool)

(declare-fun tp!2168284 () Bool)

(declare-fun tp!2168282 () Bool)

(assert (=> b!7476404 (= e!4460014 (and tp!2168284 tp!2168282))))

(declare-fun b!7476405 () Bool)

(declare-fun tp!2168281 () Bool)

(assert (=> b!7476405 (= e!4460014 tp!2168281)))

(assert (=> b!7475799 (= tp!2168167 e!4460014)))

(declare-fun b!7476406 () Bool)

(declare-fun tp!2168280 () Bool)

(declare-fun tp!2168283 () Bool)

(assert (=> b!7476406 (= e!4460014 (and tp!2168280 tp!2168283))))

(declare-fun b!7476403 () Bool)

(assert (=> b!7476403 (= e!4460014 tp_is_empty!49489)))

(assert (= (and b!7475799 (is-ElementMatch!19600 (regTwo!39713 r1!5845))) b!7476403))

(assert (= (and b!7475799 (is-Concat!28445 (regTwo!39713 r1!5845))) b!7476404))

(assert (= (and b!7475799 (is-Star!19600 (regTwo!39713 r1!5845))) b!7476405))

(assert (= (and b!7475799 (is-Union!19600 (regTwo!39713 r1!5845))) b!7476406))

(declare-fun b!7476411 () Bool)

(declare-fun e!4460017 () Bool)

(declare-fun tp!2168287 () Bool)

(assert (=> b!7476411 (= e!4460017 (and tp_is_empty!49489 tp!2168287))))

(assert (=> b!7475790 (= tp!2168166 e!4460017)))

(assert (= (and b!7475790 (is-Cons!72192 (t!386885 s!13591))) b!7476411))

(declare-fun b!7476413 () Bool)

(declare-fun e!4460018 () Bool)

(declare-fun tp!2168292 () Bool)

(declare-fun tp!2168290 () Bool)

(assert (=> b!7476413 (= e!4460018 (and tp!2168292 tp!2168290))))

(declare-fun b!7476414 () Bool)

(declare-fun tp!2168289 () Bool)

(assert (=> b!7476414 (= e!4460018 tp!2168289)))

(assert (=> b!7475797 (= tp!2168156 e!4460018)))

(declare-fun b!7476415 () Bool)

(declare-fun tp!2168288 () Bool)

(declare-fun tp!2168291 () Bool)

(assert (=> b!7476415 (= e!4460018 (and tp!2168288 tp!2168291))))

(declare-fun b!7476412 () Bool)

(assert (=> b!7476412 (= e!4460018 tp_is_empty!49489)))

(assert (= (and b!7475797 (is-ElementMatch!19600 (reg!19929 r1!5845))) b!7476412))

(assert (= (and b!7475797 (is-Concat!28445 (reg!19929 r1!5845))) b!7476413))

(assert (= (and b!7475797 (is-Star!19600 (reg!19929 r1!5845))) b!7476414))

(assert (= (and b!7475797 (is-Union!19600 (reg!19929 r1!5845))) b!7476415))

(declare-fun b!7476417 () Bool)

(declare-fun e!4460019 () Bool)

(declare-fun tp!2168297 () Bool)

(declare-fun tp!2168295 () Bool)

(assert (=> b!7476417 (= e!4460019 (and tp!2168297 tp!2168295))))

(declare-fun b!7476418 () Bool)

(declare-fun tp!2168294 () Bool)

(assert (=> b!7476418 (= e!4460019 tp!2168294)))

(assert (=> b!7475802 (= tp!2168160 e!4460019)))

(declare-fun b!7476419 () Bool)

(declare-fun tp!2168293 () Bool)

(declare-fun tp!2168296 () Bool)

(assert (=> b!7476419 (= e!4460019 (and tp!2168293 tp!2168296))))

(declare-fun b!7476416 () Bool)

(assert (=> b!7476416 (= e!4460019 tp_is_empty!49489)))

(assert (= (and b!7475802 (is-ElementMatch!19600 (regOne!39712 r2!5783))) b!7476416))

(assert (= (and b!7475802 (is-Concat!28445 (regOne!39712 r2!5783))) b!7476417))

(assert (= (and b!7475802 (is-Star!19600 (regOne!39712 r2!5783))) b!7476418))

(assert (= (and b!7475802 (is-Union!19600 (regOne!39712 r2!5783))) b!7476419))

(declare-fun b!7476421 () Bool)

(declare-fun e!4460020 () Bool)

(declare-fun tp!2168302 () Bool)

(declare-fun tp!2168300 () Bool)

(assert (=> b!7476421 (= e!4460020 (and tp!2168302 tp!2168300))))

(declare-fun b!7476422 () Bool)

(declare-fun tp!2168299 () Bool)

(assert (=> b!7476422 (= e!4460020 tp!2168299)))

(assert (=> b!7475802 (= tp!2168158 e!4460020)))

(declare-fun b!7476423 () Bool)

(declare-fun tp!2168298 () Bool)

(declare-fun tp!2168301 () Bool)

(assert (=> b!7476423 (= e!4460020 (and tp!2168298 tp!2168301))))

(declare-fun b!7476420 () Bool)

(assert (=> b!7476420 (= e!4460020 tp_is_empty!49489)))

(assert (= (and b!7475802 (is-ElementMatch!19600 (regTwo!39712 r2!5783))) b!7476420))

(assert (= (and b!7475802 (is-Concat!28445 (regTwo!39712 r2!5783))) b!7476421))

(assert (= (and b!7475802 (is-Star!19600 (regTwo!39712 r2!5783))) b!7476422))

(assert (= (and b!7475802 (is-Union!19600 (regTwo!39712 r2!5783))) b!7476423))

(declare-fun b!7476425 () Bool)

(declare-fun e!4460021 () Bool)

(declare-fun tp!2168307 () Bool)

(declare-fun tp!2168305 () Bool)

(assert (=> b!7476425 (= e!4460021 (and tp!2168307 tp!2168305))))

(declare-fun b!7476426 () Bool)

(declare-fun tp!2168304 () Bool)

(assert (=> b!7476426 (= e!4460021 tp!2168304)))

(assert (=> b!7475791 (= tp!2168170 e!4460021)))

(declare-fun b!7476427 () Bool)

(declare-fun tp!2168303 () Bool)

(declare-fun tp!2168306 () Bool)

(assert (=> b!7476427 (= e!4460021 (and tp!2168303 tp!2168306))))

(declare-fun b!7476424 () Bool)

(assert (=> b!7476424 (= e!4460021 tp_is_empty!49489)))

(assert (= (and b!7475791 (is-ElementMatch!19600 (reg!19929 r2!5783))) b!7476424))

(assert (= (and b!7475791 (is-Concat!28445 (reg!19929 r2!5783))) b!7476425))

(assert (= (and b!7475791 (is-Star!19600 (reg!19929 r2!5783))) b!7476426))

(assert (= (and b!7475791 (is-Union!19600 (reg!19929 r2!5783))) b!7476427))

(push 1)

(assert (not b!7476396))

(assert (not b!7476180))

(assert (not b!7476365))

(assert (not b!7476262))

(assert (not d!2299478))

(assert (not d!2299492))

(assert (not d!2299540))

(assert (not b!7476337))

(assert (not b!7476132))

(assert (not b!7476390))

(assert (not b!7476300))

(assert (not d!2299488))

(assert (not b!7476201))

(assert (not b!7476009))

(assert (not b!7475999))

(assert (not b!7476370))

(assert (not b!7476178))

(assert (not b!7476033))

(assert tp_is_empty!49489)

(assert (not b!7476131))

(assert (not b!7476427))

(assert (not b!7476366))

(assert (not d!2299532))

(assert (not b!7476007))

(assert (not b!7476025))

(assert (not b!7476377))

(assert (not b!7476129))

(assert (not b!7476384))

(assert (not b!7476415))

(assert (not bm!686404))

(assert (not b!7476000))

(assert (not b!7476373))

(assert (not bm!686355))

(assert (not b!7476404))

(assert (not bm!686392))

(assert (not b!7476393))

(assert (not b!7476423))

(assert (not b!7476417))

(assert (not b!7476394))

(assert (not d!2299512))

(assert (not b!7476128))

(assert (not b!7476253))

(assert (not d!2299542))

(assert (not b!7476411))

(assert (not d!2299506))

(assert (not b!7476193))

(assert (not b!7476418))

(assert (not b!7476188))

(assert (not bm!686375))

(assert (not b!7476244))

(assert (not b!7476364))

(assert (not b!7476227))

(assert (not b!7476380))

(assert (not b!7476422))

(assert (not b!7476426))

(assert (not b!7476130))

(assert (not b!7475955))

(assert (not b!7476421))

(assert (not b!7476338))

(assert (not d!2299476))

(assert (not b!7475953))

(assert (not b!7476237))

(assert (not d!2299538))

(assert (not bm!686384))

(assert (not b!7476015))

(assert (not b!7476401))

(assert (not b!7476385))

(assert (not b!7476209))

(assert (not b!7476034))

(assert (not b!7476210))

(assert (not b!7476405))

(assert (not d!2299498))

(assert (not b!7476386))

(assert (not b!7476369))

(assert (not bm!686403))

(assert (not b!7476398))

(assert (not bm!686364))

(assert (not b!7476376))

(assert (not b!7476372))

(assert (not bm!686390))

(assert (not b!7476202))

(assert (not b!7476402))

(assert (not b!7476245))

(assert (not b!7476392))

(assert (not d!2299502))

(assert (not b!7476085))

(assert (not b!7476236))

(assert (not b!7476330))

(assert (not b!7476382))

(assert (not d!2299536))

(assert (not bm!686354))

(assert (not b!7476179))

(assert (not bm!686405))

(assert (not b!7476322))

(assert (not b!7476001))

(assert (not b!7476331))

(assert (not b!7476389))

(assert (not b!7476251))

(assert (not b!7476414))

(assert (not bm!686361))

(assert (not bm!686363))

(assert (not b!7476320))

(assert (not bm!686374))

(assert (not d!2299480))

(assert (not b!7476243))

(assert (not bm!686400))

(assert (not bm!686394))

(assert (not d!2299494))

(assert (not bm!686362))

(assert (not d!2299516))

(assert (not bm!686385))

(assert (not b!7476186))

(assert (not b!7476378))

(assert (not b!7476425))

(assert (not b!7476032))

(assert (not bm!686395))

(assert (not d!2299504))

(assert (not b!7476388))

(assert (not bm!686393))

(assert (not b!7476026))

(assert (not b!7476203))

(assert (not b!7476211))

(assert (not bm!686399))

(assert (not b!7476419))

(assert (not b!7476187))

(assert (not bm!686381))

(assert (not b!7476329))

(assert (not b!7476024))

(assert (not bm!686391))

(assert (not b!7476298))

(assert (not bm!686383))

(assert (not b!7476368))

(assert (not b!7476406))

(assert (not b!7476397))

(assert (not b!7476400))

(assert (not b!7476413))

(assert (not b!7476264))

(assert (not b!7476374))

(assert (not b!7476381))

(assert (not b!7476017))

(assert (not bm!686389))

(assert (not b!7476339))

(assert (not d!2299508))

(assert (not b!7476235))

(assert (not b!7476127))

(assert (not b!7476008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

