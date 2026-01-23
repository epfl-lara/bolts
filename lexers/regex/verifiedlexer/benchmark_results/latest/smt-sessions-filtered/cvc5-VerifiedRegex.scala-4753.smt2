; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!245278 () Bool)

(assert start!245278)

(declare-fun b!2515267 () Bool)

(declare-fun res!1063249 () Bool)

(declare-fun e!1593585 () Bool)

(assert (=> b!2515267 (=> (not res!1063249) (not e!1593585))))

(declare-datatypes ((C!15118 0))(
  ( (C!15119 (val!9211 Int)) )
))
(declare-datatypes ((Regex!7480 0))(
  ( (ElementMatch!7480 (c!400892 C!15118)) (Concat!12176 (regOne!15472 Regex!7480) (regTwo!15472 Regex!7480)) (EmptyExpr!7480) (Star!7480 (reg!7809 Regex!7480)) (EmptyLang!7480) (Union!7480 (regOne!15473 Regex!7480) (regTwo!15473 Regex!7480)) )
))
(declare-fun r!27340 () Regex!7480)

(declare-fun c!14016 () C!15118)

(declare-datatypes ((List!29545 0))(
  ( (Nil!29445) (Cons!29445 (h!34865 C!15118) (t!211244 List!29545)) )
))
(declare-fun tl!4068 () List!29545)

(declare-fun nullable!2397 (Regex!7480) Bool)

(declare-fun derivative!175 (Regex!7480 List!29545) Regex!7480)

(declare-fun derivativeStep!2049 (Regex!7480 C!15118) Regex!7480)

(assert (=> b!2515267 (= res!1063249 (nullable!2397 (derivative!175 (derivativeStep!2049 r!27340 c!14016) tl!4068)))))

(declare-fun b!2515268 () Bool)

(declare-fun e!1593587 () Bool)

(declare-fun validRegex!3106 (Regex!7480) Bool)

(assert (=> b!2515268 (= e!1593587 (validRegex!3106 (regOne!15472 r!27340)))))

(declare-fun b!2515269 () Bool)

(declare-fun e!1593586 () Bool)

(declare-fun tp_is_empty!12815 () Bool)

(assert (=> b!2515269 (= e!1593586 tp_is_empty!12815)))

(declare-fun b!2515270 () Bool)

(declare-fun tp!803899 () Bool)

(declare-fun tp!803903 () Bool)

(assert (=> b!2515270 (= e!1593586 (and tp!803899 tp!803903))))

(declare-fun b!2515271 () Bool)

(declare-fun res!1063247 () Bool)

(assert (=> b!2515271 (=> res!1063247 e!1593587)))

(declare-datatypes ((tuple2!29490 0))(
  ( (tuple2!29491 (_1!17287 List!29545) (_2!17287 List!29545)) )
))
(declare-fun lt!898717 () tuple2!29490)

(declare-fun matchR!3479 (Regex!7480 List!29545) Bool)

(assert (=> b!2515271 (= res!1063247 (not (matchR!3479 (regTwo!15472 r!27340) (_2!17287 lt!898717))))))

(declare-fun b!2515272 () Bool)

(declare-fun res!1063248 () Bool)

(assert (=> b!2515272 (=> res!1063248 e!1593587)))

(assert (=> b!2515272 (= res!1063248 (not (matchR!3479 (regOne!15472 r!27340) (Cons!29445 c!14016 (_1!17287 lt!898717)))))))

(declare-fun b!2515273 () Bool)

(declare-fun e!1593588 () Bool)

(assert (=> b!2515273 (= e!1593588 e!1593587)))

(declare-fun res!1063250 () Bool)

(assert (=> b!2515273 (=> res!1063250 e!1593587)))

(declare-fun ++!7214 (List!29545 List!29545) List!29545)

(assert (=> b!2515273 (= res!1063250 (not (= (++!7214 (_1!17287 lt!898717) (_2!17287 lt!898717)) tl!4068)))))

(declare-datatypes ((Option!5865 0))(
  ( (None!5864) (Some!5864 (v!31795 tuple2!29490)) )
))
(declare-fun lt!898713 () Option!5865)

(declare-fun get!9184 (Option!5865) tuple2!29490)

(assert (=> b!2515273 (= lt!898717 (get!9184 lt!898713))))

(declare-fun isDefined!4687 (Option!5865) Bool)

(assert (=> b!2515273 (isDefined!4687 lt!898713)))

(declare-fun lt!898715 () Regex!7480)

(declare-fun findConcatSeparation!887 (Regex!7480 Regex!7480 List!29545 List!29545 List!29545) Option!5865)

(assert (=> b!2515273 (= lt!898713 (findConcatSeparation!887 lt!898715 (regTwo!15472 r!27340) Nil!29445 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43209 0))(
  ( (Unit!43210) )
))
(declare-fun lt!898712 () Unit!43209)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!169 (Regex!7480 Regex!7480 List!29545) Unit!43209)

(assert (=> b!2515273 (= lt!898712 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!169 lt!898715 (regTwo!15472 r!27340) tl!4068))))

(declare-fun b!2515274 () Bool)

(declare-fun tp!803902 () Bool)

(assert (=> b!2515274 (= e!1593586 tp!803902)))

(declare-fun b!2515276 () Bool)

(declare-fun res!1063246 () Bool)

(assert (=> b!2515276 (=> (not res!1063246) (not e!1593585))))

(assert (=> b!2515276 (= res!1063246 (and (not (is-EmptyExpr!7480 r!27340)) (not (is-EmptyLang!7480 r!27340)) (not (is-ElementMatch!7480 r!27340)) (not (is-Union!7480 r!27340)) (not (is-Star!7480 r!27340))))))

(declare-fun b!2515277 () Bool)

(declare-fun e!1593589 () Bool)

(assert (=> b!2515277 (= e!1593589 (matchR!3479 EmptyLang!7480 tl!4068))))

(declare-fun b!2515278 () Bool)

(declare-fun res!1063253 () Bool)

(assert (=> b!2515278 (=> res!1063253 e!1593587)))

(assert (=> b!2515278 (= res!1063253 (not (matchR!3479 lt!898715 (_1!17287 lt!898717))))))

(declare-fun res!1063251 () Bool)

(assert (=> start!245278 (=> (not res!1063251) (not e!1593585))))

(assert (=> start!245278 (= res!1063251 (validRegex!3106 r!27340))))

(assert (=> start!245278 e!1593585))

(assert (=> start!245278 e!1593586))

(assert (=> start!245278 tp_is_empty!12815))

(declare-fun e!1593590 () Bool)

(assert (=> start!245278 e!1593590))

(declare-fun b!2515275 () Bool)

(assert (=> b!2515275 (= e!1593585 (not e!1593588))))

(declare-fun res!1063254 () Bool)

(assert (=> b!2515275 (=> res!1063254 e!1593588)))

(declare-fun lt!898719 () Bool)

(assert (=> b!2515275 (= res!1063254 (not lt!898719))))

(assert (=> b!2515275 (= (derivative!175 EmptyLang!7480 tl!4068) EmptyLang!7480)))

(declare-fun lt!898720 () Unit!43209)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!27 (Regex!7480 List!29545) Unit!43209)

(assert (=> b!2515275 (= lt!898720 (lemmaEmptyLangDerivativeIsAFixPoint!27 EmptyLang!7480 tl!4068))))

(assert (=> b!2515275 e!1593589))

(declare-fun res!1063252 () Bool)

(assert (=> b!2515275 (=> res!1063252 e!1593589)))

(assert (=> b!2515275 (= res!1063252 lt!898719)))

(declare-fun lt!898718 () Regex!7480)

(assert (=> b!2515275 (= lt!898719 (matchR!3479 lt!898718 tl!4068))))

(declare-fun lt!898716 () Unit!43209)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!167 (Regex!7480 Regex!7480 List!29545) Unit!43209)

(assert (=> b!2515275 (= lt!898716 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!167 lt!898718 EmptyLang!7480 tl!4068))))

(declare-fun lt!898714 () Regex!7480)

(assert (=> b!2515275 (= (matchR!3479 lt!898714 tl!4068) (matchR!3479 (derivative!175 lt!898714 tl!4068) Nil!29445))))

(declare-fun lt!898711 () Unit!43209)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!125 (Regex!7480 List!29545) Unit!43209)

(assert (=> b!2515275 (= lt!898711 (lemmaMatchRIsSameAsWholeDerivativeAndNil!125 lt!898714 tl!4068))))

(assert (=> b!2515275 (= lt!898714 (Union!7480 lt!898718 EmptyLang!7480))))

(assert (=> b!2515275 (= lt!898718 (Concat!12176 lt!898715 (regTwo!15472 r!27340)))))

(assert (=> b!2515275 (= lt!898715 (derivativeStep!2049 (regOne!15472 r!27340) c!14016))))

(declare-fun b!2515279 () Bool)

(declare-fun tp!803904 () Bool)

(declare-fun tp!803901 () Bool)

(assert (=> b!2515279 (= e!1593586 (and tp!803904 tp!803901))))

(declare-fun b!2515280 () Bool)

(declare-fun tp!803900 () Bool)

(assert (=> b!2515280 (= e!1593590 (and tp_is_empty!12815 tp!803900))))

(declare-fun b!2515281 () Bool)

(declare-fun res!1063245 () Bool)

(assert (=> b!2515281 (=> (not res!1063245) (not e!1593585))))

(assert (=> b!2515281 (= res!1063245 (not (nullable!2397 (regOne!15472 r!27340))))))

(assert (= (and start!245278 res!1063251) b!2515267))

(assert (= (and b!2515267 res!1063249) b!2515276))

(assert (= (and b!2515276 res!1063246) b!2515281))

(assert (= (and b!2515281 res!1063245) b!2515275))

(assert (= (and b!2515275 (not res!1063252)) b!2515277))

(assert (= (and b!2515275 (not res!1063254)) b!2515273))

(assert (= (and b!2515273 (not res!1063250)) b!2515278))

(assert (= (and b!2515278 (not res!1063253)) b!2515271))

(assert (= (and b!2515271 (not res!1063247)) b!2515272))

(assert (= (and b!2515272 (not res!1063248)) b!2515268))

(assert (= (and start!245278 (is-ElementMatch!7480 r!27340)) b!2515269))

(assert (= (and start!245278 (is-Concat!12176 r!27340)) b!2515279))

(assert (= (and start!245278 (is-Star!7480 r!27340)) b!2515274))

(assert (= (and start!245278 (is-Union!7480 r!27340)) b!2515270))

(assert (= (and start!245278 (is-Cons!29445 tl!4068)) b!2515280))

(declare-fun m!2872529 () Bool)

(assert (=> b!2515277 m!2872529))

(declare-fun m!2872531 () Bool)

(assert (=> b!2515278 m!2872531))

(declare-fun m!2872533 () Bool)

(assert (=> b!2515267 m!2872533))

(assert (=> b!2515267 m!2872533))

(declare-fun m!2872535 () Bool)

(assert (=> b!2515267 m!2872535))

(assert (=> b!2515267 m!2872535))

(declare-fun m!2872537 () Bool)

(assert (=> b!2515267 m!2872537))

(declare-fun m!2872539 () Bool)

(assert (=> b!2515271 m!2872539))

(declare-fun m!2872541 () Bool)

(assert (=> b!2515272 m!2872541))

(declare-fun m!2872543 () Bool)

(assert (=> b!2515275 m!2872543))

(declare-fun m!2872545 () Bool)

(assert (=> b!2515275 m!2872545))

(declare-fun m!2872547 () Bool)

(assert (=> b!2515275 m!2872547))

(declare-fun m!2872549 () Bool)

(assert (=> b!2515275 m!2872549))

(declare-fun m!2872551 () Bool)

(assert (=> b!2515275 m!2872551))

(declare-fun m!2872553 () Bool)

(assert (=> b!2515275 m!2872553))

(declare-fun m!2872555 () Bool)

(assert (=> b!2515275 m!2872555))

(declare-fun m!2872557 () Bool)

(assert (=> b!2515275 m!2872557))

(assert (=> b!2515275 m!2872543))

(declare-fun m!2872559 () Bool)

(assert (=> b!2515275 m!2872559))

(declare-fun m!2872561 () Bool)

(assert (=> b!2515273 m!2872561))

(declare-fun m!2872563 () Bool)

(assert (=> b!2515273 m!2872563))

(declare-fun m!2872565 () Bool)

(assert (=> b!2515273 m!2872565))

(declare-fun m!2872567 () Bool)

(assert (=> b!2515273 m!2872567))

(declare-fun m!2872569 () Bool)

(assert (=> b!2515273 m!2872569))

(declare-fun m!2872571 () Bool)

(assert (=> b!2515281 m!2872571))

(declare-fun m!2872573 () Bool)

(assert (=> start!245278 m!2872573))

(declare-fun m!2872575 () Bool)

(assert (=> b!2515268 m!2872575))

(push 1)

(assert (not b!2515280))

(assert (not b!2515268))

(assert tp_is_empty!12815)

(assert (not b!2515281))

(assert (not b!2515278))

(assert (not b!2515274))

(assert (not b!2515271))

(assert (not b!2515272))

(assert (not b!2515273))

(assert (not b!2515275))

(assert (not b!2515267))

(assert (not b!2515279))

(assert (not start!245278))

(assert (not b!2515277))

