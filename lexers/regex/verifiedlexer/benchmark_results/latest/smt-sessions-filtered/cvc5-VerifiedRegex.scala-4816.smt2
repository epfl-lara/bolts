; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!247546 () Bool)

(assert start!247546)

(declare-fun b!2553123 () Bool)

(declare-fun e!1613120 () Bool)

(declare-fun tp!814303 () Bool)

(declare-fun tp!814306 () Bool)

(assert (=> b!2553123 (= e!1613120 (and tp!814303 tp!814306))))

(declare-fun b!2553124 () Bool)

(declare-fun tp!814304 () Bool)

(declare-fun tp!814308 () Bool)

(assert (=> b!2553124 (= e!1613120 (and tp!814304 tp!814308))))

(declare-fun b!2553125 () Bool)

(declare-fun tp_is_empty!13067 () Bool)

(assert (=> b!2553125 (= e!1613120 tp_is_empty!13067)))

(declare-fun b!2553126 () Bool)

(declare-fun tp!814307 () Bool)

(assert (=> b!2553126 (= e!1613120 tp!814307)))

(declare-fun b!2553127 () Bool)

(declare-fun res!1075332 () Bool)

(declare-fun e!1613121 () Bool)

(assert (=> b!2553127 (=> (not res!1075332) (not e!1613121))))

(declare-datatypes ((C!15370 0))(
  ( (C!15371 (val!9337 Int)) )
))
(declare-datatypes ((Regex!7606 0))(
  ( (ElementMatch!7606 (c!409464 C!15370)) (Concat!12302 (regOne!15724 Regex!7606) (regTwo!15724 Regex!7606)) (EmptyExpr!7606) (Star!7606 (reg!7935 Regex!7606)) (EmptyLang!7606) (Union!7606 (regOne!15725 Regex!7606) (regTwo!15725 Regex!7606)) )
))
(declare-fun r!27340 () Regex!7606)

(assert (=> b!2553127 (= res!1075332 (and (not (is-EmptyExpr!7606 r!27340)) (not (is-EmptyLang!7606 r!27340)) (not (is-ElementMatch!7606 r!27340)) (not (is-Union!7606 r!27340)) (not (is-Star!7606 r!27340))))))

(declare-fun b!2553128 () Bool)

(declare-fun e!1613122 () Bool)

(assert (=> b!2553128 (= e!1613121 (not e!1613122))))

(declare-fun res!1075337 () Bool)

(assert (=> b!2553128 (=> res!1075337 e!1613122)))

(declare-fun lt!903721 () Bool)

(assert (=> b!2553128 (= res!1075337 (not lt!903721))))

(declare-fun e!1613117 () Bool)

(assert (=> b!2553128 e!1613117))

(declare-fun res!1075335 () Bool)

(assert (=> b!2553128 (=> res!1075335 e!1613117)))

(assert (=> b!2553128 (= res!1075335 lt!903721)))

(declare-fun lt!903713 () Regex!7606)

(declare-datatypes ((List!29671 0))(
  ( (Nil!29571) (Cons!29571 (h!34991 C!15370) (t!211370 List!29671)) )
))
(declare-fun tl!4068 () List!29671)

(declare-fun matchR!3551 (Regex!7606 List!29671) Bool)

(assert (=> b!2553128 (= lt!903721 (matchR!3551 lt!903713 tl!4068))))

(declare-fun lt!903723 () Regex!7606)

(declare-datatypes ((Unit!43397 0))(
  ( (Unit!43398) )
))
(declare-fun lt!903716 () Unit!43397)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!201 (Regex!7606 Regex!7606 List!29671) Unit!43397)

(assert (=> b!2553128 (= lt!903716 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!201 lt!903713 lt!903723 tl!4068))))

(declare-fun lt!903719 () Regex!7606)

(declare-fun derivative!301 (Regex!7606 List!29671) Regex!7606)

(assert (=> b!2553128 (= (matchR!3551 lt!903719 tl!4068) (matchR!3551 (derivative!301 lt!903719 tl!4068) Nil!29571))))

(declare-fun lt!903717 () Unit!43397)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!197 (Regex!7606 List!29671) Unit!43397)

(assert (=> b!2553128 (= lt!903717 (lemmaMatchRIsSameAsWholeDerivativeAndNil!197 lt!903719 tl!4068))))

(assert (=> b!2553128 (= lt!903719 (Union!7606 lt!903713 lt!903723))))

(declare-fun c!14016 () C!15370)

(declare-fun derivativeStep!2175 (Regex!7606 C!15370) Regex!7606)

(assert (=> b!2553128 (= lt!903723 (derivativeStep!2175 (regTwo!15724 r!27340) c!14016))))

(declare-fun lt!903718 () Regex!7606)

(assert (=> b!2553128 (= lt!903713 (Concat!12302 lt!903718 (regTwo!15724 r!27340)))))

(assert (=> b!2553128 (= lt!903718 (derivativeStep!2175 (regOne!15724 r!27340) c!14016))))

(declare-fun b!2553129 () Bool)

(declare-fun res!1075339 () Bool)

(assert (=> b!2553129 (=> (not res!1075339) (not e!1613121))))

(declare-fun nullable!2523 (Regex!7606) Bool)

(assert (=> b!2553129 (= res!1075339 (nullable!2523 (derivative!301 (derivativeStep!2175 r!27340 c!14016) tl!4068)))))

(declare-fun res!1075336 () Bool)

(assert (=> start!247546 (=> (not res!1075336) (not e!1613121))))

(declare-fun validRegex!3232 (Regex!7606) Bool)

(assert (=> start!247546 (= res!1075336 (validRegex!3232 r!27340))))

(assert (=> start!247546 e!1613121))

(assert (=> start!247546 e!1613120))

(assert (=> start!247546 tp_is_empty!13067))

(declare-fun e!1613118 () Bool)

(assert (=> start!247546 e!1613118))

(declare-fun b!2553130 () Bool)

(declare-fun res!1075338 () Bool)

(declare-fun e!1613119 () Bool)

(assert (=> b!2553130 (=> res!1075338 e!1613119)))

(declare-datatypes ((tuple2!29574 0))(
  ( (tuple2!29575 (_1!17329 List!29671) (_2!17329 List!29671)) )
))
(declare-fun lt!903715 () tuple2!29574)

(assert (=> b!2553130 (= res!1075338 (not (matchR!3551 (regTwo!15724 r!27340) (_2!17329 lt!903715))))))

(declare-fun b!2553131 () Bool)

(declare-fun res!1075340 () Bool)

(assert (=> b!2553131 (=> res!1075340 e!1613119)))

(assert (=> b!2553131 (= res!1075340 (not (matchR!3551 lt!903718 (_1!17329 lt!903715))))))

(declare-fun b!2553132 () Bool)

(assert (=> b!2553132 (= e!1613119 (validRegex!3232 (regOne!15724 r!27340)))))

(assert (=> b!2553132 (matchR!3551 (derivative!301 lt!903718 (_1!17329 lt!903715)) Nil!29571)))

(declare-fun lt!903720 () Unit!43397)

(assert (=> b!2553132 (= lt!903720 (lemmaMatchRIsSameAsWholeDerivativeAndNil!197 lt!903718 (_1!17329 lt!903715)))))

(declare-fun b!2553133 () Bool)

(assert (=> b!2553133 (= e!1613117 (matchR!3551 lt!903723 tl!4068))))

(declare-fun b!2553134 () Bool)

(declare-fun res!1075331 () Bool)

(assert (=> b!2553134 (=> res!1075331 e!1613119)))

(assert (=> b!2553134 (= res!1075331 (not (matchR!3551 (regOne!15724 r!27340) (Cons!29571 c!14016 (_1!17329 lt!903715)))))))

(declare-fun b!2553135 () Bool)

(declare-fun tp!814305 () Bool)

(assert (=> b!2553135 (= e!1613118 (and tp_is_empty!13067 tp!814305))))

(declare-fun b!2553136 () Bool)

(declare-fun res!1075333 () Bool)

(assert (=> b!2553136 (=> (not res!1075333) (not e!1613121))))

(assert (=> b!2553136 (= res!1075333 (nullable!2523 (regOne!15724 r!27340)))))

(declare-fun b!2553137 () Bool)

(assert (=> b!2553137 (= e!1613122 e!1613119)))

(declare-fun res!1075334 () Bool)

(assert (=> b!2553137 (=> res!1075334 e!1613119)))

(declare-fun ++!7263 (List!29671 List!29671) List!29671)

(assert (=> b!2553137 (= res!1075334 (not (= (++!7263 (_1!17329 lt!903715) (_2!17329 lt!903715)) tl!4068)))))

(declare-datatypes ((Option!5907 0))(
  ( (None!5906) (Some!5906 (v!31847 tuple2!29574)) )
))
(declare-fun lt!903722 () Option!5907)

(declare-fun get!9289 (Option!5907) tuple2!29574)

(assert (=> b!2553137 (= lt!903715 (get!9289 lt!903722))))

(declare-fun isDefined!4729 (Option!5907) Bool)

(assert (=> b!2553137 (isDefined!4729 lt!903722)))

(declare-fun findConcatSeparation!929 (Regex!7606 Regex!7606 List!29671 List!29671 List!29671) Option!5907)

(assert (=> b!2553137 (= lt!903722 (findConcatSeparation!929 lt!903718 (regTwo!15724 r!27340) Nil!29571 tl!4068 tl!4068))))

(declare-fun lt!903714 () Unit!43397)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!211 (Regex!7606 Regex!7606 List!29671) Unit!43397)

(assert (=> b!2553137 (= lt!903714 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!211 lt!903718 (regTwo!15724 r!27340) tl!4068))))

(assert (= (and start!247546 res!1075336) b!2553129))

(assert (= (and b!2553129 res!1075339) b!2553127))

(assert (= (and b!2553127 res!1075332) b!2553136))

(assert (= (and b!2553136 res!1075333) b!2553128))

(assert (= (and b!2553128 (not res!1075335)) b!2553133))

(assert (= (and b!2553128 (not res!1075337)) b!2553137))

(assert (= (and b!2553137 (not res!1075334)) b!2553131))

(assert (= (and b!2553131 (not res!1075340)) b!2553130))

(assert (= (and b!2553130 (not res!1075338)) b!2553134))

(assert (= (and b!2553134 (not res!1075331)) b!2553132))

(assert (= (and start!247546 (is-ElementMatch!7606 r!27340)) b!2553125))

(assert (= (and start!247546 (is-Concat!12302 r!27340)) b!2553123))

(assert (= (and start!247546 (is-Star!7606 r!27340)) b!2553126))

(assert (= (and start!247546 (is-Union!7606 r!27340)) b!2553124))

(assert (= (and start!247546 (is-Cons!29571 tl!4068)) b!2553135))

(declare-fun m!2895429 () Bool)

(assert (=> b!2553134 m!2895429))

(declare-fun m!2895431 () Bool)

(assert (=> start!247546 m!2895431))

(declare-fun m!2895433 () Bool)

(assert (=> b!2553131 m!2895433))

(declare-fun m!2895435 () Bool)

(assert (=> b!2553130 m!2895435))

(declare-fun m!2895437 () Bool)

(assert (=> b!2553129 m!2895437))

(assert (=> b!2553129 m!2895437))

(declare-fun m!2895439 () Bool)

(assert (=> b!2553129 m!2895439))

(assert (=> b!2553129 m!2895439))

(declare-fun m!2895441 () Bool)

(assert (=> b!2553129 m!2895441))

(declare-fun m!2895443 () Bool)

(assert (=> b!2553128 m!2895443))

(declare-fun m!2895445 () Bool)

(assert (=> b!2553128 m!2895445))

(declare-fun m!2895447 () Bool)

(assert (=> b!2553128 m!2895447))

(declare-fun m!2895449 () Bool)

(assert (=> b!2553128 m!2895449))

(declare-fun m!2895451 () Bool)

(assert (=> b!2553128 m!2895451))

(declare-fun m!2895453 () Bool)

(assert (=> b!2553128 m!2895453))

(assert (=> b!2553128 m!2895449))

(declare-fun m!2895455 () Bool)

(assert (=> b!2553128 m!2895455))

(declare-fun m!2895457 () Bool)

(assert (=> b!2553128 m!2895457))

(declare-fun m!2895459 () Bool)

(assert (=> b!2553132 m!2895459))

(declare-fun m!2895461 () Bool)

(assert (=> b!2553132 m!2895461))

(assert (=> b!2553132 m!2895461))

(declare-fun m!2895463 () Bool)

(assert (=> b!2553132 m!2895463))

(declare-fun m!2895465 () Bool)

(assert (=> b!2553132 m!2895465))

(declare-fun m!2895467 () Bool)

(assert (=> b!2553136 m!2895467))

(declare-fun m!2895469 () Bool)

(assert (=> b!2553133 m!2895469))

(declare-fun m!2895471 () Bool)

(assert (=> b!2553137 m!2895471))

(declare-fun m!2895473 () Bool)

(assert (=> b!2553137 m!2895473))

(declare-fun m!2895475 () Bool)

(assert (=> b!2553137 m!2895475))

(declare-fun m!2895477 () Bool)

(assert (=> b!2553137 m!2895477))

(declare-fun m!2895479 () Bool)

(assert (=> b!2553137 m!2895479))

(push 1)

(assert (not b!2553133))

(assert (not b!2553136))

(assert (not start!247546))

(assert (not b!2553124))

(assert (not b!2553135))

(assert (not b!2553123))

(assert tp_is_empty!13067)

(assert (not b!2553131))

(assert (not b!2553126))

(assert (not b!2553128))

(assert (not b!2553129))

(assert (not b!2553134))

(assert (not b!2553130))

(assert (not b!2553132))

