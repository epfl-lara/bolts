; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236734 () Bool)

(assert start!236734)

(declare-fun b!2416367 () Bool)

(declare-fun e!1537710 () Bool)

(declare-fun tp_is_empty!11617 () Bool)

(assert (=> b!2416367 (= e!1537710 tp_is_empty!11617)))

(declare-fun res!1026201 () Bool)

(declare-fun e!1537717 () Bool)

(assert (=> start!236734 (=> (not res!1026201) (not e!1537717))))

(declare-datatypes ((C!14362 0))(
  ( (C!14363 (val!8423 Int)) )
))
(declare-datatypes ((Regex!7102 0))(
  ( (ElementMatch!7102 (c!385047 C!14362)) (Concat!11738 (regOne!14716 Regex!7102) (regTwo!14716 Regex!7102)) (EmptyExpr!7102) (Star!7102 (reg!7431 Regex!7102)) (EmptyLang!7102) (Union!7102 (regOne!14717 Regex!7102) (regTwo!14717 Regex!7102)) )
))
(declare-datatypes ((List!28442 0))(
  ( (Nil!28344) (Cons!28344 (h!33745 Regex!7102) (t!208419 List!28442)) )
))
(declare-fun l!9164 () List!28442)

(declare-fun lambda!91006 () Int)

(declare-fun forall!5736 (List!28442 Int) Bool)

(assert (=> start!236734 (= res!1026201 (forall!5736 l!9164 lambda!91006))))

(assert (=> start!236734 e!1537717))

(declare-fun e!1537713 () Bool)

(assert (=> start!236734 e!1537713))

(assert (=> start!236734 e!1537710))

(declare-fun e!1537715 () Bool)

(assert (=> start!236734 e!1537715))

(declare-fun b!2416368 () Bool)

(declare-fun tp!768443 () Bool)

(declare-fun tp!768438 () Bool)

(assert (=> b!2416368 (= e!1537710 (and tp!768443 tp!768438))))

(declare-fun b!2416369 () Bool)

(declare-fun e!1537709 () Bool)

(declare-fun e!1537716 () Bool)

(assert (=> b!2416369 (= e!1537709 e!1537716)))

(declare-fun res!1026206 () Bool)

(assert (=> b!2416369 (=> res!1026206 e!1537716)))

(declare-fun lt!874337 () Regex!7102)

(declare-datatypes ((List!28443 0))(
  ( (Nil!28345) (Cons!28345 (h!33746 C!14362) (t!208420 List!28443)) )
))
(declare-fun s!9460 () List!28443)

(declare-fun matchR!3219 (Regex!7102 List!28443) Bool)

(assert (=> b!2416369 (= res!1026206 (matchR!3219 lt!874337 s!9460))))

(declare-fun head!5416 (List!28442) Regex!7102)

(assert (=> b!2416369 (= lt!874337 (head!5416 l!9164))))

(declare-fun b!2416370 () Bool)

(declare-fun tp!768441 () Bool)

(assert (=> b!2416370 (= e!1537715 (and tp_is_empty!11617 tp!768441))))

(declare-fun b!2416371 () Bool)

(declare-fun tp!768439 () Bool)

(declare-fun tp!768436 () Bool)

(assert (=> b!2416371 (= e!1537710 (and tp!768439 tp!768436))))

(declare-fun b!2416372 () Bool)

(declare-fun e!1537712 () Bool)

(assert (=> b!2416372 (= e!1537712 false)))

(declare-fun b!2416373 () Bool)

(declare-datatypes ((Unit!41483 0))(
  ( (Unit!41484) )
))
(declare-fun e!1537711 () Unit!41483)

(declare-fun Unit!41485 () Unit!41483)

(assert (=> b!2416373 (= e!1537711 Unit!41485)))

(declare-datatypes ((tuple2!27984 0))(
  ( (tuple2!27985 (_1!16533 List!28443) (_2!16533 List!28443)) )
))
(declare-fun lt!874338 () tuple2!27984)

(declare-datatypes ((Option!5603 0))(
  ( (None!5602) (Some!5602 (v!31010 tuple2!27984)) )
))
(declare-fun lt!874336 () Option!5603)

(declare-fun get!8706 (Option!5603) tuple2!27984)

(assert (=> b!2416373 (= lt!874338 (get!8706 lt!874336))))

(declare-fun lt!874331 () Unit!41483)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!51 (Regex!7102 Regex!7102 List!28443 List!28443 List!28443) Unit!41483)

(assert (=> b!2416373 (= lt!874331 (lemmaFindSeparationIsDefinedThenConcatMatches!51 lt!874337 EmptyExpr!7102 (_1!16533 lt!874338) (_2!16533 lt!874338) s!9460))))

(declare-fun res!1026208 () Bool)

(declare-fun ++!7023 (List!28443 List!28443) List!28443)

(assert (=> b!2416373 (= res!1026208 (matchR!3219 (Concat!11738 lt!874337 EmptyExpr!7102) (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338))))))

(assert (=> b!2416373 (=> (not res!1026208) (not e!1537712))))

(assert (=> b!2416373 e!1537712))

(declare-fun b!2416374 () Bool)

(declare-fun e!1537714 () Bool)

(assert (=> b!2416374 (= e!1537714 e!1537709)))

(declare-fun res!1026204 () Bool)

(assert (=> b!2416374 (=> res!1026204 e!1537709)))

(declare-fun lt!874334 () List!28442)

(declare-fun isEmpty!16352 (List!28442) Bool)

(assert (=> b!2416374 (= res!1026204 (not (isEmpty!16352 lt!874334)))))

(declare-fun tail!3688 (List!28442) List!28442)

(assert (=> b!2416374 (= lt!874334 (tail!3688 l!9164))))

(declare-fun b!2416375 () Bool)

(assert (=> b!2416375 (= e!1537717 (not e!1537714))))

(declare-fun res!1026207 () Bool)

(assert (=> b!2416375 (=> res!1026207 e!1537714)))

(declare-fun r!13927 () Regex!7102)

(assert (=> b!2416375 (= res!1026207 (or (is-Concat!11738 r!13927) (is-EmptyExpr!7102 r!13927)))))

(declare-fun matchRSpec!951 (Regex!7102 List!28443) Bool)

(assert (=> b!2416375 (= (matchR!3219 r!13927 s!9460) (matchRSpec!951 r!13927 s!9460))))

(declare-fun lt!874335 () Unit!41483)

(declare-fun mainMatchTheorem!951 (Regex!7102 List!28443) Unit!41483)

(assert (=> b!2416375 (= lt!874335 (mainMatchTheorem!951 r!13927 s!9460))))

(declare-fun b!2416376 () Bool)

(declare-fun validRegex!2822 (Regex!7102) Bool)

(assert (=> b!2416376 (= e!1537716 (validRegex!2822 lt!874337))))

(declare-fun lt!874333 () Bool)

(assert (=> b!2416376 (not lt!874333)))

(declare-fun lt!874332 () Unit!41483)

(assert (=> b!2416376 (= lt!874332 e!1537711)))

(declare-fun c!385046 () Bool)

(assert (=> b!2416376 (= c!385046 lt!874333)))

(declare-fun isDefined!4429 (Option!5603) Bool)

(assert (=> b!2416376 (= lt!874333 (isDefined!4429 lt!874336))))

(declare-fun findConcatSeparation!711 (Regex!7102 Regex!7102 List!28443 List!28443 List!28443) Option!5603)

(assert (=> b!2416376 (= lt!874336 (findConcatSeparation!711 lt!874337 EmptyExpr!7102 Nil!28345 s!9460 s!9460))))

(declare-fun b!2416377 () Bool)

(declare-fun res!1026203 () Bool)

(assert (=> b!2416377 (=> res!1026203 e!1537714)))

(assert (=> b!2416377 (= res!1026203 (isEmpty!16352 l!9164))))

(declare-fun b!2416378 () Bool)

(declare-fun tp!768440 () Bool)

(declare-fun tp!768442 () Bool)

(assert (=> b!2416378 (= e!1537713 (and tp!768440 tp!768442))))

(declare-fun b!2416379 () Bool)

(declare-fun res!1026202 () Bool)

(assert (=> b!2416379 (=> res!1026202 e!1537709)))

(declare-fun generalisedConcat!203 (List!28442) Regex!7102)

(assert (=> b!2416379 (= res!1026202 (not (= (generalisedConcat!203 lt!874334) EmptyExpr!7102)))))

(declare-fun b!2416380 () Bool)

(declare-fun res!1026205 () Bool)

(assert (=> b!2416380 (=> (not res!1026205) (not e!1537717))))

(assert (=> b!2416380 (= res!1026205 (= r!13927 (generalisedConcat!203 l!9164)))))

(declare-fun b!2416381 () Bool)

(declare-fun Unit!41486 () Unit!41483)

(assert (=> b!2416381 (= e!1537711 Unit!41486)))

(declare-fun b!2416382 () Bool)

(declare-fun tp!768437 () Bool)

(assert (=> b!2416382 (= e!1537710 tp!768437)))

(assert (= (and start!236734 res!1026201) b!2416380))

(assert (= (and b!2416380 res!1026205) b!2416375))

(assert (= (and b!2416375 (not res!1026207)) b!2416377))

(assert (= (and b!2416377 (not res!1026203)) b!2416374))

(assert (= (and b!2416374 (not res!1026204)) b!2416379))

(assert (= (and b!2416379 (not res!1026202)) b!2416369))

(assert (= (and b!2416369 (not res!1026206)) b!2416376))

(assert (= (and b!2416376 c!385046) b!2416373))

(assert (= (and b!2416376 (not c!385046)) b!2416381))

(assert (= (and b!2416373 res!1026208) b!2416372))

(assert (= (and start!236734 (is-Cons!28344 l!9164)) b!2416378))

(assert (= (and start!236734 (is-ElementMatch!7102 r!13927)) b!2416367))

