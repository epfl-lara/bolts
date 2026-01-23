; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!295294 () Bool)

(assert start!295294)

(declare-fun b!3121465 () Bool)

(assert (=> b!3121465 true))

(assert (=> b!3121465 true))

(assert (=> b!3121465 true))

(declare-fun lambda!115292 () Int)

(declare-fun lambda!115291 () Int)

(assert (=> b!3121465 (not (= lambda!115292 lambda!115291))))

(assert (=> b!3121465 true))

(assert (=> b!3121465 true))

(assert (=> b!3121465 true))

(declare-fun b!3121464 () Bool)

(declare-fun e!1949069 () Bool)

(declare-datatypes ((C!19442 0))(
  ( (C!19443 (val!11757 Int)) )
))
(declare-datatypes ((Regex!9628 0))(
  ( (ElementMatch!9628 (c!523238 C!19442)) (Concat!14949 (regOne!19768 Regex!9628) (regTwo!19768 Regex!9628)) (EmptyExpr!9628) (Star!9628 (reg!9957 Regex!9628)) (EmptyLang!9628) (Union!9628 (regOne!19769 Regex!9628) (regTwo!19769 Regex!9628)) )
))
(declare-fun r!17423 () Regex!9628)

(declare-fun validRegex!4361 (Regex!9628) Bool)

(assert (=> b!3121464 (= e!1949069 (validRegex!4361 (reg!9957 r!17423)))))

(declare-fun e!1949073 () Bool)

(declare-fun e!1949070 () Bool)

(assert (=> b!3121465 (= e!1949073 e!1949070)))

(declare-fun res!1277323 () Bool)

(assert (=> b!3121465 (=> res!1277323 e!1949070)))

(declare-fun lt!1059126 () Bool)

(assert (=> b!3121465 (= res!1277323 (not lt!1059126))))

(declare-fun Exists!1882 (Int) Bool)

(assert (=> b!3121465 (= (Exists!1882 lambda!115291) (Exists!1882 lambda!115292))))

(declare-datatypes ((Unit!49695 0))(
  ( (Unit!49696) )
))
(declare-fun lt!1059123 () Unit!49695)

(declare-fun lt!1059128 () Regex!9628)

(declare-datatypes ((List!35493 0))(
  ( (Nil!35369) (Cons!35369 (h!40789 C!19442) (t!234558 List!35493)) )
))
(declare-fun s!11993 () List!35493)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!343 (Regex!9628 List!35493) Unit!49695)

(assert (=> b!3121465 (= lt!1059123 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!343 lt!1059128 s!11993))))

(assert (=> b!3121465 (= lt!1059126 (Exists!1882 lambda!115291))))

(declare-datatypes ((tuple2!34234 0))(
  ( (tuple2!34235 (_1!20249 List!35493) (_2!20249 List!35493)) )
))
(declare-datatypes ((Option!6849 0))(
  ( (None!6848) (Some!6848 (v!34982 tuple2!34234)) )
))
(declare-fun lt!1059125 () Option!6849)

(declare-fun isDefined!5400 (Option!6849) Bool)

(assert (=> b!3121465 (= lt!1059126 (isDefined!5400 lt!1059125))))

(declare-fun lt!1059129 () Regex!9628)

(declare-fun findConcatSeparation!1243 (Regex!9628 Regex!9628 List!35493 List!35493 List!35493) Option!6849)

(assert (=> b!3121465 (= lt!1059125 (findConcatSeparation!1243 lt!1059128 lt!1059129 Nil!35369 s!11993 s!11993))))

(declare-fun lt!1059127 () Unit!49695)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1013 (Regex!9628 Regex!9628 List!35493) Unit!49695)

(assert (=> b!3121465 (= lt!1059127 (lemmaFindConcatSeparationEquivalentToExists!1013 lt!1059128 lt!1059129 s!11993))))

(declare-fun b!3121466 () Bool)

(declare-fun res!1277322 () Bool)

(assert (=> b!3121466 (=> res!1277322 e!1949069)))

(declare-fun lt!1059132 () tuple2!34234)

(declare-fun matchR!4510 (Regex!9628 List!35493) Bool)

(assert (=> b!3121466 (= res!1277322 (not (matchR!4510 lt!1059129 (_2!20249 lt!1059132))))))

(declare-fun b!3121467 () Bool)

(declare-fun e!1949066 () Bool)

(assert (=> b!3121467 (= e!1949066 e!1949073)))

(declare-fun res!1277317 () Bool)

(assert (=> b!3121467 (=> res!1277317 e!1949073)))

(declare-fun isEmpty!19716 (List!35493) Bool)

(assert (=> b!3121467 (= res!1277317 (isEmpty!19716 s!11993))))

(declare-fun matchRSpec!1765 (Regex!9628 List!35493) Bool)

(assert (=> b!3121467 (matchRSpec!1765 lt!1059129 s!11993)))

(declare-fun lt!1059131 () Unit!49695)

(declare-fun mainMatchTheorem!1765 (Regex!9628 List!35493) Unit!49695)

(assert (=> b!3121467 (= lt!1059131 (mainMatchTheorem!1765 lt!1059129 s!11993))))

(declare-fun b!3121469 () Bool)

(declare-fun e!1949074 () Bool)

(declare-fun tp_is_empty!16819 () Bool)

(declare-fun tp!978214 () Bool)

(assert (=> b!3121469 (= e!1949074 (and tp_is_empty!16819 tp!978214))))

(declare-fun b!3121470 () Bool)

(declare-fun e!1949068 () Bool)

(declare-fun tp!978216 () Bool)

(declare-fun tp!978217 () Bool)

(assert (=> b!3121470 (= e!1949068 (and tp!978216 tp!978217))))

(declare-fun b!3121471 () Bool)

(assert (=> b!3121471 (= e!1949070 e!1949069)))

(declare-fun res!1277321 () Bool)

(assert (=> b!3121471 (=> res!1277321 e!1949069)))

(assert (=> b!3121471 (= res!1277321 (not (matchR!4510 lt!1059128 (_1!20249 lt!1059132))))))

(declare-fun get!11129 (Option!6849) tuple2!34234)

(assert (=> b!3121471 (= lt!1059132 (get!11129 lt!1059125))))

(declare-fun b!3121472 () Bool)

(declare-fun tp!978215 () Bool)

(assert (=> b!3121472 (= e!1949068 tp!978215)))

(declare-fun b!3121473 () Bool)

(declare-fun e!1949072 () Bool)

(declare-fun e!1949067 () Bool)

(assert (=> b!3121473 (= e!1949072 (not e!1949067))))

(declare-fun res!1277319 () Bool)

(assert (=> b!3121473 (=> res!1277319 e!1949067)))

(declare-fun lt!1059130 () Bool)

(assert (=> b!3121473 (= res!1277319 (or lt!1059130 (is-Concat!14949 r!17423) (is-Union!9628 r!17423) (not (is-Star!9628 r!17423))))))

(assert (=> b!3121473 (= lt!1059130 (matchRSpec!1765 r!17423 s!11993))))

(assert (=> b!3121473 (= lt!1059130 (matchR!4510 r!17423 s!11993))))

(declare-fun lt!1059124 () Unit!49695)

(assert (=> b!3121473 (= lt!1059124 (mainMatchTheorem!1765 r!17423 s!11993))))

(declare-fun b!3121474 () Bool)

(declare-fun tp!978218 () Bool)

(declare-fun tp!978219 () Bool)

(assert (=> b!3121474 (= e!1949068 (and tp!978218 tp!978219))))

(declare-fun b!3121468 () Bool)

(declare-fun e!1949071 () Bool)

(assert (=> b!3121468 (= e!1949071 e!1949066)))

(declare-fun res!1277318 () Bool)

(assert (=> b!3121468 (=> res!1277318 e!1949066)))

(assert (=> b!3121468 (= res!1277318 (not (matchR!4510 lt!1059129 s!11993)))))

(assert (=> b!3121468 (= lt!1059129 (Star!9628 lt!1059128))))

(declare-fun res!1277324 () Bool)

(assert (=> start!295294 (=> (not res!1277324) (not e!1949072))))

(assert (=> start!295294 (= res!1277324 (validRegex!4361 r!17423))))

(assert (=> start!295294 e!1949072))

(assert (=> start!295294 e!1949068))

(assert (=> start!295294 e!1949074))

(declare-fun b!3121475 () Bool)

(assert (=> b!3121475 (= e!1949067 e!1949071)))

(declare-fun res!1277320 () Bool)

(assert (=> b!3121475 (=> res!1277320 e!1949071)))

(declare-fun isEmptyLang!679 (Regex!9628) Bool)

(assert (=> b!3121475 (= res!1277320 (isEmptyLang!679 lt!1059128))))

(declare-fun simplify!583 (Regex!9628) Regex!9628)

(assert (=> b!3121475 (= lt!1059128 (simplify!583 (reg!9957 r!17423)))))

(declare-fun b!3121476 () Bool)

(assert (=> b!3121476 (= e!1949068 tp_is_empty!16819)))

(assert (= (and start!295294 res!1277324) b!3121473))

(assert (= (and b!3121473 (not res!1277319)) b!3121475))

(assert (= (and b!3121475 (not res!1277320)) b!3121468))

(assert (= (and b!3121468 (not res!1277318)) b!3121467))

(assert (= (and b!3121467 (not res!1277317)) b!3121465))

(assert (= (and b!3121465 (not res!1277323)) b!3121471))

(assert (= (and b!3121471 (not res!1277321)) b!3121466))

(assert (= (and b!3121466 (not res!1277322)) b!3121464))

(assert (= (and start!295294 (is-ElementMatch!9628 r!17423)) b!3121476))

(assert (= (and start!295294 (is-Concat!14949 r!17423)) b!3121470))

(assert (= (and start!295294 (is-Star!9628 r!17423)) b!3121472))

(assert (= (and start!295294 (is-Union!9628 r!17423)) b!3121474))

(assert (= (and start!295294 (is-Cons!35369 s!11993)) b!3121469))

(declare-fun m!3408317 () Bool)

(assert (=> start!295294 m!3408317))

(declare-fun m!3408319 () Bool)

(assert (=> b!3121466 m!3408319))

(declare-fun m!3408321 () Bool)

(assert (=> b!3121467 m!3408321))

(declare-fun m!3408323 () Bool)

(assert (=> b!3121467 m!3408323))

(declare-fun m!3408325 () Bool)

(assert (=> b!3121467 m!3408325))

(declare-fun m!3408327 () Bool)

(assert (=> b!3121465 m!3408327))

(declare-fun m!3408329 () Bool)

(assert (=> b!3121465 m!3408329))

(declare-fun m!3408331 () Bool)

(assert (=> b!3121465 m!3408331))

(assert (=> b!3121465 m!3408327))

(declare-fun m!3408333 () Bool)

(assert (=> b!3121465 m!3408333))

(declare-fun m!3408335 () Bool)

(assert (=> b!3121465 m!3408335))

(declare-fun m!3408337 () Bool)

(assert (=> b!3121465 m!3408337))

(declare-fun m!3408339 () Bool)

(assert (=> b!3121473 m!3408339))

(declare-fun m!3408341 () Bool)

(assert (=> b!3121473 m!3408341))

(declare-fun m!3408343 () Bool)

(assert (=> b!3121473 m!3408343))

(declare-fun m!3408345 () Bool)

(assert (=> b!3121464 m!3408345))

(declare-fun m!3408347 () Bool)

(assert (=> b!3121471 m!3408347))

(declare-fun m!3408349 () Bool)

(assert (=> b!3121471 m!3408349))

(declare-fun m!3408351 () Bool)

(assert (=> b!3121468 m!3408351))

(declare-fun m!3408353 () Bool)

(assert (=> b!3121475 m!3408353))

(declare-fun m!3408355 () Bool)

(assert (=> b!3121475 m!3408355))

(push 1)

(assert (not b!3121465))

(assert (not b!3121470))

(assert (not b!3121466))

(assert (not start!295294))

(assert tp_is_empty!16819)

(assert (not b!3121474))

(assert (not b!3121469))

(assert (not b!3121464))

(assert (not b!3121475))

(assert (not b!3121471))

(assert (not b!3121473))

(assert (not b!3121468))

(assert (not b!3121467))