(assert (not b!2553137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2553239 () Bool)

(declare-fun e!1613172 () Bool)

(declare-fun head!5813 (List!29671) C!15370)

(assert (=> b!2553239 (= e!1613172 (= (head!5813 tl!4068) (c!409464 lt!903719)))))

(declare-fun b!2553240 () Bool)

(declare-fun e!1613171 () Bool)

(assert (=> b!2553240 (= e!1613171 (nullable!2523 lt!903719))))

(declare-fun b!2553241 () Bool)

(declare-fun e!1613170 () Bool)

(declare-fun e!1613169 () Bool)

(assert (=> b!2553241 (= e!1613170 e!1613169)))

(declare-fun res!1075404 () Bool)

(assert (=> b!2553241 (=> (not res!1075404) (not e!1613169))))

(declare-fun lt!903761 () Bool)

(assert (=> b!2553241 (= res!1075404 (not lt!903761))))

(declare-fun b!2553242 () Bool)

(declare-fun e!1613174 () Bool)

(declare-fun call!162690 () Bool)

(assert (=> b!2553242 (= e!1613174 (= lt!903761 call!162690))))

(declare-fun b!2553243 () Bool)

(declare-fun res!1075409 () Bool)

(assert (=> b!2553243 (=> (not res!1075409) (not e!1613172))))

(assert (=> b!2553243 (= res!1075409 (not call!162690))))

(declare-fun d!723639 () Bool)

(assert (=> d!723639 e!1613174))

(declare-fun c!409479 () Bool)

(assert (=> d!723639 (= c!409479 (is-EmptyExpr!7606 lt!903719))))

(assert (=> d!723639 (= lt!903761 e!1613171)))

(declare-fun c!409480 () Bool)

(declare-fun isEmpty!17021 (List!29671) Bool)

(assert (=> d!723639 (= c!409480 (isEmpty!17021 tl!4068))))

(assert (=> d!723639 (validRegex!3232 lt!903719)))

(assert (=> d!723639 (= (matchR!3551 lt!903719 tl!4068) lt!903761)))

(declare-fun b!2553244 () Bool)

(declare-fun res!1075406 () Bool)

(declare-fun e!1613173 () Bool)

(assert (=> b!2553244 (=> res!1075406 e!1613173)))

(declare-fun tail!4088 (List!29671) List!29671)

(assert (=> b!2553244 (= res!1075406 (not (isEmpty!17021 (tail!4088 tl!4068))))))

(declare-fun b!2553245 () Bool)

(declare-fun res!1075405 () Bool)

(assert (=> b!2553245 (=> (not res!1075405) (not e!1613172))))

(assert (=> b!2553245 (= res!1075405 (isEmpty!17021 (tail!4088 tl!4068)))))

(declare-fun b!2553246 () Bool)

(declare-fun e!1613175 () Bool)

(assert (=> b!2553246 (= e!1613174 e!1613175)))

(declare-fun c!409478 () Bool)

(assert (=> b!2553246 (= c!409478 (is-EmptyLang!7606 lt!903719))))

(declare-fun b!2553247 () Bool)

(declare-fun res!1075410 () Bool)

(assert (=> b!2553247 (=> res!1075410 e!1613170)))

(assert (=> b!2553247 (= res!1075410 e!1613172)))

(declare-fun res!1075403 () Bool)

(assert (=> b!2553247 (=> (not res!1075403) (not e!1613172))))

(assert (=> b!2553247 (= res!1075403 lt!903761)))

(declare-fun b!2553248 () Bool)

(assert (=> b!2553248 (= e!1613169 e!1613173)))

(declare-fun res!1075407 () Bool)

(assert (=> b!2553248 (=> res!1075407 e!1613173)))

(assert (=> b!2553248 (= res!1075407 call!162690)))

(declare-fun b!2553249 () Bool)

(assert (=> b!2553249 (= e!1613171 (matchR!3551 (derivativeStep!2175 lt!903719 (head!5813 tl!4068)) (tail!4088 tl!4068)))))

(declare-fun b!2553250 () Bool)

(declare-fun res!1075408 () Bool)

(assert (=> b!2553250 (=> res!1075408 e!1613170)))

(assert (=> b!2553250 (= res!1075408 (not (is-ElementMatch!7606 lt!903719)))))

(assert (=> b!2553250 (= e!1613175 e!1613170)))

(declare-fun bm!162685 () Bool)

(assert (=> bm!162685 (= call!162690 (isEmpty!17021 tl!4068))))

(declare-fun b!2553251 () Bool)

(assert (=> b!2553251 (= e!1613173 (not (= (head!5813 tl!4068) (c!409464 lt!903719))))))

(declare-fun b!2553252 () Bool)

(assert (=> b!2553252 (= e!1613175 (not lt!903761))))

(assert (= (and d!723639 c!409480) b!2553240))

(assert (= (and d!723639 (not c!409480)) b!2553249))

(assert (= (and d!723639 c!409479) b!2553242))

(assert (= (and d!723639 (not c!409479)) b!2553246))

(assert (= (and b!2553246 c!409478) b!2553252))

(assert (= (and b!2553246 (not c!409478)) b!2553250))

(assert (= (and b!2553250 (not res!1075408)) b!2553247))

(assert (= (and b!2553247 res!1075403) b!2553243))

(assert (= (and b!2553243 res!1075409) b!2553245))

(assert (= (and b!2553245 res!1075405) b!2553239))

(assert (= (and b!2553247 (not res!1075410)) b!2553241))

(assert (= (and b!2553241 res!1075404) b!2553248))

(assert (= (and b!2553248 (not res!1075407)) b!2553244))

(assert (= (and b!2553244 (not res!1075406)) b!2553251))

(assert (= (or b!2553242 b!2553243 b!2553248) bm!162685))

(declare-fun m!2895533 () Bool)

(assert (=> b!2553239 m!2895533))

(assert (=> b!2553251 m!2895533))

(declare-fun m!2895535 () Bool)

(assert (=> bm!162685 m!2895535))

(assert (=> b!2553249 m!2895533))

(assert (=> b!2553249 m!2895533))

(declare-fun m!2895537 () Bool)

(assert (=> b!2553249 m!2895537))

(declare-fun m!2895539 () Bool)

(assert (=> b!2553249 m!2895539))

(assert (=> b!2553249 m!2895537))

(assert (=> b!2553249 m!2895539))

(declare-fun m!2895541 () Bool)

(assert (=> b!2553249 m!2895541))

(assert (=> b!2553245 m!2895539))

(assert (=> b!2553245 m!2895539))

(declare-fun m!2895543 () Bool)

(assert (=> b!2553245 m!2895543))

(assert (=> d!723639 m!2895535))

(declare-fun m!2895545 () Bool)

(assert (=> d!723639 m!2895545))

(declare-fun m!2895547 () Bool)

(assert (=> b!2553240 m!2895547))

(assert (=> b!2553244 m!2895539))

(assert (=> b!2553244 m!2895539))

(assert (=> b!2553244 m!2895543))

(assert (=> b!2553128 d!723639))

(declare-fun d!723641 () Bool)

(declare-fun e!1613194 () Bool)

(assert (=> d!723641 e!1613194))

(declare-fun res!1075431 () Bool)

(assert (=> d!723641 (=> res!1075431 e!1613194)))

(assert (=> d!723641 (= res!1075431 (matchR!3551 lt!903713 tl!4068))))

(declare-fun lt!903766 () Unit!43397)

(declare-fun choose!15074 (Regex!7606 Regex!7606 List!29671) Unit!43397)

(assert (=> d!723641 (= lt!903766 (choose!15074 lt!903713 lt!903723 tl!4068))))

(declare-fun e!1613195 () Bool)

(assert (=> d!723641 e!1613195))

(declare-fun res!1075432 () Bool)

(assert (=> d!723641 (=> (not res!1075432) (not e!1613195))))

(assert (=> d!723641 (= res!1075432 (validRegex!3232 lt!903713))))

(assert (=> d!723641 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!201 lt!903713 lt!903723 tl!4068) lt!903766)))

(declare-fun b!2553285 () Bool)

(assert (=> b!2553285 (= e!1613195 (validRegex!3232 lt!903723))))

(declare-fun b!2553286 () Bool)

(assert (=> b!2553286 (= e!1613194 (matchR!3551 lt!903723 tl!4068))))

(assert (= (and d!723641 res!1075432) b!2553285))

(assert (= (and d!723641 (not res!1075431)) b!2553286))

(assert (=> d!723641 m!2895457))

(declare-fun m!2895579 () Bool)

(assert (=> d!723641 m!2895579))

(declare-fun m!2895581 () Bool)

(assert (=> d!723641 m!2895581))

(declare-fun m!2895583 () Bool)

(assert (=> b!2553285 m!2895583))

(assert (=> b!2553286 m!2895469))

(assert (=> b!2553128 d!723641))

(declare-fun d!723649 () Bool)

(assert (=> d!723649 (= (matchR!3551 lt!903719 tl!4068) (matchR!3551 (derivative!301 lt!903719 tl!4068) Nil!29571))))

(declare-fun lt!903771 () Unit!43397)

(declare-fun choose!15075 (Regex!7606 List!29671) Unit!43397)

(assert (=> d!723649 (= lt!903771 (choose!15075 lt!903719 tl!4068))))

(assert (=> d!723649 (validRegex!3232 lt!903719)))

(assert (=> d!723649 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!197 lt!903719 tl!4068) lt!903771)))

(declare-fun bs!469655 () Bool)

(assert (= bs!469655 d!723649))

(assert (=> bs!469655 m!2895443))

(declare-fun m!2895617 () Bool)

(assert (=> bs!469655 m!2895617))

(assert (=> bs!469655 m!2895449))

(assert (=> bs!469655 m!2895455))

(assert (=> bs!469655 m!2895545))

(assert (=> bs!469655 m!2895449))

(assert (=> b!2553128 d!723649))

(declare-fun b!2553315 () Bool)

(declare-fun e!1613213 () Bool)

(assert (=> b!2553315 (= e!1613213 (= (head!5813 tl!4068) (c!409464 lt!903713)))))

(declare-fun b!2553316 () Bool)

(declare-fun e!1613212 () Bool)

(assert (=> b!2553316 (= e!1613212 (nullable!2523 lt!903713))))

(declare-fun b!2553317 () Bool)

(declare-fun e!1613211 () Bool)

(declare-fun e!1613210 () Bool)

(assert (=> b!2553317 (= e!1613211 e!1613210)))

(declare-fun res!1075450 () Bool)

(assert (=> b!2553317 (=> (not res!1075450) (not e!1613210))))

(declare-fun lt!903772 () Bool)

(assert (=> b!2553317 (= res!1075450 (not lt!903772))))

(declare-fun b!2553318 () Bool)

(declare-fun e!1613215 () Bool)

(declare-fun call!162695 () Bool)

(assert (=> b!2553318 (= e!1613215 (= lt!903772 call!162695))))

(declare-fun b!2553319 () Bool)

(declare-fun res!1075455 () Bool)

(assert (=> b!2553319 (=> (not res!1075455) (not e!1613213))))

(assert (=> b!2553319 (= res!1075455 (not call!162695))))

(declare-fun d!723655 () Bool)

(assert (=> d!723655 e!1613215))

(declare-fun c!409494 () Bool)

(assert (=> d!723655 (= c!409494 (is-EmptyExpr!7606 lt!903713))))

(assert (=> d!723655 (= lt!903772 e!1613212)))

(declare-fun c!409495 () Bool)

(assert (=> d!723655 (= c!409495 (isEmpty!17021 tl!4068))))

(assert (=> d!723655 (validRegex!3232 lt!903713)))

(assert (=> d!723655 (= (matchR!3551 lt!903713 tl!4068) lt!903772)))

(declare-fun b!2553320 () Bool)

(declare-fun res!1075452 () Bool)

(declare-fun e!1613214 () Bool)

(assert (=> b!2553320 (=> res!1075452 e!1613214)))

(assert (=> b!2553320 (= res!1075452 (not (isEmpty!17021 (tail!4088 tl!4068))))))

(declare-fun b!2553321 () Bool)

(declare-fun res!1075451 () Bool)

(assert (=> b!2553321 (=> (not res!1075451) (not e!1613213))))

(assert (=> b!2553321 (= res!1075451 (isEmpty!17021 (tail!4088 tl!4068)))))

(declare-fun b!2553322 () Bool)

(declare-fun e!1613216 () Bool)

(assert (=> b!2553322 (= e!1613215 e!1613216)))

(declare-fun c!409493 () Bool)

(assert (=> b!2553322 (= c!409493 (is-EmptyLang!7606 lt!903713))))

(declare-fun b!2553323 () Bool)

(declare-fun res!1075456 () Bool)

(assert (=> b!2553323 (=> res!1075456 e!1613211)))

(assert (=> b!2553323 (= res!1075456 e!1613213)))

(declare-fun res!1075449 () Bool)

(assert (=> b!2553323 (=> (not res!1075449) (not e!1613213))))

(assert (=> b!2553323 (= res!1075449 lt!903772)))

(declare-fun b!2553324 () Bool)

(assert (=> b!2553324 (= e!1613210 e!1613214)))

(declare-fun res!1075453 () Bool)

(assert (=> b!2553324 (=> res!1075453 e!1613214)))

(assert (=> b!2553324 (= res!1075453 call!162695)))

(declare-fun b!2553325 () Bool)

(assert (=> b!2553325 (= e!1613212 (matchR!3551 (derivativeStep!2175 lt!903713 (head!5813 tl!4068)) (tail!4088 tl!4068)))))

(declare-fun b!2553326 () Bool)

(declare-fun res!1075454 () Bool)

(assert (=> b!2553326 (=> res!1075454 e!1613211)))

(assert (=> b!2553326 (= res!1075454 (not (is-ElementMatch!7606 lt!903713)))))

(assert (=> b!2553326 (= e!1613216 e!1613211)))

(declare-fun bm!162690 () Bool)

(assert (=> bm!162690 (= call!162695 (isEmpty!17021 tl!4068))))

(declare-fun b!2553327 () Bool)

(assert (=> b!2553327 (= e!1613214 (not (= (head!5813 tl!4068) (c!409464 lt!903713))))))

(declare-fun b!2553328 () Bool)

(assert (=> b!2553328 (= e!1613216 (not lt!903772))))

(assert (= (and d!723655 c!409495) b!2553316))

(assert (= (and d!723655 (not c!409495)) b!2553325))

(assert (= (and d!723655 c!409494) b!2553318))

(assert (= (and d!723655 (not c!409494)) b!2553322))

(assert (= (and b!2553322 c!409493) b!2553328))

(assert (= (and b!2553322 (not c!409493)) b!2553326))

(assert (= (and b!2553326 (not res!1075454)) b!2553323))

(assert (= (and b!2553323 res!1075449) b!2553319))

(assert (= (and b!2553319 res!1075455) b!2553321))

(assert (= (and b!2553321 res!1075451) b!2553315))

(assert (= (and b!2553323 (not res!1075456)) b!2553317))

(assert (= (and b!2553317 res!1075450) b!2553324))

(assert (= (and b!2553324 (not res!1075453)) b!2553320))

(assert (= (and b!2553320 (not res!1075452)) b!2553327))

(assert (= (or b!2553318 b!2553319 b!2553324) bm!162690))

(assert (=> b!2553315 m!2895533))

(assert (=> b!2553327 m!2895533))

(assert (=> bm!162690 m!2895535))

(assert (=> b!2553325 m!2895533))

(assert (=> b!2553325 m!2895533))

(declare-fun m!2895619 () Bool)

(assert (=> b!2553325 m!2895619))

(assert (=> b!2553325 m!2895539))

(assert (=> b!2553325 m!2895619))

(assert (=> b!2553325 m!2895539))

(declare-fun m!2895621 () Bool)

(assert (=> b!2553325 m!2895621))

(assert (=> b!2553321 m!2895539))

(assert (=> b!2553321 m!2895539))

(assert (=> b!2553321 m!2895543))

(assert (=> d!723655 m!2895535))

(assert (=> d!723655 m!2895581))

(declare-fun m!2895623 () Bool)

(assert (=> b!2553316 m!2895623))

(assert (=> b!2553320 m!2895539))

(assert (=> b!2553320 m!2895539))

(assert (=> b!2553320 m!2895543))

(assert (=> b!2553128 d!723655))

(declare-fun d!723657 () Bool)

(declare-fun lt!903778 () Regex!7606)

(assert (=> d!723657 (validRegex!3232 lt!903778)))

(declare-fun e!1613222 () Regex!7606)

(assert (=> d!723657 (= lt!903778 e!1613222)))

(declare-fun c!409501 () Bool)

(assert (=> d!723657 (= c!409501 (is-Cons!29571 tl!4068))))

(assert (=> d!723657 (validRegex!3232 lt!903719)))

(assert (=> d!723657 (= (derivative!301 lt!903719 tl!4068) lt!903778)))

(declare-fun b!2553339 () Bool)

(assert (=> b!2553339 (= e!1613222 (derivative!301 (derivativeStep!2175 lt!903719 (h!34991 tl!4068)) (t!211370 tl!4068)))))

(declare-fun b!2553340 () Bool)

(assert (=> b!2553340 (= e!1613222 lt!903719)))

(assert (= (and d!723657 c!409501) b!2553339))

(assert (= (and d!723657 (not c!409501)) b!2553340))

(declare-fun m!2895625 () Bool)

(assert (=> d!723657 m!2895625))

(assert (=> d!723657 m!2895545))

(declare-fun m!2895629 () Bool)

(assert (=> b!2553339 m!2895629))

(assert (=> b!2553339 m!2895629))

