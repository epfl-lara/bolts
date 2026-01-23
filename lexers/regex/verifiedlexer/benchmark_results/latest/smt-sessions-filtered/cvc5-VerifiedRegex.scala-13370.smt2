; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724564 () Bool)

(assert start!724564)

(declare-fun b!7476677 () Bool)

(assert (=> b!7476677 true))

(assert (=> b!7476677 true))

(assert (=> b!7476677 true))

(declare-fun lambda!463205 () Int)

(declare-fun lambda!463204 () Int)

(assert (=> b!7476677 (not (= lambda!463205 lambda!463204))))

(assert (=> b!7476677 true))

(assert (=> b!7476677 true))

(assert (=> b!7476677 true))

(declare-fun b!7476672 () Bool)

(declare-fun res!2999569 () Bool)

(declare-fun e!4460127 () Bool)

(assert (=> b!7476672 (=> (not res!2999569) (not e!4460127))))

(declare-datatypes ((C!39478 0))(
  ( (C!39479 (val!30137 Int)) )
))
(declare-datatypes ((Regex!19602 0))(
  ( (ElementMatch!19602 (c!1381147 C!39478)) (Concat!28447 (regOne!39716 Regex!19602) (regTwo!39716 Regex!19602)) (EmptyExpr!19602) (Star!19602 (reg!19931 Regex!19602)) (EmptyLang!19602) (Union!19602 (regOne!39717 Regex!19602) (regTwo!39717 Regex!19602)) )
))
(declare-fun r2!5783 () Regex!19602)

(declare-fun validRegex!10116 (Regex!19602) Bool)

(assert (=> b!7476672 (= res!2999569 (validRegex!10116 r2!5783))))

(declare-fun b!7476673 () Bool)

(declare-fun res!2999571 () Bool)

(assert (=> b!7476673 (=> (not res!2999571) (not e!4460127))))

(declare-fun rTail!78 () Regex!19602)

(assert (=> b!7476673 (= res!2999571 (validRegex!10116 rTail!78))))

(declare-fun b!7476674 () Bool)

(declare-fun e!4460128 () Bool)

(declare-fun tp!2168438 () Bool)

(declare-fun tp!2168436 () Bool)

(assert (=> b!7476674 (= e!4460128 (and tp!2168438 tp!2168436))))

(declare-fun b!7476675 () Bool)

(declare-fun tp!2168435 () Bool)

(declare-fun tp!2168428 () Bool)

(assert (=> b!7476675 (= e!4460128 (and tp!2168435 tp!2168428))))

(declare-fun b!7476676 () Bool)

(declare-fun e!4460134 () Bool)

(declare-fun tp_is_empty!49493 () Bool)

(assert (=> b!7476676 (= e!4460134 tp_is_empty!49493)))

(declare-fun e!4460133 () Bool)

(declare-fun e!4460130 () Bool)

(assert (=> b!7476677 (= e!4460133 e!4460130)))

(declare-fun res!2999570 () Bool)

(assert (=> b!7476677 (=> res!2999570 e!4460130)))

(declare-fun lt!2627300 () Regex!19602)

(declare-datatypes ((List!72318 0))(
  ( (Nil!72194) (Cons!72194 (h!78642 C!39478) (t!386887 List!72318)) )
))
(declare-datatypes ((tuple2!68654 0))(
  ( (tuple2!68655 (_1!37630 List!72318) (_2!37630 List!72318)) )
))
(declare-fun lt!2627291 () tuple2!68654)

(declare-fun matchR!9366 (Regex!19602 List!72318) Bool)

(assert (=> b!7476677 (= res!2999570 (not (matchR!9366 lt!2627300 (_1!37630 lt!2627291))))))

(declare-datatypes ((Option!17159 0))(
  ( (None!17158) (Some!17158 (v!54287 tuple2!68654)) )
))
(declare-fun lt!2627284 () Option!17159)

(declare-fun get!25267 (Option!17159) tuple2!68654)

(assert (=> b!7476677 (= lt!2627291 (get!25267 lt!2627284))))

(declare-fun Exists!4221 (Int) Bool)

(assert (=> b!7476677 (= (Exists!4221 lambda!463204) (Exists!4221 lambda!463205))))

(declare-fun s!13591 () List!72318)

(declare-datatypes ((Unit!166039 0))(
  ( (Unit!166040) )
))
(declare-fun lt!2627298 () Unit!166039)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2555 (Regex!19602 Regex!19602 List!72318) Unit!166039)

(assert (=> b!7476677 (= lt!2627298 (lemmaExistCutMatchRandMatchRSpecEquivalent!2555 lt!2627300 rTail!78 s!13591))))

(declare-fun isDefined!13848 (Option!17159) Bool)

(assert (=> b!7476677 (= (isDefined!13848 lt!2627284) (Exists!4221 lambda!463204))))

(declare-fun findConcatSeparation!3281 (Regex!19602 Regex!19602 List!72318 List!72318 List!72318) Option!17159)

(assert (=> b!7476677 (= lt!2627284 (findConcatSeparation!3281 lt!2627300 rTail!78 Nil!72194 s!13591 s!13591))))

(declare-fun lt!2627280 () Unit!166039)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3039 (Regex!19602 Regex!19602 List!72318) Unit!166039)

(assert (=> b!7476677 (= lt!2627280 (lemmaFindConcatSeparationEquivalentToExists!3039 lt!2627300 rTail!78 s!13591))))

(declare-fun b!7476678 () Bool)

(declare-fun e!4460129 () Bool)

(declare-fun tp!2168437 () Bool)

(assert (=> b!7476678 (= e!4460129 (and tp_is_empty!49493 tp!2168437))))

(declare-fun b!7476679 () Bool)

(assert (=> b!7476679 (= e!4460127 (not e!4460133))))

(declare-fun res!2999573 () Bool)

(assert (=> b!7476679 (=> res!2999573 e!4460133)))

(declare-fun lt!2627293 () Bool)

(assert (=> b!7476679 (= res!2999573 (not lt!2627293))))

(declare-fun lt!2627288 () Bool)

(declare-fun lt!2627282 () Regex!19602)

(declare-fun matchRSpec!4281 (Regex!19602 List!72318) Bool)

(assert (=> b!7476679 (= lt!2627288 (matchRSpec!4281 lt!2627282 s!13591))))

(assert (=> b!7476679 (= lt!2627288 (matchR!9366 lt!2627282 s!13591))))

(declare-fun lt!2627297 () Unit!166039)

(declare-fun mainMatchTheorem!4275 (Regex!19602 List!72318) Unit!166039)

(assert (=> b!7476679 (= lt!2627297 (mainMatchTheorem!4275 lt!2627282 s!13591))))

(declare-fun lt!2627283 () Regex!19602)

(assert (=> b!7476679 (= lt!2627293 (matchRSpec!4281 lt!2627283 s!13591))))

(assert (=> b!7476679 (= lt!2627293 (matchR!9366 lt!2627283 s!13591))))

(declare-fun lt!2627294 () Unit!166039)

(assert (=> b!7476679 (= lt!2627294 (mainMatchTheorem!4275 lt!2627283 s!13591))))

(declare-fun lt!2627281 () Regex!19602)

(declare-fun lt!2627301 () Regex!19602)

(assert (=> b!7476679 (= lt!2627282 (Union!19602 lt!2627281 lt!2627301))))

