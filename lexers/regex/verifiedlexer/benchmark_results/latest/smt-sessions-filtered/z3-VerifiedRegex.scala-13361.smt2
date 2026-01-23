; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724298 () Bool)

(assert start!724298)

(declare-fun b!7471489 () Bool)

(assert (=> b!7471489 true))

(assert (=> b!7471489 true))

(assert (=> b!7471489 true))

(declare-fun lambda!462773 () Int)

(declare-fun lambda!462772 () Int)

(assert (=> b!7471489 (not (= lambda!462773 lambda!462772))))

(assert (=> b!7471489 true))

(assert (=> b!7471489 true))

(assert (=> b!7471489 true))

(declare-fun bs!1931181 () Bool)

(declare-fun b!7471497 () Bool)

(assert (= bs!1931181 (and b!7471497 b!7471489)))

(declare-datatypes ((C!39444 0))(
  ( (C!39445 (val!30120 Int)) )
))
(declare-datatypes ((Regex!19585 0))(
  ( (ElementMatch!19585 (c!1380436 C!39444)) (Concat!28430 (regOne!39682 Regex!19585) (regTwo!39682 Regex!19585)) (EmptyExpr!19585) (Star!19585 (reg!19914 Regex!19585)) (EmptyLang!19585) (Union!19585 (regOne!39683 Regex!19585) (regTwo!39683 Regex!19585)) )
))
(declare-fun r2!5783 () Regex!19585)

(declare-fun lt!2626140 () Regex!19585)

(declare-fun lambda!462774 () Int)

(assert (=> bs!1931181 (= (= r2!5783 lt!2626140) (= lambda!462774 lambda!462772))))

(assert (=> bs!1931181 (not (= lambda!462774 lambda!462773))))

(assert (=> b!7471497 true))

(assert (=> b!7471497 true))

(assert (=> b!7471497 true))

(declare-fun lambda!462775 () Int)

(assert (=> bs!1931181 (not (= lambda!462775 lambda!462772))))

(assert (=> bs!1931181 (= (= r2!5783 lt!2626140) (= lambda!462775 lambda!462773))))

(assert (=> b!7471497 (not (= lambda!462775 lambda!462774))))

(assert (=> b!7471497 true))

(assert (=> b!7471497 true))

(assert (=> b!7471497 true))

(declare-fun b!7471481 () Bool)

(declare-fun res!2997399 () Bool)

(declare-fun e!4457601 () Bool)

(assert (=> b!7471481 (=> res!2997399 e!4457601)))

(declare-fun rTail!78 () Regex!19585)

(declare-datatypes ((List!72301 0))(
  ( (Nil!72177) (Cons!72177 (h!78625 C!39444) (t!386870 List!72301)) )
))
(declare-datatypes ((tuple2!68620 0))(
  ( (tuple2!68621 (_1!37613 List!72301) (_2!37613 List!72301)) )
))
(declare-fun lt!2626131 () tuple2!68620)

(declare-fun matchR!9349 (Regex!19585 List!72301) Bool)

(assert (=> b!7471481 (= res!2997399 (not (matchR!9349 rTail!78 (_2!37613 lt!2626131))))))

(declare-fun b!7471482 () Bool)

(declare-fun e!4457605 () Bool)

(declare-fun tp!2166560 () Bool)

(declare-fun tp!2166563 () Bool)

(assert (=> b!7471482 (= e!4457605 (and tp!2166560 tp!2166563))))

(declare-fun b!7471484 () Bool)

(declare-fun e!4457603 () Bool)

(declare-fun tp!2166562 () Bool)

(assert (=> b!7471484 (= e!4457603 tp!2166562)))

(declare-fun b!7471485 () Bool)

(declare-fun e!4457600 () Bool)

(declare-fun e!4457606 () Bool)

(assert (=> b!7471485 (= e!4457600 (not e!4457606))))

(declare-fun res!2997398 () Bool)

(assert (=> b!7471485 (=> res!2997398 e!4457606)))

(declare-fun lt!2626126 () Bool)

(assert (=> b!7471485 (= res!2997398 lt!2626126)))

(declare-fun lt!2626137 () Bool)

(declare-fun lt!2626138 () Regex!19585)

(declare-fun s!13591 () List!72301)

(declare-fun matchRSpec!4264 (Regex!19585 List!72301) Bool)

(assert (=> b!7471485 (= lt!2626137 (matchRSpec!4264 lt!2626138 s!13591))))

(assert (=> b!7471485 (= lt!2626137 (matchR!9349 lt!2626138 s!13591))))

(declare-datatypes ((Unit!166005 0))(
  ( (Unit!166006) )
))
(declare-fun lt!2626147 () Unit!166005)

(declare-fun mainMatchTheorem!4258 (Regex!19585 List!72301) Unit!166005)

(assert (=> b!7471485 (= lt!2626147 (mainMatchTheorem!4258 lt!2626138 s!13591))))

(declare-fun lt!2626134 () Regex!19585)

(assert (=> b!7471485 (= lt!2626126 (matchRSpec!4264 lt!2626134 s!13591))))

(assert (=> b!7471485 (= lt!2626126 (matchR!9349 lt!2626134 s!13591))))

(declare-fun lt!2626146 () Unit!166005)

(assert (=> b!7471485 (= lt!2626146 (mainMatchTheorem!4258 lt!2626134 s!13591))))

(declare-fun lt!2626130 () Regex!19585)

(declare-fun lt!2626129 () Regex!19585)

(assert (=> b!7471485 (= lt!2626138 (Union!19585 lt!2626130 lt!2626129))))