(declare-fun m!2895631 () Bool)

(assert (=> b!2553339 m!2895631))

(assert (=> b!2553128 d!723657))

(declare-fun b!2553342 () Bool)

(declare-fun e!1613230 () Bool)

(assert (=> b!2553342 (= e!1613230 (= (head!5813 Nil!29571) (c!409464 (derivative!301 lt!903719 tl!4068))))))

(declare-fun b!2553344 () Bool)

(declare-fun e!1613228 () Bool)

(assert (=> b!2553344 (= e!1613228 (nullable!2523 (derivative!301 lt!903719 tl!4068)))))

(declare-fun b!2553346 () Bool)

(declare-fun e!1613226 () Bool)

(declare-fun e!1613224 () Bool)

(assert (=> b!2553346 (= e!1613226 e!1613224)))

(declare-fun res!1075459 () Bool)

(assert (=> b!2553346 (=> (not res!1075459) (not e!1613224))))

(declare-fun lt!903779 () Bool)

(assert (=> b!2553346 (= res!1075459 (not lt!903779))))

(declare-fun b!2553347 () Bool)

(declare-fun e!1613234 () Bool)

(declare-fun call!162696 () Bool)

(assert (=> b!2553347 (= e!1613234 (= lt!903779 call!162696))))

(declare-fun b!2553349 () Bool)

(declare-fun res!1075471 () Bool)

(assert (=> b!2553349 (=> (not res!1075471) (not e!1613230))))

(assert (=> b!2553349 (= res!1075471 (not call!162696))))

(declare-fun d!723659 () Bool)

(assert (=> d!723659 e!1613234))

(declare-fun c!409504 () Bool)

(assert (=> d!723659 (= c!409504 (is-EmptyExpr!7606 (derivative!301 lt!903719 tl!4068)))))

(assert (=> d!723659 (= lt!903779 e!1613228)))

(declare-fun c!409505 () Bool)

(assert (=> d!723659 (= c!409505 (isEmpty!17021 Nil!29571))))

(assert (=> d!723659 (validRegex!3232 (derivative!301 lt!903719 tl!4068))))

(assert (=> d!723659 (= (matchR!3551 (derivative!301 lt!903719 tl!4068) Nil!29571) lt!903779)))

(declare-fun b!2553351 () Bool)

(declare-fun res!1075464 () Bool)

(declare-fun e!1613232 () Bool)

(assert (=> b!2553351 (=> res!1075464 e!1613232)))

(assert (=> b!2553351 (= res!1075464 (not (isEmpty!17021 (tail!4088 Nil!29571))))))

(declare-fun b!2553353 () Bool)

(declare-fun res!1075463 () Bool)

(assert (=> b!2553353 (=> (not res!1075463) (not e!1613230))))

(assert (=> b!2553353 (= res!1075463 (isEmpty!17021 (tail!4088 Nil!29571)))))

(declare-fun b!2553355 () Bool)

(declare-fun e!1613236 () Bool)

(assert (=> b!2553355 (= e!1613234 e!1613236)))

(declare-fun c!409502 () Bool)

(assert (=> b!2553355 (= c!409502 (is-EmptyLang!7606 (derivative!301 lt!903719 tl!4068)))))

(declare-fun b!2553357 () Bool)

(declare-fun res!1075472 () Bool)

(assert (=> b!2553357 (=> res!1075472 e!1613226)))

(assert (=> b!2553357 (= res!1075472 e!1613230)))

(declare-fun res!1075458 () Bool)

(assert (=> b!2553357 (=> (not res!1075458) (not e!1613230))))

(assert (=> b!2553357 (= res!1075458 lt!903779)))

(declare-fun b!2553359 () Bool)

(assert (=> b!2553359 (= e!1613224 e!1613232)))

(declare-fun res!1075467 () Bool)

(assert (=> b!2553359 (=> res!1075467 e!1613232)))

(assert (=> b!2553359 (= res!1075467 call!162696)))

(declare-fun b!2553361 () Bool)

(assert (=> b!2553361 (= e!1613228 (matchR!3551 (derivativeStep!2175 (derivative!301 lt!903719 tl!4068) (head!5813 Nil!29571)) (tail!4088 Nil!29571)))))

(declare-fun b!2553363 () Bool)

(declare-fun res!1075469 () Bool)

(assert (=> b!2553363 (=> res!1075469 e!1613226)))

(assert (=> b!2553363 (= res!1075469 (not (is-ElementMatch!7606 (derivative!301 lt!903719 tl!4068))))))

(assert (=> b!2553363 (= e!1613236 e!1613226)))

(declare-fun bm!162692 () Bool)

(assert (=> bm!162692 (= call!162696 (isEmpty!17021 Nil!29571))))

(declare-fun b!2553366 () Bool)

(assert (=> b!2553366 (= e!1613232 (not (= (head!5813 Nil!29571) (c!409464 (derivative!301 lt!903719 tl!4068)))))))

(declare-fun b!2553368 () Bool)

(assert (=> b!2553368 (= e!1613236 (not lt!903779))))

(assert (= (and d!723659 c!409505) b!2553344))

(assert (= (and d!723659 (not c!409505)) b!2553361))

(assert (= (and d!723659 c!409504) b!2553347))

(assert (= (and d!723659 (not c!409504)) b!2553355))

(assert (= (and b!2553355 c!409502) b!2553368))

(assert (= (and b!2553355 (not c!409502)) b!2553363))

(assert (= (and b!2553363 (not res!1075469)) b!2553357))

(assert (= (and b!2553357 res!1075458) b!2553349))

(assert (= (and b!2553349 res!1075471) b!2553353))

(assert (= (and b!2553353 res!1075463) b!2553342))

(assert (= (and b!2553357 (not res!1075472)) b!2553346))

(assert (= (and b!2553346 res!1075459) b!2553359))

(assert (= (and b!2553359 (not res!1075467)) b!2553351))

(assert (= (and b!2553351 (not res!1075464)) b!2553366))

(assert (= (or b!2553347 b!2553349 b!2553359) bm!162692))

(declare-fun m!2895637 () Bool)

(assert (=> b!2553342 m!2895637))

(assert (=> b!2553366 m!2895637))

(declare-fun m!2895639 () Bool)

(assert (=> bm!162692 m!2895639))

(assert (=> b!2553361 m!2895637))

(assert (=> b!2553361 m!2895449))

(assert (=> b!2553361 m!2895637))

(declare-fun m!2895641 () Bool)

(assert (=> b!2553361 m!2895641))

(declare-fun m!2895643 () Bool)

(assert (=> b!2553361 m!2895643))

(assert (=> b!2553361 m!2895641))

(assert (=> b!2553361 m!2895643))

(declare-fun m!2895645 () Bool)

(assert (=> b!2553361 m!2895645))

(assert (=> b!2553353 m!2895643))

(assert (=> b!2553353 m!2895643))

(declare-fun m!2895647 () Bool)

(assert (=> b!2553353 m!2895647))

(assert (=> d!723659 m!2895639))

(assert (=> d!723659 m!2895449))

(declare-fun m!2895649 () Bool)

(assert (=> d!723659 m!2895649))

(assert (=> b!2553344 m!2895449))

(declare-fun m!2895651 () Bool)

(assert (=> b!2553344 m!2895651))

(assert (=> b!2553351 m!2895643))

(assert (=> b!2553351 m!2895643))

(assert (=> b!2553351 m!2895647))

(assert (=> b!2553128 d!723659))

(declare-fun bm!162701 () Bool)

(declare-fun call!162708 () Regex!7606)

(declare-fun call!162706 () Regex!7606)

(assert (=> bm!162701 (= call!162708 call!162706)))

(declare-fun b!2553395 () Bool)

(declare-fun e!1613254 () Regex!7606)

(declare-fun e!1613257 () Regex!7606)

(assert (=> b!2553395 (= e!1613254 e!1613257)))

(declare-fun c!409518 () Bool)

(assert (=> b!2553395 (= c!409518 (is-ElementMatch!7606 (regTwo!15724 r!27340)))))

(declare-fun bm!162702 () Bool)

(declare-fun c!409520 () Bool)

(declare-fun call!162707 () Regex!7606)

(declare-fun c!409521 () Bool)

(assert (=> bm!162702 (= call!162707 (derivativeStep!2175 (ite c!409521 (regOne!15725 (regTwo!15724 r!27340)) (ite c!409520 (reg!7935 (regTwo!15724 r!27340)) (regOne!15724 (regTwo!15724 r!27340)))) c!14016))))

(declare-fun b!2553396 () Bool)

(declare-fun e!1613256 () Regex!7606)

(declare-fun call!162709 () Regex!7606)

(assert (=> b!2553396 (= e!1613256 (Union!7606 call!162707 call!162709))))

(declare-fun b!2553397 () Bool)

(assert (=> b!2553397 (= c!409521 (is-Union!7606 (regTwo!15724 r!27340)))))

(assert (=> b!2553397 (= e!1613257 e!1613256)))

(declare-fun b!2553398 () Bool)

(assert (=> b!2553398 (= e!1613254 EmptyLang!7606)))

(declare-fun b!2553399 () Bool)

(declare-fun e!1613253 () Regex!7606)

(assert (=> b!2553399 (= e!1613253 (Concat!12302 call!162706 (regTwo!15724 r!27340)))))

(declare-fun bm!162703 () Bool)

(assert (=> bm!162703 (= call!162709 (derivativeStep!2175 (ite c!409521 (regTwo!15725 (regTwo!15724 r!27340)) (regTwo!15724 (regTwo!15724 r!27340))) c!14016))))

(declare-fun d!723663 () Bool)

(declare-fun lt!903786 () Regex!7606)

(assert (=> d!723663 (validRegex!3232 lt!903786)))

(assert (=> d!723663 (= lt!903786 e!1613254)))

(declare-fun c!409522 () Bool)

(assert (=> d!723663 (= c!409522 (or (is-EmptyExpr!7606 (regTwo!15724 r!27340)) (is-EmptyLang!7606 (regTwo!15724 r!27340))))))

(assert (=> d!723663 (validRegex!3232 (regTwo!15724 r!27340))))

(assert (=> d!723663 (= (derivativeStep!2175 (regTwo!15724 r!27340) c!14016) lt!903786)))

(declare-fun b!2553400 () Bool)

(declare-fun e!1613255 () Regex!7606)

(assert (=> b!2553400 (= e!1613255 (Union!7606 (Concat!12302 call!162708 (regTwo!15724 (regTwo!15724 r!27340))) call!162709))))

(declare-fun bm!162704 () Bool)

(assert (=> bm!162704 (= call!162706 call!162707)))

(declare-fun b!2553401 () Bool)

(assert (=> b!2553401 (= e!1613255 (Union!7606 (Concat!12302 call!162708 (regTwo!15724 (regTwo!15724 r!27340))) EmptyLang!7606))))

(declare-fun b!2553402 () Bool)

(assert (=> b!2553402 (= e!1613256 e!1613253)))

(assert (=> b!2553402 (= c!409520 (is-Star!7606 (regTwo!15724 r!27340)))))

(declare-fun b!2553403 () Bool)

(declare-fun c!409519 () Bool)

(assert (=> b!2553403 (= c!409519 (nullable!2523 (regOne!15724 (regTwo!15724 r!27340))))))

(assert (=> b!2553403 (= e!1613253 e!1613255)))

(declare-fun b!2553404 () Bool)

(assert (=> b!2553404 (= e!1613257 (ite (= c!14016 (c!409464 (regTwo!15724 r!27340))) EmptyExpr!7606 EmptyLang!7606))))

(assert (= (and d!723663 c!409522) b!2553398))

(assert (= (and d!723663 (not c!409522)) b!2553395))

(assert (= (and b!2553395 c!409518) b!2553404))

(assert (= (and b!2553395 (not c!409518)) b!2553397))

(assert (= (and b!2553397 c!409521) b!2553396))

(assert (= (and b!2553397 (not c!409521)) b!2553402))

(assert (= (and b!2553402 c!409520) b!2553399))

(assert (= (and b!2553402 (not c!409520)) b!2553403))

(assert (= (and b!2553403 c!409519) b!2553400))

(assert (= (and b!2553403 (not c!409519)) b!2553401))

(assert (= (or b!2553400 b!2553401) bm!162701))

(assert (= (or b!2553399 bm!162701) bm!162704))

(assert (= (or b!2553396 b!2553400) bm!162703))

(assert (= (or b!2553396 bm!162704) bm!162702))

(declare-fun m!2895665 () Bool)

(assert (=> bm!162702 m!2895665))

(declare-fun m!2895667 () Bool)

(assert (=> bm!162703 m!2895667))

(declare-fun m!2895669 () Bool)

(assert (=> d!723663 m!2895669))

(declare-fun m!2895671 () Bool)

(assert (=> d!723663 m!2895671))

(declare-fun m!2895673 () Bool)

(assert (=> b!2553403 m!2895673))

(assert (=> b!2553128 d!723663))

(declare-fun bm!162705 () Bool)

(declare-fun call!162712 () Regex!7606)

(declare-fun call!162710 () Regex!7606)

(assert (=> bm!162705 (= call!162712 call!162710)))

(declare-fun b!2553405 () Bool)

(declare-fun e!1613259 () Regex!7606)

(declare-fun e!1613262 () Regex!7606)

(assert (=> b!2553405 (= e!1613259 e!1613262)))

(declare-fun c!409523 () Bool)

(assert (=> b!2553405 (= c!409523 (is-ElementMatch!7606 (regOne!15724 r!27340)))))

(declare-fun c!409525 () Bool)

(declare-fun bm!162706 () Bool)

(declare-fun c!409526 () Bool)

(declare-fun call!162711 () Regex!7606)

(assert (=> bm!162706 (= call!162711 (derivativeStep!2175 (ite c!409526 (regOne!15725 (regOne!15724 r!27340)) (ite c!409525 (reg!7935 (regOne!15724 r!27340)) (regOne!15724 (regOne!15724 r!27340)))) c!14016))))

(declare-fun b!2553406 () Bool)

(declare-fun e!1613261 () Regex!7606)

(declare-fun call!162713 () Regex!7606)

(assert (=> b!2553406 (= e!1613261 (Union!7606 call!162711 call!162713))))

(declare-fun b!2553407 () Bool)

(assert (=> b!2553407 (= c!409526 (is-Union!7606 (regOne!15724 r!27340)))))

(assert (=> b!2553407 (= e!1613262 e!1613261)))

(declare-fun b!2553408 () Bool)

(assert (=> b!2553408 (= e!1613259 EmptyLang!7606)))

(declare-fun b!2553409 () Bool)

(declare-fun e!1613258 () Regex!7606)

(assert (=> b!2553409 (= e!1613258 (Concat!12302 call!162710 (regOne!15724 r!27340)))))

(declare-fun bm!162707 () Bool)

(assert (=> bm!162707 (= call!162713 (derivativeStep!2175 (ite c!409526 (regTwo!15725 (regOne!15724 r!27340)) (regTwo!15724 (regOne!15724 r!27340))) c!14016))))

(declare-fun d!723669 () Bool)

(declare-fun lt!903787 () Regex!7606)

(assert (=> d!723669 (validRegex!3232 lt!903787)))

(assert (=> d!723669 (= lt!903787 e!1613259)))

(declare-fun c!409527 () Bool)

(assert (=> d!723669 (= c!409527 (or (is-EmptyExpr!7606 (regOne!15724 r!27340)) (is-EmptyLang!7606 (regOne!15724 r!27340))))))

(assert (=> d!723669 (validRegex!3232 (regOne!15724 r!27340))))

(assert (=> d!723669 (= (derivativeStep!2175 (regOne!15724 r!27340) c!14016) lt!903787)))