(assert (=> b!7476679 (= lt!2627301 (Concat!28447 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19602)

(assert (=> b!7476679 (= lt!2627281 (Concat!28447 r1!5845 rTail!78))))

(assert (=> b!7476679 (= lt!2627283 (Concat!28447 lt!2627300 rTail!78))))

(assert (=> b!7476679 (= lt!2627300 (Union!19602 r1!5845 r2!5783))))

(declare-fun b!7476680 () Bool)

(declare-fun e!4460131 () Bool)

(assert (=> b!7476680 (= e!4460131 tp_is_empty!49493)))

(declare-fun b!7476681 () Bool)

(declare-fun res!2999568 () Bool)

(assert (=> b!7476681 (=> res!2999568 e!4460130)))

(assert (=> b!7476681 (= res!2999568 (not (matchR!9366 rTail!78 (_2!37630 lt!2627291))))))

(declare-fun b!7476682 () Bool)

(declare-fun tp!2168432 () Bool)

(declare-fun tp!2168433 () Bool)

(assert (=> b!7476682 (= e!4460131 (and tp!2168432 tp!2168433))))

(declare-fun res!2999572 () Bool)

(assert (=> start!724564 (=> (not res!2999572) (not e!4460127))))

(assert (=> start!724564 (= res!2999572 (validRegex!10116 r1!5845))))

(assert (=> start!724564 e!4460127))

(assert (=> start!724564 e!4460134))

(assert (=> start!724564 e!4460131))

(assert (=> start!724564 e!4460128))

(assert (=> start!724564 e!4460129))

(declare-fun b!7476683 () Bool)

(assert (=> b!7476683 (= e!4460128 tp_is_empty!49493)))

(declare-fun b!7476684 () Bool)

(declare-fun tp!2168443 () Bool)

(declare-fun tp!2168440 () Bool)

(assert (=> b!7476684 (= e!4460131 (and tp!2168443 tp!2168440))))

(declare-fun b!7476685 () Bool)

(declare-fun tp!2168431 () Bool)

(declare-fun tp!2168429 () Bool)

(assert (=> b!7476685 (= e!4460134 (and tp!2168431 tp!2168429))))

(declare-fun b!7476686 () Bool)

(declare-fun e!4460132 () Bool)

(assert (=> b!7476686 (= e!4460130 e!4460132)))

(declare-fun res!2999567 () Bool)

(assert (=> b!7476686 (=> res!2999567 e!4460132)))

(declare-fun lt!2627285 () Bool)

(declare-fun lt!2627296 () Bool)

(assert (=> b!7476686 (= res!2999567 (and (not lt!2627285) (not lt!2627296)))))

(assert (=> b!7476686 (= lt!2627296 (matchRSpec!4281 r2!5783 (_1!37630 lt!2627291)))))

(assert (=> b!7476686 (= lt!2627296 (matchR!9366 r2!5783 (_1!37630 lt!2627291)))))

(declare-fun lt!2627286 () Unit!166039)

(assert (=> b!7476686 (= lt!2627286 (mainMatchTheorem!4275 r2!5783 (_1!37630 lt!2627291)))))

(assert (=> b!7476686 (= lt!2627285 (matchRSpec!4281 r1!5845 (_1!37630 lt!2627291)))))

(assert (=> b!7476686 (= lt!2627285 (matchR!9366 r1!5845 (_1!37630 lt!2627291)))))

(declare-fun lt!2627287 () Unit!166039)

(assert (=> b!7476686 (= lt!2627287 (mainMatchTheorem!4275 r1!5845 (_1!37630 lt!2627291)))))

(assert (=> b!7476686 (matchRSpec!4281 rTail!78 (_2!37630 lt!2627291))))

(declare-fun lt!2627292 () Unit!166039)

(assert (=> b!7476686 (= lt!2627292 (mainMatchTheorem!4275 rTail!78 (_2!37630 lt!2627291)))))

(assert (=> b!7476686 (matchRSpec!4281 lt!2627300 (_1!37630 lt!2627291))))

(declare-fun lt!2627295 () Unit!166039)

(assert (=> b!7476686 (= lt!2627295 (mainMatchTheorem!4275 lt!2627300 (_1!37630 lt!2627291)))))

(declare-fun b!7476687 () Bool)

(declare-fun tp!2168442 () Bool)

(assert (=> b!7476687 (= e!4460128 tp!2168442)))

(declare-fun b!7476688 () Bool)

(declare-fun tp!2168434 () Bool)

(assert (=> b!7476688 (= e!4460131 tp!2168434)))

(declare-fun b!7476689 () Bool)

(declare-fun tp!2168430 () Bool)

(assert (=> b!7476689 (= e!4460134 tp!2168430)))

(declare-fun b!7476690 () Bool)

(declare-fun tp!2168439 () Bool)

(declare-fun tp!2168441 () Bool)

(assert (=> b!7476690 (= e!4460134 (and tp!2168439 tp!2168441))))

(declare-fun b!7476691 () Bool)

(declare-fun lt!2627290 () Bool)

(declare-fun lt!2627289 () Bool)

(assert (=> b!7476691 (= e!4460132 (= lt!2627288 (or lt!2627290 lt!2627289)))))

(assert (=> b!7476691 (= lt!2627289 (matchRSpec!4281 lt!2627301 s!13591))))

(assert (=> b!7476691 (= lt!2627289 (matchR!9366 lt!2627301 s!13591))))

(declare-fun lt!2627299 () Unit!166039)

(assert (=> b!7476691 (= lt!2627299 (mainMatchTheorem!4275 lt!2627301 s!13591))))

(assert (=> b!7476691 (= lt!2627290 (matchRSpec!4281 lt!2627281 s!13591))))

(assert (=> b!7476691 (= lt!2627290 (matchR!9366 lt!2627281 s!13591))))

(declare-fun lt!2627302 () Unit!166039)

(assert (=> b!7476691 (= lt!2627302 (mainMatchTheorem!4275 lt!2627281 s!13591))))

(assert (= (and start!724564 res!2999572) b!7476672))

(assert (= (and b!7476672 res!2999569) b!7476673))

(assert (= (and b!7476673 res!2999571) b!7476679))

(assert (= (and b!7476679 (not res!2999573)) b!7476677))

(assert (= (and b!7476677 (not res!2999570)) b!7476681))

(assert (= (and b!7476681 (not res!2999568)) b!7476686))

(assert (= (and b!7476686 (not res!2999567)) b!7476691))

(assert (= (and start!724564 (is-ElementMatch!19602 r1!5845)) b!7476676))

(assert (= (and start!724564 (is-Concat!28447 r1!5845)) b!7476685))

(assert (= (and start!724564 (is-Star!19602 r1!5845)) b!7476689))

(assert (= (and start!724564 (is-Union!19602 r1!5845)) b!7476690))

(assert (= (and start!724564 (is-ElementMatch!19602 r2!5783)) b!7476680))

(assert (= (and start!724564 (is-Concat!28447 r2!5783)) b!7476682))

(assert (= (and start!724564 (is-Star!19602 r2!5783)) b!7476688))

(assert (= (and start!724564 (is-Union!19602 r2!5783)) b!7476684))

(assert (= (and start!724564 (is-ElementMatch!19602 rTail!78)) b!7476683))

(assert (= (and start!724564 (is-Concat!28447 rTail!78)) b!7476674))

(assert (= (and start!724564 (is-Star!19602 rTail!78)) b!7476687))

(assert (= (and start!724564 (is-Union!19602 rTail!78)) b!7476675))

(assert (= (and start!724564 (is-Cons!72194 s!13591)) b!7476678))

(declare-fun m!8070892 () Bool)

(assert (=> b!7476679 m!8070892))

(declare-fun m!8070894 () Bool)

(assert (=> b!7476679 m!8070894))

(declare-fun m!8070896 () Bool)

(assert (=> b!7476679 m!8070896))

(declare-fun m!8070898 () Bool)

(assert (=> b!7476679 m!8070898))

(declare-fun m!8070900 () Bool)

(assert (=> b!7476679 m!8070900))

(declare-fun m!8070902 () Bool)

(assert (=> b!7476679 m!8070902))

(declare-fun m!8070904 () Bool)

(assert (=> b!7476672 m!8070904))

(declare-fun m!8070906 () Bool)

(assert (=> b!7476673 m!8070906))

(declare-fun m!8070908 () Bool)

(assert (=> b!7476686 m!8070908))

(declare-fun m!8070910 () Bool)

(assert (=> b!7476686 m!8070910))

(declare-fun m!8070912 () Bool)

(assert (=> b!7476686 m!8070912))

(declare-fun m!8070914 () Bool)

(assert (=> b!7476686 m!8070914))

(declare-fun m!8070916 () Bool)

(assert (=> b!7476686 m!8070916))

(declare-fun m!8070918 () Bool)

(assert (=> b!7476686 m!8070918))

(declare-fun m!8070920 () Bool)

(assert (=> b!7476686 m!8070920))

(declare-fun m!8070922 () Bool)

(assert (=> b!7476686 m!8070922))

(declare-fun m!8070924 () Bool)

(assert (=> b!7476686 m!8070924))

(declare-fun m!8070926 () Bool)

(assert (=> b!7476686 m!8070926))

(declare-fun m!8070928 () Bool)

(assert (=> b!7476681 m!8070928))

(declare-fun m!8070930 () Bool)

(assert (=> b!7476677 m!8070930))

(declare-fun m!8070932 () Bool)

(assert (=> b!7476677 m!8070932))

(declare-fun m!8070934 () Bool)

(assert (=> b!7476677 m!8070934))

(declare-fun m!8070936 () Bool)

(assert (=> b!7476677 m!8070936))

(declare-fun m!8070938 () Bool)

(assert (=> b!7476677 m!8070938))

(declare-fun m!8070940 () Bool)

(assert (=> b!7476677 m!8070940))

(declare-fun m!8070942 () Bool)

(assert (=> b!7476677 m!8070942))

(assert (=> b!7476677 m!8070934))

(declare-fun m!8070944 () Bool)

(assert (=> b!7476677 m!8070944))

(declare-fun m!8070946 () Bool)

(assert (=> start!724564 m!8070946))

(declare-fun m!8070948 () Bool)

(assert (=> b!7476691 m!8070948))

(declare-fun m!8070950 () Bool)

(assert (=> b!7476691 m!8070950))

(declare-fun m!8070952 () Bool)

(assert (=> b!7476691 m!8070952))

(declare-fun m!8070954 () Bool)

(assert (=> b!7476691 m!8070954))

(declare-fun m!8070956 () Bool)

(assert (=> b!7476691 m!8070956))

(declare-fun m!8070958 () Bool)

(assert (=> b!7476691 m!8070958))

(push 1)

(assert (not b!7476681))

(assert tp_is_empty!49493)

(assert (not b!7476682))

(assert (not b!7476688))

(assert (not b!7476685))

(assert (not b!7476675))

(assert (not b!7476687))

(assert (not b!7476691))

(assert (not b!7476672))

(assert (not b!7476678))

(assert (not b!7476684))

(assert (not b!7476690))

(assert (not b!7476679))

(assert (not start!724564))

(assert (not b!7476689))

(assert (not b!7476686))

(assert (not b!7476677))

(assert (not b!7476673))

(assert (not b!7476674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2299579 () Bool)

(assert (=> d!2299579 (= (get!25267 lt!2627284) (v!54287 lt!2627284))))

(assert (=> b!7476677 d!2299579))

(declare-fun d!2299581 () Bool)

(declare-fun choose!57794 (Int) Bool)

(assert (=> d!2299581 (= (Exists!4221 lambda!463204) (choose!57794 lambda!463204))))

(declare-fun bs!1932074 () Bool)

(assert (= bs!1932074 d!2299581))

(declare-fun m!8071028 () Bool)

(assert (=> bs!1932074 m!8071028))

(assert (=> b!7476677 d!2299581))

(declare-fun d!2299583 () Bool)

(declare-fun isEmpty!41195 (Option!17159) Bool)

(assert (=> d!2299583 (= (isDefined!13848 lt!2627284) (not (isEmpty!41195 lt!2627284)))))

(declare-fun bs!1932075 () Bool)

(assert (= bs!1932075 d!2299583))

(declare-fun m!8071030 () Bool)

(assert (=> bs!1932075 m!8071030))

(assert (=> b!7476677 d!2299583))

(declare-fun bs!1932076 () Bool)

(declare-fun d!2299585 () Bool)

(assert (= bs!1932076 (and d!2299585 b!7476677)))

(declare-fun lambda!463218 () Int)

(assert (=> bs!1932076 (= lambda!463218 lambda!463204)))

(assert (=> bs!1932076 (not (= lambda!463218 lambda!463205))))

(assert (=> d!2299585 true))

(assert (=> d!2299585 true))

(assert (=> d!2299585 true))

(declare-fun lambda!463219 () Int)

(assert (=> bs!1932076 (not (= lambda!463219 lambda!463204))))

(assert (=> bs!1932076 (= lambda!463219 lambda!463205)))

(declare-fun bs!1932077 () Bool)

(assert (= bs!1932077 d!2299585))

(assert (=> bs!1932077 (not (= lambda!463219 lambda!463218))))

(assert (=> d!2299585 true))

(assert (=> d!2299585 true))

(assert (=> d!2299585 true))

(assert (=> d!2299585 (= (Exists!4221 lambda!463218) (Exists!4221 lambda!463219))))

(declare-fun lt!2627374 () Unit!166039)

(declare-fun choose!57795 (Regex!19602 Regex!19602 List!72318) Unit!166039)

(assert (=> d!2299585 (= lt!2627374 (choose!57795 lt!2627300 rTail!78 s!13591))))

(assert (=> d!2299585 (validRegex!10116 lt!2627300)))

(assert (=> d!2299585 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2555 lt!2627300 rTail!78 s!13591) lt!2627374)))

(declare-fun m!8071032 () Bool)

(assert (=> bs!1932077 m!8071032))

(declare-fun m!8071034 () Bool)

(assert (=> bs!1932077 m!8071034))

(declare-fun m!8071036 () Bool)

(assert (=> bs!1932077 m!8071036))

(declare-fun m!8071038 () Bool)

(assert (=> bs!1932077 m!8071038))

(assert (=> b!7476677 d!2299585))

(declare-fun d!2299587 () Bool)

(assert (=> d!2299587 (= (Exists!4221 lambda!463205) (choose!57794 lambda!463205))))

(declare-fun bs!1932078 () Bool)

(assert (= bs!1932078 d!2299587))

(declare-fun m!8071040 () Bool)

(assert (=> bs!1932078 m!8071040))

(assert (=> b!7476677 d!2299587))

(declare-fun bs!1932079 () Bool)

(declare-fun d!2299589 () Bool)

(assert (= bs!1932079 (and d!2299589 b!7476677)))

(declare-fun lambda!463222 () Int)

(assert (=> bs!1932079 (= lambda!463222 lambda!463204)))

(assert (=> bs!1932079 (not (= lambda!463222 lambda!463205))))

(declare-fun bs!1932080 () Bool)

(assert (= bs!1932080 (and d!2299589 d!2299585)))

(assert (=> bs!1932080 (= lambda!463222 lambda!463218)))

(assert (=> bs!1932080 (not (= lambda!463222 lambda!463219))))

(assert (=> d!2299589 true))

(assert (=> d!2299589 true))

(assert (=> d!2299589 true))

(assert (=> d!2299589 (= (isDefined!13848 (findConcatSeparation!3281 lt!2627300 rTail!78 Nil!72194 s!13591 s!13591)) (Exists!4221 lambda!463222))))

(declare-fun lt!2627377 () Unit!166039)

(declare-fun choose!57796 (Regex!19602 Regex!19602 List!72318) Unit!166039)

(assert (=> d!2299589 (= lt!2627377 (choose!57796 lt!2627300 rTail!78 s!13591))))

(assert (=> d!2299589 (validRegex!10116 lt!2627300)))

(assert (=> d!2299589 (= (lemmaFindConcatSeparationEquivalentToExists!3039 lt!2627300 rTail!78 s!13591) lt!2627377)))

(declare-fun bs!1932081 () Bool)

(assert (= bs!1932081 d!2299589))

(assert (=> bs!1932081 m!8070936))

(assert (=> bs!1932081 m!8071038))

(assert (=> bs!1932081 m!8070936))

(declare-fun m!8071042 () Bool)

(assert (=> bs!1932081 m!8071042))

(declare-fun m!8071044 () Bool)

(assert (=> bs!1932081 m!8071044))

(declare-fun m!8071046 () Bool)

(assert (=> bs!1932081 m!8071046))

(assert (=> b!7476677 d!2299589))

(declare-fun b!7476840 () Bool)

(declare-fun e!4460204 () Bool)

(declare-fun e!4460206 () Bool)

(assert (=> b!7476840 (= e!4460204 e!4460206)))

(declare-fun res!2999648 () Bool)

(assert (=> b!7476840 (=> (not res!2999648) (not e!4460206))))

(declare-fun lt!2627380 () Bool)

(assert (=> b!7476840 (= res!2999648 (not lt!2627380))))

(declare-fun b!7476841 () Bool)

(declare-fun res!2999653 () Bool)

(assert (=> b!7476841 (=> res!2999653 e!4460204)))

(declare-fun e!4460203 () Bool)

(assert (=> b!7476841 (= res!2999653 e!4460203)))

(declare-fun res!2999654 () Bool)

(assert (=> b!7476841 (=> (not res!2999654) (not e!4460203))))

(assert (=> b!7476841 (= res!2999654 lt!2627380)))

(declare-fun b!7476843 () Bool)

(declare-fun res!2999650 () Bool)

(assert (=> b!7476843 (=> res!2999650 e!4460204)))

(assert (=> b!7476843 (= res!2999650 (not (is-ElementMatch!19602 lt!2627300)))))

(declare-fun e!4460207 () Bool)

(assert (=> b!7476843 (= e!4460207 e!4460204)))

(declare-fun b!7476844 () Bool)

(declare-fun res!2999649 () Bool)

(assert (=> b!7476844 (=> (not res!2999649) (not e!4460203))))

(declare-fun call!686423 () Bool)

(assert (=> b!7476844 (= res!2999649 (not call!686423))))

(declare-fun b!7476845 () Bool)

(declare-fun e!4460201 () Bool)

(declare-fun head!15339 (List!72318) C!39478)

(assert (=> b!7476845 (= e!4460201 (not (= (head!15339 (_1!37630 lt!2627291)) (c!1381147 lt!2627300))))))

(declare-fun bm!686418 () Bool)

(declare-fun isEmpty!41196 (List!72318) Bool)

(assert (=> bm!686418 (= call!686423 (isEmpty!41196 (_1!37630 lt!2627291)))))

(declare-fun b!7476846 () Bool)

(declare-fun e!4460205 () Bool)

(assert (=> b!7476846 (= e!4460205 e!4460207)))

(declare-fun c!1381165 () Bool)

(assert (=> b!7476846 (= c!1381165 (is-EmptyLang!19602 lt!2627300))))

(declare-fun b!7476847 () Bool)

(assert (=> b!7476847 (= e!4460203 (= (head!15339 (_1!37630 lt!2627291)) (c!1381147 lt!2627300)))))

(declare-fun d!2299593 () Bool)

(assert (=> d!2299593 e!4460205))

(declare-fun c!1381164 () Bool)

(assert (=> d!2299593 (= c!1381164 (is-EmptyExpr!19602 lt!2627300))))

(declare-fun e!4460202 () Bool)

(assert (=> d!2299593 (= lt!2627380 e!4460202)))

(declare-fun c!1381163 () Bool)

(assert (=> d!2299593 (= c!1381163 (isEmpty!41196 (_1!37630 lt!2627291)))))

(assert (=> d!2299593 (validRegex!10116 lt!2627300)))

(assert (=> d!2299593 (= (matchR!9366 lt!2627300 (_1!37630 lt!2627291)) lt!2627380)))

(declare-fun b!7476842 () Bool)

(declare-fun derivativeStep!5599 (Regex!19602 C!39478) Regex!19602)

(declare-fun tail!14908 (List!72318) List!72318)

(assert (=> b!7476842 (= e!4460202 (matchR!9366 (derivativeStep!5599 lt!2627300 (head!15339 (_1!37630 lt!2627291))) (tail!14908 (_1!37630 lt!2627291))))))

(declare-fun b!7476848 () Bool)

(assert (=> b!7476848 (= e!4460205 (= lt!2627380 call!686423))))

(declare-fun b!7476849 () Bool)

(assert (=> b!7476849 (= e!4460207 (not lt!2627380))))

(declare-fun b!7476850 () Bool)

(declare-fun res!2999652 () Bool)

(assert (=> b!7476850 (=> (not res!2999652) (not e!4460203))))

(assert (=> b!7476850 (= res!2999652 (isEmpty!41196 (tail!14908 (_1!37630 lt!2627291))))))

(declare-fun b!7476851 () Bool)

(assert (=> b!7476851 (= e!4460206 e!4460201)))

(declare-fun res!2999647 () Bool)

(assert (=> b!7476851 (=> res!2999647 e!4460201)))

(assert (=> b!7476851 (= res!2999647 call!686423)))

(declare-fun b!7476852 () Bool)

(declare-fun res!2999651 () Bool)

(assert (=> b!7476852 (=> res!2999651 e!4460201)))

(assert (=> b!7476852 (= res!2999651 (not (isEmpty!41196 (tail!14908 (_1!37630 lt!2627291)))))))

(declare-fun b!7476853 () Bool)

(declare-fun nullable!8540 (Regex!19602) Bool)

(assert (=> b!7476853 (= e!4460202 (nullable!8540 lt!2627300))))

(assert (= (and d!2299593 c!1381163) b!7476853))

(assert (= (and d!2299593 (not c!1381163)) b!7476842))

(assert (= (and d!2299593 c!1381164) b!7476848))

(assert (= (and d!2299593 (not c!1381164)) b!7476846))

(assert (= (and b!7476846 c!1381165) b!7476849))

(assert (= (and b!7476846 (not c!1381165)) b!7476843))

(assert (= (and b!7476843 (not res!2999650)) b!7476841))

(assert (= (and b!7476841 res!2999654) b!7476844))

(assert (= (and b!7476844 res!2999649) b!7476850))

(assert (= (and b!7476850 res!2999652) b!7476847))

(assert (= (and b!7476841 (not res!2999653)) b!7476840))

(assert (= (and b!7476840 res!2999648) b!7476851))

(assert (= (and b!7476851 (not res!2999647)) b!7476852))

(assert (= (and b!7476852 (not res!2999651)) b!7476845))

(assert (= (or b!7476848 b!7476844 b!7476851) bm!686418))

(declare-fun m!8071048 () Bool)

(assert (=> b!7476853 m!8071048))

(declare-fun m!8071050 () Bool)

(assert (=> d!2299593 m!8071050))

(assert (=> d!2299593 m!8071038))

(declare-fun m!8071052 () Bool)

(assert (=> b!7476850 m!8071052))

(assert (=> b!7476850 m!8071052))

(declare-fun m!8071054 () Bool)

(assert (=> b!7476850 m!8071054))

(declare-fun m!8071056 () Bool)

(assert (=> b!7476845 m!8071056))

(assert (=> b!7476852 m!8071052))

(assert (=> b!7476852 m!8071052))

(assert (=> b!7476852 m!8071054))

(assert (=> b!7476842 m!8071056))

(assert (=> b!7476842 m!8071056))

(declare-fun m!8071058 () Bool)

(assert (=> b!7476842 m!8071058))

(assert (=> b!7476842 m!8071052))

(assert (=> b!7476842 m!8071058))

(assert (=> b!7476842 m!8071052))

(declare-fun m!8071060 () Bool)

(assert (=> b!7476842 m!8071060))

(assert (=> b!7476847 m!8071056))

(assert (=> bm!686418 m!8071050))

(assert (=> b!7476677 d!2299593))

(declare-fun b!7476876 () Bool)

(declare-fun e!4460224 () Option!17159)

(assert (=> b!7476876 (= e!4460224 None!17158)))

(declare-fun b!7476878 () Bool)

(declare-fun lt!2627389 () Unit!166039)

(declare-fun lt!2627388 () Unit!166039)

(assert (=> b!7476878 (= lt!2627389 lt!2627388)))

(declare-fun ++!17216 (List!72318 List!72318) List!72318)

(assert (=> b!7476878 (= (++!17216 (++!17216 Nil!72194 (Cons!72194 (h!78642 s!13591) Nil!72194)) (t!386887 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3092 (List!72318 C!39478 List!72318 List!72318) Unit!166039)

(assert (=> b!7476878 (= lt!2627388 (lemmaMoveElementToOtherListKeepsConcatEq!3092 Nil!72194 (h!78642 s!13591) (t!386887 s!13591) s!13591))))

(assert (=> b!7476878 (= e!4460224 (findConcatSeparation!3281 lt!2627300 rTail!78 (++!17216 Nil!72194 (Cons!72194 (h!78642 s!13591) Nil!72194)) (t!386887 s!13591) s!13591))))

(declare-fun b!7476879 () Bool)

(declare-fun e!4460223 () Option!17159)

(assert (=> b!7476879 (= e!4460223 e!4460224)))

(declare-fun c!1381170 () Bool)

(assert (=> b!7476879 (= c!1381170 (is-Nil!72194 s!13591))))

(declare-fun b!7476880 () Bool)

(declare-fun e!4460221 () Bool)

(assert (=> b!7476880 (= e!4460221 (matchR!9366 rTail!78 s!13591))))

(declare-fun b!7476881 () Bool)

(declare-fun e!4460220 () Bool)

(declare-fun lt!2627387 () Option!17159)

(assert (=> b!7476881 (= e!4460220 (not (isDefined!13848 lt!2627387)))))

(declare-fun b!7476882 () Bool)

(declare-fun res!2999670 () Bool)

(declare-fun e!4460222 () Bool)

(assert (=> b!7476882 (=> (not res!2999670) (not e!4460222))))

(assert (=> b!7476882 (= res!2999670 (matchR!9366 lt!2627300 (_1!37630 (get!25267 lt!2627387))))))

(declare-fun b!7476883 () Bool)

(declare-fun res!2999672 () Bool)

(assert (=> b!7476883 (=> (not res!2999672) (not e!4460222))))

(assert (=> b!7476883 (= res!2999672 (matchR!9366 rTail!78 (_2!37630 (get!25267 lt!2627387))))))

(declare-fun b!7476884 () Bool)

(assert (=> b!7476884 (= e!4460222 (= (++!17216 (_1!37630 (get!25267 lt!2627387)) (_2!37630 (get!25267 lt!2627387))) s!13591))))

(declare-fun d!2299595 () Bool)

(assert (=> d!2299595 e!4460220))

(declare-fun res!2999669 () Bool)

(assert (=> d!2299595 (=> res!2999669 e!4460220)))

(assert (=> d!2299595 (= res!2999669 e!4460222)))

(declare-fun res!2999671 () Bool)

(assert (=> d!2299595 (=> (not res!2999671) (not e!4460222))))

(assert (=> d!2299595 (= res!2999671 (isDefined!13848 lt!2627387))))

(assert (=> d!2299595 (= lt!2627387 e!4460223)))

(declare-fun c!1381171 () Bool)

(assert (=> d!2299595 (= c!1381171 e!4460221)))

(declare-fun res!2999673 () Bool)

(assert (=> d!2299595 (=> (not res!2999673) (not e!4460221))))

(assert (=> d!2299595 (= res!2999673 (matchR!9366 lt!2627300 Nil!72194))))

(assert (=> d!2299595 (validRegex!10116 lt!2627300)))

(assert (=> d!2299595 (= (findConcatSeparation!3281 lt!2627300 rTail!78 Nil!72194 s!13591 s!13591) lt!2627387)))

(declare-fun b!7476877 () Bool)

(assert (=> b!7476877 (= e!4460223 (Some!17158 (tuple2!68655 Nil!72194 s!13591)))))

(assert (= (and d!2299595 res!2999673) b!7476880))

(assert (= (and d!2299595 c!1381171) b!7476877))

(assert (= (and d!2299595 (not c!1381171)) b!7476879))

(assert (= (and b!7476879 c!1381170) b!7476876))

(assert (= (and b!7476879 (not c!1381170)) b!7476878))

(assert (= (and d!2299595 res!2999671) b!7476882))

(assert (= (and b!7476882 res!2999670) b!7476883))

(assert (= (and b!7476883 res!2999672) b!7476884))

(assert (= (and d!2299595 (not res!2999669)) b!7476881))

(declare-fun m!8071062 () Bool)

(assert (=> b!7476880 m!8071062))

(declare-fun m!8071064 () Bool)

(assert (=> b!7476883 m!8071064))

(declare-fun m!8071066 () Bool)

(assert (=> b!7476883 m!8071066))

(declare-fun m!8071068 () Bool)

(assert (=> b!7476878 m!8071068))

(assert (=> b!7476878 m!8071068))

(declare-fun m!8071070 () Bool)

(assert (=> b!7476878 m!8071070))

(declare-fun m!8071072 () Bool)

(assert (=> b!7476878 m!8071072))

(assert (=> b!7476878 m!8071068))

(declare-fun m!8071074 () Bool)

(assert (=> b!7476878 m!8071074))

(assert (=> b!7476882 m!8071064))

(declare-fun m!8071076 () Bool)

(assert (=> b!7476882 m!8071076))

(assert (=> b!7476884 m!8071064))

(declare-fun m!8071078 () Bool)

(assert (=> b!7476884 m!8071078))

(declare-fun m!8071080 () Bool)

(assert (=> b!7476881 m!8071080))

(assert (=> d!2299595 m!8071080))

(declare-fun m!8071082 () Bool)

(assert (=> d!2299595 m!8071082))

(assert (=> d!2299595 m!8071038))

(assert (=> b!7476677 d!2299595))

(declare-fun bm!686431 () Bool)

(declare-fun call!686436 () Bool)

(declare-fun c!1381181 () Bool)

(assert (=> bm!686431 (= call!686436 (validRegex!10116 (ite c!1381181 (regTwo!39717 r2!5783) (regTwo!39716 r2!5783))))))

(declare-fun d!2299597 () Bool)

(declare-fun res!2999690 () Bool)

(declare-fun e!4460252 () Bool)

(assert (=> d!2299597 (=> res!2999690 e!4460252)))

(assert (=> d!2299597 (= res!2999690 (is-ElementMatch!19602 r2!5783))))

(assert (=> d!2299597 (= (validRegex!10116 r2!5783) e!4460252)))

(declare-fun b!7476914 () Bool)

(declare-fun res!2999687 () Bool)

(declare-fun e!4460251 () Bool)

(assert (=> b!7476914 (=> res!2999687 e!4460251)))

(assert (=> b!7476914 (= res!2999687 (not (is-Concat!28447 r2!5783)))))

(declare-fun e!4460249 () Bool)

(assert (=> b!7476914 (= e!4460249 e!4460251)))

(declare-fun b!7476915 () Bool)

(declare-fun e!4460247 () Bool)

(assert (=> b!7476915 (= e!4460247 call!686436)))

(declare-fun b!7476916 () Bool)

(declare-fun e!4460250 () Bool)

(declare-fun e!4460246 () Bool)

(assert (=> b!7476916 (= e!4460250 e!4460246)))

(declare-fun res!2999689 () Bool)

(assert (=> b!7476916 (= res!2999689 (not (nullable!8540 (reg!19931 r2!5783))))))

(assert (=> b!7476916 (=> (not res!2999689) (not e!4460246))))

(declare-fun b!7476917 () Bool)

(assert (=> b!7476917 (= e!4460251 e!4460247)))

(declare-fun res!2999688 () Bool)

(assert (=> b!7476917 (=> (not res!2999688) (not e!4460247))))

(declare-fun call!686438 () Bool)

(assert (=> b!7476917 (= res!2999688 call!686438)))

(declare-fun c!1381180 () Bool)

(declare-fun bm!686432 () Bool)

(declare-fun call!686437 () Bool)

(assert (=> bm!686432 (= call!686437 (validRegex!10116 (ite c!1381180 (reg!19931 r2!5783) (ite c!1381181 (regOne!39717 r2!5783) (regOne!39716 r2!5783)))))))

(declare-fun bm!686433 () Bool)

(assert (=> bm!686433 (= call!686438 call!686437)))

(declare-fun b!7476918 () Bool)

(assert (=> b!7476918 (= e!4460250 e!4460249)))

(assert (=> b!7476918 (= c!1381181 (is-Union!19602 r2!5783))))

(declare-fun b!7476919 () Bool)

(assert (=> b!7476919 (= e!4460252 e!4460250)))

(assert (=> b!7476919 (= c!1381180 (is-Star!19602 r2!5783))))

(declare-fun b!7476920 () Bool)

(assert (=> b!7476920 (= e!4460246 call!686437)))

(declare-fun b!7476921 () Bool)

(declare-fun res!2999691 () Bool)

(declare-fun e!4460248 () Bool)

(assert (=> b!7476921 (=> (not res!2999691) (not e!4460248))))

(assert (=> b!7476921 (= res!2999691 call!686438)))

(assert (=> b!7476921 (= e!4460249 e!4460248)))

(declare-fun b!7476922 () Bool)

(assert (=> b!7476922 (= e!4460248 call!686436)))

(assert (= (and d!2299597 (not res!2999690)) b!7476919))

(assert (= (and b!7476919 c!1381180) b!7476916))

(assert (= (and b!7476919 (not c!1381180)) b!7476918))

(assert (= (and b!7476916 res!2999689) b!7476920))

(assert (= (and b!7476918 c!1381181) b!7476921))

(assert (= (and b!7476918 (not c!1381181)) b!7476914))

(assert (= (and b!7476921 res!2999691) b!7476922))

(assert (= (and b!7476914 (not res!2999687)) b!7476917))

(assert (= (and b!7476917 res!2999688) b!7476915))

(assert (= (or b!7476922 b!7476915) bm!686431))

(assert (= (or b!7476921 b!7476917) bm!686433))

(assert (= (or b!7476920 bm!686433) bm!686432))

(declare-fun m!8071088 () Bool)

(assert (=> bm!686431 m!8071088))

(declare-fun m!8071092 () Bool)

(assert (=> b!7476916 m!8071092))

(declare-fun m!8071096 () Bool)

(assert (=> bm!686432 m!8071096))

(assert (=> b!7476672 d!2299597))

(declare-fun bm!686434 () Bool)

(declare-fun call!686439 () Bool)

(declare-fun c!1381183 () Bool)

(assert (=> bm!686434 (= call!686439 (validRegex!10116 (ite c!1381183 (regTwo!39717 rTail!78) (regTwo!39716 rTail!78))))))

(declare-fun d!2299599 () Bool)

(declare-fun res!2999695 () Bool)

(declare-fun e!4460259 () Bool)

(assert (=> d!2299599 (=> res!2999695 e!4460259)))

(assert (=> d!2299599 (= res!2999695 (is-ElementMatch!19602 rTail!78))))

(assert (=> d!2299599 (= (validRegex!10116 rTail!78) e!4460259)))

(declare-fun b!7476923 () Bool)

(declare-fun res!2999692 () Bool)

(declare-fun e!4460258 () Bool)

(assert (=> b!7476923 (=> res!2999692 e!4460258)))

(assert (=> b!7476923 (= res!2999692 (not (is-Concat!28447 rTail!78)))))

(declare-fun e!4460256 () Bool)

(assert (=> b!7476923 (= e!4460256 e!4460258)))

(declare-fun b!7476924 () Bool)

(declare-fun e!4460254 () Bool)

(assert (=> b!7476924 (= e!4460254 call!686439)))

(declare-fun b!7476925 () Bool)

(declare-fun e!4460257 () Bool)

(declare-fun e!4460253 () Bool)

(assert (=> b!7476925 (= e!4460257 e!4460253)))

(declare-fun res!2999694 () Bool)

(assert (=> b!7476925 (= res!2999694 (not (nullable!8540 (reg!19931 rTail!78))))))

(assert (=> b!7476925 (=> (not res!2999694) (not e!4460253))))

(declare-fun b!7476926 () Bool)

(assert (=> b!7476926 (= e!4460258 e!4460254)))

(declare-fun res!2999693 () Bool)

(assert (=> b!7476926 (=> (not res!2999693) (not e!4460254))))

(declare-fun call!686441 () Bool)

(assert (=> b!7476926 (= res!2999693 call!686441)))

(declare-fun call!686440 () Bool)

(declare-fun c!1381182 () Bool)

(declare-fun bm!686435 () Bool)

(assert (=> bm!686435 (= call!686440 (validRegex!10116 (ite c!1381182 (reg!19931 rTail!78) (ite c!1381183 (regOne!39717 rTail!78) (regOne!39716 rTail!78)))))))

(declare-fun bm!686436 () Bool)

(assert (=> bm!686436 (= call!686441 call!686440)))

(declare-fun b!7476927 () Bool)

(assert (=> b!7476927 (= e!4460257 e!4460256)))

(assert (=> b!7476927 (= c!1381183 (is-Union!19602 rTail!78))))

(declare-fun b!7476928 () Bool)

(assert (=> b!7476928 (= e!4460259 e!4460257)))

(assert (=> b!7476928 (= c!1381182 (is-Star!19602 rTail!78))))

(declare-fun b!7476929 () Bool)

(assert (=> b!7476929 (= e!4460253 call!686440)))

(declare-fun b!7476930 () Bool)

(declare-fun res!2999696 () Bool)

(declare-fun e!4460255 () Bool)

(assert (=> b!7476930 (=> (not res!2999696) (not e!4460255))))

(assert (=> b!7476930 (= res!2999696 call!686441)))

(assert (=> b!7476930 (= e!4460256 e!4460255)))

(declare-fun b!7476931 () Bool)

(assert (=> b!7476931 (= e!4460255 call!686439)))

(assert (= (and d!2299599 (not res!2999695)) b!7476928))

(assert (= (and b!7476928 c!1381182) b!7476925))

(assert (= (and b!7476928 (not c!1381182)) b!7476927))

(assert (= (and b!7476925 res!2999694) b!7476929))

(assert (= (and b!7476927 c!1381183) b!7476930))

(assert (= (and b!7476927 (not c!1381183)) b!7476923))

(assert (= (and b!7476930 res!2999696) b!7476931))

(assert (= (and b!7476923 (not res!2999692)) b!7476926))

(assert (= (and b!7476926 res!2999693) b!7476924))

(assert (= (or b!7476931 b!7476924) bm!686434))

(assert (= (or b!7476930 b!7476926) bm!686436))

(assert (= (or b!7476929 bm!686436) bm!686435))

(declare-fun m!8071098 () Bool)

(assert (=> bm!686434 m!8071098))

(declare-fun m!8071100 () Bool)

(assert (=> b!7476925 m!8071100))

(declare-fun m!8071102 () Bool)

(assert (=> bm!686435 m!8071102))

(assert (=> b!7476673 d!2299599))

(declare-fun bm!686437 () Bool)

(declare-fun call!686442 () Bool)

(declare-fun c!1381185 () Bool)

(assert (=> bm!686437 (= call!686442 (validRegex!10116 (ite c!1381185 (regTwo!39717 r1!5845) (regTwo!39716 r1!5845))))))

(declare-fun d!2299603 () Bool)

(declare-fun res!2999700 () Bool)

(declare-fun e!4460266 () Bool)

(assert (=> d!2299603 (=> res!2999700 e!4460266)))

(assert (=> d!2299603 (= res!2999700 (is-ElementMatch!19602 r1!5845))))

(assert (=> d!2299603 (= (validRegex!10116 r1!5845) e!4460266)))

(declare-fun b!7476932 () Bool)

(declare-fun res!2999697 () Bool)

(declare-fun e!4460265 () Bool)

(assert (=> b!7476932 (=> res!2999697 e!4460265)))

(assert (=> b!7476932 (= res!2999697 (not (is-Concat!28447 r1!5845)))))

(declare-fun e!4460263 () Bool)

(assert (=> b!7476932 (= e!4460263 e!4460265)))

(declare-fun b!7476933 () Bool)

(declare-fun e!4460261 () Bool)

(assert (=> b!7476933 (= e!4460261 call!686442)))

(declare-fun b!7476934 () Bool)

(declare-fun e!4460264 () Bool)

(declare-fun e!4460260 () Bool)

(assert (=> b!7476934 (= e!4460264 e!4460260)))

(declare-fun res!2999699 () Bool)

(assert (=> b!7476934 (= res!2999699 (not (nullable!8540 (reg!19931 r1!5845))))))

(assert (=> b!7476934 (=> (not res!2999699) (not e!4460260))))

(declare-fun b!7476935 () Bool)

(assert (=> b!7476935 (= e!4460265 e!4460261)))

(declare-fun res!2999698 () Bool)

(assert (=> b!7476935 (=> (not res!2999698) (not e!4460261))))

(declare-fun call!686444 () Bool)

(assert (=> b!7476935 (= res!2999698 call!686444)))

(declare-fun bm!686438 () Bool)

(declare-fun c!1381184 () Bool)

(declare-fun call!686443 () Bool)

(assert (=> bm!686438 (= call!686443 (validRegex!10116 (ite c!1381184 (reg!19931 r1!5845) (ite c!1381185 (regOne!39717 r1!5845) (regOne!39716 r1!5845)))))))

(declare-fun bm!686439 () Bool)

(assert (=> bm!686439 (= call!686444 call!686443)))

(declare-fun b!7476936 () Bool)

(assert (=> b!7476936 (= e!4460264 e!4460263)))

(assert (=> b!7476936 (= c!1381185 (is-Union!19602 r1!5845))))

(declare-fun b!7476937 () Bool)

(assert (=> b!7476937 (= e!4460266 e!4460264)))

(assert (=> b!7476937 (= c!1381184 (is-Star!19602 r1!5845))))

(declare-fun b!7476938 () Bool)

(assert (=> b!7476938 (= e!4460260 call!686443)))

(declare-fun b!7476939 () Bool)

(declare-fun res!2999701 () Bool)

(declare-fun e!4460262 () Bool)

(assert (=> b!7476939 (=> (not res!2999701) (not e!4460262))))

(assert (=> b!7476939 (= res!2999701 call!686444)))

(assert (=> b!7476939 (= e!4460263 e!4460262)))

(declare-fun b!7476940 () Bool)

(assert (=> b!7476940 (= e!4460262 call!686442)))

(assert (= (and d!2299603 (not res!2999700)) b!7476937))

(assert (= (and b!7476937 c!1381184) b!7476934))

(assert (= (and b!7476937 (not c!1381184)) b!7476936))

(assert (= (and b!7476934 res!2999699) b!7476938))

(assert (= (and b!7476936 c!1381185) b!7476939))

(assert (= (and b!7476936 (not c!1381185)) b!7476932))

(assert (= (and b!7476939 res!2999701) b!7476940))

(assert (= (and b!7476932 (not res!2999697)) b!7476935))

(assert (= (and b!7476935 res!2999698) b!7476933))

(assert (= (or b!7476940 b!7476933) bm!686437))

(assert (= (or b!7476939 b!7476935) bm!686439))

(assert (= (or b!7476938 bm!686439) bm!686438))

(declare-fun m!8071104 () Bool)

(assert (=> bm!686437 m!8071104))

(declare-fun m!8071106 () Bool)

(assert (=> b!7476934 m!8071106))

(declare-fun m!8071108 () Bool)

(assert (=> bm!686438 m!8071108))

(assert (=> start!724564 d!2299603))

(declare-fun bs!1932086 () Bool)

(declare-fun b!7476973 () Bool)

(assert (= bs!1932086 (and b!7476973 d!2299585)))

(declare-fun lambda!463233 () Int)

(assert (=> bs!1932086 (not (= lambda!463233 lambda!463219))))

(declare-fun bs!1932087 () Bool)

(assert (= bs!1932087 (and b!7476973 d!2299589)))

(assert (=> bs!1932087 (not (= lambda!463233 lambda!463222))))

(declare-fun bs!1932088 () Bool)

(assert (= bs!1932088 (and b!7476973 b!7476677)))

(assert (=> bs!1932088 (not (= lambda!463233 lambda!463204))))

(assert (=> bs!1932086 (not (= lambda!463233 lambda!463218))))

(assert (=> bs!1932088 (not (= lambda!463233 lambda!463205))))

(assert (=> b!7476973 true))

(assert (=> b!7476973 true))

(declare-fun bs!1932089 () Bool)

(declare-fun b!7476981 () Bool)

(assert (= bs!1932089 (and b!7476981 d!2299585)))

(declare-fun lambda!463234 () Int)

(assert (=> bs!1932089 (= (and (= (regOne!39716 lt!2627283) lt!2627300) (= (regTwo!39716 lt!2627283) rTail!78)) (= lambda!463234 lambda!463219))))

(declare-fun bs!1932090 () Bool)

(assert (= bs!1932090 (and b!7476981 d!2299589)))

(assert (=> bs!1932090 (not (= lambda!463234 lambda!463222))))

(declare-fun bs!1932091 () Bool)

(assert (= bs!1932091 (and b!7476981 b!7476677)))

(assert (=> bs!1932091 (not (= lambda!463234 lambda!463204))))

(assert (=> bs!1932089 (not (= lambda!463234 lambda!463218))))

(declare-fun bs!1932092 () Bool)

(assert (= bs!1932092 (and b!7476981 b!7476973)))

(assert (=> bs!1932092 (not (= lambda!463234 lambda!463233))))

(assert (=> bs!1932091 (= (and (= (regOne!39716 lt!2627283) lt!2627300) (= (regTwo!39716 lt!2627283) rTail!78)) (= lambda!463234 lambda!463205))))

(assert (=> b!7476981 true))

(assert (=> b!7476981 true))

(declare-fun b!7476974 () Bool)

(declare-fun res!2999719 () Bool)

(declare-fun e!4460290 () Bool)

(assert (=> b!7476974 (=> res!2999719 e!4460290)))

(declare-fun call!686450 () Bool)

(assert (=> b!7476974 (= res!2999719 call!686450)))

(declare-fun e!4460291 () Bool)

(assert (=> b!7476974 (= e!4460291 e!4460290)))

(declare-fun b!7476975 () Bool)

(declare-fun e!4460286 () Bool)

(declare-fun e!4460289 () Bool)

(assert (=> b!7476975 (= e!4460286 e!4460289)))

(declare-fun res!2999720 () Bool)

(assert (=> b!7476975 (= res!2999720 (not (is-EmptyLang!19602 lt!2627283)))))

(assert (=> b!7476975 (=> (not res!2999720) (not e!4460289))))

(declare-fun b!7476976 () Bool)

(declare-fun c!1381195 () Bool)

(assert (=> b!7476976 (= c!1381195 (is-Union!19602 lt!2627283))))

(declare-fun e!4460285 () Bool)

(declare-fun e!4460288 () Bool)

(assert (=> b!7476976 (= e!4460285 e!4460288)))

(declare-fun b!7476977 () Bool)

(assert (=> b!7476977 (= e!4460286 call!686450)))

(declare-fun b!7476978 () Bool)

(assert (=> b!7476978 (= e!4460288 e!4460291)))

(declare-fun c!1381194 () Bool)

(assert (=> b!7476978 (= c!1381194 (is-Star!19602 lt!2627283))))

(declare-fun b!7476979 () Bool)

(declare-fun e!4460287 () Bool)

(assert (=> b!7476979 (= e!4460288 e!4460287)))

(declare-fun res!2999718 () Bool)

(assert (=> b!7476979 (= res!2999718 (matchRSpec!4281 (regOne!39717 lt!2627283) s!13591))))

(assert (=> b!7476979 (=> res!2999718 e!4460287)))

(declare-fun b!7476980 () Bool)

(assert (=> b!7476980 (= e!4460287 (matchRSpec!4281 (regTwo!39717 lt!2627283) s!13591))))

(declare-fun bm!686444 () Bool)

(declare-fun call!686449 () Bool)

(assert (=> bm!686444 (= call!686449 (Exists!4221 (ite c!1381194 lambda!463233 lambda!463234)))))

(declare-fun d!2299605 () Bool)

(declare-fun c!1381196 () Bool)

(assert (=> d!2299605 (= c!1381196 (is-EmptyExpr!19602 lt!2627283))))

(assert (=> d!2299605 (= (matchRSpec!4281 lt!2627283 s!13591) e!4460286)))

(assert (=> b!7476973 (= e!4460290 call!686449)))

(assert (=> b!7476981 (= e!4460291 call!686449)))

(declare-fun b!7476982 () Bool)

(assert (=> b!7476982 (= e!4460285 (= s!13591 (Cons!72194 (c!1381147 lt!2627283) Nil!72194)))))

(declare-fun bm!686445 () Bool)

(assert (=> bm!686445 (= call!686450 (isEmpty!41196 s!13591))))

(declare-fun b!7476983 () Bool)

(declare-fun c!1381197 () Bool)

(assert (=> b!7476983 (= c!1381197 (is-ElementMatch!19602 lt!2627283))))

(assert (=> b!7476983 (= e!4460289 e!4460285)))

(assert (= (and d!2299605 c!1381196) b!7476977))

(assert (= (and d!2299605 (not c!1381196)) b!7476975))

(assert (= (and b!7476975 res!2999720) b!7476983))

(assert (= (and b!7476983 c!1381197) b!7476982))

(assert (= (and b!7476983 (not c!1381197)) b!7476976))

(assert (= (and b!7476976 c!1381195) b!7476979))

(assert (= (and b!7476976 (not c!1381195)) b!7476978))

(assert (= (and b!7476979 (not res!2999718)) b!7476980))

(assert (= (and b!7476978 c!1381194) b!7476974))

(assert (= (and b!7476978 (not c!1381194)) b!7476981))

(assert (= (and b!7476974 (not res!2999719)) b!7476973))

(assert (= (or b!7476973 b!7476981) bm!686444))

(assert (= (or b!7476977 b!7476974) bm!686445))

(declare-fun m!8071112 () Bool)

(assert (=> b!7476979 m!8071112))

(declare-fun m!8071114 () Bool)

(assert (=> b!7476980 m!8071114))

(declare-fun m!8071116 () Bool)

(assert (=> bm!686444 m!8071116))

(declare-fun m!8071118 () Bool)

(assert (=> bm!686445 m!8071118))

(assert (=> b!7476679 d!2299605))

(declare-fun d!2299609 () Bool)

(assert (=> d!2299609 (= (matchR!9366 lt!2627283 s!13591) (matchRSpec!4281 lt!2627283 s!13591))))

(declare-fun lt!2627397 () Unit!166039)

(declare-fun choose!57797 (Regex!19602 List!72318) Unit!166039)

(assert (=> d!2299609 (= lt!2627397 (choose!57797 lt!2627283 s!13591))))

(assert (=> d!2299609 (validRegex!10116 lt!2627283)))

(assert (=> d!2299609 (= (mainMatchTheorem!4275 lt!2627283 s!13591) lt!2627397)))

(declare-fun bs!1932093 () Bool)

(assert (= bs!1932093 d!2299609))

(assert (=> bs!1932093 m!8070896))

(assert (=> bs!1932093 m!8070892))

(declare-fun m!8071120 () Bool)

(assert (=> bs!1932093 m!8071120))

(declare-fun m!8071122 () Bool)

(assert (=> bs!1932093 m!8071122))

(assert (=> b!7476679 d!2299609))

(declare-fun d!2299611 () Bool)

(assert (=> d!2299611 (= (matchR!9366 lt!2627282 s!13591) (matchRSpec!4281 lt!2627282 s!13591))))

(declare-fun lt!2627398 () Unit!166039)

(assert (=> d!2299611 (= lt!2627398 (choose!57797 lt!2627282 s!13591))))

(assert (=> d!2299611 (validRegex!10116 lt!2627282)))

(assert (=> d!2299611 (= (mainMatchTheorem!4275 lt!2627282 s!13591) lt!2627398)))

(declare-fun bs!1932094 () Bool)

(assert (= bs!1932094 d!2299611))

(assert (=> bs!1932094 m!8070902))

(assert (=> bs!1932094 m!8070900))

(declare-fun m!8071124 () Bool)

(assert (=> bs!1932094 m!8071124))

(declare-fun m!8071126 () Bool)

(assert (=> bs!1932094 m!8071126))

(assert (=> b!7476679 d!2299611))

(declare-fun b!7477012 () Bool)

(declare-fun e!4460309 () Bool)

(declare-fun e!4460311 () Bool)

(assert (=> b!7477012 (= e!4460309 e!4460311)))

(declare-fun res!2999738 () Bool)

(assert (=> b!7477012 (=> (not res!2999738) (not e!4460311))))

(declare-fun lt!2627399 () Bool)

(assert (=> b!7477012 (= res!2999738 (not lt!2627399))))

(declare-fun b!7477013 () Bool)

(declare-fun res!2999743 () Bool)

(assert (=> b!7477013 (=> res!2999743 e!4460309)))

(declare-fun e!4460308 () Bool)

(assert (=> b!7477013 (= res!2999743 e!4460308)))

(declare-fun res!2999744 () Bool)

(assert (=> b!7477013 (=> (not res!2999744) (not e!4460308))))

(assert (=> b!7477013 (= res!2999744 lt!2627399)))

(declare-fun b!7477015 () Bool)

(declare-fun res!2999740 () Bool)

(assert (=> b!7477015 (=> res!2999740 e!4460309)))

(assert (=> b!7477015 (= res!2999740 (not (is-ElementMatch!19602 lt!2627282)))))

(declare-fun e!4460312 () Bool)

(assert (=> b!7477015 (= e!4460312 e!4460309)))

(declare-fun b!7477016 () Bool)

(declare-fun res!2999739 () Bool)

(assert (=> b!7477016 (=> (not res!2999739) (not e!4460308))))

(declare-fun call!686451 () Bool)

(assert (=> b!7477016 (= res!2999739 (not call!686451))))

(declare-fun b!7477017 () Bool)

(declare-fun e!4460306 () Bool)

(assert (=> b!7477017 (= e!4460306 (not (= (head!15339 s!13591) (c!1381147 lt!2627282))))))

(declare-fun bm!686446 () Bool)

(assert (=> bm!686446 (= call!686451 (isEmpty!41196 s!13591))))

(declare-fun b!7477018 () Bool)

(declare-fun e!4460310 () Bool)

(assert (=> b!7477018 (= e!4460310 e!4460312)))

(declare-fun c!1381206 () Bool)

(assert (=> b!7477018 (= c!1381206 (is-EmptyLang!19602 lt!2627282))))

(declare-fun b!7477019 () Bool)

(assert (=> b!7477019 (= e!4460308 (= (head!15339 s!13591) (c!1381147 lt!2627282)))))

(declare-fun d!2299613 () Bool)

(assert (=> d!2299613 e!4460310))

(declare-fun c!1381205 () Bool)

(assert (=> d!2299613 (= c!1381205 (is-EmptyExpr!19602 lt!2627282))))

(declare-fun e!4460307 () Bool)

(assert (=> d!2299613 (= lt!2627399 e!4460307)))

(declare-fun c!1381204 () Bool)

(assert (=> d!2299613 (= c!1381204 (isEmpty!41196 s!13591))))

(assert (=> d!2299613 (validRegex!10116 lt!2627282)))

(assert (=> d!2299613 (= (matchR!9366 lt!2627282 s!13591) lt!2627399)))

(declare-fun b!7477014 () Bool)

(assert (=> b!7477014 (= e!4460307 (matchR!9366 (derivativeStep!5599 lt!2627282 (head!15339 s!13591)) (tail!14908 s!13591)))))

(declare-fun b!7477020 () Bool)

(assert (=> b!7477020 (= e!4460310 (= lt!2627399 call!686451))))

(declare-fun b!7477021 () Bool)

(assert (=> b!7477021 (= e!4460312 (not lt!2627399))))

(declare-fun b!7477022 () Bool)

(declare-fun res!2999742 () Bool)

(assert (=> b!7477022 (=> (not res!2999742) (not e!4460308))))

(assert (=> b!7477022 (= res!2999742 (isEmpty!41196 (tail!14908 s!13591)))))

(declare-fun b!7477023 () Bool)

(assert (=> b!7477023 (= e!4460311 e!4460306)))

(declare-fun res!2999737 () Bool)

(assert (=> b!7477023 (=> res!2999737 e!4460306)))

(assert (=> b!7477023 (= res!2999737 call!686451)))

(declare-fun b!7477024 () Bool)

(declare-fun res!2999741 () Bool)

(assert (=> b!7477024 (=> res!2999741 e!4460306)))

(assert (=> b!7477024 (= res!2999741 (not (isEmpty!41196 (tail!14908 s!13591))))))

(declare-fun b!7477025 () Bool)

(assert (=> b!7477025 (= e!4460307 (nullable!8540 lt!2627282))))

(assert (= (and d!2299613 c!1381204) b!7477025))

(assert (= (and d!2299613 (not c!1381204)) b!7477014))

(assert (= (and d!2299613 c!1381205) b!7477020))

(assert (= (and d!2299613 (not c!1381205)) b!7477018))

(assert (= (and b!7477018 c!1381206) b!7477021))

(assert (= (and b!7477018 (not c!1381206)) b!7477015))

(assert (= (and b!7477015 (not res!2999740)) b!7477013))

(assert (= (and b!7477013 res!2999744) b!7477016))

(assert (= (and b!7477016 res!2999739) b!7477022))

(assert (= (and b!7477022 res!2999742) b!7477019))

(assert (= (and b!7477013 (not res!2999743)) b!7477012))

(assert (= (and b!7477012 res!2999738) b!7477023))

(assert (= (and b!7477023 (not res!2999737)) b!7477024))

(assert (= (and b!7477024 (not res!2999741)) b!7477017))

(assert (= (or b!7477020 b!7477016 b!7477023) bm!686446))

(declare-fun m!8071128 () Bool)

(assert (=> b!7477025 m!8071128))

(assert (=> d!2299613 m!8071118))

(assert (=> d!2299613 m!8071126))

(declare-fun m!8071130 () Bool)

(assert (=> b!7477022 m!8071130))

(assert (=> b!7477022 m!8071130))

(declare-fun m!8071132 () Bool)

(assert (=> b!7477022 m!8071132))

(declare-fun m!8071134 () Bool)

(assert (=> b!7477017 m!8071134))

(assert (=> b!7477024 m!8071130))

(assert (=> b!7477024 m!8071130))

(assert (=> b!7477024 m!8071132))

(assert (=> b!7477014 m!8071134))

(assert (=> b!7477014 m!8071134))

(declare-fun m!8071136 () Bool)

(assert (=> b!7477014 m!8071136))

(assert (=> b!7477014 m!8071130))

(assert (=> b!7477014 m!8071136))

(assert (=> b!7477014 m!8071130))

(declare-fun m!8071138 () Bool)

(assert (=> b!7477014 m!8071138))

(assert (=> b!7477019 m!8071134))

(assert (=> bm!686446 m!8071118))

(assert (=> b!7476679 d!2299613))

(declare-fun b!7477026 () Bool)

(declare-fun e!4460316 () Bool)

(declare-fun e!4460318 () Bool)

(assert (=> b!7477026 (= e!4460316 e!4460318)))

(declare-fun res!2999746 () Bool)

(assert (=> b!7477026 (=> (not res!2999746) (not e!4460318))))

(declare-fun lt!2627400 () Bool)

(assert (=> b!7477026 (= res!2999746 (not lt!2627400))))

(declare-fun b!7477027 () Bool)

(declare-fun res!2999751 () Bool)

(assert (=> b!7477027 (=> res!2999751 e!4460316)))

(declare-fun e!4460315 () Bool)

(assert (=> b!7477027 (= res!2999751 e!4460315)))

(declare-fun res!2999752 () Bool)

(assert (=> b!7477027 (=> (not res!2999752) (not e!4460315))))

(assert (=> b!7477027 (= res!2999752 lt!2627400)))

(declare-fun b!7477029 () Bool)

(declare-fun res!2999748 () Bool)

(assert (=> b!7477029 (=> res!2999748 e!4460316)))

(assert (=> b!7477029 (= res!2999748 (not (is-ElementMatch!19602 lt!2627283)))))

(declare-fun e!4460319 () Bool)

(assert (=> b!7477029 (= e!4460319 e!4460316)))

(declare-fun b!7477030 () Bool)

(declare-fun res!2999747 () Bool)

(assert (=> b!7477030 (=> (not res!2999747) (not e!4460315))))

(declare-fun call!686454 () Bool)

(assert (=> b!7477030 (= res!2999747 (not call!686454))))

(declare-fun b!7477031 () Bool)

(declare-fun e!4460313 () Bool)

(assert (=> b!7477031 (= e!4460313 (not (= (head!15339 s!13591) (c!1381147 lt!2627283))))))

(declare-fun bm!686449 () Bool)

(assert (=> bm!686449 (= call!686454 (isEmpty!41196 s!13591))))

(declare-fun b!7477032 () Bool)

(declare-fun e!4460317 () Bool)

(assert (=> b!7477032 (= e!4460317 e!4460319)))

(declare-fun c!1381209 () Bool)

(assert (=> b!7477032 (= c!1381209 (is-EmptyLang!19602 lt!2627283))))

(declare-fun b!7477033 () Bool)

(assert (=> b!7477033 (= e!4460315 (= (head!15339 s!13591) (c!1381147 lt!2627283)))))

(declare-fun d!2299615 () Bool)

(assert (=> d!2299615 e!4460317))

(declare-fun c!1381208 () Bool)

(assert (=> d!2299615 (= c!1381208 (is-EmptyExpr!19602 lt!2627283))))

(declare-fun e!4460314 () Bool)

(assert (=> d!2299615 (= lt!2627400 e!4460314)))

(declare-fun c!1381207 () Bool)

(assert (=> d!2299615 (= c!1381207 (isEmpty!41196 s!13591))))

(assert (=> d!2299615 (validRegex!10116 lt!2627283)))

(assert (=> d!2299615 (= (matchR!9366 lt!2627283 s!13591) lt!2627400)))

(declare-fun b!7477028 () Bool)

(assert (=> b!7477028 (= e!4460314 (matchR!9366 (derivativeStep!5599 lt!2627283 (head!15339 s!13591)) (tail!14908 s!13591)))))

(declare-fun b!7477034 () Bool)

(assert (=> b!7477034 (= e!4460317 (= lt!2627400 call!686454))))

(declare-fun b!7477035 () Bool)

(assert (=> b!7477035 (= e!4460319 (not lt!2627400))))

(declare-fun b!7477036 () Bool)

(declare-fun res!2999750 () Bool)

(assert (=> b!7477036 (=> (not res!2999750) (not e!4460315))))

(assert (=> b!7477036 (= res!2999750 (isEmpty!41196 (tail!14908 s!13591)))))

(declare-fun b!7477037 () Bool)

(assert (=> b!7477037 (= e!4460318 e!4460313)))

(declare-fun res!2999745 () Bool)

(assert (=> b!7477037 (=> res!2999745 e!4460313)))

(assert (=> b!7477037 (= res!2999745 call!686454)))

(declare-fun b!7477038 () Bool)

(declare-fun res!2999749 () Bool)

(assert (=> b!7477038 (=> res!2999749 e!4460313)))

(assert (=> b!7477038 (= res!2999749 (not (isEmpty!41196 (tail!14908 s!13591))))))

(declare-fun b!7477039 () Bool)

(assert (=> b!7477039 (= e!4460314 (nullable!8540 lt!2627283))))

(assert (= (and d!2299615 c!1381207) b!7477039))

(assert (= (and d!2299615 (not c!1381207)) b!7477028))

(assert (= (and d!2299615 c!1381208) b!7477034))

(assert (= (and d!2299615 (not c!1381208)) b!7477032))

(assert (= (and b!7477032 c!1381209) b!7477035))

(assert (= (and b!7477032 (not c!1381209)) b!7477029))

(assert (= (and b!7477029 (not res!2999748)) b!7477027))

(assert (= (and b!7477027 res!2999752) b!7477030))

(assert (= (and b!7477030 res!2999747) b!7477036))

(assert (= (and b!7477036 res!2999750) b!7477033))

(assert (= (and b!7477027 (not res!2999751)) b!7477026))

(assert (= (and b!7477026 res!2999746) b!7477037))

(assert (= (and b!7477037 (not res!2999745)) b!7477038))

(assert (= (and b!7477038 (not res!2999749)) b!7477031))

(assert (= (or b!7477034 b!7477030 b!7477037) bm!686449))

(declare-fun m!8071140 () Bool)

(assert (=> b!7477039 m!8071140))

(assert (=> d!2299615 m!8071118))

(assert (=> d!2299615 m!8071122))

(assert (=> b!7477036 m!8071130))

(assert (=> b!7477036 m!8071130))

(assert (=> b!7477036 m!8071132))

(assert (=> b!7477031 m!8071134))

(assert (=> b!7477038 m!8071130))

(assert (=> b!7477038 m!8071130))

(assert (=> b!7477038 m!8071132))

(assert (=> b!7477028 m!8071134))

(assert (=> b!7477028 m!8071134))

(declare-fun m!8071142 () Bool)

(assert (=> b!7477028 m!8071142))

(assert (=> b!7477028 m!8071130))

(assert (=> b!7477028 m!8071142))

(assert (=> b!7477028 m!8071130))

(declare-fun m!8071144 () Bool)

(assert (=> b!7477028 m!8071144))

(assert (=> b!7477033 m!8071134))

(assert (=> bm!686449 m!8071118))

(assert (=> b!7476679 d!2299615))

(declare-fun bs!1932095 () Bool)

(declare-fun b!7477040 () Bool)

(assert (= bs!1932095 (and b!7477040 d!2299585)))

(declare-fun lambda!463235 () Int)

(assert (=> bs!1932095 (not (= lambda!463235 lambda!463219))))

(declare-fun bs!1932096 () Bool)

(assert (= bs!1932096 (and b!7477040 d!2299589)))

(assert (=> bs!1932096 (not (= lambda!463235 lambda!463222))))

(declare-fun bs!1932097 () Bool)

(assert (= bs!1932097 (and b!7477040 b!7476677)))

(assert (=> bs!1932097 (not (= lambda!463235 lambda!463204))))

(declare-fun bs!1932098 () Bool)

(assert (= bs!1932098 (and b!7477040 b!7476981)))

(assert (=> bs!1932098 (not (= lambda!463235 lambda!463234))))

(assert (=> bs!1932095 (not (= lambda!463235 lambda!463218))))

(declare-fun bs!1932099 () Bool)

(assert (= bs!1932099 (and b!7477040 b!7476973)))

(assert (=> bs!1932099 (= (and (= (reg!19931 lt!2627282) (reg!19931 lt!2627283)) (= lt!2627282 lt!2627283)) (= lambda!463235 lambda!463233))))

(assert (=> bs!1932097 (not (= lambda!463235 lambda!463205))))

(assert (=> b!7477040 true))

(assert (=> b!7477040 true))

(declare-fun bs!1932100 () Bool)

(declare-fun b!7477048 () Bool)

(assert (= bs!1932100 (and b!7477048 d!2299585)))

(declare-fun lambda!463236 () Int)

(assert (=> bs!1932100 (= (and (= (regOne!39716 lt!2627282) lt!2627300) (= (regTwo!39716 lt!2627282) rTail!78)) (= lambda!463236 lambda!463219))))

(declare-fun bs!1932101 () Bool)

(assert (= bs!1932101 (and b!7477048 d!2299589)))

(assert (=> bs!1932101 (not (= lambda!463236 lambda!463222))))

(declare-fun bs!1932102 () Bool)

(assert (= bs!1932102 (and b!7477048 b!7476677)))

(assert (=> bs!1932102 (not (= lambda!463236 lambda!463204))))

(declare-fun bs!1932103 () Bool)

(assert (= bs!1932103 (and b!7477048 b!7476981)))

(assert (=> bs!1932103 (= (and (= (regOne!39716 lt!2627282) (regOne!39716 lt!2627283)) (= (regTwo!39716 lt!2627282) (regTwo!39716 lt!2627283))) (= lambda!463236 lambda!463234))))

(assert (=> bs!1932100 (not (= lambda!463236 lambda!463218))))

(declare-fun bs!1932104 () Bool)

(assert (= bs!1932104 (and b!7477048 b!7476973)))

(assert (=> bs!1932104 (not (= lambda!463236 lambda!463233))))

(declare-fun bs!1932105 () Bool)

(assert (= bs!1932105 (and b!7477048 b!7477040)))

(assert (=> bs!1932105 (not (= lambda!463236 lambda!463235))))

(assert (=> bs!1932102 (= (and (= (regOne!39716 lt!2627282) lt!2627300) (= (regTwo!39716 lt!2627282) rTail!78)) (= lambda!463236 lambda!463205))))

(assert (=> b!7477048 true))

(assert (=> b!7477048 true))

(declare-fun b!7477041 () Bool)

(declare-fun res!2999754 () Bool)

(declare-fun e!4460325 () Bool)

(assert (=> b!7477041 (=> res!2999754 e!4460325)))

(declare-fun call!686456 () Bool)

(assert (=> b!7477041 (= res!2999754 call!686456)))

(declare-fun e!4460326 () Bool)

(assert (=> b!7477041 (= e!4460326 e!4460325)))

(declare-fun b!7477042 () Bool)

(declare-fun e!4460321 () Bool)

(declare-fun e!4460324 () Bool)

(assert (=> b!7477042 (= e!4460321 e!4460324)))

(declare-fun res!2999755 () Bool)

(assert (=> b!7477042 (= res!2999755 (not (is-EmptyLang!19602 lt!2627282)))))

(assert (=> b!7477042 (=> (not res!2999755) (not e!4460324))))

(declare-fun b!7477043 () Bool)

(declare-fun c!1381211 () Bool)

(assert (=> b!7477043 (= c!1381211 (is-Union!19602 lt!2627282))))

(declare-fun e!4460320 () Bool)

(declare-fun e!4460323 () Bool)

(assert (=> b!7477043 (= e!4460320 e!4460323)))

(declare-fun b!7477044 () Bool)

(assert (=> b!7477044 (= e!4460321 call!686456)))

(declare-fun b!7477045 () Bool)

(assert (=> b!7477045 (= e!4460323 e!4460326)))

(declare-fun c!1381210 () Bool)

(assert (=> b!7477045 (= c!1381210 (is-Star!19602 lt!2627282))))

(declare-fun b!7477046 () Bool)

(declare-fun e!4460322 () Bool)

(assert (=> b!7477046 (= e!4460323 e!4460322)))

(declare-fun res!2999753 () Bool)

(assert (=> b!7477046 (= res!2999753 (matchRSpec!4281 (regOne!39717 lt!2627282) s!13591))))

(assert (=> b!7477046 (=> res!2999753 e!4460322)))

(declare-fun b!7477047 () Bool)

(assert (=> b!7477047 (= e!4460322 (matchRSpec!4281 (regTwo!39717 lt!2627282) s!13591))))

(declare-fun call!686455 () Bool)

(declare-fun bm!686450 () Bool)

(assert (=> bm!686450 (= call!686455 (Exists!4221 (ite c!1381210 lambda!463235 lambda!463236)))))

(declare-fun d!2299617 () Bool)

(declare-fun c!1381212 () Bool)

(assert (=> d!2299617 (= c!1381212 (is-EmptyExpr!19602 lt!2627282))))

(assert (=> d!2299617 (= (matchRSpec!4281 lt!2627282 s!13591) e!4460321)))

(assert (=> b!7477040 (= e!4460325 call!686455)))

(assert (=> b!7477048 (= e!4460326 call!686455)))

(declare-fun b!7477049 () Bool)

(assert (=> b!7477049 (= e!4460320 (= s!13591 (Cons!72194 (c!1381147 lt!2627282) Nil!72194)))))

(declare-fun bm!686451 () Bool)

(assert (=> bm!686451 (= call!686456 (isEmpty!41196 s!13591))))

(declare-fun b!7477050 () Bool)

(declare-fun c!1381213 () Bool)

(assert (=> b!7477050 (= c!1381213 (is-ElementMatch!19602 lt!2627282))))

(assert (=> b!7477050 (= e!4460324 e!4460320)))

(assert (= (and d!2299617 c!1381212) b!7477044))

(assert (= (and d!2299617 (not c!1381212)) b!7477042))

(assert (= (and b!7477042 res!2999755) b!7477050))

(assert (= (and b!7477050 c!1381213) b!7477049))

(assert (= (and b!7477050 (not c!1381213)) b!7477043))

(assert (= (and b!7477043 c!1381211) b!7477046))

(assert (= (and b!7477043 (not c!1381211)) b!7477045))

(assert (= (and b!7477046 (not res!2999753)) b!7477047))

(assert (= (and b!7477045 c!1381210) b!7477041))

(assert (= (and b!7477045 (not c!1381210)) b!7477048))

(assert (= (and b!7477041 (not res!2999754)) b!7477040))

(assert (= (or b!7477040 b!7477048) bm!686450))

(assert (= (or b!7477044 b!7477041) bm!686451))

(declare-fun m!8071146 () Bool)

(assert (=> b!7477046 m!8071146))

(declare-fun m!8071148 () Bool)

(assert (=> b!7477047 m!8071148))

(declare-fun m!8071150 () Bool)

(assert (=> bm!686450 m!8071150))

(assert (=> bm!686451 m!8071118))

(assert (=> b!7476679 d!2299617))

(declare-fun d!2299619 () Bool)

(assert (=> d!2299619 (= (matchR!9366 lt!2627301 s!13591) (matchRSpec!4281 lt!2627301 s!13591))))

(declare-fun lt!2627401 () Unit!166039)

(assert (=> d!2299619 (= lt!2627401 (choose!57797 lt!2627301 s!13591))))

(assert (=> d!2299619 (validRegex!10116 lt!2627301)))

(assert (=> d!2299619 (= (mainMatchTheorem!4275 lt!2627301 s!13591) lt!2627401)))

(declare-fun bs!1932106 () Bool)

(assert (= bs!1932106 d!2299619))

(assert (=> bs!1932106 m!8070958))

(assert (=> bs!1932106 m!8070954))

(declare-fun m!8071152 () Bool)

(assert (=> bs!1932106 m!8071152))

(declare-fun m!8071154 () Bool)

(assert (=> bs!1932106 m!8071154))

(assert (=> b!7476691 d!2299619))

(declare-fun b!7477051 () Bool)

(declare-fun e!4460330 () Bool)

(declare-fun e!4460332 () Bool)

(assert (=> b!7477051 (= e!4460330 e!4460332)))

(declare-fun res!2999757 () Bool)

(assert (=> b!7477051 (=> (not res!2999757) (not e!4460332))))

(declare-fun lt!2627402 () Bool)

(assert (=> b!7477051 (= res!2999757 (not lt!2627402))))

(declare-fun b!7477052 () Bool)

(declare-fun res!2999762 () Bool)

(assert (=> b!7477052 (=> res!2999762 e!4460330)))

(declare-fun e!4460329 () Bool)

(assert (=> b!7477052 (= res!2999762 e!4460329)))

(declare-fun res!2999763 () Bool)

(assert (=> b!7477052 (=> (not res!2999763) (not e!4460329))))

(assert (=> b!7477052 (= res!2999763 lt!2627402)))

(declare-fun b!7477054 () Bool)

(declare-fun res!2999759 () Bool)

(assert (=> b!7477054 (=> res!2999759 e!4460330)))

(assert (=> b!7477054 (= res!2999759 (not (is-ElementMatch!19602 lt!2627281)))))

(declare-fun e!4460333 () Bool)

(assert (=> b!7477054 (= e!4460333 e!4460330)))

(declare-fun b!7477055 () Bool)

(declare-fun res!2999758 () Bool)

(assert (=> b!7477055 (=> (not res!2999758) (not e!4460329))))

(declare-fun call!686457 () Bool)

(assert (=> b!7477055 (= res!2999758 (not call!686457))))

(declare-fun b!7477056 () Bool)

(declare-fun e!4460327 () Bool)

(assert (=> b!7477056 (= e!4460327 (not (= (head!15339 s!13591) (c!1381147 lt!2627281))))))

(declare-fun bm!686452 () Bool)

(assert (=> bm!686452 (= call!686457 (isEmpty!41196 s!13591))))

(declare-fun b!7477057 () Bool)

(declare-fun e!4460331 () Bool)

(assert (=> b!7477057 (= e!4460331 e!4460333)))

(declare-fun c!1381216 () Bool)

(assert (=> b!7477057 (= c!1381216 (is-EmptyLang!19602 lt!2627281))))

(declare-fun b!7477058 () Bool)

(assert (=> b!7477058 (= e!4460329 (= (head!15339 s!13591) (c!1381147 lt!2627281)))))

(declare-fun d!2299621 () Bool)

(assert (=> d!2299621 e!4460331))

(declare-fun c!1381215 () Bool)

(assert (=> d!2299621 (= c!1381215 (is-EmptyExpr!19602 lt!2627281))))

(declare-fun e!4460328 () Bool)

(assert (=> d!2299621 (= lt!2627402 e!4460328)))

(declare-fun c!1381214 () Bool)

(assert (=> d!2299621 (= c!1381214 (isEmpty!41196 s!13591))))

(assert (=> d!2299621 (validRegex!10116 lt!2627281)))

(assert (=> d!2299621 (= (matchR!9366 lt!2627281 s!13591) lt!2627402)))

(declare-fun b!7477053 () Bool)

(assert (=> b!7477053 (= e!4460328 (matchR!9366 (derivativeStep!5599 lt!2627281 (head!15339 s!13591)) (tail!14908 s!13591)))))

(declare-fun b!7477059 () Bool)

(assert (=> b!7477059 (= e!4460331 (= lt!2627402 call!686457))))

(declare-fun b!7477060 () Bool)

(assert (=> b!7477060 (= e!4460333 (not lt!2627402))))

(declare-fun b!7477061 () Bool)

(declare-fun res!2999761 () Bool)

(assert (=> b!7477061 (=> (not res!2999761) (not e!4460329))))

(assert (=> b!7477061 (= res!2999761 (isEmpty!41196 (tail!14908 s!13591)))))

(declare-fun b!7477062 () Bool)

(assert (=> b!7477062 (= e!4460332 e!4460327)))

(declare-fun res!2999756 () Bool)

(assert (=> b!7477062 (=> res!2999756 e!4460327)))

(assert (=> b!7477062 (= res!2999756 call!686457)))

(declare-fun b!7477063 () Bool)

(declare-fun res!2999760 () Bool)

(assert (=> b!7477063 (=> res!2999760 e!4460327)))

(assert (=> b!7477063 (= res!2999760 (not (isEmpty!41196 (tail!14908 s!13591))))))

(declare-fun b!7477064 () Bool)

(assert (=> b!7477064 (= e!4460328 (nullable!8540 lt!2627281))))

(assert (= (and d!2299621 c!1381214) b!7477064))

(assert (= (and d!2299621 (not c!1381214)) b!7477053))

(assert (= (and d!2299621 c!1381215) b!7477059))

(assert (= (and d!2299621 (not c!1381215)) b!7477057))

(assert (= (and b!7477057 c!1381216) b!7477060))

(assert (= (and b!7477057 (not c!1381216)) b!7477054))

(assert (= (and b!7477054 (not res!2999759)) b!7477052))

(assert (= (and b!7477052 res!2999763) b!7477055))

(assert (= (and b!7477055 res!2999758) b!7477061))

(assert (= (and b!7477061 res!2999761) b!7477058))

(assert (= (and b!7477052 (not res!2999762)) b!7477051))

(assert (= (and b!7477051 res!2999757) b!7477062))

(assert (= (and b!7477062 (not res!2999756)) b!7477063))

(assert (= (and b!7477063 (not res!2999760)) b!7477056))

(assert (= (or b!7477059 b!7477055 b!7477062) bm!686452))

(declare-fun m!8071156 () Bool)

(assert (=> b!7477064 m!8071156))

(assert (=> d!2299621 m!8071118))

(declare-fun m!8071158 () Bool)

(assert (=> d!2299621 m!8071158))

(assert (=> b!7477061 m!8071130))

(assert (=> b!7477061 m!8071130))

(assert (=> b!7477061 m!8071132))

(assert (=> b!7477056 m!8071134))

(assert (=> b!7477063 m!8071130))

(assert (=> b!7477063 m!8071130))

(assert (=> b!7477063 m!8071132))

(assert (=> b!7477053 m!8071134))

(assert (=> b!7477053 m!8071134))

(declare-fun m!8071160 () Bool)

(assert (=> b!7477053 m!8071160))

(assert (=> b!7477053 m!8071130))

(assert (=> b!7477053 m!8071160))

(assert (=> b!7477053 m!8071130))

(declare-fun m!8071162 () Bool)

(assert (=> b!7477053 m!8071162))

(assert (=> b!7477058 m!8071134))

(assert (=> bm!686452 m!8071118))

(assert (=> b!7476691 d!2299621))

(declare-fun b!7477065 () Bool)

(declare-fun e!4460337 () Bool)

(declare-fun e!4460339 () Bool)

(assert (=> b!7477065 (= e!4460337 e!4460339)))

(declare-fun res!2999765 () Bool)

(assert (=> b!7477065 (=> (not res!2999765) (not e!4460339))))

(declare-fun lt!2627403 () Bool)

(assert (=> b!7477065 (= res!2999765 (not lt!2627403))))

(declare-fun b!7477066 () Bool)

(declare-fun res!2999770 () Bool)

(assert (=> b!7477066 (=> res!2999770 e!4460337)))

(declare-fun e!4460336 () Bool)

(assert (=> b!7477066 (= res!2999770 e!4460336)))

(declare-fun res!2999771 () Bool)

(assert (=> b!7477066 (=> (not res!2999771) (not e!4460336))))

(assert (=> b!7477066 (= res!2999771 lt!2627403)))

(declare-fun b!7477068 () Bool)

(declare-fun res!2999767 () Bool)

(assert (=> b!7477068 (=> res!2999767 e!4460337)))

(assert (=> b!7477068 (= res!2999767 (not (is-ElementMatch!19602 lt!2627301)))))

(declare-fun e!4460340 () Bool)

(assert (=> b!7477068 (= e!4460340 e!4460337)))

(declare-fun b!7477069 () Bool)

(declare-fun res!2999766 () Bool)

(assert (=> b!7477069 (=> (not res!2999766) (not e!4460336))))

(declare-fun call!686458 () Bool)

(assert (=> b!7477069 (= res!2999766 (not call!686458))))

(declare-fun b!7477070 () Bool)

(declare-fun e!4460334 () Bool)

(assert (=> b!7477070 (= e!4460334 (not (= (head!15339 s!13591) (c!1381147 lt!2627301))))))

(declare-fun bm!686453 () Bool)

(assert (=> bm!686453 (= call!686458 (isEmpty!41196 s!13591))))

(declare-fun b!7477071 () Bool)

(declare-fun e!4460338 () Bool)

(assert (=> b!7477071 (= e!4460338 e!4460340)))

(declare-fun c!1381219 () Bool)

(assert (=> b!7477071 (= c!1381219 (is-EmptyLang!19602 lt!2627301))))

(declare-fun b!7477072 () Bool)

(assert (=> b!7477072 (= e!4460336 (= (head!15339 s!13591) (c!1381147 lt!2627301)))))

(declare-fun d!2299623 () Bool)

(assert (=> d!2299623 e!4460338))

(declare-fun c!1381218 () Bool)

(assert (=> d!2299623 (= c!1381218 (is-EmptyExpr!19602 lt!2627301))))

(declare-fun e!4460335 () Bool)

(assert (=> d!2299623 (= lt!2627403 e!4460335)))

(declare-fun c!1381217 () Bool)

(assert (=> d!2299623 (= c!1381217 (isEmpty!41196 s!13591))))

(assert (=> d!2299623 (validRegex!10116 lt!2627301)))

(assert (=> d!2299623 (= (matchR!9366 lt!2627301 s!13591) lt!2627403)))

(declare-fun b!7477067 () Bool)

(assert (=> b!7477067 (= e!4460335 (matchR!9366 (derivativeStep!5599 lt!2627301 (head!15339 s!13591)) (tail!14908 s!13591)))))

(declare-fun b!7477073 () Bool)

(assert (=> b!7477073 (= e!4460338 (= lt!2627403 call!686458))))

(declare-fun b!7477074 () Bool)

(assert (=> b!7477074 (= e!4460340 (not lt!2627403))))

(declare-fun b!7477075 () Bool)

(declare-fun res!2999769 () Bool)

(assert (=> b!7477075 (=> (not res!2999769) (not e!4460336))))

(assert (=> b!7477075 (= res!2999769 (isEmpty!41196 (tail!14908 s!13591)))))

(declare-fun b!7477076 () Bool)

(assert (=> b!7477076 (= e!4460339 e!4460334)))

(declare-fun res!2999764 () Bool)

(assert (=> b!7477076 (=> res!2999764 e!4460334)))

(assert (=> b!7477076 (= res!2999764 call!686458)))

(declare-fun b!7477077 () Bool)

(declare-fun res!2999768 () Bool)

(assert (=> b!7477077 (=> res!2999768 e!4460334)))

(assert (=> b!7477077 (= res!2999768 (not (isEmpty!41196 (tail!14908 s!13591))))))

(declare-fun b!7477078 () Bool)

(assert (=> b!7477078 (= e!4460335 (nullable!8540 lt!2627301))))

(assert (= (and d!2299623 c!1381217) b!7477078))

(assert (= (and d!2299623 (not c!1381217)) b!7477067))

(assert (= (and d!2299623 c!1381218) b!7477073))

(assert (= (and d!2299623 (not c!1381218)) b!7477071))

(assert (= (and b!7477071 c!1381219) b!7477074))

(assert (= (and b!7477071 (not c!1381219)) b!7477068))

(assert (= (and b!7477068 (not res!2999767)) b!7477066))

(assert (= (and b!7477066 res!2999771) b!7477069))

(assert (= (and b!7477069 res!2999766) b!7477075))

(assert (= (and b!7477075 res!2999769) b!7477072))

(assert (= (and b!7477066 (not res!2999770)) b!7477065))

(assert (= (and b!7477065 res!2999765) b!7477076))

(assert (= (and b!7477076 (not res!2999764)) b!7477077))

(assert (= (and b!7477077 (not res!2999768)) b!7477070))

(assert (= (or b!7477073 b!7477069 b!7477076) bm!686453))

(declare-fun m!8071164 () Bool)

(assert (=> b!7477078 m!8071164))

(assert (=> d!2299623 m!8071118))

(assert (=> d!2299623 m!8071154))

(assert (=> b!7477075 m!8071130))

(assert (=> b!7477075 m!8071130))

(assert (=> b!7477075 m!8071132))

(assert (=> b!7477070 m!8071134))

(assert (=> b!7477077 m!8071130))

(assert (=> b!7477077 m!8071130))

(assert (=> b!7477077 m!8071132))

(assert (=> b!7477067 m!8071134))

(assert (=> b!7477067 m!8071134))

(declare-fun m!8071166 () Bool)

(assert (=> b!7477067 m!8071166))

(assert (=> b!7477067 m!8071130))

(assert (=> b!7477067 m!8071166))

(assert (=> b!7477067 m!8071130))

(declare-fun m!8071168 () Bool)

(assert (=> b!7477067 m!8071168))

(assert (=> b!7477072 m!8071134))

(assert (=> bm!686453 m!8071118))

(assert (=> b!7476691 d!2299623))

(declare-fun d!2299625 () Bool)

(assert (=> d!2299625 (= (matchR!9366 lt!2627281 s!13591) (matchRSpec!4281 lt!2627281 s!13591))))

(declare-fun lt!2627404 () Unit!166039)

(assert (=> d!2299625 (= lt!2627404 (choose!57797 lt!2627281 s!13591))))

(assert (=> d!2299625 (validRegex!10116 lt!2627281)))

(assert (=> d!2299625 (= (mainMatchTheorem!4275 lt!2627281 s!13591) lt!2627404)))

(declare-fun bs!1932107 () Bool)

(assert (= bs!1932107 d!2299625))

(assert (=> bs!1932107 m!8070956))

(assert (=> bs!1932107 m!8070952))

(declare-fun m!8071170 () Bool)

(assert (=> bs!1932107 m!8071170))

(assert (=> bs!1932107 m!8071158))

(assert (=> b!7476691 d!2299625))

(declare-fun bs!1932108 () Bool)

(declare-fun b!7477079 () Bool)

(assert (= bs!1932108 (and b!7477079 d!2299585)))

(declare-fun lambda!463237 () Int)

(assert (=> bs!1932108 (not (= lambda!463237 lambda!463219))))

(declare-fun bs!1932109 () Bool)

(assert (= bs!1932109 (and b!7477079 d!2299589)))

(assert (=> bs!1932109 (not (= lambda!463237 lambda!463222))))

(declare-fun bs!1932110 () Bool)

(assert (= bs!1932110 (and b!7477079 b!7477048)))

(assert (=> bs!1932110 (not (= lambda!463237 lambda!463236))))

(declare-fun bs!1932111 () Bool)

(assert (= bs!1932111 (and b!7477079 b!7476677)))

(assert (=> bs!1932111 (not (= lambda!463237 lambda!463204))))

(declare-fun bs!1932112 () Bool)

(assert (= bs!1932112 (and b!7477079 b!7476981)))

(assert (=> bs!1932112 (not (= lambda!463237 lambda!463234))))

(assert (=> bs!1932108 (not (= lambda!463237 lambda!463218))))

(declare-fun bs!1932113 () Bool)

(assert (= bs!1932113 (and b!7477079 b!7476973)))

(assert (=> bs!1932113 (= (and (= (reg!19931 lt!2627301) (reg!19931 lt!2627283)) (= lt!2627301 lt!2627283)) (= lambda!463237 lambda!463233))))

(declare-fun bs!1932114 () Bool)

(assert (= bs!1932114 (and b!7477079 b!7477040)))

(assert (=> bs!1932114 (= (and (= (reg!19931 lt!2627301) (reg!19931 lt!2627282)) (= lt!2627301 lt!2627282)) (= lambda!463237 lambda!463235))))

(assert (=> bs!1932111 (not (= lambda!463237 lambda!463205))))

(assert (=> b!7477079 true))

(assert (=> b!7477079 true))

(declare-fun bs!1932115 () Bool)

(declare-fun b!7477087 () Bool)

(assert (= bs!1932115 (and b!7477087 d!2299585)))

(declare-fun lambda!463238 () Int)

(assert (=> bs!1932115 (= (and (= (regOne!39716 lt!2627301) lt!2627300) (= (regTwo!39716 lt!2627301) rTail!78)) (= lambda!463238 lambda!463219))))

(declare-fun bs!1932116 () Bool)

(assert (= bs!1932116 (and b!7477087 d!2299589)))

(assert (=> bs!1932116 (not (= lambda!463238 lambda!463222))))

(declare-fun bs!1932117 () Bool)

(assert (= bs!1932117 (and b!7477087 b!7477048)))

(assert (=> bs!1932117 (= (and (= (regOne!39716 lt!2627301) (regOne!39716 lt!2627282)) (= (regTwo!39716 lt!2627301) (regTwo!39716 lt!2627282))) (= lambda!463238 lambda!463236))))

(declare-fun bs!1932118 () Bool)

(assert (= bs!1932118 (and b!7477087 b!7476677)))

(assert (=> bs!1932118 (not (= lambda!463238 lambda!463204))))

(declare-fun bs!1932119 () Bool)

(assert (= bs!1932119 (and b!7477087 b!7476981)))

(assert (=> bs!1932119 (= (and (= (regOne!39716 lt!2627301) (regOne!39716 lt!2627283)) (= (regTwo!39716 lt!2627301) (regTwo!39716 lt!2627283))) (= lambda!463238 lambda!463234))))

(assert (=> bs!1932115 (not (= lambda!463238 lambda!463218))))

(declare-fun bs!1932120 () Bool)

(assert (= bs!1932120 (and b!7477087 b!7476973)))

(assert (=> bs!1932120 (not (= lambda!463238 lambda!463233))))

(assert (=> bs!1932118 (= (and (= (regOne!39716 lt!2627301) lt!2627300) (= (regTwo!39716 lt!2627301) rTail!78)) (= lambda!463238 lambda!463205))))

(declare-fun bs!1932122 () Bool)

(assert (= bs!1932122 (and b!7477087 b!7477079)))

(assert (=> bs!1932122 (not (= lambda!463238 lambda!463237))))

(declare-fun bs!1932123 () Bool)

(assert (= bs!1932123 (and b!7477087 b!7477040)))

(assert (=> bs!1932123 (not (= lambda!463238 lambda!463235))))

(assert (=> b!7477087 true))

(assert (=> b!7477087 true))

(declare-fun b!7477080 () Bool)

(declare-fun res!2999773 () Bool)

(declare-fun e!4460346 () Bool)

(assert (=> b!7477080 (=> res!2999773 e!4460346)))

(declare-fun call!686460 () Bool)

(assert (=> b!7477080 (= res!2999773 call!686460)))

(declare-fun e!4460347 () Bool)

(assert (=> b!7477080 (= e!4460347 e!4460346)))

(declare-fun b!7477081 () Bool)

(declare-fun e!4460342 () Bool)

(declare-fun e!4460345 () Bool)

(assert (=> b!7477081 (= e!4460342 e!4460345)))

(declare-fun res!2999774 () Bool)

(assert (=> b!7477081 (= res!2999774 (not (is-EmptyLang!19602 lt!2627301)))))

(assert (=> b!7477081 (=> (not res!2999774) (not e!4460345))))

(declare-fun b!7477082 () Bool)

(declare-fun c!1381221 () Bool)

(assert (=> b!7477082 (= c!1381221 (is-Union!19602 lt!2627301))))

(declare-fun e!4460341 () Bool)

(declare-fun e!4460344 () Bool)

(assert (=> b!7477082 (= e!4460341 e!4460344)))

(declare-fun b!7477083 () Bool)

(assert (=> b!7477083 (= e!4460342 call!686460)))

(declare-fun b!7477084 () Bool)

(assert (=> b!7477084 (= e!4460344 e!4460347)))

(declare-fun c!1381220 () Bool)

(assert (=> b!7477084 (= c!1381220 (is-Star!19602 lt!2627301))))

(declare-fun b!7477085 () Bool)

(declare-fun e!4460343 () Bool)

(assert (=> b!7477085 (= e!4460344 e!4460343)))

(declare-fun res!2999772 () Bool)

(assert (=> b!7477085 (= res!2999772 (matchRSpec!4281 (regOne!39717 lt!2627301) s!13591))))

(assert (=> b!7477085 (=> res!2999772 e!4460343)))

(declare-fun b!7477086 () Bool)

(assert (=> b!7477086 (= e!4460343 (matchRSpec!4281 (regTwo!39717 lt!2627301) s!13591))))

(declare-fun call!686459 () Bool)

(declare-fun bm!686454 () Bool)

(assert (=> bm!686454 (= call!686459 (Exists!4221 (ite c!1381220 lambda!463237 lambda!463238)))))

(declare-fun d!2299627 () Bool)

(declare-fun c!1381222 () Bool)

(assert (=> d!2299627 (= c!1381222 (is-EmptyExpr!19602 lt!2627301))))

(assert (=> d!2299627 (= (matchRSpec!4281 lt!2627301 s!13591) e!4460342)))

(assert (=> b!7477079 (= e!4460346 call!686459)))

(assert (=> b!7477087 (= e!4460347 call!686459)))

(declare-fun b!7477088 () Bool)

(assert (=> b!7477088 (= e!4460341 (= s!13591 (Cons!72194 (c!1381147 lt!2627301) Nil!72194)))))

(declare-fun bm!686455 () Bool)

(assert (=> bm!686455 (= call!686460 (isEmpty!41196 s!13591))))

(declare-fun b!7477089 () Bool)

(declare-fun c!1381223 () Bool)

(assert (=> b!7477089 (= c!1381223 (is-ElementMatch!19602 lt!2627301))))

(assert (=> b!7477089 (= e!4460345 e!4460341)))

(assert (= (and d!2299627 c!1381222) b!7477083))

(assert (= (and d!2299627 (not c!1381222)) b!7477081))

(assert (= (and b!7477081 res!2999774) b!7477089))

(assert (= (and b!7477089 c!1381223) b!7477088))

(assert (= (and b!7477089 (not c!1381223)) b!7477082))

(assert (= (and b!7477082 c!1381221) b!7477085))

(assert (= (and b!7477082 (not c!1381221)) b!7477084))

(assert (= (and b!7477085 (not res!2999772)) b!7477086))

(assert (= (and b!7477084 c!1381220) b!7477080))

(assert (= (and b!7477084 (not c!1381220)) b!7477087))

(assert (= (and b!7477080 (not res!2999773)) b!7477079))

(assert (= (or b!7477079 b!7477087) bm!686454))

(assert (= (or b!7477083 b!7477080) bm!686455))

(declare-fun m!8071188 () Bool)

(assert (=> b!7477085 m!8071188))

(declare-fun m!8071190 () Bool)

(assert (=> b!7477086 m!8071190))

(declare-fun m!8071192 () Bool)

(assert (=> bm!686454 m!8071192))

(assert (=> bm!686455 m!8071118))

(assert (=> b!7476691 d!2299627))

(declare-fun bs!1932124 () Bool)

(declare-fun b!7477115 () Bool)

(assert (= bs!1932124 (and b!7477115 d!2299585)))

(declare-fun lambda!463239 () Int)

(assert (=> bs!1932124 (not (= lambda!463239 lambda!463219))))

(declare-fun bs!1932125 () Bool)

(assert (= bs!1932125 (and b!7477115 d!2299589)))

(assert (=> bs!1932125 (not (= lambda!463239 lambda!463222))))

(declare-fun bs!1932126 () Bool)

(assert (= bs!1932126 (and b!7477115 b!7477087)))

(assert (=> bs!1932126 (not (= lambda!463239 lambda!463238))))

(declare-fun bs!1932128 () Bool)

(assert (= bs!1932128 (and b!7477115 b!7477048)))

(assert (=> bs!1932128 (not (= lambda!463239 lambda!463236))))

(declare-fun bs!1932129 () Bool)

(assert (= bs!1932129 (and b!7477115 b!7476677)))

(assert (=> bs!1932129 (not (= lambda!463239 lambda!463204))))

(declare-fun bs!1932130 () Bool)

(assert (= bs!1932130 (and b!7477115 b!7476981)))

(assert (=> bs!1932130 (not (= lambda!463239 lambda!463234))))

(assert (=> bs!1932124 (not (= lambda!463239 lambda!463218))))

(declare-fun bs!1932131 () Bool)

(assert (= bs!1932131 (and b!7477115 b!7476973)))

(assert (=> bs!1932131 (= (and (= (reg!19931 lt!2627281) (reg!19931 lt!2627283)) (= lt!2627281 lt!2627283)) (= lambda!463239 lambda!463233))))

(assert (=> bs!1932129 (not (= lambda!463239 lambda!463205))))

(declare-fun bs!1932133 () Bool)

(assert (= bs!1932133 (and b!7477115 b!7477079)))

(assert (=> bs!1932133 (= (and (= (reg!19931 lt!2627281) (reg!19931 lt!2627301)) (= lt!2627281 lt!2627301)) (= lambda!463239 lambda!463237))))

(declare-fun bs!1932134 () Bool)

(assert (= bs!1932134 (and b!7477115 b!7477040)))

(assert (=> bs!1932134 (= (and (= (reg!19931 lt!2627281) (reg!19931 lt!2627282)) (= lt!2627281 lt!2627282)) (= lambda!463239 lambda!463235))))

(assert (=> b!7477115 true))

(assert (=> b!7477115 true))

(declare-fun bs!1932136 () Bool)

(declare-fun b!7477123 () Bool)

(assert (= bs!1932136 (and b!7477123 d!2299585)))

(declare-fun lambda!463241 () Int)

(assert (=> bs!1932136 (= (and (= (regOne!39716 lt!2627281) lt!2627300) (= (regTwo!39716 lt!2627281) rTail!78)) (= lambda!463241 lambda!463219))))

(declare-fun bs!1932137 () Bool)

(assert (= bs!1932137 (and b!7477123 d!2299589)))

(assert (=> bs!1932137 (not (= lambda!463241 lambda!463222))))

(declare-fun bs!1932138 () Bool)

(assert (= bs!1932138 (and b!7477123 b!7477087)))

(assert (=> bs!1932138 (= (and (= (regOne!39716 lt!2627281) (regOne!39716 lt!2627301)) (= (regTwo!39716 lt!2627281) (regTwo!39716 lt!2627301))) (= lambda!463241 lambda!463238))))

(declare-fun bs!1932139 () Bool)

(assert (= bs!1932139 (and b!7477123 b!7477048)))

(assert (=> bs!1932139 (= (and (= (regOne!39716 lt!2627281) (regOne!39716 lt!2627282)) (= (regTwo!39716 lt!2627281) (regTwo!39716 lt!2627282))) (= lambda!463241 lambda!463236))))

(declare-fun bs!1932140 () Bool)

(assert (= bs!1932140 (and b!7477123 b!7476677)))

(assert (=> bs!1932140 (not (= lambda!463241 lambda!463204))))

(declare-fun bs!1932141 () Bool)

(assert (= bs!1932141 (and b!7477123 b!7476981)))

(assert (=> bs!1932141 (= (and (= (regOne!39716 lt!2627281) (regOne!39716 lt!2627283)) (= (regTwo!39716 lt!2627281) (regTwo!39716 lt!2627283))) (= lambda!463241 lambda!463234))))

(assert (=> bs!1932136 (not (= lambda!463241 lambda!463218))))

(declare-fun bs!1932142 () Bool)

(assert (= bs!1932142 (and b!7477123 b!7476973)))

(assert (=> bs!1932142 (not (= lambda!463241 lambda!463233))))

(assert (=> bs!1932140 (= (and (= (regOne!39716 lt!2627281) lt!2627300) (= (regTwo!39716 lt!2627281) rTail!78)) (= lambda!463241 lambda!463205))))

(declare-fun bs!1932143 () Bool)

(assert (= bs!1932143 (and b!7477123 b!7477115)))

(assert (=> bs!1932143 (not (= lambda!463241 lambda!463239))))

(declare-fun bs!1932145 () Bool)

(assert (= bs!1932145 (and b!7477123 b!7477079)))

(assert (=> bs!1932145 (not (= lambda!463241 lambda!463237))))

(declare-fun bs!1932146 () Bool)

(assert (= bs!1932146 (and b!7477123 b!7477040)))

(assert (=> bs!1932146 (not (= lambda!463241 lambda!463235))))

(assert (=> b!7477123 true))

(assert (=> b!7477123 true))

(declare-fun b!7477116 () Bool)

(declare-fun res!2999787 () Bool)

(declare-fun e!4460367 () Bool)

(assert (=> b!7477116 (=> res!2999787 e!4460367)))

(declare-fun call!686465 () Bool)

(assert (=> b!7477116 (= res!2999787 call!686465)))

(declare-fun e!4460368 () Bool)

(assert (=> b!7477116 (= e!4460368 e!4460367)))

(declare-fun b!7477117 () Bool)

(declare-fun e!4460363 () Bool)

(declare-fun e!4460366 () Bool)

(assert (=> b!7477117 (= e!4460363 e!4460366)))

(declare-fun res!2999788 () Bool)

(assert (=> b!7477117 (= res!2999788 (not (is-EmptyLang!19602 lt!2627281)))))

(assert (=> b!7477117 (=> (not res!2999788) (not e!4460366))))

(declare-fun b!7477118 () Bool)

(declare-fun c!1381232 () Bool)

(assert (=> b!7477118 (= c!1381232 (is-Union!19602 lt!2627281))))

(declare-fun e!4460362 () Bool)

(declare-fun e!4460365 () Bool)

(assert (=> b!7477118 (= e!4460362 e!4460365)))

(declare-fun b!7477119 () Bool)

(assert (=> b!7477119 (= e!4460363 call!686465)))

(declare-fun b!7477120 () Bool)

(assert (=> b!7477120 (= e!4460365 e!4460368)))

(declare-fun c!1381231 () Bool)

(assert (=> b!7477120 (= c!1381231 (is-Star!19602 lt!2627281))))

(declare-fun b!7477121 () Bool)

(declare-fun e!4460364 () Bool)

(assert (=> b!7477121 (= e!4460365 e!4460364)))

(declare-fun res!2999786 () Bool)

(assert (=> b!7477121 (= res!2999786 (matchRSpec!4281 (regOne!39717 lt!2627281) s!13591))))

(assert (=> b!7477121 (=> res!2999786 e!4460364)))

(declare-fun b!7477122 () Bool)

(assert (=> b!7477122 (= e!4460364 (matchRSpec!4281 (regTwo!39717 lt!2627281) s!13591))))

(declare-fun call!686464 () Bool)

(declare-fun bm!686459 () Bool)

(assert (=> bm!686459 (= call!686464 (Exists!4221 (ite c!1381231 lambda!463239 lambda!463241)))))

(declare-fun d!2299633 () Bool)

(declare-fun c!1381233 () Bool)

(assert (=> d!2299633 (= c!1381233 (is-EmptyExpr!19602 lt!2627281))))

(assert (=> d!2299633 (= (matchRSpec!4281 lt!2627281 s!13591) e!4460363)))

(assert (=> b!7477115 (= e!4460367 call!686464)))

(assert (=> b!7477123 (= e!4460368 call!686464)))

(declare-fun b!7477124 () Bool)

(assert (=> b!7477124 (= e!4460362 (= s!13591 (Cons!72194 (c!1381147 lt!2627281) Nil!72194)))))

(declare-fun bm!686460 () Bool)

(assert (=> bm!686460 (= call!686465 (isEmpty!41196 s!13591))))

(declare-fun b!7477125 () Bool)

(declare-fun c!1381234 () Bool)

(assert (=> b!7477125 (= c!1381234 (is-ElementMatch!19602 lt!2627281))))

(assert (=> b!7477125 (= e!4460366 e!4460362)))

(assert (= (and d!2299633 c!1381233) b!7477119))

(assert (= (and d!2299633 (not c!1381233)) b!7477117))

(assert (= (and b!7477117 res!2999788) b!7477125))

(assert (= (and b!7477125 c!1381234) b!7477124))

(assert (= (and b!7477125 (not c!1381234)) b!7477118))

(assert (= (and b!7477118 c!1381232) b!7477121))

(assert (= (and b!7477118 (not c!1381232)) b!7477120))

(assert (= (and b!7477121 (not res!2999786)) b!7477122))

(assert (= (and b!7477120 c!1381231) b!7477116))

(assert (= (and b!7477120 (not c!1381231)) b!7477123))

(assert (= (and b!7477116 (not res!2999787)) b!7477115))

(assert (= (or b!7477115 b!7477123) bm!686459))

(assert (= (or b!7477119 b!7477116) bm!686460))

(declare-fun m!8071194 () Bool)

(assert (=> b!7477121 m!8071194))

(declare-fun m!8071196 () Bool)

(assert (=> b!7477122 m!8071196))

(declare-fun m!8071198 () Bool)

(assert (=> bm!686459 m!8071198))

(assert (=> bm!686460 m!8071118))

(assert (=> b!7476691 d!2299633))

(declare-fun b!7477126 () Bool)

(declare-fun e!4460372 () Bool)

(declare-fun e!4460374 () Bool)

(assert (=> b!7477126 (= e!4460372 e!4460374)))

(declare-fun res!2999790 () Bool)

(assert (=> b!7477126 (=> (not res!2999790) (not e!4460374))))

(declare-fun lt!2627407 () Bool)

(assert (=> b!7477126 (= res!2999790 (not lt!2627407))))

(declare-fun b!7477127 () Bool)

(declare-fun res!2999795 () Bool)

(assert (=> b!7477127 (=> res!2999795 e!4460372)))

(declare-fun e!4460371 () Bool)

(assert (=> b!7477127 (= res!2999795 e!4460371)))

(declare-fun res!2999796 () Bool)

(assert (=> b!7477127 (=> (not res!2999796) (not e!4460371))))

(assert (=> b!7477127 (= res!2999796 lt!2627407)))

(declare-fun b!7477129 () Bool)

(declare-fun res!2999792 () Bool)

(assert (=> b!7477129 (=> res!2999792 e!4460372)))

(assert (=> b!7477129 (= res!2999792 (not (is-ElementMatch!19602 r2!5783)))))

(declare-fun e!4460375 () Bool)

(assert (=> b!7477129 (= e!4460375 e!4460372)))

(declare-fun b!7477130 () Bool)

(declare-fun res!2999791 () Bool)

(assert (=> b!7477130 (=> (not res!2999791) (not e!4460371))))

(declare-fun call!686466 () Bool)

(assert (=> b!7477130 (= res!2999791 (not call!686466))))

(declare-fun b!7477131 () Bool)

(declare-fun e!4460369 () Bool)

(assert (=> b!7477131 (= e!4460369 (not (= (head!15339 (_1!37630 lt!2627291)) (c!1381147 r2!5783))))))

(declare-fun bm!686461 () Bool)

(assert (=> bm!686461 (= call!686466 (isEmpty!41196 (_1!37630 lt!2627291)))))

(declare-fun b!7477132 () Bool)

(declare-fun e!4460373 () Bool)

(assert (=> b!7477132 (= e!4460373 e!4460375)))

(declare-fun c!1381237 () Bool)

(assert (=> b!7477132 (= c!1381237 (is-EmptyLang!19602 r2!5783))))

(declare-fun b!7477133 () Bool)

(assert (=> b!7477133 (= e!4460371 (= (head!15339 (_1!37630 lt!2627291)) (c!1381147 r2!5783)))))

(declare-fun d!2299635 () Bool)

(assert (=> d!2299635 e!4460373))

(declare-fun c!1381236 () Bool)

(assert (=> d!2299635 (= c!1381236 (is-EmptyExpr!19602 r2!5783))))

(declare-fun e!4460370 () Bool)

(assert (=> d!2299635 (= lt!2627407 e!4460370)))

(declare-fun c!1381235 () Bool)

(assert (=> d!2299635 (= c!1381235 (isEmpty!41196 (_1!37630 lt!2627291)))))

(assert (=> d!2299635 (validRegex!10116 r2!5783)))

(assert (=> d!2299635 (= (matchR!9366 r2!5783 (_1!37630 lt!2627291)) lt!2627407)))

(declare-fun b!7477128 () Bool)

(assert (=> b!7477128 (= e!4460370 (matchR!9366 (derivativeStep!5599 r2!5783 (head!15339 (_1!37630 lt!2627291))) (tail!14908 (_1!37630 lt!2627291))))))

(declare-fun b!7477134 () Bool)

(assert (=> b!7477134 (= e!4460373 (= lt!2627407 call!686466))))

(declare-fun b!7477135 () Bool)

(assert (=> b!7477135 (= e!4460375 (not lt!2627407))))

(declare-fun b!7477136 () Bool)

(declare-fun res!2999794 () Bool)

(assert (=> b!7477136 (=> (not res!2999794) (not e!4460371))))

(assert (=> b!7477136 (= res!2999794 (isEmpty!41196 (tail!14908 (_1!37630 lt!2627291))))))

(declare-fun b!7477137 () Bool)

(assert (=> b!7477137 (= e!4460374 e!4460369)))

(declare-fun res!2999789 () Bool)

(assert (=> b!7477137 (=> res!2999789 e!4460369)))

(assert (=> b!7477137 (= res!2999789 call!686466)))

(declare-fun b!7477138 () Bool)

(declare-fun res!2999793 () Bool)

(assert (=> b!7477138 (=> res!2999793 e!4460369)))

(assert (=> b!7477138 (= res!2999793 (not (isEmpty!41196 (tail!14908 (_1!37630 lt!2627291)))))))

(declare-fun b!7477139 () Bool)

(assert (=> b!7477139 (= e!4460370 (nullable!8540 r2!5783))))

(assert (= (and d!2299635 c!1381235) b!7477139))

(assert (= (and d!2299635 (not c!1381235)) b!7477128))

(assert (= (and d!2299635 c!1381236) b!7477134))

(assert (= (and d!2299635 (not c!1381236)) b!7477132))

(assert (= (and b!7477132 c!1381237) b!7477135))

(assert (= (and b!7477132 (not c!1381237)) b!7477129))

(assert (= (and b!7477129 (not res!2999792)) b!7477127))

(assert (= (and b!7477127 res!2999796) b!7477130))

(assert (= (and b!7477130 res!2999791) b!7477136))

(assert (= (and b!7477136 res!2999794) b!7477133))

(assert (= (and b!7477127 (not res!2999795)) b!7477126))

(assert (= (and b!7477126 res!2999790) b!7477137))

(assert (= (and b!7477137 (not res!2999789)) b!7477138))

(assert (= (and b!7477138 (not res!2999793)) b!7477131))

(assert (= (or b!7477134 b!7477130 b!7477137) bm!686461))

(declare-fun m!8071200 () Bool)

(assert (=> b!7477139 m!8071200))

(assert (=> d!2299635 m!8071050))

(assert (=> d!2299635 m!8070904))

(assert (=> b!7477136 m!8071052))

(assert (=> b!7477136 m!8071052))

(assert (=> b!7477136 m!8071054))

(assert (=> b!7477131 m!8071056))

(assert (=> b!7477138 m!8071052))

(assert (=> b!7477138 m!8071052))

(assert (=> b!7477138 m!8071054))

(assert (=> b!7477128 m!8071056))

(assert (=> b!7477128 m!8071056))

(declare-fun m!8071202 () Bool)

(assert (=> b!7477128 m!8071202))

(assert (=> b!7477128 m!8071052))

(assert (=> b!7477128 m!8071202))

(assert (=> b!7477128 m!8071052))

(declare-fun m!8071204 () Bool)

(assert (=> b!7477128 m!8071204))

(assert (=> b!7477133 m!8071056))

(assert (=> bm!686461 m!8071050))

(assert (=> b!7476686 d!2299635))

(declare-fun d!2299637 () Bool)

(assert (=> d!2299637 (= (matchR!9366 rTail!78 (_2!37630 lt!2627291)) (matchRSpec!4281 rTail!78 (_2!37630 lt!2627291)))))

(declare-fun lt!2627408 () Unit!166039)

(assert (=> d!2299637 (= lt!2627408 (choose!57797 rTail!78 (_2!37630 lt!2627291)))))

(assert (=> d!2299637 (validRegex!10116 rTail!78)))

(assert (=> d!2299637 (= (mainMatchTheorem!4275 rTail!78 (_2!37630 lt!2627291)) lt!2627408)))

(declare-fun bs!1932150 () Bool)

(assert (= bs!1932150 d!2299637))

(assert (=> bs!1932150 m!8070928))

(assert (=> bs!1932150 m!8070924))

(declare-fun m!8071206 () Bool)

(assert (=> bs!1932150 m!8071206))

(assert (=> bs!1932150 m!8070906))

(assert (=> b!7476686 d!2299637))

(declare-fun d!2299639 () Bool)

(assert (=> d!2299639 (= (matchR!9366 lt!2627300 (_1!37630 lt!2627291)) (matchRSpec!4281 lt!2627300 (_1!37630 lt!2627291)))))

(declare-fun lt!2627409 () Unit!166039)

(assert (=> d!2299639 (= lt!2627409 (choose!57797 lt!2627300 (_1!37630 lt!2627291)))))

(assert (=> d!2299639 (validRegex!10116 lt!2627300)))

(assert (=> d!2299639 (= (mainMatchTheorem!4275 lt!2627300 (_1!37630 lt!2627291)) lt!2627409)))

(declare-fun bs!1932151 () Bool)

(assert (= bs!1932151 d!2299639))

(assert (=> bs!1932151 m!8070932))

(assert (=> bs!1932151 m!8070914))

(declare-fun m!8071210 () Bool)

(assert (=> bs!1932151 m!8071210))

(assert (=> bs!1932151 m!8071038))

(assert (=> b!7476686 d!2299639))

(declare-fun bs!1932152 () Bool)

(declare-fun b!7477140 () Bool)

(assert (= bs!1932152 (and b!7477140 d!2299585)))

(declare-fun lambda!463243 () Int)

(assert (=> bs!1932152 (not (= lambda!463243 lambda!463219))))

(declare-fun bs!1932153 () Bool)

(assert (= bs!1932153 (and b!7477140 d!2299589)))

(assert (=> bs!1932153 (not (= lambda!463243 lambda!463222))))

(declare-fun bs!1932154 () Bool)

(assert (= bs!1932154 (and b!7477140 b!7477123)))

(assert (=> bs!1932154 (not (= lambda!463243 lambda!463241))))

(declare-fun bs!1932155 () Bool)

(assert (= bs!1932155 (and b!7477140 b!7477087)))

(assert (=> bs!1932155 (not (= lambda!463243 lambda!463238))))

(declare-fun bs!1932156 () Bool)

(assert (= bs!1932156 (and b!7477140 b!7477048)))

(assert (=> bs!1932156 (not (= lambda!463243 lambda!463236))))

(declare-fun bs!1932157 () Bool)

(assert (= bs!1932157 (and b!7477140 b!7476677)))

(assert (=> bs!1932157 (not (= lambda!463243 lambda!463204))))

(declare-fun bs!1932158 () Bool)

(assert (= bs!1932158 (and b!7477140 b!7476981)))

(assert (=> bs!1932158 (not (= lambda!463243 lambda!463234))))

(assert (=> bs!1932152 (not (= lambda!463243 lambda!463218))))

(declare-fun bs!1932159 () Bool)

(assert (= bs!1932159 (and b!7477140 b!7476973)))

(assert (=> bs!1932159 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 lt!2627300) (reg!19931 lt!2627283)) (= lt!2627300 lt!2627283)) (= lambda!463243 lambda!463233))))

(assert (=> bs!1932157 (not (= lambda!463243 lambda!463205))))

(declare-fun bs!1932161 () Bool)

(assert (= bs!1932161 (and b!7477140 b!7477115)))

(assert (=> bs!1932161 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 lt!2627300) (reg!19931 lt!2627281)) (= lt!2627300 lt!2627281)) (= lambda!463243 lambda!463239))))