(assert (=> b!7471485 (= lt!2626129 (Concat!28430 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19585)

(assert (=> b!7471485 (= lt!2626130 (Concat!28430 r1!5845 rTail!78))))

(assert (=> b!7471485 (= lt!2626134 (Concat!28430 lt!2626140 rTail!78))))

(assert (=> b!7471485 (= lt!2626140 (Union!19585 r1!5845 r2!5783))))

(declare-fun b!7471486 () Bool)

(declare-fun tp_is_empty!49459 () Bool)

(assert (=> b!7471486 (= e!4457605 tp_is_empty!49459)))

(declare-fun b!7471487 () Bool)

(declare-fun e!4457607 () Bool)

(declare-fun tp!2166570 () Bool)

(assert (=> b!7471487 (= e!4457607 (and tp_is_empty!49459 tp!2166570))))

(declare-fun b!7471488 () Bool)

(declare-fun tp!2166557 () Bool)

(assert (=> b!7471488 (= e!4457605 tp!2166557)))

(declare-fun e!4457604 () Bool)

(assert (=> b!7471489 (= e!4457606 e!4457604)))

(declare-fun res!2997395 () Bool)

(assert (=> b!7471489 (=> res!2997395 e!4457604)))

(declare-fun lt!2626136 () Bool)

(assert (=> b!7471489 (= res!2997395 (or lt!2626136 (not lt!2626137)))))

(declare-fun Exists!4204 (Int) Bool)

(assert (=> b!7471489 (= (Exists!4204 lambda!462772) (Exists!4204 lambda!462773))))

(declare-fun lt!2626133 () Unit!166005)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2538 (Regex!19585 Regex!19585 List!72301) Unit!166005)

(assert (=> b!7471489 (= lt!2626133 (lemmaExistCutMatchRandMatchRSpecEquivalent!2538 lt!2626140 rTail!78 s!13591))))

(assert (=> b!7471489 (= lt!2626136 (Exists!4204 lambda!462772))))

(declare-datatypes ((Option!17142 0))(
  ( (None!17141) (Some!17141 (v!54270 tuple2!68620)) )
))
(declare-fun isDefined!13831 (Option!17142) Bool)

(declare-fun findConcatSeparation!3264 (Regex!19585 Regex!19585 List!72301 List!72301 List!72301) Option!17142)

(assert (=> b!7471489 (= lt!2626136 (isDefined!13831 (findConcatSeparation!3264 lt!2626140 rTail!78 Nil!72177 s!13591 s!13591)))))

(declare-fun lt!2626135 () Unit!166005)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3022 (Regex!19585 Regex!19585 List!72301) Unit!166005)

(assert (=> b!7471489 (= lt!2626135 (lemmaFindConcatSeparationEquivalentToExists!3022 lt!2626140 rTail!78 s!13591))))

(declare-fun b!7471490 () Bool)

(declare-fun res!2997400 () Bool)

(assert (=> b!7471490 (=> (not res!2997400) (not e!4457600))))

(declare-fun validRegex!10099 (Regex!19585) Bool)

(assert (=> b!7471490 (= res!2997400 (validRegex!10099 rTail!78))))

(declare-fun b!7471491 () Bool)

(declare-fun e!4457602 () Bool)

(assert (=> b!7471491 (= e!4457604 e!4457602)))

(declare-fun res!2997401 () Bool)

(assert (=> b!7471491 (=> res!2997401 e!4457602)))

(declare-fun lt!2626139 () Bool)

(declare-fun lt!2626142 () Bool)

(assert (=> b!7471491 (= res!2997401 (or (and (not lt!2626139) (not lt!2626142)) lt!2626139))))

(assert (=> b!7471491 (= lt!2626142 (matchRSpec!4264 lt!2626129 s!13591))))

(assert (=> b!7471491 (= lt!2626142 (matchR!9349 lt!2626129 s!13591))))

(declare-fun lt!2626144 () Unit!166005)

(assert (=> b!7471491 (= lt!2626144 (mainMatchTheorem!4258 lt!2626129 s!13591))))

(assert (=> b!7471491 (= lt!2626139 (matchRSpec!4264 lt!2626130 s!13591))))

(assert (=> b!7471491 (= lt!2626139 (matchR!9349 lt!2626130 s!13591))))

(declare-fun lt!2626128 () Unit!166005)

(assert (=> b!7471491 (= lt!2626128 (mainMatchTheorem!4258 lt!2626130 s!13591))))

(declare-fun res!2997397 () Bool)

(assert (=> start!724298 (=> (not res!2997397) (not e!4457600))))

(assert (=> start!724298 (= res!2997397 (validRegex!10099 r1!5845))))

(assert (=> start!724298 e!4457600))

(declare-fun e!4457608 () Bool)

(assert (=> start!724298 e!4457608))

(assert (=> start!724298 e!4457605))

(assert (=> start!724298 e!4457603))

(assert (=> start!724298 e!4457607))

(declare-fun b!7471483 () Bool)

(declare-fun tp!2166561 () Bool)

(declare-fun tp!2166569 () Bool)

(assert (=> b!7471483 (= e!4457608 (and tp!2166561 tp!2166569))))

(declare-fun b!7471492 () Bool)

(declare-fun tp!2166567 () Bool)

(declare-fun tp!2166571 () Bool)

(assert (=> b!7471492 (= e!4457605 (and tp!2166567 tp!2166571))))

(declare-fun b!7471493 () Bool)

(declare-fun tp!2166565 () Bool)

(declare-fun tp!2166558 () Bool)

(assert (=> b!7471493 (= e!4457603 (and tp!2166565 tp!2166558))))

(declare-fun b!7471494 () Bool)

(declare-fun res!2997396 () Bool)

(assert (=> b!7471494 (=> (not res!2997396) (not e!4457600))))

(assert (=> b!7471494 (= res!2997396 (validRegex!10099 r2!5783))))

(declare-fun b!7471495 () Bool)

(assert (=> b!7471495 (= e!4457608 tp_is_empty!49459)))

(declare-fun b!7471496 () Bool)

(assert (=> b!7471496 (= e!4457601 (validRegex!10099 lt!2626140))))

(assert (=> b!7471496 (matchRSpec!4264 r2!5783 (_1!37613 lt!2626131))))

(declare-fun lt!2626132 () Unit!166005)

(assert (=> b!7471496 (= lt!2626132 (mainMatchTheorem!4258 r2!5783 (_1!37613 lt!2626131)))))

(assert (=> b!7471496 (= (matchR!9349 r1!5845 (_1!37613 lt!2626131)) (matchRSpec!4264 r1!5845 (_1!37613 lt!2626131)))))

(declare-fun lt!2626125 () Unit!166005)

(assert (=> b!7471496 (= lt!2626125 (mainMatchTheorem!4258 r1!5845 (_1!37613 lt!2626131)))))

(assert (=> b!7471496 (= (matchR!9349 lt!2626140 (_1!37613 lt!2626131)) (matchRSpec!4264 lt!2626140 (_1!37613 lt!2626131)))))

(declare-fun lt!2626145 () Unit!166005)

(assert (=> b!7471496 (= lt!2626145 (mainMatchTheorem!4258 lt!2626140 (_1!37613 lt!2626131)))))

(assert (=> b!7471497 (= e!4457602 e!4457601)))

(declare-fun res!2997402 () Bool)

(assert (=> b!7471497 (=> res!2997402 e!4457601)))

(assert (=> b!7471497 (= res!2997402 (not (matchR!9349 r2!5783 (_1!37613 lt!2626131))))))

(declare-fun lt!2626127 () Option!17142)

(declare-fun get!25241 (Option!17142) tuple2!68620)

(assert (=> b!7471497 (= lt!2626131 (get!25241 lt!2626127))))

(assert (=> b!7471497 (= (Exists!4204 lambda!462774) (Exists!4204 lambda!462775))))

(declare-fun lt!2626141 () Unit!166005)

(assert (=> b!7471497 (= lt!2626141 (lemmaExistCutMatchRandMatchRSpecEquivalent!2538 r2!5783 rTail!78 s!13591))))

(assert (=> b!7471497 (= (isDefined!13831 lt!2626127) (Exists!4204 lambda!462774))))

(assert (=> b!7471497 (= lt!2626127 (findConcatSeparation!3264 r2!5783 rTail!78 Nil!72177 s!13591 s!13591))))

(declare-fun lt!2626143 () Unit!166005)

(assert (=> b!7471497 (= lt!2626143 (lemmaFindConcatSeparationEquivalentToExists!3022 r2!5783 rTail!78 s!13591))))

(declare-fun b!7471498 () Bool)

(declare-fun tp!2166568 () Bool)

(declare-fun tp!2166556 () Bool)

(assert (=> b!7471498 (= e!4457608 (and tp!2166568 tp!2166556))))

(declare-fun b!7471499 () Bool)

(assert (=> b!7471499 (= e!4457603 tp_is_empty!49459)))

(declare-fun b!7471500 () Bool)

(declare-fun tp!2166566 () Bool)

(declare-fun tp!2166559 () Bool)

(assert (=> b!7471500 (= e!4457603 (and tp!2166566 tp!2166559))))

(declare-fun b!7471501 () Bool)

(declare-fun tp!2166564 () Bool)

(assert (=> b!7471501 (= e!4457608 tp!2166564)))

(assert (= (and start!724298 res!2997397) b!7471494))

(assert (= (and b!7471494 res!2997396) b!7471490))

(assert (= (and b!7471490 res!2997400) b!7471485))

(assert (= (and b!7471485 (not res!2997398)) b!7471489))

(assert (= (and b!7471489 (not res!2997395)) b!7471491))

(assert (= (and b!7471491 (not res!2997401)) b!7471497))

(assert (= (and b!7471497 (not res!2997402)) b!7471481))

(assert (= (and b!7471481 (not res!2997399)) b!7471496))

(get-info :version)

(assert (= (and start!724298 ((_ is ElementMatch!19585) r1!5845)) b!7471495))

(assert (= (and start!724298 ((_ is Concat!28430) r1!5845)) b!7471483))

(assert (= (and start!724298 ((_ is Star!19585) r1!5845)) b!7471501))

(assert (= (and start!724298 ((_ is Union!19585) r1!5845)) b!7471498))

(assert (= (and start!724298 ((_ is ElementMatch!19585) r2!5783)) b!7471486))

(assert (= (and start!724298 ((_ is Concat!28430) r2!5783)) b!7471492))

(assert (= (and start!724298 ((_ is Star!19585) r2!5783)) b!7471488))

(assert (= (and start!724298 ((_ is Union!19585) r2!5783)) b!7471482))

(assert (= (and start!724298 ((_ is ElementMatch!19585) rTail!78)) b!7471499))

(assert (= (and start!724298 ((_ is Concat!28430) rTail!78)) b!7471493))

(assert (= (and start!724298 ((_ is Star!19585) rTail!78)) b!7471484))

(assert (= (and start!724298 ((_ is Union!19585) rTail!78)) b!7471500))

(assert (= (and start!724298 ((_ is Cons!72177) s!13591)) b!7471487))

(declare-fun m!8068270 () Bool)

(assert (=> b!7471490 m!8068270))

(declare-fun m!8068272 () Bool)

(assert (=> b!7471494 m!8068272))

(declare-fun m!8068274 () Bool)

(assert (=> b!7471489 m!8068274))

(declare-fun m!8068276 () Bool)

(assert (=> b!7471489 m!8068276))

(declare-fun m!8068278 () Bool)

(assert (=> b!7471489 m!8068278))

(assert (=> b!7471489 m!8068276))

(declare-fun m!8068280 () Bool)

(assert (=> b!7471489 m!8068280))

(declare-fun m!8068282 () Bool)

(assert (=> b!7471489 m!8068282))

(declare-fun m!8068284 () Bool)

(assert (=> b!7471489 m!8068284))

(assert (=> b!7471489 m!8068280))

(declare-fun m!8068286 () Bool)

(assert (=> b!7471496 m!8068286))

(declare-fun m!8068288 () Bool)

(assert (=> b!7471496 m!8068288))

(declare-fun m!8068290 () Bool)

(assert (=> b!7471496 m!8068290))

(declare-fun m!8068292 () Bool)

(assert (=> b!7471496 m!8068292))

(declare-fun m!8068294 () Bool)

(assert (=> b!7471496 m!8068294))

(declare-fun m!8068296 () Bool)

(assert (=> b!7471496 m!8068296))

(declare-fun m!8068298 () Bool)

(assert (=> b!7471496 m!8068298))

(declare-fun m!8068300 () Bool)

(assert (=> b!7471496 m!8068300))

(declare-fun m!8068302 () Bool)

(assert (=> b!7471496 m!8068302))

(declare-fun m!8068304 () Bool)

(assert (=> b!7471481 m!8068304))

(declare-fun m!8068306 () Bool)

(assert (=> b!7471491 m!8068306))

(declare-fun m!8068308 () Bool)

(assert (=> b!7471491 m!8068308))

(declare-fun m!8068310 () Bool)

(assert (=> b!7471491 m!8068310))

(declare-fun m!8068312 () Bool)

(assert (=> b!7471491 m!8068312))

(declare-fun m!8068314 () Bool)

(assert (=> b!7471491 m!8068314))

(declare-fun m!8068316 () Bool)

(assert (=> b!7471491 m!8068316))

(declare-fun m!8068318 () Bool)

(assert (=> b!7471485 m!8068318))

(declare-fun m!8068320 () Bool)

(assert (=> b!7471485 m!8068320))

(declare-fun m!8068322 () Bool)

(assert (=> b!7471485 m!8068322))

(declare-fun m!8068324 () Bool)

(assert (=> b!7471485 m!8068324))

(declare-fun m!8068326 () Bool)

(assert (=> b!7471485 m!8068326))

(declare-fun m!8068328 () Bool)

(assert (=> b!7471485 m!8068328))

(declare-fun m!8068330 () Bool)

(assert (=> b!7471497 m!8068330))

(declare-fun m!8068332 () Bool)

(assert (=> b!7471497 m!8068332))

(declare-fun m!8068334 () Bool)

(assert (=> b!7471497 m!8068334))

(declare-fun m!8068336 () Bool)

(assert (=> b!7471497 m!8068336))

(assert (=> b!7471497 m!8068334))

(declare-fun m!8068338 () Bool)

(assert (=> b!7471497 m!8068338))

(declare-fun m!8068340 () Bool)

(assert (=> b!7471497 m!8068340))

(declare-fun m!8068342 () Bool)

(assert (=> b!7471497 m!8068342))

(declare-fun m!8068344 () Bool)

(assert (=> b!7471497 m!8068344))

(declare-fun m!8068346 () Bool)

(assert (=> start!724298 m!8068346))

(check-sat (not b!7471481) (not b!7471494) (not b!7471485) (not b!7471500) (not b!7471496) tp_is_empty!49459 (not start!724298) (not b!7471482) (not b!7471483) (not b!7471497) (not b!7471490) (not b!7471489) (not b!7471491) (not b!7471501) (not b!7471493) (not b!7471498) (not b!7471484) (not b!7471492) (not b!7471487) (not b!7471488))
(check-sat)
(get-model)

(declare-fun bs!1931182 () Bool)

(declare-fun b!7471601 () Bool)

(assert (= bs!1931182 (and b!7471601 b!7471489)))

(declare-fun lambda!462780 () Int)

(assert (=> bs!1931182 (not (= lambda!462780 lambda!462772))))

(assert (=> bs!1931182 (not (= lambda!462780 lambda!462773))))

(declare-fun bs!1931183 () Bool)

(assert (= bs!1931183 (and b!7471601 b!7471497)))

(assert (=> bs!1931183 (not (= lambda!462780 lambda!462774))))

(assert (=> bs!1931183 (not (= lambda!462780 lambda!462775))))

(assert (=> b!7471601 true))

(assert (=> b!7471601 true))

(declare-fun bs!1931184 () Bool)

(declare-fun b!7471594 () Bool)

(assert (= bs!1931184 (and b!7471594 b!7471489)))

(declare-fun lambda!462783 () Int)

(assert (=> bs!1931184 (not (= lambda!462783 lambda!462772))))

(declare-fun bs!1931186 () Bool)

(assert (= bs!1931186 (and b!7471594 b!7471497)))

(assert (=> bs!1931186 (not (= lambda!462783 lambda!462774))))

(assert (=> bs!1931184 (= (and (= (_1!37613 lt!2626131) s!13591) (= (regOne!39682 r2!5783) lt!2626140) (= (regTwo!39682 r2!5783) rTail!78)) (= lambda!462783 lambda!462773))))

(declare-fun bs!1931188 () Bool)

(assert (= bs!1931188 (and b!7471594 b!7471601)))

(assert (=> bs!1931188 (not (= lambda!462783 lambda!462780))))

(assert (=> bs!1931186 (= (and (= (_1!37613 lt!2626131) s!13591) (= (regOne!39682 r2!5783) r2!5783) (= (regTwo!39682 r2!5783) rTail!78)) (= lambda!462783 lambda!462775))))

(assert (=> b!7471594 true))

(assert (=> b!7471594 true))

(declare-fun b!7471592 () Bool)

(declare-fun e!4457663 () Bool)

(declare-fun call!686030 () Bool)

(assert (=> b!7471592 (= e!4457663 call!686030)))

(declare-fun b!7471593 () Bool)

(declare-fun e!4457669 () Bool)

(declare-fun e!4457668 () Bool)

(assert (=> b!7471593 (= e!4457669 e!4457668)))

(declare-fun res!2997451 () Bool)

(assert (=> b!7471593 (= res!2997451 (matchRSpec!4264 (regOne!39683 r2!5783) (_1!37613 lt!2626131)))))

(assert (=> b!7471593 (=> res!2997451 e!4457668)))

(declare-fun e!4457665 () Bool)

(declare-fun call!686031 () Bool)

(assert (=> b!7471594 (= e!4457665 call!686031)))

(declare-fun b!7471595 () Bool)

(assert (=> b!7471595 (= e!4457668 (matchRSpec!4264 (regTwo!39683 r2!5783) (_1!37613 lt!2626131)))))

(declare-fun bm!686025 () Bool)

(declare-fun isEmpty!41173 (List!72301) Bool)

(assert (=> bm!686025 (= call!686030 (isEmpty!41173 (_1!37613 lt!2626131)))))

(declare-fun d!2299034 () Bool)

(declare-fun c!1380457 () Bool)

(assert (=> d!2299034 (= c!1380457 ((_ is EmptyExpr!19585) r2!5783))))

(assert (=> d!2299034 (= (matchRSpec!4264 r2!5783 (_1!37613 lt!2626131)) e!4457663)))

(declare-fun b!7471596 () Bool)

(assert (=> b!7471596 (= e!4457669 e!4457665)))

(declare-fun c!1380459 () Bool)

(assert (=> b!7471596 (= c!1380459 ((_ is Star!19585) r2!5783))))

(declare-fun b!7471597 () Bool)

(declare-fun res!2997450 () Bool)

(declare-fun e!4457667 () Bool)

(assert (=> b!7471597 (=> res!2997450 e!4457667)))

(assert (=> b!7471597 (= res!2997450 call!686030)))

(assert (=> b!7471597 (= e!4457665 e!4457667)))

(declare-fun b!7471598 () Bool)

(declare-fun c!1380460 () Bool)

(assert (=> b!7471598 (= c!1380460 ((_ is Union!19585) r2!5783))))

(declare-fun e!4457666 () Bool)

(assert (=> b!7471598 (= e!4457666 e!4457669)))

(declare-fun b!7471599 () Bool)

(declare-fun e!4457664 () Bool)

(assert (=> b!7471599 (= e!4457663 e!4457664)))

(declare-fun res!2997449 () Bool)

(assert (=> b!7471599 (= res!2997449 (not ((_ is EmptyLang!19585) r2!5783)))))

(assert (=> b!7471599 (=> (not res!2997449) (not e!4457664))))

(declare-fun b!7471600 () Bool)

(declare-fun c!1380458 () Bool)

(assert (=> b!7471600 (= c!1380458 ((_ is ElementMatch!19585) r2!5783))))

(assert (=> b!7471600 (= e!4457664 e!4457666)))

(assert (=> b!7471601 (= e!4457667 call!686031)))

(declare-fun b!7471602 () Bool)

(assert (=> b!7471602 (= e!4457666 (= (_1!37613 lt!2626131) (Cons!72177 (c!1380436 r2!5783) Nil!72177)))))

(declare-fun bm!686026 () Bool)

(assert (=> bm!686026 (= call!686031 (Exists!4204 (ite c!1380459 lambda!462780 lambda!462783)))))

(assert (= (and d!2299034 c!1380457) b!7471592))

(assert (= (and d!2299034 (not c!1380457)) b!7471599))

(assert (= (and b!7471599 res!2997449) b!7471600))

(assert (= (and b!7471600 c!1380458) b!7471602))

(assert (= (and b!7471600 (not c!1380458)) b!7471598))

(assert (= (and b!7471598 c!1380460) b!7471593))

(assert (= (and b!7471598 (not c!1380460)) b!7471596))

(assert (= (and b!7471593 (not res!2997451)) b!7471595))

(assert (= (and b!7471596 c!1380459) b!7471597))

(assert (= (and b!7471596 (not c!1380459)) b!7471594))

(assert (= (and b!7471597 (not res!2997450)) b!7471601))

(assert (= (or b!7471601 b!7471594) bm!686026))

(assert (= (or b!7471592 b!7471597) bm!686025))

(declare-fun m!8068380 () Bool)

(assert (=> b!7471593 m!8068380))

(declare-fun m!8068382 () Bool)

(assert (=> b!7471595 m!8068382))

(declare-fun m!8068384 () Bool)

(assert (=> bm!686025 m!8068384))

(declare-fun m!8068386 () Bool)

(assert (=> bm!686026 m!8068386))

(assert (=> b!7471496 d!2299034))

(declare-fun bs!1931190 () Bool)

(declare-fun b!7471616 () Bool)

(assert (= bs!1931190 (and b!7471616 b!7471489)))

(declare-fun lambda!462785 () Int)

(assert (=> bs!1931190 (not (= lambda!462785 lambda!462772))))

(assert (=> bs!1931190 (not (= lambda!462785 lambda!462773))))

(declare-fun bs!1931191 () Bool)

(assert (= bs!1931191 (and b!7471616 b!7471594)))

(assert (=> bs!1931191 (not (= lambda!462785 lambda!462783))))

(declare-fun bs!1931192 () Bool)

(assert (= bs!1931192 (and b!7471616 b!7471497)))

(assert (=> bs!1931192 (not (= lambda!462785 lambda!462774))))

(declare-fun bs!1931193 () Bool)

(assert (= bs!1931193 (and b!7471616 b!7471601)))

(assert (=> bs!1931193 (= (and (= (reg!19914 r1!5845) (reg!19914 r2!5783)) (= r1!5845 r2!5783)) (= lambda!462785 lambda!462780))))

(assert (=> bs!1931192 (not (= lambda!462785 lambda!462775))))

(assert (=> b!7471616 true))

(assert (=> b!7471616 true))

(declare-fun bs!1931194 () Bool)

(declare-fun b!7471609 () Bool)

(assert (= bs!1931194 (and b!7471609 b!7471616)))

(declare-fun lambda!462788 () Int)

(assert (=> bs!1931194 (not (= lambda!462788 lambda!462785))))

(declare-fun bs!1931195 () Bool)

(assert (= bs!1931195 (and b!7471609 b!7471489)))

(assert (=> bs!1931195 (not (= lambda!462788 lambda!462772))))

(assert (=> bs!1931195 (= (and (= (_1!37613 lt!2626131) s!13591) (= (regOne!39682 r1!5845) lt!2626140) (= (regTwo!39682 r1!5845) rTail!78)) (= lambda!462788 lambda!462773))))

(declare-fun bs!1931196 () Bool)

(assert (= bs!1931196 (and b!7471609 b!7471594)))

(assert (=> bs!1931196 (= (and (= (regOne!39682 r1!5845) (regOne!39682 r2!5783)) (= (regTwo!39682 r1!5845) (regTwo!39682 r2!5783))) (= lambda!462788 lambda!462783))))

(declare-fun bs!1931197 () Bool)

(assert (= bs!1931197 (and b!7471609 b!7471497)))

(assert (=> bs!1931197 (not (= lambda!462788 lambda!462774))))

(declare-fun bs!1931198 () Bool)

(assert (= bs!1931198 (and b!7471609 b!7471601)))

(assert (=> bs!1931198 (not (= lambda!462788 lambda!462780))))

(assert (=> bs!1931197 (= (and (= (_1!37613 lt!2626131) s!13591) (= (regOne!39682 r1!5845) r2!5783) (= (regTwo!39682 r1!5845) rTail!78)) (= lambda!462788 lambda!462775))))

(assert (=> b!7471609 true))

(assert (=> b!7471609 true))

(declare-fun b!7471607 () Bool)

(declare-fun e!4457672 () Bool)

(declare-fun call!686032 () Bool)

(assert (=> b!7471607 (= e!4457672 call!686032)))

(declare-fun b!7471608 () Bool)

(declare-fun e!4457678 () Bool)

(declare-fun e!4457677 () Bool)

(assert (=> b!7471608 (= e!4457678 e!4457677)))

(declare-fun res!2997458 () Bool)

(assert (=> b!7471608 (= res!2997458 (matchRSpec!4264 (regOne!39683 r1!5845) (_1!37613 lt!2626131)))))

(assert (=> b!7471608 (=> res!2997458 e!4457677)))

(declare-fun e!4457674 () Bool)

(declare-fun call!686033 () Bool)

(assert (=> b!7471609 (= e!4457674 call!686033)))

(declare-fun b!7471610 () Bool)

(assert (=> b!7471610 (= e!4457677 (matchRSpec!4264 (regTwo!39683 r1!5845) (_1!37613 lt!2626131)))))

(declare-fun bm!686027 () Bool)

(assert (=> bm!686027 (= call!686032 (isEmpty!41173 (_1!37613 lt!2626131)))))

(declare-fun d!2299044 () Bool)

(declare-fun c!1380461 () Bool)

(assert (=> d!2299044 (= c!1380461 ((_ is EmptyExpr!19585) r1!5845))))

(assert (=> d!2299044 (= (matchRSpec!4264 r1!5845 (_1!37613 lt!2626131)) e!4457672)))

(declare-fun b!7471611 () Bool)

(assert (=> b!7471611 (= e!4457678 e!4457674)))

(declare-fun c!1380463 () Bool)

(assert (=> b!7471611 (= c!1380463 ((_ is Star!19585) r1!5845))))

(declare-fun b!7471612 () Bool)

(declare-fun res!2997457 () Bool)

(declare-fun e!4457676 () Bool)

(assert (=> b!7471612 (=> res!2997457 e!4457676)))

(assert (=> b!7471612 (= res!2997457 call!686032)))

(assert (=> b!7471612 (= e!4457674 e!4457676)))

(declare-fun b!7471613 () Bool)

(declare-fun c!1380464 () Bool)

(assert (=> b!7471613 (= c!1380464 ((_ is Union!19585) r1!5845))))

(declare-fun e!4457675 () Bool)

(assert (=> b!7471613 (= e!4457675 e!4457678)))

(declare-fun b!7471614 () Bool)

(declare-fun e!4457673 () Bool)

(assert (=> b!7471614 (= e!4457672 e!4457673)))

(declare-fun res!2997456 () Bool)

(assert (=> b!7471614 (= res!2997456 (not ((_ is EmptyLang!19585) r1!5845)))))

(assert (=> b!7471614 (=> (not res!2997456) (not e!4457673))))

(declare-fun b!7471615 () Bool)

(declare-fun c!1380462 () Bool)

(assert (=> b!7471615 (= c!1380462 ((_ is ElementMatch!19585) r1!5845))))

(assert (=> b!7471615 (= e!4457673 e!4457675)))

(assert (=> b!7471616 (= e!4457676 call!686033)))

(declare-fun b!7471617 () Bool)

(assert (=> b!7471617 (= e!4457675 (= (_1!37613 lt!2626131) (Cons!72177 (c!1380436 r1!5845) Nil!72177)))))

(declare-fun bm!686028 () Bool)

(assert (=> bm!686028 (= call!686033 (Exists!4204 (ite c!1380463 lambda!462785 lambda!462788)))))

(assert (= (and d!2299044 c!1380461) b!7471607))

(assert (= (and d!2299044 (not c!1380461)) b!7471614))

(assert (= (and b!7471614 res!2997456) b!7471615))

(assert (= (and b!7471615 c!1380462) b!7471617))

(assert (= (and b!7471615 (not c!1380462)) b!7471613))

(assert (= (and b!7471613 c!1380464) b!7471608))

(assert (= (and b!7471613 (not c!1380464)) b!7471611))

(assert (= (and b!7471608 (not res!2997458)) b!7471610))

(assert (= (and b!7471611 c!1380463) b!7471612))

(assert (= (and b!7471611 (not c!1380463)) b!7471609))

(assert (= (and b!7471612 (not res!2997457)) b!7471616))

(assert (= (or b!7471616 b!7471609) bm!686028))

(assert (= (or b!7471607 b!7471612) bm!686027))

(declare-fun m!8068388 () Bool)

(assert (=> b!7471608 m!8068388))

(declare-fun m!8068390 () Bool)

(assert (=> b!7471610 m!8068390))

(assert (=> bm!686027 m!8068384))

(declare-fun m!8068392 () Bool)

(assert (=> bm!686028 m!8068392))

(assert (=> b!7471496 d!2299044))

(declare-fun b!7471676 () Bool)

(declare-fun e!4457715 () Bool)

(declare-fun e!4457716 () Bool)

(assert (=> b!7471676 (= e!4457715 e!4457716)))

(declare-fun c!1380478 () Bool)

(assert (=> b!7471676 (= c!1380478 ((_ is Union!19585) lt!2626140))))

(declare-fun bm!686037 () Bool)

(declare-fun call!686044 () Bool)

(declare-fun call!686043 () Bool)

(assert (=> bm!686037 (= call!686044 call!686043)))

(declare-fun b!7471677 () Bool)

(declare-fun e!4457720 () Bool)

(assert (=> b!7471677 (= e!4457720 e!4457715)))

(declare-fun c!1380477 () Bool)

(assert (=> b!7471677 (= c!1380477 ((_ is Star!19585) lt!2626140))))

(declare-fun b!7471678 () Bool)

(declare-fun res!2997494 () Bool)

(declare-fun e!4457719 () Bool)

(assert (=> b!7471678 (=> (not res!2997494) (not e!4457719))))

(declare-fun call!686042 () Bool)

(assert (=> b!7471678 (= res!2997494 call!686042)))

(assert (=> b!7471678 (= e!4457716 e!4457719)))

(declare-fun bm!686038 () Bool)

(assert (=> bm!686038 (= call!686042 (validRegex!10099 (ite c!1380478 (regOne!39683 lt!2626140) (regOne!39682 lt!2626140))))))

(declare-fun b!7471679 () Bool)

(declare-fun e!4457717 () Bool)

(assert (=> b!7471679 (= e!4457715 e!4457717)))

(declare-fun res!2997493 () Bool)

(declare-fun nullable!8529 (Regex!19585) Bool)

(assert (=> b!7471679 (= res!2997493 (not (nullable!8529 (reg!19914 lt!2626140))))))

(assert (=> b!7471679 (=> (not res!2997493) (not e!4457717))))

(declare-fun d!2299046 () Bool)

(declare-fun res!2997496 () Bool)

(assert (=> d!2299046 (=> res!2997496 e!4457720)))

(assert (=> d!2299046 (= res!2997496 ((_ is ElementMatch!19585) lt!2626140))))

(assert (=> d!2299046 (= (validRegex!10099 lt!2626140) e!4457720)))

(declare-fun b!7471680 () Bool)

(declare-fun e!4457721 () Bool)

(declare-fun e!4457718 () Bool)

(assert (=> b!7471680 (= e!4457721 e!4457718)))

(declare-fun res!2997497 () Bool)

(assert (=> b!7471680 (=> (not res!2997497) (not e!4457718))))

(assert (=> b!7471680 (= res!2997497 call!686042)))

(declare-fun b!7471681 () Bool)

(assert (=> b!7471681 (= e!4457718 call!686044)))

(declare-fun b!7471682 () Bool)

(declare-fun res!2997495 () Bool)

(assert (=> b!7471682 (=> res!2997495 e!4457721)))

(assert (=> b!7471682 (= res!2997495 (not ((_ is Concat!28430) lt!2626140)))))

(assert (=> b!7471682 (= e!4457716 e!4457721)))

(declare-fun b!7471683 () Bool)

(assert (=> b!7471683 (= e!4457717 call!686043)))

(declare-fun bm!686039 () Bool)

(assert (=> bm!686039 (= call!686043 (validRegex!10099 (ite c!1380477 (reg!19914 lt!2626140) (ite c!1380478 (regTwo!39683 lt!2626140) (regTwo!39682 lt!2626140)))))))

(declare-fun b!7471684 () Bool)

(assert (=> b!7471684 (= e!4457719 call!686044)))

(assert (= (and d!2299046 (not res!2997496)) b!7471677))

(assert (= (and b!7471677 c!1380477) b!7471679))

(assert (= (and b!7471677 (not c!1380477)) b!7471676))

(assert (= (and b!7471679 res!2997493) b!7471683))

(assert (= (and b!7471676 c!1380478) b!7471678))

(assert (= (and b!7471676 (not c!1380478)) b!7471682))

(assert (= (and b!7471678 res!2997494) b!7471684))

(assert (= (and b!7471682 (not res!2997495)) b!7471680))

(assert (= (and b!7471680 res!2997497) b!7471681))

(assert (= (or b!7471684 b!7471681) bm!686037))

(assert (= (or b!7471678 b!7471680) bm!686038))

(assert (= (or b!7471683 bm!686037) bm!686039))

(declare-fun m!8068406 () Bool)

(assert (=> bm!686038 m!8068406))

(declare-fun m!8068408 () Bool)

(assert (=> b!7471679 m!8068408))

(declare-fun m!8068410 () Bool)

(assert (=> bm!686039 m!8068410))

(assert (=> b!7471496 d!2299046))

(declare-fun b!7471777 () Bool)

(declare-fun e!4457777 () Bool)

(assert (=> b!7471777 (= e!4457777 (nullable!8529 lt!2626140))))

(declare-fun b!7471778 () Bool)

(declare-fun e!4457775 () Bool)

(declare-fun e!4457773 () Bool)

(assert (=> b!7471778 (= e!4457775 e!4457773)))

(declare-fun c!1380503 () Bool)

(assert (=> b!7471778 (= c!1380503 ((_ is EmptyLang!19585) lt!2626140))))

(declare-fun b!7471779 () Bool)

(declare-fun e!4457771 () Bool)

(declare-fun e!4457772 () Bool)

(assert (=> b!7471779 (= e!4457771 e!4457772)))

(declare-fun res!2997550 () Bool)

(assert (=> b!7471779 (=> (not res!2997550) (not e!4457772))))

(declare-fun lt!2626171 () Bool)

(assert (=> b!7471779 (= res!2997550 (not lt!2626171))))

(declare-fun b!7471780 () Bool)

(declare-fun res!2997549 () Bool)

(declare-fun e!4457776 () Bool)

(assert (=> b!7471780 (=> (not res!2997549) (not e!4457776))))

(declare-fun call!686056 () Bool)

(assert (=> b!7471780 (= res!2997549 (not call!686056))))

(declare-fun d!2299056 () Bool)

(assert (=> d!2299056 e!4457775))

(declare-fun c!1380504 () Bool)

(assert (=> d!2299056 (= c!1380504 ((_ is EmptyExpr!19585) lt!2626140))))

(assert (=> d!2299056 (= lt!2626171 e!4457777)))

(declare-fun c!1380502 () Bool)

(assert (=> d!2299056 (= c!1380502 (isEmpty!41173 (_1!37613 lt!2626131)))))

(assert (=> d!2299056 (validRegex!10099 lt!2626140)))

(assert (=> d!2299056 (= (matchR!9349 lt!2626140 (_1!37613 lt!2626131)) lt!2626171)))

(declare-fun b!7471781 () Bool)

(declare-fun res!2997547 () Bool)

(declare-fun e!4457774 () Bool)

(assert (=> b!7471781 (=> res!2997547 e!4457774)))

(declare-fun tail!14897 (List!72301) List!72301)

(assert (=> b!7471781 (= res!2997547 (not (isEmpty!41173 (tail!14897 (_1!37613 lt!2626131)))))))

(declare-fun b!7471782 () Bool)

(declare-fun head!15328 (List!72301) C!39444)

(assert (=> b!7471782 (= e!4457776 (= (head!15328 (_1!37613 lt!2626131)) (c!1380436 lt!2626140)))))

(declare-fun b!7471783 () Bool)

(declare-fun res!2997551 () Bool)

(assert (=> b!7471783 (=> (not res!2997551) (not e!4457776))))

(assert (=> b!7471783 (= res!2997551 (isEmpty!41173 (tail!14897 (_1!37613 lt!2626131))))))

(declare-fun b!7471784 () Bool)

(declare-fun res!2997544 () Bool)

(assert (=> b!7471784 (=> res!2997544 e!4457771)))

(assert (=> b!7471784 (= res!2997544 e!4457776)))

(declare-fun res!2997548 () Bool)

(assert (=> b!7471784 (=> (not res!2997548) (not e!4457776))))

(assert (=> b!7471784 (= res!2997548 lt!2626171)))

(declare-fun b!7471785 () Bool)

(declare-fun derivativeStep!5588 (Regex!19585 C!39444) Regex!19585)

(assert (=> b!7471785 (= e!4457777 (matchR!9349 (derivativeStep!5588 lt!2626140 (head!15328 (_1!37613 lt!2626131))) (tail!14897 (_1!37613 lt!2626131))))))

(declare-fun b!7471786 () Bool)

(assert (=> b!7471786 (= e!4457773 (not lt!2626171))))

(declare-fun b!7471787 () Bool)

(assert (=> b!7471787 (= e!4457775 (= lt!2626171 call!686056))))

(declare-fun bm!686051 () Bool)

(assert (=> bm!686051 (= call!686056 (isEmpty!41173 (_1!37613 lt!2626131)))))

(declare-fun b!7471788 () Bool)

(assert (=> b!7471788 (= e!4457772 e!4457774)))

(declare-fun res!2997546 () Bool)

(assert (=> b!7471788 (=> res!2997546 e!4457774)))

(assert (=> b!7471788 (= res!2997546 call!686056)))

(declare-fun b!7471789 () Bool)

(assert (=> b!7471789 (= e!4457774 (not (= (head!15328 (_1!37613 lt!2626131)) (c!1380436 lt!2626140))))))

(declare-fun b!7471790 () Bool)

(declare-fun res!2997545 () Bool)

(assert (=> b!7471790 (=> res!2997545 e!4457771)))

(assert (=> b!7471790 (= res!2997545 (not ((_ is ElementMatch!19585) lt!2626140)))))

(assert (=> b!7471790 (= e!4457773 e!4457771)))

(assert (= (and d!2299056 c!1380502) b!7471777))

(assert (= (and d!2299056 (not c!1380502)) b!7471785))

(assert (= (and d!2299056 c!1380504) b!7471787))

(assert (= (and d!2299056 (not c!1380504)) b!7471778))

(assert (= (and b!7471778 c!1380503) b!7471786))

(assert (= (and b!7471778 (not c!1380503)) b!7471790))

(assert (= (and b!7471790 (not res!2997545)) b!7471784))

(assert (= (and b!7471784 res!2997548) b!7471780))

(assert (= (and b!7471780 res!2997549) b!7471783))

(assert (= (and b!7471783 res!2997551) b!7471782))

(assert (= (and b!7471784 (not res!2997544)) b!7471779))

(assert (= (and b!7471779 res!2997550) b!7471788))

(assert (= (and b!7471788 (not res!2997546)) b!7471781))

(assert (= (and b!7471781 (not res!2997547)) b!7471789))

(assert (= (or b!7471787 b!7471788 b!7471780) bm!686051))

(assert (=> bm!686051 m!8068384))

(declare-fun m!8068452 () Bool)

(assert (=> b!7471777 m!8068452))

(declare-fun m!8068454 () Bool)

(assert (=> b!7471782 m!8068454))

(declare-fun m!8068456 () Bool)

(assert (=> b!7471783 m!8068456))

(assert (=> b!7471783 m!8068456))

(declare-fun m!8068458 () Bool)

(assert (=> b!7471783 m!8068458))

(assert (=> d!2299056 m!8068384))

(assert (=> d!2299056 m!8068298))

(assert (=> b!7471789 m!8068454))

(assert (=> b!7471785 m!8068454))

(assert (=> b!7471785 m!8068454))

(declare-fun m!8068466 () Bool)

(assert (=> b!7471785 m!8068466))

(assert (=> b!7471785 m!8068456))

(assert (=> b!7471785 m!8068466))

(assert (=> b!7471785 m!8068456))

(declare-fun m!8068476 () Bool)

(assert (=> b!7471785 m!8068476))

(assert (=> b!7471781 m!8068456))

(assert (=> b!7471781 m!8068456))

(assert (=> b!7471781 m!8068458))

(assert (=> b!7471496 d!2299056))

(declare-fun d!2299072 () Bool)

(assert (=> d!2299072 (= (matchR!9349 r1!5845 (_1!37613 lt!2626131)) (matchRSpec!4264 r1!5845 (_1!37613 lt!2626131)))))

(declare-fun lt!2626178 () Unit!166005)

(declare-fun choose!57750 (Regex!19585 List!72301) Unit!166005)

(assert (=> d!2299072 (= lt!2626178 (choose!57750 r1!5845 (_1!37613 lt!2626131)))))

(assert (=> d!2299072 (validRegex!10099 r1!5845)))

(assert (=> d!2299072 (= (mainMatchTheorem!4258 r1!5845 (_1!37613 lt!2626131)) lt!2626178)))

(declare-fun bs!1931257 () Bool)

(assert (= bs!1931257 d!2299072))

(assert (=> bs!1931257 m!8068302))

(assert (=> bs!1931257 m!8068286))

(declare-fun m!8068492 () Bool)

(assert (=> bs!1931257 m!8068492))

(assert (=> bs!1931257 m!8068346))

(assert (=> b!7471496 d!2299072))

(declare-fun d!2299080 () Bool)

(assert (=> d!2299080 (= (matchR!9349 lt!2626140 (_1!37613 lt!2626131)) (matchRSpec!4264 lt!2626140 (_1!37613 lt!2626131)))))

(declare-fun lt!2626179 () Unit!166005)

(assert (=> d!2299080 (= lt!2626179 (choose!57750 lt!2626140 (_1!37613 lt!2626131)))))

(assert (=> d!2299080 (validRegex!10099 lt!2626140)))

(assert (=> d!2299080 (= (mainMatchTheorem!4258 lt!2626140 (_1!37613 lt!2626131)) lt!2626179)))

(declare-fun bs!1931259 () Bool)

(assert (= bs!1931259 d!2299080))

(assert (=> bs!1931259 m!8068288))

(assert (=> bs!1931259 m!8068290))

(declare-fun m!8068494 () Bool)

(assert (=> bs!1931259 m!8068494))

(assert (=> bs!1931259 m!8068298))

(assert (=> b!7471496 d!2299080))

(declare-fun d!2299082 () Bool)

(assert (=> d!2299082 (= (matchR!9349 r2!5783 (_1!37613 lt!2626131)) (matchRSpec!4264 r2!5783 (_1!37613 lt!2626131)))))

(declare-fun lt!2626180 () Unit!166005)

(assert (=> d!2299082 (= lt!2626180 (choose!57750 r2!5783 (_1!37613 lt!2626131)))))

(assert (=> d!2299082 (validRegex!10099 r2!5783)))

(assert (=> d!2299082 (= (mainMatchTheorem!4258 r2!5783 (_1!37613 lt!2626131)) lt!2626180)))

(declare-fun bs!1931262 () Bool)

(assert (= bs!1931262 d!2299082))

(assert (=> bs!1931262 m!8068332))

(assert (=> bs!1931262 m!8068300))

(declare-fun m!8068496 () Bool)

(assert (=> bs!1931262 m!8068496))

(assert (=> bs!1931262 m!8068272))

(assert (=> b!7471496 d!2299082))

(declare-fun b!7471850 () Bool)

(declare-fun e!4457819 () Bool)

(assert (=> b!7471850 (= e!4457819 (nullable!8529 r1!5845))))

(declare-fun b!7471851 () Bool)

(declare-fun e!4457817 () Bool)

(declare-fun e!4457815 () Bool)

(assert (=> b!7471851 (= e!4457817 e!4457815)))

(declare-fun c!1380522 () Bool)

(assert (=> b!7471851 (= c!1380522 ((_ is EmptyLang!19585) r1!5845))))

(declare-fun b!7471852 () Bool)

(declare-fun e!4457813 () Bool)

(declare-fun e!4457814 () Bool)

(assert (=> b!7471852 (= e!4457813 e!4457814)))

(declare-fun res!2997585 () Bool)

(assert (=> b!7471852 (=> (not res!2997585) (not e!4457814))))

(declare-fun lt!2626181 () Bool)

(assert (=> b!7471852 (= res!2997585 (not lt!2626181))))

(declare-fun b!7471853 () Bool)

(declare-fun res!2997584 () Bool)

(declare-fun e!4457818 () Bool)

(assert (=> b!7471853 (=> (not res!2997584) (not e!4457818))))

(declare-fun call!686066 () Bool)

(assert (=> b!7471853 (= res!2997584 (not call!686066))))

(declare-fun d!2299084 () Bool)

(assert (=> d!2299084 e!4457817))

(declare-fun c!1380523 () Bool)

(assert (=> d!2299084 (= c!1380523 ((_ is EmptyExpr!19585) r1!5845))))

(assert (=> d!2299084 (= lt!2626181 e!4457819)))

(declare-fun c!1380521 () Bool)

(assert (=> d!2299084 (= c!1380521 (isEmpty!41173 (_1!37613 lt!2626131)))))

(assert (=> d!2299084 (validRegex!10099 r1!5845)))

(assert (=> d!2299084 (= (matchR!9349 r1!5845 (_1!37613 lt!2626131)) lt!2626181)))

(declare-fun b!7471854 () Bool)

(declare-fun res!2997582 () Bool)

(declare-fun e!4457816 () Bool)

(assert (=> b!7471854 (=> res!2997582 e!4457816)))

(assert (=> b!7471854 (= res!2997582 (not (isEmpty!41173 (tail!14897 (_1!37613 lt!2626131)))))))

(declare-fun b!7471855 () Bool)

(assert (=> b!7471855 (= e!4457818 (= (head!15328 (_1!37613 lt!2626131)) (c!1380436 r1!5845)))))

(declare-fun b!7471856 () Bool)

(declare-fun res!2997586 () Bool)

(assert (=> b!7471856 (=> (not res!2997586) (not e!4457818))))

(assert (=> b!7471856 (= res!2997586 (isEmpty!41173 (tail!14897 (_1!37613 lt!2626131))))))

(declare-fun b!7471857 () Bool)

(declare-fun res!2997579 () Bool)

(assert (=> b!7471857 (=> res!2997579 e!4457813)))

(assert (=> b!7471857 (= res!2997579 e!4457818)))

(declare-fun res!2997583 () Bool)

(assert (=> b!7471857 (=> (not res!2997583) (not e!4457818))))

(assert (=> b!7471857 (= res!2997583 lt!2626181)))

(declare-fun b!7471858 () Bool)

(assert (=> b!7471858 (= e!4457819 (matchR!9349 (derivativeStep!5588 r1!5845 (head!15328 (_1!37613 lt!2626131))) (tail!14897 (_1!37613 lt!2626131))))))

(declare-fun b!7471859 () Bool)

(assert (=> b!7471859 (= e!4457815 (not lt!2626181))))

(declare-fun b!7471860 () Bool)

(assert (=> b!7471860 (= e!4457817 (= lt!2626181 call!686066))))

(declare-fun bm!686061 () Bool)

(assert (=> bm!686061 (= call!686066 (isEmpty!41173 (_1!37613 lt!2626131)))))

(declare-fun b!7471861 () Bool)

(assert (=> b!7471861 (= e!4457814 e!4457816)))

(declare-fun res!2997581 () Bool)

(assert (=> b!7471861 (=> res!2997581 e!4457816)))

(assert (=> b!7471861 (= res!2997581 call!686066)))

(declare-fun b!7471862 () Bool)

(assert (=> b!7471862 (= e!4457816 (not (= (head!15328 (_1!37613 lt!2626131)) (c!1380436 r1!5845))))))

(declare-fun b!7471863 () Bool)

(declare-fun res!2997580 () Bool)

(assert (=> b!7471863 (=> res!2997580 e!4457813)))

(assert (=> b!7471863 (= res!2997580 (not ((_ is ElementMatch!19585) r1!5845)))))

(assert (=> b!7471863 (= e!4457815 e!4457813)))

(assert (= (and d!2299084 c!1380521) b!7471850))

(assert (= (and d!2299084 (not c!1380521)) b!7471858))

(assert (= (and d!2299084 c!1380523) b!7471860))

(assert (= (and d!2299084 (not c!1380523)) b!7471851))

(assert (= (and b!7471851 c!1380522) b!7471859))

(assert (= (and b!7471851 (not c!1380522)) b!7471863))

(assert (= (and b!7471863 (not res!2997580)) b!7471857))

(assert (= (and b!7471857 res!2997583) b!7471853))

(assert (= (and b!7471853 res!2997584) b!7471856))

(assert (= (and b!7471856 res!2997586) b!7471855))

(assert (= (and b!7471857 (not res!2997579)) b!7471852))

(assert (= (and b!7471852 res!2997585) b!7471861))

(assert (= (and b!7471861 (not res!2997581)) b!7471854))

(assert (= (and b!7471854 (not res!2997582)) b!7471862))

(assert (= (or b!7471860 b!7471861 b!7471853) bm!686061))

(assert (=> bm!686061 m!8068384))

(declare-fun m!8068504 () Bool)

(assert (=> b!7471850 m!8068504))

(assert (=> b!7471855 m!8068454))

(assert (=> b!7471856 m!8068456))

(assert (=> b!7471856 m!8068456))

(assert (=> b!7471856 m!8068458))

(assert (=> d!2299084 m!8068384))

(assert (=> d!2299084 m!8068346))

(assert (=> b!7471862 m!8068454))

(assert (=> b!7471858 m!8068454))

(assert (=> b!7471858 m!8068454))

(declare-fun m!8068506 () Bool)

(assert (=> b!7471858 m!8068506))

(assert (=> b!7471858 m!8068456))

(assert (=> b!7471858 m!8068506))

(assert (=> b!7471858 m!8068456))

(declare-fun m!8068508 () Bool)

(assert (=> b!7471858 m!8068508))

(assert (=> b!7471854 m!8068456))

(assert (=> b!7471854 m!8068456))

(assert (=> b!7471854 m!8068458))

(assert (=> b!7471496 d!2299084))

(declare-fun bs!1931277 () Bool)

(declare-fun b!7471887 () Bool)

(assert (= bs!1931277 (and b!7471887 b!7471609)))

(declare-fun lambda!462806 () Int)

(assert (=> bs!1931277 (not (= lambda!462806 lambda!462788))))

(declare-fun bs!1931280 () Bool)

(assert (= bs!1931280 (and b!7471887 b!7471616)))

(assert (=> bs!1931280 (= (and (= (reg!19914 lt!2626140) (reg!19914 r1!5845)) (= lt!2626140 r1!5845)) (= lambda!462806 lambda!462785))))

(declare-fun bs!1931283 () Bool)

(assert (= bs!1931283 (and b!7471887 b!7471489)))

(assert (=> bs!1931283 (not (= lambda!462806 lambda!462772))))

(assert (=> bs!1931283 (not (= lambda!462806 lambda!462773))))

(declare-fun bs!1931286 () Bool)

(assert (= bs!1931286 (and b!7471887 b!7471594)))

(assert (=> bs!1931286 (not (= lambda!462806 lambda!462783))))

(declare-fun bs!1931289 () Bool)

(assert (= bs!1931289 (and b!7471887 b!7471497)))

(assert (=> bs!1931289 (not (= lambda!462806 lambda!462774))))

(declare-fun bs!1931291 () Bool)

(assert (= bs!1931291 (and b!7471887 b!7471601)))

(assert (=> bs!1931291 (= (and (= (reg!19914 lt!2626140) (reg!19914 r2!5783)) (= lt!2626140 r2!5783)) (= lambda!462806 lambda!462780))))

(assert (=> bs!1931289 (not (= lambda!462806 lambda!462775))))

(assert (=> b!7471887 true))

(assert (=> b!7471887 true))

(declare-fun bs!1931300 () Bool)

(declare-fun b!7471880 () Bool)

(assert (= bs!1931300 (and b!7471880 b!7471609)))

(declare-fun lambda!462808 () Int)

(assert (=> bs!1931300 (= (and (= (regOne!39682 lt!2626140) (regOne!39682 r1!5845)) (= (regTwo!39682 lt!2626140) (regTwo!39682 r1!5845))) (= lambda!462808 lambda!462788))))

(declare-fun bs!1931302 () Bool)

(assert (= bs!1931302 (and b!7471880 b!7471616)))

(assert (=> bs!1931302 (not (= lambda!462808 lambda!462785))))

(declare-fun bs!1931305 () Bool)

(assert (= bs!1931305 (and b!7471880 b!7471887)))

(assert (=> bs!1931305 (not (= lambda!462808 lambda!462806))))

(declare-fun bs!1931307 () Bool)

(assert (= bs!1931307 (and b!7471880 b!7471489)))

(assert (=> bs!1931307 (not (= lambda!462808 lambda!462772))))

(assert (=> bs!1931307 (= (and (= (_1!37613 lt!2626131) s!13591) (= (regOne!39682 lt!2626140) lt!2626140) (= (regTwo!39682 lt!2626140) rTail!78)) (= lambda!462808 lambda!462773))))

(declare-fun bs!1931309 () Bool)

(assert (= bs!1931309 (and b!7471880 b!7471594)))

(assert (=> bs!1931309 (= (and (= (regOne!39682 lt!2626140) (regOne!39682 r2!5783)) (= (regTwo!39682 lt!2626140) (regTwo!39682 r2!5783))) (= lambda!462808 lambda!462783))))

(declare-fun bs!1931310 () Bool)

(assert (= bs!1931310 (and b!7471880 b!7471497)))

(assert (=> bs!1931310 (not (= lambda!462808 lambda!462774))))

(declare-fun bs!1931311 () Bool)

(assert (= bs!1931311 (and b!7471880 b!7471601)))

(assert (=> bs!1931311 (not (= lambda!462808 lambda!462780))))

(assert (=> bs!1931310 (= (and (= (_1!37613 lt!2626131) s!13591) (= (regOne!39682 lt!2626140) r2!5783) (= (regTwo!39682 lt!2626140) rTail!78)) (= lambda!462808 lambda!462775))))

(assert (=> b!7471880 true))

(assert (=> b!7471880 true))

(declare-fun b!7471878 () Bool)

(declare-fun e!4457827 () Bool)

(declare-fun call!686068 () Bool)

(assert (=> b!7471878 (= e!4457827 call!686068)))

(declare-fun b!7471879 () Bool)

(declare-fun e!4457833 () Bool)

(declare-fun e!4457832 () Bool)

(assert (=> b!7471879 (= e!4457833 e!4457832)))

(declare-fun res!2997597 () Bool)

(assert (=> b!7471879 (= res!2997597 (matchRSpec!4264 (regOne!39683 lt!2626140) (_1!37613 lt!2626131)))))

(assert (=> b!7471879 (=> res!2997597 e!4457832)))

(declare-fun e!4457829 () Bool)

(declare-fun call!686069 () Bool)

(assert (=> b!7471880 (= e!4457829 call!686069)))

(declare-fun b!7471881 () Bool)

(assert (=> b!7471881 (= e!4457832 (matchRSpec!4264 (regTwo!39683 lt!2626140) (_1!37613 lt!2626131)))))

(declare-fun bm!686063 () Bool)

(assert (=> bm!686063 (= call!686068 (isEmpty!41173 (_1!37613 lt!2626131)))))

(declare-fun d!2299088 () Bool)

(declare-fun c!1380527 () Bool)

(assert (=> d!2299088 (= c!1380527 ((_ is EmptyExpr!19585) lt!2626140))))

(assert (=> d!2299088 (= (matchRSpec!4264 lt!2626140 (_1!37613 lt!2626131)) e!4457827)))

(declare-fun b!7471882 () Bool)

(assert (=> b!7471882 (= e!4457833 e!4457829)))

(declare-fun c!1380529 () Bool)

(assert (=> b!7471882 (= c!1380529 ((_ is Star!19585) lt!2626140))))

(declare-fun b!7471883 () Bool)

(declare-fun res!2997596 () Bool)

(declare-fun e!4457831 () Bool)

(assert (=> b!7471883 (=> res!2997596 e!4457831)))

(assert (=> b!7471883 (= res!2997596 call!686068)))

(assert (=> b!7471883 (= e!4457829 e!4457831)))

(declare-fun b!7471884 () Bool)

(declare-fun c!1380530 () Bool)

(assert (=> b!7471884 (= c!1380530 ((_ is Union!19585) lt!2626140))))

(declare-fun e!4457830 () Bool)

(assert (=> b!7471884 (= e!4457830 e!4457833)))

(declare-fun b!7471885 () Bool)

(declare-fun e!4457828 () Bool)

(assert (=> b!7471885 (= e!4457827 e!4457828)))

(declare-fun res!2997595 () Bool)

(assert (=> b!7471885 (= res!2997595 (not ((_ is EmptyLang!19585) lt!2626140)))))

(assert (=> b!7471885 (=> (not res!2997595) (not e!4457828))))

(declare-fun b!7471886 () Bool)

(declare-fun c!1380528 () Bool)

(assert (=> b!7471886 (= c!1380528 ((_ is ElementMatch!19585) lt!2626140))))

(assert (=> b!7471886 (= e!4457828 e!4457830)))

(assert (=> b!7471887 (= e!4457831 call!686069)))

(declare-fun b!7471888 () Bool)

(assert (=> b!7471888 (= e!4457830 (= (_1!37613 lt!2626131) (Cons!72177 (c!1380436 lt!2626140) Nil!72177)))))

(declare-fun bm!686064 () Bool)

(assert (=> bm!686064 (= call!686069 (Exists!4204 (ite c!1380529 lambda!462806 lambda!462808)))))

(assert (= (and d!2299088 c!1380527) b!7471878))

(assert (= (and d!2299088 (not c!1380527)) b!7471885))

(assert (= (and b!7471885 res!2997595) b!7471886))

(assert (= (and b!7471886 c!1380528) b!7471888))

(assert (= (and b!7471886 (not c!1380528)) b!7471884))

(assert (= (and b!7471884 c!1380530) b!7471879))

(assert (= (and b!7471884 (not c!1380530)) b!7471882))

(assert (= (and b!7471879 (not res!2997597)) b!7471881))

(assert (= (and b!7471882 c!1380529) b!7471883))

(assert (= (and b!7471882 (not c!1380529)) b!7471880))

(assert (= (and b!7471883 (not res!2997596)) b!7471887))

(assert (= (or b!7471887 b!7471880) bm!686064))

(assert (= (or b!7471878 b!7471883) bm!686063))

(declare-fun m!8068532 () Bool)

(assert (=> b!7471879 m!8068532))

(declare-fun m!8068534 () Bool)

(assert (=> b!7471881 m!8068534))

(assert (=> bm!686063 m!8068384))

(declare-fun m!8068536 () Bool)

(assert (=> bm!686064 m!8068536))

(assert (=> b!7471496 d!2299088))

(declare-fun d!2299100 () Bool)

(assert (=> d!2299100 (= (matchR!9349 lt!2626134 s!13591) (matchRSpec!4264 lt!2626134 s!13591))))

(declare-fun lt!2626186 () Unit!166005)

(assert (=> d!2299100 (= lt!2626186 (choose!57750 lt!2626134 s!13591))))

(assert (=> d!2299100 (validRegex!10099 lt!2626134)))

(assert (=> d!2299100 (= (mainMatchTheorem!4258 lt!2626134 s!13591) lt!2626186)))

(declare-fun bs!1931317 () Bool)

(assert (= bs!1931317 d!2299100))

(assert (=> bs!1931317 m!8068326))

(assert (=> bs!1931317 m!8068318))

(declare-fun m!8068538 () Bool)

(assert (=> bs!1931317 m!8068538))

(declare-fun m!8068540 () Bool)

(assert (=> bs!1931317 m!8068540))

(assert (=> b!7471485 d!2299100))

(declare-fun b!7471909 () Bool)

(declare-fun e!4457854 () Bool)

(assert (=> b!7471909 (= e!4457854 (nullable!8529 lt!2626134))))

(declare-fun b!7471910 () Bool)

(declare-fun e!4457852 () Bool)

(declare-fun e!4457850 () Bool)

(assert (=> b!7471910 (= e!4457852 e!4457850)))

(declare-fun c!1380538 () Bool)

(assert (=> b!7471910 (= c!1380538 ((_ is EmptyLang!19585) lt!2626134))))

(declare-fun b!7471911 () Bool)

(declare-fun e!4457848 () Bool)

(declare-fun e!4457849 () Bool)

(assert (=> b!7471911 (= e!4457848 e!4457849)))

(declare-fun res!2997612 () Bool)

(assert (=> b!7471911 (=> (not res!2997612) (not e!4457849))))

(declare-fun lt!2626187 () Bool)

(assert (=> b!7471911 (= res!2997612 (not lt!2626187))))

(declare-fun b!7471912 () Bool)

(declare-fun res!2997611 () Bool)

(declare-fun e!4457853 () Bool)

(assert (=> b!7471912 (=> (not res!2997611) (not e!4457853))))

(declare-fun call!686075 () Bool)

(assert (=> b!7471912 (= res!2997611 (not call!686075))))

(declare-fun d!2299102 () Bool)

(assert (=> d!2299102 e!4457852))

(declare-fun c!1380539 () Bool)

(assert (=> d!2299102 (= c!1380539 ((_ is EmptyExpr!19585) lt!2626134))))

(assert (=> d!2299102 (= lt!2626187 e!4457854)))

(declare-fun c!1380537 () Bool)

(assert (=> d!2299102 (= c!1380537 (isEmpty!41173 s!13591))))

(assert (=> d!2299102 (validRegex!10099 lt!2626134)))

(assert (=> d!2299102 (= (matchR!9349 lt!2626134 s!13591) lt!2626187)))

(declare-fun b!7471913 () Bool)

(declare-fun res!2997609 () Bool)

(declare-fun e!4457851 () Bool)

(assert (=> b!7471913 (=> res!2997609 e!4457851)))

(assert (=> b!7471913 (= res!2997609 (not (isEmpty!41173 (tail!14897 s!13591))))))

(declare-fun b!7471914 () Bool)

(assert (=> b!7471914 (= e!4457853 (= (head!15328 s!13591) (c!1380436 lt!2626134)))))

(declare-fun b!7471915 () Bool)

(declare-fun res!2997613 () Bool)

(assert (=> b!7471915 (=> (not res!2997613) (not e!4457853))))

(assert (=> b!7471915 (= res!2997613 (isEmpty!41173 (tail!14897 s!13591)))))

(declare-fun b!7471916 () Bool)

(declare-fun res!2997606 () Bool)

(assert (=> b!7471916 (=> res!2997606 e!4457848)))

(assert (=> b!7471916 (= res!2997606 e!4457853)))

(declare-fun res!2997610 () Bool)

(assert (=> b!7471916 (=> (not res!2997610) (not e!4457853))))

(assert (=> b!7471916 (= res!2997610 lt!2626187)))

(declare-fun b!7471917 () Bool)

(assert (=> b!7471917 (= e!4457854 (matchR!9349 (derivativeStep!5588 lt!2626134 (head!15328 s!13591)) (tail!14897 s!13591)))))

(declare-fun b!7471918 () Bool)

(assert (=> b!7471918 (= e!4457850 (not lt!2626187))))

(declare-fun b!7471919 () Bool)

(assert (=> b!7471919 (= e!4457852 (= lt!2626187 call!686075))))

(declare-fun bm!686070 () Bool)

(assert (=> bm!686070 (= call!686075 (isEmpty!41173 s!13591))))

(declare-fun b!7471920 () Bool)

(assert (=> b!7471920 (= e!4457849 e!4457851)))

(declare-fun res!2997608 () Bool)

(assert (=> b!7471920 (=> res!2997608 e!4457851)))

(assert (=> b!7471920 (= res!2997608 call!686075)))

(declare-fun b!7471921 () Bool)

(assert (=> b!7471921 (= e!4457851 (not (= (head!15328 s!13591) (c!1380436 lt!2626134))))))

(declare-fun b!7471922 () Bool)

(declare-fun res!2997607 () Bool)

(assert (=> b!7471922 (=> res!2997607 e!4457848)))

(assert (=> b!7471922 (= res!2997607 (not ((_ is ElementMatch!19585) lt!2626134)))))

(assert (=> b!7471922 (= e!4457850 e!4457848)))

(assert (= (and d!2299102 c!1380537) b!7471909))

(assert (= (and d!2299102 (not c!1380537)) b!7471917))

(assert (= (and d!2299102 c!1380539) b!7471919))

(assert (= (and d!2299102 (not c!1380539)) b!7471910))

(assert (= (and b!7471910 c!1380538) b!7471918))

(assert (= (and b!7471910 (not c!1380538)) b!7471922))

(assert (= (and b!7471922 (not res!2997607)) b!7471916))

(assert (= (and b!7471916 res!2997610) b!7471912))

(assert (= (and b!7471912 res!2997611) b!7471915))

(assert (= (and b!7471915 res!2997613) b!7471914))

(assert (= (and b!7471916 (not res!2997606)) b!7471911))

(assert (= (and b!7471911 res!2997612) b!7471920))

(assert (= (and b!7471920 (not res!2997608)) b!7471913))

(assert (= (and b!7471913 (not res!2997609)) b!7471921))

(assert (= (or b!7471919 b!7471920 b!7471912) bm!686070))

(declare-fun m!8068542 () Bool)

(assert (=> bm!686070 m!8068542))

(declare-fun m!8068546 () Bool)

(assert (=> b!7471909 m!8068546))

(declare-fun m!8068548 () Bool)

(assert (=> b!7471914 m!8068548))

(declare-fun m!8068552 () Bool)

(assert (=> b!7471915 m!8068552))

(assert (=> b!7471915 m!8068552))

(declare-fun m!8068556 () Bool)

(assert (=> b!7471915 m!8068556))

(assert (=> d!2299102 m!8068542))

(assert (=> d!2299102 m!8068540))

(assert (=> b!7471921 m!8068548))

(assert (=> b!7471917 m!8068548))

(assert (=> b!7471917 m!8068548))

(declare-fun m!8068558 () Bool)

(assert (=> b!7471917 m!8068558))

(assert (=> b!7471917 m!8068552))

(assert (=> b!7471917 m!8068558))

(assert (=> b!7471917 m!8068552))

(declare-fun m!8068560 () Bool)

(assert (=> b!7471917 m!8068560))

(assert (=> b!7471913 m!8068552))

(assert (=> b!7471913 m!8068552))

(assert (=> b!7471913 m!8068556))

(assert (=> b!7471485 d!2299102))

(declare-fun bs!1931328 () Bool)

(declare-fun b!7471932 () Bool)

(assert (= bs!1931328 (and b!7471932 b!7471609)))

(declare-fun lambda!462810 () Int)

(assert (=> bs!1931328 (not (= lambda!462810 lambda!462788))))

(declare-fun bs!1931329 () Bool)

(assert (= bs!1931329 (and b!7471932 b!7471616)))

(assert (=> bs!1931329 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626138) (reg!19914 r1!5845)) (= lt!2626138 r1!5845)) (= lambda!462810 lambda!462785))))

