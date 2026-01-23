; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!245110 () Bool)

(assert start!245110)

(declare-fun b!2513443 () Bool)

(declare-fun e!1592644 () Bool)

(declare-datatypes ((C!15106 0))(
  ( (C!15107 (val!9205 Int)) )
))
(declare-datatypes ((Regex!7474 0))(
  ( (ElementMatch!7474 (c!400508 C!15106)) (Concat!12170 (regOne!15460 Regex!7474) (regTwo!15460 Regex!7474)) (EmptyExpr!7474) (Star!7474 (reg!7803 Regex!7474)) (EmptyLang!7474) (Union!7474 (regOne!15461 Regex!7474) (regTwo!15461 Regex!7474)) )
))
(declare-fun lt!898292 () Regex!7474)

(declare-fun validRegex!3100 (Regex!7474) Bool)

(assert (=> b!2513443 (= e!1592644 (validRegex!3100 lt!898292))))

(declare-fun b!2513444 () Bool)

(declare-fun e!1592645 () Bool)

(assert (=> b!2513444 (= e!1592645 e!1592644)))

(declare-fun res!1062482 () Bool)

(assert (=> b!2513444 (=> res!1062482 e!1592644)))

(declare-datatypes ((List!29539 0))(
  ( (Nil!29439) (Cons!29439 (h!34859 C!15106) (t!211238 List!29539)) )
))
(declare-datatypes ((tuple2!29478 0))(
  ( (tuple2!29479 (_1!17281 List!29539) (_2!17281 List!29539)) )
))
(declare-fun lt!898294 () tuple2!29478)

(declare-fun tl!4068 () List!29539)

(declare-fun ++!7208 (List!29539 List!29539) List!29539)

(assert (=> b!2513444 (= res!1062482 (not (= (++!7208 (_1!17281 lt!898294) (_2!17281 lt!898294)) tl!4068)))))

(declare-datatypes ((Option!5859 0))(
  ( (None!5858) (Some!5858 (v!31789 tuple2!29478)) )
))
(declare-fun lt!898299 () Option!5859)

(declare-fun get!9175 (Option!5859) tuple2!29478)

(assert (=> b!2513444 (= lt!898294 (get!9175 lt!898299))))

(declare-fun isDefined!4681 (Option!5859) Bool)

(assert (=> b!2513444 (isDefined!4681 lt!898299)))

(declare-fun r!27340 () Regex!7474)

(declare-fun findConcatSeparation!881 (Regex!7474 Regex!7474 List!29539 List!29539 List!29539) Option!5859)

(assert (=> b!2513444 (= lt!898299 (findConcatSeparation!881 lt!898292 (regTwo!15460 r!27340) Nil!29439 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43197 0))(
  ( (Unit!43198) )
))
(declare-fun lt!898298 () Unit!43197)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!163 (Regex!7474 Regex!7474 List!29539) Unit!43197)

(assert (=> b!2513444 (= lt!898298 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!163 lt!898292 (regTwo!15460 r!27340) tl!4068))))

(declare-fun b!2513445 () Bool)

(declare-fun e!1592648 () Bool)

(declare-fun tp!803565 () Bool)

(declare-fun tp!803564 () Bool)

(assert (=> b!2513445 (= e!1592648 (and tp!803565 tp!803564))))

(declare-fun res!1062483 () Bool)

(declare-fun e!1592647 () Bool)

(assert (=> start!245110 (=> (not res!1062483) (not e!1592647))))

(assert (=> start!245110 (= res!1062483 (validRegex!3100 r!27340))))

(assert (=> start!245110 e!1592647))

(assert (=> start!245110 e!1592648))

(declare-fun tp_is_empty!12803 () Bool)

(assert (=> start!245110 tp_is_empty!12803))

(declare-fun e!1592643 () Bool)

(assert (=> start!245110 e!1592643))

(declare-fun b!2513446 () Bool)

(declare-fun res!1062479 () Bool)

(assert (=> b!2513446 (=> (not res!1062479) (not e!1592647))))

(assert (=> b!2513446 (= res!1062479 (and (not (is-EmptyExpr!7474 r!27340)) (not (is-EmptyLang!7474 r!27340)) (not (is-ElementMatch!7474 r!27340)) (not (is-Union!7474 r!27340)) (not (is-Star!7474 r!27340))))))

(declare-fun b!2513447 () Bool)

(declare-fun tp!803568 () Bool)

(declare-fun tp!803566 () Bool)

(assert (=> b!2513447 (= e!1592648 (and tp!803568 tp!803566))))

(declare-fun b!2513448 () Bool)

(declare-fun res!1062480 () Bool)

(assert (=> b!2513448 (=> (not res!1062480) (not e!1592647))))

(declare-fun nullable!2391 (Regex!7474) Bool)

(assert (=> b!2513448 (= res!1062480 (not (nullable!2391 (regOne!15460 r!27340))))))

(declare-fun b!2513449 () Bool)

(declare-fun tp!803563 () Bool)

(assert (=> b!2513449 (= e!1592648 tp!803563)))

(declare-fun b!2513450 () Bool)

(assert (=> b!2513450 (= e!1592648 tp_is_empty!12803)))

(declare-fun b!2513451 () Bool)

(declare-fun e!1592646 () Bool)

(declare-fun matchR!3473 (Regex!7474 List!29539) Bool)

(assert (=> b!2513451 (= e!1592646 (matchR!3473 EmptyLang!7474 tl!4068))))

(declare-fun b!2513452 () Bool)

(declare-fun tp!803567 () Bool)

(assert (=> b!2513452 (= e!1592643 (and tp_is_empty!12803 tp!803567))))

(declare-fun b!2513453 () Bool)

(assert (=> b!2513453 (= e!1592647 (not e!1592645))))

(declare-fun res!1062481 () Bool)

(assert (=> b!2513453 (=> res!1062481 e!1592645)))

(declare-fun lt!898297 () Bool)

(assert (=> b!2513453 (= res!1062481 (not lt!898297))))

(declare-fun derivative!169 (Regex!7474 List!29539) Regex!7474)

(assert (=> b!2513453 (= (derivative!169 EmptyLang!7474 tl!4068) EmptyLang!7474)))

(declare-fun lt!898293 () Unit!43197)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!21 (Regex!7474 List!29539) Unit!43197)

(assert (=> b!2513453 (= lt!898293 (lemmaEmptyLangDerivativeIsAFixPoint!21 EmptyLang!7474 tl!4068))))

(assert (=> b!2513453 e!1592646))

(declare-fun res!1062478 () Bool)

(assert (=> b!2513453 (=> res!1062478 e!1592646)))

(assert (=> b!2513453 (= res!1062478 lt!898297)))

(declare-fun lt!898300 () Regex!7474)

(assert (=> b!2513453 (= lt!898297 (matchR!3473 lt!898300 tl!4068))))

(declare-fun lt!898291 () Unit!43197)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!161 (Regex!7474 Regex!7474 List!29539) Unit!43197)

(assert (=> b!2513453 (= lt!898291 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!161 lt!898300 EmptyLang!7474 tl!4068))))

(declare-fun lt!898295 () Regex!7474)

(assert (=> b!2513453 (= (matchR!3473 lt!898295 tl!4068) (matchR!3473 (derivative!169 lt!898295 tl!4068) Nil!29439))))

(declare-fun lt!898296 () Unit!43197)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!119 (Regex!7474 List!29539) Unit!43197)

(assert (=> b!2513453 (= lt!898296 (lemmaMatchRIsSameAsWholeDerivativeAndNil!119 lt!898295 tl!4068))))

(assert (=> b!2513453 (= lt!898295 (Union!7474 lt!898300 EmptyLang!7474))))

(assert (=> b!2513453 (= lt!898300 (Concat!12170 lt!898292 (regTwo!15460 r!27340)))))

(declare-fun c!14016 () C!15106)

(declare-fun derivativeStep!2043 (Regex!7474 C!15106) Regex!7474)

(assert (=> b!2513453 (= lt!898292 (derivativeStep!2043 (regOne!15460 r!27340) c!14016))))

(declare-fun b!2513454 () Bool)

(declare-fun res!1062477 () Bool)

(assert (=> b!2513454 (=> (not res!1062477) (not e!1592647))))

(assert (=> b!2513454 (= res!1062477 (nullable!2391 (derivative!169 (derivativeStep!2043 r!27340 c!14016) tl!4068)))))

(assert (= (and start!245110 res!1062483) b!2513454))

(assert (= (and b!2513454 res!1062477) b!2513446))

(assert (= (and b!2513446 res!1062479) b!2513448))

(assert (= (and b!2513448 res!1062480) b!2513453))

(assert (= (and b!2513453 (not res!1062478)) b!2513451))

(assert (= (and b!2513453 (not res!1062481)) b!2513444))

(assert (= (and b!2513444 (not res!1062482)) b!2513443))

(assert (= (and start!245110 (is-ElementMatch!7474 r!27340)) b!2513450))

(assert (= (and start!245110 (is-Concat!12170 r!27340)) b!2513445))

(assert (= (and start!245110 (is-Star!7474 r!27340)) b!2513449))

(assert (= (and start!245110 (is-Union!7474 r!27340)) b!2513447))

(assert (= (and start!245110 (is-Cons!29439 tl!4068)) b!2513452))

(declare-fun m!2871285 () Bool)

(assert (=> b!2513448 m!2871285))

(declare-fun m!2871287 () Bool)

(assert (=> b!2513454 m!2871287))

(assert (=> b!2513454 m!2871287))

(declare-fun m!2871289 () Bool)

(assert (=> b!2513454 m!2871289))

(assert (=> b!2513454 m!2871289))

(declare-fun m!2871291 () Bool)

(assert (=> b!2513454 m!2871291))

(declare-fun m!2871293 () Bool)

(assert (=> b!2513444 m!2871293))

(declare-fun m!2871295 () Bool)

(assert (=> b!2513444 m!2871295))

(declare-fun m!2871297 () Bool)

(assert (=> b!2513444 m!2871297))

(declare-fun m!2871299 () Bool)

(assert (=> b!2513444 m!2871299))

(declare-fun m!2871301 () Bool)

(assert (=> b!2513444 m!2871301))

(declare-fun m!2871303 () Bool)

(assert (=> start!245110 m!2871303))

(declare-fun m!2871305 () Bool)

(assert (=> b!2513451 m!2871305))

(declare-fun m!2871307 () Bool)

(assert (=> b!2513453 m!2871307))

(declare-fun m!2871309 () Bool)

(assert (=> b!2513453 m!2871309))

(declare-fun m!2871311 () Bool)

(assert (=> b!2513453 m!2871311))

(declare-fun m!2871313 () Bool)

(assert (=> b!2513453 m!2871313))

(declare-fun m!2871315 () Bool)

(assert (=> b!2513453 m!2871315))

(declare-fun m!2871317 () Bool)

(assert (=> b!2513453 m!2871317))

(assert (=> b!2513453 m!2871313))

(declare-fun m!2871319 () Bool)

(assert (=> b!2513453 m!2871319))

(declare-fun m!2871321 () Bool)