(assert (= (and start!236734 (is-Concat!11738 r!13927)) b!2416368))

(assert (= (and start!236734 (is-Star!7102 r!13927)) b!2416382))

(assert (= (and start!236734 (is-Union!7102 r!13927)) b!2416371))

(assert (= (and start!236734 (is-Cons!28345 s!9460)) b!2416370))

(declare-fun m!2804971 () Bool)

(assert (=> b!2416369 m!2804971))

(declare-fun m!2804973 () Bool)

(assert (=> b!2416369 m!2804973))

(declare-fun m!2804975 () Bool)

(assert (=> b!2416377 m!2804975))

(declare-fun m!2804977 () Bool)

(assert (=> b!2416374 m!2804977))

(declare-fun m!2804979 () Bool)

(assert (=> b!2416374 m!2804979))

(declare-fun m!2804981 () Bool)

(assert (=> start!236734 m!2804981))

(declare-fun m!2804983 () Bool)

(assert (=> b!2416379 m!2804983))

(declare-fun m!2804985 () Bool)

(assert (=> b!2416380 m!2804985))

(declare-fun m!2804987 () Bool)

(assert (=> b!2416376 m!2804987))

(declare-fun m!2804989 () Bool)

(assert (=> b!2416376 m!2804989))

(declare-fun m!2804991 () Bool)

(assert (=> b!2416376 m!2804991))

(declare-fun m!2804993 () Bool)

(assert (=> b!2416373 m!2804993))

(declare-fun m!2804995 () Bool)

(assert (=> b!2416373 m!2804995))

(declare-fun m!2804997 () Bool)

(assert (=> b!2416373 m!2804997))

(assert (=> b!2416373 m!2804997))

(declare-fun m!2804999 () Bool)

(assert (=> b!2416373 m!2804999))

(declare-fun m!2805001 () Bool)

(assert (=> b!2416375 m!2805001))

(declare-fun m!2805003 () Bool)

(assert (=> b!2416375 m!2805003))

(declare-fun m!2805005 () Bool)

(assert (=> b!2416375 m!2805005))

(push 1)

(assert (not b!2416371))

(assert tp_is_empty!11617)

(assert (not b!2416380))

(assert (not start!236734))

(assert (not b!2416370))

(assert (not b!2416377))

(assert (not b!2416376))

(assert (not b!2416378))

(assert (not b!2416369))

(assert (not b!2416375))

(assert (not b!2416373))

(assert (not b!2416379))

(assert (not b!2416368))

(assert (not b!2416374))