(declare-fun b!2553410 () Bool)

(declare-fun e!1613260 () Regex!7606)

(assert (=> b!2553410 (= e!1613260 (Union!7606 (Concat!12302 call!162712 (regTwo!15724 (regOne!15724 r!27340))) call!162713))))

(declare-fun bm!162708 () Bool)

(assert (=> bm!162708 (= call!162710 call!162711)))

(declare-fun b!2553411 () Bool)

(assert (=> b!2553411 (= e!1613260 (Union!7606 (Concat!12302 call!162712 (regTwo!15724 (regOne!15724 r!27340))) EmptyLang!7606))))

(declare-fun b!2553412 () Bool)

(assert (=> b!2553412 (= e!1613261 e!1613258)))

(assert (=> b!2553412 (= c!409525 (is-Star!7606 (regOne!15724 r!27340)))))

(declare-fun b!2553413 () Bool)

(declare-fun c!409524 () Bool)

(assert (=> b!2553413 (= c!409524 (nullable!2523 (regOne!15724 (regOne!15724 r!27340))))))

(assert (=> b!2553413 (= e!1613258 e!1613260)))

(declare-fun b!2553414 () Bool)

(assert (=> b!2553414 (= e!1613262 (ite (= c!14016 (c!409464 (regOne!15724 r!27340))) EmptyExpr!7606 EmptyLang!7606))))

(assert (= (and d!723669 c!409527) b!2553408))

(assert (= (and d!723669 (not c!409527)) b!2553405))

(assert (= (and b!2553405 c!409523) b!2553414))

(assert (= (and b!2553405 (not c!409523)) b!2553407))

(assert (= (and b!2553407 c!409526) b!2553406))

(assert (= (and b!2553407 (not c!409526)) b!2553412))

(assert (= (and b!2553412 c!409525) b!2553409))

(assert (= (and b!2553412 (not c!409525)) b!2553413))

(assert (= (and b!2553413 c!409524) b!2553410))

(assert (= (and b!2553413 (not c!409524)) b!2553411))

(assert (= (or b!2553410 b!2553411) bm!162705))

(assert (= (or b!2553409 bm!162705) bm!162708))

(assert (= (or b!2553406 b!2553410) bm!162707))

(assert (= (or b!2553406 bm!162708) bm!162706))

(declare-fun m!2895675 () Bool)

(assert (=> bm!162706 m!2895675))

(declare-fun m!2895677 () Bool)

(assert (=> bm!162707 m!2895677))

(declare-fun m!2895679 () Bool)

(assert (=> d!723669 m!2895679))

(assert (=> d!723669 m!2895459))

(declare-fun m!2895681 () Bool)

(assert (=> b!2553413 m!2895681))

(assert (=> b!2553128 d!723669))

(declare-fun e!1613266 () Bool)

(declare-fun b!2553415 () Bool)

(assert (=> b!2553415 (= e!1613266 (= (head!5813 (Cons!29571 c!14016 (_1!17329 lt!903715))) (c!409464 (regOne!15724 r!27340))))))

(declare-fun b!2553416 () Bool)

(declare-fun e!1613265 () Bool)

(assert (=> b!2553416 (= e!1613265 (nullable!2523 (regOne!15724 r!27340)))))

(declare-fun b!2553417 () Bool)

(declare-fun e!1613264 () Bool)

(declare-fun e!1613263 () Bool)

(assert (=> b!2553417 (= e!1613264 e!1613263)))

(declare-fun res!1075480 () Bool)

(assert (=> b!2553417 (=> (not res!1075480) (not e!1613263))))

(declare-fun lt!903788 () Bool)

(assert (=> b!2553417 (= res!1075480 (not lt!903788))))

(declare-fun b!2553418 () Bool)

(declare-fun e!1613268 () Bool)

(declare-fun call!162714 () Bool)

(assert (=> b!2553418 (= e!1613268 (= lt!903788 call!162714))))

(declare-fun b!2553419 () Bool)

(declare-fun res!1075485 () Bool)

(assert (=> b!2553419 (=> (not res!1075485) (not e!1613266))))

(assert (=> b!2553419 (= res!1075485 (not call!162714))))

(declare-fun d!723671 () Bool)

(assert (=> d!723671 e!1613268))

(declare-fun c!409529 () Bool)

(assert (=> d!723671 (= c!409529 (is-EmptyExpr!7606 (regOne!15724 r!27340)))))

(assert (=> d!723671 (= lt!903788 e!1613265)))

(declare-fun c!409530 () Bool)

(assert (=> d!723671 (= c!409530 (isEmpty!17021 (Cons!29571 c!14016 (_1!17329 lt!903715))))))

(assert (=> d!723671 (validRegex!3232 (regOne!15724 r!27340))))

(assert (=> d!723671 (= (matchR!3551 (regOne!15724 r!27340) (Cons!29571 c!14016 (_1!17329 lt!903715))) lt!903788)))

(declare-fun b!2553420 () Bool)

(declare-fun res!1075482 () Bool)

(declare-fun e!1613267 () Bool)

(assert (=> b!2553420 (=> res!1075482 e!1613267)))

(assert (=> b!2553420 (= res!1075482 (not (isEmpty!17021 (tail!4088 (Cons!29571 c!14016 (_1!17329 lt!903715))))))))

(declare-fun b!2553421 () Bool)

(declare-fun res!1075481 () Bool)

(assert (=> b!2553421 (=> (not res!1075481) (not e!1613266))))

(assert (=> b!2553421 (= res!1075481 (isEmpty!17021 (tail!4088 (Cons!29571 c!14016 (_1!17329 lt!903715)))))))

(declare-fun b!2553422 () Bool)

(declare-fun e!1613269 () Bool)

(assert (=> b!2553422 (= e!1613268 e!1613269)))

(declare-fun c!409528 () Bool)

(assert (=> b!2553422 (= c!409528 (is-EmptyLang!7606 (regOne!15724 r!27340)))))

(declare-fun b!2553423 () Bool)

(declare-fun res!1075486 () Bool)

(assert (=> b!2553423 (=> res!1075486 e!1613264)))

(assert (=> b!2553423 (= res!1075486 e!1613266)))

(declare-fun res!1075479 () Bool)

(assert (=> b!2553423 (=> (not res!1075479) (not e!1613266))))

(assert (=> b!2553423 (= res!1075479 lt!903788)))

(declare-fun b!2553424 () Bool)

(assert (=> b!2553424 (= e!1613263 e!1613267)))

(declare-fun res!1075483 () Bool)

(assert (=> b!2553424 (=> res!1075483 e!1613267)))

(assert (=> b!2553424 (= res!1075483 call!162714)))

(declare-fun b!2553425 () Bool)

(assert (=> b!2553425 (= e!1613265 (matchR!3551 (derivativeStep!2175 (regOne!15724 r!27340) (head!5813 (Cons!29571 c!14016 (_1!17329 lt!903715)))) (tail!4088 (Cons!29571 c!14016 (_1!17329 lt!903715)))))))

(declare-fun b!2553426 () Bool)

(declare-fun res!1075484 () Bool)

(assert (=> b!2553426 (=> res!1075484 e!1613264)))

(assert (=> b!2553426 (= res!1075484 (not (is-ElementMatch!7606 (regOne!15724 r!27340))))))

(assert (=> b!2553426 (= e!1613269 e!1613264)))

(declare-fun bm!162709 () Bool)

(assert (=> bm!162709 (= call!162714 (isEmpty!17021 (Cons!29571 c!14016 (_1!17329 lt!903715))))))

(declare-fun b!2553427 () Bool)

(assert (=> b!2553427 (= e!1613267 (not (= (head!5813 (Cons!29571 c!14016 (_1!17329 lt!903715))) (c!409464 (regOne!15724 r!27340)))))))

(declare-fun b!2553428 () Bool)

(assert (=> b!2553428 (= e!1613269 (not lt!903788))))

(assert (= (and d!723671 c!409530) b!2553416))

(assert (= (and d!723671 (not c!409530)) b!2553425))

(assert (= (and d!723671 c!409529) b!2553418))

(assert (= (and d!723671 (not c!409529)) b!2553422))

(assert (= (and b!2553422 c!409528) b!2553428))

(assert (= (and b!2553422 (not c!409528)) b!2553426))

(assert (= (and b!2553426 (not res!1075484)) b!2553423))

(assert (= (and b!2553423 res!1075479) b!2553419))

(assert (= (and b!2553419 res!1075485) b!2553421))

(assert (= (and b!2553421 res!1075481) b!2553415))

(assert (= (and b!2553423 (not res!1075486)) b!2553417))

(assert (= (and b!2553417 res!1075480) b!2553424))

(assert (= (and b!2553424 (not res!1075483)) b!2553420))

(assert (= (and b!2553420 (not res!1075482)) b!2553427))

(assert (= (or b!2553418 b!2553419 b!2553424) bm!162709))

(declare-fun m!2895683 () Bool)

(assert (=> b!2553415 m!2895683))

(assert (=> b!2553427 m!2895683))

(declare-fun m!2895685 () Bool)

(assert (=> bm!162709 m!2895685))

(assert (=> b!2553425 m!2895683))

(assert (=> b!2553425 m!2895683))

(declare-fun m!2895687 () Bool)

(assert (=> b!2553425 m!2895687))

(declare-fun m!2895689 () Bool)

(assert (=> b!2553425 m!2895689))

(assert (=> b!2553425 m!2895687))

(assert (=> b!2553425 m!2895689))

(declare-fun m!2895691 () Bool)

(assert (=> b!2553425 m!2895691))

(assert (=> b!2553421 m!2895689))

(assert (=> b!2553421 m!2895689))

(declare-fun m!2895693 () Bool)

(assert (=> b!2553421 m!2895693))

(assert (=> d!723671 m!2895685))

(assert (=> d!723671 m!2895459))

(assert (=> b!2553416 m!2895467))

(assert (=> b!2553420 m!2895689))

(assert (=> b!2553420 m!2895689))

(assert (=> b!2553420 m!2895693))

(assert (=> b!2553134 d!723671))

(declare-fun d!723673 () Bool)

(declare-fun nullableFct!748 (Regex!7606) Bool)