(declare-fun bs!1931330 () Bool)

(assert (= bs!1931330 (and b!7471932 b!7471887)))

(assert (=> bs!1931330 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626138) (reg!19914 lt!2626140)) (= lt!2626138 lt!2626140)) (= lambda!462810 lambda!462806))))

(declare-fun bs!1931333 () Bool)

(assert (= bs!1931333 (and b!7471932 b!7471489)))

(assert (=> bs!1931333 (not (= lambda!462810 lambda!462772))))

(declare-fun bs!1931336 () Bool)

(assert (= bs!1931336 (and b!7471932 b!7471880)))

(assert (=> bs!1931336 (not (= lambda!462810 lambda!462808))))

(assert (=> bs!1931333 (not (= lambda!462810 lambda!462773))))

(declare-fun bs!1931339 () Bool)

(assert (= bs!1931339 (and b!7471932 b!7471594)))

(assert (=> bs!1931339 (not (= lambda!462810 lambda!462783))))

(declare-fun bs!1931342 () Bool)

(assert (= bs!1931342 (and b!7471932 b!7471497)))

(assert (=> bs!1931342 (not (= lambda!462810 lambda!462774))))

(declare-fun bs!1931345 () Bool)

(assert (= bs!1931345 (and b!7471932 b!7471601)))

(assert (=> bs!1931345 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626138) (reg!19914 r2!5783)) (= lt!2626138 r2!5783)) (= lambda!462810 lambda!462780))))

(assert (=> bs!1931342 (not (= lambda!462810 lambda!462775))))

(assert (=> b!7471932 true))

(assert (=> b!7471932 true))

(declare-fun bs!1931351 () Bool)

(declare-fun b!7471925 () Bool)

(assert (= bs!1931351 (and b!7471925 b!7471609)))

(declare-fun lambda!462813 () Int)

(assert (=> bs!1931351 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626138) (regOne!39682 r1!5845)) (= (regTwo!39682 lt!2626138) (regTwo!39682 r1!5845))) (= lambda!462813 lambda!462788))))

(declare-fun bs!1931352 () Bool)

(assert (= bs!1931352 (and b!7471925 b!7471616)))

(assert (=> bs!1931352 (not (= lambda!462813 lambda!462785))))

(declare-fun bs!1931353 () Bool)

(assert (= bs!1931353 (and b!7471925 b!7471887)))

(assert (=> bs!1931353 (not (= lambda!462813 lambda!462806))))

(declare-fun bs!1931354 () Bool)

(assert (= bs!1931354 (and b!7471925 b!7471489)))

(assert (=> bs!1931354 (not (= lambda!462813 lambda!462772))))

(declare-fun bs!1931355 () Bool)

(assert (= bs!1931355 (and b!7471925 b!7471880)))

(assert (=> bs!1931355 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626138) (regOne!39682 lt!2626140)) (= (regTwo!39682 lt!2626138) (regTwo!39682 lt!2626140))) (= lambda!462813 lambda!462808))))

(declare-fun bs!1931356 () Bool)

(assert (= bs!1931356 (and b!7471925 b!7471932)))

(assert (=> bs!1931356 (not (= lambda!462813 lambda!462810))))

(assert (=> bs!1931354 (= (and (= (regOne!39682 lt!2626138) lt!2626140) (= (regTwo!39682 lt!2626138) rTail!78)) (= lambda!462813 lambda!462773))))

(declare-fun bs!1931358 () Bool)

(assert (= bs!1931358 (and b!7471925 b!7471594)))

(assert (=> bs!1931358 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626138) (regOne!39682 r2!5783)) (= (regTwo!39682 lt!2626138) (regTwo!39682 r2!5783))) (= lambda!462813 lambda!462783))))

(declare-fun bs!1931359 () Bool)

(assert (= bs!1931359 (and b!7471925 b!7471497)))

(assert (=> bs!1931359 (not (= lambda!462813 lambda!462774))))

(declare-fun bs!1931360 () Bool)

(assert (= bs!1931360 (and b!7471925 b!7471601)))

(assert (=> bs!1931360 (not (= lambda!462813 lambda!462780))))

(assert (=> bs!1931359 (= (and (= (regOne!39682 lt!2626138) r2!5783) (= (regTwo!39682 lt!2626138) rTail!78)) (= lambda!462813 lambda!462775))))

(assert (=> b!7471925 true))

(assert (=> b!7471925 true))

(declare-fun b!7471923 () Bool)

(declare-fun e!4457855 () Bool)

(declare-fun call!686076 () Bool)

(assert (=> b!7471923 (= e!4457855 call!686076)))

(declare-fun b!7471924 () Bool)

(declare-fun e!4457861 () Bool)

(declare-fun e!4457860 () Bool)

(assert (=> b!7471924 (= e!4457861 e!4457860)))

(declare-fun res!2997616 () Bool)

(assert (=> b!7471924 (= res!2997616 (matchRSpec!4264 (regOne!39683 lt!2626138) s!13591))))

(assert (=> b!7471924 (=> res!2997616 e!4457860)))

(declare-fun e!4457857 () Bool)

(declare-fun call!686077 () Bool)

(assert (=> b!7471925 (= e!4457857 call!686077)))

(declare-fun b!7471926 () Bool)

(assert (=> b!7471926 (= e!4457860 (matchRSpec!4264 (regTwo!39683 lt!2626138) s!13591))))

(declare-fun bm!686071 () Bool)

(assert (=> bm!686071 (= call!686076 (isEmpty!41173 s!13591))))

(declare-fun d!2299106 () Bool)

(declare-fun c!1380540 () Bool)

(assert (=> d!2299106 (= c!1380540 ((_ is EmptyExpr!19585) lt!2626138))))

(assert (=> d!2299106 (= (matchRSpec!4264 lt!2626138 s!13591) e!4457855)))

(declare-fun b!7471927 () Bool)

(assert (=> b!7471927 (= e!4457861 e!4457857)))

(declare-fun c!1380542 () Bool)

(assert (=> b!7471927 (= c!1380542 ((_ is Star!19585) lt!2626138))))

(declare-fun b!7471928 () Bool)

(declare-fun res!2997615 () Bool)

(declare-fun e!4457859 () Bool)

(assert (=> b!7471928 (=> res!2997615 e!4457859)))

(assert (=> b!7471928 (= res!2997615 call!686076)))

(assert (=> b!7471928 (= e!4457857 e!4457859)))

(declare-fun b!7471929 () Bool)

(declare-fun c!1380543 () Bool)

(assert (=> b!7471929 (= c!1380543 ((_ is Union!19585) lt!2626138))))

(declare-fun e!4457858 () Bool)

(assert (=> b!7471929 (= e!4457858 e!4457861)))

(declare-fun b!7471930 () Bool)

(declare-fun e!4457856 () Bool)

(assert (=> b!7471930 (= e!4457855 e!4457856)))

(declare-fun res!2997614 () Bool)

(assert (=> b!7471930 (= res!2997614 (not ((_ is EmptyLang!19585) lt!2626138)))))

(assert (=> b!7471930 (=> (not res!2997614) (not e!4457856))))

(declare-fun b!7471931 () Bool)

(declare-fun c!1380541 () Bool)

(assert (=> b!7471931 (= c!1380541 ((_ is ElementMatch!19585) lt!2626138))))

(assert (=> b!7471931 (= e!4457856 e!4457858)))

(assert (=> b!7471932 (= e!4457859 call!686077)))

(declare-fun b!7471933 () Bool)

(assert (=> b!7471933 (= e!4457858 (= s!13591 (Cons!72177 (c!1380436 lt!2626138) Nil!72177)))))

(declare-fun bm!686072 () Bool)

(assert (=> bm!686072 (= call!686077 (Exists!4204 (ite c!1380542 lambda!462810 lambda!462813)))))

(assert (= (and d!2299106 c!1380540) b!7471923))

(assert (= (and d!2299106 (not c!1380540)) b!7471930))

(assert (= (and b!7471930 res!2997614) b!7471931))

(assert (= (and b!7471931 c!1380541) b!7471933))

(assert (= (and b!7471931 (not c!1380541)) b!7471929))

(assert (= (and b!7471929 c!1380543) b!7471924))

(assert (= (and b!7471929 (not c!1380543)) b!7471927))

(assert (= (and b!7471924 (not res!2997616)) b!7471926))

(assert (= (and b!7471927 c!1380542) b!7471928))

(assert (= (and b!7471927 (not c!1380542)) b!7471925))

(assert (= (and b!7471928 (not res!2997615)) b!7471932))

(assert (= (or b!7471932 b!7471925) bm!686072))

(assert (= (or b!7471923 b!7471928) bm!686071))

(declare-fun m!8068574 () Bool)

(assert (=> b!7471924 m!8068574))

(declare-fun m!8068576 () Bool)

(assert (=> b!7471926 m!8068576))

(assert (=> bm!686071 m!8068542))

(declare-fun m!8068580 () Bool)

(assert (=> bm!686072 m!8068580))

(assert (=> b!7471485 d!2299106))

(declare-fun bs!1931364 () Bool)

(declare-fun b!7471966 () Bool)

(assert (= bs!1931364 (and b!7471966 b!7471609)))

(declare-fun lambda!462814 () Int)

(assert (=> bs!1931364 (not (= lambda!462814 lambda!462788))))

(declare-fun bs!1931365 () Bool)

(assert (= bs!1931365 (and b!7471966 b!7471616)))

(assert (=> bs!1931365 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626134) (reg!19914 r1!5845)) (= lt!2626134 r1!5845)) (= lambda!462814 lambda!462785))))

(declare-fun bs!1931366 () Bool)

(assert (= bs!1931366 (and b!7471966 b!7471887)))

(assert (=> bs!1931366 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626134) (reg!19914 lt!2626140)) (= lt!2626134 lt!2626140)) (= lambda!462814 lambda!462806))))

(declare-fun bs!1931367 () Bool)

(assert (= bs!1931367 (and b!7471966 b!7471489)))

(assert (=> bs!1931367 (not (= lambda!462814 lambda!462772))))

(declare-fun bs!1931368 () Bool)

(assert (= bs!1931368 (and b!7471966 b!7471880)))

(assert (=> bs!1931368 (not (= lambda!462814 lambda!462808))))

(declare-fun bs!1931369 () Bool)

(assert (= bs!1931369 (and b!7471966 b!7471932)))

(assert (=> bs!1931369 (= (and (= (reg!19914 lt!2626134) (reg!19914 lt!2626138)) (= lt!2626134 lt!2626138)) (= lambda!462814 lambda!462810))))

(declare-fun bs!1931370 () Bool)

(assert (= bs!1931370 (and b!7471966 b!7471925)))

(assert (=> bs!1931370 (not (= lambda!462814 lambda!462813))))

(assert (=> bs!1931367 (not (= lambda!462814 lambda!462773))))

(declare-fun bs!1931371 () Bool)

(assert (= bs!1931371 (and b!7471966 b!7471594)))

(assert (=> bs!1931371 (not (= lambda!462814 lambda!462783))))

(declare-fun bs!1931372 () Bool)

(assert (= bs!1931372 (and b!7471966 b!7471497)))

(assert (=> bs!1931372 (not (= lambda!462814 lambda!462774))))

(declare-fun bs!1931374 () Bool)

(assert (= bs!1931374 (and b!7471966 b!7471601)))

(assert (=> bs!1931374 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626134) (reg!19914 r2!5783)) (= lt!2626134 r2!5783)) (= lambda!462814 lambda!462780))))

(assert (=> bs!1931372 (not (= lambda!462814 lambda!462775))))

(assert (=> b!7471966 true))

(assert (=> b!7471966 true))

(declare-fun bs!1931380 () Bool)

(declare-fun b!7471959 () Bool)

(assert (= bs!1931380 (and b!7471959 b!7471609)))

(declare-fun lambda!462816 () Int)

(assert (=> bs!1931380 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626134) (regOne!39682 r1!5845)) (= (regTwo!39682 lt!2626134) (regTwo!39682 r1!5845))) (= lambda!462816 lambda!462788))))

(declare-fun bs!1931382 () Bool)

(assert (= bs!1931382 (and b!7471959 b!7471616)))

(assert (=> bs!1931382 (not (= lambda!462816 lambda!462785))))

(declare-fun bs!1931385 () Bool)

(assert (= bs!1931385 (and b!7471959 b!7471966)))

(assert (=> bs!1931385 (not (= lambda!462816 lambda!462814))))

(declare-fun bs!1931388 () Bool)

(assert (= bs!1931388 (and b!7471959 b!7471887)))

(assert (=> bs!1931388 (not (= lambda!462816 lambda!462806))))

(declare-fun bs!1931391 () Bool)

(assert (= bs!1931391 (and b!7471959 b!7471489)))

(assert (=> bs!1931391 (not (= lambda!462816 lambda!462772))))

(declare-fun bs!1931393 () Bool)

(assert (= bs!1931393 (and b!7471959 b!7471880)))

(assert (=> bs!1931393 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626134) (regOne!39682 lt!2626140)) (= (regTwo!39682 lt!2626134) (regTwo!39682 lt!2626140))) (= lambda!462816 lambda!462808))))

(declare-fun bs!1931395 () Bool)

(assert (= bs!1931395 (and b!7471959 b!7471932)))

(assert (=> bs!1931395 (not (= lambda!462816 lambda!462810))))