(assert (=> b!2513453 m!2871321))

(declare-fun m!2871323 () Bool)

(assert (=> b!2513453 m!2871323))

(declare-fun m!2871325 () Bool)

(assert (=> b!2513443 m!2871325))

(push 1)

(assert (not b!2513448))

(assert (not b!2513449))

(assert (not b!2513447))

(assert tp_is_empty!12803)

(assert (not b!2513444))

(assert (not b!2513453))

(assert (not b!2513443))

(assert (not b!2513451))

(assert (not b!2513445))

(assert (not b!2513452))

(assert (not start!245110))

(assert (not b!2513454))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2513546 () Bool)

(declare-fun e!1592706 () Bool)

(declare-fun lt!898333 () Bool)

(declare-fun call!156067 () Bool)

(assert (=> b!2513546 (= e!1592706 (= lt!898333 call!156067))))

(declare-fun bm!156062 () Bool)

(declare-fun isEmpty!16903 (List!29539) Bool)

(assert (=> bm!156062 (= call!156067 (isEmpty!16903 tl!4068))))

(declare-fun b!2513547 () Bool)

(declare-fun e!1592704 () Bool)

(assert (=> b!2513547 (= e!1592706 e!1592704)))

(declare-fun c!400524 () Bool)

(assert (=> b!2513547 (= c!400524 (is-EmptyLang!7474 EmptyLang!7474))))

(declare-fun b!2513548 () Bool)

(declare-fun res!1062539 () Bool)

(declare-fun e!1592705 () Bool)

(assert (=> b!2513548 (=> res!1062539 e!1592705)))

(declare-fun e!1592703 () Bool)

(assert (=> b!2513548 (= res!1062539 e!1592703)))

(declare-fun res!1062543 () Bool)

(assert (=> b!2513548 (=> (not res!1062543) (not e!1592703))))

(assert (=> b!2513548 (= res!1062543 lt!898333)))

(declare-fun b!2513549 () Bool)

(declare-fun e!1592702 () Bool)

(declare-fun head!5739 (List!29539) C!15106)

(assert (=> b!2513549 (= e!1592702 (not (= (head!5739 tl!4068) (c!400508 EmptyLang!7474))))))

(declare-fun b!2513550 () Bool)

(declare-fun res!1062536 () Bool)

(assert (=> b!2513550 (=> (not res!1062536) (not e!1592703))))

(assert (=> b!2513550 (= res!1062536 (not call!156067))))

(declare-fun b!2513551 () Bool)

(declare-fun e!1592707 () Bool)

(assert (=> b!2513551 (= e!1592705 e!1592707)))

(declare-fun res!1062538 () Bool)

(assert (=> b!2513551 (=> (not res!1062538) (not e!1592707))))

(assert (=> b!2513551 (= res!1062538 (not lt!898333))))

(declare-fun b!2513552 () Bool)

(declare-fun e!1592708 () Bool)

(declare-fun tail!4016 (List!29539) List!29539)

(assert (=> b!2513552 (= e!1592708 (matchR!3473 (derivativeStep!2043 EmptyLang!7474 (head!5739 tl!4068)) (tail!4016 tl!4068)))))

(declare-fun b!2513554 () Bool)

(assert (=> b!2513554 (= e!1592703 (= (head!5739 tl!4068) (c!400508 EmptyLang!7474)))))

(declare-fun b!2513555 () Bool)

(assert (=> b!2513555 (= e!1592704 (not lt!898333))))

(declare-fun b!2513556 () Bool)

(declare-fun res!1062540 () Bool)

(assert (=> b!2513556 (=> res!1062540 e!1592702)))

(assert (=> b!2513556 (= res!1062540 (not (isEmpty!16903 (tail!4016 tl!4068))))))

(declare-fun b!2513557 () Bool)

(declare-fun res!1062541 () Bool)

(assert (=> b!2513557 (=> res!1062541 e!1592705)))

(assert (=> b!2513557 (= res!1062541 (not (is-ElementMatch!7474 EmptyLang!7474)))))

(assert (=> b!2513557 (= e!1592704 e!1592705)))

(declare-fun b!2513558 () Bool)

(assert (=> b!2513558 (= e!1592708 (nullable!2391 EmptyLang!7474))))

(declare-fun b!2513559 () Bool)

(declare-fun res!1062537 () Bool)

(assert (=> b!2513559 (=> (not res!1062537) (not e!1592703))))

(assert (=> b!2513559 (= res!1062537 (isEmpty!16903 (tail!4016 tl!4068)))))

(declare-fun d!717007 () Bool)

(assert (=> d!717007 e!1592706))

(declare-fun c!400522 () Bool)

(assert (=> d!717007 (= c!400522 (is-EmptyExpr!7474 EmptyLang!7474))))

(assert (=> d!717007 (= lt!898333 e!1592708)))

(declare-fun c!400523 () Bool)

(assert (=> d!717007 (= c!400523 (isEmpty!16903 tl!4068))))

(assert (=> d!717007 (validRegex!3100 EmptyLang!7474)))

(assert (=> d!717007 (= (matchR!3473 EmptyLang!7474 tl!4068) lt!898333)))

(declare-fun b!2513553 () Bool)

(assert (=> b!2513553 (= e!1592707 e!1592702)))

(declare-fun res!1062542 () Bool)

(assert (=> b!2513553 (=> res!1062542 e!1592702)))

(assert (=> b!2513553 (= res!1062542 call!156067)))

(assert (= (and d!717007 c!400523) b!2513558))

(assert (= (and d!717007 (not c!400523)) b!2513552))

(assert (= (and d!717007 c!400522) b!2513546))

(assert (= (and d!717007 (not c!400522)) b!2513547))

(assert (= (and b!2513547 c!400524) b!2513555))

(assert (= (and b!2513547 (not c!400524)) b!2513557))

(assert (= (and b!2513557 (not res!1062541)) b!2513548))

(assert (= (and b!2513548 res!1062543) b!2513550))

(assert (= (and b!2513550 res!1062536) b!2513559))

(assert (= (and b!2513559 res!1062537) b!2513554))

(assert (= (and b!2513548 (not res!1062539)) b!2513551))

(assert (= (and b!2513551 res!1062538) b!2513553))

(assert (= (and b!2513553 (not res!1062542)) b!2513556))

(assert (= (and b!2513556 (not res!1062540)) b!2513549))

(assert (= (or b!2513546 b!2513550 b!2513553) bm!156062))

(declare-fun m!2871377 () Bool)

(assert (=> bm!156062 m!2871377))

(declare-fun m!2871379 () Bool)

(assert (=> b!2513549 m!2871379))

(assert (=> d!717007 m!2871377))

(declare-fun m!2871381 () Bool)

(assert (=> d!717007 m!2871381))

(assert (=> b!2513552 m!2871379))

(assert (=> b!2513552 m!2871379))

(declare-fun m!2871383 () Bool)

(assert (=> b!2513552 m!2871383))

(declare-fun m!2871385 () Bool)

(assert (=> b!2513552 m!2871385))

(assert (=> b!2513552 m!2871383))

(assert (=> b!2513552 m!2871385))

(declare-fun m!2871387 () Bool)

(assert (=> b!2513552 m!2871387))

(declare-fun m!2871389 () Bool)

(assert (=> b!2513558 m!2871389))

(assert (=> b!2513559 m!2871385))

(assert (=> b!2513559 m!2871385))

(declare-fun m!2871391 () Bool)

(assert (=> b!2513559 m!2871391))

(assert (=> b!2513556 m!2871385))

(assert (=> b!2513556 m!2871385))

(assert (=> b!2513556 m!2871391))

(assert (=> b!2513554 m!2871379))

(assert (=> b!2513451 d!717007))

(declare-fun d!717015 () Bool)

(declare-fun isEmpty!16904 (Option!5859) Bool)

(assert (=> d!717015 (= (isDefined!4681 lt!898299) (not (isEmpty!16904 lt!898299)))))

(declare-fun bs!468837 () Bool)

(assert (= bs!468837 d!717015))

(declare-fun m!2871393 () Bool)

(assert (=> bs!468837 m!2871393))

(assert (=> b!2513444 d!717015))

(declare-fun b!2513583 () Bool)

(declare-fun e!1592719 () Bool)

(declare-fun lt!898339 () List!29539)

(assert (=> b!2513583 (= e!1592719 (or (not (= (_2!17281 lt!898294) Nil!29439)) (= lt!898339 (_1!17281 lt!898294))))))

(declare-fun b!2513582 () Bool)

(declare-fun res!1062555 () Bool)

(assert (=> b!2513582 (=> (not res!1062555) (not e!1592719))))

(declare-fun size!22903 (List!29539) Int)

(assert (=> b!2513582 (= res!1062555 (= (size!22903 lt!898339) (+ (size!22903 (_1!17281 lt!898294)) (size!22903 (_2!17281 lt!898294)))))))

(declare-fun b!2513580 () Bool)

(declare-fun e!1592720 () List!29539)

(assert (=> b!2513580 (= e!1592720 (_2!17281 lt!898294))))

(declare-fun b!2513581 () Bool)

(assert (=> b!2513581 (= e!1592720 (Cons!29439 (h!34859 (_1!17281 lt!898294)) (++!7208 (t!211238 (_1!17281 lt!898294)) (_2!17281 lt!898294))))))

(declare-fun d!717017 () Bool)

(assert (=> d!717017 e!1592719))

(declare-fun res!1062554 () Bool)

(assert (=> d!717017 (=> (not res!1062554) (not e!1592719))))

(declare-fun content!4019 (List!29539) (Set C!15106))

(assert (=> d!717017 (= res!1062554 (= (content!4019 lt!898339) (set.union (content!4019 (_1!17281 lt!898294)) (content!4019 (_2!17281 lt!898294)))))))

(assert (=> d!717017 (= lt!898339 e!1592720)))

(declare-fun c!400530 () Bool)

(assert (=> d!717017 (= c!400530 (is-Nil!29439 (_1!17281 lt!898294)))))

(assert (=> d!717017 (= (++!7208 (_1!17281 lt!898294) (_2!17281 lt!898294)) lt!898339)))

(assert (= (and d!717017 c!400530) b!2513580))

(assert (= (and d!717017 (not c!400530)) b!2513581))

(assert (= (and d!717017 res!1062554) b!2513582))

(assert (= (and b!2513582 res!1062555) b!2513583))

(declare-fun m!2871409 () Bool)

(assert (=> b!2513582 m!2871409))

(declare-fun m!2871411 () Bool)

(assert (=> b!2513582 m!2871411))

(declare-fun m!2871413 () Bool)

(assert (=> b!2513582 m!2871413))

(declare-fun m!2871415 () Bool)

(assert (=> b!2513581 m!2871415))

(declare-fun m!2871417 () Bool)

(assert (=> d!717017 m!2871417))

(declare-fun m!2871419 () Bool)

(assert (=> d!717017 m!2871419))

(declare-fun m!2871421 () Bool)

(assert (=> d!717017 m!2871421))

(assert (=> b!2513444 d!717017))