(declare-fun bs!1932162 () Bool)

(assert (= bs!1932162 (and b!7477140 b!7477079)))

(assert (=> bs!1932162 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 lt!2627300) (reg!19931 lt!2627301)) (= lt!2627300 lt!2627301)) (= lambda!463243 lambda!463237))))

(declare-fun bs!1932164 () Bool)

(assert (= bs!1932164 (and b!7477140 b!7477040)))

(assert (=> bs!1932164 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 lt!2627300) (reg!19931 lt!2627282)) (= lt!2627300 lt!2627282)) (= lambda!463243 lambda!463235))))

(assert (=> b!7477140 true))

(assert (=> b!7477140 true))

(declare-fun bs!1932167 () Bool)

(declare-fun b!7477148 () Bool)

(assert (= bs!1932167 (and b!7477148 d!2299585)))

(declare-fun lambda!463245 () Int)

(assert (=> bs!1932167 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 lt!2627300) lt!2627300) (= (regTwo!39716 lt!2627300) rTail!78)) (= lambda!463245 lambda!463219))))

(declare-fun bs!1932168 () Bool)

(assert (= bs!1932168 (and b!7477148 d!2299589)))

(assert (=> bs!1932168 (not (= lambda!463245 lambda!463222))))

(declare-fun bs!1932169 () Bool)