(declare-fun bs!1931397 () Bool)

(assert (= bs!1931397 (and b!7471959 b!7471925)))

(assert (=> bs!1931397 (= (and (= (regOne!39682 lt!2626134) (regOne!39682 lt!2626138)) (= (regTwo!39682 lt!2626134) (regTwo!39682 lt!2626138))) (= lambda!462816 lambda!462813))))

(assert (=> bs!1931391 (= (and (= (regOne!39682 lt!2626134) lt!2626140) (= (regTwo!39682 lt!2626134) rTail!78)) (= lambda!462816 lambda!462773))))

(declare-fun bs!1931399 () Bool)

(assert (= bs!1931399 (and b!7471959 b!7471594)))

(assert (=> bs!1931399 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626134) (regOne!39682 r2!5783)) (= (regTwo!39682 lt!2626134) (regTwo!39682 r2!5783))) (= lambda!462816 lambda!462783))))

(declare-fun bs!1931400 () Bool)

(assert (= bs!1931400 (and b!7471959 b!7471497)))

(assert (=> bs!1931400 (not (= lambda!462816 lambda!462774))))

(declare-fun bs!1931402 () Bool)

(assert (= bs!1931402 (and b!7471959 b!7471601)))

(assert (=> bs!1931402 (not (= lambda!462816 lambda!462780))))

(assert (=> bs!1931400 (= (and (= (regOne!39682 lt!2626134) r2!5783) (= (regTwo!39682 lt!2626134) rTail!78)) (= lambda!462816 lambda!462775))))

(assert (=> b!7471959 true))

(assert (=> b!7471959 true))

(declare-fun b!7471957 () Bool)

(declare-fun e!4457874 () Bool)

(declare-fun call!686079 () Bool)

(assert (=> b!7471957 (= e!4457874 call!686079)))

(declare-fun b!7471958 () Bool)

(declare-fun e!4457880 () Bool)

(declare-fun e!4457879 () Bool)

(assert (=> b!7471958 (= e!4457880 e!4457879)))

(declare-fun res!2997632 () Bool)

(assert (=> b!7471958 (= res!2997632 (matchRSpec!4264 (regOne!39683 lt!2626134) s!13591))))

(assert (=> b!7471958 (=> res!2997632 e!4457879)))

(declare-fun e!4457876 () Bool)

(declare-fun call!686080 () Bool)

(assert (=> b!7471959 (= e!4457876 call!686080)))

(declare-fun b!7471960 () Bool)

(assert (=> b!7471960 (= e!4457879 (matchRSpec!4264 (regTwo!39683 lt!2626134) s!13591))))

(declare-fun bm!686074 () Bool)

(assert (=> bm!686074 (= call!686079 (isEmpty!41173 s!13591))))

(declare-fun d!2299114 () Bool)

(declare-fun c!1380549 () Bool)

(assert (=> d!2299114 (= c!1380549 ((_ is EmptyExpr!19585) lt!2626134))))

(assert (=> d!2299114 (= (matchRSpec!4264 lt!2626134 s!13591) e!4457874)))

(declare-fun b!7471961 () Bool)

(assert (=> b!7471961 (= e!4457880 e!4457876)))

(declare-fun c!1380551 () Bool)

(assert (=> b!7471961 (= c!1380551 ((_ is Star!19585) lt!2626134))))

(declare-fun b!7471962 () Bool)

(declare-fun res!2997631 () Bool)

(declare-fun e!4457878 () Bool)

(assert (=> b!7471962 (=> res!2997631 e!4457878)))

(assert (=> b!7471962 (= res!2997631 call!686079)))

(assert (=> b!7471962 (= e!4457876 e!4457878)))

(declare-fun b!7471963 () Bool)

(declare-fun c!1380552 () Bool)

(assert (=> b!7471963 (= c!1380552 ((_ is Union!19585) lt!2626134))))

(declare-fun e!4457877 () Bool)

(assert (=> b!7471963 (= e!4457877 e!4457880)))

(declare-fun b!7471964 () Bool)

(declare-fun e!4457875 () Bool)

(assert (=> b!7471964 (= e!4457874 e!4457875)))

(declare-fun res!2997630 () Bool)

(assert (=> b!7471964 (= res!2997630 (not ((_ is EmptyLang!19585) lt!2626134)))))

(assert (=> b!7471964 (=> (not res!2997630) (not e!4457875))))

(declare-fun b!7471965 () Bool)

(declare-fun c!1380550 () Bool)

(assert (=> b!7471965 (= c!1380550 ((_ is ElementMatch!19585) lt!2626134))))

(assert (=> b!7471965 (= e!4457875 e!4457877)))

(assert (=> b!7471966 (= e!4457878 call!686080)))

(declare-fun b!7471967 () Bool)

(assert (=> b!7471967 (= e!4457877 (= s!13591 (Cons!72177 (c!1380436 lt!2626134) Nil!72177)))))

(declare-fun bm!686075 () Bool)

(assert (=> bm!686075 (= call!686080 (Exists!4204 (ite c!1380551 lambda!462814 lambda!462816)))))

(assert (= (and d!2299114 c!1380549) b!7471957))

(assert (= (and d!2299114 (not c!1380549)) b!7471964))

(assert (= (and b!7471964 res!2997630) b!7471965))

(assert (= (and b!7471965 c!1380550) b!7471967))

(assert (= (and b!7471965 (not c!1380550)) b!7471963))

(assert (= (and b!7471963 c!1380552) b!7471958))

(assert (= (and b!7471963 (not c!1380552)) b!7471961))

(assert (= (and b!7471958 (not res!2997632)) b!7471960))

(assert (= (and b!7471961 c!1380551) b!7471962))

(assert (= (and b!7471961 (not c!1380551)) b!7471959))

(assert (= (and b!7471962 (not res!2997631)) b!7471966))

(assert (= (or b!7471966 b!7471959) bm!686075))

(assert (= (or b!7471957 b!7471962) bm!686074))

(declare-fun m!8068630 () Bool)

(assert (=> b!7471958 m!8068630))

(declare-fun m!8068632 () Bool)

(assert (=> b!7471960 m!8068632))

(assert (=> bm!686074 m!8068542))

(declare-fun m!8068634 () Bool)

(assert (=> bm!686075 m!8068634))

(assert (=> b!7471485 d!2299114))

(declare-fun d!2299132 () Bool)

(assert (=> d!2299132 (= (matchR!9349 lt!2626138 s!13591) (matchRSpec!4264 lt!2626138 s!13591))))

(declare-fun lt!2626196 () Unit!166005)

(assert (=> d!2299132 (= lt!2626196 (choose!57750 lt!2626138 s!13591))))

(assert (=> d!2299132 (validRegex!10099 lt!2626138)))

(assert (=> d!2299132 (= (mainMatchTheorem!4258 lt!2626138 s!13591) lt!2626196)))

(declare-fun bs!1931416 () Bool)

(assert (= bs!1931416 d!2299132))

(assert (=> bs!1931416 m!8068328))

(assert (=> bs!1931416 m!8068320))

(declare-fun m!8068636 () Bool)

(assert (=> bs!1931416 m!8068636))

(declare-fun m!8068638 () Bool)

(assert (=> bs!1931416 m!8068638))

(assert (=> b!7471485 d!2299132))

(declare-fun b!7472016 () Bool)

(declare-fun e!4457915 () Bool)

(assert (=> b!7472016 (= e!4457915 (nullable!8529 lt!2626138))))

(declare-fun b!7472017 () Bool)

(declare-fun e!4457913 () Bool)

(declare-fun e!4457911 () Bool)

(assert (=> b!7472017 (= e!4457913 e!4457911)))

(declare-fun c!1380566 () Bool)

(assert (=> b!7472017 (= c!1380566 ((_ is EmptyLang!19585) lt!2626138))))

(declare-fun b!7472018 () Bool)

(declare-fun e!4457909 () Bool)

(declare-fun e!4457910 () Bool)

(assert (=> b!7472018 (= e!4457909 e!4457910)))

(declare-fun res!2997663 () Bool)

(assert (=> b!7472018 (=> (not res!2997663) (not e!4457910))))

(declare-fun lt!2626197 () Bool)

(assert (=> b!7472018 (= res!2997663 (not lt!2626197))))

(declare-fun b!7472019 () Bool)

(declare-fun res!2997662 () Bool)

(declare-fun e!4457914 () Bool)

(assert (=> b!7472019 (=> (not res!2997662) (not e!4457914))))

(declare-fun call!686088 () Bool)

(assert (=> b!7472019 (= res!2997662 (not call!686088))))

(declare-fun d!2299134 () Bool)

(assert (=> d!2299134 e!4457913))

(declare-fun c!1380567 () Bool)

(assert (=> d!2299134 (= c!1380567 ((_ is EmptyExpr!19585) lt!2626138))))

(assert (=> d!2299134 (= lt!2626197 e!4457915)))

(declare-fun c!1380565 () Bool)

(assert (=> d!2299134 (= c!1380565 (isEmpty!41173 s!13591))))

(assert (=> d!2299134 (validRegex!10099 lt!2626138)))

(assert (=> d!2299134 (= (matchR!9349 lt!2626138 s!13591) lt!2626197)))

(declare-fun b!7472020 () Bool)

(declare-fun res!2997660 () Bool)

(declare-fun e!4457912 () Bool)

(assert (=> b!7472020 (=> res!2997660 e!4457912)))

(assert (=> b!7472020 (= res!2997660 (not (isEmpty!41173 (tail!14897 s!13591))))))

(declare-fun b!7472021 () Bool)

(assert (=> b!7472021 (= e!4457914 (= (head!15328 s!13591) (c!1380436 lt!2626138)))))

(declare-fun b!7472022 () Bool)

(declare-fun res!2997664 () Bool)

(assert (=> b!7472022 (=> (not res!2997664) (not e!4457914))))

(assert (=> b!7472022 (= res!2997664 (isEmpty!41173 (tail!14897 s!13591)))))

(declare-fun b!7472023 () Bool)

(declare-fun res!2997657 () Bool)

(assert (=> b!7472023 (=> res!2997657 e!4457909)))

(assert (=> b!7472023 (= res!2997657 e!4457914)))

(declare-fun res!2997661 () Bool)

(assert (=> b!7472023 (=> (not res!2997661) (not e!4457914))))

(assert (=> b!7472023 (= res!2997661 lt!2626197)))

(declare-fun b!7472024 () Bool)

(assert (=> b!7472024 (= e!4457915 (matchR!9349 (derivativeStep!5588 lt!2626138 (head!15328 s!13591)) (tail!14897 s!13591)))))

(declare-fun b!7472025 () Bool)

(assert (=> b!7472025 (= e!4457911 (not lt!2626197))))

(declare-fun b!7472026 () Bool)

(assert (=> b!7472026 (= e!4457913 (= lt!2626197 call!686088))))

(declare-fun bm!686083 () Bool)

(assert (=> bm!686083 (= call!686088 (isEmpty!41173 s!13591))))

(declare-fun b!7472027 () Bool)

(assert (=> b!7472027 (= e!4457910 e!4457912)))

(declare-fun res!2997659 () Bool)

(assert (=> b!7472027 (=> res!2997659 e!4457912)))

(assert (=> b!7472027 (= res!2997659 call!686088)))

(declare-fun b!7472028 () Bool)

(assert (=> b!7472028 (= e!4457912 (not (= (head!15328 s!13591) (c!1380436 lt!2626138))))))

(declare-fun b!7472029 () Bool)

(declare-fun res!2997658 () Bool)

(assert (=> b!7472029 (=> res!2997658 e!4457909)))

(assert (=> b!7472029 (= res!2997658 (not ((_ is ElementMatch!19585) lt!2626138)))))

(assert (=> b!7472029 (= e!4457911 e!4457909)))

(assert (= (and d!2299134 c!1380565) b!7472016))

(assert (= (and d!2299134 (not c!1380565)) b!7472024))

(assert (= (and d!2299134 c!1380567) b!7472026))

(assert (= (and d!2299134 (not c!1380567)) b!7472017))

(assert (= (and b!7472017 c!1380566) b!7472025))

(assert (= (and b!7472017 (not c!1380566)) b!7472029))

(assert (= (and b!7472029 (not res!2997658)) b!7472023))

(assert (= (and b!7472023 res!2997661) b!7472019))

(assert (= (and b!7472019 res!2997662) b!7472022))

(assert (= (and b!7472022 res!2997664) b!7472021))

(assert (= (and b!7472023 (not res!2997657)) b!7472018))

(assert (= (and b!7472018 res!2997663) b!7472027))

(assert (= (and b!7472027 (not res!2997659)) b!7472020))

(assert (= (and b!7472020 (not res!2997660)) b!7472028))

(assert (= (or b!7472026 b!7472027 b!7472019) bm!686083))

(assert (=> bm!686083 m!8068542))

(declare-fun m!8068650 () Bool)

(assert (=> b!7472016 m!8068650))

(assert (=> b!7472021 m!8068548))

(assert (=> b!7472022 m!8068552))

(assert (=> b!7472022 m!8068552))

(assert (=> b!7472022 m!8068556))

(assert (=> d!2299134 m!8068542))

(assert (=> d!2299134 m!8068638))

(assert (=> b!7472028 m!8068548))

(assert (=> b!7472024 m!8068548))

(assert (=> b!7472024 m!8068548))

(declare-fun m!8068652 () Bool)

(assert (=> b!7472024 m!8068652))

(assert (=> b!7472024 m!8068552))

(assert (=> b!7472024 m!8068652))

(assert (=> b!7472024 m!8068552))

(declare-fun m!8068654 () Bool)

(assert (=> b!7472024 m!8068654))

(assert (=> b!7472020 m!8068552))

(assert (=> b!7472020 m!8068552))

(assert (=> b!7472020 m!8068556))

(assert (=> b!7471485 d!2299134))

(declare-fun d!2299140 () Bool)

(assert (=> d!2299140 (= (matchR!9349 lt!2626130 s!13591) (matchRSpec!4264 lt!2626130 s!13591))))

(declare-fun lt!2626200 () Unit!166005)

(assert (=> d!2299140 (= lt!2626200 (choose!57750 lt!2626130 s!13591))))

(assert (=> d!2299140 (validRegex!10099 lt!2626130)))

(assert (=> d!2299140 (= (mainMatchTheorem!4258 lt!2626130 s!13591) lt!2626200)))

(declare-fun bs!1931421 () Bool)

(assert (= bs!1931421 d!2299140))

(assert (=> bs!1931421 m!8068308))

(assert (=> bs!1931421 m!8068316))

(declare-fun m!8068662 () Bool)

(assert (=> bs!1931421 m!8068662))

(declare-fun m!8068664 () Bool)

(assert (=> bs!1931421 m!8068664))

(assert (=> b!7471491 d!2299140))

(declare-fun b!7472055 () Bool)

(declare-fun e!4457936 () Bool)

(assert (=> b!7472055 (= e!4457936 (nullable!8529 lt!2626130))))

(declare-fun b!7472056 () Bool)

(declare-fun e!4457934 () Bool)

(declare-fun e!4457932 () Bool)

(assert (=> b!7472056 (= e!4457934 e!4457932)))

(declare-fun c!1380576 () Bool)

(assert (=> b!7472056 (= c!1380576 ((_ is EmptyLang!19585) lt!2626130))))

(declare-fun b!7472057 () Bool)

(declare-fun e!4457930 () Bool)

(declare-fun e!4457931 () Bool)

(assert (=> b!7472057 (= e!4457930 e!4457931)))

(declare-fun res!2997682 () Bool)

(assert (=> b!7472057 (=> (not res!2997682) (not e!4457931))))

(declare-fun lt!2626201 () Bool)

(assert (=> b!7472057 (= res!2997682 (not lt!2626201))))

(declare-fun b!7472058 () Bool)

(declare-fun res!2997681 () Bool)

(declare-fun e!4457935 () Bool)

(assert (=> b!7472058 (=> (not res!2997681) (not e!4457935))))

(declare-fun call!686092 () Bool)

(assert (=> b!7472058 (= res!2997681 (not call!686092))))

(declare-fun d!2299144 () Bool)

(assert (=> d!2299144 e!4457934))

(declare-fun c!1380577 () Bool)

(assert (=> d!2299144 (= c!1380577 ((_ is EmptyExpr!19585) lt!2626130))))

(assert (=> d!2299144 (= lt!2626201 e!4457936)))

(declare-fun c!1380575 () Bool)

(assert (=> d!2299144 (= c!1380575 (isEmpty!41173 s!13591))))

(assert (=> d!2299144 (validRegex!10099 lt!2626130)))

(assert (=> d!2299144 (= (matchR!9349 lt!2626130 s!13591) lt!2626201)))

(declare-fun b!7472059 () Bool)

(declare-fun res!2997679 () Bool)

(declare-fun e!4457933 () Bool)

(assert (=> b!7472059 (=> res!2997679 e!4457933)))

(assert (=> b!7472059 (= res!2997679 (not (isEmpty!41173 (tail!14897 s!13591))))))

(declare-fun b!7472060 () Bool)

(assert (=> b!7472060 (= e!4457935 (= (head!15328 s!13591) (c!1380436 lt!2626130)))))

(declare-fun b!7472061 () Bool)

(declare-fun res!2997683 () Bool)

(assert (=> b!7472061 (=> (not res!2997683) (not e!4457935))))

(assert (=> b!7472061 (= res!2997683 (isEmpty!41173 (tail!14897 s!13591)))))

(declare-fun b!7472062 () Bool)

(declare-fun res!2997676 () Bool)

(assert (=> b!7472062 (=> res!2997676 e!4457930)))

(assert (=> b!7472062 (= res!2997676 e!4457935)))

(declare-fun res!2997680 () Bool)

(assert (=> b!7472062 (=> (not res!2997680) (not e!4457935))))

(assert (=> b!7472062 (= res!2997680 lt!2626201)))

(declare-fun b!7472063 () Bool)

(assert (=> b!7472063 (= e!4457936 (matchR!9349 (derivativeStep!5588 lt!2626130 (head!15328 s!13591)) (tail!14897 s!13591)))))

(declare-fun b!7472064 () Bool)

(assert (=> b!7472064 (= e!4457932 (not lt!2626201))))

(declare-fun b!7472065 () Bool)

(assert (=> b!7472065 (= e!4457934 (= lt!2626201 call!686092))))

(declare-fun bm!686087 () Bool)

(assert (=> bm!686087 (= call!686092 (isEmpty!41173 s!13591))))

(declare-fun b!7472066 () Bool)

(assert (=> b!7472066 (= e!4457931 e!4457933)))

(declare-fun res!2997678 () Bool)

(assert (=> b!7472066 (=> res!2997678 e!4457933)))

(assert (=> b!7472066 (= res!2997678 call!686092)))

(declare-fun b!7472067 () Bool)

(assert (=> b!7472067 (= e!4457933 (not (= (head!15328 s!13591) (c!1380436 lt!2626130))))))

(declare-fun b!7472068 () Bool)

(declare-fun res!2997677 () Bool)

(assert (=> b!7472068 (=> res!2997677 e!4457930)))

(assert (=> b!7472068 (= res!2997677 (not ((_ is ElementMatch!19585) lt!2626130)))))

(assert (=> b!7472068 (= e!4457932 e!4457930)))

(assert (= (and d!2299144 c!1380575) b!7472055))

(assert (= (and d!2299144 (not c!1380575)) b!7472063))

(assert (= (and d!2299144 c!1380577) b!7472065))

(assert (= (and d!2299144 (not c!1380577)) b!7472056))

(assert (= (and b!7472056 c!1380576) b!7472064))

(assert (= (and b!7472056 (not c!1380576)) b!7472068))

(assert (= (and b!7472068 (not res!2997677)) b!7472062))

(assert (= (and b!7472062 res!2997680) b!7472058))

(assert (= (and b!7472058 res!2997681) b!7472061))

(assert (= (and b!7472061 res!2997683) b!7472060))

(assert (= (and b!7472062 (not res!2997676)) b!7472057))

(assert (= (and b!7472057 res!2997682) b!7472066))

(assert (= (and b!7472066 (not res!2997678)) b!7472059))

(assert (= (and b!7472059 (not res!2997679)) b!7472067))

(assert (= (or b!7472065 b!7472066 b!7472058) bm!686087))

(assert (=> bm!686087 m!8068542))

(declare-fun m!8068666 () Bool)

(assert (=> b!7472055 m!8068666))

(assert (=> b!7472060 m!8068548))

(assert (=> b!7472061 m!8068552))

(assert (=> b!7472061 m!8068552))

(assert (=> b!7472061 m!8068556))

(assert (=> d!2299144 m!8068542))

(assert (=> d!2299144 m!8068664))

(assert (=> b!7472067 m!8068548))

(assert (=> b!7472063 m!8068548))

(assert (=> b!7472063 m!8068548))

(declare-fun m!8068668 () Bool)

(assert (=> b!7472063 m!8068668))

(assert (=> b!7472063 m!8068552))

(assert (=> b!7472063 m!8068668))

(assert (=> b!7472063 m!8068552))

(declare-fun m!8068670 () Bool)

(assert (=> b!7472063 m!8068670))

(assert (=> b!7472059 m!8068552))

(assert (=> b!7472059 m!8068552))

(assert (=> b!7472059 m!8068556))

(assert (=> b!7471491 d!2299144))

(declare-fun bs!1931439 () Bool)

(declare-fun b!7472078 () Bool)

(assert (= bs!1931439 (and b!7472078 b!7471609)))

(declare-fun lambda!462819 () Int)

(assert (=> bs!1931439 (not (= lambda!462819 lambda!462788))))

(declare-fun bs!1931441 () Bool)

(assert (= bs!1931441 (and b!7472078 b!7471616)))

(assert (=> bs!1931441 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626130) (reg!19914 r1!5845)) (= lt!2626130 r1!5845)) (= lambda!462819 lambda!462785))))

(declare-fun bs!1931442 () Bool)

(assert (= bs!1931442 (and b!7472078 b!7471966)))

(assert (=> bs!1931442 (= (and (= (reg!19914 lt!2626130) (reg!19914 lt!2626134)) (= lt!2626130 lt!2626134)) (= lambda!462819 lambda!462814))))

(declare-fun bs!1931444 () Bool)

(assert (= bs!1931444 (and b!7472078 b!7471887)))

(assert (=> bs!1931444 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626130) (reg!19914 lt!2626140)) (= lt!2626130 lt!2626140)) (= lambda!462819 lambda!462806))))

(declare-fun bs!1931447 () Bool)

(assert (= bs!1931447 (and b!7472078 b!7471489)))

(assert (=> bs!1931447 (not (= lambda!462819 lambda!462772))))

(declare-fun bs!1931450 () Bool)

(assert (= bs!1931450 (and b!7472078 b!7471880)))

(assert (=> bs!1931450 (not (= lambda!462819 lambda!462808))))

(declare-fun bs!1931453 () Bool)

(assert (= bs!1931453 (and b!7472078 b!7471932)))

(assert (=> bs!1931453 (= (and (= (reg!19914 lt!2626130) (reg!19914 lt!2626138)) (= lt!2626130 lt!2626138)) (= lambda!462819 lambda!462810))))

(declare-fun bs!1931455 () Bool)

(assert (= bs!1931455 (and b!7472078 b!7471959)))

(assert (=> bs!1931455 (not (= lambda!462819 lambda!462816))))

(declare-fun bs!1931458 () Bool)

(assert (= bs!1931458 (and b!7472078 b!7471925)))

(assert (=> bs!1931458 (not (= lambda!462819 lambda!462813))))

(assert (=> bs!1931447 (not (= lambda!462819 lambda!462773))))

(declare-fun bs!1931463 () Bool)

(assert (= bs!1931463 (and b!7472078 b!7471594)))

(assert (=> bs!1931463 (not (= lambda!462819 lambda!462783))))

(declare-fun bs!1931465 () Bool)

(assert (= bs!1931465 (and b!7472078 b!7471497)))

(assert (=> bs!1931465 (not (= lambda!462819 lambda!462774))))

(declare-fun bs!1931467 () Bool)

(assert (= bs!1931467 (and b!7472078 b!7471601)))

(assert (=> bs!1931467 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626130) (reg!19914 r2!5783)) (= lt!2626130 r2!5783)) (= lambda!462819 lambda!462780))))

(assert (=> bs!1931465 (not (= lambda!462819 lambda!462775))))

(assert (=> b!7472078 true))

(assert (=> b!7472078 true))

(declare-fun bs!1931471 () Bool)

(declare-fun b!7472071 () Bool)

(assert (= bs!1931471 (and b!7472071 b!7471609)))

(declare-fun lambda!462821 () Int)

(assert (=> bs!1931471 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626130) (regOne!39682 r1!5845)) (= (regTwo!39682 lt!2626130) (regTwo!39682 r1!5845))) (= lambda!462821 lambda!462788))))

(declare-fun bs!1931472 () Bool)

(assert (= bs!1931472 (and b!7472071 b!7471616)))

(assert (=> bs!1931472 (not (= lambda!462821 lambda!462785))))

(declare-fun bs!1931473 () Bool)

(assert (= bs!1931473 (and b!7472071 b!7471966)))

(assert (=> bs!1931473 (not (= lambda!462821 lambda!462814))))

(declare-fun bs!1931474 () Bool)

(assert (= bs!1931474 (and b!7472071 b!7471887)))

(assert (=> bs!1931474 (not (= lambda!462821 lambda!462806))))

(declare-fun bs!1931475 () Bool)

(assert (= bs!1931475 (and b!7472071 b!7471489)))

(assert (=> bs!1931475 (not (= lambda!462821 lambda!462772))))

(declare-fun bs!1931476 () Bool)

(assert (= bs!1931476 (and b!7472071 b!7471932)))

(assert (=> bs!1931476 (not (= lambda!462821 lambda!462810))))

(declare-fun bs!1931477 () Bool)

(assert (= bs!1931477 (and b!7472071 b!7471959)))

(assert (=> bs!1931477 (= (and (= (regOne!39682 lt!2626130) (regOne!39682 lt!2626134)) (= (regTwo!39682 lt!2626130) (regTwo!39682 lt!2626134))) (= lambda!462821 lambda!462816))))

(declare-fun bs!1931478 () Bool)

(assert (= bs!1931478 (and b!7472071 b!7471925)))

(assert (=> bs!1931478 (= (and (= (regOne!39682 lt!2626130) (regOne!39682 lt!2626138)) (= (regTwo!39682 lt!2626130) (regTwo!39682 lt!2626138))) (= lambda!462821 lambda!462813))))

(assert (=> bs!1931475 (= (and (= (regOne!39682 lt!2626130) lt!2626140) (= (regTwo!39682 lt!2626130) rTail!78)) (= lambda!462821 lambda!462773))))

(declare-fun bs!1931479 () Bool)

(assert (= bs!1931479 (and b!7472071 b!7471594)))

(assert (=> bs!1931479 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626130) (regOne!39682 r2!5783)) (= (regTwo!39682 lt!2626130) (regTwo!39682 r2!5783))) (= lambda!462821 lambda!462783))))

(declare-fun bs!1931480 () Bool)

(assert (= bs!1931480 (and b!7472071 b!7471497)))

(assert (=> bs!1931480 (not (= lambda!462821 lambda!462774))))

(declare-fun bs!1931481 () Bool)

(assert (= bs!1931481 (and b!7472071 b!7471601)))

(assert (=> bs!1931481 (not (= lambda!462821 lambda!462780))))

(assert (=> bs!1931480 (= (and (= (regOne!39682 lt!2626130) r2!5783) (= (regTwo!39682 lt!2626130) rTail!78)) (= lambda!462821 lambda!462775))))

(declare-fun bs!1931482 () Bool)

(assert (= bs!1931482 (and b!7472071 b!7471880)))

(assert (=> bs!1931482 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626130) (regOne!39682 lt!2626140)) (= (regTwo!39682 lt!2626130) (regTwo!39682 lt!2626140))) (= lambda!462821 lambda!462808))))

(declare-fun bs!1931483 () Bool)

(assert (= bs!1931483 (and b!7472071 b!7472078)))

(assert (=> bs!1931483 (not (= lambda!462821 lambda!462819))))

(assert (=> b!7472071 true))

(assert (=> b!7472071 true))

(declare-fun b!7472069 () Bool)

(declare-fun e!4457937 () Bool)

(declare-fun call!686093 () Bool)

(assert (=> b!7472069 (= e!4457937 call!686093)))

(declare-fun b!7472070 () Bool)

(declare-fun e!4457943 () Bool)

(declare-fun e!4457942 () Bool)

(assert (=> b!7472070 (= e!4457943 e!4457942)))

(declare-fun res!2997686 () Bool)

(assert (=> b!7472070 (= res!2997686 (matchRSpec!4264 (regOne!39683 lt!2626130) s!13591))))

(assert (=> b!7472070 (=> res!2997686 e!4457942)))

(declare-fun e!4457939 () Bool)

(declare-fun call!686094 () Bool)