(declare-fun d!717021 () Bool)

(assert (=> d!717021 (= (get!9175 lt!898299) (v!31789 lt!898299))))

(assert (=> b!2513444 d!717021))

(declare-fun b!2513629 () Bool)

(declare-fun e!1592748 () Option!5859)

(assert (=> b!2513629 (= e!1592748 None!5858)))

(declare-fun b!2513630 () Bool)

(declare-fun res!1062583 () Bool)

(declare-fun e!1592746 () Bool)

(assert (=> b!2513630 (=> (not res!1062583) (not e!1592746))))

(declare-fun lt!898356 () Option!5859)

(assert (=> b!2513630 (= res!1062583 (matchR!3473 lt!898292 (_1!17281 (get!9175 lt!898356))))))

(declare-fun b!2513631 () Bool)

(declare-fun lt!898357 () Unit!43197)

(declare-fun lt!898355 () Unit!43197)

(assert (=> b!2513631 (= lt!898357 lt!898355)))

(assert (=> b!2513631 (= (++!7208 (++!7208 Nil!29439 (Cons!29439 (h!34859 tl!4068) Nil!29439)) (t!211238 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!754 (List!29539 C!15106 List!29539 List!29539) Unit!43197)

(assert (=> b!2513631 (= lt!898355 (lemmaMoveElementToOtherListKeepsConcatEq!754 Nil!29439 (h!34859 tl!4068) (t!211238 tl!4068) tl!4068))))

(assert (=> b!2513631 (= e!1592748 (findConcatSeparation!881 lt!898292 (regTwo!15460 r!27340) (++!7208 Nil!29439 (Cons!29439 (h!34859 tl!4068) Nil!29439)) (t!211238 tl!4068) tl!4068))))

(declare-fun b!2513633 () Bool)

(declare-fun res!1062585 () Bool)

(assert (=> b!2513633 (=> (not res!1062585) (not e!1592746))))

(assert (=> b!2513633 (= res!1062585 (matchR!3473 (regTwo!15460 r!27340) (_2!17281 (get!9175 lt!898356))))))

(declare-fun b!2513634 () Bool)

(declare-fun e!1592750 () Option!5859)

(assert (=> b!2513634 (= e!1592750 (Some!5858 (tuple2!29479 Nil!29439 tl!4068)))))

(declare-fun b!2513635 () Bool)

(assert (=> b!2513635 (= e!1592746 (= (++!7208 (_1!17281 (get!9175 lt!898356)) (_2!17281 (get!9175 lt!898356))) tl!4068))))

(declare-fun b!2513636 () Bool)

(assert (=> b!2513636 (= e!1592750 e!1592748)))

(declare-fun c!400541 () Bool)

(assert (=> b!2513636 (= c!400541 (is-Nil!29439 tl!4068))))

(declare-fun b!2513637 () Bool)

(declare-fun e!1592749 () Bool)

(assert (=> b!2513637 (= e!1592749 (matchR!3473 (regTwo!15460 r!27340) tl!4068))))

(declare-fun d!717023 () Bool)

(declare-fun e!1592747 () Bool)

(assert (=> d!717023 e!1592747))

(declare-fun res!1062584 () Bool)

(assert (=> d!717023 (=> res!1062584 e!1592747)))

(assert (=> d!717023 (= res!1062584 e!1592746)))

(declare-fun res!1062582 () Bool)

(assert (=> d!717023 (=> (not res!1062582) (not e!1592746))))

(assert (=> d!717023 (= res!1062582 (isDefined!4681 lt!898356))))

(assert (=> d!717023 (= lt!898356 e!1592750)))

(declare-fun c!400542 () Bool)

(assert (=> d!717023 (= c!400542 e!1592749)))

(declare-fun res!1062581 () Bool)

(assert (=> d!717023 (=> (not res!1062581) (not e!1592749))))

(assert (=> d!717023 (= res!1062581 (matchR!3473 lt!898292 Nil!29439))))

(assert (=> d!717023 (validRegex!3100 lt!898292)))

(assert (=> d!717023 (= (findConcatSeparation!881 lt!898292 (regTwo!15460 r!27340) Nil!29439 tl!4068 tl!4068) lt!898356)))

(declare-fun b!2513632 () Bool)

(assert (=> b!2513632 (= e!1592747 (not (isDefined!4681 lt!898356)))))

(assert (= (and d!717023 res!1062581) b!2513637))

(assert (= (and d!717023 c!400542) b!2513634))

(assert (= (and d!717023 (not c!400542)) b!2513636))

(assert (= (and b!2513636 c!400541) b!2513629))

(assert (= (and b!2513636 (not c!400541)) b!2513631))

(assert (= (and d!717023 res!1062582) b!2513630))

(assert (= (and b!2513630 res!1062583) b!2513633))

(assert (= (and b!2513633 res!1062585) b!2513635))

(assert (= (and d!717023 (not res!1062584)) b!2513632))

(declare-fun m!2871423 () Bool)

(assert (=> b!2513630 m!2871423))

(declare-fun m!2871425 () Bool)

(assert (=> b!2513630 m!2871425))

(assert (=> b!2513633 m!2871423))

(declare-fun m!2871427 () Bool)

(assert (=> b!2513633 m!2871427))

(assert (=> b!2513635 m!2871423))

(declare-fun m!2871431 () Bool)

(assert (=> b!2513635 m!2871431))

(declare-fun m!2871433 () Bool)

(assert (=> d!717023 m!2871433))

(declare-fun m!2871437 () Bool)

(assert (=> d!717023 m!2871437))

(assert (=> d!717023 m!2871325))

(assert (=> b!2513632 m!2871433))

(declare-fun m!2871443 () Bool)

(assert (=> b!2513631 m!2871443))

(assert (=> b!2513631 m!2871443))

(declare-fun m!2871447 () Bool)

(assert (=> b!2513631 m!2871447))

(declare-fun m!2871451 () Bool)

(assert (=> b!2513631 m!2871451))

(assert (=> b!2513631 m!2871443))

(declare-fun m!2871455 () Bool)

(assert (=> b!2513631 m!2871455))

(declare-fun m!2871457 () Bool)

(assert (=> b!2513637 m!2871457))

(assert (=> b!2513444 d!717023))

(declare-fun d!717025 () Bool)

(assert (=> d!717025 (isDefined!4681 (findConcatSeparation!881 lt!898292 (regTwo!15460 r!27340) Nil!29439 tl!4068 tl!4068))))

(declare-fun lt!898360 () Unit!43197)

(declare-fun choose!14891 (Regex!7474 Regex!7474 List!29539) Unit!43197)

(assert (=> d!717025 (= lt!898360 (choose!14891 lt!898292 (regTwo!15460 r!27340) tl!4068))))

(assert (=> d!717025 (validRegex!3100 lt!898292)))

(assert (=> d!717025 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!163 lt!898292 (regTwo!15460 r!27340) tl!4068) lt!898360)))

(declare-fun bs!468838 () Bool)

(assert (= bs!468838 d!717025))

(assert (=> bs!468838 m!2871293))

(assert (=> bs!468838 m!2871293))

(declare-fun m!2871467 () Bool)

(assert (=> bs!468838 m!2871467))

(declare-fun m!2871469 () Bool)

(assert (=> bs!468838 m!2871469))

(assert (=> bs!468838 m!2871325))

(assert (=> b!2513444 d!717025))

(declare-fun bm!156073 () Bool)

(declare-fun call!156083 () Regex!7474)

(declare-fun call!156081 () Regex!7474)

(assert (=> bm!156073 (= call!156083 call!156081)))

(declare-fun b!2513678 () Bool)

(declare-fun e!1592771 () Regex!7474)

(assert (=> b!2513678 (= e!1592771 EmptyLang!7474)))

(declare-fun b!2513679 () Bool)

(declare-fun e!1592774 () Regex!7474)

(declare-fun call!156080 () Regex!7474)

(assert (=> b!2513679 (= e!1592774 (Union!7474 call!156081 call!156080))))

(declare-fun b!2513680 () Bool)

(declare-fun e!1592773 () Regex!7474)

(assert (=> b!2513680 (= e!1592774 e!1592773)))

(declare-fun c!400565 () Bool)

(assert (=> b!2513680 (= c!400565 (is-Star!7474 (regOne!15460 r!27340)))))

(declare-fun call!156082 () Regex!7474)

(declare-fun e!1592775 () Regex!7474)

(declare-fun b!2513681 () Bool)

(assert (=> b!2513681 (= e!1592775 (Union!7474 (Concat!12170 call!156082 (regTwo!15460 (regOne!15460 r!27340))) call!156080))))

(declare-fun bm!156074 () Bool)

(assert (=> bm!156074 (= call!156082 call!156083)))

(declare-fun b!2513682 () Bool)

(declare-fun c!400564 () Bool)

(assert (=> b!2513682 (= c!400564 (nullable!2391 (regOne!15460 (regOne!15460 r!27340))))))

(assert (=> b!2513682 (= e!1592773 e!1592775)))

(declare-fun b!2513683 () Bool)

(declare-fun e!1592772 () Regex!7474)

(assert (=> b!2513683 (= e!1592771 e!1592772)))

(declare-fun c!400566 () Bool)

(assert (=> b!2513683 (= c!400566 (is-ElementMatch!7474 (regOne!15460 r!27340)))))

(declare-fun c!400567 () Bool)

(declare-fun bm!156075 () Bool)

(assert (=> bm!156075 (= call!156081 (derivativeStep!2043 (ite c!400567 (regOne!15461 (regOne!15460 r!27340)) (ite c!400565 (reg!7803 (regOne!15460 r!27340)) (regOne!15460 (regOne!15460 r!27340)))) c!14016))))

(declare-fun d!717029 () Bool)

(declare-fun lt!898368 () Regex!7474)

(assert (=> d!717029 (validRegex!3100 lt!898368)))

(assert (=> d!717029 (= lt!898368 e!1592771)))

(declare-fun c!400563 () Bool)

(assert (=> d!717029 (= c!400563 (or (is-EmptyExpr!7474 (regOne!15460 r!27340)) (is-EmptyLang!7474 (regOne!15460 r!27340))))))

(assert (=> d!717029 (validRegex!3100 (regOne!15460 r!27340))))

(assert (=> d!717029 (= (derivativeStep!2043 (regOne!15460 r!27340) c!14016) lt!898368)))

(declare-fun b!2513684 () Bool)

(assert (=> b!2513684 (= c!400567 (is-Union!7474 (regOne!15460 r!27340)))))

(assert (=> b!2513684 (= e!1592772 e!1592774)))

(declare-fun b!2513685 () Bool)

(assert (=> b!2513685 (= e!1592772 (ite (= c!14016 (c!400508 (regOne!15460 r!27340))) EmptyExpr!7474 EmptyLang!7474))))

(declare-fun bm!156076 () Bool)

(assert (=> bm!156076 (= call!156080 (derivativeStep!2043 (ite c!400567 (regTwo!15461 (regOne!15460 r!27340)) (regTwo!15460 (regOne!15460 r!27340))) c!14016))))

(declare-fun b!2513686 () Bool)

(assert (=> b!2513686 (= e!1592775 (Union!7474 (Concat!12170 call!156082 (regTwo!15460 (regOne!15460 r!27340))) EmptyLang!7474))))

(declare-fun b!2513687 () Bool)

(assert (=> b!2513687 (= e!1592773 (Concat!12170 call!156083 (regOne!15460 r!27340)))))

(assert (= (and d!717029 c!400563) b!2513678))

(assert (= (and d!717029 (not c!400563)) b!2513683))

(assert (= (and b!2513683 c!400566) b!2513685))

(assert (= (and b!2513683 (not c!400566)) b!2513684))

(assert (= (and b!2513684 c!400567) b!2513679))

(assert (= (and b!2513684 (not c!400567)) b!2513680))

(assert (= (and b!2513680 c!400565) b!2513687))

(assert (= (and b!2513680 (not c!400565)) b!2513682))

(assert (= (and b!2513682 c!400564) b!2513681))

(assert (= (and b!2513682 (not c!400564)) b!2513686))

(assert (= (or b!2513681 b!2513686) bm!156074))

(assert (= (or b!2513687 bm!156074) bm!156073))

(assert (= (or b!2513679 b!2513681) bm!156076))

(assert (= (or b!2513679 bm!156073) bm!156075))

(declare-fun m!2871477 () Bool)

(assert (=> b!2513682 m!2871477))

(declare-fun m!2871479 () Bool)

(assert (=> bm!156075 m!2871479))

(declare-fun m!2871481 () Bool)

(assert (=> d!717029 m!2871481))

(declare-fun m!2871483 () Bool)

(assert (=> d!717029 m!2871483))

(declare-fun m!2871485 () Bool)

(assert (=> bm!156076 m!2871485))

(assert (=> b!2513453 d!717029))

(declare-fun d!717037 () Bool)

(declare-fun lt!898371 () Regex!7474)

(assert (=> d!717037 (validRegex!3100 lt!898371)))

(declare-fun e!1592778 () Regex!7474)

(assert (=> d!717037 (= lt!898371 e!1592778)))

(declare-fun c!400570 () Bool)

(assert (=> d!717037 (= c!400570 (is-Cons!29439 tl!4068))))

(assert (=> d!717037 (validRegex!3100 EmptyLang!7474)))

(assert (=> d!717037 (= (derivative!169 EmptyLang!7474 tl!4068) lt!898371)))

(declare-fun b!2513692 () Bool)

(assert (=> b!2513692 (= e!1592778 (derivative!169 (derivativeStep!2043 EmptyLang!7474 (h!34859 tl!4068)) (t!211238 tl!4068)))))

(declare-fun b!2513693 () Bool)

(assert (=> b!2513693 (= e!1592778 EmptyLang!7474)))

(assert (= (and d!717037 c!400570) b!2513692))

(assert (= (and d!717037 (not c!400570)) b!2513693))

(declare-fun m!2871487 () Bool)

(assert (=> d!717037 m!2871487))

(assert (=> d!717037 m!2871381))

(declare-fun m!2871489 () Bool)

(assert (=> b!2513692 m!2871489))

(assert (=> b!2513692 m!2871489))

(declare-fun m!2871491 () Bool)

(assert (=> b!2513692 m!2871491))

(assert (=> b!2513453 d!717037))

(declare-fun b!2513694 () Bool)

(declare-fun e!1592783 () Bool)

(declare-fun lt!898372 () Bool)

(declare-fun call!156088 () Bool)

(assert (=> b!2513694 (= e!1592783 (= lt!898372 call!156088))))

(declare-fun bm!156083 () Bool)

(assert (=> bm!156083 (= call!156088 (isEmpty!16903 tl!4068))))

(declare-fun b!2513695 () Bool)

(declare-fun e!1592781 () Bool)

(assert (=> b!2513695 (= e!1592783 e!1592781)))

(declare-fun c!400573 () Bool)

(assert (=> b!2513695 (= c!400573 (is-EmptyLang!7474 lt!898295))))

(declare-fun b!2513696 () Bool)

(declare-fun res!1062589 () Bool)

(declare-fun e!1592782 () Bool)

(assert (=> b!2513696 (=> res!1062589 e!1592782)))

(declare-fun e!1592780 () Bool)

(assert (=> b!2513696 (= res!1062589 e!1592780)))

(declare-fun res!1062593 () Bool)

(assert (=> b!2513696 (=> (not res!1062593) (not e!1592780))))

(assert (=> b!2513696 (= res!1062593 lt!898372)))

(declare-fun b!2513697 () Bool)

(declare-fun e!1592779 () Bool)

(assert (=> b!2513697 (= e!1592779 (not (= (head!5739 tl!4068) (c!400508 lt!898295))))))

(declare-fun b!2513698 () Bool)

(declare-fun res!1062586 () Bool)

(assert (=> b!2513698 (=> (not res!1062586) (not e!1592780))))

(assert (=> b!2513698 (= res!1062586 (not call!156088))))

(declare-fun b!2513699 () Bool)

(declare-fun e!1592784 () Bool)

(assert (=> b!2513699 (= e!1592782 e!1592784)))

(declare-fun res!1062588 () Bool)

(assert (=> b!2513699 (=> (not res!1062588) (not e!1592784))))

(assert (=> b!2513699 (= res!1062588 (not lt!898372))))

(declare-fun b!2513700 () Bool)

(declare-fun e!1592785 () Bool)

(assert (=> b!2513700 (= e!1592785 (matchR!3473 (derivativeStep!2043 lt!898295 (head!5739 tl!4068)) (tail!4016 tl!4068)))))

(declare-fun b!2513702 () Bool)

(assert (=> b!2513702 (= e!1592780 (= (head!5739 tl!4068) (c!400508 lt!898295)))))

(declare-fun b!2513703 () Bool)

(assert (=> b!2513703 (= e!1592781 (not lt!898372))))

(declare-fun b!2513704 () Bool)

(declare-fun res!1062590 () Bool)

(assert (=> b!2513704 (=> res!1062590 e!1592779)))

(assert (=> b!2513704 (= res!1062590 (not (isEmpty!16903 (tail!4016 tl!4068))))))

(declare-fun b!2513705 () Bool)

(declare-fun res!1062591 () Bool)

(assert (=> b!2513705 (=> res!1062591 e!1592782)))

(assert (=> b!2513705 (= res!1062591 (not (is-ElementMatch!7474 lt!898295)))))

(assert (=> b!2513705 (= e!1592781 e!1592782)))

(declare-fun b!2513706 () Bool)

(assert (=> b!2513706 (= e!1592785 (nullable!2391 lt!898295))))

(declare-fun b!2513707 () Bool)

(declare-fun res!1062587 () Bool)

(assert (=> b!2513707 (=> (not res!1062587) (not e!1592780))))

(assert (=> b!2513707 (= res!1062587 (isEmpty!16903 (tail!4016 tl!4068)))))

(declare-fun d!717039 () Bool)

(assert (=> d!717039 e!1592783))

(declare-fun c!400571 () Bool)

(assert (=> d!717039 (= c!400571 (is-EmptyExpr!7474 lt!898295))))

(assert (=> d!717039 (= lt!898372 e!1592785)))

(declare-fun c!400572 () Bool)

(assert (=> d!717039 (= c!400572 (isEmpty!16903 tl!4068))))

(assert (=> d!717039 (validRegex!3100 lt!898295)))

(assert (=> d!717039 (= (matchR!3473 lt!898295 tl!4068) lt!898372)))

(declare-fun b!2513701 () Bool)

(assert (=> b!2513701 (= e!1592784 e!1592779)))

(declare-fun res!1062592 () Bool)

(assert (=> b!2513701 (=> res!1062592 e!1592779)))

(assert (=> b!2513701 (= res!1062592 call!156088)))

(assert (= (and d!717039 c!400572) b!2513706))

(assert (= (and d!717039 (not c!400572)) b!2513700))

(assert (= (and d!717039 c!400571) b!2513694))

(assert (= (and d!717039 (not c!400571)) b!2513695))

(assert (= (and b!2513695 c!400573) b!2513703))

(assert (= (and b!2513695 (not c!400573)) b!2513705))

(assert (= (and b!2513705 (not res!1062591)) b!2513696))

(assert (= (and b!2513696 res!1062593) b!2513698))

(assert (= (and b!2513698 res!1062586) b!2513707))

(assert (= (and b!2513707 res!1062587) b!2513702))

(assert (= (and b!2513696 (not res!1062589)) b!2513699))

(assert (= (and b!2513699 res!1062588) b!2513701))

(assert (= (and b!2513701 (not res!1062592)) b!2513704))

(assert (= (and b!2513704 (not res!1062590)) b!2513697))

(assert (= (or b!2513694 b!2513698 b!2513701) bm!156083))

(assert (=> bm!156083 m!2871377))

(assert (=> b!2513697 m!2871379))

(assert (=> d!717039 m!2871377))

(declare-fun m!2871493 () Bool)

(assert (=> d!717039 m!2871493))

(assert (=> b!2513700 m!2871379))

(assert (=> b!2513700 m!2871379))

(declare-fun m!2871495 () Bool)

(assert (=> b!2513700 m!2871495))

(assert (=> b!2513700 m!2871385))

(assert (=> b!2513700 m!2871495))

(assert (=> b!2513700 m!2871385))

(declare-fun m!2871497 () Bool)

(assert (=> b!2513700 m!2871497))

(declare-fun m!2871499 () Bool)

(assert (=> b!2513706 m!2871499))

(assert (=> b!2513707 m!2871385))

(assert (=> b!2513707 m!2871385))

(assert (=> b!2513707 m!2871391))

(assert (=> b!2513704 m!2871385))

(assert (=> b!2513704 m!2871385))

(assert (=> b!2513704 m!2871391))

(assert (=> b!2513702 m!2871379))

(assert (=> b!2513453 d!717039))

(declare-fun b!2513708 () Bool)

(declare-fun e!1592790 () Bool)

(declare-fun lt!898373 () Bool)

(declare-fun call!156089 () Bool)

(assert (=> b!2513708 (= e!1592790 (= lt!898373 call!156089))))

(declare-fun bm!156084 () Bool)

(assert (=> bm!156084 (= call!156089 (isEmpty!16903 tl!4068))))

(declare-fun b!2513709 () Bool)

(declare-fun e!1592788 () Bool)

(assert (=> b!2513709 (= e!1592790 e!1592788)))

(declare-fun c!400576 () Bool)

(assert (=> b!2513709 (= c!400576 (is-EmptyLang!7474 lt!898300))))

(declare-fun b!2513710 () Bool)

(declare-fun res!1062597 () Bool)

(declare-fun e!1592789 () Bool)

(assert (=> b!2513710 (=> res!1062597 e!1592789)))

(declare-fun e!1592787 () Bool)

(assert (=> b!2513710 (= res!1062597 e!1592787)))

(declare-fun res!1062601 () Bool)

(assert (=> b!2513710 (=> (not res!1062601) (not e!1592787))))

(assert (=> b!2513710 (= res!1062601 lt!898373)))

(declare-fun b!2513711 () Bool)

(declare-fun e!1592786 () Bool)

(assert (=> b!2513711 (= e!1592786 (not (= (head!5739 tl!4068) (c!400508 lt!898300))))))

(declare-fun b!2513712 () Bool)

(declare-fun res!1062594 () Bool)

(assert (=> b!2513712 (=> (not res!1062594) (not e!1592787))))

(assert (=> b!2513712 (= res!1062594 (not call!156089))))

(declare-fun b!2513713 () Bool)

(declare-fun e!1592791 () Bool)

(assert (=> b!2513713 (= e!1592789 e!1592791)))

(declare-fun res!1062596 () Bool)

(assert (=> b!2513713 (=> (not res!1062596) (not e!1592791))))

(assert (=> b!2513713 (= res!1062596 (not lt!898373))))

(declare-fun b!2513714 () Bool)

(declare-fun e!1592792 () Bool)

(assert (=> b!2513714 (= e!1592792 (matchR!3473 (derivativeStep!2043 lt!898300 (head!5739 tl!4068)) (tail!4016 tl!4068)))))

(declare-fun b!2513716 () Bool)

(assert (=> b!2513716 (= e!1592787 (= (head!5739 tl!4068) (c!400508 lt!898300)))))

(declare-fun b!2513717 () Bool)

(assert (=> b!2513717 (= e!1592788 (not lt!898373))))

(declare-fun b!2513718 () Bool)

(declare-fun res!1062598 () Bool)

(assert (=> b!2513718 (=> res!1062598 e!1592786)))

(assert (=> b!2513718 (= res!1062598 (not (isEmpty!16903 (tail!4016 tl!4068))))))

(declare-fun b!2513719 () Bool)

(declare-fun res!1062599 () Bool)

(assert (=> b!2513719 (=> res!1062599 e!1592789)))

(assert (=> b!2513719 (= res!1062599 (not (is-ElementMatch!7474 lt!898300)))))

(assert (=> b!2513719 (= e!1592788 e!1592789)))

(declare-fun b!2513720 () Bool)

(assert (=> b!2513720 (= e!1592792 (nullable!2391 lt!898300))))

(declare-fun b!2513721 () Bool)

(declare-fun res!1062595 () Bool)

(assert (=> b!2513721 (=> (not res!1062595) (not e!1592787))))

(assert (=> b!2513721 (= res!1062595 (isEmpty!16903 (tail!4016 tl!4068)))))

(declare-fun d!717041 () Bool)

(assert (=> d!717041 e!1592790))

(declare-fun c!400574 () Bool)

(assert (=> d!717041 (= c!400574 (is-EmptyExpr!7474 lt!898300))))

(assert (=> d!717041 (= lt!898373 e!1592792)))

(declare-fun c!400575 () Bool)

(assert (=> d!717041 (= c!400575 (isEmpty!16903 tl!4068))))

(assert (=> d!717041 (validRegex!3100 lt!898300)))

(assert (=> d!717041 (= (matchR!3473 lt!898300 tl!4068) lt!898373)))

(declare-fun b!2513715 () Bool)

(assert (=> b!2513715 (= e!1592791 e!1592786)))

(declare-fun res!1062600 () Bool)

(assert (=> b!2513715 (=> res!1062600 e!1592786)))

(assert (=> b!2513715 (= res!1062600 call!156089)))

(assert (= (and d!717041 c!400575) b!2513720))

(assert (= (and d!717041 (not c!400575)) b!2513714))

(assert (= (and d!717041 c!400574) b!2513708))

(assert (= (and d!717041 (not c!400574)) b!2513709))

(assert (= (and b!2513709 c!400576) b!2513717))

(assert (= (and b!2513709 (not c!400576)) b!2513719))

(assert (= (and b!2513719 (not res!1062599)) b!2513710))

(assert (= (and b!2513710 res!1062601) b!2513712))

(assert (= (and b!2513712 res!1062594) b!2513721))

(assert (= (and b!2513721 res!1062595) b!2513716))

(assert (= (and b!2513710 (not res!1062597)) b!2513713))

(assert (= (and b!2513713 res!1062596) b!2513715))

(assert (= (and b!2513715 (not res!1062600)) b!2513718))

(assert (= (and b!2513718 (not res!1062598)) b!2513711))

(assert (= (or b!2513708 b!2513712 b!2513715) bm!156084))

(assert (=> bm!156084 m!2871377))

(assert (=> b!2513711 m!2871379))

(assert (=> d!717041 m!2871377))

(declare-fun m!2871501 () Bool)

(assert (=> d!717041 m!2871501))

(assert (=> b!2513714 m!2871379))

(assert (=> b!2513714 m!2871379))

(declare-fun m!2871503 () Bool)

(assert (=> b!2513714 m!2871503))

(assert (=> b!2513714 m!2871385))

(assert (=> b!2513714 m!2871503))

(assert (=> b!2513714 m!2871385))

(declare-fun m!2871505 () Bool)

(assert (=> b!2513714 m!2871505))

(declare-fun m!2871507 () Bool)

(assert (=> b!2513720 m!2871507))

(assert (=> b!2513721 m!2871385))

(assert (=> b!2513721 m!2871385))

(assert (=> b!2513721 m!2871391))

(assert (=> b!2513718 m!2871385))

(assert (=> b!2513718 m!2871385))

(assert (=> b!2513718 m!2871391))

(assert (=> b!2513716 m!2871379))

(assert (=> b!2513453 d!717041))

(declare-fun d!717043 () Bool)

(assert (=> d!717043 (= (derivative!169 EmptyLang!7474 tl!4068) EmptyLang!7474)))

(declare-fun lt!898376 () Unit!43197)

(declare-fun choose!14892 (Regex!7474 List!29539) Unit!43197)

(assert (=> d!717043 (= lt!898376 (choose!14892 EmptyLang!7474 tl!4068))))

(assert (=> d!717043 (= EmptyLang!7474 EmptyLang!7474)))

(assert (=> d!717043 (= (lemmaEmptyLangDerivativeIsAFixPoint!21 EmptyLang!7474 tl!4068) lt!898376)))

(declare-fun bs!468841 () Bool)

(assert (= bs!468841 d!717043))

(assert (=> bs!468841 m!2871319))

(declare-fun m!2871509 () Bool)

(assert (=> bs!468841 m!2871509))

(assert (=> b!2513453 d!717043))

(declare-fun d!717045 () Bool)

(assert (=> d!717045 (= (matchR!3473 lt!898295 tl!4068) (matchR!3473 (derivative!169 lt!898295 tl!4068) Nil!29439))))

(declare-fun lt!898380 () Unit!43197)

(declare-fun choose!14893 (Regex!7474 List!29539) Unit!43197)

(assert (=> d!717045 (= lt!898380 (choose!14893 lt!898295 tl!4068))))

(assert (=> d!717045 (validRegex!3100 lt!898295)))

(assert (=> d!717045 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!119 lt!898295 tl!4068) lt!898380)))

