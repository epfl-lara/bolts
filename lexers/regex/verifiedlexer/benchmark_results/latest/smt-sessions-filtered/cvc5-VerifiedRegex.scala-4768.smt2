; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!245806 () Bool)

(assert start!245806)

(declare-fun b!2522317 () Bool)

(declare-fun res!1065581 () Bool)

(declare-fun e!1597195 () Bool)

(assert (=> b!2522317 (=> (not res!1065581) (not e!1597195))))

(declare-datatypes ((C!15178 0))(
  ( (C!15179 (val!9241 Int)) )
))
(declare-datatypes ((Regex!7510 0))(
  ( (ElementMatch!7510 (c!402400 C!15178)) (Concat!12206 (regOne!15532 Regex!7510) (regTwo!15532 Regex!7510)) (EmptyExpr!7510) (Star!7510 (reg!7839 Regex!7510)) (EmptyLang!7510) (Union!7510 (regOne!15533 Regex!7510) (regTwo!15533 Regex!7510)) )
))
(declare-fun r!27340 () Regex!7510)

(declare-fun nullable!2427 (Regex!7510) Bool)

(assert (=> b!2522317 (= res!1065581 (nullable!2427 (regOne!15532 r!27340)))))

(declare-fun b!2522318 () Bool)

(declare-fun e!1597194 () Bool)

(declare-fun tp!805934 () Bool)

(assert (=> b!2522318 (= e!1597194 tp!805934)))

(declare-fun b!2522319 () Bool)

(declare-fun tp!805932 () Bool)

(declare-fun tp!805935 () Bool)

(assert (=> b!2522319 (= e!1597194 (and tp!805932 tp!805935))))

(declare-fun b!2522320 () Bool)

(declare-fun res!1065576 () Bool)

(assert (=> b!2522320 (=> (not res!1065576) (not e!1597195))))

(assert (=> b!2522320 (= res!1065576 (and (not (is-EmptyExpr!7510 r!27340)) (not (is-EmptyLang!7510 r!27340)) (not (is-ElementMatch!7510 r!27340)) (not (is-Union!7510 r!27340)) (not (is-Star!7510 r!27340))))))

(declare-fun b!2522321 () Bool)

(declare-fun e!1597197 () Bool)

(declare-fun lt!899850 () Regex!7510)

(declare-datatypes ((List!29575 0))(
  ( (Nil!29475) (Cons!29475 (h!34895 C!15178) (t!211274 List!29575)) )
))
(declare-datatypes ((tuple2!29522 0))(
  ( (tuple2!29523 (_1!17303 List!29575) (_2!17303 List!29575)) )
))
(declare-fun lt!899848 () tuple2!29522)

(declare-fun matchR!3497 (Regex!7510 List!29575) Bool)

(assert (=> b!2522321 (= e!1597197 (matchR!3497 lt!899850 (_1!17303 lt!899848)))))

(declare-fun b!2522322 () Bool)

(declare-fun e!1597198 () Bool)

(assert (=> b!2522322 (= e!1597195 (not e!1597198))))

(declare-fun res!1065579 () Bool)

(assert (=> b!2522322 (=> res!1065579 e!1597198)))

(declare-fun lt!899849 () Bool)

(assert (=> b!2522322 (= res!1065579 (not lt!899849))))

(declare-fun e!1597196 () Bool)

(assert (=> b!2522322 e!1597196))

(declare-fun res!1065577 () Bool)

(assert (=> b!2522322 (=> res!1065577 e!1597196)))

(assert (=> b!2522322 (= res!1065577 lt!899849)))

(declare-fun lt!899851 () Regex!7510)

(declare-fun tl!4068 () List!29575)

(assert (=> b!2522322 (= lt!899849 (matchR!3497 lt!899851 tl!4068))))

(declare-fun lt!899855 () Regex!7510)

(declare-datatypes ((Unit!43245 0))(
  ( (Unit!43246) )
))
(declare-fun lt!899853 () Unit!43245)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!175 (Regex!7510 Regex!7510 List!29575) Unit!43245)

(assert (=> b!2522322 (= lt!899853 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!175 lt!899851 lt!899855 tl!4068))))

(declare-fun lt!899856 () Regex!7510)

(declare-fun derivative!205 (Regex!7510 List!29575) Regex!7510)

(assert (=> b!2522322 (= (matchR!3497 lt!899856 tl!4068) (matchR!3497 (derivative!205 lt!899856 tl!4068) Nil!29475))))

(declare-fun lt!899847 () Unit!43245)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!143 (Regex!7510 List!29575) Unit!43245)

(assert (=> b!2522322 (= lt!899847 (lemmaMatchRIsSameAsWholeDerivativeAndNil!143 lt!899856 tl!4068))))

(assert (=> b!2522322 (= lt!899856 (Union!7510 lt!899851 lt!899855))))

(declare-fun c!14016 () C!15178)

(declare-fun derivativeStep!2079 (Regex!7510 C!15178) Regex!7510)

(assert (=> b!2522322 (= lt!899855 (derivativeStep!2079 (regTwo!15532 r!27340) c!14016))))

(assert (=> b!2522322 (= lt!899851 (Concat!12206 lt!899850 (regTwo!15532 r!27340)))))

(assert (=> b!2522322 (= lt!899850 (derivativeStep!2079 (regOne!15532 r!27340) c!14016))))

(declare-fun b!2522323 () Bool)

(declare-fun tp!805936 () Bool)

(declare-fun tp!805931 () Bool)

(assert (=> b!2522323 (= e!1597194 (and tp!805936 tp!805931))))

(declare-fun res!1065578 () Bool)

(assert (=> start!245806 (=> (not res!1065578) (not e!1597195))))

(declare-fun validRegex!3136 (Regex!7510) Bool)

(assert (=> start!245806 (= res!1065578 (validRegex!3136 r!27340))))

(assert (=> start!245806 e!1597195))

(assert (=> start!245806 e!1597194))

(declare-fun tp_is_empty!12875 () Bool)

(assert (=> start!245806 tp_is_empty!12875))

(declare-fun e!1597193 () Bool)

(assert (=> start!245806 e!1597193))

(declare-fun b!2522324 () Bool)

(assert (=> b!2522324 (= e!1597198 e!1597197)))

(declare-fun res!1065580 () Bool)

(assert (=> b!2522324 (=> res!1065580 e!1597197)))

(declare-fun ++!7231 (List!29575 List!29575) List!29575)

(assert (=> b!2522324 (= res!1065580 (not (= (++!7231 (_1!17303 lt!899848) (_2!17303 lt!899848)) tl!4068)))))

(declare-datatypes ((Option!5881 0))(
  ( (None!5880) (Some!5880 (v!31813 tuple2!29522)) )
))
(declare-fun lt!899854 () Option!5881)

(declare-fun get!9215 (Option!5881) tuple2!29522)

(assert (=> b!2522324 (= lt!899848 (get!9215 lt!899854))))

(declare-fun isDefined!4703 (Option!5881) Bool)

(assert (=> b!2522324 (isDefined!4703 lt!899854)))

(declare-fun findConcatSeparation!903 (Regex!7510 Regex!7510 List!29575 List!29575 List!29575) Option!5881)

(assert (=> b!2522324 (= lt!899854 (findConcatSeparation!903 lt!899850 (regTwo!15532 r!27340) Nil!29475 tl!4068 tl!4068))))

(declare-fun lt!899852 () Unit!43245)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!185 (Regex!7510 Regex!7510 List!29575) Unit!43245)

(assert (=> b!2522324 (= lt!899852 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!185 lt!899850 (regTwo!15532 r!27340) tl!4068))))

(declare-fun b!2522325 () Bool)

(declare-fun tp!805933 () Bool)

(assert (=> b!2522325 (= e!1597193 (and tp_is_empty!12875 tp!805933))))

(declare-fun b!2522326 () Bool)

(assert (=> b!2522326 (= e!1597196 (matchR!3497 lt!899855 tl!4068))))

(declare-fun b!2522327 () Bool)

(declare-fun res!1065575 () Bool)

(assert (=> b!2522327 (=> (not res!1065575) (not e!1597195))))

(assert (=> b!2522327 (= res!1065575 (nullable!2427 (derivative!205 (derivativeStep!2079 r!27340 c!14016) tl!4068)))))

(declare-fun b!2522328 () Bool)

(assert (=> b!2522328 (= e!1597194 tp_is_empty!12875)))

(assert (= (and start!245806 res!1065578) b!2522327))

(assert (= (and b!2522327 res!1065575) b!2522320))

(assert (= (and b!2522320 res!1065576) b!2522317))

(assert (= (and b!2522317 res!1065581) b!2522322))

(assert (= (and b!2522322 (not res!1065577)) b!2522326))

(assert (= (and b!2522322 (not res!1065579)) b!2522324))

(assert (= (and b!2522324 (not res!1065580)) b!2522321))

(assert (= (and start!245806 (is-ElementMatch!7510 r!27340)) b!2522328))

(assert (= (and start!245806 (is-Concat!12206 r!27340)) b!2522319))

(assert (= (and start!245806 (is-Star!7510 r!27340)) b!2522318))

(assert (= (and start!245806 (is-Union!7510 r!27340)) b!2522323))

(assert (= (and start!245806 (is-Cons!29475 tl!4068)) b!2522325))

(declare-fun m!2876649 () Bool)

(assert (=> b!2522327 m!2876649))

(assert (=> b!2522327 m!2876649))

(declare-fun m!2876651 () Bool)

(assert (=> b!2522327 m!2876651))

(assert (=> b!2522327 m!2876651))

(declare-fun m!2876653 () Bool)

(assert (=> b!2522327 m!2876653))

(declare-fun m!2876655 () Bool)

(assert (=> b!2522324 m!2876655))

(declare-fun m!2876657 () Bool)

(assert (=> b!2522324 m!2876657))

(declare-fun m!2876659 () Bool)

(assert (=> b!2522324 m!2876659))

(declare-fun m!2876661 () Bool)

(assert (=> b!2522324 m!2876661))

(declare-fun m!2876663 () Bool)

(assert (=> b!2522324 m!2876663))

(declare-fun m!2876665 () Bool)

(assert (=> b!2522317 m!2876665))

(declare-fun m!2876667 () Bool)

(assert (=> b!2522322 m!2876667))

(declare-fun m!2876669 () Bool)

(assert (=> b!2522322 m!2876669))

(declare-fun m!2876671 () Bool)

(assert (=> b!2522322 m!2876671))

(declare-fun m!2876673 () Bool)

(assert (=> b!2522322 m!2876673))

(declare-fun m!2876675 () Bool)

(assert (=> b!2522322 m!2876675))

(declare-fun m!2876677 () Bool)

(assert (=> b!2522322 m!2876677))

(declare-fun m!2876679 () Bool)

(assert (=> b!2522322 m!2876679))

(declare-fun m!2876681 () Bool)

(assert (=> b!2522322 m!2876681))

(assert (=> b!2522322 m!2876669))

(declare-fun m!2876683 () Bool)

(assert (=> start!245806 m!2876683))

(declare-fun m!2876685 () Bool)

(assert (=> b!2522326 m!2876685))

(declare-fun m!2876687 () Bool)

(assert (=> b!2522321 m!2876687))

(push 1)

(assert (not start!245806))

(assert (not b!2522322))

(assert (not b!2522319))

(assert (not b!2522323))

(assert (not b!2522327))

(assert (not b!2522321))

(assert (not b!2522324))

(assert (not b!2522325))

(assert (not b!2522318))

(assert (not b!2522317))

(assert tp_is_empty!12875)