(assert (=> b!7472071 (= e!4457939 call!686094)))

(declare-fun b!7472072 () Bool)

(assert (=> b!7472072 (= e!4457942 (matchRSpec!4264 (regTwo!39683 lt!2626130) s!13591))))

(declare-fun bm!686088 () Bool)

(assert (=> bm!686088 (= call!686093 (isEmpty!41173 s!13591))))

(declare-fun d!2299146 () Bool)

(declare-fun c!1380578 () Bool)

(assert (=> d!2299146 (= c!1380578 ((_ is EmptyExpr!19585) lt!2626130))))

(assert (=> d!2299146 (= (matchRSpec!4264 lt!2626130 s!13591) e!4457937)))

(declare-fun b!7472073 () Bool)

(assert (=> b!7472073 (= e!4457943 e!4457939)))

(declare-fun c!1380580 () Bool)

(assert (=> b!7472073 (= c!1380580 ((_ is Star!19585) lt!2626130))))

(declare-fun b!7472074 () Bool)

(declare-fun res!2997685 () Bool)

(declare-fun e!4457941 () Bool)

(assert (=> b!7472074 (=> res!2997685 e!4457941)))

(assert (=> b!7472074 (= res!2997685 call!686093)))

(assert (=> b!7472074 (= e!4457939 e!4457941)))

(declare-fun b!7472075 () Bool)

(declare-fun c!1380581 () Bool)

(assert (=> b!7472075 (= c!1380581 ((_ is Union!19585) lt!2626130))))

(declare-fun e!4457940 () Bool)

(assert (=> b!7472075 (= e!4457940 e!4457943)))

(declare-fun b!7472076 () Bool)

(declare-fun e!4457938 () Bool)

(assert (=> b!7472076 (= e!4457937 e!4457938)))

(declare-fun res!2997684 () Bool)

(assert (=> b!7472076 (= res!2997684 (not ((_ is EmptyLang!19585) lt!2626130)))))

(assert (=> b!7472076 (=> (not res!2997684) (not e!4457938))))

(declare-fun b!7472077 () Bool)

(declare-fun c!1380579 () Bool)

(assert (=> b!7472077 (= c!1380579 ((_ is ElementMatch!19585) lt!2626130))))

(assert (=> b!7472077 (= e!4457938 e!4457940)))

(assert (=> b!7472078 (= e!4457941 call!686094)))

(declare-fun b!7472079 () Bool)

(assert (=> b!7472079 (= e!4457940 (= s!13591 (Cons!72177 (c!1380436 lt!2626130) Nil!72177)))))

(declare-fun bm!686089 () Bool)

(assert (=> bm!686089 (= call!686094 (Exists!4204 (ite c!1380580 lambda!462819 lambda!462821)))))

(assert (= (and d!2299146 c!1380578) b!7472069))

(assert (= (and d!2299146 (not c!1380578)) b!7472076))

(assert (= (and b!7472076 res!2997684) b!7472077))

(assert (= (and b!7472077 c!1380579) b!7472079))

(assert (= (and b!7472077 (not c!1380579)) b!7472075))

(assert (= (and b!7472075 c!1380581) b!7472070))

(assert (= (and b!7472075 (not c!1380581)) b!7472073))

(assert (= (and b!7472070 (not res!2997686)) b!7472072))

(assert (= (and b!7472073 c!1380580) b!7472074))

(assert (= (and b!7472073 (not c!1380580)) b!7472071))

(assert (= (and b!7472074 (not res!2997685)) b!7472078))

(assert (= (or b!7472078 b!7472071) bm!686089))

(assert (= (or b!7472069 b!7472074) bm!686088))

(declare-fun m!8068678 () Bool)

(assert (=> b!7472070 m!8068678))

(declare-fun m!8068680 () Bool)

(assert (=> b!7472072 m!8068680))

(assert (=> bm!686088 m!8068542))

(declare-fun m!8068682 () Bool)

(assert (=> bm!686089 m!8068682))

(assert (=> b!7471491 d!2299146))

(declare-fun d!2299148 () Bool)

(assert (=> d!2299148 (= (matchR!9349 lt!2626129 s!13591) (matchRSpec!4264 lt!2626129 s!13591))))

(declare-fun lt!2626202 () Unit!166005)

(assert (=> d!2299148 (= lt!2626202 (choose!57750 lt!2626129 s!13591))))

(assert (=> d!2299148 (validRegex!10099 lt!2626129)))

(assert (=> d!2299148 (= (mainMatchTheorem!4258 lt!2626129 s!13591) lt!2626202)))

(declare-fun bs!1931484 () Bool)

(assert (= bs!1931484 d!2299148))

(assert (=> bs!1931484 m!8068312))

(assert (=> bs!1931484 m!8068314))

(declare-fun m!8068684 () Bool)

(assert (=> bs!1931484 m!8068684))

(declare-fun m!8068686 () Bool)

(assert (=> bs!1931484 m!8068686))

(assert (=> b!7471491 d!2299148))

(declare-fun bs!1931485 () Bool)

(declare-fun b!7472164 () Bool)

(assert (= bs!1931485 (and b!7472164 b!7471609)))

(declare-fun lambda!462822 () Int)

(assert (=> bs!1931485 (not (= lambda!462822 lambda!462788))))

(declare-fun bs!1931486 () Bool)

(assert (= bs!1931486 (and b!7472164 b!7472071)))

(assert (=> bs!1931486 (not (= lambda!462822 lambda!462821))))

(declare-fun bs!1931487 () Bool)

(assert (= bs!1931487 (and b!7472164 b!7471616)))

(assert (=> bs!1931487 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626129) (reg!19914 r1!5845)) (= lt!2626129 r1!5845)) (= lambda!462822 lambda!462785))))

(declare-fun bs!1931488 () Bool)

(assert (= bs!1931488 (and b!7472164 b!7471966)))

(assert (=> bs!1931488 (= (and (= (reg!19914 lt!2626129) (reg!19914 lt!2626134)) (= lt!2626129 lt!2626134)) (= lambda!462822 lambda!462814))))

(declare-fun bs!1931489 () Bool)

(assert (= bs!1931489 (and b!7472164 b!7471887)))

(assert (=> bs!1931489 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626129) (reg!19914 lt!2626140)) (= lt!2626129 lt!2626140)) (= lambda!462822 lambda!462806))))

(declare-fun bs!1931490 () Bool)

(assert (= bs!1931490 (and b!7472164 b!7471489)))

(assert (=> bs!1931490 (not (= lambda!462822 lambda!462772))))

(declare-fun bs!1931491 () Bool)

(assert (= bs!1931491 (and b!7472164 b!7471932)))

(assert (=> bs!1931491 (= (and (= (reg!19914 lt!2626129) (reg!19914 lt!2626138)) (= lt!2626129 lt!2626138)) (= lambda!462822 lambda!462810))))

(declare-fun bs!1931492 () Bool)

(assert (= bs!1931492 (and b!7472164 b!7471959)))

(assert (=> bs!1931492 (not (= lambda!462822 lambda!462816))))

(declare-fun bs!1931493 () Bool)

(assert (= bs!1931493 (and b!7472164 b!7471925)))

(assert (=> bs!1931493 (not (= lambda!462822 lambda!462813))))

(assert (=> bs!1931490 (not (= lambda!462822 lambda!462773))))

(declare-fun bs!1931494 () Bool)

(assert (= bs!1931494 (and b!7472164 b!7471594)))

(assert (=> bs!1931494 (not (= lambda!462822 lambda!462783))))

(declare-fun bs!1931495 () Bool)

(assert (= bs!1931495 (and b!7472164 b!7471497)))

(assert (=> bs!1931495 (not (= lambda!462822 lambda!462774))))

(declare-fun bs!1931496 () Bool)

(assert (= bs!1931496 (and b!7472164 b!7471601)))

(assert (=> bs!1931496 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (reg!19914 lt!2626129) (reg!19914 r2!5783)) (= lt!2626129 r2!5783)) (= lambda!462822 lambda!462780))))

(assert (=> bs!1931495 (not (= lambda!462822 lambda!462775))))

(declare-fun bs!1931497 () Bool)

(assert (= bs!1931497 (and b!7472164 b!7471880)))

(assert (=> bs!1931497 (not (= lambda!462822 lambda!462808))))

(declare-fun bs!1931498 () Bool)

(assert (= bs!1931498 (and b!7472164 b!7472078)))

(assert (=> bs!1931498 (= (and (= (reg!19914 lt!2626129) (reg!19914 lt!2626130)) (= lt!2626129 lt!2626130)) (= lambda!462822 lambda!462819))))

(assert (=> b!7472164 true))

(assert (=> b!7472164 true))

(declare-fun bs!1931499 () Bool)

(declare-fun b!7472157 () Bool)

(assert (= bs!1931499 (and b!7472157 b!7471609)))

(declare-fun lambda!462823 () Int)

(assert (=> bs!1931499 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626129) (regOne!39682 r1!5845)) (= (regTwo!39682 lt!2626129) (regTwo!39682 r1!5845))) (= lambda!462823 lambda!462788))))

(declare-fun bs!1931500 () Bool)

(assert (= bs!1931500 (and b!7472157 b!7472071)))

(assert (=> bs!1931500 (= (and (= (regOne!39682 lt!2626129) (regOne!39682 lt!2626130)) (= (regTwo!39682 lt!2626129) (regTwo!39682 lt!2626130))) (= lambda!462823 lambda!462821))))

(declare-fun bs!1931501 () Bool)

(assert (= bs!1931501 (and b!7472157 b!7471616)))

(assert (=> bs!1931501 (not (= lambda!462823 lambda!462785))))

(declare-fun bs!1931502 () Bool)

(assert (= bs!1931502 (and b!7472157 b!7471966)))

(assert (=> bs!1931502 (not (= lambda!462823 lambda!462814))))

(declare-fun bs!1931503 () Bool)

(assert (= bs!1931503 (and b!7472157 b!7471887)))

(assert (=> bs!1931503 (not (= lambda!462823 lambda!462806))))

(declare-fun bs!1931504 () Bool)

(assert (= bs!1931504 (and b!7472157 b!7471489)))

(assert (=> bs!1931504 (not (= lambda!462823 lambda!462772))))

(declare-fun bs!1931505 () Bool)

(assert (= bs!1931505 (and b!7472157 b!7472164)))

(assert (=> bs!1931505 (not (= lambda!462823 lambda!462822))))

(declare-fun bs!1931506 () Bool)

(assert (= bs!1931506 (and b!7472157 b!7471932)))

(assert (=> bs!1931506 (not (= lambda!462823 lambda!462810))))

(declare-fun bs!1931507 () Bool)

(assert (= bs!1931507 (and b!7472157 b!7471959)))

(assert (=> bs!1931507 (= (and (= (regOne!39682 lt!2626129) (regOne!39682 lt!2626134)) (= (regTwo!39682 lt!2626129) (regTwo!39682 lt!2626134))) (= lambda!462823 lambda!462816))))

(declare-fun bs!1931508 () Bool)

(assert (= bs!1931508 (and b!7472157 b!7471925)))

(assert (=> bs!1931508 (= (and (= (regOne!39682 lt!2626129) (regOne!39682 lt!2626138)) (= (regTwo!39682 lt!2626129) (regTwo!39682 lt!2626138))) (= lambda!462823 lambda!462813))))

(assert (=> bs!1931504 (= (and (= (regOne!39682 lt!2626129) lt!2626140) (= (regTwo!39682 lt!2626129) rTail!78)) (= lambda!462823 lambda!462773))))

(declare-fun bs!1931509 () Bool)

(assert (= bs!1931509 (and b!7472157 b!7471594)))

(assert (=> bs!1931509 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626129) (regOne!39682 r2!5783)) (= (regTwo!39682 lt!2626129) (regTwo!39682 r2!5783))) (= lambda!462823 lambda!462783))))

(declare-fun bs!1931510 () Bool)

(assert (= bs!1931510 (and b!7472157 b!7471497)))

(assert (=> bs!1931510 (not (= lambda!462823 lambda!462774))))

(declare-fun bs!1931511 () Bool)

(assert (= bs!1931511 (and b!7472157 b!7471601)))

(assert (=> bs!1931511 (not (= lambda!462823 lambda!462780))))

(assert (=> bs!1931510 (= (and (= (regOne!39682 lt!2626129) r2!5783) (= (regTwo!39682 lt!2626129) rTail!78)) (= lambda!462823 lambda!462775))))

(declare-fun bs!1931512 () Bool)

(assert (= bs!1931512 (and b!7472157 b!7471880)))

(assert (=> bs!1931512 (= (and (= s!13591 (_1!37613 lt!2626131)) (= (regOne!39682 lt!2626129) (regOne!39682 lt!2626140)) (= (regTwo!39682 lt!2626129) (regTwo!39682 lt!2626140))) (= lambda!462823 lambda!462808))))

(declare-fun bs!1931513 () Bool)

(assert (= bs!1931513 (and b!7472157 b!7472078)))

(assert (=> bs!1931513 (not (= lambda!462823 lambda!462819))))

(assert (=> b!7472157 true))

(assert (=> b!7472157 true))

(declare-fun b!7472155 () Bool)

(declare-fun e!4457964 () Bool)

(declare-fun call!686095 () Bool)

(assert (=> b!7472155 (= e!4457964 call!686095)))

(declare-fun b!7472156 () Bool)

(declare-fun e!4457970 () Bool)

(declare-fun e!4457969 () Bool)

(assert (=> b!7472156 (= e!4457970 e!4457969)))

(declare-fun res!2997689 () Bool)

(assert (=> b!7472156 (= res!2997689 (matchRSpec!4264 (regOne!39683 lt!2626129) s!13591))))

(assert (=> b!7472156 (=> res!2997689 e!4457969)))

(declare-fun e!4457966 () Bool)

(declare-fun call!686096 () Bool)

(assert (=> b!7472157 (= e!4457966 call!686096)))

(declare-fun b!7472158 () Bool)

(assert (=> b!7472158 (= e!4457969 (matchRSpec!4264 (regTwo!39683 lt!2626129) s!13591))))

(declare-fun bm!686090 () Bool)

(assert (=> bm!686090 (= call!686095 (isEmpty!41173 s!13591))))

(declare-fun d!2299150 () Bool)

(declare-fun c!1380582 () Bool)

(assert (=> d!2299150 (= c!1380582 ((_ is EmptyExpr!19585) lt!2626129))))

(assert (=> d!2299150 (= (matchRSpec!4264 lt!2626129 s!13591) e!4457964)))

(declare-fun b!7472159 () Bool)

(assert (=> b!7472159 (= e!4457970 e!4457966)))

(declare-fun c!1380584 () Bool)

(assert (=> b!7472159 (= c!1380584 ((_ is Star!19585) lt!2626129))))

(declare-fun b!7472160 () Bool)

(declare-fun res!2997688 () Bool)

(declare-fun e!4457968 () Bool)

(assert (=> b!7472160 (=> res!2997688 e!4457968)))

(assert (=> b!7472160 (= res!2997688 call!686095)))

(assert (=> b!7472160 (= e!4457966 e!4457968)))

(declare-fun b!7472161 () Bool)

(declare-fun c!1380585 () Bool)

(assert (=> b!7472161 (= c!1380585 ((_ is Union!19585) lt!2626129))))

(declare-fun e!4457967 () Bool)

(assert (=> b!7472161 (= e!4457967 e!4457970)))

(declare-fun b!7472162 () Bool)

(declare-fun e!4457965 () Bool)

(assert (=> b!7472162 (= e!4457964 e!4457965)))

(declare-fun res!2997687 () Bool)

(assert (=> b!7472162 (= res!2997687 (not ((_ is EmptyLang!19585) lt!2626129)))))

(assert (=> b!7472162 (=> (not res!2997687) (not e!4457965))))

(declare-fun b!7472163 () Bool)

(declare-fun c!1380583 () Bool)

(assert (=> b!7472163 (= c!1380583 ((_ is ElementMatch!19585) lt!2626129))))

(assert (=> b!7472163 (= e!4457965 e!4457967)))

(assert (=> b!7472164 (= e!4457968 call!686096)))

(declare-fun b!7472165 () Bool)

(assert (=> b!7472165 (= e!4457967 (= s!13591 (Cons!72177 (c!1380436 lt!2626129) Nil!72177)))))

(declare-fun bm!686091 () Bool)

(assert (=> bm!686091 (= call!686096 (Exists!4204 (ite c!1380584 lambda!462822 lambda!462823)))))

(assert (= (and d!2299150 c!1380582) b!7472155))

(assert (= (and d!2299150 (not c!1380582)) b!7472162))

(assert (= (and b!7472162 res!2997687) b!7472163))

(assert (= (and b!7472163 c!1380583) b!7472165))

(assert (= (and b!7472163 (not c!1380583)) b!7472161))

(assert (= (and b!7472161 c!1380585) b!7472156))

(assert (= (and b!7472161 (not c!1380585)) b!7472159))

(assert (= (and b!7472156 (not res!2997689)) b!7472158))

(assert (= (and b!7472159 c!1380584) b!7472160))

(assert (= (and b!7472159 (not c!1380584)) b!7472157))

(assert (= (and b!7472160 (not res!2997688)) b!7472164))

(assert (= (or b!7472164 b!7472157) bm!686091))

(assert (= (or b!7472155 b!7472160) bm!686090))

(declare-fun m!8068688 () Bool)

(assert (=> b!7472156 m!8068688))

(declare-fun m!8068690 () Bool)

(assert (=> b!7472158 m!8068690))

(assert (=> bm!686090 m!8068542))

(declare-fun m!8068692 () Bool)

(assert (=> bm!686091 m!8068692))

(assert (=> b!7471491 d!2299150))

(declare-fun b!7472166 () Bool)

(declare-fun e!4457977 () Bool)

(assert (=> b!7472166 (= e!4457977 (nullable!8529 lt!2626129))))

(declare-fun b!7472167 () Bool)

(declare-fun e!4457975 () Bool)

(declare-fun e!4457973 () Bool)

(assert (=> b!7472167 (= e!4457975 e!4457973)))

(declare-fun c!1380587 () Bool)

(assert (=> b!7472167 (= c!1380587 ((_ is EmptyLang!19585) lt!2626129))))

(declare-fun b!7472168 () Bool)

(declare-fun e!4457971 () Bool)

(declare-fun e!4457972 () Bool)

(assert (=> b!7472168 (= e!4457971 e!4457972)))

(declare-fun res!2997696 () Bool)

(assert (=> b!7472168 (=> (not res!2997696) (not e!4457972))))

(declare-fun lt!2626203 () Bool)

(assert (=> b!7472168 (= res!2997696 (not lt!2626203))))

(declare-fun b!7472169 () Bool)

(declare-fun res!2997695 () Bool)

(declare-fun e!4457976 () Bool)

(assert (=> b!7472169 (=> (not res!2997695) (not e!4457976))))

(declare-fun call!686097 () Bool)

(assert (=> b!7472169 (= res!2997695 (not call!686097))))

(declare-fun d!2299152 () Bool)

(assert (=> d!2299152 e!4457975))

(declare-fun c!1380588 () Bool)

(assert (=> d!2299152 (= c!1380588 ((_ is EmptyExpr!19585) lt!2626129))))

(assert (=> d!2299152 (= lt!2626203 e!4457977)))

(declare-fun c!1380586 () Bool)

(assert (=> d!2299152 (= c!1380586 (isEmpty!41173 s!13591))))

(assert (=> d!2299152 (validRegex!10099 lt!2626129)))

(assert (=> d!2299152 (= (matchR!9349 lt!2626129 s!13591) lt!2626203)))

(declare-fun b!7472170 () Bool)

(declare-fun res!2997693 () Bool)

(declare-fun e!4457974 () Bool)

(assert (=> b!7472170 (=> res!2997693 e!4457974)))

(assert (=> b!7472170 (= res!2997693 (not (isEmpty!41173 (tail!14897 s!13591))))))

(declare-fun b!7472171 () Bool)

(assert (=> b!7472171 (= e!4457976 (= (head!15328 s!13591) (c!1380436 lt!2626129)))))

(declare-fun b!7472172 () Bool)

(declare-fun res!2997697 () Bool)

(assert (=> b!7472172 (=> (not res!2997697) (not e!4457976))))

(assert (=> b!7472172 (= res!2997697 (isEmpty!41173 (tail!14897 s!13591)))))

(declare-fun b!7472173 () Bool)

(declare-fun res!2997690 () Bool)

(assert (=> b!7472173 (=> res!2997690 e!4457971)))

(assert (=> b!7472173 (= res!2997690 e!4457976)))

(declare-fun res!2997694 () Bool)

(assert (=> b!7472173 (=> (not res!2997694) (not e!4457976))))

(assert (=> b!7472173 (= res!2997694 lt!2626203)))

(declare-fun b!7472174 () Bool)

(assert (=> b!7472174 (= e!4457977 (matchR!9349 (derivativeStep!5588 lt!2626129 (head!15328 s!13591)) (tail!14897 s!13591)))))

(declare-fun b!7472175 () Bool)

(assert (=> b!7472175 (= e!4457973 (not lt!2626203))))

(declare-fun b!7472176 () Bool)

(assert (=> b!7472176 (= e!4457975 (= lt!2626203 call!686097))))

(declare-fun bm!686092 () Bool)

(assert (=> bm!686092 (= call!686097 (isEmpty!41173 s!13591))))

(declare-fun b!7472177 () Bool)

(assert (=> b!7472177 (= e!4457972 e!4457974)))

(declare-fun res!2997692 () Bool)

(assert (=> b!7472177 (=> res!2997692 e!4457974)))

(assert (=> b!7472177 (= res!2997692 call!686097)))

(declare-fun b!7472178 () Bool)

(assert (=> b!7472178 (= e!4457974 (not (= (head!15328 s!13591) (c!1380436 lt!2626129))))))

(declare-fun b!7472179 () Bool)

(declare-fun res!2997691 () Bool)

(assert (=> b!7472179 (=> res!2997691 e!4457971)))

(assert (=> b!7472179 (= res!2997691 (not ((_ is ElementMatch!19585) lt!2626129)))))

(assert (=> b!7472179 (= e!4457973 e!4457971)))

(assert (= (and d!2299152 c!1380586) b!7472166))

(assert (= (and d!2299152 (not c!1380586)) b!7472174))

(assert (= (and d!2299152 c!1380588) b!7472176))

(assert (= (and d!2299152 (not c!1380588)) b!7472167))

(assert (= (and b!7472167 c!1380587) b!7472175))

(assert (= (and b!7472167 (not c!1380587)) b!7472179))

(assert (= (and b!7472179 (not res!2997691)) b!7472173))

(assert (= (and b!7472173 res!2997694) b!7472169))

(assert (= (and b!7472169 res!2997695) b!7472172))

(assert (= (and b!7472172 res!2997697) b!7472171))

(assert (= (and b!7472173 (not res!2997690)) b!7472168))

(assert (= (and b!7472168 res!2997696) b!7472177))

(assert (= (and b!7472177 (not res!2997692)) b!7472170))

(assert (= (and b!7472170 (not res!2997693)) b!7472178))

(assert (= (or b!7472176 b!7472177 b!7472169) bm!686092))

(assert (=> bm!686092 m!8068542))

(declare-fun m!8068694 () Bool)

(assert (=> b!7472166 m!8068694))

(assert (=> b!7472171 m!8068548))

(assert (=> b!7472172 m!8068552))

(assert (=> b!7472172 m!8068552))

(assert (=> b!7472172 m!8068556))

(assert (=> d!2299152 m!8068542))

(assert (=> d!2299152 m!8068686))

(assert (=> b!7472178 m!8068548))

(assert (=> b!7472174 m!8068548))

(assert (=> b!7472174 m!8068548))

(declare-fun m!8068696 () Bool)

(assert (=> b!7472174 m!8068696))

(assert (=> b!7472174 m!8068552))

(assert (=> b!7472174 m!8068696))

(assert (=> b!7472174 m!8068552))

(declare-fun m!8068698 () Bool)

(assert (=> b!7472174 m!8068698))

(assert (=> b!7472170 m!8068552))

(assert (=> b!7472170 m!8068552))

(assert (=> b!7472170 m!8068556))

(assert (=> b!7471491 d!2299152))

(declare-fun d!2299154 () Bool)

(declare-fun choose!57751 (Int) Bool)

(assert (=> d!2299154 (= (Exists!4204 lambda!462773) (choose!57751 lambda!462773))))

(declare-fun bs!1931514 () Bool)

(assert (= bs!1931514 d!2299154))

(declare-fun m!8068700 () Bool)

(assert (=> bs!1931514 m!8068700))

(assert (=> b!7471489 d!2299154))

(declare-fun d!2299156 () Bool)

(declare-fun e!4457990 () Bool)

(assert (=> d!2299156 e!4457990))

(declare-fun res!2997710 () Bool)

(assert (=> d!2299156 (=> res!2997710 e!4457990)))

(declare-fun e!4457992 () Bool)

(assert (=> d!2299156 (= res!2997710 e!4457992)))

(declare-fun res!2997708 () Bool)

(assert (=> d!2299156 (=> (not res!2997708) (not e!4457992))))

(declare-fun lt!2626212 () Option!17142)

(assert (=> d!2299156 (= res!2997708 (isDefined!13831 lt!2626212))))

(declare-fun e!4457989 () Option!17142)

(assert (=> d!2299156 (= lt!2626212 e!4457989)))

(declare-fun c!1380594 () Bool)

(declare-fun e!4457991 () Bool)

(assert (=> d!2299156 (= c!1380594 e!4457991)))

(declare-fun res!2997712 () Bool)

(assert (=> d!2299156 (=> (not res!2997712) (not e!4457991))))

(assert (=> d!2299156 (= res!2997712 (matchR!9349 lt!2626140 Nil!72177))))

(assert (=> d!2299156 (validRegex!10099 lt!2626140)))

(assert (=> d!2299156 (= (findConcatSeparation!3264 lt!2626140 rTail!78 Nil!72177 s!13591 s!13591) lt!2626212)))

(declare-fun b!7472198 () Bool)

(assert (=> b!7472198 (= e!4457991 (matchR!9349 rTail!78 s!13591))))

(declare-fun b!7472199 () Bool)

(declare-fun ++!17203 (List!72301 List!72301) List!72301)

(assert (=> b!7472199 (= e!4457992 (= (++!17203 (_1!37613 (get!25241 lt!2626212)) (_2!37613 (get!25241 lt!2626212))) s!13591))))

(declare-fun b!7472200 () Bool)

(declare-fun e!4457988 () Option!17142)

(assert (=> b!7472200 (= e!4457989 e!4457988)))

(declare-fun c!1380593 () Bool)

(assert (=> b!7472200 (= c!1380593 ((_ is Nil!72177) s!13591))))

(declare-fun b!7472201 () Bool)

(assert (=> b!7472201 (= e!4457990 (not (isDefined!13831 lt!2626212)))))

(declare-fun b!7472202 () Bool)

(assert (=> b!7472202 (= e!4457989 (Some!17141 (tuple2!68621 Nil!72177 s!13591)))))

(declare-fun b!7472203 () Bool)

(declare-fun res!2997711 () Bool)

(assert (=> b!7472203 (=> (not res!2997711) (not e!4457992))))

(assert (=> b!7472203 (= res!2997711 (matchR!9349 lt!2626140 (_1!37613 (get!25241 lt!2626212))))))

(declare-fun b!7472204 () Bool)

(declare-fun lt!2626210 () Unit!166005)

(declare-fun lt!2626211 () Unit!166005)

(assert (=> b!7472204 (= lt!2626210 lt!2626211)))