(assert (not b!2515270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2515351 () Bool)

(declare-fun e!1593632 () Bool)

(declare-fun e!1593626 () Bool)

(assert (=> b!2515351 (= e!1593632 e!1593626)))

(declare-fun res!1063296 () Bool)

(assert (=> b!2515351 (=> (not res!1063296) (not e!1593626))))

(declare-fun call!156273 () Bool)

(assert (=> b!2515351 (= res!1063296 call!156273)))

(declare-fun c!400902 () Bool)

(declare-fun bm!156267 () Bool)

(declare-fun call!156274 () Bool)

(declare-fun c!400901 () Bool)

(assert (=> bm!156267 (= call!156274 (validRegex!3106 (ite c!400901 (reg!7809 (regOne!15472 r!27340)) (ite c!400902 (regOne!15473 (regOne!15472 r!27340)) (regTwo!15472 (regOne!15472 r!27340))))))))

(declare-fun b!2515352 () Bool)

(declare-fun res!1063297 () Bool)

(declare-fun e!1593631 () Bool)

(assert (=> b!2515352 (=> (not res!1063297) (not e!1593631))))

(declare-fun call!156272 () Bool)

(assert (=> b!2515352 (= res!1063297 call!156272)))

(declare-fun e!1593629 () Bool)

(assert (=> b!2515352 (= e!1593629 e!1593631)))

(declare-fun b!2515354 () Bool)

(declare-fun res!1063298 () Bool)

(assert (=> b!2515354 (=> res!1063298 e!1593632)))

(assert (=> b!2515354 (= res!1063298 (not (is-Concat!12176 (regOne!15472 r!27340))))))

(assert (=> b!2515354 (= e!1593629 e!1593632)))

(declare-fun b!2515355 () Bool)

(assert (=> b!2515355 (= e!1593626 call!156272)))

(declare-fun bm!156268 () Bool)

(assert (=> bm!156268 (= call!156273 (validRegex!3106 (ite c!400902 (regTwo!15473 (regOne!15472 r!27340)) (regOne!15472 (regOne!15472 r!27340)))))))

(declare-fun b!2515356 () Bool)

(declare-fun e!1593628 () Bool)

(assert (=> b!2515356 (= e!1593628 call!156274)))

(declare-fun d!717278 () Bool)

(declare-fun res!1063299 () Bool)

(declare-fun e!1593630 () Bool)

(assert (=> d!717278 (=> res!1063299 e!1593630)))

(assert (=> d!717278 (= res!1063299 (is-ElementMatch!7480 (regOne!15472 r!27340)))))

(assert (=> d!717278 (= (validRegex!3106 (regOne!15472 r!27340)) e!1593630)))

(declare-fun b!2515353 () Bool)

(declare-fun e!1593627 () Bool)

(assert (=> b!2515353 (= e!1593630 e!1593627)))

(assert (=> b!2515353 (= c!400901 (is-Star!7480 (regOne!15472 r!27340)))))

(declare-fun b!2515357 () Bool)

(assert (=> b!2515357 (= e!1593627 e!1593629)))

(assert (=> b!2515357 (= c!400902 (is-Union!7480 (regOne!15472 r!27340)))))

(declare-fun b!2515358 () Bool)

(assert (=> b!2515358 (= e!1593627 e!1593628)))

(declare-fun res!1063295 () Bool)

(assert (=> b!2515358 (= res!1063295 (not (nullable!2397 (reg!7809 (regOne!15472 r!27340)))))))

(assert (=> b!2515358 (=> (not res!1063295) (not e!1593628))))

(declare-fun bm!156269 () Bool)

(assert (=> bm!156269 (= call!156272 call!156274)))

(declare-fun b!2515359 () Bool)

(assert (=> b!2515359 (= e!1593631 call!156273)))

(assert (= (and d!717278 (not res!1063299)) b!2515353))

(assert (= (and b!2515353 c!400901) b!2515358))

(assert (= (and b!2515353 (not c!400901)) b!2515357))

(assert (= (and b!2515358 res!1063295) b!2515356))

(assert (= (and b!2515357 c!400902) b!2515352))

(assert (= (and b!2515357 (not c!400902)) b!2515354))

(assert (= (and b!2515352 res!1063297) b!2515359))

(assert (= (and b!2515354 (not res!1063298)) b!2515351))

(assert (= (and b!2515351 res!1063296) b!2515355))

(assert (= (or b!2515352 b!2515355) bm!156269))

(assert (= (or b!2515359 b!2515351) bm!156268))

(assert (= (or b!2515356 bm!156269) bm!156267))

(declare-fun m!2872635 () Bool)

(assert (=> bm!156267 m!2872635))

(declare-fun m!2872637 () Bool)

(assert (=> bm!156268 m!2872637))

(declare-fun m!2872639 () Bool)

(assert (=> b!2515358 m!2872639))

(assert (=> b!2515268 d!717278))

(declare-fun d!717282 () Bool)

(declare-fun nullableFct!643 (Regex!7480) Bool)

(assert (=> d!717282 (= (nullable!2397 (derivative!175 (derivativeStep!2049 r!27340 c!14016) tl!4068)) (nullableFct!643 (derivative!175 (derivativeStep!2049 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468879 () Bool)

(assert (= bs!468879 d!717282))

(assert (=> bs!468879 m!2872535))

(declare-fun m!2872641 () Bool)

(assert (=> bs!468879 m!2872641))

(assert (=> b!2515267 d!717282))

(declare-fun d!717284 () Bool)

(declare-fun lt!898756 () Regex!7480)

(assert (=> d!717284 (validRegex!3106 lt!898756)))

(declare-fun e!1593635 () Regex!7480)

(assert (=> d!717284 (= lt!898756 e!1593635)))

(declare-fun c!400905 () Bool)

(assert (=> d!717284 (= c!400905 (is-Cons!29445 tl!4068))))

(assert (=> d!717284 (validRegex!3106 (derivativeStep!2049 r!27340 c!14016))))

(assert (=> d!717284 (= (derivative!175 (derivativeStep!2049 r!27340 c!14016) tl!4068) lt!898756)))

(declare-fun b!2515364 () Bool)

(assert (=> b!2515364 (= e!1593635 (derivative!175 (derivativeStep!2049 (derivativeStep!2049 r!27340 c!14016) (h!34865 tl!4068)) (t!211244 tl!4068)))))

(declare-fun b!2515365 () Bool)

(assert (=> b!2515365 (= e!1593635 (derivativeStep!2049 r!27340 c!14016))))

(assert (= (and d!717284 c!400905) b!2515364))

(assert (= (and d!717284 (not c!400905)) b!2515365))

(declare-fun m!2872643 () Bool)

(assert (=> d!717284 m!2872643))

(assert (=> d!717284 m!2872533))

(declare-fun m!2872645 () Bool)

(assert (=> d!717284 m!2872645))

(assert (=> b!2515364 m!2872533))

(declare-fun m!2872647 () Bool)

(assert (=> b!2515364 m!2872647))

(assert (=> b!2515364 m!2872647))

(declare-fun m!2872649 () Bool)

(assert (=> b!2515364 m!2872649))

(assert (=> b!2515267 d!717284))

(declare-fun b!2515406 () Bool)

(declare-fun c!400930 () Bool)

(assert (=> b!2515406 (= c!400930 (nullable!2397 (regOne!15472 r!27340)))))

(declare-fun e!1593660 () Regex!7480)

(declare-fun e!1593657 () Regex!7480)

(assert (=> b!2515406 (= e!1593660 e!1593657)))

(declare-fun call!156293 () Regex!7480)

(declare-fun bm!156286 () Bool)

(declare-fun c!400928 () Bool)

(assert (=> bm!156286 (= call!156293 (derivativeStep!2049 (ite c!400928 (regTwo!15473 r!27340) (regTwo!15472 r!27340)) c!14016))))

(declare-fun b!2515407 () Bool)

(declare-fun e!1593658 () Regex!7480)

(declare-fun call!156292 () Regex!7480)

(assert (=> b!2515407 (= e!1593658 (Union!7480 call!156292 call!156293))))

(declare-fun b!2515408 () Bool)

(declare-fun e!1593656 () Regex!7480)

(assert (=> b!2515408 (= e!1593656 EmptyLang!7480)))

(declare-fun b!2515409 () Bool)

(assert (=> b!2515409 (= c!400928 (is-Union!7480 r!27340))))

(declare-fun e!1593659 () Regex!7480)

(assert (=> b!2515409 (= e!1593659 e!1593658)))

(declare-fun bm!156287 () Bool)

(declare-fun call!156294 () Regex!7480)

(assert (=> bm!156287 (= call!156294 call!156292)))

(declare-fun bm!156288 () Bool)

(declare-fun c!400929 () Bool)

(assert (=> bm!156288 (= call!156292 (derivativeStep!2049 (ite c!400928 (regOne!15473 r!27340) (ite c!400929 (reg!7809 r!27340) (regOne!15472 r!27340))) c!14016))))

(declare-fun b!2515410 () Bool)

(assert (=> b!2515410 (= e!1593659 (ite (= c!14016 (c!400892 r!27340)) EmptyExpr!7480 EmptyLang!7480))))

(declare-fun b!2515412 () Bool)

(assert (=> b!2515412 (= e!1593658 e!1593660)))

(assert (=> b!2515412 (= c!400929 (is-Star!7480 r!27340))))

(declare-fun bm!156289 () Bool)

(declare-fun call!156291 () Regex!7480)

(assert (=> bm!156289 (= call!156291 call!156294)))

(declare-fun b!2515413 () Bool)

(assert (=> b!2515413 (= e!1593657 (Union!7480 (Concat!12176 call!156291 (regTwo!15472 r!27340)) EmptyLang!7480))))

(declare-fun b!2515414 () Bool)

(assert (=> b!2515414 (= e!1593656 e!1593659)))

(declare-fun c!400926 () Bool)

(assert (=> b!2515414 (= c!400926 (is-ElementMatch!7480 r!27340))))

(declare-fun b!2515415 () Bool)

(assert (=> b!2515415 (= e!1593660 (Concat!12176 call!156294 r!27340))))

(declare-fun d!717286 () Bool)

(declare-fun lt!898761 () Regex!7480)

(assert (=> d!717286 (validRegex!3106 lt!898761)))

(assert (=> d!717286 (= lt!898761 e!1593656)))

(declare-fun c!400927 () Bool)

(assert (=> d!717286 (= c!400927 (or (is-EmptyExpr!7480 r!27340) (is-EmptyLang!7480 r!27340)))))

(assert (=> d!717286 (validRegex!3106 r!27340)))

(assert (=> d!717286 (= (derivativeStep!2049 r!27340 c!14016) lt!898761)))

(declare-fun b!2515411 () Bool)

(assert (=> b!2515411 (= e!1593657 (Union!7480 (Concat!12176 call!156291 (regTwo!15472 r!27340)) call!156293))))

(assert (= (and d!717286 c!400927) b!2515408))

(assert (= (and d!717286 (not c!400927)) b!2515414))

(assert (= (and b!2515414 c!400926) b!2515410))

(assert (= (and b!2515414 (not c!400926)) b!2515409))

(assert (= (and b!2515409 c!400928) b!2515407))

(assert (= (and b!2515409 (not c!400928)) b!2515412))

(assert (= (and b!2515412 c!400929) b!2515415))

(assert (= (and b!2515412 (not c!400929)) b!2515406))

(assert (= (and b!2515406 c!400930) b!2515411))

(assert (= (and b!2515406 (not c!400930)) b!2515413))

(assert (= (or b!2515411 b!2515413) bm!156289))

(assert (= (or b!2515415 bm!156289) bm!156287))

(assert (= (or b!2515407 b!2515411) bm!156286))

(assert (= (or b!2515407 bm!156287) bm!156288))

(assert (=> b!2515406 m!2872571))

(declare-fun m!2872651 () Bool)

(assert (=> bm!156286 m!2872651))

(declare-fun m!2872653 () Bool)

(assert (=> bm!156288 m!2872653))

(declare-fun m!2872655 () Bool)

(assert (=> d!717286 m!2872655))

(assert (=> d!717286 m!2872573))

(assert (=> b!2515267 d!717286))

(declare-fun b!2515454 () Bool)

(declare-fun e!1593680 () Bool)

(declare-fun e!1593684 () Bool)

(assert (=> b!2515454 (= e!1593680 e!1593684)))

(declare-fun c!400943 () Bool)

(assert (=> b!2515454 (= c!400943 (is-EmptyLang!7480 (regOne!15472 r!27340)))))

(declare-fun b!2515455 () Bool)

(declare-fun lt!898765 () Bool)

(assert (=> b!2515455 (= e!1593684 (not lt!898765))))

(declare-fun b!2515456 () Bool)

(declare-fun res!1063320 () Bool)

(declare-fun e!1593685 () Bool)

(assert (=> b!2515456 (=> res!1063320 e!1593685)))

(declare-fun e!1593683 () Bool)

(assert (=> b!2515456 (= res!1063320 e!1593683)))

(declare-fun res!1063319 () Bool)

(assert (=> b!2515456 (=> (not res!1063319) (not e!1593683))))

(assert (=> b!2515456 (= res!1063319 lt!898765)))

(declare-fun b!2515457 () Bool)

(declare-fun head!5745 (List!29545) C!15118)

(assert (=> b!2515457 (= e!1593683 (= (head!5745 (Cons!29445 c!14016 (_1!17287 lt!898717))) (c!400892 (regOne!15472 r!27340))))))

(declare-fun b!2515458 () Bool)

(declare-fun res!1063321 () Bool)

(assert (=> b!2515458 (=> (not res!1063321) (not e!1593683))))

(declare-fun isEmpty!16915 (List!29545) Bool)

(declare-fun tail!4022 (List!29545) List!29545)

(assert (=> b!2515458 (= res!1063321 (isEmpty!16915 (tail!4022 (Cons!29445 c!14016 (_1!17287 lt!898717)))))))

(declare-fun b!2515459 () Bool)

(declare-fun res!1063322 () Bool)

(declare-fun e!1593682 () Bool)

(assert (=> b!2515459 (=> res!1063322 e!1593682)))

(assert (=> b!2515459 (= res!1063322 (not (isEmpty!16915 (tail!4022 (Cons!29445 c!14016 (_1!17287 lt!898717))))))))

(declare-fun b!2515461 () Bool)

(declare-fun call!156301 () Bool)

(assert (=> b!2515461 (= e!1593680 (= lt!898765 call!156301))))

(declare-fun b!2515462 () Bool)

(declare-fun res!1063318 () Bool)

(assert (=> b!2515462 (=> res!1063318 e!1593685)))

(assert (=> b!2515462 (= res!1063318 (not (is-ElementMatch!7480 (regOne!15472 r!27340))))))

(assert (=> b!2515462 (= e!1593684 e!1593685)))

(declare-fun b!2515463 () Bool)

(declare-fun e!1593681 () Bool)

(assert (=> b!2515463 (= e!1593685 e!1593681)))

(declare-fun res!1063323 () Bool)

(assert (=> b!2515463 (=> (not res!1063323) (not e!1593681))))

(assert (=> b!2515463 (= res!1063323 (not lt!898765))))

(declare-fun b!2515464 () Bool)

(declare-fun e!1593686 () Bool)

(assert (=> b!2515464 (= e!1593686 (nullable!2397 (regOne!15472 r!27340)))))

(declare-fun d!717288 () Bool)

(assert (=> d!717288 e!1593680))

(declare-fun c!400944 () Bool)

(assert (=> d!717288 (= c!400944 (is-EmptyExpr!7480 (regOne!15472 r!27340)))))

(assert (=> d!717288 (= lt!898765 e!1593686)))

(declare-fun c!400942 () Bool)

(assert (=> d!717288 (= c!400942 (isEmpty!16915 (Cons!29445 c!14016 (_1!17287 lt!898717))))))

(assert (=> d!717288 (validRegex!3106 (regOne!15472 r!27340))))

(assert (=> d!717288 (= (matchR!3479 (regOne!15472 r!27340) (Cons!29445 c!14016 (_1!17287 lt!898717))) lt!898765)))

(declare-fun b!2515460 () Bool)

(assert (=> b!2515460 (= e!1593686 (matchR!3479 (derivativeStep!2049 (regOne!15472 r!27340) (head!5745 (Cons!29445 c!14016 (_1!17287 lt!898717)))) (tail!4022 (Cons!29445 c!14016 (_1!17287 lt!898717)))))))

(declare-fun b!2515465 () Bool)

(declare-fun res!1063316 () Bool)

(assert (=> b!2515465 (=> (not res!1063316) (not e!1593683))))

(assert (=> b!2515465 (= res!1063316 (not call!156301))))

(declare-fun b!2515466 () Bool)

(assert (=> b!2515466 (= e!1593682 (not (= (head!5745 (Cons!29445 c!14016 (_1!17287 lt!898717))) (c!400892 (regOne!15472 r!27340)))))))

(declare-fun bm!156296 () Bool)

(assert (=> bm!156296 (= call!156301 (isEmpty!16915 (Cons!29445 c!14016 (_1!17287 lt!898717))))))

(declare-fun b!2515467 () Bool)

(assert (=> b!2515467 (= e!1593681 e!1593682)))

(declare-fun res!1063317 () Bool)

(assert (=> b!2515467 (=> res!1063317 e!1593682)))

(assert (=> b!2515467 (= res!1063317 call!156301)))

(assert (= (and d!717288 c!400942) b!2515464))

(assert (= (and d!717288 (not c!400942)) b!2515460))

(assert (= (and d!717288 c!400944) b!2515461))

(assert (= (and d!717288 (not c!400944)) b!2515454))

(assert (= (and b!2515454 c!400943) b!2515455))

(assert (= (and b!2515454 (not c!400943)) b!2515462))

(assert (= (and b!2515462 (not res!1063318)) b!2515456))

(assert (= (and b!2515456 res!1063319) b!2515465))

(assert (= (and b!2515465 res!1063316) b!2515458))

(assert (= (and b!2515458 res!1063321) b!2515457))

(assert (= (and b!2515456 (not res!1063320)) b!2515463))

(assert (= (and b!2515463 res!1063323) b!2515467))

(assert (= (and b!2515467 (not res!1063317)) b!2515459))

(assert (= (and b!2515459 (not res!1063322)) b!2515466))

(assert (= (or b!2515461 b!2515467 b!2515465) bm!156296))

(declare-fun m!2872663 () Bool)

(assert (=> b!2515459 m!2872663))

(assert (=> b!2515459 m!2872663))

(declare-fun m!2872665 () Bool)

(assert (=> b!2515459 m!2872665))

(assert (=> b!2515464 m!2872571))

(declare-fun m!2872667 () Bool)

(assert (=> d!717288 m!2872667))

(assert (=> d!717288 m!2872575))

(assert (=> b!2515458 m!2872663))

(assert (=> b!2515458 m!2872663))

(assert (=> b!2515458 m!2872665))

(declare-fun m!2872669 () Bool)

(assert (=> b!2515460 m!2872669))

(assert (=> b!2515460 m!2872669))

(declare-fun m!2872671 () Bool)

(assert (=> b!2515460 m!2872671))

(assert (=> b!2515460 m!2872663))

(assert (=> b!2515460 m!2872671))

(assert (=> b!2515460 m!2872663))

(declare-fun m!2872673 () Bool)

(assert (=> b!2515460 m!2872673))

(assert (=> b!2515466 m!2872669))

(assert (=> bm!156296 m!2872667))

(assert (=> b!2515457 m!2872669))

(assert (=> b!2515272 d!717288))

(declare-fun d!717292 () Bool)

(assert (=> d!717292 (= (get!9184 lt!898713) (v!31795 lt!898713))))

(assert (=> b!2515273 d!717292))

(declare-fun d!717294 () Bool)

(assert (=> d!717294 (isDefined!4687 (findConcatSeparation!887 lt!898715 (regTwo!15472 r!27340) Nil!29445 tl!4068 tl!4068))))

(declare-fun lt!898768 () Unit!43209)

(declare-fun choose!14915 (Regex!7480 Regex!7480 List!29545) Unit!43209)

(assert (=> d!717294 (= lt!898768 (choose!14915 lt!898715 (regTwo!15472 r!27340) tl!4068))))

(assert (=> d!717294 (validRegex!3106 lt!898715)))

(assert (=> d!717294 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!169 lt!898715 (regTwo!15472 r!27340) tl!4068) lt!898768)))

(declare-fun bs!468880 () Bool)

(assert (= bs!468880 d!717294))

(assert (=> bs!468880 m!2872567))

(assert (=> bs!468880 m!2872567))

(declare-fun m!2872675 () Bool)

(assert (=> bs!468880 m!2872675))

(declare-fun m!2872677 () Bool)

(assert (=> bs!468880 m!2872677))

(declare-fun m!2872679 () Bool)

(assert (=> bs!468880 m!2872679))

(assert (=> b!2515273 d!717294))

(declare-fun b!2515513 () Bool)

(declare-fun lt!898776 () Unit!43209)

(declare-fun lt!898777 () Unit!43209)

(assert (=> b!2515513 (= lt!898776 lt!898777)))

(assert (=> b!2515513 (= (++!7214 (++!7214 Nil!29445 (Cons!29445 (h!34865 tl!4068) Nil!29445)) (t!211244 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!760 (List!29545 C!15118 List!29545 List!29545) Unit!43209)

(assert (=> b!2515513 (= lt!898777 (lemmaMoveElementToOtherListKeepsConcatEq!760 Nil!29445 (h!34865 tl!4068) (t!211244 tl!4068) tl!4068))))

(declare-fun e!1593718 () Option!5865)

(assert (=> b!2515513 (= e!1593718 (findConcatSeparation!887 lt!898715 (regTwo!15472 r!27340) (++!7214 Nil!29445 (Cons!29445 (h!34865 tl!4068) Nil!29445)) (t!211244 tl!4068) tl!4068))))

(declare-fun b!2515514 () Bool)

(declare-fun e!1593722 () Bool)

(assert (=> b!2515514 (= e!1593722 (matchR!3479 (regTwo!15472 r!27340) tl!4068))))

(declare-fun b!2515515 () Bool)

(declare-fun res!1063350 () Bool)

(declare-fun e!1593721 () Bool)

(assert (=> b!2515515 (=> (not res!1063350) (not e!1593721))))

(declare-fun lt!898775 () Option!5865)

(assert (=> b!2515515 (= res!1063350 (matchR!3479 (regTwo!15472 r!27340) (_2!17287 (get!9184 lt!898775))))))

(declare-fun b!2515516 () Bool)

(assert (=> b!2515516 (= e!1593718 None!5864)))

(declare-fun b!2515518 () Bool)

(declare-fun e!1593719 () Option!5865)

(assert (=> b!2515518 (= e!1593719 e!1593718)))

(declare-fun c!400955 () Bool)

(assert (=> b!2515518 (= c!400955 (is-Nil!29445 tl!4068))))

(declare-fun b!2515519 () Bool)

(assert (=> b!2515519 (= e!1593721 (= (++!7214 (_1!17287 (get!9184 lt!898775)) (_2!17287 (get!9184 lt!898775))) tl!4068))))

(declare-fun b!2515520 () Bool)

(assert (=> b!2515520 (= e!1593719 (Some!5864 (tuple2!29491 Nil!29445 tl!4068)))))

(declare-fun b!2515521 () Bool)

(declare-fun e!1593720 () Bool)

(assert (=> b!2515521 (= e!1593720 (not (isDefined!4687 lt!898775)))))

(declare-fun d!717296 () Bool)

(assert (=> d!717296 e!1593720))

(declare-fun res!1063351 () Bool)

(assert (=> d!717296 (=> res!1063351 e!1593720)))

(assert (=> d!717296 (= res!1063351 e!1593721)))

(declare-fun res!1063352 () Bool)

(assert (=> d!717296 (=> (not res!1063352) (not e!1593721))))

(assert (=> d!717296 (= res!1063352 (isDefined!4687 lt!898775))))

(assert (=> d!717296 (= lt!898775 e!1593719)))

(declare-fun c!400956 () Bool)

(assert (=> d!717296 (= c!400956 e!1593722)))

(declare-fun res!1063349 () Bool)

(assert (=> d!717296 (=> (not res!1063349) (not e!1593722))))

(assert (=> d!717296 (= res!1063349 (matchR!3479 lt!898715 Nil!29445))))

(assert (=> d!717296 (validRegex!3106 lt!898715)))

(assert (=> d!717296 (= (findConcatSeparation!887 lt!898715 (regTwo!15472 r!27340) Nil!29445 tl!4068 tl!4068) lt!898775)))

(declare-fun b!2515517 () Bool)

(declare-fun res!1063353 () Bool)

(assert (=> b!2515517 (=> (not res!1063353) (not e!1593721))))

(assert (=> b!2515517 (= res!1063353 (matchR!3479 lt!898715 (_1!17287 (get!9184 lt!898775))))))

(assert (= (and d!717296 res!1063349) b!2515514))

(assert (= (and d!717296 c!400956) b!2515520))

(assert (= (and d!717296 (not c!400956)) b!2515518))

(assert (= (and b!2515518 c!400955) b!2515516))

(assert (= (and b!2515518 (not c!400955)) b!2515513))

(assert (= (and d!717296 res!1063352) b!2515517))

(assert (= (and b!2515517 res!1063353) b!2515515))

(assert (= (and b!2515515 res!1063350) b!2515519))

(assert (= (and d!717296 (not res!1063351)) b!2515521))

(declare-fun m!2872687 () Bool)

(assert (=> b!2515514 m!2872687))

(declare-fun m!2872689 () Bool)

(assert (=> b!2515519 m!2872689))

(declare-fun m!2872691 () Bool)

(assert (=> b!2515519 m!2872691))

(declare-fun m!2872693 () Bool)

(assert (=> d!717296 m!2872693))

(declare-fun m!2872695 () Bool)

(assert (=> d!717296 m!2872695))

(assert (=> d!717296 m!2872679))

(assert (=> b!2515515 m!2872689))

(declare-fun m!2872697 () Bool)

(assert (=> b!2515515 m!2872697))

(declare-fun m!2872699 () Bool)

(assert (=> b!2515513 m!2872699))

(assert (=> b!2515513 m!2872699))

(declare-fun m!2872701 () Bool)

(assert (=> b!2515513 m!2872701))

(declare-fun m!2872703 () Bool)

(assert (=> b!2515513 m!2872703))

(assert (=> b!2515513 m!2872699))

(declare-fun m!2872705 () Bool)

(assert (=> b!2515513 m!2872705))

(assert (=> b!2515521 m!2872693))

(assert (=> b!2515517 m!2872689))

(declare-fun m!2872707 () Bool)

(assert (=> b!2515517 m!2872707))

(assert (=> b!2515273 d!717296))

(declare-fun d!717300 () Bool)

(declare-fun isEmpty!16916 (Option!5865) Bool)

(assert (=> d!717300 (= (isDefined!4687 lt!898713) (not (isEmpty!16916 lt!898713)))))

(declare-fun bs!468881 () Bool)

(assert (= bs!468881 d!717300))

(declare-fun m!2872709 () Bool)

(assert (=> bs!468881 m!2872709))

(assert (=> b!2515273 d!717300))

(declare-fun b!2515558 () Bool)

(declare-fun e!1593741 () List!29545)

(assert (=> b!2515558 (= e!1593741 (_2!17287 lt!898717))))

(declare-fun b!2515560 () Bool)

(declare-fun res!1063375 () Bool)

(declare-fun e!1593742 () Bool)

(assert (=> b!2515560 (=> (not res!1063375) (not e!1593742))))

(declare-fun lt!898782 () List!29545)

(declare-fun size!22909 (List!29545) Int)

(assert (=> b!2515560 (= res!1063375 (= (size!22909 lt!898782) (+ (size!22909 (_1!17287 lt!898717)) (size!22909 (_2!17287 lt!898717)))))))

(declare-fun b!2515559 () Bool)

(assert (=> b!2515559 (= e!1593741 (Cons!29445 (h!34865 (_1!17287 lt!898717)) (++!7214 (t!211244 (_1!17287 lt!898717)) (_2!17287 lt!898717))))))

(declare-fun d!717302 () Bool)

(assert (=> d!717302 e!1593742))

(declare-fun res!1063374 () Bool)

(assert (=> d!717302 (=> (not res!1063374) (not e!1593742))))

(declare-fun content!4025 (List!29545) (Set C!15118))

(assert (=> d!717302 (= res!1063374 (= (content!4025 lt!898782) (set.union (content!4025 (_1!17287 lt!898717)) (content!4025 (_2!17287 lt!898717)))))))

(assert (=> d!717302 (= lt!898782 e!1593741)))

(declare-fun c!400965 () Bool)

(assert (=> d!717302 (= c!400965 (is-Nil!29445 (_1!17287 lt!898717)))))

(assert (=> d!717302 (= (++!7214 (_1!17287 lt!898717) (_2!17287 lt!898717)) lt!898782)))

(declare-fun b!2515561 () Bool)

(assert (=> b!2515561 (= e!1593742 (or (not (= (_2!17287 lt!898717) Nil!29445)) (= lt!898782 (_1!17287 lt!898717))))))

(assert (= (and d!717302 c!400965) b!2515558))

(assert (= (and d!717302 (not c!400965)) b!2515559))

(assert (= (and d!717302 res!1063374) b!2515560))

(assert (= (and b!2515560 res!1063375) b!2515561))

(declare-fun m!2872711 () Bool)

(assert (=> b!2515560 m!2872711))

(declare-fun m!2872713 () Bool)

(assert (=> b!2515560 m!2872713))

(declare-fun m!2872715 () Bool)

(assert (=> b!2515560 m!2872715))

(declare-fun m!2872717 () Bool)

(assert (=> b!2515559 m!2872717))

(declare-fun m!2872719 () Bool)

(assert (=> d!717302 m!2872719))

(declare-fun m!2872721 () Bool)

(assert (=> d!717302 m!2872721))

(declare-fun m!2872723 () Bool)

(assert (=> d!717302 m!2872723))

(assert (=> b!2515273 d!717302))

(declare-fun b!2515562 () Bool)

(declare-fun e!1593743 () Bool)

(declare-fun e!1593747 () Bool)

(assert (=> b!2515562 (= e!1593743 e!1593747)))

(declare-fun c!400967 () Bool)

(assert (=> b!2515562 (= c!400967 (is-EmptyLang!7480 lt!898715))))

(declare-fun b!2515563 () Bool)

(declare-fun lt!898783 () Bool)

(assert (=> b!2515563 (= e!1593747 (not lt!898783))))

(declare-fun b!2515564 () Bool)

(declare-fun res!1063380 () Bool)

(declare-fun e!1593748 () Bool)

(assert (=> b!2515564 (=> res!1063380 e!1593748)))

(declare-fun e!1593746 () Bool)

(assert (=> b!2515564 (= res!1063380 e!1593746)))

(declare-fun res!1063379 () Bool)

(assert (=> b!2515564 (=> (not res!1063379) (not e!1593746))))

(assert (=> b!2515564 (= res!1063379 lt!898783)))

(declare-fun b!2515565 () Bool)

(assert (=> b!2515565 (= e!1593746 (= (head!5745 (_1!17287 lt!898717)) (c!400892 lt!898715)))))

(declare-fun b!2515566 () Bool)

(declare-fun res!1063381 () Bool)

(assert (=> b!2515566 (=> (not res!1063381) (not e!1593746))))

(assert (=> b!2515566 (= res!1063381 (isEmpty!16915 (tail!4022 (_1!17287 lt!898717))))))

(declare-fun b!2515567 () Bool)

(declare-fun res!1063382 () Bool)

(declare-fun e!1593745 () Bool)

(assert (=> b!2515567 (=> res!1063382 e!1593745)))

(assert (=> b!2515567 (= res!1063382 (not (isEmpty!16915 (tail!4022 (_1!17287 lt!898717)))))))

(declare-fun b!2515569 () Bool)

(declare-fun call!156311 () Bool)

(assert (=> b!2515569 (= e!1593743 (= lt!898783 call!156311))))

(declare-fun b!2515570 () Bool)

(declare-fun res!1063378 () Bool)

(assert (=> b!2515570 (=> res!1063378 e!1593748)))

(assert (=> b!2515570 (= res!1063378 (not (is-ElementMatch!7480 lt!898715)))))

(assert (=> b!2515570 (= e!1593747 e!1593748)))

(declare-fun b!2515571 () Bool)

(declare-fun e!1593744 () Bool)

(assert (=> b!2515571 (= e!1593748 e!1593744)))

(declare-fun res!1063383 () Bool)

(assert (=> b!2515571 (=> (not res!1063383) (not e!1593744))))

(assert (=> b!2515571 (= res!1063383 (not lt!898783))))

(declare-fun b!2515572 () Bool)

(declare-fun e!1593749 () Bool)

(assert (=> b!2515572 (= e!1593749 (nullable!2397 lt!898715))))

(declare-fun d!717304 () Bool)

(assert (=> d!717304 e!1593743))

(declare-fun c!400968 () Bool)

(assert (=> d!717304 (= c!400968 (is-EmptyExpr!7480 lt!898715))))

(assert (=> d!717304 (= lt!898783 e!1593749)))

(declare-fun c!400966 () Bool)

(assert (=> d!717304 (= c!400966 (isEmpty!16915 (_1!17287 lt!898717)))))

(assert (=> d!717304 (validRegex!3106 lt!898715)))

(assert (=> d!717304 (= (matchR!3479 lt!898715 (_1!17287 lt!898717)) lt!898783)))

(declare-fun b!2515568 () Bool)

(assert (=> b!2515568 (= e!1593749 (matchR!3479 (derivativeStep!2049 lt!898715 (head!5745 (_1!17287 lt!898717))) (tail!4022 (_1!17287 lt!898717))))))

(declare-fun b!2515573 () Bool)

(declare-fun res!1063376 () Bool)

(assert (=> b!2515573 (=> (not res!1063376) (not e!1593746))))

(assert (=> b!2515573 (= res!1063376 (not call!156311))))

(declare-fun b!2515574 () Bool)

(assert (=> b!2515574 (= e!1593745 (not (= (head!5745 (_1!17287 lt!898717)) (c!400892 lt!898715))))))

(declare-fun bm!156306 () Bool)

(assert (=> bm!156306 (= call!156311 (isEmpty!16915 (_1!17287 lt!898717)))))

(declare-fun b!2515575 () Bool)

(assert (=> b!2515575 (= e!1593744 e!1593745)))

(declare-fun res!1063377 () Bool)

(assert (=> b!2515575 (=> res!1063377 e!1593745)))

(assert (=> b!2515575 (= res!1063377 call!156311)))

(assert (= (and d!717304 c!400966) b!2515572))

(assert (= (and d!717304 (not c!400966)) b!2515568))

(assert (= (and d!717304 c!400968) b!2515569))

(assert (= (and d!717304 (not c!400968)) b!2515562))

(assert (= (and b!2515562 c!400967) b!2515563))

(assert (= (and b!2515562 (not c!400967)) b!2515570))

(assert (= (and b!2515570 (not res!1063378)) b!2515564))

(assert (= (and b!2515564 res!1063379) b!2515573))

(assert (= (and b!2515573 res!1063376) b!2515566))

(assert (= (and b!2515566 res!1063381) b!2515565))

(assert (= (and b!2515564 (not res!1063380)) b!2515571))

(assert (= (and b!2515571 res!1063383) b!2515575))

(assert (= (and b!2515575 (not res!1063377)) b!2515567))

(assert (= (and b!2515567 (not res!1063382)) b!2515574))

(assert (= (or b!2515569 b!2515575 b!2515573) bm!156306))

(declare-fun m!2872725 () Bool)

(assert (=> b!2515567 m!2872725))

(assert (=> b!2515567 m!2872725))

(declare-fun m!2872727 () Bool)

(assert (=> b!2515567 m!2872727))

(declare-fun m!2872729 () Bool)

(assert (=> b!2515572 m!2872729))

(declare-fun m!2872731 () Bool)

(assert (=> d!717304 m!2872731))

(assert (=> d!717304 m!2872679))

(assert (=> b!2515566 m!2872725))

(assert (=> b!2515566 m!2872725))

(assert (=> b!2515566 m!2872727))

(declare-fun m!2872733 () Bool)

(assert (=> b!2515568 m!2872733))

(assert (=> b!2515568 m!2872733))

(declare-fun m!2872735 () Bool)

(assert (=> b!2515568 m!2872735))

(assert (=> b!2515568 m!2872725))

(assert (=> b!2515568 m!2872735))

(assert (=> b!2515568 m!2872725))

(declare-fun m!2872737 () Bool)

(assert (=> b!2515568 m!2872737))

(assert (=> b!2515574 m!2872733))

(assert (=> bm!156306 m!2872731))

(assert (=> b!2515565 m!2872733))

(assert (=> b!2515278 d!717304))

(declare-fun b!2515576 () Bool)

(declare-fun e!1593750 () Bool)

(declare-fun e!1593754 () Bool)

(assert (=> b!2515576 (= e!1593750 e!1593754)))

(declare-fun c!400970 () Bool)

(assert (=> b!2515576 (= c!400970 (is-EmptyLang!7480 (regTwo!15472 r!27340)))))

(declare-fun b!2515577 () Bool)

(declare-fun lt!898784 () Bool)

(assert (=> b!2515577 (= e!1593754 (not lt!898784))))

(declare-fun b!2515578 () Bool)

(declare-fun res!1063388 () Bool)

(declare-fun e!1593755 () Bool)

(assert (=> b!2515578 (=> res!1063388 e!1593755)))

(declare-fun e!1593753 () Bool)

(assert (=> b!2515578 (= res!1063388 e!1593753)))

(declare-fun res!1063387 () Bool)

(assert (=> b!2515578 (=> (not res!1063387) (not e!1593753))))

(assert (=> b!2515578 (= res!1063387 lt!898784)))

(declare-fun b!2515579 () Bool)

(assert (=> b!2515579 (= e!1593753 (= (head!5745 (_2!17287 lt!898717)) (c!400892 (regTwo!15472 r!27340))))))

(declare-fun b!2515580 () Bool)

(declare-fun res!1063389 () Bool)

(assert (=> b!2515580 (=> (not res!1063389) (not e!1593753))))

(assert (=> b!2515580 (= res!1063389 (isEmpty!16915 (tail!4022 (_2!17287 lt!898717))))))

(declare-fun b!2515581 () Bool)

(declare-fun res!1063390 () Bool)

(declare-fun e!1593752 () Bool)

(assert (=> b!2515581 (=> res!1063390 e!1593752)))

(assert (=> b!2515581 (= res!1063390 (not (isEmpty!16915 (tail!4022 (_2!17287 lt!898717)))))))

(declare-fun b!2515583 () Bool)

(declare-fun call!156314 () Bool)

(assert (=> b!2515583 (= e!1593750 (= lt!898784 call!156314))))

(declare-fun b!2515584 () Bool)

(declare-fun res!1063386 () Bool)

(assert (=> b!2515584 (=> res!1063386 e!1593755)))

(assert (=> b!2515584 (= res!1063386 (not (is-ElementMatch!7480 (regTwo!15472 r!27340))))))

(assert (=> b!2515584 (= e!1593754 e!1593755)))

(declare-fun b!2515585 () Bool)

(declare-fun e!1593751 () Bool)

(assert (=> b!2515585 (= e!1593755 e!1593751)))

(declare-fun res!1063391 () Bool)

(assert (=> b!2515585 (=> (not res!1063391) (not e!1593751))))

(assert (=> b!2515585 (= res!1063391 (not lt!898784))))

(declare-fun b!2515586 () Bool)

(declare-fun e!1593756 () Bool)

(assert (=> b!2515586 (= e!1593756 (nullable!2397 (regTwo!15472 r!27340)))))

(declare-fun d!717306 () Bool)

(assert (=> d!717306 e!1593750))

(declare-fun c!400971 () Bool)

(assert (=> d!717306 (= c!400971 (is-EmptyExpr!7480 (regTwo!15472 r!27340)))))

(assert (=> d!717306 (= lt!898784 e!1593756)))

(declare-fun c!400969 () Bool)

(assert (=> d!717306 (= c!400969 (isEmpty!16915 (_2!17287 lt!898717)))))

(assert (=> d!717306 (validRegex!3106 (regTwo!15472 r!27340))))

(assert (=> d!717306 (= (matchR!3479 (regTwo!15472 r!27340) (_2!17287 lt!898717)) lt!898784)))

(declare-fun b!2515582 () Bool)

(assert (=> b!2515582 (= e!1593756 (matchR!3479 (derivativeStep!2049 (regTwo!15472 r!27340) (head!5745 (_2!17287 lt!898717))) (tail!4022 (_2!17287 lt!898717))))))

(declare-fun b!2515587 () Bool)

(declare-fun res!1063384 () Bool)

(assert (=> b!2515587 (=> (not res!1063384) (not e!1593753))))

(assert (=> b!2515587 (= res!1063384 (not call!156314))))

(declare-fun b!2515588 () Bool)

(assert (=> b!2515588 (= e!1593752 (not (= (head!5745 (_2!17287 lt!898717)) (c!400892 (regTwo!15472 r!27340)))))))

(declare-fun bm!156309 () Bool)

(assert (=> bm!156309 (= call!156314 (isEmpty!16915 (_2!17287 lt!898717)))))

(declare-fun b!2515589 () Bool)

(assert (=> b!2515589 (= e!1593751 e!1593752)))

(declare-fun res!1063385 () Bool)

(assert (=> b!2515589 (=> res!1063385 e!1593752)))

(assert (=> b!2515589 (= res!1063385 call!156314)))

(assert (= (and d!717306 c!400969) b!2515586))

(assert (= (and d!717306 (not c!400969)) b!2515582))

(assert (= (and d!717306 c!400971) b!2515583))

(assert (= (and d!717306 (not c!400971)) b!2515576))

(assert (= (and b!2515576 c!400970) b!2515577))

(assert (= (and b!2515576 (not c!400970)) b!2515584))

(assert (= (and b!2515584 (not res!1063386)) b!2515578))

(assert (= (and b!2515578 res!1063387) b!2515587))

(assert (= (and b!2515587 res!1063384) b!2515580))

(assert (= (and b!2515580 res!1063389) b!2515579))

(assert (= (and b!2515578 (not res!1063388)) b!2515585))

(assert (= (and b!2515585 res!1063391) b!2515589))

(assert (= (and b!2515589 (not res!1063385)) b!2515581))

(assert (= (and b!2515581 (not res!1063390)) b!2515588))

(assert (= (or b!2515583 b!2515589 b!2515587) bm!156309))

(declare-fun m!2872739 () Bool)

(assert (=> b!2515581 m!2872739))

(assert (=> b!2515581 m!2872739))

(declare-fun m!2872741 () Bool)

(assert (=> b!2515581 m!2872741))

(declare-fun m!2872743 () Bool)

(assert (=> b!2515586 m!2872743))

(declare-fun m!2872745 () Bool)

(assert (=> d!717306 m!2872745))

(declare-fun m!2872747 () Bool)

(assert (=> d!717306 m!2872747))

(assert (=> b!2515580 m!2872739))

(assert (=> b!2515580 m!2872739))

(assert (=> b!2515580 m!2872741))

(declare-fun m!2872749 () Bool)

(assert (=> b!2515582 m!2872749))

(assert (=> b!2515582 m!2872749))

(declare-fun m!2872751 () Bool)

(assert (=> b!2515582 m!2872751))

(assert (=> b!2515582 m!2872739))

(assert (=> b!2515582 m!2872751))

(assert (=> b!2515582 m!2872739))

(declare-fun m!2872753 () Bool)

(assert (=> b!2515582 m!2872753))

(assert (=> b!2515588 m!2872749))

(assert (=> bm!156309 m!2872745))

(assert (=> b!2515579 m!2872749))

(assert (=> b!2515271 d!717306))

(declare-fun b!2515590 () Bool)

(declare-fun e!1593757 () Bool)

(declare-fun e!1593761 () Bool)

(assert (=> b!2515590 (= e!1593757 e!1593761)))

(declare-fun c!400973 () Bool)

(assert (=> b!2515590 (= c!400973 (is-EmptyLang!7480 EmptyLang!7480))))

(declare-fun b!2515591 () Bool)

(declare-fun lt!898785 () Bool)

(assert (=> b!2515591 (= e!1593761 (not lt!898785))))

(declare-fun b!2515592 () Bool)

(declare-fun res!1063396 () Bool)

(declare-fun e!1593762 () Bool)

(assert (=> b!2515592 (=> res!1063396 e!1593762)))

(declare-fun e!1593760 () Bool)

(assert (=> b!2515592 (= res!1063396 e!1593760)))

(declare-fun res!1063395 () Bool)

(assert (=> b!2515592 (=> (not res!1063395) (not e!1593760))))

(assert (=> b!2515592 (= res!1063395 lt!898785)))

(declare-fun b!2515593 () Bool)

(assert (=> b!2515593 (= e!1593760 (= (head!5745 tl!4068) (c!400892 EmptyLang!7480)))))

(declare-fun b!2515594 () Bool)

(declare-fun res!1063397 () Bool)

(assert (=> b!2515594 (=> (not res!1063397) (not e!1593760))))

(assert (=> b!2515594 (= res!1063397 (isEmpty!16915 (tail!4022 tl!4068)))))

(declare-fun b!2515595 () Bool)

(declare-fun res!1063398 () Bool)

(declare-fun e!1593759 () Bool)

(assert (=> b!2515595 (=> res!1063398 e!1593759)))

(assert (=> b!2515595 (= res!1063398 (not (isEmpty!16915 (tail!4022 tl!4068))))))

(declare-fun b!2515597 () Bool)

(declare-fun call!156315 () Bool)

(assert (=> b!2515597 (= e!1593757 (= lt!898785 call!156315))))

(declare-fun b!2515598 () Bool)

(declare-fun res!1063394 () Bool)

(assert (=> b!2515598 (=> res!1063394 e!1593762)))

(assert (=> b!2515598 (= res!1063394 (not (is-ElementMatch!7480 EmptyLang!7480)))))

(assert (=> b!2515598 (= e!1593761 e!1593762)))

(declare-fun b!2515599 () Bool)

(declare-fun e!1593758 () Bool)

(assert (=> b!2515599 (= e!1593762 e!1593758)))

(declare-fun res!1063399 () Bool)

(assert (=> b!2515599 (=> (not res!1063399) (not e!1593758))))

(assert (=> b!2515599 (= res!1063399 (not lt!898785))))

(declare-fun b!2515600 () Bool)

(declare-fun e!1593763 () Bool)

(assert (=> b!2515600 (= e!1593763 (nullable!2397 EmptyLang!7480))))

(declare-fun d!717308 () Bool)

(assert (=> d!717308 e!1593757))

(declare-fun c!400974 () Bool)

(assert (=> d!717308 (= c!400974 (is-EmptyExpr!7480 EmptyLang!7480))))

(assert (=> d!717308 (= lt!898785 e!1593763)))

(declare-fun c!400972 () Bool)

(assert (=> d!717308 (= c!400972 (isEmpty!16915 tl!4068))))

(assert (=> d!717308 (validRegex!3106 EmptyLang!7480)))

(assert (=> d!717308 (= (matchR!3479 EmptyLang!7480 tl!4068) lt!898785)))

(declare-fun b!2515596 () Bool)

(assert (=> b!2515596 (= e!1593763 (matchR!3479 (derivativeStep!2049 EmptyLang!7480 (head!5745 tl!4068)) (tail!4022 tl!4068)))))

(declare-fun b!2515601 () Bool)

(declare-fun res!1063392 () Bool)

(assert (=> b!2515601 (=> (not res!1063392) (not e!1593760))))

(assert (=> b!2515601 (= res!1063392 (not call!156315))))

(declare-fun b!2515602 () Bool)

(assert (=> b!2515602 (= e!1593759 (not (= (head!5745 tl!4068) (c!400892 EmptyLang!7480))))))

(declare-fun bm!156310 () Bool)

(assert (=> bm!156310 (= call!156315 (isEmpty!16915 tl!4068))))

(declare-fun b!2515603 () Bool)

(assert (=> b!2515603 (= e!1593758 e!1593759)))

(declare-fun res!1063393 () Bool)

(assert (=> b!2515603 (=> res!1063393 e!1593759)))

(assert (=> b!2515603 (= res!1063393 call!156315)))

(assert (= (and d!717308 c!400972) b!2515600))

(assert (= (and d!717308 (not c!400972)) b!2515596))

(assert (= (and d!717308 c!400974) b!2515597))

(assert (= (and d!717308 (not c!400974)) b!2515590))

(assert (= (and b!2515590 c!400973) b!2515591))

(assert (= (and b!2515590 (not c!400973)) b!2515598))

(assert (= (and b!2515598 (not res!1063394)) b!2515592))

(assert (= (and b!2515592 res!1063395) b!2515601))

(assert (= (and b!2515601 res!1063392) b!2515594))

(assert (= (and b!2515594 res!1063397) b!2515593))

(assert (= (and b!2515592 (not res!1063396)) b!2515599))

(assert (= (and b!2515599 res!1063399) b!2515603))

(assert (= (and b!2515603 (not res!1063393)) b!2515595))

(assert (= (and b!2515595 (not res!1063398)) b!2515602))

(assert (= (or b!2515597 b!2515603 b!2515601) bm!156310))

(declare-fun m!2872755 () Bool)

(assert (=> b!2515595 m!2872755))

(assert (=> b!2515595 m!2872755))

(declare-fun m!2872757 () Bool)

(assert (=> b!2515595 m!2872757))

(declare-fun m!2872759 () Bool)

(assert (=> b!2515600 m!2872759))

(declare-fun m!2872761 () Bool)

(assert (=> d!717308 m!2872761))

(declare-fun m!2872763 () Bool)

(assert (=> d!717308 m!2872763))

(assert (=> b!2515594 m!2872755))

(assert (=> b!2515594 m!2872755))

(assert (=> b!2515594 m!2872757))

(declare-fun m!2872765 () Bool)

(assert (=> b!2515596 m!2872765))

(assert (=> b!2515596 m!2872765))

(declare-fun m!2872767 () Bool)

(assert (=> b!2515596 m!2872767))

(assert (=> b!2515596 m!2872755))

(assert (=> b!2515596 m!2872767))

(assert (=> b!2515596 m!2872755))

(declare-fun m!2872769 () Bool)

(assert (=> b!2515596 m!2872769))

(assert (=> b!2515602 m!2872765))

(assert (=> bm!156310 m!2872761))

(assert (=> b!2515593 m!2872765))

(assert (=> b!2515277 d!717308))

(declare-fun b!2515604 () Bool)

(declare-fun e!1593770 () Bool)

(declare-fun e!1593764 () Bool)

(assert (=> b!2515604 (= e!1593770 e!1593764)))

(declare-fun res!1063401 () Bool)

(assert (=> b!2515604 (=> (not res!1063401) (not e!1593764))))

(declare-fun call!156317 () Bool)

(assert (=> b!2515604 (= res!1063401 call!156317)))

(declare-fun bm!156311 () Bool)

(declare-fun c!400976 () Bool)

(declare-fun c!400975 () Bool)

(declare-fun call!156318 () Bool)

(assert (=> bm!156311 (= call!156318 (validRegex!3106 (ite c!400975 (reg!7809 r!27340) (ite c!400976 (regOne!15473 r!27340) (regTwo!15472 r!27340)))))))

(declare-fun b!2515605 () Bool)

(declare-fun res!1063402 () Bool)

(declare-fun e!1593769 () Bool)

(assert (=> b!2515605 (=> (not res!1063402) (not e!1593769))))

(declare-fun call!156316 () Bool)

(assert (=> b!2515605 (= res!1063402 call!156316)))

(declare-fun e!1593767 () Bool)

(assert (=> b!2515605 (= e!1593767 e!1593769)))

(declare-fun b!2515607 () Bool)

(declare-fun res!1063403 () Bool)

(assert (=> b!2515607 (=> res!1063403 e!1593770)))

(assert (=> b!2515607 (= res!1063403 (not (is-Concat!12176 r!27340)))))

(assert (=> b!2515607 (= e!1593767 e!1593770)))

(declare-fun b!2515608 () Bool)

(assert (=> b!2515608 (= e!1593764 call!156316)))

(declare-fun bm!156312 () Bool)

(assert (=> bm!156312 (= call!156317 (validRegex!3106 (ite c!400976 (regTwo!15473 r!27340) (regOne!15472 r!27340))))))

(declare-fun b!2515609 () Bool)

(declare-fun e!1593766 () Bool)

(assert (=> b!2515609 (= e!1593766 call!156318)))

(declare-fun d!717310 () Bool)

(declare-fun res!1063404 () Bool)

(declare-fun e!1593768 () Bool)

(assert (=> d!717310 (=> res!1063404 e!1593768)))

(assert (=> d!717310 (= res!1063404 (is-ElementMatch!7480 r!27340))))

(assert (=> d!717310 (= (validRegex!3106 r!27340) e!1593768)))

(declare-fun b!2515606 () Bool)

(declare-fun e!1593765 () Bool)

(assert (=> b!2515606 (= e!1593768 e!1593765)))

(assert (=> b!2515606 (= c!400975 (is-Star!7480 r!27340))))

(declare-fun b!2515610 () Bool)

(assert (=> b!2515610 (= e!1593765 e!1593767)))

(assert (=> b!2515610 (= c!400976 (is-Union!7480 r!27340))))

(declare-fun b!2515611 () Bool)

(assert (=> b!2515611 (= e!1593765 e!1593766)))

(declare-fun res!1063400 () Bool)

(assert (=> b!2515611 (= res!1063400 (not (nullable!2397 (reg!7809 r!27340))))))

(assert (=> b!2515611 (=> (not res!1063400) (not e!1593766))))

(declare-fun bm!156313 () Bool)

(assert (=> bm!156313 (= call!156316 call!156318)))

(declare-fun b!2515612 () Bool)

(assert (=> b!2515612 (= e!1593769 call!156317)))

(assert (= (and d!717310 (not res!1063404)) b!2515606))

(assert (= (and b!2515606 c!400975) b!2515611))

(assert (= (and b!2515606 (not c!400975)) b!2515610))

(assert (= (and b!2515611 res!1063400) b!2515609))

(assert (= (and b!2515610 c!400976) b!2515605))

(assert (= (and b!2515610 (not c!400976)) b!2515607))

(assert (= (and b!2515605 res!1063402) b!2515612))

(assert (= (and b!2515607 (not res!1063403)) b!2515604))

(assert (= (and b!2515604 res!1063401) b!2515608))

(assert (= (or b!2515605 b!2515608) bm!156313))

(assert (= (or b!2515612 b!2515604) bm!156312))

(assert (= (or b!2515609 bm!156313) bm!156311))

(declare-fun m!2872771 () Bool)

(assert (=> bm!156311 m!2872771))

(declare-fun m!2872773 () Bool)

(assert (=> bm!156312 m!2872773))

(declare-fun m!2872775 () Bool)

(assert (=> b!2515611 m!2872775))

(assert (=> start!245278 d!717310))

(declare-fun d!717312 () Bool)

(assert (=> d!717312 (= (matchR!3479 lt!898714 tl!4068) (matchR!3479 (derivative!175 lt!898714 tl!4068) Nil!29445))))

(declare-fun lt!898788 () Unit!43209)

(declare-fun choose!14916 (Regex!7480 List!29545) Unit!43209)

(assert (=> d!717312 (= lt!898788 (choose!14916 lt!898714 tl!4068))))

(assert (=> d!717312 (validRegex!3106 lt!898714)))

(assert (=> d!717312 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!125 lt!898714 tl!4068) lt!898788)))

(declare-fun bs!468882 () Bool)

(assert (= bs!468882 d!717312))

(assert (=> bs!468882 m!2872543))

(assert (=> bs!468882 m!2872545))

(declare-fun m!2872777 () Bool)

(assert (=> bs!468882 m!2872777))

(assert (=> bs!468882 m!2872559))

(declare-fun m!2872779 () Bool)

(assert (=> bs!468882 m!2872779))

(assert (=> bs!468882 m!2872543))

(assert (=> b!2515275 d!717312))

(declare-fun d!717314 () Bool)

(declare-fun lt!898789 () Regex!7480)

(assert (=> d!717314 (validRegex!3106 lt!898789)))

(declare-fun e!1593771 () Regex!7480)

(assert (=> d!717314 (= lt!898789 e!1593771)))

(declare-fun c!400977 () Bool)

(assert (=> d!717314 (= c!400977 (is-Cons!29445 tl!4068))))

(assert (=> d!717314 (validRegex!3106 EmptyLang!7480)))

(assert (=> d!717314 (= (derivative!175 EmptyLang!7480 tl!4068) lt!898789)))

(declare-fun b!2515613 () Bool)

(assert (=> b!2515613 (= e!1593771 (derivative!175 (derivativeStep!2049 EmptyLang!7480 (h!34865 tl!4068)) (t!211244 tl!4068)))))

(declare-fun b!2515614 () Bool)

(assert (=> b!2515614 (= e!1593771 EmptyLang!7480)))

(assert (= (and d!717314 c!400977) b!2515613))

(assert (= (and d!717314 (not c!400977)) b!2515614))

(declare-fun m!2872781 () Bool)

(assert (=> d!717314 m!2872781))

(assert (=> d!717314 m!2872763))

(declare-fun m!2872783 () Bool)

(assert (=> b!2515613 m!2872783))

(assert (=> b!2515613 m!2872783))

(declare-fun m!2872785 () Bool)

(assert (=> b!2515613 m!2872785))

(assert (=> b!2515275 d!717314))

(declare-fun b!2515615 () Bool)

(declare-fun e!1593772 () Bool)

(declare-fun e!1593776 () Bool)

(assert (=> b!2515615 (= e!1593772 e!1593776)))

(declare-fun c!400979 () Bool)

(assert (=> b!2515615 (= c!400979 (is-EmptyLang!7480 (derivative!175 lt!898714 tl!4068)))))

(declare-fun b!2515616 () Bool)

(declare-fun lt!898790 () Bool)

(assert (=> b!2515616 (= e!1593776 (not lt!898790))))

(declare-fun b!2515617 () Bool)

(declare-fun res!1063409 () Bool)

(declare-fun e!1593777 () Bool)

(assert (=> b!2515617 (=> res!1063409 e!1593777)))

(declare-fun e!1593775 () Bool)

(assert (=> b!2515617 (= res!1063409 e!1593775)))

(declare-fun res!1063408 () Bool)

(assert (=> b!2515617 (=> (not res!1063408) (not e!1593775))))

(assert (=> b!2515617 (= res!1063408 lt!898790)))

(declare-fun b!2515618 () Bool)

(assert (=> b!2515618 (= e!1593775 (= (head!5745 Nil!29445) (c!400892 (derivative!175 lt!898714 tl!4068))))))

(declare-fun b!2515619 () Bool)

(declare-fun res!1063410 () Bool)

(assert (=> b!2515619 (=> (not res!1063410) (not e!1593775))))

(assert (=> b!2515619 (= res!1063410 (isEmpty!16915 (tail!4022 Nil!29445)))))

(declare-fun b!2515620 () Bool)

(declare-fun res!1063411 () Bool)

(declare-fun e!1593774 () Bool)

(assert (=> b!2515620 (=> res!1063411 e!1593774)))

(assert (=> b!2515620 (= res!1063411 (not (isEmpty!16915 (tail!4022 Nil!29445))))))

(declare-fun b!2515622 () Bool)

(declare-fun call!156319 () Bool)

(assert (=> b!2515622 (= e!1593772 (= lt!898790 call!156319))))

(declare-fun b!2515623 () Bool)

(declare-fun res!1063407 () Bool)

(assert (=> b!2515623 (=> res!1063407 e!1593777)))

(assert (=> b!2515623 (= res!1063407 (not (is-ElementMatch!7480 (derivative!175 lt!898714 tl!4068))))))

(assert (=> b!2515623 (= e!1593776 e!1593777)))

(declare-fun b!2515624 () Bool)

(declare-fun e!1593773 () Bool)

(assert (=> b!2515624 (= e!1593777 e!1593773)))

(declare-fun res!1063412 () Bool)

(assert (=> b!2515624 (=> (not res!1063412) (not e!1593773))))

(assert (=> b!2515624 (= res!1063412 (not lt!898790))))

(declare-fun b!2515625 () Bool)

(declare-fun e!1593778 () Bool)

(assert (=> b!2515625 (= e!1593778 (nullable!2397 (derivative!175 lt!898714 tl!4068)))))

(declare-fun d!717316 () Bool)

(assert (=> d!717316 e!1593772))

(declare-fun c!400980 () Bool)

(assert (=> d!717316 (= c!400980 (is-EmptyExpr!7480 (derivative!175 lt!898714 tl!4068)))))

(assert (=> d!717316 (= lt!898790 e!1593778)))

(declare-fun c!400978 () Bool)

(assert (=> d!717316 (= c!400978 (isEmpty!16915 Nil!29445))))

(assert (=> d!717316 (validRegex!3106 (derivative!175 lt!898714 tl!4068))))

(assert (=> d!717316 (= (matchR!3479 (derivative!175 lt!898714 tl!4068) Nil!29445) lt!898790)))

(declare-fun b!2515621 () Bool)

(assert (=> b!2515621 (= e!1593778 (matchR!3479 (derivativeStep!2049 (derivative!175 lt!898714 tl!4068) (head!5745 Nil!29445)) (tail!4022 Nil!29445)))))

(declare-fun b!2515626 () Bool)

(declare-fun res!1063405 () Bool)

(assert (=> b!2515626 (=> (not res!1063405) (not e!1593775))))

(assert (=> b!2515626 (= res!1063405 (not call!156319))))

(declare-fun b!2515627 () Bool)

(assert (=> b!2515627 (= e!1593774 (not (= (head!5745 Nil!29445) (c!400892 (derivative!175 lt!898714 tl!4068)))))))

(declare-fun bm!156314 () Bool)

(assert (=> bm!156314 (= call!156319 (isEmpty!16915 Nil!29445))))

(declare-fun b!2515628 () Bool)

(assert (=> b!2515628 (= e!1593773 e!1593774)))

(declare-fun res!1063406 () Bool)

(assert (=> b!2515628 (=> res!1063406 e!1593774)))

(assert (=> b!2515628 (= res!1063406 call!156319)))

(assert (= (and d!717316 c!400978) b!2515625))

(assert (= (and d!717316 (not c!400978)) b!2515621))

(assert (= (and d!717316 c!400980) b!2515622))

(assert (= (and d!717316 (not c!400980)) b!2515615))

(assert (= (and b!2515615 c!400979) b!2515616))

(assert (= (and b!2515615 (not c!400979)) b!2515623))

(assert (= (and b!2515623 (not res!1063407)) b!2515617))

(assert (= (and b!2515617 res!1063408) b!2515626))

(assert (= (and b!2515626 res!1063405) b!2515619))

(assert (= (and b!2515619 res!1063410) b!2515618))

(assert (= (and b!2515617 (not res!1063409)) b!2515624))

(assert (= (and b!2515624 res!1063412) b!2515628))

(assert (= (and b!2515628 (not res!1063406)) b!2515620))

(assert (= (and b!2515620 (not res!1063411)) b!2515627))

(assert (= (or b!2515622 b!2515628 b!2515626) bm!156314))

(declare-fun m!2872787 () Bool)

(assert (=> b!2515620 m!2872787))

(assert (=> b!2515620 m!2872787))

(declare-fun m!2872789 () Bool)

(assert (=> b!2515620 m!2872789))

(assert (=> b!2515625 m!2872543))

(declare-fun m!2872791 () Bool)

(assert (=> b!2515625 m!2872791))

(declare-fun m!2872793 () Bool)

(assert (=> d!717316 m!2872793))

(assert (=> d!717316 m!2872543))

(declare-fun m!2872795 () Bool)

(assert (=> d!717316 m!2872795))

(assert (=> b!2515619 m!2872787))

(assert (=> b!2515619 m!2872787))

(assert (=> b!2515619 m!2872789))

(declare-fun m!2872797 () Bool)

(assert (=> b!2515621 m!2872797))

(assert (=> b!2515621 m!2872543))

(assert (=> b!2515621 m!2872797))

(declare-fun m!2872799 () Bool)

(assert (=> b!2515621 m!2872799))

(assert (=> b!2515621 m!2872787))

(assert (=> b!2515621 m!2872799))

(assert (=> b!2515621 m!2872787))

(declare-fun m!2872801 () Bool)

(assert (=> b!2515621 m!2872801))

(assert (=> b!2515627 m!2872797))

(assert (=> bm!156314 m!2872793))

(assert (=> b!2515618 m!2872797))

(assert (=> b!2515275 d!717316))

(declare-fun d!717318 () Bool)

(declare-fun lt!898792 () Regex!7480)

(assert (=> d!717318 (validRegex!3106 lt!898792)))

(declare-fun e!1593786 () Regex!7480)

(assert (=> d!717318 (= lt!898792 e!1593786)))

(declare-fun c!400984 () Bool)

(assert (=> d!717318 (= c!400984 (is-Cons!29445 tl!4068))))

(assert (=> d!717318 (validRegex!3106 lt!898714)))

(assert (=> d!717318 (= (derivative!175 lt!898714 tl!4068) lt!898792)))

(declare-fun b!2515643 () Bool)

(assert (=> b!2515643 (= e!1593786 (derivative!175 (derivativeStep!2049 lt!898714 (h!34865 tl!4068)) (t!211244 tl!4068)))))

(declare-fun b!2515644 () Bool)

(assert (=> b!2515644 (= e!1593786 lt!898714)))

(assert (= (and d!717318 c!400984) b!2515643))

(assert (= (and d!717318 (not c!400984)) b!2515644))

(declare-fun m!2872803 () Bool)

(assert (=> d!717318 m!2872803))

(assert (=> d!717318 m!2872779))

(declare-fun m!2872805 () Bool)

(assert (=> b!2515643 m!2872805))

(assert (=> b!2515643 m!2872805))

(declare-fun m!2872807 () Bool)

(assert (=> b!2515643 m!2872807))

(assert (=> b!2515275 d!717318))

(declare-fun b!2515645 () Bool)

(declare-fun e!1593787 () Bool)

(declare-fun e!1593791 () Bool)

(assert (=> b!2515645 (= e!1593787 e!1593791)))

(declare-fun c!400986 () Bool)

(assert (=> b!2515645 (= c!400986 (is-EmptyLang!7480 lt!898714))))

(declare-fun b!2515646 () Bool)

(declare-fun lt!898793 () Bool)

(assert (=> b!2515646 (= e!1593791 (not lt!898793))))

(declare-fun b!2515647 () Bool)

(declare-fun res!1063425 () Bool)

(declare-fun e!1593792 () Bool)

(assert (=> b!2515647 (=> res!1063425 e!1593792)))

(declare-fun e!1593790 () Bool)

(assert (=> b!2515647 (= res!1063425 e!1593790)))

(declare-fun res!1063424 () Bool)

(assert (=> b!2515647 (=> (not res!1063424) (not e!1593790))))

(assert (=> b!2515647 (= res!1063424 lt!898793)))

(declare-fun b!2515648 () Bool)

(assert (=> b!2515648 (= e!1593790 (= (head!5745 tl!4068) (c!400892 lt!898714)))))

(declare-fun b!2515649 () Bool)

(declare-fun res!1063426 () Bool)

(assert (=> b!2515649 (=> (not res!1063426) (not e!1593790))))

(assert (=> b!2515649 (= res!1063426 (isEmpty!16915 (tail!4022 tl!4068)))))

(declare-fun b!2515650 () Bool)

(declare-fun res!1063427 () Bool)

(declare-fun e!1593789 () Bool)

(assert (=> b!2515650 (=> res!1063427 e!1593789)))

(assert (=> b!2515650 (= res!1063427 (not (isEmpty!16915 (tail!4022 tl!4068))))))

(declare-fun b!2515652 () Bool)

(declare-fun call!156321 () Bool)

(assert (=> b!2515652 (= e!1593787 (= lt!898793 call!156321))))

(declare-fun b!2515653 () Bool)

(declare-fun res!1063423 () Bool)

(assert (=> b!2515653 (=> res!1063423 e!1593792)))

(assert (=> b!2515653 (= res!1063423 (not (is-ElementMatch!7480 lt!898714)))))

(assert (=> b!2515653 (= e!1593791 e!1593792)))

(declare-fun b!2515654 () Bool)

(declare-fun e!1593788 () Bool)

(assert (=> b!2515654 (= e!1593792 e!1593788)))

(declare-fun res!1063428 () Bool)

(assert (=> b!2515654 (=> (not res!1063428) (not e!1593788))))

(assert (=> b!2515654 (= res!1063428 (not lt!898793))))

(declare-fun b!2515655 () Bool)

(declare-fun e!1593793 () Bool)

(assert (=> b!2515655 (= e!1593793 (nullable!2397 lt!898714))))

(declare-fun d!717320 () Bool)

(assert (=> d!717320 e!1593787))

(declare-fun c!400987 () Bool)

(assert (=> d!717320 (= c!400987 (is-EmptyExpr!7480 lt!898714))))

(assert (=> d!717320 (= lt!898793 e!1593793)))

(declare-fun c!400985 () Bool)

(assert (=> d!717320 (= c!400985 (isEmpty!16915 tl!4068))))

(assert (=> d!717320 (validRegex!3106 lt!898714)))

(assert (=> d!717320 (= (matchR!3479 lt!898714 tl!4068) lt!898793)))

(declare-fun b!2515651 () Bool)

(assert (=> b!2515651 (= e!1593793 (matchR!3479 (derivativeStep!2049 lt!898714 (head!5745 tl!4068)) (tail!4022 tl!4068)))))

(declare-fun b!2515656 () Bool)

(declare-fun res!1063421 () Bool)

(assert (=> b!2515656 (=> (not res!1063421) (not e!1593790))))

(assert (=> b!2515656 (= res!1063421 (not call!156321))))

(declare-fun b!2515657 () Bool)

(assert (=> b!2515657 (= e!1593789 (not (= (head!5745 tl!4068) (c!400892 lt!898714))))))

(declare-fun bm!156316 () Bool)

(assert (=> bm!156316 (= call!156321 (isEmpty!16915 tl!4068))))

(declare-fun b!2515658 () Bool)

(assert (=> b!2515658 (= e!1593788 e!1593789)))

(declare-fun res!1063422 () Bool)

(assert (=> b!2515658 (=> res!1063422 e!1593789)))

(assert (=> b!2515658 (= res!1063422 call!156321)))

(assert (= (and d!717320 c!400985) b!2515655))

(assert (= (and d!717320 (not c!400985)) b!2515651))

(assert (= (and d!717320 c!400987) b!2515652))

(assert (= (and d!717320 (not c!400987)) b!2515645))

(assert (= (and b!2515645 c!400986) b!2515646))

(assert (= (and b!2515645 (not c!400986)) b!2515653))

(assert (= (and b!2515653 (not res!1063423)) b!2515647))

(assert (= (and b!2515647 res!1063424) b!2515656))

(assert (= (and b!2515656 res!1063421) b!2515649))

(assert (= (and b!2515649 res!1063426) b!2515648))

(assert (= (and b!2515647 (not res!1063425)) b!2515654))

(assert (= (and b!2515654 res!1063428) b!2515658))

(assert (= (and b!2515658 (not res!1063422)) b!2515650))

(assert (= (and b!2515650 (not res!1063427)) b!2515657))

(assert (= (or b!2515652 b!2515658 b!2515656) bm!156316))

(assert (=> b!2515650 m!2872755))

(assert (=> b!2515650 m!2872755))

(assert (=> b!2515650 m!2872757))

(declare-fun m!2872809 () Bool)

(assert (=> b!2515655 m!2872809))

(assert (=> d!717320 m!2872761))

(assert (=> d!717320 m!2872779))

(assert (=> b!2515649 m!2872755))

(assert (=> b!2515649 m!2872755))

(assert (=> b!2515649 m!2872757))

(assert (=> b!2515651 m!2872765))

(assert (=> b!2515651 m!2872765))

(declare-fun m!2872811 () Bool)

(assert (=> b!2515651 m!2872811))

(assert (=> b!2515651 m!2872755))

(assert (=> b!2515651 m!2872811))

(assert (=> b!2515651 m!2872755))

(declare-fun m!2872813 () Bool)

(assert (=> b!2515651 m!2872813))

(assert (=> b!2515657 m!2872765))

(assert (=> bm!156316 m!2872761))

(assert (=> b!2515648 m!2872765))

(assert (=> b!2515275 d!717320))

(declare-fun d!717322 () Bool)

(assert (=> d!717322 (= (derivative!175 EmptyLang!7480 tl!4068) EmptyLang!7480)))

(declare-fun lt!898797 () Unit!43209)

(declare-fun choose!14918 (Regex!7480 List!29545) Unit!43209)

(assert (=> d!717322 (= lt!898797 (choose!14918 EmptyLang!7480 tl!4068))))

(assert (=> d!717322 (= EmptyLang!7480 EmptyLang!7480)))

(assert (=> d!717322 (= (lemmaEmptyLangDerivativeIsAFixPoint!27 EmptyLang!7480 tl!4068) lt!898797)))

(declare-fun bs!468883 () Bool)

(assert (= bs!468883 d!717322))

(assert (=> bs!468883 m!2872549))

(declare-fun m!2872827 () Bool)

(assert (=> bs!468883 m!2872827))

(assert (=> b!2515275 d!717322))

(declare-fun d!717326 () Bool)

(declare-fun e!1593804 () Bool)

(assert (=> d!717326 e!1593804))

(declare-fun res!1063434 () Bool)

(assert (=> d!717326 (=> res!1063434 e!1593804)))

(assert (=> d!717326 (= res!1063434 (matchR!3479 lt!898718 tl!4068))))

(declare-fun lt!898801 () Unit!43209)

(declare-fun choose!14920 (Regex!7480 Regex!7480 List!29545) Unit!43209)

(assert (=> d!717326 (= lt!898801 (choose!14920 lt!898718 EmptyLang!7480 tl!4068))))

(declare-fun e!1593805 () Bool)

(assert (=> d!717326 e!1593805))

(declare-fun res!1063433 () Bool)

(assert (=> d!717326 (=> (not res!1063433) (not e!1593805))))

(assert (=> d!717326 (= res!1063433 (validRegex!3106 lt!898718))))

(assert (=> d!717326 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!167 lt!898718 EmptyLang!7480 tl!4068) lt!898801)))

(declare-fun b!2515675 () Bool)

(assert (=> b!2515675 (= e!1593805 (validRegex!3106 EmptyLang!7480))))

(declare-fun b!2515676 () Bool)

(assert (=> b!2515676 (= e!1593804 (matchR!3479 EmptyLang!7480 tl!4068))))

(assert (= (and d!717326 res!1063433) b!2515675))

(assert (= (and d!717326 (not res!1063434)) b!2515676))

(assert (=> d!717326 m!2872555))

(declare-fun m!2872845 () Bool)

(assert (=> d!717326 m!2872845))

(declare-fun m!2872847 () Bool)

(assert (=> d!717326 m!2872847))

(assert (=> b!2515675 m!2872763))

(assert (=> b!2515676 m!2872529))

(assert (=> b!2515275 d!717326))

(declare-fun b!2515677 () Bool)

(declare-fun e!1593806 () Bool)

(declare-fun e!1593810 () Bool)

(assert (=> b!2515677 (= e!1593806 e!1593810)))

(declare-fun c!400995 () Bool)

(assert (=> b!2515677 (= c!400995 (is-EmptyLang!7480 lt!898718))))

(declare-fun b!2515678 () Bool)

(declare-fun lt!898802 () Bool)

(assert (=> b!2515678 (= e!1593810 (not lt!898802))))

(declare-fun b!2515679 () Bool)

(declare-fun res!1063439 () Bool)

(declare-fun e!1593811 () Bool)

(assert (=> b!2515679 (=> res!1063439 e!1593811)))

(declare-fun e!1593809 () Bool)

(assert (=> b!2515679 (= res!1063439 e!1593809)))

(declare-fun res!1063438 () Bool)

(assert (=> b!2515679 (=> (not res!1063438) (not e!1593809))))

(assert (=> b!2515679 (= res!1063438 lt!898802)))

(declare-fun b!2515680 () Bool)

(assert (=> b!2515680 (= e!1593809 (= (head!5745 tl!4068) (c!400892 lt!898718)))))

(declare-fun b!2515681 () Bool)

(declare-fun res!1063440 () Bool)

(assert (=> b!2515681 (=> (not res!1063440) (not e!1593809))))

(assert (=> b!2515681 (= res!1063440 (isEmpty!16915 (tail!4022 tl!4068)))))

(declare-fun b!2515682 () Bool)

(declare-fun res!1063441 () Bool)

(declare-fun e!1593808 () Bool)

(assert (=> b!2515682 (=> res!1063441 e!1593808)))

(assert (=> b!2515682 (= res!1063441 (not (isEmpty!16915 (tail!4022 tl!4068))))))

(declare-fun b!2515684 () Bool)

(declare-fun call!156326 () Bool)

(assert (=> b!2515684 (= e!1593806 (= lt!898802 call!156326))))

(declare-fun b!2515685 () Bool)

(declare-fun res!1063437 () Bool)

(assert (=> b!2515685 (=> res!1063437 e!1593811)))

(assert (=> b!2515685 (= res!1063437 (not (is-ElementMatch!7480 lt!898718)))))

(assert (=> b!2515685 (= e!1593810 e!1593811)))

(declare-fun b!2515686 () Bool)

(declare-fun e!1593807 () Bool)

(assert (=> b!2515686 (= e!1593811 e!1593807)))

(declare-fun res!1063442 () Bool)

(assert (=> b!2515686 (=> (not res!1063442) (not e!1593807))))

(assert (=> b!2515686 (= res!1063442 (not lt!898802))))

(declare-fun b!2515687 () Bool)

(declare-fun e!1593812 () Bool)

(assert (=> b!2515687 (= e!1593812 (nullable!2397 lt!898718))))

(declare-fun d!717332 () Bool)

(assert (=> d!717332 e!1593806))

(declare-fun c!400996 () Bool)

(assert (=> d!717332 (= c!400996 (is-EmptyExpr!7480 lt!898718))))

(assert (=> d!717332 (= lt!898802 e!1593812)))

(declare-fun c!400994 () Bool)

(assert (=> d!717332 (= c!400994 (isEmpty!16915 tl!4068))))

(assert (=> d!717332 (validRegex!3106 lt!898718)))

(assert (=> d!717332 (= (matchR!3479 lt!898718 tl!4068) lt!898802)))

(declare-fun b!2515683 () Bool)

(assert (=> b!2515683 (= e!1593812 (matchR!3479 (derivativeStep!2049 lt!898718 (head!5745 tl!4068)) (tail!4022 tl!4068)))))

(declare-fun b!2515688 () Bool)

(declare-fun res!1063435 () Bool)

(assert (=> b!2515688 (=> (not res!1063435) (not e!1593809))))

(assert (=> b!2515688 (= res!1063435 (not call!156326))))

(declare-fun b!2515689 () Bool)

(assert (=> b!2515689 (= e!1593808 (not (= (head!5745 tl!4068) (c!400892 lt!898718))))))

(declare-fun bm!156321 () Bool)

(assert (=> bm!156321 (= call!156326 (isEmpty!16915 tl!4068))))

(declare-fun b!2515690 () Bool)

(assert (=> b!2515690 (= e!1593807 e!1593808)))

(declare-fun res!1063436 () Bool)

(assert (=> b!2515690 (=> res!1063436 e!1593808)))

(assert (=> b!2515690 (= res!1063436 call!156326)))

(assert (= (and d!717332 c!400994) b!2515687))

(assert (= (and d!717332 (not c!400994)) b!2515683))

(assert (= (and d!717332 c!400996) b!2515684))

(assert (= (and d!717332 (not c!400996)) b!2515677))

(assert (= (and b!2515677 c!400995) b!2515678))

(assert (= (and b!2515677 (not c!400995)) b!2515685))

(assert (= (and b!2515685 (not res!1063437)) b!2515679))

(assert (= (and b!2515679 res!1063438) b!2515688))

(assert (= (and b!2515688 res!1063435) b!2515681))

(assert (= (and b!2515681 res!1063440) b!2515680))

(assert (= (and b!2515679 (not res!1063439)) b!2515686))

(assert (= (and b!2515686 res!1063442) b!2515690))

(assert (= (and b!2515690 (not res!1063436)) b!2515682))

(assert (= (and b!2515682 (not res!1063441)) b!2515689))

(assert (= (or b!2515684 b!2515690 b!2515688) bm!156321))

(assert (=> b!2515682 m!2872755))

(assert (=> b!2515682 m!2872755))

(assert (=> b!2515682 m!2872757))

(declare-fun m!2872849 () Bool)

(assert (=> b!2515687 m!2872849))

(assert (=> d!717332 m!2872761))

(assert (=> d!717332 m!2872847))

(assert (=> b!2515681 m!2872755))

(assert (=> b!2515681 m!2872755))

(assert (=> b!2515681 m!2872757))

(assert (=> b!2515683 m!2872765))

(assert (=> b!2515683 m!2872765))

(declare-fun m!2872851 () Bool)

(assert (=> b!2515683 m!2872851))

(assert (=> b!2515683 m!2872755))

(assert (=> b!2515683 m!2872851))

(assert (=> b!2515683 m!2872755))

(declare-fun m!2872853 () Bool)

(assert (=> b!2515683 m!2872853))

(assert (=> b!2515689 m!2872765))

(assert (=> bm!156321 m!2872761))

(assert (=> b!2515680 m!2872765))

(assert (=> b!2515275 d!717332))

(declare-fun b!2515691 () Bool)

(declare-fun c!401001 () Bool)

(assert (=> b!2515691 (= c!401001 (nullable!2397 (regOne!15472 (regOne!15472 r!27340))))))

(declare-fun e!1593817 () Regex!7480)

(declare-fun e!1593814 () Regex!7480)

(assert (=> b!2515691 (= e!1593817 e!1593814)))

(declare-fun call!156329 () Regex!7480)

(declare-fun bm!156322 () Bool)

(declare-fun c!400999 () Bool)

(assert (=> bm!156322 (= call!156329 (derivativeStep!2049 (ite c!400999 (regTwo!15473 (regOne!15472 r!27340)) (regTwo!15472 (regOne!15472 r!27340))) c!14016))))

(declare-fun b!2515692 () Bool)

(declare-fun e!1593815 () Regex!7480)

(declare-fun call!156328 () Regex!7480)

(assert (=> b!2515692 (= e!1593815 (Union!7480 call!156328 call!156329))))

(declare-fun b!2515693 () Bool)

(declare-fun e!1593813 () Regex!7480)

(assert (=> b!2515693 (= e!1593813 EmptyLang!7480)))

(declare-fun b!2515694 () Bool)

(assert (=> b!2515694 (= c!400999 (is-Union!7480 (regOne!15472 r!27340)))))

(declare-fun e!1593816 () Regex!7480)

(assert (=> b!2515694 (= e!1593816 e!1593815)))

(declare-fun bm!156323 () Bool)

(declare-fun call!156330 () Regex!7480)

(assert (=> bm!156323 (= call!156330 call!156328)))

(declare-fun bm!156324 () Bool)

(declare-fun c!401000 () Bool)

(assert (=> bm!156324 (= call!156328 (derivativeStep!2049 (ite c!400999 (regOne!15473 (regOne!15472 r!27340)) (ite c!401000 (reg!7809 (regOne!15472 r!27340)) (regOne!15472 (regOne!15472 r!27340)))) c!14016))))

(declare-fun b!2515695 () Bool)

(assert (=> b!2515695 (= e!1593816 (ite (= c!14016 (c!400892 (regOne!15472 r!27340))) EmptyExpr!7480 EmptyLang!7480))))

(declare-fun b!2515697 () Bool)

(assert (=> b!2515697 (= e!1593815 e!1593817)))

(assert (=> b!2515697 (= c!401000 (is-Star!7480 (regOne!15472 r!27340)))))

(declare-fun bm!156325 () Bool)

(declare-fun call!156327 () Regex!7480)

(assert (=> bm!156325 (= call!156327 call!156330)))

(declare-fun b!2515698 () Bool)

(assert (=> b!2515698 (= e!1593814 (Union!7480 (Concat!12176 call!156327 (regTwo!15472 (regOne!15472 r!27340))) EmptyLang!7480))))

(declare-fun b!2515699 () Bool)

(assert (=> b!2515699 (= e!1593813 e!1593816)))

(declare-fun c!400997 () Bool)

(assert (=> b!2515699 (= c!400997 (is-ElementMatch!7480 (regOne!15472 r!27340)))))

(declare-fun b!2515700 () Bool)

(assert (=> b!2515700 (= e!1593817 (Concat!12176 call!156330 (regOne!15472 r!27340)))))

(declare-fun d!717334 () Bool)

(declare-fun lt!898803 () Regex!7480)

(assert (=> d!717334 (validRegex!3106 lt!898803)))

(assert (=> d!717334 (= lt!898803 e!1593813)))

(declare-fun c!400998 () Bool)

(assert (=> d!717334 (= c!400998 (or (is-EmptyExpr!7480 (regOne!15472 r!27340)) (is-EmptyLang!7480 (regOne!15472 r!27340))))))

(assert (=> d!717334 (validRegex!3106 (regOne!15472 r!27340))))

(assert (=> d!717334 (= (derivativeStep!2049 (regOne!15472 r!27340) c!14016) lt!898803)))

(declare-fun b!2515696 () Bool)

(assert (=> b!2515696 (= e!1593814 (Union!7480 (Concat!12176 call!156327 (regTwo!15472 (regOne!15472 r!27340))) call!156329))))

(assert (= (and d!717334 c!400998) b!2515693))

(assert (= (and d!717334 (not c!400998)) b!2515699))

(assert (= (and b!2515699 c!400997) b!2515695))

(assert (= (and b!2515699 (not c!400997)) b!2515694))

(assert (= (and b!2515694 c!400999) b!2515692))

(assert (= (and b!2515694 (not c!400999)) b!2515697))

(assert (= (and b!2515697 c!401000) b!2515700))

(assert (= (and b!2515697 (not c!401000)) b!2515691))

(assert (= (and b!2515691 c!401001) b!2515696))

(assert (= (and b!2515691 (not c!401001)) b!2515698))

(assert (= (or b!2515696 b!2515698) bm!156325))

(assert (= (or b!2515700 bm!156325) bm!156323))

(assert (= (or b!2515692 b!2515696) bm!156322))

(assert (= (or b!2515692 bm!156323) bm!156324))

(declare-fun m!2872855 () Bool)

(assert (=> b!2515691 m!2872855))

(declare-fun m!2872857 () Bool)

(assert (=> bm!156322 m!2872857))

(declare-fun m!2872859 () Bool)

(assert (=> bm!156324 m!2872859))

(declare-fun m!2872861 () Bool)

(assert (=> d!717334 m!2872861))

(assert (=> d!717334 m!2872575))

(assert (=> b!2515275 d!717334))

(declare-fun d!717336 () Bool)

(assert (=> d!717336 (= (nullable!2397 (regOne!15472 r!27340)) (nullableFct!643 (regOne!15472 r!27340)))))

(declare-fun bs!468884 () Bool)

(assert (= bs!468884 d!717336))

(declare-fun m!2872863 () Bool)

(assert (=> bs!468884 m!2872863))

(assert (=> b!2515281 d!717336))

(declare-fun b!2515714 () Bool)

(declare-fun e!1593820 () Bool)

(declare-fun tp!803935 () Bool)

(declare-fun tp!803934 () Bool)

(assert (=> b!2515714 (= e!1593820 (and tp!803935 tp!803934))))

(declare-fun b!2515711 () Bool)

(assert (=> b!2515711 (= e!1593820 tp_is_empty!12815)))

(declare-fun b!2515712 () Bool)

(declare-fun tp!803937 () Bool)

(declare-fun tp!803933 () Bool)

(assert (=> b!2515712 (= e!1593820 (and tp!803937 tp!803933))))

(declare-fun b!2515713 () Bool)

(declare-fun tp!803936 () Bool)

(assert (=> b!2515713 (= e!1593820 tp!803936)))

(assert (=> b!2515279 (= tp!803904 e!1593820)))

(assert (= (and b!2515279 (is-ElementMatch!7480 (regOne!15472 r!27340))) b!2515711))

(assert (= (and b!2515279 (is-Concat!12176 (regOne!15472 r!27340))) b!2515712))

(assert (= (and b!2515279 (is-Star!7480 (regOne!15472 r!27340))) b!2515713))

(assert (= (and b!2515279 (is-Union!7480 (regOne!15472 r!27340))) b!2515714))

(declare-fun b!2515718 () Bool)

(declare-fun e!1593821 () Bool)

(declare-fun tp!803940 () Bool)

(declare-fun tp!803939 () Bool)

(assert (=> b!2515718 (= e!1593821 (and tp!803940 tp!803939))))

(declare-fun b!2515715 () Bool)

(assert (=> b!2515715 (= e!1593821 tp_is_empty!12815)))

(declare-fun b!2515716 () Bool)

(declare-fun tp!803942 () Bool)

(declare-fun tp!803938 () Bool)

(assert (=> b!2515716 (= e!1593821 (and tp!803942 tp!803938))))

(declare-fun b!2515717 () Bool)

(declare-fun tp!803941 () Bool)

(assert (=> b!2515717 (= e!1593821 tp!803941)))

(assert (=> b!2515279 (= tp!803901 e!1593821)))

(assert (= (and b!2515279 (is-ElementMatch!7480 (regTwo!15472 r!27340))) b!2515715))

(assert (= (and b!2515279 (is-Concat!12176 (regTwo!15472 r!27340))) b!2515716))

(assert (= (and b!2515279 (is-Star!7480 (regTwo!15472 r!27340))) b!2515717))

(assert (= (and b!2515279 (is-Union!7480 (regTwo!15472 r!27340))) b!2515718))

(declare-fun b!2515722 () Bool)

(declare-fun e!1593822 () Bool)

(declare-fun tp!803945 () Bool)

(declare-fun tp!803944 () Bool)

(assert (=> b!2515722 (= e!1593822 (and tp!803945 tp!803944))))

(declare-fun b!2515719 () Bool)

(assert (=> b!2515719 (= e!1593822 tp_is_empty!12815)))

(declare-fun b!2515720 () Bool)

(declare-fun tp!803947 () Bool)

(declare-fun tp!803943 () Bool)

(assert (=> b!2515720 (= e!1593822 (and tp!803947 tp!803943))))

(declare-fun b!2515721 () Bool)

(declare-fun tp!803946 () Bool)

(assert (=> b!2515721 (= e!1593822 tp!803946)))

(assert (=> b!2515274 (= tp!803902 e!1593822)))

(assert (= (and b!2515274 (is-ElementMatch!7480 (reg!7809 r!27340))) b!2515719))

(assert (= (and b!2515274 (is-Concat!12176 (reg!7809 r!27340))) b!2515720))

(assert (= (and b!2515274 (is-Star!7480 (reg!7809 r!27340))) b!2515721))

(assert (= (and b!2515274 (is-Union!7480 (reg!7809 r!27340))) b!2515722))

(declare-fun b!2515727 () Bool)

(declare-fun e!1593825 () Bool)

(declare-fun tp!803950 () Bool)

(assert (=> b!2515727 (= e!1593825 (and tp_is_empty!12815 tp!803950))))

(assert (=> b!2515280 (= tp!803900 e!1593825)))

(assert (= (and b!2515280 (is-Cons!29445 (t!211244 tl!4068))) b!2515727))

(declare-fun b!2515731 () Bool)

(declare-fun e!1593826 () Bool)

(declare-fun tp!803953 () Bool)

(declare-fun tp!803952 () Bool)

(assert (=> b!2515731 (= e!1593826 (and tp!803953 tp!803952))))

(declare-fun b!2515728 () Bool)

(assert (=> b!2515728 (= e!1593826 tp_is_empty!12815)))

(declare-fun b!2515729 () Bool)

(declare-fun tp!803955 () Bool)

(declare-fun tp!803951 () Bool)

(assert (=> b!2515729 (= e!1593826 (and tp!803955 tp!803951))))

(declare-fun b!2515730 () Bool)

(declare-fun tp!803954 () Bool)

(assert (=> b!2515730 (= e!1593826 tp!803954)))

(assert (=> b!2515270 (= tp!803899 e!1593826)))

(assert (= (and b!2515270 (is-ElementMatch!7480 (regOne!15473 r!27340))) b!2515728))

(assert (= (and b!2515270 (is-Concat!12176 (regOne!15473 r!27340))) b!2515729))

(assert (= (and b!2515270 (is-Star!7480 (regOne!15473 r!27340))) b!2515730))

(assert (= (and b!2515270 (is-Union!7480 (regOne!15473 r!27340))) b!2515731))

(declare-fun b!2515735 () Bool)

(declare-fun e!1593827 () Bool)

(declare-fun tp!803958 () Bool)

(declare-fun tp!803957 () Bool)

(assert (=> b!2515735 (= e!1593827 (and tp!803958 tp!803957))))

(declare-fun b!2515732 () Bool)

(assert (=> b!2515732 (= e!1593827 tp_is_empty!12815)))

(declare-fun b!2515733 () Bool)

(declare-fun tp!803960 () Bool)

(declare-fun tp!803956 () Bool)

(assert (=> b!2515733 (= e!1593827 (and tp!803960 tp!803956))))

(declare-fun b!2515734 () Bool)

(declare-fun tp!803959 () Bool)

(assert (=> b!2515734 (= e!1593827 tp!803959)))

(assert (=> b!2515270 (= tp!803903 e!1593827)))

(assert (= (and b!2515270 (is-ElementMatch!7480 (regTwo!15473 r!27340))) b!2515732))

(assert (= (and b!2515270 (is-Concat!12176 (regTwo!15473 r!27340))) b!2515733))

(assert (= (and b!2515270 (is-Star!7480 (regTwo!15473 r!27340))) b!2515734))

(assert (= (and b!2515270 (is-Union!7480 (regTwo!15473 r!27340))) b!2515735))

(push 1)

(assert (not b!2515513))

(assert (not b!2515618))

(assert (not d!717308))

(assert (not b!2515649))

(assert (not b!2515464))

(assert (not bm!156324))

(assert (not b!2515572))

(assert (not bm!156310))

(assert (not b!2515594))

(assert (not b!2515680))

(assert (not b!2515713))

(assert (not b!2515466))

(assert (not b!2515625))

(assert (not b!2515613))

(assert (not d!717288))

(assert (not bm!156322))

(assert (not d!717302))

(assert (not d!717326))

(assert (not b!2515718))

(assert (not b!2515459))

(assert (not b!2515721))

(assert (not b!2515733))

(assert (not b!2515681))

(assert (not b!2515730))

(assert (not b!2515643))

(assert (not b!2515581))

(assert (not b!2515727))

(assert (not b!2515358))

(assert (not d!717316))

(assert (not b!2515574))

(assert (not b!2515716))

(assert (not d!717286))

(assert (not b!2515593))

(assert (not b!2515621))

(assert (not d!717334))

(assert (not bm!156321))

(assert (not bm!156309))

(assert (not bm!156306))

(assert (not bm!156288))

(assert (not d!717314))

(assert (not b!2515689))

(assert (not b!2515720))

(assert (not b!2515675))

(assert (not d!717318))

(assert (not b!2515627))

(assert (not bm!156314))

(assert (not d!717332))

(assert (not d!717296))

(assert (not b!2515566))

(assert (not b!2515731))

(assert (not b!2515682))

(assert tp_is_empty!12815)

(assert (not b!2515735))

(assert (not d!717304))

(assert (not b!2515586))

(assert (not b!2515588))

(assert (not d!717300))

(assert (not b!2515521))

(assert (not b!2515582))

(assert (not b!2515648))

(assert (not bm!156312))

(assert (not b!2515619))

(assert (not b!2515517))

(assert (not b!2515683))

(assert (not d!717284))

(assert (not b!2515602))

(assert (not b!2515712))

(assert (not b!2515596))

(assert (not b!2515651))

(assert (not b!2515406))

(assert (not bm!156268))

(assert (not d!717312))

(assert (not b!2515559))

(assert (not d!717282))

(assert (not b!2515567))

(assert (not bm!156316))

(assert (not b!2515600))

(assert (not b!2515560))

(assert (not b!2515460))

(assert (not bm!156311))

(assert (not b!2515655))

(assert (not b!2515580))

(assert (not b!2515515))

(assert (not bm!156267))

(assert (not b!2515565))

(assert (not b!2515729))

(assert (not b!2515595))

(assert (not b!2515714))

(assert (not bm!156296))

(assert (not b!2515579))

(assert (not d!717320))

(assert (not b!2515458))

(assert (not d!717306))

(assert (not b!2515364))

(assert (not b!2515650))

(assert (not d!717294))

(assert (not b!2515611))

(assert (not b!2515514))

(assert (not d!717322))

(assert (not b!2515734))

(assert (not b!2515691))

(assert (not b!2515568))

(assert (not b!2515676))

(assert (not b!2515457))

(assert (not b!2515657))

(assert (not bm!156286))

(assert (not b!2515519))

(assert (not b!2515717))

(assert (not b!2515687))

(assert (not b!2515722))

(assert (not d!717336))

(assert (not b!2515620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