(declare-fun bs!468842 () Bool)

(assert (= bs!468842 d!717045))

(assert (=> bs!468842 m!2871311))

(assert (=> bs!468842 m!2871493))

(assert (=> bs!468842 m!2871313))

(declare-fun m!2871519 () Bool)

(assert (=> bs!468842 m!2871519))

(assert (=> bs!468842 m!2871313))

(assert (=> bs!468842 m!2871315))

(assert (=> b!2513453 d!717045))

(declare-fun d!717049 () Bool)

(declare-fun e!1592802 () Bool)

(assert (=> d!717049 e!1592802))

(declare-fun res!1062606 () Bool)

(assert (=> d!717049 (=> res!1062606 e!1592802)))

(assert (=> d!717049 (= res!1062606 (matchR!3473 lt!898300 tl!4068))))

(declare-fun lt!898383 () Unit!43197)

(declare-fun choose!14895 (Regex!7474 Regex!7474 List!29539) Unit!43197)

(assert (=> d!717049 (= lt!898383 (choose!14895 lt!898300 EmptyLang!7474 tl!4068))))

(declare-fun e!1592803 () Bool)

(assert (=> d!717049 e!1592803))

(declare-fun res!1062607 () Bool)

(assert (=> d!717049 (=> (not res!1062607) (not e!1592803))))

