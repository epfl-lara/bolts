; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!245910 () Bool)

(assert start!245910)

(declare-fun b!2523551 () Bool)

(declare-fun e!1597823 () Bool)

(declare-fun tp!806160 () Bool)

(declare-fun tp!806158 () Bool)

(assert (=> b!2523551 (= e!1597823 (and tp!806160 tp!806158))))

(declare-fun b!2523552 () Bool)

(declare-fun res!1066084 () Bool)

(declare-fun e!1597824 () Bool)

(assert (=> b!2523552 (=> res!1066084 e!1597824)))

(declare-datatypes ((C!15186 0))(
  ( (C!15187 (val!9245 Int)) )
))
(declare-datatypes ((Regex!7514 0))(
  ( (ElementMatch!7514 (c!402670 C!15186)) (Concat!12210 (regOne!15540 Regex!7514) (regTwo!15540 Regex!7514)) (EmptyExpr!7514) (Star!7514 (reg!7843 Regex!7514)) (EmptyLang!7514) (Union!7514 (regOne!15541 Regex!7514) (regTwo!15541 Regex!7514)) )
))
(declare-fun r!27340 () Regex!7514)

(declare-datatypes ((List!29579 0))(
  ( (Nil!29479) (Cons!29479 (h!34899 C!15186) (t!211278 List!29579)) )
))
(declare-datatypes ((tuple2!29530 0))(
  ( (tuple2!29531 (_1!17307 List!29579) (_2!17307 List!29579)) )
))
(declare-fun lt!900125 () tuple2!29530)

(declare-fun matchR!3501 (Regex!7514 List!29579) Bool)

(assert (=> b!2523552 (= res!1066084 (not (matchR!3501 (regTwo!15540 r!27340) (_2!17307 lt!900125))))))

(declare-fun b!2523553 () Bool)

(declare-fun e!1597827 () Bool)

(assert (=> b!2523553 (= e!1597827 e!1597824)))

(declare-fun res!1066081 () Bool)

(assert (=> b!2523553 (=> res!1066081 e!1597824)))

(declare-fun tl!4068 () List!29579)

(declare-fun ++!7235 (List!29579 List!29579) List!29579)

(assert (=> b!2523553 (= res!1066081 (not (= (++!7235 (_1!17307 lt!900125) (_2!17307 lt!900125)) tl!4068)))))

(declare-datatypes ((Option!5885 0))(
  ( (None!5884) (Some!5884 (v!31817 tuple2!29530)) )
))
(declare-fun lt!900120 () Option!5885)

(declare-fun get!9221 (Option!5885) tuple2!29530)

(assert (=> b!2523553 (= lt!900125 (get!9221 lt!900120))))

(declare-fun isDefined!4707 (Option!5885) Bool)

(assert (=> b!2523553 (isDefined!4707 lt!900120)))

(declare-fun lt!900119 () Regex!7514)

(declare-fun findConcatSeparation!907 (Regex!7514 Regex!7514 List!29579 List!29579 List!29579) Option!5885)

(assert (=> b!2523553 (= lt!900120 (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) Nil!29479 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43253 0))(
  ( (Unit!43254) )
))
(declare-fun lt!900124 () Unit!43253)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!189 (Regex!7514 Regex!7514 List!29579) Unit!43253)

(assert (=> b!2523553 (= lt!900124 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!189 lt!900119 (regTwo!15540 r!27340) tl!4068))))

(declare-fun b!2523554 () Bool)

(declare-fun e!1597825 () Bool)

(assert (=> b!2523554 (= e!1597825 (not e!1597827))))

(declare-fun res!1066083 () Bool)

(assert (=> b!2523554 (=> res!1066083 e!1597827)))

(declare-fun lt!900118 () Bool)

(assert (=> b!2523554 (= res!1066083 (not lt!900118))))

(declare-fun e!1597828 () Bool)

(assert (=> b!2523554 e!1597828))

(declare-fun res!1066079 () Bool)

(assert (=> b!2523554 (=> res!1066079 e!1597828)))

(assert (=> b!2523554 (= res!1066079 lt!900118)))

(declare-fun lt!900121 () Regex!7514)

(assert (=> b!2523554 (= lt!900118 (matchR!3501 lt!900121 tl!4068))))

(declare-fun lt!900123 () Regex!7514)

(declare-fun lt!900122 () Unit!43253)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!179 (Regex!7514 Regex!7514 List!29579) Unit!43253)

(assert (=> b!2523554 (= lt!900122 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!179 lt!900121 lt!900123 tl!4068))))

(declare-fun lt!900126 () Regex!7514)

(declare-fun derivative!209 (Regex!7514 List!29579) Regex!7514)

(assert (=> b!2523554 (= (matchR!3501 lt!900126 tl!4068) (matchR!3501 (derivative!209 lt!900126 tl!4068) Nil!29479))))

(declare-fun lt!900117 () Unit!43253)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!147 (Regex!7514 List!29579) Unit!43253)

(assert (=> b!2523554 (= lt!900117 (lemmaMatchRIsSameAsWholeDerivativeAndNil!147 lt!900126 tl!4068))))

(assert (=> b!2523554 (= lt!900126 (Union!7514 lt!900121 lt!900123))))

(declare-fun c!14016 () C!15186)

(declare-fun derivativeStep!2083 (Regex!7514 C!15186) Regex!7514)

(assert (=> b!2523554 (= lt!900123 (derivativeStep!2083 (regTwo!15540 r!27340) c!14016))))

(assert (=> b!2523554 (= lt!900121 (Concat!12210 lt!900119 (regTwo!15540 r!27340)))))

(assert (=> b!2523554 (= lt!900119 (derivativeStep!2083 (regOne!15540 r!27340) c!14016))))

(declare-fun b!2523555 () Bool)

(assert (=> b!2523555 (= e!1597824 (matchR!3501 (regOne!15540 r!27340) (Cons!29479 c!14016 (_1!17307 lt!900125))))))

(declare-fun b!2523556 () Bool)

(assert (=> b!2523556 (= e!1597828 (matchR!3501 lt!900123 tl!4068))))

(declare-fun b!2523557 () Bool)

(declare-fun res!1066080 () Bool)

(assert (=> b!2523557 (=> (not res!1066080) (not e!1597825))))

(assert (=> b!2523557 (= res!1066080 (and (not (is-EmptyExpr!7514 r!27340)) (not (is-EmptyLang!7514 r!27340)) (not (is-ElementMatch!7514 r!27340)) (not (is-Union!7514 r!27340)) (not (is-Star!7514 r!27340))))))

(declare-fun b!2523558 () Bool)

(declare-fun res!1066078 () Bool)

(assert (=> b!2523558 (=> (not res!1066078) (not e!1597825))))

(declare-fun nullable!2431 (Regex!7514) Bool)

(assert (=> b!2523558 (= res!1066078 (nullable!2431 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)))))

(declare-fun b!2523559 () Bool)

(declare-fun res!1066082 () Bool)

(assert (=> b!2523559 (=> (not res!1066082) (not e!1597825))))

(assert (=> b!2523559 (= res!1066082 (nullable!2431 (regOne!15540 r!27340)))))

(declare-fun res!1066085 () Bool)

(assert (=> start!245910 (=> (not res!1066085) (not e!1597825))))

(declare-fun validRegex!3140 (Regex!7514) Bool)

(assert (=> start!245910 (= res!1066085 (validRegex!3140 r!27340))))

(assert (=> start!245910 e!1597825))

(assert (=> start!245910 e!1597823))

(declare-fun tp_is_empty!12883 () Bool)

(assert (=> start!245910 tp_is_empty!12883))

(declare-fun e!1597826 () Bool)

(assert (=> start!245910 e!1597826))

(declare-fun b!2523560 () Bool)

(assert (=> b!2523560 (= e!1597823 tp_is_empty!12883)))

(declare-fun b!2523561 () Bool)

(declare-fun tp!806159 () Bool)

(declare-fun tp!806156 () Bool)

(assert (=> b!2523561 (= e!1597823 (and tp!806159 tp!806156))))

(declare-fun b!2523562 () Bool)

(declare-fun res!1066077 () Bool)

(assert (=> b!2523562 (=> res!1066077 e!1597824)))

(assert (=> b!2523562 (= res!1066077 (not (matchR!3501 lt!900119 (_1!17307 lt!900125))))))

(declare-fun b!2523563 () Bool)

(declare-fun tp!806157 () Bool)

(assert (=> b!2523563 (= e!1597826 (and tp_is_empty!12883 tp!806157))))

(declare-fun b!2523564 () Bool)

(declare-fun tp!806155 () Bool)

(assert (=> b!2523564 (= e!1597823 tp!806155)))

(assert (= (and start!245910 res!1066085) b!2523558))

(assert (= (and b!2523558 res!1066078) b!2523557))

(assert (= (and b!2523557 res!1066080) b!2523559))

(assert (= (and b!2523559 res!1066082) b!2523554))

(assert (= (and b!2523554 (not res!1066079)) b!2523556))

(assert (= (and b!2523554 (not res!1066083)) b!2523553))

(assert (= (and b!2523553 (not res!1066081)) b!2523562))

(assert (= (and b!2523562 (not res!1066077)) b!2523552))

(assert (= (and b!2523552 (not res!1066084)) b!2523555))

(assert (= (and start!245910 (is-ElementMatch!7514 r!27340)) b!2523560))

(assert (= (and start!245910 (is-Concat!12210 r!27340)) b!2523551))

(assert (= (and start!245910 (is-Star!7514 r!27340)) b!2523564))

(assert (= (and start!245910 (is-Union!7514 r!27340)) b!2523561))

(assert (= (and start!245910 (is-Cons!29479 tl!4068)) b!2523563))

(declare-fun m!2877481 () Bool)

(assert (=> b!2523556 m!2877481))

(declare-fun m!2877483 () Bool)

(assert (=> b!2523552 m!2877483))

(declare-fun m!2877485 () Bool)

(assert (=> b!2523559 m!2877485))

(declare-fun m!2877487 () Bool)

(assert (=> start!245910 m!2877487))

(declare-fun m!2877489 () Bool)

(assert (=> b!2523558 m!2877489))

(assert (=> b!2523558 m!2877489))

(declare-fun m!2877491 () Bool)

(assert (=> b!2523558 m!2877491))

(assert (=> b!2523558 m!2877491))

(declare-fun m!2877493 () Bool)

(assert (=> b!2523558 m!2877493))

(declare-fun m!2877495 () Bool)

(assert (=> b!2523562 m!2877495))

(declare-fun m!2877497 () Bool)

(assert (=> b!2523555 m!2877497))

(declare-fun m!2877499 () Bool)

(assert (=> b!2523553 m!2877499))

(declare-fun m!2877501 () Bool)

(assert (=> b!2523553 m!2877501))

(declare-fun m!2877503 () Bool)

(assert (=> b!2523553 m!2877503))

(declare-fun m!2877505 () Bool)

(assert (=> b!2523553 m!2877505))

(declare-fun m!2877507 () Bool)

(assert (=> b!2523553 m!2877507))

(declare-fun m!2877509 () Bool)

(assert (=> b!2523554 m!2877509))

(declare-fun m!2877511 () Bool)

(assert (=> b!2523554 m!2877511))

(declare-fun m!2877513 () Bool)

(assert (=> b!2523554 m!2877513))

(declare-fun m!2877515 () Bool)

(assert (=> b!2523554 m!2877515))

(declare-fun m!2877517 () Bool)

(assert (=> b!2523554 m!2877517))

(assert (=> b!2523554 m!2877511))

(declare-fun m!2877519 () Bool)

(assert (=> b!2523554 m!2877519))

(declare-fun m!2877521 () Bool)

(assert (=> b!2523554 m!2877521))

(declare-fun m!2877523 () Bool)

(assert (=> b!2523554 m!2877523))

(push 1)

(assert (not b!2523553))

(assert (not b!2523558))

(assert (not b!2523564))

(assert (not b!2523551))

(assert (not b!2523562))

(assert (not b!2523563))

(assert (not b!2523559))

(assert (not b!2523552))

(assert (not b!2523561))

(assert (not b!2523554))

(assert (not b!2523555))

(assert tp_is_empty!12883)

(assert (not b!2523556))

(assert (not start!245910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2523653 () Bool)

(declare-fun e!1597878 () Bool)

(declare-fun e!1597875 () Bool)

(assert (=> b!2523653 (= e!1597878 e!1597875)))

(declare-fun res!1066143 () Bool)

(assert (=> b!2523653 (=> res!1066143 e!1597875)))

(declare-fun call!157456 () Bool)

(assert (=> b!2523653 (= res!1066143 call!157456)))

(declare-fun b!2523654 () Bool)

(declare-fun head!5763 (List!29579) C!15186)

(assert (=> b!2523654 (= e!1597875 (not (= (head!5763 (_2!17307 lt!900125)) (c!402670 (regTwo!15540 r!27340)))))))

(declare-fun b!2523656 () Bool)

(declare-fun e!1597877 () Bool)

(assert (=> b!2523656 (= e!1597877 (= (head!5763 (_2!17307 lt!900125)) (c!402670 (regTwo!15540 r!27340))))))

(declare-fun bm!157451 () Bool)

(declare-fun isEmpty!16951 (List!29579) Bool)

(assert (=> bm!157451 (= call!157456 (isEmpty!16951 (_2!17307 lt!900125)))))

(declare-fun b!2523657 () Bool)

(declare-fun res!1066139 () Bool)

(assert (=> b!2523657 (=> res!1066139 e!1597875)))

(declare-fun tail!4040 (List!29579) List!29579)

(assert (=> b!2523657 (= res!1066139 (not (isEmpty!16951 (tail!4040 (_2!17307 lt!900125)))))))

(declare-fun b!2523658 () Bool)

(declare-fun res!1066142 () Bool)

(assert (=> b!2523658 (=> (not res!1066142) (not e!1597877))))

(assert (=> b!2523658 (= res!1066142 (isEmpty!16951 (tail!4040 (_2!17307 lt!900125))))))

(declare-fun b!2523659 () Bool)

(declare-fun e!1597881 () Bool)

(declare-fun e!1597879 () Bool)

(assert (=> b!2523659 (= e!1597881 e!1597879)))

(declare-fun c!402684 () Bool)

(assert (=> b!2523659 (= c!402684 (is-EmptyLang!7514 (regTwo!15540 r!27340)))))

(declare-fun b!2523660 () Bool)

(declare-fun e!1597880 () Bool)

(assert (=> b!2523660 (= e!1597880 e!1597878)))

(declare-fun res!1066140 () Bool)

(assert (=> b!2523660 (=> (not res!1066140) (not e!1597878))))

(declare-fun lt!900159 () Bool)

(assert (=> b!2523660 (= res!1066140 (not lt!900159))))

(declare-fun b!2523661 () Bool)

(assert (=> b!2523661 (= e!1597879 (not lt!900159))))

(declare-fun b!2523662 () Bool)

(assert (=> b!2523662 (= e!1597881 (= lt!900159 call!157456))))

(declare-fun d!718487 () Bool)

(assert (=> d!718487 e!1597881))

(declare-fun c!402683 () Bool)

(assert (=> d!718487 (= c!402683 (is-EmptyExpr!7514 (regTwo!15540 r!27340)))))

(declare-fun e!1597876 () Bool)

(assert (=> d!718487 (= lt!900159 e!1597876)))

(declare-fun c!402682 () Bool)

(assert (=> d!718487 (= c!402682 (isEmpty!16951 (_2!17307 lt!900125)))))

(assert (=> d!718487 (validRegex!3140 (regTwo!15540 r!27340))))

(assert (=> d!718487 (= (matchR!3501 (regTwo!15540 r!27340) (_2!17307 lt!900125)) lt!900159)))

(declare-fun b!2523655 () Bool)

(declare-fun res!1066145 () Bool)

(assert (=> b!2523655 (=> (not res!1066145) (not e!1597877))))

(assert (=> b!2523655 (= res!1066145 (not call!157456))))

(declare-fun b!2523663 () Bool)

(declare-fun res!1066144 () Bool)

(assert (=> b!2523663 (=> res!1066144 e!1597880)))

(assert (=> b!2523663 (= res!1066144 (not (is-ElementMatch!7514 (regTwo!15540 r!27340))))))

(assert (=> b!2523663 (= e!1597879 e!1597880)))

(declare-fun b!2523664 () Bool)

(assert (=> b!2523664 (= e!1597876 (nullable!2431 (regTwo!15540 r!27340)))))

(declare-fun b!2523665 () Bool)

(declare-fun res!1066141 () Bool)

(assert (=> b!2523665 (=> res!1066141 e!1597880)))

(assert (=> b!2523665 (= res!1066141 e!1597877)))

(declare-fun res!1066146 () Bool)

(assert (=> b!2523665 (=> (not res!1066146) (not e!1597877))))

(assert (=> b!2523665 (= res!1066146 lt!900159)))

(declare-fun b!2523666 () Bool)

(assert (=> b!2523666 (= e!1597876 (matchR!3501 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125))) (tail!4040 (_2!17307 lt!900125))))))

(assert (= (and d!718487 c!402682) b!2523664))

(assert (= (and d!718487 (not c!402682)) b!2523666))

(assert (= (and d!718487 c!402683) b!2523662))

(assert (= (and d!718487 (not c!402683)) b!2523659))

(assert (= (and b!2523659 c!402684) b!2523661))

(assert (= (and b!2523659 (not c!402684)) b!2523663))

(assert (= (and b!2523663 (not res!1066144)) b!2523665))

(assert (= (and b!2523665 res!1066146) b!2523655))

(assert (= (and b!2523655 res!1066145) b!2523658))

(assert (= (and b!2523658 res!1066142) b!2523656))

(assert (= (and b!2523665 (not res!1066141)) b!2523660))

(assert (= (and b!2523660 res!1066140) b!2523653))

(assert (= (and b!2523653 (not res!1066143)) b!2523657))

(assert (= (and b!2523657 (not res!1066139)) b!2523654))

(assert (= (or b!2523662 b!2523653 b!2523655) bm!157451))

(declare-fun m!2877569 () Bool)

(assert (=> b!2523656 m!2877569))

(assert (=> b!2523666 m!2877569))

(assert (=> b!2523666 m!2877569))

(declare-fun m!2877571 () Bool)

(assert (=> b!2523666 m!2877571))

(declare-fun m!2877573 () Bool)

(assert (=> b!2523666 m!2877573))

(assert (=> b!2523666 m!2877571))

(assert (=> b!2523666 m!2877573))

(declare-fun m!2877575 () Bool)

(assert (=> b!2523666 m!2877575))

(declare-fun m!2877577 () Bool)

(assert (=> d!718487 m!2877577))

(declare-fun m!2877579 () Bool)

(assert (=> d!718487 m!2877579))

(declare-fun m!2877581 () Bool)

(assert (=> b!2523664 m!2877581))

(assert (=> b!2523654 m!2877569))

(assert (=> bm!157451 m!2877577))

(assert (=> b!2523657 m!2877573))

(assert (=> b!2523657 m!2877573))

(declare-fun m!2877583 () Bool)

(assert (=> b!2523657 m!2877583))

(assert (=> b!2523658 m!2877573))

(assert (=> b!2523658 m!2877573))

(assert (=> b!2523658 m!2877583))

(assert (=> b!2523552 d!718487))

(declare-fun d!718491 () Bool)

(declare-fun nullableFct!673 (Regex!7514) Bool)

(assert (=> d!718491 (= (nullable!2431 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)) (nullableFct!673 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469042 () Bool)

(assert (= bs!469042 d!718491))

(assert (=> bs!469042 m!2877491))

(declare-fun m!2877585 () Bool)

(assert (=> bs!469042 m!2877585))

(assert (=> b!2523558 d!718491))

(declare-fun d!718493 () Bool)

(declare-fun lt!900162 () Regex!7514)

(assert (=> d!718493 (validRegex!3140 lt!900162)))

(declare-fun e!1597884 () Regex!7514)

(assert (=> d!718493 (= lt!900162 e!1597884)))

(declare-fun c!402687 () Bool)

(assert (=> d!718493 (= c!402687 (is-Cons!29479 tl!4068))))

(assert (=> d!718493 (validRegex!3140 (derivativeStep!2083 r!27340 c!14016))))

(assert (=> d!718493 (= (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068) lt!900162)))

(declare-fun b!2523671 () Bool)

(assert (=> b!2523671 (= e!1597884 (derivative!209 (derivativeStep!2083 (derivativeStep!2083 r!27340 c!14016) (h!34899 tl!4068)) (t!211278 tl!4068)))))

(declare-fun b!2523672 () Bool)

(assert (=> b!2523672 (= e!1597884 (derivativeStep!2083 r!27340 c!14016))))

(assert (= (and d!718493 c!402687) b!2523671))

(assert (= (and d!718493 (not c!402687)) b!2523672))

(declare-fun m!2877587 () Bool)

(assert (=> d!718493 m!2877587))

(assert (=> d!718493 m!2877489))

(declare-fun m!2877589 () Bool)

(assert (=> d!718493 m!2877589))

(assert (=> b!2523671 m!2877489))

(declare-fun m!2877591 () Bool)

(assert (=> b!2523671 m!2877591))

(assert (=> b!2523671 m!2877591))

(declare-fun m!2877593 () Bool)

(assert (=> b!2523671 m!2877593))

(assert (=> b!2523558 d!718493))

(declare-fun d!718495 () Bool)

(declare-fun lt!900165 () Regex!7514)

(assert (=> d!718495 (validRegex!3140 lt!900165)))

(declare-fun e!1597903 () Regex!7514)

(assert (=> d!718495 (= lt!900165 e!1597903)))

(declare-fun c!402700 () Bool)

(assert (=> d!718495 (= c!402700 (or (is-EmptyExpr!7514 r!27340) (is-EmptyLang!7514 r!27340)))))

(assert (=> d!718495 (validRegex!3140 r!27340)))

(assert (=> d!718495 (= (derivativeStep!2083 r!27340 c!14016) lt!900165)))

(declare-fun b!2523702 () Bool)

(declare-fun e!1597906 () Regex!7514)

(assert (=> b!2523702 (= e!1597906 (ite (= c!14016 (c!402670 r!27340)) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2523703 () Bool)

(declare-fun e!1597902 () Regex!7514)

(declare-fun call!157475 () Regex!7514)

(assert (=> b!2523703 (= e!1597902 (Concat!12210 call!157475 r!27340))))

(declare-fun b!2523704 () Bool)

(declare-fun e!1597904 () Regex!7514)

(declare-fun call!157477 () Regex!7514)

(assert (=> b!2523704 (= e!1597904 (Union!7514 (Concat!12210 call!157477 (regTwo!15540 r!27340)) EmptyLang!7514))))

(declare-fun b!2523705 () Bool)

(declare-fun e!1597905 () Regex!7514)

(declare-fun call!157476 () Regex!7514)

(declare-fun call!157474 () Regex!7514)

(assert (=> b!2523705 (= e!1597905 (Union!7514 call!157476 call!157474))))

(declare-fun b!2523706 () Bool)

(assert (=> b!2523706 (= e!1597903 EmptyLang!7514)))

(declare-fun b!2523707 () Bool)

(assert (=> b!2523707 (= e!1597905 e!1597902)))

(declare-fun c!402703 () Bool)

(assert (=> b!2523707 (= c!402703 (is-Star!7514 r!27340))))

(declare-fun bm!157469 () Bool)

(assert (=> bm!157469 (= call!157477 call!157475)))

(declare-fun b!2523708 () Bool)

(declare-fun c!402704 () Bool)

(assert (=> b!2523708 (= c!402704 (nullable!2431 (regOne!15540 r!27340)))))

(assert (=> b!2523708 (= e!1597902 e!1597904)))

(declare-fun b!2523709 () Bool)

(assert (=> b!2523709 (= e!1597904 (Union!7514 (Concat!12210 call!157477 (regTwo!15540 r!27340)) call!157474))))

(declare-fun b!2523710 () Bool)

(assert (=> b!2523710 (= e!1597903 e!1597906)))

(declare-fun c!402701 () Bool)

(assert (=> b!2523710 (= c!402701 (is-ElementMatch!7514 r!27340))))

(declare-fun bm!157470 () Bool)

(declare-fun c!402702 () Bool)

(assert (=> bm!157470 (= call!157476 (derivativeStep!2083 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))) c!14016))))

(declare-fun bm!157471 () Bool)

(assert (=> bm!157471 (= call!157474 (derivativeStep!2083 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)) c!14016))))

(declare-fun bm!157472 () Bool)

(assert (=> bm!157472 (= call!157475 call!157476)))

(declare-fun b!2523711 () Bool)

(assert (=> b!2523711 (= c!402702 (is-Union!7514 r!27340))))

(assert (=> b!2523711 (= e!1597906 e!1597905)))

(assert (= (and d!718495 c!402700) b!2523706))

(assert (= (and d!718495 (not c!402700)) b!2523710))

(assert (= (and b!2523710 c!402701) b!2523702))

(assert (= (and b!2523710 (not c!402701)) b!2523711))

(assert (= (and b!2523711 c!402702) b!2523705))

(assert (= (and b!2523711 (not c!402702)) b!2523707))

(assert (= (and b!2523707 c!402703) b!2523703))

(assert (= (and b!2523707 (not c!402703)) b!2523708))

(assert (= (and b!2523708 c!402704) b!2523709))

(assert (= (and b!2523708 (not c!402704)) b!2523704))

(assert (= (or b!2523709 b!2523704) bm!157469))

(assert (= (or b!2523703 bm!157469) bm!157472))

(assert (= (or b!2523705 b!2523709) bm!157471))

(assert (= (or b!2523705 bm!157472) bm!157470))

(declare-fun m!2877601 () Bool)

(assert (=> d!718495 m!2877601))

(assert (=> d!718495 m!2877487))

(assert (=> b!2523708 m!2877485))

(declare-fun m!2877603 () Bool)

(assert (=> bm!157470 m!2877603))

(declare-fun m!2877605 () Bool)

(assert (=> bm!157471 m!2877605))

(assert (=> b!2523558 d!718495))

(declare-fun b!2523712 () Bool)

(declare-fun e!1597910 () Bool)

(declare-fun e!1597907 () Bool)

(assert (=> b!2523712 (= e!1597910 e!1597907)))

(declare-fun res!1066156 () Bool)

(assert (=> b!2523712 (=> res!1066156 e!1597907)))

(declare-fun call!157478 () Bool)

(assert (=> b!2523712 (= res!1066156 call!157478)))

(declare-fun b!2523713 () Bool)

(assert (=> b!2523713 (= e!1597907 (not (= (head!5763 tl!4068) (c!402670 lt!900123))))))

(declare-fun b!2523715 () Bool)

(declare-fun e!1597909 () Bool)

(assert (=> b!2523715 (= e!1597909 (= (head!5763 tl!4068) (c!402670 lt!900123)))))

(declare-fun bm!157473 () Bool)

(assert (=> bm!157473 (= call!157478 (isEmpty!16951 tl!4068))))

(declare-fun b!2523716 () Bool)

(declare-fun res!1066152 () Bool)

(assert (=> b!2523716 (=> res!1066152 e!1597907)))

(assert (=> b!2523716 (= res!1066152 (not (isEmpty!16951 (tail!4040 tl!4068))))))

(declare-fun b!2523717 () Bool)

(declare-fun res!1066155 () Bool)

(assert (=> b!2523717 (=> (not res!1066155) (not e!1597909))))

(assert (=> b!2523717 (= res!1066155 (isEmpty!16951 (tail!4040 tl!4068)))))

(declare-fun b!2523718 () Bool)

(declare-fun e!1597913 () Bool)

(declare-fun e!1597911 () Bool)

(assert (=> b!2523718 (= e!1597913 e!1597911)))

(declare-fun c!402707 () Bool)

(assert (=> b!2523718 (= c!402707 (is-EmptyLang!7514 lt!900123))))

(declare-fun b!2523719 () Bool)

(declare-fun e!1597912 () Bool)

(assert (=> b!2523719 (= e!1597912 e!1597910)))

(declare-fun res!1066153 () Bool)

(assert (=> b!2523719 (=> (not res!1066153) (not e!1597910))))

(declare-fun lt!900166 () Bool)

(assert (=> b!2523719 (= res!1066153 (not lt!900166))))

(declare-fun b!2523720 () Bool)

(assert (=> b!2523720 (= e!1597911 (not lt!900166))))

(declare-fun b!2523721 () Bool)

(assert (=> b!2523721 (= e!1597913 (= lt!900166 call!157478))))

(declare-fun d!718499 () Bool)

(assert (=> d!718499 e!1597913))

(declare-fun c!402706 () Bool)

(assert (=> d!718499 (= c!402706 (is-EmptyExpr!7514 lt!900123))))

(declare-fun e!1597908 () Bool)

(assert (=> d!718499 (= lt!900166 e!1597908)))

(declare-fun c!402705 () Bool)

(assert (=> d!718499 (= c!402705 (isEmpty!16951 tl!4068))))

(assert (=> d!718499 (validRegex!3140 lt!900123)))

(assert (=> d!718499 (= (matchR!3501 lt!900123 tl!4068) lt!900166)))

(declare-fun b!2523714 () Bool)

(declare-fun res!1066158 () Bool)

(assert (=> b!2523714 (=> (not res!1066158) (not e!1597909))))

(assert (=> b!2523714 (= res!1066158 (not call!157478))))

(declare-fun b!2523722 () Bool)

(declare-fun res!1066157 () Bool)

(assert (=> b!2523722 (=> res!1066157 e!1597912)))

(assert (=> b!2523722 (= res!1066157 (not (is-ElementMatch!7514 lt!900123)))))

(assert (=> b!2523722 (= e!1597911 e!1597912)))

(declare-fun b!2523723 () Bool)

(assert (=> b!2523723 (= e!1597908 (nullable!2431 lt!900123))))

(declare-fun b!2523724 () Bool)

(declare-fun res!1066154 () Bool)

(assert (=> b!2523724 (=> res!1066154 e!1597912)))

(assert (=> b!2523724 (= res!1066154 e!1597909)))

(declare-fun res!1066159 () Bool)

(assert (=> b!2523724 (=> (not res!1066159) (not e!1597909))))

(assert (=> b!2523724 (= res!1066159 lt!900166)))

(declare-fun b!2523725 () Bool)

(assert (=> b!2523725 (= e!1597908 (matchR!3501 (derivativeStep!2083 lt!900123 (head!5763 tl!4068)) (tail!4040 tl!4068)))))

(assert (= (and d!718499 c!402705) b!2523723))

(assert (= (and d!718499 (not c!402705)) b!2523725))

(assert (= (and d!718499 c!402706) b!2523721))

(assert (= (and d!718499 (not c!402706)) b!2523718))

(assert (= (and b!2523718 c!402707) b!2523720))

(assert (= (and b!2523718 (not c!402707)) b!2523722))

(assert (= (and b!2523722 (not res!1066157)) b!2523724))

(assert (= (and b!2523724 res!1066159) b!2523714))

(assert (= (and b!2523714 res!1066158) b!2523717))

(assert (= (and b!2523717 res!1066155) b!2523715))

(assert (= (and b!2523724 (not res!1066154)) b!2523719))

(assert (= (and b!2523719 res!1066153) b!2523712))

(assert (= (and b!2523712 (not res!1066156)) b!2523716))

(assert (= (and b!2523716 (not res!1066152)) b!2523713))

(assert (= (or b!2523721 b!2523712 b!2523714) bm!157473))

(declare-fun m!2877607 () Bool)

(assert (=> b!2523715 m!2877607))

(assert (=> b!2523725 m!2877607))

(assert (=> b!2523725 m!2877607))

(declare-fun m!2877609 () Bool)

(assert (=> b!2523725 m!2877609))

(declare-fun m!2877611 () Bool)

(assert (=> b!2523725 m!2877611))

(assert (=> b!2523725 m!2877609))

(assert (=> b!2523725 m!2877611))

(declare-fun m!2877613 () Bool)

(assert (=> b!2523725 m!2877613))

(declare-fun m!2877615 () Bool)

(assert (=> d!718499 m!2877615))

(declare-fun m!2877617 () Bool)

(assert (=> d!718499 m!2877617))

(declare-fun m!2877619 () Bool)

(assert (=> b!2523723 m!2877619))

(assert (=> b!2523713 m!2877607))

(assert (=> bm!157473 m!2877615))

(assert (=> b!2523716 m!2877611))

(assert (=> b!2523716 m!2877611))

(declare-fun m!2877621 () Bool)

(assert (=> b!2523716 m!2877621))

(assert (=> b!2523717 m!2877611))

(assert (=> b!2523717 m!2877611))

(assert (=> b!2523717 m!2877621))

(assert (=> b!2523556 d!718499))

(declare-fun b!2523726 () Bool)

(declare-fun e!1597917 () Bool)

(declare-fun e!1597914 () Bool)

(assert (=> b!2523726 (= e!1597917 e!1597914)))

(declare-fun res!1066164 () Bool)

(assert (=> b!2523726 (=> res!1066164 e!1597914)))

(declare-fun call!157479 () Bool)

(assert (=> b!2523726 (= res!1066164 call!157479)))

(declare-fun b!2523727 () Bool)

(assert (=> b!2523727 (= e!1597914 (not (= (head!5763 (_1!17307 lt!900125)) (c!402670 lt!900119))))))

(declare-fun b!2523729 () Bool)

(declare-fun e!1597916 () Bool)

(assert (=> b!2523729 (= e!1597916 (= (head!5763 (_1!17307 lt!900125)) (c!402670 lt!900119)))))

(declare-fun bm!157474 () Bool)

(assert (=> bm!157474 (= call!157479 (isEmpty!16951 (_1!17307 lt!900125)))))

(declare-fun b!2523730 () Bool)

(declare-fun res!1066160 () Bool)

(assert (=> b!2523730 (=> res!1066160 e!1597914)))

(assert (=> b!2523730 (= res!1066160 (not (isEmpty!16951 (tail!4040 (_1!17307 lt!900125)))))))

(declare-fun b!2523731 () Bool)

(declare-fun res!1066163 () Bool)

(assert (=> b!2523731 (=> (not res!1066163) (not e!1597916))))

(assert (=> b!2523731 (= res!1066163 (isEmpty!16951 (tail!4040 (_1!17307 lt!900125))))))

(declare-fun b!2523732 () Bool)

(declare-fun e!1597920 () Bool)

(declare-fun e!1597918 () Bool)

(assert (=> b!2523732 (= e!1597920 e!1597918)))

(declare-fun c!402710 () Bool)

(assert (=> b!2523732 (= c!402710 (is-EmptyLang!7514 lt!900119))))

(declare-fun b!2523733 () Bool)

(declare-fun e!1597919 () Bool)

(assert (=> b!2523733 (= e!1597919 e!1597917)))

(declare-fun res!1066161 () Bool)

(assert (=> b!2523733 (=> (not res!1066161) (not e!1597917))))

(declare-fun lt!900167 () Bool)

(assert (=> b!2523733 (= res!1066161 (not lt!900167))))

(declare-fun b!2523734 () Bool)

(assert (=> b!2523734 (= e!1597918 (not lt!900167))))

(declare-fun b!2523735 () Bool)

(assert (=> b!2523735 (= e!1597920 (= lt!900167 call!157479))))

(declare-fun d!718501 () Bool)

(assert (=> d!718501 e!1597920))

(declare-fun c!402709 () Bool)

(assert (=> d!718501 (= c!402709 (is-EmptyExpr!7514 lt!900119))))

(declare-fun e!1597915 () Bool)

(assert (=> d!718501 (= lt!900167 e!1597915)))

(declare-fun c!402708 () Bool)

(assert (=> d!718501 (= c!402708 (isEmpty!16951 (_1!17307 lt!900125)))))

(assert (=> d!718501 (validRegex!3140 lt!900119)))

(assert (=> d!718501 (= (matchR!3501 lt!900119 (_1!17307 lt!900125)) lt!900167)))

(declare-fun b!2523728 () Bool)

(declare-fun res!1066166 () Bool)

(assert (=> b!2523728 (=> (not res!1066166) (not e!1597916))))

(assert (=> b!2523728 (= res!1066166 (not call!157479))))

(declare-fun b!2523736 () Bool)

(declare-fun res!1066165 () Bool)

(assert (=> b!2523736 (=> res!1066165 e!1597919)))

(assert (=> b!2523736 (= res!1066165 (not (is-ElementMatch!7514 lt!900119)))))

(assert (=> b!2523736 (= e!1597918 e!1597919)))

(declare-fun b!2523737 () Bool)

(assert (=> b!2523737 (= e!1597915 (nullable!2431 lt!900119))))

(declare-fun b!2523738 () Bool)

(declare-fun res!1066162 () Bool)

(assert (=> b!2523738 (=> res!1066162 e!1597919)))

(assert (=> b!2523738 (= res!1066162 e!1597916)))

(declare-fun res!1066167 () Bool)

(assert (=> b!2523738 (=> (not res!1066167) (not e!1597916))))

(assert (=> b!2523738 (= res!1066167 lt!900167)))

(declare-fun b!2523739 () Bool)

(assert (=> b!2523739 (= e!1597915 (matchR!3501 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125))) (tail!4040 (_1!17307 lt!900125))))))

(assert (= (and d!718501 c!402708) b!2523737))

(assert (= (and d!718501 (not c!402708)) b!2523739))

(assert (= (and d!718501 c!402709) b!2523735))

(assert (= (and d!718501 (not c!402709)) b!2523732))

(assert (= (and b!2523732 c!402710) b!2523734))

(assert (= (and b!2523732 (not c!402710)) b!2523736))

(assert (= (and b!2523736 (not res!1066165)) b!2523738))

(assert (= (and b!2523738 res!1066167) b!2523728))

(assert (= (and b!2523728 res!1066166) b!2523731))

(assert (= (and b!2523731 res!1066163) b!2523729))

(assert (= (and b!2523738 (not res!1066162)) b!2523733))

(assert (= (and b!2523733 res!1066161) b!2523726))

(assert (= (and b!2523726 (not res!1066164)) b!2523730))

(assert (= (and b!2523730 (not res!1066160)) b!2523727))

(assert (= (or b!2523735 b!2523726 b!2523728) bm!157474))

(declare-fun m!2877623 () Bool)

(assert (=> b!2523729 m!2877623))

(assert (=> b!2523739 m!2877623))

(assert (=> b!2523739 m!2877623))

(declare-fun m!2877625 () Bool)

(assert (=> b!2523739 m!2877625))

(declare-fun m!2877627 () Bool)

(assert (=> b!2523739 m!2877627))

(assert (=> b!2523739 m!2877625))

(assert (=> b!2523739 m!2877627))

(declare-fun m!2877629 () Bool)

(assert (=> b!2523739 m!2877629))

(declare-fun m!2877631 () Bool)

(assert (=> d!718501 m!2877631))

(declare-fun m!2877633 () Bool)

(assert (=> d!718501 m!2877633))

(declare-fun m!2877635 () Bool)

(assert (=> b!2523737 m!2877635))

(assert (=> b!2523727 m!2877623))

(assert (=> bm!157474 m!2877631))

(assert (=> b!2523730 m!2877627))

(assert (=> b!2523730 m!2877627))

(declare-fun m!2877637 () Bool)

(assert (=> b!2523730 m!2877637))

(assert (=> b!2523731 m!2877627))

(assert (=> b!2523731 m!2877627))

(assert (=> b!2523731 m!2877637))

(assert (=> b!2523562 d!718501))

(declare-fun bm!157481 () Bool)

(declare-fun call!157487 () Bool)

(declare-fun call!157486 () Bool)

(assert (=> bm!157481 (= call!157487 call!157486)))

(declare-fun b!2523786 () Bool)

(declare-fun e!1597955 () Bool)

(declare-fun e!1597952 () Bool)

(assert (=> b!2523786 (= e!1597955 e!1597952)))

(declare-fun res!1066194 () Bool)

(assert (=> b!2523786 (= res!1066194 (not (nullable!2431 (reg!7843 r!27340))))))

(assert (=> b!2523786 (=> (not res!1066194) (not e!1597952))))

(declare-fun b!2523787 () Bool)

(declare-fun e!1597950 () Bool)

(assert (=> b!2523787 (= e!1597950 e!1597955)))

(declare-fun c!402722 () Bool)

(assert (=> b!2523787 (= c!402722 (is-Star!7514 r!27340))))

(declare-fun d!718503 () Bool)

(declare-fun res!1066198 () Bool)

(assert (=> d!718503 (=> res!1066198 e!1597950)))

(assert (=> d!718503 (= res!1066198 (is-ElementMatch!7514 r!27340))))

(assert (=> d!718503 (= (validRegex!3140 r!27340) e!1597950)))

(declare-fun c!402721 () Bool)

(declare-fun bm!157482 () Bool)

(assert (=> bm!157482 (= call!157486 (validRegex!3140 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))))))

(declare-fun b!2523788 () Bool)

(declare-fun res!1066197 () Bool)

(declare-fun e!1597954 () Bool)

(assert (=> b!2523788 (=> res!1066197 e!1597954)))

(assert (=> b!2523788 (= res!1066197 (not (is-Concat!12210 r!27340)))))

(declare-fun e!1597949 () Bool)

(assert (=> b!2523788 (= e!1597949 e!1597954)))

(declare-fun b!2523789 () Bool)

(declare-fun e!1597951 () Bool)

(declare-fun call!157488 () Bool)

(assert (=> b!2523789 (= e!1597951 call!157488)))

(declare-fun b!2523790 () Bool)

(declare-fun res!1066195 () Bool)

(declare-fun e!1597953 () Bool)

(assert (=> b!2523790 (=> (not res!1066195) (not e!1597953))))

(assert (=> b!2523790 (= res!1066195 call!157488)))

(assert (=> b!2523790 (= e!1597949 e!1597953)))

(declare-fun b!2523791 () Bool)

(assert (=> b!2523791 (= e!1597954 e!1597951)))

(declare-fun res!1066196 () Bool)

(assert (=> b!2523791 (=> (not res!1066196) (not e!1597951))))

(assert (=> b!2523791 (= res!1066196 call!157487)))

(declare-fun bm!157483 () Bool)

(assert (=> bm!157483 (= call!157488 (validRegex!3140 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))))))

(declare-fun b!2523792 () Bool)

(assert (=> b!2523792 (= e!1597955 e!1597949)))

(assert (=> b!2523792 (= c!402721 (is-Union!7514 r!27340))))

(declare-fun b!2523793 () Bool)

(assert (=> b!2523793 (= e!1597952 call!157486)))

(declare-fun b!2523794 () Bool)

(assert (=> b!2523794 (= e!1597953 call!157487)))

(assert (= (and d!718503 (not res!1066198)) b!2523787))

(assert (= (and b!2523787 c!402722) b!2523786))

(assert (= (and b!2523787 (not c!402722)) b!2523792))

(assert (= (and b!2523786 res!1066194) b!2523793))

(assert (= (and b!2523792 c!402721) b!2523790))

(assert (= (and b!2523792 (not c!402721)) b!2523788))

(assert (= (and b!2523790 res!1066195) b!2523794))

(assert (= (and b!2523788 (not res!1066197)) b!2523791))

(assert (= (and b!2523791 res!1066196) b!2523789))

(assert (= (or b!2523790 b!2523789) bm!157483))

(assert (= (or b!2523794 b!2523791) bm!157481))

(assert (= (or b!2523793 bm!157481) bm!157482))

(declare-fun m!2877639 () Bool)

(assert (=> b!2523786 m!2877639))

(declare-fun m!2877641 () Bool)

(assert (=> bm!157482 m!2877641))

(declare-fun m!2877643 () Bool)

(assert (=> bm!157483 m!2877643))

(assert (=> start!245910 d!718503))

(declare-fun b!2523795 () Bool)

(declare-fun e!1597959 () Bool)

(declare-fun e!1597956 () Bool)

(assert (=> b!2523795 (= e!1597959 e!1597956)))

(declare-fun res!1066203 () Bool)

(assert (=> b!2523795 (=> res!1066203 e!1597956)))

(declare-fun call!157489 () Bool)

(assert (=> b!2523795 (= res!1066203 call!157489)))

(declare-fun b!2523796 () Bool)

(assert (=> b!2523796 (= e!1597956 (not (= (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125))) (c!402670 (regOne!15540 r!27340)))))))

(declare-fun b!2523798 () Bool)

(declare-fun e!1597958 () Bool)

(assert (=> b!2523798 (= e!1597958 (= (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125))) (c!402670 (regOne!15540 r!27340))))))

(declare-fun bm!157484 () Bool)

(assert (=> bm!157484 (= call!157489 (isEmpty!16951 (Cons!29479 c!14016 (_1!17307 lt!900125))))))

(declare-fun b!2523799 () Bool)

(declare-fun res!1066199 () Bool)

(assert (=> b!2523799 (=> res!1066199 e!1597956)))

(assert (=> b!2523799 (= res!1066199 (not (isEmpty!16951 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125))))))))

(declare-fun b!2523800 () Bool)

(declare-fun res!1066202 () Bool)

(assert (=> b!2523800 (=> (not res!1066202) (not e!1597958))))

(assert (=> b!2523800 (= res!1066202 (isEmpty!16951 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))

(declare-fun b!2523801 () Bool)

(declare-fun e!1597962 () Bool)

(declare-fun e!1597960 () Bool)

(assert (=> b!2523801 (= e!1597962 e!1597960)))

(declare-fun c!402725 () Bool)

(assert (=> b!2523801 (= c!402725 (is-EmptyLang!7514 (regOne!15540 r!27340)))))

(declare-fun b!2523802 () Bool)

(declare-fun e!1597961 () Bool)

(assert (=> b!2523802 (= e!1597961 e!1597959)))

(declare-fun res!1066200 () Bool)

(assert (=> b!2523802 (=> (not res!1066200) (not e!1597959))))

(declare-fun lt!900170 () Bool)

(assert (=> b!2523802 (= res!1066200 (not lt!900170))))

(declare-fun b!2523803 () Bool)

(assert (=> b!2523803 (= e!1597960 (not lt!900170))))

(declare-fun b!2523804 () Bool)

(assert (=> b!2523804 (= e!1597962 (= lt!900170 call!157489))))

(declare-fun d!718505 () Bool)

(assert (=> d!718505 e!1597962))

(declare-fun c!402724 () Bool)

(assert (=> d!718505 (= c!402724 (is-EmptyExpr!7514 (regOne!15540 r!27340)))))

(declare-fun e!1597957 () Bool)

(assert (=> d!718505 (= lt!900170 e!1597957)))

(declare-fun c!402723 () Bool)

(assert (=> d!718505 (= c!402723 (isEmpty!16951 (Cons!29479 c!14016 (_1!17307 lt!900125))))))

(assert (=> d!718505 (validRegex!3140 (regOne!15540 r!27340))))

(assert (=> d!718505 (= (matchR!3501 (regOne!15540 r!27340) (Cons!29479 c!14016 (_1!17307 lt!900125))) lt!900170)))

(declare-fun b!2523797 () Bool)

(declare-fun res!1066205 () Bool)

(assert (=> b!2523797 (=> (not res!1066205) (not e!1597958))))

(assert (=> b!2523797 (= res!1066205 (not call!157489))))

(declare-fun b!2523805 () Bool)

(declare-fun res!1066204 () Bool)

(assert (=> b!2523805 (=> res!1066204 e!1597961)))

(assert (=> b!2523805 (= res!1066204 (not (is-ElementMatch!7514 (regOne!15540 r!27340))))))

(assert (=> b!2523805 (= e!1597960 e!1597961)))

(declare-fun b!2523806 () Bool)

(assert (=> b!2523806 (= e!1597957 (nullable!2431 (regOne!15540 r!27340)))))

(declare-fun b!2523807 () Bool)

(declare-fun res!1066201 () Bool)

(assert (=> b!2523807 (=> res!1066201 e!1597961)))

(assert (=> b!2523807 (= res!1066201 e!1597958)))

(declare-fun res!1066206 () Bool)

(assert (=> b!2523807 (=> (not res!1066206) (not e!1597958))))

(assert (=> b!2523807 (= res!1066206 lt!900170)))

(declare-fun b!2523808 () Bool)

(assert (=> b!2523808 (= e!1597957 (matchR!3501 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))) (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))

(assert (= (and d!718505 c!402723) b!2523806))

(assert (= (and d!718505 (not c!402723)) b!2523808))

(assert (= (and d!718505 c!402724) b!2523804))

(assert (= (and d!718505 (not c!402724)) b!2523801))

(assert (= (and b!2523801 c!402725) b!2523803))

(assert (= (and b!2523801 (not c!402725)) b!2523805))

(assert (= (and b!2523805 (not res!1066204)) b!2523807))

(assert (= (and b!2523807 res!1066206) b!2523797))

(assert (= (and b!2523797 res!1066205) b!2523800))

(assert (= (and b!2523800 res!1066202) b!2523798))

(assert (= (and b!2523807 (not res!1066201)) b!2523802))

(assert (= (and b!2523802 res!1066200) b!2523795))

(assert (= (and b!2523795 (not res!1066203)) b!2523799))

(assert (= (and b!2523799 (not res!1066199)) b!2523796))

(assert (= (or b!2523804 b!2523795 b!2523797) bm!157484))

(declare-fun m!2877645 () Bool)

(assert (=> b!2523798 m!2877645))

(assert (=> b!2523808 m!2877645))

(assert (=> b!2523808 m!2877645))

(declare-fun m!2877647 () Bool)

(assert (=> b!2523808 m!2877647))

(declare-fun m!2877649 () Bool)

(assert (=> b!2523808 m!2877649))

(assert (=> b!2523808 m!2877647))

(assert (=> b!2523808 m!2877649))

(declare-fun m!2877651 () Bool)

(assert (=> b!2523808 m!2877651))

(declare-fun m!2877653 () Bool)

(assert (=> d!718505 m!2877653))

(declare-fun m!2877655 () Bool)

(assert (=> d!718505 m!2877655))

(assert (=> b!2523806 m!2877485))

(assert (=> b!2523796 m!2877645))

(assert (=> bm!157484 m!2877653))

(assert (=> b!2523799 m!2877649))

(assert (=> b!2523799 m!2877649))

(declare-fun m!2877657 () Bool)

(assert (=> b!2523799 m!2877657))

(assert (=> b!2523800 m!2877649))

(assert (=> b!2523800 m!2877649))

(assert (=> b!2523800 m!2877657))

(assert (=> b!2523555 d!718505))

(declare-fun d!718507 () Bool)

(assert (=> d!718507 (isDefined!4707 (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) Nil!29479 tl!4068 tl!4068))))

(declare-fun lt!900173 () Unit!43253)

(declare-fun choose!14961 (Regex!7514 Regex!7514 List!29579) Unit!43253)

(assert (=> d!718507 (= lt!900173 (choose!14961 lt!900119 (regTwo!15540 r!27340) tl!4068))))

(assert (=> d!718507 (validRegex!3140 lt!900119)))

(assert (=> d!718507 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!189 lt!900119 (regTwo!15540 r!27340) tl!4068) lt!900173)))

(declare-fun bs!469043 () Bool)

(assert (= bs!469043 d!718507))

(assert (=> bs!469043 m!2877505))

(assert (=> bs!469043 m!2877505))

(declare-fun m!2877659 () Bool)

(assert (=> bs!469043 m!2877659))

(declare-fun m!2877661 () Bool)

(assert (=> bs!469043 m!2877661))

(assert (=> bs!469043 m!2877633))

(assert (=> b!2523553 d!718507))

(declare-fun b!2523819 () Bool)

(declare-fun e!1597973 () List!29579)

(assert (=> b!2523819 (= e!1597973 (Cons!29479 (h!34899 (_1!17307 lt!900125)) (++!7235 (t!211278 (_1!17307 lt!900125)) (_2!17307 lt!900125))))))

(declare-fun b!2523823 () Bool)

(declare-fun e!1597974 () Bool)

(declare-fun lt!900177 () List!29579)

(assert (=> b!2523823 (= e!1597974 (or (not (= (_2!17307 lt!900125) Nil!29479)) (= lt!900177 (_1!17307 lt!900125))))))

(declare-fun d!718509 () Bool)

(assert (=> d!718509 e!1597974))

(declare-fun res!1066216 () Bool)

(assert (=> d!718509 (=> (not res!1066216) (not e!1597974))))

(declare-fun content!4043 (List!29579) (Set C!15186))

(assert (=> d!718509 (= res!1066216 (= (content!4043 lt!900177) (set.union (content!4043 (_1!17307 lt!900125)) (content!4043 (_2!17307 lt!900125)))))))

(assert (=> d!718509 (= lt!900177 e!1597973)))

(declare-fun c!402731 () Bool)

(assert (=> d!718509 (= c!402731 (is-Nil!29479 (_1!17307 lt!900125)))))

(assert (=> d!718509 (= (++!7235 (_1!17307 lt!900125) (_2!17307 lt!900125)) lt!900177)))

(declare-fun b!2523821 () Bool)

(declare-fun res!1066218 () Bool)

(assert (=> b!2523821 (=> (not res!1066218) (not e!1597974))))

(declare-fun size!22925 (List!29579) Int)

(assert (=> b!2523821 (= res!1066218 (= (size!22925 lt!900177) (+ (size!22925 (_1!17307 lt!900125)) (size!22925 (_2!17307 lt!900125)))))))

(declare-fun b!2523817 () Bool)

(assert (=> b!2523817 (= e!1597973 (_2!17307 lt!900125))))

(assert (= (and d!718509 c!402731) b!2523817))

(assert (= (and d!718509 (not c!402731)) b!2523819))

(assert (= (and d!718509 res!1066216) b!2523821))

(assert (= (and b!2523821 res!1066218) b!2523823))

(declare-fun m!2877663 () Bool)

(assert (=> b!2523819 m!2877663))

(declare-fun m!2877665 () Bool)

(assert (=> d!718509 m!2877665))

(declare-fun m!2877667 () Bool)

(assert (=> d!718509 m!2877667))

(declare-fun m!2877669 () Bool)

(assert (=> d!718509 m!2877669))

(declare-fun m!2877671 () Bool)

(assert (=> b!2523821 m!2877671))

(declare-fun m!2877673 () Bool)

(assert (=> b!2523821 m!2877673))

(declare-fun m!2877675 () Bool)

(assert (=> b!2523821 m!2877675))

(assert (=> b!2523553 d!718509))

(declare-fun b!2523873 () Bool)

(declare-fun e!1598000 () Option!5885)

(declare-fun e!1598003 () Option!5885)

(assert (=> b!2523873 (= e!1598000 e!1598003)))

(declare-fun c!402739 () Bool)

(assert (=> b!2523873 (= c!402739 (is-Nil!29479 tl!4068))))

(declare-fun b!2523874 () Bool)

(declare-fun res!1066249 () Bool)

(declare-fun e!1597999 () Bool)

(assert (=> b!2523874 (=> (not res!1066249) (not e!1597999))))

(declare-fun lt!900188 () Option!5885)

(assert (=> b!2523874 (= res!1066249 (matchR!3501 lt!900119 (_1!17307 (get!9221 lt!900188))))))

(declare-fun d!718511 () Bool)

(declare-fun e!1598001 () Bool)

(assert (=> d!718511 e!1598001))

(declare-fun res!1066245 () Bool)

(assert (=> d!718511 (=> res!1066245 e!1598001)))

(assert (=> d!718511 (= res!1066245 e!1597999)))

(declare-fun res!1066248 () Bool)

(assert (=> d!718511 (=> (not res!1066248) (not e!1597999))))

(assert (=> d!718511 (= res!1066248 (isDefined!4707 lt!900188))))

(assert (=> d!718511 (= lt!900188 e!1598000)))

(declare-fun c!402740 () Bool)

(declare-fun e!1598002 () Bool)

(assert (=> d!718511 (= c!402740 e!1598002)))

(declare-fun res!1066247 () Bool)

(assert (=> d!718511 (=> (not res!1066247) (not e!1598002))))

(assert (=> d!718511 (= res!1066247 (matchR!3501 lt!900119 Nil!29479))))

(assert (=> d!718511 (validRegex!3140 lt!900119)))

(assert (=> d!718511 (= (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) Nil!29479 tl!4068 tl!4068) lt!900188)))

(declare-fun b!2523875 () Bool)

(assert (=> b!2523875 (= e!1598003 None!5884)))

(declare-fun b!2523876 () Bool)

(assert (=> b!2523876 (= e!1598002 (matchR!3501 (regTwo!15540 r!27340) tl!4068))))

(declare-fun b!2523877 () Bool)

(assert (=> b!2523877 (= e!1597999 (= (++!7235 (_1!17307 (get!9221 lt!900188)) (_2!17307 (get!9221 lt!900188))) tl!4068))))

(declare-fun b!2523878 () Bool)

(declare-fun lt!900190 () Unit!43253)

(declare-fun lt!900189 () Unit!43253)

(assert (=> b!2523878 (= lt!900190 lt!900189)))

(assert (=> b!2523878 (= (++!7235 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (t!211278 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!776 (List!29579 C!15186 List!29579 List!29579) Unit!43253)

(assert (=> b!2523878 (= lt!900189 (lemmaMoveElementToOtherListKeepsConcatEq!776 Nil!29479 (h!34899 tl!4068) (t!211278 tl!4068) tl!4068))))

(assert (=> b!2523878 (= e!1598003 (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (t!211278 tl!4068) tl!4068))))

(declare-fun b!2523879 () Bool)

(assert (=> b!2523879 (= e!1598001 (not (isDefined!4707 lt!900188)))))

(declare-fun b!2523880 () Bool)

(assert (=> b!2523880 (= e!1598000 (Some!5884 (tuple2!29531 Nil!29479 tl!4068)))))

(declare-fun b!2523881 () Bool)

(declare-fun res!1066246 () Bool)

(assert (=> b!2523881 (=> (not res!1066246) (not e!1597999))))

(assert (=> b!2523881 (= res!1066246 (matchR!3501 (regTwo!15540 r!27340) (_2!17307 (get!9221 lt!900188))))))

(assert (= (and d!718511 res!1066247) b!2523876))

(assert (= (and d!718511 c!402740) b!2523880))

(assert (= (and d!718511 (not c!402740)) b!2523873))

(assert (= (and b!2523873 c!402739) b!2523875))

(assert (= (and b!2523873 (not c!402739)) b!2523878))

(assert (= (and d!718511 res!1066248) b!2523874))

(assert (= (and b!2523874 res!1066249) b!2523881))

(assert (= (and b!2523881 res!1066246) b!2523877))

(assert (= (and d!718511 (not res!1066245)) b!2523879))

(declare-fun m!2877713 () Bool)

(assert (=> b!2523874 m!2877713))

(declare-fun m!2877715 () Bool)

(assert (=> b!2523874 m!2877715))

(declare-fun m!2877717 () Bool)

(assert (=> b!2523878 m!2877717))

(assert (=> b!2523878 m!2877717))

(declare-fun m!2877719 () Bool)

(assert (=> b!2523878 m!2877719))

(declare-fun m!2877721 () Bool)

(assert (=> b!2523878 m!2877721))

(assert (=> b!2523878 m!2877717))

(declare-fun m!2877723 () Bool)

(assert (=> b!2523878 m!2877723))

(declare-fun m!2877725 () Bool)

(assert (=> b!2523879 m!2877725))

(assert (=> b!2523877 m!2877713))

(declare-fun m!2877727 () Bool)

(assert (=> b!2523877 m!2877727))

(assert (=> d!718511 m!2877725))

(declare-fun m!2877729 () Bool)

(assert (=> d!718511 m!2877729))

(assert (=> d!718511 m!2877633))

(declare-fun m!2877731 () Bool)

(assert (=> b!2523876 m!2877731))

(assert (=> b!2523881 m!2877713))

(declare-fun m!2877733 () Bool)

(assert (=> b!2523881 m!2877733))

(assert (=> b!2523553 d!718511))

(declare-fun d!718519 () Bool)

(assert (=> d!718519 (= (get!9221 lt!900120) (v!31817 lt!900120))))

(assert (=> b!2523553 d!718519))

(declare-fun d!718521 () Bool)

(declare-fun isEmpty!16952 (Option!5885) Bool)

(assert (=> d!718521 (= (isDefined!4707 lt!900120) (not (isEmpty!16952 lt!900120)))))

(declare-fun bs!469044 () Bool)

(assert (= bs!469044 d!718521))

(declare-fun m!2877735 () Bool)

(assert (=> bs!469044 m!2877735))

(assert (=> b!2523553 d!718521))

(declare-fun d!718523 () Bool)

(declare-fun e!1598008 () Bool)

(assert (=> d!718523 e!1598008))

(declare-fun res!1066255 () Bool)

(assert (=> d!718523 (=> res!1066255 e!1598008)))

(assert (=> d!718523 (= res!1066255 (matchR!3501 lt!900121 tl!4068))))

(declare-fun lt!900195 () Unit!43253)

(declare-fun choose!14962 (Regex!7514 Regex!7514 List!29579) Unit!43253)

(assert (=> d!718523 (= lt!900195 (choose!14962 lt!900121 lt!900123 tl!4068))))

(declare-fun e!1598009 () Bool)

(assert (=> d!718523 e!1598009))

(declare-fun res!1066254 () Bool)

(assert (=> d!718523 (=> (not res!1066254) (not e!1598009))))

(assert (=> d!718523 (= res!1066254 (validRegex!3140 lt!900121))))

(assert (=> d!718523 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!179 lt!900121 lt!900123 tl!4068) lt!900195)))

(declare-fun b!2523886 () Bool)

(assert (=> b!2523886 (= e!1598009 (validRegex!3140 lt!900123))))

(declare-fun b!2523887 () Bool)

(assert (=> b!2523887 (= e!1598008 (matchR!3501 lt!900123 tl!4068))))

(assert (= (and d!718523 res!1066254) b!2523886))

(assert (= (and d!718523 (not res!1066255)) b!2523887))

(assert (=> d!718523 m!2877515))

(declare-fun m!2877737 () Bool)

(assert (=> d!718523 m!2877737))

(declare-fun m!2877739 () Bool)

(assert (=> d!718523 m!2877739))

(assert (=> b!2523886 m!2877617))

(assert (=> b!2523887 m!2877481))

(assert (=> b!2523554 d!718523))

(declare-fun b!2523888 () Bool)

(declare-fun e!1598013 () Bool)

(declare-fun e!1598010 () Bool)

(assert (=> b!2523888 (= e!1598013 e!1598010)))

(declare-fun res!1066260 () Bool)

(assert (=> b!2523888 (=> res!1066260 e!1598010)))

(declare-fun call!157494 () Bool)

(assert (=> b!2523888 (= res!1066260 call!157494)))

(declare-fun b!2523889 () Bool)

(assert (=> b!2523889 (= e!1598010 (not (= (head!5763 tl!4068) (c!402670 lt!900121))))))

(declare-fun b!2523891 () Bool)

(declare-fun e!1598012 () Bool)

(assert (=> b!2523891 (= e!1598012 (= (head!5763 tl!4068) (c!402670 lt!900121)))))

(declare-fun bm!157489 () Bool)

(assert (=> bm!157489 (= call!157494 (isEmpty!16951 tl!4068))))

(declare-fun b!2523892 () Bool)

(declare-fun res!1066256 () Bool)

(assert (=> b!2523892 (=> res!1066256 e!1598010)))

(assert (=> b!2523892 (= res!1066256 (not (isEmpty!16951 (tail!4040 tl!4068))))))

(declare-fun b!2523893 () Bool)

(declare-fun res!1066259 () Bool)

(assert (=> b!2523893 (=> (not res!1066259) (not e!1598012))))

(assert (=> b!2523893 (= res!1066259 (isEmpty!16951 (tail!4040 tl!4068)))))

(declare-fun b!2523894 () Bool)

(declare-fun e!1598016 () Bool)

(declare-fun e!1598014 () Bool)

(assert (=> b!2523894 (= e!1598016 e!1598014)))

(declare-fun c!402743 () Bool)

(assert (=> b!2523894 (= c!402743 (is-EmptyLang!7514 lt!900121))))

(declare-fun b!2523895 () Bool)

(declare-fun e!1598015 () Bool)

(assert (=> b!2523895 (= e!1598015 e!1598013)))

(declare-fun res!1066257 () Bool)

(assert (=> b!2523895 (=> (not res!1066257) (not e!1598013))))

(declare-fun lt!900196 () Bool)

(assert (=> b!2523895 (= res!1066257 (not lt!900196))))

(declare-fun b!2523896 () Bool)

(assert (=> b!2523896 (= e!1598014 (not lt!900196))))

(declare-fun b!2523897 () Bool)

(assert (=> b!2523897 (= e!1598016 (= lt!900196 call!157494))))

(declare-fun d!718525 () Bool)

(assert (=> d!718525 e!1598016))

(declare-fun c!402742 () Bool)

(assert (=> d!718525 (= c!402742 (is-EmptyExpr!7514 lt!900121))))

(declare-fun e!1598011 () Bool)

(assert (=> d!718525 (= lt!900196 e!1598011)))

(declare-fun c!402741 () Bool)

(assert (=> d!718525 (= c!402741 (isEmpty!16951 tl!4068))))

(assert (=> d!718525 (validRegex!3140 lt!900121)))

(assert (=> d!718525 (= (matchR!3501 lt!900121 tl!4068) lt!900196)))

(declare-fun b!2523890 () Bool)

(declare-fun res!1066262 () Bool)

(assert (=> b!2523890 (=> (not res!1066262) (not e!1598012))))

(assert (=> b!2523890 (= res!1066262 (not call!157494))))

(declare-fun b!2523898 () Bool)

(declare-fun res!1066261 () Bool)

(assert (=> b!2523898 (=> res!1066261 e!1598015)))

(assert (=> b!2523898 (= res!1066261 (not (is-ElementMatch!7514 lt!900121)))))

(assert (=> b!2523898 (= e!1598014 e!1598015)))

(declare-fun b!2523899 () Bool)

(assert (=> b!2523899 (= e!1598011 (nullable!2431 lt!900121))))

(declare-fun b!2523900 () Bool)

(declare-fun res!1066258 () Bool)

(assert (=> b!2523900 (=> res!1066258 e!1598015)))

(assert (=> b!2523900 (= res!1066258 e!1598012)))

(declare-fun res!1066263 () Bool)

(assert (=> b!2523900 (=> (not res!1066263) (not e!1598012))))

(assert (=> b!2523900 (= res!1066263 lt!900196)))

(declare-fun b!2523901 () Bool)

(assert (=> b!2523901 (= e!1598011 (matchR!3501 (derivativeStep!2083 lt!900121 (head!5763 tl!4068)) (tail!4040 tl!4068)))))

(assert (= (and d!718525 c!402741) b!2523899))

(assert (= (and d!718525 (not c!402741)) b!2523901))

(assert (= (and d!718525 c!402742) b!2523897))

(assert (= (and d!718525 (not c!402742)) b!2523894))

(assert (= (and b!2523894 c!402743) b!2523896))

(assert (= (and b!2523894 (not c!402743)) b!2523898))

(assert (= (and b!2523898 (not res!1066261)) b!2523900))

(assert (= (and b!2523900 res!1066263) b!2523890))

(assert (= (and b!2523890 res!1066262) b!2523893))

(assert (= (and b!2523893 res!1066259) b!2523891))

(assert (= (and b!2523900 (not res!1066258)) b!2523895))

(assert (= (and b!2523895 res!1066257) b!2523888))

(assert (= (and b!2523888 (not res!1066260)) b!2523892))

(assert (= (and b!2523892 (not res!1066256)) b!2523889))

(assert (= (or b!2523897 b!2523888 b!2523890) bm!157489))

(assert (=> b!2523891 m!2877607))

(assert (=> b!2523901 m!2877607))

(assert (=> b!2523901 m!2877607))

(declare-fun m!2877745 () Bool)

(assert (=> b!2523901 m!2877745))

(assert (=> b!2523901 m!2877611))

(assert (=> b!2523901 m!2877745))

(assert (=> b!2523901 m!2877611))

(declare-fun m!2877747 () Bool)

(assert (=> b!2523901 m!2877747))

(assert (=> d!718525 m!2877615))

(assert (=> d!718525 m!2877739))

(declare-fun m!2877749 () Bool)

(assert (=> b!2523899 m!2877749))

(assert (=> b!2523889 m!2877607))

(assert (=> bm!157489 m!2877615))

(assert (=> b!2523892 m!2877611))

(assert (=> b!2523892 m!2877611))

(assert (=> b!2523892 m!2877621))

(assert (=> b!2523893 m!2877611))

(assert (=> b!2523893 m!2877611))

(assert (=> b!2523893 m!2877621))

(assert (=> b!2523554 d!718525))

(declare-fun d!718529 () Bool)

(assert (=> d!718529 (= (matchR!3501 lt!900126 tl!4068) (matchR!3501 (derivative!209 lt!900126 tl!4068) Nil!29479))))

(declare-fun lt!900201 () Unit!43253)

(declare-fun choose!14963 (Regex!7514 List!29579) Unit!43253)

(assert (=> d!718529 (= lt!900201 (choose!14963 lt!900126 tl!4068))))

(assert (=> d!718529 (validRegex!3140 lt!900126)))

(assert (=> d!718529 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!147 lt!900126 tl!4068) lt!900201)))

(declare-fun bs!469046 () Bool)

(assert (= bs!469046 d!718529))

(declare-fun m!2877757 () Bool)

(assert (=> bs!469046 m!2877757))

(assert (=> bs!469046 m!2877521))

(assert (=> bs!469046 m!2877511))

(assert (=> bs!469046 m!2877513))

(declare-fun m!2877759 () Bool)

(assert (=> bs!469046 m!2877759))

(assert (=> bs!469046 m!2877511))

(assert (=> b!2523554 d!718529))

(declare-fun d!718533 () Bool)

(declare-fun lt!900202 () Regex!7514)

(assert (=> d!718533 (validRegex!3140 lt!900202)))

(declare-fun e!1598024 () Regex!7514)

(assert (=> d!718533 (= lt!900202 e!1598024)))

(declare-fun c!402747 () Bool)

(assert (=> d!718533 (= c!402747 (is-Cons!29479 tl!4068))))

(assert (=> d!718533 (validRegex!3140 lt!900126)))

(assert (=> d!718533 (= (derivative!209 lt!900126 tl!4068) lt!900202)))

(declare-fun b!2523916 () Bool)

(assert (=> b!2523916 (= e!1598024 (derivative!209 (derivativeStep!2083 lt!900126 (h!34899 tl!4068)) (t!211278 tl!4068)))))

(declare-fun b!2523917 () Bool)

(assert (=> b!2523917 (= e!1598024 lt!900126)))

(assert (= (and d!718533 c!402747) b!2523916))

(assert (= (and d!718533 (not c!402747)) b!2523917))

(declare-fun m!2877761 () Bool)

(assert (=> d!718533 m!2877761))

(assert (=> d!718533 m!2877757))

(declare-fun m!2877763 () Bool)

(assert (=> b!2523916 m!2877763))

(assert (=> b!2523916 m!2877763))

(declare-fun m!2877765 () Bool)

(assert (=> b!2523916 m!2877765))

(assert (=> b!2523554 d!718533))

(declare-fun b!2523918 () Bool)

(declare-fun e!1598028 () Bool)

(declare-fun e!1598025 () Bool)

(assert (=> b!2523918 (= e!1598028 e!1598025)))

(declare-fun res!1066276 () Bool)

(assert (=> b!2523918 (=> res!1066276 e!1598025)))

(declare-fun call!157496 () Bool)

(assert (=> b!2523918 (= res!1066276 call!157496)))

(declare-fun b!2523919 () Bool)

(assert (=> b!2523919 (= e!1598025 (not (= (head!5763 tl!4068) (c!402670 lt!900126))))))

(declare-fun b!2523921 () Bool)

(declare-fun e!1598027 () Bool)

(assert (=> b!2523921 (= e!1598027 (= (head!5763 tl!4068) (c!402670 lt!900126)))))

(declare-fun bm!157491 () Bool)

(assert (=> bm!157491 (= call!157496 (isEmpty!16951 tl!4068))))

(declare-fun b!2523922 () Bool)

(declare-fun res!1066272 () Bool)

(assert (=> b!2523922 (=> res!1066272 e!1598025)))

(assert (=> b!2523922 (= res!1066272 (not (isEmpty!16951 (tail!4040 tl!4068))))))

(declare-fun b!2523923 () Bool)

(declare-fun res!1066275 () Bool)

(assert (=> b!2523923 (=> (not res!1066275) (not e!1598027))))

(assert (=> b!2523923 (= res!1066275 (isEmpty!16951 (tail!4040 tl!4068)))))

(declare-fun b!2523924 () Bool)

(declare-fun e!1598031 () Bool)

(declare-fun e!1598029 () Bool)

(assert (=> b!2523924 (= e!1598031 e!1598029)))

(declare-fun c!402750 () Bool)

(assert (=> b!2523924 (= c!402750 (is-EmptyLang!7514 lt!900126))))

(declare-fun b!2523925 () Bool)

(declare-fun e!1598030 () Bool)

(assert (=> b!2523925 (= e!1598030 e!1598028)))

(declare-fun res!1066273 () Bool)

(assert (=> b!2523925 (=> (not res!1066273) (not e!1598028))))

(declare-fun lt!900203 () Bool)

(assert (=> b!2523925 (= res!1066273 (not lt!900203))))

(declare-fun b!2523926 () Bool)

(assert (=> b!2523926 (= e!1598029 (not lt!900203))))

(declare-fun b!2523927 () Bool)

(assert (=> b!2523927 (= e!1598031 (= lt!900203 call!157496))))

(declare-fun d!718535 () Bool)

(assert (=> d!718535 e!1598031))

(declare-fun c!402749 () Bool)

(assert (=> d!718535 (= c!402749 (is-EmptyExpr!7514 lt!900126))))

(declare-fun e!1598026 () Bool)

(assert (=> d!718535 (= lt!900203 e!1598026)))

(declare-fun c!402748 () Bool)

(assert (=> d!718535 (= c!402748 (isEmpty!16951 tl!4068))))

(assert (=> d!718535 (validRegex!3140 lt!900126)))

(assert (=> d!718535 (= (matchR!3501 lt!900126 tl!4068) lt!900203)))

(declare-fun b!2523920 () Bool)

(declare-fun res!1066278 () Bool)

(assert (=> b!2523920 (=> (not res!1066278) (not e!1598027))))

(assert (=> b!2523920 (= res!1066278 (not call!157496))))

(declare-fun b!2523928 () Bool)

(declare-fun res!1066277 () Bool)

(assert (=> b!2523928 (=> res!1066277 e!1598030)))

(assert (=> b!2523928 (= res!1066277 (not (is-ElementMatch!7514 lt!900126)))))

(assert (=> b!2523928 (= e!1598029 e!1598030)))

(declare-fun b!2523929 () Bool)

(assert (=> b!2523929 (= e!1598026 (nullable!2431 lt!900126))))

(declare-fun b!2523930 () Bool)

(declare-fun res!1066274 () Bool)

(assert (=> b!2523930 (=> res!1066274 e!1598030)))

(assert (=> b!2523930 (= res!1066274 e!1598027)))

(declare-fun res!1066279 () Bool)

(assert (=> b!2523930 (=> (not res!1066279) (not e!1598027))))

(assert (=> b!2523930 (= res!1066279 lt!900203)))

(declare-fun b!2523931 () Bool)

(assert (=> b!2523931 (= e!1598026 (matchR!3501 (derivativeStep!2083 lt!900126 (head!5763 tl!4068)) (tail!4040 tl!4068)))))

(assert (= (and d!718535 c!402748) b!2523929))

(assert (= (and d!718535 (not c!402748)) b!2523931))

(assert (= (and d!718535 c!402749) b!2523927))

(assert (= (and d!718535 (not c!402749)) b!2523924))

(assert (= (and b!2523924 c!402750) b!2523926))

(assert (= (and b!2523924 (not c!402750)) b!2523928))

(assert (= (and b!2523928 (not res!1066277)) b!2523930))

(assert (= (and b!2523930 res!1066279) b!2523920))

(assert (= (and b!2523920 res!1066278) b!2523923))

(assert (= (and b!2523923 res!1066275) b!2523921))

(assert (= (and b!2523930 (not res!1066274)) b!2523925))

(assert (= (and b!2523925 res!1066273) b!2523918))

(assert (= (and b!2523918 (not res!1066276)) b!2523922))

(assert (= (and b!2523922 (not res!1066272)) b!2523919))

(assert (= (or b!2523927 b!2523918 b!2523920) bm!157491))

(assert (=> b!2523921 m!2877607))

(assert (=> b!2523931 m!2877607))

(assert (=> b!2523931 m!2877607))

(declare-fun m!2877767 () Bool)

(assert (=> b!2523931 m!2877767))

(assert (=> b!2523931 m!2877611))

(assert (=> b!2523931 m!2877767))

(assert (=> b!2523931 m!2877611))

(declare-fun m!2877769 () Bool)

(assert (=> b!2523931 m!2877769))

(assert (=> d!718535 m!2877615))

(assert (=> d!718535 m!2877757))

(declare-fun m!2877771 () Bool)

(assert (=> b!2523929 m!2877771))

(assert (=> b!2523919 m!2877607))

(assert (=> bm!157491 m!2877615))

(assert (=> b!2523922 m!2877611))

(assert (=> b!2523922 m!2877611))

(assert (=> b!2523922 m!2877621))

(assert (=> b!2523923 m!2877611))

(assert (=> b!2523923 m!2877611))

(assert (=> b!2523923 m!2877621))

(assert (=> b!2523554 d!718535))

(declare-fun b!2523932 () Bool)

(declare-fun e!1598035 () Bool)

(declare-fun e!1598032 () Bool)

(assert (=> b!2523932 (= e!1598035 e!1598032)))

(declare-fun res!1066284 () Bool)

(assert (=> b!2523932 (=> res!1066284 e!1598032)))

(declare-fun call!157497 () Bool)

(assert (=> b!2523932 (= res!1066284 call!157497)))

(declare-fun b!2523933 () Bool)

(assert (=> b!2523933 (= e!1598032 (not (= (head!5763 Nil!29479) (c!402670 (derivative!209 lt!900126 tl!4068)))))))

(declare-fun b!2523935 () Bool)

(declare-fun e!1598034 () Bool)

(assert (=> b!2523935 (= e!1598034 (= (head!5763 Nil!29479) (c!402670 (derivative!209 lt!900126 tl!4068))))))

(declare-fun bm!157492 () Bool)

(assert (=> bm!157492 (= call!157497 (isEmpty!16951 Nil!29479))))

(declare-fun b!2523936 () Bool)

(declare-fun res!1066280 () Bool)

(assert (=> b!2523936 (=> res!1066280 e!1598032)))

(assert (=> b!2523936 (= res!1066280 (not (isEmpty!16951 (tail!4040 Nil!29479))))))

(declare-fun b!2523937 () Bool)

(declare-fun res!1066283 () Bool)

(assert (=> b!2523937 (=> (not res!1066283) (not e!1598034))))

(assert (=> b!2523937 (= res!1066283 (isEmpty!16951 (tail!4040 Nil!29479)))))

(declare-fun b!2523938 () Bool)

(declare-fun e!1598038 () Bool)

(declare-fun e!1598036 () Bool)

(assert (=> b!2523938 (= e!1598038 e!1598036)))

(declare-fun c!402753 () Bool)

(assert (=> b!2523938 (= c!402753 (is-EmptyLang!7514 (derivative!209 lt!900126 tl!4068)))))

(declare-fun b!2523939 () Bool)

(declare-fun e!1598037 () Bool)

(assert (=> b!2523939 (= e!1598037 e!1598035)))

(declare-fun res!1066281 () Bool)

(assert (=> b!2523939 (=> (not res!1066281) (not e!1598035))))

(declare-fun lt!900204 () Bool)

(assert (=> b!2523939 (= res!1066281 (not lt!900204))))

(declare-fun b!2523940 () Bool)

(assert (=> b!2523940 (= e!1598036 (not lt!900204))))

(declare-fun b!2523941 () Bool)

(assert (=> b!2523941 (= e!1598038 (= lt!900204 call!157497))))

(declare-fun d!718537 () Bool)

(assert (=> d!718537 e!1598038))

(declare-fun c!402752 () Bool)

(assert (=> d!718537 (= c!402752 (is-EmptyExpr!7514 (derivative!209 lt!900126 tl!4068)))))

(declare-fun e!1598033 () Bool)

(assert (=> d!718537 (= lt!900204 e!1598033)))

(declare-fun c!402751 () Bool)

(assert (=> d!718537 (= c!402751 (isEmpty!16951 Nil!29479))))

(assert (=> d!718537 (validRegex!3140 (derivative!209 lt!900126 tl!4068))))

(assert (=> d!718537 (= (matchR!3501 (derivative!209 lt!900126 tl!4068) Nil!29479) lt!900204)))

(declare-fun b!2523934 () Bool)

(declare-fun res!1066286 () Bool)

(assert (=> b!2523934 (=> (not res!1066286) (not e!1598034))))

(assert (=> b!2523934 (= res!1066286 (not call!157497))))

(declare-fun b!2523942 () Bool)

(declare-fun res!1066285 () Bool)

(assert (=> b!2523942 (=> res!1066285 e!1598037)))

(assert (=> b!2523942 (= res!1066285 (not (is-ElementMatch!7514 (derivative!209 lt!900126 tl!4068))))))

(assert (=> b!2523942 (= e!1598036 e!1598037)))

(declare-fun b!2523943 () Bool)

(assert (=> b!2523943 (= e!1598033 (nullable!2431 (derivative!209 lt!900126 tl!4068)))))

(declare-fun b!2523944 () Bool)

(declare-fun res!1066282 () Bool)

(assert (=> b!2523944 (=> res!1066282 e!1598037)))

(assert (=> b!2523944 (= res!1066282 e!1598034)))

(declare-fun res!1066287 () Bool)

(assert (=> b!2523944 (=> (not res!1066287) (not e!1598034))))

(assert (=> b!2523944 (= res!1066287 lt!900204)))

(declare-fun b!2523945 () Bool)

(assert (=> b!2523945 (= e!1598033 (matchR!3501 (derivativeStep!2083 (derivative!209 lt!900126 tl!4068) (head!5763 Nil!29479)) (tail!4040 Nil!29479)))))

(assert (= (and d!718537 c!402751) b!2523943))

(assert (= (and d!718537 (not c!402751)) b!2523945))

(assert (= (and d!718537 c!402752) b!2523941))

(assert (= (and d!718537 (not c!402752)) b!2523938))

(assert (= (and b!2523938 c!402753) b!2523940))

(assert (= (and b!2523938 (not c!402753)) b!2523942))

(assert (= (and b!2523942 (not res!1066285)) b!2523944))

(assert (= (and b!2523944 res!1066287) b!2523934))

(assert (= (and b!2523934 res!1066286) b!2523937))

(assert (= (and b!2523937 res!1066283) b!2523935))

(assert (= (and b!2523944 (not res!1066282)) b!2523939))

(assert (= (and b!2523939 res!1066281) b!2523932))

(assert (= (and b!2523932 (not res!1066284)) b!2523936))

(assert (= (and b!2523936 (not res!1066280)) b!2523933))

(assert (= (or b!2523941 b!2523932 b!2523934) bm!157492))

(declare-fun m!2877773 () Bool)

(assert (=> b!2523935 m!2877773))

(assert (=> b!2523945 m!2877773))

(assert (=> b!2523945 m!2877511))

(assert (=> b!2523945 m!2877773))

(declare-fun m!2877775 () Bool)

(assert (=> b!2523945 m!2877775))

(declare-fun m!2877777 () Bool)

(assert (=> b!2523945 m!2877777))

(assert (=> b!2523945 m!2877775))

(assert (=> b!2523945 m!2877777))

(declare-fun m!2877779 () Bool)

(assert (=> b!2523945 m!2877779))

(declare-fun m!2877781 () Bool)

(assert (=> d!718537 m!2877781))

(assert (=> d!718537 m!2877511))

(declare-fun m!2877783 () Bool)

(assert (=> d!718537 m!2877783))

(assert (=> b!2523943 m!2877511))

(declare-fun m!2877785 () Bool)

(assert (=> b!2523943 m!2877785))

(assert (=> b!2523933 m!2877773))

(assert (=> bm!157492 m!2877781))

(assert (=> b!2523936 m!2877777))

(assert (=> b!2523936 m!2877777))

(declare-fun m!2877787 () Bool)

(assert (=> b!2523936 m!2877787))

(assert (=> b!2523937 m!2877777))

(assert (=> b!2523937 m!2877777))

(assert (=> b!2523937 m!2877787))

(assert (=> b!2523554 d!718537))

(declare-fun d!718539 () Bool)

(declare-fun lt!900205 () Regex!7514)

(assert (=> d!718539 (validRegex!3140 lt!900205)))

(declare-fun e!1598040 () Regex!7514)

(assert (=> d!718539 (= lt!900205 e!1598040)))

(declare-fun c!402754 () Bool)

(assert (=> d!718539 (= c!402754 (or (is-EmptyExpr!7514 (regTwo!15540 r!27340)) (is-EmptyLang!7514 (regTwo!15540 r!27340))))))

(assert (=> d!718539 (validRegex!3140 (regTwo!15540 r!27340))))

(assert (=> d!718539 (= (derivativeStep!2083 (regTwo!15540 r!27340) c!14016) lt!900205)))

(declare-fun b!2523946 () Bool)

(declare-fun e!1598043 () Regex!7514)

(assert (=> b!2523946 (= e!1598043 (ite (= c!14016 (c!402670 (regTwo!15540 r!27340))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2523947 () Bool)

(declare-fun e!1598039 () Regex!7514)

(declare-fun call!157499 () Regex!7514)

(assert (=> b!2523947 (= e!1598039 (Concat!12210 call!157499 (regTwo!15540 r!27340)))))

(declare-fun b!2523948 () Bool)

(declare-fun e!1598041 () Regex!7514)

(declare-fun call!157501 () Regex!7514)

(assert (=> b!2523948 (= e!1598041 (Union!7514 (Concat!12210 call!157501 (regTwo!15540 (regTwo!15540 r!27340))) EmptyLang!7514))))

(declare-fun b!2523949 () Bool)

(declare-fun e!1598042 () Regex!7514)

(declare-fun call!157500 () Regex!7514)

(declare-fun call!157498 () Regex!7514)

(assert (=> b!2523949 (= e!1598042 (Union!7514 call!157500 call!157498))))

(declare-fun b!2523950 () Bool)

(assert (=> b!2523950 (= e!1598040 EmptyLang!7514)))

(declare-fun b!2523951 () Bool)

(assert (=> b!2523951 (= e!1598042 e!1598039)))

(declare-fun c!402757 () Bool)

(assert (=> b!2523951 (= c!402757 (is-Star!7514 (regTwo!15540 r!27340)))))

(declare-fun bm!157493 () Bool)

(assert (=> bm!157493 (= call!157501 call!157499)))

(declare-fun b!2523952 () Bool)

(declare-fun c!402758 () Bool)

(assert (=> b!2523952 (= c!402758 (nullable!2431 (regOne!15540 (regTwo!15540 r!27340))))))

(assert (=> b!2523952 (= e!1598039 e!1598041)))

(declare-fun b!2523953 () Bool)

(assert (=> b!2523953 (= e!1598041 (Union!7514 (Concat!12210 call!157501 (regTwo!15540 (regTwo!15540 r!27340))) call!157498))))

(declare-fun b!2523954 () Bool)

(assert (=> b!2523954 (= e!1598040 e!1598043)))

(declare-fun c!402755 () Bool)

(assert (=> b!2523954 (= c!402755 (is-ElementMatch!7514 (regTwo!15540 r!27340)))))

(declare-fun c!402756 () Bool)

(declare-fun bm!157494 () Bool)

(assert (=> bm!157494 (= call!157500 (derivativeStep!2083 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))) c!14016))))

(declare-fun bm!157495 () Bool)

(assert (=> bm!157495 (= call!157498 (derivativeStep!2083 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))) c!14016))))

(declare-fun bm!157496 () Bool)

(assert (=> bm!157496 (= call!157499 call!157500)))

(declare-fun b!2523955 () Bool)

(assert (=> b!2523955 (= c!402756 (is-Union!7514 (regTwo!15540 r!27340)))))

(assert (=> b!2523955 (= e!1598043 e!1598042)))

(assert (= (and d!718539 c!402754) b!2523950))

(assert (= (and d!718539 (not c!402754)) b!2523954))

(assert (= (and b!2523954 c!402755) b!2523946))

(assert (= (and b!2523954 (not c!402755)) b!2523955))

(assert (= (and b!2523955 c!402756) b!2523949))

(assert (= (and b!2523955 (not c!402756)) b!2523951))

(assert (= (and b!2523951 c!402757) b!2523947))

(assert (= (and b!2523951 (not c!402757)) b!2523952))

(assert (= (and b!2523952 c!402758) b!2523953))

(assert (= (and b!2523952 (not c!402758)) b!2523948))

(assert (= (or b!2523953 b!2523948) bm!157493))

(assert (= (or b!2523947 bm!157493) bm!157496))

(assert (= (or b!2523949 b!2523953) bm!157495))

(assert (= (or b!2523949 bm!157496) bm!157494))

(declare-fun m!2877789 () Bool)

(assert (=> d!718539 m!2877789))

(assert (=> d!718539 m!2877579))

(declare-fun m!2877791 () Bool)

(assert (=> b!2523952 m!2877791))

(declare-fun m!2877793 () Bool)

(assert (=> bm!157494 m!2877793))

(declare-fun m!2877795 () Bool)

(assert (=> bm!157495 m!2877795))

(assert (=> b!2523554 d!718539))

(declare-fun d!718541 () Bool)

(declare-fun lt!900208 () Regex!7514)

(assert (=> d!718541 (validRegex!3140 lt!900208)))

(declare-fun e!1598047 () Regex!7514)

(assert (=> d!718541 (= lt!900208 e!1598047)))

(declare-fun c!402761 () Bool)

(assert (=> d!718541 (= c!402761 (or (is-EmptyExpr!7514 (regOne!15540 r!27340)) (is-EmptyLang!7514 (regOne!15540 r!27340))))))

(assert (=> d!718541 (validRegex!3140 (regOne!15540 r!27340))))

(assert (=> d!718541 (= (derivativeStep!2083 (regOne!15540 r!27340) c!14016) lt!900208)))

(declare-fun b!2523960 () Bool)

(declare-fun e!1598050 () Regex!7514)

(assert (=> b!2523960 (= e!1598050 (ite (= c!14016 (c!402670 (regOne!15540 r!27340))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2523961 () Bool)

(declare-fun e!1598046 () Regex!7514)

(declare-fun call!157503 () Regex!7514)

(assert (=> b!2523961 (= e!1598046 (Concat!12210 call!157503 (regOne!15540 r!27340)))))

(declare-fun b!2523962 () Bool)

(declare-fun e!1598048 () Regex!7514)

(declare-fun call!157505 () Regex!7514)

(assert (=> b!2523962 (= e!1598048 (Union!7514 (Concat!12210 call!157505 (regTwo!15540 (regOne!15540 r!27340))) EmptyLang!7514))))

(declare-fun b!2523963 () Bool)

(declare-fun e!1598049 () Regex!7514)

(declare-fun call!157504 () Regex!7514)

(declare-fun call!157502 () Regex!7514)

(assert (=> b!2523963 (= e!1598049 (Union!7514 call!157504 call!157502))))

(declare-fun b!2523964 () Bool)

(assert (=> b!2523964 (= e!1598047 EmptyLang!7514)))

(declare-fun b!2523965 () Bool)

(assert (=> b!2523965 (= e!1598049 e!1598046)))

(declare-fun c!402764 () Bool)

(assert (=> b!2523965 (= c!402764 (is-Star!7514 (regOne!15540 r!27340)))))

(declare-fun bm!157497 () Bool)

(assert (=> bm!157497 (= call!157505 call!157503)))

(declare-fun b!2523966 () Bool)

(declare-fun c!402765 () Bool)

(assert (=> b!2523966 (= c!402765 (nullable!2431 (regOne!15540 (regOne!15540 r!27340))))))

(assert (=> b!2523966 (= e!1598046 e!1598048)))

(declare-fun b!2523967 () Bool)

(assert (=> b!2523967 (= e!1598048 (Union!7514 (Concat!12210 call!157505 (regTwo!15540 (regOne!15540 r!27340))) call!157502))))

(declare-fun b!2523968 () Bool)

(assert (=> b!2523968 (= e!1598047 e!1598050)))

(declare-fun c!402762 () Bool)

(assert (=> b!2523968 (= c!402762 (is-ElementMatch!7514 (regOne!15540 r!27340)))))

(declare-fun c!402763 () Bool)

(declare-fun bm!157498 () Bool)

(assert (=> bm!157498 (= call!157504 (derivativeStep!2083 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))) c!14016))))

(declare-fun bm!157499 () Bool)

(assert (=> bm!157499 (= call!157502 (derivativeStep!2083 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))) c!14016))))

(declare-fun bm!157500 () Bool)

(assert (=> bm!157500 (= call!157503 call!157504)))

(declare-fun b!2523969 () Bool)

(assert (=> b!2523969 (= c!402763 (is-Union!7514 (regOne!15540 r!27340)))))

(assert (=> b!2523969 (= e!1598050 e!1598049)))

(assert (= (and d!718541 c!402761) b!2523964))

(assert (= (and d!718541 (not c!402761)) b!2523968))

(assert (= (and b!2523968 c!402762) b!2523960))

(assert (= (and b!2523968 (not c!402762)) b!2523969))

(assert (= (and b!2523969 c!402763) b!2523963))

(assert (= (and b!2523969 (not c!402763)) b!2523965))

(assert (= (and b!2523965 c!402764) b!2523961))

(assert (= (and b!2523965 (not c!402764)) b!2523966))

(assert (= (and b!2523966 c!402765) b!2523967))

(assert (= (and b!2523966 (not c!402765)) b!2523962))

(assert (= (or b!2523967 b!2523962) bm!157497))

(assert (= (or b!2523961 bm!157497) bm!157500))

(assert (= (or b!2523963 b!2523967) bm!157499))

(assert (= (or b!2523963 bm!157500) bm!157498))

(declare-fun m!2877797 () Bool)

(assert (=> d!718541 m!2877797))

(assert (=> d!718541 m!2877655))

(declare-fun m!2877799 () Bool)

(assert (=> b!2523966 m!2877799))

(declare-fun m!2877801 () Bool)

(assert (=> bm!157498 m!2877801))

(declare-fun m!2877803 () Bool)

(assert (=> bm!157499 m!2877803))

(assert (=> b!2523554 d!718541))

(declare-fun d!718543 () Bool)

(assert (=> d!718543 (= (nullable!2431 (regOne!15540 r!27340)) (nullableFct!673 (regOne!15540 r!27340)))))

(declare-fun bs!469047 () Bool)

(assert (= bs!469047 d!718543))

(declare-fun m!2877805 () Bool)

(assert (=> bs!469047 m!2877805))

(assert (=> b!2523559 d!718543))

(declare-fun b!2523974 () Bool)

(declare-fun e!1598053 () Bool)

(declare-fun tp!806181 () Bool)

(assert (=> b!2523974 (= e!1598053 (and tp_is_empty!12883 tp!806181))))

(assert (=> b!2523563 (= tp!806157 e!1598053)))

(assert (= (and b!2523563 (is-Cons!29479 (t!211278 tl!4068))) b!2523974))

(declare-fun b!2523990 () Bool)

(declare-fun e!1598057 () Bool)

(declare-fun tp!806194 () Bool)

(declare-fun tp!806196 () Bool)

(assert (=> b!2523990 (= e!1598057 (and tp!806194 tp!806196))))

(declare-fun b!2523989 () Bool)

(declare-fun tp!806193 () Bool)

(assert (=> b!2523989 (= e!1598057 tp!806193)))

(declare-fun b!2523988 () Bool)

(declare-fun tp!806192 () Bool)

(declare-fun tp!806195 () Bool)

(assert (=> b!2523988 (= e!1598057 (and tp!806192 tp!806195))))

(declare-fun b!2523987 () Bool)

(assert (=> b!2523987 (= e!1598057 tp_is_empty!12883)))

(assert (=> b!2523561 (= tp!806159 e!1598057)))

(assert (= (and b!2523561 (is-ElementMatch!7514 (regOne!15541 r!27340))) b!2523987))

(assert (= (and b!2523561 (is-Concat!12210 (regOne!15541 r!27340))) b!2523988))

(assert (= (and b!2523561 (is-Star!7514 (regOne!15541 r!27340))) b!2523989))

(assert (= (and b!2523561 (is-Union!7514 (regOne!15541 r!27340))) b!2523990))

(declare-fun b!2523994 () Bool)

(declare-fun e!1598058 () Bool)

(declare-fun tp!806199 () Bool)

(declare-fun tp!806201 () Bool)

(assert (=> b!2523994 (= e!1598058 (and tp!806199 tp!806201))))

(declare-fun b!2523993 () Bool)

(declare-fun tp!806198 () Bool)

(assert (=> b!2523993 (= e!1598058 tp!806198)))

(declare-fun b!2523992 () Bool)

(declare-fun tp!806197 () Bool)

(declare-fun tp!806200 () Bool)

(assert (=> b!2523992 (= e!1598058 (and tp!806197 tp!806200))))

(declare-fun b!2523991 () Bool)

(assert (=> b!2523991 (= e!1598058 tp_is_empty!12883)))

(assert (=> b!2523561 (= tp!806156 e!1598058)))

(assert (= (and b!2523561 (is-ElementMatch!7514 (regTwo!15541 r!27340))) b!2523991))

(assert (= (and b!2523561 (is-Concat!12210 (regTwo!15541 r!27340))) b!2523992))

(assert (= (and b!2523561 (is-Star!7514 (regTwo!15541 r!27340))) b!2523993))

(assert (= (and b!2523561 (is-Union!7514 (regTwo!15541 r!27340))) b!2523994))

(declare-fun b!2523998 () Bool)

(declare-fun e!1598059 () Bool)

(declare-fun tp!806204 () Bool)

(declare-fun tp!806206 () Bool)

(assert (=> b!2523998 (= e!1598059 (and tp!806204 tp!806206))))

(declare-fun b!2523997 () Bool)

(declare-fun tp!806203 () Bool)

(assert (=> b!2523997 (= e!1598059 tp!806203)))

(declare-fun b!2523996 () Bool)

(declare-fun tp!806202 () Bool)

(declare-fun tp!806205 () Bool)

(assert (=> b!2523996 (= e!1598059 (and tp!806202 tp!806205))))

(declare-fun b!2523995 () Bool)

(assert (=> b!2523995 (= e!1598059 tp_is_empty!12883)))

(assert (=> b!2523551 (= tp!806160 e!1598059)))

(assert (= (and b!2523551 (is-ElementMatch!7514 (regOne!15540 r!27340))) b!2523995))

(assert (= (and b!2523551 (is-Concat!12210 (regOne!15540 r!27340))) b!2523996))

(assert (= (and b!2523551 (is-Star!7514 (regOne!15540 r!27340))) b!2523997))

(assert (= (and b!2523551 (is-Union!7514 (regOne!15540 r!27340))) b!2523998))

(declare-fun b!2524002 () Bool)

(declare-fun e!1598060 () Bool)

(declare-fun tp!806209 () Bool)

(declare-fun tp!806211 () Bool)

(assert (=> b!2524002 (= e!1598060 (and tp!806209 tp!806211))))

(declare-fun b!2524001 () Bool)

(declare-fun tp!806208 () Bool)

(assert (=> b!2524001 (= e!1598060 tp!806208)))

(declare-fun b!2524000 () Bool)

(declare-fun tp!806207 () Bool)

(declare-fun tp!806210 () Bool)

(assert (=> b!2524000 (= e!1598060 (and tp!806207 tp!806210))))

(declare-fun b!2523999 () Bool)

(assert (=> b!2523999 (= e!1598060 tp_is_empty!12883)))

(assert (=> b!2523551 (= tp!806158 e!1598060)))

(assert (= (and b!2523551 (is-ElementMatch!7514 (regTwo!15540 r!27340))) b!2523999))

(assert (= (and b!2523551 (is-Concat!12210 (regTwo!15540 r!27340))) b!2524000))

(assert (= (and b!2523551 (is-Star!7514 (regTwo!15540 r!27340))) b!2524001))

(assert (= (and b!2523551 (is-Union!7514 (regTwo!15540 r!27340))) b!2524002))

(declare-fun b!2524006 () Bool)

(declare-fun e!1598061 () Bool)

(declare-fun tp!806214 () Bool)

(declare-fun tp!806216 () Bool)

(assert (=> b!2524006 (= e!1598061 (and tp!806214 tp!806216))))

(declare-fun b!2524005 () Bool)

(declare-fun tp!806213 () Bool)

(assert (=> b!2524005 (= e!1598061 tp!806213)))

(declare-fun b!2524004 () Bool)

(declare-fun tp!806212 () Bool)

(declare-fun tp!806215 () Bool)

(assert (=> b!2524004 (= e!1598061 (and tp!806212 tp!806215))))

(declare-fun b!2524003 () Bool)

(assert (=> b!2524003 (= e!1598061 tp_is_empty!12883)))

(assert (=> b!2523564 (= tp!806155 e!1598061)))

(assert (= (and b!2523564 (is-ElementMatch!7514 (reg!7843 r!27340))) b!2524003))

(assert (= (and b!2523564 (is-Concat!12210 (reg!7843 r!27340))) b!2524004))

(assert (= (and b!2523564 (is-Star!7514 (reg!7843 r!27340))) b!2524005))

(assert (= (and b!2523564 (is-Union!7514 (reg!7843 r!27340))) b!2524006))

(push 1)

(assert (not b!2523879))

(assert (not b!2523723))

(assert (not d!718499))

(assert (not bm!157483))

(assert (not b!2523730))

(assert (not b!2523936))

(assert (not b!2523887))

(assert (not b!2523671))

(assert (not b!2523799))

(assert (not bm!157451))

(assert (not b!2523931))

(assert (not b!2524001))

(assert (not b!2523806))

(assert (not b!2523892))

(assert (not bm!157489))

(assert (not b!2523737))

(assert (not d!718509))

(assert (not b!2523899))

(assert (not bm!157498))

(assert (not b!2523717))

(assert (not d!718537))

(assert (not b!2523901))

(assert (not b!2523658))

(assert (not d!718543))

(assert (not b!2523994))

(assert (not bm!157474))

(assert (not b!2523992))

(assert (not d!718523))

(assert (not b!2523821))

(assert (not b!2523664))

(assert (not b!2523916))

(assert (not b!2523727))

(assert (not b!2523800))

(assert (not b!2523937))

(assert (not b!2523974))

(assert (not b!2523988))

(assert tp_is_empty!12883)

(assert (not b!2523796))

(assert (not b!2523876))

(assert (not d!718525))

(assert (not b!2523786))

(assert (not bm!157470))

(assert (not bm!157499))

(assert (not d!718533))

(assert (not b!2524006))

(assert (not b!2524002))

(assert (not bm!157482))

(assert (not b!2523945))

(assert (not b!2523889))

(assert (not bm!157492))

(assert (not b!2523935))

(assert (not b!2524005))

(assert (not b!2523919))

(assert (not b!2523922))

(assert (not b!2523993))

(assert (not b!2523997))

(assert (not b!2523798))

(assert (not b!2523921))

(assert (not b!2523729))

(assert (not b!2523989))

(assert (not d!718511))

(assert (not d!718505))

(assert (not b!2523708))

(assert (not b!2523943))

(assert (not b!2523819))

(assert (not bm!157471))

(assert (not b!2523923))

(assert (not b!2523929))

(assert (not b!2523996))

(assert (not d!718495))

(assert (not b!2523666))

(assert (not bm!157491))

(assert (not b!2523998))

(assert (not bm!157494))

(assert (not d!718501))

(assert (not d!718487))

(assert (not b!2523713))

(assert (not d!718491))

(assert (not b!2524000))

(assert (not b!2523657))

(assert (not b!2523881))

(assert (not b!2523715))

(assert (not b!2523808))

(assert (not b!2523952))

(assert (not d!718507))

(assert (not b!2523966))

(assert (not d!718541))

(assert (not b!2523891))

(assert (not b!2523874))

(assert (not b!2523725))

(assert (not bm!157484))

(assert (not bm!157473))

(assert (not b!2523739))

(assert (not d!718539))

(assert (not b!2523878))

(assert (not b!2523656))

(assert (not b!2523654))

(assert (not d!718529))

(assert (not b!2523933))

(assert (not b!2523716))

(assert (not b!2523990))

(assert (not b!2523731))

(assert (not bm!157495))

(assert (not d!718521))

(assert (not b!2523886))

(assert (not b!2523877))

(assert (not d!718535))

(assert (not d!718493))

(assert (not b!2523893))

(assert (not b!2524004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2524189 () Bool)

(declare-fun e!1598150 () Bool)

(declare-fun e!1598147 () Bool)

(assert (=> b!2524189 (= e!1598150 e!1598147)))

(declare-fun res!1066345 () Bool)

(assert (=> b!2524189 (=> res!1066345 e!1598147)))

(declare-fun call!157530 () Bool)

(assert (=> b!2524189 (= res!1066345 call!157530)))

(declare-fun b!2524190 () Bool)

(assert (=> b!2524190 (= e!1598147 (not (= (head!5763 (tail!4040 tl!4068)) (c!402670 (derivativeStep!2083 lt!900123 (head!5763 tl!4068))))))))

(declare-fun b!2524192 () Bool)

(declare-fun e!1598149 () Bool)

(assert (=> b!2524192 (= e!1598149 (= (head!5763 (tail!4040 tl!4068)) (c!402670 (derivativeStep!2083 lt!900123 (head!5763 tl!4068)))))))

(declare-fun bm!157525 () Bool)

(assert (=> bm!157525 (= call!157530 (isEmpty!16951 (tail!4040 tl!4068)))))

(declare-fun b!2524193 () Bool)

(declare-fun res!1066341 () Bool)

(assert (=> b!2524193 (=> res!1066341 e!1598147)))

(assert (=> b!2524193 (= res!1066341 (not (isEmpty!16951 (tail!4040 (tail!4040 tl!4068)))))))

(declare-fun b!2524194 () Bool)

(declare-fun res!1066344 () Bool)

(assert (=> b!2524194 (=> (not res!1066344) (not e!1598149))))

(assert (=> b!2524194 (= res!1066344 (isEmpty!16951 (tail!4040 (tail!4040 tl!4068))))))

(declare-fun b!2524195 () Bool)

(declare-fun e!1598153 () Bool)

(declare-fun e!1598151 () Bool)

(assert (=> b!2524195 (= e!1598153 e!1598151)))

(declare-fun c!402816 () Bool)

(assert (=> b!2524195 (= c!402816 (is-EmptyLang!7514 (derivativeStep!2083 lt!900123 (head!5763 tl!4068))))))

(declare-fun b!2524196 () Bool)

(declare-fun e!1598152 () Bool)

(assert (=> b!2524196 (= e!1598152 e!1598150)))

(declare-fun res!1066342 () Bool)

(assert (=> b!2524196 (=> (not res!1066342) (not e!1598150))))

(declare-fun lt!900235 () Bool)

(assert (=> b!2524196 (= res!1066342 (not lt!900235))))

(declare-fun b!2524197 () Bool)

(assert (=> b!2524197 (= e!1598151 (not lt!900235))))

(declare-fun b!2524198 () Bool)

(assert (=> b!2524198 (= e!1598153 (= lt!900235 call!157530))))

(declare-fun d!718575 () Bool)

(assert (=> d!718575 e!1598153))

(declare-fun c!402815 () Bool)

(assert (=> d!718575 (= c!402815 (is-EmptyExpr!7514 (derivativeStep!2083 lt!900123 (head!5763 tl!4068))))))

(declare-fun e!1598148 () Bool)

(assert (=> d!718575 (= lt!900235 e!1598148)))

(declare-fun c!402814 () Bool)

(assert (=> d!718575 (= c!402814 (isEmpty!16951 (tail!4040 tl!4068)))))

(assert (=> d!718575 (validRegex!3140 (derivativeStep!2083 lt!900123 (head!5763 tl!4068)))))

(assert (=> d!718575 (= (matchR!3501 (derivativeStep!2083 lt!900123 (head!5763 tl!4068)) (tail!4040 tl!4068)) lt!900235)))

(declare-fun b!2524191 () Bool)

(declare-fun res!1066347 () Bool)

(assert (=> b!2524191 (=> (not res!1066347) (not e!1598149))))

(assert (=> b!2524191 (= res!1066347 (not call!157530))))

(declare-fun b!2524199 () Bool)

(declare-fun res!1066346 () Bool)

(assert (=> b!2524199 (=> res!1066346 e!1598152)))

(assert (=> b!2524199 (= res!1066346 (not (is-ElementMatch!7514 (derivativeStep!2083 lt!900123 (head!5763 tl!4068)))))))

(assert (=> b!2524199 (= e!1598151 e!1598152)))

(declare-fun b!2524200 () Bool)

(assert (=> b!2524200 (= e!1598148 (nullable!2431 (derivativeStep!2083 lt!900123 (head!5763 tl!4068))))))

(declare-fun b!2524201 () Bool)

(declare-fun res!1066343 () Bool)

(assert (=> b!2524201 (=> res!1066343 e!1598152)))

(assert (=> b!2524201 (= res!1066343 e!1598149)))

(declare-fun res!1066348 () Bool)

(assert (=> b!2524201 (=> (not res!1066348) (not e!1598149))))

(assert (=> b!2524201 (= res!1066348 lt!900235)))

(declare-fun b!2524202 () Bool)

(assert (=> b!2524202 (= e!1598148 (matchR!3501 (derivativeStep!2083 (derivativeStep!2083 lt!900123 (head!5763 tl!4068)) (head!5763 (tail!4040 tl!4068))) (tail!4040 (tail!4040 tl!4068))))))

(assert (= (and d!718575 c!402814) b!2524200))

(assert (= (and d!718575 (not c!402814)) b!2524202))

(assert (= (and d!718575 c!402815) b!2524198))

(assert (= (and d!718575 (not c!402815)) b!2524195))

(assert (= (and b!2524195 c!402816) b!2524197))

(assert (= (and b!2524195 (not c!402816)) b!2524199))

(assert (= (and b!2524199 (not res!1066346)) b!2524201))

(assert (= (and b!2524201 res!1066348) b!2524191))

(assert (= (and b!2524191 res!1066347) b!2524194))

(assert (= (and b!2524194 res!1066344) b!2524192))

(assert (= (and b!2524201 (not res!1066343)) b!2524196))

(assert (= (and b!2524196 res!1066342) b!2524189))

(assert (= (and b!2524189 (not res!1066345)) b!2524193))

(assert (= (and b!2524193 (not res!1066341)) b!2524190))

(assert (= (or b!2524198 b!2524189 b!2524191) bm!157525))

(assert (=> b!2524192 m!2877611))

(declare-fun m!2877941 () Bool)

(assert (=> b!2524192 m!2877941))

(assert (=> b!2524202 m!2877611))

(assert (=> b!2524202 m!2877941))

(assert (=> b!2524202 m!2877609))

(assert (=> b!2524202 m!2877941))

(declare-fun m!2877943 () Bool)

(assert (=> b!2524202 m!2877943))

(assert (=> b!2524202 m!2877611))

(declare-fun m!2877945 () Bool)

(assert (=> b!2524202 m!2877945))

(assert (=> b!2524202 m!2877943))

(assert (=> b!2524202 m!2877945))

(declare-fun m!2877947 () Bool)

(assert (=> b!2524202 m!2877947))

(assert (=> d!718575 m!2877611))

(assert (=> d!718575 m!2877621))

(assert (=> d!718575 m!2877609))

(declare-fun m!2877949 () Bool)

(assert (=> d!718575 m!2877949))

(assert (=> b!2524200 m!2877609))

(declare-fun m!2877951 () Bool)

(assert (=> b!2524200 m!2877951))

(assert (=> b!2524190 m!2877611))

(assert (=> b!2524190 m!2877941))

(assert (=> bm!157525 m!2877611))

(assert (=> bm!157525 m!2877621))

(assert (=> b!2524193 m!2877611))

(assert (=> b!2524193 m!2877945))

(assert (=> b!2524193 m!2877945))

(declare-fun m!2877953 () Bool)

(assert (=> b!2524193 m!2877953))

(assert (=> b!2524194 m!2877611))

(assert (=> b!2524194 m!2877945))

(assert (=> b!2524194 m!2877945))

(assert (=> b!2524194 m!2877953))

(assert (=> b!2523725 d!718575))

(declare-fun d!718577 () Bool)

(declare-fun lt!900236 () Regex!7514)

(assert (=> d!718577 (validRegex!3140 lt!900236)))

(declare-fun e!1598155 () Regex!7514)

(assert (=> d!718577 (= lt!900236 e!1598155)))

(declare-fun c!402817 () Bool)

(assert (=> d!718577 (= c!402817 (or (is-EmptyExpr!7514 lt!900123) (is-EmptyLang!7514 lt!900123)))))

(assert (=> d!718577 (validRegex!3140 lt!900123)))

(assert (=> d!718577 (= (derivativeStep!2083 lt!900123 (head!5763 tl!4068)) lt!900236)))

(declare-fun b!2524203 () Bool)

(declare-fun e!1598158 () Regex!7514)

(assert (=> b!2524203 (= e!1598158 (ite (= (head!5763 tl!4068) (c!402670 lt!900123)) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524204 () Bool)

(declare-fun e!1598154 () Regex!7514)

(declare-fun call!157532 () Regex!7514)

(assert (=> b!2524204 (= e!1598154 (Concat!12210 call!157532 lt!900123))))

(declare-fun b!2524205 () Bool)

(declare-fun e!1598156 () Regex!7514)

(declare-fun call!157534 () Regex!7514)

(assert (=> b!2524205 (= e!1598156 (Union!7514 (Concat!12210 call!157534 (regTwo!15540 lt!900123)) EmptyLang!7514))))

(declare-fun b!2524206 () Bool)

(declare-fun e!1598157 () Regex!7514)

(declare-fun call!157533 () Regex!7514)

(declare-fun call!157531 () Regex!7514)

(assert (=> b!2524206 (= e!1598157 (Union!7514 call!157533 call!157531))))

(declare-fun b!2524207 () Bool)

(assert (=> b!2524207 (= e!1598155 EmptyLang!7514)))

(declare-fun b!2524208 () Bool)

(assert (=> b!2524208 (= e!1598157 e!1598154)))

(declare-fun c!402820 () Bool)

(assert (=> b!2524208 (= c!402820 (is-Star!7514 lt!900123))))

(declare-fun bm!157526 () Bool)

(assert (=> bm!157526 (= call!157534 call!157532)))

(declare-fun b!2524209 () Bool)

(declare-fun c!402821 () Bool)

(assert (=> b!2524209 (= c!402821 (nullable!2431 (regOne!15540 lt!900123)))))

(assert (=> b!2524209 (= e!1598154 e!1598156)))

(declare-fun b!2524210 () Bool)

(assert (=> b!2524210 (= e!1598156 (Union!7514 (Concat!12210 call!157534 (regTwo!15540 lt!900123)) call!157531))))

(declare-fun b!2524211 () Bool)

(assert (=> b!2524211 (= e!1598155 e!1598158)))

(declare-fun c!402818 () Bool)

(assert (=> b!2524211 (= c!402818 (is-ElementMatch!7514 lt!900123))))

(declare-fun bm!157527 () Bool)

(declare-fun c!402819 () Bool)

(assert (=> bm!157527 (= call!157533 (derivativeStep!2083 (ite c!402819 (regOne!15541 lt!900123) (ite c!402820 (reg!7843 lt!900123) (regOne!15540 lt!900123))) (head!5763 tl!4068)))))

(declare-fun bm!157528 () Bool)

(assert (=> bm!157528 (= call!157531 (derivativeStep!2083 (ite c!402819 (regTwo!15541 lt!900123) (regTwo!15540 lt!900123)) (head!5763 tl!4068)))))

(declare-fun bm!157529 () Bool)

(assert (=> bm!157529 (= call!157532 call!157533)))

(declare-fun b!2524212 () Bool)

(assert (=> b!2524212 (= c!402819 (is-Union!7514 lt!900123))))

(assert (=> b!2524212 (= e!1598158 e!1598157)))

(assert (= (and d!718577 c!402817) b!2524207))

(assert (= (and d!718577 (not c!402817)) b!2524211))

(assert (= (and b!2524211 c!402818) b!2524203))

(assert (= (and b!2524211 (not c!402818)) b!2524212))

(assert (= (and b!2524212 c!402819) b!2524206))

(assert (= (and b!2524212 (not c!402819)) b!2524208))

(assert (= (and b!2524208 c!402820) b!2524204))

(assert (= (and b!2524208 (not c!402820)) b!2524209))

(assert (= (and b!2524209 c!402821) b!2524210))

(assert (= (and b!2524209 (not c!402821)) b!2524205))

(assert (= (or b!2524210 b!2524205) bm!157526))

(assert (= (or b!2524204 bm!157526) bm!157529))

(assert (= (or b!2524206 b!2524210) bm!157528))

(assert (= (or b!2524206 bm!157529) bm!157527))

(declare-fun m!2877955 () Bool)

(assert (=> d!718577 m!2877955))

(assert (=> d!718577 m!2877617))

(declare-fun m!2877957 () Bool)

(assert (=> b!2524209 m!2877957))

(assert (=> bm!157527 m!2877607))

(declare-fun m!2877959 () Bool)

(assert (=> bm!157527 m!2877959))

(assert (=> bm!157528 m!2877607))

(declare-fun m!2877961 () Bool)

(assert (=> bm!157528 m!2877961))

(assert (=> b!2523725 d!718577))

(declare-fun d!718579 () Bool)

(assert (=> d!718579 (= (head!5763 tl!4068) (h!34899 tl!4068))))

(assert (=> b!2523725 d!718579))

(declare-fun d!718581 () Bool)

(assert (=> d!718581 (= (tail!4040 tl!4068) (t!211278 tl!4068))))

(assert (=> b!2523725 d!718581))

(declare-fun d!718583 () Bool)

(assert (=> d!718583 (= (head!5763 (_1!17307 lt!900125)) (h!34899 (_1!17307 lt!900125)))))

(assert (=> b!2523729 d!718583))

(declare-fun b!2524213 () Bool)

(declare-fun e!1598162 () Bool)

(declare-fun e!1598159 () Bool)

(assert (=> b!2524213 (= e!1598162 e!1598159)))

(declare-fun res!1066353 () Bool)

(assert (=> b!2524213 (=> res!1066353 e!1598159)))

(declare-fun call!157535 () Bool)

(assert (=> b!2524213 (= res!1066353 call!157535)))

(declare-fun b!2524214 () Bool)

(assert (=> b!2524214 (= e!1598159 (not (= (head!5763 (tail!4040 tl!4068)) (c!402670 (derivativeStep!2083 lt!900121 (head!5763 tl!4068))))))))

(declare-fun b!2524216 () Bool)

(declare-fun e!1598161 () Bool)

(assert (=> b!2524216 (= e!1598161 (= (head!5763 (tail!4040 tl!4068)) (c!402670 (derivativeStep!2083 lt!900121 (head!5763 tl!4068)))))))

(declare-fun bm!157530 () Bool)

(assert (=> bm!157530 (= call!157535 (isEmpty!16951 (tail!4040 tl!4068)))))

(declare-fun b!2524217 () Bool)

(declare-fun res!1066349 () Bool)

(assert (=> b!2524217 (=> res!1066349 e!1598159)))

(assert (=> b!2524217 (= res!1066349 (not (isEmpty!16951 (tail!4040 (tail!4040 tl!4068)))))))

(declare-fun b!2524218 () Bool)

(declare-fun res!1066352 () Bool)

(assert (=> b!2524218 (=> (not res!1066352) (not e!1598161))))

(assert (=> b!2524218 (= res!1066352 (isEmpty!16951 (tail!4040 (tail!4040 tl!4068))))))

(declare-fun b!2524219 () Bool)

(declare-fun e!1598165 () Bool)

(declare-fun e!1598163 () Bool)

(assert (=> b!2524219 (= e!1598165 e!1598163)))

(declare-fun c!402824 () Bool)

(assert (=> b!2524219 (= c!402824 (is-EmptyLang!7514 (derivativeStep!2083 lt!900121 (head!5763 tl!4068))))))

(declare-fun b!2524220 () Bool)

(declare-fun e!1598164 () Bool)

(assert (=> b!2524220 (= e!1598164 e!1598162)))

(declare-fun res!1066350 () Bool)

(assert (=> b!2524220 (=> (not res!1066350) (not e!1598162))))

(declare-fun lt!900237 () Bool)

(assert (=> b!2524220 (= res!1066350 (not lt!900237))))

(declare-fun b!2524221 () Bool)

(assert (=> b!2524221 (= e!1598163 (not lt!900237))))

(declare-fun b!2524222 () Bool)

(assert (=> b!2524222 (= e!1598165 (= lt!900237 call!157535))))

(declare-fun d!718585 () Bool)

(assert (=> d!718585 e!1598165))

(declare-fun c!402823 () Bool)

(assert (=> d!718585 (= c!402823 (is-EmptyExpr!7514 (derivativeStep!2083 lt!900121 (head!5763 tl!4068))))))

(declare-fun e!1598160 () Bool)

(assert (=> d!718585 (= lt!900237 e!1598160)))

(declare-fun c!402822 () Bool)

(assert (=> d!718585 (= c!402822 (isEmpty!16951 (tail!4040 tl!4068)))))

(assert (=> d!718585 (validRegex!3140 (derivativeStep!2083 lt!900121 (head!5763 tl!4068)))))

(assert (=> d!718585 (= (matchR!3501 (derivativeStep!2083 lt!900121 (head!5763 tl!4068)) (tail!4040 tl!4068)) lt!900237)))

(declare-fun b!2524215 () Bool)

(declare-fun res!1066355 () Bool)

(assert (=> b!2524215 (=> (not res!1066355) (not e!1598161))))

(assert (=> b!2524215 (= res!1066355 (not call!157535))))

(declare-fun b!2524223 () Bool)

(declare-fun res!1066354 () Bool)

(assert (=> b!2524223 (=> res!1066354 e!1598164)))

(assert (=> b!2524223 (= res!1066354 (not (is-ElementMatch!7514 (derivativeStep!2083 lt!900121 (head!5763 tl!4068)))))))

(assert (=> b!2524223 (= e!1598163 e!1598164)))

(declare-fun b!2524224 () Bool)

(assert (=> b!2524224 (= e!1598160 (nullable!2431 (derivativeStep!2083 lt!900121 (head!5763 tl!4068))))))

(declare-fun b!2524225 () Bool)

(declare-fun res!1066351 () Bool)

(assert (=> b!2524225 (=> res!1066351 e!1598164)))

(assert (=> b!2524225 (= res!1066351 e!1598161)))

(declare-fun res!1066356 () Bool)

(assert (=> b!2524225 (=> (not res!1066356) (not e!1598161))))

(assert (=> b!2524225 (= res!1066356 lt!900237)))

(declare-fun b!2524226 () Bool)

(assert (=> b!2524226 (= e!1598160 (matchR!3501 (derivativeStep!2083 (derivativeStep!2083 lt!900121 (head!5763 tl!4068)) (head!5763 (tail!4040 tl!4068))) (tail!4040 (tail!4040 tl!4068))))))

(assert (= (and d!718585 c!402822) b!2524224))

(assert (= (and d!718585 (not c!402822)) b!2524226))

(assert (= (and d!718585 c!402823) b!2524222))

(assert (= (and d!718585 (not c!402823)) b!2524219))

(assert (= (and b!2524219 c!402824) b!2524221))

(assert (= (and b!2524219 (not c!402824)) b!2524223))

(assert (= (and b!2524223 (not res!1066354)) b!2524225))

(assert (= (and b!2524225 res!1066356) b!2524215))

(assert (= (and b!2524215 res!1066355) b!2524218))

(assert (= (and b!2524218 res!1066352) b!2524216))

(assert (= (and b!2524225 (not res!1066351)) b!2524220))

(assert (= (and b!2524220 res!1066350) b!2524213))

(assert (= (and b!2524213 (not res!1066353)) b!2524217))

(assert (= (and b!2524217 (not res!1066349)) b!2524214))

(assert (= (or b!2524222 b!2524213 b!2524215) bm!157530))

(assert (=> b!2524216 m!2877611))

(assert (=> b!2524216 m!2877941))

(assert (=> b!2524226 m!2877611))

(assert (=> b!2524226 m!2877941))

(assert (=> b!2524226 m!2877745))

(assert (=> b!2524226 m!2877941))

(declare-fun m!2877963 () Bool)

(assert (=> b!2524226 m!2877963))

(assert (=> b!2524226 m!2877611))

(assert (=> b!2524226 m!2877945))

(assert (=> b!2524226 m!2877963))

(assert (=> b!2524226 m!2877945))

(declare-fun m!2877965 () Bool)

(assert (=> b!2524226 m!2877965))

(assert (=> d!718585 m!2877611))

(assert (=> d!718585 m!2877621))

(assert (=> d!718585 m!2877745))

(declare-fun m!2877967 () Bool)

(assert (=> d!718585 m!2877967))

(assert (=> b!2524224 m!2877745))

(declare-fun m!2877969 () Bool)

(assert (=> b!2524224 m!2877969))

(assert (=> b!2524214 m!2877611))

(assert (=> b!2524214 m!2877941))

(assert (=> bm!157530 m!2877611))

(assert (=> bm!157530 m!2877621))

(assert (=> b!2524217 m!2877611))

(assert (=> b!2524217 m!2877945))

(assert (=> b!2524217 m!2877945))

(assert (=> b!2524217 m!2877953))

(assert (=> b!2524218 m!2877611))

(assert (=> b!2524218 m!2877945))

(assert (=> b!2524218 m!2877945))

(assert (=> b!2524218 m!2877953))

(assert (=> b!2523901 d!718585))

(declare-fun d!718587 () Bool)

(declare-fun lt!900238 () Regex!7514)

(assert (=> d!718587 (validRegex!3140 lt!900238)))

(declare-fun e!1598167 () Regex!7514)

(assert (=> d!718587 (= lt!900238 e!1598167)))

(declare-fun c!402825 () Bool)

(assert (=> d!718587 (= c!402825 (or (is-EmptyExpr!7514 lt!900121) (is-EmptyLang!7514 lt!900121)))))

(assert (=> d!718587 (validRegex!3140 lt!900121)))

(assert (=> d!718587 (= (derivativeStep!2083 lt!900121 (head!5763 tl!4068)) lt!900238)))

(declare-fun b!2524227 () Bool)

(declare-fun e!1598170 () Regex!7514)

(assert (=> b!2524227 (= e!1598170 (ite (= (head!5763 tl!4068) (c!402670 lt!900121)) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524228 () Bool)

(declare-fun e!1598166 () Regex!7514)

(declare-fun call!157537 () Regex!7514)

(assert (=> b!2524228 (= e!1598166 (Concat!12210 call!157537 lt!900121))))

(declare-fun b!2524229 () Bool)

(declare-fun e!1598168 () Regex!7514)

(declare-fun call!157539 () Regex!7514)

(assert (=> b!2524229 (= e!1598168 (Union!7514 (Concat!12210 call!157539 (regTwo!15540 lt!900121)) EmptyLang!7514))))

(declare-fun b!2524230 () Bool)

(declare-fun e!1598169 () Regex!7514)

(declare-fun call!157538 () Regex!7514)

(declare-fun call!157536 () Regex!7514)

(assert (=> b!2524230 (= e!1598169 (Union!7514 call!157538 call!157536))))

(declare-fun b!2524231 () Bool)

(assert (=> b!2524231 (= e!1598167 EmptyLang!7514)))

(declare-fun b!2524232 () Bool)

(assert (=> b!2524232 (= e!1598169 e!1598166)))

(declare-fun c!402828 () Bool)

(assert (=> b!2524232 (= c!402828 (is-Star!7514 lt!900121))))

(declare-fun bm!157531 () Bool)

(assert (=> bm!157531 (= call!157539 call!157537)))

(declare-fun b!2524233 () Bool)

(declare-fun c!402829 () Bool)

(assert (=> b!2524233 (= c!402829 (nullable!2431 (regOne!15540 lt!900121)))))

(assert (=> b!2524233 (= e!1598166 e!1598168)))

(declare-fun b!2524234 () Bool)

(assert (=> b!2524234 (= e!1598168 (Union!7514 (Concat!12210 call!157539 (regTwo!15540 lt!900121)) call!157536))))

(declare-fun b!2524235 () Bool)

(assert (=> b!2524235 (= e!1598167 e!1598170)))

(declare-fun c!402826 () Bool)

(assert (=> b!2524235 (= c!402826 (is-ElementMatch!7514 lt!900121))))

(declare-fun c!402827 () Bool)

(declare-fun bm!157532 () Bool)

(assert (=> bm!157532 (= call!157538 (derivativeStep!2083 (ite c!402827 (regOne!15541 lt!900121) (ite c!402828 (reg!7843 lt!900121) (regOne!15540 lt!900121))) (head!5763 tl!4068)))))

(declare-fun bm!157533 () Bool)

(assert (=> bm!157533 (= call!157536 (derivativeStep!2083 (ite c!402827 (regTwo!15541 lt!900121) (regTwo!15540 lt!900121)) (head!5763 tl!4068)))))

(declare-fun bm!157534 () Bool)

(assert (=> bm!157534 (= call!157537 call!157538)))

(declare-fun b!2524236 () Bool)

(assert (=> b!2524236 (= c!402827 (is-Union!7514 lt!900121))))

(assert (=> b!2524236 (= e!1598170 e!1598169)))

(assert (= (and d!718587 c!402825) b!2524231))

(assert (= (and d!718587 (not c!402825)) b!2524235))

(assert (= (and b!2524235 c!402826) b!2524227))

(assert (= (and b!2524235 (not c!402826)) b!2524236))

(assert (= (and b!2524236 c!402827) b!2524230))

(assert (= (and b!2524236 (not c!402827)) b!2524232))

(assert (= (and b!2524232 c!402828) b!2524228))

(assert (= (and b!2524232 (not c!402828)) b!2524233))

(assert (= (and b!2524233 c!402829) b!2524234))

(assert (= (and b!2524233 (not c!402829)) b!2524229))

(assert (= (or b!2524234 b!2524229) bm!157531))

(assert (= (or b!2524228 bm!157531) bm!157534))

(assert (= (or b!2524230 b!2524234) bm!157533))

(assert (= (or b!2524230 bm!157534) bm!157532))

(declare-fun m!2877971 () Bool)

(assert (=> d!718587 m!2877971))

(assert (=> d!718587 m!2877739))

(declare-fun m!2877973 () Bool)

(assert (=> b!2524233 m!2877973))

(assert (=> bm!157532 m!2877607))

(declare-fun m!2877975 () Bool)

(assert (=> bm!157532 m!2877975))

(assert (=> bm!157533 m!2877607))

(declare-fun m!2877977 () Bool)

(assert (=> bm!157533 m!2877977))

(assert (=> b!2523901 d!718587))

(assert (=> b!2523901 d!718579))

(assert (=> b!2523901 d!718581))

(declare-fun bm!157535 () Bool)

(declare-fun call!157541 () Bool)

(declare-fun call!157540 () Bool)

(assert (=> bm!157535 (= call!157541 call!157540)))

(declare-fun b!2524237 () Bool)

(declare-fun e!1598177 () Bool)

(declare-fun e!1598174 () Bool)

(assert (=> b!2524237 (= e!1598177 e!1598174)))

(declare-fun res!1066357 () Bool)

(assert (=> b!2524237 (= res!1066357 (not (nullable!2431 (reg!7843 lt!900208))))))

(assert (=> b!2524237 (=> (not res!1066357) (not e!1598174))))

(declare-fun b!2524238 () Bool)

(declare-fun e!1598172 () Bool)

(assert (=> b!2524238 (= e!1598172 e!1598177)))

(declare-fun c!402831 () Bool)

(assert (=> b!2524238 (= c!402831 (is-Star!7514 lt!900208))))

(declare-fun d!718589 () Bool)

(declare-fun res!1066361 () Bool)

(assert (=> d!718589 (=> res!1066361 e!1598172)))

(assert (=> d!718589 (= res!1066361 (is-ElementMatch!7514 lt!900208))))

(assert (=> d!718589 (= (validRegex!3140 lt!900208) e!1598172)))

(declare-fun bm!157536 () Bool)

(declare-fun c!402830 () Bool)

(assert (=> bm!157536 (= call!157540 (validRegex!3140 (ite c!402831 (reg!7843 lt!900208) (ite c!402830 (regTwo!15541 lt!900208) (regOne!15540 lt!900208)))))))

(declare-fun b!2524239 () Bool)

(declare-fun res!1066360 () Bool)

(declare-fun e!1598176 () Bool)

(assert (=> b!2524239 (=> res!1066360 e!1598176)))

(assert (=> b!2524239 (= res!1066360 (not (is-Concat!12210 lt!900208)))))

(declare-fun e!1598171 () Bool)

(assert (=> b!2524239 (= e!1598171 e!1598176)))

(declare-fun b!2524240 () Bool)

(declare-fun e!1598173 () Bool)

(declare-fun call!157542 () Bool)

(assert (=> b!2524240 (= e!1598173 call!157542)))

(declare-fun b!2524241 () Bool)

(declare-fun res!1066358 () Bool)

(declare-fun e!1598175 () Bool)

(assert (=> b!2524241 (=> (not res!1066358) (not e!1598175))))

(assert (=> b!2524241 (= res!1066358 call!157542)))

(assert (=> b!2524241 (= e!1598171 e!1598175)))

(declare-fun b!2524242 () Bool)

(assert (=> b!2524242 (= e!1598176 e!1598173)))

(declare-fun res!1066359 () Bool)

(assert (=> b!2524242 (=> (not res!1066359) (not e!1598173))))

(assert (=> b!2524242 (= res!1066359 call!157541)))

(declare-fun bm!157537 () Bool)

(assert (=> bm!157537 (= call!157542 (validRegex!3140 (ite c!402830 (regOne!15541 lt!900208) (regTwo!15540 lt!900208))))))

(declare-fun b!2524243 () Bool)

(assert (=> b!2524243 (= e!1598177 e!1598171)))

(assert (=> b!2524243 (= c!402830 (is-Union!7514 lt!900208))))

(declare-fun b!2524244 () Bool)

(assert (=> b!2524244 (= e!1598174 call!157540)))

(declare-fun b!2524245 () Bool)

(assert (=> b!2524245 (= e!1598175 call!157541)))

(assert (= (and d!718589 (not res!1066361)) b!2524238))

(assert (= (and b!2524238 c!402831) b!2524237))

(assert (= (and b!2524238 (not c!402831)) b!2524243))

(assert (= (and b!2524237 res!1066357) b!2524244))

(assert (= (and b!2524243 c!402830) b!2524241))

(assert (= (and b!2524243 (not c!402830)) b!2524239))

(assert (= (and b!2524241 res!1066358) b!2524245))

(assert (= (and b!2524239 (not res!1066360)) b!2524242))

(assert (= (and b!2524242 res!1066359) b!2524240))

(assert (= (or b!2524241 b!2524240) bm!157537))

(assert (= (or b!2524245 b!2524242) bm!157535))

(assert (= (or b!2524244 bm!157535) bm!157536))

(declare-fun m!2877979 () Bool)

(assert (=> b!2524237 m!2877979))

(declare-fun m!2877981 () Bool)

(assert (=> bm!157536 m!2877981))

(declare-fun m!2877983 () Bool)

(assert (=> bm!157537 m!2877983))

(assert (=> d!718541 d!718589))

(declare-fun bm!157538 () Bool)

(declare-fun call!157544 () Bool)

(declare-fun call!157543 () Bool)

(assert (=> bm!157538 (= call!157544 call!157543)))

(declare-fun b!2524246 () Bool)

(declare-fun e!1598184 () Bool)

(declare-fun e!1598181 () Bool)

(assert (=> b!2524246 (= e!1598184 e!1598181)))

(declare-fun res!1066362 () Bool)

(assert (=> b!2524246 (= res!1066362 (not (nullable!2431 (reg!7843 (regOne!15540 r!27340)))))))

(assert (=> b!2524246 (=> (not res!1066362) (not e!1598181))))

(declare-fun b!2524247 () Bool)

(declare-fun e!1598179 () Bool)

(assert (=> b!2524247 (= e!1598179 e!1598184)))

(declare-fun c!402833 () Bool)

(assert (=> b!2524247 (= c!402833 (is-Star!7514 (regOne!15540 r!27340)))))

(declare-fun d!718591 () Bool)

(declare-fun res!1066366 () Bool)

(assert (=> d!718591 (=> res!1066366 e!1598179)))

(assert (=> d!718591 (= res!1066366 (is-ElementMatch!7514 (regOne!15540 r!27340)))))

(assert (=> d!718591 (= (validRegex!3140 (regOne!15540 r!27340)) e!1598179)))

(declare-fun bm!157539 () Bool)

(declare-fun c!402832 () Bool)

(assert (=> bm!157539 (= call!157543 (validRegex!3140 (ite c!402833 (reg!7843 (regOne!15540 r!27340)) (ite c!402832 (regTwo!15541 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))))))

(declare-fun b!2524248 () Bool)

(declare-fun res!1066365 () Bool)

(declare-fun e!1598183 () Bool)

(assert (=> b!2524248 (=> res!1066365 e!1598183)))

(assert (=> b!2524248 (= res!1066365 (not (is-Concat!12210 (regOne!15540 r!27340))))))

(declare-fun e!1598178 () Bool)

(assert (=> b!2524248 (= e!1598178 e!1598183)))

(declare-fun b!2524249 () Bool)

(declare-fun e!1598180 () Bool)

(declare-fun call!157545 () Bool)

(assert (=> b!2524249 (= e!1598180 call!157545)))

(declare-fun b!2524250 () Bool)

(declare-fun res!1066363 () Bool)

(declare-fun e!1598182 () Bool)

(assert (=> b!2524250 (=> (not res!1066363) (not e!1598182))))

(assert (=> b!2524250 (= res!1066363 call!157545)))

(assert (=> b!2524250 (= e!1598178 e!1598182)))

(declare-fun b!2524251 () Bool)

(assert (=> b!2524251 (= e!1598183 e!1598180)))

(declare-fun res!1066364 () Bool)

(assert (=> b!2524251 (=> (not res!1066364) (not e!1598180))))

(assert (=> b!2524251 (= res!1066364 call!157544)))

(declare-fun bm!157540 () Bool)

(assert (=> bm!157540 (= call!157545 (validRegex!3140 (ite c!402832 (regOne!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))))))

(declare-fun b!2524252 () Bool)

(assert (=> b!2524252 (= e!1598184 e!1598178)))

(assert (=> b!2524252 (= c!402832 (is-Union!7514 (regOne!15540 r!27340)))))

(declare-fun b!2524253 () Bool)

(assert (=> b!2524253 (= e!1598181 call!157543)))

(declare-fun b!2524254 () Bool)

(assert (=> b!2524254 (= e!1598182 call!157544)))

(assert (= (and d!718591 (not res!1066366)) b!2524247))

(assert (= (and b!2524247 c!402833) b!2524246))

(assert (= (and b!2524247 (not c!402833)) b!2524252))

(assert (= (and b!2524246 res!1066362) b!2524253))

(assert (= (and b!2524252 c!402832) b!2524250))

(assert (= (and b!2524252 (not c!402832)) b!2524248))

(assert (= (and b!2524250 res!1066363) b!2524254))

(assert (= (and b!2524248 (not res!1066365)) b!2524251))

(assert (= (and b!2524251 res!1066364) b!2524249))

(assert (= (or b!2524250 b!2524249) bm!157540))

(assert (= (or b!2524254 b!2524251) bm!157538))

(assert (= (or b!2524253 bm!157538) bm!157539))

(declare-fun m!2877985 () Bool)

(assert (=> b!2524246 m!2877985))

(declare-fun m!2877987 () Bool)

(assert (=> bm!157539 m!2877987))

(declare-fun m!2877989 () Bool)

(assert (=> bm!157540 m!2877989))

(assert (=> d!718541 d!718591))

(declare-fun d!718593 () Bool)

(assert (=> d!718593 (= (isEmpty!16951 (tail!4040 (_1!17307 lt!900125))) (is-Nil!29479 (tail!4040 (_1!17307 lt!900125))))))

(assert (=> b!2523730 d!718593))

(declare-fun d!718595 () Bool)

(assert (=> d!718595 (= (tail!4040 (_1!17307 lt!900125)) (t!211278 (_1!17307 lt!900125)))))

(assert (=> b!2523730 d!718595))

(declare-fun d!718597 () Bool)

(assert (=> d!718597 (= (nullable!2431 lt!900121) (nullableFct!673 lt!900121))))

(declare-fun bs!469052 () Bool)

(assert (= bs!469052 d!718597))

(declare-fun m!2877991 () Bool)

(assert (=> bs!469052 m!2877991))

(assert (=> b!2523899 d!718597))

(declare-fun b!2524269 () Bool)

(declare-fun e!1598199 () Bool)

(declare-fun e!1598197 () Bool)

(assert (=> b!2524269 (= e!1598199 e!1598197)))

(declare-fun c!402836 () Bool)

(assert (=> b!2524269 (= c!402836 (is-Union!7514 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)))))

(declare-fun b!2524270 () Bool)

(declare-fun e!1598201 () Bool)

(declare-fun call!157551 () Bool)

(assert (=> b!2524270 (= e!1598201 call!157551)))

(declare-fun b!2524271 () Bool)

(declare-fun e!1598200 () Bool)

(assert (=> b!2524271 (= e!1598197 e!1598200)))

(declare-fun res!1066380 () Bool)

(assert (=> b!2524271 (= res!1066380 call!157551)))

(assert (=> b!2524271 (=> (not res!1066380) (not e!1598200))))

(declare-fun b!2524272 () Bool)

(declare-fun e!1598202 () Bool)

(assert (=> b!2524272 (= e!1598202 e!1598199)))

(declare-fun res!1066378 () Bool)

(assert (=> b!2524272 (=> res!1066378 e!1598199)))

(assert (=> b!2524272 (= res!1066378 (is-Star!7514 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)))))

(declare-fun b!2524273 () Bool)

(declare-fun call!157550 () Bool)

(assert (=> b!2524273 (= e!1598200 call!157550)))

(declare-fun b!2524274 () Bool)

(assert (=> b!2524274 (= e!1598197 e!1598201)))

(declare-fun res!1066381 () Bool)

(assert (=> b!2524274 (= res!1066381 call!157550)))

(assert (=> b!2524274 (=> res!1066381 e!1598201)))

(declare-fun b!2524275 () Bool)

(declare-fun e!1598198 () Bool)

(assert (=> b!2524275 (= e!1598198 e!1598202)))

(declare-fun res!1066377 () Bool)

(assert (=> b!2524275 (=> (not res!1066377) (not e!1598202))))

(assert (=> b!2524275 (= res!1066377 (and (not (is-EmptyLang!7514 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068))) (not (is-ElementMatch!7514 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)))))))

(declare-fun d!718599 () Bool)

(declare-fun res!1066379 () Bool)

(assert (=> d!718599 (=> res!1066379 e!1598198)))

(assert (=> d!718599 (= res!1066379 (is-EmptyExpr!7514 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)))))

(assert (=> d!718599 (= (nullableFct!673 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)) e!1598198)))

(declare-fun bm!157545 () Bool)

(assert (=> bm!157545 (= call!157550 (nullable!2431 (ite c!402836 (regOne!15541 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)) (regTwo!15540 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)))))))

(declare-fun bm!157546 () Bool)

(assert (=> bm!157546 (= call!157551 (nullable!2431 (ite c!402836 (regTwo!15541 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)) (regOne!15540 (derivative!209 (derivativeStep!2083 r!27340 c!14016) tl!4068)))))))

(assert (= (and d!718599 (not res!1066379)) b!2524275))

(assert (= (and b!2524275 res!1066377) b!2524272))

(assert (= (and b!2524272 (not res!1066378)) b!2524269))

(assert (= (and b!2524269 c!402836) b!2524274))

(assert (= (and b!2524269 (not c!402836)) b!2524271))

(assert (= (and b!2524274 (not res!1066381)) b!2524270))

(assert (= (and b!2524271 res!1066380) b!2524273))

(assert (= (or b!2524270 b!2524271) bm!157546))

(assert (= (or b!2524274 b!2524273) bm!157545))

(declare-fun m!2877993 () Bool)

(assert (=> bm!157545 m!2877993))

(declare-fun m!2877995 () Bool)

(assert (=> bm!157546 m!2877995))

(assert (=> d!718491 d!718599))

(declare-fun d!718601 () Bool)

(assert (=> d!718601 (= (nullable!2431 (derivative!209 lt!900126 tl!4068)) (nullableFct!673 (derivative!209 lt!900126 tl!4068)))))

(declare-fun bs!469053 () Bool)

(assert (= bs!469053 d!718601))

(assert (=> bs!469053 m!2877511))

(declare-fun m!2877997 () Bool)

(assert (=> bs!469053 m!2877997))

(assert (=> b!2523943 d!718601))

(declare-fun b!2524276 () Bool)

(declare-fun e!1598206 () Bool)

(declare-fun e!1598203 () Bool)

(assert (=> b!2524276 (= e!1598206 e!1598203)))

(declare-fun res!1066386 () Bool)

(assert (=> b!2524276 (=> res!1066386 e!1598203)))

(declare-fun call!157552 () Bool)

(assert (=> b!2524276 (= res!1066386 call!157552)))

(declare-fun b!2524277 () Bool)

(assert (=> b!2524277 (= e!1598203 (not (= (head!5763 tl!4068) (c!402670 (regTwo!15540 r!27340)))))))

(declare-fun b!2524279 () Bool)

(declare-fun e!1598205 () Bool)

(assert (=> b!2524279 (= e!1598205 (= (head!5763 tl!4068) (c!402670 (regTwo!15540 r!27340))))))

(declare-fun bm!157547 () Bool)

(assert (=> bm!157547 (= call!157552 (isEmpty!16951 tl!4068))))

(declare-fun b!2524280 () Bool)

(declare-fun res!1066382 () Bool)

(assert (=> b!2524280 (=> res!1066382 e!1598203)))

(assert (=> b!2524280 (= res!1066382 (not (isEmpty!16951 (tail!4040 tl!4068))))))

(declare-fun b!2524281 () Bool)

(declare-fun res!1066385 () Bool)

(assert (=> b!2524281 (=> (not res!1066385) (not e!1598205))))

(assert (=> b!2524281 (= res!1066385 (isEmpty!16951 (tail!4040 tl!4068)))))

(declare-fun b!2524282 () Bool)

(declare-fun e!1598209 () Bool)

(declare-fun e!1598207 () Bool)

(assert (=> b!2524282 (= e!1598209 e!1598207)))

(declare-fun c!402839 () Bool)

(assert (=> b!2524282 (= c!402839 (is-EmptyLang!7514 (regTwo!15540 r!27340)))))

(declare-fun b!2524283 () Bool)

(declare-fun e!1598208 () Bool)

(assert (=> b!2524283 (= e!1598208 e!1598206)))

(declare-fun res!1066383 () Bool)

(assert (=> b!2524283 (=> (not res!1066383) (not e!1598206))))

(declare-fun lt!900239 () Bool)

(assert (=> b!2524283 (= res!1066383 (not lt!900239))))

(declare-fun b!2524284 () Bool)

(assert (=> b!2524284 (= e!1598207 (not lt!900239))))

(declare-fun b!2524285 () Bool)

(assert (=> b!2524285 (= e!1598209 (= lt!900239 call!157552))))

(declare-fun d!718603 () Bool)

(assert (=> d!718603 e!1598209))

(declare-fun c!402838 () Bool)

(assert (=> d!718603 (= c!402838 (is-EmptyExpr!7514 (regTwo!15540 r!27340)))))

(declare-fun e!1598204 () Bool)

(assert (=> d!718603 (= lt!900239 e!1598204)))

(declare-fun c!402837 () Bool)

(assert (=> d!718603 (= c!402837 (isEmpty!16951 tl!4068))))

(assert (=> d!718603 (validRegex!3140 (regTwo!15540 r!27340))))

(assert (=> d!718603 (= (matchR!3501 (regTwo!15540 r!27340) tl!4068) lt!900239)))

(declare-fun b!2524278 () Bool)

(declare-fun res!1066388 () Bool)

(assert (=> b!2524278 (=> (not res!1066388) (not e!1598205))))

(assert (=> b!2524278 (= res!1066388 (not call!157552))))

(declare-fun b!2524286 () Bool)

(declare-fun res!1066387 () Bool)

(assert (=> b!2524286 (=> res!1066387 e!1598208)))

(assert (=> b!2524286 (= res!1066387 (not (is-ElementMatch!7514 (regTwo!15540 r!27340))))))

(assert (=> b!2524286 (= e!1598207 e!1598208)))

(declare-fun b!2524287 () Bool)

(assert (=> b!2524287 (= e!1598204 (nullable!2431 (regTwo!15540 r!27340)))))

(declare-fun b!2524288 () Bool)

(declare-fun res!1066384 () Bool)

(assert (=> b!2524288 (=> res!1066384 e!1598208)))

(assert (=> b!2524288 (= res!1066384 e!1598205)))

(declare-fun res!1066389 () Bool)

(assert (=> b!2524288 (=> (not res!1066389) (not e!1598205))))

(assert (=> b!2524288 (= res!1066389 lt!900239)))

(declare-fun b!2524289 () Bool)

(assert (=> b!2524289 (= e!1598204 (matchR!3501 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 tl!4068)) (tail!4040 tl!4068)))))

(assert (= (and d!718603 c!402837) b!2524287))

(assert (= (and d!718603 (not c!402837)) b!2524289))

(assert (= (and d!718603 c!402838) b!2524285))

(assert (= (and d!718603 (not c!402838)) b!2524282))

(assert (= (and b!2524282 c!402839) b!2524284))

(assert (= (and b!2524282 (not c!402839)) b!2524286))

(assert (= (and b!2524286 (not res!1066387)) b!2524288))

(assert (= (and b!2524288 res!1066389) b!2524278))

(assert (= (and b!2524278 res!1066388) b!2524281))

(assert (= (and b!2524281 res!1066385) b!2524279))

(assert (= (and b!2524288 (not res!1066384)) b!2524283))

(assert (= (and b!2524283 res!1066383) b!2524276))

(assert (= (and b!2524276 (not res!1066386)) b!2524280))

(assert (= (and b!2524280 (not res!1066382)) b!2524277))

(assert (= (or b!2524285 b!2524276 b!2524278) bm!157547))

(assert (=> b!2524279 m!2877607))

(assert (=> b!2524289 m!2877607))

(assert (=> b!2524289 m!2877607))

(declare-fun m!2877999 () Bool)

(assert (=> b!2524289 m!2877999))

(assert (=> b!2524289 m!2877611))

(assert (=> b!2524289 m!2877999))

(assert (=> b!2524289 m!2877611))

(declare-fun m!2878001 () Bool)

(assert (=> b!2524289 m!2878001))

(assert (=> d!718603 m!2877615))

(assert (=> d!718603 m!2877579))

(assert (=> b!2524287 m!2877581))

(assert (=> b!2524277 m!2877607))

(assert (=> bm!157547 m!2877615))

(assert (=> b!2524280 m!2877611))

(assert (=> b!2524280 m!2877611))

(assert (=> b!2524280 m!2877621))

(assert (=> b!2524281 m!2877611))

(assert (=> b!2524281 m!2877611))

(assert (=> b!2524281 m!2877621))

(assert (=> b!2523876 d!718603))

(declare-fun d!718605 () Bool)

(assert (=> d!718605 (= (isDefined!4707 (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) Nil!29479 tl!4068 tl!4068)) (not (isEmpty!16952 (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) Nil!29479 tl!4068 tl!4068))))))

(declare-fun bs!469054 () Bool)

(assert (= bs!469054 d!718605))

(assert (=> bs!469054 m!2877505))

(declare-fun m!2878003 () Bool)

(assert (=> bs!469054 m!2878003))

(assert (=> d!718507 d!718605))

(assert (=> d!718507 d!718511))

(declare-fun d!718607 () Bool)

(assert (=> d!718607 (isDefined!4707 (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) Nil!29479 tl!4068 tl!4068))))

(assert (=> d!718607 true))

(declare-fun _$122!310 () Unit!43253)

(assert (=> d!718607 (= (choose!14961 lt!900119 (regTwo!15540 r!27340) tl!4068) _$122!310)))

(declare-fun bs!469055 () Bool)

(assert (= bs!469055 d!718607))

(assert (=> bs!469055 m!2877505))

(assert (=> bs!469055 m!2877505))

(assert (=> bs!469055 m!2877659))

(assert (=> d!718507 d!718607))

(declare-fun bm!157548 () Bool)

(declare-fun call!157554 () Bool)

(declare-fun call!157553 () Bool)

(assert (=> bm!157548 (= call!157554 call!157553)))

(declare-fun b!2524290 () Bool)

(declare-fun e!1598216 () Bool)

(declare-fun e!1598213 () Bool)

(assert (=> b!2524290 (= e!1598216 e!1598213)))

(declare-fun res!1066390 () Bool)

(assert (=> b!2524290 (= res!1066390 (not (nullable!2431 (reg!7843 lt!900119))))))

(assert (=> b!2524290 (=> (not res!1066390) (not e!1598213))))

(declare-fun b!2524291 () Bool)

(declare-fun e!1598211 () Bool)

(assert (=> b!2524291 (= e!1598211 e!1598216)))

(declare-fun c!402841 () Bool)

(assert (=> b!2524291 (= c!402841 (is-Star!7514 lt!900119))))

(declare-fun d!718609 () Bool)

(declare-fun res!1066394 () Bool)

(assert (=> d!718609 (=> res!1066394 e!1598211)))

(assert (=> d!718609 (= res!1066394 (is-ElementMatch!7514 lt!900119))))

(assert (=> d!718609 (= (validRegex!3140 lt!900119) e!1598211)))

(declare-fun bm!157549 () Bool)

(declare-fun c!402840 () Bool)

(assert (=> bm!157549 (= call!157553 (validRegex!3140 (ite c!402841 (reg!7843 lt!900119) (ite c!402840 (regTwo!15541 lt!900119) (regOne!15540 lt!900119)))))))

(declare-fun b!2524292 () Bool)

(declare-fun res!1066393 () Bool)

(declare-fun e!1598215 () Bool)

(assert (=> b!2524292 (=> res!1066393 e!1598215)))

(assert (=> b!2524292 (= res!1066393 (not (is-Concat!12210 lt!900119)))))

(declare-fun e!1598210 () Bool)

(assert (=> b!2524292 (= e!1598210 e!1598215)))

(declare-fun b!2524293 () Bool)

(declare-fun e!1598212 () Bool)

(declare-fun call!157555 () Bool)

(assert (=> b!2524293 (= e!1598212 call!157555)))

(declare-fun b!2524294 () Bool)

(declare-fun res!1066391 () Bool)

(declare-fun e!1598214 () Bool)

(assert (=> b!2524294 (=> (not res!1066391) (not e!1598214))))

(assert (=> b!2524294 (= res!1066391 call!157555)))

(assert (=> b!2524294 (= e!1598210 e!1598214)))

(declare-fun b!2524295 () Bool)

(assert (=> b!2524295 (= e!1598215 e!1598212)))

(declare-fun res!1066392 () Bool)

(assert (=> b!2524295 (=> (not res!1066392) (not e!1598212))))

(assert (=> b!2524295 (= res!1066392 call!157554)))

(declare-fun bm!157550 () Bool)

(assert (=> bm!157550 (= call!157555 (validRegex!3140 (ite c!402840 (regOne!15541 lt!900119) (regTwo!15540 lt!900119))))))

(declare-fun b!2524296 () Bool)

(assert (=> b!2524296 (= e!1598216 e!1598210)))

(assert (=> b!2524296 (= c!402840 (is-Union!7514 lt!900119))))

(declare-fun b!2524297 () Bool)

(assert (=> b!2524297 (= e!1598213 call!157553)))

(declare-fun b!2524298 () Bool)

(assert (=> b!2524298 (= e!1598214 call!157554)))

(assert (= (and d!718609 (not res!1066394)) b!2524291))

(assert (= (and b!2524291 c!402841) b!2524290))

(assert (= (and b!2524291 (not c!402841)) b!2524296))

(assert (= (and b!2524290 res!1066390) b!2524297))

(assert (= (and b!2524296 c!402840) b!2524294))

(assert (= (and b!2524296 (not c!402840)) b!2524292))

(assert (= (and b!2524294 res!1066391) b!2524298))

(assert (= (and b!2524292 (not res!1066393)) b!2524295))

(assert (= (and b!2524295 res!1066392) b!2524293))

(assert (= (or b!2524294 b!2524293) bm!157550))

(assert (= (or b!2524298 b!2524295) bm!157548))

(assert (= (or b!2524297 bm!157548) bm!157549))

(declare-fun m!2878005 () Bool)

(assert (=> b!2524290 m!2878005))

(declare-fun m!2878007 () Bool)

(assert (=> bm!157549 m!2878007))

(declare-fun m!2878009 () Bool)

(assert (=> bm!157550 m!2878009))

(assert (=> d!718507 d!718609))

(declare-fun d!718611 () Bool)

(assert (=> d!718611 (= (isEmpty!16951 (tail!4040 tl!4068)) (is-Nil!29479 (tail!4040 tl!4068)))))

(assert (=> b!2523893 d!718611))

(assert (=> b!2523893 d!718581))

(declare-fun d!718613 () Bool)

(assert (=> d!718613 (= (isEmpty!16951 tl!4068) (is-Nil!29479 tl!4068))))

(assert (=> bm!157489 d!718613))

(assert (=> d!718523 d!718525))

(declare-fun d!718615 () Bool)

(declare-fun e!1598219 () Bool)

(assert (=> d!718615 e!1598219))

(declare-fun res!1066397 () Bool)

(assert (=> d!718615 (=> res!1066397 e!1598219)))

(assert (=> d!718615 (= res!1066397 (matchR!3501 lt!900121 tl!4068))))

(assert (=> d!718615 true))

(declare-fun _$116!310 () Unit!43253)

(assert (=> d!718615 (= (choose!14962 lt!900121 lt!900123 tl!4068) _$116!310)))

(declare-fun b!2524301 () Bool)

(assert (=> b!2524301 (= e!1598219 (matchR!3501 lt!900123 tl!4068))))

(assert (= (and d!718615 (not res!1066397)) b!2524301))

(assert (=> d!718615 m!2877515))

(assert (=> b!2524301 m!2877481))

(assert (=> d!718523 d!718615))

(declare-fun bm!157551 () Bool)

(declare-fun call!157557 () Bool)

(declare-fun call!157556 () Bool)

(assert (=> bm!157551 (= call!157557 call!157556)))

(declare-fun b!2524302 () Bool)

(declare-fun e!1598226 () Bool)

(declare-fun e!1598223 () Bool)

(assert (=> b!2524302 (= e!1598226 e!1598223)))

(declare-fun res!1066398 () Bool)

(assert (=> b!2524302 (= res!1066398 (not (nullable!2431 (reg!7843 lt!900121))))))

(assert (=> b!2524302 (=> (not res!1066398) (not e!1598223))))

(declare-fun b!2524303 () Bool)

(declare-fun e!1598221 () Bool)

(assert (=> b!2524303 (= e!1598221 e!1598226)))

(declare-fun c!402843 () Bool)

(assert (=> b!2524303 (= c!402843 (is-Star!7514 lt!900121))))

(declare-fun d!718617 () Bool)

(declare-fun res!1066402 () Bool)

(assert (=> d!718617 (=> res!1066402 e!1598221)))

(assert (=> d!718617 (= res!1066402 (is-ElementMatch!7514 lt!900121))))

(assert (=> d!718617 (= (validRegex!3140 lt!900121) e!1598221)))

(declare-fun bm!157552 () Bool)

(declare-fun c!402842 () Bool)

(assert (=> bm!157552 (= call!157556 (validRegex!3140 (ite c!402843 (reg!7843 lt!900121) (ite c!402842 (regTwo!15541 lt!900121) (regOne!15540 lt!900121)))))))

(declare-fun b!2524304 () Bool)

(declare-fun res!1066401 () Bool)

(declare-fun e!1598225 () Bool)

(assert (=> b!2524304 (=> res!1066401 e!1598225)))

(assert (=> b!2524304 (= res!1066401 (not (is-Concat!12210 lt!900121)))))

(declare-fun e!1598220 () Bool)

(assert (=> b!2524304 (= e!1598220 e!1598225)))

(declare-fun b!2524305 () Bool)

(declare-fun e!1598222 () Bool)

(declare-fun call!157558 () Bool)

(assert (=> b!2524305 (= e!1598222 call!157558)))

(declare-fun b!2524306 () Bool)

(declare-fun res!1066399 () Bool)

(declare-fun e!1598224 () Bool)

(assert (=> b!2524306 (=> (not res!1066399) (not e!1598224))))

(assert (=> b!2524306 (= res!1066399 call!157558)))

(assert (=> b!2524306 (= e!1598220 e!1598224)))

(declare-fun b!2524307 () Bool)

(assert (=> b!2524307 (= e!1598225 e!1598222)))

(declare-fun res!1066400 () Bool)

(assert (=> b!2524307 (=> (not res!1066400) (not e!1598222))))

(assert (=> b!2524307 (= res!1066400 call!157557)))

(declare-fun bm!157553 () Bool)

(assert (=> bm!157553 (= call!157558 (validRegex!3140 (ite c!402842 (regOne!15541 lt!900121) (regTwo!15540 lt!900121))))))

(declare-fun b!2524308 () Bool)

(assert (=> b!2524308 (= e!1598226 e!1598220)))

(assert (=> b!2524308 (= c!402842 (is-Union!7514 lt!900121))))

(declare-fun b!2524309 () Bool)

(assert (=> b!2524309 (= e!1598223 call!157556)))

(declare-fun b!2524310 () Bool)

(assert (=> b!2524310 (= e!1598224 call!157557)))

(assert (= (and d!718617 (not res!1066402)) b!2524303))

(assert (= (and b!2524303 c!402843) b!2524302))

(assert (= (and b!2524303 (not c!402843)) b!2524308))

(assert (= (and b!2524302 res!1066398) b!2524309))

(assert (= (and b!2524308 c!402842) b!2524306))

(assert (= (and b!2524308 (not c!402842)) b!2524304))

(assert (= (and b!2524306 res!1066399) b!2524310))

(assert (= (and b!2524304 (not res!1066401)) b!2524307))

(assert (= (and b!2524307 res!1066400) b!2524305))

(assert (= (or b!2524306 b!2524305) bm!157553))

(assert (= (or b!2524310 b!2524307) bm!157551))

(assert (= (or b!2524309 bm!157551) bm!157552))

(declare-fun m!2878011 () Bool)

(assert (=> b!2524302 m!2878011))

(declare-fun m!2878013 () Bool)

(assert (=> bm!157552 m!2878013))

(declare-fun m!2878015 () Bool)

(assert (=> bm!157553 m!2878015))

(assert (=> d!718523 d!718617))

(assert (=> b!2523727 d!718583))

(declare-fun d!718619 () Bool)

(declare-fun lt!900240 () Regex!7514)

(assert (=> d!718619 (validRegex!3140 lt!900240)))

(declare-fun e!1598228 () Regex!7514)

(assert (=> d!718619 (= lt!900240 e!1598228)))

(declare-fun c!402844 () Bool)

(assert (=> d!718619 (= c!402844 (or (is-EmptyExpr!7514 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))) (is-EmptyLang!7514 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))))))))

(assert (=> d!718619 (validRegex!3140 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))))))

(assert (=> d!718619 (= (derivativeStep!2083 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))) c!14016) lt!900240)))

(declare-fun b!2524311 () Bool)

(declare-fun e!1598231 () Regex!7514)

(assert (=> b!2524311 (= e!1598231 (ite (= c!14016 (c!402670 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun e!1598227 () Regex!7514)

(declare-fun b!2524312 () Bool)

(declare-fun call!157560 () Regex!7514)

(assert (=> b!2524312 (= e!1598227 (Concat!12210 call!157560 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))))))

(declare-fun call!157562 () Regex!7514)

(declare-fun b!2524313 () Bool)

(declare-fun e!1598229 () Regex!7514)

(assert (=> b!2524313 (= e!1598229 (Union!7514 (Concat!12210 call!157562 (regTwo!15540 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))))) EmptyLang!7514))))

(declare-fun b!2524314 () Bool)

(declare-fun e!1598230 () Regex!7514)

(declare-fun call!157561 () Regex!7514)

(declare-fun call!157559 () Regex!7514)

(assert (=> b!2524314 (= e!1598230 (Union!7514 call!157561 call!157559))))

(declare-fun b!2524315 () Bool)

(assert (=> b!2524315 (= e!1598228 EmptyLang!7514)))

(declare-fun b!2524316 () Bool)

(assert (=> b!2524316 (= e!1598230 e!1598227)))

(declare-fun c!402847 () Bool)

(assert (=> b!2524316 (= c!402847 (is-Star!7514 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))))))

(declare-fun bm!157554 () Bool)

(assert (=> bm!157554 (= call!157562 call!157560)))

(declare-fun b!2524317 () Bool)

(declare-fun c!402848 () Bool)

(assert (=> b!2524317 (= c!402848 (nullable!2431 (regOne!15540 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))))))))

(assert (=> b!2524317 (= e!1598227 e!1598229)))

(declare-fun b!2524318 () Bool)

(assert (=> b!2524318 (= e!1598229 (Union!7514 (Concat!12210 call!157562 (regTwo!15540 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))))) call!157559))))

(declare-fun b!2524319 () Bool)

(assert (=> b!2524319 (= e!1598228 e!1598231)))

(declare-fun c!402845 () Bool)

(assert (=> b!2524319 (= c!402845 (is-ElementMatch!7514 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))))))

(declare-fun c!402846 () Bool)

(declare-fun bm!157555 () Bool)

(assert (=> bm!157555 (= call!157561 (derivativeStep!2083 (ite c!402846 (regOne!15541 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))) (ite c!402847 (reg!7843 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))) (regOne!15540 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))))) c!14016))))

(declare-fun bm!157556 () Bool)

(assert (=> bm!157556 (= call!157559 (derivativeStep!2083 (ite c!402846 (regTwo!15541 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))) (regTwo!15540 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))))) c!14016))))

(declare-fun bm!157557 () Bool)

(assert (=> bm!157557 (= call!157560 call!157561)))

(declare-fun b!2524320 () Bool)

(assert (=> b!2524320 (= c!402846 (is-Union!7514 (ite c!402756 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402757 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))))))

(assert (=> b!2524320 (= e!1598231 e!1598230)))

(assert (= (and d!718619 c!402844) b!2524315))

(assert (= (and d!718619 (not c!402844)) b!2524319))

(assert (= (and b!2524319 c!402845) b!2524311))

(assert (= (and b!2524319 (not c!402845)) b!2524320))

(assert (= (and b!2524320 c!402846) b!2524314))

(assert (= (and b!2524320 (not c!402846)) b!2524316))

(assert (= (and b!2524316 c!402847) b!2524312))

(assert (= (and b!2524316 (not c!402847)) b!2524317))

(assert (= (and b!2524317 c!402848) b!2524318))

(assert (= (and b!2524317 (not c!402848)) b!2524313))

(assert (= (or b!2524318 b!2524313) bm!157554))

(assert (= (or b!2524312 bm!157554) bm!157557))

(assert (= (or b!2524314 b!2524318) bm!157556))

(assert (= (or b!2524314 bm!157557) bm!157555))

(declare-fun m!2878017 () Bool)

(assert (=> d!718619 m!2878017))

(declare-fun m!2878019 () Bool)

(assert (=> d!718619 m!2878019))

(declare-fun m!2878021 () Bool)

(assert (=> b!2524317 m!2878021))

(declare-fun m!2878023 () Bool)

(assert (=> bm!157555 m!2878023))

(declare-fun m!2878025 () Bool)

(assert (=> bm!157556 m!2878025))

(assert (=> bm!157494 d!718619))

(declare-fun d!718621 () Bool)

(assert (=> d!718621 (= (nullable!2431 lt!900123) (nullableFct!673 lt!900123))))

(declare-fun bs!469056 () Bool)

(assert (= bs!469056 d!718621))

(declare-fun m!2878027 () Bool)

(assert (=> bs!469056 m!2878027))

(assert (=> b!2523723 d!718621))

(declare-fun d!718623 () Bool)

(assert (not d!718623))

(assert (=> b!2523945 d!718623))

(declare-fun d!718625 () Bool)

(assert (not d!718625))

(assert (=> b!2523945 d!718625))

(declare-fun d!718627 () Bool)

(assert (not d!718627))

(assert (=> b!2523945 d!718627))

(declare-fun d!718629 () Bool)

(assert (not d!718629))

(assert (=> b!2523945 d!718629))

(declare-fun d!718631 () Bool)

(declare-fun lt!900241 () Regex!7514)

(assert (=> d!718631 (validRegex!3140 lt!900241)))

(declare-fun e!1598233 () Regex!7514)

(assert (=> d!718631 (= lt!900241 e!1598233)))

(declare-fun c!402849 () Bool)

(assert (=> d!718631 (= c!402849 (or (is-EmptyExpr!7514 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))) (is-EmptyLang!7514 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))))))))

(assert (=> d!718631 (validRegex!3140 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))))))

(assert (=> d!718631 (= (derivativeStep!2083 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))) c!14016) lt!900241)))

(declare-fun b!2524321 () Bool)

(declare-fun e!1598236 () Regex!7514)

(assert (=> b!2524321 (= e!1598236 (ite (= c!14016 (c!402670 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun e!1598232 () Regex!7514)

(declare-fun b!2524322 () Bool)

(declare-fun call!157564 () Regex!7514)

(assert (=> b!2524322 (= e!1598232 (Concat!12210 call!157564 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))))))

(declare-fun call!157566 () Regex!7514)

(declare-fun e!1598234 () Regex!7514)

(declare-fun b!2524323 () Bool)

(assert (=> b!2524323 (= e!1598234 (Union!7514 (Concat!12210 call!157566 (regTwo!15540 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))))) EmptyLang!7514))))

(declare-fun b!2524324 () Bool)

(declare-fun e!1598235 () Regex!7514)

(declare-fun call!157565 () Regex!7514)

(declare-fun call!157563 () Regex!7514)

(assert (=> b!2524324 (= e!1598235 (Union!7514 call!157565 call!157563))))

(declare-fun b!2524325 () Bool)

(assert (=> b!2524325 (= e!1598233 EmptyLang!7514)))

(declare-fun b!2524326 () Bool)

(assert (=> b!2524326 (= e!1598235 e!1598232)))

(declare-fun c!402852 () Bool)

(assert (=> b!2524326 (= c!402852 (is-Star!7514 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))))))

(declare-fun bm!157558 () Bool)

(assert (=> bm!157558 (= call!157566 call!157564)))

(declare-fun b!2524327 () Bool)

(declare-fun c!402853 () Bool)

(assert (=> b!2524327 (= c!402853 (nullable!2431 (regOne!15540 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))))))))

(assert (=> b!2524327 (= e!1598232 e!1598234)))

(declare-fun b!2524328 () Bool)

(assert (=> b!2524328 (= e!1598234 (Union!7514 (Concat!12210 call!157566 (regTwo!15540 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))))) call!157563))))

(declare-fun b!2524329 () Bool)

(assert (=> b!2524329 (= e!1598233 e!1598236)))

(declare-fun c!402850 () Bool)

(assert (=> b!2524329 (= c!402850 (is-ElementMatch!7514 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))))))

(declare-fun bm!157559 () Bool)

(declare-fun c!402851 () Bool)

(assert (=> bm!157559 (= call!157565 (derivativeStep!2083 (ite c!402851 (regOne!15541 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))) (ite c!402852 (reg!7843 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))) (regOne!15540 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))))) c!14016))))

(declare-fun bm!157560 () Bool)

(assert (=> bm!157560 (= call!157563 (derivativeStep!2083 (ite c!402851 (regTwo!15541 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))) (regTwo!15540 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340))))) c!14016))))

(declare-fun bm!157561 () Bool)

(assert (=> bm!157561 (= call!157564 call!157565)))

(declare-fun b!2524330 () Bool)

(assert (=> b!2524330 (= c!402851 (is-Union!7514 (ite c!402702 (regOne!15541 r!27340) (ite c!402703 (reg!7843 r!27340) (regOne!15540 r!27340)))))))

(assert (=> b!2524330 (= e!1598236 e!1598235)))

(assert (= (and d!718631 c!402849) b!2524325))

(assert (= (and d!718631 (not c!402849)) b!2524329))

(assert (= (and b!2524329 c!402850) b!2524321))

(assert (= (and b!2524329 (not c!402850)) b!2524330))

(assert (= (and b!2524330 c!402851) b!2524324))

(assert (= (and b!2524330 (not c!402851)) b!2524326))

(assert (= (and b!2524326 c!402852) b!2524322))

(assert (= (and b!2524326 (not c!402852)) b!2524327))

(assert (= (and b!2524327 c!402853) b!2524328))

(assert (= (and b!2524327 (not c!402853)) b!2524323))

(assert (= (or b!2524328 b!2524323) bm!157558))

(assert (= (or b!2524322 bm!157558) bm!157561))

(assert (= (or b!2524324 b!2524328) bm!157560))

(assert (= (or b!2524324 bm!157561) bm!157559))

(declare-fun m!2878029 () Bool)

(assert (=> d!718631 m!2878029))

(declare-fun m!2878031 () Bool)

(assert (=> d!718631 m!2878031))

(declare-fun m!2878033 () Bool)

(assert (=> b!2524327 m!2878033))

(declare-fun m!2878035 () Bool)

(assert (=> bm!157559 m!2878035))

(declare-fun m!2878037 () Bool)

(assert (=> bm!157560 m!2878037))

(assert (=> bm!157470 d!718631))

(declare-fun b!2524332 () Bool)

(declare-fun e!1598237 () List!29579)

(assert (=> b!2524332 (= e!1598237 (Cons!29479 (h!34899 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479))) (++!7235 (t!211278 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479))) (t!211278 tl!4068))))))

(declare-fun b!2524334 () Bool)

(declare-fun e!1598238 () Bool)

(declare-fun lt!900242 () List!29579)

(assert (=> b!2524334 (= e!1598238 (or (not (= (t!211278 tl!4068) Nil!29479)) (= lt!900242 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)))))))

(declare-fun d!718633 () Bool)

(assert (=> d!718633 e!1598238))

(declare-fun res!1066403 () Bool)

(assert (=> d!718633 (=> (not res!1066403) (not e!1598238))))

(assert (=> d!718633 (= res!1066403 (= (content!4043 lt!900242) (set.union (content!4043 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479))) (content!4043 (t!211278 tl!4068)))))))

(assert (=> d!718633 (= lt!900242 e!1598237)))

(declare-fun c!402854 () Bool)

(assert (=> d!718633 (= c!402854 (is-Nil!29479 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479))))))

(assert (=> d!718633 (= (++!7235 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (t!211278 tl!4068)) lt!900242)))

(declare-fun b!2524333 () Bool)

(declare-fun res!1066404 () Bool)

(assert (=> b!2524333 (=> (not res!1066404) (not e!1598238))))

(assert (=> b!2524333 (= res!1066404 (= (size!22925 lt!900242) (+ (size!22925 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479))) (size!22925 (t!211278 tl!4068)))))))

(declare-fun b!2524331 () Bool)

(assert (=> b!2524331 (= e!1598237 (t!211278 tl!4068))))

(assert (= (and d!718633 c!402854) b!2524331))

(assert (= (and d!718633 (not c!402854)) b!2524332))

(assert (= (and d!718633 res!1066403) b!2524333))

(assert (= (and b!2524333 res!1066404) b!2524334))

(declare-fun m!2878039 () Bool)

(assert (=> b!2524332 m!2878039))

(declare-fun m!2878041 () Bool)

(assert (=> d!718633 m!2878041))

(assert (=> d!718633 m!2877717))

(declare-fun m!2878043 () Bool)

(assert (=> d!718633 m!2878043))

(declare-fun m!2878045 () Bool)

(assert (=> d!718633 m!2878045))

(declare-fun m!2878047 () Bool)

(assert (=> b!2524333 m!2878047))

(assert (=> b!2524333 m!2877717))

(declare-fun m!2878049 () Bool)

(assert (=> b!2524333 m!2878049))

(declare-fun m!2878051 () Bool)

(assert (=> b!2524333 m!2878051))

(assert (=> b!2523878 d!718633))

(declare-fun b!2524336 () Bool)

(declare-fun e!1598239 () List!29579)

(assert (=> b!2524336 (= e!1598239 (Cons!29479 (h!34899 Nil!29479) (++!7235 (t!211278 Nil!29479) (Cons!29479 (h!34899 tl!4068) Nil!29479))))))

(declare-fun b!2524338 () Bool)

(declare-fun e!1598240 () Bool)

(declare-fun lt!900243 () List!29579)

(assert (=> b!2524338 (= e!1598240 (or (not (= (Cons!29479 (h!34899 tl!4068) Nil!29479) Nil!29479)) (= lt!900243 Nil!29479)))))

(declare-fun d!718635 () Bool)

(assert (=> d!718635 e!1598240))

(declare-fun res!1066405 () Bool)

(assert (=> d!718635 (=> (not res!1066405) (not e!1598240))))

(assert (=> d!718635 (= res!1066405 (= (content!4043 lt!900243) (set.union (content!4043 Nil!29479) (content!4043 (Cons!29479 (h!34899 tl!4068) Nil!29479)))))))

(assert (=> d!718635 (= lt!900243 e!1598239)))

(declare-fun c!402855 () Bool)

(assert (=> d!718635 (= c!402855 (is-Nil!29479 Nil!29479))))

(assert (=> d!718635 (= (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) lt!900243)))

(declare-fun b!2524337 () Bool)

(declare-fun res!1066406 () Bool)

(assert (=> b!2524337 (=> (not res!1066406) (not e!1598240))))

(assert (=> b!2524337 (= res!1066406 (= (size!22925 lt!900243) (+ (size!22925 Nil!29479) (size!22925 (Cons!29479 (h!34899 tl!4068) Nil!29479)))))))

(declare-fun b!2524335 () Bool)

(assert (=> b!2524335 (= e!1598239 (Cons!29479 (h!34899 tl!4068) Nil!29479))))

(assert (= (and d!718635 c!402855) b!2524335))

(assert (= (and d!718635 (not c!402855)) b!2524336))

(assert (= (and d!718635 res!1066405) b!2524337))

(assert (= (and b!2524337 res!1066406) b!2524338))

(declare-fun m!2878053 () Bool)

(assert (=> b!2524336 m!2878053))

(declare-fun m!2878055 () Bool)

(assert (=> d!718635 m!2878055))

(declare-fun m!2878057 () Bool)

(assert (=> d!718635 m!2878057))

(declare-fun m!2878059 () Bool)

(assert (=> d!718635 m!2878059))

(declare-fun m!2878061 () Bool)

(assert (=> b!2524337 m!2878061))

(declare-fun m!2878063 () Bool)

(assert (=> b!2524337 m!2878063))

(declare-fun m!2878065 () Bool)

(assert (=> b!2524337 m!2878065))

(assert (=> b!2523878 d!718635))

(declare-fun d!718637 () Bool)

(assert (=> d!718637 (= (++!7235 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (t!211278 tl!4068)) tl!4068)))

(declare-fun lt!900246 () Unit!43253)

(declare-fun choose!14967 (List!29579 C!15186 List!29579 List!29579) Unit!43253)

(assert (=> d!718637 (= lt!900246 (choose!14967 Nil!29479 (h!34899 tl!4068) (t!211278 tl!4068) tl!4068))))

(assert (=> d!718637 (= (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) (t!211278 tl!4068))) tl!4068)))

(assert (=> d!718637 (= (lemmaMoveElementToOtherListKeepsConcatEq!776 Nil!29479 (h!34899 tl!4068) (t!211278 tl!4068) tl!4068) lt!900246)))

(declare-fun bs!469057 () Bool)

(assert (= bs!469057 d!718637))

(assert (=> bs!469057 m!2877717))

(assert (=> bs!469057 m!2877717))

(assert (=> bs!469057 m!2877719))

(declare-fun m!2878067 () Bool)

(assert (=> bs!469057 m!2878067))

(declare-fun m!2878069 () Bool)

(assert (=> bs!469057 m!2878069))

(assert (=> b!2523878 d!718637))

(declare-fun b!2524339 () Bool)

(declare-fun e!1598242 () Option!5885)

(declare-fun e!1598245 () Option!5885)

(assert (=> b!2524339 (= e!1598242 e!1598245)))

(declare-fun c!402856 () Bool)

(assert (=> b!2524339 (= c!402856 (is-Nil!29479 (t!211278 tl!4068)))))

(declare-fun b!2524340 () Bool)

(declare-fun res!1066411 () Bool)

(declare-fun e!1598241 () Bool)

(assert (=> b!2524340 (=> (not res!1066411) (not e!1598241))))

(declare-fun lt!900247 () Option!5885)

(assert (=> b!2524340 (= res!1066411 (matchR!3501 lt!900119 (_1!17307 (get!9221 lt!900247))))))

(declare-fun d!718639 () Bool)

(declare-fun e!1598243 () Bool)

(assert (=> d!718639 e!1598243))

(declare-fun res!1066407 () Bool)

(assert (=> d!718639 (=> res!1066407 e!1598243)))

(assert (=> d!718639 (= res!1066407 e!1598241)))

(declare-fun res!1066410 () Bool)

(assert (=> d!718639 (=> (not res!1066410) (not e!1598241))))

(assert (=> d!718639 (= res!1066410 (isDefined!4707 lt!900247))))

(assert (=> d!718639 (= lt!900247 e!1598242)))

(declare-fun c!402857 () Bool)

(declare-fun e!1598244 () Bool)

(assert (=> d!718639 (= c!402857 e!1598244)))

(declare-fun res!1066409 () Bool)

(assert (=> d!718639 (=> (not res!1066409) (not e!1598244))))

(assert (=> d!718639 (= res!1066409 (matchR!3501 lt!900119 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479))))))

(assert (=> d!718639 (validRegex!3140 lt!900119)))

(assert (=> d!718639 (= (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (t!211278 tl!4068) tl!4068) lt!900247)))

(declare-fun b!2524341 () Bool)

(assert (=> b!2524341 (= e!1598245 None!5884)))

(declare-fun b!2524342 () Bool)

(assert (=> b!2524342 (= e!1598244 (matchR!3501 (regTwo!15540 r!27340) (t!211278 tl!4068)))))

(declare-fun b!2524343 () Bool)

(assert (=> b!2524343 (= e!1598241 (= (++!7235 (_1!17307 (get!9221 lt!900247)) (_2!17307 (get!9221 lt!900247))) tl!4068))))

(declare-fun b!2524344 () Bool)

(declare-fun lt!900249 () Unit!43253)

(declare-fun lt!900248 () Unit!43253)

(assert (=> b!2524344 (= lt!900249 lt!900248)))

(assert (=> b!2524344 (= (++!7235 (++!7235 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (Cons!29479 (h!34899 (t!211278 tl!4068)) Nil!29479)) (t!211278 (t!211278 tl!4068))) tl!4068)))

(assert (=> b!2524344 (= lt!900248 (lemmaMoveElementToOtherListKeepsConcatEq!776 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (h!34899 (t!211278 tl!4068)) (t!211278 (t!211278 tl!4068)) tl!4068))))

(assert (=> b!2524344 (= e!1598245 (findConcatSeparation!907 lt!900119 (regTwo!15540 r!27340) (++!7235 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (Cons!29479 (h!34899 (t!211278 tl!4068)) Nil!29479)) (t!211278 (t!211278 tl!4068)) tl!4068))))

(declare-fun b!2524345 () Bool)

(assert (=> b!2524345 (= e!1598243 (not (isDefined!4707 lt!900247)))))

(declare-fun b!2524346 () Bool)

(assert (=> b!2524346 (= e!1598242 (Some!5884 (tuple2!29531 (++!7235 Nil!29479 (Cons!29479 (h!34899 tl!4068) Nil!29479)) (t!211278 tl!4068))))))

(declare-fun b!2524347 () Bool)

(declare-fun res!1066408 () Bool)

(assert (=> b!2524347 (=> (not res!1066408) (not e!1598241))))

(assert (=> b!2524347 (= res!1066408 (matchR!3501 (regTwo!15540 r!27340) (_2!17307 (get!9221 lt!900247))))))

(assert (= (and d!718639 res!1066409) b!2524342))

(assert (= (and d!718639 c!402857) b!2524346))

(assert (= (and d!718639 (not c!402857)) b!2524339))

(assert (= (and b!2524339 c!402856) b!2524341))

(assert (= (and b!2524339 (not c!402856)) b!2524344))

(assert (= (and d!718639 res!1066410) b!2524340))

(assert (= (and b!2524340 res!1066411) b!2524347))

(assert (= (and b!2524347 res!1066408) b!2524343))

(assert (= (and d!718639 (not res!1066407)) b!2524345))

(declare-fun m!2878071 () Bool)

(assert (=> b!2524340 m!2878071))

(declare-fun m!2878073 () Bool)

(assert (=> b!2524340 m!2878073))

(assert (=> b!2524344 m!2877717))

(declare-fun m!2878075 () Bool)

(assert (=> b!2524344 m!2878075))

(assert (=> b!2524344 m!2878075))

(declare-fun m!2878077 () Bool)

(assert (=> b!2524344 m!2878077))

(assert (=> b!2524344 m!2877717))

(declare-fun m!2878079 () Bool)

(assert (=> b!2524344 m!2878079))

(assert (=> b!2524344 m!2878075))

(declare-fun m!2878081 () Bool)

(assert (=> b!2524344 m!2878081))

(declare-fun m!2878083 () Bool)

(assert (=> b!2524345 m!2878083))

(assert (=> b!2524343 m!2878071))

(declare-fun m!2878085 () Bool)

(assert (=> b!2524343 m!2878085))

(assert (=> d!718639 m!2878083))

(assert (=> d!718639 m!2877717))

(declare-fun m!2878087 () Bool)

(assert (=> d!718639 m!2878087))

(assert (=> d!718639 m!2877633))

(declare-fun m!2878089 () Bool)

(assert (=> b!2524342 m!2878089))

(assert (=> b!2524347 m!2878071))

(declare-fun m!2878091 () Bool)

(assert (=> b!2524347 m!2878091))

(assert (=> b!2523878 d!718639))

(assert (=> d!718525 d!718613))

(assert (=> d!718525 d!718617))

(assert (=> bm!157473 d!718613))

(declare-fun d!718641 () Bool)

(assert (=> d!718641 (= (matchR!3501 lt!900126 tl!4068) (matchR!3501 (derivative!209 lt!900126 tl!4068) Nil!29479))))

(assert (=> d!718641 true))

(declare-fun _$108!302 () Unit!43253)

(assert (=> d!718641 (= (choose!14963 lt!900126 tl!4068) _$108!302)))

(declare-fun bs!469058 () Bool)

(assert (= bs!469058 d!718641))

(assert (=> bs!469058 m!2877521))

(assert (=> bs!469058 m!2877511))

(assert (=> bs!469058 m!2877511))

(assert (=> bs!469058 m!2877513))

(assert (=> d!718529 d!718641))

(assert (=> d!718529 d!718533))

(declare-fun bm!157562 () Bool)

(declare-fun call!157568 () Bool)

(declare-fun call!157567 () Bool)

(assert (=> bm!157562 (= call!157568 call!157567)))

(declare-fun b!2524348 () Bool)

(declare-fun e!1598252 () Bool)

(declare-fun e!1598249 () Bool)

(assert (=> b!2524348 (= e!1598252 e!1598249)))

(declare-fun res!1066412 () Bool)

(assert (=> b!2524348 (= res!1066412 (not (nullable!2431 (reg!7843 lt!900126))))))

(assert (=> b!2524348 (=> (not res!1066412) (not e!1598249))))

(declare-fun b!2524349 () Bool)

(declare-fun e!1598247 () Bool)

(assert (=> b!2524349 (= e!1598247 e!1598252)))

(declare-fun c!402859 () Bool)

(assert (=> b!2524349 (= c!402859 (is-Star!7514 lt!900126))))

(declare-fun d!718643 () Bool)

(declare-fun res!1066416 () Bool)

(assert (=> d!718643 (=> res!1066416 e!1598247)))

(assert (=> d!718643 (= res!1066416 (is-ElementMatch!7514 lt!900126))))

(assert (=> d!718643 (= (validRegex!3140 lt!900126) e!1598247)))

(declare-fun bm!157563 () Bool)

(declare-fun c!402858 () Bool)

(assert (=> bm!157563 (= call!157567 (validRegex!3140 (ite c!402859 (reg!7843 lt!900126) (ite c!402858 (regTwo!15541 lt!900126) (regOne!15540 lt!900126)))))))

(declare-fun b!2524350 () Bool)

(declare-fun res!1066415 () Bool)

(declare-fun e!1598251 () Bool)

(assert (=> b!2524350 (=> res!1066415 e!1598251)))

(assert (=> b!2524350 (= res!1066415 (not (is-Concat!12210 lt!900126)))))

(declare-fun e!1598246 () Bool)

(assert (=> b!2524350 (= e!1598246 e!1598251)))

(declare-fun b!2524351 () Bool)

(declare-fun e!1598248 () Bool)

(declare-fun call!157569 () Bool)

(assert (=> b!2524351 (= e!1598248 call!157569)))

(declare-fun b!2524352 () Bool)

(declare-fun res!1066413 () Bool)

(declare-fun e!1598250 () Bool)

(assert (=> b!2524352 (=> (not res!1066413) (not e!1598250))))

(assert (=> b!2524352 (= res!1066413 call!157569)))

(assert (=> b!2524352 (= e!1598246 e!1598250)))

(declare-fun b!2524353 () Bool)

(assert (=> b!2524353 (= e!1598251 e!1598248)))

(declare-fun res!1066414 () Bool)

(assert (=> b!2524353 (=> (not res!1066414) (not e!1598248))))

(assert (=> b!2524353 (= res!1066414 call!157568)))

(declare-fun bm!157564 () Bool)

(assert (=> bm!157564 (= call!157569 (validRegex!3140 (ite c!402858 (regOne!15541 lt!900126) (regTwo!15540 lt!900126))))))

(declare-fun b!2524354 () Bool)

(assert (=> b!2524354 (= e!1598252 e!1598246)))

(assert (=> b!2524354 (= c!402858 (is-Union!7514 lt!900126))))

(declare-fun b!2524355 () Bool)

(assert (=> b!2524355 (= e!1598249 call!157567)))

(declare-fun b!2524356 () Bool)

(assert (=> b!2524356 (= e!1598250 call!157568)))

(assert (= (and d!718643 (not res!1066416)) b!2524349))

(assert (= (and b!2524349 c!402859) b!2524348))

(assert (= (and b!2524349 (not c!402859)) b!2524354))

(assert (= (and b!2524348 res!1066412) b!2524355))

(assert (= (and b!2524354 c!402858) b!2524352))

(assert (= (and b!2524354 (not c!402858)) b!2524350))

(assert (= (and b!2524352 res!1066413) b!2524356))

(assert (= (and b!2524350 (not res!1066415)) b!2524353))

(assert (= (and b!2524353 res!1066414) b!2524351))

(assert (= (or b!2524352 b!2524351) bm!157564))

(assert (= (or b!2524356 b!2524353) bm!157562))

(assert (= (or b!2524355 bm!157562) bm!157563))

(declare-fun m!2878093 () Bool)

(assert (=> b!2524348 m!2878093))

(declare-fun m!2878095 () Bool)

(assert (=> bm!157563 m!2878095))

(declare-fun m!2878097 () Bool)

(assert (=> bm!157564 m!2878097))

(assert (=> d!718529 d!718643))

(assert (=> d!718529 d!718535))

(assert (=> d!718529 d!718537))

(declare-fun bm!157565 () Bool)

(declare-fun call!157571 () Bool)

(declare-fun call!157570 () Bool)

(assert (=> bm!157565 (= call!157571 call!157570)))

(declare-fun b!2524357 () Bool)

(declare-fun e!1598259 () Bool)

(declare-fun e!1598256 () Bool)

(assert (=> b!2524357 (= e!1598259 e!1598256)))

(declare-fun res!1066417 () Bool)

(assert (=> b!2524357 (= res!1066417 (not (nullable!2431 (reg!7843 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))))))))

(assert (=> b!2524357 (=> (not res!1066417) (not e!1598256))))

(declare-fun b!2524358 () Bool)

(declare-fun e!1598254 () Bool)

(assert (=> b!2524358 (= e!1598254 e!1598259)))

(declare-fun c!402861 () Bool)

(assert (=> b!2524358 (= c!402861 (is-Star!7514 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))))))

(declare-fun d!718645 () Bool)

(declare-fun res!1066421 () Bool)

(assert (=> d!718645 (=> res!1066421 e!1598254)))

(assert (=> d!718645 (= res!1066421 (is-ElementMatch!7514 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))))))

(assert (=> d!718645 (= (validRegex!3140 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))) e!1598254)))

(declare-fun bm!157566 () Bool)

(declare-fun c!402860 () Bool)

(assert (=> bm!157566 (= call!157570 (validRegex!3140 (ite c!402861 (reg!7843 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))) (ite c!402860 (regTwo!15541 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))) (regOne!15540 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340))))))))))

(declare-fun b!2524359 () Bool)

(declare-fun res!1066420 () Bool)

(declare-fun e!1598258 () Bool)

(assert (=> b!2524359 (=> res!1066420 e!1598258)))

(assert (=> b!2524359 (= res!1066420 (not (is-Concat!12210 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340))))))))

(declare-fun e!1598253 () Bool)

(assert (=> b!2524359 (= e!1598253 e!1598258)))

(declare-fun b!2524360 () Bool)

(declare-fun e!1598255 () Bool)

(declare-fun call!157572 () Bool)

(assert (=> b!2524360 (= e!1598255 call!157572)))

(declare-fun b!2524361 () Bool)

(declare-fun res!1066418 () Bool)

(declare-fun e!1598257 () Bool)

(assert (=> b!2524361 (=> (not res!1066418) (not e!1598257))))

(assert (=> b!2524361 (= res!1066418 call!157572)))

(assert (=> b!2524361 (= e!1598253 e!1598257)))

(declare-fun b!2524362 () Bool)

(assert (=> b!2524362 (= e!1598258 e!1598255)))

(declare-fun res!1066419 () Bool)

(assert (=> b!2524362 (=> (not res!1066419) (not e!1598255))))

(assert (=> b!2524362 (= res!1066419 call!157571)))

(declare-fun bm!157567 () Bool)

(assert (=> bm!157567 (= call!157572 (validRegex!3140 (ite c!402860 (regOne!15541 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))) (regTwo!15540 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))))))))

(declare-fun b!2524363 () Bool)

(assert (=> b!2524363 (= e!1598259 e!1598253)))

(assert (=> b!2524363 (= c!402860 (is-Union!7514 (ite c!402722 (reg!7843 r!27340) (ite c!402721 (regTwo!15541 r!27340) (regOne!15540 r!27340)))))))

(declare-fun b!2524364 () Bool)

(assert (=> b!2524364 (= e!1598256 call!157570)))

(declare-fun b!2524365 () Bool)

(assert (=> b!2524365 (= e!1598257 call!157571)))

(assert (= (and d!718645 (not res!1066421)) b!2524358))

(assert (= (and b!2524358 c!402861) b!2524357))

(assert (= (and b!2524358 (not c!402861)) b!2524363))

(assert (= (and b!2524357 res!1066417) b!2524364))

(assert (= (and b!2524363 c!402860) b!2524361))

(assert (= (and b!2524363 (not c!402860)) b!2524359))

(assert (= (and b!2524361 res!1066418) b!2524365))

(assert (= (and b!2524359 (not res!1066420)) b!2524362))

(assert (= (and b!2524362 res!1066419) b!2524360))

(assert (= (or b!2524361 b!2524360) bm!157567))

(assert (= (or b!2524365 b!2524362) bm!157565))

(assert (= (or b!2524364 bm!157565) bm!157566))

(declare-fun m!2878099 () Bool)

(assert (=> b!2524357 m!2878099))

(declare-fun m!2878101 () Bool)

(assert (=> bm!157566 m!2878101))

(declare-fun m!2878103 () Bool)

(assert (=> bm!157567 m!2878103))

(assert (=> bm!157482 d!718645))

(declare-fun d!718647 () Bool)

(assert (not d!718647))

(assert (=> b!2523937 d!718647))

(assert (=> b!2523937 d!718629))

(declare-fun d!718649 () Bool)

(declare-fun lt!900250 () Regex!7514)

(assert (=> d!718649 (validRegex!3140 lt!900250)))

(declare-fun e!1598260 () Regex!7514)

(assert (=> d!718649 (= lt!900250 e!1598260)))

(declare-fun c!402862 () Bool)

(assert (=> d!718649 (= c!402862 (is-Cons!29479 (t!211278 tl!4068)))))

(assert (=> d!718649 (validRegex!3140 (derivativeStep!2083 (derivativeStep!2083 r!27340 c!14016) (h!34899 tl!4068)))))

(assert (=> d!718649 (= (derivative!209 (derivativeStep!2083 (derivativeStep!2083 r!27340 c!14016) (h!34899 tl!4068)) (t!211278 tl!4068)) lt!900250)))

(declare-fun b!2524366 () Bool)

(assert (=> b!2524366 (= e!1598260 (derivative!209 (derivativeStep!2083 (derivativeStep!2083 (derivativeStep!2083 r!27340 c!14016) (h!34899 tl!4068)) (h!34899 (t!211278 tl!4068))) (t!211278 (t!211278 tl!4068))))))

(declare-fun b!2524367 () Bool)

(assert (=> b!2524367 (= e!1598260 (derivativeStep!2083 (derivativeStep!2083 r!27340 c!14016) (h!34899 tl!4068)))))

(assert (= (and d!718649 c!402862) b!2524366))

(assert (= (and d!718649 (not c!402862)) b!2524367))

(declare-fun m!2878105 () Bool)

(assert (=> d!718649 m!2878105))

(assert (=> d!718649 m!2877591))

(declare-fun m!2878107 () Bool)

(assert (=> d!718649 m!2878107))

(assert (=> b!2524366 m!2877591))

(declare-fun m!2878109 () Bool)

(assert (=> b!2524366 m!2878109))

(assert (=> b!2524366 m!2878109))

(declare-fun m!2878111 () Bool)

(assert (=> b!2524366 m!2878111))

(assert (=> b!2523671 d!718649))

(declare-fun d!718651 () Bool)

(declare-fun lt!900251 () Regex!7514)

(assert (=> d!718651 (validRegex!3140 lt!900251)))

(declare-fun e!1598262 () Regex!7514)

(assert (=> d!718651 (= lt!900251 e!1598262)))

(declare-fun c!402863 () Bool)

(assert (=> d!718651 (= c!402863 (or (is-EmptyExpr!7514 (derivativeStep!2083 r!27340 c!14016)) (is-EmptyLang!7514 (derivativeStep!2083 r!27340 c!14016))))))

(assert (=> d!718651 (validRegex!3140 (derivativeStep!2083 r!27340 c!14016))))

(assert (=> d!718651 (= (derivativeStep!2083 (derivativeStep!2083 r!27340 c!14016) (h!34899 tl!4068)) lt!900251)))

(declare-fun e!1598265 () Regex!7514)

(declare-fun b!2524368 () Bool)

(assert (=> b!2524368 (= e!1598265 (ite (= (h!34899 tl!4068) (c!402670 (derivativeStep!2083 r!27340 c!14016))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun e!1598261 () Regex!7514)

(declare-fun b!2524369 () Bool)

(declare-fun call!157574 () Regex!7514)

(assert (=> b!2524369 (= e!1598261 (Concat!12210 call!157574 (derivativeStep!2083 r!27340 c!14016)))))

(declare-fun b!2524370 () Bool)

(declare-fun call!157576 () Regex!7514)

(declare-fun e!1598263 () Regex!7514)

(assert (=> b!2524370 (= e!1598263 (Union!7514 (Concat!12210 call!157576 (regTwo!15540 (derivativeStep!2083 r!27340 c!14016))) EmptyLang!7514))))

(declare-fun b!2524371 () Bool)

(declare-fun e!1598264 () Regex!7514)

(declare-fun call!157575 () Regex!7514)

(declare-fun call!157573 () Regex!7514)

(assert (=> b!2524371 (= e!1598264 (Union!7514 call!157575 call!157573))))

(declare-fun b!2524372 () Bool)

(assert (=> b!2524372 (= e!1598262 EmptyLang!7514)))

(declare-fun b!2524373 () Bool)

(assert (=> b!2524373 (= e!1598264 e!1598261)))

(declare-fun c!402866 () Bool)

(assert (=> b!2524373 (= c!402866 (is-Star!7514 (derivativeStep!2083 r!27340 c!14016)))))

(declare-fun bm!157568 () Bool)

(assert (=> bm!157568 (= call!157576 call!157574)))

(declare-fun b!2524374 () Bool)

(declare-fun c!402867 () Bool)

(assert (=> b!2524374 (= c!402867 (nullable!2431 (regOne!15540 (derivativeStep!2083 r!27340 c!14016))))))

(assert (=> b!2524374 (= e!1598261 e!1598263)))

(declare-fun b!2524375 () Bool)

(assert (=> b!2524375 (= e!1598263 (Union!7514 (Concat!12210 call!157576 (regTwo!15540 (derivativeStep!2083 r!27340 c!14016))) call!157573))))

(declare-fun b!2524376 () Bool)

(assert (=> b!2524376 (= e!1598262 e!1598265)))

(declare-fun c!402864 () Bool)

(assert (=> b!2524376 (= c!402864 (is-ElementMatch!7514 (derivativeStep!2083 r!27340 c!14016)))))

(declare-fun bm!157569 () Bool)

(declare-fun c!402865 () Bool)

(assert (=> bm!157569 (= call!157575 (derivativeStep!2083 (ite c!402865 (regOne!15541 (derivativeStep!2083 r!27340 c!14016)) (ite c!402866 (reg!7843 (derivativeStep!2083 r!27340 c!14016)) (regOne!15540 (derivativeStep!2083 r!27340 c!14016)))) (h!34899 tl!4068)))))

(declare-fun bm!157570 () Bool)

(assert (=> bm!157570 (= call!157573 (derivativeStep!2083 (ite c!402865 (regTwo!15541 (derivativeStep!2083 r!27340 c!14016)) (regTwo!15540 (derivativeStep!2083 r!27340 c!14016))) (h!34899 tl!4068)))))

(declare-fun bm!157571 () Bool)

(assert (=> bm!157571 (= call!157574 call!157575)))

(declare-fun b!2524377 () Bool)

(assert (=> b!2524377 (= c!402865 (is-Union!7514 (derivativeStep!2083 r!27340 c!14016)))))

(assert (=> b!2524377 (= e!1598265 e!1598264)))

(assert (= (and d!718651 c!402863) b!2524372))

(assert (= (and d!718651 (not c!402863)) b!2524376))

(assert (= (and b!2524376 c!402864) b!2524368))

(assert (= (and b!2524376 (not c!402864)) b!2524377))

(assert (= (and b!2524377 c!402865) b!2524371))

(assert (= (and b!2524377 (not c!402865)) b!2524373))

(assert (= (and b!2524373 c!402866) b!2524369))

(assert (= (and b!2524373 (not c!402866)) b!2524374))

(assert (= (and b!2524374 c!402867) b!2524375))

(assert (= (and b!2524374 (not c!402867)) b!2524370))

(assert (= (or b!2524375 b!2524370) bm!157568))

(assert (= (or b!2524369 bm!157568) bm!157571))

(assert (= (or b!2524371 b!2524375) bm!157570))

(assert (= (or b!2524371 bm!157571) bm!157569))

(declare-fun m!2878113 () Bool)

(assert (=> d!718651 m!2878113))

(assert (=> d!718651 m!2877489))

(assert (=> d!718651 m!2877589))

(declare-fun m!2878115 () Bool)

(assert (=> b!2524374 m!2878115))

(declare-fun m!2878117 () Bool)

(assert (=> bm!157569 m!2878117))

(declare-fun m!2878119 () Bool)

(assert (=> bm!157570 m!2878119))

(assert (=> b!2523671 d!718651))

(declare-fun b!2524378 () Bool)

(declare-fun e!1598269 () Bool)

(declare-fun e!1598266 () Bool)

(assert (=> b!2524378 (= e!1598269 e!1598266)))

(declare-fun res!1066426 () Bool)

(assert (=> b!2524378 (=> res!1066426 e!1598266)))

(declare-fun call!157577 () Bool)

(assert (=> b!2524378 (= res!1066426 call!157577)))

(declare-fun b!2524379 () Bool)

(assert (=> b!2524379 (= e!1598266 (not (= (head!5763 (tail!4040 (_1!17307 lt!900125))) (c!402670 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125)))))))))

(declare-fun b!2524381 () Bool)

(declare-fun e!1598268 () Bool)

(assert (=> b!2524381 (= e!1598268 (= (head!5763 (tail!4040 (_1!17307 lt!900125))) (c!402670 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125))))))))

(declare-fun bm!157572 () Bool)

(assert (=> bm!157572 (= call!157577 (isEmpty!16951 (tail!4040 (_1!17307 lt!900125))))))

(declare-fun b!2524382 () Bool)

(declare-fun res!1066422 () Bool)

(assert (=> b!2524382 (=> res!1066422 e!1598266)))

(assert (=> b!2524382 (= res!1066422 (not (isEmpty!16951 (tail!4040 (tail!4040 (_1!17307 lt!900125))))))))

(declare-fun b!2524383 () Bool)

(declare-fun res!1066425 () Bool)

(assert (=> b!2524383 (=> (not res!1066425) (not e!1598268))))

(assert (=> b!2524383 (= res!1066425 (isEmpty!16951 (tail!4040 (tail!4040 (_1!17307 lt!900125)))))))

(declare-fun b!2524384 () Bool)

(declare-fun e!1598272 () Bool)

(declare-fun e!1598270 () Bool)

(assert (=> b!2524384 (= e!1598272 e!1598270)))

(declare-fun c!402870 () Bool)

(assert (=> b!2524384 (= c!402870 (is-EmptyLang!7514 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125)))))))

(declare-fun b!2524385 () Bool)

(declare-fun e!1598271 () Bool)

(assert (=> b!2524385 (= e!1598271 e!1598269)))

(declare-fun res!1066423 () Bool)

(assert (=> b!2524385 (=> (not res!1066423) (not e!1598269))))

(declare-fun lt!900252 () Bool)

(assert (=> b!2524385 (= res!1066423 (not lt!900252))))

(declare-fun b!2524386 () Bool)

(assert (=> b!2524386 (= e!1598270 (not lt!900252))))

(declare-fun b!2524387 () Bool)

(assert (=> b!2524387 (= e!1598272 (= lt!900252 call!157577))))

(declare-fun d!718653 () Bool)

(assert (=> d!718653 e!1598272))

(declare-fun c!402869 () Bool)

(assert (=> d!718653 (= c!402869 (is-EmptyExpr!7514 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125)))))))

(declare-fun e!1598267 () Bool)

(assert (=> d!718653 (= lt!900252 e!1598267)))

(declare-fun c!402868 () Bool)

(assert (=> d!718653 (= c!402868 (isEmpty!16951 (tail!4040 (_1!17307 lt!900125))))))

(assert (=> d!718653 (validRegex!3140 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125))))))

(assert (=> d!718653 (= (matchR!3501 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125))) (tail!4040 (_1!17307 lt!900125))) lt!900252)))

(declare-fun b!2524380 () Bool)

(declare-fun res!1066428 () Bool)

(assert (=> b!2524380 (=> (not res!1066428) (not e!1598268))))

(assert (=> b!2524380 (= res!1066428 (not call!157577))))

(declare-fun b!2524388 () Bool)

(declare-fun res!1066427 () Bool)

(assert (=> b!2524388 (=> res!1066427 e!1598271)))

(assert (=> b!2524388 (= res!1066427 (not (is-ElementMatch!7514 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125))))))))

(assert (=> b!2524388 (= e!1598270 e!1598271)))

(declare-fun b!2524389 () Bool)

(assert (=> b!2524389 (= e!1598267 (nullable!2431 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125)))))))

(declare-fun b!2524390 () Bool)

(declare-fun res!1066424 () Bool)

(assert (=> b!2524390 (=> res!1066424 e!1598271)))

(assert (=> b!2524390 (= res!1066424 e!1598268)))

(declare-fun res!1066429 () Bool)

(assert (=> b!2524390 (=> (not res!1066429) (not e!1598268))))

(assert (=> b!2524390 (= res!1066429 lt!900252)))

(declare-fun b!2524391 () Bool)

(assert (=> b!2524391 (= e!1598267 (matchR!3501 (derivativeStep!2083 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125))) (head!5763 (tail!4040 (_1!17307 lt!900125)))) (tail!4040 (tail!4040 (_1!17307 lt!900125)))))))

(assert (= (and d!718653 c!402868) b!2524389))

(assert (= (and d!718653 (not c!402868)) b!2524391))

(assert (= (and d!718653 c!402869) b!2524387))

(assert (= (and d!718653 (not c!402869)) b!2524384))

(assert (= (and b!2524384 c!402870) b!2524386))

(assert (= (and b!2524384 (not c!402870)) b!2524388))

(assert (= (and b!2524388 (not res!1066427)) b!2524390))

(assert (= (and b!2524390 res!1066429) b!2524380))

(assert (= (and b!2524380 res!1066428) b!2524383))

(assert (= (and b!2524383 res!1066425) b!2524381))

(assert (= (and b!2524390 (not res!1066424)) b!2524385))

(assert (= (and b!2524385 res!1066423) b!2524378))

(assert (= (and b!2524378 (not res!1066426)) b!2524382))

(assert (= (and b!2524382 (not res!1066422)) b!2524379))

(assert (= (or b!2524387 b!2524378 b!2524380) bm!157572))

(assert (=> b!2524381 m!2877627))

(declare-fun m!2878121 () Bool)

(assert (=> b!2524381 m!2878121))

(assert (=> b!2524391 m!2877627))

(assert (=> b!2524391 m!2878121))

(assert (=> b!2524391 m!2877625))

(assert (=> b!2524391 m!2878121))

(declare-fun m!2878123 () Bool)

(assert (=> b!2524391 m!2878123))

(assert (=> b!2524391 m!2877627))

(declare-fun m!2878125 () Bool)

(assert (=> b!2524391 m!2878125))

(assert (=> b!2524391 m!2878123))

(assert (=> b!2524391 m!2878125))

(declare-fun m!2878127 () Bool)

(assert (=> b!2524391 m!2878127))

(assert (=> d!718653 m!2877627))

(assert (=> d!718653 m!2877637))

(assert (=> d!718653 m!2877625))

(declare-fun m!2878129 () Bool)

(assert (=> d!718653 m!2878129))

(assert (=> b!2524389 m!2877625))

(declare-fun m!2878131 () Bool)

(assert (=> b!2524389 m!2878131))

(assert (=> b!2524379 m!2877627))

(assert (=> b!2524379 m!2878121))

(assert (=> bm!157572 m!2877627))

(assert (=> bm!157572 m!2877637))

(assert (=> b!2524382 m!2877627))

(assert (=> b!2524382 m!2878125))

(assert (=> b!2524382 m!2878125))

(declare-fun m!2878133 () Bool)

(assert (=> b!2524382 m!2878133))

(assert (=> b!2524383 m!2877627))

(assert (=> b!2524383 m!2878125))

(assert (=> b!2524383 m!2878125))

(assert (=> b!2524383 m!2878133))

(assert (=> b!2523739 d!718653))

(declare-fun d!718655 () Bool)

(declare-fun lt!900253 () Regex!7514)

(assert (=> d!718655 (validRegex!3140 lt!900253)))

(declare-fun e!1598274 () Regex!7514)

(assert (=> d!718655 (= lt!900253 e!1598274)))

(declare-fun c!402871 () Bool)

(assert (=> d!718655 (= c!402871 (or (is-EmptyExpr!7514 lt!900119) (is-EmptyLang!7514 lt!900119)))))

(assert (=> d!718655 (validRegex!3140 lt!900119)))

(assert (=> d!718655 (= (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 lt!900125))) lt!900253)))

(declare-fun b!2524392 () Bool)

(declare-fun e!1598277 () Regex!7514)

(assert (=> b!2524392 (= e!1598277 (ite (= (head!5763 (_1!17307 lt!900125)) (c!402670 lt!900119)) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524393 () Bool)

(declare-fun e!1598273 () Regex!7514)

(declare-fun call!157579 () Regex!7514)

(assert (=> b!2524393 (= e!1598273 (Concat!12210 call!157579 lt!900119))))

(declare-fun b!2524394 () Bool)

(declare-fun e!1598275 () Regex!7514)

(declare-fun call!157581 () Regex!7514)

(assert (=> b!2524394 (= e!1598275 (Union!7514 (Concat!12210 call!157581 (regTwo!15540 lt!900119)) EmptyLang!7514))))

(declare-fun b!2524395 () Bool)

(declare-fun e!1598276 () Regex!7514)

(declare-fun call!157580 () Regex!7514)

(declare-fun call!157578 () Regex!7514)

(assert (=> b!2524395 (= e!1598276 (Union!7514 call!157580 call!157578))))

(declare-fun b!2524396 () Bool)

(assert (=> b!2524396 (= e!1598274 EmptyLang!7514)))

(declare-fun b!2524397 () Bool)

(assert (=> b!2524397 (= e!1598276 e!1598273)))

(declare-fun c!402874 () Bool)

(assert (=> b!2524397 (= c!402874 (is-Star!7514 lt!900119))))

(declare-fun bm!157573 () Bool)

(assert (=> bm!157573 (= call!157581 call!157579)))

(declare-fun b!2524398 () Bool)

(declare-fun c!402875 () Bool)

(assert (=> b!2524398 (= c!402875 (nullable!2431 (regOne!15540 lt!900119)))))

(assert (=> b!2524398 (= e!1598273 e!1598275)))

(declare-fun b!2524399 () Bool)

(assert (=> b!2524399 (= e!1598275 (Union!7514 (Concat!12210 call!157581 (regTwo!15540 lt!900119)) call!157578))))

(declare-fun b!2524400 () Bool)

(assert (=> b!2524400 (= e!1598274 e!1598277)))

(declare-fun c!402872 () Bool)

(assert (=> b!2524400 (= c!402872 (is-ElementMatch!7514 lt!900119))))

(declare-fun bm!157574 () Bool)

(declare-fun c!402873 () Bool)

(assert (=> bm!157574 (= call!157580 (derivativeStep!2083 (ite c!402873 (regOne!15541 lt!900119) (ite c!402874 (reg!7843 lt!900119) (regOne!15540 lt!900119))) (head!5763 (_1!17307 lt!900125))))))

(declare-fun bm!157575 () Bool)

(assert (=> bm!157575 (= call!157578 (derivativeStep!2083 (ite c!402873 (regTwo!15541 lt!900119) (regTwo!15540 lt!900119)) (head!5763 (_1!17307 lt!900125))))))

(declare-fun bm!157576 () Bool)

(assert (=> bm!157576 (= call!157579 call!157580)))

(declare-fun b!2524401 () Bool)

(assert (=> b!2524401 (= c!402873 (is-Union!7514 lt!900119))))

(assert (=> b!2524401 (= e!1598277 e!1598276)))

(assert (= (and d!718655 c!402871) b!2524396))

(assert (= (and d!718655 (not c!402871)) b!2524400))

(assert (= (and b!2524400 c!402872) b!2524392))

(assert (= (and b!2524400 (not c!402872)) b!2524401))

(assert (= (and b!2524401 c!402873) b!2524395))

(assert (= (and b!2524401 (not c!402873)) b!2524397))

(assert (= (and b!2524397 c!402874) b!2524393))

(assert (= (and b!2524397 (not c!402874)) b!2524398))

(assert (= (and b!2524398 c!402875) b!2524399))

(assert (= (and b!2524398 (not c!402875)) b!2524394))

(assert (= (or b!2524399 b!2524394) bm!157573))

(assert (= (or b!2524393 bm!157573) bm!157576))

(assert (= (or b!2524395 b!2524399) bm!157575))

(assert (= (or b!2524395 bm!157576) bm!157574))

(declare-fun m!2878135 () Bool)

(assert (=> d!718655 m!2878135))

(assert (=> d!718655 m!2877633))

(declare-fun m!2878137 () Bool)

(assert (=> b!2524398 m!2878137))

(assert (=> bm!157574 m!2877623))

(declare-fun m!2878139 () Bool)

(assert (=> bm!157574 m!2878139))

(assert (=> bm!157575 m!2877623))

(declare-fun m!2878141 () Bool)

(assert (=> bm!157575 m!2878141))

(assert (=> b!2523739 d!718655))

(assert (=> b!2523739 d!718583))

(assert (=> b!2523739 d!718595))

(declare-fun d!718657 () Bool)

(declare-fun c!402878 () Bool)

(assert (=> d!718657 (= c!402878 (is-Nil!29479 lt!900177))))

(declare-fun e!1598280 () (Set C!15186))

(assert (=> d!718657 (= (content!4043 lt!900177) e!1598280)))

(declare-fun b!2524406 () Bool)

(assert (=> b!2524406 (= e!1598280 (as set.empty (Set C!15186)))))

(declare-fun b!2524407 () Bool)

(assert (=> b!2524407 (= e!1598280 (set.union (set.insert (h!34899 lt!900177) (as set.empty (Set C!15186))) (content!4043 (t!211278 lt!900177))))))

(assert (= (and d!718657 c!402878) b!2524406))

(assert (= (and d!718657 (not c!402878)) b!2524407))

(declare-fun m!2878143 () Bool)

(assert (=> b!2524407 m!2878143))

(declare-fun m!2878145 () Bool)

(assert (=> b!2524407 m!2878145))

(assert (=> d!718509 d!718657))

(declare-fun d!718659 () Bool)

(declare-fun c!402879 () Bool)

(assert (=> d!718659 (= c!402879 (is-Nil!29479 (_1!17307 lt!900125)))))

(declare-fun e!1598281 () (Set C!15186))

(assert (=> d!718659 (= (content!4043 (_1!17307 lt!900125)) e!1598281)))

(declare-fun b!2524408 () Bool)

(assert (=> b!2524408 (= e!1598281 (as set.empty (Set C!15186)))))

(declare-fun b!2524409 () Bool)

(assert (=> b!2524409 (= e!1598281 (set.union (set.insert (h!34899 (_1!17307 lt!900125)) (as set.empty (Set C!15186))) (content!4043 (t!211278 (_1!17307 lt!900125)))))))

(assert (= (and d!718659 c!402879) b!2524408))

(assert (= (and d!718659 (not c!402879)) b!2524409))

(declare-fun m!2878147 () Bool)

(assert (=> b!2524409 m!2878147))

(declare-fun m!2878149 () Bool)

(assert (=> b!2524409 m!2878149))

(assert (=> d!718509 d!718659))

(declare-fun d!718661 () Bool)

(declare-fun c!402880 () Bool)

(assert (=> d!718661 (= c!402880 (is-Nil!29479 (_2!17307 lt!900125)))))

(declare-fun e!1598282 () (Set C!15186))

(assert (=> d!718661 (= (content!4043 (_2!17307 lt!900125)) e!1598282)))

(declare-fun b!2524410 () Bool)

(assert (=> b!2524410 (= e!1598282 (as set.empty (Set C!15186)))))

(declare-fun b!2524411 () Bool)

(assert (=> b!2524411 (= e!1598282 (set.union (set.insert (h!34899 (_2!17307 lt!900125)) (as set.empty (Set C!15186))) (content!4043 (t!211278 (_2!17307 lt!900125)))))))

(assert (= (and d!718661 c!402880) b!2524410))

(assert (= (and d!718661 (not c!402880)) b!2524411))

(declare-fun m!2878151 () Bool)

(assert (=> b!2524411 m!2878151))

(declare-fun m!2878153 () Bool)

(assert (=> b!2524411 m!2878153))

(assert (=> d!718509 d!718661))

(assert (=> b!2523717 d!718611))

(assert (=> b!2523717 d!718581))

(declare-fun b!2524412 () Bool)

(declare-fun e!1598286 () Bool)

(declare-fun e!1598283 () Bool)

(assert (=> b!2524412 (= e!1598286 e!1598283)))

(declare-fun res!1066434 () Bool)

(assert (=> b!2524412 (=> res!1066434 e!1598283)))

(declare-fun call!157582 () Bool)

(assert (=> b!2524412 (= res!1066434 call!157582)))

(declare-fun b!2524413 () Bool)

(assert (=> b!2524413 (= e!1598283 (not (= (head!5763 (_1!17307 (get!9221 lt!900188))) (c!402670 lt!900119))))))

(declare-fun b!2524415 () Bool)

(declare-fun e!1598285 () Bool)

(assert (=> b!2524415 (= e!1598285 (= (head!5763 (_1!17307 (get!9221 lt!900188))) (c!402670 lt!900119)))))

(declare-fun bm!157577 () Bool)

(assert (=> bm!157577 (= call!157582 (isEmpty!16951 (_1!17307 (get!9221 lt!900188))))))

(declare-fun b!2524416 () Bool)

(declare-fun res!1066430 () Bool)

(assert (=> b!2524416 (=> res!1066430 e!1598283)))

(assert (=> b!2524416 (= res!1066430 (not (isEmpty!16951 (tail!4040 (_1!17307 (get!9221 lt!900188))))))))

(declare-fun b!2524417 () Bool)

(declare-fun res!1066433 () Bool)

(assert (=> b!2524417 (=> (not res!1066433) (not e!1598285))))

(assert (=> b!2524417 (= res!1066433 (isEmpty!16951 (tail!4040 (_1!17307 (get!9221 lt!900188)))))))

(declare-fun b!2524418 () Bool)

(declare-fun e!1598289 () Bool)

(declare-fun e!1598287 () Bool)

(assert (=> b!2524418 (= e!1598289 e!1598287)))

(declare-fun c!402883 () Bool)

(assert (=> b!2524418 (= c!402883 (is-EmptyLang!7514 lt!900119))))

(declare-fun b!2524419 () Bool)

(declare-fun e!1598288 () Bool)

(assert (=> b!2524419 (= e!1598288 e!1598286)))

(declare-fun res!1066431 () Bool)

(assert (=> b!2524419 (=> (not res!1066431) (not e!1598286))))

(declare-fun lt!900254 () Bool)

(assert (=> b!2524419 (= res!1066431 (not lt!900254))))

(declare-fun b!2524420 () Bool)

(assert (=> b!2524420 (= e!1598287 (not lt!900254))))

(declare-fun b!2524421 () Bool)

(assert (=> b!2524421 (= e!1598289 (= lt!900254 call!157582))))

(declare-fun d!718663 () Bool)

(assert (=> d!718663 e!1598289))

(declare-fun c!402882 () Bool)

(assert (=> d!718663 (= c!402882 (is-EmptyExpr!7514 lt!900119))))

(declare-fun e!1598284 () Bool)

(assert (=> d!718663 (= lt!900254 e!1598284)))

(declare-fun c!402881 () Bool)

(assert (=> d!718663 (= c!402881 (isEmpty!16951 (_1!17307 (get!9221 lt!900188))))))

(assert (=> d!718663 (validRegex!3140 lt!900119)))

(assert (=> d!718663 (= (matchR!3501 lt!900119 (_1!17307 (get!9221 lt!900188))) lt!900254)))

(declare-fun b!2524414 () Bool)

(declare-fun res!1066436 () Bool)

(assert (=> b!2524414 (=> (not res!1066436) (not e!1598285))))

(assert (=> b!2524414 (= res!1066436 (not call!157582))))

(declare-fun b!2524422 () Bool)

(declare-fun res!1066435 () Bool)

(assert (=> b!2524422 (=> res!1066435 e!1598288)))

(assert (=> b!2524422 (= res!1066435 (not (is-ElementMatch!7514 lt!900119)))))

(assert (=> b!2524422 (= e!1598287 e!1598288)))

(declare-fun b!2524423 () Bool)

(assert (=> b!2524423 (= e!1598284 (nullable!2431 lt!900119))))

(declare-fun b!2524424 () Bool)

(declare-fun res!1066432 () Bool)

(assert (=> b!2524424 (=> res!1066432 e!1598288)))

(assert (=> b!2524424 (= res!1066432 e!1598285)))

(declare-fun res!1066437 () Bool)

(assert (=> b!2524424 (=> (not res!1066437) (not e!1598285))))

(assert (=> b!2524424 (= res!1066437 lt!900254)))

(declare-fun b!2524425 () Bool)

(assert (=> b!2524425 (= e!1598284 (matchR!3501 (derivativeStep!2083 lt!900119 (head!5763 (_1!17307 (get!9221 lt!900188)))) (tail!4040 (_1!17307 (get!9221 lt!900188)))))))

(assert (= (and d!718663 c!402881) b!2524423))

(assert (= (and d!718663 (not c!402881)) b!2524425))

(assert (= (and d!718663 c!402882) b!2524421))

(assert (= (and d!718663 (not c!402882)) b!2524418))

(assert (= (and b!2524418 c!402883) b!2524420))

(assert (= (and b!2524418 (not c!402883)) b!2524422))

(assert (= (and b!2524422 (not res!1066435)) b!2524424))

(assert (= (and b!2524424 res!1066437) b!2524414))

(assert (= (and b!2524414 res!1066436) b!2524417))

(assert (= (and b!2524417 res!1066433) b!2524415))

(assert (= (and b!2524424 (not res!1066432)) b!2524419))

(assert (= (and b!2524419 res!1066431) b!2524412))

(assert (= (and b!2524412 (not res!1066434)) b!2524416))

(assert (= (and b!2524416 (not res!1066430)) b!2524413))

(assert (= (or b!2524421 b!2524412 b!2524414) bm!157577))

(declare-fun m!2878155 () Bool)

(assert (=> b!2524415 m!2878155))

(assert (=> b!2524425 m!2878155))

(assert (=> b!2524425 m!2878155))

(declare-fun m!2878157 () Bool)

(assert (=> b!2524425 m!2878157))

(declare-fun m!2878159 () Bool)

(assert (=> b!2524425 m!2878159))

(assert (=> b!2524425 m!2878157))

(assert (=> b!2524425 m!2878159))

(declare-fun m!2878161 () Bool)

(assert (=> b!2524425 m!2878161))

(declare-fun m!2878163 () Bool)

(assert (=> d!718663 m!2878163))

(assert (=> d!718663 m!2877633))

(assert (=> b!2524423 m!2877635))

(assert (=> b!2524413 m!2878155))

(assert (=> bm!157577 m!2878163))

(assert (=> b!2524416 m!2878159))

(assert (=> b!2524416 m!2878159))

(declare-fun m!2878165 () Bool)

(assert (=> b!2524416 m!2878165))

(assert (=> b!2524417 m!2878159))

(assert (=> b!2524417 m!2878159))

(assert (=> b!2524417 m!2878165))

(assert (=> b!2523874 d!718663))

(declare-fun d!718665 () Bool)

(assert (=> d!718665 (= (get!9221 lt!900188) (v!31817 lt!900188))))

(assert (=> b!2523874 d!718665))

(declare-fun d!718667 () Bool)

(assert (=> d!718667 (= (isEmpty!16951 Nil!29479) true)))

(assert (=> d!718537 d!718667))

(declare-fun bm!157578 () Bool)

(declare-fun call!157584 () Bool)

(declare-fun call!157583 () Bool)

(assert (=> bm!157578 (= call!157584 call!157583)))

(declare-fun b!2524426 () Bool)

(declare-fun e!1598296 () Bool)

(declare-fun e!1598293 () Bool)

(assert (=> b!2524426 (= e!1598296 e!1598293)))

(declare-fun res!1066438 () Bool)

(assert (=> b!2524426 (= res!1066438 (not (nullable!2431 (reg!7843 (derivative!209 lt!900126 tl!4068)))))))

(assert (=> b!2524426 (=> (not res!1066438) (not e!1598293))))

(declare-fun b!2524427 () Bool)

(declare-fun e!1598291 () Bool)

(assert (=> b!2524427 (= e!1598291 e!1598296)))

(declare-fun c!402885 () Bool)

(assert (=> b!2524427 (= c!402885 (is-Star!7514 (derivative!209 lt!900126 tl!4068)))))

(declare-fun d!718669 () Bool)

(declare-fun res!1066442 () Bool)

(assert (=> d!718669 (=> res!1066442 e!1598291)))

(assert (=> d!718669 (= res!1066442 (is-ElementMatch!7514 (derivative!209 lt!900126 tl!4068)))))

(assert (=> d!718669 (= (validRegex!3140 (derivative!209 lt!900126 tl!4068)) e!1598291)))

(declare-fun c!402884 () Bool)

(declare-fun bm!157579 () Bool)

(assert (=> bm!157579 (= call!157583 (validRegex!3140 (ite c!402885 (reg!7843 (derivative!209 lt!900126 tl!4068)) (ite c!402884 (regTwo!15541 (derivative!209 lt!900126 tl!4068)) (regOne!15540 (derivative!209 lt!900126 tl!4068))))))))

(declare-fun b!2524428 () Bool)

(declare-fun res!1066441 () Bool)

(declare-fun e!1598295 () Bool)

(assert (=> b!2524428 (=> res!1066441 e!1598295)))

(assert (=> b!2524428 (= res!1066441 (not (is-Concat!12210 (derivative!209 lt!900126 tl!4068))))))

(declare-fun e!1598290 () Bool)

(assert (=> b!2524428 (= e!1598290 e!1598295)))

(declare-fun b!2524429 () Bool)

(declare-fun e!1598292 () Bool)

(declare-fun call!157585 () Bool)

(assert (=> b!2524429 (= e!1598292 call!157585)))

(declare-fun b!2524430 () Bool)

(declare-fun res!1066439 () Bool)

(declare-fun e!1598294 () Bool)

(assert (=> b!2524430 (=> (not res!1066439) (not e!1598294))))

(assert (=> b!2524430 (= res!1066439 call!157585)))

(assert (=> b!2524430 (= e!1598290 e!1598294)))

(declare-fun b!2524431 () Bool)

(assert (=> b!2524431 (= e!1598295 e!1598292)))

(declare-fun res!1066440 () Bool)

(assert (=> b!2524431 (=> (not res!1066440) (not e!1598292))))

(assert (=> b!2524431 (= res!1066440 call!157584)))

(declare-fun bm!157580 () Bool)

(assert (=> bm!157580 (= call!157585 (validRegex!3140 (ite c!402884 (regOne!15541 (derivative!209 lt!900126 tl!4068)) (regTwo!15540 (derivative!209 lt!900126 tl!4068)))))))

(declare-fun b!2524432 () Bool)

(assert (=> b!2524432 (= e!1598296 e!1598290)))

(assert (=> b!2524432 (= c!402884 (is-Union!7514 (derivative!209 lt!900126 tl!4068)))))

(declare-fun b!2524433 () Bool)

(assert (=> b!2524433 (= e!1598293 call!157583)))

(declare-fun b!2524434 () Bool)

(assert (=> b!2524434 (= e!1598294 call!157584)))

(assert (= (and d!718669 (not res!1066442)) b!2524427))

(assert (= (and b!2524427 c!402885) b!2524426))

(assert (= (and b!2524427 (not c!402885)) b!2524432))

(assert (= (and b!2524426 res!1066438) b!2524433))

(assert (= (and b!2524432 c!402884) b!2524430))

(assert (= (and b!2524432 (not c!402884)) b!2524428))

(assert (= (and b!2524430 res!1066439) b!2524434))

(assert (= (and b!2524428 (not res!1066441)) b!2524431))

(assert (= (and b!2524431 res!1066440) b!2524429))

(assert (= (or b!2524430 b!2524429) bm!157580))

(assert (= (or b!2524434 b!2524431) bm!157578))

(assert (= (or b!2524433 bm!157578) bm!157579))

(declare-fun m!2878167 () Bool)

(assert (=> b!2524426 m!2878167))

(declare-fun m!2878169 () Bool)

(assert (=> bm!157579 m!2878169))

(declare-fun m!2878171 () Bool)

(assert (=> bm!157580 m!2878171))

(assert (=> d!718537 d!718669))

(declare-fun d!718671 () Bool)

(assert (=> d!718671 (= (head!5763 (_2!17307 lt!900125)) (h!34899 (_2!17307 lt!900125)))))

(assert (=> b!2523654 d!718671))

(assert (=> b!2523919 d!718579))

(declare-fun d!718673 () Bool)

(assert (=> d!718673 (= (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125))) (h!34899 (Cons!29479 c!14016 (_1!17307 lt!900125))))))

(assert (=> b!2523796 d!718673))

(assert (=> b!2523887 d!718499))

(assert (=> bm!157492 d!718667))

(declare-fun d!718675 () Bool)

(assert (=> d!718675 (= (nullable!2431 lt!900119) (nullableFct!673 lt!900119))))

(declare-fun bs!469059 () Bool)

(assert (= bs!469059 d!718675))

(declare-fun m!2878173 () Bool)

(assert (=> bs!469059 m!2878173))

(assert (=> b!2523737 d!718675))

(declare-fun d!718677 () Bool)

(declare-fun lt!900255 () Regex!7514)

(assert (=> d!718677 (validRegex!3140 lt!900255)))

(declare-fun e!1598298 () Regex!7514)

(assert (=> d!718677 (= lt!900255 e!1598298)))

(declare-fun c!402886 () Bool)

(assert (=> d!718677 (= c!402886 (or (is-EmptyExpr!7514 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))) (is-EmptyLang!7514 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))))))))

(assert (=> d!718677 (validRegex!3140 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))))))

(assert (=> d!718677 (= (derivativeStep!2083 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))) c!14016) lt!900255)))

(declare-fun e!1598301 () Regex!7514)

(declare-fun b!2524435 () Bool)

(assert (=> b!2524435 (= e!1598301 (ite (= c!14016 (c!402670 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524436 () Bool)

(declare-fun e!1598297 () Regex!7514)

(declare-fun call!157587 () Regex!7514)

(assert (=> b!2524436 (= e!1598297 (Concat!12210 call!157587 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))))))

(declare-fun call!157589 () Regex!7514)

(declare-fun b!2524437 () Bool)

(declare-fun e!1598299 () Regex!7514)

(assert (=> b!2524437 (= e!1598299 (Union!7514 (Concat!12210 call!157589 (regTwo!15540 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))))) EmptyLang!7514))))

(declare-fun b!2524438 () Bool)

(declare-fun e!1598300 () Regex!7514)

(declare-fun call!157588 () Regex!7514)

(declare-fun call!157586 () Regex!7514)

(assert (=> b!2524438 (= e!1598300 (Union!7514 call!157588 call!157586))))

(declare-fun b!2524439 () Bool)

(assert (=> b!2524439 (= e!1598298 EmptyLang!7514)))

(declare-fun b!2524440 () Bool)

(assert (=> b!2524440 (= e!1598300 e!1598297)))

(declare-fun c!402889 () Bool)

(assert (=> b!2524440 (= c!402889 (is-Star!7514 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))))))

(declare-fun bm!157581 () Bool)

(assert (=> bm!157581 (= call!157589 call!157587)))

(declare-fun c!402890 () Bool)

(declare-fun b!2524441 () Bool)

(assert (=> b!2524441 (= c!402890 (nullable!2431 (regOne!15540 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))))))))

(assert (=> b!2524441 (= e!1598297 e!1598299)))

(declare-fun b!2524442 () Bool)

(assert (=> b!2524442 (= e!1598299 (Union!7514 (Concat!12210 call!157589 (regTwo!15540 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))))) call!157586))))

(declare-fun b!2524443 () Bool)

(assert (=> b!2524443 (= e!1598298 e!1598301)))

(declare-fun c!402887 () Bool)

(assert (=> b!2524443 (= c!402887 (is-ElementMatch!7514 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))))))

(declare-fun c!402888 () Bool)

(declare-fun bm!157582 () Bool)

(assert (=> bm!157582 (= call!157588 (derivativeStep!2083 (ite c!402888 (regOne!15541 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))) (ite c!402889 (reg!7843 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))) (regOne!15540 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))))) c!14016))))

(declare-fun bm!157583 () Bool)

(assert (=> bm!157583 (= call!157586 (derivativeStep!2083 (ite c!402888 (regTwo!15541 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))) (regTwo!15540 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))))) c!14016))))

(declare-fun bm!157584 () Bool)

(assert (=> bm!157584 (= call!157587 call!157588)))

(declare-fun b!2524444 () Bool)

(assert (=> b!2524444 (= c!402888 (is-Union!7514 (ite c!402763 (regOne!15541 (regOne!15540 r!27340)) (ite c!402764 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340))))))))

(assert (=> b!2524444 (= e!1598301 e!1598300)))

(assert (= (and d!718677 c!402886) b!2524439))

(assert (= (and d!718677 (not c!402886)) b!2524443))

(assert (= (and b!2524443 c!402887) b!2524435))

(assert (= (and b!2524443 (not c!402887)) b!2524444))

(assert (= (and b!2524444 c!402888) b!2524438))

(assert (= (and b!2524444 (not c!402888)) b!2524440))

(assert (= (and b!2524440 c!402889) b!2524436))

(assert (= (and b!2524440 (not c!402889)) b!2524441))

(assert (= (and b!2524441 c!402890) b!2524442))

(assert (= (and b!2524441 (not c!402890)) b!2524437))

(assert (= (or b!2524442 b!2524437) bm!157581))

(assert (= (or b!2524436 bm!157581) bm!157584))

(assert (= (or b!2524438 b!2524442) bm!157583))

(assert (= (or b!2524438 bm!157584) bm!157582))

(declare-fun m!2878175 () Bool)

(assert (=> d!718677 m!2878175))

(declare-fun m!2878177 () Bool)

(assert (=> d!718677 m!2878177))

(declare-fun m!2878179 () Bool)

(assert (=> b!2524441 m!2878179))

(declare-fun m!2878181 () Bool)

(assert (=> bm!157582 m!2878181))

(declare-fun m!2878183 () Bool)

(assert (=> bm!157583 m!2878183))

(assert (=> bm!157498 d!718677))

(declare-fun d!718679 () Bool)

(assert (=> d!718679 (= (isEmpty!16951 (tail!4040 (_2!17307 lt!900125))) (is-Nil!29479 (tail!4040 (_2!17307 lt!900125))))))

(assert (=> b!2523657 d!718679))

(declare-fun d!718681 () Bool)

(assert (=> d!718681 (= (tail!4040 (_2!17307 lt!900125)) (t!211278 (_2!17307 lt!900125)))))

(assert (=> b!2523657 d!718681))

(assert (=> b!2523922 d!718611))

(assert (=> b!2523922 d!718581))

(declare-fun d!718683 () Bool)

(assert (=> d!718683 (= (isEmpty!16951 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))) (is-Nil!29479 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))

(assert (=> b!2523799 d!718683))

(declare-fun d!718685 () Bool)

(assert (=> d!718685 (= (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125))) (t!211278 (Cons!29479 c!14016 (_1!17307 lt!900125))))))

(assert (=> b!2523799 d!718685))

(assert (=> b!2523656 d!718671))

(assert (=> b!2523921 d!718579))

(assert (=> b!2523798 d!718673))

(assert (=> d!718499 d!718613))

(declare-fun bm!157585 () Bool)

(declare-fun call!157591 () Bool)

(declare-fun call!157590 () Bool)

(assert (=> bm!157585 (= call!157591 call!157590)))

(declare-fun b!2524445 () Bool)

(declare-fun e!1598308 () Bool)

(declare-fun e!1598305 () Bool)

(assert (=> b!2524445 (= e!1598308 e!1598305)))

(declare-fun res!1066443 () Bool)

(assert (=> b!2524445 (= res!1066443 (not (nullable!2431 (reg!7843 lt!900123))))))

(assert (=> b!2524445 (=> (not res!1066443) (not e!1598305))))

(declare-fun b!2524446 () Bool)

(declare-fun e!1598303 () Bool)

(assert (=> b!2524446 (= e!1598303 e!1598308)))

(declare-fun c!402892 () Bool)

(assert (=> b!2524446 (= c!402892 (is-Star!7514 lt!900123))))

(declare-fun d!718687 () Bool)

(declare-fun res!1066447 () Bool)

(assert (=> d!718687 (=> res!1066447 e!1598303)))

(assert (=> d!718687 (= res!1066447 (is-ElementMatch!7514 lt!900123))))

(assert (=> d!718687 (= (validRegex!3140 lt!900123) e!1598303)))

(declare-fun c!402891 () Bool)

(declare-fun bm!157586 () Bool)

(assert (=> bm!157586 (= call!157590 (validRegex!3140 (ite c!402892 (reg!7843 lt!900123) (ite c!402891 (regTwo!15541 lt!900123) (regOne!15540 lt!900123)))))))

(declare-fun b!2524447 () Bool)

(declare-fun res!1066446 () Bool)

(declare-fun e!1598307 () Bool)

(assert (=> b!2524447 (=> res!1066446 e!1598307)))

(assert (=> b!2524447 (= res!1066446 (not (is-Concat!12210 lt!900123)))))

(declare-fun e!1598302 () Bool)

(assert (=> b!2524447 (= e!1598302 e!1598307)))

(declare-fun b!2524448 () Bool)

(declare-fun e!1598304 () Bool)

(declare-fun call!157592 () Bool)

(assert (=> b!2524448 (= e!1598304 call!157592)))

(declare-fun b!2524449 () Bool)

(declare-fun res!1066444 () Bool)

(declare-fun e!1598306 () Bool)

(assert (=> b!2524449 (=> (not res!1066444) (not e!1598306))))

(assert (=> b!2524449 (= res!1066444 call!157592)))

(assert (=> b!2524449 (= e!1598302 e!1598306)))

(declare-fun b!2524450 () Bool)

(assert (=> b!2524450 (= e!1598307 e!1598304)))

(declare-fun res!1066445 () Bool)

(assert (=> b!2524450 (=> (not res!1066445) (not e!1598304))))

(assert (=> b!2524450 (= res!1066445 call!157591)))

(declare-fun bm!157587 () Bool)

(assert (=> bm!157587 (= call!157592 (validRegex!3140 (ite c!402891 (regOne!15541 lt!900123) (regTwo!15540 lt!900123))))))

(declare-fun b!2524451 () Bool)

(assert (=> b!2524451 (= e!1598308 e!1598302)))

(assert (=> b!2524451 (= c!402891 (is-Union!7514 lt!900123))))

(declare-fun b!2524452 () Bool)

(assert (=> b!2524452 (= e!1598305 call!157590)))

(declare-fun b!2524453 () Bool)

(assert (=> b!2524453 (= e!1598306 call!157591)))

(assert (= (and d!718687 (not res!1066447)) b!2524446))

(assert (= (and b!2524446 c!402892) b!2524445))

(assert (= (and b!2524446 (not c!402892)) b!2524451))

(assert (= (and b!2524445 res!1066443) b!2524452))

(assert (= (and b!2524451 c!402891) b!2524449))

(assert (= (and b!2524451 (not c!402891)) b!2524447))

(assert (= (and b!2524449 res!1066444) b!2524453))

(assert (= (and b!2524447 (not res!1066446)) b!2524450))

(assert (= (and b!2524450 res!1066445) b!2524448))

(assert (= (or b!2524449 b!2524448) bm!157587))

(assert (= (or b!2524453 b!2524450) bm!157585))

(assert (= (or b!2524452 bm!157585) bm!157586))

(declare-fun m!2878185 () Bool)

(assert (=> b!2524445 m!2878185))

(declare-fun m!2878187 () Bool)

(assert (=> bm!157586 m!2878187))

(declare-fun m!2878189 () Bool)

(assert (=> bm!157587 m!2878189))

(assert (=> d!718499 d!718687))

(declare-fun d!718689 () Bool)

(assert (=> d!718689 (= (isEmpty!16951 (_2!17307 lt!900125)) (is-Nil!29479 (_2!17307 lt!900125)))))

(assert (=> d!718487 d!718689))

(declare-fun bm!157588 () Bool)

(declare-fun call!157594 () Bool)

(declare-fun call!157593 () Bool)

(assert (=> bm!157588 (= call!157594 call!157593)))

(declare-fun b!2524454 () Bool)

(declare-fun e!1598315 () Bool)

(declare-fun e!1598312 () Bool)

(assert (=> b!2524454 (= e!1598315 e!1598312)))

(declare-fun res!1066448 () Bool)

(assert (=> b!2524454 (= res!1066448 (not (nullable!2431 (reg!7843 (regTwo!15540 r!27340)))))))

(assert (=> b!2524454 (=> (not res!1066448) (not e!1598312))))

(declare-fun b!2524455 () Bool)

(declare-fun e!1598310 () Bool)

(assert (=> b!2524455 (= e!1598310 e!1598315)))

(declare-fun c!402894 () Bool)

(assert (=> b!2524455 (= c!402894 (is-Star!7514 (regTwo!15540 r!27340)))))

(declare-fun d!718691 () Bool)

(declare-fun res!1066452 () Bool)

(assert (=> d!718691 (=> res!1066452 e!1598310)))

(assert (=> d!718691 (= res!1066452 (is-ElementMatch!7514 (regTwo!15540 r!27340)))))

(assert (=> d!718691 (= (validRegex!3140 (regTwo!15540 r!27340)) e!1598310)))

(declare-fun c!402893 () Bool)

(declare-fun bm!157589 () Bool)

(assert (=> bm!157589 (= call!157593 (validRegex!3140 (ite c!402894 (reg!7843 (regTwo!15540 r!27340)) (ite c!402893 (regTwo!15541 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340))))))))

(declare-fun b!2524456 () Bool)

(declare-fun res!1066451 () Bool)

(declare-fun e!1598314 () Bool)

(assert (=> b!2524456 (=> res!1066451 e!1598314)))

(assert (=> b!2524456 (= res!1066451 (not (is-Concat!12210 (regTwo!15540 r!27340))))))

(declare-fun e!1598309 () Bool)

(assert (=> b!2524456 (= e!1598309 e!1598314)))

(declare-fun b!2524457 () Bool)

(declare-fun e!1598311 () Bool)

(declare-fun call!157595 () Bool)

(assert (=> b!2524457 (= e!1598311 call!157595)))

(declare-fun b!2524458 () Bool)

(declare-fun res!1066449 () Bool)

(declare-fun e!1598313 () Bool)

(assert (=> b!2524458 (=> (not res!1066449) (not e!1598313))))

(assert (=> b!2524458 (= res!1066449 call!157595)))

(assert (=> b!2524458 (= e!1598309 e!1598313)))

(declare-fun b!2524459 () Bool)

(assert (=> b!2524459 (= e!1598314 e!1598311)))

(declare-fun res!1066450 () Bool)

(assert (=> b!2524459 (=> (not res!1066450) (not e!1598311))))

(assert (=> b!2524459 (= res!1066450 call!157594)))

(declare-fun bm!157590 () Bool)

(assert (=> bm!157590 (= call!157595 (validRegex!3140 (ite c!402893 (regOne!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))))))

(declare-fun b!2524460 () Bool)

(assert (=> b!2524460 (= e!1598315 e!1598309)))

(assert (=> b!2524460 (= c!402893 (is-Union!7514 (regTwo!15540 r!27340)))))

(declare-fun b!2524461 () Bool)

(assert (=> b!2524461 (= e!1598312 call!157593)))

(declare-fun b!2524462 () Bool)

(assert (=> b!2524462 (= e!1598313 call!157594)))

(assert (= (and d!718691 (not res!1066452)) b!2524455))

(assert (= (and b!2524455 c!402894) b!2524454))

(assert (= (and b!2524455 (not c!402894)) b!2524460))

(assert (= (and b!2524454 res!1066448) b!2524461))

(assert (= (and b!2524460 c!402893) b!2524458))

(assert (= (and b!2524460 (not c!402893)) b!2524456))

(assert (= (and b!2524458 res!1066449) b!2524462))

(assert (= (and b!2524456 (not res!1066451)) b!2524459))

(assert (= (and b!2524459 res!1066450) b!2524457))

(assert (= (or b!2524458 b!2524457) bm!157590))

(assert (= (or b!2524462 b!2524459) bm!157588))

(assert (= (or b!2524461 bm!157588) bm!157589))

(declare-fun m!2878191 () Bool)

(assert (=> b!2524454 m!2878191))

(declare-fun m!2878193 () Bool)

(assert (=> bm!157589 m!2878193))

(declare-fun m!2878195 () Bool)

(assert (=> bm!157590 m!2878195))

(assert (=> d!718487 d!718691))

(declare-fun d!718693 () Bool)

(assert (=> d!718693 (= (nullable!2431 (reg!7843 r!27340)) (nullableFct!673 (reg!7843 r!27340)))))

(declare-fun bs!469060 () Bool)

(assert (= bs!469060 d!718693))

(declare-fun m!2878197 () Bool)

(assert (=> bs!469060 m!2878197))

(assert (=> b!2523786 d!718693))

(declare-fun d!718695 () Bool)

(assert (=> d!718695 (= (isEmpty!16952 lt!900120) (not (is-Some!5884 lt!900120)))))

(assert (=> d!718521 d!718695))

(declare-fun b!2524463 () Bool)

(declare-fun e!1598319 () Bool)

(declare-fun e!1598316 () Bool)

(assert (=> b!2524463 (= e!1598319 e!1598316)))

(declare-fun res!1066457 () Bool)

(assert (=> b!2524463 (=> res!1066457 e!1598316)))

(declare-fun call!157596 () Bool)

(assert (=> b!2524463 (= res!1066457 call!157596)))

(declare-fun b!2524464 () Bool)

(assert (=> b!2524464 (= e!1598316 (not (= (head!5763 (_2!17307 (get!9221 lt!900188))) (c!402670 (regTwo!15540 r!27340)))))))

(declare-fun b!2524466 () Bool)

(declare-fun e!1598318 () Bool)

(assert (=> b!2524466 (= e!1598318 (= (head!5763 (_2!17307 (get!9221 lt!900188))) (c!402670 (regTwo!15540 r!27340))))))

(declare-fun bm!157591 () Bool)

(assert (=> bm!157591 (= call!157596 (isEmpty!16951 (_2!17307 (get!9221 lt!900188))))))

(declare-fun b!2524467 () Bool)

(declare-fun res!1066453 () Bool)

(assert (=> b!2524467 (=> res!1066453 e!1598316)))

(assert (=> b!2524467 (= res!1066453 (not (isEmpty!16951 (tail!4040 (_2!17307 (get!9221 lt!900188))))))))

(declare-fun b!2524468 () Bool)

(declare-fun res!1066456 () Bool)

(assert (=> b!2524468 (=> (not res!1066456) (not e!1598318))))

(assert (=> b!2524468 (= res!1066456 (isEmpty!16951 (tail!4040 (_2!17307 (get!9221 lt!900188)))))))

(declare-fun b!2524469 () Bool)

(declare-fun e!1598322 () Bool)

(declare-fun e!1598320 () Bool)

(assert (=> b!2524469 (= e!1598322 e!1598320)))

(declare-fun c!402897 () Bool)

(assert (=> b!2524469 (= c!402897 (is-EmptyLang!7514 (regTwo!15540 r!27340)))))

(declare-fun b!2524470 () Bool)

(declare-fun e!1598321 () Bool)

(assert (=> b!2524470 (= e!1598321 e!1598319)))

(declare-fun res!1066454 () Bool)

(assert (=> b!2524470 (=> (not res!1066454) (not e!1598319))))

(declare-fun lt!900256 () Bool)

(assert (=> b!2524470 (= res!1066454 (not lt!900256))))

(declare-fun b!2524471 () Bool)

(assert (=> b!2524471 (= e!1598320 (not lt!900256))))

(declare-fun b!2524472 () Bool)

(assert (=> b!2524472 (= e!1598322 (= lt!900256 call!157596))))

(declare-fun d!718697 () Bool)

(assert (=> d!718697 e!1598322))

(declare-fun c!402896 () Bool)

(assert (=> d!718697 (= c!402896 (is-EmptyExpr!7514 (regTwo!15540 r!27340)))))

(declare-fun e!1598317 () Bool)

(assert (=> d!718697 (= lt!900256 e!1598317)))

(declare-fun c!402895 () Bool)

(assert (=> d!718697 (= c!402895 (isEmpty!16951 (_2!17307 (get!9221 lt!900188))))))

(assert (=> d!718697 (validRegex!3140 (regTwo!15540 r!27340))))

(assert (=> d!718697 (= (matchR!3501 (regTwo!15540 r!27340) (_2!17307 (get!9221 lt!900188))) lt!900256)))

(declare-fun b!2524465 () Bool)

(declare-fun res!1066459 () Bool)

(assert (=> b!2524465 (=> (not res!1066459) (not e!1598318))))

(assert (=> b!2524465 (= res!1066459 (not call!157596))))

(declare-fun b!2524473 () Bool)

(declare-fun res!1066458 () Bool)

(assert (=> b!2524473 (=> res!1066458 e!1598321)))

(assert (=> b!2524473 (= res!1066458 (not (is-ElementMatch!7514 (regTwo!15540 r!27340))))))

(assert (=> b!2524473 (= e!1598320 e!1598321)))

(declare-fun b!2524474 () Bool)

(assert (=> b!2524474 (= e!1598317 (nullable!2431 (regTwo!15540 r!27340)))))

(declare-fun b!2524475 () Bool)

(declare-fun res!1066455 () Bool)

(assert (=> b!2524475 (=> res!1066455 e!1598321)))

(assert (=> b!2524475 (= res!1066455 e!1598318)))

(declare-fun res!1066460 () Bool)

(assert (=> b!2524475 (=> (not res!1066460) (not e!1598318))))

(assert (=> b!2524475 (= res!1066460 lt!900256)))

(declare-fun b!2524476 () Bool)

(assert (=> b!2524476 (= e!1598317 (matchR!3501 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 (get!9221 lt!900188)))) (tail!4040 (_2!17307 (get!9221 lt!900188)))))))

(assert (= (and d!718697 c!402895) b!2524474))

(assert (= (and d!718697 (not c!402895)) b!2524476))

(assert (= (and d!718697 c!402896) b!2524472))

(assert (= (and d!718697 (not c!402896)) b!2524469))

(assert (= (and b!2524469 c!402897) b!2524471))

(assert (= (and b!2524469 (not c!402897)) b!2524473))

(assert (= (and b!2524473 (not res!1066458)) b!2524475))

(assert (= (and b!2524475 res!1066460) b!2524465))

(assert (= (and b!2524465 res!1066459) b!2524468))

(assert (= (and b!2524468 res!1066456) b!2524466))

(assert (= (and b!2524475 (not res!1066455)) b!2524470))

(assert (= (and b!2524470 res!1066454) b!2524463))

(assert (= (and b!2524463 (not res!1066457)) b!2524467))

(assert (= (and b!2524467 (not res!1066453)) b!2524464))

(assert (= (or b!2524472 b!2524463 b!2524465) bm!157591))

(declare-fun m!2878199 () Bool)

(assert (=> b!2524466 m!2878199))

(assert (=> b!2524476 m!2878199))

(assert (=> b!2524476 m!2878199))

(declare-fun m!2878201 () Bool)

(assert (=> b!2524476 m!2878201))

(declare-fun m!2878203 () Bool)

(assert (=> b!2524476 m!2878203))

(assert (=> b!2524476 m!2878201))

(assert (=> b!2524476 m!2878203))

(declare-fun m!2878205 () Bool)

(assert (=> b!2524476 m!2878205))

(declare-fun m!2878207 () Bool)

(assert (=> d!718697 m!2878207))

(assert (=> d!718697 m!2877579))

(assert (=> b!2524474 m!2877581))

(assert (=> b!2524464 m!2878199))

(assert (=> bm!157591 m!2878207))

(assert (=> b!2524467 m!2878203))

(assert (=> b!2524467 m!2878203))

(declare-fun m!2878209 () Bool)

(assert (=> b!2524467 m!2878209))

(assert (=> b!2524468 m!2878203))

(assert (=> b!2524468 m!2878203))

(assert (=> b!2524468 m!2878209))

(assert (=> b!2523881 d!718697))

(assert (=> b!2523881 d!718665))

(declare-fun b!2524477 () Bool)

(declare-fun e!1598325 () Bool)

(declare-fun e!1598323 () Bool)

(assert (=> b!2524477 (= e!1598325 e!1598323)))

(declare-fun c!402898 () Bool)

(assert (=> b!2524477 (= c!402898 (is-Union!7514 (regOne!15540 r!27340)))))

(declare-fun b!2524478 () Bool)

(declare-fun e!1598327 () Bool)

(declare-fun call!157598 () Bool)

(assert (=> b!2524478 (= e!1598327 call!157598)))

(declare-fun b!2524479 () Bool)

(declare-fun e!1598326 () Bool)

(assert (=> b!2524479 (= e!1598323 e!1598326)))

(declare-fun res!1066464 () Bool)

(assert (=> b!2524479 (= res!1066464 call!157598)))

(assert (=> b!2524479 (=> (not res!1066464) (not e!1598326))))

(declare-fun b!2524480 () Bool)

(declare-fun e!1598328 () Bool)

(assert (=> b!2524480 (= e!1598328 e!1598325)))

(declare-fun res!1066462 () Bool)

(assert (=> b!2524480 (=> res!1066462 e!1598325)))

(assert (=> b!2524480 (= res!1066462 (is-Star!7514 (regOne!15540 r!27340)))))

(declare-fun b!2524481 () Bool)

(declare-fun call!157597 () Bool)

(assert (=> b!2524481 (= e!1598326 call!157597)))

(declare-fun b!2524482 () Bool)

(assert (=> b!2524482 (= e!1598323 e!1598327)))

(declare-fun res!1066465 () Bool)

(assert (=> b!2524482 (= res!1066465 call!157597)))

(assert (=> b!2524482 (=> res!1066465 e!1598327)))

(declare-fun b!2524483 () Bool)

(declare-fun e!1598324 () Bool)

(assert (=> b!2524483 (= e!1598324 e!1598328)))

(declare-fun res!1066461 () Bool)

(assert (=> b!2524483 (=> (not res!1066461) (not e!1598328))))

(assert (=> b!2524483 (= res!1066461 (and (not (is-EmptyLang!7514 (regOne!15540 r!27340))) (not (is-ElementMatch!7514 (regOne!15540 r!27340)))))))

(declare-fun d!718699 () Bool)

(declare-fun res!1066463 () Bool)

(assert (=> d!718699 (=> res!1066463 e!1598324)))

(assert (=> d!718699 (= res!1066463 (is-EmptyExpr!7514 (regOne!15540 r!27340)))))

(assert (=> d!718699 (= (nullableFct!673 (regOne!15540 r!27340)) e!1598324)))

(declare-fun bm!157592 () Bool)

(assert (=> bm!157592 (= call!157597 (nullable!2431 (ite c!402898 (regOne!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))))))

(declare-fun bm!157593 () Bool)

(assert (=> bm!157593 (= call!157598 (nullable!2431 (ite c!402898 (regTwo!15541 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))))))

(assert (= (and d!718699 (not res!1066463)) b!2524483))

(assert (= (and b!2524483 res!1066461) b!2524480))

(assert (= (and b!2524480 (not res!1066462)) b!2524477))

(assert (= (and b!2524477 c!402898) b!2524482))

(assert (= (and b!2524477 (not c!402898)) b!2524479))

(assert (= (and b!2524482 (not res!1066465)) b!2524478))

(assert (= (and b!2524479 res!1066464) b!2524481))

(assert (= (or b!2524478 b!2524479) bm!157593))

(assert (= (or b!2524482 b!2524481) bm!157592))

(declare-fun m!2878211 () Bool)

(assert (=> bm!157592 m!2878211))

(declare-fun m!2878213 () Bool)

(assert (=> bm!157593 m!2878213))

(assert (=> d!718543 d!718699))

(declare-fun d!718701 () Bool)

(assert (=> d!718701 (= (isEmpty!16951 (_1!17307 lt!900125)) (is-Nil!29479 (_1!17307 lt!900125)))))

(assert (=> bm!157474 d!718701))

(declare-fun d!718703 () Bool)

(declare-fun lt!900257 () Regex!7514)

(assert (=> d!718703 (validRegex!3140 lt!900257)))

(declare-fun e!1598330 () Regex!7514)

(assert (=> d!718703 (= lt!900257 e!1598330)))

(declare-fun c!402899 () Bool)

(assert (=> d!718703 (= c!402899 (or (is-EmptyExpr!7514 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))) (is-EmptyLang!7514 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))))))))

(assert (=> d!718703 (validRegex!3140 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))))))

(assert (=> d!718703 (= (derivativeStep!2083 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))) c!14016) lt!900257)))

(declare-fun b!2524484 () Bool)

(declare-fun e!1598333 () Regex!7514)

(assert (=> b!2524484 (= e!1598333 (ite (= c!14016 (c!402670 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524485 () Bool)

(declare-fun e!1598329 () Regex!7514)

(declare-fun call!157600 () Regex!7514)

(assert (=> b!2524485 (= e!1598329 (Concat!12210 call!157600 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))))))

(declare-fun e!1598331 () Regex!7514)

(declare-fun b!2524486 () Bool)

(declare-fun call!157602 () Regex!7514)

(assert (=> b!2524486 (= e!1598331 (Union!7514 (Concat!12210 call!157602 (regTwo!15540 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))))) EmptyLang!7514))))

(declare-fun b!2524487 () Bool)

(declare-fun e!1598332 () Regex!7514)

(declare-fun call!157601 () Regex!7514)

(declare-fun call!157599 () Regex!7514)

(assert (=> b!2524487 (= e!1598332 (Union!7514 call!157601 call!157599))))

(declare-fun b!2524488 () Bool)

(assert (=> b!2524488 (= e!1598330 EmptyLang!7514)))

(declare-fun b!2524489 () Bool)

(assert (=> b!2524489 (= e!1598332 e!1598329)))

(declare-fun c!402902 () Bool)

(assert (=> b!2524489 (= c!402902 (is-Star!7514 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))))))

(declare-fun bm!157594 () Bool)

(assert (=> bm!157594 (= call!157602 call!157600)))

(declare-fun b!2524490 () Bool)

(declare-fun c!402903 () Bool)

(assert (=> b!2524490 (= c!402903 (nullable!2431 (regOne!15540 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))))))))

(assert (=> b!2524490 (= e!1598329 e!1598331)))

(declare-fun b!2524491 () Bool)

(assert (=> b!2524491 (= e!1598331 (Union!7514 (Concat!12210 call!157602 (regTwo!15540 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))))) call!157599))))

(declare-fun b!2524492 () Bool)

(assert (=> b!2524492 (= e!1598330 e!1598333)))

(declare-fun c!402900 () Bool)

(assert (=> b!2524492 (= c!402900 (is-ElementMatch!7514 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))))))

(declare-fun c!402901 () Bool)

(declare-fun bm!157595 () Bool)

(assert (=> bm!157595 (= call!157601 (derivativeStep!2083 (ite c!402901 (regOne!15541 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))) (ite c!402902 (reg!7843 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))) (regOne!15540 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))))) c!14016))))

(declare-fun bm!157596 () Bool)

(assert (=> bm!157596 (= call!157599 (derivativeStep!2083 (ite c!402901 (regTwo!15541 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))) (regTwo!15540 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))))) c!14016))))

(declare-fun bm!157597 () Bool)

(assert (=> bm!157597 (= call!157600 call!157601)))

(declare-fun b!2524493 () Bool)

(assert (=> b!2524493 (= c!402901 (is-Union!7514 (ite c!402756 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340)))))))

(assert (=> b!2524493 (= e!1598333 e!1598332)))

(assert (= (and d!718703 c!402899) b!2524488))

(assert (= (and d!718703 (not c!402899)) b!2524492))

(assert (= (and b!2524492 c!402900) b!2524484))

(assert (= (and b!2524492 (not c!402900)) b!2524493))

(assert (= (and b!2524493 c!402901) b!2524487))

(assert (= (and b!2524493 (not c!402901)) b!2524489))

(assert (= (and b!2524489 c!402902) b!2524485))

(assert (= (and b!2524489 (not c!402902)) b!2524490))

(assert (= (and b!2524490 c!402903) b!2524491))

(assert (= (and b!2524490 (not c!402903)) b!2524486))

(assert (= (or b!2524491 b!2524486) bm!157594))

(assert (= (or b!2524485 bm!157594) bm!157597))

(assert (= (or b!2524487 b!2524491) bm!157596))

(assert (= (or b!2524487 bm!157597) bm!157595))

(declare-fun m!2878215 () Bool)

(assert (=> d!718703 m!2878215))

(declare-fun m!2878217 () Bool)

(assert (=> d!718703 m!2878217))

(declare-fun m!2878219 () Bool)

(assert (=> b!2524490 m!2878219))

(declare-fun m!2878221 () Bool)

(assert (=> bm!157595 m!2878221))

(declare-fun m!2878223 () Bool)

(assert (=> bm!157596 m!2878223))

(assert (=> bm!157495 d!718703))

(declare-fun bm!157598 () Bool)

(declare-fun call!157604 () Bool)

(declare-fun call!157603 () Bool)

(assert (=> bm!157598 (= call!157604 call!157603)))

(declare-fun b!2524494 () Bool)

(declare-fun e!1598340 () Bool)

(declare-fun e!1598337 () Bool)

(assert (=> b!2524494 (= e!1598340 e!1598337)))

(declare-fun res!1066466 () Bool)

(assert (=> b!2524494 (= res!1066466 (not (nullable!2431 (reg!7843 lt!900165))))))

(assert (=> b!2524494 (=> (not res!1066466) (not e!1598337))))

(declare-fun b!2524495 () Bool)

(declare-fun e!1598335 () Bool)

(assert (=> b!2524495 (= e!1598335 e!1598340)))

(declare-fun c!402905 () Bool)

(assert (=> b!2524495 (= c!402905 (is-Star!7514 lt!900165))))

(declare-fun d!718705 () Bool)

(declare-fun res!1066470 () Bool)

(assert (=> d!718705 (=> res!1066470 e!1598335)))

(assert (=> d!718705 (= res!1066470 (is-ElementMatch!7514 lt!900165))))

(assert (=> d!718705 (= (validRegex!3140 lt!900165) e!1598335)))

(declare-fun c!402904 () Bool)

(declare-fun bm!157599 () Bool)

(assert (=> bm!157599 (= call!157603 (validRegex!3140 (ite c!402905 (reg!7843 lt!900165) (ite c!402904 (regTwo!15541 lt!900165) (regOne!15540 lt!900165)))))))

(declare-fun b!2524496 () Bool)

(declare-fun res!1066469 () Bool)

(declare-fun e!1598339 () Bool)

(assert (=> b!2524496 (=> res!1066469 e!1598339)))

(assert (=> b!2524496 (= res!1066469 (not (is-Concat!12210 lt!900165)))))

(declare-fun e!1598334 () Bool)

(assert (=> b!2524496 (= e!1598334 e!1598339)))

(declare-fun b!2524497 () Bool)

(declare-fun e!1598336 () Bool)

(declare-fun call!157605 () Bool)

(assert (=> b!2524497 (= e!1598336 call!157605)))

(declare-fun b!2524498 () Bool)

(declare-fun res!1066467 () Bool)

(declare-fun e!1598338 () Bool)

(assert (=> b!2524498 (=> (not res!1066467) (not e!1598338))))

(assert (=> b!2524498 (= res!1066467 call!157605)))

(assert (=> b!2524498 (= e!1598334 e!1598338)))

(declare-fun b!2524499 () Bool)

(assert (=> b!2524499 (= e!1598339 e!1598336)))

(declare-fun res!1066468 () Bool)

(assert (=> b!2524499 (=> (not res!1066468) (not e!1598336))))

(assert (=> b!2524499 (= res!1066468 call!157604)))

(declare-fun bm!157600 () Bool)

(assert (=> bm!157600 (= call!157605 (validRegex!3140 (ite c!402904 (regOne!15541 lt!900165) (regTwo!15540 lt!900165))))))

(declare-fun b!2524500 () Bool)

(assert (=> b!2524500 (= e!1598340 e!1598334)))

(assert (=> b!2524500 (= c!402904 (is-Union!7514 lt!900165))))

(declare-fun b!2524501 () Bool)

(assert (=> b!2524501 (= e!1598337 call!157603)))

(declare-fun b!2524502 () Bool)

(assert (=> b!2524502 (= e!1598338 call!157604)))

(assert (= (and d!718705 (not res!1066470)) b!2524495))

(assert (= (and b!2524495 c!402905) b!2524494))

(assert (= (and b!2524495 (not c!402905)) b!2524500))

(assert (= (and b!2524494 res!1066466) b!2524501))

(assert (= (and b!2524500 c!402904) b!2524498))

(assert (= (and b!2524500 (not c!402904)) b!2524496))

(assert (= (and b!2524498 res!1066467) b!2524502))

(assert (= (and b!2524496 (not res!1066469)) b!2524499))

(assert (= (and b!2524499 res!1066468) b!2524497))

(assert (= (or b!2524498 b!2524497) bm!157600))

(assert (= (or b!2524502 b!2524499) bm!157598))

(assert (= (or b!2524501 bm!157598) bm!157599))

(declare-fun m!2878225 () Bool)

(assert (=> b!2524494 m!2878225))

(declare-fun m!2878227 () Bool)

(assert (=> bm!157599 m!2878227))

(declare-fun m!2878229 () Bool)

(assert (=> bm!157600 m!2878229))

(assert (=> d!718495 d!718705))

(assert (=> d!718495 d!718503))

(declare-fun b!2524504 () Bool)

(declare-fun e!1598341 () List!29579)

(assert (=> b!2524504 (= e!1598341 (Cons!29479 (h!34899 (t!211278 (_1!17307 lt!900125))) (++!7235 (t!211278 (t!211278 (_1!17307 lt!900125))) (_2!17307 lt!900125))))))

(declare-fun b!2524506 () Bool)

(declare-fun e!1598342 () Bool)

(declare-fun lt!900258 () List!29579)

(assert (=> b!2524506 (= e!1598342 (or (not (= (_2!17307 lt!900125) Nil!29479)) (= lt!900258 (t!211278 (_1!17307 lt!900125)))))))

(declare-fun d!718707 () Bool)

(assert (=> d!718707 e!1598342))

(declare-fun res!1066471 () Bool)

(assert (=> d!718707 (=> (not res!1066471) (not e!1598342))))

(assert (=> d!718707 (= res!1066471 (= (content!4043 lt!900258) (set.union (content!4043 (t!211278 (_1!17307 lt!900125))) (content!4043 (_2!17307 lt!900125)))))))

(assert (=> d!718707 (= lt!900258 e!1598341)))

(declare-fun c!402906 () Bool)

(assert (=> d!718707 (= c!402906 (is-Nil!29479 (t!211278 (_1!17307 lt!900125))))))

(assert (=> d!718707 (= (++!7235 (t!211278 (_1!17307 lt!900125)) (_2!17307 lt!900125)) lt!900258)))

(declare-fun b!2524505 () Bool)

(declare-fun res!1066472 () Bool)

(assert (=> b!2524505 (=> (not res!1066472) (not e!1598342))))

(assert (=> b!2524505 (= res!1066472 (= (size!22925 lt!900258) (+ (size!22925 (t!211278 (_1!17307 lt!900125))) (size!22925 (_2!17307 lt!900125)))))))

(declare-fun b!2524503 () Bool)

(assert (=> b!2524503 (= e!1598341 (_2!17307 lt!900125))))

(assert (= (and d!718707 c!402906) b!2524503))

(assert (= (and d!718707 (not c!402906)) b!2524504))

(assert (= (and d!718707 res!1066471) b!2524505))

(assert (= (and b!2524505 res!1066472) b!2524506))

(declare-fun m!2878231 () Bool)

(assert (=> b!2524504 m!2878231))

(declare-fun m!2878233 () Bool)

(assert (=> d!718707 m!2878233))

(assert (=> d!718707 m!2878149))

(assert (=> d!718707 m!2877669))

(declare-fun m!2878235 () Bool)

(assert (=> b!2524505 m!2878235))

(declare-fun m!2878237 () Bool)

(assert (=> b!2524505 m!2878237))

(assert (=> b!2524505 m!2877675))

(assert (=> b!2523819 d!718707))

(declare-fun d!718709 () Bool)

(declare-fun lt!900261 () Int)

(assert (=> d!718709 (>= lt!900261 0)))

(declare-fun e!1598345 () Int)

(assert (=> d!718709 (= lt!900261 e!1598345)))

(declare-fun c!402909 () Bool)

(assert (=> d!718709 (= c!402909 (is-Nil!29479 lt!900177))))

(assert (=> d!718709 (= (size!22925 lt!900177) lt!900261)))

(declare-fun b!2524511 () Bool)

(assert (=> b!2524511 (= e!1598345 0)))

(declare-fun b!2524512 () Bool)

(assert (=> b!2524512 (= e!1598345 (+ 1 (size!22925 (t!211278 lt!900177))))))

(assert (= (and d!718709 c!402909) b!2524511))

(assert (= (and d!718709 (not c!402909)) b!2524512))

(declare-fun m!2878239 () Bool)

(assert (=> b!2524512 m!2878239))

(assert (=> b!2523821 d!718709))

(declare-fun d!718711 () Bool)

(declare-fun lt!900262 () Int)

(assert (=> d!718711 (>= lt!900262 0)))

(declare-fun e!1598346 () Int)

(assert (=> d!718711 (= lt!900262 e!1598346)))

(declare-fun c!402910 () Bool)

(assert (=> d!718711 (= c!402910 (is-Nil!29479 (_1!17307 lt!900125)))))

(assert (=> d!718711 (= (size!22925 (_1!17307 lt!900125)) lt!900262)))

(declare-fun b!2524513 () Bool)

(assert (=> b!2524513 (= e!1598346 0)))

(declare-fun b!2524514 () Bool)

(assert (=> b!2524514 (= e!1598346 (+ 1 (size!22925 (t!211278 (_1!17307 lt!900125)))))))

(assert (= (and d!718711 c!402910) b!2524513))

(assert (= (and d!718711 (not c!402910)) b!2524514))

(assert (=> b!2524514 m!2878237))

(assert (=> b!2523821 d!718711))

(declare-fun d!718713 () Bool)

(declare-fun lt!900263 () Int)

(assert (=> d!718713 (>= lt!900263 0)))

(declare-fun e!1598347 () Int)

(assert (=> d!718713 (= lt!900263 e!1598347)))

(declare-fun c!402911 () Bool)

(assert (=> d!718713 (= c!402911 (is-Nil!29479 (_2!17307 lt!900125)))))

(assert (=> d!718713 (= (size!22925 (_2!17307 lt!900125)) lt!900263)))

(declare-fun b!2524515 () Bool)

(assert (=> b!2524515 (= e!1598347 0)))

(declare-fun b!2524516 () Bool)

(assert (=> b!2524516 (= e!1598347 (+ 1 (size!22925 (t!211278 (_2!17307 lt!900125)))))))

(assert (= (and d!718713 c!402911) b!2524515))

(assert (= (and d!718713 (not c!402911)) b!2524516))

(declare-fun m!2878241 () Bool)

(assert (=> b!2524516 m!2878241))

(assert (=> b!2523821 d!718713))

(assert (=> b!2523731 d!718593))

(assert (=> b!2523731 d!718595))

(assert (=> b!2523806 d!718543))

(declare-fun d!718715 () Bool)

(assert (=> d!718715 (= (nullable!2431 (regTwo!15540 r!27340)) (nullableFct!673 (regTwo!15540 r!27340)))))

(declare-fun bs!469061 () Bool)

(assert (= bs!469061 d!718715))

(declare-fun m!2878243 () Bool)

(assert (=> bs!469061 m!2878243))

(assert (=> b!2523664 d!718715))

(declare-fun d!718717 () Bool)

(declare-fun lt!900264 () Regex!7514)

(assert (=> d!718717 (validRegex!3140 lt!900264)))

(declare-fun e!1598348 () Regex!7514)

(assert (=> d!718717 (= lt!900264 e!1598348)))

(declare-fun c!402912 () Bool)

(assert (=> d!718717 (= c!402912 (is-Cons!29479 (t!211278 tl!4068)))))

(assert (=> d!718717 (validRegex!3140 (derivativeStep!2083 lt!900126 (h!34899 tl!4068)))))

(assert (=> d!718717 (= (derivative!209 (derivativeStep!2083 lt!900126 (h!34899 tl!4068)) (t!211278 tl!4068)) lt!900264)))

(declare-fun b!2524517 () Bool)

(assert (=> b!2524517 (= e!1598348 (derivative!209 (derivativeStep!2083 (derivativeStep!2083 lt!900126 (h!34899 tl!4068)) (h!34899 (t!211278 tl!4068))) (t!211278 (t!211278 tl!4068))))))

(declare-fun b!2524518 () Bool)

(assert (=> b!2524518 (= e!1598348 (derivativeStep!2083 lt!900126 (h!34899 tl!4068)))))

(assert (= (and d!718717 c!402912) b!2524517))

(assert (= (and d!718717 (not c!402912)) b!2524518))

(declare-fun m!2878245 () Bool)

(assert (=> d!718717 m!2878245))

(assert (=> d!718717 m!2877763))

(declare-fun m!2878247 () Bool)

(assert (=> d!718717 m!2878247))

(assert (=> b!2524517 m!2877763))

(declare-fun m!2878249 () Bool)

(assert (=> b!2524517 m!2878249))

(assert (=> b!2524517 m!2878249))

(declare-fun m!2878251 () Bool)

(assert (=> b!2524517 m!2878251))

(assert (=> b!2523916 d!718717))

(declare-fun d!718719 () Bool)

(declare-fun lt!900265 () Regex!7514)

(assert (=> d!718719 (validRegex!3140 lt!900265)))

(declare-fun e!1598350 () Regex!7514)

(assert (=> d!718719 (= lt!900265 e!1598350)))

(declare-fun c!402913 () Bool)

(assert (=> d!718719 (= c!402913 (or (is-EmptyExpr!7514 lt!900126) (is-EmptyLang!7514 lt!900126)))))

(assert (=> d!718719 (validRegex!3140 lt!900126)))

(assert (=> d!718719 (= (derivativeStep!2083 lt!900126 (h!34899 tl!4068)) lt!900265)))

(declare-fun b!2524519 () Bool)

(declare-fun e!1598353 () Regex!7514)

(assert (=> b!2524519 (= e!1598353 (ite (= (h!34899 tl!4068) (c!402670 lt!900126)) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524520 () Bool)

(declare-fun e!1598349 () Regex!7514)

(declare-fun call!157607 () Regex!7514)

(assert (=> b!2524520 (= e!1598349 (Concat!12210 call!157607 lt!900126))))

(declare-fun b!2524521 () Bool)

(declare-fun e!1598351 () Regex!7514)

(declare-fun call!157609 () Regex!7514)

(assert (=> b!2524521 (= e!1598351 (Union!7514 (Concat!12210 call!157609 (regTwo!15540 lt!900126)) EmptyLang!7514))))

(declare-fun b!2524522 () Bool)

(declare-fun e!1598352 () Regex!7514)

(declare-fun call!157608 () Regex!7514)

(declare-fun call!157606 () Regex!7514)

(assert (=> b!2524522 (= e!1598352 (Union!7514 call!157608 call!157606))))

(declare-fun b!2524523 () Bool)

(assert (=> b!2524523 (= e!1598350 EmptyLang!7514)))

(declare-fun b!2524524 () Bool)

(assert (=> b!2524524 (= e!1598352 e!1598349)))

(declare-fun c!402916 () Bool)

(assert (=> b!2524524 (= c!402916 (is-Star!7514 lt!900126))))

(declare-fun bm!157601 () Bool)

(assert (=> bm!157601 (= call!157609 call!157607)))

(declare-fun b!2524525 () Bool)

(declare-fun c!402917 () Bool)

(assert (=> b!2524525 (= c!402917 (nullable!2431 (regOne!15540 lt!900126)))))

(assert (=> b!2524525 (= e!1598349 e!1598351)))

(declare-fun b!2524526 () Bool)

(assert (=> b!2524526 (= e!1598351 (Union!7514 (Concat!12210 call!157609 (regTwo!15540 lt!900126)) call!157606))))

(declare-fun b!2524527 () Bool)

(assert (=> b!2524527 (= e!1598350 e!1598353)))

(declare-fun c!402914 () Bool)

(assert (=> b!2524527 (= c!402914 (is-ElementMatch!7514 lt!900126))))

(declare-fun c!402915 () Bool)

(declare-fun bm!157602 () Bool)

(assert (=> bm!157602 (= call!157608 (derivativeStep!2083 (ite c!402915 (regOne!15541 lt!900126) (ite c!402916 (reg!7843 lt!900126) (regOne!15540 lt!900126))) (h!34899 tl!4068)))))

(declare-fun bm!157603 () Bool)

(assert (=> bm!157603 (= call!157606 (derivativeStep!2083 (ite c!402915 (regTwo!15541 lt!900126) (regTwo!15540 lt!900126)) (h!34899 tl!4068)))))

(declare-fun bm!157604 () Bool)

(assert (=> bm!157604 (= call!157607 call!157608)))

(declare-fun b!2524528 () Bool)

(assert (=> b!2524528 (= c!402915 (is-Union!7514 lt!900126))))

(assert (=> b!2524528 (= e!1598353 e!1598352)))

(assert (= (and d!718719 c!402913) b!2524523))

(assert (= (and d!718719 (not c!402913)) b!2524527))

(assert (= (and b!2524527 c!402914) b!2524519))

(assert (= (and b!2524527 (not c!402914)) b!2524528))

(assert (= (and b!2524528 c!402915) b!2524522))

(assert (= (and b!2524528 (not c!402915)) b!2524524))

(assert (= (and b!2524524 c!402916) b!2524520))

(assert (= (and b!2524524 (not c!402916)) b!2524525))

(assert (= (and b!2524525 c!402917) b!2524526))

(assert (= (and b!2524525 (not c!402917)) b!2524521))

(assert (= (or b!2524526 b!2524521) bm!157601))

(assert (= (or b!2524520 bm!157601) bm!157604))

(assert (= (or b!2524522 b!2524526) bm!157603))

(assert (= (or b!2524522 bm!157604) bm!157602))

(declare-fun m!2878253 () Bool)

(assert (=> d!718719 m!2878253))

(assert (=> d!718719 m!2877757))

(declare-fun m!2878255 () Bool)

(assert (=> b!2524525 m!2878255))

(declare-fun m!2878257 () Bool)

(assert (=> bm!157602 m!2878257))

(declare-fun m!2878259 () Bool)

(assert (=> bm!157603 m!2878259))

(assert (=> b!2523916 d!718719))

(declare-fun d!718721 () Bool)

(assert (=> d!718721 (= (nullable!2431 (regOne!15540 (regTwo!15540 r!27340))) (nullableFct!673 (regOne!15540 (regTwo!15540 r!27340))))))

(declare-fun bs!469062 () Bool)

(assert (= bs!469062 d!718721))

(declare-fun m!2878261 () Bool)

(assert (=> bs!469062 m!2878261))

(assert (=> b!2523952 d!718721))

(assert (=> b!2523708 d!718543))

(declare-fun bm!157605 () Bool)

(declare-fun call!157611 () Bool)

(declare-fun call!157610 () Bool)

(assert (=> bm!157605 (= call!157611 call!157610)))

(declare-fun b!2524529 () Bool)

(declare-fun e!1598360 () Bool)

(declare-fun e!1598357 () Bool)

(assert (=> b!2524529 (= e!1598360 e!1598357)))

(declare-fun res!1066473 () Bool)

(assert (=> b!2524529 (= res!1066473 (not (nullable!2431 (reg!7843 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))))))))

(assert (=> b!2524529 (=> (not res!1066473) (not e!1598357))))

(declare-fun b!2524530 () Bool)

(declare-fun e!1598355 () Bool)

(assert (=> b!2524530 (= e!1598355 e!1598360)))

(declare-fun c!402919 () Bool)

(assert (=> b!2524530 (= c!402919 (is-Star!7514 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))))))

(declare-fun d!718723 () Bool)

(declare-fun res!1066477 () Bool)

(assert (=> d!718723 (=> res!1066477 e!1598355)))

(assert (=> d!718723 (= res!1066477 (is-ElementMatch!7514 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))))))

(assert (=> d!718723 (= (validRegex!3140 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))) e!1598355)))

(declare-fun c!402918 () Bool)

(declare-fun bm!157606 () Bool)

(assert (=> bm!157606 (= call!157610 (validRegex!3140 (ite c!402919 (reg!7843 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))) (ite c!402918 (regTwo!15541 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))) (regOne!15540 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340)))))))))

(declare-fun b!2524531 () Bool)

(declare-fun res!1066476 () Bool)

(declare-fun e!1598359 () Bool)

(assert (=> b!2524531 (=> res!1066476 e!1598359)))

(assert (=> b!2524531 (= res!1066476 (not (is-Concat!12210 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340)))))))

(declare-fun e!1598354 () Bool)

(assert (=> b!2524531 (= e!1598354 e!1598359)))

(declare-fun b!2524532 () Bool)

(declare-fun e!1598356 () Bool)

(declare-fun call!157612 () Bool)

(assert (=> b!2524532 (= e!1598356 call!157612)))

(declare-fun b!2524533 () Bool)

(declare-fun res!1066474 () Bool)

(declare-fun e!1598358 () Bool)

(assert (=> b!2524533 (=> (not res!1066474) (not e!1598358))))

(assert (=> b!2524533 (= res!1066474 call!157612)))

(assert (=> b!2524533 (= e!1598354 e!1598358)))

(declare-fun b!2524534 () Bool)

(assert (=> b!2524534 (= e!1598359 e!1598356)))

(declare-fun res!1066475 () Bool)

(assert (=> b!2524534 (=> (not res!1066475) (not e!1598356))))

(assert (=> b!2524534 (= res!1066475 call!157611)))

(declare-fun bm!157607 () Bool)

(assert (=> bm!157607 (= call!157612 (validRegex!3140 (ite c!402918 (regOne!15541 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))) (regTwo!15540 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))))))))

(declare-fun b!2524535 () Bool)

(assert (=> b!2524535 (= e!1598360 e!1598354)))

(assert (=> b!2524535 (= c!402918 (is-Union!7514 (ite c!402721 (regOne!15541 r!27340) (regTwo!15540 r!27340))))))

(declare-fun b!2524536 () Bool)

(assert (=> b!2524536 (= e!1598357 call!157610)))

(declare-fun b!2524537 () Bool)

(assert (=> b!2524537 (= e!1598358 call!157611)))

(assert (= (and d!718723 (not res!1066477)) b!2524530))

(assert (= (and b!2524530 c!402919) b!2524529))

(assert (= (and b!2524530 (not c!402919)) b!2524535))

(assert (= (and b!2524529 res!1066473) b!2524536))

(assert (= (and b!2524535 c!402918) b!2524533))

(assert (= (and b!2524535 (not c!402918)) b!2524531))

(assert (= (and b!2524533 res!1066474) b!2524537))

(assert (= (and b!2524531 (not res!1066476)) b!2524534))

(assert (= (and b!2524534 res!1066475) b!2524532))

(assert (= (or b!2524533 b!2524532) bm!157607))

(assert (= (or b!2524537 b!2524534) bm!157605))

(assert (= (or b!2524536 bm!157605) bm!157606))

(declare-fun m!2878263 () Bool)

(assert (=> b!2524529 m!2878263))

(declare-fun m!2878265 () Bool)

(assert (=> bm!157606 m!2878265))

(declare-fun m!2878267 () Bool)

(assert (=> bm!157607 m!2878267))

(assert (=> bm!157483 d!718723))

(declare-fun bm!157608 () Bool)

(declare-fun call!157614 () Bool)

(declare-fun call!157613 () Bool)

(assert (=> bm!157608 (= call!157614 call!157613)))

(declare-fun b!2524538 () Bool)

(declare-fun e!1598367 () Bool)

(declare-fun e!1598364 () Bool)

(assert (=> b!2524538 (= e!1598367 e!1598364)))

(declare-fun res!1066478 () Bool)

(assert (=> b!2524538 (= res!1066478 (not (nullable!2431 (reg!7843 lt!900205))))))

(assert (=> b!2524538 (=> (not res!1066478) (not e!1598364))))

(declare-fun b!2524539 () Bool)

(declare-fun e!1598362 () Bool)

(assert (=> b!2524539 (= e!1598362 e!1598367)))

(declare-fun c!402921 () Bool)

(assert (=> b!2524539 (= c!402921 (is-Star!7514 lt!900205))))

(declare-fun d!718725 () Bool)

(declare-fun res!1066482 () Bool)

(assert (=> d!718725 (=> res!1066482 e!1598362)))

(assert (=> d!718725 (= res!1066482 (is-ElementMatch!7514 lt!900205))))

(assert (=> d!718725 (= (validRegex!3140 lt!900205) e!1598362)))

(declare-fun c!402920 () Bool)

(declare-fun bm!157609 () Bool)

(assert (=> bm!157609 (= call!157613 (validRegex!3140 (ite c!402921 (reg!7843 lt!900205) (ite c!402920 (regTwo!15541 lt!900205) (regOne!15540 lt!900205)))))))

(declare-fun b!2524540 () Bool)

(declare-fun res!1066481 () Bool)

(declare-fun e!1598366 () Bool)

(assert (=> b!2524540 (=> res!1066481 e!1598366)))

(assert (=> b!2524540 (= res!1066481 (not (is-Concat!12210 lt!900205)))))

(declare-fun e!1598361 () Bool)

(assert (=> b!2524540 (= e!1598361 e!1598366)))

(declare-fun b!2524541 () Bool)

(declare-fun e!1598363 () Bool)

(declare-fun call!157615 () Bool)

(assert (=> b!2524541 (= e!1598363 call!157615)))

(declare-fun b!2524542 () Bool)

(declare-fun res!1066479 () Bool)

(declare-fun e!1598365 () Bool)

(assert (=> b!2524542 (=> (not res!1066479) (not e!1598365))))

(assert (=> b!2524542 (= res!1066479 call!157615)))

(assert (=> b!2524542 (= e!1598361 e!1598365)))

(declare-fun b!2524543 () Bool)

(assert (=> b!2524543 (= e!1598366 e!1598363)))

(declare-fun res!1066480 () Bool)

(assert (=> b!2524543 (=> (not res!1066480) (not e!1598363))))

(assert (=> b!2524543 (= res!1066480 call!157614)))

(declare-fun bm!157610 () Bool)

(assert (=> bm!157610 (= call!157615 (validRegex!3140 (ite c!402920 (regOne!15541 lt!900205) (regTwo!15540 lt!900205))))))

(declare-fun b!2524544 () Bool)

(assert (=> b!2524544 (= e!1598367 e!1598361)))

(assert (=> b!2524544 (= c!402920 (is-Union!7514 lt!900205))))

(declare-fun b!2524545 () Bool)

(assert (=> b!2524545 (= e!1598364 call!157613)))

(declare-fun b!2524546 () Bool)

(assert (=> b!2524546 (= e!1598365 call!157614)))

(assert (= (and d!718725 (not res!1066482)) b!2524539))

(assert (= (and b!2524539 c!402921) b!2524538))

(assert (= (and b!2524539 (not c!402921)) b!2524544))

(assert (= (and b!2524538 res!1066478) b!2524545))

(assert (= (and b!2524544 c!402920) b!2524542))

(assert (= (and b!2524544 (not c!402920)) b!2524540))

(assert (= (and b!2524542 res!1066479) b!2524546))

(assert (= (and b!2524540 (not res!1066481)) b!2524543))

(assert (= (and b!2524543 res!1066480) b!2524541))

(assert (= (or b!2524542 b!2524541) bm!157610))

(assert (= (or b!2524546 b!2524543) bm!157608))

(assert (= (or b!2524545 bm!157608) bm!157609))

(declare-fun m!2878269 () Bool)

(assert (=> b!2524538 m!2878269))

(declare-fun m!2878271 () Bool)

(assert (=> bm!157609 m!2878271))

(declare-fun m!2878273 () Bool)

(assert (=> bm!157610 m!2878273))

(assert (=> d!718539 d!718725))

(assert (=> d!718539 d!718691))

(declare-fun d!718727 () Bool)

(assert (=> d!718727 (= (nullable!2431 lt!900126) (nullableFct!673 lt!900126))))

(declare-fun bs!469063 () Bool)

(assert (= bs!469063 d!718727))

(declare-fun m!2878275 () Bool)

(assert (=> bs!469063 m!2878275))

(assert (=> b!2523929 d!718727))

(assert (=> b!2523892 d!718611))

(assert (=> b!2523892 d!718581))

(declare-fun d!718729 () Bool)

(declare-fun lt!900266 () Regex!7514)

(assert (=> d!718729 (validRegex!3140 lt!900266)))

(declare-fun e!1598369 () Regex!7514)

(assert (=> d!718729 (= lt!900266 e!1598369)))

(declare-fun c!402922 () Bool)

(assert (=> d!718729 (= c!402922 (or (is-EmptyExpr!7514 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))) (is-EmptyLang!7514 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)))))))

(assert (=> d!718729 (validRegex!3140 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)))))

(assert (=> d!718729 (= (derivativeStep!2083 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)) c!14016) lt!900266)))

(declare-fun b!2524547 () Bool)

(declare-fun e!1598372 () Regex!7514)

(assert (=> b!2524547 (= e!1598372 (ite (= c!14016 (c!402670 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524548 () Bool)

(declare-fun e!1598368 () Regex!7514)

(declare-fun call!157617 () Regex!7514)

(assert (=> b!2524548 (= e!1598368 (Concat!12210 call!157617 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))))))

(declare-fun b!2524549 () Bool)

(declare-fun e!1598370 () Regex!7514)

(declare-fun call!157619 () Regex!7514)

(assert (=> b!2524549 (= e!1598370 (Union!7514 (Concat!12210 call!157619 (regTwo!15540 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)))) EmptyLang!7514))))

(declare-fun b!2524550 () Bool)

(declare-fun e!1598371 () Regex!7514)

(declare-fun call!157618 () Regex!7514)

(declare-fun call!157616 () Regex!7514)

(assert (=> b!2524550 (= e!1598371 (Union!7514 call!157618 call!157616))))

(declare-fun b!2524551 () Bool)

(assert (=> b!2524551 (= e!1598369 EmptyLang!7514)))

(declare-fun b!2524552 () Bool)

(assert (=> b!2524552 (= e!1598371 e!1598368)))

(declare-fun c!402925 () Bool)

(assert (=> b!2524552 (= c!402925 (is-Star!7514 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))))))

(declare-fun bm!157611 () Bool)

(assert (=> bm!157611 (= call!157619 call!157617)))

(declare-fun b!2524553 () Bool)

(declare-fun c!402926 () Bool)

(assert (=> b!2524553 (= c!402926 (nullable!2431 (regOne!15540 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)))))))

(assert (=> b!2524553 (= e!1598368 e!1598370)))

(declare-fun b!2524554 () Bool)

(assert (=> b!2524554 (= e!1598370 (Union!7514 (Concat!12210 call!157619 (regTwo!15540 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)))) call!157616))))

(declare-fun b!2524555 () Bool)

(assert (=> b!2524555 (= e!1598369 e!1598372)))

(declare-fun c!402923 () Bool)

(assert (=> b!2524555 (= c!402923 (is-ElementMatch!7514 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))))))

(declare-fun c!402924 () Bool)

(declare-fun bm!157612 () Bool)

(assert (=> bm!157612 (= call!157618 (derivativeStep!2083 (ite c!402924 (regOne!15541 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))) (ite c!402925 (reg!7843 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))) (regOne!15540 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))))) c!14016))))

(declare-fun bm!157613 () Bool)

(assert (=> bm!157613 (= call!157616 (derivativeStep!2083 (ite c!402924 (regTwo!15541 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))) (regTwo!15540 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340)))) c!14016))))

(declare-fun bm!157614 () Bool)

(assert (=> bm!157614 (= call!157617 call!157618)))

(declare-fun b!2524556 () Bool)

(assert (=> b!2524556 (= c!402924 (is-Union!7514 (ite c!402702 (regTwo!15541 r!27340) (regTwo!15540 r!27340))))))

(assert (=> b!2524556 (= e!1598372 e!1598371)))

(assert (= (and d!718729 c!402922) b!2524551))

(assert (= (and d!718729 (not c!402922)) b!2524555))

(assert (= (and b!2524555 c!402923) b!2524547))

(assert (= (and b!2524555 (not c!402923)) b!2524556))

(assert (= (and b!2524556 c!402924) b!2524550))

(assert (= (and b!2524556 (not c!402924)) b!2524552))

(assert (= (and b!2524552 c!402925) b!2524548))

(assert (= (and b!2524552 (not c!402925)) b!2524553))

(assert (= (and b!2524553 c!402926) b!2524554))

(assert (= (and b!2524553 (not c!402926)) b!2524549))

(assert (= (or b!2524554 b!2524549) bm!157611))

(assert (= (or b!2524548 bm!157611) bm!157614))

(assert (= (or b!2524550 b!2524554) bm!157613))

(assert (= (or b!2524550 bm!157614) bm!157612))

(declare-fun m!2878277 () Bool)

(assert (=> d!718729 m!2878277))

(declare-fun m!2878279 () Bool)

(assert (=> d!718729 m!2878279))

(declare-fun m!2878281 () Bool)

(assert (=> b!2524553 m!2878281))

(declare-fun m!2878283 () Bool)

(assert (=> bm!157612 m!2878283))

(declare-fun m!2878285 () Bool)

(assert (=> bm!157613 m!2878285))

(assert (=> bm!157471 d!718729))

(declare-fun d!718731 () Bool)

(assert (=> d!718731 (= (isDefined!4707 lt!900188) (not (isEmpty!16952 lt!900188)))))

(declare-fun bs!469064 () Bool)

(assert (= bs!469064 d!718731))

(declare-fun m!2878287 () Bool)

(assert (=> bs!469064 m!2878287))

(assert (=> b!2523879 d!718731))

(declare-fun b!2524558 () Bool)

(declare-fun e!1598373 () List!29579)

(assert (=> b!2524558 (= e!1598373 (Cons!29479 (h!34899 (_1!17307 (get!9221 lt!900188))) (++!7235 (t!211278 (_1!17307 (get!9221 lt!900188))) (_2!17307 (get!9221 lt!900188)))))))

(declare-fun b!2524560 () Bool)

(declare-fun e!1598374 () Bool)

(declare-fun lt!900267 () List!29579)

(assert (=> b!2524560 (= e!1598374 (or (not (= (_2!17307 (get!9221 lt!900188)) Nil!29479)) (= lt!900267 (_1!17307 (get!9221 lt!900188)))))))

(declare-fun d!718733 () Bool)

(assert (=> d!718733 e!1598374))

(declare-fun res!1066483 () Bool)

(assert (=> d!718733 (=> (not res!1066483) (not e!1598374))))

(assert (=> d!718733 (= res!1066483 (= (content!4043 lt!900267) (set.union (content!4043 (_1!17307 (get!9221 lt!900188))) (content!4043 (_2!17307 (get!9221 lt!900188))))))))

(assert (=> d!718733 (= lt!900267 e!1598373)))

(declare-fun c!402927 () Bool)

(assert (=> d!718733 (= c!402927 (is-Nil!29479 (_1!17307 (get!9221 lt!900188))))))

(assert (=> d!718733 (= (++!7235 (_1!17307 (get!9221 lt!900188)) (_2!17307 (get!9221 lt!900188))) lt!900267)))

(declare-fun b!2524559 () Bool)

(declare-fun res!1066484 () Bool)

(assert (=> b!2524559 (=> (not res!1066484) (not e!1598374))))

(assert (=> b!2524559 (= res!1066484 (= (size!22925 lt!900267) (+ (size!22925 (_1!17307 (get!9221 lt!900188))) (size!22925 (_2!17307 (get!9221 lt!900188))))))))

(declare-fun b!2524557 () Bool)

(assert (=> b!2524557 (= e!1598373 (_2!17307 (get!9221 lt!900188)))))

(assert (= (and d!718733 c!402927) b!2524557))

(assert (= (and d!718733 (not c!402927)) b!2524558))

(assert (= (and d!718733 res!1066483) b!2524559))

(assert (= (and b!2524559 res!1066484) b!2524560))

(declare-fun m!2878289 () Bool)

(assert (=> b!2524558 m!2878289))

(declare-fun m!2878291 () Bool)

(assert (=> d!718733 m!2878291))

(declare-fun m!2878293 () Bool)

(assert (=> d!718733 m!2878293))

(declare-fun m!2878295 () Bool)

(assert (=> d!718733 m!2878295))

(declare-fun m!2878297 () Bool)

(assert (=> b!2524559 m!2878297))

(declare-fun m!2878299 () Bool)

(assert (=> b!2524559 m!2878299))

(declare-fun m!2878301 () Bool)

(assert (=> b!2524559 m!2878301))

(assert (=> b!2523877 d!718733))

(assert (=> b!2523877 d!718665))

(declare-fun b!2524561 () Bool)

(declare-fun e!1598378 () Bool)

(declare-fun e!1598375 () Bool)

(assert (=> b!2524561 (= e!1598378 e!1598375)))

(declare-fun res!1066489 () Bool)

(assert (=> b!2524561 (=> res!1066489 e!1598375)))

(declare-fun call!157620 () Bool)

(assert (=> b!2524561 (= res!1066489 call!157620)))

(declare-fun b!2524562 () Bool)

(assert (=> b!2524562 (= e!1598375 (not (= (head!5763 (tail!4040 tl!4068)) (c!402670 (derivativeStep!2083 lt!900126 (head!5763 tl!4068))))))))

(declare-fun b!2524564 () Bool)

(declare-fun e!1598377 () Bool)

(assert (=> b!2524564 (= e!1598377 (= (head!5763 (tail!4040 tl!4068)) (c!402670 (derivativeStep!2083 lt!900126 (head!5763 tl!4068)))))))

(declare-fun bm!157615 () Bool)

(assert (=> bm!157615 (= call!157620 (isEmpty!16951 (tail!4040 tl!4068)))))

(declare-fun b!2524565 () Bool)

(declare-fun res!1066485 () Bool)

(assert (=> b!2524565 (=> res!1066485 e!1598375)))

(assert (=> b!2524565 (= res!1066485 (not (isEmpty!16951 (tail!4040 (tail!4040 tl!4068)))))))

(declare-fun b!2524566 () Bool)

(declare-fun res!1066488 () Bool)

(assert (=> b!2524566 (=> (not res!1066488) (not e!1598377))))

(assert (=> b!2524566 (= res!1066488 (isEmpty!16951 (tail!4040 (tail!4040 tl!4068))))))

(declare-fun b!2524567 () Bool)

(declare-fun e!1598381 () Bool)

(declare-fun e!1598379 () Bool)

(assert (=> b!2524567 (= e!1598381 e!1598379)))

(declare-fun c!402930 () Bool)

(assert (=> b!2524567 (= c!402930 (is-EmptyLang!7514 (derivativeStep!2083 lt!900126 (head!5763 tl!4068))))))

(declare-fun b!2524568 () Bool)

(declare-fun e!1598380 () Bool)

(assert (=> b!2524568 (= e!1598380 e!1598378)))

(declare-fun res!1066486 () Bool)

(assert (=> b!2524568 (=> (not res!1066486) (not e!1598378))))

(declare-fun lt!900268 () Bool)

(assert (=> b!2524568 (= res!1066486 (not lt!900268))))

(declare-fun b!2524569 () Bool)

(assert (=> b!2524569 (= e!1598379 (not lt!900268))))

(declare-fun b!2524570 () Bool)

(assert (=> b!2524570 (= e!1598381 (= lt!900268 call!157620))))

(declare-fun d!718735 () Bool)

(assert (=> d!718735 e!1598381))

(declare-fun c!402929 () Bool)

(assert (=> d!718735 (= c!402929 (is-EmptyExpr!7514 (derivativeStep!2083 lt!900126 (head!5763 tl!4068))))))

(declare-fun e!1598376 () Bool)

(assert (=> d!718735 (= lt!900268 e!1598376)))

(declare-fun c!402928 () Bool)

(assert (=> d!718735 (= c!402928 (isEmpty!16951 (tail!4040 tl!4068)))))

(assert (=> d!718735 (validRegex!3140 (derivativeStep!2083 lt!900126 (head!5763 tl!4068)))))

(assert (=> d!718735 (= (matchR!3501 (derivativeStep!2083 lt!900126 (head!5763 tl!4068)) (tail!4040 tl!4068)) lt!900268)))

(declare-fun b!2524563 () Bool)

(declare-fun res!1066491 () Bool)

(assert (=> b!2524563 (=> (not res!1066491) (not e!1598377))))

(assert (=> b!2524563 (= res!1066491 (not call!157620))))

(declare-fun b!2524571 () Bool)

(declare-fun res!1066490 () Bool)

(assert (=> b!2524571 (=> res!1066490 e!1598380)))

(assert (=> b!2524571 (= res!1066490 (not (is-ElementMatch!7514 (derivativeStep!2083 lt!900126 (head!5763 tl!4068)))))))

(assert (=> b!2524571 (= e!1598379 e!1598380)))

(declare-fun b!2524572 () Bool)

(assert (=> b!2524572 (= e!1598376 (nullable!2431 (derivativeStep!2083 lt!900126 (head!5763 tl!4068))))))

(declare-fun b!2524573 () Bool)

(declare-fun res!1066487 () Bool)

(assert (=> b!2524573 (=> res!1066487 e!1598380)))

(assert (=> b!2524573 (= res!1066487 e!1598377)))

(declare-fun res!1066492 () Bool)

(assert (=> b!2524573 (=> (not res!1066492) (not e!1598377))))

(assert (=> b!2524573 (= res!1066492 lt!900268)))

(declare-fun b!2524574 () Bool)

(assert (=> b!2524574 (= e!1598376 (matchR!3501 (derivativeStep!2083 (derivativeStep!2083 lt!900126 (head!5763 tl!4068)) (head!5763 (tail!4040 tl!4068))) (tail!4040 (tail!4040 tl!4068))))))

(assert (= (and d!718735 c!402928) b!2524572))

(assert (= (and d!718735 (not c!402928)) b!2524574))

(assert (= (and d!718735 c!402929) b!2524570))

(assert (= (and d!718735 (not c!402929)) b!2524567))

(assert (= (and b!2524567 c!402930) b!2524569))

(assert (= (and b!2524567 (not c!402930)) b!2524571))

(assert (= (and b!2524571 (not res!1066490)) b!2524573))

(assert (= (and b!2524573 res!1066492) b!2524563))

(assert (= (and b!2524563 res!1066491) b!2524566))

(assert (= (and b!2524566 res!1066488) b!2524564))

(assert (= (and b!2524573 (not res!1066487)) b!2524568))

(assert (= (and b!2524568 res!1066486) b!2524561))

(assert (= (and b!2524561 (not res!1066489)) b!2524565))

(assert (= (and b!2524565 (not res!1066485)) b!2524562))

(assert (= (or b!2524570 b!2524561 b!2524563) bm!157615))

(assert (=> b!2524564 m!2877611))

(assert (=> b!2524564 m!2877941))

(assert (=> b!2524574 m!2877611))

(assert (=> b!2524574 m!2877941))

(assert (=> b!2524574 m!2877767))

(assert (=> b!2524574 m!2877941))

(declare-fun m!2878303 () Bool)

(assert (=> b!2524574 m!2878303))

(assert (=> b!2524574 m!2877611))

(assert (=> b!2524574 m!2877945))

(assert (=> b!2524574 m!2878303))

(assert (=> b!2524574 m!2877945))

(declare-fun m!2878305 () Bool)

(assert (=> b!2524574 m!2878305))

(assert (=> d!718735 m!2877611))

(assert (=> d!718735 m!2877621))

(assert (=> d!718735 m!2877767))

(declare-fun m!2878307 () Bool)

(assert (=> d!718735 m!2878307))

(assert (=> b!2524572 m!2877767))

(declare-fun m!2878309 () Bool)

(assert (=> b!2524572 m!2878309))

(assert (=> b!2524562 m!2877611))

(assert (=> b!2524562 m!2877941))

(assert (=> bm!157615 m!2877611))

(assert (=> bm!157615 m!2877621))

(assert (=> b!2524565 m!2877611))

(assert (=> b!2524565 m!2877945))

(assert (=> b!2524565 m!2877945))

(assert (=> b!2524565 m!2877953))

(assert (=> b!2524566 m!2877611))

(assert (=> b!2524566 m!2877945))

(assert (=> b!2524566 m!2877945))

(assert (=> b!2524566 m!2877953))

(assert (=> b!2523931 d!718735))

(declare-fun d!718737 () Bool)

(declare-fun lt!900269 () Regex!7514)

(assert (=> d!718737 (validRegex!3140 lt!900269)))

(declare-fun e!1598383 () Regex!7514)

(assert (=> d!718737 (= lt!900269 e!1598383)))

(declare-fun c!402931 () Bool)

(assert (=> d!718737 (= c!402931 (or (is-EmptyExpr!7514 lt!900126) (is-EmptyLang!7514 lt!900126)))))

(assert (=> d!718737 (validRegex!3140 lt!900126)))

(assert (=> d!718737 (= (derivativeStep!2083 lt!900126 (head!5763 tl!4068)) lt!900269)))

(declare-fun b!2524575 () Bool)

(declare-fun e!1598386 () Regex!7514)

(assert (=> b!2524575 (= e!1598386 (ite (= (head!5763 tl!4068) (c!402670 lt!900126)) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524576 () Bool)

(declare-fun e!1598382 () Regex!7514)

(declare-fun call!157622 () Regex!7514)

(assert (=> b!2524576 (= e!1598382 (Concat!12210 call!157622 lt!900126))))

(declare-fun b!2524577 () Bool)

(declare-fun e!1598384 () Regex!7514)

(declare-fun call!157624 () Regex!7514)

(assert (=> b!2524577 (= e!1598384 (Union!7514 (Concat!12210 call!157624 (regTwo!15540 lt!900126)) EmptyLang!7514))))

(declare-fun b!2524578 () Bool)

(declare-fun e!1598385 () Regex!7514)

(declare-fun call!157623 () Regex!7514)

(declare-fun call!157621 () Regex!7514)

(assert (=> b!2524578 (= e!1598385 (Union!7514 call!157623 call!157621))))

(declare-fun b!2524579 () Bool)

(assert (=> b!2524579 (= e!1598383 EmptyLang!7514)))

(declare-fun b!2524580 () Bool)

(assert (=> b!2524580 (= e!1598385 e!1598382)))

(declare-fun c!402934 () Bool)

(assert (=> b!2524580 (= c!402934 (is-Star!7514 lt!900126))))

(declare-fun bm!157616 () Bool)

(assert (=> bm!157616 (= call!157624 call!157622)))

(declare-fun b!2524581 () Bool)

(declare-fun c!402935 () Bool)

(assert (=> b!2524581 (= c!402935 (nullable!2431 (regOne!15540 lt!900126)))))

(assert (=> b!2524581 (= e!1598382 e!1598384)))

(declare-fun b!2524582 () Bool)

(assert (=> b!2524582 (= e!1598384 (Union!7514 (Concat!12210 call!157624 (regTwo!15540 lt!900126)) call!157621))))

(declare-fun b!2524583 () Bool)

(assert (=> b!2524583 (= e!1598383 e!1598386)))

(declare-fun c!402932 () Bool)

(assert (=> b!2524583 (= c!402932 (is-ElementMatch!7514 lt!900126))))

(declare-fun c!402933 () Bool)

(declare-fun bm!157617 () Bool)

(assert (=> bm!157617 (= call!157623 (derivativeStep!2083 (ite c!402933 (regOne!15541 lt!900126) (ite c!402934 (reg!7843 lt!900126) (regOne!15540 lt!900126))) (head!5763 tl!4068)))))

(declare-fun bm!157618 () Bool)

(assert (=> bm!157618 (= call!157621 (derivativeStep!2083 (ite c!402933 (regTwo!15541 lt!900126) (regTwo!15540 lt!900126)) (head!5763 tl!4068)))))

(declare-fun bm!157619 () Bool)

(assert (=> bm!157619 (= call!157622 call!157623)))

(declare-fun b!2524584 () Bool)

(assert (=> b!2524584 (= c!402933 (is-Union!7514 lt!900126))))

(assert (=> b!2524584 (= e!1598386 e!1598385)))

(assert (= (and d!718737 c!402931) b!2524579))

(assert (= (and d!718737 (not c!402931)) b!2524583))

(assert (= (and b!2524583 c!402932) b!2524575))

(assert (= (and b!2524583 (not c!402932)) b!2524584))

(assert (= (and b!2524584 c!402933) b!2524578))

(assert (= (and b!2524584 (not c!402933)) b!2524580))

(assert (= (and b!2524580 c!402934) b!2524576))

(assert (= (and b!2524580 (not c!402934)) b!2524581))

(assert (= (and b!2524581 c!402935) b!2524582))

(assert (= (and b!2524581 (not c!402935)) b!2524577))

(assert (= (or b!2524582 b!2524577) bm!157616))

(assert (= (or b!2524576 bm!157616) bm!157619))

(assert (= (or b!2524578 b!2524582) bm!157618))

(assert (= (or b!2524578 bm!157619) bm!157617))

(declare-fun m!2878311 () Bool)

(assert (=> d!718737 m!2878311))

(assert (=> d!718737 m!2877757))

(assert (=> b!2524581 m!2878255))

(assert (=> bm!157617 m!2877607))

(declare-fun m!2878313 () Bool)

(assert (=> bm!157617 m!2878313))

(assert (=> bm!157618 m!2877607))

(declare-fun m!2878315 () Bool)

(assert (=> bm!157618 m!2878315))

(assert (=> b!2523931 d!718737))

(assert (=> b!2523931 d!718579))

(assert (=> b!2523931 d!718581))

(declare-fun b!2524585 () Bool)

(declare-fun e!1598390 () Bool)

(declare-fun e!1598387 () Bool)

(assert (=> b!2524585 (= e!1598390 e!1598387)))

(declare-fun res!1066497 () Bool)

(assert (=> b!2524585 (=> res!1066497 e!1598387)))

(declare-fun call!157625 () Bool)

(assert (=> b!2524585 (= res!1066497 call!157625)))

(declare-fun b!2524586 () Bool)

(assert (=> b!2524586 (= e!1598387 (not (= (head!5763 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))) (c!402670 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125))))))))))

(declare-fun e!1598389 () Bool)

(declare-fun b!2524588 () Bool)

(assert (=> b!2524588 (= e!1598389 (= (head!5763 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))) (c!402670 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))))

(declare-fun bm!157620 () Bool)

(assert (=> bm!157620 (= call!157625 (isEmpty!16951 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))

(declare-fun b!2524589 () Bool)

(declare-fun res!1066493 () Bool)

(assert (=> b!2524589 (=> res!1066493 e!1598387)))

(assert (=> b!2524589 (= res!1066493 (not (isEmpty!16951 (tail!4040 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))))

(declare-fun b!2524590 () Bool)

(declare-fun res!1066496 () Bool)

(assert (=> b!2524590 (=> (not res!1066496) (not e!1598389))))

(assert (=> b!2524590 (= res!1066496 (isEmpty!16951 (tail!4040 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125))))))))

(declare-fun b!2524591 () Bool)

(declare-fun e!1598393 () Bool)

(declare-fun e!1598391 () Bool)

(assert (=> b!2524591 (= e!1598393 e!1598391)))

(declare-fun c!402938 () Bool)

(assert (=> b!2524591 (= c!402938 (is-EmptyLang!7514 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125))))))))

(declare-fun b!2524592 () Bool)

(declare-fun e!1598392 () Bool)

(assert (=> b!2524592 (= e!1598392 e!1598390)))

(declare-fun res!1066494 () Bool)

(assert (=> b!2524592 (=> (not res!1066494) (not e!1598390))))

(declare-fun lt!900270 () Bool)

(assert (=> b!2524592 (= res!1066494 (not lt!900270))))

(declare-fun b!2524593 () Bool)

(assert (=> b!2524593 (= e!1598391 (not lt!900270))))

(declare-fun b!2524594 () Bool)

(assert (=> b!2524594 (= e!1598393 (= lt!900270 call!157625))))

(declare-fun d!718739 () Bool)

(assert (=> d!718739 e!1598393))

(declare-fun c!402937 () Bool)

(assert (=> d!718739 (= c!402937 (is-EmptyExpr!7514 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125))))))))

(declare-fun e!1598388 () Bool)

(assert (=> d!718739 (= lt!900270 e!1598388)))

(declare-fun c!402936 () Bool)

(assert (=> d!718739 (= c!402936 (isEmpty!16951 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))

(assert (=> d!718739 (validRegex!3140 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))

(assert (=> d!718739 (= (matchR!3501 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))) (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125)))) lt!900270)))

(declare-fun b!2524587 () Bool)

(declare-fun res!1066499 () Bool)

(assert (=> b!2524587 (=> (not res!1066499) (not e!1598389))))

(assert (=> b!2524587 (= res!1066499 (not call!157625))))

(declare-fun b!2524595 () Bool)

(declare-fun res!1066498 () Bool)

(assert (=> b!2524595 (=> res!1066498 e!1598392)))

(assert (=> b!2524595 (= res!1066498 (not (is-ElementMatch!7514 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))))

(assert (=> b!2524595 (= e!1598391 e!1598392)))

(declare-fun b!2524596 () Bool)

(assert (=> b!2524596 (= e!1598388 (nullable!2431 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125))))))))

(declare-fun b!2524597 () Bool)

(declare-fun res!1066495 () Bool)

(assert (=> b!2524597 (=> res!1066495 e!1598392)))

(assert (=> b!2524597 (= res!1066495 e!1598389)))

(declare-fun res!1066500 () Bool)

(assert (=> b!2524597 (=> (not res!1066500) (not e!1598389))))

(assert (=> b!2524597 (= res!1066500 lt!900270)))

(declare-fun b!2524598 () Bool)

(assert (=> b!2524598 (= e!1598388 (matchR!3501 (derivativeStep!2083 (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))) (head!5763 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125))))) (tail!4040 (tail!4040 (Cons!29479 c!14016 (_1!17307 lt!900125))))))))

(assert (= (and d!718739 c!402936) b!2524596))

(assert (= (and d!718739 (not c!402936)) b!2524598))

(assert (= (and d!718739 c!402937) b!2524594))

(assert (= (and d!718739 (not c!402937)) b!2524591))

(assert (= (and b!2524591 c!402938) b!2524593))

(assert (= (and b!2524591 (not c!402938)) b!2524595))

(assert (= (and b!2524595 (not res!1066498)) b!2524597))

(assert (= (and b!2524597 res!1066500) b!2524587))

(assert (= (and b!2524587 res!1066499) b!2524590))

(assert (= (and b!2524590 res!1066496) b!2524588))

(assert (= (and b!2524597 (not res!1066495)) b!2524592))

(assert (= (and b!2524592 res!1066494) b!2524585))

(assert (= (and b!2524585 (not res!1066497)) b!2524589))

(assert (= (and b!2524589 (not res!1066493)) b!2524586))

(assert (= (or b!2524594 b!2524585 b!2524587) bm!157620))

(assert (=> b!2524588 m!2877649))

(declare-fun m!2878317 () Bool)

(assert (=> b!2524588 m!2878317))

(assert (=> b!2524598 m!2877649))

(assert (=> b!2524598 m!2878317))

(assert (=> b!2524598 m!2877647))

(assert (=> b!2524598 m!2878317))

(declare-fun m!2878319 () Bool)

(assert (=> b!2524598 m!2878319))

(assert (=> b!2524598 m!2877649))

(declare-fun m!2878321 () Bool)

(assert (=> b!2524598 m!2878321))

(assert (=> b!2524598 m!2878319))

(assert (=> b!2524598 m!2878321))

(declare-fun m!2878323 () Bool)

(assert (=> b!2524598 m!2878323))

(assert (=> d!718739 m!2877649))

(assert (=> d!718739 m!2877657))

(assert (=> d!718739 m!2877647))

(declare-fun m!2878325 () Bool)

(assert (=> d!718739 m!2878325))

(assert (=> b!2524596 m!2877647))

(declare-fun m!2878327 () Bool)

(assert (=> b!2524596 m!2878327))

(assert (=> b!2524586 m!2877649))

(assert (=> b!2524586 m!2878317))

(assert (=> bm!157620 m!2877649))

(assert (=> bm!157620 m!2877657))

(assert (=> b!2524589 m!2877649))

(assert (=> b!2524589 m!2878321))

(assert (=> b!2524589 m!2878321))

(declare-fun m!2878329 () Bool)

(assert (=> b!2524589 m!2878329))

(assert (=> b!2524590 m!2877649))

(assert (=> b!2524590 m!2878321))

(assert (=> b!2524590 m!2878321))

(assert (=> b!2524590 m!2878329))

(assert (=> b!2523808 d!718739))

(declare-fun d!718741 () Bool)

(declare-fun lt!900271 () Regex!7514)

(assert (=> d!718741 (validRegex!3140 lt!900271)))

(declare-fun e!1598395 () Regex!7514)

(assert (=> d!718741 (= lt!900271 e!1598395)))

(declare-fun c!402939 () Bool)

(assert (=> d!718741 (= c!402939 (or (is-EmptyExpr!7514 (regOne!15540 r!27340)) (is-EmptyLang!7514 (regOne!15540 r!27340))))))

(assert (=> d!718741 (validRegex!3140 (regOne!15540 r!27340))))

(assert (=> d!718741 (= (derivativeStep!2083 (regOne!15540 r!27340) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))) lt!900271)))

(declare-fun b!2524599 () Bool)

(declare-fun e!1598398 () Regex!7514)

(assert (=> b!2524599 (= e!1598398 (ite (= (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125))) (c!402670 (regOne!15540 r!27340))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524600 () Bool)

(declare-fun e!1598394 () Regex!7514)

(declare-fun call!157627 () Regex!7514)

(assert (=> b!2524600 (= e!1598394 (Concat!12210 call!157627 (regOne!15540 r!27340)))))

(declare-fun b!2524601 () Bool)

(declare-fun e!1598396 () Regex!7514)

(declare-fun call!157629 () Regex!7514)

(assert (=> b!2524601 (= e!1598396 (Union!7514 (Concat!12210 call!157629 (regTwo!15540 (regOne!15540 r!27340))) EmptyLang!7514))))

(declare-fun b!2524602 () Bool)

(declare-fun e!1598397 () Regex!7514)

(declare-fun call!157628 () Regex!7514)

(declare-fun call!157626 () Regex!7514)

(assert (=> b!2524602 (= e!1598397 (Union!7514 call!157628 call!157626))))

(declare-fun b!2524603 () Bool)

(assert (=> b!2524603 (= e!1598395 EmptyLang!7514)))

(declare-fun b!2524604 () Bool)

(assert (=> b!2524604 (= e!1598397 e!1598394)))

(declare-fun c!402942 () Bool)

(assert (=> b!2524604 (= c!402942 (is-Star!7514 (regOne!15540 r!27340)))))

(declare-fun bm!157621 () Bool)

(assert (=> bm!157621 (= call!157629 call!157627)))

(declare-fun b!2524605 () Bool)

(declare-fun c!402943 () Bool)

(assert (=> b!2524605 (= c!402943 (nullable!2431 (regOne!15540 (regOne!15540 r!27340))))))

(assert (=> b!2524605 (= e!1598394 e!1598396)))

(declare-fun b!2524606 () Bool)

(assert (=> b!2524606 (= e!1598396 (Union!7514 (Concat!12210 call!157629 (regTwo!15540 (regOne!15540 r!27340))) call!157626))))

(declare-fun b!2524607 () Bool)

(assert (=> b!2524607 (= e!1598395 e!1598398)))

(declare-fun c!402940 () Bool)

(assert (=> b!2524607 (= c!402940 (is-ElementMatch!7514 (regOne!15540 r!27340)))))

(declare-fun bm!157622 () Bool)

(declare-fun c!402941 () Bool)

(assert (=> bm!157622 (= call!157628 (derivativeStep!2083 (ite c!402941 (regOne!15541 (regOne!15540 r!27340)) (ite c!402942 (reg!7843 (regOne!15540 r!27340)) (regOne!15540 (regOne!15540 r!27340)))) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))

(declare-fun bm!157623 () Bool)

(assert (=> bm!157623 (= call!157626 (derivativeStep!2083 (ite c!402941 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))) (head!5763 (Cons!29479 c!14016 (_1!17307 lt!900125)))))))

(declare-fun bm!157624 () Bool)

(assert (=> bm!157624 (= call!157627 call!157628)))

(declare-fun b!2524608 () Bool)

(assert (=> b!2524608 (= c!402941 (is-Union!7514 (regOne!15540 r!27340)))))

(assert (=> b!2524608 (= e!1598398 e!1598397)))

(assert (= (and d!718741 c!402939) b!2524603))

(assert (= (and d!718741 (not c!402939)) b!2524607))

(assert (= (and b!2524607 c!402940) b!2524599))

(assert (= (and b!2524607 (not c!402940)) b!2524608))

(assert (= (and b!2524608 c!402941) b!2524602))

(assert (= (and b!2524608 (not c!402941)) b!2524604))

(assert (= (and b!2524604 c!402942) b!2524600))

(assert (= (and b!2524604 (not c!402942)) b!2524605))

(assert (= (and b!2524605 c!402943) b!2524606))

(assert (= (and b!2524605 (not c!402943)) b!2524601))

(assert (= (or b!2524606 b!2524601) bm!157621))

(assert (= (or b!2524600 bm!157621) bm!157624))

(assert (= (or b!2524602 b!2524606) bm!157623))

(assert (= (or b!2524602 bm!157624) bm!157622))

(declare-fun m!2878331 () Bool)

(assert (=> d!718741 m!2878331))

(assert (=> d!718741 m!2877655))

(assert (=> b!2524605 m!2877799))

(assert (=> bm!157622 m!2877645))

(declare-fun m!2878333 () Bool)

(assert (=> bm!157622 m!2878333))

(assert (=> bm!157623 m!2877645))

(declare-fun m!2878335 () Bool)

(assert (=> bm!157623 m!2878335))

(assert (=> b!2523808 d!718741))

(assert (=> b!2523808 d!718673))

(assert (=> b!2523808 d!718685))

(declare-fun b!2524609 () Bool)

(declare-fun e!1598402 () Bool)

(declare-fun e!1598399 () Bool)

(assert (=> b!2524609 (= e!1598402 e!1598399)))

(declare-fun res!1066505 () Bool)

(assert (=> b!2524609 (=> res!1066505 e!1598399)))

(declare-fun call!157630 () Bool)

(assert (=> b!2524609 (= res!1066505 call!157630)))

(declare-fun b!2524610 () Bool)

(assert (=> b!2524610 (= e!1598399 (not (= (head!5763 (tail!4040 (_2!17307 lt!900125))) (c!402670 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125)))))))))

(declare-fun b!2524612 () Bool)

(declare-fun e!1598401 () Bool)

(assert (=> b!2524612 (= e!1598401 (= (head!5763 (tail!4040 (_2!17307 lt!900125))) (c!402670 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125))))))))

(declare-fun bm!157625 () Bool)

(assert (=> bm!157625 (= call!157630 (isEmpty!16951 (tail!4040 (_2!17307 lt!900125))))))

(declare-fun b!2524613 () Bool)

(declare-fun res!1066501 () Bool)

(assert (=> b!2524613 (=> res!1066501 e!1598399)))

(assert (=> b!2524613 (= res!1066501 (not (isEmpty!16951 (tail!4040 (tail!4040 (_2!17307 lt!900125))))))))

(declare-fun b!2524614 () Bool)

(declare-fun res!1066504 () Bool)

(assert (=> b!2524614 (=> (not res!1066504) (not e!1598401))))

(assert (=> b!2524614 (= res!1066504 (isEmpty!16951 (tail!4040 (tail!4040 (_2!17307 lt!900125)))))))

(declare-fun b!2524615 () Bool)

(declare-fun e!1598405 () Bool)

(declare-fun e!1598403 () Bool)

(assert (=> b!2524615 (= e!1598405 e!1598403)))

(declare-fun c!402946 () Bool)

(assert (=> b!2524615 (= c!402946 (is-EmptyLang!7514 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125)))))))

(declare-fun b!2524616 () Bool)

(declare-fun e!1598404 () Bool)

(assert (=> b!2524616 (= e!1598404 e!1598402)))

(declare-fun res!1066502 () Bool)

(assert (=> b!2524616 (=> (not res!1066502) (not e!1598402))))

(declare-fun lt!900272 () Bool)

(assert (=> b!2524616 (= res!1066502 (not lt!900272))))

(declare-fun b!2524617 () Bool)

(assert (=> b!2524617 (= e!1598403 (not lt!900272))))

(declare-fun b!2524618 () Bool)

(assert (=> b!2524618 (= e!1598405 (= lt!900272 call!157630))))

(declare-fun d!718743 () Bool)

(assert (=> d!718743 e!1598405))

(declare-fun c!402945 () Bool)

(assert (=> d!718743 (= c!402945 (is-EmptyExpr!7514 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125)))))))

(declare-fun e!1598400 () Bool)

(assert (=> d!718743 (= lt!900272 e!1598400)))

(declare-fun c!402944 () Bool)

(assert (=> d!718743 (= c!402944 (isEmpty!16951 (tail!4040 (_2!17307 lt!900125))))))

(assert (=> d!718743 (validRegex!3140 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125))))))

(assert (=> d!718743 (= (matchR!3501 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125))) (tail!4040 (_2!17307 lt!900125))) lt!900272)))

(declare-fun b!2524611 () Bool)

(declare-fun res!1066507 () Bool)

(assert (=> b!2524611 (=> (not res!1066507) (not e!1598401))))

(assert (=> b!2524611 (= res!1066507 (not call!157630))))

(declare-fun b!2524619 () Bool)

(declare-fun res!1066506 () Bool)

(assert (=> b!2524619 (=> res!1066506 e!1598404)))

(assert (=> b!2524619 (= res!1066506 (not (is-ElementMatch!7514 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125))))))))

(assert (=> b!2524619 (= e!1598403 e!1598404)))

(declare-fun b!2524620 () Bool)

(assert (=> b!2524620 (= e!1598400 (nullable!2431 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125)))))))

(declare-fun b!2524621 () Bool)

(declare-fun res!1066503 () Bool)

(assert (=> b!2524621 (=> res!1066503 e!1598404)))

(assert (=> b!2524621 (= res!1066503 e!1598401)))

(declare-fun res!1066508 () Bool)

(assert (=> b!2524621 (=> (not res!1066508) (not e!1598401))))

(assert (=> b!2524621 (= res!1066508 lt!900272)))

(declare-fun b!2524622 () Bool)

(assert (=> b!2524622 (= e!1598400 (matchR!3501 (derivativeStep!2083 (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125))) (head!5763 (tail!4040 (_2!17307 lt!900125)))) (tail!4040 (tail!4040 (_2!17307 lt!900125)))))))

(assert (= (and d!718743 c!402944) b!2524620))

(assert (= (and d!718743 (not c!402944)) b!2524622))

(assert (= (and d!718743 c!402945) b!2524618))

(assert (= (and d!718743 (not c!402945)) b!2524615))

(assert (= (and b!2524615 c!402946) b!2524617))

(assert (= (and b!2524615 (not c!402946)) b!2524619))

(assert (= (and b!2524619 (not res!1066506)) b!2524621))

(assert (= (and b!2524621 res!1066508) b!2524611))

(assert (= (and b!2524611 res!1066507) b!2524614))

(assert (= (and b!2524614 res!1066504) b!2524612))

(assert (= (and b!2524621 (not res!1066503)) b!2524616))

(assert (= (and b!2524616 res!1066502) b!2524609))

(assert (= (and b!2524609 (not res!1066505)) b!2524613))

(assert (= (and b!2524613 (not res!1066501)) b!2524610))

(assert (= (or b!2524618 b!2524609 b!2524611) bm!157625))

(assert (=> b!2524612 m!2877573))

(declare-fun m!2878337 () Bool)

(assert (=> b!2524612 m!2878337))

(assert (=> b!2524622 m!2877573))

(assert (=> b!2524622 m!2878337))

(assert (=> b!2524622 m!2877571))

(assert (=> b!2524622 m!2878337))

(declare-fun m!2878339 () Bool)

(assert (=> b!2524622 m!2878339))

(assert (=> b!2524622 m!2877573))

(declare-fun m!2878341 () Bool)

(assert (=> b!2524622 m!2878341))

(assert (=> b!2524622 m!2878339))

(assert (=> b!2524622 m!2878341))

(declare-fun m!2878343 () Bool)

(assert (=> b!2524622 m!2878343))

(assert (=> d!718743 m!2877573))

(assert (=> d!718743 m!2877583))

(assert (=> d!718743 m!2877571))

(declare-fun m!2878345 () Bool)

(assert (=> d!718743 m!2878345))

(assert (=> b!2524620 m!2877571))

(declare-fun m!2878347 () Bool)

(assert (=> b!2524620 m!2878347))

(assert (=> b!2524610 m!2877573))

(assert (=> b!2524610 m!2878337))

(assert (=> bm!157625 m!2877573))

(assert (=> bm!157625 m!2877583))

(assert (=> b!2524613 m!2877573))

(assert (=> b!2524613 m!2878341))

(assert (=> b!2524613 m!2878341))

(declare-fun m!2878349 () Bool)

(assert (=> b!2524613 m!2878349))

(assert (=> b!2524614 m!2877573))

(assert (=> b!2524614 m!2878341))

(assert (=> b!2524614 m!2878341))

(assert (=> b!2524614 m!2878349))

(assert (=> b!2523666 d!718743))

(declare-fun d!718745 () Bool)

(declare-fun lt!900273 () Regex!7514)

(assert (=> d!718745 (validRegex!3140 lt!900273)))

(declare-fun e!1598407 () Regex!7514)

(assert (=> d!718745 (= lt!900273 e!1598407)))

(declare-fun c!402947 () Bool)

(assert (=> d!718745 (= c!402947 (or (is-EmptyExpr!7514 (regTwo!15540 r!27340)) (is-EmptyLang!7514 (regTwo!15540 r!27340))))))

(assert (=> d!718745 (validRegex!3140 (regTwo!15540 r!27340))))

(assert (=> d!718745 (= (derivativeStep!2083 (regTwo!15540 r!27340) (head!5763 (_2!17307 lt!900125))) lt!900273)))

(declare-fun b!2524623 () Bool)

(declare-fun e!1598410 () Regex!7514)

(assert (=> b!2524623 (= e!1598410 (ite (= (head!5763 (_2!17307 lt!900125)) (c!402670 (regTwo!15540 r!27340))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun b!2524624 () Bool)

(declare-fun e!1598406 () Regex!7514)

(declare-fun call!157632 () Regex!7514)

(assert (=> b!2524624 (= e!1598406 (Concat!12210 call!157632 (regTwo!15540 r!27340)))))

(declare-fun b!2524625 () Bool)

(declare-fun e!1598408 () Regex!7514)

(declare-fun call!157634 () Regex!7514)

(assert (=> b!2524625 (= e!1598408 (Union!7514 (Concat!12210 call!157634 (regTwo!15540 (regTwo!15540 r!27340))) EmptyLang!7514))))

(declare-fun b!2524626 () Bool)

(declare-fun e!1598409 () Regex!7514)

(declare-fun call!157633 () Regex!7514)

(declare-fun call!157631 () Regex!7514)

(assert (=> b!2524626 (= e!1598409 (Union!7514 call!157633 call!157631))))

(declare-fun b!2524627 () Bool)

(assert (=> b!2524627 (= e!1598407 EmptyLang!7514)))

(declare-fun b!2524628 () Bool)

(assert (=> b!2524628 (= e!1598409 e!1598406)))

(declare-fun c!402950 () Bool)

(assert (=> b!2524628 (= c!402950 (is-Star!7514 (regTwo!15540 r!27340)))))

(declare-fun bm!157626 () Bool)

(assert (=> bm!157626 (= call!157634 call!157632)))

(declare-fun b!2524629 () Bool)

(declare-fun c!402951 () Bool)

(assert (=> b!2524629 (= c!402951 (nullable!2431 (regOne!15540 (regTwo!15540 r!27340))))))

(assert (=> b!2524629 (= e!1598406 e!1598408)))

(declare-fun b!2524630 () Bool)

(assert (=> b!2524630 (= e!1598408 (Union!7514 (Concat!12210 call!157634 (regTwo!15540 (regTwo!15540 r!27340))) call!157631))))

(declare-fun b!2524631 () Bool)

(assert (=> b!2524631 (= e!1598407 e!1598410)))

(declare-fun c!402948 () Bool)

(assert (=> b!2524631 (= c!402948 (is-ElementMatch!7514 (regTwo!15540 r!27340)))))

(declare-fun c!402949 () Bool)

(declare-fun bm!157627 () Bool)

(assert (=> bm!157627 (= call!157633 (derivativeStep!2083 (ite c!402949 (regOne!15541 (regTwo!15540 r!27340)) (ite c!402950 (reg!7843 (regTwo!15540 r!27340)) (regOne!15540 (regTwo!15540 r!27340)))) (head!5763 (_2!17307 lt!900125))))))

(declare-fun bm!157628 () Bool)

(assert (=> bm!157628 (= call!157631 (derivativeStep!2083 (ite c!402949 (regTwo!15541 (regTwo!15540 r!27340)) (regTwo!15540 (regTwo!15540 r!27340))) (head!5763 (_2!17307 lt!900125))))))

(declare-fun bm!157629 () Bool)

(assert (=> bm!157629 (= call!157632 call!157633)))

(declare-fun b!2524632 () Bool)

(assert (=> b!2524632 (= c!402949 (is-Union!7514 (regTwo!15540 r!27340)))))

(assert (=> b!2524632 (= e!1598410 e!1598409)))

(assert (= (and d!718745 c!402947) b!2524627))

(assert (= (and d!718745 (not c!402947)) b!2524631))

(assert (= (and b!2524631 c!402948) b!2524623))

(assert (= (and b!2524631 (not c!402948)) b!2524632))

(assert (= (and b!2524632 c!402949) b!2524626))

(assert (= (and b!2524632 (not c!402949)) b!2524628))

(assert (= (and b!2524628 c!402950) b!2524624))

(assert (= (and b!2524628 (not c!402950)) b!2524629))

(assert (= (and b!2524629 c!402951) b!2524630))

(assert (= (and b!2524629 (not c!402951)) b!2524625))

(assert (= (or b!2524630 b!2524625) bm!157626))

(assert (= (or b!2524624 bm!157626) bm!157629))

(assert (= (or b!2524626 b!2524630) bm!157628))

(assert (= (or b!2524626 bm!157629) bm!157627))

(declare-fun m!2878351 () Bool)

(assert (=> d!718745 m!2878351))

(assert (=> d!718745 m!2877579))

(assert (=> b!2524629 m!2877791))

(assert (=> bm!157627 m!2877569))

(declare-fun m!2878353 () Bool)

(assert (=> bm!157627 m!2878353))

(assert (=> bm!157628 m!2877569))

(declare-fun m!2878355 () Bool)

(assert (=> bm!157628 m!2878355))

(assert (=> b!2523666 d!718745))

(assert (=> b!2523666 d!718671))

(assert (=> b!2523666 d!718681))

(assert (=> d!718501 d!718701))

(assert (=> d!718501 d!718609))

(declare-fun bm!157630 () Bool)

(declare-fun call!157636 () Bool)

(declare-fun call!157635 () Bool)

(assert (=> bm!157630 (= call!157636 call!157635)))

(declare-fun b!2524633 () Bool)

(declare-fun e!1598417 () Bool)

(declare-fun e!1598414 () Bool)

(assert (=> b!2524633 (= e!1598417 e!1598414)))

(declare-fun res!1066509 () Bool)

(assert (=> b!2524633 (= res!1066509 (not (nullable!2431 (reg!7843 lt!900162))))))

(assert (=> b!2524633 (=> (not res!1066509) (not e!1598414))))

(declare-fun b!2524634 () Bool)

(declare-fun e!1598412 () Bool)

(assert (=> b!2524634 (= e!1598412 e!1598417)))

(declare-fun c!402953 () Bool)

(assert (=> b!2524634 (= c!402953 (is-Star!7514 lt!900162))))

(declare-fun d!718747 () Bool)

(declare-fun res!1066513 () Bool)

(assert (=> d!718747 (=> res!1066513 e!1598412)))

(assert (=> d!718747 (= res!1066513 (is-ElementMatch!7514 lt!900162))))

(assert (=> d!718747 (= (validRegex!3140 lt!900162) e!1598412)))

(declare-fun bm!157631 () Bool)

(declare-fun c!402952 () Bool)

(assert (=> bm!157631 (= call!157635 (validRegex!3140 (ite c!402953 (reg!7843 lt!900162) (ite c!402952 (regTwo!15541 lt!900162) (regOne!15540 lt!900162)))))))

(declare-fun b!2524635 () Bool)

(declare-fun res!1066512 () Bool)

(declare-fun e!1598416 () Bool)

(assert (=> b!2524635 (=> res!1066512 e!1598416)))

(assert (=> b!2524635 (= res!1066512 (not (is-Concat!12210 lt!900162)))))

(declare-fun e!1598411 () Bool)

(assert (=> b!2524635 (= e!1598411 e!1598416)))

(declare-fun b!2524636 () Bool)

(declare-fun e!1598413 () Bool)

(declare-fun call!157637 () Bool)

(assert (=> b!2524636 (= e!1598413 call!157637)))

(declare-fun b!2524637 () Bool)

(declare-fun res!1066510 () Bool)

(declare-fun e!1598415 () Bool)

(assert (=> b!2524637 (=> (not res!1066510) (not e!1598415))))

(assert (=> b!2524637 (= res!1066510 call!157637)))

(assert (=> b!2524637 (= e!1598411 e!1598415)))

(declare-fun b!2524638 () Bool)

(assert (=> b!2524638 (= e!1598416 e!1598413)))

(declare-fun res!1066511 () Bool)

(assert (=> b!2524638 (=> (not res!1066511) (not e!1598413))))

(assert (=> b!2524638 (= res!1066511 call!157636)))

(declare-fun bm!157632 () Bool)

(assert (=> bm!157632 (= call!157637 (validRegex!3140 (ite c!402952 (regOne!15541 lt!900162) (regTwo!15540 lt!900162))))))

(declare-fun b!2524639 () Bool)

(assert (=> b!2524639 (= e!1598417 e!1598411)))

(assert (=> b!2524639 (= c!402952 (is-Union!7514 lt!900162))))

(declare-fun b!2524640 () Bool)

(assert (=> b!2524640 (= e!1598414 call!157635)))

(declare-fun b!2524641 () Bool)

(assert (=> b!2524641 (= e!1598415 call!157636)))

(assert (= (and d!718747 (not res!1066513)) b!2524634))

(assert (= (and b!2524634 c!402953) b!2524633))

(assert (= (and b!2524634 (not c!402953)) b!2524639))

(assert (= (and b!2524633 res!1066509) b!2524640))

(assert (= (and b!2524639 c!402952) b!2524637))

(assert (= (and b!2524639 (not c!402952)) b!2524635))

(assert (= (and b!2524637 res!1066510) b!2524641))

(assert (= (and b!2524635 (not res!1066512)) b!2524638))

(assert (= (and b!2524638 res!1066511) b!2524636))

(assert (= (or b!2524637 b!2524636) bm!157632))

(assert (= (or b!2524641 b!2524638) bm!157630))

(assert (= (or b!2524640 bm!157630) bm!157631))

(declare-fun m!2878357 () Bool)

(assert (=> b!2524633 m!2878357))

(declare-fun m!2878359 () Bool)

(assert (=> bm!157631 m!2878359))

(declare-fun m!2878361 () Bool)

(assert (=> bm!157632 m!2878361))

(assert (=> d!718493 d!718747))

(declare-fun bm!157633 () Bool)

(declare-fun call!157639 () Bool)

(declare-fun call!157638 () Bool)

(assert (=> bm!157633 (= call!157639 call!157638)))

(declare-fun b!2524642 () Bool)

(declare-fun e!1598424 () Bool)

(declare-fun e!1598421 () Bool)

(assert (=> b!2524642 (= e!1598424 e!1598421)))

(declare-fun res!1066514 () Bool)

(assert (=> b!2524642 (= res!1066514 (not (nullable!2431 (reg!7843 (derivativeStep!2083 r!27340 c!14016)))))))

(assert (=> b!2524642 (=> (not res!1066514) (not e!1598421))))

(declare-fun b!2524643 () Bool)

(declare-fun e!1598419 () Bool)

(assert (=> b!2524643 (= e!1598419 e!1598424)))

(declare-fun c!402955 () Bool)

(assert (=> b!2524643 (= c!402955 (is-Star!7514 (derivativeStep!2083 r!27340 c!14016)))))

(declare-fun d!718749 () Bool)

(declare-fun res!1066518 () Bool)

(assert (=> d!718749 (=> res!1066518 e!1598419)))

(assert (=> d!718749 (= res!1066518 (is-ElementMatch!7514 (derivativeStep!2083 r!27340 c!14016)))))

(assert (=> d!718749 (= (validRegex!3140 (derivativeStep!2083 r!27340 c!14016)) e!1598419)))

(declare-fun bm!157634 () Bool)

(declare-fun c!402954 () Bool)

(assert (=> bm!157634 (= call!157638 (validRegex!3140 (ite c!402955 (reg!7843 (derivativeStep!2083 r!27340 c!14016)) (ite c!402954 (regTwo!15541 (derivativeStep!2083 r!27340 c!14016)) (regOne!15540 (derivativeStep!2083 r!27340 c!14016))))))))

(declare-fun b!2524644 () Bool)

(declare-fun res!1066517 () Bool)

(declare-fun e!1598423 () Bool)

(assert (=> b!2524644 (=> res!1066517 e!1598423)))

(assert (=> b!2524644 (= res!1066517 (not (is-Concat!12210 (derivativeStep!2083 r!27340 c!14016))))))

(declare-fun e!1598418 () Bool)

(assert (=> b!2524644 (= e!1598418 e!1598423)))

(declare-fun b!2524645 () Bool)

(declare-fun e!1598420 () Bool)

(declare-fun call!157640 () Bool)

(assert (=> b!2524645 (= e!1598420 call!157640)))

(declare-fun b!2524646 () Bool)

(declare-fun res!1066515 () Bool)

(declare-fun e!1598422 () Bool)

(assert (=> b!2524646 (=> (not res!1066515) (not e!1598422))))

(assert (=> b!2524646 (= res!1066515 call!157640)))

(assert (=> b!2524646 (= e!1598418 e!1598422)))

(declare-fun b!2524647 () Bool)

(assert (=> b!2524647 (= e!1598423 e!1598420)))

(declare-fun res!1066516 () Bool)

(assert (=> b!2524647 (=> (not res!1066516) (not e!1598420))))

(assert (=> b!2524647 (= res!1066516 call!157639)))

(declare-fun bm!157635 () Bool)

(assert (=> bm!157635 (= call!157640 (validRegex!3140 (ite c!402954 (regOne!15541 (derivativeStep!2083 r!27340 c!14016)) (regTwo!15540 (derivativeStep!2083 r!27340 c!14016)))))))

(declare-fun b!2524648 () Bool)

(assert (=> b!2524648 (= e!1598424 e!1598418)))

(assert (=> b!2524648 (= c!402954 (is-Union!7514 (derivativeStep!2083 r!27340 c!14016)))))

(declare-fun b!2524649 () Bool)

(assert (=> b!2524649 (= e!1598421 call!157638)))

(declare-fun b!2524650 () Bool)

(assert (=> b!2524650 (= e!1598422 call!157639)))

(assert (= (and d!718749 (not res!1066518)) b!2524643))

(assert (= (and b!2524643 c!402955) b!2524642))

(assert (= (and b!2524643 (not c!402955)) b!2524648))

(assert (= (and b!2524642 res!1066514) b!2524649))

(assert (= (and b!2524648 c!402954) b!2524646))

(assert (= (and b!2524648 (not c!402954)) b!2524644))

(assert (= (and b!2524646 res!1066515) b!2524650))

(assert (= (and b!2524644 (not res!1066517)) b!2524647))

(assert (= (and b!2524647 res!1066516) b!2524645))

(assert (= (or b!2524646 b!2524645) bm!157635))

(assert (= (or b!2524650 b!2524647) bm!157633))

(assert (= (or b!2524649 bm!157633) bm!157634))

(declare-fun m!2878363 () Bool)

(assert (=> b!2524642 m!2878363))

(declare-fun m!2878365 () Bool)

(assert (=> bm!157634 m!2878365))

(declare-fun m!2878367 () Bool)

(assert (=> bm!157635 m!2878367))

(assert (=> d!718493 d!718749))

(assert (=> b!2523889 d!718579))

(declare-fun d!718751 () Bool)

(declare-fun lt!900274 () Regex!7514)

(assert (=> d!718751 (validRegex!3140 lt!900274)))

(declare-fun e!1598426 () Regex!7514)

(assert (=> d!718751 (= lt!900274 e!1598426)))

(declare-fun c!402956 () Bool)

(assert (=> d!718751 (= c!402956 (or (is-EmptyExpr!7514 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))) (is-EmptyLang!7514 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))))))))

(assert (=> d!718751 (validRegex!3140 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))))))

(assert (=> d!718751 (= (derivativeStep!2083 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))) c!14016) lt!900274)))

(declare-fun e!1598429 () Regex!7514)

(declare-fun b!2524651 () Bool)

(assert (=> b!2524651 (= e!1598429 (ite (= c!14016 (c!402670 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))))) EmptyExpr!7514 EmptyLang!7514))))

(declare-fun e!1598425 () Regex!7514)

(declare-fun b!2524652 () Bool)

(declare-fun call!157642 () Regex!7514)

(assert (=> b!2524652 (= e!1598425 (Concat!12210 call!157642 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))))))

(declare-fun b!2524653 () Bool)

(declare-fun e!1598427 () Regex!7514)

(declare-fun call!157644 () Regex!7514)

(assert (=> b!2524653 (= e!1598427 (Union!7514 (Concat!12210 call!157644 (regTwo!15540 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))))) EmptyLang!7514))))

(declare-fun b!2524654 () Bool)

(declare-fun e!1598428 () Regex!7514)

(declare-fun call!157643 () Regex!7514)

(declare-fun call!157641 () Regex!7514)

(assert (=> b!2524654 (= e!1598428 (Union!7514 call!157643 call!157641))))

(declare-fun b!2524655 () Bool)

(assert (=> b!2524655 (= e!1598426 EmptyLang!7514)))

(declare-fun b!2524656 () Bool)

(assert (=> b!2524656 (= e!1598428 e!1598425)))

(declare-fun c!402959 () Bool)

(assert (=> b!2524656 (= c!402959 (is-Star!7514 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))))))

(declare-fun bm!157636 () Bool)

(assert (=> bm!157636 (= call!157644 call!157642)))

(declare-fun b!2524657 () Bool)

(declare-fun c!402960 () Bool)

(assert (=> b!2524657 (= c!402960 (nullable!2431 (regOne!15540 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))))))))

(assert (=> b!2524657 (= e!1598425 e!1598427)))

(declare-fun b!2524658 () Bool)

(assert (=> b!2524658 (= e!1598427 (Union!7514 (Concat!12210 call!157644 (regTwo!15540 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))))) call!157641))))

(declare-fun b!2524659 () Bool)

(assert (=> b!2524659 (= e!1598426 e!1598429)))

(declare-fun c!402957 () Bool)

(assert (=> b!2524659 (= c!402957 (is-ElementMatch!7514 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))))))

(declare-fun c!402958 () Bool)

(declare-fun bm!157637 () Bool)

(assert (=> bm!157637 (= call!157643 (derivativeStep!2083 (ite c!402958 (regOne!15541 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))) (ite c!402959 (reg!7843 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))) (regOne!15540 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))))) c!14016))))

(declare-fun bm!157638 () Bool)

(assert (=> bm!157638 (= call!157641 (derivativeStep!2083 (ite c!402958 (regTwo!15541 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))) (regTwo!15540 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340))))) c!14016))))

(declare-fun bm!157639 () Bool)

(assert (=> bm!157639 (= call!157642 call!157643)))

(declare-fun b!2524660 () Bool)

(assert (=> b!2524660 (= c!402958 (is-Union!7514 (ite c!402763 (regTwo!15541 (regOne!15540 r!27340)) (regTwo!15540 (regOne!15540 r!27340)))))))

(assert (=> b!2524660 (= e!1598429 e!1598428)))

(assert (= (and d!718751 c!402956) b!2524655))

(assert (= (and d!718751 (not c!402956)) b!2524659))

(assert (= (and b!2524659 c!402957) b!2524651))

(assert (= (and b!2524659 (not c!402957)) b!2524660))

(assert (= (and b!2524660 c!402958) b!2524654))

(assert (= (and b!2524660 (not c!402958)) b!2524656))

(assert (= (and b!2524656 c!402959) b!2524652))

(assert (= (and b!2524656 (not c!402959)) b!2524657))

(assert (= (and b!2524657 c!402960) b!2524658))

(assert (= (and b!2524657 (not c!402960)) b!2524653))

(assert (= (or b!2524658 b!2524653) bm!157636))

(assert (= (or b!2524652 bm!157636) bm!157639))

(assert (= (or b!2524654 b!2524658) bm!157638))

(assert (= (or b!2524654 bm!157639) bm!157637))

(declare-fun m!2878369 () Bool)

(assert (=> d!718751 m!2878369))

(declare-fun m!2878371 () Bool)

(assert (=> d!718751 m!2878371))

(declare-fun m!2878373 () Bool)

(assert (=> b!2524657 m!2878373))

(declare-fun m!2878375 () Bool)

(assert (=> bm!157637 m!2878375))

(declare-fun m!2878377 () Bool)

(assert (=> bm!157638 m!2878377))

(assert (=> bm!157499 d!718751))

(assert (=> b!2523923 d!718611))

(assert (=> b!2523923 d!718581))

(assert (=> b!2523715 d!718579))

(assert (=> b!2523800 d!718683))

(assert (=> b!2523800 d!718685))

(assert (=> d!718511 d!718731))

(declare-fun b!2524661 () Bool)

(declare-fun e!1598433 () Bool)

(declare-fun e!1598430 () Bool)

(assert (=> b!2524661 (= e!1598433 e!1598430)))

(declare-fun res!1066523 () Bool)

(assert (=> b!2524661 (=> res!1066523 e!1598430)))

(declare-fun call!157645 () Bool)

(assert (=> b!2524661 (= res!1066523 call!157645)))

(declare-fun b!2524662 () Bool)

(assert (=> b!2524662 (= e!1598430 (not (= (head!5763 Nil!29479) (c!402670 lt!900119))))))

(declare-fun b!2524664 () Bool)

(declare-fun e!1598432 () Bool)

(assert (=> b!2524664 (= e!1598432 (= (head!5763 Nil!29479) (c!402670 lt!900119)))))

(declare-fun bm!157640 () Bool)

(assert (=> bm!157640 (= call!157645 (isEmpty!16951 Nil!29479))))

(declare-fun b!2524665 () Bool)

(declare-fun res!1066519 () Bool)

(assert (=> b!2524665 (=> res!1066519 e!1598430)))

(assert (=> b!2524665 (= res!1066519 (not (isEmpty!16951 (tail!4040 Nil!29479))))))

(declare-fun b!2524666 () Bool)

(declare-fun res!1066522 () Bool)

(assert (=> b!2524666 (=> (not res!1066522) (not e!1598432))))

(assert (=> b!2524666 (= res!1066522 (isEmpty!16951 (tail!4040 Nil!29479)))))

(declare-fun b!2524667 () Bool)

(declare-fun e!1598436 () Bool)

(declare-fun e!1598434 () Bool)

(assert (=> b!2524667 (= e!1598436 e!1598434)))

(declare-fun c!402963 () Bool)

(assert (=> b!2524667 (= c!402963 (is-EmptyLang!7514 lt!900119))))

(declare-fun b!2524668 () Bool)

(declare-fun e!1598435 () Bool)

(assert (=> b!2524668 (= e!1598435 e!1598433)))

(declare-fun res!1066520 () Bool)

(assert (=> b!2524668 (=> (not res!1066520) (not e!1598433))))

(declare-fun lt!900275 () Bool)

(assert (=> b!2524668 (= res!1066520 (not lt!900275))))

(declare-fun b!2524669 () Bool)

(assert (=> b!2524669 (= e!1598434 (not lt!900275))))

(declare-fun b!2524670 () Bool)

(assert (=> b!2524670 (= e!1598436 (= lt!900275 call!157645))))

(declare-fun d!718753 () Bool)

(assert (=> d!718753 e!1598436))

(declare-fun c!402962 () Bool)

(assert (=> d!718753 (= c!402962 (is-EmptyExpr!7514 lt!900119))))

(declare-fun e!1598431 () Bool)

(assert (=> d!718753 (= lt!900275 e!1598431)))

(declare-fun c!402961 () Bool)

(assert (=> d!718753 (= c!402961 (isEmpty!16951 Nil!29479))))

(assert (=> d!718753 (validRegex!3140 lt!900119)))

(assert (=> d!718753 (= (matchR!3501 lt!900119 Nil!29479) lt!900275)))

(declare-fun b!2524663 () Bool)

(declare-fun res!1066525 () Bool)

(assert (=> b!2524663 (=> (not res!1066525) (not e!1598432))))

(assert (=> b!2524663 (= res!1066525 (not call!157645))))

(declare-fun b!2524671 () Bool)

(declare-fun res!1066524 () Bool)

(assert (=> b!2524671 (=> res!1066524 e!1598435)))

(assert (=> b!2524671 (= res!1066524 (not (is-ElementMatch!7514 lt!900119)))))

(assert (=> b!2524671 (= e!1598434 e!1598435)))

(declare-fun b!2524672 () Bool)

(assert (=> b!2524672 (= e!1598431 (nullable!2431 lt!900119))))

(declare-fun b!2524673 () Bool)

(declare-fun res!1066521 () Bool)

(assert (=> b!2524673 (=> res!1066521 e!1598435)))

(assert (=> b!2524673 (= res!1066521 e!1598432)))

(declare-fun res!1066526 () Bool)

(assert (=> b!2524673 (=> (not res!1066526) (not e!1598432))))

(assert (=> b!2524673 (= res!1066526 lt!900275)))

(declare-fun b!2524674 () Bool)

(assert (=> b!2524674 (= e!1598431 (matchR!3501 (derivativeStep!2083 lt!900119 (head!5763 Nil!29479)) (tail!4040 Nil!29479)))))

(assert (= (and d!718753 c!402961) b!2524672))

(assert (= (and d!718753 (not c!402961)) b!2524674))

(assert (= (and d!718753 c!402962) b!2524670))

(assert (= (and d!718753 (not c!402962)) b!2524667))

(assert (= (and b!2524667 c!402963) b!2524669))

(assert (= (and b!2524667 (not c!402963)) b!2524671))

(assert (= (and b!2524671 (not res!1066524)) b!2524673))

(assert (= (and b!2524673 res!1066526) b!2524663))

(assert (= (and b!2524663 res!1066525) b!2524666))

(assert (= (and b!2524666 res!1066522) b!2524664))

(assert (= (and b!2524673 (not res!1066521)) b!2524668))

(assert (= (and b!2524668 res!1066520) b!2524661))

(assert (= (and b!2524661 (not res!1066523)) b!2524665))

(assert (= (and b!2524665 (not res!1066519)) b!2524662))

(assert (= (or b!2524670 b!2524661 b!2524663) bm!157640))

(assert (=> b!2524664 m!2877773))

(assert (=> b!2524674 m!2877773))

(assert (=> b!2524674 m!2877773))

(declare-fun m!2878379 () Bool)

(assert (=> b!2524674 m!2878379))

(assert (=> b!2524674 m!2877777))

(assert (=> b!2524674 m!2878379))

(assert (=> b!2524674 m!2877777))

(declare-fun m!2878381 () Bool)

(assert (=> b!2524674 m!2878381))

(assert (=> d!718753 m!2877781))

(assert (=> d!718753 m!2877633))

(assert (=> b!2524672 m!2877635))

(assert (=> b!2524662 m!2877773))

(assert (=> bm!157640 m!2877781))

(assert (=> b!2524665 m!2877777))

(assert (=> b!2524665 m!2877777))

(assert (=> b!2524665 m!2877787))

(assert (=> b!2524666 m!2877777))

(assert (=> b!2524666 m!2877777))

(assert (=> b!2524666 m!2877787))

(assert (=> d!718511 d!718753))

(assert (=> d!718511 d!718609))

(assert (=> b!2523658 d!718679))

(assert (=> b!2523658 d!718681))

(assert (=> b!2523891 d!718579))

(assert (=> b!2523716 d!718611))

(assert (=> b!2523716 d!718581))

(declare-fun bm!157641 () Bool)

(declare-fun call!157647 () Bool)

(declare-fun call!157646 () Bool)

(assert (=> bm!157641 (= call!157647 call!157646)))

(declare-fun b!2524675 () Bool)

(declare-fun e!1598443 () Bool)

(declare-fun e!1598440 () Bool)

(assert (=> b!2524675 (= e!1598443 e!1598440)))

(declare-fun res!1066527 () Bool)

(assert (=> b!2524675 (= res!1066527 (not (nullable!2431 (reg!7843 lt!900202))))))

(assert (=> b!2524675 (=> (not res!1066527) (not e!1598440))))

(declare-fun b!2524676 () Bool)

(declare-fun e!1598438 () Bool)

(assert (=> b!2524676 (= e!1598438 e!1598443)))

(declare-fun c!402965 () Bool)

(assert (=> b!2524676 (= c!402965 (is-Star!7514 lt!900202))))

(declare-fun d!718755 () Bool)

(declare-fun res!1066531 () Bool)

(assert (=> d!718755 (=> res!1066531 e!1598438)))

(assert (=> d!718755 (= res!1066531 (is-ElementMatch!7514 lt!900202))))

(assert (=> d!718755 (= (validRegex!3140 lt!900202) e!1598438)))

(declare-fun c!402964 () Bool)

(declare-fun bm!157642 () Bool)

(assert (=> bm!157642 (= call!157646 (validRegex!3140 (ite c!402965 (reg!7843 lt!900202) (ite c!402964 (regTwo!15541 lt!900202) (regOne!15540 lt!900202)))))))

(declare-fun b!2524677 () Bool)

(declare-fun res!1066530 () Bool)

(declare-fun e!1598442 () Bool)

(assert (=> b!2524677 (=> res!1066530 e!1598442)))

(assert (=> b!2524677 (= res!1066530 (not (is-Concat!12210 lt!900202)))))

(declare-fun e!1598437 () Bool)

(assert (=> b!2524677 (= e!1598437 e!1598442)))

(declare-fun b!2524678 () Bool)

(declare-fun e!1598439 () Bool)

(declare-fun call!157648 () Bool)

(assert (=> b!2524678 (= e!1598439 call!157648)))

(declare-fun b!2524679 () Bool)

(declare-fun res!1066528 () Bool)

(declare-fun e!1598441 () Bool)

(assert (=> b!2524679 (=> (not res!1066528) (not e!1598441))))

(assert (=> b!2524679 (= res!1066528 call!157648)))

(assert (=> b!2524679 (= e!1598437 e!1598441)))

(declare-fun b!2524680 () Bool)

(assert (=> b!2524680 (= e!1598442 e!1598439)))

(declare-fun res!1066529 () Bool)

(assert (=> b!2524680 (=> (not res!1066529) (not e!1598439))))

(assert (=> b!2524680 (= res!1066529 call!157647)))

(declare-fun bm!157643 () Bool)

(assert (=> bm!157643 (= call!157648 (validRegex!3140 (ite c!402964 (regOne!15541 lt!900202) (regTwo!15540 lt!900202))))))

(declare-fun b!2524681 () Bool)

(assert (=> b!2524681 (= e!1598443 e!1598437)))

(assert (=> b!2524681 (= c!402964 (is-Union!7514 lt!900202))))

(declare-fun b!2524682 () Bool)

(assert (=> b!2524682 (= e!1598440 call!157646)))

(declare-fun b!2524683 () Bool)

(assert (=> b!2524683 (= e!1598441 call!157647)))

(assert (= (and d!718755 (not res!1066531)) b!2524676))

(assert (= (and b!2524676 c!402965) b!2524675))

(assert (= (and b!2524676 (not c!402965)) b!2524681))

(assert (= (and b!2524675 res!1066527) b!2524682))

(assert (= (and b!2524681 c!402964) b!2524679))

(assert (= (and b!2524681 (not c!402964)) b!2524677))

(assert (= (and b!2524679 res!1066528) b!2524683))

(assert (= (and b!2524677 (not res!1066530)) b!2524680))

(assert (= (and b!2524680 res!1066529) b!2524678))

(assert (= (or b!2524679 b!2524678) bm!157643))

(assert (= (or b!2524683 b!2524680) bm!157641))

(assert (= (or b!2524682 bm!157641) bm!157642))

(declare-fun m!2878383 () Bool)

(assert (=> b!2524675 m!2878383))

(declare-fun m!2878385 () Bool)

(assert (=> bm!157642 m!2878385))

(declare-fun m!2878387 () Bool)

(assert (=> bm!157643 m!2878387))

(assert (=> d!718533 d!718755))

(assert (=> d!718533 d!718643))

(declare-fun d!718757 () Bool)

(assert (=> d!718757 (= (nullable!2431 (regOne!15540 (regOne!15540 r!27340))) (nullableFct!673 (regOne!15540 (regOne!15540 r!27340))))))

(declare-fun bs!469065 () Bool)

(assert (= bs!469065 d!718757))

(declare-fun m!2878389 () Bool)

(assert (=> bs!469065 m!2878389))

(assert (=> b!2523966 d!718757))

(assert (=> d!718535 d!718613))

(assert (=> d!718535 d!718643))

(assert (=> b!2523886 d!718687))

(declare-fun d!718759 () Bool)

(assert (=> d!718759 (= (isEmpty!16951 (Cons!29479 c!14016 (_1!17307 lt!900125))) (is-Nil!29479 (Cons!29479 c!14016 (_1!17307 lt!900125))))))

(assert (=> d!718505 d!718759))

(assert (=> d!718505 d!718591))

(assert (=> b!2523933 d!718627))

(assert (=> b!2523713 d!718579))

(assert (=> bm!157484 d!718759))

(assert (=> bm!157451 d!718689))

(assert (=> b!2523936 d!718647))

(assert (=> b!2523936 d!718629))

(assert (=> b!2523935 d!718627))

(assert (=> bm!157491 d!718613))

(declare-fun b!2524687 () Bool)

(declare-fun e!1598444 () Bool)

(declare-fun tp!806257 () Bool)

(declare-fun tp!806259 () Bool)

(assert (=> b!2524687 (= e!1598444 (and tp!806257 tp!806259))))

(declare-fun b!2524686 () Bool)

(declare-fun tp!806256 () Bool)

(assert (=> b!2524686 (= e!1598444 tp!806256)))

(declare-fun b!2524685 () Bool)

(declare-fun tp!806255 () Bool)

(declare-fun tp!806258 () Bool)

(assert (=> b!2524685 (= e!1598444 (and tp!806255 tp!806258))))

(declare-fun b!2524684 () Bool)

(assert (=> b!2524684 (= e!1598444 tp_is_empty!12883)))

(assert (=> b!2523992 (= tp!806197 e!1598444)))

(assert (= (and b!2523992 (is-ElementMatch!7514 (regOne!15540 (regTwo!15541 r!27340)))) b!2524684))

(assert (= (and b!2523992 (is-Concat!12210 (regOne!15540 (regTwo!15541 r!27340)))) b!2524685))

(assert (= (and b!2523992 (is-Star!7514 (regOne!15540 (regTwo!15541 r!27340)))) b!2524686))

(assert (= (and b!2523992 (is-Union!7514 (regOne!15540 (regTwo!15541 r!27340)))) b!2524687))

(declare-fun b!2524691 () Bool)

(declare-fun e!1598445 () Bool)

(declare-fun tp!806262 () Bool)

(declare-fun tp!806264 () Bool)

(assert (=> b!2524691 (= e!1598445 (and tp!806262 tp!806264))))

(declare-fun b!2524690 () Bool)

(declare-fun tp!806261 () Bool)

(assert (=> b!2524690 (= e!1598445 tp!806261)))

(declare-fun b!2524689 () Bool)

(declare-fun tp!806260 () Bool)

(declare-fun tp!806263 () Bool)

(assert (=> b!2524689 (= e!1598445 (and tp!806260 tp!806263))))

(declare-fun b!2524688 () Bool)

(assert (=> b!2524688 (= e!1598445 tp_is_empty!12883)))

(assert (=> b!2523992 (= tp!806200 e!1598445)))

(assert (= (and b!2523992 (is-ElementMatch!7514 (regTwo!15540 (regTwo!15541 r!27340)))) b!2524688))

(assert (= (and b!2523992 (is-Concat!12210 (regTwo!15540 (regTwo!15541 r!27340)))) b!2524689))

(assert (= (and b!2523992 (is-Star!7514 (regTwo!15540 (regTwo!15541 r!27340)))) b!2524690))

(assert (= (and b!2523992 (is-Union!7514 (regTwo!15540 (regTwo!15541 r!27340)))) b!2524691))

(declare-fun b!2524695 () Bool)

(declare-fun e!1598446 () Bool)

(declare-fun tp!806267 () Bool)

(declare-fun tp!806269 () Bool)

(assert (=> b!2524695 (= e!1598446 (and tp!806267 tp!806269))))

(declare-fun b!2524694 () Bool)

(declare-fun tp!806266 () Bool)

(assert (=> b!2524694 (= e!1598446 tp!806266)))

(declare-fun b!2524693 () Bool)

(declare-fun tp!806265 () Bool)

(declare-fun tp!806268 () Bool)

(assert (=> b!2524693 (= e!1598446 (and tp!806265 tp!806268))))

(declare-fun b!2524692 () Bool)

(assert (=> b!2524692 (= e!1598446 tp_is_empty!12883)))

(assert (=> b!2523997 (= tp!806203 e!1598446)))

(assert (= (and b!2523997 (is-ElementMatch!7514 (reg!7843 (regOne!15540 r!27340)))) b!2524692))

(assert (= (and b!2523997 (is-Concat!12210 (reg!7843 (regOne!15540 r!27340)))) b!2524693))

(assert (= (and b!2523997 (is-Star!7514 (reg!7843 (regOne!15540 r!27340)))) b!2524694))

(assert (= (and b!2523997 (is-Union!7514 (reg!7843 (regOne!15540 r!27340)))) b!2524695))

(declare-fun b!2524699 () Bool)

(declare-fun e!1598447 () Bool)

(declare-fun tp!806272 () Bool)

(declare-fun tp!806274 () Bool)

(assert (=> b!2524699 (= e!1598447 (and tp!806272 tp!806274))))

(declare-fun b!2524698 () Bool)

(declare-fun tp!806271 () Bool)

(assert (=> b!2524698 (= e!1598447 tp!806271)))

(declare-fun b!2524697 () Bool)

(declare-fun tp!806270 () Bool)

(declare-fun tp!806273 () Bool)

(assert (=> b!2524697 (= e!1598447 (and tp!806270 tp!806273))))

(declare-fun b!2524696 () Bool)

(assert (=> b!2524696 (= e!1598447 tp_is_empty!12883)))

(assert (=> b!2524004 (= tp!806212 e!1598447)))

(assert (= (and b!2524004 (is-ElementMatch!7514 (regOne!15540 (reg!7843 r!27340)))) b!2524696))

(assert (= (and b!2524004 (is-Concat!12210 (regOne!15540 (reg!7843 r!27340)))) b!2524697))

(assert (= (and b!2524004 (is-Star!7514 (regOne!15540 (reg!7843 r!27340)))) b!2524698))

(assert (= (and b!2524004 (is-Union!7514 (regOne!15540 (reg!7843 r!27340)))) b!2524699))

(declare-fun b!2524703 () Bool)

(declare-fun e!1598448 () Bool)

(declare-fun tp!806277 () Bool)

(declare-fun tp!806279 () Bool)

(assert (=> b!2524703 (= e!1598448 (and tp!806277 tp!806279))))

(declare-fun b!2524702 () Bool)

(declare-fun tp!806276 () Bool)

(assert (=> b!2524702 (= e!1598448 tp!806276)))

(declare-fun b!2524701 () Bool)

(declare-fun tp!806275 () Bool)

(declare-fun tp!806278 () Bool)

(assert (=> b!2524701 (= e!1598448 (and tp!806275 tp!806278))))

(declare-fun b!2524700 () Bool)

(assert (=> b!2524700 (= e!1598448 tp_is_empty!12883)))

(assert (=> b!2524004 (= tp!806215 e!1598448)))

(assert (= (and b!2524004 (is-ElementMatch!7514 (regTwo!15540 (reg!7843 r!27340)))) b!2524700))

(assert (= (and b!2524004 (is-Concat!12210 (regTwo!15540 (reg!7843 r!27340)))) b!2524701))

(assert (= (and b!2524004 (is-Star!7514 (regTwo!15540 (reg!7843 r!27340)))) b!2524702))

(assert (= (and b!2524004 (is-Union!7514 (regTwo!15540 (reg!7843 r!27340)))) b!2524703))

(declare-fun b!2524707 () Bool)

(declare-fun e!1598449 () Bool)

(declare-fun tp!806282 () Bool)

(declare-fun tp!806284 () Bool)

(assert (=> b!2524707 (= e!1598449 (and tp!806282 tp!806284))))

(declare-fun b!2524706 () Bool)

(declare-fun tp!806281 () Bool)

(assert (=> b!2524706 (= e!1598449 tp!806281)))

(declare-fun b!2524705 () Bool)

(declare-fun tp!806280 () Bool)

(declare-fun tp!806283 () Bool)

(assert (=> b!2524705 (= e!1598449 (and tp!806280 tp!806283))))

(declare-fun b!2524704 () Bool)

(assert (=> b!2524704 (= e!1598449 tp_is_empty!12883)))

(assert (=> b!2523988 (= tp!806192 e!1598449)))

(assert (= (and b!2523988 (is-ElementMatch!7514 (regOne!15540 (regOne!15541 r!27340)))) b!2524704))

(assert (= (and b!2523988 (is-Concat!12210 (regOne!15540 (regOne!15541 r!27340)))) b!2524705))

(assert (= (and b!2523988 (is-Star!7514 (regOne!15540 (regOne!15541 r!27340)))) b!2524706))

(assert (= (and b!2523988 (is-Union!7514 (regOne!15540 (regOne!15541 r!27340)))) b!2524707))

(declare-fun b!2524711 () Bool)

(declare-fun e!1598450 () Bool)

(declare-fun tp!806287 () Bool)

(declare-fun tp!806289 () Bool)

(assert (=> b!2524711 (= e!1598450 (and tp!806287 tp!806289))))

(declare-fun b!2524710 () Bool)

(declare-fun tp!806286 () Bool)

(assert (=> b!2524710 (= e!1598450 tp!806286)))

(declare-fun b!2524709 () Bool)

(declare-fun tp!806285 () Bool)

(declare-fun tp!806288 () Bool)

(assert (=> b!2524709 (= e!1598450 (and tp!806285 tp!806288))))

(declare-fun b!2524708 () Bool)

(assert (=> b!2524708 (= e!1598450 tp_is_empty!12883)))

(assert (=> b!2523988 (= tp!806195 e!1598450)))

(assert (= (and b!2523988 (is-ElementMatch!7514 (regTwo!15540 (regOne!15541 r!27340)))) b!2524708))

(assert (= (and b!2523988 (is-Concat!12210 (regTwo!15540 (regOne!15541 r!27340)))) b!2524709))

(assert (= (and b!2523988 (is-Star!7514 (regTwo!15540 (regOne!15541 r!27340)))) b!2524710))

(assert (= (and b!2523988 (is-Union!7514 (regTwo!15540 (regOne!15541 r!27340)))) b!2524711))

(declare-fun b!2524715 () Bool)

(declare-fun e!1598451 () Bool)

(declare-fun tp!806292 () Bool)

(declare-fun tp!806294 () Bool)

(assert (=> b!2524715 (= e!1598451 (and tp!806292 tp!806294))))

(declare-fun b!2524714 () Bool)

(declare-fun tp!806291 () Bool)

(assert (=> b!2524714 (= e!1598451 tp!806291)))

(declare-fun b!2524713 () Bool)

(declare-fun tp!806290 () Bool)

(declare-fun tp!806293 () Bool)

(assert (=> b!2524713 (= e!1598451 (and tp!806290 tp!806293))))

(declare-fun b!2524712 () Bool)

(assert (=> b!2524712 (= e!1598451 tp_is_empty!12883)))

(assert (=> b!2523996 (= tp!806202 e!1598451)))

(assert (= (and b!2523996 (is-ElementMatch!7514 (regOne!15540 (regOne!15540 r!27340)))) b!2524712))

(assert (= (and b!2523996 (is-Concat!12210 (regOne!15540 (regOne!15540 r!27340)))) b!2524713))

(assert (= (and b!2523996 (is-Star!7514 (regOne!15540 (regOne!15540 r!27340)))) b!2524714))

(assert (= (and b!2523996 (is-Union!7514 (regOne!15540 (regOne!15540 r!27340)))) b!2524715))

(declare-fun b!2524719 () Bool)

(declare-fun e!1598452 () Bool)

(declare-fun tp!806297 () Bool)

(declare-fun tp!806299 () Bool)

(assert (=> b!2524719 (= e!1598452 (and tp!806297 tp!806299))))

(declare-fun b!2524718 () Bool)

(declare-fun tp!806296 () Bool)

(assert (=> b!2524718 (= e!1598452 tp!806296)))

(declare-fun b!2524717 () Bool)

(declare-fun tp!806295 () Bool)

(declare-fun tp!806298 () Bool)

(assert (=> b!2524717 (= e!1598452 (and tp!806295 tp!806298))))

(declare-fun b!2524716 () Bool)

(assert (=> b!2524716 (= e!1598452 tp_is_empty!12883)))

(assert (=> b!2523996 (= tp!806205 e!1598452)))

(assert (= (and b!2523996 (is-ElementMatch!7514 (regTwo!15540 (regOne!15540 r!27340)))) b!2524716))

(assert (= (and b!2523996 (is-Concat!12210 (regTwo!15540 (regOne!15540 r!27340)))) b!2524717))

(assert (= (and b!2523996 (is-Star!7514 (regTwo!15540 (regOne!15540 r!27340)))) b!2524718))

(assert (= (and b!2523996 (is-Union!7514 (regTwo!15540 (regOne!15540 r!27340)))) b!2524719))

(declare-fun b!2524723 () Bool)

(declare-fun e!1598453 () Bool)

(declare-fun tp!806302 () Bool)

(declare-fun tp!806304 () Bool)

(assert (=> b!2524723 (= e!1598453 (and tp!806302 tp!806304))))

(declare-fun b!2524722 () Bool)

(declare-fun tp!806301 () Bool)

(assert (=> b!2524722 (= e!1598453 tp!806301)))

(declare-fun b!2524721 () Bool)

(declare-fun tp!806300 () Bool)

(declare-fun tp!806303 () Bool)

(assert (=> b!2524721 (= e!1598453 (and tp!806300 tp!806303))))

(declare-fun b!2524720 () Bool)

(assert (=> b!2524720 (= e!1598453 tp_is_empty!12883)))

(assert (=> b!2524005 (= tp!806213 e!1598453)))

(assert (= (and b!2524005 (is-ElementMatch!7514 (reg!7843 (reg!7843 r!27340)))) b!2524720))

(assert (= (and b!2524005 (is-Concat!12210 (reg!7843 (reg!7843 r!27340)))) b!2524721))

(assert (= (and b!2524005 (is-Star!7514 (reg!7843 (reg!7843 r!27340)))) b!2524722))

(assert (= (and b!2524005 (is-Union!7514 (reg!7843 (reg!7843 r!27340)))) b!2524723))

(declare-fun b!2524727 () Bool)

(declare-fun e!1598454 () Bool)

(declare-fun tp!806307 () Bool)

(declare-fun tp!806309 () Bool)

(assert (=> b!2524727 (= e!1598454 (and tp!806307 tp!806309))))

(declare-fun b!2524726 () Bool)

(declare-fun tp!806306 () Bool)

(assert (=> b!2524726 (= e!1598454 tp!806306)))

(declare-fun b!2524725 () Bool)

(declare-fun tp!806305 () Bool)

(declare-fun tp!806308 () Bool)

(assert (=> b!2524725 (= e!1598454 (and tp!806305 tp!806308))))

(declare-fun b!2524724 () Bool)

(assert (=> b!2524724 (= e!1598454 tp_is_empty!12883)))

(assert (=> b!2523990 (= tp!806194 e!1598454)))

(assert (= (and b!2523990 (is-ElementMatch!7514 (regOne!15541 (regOne!15541 r!27340)))) b!2524724))

(assert (= (and b!2523990 (is-Concat!12210 (regOne!15541 (regOne!15541 r!27340)))) b!2524725))

(assert (= (and b!2523990 (is-Star!7514 (regOne!15541 (regOne!15541 r!27340)))) b!2524726))

(assert (= (and b!2523990 (is-Union!7514 (regOne!15541 (regOne!15541 r!27340)))) b!2524727))

(declare-fun b!2524731 () Bool)

(declare-fun e!1598455 () Bool)

(declare-fun tp!806312 () Bool)

(declare-fun tp!806314 () Bool)

(assert (=> b!2524731 (= e!1598455 (and tp!806312 tp!806314))))

(declare-fun b!2524730 () Bool)

(declare-fun tp!806311 () Bool)

(assert (=> b!2524730 (= e!1598455 tp!806311)))

(declare-fun b!2524729 () Bool)

(declare-fun tp!806310 () Bool)

(declare-fun tp!806313 () Bool)

(assert (=> b!2524729 (= e!1598455 (and tp!806310 tp!806313))))

(declare-fun b!2524728 () Bool)

(assert (=> b!2524728 (= e!1598455 tp_is_empty!12883)))

(assert (=> b!2523990 (= tp!806196 e!1598455)))

(assert (= (and b!2523990 (is-ElementMatch!7514 (regTwo!15541 (regOne!15541 r!27340)))) b!2524728))

(assert (= (and b!2523990 (is-Concat!12210 (regTwo!15541 (regOne!15541 r!27340)))) b!2524729))

(assert (= (and b!2523990 (is-Star!7514 (regTwo!15541 (regOne!15541 r!27340)))) b!2524730))

(assert (= (and b!2523990 (is-Union!7514 (regTwo!15541 (regOne!15541 r!27340)))) b!2524731))

(declare-fun b!2524735 () Bool)

(declare-fun e!1598456 () Bool)

(declare-fun tp!806317 () Bool)

(declare-fun tp!806319 () Bool)

(assert (=> b!2524735 (= e!1598456 (and tp!806317 tp!806319))))

(declare-fun b!2524734 () Bool)

(declare-fun tp!806316 () Bool)

(assert (=> b!2524734 (= e!1598456 tp!806316)))

(declare-fun b!2524733 () Bool)

(declare-fun tp!806315 () Bool)

(declare-fun tp!806318 () Bool)

(assert (=> b!2524733 (= e!1598456 (and tp!806315 tp!806318))))

(declare-fun b!2524732 () Bool)

(assert (=> b!2524732 (= e!1598456 tp_is_empty!12883)))

(assert (=> b!2524000 (= tp!806207 e!1598456)))

(assert (= (and b!2524000 (is-ElementMatch!7514 (regOne!15540 (regTwo!15540 r!27340)))) b!2524732))

(assert (= (and b!2524000 (is-Concat!12210 (regOne!15540 (regTwo!15540 r!27340)))) b!2524733))

(assert (= (and b!2524000 (is-Star!7514 (regOne!15540 (regTwo!15540 r!27340)))) b!2524734))

(assert (= (and b!2524000 (is-Union!7514 (regOne!15540 (regTwo!15540 r!27340)))) b!2524735))

(declare-fun b!2524739 () Bool)

(declare-fun e!1598457 () Bool)

(declare-fun tp!806322 () Bool)

(declare-fun tp!806324 () Bool)

(assert (=> b!2524739 (= e!1598457 (and tp!806322 tp!806324))))

(declare-fun b!2524738 () Bool)

(declare-fun tp!806321 () Bool)

(assert (=> b!2524738 (= e!1598457 tp!806321)))

(declare-fun b!2524737 () Bool)

(declare-fun tp!806320 () Bool)

(declare-fun tp!806323 () Bool)

(assert (=> b!2524737 (= e!1598457 (and tp!806320 tp!806323))))

(declare-fun b!2524736 () Bool)

(assert (=> b!2524736 (= e!1598457 tp_is_empty!12883)))

(assert (=> b!2524000 (= tp!806210 e!1598457)))

(assert (= (and b!2524000 (is-ElementMatch!7514 (regTwo!15540 (regTwo!15540 r!27340)))) b!2524736))

(assert (= (and b!2524000 (is-Concat!12210 (regTwo!15540 (regTwo!15540 r!27340)))) b!2524737))

(assert (= (and b!2524000 (is-Star!7514 (regTwo!15540 (regTwo!15540 r!27340)))) b!2524738))

(assert (= (and b!2524000 (is-Union!7514 (regTwo!15540 (regTwo!15540 r!27340)))) b!2524739))

(declare-fun b!2524743 () Bool)

(declare-fun e!1598458 () Bool)

(declare-fun tp!806327 () Bool)

(declare-fun tp!806329 () Bool)

(assert (=> b!2524743 (= e!1598458 (and tp!806327 tp!806329))))

(declare-fun b!2524742 () Bool)

(declare-fun tp!806326 () Bool)

(assert (=> b!2524742 (= e!1598458 tp!806326)))

(declare-fun b!2524741 () Bool)

(declare-fun tp!806325 () Bool)

(declare-fun tp!806328 () Bool)

(assert (=> b!2524741 (= e!1598458 (and tp!806325 tp!806328))))

(declare-fun b!2524740 () Bool)

(assert (=> b!2524740 (= e!1598458 tp_is_empty!12883)))

(assert (=> b!2523993 (= tp!806198 e!1598458)))

(assert (= (and b!2523993 (is-ElementMatch!7514 (reg!7843 (regTwo!15541 r!27340)))) b!2524740))

(assert (= (and b!2523993 (is-Concat!12210 (reg!7843 (regTwo!15541 r!27340)))) b!2524741))

(assert (= (and b!2523993 (is-Star!7514 (reg!7843 (regTwo!15541 r!27340)))) b!2524742))

(assert (= (and b!2523993 (is-Union!7514 (reg!7843 (regTwo!15541 r!27340)))) b!2524743))

(declare-fun b!2524747 () Bool)

(declare-fun e!1598459 () Bool)

(declare-fun tp!806332 () Bool)

(declare-fun tp!806334 () Bool)

(assert (=> b!2524747 (= e!1598459 (and tp!806332 tp!806334))))

(declare-fun b!2524746 () Bool)

(declare-fun tp!806331 () Bool)

(assert (=> b!2524746 (= e!1598459 tp!806331)))

(declare-fun b!2524745 () Bool)

(declare-fun tp!806330 () Bool)

(declare-fun tp!806333 () Bool)

(assert (=> b!2524745 (= e!1598459 (and tp!806330 tp!806333))))

(declare-fun b!2524744 () Bool)

(assert (=> b!2524744 (= e!1598459 tp_is_empty!12883)))

(assert (=> b!2523998 (= tp!806204 e!1598459)))

(assert (= (and b!2523998 (is-ElementMatch!7514 (regOne!15541 (regOne!15540 r!27340)))) b!2524744))

(assert (= (and b!2523998 (is-Concat!12210 (regOne!15541 (regOne!15540 r!27340)))) b!2524745))

(assert (= (and b!2523998 (is-Star!7514 (regOne!15541 (regOne!15540 r!27340)))) b!2524746))

(assert (= (and b!2523998 (is-Union!7514 (regOne!15541 (regOne!15540 r!27340)))) b!2524747))

(declare-fun b!2524751 () Bool)

(declare-fun e!1598460 () Bool)

(declare-fun tp!806337 () Bool)

(declare-fun tp!806339 () Bool)

(assert (=> b!2524751 (= e!1598460 (and tp!806337 tp!806339))))

(declare-fun b!2524750 () Bool)

(declare-fun tp!806336 () Bool)

(assert (=> b!2524750 (= e!1598460 tp!806336)))

(declare-fun b!2524749 () Bool)

(declare-fun tp!806335 () Bool)

(declare-fun tp!806338 () Bool)

(assert (=> b!2524749 (= e!1598460 (and tp!806335 tp!806338))))

(declare-fun b!2524748 () Bool)

(assert (=> b!2524748 (= e!1598460 tp_is_empty!12883)))

(assert (=> b!2523998 (= tp!806206 e!1598460)))

(assert (= (and b!2523998 (is-ElementMatch!7514 (regTwo!15541 (regOne!15540 r!27340)))) b!2524748))

(assert (= (and b!2523998 (is-Concat!12210 (regTwo!15541 (regOne!15540 r!27340)))) b!2524749))

(assert (= (and b!2523998 (is-Star!7514 (regTwo!15541 (regOne!15540 r!27340)))) b!2524750))

(assert (= (and b!2523998 (is-Union!7514 (regTwo!15541 (regOne!15540 r!27340)))) b!2524751))

(declare-fun b!2524755 () Bool)

(declare-fun e!1598461 () Bool)

(declare-fun tp!806342 () Bool)

(declare-fun tp!806344 () Bool)

(assert (=> b!2524755 (= e!1598461 (and tp!806342 tp!806344))))

(declare-fun b!2524754 () Bool)

(declare-fun tp!806341 () Bool)

(assert (=> b!2524754 (= e!1598461 tp!806341)))

(declare-fun b!2524753 () Bool)

(declare-fun tp!806340 () Bool)

(declare-fun tp!806343 () Bool)

(assert (=> b!2524753 (= e!1598461 (and tp!806340 tp!806343))))

(declare-fun b!2524752 () Bool)

(assert (=> b!2524752 (= e!1598461 tp_is_empty!12883)))

(assert (=> b!2523989 (= tp!806193 e!1598461)))

(assert (= (and b!2523989 (is-ElementMatch!7514 (reg!7843 (regOne!15541 r!27340)))) b!2524752))

(assert (= (and b!2523989 (is-Concat!12210 (reg!7843 (regOne!15541 r!27340)))) b!2524753))

(assert (= (and b!2523989 (is-Star!7514 (reg!7843 (regOne!15541 r!27340)))) b!2524754))

(assert (= (and b!2523989 (is-Union!7514 (reg!7843 (regOne!15541 r!27340)))) b!2524755))

(declare-fun b!2524759 () Bool)

(declare-fun e!1598462 () Bool)

(declare-fun tp!806347 () Bool)

(declare-fun tp!806349 () Bool)

(assert (=> b!2524759 (= e!1598462 (and tp!806347 tp!806349))))

(declare-fun b!2524758 () Bool)

(declare-fun tp!806346 () Bool)

(assert (=> b!2524758 (= e!1598462 tp!806346)))

(declare-fun b!2524757 () Bool)

(declare-fun tp!806345 () Bool)

(declare-fun tp!806348 () Bool)

(assert (=> b!2524757 (= e!1598462 (and tp!806345 tp!806348))))

(declare-fun b!2524756 () Bool)

(assert (=> b!2524756 (= e!1598462 tp_is_empty!12883)))

(assert (=> b!2523994 (= tp!806199 e!1598462)))

(assert (= (and b!2523994 (is-ElementMatch!7514 (regOne!15541 (regTwo!15541 r!27340)))) b!2524756))

(assert (= (and b!2523994 (is-Concat!12210 (regOne!15541 (regTwo!15541 r!27340)))) b!2524757))

(assert (= (and b!2523994 (is-Star!7514 (regOne!15541 (regTwo!15541 r!27340)))) b!2524758))

(assert (= (and b!2523994 (is-Union!7514 (regOne!15541 (regTwo!15541 r!27340)))) b!2524759))

(declare-fun b!2524763 () Bool)

(declare-fun e!1598463 () Bool)

(declare-fun tp!806352 () Bool)

(declare-fun tp!806354 () Bool)

(assert (=> b!2524763 (= e!1598463 (and tp!806352 tp!806354))))

(declare-fun b!2524762 () Bool)

(declare-fun tp!806351 () Bool)

(assert (=> b!2524762 (= e!1598463 tp!806351)))

(declare-fun b!2524761 () Bool)

(declare-fun tp!806350 () Bool)

(declare-fun tp!806353 () Bool)

(assert (=> b!2524761 (= e!1598463 (and tp!806350 tp!806353))))

(declare-fun b!2524760 () Bool)

(assert (=> b!2524760 (= e!1598463 tp_is_empty!12883)))

(assert (=> b!2523994 (= tp!806201 e!1598463)))

(assert (= (and b!2523994 (is-ElementMatch!7514 (regTwo!15541 (regTwo!15541 r!27340)))) b!2524760))

(assert (= (and b!2523994 (is-Concat!12210 (regTwo!15541 (regTwo!15541 r!27340)))) b!2524761))

(assert (= (and b!2523994 (is-Star!7514 (regTwo!15541 (regTwo!15541 r!27340)))) b!2524762))

(assert (= (and b!2523994 (is-Union!7514 (regTwo!15541 (regTwo!15541 r!27340)))) b!2524763))

(declare-fun b!2524767 () Bool)

(declare-fun e!1598464 () Bool)

(declare-fun tp!806357 () Bool)

(declare-fun tp!806359 () Bool)

(assert (=> b!2524767 (= e!1598464 (and tp!806357 tp!806359))))

(declare-fun b!2524766 () Bool)

(declare-fun tp!806356 () Bool)

(assert (=> b!2524766 (= e!1598464 tp!806356)))

(declare-fun b!2524765 () Bool)

(declare-fun tp!806355 () Bool)

(declare-fun tp!806358 () Bool)

(assert (=> b!2524765 (= e!1598464 (and tp!806355 tp!806358))))

(declare-fun b!2524764 () Bool)

(assert (=> b!2524764 (= e!1598464 tp_is_empty!12883)))

(assert (=> b!2524001 (= tp!806208 e!1598464)))

(assert (= (and b!2524001 (is-ElementMatch!7514 (reg!7843 (regTwo!15540 r!27340)))) b!2524764))

(assert (= (and b!2524001 (is-Concat!12210 (reg!7843 (regTwo!15540 r!27340)))) b!2524765))

(assert (= (and b!2524001 (is-Star!7514 (reg!7843 (regTwo!15540 r!27340)))) b!2524766))

(assert (= (and b!2524001 (is-Union!7514 (reg!7843 (regTwo!15540 r!27340)))) b!2524767))

(declare-fun b!2524768 () Bool)

(declare-fun e!1598465 () Bool)

(declare-fun tp!806360 () Bool)

(assert (=> b!2524768 (= e!1598465 (and tp_is_empty!12883 tp!806360))))

(assert (=> b!2523974 (= tp!806181 e!1598465)))

(assert (= (and b!2523974 (is-Cons!29479 (t!211278 (t!211278 tl!4068)))) b!2524768))

(declare-fun b!2524772 () Bool)

(declare-fun e!1598466 () Bool)

(declare-fun tp!806363 () Bool)

(declare-fun tp!806365 () Bool)

(assert (=> b!2524772 (= e!1598466 (and tp!806363 tp!806365))))

(declare-fun b!2524771 () Bool)

(declare-fun tp!806362 () Bool)

(assert (=> b!2524771 (= e!1598466 tp!806362)))

(declare-fun b!2524770 () Bool)

(declare-fun tp!806361 () Bool)

(declare-fun tp!806364 () Bool)

(assert (=> b!2524770 (= e!1598466 (and tp!806361 tp!806364))))

(declare-fun b!2524769 () Bool)

(assert (=> b!2524769 (= e!1598466 tp_is_empty!12883)))

(assert (=> b!2524006 (= tp!806214 e!1598466)))

(assert (= (and b!2524006 (is-ElementMatch!7514 (regOne!15541 (reg!7843 r!27340)))) b!2524769))

(assert (= (and b!2524006 (is-Concat!12210 (regOne!15541 (reg!7843 r!27340)))) b!2524770))

(assert (= (and b!2524006 (is-Star!7514 (regOne!15541 (reg!7843 r!27340)))) b!2524771))

(assert (= (and b!2524006 (is-Union!7514 (regOne!15541 (reg!7843 r!27340)))) b!2524772))

(declare-fun b!2524776 () Bool)

(declare-fun e!1598467 () Bool)

(declare-fun tp!806368 () Bool)

(declare-fun tp!806370 () Bool)

(assert (=> b!2524776 (= e!1598467 (and tp!806368 tp!806370))))

(declare-fun b!2524775 () Bool)

(declare-fun tp!806367 () Bool)

(assert (=> b!2524775 (= e!1598467 tp!806367)))

(declare-fun b!2524774 () Bool)

(declare-fun tp!806366 () Bool)

(declare-fun tp!806369 () Bool)

(assert (=> b!2524774 (= e!1598467 (and tp!806366 tp!806369))))

(declare-fun b!2524773 () Bool)

(assert (=> b!2524773 (= e!1598467 tp_is_empty!12883)))

(assert (=> b!2524006 (= tp!806216 e!1598467)))

(assert (= (and b!2524006 (is-ElementMatch!7514 (regTwo!15541 (reg!7843 r!27340)))) b!2524773))

(assert (= (and b!2524006 (is-Concat!12210 (regTwo!15541 (reg!7843 r!27340)))) b!2524774))

(assert (= (and b!2524006 (is-Star!7514 (regTwo!15541 (reg!7843 r!27340)))) b!2524775))

(assert (= (and b!2524006 (is-Union!7514 (regTwo!15541 (reg!7843 r!27340)))) b!2524776))

(declare-fun b!2524780 () Bool)

(declare-fun e!1598468 () Bool)

(declare-fun tp!806373 () Bool)

(declare-fun tp!806375 () Bool)

(assert (=> b!2524780 (= e!1598468 (and tp!806373 tp!806375))))

(declare-fun b!2524779 () Bool)

(declare-fun tp!806372 () Bool)

(assert (=> b!2524779 (= e!1598468 tp!806372)))

(declare-fun b!2524778 () Bool)

(declare-fun tp!806371 () Bool)

(declare-fun tp!806374 () Bool)

(assert (=> b!2524778 (= e!1598468 (and tp!806371 tp!806374))))

(declare-fun b!2524777 () Bool)

(assert (=> b!2524777 (= e!1598468 tp_is_empty!12883)))

(assert (=> b!2524002 (= tp!806209 e!1598468)))

(assert (= (and b!2524002 (is-ElementMatch!7514 (regOne!15541 (regTwo!15540 r!27340)))) b!2524777))

(assert (= (and b!2524002 (is-Concat!12210 (regOne!15541 (regTwo!15540 r!27340)))) b!2524778))

(assert (= (and b!2524002 (is-Star!7514 (regOne!15541 (regTwo!15540 r!27340)))) b!2524779))

(assert (= (and b!2524002 (is-Union!7514 (regOne!15541 (regTwo!15540 r!27340)))) b!2524780))

(declare-fun b!2524784 () Bool)

(declare-fun e!1598469 () Bool)

(declare-fun tp!806378 () Bool)

(declare-fun tp!806380 () Bool)

(assert (=> b!2524784 (= e!1598469 (and tp!806378 tp!806380))))

(declare-fun b!2524783 () Bool)

(declare-fun tp!806377 () Bool)

(assert (=> b!2524783 (= e!1598469 tp!806377)))

(declare-fun b!2524782 () Bool)

(declare-fun tp!806376 () Bool)

(declare-fun tp!806379 () Bool)

(assert (=> b!2524782 (= e!1598469 (and tp!806376 tp!806379))))

(declare-fun b!2524781 () Bool)

(assert (=> b!2524781 (= e!1598469 tp_is_empty!12883)))

(assert (=> b!2524002 (= tp!806211 e!1598469)))

(assert (= (and b!2524002 (is-ElementMatch!7514 (regTwo!15541 (regTwo!15540 r!27340)))) b!2524781))

(assert (= (and b!2524002 (is-Concat!12210 (regTwo!15541 (regTwo!15540 r!27340)))) b!2524782))

(assert (= (and b!2524002 (is-Star!7514 (regTwo!15541 (regTwo!15540 r!27340)))) b!2524783))

(assert (= (and b!2524002 (is-Union!7514 (regTwo!15541 (regTwo!15540 r!27340)))) b!2524784))

(push 1)

(assert (not bm!157642))

(assert (not bm!157555))

(assert (not b!2524706))

(assert (not b!2524246))

(assert (not bm!157595))

(assert (not bm!157569))

(assert (not d!718577))

(assert (not b!2524614))

(assert (not b!2524217))

(assert (not b!2524505))

(assert (not b!2524381))

(assert (not b!2524411))

(assert (not bm!157564))

(assert (not b!2524379))

(assert (not b!2524767))

(assert (not bm!157549))

(assert (not bm!157567))

(assert (not d!718715))

(assert (not bm!157552))

(assert (not b!2524713))

(assert (not bm!157533))

(assert (not b!2524725))

(assert (not bm!157545))

(assert (not b!2524566))

(assert (not b!2524467))

(assert (not bm!157536))

(assert (not b!2524382))

(assert (not b!2524327))

(assert (not b!2524733))

(assert (not b!2524280))

(assert (not b!2524333))

(assert (not b!2524345))

(assert (not bm!157575))

(assert (not bm!157583))

(assert (not bm!157635))

(assert (not b!2524504))

(assert (not b!2524662))

(assert (not b!2524468))

(assert (not b!2524741))

(assert (not b!2524765))

(assert (not b!2524775))

(assert (not b!2524783))

(assert (not b!2524194))

(assert (not b!2524657))

(assert (not b!2524337))

(assert (not b!2524784))

(assert (not b!2524279))

(assert (not d!718731))

(assert (not b!2524586))

(assert (not d!718707))

(assert (not b!2524610))

(assert (not bm!157625))

(assert (not bm!157613))

(assert (not b!2524687))

(assert (not b!2524622))

(assert (not b!2524715))

(assert (not b!2524709))

(assert (not bm!157637))

(assert (not b!2524699))

(assert (not b!2524474))

(assert (not d!718735))

(assert (not b!2524366))

(assert (not b!2524778))

(assert (not b!2524332))

(assert (not d!718719))

(assert (not bm!157606))

(assert (not b!2524771))

(assert (not d!718757))

(assert (not bm!157530))

(assert (not b!2524581))

(assert (not b!2524722))

(assert (not d!718615))

(assert (not b!2524454))

(assert (not b!2524564))

(assert (not b!2524214))

(assert (not bm!157607))

(assert (not bm!157612))

(assert (not b!2524281))

(assert (not b!2524512))

(assert (not b!2524347))

(assert (not b!2524233))

(assert (not bm!157582))

(assert (not b!2524415))

(assert (not bm!157596))

(assert (not b!2524711))

(assert (not b!2524755))

(assert (not b!2524383))

(assert (not b!2524407))

(assert (not bm!157539))

(assert (not b!2524666))

(assert (not b!2524759))

(assert (not b!2524190))

(assert (not d!718741))

(assert (not b!2524762))

(assert (not bm!157632))

(assert (not b!2524629))

(assert (not b!2524705))

(assert (not bm!157546))

(assert (not b!2524633))

(assert (not b!2524344))

(assert (not d!718733))

(assert (not b!2524596))

(assert (not bm!157577))

(assert tp_is_empty!12883)

(assert (not bm!157574))

(assert (not d!718575))

(assert (not d!718631))

(assert (not b!2524336))

(assert (not bm!157622))

(assert (not bm!157580))

(assert (not bm!157609))

(assert (not bm!157550))

(assert (not bm!157603))

(assert (not b!2524224))

(assert (not b!2524416))

(assert (not d!718675))

(assert (not b!2524598))

(assert (not b!2524703))

(assert (not b!2524738))

(assert (not bm!157618))

(assert (not d!718721))

(assert (not b!2524701))

(assert (not b!2524287))

(assert (not b!2524529))

(assert (not d!718585))

(assert (not b!2524553))

(assert (not b!2524417))

(assert (not b!2524342))

(assert (not bm!157627))

(assert (not b!2524290))

(assert (not b!2524226))

(assert (not d!718743))

(assert (not d!718653))

(assert (not b!2524216))

(assert (not bm!157563))

(assert (not bm!157593))

(assert (not d!718651))

(assert (not d!718601))

(assert (not b!2524686))

(assert (not bm!157540))

(assert (not b!2524413))

(assert (not d!718697))

(assert (not b!2524772))

(assert (not b!2524743))

(assert (not bm!157547))

(assert (not bm!157537))

(assert (not b!2524694))

(assert (not b!2524193))

(assert (not b!2524517))

(assert (not b!2524348))

(assert (not b!2524747))

(assert (not d!718737))

(assert (not d!718703))

(assert (not b!2524612))

(assert (not b!2524754))

(assert (not d!718605))

(assert (not b!2524697))

(assert (not b!2524302))

(assert (not b!2524734))

(assert (not b!2524445))

(assert (not b!2524693))

(assert (not b!2524763))

(assert (not b!2524301))

(assert (not bm!157640))

(assert (not b!2524565))

(assert (not b!2524572))

(assert (not d!718727))

(assert (not d!718663))

(assert (not b!2524289))

(assert (not b!2524768))

(assert (not b!2524746))

(assert (not b!2524758))

(assert (not b!2524753))

(assert (not d!718753))

(assert (not b!2524779))

(assert (not bm!157525))

(assert (not b!2524389))

(assert (not b!2524745))

(assert (not b!2524672))

(assert (not b!2524665))

(assert (not b!2524749))

(assert (not b!2524398))

(assert (not b!2524718))

(assert (not b!2524574))

(assert (not b!2524751))

(assert (not b!2524698))

(assert (not b!2524514))

(assert (not b!2524714))

(assert (not b!2524757))

(assert (not b!2524613))

(assert (not d!718607))

(assert (not d!718693))

(assert (not b!2524589))

(assert (not b!2524664))

(assert (not bm!157610))

(assert (not b!2524620))

(assert (not d!718641))

(assert (not bm!157560))

(assert (not b!2524562))

(assert (not d!718717))

(assert (not b!2524690))

(assert (not bm!157623))

(assert (not b!2524776))

(assert (not d!718739))

(assert (not b!2524516))

(assert (not b!2524774))

(assert (not b!2524731))

(assert (not b!2524494))

(assert (not d!718751))

(assert (not d!718745))

(assert (not bm!157589))

(assert (not d!718729))

(assert (not bm!157559))

(assert (not b!2524423))

(assert (not bm!157587))

(assert (not b!2524426))

(assert (not d!718633))

(assert (not b!2524357))

(assert (not b!2524317))

(assert (not b!2524717))

(assert (not bm!157620))

(assert (not b!2524588))

(assert (not b!2524209))

(assert (not bm!157553))

(assert (not b!2524674))

(assert (not b!2524558))

(assert (not b!2524727))

(assert (not b!2524735))

(assert (not d!718603))

(assert (not b!2524691))

(assert (not bm!157591))

(assert (not b!2524441))

(assert (not bm!157590))

(assert (not bm!157615))

(assert (not bm!157528))

(assert (not b!2524770))

(assert (not bm!157631))

(assert (not d!718655))

(assert (not bm!157617))

(assert (not b!2524719))

(assert (not b!2524192))

(assert (not bm!157572))

(assert (not b!2524340))

(assert (not bm!157643))

(assert (not b!2524702))

(assert (not b!2524737))

(assert (not bm!157600))

(assert (not b!2524761))

(assert (not b!2524750))

(assert (not b!2524277))

(assert (not d!718639))

(assert (not bm!157532))

(assert (not b!2524766))

(assert (not d!718637))

(assert (not b!2524464))

(assert (not bm!157599))

(assert (not b!2524425))

(assert (not b!2524685))

(assert (not b!2524525))

(assert (not bm!157566))

(assert (not b!2524707))

(assert (not b!2524202))

(assert (not b!2524780))

(assert (not d!718677))

(assert (not b!2524538))

(assert (not b!2524374))

(assert (not b!2524729))

(assert (not bm!157634))

(assert (not b!2524237))

(assert (not b!2524343))

(assert (not d!718587))

(assert (not b!2524605))

(assert (not bm!157586))

(assert (not b!2524559))

(assert (not b!2524721))

(assert (not b!2524200))

(assert (not b!2524710))

(assert (not b!2524642))

(assert (not bm!157602))

(assert (not d!718649))

(assert (not bm!157527))

(assert (not b!2524218))

(assert (not b!2524391))

(assert (not b!2524490))

(assert (not bm!157579))

(assert (not b!2524675))

(assert (not b!2524695))

(assert (not bm!157570))

(assert (not b!2524590))

(assert (not b!2524742))

(assert (not b!2524782))

(assert (not b!2524726))

(assert (not b!2524723))

(assert (not d!718619))

(assert (not b!2524409))

(assert (not b!2524466))

(assert (not b!2524730))

(assert (not bm!157592))

(assert (not d!718635))

(assert (not b!2524689))

(assert (not bm!157628))

(assert (not bm!157638))

(assert (not b!2524476))

(assert (not b!2524739))

(assert (not bm!157556))

(assert (not d!718621))

(assert (not d!718597))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