(assert (not b!3121472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3121556 () Bool)

(declare-fun e!1949118 () Option!6849)

(assert (=> b!3121556 (= e!1949118 (Some!6848 (tuple2!34235 Nil!35369 s!11993)))))

(declare-fun b!3121557 () Bool)

(declare-fun e!1949122 () Bool)

(assert (=> b!3121557 (= e!1949122 (matchR!4510 lt!1059129 s!11993))))

(declare-fun d!862570 () Bool)

(declare-fun e!1949121 () Bool)

(assert (=> d!862570 e!1949121))

(declare-fun res!1277373 () Bool)

(assert (=> d!862570 (=> res!1277373 e!1949121)))

(declare-fun e!1949119 () Bool)

(assert (=> d!862570 (= res!1277373 e!1949119)))

(declare-fun res!1277374 () Bool)

(assert (=> d!862570 (=> (not res!1277374) (not e!1949119))))

(declare-fun lt!1059171 () Option!6849)

(assert (=> d!862570 (= res!1277374 (isDefined!5400 lt!1059171))))

(assert (=> d!862570 (= lt!1059171 e!1949118)))

(declare-fun c!523245 () Bool)

(assert (=> d!862570 (= c!523245 e!1949122)))

(declare-fun res!1277376 () Bool)

(assert (=> d!862570 (=> (not res!1277376) (not e!1949122))))

(assert (=> d!862570 (= res!1277376 (matchR!4510 lt!1059128 Nil!35369))))

(assert (=> d!862570 (validRegex!4361 lt!1059128)))

(assert (=> d!862570 (= (findConcatSeparation!1243 lt!1059128 lt!1059129 Nil!35369 s!11993 s!11993) lt!1059171)))

(declare-fun b!3121558 () Bool)

(declare-fun e!1949120 () Option!6849)

(assert (=> b!3121558 (= e!1949120 None!6848)))

(declare-fun b!3121559 () Bool)

(assert (=> b!3121559 (= e!1949121 (not (isDefined!5400 lt!1059171)))))

(declare-fun b!3121560 () Bool)

(declare-fun lt!1059170 () Unit!49695)

(declare-fun lt!1059169 () Unit!49695)

(assert (=> b!3121560 (= lt!1059170 lt!1059169)))

(declare-fun ++!8506 (List!35493 List!35493) List!35493)

(assert (=> b!3121560 (= (++!8506 (++!8506 Nil!35369 (Cons!35369 (h!40789 s!11993) Nil!35369)) (t!234558 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1099 (List!35493 C!19442 List!35493 List!35493) Unit!49695)

(assert (=> b!3121560 (= lt!1059169 (lemmaMoveElementToOtherListKeepsConcatEq!1099 Nil!35369 (h!40789 s!11993) (t!234558 s!11993) s!11993))))

(assert (=> b!3121560 (= e!1949120 (findConcatSeparation!1243 lt!1059128 lt!1059129 (++!8506 Nil!35369 (Cons!35369 (h!40789 s!11993) Nil!35369)) (t!234558 s!11993) s!11993))))

(declare-fun b!3121561 () Bool)

(assert (=> b!3121561 (= e!1949118 e!1949120)))

(declare-fun c!523244 () Bool)

(assert (=> b!3121561 (= c!523244 (is-Nil!35369 s!11993))))

(declare-fun b!3121562 () Bool)

(declare-fun res!1277377 () Bool)

(assert (=> b!3121562 (=> (not res!1277377) (not e!1949119))))

(assert (=> b!3121562 (= res!1277377 (matchR!4510 lt!1059129 (_2!20249 (get!11129 lt!1059171))))))

(declare-fun b!3121563 () Bool)

(declare-fun res!1277375 () Bool)

(assert (=> b!3121563 (=> (not res!1277375) (not e!1949119))))

(assert (=> b!3121563 (= res!1277375 (matchR!4510 lt!1059128 (_1!20249 (get!11129 lt!1059171))))))

(declare-fun b!3121564 () Bool)

(assert (=> b!3121564 (= e!1949119 (= (++!8506 (_1!20249 (get!11129 lt!1059171)) (_2!20249 (get!11129 lt!1059171))) s!11993))))

(assert (= (and d!862570 res!1277376) b!3121557))

(assert (= (and d!862570 c!523245) b!3121556))

(assert (= (and d!862570 (not c!523245)) b!3121561))

(assert (= (and b!3121561 c!523244) b!3121558))

(assert (= (and b!3121561 (not c!523244)) b!3121560))

(assert (= (and d!862570 res!1277374) b!3121563))

(assert (= (and b!3121563 res!1277375) b!3121562))

(assert (= (and b!3121562 res!1277377) b!3121564))

(assert (= (and d!862570 (not res!1277373)) b!3121559))

(declare-fun m!3408397 () Bool)

(assert (=> b!3121560 m!3408397))

(assert (=> b!3121560 m!3408397))

(declare-fun m!3408399 () Bool)

(assert (=> b!3121560 m!3408399))

(declare-fun m!3408401 () Bool)

(assert (=> b!3121560 m!3408401))

(assert (=> b!3121560 m!3408397))

(declare-fun m!3408403 () Bool)

(assert (=> b!3121560 m!3408403))

(assert (=> b!3121557 m!3408351))

(declare-fun m!3408405 () Bool)

(assert (=> b!3121559 m!3408405))

(declare-fun m!3408407 () Bool)

(assert (=> b!3121564 m!3408407))

(declare-fun m!3408411 () Bool)

(assert (=> b!3121564 m!3408411))

(assert (=> d!862570 m!3408405))

(declare-fun m!3408413 () Bool)

(assert (=> d!862570 m!3408413))

(declare-fun m!3408415 () Bool)

(assert (=> d!862570 m!3408415))

(assert (=> b!3121563 m!3408407))

(declare-fun m!3408417 () Bool)

(assert (=> b!3121563 m!3408417))

(assert (=> b!3121562 m!3408407))

(declare-fun m!3408419 () Bool)

(assert (=> b!3121562 m!3408419))

(assert (=> b!3121465 d!862570))

(declare-fun d!862576 () Bool)

(declare-fun choose!18460 (Int) Bool)

(assert (=> d!862576 (= (Exists!1882 lambda!115291) (choose!18460 lambda!115291))))

(declare-fun bs!536015 () Bool)

(assert (= bs!536015 d!862576))

(declare-fun m!3408421 () Bool)

(assert (=> bs!536015 m!3408421))

(assert (=> b!3121465 d!862576))

(declare-fun bs!536016 () Bool)

(declare-fun d!862578 () Bool)

(assert (= bs!536016 (and d!862578 b!3121465)))

(declare-fun lambda!115305 () Int)

(assert (=> bs!536016 (= (= (Star!9628 lt!1059128) lt!1059129) (= lambda!115305 lambda!115291))))

(assert (=> bs!536016 (not (= lambda!115305 lambda!115292))))

(assert (=> d!862578 true))

(assert (=> d!862578 true))

(declare-fun lambda!115306 () Int)

(assert (=> bs!536016 (not (= lambda!115306 lambda!115291))))

(assert (=> bs!536016 (= (= (Star!9628 lt!1059128) lt!1059129) (= lambda!115306 lambda!115292))))

(declare-fun bs!536017 () Bool)

(assert (= bs!536017 d!862578))

(assert (=> bs!536017 (not (= lambda!115306 lambda!115305))))

(assert (=> d!862578 true))

(assert (=> d!862578 true))

(assert (=> d!862578 (= (Exists!1882 lambda!115305) (Exists!1882 lambda!115306))))

(declare-fun lt!1059174 () Unit!49695)

(declare-fun choose!18461 (Regex!9628 List!35493) Unit!49695)

(assert (=> d!862578 (= lt!1059174 (choose!18461 lt!1059128 s!11993))))

(assert (=> d!862578 (validRegex!4361 lt!1059128)))

(assert (=> d!862578 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!343 lt!1059128 s!11993) lt!1059174)))

(declare-fun m!3408423 () Bool)

(assert (=> bs!536017 m!3408423))

(declare-fun m!3408425 () Bool)

(assert (=> bs!536017 m!3408425))

(declare-fun m!3408427 () Bool)

(assert (=> bs!536017 m!3408427))

(assert (=> bs!536017 m!3408415))

(assert (=> b!3121465 d!862578))

(declare-fun d!862580 () Bool)

(declare-fun isEmpty!19718 (Option!6849) Bool)

(assert (=> d!862580 (= (isDefined!5400 lt!1059125) (not (isEmpty!19718 lt!1059125)))))

(declare-fun bs!536018 () Bool)

(assert (= bs!536018 d!862580))

(declare-fun m!3408429 () Bool)

(assert (=> bs!536018 m!3408429))

(assert (=> b!3121465 d!862580))

(declare-fun d!862582 () Bool)

(assert (=> d!862582 (= (Exists!1882 lambda!115292) (choose!18460 lambda!115292))))

(declare-fun bs!536019 () Bool)

(assert (= bs!536019 d!862582))

(declare-fun m!3408431 () Bool)

(assert (=> bs!536019 m!3408431))

(assert (=> b!3121465 d!862582))

(declare-fun bs!536020 () Bool)

(declare-fun d!862584 () Bool)

(assert (= bs!536020 (and d!862584 b!3121465)))

(declare-fun lambda!115312 () Int)

(assert (=> bs!536020 (= lambda!115312 lambda!115291)))

(assert (=> bs!536020 (not (= lambda!115312 lambda!115292))))

(declare-fun bs!536021 () Bool)

(assert (= bs!536021 (and d!862584 d!862578)))

(assert (=> bs!536021 (= (= lt!1059129 (Star!9628 lt!1059128)) (= lambda!115312 lambda!115305))))

(assert (=> bs!536021 (not (= lambda!115312 lambda!115306))))

(assert (=> d!862584 true))

(assert (=> d!862584 true))

(assert (=> d!862584 true))

(assert (=> d!862584 (= (isDefined!5400 (findConcatSeparation!1243 lt!1059128 lt!1059129 Nil!35369 s!11993 s!11993)) (Exists!1882 lambda!115312))))

(declare-fun lt!1059179 () Unit!49695)

(declare-fun choose!18462 (Regex!9628 Regex!9628 List!35493) Unit!49695)

(assert (=> d!862584 (= lt!1059179 (choose!18462 lt!1059128 lt!1059129 s!11993))))

(assert (=> d!862584 (validRegex!4361 lt!1059128)))

(assert (=> d!862584 (= (lemmaFindConcatSeparationEquivalentToExists!1013 lt!1059128 lt!1059129 s!11993) lt!1059179)))

(declare-fun bs!536022 () Bool)

(assert (= bs!536022 d!862584))

(assert (=> bs!536022 m!3408415))

(declare-fun m!3408433 () Bool)

(assert (=> bs!536022 m!3408433))

(declare-fun m!3408435 () Bool)

(assert (=> bs!536022 m!3408435))

(assert (=> bs!536022 m!3408331))

(declare-fun m!3408437 () Bool)

(assert (=> bs!536022 m!3408437))

(assert (=> bs!536022 m!3408331))

(assert (=> b!3121465 d!862584))

(declare-fun d!862586 () Bool)

(assert (=> d!862586 (= (isEmptyLang!679 lt!1059128) (is-EmptyLang!9628 lt!1059128))))

(assert (=> b!3121475 d!862586))

(declare-fun b!3121639 () Bool)

(declare-fun c!523274 () Bool)

(declare-fun call!221917 () Bool)

(assert (=> b!3121639 (= c!523274 call!221917)))

(declare-fun e!1949166 () Regex!9628)

(declare-fun e!1949168 () Regex!9628)

(assert (=> b!3121639 (= e!1949166 e!1949168)))

(declare-fun b!3121640 () Bool)

(declare-fun e!1949165 () Regex!9628)

(assert (=> b!3121640 (= e!1949165 e!1949166)))

(declare-fun lt!1059196 () Regex!9628)

(declare-fun call!221913 () Regex!9628)

(assert (=> b!3121640 (= lt!1059196 call!221913)))

(declare-fun lt!1059195 () Regex!9628)

(declare-fun call!221916 () Regex!9628)

(assert (=> b!3121640 (= lt!1059195 call!221916)))

(declare-fun res!1277409 () Bool)

(declare-fun call!221919 () Bool)

(assert (=> b!3121640 (= res!1277409 call!221919)))

(declare-fun e!1949161 () Bool)

(assert (=> b!3121640 (=> res!1277409 e!1949161)))

(declare-fun c!523272 () Bool)

(assert (=> b!3121640 (= c!523272 e!1949161)))

(declare-fun d!862588 () Bool)

(declare-fun e!1949169 () Bool)

(assert (=> d!862588 e!1949169))

(declare-fun res!1277408 () Bool)

(assert (=> d!862588 (=> (not res!1277408) (not e!1949169))))

(declare-fun lt!1059194 () Regex!9628)

(assert (=> d!862588 (= res!1277408 (validRegex!4361 lt!1059194))))

(declare-fun e!1949173 () Regex!9628)

(assert (=> d!862588 (= lt!1059194 e!1949173)))

(declare-fun c!523277 () Bool)

(assert (=> d!862588 (= c!523277 (is-EmptyLang!9628 (reg!9957 r!17423)))))

(assert (=> d!862588 (validRegex!4361 (reg!9957 r!17423))))

(assert (=> d!862588 (= (simplify!583 (reg!9957 r!17423)) lt!1059194)))

(declare-fun b!3121641 () Bool)

(declare-fun e!1949162 () Regex!9628)

(assert (=> b!3121641 (= e!1949162 EmptyExpr!9628)))

(declare-fun b!3121642 () Bool)

(declare-fun c!523273 () Bool)

(assert (=> b!3121642 (= c!523273 (is-EmptyExpr!9628 (reg!9957 r!17423)))))

(declare-fun e!1949171 () Regex!9628)

(assert (=> b!3121642 (= e!1949171 e!1949162)))

(declare-fun c!523275 () Bool)

(declare-fun bm!221908 () Bool)

(declare-fun lt!1059193 () Regex!9628)

(declare-fun lt!1059197 () Regex!9628)

(declare-fun call!221914 () Bool)

(declare-fun c!523271 () Bool)

(assert (=> bm!221908 (= call!221914 (isEmptyLang!679 (ite c!523275 lt!1059193 (ite c!523271 lt!1059197 lt!1059195))))))

(declare-fun b!3121643 () Bool)

(declare-fun e!1949172 () Regex!9628)

(assert (=> b!3121643 (= e!1949165 e!1949172)))

(assert (=> b!3121643 (= lt!1059197 call!221916)))

(declare-fun lt!1059198 () Regex!9628)

(assert (=> b!3121643 (= lt!1059198 call!221913)))

(declare-fun c!523269 () Bool)

(declare-fun call!221915 () Bool)

(assert (=> b!3121643 (= c!523269 call!221915)))

(declare-fun bm!221909 () Bool)

(declare-fun call!221918 () Regex!9628)

(assert (=> bm!221909 (= call!221916 call!221918)))

(declare-fun b!3121644 () Bool)

(assert (=> b!3121644 (= e!1949172 lt!1059198)))

(declare-fun b!3121645 () Bool)

(assert (=> b!3121645 (= e!1949161 call!221915)))

(declare-fun b!3121646 () Bool)

(assert (=> b!3121646 (= c!523271 (is-Union!9628 (reg!9957 r!17423)))))

(declare-fun e!1949163 () Regex!9628)

(assert (=> b!3121646 (= e!1949163 e!1949165)))

(declare-fun bm!221910 () Bool)

(assert (=> bm!221910 (= call!221918 (simplify!583 (ite c!523275 (reg!9957 (reg!9957 r!17423)) (ite c!523271 (regOne!19769 (reg!9957 r!17423)) (regTwo!19768 (reg!9957 r!17423))))))))

(declare-fun b!3121647 () Bool)

(declare-fun c!523270 () Bool)

(declare-fun e!1949167 () Bool)

(assert (=> b!3121647 (= c!523270 e!1949167)))

(declare-fun res!1277410 () Bool)

(assert (=> b!3121647 (=> res!1277410 e!1949167)))

(assert (=> b!3121647 (= res!1277410 call!221914)))

(assert (=> b!3121647 (= lt!1059193 call!221918)))

(declare-fun e!1949174 () Regex!9628)

(assert (=> b!3121647 (= e!1949163 e!1949174)))

(declare-fun b!3121648 () Bool)

(assert (=> b!3121648 (= e!1949167 call!221917)))

(declare-fun b!3121649 () Bool)

(declare-fun nullable!3266 (Regex!9628) Bool)

(assert (=> b!3121649 (= e!1949169 (= (nullable!3266 lt!1059194) (nullable!3266 (reg!9957 r!17423))))))

(declare-fun b!3121650 () Bool)

(declare-fun e!1949170 () Regex!9628)

(assert (=> b!3121650 (= e!1949170 (Union!9628 lt!1059197 lt!1059198))))

(declare-fun b!3121651 () Bool)

(assert (=> b!3121651 (= e!1949173 e!1949171)))

(declare-fun c!523268 () Bool)

(assert (=> b!3121651 (= c!523268 (is-ElementMatch!9628 (reg!9957 r!17423)))))

(declare-fun b!3121652 () Bool)

(assert (=> b!3121652 (= e!1949162 e!1949163)))

(assert (=> b!3121652 (= c!523275 (is-Star!9628 (reg!9957 r!17423)))))

(declare-fun bm!221911 () Bool)

(assert (=> bm!221911 (= call!221913 (simplify!583 (ite c!523271 (regTwo!19769 (reg!9957 r!17423)) (regOne!19768 (reg!9957 r!17423)))))))

(declare-fun b!3121653 () Bool)

(declare-fun c!523276 () Bool)

(assert (=> b!3121653 (= c!523276 call!221919)))

(assert (=> b!3121653 (= e!1949172 e!1949170)))

(declare-fun b!3121654 () Bool)

(declare-fun e!1949164 () Regex!9628)

(assert (=> b!3121654 (= e!1949164 lt!1059196)))

(declare-fun b!3121655 () Bool)

(assert (=> b!3121655 (= e!1949166 EmptyLang!9628)))

(declare-fun b!3121656 () Bool)

(assert (=> b!3121656 (= e!1949168 lt!1059195)))

(declare-fun b!3121657 () Bool)

(assert (=> b!3121657 (= e!1949173 EmptyLang!9628)))

(declare-fun bm!221912 () Bool)

(assert (=> bm!221912 (= call!221919 (isEmptyLang!679 (ite c!523271 lt!1059198 lt!1059196)))))

(declare-fun b!3121658 () Bool)

(assert (=> b!3121658 (= e!1949174 EmptyExpr!9628)))

(declare-fun b!3121659 () Bool)

(assert (=> b!3121659 (= e!1949171 (reg!9957 r!17423))))

(declare-fun bm!221913 () Bool)

(assert (=> bm!221913 (= call!221915 call!221914)))

(declare-fun b!3121660 () Bool)

(assert (=> b!3121660 (= e!1949164 (Concat!14949 lt!1059196 lt!1059195))))

(declare-fun b!3121661 () Bool)

(assert (=> b!3121661 (= e!1949168 e!1949164)))

(declare-fun c!523278 () Bool)

(declare-fun isEmptyExpr!677 (Regex!9628) Bool)

(assert (=> b!3121661 (= c!523278 (isEmptyExpr!677 lt!1059195))))

(declare-fun bm!221914 () Bool)

(assert (=> bm!221914 (= call!221917 (isEmptyExpr!677 (ite c!523275 lt!1059193 lt!1059196)))))

(declare-fun b!3121662 () Bool)

(assert (=> b!3121662 (= e!1949174 (Star!9628 lt!1059193))))

(declare-fun b!3121663 () Bool)

(assert (=> b!3121663 (= e!1949170 lt!1059197)))

(assert (= (and d!862588 c!523277) b!3121657))

(assert (= (and d!862588 (not c!523277)) b!3121651))

(assert (= (and b!3121651 c!523268) b!3121659))

(assert (= (and b!3121651 (not c!523268)) b!3121642))

(assert (= (and b!3121642 c!523273) b!3121641))

(assert (= (and b!3121642 (not c!523273)) b!3121652))

(assert (= (and b!3121652 c!523275) b!3121647))

(assert (= (and b!3121652 (not c!523275)) b!3121646))

(assert (= (and b!3121647 (not res!1277410)) b!3121648))

(assert (= (and b!3121647 c!523270) b!3121658))

(assert (= (and b!3121647 (not c!523270)) b!3121662))

(assert (= (and b!3121646 c!523271) b!3121643))

(assert (= (and b!3121646 (not c!523271)) b!3121640))

(assert (= (and b!3121643 c!523269) b!3121644))

(assert (= (and b!3121643 (not c!523269)) b!3121653))

(assert (= (and b!3121653 c!523276) b!3121663))

(assert (= (and b!3121653 (not c!523276)) b!3121650))

(assert (= (and b!3121640 (not res!1277409)) b!3121645))

(assert (= (and b!3121640 c!523272) b!3121655))

(assert (= (and b!3121640 (not c!523272)) b!3121639))

(assert (= (and b!3121639 c!523274) b!3121656))

(assert (= (and b!3121639 (not c!523274)) b!3121661))

(assert (= (and b!3121661 c!523278) b!3121654))

(assert (= (and b!3121661 (not c!523278)) b!3121660))

(assert (= (or b!3121643 b!3121640) bm!221909))

(assert (= (or b!3121643 b!3121640) bm!221911))

(assert (= (or b!3121653 b!3121640) bm!221912))

(assert (= (or b!3121643 b!3121645) bm!221913))

(assert (= (or b!3121648 b!3121639) bm!221914))

(assert (= (or b!3121647 bm!221909) bm!221910))

(assert (= (or b!3121647 bm!221913) bm!221908))

(assert (= (and d!862588 res!1277408) b!3121649))

(declare-fun m!3408447 () Bool)

(assert (=> bm!221914 m!3408447))

(declare-fun m!3408449 () Bool)

(assert (=> bm!221911 m!3408449))

(declare-fun m!3408451 () Bool)

(assert (=> b!3121661 m!3408451))

(declare-fun m!3408453 () Bool)

(assert (=> bm!221912 m!3408453))

(declare-fun m!3408455 () Bool)

(assert (=> d!862588 m!3408455))

(assert (=> d!862588 m!3408345))

(declare-fun m!3408457 () Bool)

(assert (=> bm!221910 m!3408457))

(declare-fun m!3408459 () Bool)

(assert (=> b!3121649 m!3408459))

(declare-fun m!3408461 () Bool)

(assert (=> b!3121649 m!3408461))

(declare-fun m!3408463 () Bool)

(assert (=> bm!221908 m!3408463))

(assert (=> b!3121475 d!862588))

(declare-fun bm!221921 () Bool)

(declare-fun call!221927 () Bool)

(declare-fun call!221926 () Bool)

(assert (=> bm!221921 (= call!221927 call!221926)))

(declare-fun b!3121682 () Bool)

(declare-fun e!1949192 () Bool)

(declare-fun e!1949190 () Bool)

(assert (=> b!3121682 (= e!1949192 e!1949190)))

(declare-fun res!1277423 () Bool)

(assert (=> b!3121682 (= res!1277423 (not (nullable!3266 (reg!9957 r!17423))))))

(assert (=> b!3121682 (=> (not res!1277423) (not e!1949190))))

(declare-fun b!3121683 () Bool)

(declare-fun e!1949193 () Bool)

(declare-fun call!221928 () Bool)

(assert (=> b!3121683 (= e!1949193 call!221928)))

(declare-fun b!3121684 () Bool)

(declare-fun res!1277421 () Bool)

(declare-fun e!1949189 () Bool)

(assert (=> b!3121684 (=> (not res!1277421) (not e!1949189))))

(assert (=> b!3121684 (= res!1277421 call!221928)))

(declare-fun e!1949194 () Bool)

(assert (=> b!3121684 (= e!1949194 e!1949189)))

(declare-fun b!3121685 () Bool)

(declare-fun e!1949195 () Bool)

(assert (=> b!3121685 (= e!1949195 e!1949192)))

(declare-fun c!523284 () Bool)

(assert (=> b!3121685 (= c!523284 (is-Star!9628 r!17423))))

(declare-fun b!3121686 () Bool)

(declare-fun res!1277424 () Bool)

(declare-fun e!1949191 () Bool)

(assert (=> b!3121686 (=> res!1277424 e!1949191)))

(assert (=> b!3121686 (= res!1277424 (not (is-Concat!14949 r!17423)))))

(assert (=> b!3121686 (= e!1949194 e!1949191)))

(declare-fun b!3121687 () Bool)

(assert (=> b!3121687 (= e!1949192 e!1949194)))

(declare-fun c!523283 () Bool)

(assert (=> b!3121687 (= c!523283 (is-Union!9628 r!17423))))

(declare-fun bm!221923 () Bool)

(assert (=> bm!221923 (= call!221926 (validRegex!4361 (ite c!523284 (reg!9957 r!17423) (ite c!523283 (regTwo!19769 r!17423) (regOne!19768 r!17423)))))))

(declare-fun b!3121688 () Bool)

(assert (=> b!3121688 (= e!1949189 call!221927)))

(declare-fun b!3121689 () Bool)

(assert (=> b!3121689 (= e!1949190 call!221926)))

(declare-fun b!3121690 () Bool)

(assert (=> b!3121690 (= e!1949191 e!1949193)))

(declare-fun res!1277422 () Bool)

(assert (=> b!3121690 (=> (not res!1277422) (not e!1949193))))

(assert (=> b!3121690 (= res!1277422 call!221927)))

(declare-fun d!862592 () Bool)

(declare-fun res!1277425 () Bool)

(assert (=> d!862592 (=> res!1277425 e!1949195)))

(assert (=> d!862592 (= res!1277425 (is-ElementMatch!9628 r!17423))))

(assert (=> d!862592 (= (validRegex!4361 r!17423) e!1949195)))

(declare-fun bm!221922 () Bool)

(assert (=> bm!221922 (= call!221928 (validRegex!4361 (ite c!523283 (regOne!19769 r!17423) (regTwo!19768 r!17423))))))

(assert (= (and d!862592 (not res!1277425)) b!3121685))

(assert (= (and b!3121685 c!523284) b!3121682))

(assert (= (and b!3121685 (not c!523284)) b!3121687))

(assert (= (and b!3121682 res!1277423) b!3121689))

(assert (= (and b!3121687 c!523283) b!3121684))

(assert (= (and b!3121687 (not c!523283)) b!3121686))

(assert (= (and b!3121684 res!1277421) b!3121688))

(assert (= (and b!3121686 (not res!1277424)) b!3121690))

(assert (= (and b!3121690 res!1277422) b!3121683))

(assert (= (or b!3121684 b!3121683) bm!221922))

(assert (= (or b!3121688 b!3121690) bm!221921))

(assert (= (or b!3121689 bm!221921) bm!221923))

(assert (=> b!3121682 m!3408461))

(declare-fun m!3408465 () Bool)

(assert (=> bm!221923 m!3408465))

(declare-fun m!3408467 () Bool)

(assert (=> bm!221922 m!3408467))

(assert (=> start!295294 d!862592))

(declare-fun bm!221924 () Bool)

(declare-fun call!221930 () Bool)

(declare-fun call!221929 () Bool)

(assert (=> bm!221924 (= call!221930 call!221929)))

(declare-fun b!3121691 () Bool)

(declare-fun e!1949199 () Bool)

(declare-fun e!1949197 () Bool)

(assert (=> b!3121691 (= e!1949199 e!1949197)))

(declare-fun res!1277428 () Bool)

(assert (=> b!3121691 (= res!1277428 (not (nullable!3266 (reg!9957 (reg!9957 r!17423)))))))

(assert (=> b!3121691 (=> (not res!1277428) (not e!1949197))))

(declare-fun b!3121692 () Bool)

(declare-fun e!1949200 () Bool)

(declare-fun call!221931 () Bool)

(assert (=> b!3121692 (= e!1949200 call!221931)))

(declare-fun b!3121693 () Bool)

(declare-fun res!1277426 () Bool)

(declare-fun e!1949196 () Bool)

(assert (=> b!3121693 (=> (not res!1277426) (not e!1949196))))

(assert (=> b!3121693 (= res!1277426 call!221931)))

(declare-fun e!1949201 () Bool)

(assert (=> b!3121693 (= e!1949201 e!1949196)))

(declare-fun b!3121694 () Bool)

(declare-fun e!1949202 () Bool)

(assert (=> b!3121694 (= e!1949202 e!1949199)))

(declare-fun c!523286 () Bool)

(assert (=> b!3121694 (= c!523286 (is-Star!9628 (reg!9957 r!17423)))))

(declare-fun b!3121695 () Bool)

(declare-fun res!1277429 () Bool)

(declare-fun e!1949198 () Bool)

(assert (=> b!3121695 (=> res!1277429 e!1949198)))

(assert (=> b!3121695 (= res!1277429 (not (is-Concat!14949 (reg!9957 r!17423))))))

(assert (=> b!3121695 (= e!1949201 e!1949198)))

(declare-fun b!3121696 () Bool)

(assert (=> b!3121696 (= e!1949199 e!1949201)))

(declare-fun c!523285 () Bool)

(assert (=> b!3121696 (= c!523285 (is-Union!9628 (reg!9957 r!17423)))))

(declare-fun bm!221926 () Bool)

(assert (=> bm!221926 (= call!221929 (validRegex!4361 (ite c!523286 (reg!9957 (reg!9957 r!17423)) (ite c!523285 (regTwo!19769 (reg!9957 r!17423)) (regOne!19768 (reg!9957 r!17423))))))))

(declare-fun b!3121697 () Bool)

(assert (=> b!3121697 (= e!1949196 call!221930)))

(declare-fun b!3121698 () Bool)

(assert (=> b!3121698 (= e!1949197 call!221929)))

(declare-fun b!3121699 () Bool)

(assert (=> b!3121699 (= e!1949198 e!1949200)))

(declare-fun res!1277427 () Bool)

(assert (=> b!3121699 (=> (not res!1277427) (not e!1949200))))

(assert (=> b!3121699 (= res!1277427 call!221930)))

(declare-fun d!862594 () Bool)

(declare-fun res!1277430 () Bool)

(assert (=> d!862594 (=> res!1277430 e!1949202)))

(assert (=> d!862594 (= res!1277430 (is-ElementMatch!9628 (reg!9957 r!17423)))))

(assert (=> d!862594 (= (validRegex!4361 (reg!9957 r!17423)) e!1949202)))

(declare-fun bm!221925 () Bool)

(assert (=> bm!221925 (= call!221931 (validRegex!4361 (ite c!523285 (regOne!19769 (reg!9957 r!17423)) (regTwo!19768 (reg!9957 r!17423)))))))

(assert (= (and d!862594 (not res!1277430)) b!3121694))

(assert (= (and b!3121694 c!523286) b!3121691))

(assert (= (and b!3121694 (not c!523286)) b!3121696))

(assert (= (and b!3121691 res!1277428) b!3121698))

(assert (= (and b!3121696 c!523285) b!3121693))

(assert (= (and b!3121696 (not c!523285)) b!3121695))

(assert (= (and b!3121693 res!1277426) b!3121697))

(assert (= (and b!3121695 (not res!1277429)) b!3121699))

(assert (= (and b!3121699 res!1277427) b!3121692))

(assert (= (or b!3121693 b!3121692) bm!221925))

(assert (= (or b!3121697 b!3121699) bm!221924))

(assert (= (or b!3121698 bm!221924) bm!221926))

(declare-fun m!3408469 () Bool)

(assert (=> b!3121691 m!3408469))

(declare-fun m!3408471 () Bool)

(assert (=> bm!221926 m!3408471))

(declare-fun m!3408473 () Bool)

(assert (=> bm!221925 m!3408473))

(assert (=> b!3121464 d!862594))

(declare-fun bs!536025 () Bool)

(declare-fun b!3121764 () Bool)

(assert (= bs!536025 (and b!3121764 b!3121465)))

(declare-fun lambda!115320 () Int)

(assert (=> bs!536025 (not (= lambda!115320 lambda!115291))))

(declare-fun bs!536026 () Bool)

(assert (= bs!536026 (and b!3121764 d!862584)))

(assert (=> bs!536026 (not (= lambda!115320 lambda!115312))))

(declare-fun bs!536027 () Bool)

(assert (= bs!536027 (and b!3121764 d!862578)))

(assert (=> bs!536027 (not (= lambda!115320 lambda!115305))))

(assert (=> bs!536025 (= (and (= (reg!9957 r!17423) lt!1059128) (= r!17423 lt!1059129)) (= lambda!115320 lambda!115292))))

(assert (=> bs!536027 (= (and (= (reg!9957 r!17423) lt!1059128) (= r!17423 (Star!9628 lt!1059128))) (= lambda!115320 lambda!115306))))

(assert (=> b!3121764 true))

(assert (=> b!3121764 true))

(declare-fun bs!536028 () Bool)

(declare-fun b!3121767 () Bool)

(assert (= bs!536028 (and b!3121767 b!3121465)))

(declare-fun lambda!115321 () Int)

(assert (=> bs!536028 (not (= lambda!115321 lambda!115291))))

(declare-fun bs!536029 () Bool)

(assert (= bs!536029 (and b!3121767 d!862584)))

(assert (=> bs!536029 (not (= lambda!115321 lambda!115312))))

(declare-fun bs!536030 () Bool)

(assert (= bs!536030 (and b!3121767 b!3121764)))

(assert (=> bs!536030 (not (= lambda!115321 lambda!115320))))

(declare-fun bs!536031 () Bool)

(assert (= bs!536031 (and b!3121767 d!862578)))

(assert (=> bs!536031 (not (= lambda!115321 lambda!115305))))

(assert (=> bs!536028 (not (= lambda!115321 lambda!115292))))

(assert (=> bs!536031 (not (= lambda!115321 lambda!115306))))

(assert (=> b!3121767 true))

(assert (=> b!3121767 true))

(declare-fun b!3121759 () Bool)

(declare-fun e!1949241 () Bool)

(declare-fun call!221936 () Bool)

(assert (=> b!3121759 (= e!1949241 call!221936)))

(declare-fun call!221937 () Bool)

(declare-fun c!523303 () Bool)

(declare-fun bm!221931 () Bool)

(assert (=> bm!221931 (= call!221937 (Exists!1882 (ite c!523303 lambda!115320 lambda!115321)))))

(declare-fun b!3121760 () Bool)

(declare-fun e!1949237 () Bool)

(assert (=> b!3121760 (= e!1949237 (matchRSpec!1765 (regTwo!19769 r!17423) s!11993))))

(declare-fun b!3121761 () Bool)

(declare-fun c!523301 () Bool)

(assert (=> b!3121761 (= c!523301 (is-Union!9628 r!17423))))

(declare-fun e!1949240 () Bool)

(declare-fun e!1949242 () Bool)

(assert (=> b!3121761 (= e!1949240 e!1949242)))

(declare-fun b!3121762 () Bool)

(assert (=> b!3121762 (= e!1949242 e!1949237)))

(declare-fun res!1277463 () Bool)

(assert (=> b!3121762 (= res!1277463 (matchRSpec!1765 (regOne!19769 r!17423) s!11993))))

(assert (=> b!3121762 (=> res!1277463 e!1949237)))

(declare-fun b!3121763 () Bool)

(declare-fun e!1949239 () Bool)

(assert (=> b!3121763 (= e!1949241 e!1949239)))

(declare-fun res!1277462 () Bool)

(assert (=> b!3121763 (= res!1277462 (not (is-EmptyLang!9628 r!17423)))))

(assert (=> b!3121763 (=> (not res!1277462) (not e!1949239))))

(declare-fun e!1949236 () Bool)

(assert (=> b!3121764 (= e!1949236 call!221937)))

(declare-fun d!862596 () Bool)

(declare-fun c!523302 () Bool)

(assert (=> d!862596 (= c!523302 (is-EmptyExpr!9628 r!17423))))

(assert (=> d!862596 (= (matchRSpec!1765 r!17423 s!11993) e!1949241)))

(declare-fun bm!221932 () Bool)

(assert (=> bm!221932 (= call!221936 (isEmpty!19716 s!11993))))

(declare-fun b!3121765 () Bool)

(declare-fun c!523304 () Bool)

(assert (=> b!3121765 (= c!523304 (is-ElementMatch!9628 r!17423))))

(assert (=> b!3121765 (= e!1949239 e!1949240)))

(declare-fun b!3121766 () Bool)

(declare-fun res!1277464 () Bool)

(assert (=> b!3121766 (=> res!1277464 e!1949236)))

(assert (=> b!3121766 (= res!1277464 call!221936)))

(declare-fun e!1949238 () Bool)

(assert (=> b!3121766 (= e!1949238 e!1949236)))

(assert (=> b!3121767 (= e!1949238 call!221937)))

(declare-fun b!3121768 () Bool)

(assert (=> b!3121768 (= e!1949240 (= s!11993 (Cons!35369 (c!523238 r!17423) Nil!35369)))))

(declare-fun b!3121769 () Bool)

(assert (=> b!3121769 (= e!1949242 e!1949238)))

(assert (=> b!3121769 (= c!523303 (is-Star!9628 r!17423))))

(assert (= (and d!862596 c!523302) b!3121759))

(assert (= (and d!862596 (not c!523302)) b!3121763))

(assert (= (and b!3121763 res!1277462) b!3121765))

(assert (= (and b!3121765 c!523304) b!3121768))

(assert (= (and b!3121765 (not c!523304)) b!3121761))

(assert (= (and b!3121761 c!523301) b!3121762))

(assert (= (and b!3121761 (not c!523301)) b!3121769))

(assert (= (and b!3121762 (not res!1277463)) b!3121760))

(assert (= (and b!3121769 c!523303) b!3121766))

(assert (= (and b!3121769 (not c!523303)) b!3121767))

(assert (= (and b!3121766 (not res!1277464)) b!3121764))

(assert (= (or b!3121764 b!3121767) bm!221931))

(assert (= (or b!3121759 b!3121766) bm!221932))

(declare-fun m!3408495 () Bool)

(assert (=> bm!221931 m!3408495))

(declare-fun m!3408497 () Bool)

(assert (=> b!3121760 m!3408497))

(declare-fun m!3408499 () Bool)

(assert (=> b!3121762 m!3408499))

(assert (=> bm!221932 m!3408321))

(assert (=> b!3121473 d!862596))

(declare-fun b!3121798 () Bool)

(declare-fun e!1949263 () Bool)

(declare-fun lt!1059212 () Bool)

(assert (=> b!3121798 (= e!1949263 (not lt!1059212))))

(declare-fun b!3121799 () Bool)

(declare-fun e!1949257 () Bool)

(declare-fun head!6920 (List!35493) C!19442)

(assert (=> b!3121799 (= e!1949257 (= (head!6920 s!11993) (c!523238 r!17423)))))

(declare-fun b!3121800 () Bool)

(declare-fun e!1949260 () Bool)

(assert (=> b!3121800 (= e!1949260 (not (= (head!6920 s!11993) (c!523238 r!17423))))))

(declare-fun b!3121801 () Bool)

(declare-fun res!1277488 () Bool)

(declare-fun e!1949258 () Bool)

(assert (=> b!3121801 (=> res!1277488 e!1949258)))

(assert (=> b!3121801 (= res!1277488 (not (is-ElementMatch!9628 r!17423)))))

(assert (=> b!3121801 (= e!1949263 e!1949258)))

(declare-fun b!3121802 () Bool)

(declare-fun res!1277482 () Bool)

(assert (=> b!3121802 (=> (not res!1277482) (not e!1949257))))

(declare-fun call!221940 () Bool)

(assert (=> b!3121802 (= res!1277482 (not call!221940))))

(declare-fun b!3121803 () Bool)

(declare-fun e!1949259 () Bool)

(assert (=> b!3121803 (= e!1949259 e!1949260)))

(declare-fun res!1277487 () Bool)

(assert (=> b!3121803 (=> res!1277487 e!1949260)))

(assert (=> b!3121803 (= res!1277487 call!221940)))

(declare-fun bm!221935 () Bool)

(assert (=> bm!221935 (= call!221940 (isEmpty!19716 s!11993))))

(declare-fun d!862600 () Bool)

(declare-fun e!1949261 () Bool)

(assert (=> d!862600 e!1949261))

(declare-fun c!523311 () Bool)

(assert (=> d!862600 (= c!523311 (is-EmptyExpr!9628 r!17423))))

(declare-fun e!1949262 () Bool)

(assert (=> d!862600 (= lt!1059212 e!1949262)))

(declare-fun c!523312 () Bool)

(assert (=> d!862600 (= c!523312 (isEmpty!19716 s!11993))))

(assert (=> d!862600 (validRegex!4361 r!17423)))

(assert (=> d!862600 (= (matchR!4510 r!17423 s!11993) lt!1059212)))

(declare-fun b!3121804 () Bool)

(assert (=> b!3121804 (= e!1949261 (= lt!1059212 call!221940))))

(declare-fun b!3121805 () Bool)

(assert (=> b!3121805 (= e!1949258 e!1949259)))

(declare-fun res!1277485 () Bool)

(assert (=> b!3121805 (=> (not res!1277485) (not e!1949259))))

(assert (=> b!3121805 (= res!1277485 (not lt!1059212))))

(declare-fun b!3121806 () Bool)

(declare-fun res!1277483 () Bool)

(assert (=> b!3121806 (=> res!1277483 e!1949258)))

(assert (=> b!3121806 (= res!1277483 e!1949257)))

(declare-fun res!1277484 () Bool)

(assert (=> b!3121806 (=> (not res!1277484) (not e!1949257))))

(assert (=> b!3121806 (= res!1277484 lt!1059212)))

(declare-fun b!3121807 () Bool)

(assert (=> b!3121807 (= e!1949262 (nullable!3266 r!17423))))

(declare-fun b!3121808 () Bool)

(declare-fun derivativeStep!2861 (Regex!9628 C!19442) Regex!9628)

(declare-fun tail!5146 (List!35493) List!35493)

(assert (=> b!3121808 (= e!1949262 (matchR!4510 (derivativeStep!2861 r!17423 (head!6920 s!11993)) (tail!5146 s!11993)))))

(declare-fun b!3121809 () Bool)

(assert (=> b!3121809 (= e!1949261 e!1949263)))

(declare-fun c!523313 () Bool)

(assert (=> b!3121809 (= c!523313 (is-EmptyLang!9628 r!17423))))

(declare-fun b!3121810 () Bool)

(declare-fun res!1277481 () Bool)

(assert (=> b!3121810 (=> (not res!1277481) (not e!1949257))))

(assert (=> b!3121810 (= res!1277481 (isEmpty!19716 (tail!5146 s!11993)))))

(declare-fun b!3121811 () Bool)

(declare-fun res!1277486 () Bool)

(assert (=> b!3121811 (=> res!1277486 e!1949260)))

(assert (=> b!3121811 (= res!1277486 (not (isEmpty!19716 (tail!5146 s!11993))))))

(assert (= (and d!862600 c!523312) b!3121807))

(assert (= (and d!862600 (not c!523312)) b!3121808))

(assert (= (and d!862600 c!523311) b!3121804))

(assert (= (and d!862600 (not c!523311)) b!3121809))

(assert (= (and b!3121809 c!523313) b!3121798))

(assert (= (and b!3121809 (not c!523313)) b!3121801))

(assert (= (and b!3121801 (not res!1277488)) b!3121806))

(assert (= (and b!3121806 res!1277484) b!3121802))

(assert (= (and b!3121802 res!1277482) b!3121810))

(assert (= (and b!3121810 res!1277481) b!3121799))

(assert (= (and b!3121806 (not res!1277483)) b!3121805))

(assert (= (and b!3121805 res!1277485) b!3121803))

(assert (= (and b!3121803 (not res!1277487)) b!3121811))

(assert (= (and b!3121811 (not res!1277486)) b!3121800))

(assert (= (or b!3121804 b!3121802 b!3121803) bm!221935))

(declare-fun m!3408501 () Bool)

(assert (=> b!3121810 m!3408501))

(assert (=> b!3121810 m!3408501))

(declare-fun m!3408503 () Bool)

(assert (=> b!3121810 m!3408503))

(assert (=> d!862600 m!3408321))

(assert (=> d!862600 m!3408317))

(declare-fun m!3408505 () Bool)

(assert (=> b!3121807 m!3408505))

(declare-fun m!3408507 () Bool)

(assert (=> b!3121800 m!3408507))

(assert (=> b!3121808 m!3408507))

(assert (=> b!3121808 m!3408507))

(declare-fun m!3408509 () Bool)

(assert (=> b!3121808 m!3408509))

(assert (=> b!3121808 m!3408501))

(assert (=> b!3121808 m!3408509))

(assert (=> b!3121808 m!3408501))

(declare-fun m!3408511 () Bool)

(assert (=> b!3121808 m!3408511))

(assert (=> bm!221935 m!3408321))

(assert (=> b!3121811 m!3408501))

(assert (=> b!3121811 m!3408501))

(assert (=> b!3121811 m!3408503))

(assert (=> b!3121799 m!3408507))

(assert (=> b!3121473 d!862600))

(declare-fun d!862602 () Bool)

(assert (=> d!862602 (= (matchR!4510 r!17423 s!11993) (matchRSpec!1765 r!17423 s!11993))))

(declare-fun lt!1059215 () Unit!49695)

(declare-fun choose!18463 (Regex!9628 List!35493) Unit!49695)

(assert (=> d!862602 (= lt!1059215 (choose!18463 r!17423 s!11993))))

(assert (=> d!862602 (validRegex!4361 r!17423)))

(assert (=> d!862602 (= (mainMatchTheorem!1765 r!17423 s!11993) lt!1059215)))

(declare-fun bs!536032 () Bool)

(assert (= bs!536032 d!862602))

(assert (=> bs!536032 m!3408341))

(assert (=> bs!536032 m!3408339))

(declare-fun m!3408513 () Bool)

(assert (=> bs!536032 m!3408513))

(assert (=> bs!536032 m!3408317))

(assert (=> b!3121473 d!862602))

(declare-fun b!3121816 () Bool)

(declare-fun e!1949272 () Bool)

(declare-fun lt!1059216 () Bool)

(assert (=> b!3121816 (= e!1949272 (not lt!1059216))))

(declare-fun b!3121817 () Bool)

(declare-fun e!1949266 () Bool)

(assert (=> b!3121817 (= e!1949266 (= (head!6920 s!11993) (c!523238 lt!1059129)))))

(declare-fun b!3121818 () Bool)

(declare-fun e!1949269 () Bool)

(assert (=> b!3121818 (= e!1949269 (not (= (head!6920 s!11993) (c!523238 lt!1059129))))))

(declare-fun b!3121819 () Bool)

(declare-fun res!1277500 () Bool)

(declare-fun e!1949267 () Bool)

(assert (=> b!3121819 (=> res!1277500 e!1949267)))

(assert (=> b!3121819 (= res!1277500 (not (is-ElementMatch!9628 lt!1059129)))))

(assert (=> b!3121819 (= e!1949272 e!1949267)))

(declare-fun b!3121820 () Bool)

(declare-fun res!1277494 () Bool)

(assert (=> b!3121820 (=> (not res!1277494) (not e!1949266))))

(declare-fun call!221941 () Bool)

(assert (=> b!3121820 (= res!1277494 (not call!221941))))

(declare-fun b!3121821 () Bool)

(declare-fun e!1949268 () Bool)

(assert (=> b!3121821 (= e!1949268 e!1949269)))

(declare-fun res!1277499 () Bool)

(assert (=> b!3121821 (=> res!1277499 e!1949269)))

(assert (=> b!3121821 (= res!1277499 call!221941)))

(declare-fun bm!221936 () Bool)

(assert (=> bm!221936 (= call!221941 (isEmpty!19716 s!11993))))

(declare-fun d!862604 () Bool)

(declare-fun e!1949270 () Bool)

(assert (=> d!862604 e!1949270))

(declare-fun c!523314 () Bool)

(assert (=> d!862604 (= c!523314 (is-EmptyExpr!9628 lt!1059129))))

(declare-fun e!1949271 () Bool)

(assert (=> d!862604 (= lt!1059216 e!1949271)))

(declare-fun c!523315 () Bool)

(assert (=> d!862604 (= c!523315 (isEmpty!19716 s!11993))))

(assert (=> d!862604 (validRegex!4361 lt!1059129)))

(assert (=> d!862604 (= (matchR!4510 lt!1059129 s!11993) lt!1059216)))

(declare-fun b!3121822 () Bool)

(assert (=> b!3121822 (= e!1949270 (= lt!1059216 call!221941))))

(declare-fun b!3121823 () Bool)

(assert (=> b!3121823 (= e!1949267 e!1949268)))

(declare-fun res!1277497 () Bool)

(assert (=> b!3121823 (=> (not res!1277497) (not e!1949268))))

(assert (=> b!3121823 (= res!1277497 (not lt!1059216))))

(declare-fun b!3121824 () Bool)

(declare-fun res!1277495 () Bool)

(assert (=> b!3121824 (=> res!1277495 e!1949267)))

(assert (=> b!3121824 (= res!1277495 e!1949266)))

(declare-fun res!1277496 () Bool)

(assert (=> b!3121824 (=> (not res!1277496) (not e!1949266))))

(assert (=> b!3121824 (= res!1277496 lt!1059216)))

(declare-fun b!3121825 () Bool)

(assert (=> b!3121825 (= e!1949271 (nullable!3266 lt!1059129))))

(declare-fun b!3121826 () Bool)

(assert (=> b!3121826 (= e!1949271 (matchR!4510 (derivativeStep!2861 lt!1059129 (head!6920 s!11993)) (tail!5146 s!11993)))))

(declare-fun b!3121827 () Bool)

(assert (=> b!3121827 (= e!1949270 e!1949272)))

(declare-fun c!523316 () Bool)

(assert (=> b!3121827 (= c!523316 (is-EmptyLang!9628 lt!1059129))))

(declare-fun b!3121828 () Bool)

(declare-fun res!1277493 () Bool)

(assert (=> b!3121828 (=> (not res!1277493) (not e!1949266))))

(assert (=> b!3121828 (= res!1277493 (isEmpty!19716 (tail!5146 s!11993)))))

(declare-fun b!3121829 () Bool)

(declare-fun res!1277498 () Bool)

(assert (=> b!3121829 (=> res!1277498 e!1949269)))

(assert (=> b!3121829 (= res!1277498 (not (isEmpty!19716 (tail!5146 s!11993))))))

(assert (= (and d!862604 c!523315) b!3121825))

(assert (= (and d!862604 (not c!523315)) b!3121826))

(assert (= (and d!862604 c!523314) b!3121822))

(assert (= (and d!862604 (not c!523314)) b!3121827))

(assert (= (and b!3121827 c!523316) b!3121816))

(assert (= (and b!3121827 (not c!523316)) b!3121819))

(assert (= (and b!3121819 (not res!1277500)) b!3121824))

(assert (= (and b!3121824 res!1277496) b!3121820))

(assert (= (and b!3121820 res!1277494) b!3121828))

(assert (= (and b!3121828 res!1277493) b!3121817))

(assert (= (and b!3121824 (not res!1277495)) b!3121823))

(assert (= (and b!3121823 res!1277497) b!3121821))

(assert (= (and b!3121821 (not res!1277499)) b!3121829))

(assert (= (and b!3121829 (not res!1277498)) b!3121818))

(assert (= (or b!3121822 b!3121820 b!3121821) bm!221936))

(assert (=> b!3121828 m!3408501))

(assert (=> b!3121828 m!3408501))

(assert (=> b!3121828 m!3408503))

(assert (=> d!862604 m!3408321))

(declare-fun m!3408515 () Bool)

(assert (=> d!862604 m!3408515))

(declare-fun m!3408517 () Bool)

(assert (=> b!3121825 m!3408517))

(assert (=> b!3121818 m!3408507))

(assert (=> b!3121826 m!3408507))

(assert (=> b!3121826 m!3408507))

(declare-fun m!3408519 () Bool)

(assert (=> b!3121826 m!3408519))

(assert (=> b!3121826 m!3408501))

(assert (=> b!3121826 m!3408519))

(assert (=> b!3121826 m!3408501))

(declare-fun m!3408521 () Bool)

(assert (=> b!3121826 m!3408521))

(assert (=> bm!221936 m!3408321))

(assert (=> b!3121829 m!3408501))

(assert (=> b!3121829 m!3408501))

(assert (=> b!3121829 m!3408503))

(assert (=> b!3121817 m!3408507))

(assert (=> b!3121468 d!862604))

(declare-fun d!862606 () Bool)

(assert (=> d!862606 (= (isEmpty!19716 s!11993) (is-Nil!35369 s!11993))))

(assert (=> b!3121467 d!862606))

(declare-fun bs!536035 () Bool)

(declare-fun b!3121835 () Bool)

(assert (= bs!536035 (and b!3121835 b!3121465)))

(declare-fun lambda!115325 () Int)

(assert (=> bs!536035 (not (= lambda!115325 lambda!115291))))

(declare-fun bs!536036 () Bool)

(assert (= bs!536036 (and b!3121835 d!862584)))

(assert (=> bs!536036 (not (= lambda!115325 lambda!115312))))

(declare-fun bs!536037 () Bool)

(assert (= bs!536037 (and b!3121835 b!3121767)))

(assert (=> bs!536037 (not (= lambda!115325 lambda!115321))))

(declare-fun bs!536038 () Bool)

(assert (= bs!536038 (and b!3121835 b!3121764)))

(assert (=> bs!536038 (= (and (= (reg!9957 lt!1059129) (reg!9957 r!17423)) (= lt!1059129 r!17423)) (= lambda!115325 lambda!115320))))

(declare-fun bs!536039 () Bool)

(assert (= bs!536039 (and b!3121835 d!862578)))

(assert (=> bs!536039 (not (= lambda!115325 lambda!115305))))

(assert (=> bs!536035 (= (= (reg!9957 lt!1059129) lt!1059128) (= lambda!115325 lambda!115292))))

(assert (=> bs!536039 (= (and (= (reg!9957 lt!1059129) lt!1059128) (= lt!1059129 (Star!9628 lt!1059128))) (= lambda!115325 lambda!115306))))

(assert (=> b!3121835 true))

(assert (=> b!3121835 true))

(declare-fun bs!536041 () Bool)

(declare-fun b!3121838 () Bool)

(assert (= bs!536041 (and b!3121838 b!3121465)))

(declare-fun lambda!115326 () Int)

(assert (=> bs!536041 (not (= lambda!115326 lambda!115291))))

(declare-fun bs!536042 () Bool)

(assert (= bs!536042 (and b!3121838 d!862584)))

(assert (=> bs!536042 (not (= lambda!115326 lambda!115312))))

(declare-fun bs!536043 () Bool)

(assert (= bs!536043 (and b!3121838 b!3121767)))

(assert (=> bs!536043 (= (and (= (regOne!19768 lt!1059129) (regOne!19768 r!17423)) (= (regTwo!19768 lt!1059129) (regTwo!19768 r!17423))) (= lambda!115326 lambda!115321))))

(declare-fun bs!536044 () Bool)

(assert (= bs!536044 (and b!3121838 b!3121764)))

(assert (=> bs!536044 (not (= lambda!115326 lambda!115320))))

(declare-fun bs!536045 () Bool)

(assert (= bs!536045 (and b!3121838 d!862578)))

(assert (=> bs!536045 (not (= lambda!115326 lambda!115305))))

(assert (=> bs!536041 (not (= lambda!115326 lambda!115292))))

(assert (=> bs!536045 (not (= lambda!115326 lambda!115306))))

(declare-fun bs!536046 () Bool)

(assert (= bs!536046 (and b!3121838 b!3121835)))

(assert (=> bs!536046 (not (= lambda!115326 lambda!115325))))

(assert (=> b!3121838 true))

(assert (=> b!3121838 true))

(declare-fun b!3121830 () Bool)

(declare-fun e!1949278 () Bool)

(declare-fun call!221942 () Bool)

(assert (=> b!3121830 (= e!1949278 call!221942)))

(declare-fun call!221943 () Bool)

(declare-fun bm!221937 () Bool)

(declare-fun c!523319 () Bool)

(assert (=> bm!221937 (= call!221943 (Exists!1882 (ite c!523319 lambda!115325 lambda!115326)))))

(declare-fun b!3121831 () Bool)

(declare-fun e!1949274 () Bool)

(assert (=> b!3121831 (= e!1949274 (matchRSpec!1765 (regTwo!19769 lt!1059129) s!11993))))

(declare-fun b!3121832 () Bool)

(declare-fun c!523317 () Bool)

(assert (=> b!3121832 (= c!523317 (is-Union!9628 lt!1059129))))

(declare-fun e!1949277 () Bool)

(declare-fun e!1949279 () Bool)

(assert (=> b!3121832 (= e!1949277 e!1949279)))

(declare-fun b!3121833 () Bool)

(assert (=> b!3121833 (= e!1949279 e!1949274)))

(declare-fun res!1277502 () Bool)

(assert (=> b!3121833 (= res!1277502 (matchRSpec!1765 (regOne!19769 lt!1059129) s!11993))))

(assert (=> b!3121833 (=> res!1277502 e!1949274)))

(declare-fun b!3121834 () Bool)

(declare-fun e!1949276 () Bool)

(assert (=> b!3121834 (= e!1949278 e!1949276)))

(declare-fun res!1277501 () Bool)

(assert (=> b!3121834 (= res!1277501 (not (is-EmptyLang!9628 lt!1059129)))))

(assert (=> b!3121834 (=> (not res!1277501) (not e!1949276))))

(declare-fun e!1949273 () Bool)

(assert (=> b!3121835 (= e!1949273 call!221943)))

(declare-fun d!862608 () Bool)

(declare-fun c!523318 () Bool)

(assert (=> d!862608 (= c!523318 (is-EmptyExpr!9628 lt!1059129))))

(assert (=> d!862608 (= (matchRSpec!1765 lt!1059129 s!11993) e!1949278)))

(declare-fun bm!221938 () Bool)

(assert (=> bm!221938 (= call!221942 (isEmpty!19716 s!11993))))

(declare-fun b!3121836 () Bool)

(declare-fun c!523320 () Bool)

(assert (=> b!3121836 (= c!523320 (is-ElementMatch!9628 lt!1059129))))

(assert (=> b!3121836 (= e!1949276 e!1949277)))

(declare-fun b!3121837 () Bool)

(declare-fun res!1277503 () Bool)

(assert (=> b!3121837 (=> res!1277503 e!1949273)))

(assert (=> b!3121837 (= res!1277503 call!221942)))

(declare-fun e!1949275 () Bool)

(assert (=> b!3121837 (= e!1949275 e!1949273)))

(assert (=> b!3121838 (= e!1949275 call!221943)))

(declare-fun b!3121839 () Bool)

(assert (=> b!3121839 (= e!1949277 (= s!11993 (Cons!35369 (c!523238 lt!1059129) Nil!35369)))))

(declare-fun b!3121840 () Bool)

(assert (=> b!3121840 (= e!1949279 e!1949275)))

(assert (=> b!3121840 (= c!523319 (is-Star!9628 lt!1059129))))

(assert (= (and d!862608 c!523318) b!3121830))

(assert (= (and d!862608 (not c!523318)) b!3121834))

(assert (= (and b!3121834 res!1277501) b!3121836))

(assert (= (and b!3121836 c!523320) b!3121839))

(assert (= (and b!3121836 (not c!523320)) b!3121832))

(assert (= (and b!3121832 c!523317) b!3121833))

(assert (= (and b!3121832 (not c!523317)) b!3121840))

(assert (= (and b!3121833 (not res!1277502)) b!3121831))

(assert (= (and b!3121840 c!523319) b!3121837))

(assert (= (and b!3121840 (not c!523319)) b!3121838))

(assert (= (and b!3121837 (not res!1277503)) b!3121835))

(assert (= (or b!3121835 b!3121838) bm!221937))

(assert (= (or b!3121830 b!3121837) bm!221938))

(declare-fun m!3408533 () Bool)

(assert (=> bm!221937 m!3408533))

(declare-fun m!3408535 () Bool)

(assert (=> b!3121831 m!3408535))

(declare-fun m!3408537 () Bool)

(assert (=> b!3121833 m!3408537))

(assert (=> bm!221938 m!3408321))

(assert (=> b!3121467 d!862608))

(declare-fun d!862616 () Bool)

(assert (=> d!862616 (= (matchR!4510 lt!1059129 s!11993) (matchRSpec!1765 lt!1059129 s!11993))))

(declare-fun lt!1059218 () Unit!49695)

(assert (=> d!862616 (= lt!1059218 (choose!18463 lt!1059129 s!11993))))

(assert (=> d!862616 (validRegex!4361 lt!1059129)))

(assert (=> d!862616 (= (mainMatchTheorem!1765 lt!1059129 s!11993) lt!1059218)))

(declare-fun bs!536049 () Bool)

(assert (= bs!536049 d!862616))

(assert (=> bs!536049 m!3408351))

(assert (=> bs!536049 m!3408323))

(declare-fun m!3408539 () Bool)

(assert (=> bs!536049 m!3408539))

(assert (=> bs!536049 m!3408515))

(assert (=> b!3121467 d!862616))

(declare-fun b!3121841 () Bool)

(declare-fun e!1949286 () Bool)

(declare-fun lt!1059219 () Bool)

(assert (=> b!3121841 (= e!1949286 (not lt!1059219))))

(declare-fun b!3121842 () Bool)

(declare-fun e!1949280 () Bool)

(assert (=> b!3121842 (= e!1949280 (= (head!6920 (_1!20249 lt!1059132)) (c!523238 lt!1059128)))))

(declare-fun b!3121843 () Bool)

(declare-fun e!1949283 () Bool)

(assert (=> b!3121843 (= e!1949283 (not (= (head!6920 (_1!20249 lt!1059132)) (c!523238 lt!1059128))))))

(declare-fun b!3121844 () Bool)

(declare-fun res!1277511 () Bool)

(declare-fun e!1949281 () Bool)

(assert (=> b!3121844 (=> res!1277511 e!1949281)))

(assert (=> b!3121844 (= res!1277511 (not (is-ElementMatch!9628 lt!1059128)))))

(assert (=> b!3121844 (= e!1949286 e!1949281)))

(declare-fun b!3121845 () Bool)

(declare-fun res!1277505 () Bool)

(assert (=> b!3121845 (=> (not res!1277505) (not e!1949280))))

(declare-fun call!221944 () Bool)

(assert (=> b!3121845 (= res!1277505 (not call!221944))))

(declare-fun b!3121846 () Bool)

(declare-fun e!1949282 () Bool)

(assert (=> b!3121846 (= e!1949282 e!1949283)))

(declare-fun res!1277510 () Bool)

(assert (=> b!3121846 (=> res!1277510 e!1949283)))

(assert (=> b!3121846 (= res!1277510 call!221944)))

(declare-fun bm!221939 () Bool)

(assert (=> bm!221939 (= call!221944 (isEmpty!19716 (_1!20249 lt!1059132)))))

(declare-fun d!862618 () Bool)

(declare-fun e!1949284 () Bool)

(assert (=> d!862618 e!1949284))

(declare-fun c!523321 () Bool)

(assert (=> d!862618 (= c!523321 (is-EmptyExpr!9628 lt!1059128))))

(declare-fun e!1949285 () Bool)

(assert (=> d!862618 (= lt!1059219 e!1949285)))

(declare-fun c!523322 () Bool)

(assert (=> d!862618 (= c!523322 (isEmpty!19716 (_1!20249 lt!1059132)))))

(assert (=> d!862618 (validRegex!4361 lt!1059128)))

(assert (=> d!862618 (= (matchR!4510 lt!1059128 (_1!20249 lt!1059132)) lt!1059219)))

(declare-fun b!3121847 () Bool)

(assert (=> b!3121847 (= e!1949284 (= lt!1059219 call!221944))))

(declare-fun b!3121848 () Bool)

(assert (=> b!3121848 (= e!1949281 e!1949282)))

(declare-fun res!1277508 () Bool)

(assert (=> b!3121848 (=> (not res!1277508) (not e!1949282))))

(assert (=> b!3121848 (= res!1277508 (not lt!1059219))))

(declare-fun b!3121849 () Bool)

(declare-fun res!1277506 () Bool)

(assert (=> b!3121849 (=> res!1277506 e!1949281)))

(assert (=> b!3121849 (= res!1277506 e!1949280)))

(declare-fun res!1277507 () Bool)

(assert (=> b!3121849 (=> (not res!1277507) (not e!1949280))))

(assert (=> b!3121849 (= res!1277507 lt!1059219)))

(declare-fun b!3121850 () Bool)

(assert (=> b!3121850 (= e!1949285 (nullable!3266 lt!1059128))))

(declare-fun b!3121851 () Bool)

(assert (=> b!3121851 (= e!1949285 (matchR!4510 (derivativeStep!2861 lt!1059128 (head!6920 (_1!20249 lt!1059132))) (tail!5146 (_1!20249 lt!1059132))))))

(declare-fun b!3121852 () Bool)

(assert (=> b!3121852 (= e!1949284 e!1949286)))

(declare-fun c!523323 () Bool)

(assert (=> b!3121852 (= c!523323 (is-EmptyLang!9628 lt!1059128))))

(declare-fun b!3121853 () Bool)

(declare-fun res!1277504 () Bool)

(assert (=> b!3121853 (=> (not res!1277504) (not e!1949280))))

(assert (=> b!3121853 (= res!1277504 (isEmpty!19716 (tail!5146 (_1!20249 lt!1059132))))))

(declare-fun b!3121854 () Bool)

(declare-fun res!1277509 () Bool)

(assert (=> b!3121854 (=> res!1277509 e!1949283)))

(assert (=> b!3121854 (= res!1277509 (not (isEmpty!19716 (tail!5146 (_1!20249 lt!1059132)))))))

(assert (= (and d!862618 c!523322) b!3121850))

(assert (= (and d!862618 (not c!523322)) b!3121851))

(assert (= (and d!862618 c!523321) b!3121847))

(assert (= (and d!862618 (not c!523321)) b!3121852))

(assert (= (and b!3121852 c!523323) b!3121841))

(assert (= (and b!3121852 (not c!523323)) b!3121844))

(assert (= (and b!3121844 (not res!1277511)) b!3121849))

(assert (= (and b!3121849 res!1277507) b!3121845))

(assert (= (and b!3121845 res!1277505) b!3121853))

(assert (= (and b!3121853 res!1277504) b!3121842))

(assert (= (and b!3121849 (not res!1277506)) b!3121848))

(assert (= (and b!3121848 res!1277508) b!3121846))

(assert (= (and b!3121846 (not res!1277510)) b!3121854))

(assert (= (and b!3121854 (not res!1277509)) b!3121843))

(assert (= (or b!3121847 b!3121845 b!3121846) bm!221939))

(declare-fun m!3408541 () Bool)

(assert (=> b!3121853 m!3408541))

(assert (=> b!3121853 m!3408541))

(declare-fun m!3408543 () Bool)

(assert (=> b!3121853 m!3408543))

(declare-fun m!3408545 () Bool)

(assert (=> d!862618 m!3408545))

(assert (=> d!862618 m!3408415))

(declare-fun m!3408547 () Bool)

(assert (=> b!3121850 m!3408547))

(declare-fun m!3408549 () Bool)

(assert (=> b!3121843 m!3408549))

(assert (=> b!3121851 m!3408549))

(assert (=> b!3121851 m!3408549))

(declare-fun m!3408551 () Bool)

(assert (=> b!3121851 m!3408551))

(assert (=> b!3121851 m!3408541))

(assert (=> b!3121851 m!3408551))

(assert (=> b!3121851 m!3408541))

(declare-fun m!3408553 () Bool)

(assert (=> b!3121851 m!3408553))

(assert (=> bm!221939 m!3408545))

(assert (=> b!3121854 m!3408541))

(assert (=> b!3121854 m!3408541))

(assert (=> b!3121854 m!3408543))

(assert (=> b!3121842 m!3408549))

(assert (=> b!3121471 d!862618))

(declare-fun d!862620 () Bool)

(assert (=> d!862620 (= (get!11129 lt!1059125) (v!34982 lt!1059125))))

(assert (=> b!3121471 d!862620))

(declare-fun b!3121855 () Bool)

(declare-fun e!1949293 () Bool)

(declare-fun lt!1059220 () Bool)

(assert (=> b!3121855 (= e!1949293 (not lt!1059220))))

(declare-fun b!3121856 () Bool)

(declare-fun e!1949287 () Bool)

(assert (=> b!3121856 (= e!1949287 (= (head!6920 (_2!20249 lt!1059132)) (c!523238 lt!1059129)))))

(declare-fun b!3121857 () Bool)

(declare-fun e!1949290 () Bool)

(assert (=> b!3121857 (= e!1949290 (not (= (head!6920 (_2!20249 lt!1059132)) (c!523238 lt!1059129))))))

(declare-fun b!3121858 () Bool)

(declare-fun res!1277519 () Bool)

(declare-fun e!1949288 () Bool)

(assert (=> b!3121858 (=> res!1277519 e!1949288)))

(assert (=> b!3121858 (= res!1277519 (not (is-ElementMatch!9628 lt!1059129)))))

(assert (=> b!3121858 (= e!1949293 e!1949288)))

(declare-fun b!3121859 () Bool)

(declare-fun res!1277513 () Bool)

(assert (=> b!3121859 (=> (not res!1277513) (not e!1949287))))

(declare-fun call!221945 () Bool)

(assert (=> b!3121859 (= res!1277513 (not call!221945))))

(declare-fun b!3121860 () Bool)

(declare-fun e!1949289 () Bool)

(assert (=> b!3121860 (= e!1949289 e!1949290)))

(declare-fun res!1277518 () Bool)

(assert (=> b!3121860 (=> res!1277518 e!1949290)))

(assert (=> b!3121860 (= res!1277518 call!221945)))

(declare-fun bm!221940 () Bool)

(assert (=> bm!221940 (= call!221945 (isEmpty!19716 (_2!20249 lt!1059132)))))

(declare-fun d!862622 () Bool)

(declare-fun e!1949291 () Bool)

(assert (=> d!862622 e!1949291))

(declare-fun c!523324 () Bool)

(assert (=> d!862622 (= c!523324 (is-EmptyExpr!9628 lt!1059129))))

(declare-fun e!1949292 () Bool)

(assert (=> d!862622 (= lt!1059220 e!1949292)))

(declare-fun c!523325 () Bool)

(assert (=> d!862622 (= c!523325 (isEmpty!19716 (_2!20249 lt!1059132)))))

(assert (=> d!862622 (validRegex!4361 lt!1059129)))

(assert (=> d!862622 (= (matchR!4510 lt!1059129 (_2!20249 lt!1059132)) lt!1059220)))

(declare-fun b!3121861 () Bool)

(assert (=> b!3121861 (= e!1949291 (= lt!1059220 call!221945))))

(declare-fun b!3121862 () Bool)

(assert (=> b!3121862 (= e!1949288 e!1949289)))

(declare-fun res!1277516 () Bool)

(assert (=> b!3121862 (=> (not res!1277516) (not e!1949289))))

(assert (=> b!3121862 (= res!1277516 (not lt!1059220))))

(declare-fun b!3121863 () Bool)

(declare-fun res!1277514 () Bool)

(assert (=> b!3121863 (=> res!1277514 e!1949288)))

(assert (=> b!3121863 (= res!1277514 e!1949287)))

(declare-fun res!1277515 () Bool)

(assert (=> b!3121863 (=> (not res!1277515) (not e!1949287))))

(assert (=> b!3121863 (= res!1277515 lt!1059220)))

(declare-fun b!3121864 () Bool)

(assert (=> b!3121864 (= e!1949292 (nullable!3266 lt!1059129))))

(declare-fun b!3121865 () Bool)

(assert (=> b!3121865 (= e!1949292 (matchR!4510 (derivativeStep!2861 lt!1059129 (head!6920 (_2!20249 lt!1059132))) (tail!5146 (_2!20249 lt!1059132))))))

(declare-fun b!3121866 () Bool)

(assert (=> b!3121866 (= e!1949291 e!1949293)))

(declare-fun c!523326 () Bool)

(assert (=> b!3121866 (= c!523326 (is-EmptyLang!9628 lt!1059129))))

(declare-fun b!3121867 () Bool)

(declare-fun res!1277512 () Bool)

(assert (=> b!3121867 (=> (not res!1277512) (not e!1949287))))

(assert (=> b!3121867 (= res!1277512 (isEmpty!19716 (tail!5146 (_2!20249 lt!1059132))))))

(declare-fun b!3121868 () Bool)

(declare-fun res!1277517 () Bool)

(assert (=> b!3121868 (=> res!1277517 e!1949290)))

(assert (=> b!3121868 (= res!1277517 (not (isEmpty!19716 (tail!5146 (_2!20249 lt!1059132)))))))

(assert (= (and d!862622 c!523325) b!3121864))

(assert (= (and d!862622 (not c!523325)) b!3121865))

(assert (= (and d!862622 c!523324) b!3121861))

(assert (= (and d!862622 (not c!523324)) b!3121866))

(assert (= (and b!3121866 c!523326) b!3121855))

(assert (= (and b!3121866 (not c!523326)) b!3121858))

(assert (= (and b!3121858 (not res!1277519)) b!3121863))

(assert (= (and b!3121863 res!1277515) b!3121859))

(assert (= (and b!3121859 res!1277513) b!3121867))

(assert (= (and b!3121867 res!1277512) b!3121856))

(assert (= (and b!3121863 (not res!1277514)) b!3121862))

(assert (= (and b!3121862 res!1277516) b!3121860))

(assert (= (and b!3121860 (not res!1277518)) b!3121868))

(assert (= (and b!3121868 (not res!1277517)) b!3121857))

(assert (= (or b!3121861 b!3121859 b!3121860) bm!221940))

(declare-fun m!3408555 () Bool)

(assert (=> b!3121867 m!3408555))

(assert (=> b!3121867 m!3408555))

(declare-fun m!3408557 () Bool)

(assert (=> b!3121867 m!3408557))

(declare-fun m!3408559 () Bool)

(assert (=> d!862622 m!3408559))

(assert (=> d!862622 m!3408515))

(assert (=> b!3121864 m!3408517))

(declare-fun m!3408561 () Bool)

(assert (=> b!3121857 m!3408561))

(assert (=> b!3121865 m!3408561))

(assert (=> b!3121865 m!3408561))

(declare-fun m!3408563 () Bool)

(assert (=> b!3121865 m!3408563))

(assert (=> b!3121865 m!3408555))

(assert (=> b!3121865 m!3408563))

(assert (=> b!3121865 m!3408555))

(declare-fun m!3408565 () Bool)

(assert (=> b!3121865 m!3408565))

(assert (=> bm!221940 m!3408559))

(assert (=> b!3121868 m!3408555))

(assert (=> b!3121868 m!3408555))

(assert (=> b!3121868 m!3408557))

(assert (=> b!3121856 m!3408561))

(assert (=> b!3121466 d!862622))

(declare-fun b!3121882 () Bool)

(declare-fun e!1949296 () Bool)

(declare-fun tp!978251 () Bool)

(declare-fun tp!978250 () Bool)

(assert (=> b!3121882 (= e!1949296 (and tp!978251 tp!978250))))

(declare-fun b!3121879 () Bool)

(assert (=> b!3121879 (= e!1949296 tp_is_empty!16819)))

(declare-fun b!3121881 () Bool)

(declare-fun tp!978248 () Bool)

(assert (=> b!3121881 (= e!1949296 tp!978248)))

(declare-fun b!3121880 () Bool)

(declare-fun tp!978252 () Bool)

(declare-fun tp!978249 () Bool)

(assert (=> b!3121880 (= e!1949296 (and tp!978252 tp!978249))))

(assert (=> b!3121470 (= tp!978216 e!1949296)))

(assert (= (and b!3121470 (is-ElementMatch!9628 (regOne!19768 r!17423))) b!3121879))

(assert (= (and b!3121470 (is-Concat!14949 (regOne!19768 r!17423))) b!3121880))

(assert (= (and b!3121470 (is-Star!9628 (regOne!19768 r!17423))) b!3121881))

(assert (= (and b!3121470 (is-Union!9628 (regOne!19768 r!17423))) b!3121882))

(declare-fun b!3121886 () Bool)

(declare-fun e!1949297 () Bool)

(declare-fun tp!978256 () Bool)

(declare-fun tp!978255 () Bool)

(assert (=> b!3121886 (= e!1949297 (and tp!978256 tp!978255))))

(declare-fun b!3121883 () Bool)

(assert (=> b!3121883 (= e!1949297 tp_is_empty!16819)))

(declare-fun b!3121885 () Bool)

(declare-fun tp!978253 () Bool)

(assert (=> b!3121885 (= e!1949297 tp!978253)))

(declare-fun b!3121884 () Bool)

(declare-fun tp!978257 () Bool)

(declare-fun tp!978254 () Bool)

(assert (=> b!3121884 (= e!1949297 (and tp!978257 tp!978254))))

(assert (=> b!3121470 (= tp!978217 e!1949297)))

(assert (= (and b!3121470 (is-ElementMatch!9628 (regTwo!19768 r!17423))) b!3121883))

(assert (= (and b!3121470 (is-Concat!14949 (regTwo!19768 r!17423))) b!3121884))

(assert (= (and b!3121470 (is-Star!9628 (regTwo!19768 r!17423))) b!3121885))

(assert (= (and b!3121470 (is-Union!9628 (regTwo!19768 r!17423))) b!3121886))

(declare-fun b!3121891 () Bool)

(declare-fun e!1949300 () Bool)

(declare-fun tp!978260 () Bool)

(assert (=> b!3121891 (= e!1949300 (and tp_is_empty!16819 tp!978260))))

(assert (=> b!3121469 (= tp!978214 e!1949300)))

(assert (= (and b!3121469 (is-Cons!35369 (t!234558 s!11993))) b!3121891))

(declare-fun b!3121895 () Bool)

(declare-fun e!1949301 () Bool)

(declare-fun tp!978264 () Bool)

(declare-fun tp!978263 () Bool)

(assert (=> b!3121895 (= e!1949301 (and tp!978264 tp!978263))))

(declare-fun b!3121892 () Bool)

(assert (=> b!3121892 (= e!1949301 tp_is_empty!16819)))

(declare-fun b!3121894 () Bool)

(declare-fun tp!978261 () Bool)

(assert (=> b!3121894 (= e!1949301 tp!978261)))

(declare-fun b!3121893 () Bool)

(declare-fun tp!978265 () Bool)

(declare-fun tp!978262 () Bool)

(assert (=> b!3121893 (= e!1949301 (and tp!978265 tp!978262))))

(assert (=> b!3121474 (= tp!978218 e!1949301)))

(assert (= (and b!3121474 (is-ElementMatch!9628 (regOne!19769 r!17423))) b!3121892))

(assert (= (and b!3121474 (is-Concat!14949 (regOne!19769 r!17423))) b!3121893))

(assert (= (and b!3121474 (is-Star!9628 (regOne!19769 r!17423))) b!3121894))

(assert (= (and b!3121474 (is-Union!9628 (regOne!19769 r!17423))) b!3121895))

(declare-fun b!3121899 () Bool)

(declare-fun e!1949302 () Bool)

(declare-fun tp!978269 () Bool)

(declare-fun tp!978268 () Bool)

(assert (=> b!3121899 (= e!1949302 (and tp!978269 tp!978268))))

(declare-fun b!3121896 () Bool)

(assert (=> b!3121896 (= e!1949302 tp_is_empty!16819)))

(declare-fun b!3121898 () Bool)

(declare-fun tp!978266 () Bool)

(assert (=> b!3121898 (= e!1949302 tp!978266)))

(declare-fun b!3121897 () Bool)

(declare-fun tp!978270 () Bool)

(declare-fun tp!978267 () Bool)

(assert (=> b!3121897 (= e!1949302 (and tp!978270 tp!978267))))

(assert (=> b!3121474 (= tp!978219 e!1949302)))

(assert (= (and b!3121474 (is-ElementMatch!9628 (regTwo!19769 r!17423))) b!3121896))

(assert (= (and b!3121474 (is-Concat!14949 (regTwo!19769 r!17423))) b!3121897))

(assert (= (and b!3121474 (is-Star!9628 (regTwo!19769 r!17423))) b!3121898))

(assert (= (and b!3121474 (is-Union!9628 (regTwo!19769 r!17423))) b!3121899))

(declare-fun b!3121903 () Bool)

(declare-fun e!1949303 () Bool)

(declare-fun tp!978274 () Bool)

(declare-fun tp!978273 () Bool)

(assert (=> b!3121903 (= e!1949303 (and tp!978274 tp!978273))))

(declare-fun b!3121900 () Bool)

(assert (=> b!3121900 (= e!1949303 tp_is_empty!16819)))

(declare-fun b!3121902 () Bool)

(declare-fun tp!978271 () Bool)

(assert (=> b!3121902 (= e!1949303 tp!978271)))

(declare-fun b!3121901 () Bool)

(declare-fun tp!978275 () Bool)

(declare-fun tp!978272 () Bool)

(assert (=> b!3121901 (= e!1949303 (and tp!978275 tp!978272))))

(assert (=> b!3121472 (= tp!978215 e!1949303)))

(assert (= (and b!3121472 (is-ElementMatch!9628 (reg!9957 r!17423))) b!3121900))

(assert (= (and b!3121472 (is-Concat!14949 (reg!9957 r!17423))) b!3121901))

(assert (= (and b!3121472 (is-Star!9628 (reg!9957 r!17423))) b!3121902))

(assert (= (and b!3121472 (is-Union!9628 (reg!9957 r!17423))) b!3121903))

(push 1)

(assert (not b!3121901))

(assert (not d!862604))

(assert (not bm!221937))

(assert (not b!3121826))

(assert (not b!3121564))

(assert (not b!3121559))

(assert (not b!3121760))

(assert (not b!3121557))

(assert (not b!3121762))

(assert (not bm!221912))

(assert (not bm!221922))

(assert (not d!862582))

(assert (not b!3121831))

(assert (not bm!221935))

(assert (not b!3121682))

(assert (not b!3121829))

(assert (not b!3121865))

(assert (not b!3121807))

(assert (not bm!221939))

(assert (not b!3121902))

(assert (not b!3121893))

(assert (not d!862570))

(assert (not b!3121856))

(assert tp_is_empty!16819)

(assert (not d!862622))

(assert (not b!3121560))

(assert (not bm!221925))

(assert (not b!3121854))

(assert (not bm!221938))

(assert (not b!3121649))

(assert (not b!3121853))

(assert (not bm!221914))

(assert (not d!862576))

(assert (not d!862584))

(assert (not d!862600))

(assert (not b!3121897))

(assert (not b!3121884))

(assert (not b!3121867))

(assert (not b!3121563))

(assert (not b!3121899))

(assert (not b!3121818))

(assert (not b!3121833))

(assert (not b!3121691))

(assert (not bm!221936))

(assert (not bm!221940))

(assert (not b!3121661))

(assert (not b!3121895))

(assert (not bm!221908))

(assert (not d!862602))

(assert (not b!3121851))

(assert (not b!3121898))

(assert (not b!3121843))

(assert (not b!3121828))

(assert (not b!3121842))

(assert (not b!3121891))

(assert (not b!3121825))

(assert (not bm!221910))

(assert (not b!3121903))

(assert (not b!3121799))

(assert (not d!862578))

(assert (not b!3121857))

(assert (not b!3121562))

(assert (not b!3121881))

(assert (not b!3121894))

(assert (not bm!221911))

(assert (not b!3121850))

(assert (not b!3121817))

(assert (not b!3121868))

(assert (not bm!221931))

(assert (not b!3121808))

(assert (not bm!221926))

(assert (not d!862618))

(assert (not b!3121886))

(assert (not b!3121864))

(assert (not b!3121885))

(assert (not b!3121880))

(assert (not bm!221923))

(assert (not d!862580))

(assert (not b!3121810))

(assert (not d!862588))

(assert (not b!3121882))

(assert (not b!3121800))

(assert (not bm!221932))

(assert (not b!3121811))

(assert (not d!862616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