(assert (= bs!1932169 (and b!7477148 b!7477123)))

(assert (=> bs!1932169 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 lt!2627300) (regOne!39716 lt!2627281)) (= (regTwo!39716 lt!2627300) (regTwo!39716 lt!2627281))) (= lambda!463245 lambda!463241))))

(declare-fun bs!1932170 () Bool)

(assert (= bs!1932170 (and b!7477148 b!7477087)))

(assert (=> bs!1932170 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 lt!2627300) (regOne!39716 lt!2627301)) (= (regTwo!39716 lt!2627300) (regTwo!39716 lt!2627301))) (= lambda!463245 lambda!463238))))

(declare-fun bs!1932172 () Bool)

(assert (= bs!1932172 (and b!7477148 b!7477048)))

(assert (=> bs!1932172 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 lt!2627300) (regOne!39716 lt!2627282)) (= (regTwo!39716 lt!2627300) (regTwo!39716 lt!2627282))) (= lambda!463245 lambda!463236))))

(declare-fun bs!1932173 () Bool)

(assert (= bs!1932173 (and b!7477148 b!7476677)))

(assert (=> bs!1932173 (not (= lambda!463245 lambda!463204))))

(declare-fun bs!1932174 () Bool)

(assert (= bs!1932174 (and b!7477148 b!7476981)))