(assert (not b!2416382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2416449 () Bool)

(declare-fun e!1537760 () Bool)

(declare-fun e!1537764 () Bool)

(assert (=> b!2416449 (= e!1537760 e!1537764)))

(declare-fun res!1026243 () Bool)

(assert (=> b!2416449 (=> (not res!1026243) (not e!1537764))))

(declare-fun call!147523 () Bool)

(assert (=> b!2416449 (= res!1026243 call!147523)))

(declare-fun b!2416450 () Bool)

(declare-fun e!1537759 () Bool)

(declare-fun e!1537763 () Bool)

(assert (=> b!2416450 (= e!1537759 e!1537763)))

(declare-fun res!1026245 () Bool)

(declare-fun nullable!2137 (Regex!7102) Bool)

(assert (=> b!2416450 (= res!1026245 (not (nullable!2137 (reg!7431 lt!874337))))))

(assert (=> b!2416450 (=> (not res!1026245) (not e!1537763))))

(declare-fun b!2416451 () Bool)

(declare-fun e!1537762 () Bool)

(assert (=> b!2416451 (= e!1537762 e!1537759)))

(declare-fun c!385057 () Bool)

(assert (=> b!2416451 (= c!385057 (is-Star!7102 lt!874337))))

(declare-fun bm!147516 () Bool)

(declare-fun call!147522 () Bool)

(declare-fun c!385056 () Bool)

(assert (=> bm!147516 (= call!147522 (validRegex!2822 (ite c!385056 (regOne!14717 lt!874337) (regTwo!14716 lt!874337))))))

(declare-fun bm!147517 () Bool)

(declare-fun call!147521 () Bool)

(assert (=> bm!147517 (= call!147523 call!147521)))

(declare-fun bm!147518 () Bool)

(assert (=> bm!147518 (= call!147521 (validRegex!2822 (ite c!385057 (reg!7431 lt!874337) (ite c!385056 (regTwo!14717 lt!874337) (regOne!14716 lt!874337)))))))

(declare-fun b!2416452 () Bool)

(declare-fun res!1026244 () Bool)

(declare-fun e!1537761 () Bool)

(assert (=> b!2416452 (=> (not res!1026244) (not e!1537761))))

(assert (=> b!2416452 (= res!1026244 call!147522)))

(declare-fun e!1537765 () Bool)

(assert (=> b!2416452 (= e!1537765 e!1537761)))

(declare-fun b!2416453 () Bool)

(declare-fun res!1026246 () Bool)

(assert (=> b!2416453 (=> res!1026246 e!1537760)))

(assert (=> b!2416453 (= res!1026246 (not (is-Concat!11738 lt!874337)))))

(assert (=> b!2416453 (= e!1537765 e!1537760)))

(declare-fun b!2416454 () Bool)

(assert (=> b!2416454 (= e!1537763 call!147521)))

(declare-fun d!701240 () Bool)

(declare-fun res!1026247 () Bool)

(assert (=> d!701240 (=> res!1026247 e!1537762)))

(assert (=> d!701240 (= res!1026247 (is-ElementMatch!7102 lt!874337))))

(assert (=> d!701240 (= (validRegex!2822 lt!874337) e!1537762)))

(declare-fun b!2416455 () Bool)

(assert (=> b!2416455 (= e!1537764 call!147522)))

(declare-fun b!2416456 () Bool)

(assert (=> b!2416456 (= e!1537759 e!1537765)))

(assert (=> b!2416456 (= c!385056 (is-Union!7102 lt!874337))))

(declare-fun b!2416457 () Bool)

(assert (=> b!2416457 (= e!1537761 call!147523)))

(assert (= (and d!701240 (not res!1026247)) b!2416451))

(assert (= (and b!2416451 c!385057) b!2416450))

(assert (= (and b!2416451 (not c!385057)) b!2416456))

(assert (= (and b!2416450 res!1026245) b!2416454))

(assert (= (and b!2416456 c!385056) b!2416452))

(assert (= (and b!2416456 (not c!385056)) b!2416453))

(assert (= (and b!2416452 res!1026244) b!2416457))

(assert (= (and b!2416453 (not res!1026246)) b!2416449))

(assert (= (and b!2416449 res!1026243) b!2416455))

(assert (= (or b!2416452 b!2416455) bm!147516))

(assert (= (or b!2416457 b!2416449) bm!147517))

(assert (= (or b!2416454 bm!147517) bm!147518))

(declare-fun m!2805043 () Bool)

(assert (=> b!2416450 m!2805043))

(declare-fun m!2805045 () Bool)

(assert (=> bm!147516 m!2805045))

(declare-fun m!2805047 () Bool)

(assert (=> bm!147518 m!2805047))

(assert (=> b!2416376 d!701240))

(declare-fun d!701246 () Bool)

(declare-fun isEmpty!16354 (Option!5603) Bool)

(assert (=> d!701246 (= (isDefined!4429 lt!874336) (not (isEmpty!16354 lt!874336)))))

(declare-fun bs!463585 () Bool)

(assert (= bs!463585 d!701246))

(declare-fun m!2805049 () Bool)

(assert (=> bs!463585 m!2805049))

(assert (=> b!2416376 d!701246))

(declare-fun b!2416477 () Bool)

(declare-fun e!1537779 () Bool)

(declare-fun lt!874373 () Option!5603)

(assert (=> b!2416477 (= e!1537779 (= (++!7023 (_1!16533 (get!8706 lt!874373)) (_2!16533 (get!8706 lt!874373))) s!9460))))

(declare-fun b!2416478 () Bool)

(declare-fun res!1026260 () Bool)

(assert (=> b!2416478 (=> (not res!1026260) (not e!1537779))))

(assert (=> b!2416478 (= res!1026260 (matchR!3219 EmptyExpr!7102 (_2!16533 (get!8706 lt!874373))))))

(declare-fun b!2416479 () Bool)

(declare-fun lt!874374 () Unit!41483)

(declare-fun lt!874372 () Unit!41483)

(assert (=> b!2416479 (= lt!874374 lt!874372)))

(assert (=> b!2416479 (= (++!7023 (++!7023 Nil!28345 (Cons!28345 (h!33746 s!9460) Nil!28345)) (t!208420 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!650 (List!28443 C!14362 List!28443 List!28443) Unit!41483)

(assert (=> b!2416479 (= lt!874372 (lemmaMoveElementToOtherListKeepsConcatEq!650 Nil!28345 (h!33746 s!9460) (t!208420 s!9460) s!9460))))

(declare-fun e!1537780 () Option!5603)

(assert (=> b!2416479 (= e!1537780 (findConcatSeparation!711 lt!874337 EmptyExpr!7102 (++!7023 Nil!28345 (Cons!28345 (h!33746 s!9460) Nil!28345)) (t!208420 s!9460) s!9460))))

(declare-fun b!2416480 () Bool)

(declare-fun e!1537777 () Bool)

(assert (=> b!2416480 (= e!1537777 (not (isDefined!4429 lt!874373)))))

(declare-fun b!2416481 () Bool)

(declare-fun e!1537776 () Option!5603)

(assert (=> b!2416481 (= e!1537776 e!1537780)))

(declare-fun c!385063 () Bool)

(assert (=> b!2416481 (= c!385063 (is-Nil!28345 s!9460))))

(declare-fun b!2416482 () Bool)

(assert (=> b!2416482 (= e!1537780 None!5602)))

(declare-fun b!2416483 () Bool)

(declare-fun res!1026259 () Bool)

(assert (=> b!2416483 (=> (not res!1026259) (not e!1537779))))

(assert (=> b!2416483 (= res!1026259 (matchR!3219 lt!874337 (_1!16533 (get!8706 lt!874373))))))

(declare-fun b!2416484 () Bool)

(assert (=> b!2416484 (= e!1537776 (Some!5602 (tuple2!27985 Nil!28345 s!9460)))))

(declare-fun d!701248 () Bool)

(assert (=> d!701248 e!1537777))

(declare-fun res!1026258 () Bool)

(assert (=> d!701248 (=> res!1026258 e!1537777)))

(assert (=> d!701248 (= res!1026258 e!1537779)))

(declare-fun res!1026261 () Bool)

(assert (=> d!701248 (=> (not res!1026261) (not e!1537779))))

(assert (=> d!701248 (= res!1026261 (isDefined!4429 lt!874373))))

(assert (=> d!701248 (= lt!874373 e!1537776)))

(declare-fun c!385062 () Bool)

(declare-fun e!1537778 () Bool)

(assert (=> d!701248 (= c!385062 e!1537778)))

(declare-fun res!1026262 () Bool)

(assert (=> d!701248 (=> (not res!1026262) (not e!1537778))))

(assert (=> d!701248 (= res!1026262 (matchR!3219 lt!874337 Nil!28345))))

(assert (=> d!701248 (validRegex!2822 lt!874337)))

(assert (=> d!701248 (= (findConcatSeparation!711 lt!874337 EmptyExpr!7102 Nil!28345 s!9460 s!9460) lt!874373)))

(declare-fun b!2416476 () Bool)

(assert (=> b!2416476 (= e!1537778 (matchR!3219 EmptyExpr!7102 s!9460))))

(assert (= (and d!701248 res!1026262) b!2416476))

(assert (= (and d!701248 c!385062) b!2416484))

(assert (= (and d!701248 (not c!385062)) b!2416481))

(assert (= (and b!2416481 c!385063) b!2416482))

(assert (= (and b!2416481 (not c!385063)) b!2416479))

(assert (= (and d!701248 res!1026261) b!2416483))

(assert (= (and b!2416483 res!1026259) b!2416478))

(assert (= (and b!2416478 res!1026260) b!2416477))

(assert (= (and d!701248 (not res!1026258)) b!2416480))

(declare-fun m!2805053 () Bool)

(assert (=> b!2416478 m!2805053))

(declare-fun m!2805055 () Bool)

(assert (=> b!2416478 m!2805055))

(declare-fun m!2805057 () Bool)

(assert (=> b!2416476 m!2805057))

(declare-fun m!2805059 () Bool)

(assert (=> b!2416479 m!2805059))

(assert (=> b!2416479 m!2805059))

(declare-fun m!2805061 () Bool)

(assert (=> b!2416479 m!2805061))

(declare-fun m!2805063 () Bool)

(assert (=> b!2416479 m!2805063))

(assert (=> b!2416479 m!2805059))

(declare-fun m!2805065 () Bool)

(assert (=> b!2416479 m!2805065))

(assert (=> b!2416477 m!2805053))

(declare-fun m!2805067 () Bool)

(assert (=> b!2416477 m!2805067))

(assert (=> b!2416483 m!2805053))

(declare-fun m!2805069 () Bool)

(assert (=> b!2416483 m!2805069))

(declare-fun m!2805071 () Bool)

(assert (=> b!2416480 m!2805071))

(assert (=> d!701248 m!2805071))

(declare-fun m!2805073 () Bool)

(assert (=> d!701248 m!2805073))

(assert (=> d!701248 m!2804987))

(assert (=> b!2416376 d!701248))

(declare-fun b!2416541 () Bool)

(declare-fun e!1537812 () Bool)

(declare-fun head!5418 (List!28443) C!14362)

(assert (=> b!2416541 (= e!1537812 (= (head!5418 s!9460) (c!385047 r!13927)))))

(declare-fun b!2416542 () Bool)

(declare-fun res!1026296 () Bool)

(declare-fun e!1537815 () Bool)

(assert (=> b!2416542 (=> res!1026296 e!1537815)))

(declare-fun isEmpty!16355 (List!28443) Bool)

(declare-fun tail!3690 (List!28443) List!28443)

(assert (=> b!2416542 (= res!1026296 (not (isEmpty!16355 (tail!3690 s!9460))))))

(declare-fun b!2416543 () Bool)

(declare-fun res!1026301 () Bool)

(assert (=> b!2416543 (=> (not res!1026301) (not e!1537812))))

(declare-fun call!147528 () Bool)

(assert (=> b!2416543 (= res!1026301 (not call!147528))))

(declare-fun b!2416544 () Bool)

(declare-fun e!1537813 () Bool)

(declare-fun e!1537809 () Bool)

(assert (=> b!2416544 (= e!1537813 e!1537809)))

(declare-fun c!385077 () Bool)

(assert (=> b!2416544 (= c!385077 (is-EmptyLang!7102 r!13927))))

(declare-fun b!2416545 () Bool)

(declare-fun e!1537814 () Bool)

(declare-fun e!1537810 () Bool)

(assert (=> b!2416545 (= e!1537814 e!1537810)))

(declare-fun res!1026297 () Bool)

(assert (=> b!2416545 (=> (not res!1026297) (not e!1537810))))

(declare-fun lt!874379 () Bool)

(assert (=> b!2416545 (= res!1026297 (not lt!874379))))

(declare-fun b!2416546 () Bool)

(declare-fun res!1026302 () Bool)

(assert (=> b!2416546 (=> res!1026302 e!1537814)))

(assert (=> b!2416546 (= res!1026302 (not (is-ElementMatch!7102 r!13927)))))

(assert (=> b!2416546 (= e!1537809 e!1537814)))

(declare-fun b!2416547 () Bool)

(declare-fun e!1537811 () Bool)

(assert (=> b!2416547 (= e!1537811 (nullable!2137 r!13927))))

(declare-fun b!2416548 () Bool)

(assert (=> b!2416548 (= e!1537809 (not lt!874379))))

(declare-fun b!2416549 () Bool)

(assert (=> b!2416549 (= e!1537815 (not (= (head!5418 s!9460) (c!385047 r!13927))))))

(declare-fun b!2416550 () Bool)

(assert (=> b!2416550 (= e!1537813 (= lt!874379 call!147528))))

(declare-fun bm!147523 () Bool)

(assert (=> bm!147523 (= call!147528 (isEmpty!16355 s!9460))))

(declare-fun b!2416551 () Bool)

(assert (=> b!2416551 (= e!1537810 e!1537815)))

(declare-fun res!1026300 () Bool)

(assert (=> b!2416551 (=> res!1026300 e!1537815)))

(assert (=> b!2416551 (= res!1026300 call!147528)))

(declare-fun b!2416552 () Bool)

(declare-fun res!1026295 () Bool)

(assert (=> b!2416552 (=> (not res!1026295) (not e!1537812))))

(assert (=> b!2416552 (= res!1026295 (isEmpty!16355 (tail!3690 s!9460)))))

(declare-fun b!2416553 () Bool)

(declare-fun derivativeStep!1794 (Regex!7102 C!14362) Regex!7102)

(assert (=> b!2416553 (= e!1537811 (matchR!3219 (derivativeStep!1794 r!13927 (head!5418 s!9460)) (tail!3690 s!9460)))))

(declare-fun d!701252 () Bool)

(assert (=> d!701252 e!1537813))

(declare-fun c!385076 () Bool)

(assert (=> d!701252 (= c!385076 (is-EmptyExpr!7102 r!13927))))

(assert (=> d!701252 (= lt!874379 e!1537811)))

(declare-fun c!385078 () Bool)

(assert (=> d!701252 (= c!385078 (isEmpty!16355 s!9460))))

(assert (=> d!701252 (validRegex!2822 r!13927)))

(assert (=> d!701252 (= (matchR!3219 r!13927 s!9460) lt!874379)))

(declare-fun b!2416554 () Bool)

(declare-fun res!1026298 () Bool)

(assert (=> b!2416554 (=> res!1026298 e!1537814)))

(assert (=> b!2416554 (= res!1026298 e!1537812)))

(declare-fun res!1026299 () Bool)

(assert (=> b!2416554 (=> (not res!1026299) (not e!1537812))))

(assert (=> b!2416554 (= res!1026299 lt!874379)))

(assert (= (and d!701252 c!385078) b!2416547))

(assert (= (and d!701252 (not c!385078)) b!2416553))

(assert (= (and d!701252 c!385076) b!2416550))

(assert (= (and d!701252 (not c!385076)) b!2416544))

(assert (= (and b!2416544 c!385077) b!2416548))

(assert (= (and b!2416544 (not c!385077)) b!2416546))

(assert (= (and b!2416546 (not res!1026302)) b!2416554))

(assert (= (and b!2416554 res!1026299) b!2416543))

(assert (= (and b!2416543 res!1026301) b!2416552))

(assert (= (and b!2416552 res!1026295) b!2416541))

(assert (= (and b!2416554 (not res!1026298)) b!2416545))

(assert (= (and b!2416545 res!1026297) b!2416551))

(assert (= (and b!2416551 (not res!1026300)) b!2416542))

(assert (= (and b!2416542 (not res!1026296)) b!2416549))

(assert (= (or b!2416550 b!2416543 b!2416551) bm!147523))

(declare-fun m!2805075 () Bool)

(assert (=> d!701252 m!2805075))

(declare-fun m!2805077 () Bool)

(assert (=> d!701252 m!2805077))

(declare-fun m!2805079 () Bool)

(assert (=> b!2416553 m!2805079))

(assert (=> b!2416553 m!2805079))

(declare-fun m!2805081 () Bool)

(assert (=> b!2416553 m!2805081))

(declare-fun m!2805083 () Bool)

(assert (=> b!2416553 m!2805083))

(assert (=> b!2416553 m!2805081))

(assert (=> b!2416553 m!2805083))

(declare-fun m!2805085 () Bool)

(assert (=> b!2416553 m!2805085))

(assert (=> b!2416542 m!2805083))

(assert (=> b!2416542 m!2805083))

(declare-fun m!2805087 () Bool)

(assert (=> b!2416542 m!2805087))

(assert (=> bm!147523 m!2805075))

(assert (=> b!2416549 m!2805079))

(assert (=> b!2416552 m!2805083))

(assert (=> b!2416552 m!2805083))

(assert (=> b!2416552 m!2805087))

(declare-fun m!2805089 () Bool)

(assert (=> b!2416547 m!2805089))

(assert (=> b!2416541 m!2805079))

(assert (=> b!2416375 d!701252))

(declare-fun b!2416616 () Bool)

(assert (=> b!2416616 true))

(assert (=> b!2416616 true))

(declare-fun bs!463587 () Bool)

(declare-fun b!2416609 () Bool)

(assert (= bs!463587 (and b!2416609 b!2416616)))

(declare-fun lambda!91015 () Int)

(declare-fun lambda!91014 () Int)

(assert (=> bs!463587 (not (= lambda!91015 lambda!91014))))

(assert (=> b!2416609 true))

(assert (=> b!2416609 true))

(declare-fun e!1537850 () Bool)

(declare-fun call!147534 () Bool)

(assert (=> b!2416609 (= e!1537850 call!147534)))

(declare-fun b!2416610 () Bool)

(declare-fun res!1026332 () Bool)

(declare-fun e!1537846 () Bool)

(assert (=> b!2416610 (=> res!1026332 e!1537846)))

(declare-fun call!147535 () Bool)

(assert (=> b!2416610 (= res!1026332 call!147535)))

(assert (=> b!2416610 (= e!1537850 e!1537846)))

(declare-fun b!2416611 () Bool)

(declare-fun e!1537848 () Bool)

(declare-fun e!1537847 () Bool)

(assert (=> b!2416611 (= e!1537848 e!1537847)))

(declare-fun res!1026331 () Bool)

(assert (=> b!2416611 (= res!1026331 (matchRSpec!951 (regOne!14717 r!13927) s!9460))))

(assert (=> b!2416611 (=> res!1026331 e!1537847)))

(declare-fun b!2416612 () Bool)

(assert (=> b!2416612 (= e!1537848 e!1537850)))

(declare-fun c!385094 () Bool)

(assert (=> b!2416612 (= c!385094 (is-Star!7102 r!13927))))

(declare-fun b!2416613 () Bool)

(declare-fun e!1537851 () Bool)

(assert (=> b!2416613 (= e!1537851 (= s!9460 (Cons!28345 (c!385047 r!13927) Nil!28345)))))

(declare-fun b!2416614 () Bool)

(assert (=> b!2416614 (= e!1537847 (matchRSpec!951 (regTwo!14717 r!13927) s!9460))))

(declare-fun b!2416615 () Bool)

(declare-fun e!1537845 () Bool)

(assert (=> b!2416615 (= e!1537845 call!147535)))

(assert (=> b!2416616 (= e!1537846 call!147534)))

(declare-fun b!2416617 () Bool)

(declare-fun c!385092 () Bool)

(assert (=> b!2416617 (= c!385092 (is-ElementMatch!7102 r!13927))))

(declare-fun e!1537849 () Bool)

(assert (=> b!2416617 (= e!1537849 e!1537851)))

(declare-fun d!701254 () Bool)

(declare-fun c!385095 () Bool)

(assert (=> d!701254 (= c!385095 (is-EmptyExpr!7102 r!13927))))

(assert (=> d!701254 (= (matchRSpec!951 r!13927 s!9460) e!1537845)))

(declare-fun b!2416618 () Bool)

(declare-fun c!385093 () Bool)

(assert (=> b!2416618 (= c!385093 (is-Union!7102 r!13927))))

(assert (=> b!2416618 (= e!1537851 e!1537848)))

(declare-fun bm!147529 () Bool)

(assert (=> bm!147529 (= call!147535 (isEmpty!16355 s!9460))))

(declare-fun b!2416619 () Bool)

(assert (=> b!2416619 (= e!1537845 e!1537849)))

(declare-fun res!1026333 () Bool)

(assert (=> b!2416619 (= res!1026333 (not (is-EmptyLang!7102 r!13927)))))

(assert (=> b!2416619 (=> (not res!1026333) (not e!1537849))))

(declare-fun bm!147530 () Bool)

(declare-fun Exists!1143 (Int) Bool)

(assert (=> bm!147530 (= call!147534 (Exists!1143 (ite c!385094 lambda!91014 lambda!91015)))))

(assert (= (and d!701254 c!385095) b!2416615))

(assert (= (and d!701254 (not c!385095)) b!2416619))

(assert (= (and b!2416619 res!1026333) b!2416617))

(assert (= (and b!2416617 c!385092) b!2416613))

(assert (= (and b!2416617 (not c!385092)) b!2416618))

(assert (= (and b!2416618 c!385093) b!2416611))

(assert (= (and b!2416618 (not c!385093)) b!2416612))

(assert (= (and b!2416611 (not res!1026331)) b!2416614))

(assert (= (and b!2416612 c!385094) b!2416610))

(assert (= (and b!2416612 (not c!385094)) b!2416609))

(assert (= (and b!2416610 (not res!1026332)) b!2416616))

(assert (= (or b!2416616 b!2416609) bm!147530))

(assert (= (or b!2416615 b!2416610) bm!147529))

(declare-fun m!2805121 () Bool)

(assert (=> b!2416611 m!2805121))

(declare-fun m!2805123 () Bool)

(assert (=> b!2416614 m!2805123))

(assert (=> bm!147529 m!2805075))

(declare-fun m!2805125 () Bool)

(assert (=> bm!147530 m!2805125))

(assert (=> b!2416375 d!701254))

(declare-fun d!701260 () Bool)

(assert (=> d!701260 (= (matchR!3219 r!13927 s!9460) (matchRSpec!951 r!13927 s!9460))))

(declare-fun lt!874386 () Unit!41483)

(declare-fun choose!14288 (Regex!7102 List!28443) Unit!41483)

(assert (=> d!701260 (= lt!874386 (choose!14288 r!13927 s!9460))))

(assert (=> d!701260 (validRegex!2822 r!13927)))

(assert (=> d!701260 (= (mainMatchTheorem!951 r!13927 s!9460) lt!874386)))

(declare-fun bs!463588 () Bool)

(assert (= bs!463588 d!701260))

(assert (=> bs!463588 m!2805001))

(assert (=> bs!463588 m!2805003))

(declare-fun m!2805127 () Bool)

(assert (=> bs!463588 m!2805127))

(assert (=> bs!463588 m!2805077))

(assert (=> b!2416375 d!701260))

(declare-fun bs!463589 () Bool)

(declare-fun d!701268 () Bool)

(assert (= bs!463589 (and d!701268 start!236734)))

(declare-fun lambda!91020 () Int)

(assert (=> bs!463589 (= lambda!91020 lambda!91006)))

(declare-fun b!2416652 () Bool)

(declare-fun e!1537871 () Bool)

(declare-fun lt!874391 () Regex!7102)

(declare-fun isConcat!157 (Regex!7102) Bool)

(assert (=> b!2416652 (= e!1537871 (isConcat!157 lt!874391))))

(declare-fun b!2416653 () Bool)

(declare-fun e!1537872 () Bool)

(declare-fun isEmptyExpr!157 (Regex!7102) Bool)

(assert (=> b!2416653 (= e!1537872 (isEmptyExpr!157 lt!874391))))

(declare-fun b!2416654 () Bool)

(declare-fun e!1537867 () Regex!7102)

(assert (=> b!2416654 (= e!1537867 (Concat!11738 (h!33745 l!9164) (generalisedConcat!203 (t!208419 l!9164))))))

(declare-fun b!2416656 () Bool)

(declare-fun e!1537870 () Bool)

(assert (=> b!2416656 (= e!1537870 e!1537872)))

(declare-fun c!385109 () Bool)

(assert (=> b!2416656 (= c!385109 (isEmpty!16352 l!9164))))

(declare-fun b!2416657 () Bool)

(assert (=> b!2416657 (= e!1537872 e!1537871)))

(declare-fun c!385107 () Bool)

(assert (=> b!2416657 (= c!385107 (isEmpty!16352 (tail!3688 l!9164)))))

(declare-fun b!2416658 () Bool)

(assert (=> b!2416658 (= e!1537867 EmptyExpr!7102)))

(declare-fun b!2416659 () Bool)

(declare-fun e!1537873 () Regex!7102)

(assert (=> b!2416659 (= e!1537873 e!1537867)))

(declare-fun c!385110 () Bool)

(assert (=> b!2416659 (= c!385110 (is-Cons!28344 l!9164))))

(assert (=> d!701268 e!1537870))

(declare-fun res!1026340 () Bool)

(assert (=> d!701268 (=> (not res!1026340) (not e!1537870))))

(assert (=> d!701268 (= res!1026340 (validRegex!2822 lt!874391))))

(assert (=> d!701268 (= lt!874391 e!1537873)))

(declare-fun c!385106 () Bool)

(declare-fun e!1537869 () Bool)

(assert (=> d!701268 (= c!385106 e!1537869)))

(declare-fun res!1026341 () Bool)

(assert (=> d!701268 (=> (not res!1026341) (not e!1537869))))

(assert (=> d!701268 (= res!1026341 (is-Cons!28344 l!9164))))

(assert (=> d!701268 (forall!5736 l!9164 lambda!91020)))

(assert (=> d!701268 (= (generalisedConcat!203 l!9164) lt!874391)))

(declare-fun b!2416655 () Bool)

(assert (=> b!2416655 (= e!1537873 (h!33745 l!9164))))

(declare-fun b!2416660 () Bool)

(assert (=> b!2416660 (= e!1537869 (isEmpty!16352 (t!208419 l!9164)))))

(declare-fun b!2416661 () Bool)

(assert (=> b!2416661 (= e!1537871 (= lt!874391 (head!5416 l!9164)))))

(assert (= (and d!701268 res!1026341) b!2416660))

(assert (= (and d!701268 c!385106) b!2416655))

(assert (= (and d!701268 (not c!385106)) b!2416659))

(assert (= (and b!2416659 c!385110) b!2416654))

(assert (= (and b!2416659 (not c!385110)) b!2416658))

(assert (= (and d!701268 res!1026340) b!2416656))

(assert (= (and b!2416656 c!385109) b!2416653))

(assert (= (and b!2416656 (not c!385109)) b!2416657))

(assert (= (and b!2416657 c!385107) b!2416661))

(assert (= (and b!2416657 (not c!385107)) b!2416652))

(declare-fun m!2805129 () Bool)

(assert (=> b!2416653 m!2805129))

(declare-fun m!2805131 () Bool)

(assert (=> d!701268 m!2805131))

(declare-fun m!2805133 () Bool)

(assert (=> d!701268 m!2805133))

(declare-fun m!2805135 () Bool)

(assert (=> b!2416660 m!2805135))

(assert (=> b!2416657 m!2804979))

(assert (=> b!2416657 m!2804979))

(declare-fun m!2805137 () Bool)

(assert (=> b!2416657 m!2805137))

(declare-fun m!2805139 () Bool)

(assert (=> b!2416652 m!2805139))

(assert (=> b!2416656 m!2804975))

(declare-fun m!2805141 () Bool)

(assert (=> b!2416654 m!2805141))

(assert (=> b!2416661 m!2804973))

(assert (=> b!2416380 d!701268))

(declare-fun b!2416668 () Bool)

(declare-fun e!1537881 () Bool)

(assert (=> b!2416668 (= e!1537881 (= (head!5418 s!9460) (c!385047 lt!874337)))))

(declare-fun b!2416669 () Bool)

(declare-fun res!1026345 () Bool)

(declare-fun e!1537884 () Bool)

(assert (=> b!2416669 (=> res!1026345 e!1537884)))

(assert (=> b!2416669 (= res!1026345 (not (isEmpty!16355 (tail!3690 s!9460))))))

(declare-fun b!2416670 () Bool)

(declare-fun res!1026350 () Bool)

(assert (=> b!2416670 (=> (not res!1026350) (not e!1537881))))

(declare-fun call!147536 () Bool)

(assert (=> b!2416670 (= res!1026350 (not call!147536))))

(declare-fun b!2416671 () Bool)

(declare-fun e!1537882 () Bool)

(declare-fun e!1537878 () Bool)

(assert (=> b!2416671 (= e!1537882 e!1537878)))

(declare-fun c!385114 () Bool)

(assert (=> b!2416671 (= c!385114 (is-EmptyLang!7102 lt!874337))))

(declare-fun b!2416672 () Bool)

(declare-fun e!1537883 () Bool)

(declare-fun e!1537879 () Bool)

(assert (=> b!2416672 (= e!1537883 e!1537879)))

(declare-fun res!1026346 () Bool)

(assert (=> b!2416672 (=> (not res!1026346) (not e!1537879))))

(declare-fun lt!874392 () Bool)

(assert (=> b!2416672 (= res!1026346 (not lt!874392))))

(declare-fun b!2416673 () Bool)

(declare-fun res!1026351 () Bool)

(assert (=> b!2416673 (=> res!1026351 e!1537883)))

(assert (=> b!2416673 (= res!1026351 (not (is-ElementMatch!7102 lt!874337)))))

(assert (=> b!2416673 (= e!1537878 e!1537883)))

(declare-fun b!2416674 () Bool)

(declare-fun e!1537880 () Bool)

(assert (=> b!2416674 (= e!1537880 (nullable!2137 lt!874337))))

(declare-fun b!2416675 () Bool)

(assert (=> b!2416675 (= e!1537878 (not lt!874392))))

(declare-fun b!2416676 () Bool)

(assert (=> b!2416676 (= e!1537884 (not (= (head!5418 s!9460) (c!385047 lt!874337))))))

(declare-fun b!2416677 () Bool)

(assert (=> b!2416677 (= e!1537882 (= lt!874392 call!147536))))

(declare-fun bm!147531 () Bool)

(assert (=> bm!147531 (= call!147536 (isEmpty!16355 s!9460))))

(declare-fun b!2416678 () Bool)

(assert (=> b!2416678 (= e!1537879 e!1537884)))

(declare-fun res!1026349 () Bool)

(assert (=> b!2416678 (=> res!1026349 e!1537884)))

(assert (=> b!2416678 (= res!1026349 call!147536)))

(declare-fun b!2416679 () Bool)

(declare-fun res!1026344 () Bool)

(assert (=> b!2416679 (=> (not res!1026344) (not e!1537881))))

(assert (=> b!2416679 (= res!1026344 (isEmpty!16355 (tail!3690 s!9460)))))

(declare-fun b!2416680 () Bool)

(assert (=> b!2416680 (= e!1537880 (matchR!3219 (derivativeStep!1794 lt!874337 (head!5418 s!9460)) (tail!3690 s!9460)))))

(declare-fun d!701270 () Bool)

(assert (=> d!701270 e!1537882))

(declare-fun c!385113 () Bool)

(assert (=> d!701270 (= c!385113 (is-EmptyExpr!7102 lt!874337))))

(assert (=> d!701270 (= lt!874392 e!1537880)))

(declare-fun c!385115 () Bool)

(assert (=> d!701270 (= c!385115 (isEmpty!16355 s!9460))))

(assert (=> d!701270 (validRegex!2822 lt!874337)))

(assert (=> d!701270 (= (matchR!3219 lt!874337 s!9460) lt!874392)))

(declare-fun b!2416681 () Bool)

(declare-fun res!1026347 () Bool)

(assert (=> b!2416681 (=> res!1026347 e!1537883)))

(assert (=> b!2416681 (= res!1026347 e!1537881)))

(declare-fun res!1026348 () Bool)

(assert (=> b!2416681 (=> (not res!1026348) (not e!1537881))))

(assert (=> b!2416681 (= res!1026348 lt!874392)))

(assert (= (and d!701270 c!385115) b!2416674))

(assert (= (and d!701270 (not c!385115)) b!2416680))

(assert (= (and d!701270 c!385113) b!2416677))

(assert (= (and d!701270 (not c!385113)) b!2416671))

(assert (= (and b!2416671 c!385114) b!2416675))

(assert (= (and b!2416671 (not c!385114)) b!2416673))

(assert (= (and b!2416673 (not res!1026351)) b!2416681))

(assert (= (and b!2416681 res!1026348) b!2416670))

(assert (= (and b!2416670 res!1026350) b!2416679))

(assert (= (and b!2416679 res!1026344) b!2416668))

(assert (= (and b!2416681 (not res!1026347)) b!2416672))

(assert (= (and b!2416672 res!1026346) b!2416678))

(assert (= (and b!2416678 (not res!1026349)) b!2416669))

(assert (= (and b!2416669 (not res!1026345)) b!2416676))

(assert (= (or b!2416677 b!2416670 b!2416678) bm!147531))

(assert (=> d!701270 m!2805075))

(assert (=> d!701270 m!2804987))

(assert (=> b!2416680 m!2805079))

(assert (=> b!2416680 m!2805079))

(declare-fun m!2805143 () Bool)

(assert (=> b!2416680 m!2805143))

(assert (=> b!2416680 m!2805083))

(assert (=> b!2416680 m!2805143))

(assert (=> b!2416680 m!2805083))

(declare-fun m!2805145 () Bool)

(assert (=> b!2416680 m!2805145))

(assert (=> b!2416669 m!2805083))

(assert (=> b!2416669 m!2805083))

(assert (=> b!2416669 m!2805087))

(assert (=> bm!147531 m!2805075))

(assert (=> b!2416676 m!2805079))

(assert (=> b!2416679 m!2805083))

(assert (=> b!2416679 m!2805083))

(assert (=> b!2416679 m!2805087))

(declare-fun m!2805147 () Bool)

(assert (=> b!2416674 m!2805147))

(assert (=> b!2416668 m!2805079))

(assert (=> b!2416369 d!701270))

(declare-fun d!701272 () Bool)

(assert (=> d!701272 (= (head!5416 l!9164) (h!33745 l!9164))))

(assert (=> b!2416369 d!701272))

(declare-fun d!701274 () Bool)

(assert (=> d!701274 (= (isEmpty!16352 lt!874334) (is-Nil!28344 lt!874334))))

(assert (=> b!2416374 d!701274))

(declare-fun d!701276 () Bool)

(assert (=> d!701276 (= (tail!3688 l!9164) (t!208419 l!9164))))

(assert (=> b!2416374 d!701276))

(declare-fun bs!463590 () Bool)

(declare-fun d!701278 () Bool)

(assert (= bs!463590 (and d!701278 start!236734)))

(declare-fun lambda!91021 () Int)

(assert (=> bs!463590 (= lambda!91021 lambda!91006)))

(declare-fun bs!463591 () Bool)

(assert (= bs!463591 (and d!701278 d!701268)))

(assert (=> bs!463591 (= lambda!91021 lambda!91020)))

(declare-fun b!2416692 () Bool)

(declare-fun e!1537894 () Bool)

(declare-fun lt!874393 () Regex!7102)

(assert (=> b!2416692 (= e!1537894 (isConcat!157 lt!874393))))

(declare-fun b!2416693 () Bool)

(declare-fun e!1537895 () Bool)

(assert (=> b!2416693 (= e!1537895 (isEmptyExpr!157 lt!874393))))

(declare-fun b!2416694 () Bool)

(declare-fun e!1537891 () Regex!7102)

(assert (=> b!2416694 (= e!1537891 (Concat!11738 (h!33745 lt!874334) (generalisedConcat!203 (t!208419 lt!874334))))))

(declare-fun b!2416696 () Bool)

(declare-fun e!1537893 () Bool)

(assert (=> b!2416696 (= e!1537893 e!1537895)))

(declare-fun c!385122 () Bool)

(assert (=> b!2416696 (= c!385122 (isEmpty!16352 lt!874334))))

(declare-fun b!2416697 () Bool)

(assert (=> b!2416697 (= e!1537895 e!1537894)))

(declare-fun c!385121 () Bool)

(assert (=> b!2416697 (= c!385121 (isEmpty!16352 (tail!3688 lt!874334)))))

(declare-fun b!2416698 () Bool)

(assert (=> b!2416698 (= e!1537891 EmptyExpr!7102)))

(declare-fun b!2416699 () Bool)

(declare-fun e!1537896 () Regex!7102)

(assert (=> b!2416699 (= e!1537896 e!1537891)))

(declare-fun c!385123 () Bool)

(assert (=> b!2416699 (= c!385123 (is-Cons!28344 lt!874334))))

(assert (=> d!701278 e!1537893))

(declare-fun res!1026354 () Bool)

(assert (=> d!701278 (=> (not res!1026354) (not e!1537893))))

(assert (=> d!701278 (= res!1026354 (validRegex!2822 lt!874393))))

(assert (=> d!701278 (= lt!874393 e!1537896)))

(declare-fun c!385120 () Bool)

(declare-fun e!1537892 () Bool)

(assert (=> d!701278 (= c!385120 e!1537892)))

(declare-fun res!1026355 () Bool)

(assert (=> d!701278 (=> (not res!1026355) (not e!1537892))))

(assert (=> d!701278 (= res!1026355 (is-Cons!28344 lt!874334))))

(assert (=> d!701278 (forall!5736 lt!874334 lambda!91021)))

(assert (=> d!701278 (= (generalisedConcat!203 lt!874334) lt!874393)))

(declare-fun b!2416695 () Bool)

(assert (=> b!2416695 (= e!1537896 (h!33745 lt!874334))))

(declare-fun b!2416700 () Bool)

(assert (=> b!2416700 (= e!1537892 (isEmpty!16352 (t!208419 lt!874334)))))

(declare-fun b!2416701 () Bool)

(assert (=> b!2416701 (= e!1537894 (= lt!874393 (head!5416 lt!874334)))))

(assert (= (and d!701278 res!1026355) b!2416700))

(assert (= (and d!701278 c!385120) b!2416695))

(assert (= (and d!701278 (not c!385120)) b!2416699))

(assert (= (and b!2416699 c!385123) b!2416694))

(assert (= (and b!2416699 (not c!385123)) b!2416698))

(assert (= (and d!701278 res!1026354) b!2416696))

(assert (= (and b!2416696 c!385122) b!2416693))

(assert (= (and b!2416696 (not c!385122)) b!2416697))

(assert (= (and b!2416697 c!385121) b!2416701))

(assert (= (and b!2416697 (not c!385121)) b!2416692))

(declare-fun m!2805149 () Bool)

(assert (=> b!2416693 m!2805149))

(declare-fun m!2805151 () Bool)

(assert (=> d!701278 m!2805151))

(declare-fun m!2805153 () Bool)

(assert (=> d!701278 m!2805153))

(declare-fun m!2805155 () Bool)

(assert (=> b!2416700 m!2805155))

(declare-fun m!2805157 () Bool)

(assert (=> b!2416697 m!2805157))

(assert (=> b!2416697 m!2805157))

(declare-fun m!2805159 () Bool)

(assert (=> b!2416697 m!2805159))

(declare-fun m!2805161 () Bool)

(assert (=> b!2416692 m!2805161))

(assert (=> b!2416696 m!2804977))

(declare-fun m!2805163 () Bool)

(assert (=> b!2416694 m!2805163))

(declare-fun m!2805165 () Bool)

(assert (=> b!2416701 m!2805165))

(assert (=> b!2416379 d!701278))

(declare-fun d!701280 () Bool)

(assert (=> d!701280 (= (get!8706 lt!874336) (v!31010 lt!874336))))

(assert (=> b!2416373 d!701280))

(declare-fun d!701282 () Bool)

(assert (=> d!701282 (matchR!3219 (Concat!11738 lt!874337 EmptyExpr!7102) (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338)))))

(declare-fun lt!874397 () Unit!41483)

(declare-fun choose!14289 (Regex!7102 Regex!7102 List!28443 List!28443 List!28443) Unit!41483)

(assert (=> d!701282 (= lt!874397 (choose!14289 lt!874337 EmptyExpr!7102 (_1!16533 lt!874338) (_2!16533 lt!874338) s!9460))))

(assert (=> d!701282 (validRegex!2822 lt!874337)))

(assert (=> d!701282 (= (lemmaFindSeparationIsDefinedThenConcatMatches!51 lt!874337 EmptyExpr!7102 (_1!16533 lt!874338) (_2!16533 lt!874338) s!9460) lt!874397)))

(declare-fun bs!463592 () Bool)

(assert (= bs!463592 d!701282))

(assert (=> bs!463592 m!2804997))

(assert (=> bs!463592 m!2804997))

(assert (=> bs!463592 m!2804999))

(declare-fun m!2805167 () Bool)

(assert (=> bs!463592 m!2805167))

(assert (=> bs!463592 m!2804987))

(assert (=> b!2416373 d!701282))

(declare-fun b!2416712 () Bool)

(declare-fun e!1537906 () Bool)

(assert (=> b!2416712 (= e!1537906 (= (head!5418 (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338))) (c!385047 (Concat!11738 lt!874337 EmptyExpr!7102))))))

(declare-fun b!2416713 () Bool)

(declare-fun res!1026359 () Bool)

(declare-fun e!1537909 () Bool)

(assert (=> b!2416713 (=> res!1026359 e!1537909)))

(assert (=> b!2416713 (= res!1026359 (not (isEmpty!16355 (tail!3690 (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338))))))))

(declare-fun b!2416714 () Bool)

(declare-fun res!1026364 () Bool)

(assert (=> b!2416714 (=> (not res!1026364) (not e!1537906))))

(declare-fun call!147537 () Bool)

(assert (=> b!2416714 (= res!1026364 (not call!147537))))

(declare-fun b!2416715 () Bool)

(declare-fun e!1537907 () Bool)

(declare-fun e!1537903 () Bool)

(assert (=> b!2416715 (= e!1537907 e!1537903)))

(declare-fun c!385129 () Bool)

(assert (=> b!2416715 (= c!385129 (is-EmptyLang!7102 (Concat!11738 lt!874337 EmptyExpr!7102)))))

(declare-fun b!2416716 () Bool)

(declare-fun e!1537908 () Bool)

(declare-fun e!1537904 () Bool)

(assert (=> b!2416716 (= e!1537908 e!1537904)))

(declare-fun res!1026360 () Bool)

(assert (=> b!2416716 (=> (not res!1026360) (not e!1537904))))

(declare-fun lt!874398 () Bool)

(assert (=> b!2416716 (= res!1026360 (not lt!874398))))

(declare-fun b!2416717 () Bool)

(declare-fun res!1026365 () Bool)

(assert (=> b!2416717 (=> res!1026365 e!1537908)))

(assert (=> b!2416717 (= res!1026365 (not (is-ElementMatch!7102 (Concat!11738 lt!874337 EmptyExpr!7102))))))

(assert (=> b!2416717 (= e!1537903 e!1537908)))

(declare-fun b!2416718 () Bool)

(declare-fun e!1537905 () Bool)

(assert (=> b!2416718 (= e!1537905 (nullable!2137 (Concat!11738 lt!874337 EmptyExpr!7102)))))

(declare-fun b!2416719 () Bool)

(assert (=> b!2416719 (= e!1537903 (not lt!874398))))

(declare-fun b!2416720 () Bool)

(assert (=> b!2416720 (= e!1537909 (not (= (head!5418 (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338))) (c!385047 (Concat!11738 lt!874337 EmptyExpr!7102)))))))

(declare-fun b!2416721 () Bool)

(assert (=> b!2416721 (= e!1537907 (= lt!874398 call!147537))))

(declare-fun bm!147532 () Bool)

(assert (=> bm!147532 (= call!147537 (isEmpty!16355 (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338))))))