(assert (=> d!717049 (= res!1062607 (validRegex!3100 lt!898300))))

(assert (=> d!717049 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!161 lt!898300 EmptyLang!7474 tl!4068) lt!898383)))

(declare-fun b!2513736 () Bool)

(assert (=> b!2513736 (= e!1592803 (validRegex!3100 EmptyLang!7474))))

(declare-fun b!2513737 () Bool)

(assert (=> b!2513737 (= e!1592802 (matchR!3473 EmptyLang!7474 tl!4068))))

(assert (= (and d!717049 res!1062607) b!2513736))

(assert (= (and d!717049 (not res!1062606)) b!2513737))

(assert (=> d!717049 m!2871317))

(declare-fun m!2871523 () Bool)

(assert (=> d!717049 m!2871523))

(assert (=> d!717049 m!2871501))

(assert (=> b!2513736 m!2871381))

(assert (=> b!2513737 m!2871305))

(assert (=> b!2513453 d!717049))

(declare-fun b!2513738 () Bool)

(declare-fun e!1592808 () Bool)

(declare-fun lt!898384 () Bool)

(declare-fun call!156094 () Bool)

(assert (=> b!2513738 (= e!1592808 (= lt!898384 call!156094))))

(declare-fun bm!156089 () Bool)

(assert (=> bm!156089 (= call!156094 (isEmpty!16903 Nil!29439))))

(declare-fun b!2513739 () Bool)

(declare-fun e!1592806 () Bool)

(assert (=> b!2513739 (= e!1592808 e!1592806)))

(declare-fun c!400584 () Bool)

(assert (=> b!2513739 (= c!400584 (is-EmptyLang!7474 (derivative!169 lt!898295 tl!4068)))))

(declare-fun b!2513740 () Bool)

(declare-fun res!1062611 () Bool)

(declare-fun e!1592807 () Bool)

(assert (=> b!2513740 (=> res!1062611 e!1592807)))

(declare-fun e!1592805 () Bool)

(assert (=> b!2513740 (= res!1062611 e!1592805)))

(declare-fun res!1062615 () Bool)

(assert (=> b!2513740 (=> (not res!1062615) (not e!1592805))))

(assert (=> b!2513740 (= res!1062615 lt!898384)))

(declare-fun b!2513741 () Bool)

(declare-fun e!1592804 () Bool)

(assert (=> b!2513741 (= e!1592804 (not (= (head!5739 Nil!29439) (c!400508 (derivative!169 lt!898295 tl!4068)))))))

(declare-fun b!2513742 () Bool)

(declare-fun res!1062608 () Bool)

(assert (=> b!2513742 (=> (not res!1062608) (not e!1592805))))

(assert (=> b!2513742 (= res!1062608 (not call!156094))))

(declare-fun b!2513743 () Bool)

(declare-fun e!1592809 () Bool)

(assert (=> b!2513743 (= e!1592807 e!1592809)))