(assert (=> bs!1932174 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 lt!2627300) (regOne!39716 lt!2627283)) (= (regTwo!39716 lt!2627300) (regTwo!39716 lt!2627283))) (= lambda!463245 lambda!463234))))

(assert (=> bs!1932167 (not (= lambda!463245 lambda!463218))))

(declare-fun bs!1932175 () Bool)

(assert (= bs!1932175 (and b!7477148 b!7476973)))

(assert (=> bs!1932175 (not (= lambda!463245 lambda!463233))))

(declare-fun bs!1932176 () Bool)

(assert (= bs!1932176 (and b!7477148 b!7477140)))

(assert (=> bs!1932176 (not (= lambda!463245 lambda!463243))))

(assert (=> bs!1932173 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 lt!2627300) lt!2627300) (= (regTwo!39716 lt!2627300) rTail!78)) (= lambda!463245 lambda!463205))))

(declare-fun bs!1932177 () Bool)

(assert (= bs!1932177 (and b!7477148 b!7477115)))

(assert (=> bs!1932177 (not (= lambda!463245 lambda!463239))))

(declare-fun bs!1932178 () Bool)

(assert (= bs!1932178 (and b!7477148 b!7477079)))

(assert (=> bs!1932178 (not (= lambda!463245 lambda!463237))))

(declare-fun bs!1932179 () Bool)

(assert (= bs!1932179 (and b!7477148 b!7477040)))

(assert (=> bs!1932179 (not (= lambda!463245 lambda!463235))))

(assert (=> b!7477148 true))

(assert (=> b!7477148 true))

(declare-fun b!7477141 () Bool)

(declare-fun res!2999798 () Bool)

(declare-fun e!4460381 () Bool)

(assert (=> b!7477141 (=> res!2999798 e!4460381)))

(declare-fun call!686468 () Bool)

(assert (=> b!7477141 (= res!2999798 call!686468)))

(declare-fun e!4460382 () Bool)

(assert (=> b!7477141 (= e!4460382 e!4460381)))

(declare-fun b!7477142 () Bool)

(declare-fun e!4460377 () Bool)

(declare-fun e!4460380 () Bool)

(assert (=> b!7477142 (= e!4460377 e!4460380)))

(declare-fun res!2999799 () Bool)

(assert (=> b!7477142 (= res!2999799 (not (is-EmptyLang!19602 lt!2627300)))))

(assert (=> b!7477142 (=> (not res!2999799) (not e!4460380))))

(declare-fun b!7477143 () Bool)

(declare-fun c!1381239 () Bool)

(assert (=> b!7477143 (= c!1381239 (is-Union!19602 lt!2627300))))

(declare-fun e!4460376 () Bool)

(declare-fun e!4460379 () Bool)

(assert (=> b!7477143 (= e!4460376 e!4460379)))

(declare-fun b!7477144 () Bool)

(assert (=> b!7477144 (= e!4460377 call!686468)))

(declare-fun b!7477145 () Bool)

(assert (=> b!7477145 (= e!4460379 e!4460382)))

(declare-fun c!1381238 () Bool)

(assert (=> b!7477145 (= c!1381238 (is-Star!19602 lt!2627300))))

(declare-fun b!7477146 () Bool)

(declare-fun e!4460378 () Bool)

(assert (=> b!7477146 (= e!4460379 e!4460378)))

(declare-fun res!2999797 () Bool)

(assert (=> b!7477146 (= res!2999797 (matchRSpec!4281 (regOne!39717 lt!2627300) (_1!37630 lt!2627291)))))

(assert (=> b!7477146 (=> res!2999797 e!4460378)))

(declare-fun b!7477147 () Bool)

(assert (=> b!7477147 (= e!4460378 (matchRSpec!4281 (regTwo!39717 lt!2627300) (_1!37630 lt!2627291)))))

(declare-fun call!686467 () Bool)

(declare-fun bm!686462 () Bool)

(assert (=> bm!686462 (= call!686467 (Exists!4221 (ite c!1381238 lambda!463243 lambda!463245)))))

(declare-fun d!2299641 () Bool)

(declare-fun c!1381240 () Bool)

(assert (=> d!2299641 (= c!1381240 (is-EmptyExpr!19602 lt!2627300))))

(assert (=> d!2299641 (= (matchRSpec!4281 lt!2627300 (_1!37630 lt!2627291)) e!4460377)))

(assert (=> b!7477140 (= e!4460381 call!686467)))

(assert (=> b!7477148 (= e!4460382 call!686467)))

(declare-fun b!7477149 () Bool)

(assert (=> b!7477149 (= e!4460376 (= (_1!37630 lt!2627291) (Cons!72194 (c!1381147 lt!2627300) Nil!72194)))))

(declare-fun bm!686463 () Bool)

(assert (=> bm!686463 (= call!686468 (isEmpty!41196 (_1!37630 lt!2627291)))))

(declare-fun b!7477150 () Bool)

(declare-fun c!1381241 () Bool)

(assert (=> b!7477150 (= c!1381241 (is-ElementMatch!19602 lt!2627300))))

(assert (=> b!7477150 (= e!4460380 e!4460376)))

(assert (= (and d!2299641 c!1381240) b!7477144))

(assert (= (and d!2299641 (not c!1381240)) b!7477142))

(assert (= (and b!7477142 res!2999799) b!7477150))

(assert (= (and b!7477150 c!1381241) b!7477149))

(assert (= (and b!7477150 (not c!1381241)) b!7477143))

(assert (= (and b!7477143 c!1381239) b!7477146))

(assert (= (and b!7477143 (not c!1381239)) b!7477145))

(assert (= (and b!7477146 (not res!2999797)) b!7477147))

(assert (= (and b!7477145 c!1381238) b!7477141))

(assert (= (and b!7477145 (not c!1381238)) b!7477148))

(assert (= (and b!7477141 (not res!2999798)) b!7477140))

(assert (= (or b!7477140 b!7477148) bm!686462))

(assert (= (or b!7477144 b!7477141) bm!686463))

(declare-fun m!8071216 () Bool)

(assert (=> b!7477146 m!8071216))

(declare-fun m!8071218 () Bool)

(assert (=> b!7477147 m!8071218))

(declare-fun m!8071220 () Bool)

(assert (=> bm!686462 m!8071220))

(assert (=> bm!686463 m!8071050))

(assert (=> b!7476686 d!2299641))

(declare-fun bs!1932184 () Bool)

(declare-fun b!7477162 () Bool)

(assert (= bs!1932184 (and b!7477162 d!2299585)))

(declare-fun lambda!463247 () Int)