(declare-fun b!2416722 () Bool)

(assert (=> b!2416722 (= e!1537904 e!1537909)))

(declare-fun res!1026363 () Bool)

(assert (=> b!2416722 (=> res!1026363 e!1537909)))

(assert (=> b!2416722 (= res!1026363 call!147537)))

(declare-fun b!2416723 () Bool)

(declare-fun res!1026358 () Bool)

(assert (=> b!2416723 (=> (not res!1026358) (not e!1537906))))

(assert (=> b!2416723 (= res!1026358 (isEmpty!16355 (tail!3690 (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338)))))))

(declare-fun b!2416724 () Bool)

(assert (=> b!2416724 (= e!1537905 (matchR!3219 (derivativeStep!1794 (Concat!11738 lt!874337 EmptyExpr!7102) (head!5418 (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338)))) (tail!3690 (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338)))))))

(declare-fun d!701284 () Bool)

(assert (=> d!701284 e!1537907))

(declare-fun c!385128 () Bool)

(assert (=> d!701284 (= c!385128 (is-EmptyExpr!7102 (Concat!11738 lt!874337 EmptyExpr!7102)))))

(assert (=> d!701284 (= lt!874398 e!1537905)))

(declare-fun c!385130 () Bool)

(assert (=> d!701284 (= c!385130 (isEmpty!16355 (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338))))))