(assert (=> b!7472204 (= (++!17203 (++!17203 Nil!72177 (Cons!72177 (h!78625 s!13591) Nil!72177)) (t!386870 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3081 (List!72301 C!39444 List!72301 List!72301) Unit!166005)

(assert (=> b!7472204 (= lt!2626211 (lemmaMoveElementToOtherListKeepsConcatEq!3081 Nil!72177 (h!78625 s!13591) (t!386870 s!13591) s!13591))))

(assert (=> b!7472204 (= e!4457988 (findConcatSeparation!3264 lt!2626140 rTail!78 (++!17203 Nil!72177 (Cons!72177 (h!78625 s!13591) Nil!72177)) (t!386870 s!13591) s!13591))))

(declare-fun b!7472205 () Bool)

(assert (=> b!7472205 (= e!4457988 None!17141)))

(declare-fun b!7472206 () Bool)

(declare-fun res!2997709 () Bool)

(assert (=> b!7472206 (=> (not res!2997709) (not e!4457992))))

(assert (=> b!7472206 (= res!2997709 (matchR!9349 rTail!78 (_2!37613 (get!25241 lt!2626212))))))

(assert (= (and d!2299156 res!2997712) b!7472198))

(assert (= (and d!2299156 c!1380594) b!7472202))

(assert (= (and d!2299156 (not c!1380594)) b!7472200))

(assert (= (and b!7472200 c!1380593) b!7472205))

(assert (= (and b!7472200 (not c!1380593)) b!7472204))

(assert (= (and d!2299156 res!2997708) b!7472203))

(assert (= (and b!7472203 res!2997711) b!7472206))

(assert (= (and b!7472206 res!2997709) b!7472199))

(assert (= (and d!2299156 (not res!2997710)) b!7472201))

(declare-fun m!8068702 () Bool)

(assert (=> b!7472198 m!8068702))

(declare-fun m!8068704 () Bool)

(assert (=> d!2299156 m!8068704))

(declare-fun m!8068706 () Bool)

(assert (=> d!2299156 m!8068706))

(assert (=> d!2299156 m!8068298))

(declare-fun m!8068708 () Bool)

(assert (=> b!7472204 m!8068708))

(assert (=> b!7472204 m!8068708))

(declare-fun m!8068710 () Bool)

(assert (=> b!7472204 m!8068710))

(declare-fun m!8068712 () Bool)

(assert (=> b!7472204 m!8068712))

(assert (=> b!7472204 m!8068708))

(declare-fun m!8068714 () Bool)

(assert (=> b!7472204 m!8068714))

(assert (=> b!7472201 m!8068704))

(declare-fun m!8068716 () Bool)

(assert (=> b!7472206 m!8068716))

(declare-fun m!8068718 () Bool)

(assert (=> b!7472206 m!8068718))

(assert (=> b!7472203 m!8068716))

(declare-fun m!8068720 () Bool)

(assert (=> b!7472203 m!8068720))

(assert (=> b!7472199 m!8068716))

(declare-fun m!8068722 () Bool)

(assert (=> b!7472199 m!8068722))

(assert (=> b!7471489 d!2299156))

(declare-fun d!2299158 () Bool)

(assert (=> d!2299158 (= (Exists!4204 lambda!462772) (choose!57751 lambda!462772))))

(declare-fun bs!1931515 () Bool)

(assert (= bs!1931515 d!2299158))

(declare-fun m!8068724 () Bool)

(assert (=> bs!1931515 m!8068724))

(assert (=> b!7471489 d!2299158))

(declare-fun bs!1931516 () Bool)

(declare-fun d!2299160 () Bool)

(assert (= bs!1931516 (and d!2299160 b!7471609)))

(declare-fun lambda!462828 () Int)

(assert (=> bs!1931516 (not (= lambda!462828 lambda!462788))))

(declare-fun bs!1931517 () Bool)

(assert (= bs!1931517 (and d!2299160 b!7472071)))

(assert (=> bs!1931517 (not (= lambda!462828 lambda!462821))))

(declare-fun bs!1931518 () Bool)

(assert (= bs!1931518 (and d!2299160 b!7471966)))

(assert (=> bs!1931518 (not (= lambda!462828 lambda!462814))))

(declare-fun bs!1931519 () Bool)

(assert (= bs!1931519 (and d!2299160 b!7471887)))

(assert (=> bs!1931519 (not (= lambda!462828 lambda!462806))))

(declare-fun bs!1931520 () Bool)

(assert (= bs!1931520 (and d!2299160 b!7471489)))

(assert (=> bs!1931520 (= lambda!462828 lambda!462772)))

(declare-fun bs!1931521 () Bool)

(assert (= bs!1931521 (and d!2299160 b!7472164)))

(assert (=> bs!1931521 (not (= lambda!462828 lambda!462822))))

(declare-fun bs!1931522 () Bool)

(assert (= bs!1931522 (and d!2299160 b!7471932)))

(assert (=> bs!1931522 (not (= lambda!462828 lambda!462810))))

(declare-fun bs!1931523 () Bool)

(assert (= bs!1931523 (and d!2299160 b!7471959)))

(assert (=> bs!1931523 (not (= lambda!462828 lambda!462816))))

(declare-fun bs!1931524 () Bool)

(assert (= bs!1931524 (and d!2299160 b!7471925)))

(assert (=> bs!1931524 (not (= lambda!462828 lambda!462813))))

(assert (=> bs!1931520 (not (= lambda!462828 lambda!462773))))

(declare-fun bs!1931525 () Bool)

(assert (= bs!1931525 (and d!2299160 b!7471616)))

(assert (=> bs!1931525 (not (= lambda!462828 lambda!462785))))

(declare-fun bs!1931526 () Bool)

(assert (= bs!1931526 (and d!2299160 b!7472157)))

(assert (=> bs!1931526 (not (= lambda!462828 lambda!462823))))

(declare-fun bs!1931527 () Bool)

(assert (= bs!1931527 (and d!2299160 b!7471594)))

(assert (=> bs!1931527 (not (= lambda!462828 lambda!462783))))

(declare-fun bs!1931528 () Bool)

(assert (= bs!1931528 (and d!2299160 b!7471497)))

(assert (=> bs!1931528 (= (= lt!2626140 r2!5783) (= lambda!462828 lambda!462774))))

(declare-fun bs!1931529 () Bool)

(assert (= bs!1931529 (and d!2299160 b!7471601)))

(assert (=> bs!1931529 (not (= lambda!462828 lambda!462780))))

(assert (=> bs!1931528 (not (= lambda!462828 lambda!462775))))

(declare-fun bs!1931530 () Bool)

(assert (= bs!1931530 (and d!2299160 b!7471880)))

(assert (=> bs!1931530 (not (= lambda!462828 lambda!462808))))

(declare-fun bs!1931531 () Bool)

(assert (= bs!1931531 (and d!2299160 b!7472078)))

(assert (=> bs!1931531 (not (= lambda!462828 lambda!462819))))

(assert (=> d!2299160 true))

(assert (=> d!2299160 true))

(assert (=> d!2299160 true))

(declare-fun lambda!462829 () Int)

(assert (=> bs!1931516 (= (and (= s!13591 (_1!37613 lt!2626131)) (= lt!2626140 (regOne!39682 r1!5845)) (= rTail!78 (regTwo!39682 r1!5845))) (= lambda!462829 lambda!462788))))

(assert (=> bs!1931517 (= (and (= lt!2626140 (regOne!39682 lt!2626130)) (= rTail!78 (regTwo!39682 lt!2626130))) (= lambda!462829 lambda!462821))))

(assert (=> bs!1931519 (not (= lambda!462829 lambda!462806))))

(assert (=> bs!1931520 (not (= lambda!462829 lambda!462772))))

(assert (=> bs!1931521 (not (= lambda!462829 lambda!462822))))

(assert (=> bs!1931522 (not (= lambda!462829 lambda!462810))))

(assert (=> bs!1931523 (= (and (= lt!2626140 (regOne!39682 lt!2626134)) (= rTail!78 (regTwo!39682 lt!2626134))) (= lambda!462829 lambda!462816))))

(assert (=> bs!1931524 (= (and (= lt!2626140 (regOne!39682 lt!2626138)) (= rTail!78 (regTwo!39682 lt!2626138))) (= lambda!462829 lambda!462813))))

(assert (=> bs!1931520 (= lambda!462829 lambda!462773)))

(assert (=> bs!1931525 (not (= lambda!462829 lambda!462785))))

(assert (=> bs!1931526 (= (and (= lt!2626140 (regOne!39682 lt!2626129)) (= rTail!78 (regTwo!39682 lt!2626129))) (= lambda!462829 lambda!462823))))

(declare-fun bs!1931532 () Bool)

(assert (= bs!1931532 d!2299160))

(assert (=> bs!1931532 (not (= lambda!462829 lambda!462828))))

(assert (=> bs!1931518 (not (= lambda!462829 lambda!462814))))

(assert (=> bs!1931527 (= (and (= s!13591 (_1!37613 lt!2626131)) (= lt!2626140 (regOne!39682 r2!5783)) (= rTail!78 (regTwo!39682 r2!5783))) (= lambda!462829 lambda!462783))))

(assert (=> bs!1931528 (not (= lambda!462829 lambda!462774))))

(assert (=> bs!1931529 (not (= lambda!462829 lambda!462780))))

(assert (=> bs!1931528 (= (= lt!2626140 r2!5783) (= lambda!462829 lambda!462775))))

(assert (=> bs!1931530 (= (and (= s!13591 (_1!37613 lt!2626131)) (= lt!2626140 (regOne!39682 lt!2626140)) (= rTail!78 (regTwo!39682 lt!2626140))) (= lambda!462829 lambda!462808))))

(assert (=> bs!1931531 (not (= lambda!462829 lambda!462819))))

(assert (=> d!2299160 true))

(assert (=> d!2299160 true))

(assert (=> d!2299160 true))

(assert (=> d!2299160 (= (Exists!4204 lambda!462828) (Exists!4204 lambda!462829))))

(declare-fun lt!2626215 () Unit!166005)

(declare-fun choose!57752 (Regex!19585 Regex!19585 List!72301) Unit!166005)

(assert (=> d!2299160 (= lt!2626215 (choose!57752 lt!2626140 rTail!78 s!13591))))

(assert (=> d!2299160 (validRegex!10099 lt!2626140)))

(assert (=> d!2299160 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2538 lt!2626140 rTail!78 s!13591) lt!2626215)))

(declare-fun m!8068726 () Bool)

(assert (=> bs!1931532 m!8068726))

(declare-fun m!8068728 () Bool)

(assert (=> bs!1931532 m!8068728))

(declare-fun m!8068730 () Bool)

(assert (=> bs!1931532 m!8068730))

(assert (=> bs!1931532 m!8068298))

(assert (=> b!7471489 d!2299160))

(declare-fun d!2299162 () Bool)

(declare-fun isEmpty!41174 (Option!17142) Bool)

(assert (=> d!2299162 (= (isDefined!13831 (findConcatSeparation!3264 lt!2626140 rTail!78 Nil!72177 s!13591 s!13591)) (not (isEmpty!41174 (findConcatSeparation!3264 lt!2626140 rTail!78 Nil!72177 s!13591 s!13591))))))

(declare-fun bs!1931533 () Bool)

(assert (= bs!1931533 d!2299162))

(assert (=> bs!1931533 m!8068280))

(declare-fun m!8068732 () Bool)

(assert (=> bs!1931533 m!8068732))

(assert (=> b!7471489 d!2299162))

(declare-fun bs!1931534 () Bool)

(declare-fun d!2299164 () Bool)

(assert (= bs!1931534 (and d!2299164 b!7471609)))

(declare-fun lambda!462832 () Int)

(assert (=> bs!1931534 (not (= lambda!462832 lambda!462788))))

(declare-fun bs!1931535 () Bool)

(assert (= bs!1931535 (and d!2299164 b!7472071)))

(assert (=> bs!1931535 (not (= lambda!462832 lambda!462821))))

(declare-fun bs!1931536 () Bool)

(assert (= bs!1931536 (and d!2299164 b!7471887)))

(assert (=> bs!1931536 (not (= lambda!462832 lambda!462806))))

(declare-fun bs!1931537 () Bool)

(assert (= bs!1931537 (and d!2299164 b!7471489)))

(assert (=> bs!1931537 (= lambda!462832 lambda!462772)))

(declare-fun bs!1931538 () Bool)

(assert (= bs!1931538 (and d!2299164 d!2299160)))

(assert (=> bs!1931538 (not (= lambda!462832 lambda!462829))))

(declare-fun bs!1931539 () Bool)

(assert (= bs!1931539 (and d!2299164 b!7472164)))

(assert (=> bs!1931539 (not (= lambda!462832 lambda!462822))))

(declare-fun bs!1931540 () Bool)

(assert (= bs!1931540 (and d!2299164 b!7471932)))

(assert (=> bs!1931540 (not (= lambda!462832 lambda!462810))))

(declare-fun bs!1931541 () Bool)

(assert (= bs!1931541 (and d!2299164 b!7471959)))

(assert (=> bs!1931541 (not (= lambda!462832 lambda!462816))))

(declare-fun bs!1931542 () Bool)

(assert (= bs!1931542 (and d!2299164 b!7471925)))

(assert (=> bs!1931542 (not (= lambda!462832 lambda!462813))))

(assert (=> bs!1931537 (not (= lambda!462832 lambda!462773))))

(declare-fun bs!1931543 () Bool)

(assert (= bs!1931543 (and d!2299164 b!7471616)))

(assert (=> bs!1931543 (not (= lambda!462832 lambda!462785))))

(declare-fun bs!1931544 () Bool)

(assert (= bs!1931544 (and d!2299164 b!7472157)))

(assert (=> bs!1931544 (not (= lambda!462832 lambda!462823))))

(assert (=> bs!1931538 (= lambda!462832 lambda!462828)))

(declare-fun bs!1931545 () Bool)

(assert (= bs!1931545 (and d!2299164 b!7471966)))

(assert (=> bs!1931545 (not (= lambda!462832 lambda!462814))))

(declare-fun bs!1931546 () Bool)

(assert (= bs!1931546 (and d!2299164 b!7471594)))

(assert (=> bs!1931546 (not (= lambda!462832 lambda!462783))))

(declare-fun bs!1931547 () Bool)

(assert (= bs!1931547 (and d!2299164 b!7471497)))

(assert (=> bs!1931547 (= (= lt!2626140 r2!5783) (= lambda!462832 lambda!462774))))

(declare-fun bs!1931548 () Bool)

(assert (= bs!1931548 (and d!2299164 b!7471601)))

(assert (=> bs!1931548 (not (= lambda!462832 lambda!462780))))

(assert (=> bs!1931547 (not (= lambda!462832 lambda!462775))))

(declare-fun bs!1931549 () Bool)

(assert (= bs!1931549 (and d!2299164 b!7471880)))

(assert (=> bs!1931549 (not (= lambda!462832 lambda!462808))))

(declare-fun bs!1931550 () Bool)

(assert (= bs!1931550 (and d!2299164 b!7472078)))

(assert (=> bs!1931550 (not (= lambda!462832 lambda!462819))))

(assert (=> d!2299164 true))

(assert (=> d!2299164 true))

(assert (=> d!2299164 true))

(assert (=> d!2299164 (= (isDefined!13831 (findConcatSeparation!3264 lt!2626140 rTail!78 Nil!72177 s!13591 s!13591)) (Exists!4204 lambda!462832))))

(declare-fun lt!2626218 () Unit!166005)

(declare-fun choose!57753 (Regex!19585 Regex!19585 List!72301) Unit!166005)

(assert (=> d!2299164 (= lt!2626218 (choose!57753 lt!2626140 rTail!78 s!13591))))

(assert (=> d!2299164 (validRegex!10099 lt!2626140)))

(assert (=> d!2299164 (= (lemmaFindConcatSeparationEquivalentToExists!3022 lt!2626140 rTail!78 s!13591) lt!2626218)))

(declare-fun bs!1931551 () Bool)

(assert (= bs!1931551 d!2299164))

(assert (=> bs!1931551 m!8068298))

(declare-fun m!8068734 () Bool)

(assert (=> bs!1931551 m!8068734))

(assert (=> bs!1931551 m!8068280))

(assert (=> bs!1931551 m!8068282))

(assert (=> bs!1931551 m!8068280))

(declare-fun m!8068736 () Bool)

(assert (=> bs!1931551 m!8068736))

(assert (=> b!7471489 d!2299164))

(declare-fun b!7472219 () Bool)

(declare-fun e!4457999 () Bool)

(declare-fun e!4458000 () Bool)

(assert (=> b!7472219 (= e!4457999 e!4458000)))

(declare-fun c!1380596 () Bool)

(assert (=> b!7472219 (= c!1380596 ((_ is Union!19585) rTail!78))))

(declare-fun bm!686093 () Bool)

(declare-fun call!686100 () Bool)

(declare-fun call!686099 () Bool)

(assert (=> bm!686093 (= call!686100 call!686099)))

(declare-fun b!7472220 () Bool)

(declare-fun e!4458004 () Bool)

(assert (=> b!7472220 (= e!4458004 e!4457999)))

(declare-fun c!1380595 () Bool)

(assert (=> b!7472220 (= c!1380595 ((_ is Star!19585) rTail!78))))

(declare-fun b!7472221 () Bool)

(declare-fun res!2997726 () Bool)

(declare-fun e!4458003 () Bool)

(assert (=> b!7472221 (=> (not res!2997726) (not e!4458003))))

(declare-fun call!686098 () Bool)

(assert (=> b!7472221 (= res!2997726 call!686098)))

(assert (=> b!7472221 (= e!4458000 e!4458003)))

(declare-fun bm!686094 () Bool)

(assert (=> bm!686094 (= call!686098 (validRegex!10099 (ite c!1380596 (regOne!39683 rTail!78) (regOne!39682 rTail!78))))))

(declare-fun b!7472222 () Bool)

(declare-fun e!4458001 () Bool)

(assert (=> b!7472222 (= e!4457999 e!4458001)))

(declare-fun res!2997725 () Bool)

(assert (=> b!7472222 (= res!2997725 (not (nullable!8529 (reg!19914 rTail!78))))))

(assert (=> b!7472222 (=> (not res!2997725) (not e!4458001))))

(declare-fun d!2299166 () Bool)

(declare-fun res!2997728 () Bool)

(assert (=> d!2299166 (=> res!2997728 e!4458004)))

(assert (=> d!2299166 (= res!2997728 ((_ is ElementMatch!19585) rTail!78))))

(assert (=> d!2299166 (= (validRegex!10099 rTail!78) e!4458004)))

(declare-fun b!7472223 () Bool)

(declare-fun e!4458005 () Bool)

(declare-fun e!4458002 () Bool)

(assert (=> b!7472223 (= e!4458005 e!4458002)))

(declare-fun res!2997729 () Bool)

(assert (=> b!7472223 (=> (not res!2997729) (not e!4458002))))

(assert (=> b!7472223 (= res!2997729 call!686098)))

(declare-fun b!7472224 () Bool)

(assert (=> b!7472224 (= e!4458002 call!686100)))

(declare-fun b!7472225 () Bool)

(declare-fun res!2997727 () Bool)

(assert (=> b!7472225 (=> res!2997727 e!4458005)))

(assert (=> b!7472225 (= res!2997727 (not ((_ is Concat!28430) rTail!78)))))

(assert (=> b!7472225 (= e!4458000 e!4458005)))

(declare-fun b!7472226 () Bool)

(assert (=> b!7472226 (= e!4458001 call!686099)))

(declare-fun bm!686095 () Bool)

(assert (=> bm!686095 (= call!686099 (validRegex!10099 (ite c!1380595 (reg!19914 rTail!78) (ite c!1380596 (regTwo!39683 rTail!78) (regTwo!39682 rTail!78)))))))

(declare-fun b!7472227 () Bool)

(assert (=> b!7472227 (= e!4458003 call!686100)))

(assert (= (and d!2299166 (not res!2997728)) b!7472220))

(assert (= (and b!7472220 c!1380595) b!7472222))

(assert (= (and b!7472220 (not c!1380595)) b!7472219))

(assert (= (and b!7472222 res!2997725) b!7472226))

(assert (= (and b!7472219 c!1380596) b!7472221))

(assert (= (and b!7472219 (not c!1380596)) b!7472225))

(assert (= (and b!7472221 res!2997726) b!7472227))

(assert (= (and b!7472225 (not res!2997727)) b!7472223))

(assert (= (and b!7472223 res!2997729) b!7472224))

(assert (= (or b!7472227 b!7472224) bm!686093))

(assert (= (or b!7472221 b!7472223) bm!686094))

(assert (= (or b!7472226 bm!686093) bm!686095))

(declare-fun m!8068738 () Bool)

(assert (=> bm!686094 m!8068738))

(declare-fun m!8068740 () Bool)

(assert (=> b!7472222 m!8068740))

(declare-fun m!8068742 () Bool)

(assert (=> bm!686095 m!8068742))

(assert (=> b!7471490 d!2299166))

(declare-fun b!7472228 () Bool)

(declare-fun e!4458006 () Bool)

(declare-fun e!4458007 () Bool)

(assert (=> b!7472228 (= e!4458006 e!4458007)))

(declare-fun c!1380598 () Bool)

(assert (=> b!7472228 (= c!1380598 ((_ is Union!19585) r2!5783))))

(declare-fun bm!686096 () Bool)

(declare-fun call!686103 () Bool)

(declare-fun call!686102 () Bool)

(assert (=> bm!686096 (= call!686103 call!686102)))

(declare-fun b!7472229 () Bool)

(declare-fun e!4458011 () Bool)

(assert (=> b!7472229 (= e!4458011 e!4458006)))

(declare-fun c!1380597 () Bool)

(assert (=> b!7472229 (= c!1380597 ((_ is Star!19585) r2!5783))))

(declare-fun b!7472230 () Bool)

(declare-fun res!2997731 () Bool)

(declare-fun e!4458010 () Bool)

(assert (=> b!7472230 (=> (not res!2997731) (not e!4458010))))

(declare-fun call!686101 () Bool)

(assert (=> b!7472230 (= res!2997731 call!686101)))

(assert (=> b!7472230 (= e!4458007 e!4458010)))

(declare-fun bm!686097 () Bool)

(assert (=> bm!686097 (= call!686101 (validRegex!10099 (ite c!1380598 (regOne!39683 r2!5783) (regOne!39682 r2!5783))))))

(declare-fun b!7472231 () Bool)

(declare-fun e!4458008 () Bool)

(assert (=> b!7472231 (= e!4458006 e!4458008)))

(declare-fun res!2997730 () Bool)

(assert (=> b!7472231 (= res!2997730 (not (nullable!8529 (reg!19914 r2!5783))))))

(assert (=> b!7472231 (=> (not res!2997730) (not e!4458008))))

(declare-fun d!2299168 () Bool)

(declare-fun res!2997733 () Bool)

(assert (=> d!2299168 (=> res!2997733 e!4458011)))

(assert (=> d!2299168 (= res!2997733 ((_ is ElementMatch!19585) r2!5783))))

(assert (=> d!2299168 (= (validRegex!10099 r2!5783) e!4458011)))

(declare-fun b!7472232 () Bool)

(declare-fun e!4458012 () Bool)

(declare-fun e!4458009 () Bool)

(assert (=> b!7472232 (= e!4458012 e!4458009)))

(declare-fun res!2997734 () Bool)

(assert (=> b!7472232 (=> (not res!2997734) (not e!4458009))))

(assert (=> b!7472232 (= res!2997734 call!686101)))

(declare-fun b!7472233 () Bool)

(assert (=> b!7472233 (= e!4458009 call!686103)))

(declare-fun b!7472234 () Bool)

(declare-fun res!2997732 () Bool)

(assert (=> b!7472234 (=> res!2997732 e!4458012)))

(assert (=> b!7472234 (= res!2997732 (not ((_ is Concat!28430) r2!5783)))))

(assert (=> b!7472234 (= e!4458007 e!4458012)))

(declare-fun b!7472235 () Bool)

(assert (=> b!7472235 (= e!4458008 call!686102)))

(declare-fun bm!686098 () Bool)

(assert (=> bm!686098 (= call!686102 (validRegex!10099 (ite c!1380597 (reg!19914 r2!5783) (ite c!1380598 (regTwo!39683 r2!5783) (regTwo!39682 r2!5783)))))))

(declare-fun b!7472236 () Bool)

(assert (=> b!7472236 (= e!4458010 call!686103)))

(assert (= (and d!2299168 (not res!2997733)) b!7472229))

(assert (= (and b!7472229 c!1380597) b!7472231))

(assert (= (and b!7472229 (not c!1380597)) b!7472228))

(assert (= (and b!7472231 res!2997730) b!7472235))

(assert (= (and b!7472228 c!1380598) b!7472230))

(assert (= (and b!7472228 (not c!1380598)) b!7472234))

(assert (= (and b!7472230 res!2997731) b!7472236))

(assert (= (and b!7472234 (not res!2997732)) b!7472232))

(assert (= (and b!7472232 res!2997734) b!7472233))

(assert (= (or b!7472236 b!7472233) bm!686096))

(assert (= (or b!7472230 b!7472232) bm!686097))

(assert (= (or b!7472235 bm!686096) bm!686098))

(declare-fun m!8068744 () Bool)

(assert (=> bm!686097 m!8068744))

(declare-fun m!8068746 () Bool)

(assert (=> b!7472231 m!8068746))

(declare-fun m!8068748 () Bool)

(assert (=> bm!686098 m!8068748))

(assert (=> b!7471494 d!2299168))

(declare-fun b!7472237 () Bool)

(declare-fun e!4458019 () Bool)

(assert (=> b!7472237 (= e!4458019 (nullable!8529 rTail!78))))

(declare-fun b!7472238 () Bool)

(declare-fun e!4458017 () Bool)

(declare-fun e!4458015 () Bool)

(assert (=> b!7472238 (= e!4458017 e!4458015)))

(declare-fun c!1380600 () Bool)

(assert (=> b!7472238 (= c!1380600 ((_ is EmptyLang!19585) rTail!78))))

(declare-fun b!7472239 () Bool)

(declare-fun e!4458013 () Bool)

(declare-fun e!4458014 () Bool)

(assert (=> b!7472239 (= e!4458013 e!4458014)))

(declare-fun res!2997741 () Bool)

(assert (=> b!7472239 (=> (not res!2997741) (not e!4458014))))

(declare-fun lt!2626219 () Bool)

(assert (=> b!7472239 (= res!2997741 (not lt!2626219))))

(declare-fun b!7472240 () Bool)

(declare-fun res!2997740 () Bool)

(declare-fun e!4458018 () Bool)

(assert (=> b!7472240 (=> (not res!2997740) (not e!4458018))))

(declare-fun call!686104 () Bool)

(assert (=> b!7472240 (= res!2997740 (not call!686104))))

(declare-fun d!2299170 () Bool)

(assert (=> d!2299170 e!4458017))

(declare-fun c!1380601 () Bool)

(assert (=> d!2299170 (= c!1380601 ((_ is EmptyExpr!19585) rTail!78))))

(assert (=> d!2299170 (= lt!2626219 e!4458019)))

(declare-fun c!1380599 () Bool)

(assert (=> d!2299170 (= c!1380599 (isEmpty!41173 (_2!37613 lt!2626131)))))

(assert (=> d!2299170 (validRegex!10099 rTail!78)))

(assert (=> d!2299170 (= (matchR!9349 rTail!78 (_2!37613 lt!2626131)) lt!2626219)))

(declare-fun b!7472241 () Bool)

(declare-fun res!2997738 () Bool)

(declare-fun e!4458016 () Bool)

(assert (=> b!7472241 (=> res!2997738 e!4458016)))

(assert (=> b!7472241 (= res!2997738 (not (isEmpty!41173 (tail!14897 (_2!37613 lt!2626131)))))))

(declare-fun b!7472242 () Bool)

(assert (=> b!7472242 (= e!4458018 (= (head!15328 (_2!37613 lt!2626131)) (c!1380436 rTail!78)))))

(declare-fun b!7472243 () Bool)

(declare-fun res!2997742 () Bool)

(assert (=> b!7472243 (=> (not res!2997742) (not e!4458018))))

(assert (=> b!7472243 (= res!2997742 (isEmpty!41173 (tail!14897 (_2!37613 lt!2626131))))))

(declare-fun b!7472244 () Bool)

(declare-fun res!2997735 () Bool)

(assert (=> b!7472244 (=> res!2997735 e!4458013)))

(assert (=> b!7472244 (= res!2997735 e!4458018)))

(declare-fun res!2997739 () Bool)

(assert (=> b!7472244 (=> (not res!2997739) (not e!4458018))))

(assert (=> b!7472244 (= res!2997739 lt!2626219)))

(declare-fun b!7472245 () Bool)

(assert (=> b!7472245 (= e!4458019 (matchR!9349 (derivativeStep!5588 rTail!78 (head!15328 (_2!37613 lt!2626131))) (tail!14897 (_2!37613 lt!2626131))))))

(declare-fun b!7472246 () Bool)

(assert (=> b!7472246 (= e!4458015 (not lt!2626219))))

(declare-fun b!7472247 () Bool)

(assert (=> b!7472247 (= e!4458017 (= lt!2626219 call!686104))))

(declare-fun bm!686099 () Bool)

(assert (=> bm!686099 (= call!686104 (isEmpty!41173 (_2!37613 lt!2626131)))))

(declare-fun b!7472248 () Bool)

(assert (=> b!7472248 (= e!4458014 e!4458016)))

(declare-fun res!2997737 () Bool)

(assert (=> b!7472248 (=> res!2997737 e!4458016)))

(assert (=> b!7472248 (= res!2997737 call!686104)))

(declare-fun b!7472249 () Bool)

(assert (=> b!7472249 (= e!4458016 (not (= (head!15328 (_2!37613 lt!2626131)) (c!1380436 rTail!78))))))

(declare-fun b!7472250 () Bool)

(declare-fun res!2997736 () Bool)

(assert (=> b!7472250 (=> res!2997736 e!4458013)))

(assert (=> b!7472250 (= res!2997736 (not ((_ is ElementMatch!19585) rTail!78)))))

(assert (=> b!7472250 (= e!4458015 e!4458013)))

(assert (= (and d!2299170 c!1380599) b!7472237))

(assert (= (and d!2299170 (not c!1380599)) b!7472245))

(assert (= (and d!2299170 c!1380601) b!7472247))

(assert (= (and d!2299170 (not c!1380601)) b!7472238))

(assert (= (and b!7472238 c!1380600) b!7472246))

(assert (= (and b!7472238 (not c!1380600)) b!7472250))

(assert (= (and b!7472250 (not res!2997736)) b!7472244))

(assert (= (and b!7472244 res!2997739) b!7472240))

(assert (= (and b!7472240 res!2997740) b!7472243))

(assert (= (and b!7472243 res!2997742) b!7472242))

(assert (= (and b!7472244 (not res!2997735)) b!7472239))

(assert (= (and b!7472239 res!2997741) b!7472248))

(assert (= (and b!7472248 (not res!2997737)) b!7472241))

(assert (= (and b!7472241 (not res!2997738)) b!7472249))

(assert (= (or b!7472247 b!7472248 b!7472240) bm!686099))

(declare-fun m!8068750 () Bool)

(assert (=> bm!686099 m!8068750))

(declare-fun m!8068752 () Bool)

(assert (=> b!7472237 m!8068752))

(declare-fun m!8068754 () Bool)

(assert (=> b!7472242 m!8068754))

(declare-fun m!8068756 () Bool)

(assert (=> b!7472243 m!8068756))

(assert (=> b!7472243 m!8068756))

(declare-fun m!8068758 () Bool)

(assert (=> b!7472243 m!8068758))

(assert (=> d!2299170 m!8068750))

(assert (=> d!2299170 m!8068270))

(assert (=> b!7472249 m!8068754))

(assert (=> b!7472245 m!8068754))

(assert (=> b!7472245 m!8068754))

(declare-fun m!8068760 () Bool)

(assert (=> b!7472245 m!8068760))

(assert (=> b!7472245 m!8068756))

(assert (=> b!7472245 m!8068760))

(assert (=> b!7472245 m!8068756))

(declare-fun m!8068762 () Bool)

(assert (=> b!7472245 m!8068762))

(assert (=> b!7472241 m!8068756))

(assert (=> b!7472241 m!8068756))

(assert (=> b!7472241 m!8068758))

(assert (=> b!7471481 d!2299170))

(declare-fun bs!1931552 () Bool)

(declare-fun d!2299172 () Bool)

(assert (= bs!1931552 (and d!2299172 b!7471609)))

(declare-fun lambda!462833 () Int)

(assert (=> bs!1931552 (not (= lambda!462833 lambda!462788))))

(declare-fun bs!1931553 () Bool)

(assert (= bs!1931553 (and d!2299172 b!7472071)))

(assert (=> bs!1931553 (not (= lambda!462833 lambda!462821))))

(declare-fun bs!1931554 () Bool)

(assert (= bs!1931554 (and d!2299172 b!7471887)))

(assert (=> bs!1931554 (not (= lambda!462833 lambda!462806))))

(declare-fun bs!1931555 () Bool)

(assert (= bs!1931555 (and d!2299172 b!7471489)))

(assert (=> bs!1931555 (= (= r2!5783 lt!2626140) (= lambda!462833 lambda!462772))))

(declare-fun bs!1931556 () Bool)

(assert (= bs!1931556 (and d!2299172 d!2299160)))

(assert (=> bs!1931556 (not (= lambda!462833 lambda!462829))))

(declare-fun bs!1931557 () Bool)

(assert (= bs!1931557 (and d!2299172 b!7472164)))

(assert (=> bs!1931557 (not (= lambda!462833 lambda!462822))))

(declare-fun bs!1931558 () Bool)

(assert (= bs!1931558 (and d!2299172 b!7471932)))

(assert (=> bs!1931558 (not (= lambda!462833 lambda!462810))))

(declare-fun bs!1931559 () Bool)

(assert (= bs!1931559 (and d!2299172 b!7471959)))

(assert (=> bs!1931559 (not (= lambda!462833 lambda!462816))))

(declare-fun bs!1931560 () Bool)

(assert (= bs!1931560 (and d!2299172 b!7471925)))

(assert (=> bs!1931560 (not (= lambda!462833 lambda!462813))))

(declare-fun bs!1931561 () Bool)

(assert (= bs!1931561 (and d!2299172 d!2299164)))

(assert (=> bs!1931561 (= (= r2!5783 lt!2626140) (= lambda!462833 lambda!462832))))

(assert (=> bs!1931555 (not (= lambda!462833 lambda!462773))))

(declare-fun bs!1931562 () Bool)

(assert (= bs!1931562 (and d!2299172 b!7471616)))

(assert (=> bs!1931562 (not (= lambda!462833 lambda!462785))))

(declare-fun bs!1931563 () Bool)

(assert (= bs!1931563 (and d!2299172 b!7472157)))

(assert (=> bs!1931563 (not (= lambda!462833 lambda!462823))))

(assert (=> bs!1931556 (= (= r2!5783 lt!2626140) (= lambda!462833 lambda!462828))))

(declare-fun bs!1931564 () Bool)

(assert (= bs!1931564 (and d!2299172 b!7471966)))

(assert (=> bs!1931564 (not (= lambda!462833 lambda!462814))))

(declare-fun bs!1931565 () Bool)

(assert (= bs!1931565 (and d!2299172 b!7471594)))

(assert (=> bs!1931565 (not (= lambda!462833 lambda!462783))))

(declare-fun bs!1931566 () Bool)

(assert (= bs!1931566 (and d!2299172 b!7471497)))

(assert (=> bs!1931566 (= lambda!462833 lambda!462774)))

(declare-fun bs!1931567 () Bool)

(assert (= bs!1931567 (and d!2299172 b!7471601)))

(assert (=> bs!1931567 (not (= lambda!462833 lambda!462780))))

(assert (=> bs!1931566 (not (= lambda!462833 lambda!462775))))

(declare-fun bs!1931568 () Bool)

(assert (= bs!1931568 (and d!2299172 b!7471880)))

(assert (=> bs!1931568 (not (= lambda!462833 lambda!462808))))

(declare-fun bs!1931569 () Bool)

(assert (= bs!1931569 (and d!2299172 b!7472078)))

(assert (=> bs!1931569 (not (= lambda!462833 lambda!462819))))

(assert (=> d!2299172 true))

(assert (=> d!2299172 true))

(assert (=> d!2299172 true))

(declare-fun lambda!462834 () Int)

(assert (=> bs!1931552 (= (and (= s!13591 (_1!37613 lt!2626131)) (= r2!5783 (regOne!39682 r1!5845)) (= rTail!78 (regTwo!39682 r1!5845))) (= lambda!462834 lambda!462788))))

(assert (=> bs!1931553 (= (and (= r2!5783 (regOne!39682 lt!2626130)) (= rTail!78 (regTwo!39682 lt!2626130))) (= lambda!462834 lambda!462821))))

(assert (=> bs!1931554 (not (= lambda!462834 lambda!462806))))

(assert (=> bs!1931555 (not (= lambda!462834 lambda!462772))))

(assert (=> bs!1931556 (= (= r2!5783 lt!2626140) (= lambda!462834 lambda!462829))))

(assert (=> bs!1931557 (not (= lambda!462834 lambda!462822))))

(assert (=> bs!1931558 (not (= lambda!462834 lambda!462810))))

(assert (=> bs!1931559 (= (and (= r2!5783 (regOne!39682 lt!2626134)) (= rTail!78 (regTwo!39682 lt!2626134))) (= lambda!462834 lambda!462816))))

(assert (=> bs!1931560 (= (and (= r2!5783 (regOne!39682 lt!2626138)) (= rTail!78 (regTwo!39682 lt!2626138))) (= lambda!462834 lambda!462813))))

(assert (=> bs!1931561 (not (= lambda!462834 lambda!462832))))

(assert (=> bs!1931555 (= (= r2!5783 lt!2626140) (= lambda!462834 lambda!462773))))

(assert (=> bs!1931562 (not (= lambda!462834 lambda!462785))))

(assert (=> bs!1931563 (= (and (= r2!5783 (regOne!39682 lt!2626129)) (= rTail!78 (regTwo!39682 lt!2626129))) (= lambda!462834 lambda!462823))))

(assert (=> bs!1931556 (not (= lambda!462834 lambda!462828))))

(assert (=> bs!1931564 (not (= lambda!462834 lambda!462814))))

(assert (=> bs!1931565 (= (and (= s!13591 (_1!37613 lt!2626131)) (= r2!5783 (regOne!39682 r2!5783)) (= rTail!78 (regTwo!39682 r2!5783))) (= lambda!462834 lambda!462783))))

(assert (=> bs!1931566 (not (= lambda!462834 lambda!462774))))

(assert (=> bs!1931567 (not (= lambda!462834 lambda!462780))))

(declare-fun bs!1931570 () Bool)

(assert (= bs!1931570 d!2299172))

(assert (=> bs!1931570 (not (= lambda!462834 lambda!462833))))

(assert (=> bs!1931566 (= lambda!462834 lambda!462775)))

(assert (=> bs!1931568 (= (and (= s!13591 (_1!37613 lt!2626131)) (= r2!5783 (regOne!39682 lt!2626140)) (= rTail!78 (regTwo!39682 lt!2626140))) (= lambda!462834 lambda!462808))))

(assert (=> bs!1931569 (not (= lambda!462834 lambda!462819))))

(assert (=> d!2299172 true))

(assert (=> d!2299172 true))

(assert (=> d!2299172 true))

(assert (=> d!2299172 (= (Exists!4204 lambda!462833) (Exists!4204 lambda!462834))))

(declare-fun lt!2626220 () Unit!166005)

(assert (=> d!2299172 (= lt!2626220 (choose!57752 r2!5783 rTail!78 s!13591))))

(assert (=> d!2299172 (validRegex!10099 r2!5783)))

(assert (=> d!2299172 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2538 r2!5783 rTail!78 s!13591) lt!2626220)))