(assert (=> bs!1932184 (not (= lambda!463247 lambda!463219))))

(declare-fun bs!1932186 () Bool)

(assert (= bs!1932186 (and b!7477162 d!2299589)))

(assert (=> bs!1932186 (not (= lambda!463247 lambda!463222))))

(declare-fun bs!1932187 () Bool)

(assert (= bs!1932187 (and b!7477162 b!7477123)))

(assert (=> bs!1932187 (not (= lambda!463247 lambda!463241))))

(declare-fun bs!1932188 () Bool)

(assert (= bs!1932188 (and b!7477162 b!7477087)))

(assert (=> bs!1932188 (not (= lambda!463247 lambda!463238))))

(declare-fun bs!1932189 () Bool)

(assert (= bs!1932189 (and b!7477162 b!7477048)))

(assert (=> bs!1932189 (not (= lambda!463247 lambda!463236))))

(declare-fun bs!1932190 () Bool)

(assert (= bs!1932190 (and b!7477162 b!7476677)))

(assert (=> bs!1932190 (not (= lambda!463247 lambda!463204))))

(declare-fun bs!1932192 () Bool)

(assert (= bs!1932192 (and b!7477162 b!7476981)))

(assert (=> bs!1932192 (not (= lambda!463247 lambda!463234))))

(declare-fun bs!1932193 () Bool)

(assert (= bs!1932193 (and b!7477162 b!7476973)))

(assert (=> bs!1932193 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 r2!5783) (reg!19931 lt!2627283)) (= r2!5783 lt!2627283)) (= lambda!463247 lambda!463233))))

(declare-fun bs!1932194 () Bool)

(assert (= bs!1932194 (and b!7477162 b!7477140)))

(assert (=> bs!1932194 (= (and (= (reg!19931 r2!5783) (reg!19931 lt!2627300)) (= r2!5783 lt!2627300)) (= lambda!463247 lambda!463243))))

(assert (=> bs!1932190 (not (= lambda!463247 lambda!463205))))

(declare-fun bs!1932195 () Bool)

(assert (= bs!1932195 (and b!7477162 b!7477115)))

(assert (=> bs!1932195 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 r2!5783) (reg!19931 lt!2627281)) (= r2!5783 lt!2627281)) (= lambda!463247 lambda!463239))))

(assert (=> bs!1932184 (not (= lambda!463247 lambda!463218))))

(declare-fun bs!1932196 () Bool)

(assert (= bs!1932196 (and b!7477162 b!7477148)))

(assert (=> bs!1932196 (not (= lambda!463247 lambda!463245))))

(declare-fun bs!1932197 () Bool)

(assert (= bs!1932197 (and b!7477162 b!7477079)))

(assert (=> bs!1932197 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 r2!5783) (reg!19931 lt!2627301)) (= r2!5783 lt!2627301)) (= lambda!463247 lambda!463237))))

(declare-fun bs!1932198 () Bool)

(assert (= bs!1932198 (and b!7477162 b!7477040)))

(assert (=> bs!1932198 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 r2!5783) (reg!19931 lt!2627282)) (= r2!5783 lt!2627282)) (= lambda!463247 lambda!463235))))

(assert (=> b!7477162 true))

(assert (=> b!7477162 true))

(declare-fun bs!1932199 () Bool)

(declare-fun b!7477170 () Bool)

(assert (= bs!1932199 (and b!7477170 d!2299585)))

(declare-fun lambda!463248 () Int)

(assert (=> bs!1932199 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r2!5783) lt!2627300) (= (regTwo!39716 r2!5783) rTail!78)) (= lambda!463248 lambda!463219))))

(declare-fun bs!1932200 () Bool)

(assert (= bs!1932200 (and b!7477170 d!2299589)))

(assert (=> bs!1932200 (not (= lambda!463248 lambda!463222))))

(declare-fun bs!1932201 () Bool)

(assert (= bs!1932201 (and b!7477170 b!7477123)))

(assert (=> bs!1932201 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r2!5783) (regOne!39716 lt!2627281)) (= (regTwo!39716 r2!5783) (regTwo!39716 lt!2627281))) (= lambda!463248 lambda!463241))))

(declare-fun bs!1932202 () Bool)

(assert (= bs!1932202 (and b!7477170 b!7477087)))

(assert (=> bs!1932202 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r2!5783) (regOne!39716 lt!2627301)) (= (regTwo!39716 r2!5783) (regTwo!39716 lt!2627301))) (= lambda!463248 lambda!463238))))

(declare-fun bs!1932203 () Bool)

(assert (= bs!1932203 (and b!7477170 b!7476677)))

(assert (=> bs!1932203 (not (= lambda!463248 lambda!463204))))

(declare-fun bs!1932204 () Bool)

(assert (= bs!1932204 (and b!7477170 b!7476981)))

(assert (=> bs!1932204 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r2!5783) (regOne!39716 lt!2627283)) (= (regTwo!39716 r2!5783) (regTwo!39716 lt!2627283))) (= lambda!463248 lambda!463234))))

(declare-fun bs!1932205 () Bool)

(assert (= bs!1932205 (and b!7477170 b!7476973)))

(assert (=> bs!1932205 (not (= lambda!463248 lambda!463233))))

(declare-fun bs!1932206 () Bool)

(assert (= bs!1932206 (and b!7477170 b!7477140)))

(assert (=> bs!1932206 (not (= lambda!463248 lambda!463243))))

(assert (=> bs!1932203 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r2!5783) lt!2627300) (= (regTwo!39716 r2!5783) rTail!78)) (= lambda!463248 lambda!463205))))

(declare-fun bs!1932207 () Bool)

(assert (= bs!1932207 (and b!7477170 b!7477115)))

(assert (=> bs!1932207 (not (= lambda!463248 lambda!463239))))

(declare-fun bs!1932208 () Bool)

(assert (= bs!1932208 (and b!7477170 b!7477048)))

(assert (=> bs!1932208 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r2!5783) (regOne!39716 lt!2627282)) (= (regTwo!39716 r2!5783) (regTwo!39716 lt!2627282))) (= lambda!463248 lambda!463236))))

(declare-fun bs!1932209 () Bool)

(assert (= bs!1932209 (and b!7477170 b!7477162)))

(assert (=> bs!1932209 (not (= lambda!463248 lambda!463247))))

(assert (=> bs!1932199 (not (= lambda!463248 lambda!463218))))

(declare-fun bs!1932210 () Bool)

(assert (= bs!1932210 (and b!7477170 b!7477148)))

(assert (=> bs!1932210 (= (and (= (regOne!39716 r2!5783) (regOne!39716 lt!2627300)) (= (regTwo!39716 r2!5783) (regTwo!39716 lt!2627300))) (= lambda!463248 lambda!463245))))

(declare-fun bs!1932211 () Bool)

(assert (= bs!1932211 (and b!7477170 b!7477079)))

(assert (=> bs!1932211 (not (= lambda!463248 lambda!463237))))

(declare-fun bs!1932212 () Bool)

(assert (= bs!1932212 (and b!7477170 b!7477040)))

(assert (=> bs!1932212 (not (= lambda!463248 lambda!463235))))

(assert (=> b!7477170 true))

(assert (=> b!7477170 true))

(declare-fun b!7477163 () Bool)

(declare-fun res!2999804 () Bool)

(declare-fun e!4460395 () Bool)

(assert (=> b!7477163 (=> res!2999804 e!4460395)))

(declare-fun call!686472 () Bool)

(assert (=> b!7477163 (= res!2999804 call!686472)))

(declare-fun e!4460396 () Bool)

(assert (=> b!7477163 (= e!4460396 e!4460395)))

(declare-fun b!7477164 () Bool)

(declare-fun e!4460391 () Bool)

(declare-fun e!4460394 () Bool)

(assert (=> b!7477164 (= e!4460391 e!4460394)))

(declare-fun res!2999805 () Bool)

(assert (=> b!7477164 (= res!2999805 (not (is-EmptyLang!19602 r2!5783)))))

(assert (=> b!7477164 (=> (not res!2999805) (not e!4460394))))

(declare-fun b!7477165 () Bool)

(declare-fun c!1381247 () Bool)

(assert (=> b!7477165 (= c!1381247 (is-Union!19602 r2!5783))))

(declare-fun e!4460390 () Bool)

(declare-fun e!4460393 () Bool)

(assert (=> b!7477165 (= e!4460390 e!4460393)))

(declare-fun b!7477166 () Bool)

(assert (=> b!7477166 (= e!4460391 call!686472)))

(declare-fun b!7477167 () Bool)

(assert (=> b!7477167 (= e!4460393 e!4460396)))

(declare-fun c!1381246 () Bool)

(assert (=> b!7477167 (= c!1381246 (is-Star!19602 r2!5783))))

(declare-fun b!7477168 () Bool)

(declare-fun e!4460392 () Bool)

(assert (=> b!7477168 (= e!4460393 e!4460392)))

(declare-fun res!2999803 () Bool)

(assert (=> b!7477168 (= res!2999803 (matchRSpec!4281 (regOne!39717 r2!5783) (_1!37630 lt!2627291)))))

(assert (=> b!7477168 (=> res!2999803 e!4460392)))

(declare-fun b!7477169 () Bool)

(assert (=> b!7477169 (= e!4460392 (matchRSpec!4281 (regTwo!39717 r2!5783) (_1!37630 lt!2627291)))))

(declare-fun call!686471 () Bool)

(declare-fun bm!686466 () Bool)

(assert (=> bm!686466 (= call!686471 (Exists!4221 (ite c!1381246 lambda!463247 lambda!463248)))))

(declare-fun d!2299645 () Bool)

(declare-fun c!1381248 () Bool)

(assert (=> d!2299645 (= c!1381248 (is-EmptyExpr!19602 r2!5783))))

(assert (=> d!2299645 (= (matchRSpec!4281 r2!5783 (_1!37630 lt!2627291)) e!4460391)))

(assert (=> b!7477162 (= e!4460395 call!686471)))

(assert (=> b!7477170 (= e!4460396 call!686471)))

(declare-fun b!7477171 () Bool)

(assert (=> b!7477171 (= e!4460390 (= (_1!37630 lt!2627291) (Cons!72194 (c!1381147 r2!5783) Nil!72194)))))

(declare-fun bm!686467 () Bool)

(assert (=> bm!686467 (= call!686472 (isEmpty!41196 (_1!37630 lt!2627291)))))

(declare-fun b!7477172 () Bool)

(declare-fun c!1381249 () Bool)

(assert (=> b!7477172 (= c!1381249 (is-ElementMatch!19602 r2!5783))))

(assert (=> b!7477172 (= e!4460394 e!4460390)))

(assert (= (and d!2299645 c!1381248) b!7477166))

(assert (= (and d!2299645 (not c!1381248)) b!7477164))

(assert (= (and b!7477164 res!2999805) b!7477172))

(assert (= (and b!7477172 c!1381249) b!7477171))

(assert (= (and b!7477172 (not c!1381249)) b!7477165))

(assert (= (and b!7477165 c!1381247) b!7477168))

(assert (= (and b!7477165 (not c!1381247)) b!7477167))

(assert (= (and b!7477168 (not res!2999803)) b!7477169))

(assert (= (and b!7477167 c!1381246) b!7477163))

(assert (= (and b!7477167 (not c!1381246)) b!7477170))

(assert (= (and b!7477163 (not res!2999804)) b!7477162))

(assert (= (or b!7477162 b!7477170) bm!686466))

(assert (= (or b!7477166 b!7477163) bm!686467))

(declare-fun m!8071234 () Bool)

(assert (=> b!7477168 m!8071234))

(declare-fun m!8071236 () Bool)

(assert (=> b!7477169 m!8071236))

(declare-fun m!8071238 () Bool)

(assert (=> bm!686466 m!8071238))

(assert (=> bm!686467 m!8071050))

(assert (=> b!7476686 d!2299645))

(declare-fun d!2299651 () Bool)

(assert (=> d!2299651 (= (matchR!9366 r2!5783 (_1!37630 lt!2627291)) (matchRSpec!4281 r2!5783 (_1!37630 lt!2627291)))))

(declare-fun lt!2627412 () Unit!166039)

(assert (=> d!2299651 (= lt!2627412 (choose!57797 r2!5783 (_1!37630 lt!2627291)))))

(assert (=> d!2299651 (validRegex!10116 r2!5783)))

(assert (=> d!2299651 (= (mainMatchTheorem!4275 r2!5783 (_1!37630 lt!2627291)) lt!2627412)))

(declare-fun bs!1932213 () Bool)

(assert (= bs!1932213 d!2299651))

(assert (=> bs!1932213 m!8070926))

(assert (=> bs!1932213 m!8070922))

(declare-fun m!8071240 () Bool)

(assert (=> bs!1932213 m!8071240))

(assert (=> bs!1932213 m!8070904))

(assert (=> b!7476686 d!2299651))

(declare-fun bs!1932215 () Bool)

(declare-fun b!7477187 () Bool)

(assert (= bs!1932215 (and b!7477187 d!2299585)))

(declare-fun lambda!463249 () Int)

(assert (=> bs!1932215 (not (= lambda!463249 lambda!463219))))

(declare-fun bs!1932216 () Bool)

(assert (= bs!1932216 (and b!7477187 d!2299589)))

(assert (=> bs!1932216 (not (= lambda!463249 lambda!463222))))

(declare-fun bs!1932217 () Bool)

(assert (= bs!1932217 (and b!7477187 b!7477123)))

(assert (=> bs!1932217 (not (= lambda!463249 lambda!463241))))

(declare-fun bs!1932218 () Bool)

(assert (= bs!1932218 (and b!7477187 b!7477087)))

(assert (=> bs!1932218 (not (= lambda!463249 lambda!463238))))

(declare-fun bs!1932219 () Bool)

(assert (= bs!1932219 (and b!7477187 b!7477170)))

(assert (=> bs!1932219 (not (= lambda!463249 lambda!463248))))

(declare-fun bs!1932220 () Bool)

(assert (= bs!1932220 (and b!7477187 b!7476677)))

(assert (=> bs!1932220 (not (= lambda!463249 lambda!463204))))

(declare-fun bs!1932221 () Bool)

(assert (= bs!1932221 (and b!7477187 b!7476981)))

(assert (=> bs!1932221 (not (= lambda!463249 lambda!463234))))

(declare-fun bs!1932222 () Bool)

(assert (= bs!1932222 (and b!7477187 b!7476973)))

(assert (=> bs!1932222 (= (and (= (_2!37630 lt!2627291) s!13591) (= (reg!19931 rTail!78) (reg!19931 lt!2627283)) (= rTail!78 lt!2627283)) (= lambda!463249 lambda!463233))))

(declare-fun bs!1932223 () Bool)

(assert (= bs!1932223 (and b!7477187 b!7477140)))

(assert (=> bs!1932223 (= (and (= (_2!37630 lt!2627291) (_1!37630 lt!2627291)) (= (reg!19931 rTail!78) (reg!19931 lt!2627300)) (= rTail!78 lt!2627300)) (= lambda!463249 lambda!463243))))

(assert (=> bs!1932220 (not (= lambda!463249 lambda!463205))))

(declare-fun bs!1932225 () Bool)

(assert (= bs!1932225 (and b!7477187 b!7477115)))

(assert (=> bs!1932225 (= (and (= (_2!37630 lt!2627291) s!13591) (= (reg!19931 rTail!78) (reg!19931 lt!2627281)) (= rTail!78 lt!2627281)) (= lambda!463249 lambda!463239))))

(declare-fun bs!1932226 () Bool)

(assert (= bs!1932226 (and b!7477187 b!7477048)))

(assert (=> bs!1932226 (not (= lambda!463249 lambda!463236))))

(declare-fun bs!1932228 () Bool)

(assert (= bs!1932228 (and b!7477187 b!7477162)))

(assert (=> bs!1932228 (= (and (= (_2!37630 lt!2627291) (_1!37630 lt!2627291)) (= (reg!19931 rTail!78) (reg!19931 r2!5783)) (= rTail!78 r2!5783)) (= lambda!463249 lambda!463247))))

(assert (=> bs!1932215 (not (= lambda!463249 lambda!463218))))

(declare-fun bs!1932230 () Bool)

(assert (= bs!1932230 (and b!7477187 b!7477148)))

(assert (=> bs!1932230 (not (= lambda!463249 lambda!463245))))

(declare-fun bs!1932231 () Bool)

(assert (= bs!1932231 (and b!7477187 b!7477079)))

(assert (=> bs!1932231 (= (and (= (_2!37630 lt!2627291) s!13591) (= (reg!19931 rTail!78) (reg!19931 lt!2627301)) (= rTail!78 lt!2627301)) (= lambda!463249 lambda!463237))))

(declare-fun bs!1932232 () Bool)

(assert (= bs!1932232 (and b!7477187 b!7477040)))

(assert (=> bs!1932232 (= (and (= (_2!37630 lt!2627291) s!13591) (= (reg!19931 rTail!78) (reg!19931 lt!2627282)) (= rTail!78 lt!2627282)) (= lambda!463249 lambda!463235))))

(assert (=> b!7477187 true))

(assert (=> b!7477187 true))

(declare-fun bs!1932236 () Bool)

(declare-fun b!7477195 () Bool)

(assert (= bs!1932236 (and b!7477195 d!2299585)))

(declare-fun lambda!463251 () Int)

(assert (=> bs!1932236 (= (and (= (_2!37630 lt!2627291) s!13591) (= (regOne!39716 rTail!78) lt!2627300) (= (regTwo!39716 rTail!78) rTail!78)) (= lambda!463251 lambda!463219))))

(declare-fun bs!1932237 () Bool)

(assert (= bs!1932237 (and b!7477195 d!2299589)))

(assert (=> bs!1932237 (not (= lambda!463251 lambda!463222))))

(declare-fun bs!1932238 () Bool)

(assert (= bs!1932238 (and b!7477195 b!7477123)))

(assert (=> bs!1932238 (= (and (= (_2!37630 lt!2627291) s!13591) (= (regOne!39716 rTail!78) (regOne!39716 lt!2627281)) (= (regTwo!39716 rTail!78) (regTwo!39716 lt!2627281))) (= lambda!463251 lambda!463241))))

(declare-fun bs!1932239 () Bool)

(assert (= bs!1932239 (and b!7477195 b!7477087)))

(assert (=> bs!1932239 (= (and (= (_2!37630 lt!2627291) s!13591) (= (regOne!39716 rTail!78) (regOne!39716 lt!2627301)) (= (regTwo!39716 rTail!78) (regTwo!39716 lt!2627301))) (= lambda!463251 lambda!463238))))

(declare-fun bs!1932240 () Bool)

(assert (= bs!1932240 (and b!7477195 b!7477170)))

(assert (=> bs!1932240 (= (and (= (_2!37630 lt!2627291) (_1!37630 lt!2627291)) (= (regOne!39716 rTail!78) (regOne!39716 r2!5783)) (= (regTwo!39716 rTail!78) (regTwo!39716 r2!5783))) (= lambda!463251 lambda!463248))))

(declare-fun bs!1932242 () Bool)

(assert (= bs!1932242 (and b!7477195 b!7476677)))

(assert (=> bs!1932242 (not (= lambda!463251 lambda!463204))))

(declare-fun bs!1932243 () Bool)

(assert (= bs!1932243 (and b!7477195 b!7476973)))

(assert (=> bs!1932243 (not (= lambda!463251 lambda!463233))))

(declare-fun bs!1932244 () Bool)

(assert (= bs!1932244 (and b!7477195 b!7477140)))

(assert (=> bs!1932244 (not (= lambda!463251 lambda!463243))))

(assert (=> bs!1932242 (= (and (= (_2!37630 lt!2627291) s!13591) (= (regOne!39716 rTail!78) lt!2627300) (= (regTwo!39716 rTail!78) rTail!78)) (= lambda!463251 lambda!463205))))

(declare-fun bs!1932245 () Bool)

(assert (= bs!1932245 (and b!7477195 b!7477115)))

(assert (=> bs!1932245 (not (= lambda!463251 lambda!463239))))

(declare-fun bs!1932246 () Bool)

(assert (= bs!1932246 (and b!7477195 b!7477048)))

(assert (=> bs!1932246 (= (and (= (_2!37630 lt!2627291) s!13591) (= (regOne!39716 rTail!78) (regOne!39716 lt!2627282)) (= (regTwo!39716 rTail!78) (regTwo!39716 lt!2627282))) (= lambda!463251 lambda!463236))))

(declare-fun bs!1932247 () Bool)

(assert (= bs!1932247 (and b!7477195 b!7477162)))

(assert (=> bs!1932247 (not (= lambda!463251 lambda!463247))))

(declare-fun bs!1932248 () Bool)

(assert (= bs!1932248 (and b!7477195 b!7477187)))

(assert (=> bs!1932248 (not (= lambda!463251 lambda!463249))))

(declare-fun bs!1932249 () Bool)

(assert (= bs!1932249 (and b!7477195 b!7476981)))

(assert (=> bs!1932249 (= (and (= (_2!37630 lt!2627291) s!13591) (= (regOne!39716 rTail!78) (regOne!39716 lt!2627283)) (= (regTwo!39716 rTail!78) (regTwo!39716 lt!2627283))) (= lambda!463251 lambda!463234))))

(assert (=> bs!1932236 (not (= lambda!463251 lambda!463218))))

(declare-fun bs!1932250 () Bool)

(assert (= bs!1932250 (and b!7477195 b!7477148)))

(assert (=> bs!1932250 (= (and (= (_2!37630 lt!2627291) (_1!37630 lt!2627291)) (= (regOne!39716 rTail!78) (regOne!39716 lt!2627300)) (= (regTwo!39716 rTail!78) (regTwo!39716 lt!2627300))) (= lambda!463251 lambda!463245))))

(declare-fun bs!1932251 () Bool)

(assert (= bs!1932251 (and b!7477195 b!7477079)))

(assert (=> bs!1932251 (not (= lambda!463251 lambda!463237))))

(declare-fun bs!1932252 () Bool)

(assert (= bs!1932252 (and b!7477195 b!7477040)))

(assert (=> bs!1932252 (not (= lambda!463251 lambda!463235))))

(assert (=> b!7477195 true))

(assert (=> b!7477195 true))

(declare-fun b!7477188 () Bool)

(declare-fun res!2999815 () Bool)

(declare-fun e!4460409 () Bool)

(assert (=> b!7477188 (=> res!2999815 e!4460409)))

(declare-fun call!686475 () Bool)

(assert (=> b!7477188 (= res!2999815 call!686475)))

(declare-fun e!4460410 () Bool)

(assert (=> b!7477188 (= e!4460410 e!4460409)))

(declare-fun b!7477189 () Bool)

(declare-fun e!4460405 () Bool)

(declare-fun e!4460408 () Bool)

(assert (=> b!7477189 (= e!4460405 e!4460408)))

(declare-fun res!2999816 () Bool)

(assert (=> b!7477189 (= res!2999816 (not (is-EmptyLang!19602 rTail!78)))))

(assert (=> b!7477189 (=> (not res!2999816) (not e!4460408))))

(declare-fun b!7477190 () Bool)

(declare-fun c!1381254 () Bool)

(assert (=> b!7477190 (= c!1381254 (is-Union!19602 rTail!78))))

(declare-fun e!4460404 () Bool)

(declare-fun e!4460407 () Bool)

(assert (=> b!7477190 (= e!4460404 e!4460407)))

(declare-fun b!7477191 () Bool)

(assert (=> b!7477191 (= e!4460405 call!686475)))

(declare-fun b!7477192 () Bool)

(assert (=> b!7477192 (= e!4460407 e!4460410)))

(declare-fun c!1381253 () Bool)

(assert (=> b!7477192 (= c!1381253 (is-Star!19602 rTail!78))))

(declare-fun b!7477193 () Bool)

(declare-fun e!4460406 () Bool)

(assert (=> b!7477193 (= e!4460407 e!4460406)))

(declare-fun res!2999814 () Bool)

(assert (=> b!7477193 (= res!2999814 (matchRSpec!4281 (regOne!39717 rTail!78) (_2!37630 lt!2627291)))))

(assert (=> b!7477193 (=> res!2999814 e!4460406)))

(declare-fun b!7477194 () Bool)

(assert (=> b!7477194 (= e!4460406 (matchRSpec!4281 (regTwo!39717 rTail!78) (_2!37630 lt!2627291)))))

(declare-fun bm!686469 () Bool)

(declare-fun call!686474 () Bool)

(assert (=> bm!686469 (= call!686474 (Exists!4221 (ite c!1381253 lambda!463249 lambda!463251)))))

(declare-fun d!2299653 () Bool)

(declare-fun c!1381255 () Bool)

(assert (=> d!2299653 (= c!1381255 (is-EmptyExpr!19602 rTail!78))))

(assert (=> d!2299653 (= (matchRSpec!4281 rTail!78 (_2!37630 lt!2627291)) e!4460405)))

(assert (=> b!7477187 (= e!4460409 call!686474)))

(assert (=> b!7477195 (= e!4460410 call!686474)))

(declare-fun b!7477196 () Bool)

(assert (=> b!7477196 (= e!4460404 (= (_2!37630 lt!2627291) (Cons!72194 (c!1381147 rTail!78) Nil!72194)))))

(declare-fun bm!686470 () Bool)

(assert (=> bm!686470 (= call!686475 (isEmpty!41196 (_2!37630 lt!2627291)))))

(declare-fun b!7477197 () Bool)

(declare-fun c!1381256 () Bool)

(assert (=> b!7477197 (= c!1381256 (is-ElementMatch!19602 rTail!78))))

(assert (=> b!7477197 (= e!4460408 e!4460404)))

(assert (= (and d!2299653 c!1381255) b!7477191))

(assert (= (and d!2299653 (not c!1381255)) b!7477189))

(assert (= (and b!7477189 res!2999816) b!7477197))

(assert (= (and b!7477197 c!1381256) b!7477196))

(assert (= (and b!7477197 (not c!1381256)) b!7477190))

(assert (= (and b!7477190 c!1381254) b!7477193))

(assert (= (and b!7477190 (not c!1381254)) b!7477192))

(assert (= (and b!7477193 (not res!2999814)) b!7477194))

(assert (= (and b!7477192 c!1381253) b!7477188))

(assert (= (and b!7477192 (not c!1381253)) b!7477195))

(assert (= (and b!7477188 (not res!2999815)) b!7477187))

(assert (= (or b!7477187 b!7477195) bm!686469))

(assert (= (or b!7477191 b!7477188) bm!686470))

(declare-fun m!8071244 () Bool)

(assert (=> b!7477193 m!8071244))

(declare-fun m!8071246 () Bool)

(assert (=> b!7477194 m!8071246))

(declare-fun m!8071248 () Bool)

(assert (=> bm!686469 m!8071248))

(declare-fun m!8071250 () Bool)

(assert (=> bm!686470 m!8071250))

(assert (=> b!7476686 d!2299653))

(declare-fun bs!1932259 () Bool)