(assert (=> d!701284 (validRegex!2822 (Concat!11738 lt!874337 EmptyExpr!7102))))

(assert (=> d!701284 (= (matchR!3219 (Concat!11738 lt!874337 EmptyExpr!7102) (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338))) lt!874398)))

(declare-fun b!2416725 () Bool)

(declare-fun res!1026361 () Bool)

(assert (=> b!2416725 (=> res!1026361 e!1537908)))

(assert (=> b!2416725 (= res!1026361 e!1537906)))

(declare-fun res!1026362 () Bool)

(assert (=> b!2416725 (=> (not res!1026362) (not e!1537906))))

(assert (=> b!2416725 (= res!1026362 lt!874398)))

(assert (= (and d!701284 c!385130) b!2416718))

(assert (= (and d!701284 (not c!385130)) b!2416724))

(assert (= (and d!701284 c!385128) b!2416721))

(assert (= (and d!701284 (not c!385128)) b!2416715))

(assert (= (and b!2416715 c!385129) b!2416719))

(assert (= (and b!2416715 (not c!385129)) b!2416717))

(assert (= (and b!2416717 (not res!1026365)) b!2416725))

(assert (= (and b!2416725 res!1026362) b!2416714))

(assert (= (and b!2416714 res!1026364) b!2416723))