(declare-fun res!1062610 () Bool)

(assert (=> b!2513743 (=> (not res!1062610) (not e!1592809))))

(assert (=> b!2513743 (= res!1062610 (not lt!898384))))

(declare-fun b!2513744 () Bool)

(declare-fun e!1592810 () Bool)

(assert (=> b!2513744 (= e!1592810 (matchR!3473 (derivativeStep!2043 (derivative!169 lt!898295 tl!4068) (head!5739 Nil!29439)) (tail!4016 Nil!29439)))))

(declare-fun b!2513746 () Bool)

(assert (=> b!2513746 (= e!1592805 (= (head!5739 Nil!29439) (c!400508 (derivative!169 lt!898295 tl!4068))))))

(declare-fun b!2513747 () Bool)

(assert (=> b!2513747 (= e!1592806 (not lt!898384))))

(declare-fun b!2513748 () Bool)

(declare-fun res!1062612 () Bool)

(assert (=> b!2513748 (=> res!1062612 e!1592804)))

(assert (=> b!2513748 (= res!1062612 (not (isEmpty!16903 (tail!4016 Nil!29439))))))

(declare-fun b!2513749 () Bool)

(declare-fun res!1062613 () Bool)

(assert (=> b!2513749 (=> res!1062613 e!1592807)))

(assert (=> b!2513749 (= res!1062613 (not (is-ElementMatch!7474 (derivative!169 lt!898295 tl!4068))))))

(assert (=> b!2513749 (= e!1592806 e!1592807)))

(declare-fun b!2513750 () Bool)

(assert (=> b!2513750 (= e!1592810 (nullable!2391 (derivative!169 lt!898295 tl!4068)))))

(declare-fun b!2513751 () Bool)

(declare-fun res!1062609 () Bool)

(assert (=> b!2513751 (=> (not res!1062609) (not e!1592805))))

(assert (=> b!2513751 (= res!1062609 (isEmpty!16903 (tail!4016 Nil!29439)))))

(declare-fun d!717051 () Bool)

(assert (=> d!717051 e!1592808))

(declare-fun c!400582 () Bool)

(assert (=> d!717051 (= c!400582 (is-EmptyExpr!7474 (derivative!169 lt!898295 tl!4068)))))

(assert (=> d!717051 (= lt!898384 e!1592810)))

(declare-fun c!400583 () Bool)

(assert (=> d!717051 (= c!400583 (isEmpty!16903 Nil!29439))))

(assert (=> d!717051 (validRegex!3100 (derivative!169 lt!898295 tl!4068))))

(assert (=> d!717051 (= (matchR!3473 (derivative!169 lt!898295 tl!4068) Nil!29439) lt!898384)))

(declare-fun b!2513745 () Bool)

(assert (=> b!2513745 (= e!1592809 e!1592804)))

(declare-fun res!1062614 () Bool)

(assert (=> b!2513745 (=> res!1062614 e!1592804)))

(assert (=> b!2513745 (= res!1062614 call!156094)))

(assert (= (and d!717051 c!400583) b!2513750))

(assert (= (and d!717051 (not c!400583)) b!2513744))

(assert (= (and d!717051 c!400582) b!2513738))

(assert (= (and d!717051 (not c!400582)) b!2513739))

(assert (= (and b!2513739 c!400584) b!2513747))

(assert (= (and b!2513739 (not c!400584)) b!2513749))

(assert (= (and b!2513749 (not res!1062613)) b!2513740))

(assert (= (and b!2513740 res!1062615) b!2513742))

(assert (= (and b!2513742 res!1062608) b!2513751))

(assert (= (and b!2513751 res!1062609) b!2513746))

(assert (= (and b!2513740 (not res!1062611)) b!2513743))

(assert (= (and b!2513743 res!1062610) b!2513745))

(assert (= (and b!2513745 (not res!1062614)) b!2513748))

(assert (= (and b!2513748 (not res!1062612)) b!2513741))

(assert (= (or b!2513738 b!2513742 b!2513745) bm!156089))

(declare-fun m!2871525 () Bool)

(assert (=> bm!156089 m!2871525))

(declare-fun m!2871527 () Bool)

(assert (=> b!2513741 m!2871527))

(assert (=> d!717051 m!2871525))

(assert (=> d!717051 m!2871313))

(declare-fun m!2871529 () Bool)

(assert (=> d!717051 m!2871529))

(assert (=> b!2513744 m!2871527))

(assert (=> b!2513744 m!2871313))

(assert (=> b!2513744 m!2871527))

(declare-fun m!2871531 () Bool)

(assert (=> b!2513744 m!2871531))

(declare-fun m!2871533 () Bool)

(assert (=> b!2513744 m!2871533))

(assert (=> b!2513744 m!2871531))

(assert (=> b!2513744 m!2871533))

(declare-fun m!2871535 () Bool)

(assert (=> b!2513744 m!2871535))

(assert (=> b!2513750 m!2871313))

(declare-fun m!2871537 () Bool)

(assert (=> b!2513750 m!2871537))

(assert (=> b!2513751 m!2871533))

(assert (=> b!2513751 m!2871533))

(declare-fun m!2871539 () Bool)

(assert (=> b!2513751 m!2871539))

(assert (=> b!2513748 m!2871533))

(assert (=> b!2513748 m!2871533))

(assert (=> b!2513748 m!2871539))

(assert (=> b!2513746 m!2871527))

(assert (=> b!2513453 d!717051))

(declare-fun d!717053 () Bool)

(declare-fun lt!898385 () Regex!7474)

(assert (=> d!717053 (validRegex!3100 lt!898385)))

(declare-fun e!1592811 () Regex!7474)

(assert (=> d!717053 (= lt!898385 e!1592811)))

(declare-fun c!400585 () Bool)

(assert (=> d!717053 (= c!400585 (is-Cons!29439 tl!4068))))

(assert (=> d!717053 (validRegex!3100 lt!898295)))

(assert (=> d!717053 (= (derivative!169 lt!898295 tl!4068) lt!898385)))

(declare-fun b!2513752 () Bool)

(assert (=> b!2513752 (= e!1592811 (derivative!169 (derivativeStep!2043 lt!898295 (h!34859 tl!4068)) (t!211238 tl!4068)))))

(declare-fun b!2513753 () Bool)

(assert (=> b!2513753 (= e!1592811 lt!898295)))

(assert (= (and d!717053 c!400585) b!2513752))

(assert (= (and d!717053 (not c!400585)) b!2513753))

(declare-fun m!2871541 () Bool)

(assert (=> d!717053 m!2871541))

(assert (=> d!717053 m!2871493))

(declare-fun m!2871543 () Bool)

(assert (=> b!2513752 m!2871543))

(assert (=> b!2513752 m!2871543))

(declare-fun m!2871545 () Bool)

(assert (=> b!2513752 m!2871545))

(assert (=> b!2513453 d!717053))

(declare-fun d!717055 () Bool)

(declare-fun nullableFct!638 (Regex!7474) Bool)

(assert (=> d!717055 (= (nullable!2391 (regOne!15460 r!27340)) (nullableFct!638 (regOne!15460 r!27340)))))

(declare-fun bs!468843 () Bool)

(assert (= bs!468843 d!717055))

(declare-fun m!2871547 () Bool)

(assert (=> bs!468843 m!2871547))

(assert (=> b!2513448 d!717055))

(declare-fun call!156102 () Bool)

(declare-fun c!400591 () Bool)

(declare-fun c!400590 () Bool)

(declare-fun bm!156096 () Bool)

(assert (=> bm!156096 (= call!156102 (validRegex!3100 (ite c!400591 (reg!7803 lt!898292) (ite c!400590 (regOne!15461 lt!898292) (regTwo!15460 lt!898292)))))))

(declare-fun b!2513772 () Bool)

(declare-fun e!1592827 () Bool)

(declare-fun call!156101 () Bool)

(assert (=> b!2513772 (= e!1592827 call!156101)))

(declare-fun bm!156097 () Bool)

(assert (=> bm!156097 (= call!156101 call!156102)))

(declare-fun b!2513774 () Bool)

(declare-fun e!1592830 () Bool)

(declare-fun e!1592826 () Bool)

(assert (=> b!2513774 (= e!1592830 e!1592826)))

(declare-fun res!1062628 () Bool)

(assert (=> b!2513774 (= res!1062628 (not (nullable!2391 (reg!7803 lt!898292))))))

(assert (=> b!2513774 (=> (not res!1062628) (not e!1592826))))

(declare-fun b!2513776 () Bool)

(declare-fun e!1592829 () Bool)

(assert (=> b!2513776 (= e!1592829 e!1592827)))

(declare-fun res!1062627 () Bool)

(assert (=> b!2513776 (=> (not res!1062627) (not e!1592827))))

(declare-fun call!156103 () Bool)

(assert (=> b!2513776 (= res!1062627 call!156103)))

(declare-fun b!2513777 () Bool)

(declare-fun res!1062626 () Bool)

(declare-fun e!1592828 () Bool)

(assert (=> b!2513777 (=> (not res!1062626) (not e!1592828))))

(assert (=> b!2513777 (= res!1062626 call!156101)))

(declare-fun e!1592832 () Bool)

(assert (=> b!2513777 (= e!1592832 e!1592828)))

(declare-fun b!2513778 () Bool)

(assert (=> b!2513778 (= e!1592828 call!156103)))

(declare-fun b!2513779 () Bool)

(declare-fun res!1062629 () Bool)

(assert (=> b!2513779 (=> res!1062629 e!1592829)))

(assert (=> b!2513779 (= res!1062629 (not (is-Concat!12170 lt!898292)))))

(assert (=> b!2513779 (= e!1592832 e!1592829)))

(declare-fun d!717057 () Bool)

(declare-fun res!1062630 () Bool)

(declare-fun e!1592831 () Bool)

(assert (=> d!717057 (=> res!1062630 e!1592831)))

(assert (=> d!717057 (= res!1062630 (is-ElementMatch!7474 lt!898292))))

(assert (=> d!717057 (= (validRegex!3100 lt!898292) e!1592831)))

(declare-fun b!2513780 () Bool)

(assert (=> b!2513780 (= e!1592826 call!156102)))

(declare-fun b!2513781 () Bool)

(assert (=> b!2513781 (= e!1592830 e!1592832)))

(assert (=> b!2513781 (= c!400590 (is-Union!7474 lt!898292))))

(declare-fun bm!156098 () Bool)

(assert (=> bm!156098 (= call!156103 (validRegex!3100 (ite c!400590 (regTwo!15461 lt!898292) (regOne!15460 lt!898292))))))

(declare-fun b!2513782 () Bool)

(assert (=> b!2513782 (= e!1592831 e!1592830)))

(assert (=> b!2513782 (= c!400591 (is-Star!7474 lt!898292))))

(assert (= (and d!717057 (not res!1062630)) b!2513782))

(assert (= (and b!2513782 c!400591) b!2513774))

(assert (= (and b!2513782 (not c!400591)) b!2513781))

(assert (= (and b!2513774 res!1062628) b!2513780))