(assert (=> d!723673 (= (nullable!2523 (derivative!301 (derivativeStep!2175 r!27340 c!14016) tl!4068)) (nullableFct!748 (derivative!301 (derivativeStep!2175 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469656 () Bool)

(assert (= bs!469656 d!723673))

(assert (=> bs!469656 m!2895439))

(declare-fun m!2895695 () Bool)

(assert (=> bs!469656 m!2895695))

(assert (=> b!2553129 d!723673))

(declare-fun d!723675 () Bool)

(declare-fun lt!903791 () Regex!7606)

(assert (=> d!723675 (validRegex!3232 lt!903791)))

(declare-fun e!1613280 () Regex!7606)

(assert (=> d!723675 (= lt!903791 e!1613280)))

(declare-fun c!409541 () Bool)

(assert (=> d!723675 (= c!409541 (is-Cons!29571 tl!4068))))

(assert (=> d!723675 (validRegex!3232 (derivativeStep!2175 r!27340 c!14016))))

(assert (=> d!723675 (= (derivative!301 (derivativeStep!2175 r!27340 c!14016) tl!4068) lt!903791)))

(declare-fun b!2553449 () Bool)

(assert (=> b!2553449 (= e!1613280 (derivative!301 (derivativeStep!2175 (derivativeStep!2175 r!27340 c!14016) (h!34991 tl!4068)) (t!211370 tl!4068)))))

(declare-fun b!2553450 () Bool)

(assert (=> b!2553450 (= e!1613280 (derivativeStep!2175 r!27340 c!14016))))

(assert (= (and d!723675 c!409541) b!2553449))

(assert (= (and d!723675 (not c!409541)) b!2553450))

(declare-fun m!2895697 () Bool)

(assert (=> d!723675 m!2895697))

(assert (=> d!723675 m!2895437))

(declare-fun m!2895699 () Bool)

(assert (=> d!723675 m!2895699))

(assert (=> b!2553449 m!2895437))

(declare-fun m!2895701 () Bool)

(assert (=> b!2553449 m!2895701))

(assert (=> b!2553449 m!2895701))

(declare-fun m!2895703 () Bool)

(assert (=> b!2553449 m!2895703))

(assert (=> b!2553129 d!723675))

(declare-fun bm!162714 () Bool)

(declare-fun call!162723 () Regex!7606)

(declare-fun call!162721 () Regex!7606)

(assert (=> bm!162714 (= call!162723 call!162721)))

(declare-fun b!2553451 () Bool)

(declare-fun e!1613282 () Regex!7606)

(declare-fun e!1613285 () Regex!7606)

(assert (=> b!2553451 (= e!1613282 e!1613285)))

(declare-fun c!409542 () Bool)

(assert (=> b!2553451 (= c!409542 (is-ElementMatch!7606 r!27340))))

(declare-fun bm!162715 () Bool)

(declare-fun c!409545 () Bool)

(declare-fun c!409544 () Bool)

(declare-fun call!162722 () Regex!7606)

(assert (=> bm!162715 (= call!162722 (derivativeStep!2175 (ite c!409545 (regOne!15725 r!27340) (ite c!409544 (reg!7935 r!27340) (regOne!15724 r!27340))) c!14016))))

(declare-fun b!2553452 () Bool)

(declare-fun e!1613284 () Regex!7606)

(declare-fun call!162724 () Regex!7606)

(assert (=> b!2553452 (= e!1613284 (Union!7606 call!162722 call!162724))))

(declare-fun b!2553453 () Bool)

(assert (=> b!2553453 (= c!409545 (is-Union!7606 r!27340))))

(assert (=> b!2553453 (= e!1613285 e!1613284)))

(declare-fun b!2553454 () Bool)

(assert (=> b!2553454 (= e!1613282 EmptyLang!7606)))

(declare-fun b!2553455 () Bool)

(declare-fun e!1613281 () Regex!7606)

(assert (=> b!2553455 (= e!1613281 (Concat!12302 call!162721 r!27340))))

(declare-fun bm!162716 () Bool)

(assert (=> bm!162716 (= call!162724 (derivativeStep!2175 (ite c!409545 (regTwo!15725 r!27340) (regTwo!15724 r!27340)) c!14016))))

(declare-fun d!723677 () Bool)

(declare-fun lt!903792 () Regex!7606)

(assert (=> d!723677 (validRegex!3232 lt!903792)))

(assert (=> d!723677 (= lt!903792 e!1613282)))

(declare-fun c!409546 () Bool)

(assert (=> d!723677 (= c!409546 (or (is-EmptyExpr!7606 r!27340) (is-EmptyLang!7606 r!27340)))))

(assert (=> d!723677 (validRegex!3232 r!27340)))

(assert (=> d!723677 (= (derivativeStep!2175 r!27340 c!14016) lt!903792)))

(declare-fun e!1613283 () Regex!7606)

(declare-fun b!2553456 () Bool)

(assert (=> b!2553456 (= e!1613283 (Union!7606 (Concat!12302 call!162723 (regTwo!15724 r!27340)) call!162724))))

(declare-fun bm!162717 () Bool)

(assert (=> bm!162717 (= call!162721 call!162722)))

(declare-fun b!2553457 () Bool)

(assert (=> b!2553457 (= e!1613283 (Union!7606 (Concat!12302 call!162723 (regTwo!15724 r!27340)) EmptyLang!7606))))

(declare-fun b!2553458 () Bool)

(assert (=> b!2553458 (= e!1613284 e!1613281)))

(assert (=> b!2553458 (= c!409544 (is-Star!7606 r!27340))))

(declare-fun b!2553459 () Bool)

(declare-fun c!409543 () Bool)

(assert (=> b!2553459 (= c!409543 (nullable!2523 (regOne!15724 r!27340)))))

(assert (=> b!2553459 (= e!1613281 e!1613283)))

(declare-fun b!2553460 () Bool)

(assert (=> b!2553460 (= e!1613285 (ite (= c!14016 (c!409464 r!27340)) EmptyExpr!7606 EmptyLang!7606))))

(assert (= (and d!723677 c!409546) b!2553454))

(assert (= (and d!723677 (not c!409546)) b!2553451))

(assert (= (and b!2553451 c!409542) b!2553460))

(assert (= (and b!2553451 (not c!409542)) b!2553453))

(assert (= (and b!2553453 c!409545) b!2553452))

(assert (= (and b!2553453 (not c!409545)) b!2553458))

(assert (= (and b!2553458 c!409544) b!2553455))

(assert (= (and b!2553458 (not c!409544)) b!2553459))

(assert (= (and b!2553459 c!409543) b!2553456))

(assert (= (and b!2553459 (not c!409543)) b!2553457))

(assert (= (or b!2553456 b!2553457) bm!162714))

(assert (= (or b!2553455 bm!162714) bm!162717))

(assert (= (or b!2553452 b!2553456) bm!162716))

(assert (= (or b!2553452 bm!162717) bm!162715))

(declare-fun m!2895705 () Bool)

(assert (=> bm!162715 m!2895705))

(declare-fun m!2895707 () Bool)

(assert (=> bm!162716 m!2895707))

(declare-fun m!2895709 () Bool)

(assert (=> d!723677 m!2895709))

(assert (=> d!723677 m!2895431))

(assert (=> b!2553459 m!2895467))

(assert (=> b!2553129 d!723677))

(declare-fun b!2553489 () Bool)

(declare-fun e!1613311 () Bool)

(declare-fun call!162738 () Bool)

(assert (=> b!2553489 (= e!1613311 call!162738)))

(declare-fun b!2553490 () Bool)

(declare-fun e!1613306 () Bool)

(declare-fun e!1613310 () Bool)

(assert (=> b!2553490 (= e!1613306 e!1613310)))

(declare-fun c!409556 () Bool)

(assert (=> b!2553490 (= c!409556 (is-Star!7606 r!27340))))

(declare-fun b!2553491 () Bool)

(declare-fun e!1613309 () Bool)

(declare-fun e!1613307 () Bool)

(assert (=> b!2553491 (= e!1613309 e!1613307)))

(declare-fun res!1075498 () Bool)

(assert (=> b!2553491 (=> (not res!1075498) (not e!1613307))))

(assert (=> b!2553491 (= res!1075498 call!162738)))

(declare-fun call!162737 () Bool)

(declare-fun bm!162732 () Bool)

(declare-fun c!409557 () Bool)

(assert (=> bm!162732 (= call!162737 (validRegex!3232 (ite c!409556 (reg!7935 r!27340) (ite c!409557 (regTwo!15725 r!27340) (regOne!15724 r!27340)))))))

(declare-fun d!723679 () Bool)

(declare-fun res!1075501 () Bool)

(assert (=> d!723679 (=> res!1075501 e!1613306)))

(assert (=> d!723679 (= res!1075501 (is-ElementMatch!7606 r!27340))))

(assert (=> d!723679 (= (validRegex!3232 r!27340) e!1613306)))

(declare-fun b!2553492 () Bool)

(declare-fun call!162739 () Bool)

(assert (=> b!2553492 (= e!1613307 call!162739)))

(declare-fun b!2553493 () Bool)

(declare-fun res!1075497 () Bool)

(assert (=> b!2553493 (=> res!1075497 e!1613309)))

(assert (=> b!2553493 (= res!1075497 (not (is-Concat!12302 r!27340)))))

(declare-fun e!1613308 () Bool)

(assert (=> b!2553493 (= e!1613308 e!1613309)))

(declare-fun bm!162733 () Bool)

(assert (=> bm!162733 (= call!162738 call!162737)))

(declare-fun b!2553494 () Bool)

(declare-fun res!1075499 () Bool)

(assert (=> b!2553494 (=> (not res!1075499) (not e!1613311))))

(assert (=> b!2553494 (= res!1075499 call!162739)))

(assert (=> b!2553494 (= e!1613308 e!1613311)))

(declare-fun b!2553495 () Bool)

(declare-fun e!1613305 () Bool)

(assert (=> b!2553495 (= e!1613310 e!1613305)))

(declare-fun res!1075500 () Bool)

(assert (=> b!2553495 (= res!1075500 (not (nullable!2523 (reg!7935 r!27340))))))

(assert (=> b!2553495 (=> (not res!1075500) (not e!1613305))))

(declare-fun b!2553496 () Bool)

(assert (=> b!2553496 (= e!1613310 e!1613308)))

(assert (=> b!2553496 (= c!409557 (is-Union!7606 r!27340))))

(declare-fun bm!162734 () Bool)

(assert (=> bm!162734 (= call!162739 (validRegex!3232 (ite c!409557 (regOne!15725 r!27340) (regTwo!15724 r!27340))))))

(declare-fun b!2553497 () Bool)

(assert (=> b!2553497 (= e!1613305 call!162737)))

(assert (= (and d!723679 (not res!1075501)) b!2553490))

(assert (= (and b!2553490 c!409556) b!2553495))

(assert (= (and b!2553490 (not c!409556)) b!2553496))

(assert (= (and b!2553495 res!1075500) b!2553497))

(assert (= (and b!2553496 c!409557) b!2553494))

(assert (= (and b!2553496 (not c!409557)) b!2553493))

(assert (= (and b!2553494 res!1075499) b!2553489))

(assert (= (and b!2553493 (not res!1075497)) b!2553491))

(assert (= (and b!2553491 res!1075498) b!2553492))

(assert (= (or b!2553494 b!2553492) bm!162734))

(assert (= (or b!2553489 b!2553491) bm!162733))

(assert (= (or b!2553497 bm!162733) bm!162732))

(declare-fun m!2895719 () Bool)

(assert (=> bm!162732 m!2895719))

(declare-fun m!2895721 () Bool)

(assert (=> b!2553495 m!2895721))

(declare-fun m!2895723 () Bool)

(assert (=> bm!162734 m!2895723))

(assert (=> start!247546 d!723679))

(declare-fun b!2553498 () Bool)

(declare-fun e!1613315 () Bool)

(assert (=> b!2553498 (= e!1613315 (= (head!5813 (_2!17329 lt!903715)) (c!409464 (regTwo!15724 r!27340))))))

(declare-fun b!2553499 () Bool)

(declare-fun e!1613314 () Bool)

(assert (=> b!2553499 (= e!1613314 (nullable!2523 (regTwo!15724 r!27340)))))

(declare-fun b!2553500 () Bool)

(declare-fun e!1613313 () Bool)

(declare-fun e!1613312 () Bool)

(assert (=> b!2553500 (= e!1613313 e!1613312)))

(declare-fun res!1075503 () Bool)

(assert (=> b!2553500 (=> (not res!1075503) (not e!1613312))))

(declare-fun lt!903794 () Bool)

(assert (=> b!2553500 (= res!1075503 (not lt!903794))))

(declare-fun b!2553501 () Bool)

(declare-fun e!1613317 () Bool)

(declare-fun call!162740 () Bool)

(assert (=> b!2553501 (= e!1613317 (= lt!903794 call!162740))))

(declare-fun b!2553502 () Bool)

(declare-fun res!1075508 () Bool)

(assert (=> b!2553502 (=> (not res!1075508) (not e!1613315))))

(assert (=> b!2553502 (= res!1075508 (not call!162740))))

(declare-fun d!723683 () Bool)

(assert (=> d!723683 e!1613317))

(declare-fun c!409559 () Bool)

(assert (=> d!723683 (= c!409559 (is-EmptyExpr!7606 (regTwo!15724 r!27340)))))

(assert (=> d!723683 (= lt!903794 e!1613314)))

(declare-fun c!409560 () Bool)

(assert (=> d!723683 (= c!409560 (isEmpty!17021 (_2!17329 lt!903715)))))

(assert (=> d!723683 (validRegex!3232 (regTwo!15724 r!27340))))

(assert (=> d!723683 (= (matchR!3551 (regTwo!15724 r!27340) (_2!17329 lt!903715)) lt!903794)))

(declare-fun b!2553503 () Bool)

(declare-fun res!1075505 () Bool)

(declare-fun e!1613316 () Bool)

(assert (=> b!2553503 (=> res!1075505 e!1613316)))

(assert (=> b!2553503 (= res!1075505 (not (isEmpty!17021 (tail!4088 (_2!17329 lt!903715)))))))

(declare-fun b!2553504 () Bool)

(declare-fun res!1075504 () Bool)

(assert (=> b!2553504 (=> (not res!1075504) (not e!1613315))))

(assert (=> b!2553504 (= res!1075504 (isEmpty!17021 (tail!4088 (_2!17329 lt!903715))))))

(declare-fun b!2553505 () Bool)

(declare-fun e!1613318 () Bool)

(assert (=> b!2553505 (= e!1613317 e!1613318)))

(declare-fun c!409558 () Bool)

(assert (=> b!2553505 (= c!409558 (is-EmptyLang!7606 (regTwo!15724 r!27340)))))

(declare-fun b!2553506 () Bool)

(declare-fun res!1075509 () Bool)

(assert (=> b!2553506 (=> res!1075509 e!1613313)))

(assert (=> b!2553506 (= res!1075509 e!1613315)))

(declare-fun res!1075502 () Bool)

(assert (=> b!2553506 (=> (not res!1075502) (not e!1613315))))

(assert (=> b!2553506 (= res!1075502 lt!903794)))

(declare-fun b!2553507 () Bool)

(assert (=> b!2553507 (= e!1613312 e!1613316)))

(declare-fun res!1075506 () Bool)

(assert (=> b!2553507 (=> res!1075506 e!1613316)))

(assert (=> b!2553507 (= res!1075506 call!162740)))

(declare-fun b!2553508 () Bool)

(assert (=> b!2553508 (= e!1613314 (matchR!3551 (derivativeStep!2175 (regTwo!15724 r!27340) (head!5813 (_2!17329 lt!903715))) (tail!4088 (_2!17329 lt!903715))))))

(declare-fun b!2553509 () Bool)

(declare-fun res!1075507 () Bool)

(assert (=> b!2553509 (=> res!1075507 e!1613313)))

(assert (=> b!2553509 (= res!1075507 (not (is-ElementMatch!7606 (regTwo!15724 r!27340))))))

(assert (=> b!2553509 (= e!1613318 e!1613313)))

(declare-fun bm!162735 () Bool)

(assert (=> bm!162735 (= call!162740 (isEmpty!17021 (_2!17329 lt!903715)))))

(declare-fun b!2553510 () Bool)

(assert (=> b!2553510 (= e!1613316 (not (= (head!5813 (_2!17329 lt!903715)) (c!409464 (regTwo!15724 r!27340)))))))

(declare-fun b!2553511 () Bool)

(assert (=> b!2553511 (= e!1613318 (not lt!903794))))

(assert (= (and d!723683 c!409560) b!2553499))

(assert (= (and d!723683 (not c!409560)) b!2553508))

(assert (= (and d!723683 c!409559) b!2553501))

(assert (= (and d!723683 (not c!409559)) b!2553505))

(assert (= (and b!2553505 c!409558) b!2553511))

(assert (= (and b!2553505 (not c!409558)) b!2553509))

(assert (= (and b!2553509 (not res!1075507)) b!2553506))

(assert (= (and b!2553506 res!1075502) b!2553502))

(assert (= (and b!2553502 res!1075508) b!2553504))

(assert (= (and b!2553504 res!1075504) b!2553498))

(assert (= (and b!2553506 (not res!1075509)) b!2553500))

(assert (= (and b!2553500 res!1075503) b!2553507))

(assert (= (and b!2553507 (not res!1075506)) b!2553503))

(assert (= (and b!2553503 (not res!1075505)) b!2553510))

(assert (= (or b!2553501 b!2553502 b!2553507) bm!162735))

(declare-fun m!2895725 () Bool)

(assert (=> b!2553498 m!2895725))

(assert (=> b!2553510 m!2895725))

(declare-fun m!2895727 () Bool)

(assert (=> bm!162735 m!2895727))

(assert (=> b!2553508 m!2895725))

(assert (=> b!2553508 m!2895725))

(declare-fun m!2895729 () Bool)

(assert (=> b!2553508 m!2895729))

(declare-fun m!2895731 () Bool)

(assert (=> b!2553508 m!2895731))

(assert (=> b!2553508 m!2895729))

(assert (=> b!2553508 m!2895731))

(declare-fun m!2895733 () Bool)

(assert (=> b!2553508 m!2895733))

(assert (=> b!2553504 m!2895731))

(assert (=> b!2553504 m!2895731))

(declare-fun m!2895735 () Bool)

(assert (=> b!2553504 m!2895735))

(assert (=> d!723683 m!2895727))

(assert (=> d!723683 m!2895671))

(declare-fun m!2895737 () Bool)

(assert (=> b!2553499 m!2895737))

(assert (=> b!2553503 m!2895731))

(assert (=> b!2553503 m!2895731))

(assert (=> b!2553503 m!2895735))

(assert (=> b!2553130 d!723683))

(declare-fun d!723685 () Bool)

(assert (=> d!723685 (= (nullable!2523 (regOne!15724 r!27340)) (nullableFct!748 (regOne!15724 r!27340)))))

(declare-fun bs!469657 () Bool)

(assert (= bs!469657 d!723685))

(declare-fun m!2895739 () Bool)

(assert (=> bs!469657 m!2895739))

(assert (=> b!2553136 d!723685))

(declare-fun b!2553512 () Bool)

(declare-fun e!1613322 () Bool)

(assert (=> b!2553512 (= e!1613322 (= (head!5813 (_1!17329 lt!903715)) (c!409464 lt!903718)))))

(declare-fun b!2553513 () Bool)

(declare-fun e!1613321 () Bool)

(assert (=> b!2553513 (= e!1613321 (nullable!2523 lt!903718))))

(declare-fun b!2553514 () Bool)

(declare-fun e!1613320 () Bool)

(declare-fun e!1613319 () Bool)

(assert (=> b!2553514 (= e!1613320 e!1613319)))

(declare-fun res!1075511 () Bool)

(assert (=> b!2553514 (=> (not res!1075511) (not e!1613319))))

(declare-fun lt!903795 () Bool)

(assert (=> b!2553514 (= res!1075511 (not lt!903795))))

(declare-fun b!2553515 () Bool)

(declare-fun e!1613324 () Bool)

(declare-fun call!162741 () Bool)

(assert (=> b!2553515 (= e!1613324 (= lt!903795 call!162741))))

(declare-fun b!2553516 () Bool)

(declare-fun res!1075516 () Bool)

(assert (=> b!2553516 (=> (not res!1075516) (not e!1613322))))

(assert (=> b!2553516 (= res!1075516 (not call!162741))))

(declare-fun d!723687 () Bool)

(assert (=> d!723687 e!1613324))

(declare-fun c!409562 () Bool)

(assert (=> d!723687 (= c!409562 (is-EmptyExpr!7606 lt!903718))))

(assert (=> d!723687 (= lt!903795 e!1613321)))

(declare-fun c!409563 () Bool)

(assert (=> d!723687 (= c!409563 (isEmpty!17021 (_1!17329 lt!903715)))))

(assert (=> d!723687 (validRegex!3232 lt!903718)))

(assert (=> d!723687 (= (matchR!3551 lt!903718 (_1!17329 lt!903715)) lt!903795)))

(declare-fun b!2553517 () Bool)

(declare-fun res!1075513 () Bool)

(declare-fun e!1613323 () Bool)

(assert (=> b!2553517 (=> res!1075513 e!1613323)))

(assert (=> b!2553517 (= res!1075513 (not (isEmpty!17021 (tail!4088 (_1!17329 lt!903715)))))))

(declare-fun b!2553518 () Bool)

(declare-fun res!1075512 () Bool)

(assert (=> b!2553518 (=> (not res!1075512) (not e!1613322))))

(assert (=> b!2553518 (= res!1075512 (isEmpty!17021 (tail!4088 (_1!17329 lt!903715))))))

(declare-fun b!2553519 () Bool)

(declare-fun e!1613325 () Bool)

(assert (=> b!2553519 (= e!1613324 e!1613325)))

(declare-fun c!409561 () Bool)

(assert (=> b!2553519 (= c!409561 (is-EmptyLang!7606 lt!903718))))

(declare-fun b!2553520 () Bool)

(declare-fun res!1075517 () Bool)

(assert (=> b!2553520 (=> res!1075517 e!1613320)))

(assert (=> b!2553520 (= res!1075517 e!1613322)))

(declare-fun res!1075510 () Bool)

(assert (=> b!2553520 (=> (not res!1075510) (not e!1613322))))

(assert (=> b!2553520 (= res!1075510 lt!903795)))

(declare-fun b!2553521 () Bool)

(assert (=> b!2553521 (= e!1613319 e!1613323)))

(declare-fun res!1075514 () Bool)

(assert (=> b!2553521 (=> res!1075514 e!1613323)))

(assert (=> b!2553521 (= res!1075514 call!162741)))

(declare-fun b!2553522 () Bool)

(assert (=> b!2553522 (= e!1613321 (matchR!3551 (derivativeStep!2175 lt!903718 (head!5813 (_1!17329 lt!903715))) (tail!4088 (_1!17329 lt!903715))))))

(declare-fun b!2553523 () Bool)

(declare-fun res!1075515 () Bool)

(assert (=> b!2553523 (=> res!1075515 e!1613320)))

(assert (=> b!2553523 (= res!1075515 (not (is-ElementMatch!7606 lt!903718)))))

(assert (=> b!2553523 (= e!1613325 e!1613320)))

(declare-fun bm!162736 () Bool)

(assert (=> bm!162736 (= call!162741 (isEmpty!17021 (_1!17329 lt!903715)))))

(declare-fun b!2553524 () Bool)

(assert (=> b!2553524 (= e!1613323 (not (= (head!5813 (_1!17329 lt!903715)) (c!409464 lt!903718))))))

(declare-fun b!2553525 () Bool)

(assert (=> b!2553525 (= e!1613325 (not lt!903795))))

(assert (= (and d!723687 c!409563) b!2553513))

(assert (= (and d!723687 (not c!409563)) b!2553522))

(assert (= (and d!723687 c!409562) b!2553515))

(assert (= (and d!723687 (not c!409562)) b!2553519))

(assert (= (and b!2553519 c!409561) b!2553525))

(assert (= (and b!2553519 (not c!409561)) b!2553523))

(assert (= (and b!2553523 (not res!1075515)) b!2553520))

(assert (= (and b!2553520 res!1075510) b!2553516))

(assert (= (and b!2553516 res!1075516) b!2553518))

(assert (= (and b!2553518 res!1075512) b!2553512))

(assert (= (and b!2553520 (not res!1075517)) b!2553514))

(assert (= (and b!2553514 res!1075511) b!2553521))

(assert (= (and b!2553521 (not res!1075514)) b!2553517))

(assert (= (and b!2553517 (not res!1075513)) b!2553524))

(assert (= (or b!2553515 b!2553516 b!2553521) bm!162736))

(declare-fun m!2895741 () Bool)

(assert (=> b!2553512 m!2895741))

(assert (=> b!2553524 m!2895741))

(declare-fun m!2895743 () Bool)

(assert (=> bm!162736 m!2895743))

(assert (=> b!2553522 m!2895741))

(assert (=> b!2553522 m!2895741))

(declare-fun m!2895745 () Bool)

(assert (=> b!2553522 m!2895745))

(declare-fun m!2895747 () Bool)

(assert (=> b!2553522 m!2895747))

(assert (=> b!2553522 m!2895745))

(assert (=> b!2553522 m!2895747))

(declare-fun m!2895749 () Bool)

(assert (=> b!2553522 m!2895749))

(assert (=> b!2553518 m!2895747))

(assert (=> b!2553518 m!2895747))

(declare-fun m!2895751 () Bool)

(assert (=> b!2553518 m!2895751))

(assert (=> d!723687 m!2895743))

(declare-fun m!2895753 () Bool)

(assert (=> d!723687 m!2895753))

(declare-fun m!2895755 () Bool)

(assert (=> b!2553513 m!2895755))

(assert (=> b!2553517 m!2895747))

(assert (=> b!2553517 m!2895747))

(assert (=> b!2553517 m!2895751))

(assert (=> b!2553131 d!723687))

(declare-fun b!2553537 () Bool)

(declare-fun e!1613330 () Bool)

(declare-fun lt!903800 () List!29671)

(assert (=> b!2553537 (= e!1613330 (or (not (= (_2!17329 lt!903715) Nil!29571)) (= lt!903800 (_1!17329 lt!903715))))))

(declare-fun b!2553535 () Bool)

(declare-fun e!1613331 () List!29671)

(assert (=> b!2553535 (= e!1613331 (Cons!29571 (h!34991 (_1!17329 lt!903715)) (++!7263 (t!211370 (_1!17329 lt!903715)) (_2!17329 lt!903715))))))

(declare-fun d!723689 () Bool)

(assert (=> d!723689 e!1613330))

(declare-fun res!1075522 () Bool)

(assert (=> d!723689 (=> (not res!1075522) (not e!1613330))))

(declare-fun content!4069 (List!29671) (Set C!15370))

(assert (=> d!723689 (= res!1075522 (= (content!4069 lt!903800) (set.union (content!4069 (_1!17329 lt!903715)) (content!4069 (_2!17329 lt!903715)))))))

(assert (=> d!723689 (= lt!903800 e!1613331)))

(declare-fun c!409566 () Bool)

(assert (=> d!723689 (= c!409566 (is-Nil!29571 (_1!17329 lt!903715)))))

(assert (=> d!723689 (= (++!7263 (_1!17329 lt!903715) (_2!17329 lt!903715)) lt!903800)))

(declare-fun b!2553534 () Bool)

(assert (=> b!2553534 (= e!1613331 (_2!17329 lt!903715))))

(declare-fun b!2553536 () Bool)

(declare-fun res!1075523 () Bool)

(assert (=> b!2553536 (=> (not res!1075523) (not e!1613330))))

(declare-fun size!22949 (List!29671) Int)

(assert (=> b!2553536 (= res!1075523 (= (size!22949 lt!903800) (+ (size!22949 (_1!17329 lt!903715)) (size!22949 (_2!17329 lt!903715)))))))

(assert (= (and d!723689 c!409566) b!2553534))

(assert (= (and d!723689 (not c!409566)) b!2553535))

(assert (= (and d!723689 res!1075522) b!2553536))

(assert (= (and b!2553536 res!1075523) b!2553537))

(declare-fun m!2895757 () Bool)

(assert (=> b!2553535 m!2895757))

(declare-fun m!2895759 () Bool)

(assert (=> d!723689 m!2895759))

(declare-fun m!2895761 () Bool)

(assert (=> d!723689 m!2895761))

(declare-fun m!2895763 () Bool)

(assert (=> d!723689 m!2895763))

(declare-fun m!2895765 () Bool)

(assert (=> b!2553536 m!2895765))

(declare-fun m!2895767 () Bool)

(assert (=> b!2553536 m!2895767))

(declare-fun m!2895769 () Bool)

(assert (=> b!2553536 m!2895769))

(assert (=> b!2553137 d!723689))

(declare-fun d!723691 () Bool)

(assert (=> d!723691 (= (get!9289 lt!903722) (v!31847 lt!903722))))

(assert (=> b!2553137 d!723691))

(declare-fun d!723693 () Bool)

(declare-fun isEmpty!17023 (Option!5907) Bool)

(assert (=> d!723693 (= (isDefined!4729 lt!903722) (not (isEmpty!17023 lt!903722)))))

(declare-fun bs!469659 () Bool)

(assert (= bs!469659 d!723693))

(declare-fun m!2895773 () Bool)

(assert (=> bs!469659 m!2895773))

(assert (=> b!2553137 d!723693))

(declare-fun d!723697 () Bool)

(assert (=> d!723697 (isDefined!4729 (findConcatSeparation!929 lt!903718 (regTwo!15724 r!27340) Nil!29571 tl!4068 tl!4068))))

(declare-fun lt!903806 () Unit!43397)

(declare-fun choose!15076 (Regex!7606 Regex!7606 List!29671) Unit!43397)

(assert (=> d!723697 (= lt!903806 (choose!15076 lt!903718 (regTwo!15724 r!27340) tl!4068))))

(assert (=> d!723697 (validRegex!3232 lt!903718)))

(assert (=> d!723697 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!211 lt!903718 (regTwo!15724 r!27340) tl!4068) lt!903806)))

(declare-fun bs!469660 () Bool)

(assert (= bs!469660 d!723697))

(assert (=> bs!469660 m!2895477))

(assert (=> bs!469660 m!2895477))

(declare-fun m!2895783 () Bool)

(assert (=> bs!469660 m!2895783))

(declare-fun m!2895785 () Bool)

(assert (=> bs!469660 m!2895785))

(assert (=> bs!469660 m!2895753))

(assert (=> b!2553137 d!723697))

(declare-fun d!723701 () Bool)

(declare-fun e!1613369 () Bool)

(assert (=> d!723701 e!1613369))

(declare-fun res!1075554 () Bool)

(assert (=> d!723701 (=> res!1075554 e!1613369)))

(declare-fun e!1613370 () Bool)

(assert (=> d!723701 (= res!1075554 e!1613370)))

(declare-fun res!1075551 () Bool)

(assert (=> d!723701 (=> (not res!1075551) (not e!1613370))))

(declare-fun lt!903817 () Option!5907)

(assert (=> d!723701 (= res!1075551 (isDefined!4729 lt!903817))))

(declare-fun e!1613367 () Option!5907)

(assert (=> d!723701 (= lt!903817 e!1613367)))

(declare-fun c!409589 () Bool)

(declare-fun e!1613368 () Bool)

(assert (=> d!723701 (= c!409589 e!1613368)))

(declare-fun res!1075553 () Bool)

(assert (=> d!723701 (=> (not res!1075553) (not e!1613368))))

(assert (=> d!723701 (= res!1075553 (matchR!3551 lt!903718 Nil!29571))))

(assert (=> d!723701 (validRegex!3232 lt!903718)))

(assert (=> d!723701 (= (findConcatSeparation!929 lt!903718 (regTwo!15724 r!27340) Nil!29571 tl!4068 tl!4068) lt!903817)))

(declare-fun b!2553606 () Bool)

(assert (=> b!2553606 (= e!1613368 (matchR!3551 (regTwo!15724 r!27340) tl!4068))))

(declare-fun b!2553607 () Bool)

(assert (=> b!2553607 (= e!1613367 (Some!5906 (tuple2!29575 Nil!29571 tl!4068)))))

(declare-fun b!2553608 () Bool)

(declare-fun res!1075550 () Bool)

(assert (=> b!2553608 (=> (not res!1075550) (not e!1613370))))

(assert (=> b!2553608 (= res!1075550 (matchR!3551 (regTwo!15724 r!27340) (_2!17329 (get!9289 lt!903817))))))

(declare-fun b!2553609 () Bool)

(assert (=> b!2553609 (= e!1613369 (not (isDefined!4729 lt!903817)))))

(declare-fun b!2553610 () Bool)

(declare-fun lt!903816 () Unit!43397)

(declare-fun lt!903818 () Unit!43397)

(assert (=> b!2553610 (= lt!903816 lt!903818)))

(assert (=> b!2553610 (= (++!7263 (++!7263 Nil!29571 (Cons!29571 (h!34991 tl!4068) Nil!29571)) (t!211370 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!796 (List!29671 C!15370 List!29671 List!29671) Unit!43397)

(assert (=> b!2553610 (= lt!903818 (lemmaMoveElementToOtherListKeepsConcatEq!796 Nil!29571 (h!34991 tl!4068) (t!211370 tl!4068) tl!4068))))

(declare-fun e!1613371 () Option!5907)

(assert (=> b!2553610 (= e!1613371 (findConcatSeparation!929 lt!903718 (regTwo!15724 r!27340) (++!7263 Nil!29571 (Cons!29571 (h!34991 tl!4068) Nil!29571)) (t!211370 tl!4068) tl!4068))))

(declare-fun b!2553611 () Bool)

(assert (=> b!2553611 (= e!1613367 e!1613371)))

(declare-fun c!409588 () Bool)

(assert (=> b!2553611 (= c!409588 (is-Nil!29571 tl!4068))))

(declare-fun b!2553612 () Bool)

(declare-fun res!1075552 () Bool)

(assert (=> b!2553612 (=> (not res!1075552) (not e!1613370))))

(assert (=> b!2553612 (= res!1075552 (matchR!3551 lt!903718 (_1!17329 (get!9289 lt!903817))))))

(declare-fun b!2553613 () Bool)

(assert (=> b!2553613 (= e!1613371 None!5906)))

(declare-fun b!2553614 () Bool)

(assert (=> b!2553614 (= e!1613370 (= (++!7263 (_1!17329 (get!9289 lt!903817)) (_2!17329 (get!9289 lt!903817))) tl!4068))))

(assert (= (and d!723701 res!1075553) b!2553606))

(assert (= (and d!723701 c!409589) b!2553607))

(assert (= (and d!723701 (not c!409589)) b!2553611))

(assert (= (and b!2553611 c!409588) b!2553613))

(assert (= (and b!2553611 (not c!409588)) b!2553610))

(assert (= (and d!723701 res!1075551) b!2553612))

(assert (= (and b!2553612 res!1075552) b!2553608))

(assert (= (and b!2553608 res!1075550) b!2553614))

(assert (= (and d!723701 (not res!1075554)) b!2553609))

(declare-fun m!2895827 () Bool)

(assert (=> d!723701 m!2895827))

(declare-fun m!2895829 () Bool)

(assert (=> d!723701 m!2895829))

(assert (=> d!723701 m!2895753))

(declare-fun m!2895831 () Bool)

(assert (=> b!2553610 m!2895831))

(assert (=> b!2553610 m!2895831))

(declare-fun m!2895833 () Bool)

(assert (=> b!2553610 m!2895833))

(declare-fun m!2895835 () Bool)

(assert (=> b!2553610 m!2895835))

(assert (=> b!2553610 m!2895831))

(declare-fun m!2895837 () Bool)

(assert (=> b!2553610 m!2895837))

(declare-fun m!2895839 () Bool)

(assert (=> b!2553612 m!2895839))

(declare-fun m!2895841 () Bool)

(assert (=> b!2553612 m!2895841))

(assert (=> b!2553608 m!2895839))

(declare-fun m!2895843 () Bool)

(assert (=> b!2553608 m!2895843))

(assert (=> b!2553609 m!2895827))

(declare-fun m!2895845 () Bool)

(assert (=> b!2553606 m!2895845))

(assert (=> b!2553614 m!2895839))

(declare-fun m!2895847 () Bool)

(assert (=> b!2553614 m!2895847))

(assert (=> b!2553137 d!723701))

(declare-fun b!2553615 () Bool)

(declare-fun e!1613378 () Bool)

(declare-fun call!162753 () Bool)

(assert (=> b!2553615 (= e!1613378 call!162753)))

(declare-fun b!2553616 () Bool)

(declare-fun e!1613373 () Bool)

(declare-fun e!1613377 () Bool)

(assert (=> b!2553616 (= e!1613373 e!1613377)))

(declare-fun c!409590 () Bool)

(assert (=> b!2553616 (= c!409590 (is-Star!7606 (regOne!15724 r!27340)))))

(declare-fun b!2553617 () Bool)

(declare-fun e!1613376 () Bool)

(declare-fun e!1613374 () Bool)

(assert (=> b!2553617 (= e!1613376 e!1613374)))

(declare-fun res!1075556 () Bool)

(assert (=> b!2553617 (=> (not res!1075556) (not e!1613374))))

(assert (=> b!2553617 (= res!1075556 call!162753)))

(declare-fun bm!162747 () Bool)

(declare-fun call!162752 () Bool)

(declare-fun c!409591 () Bool)

(assert (=> bm!162747 (= call!162752 (validRegex!3232 (ite c!409590 (reg!7935 (regOne!15724 r!27340)) (ite c!409591 (regTwo!15725 (regOne!15724 r!27340)) (regOne!15724 (regOne!15724 r!27340))))))))

(declare-fun d!723715 () Bool)

(declare-fun res!1075559 () Bool)

(assert (=> d!723715 (=> res!1075559 e!1613373)))

(assert (=> d!723715 (= res!1075559 (is-ElementMatch!7606 (regOne!15724 r!27340)))))

(assert (=> d!723715 (= (validRegex!3232 (regOne!15724 r!27340)) e!1613373)))

(declare-fun b!2553618 () Bool)

(declare-fun call!162754 () Bool)

(assert (=> b!2553618 (= e!1613374 call!162754)))

(declare-fun b!2553619 () Bool)

(declare-fun res!1075555 () Bool)

(assert (=> b!2553619 (=> res!1075555 e!1613376)))

(assert (=> b!2553619 (= res!1075555 (not (is-Concat!12302 (regOne!15724 r!27340))))))

(declare-fun e!1613375 () Bool)

(assert (=> b!2553619 (= e!1613375 e!1613376)))

(declare-fun bm!162748 () Bool)

(assert (=> bm!162748 (= call!162753 call!162752)))

(declare-fun b!2553620 () Bool)

(declare-fun res!1075557 () Bool)

(assert (=> b!2553620 (=> (not res!1075557) (not e!1613378))))

(assert (=> b!2553620 (= res!1075557 call!162754)))

(assert (=> b!2553620 (= e!1613375 e!1613378)))

(declare-fun b!2553621 () Bool)

(declare-fun e!1613372 () Bool)

(assert (=> b!2553621 (= e!1613377 e!1613372)))

(declare-fun res!1075558 () Bool)

(assert (=> b!2553621 (= res!1075558 (not (nullable!2523 (reg!7935 (regOne!15724 r!27340)))))))

(assert (=> b!2553621 (=> (not res!1075558) (not e!1613372))))

(declare-fun b!2553622 () Bool)

(assert (=> b!2553622 (= e!1613377 e!1613375)))

(assert (=> b!2553622 (= c!409591 (is-Union!7606 (regOne!15724 r!27340)))))

(declare-fun bm!162749 () Bool)

(assert (=> bm!162749 (= call!162754 (validRegex!3232 (ite c!409591 (regOne!15725 (regOne!15724 r!27340)) (regTwo!15724 (regOne!15724 r!27340)))))))

(declare-fun b!2553623 () Bool)

(assert (=> b!2553623 (= e!1613372 call!162752)))

(assert (= (and d!723715 (not res!1075559)) b!2553616))

(assert (= (and b!2553616 c!409590) b!2553621))

(assert (= (and b!2553616 (not c!409590)) b!2553622))

(assert (= (and b!2553621 res!1075558) b!2553623))

(assert (= (and b!2553622 c!409591) b!2553620))

(assert (= (and b!2553622 (not c!409591)) b!2553619))

(assert (= (and b!2553620 res!1075557) b!2553615))

(assert (= (and b!2553619 (not res!1075555)) b!2553617))

(assert (= (and b!2553617 res!1075556) b!2553618))

(assert (= (or b!2553620 b!2553618) bm!162749))

(assert (= (or b!2553615 b!2553617) bm!162748))

(assert (= (or b!2553623 bm!162748) bm!162747))

(declare-fun m!2895849 () Bool)

(assert (=> bm!162747 m!2895849))

(declare-fun m!2895851 () Bool)

(assert (=> b!2553621 m!2895851))

(declare-fun m!2895853 () Bool)

(assert (=> bm!162749 m!2895853))

(assert (=> b!2553132 d!723715))

(declare-fun b!2553624 () Bool)

(declare-fun e!1613382 () Bool)

(assert (=> b!2553624 (= e!1613382 (= (head!5813 Nil!29571) (c!409464 (derivative!301 lt!903718 (_1!17329 lt!903715)))))))

(declare-fun b!2553625 () Bool)

(declare-fun e!1613381 () Bool)

(assert (=> b!2553625 (= e!1613381 (nullable!2523 (derivative!301 lt!903718 (_1!17329 lt!903715))))))

(declare-fun b!2553626 () Bool)

(declare-fun e!1613380 () Bool)

(declare-fun e!1613379 () Bool)

(assert (=> b!2553626 (= e!1613380 e!1613379)))

(declare-fun res!1075561 () Bool)

(assert (=> b!2553626 (=> (not res!1075561) (not e!1613379))))

(declare-fun lt!903819 () Bool)

(assert (=> b!2553626 (= res!1075561 (not lt!903819))))

(declare-fun b!2553627 () Bool)

(declare-fun e!1613384 () Bool)

(declare-fun call!162755 () Bool)

(assert (=> b!2553627 (= e!1613384 (= lt!903819 call!162755))))

(declare-fun b!2553628 () Bool)

(declare-fun res!1075566 () Bool)

(assert (=> b!2553628 (=> (not res!1075566) (not e!1613382))))

(assert (=> b!2553628 (= res!1075566 (not call!162755))))

(declare-fun d!723717 () Bool)

(assert (=> d!723717 e!1613384))

(declare-fun c!409593 () Bool)

(assert (=> d!723717 (= c!409593 (is-EmptyExpr!7606 (derivative!301 lt!903718 (_1!17329 lt!903715))))))

(assert (=> d!723717 (= lt!903819 e!1613381)))

(declare-fun c!409594 () Bool)

(assert (=> d!723717 (= c!409594 (isEmpty!17021 Nil!29571))))

(assert (=> d!723717 (validRegex!3232 (derivative!301 lt!903718 (_1!17329 lt!903715)))))

(assert (=> d!723717 (= (matchR!3551 (derivative!301 lt!903718 (_1!17329 lt!903715)) Nil!29571) lt!903819)))

(declare-fun b!2553629 () Bool)

(declare-fun res!1075563 () Bool)

(declare-fun e!1613383 () Bool)

(assert (=> b!2553629 (=> res!1075563 e!1613383)))

(assert (=> b!2553629 (= res!1075563 (not (isEmpty!17021 (tail!4088 Nil!29571))))))

(declare-fun b!2553630 () Bool)

(declare-fun res!1075562 () Bool)

(assert (=> b!2553630 (=> (not res!1075562) (not e!1613382))))

(assert (=> b!2553630 (= res!1075562 (isEmpty!17021 (tail!4088 Nil!29571)))))

(declare-fun b!2553631 () Bool)

(declare-fun e!1613385 () Bool)

(assert (=> b!2553631 (= e!1613384 e!1613385)))

(declare-fun c!409592 () Bool)

(assert (=> b!2553631 (= c!409592 (is-EmptyLang!7606 (derivative!301 lt!903718 (_1!17329 lt!903715))))))

(declare-fun b!2553632 () Bool)

(declare-fun res!1075567 () Bool)

(assert (=> b!2553632 (=> res!1075567 e!1613380)))

(assert (=> b!2553632 (= res!1075567 e!1613382)))

(declare-fun res!1075560 () Bool)

(assert (=> b!2553632 (=> (not res!1075560) (not e!1613382))))

(assert (=> b!2553632 (= res!1075560 lt!903819)))

(declare-fun b!2553633 () Bool)

(assert (=> b!2553633 (= e!1613379 e!1613383)))

(declare-fun res!1075564 () Bool)

(assert (=> b!2553633 (=> res!1075564 e!1613383)))

(assert (=> b!2553633 (= res!1075564 call!162755)))

(declare-fun b!2553634 () Bool)

(assert (=> b!2553634 (= e!1613381 (matchR!3551 (derivativeStep!2175 (derivative!301 lt!903718 (_1!17329 lt!903715)) (head!5813 Nil!29571)) (tail!4088 Nil!29571)))))

(declare-fun b!2553635 () Bool)

(declare-fun res!1075565 () Bool)

(assert (=> b!2553635 (=> res!1075565 e!1613380)))

(assert (=> b!2553635 (= res!1075565 (not (is-ElementMatch!7606 (derivative!301 lt!903718 (_1!17329 lt!903715)))))))

(assert (=> b!2553635 (= e!1613385 e!1613380)))

(declare-fun bm!162750 () Bool)

(assert (=> bm!162750 (= call!162755 (isEmpty!17021 Nil!29571))))

(declare-fun b!2553636 () Bool)

(assert (=> b!2553636 (= e!1613383 (not (= (head!5813 Nil!29571) (c!409464 (derivative!301 lt!903718 (_1!17329 lt!903715))))))))

(declare-fun b!2553637 () Bool)

(assert (=> b!2553637 (= e!1613385 (not lt!903819))))

(assert (= (and d!723717 c!409594) b!2553625))

(assert (= (and d!723717 (not c!409594)) b!2553634))

(assert (= (and d!723717 c!409593) b!2553627))

(assert (= (and d!723717 (not c!409593)) b!2553631))

(assert (= (and b!2553631 c!409592) b!2553637))

(assert (= (and b!2553631 (not c!409592)) b!2553635))

(assert (= (and b!2553635 (not res!1075565)) b!2553632))

(assert (= (and b!2553632 res!1075560) b!2553628))

(assert (= (and b!2553628 res!1075566) b!2553630))

(assert (= (and b!2553630 res!1075562) b!2553624))

(assert (= (and b!2553632 (not res!1075567)) b!2553626))

(assert (= (and b!2553626 res!1075561) b!2553633))

(assert (= (and b!2553633 (not res!1075564)) b!2553629))

(assert (= (and b!2553629 (not res!1075563)) b!2553636))

(assert (= (or b!2553627 b!2553628 b!2553633) bm!162750))

(assert (=> b!2553624 m!2895637))

(assert (=> b!2553636 m!2895637))

(assert (=> bm!162750 m!2895639))

(assert (=> b!2553634 m!2895637))

(assert (=> b!2553634 m!2895461))

(assert (=> b!2553634 m!2895637))

(declare-fun m!2895855 () Bool)

(assert (=> b!2553634 m!2895855))

(assert (=> b!2553634 m!2895643))

(assert (=> b!2553634 m!2895855))

(assert (=> b!2553634 m!2895643))

(declare-fun m!2895857 () Bool)

(assert (=> b!2553634 m!2895857))

(assert (=> b!2553630 m!2895643))

(assert (=> b!2553630 m!2895643))

(assert (=> b!2553630 m!2895647))

(assert (=> d!723717 m!2895639))

(assert (=> d!723717 m!2895461))

(declare-fun m!2895859 () Bool)

(assert (=> d!723717 m!2895859))

(assert (=> b!2553625 m!2895461))

(declare-fun m!2895861 () Bool)

(assert (=> b!2553625 m!2895861))

(assert (=> b!2553629 m!2895643))

(assert (=> b!2553629 m!2895643))

(assert (=> b!2553629 m!2895647))

(assert (=> b!2553132 d!723717))

(declare-fun d!723719 () Bool)

(declare-fun lt!903820 () Regex!7606)

(assert (=> d!723719 (validRegex!3232 lt!903820)))

(declare-fun e!1613386 () Regex!7606)

(assert (=> d!723719 (= lt!903820 e!1613386)))

(declare-fun c!409595 () Bool)

(assert (=> d!723719 (= c!409595 (is-Cons!29571 (_1!17329 lt!903715)))))

(assert (=> d!723719 (validRegex!3232 lt!903718)))

(assert (=> d!723719 (= (derivative!301 lt!903718 (_1!17329 lt!903715)) lt!903820)))

(declare-fun b!2553638 () Bool)

(assert (=> b!2553638 (= e!1613386 (derivative!301 (derivativeStep!2175 lt!903718 (h!34991 (_1!17329 lt!903715))) (t!211370 (_1!17329 lt!903715))))))

(declare-fun b!2553639 () Bool)

(assert (=> b!2553639 (= e!1613386 lt!903718)))

(assert (= (and d!723719 c!409595) b!2553638))

(assert (= (and d!723719 (not c!409595)) b!2553639))

(declare-fun m!2895863 () Bool)

(assert (=> d!723719 m!2895863))

(assert (=> d!723719 m!2895753))

(declare-fun m!2895865 () Bool)

(assert (=> b!2553638 m!2895865))

(assert (=> b!2553638 m!2895865))

(declare-fun m!2895867 () Bool)

(assert (=> b!2553638 m!2895867))

(assert (=> b!2553132 d!723719))

(declare-fun d!723721 () Bool)

(assert (=> d!723721 (= (matchR!3551 lt!903718 (_1!17329 lt!903715)) (matchR!3551 (derivative!301 lt!903718 (_1!17329 lt!903715)) Nil!29571))))

(declare-fun lt!903821 () Unit!43397)

(assert (=> d!723721 (= lt!903821 (choose!15075 lt!903718 (_1!17329 lt!903715)))))

(assert (=> d!723721 (validRegex!3232 lt!903718)))

(assert (=> d!723721 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!197 lt!903718 (_1!17329 lt!903715)) lt!903821)))

(declare-fun bs!469663 () Bool)

(assert (= bs!469663 d!723721))

(assert (=> bs!469663 m!2895433))

(declare-fun m!2895869 () Bool)

(assert (=> bs!469663 m!2895869))

(assert (=> bs!469663 m!2895461))

(assert (=> bs!469663 m!2895463))

(assert (=> bs!469663 m!2895753))

(assert (=> bs!469663 m!2895461))

(assert (=> b!2553132 d!723721))

(declare-fun b!2553640 () Bool)

(declare-fun e!1613390 () Bool)

(assert (=> b!2553640 (= e!1613390 (= (head!5813 tl!4068) (c!409464 lt!903723)))))

(declare-fun b!2553641 () Bool)

(declare-fun e!1613389 () Bool)

(assert (=> b!2553641 (= e!1613389 (nullable!2523 lt!903723))))

(declare-fun b!2553642 () Bool)

(declare-fun e!1613388 () Bool)

(declare-fun e!1613387 () Bool)

(assert (=> b!2553642 (= e!1613388 e!1613387)))

(declare-fun res!1075569 () Bool)

(assert (=> b!2553642 (=> (not res!1075569) (not e!1613387))))

(declare-fun lt!903822 () Bool)

(assert (=> b!2553642 (= res!1075569 (not lt!903822))))

(declare-fun b!2553643 () Bool)

(declare-fun e!1613392 () Bool)

(declare-fun call!162756 () Bool)

(assert (=> b!2553643 (= e!1613392 (= lt!903822 call!162756))))

(declare-fun b!2553644 () Bool)

(declare-fun res!1075574 () Bool)

(assert (=> b!2553644 (=> (not res!1075574) (not e!1613390))))

(assert (=> b!2553644 (= res!1075574 (not call!162756))))

(declare-fun d!723723 () Bool)

(assert (=> d!723723 e!1613392))

(declare-fun c!409597 () Bool)

(assert (=> d!723723 (= c!409597 (is-EmptyExpr!7606 lt!903723))))

(assert (=> d!723723 (= lt!903822 e!1613389)))

(declare-fun c!409598 () Bool)

(assert (=> d!723723 (= c!409598 (isEmpty!17021 tl!4068))))

(assert (=> d!723723 (validRegex!3232 lt!903723)))

(assert (=> d!723723 (= (matchR!3551 lt!903723 tl!4068) lt!903822)))

(declare-fun b!2553645 () Bool)

(declare-fun res!1075571 () Bool)

(declare-fun e!1613391 () Bool)

(assert (=> b!2553645 (=> res!1075571 e!1613391)))

(assert (=> b!2553645 (= res!1075571 (not (isEmpty!17021 (tail!4088 tl!4068))))))

(declare-fun b!2553646 () Bool)

(declare-fun res!1075570 () Bool)

(assert (=> b!2553646 (=> (not res!1075570) (not e!1613390))))

(assert (=> b!2553646 (= res!1075570 (isEmpty!17021 (tail!4088 tl!4068)))))

(declare-fun b!2553647 () Bool)

(declare-fun e!1613393 () Bool)

(assert (=> b!2553647 (= e!1613392 e!1613393)))

(declare-fun c!409596 () Bool)

(assert (=> b!2553647 (= c!409596 (is-EmptyLang!7606 lt!903723))))

(declare-fun b!2553648 () Bool)

(declare-fun res!1075575 () Bool)

(assert (=> b!2553648 (=> res!1075575 e!1613388)))

(assert (=> b!2553648 (= res!1075575 e!1613390)))

(declare-fun res!1075568 () Bool)

(assert (=> b!2553648 (=> (not res!1075568) (not e!1613390))))

(assert (=> b!2553648 (= res!1075568 lt!903822)))

(declare-fun b!2553649 () Bool)

(assert (=> b!2553649 (= e!1613387 e!1613391)))

(declare-fun res!1075572 () Bool)

(assert (=> b!2553649 (=> res!1075572 e!1613391)))

(assert (=> b!2553649 (= res!1075572 call!162756)))

(declare-fun b!2553650 () Bool)

(assert (=> b!2553650 (= e!1613389 (matchR!3551 (derivativeStep!2175 lt!903723 (head!5813 tl!4068)) (tail!4088 tl!4068)))))

(declare-fun b!2553651 () Bool)

(declare-fun res!1075573 () Bool)

(assert (=> b!2553651 (=> res!1075573 e!1613388)))

(assert (=> b!2553651 (= res!1075573 (not (is-ElementMatch!7606 lt!903723)))))

(assert (=> b!2553651 (= e!1613393 e!1613388)))

(declare-fun bm!162751 () Bool)

(assert (=> bm!162751 (= call!162756 (isEmpty!17021 tl!4068))))

(declare-fun b!2553652 () Bool)

(assert (=> b!2553652 (= e!1613391 (not (= (head!5813 tl!4068) (c!409464 lt!903723))))))

(declare-fun b!2553653 () Bool)

(assert (=> b!2553653 (= e!1613393 (not lt!903822))))

(assert (= (and d!723723 c!409598) b!2553641))

(assert (= (and d!723723 (not c!409598)) b!2553650))

(assert (= (and d!723723 c!409597) b!2553643))

(assert (= (and d!723723 (not c!409597)) b!2553647))

(assert (= (and b!2553647 c!409596) b!2553653))

(assert (= (and b!2553647 (not c!409596)) b!2553651))

(assert (= (and b!2553651 (not res!1075573)) b!2553648))

(assert (= (and b!2553648 res!1075568) b!2553644))

(assert (= (and b!2553644 res!1075574) b!2553646))

(assert (= (and b!2553646 res!1075570) b!2553640))

(assert (= (and b!2553648 (not res!1075575)) b!2553642))

(assert (= (and b!2553642 res!1075569) b!2553649))

(assert (= (and b!2553649 (not res!1075572)) b!2553645))

(assert (= (and b!2553645 (not res!1075571)) b!2553652))

(assert (= (or b!2553643 b!2553644 b!2553649) bm!162751))

(assert (=> b!2553640 m!2895533))

(assert (=> b!2553652 m!2895533))

(assert (=> bm!162751 m!2895535))

(assert (=> b!2553650 m!2895533))

(assert (=> b!2553650 m!2895533))

(declare-fun m!2895871 () Bool)

(assert (=> b!2553650 m!2895871))

(assert (=> b!2553650 m!2895539))

(assert (=> b!2553650 m!2895871))

(assert (=> b!2553650 m!2895539))

(declare-fun m!2895873 () Bool)

(assert (=> b!2553650 m!2895873))

(assert (=> b!2553646 m!2895539))

(assert (=> b!2553646 m!2895539))

(assert (=> b!2553646 m!2895543))

(assert (=> d!723723 m!2895535))

(assert (=> d!723723 m!2895583))

(declare-fun m!2895875 () Bool)

(assert (=> b!2553641 m!2895875))

(assert (=> b!2553645 m!2895539))

(assert (=> b!2553645 m!2895539))

(assert (=> b!2553645 m!2895543))

(assert (=> b!2553133 d!723723))

(declare-fun e!1613396 () Bool)

(assert (=> b!2553123 (= tp!814303 e!1613396)))

(declare-fun b!2553664 () Bool)

(assert (=> b!2553664 (= e!1613396 tp_is_empty!13067)))

(declare-fun b!2553666 () Bool)

(declare-fun tp!814339 () Bool)

(assert (=> b!2553666 (= e!1613396 tp!814339)))

(declare-fun b!2553665 () Bool)

(declare-fun tp!814337 () Bool)

(declare-fun tp!814341 () Bool)

(assert (=> b!2553665 (= e!1613396 (and tp!814337 tp!814341))))

(declare-fun b!2553667 () Bool)

(declare-fun tp!814338 () Bool)

(declare-fun tp!814340 () Bool)

(assert (=> b!2553667 (= e!1613396 (and tp!814338 tp!814340))))

(assert (= (and b!2553123 (is-ElementMatch!7606 (regOne!15724 r!27340))) b!2553664))

(assert (= (and b!2553123 (is-Concat!12302 (regOne!15724 r!27340))) b!2553665))

(assert (= (and b!2553123 (is-Star!7606 (regOne!15724 r!27340))) b!2553666))

(assert (= (and b!2553123 (is-Union!7606 (regOne!15724 r!27340))) b!2553667))

(declare-fun e!1613397 () Bool)

(assert (=> b!2553123 (= tp!814306 e!1613397)))

(declare-fun b!2553668 () Bool)

(assert (=> b!2553668 (= e!1613397 tp_is_empty!13067)))

(declare-fun b!2553670 () Bool)

(declare-fun tp!814344 () Bool)

(assert (=> b!2553670 (= e!1613397 tp!814344)))

(declare-fun b!2553669 () Bool)

(declare-fun tp!814342 () Bool)

(declare-fun tp!814346 () Bool)

(assert (=> b!2553669 (= e!1613397 (and tp!814342 tp!814346))))

(declare-fun b!2553671 () Bool)

(declare-fun tp!814343 () Bool)

(declare-fun tp!814345 () Bool)

(assert (=> b!2553671 (= e!1613397 (and tp!814343 tp!814345))))

(assert (= (and b!2553123 (is-ElementMatch!7606 (regTwo!15724 r!27340))) b!2553668))

(assert (= (and b!2553123 (is-Concat!12302 (regTwo!15724 r!27340))) b!2553669))

(assert (= (and b!2553123 (is-Star!7606 (regTwo!15724 r!27340))) b!2553670))

(assert (= (and b!2553123 (is-Union!7606 (regTwo!15724 r!27340))) b!2553671))

(declare-fun e!1613398 () Bool)

(assert (=> b!2553124 (= tp!814304 e!1613398)))

(declare-fun b!2553672 () Bool)

(assert (=> b!2553672 (= e!1613398 tp_is_empty!13067)))

(declare-fun b!2553674 () Bool)

(declare-fun tp!814349 () Bool)

(assert (=> b!2553674 (= e!1613398 tp!814349)))

(declare-fun b!2553673 () Bool)

(declare-fun tp!814347 () Bool)

(declare-fun tp!814351 () Bool)

(assert (=> b!2553673 (= e!1613398 (and tp!814347 tp!814351))))

(declare-fun b!2553675 () Bool)

(declare-fun tp!814348 () Bool)

(declare-fun tp!814350 () Bool)

(assert (=> b!2553675 (= e!1613398 (and tp!814348 tp!814350))))

(assert (= (and b!2553124 (is-ElementMatch!7606 (regOne!15725 r!27340))) b!2553672))

(assert (= (and b!2553124 (is-Concat!12302 (regOne!15725 r!27340))) b!2553673))

(assert (= (and b!2553124 (is-Star!7606 (regOne!15725 r!27340))) b!2553674))

(assert (= (and b!2553124 (is-Union!7606 (regOne!15725 r!27340))) b!2553675))

(declare-fun e!1613399 () Bool)

(assert (=> b!2553124 (= tp!814308 e!1613399)))

(declare-fun b!2553676 () Bool)

(assert (=> b!2553676 (= e!1613399 tp_is_empty!13067)))

(declare-fun b!2553678 () Bool)

(declare-fun tp!814354 () Bool)

(assert (=> b!2553678 (= e!1613399 tp!814354)))

(declare-fun b!2553677 () Bool)

(declare-fun tp!814352 () Bool)

(declare-fun tp!814356 () Bool)

(assert (=> b!2553677 (= e!1613399 (and tp!814352 tp!814356))))

(declare-fun b!2553679 () Bool)

(declare-fun tp!814353 () Bool)

(declare-fun tp!814355 () Bool)

(assert (=> b!2553679 (= e!1613399 (and tp!814353 tp!814355))))

(assert (= (and b!2553124 (is-ElementMatch!7606 (regTwo!15725 r!27340))) b!2553676))

(assert (= (and b!2553124 (is-Concat!12302 (regTwo!15725 r!27340))) b!2553677))

(assert (= (and b!2553124 (is-Star!7606 (regTwo!15725 r!27340))) b!2553678))

(assert (= (and b!2553124 (is-Union!7606 (regTwo!15725 r!27340))) b!2553679))

(declare-fun b!2553684 () Bool)

(declare-fun e!1613402 () Bool)

(declare-fun tp!814359 () Bool)

(assert (=> b!2553684 (= e!1613402 (and tp_is_empty!13067 tp!814359))))

(assert (=> b!2553135 (= tp!814305 e!1613402)))

(assert (= (and b!2553135 (is-Cons!29571 (t!211370 tl!4068))) b!2553684))

(declare-fun e!1613403 () Bool)

(assert (=> b!2553126 (= tp!814307 e!1613403)))

(declare-fun b!2553685 () Bool)

(assert (=> b!2553685 (= e!1613403 tp_is_empty!13067)))

(declare-fun b!2553687 () Bool)

(declare-fun tp!814362 () Bool)

(assert (=> b!2553687 (= e!1613403 tp!814362)))

(declare-fun b!2553686 () Bool)

(declare-fun tp!814360 () Bool)

(declare-fun tp!814364 () Bool)

(assert (=> b!2553686 (= e!1613403 (and tp!814360 tp!814364))))

(declare-fun b!2553688 () Bool)

(declare-fun tp!814361 () Bool)

(declare-fun tp!814363 () Bool)

(assert (=> b!2553688 (= e!1613403 (and tp!814361 tp!814363))))

(assert (= (and b!2553126 (is-ElementMatch!7606 (reg!7935 r!27340))) b!2553685))

(assert (= (and b!2553126 (is-Concat!12302 (reg!7935 r!27340))) b!2553686))

(assert (= (and b!2553126 (is-Star!7606 (reg!7935 r!27340))) b!2553687))

(assert (= (and b!2553126 (is-Union!7606 (reg!7935 r!27340))) b!2553688))

(push 1)

(assert (not d!723693))

(assert (not b!2553673))

(assert (not d!723669))

(assert (not b!2553366))

(assert (not b!2553510))

(assert (not b!2553665))

(assert (not b!2553321))

(assert (not b!2553351))

(assert (not b!2553606))

(assert (not bm!162736))

(assert (not b!2553612))

(assert (not bm!162703))

(assert (not b!2553671))

(assert (not b!2553667))

(assert (not b!2553316))

(assert (not d!723721))

(assert (not b!2553608))

(assert (not b!2553518))

(assert (not d!723673))

(assert (not b!2553249))

(assert (not bm!162747))

(assert (not b!2553339))

(assert (not b!2553503))

(assert (not b!2553674))

(assert (not bm!162751))

(assert (not b!2553650))

(assert (not b!2553421))

(assert (not b!2553361))

(assert (not d!723717))

(assert (not b!2553344))

(assert (not bm!162716))

(assert (not b!2553646))

(assert (not b!2553684))

(assert (not b!2553524))

(assert (not d!723697))

(assert (not b!2553638))

(assert (not bm!162692))

(assert (not bm!162715))

(assert (not b!2553420))

(assert (not b!2553641))

(assert (not b!2553678))

(assert (not d!723649))

(assert (not b!2553459))

(assert (not d!723657))

(assert (not b!2553239))

(assert (not b!2553624))

(assert (not d!723719))

(assert (not b!2553416))

(assert (not d!723687))

(assert (not b!2553625))

(assert (not b!2553677))

(assert (not d!723663))

(assert (not d!723641))

(assert (not d!723677))

(assert (not b!2553251))

(assert (not b!2553630))

(assert (not b!2553286))

(assert (not b!2553666))

(assert (not b!2553621))

(assert (not bm!162690))

(assert (not d!723655))

(assert (not b!2553614))

(assert (not bm!162749))

(assert (not b!2553522))

(assert (not b!2553675))

(assert (not b!2553425))

(assert (not b!2553413))

(assert (not b!2553285))

(assert (not d!723685))

(assert (not b!2553513))

(assert (not d!723689))

(assert (not b!2553610))

(assert (not b!2553686))

(assert (not d!723683))

(assert (not b!2553240))

(assert (not bm!162702))

(assert (not b!2553353))

(assert (not b!2553325))

(assert (not b!2553679))

(assert (not d!723671))

(assert (not b!2553449))

(assert (not b!2553687))

(assert (not b!2553645))

(assert (not b!2553427))

(assert (not d!723675))

(assert (not b!2553245))

(assert (not b!2553640))

(assert (not b!2553499))

(assert (not b!2553670))

(assert (not b!2553629))

(assert (not d!723659))

(assert (not d!723639))

(assert (not b!2553634))

(assert (not b!2553327))

(assert (not b!2553688))

(assert (not bm!162735))

(assert (not bm!162734))

(assert (not bm!162707))

(assert (not d!723723))

(assert (not b!2553320))

(assert (not b!2553342))

(assert (not b!2553652))

(assert (not d!723701))

(assert (not bm!162685))

(assert (not b!2553495))

(assert (not b!2553669))

(assert tp_is_empty!13067)

(assert (not b!2553244))

(assert (not b!2553508))

(assert (not b!2553512))

(assert (not b!2553415))

(assert (not bm!162732))

(assert (not bm!162709))

(assert (not b!2553535))

(assert (not bm!162706))

(assert (not b!2553517))

(assert (not bm!162750))

(assert (not b!2553315))

(assert (not b!2553636))

(assert (not b!2553403))

(assert (not b!2553609))

(assert (not b!2553536))

(assert (not b!2553498))

(assert (not b!2553504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