(assert (not b!2522326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!402413 () Bool)

(declare-fun call!157317 () Bool)

(declare-fun bm!157311 () Bool)

(declare-fun c!402412 () Bool)

(assert (=> bm!157311 (= call!157317 (validRegex!3136 (ite c!402413 (reg!7839 r!27340) (ite c!402412 (regTwo!15533 r!27340) (regOne!15532 r!27340)))))))

(declare-fun b!2522411 () Bool)

(declare-fun e!1597247 () Bool)

(declare-fun e!1597249 () Bool)

(assert (=> b!2522411 (= e!1597247 e!1597249)))

(declare-fun res!1065630 () Bool)

(assert (=> b!2522411 (= res!1065630 (not (nullable!2427 (reg!7839 r!27340))))))

(assert (=> b!2522411 (=> (not res!1065630) (not e!1597249))))

(declare-fun b!2522413 () Bool)

(declare-fun e!1597250 () Bool)

(assert (=> b!2522413 (= e!1597250 e!1597247)))

(assert (=> b!2522413 (= c!402413 (is-Star!7510 r!27340))))

(declare-fun bm!157312 () Bool)

(declare-fun call!157318 () Bool)

(assert (=> bm!157312 (= call!157318 call!157317)))

(declare-fun bm!157313 () Bool)

(declare-fun call!157316 () Bool)

(assert (=> bm!157313 (= call!157316 (validRegex!3136 (ite c!402412 (regOne!15533 r!27340) (regTwo!15532 r!27340))))))

(declare-fun b!2522414 () Bool)

(declare-fun e!1597248 () Bool)

(assert (=> b!2522414 (= e!1597248 call!157318)))

(declare-fun b!2522415 () Bool)

(declare-fun res!1065631 () Bool)

(assert (=> b!2522415 (=> (not res!1065631) (not e!1597248))))

(assert (=> b!2522415 (= res!1065631 call!157316)))

(declare-fun e!1597246 () Bool)

(assert (=> b!2522415 (= e!1597246 e!1597248)))

(declare-fun b!2522416 () Bool)

(assert (=> b!2522416 (= e!1597247 e!1597246)))

(assert (=> b!2522416 (= c!402412 (is-Union!7510 r!27340))))

(declare-fun b!2522417 () Bool)

(declare-fun e!1597245 () Bool)

(assert (=> b!2522417 (= e!1597245 call!157316)))

(declare-fun b!2522418 () Bool)

(declare-fun res!1065632 () Bool)

(declare-fun e!1597251 () Bool)

(assert (=> b!2522418 (=> res!1065632 e!1597251)))

(assert (=> b!2522418 (= res!1065632 (not (is-Concat!12206 r!27340)))))

(assert (=> b!2522418 (= e!1597246 e!1597251)))

(declare-fun b!2522419 () Bool)

(assert (=> b!2522419 (= e!1597251 e!1597245)))

(declare-fun res!1065633 () Bool)

(assert (=> b!2522419 (=> (not res!1065633) (not e!1597245))))

(assert (=> b!2522419 (= res!1065633 call!157318)))

(declare-fun d!718325 () Bool)

(declare-fun res!1065629 () Bool)

(assert (=> d!718325 (=> res!1065629 e!1597250)))

(assert (=> d!718325 (= res!1065629 (is-ElementMatch!7510 r!27340))))

(assert (=> d!718325 (= (validRegex!3136 r!27340) e!1597250)))

(declare-fun b!2522412 () Bool)

(assert (=> b!2522412 (= e!1597249 call!157317)))

(assert (= (and d!718325 (not res!1065629)) b!2522413))

(assert (= (and b!2522413 c!402413) b!2522411))

(assert (= (and b!2522413 (not c!402413)) b!2522416))

(assert (= (and b!2522411 res!1065630) b!2522412))

(assert (= (and b!2522416 c!402412) b!2522415))

(assert (= (and b!2522416 (not c!402412)) b!2522418))

(assert (= (and b!2522415 res!1065631) b!2522414))

(assert (= (and b!2522418 (not res!1065632)) b!2522419))

(assert (= (and b!2522419 res!1065633) b!2522417))

(assert (= (or b!2522415 b!2522417) bm!157313))

(assert (= (or b!2522414 b!2522419) bm!157312))

(assert (= (or b!2522412 bm!157312) bm!157311))

(declare-fun m!2876731 () Bool)

(assert (=> bm!157311 m!2876731))

(declare-fun m!2876733 () Bool)

(assert (=> b!2522411 m!2876733))

(declare-fun m!2876735 () Bool)

(assert (=> bm!157313 m!2876735))

(assert (=> start!245806 d!718325))

(declare-fun b!2522488 () Bool)

(declare-fun e!1597290 () Bool)

(declare-fun e!1597286 () Bool)

(assert (=> b!2522488 (= e!1597290 e!1597286)))

(declare-fun res!1065676 () Bool)

(assert (=> b!2522488 (=> (not res!1065676) (not e!1597286))))

(declare-fun lt!899896 () Bool)

(assert (=> b!2522488 (= res!1065676 (not lt!899896))))

(declare-fun b!2522489 () Bool)

(declare-fun e!1597291 () Bool)

(declare-fun call!157323 () Bool)

(assert (=> b!2522489 (= e!1597291 (= lt!899896 call!157323))))

(declare-fun b!2522490 () Bool)

(declare-fun e!1597287 () Bool)

(declare-fun head!5759 (List!29575) C!15178)

(assert (=> b!2522490 (= e!1597287 (not (= (head!5759 tl!4068) (c!402400 lt!899855))))))

(declare-fun bm!157318 () Bool)

(declare-fun isEmpty!16943 (List!29575) Bool)

(assert (=> bm!157318 (= call!157323 (isEmpty!16943 tl!4068))))

(declare-fun b!2522491 () Bool)

(declare-fun e!1597289 () Bool)

(assert (=> b!2522491 (= e!1597289 (not lt!899896))))

(declare-fun b!2522492 () Bool)

(declare-fun e!1597292 () Bool)

(assert (=> b!2522492 (= e!1597292 (nullable!2427 lt!899855))))

(declare-fun b!2522493 () Bool)

(declare-fun tail!4036 (List!29575) List!29575)

(assert (=> b!2522493 (= e!1597292 (matchR!3497 (derivativeStep!2079 lt!899855 (head!5759 tl!4068)) (tail!4036 tl!4068)))))

(declare-fun d!718327 () Bool)

(assert (=> d!718327 e!1597291))

(declare-fun c!402429 () Bool)

(assert (=> d!718327 (= c!402429 (is-EmptyExpr!7510 lt!899855))))

(assert (=> d!718327 (= lt!899896 e!1597292)))

(declare-fun c!402431 () Bool)

(assert (=> d!718327 (= c!402431 (isEmpty!16943 tl!4068))))

(assert (=> d!718327 (validRegex!3136 lt!899855)))

(assert (=> d!718327 (= (matchR!3497 lt!899855 tl!4068) lt!899896)))

(declare-fun b!2522494 () Bool)

(assert (=> b!2522494 (= e!1597291 e!1597289)))

(declare-fun c!402430 () Bool)

(assert (=> b!2522494 (= c!402430 (is-EmptyLang!7510 lt!899855))))

(declare-fun b!2522495 () Bool)

(declare-fun res!1065678 () Bool)

(assert (=> b!2522495 (=> res!1065678 e!1597287)))

(assert (=> b!2522495 (= res!1065678 (not (isEmpty!16943 (tail!4036 tl!4068))))))

(declare-fun b!2522496 () Bool)

(declare-fun res!1065672 () Bool)

(declare-fun e!1597288 () Bool)

(assert (=> b!2522496 (=> (not res!1065672) (not e!1597288))))

(assert (=> b!2522496 (= res!1065672 (isEmpty!16943 (tail!4036 tl!4068)))))

(declare-fun b!2522497 () Bool)

(assert (=> b!2522497 (= e!1597286 e!1597287)))

(declare-fun res!1065673 () Bool)

(assert (=> b!2522497 (=> res!1065673 e!1597287)))

(assert (=> b!2522497 (= res!1065673 call!157323)))

(declare-fun b!2522498 () Bool)

(declare-fun res!1065679 () Bool)

(assert (=> b!2522498 (=> res!1065679 e!1597290)))

(assert (=> b!2522498 (= res!1065679 e!1597288)))

(declare-fun res!1065675 () Bool)

(assert (=> b!2522498 (=> (not res!1065675) (not e!1597288))))

(assert (=> b!2522498 (= res!1065675 lt!899896)))

(declare-fun b!2522499 () Bool)

(assert (=> b!2522499 (= e!1597288 (= (head!5759 tl!4068) (c!402400 lt!899855)))))

(declare-fun b!2522500 () Bool)

(declare-fun res!1065674 () Bool)

(assert (=> b!2522500 (=> res!1065674 e!1597290)))

(assert (=> b!2522500 (= res!1065674 (not (is-ElementMatch!7510 lt!899855)))))

(assert (=> b!2522500 (= e!1597289 e!1597290)))

(declare-fun b!2522501 () Bool)

(declare-fun res!1065677 () Bool)

(assert (=> b!2522501 (=> (not res!1065677) (not e!1597288))))

(assert (=> b!2522501 (= res!1065677 (not call!157323))))

(assert (= (and d!718327 c!402431) b!2522492))

(assert (= (and d!718327 (not c!402431)) b!2522493))

(assert (= (and d!718327 c!402429) b!2522489))

(assert (= (and d!718327 (not c!402429)) b!2522494))

(assert (= (and b!2522494 c!402430) b!2522491))

(assert (= (and b!2522494 (not c!402430)) b!2522500))

(assert (= (and b!2522500 (not res!1065674)) b!2522498))

(assert (= (and b!2522498 res!1065675) b!2522501))

(assert (= (and b!2522501 res!1065677) b!2522496))

(assert (= (and b!2522496 res!1065672) b!2522499))

(assert (= (and b!2522498 (not res!1065679)) b!2522488))

(assert (= (and b!2522488 res!1065676) b!2522497))

(assert (= (and b!2522497 (not res!1065673)) b!2522495))

(assert (= (and b!2522495 (not res!1065678)) b!2522490))

(assert (= (or b!2522489 b!2522497 b!2522501) bm!157318))

(declare-fun m!2876783 () Bool)

(assert (=> d!718327 m!2876783))

(declare-fun m!2876785 () Bool)

(assert (=> d!718327 m!2876785))

(assert (=> bm!157318 m!2876783))

(declare-fun m!2876787 () Bool)

(assert (=> b!2522493 m!2876787))

(assert (=> b!2522493 m!2876787))

(declare-fun m!2876789 () Bool)

(assert (=> b!2522493 m!2876789))

(declare-fun m!2876791 () Bool)

(assert (=> b!2522493 m!2876791))

(assert (=> b!2522493 m!2876789))

(assert (=> b!2522493 m!2876791))

(declare-fun m!2876793 () Bool)

(assert (=> b!2522493 m!2876793))

(assert (=> b!2522499 m!2876787))

(assert (=> b!2522496 m!2876791))

(assert (=> b!2522496 m!2876791))

(declare-fun m!2876795 () Bool)

(assert (=> b!2522496 m!2876795))

(assert (=> b!2522490 m!2876787))

(assert (=> b!2522495 m!2876791))

(assert (=> b!2522495 m!2876791))

(assert (=> b!2522495 m!2876795))

(declare-fun m!2876797 () Bool)

(assert (=> b!2522492 m!2876797))

(assert (=> b!2522326 d!718327))

(declare-fun d!718335 () Bool)

(declare-fun nullableFct!669 (Regex!7510) Bool)

(assert (=> d!718335 (= (nullable!2427 (derivative!205 (derivativeStep!2079 r!27340 c!14016) tl!4068)) (nullableFct!669 (derivative!205 (derivativeStep!2079 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469019 () Bool)

(assert (= bs!469019 d!718335))

(assert (=> bs!469019 m!2876651))

(declare-fun m!2876799 () Bool)

(assert (=> bs!469019 m!2876799))

(assert (=> b!2522327 d!718335))

(declare-fun d!718337 () Bool)

(declare-fun lt!899902 () Regex!7510)

(assert (=> d!718337 (validRegex!3136 lt!899902)))

(declare-fun e!1597295 () Regex!7510)

(assert (=> d!718337 (= lt!899902 e!1597295)))

(declare-fun c!402434 () Bool)

(assert (=> d!718337 (= c!402434 (is-Cons!29475 tl!4068))))

(assert (=> d!718337 (validRegex!3136 (derivativeStep!2079 r!27340 c!14016))))

(assert (=> d!718337 (= (derivative!205 (derivativeStep!2079 r!27340 c!14016) tl!4068) lt!899902)))

(declare-fun b!2522506 () Bool)

(assert (=> b!2522506 (= e!1597295 (derivative!205 (derivativeStep!2079 (derivativeStep!2079 r!27340 c!14016) (h!34895 tl!4068)) (t!211274 tl!4068)))))

(declare-fun b!2522507 () Bool)

(assert (=> b!2522507 (= e!1597295 (derivativeStep!2079 r!27340 c!14016))))

(assert (= (and d!718337 c!402434) b!2522506))

(assert (= (and d!718337 (not c!402434)) b!2522507))

(declare-fun m!2876807 () Bool)

(assert (=> d!718337 m!2876807))

(assert (=> d!718337 m!2876649))

(declare-fun m!2876809 () Bool)

(assert (=> d!718337 m!2876809))

(assert (=> b!2522506 m!2876649))

(declare-fun m!2876811 () Bool)

(assert (=> b!2522506 m!2876811))

(assert (=> b!2522506 m!2876811))

(declare-fun m!2876813 () Bool)

(assert (=> b!2522506 m!2876813))

(assert (=> b!2522327 d!718337))

(declare-fun b!2522528 () Bool)

(declare-fun c!402446 () Bool)

(assert (=> b!2522528 (= c!402446 (is-Union!7510 r!27340))))

(declare-fun e!1597306 () Regex!7510)

(declare-fun e!1597307 () Regex!7510)

(assert (=> b!2522528 (= e!1597306 e!1597307)))

(declare-fun bm!157327 () Bool)

(declare-fun c!402445 () Bool)

(declare-fun call!157333 () Regex!7510)

(assert (=> bm!157327 (= call!157333 (derivativeStep!2079 (ite c!402446 (regOne!15533 r!27340) (ite c!402445 (reg!7839 r!27340) (regOne!15532 r!27340))) c!14016))))

(declare-fun b!2522529 () Bool)

(declare-fun e!1597309 () Regex!7510)

(assert (=> b!2522529 (= e!1597309 e!1597306)))

(declare-fun c!402449 () Bool)

(assert (=> b!2522529 (= c!402449 (is-ElementMatch!7510 r!27340))))

(declare-fun b!2522530 () Bool)

(declare-fun call!157332 () Regex!7510)

(declare-fun e!1597310 () Regex!7510)

(declare-fun call!157335 () Regex!7510)

(assert (=> b!2522530 (= e!1597310 (Union!7510 (Concat!12206 call!157335 (regTwo!15532 r!27340)) call!157332))))

(declare-fun b!2522531 () Bool)

(assert (=> b!2522531 (= e!1597307 (Union!7510 call!157333 call!157332))))

(declare-fun d!718343 () Bool)

(declare-fun lt!899905 () Regex!7510)

(assert (=> d!718343 (validRegex!3136 lt!899905)))

(assert (=> d!718343 (= lt!899905 e!1597309)))

(declare-fun c!402448 () Bool)

(assert (=> d!718343 (= c!402448 (or (is-EmptyExpr!7510 r!27340) (is-EmptyLang!7510 r!27340)))))

(assert (=> d!718343 (validRegex!3136 r!27340)))

(assert (=> d!718343 (= (derivativeStep!2079 r!27340 c!14016) lt!899905)))

(declare-fun b!2522532 () Bool)

(assert (=> b!2522532 (= e!1597306 (ite (= c!14016 (c!402400 r!27340)) EmptyExpr!7510 EmptyLang!7510))))

(declare-fun b!2522533 () Bool)

(declare-fun e!1597308 () Regex!7510)

(assert (=> b!2522533 (= e!1597307 e!1597308)))

(assert (=> b!2522533 (= c!402445 (is-Star!7510 r!27340))))

(declare-fun b!2522534 () Bool)

(assert (=> b!2522534 (= e!1597309 EmptyLang!7510)))

(declare-fun b!2522535 () Bool)

(declare-fun c!402447 () Bool)

(assert (=> b!2522535 (= c!402447 (nullable!2427 (regOne!15532 r!27340)))))

(assert (=> b!2522535 (= e!1597308 e!1597310)))

(declare-fun bm!157328 () Bool)

(declare-fun call!157334 () Regex!7510)

(assert (=> bm!157328 (= call!157334 call!157333)))

(declare-fun bm!157329 () Bool)

(assert (=> bm!157329 (= call!157332 (derivativeStep!2079 (ite c!402446 (regTwo!15533 r!27340) (regTwo!15532 r!27340)) c!14016))))

(declare-fun bm!157330 () Bool)

(assert (=> bm!157330 (= call!157335 call!157334)))

(declare-fun b!2522536 () Bool)

(assert (=> b!2522536 (= e!1597308 (Concat!12206 call!157334 r!27340))))

(declare-fun b!2522537 () Bool)

(assert (=> b!2522537 (= e!1597310 (Union!7510 (Concat!12206 call!157335 (regTwo!15532 r!27340)) EmptyLang!7510))))

(assert (= (and d!718343 c!402448) b!2522534))

(assert (= (and d!718343 (not c!402448)) b!2522529))

(assert (= (and b!2522529 c!402449) b!2522532))

(assert (= (and b!2522529 (not c!402449)) b!2522528))

(assert (= (and b!2522528 c!402446) b!2522531))

(assert (= (and b!2522528 (not c!402446)) b!2522533))

(assert (= (and b!2522533 c!402445) b!2522536))

(assert (= (and b!2522533 (not c!402445)) b!2522535))

(assert (= (and b!2522535 c!402447) b!2522530))

(assert (= (and b!2522535 (not c!402447)) b!2522537))

(assert (= (or b!2522530 b!2522537) bm!157330))

(assert (= (or b!2522536 bm!157330) bm!157328))

(assert (= (or b!2522531 b!2522530) bm!157329))

(assert (= (or b!2522531 bm!157328) bm!157327))

(declare-fun m!2876815 () Bool)

(assert (=> bm!157327 m!2876815))

(declare-fun m!2876817 () Bool)

(assert (=> d!718343 m!2876817))

(assert (=> d!718343 m!2876683))

(assert (=> b!2522535 m!2876665))

(declare-fun m!2876819 () Bool)

(assert (=> bm!157329 m!2876819))

(assert (=> b!2522327 d!718343))

(declare-fun b!2522544 () Bool)

(declare-fun e!1597319 () Bool)

(declare-fun e!1597315 () Bool)

(assert (=> b!2522544 (= e!1597319 e!1597315)))

(declare-fun res!1065686 () Bool)

(assert (=> b!2522544 (=> (not res!1065686) (not e!1597315))))

(declare-fun lt!899908 () Bool)

(assert (=> b!2522544 (= res!1065686 (not lt!899908))))

(declare-fun b!2522545 () Bool)

(declare-fun e!1597320 () Bool)

(declare-fun call!157336 () Bool)

(assert (=> b!2522545 (= e!1597320 (= lt!899908 call!157336))))

(declare-fun b!2522546 () Bool)

(declare-fun e!1597316 () Bool)

(assert (=> b!2522546 (= e!1597316 (not (= (head!5759 tl!4068) (c!402400 lt!899851))))))

(declare-fun bm!157331 () Bool)

(assert (=> bm!157331 (= call!157336 (isEmpty!16943 tl!4068))))

(declare-fun b!2522547 () Bool)

(declare-fun e!1597318 () Bool)

(assert (=> b!2522547 (= e!1597318 (not lt!899908))))

(declare-fun b!2522548 () Bool)

(declare-fun e!1597321 () Bool)

(assert (=> b!2522548 (= e!1597321 (nullable!2427 lt!899851))))

(declare-fun b!2522549 () Bool)

(assert (=> b!2522549 (= e!1597321 (matchR!3497 (derivativeStep!2079 lt!899851 (head!5759 tl!4068)) (tail!4036 tl!4068)))))

(declare-fun d!718345 () Bool)

(assert (=> d!718345 e!1597320))

(declare-fun c!402452 () Bool)

(assert (=> d!718345 (= c!402452 (is-EmptyExpr!7510 lt!899851))))

(assert (=> d!718345 (= lt!899908 e!1597321)))

(declare-fun c!402454 () Bool)

(assert (=> d!718345 (= c!402454 (isEmpty!16943 tl!4068))))

(assert (=> d!718345 (validRegex!3136 lt!899851)))

(assert (=> d!718345 (= (matchR!3497 lt!899851 tl!4068) lt!899908)))

(declare-fun b!2522550 () Bool)

(assert (=> b!2522550 (= e!1597320 e!1597318)))

(declare-fun c!402453 () Bool)

(assert (=> b!2522550 (= c!402453 (is-EmptyLang!7510 lt!899851))))

(declare-fun b!2522551 () Bool)

(declare-fun res!1065688 () Bool)

(assert (=> b!2522551 (=> res!1065688 e!1597316)))

(assert (=> b!2522551 (= res!1065688 (not (isEmpty!16943 (tail!4036 tl!4068))))))

(declare-fun b!2522552 () Bool)

(declare-fun res!1065682 () Bool)

(declare-fun e!1597317 () Bool)

(assert (=> b!2522552 (=> (not res!1065682) (not e!1597317))))

(assert (=> b!2522552 (= res!1065682 (isEmpty!16943 (tail!4036 tl!4068)))))

(declare-fun b!2522553 () Bool)

(assert (=> b!2522553 (= e!1597315 e!1597316)))

(declare-fun res!1065683 () Bool)

(assert (=> b!2522553 (=> res!1065683 e!1597316)))

(assert (=> b!2522553 (= res!1065683 call!157336)))

(declare-fun b!2522554 () Bool)

(declare-fun res!1065689 () Bool)

(assert (=> b!2522554 (=> res!1065689 e!1597319)))

(assert (=> b!2522554 (= res!1065689 e!1597317)))

(declare-fun res!1065685 () Bool)

(assert (=> b!2522554 (=> (not res!1065685) (not e!1597317))))

(assert (=> b!2522554 (= res!1065685 lt!899908)))

(declare-fun b!2522555 () Bool)

(assert (=> b!2522555 (= e!1597317 (= (head!5759 tl!4068) (c!402400 lt!899851)))))

(declare-fun b!2522556 () Bool)

(declare-fun res!1065684 () Bool)

(assert (=> b!2522556 (=> res!1065684 e!1597319)))

(assert (=> b!2522556 (= res!1065684 (not (is-ElementMatch!7510 lt!899851)))))

(assert (=> b!2522556 (= e!1597318 e!1597319)))

(declare-fun b!2522557 () Bool)

(declare-fun res!1065687 () Bool)

(assert (=> b!2522557 (=> (not res!1065687) (not e!1597317))))

(assert (=> b!2522557 (= res!1065687 (not call!157336))))

(assert (= (and d!718345 c!402454) b!2522548))

(assert (= (and d!718345 (not c!402454)) b!2522549))

(assert (= (and d!718345 c!402452) b!2522545))

(assert (= (and d!718345 (not c!402452)) b!2522550))

(assert (= (and b!2522550 c!402453) b!2522547))

(assert (= (and b!2522550 (not c!402453)) b!2522556))

(assert (= (and b!2522556 (not res!1065684)) b!2522554))

(assert (= (and b!2522554 res!1065685) b!2522557))

(assert (= (and b!2522557 res!1065687) b!2522552))

(assert (= (and b!2522552 res!1065682) b!2522555))

(assert (= (and b!2522554 (not res!1065689)) b!2522544))

(assert (= (and b!2522544 res!1065686) b!2522553))

(assert (= (and b!2522553 (not res!1065683)) b!2522551))

(assert (= (and b!2522551 (not res!1065688)) b!2522546))

(assert (= (or b!2522545 b!2522553 b!2522557) bm!157331))

(assert (=> d!718345 m!2876783))

(declare-fun m!2876821 () Bool)

(assert (=> d!718345 m!2876821))

(assert (=> bm!157331 m!2876783))

(assert (=> b!2522549 m!2876787))

(assert (=> b!2522549 m!2876787))

(declare-fun m!2876823 () Bool)

(assert (=> b!2522549 m!2876823))

(assert (=> b!2522549 m!2876791))

(assert (=> b!2522549 m!2876823))

(assert (=> b!2522549 m!2876791))

(declare-fun m!2876825 () Bool)

(assert (=> b!2522549 m!2876825))

(assert (=> b!2522555 m!2876787))

(assert (=> b!2522552 m!2876791))

(assert (=> b!2522552 m!2876791))

(assert (=> b!2522552 m!2876795))

(assert (=> b!2522546 m!2876787))

(assert (=> b!2522551 m!2876791))

(assert (=> b!2522551 m!2876791))

(assert (=> b!2522551 m!2876795))

(declare-fun m!2876827 () Bool)

(assert (=> b!2522548 m!2876827))

(assert (=> b!2522322 d!718345))

(declare-fun d!718347 () Bool)

(declare-fun lt!899913 () Regex!7510)

(assert (=> d!718347 (validRegex!3136 lt!899913)))

(declare-fun e!1597326 () Regex!7510)

(assert (=> d!718347 (= lt!899913 e!1597326)))

(declare-fun c!402457 () Bool)

(assert (=> d!718347 (= c!402457 (is-Cons!29475 tl!4068))))

(assert (=> d!718347 (validRegex!3136 lt!899856)))

(assert (=> d!718347 (= (derivative!205 lt!899856 tl!4068) lt!899913)))

(declare-fun b!2522562 () Bool)

(assert (=> b!2522562 (= e!1597326 (derivative!205 (derivativeStep!2079 lt!899856 (h!34895 tl!4068)) (t!211274 tl!4068)))))

(declare-fun b!2522563 () Bool)

(assert (=> b!2522563 (= e!1597326 lt!899856)))

(assert (= (and d!718347 c!402457) b!2522562))

(assert (= (and d!718347 (not c!402457)) b!2522563))

(declare-fun m!2876829 () Bool)

(assert (=> d!718347 m!2876829))

(declare-fun m!2876831 () Bool)

(assert (=> d!718347 m!2876831))

(declare-fun m!2876833 () Bool)

(assert (=> b!2522562 m!2876833))

(assert (=> b!2522562 m!2876833))

(declare-fun m!2876835 () Bool)

(assert (=> b!2522562 m!2876835))

(assert (=> b!2522322 d!718347))

(declare-fun b!2522572 () Bool)

(declare-fun e!1597333 () Bool)

(declare-fun e!1597329 () Bool)

(assert (=> b!2522572 (= e!1597333 e!1597329)))

(declare-fun res!1065702 () Bool)

(assert (=> b!2522572 (=> (not res!1065702) (not e!1597329))))

(declare-fun lt!899914 () Bool)

(assert (=> b!2522572 (= res!1065702 (not lt!899914))))

(declare-fun b!2522573 () Bool)

(declare-fun e!1597334 () Bool)

(declare-fun call!157337 () Bool)

(assert (=> b!2522573 (= e!1597334 (= lt!899914 call!157337))))

(declare-fun b!2522574 () Bool)

(declare-fun e!1597330 () Bool)

(assert (=> b!2522574 (= e!1597330 (not (= (head!5759 Nil!29475) (c!402400 (derivative!205 lt!899856 tl!4068)))))))

(declare-fun bm!157332 () Bool)

(assert (=> bm!157332 (= call!157337 (isEmpty!16943 Nil!29475))))

(declare-fun b!2522575 () Bool)

(declare-fun e!1597332 () Bool)

(assert (=> b!2522575 (= e!1597332 (not lt!899914))))

(declare-fun b!2522576 () Bool)

(declare-fun e!1597335 () Bool)

(assert (=> b!2522576 (= e!1597335 (nullable!2427 (derivative!205 lt!899856 tl!4068)))))

(declare-fun b!2522577 () Bool)

(assert (=> b!2522577 (= e!1597335 (matchR!3497 (derivativeStep!2079 (derivative!205 lt!899856 tl!4068) (head!5759 Nil!29475)) (tail!4036 Nil!29475)))))

(declare-fun d!718349 () Bool)

(assert (=> d!718349 e!1597334))

(declare-fun c!402458 () Bool)

(assert (=> d!718349 (= c!402458 (is-EmptyExpr!7510 (derivative!205 lt!899856 tl!4068)))))

(assert (=> d!718349 (= lt!899914 e!1597335)))

(declare-fun c!402460 () Bool)

(assert (=> d!718349 (= c!402460 (isEmpty!16943 Nil!29475))))

(assert (=> d!718349 (validRegex!3136 (derivative!205 lt!899856 tl!4068))))

(assert (=> d!718349 (= (matchR!3497 (derivative!205 lt!899856 tl!4068) Nil!29475) lt!899914)))

(declare-fun b!2522578 () Bool)

(assert (=> b!2522578 (= e!1597334 e!1597332)))

(declare-fun c!402459 () Bool)

(assert (=> b!2522578 (= c!402459 (is-EmptyLang!7510 (derivative!205 lt!899856 tl!4068)))))

(declare-fun b!2522579 () Bool)

(declare-fun res!1065704 () Bool)

(assert (=> b!2522579 (=> res!1065704 e!1597330)))

(assert (=> b!2522579 (= res!1065704 (not (isEmpty!16943 (tail!4036 Nil!29475))))))

(declare-fun b!2522580 () Bool)

(declare-fun res!1065698 () Bool)

(declare-fun e!1597331 () Bool)

(assert (=> b!2522580 (=> (not res!1065698) (not e!1597331))))

(assert (=> b!2522580 (= res!1065698 (isEmpty!16943 (tail!4036 Nil!29475)))))

(declare-fun b!2522581 () Bool)

(assert (=> b!2522581 (= e!1597329 e!1597330)))

(declare-fun res!1065699 () Bool)

(assert (=> b!2522581 (=> res!1065699 e!1597330)))

(assert (=> b!2522581 (= res!1065699 call!157337)))

(declare-fun b!2522582 () Bool)

(declare-fun res!1065705 () Bool)

(assert (=> b!2522582 (=> res!1065705 e!1597333)))

(assert (=> b!2522582 (= res!1065705 e!1597331)))

(declare-fun res!1065701 () Bool)

(assert (=> b!2522582 (=> (not res!1065701) (not e!1597331))))

(assert (=> b!2522582 (= res!1065701 lt!899914)))

(declare-fun b!2522583 () Bool)

(assert (=> b!2522583 (= e!1597331 (= (head!5759 Nil!29475) (c!402400 (derivative!205 lt!899856 tl!4068))))))

(declare-fun b!2522584 () Bool)

(declare-fun res!1065700 () Bool)

(assert (=> b!2522584 (=> res!1065700 e!1597333)))

(assert (=> b!2522584 (= res!1065700 (not (is-ElementMatch!7510 (derivative!205 lt!899856 tl!4068))))))

(assert (=> b!2522584 (= e!1597332 e!1597333)))

(declare-fun b!2522585 () Bool)

(declare-fun res!1065703 () Bool)

(assert (=> b!2522585 (=> (not res!1065703) (not e!1597331))))

(assert (=> b!2522585 (= res!1065703 (not call!157337))))

(assert (= (and d!718349 c!402460) b!2522576))

(assert (= (and d!718349 (not c!402460)) b!2522577))

(assert (= (and d!718349 c!402458) b!2522573))

(assert (= (and d!718349 (not c!402458)) b!2522578))

(assert (= (and b!2522578 c!402459) b!2522575))

(assert (= (and b!2522578 (not c!402459)) b!2522584))

(assert (= (and b!2522584 (not res!1065700)) b!2522582))

(assert (= (and b!2522582 res!1065701) b!2522585))

(assert (= (and b!2522585 res!1065703) b!2522580))

(assert (= (and b!2522580 res!1065698) b!2522583))

(assert (= (and b!2522582 (not res!1065705)) b!2522572))

(assert (= (and b!2522572 res!1065702) b!2522581))

(assert (= (and b!2522581 (not res!1065699)) b!2522579))

(assert (= (and b!2522579 (not res!1065704)) b!2522574))

(assert (= (or b!2522573 b!2522581 b!2522585) bm!157332))

(declare-fun m!2876837 () Bool)

(assert (=> d!718349 m!2876837))

(assert (=> d!718349 m!2876669))

(declare-fun m!2876839 () Bool)

(assert (=> d!718349 m!2876839))

(assert (=> bm!157332 m!2876837))

(declare-fun m!2876841 () Bool)

(assert (=> b!2522577 m!2876841))

(assert (=> b!2522577 m!2876669))

(assert (=> b!2522577 m!2876841))

(declare-fun m!2876843 () Bool)

(assert (=> b!2522577 m!2876843))

(declare-fun m!2876845 () Bool)

(assert (=> b!2522577 m!2876845))

(assert (=> b!2522577 m!2876843))

(assert (=> b!2522577 m!2876845))

(declare-fun m!2876847 () Bool)

(assert (=> b!2522577 m!2876847))

(assert (=> b!2522583 m!2876841))

(assert (=> b!2522580 m!2876845))

(assert (=> b!2522580 m!2876845))

(declare-fun m!2876849 () Bool)

(assert (=> b!2522580 m!2876849))

(assert (=> b!2522574 m!2876841))

(assert (=> b!2522579 m!2876845))

(assert (=> b!2522579 m!2876845))

(assert (=> b!2522579 m!2876849))

(assert (=> b!2522576 m!2876669))

(declare-fun m!2876851 () Bool)

(assert (=> b!2522576 m!2876851))

(assert (=> b!2522322 d!718349))

(declare-fun d!718351 () Bool)

(declare-fun e!1597345 () Bool)

(assert (=> d!718351 e!1597345))

(declare-fun res!1065715 () Bool)

(assert (=> d!718351 (=> res!1065715 e!1597345)))

(assert (=> d!718351 (= res!1065715 (matchR!3497 lt!899851 tl!4068))))

(declare-fun lt!899920 () Unit!43245)

(declare-fun choose!14949 (Regex!7510 Regex!7510 List!29575) Unit!43245)

(assert (=> d!718351 (= lt!899920 (choose!14949 lt!899851 lt!899855 tl!4068))))

(declare-fun e!1597346 () Bool)

(assert (=> d!718351 e!1597346))

(declare-fun res!1065716 () Bool)

(assert (=> d!718351 (=> (not res!1065716) (not e!1597346))))

(assert (=> d!718351 (= res!1065716 (validRegex!3136 lt!899851))))

(assert (=> d!718351 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!175 lt!899851 lt!899855 tl!4068) lt!899920)))

(declare-fun b!2522599 () Bool)

(assert (=> b!2522599 (= e!1597346 (validRegex!3136 lt!899855))))

(declare-fun b!2522600 () Bool)

(assert (=> b!2522600 (= e!1597345 (matchR!3497 lt!899855 tl!4068))))

(assert (= (and d!718351 res!1065716) b!2522599))

(assert (= (and d!718351 (not res!1065715)) b!2522600))

(assert (=> d!718351 m!2876681))

(declare-fun m!2876853 () Bool)

(assert (=> d!718351 m!2876853))

(assert (=> d!718351 m!2876821))

(assert (=> b!2522599 m!2876785))

(assert (=> b!2522600 m!2876685))

(assert (=> b!2522322 d!718351))

(declare-fun d!718353 () Bool)

(assert (=> d!718353 (= (matchR!3497 lt!899856 tl!4068) (matchR!3497 (derivative!205 lt!899856 tl!4068) Nil!29475))))

(declare-fun lt!899923 () Unit!43245)

(declare-fun choose!14950 (Regex!7510 List!29575) Unit!43245)

(assert (=> d!718353 (= lt!899923 (choose!14950 lt!899856 tl!4068))))

(assert (=> d!718353 (validRegex!3136 lt!899856)))

(assert (=> d!718353 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!143 lt!899856 tl!4068) lt!899923)))

(declare-fun bs!469022 () Bool)

(assert (= bs!469022 d!718353))

(assert (=> bs!469022 m!2876669))

(assert (=> bs!469022 m!2876669))

(assert (=> bs!469022 m!2876671))

(assert (=> bs!469022 m!2876667))

(assert (=> bs!469022 m!2876831))

(declare-fun m!2876877 () Bool)

(assert (=> bs!469022 m!2876877))

(assert (=> b!2522322 d!718353))

(declare-fun b!2522601 () Bool)

(declare-fun e!1597351 () Bool)

(declare-fun e!1597347 () Bool)

(assert (=> b!2522601 (= e!1597351 e!1597347)))

(declare-fun res!1065721 () Bool)

(assert (=> b!2522601 (=> (not res!1065721) (not e!1597347))))

(declare-fun lt!899924 () Bool)

(assert (=> b!2522601 (= res!1065721 (not lt!899924))))

(declare-fun b!2522602 () Bool)

(declare-fun e!1597352 () Bool)

(declare-fun call!157338 () Bool)

(assert (=> b!2522602 (= e!1597352 (= lt!899924 call!157338))))

(declare-fun b!2522603 () Bool)

(declare-fun e!1597348 () Bool)

(assert (=> b!2522603 (= e!1597348 (not (= (head!5759 tl!4068) (c!402400 lt!899856))))))

(declare-fun bm!157333 () Bool)

(assert (=> bm!157333 (= call!157338 (isEmpty!16943 tl!4068))))

(declare-fun b!2522604 () Bool)

(declare-fun e!1597350 () Bool)

(assert (=> b!2522604 (= e!1597350 (not lt!899924))))

(declare-fun b!2522605 () Bool)

(declare-fun e!1597353 () Bool)

(assert (=> b!2522605 (= e!1597353 (nullable!2427 lt!899856))))

(declare-fun b!2522606 () Bool)

(assert (=> b!2522606 (= e!1597353 (matchR!3497 (derivativeStep!2079 lt!899856 (head!5759 tl!4068)) (tail!4036 tl!4068)))))

(declare-fun d!718359 () Bool)

(assert (=> d!718359 e!1597352))

(declare-fun c!402463 () Bool)

(assert (=> d!718359 (= c!402463 (is-EmptyExpr!7510 lt!899856))))

(assert (=> d!718359 (= lt!899924 e!1597353)))

(declare-fun c!402465 () Bool)

(assert (=> d!718359 (= c!402465 (isEmpty!16943 tl!4068))))

(assert (=> d!718359 (validRegex!3136 lt!899856)))

(assert (=> d!718359 (= (matchR!3497 lt!899856 tl!4068) lt!899924)))

(declare-fun b!2522607 () Bool)

(assert (=> b!2522607 (= e!1597352 e!1597350)))

(declare-fun c!402464 () Bool)

(assert (=> b!2522607 (= c!402464 (is-EmptyLang!7510 lt!899856))))

(declare-fun b!2522608 () Bool)

(declare-fun res!1065723 () Bool)

(assert (=> b!2522608 (=> res!1065723 e!1597348)))

(assert (=> b!2522608 (= res!1065723 (not (isEmpty!16943 (tail!4036 tl!4068))))))

(declare-fun b!2522609 () Bool)

(declare-fun res!1065717 () Bool)

(declare-fun e!1597349 () Bool)

(assert (=> b!2522609 (=> (not res!1065717) (not e!1597349))))

(assert (=> b!2522609 (= res!1065717 (isEmpty!16943 (tail!4036 tl!4068)))))

(declare-fun b!2522610 () Bool)

(assert (=> b!2522610 (= e!1597347 e!1597348)))

(declare-fun res!1065718 () Bool)

(assert (=> b!2522610 (=> res!1065718 e!1597348)))

(assert (=> b!2522610 (= res!1065718 call!157338)))

(declare-fun b!2522611 () Bool)

(declare-fun res!1065724 () Bool)

(assert (=> b!2522611 (=> res!1065724 e!1597351)))

(assert (=> b!2522611 (= res!1065724 e!1597349)))

(declare-fun res!1065720 () Bool)

(assert (=> b!2522611 (=> (not res!1065720) (not e!1597349))))

(assert (=> b!2522611 (= res!1065720 lt!899924)))

(declare-fun b!2522612 () Bool)

(assert (=> b!2522612 (= e!1597349 (= (head!5759 tl!4068) (c!402400 lt!899856)))))

(declare-fun b!2522613 () Bool)

(declare-fun res!1065719 () Bool)

(assert (=> b!2522613 (=> res!1065719 e!1597351)))

(assert (=> b!2522613 (= res!1065719 (not (is-ElementMatch!7510 lt!899856)))))

(assert (=> b!2522613 (= e!1597350 e!1597351)))

(declare-fun b!2522614 () Bool)

(declare-fun res!1065722 () Bool)

(assert (=> b!2522614 (=> (not res!1065722) (not e!1597349))))

(assert (=> b!2522614 (= res!1065722 (not call!157338))))

(assert (= (and d!718359 c!402465) b!2522605))

(assert (= (and d!718359 (not c!402465)) b!2522606))

(assert (= (and d!718359 c!402463) b!2522602))

(assert (= (and d!718359 (not c!402463)) b!2522607))

(assert (= (and b!2522607 c!402464) b!2522604))

(assert (= (and b!2522607 (not c!402464)) b!2522613))

(assert (= (and b!2522613 (not res!1065719)) b!2522611))

(assert (= (and b!2522611 res!1065720) b!2522614))

(assert (= (and b!2522614 res!1065722) b!2522609))

(assert (= (and b!2522609 res!1065717) b!2522612))

(assert (= (and b!2522611 (not res!1065724)) b!2522601))

(assert (= (and b!2522601 res!1065721) b!2522610))

(assert (= (and b!2522610 (not res!1065718)) b!2522608))

(assert (= (and b!2522608 (not res!1065723)) b!2522603))

(assert (= (or b!2522602 b!2522610 b!2522614) bm!157333))

(assert (=> d!718359 m!2876783))

(assert (=> d!718359 m!2876831))

(assert (=> bm!157333 m!2876783))

(assert (=> b!2522606 m!2876787))

(assert (=> b!2522606 m!2876787))

(declare-fun m!2876879 () Bool)

(assert (=> b!2522606 m!2876879))

(assert (=> b!2522606 m!2876791))

(assert (=> b!2522606 m!2876879))

(assert (=> b!2522606 m!2876791))

(declare-fun m!2876881 () Bool)

(assert (=> b!2522606 m!2876881))

(assert (=> b!2522612 m!2876787))

(assert (=> b!2522609 m!2876791))

(assert (=> b!2522609 m!2876791))

(assert (=> b!2522609 m!2876795))

(assert (=> b!2522603 m!2876787))

(assert (=> b!2522608 m!2876791))

(assert (=> b!2522608 m!2876791))

(assert (=> b!2522608 m!2876795))

(declare-fun m!2876883 () Bool)

(assert (=> b!2522605 m!2876883))

(assert (=> b!2522322 d!718359))

(declare-fun b!2522615 () Bool)

(declare-fun c!402467 () Bool)

(assert (=> b!2522615 (= c!402467 (is-Union!7510 (regTwo!15532 r!27340)))))

(declare-fun e!1597354 () Regex!7510)

(declare-fun e!1597355 () Regex!7510)

(assert (=> b!2522615 (= e!1597354 e!1597355)))

(declare-fun bm!157334 () Bool)

(declare-fun c!402466 () Bool)

(declare-fun call!157340 () Regex!7510)

(assert (=> bm!157334 (= call!157340 (derivativeStep!2079 (ite c!402467 (regOne!15533 (regTwo!15532 r!27340)) (ite c!402466 (reg!7839 (regTwo!15532 r!27340)) (regOne!15532 (regTwo!15532 r!27340)))) c!14016))))

(declare-fun b!2522616 () Bool)

(declare-fun e!1597357 () Regex!7510)

(assert (=> b!2522616 (= e!1597357 e!1597354)))

(declare-fun c!402470 () Bool)

(assert (=> b!2522616 (= c!402470 (is-ElementMatch!7510 (regTwo!15532 r!27340)))))

(declare-fun e!1597358 () Regex!7510)

(declare-fun call!157339 () Regex!7510)

(declare-fun call!157342 () Regex!7510)

(declare-fun b!2522617 () Bool)

(assert (=> b!2522617 (= e!1597358 (Union!7510 (Concat!12206 call!157342 (regTwo!15532 (regTwo!15532 r!27340))) call!157339))))

(declare-fun b!2522618 () Bool)

(assert (=> b!2522618 (= e!1597355 (Union!7510 call!157340 call!157339))))

(declare-fun d!718361 () Bool)

(declare-fun lt!899925 () Regex!7510)

(assert (=> d!718361 (validRegex!3136 lt!899925)))

(assert (=> d!718361 (= lt!899925 e!1597357)))

(declare-fun c!402469 () Bool)

(assert (=> d!718361 (= c!402469 (or (is-EmptyExpr!7510 (regTwo!15532 r!27340)) (is-EmptyLang!7510 (regTwo!15532 r!27340))))))

(assert (=> d!718361 (validRegex!3136 (regTwo!15532 r!27340))))

(assert (=> d!718361 (= (derivativeStep!2079 (regTwo!15532 r!27340) c!14016) lt!899925)))

(declare-fun b!2522619 () Bool)

(assert (=> b!2522619 (= e!1597354 (ite (= c!14016 (c!402400 (regTwo!15532 r!27340))) EmptyExpr!7510 EmptyLang!7510))))

(declare-fun b!2522620 () Bool)

(declare-fun e!1597356 () Regex!7510)

(assert (=> b!2522620 (= e!1597355 e!1597356)))

(assert (=> b!2522620 (= c!402466 (is-Star!7510 (regTwo!15532 r!27340)))))

(declare-fun b!2522621 () Bool)

(assert (=> b!2522621 (= e!1597357 EmptyLang!7510)))

(declare-fun b!2522622 () Bool)

(declare-fun c!402468 () Bool)

(assert (=> b!2522622 (= c!402468 (nullable!2427 (regOne!15532 (regTwo!15532 r!27340))))))

(assert (=> b!2522622 (= e!1597356 e!1597358)))

(declare-fun bm!157335 () Bool)

(declare-fun call!157341 () Regex!7510)

(assert (=> bm!157335 (= call!157341 call!157340)))

(declare-fun bm!157336 () Bool)

(assert (=> bm!157336 (= call!157339 (derivativeStep!2079 (ite c!402467 (regTwo!15533 (regTwo!15532 r!27340)) (regTwo!15532 (regTwo!15532 r!27340))) c!14016))))

(declare-fun bm!157337 () Bool)

(assert (=> bm!157337 (= call!157342 call!157341)))

(declare-fun b!2522623 () Bool)

(assert (=> b!2522623 (= e!1597356 (Concat!12206 call!157341 (regTwo!15532 r!27340)))))

(declare-fun b!2522624 () Bool)

(assert (=> b!2522624 (= e!1597358 (Union!7510 (Concat!12206 call!157342 (regTwo!15532 (regTwo!15532 r!27340))) EmptyLang!7510))))

(assert (= (and d!718361 c!402469) b!2522621))

(assert (= (and d!718361 (not c!402469)) b!2522616))

(assert (= (and b!2522616 c!402470) b!2522619))

(assert (= (and b!2522616 (not c!402470)) b!2522615))

(assert (= (and b!2522615 c!402467) b!2522618))

(assert (= (and b!2522615 (not c!402467)) b!2522620))

(assert (= (and b!2522620 c!402466) b!2522623))

(assert (= (and b!2522620 (not c!402466)) b!2522622))

(assert (= (and b!2522622 c!402468) b!2522617))

(assert (= (and b!2522622 (not c!402468)) b!2522624))

(assert (= (or b!2522617 b!2522624) bm!157337))

(assert (= (or b!2522623 bm!157337) bm!157335))

(assert (= (or b!2522618 b!2522617) bm!157336))

(assert (= (or b!2522618 bm!157335) bm!157334))

(declare-fun m!2876885 () Bool)

(assert (=> bm!157334 m!2876885))

(declare-fun m!2876887 () Bool)

(assert (=> d!718361 m!2876887))

(declare-fun m!2876889 () Bool)

(assert (=> d!718361 m!2876889))

(declare-fun m!2876891 () Bool)

(assert (=> b!2522622 m!2876891))

(declare-fun m!2876893 () Bool)

(assert (=> bm!157336 m!2876893))

(assert (=> b!2522322 d!718361))

(declare-fun b!2522625 () Bool)

(declare-fun c!402472 () Bool)

(assert (=> b!2522625 (= c!402472 (is-Union!7510 (regOne!15532 r!27340)))))

(declare-fun e!1597359 () Regex!7510)

(declare-fun e!1597360 () Regex!7510)

(assert (=> b!2522625 (= e!1597359 e!1597360)))

(declare-fun call!157344 () Regex!7510)

(declare-fun bm!157338 () Bool)

(declare-fun c!402471 () Bool)

(assert (=> bm!157338 (= call!157344 (derivativeStep!2079 (ite c!402472 (regOne!15533 (regOne!15532 r!27340)) (ite c!402471 (reg!7839 (regOne!15532 r!27340)) (regOne!15532 (regOne!15532 r!27340)))) c!14016))))

(declare-fun b!2522626 () Bool)

(declare-fun e!1597362 () Regex!7510)

(assert (=> b!2522626 (= e!1597362 e!1597359)))

(declare-fun c!402475 () Bool)

(assert (=> b!2522626 (= c!402475 (is-ElementMatch!7510 (regOne!15532 r!27340)))))

(declare-fun call!157343 () Regex!7510)

(declare-fun call!157346 () Regex!7510)

(declare-fun e!1597363 () Regex!7510)

(declare-fun b!2522627 () Bool)

(assert (=> b!2522627 (= e!1597363 (Union!7510 (Concat!12206 call!157346 (regTwo!15532 (regOne!15532 r!27340))) call!157343))))

(declare-fun b!2522628 () Bool)

(assert (=> b!2522628 (= e!1597360 (Union!7510 call!157344 call!157343))))

(declare-fun d!718363 () Bool)

(declare-fun lt!899926 () Regex!7510)

(assert (=> d!718363 (validRegex!3136 lt!899926)))

(assert (=> d!718363 (= lt!899926 e!1597362)))

(declare-fun c!402474 () Bool)

(assert (=> d!718363 (= c!402474 (or (is-EmptyExpr!7510 (regOne!15532 r!27340)) (is-EmptyLang!7510 (regOne!15532 r!27340))))))

(assert (=> d!718363 (validRegex!3136 (regOne!15532 r!27340))))

(assert (=> d!718363 (= (derivativeStep!2079 (regOne!15532 r!27340) c!14016) lt!899926)))

(declare-fun b!2522629 () Bool)

(assert (=> b!2522629 (= e!1597359 (ite (= c!14016 (c!402400 (regOne!15532 r!27340))) EmptyExpr!7510 EmptyLang!7510))))

(declare-fun b!2522630 () Bool)

(declare-fun e!1597361 () Regex!7510)

(assert (=> b!2522630 (= e!1597360 e!1597361)))

(assert (=> b!2522630 (= c!402471 (is-Star!7510 (regOne!15532 r!27340)))))

(declare-fun b!2522631 () Bool)

(assert (=> b!2522631 (= e!1597362 EmptyLang!7510)))

(declare-fun b!2522632 () Bool)

(declare-fun c!402473 () Bool)

(assert (=> b!2522632 (= c!402473 (nullable!2427 (regOne!15532 (regOne!15532 r!27340))))))

(assert (=> b!2522632 (= e!1597361 e!1597363)))

(declare-fun bm!157339 () Bool)

(declare-fun call!157345 () Regex!7510)

(assert (=> bm!157339 (= call!157345 call!157344)))

(declare-fun bm!157340 () Bool)

(assert (=> bm!157340 (= call!157343 (derivativeStep!2079 (ite c!402472 (regTwo!15533 (regOne!15532 r!27340)) (regTwo!15532 (regOne!15532 r!27340))) c!14016))))

(declare-fun bm!157341 () Bool)

(assert (=> bm!157341 (= call!157346 call!157345)))

(declare-fun b!2522633 () Bool)

(assert (=> b!2522633 (= e!1597361 (Concat!12206 call!157345 (regOne!15532 r!27340)))))

(declare-fun b!2522634 () Bool)

(assert (=> b!2522634 (= e!1597363 (Union!7510 (Concat!12206 call!157346 (regTwo!15532 (regOne!15532 r!27340))) EmptyLang!7510))))

(assert (= (and d!718363 c!402474) b!2522631))

(assert (= (and d!718363 (not c!402474)) b!2522626))

(assert (= (and b!2522626 c!402475) b!2522629))

(assert (= (and b!2522626 (not c!402475)) b!2522625))

(assert (= (and b!2522625 c!402472) b!2522628))

(assert (= (and b!2522625 (not c!402472)) b!2522630))

(assert (= (and b!2522630 c!402471) b!2522633))

(assert (= (and b!2522630 (not c!402471)) b!2522632))

(assert (= (and b!2522632 c!402473) b!2522627))

(assert (= (and b!2522632 (not c!402473)) b!2522634))

(assert (= (or b!2522627 b!2522634) bm!157341))

(assert (= (or b!2522633 bm!157341) bm!157339))

(assert (= (or b!2522628 b!2522627) bm!157340))

(assert (= (or b!2522628 bm!157339) bm!157338))

(declare-fun m!2876895 () Bool)

(assert (=> bm!157338 m!2876895))

(declare-fun m!2876897 () Bool)

(assert (=> d!718363 m!2876897))

(declare-fun m!2876899 () Bool)

(assert (=> d!718363 m!2876899))

(declare-fun m!2876901 () Bool)

(assert (=> b!2522632 m!2876901))

(declare-fun m!2876903 () Bool)

(assert (=> bm!157340 m!2876903))

(assert (=> b!2522322 d!718363))

(declare-fun b!2522635 () Bool)

(declare-fun e!1597368 () Bool)

(declare-fun e!1597364 () Bool)

(assert (=> b!2522635 (= e!1597368 e!1597364)))

(declare-fun res!1065729 () Bool)

(assert (=> b!2522635 (=> (not res!1065729) (not e!1597364))))

(declare-fun lt!899927 () Bool)

(assert (=> b!2522635 (= res!1065729 (not lt!899927))))

(declare-fun b!2522636 () Bool)

(declare-fun e!1597369 () Bool)

(declare-fun call!157347 () Bool)

(assert (=> b!2522636 (= e!1597369 (= lt!899927 call!157347))))

(declare-fun b!2522637 () Bool)

(declare-fun e!1597365 () Bool)

(assert (=> b!2522637 (= e!1597365 (not (= (head!5759 (_1!17303 lt!899848)) (c!402400 lt!899850))))))

(declare-fun bm!157342 () Bool)

(assert (=> bm!157342 (= call!157347 (isEmpty!16943 (_1!17303 lt!899848)))))

(declare-fun b!2522638 () Bool)

(declare-fun e!1597367 () Bool)

(assert (=> b!2522638 (= e!1597367 (not lt!899927))))

(declare-fun b!2522639 () Bool)

(declare-fun e!1597370 () Bool)

(assert (=> b!2522639 (= e!1597370 (nullable!2427 lt!899850))))

(declare-fun b!2522640 () Bool)

(assert (=> b!2522640 (= e!1597370 (matchR!3497 (derivativeStep!2079 lt!899850 (head!5759 (_1!17303 lt!899848))) (tail!4036 (_1!17303 lt!899848))))))

(declare-fun d!718365 () Bool)

(assert (=> d!718365 e!1597369))

(declare-fun c!402476 () Bool)

(assert (=> d!718365 (= c!402476 (is-EmptyExpr!7510 lt!899850))))

(assert (=> d!718365 (= lt!899927 e!1597370)))

(declare-fun c!402478 () Bool)

(assert (=> d!718365 (= c!402478 (isEmpty!16943 (_1!17303 lt!899848)))))

(assert (=> d!718365 (validRegex!3136 lt!899850)))

(assert (=> d!718365 (= (matchR!3497 lt!899850 (_1!17303 lt!899848)) lt!899927)))

(declare-fun b!2522641 () Bool)

(assert (=> b!2522641 (= e!1597369 e!1597367)))

(declare-fun c!402477 () Bool)

(assert (=> b!2522641 (= c!402477 (is-EmptyLang!7510 lt!899850))))

(declare-fun b!2522642 () Bool)

(declare-fun res!1065731 () Bool)

(assert (=> b!2522642 (=> res!1065731 e!1597365)))

(assert (=> b!2522642 (= res!1065731 (not (isEmpty!16943 (tail!4036 (_1!17303 lt!899848)))))))

(declare-fun b!2522643 () Bool)

(declare-fun res!1065725 () Bool)

(declare-fun e!1597366 () Bool)

(assert (=> b!2522643 (=> (not res!1065725) (not e!1597366))))

(assert (=> b!2522643 (= res!1065725 (isEmpty!16943 (tail!4036 (_1!17303 lt!899848))))))

(declare-fun b!2522644 () Bool)

(assert (=> b!2522644 (= e!1597364 e!1597365)))

(declare-fun res!1065726 () Bool)

(assert (=> b!2522644 (=> res!1065726 e!1597365)))

(assert (=> b!2522644 (= res!1065726 call!157347)))

(declare-fun b!2522645 () Bool)

(declare-fun res!1065732 () Bool)

(assert (=> b!2522645 (=> res!1065732 e!1597368)))

(assert (=> b!2522645 (= res!1065732 e!1597366)))

(declare-fun res!1065728 () Bool)

(assert (=> b!2522645 (=> (not res!1065728) (not e!1597366))))

(assert (=> b!2522645 (= res!1065728 lt!899927)))

(declare-fun b!2522646 () Bool)

(assert (=> b!2522646 (= e!1597366 (= (head!5759 (_1!17303 lt!899848)) (c!402400 lt!899850)))))

(declare-fun b!2522647 () Bool)

(declare-fun res!1065727 () Bool)

(assert (=> b!2522647 (=> res!1065727 e!1597368)))

(assert (=> b!2522647 (= res!1065727 (not (is-ElementMatch!7510 lt!899850)))))

(assert (=> b!2522647 (= e!1597367 e!1597368)))

(declare-fun b!2522648 () Bool)

(declare-fun res!1065730 () Bool)

(assert (=> b!2522648 (=> (not res!1065730) (not e!1597366))))

(assert (=> b!2522648 (= res!1065730 (not call!157347))))

(assert (= (and d!718365 c!402478) b!2522639))

(assert (= (and d!718365 (not c!402478)) b!2522640))

(assert (= (and d!718365 c!402476) b!2522636))

(assert (= (and d!718365 (not c!402476)) b!2522641))

(assert (= (and b!2522641 c!402477) b!2522638))

(assert (= (and b!2522641 (not c!402477)) b!2522647))

(assert (= (and b!2522647 (not res!1065727)) b!2522645))

(assert (= (and b!2522645 res!1065728) b!2522648))

(assert (= (and b!2522648 res!1065730) b!2522643))

(assert (= (and b!2522643 res!1065725) b!2522646))

(assert (= (and b!2522645 (not res!1065732)) b!2522635))

(assert (= (and b!2522635 res!1065729) b!2522644))

(assert (= (and b!2522644 (not res!1065726)) b!2522642))

(assert (= (and b!2522642 (not res!1065731)) b!2522637))

(assert (= (or b!2522636 b!2522644 b!2522648) bm!157342))

(declare-fun m!2876905 () Bool)

(assert (=> d!718365 m!2876905))

(declare-fun m!2876907 () Bool)

(assert (=> d!718365 m!2876907))

(assert (=> bm!157342 m!2876905))

(declare-fun m!2876909 () Bool)

(assert (=> b!2522640 m!2876909))

(assert (=> b!2522640 m!2876909))

(declare-fun m!2876911 () Bool)

(assert (=> b!2522640 m!2876911))

(declare-fun m!2876913 () Bool)

(assert (=> b!2522640 m!2876913))

(assert (=> b!2522640 m!2876911))

(assert (=> b!2522640 m!2876913))

(declare-fun m!2876915 () Bool)

(assert (=> b!2522640 m!2876915))

(assert (=> b!2522646 m!2876909))

(assert (=> b!2522643 m!2876913))

(assert (=> b!2522643 m!2876913))

(declare-fun m!2876917 () Bool)

(assert (=> b!2522643 m!2876917))

(assert (=> b!2522637 m!2876909))

(assert (=> b!2522642 m!2876913))

(assert (=> b!2522642 m!2876913))

(assert (=> b!2522642 m!2876917))

(declare-fun m!2876919 () Bool)

(assert (=> b!2522639 m!2876919))

(assert (=> b!2522321 d!718365))

(declare-fun d!718367 () Bool)

(assert (=> d!718367 (= (nullable!2427 (regOne!15532 r!27340)) (nullableFct!669 (regOne!15532 r!27340)))))

(declare-fun bs!469023 () Bool)

(assert (= bs!469023 d!718367))

(declare-fun m!2876921 () Bool)

(assert (=> bs!469023 m!2876921))

(assert (=> b!2522317 d!718367))

(declare-fun d!718369 () Bool)

(declare-fun e!1597376 () Bool)

(assert (=> d!718369 e!1597376))

(declare-fun res!1065737 () Bool)

(assert (=> d!718369 (=> (not res!1065737) (not e!1597376))))

(declare-fun lt!899933 () List!29575)

(declare-fun content!4040 (List!29575) (Set C!15178))

(assert (=> d!718369 (= res!1065737 (= (content!4040 lt!899933) (set.union (content!4040 (_1!17303 lt!899848)) (content!4040 (_2!17303 lt!899848)))))))

(declare-fun e!1597375 () List!29575)

(assert (=> d!718369 (= lt!899933 e!1597375)))

(declare-fun c!402481 () Bool)

(assert (=> d!718369 (= c!402481 (is-Nil!29475 (_1!17303 lt!899848)))))

(assert (=> d!718369 (= (++!7231 (_1!17303 lt!899848) (_2!17303 lt!899848)) lt!899933)))

(declare-fun b!2522660 () Bool)

(assert (=> b!2522660 (= e!1597376 (or (not (= (_2!17303 lt!899848) Nil!29475)) (= lt!899933 (_1!17303 lt!899848))))))

(declare-fun b!2522657 () Bool)

(assert (=> b!2522657 (= e!1597375 (_2!17303 lt!899848))))

(declare-fun b!2522659 () Bool)

(declare-fun res!1065738 () Bool)

(assert (=> b!2522659 (=> (not res!1065738) (not e!1597376))))

(declare-fun size!22922 (List!29575) Int)

(assert (=> b!2522659 (= res!1065738 (= (size!22922 lt!899933) (+ (size!22922 (_1!17303 lt!899848)) (size!22922 (_2!17303 lt!899848)))))))

(declare-fun b!2522658 () Bool)

(assert (=> b!2522658 (= e!1597375 (Cons!29475 (h!34895 (_1!17303 lt!899848)) (++!7231 (t!211274 (_1!17303 lt!899848)) (_2!17303 lt!899848))))))

(assert (= (and d!718369 c!402481) b!2522657))

(assert (= (and d!718369 (not c!402481)) b!2522658))

(assert (= (and d!718369 res!1065737) b!2522659))

(assert (= (and b!2522659 res!1065738) b!2522660))

(declare-fun m!2876927 () Bool)

(assert (=> d!718369 m!2876927))

(declare-fun m!2876929 () Bool)

(assert (=> d!718369 m!2876929))

(declare-fun m!2876931 () Bool)

(assert (=> d!718369 m!2876931))

(declare-fun m!2876933 () Bool)

(assert (=> b!2522659 m!2876933))

(declare-fun m!2876935 () Bool)

(assert (=> b!2522659 m!2876935))

(declare-fun m!2876937 () Bool)

(assert (=> b!2522659 m!2876937))

(declare-fun m!2876939 () Bool)

(assert (=> b!2522658 m!2876939))

(assert (=> b!2522324 d!718369))

(declare-fun b!2522705 () Bool)

(declare-fun e!1597403 () Bool)

(declare-fun lt!899949 () Option!5881)

(assert (=> b!2522705 (= e!1597403 (not (isDefined!4703 lt!899949)))))

(declare-fun b!2522706 () Bool)

(declare-fun lt!899948 () Unit!43245)

(declare-fun lt!899947 () Unit!43245)

(assert (=> b!2522706 (= lt!899948 lt!899947)))

(assert (=> b!2522706 (= (++!7231 (++!7231 Nil!29475 (Cons!29475 (h!34895 tl!4068) Nil!29475)) (t!211274 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!773 (List!29575 C!15178 List!29575 List!29575) Unit!43245)

(assert (=> b!2522706 (= lt!899947 (lemmaMoveElementToOtherListKeepsConcatEq!773 Nil!29475 (h!34895 tl!4068) (t!211274 tl!4068) tl!4068))))

(declare-fun e!1597407 () Option!5881)

(assert (=> b!2522706 (= e!1597407 (findConcatSeparation!903 lt!899850 (regTwo!15532 r!27340) (++!7231 Nil!29475 (Cons!29475 (h!34895 tl!4068) Nil!29475)) (t!211274 tl!4068) tl!4068))))

(declare-fun b!2522707 () Bool)

(declare-fun e!1597405 () Bool)

(assert (=> b!2522707 (= e!1597405 (= (++!7231 (_1!17303 (get!9215 lt!899949)) (_2!17303 (get!9215 lt!899949))) tl!4068))))

(declare-fun d!718373 () Bool)

(assert (=> d!718373 e!1597403))

(declare-fun res!1065767 () Bool)

(assert (=> d!718373 (=> res!1065767 e!1597403)))

(assert (=> d!718373 (= res!1065767 e!1597405)))

(declare-fun res!1065764 () Bool)

(assert (=> d!718373 (=> (not res!1065764) (not e!1597405))))

(assert (=> d!718373 (= res!1065764 (isDefined!4703 lt!899949))))

(declare-fun e!1597406 () Option!5881)

(assert (=> d!718373 (= lt!899949 e!1597406)))

(declare-fun c!402492 () Bool)

(declare-fun e!1597404 () Bool)

(assert (=> d!718373 (= c!402492 e!1597404)))

(declare-fun res!1065765 () Bool)

(assert (=> d!718373 (=> (not res!1065765) (not e!1597404))))

(assert (=> d!718373 (= res!1065765 (matchR!3497 lt!899850 Nil!29475))))

(assert (=> d!718373 (validRegex!3136 lt!899850)))

(assert (=> d!718373 (= (findConcatSeparation!903 lt!899850 (regTwo!15532 r!27340) Nil!29475 tl!4068 tl!4068) lt!899949)))

(declare-fun b!2522708 () Bool)

(declare-fun res!1065766 () Bool)

(assert (=> b!2522708 (=> (not res!1065766) (not e!1597405))))

(assert (=> b!2522708 (= res!1065766 (matchR!3497 (regTwo!15532 r!27340) (_2!17303 (get!9215 lt!899949))))))

(declare-fun b!2522709 () Bool)

(assert (=> b!2522709 (= e!1597406 e!1597407)))

(declare-fun c!402493 () Bool)

(assert (=> b!2522709 (= c!402493 (is-Nil!29475 tl!4068))))

(declare-fun b!2522710 () Bool)

(assert (=> b!2522710 (= e!1597407 None!5880)))

(declare-fun b!2522711 () Bool)

(assert (=> b!2522711 (= e!1597404 (matchR!3497 (regTwo!15532 r!27340) tl!4068))))

(declare-fun b!2522712 () Bool)

(declare-fun res!1065763 () Bool)

(assert (=> b!2522712 (=> (not res!1065763) (not e!1597405))))

(assert (=> b!2522712 (= res!1065763 (matchR!3497 lt!899850 (_1!17303 (get!9215 lt!899949))))))

(declare-fun b!2522713 () Bool)

(assert (=> b!2522713 (= e!1597406 (Some!5880 (tuple2!29523 Nil!29475 tl!4068)))))

(assert (= (and d!718373 res!1065765) b!2522711))

(assert (= (and d!718373 c!402492) b!2522713))

(assert (= (and d!718373 (not c!402492)) b!2522709))

(assert (= (and b!2522709 c!402493) b!2522710))

(assert (= (and b!2522709 (not c!402493)) b!2522706))

(assert (= (and d!718373 res!1065764) b!2522712))

(assert (= (and b!2522712 res!1065763) b!2522708))

(assert (= (and b!2522708 res!1065766) b!2522707))

(assert (= (and d!718373 (not res!1065767)) b!2522705))

(declare-fun m!2876951 () Bool)

(assert (=> b!2522711 m!2876951))

(declare-fun m!2876953 () Bool)

(assert (=> b!2522707 m!2876953))

(declare-fun m!2876955 () Bool)

(assert (=> b!2522707 m!2876955))

(assert (=> b!2522712 m!2876953))

(declare-fun m!2876959 () Bool)

(assert (=> b!2522712 m!2876959))

(declare-fun m!2876961 () Bool)

(assert (=> b!2522706 m!2876961))

(assert (=> b!2522706 m!2876961))

(declare-fun m!2876963 () Bool)

(assert (=> b!2522706 m!2876963))

(declare-fun m!2876967 () Bool)

(assert (=> b!2522706 m!2876967))

(assert (=> b!2522706 m!2876961))

(declare-fun m!2876971 () Bool)

(assert (=> b!2522706 m!2876971))

(declare-fun m!2876973 () Bool)

(assert (=> b!2522705 m!2876973))

(assert (=> d!718373 m!2876973))

(declare-fun m!2876975 () Bool)

(assert (=> d!718373 m!2876975))

(assert (=> d!718373 m!2876907))

(assert (=> b!2522708 m!2876953))

(declare-fun m!2876977 () Bool)

(assert (=> b!2522708 m!2876977))

(assert (=> b!2522324 d!718373))

(declare-fun d!718379 () Bool)

(declare-fun isEmpty!16946 (Option!5881) Bool)

(assert (=> d!718379 (= (isDefined!4703 lt!899854) (not (isEmpty!16946 lt!899854)))))

(declare-fun bs!469025 () Bool)

(assert (= bs!469025 d!718379))

(declare-fun m!2876979 () Bool)

(assert (=> bs!469025 m!2876979))

(assert (=> b!2522324 d!718379))

(declare-fun d!718383 () Bool)

(assert (=> d!718383 (= (get!9215 lt!899854) (v!31813 lt!899854))))

(assert (=> b!2522324 d!718383))

(declare-fun d!718385 () Bool)

(assert (=> d!718385 (isDefined!4703 (findConcatSeparation!903 lt!899850 (regTwo!15532 r!27340) Nil!29475 tl!4068 tl!4068))))

(declare-fun lt!899952 () Unit!43245)

(declare-fun choose!14954 (Regex!7510 Regex!7510 List!29575) Unit!43245)

(assert (=> d!718385 (= lt!899952 (choose!14954 lt!899850 (regTwo!15532 r!27340) tl!4068))))

(assert (=> d!718385 (validRegex!3136 lt!899850)))

(assert (=> d!718385 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!185 lt!899850 (regTwo!15532 r!27340) tl!4068) lt!899952)))

(declare-fun bs!469026 () Bool)

(assert (= bs!469026 d!718385))

(assert (=> bs!469026 m!2876657))

(assert (=> bs!469026 m!2876657))

(declare-fun m!2876981 () Bool)

(assert (=> bs!469026 m!2876981))

(declare-fun m!2876983 () Bool)

(assert (=> bs!469026 m!2876983))

(assert (=> bs!469026 m!2876907))

(assert (=> b!2522324 d!718385))

(declare-fun b!2522718 () Bool)

(declare-fun e!1597410 () Bool)

(declare-fun tp!805957 () Bool)

(assert (=> b!2522718 (= e!1597410 (and tp_is_empty!12875 tp!805957))))

(assert (=> b!2522325 (= tp!805933 e!1597410)))

(assert (= (and b!2522325 (is-Cons!29475 (t!211274 tl!4068))) b!2522718))

(declare-fun b!2522730 () Bool)

(declare-fun e!1597413 () Bool)

(declare-fun tp!805969 () Bool)

(declare-fun tp!805971 () Bool)

(assert (=> b!2522730 (= e!1597413 (and tp!805969 tp!805971))))

(assert (=> b!2522323 (= tp!805936 e!1597413)))

(declare-fun b!2522731 () Bool)

(declare-fun tp!805968 () Bool)

(assert (=> b!2522731 (= e!1597413 tp!805968)))

(declare-fun b!2522732 () Bool)

(declare-fun tp!805970 () Bool)

(declare-fun tp!805972 () Bool)

(assert (=> b!2522732 (= e!1597413 (and tp!805970 tp!805972))))

(declare-fun b!2522729 () Bool)

(assert (=> b!2522729 (= e!1597413 tp_is_empty!12875)))

(assert (= (and b!2522323 (is-ElementMatch!7510 (regOne!15533 r!27340))) b!2522729))

(assert (= (and b!2522323 (is-Concat!12206 (regOne!15533 r!27340))) b!2522730))

(assert (= (and b!2522323 (is-Star!7510 (regOne!15533 r!27340))) b!2522731))

(assert (= (and b!2522323 (is-Union!7510 (regOne!15533 r!27340))) b!2522732))

(declare-fun b!2522734 () Bool)

(declare-fun e!1597414 () Bool)

(declare-fun tp!805974 () Bool)

(declare-fun tp!805976 () Bool)

(assert (=> b!2522734 (= e!1597414 (and tp!805974 tp!805976))))

(assert (=> b!2522323 (= tp!805931 e!1597414)))

(declare-fun b!2522735 () Bool)

(declare-fun tp!805973 () Bool)

(assert (=> b!2522735 (= e!1597414 tp!805973)))

(declare-fun b!2522736 () Bool)

(declare-fun tp!805975 () Bool)

(declare-fun tp!805977 () Bool)

(assert (=> b!2522736 (= e!1597414 (and tp!805975 tp!805977))))

(declare-fun b!2522733 () Bool)

(assert (=> b!2522733 (= e!1597414 tp_is_empty!12875)))

(assert (= (and b!2522323 (is-ElementMatch!7510 (regTwo!15533 r!27340))) b!2522733))

(assert (= (and b!2522323 (is-Concat!12206 (regTwo!15533 r!27340))) b!2522734))

(assert (= (and b!2522323 (is-Star!7510 (regTwo!15533 r!27340))) b!2522735))

(assert (= (and b!2522323 (is-Union!7510 (regTwo!15533 r!27340))) b!2522736))

(declare-fun b!2522738 () Bool)

(declare-fun e!1597415 () Bool)

(declare-fun tp!805979 () Bool)

(declare-fun tp!805981 () Bool)

(assert (=> b!2522738 (= e!1597415 (and tp!805979 tp!805981))))

(assert (=> b!2522318 (= tp!805934 e!1597415)))

(declare-fun b!2522739 () Bool)

(declare-fun tp!805978 () Bool)

(assert (=> b!2522739 (= e!1597415 tp!805978)))

(declare-fun b!2522740 () Bool)

(declare-fun tp!805980 () Bool)

(declare-fun tp!805982 () Bool)

(assert (=> b!2522740 (= e!1597415 (and tp!805980 tp!805982))))

(declare-fun b!2522737 () Bool)

(assert (=> b!2522737 (= e!1597415 tp_is_empty!12875)))

(assert (= (and b!2522318 (is-ElementMatch!7510 (reg!7839 r!27340))) b!2522737))

(assert (= (and b!2522318 (is-Concat!12206 (reg!7839 r!27340))) b!2522738))

(assert (= (and b!2522318 (is-Star!7510 (reg!7839 r!27340))) b!2522739))

(assert (= (and b!2522318 (is-Union!7510 (reg!7839 r!27340))) b!2522740))

(declare-fun b!2522742 () Bool)

(declare-fun e!1597416 () Bool)

(declare-fun tp!805984 () Bool)

(declare-fun tp!805986 () Bool)

(assert (=> b!2522742 (= e!1597416 (and tp!805984 tp!805986))))

(assert (=> b!2522319 (= tp!805932 e!1597416)))

(declare-fun b!2522743 () Bool)

(declare-fun tp!805983 () Bool)

(assert (=> b!2522743 (= e!1597416 tp!805983)))

(declare-fun b!2522744 () Bool)

(declare-fun tp!805985 () Bool)

(declare-fun tp!805987 () Bool)

(assert (=> b!2522744 (= e!1597416 (and tp!805985 tp!805987))))

(declare-fun b!2522741 () Bool)

(assert (=> b!2522741 (= e!1597416 tp_is_empty!12875)))

(assert (= (and b!2522319 (is-ElementMatch!7510 (regOne!15532 r!27340))) b!2522741))

(assert (= (and b!2522319 (is-Concat!12206 (regOne!15532 r!27340))) b!2522742))

(assert (= (and b!2522319 (is-Star!7510 (regOne!15532 r!27340))) b!2522743))

(assert (= (and b!2522319 (is-Union!7510 (regOne!15532 r!27340))) b!2522744))

(declare-fun b!2522746 () Bool)

(declare-fun e!1597417 () Bool)

(declare-fun tp!805989 () Bool)

(declare-fun tp!805991 () Bool)

(assert (=> b!2522746 (= e!1597417 (and tp!805989 tp!805991))))

(assert (=> b!2522319 (= tp!805935 e!1597417)))

(declare-fun b!2522747 () Bool)

(declare-fun tp!805988 () Bool)

(assert (=> b!2522747 (= e!1597417 tp!805988)))

(declare-fun b!2522748 () Bool)

(declare-fun tp!805990 () Bool)

(declare-fun tp!805992 () Bool)

(assert (=> b!2522748 (= e!1597417 (and tp!805990 tp!805992))))

(declare-fun b!2522745 () Bool)

(assert (=> b!2522745 (= e!1597417 tp_is_empty!12875)))

(assert (= (and b!2522319 (is-ElementMatch!7510 (regTwo!15532 r!27340))) b!2522745))

(assert (= (and b!2522319 (is-Concat!12206 (regTwo!15532 r!27340))) b!2522746))

(assert (= (and b!2522319 (is-Star!7510 (regTwo!15532 r!27340))) b!2522747))

(assert (= (and b!2522319 (is-Union!7510 (regTwo!15532 r!27340))) b!2522748))

(push 1)

(assert (not b!2522748))

(assert (not b!2522743))

(assert (not d!718335))

(assert (not b!2522659))

(assert (not b!2522580))

(assert (not b!2522606))

(assert (not d!718353))

(assert (not bm!157342))

(assert (not d!718343))

(assert (not b!2522637))

(assert (not b!2522552))

(assert (not b!2522535))

(assert (not b!2522744))

(assert (not b!2522600))

(assert (not b!2522718))

(assert (not d!718385))

(assert (not bm!157333))

(assert (not b!2522551))

(assert (not b!2522576))

(assert (not d!718337))

(assert (not b!2522612))

(assert (not b!2522579))

(assert (not b!2522411))

(assert (not b!2522574))

(assert (not b!2522608))

(assert tp_is_empty!12875)

(assert (not d!718327))

(assert (not b!2522577))

(assert (not b!2522730))

(assert (not d!718359))

(assert (not b!2522734))

(assert (not bm!157318))

(assert (not d!718351))

(assert (not b!2522706))

(assert (not b!2522562))

(assert (not b!2522731))

(assert (not b!2522546))

(assert (not d!718365))

(assert (not b!2522632))

(assert (not b!2522640))

(assert (not b!2522499))

(assert (not b!2522739))

(assert (not b!2522738))

(assert (not b!2522493))

(assert (not b!2522622))

(assert (not d!718347))

(assert (not b!2522646))

(assert (not d!718363))

(assert (not b!2522746))

(assert (not b!2522583))

(assert (not b!2522735))

(assert (not b!2522642))

(assert (not bm!157329))

(assert (not b!2522603))

(assert (not b!2522548))

(assert (not b!2522658))

(assert (not bm!157331))

(assert (not b!2522707))

(assert (not b!2522490))

(assert (not bm!157340))

(assert (not bm!157336))

(assert (not b!2522705))

(assert (not b!2522549))

(assert (not d!718345))

(assert (not b!2522742))

(assert (not bm!157311))

(assert (not b!2522506))

(assert (not d!718349))

(assert (not b!2522740))

(assert (not bm!157334))

(assert (not b!2522643))

(assert (not d!718373))

(assert (not b!2522495))

(assert (not bm!157313))

(assert (not b!2522609))

(assert (not b!2522711))

(assert (not b!2522639))

(assert (not b!2522708))

(assert (not bm!157332))

(assert (not b!2522605))

(assert (not d!718379))

(assert (not b!2522732))

(assert (not bm!157338))

(assert (not b!2522599))

(assert (not bm!157327))

(assert (not b!2522712))

(assert (not b!2522747))

(assert (not b!2522555))

(assert (not b!2522496))

(assert (not d!718361))

(assert (not d!718369))

(assert (not b!2522736))

(assert (not d!718367))

(assert (not b!2522492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