(assert (= (and b!2513781 c!400590) b!2513777))

(assert (= (and b!2513781 (not c!400590)) b!2513779))

(assert (= (and b!2513777 res!1062626) b!2513778))

(assert (= (and b!2513779 (not res!1062629)) b!2513776))

(assert (= (and b!2513776 res!1062627) b!2513772))

(assert (= (or b!2513777 b!2513772) bm!156097))

(assert (= (or b!2513778 b!2513776) bm!156098))

(assert (= (or b!2513780 bm!156097) bm!156096))

(declare-fun m!2871549 () Bool)

(assert (=> bm!156096 m!2871549))

(declare-fun m!2871551 () Bool)

(assert (=> b!2513774 m!2871551))

(declare-fun m!2871553 () Bool)

(assert (=> bm!156098 m!2871553))

(assert (=> b!2513443 d!717057))

(declare-fun d!717059 () Bool)

(assert (=> d!717059 (= (nullable!2391 (derivative!169 (derivativeStep!2043 r!27340 c!14016) tl!4068)) (nullableFct!638 (derivative!169 (derivativeStep!2043 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468844 () Bool)

(assert (= bs!468844 d!717059))

(assert (=> bs!468844 m!2871289))

(declare-fun m!2871555 () Bool)

(assert (=> bs!468844 m!2871555))

(assert (=> b!2513454 d!717059))

(declare-fun d!717061 () Bool)

(declare-fun lt!898388 () Regex!7474)

(assert (=> d!717061 (validRegex!3100 lt!898388)))

(declare-fun e!1592835 () Regex!7474)

(assert (=> d!717061 (= lt!898388 e!1592835)))

(declare-fun c!400594 () Bool)

(assert (=> d!717061 (= c!400594 (is-Cons!29439 tl!4068))))

(assert (=> d!717061 (validRegex!3100 (derivativeStep!2043 r!27340 c!14016))))

(assert (=> d!717061 (= (derivative!169 (derivativeStep!2043 r!27340 c!14016) tl!4068) lt!898388)))

(declare-fun b!2513787 () Bool)

(assert (=> b!2513787 (= e!1592835 (derivative!169 (derivativeStep!2043 (derivativeStep!2043 r!27340 c!14016) (h!34859 tl!4068)) (t!211238 tl!4068)))))

(declare-fun b!2513788 () Bool)

(assert (=> b!2513788 (= e!1592835 (derivativeStep!2043 r!27340 c!14016))))

(assert (= (and d!717061 c!400594) b!2513787))

(assert (= (and d!717061 (not c!400594)) b!2513788))

(declare-fun m!2871557 () Bool)

(assert (=> d!717061 m!2871557))

(assert (=> d!717061 m!2871287))

(declare-fun m!2871559 () Bool)

(assert (=> d!717061 m!2871559))

(assert (=> b!2513787 m!2871287))

(declare-fun m!2871561 () Bool)

(assert (=> b!2513787 m!2871561))

(assert (=> b!2513787 m!2871561))

(declare-fun m!2871563 () Bool)

(assert (=> b!2513787 m!2871563))

(assert (=> b!2513454 d!717061))

(declare-fun bm!156099 () Bool)

(declare-fun call!156107 () Regex!7474)

(declare-fun call!156105 () Regex!7474)

(assert (=> bm!156099 (= call!156107 call!156105)))

(declare-fun b!2513795 () Bool)

(declare-fun e!1592840 () Regex!7474)

(assert (=> b!2513795 (= e!1592840 EmptyLang!7474)))

(declare-fun b!2513796 () Bool)

(declare-fun e!1592843 () Regex!7474)

(declare-fun call!156104 () Regex!7474)

(assert (=> b!2513796 (= e!1592843 (Union!7474 call!156105 call!156104))))

(declare-fun b!2513797 () Bool)

(declare-fun e!1592842 () Regex!7474)

(assert (=> b!2513797 (= e!1592843 e!1592842)))

(declare-fun c!400601 () Bool)

(assert (=> b!2513797 (= c!400601 (is-Star!7474 r!27340))))

(declare-fun call!156106 () Regex!7474)

(declare-fun e!1592844 () Regex!7474)

(declare-fun b!2513798 () Bool)

(assert (=> b!2513798 (= e!1592844 (Union!7474 (Concat!12170 call!156106 (regTwo!15460 r!27340)) call!156104))))

(declare-fun bm!156100 () Bool)

(assert (=> bm!156100 (= call!156106 call!156107)))

(declare-fun b!2513799 () Bool)

(declare-fun c!400600 () Bool)

(assert (=> b!2513799 (= c!400600 (nullable!2391 (regOne!15460 r!27340)))))

(assert (=> b!2513799 (= e!1592842 e!1592844)))

(declare-fun b!2513800 () Bool)

(declare-fun e!1592841 () Regex!7474)

(assert (=> b!2513800 (= e!1592840 e!1592841)))

(declare-fun c!400602 () Bool)

(assert (=> b!2513800 (= c!400602 (is-ElementMatch!7474 r!27340))))

(declare-fun bm!156101 () Bool)

(declare-fun c!400603 () Bool)

(assert (=> bm!156101 (= call!156105 (derivativeStep!2043 (ite c!400603 (regOne!15461 r!27340) (ite c!400601 (reg!7803 r!27340) (regOne!15460 r!27340))) c!14016))))

(declare-fun d!717063 () Bool)

(declare-fun lt!898389 () Regex!7474)

(assert (=> d!717063 (validRegex!3100 lt!898389)))

(assert (=> d!717063 (= lt!898389 e!1592840)))

(declare-fun c!400599 () Bool)

(assert (=> d!717063 (= c!400599 (or (is-EmptyExpr!7474 r!27340) (is-EmptyLang!7474 r!27340)))))

(assert (=> d!717063 (validRegex!3100 r!27340)))

(assert (=> d!717063 (= (derivativeStep!2043 r!27340 c!14016) lt!898389)))

(declare-fun b!2513801 () Bool)

(assert (=> b!2513801 (= c!400603 (is-Union!7474 r!27340))))

(assert (=> b!2513801 (= e!1592841 e!1592843)))

(declare-fun b!2513802 () Bool)

(assert (=> b!2513802 (= e!1592841 (ite (= c!14016 (c!400508 r!27340)) EmptyExpr!7474 EmptyLang!7474))))

(declare-fun bm!156102 () Bool)

(assert (=> bm!156102 (= call!156104 (derivativeStep!2043 (ite c!400603 (regTwo!15461 r!27340) (regTwo!15460 r!27340)) c!14016))))

(declare-fun b!2513803 () Bool)

(assert (=> b!2513803 (= e!1592844 (Union!7474 (Concat!12170 call!156106 (regTwo!15460 r!27340)) EmptyLang!7474))))

(declare-fun b!2513804 () Bool)

(assert (=> b!2513804 (= e!1592842 (Concat!12170 call!156107 r!27340))))

(assert (= (and d!717063 c!400599) b!2513795))

(assert (= (and d!717063 (not c!400599)) b!2513800))

(assert (= (and b!2513800 c!400602) b!2513802))

(assert (= (and b!2513800 (not c!400602)) b!2513801))

(assert (= (and b!2513801 c!400603) b!2513796))

(assert (= (and b!2513801 (not c!400603)) b!2513797))

(assert (= (and b!2513797 c!400601) b!2513804))

(assert (= (and b!2513797 (not c!400601)) b!2513799))

(assert (= (and b!2513799 c!400600) b!2513798))

(assert (= (and b!2513799 (not c!400600)) b!2513803))

(assert (= (or b!2513798 b!2513803) bm!156100))

(assert (= (or b!2513804 bm!156100) bm!156099))

(assert (= (or b!2513796 b!2513798) bm!156102))

(assert (= (or b!2513796 bm!156099) bm!156101))

(assert (=> b!2513799 m!2871285))

(declare-fun m!2871565 () Bool)

(assert (=> bm!156101 m!2871565))

(declare-fun m!2871567 () Bool)

(assert (=> d!717063 m!2871567))

(assert (=> d!717063 m!2871303))

(declare-fun m!2871569 () Bool)

(assert (=> bm!156102 m!2871569))

(assert (=> b!2513454 d!717063))

(declare-fun c!400604 () Bool)

(declare-fun c!400605 () Bool)

(declare-fun bm!156103 () Bool)

(declare-fun call!156109 () Bool)

(assert (=> bm!156103 (= call!156109 (validRegex!3100 (ite c!400605 (reg!7803 r!27340) (ite c!400604 (regOne!15461 r!27340) (regTwo!15460 r!27340)))))))

(declare-fun b!2513821 () Bool)

(declare-fun e!1592854 () Bool)

(declare-fun call!156108 () Bool)

(assert (=> b!2513821 (= e!1592854 call!156108)))

(declare-fun bm!156104 () Bool)

(assert (=> bm!156104 (= call!156108 call!156109)))

(declare-fun b!2513822 () Bool)

(declare-fun e!1592857 () Bool)

(declare-fun e!1592853 () Bool)

(assert (=> b!2513822 (= e!1592857 e!1592853)))

(declare-fun res!1062649 () Bool)

(assert (=> b!2513822 (= res!1062649 (not (nullable!2391 (reg!7803 r!27340))))))

(assert (=> b!2513822 (=> (not res!1062649) (not e!1592853))))

(declare-fun b!2513823 () Bool)

(declare-fun e!1592856 () Bool)

(assert (=> b!2513823 (= e!1592856 e!1592854)))

(declare-fun res!1062648 () Bool)

(assert (=> b!2513823 (=> (not res!1062648) (not e!1592854))))

(declare-fun call!156110 () Bool)

(assert (=> b!2513823 (= res!1062648 call!156110)))

(declare-fun b!2513824 () Bool)

(declare-fun res!1062647 () Bool)

(declare-fun e!1592855 () Bool)

(assert (=> b!2513824 (=> (not res!1062647) (not e!1592855))))

(assert (=> b!2513824 (= res!1062647 call!156108)))

(declare-fun e!1592859 () Bool)

(assert (=> b!2513824 (= e!1592859 e!1592855)))

(declare-fun b!2513825 () Bool)

(assert (=> b!2513825 (= e!1592855 call!156110)))

(declare-fun b!2513826 () Bool)

(declare-fun res!1062650 () Bool)

(assert (=> b!2513826 (=> res!1062650 e!1592856)))

(assert (=> b!2513826 (= res!1062650 (not (is-Concat!12170 r!27340)))))

(assert (=> b!2513826 (= e!1592859 e!1592856)))

(declare-fun d!717065 () Bool)

(declare-fun res!1062651 () Bool)

(declare-fun e!1592858 () Bool)

(assert (=> d!717065 (=> res!1062651 e!1592858)))

(assert (=> d!717065 (= res!1062651 (is-ElementMatch!7474 r!27340))))

(assert (=> d!717065 (= (validRegex!3100 r!27340) e!1592858)))

(declare-fun b!2513827 () Bool)

(assert (=> b!2513827 (= e!1592853 call!156109)))

(declare-fun b!2513828 () Bool)

(assert (=> b!2513828 (= e!1592857 e!1592859)))

(assert (=> b!2513828 (= c!400604 (is-Union!7474 r!27340))))

(declare-fun bm!156105 () Bool)

(assert (=> bm!156105 (= call!156110 (validRegex!3100 (ite c!400604 (regTwo!15461 r!27340) (regOne!15460 r!27340))))))

(declare-fun b!2513829 () Bool)

(assert (=> b!2513829 (= e!1592858 e!1592857)))

(assert (=> b!2513829 (= c!400605 (is-Star!7474 r!27340))))

(assert (= (and d!717065 (not res!1062651)) b!2513829))

(assert (= (and b!2513829 c!400605) b!2513822))

(assert (= (and b!2513829 (not c!400605)) b!2513828))

(assert (= (and b!2513822 res!1062649) b!2513827))

(assert (= (and b!2513828 c!400604) b!2513824))

(assert (= (and b!2513828 (not c!400604)) b!2513826))

(assert (= (and b!2513824 res!1062647) b!2513825))

(assert (= (and b!2513826 (not res!1062650)) b!2513823))

(assert (= (and b!2513823 res!1062648) b!2513821))

(assert (= (or b!2513824 b!2513821) bm!156104))

(assert (= (or b!2513825 b!2513823) bm!156105))

(assert (= (or b!2513827 bm!156104) bm!156103))

(declare-fun m!2871571 () Bool)

(assert (=> bm!156103 m!2871571))

(declare-fun m!2871573 () Bool)

(assert (=> b!2513822 m!2871573))

(declare-fun m!2871575 () Bool)

(assert (=> bm!156105 m!2871575))

(assert (=> start!245110 d!717065))

(declare-fun e!1592862 () Bool)

(assert (=> b!2513445 (= tp!803565 e!1592862)))

(declare-fun b!2513842 () Bool)

(declare-fun tp!803600 () Bool)

(assert (=> b!2513842 (= e!1592862 tp!803600)))

(declare-fun b!2513841 () Bool)

(declare-fun tp!803601 () Bool)

(declare-fun tp!803599 () Bool)

(assert (=> b!2513841 (= e!1592862 (and tp!803601 tp!803599))))

(declare-fun b!2513843 () Bool)

(declare-fun tp!803598 () Bool)

(declare-fun tp!803597 () Bool)

(assert (=> b!2513843 (= e!1592862 (and tp!803598 tp!803597))))

(declare-fun b!2513840 () Bool)

(assert (=> b!2513840 (= e!1592862 tp_is_empty!12803)))

(assert (= (and b!2513445 (is-ElementMatch!7474 (regOne!15460 r!27340))) b!2513840))

(assert (= (and b!2513445 (is-Concat!12170 (regOne!15460 r!27340))) b!2513841))

(assert (= (and b!2513445 (is-Star!7474 (regOne!15460 r!27340))) b!2513842))

(assert (= (and b!2513445 (is-Union!7474 (regOne!15460 r!27340))) b!2513843))

(declare-fun e!1592863 () Bool)

(assert (=> b!2513445 (= tp!803564 e!1592863)))

(declare-fun b!2513846 () Bool)

(declare-fun tp!803605 () Bool)

(assert (=> b!2513846 (= e!1592863 tp!803605)))

(declare-fun b!2513845 () Bool)

(declare-fun tp!803606 () Bool)

(declare-fun tp!803604 () Bool)

(assert (=> b!2513845 (= e!1592863 (and tp!803606 tp!803604))))

(declare-fun b!2513847 () Bool)

(declare-fun tp!803603 () Bool)

(declare-fun tp!803602 () Bool)

(assert (=> b!2513847 (= e!1592863 (and tp!803603 tp!803602))))

(declare-fun b!2513844 () Bool)

(assert (=> b!2513844 (= e!1592863 tp_is_empty!12803)))

(assert (= (and b!2513445 (is-ElementMatch!7474 (regTwo!15460 r!27340))) b!2513844))

(assert (= (and b!2513445 (is-Concat!12170 (regTwo!15460 r!27340))) b!2513845))

(assert (= (and b!2513445 (is-Star!7474 (regTwo!15460 r!27340))) b!2513846))

(assert (= (and b!2513445 (is-Union!7474 (regTwo!15460 r!27340))) b!2513847))

(declare-fun e!1592864 () Bool)

(assert (=> b!2513449 (= tp!803563 e!1592864)))

(declare-fun b!2513850 () Bool)

(declare-fun tp!803610 () Bool)

(assert (=> b!2513850 (= e!1592864 tp!803610)))

(declare-fun b!2513849 () Bool)

(declare-fun tp!803611 () Bool)

(declare-fun tp!803609 () Bool)

(assert (=> b!2513849 (= e!1592864 (and tp!803611 tp!803609))))

(declare-fun b!2513851 () Bool)

(declare-fun tp!803608 () Bool)

(declare-fun tp!803607 () Bool)

(assert (=> b!2513851 (= e!1592864 (and tp!803608 tp!803607))))

(declare-fun b!2513848 () Bool)

(assert (=> b!2513848 (= e!1592864 tp_is_empty!12803)))

(assert (= (and b!2513449 (is-ElementMatch!7474 (reg!7803 r!27340))) b!2513848))

(assert (= (and b!2513449 (is-Concat!12170 (reg!7803 r!27340))) b!2513849))

(assert (= (and b!2513449 (is-Star!7474 (reg!7803 r!27340))) b!2513850))

(assert (= (and b!2513449 (is-Union!7474 (reg!7803 r!27340))) b!2513851))

(declare-fun b!2513856 () Bool)

(declare-fun e!1592867 () Bool)

(declare-fun tp!803614 () Bool)

(assert (=> b!2513856 (= e!1592867 (and tp_is_empty!12803 tp!803614))))

(assert (=> b!2513452 (= tp!803567 e!1592867)))

(assert (= (and b!2513452 (is-Cons!29439 (t!211238 tl!4068))) b!2513856))

(declare-fun e!1592868 () Bool)

(assert (=> b!2513447 (= tp!803568 e!1592868)))

(declare-fun b!2513859 () Bool)

(declare-fun tp!803618 () Bool)

(assert (=> b!2513859 (= e!1592868 tp!803618)))

(declare-fun b!2513858 () Bool)

(declare-fun tp!803619 () Bool)

(declare-fun tp!803617 () Bool)

(assert (=> b!2513858 (= e!1592868 (and tp!803619 tp!803617))))

(declare-fun b!2513860 () Bool)

(declare-fun tp!803616 () Bool)

(declare-fun tp!803615 () Bool)

(assert (=> b!2513860 (= e!1592868 (and tp!803616 tp!803615))))

(declare-fun b!2513857 () Bool)

(assert (=> b!2513857 (= e!1592868 tp_is_empty!12803)))

(assert (= (and b!2513447 (is-ElementMatch!7474 (regOne!15461 r!27340))) b!2513857))

(assert (= (and b!2513447 (is-Concat!12170 (regOne!15461 r!27340))) b!2513858))

(assert (= (and b!2513447 (is-Star!7474 (regOne!15461 r!27340))) b!2513859))

(assert (= (and b!2513447 (is-Union!7474 (regOne!15461 r!27340))) b!2513860))

(declare-fun e!1592869 () Bool)

(assert (=> b!2513447 (= tp!803566 e!1592869)))

(declare-fun b!2513863 () Bool)

(declare-fun tp!803623 () Bool)

(assert (=> b!2513863 (= e!1592869 tp!803623)))

(declare-fun b!2513862 () Bool)

(declare-fun tp!803624 () Bool)

(declare-fun tp!803622 () Bool)

(assert (=> b!2513862 (= e!1592869 (and tp!803624 tp!803622))))

(declare-fun b!2513864 () Bool)

(declare-fun tp!803621 () Bool)

(declare-fun tp!803620 () Bool)

(assert (=> b!2513864 (= e!1592869 (and tp!803621 tp!803620))))

(declare-fun b!2513861 () Bool)

(assert (=> b!2513861 (= e!1592869 tp_is_empty!12803)))

(assert (= (and b!2513447 (is-ElementMatch!7474 (regTwo!15461 r!27340))) b!2513861))

(assert (= (and b!2513447 (is-Concat!12170 (regTwo!15461 r!27340))) b!2513862))

(assert (= (and b!2513447 (is-Star!7474 (regTwo!15461 r!27340))) b!2513863))

(assert (= (and b!2513447 (is-Union!7474 (regTwo!15461 r!27340))) b!2513864))

(push 1)

(assert (not b!2513744))

(assert (not b!2513702))

(assert (not d!717007))

(assert tp_is_empty!12803)

(assert (not b!2513859))

(assert (not b!2513748))

(assert (not b!2513697))

(assert (not b!2513850))

(assert (not d!717053))

(assert (not b!2513787))

(assert (not b!2513822))

(assert (not b!2513682))

(assert (not d!717029))

(assert (not d!717055))

(assert (not d!717041))

(assert (not b!2513582))

(assert (not b!2513711))

(assert (not b!2513630))

(assert (not b!2513846))

(assert (not d!717039))

(assert (not b!2513549))

(assert (not b!2513750))

(assert (not b!2513841))

(assert (not bm!156076))

(assert (not b!2513741))

(assert (not b!2513862))

(assert (not d!717037))

(assert (not b!2513851))

(assert (not b!2513581))

(assert (not b!2513633))

(assert (not b!2513737))

(assert (not bm!156062))

(assert (not d!717061))

(assert (not b!2513704))

(assert (not b!2513736))

(assert (not b!2513637))

(assert (not b!2513752))

(assert (not bm!156105))

(assert (not b!2513863))

(assert (not b!2513635))

(assert (not b!2513552))

(assert (not d!717015))

(assert (not b!2513843))

(assert (not b!2513849))

(assert (not b!2513559))

(assert (not b!2513845))

(assert (not b!2513631))

(assert (not b!2513554))

(assert (not bm!156098))

(assert (not b!2513856))

(assert (not b!2513700))

(assert (not b!2513632))

(assert (not b!2513707))

(assert (not b!2513716))

(assert (not d!717025))

(assert (not b!2513774))

(assert (not b!2513751))

(assert (not b!2513706))

(assert (not bm!156101))

(assert (not d!717043))

(assert (not bm!156096))

(assert (not d!717045))

(assert (not b!2513556))

(assert (not d!717049))

(assert (not b!2513858))

(assert (not b!2513720))

(assert (not bm!156089))

(assert (not b!2513718))

(assert (not bm!156075))

(assert (not bm!156083))

(assert (not d!717051))

(assert (not b!2513860))

(assert (not bm!156084))

(assert (not d!717059))

(assert (not d!717017))

(assert (not d!717063))

(assert (not b!2513847))

(assert (not b!2513692))

(assert (not b!2513864))

(assert (not b!2513558))

(assert (not b!2513746))

(assert (not d!717023))

(assert (not bm!156102))

(assert (not b!2513842))

(assert (not b!2513721))

(assert (not bm!156103))

(assert (not b!2513799))

(assert (not b!2513714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