(declare-fun m!8068764 () Bool)

(assert (=> bs!1931570 m!8068764))

(declare-fun m!8068766 () Bool)

(assert (=> bs!1931570 m!8068766))

(declare-fun m!8068768 () Bool)

(assert (=> bs!1931570 m!8068768))

(assert (=> bs!1931570 m!8068272))

(assert (=> b!7471497 d!2299172))

(declare-fun bs!1931571 () Bool)

(declare-fun d!2299174 () Bool)

(assert (= bs!1931571 (and d!2299174 b!7471609)))

(declare-fun lambda!462835 () Int)

(assert (=> bs!1931571 (not (= lambda!462835 lambda!462788))))

(declare-fun bs!1931572 () Bool)

(assert (= bs!1931572 (and d!2299174 b!7472071)))

(assert (=> bs!1931572 (not (= lambda!462835 lambda!462821))))

(declare-fun bs!1931573 () Bool)

(assert (= bs!1931573 (and d!2299174 b!7471887)))

(assert (=> bs!1931573 (not (= lambda!462835 lambda!462806))))

(declare-fun bs!1931574 () Bool)

(assert (= bs!1931574 (and d!2299174 b!7471489)))

(assert (=> bs!1931574 (= (= r2!5783 lt!2626140) (= lambda!462835 lambda!462772))))

(declare-fun bs!1931575 () Bool)

(assert (= bs!1931575 (and d!2299174 d!2299160)))

(assert (=> bs!1931575 (not (= lambda!462835 lambda!462829))))

(declare-fun bs!1931576 () Bool)

(assert (= bs!1931576 (and d!2299174 b!7472164)))

(assert (=> bs!1931576 (not (= lambda!462835 lambda!462822))))

(declare-fun bs!1931577 () Bool)

(assert (= bs!1931577 (and d!2299174 b!7471959)))

(assert (=> bs!1931577 (not (= lambda!462835 lambda!462816))))

(declare-fun bs!1931578 () Bool)

(assert (= bs!1931578 (and d!2299174 b!7471925)))

(assert (=> bs!1931578 (not (= lambda!462835 lambda!462813))))

(declare-fun bs!1931579 () Bool)

(assert (= bs!1931579 (and d!2299174 d!2299164)))

(assert (=> bs!1931579 (= (= r2!5783 lt!2626140) (= lambda!462835 lambda!462832))))

(assert (=> bs!1931574 (not (= lambda!462835 lambda!462773))))

(declare-fun bs!1931580 () Bool)

(assert (= bs!1931580 (and d!2299174 b!7471616)))

(assert (=> bs!1931580 (not (= lambda!462835 lambda!462785))))

(declare-fun bs!1931581 () Bool)

(assert (= bs!1931581 (and d!2299174 b!7472157)))

(assert (=> bs!1931581 (not (= lambda!462835 lambda!462823))))

(assert (=> bs!1931575 (= (= r2!5783 lt!2626140) (= lambda!462835 lambda!462828))))

(declare-fun bs!1931582 () Bool)

(assert (= bs!1931582 (and d!2299174 b!7471966)))

(assert (=> bs!1931582 (not (= lambda!462835 lambda!462814))))

(declare-fun bs!1931583 () Bool)

(assert (= bs!1931583 (and d!2299174 b!7471594)))

(assert (=> bs!1931583 (not (= lambda!462835 lambda!462783))))

(declare-fun bs!1931584 () Bool)

(assert (= bs!1931584 (and d!2299174 b!7471497)))

(assert (=> bs!1931584 (= lambda!462835 lambda!462774)))

(declare-fun bs!1931585 () Bool)

(assert (= bs!1931585 (and d!2299174 b!7471601)))

(assert (=> bs!1931585 (not (= lambda!462835 lambda!462780))))

(declare-fun bs!1931586 () Bool)

(assert (= bs!1931586 (and d!2299174 d!2299172)))

(assert (=> bs!1931586 (= lambda!462835 lambda!462833)))

(assert (=> bs!1931584 (not (= lambda!462835 lambda!462775))))

(declare-fun bs!1931587 () Bool)

(assert (= bs!1931587 (and d!2299174 b!7471880)))

(assert (=> bs!1931587 (not (= lambda!462835 lambda!462808))))

(declare-fun bs!1931588 () Bool)

(assert (= bs!1931588 (and d!2299174 b!7472078)))

(assert (=> bs!1931588 (not (= lambda!462835 lambda!462819))))

(declare-fun bs!1931589 () Bool)

(assert (= bs!1931589 (and d!2299174 b!7471932)))

(assert (=> bs!1931589 (not (= lambda!462835 lambda!462810))))

(assert (=> bs!1931586 (not (= lambda!462835 lambda!462834))))

(assert (=> d!2299174 true))

(assert (=> d!2299174 true))

(assert (=> d!2299174 true))

(assert (=> d!2299174 (= (isDefined!13831 (findConcatSeparation!3264 r2!5783 rTail!78 Nil!72177 s!13591 s!13591)) (Exists!4204 lambda!462835))))

(declare-fun lt!2626221 () Unit!166005)

(assert (=> d!2299174 (= lt!2626221 (choose!57753 r2!5783 rTail!78 s!13591))))

(assert (=> d!2299174 (validRegex!10099 r2!5783)))

(assert (=> d!2299174 (= (lemmaFindConcatSeparationEquivalentToExists!3022 r2!5783 rTail!78 s!13591) lt!2626221)))

(declare-fun bs!1931590 () Bool)

(assert (= bs!1931590 d!2299174))

(assert (=> bs!1931590 m!8068272))

(declare-fun m!8068770 () Bool)

(assert (=> bs!1931590 m!8068770))

(assert (=> bs!1931590 m!8068344))

(declare-fun m!8068772 () Bool)

(assert (=> bs!1931590 m!8068772))

(assert (=> bs!1931590 m!8068344))

(declare-fun m!8068774 () Bool)

(assert (=> bs!1931590 m!8068774))

(assert (=> b!7471497 d!2299174))

(declare-fun d!2299176 () Bool)

(assert (=> d!2299176 (= (isDefined!13831 lt!2626127) (not (isEmpty!41174 lt!2626127)))))

(declare-fun bs!1931591 () Bool)

(assert (= bs!1931591 d!2299176))

(declare-fun m!8068776 () Bool)

(assert (=> bs!1931591 m!8068776))

(assert (=> b!7471497 d!2299176))

(declare-fun d!2299178 () Bool)

(declare-fun e!4458022 () Bool)

(assert (=> d!2299178 e!4458022))

(declare-fun res!2997745 () Bool)

(assert (=> d!2299178 (=> res!2997745 e!4458022)))

(declare-fun e!4458024 () Bool)

(assert (=> d!2299178 (= res!2997745 e!4458024)))

(declare-fun res!2997743 () Bool)

(assert (=> d!2299178 (=> (not res!2997743) (not e!4458024))))

(declare-fun lt!2626224 () Option!17142)

(assert (=> d!2299178 (= res!2997743 (isDefined!13831 lt!2626224))))

(declare-fun e!4458021 () Option!17142)

(assert (=> d!2299178 (= lt!2626224 e!4458021)))

(declare-fun c!1380603 () Bool)

(declare-fun e!4458023 () Bool)

(assert (=> d!2299178 (= c!1380603 e!4458023)))

(declare-fun res!2997747 () Bool)

(assert (=> d!2299178 (=> (not res!2997747) (not e!4458023))))

(assert (=> d!2299178 (= res!2997747 (matchR!9349 r2!5783 Nil!72177))))

(assert (=> d!2299178 (validRegex!10099 r2!5783)))

(assert (=> d!2299178 (= (findConcatSeparation!3264 r2!5783 rTail!78 Nil!72177 s!13591 s!13591) lt!2626224)))

(declare-fun b!7472251 () Bool)

(assert (=> b!7472251 (= e!4458023 (matchR!9349 rTail!78 s!13591))))

(declare-fun b!7472252 () Bool)

(assert (=> b!7472252 (= e!4458024 (= (++!17203 (_1!37613 (get!25241 lt!2626224)) (_2!37613 (get!25241 lt!2626224))) s!13591))))

(declare-fun b!7472253 () Bool)

(declare-fun e!4458020 () Option!17142)

(assert (=> b!7472253 (= e!4458021 e!4458020)))

(declare-fun c!1380602 () Bool)

(assert (=> b!7472253 (= c!1380602 ((_ is Nil!72177) s!13591))))

(declare-fun b!7472254 () Bool)

(assert (=> b!7472254 (= e!4458022 (not (isDefined!13831 lt!2626224)))))

(declare-fun b!7472255 () Bool)

(assert (=> b!7472255 (= e!4458021 (Some!17141 (tuple2!68621 Nil!72177 s!13591)))))

(declare-fun b!7472256 () Bool)

(declare-fun res!2997746 () Bool)

(assert (=> b!7472256 (=> (not res!2997746) (not e!4458024))))

(assert (=> b!7472256 (= res!2997746 (matchR!9349 r2!5783 (_1!37613 (get!25241 lt!2626224))))))

(declare-fun b!7472257 () Bool)

(declare-fun lt!2626222 () Unit!166005)

(declare-fun lt!2626223 () Unit!166005)

(assert (=> b!7472257 (= lt!2626222 lt!2626223)))

(assert (=> b!7472257 (= (++!17203 (++!17203 Nil!72177 (Cons!72177 (h!78625 s!13591) Nil!72177)) (t!386870 s!13591)) s!13591)))

(assert (=> b!7472257 (= lt!2626223 (lemmaMoveElementToOtherListKeepsConcatEq!3081 Nil!72177 (h!78625 s!13591) (t!386870 s!13591) s!13591))))

(assert (=> b!7472257 (= e!4458020 (findConcatSeparation!3264 r2!5783 rTail!78 (++!17203 Nil!72177 (Cons!72177 (h!78625 s!13591) Nil!72177)) (t!386870 s!13591) s!13591))))

(declare-fun b!7472258 () Bool)

(assert (=> b!7472258 (= e!4458020 None!17141)))

(declare-fun b!7472259 () Bool)

(declare-fun res!2997744 () Bool)

(assert (=> b!7472259 (=> (not res!2997744) (not e!4458024))))

(assert (=> b!7472259 (= res!2997744 (matchR!9349 rTail!78 (_2!37613 (get!25241 lt!2626224))))))

(assert (= (and d!2299178 res!2997747) b!7472251))

(assert (= (and d!2299178 c!1380603) b!7472255))

(assert (= (and d!2299178 (not c!1380603)) b!7472253))

(assert (= (and b!7472253 c!1380602) b!7472258))

(assert (= (and b!7472253 (not c!1380602)) b!7472257))

(assert (= (and d!2299178 res!2997743) b!7472256))

(assert (= (and b!7472256 res!2997746) b!7472259))

(assert (= (and b!7472259 res!2997744) b!7472252))

(assert (= (and d!2299178 (not res!2997745)) b!7472254))

(assert (=> b!7472251 m!8068702))

(declare-fun m!8068778 () Bool)

(assert (=> d!2299178 m!8068778))

(declare-fun m!8068780 () Bool)

(assert (=> d!2299178 m!8068780))

(assert (=> d!2299178 m!8068272))

(assert (=> b!7472257 m!8068708))

(assert (=> b!7472257 m!8068708))

(assert (=> b!7472257 m!8068710))

(assert (=> b!7472257 m!8068712))

(assert (=> b!7472257 m!8068708))

(declare-fun m!8068782 () Bool)

(assert (=> b!7472257 m!8068782))

(assert (=> b!7472254 m!8068778))

(declare-fun m!8068784 () Bool)

(assert (=> b!7472259 m!8068784))

(declare-fun m!8068786 () Bool)

(assert (=> b!7472259 m!8068786))

(assert (=> b!7472256 m!8068784))

(declare-fun m!8068788 () Bool)

(assert (=> b!7472256 m!8068788))

(assert (=> b!7472252 m!8068784))

(declare-fun m!8068790 () Bool)

(assert (=> b!7472252 m!8068790))

(assert (=> b!7471497 d!2299178))

(declare-fun d!2299180 () Bool)

(assert (=> d!2299180 (= (Exists!4204 lambda!462774) (choose!57751 lambda!462774))))

(declare-fun bs!1931592 () Bool)

(assert (= bs!1931592 d!2299180))

(declare-fun m!8068792 () Bool)

(assert (=> bs!1931592 m!8068792))

(assert (=> b!7471497 d!2299180))

(declare-fun d!2299182 () Bool)

(assert (=> d!2299182 (= (get!25241 lt!2626127) (v!54270 lt!2626127))))

(assert (=> b!7471497 d!2299182))

(declare-fun d!2299184 () Bool)

(assert (=> d!2299184 (= (Exists!4204 lambda!462775) (choose!57751 lambda!462775))))

(declare-fun bs!1931593 () Bool)

(assert (= bs!1931593 d!2299184))

(declare-fun m!8068794 () Bool)

(assert (=> bs!1931593 m!8068794))

(assert (=> b!7471497 d!2299184))

(declare-fun b!7472260 () Bool)

(declare-fun e!4458031 () Bool)

(assert (=> b!7472260 (= e!4458031 (nullable!8529 r2!5783))))

(declare-fun b!7472261 () Bool)

(declare-fun e!4458029 () Bool)

(declare-fun e!4458027 () Bool)

(assert (=> b!7472261 (= e!4458029 e!4458027)))

(declare-fun c!1380605 () Bool)

(assert (=> b!7472261 (= c!1380605 ((_ is EmptyLang!19585) r2!5783))))

(declare-fun b!7472262 () Bool)

(declare-fun e!4458025 () Bool)

(declare-fun e!4458026 () Bool)

(assert (=> b!7472262 (= e!4458025 e!4458026)))

(declare-fun res!2997754 () Bool)

(assert (=> b!7472262 (=> (not res!2997754) (not e!4458026))))

(declare-fun lt!2626225 () Bool)

(assert (=> b!7472262 (= res!2997754 (not lt!2626225))))

(declare-fun b!7472263 () Bool)

(declare-fun res!2997753 () Bool)

(declare-fun e!4458030 () Bool)

(assert (=> b!7472263 (=> (not res!2997753) (not e!4458030))))

(declare-fun call!686105 () Bool)

(assert (=> b!7472263 (= res!2997753 (not call!686105))))

(declare-fun d!2299186 () Bool)

(assert (=> d!2299186 e!4458029))

(declare-fun c!1380606 () Bool)

(assert (=> d!2299186 (= c!1380606 ((_ is EmptyExpr!19585) r2!5783))))

(assert (=> d!2299186 (= lt!2626225 e!4458031)))

(declare-fun c!1380604 () Bool)

(assert (=> d!2299186 (= c!1380604 (isEmpty!41173 (_1!37613 lt!2626131)))))

(assert (=> d!2299186 (validRegex!10099 r2!5783)))

(assert (=> d!2299186 (= (matchR!9349 r2!5783 (_1!37613 lt!2626131)) lt!2626225)))

(declare-fun b!7472264 () Bool)

(declare-fun res!2997751 () Bool)

(declare-fun e!4458028 () Bool)

(assert (=> b!7472264 (=> res!2997751 e!4458028)))

(assert (=> b!7472264 (= res!2997751 (not (isEmpty!41173 (tail!14897 (_1!37613 lt!2626131)))))))

(declare-fun b!7472265 () Bool)

(assert (=> b!7472265 (= e!4458030 (= (head!15328 (_1!37613 lt!2626131)) (c!1380436 r2!5783)))))

(declare-fun b!7472266 () Bool)

(declare-fun res!2997755 () Bool)

(assert (=> b!7472266 (=> (not res!2997755) (not e!4458030))))

(assert (=> b!7472266 (= res!2997755 (isEmpty!41173 (tail!14897 (_1!37613 lt!2626131))))))

(declare-fun b!7472267 () Bool)

(declare-fun res!2997748 () Bool)

(assert (=> b!7472267 (=> res!2997748 e!4458025)))

(assert (=> b!7472267 (= res!2997748 e!4458030)))

(declare-fun res!2997752 () Bool)

(assert (=> b!7472267 (=> (not res!2997752) (not e!4458030))))

(assert (=> b!7472267 (= res!2997752 lt!2626225)))

(declare-fun b!7472268 () Bool)

(assert (=> b!7472268 (= e!4458031 (matchR!9349 (derivativeStep!5588 r2!5783 (head!15328 (_1!37613 lt!2626131))) (tail!14897 (_1!37613 lt!2626131))))))

(declare-fun b!7472269 () Bool)

(assert (=> b!7472269 (= e!4458027 (not lt!2626225))))

(declare-fun b!7472270 () Bool)

(assert (=> b!7472270 (= e!4458029 (= lt!2626225 call!686105))))

(declare-fun bm!686100 () Bool)

(assert (=> bm!686100 (= call!686105 (isEmpty!41173 (_1!37613 lt!2626131)))))

(declare-fun b!7472271 () Bool)

(assert (=> b!7472271 (= e!4458026 e!4458028)))

(declare-fun res!2997750 () Bool)

(assert (=> b!7472271 (=> res!2997750 e!4458028)))

(assert (=> b!7472271 (= res!2997750 call!686105)))

(declare-fun b!7472272 () Bool)

(assert (=> b!7472272 (= e!4458028 (not (= (head!15328 (_1!37613 lt!2626131)) (c!1380436 r2!5783))))))

(declare-fun b!7472273 () Bool)

(declare-fun res!2997749 () Bool)

(assert (=> b!7472273 (=> res!2997749 e!4458025)))

(assert (=> b!7472273 (= res!2997749 (not ((_ is ElementMatch!19585) r2!5783)))))

(assert (=> b!7472273 (= e!4458027 e!4458025)))

(assert (= (and d!2299186 c!1380604) b!7472260))

(assert (= (and d!2299186 (not c!1380604)) b!7472268))

(assert (= (and d!2299186 c!1380606) b!7472270))

(assert (= (and d!2299186 (not c!1380606)) b!7472261))

(assert (= (and b!7472261 c!1380605) b!7472269))

(assert (= (and b!7472261 (not c!1380605)) b!7472273))

(assert (= (and b!7472273 (not res!2997749)) b!7472267))

(assert (= (and b!7472267 res!2997752) b!7472263))

(assert (= (and b!7472263 res!2997753) b!7472266))

(assert (= (and b!7472266 res!2997755) b!7472265))

(assert (= (and b!7472267 (not res!2997748)) b!7472262))

(assert (= (and b!7472262 res!2997754) b!7472271))

(assert (= (and b!7472271 (not res!2997750)) b!7472264))

(assert (= (and b!7472264 (not res!2997751)) b!7472272))

(assert (= (or b!7472270 b!7472271 b!7472263) bm!686100))

(assert (=> bm!686100 m!8068384))

(declare-fun m!8068796 () Bool)

(assert (=> b!7472260 m!8068796))

(assert (=> b!7472265 m!8068454))

(assert (=> b!7472266 m!8068456))

(assert (=> b!7472266 m!8068456))

(assert (=> b!7472266 m!8068458))

(assert (=> d!2299186 m!8068384))

(assert (=> d!2299186 m!8068272))

(assert (=> b!7472272 m!8068454))

(assert (=> b!7472268 m!8068454))