(assert (= (and b!2416723 res!1026358) b!2416712))

(assert (= (and b!2416725 (not res!1026361)) b!2416716))

(assert (= (and b!2416716 res!1026360) b!2416722))

(assert (= (and b!2416722 (not res!1026363)) b!2416713))

(assert (= (and b!2416713 (not res!1026359)) b!2416720))

(assert (= (or b!2416721 b!2416714 b!2416722) bm!147532))

(assert (=> d!701284 m!2804997))

(declare-fun m!2805169 () Bool)

(assert (=> d!701284 m!2805169))

(declare-fun m!2805171 () Bool)

(assert (=> d!701284 m!2805171))

(assert (=> b!2416724 m!2804997))

(declare-fun m!2805173 () Bool)

(assert (=> b!2416724 m!2805173))

(assert (=> b!2416724 m!2805173))

(declare-fun m!2805175 () Bool)

(assert (=> b!2416724 m!2805175))

(assert (=> b!2416724 m!2804997))

(declare-fun m!2805177 () Bool)

(assert (=> b!2416724 m!2805177))

(assert (=> b!2416724 m!2805175))

(assert (=> b!2416724 m!2805177))

(declare-fun m!2805179 () Bool)

(assert (=> b!2416724 m!2805179))

(assert (=> b!2416713 m!2804997))