(declare-fun b!7477209 () Bool)

(assert (= bs!1932259 (and b!7477209 d!2299585)))

(declare-fun lambda!463253 () Int)

(assert (=> bs!1932259 (not (= lambda!463253 lambda!463219))))

(declare-fun bs!1932260 () Bool)

(assert (= bs!1932260 (and b!7477209 d!2299589)))

(assert (=> bs!1932260 (not (= lambda!463253 lambda!463222))))

(declare-fun bs!1932261 () Bool)

(assert (= bs!1932261 (and b!7477209 b!7477123)))

(assert (=> bs!1932261 (not (= lambda!463253 lambda!463241))))

(declare-fun bs!1932262 () Bool)

(assert (= bs!1932262 (and b!7477209 b!7477087)))

(assert (=> bs!1932262 (not (= lambda!463253 lambda!463238))))

(declare-fun bs!1932264 () Bool)

(assert (= bs!1932264 (and b!7477209 b!7477170)))

(assert (=> bs!1932264 (not (= lambda!463253 lambda!463248))))

(declare-fun bs!1932265 () Bool)

(assert (= bs!1932265 (and b!7477209 b!7476677)))

(assert (=> bs!1932265 (not (= lambda!463253 lambda!463204))))

(declare-fun bs!1932266 () Bool)

(assert (= bs!1932266 (and b!7477209 b!7476973)))

(assert (=> bs!1932266 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 r1!5845) (reg!19931 lt!2627283)) (= r1!5845 lt!2627283)) (= lambda!463253 lambda!463233))))

(declare-fun bs!1932268 () Bool)

(assert (= bs!1932268 (and b!7477209 b!7477195)))

(assert (=> bs!1932268 (not (= lambda!463253 lambda!463251))))

(declare-fun bs!1932269 () Bool)

(assert (= bs!1932269 (and b!7477209 b!7477140)))

(assert (=> bs!1932269 (= (and (= (reg!19931 r1!5845) (reg!19931 lt!2627300)) (= r1!5845 lt!2627300)) (= lambda!463253 lambda!463243))))

(assert (=> bs!1932265 (not (= lambda!463253 lambda!463205))))

(declare-fun bs!1932270 () Bool)

(assert (= bs!1932270 (and b!7477209 b!7477115)))

(assert (=> bs!1932270 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 r1!5845) (reg!19931 lt!2627281)) (= r1!5845 lt!2627281)) (= lambda!463253 lambda!463239))))

(declare-fun bs!1932271 () Bool)

(assert (= bs!1932271 (and b!7477209 b!7477048)))

(assert (=> bs!1932271 (not (= lambda!463253 lambda!463236))))

(declare-fun bs!1932272 () Bool)

(assert (= bs!1932272 (and b!7477209 b!7477162)))

(assert (=> bs!1932272 (= (and (= (reg!19931 r1!5845) (reg!19931 r2!5783)) (= r1!5845 r2!5783)) (= lambda!463253 lambda!463247))))

(declare-fun bs!1932273 () Bool)

(assert (= bs!1932273 (and b!7477209 b!7477187)))

(assert (=> bs!1932273 (= (and (= (_1!37630 lt!2627291) (_2!37630 lt!2627291)) (= (reg!19931 r1!5845) (reg!19931 rTail!78)) (= r1!5845 rTail!78)) (= lambda!463253 lambda!463249))))

(declare-fun bs!1932274 () Bool)

(assert (= bs!1932274 (and b!7477209 b!7476981)))

(assert (=> bs!1932274 (not (= lambda!463253 lambda!463234))))

(assert (=> bs!1932259 (not (= lambda!463253 lambda!463218))))

(declare-fun bs!1932275 () Bool)

(assert (= bs!1932275 (and b!7477209 b!7477148)))

(assert (=> bs!1932275 (not (= lambda!463253 lambda!463245))))

(declare-fun bs!1932276 () Bool)

(assert (= bs!1932276 (and b!7477209 b!7477079)))

(assert (=> bs!1932276 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 r1!5845) (reg!19931 lt!2627301)) (= r1!5845 lt!2627301)) (= lambda!463253 lambda!463237))))

(declare-fun bs!1932277 () Bool)

(assert (= bs!1932277 (and b!7477209 b!7477040)))

(assert (=> bs!1932277 (= (and (= (_1!37630 lt!2627291) s!13591) (= (reg!19931 r1!5845) (reg!19931 lt!2627282)) (= r1!5845 lt!2627282)) (= lambda!463253 lambda!463235))))

(assert (=> b!7477209 true))

(assert (=> b!7477209 true))

(declare-fun bs!1932279 () Bool)

(declare-fun b!7477217 () Bool)

(assert (= bs!1932279 (and b!7477217 d!2299585)))

(declare-fun lambda!463254 () Int)

(assert (=> bs!1932279 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r1!5845) lt!2627300) (= (regTwo!39716 r1!5845) rTail!78)) (= lambda!463254 lambda!463219))))

(declare-fun bs!1932280 () Bool)

(assert (= bs!1932280 (and b!7477217 d!2299589)))

(assert (=> bs!1932280 (not (= lambda!463254 lambda!463222))))

(declare-fun bs!1932281 () Bool)

(assert (= bs!1932281 (and b!7477217 b!7477123)))

(assert (=> bs!1932281 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r1!5845) (regOne!39716 lt!2627281)) (= (regTwo!39716 r1!5845) (regTwo!39716 lt!2627281))) (= lambda!463254 lambda!463241))))

(declare-fun bs!1932282 () Bool)

(assert (= bs!1932282 (and b!7477217 b!7477087)))

(assert (=> bs!1932282 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r1!5845) (regOne!39716 lt!2627301)) (= (regTwo!39716 r1!5845) (regTwo!39716 lt!2627301))) (= lambda!463254 lambda!463238))))

(declare-fun bs!1932283 () Bool)

(assert (= bs!1932283 (and b!7477217 b!7477170)))

(assert (=> bs!1932283 (= (and (= (regOne!39716 r1!5845) (regOne!39716 r2!5783)) (= (regTwo!39716 r1!5845) (regTwo!39716 r2!5783))) (= lambda!463254 lambda!463248))))

(declare-fun bs!1932284 () Bool)

(assert (= bs!1932284 (and b!7477217 b!7476677)))

(assert (=> bs!1932284 (not (= lambda!463254 lambda!463204))))

(declare-fun bs!1932285 () Bool)

(assert (= bs!1932285 (and b!7477217 b!7476973)))

(assert (=> bs!1932285 (not (= lambda!463254 lambda!463233))))

(declare-fun bs!1932286 () Bool)

(assert (= bs!1932286 (and b!7477217 b!7477195)))

(assert (=> bs!1932286 (= (and (= (_1!37630 lt!2627291) (_2!37630 lt!2627291)) (= (regOne!39716 r1!5845) (regOne!39716 rTail!78)) (= (regTwo!39716 r1!5845) (regTwo!39716 rTail!78))) (= lambda!463254 lambda!463251))))

(declare-fun bs!1932287 () Bool)

(assert (= bs!1932287 (and b!7477217 b!7477140)))

(assert (=> bs!1932287 (not (= lambda!463254 lambda!463243))))

(assert (=> bs!1932284 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r1!5845) lt!2627300) (= (regTwo!39716 r1!5845) rTail!78)) (= lambda!463254 lambda!463205))))

(declare-fun bs!1932288 () Bool)

(assert (= bs!1932288 (and b!7477217 b!7477115)))

(assert (=> bs!1932288 (not (= lambda!463254 lambda!463239))))

(declare-fun bs!1932289 () Bool)

(assert (= bs!1932289 (and b!7477217 b!7477048)))

(assert (=> bs!1932289 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r1!5845) (regOne!39716 lt!2627282)) (= (regTwo!39716 r1!5845) (regTwo!39716 lt!2627282))) (= lambda!463254 lambda!463236))))

(declare-fun bs!1932290 () Bool)

(assert (= bs!1932290 (and b!7477217 b!7477162)))

(assert (=> bs!1932290 (not (= lambda!463254 lambda!463247))))

(declare-fun bs!1932291 () Bool)

(assert (= bs!1932291 (and b!7477217 b!7477187)))

(assert (=> bs!1932291 (not (= lambda!463254 lambda!463249))))

(declare-fun bs!1932292 () Bool)

(assert (= bs!1932292 (and b!7477217 b!7476981)))

(assert (=> bs!1932292 (= (and (= (_1!37630 lt!2627291) s!13591) (= (regOne!39716 r1!5845) (regOne!39716 lt!2627283)) (= (regTwo!39716 r1!5845) (regTwo!39716 lt!2627283))) (= lambda!463254 lambda!463234))))

(assert (=> bs!1932279 (not (= lambda!463254 lambda!463218))))

(declare-fun bs!1932293 () Bool)

(assert (= bs!1932293 (and b!7477217 b!7477148)))

(assert (=> bs!1932293 (= (and (= (regOne!39716 r1!5845) (regOne!39716 lt!2627300)) (= (regTwo!39716 r1!5845) (regTwo!39716 lt!2627300))) (= lambda!463254 lambda!463245))))

(declare-fun bs!1932294 () Bool)

(assert (= bs!1932294 (and b!7477217 b!7477209)))

(assert (=> bs!1932294 (not (= lambda!463254 lambda!463253))))

(declare-fun bs!1932295 () Bool)

(assert (= bs!1932295 (and b!7477217 b!7477079)))

(assert (=> bs!1932295 (not (= lambda!463254 lambda!463237))))

(declare-fun bs!1932296 () Bool)

(assert (= bs!1932296 (and b!7477217 b!7477040)))

(assert (=> bs!1932296 (not (= lambda!463254 lambda!463235))))

(assert (=> b!7477217 true))

(assert (=> b!7477217 true))

(declare-fun b!7477210 () Bool)

(declare-fun res!2999821 () Bool)

(declare-fun e!4460423 () Bool)

(assert (=> b!7477210 (=> res!2999821 e!4460423)))

(declare-fun call!686479 () Bool)

(assert (=> b!7477210 (= res!2999821 call!686479)))

(declare-fun e!4460424 () Bool)

(assert (=> b!7477210 (= e!4460424 e!4460423)))

(declare-fun b!7477211 () Bool)

(declare-fun e!4460419 () Bool)

(declare-fun e!4460422 () Bool)

(assert (=> b!7477211 (= e!4460419 e!4460422)))

(declare-fun res!2999822 () Bool)

(assert (=> b!7477211 (= res!2999822 (not (is-EmptyLang!19602 r1!5845)))))

(assert (=> b!7477211 (=> (not res!2999822) (not e!4460422))))

(declare-fun b!7477212 () Bool)

(declare-fun c!1381262 () Bool)

(assert (=> b!7477212 (= c!1381262 (is-Union!19602 r1!5845))))

(declare-fun e!4460418 () Bool)

(declare-fun e!4460421 () Bool)

(assert (=> b!7477212 (= e!4460418 e!4460421)))

(declare-fun b!7477213 () Bool)

(assert (=> b!7477213 (= e!4460419 call!686479)))

(declare-fun b!7477214 () Bool)

(assert (=> b!7477214 (= e!4460421 e!4460424)))

(declare-fun c!1381261 () Bool)

(assert (=> b!7477214 (= c!1381261 (is-Star!19602 r1!5845))))

(declare-fun b!7477215 () Bool)

(declare-fun e!4460420 () Bool)

(assert (=> b!7477215 (= e!4460421 e!4460420)))

(declare-fun res!2999820 () Bool)

(assert (=> b!7477215 (= res!2999820 (matchRSpec!4281 (regOne!39717 r1!5845) (_1!37630 lt!2627291)))))

(assert (=> b!7477215 (=> res!2999820 e!4460420)))

(declare-fun b!7477216 () Bool)

(assert (=> b!7477216 (= e!4460420 (matchRSpec!4281 (regTwo!39717 r1!5845) (_1!37630 lt!2627291)))))

(declare-fun bm!686473 () Bool)

(declare-fun call!686478 () Bool)

(assert (=> bm!686473 (= call!686478 (Exists!4221 (ite c!1381261 lambda!463253 lambda!463254)))))

(declare-fun d!2299657 () Bool)

(declare-fun c!1381263 () Bool)

(assert (=> d!2299657 (= c!1381263 (is-EmptyExpr!19602 r1!5845))))

(assert (=> d!2299657 (= (matchRSpec!4281 r1!5845 (_1!37630 lt!2627291)) e!4460419)))

(assert (=> b!7477209 (= e!4460423 call!686478)))

(assert (=> b!7477217 (= e!4460424 call!686478)))

(declare-fun b!7477218 () Bool)

(assert (=> b!7477218 (= e!4460418 (= (_1!37630 lt!2627291) (Cons!72194 (c!1381147 r1!5845) Nil!72194)))))

(declare-fun bm!686474 () Bool)

(assert (=> bm!686474 (= call!686479 (isEmpty!41196 (_1!37630 lt!2627291)))))

(declare-fun b!7477219 () Bool)

(declare-fun c!1381264 () Bool)

(assert (=> b!7477219 (= c!1381264 (is-ElementMatch!19602 r1!5845))))

(assert (=> b!7477219 (= e!4460422 e!4460418)))

(assert (= (and d!2299657 c!1381263) b!7477213))

(assert (= (and d!2299657 (not c!1381263)) b!7477211))

(assert (= (and b!7477211 res!2999822) b!7477219))

(assert (= (and b!7477219 c!1381264) b!7477218))

(assert (= (and b!7477219 (not c!1381264)) b!7477212))

(assert (= (and b!7477212 c!1381262) b!7477215))

(assert (= (and b!7477212 (not c!1381262)) b!7477214))

(assert (= (and b!7477215 (not res!2999820)) b!7477216))

(assert (= (and b!7477214 c!1381261) b!7477210))

(assert (= (and b!7477214 (not c!1381261)) b!7477217))

(assert (= (and b!7477210 (not res!2999821)) b!7477209))

(assert (= (or b!7477209 b!7477217) bm!686473))

(assert (= (or b!7477213 b!7477210) bm!686474))

(declare-fun m!8071262 () Bool)

(assert (=> b!7477215 m!8071262))

(declare-fun m!8071264 () Bool)

(assert (=> b!7477216 m!8071264))

(declare-fun m!8071266 () Bool)

(assert (=> bm!686473 m!8071266))

(assert (=> bm!686474 m!8071050))

(assert (=> b!7476686 d!2299657))

(declare-fun b!7477220 () Bool)

(declare-fun e!4460428 () Bool)

(declare-fun e!4460430 () Bool)

(assert (=> b!7477220 (= e!4460428 e!4460430)))

(declare-fun res!2999824 () Bool)

(assert (=> b!7477220 (=> (not res!2999824) (not e!4460430))))

(declare-fun lt!2627414 () Bool)

(assert (=> b!7477220 (= res!2999824 (not lt!2627414))))

(declare-fun b!7477221 () Bool)

(declare-fun res!2999829 () Bool)

(assert (=> b!7477221 (=> res!2999829 e!4460428)))

(declare-fun e!4460427 () Bool)

(assert (=> b!7477221 (= res!2999829 e!4460427)))

(declare-fun res!2999830 () Bool)

(assert (=> b!7477221 (=> (not res!2999830) (not e!4460427))))

(assert (=> b!7477221 (= res!2999830 lt!2627414)))

(declare-fun b!7477223 () Bool)

(declare-fun res!2999826 () Bool)

(assert (=> b!7477223 (=> res!2999826 e!4460428)))

(assert (=> b!7477223 (= res!2999826 (not (is-ElementMatch!19602 r1!5845)))))

(declare-fun e!4460431 () Bool)

(assert (=> b!7477223 (= e!4460431 e!4460428)))

(declare-fun b!7477224 () Bool)

(declare-fun res!2999825 () Bool)

(assert (=> b!7477224 (=> (not res!2999825) (not e!4460427))))

(declare-fun call!686480 () Bool)

(assert (=> b!7477224 (= res!2999825 (not call!686480))))

(declare-fun b!7477225 () Bool)

(declare-fun e!4460425 () Bool)

(assert (=> b!7477225 (= e!4460425 (not (= (head!15339 (_1!37630 lt!2627291)) (c!1381147 r1!5845))))))

(declare-fun bm!686475 () Bool)

(assert (=> bm!686475 (= call!686480 (isEmpty!41196 (_1!37630 lt!2627291)))))

(declare-fun b!7477226 () Bool)

(declare-fun e!4460429 () Bool)

(assert (=> b!7477226 (= e!4460429 e!4460431)))

(declare-fun c!1381267 () Bool)

(assert (=> b!7477226 (= c!1381267 (is-EmptyLang!19602 r1!5845))))

(declare-fun b!7477227 () Bool)

(assert (=> b!7477227 (= e!4460427 (= (head!15339 (_1!37630 lt!2627291)) (c!1381147 r1!5845)))))

(declare-fun d!2299663 () Bool)

(assert (=> d!2299663 e!4460429))

(declare-fun c!1381266 () Bool)

(assert (=> d!2299663 (= c!1381266 (is-EmptyExpr!19602 r1!5845))))

(declare-fun e!4460426 () Bool)

(assert (=> d!2299663 (= lt!2627414 e!4460426)))

(declare-fun c!1381265 () Bool)

(assert (=> d!2299663 (= c!1381265 (isEmpty!41196 (_1!37630 lt!2627291)))))

(assert (=> d!2299663 (validRegex!10116 r1!5845)))

(assert (=> d!2299663 (= (matchR!9366 r1!5845 (_1!37630 lt!2627291)) lt!2627414)))

(declare-fun b!7477222 () Bool)

(assert (=> b!7477222 (= e!4460426 (matchR!9366 (derivativeStep!5599 r1!5845 (head!15339 (_1!37630 lt!2627291))) (tail!14908 (_1!37630 lt!2627291))))))

(declare-fun b!7477228 () Bool)

(assert (=> b!7477228 (= e!4460429 (= lt!2627414 call!686480))))

(declare-fun b!7477229 () Bool)

(assert (=> b!7477229 (= e!4460431 (not lt!2627414))))

(declare-fun b!7477230 () Bool)

(declare-fun res!2999828 () Bool)

(assert (=> b!7477230 (=> (not res!2999828) (not e!4460427))))

(assert (=> b!7477230 (= res!2999828 (isEmpty!41196 (tail!14908 (_1!37630 lt!2627291))))))

(declare-fun b!7477231 () Bool)

(assert (=> b!7477231 (= e!4460430 e!4460425)))

(declare-fun res!2999823 () Bool)

(assert (=> b!7477231 (=> res!2999823 e!4460425)))

(assert (=> b!7477231 (= res!2999823 call!686480)))

(declare-fun b!7477232 () Bool)

(declare-fun res!2999827 () Bool)

(assert (=> b!7477232 (=> res!2999827 e!4460425)))

(assert (=> b!7477232 (= res!2999827 (not (isEmpty!41196 (tail!14908 (_1!37630 lt!2627291)))))))

(declare-fun b!7477233 () Bool)

(assert (=> b!7477233 (= e!4460426 (nullable!8540 r1!5845))))

(assert (= (and d!2299663 c!1381265) b!7477233))

(assert (= (and d!2299663 (not c!1381265)) b!7477222))

(assert (= (and d!2299663 c!1381266) b!7477228))

(assert (= (and d!2299663 (not c!1381266)) b!7477226))

(assert (= (and b!7477226 c!1381267) b!7477229))

(assert (= (and b!7477226 (not c!1381267)) b!7477223))

(assert (= (and b!7477223 (not res!2999826)) b!7477221))

(assert (= (and b!7477221 res!2999830) b!7477224))

(assert (= (and b!7477224 res!2999825) b!7477230))

(assert (= (and b!7477230 res!2999828) b!7477227))

(assert (= (and b!7477221 (not res!2999829)) b!7477220))

(assert (= (and b!7477220 res!2999824) b!7477231))

(assert (= (and b!7477231 (not res!2999823)) b!7477232))

(assert (= (and b!7477232 (not res!2999827)) b!7477225))

(assert (= (or b!7477228 b!7477224 b!7477231) bm!686475))

(declare-fun m!8071268 () Bool)

(assert (=> b!7477233 m!8071268))

(assert (=> d!2299663 m!8071050))

(assert (=> d!2299663 m!8070946))

(assert (=> b!7477230 m!8071052))

(assert (=> b!7477230 m!8071052))

(assert (=> b!7477230 m!8071054))

(assert (=> b!7477225 m!8071056))

(assert (=> b!7477232 m!8071052))

(assert (=> b!7477232 m!8071052))

(assert (=> b!7477232 m!8071054))

(assert (=> b!7477222 m!8071056))

(assert (=> b!7477222 m!8071056))

(declare-fun m!8071270 () Bool)

(assert (=> b!7477222 m!8071270))

(assert (=> b!7477222 m!8071052))

(assert (=> b!7477222 m!8071270))

(assert (=> b!7477222 m!8071052))

(declare-fun m!8071272 () Bool)

(assert (=> b!7477222 m!8071272))

(assert (=> b!7477227 m!8071056))

(assert (=> bm!686475 m!8071050))

(assert (=> b!7476686 d!2299663))

(declare-fun d!2299665 () Bool)

(assert (=> d!2299665 (= (matchR!9366 r1!5845 (_1!37630 lt!2627291)) (matchRSpec!4281 r1!5845 (_1!37630 lt!2627291)))))

(declare-fun lt!2627415 () Unit!166039)

(assert (=> d!2299665 (= lt!2627415 (choose!57797 r1!5845 (_1!37630 lt!2627291)))))

(assert (=> d!2299665 (validRegex!10116 r1!5845)))

(assert (=> d!2299665 (= (mainMatchTheorem!4275 r1!5845 (_1!37630 lt!2627291)) lt!2627415)))

(declare-fun bs!1932297 () Bool)

(assert (= bs!1932297 d!2299665))

(assert (=> bs!1932297 m!8070918))

(assert (=> bs!1932297 m!8070916))

(declare-fun m!8071274 () Bool)

(assert (=> bs!1932297 m!8071274))

(assert (=> bs!1932297 m!8070946))

(assert (=> b!7476686 d!2299665))

(declare-fun b!7477246 () Bool)

(declare-fun e!4460443 () Bool)

(declare-fun e!4460445 () Bool)

(assert (=> b!7477246 (= e!4460443 e!4460445)))

(declare-fun res!2999836 () Bool)

(assert (=> b!7477246 (=> (not res!2999836) (not e!4460445))))

(declare-fun lt!2627416 () Bool)

(assert (=> b!7477246 (= res!2999836 (not lt!2627416))))

(declare-fun b!7477247 () Bool)

(declare-fun res!2999841 () Bool)

(assert (=> b!7477247 (=> res!2999841 e!4460443)))

(declare-fun e!4460442 () Bool)

(assert (=> b!7477247 (= res!2999841 e!4460442)))

(declare-fun res!2999842 () Bool)

(assert (=> b!7477247 (=> (not res!2999842) (not e!4460442))))

(assert (=> b!7477247 (= res!2999842 lt!2627416)))

(declare-fun b!7477249 () Bool)

(declare-fun res!2999838 () Bool)

(assert (=> b!7477249 (=> res!2999838 e!4460443)))

(assert (=> b!7477249 (= res!2999838 (not (is-ElementMatch!19602 rTail!78)))))

(declare-fun e!4460446 () Bool)

(assert (=> b!7477249 (= e!4460446 e!4460443)))

(declare-fun b!7477250 () Bool)

(declare-fun res!2999837 () Bool)

(assert (=> b!7477250 (=> (not res!2999837) (not e!4460442))))

(declare-fun call!686481 () Bool)

(assert (=> b!7477250 (= res!2999837 (not call!686481))))

(declare-fun b!7477251 () Bool)

(declare-fun e!4460440 () Bool)

(assert (=> b!7477251 (= e!4460440 (not (= (head!15339 (_2!37630 lt!2627291)) (c!1381147 rTail!78))))))

(declare-fun bm!686476 () Bool)

(assert (=> bm!686476 (= call!686481 (isEmpty!41196 (_2!37630 lt!2627291)))))

(declare-fun b!7477252 () Bool)

(declare-fun e!4460444 () Bool)

(assert (=> b!7477252 (= e!4460444 e!4460446)))

(declare-fun c!1381274 () Bool)

(assert (=> b!7477252 (= c!1381274 (is-EmptyLang!19602 rTail!78))))

(declare-fun b!7477253 () Bool)

(assert (=> b!7477253 (= e!4460442 (= (head!15339 (_2!37630 lt!2627291)) (c!1381147 rTail!78)))))

(declare-fun d!2299667 () Bool)

(assert (=> d!2299667 e!4460444))

(declare-fun c!1381273 () Bool)

(assert (=> d!2299667 (= c!1381273 (is-EmptyExpr!19602 rTail!78))))

(declare-fun e!4460441 () Bool)

(assert (=> d!2299667 (= lt!2627416 e!4460441)))

(declare-fun c!1381272 () Bool)

(assert (=> d!2299667 (= c!1381272 (isEmpty!41196 (_2!37630 lt!2627291)))))

(assert (=> d!2299667 (validRegex!10116 rTail!78)))

(assert (=> d!2299667 (= (matchR!9366 rTail!78 (_2!37630 lt!2627291)) lt!2627416)))

(declare-fun b!7477248 () Bool)

(assert (=> b!7477248 (= e!4460441 (matchR!9366 (derivativeStep!5599 rTail!78 (head!15339 (_2!37630 lt!2627291))) (tail!14908 (_2!37630 lt!2627291))))))

(declare-fun b!7477254 () Bool)

(assert (=> b!7477254 (= e!4460444 (= lt!2627416 call!686481))))

(declare-fun b!7477255 () Bool)

(assert (=> b!7477255 (= e!4460446 (not lt!2627416))))

(declare-fun b!7477256 () Bool)

(declare-fun res!2999840 () Bool)

(assert (=> b!7477256 (=> (not res!2999840) (not e!4460442))))

(assert (=> b!7477256 (= res!2999840 (isEmpty!41196 (tail!14908 (_2!37630 lt!2627291))))))

(declare-fun b!7477257 () Bool)

(assert (=> b!7477257 (= e!4460445 e!4460440)))

(declare-fun res!2999835 () Bool)

(assert (=> b!7477257 (=> res!2999835 e!4460440)))

(assert (=> b!7477257 (= res!2999835 call!686481)))

(declare-fun b!7477258 () Bool)

(declare-fun res!2999839 () Bool)

(assert (=> b!7477258 (=> res!2999839 e!4460440)))

(assert (=> b!7477258 (= res!2999839 (not (isEmpty!41196 (tail!14908 (_2!37630 lt!2627291)))))))

(declare-fun b!7477259 () Bool)

(assert (=> b!7477259 (= e!4460441 (nullable!8540 rTail!78))))

(assert (= (and d!2299667 c!1381272) b!7477259))

(assert (= (and d!2299667 (not c!1381272)) b!7477248))

(assert (= (and d!2299667 c!1381273) b!7477254))