(assert (=> b!7472268 m!8068454))

(declare-fun m!8068798 () Bool)

(assert (=> b!7472268 m!8068798))

(assert (=> b!7472268 m!8068456))

(assert (=> b!7472268 m!8068798))

(assert (=> b!7472268 m!8068456))

(declare-fun m!8068800 () Bool)

(assert (=> b!7472268 m!8068800))

(assert (=> b!7472264 m!8068456))

(assert (=> b!7472264 m!8068456))

(assert (=> b!7472264 m!8068458))

(assert (=> b!7471497 d!2299186))

(declare-fun b!7472274 () Bool)

(declare-fun e!4458032 () Bool)

(declare-fun e!4458033 () Bool)

(assert (=> b!7472274 (= e!4458032 e!4458033)))

(declare-fun c!1380608 () Bool)

(assert (=> b!7472274 (= c!1380608 ((_ is Union!19585) r1!5845))))

(declare-fun bm!686101 () Bool)

(declare-fun call!686108 () Bool)

(declare-fun call!686107 () Bool)

(assert (=> bm!686101 (= call!686108 call!686107)))

(declare-fun b!7472275 () Bool)

(declare-fun e!4458037 () Bool)

(assert (=> b!7472275 (= e!4458037 e!4458032)))

(declare-fun c!1380607 () Bool)

(assert (=> b!7472275 (= c!1380607 ((_ is Star!19585) r1!5845))))

(declare-fun b!7472276 () Bool)

(declare-fun res!2997757 () Bool)

(declare-fun e!4458036 () Bool)

(assert (=> b!7472276 (=> (not res!2997757) (not e!4458036))))

(declare-fun call!686106 () Bool)

(assert (=> b!7472276 (= res!2997757 call!686106)))

(assert (=> b!7472276 (= e!4458033 e!4458036)))

(declare-fun bm!686102 () Bool)

(assert (=> bm!686102 (= call!686106 (validRegex!10099 (ite c!1380608 (regOne!39683 r1!5845) (regOne!39682 r1!5845))))))

(declare-fun b!7472277 () Bool)

(declare-fun e!4458034 () Bool)

(assert (=> b!7472277 (= e!4458032 e!4458034)))

(declare-fun res!2997756 () Bool)

(assert (=> b!7472277 (= res!2997756 (not (nullable!8529 (reg!19914 r1!5845))))))

(assert (=> b!7472277 (=> (not res!2997756) (not e!4458034))))

(declare-fun d!2299188 () Bool)

(declare-fun res!2997759 () Bool)

(assert (=> d!2299188 (=> res!2997759 e!4458037)))

(assert (=> d!2299188 (= res!2997759 ((_ is ElementMatch!19585) r1!5845))))

(assert (=> d!2299188 (= (validRegex!10099 r1!5845) e!4458037)))

(declare-fun b!7472278 () Bool)

(declare-fun e!4458038 () Bool)

(declare-fun e!4458035 () Bool)

(assert (=> b!7472278 (= e!4458038 e!4458035)))

(declare-fun res!2997760 () Bool)

(assert (=> b!7472278 (=> (not res!2997760) (not e!4458035))))

(assert (=> b!7472278 (= res!2997760 call!686106)))

(declare-fun b!7472279 () Bool)

(assert (=> b!7472279 (= e!4458035 call!686108)))

(declare-fun b!7472280 () Bool)

(declare-fun res!2997758 () Bool)

(assert (=> b!7472280 (=> res!2997758 e!4458038)))

(assert (=> b!7472280 (= res!2997758 (not ((_ is Concat!28430) r1!5845)))))

(assert (=> b!7472280 (= e!4458033 e!4458038)))

(declare-fun b!7472281 () Bool)

(assert (=> b!7472281 (= e!4458034 call!686107)))

(declare-fun bm!686103 () Bool)

(assert (=> bm!686103 (= call!686107 (validRegex!10099 (ite c!1380607 (reg!19914 r1!5845) (ite c!1380608 (regTwo!39683 r1!5845) (regTwo!39682 r1!5845)))))))

(declare-fun b!7472282 () Bool)

(assert (=> b!7472282 (= e!4458036 call!686108)))

(assert (= (and d!2299188 (not res!2997759)) b!7472275))

(assert (= (and b!7472275 c!1380607) b!7472277))

(assert (= (and b!7472275 (not c!1380607)) b!7472274))

(assert (= (and b!7472277 res!2997756) b!7472281))

(assert (= (and b!7472274 c!1380608) b!7472276))

(assert (= (and b!7472274 (not c!1380608)) b!7472280))

(assert (= (and b!7472276 res!2997757) b!7472282))

(assert (= (and b!7472280 (not res!2997758)) b!7472278))

(assert (= (and b!7472278 res!2997760) b!7472279))

(assert (= (or b!7472282 b!7472279) bm!686101))

(assert (= (or b!7472276 b!7472278) bm!686102))

(assert (= (or b!7472281 bm!686101) bm!686103))

(declare-fun m!8068802 () Bool)

(assert (=> bm!686102 m!8068802))

(declare-fun m!8068804 () Bool)

(assert (=> b!7472277 m!8068804))

(declare-fun m!8068806 () Bool)

(assert (=> bm!686103 m!8068806))

(assert (=> start!724298 d!2299188))

(declare-fun b!7472295 () Bool)

(declare-fun e!4458041 () Bool)

(declare-fun tp!2166670 () Bool)

(assert (=> b!7472295 (= e!4458041 tp!2166670)))

(declare-fun b!7472293 () Bool)

(assert (=> b!7472293 (= e!4458041 tp_is_empty!49459)))

(declare-fun b!7472294 () Bool)

(declare-fun tp!2166674 () Bool)

(declare-fun tp!2166673 () Bool)

(assert (=> b!7472294 (= e!4458041 (and tp!2166674 tp!2166673))))

(assert (=> b!7471501 (= tp!2166564 e!4458041)))

(declare-fun b!7472296 () Bool)

(declare-fun tp!2166672 () Bool)

(declare-fun tp!2166671 () Bool)

(assert (=> b!7472296 (= e!4458041 (and tp!2166672 tp!2166671))))

(assert (= (and b!7471501 ((_ is ElementMatch!19585) (reg!19914 r1!5845))) b!7472293))

(assert (= (and b!7471501 ((_ is Concat!28430) (reg!19914 r1!5845))) b!7472294))

(assert (= (and b!7471501 ((_ is Star!19585) (reg!19914 r1!5845))) b!7472295))

(assert (= (and b!7471501 ((_ is Union!19585) (reg!19914 r1!5845))) b!7472296))

(declare-fun b!7472299 () Bool)

(declare-fun e!4458042 () Bool)

(declare-fun tp!2166675 () Bool)

(assert (=> b!7472299 (= e!4458042 tp!2166675)))

(declare-fun b!7472297 () Bool)

(assert (=> b!7472297 (= e!4458042 tp_is_empty!49459)))

(declare-fun b!7472298 () Bool)

(declare-fun tp!2166679 () Bool)

(declare-fun tp!2166678 () Bool)

(assert (=> b!7472298 (= e!4458042 (and tp!2166679 tp!2166678))))

(assert (=> b!7471484 (= tp!2166562 e!4458042)))

(declare-fun b!7472300 () Bool)

(declare-fun tp!2166677 () Bool)

(declare-fun tp!2166676 () Bool)

(assert (=> b!7472300 (= e!4458042 (and tp!2166677 tp!2166676))))

(assert (= (and b!7471484 ((_ is ElementMatch!19585) (reg!19914 rTail!78))) b!7472297))

(assert (= (and b!7471484 ((_ is Concat!28430) (reg!19914 rTail!78))) b!7472298))

(assert (= (and b!7471484 ((_ is Star!19585) (reg!19914 rTail!78))) b!7472299))

(assert (= (and b!7471484 ((_ is Union!19585) (reg!19914 rTail!78))) b!7472300))

(declare-fun b!7472303 () Bool)

(declare-fun e!4458043 () Bool)

(declare-fun tp!2166680 () Bool)

(assert (=> b!7472303 (= e!4458043 tp!2166680)))

(declare-fun b!7472301 () Bool)

(assert (=> b!7472301 (= e!4458043 tp_is_empty!49459)))

(declare-fun b!7472302 () Bool)

(declare-fun tp!2166684 () Bool)

(declare-fun tp!2166683 () Bool)

(assert (=> b!7472302 (= e!4458043 (and tp!2166684 tp!2166683))))

(assert (=> b!7471500 (= tp!2166566 e!4458043)))

(declare-fun b!7472304 () Bool)

(declare-fun tp!2166682 () Bool)

(declare-fun tp!2166681 () Bool)

(assert (=> b!7472304 (= e!4458043 (and tp!2166682 tp!2166681))))

(assert (= (and b!7471500 ((_ is ElementMatch!19585) (regOne!39683 rTail!78))) b!7472301))

(assert (= (and b!7471500 ((_ is Concat!28430) (regOne!39683 rTail!78))) b!7472302))

(assert (= (and b!7471500 ((_ is Star!19585) (regOne!39683 rTail!78))) b!7472303))

(assert (= (and b!7471500 ((_ is Union!19585) (regOne!39683 rTail!78))) b!7472304))

(declare-fun b!7472307 () Bool)

(declare-fun e!4458044 () Bool)

(declare-fun tp!2166685 () Bool)

(assert (=> b!7472307 (= e!4458044 tp!2166685)))

(declare-fun b!7472305 () Bool)

(assert (=> b!7472305 (= e!4458044 tp_is_empty!49459)))

(declare-fun b!7472306 () Bool)

(declare-fun tp!2166689 () Bool)

(declare-fun tp!2166688 () Bool)

(assert (=> b!7472306 (= e!4458044 (and tp!2166689 tp!2166688))))

(assert (=> b!7471500 (= tp!2166559 e!4458044)))

(declare-fun b!7472308 () Bool)

(declare-fun tp!2166687 () Bool)

(declare-fun tp!2166686 () Bool)

(assert (=> b!7472308 (= e!4458044 (and tp!2166687 tp!2166686))))

(assert (= (and b!7471500 ((_ is ElementMatch!19585) (regTwo!39683 rTail!78))) b!7472305))

(assert (= (and b!7471500 ((_ is Concat!28430) (regTwo!39683 rTail!78))) b!7472306))

(assert (= (and b!7471500 ((_ is Star!19585) (regTwo!39683 rTail!78))) b!7472307))

(assert (= (and b!7471500 ((_ is Union!19585) (regTwo!39683 rTail!78))) b!7472308))

(declare-fun b!7472311 () Bool)

(declare-fun e!4458045 () Bool)

(declare-fun tp!2166690 () Bool)

(assert (=> b!7472311 (= e!4458045 tp!2166690)))

(declare-fun b!7472309 () Bool)

(assert (=> b!7472309 (= e!4458045 tp_is_empty!49459)))

(declare-fun b!7472310 () Bool)

(declare-fun tp!2166694 () Bool)

(declare-fun tp!2166693 () Bool)

(assert (=> b!7472310 (= e!4458045 (and tp!2166694 tp!2166693))))

(assert (=> b!7471488 (= tp!2166557 e!4458045)))

(declare-fun b!7472312 () Bool)

(declare-fun tp!2166692 () Bool)

(declare-fun tp!2166691 () Bool)

(assert (=> b!7472312 (= e!4458045 (and tp!2166692 tp!2166691))))

(assert (= (and b!7471488 ((_ is ElementMatch!19585) (reg!19914 r2!5783))) b!7472309))

(assert (= (and b!7471488 ((_ is Concat!28430) (reg!19914 r2!5783))) b!7472310))

(assert (= (and b!7471488 ((_ is Star!19585) (reg!19914 r2!5783))) b!7472311))

(assert (= (and b!7471488 ((_ is Union!19585) (reg!19914 r2!5783))) b!7472312))

(declare-fun b!7472315 () Bool)

(declare-fun e!4458046 () Bool)

(declare-fun tp!2166695 () Bool)

(assert (=> b!7472315 (= e!4458046 tp!2166695)))

(declare-fun b!7472313 () Bool)

(assert (=> b!7472313 (= e!4458046 tp_is_empty!49459)))

(declare-fun b!7472314 () Bool)

(declare-fun tp!2166699 () Bool)

(declare-fun tp!2166698 () Bool)

(assert (=> b!7472314 (= e!4458046 (and tp!2166699 tp!2166698))))

(assert (=> b!7471493 (= tp!2166565 e!4458046)))

(declare-fun b!7472316 () Bool)

(declare-fun tp!2166697 () Bool)

(declare-fun tp!2166696 () Bool)

(assert (=> b!7472316 (= e!4458046 (and tp!2166697 tp!2166696))))

(assert (= (and b!7471493 ((_ is ElementMatch!19585) (regOne!39682 rTail!78))) b!7472313))

(assert (= (and b!7471493 ((_ is Concat!28430) (regOne!39682 rTail!78))) b!7472314))

(assert (= (and b!7471493 ((_ is Star!19585) (regOne!39682 rTail!78))) b!7472315))

(assert (= (and b!7471493 ((_ is Union!19585) (regOne!39682 rTail!78))) b!7472316))

(declare-fun b!7472319 () Bool)

(declare-fun e!4458047 () Bool)

(declare-fun tp!2166700 () Bool)

(assert (=> b!7472319 (= e!4458047 tp!2166700)))

(declare-fun b!7472317 () Bool)

(assert (=> b!7472317 (= e!4458047 tp_is_empty!49459)))

(declare-fun b!7472318 () Bool)

(declare-fun tp!2166704 () Bool)

(declare-fun tp!2166703 () Bool)

(assert (=> b!7472318 (= e!4458047 (and tp!2166704 tp!2166703))))

(assert (=> b!7471493 (= tp!2166558 e!4458047)))

(declare-fun b!7472320 () Bool)

(declare-fun tp!2166702 () Bool)

(declare-fun tp!2166701 () Bool)

(assert (=> b!7472320 (= e!4458047 (and tp!2166702 tp!2166701))))

(assert (= (and b!7471493 ((_ is ElementMatch!19585) (regTwo!39682 rTail!78))) b!7472317))

(assert (= (and b!7471493 ((_ is Concat!28430) (regTwo!39682 rTail!78))) b!7472318))

(assert (= (and b!7471493 ((_ is Star!19585) (regTwo!39682 rTail!78))) b!7472319))

(assert (= (and b!7471493 ((_ is Union!19585) (regTwo!39682 rTail!78))) b!7472320))

(declare-fun b!7472323 () Bool)

(declare-fun e!4458048 () Bool)

(declare-fun tp!2166705 () Bool)

(assert (=> b!7472323 (= e!4458048 tp!2166705)))

(declare-fun b!7472321 () Bool)

(assert (=> b!7472321 (= e!4458048 tp_is_empty!49459)))

(declare-fun b!7472322 () Bool)

(declare-fun tp!2166709 () Bool)

(declare-fun tp!2166708 () Bool)

(assert (=> b!7472322 (= e!4458048 (and tp!2166709 tp!2166708))))

(assert (=> b!7471483 (= tp!2166561 e!4458048)))

(declare-fun b!7472324 () Bool)

(declare-fun tp!2166707 () Bool)

(declare-fun tp!2166706 () Bool)

(assert (=> b!7472324 (= e!4458048 (and tp!2166707 tp!2166706))))

(assert (= (and b!7471483 ((_ is ElementMatch!19585) (regOne!39682 r1!5845))) b!7472321))

(assert (= (and b!7471483 ((_ is Concat!28430) (regOne!39682 r1!5845))) b!7472322))

(assert (= (and b!7471483 ((_ is Star!19585) (regOne!39682 r1!5845))) b!7472323))

(assert (= (and b!7471483 ((_ is Union!19585) (regOne!39682 r1!5845))) b!7472324))

(declare-fun b!7472327 () Bool)

(declare-fun e!4458049 () Bool)

(declare-fun tp!2166710 () Bool)

(assert (=> b!7472327 (= e!4458049 tp!2166710)))

(declare-fun b!7472325 () Bool)

(assert (=> b!7472325 (= e!4458049 tp_is_empty!49459)))

(declare-fun b!7472326 () Bool)

(declare-fun tp!2166714 () Bool)

(declare-fun tp!2166713 () Bool)

(assert (=> b!7472326 (= e!4458049 (and tp!2166714 tp!2166713))))

(assert (=> b!7471483 (= tp!2166569 e!4458049)))

(declare-fun b!7472328 () Bool)

(declare-fun tp!2166712 () Bool)

(declare-fun tp!2166711 () Bool)

(assert (=> b!7472328 (= e!4458049 (and tp!2166712 tp!2166711))))

(assert (= (and b!7471483 ((_ is ElementMatch!19585) (regTwo!39682 r1!5845))) b!7472325))

(assert (= (and b!7471483 ((_ is Concat!28430) (regTwo!39682 r1!5845))) b!7472326))

(assert (= (and b!7471483 ((_ is Star!19585) (regTwo!39682 r1!5845))) b!7472327))

(assert (= (and b!7471483 ((_ is Union!19585) (regTwo!39682 r1!5845))) b!7472328))

(declare-fun b!7472331 () Bool)

(declare-fun e!4458050 () Bool)

(declare-fun tp!2166715 () Bool)

(assert (=> b!7472331 (= e!4458050 tp!2166715)))

(declare-fun b!7472329 () Bool)

(assert (=> b!7472329 (= e!4458050 tp_is_empty!49459)))

(declare-fun b!7472330 () Bool)

(declare-fun tp!2166719 () Bool)

(declare-fun tp!2166718 () Bool)

(assert (=> b!7472330 (= e!4458050 (and tp!2166719 tp!2166718))))

(assert (=> b!7471492 (= tp!2166567 e!4458050)))

(declare-fun b!7472332 () Bool)

(declare-fun tp!2166717 () Bool)

(declare-fun tp!2166716 () Bool)

(assert (=> b!7472332 (= e!4458050 (and tp!2166717 tp!2166716))))

(assert (= (and b!7471492 ((_ is ElementMatch!19585) (regOne!39682 r2!5783))) b!7472329))

(assert (= (and b!7471492 ((_ is Concat!28430) (regOne!39682 r2!5783))) b!7472330))

(assert (= (and b!7471492 ((_ is Star!19585) (regOne!39682 r2!5783))) b!7472331))

(assert (= (and b!7471492 ((_ is Union!19585) (regOne!39682 r2!5783))) b!7472332))

(declare-fun b!7472335 () Bool)

(declare-fun e!4458051 () Bool)

(declare-fun tp!2166720 () Bool)

(assert (=> b!7472335 (= e!4458051 tp!2166720)))

(declare-fun b!7472333 () Bool)

(assert (=> b!7472333 (= e!4458051 tp_is_empty!49459)))

(declare-fun b!7472334 () Bool)

(declare-fun tp!2166724 () Bool)

(declare-fun tp!2166723 () Bool)

(assert (=> b!7472334 (= e!4458051 (and tp!2166724 tp!2166723))))

(assert (=> b!7471492 (= tp!2166571 e!4458051)))

(declare-fun b!7472336 () Bool)

(declare-fun tp!2166722 () Bool)

(declare-fun tp!2166721 () Bool)

(assert (=> b!7472336 (= e!4458051 (and tp!2166722 tp!2166721))))

(assert (= (and b!7471492 ((_ is ElementMatch!19585) (regTwo!39682 r2!5783))) b!7472333))

(assert (= (and b!7471492 ((_ is Concat!28430) (regTwo!39682 r2!5783))) b!7472334))

(assert (= (and b!7471492 ((_ is Star!19585) (regTwo!39682 r2!5783))) b!7472335))

(assert (= (and b!7471492 ((_ is Union!19585) (regTwo!39682 r2!5783))) b!7472336))

(declare-fun b!7472339 () Bool)

(declare-fun e!4458052 () Bool)

(declare-fun tp!2166725 () Bool)

(assert (=> b!7472339 (= e!4458052 tp!2166725)))

(declare-fun b!7472337 () Bool)

(assert (=> b!7472337 (= e!4458052 tp_is_empty!49459)))

(declare-fun b!7472338 () Bool)

(declare-fun tp!2166729 () Bool)

(declare-fun tp!2166728 () Bool)

(assert (=> b!7472338 (= e!4458052 (and tp!2166729 tp!2166728))))

(assert (=> b!7471482 (= tp!2166560 e!4458052)))

(declare-fun b!7472340 () Bool)

(declare-fun tp!2166727 () Bool)

(declare-fun tp!2166726 () Bool)

(assert (=> b!7472340 (= e!4458052 (and tp!2166727 tp!2166726))))

(assert (= (and b!7471482 ((_ is ElementMatch!19585) (regOne!39683 r2!5783))) b!7472337))

(assert (= (and b!7471482 ((_ is Concat!28430) (regOne!39683 r2!5783))) b!7472338))

(assert (= (and b!7471482 ((_ is Star!19585) (regOne!39683 r2!5783))) b!7472339))

(assert (= (and b!7471482 ((_ is Union!19585) (regOne!39683 r2!5783))) b!7472340))

(declare-fun b!7472343 () Bool)

(declare-fun e!4458053 () Bool)

(declare-fun tp!2166730 () Bool)

(assert (=> b!7472343 (= e!4458053 tp!2166730)))

(declare-fun b!7472341 () Bool)

(assert (=> b!7472341 (= e!4458053 tp_is_empty!49459)))

(declare-fun b!7472342 () Bool)

(declare-fun tp!2166734 () Bool)

(declare-fun tp!2166733 () Bool)

(assert (=> b!7472342 (= e!4458053 (and tp!2166734 tp!2166733))))

(assert (=> b!7471482 (= tp!2166563 e!4458053)))

(declare-fun b!7472344 () Bool)

(declare-fun tp!2166732 () Bool)

(declare-fun tp!2166731 () Bool)

(assert (=> b!7472344 (= e!4458053 (and tp!2166732 tp!2166731))))

(assert (= (and b!7471482 ((_ is ElementMatch!19585) (regTwo!39683 r2!5783))) b!7472341))

(assert (= (and b!7471482 ((_ is Concat!28430) (regTwo!39683 r2!5783))) b!7472342))

(assert (= (and b!7471482 ((_ is Star!19585) (regTwo!39683 r2!5783))) b!7472343))

(assert (= (and b!7471482 ((_ is Union!19585) (regTwo!39683 r2!5783))) b!7472344))

(declare-fun b!7472347 () Bool)

(declare-fun e!4458054 () Bool)

(declare-fun tp!2166735 () Bool)

(assert (=> b!7472347 (= e!4458054 tp!2166735)))

(declare-fun b!7472345 () Bool)

(assert (=> b!7472345 (= e!4458054 tp_is_empty!49459)))

(declare-fun b!7472346 () Bool)

(declare-fun tp!2166739 () Bool)

(declare-fun tp!2166738 () Bool)

(assert (=> b!7472346 (= e!4458054 (and tp!2166739 tp!2166738))))

(assert (=> b!7471498 (= tp!2166568 e!4458054)))

(declare-fun b!7472348 () Bool)

(declare-fun tp!2166737 () Bool)

(declare-fun tp!2166736 () Bool)

(assert (=> b!7472348 (= e!4458054 (and tp!2166737 tp!2166736))))

(assert (= (and b!7471498 ((_ is ElementMatch!19585) (regOne!39683 r1!5845))) b!7472345))

(assert (= (and b!7471498 ((_ is Concat!28430) (regOne!39683 r1!5845))) b!7472346))

(assert (= (and b!7471498 ((_ is Star!19585) (regOne!39683 r1!5845))) b!7472347))

(assert (= (and b!7471498 ((_ is Union!19585) (regOne!39683 r1!5845))) b!7472348))

(declare-fun b!7472351 () Bool)

(declare-fun e!4458055 () Bool)

(declare-fun tp!2166740 () Bool)

(assert (=> b!7472351 (= e!4458055 tp!2166740)))

(declare-fun b!7472349 () Bool)

(assert (=> b!7472349 (= e!4458055 tp_is_empty!49459)))

(declare-fun b!7472350 () Bool)

(declare-fun tp!2166744 () Bool)

(declare-fun tp!2166743 () Bool)

(assert (=> b!7472350 (= e!4458055 (and tp!2166744 tp!2166743))))

(assert (=> b!7471498 (= tp!2166556 e!4458055)))

(declare-fun b!7472352 () Bool)

(declare-fun tp!2166742 () Bool)

(declare-fun tp!2166741 () Bool)

(assert (=> b!7472352 (= e!4458055 (and tp!2166742 tp!2166741))))

(assert (= (and b!7471498 ((_ is ElementMatch!19585) (regTwo!39683 r1!5845))) b!7472349))

(assert (= (and b!7471498 ((_ is Concat!28430) (regTwo!39683 r1!5845))) b!7472350))

(assert (= (and b!7471498 ((_ is Star!19585) (regTwo!39683 r1!5845))) b!7472351))

(assert (= (and b!7471498 ((_ is Union!19585) (regTwo!39683 r1!5845))) b!7472352))

(declare-fun b!7472357 () Bool)

(declare-fun e!4458058 () Bool)

(declare-fun tp!2166747 () Bool)

(assert (=> b!7472357 (= e!4458058 (and tp_is_empty!49459 tp!2166747))))

(assert (=> b!7471487 (= tp!2166570 e!4458058)))

(assert (= (and b!7471487 ((_ is Cons!72177) (t!386870 s!13591))) b!7472357))

(check-sat (not b!7472336) (not b!7472310) (not bm!686070) (not bm!686039) (not b!7472323) (not b!7471789) (not d!2299172) (not b!7472067) (not d!2299152) (not b!7472268) (not b!7471958) (not b!7472072) (not bm!686063) (not d!2299154) (not b!7472199) (not b!7471914) (not b!7472170) (not b!7471855) (not b!7471850) (not b!7472259) (not b!7471679) (not bm!686092) (not d!2299176) (not b!7472204) (not d!2299080) (not b!7472156) (not b!7472171) (not b!7472028) (not bm!686074) (not d!2299082) (not b!7472352) (not b!7472021) (not b!7471593) (not b!7472351) (not bm!686098) (not b!7472307) (not b!7471856) (not b!7472178) (not bm!686083) (not d!2299072) (not b!7472251) (not d!2299184) (not d!2299178) (not b!7472308) (not b!7472266) (not bm!686088) (not b!7472331) (not bm!686026) (not b!7472304) (not d!2299132) (not b!7471915) (not d!2299162) (not bm!686025) (not b!7472330) (not b!7472322) (not bm!686090) (not b!7471909) (not b!7472174) (not d!2299186) (not b!7472022) (not b!7472306) (not b!7471610) (not b!7472206) (not b!7471862) (not b!7472343) (not b!7472298) (not b!7472264) (not b!7472315) (not b!7472295) (not b!7472346) (not b!7472257) (not b!7471781) (not b!7472335) (not b!7472319) (not b!7471785) (not d!2299170) (not bm!686103) (not b!7472338) (not b!7472347) (not bm!686075) (not d!2299160) (not b!7471881) (not b!7472300) (not bm!686100) (not b!7472249) (not bm!686028) (not b!7472332) (not d!2299174) (not b!7472016) (not b!7472231) (not bm!686071) (not bm!686061) (not b!7472070) (not b!7472245) (not d!2299056) (not b!7472172) (not d!2299144) (not bm!686038) (not b!7472201) (not b!7472296) (not b!7472339) (not b!7472302) (not b!7472311) (not b!7472260) (not b!7471879) (not bm!686089) (not b!7472252) (not b!7472328) (not d!2299134) (not b!7472277) (not bm!686091) (not b!7472198) (not b!7471926) (not bm!686051) (not b!7472348) (not bm!686027) (not b!7472334) (not bm!686094) (not b!7472222) (not b!7472203) (not b!7472059) (not bm!686099) (not b!7472060) (not bm!686097) (not b!7472254) (not bm!686102) (not d!2299148) (not b!7471595) (not b!7471960) (not d!2299164) (not d!2299084) (not bm!686072) (not b!7472294) (not b!7471854) (not b!7472020) (not b!7472303) (not b!7471858) (not d!2299102) (not d!2299100) (not b!7471782) (not d!2299156) (not b!7472314) (not b!7472158) (not b!7472350) (not b!7472243) (not b!7472326) (not d!2299158) (not b!7471777) (not d!2299180) (not bm!686064) (not b!7471921) (not b!7472055) (not b!7471913) (not b!7471924) (not b!7472320) (not b!7472318) (not b!7472357) (not b!7472344) tp_is_empty!49459 (not b!7472242) (not bm!686095) (not b!7472237) (not b!7472327) (not b!7472272) (not b!7472024) (not b!7471917) (not b!7472256) (not b!7472241) (not b!7472166) (not b!7472063) (not bm!686087) (not b!7472265) (not b!7472312) (not d!2299140) (not b!7472342) (not b!7472324) (not b!7472061) (not b!7472316) (not b!7471608) (not b!7472299) (not b!7472340) (not b!7471783))
(check-sat)