(assert (=> b!2416713 m!2805177))

(assert (=> b!2416713 m!2805177))

(declare-fun m!2805183 () Bool)

(assert (=> b!2416713 m!2805183))

(assert (=> bm!147532 m!2804997))

(assert (=> bm!147532 m!2805169))

(assert (=> b!2416720 m!2804997))

(assert (=> b!2416720 m!2805173))

(assert (=> b!2416723 m!2804997))

(assert (=> b!2416723 m!2805177))

(assert (=> b!2416723 m!2805177))

(assert (=> b!2416723 m!2805183))

(declare-fun m!2805189 () Bool)

(assert (=> b!2416718 m!2805189))

(assert (=> b!2416712 m!2804997))

(assert (=> b!2416712 m!2805173))

(assert (=> b!2416373 d!701284))

(declare-fun b!2416748 () Bool)

(declare-fun e!1537922 () List!28443)

(assert (=> b!2416748 (= e!1537922 (_2!16533 lt!874338))))

(declare-fun b!2416749 () Bool)

(assert (=> b!2416749 (= e!1537922 (Cons!28345 (h!33746 (_1!16533 lt!874338)) (++!7023 (t!208420 (_1!16533 lt!874338)) (_2!16533 lt!874338))))))

(declare-fun b!2416750 () Bool)

(declare-fun res!1026379 () Bool)

(declare-fun e!1537921 () Bool)

(assert (=> b!2416750 (=> (not res!1026379) (not e!1537921))))

(declare-fun lt!874402 () List!28443)

(declare-fun size!22227 (List!28443) Int)

(assert (=> b!2416750 (= res!1026379 (= (size!22227 lt!874402) (+ (size!22227 (_1!16533 lt!874338)) (size!22227 (_2!16533 lt!874338)))))))

(declare-fun b!2416751 () Bool)

(assert (=> b!2416751 (= e!1537921 (or (not (= (_2!16533 lt!874338) Nil!28345)) (= lt!874402 (_1!16533 lt!874338))))))

(declare-fun d!701286 () Bool)

(assert (=> d!701286 e!1537921))

(declare-fun res!1026378 () Bool)

(assert (=> d!701286 (=> (not res!1026378) (not e!1537921))))

(declare-fun content!3889 (List!28443) (Set C!14362))

(assert (=> d!701286 (= res!1026378 (= (content!3889 lt!874402) (set.union (content!3889 (_1!16533 lt!874338)) (content!3889 (_2!16533 lt!874338)))))))

(assert (=> d!701286 (= lt!874402 e!1537922)))

(declare-fun c!385136 () Bool)

(assert (=> d!701286 (= c!385136 (is-Nil!28345 (_1!16533 lt!874338)))))

(assert (=> d!701286 (= (++!7023 (_1!16533 lt!874338) (_2!16533 lt!874338)) lt!874402)))

(assert (= (and d!701286 c!385136) b!2416748))

(assert (= (and d!701286 (not c!385136)) b!2416749))

(assert (= (and d!701286 res!1026378) b!2416750))

(assert (= (and b!2416750 res!1026379) b!2416751))

(declare-fun m!2805219 () Bool)

(assert (=> b!2416749 m!2805219))

(declare-fun m!2805221 () Bool)

(assert (=> b!2416750 m!2805221))

(declare-fun m!2805223 () Bool)

(assert (=> b!2416750 m!2805223))

(declare-fun m!2805225 () Bool)

(assert (=> b!2416750 m!2805225))

(declare-fun m!2805227 () Bool)

(assert (=> d!701286 m!2805227))

(declare-fun m!2805229 () Bool)

(assert (=> d!701286 m!2805229))

(declare-fun m!2805231 () Bool)

(assert (=> d!701286 m!2805231))

(assert (=> b!2416373 d!701286))

(declare-fun d!701292 () Bool)

(assert (=> d!701292 (= (isEmpty!16352 l!9164) (is-Nil!28344 l!9164))))

(assert (=> b!2416377 d!701292))

(declare-fun d!701294 () Bool)

(declare-fun res!1026384 () Bool)

(declare-fun e!1537927 () Bool)

(assert (=> d!701294 (=> res!1026384 e!1537927)))

(assert (=> d!701294 (= res!1026384 (is-Nil!28344 l!9164))))

(assert (=> d!701294 (= (forall!5736 l!9164 lambda!91006) e!1537927)))

(declare-fun b!2416756 () Bool)

(declare-fun e!1537928 () Bool)

(assert (=> b!2416756 (= e!1537927 e!1537928)))

(declare-fun res!1026385 () Bool)

(assert (=> b!2416756 (=> (not res!1026385) (not e!1537928))))

(declare-fun dynLambda!12198 (Int Regex!7102) Bool)

(assert (=> b!2416756 (= res!1026385 (dynLambda!12198 lambda!91006 (h!33745 l!9164)))))

(declare-fun b!2416757 () Bool)

(assert (=> b!2416757 (= e!1537928 (forall!5736 (t!208419 l!9164) lambda!91006))))

(assert (= (and d!701294 (not res!1026384)) b!2416756))

(assert (= (and b!2416756 res!1026385) b!2416757))

(declare-fun b_lambda!74579 () Bool)

(assert (=> (not b_lambda!74579) (not b!2416756)))

(declare-fun m!2805233 () Bool)

(assert (=> b!2416756 m!2805233))

(declare-fun m!2805235 () Bool)

(assert (=> b!2416757 m!2805235))

(assert (=> start!236734 d!701294))

(declare-fun b!2416762 () Bool)

(declare-fun e!1537931 () Bool)

(declare-fun tp!768470 () Bool)

(assert (=> b!2416762 (= e!1537931 (and tp_is_empty!11617 tp!768470))))

(assert (=> b!2416370 (= tp!768441 e!1537931)))

(assert (= (and b!2416370 (is-Cons!28345 (t!208420 s!9460))) b!2416762))

(declare-fun e!1537934 () Bool)

(assert (=> b!2416368 (= tp!768443 e!1537934)))

(declare-fun b!2416773 () Bool)

(assert (=> b!2416773 (= e!1537934 tp_is_empty!11617)))

(declare-fun b!2416776 () Bool)

(declare-fun tp!768481 () Bool)

(declare-fun tp!768485 () Bool)

(assert (=> b!2416776 (= e!1537934 (and tp!768481 tp!768485))))

(declare-fun b!2416775 () Bool)

(declare-fun tp!768483 () Bool)

(assert (=> b!2416775 (= e!1537934 tp!768483)))

(declare-fun b!2416774 () Bool)

(declare-fun tp!768484 () Bool)

(declare-fun tp!768482 () Bool)

(assert (=> b!2416774 (= e!1537934 (and tp!768484 tp!768482))))

(assert (= (and b!2416368 (is-ElementMatch!7102 (regOne!14716 r!13927))) b!2416773))

(assert (= (and b!2416368 (is-Concat!11738 (regOne!14716 r!13927))) b!2416774))

(assert (= (and b!2416368 (is-Star!7102 (regOne!14716 r!13927))) b!2416775))

(assert (= (and b!2416368 (is-Union!7102 (regOne!14716 r!13927))) b!2416776))

(declare-fun e!1537935 () Bool)