(assert (= (and d!2299667 (not c!1381273)) b!7477252))

(assert (= (and b!7477252 c!1381274) b!7477255))

(assert (= (and b!7477252 (not c!1381274)) b!7477249))

(assert (= (and b!7477249 (not res!2999838)) b!7477247))

(assert (= (and b!7477247 res!2999842) b!7477250))

(assert (= (and b!7477250 res!2999837) b!7477256))

(assert (= (and b!7477256 res!2999840) b!7477253))

(assert (= (and b!7477247 (not res!2999841)) b!7477246))

(assert (= (and b!7477246 res!2999836) b!7477257))

(assert (= (and b!7477257 (not res!2999835)) b!7477258))

(assert (= (and b!7477258 (not res!2999839)) b!7477251))

(assert (= (or b!7477254 b!7477250 b!7477257) bm!686476))

(declare-fun m!8071276 () Bool)

(assert (=> b!7477259 m!8071276))

(assert (=> d!2299667 m!8071250))

(assert (=> d!2299667 m!8070906))

(declare-fun m!8071278 () Bool)

(assert (=> b!7477256 m!8071278))

(assert (=> b!7477256 m!8071278))

(declare-fun m!8071280 () Bool)

(assert (=> b!7477256 m!8071280))

(declare-fun m!8071282 () Bool)

(assert (=> b!7477251 m!8071282))

(assert (=> b!7477258 m!8071278))

(assert (=> b!7477258 m!8071278))

(assert (=> b!7477258 m!8071280))

(assert (=> b!7477248 m!8071282))

(assert (=> b!7477248 m!8071282))

(declare-fun m!8071284 () Bool)

(assert (=> b!7477248 m!8071284))

(assert (=> b!7477248 m!8071278))

(assert (=> b!7477248 m!8071284))

(assert (=> b!7477248 m!8071278))

(declare-fun m!8071286 () Bool)

(assert (=> b!7477248 m!8071286))

(assert (=> b!7477253 m!8071282))

(assert (=> bm!686476 m!8071250))

(assert (=> b!7476681 d!2299667))

(declare-fun b!7477276 () Bool)

(declare-fun e!4460455 () Bool)

(assert (=> b!7477276 (= e!4460455 tp_is_empty!49493)))

(declare-fun b!7477279 () Bool)

(declare-fun tp!2168502 () Bool)

(declare-fun tp!2168506 () Bool)

(assert (=> b!7477279 (= e!4460455 (and tp!2168502 tp!2168506))))

(declare-fun b!7477278 () Bool)

(declare-fun tp!2168505 () Bool)

(assert (=> b!7477278 (= e!4460455 tp!2168505)))

(assert (=> b!7476682 (= tp!2168432 e!4460455)))

(declare-fun b!7477277 () Bool)

(declare-fun tp!2168504 () Bool)

(declare-fun tp!2168503 () Bool)

(assert (=> b!7477277 (= e!4460455 (and tp!2168504 tp!2168503))))

(assert (= (and b!7476682 (is-ElementMatch!19602 (regOne!39716 r2!5783))) b!7477276))

(assert (= (and b!7476682 (is-Concat!28447 (regOne!39716 r2!5783))) b!7477277))

(assert (= (and b!7476682 (is-Star!19602 (regOne!39716 r2!5783))) b!7477278))

(assert (= (and b!7476682 (is-Union!19602 (regOne!39716 r2!5783))) b!7477279))

(declare-fun b!7477280 () Bool)

(declare-fun e!4460456 () Bool)

(assert (=> b!7477280 (= e!4460456 tp_is_empty!49493)))

(declare-fun b!7477283 () Bool)

(declare-fun tp!2168507 () Bool)

(declare-fun tp!2168511 () Bool)

(assert (=> b!7477283 (= e!4460456 (and tp!2168507 tp!2168511))))

(declare-fun b!7477282 () Bool)

(declare-fun tp!2168510 () Bool)

(assert (=> b!7477282 (= e!4460456 tp!2168510)))

(assert (=> b!7476682 (= tp!2168433 e!4460456)))

(declare-fun b!7477281 () Bool)

(declare-fun tp!2168509 () Bool)

(declare-fun tp!2168508 () Bool)

(assert (=> b!7477281 (= e!4460456 (and tp!2168509 tp!2168508))))

(assert (= (and b!7476682 (is-ElementMatch!19602 (regTwo!39716 r2!5783))) b!7477280))

(assert (= (and b!7476682 (is-Concat!28447 (regTwo!39716 r2!5783))) b!7477281))

(assert (= (and b!7476682 (is-Star!19602 (regTwo!39716 r2!5783))) b!7477282))

(assert (= (and b!7476682 (is-Union!19602 (regTwo!39716 r2!5783))) b!7477283))

(declare-fun b!7477284 () Bool)

(declare-fun e!4460457 () Bool)

(assert (=> b!7477284 (= e!4460457 tp_is_empty!49493)))

(declare-fun b!7477287 () Bool)

(declare-fun tp!2168512 () Bool)

(declare-fun tp!2168516 () Bool)

(assert (=> b!7477287 (= e!4460457 (and tp!2168512 tp!2168516))))

(declare-fun b!7477286 () Bool)

(declare-fun tp!2168515 () Bool)

(assert (=> b!7477286 (= e!4460457 tp!2168515)))

(assert (=> b!7476688 (= tp!2168434 e!4460457)))

(declare-fun b!7477285 () Bool)

(declare-fun tp!2168514 () Bool)

(declare-fun tp!2168513 () Bool)

(assert (=> b!7477285 (= e!4460457 (and tp!2168514 tp!2168513))))

(assert (= (and b!7476688 (is-ElementMatch!19602 (reg!19931 r2!5783))) b!7477284))

(assert (= (and b!7476688 (is-Concat!28447 (reg!19931 r2!5783))) b!7477285))

(assert (= (and b!7476688 (is-Star!19602 (reg!19931 r2!5783))) b!7477286))

(assert (= (and b!7476688 (is-Union!19602 (reg!19931 r2!5783))) b!7477287))

(declare-fun b!7477292 () Bool)

(declare-fun e!4460460 () Bool)

(declare-fun tp!2168519 () Bool)

(assert (=> b!7477292 (= e!4460460 (and tp_is_empty!49493 tp!2168519))))

(assert (=> b!7476678 (= tp!2168437 e!4460460)))

(assert (= (and b!7476678 (is-Cons!72194 (t!386887 s!13591))) b!7477292))

(declare-fun b!7477293 () Bool)

(declare-fun e!4460461 () Bool)

(assert (=> b!7477293 (= e!4460461 tp_is_empty!49493)))

(declare-fun b!7477296 () Bool)

(declare-fun tp!2168520 () Bool)

(declare-fun tp!2168524 () Bool)

(assert (=> b!7477296 (= e!4460461 (and tp!2168520 tp!2168524))))

(declare-fun b!7477295 () Bool)

(declare-fun tp!2168523 () Bool)

(assert (=> b!7477295 (= e!4460461 tp!2168523)))

(assert (=> b!7476689 (= tp!2168430 e!4460461)))

(declare-fun b!7477294 () Bool)

(declare-fun tp!2168522 () Bool)

(declare-fun tp!2168521 () Bool)

(assert (=> b!7477294 (= e!4460461 (and tp!2168522 tp!2168521))))

(assert (= (and b!7476689 (is-ElementMatch!19602 (reg!19931 r1!5845))) b!7477293))

(assert (= (and b!7476689 (is-Concat!28447 (reg!19931 r1!5845))) b!7477294))

(assert (= (and b!7476689 (is-Star!19602 (reg!19931 r1!5845))) b!7477295))

(assert (= (and b!7476689 (is-Union!19602 (reg!19931 r1!5845))) b!7477296))

(declare-fun b!7477297 () Bool)

(declare-fun e!4460462 () Bool)

(assert (=> b!7477297 (= e!4460462 tp_is_empty!49493)))

(declare-fun b!7477300 () Bool)

(declare-fun tp!2168525 () Bool)

(declare-fun tp!2168529 () Bool)

(assert (=> b!7477300 (= e!4460462 (and tp!2168525 tp!2168529))))

(declare-fun b!7477299 () Bool)

(declare-fun tp!2168528 () Bool)

(assert (=> b!7477299 (= e!4460462 tp!2168528)))

(assert (=> b!7476684 (= tp!2168443 e!4460462)))

(declare-fun b!7477298 () Bool)

(declare-fun tp!2168527 () Bool)

(declare-fun tp!2168526 () Bool)

(assert (=> b!7477298 (= e!4460462 (and tp!2168527 tp!2168526))))

(assert (= (and b!7476684 (is-ElementMatch!19602 (regOne!39717 r2!5783))) b!7477297))

(assert (= (and b!7476684 (is-Concat!28447 (regOne!39717 r2!5783))) b!7477298))

(assert (= (and b!7476684 (is-Star!19602 (regOne!39717 r2!5783))) b!7477299))

(assert (= (and b!7476684 (is-Union!19602 (regOne!39717 r2!5783))) b!7477300))

(declare-fun b!7477301 () Bool)

(declare-fun e!4460463 () Bool)

(assert (=> b!7477301 (= e!4460463 tp_is_empty!49493)))

(declare-fun b!7477304 () Bool)

(declare-fun tp!2168530 () Bool)

(declare-fun tp!2168534 () Bool)

(assert (=> b!7477304 (= e!4460463 (and tp!2168530 tp!2168534))))

(declare-fun b!7477303 () Bool)

(declare-fun tp!2168533 () Bool)

(assert (=> b!7477303 (= e!4460463 tp!2168533)))

(assert (=> b!7476684 (= tp!2168440 e!4460463)))

(declare-fun b!7477302 () Bool)

(declare-fun tp!2168532 () Bool)

(declare-fun tp!2168531 () Bool)

(assert (=> b!7477302 (= e!4460463 (and tp!2168532 tp!2168531))))

(assert (= (and b!7476684 (is-ElementMatch!19602 (regTwo!39717 r2!5783))) b!7477301))

(assert (= (and b!7476684 (is-Concat!28447 (regTwo!39717 r2!5783))) b!7477302))

(assert (= (and b!7476684 (is-Star!19602 (regTwo!39717 r2!5783))) b!7477303))

(assert (= (and b!7476684 (is-Union!19602 (regTwo!39717 r2!5783))) b!7477304))

(declare-fun b!7477305 () Bool)

(declare-fun e!4460464 () Bool)

(assert (=> b!7477305 (= e!4460464 tp_is_empty!49493)))

(declare-fun b!7477308 () Bool)

(declare-fun tp!2168535 () Bool)

(declare-fun tp!2168539 () Bool)

(assert (=> b!7477308 (= e!4460464 (and tp!2168535 tp!2168539))))

(declare-fun b!7477307 () Bool)

(declare-fun tp!2168538 () Bool)

(assert (=> b!7477307 (= e!4460464 tp!2168538)))

(assert (=> b!7476690 (= tp!2168439 e!4460464)))

(declare-fun b!7477306 () Bool)

(declare-fun tp!2168537 () Bool)

(declare-fun tp!2168536 () Bool)

(assert (=> b!7477306 (= e!4460464 (and tp!2168537 tp!2168536))))

(assert (= (and b!7476690 (is-ElementMatch!19602 (regOne!39717 r1!5845))) b!7477305))

(assert (= (and b!7476690 (is-Concat!28447 (regOne!39717 r1!5845))) b!7477306))

(assert (= (and b!7476690 (is-Star!19602 (regOne!39717 r1!5845))) b!7477307))

(assert (= (and b!7476690 (is-Union!19602 (regOne!39717 r1!5845))) b!7477308))

(declare-fun b!7477309 () Bool)

(declare-fun e!4460465 () Bool)

(assert (=> b!7477309 (= e!4460465 tp_is_empty!49493)))

(declare-fun b!7477312 () Bool)

(declare-fun tp!2168540 () Bool)

(declare-fun tp!2168544 () Bool)

(assert (=> b!7477312 (= e!4460465 (and tp!2168540 tp!2168544))))

(declare-fun b!7477311 () Bool)

(declare-fun tp!2168543 () Bool)

(assert (=> b!7477311 (= e!4460465 tp!2168543)))

(assert (=> b!7476690 (= tp!2168441 e!4460465)))

(declare-fun b!7477310 () Bool)

(declare-fun tp!2168542 () Bool)

(declare-fun tp!2168541 () Bool)

(assert (=> b!7477310 (= e!4460465 (and tp!2168542 tp!2168541))))

(assert (= (and b!7476690 (is-ElementMatch!19602 (regTwo!39717 r1!5845))) b!7477309))

(assert (= (and b!7476690 (is-Concat!28447 (regTwo!39717 r1!5845))) b!7477310))

(assert (= (and b!7476690 (is-Star!19602 (regTwo!39717 r1!5845))) b!7477311))

(assert (= (and b!7476690 (is-Union!19602 (regTwo!39717 r1!5845))) b!7477312))

(declare-fun b!7477313 () Bool)

(declare-fun e!4460466 () Bool)

(assert (=> b!7477313 (= e!4460466 tp_is_empty!49493)))

(declare-fun b!7477316 () Bool)

(declare-fun tp!2168545 () Bool)

(declare-fun tp!2168549 () Bool)

(assert (=> b!7477316 (= e!4460466 (and tp!2168545 tp!2168549))))

(declare-fun b!7477315 () Bool)

(declare-fun tp!2168548 () Bool)

(assert (=> b!7477315 (= e!4460466 tp!2168548)))

(assert (=> b!7476674 (= tp!2168438 e!4460466)))

(declare-fun b!7477314 () Bool)

(declare-fun tp!2168547 () Bool)

(declare-fun tp!2168546 () Bool)

(assert (=> b!7477314 (= e!4460466 (and tp!2168547 tp!2168546))))

(assert (= (and b!7476674 (is-ElementMatch!19602 (regOne!39716 rTail!78))) b!7477313))

(assert (= (and b!7476674 (is-Concat!28447 (regOne!39716 rTail!78))) b!7477314))

(assert (= (and b!7476674 (is-Star!19602 (regOne!39716 rTail!78))) b!7477315))

(assert (= (and b!7476674 (is-Union!19602 (regOne!39716 rTail!78))) b!7477316))

(declare-fun b!7477317 () Bool)

(declare-fun e!4460467 () Bool)

(assert (=> b!7477317 (= e!4460467 tp_is_empty!49493)))

(declare-fun b!7477320 () Bool)

(declare-fun tp!2168550 () Bool)

(declare-fun tp!2168554 () Bool)

(assert (=> b!7477320 (= e!4460467 (and tp!2168550 tp!2168554))))

(declare-fun b!7477319 () Bool)

(declare-fun tp!2168553 () Bool)

(assert (=> b!7477319 (= e!4460467 tp!2168553)))

(assert (=> b!7476674 (= tp!2168436 e!4460467)))

(declare-fun b!7477318 () Bool)

(declare-fun tp!2168552 () Bool)

(declare-fun tp!2168551 () Bool)

(assert (=> b!7477318 (= e!4460467 (and tp!2168552 tp!2168551))))

(assert (= (and b!7476674 (is-ElementMatch!19602 (regTwo!39716 rTail!78))) b!7477317))

(assert (= (and b!7476674 (is-Concat!28447 (regTwo!39716 rTail!78))) b!7477318))

(assert (= (and b!7476674 (is-Star!19602 (regTwo!39716 rTail!78))) b!7477319))

(assert (= (and b!7476674 (is-Union!19602 (regTwo!39716 rTail!78))) b!7477320))

(declare-fun b!7477321 () Bool)

(declare-fun e!4460468 () Bool)

(assert (=> b!7477321 (= e!4460468 tp_is_empty!49493)))

(declare-fun b!7477324 () Bool)

(declare-fun tp!2168555 () Bool)

(declare-fun tp!2168559 () Bool)

(assert (=> b!7477324 (= e!4460468 (and tp!2168555 tp!2168559))))

(declare-fun b!7477323 () Bool)

(declare-fun tp!2168558 () Bool)

(assert (=> b!7477323 (= e!4460468 tp!2168558)))

(assert (=> b!7476685 (= tp!2168431 e!4460468)))

(declare-fun b!7477322 () Bool)

(declare-fun tp!2168557 () Bool)

(declare-fun tp!2168556 () Bool)

(assert (=> b!7477322 (= e!4460468 (and tp!2168557 tp!2168556))))

(assert (= (and b!7476685 (is-ElementMatch!19602 (regOne!39716 r1!5845))) b!7477321))

(assert (= (and b!7476685 (is-Concat!28447 (regOne!39716 r1!5845))) b!7477322))

(assert (= (and b!7476685 (is-Star!19602 (regOne!39716 r1!5845))) b!7477323))

(assert (= (and b!7476685 (is-Union!19602 (regOne!39716 r1!5845))) b!7477324))

(declare-fun b!7477325 () Bool)

(declare-fun e!4460469 () Bool)

(assert (=> b!7477325 (= e!4460469 tp_is_empty!49493)))

(declare-fun b!7477328 () Bool)

(declare-fun tp!2168560 () Bool)

(declare-fun tp!2168564 () Bool)

(assert (=> b!7477328 (= e!4460469 (and tp!2168560 tp!2168564))))

(declare-fun b!7477327 () Bool)

(declare-fun tp!2168563 () Bool)

(assert (=> b!7477327 (= e!4460469 tp!2168563)))

(assert (=> b!7476685 (= tp!2168429 e!4460469)))

(declare-fun b!7477326 () Bool)

(declare-fun tp!2168562 () Bool)

(declare-fun tp!2168561 () Bool)

(assert (=> b!7477326 (= e!4460469 (and tp!2168562 tp!2168561))))

(assert (= (and b!7476685 (is-ElementMatch!19602 (regTwo!39716 r1!5845))) b!7477325))

(assert (= (and b!7476685 (is-Concat!28447 (regTwo!39716 r1!5845))) b!7477326))

(assert (= (and b!7476685 (is-Star!19602 (regTwo!39716 r1!5845))) b!7477327))

(assert (= (and b!7476685 (is-Union!19602 (regTwo!39716 r1!5845))) b!7477328))

(declare-fun b!7477329 () Bool)

(declare-fun e!4460470 () Bool)

(assert (=> b!7477329 (= e!4460470 tp_is_empty!49493)))

(declare-fun b!7477332 () Bool)

(declare-fun tp!2168565 () Bool)

(declare-fun tp!2168569 () Bool)

(assert (=> b!7477332 (= e!4460470 (and tp!2168565 tp!2168569))))

(declare-fun b!7477331 () Bool)

(declare-fun tp!2168568 () Bool)

(assert (=> b!7477331 (= e!4460470 tp!2168568)))

(assert (=> b!7476675 (= tp!2168435 e!4460470)))

(declare-fun b!7477330 () Bool)

(declare-fun tp!2168567 () Bool)

(declare-fun tp!2168566 () Bool)

(assert (=> b!7477330 (= e!4460470 (and tp!2168567 tp!2168566))))

(assert (= (and b!7476675 (is-ElementMatch!19602 (regOne!39717 rTail!78))) b!7477329))

(assert (= (and b!7476675 (is-Concat!28447 (regOne!39717 rTail!78))) b!7477330))

(assert (= (and b!7476675 (is-Star!19602 (regOne!39717 rTail!78))) b!7477331))

(assert (= (and b!7476675 (is-Union!19602 (regOne!39717 rTail!78))) b!7477332))

(declare-fun b!7477333 () Bool)

(declare-fun e!4460471 () Bool)

(assert (=> b!7477333 (= e!4460471 tp_is_empty!49493)))

(declare-fun b!7477336 () Bool)

(declare-fun tp!2168570 () Bool)

(declare-fun tp!2168574 () Bool)

(assert (=> b!7477336 (= e!4460471 (and tp!2168570 tp!2168574))))

(declare-fun b!7477335 () Bool)

(declare-fun tp!2168573 () Bool)

(assert (=> b!7477335 (= e!4460471 tp!2168573)))

(assert (=> b!7476675 (= tp!2168428 e!4460471)))

(declare-fun b!7477334 () Bool)

(declare-fun tp!2168572 () Bool)

(declare-fun tp!2168571 () Bool)

(assert (=> b!7477334 (= e!4460471 (and tp!2168572 tp!2168571))))

(assert (= (and b!7476675 (is-ElementMatch!19602 (regTwo!39717 rTail!78))) b!7477333))

(assert (= (and b!7476675 (is-Concat!28447 (regTwo!39717 rTail!78))) b!7477334))

(assert (= (and b!7476675 (is-Star!19602 (regTwo!39717 rTail!78))) b!7477335))

(assert (= (and b!7476675 (is-Union!19602 (regTwo!39717 rTail!78))) b!7477336))

(declare-fun b!7477337 () Bool)

(declare-fun e!4460472 () Bool)

(assert (=> b!7477337 (= e!4460472 tp_is_empty!49493)))

(declare-fun b!7477340 () Bool)

(declare-fun tp!2168575 () Bool)

(declare-fun tp!2168579 () Bool)

(assert (=> b!7477340 (= e!4460472 (and tp!2168575 tp!2168579))))

(declare-fun b!7477339 () Bool)

(declare-fun tp!2168578 () Bool)

(assert (=> b!7477339 (= e!4460472 tp!2168578)))

(assert (=> b!7476687 (= tp!2168442 e!4460472)))

(declare-fun b!7477338 () Bool)

(declare-fun tp!2168577 () Bool)

(declare-fun tp!2168576 () Bool)

(assert (=> b!7477338 (= e!4460472 (and tp!2168577 tp!2168576))))

(assert (= (and b!7476687 (is-ElementMatch!19602 (reg!19931 rTail!78))) b!7477337))

(assert (= (and b!7476687 (is-Concat!28447 (reg!19931 rTail!78))) b!7477338))

(assert (= (and b!7476687 (is-Star!19602 (reg!19931 rTail!78))) b!7477339))

(assert (= (and b!7476687 (is-Union!19602 (reg!19931 rTail!78))) b!7477340))

(push 1)

(assert (not b!7477077))

(assert (not d!2299589))

(assert (not b!7477335))

(assert (not b!7477036))

(assert (not b!7477248))

(assert (not bm!686445))

(assert (not bm!686476))

(assert (not d!2299625))

(assert (not bm!686473))

(assert (not b!7477075))

(assert (not b!7477136))

(assert (not d!2299609))

(assert (not b!7477328))

(assert (not d!2299593))

(assert (not bm!686431))

(assert (not bm!686454))

(assert (not b!7476934))

(assert (not b!7477283))

(assert (not bm!686455))

(assert (not d!2299611))

(assert (not b!7477070))

(assert (not b!7477307))

(assert (not b!7477306))

(assert (not bm!686453))

(assert (not b!7477121))

(assert (not b!7476878))

(assert (not b!7477258))

(assert (not b!7477039))

(assert (not bm!686461))

(assert (not b!7477334))

(assert (not b!7477194))

(assert (not bm!686466))

(assert (not b!7477025))

(assert (not b!7477169))

(assert (not d!2299613))

(assert (not b!7477063))

(assert (not d!2299615))

(assert (not b!7477216))

(assert (not b!7477304))

(assert (not b!7477133))

(assert (not b!7477256))

(assert (not b!7477227))

(assert (not b!7477316))

(assert (not b!7477279))

(assert (not b!7476881))

(assert (not b!7477322))

(assert (not bm!686446))

(assert (not b!7477308))

(assert (not b!7477072))

(assert (not b!7477033))

(assert (not b!7477058))

(assert (not d!2299581))

(assert (not b!7477038))

(assert (not b!7477047))

(assert (not b!7477323))

(assert (not b!7477339))

(assert (not d!2299623))

(assert (not b!7477056))

(assert tp_is_empty!49493)

(assert (not b!7477330))

(assert (not b!7476925))

(assert (not b!7477299))

(assert (not b!7477122))

(assert (not b!7477024))

(assert (not b!7477259))

(assert (not b!7476883))

(assert (not b!7477318))

(assert (not bm!686434))

(assert (not d!2299583))

(assert (not b!7477017))

(assert (not b!7477296))

(assert (not b!7477338))

(assert (not bm!686467))

(assert (not b!7477324))

(assert (not b!7476852))

(assert (not b!7476853))

(assert (not bm!686462))

(assert (not b!7477303))

(assert (not b!7476842))

(assert (not b!7476979))

(assert (not b!7477253))

(assert (not b!7477168))

(assert (not b!7477294))

(assert (not bm!686435))

(assert (not b!7477295))

(assert (not b!7477014))

(assert (not b!7477282))

(assert (not b!7477139))

(assert (not b!7477315))

(assert (not b!7477215))

(assert (not b!7477278))

(assert (not bm!686449))

(assert (not d!2299639))

(assert (not b!7476850))

(assert (not bm!686451))

(assert (not b!7477285))

(assert (not b!7477287))

(assert (not b!7477086))

(assert (not bm!686438))

(assert (not b!7477312))

(assert (not b!7477147))

(assert (not b!7477300))

(assert (not bm!686463))

(assert (not b!7477128))

(assert (not b!7477046))

(assert (not bm!686432))

(assert (not b!7477286))

(assert (not b!7477225))

(assert (not bm!686475))

(assert (not b!7476880))

(assert (not b!7477193))

(assert (not bm!686470))

(assert (not d!2299635))

(assert (not b!7477327))

(assert (not b!7477085))

(assert (not b!7477022))

(assert (not b!7477292))

(assert (not b!7477310))

(assert (not b!7477302))

(assert (not b!7477332))

(assert (not b!7476847))

(assert (not b!7476845))

(assert (not bm!686418))

(assert (not b!7477281))

(assert (not d!2299587))

(assert (not bm!686450))

(assert (not b!7476882))

(assert (not b!7477067))

(assert (not b!7477314))

(assert (not d!2299585))

(assert (not bm!686452))

(assert (not b!7477053))

(assert (not b!7477320))

(assert (not b!7477061))

(assert (not b!7477028))

(assert (not b!7477311))

(assert (not b!7477336))

(assert (not bm!686437))

(assert (not b!7476884))

(assert (not bm!686444))

(assert (not b!7477233))

(assert (not b!7477078))

(assert (not b!7477064))

(assert (not bm!686460))

(assert (not d!2299595))

(assert (not b!7477331))

(assert (not d!2299665))

(assert (not b!7476980))

(assert (not b!7477019))

(assert (not b!7477232))

(assert (not b!7477222))

(assert (not bm!686469))

(assert (not d!2299619))

(assert (not b!7477298))

(assert (not b!7476916))

(assert (not b!7477138))

(assert (not b!7477277))

(assert (not d!2299651))

(assert (not b!7477146))

(assert (not b!7477230))

(assert (not b!7477326))

(assert (not d!2299663))

(assert (not b!7477131))

(assert (not d!2299621))

(assert (not b!7477340))

(assert (not d!2299637))

(assert (not b!7477319))

(assert (not b!7477251))

(assert (not bm!686474))

(assert (not b!7477031))

(assert (not d!2299667))

(assert (not bm!686459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