(assert (=> b!2416368 (= tp!768438 e!1537935)))

(declare-fun b!2416777 () Bool)

(assert (=> b!2416777 (= e!1537935 tp_is_empty!11617)))

(declare-fun b!2416780 () Bool)

(declare-fun tp!768486 () Bool)

(declare-fun tp!768490 () Bool)

(assert (=> b!2416780 (= e!1537935 (and tp!768486 tp!768490))))

(declare-fun b!2416779 () Bool)

(declare-fun tp!768488 () Bool)

(assert (=> b!2416779 (= e!1537935 tp!768488)))

(declare-fun b!2416778 () Bool)

(declare-fun tp!768489 () Bool)

(declare-fun tp!768487 () Bool)

(assert (=> b!2416778 (= e!1537935 (and tp!768489 tp!768487))))

(assert (= (and b!2416368 (is-ElementMatch!7102 (regTwo!14716 r!13927))) b!2416777))

(assert (= (and b!2416368 (is-Concat!11738 (regTwo!14716 r!13927))) b!2416778))

(assert (= (and b!2416368 (is-Star!7102 (regTwo!14716 r!13927))) b!2416779))

(assert (= (and b!2416368 (is-Union!7102 (regTwo!14716 r!13927))) b!2416780))

(declare-fun e!1537936 () Bool)

(assert (=> b!2416378 (= tp!768440 e!1537936)))

(declare-fun b!2416781 () Bool)

(assert (=> b!2416781 (= e!1537936 tp_is_empty!11617)))

(declare-fun b!2416784 () Bool)

(declare-fun tp!768491 () Bool)

(declare-fun tp!768495 () Bool)

(assert (=> b!2416784 (= e!1537936 (and tp!768491 tp!768495))))

(declare-fun b!2416783 () Bool)

(declare-fun tp!768493 () Bool)

(assert (=> b!2416783 (= e!1537936 tp!768493)))

(declare-fun b!2416782 () Bool)

(declare-fun tp!768494 () Bool)

(declare-fun tp!768492 () Bool)

(assert (=> b!2416782 (= e!1537936 (and tp!768494 tp!768492))))

(assert (= (and b!2416378 (is-ElementMatch!7102 (h!33745 l!9164))) b!2416781))

(assert (= (and b!2416378 (is-Concat!11738 (h!33745 l!9164))) b!2416782))

(assert (= (and b!2416378 (is-Star!7102 (h!33745 l!9164))) b!2416783))

(assert (= (and b!2416378 (is-Union!7102 (h!33745 l!9164))) b!2416784))

(declare-fun b!2416789 () Bool)

(declare-fun e!1537939 () Bool)

(declare-fun tp!768500 () Bool)

(declare-fun tp!768501 () Bool)

(assert (=> b!2416789 (= e!1537939 (and tp!768500 tp!768501))))

(assert (=> b!2416378 (= tp!768442 e!1537939)))

(assert (= (and b!2416378 (is-Cons!28344 (t!208419 l!9164))) b!2416789))

(declare-fun e!1537940 () Bool)

(assert (=> b!2416382 (= tp!768437 e!1537940)))

(declare-fun b!2416790 () Bool)

(assert (=> b!2416790 (= e!1537940 tp_is_empty!11617)))

(declare-fun b!2416793 () Bool)

(declare-fun tp!768502 () Bool)

(declare-fun tp!768506 () Bool)

(assert (=> b!2416793 (= e!1537940 (and tp!768502 tp!768506))))

(declare-fun b!2416792 () Bool)

(declare-fun tp!768504 () Bool)

(assert (=> b!2416792 (= e!1537940 tp!768504)))

(declare-fun b!2416791 () Bool)

(declare-fun tp!768505 () Bool)

(declare-fun tp!768503 () Bool)

(assert (=> b!2416791 (= e!1537940 (and tp!768505 tp!768503))))

(assert (= (and b!2416382 (is-ElementMatch!7102 (reg!7431 r!13927))) b!2416790))

(assert (= (and b!2416382 (is-Concat!11738 (reg!7431 r!13927))) b!2416791))

(assert (= (and b!2416382 (is-Star!7102 (reg!7431 r!13927))) b!2416792))

(assert (= (and b!2416382 (is-Union!7102 (reg!7431 r!13927))) b!2416793))

(declare-fun e!1537941 () Bool)

(assert (=> b!2416371 (= tp!768439 e!1537941)))

(declare-fun b!2416794 () Bool)

(assert (=> b!2416794 (= e!1537941 tp_is_empty!11617)))

(declare-fun b!2416797 () Bool)

(declare-fun tp!768507 () Bool)

(declare-fun tp!768511 () Bool)

(assert (=> b!2416797 (= e!1537941 (and tp!768507 tp!768511))))

(declare-fun b!2416796 () Bool)

(declare-fun tp!768509 () Bool)

(assert (=> b!2416796 (= e!1537941 tp!768509)))

(declare-fun b!2416795 () Bool)

(declare-fun tp!768510 () Bool)

(declare-fun tp!768508 () Bool)

(assert (=> b!2416795 (= e!1537941 (and tp!768510 tp!768508))))

(assert (= (and b!2416371 (is-ElementMatch!7102 (regOne!14717 r!13927))) b!2416794))

(assert (= (and b!2416371 (is-Concat!11738 (regOne!14717 r!13927))) b!2416795))

(assert (= (and b!2416371 (is-Star!7102 (regOne!14717 r!13927))) b!2416796))

(assert (= (and b!2416371 (is-Union!7102 (regOne!14717 r!13927))) b!2416797))

(declare-fun e!1537942 () Bool)

(assert (=> b!2416371 (= tp!768436 e!1537942)))

(declare-fun b!2416798 () Bool)

(assert (=> b!2416798 (= e!1537942 tp_is_empty!11617)))

(declare-fun b!2416801 () Bool)

(declare-fun tp!768512 () Bool)

(declare-fun tp!768516 () Bool)

(assert (=> b!2416801 (= e!1537942 (and tp!768512 tp!768516))))

(declare-fun b!2416800 () Bool)

(declare-fun tp!768514 () Bool)

(assert (=> b!2416800 (= e!1537942 tp!768514)))

(declare-fun b!2416799 () Bool)

(declare-fun tp!768515 () Bool)

(declare-fun tp!768513 () Bool)

(assert (=> b!2416799 (= e!1537942 (and tp!768515 tp!768513))))

(assert (= (and b!2416371 (is-ElementMatch!7102 (regTwo!14717 r!13927))) b!2416798))

(assert (= (and b!2416371 (is-Concat!11738 (regTwo!14717 r!13927))) b!2416799))

(assert (= (and b!2416371 (is-Star!7102 (regTwo!14717 r!13927))) b!2416800))

(assert (= (and b!2416371 (is-Union!7102 (regTwo!14717 r!13927))) b!2416801))

(declare-fun b_lambda!74581 () Bool)

(assert (= b_lambda!74579 (or start!236734 b_lambda!74581)))

(declare-fun bs!463594 () Bool)

(declare-fun d!701296 () Bool)

(assert (= bs!463594 (and d!701296 start!236734)))

(assert (=> bs!463594 (= (dynLambda!12198 lambda!91006 (h!33745 l!9164)) (validRegex!2822 (h!33745 l!9164)))))

(declare-fun m!2805237 () Bool)

(assert (=> bs!463594 m!2805237))

(assert (=> b!2416756 d!701296))

(push 1)

(assert (not b!2416661))

(assert (not b!2416656))

(assert (not b!2416552))

(assert (not b!2416750))

(assert (not b!2416723))

(assert (not b!2416693))

(assert (not b!2416800))

(assert (not b!2416796))

(assert (not bm!147531))

(assert (not b!2416724))

(assert (not b!2416476))

(assert (not b!2416478))

(assert (not b!2416477))

(assert (not b!2416541))

(assert (not d!701282))

(assert (not b!2416697))

(assert (not b!2416479))

(assert tp_is_empty!11617)

(assert (not b!2416720))

(assert (not b!2416700))

(assert (not b!2416674))

(assert (not b!2416775))

(assert (not bs!463594))

(assert (not b!2416549))

(assert (not b!2416692))

(assert (not b!2416480))

(assert (not d!701248))

(assert (not d!701246))

(assert (not bm!147518))

(assert (not b!2416614))

(assert (not b!2416801))

(assert (not b!2416553))

(assert (not b!2416782))

(assert (not b_lambda!74581))

(assert (not b!2416780))

(assert (not b!2416797))

(assert (not d!701270))

(assert (not b!2416680))

(assert (not b!2416793))

(assert (not bm!147530))

(assert (not d!701286))

(assert (not d!701284))

(assert (not b!2416795))

(assert (not b!2416718))

(assert (not bm!147523))

(assert (not b!2416778))

(assert (not b!2416654))

(assert (not b!2416668))

(assert (not b!2416547))

(assert (not d!701252))

(assert (not b!2416791))

(assert (not b!2416679))

(assert (not bm!147532))

(assert (not b!2416784))

(assert (not b!2416694))

(assert (not b!2416792))

(assert (not b!2416483))

(assert (not b!2416713))

(assert (not d!701268))

(assert (not b!2416799))

(assert (not b!2416653))

(assert (not b!2416450))

(assert (not d!701260))

(assert (not b!2416783))

(assert (not b!2416696))

(assert (not b!2416657))

(assert (not b!2416701))

(assert (not b!2416712))

(assert (not b!2416611))

(assert (not b!2416774))

(assert (not b!2416669))

(assert (not d!701278))

(assert (not b!2416779))

(assert (not b!2416652))

(assert (not b!2416789))

(assert (not b!2416749))

(assert (not b!2416762))

(assert (not b!2416757))

(assert (not bm!147529))

(assert (not b!2416776))

(assert (not b!2416542))

(assert (not b!2416676))

(assert (not b!2416660))

(assert (not bm!147516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

