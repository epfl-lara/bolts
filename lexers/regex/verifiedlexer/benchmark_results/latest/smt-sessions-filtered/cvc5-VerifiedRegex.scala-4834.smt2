; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248658 () Bool)

(assert start!248658)

(declare-fun b!2574575 () Bool)

(declare-fun res!1082916 () Bool)

(declare-fun e!1624535 () Bool)

(assert (=> b!2574575 (=> res!1082916 e!1624535)))

(declare-datatypes ((C!15442 0))(
  ( (C!15443 (val!9373 Int)) )
))
(declare-datatypes ((Regex!7642 0))(
  ( (ElementMatch!7642 (c!414634 C!15442)) (Concat!12338 (regOne!15796 Regex!7642) (regTwo!15796 Regex!7642)) (EmptyExpr!7642) (Star!7642 (reg!7971 Regex!7642)) (EmptyLang!7642) (Union!7642 (regOne!15797 Regex!7642) (regTwo!15797 Regex!7642)) )
))
(declare-fun r!27340 () Regex!7642)

(declare-datatypes ((List!29707 0))(
  ( (Nil!29607) (Cons!29607 (h!35027 C!15442) (t!211406 List!29707)) )
))
(declare-datatypes ((tuple2!29606 0))(
  ( (tuple2!29607 (_1!17345 List!29707) (_2!17345 List!29707)) )
))
(declare-fun lt!906405 () tuple2!29606)

(declare-fun matchR!3585 (Regex!7642 List!29707) Bool)

(assert (=> b!2574575 (= res!1082916 (not (matchR!3585 (regTwo!15796 r!27340) (_2!17345 lt!906405))))))

(declare-fun b!2574576 () Bool)

(declare-fun e!1624533 () Bool)

(declare-fun c!14016 () C!15442)

(declare-fun contains!5308 (List!29707 C!15442) Bool)

(declare-fun firstChars!99 (Regex!7642) List!29707)

(assert (=> b!2574576 (= e!1624533 (contains!5308 (firstChars!99 r!27340) c!14016))))

(assert (=> b!2574576 (contains!5308 (firstChars!99 (regOne!15796 r!27340)) c!14016)))

(declare-datatypes ((Unit!43465 0))(
  ( (Unit!43466) )
))
(declare-fun lt!906407 () Unit!43465)

(declare-fun lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!15 (Regex!7642 C!15442 List!29707) Unit!43465)

(assert (=> b!2574576 (= lt!906407 (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!15 (regOne!15796 r!27340) c!14016 (_1!17345 lt!906405)))))

(declare-fun b!2574577 () Bool)

(declare-fun res!1082923 () Bool)

(assert (=> b!2574577 (=> res!1082923 e!1624533)))

(declare-fun lt!906409 () Regex!7642)

(declare-fun nullable!2559 (Regex!7642) Bool)

(assert (=> b!2574577 (= res!1082923 (not (nullable!2559 lt!906409)))))

(declare-fun b!2574578 () Bool)

(declare-fun res!1082919 () Bool)

(declare-fun e!1624532 () Bool)

(assert (=> b!2574578 (=> (not res!1082919) (not e!1624532))))

(declare-fun tl!4068 () List!29707)

(declare-fun derivative!337 (Regex!7642 List!29707) Regex!7642)

(declare-fun derivativeStep!2211 (Regex!7642 C!15442) Regex!7642)

(assert (=> b!2574578 (= res!1082919 (nullable!2559 (derivative!337 (derivativeStep!2211 r!27340 c!14016) tl!4068)))))

(declare-fun b!2574579 () Bool)

(declare-fun res!1082918 () Bool)

(assert (=> b!2574579 (=> (not res!1082918) (not e!1624532))))

(assert (=> b!2574579 (= res!1082918 (not (nullable!2559 (regOne!15796 r!27340))))))

(declare-fun b!2574580 () Bool)

(declare-fun e!1624531 () Bool)

(declare-fun tp!818588 () Bool)

(declare-fun tp!818590 () Bool)

(assert (=> b!2574580 (= e!1624531 (and tp!818588 tp!818590))))

(declare-fun b!2574581 () Bool)

(declare-fun tp!818591 () Bool)

(declare-fun tp!818592 () Bool)

(assert (=> b!2574581 (= e!1624531 (and tp!818591 tp!818592))))

(declare-fun b!2574582 () Bool)

(declare-fun res!1082924 () Bool)

(assert (=> b!2574582 (=> res!1082924 e!1624535)))

(assert (=> b!2574582 (= res!1082924 (not (matchR!3585 (regOne!15796 r!27340) (Cons!29607 c!14016 (_1!17345 lt!906405)))))))

(declare-fun b!2574583 () Bool)

(declare-fun e!1624536 () Bool)

(assert (=> b!2574583 (= e!1624536 e!1624535)))

(declare-fun res!1082915 () Bool)

(assert (=> b!2574583 (=> res!1082915 e!1624535)))

(declare-fun ++!7281 (List!29707 List!29707) List!29707)

(assert (=> b!2574583 (= res!1082915 (not (= (++!7281 (_1!17345 lt!906405) (_2!17345 lt!906405)) tl!4068)))))

(declare-datatypes ((Option!5923 0))(
  ( (None!5922) (Some!5922 (v!31867 tuple2!29606)) )
))
(declare-fun lt!906411 () Option!5923)

(declare-fun get!9323 (Option!5923) tuple2!29606)

(assert (=> b!2574583 (= lt!906405 (get!9323 lt!906411))))

(declare-fun isDefined!4745 (Option!5923) Bool)

(assert (=> b!2574583 (isDefined!4745 lt!906411)))

(declare-fun lt!906401 () Regex!7642)

(declare-fun findConcatSeparation!945 (Regex!7642 Regex!7642 List!29707 List!29707 List!29707) Option!5923)

(assert (=> b!2574583 (= lt!906411 (findConcatSeparation!945 lt!906401 (regTwo!15796 r!27340) Nil!29607 tl!4068 tl!4068))))

(declare-fun lt!906408 () Unit!43465)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!227 (Regex!7642 Regex!7642 List!29707) Unit!43465)

(assert (=> b!2574583 (= lt!906408 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!227 lt!906401 (regTwo!15796 r!27340) tl!4068))))

(declare-fun b!2574584 () Bool)

(declare-fun res!1082913 () Bool)

(assert (=> b!2574584 (=> res!1082913 e!1624535)))

(assert (=> b!2574584 (= res!1082913 (not (matchR!3585 lt!906401 (_1!17345 lt!906405))))))

(declare-fun b!2574586 () Bool)

(declare-fun e!1624534 () Bool)

(declare-fun tp_is_empty!13139 () Bool)

(declare-fun tp!818589 () Bool)

(assert (=> b!2574586 (= e!1624534 (and tp_is_empty!13139 tp!818589))))

(declare-fun b!2574587 () Bool)

(assert (=> b!2574587 (= e!1624535 e!1624533)))

(declare-fun res!1082920 () Bool)

(assert (=> b!2574587 (=> res!1082920 e!1624533)))

(declare-fun validRegex!3268 (Regex!7642) Bool)

(assert (=> b!2574587 (= res!1082920 (not (validRegex!3268 (regOne!15796 r!27340))))))

(assert (=> b!2574587 (matchR!3585 lt!906409 Nil!29607)))

(assert (=> b!2574587 (= lt!906409 (derivative!337 lt!906401 (_1!17345 lt!906405)))))

(declare-fun lt!906406 () Unit!43465)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!231 (Regex!7642 List!29707) Unit!43465)

(assert (=> b!2574587 (= lt!906406 (lemmaMatchRIsSameAsWholeDerivativeAndNil!231 lt!906401 (_1!17345 lt!906405)))))

(declare-fun b!2574588 () Bool)

(declare-fun e!1624537 () Bool)

(assert (=> b!2574588 (= e!1624537 (matchR!3585 EmptyLang!7642 tl!4068))))

(declare-fun b!2574589 () Bool)

(assert (=> b!2574589 (= e!1624532 (not e!1624536))))

(declare-fun res!1082921 () Bool)

(assert (=> b!2574589 (=> res!1082921 e!1624536)))

(declare-fun lt!906413 () Bool)

(assert (=> b!2574589 (= res!1082921 (not lt!906413))))

(assert (=> b!2574589 (= (derivative!337 EmptyLang!7642 tl!4068) EmptyLang!7642)))

(declare-fun lt!906412 () Unit!43465)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!71 (Regex!7642 List!29707) Unit!43465)

(assert (=> b!2574589 (= lt!906412 (lemmaEmptyLangDerivativeIsAFixPoint!71 EmptyLang!7642 tl!4068))))

(assert (=> b!2574589 e!1624537))

(declare-fun res!1082922 () Bool)

(assert (=> b!2574589 (=> res!1082922 e!1624537)))

(assert (=> b!2574589 (= res!1082922 lt!906413)))

(declare-fun lt!906404 () Regex!7642)

(assert (=> b!2574589 (= lt!906413 (matchR!3585 lt!906404 tl!4068))))

(declare-fun lt!906402 () Unit!43465)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!231 (Regex!7642 Regex!7642 List!29707) Unit!43465)

(assert (=> b!2574589 (= lt!906402 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!231 lt!906404 EmptyLang!7642 tl!4068))))

(declare-fun lt!906410 () Regex!7642)

(assert (=> b!2574589 (= (matchR!3585 lt!906410 tl!4068) (matchR!3585 (derivative!337 lt!906410 tl!4068) Nil!29607))))

(declare-fun lt!906403 () Unit!43465)

(assert (=> b!2574589 (= lt!906403 (lemmaMatchRIsSameAsWholeDerivativeAndNil!231 lt!906410 tl!4068))))

(assert (=> b!2574589 (= lt!906410 (Union!7642 lt!906404 EmptyLang!7642))))

(assert (=> b!2574589 (= lt!906404 (Concat!12338 lt!906401 (regTwo!15796 r!27340)))))

(assert (=> b!2574589 (= lt!906401 (derivativeStep!2211 (regOne!15796 r!27340) c!14016))))

(declare-fun res!1082914 () Bool)

(assert (=> start!248658 (=> (not res!1082914) (not e!1624532))))

(assert (=> start!248658 (= res!1082914 (validRegex!3268 r!27340))))

(assert (=> start!248658 e!1624532))

(assert (=> start!248658 e!1624531))

(assert (=> start!248658 tp_is_empty!13139))

(assert (=> start!248658 e!1624534))

(declare-fun b!2574585 () Bool)

(declare-fun tp!818587 () Bool)

(assert (=> b!2574585 (= e!1624531 tp!818587)))

(declare-fun b!2574590 () Bool)

(assert (=> b!2574590 (= e!1624531 tp_is_empty!13139)))

(declare-fun b!2574591 () Bool)

(declare-fun res!1082917 () Bool)

(assert (=> b!2574591 (=> (not res!1082917) (not e!1624532))))

(assert (=> b!2574591 (= res!1082917 (and (not (is-EmptyExpr!7642 r!27340)) (not (is-EmptyLang!7642 r!27340)) (not (is-ElementMatch!7642 r!27340)) (not (is-Union!7642 r!27340)) (not (is-Star!7642 r!27340))))))

(assert (= (and start!248658 res!1082914) b!2574578))

(assert (= (and b!2574578 res!1082919) b!2574591))

(assert (= (and b!2574591 res!1082917) b!2574579))

(assert (= (and b!2574579 res!1082918) b!2574589))

(assert (= (and b!2574589 (not res!1082922)) b!2574588))

(assert (= (and b!2574589 (not res!1082921)) b!2574583))

(assert (= (and b!2574583 (not res!1082915)) b!2574584))

(assert (= (and b!2574584 (not res!1082913)) b!2574575))

(assert (= (and b!2574575 (not res!1082916)) b!2574582))

(assert (= (and b!2574582 (not res!1082924)) b!2574587))

(assert (= (and b!2574587 (not res!1082920)) b!2574577))

(assert (= (and b!2574577 (not res!1082923)) b!2574576))

(assert (= (and start!248658 (is-ElementMatch!7642 r!27340)) b!2574590))

(assert (= (and start!248658 (is-Concat!12338 r!27340)) b!2574581))

(assert (= (and start!248658 (is-Star!7642 r!27340)) b!2574585))

(assert (= (and start!248658 (is-Union!7642 r!27340)) b!2574580))

(assert (= (and start!248658 (is-Cons!29607 tl!4068)) b!2574586))

(declare-fun m!2909893 () Bool)

(assert (=> b!2574582 m!2909893))

(declare-fun m!2909895 () Bool)

(assert (=> b!2574584 m!2909895))

(declare-fun m!2909897 () Bool)

(assert (=> b!2574575 m!2909897))

(declare-fun m!2909899 () Bool)

(assert (=> b!2574576 m!2909899))

(declare-fun m!2909901 () Bool)

(assert (=> b!2574576 m!2909901))

(declare-fun m!2909903 () Bool)

(assert (=> b!2574576 m!2909903))

(declare-fun m!2909905 () Bool)

(assert (=> b!2574576 m!2909905))

(declare-fun m!2909907 () Bool)

(assert (=> b!2574576 m!2909907))

(assert (=> b!2574576 m!2909901))

(assert (=> b!2574576 m!2909905))

(declare-fun m!2909909 () Bool)

(assert (=> b!2574587 m!2909909))

(declare-fun m!2909911 () Bool)

(assert (=> b!2574587 m!2909911))

(declare-fun m!2909913 () Bool)

(assert (=> b!2574587 m!2909913))

(declare-fun m!2909915 () Bool)

(assert (=> b!2574587 m!2909915))

(declare-fun m!2909917 () Bool)

(assert (=> start!248658 m!2909917))

(declare-fun m!2909919 () Bool)

(assert (=> b!2574578 m!2909919))

(assert (=> b!2574578 m!2909919))

(declare-fun m!2909921 () Bool)

(assert (=> b!2574578 m!2909921))

(assert (=> b!2574578 m!2909921))

(declare-fun m!2909923 () Bool)

(assert (=> b!2574578 m!2909923))

(declare-fun m!2909925 () Bool)

(assert (=> b!2574579 m!2909925))

(declare-fun m!2909927 () Bool)

(assert (=> b!2574589 m!2909927))

(declare-fun m!2909929 () Bool)

(assert (=> b!2574589 m!2909929))

(declare-fun m!2909931 () Bool)

(assert (=> b!2574589 m!2909931))

(declare-fun m!2909933 () Bool)

(assert (=> b!2574589 m!2909933))

(declare-fun m!2909935 () Bool)

(assert (=> b!2574589 m!2909935))

(declare-fun m!2909937 () Bool)

(assert (=> b!2574589 m!2909937))

(declare-fun m!2909939 () Bool)

(assert (=> b!2574589 m!2909939))

(declare-fun m!2909941 () Bool)

(assert (=> b!2574589 m!2909941))

(declare-fun m!2909943 () Bool)

(assert (=> b!2574589 m!2909943))

(assert (=> b!2574589 m!2909927))

(declare-fun m!2909945 () Bool)

(assert (=> b!2574577 m!2909945))

(declare-fun m!2909947 () Bool)

(assert (=> b!2574583 m!2909947))

(declare-fun m!2909949 () Bool)

(assert (=> b!2574583 m!2909949))

(declare-fun m!2909951 () Bool)

(assert (=> b!2574583 m!2909951))

(declare-fun m!2909953 () Bool)

(assert (=> b!2574583 m!2909953))

(declare-fun m!2909955 () Bool)

(assert (=> b!2574583 m!2909955))

(declare-fun m!2909957 () Bool)

(assert (=> b!2574588 m!2909957))

(push 1)

(assert tp_is_empty!13139)

(assert (not b!2574579))

(assert (not start!248658))

(assert (not b!2574586))

(assert (not b!2574582))

(assert (not b!2574577))

(assert (not b!2574588))

(assert (not b!2574585))

(assert (not b!2574581))

(assert (not b!2574575))

(assert (not b!2574576))

(assert (not b!2574587))

(assert (not b!2574580))

(assert (not b!2574589))

(assert (not b!2574583))

(assert (not b!2574584))

(assert (not b!2574578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2574727 () Bool)

(declare-fun res!1083011 () Bool)

(declare-fun e!1624611 () Bool)

(assert (=> b!2574727 (=> res!1083011 e!1624611)))

(declare-fun isEmpty!17071 (List!29707) Bool)

(declare-fun tail!4122 (List!29707) List!29707)

(assert (=> b!2574727 (= res!1083011 (not (isEmpty!17071 (tail!4122 (Cons!29607 c!14016 (_1!17345 lt!906405))))))))

(declare-fun b!2574728 () Bool)

(declare-fun res!1083008 () Bool)

(declare-fun e!1624612 () Bool)

(assert (=> b!2574728 (=> res!1083008 e!1624612)))

(assert (=> b!2574728 (= res!1083008 (not (is-ElementMatch!7642 (regOne!15796 r!27340))))))

(declare-fun e!1624613 () Bool)

(assert (=> b!2574728 (= e!1624613 e!1624612)))

(declare-fun b!2574729 () Bool)

(declare-fun e!1624609 () Bool)

(declare-fun lt!906457 () Bool)

(declare-fun call!166503 () Bool)

(assert (=> b!2574729 (= e!1624609 (= lt!906457 call!166503))))

(declare-fun b!2574730 () Bool)

(declare-fun e!1624614 () Bool)

(assert (=> b!2574730 (= e!1624614 e!1624611)))

(declare-fun res!1083013 () Bool)

(assert (=> b!2574730 (=> res!1083013 e!1624611)))

(assert (=> b!2574730 (= res!1083013 call!166503)))

(declare-fun b!2574731 () Bool)

(declare-fun head!5847 (List!29707) C!15442)

(assert (=> b!2574731 (= e!1624611 (not (= (head!5847 (Cons!29607 c!14016 (_1!17345 lt!906405))) (c!414634 (regOne!15796 r!27340)))))))

(declare-fun b!2574732 () Bool)

(declare-fun e!1624610 () Bool)

(assert (=> b!2574732 (= e!1624610 (= (head!5847 (Cons!29607 c!14016 (_1!17345 lt!906405))) (c!414634 (regOne!15796 r!27340))))))

(declare-fun bm!166498 () Bool)

(assert (=> bm!166498 (= call!166503 (isEmpty!17071 (Cons!29607 c!14016 (_1!17345 lt!906405))))))

(declare-fun b!2574733 () Bool)

(declare-fun res!1083014 () Bool)

(assert (=> b!2574733 (=> (not res!1083014) (not e!1624610))))

(assert (=> b!2574733 (= res!1083014 (isEmpty!17071 (tail!4122 (Cons!29607 c!14016 (_1!17345 lt!906405)))))))

(declare-fun e!1624608 () Bool)

(declare-fun b!2574734 () Bool)

(assert (=> b!2574734 (= e!1624608 (matchR!3585 (derivativeStep!2211 (regOne!15796 r!27340) (head!5847 (Cons!29607 c!14016 (_1!17345 lt!906405)))) (tail!4122 (Cons!29607 c!14016 (_1!17345 lt!906405)))))))

(declare-fun b!2574735 () Bool)

(declare-fun res!1083012 () Bool)

(assert (=> b!2574735 (=> res!1083012 e!1624612)))

(assert (=> b!2574735 (= res!1083012 e!1624610)))

(declare-fun res!1083010 () Bool)

(assert (=> b!2574735 (=> (not res!1083010) (not e!1624610))))

(assert (=> b!2574735 (= res!1083010 lt!906457)))

(declare-fun b!2574736 () Bool)

(assert (=> b!2574736 (= e!1624612 e!1624614)))

(declare-fun res!1083009 () Bool)

(assert (=> b!2574736 (=> (not res!1083009) (not e!1624614))))

(assert (=> b!2574736 (= res!1083009 (not lt!906457))))

(declare-fun b!2574737 () Bool)

(declare-fun res!1083015 () Bool)

(assert (=> b!2574737 (=> (not res!1083015) (not e!1624610))))

(assert (=> b!2574737 (= res!1083015 (not call!166503))))

(declare-fun d!728309 () Bool)

(assert (=> d!728309 e!1624609))

(declare-fun c!414656 () Bool)

(assert (=> d!728309 (= c!414656 (is-EmptyExpr!7642 (regOne!15796 r!27340)))))

(assert (=> d!728309 (= lt!906457 e!1624608)))

(declare-fun c!414655 () Bool)

(assert (=> d!728309 (= c!414655 (isEmpty!17071 (Cons!29607 c!14016 (_1!17345 lt!906405))))))

(assert (=> d!728309 (validRegex!3268 (regOne!15796 r!27340))))

(assert (=> d!728309 (= (matchR!3585 (regOne!15796 r!27340) (Cons!29607 c!14016 (_1!17345 lt!906405))) lt!906457)))

(declare-fun b!2574726 () Bool)

(assert (=> b!2574726 (= e!1624608 (nullable!2559 (regOne!15796 r!27340)))))

(declare-fun b!2574738 () Bool)

(assert (=> b!2574738 (= e!1624613 (not lt!906457))))

(declare-fun b!2574739 () Bool)

(assert (=> b!2574739 (= e!1624609 e!1624613)))

(declare-fun c!414654 () Bool)

(assert (=> b!2574739 (= c!414654 (is-EmptyLang!7642 (regOne!15796 r!27340)))))

(assert (= (and d!728309 c!414655) b!2574726))

(assert (= (and d!728309 (not c!414655)) b!2574734))

(assert (= (and d!728309 c!414656) b!2574729))

(assert (= (and d!728309 (not c!414656)) b!2574739))

(assert (= (and b!2574739 c!414654) b!2574738))

(assert (= (and b!2574739 (not c!414654)) b!2574728))

(assert (= (and b!2574728 (not res!1083008)) b!2574735))

(assert (= (and b!2574735 res!1083010) b!2574737))

(assert (= (and b!2574737 res!1083015) b!2574733))

(assert (= (and b!2574733 res!1083014) b!2574732))

(assert (= (and b!2574735 (not res!1083012)) b!2574736))

(assert (= (and b!2574736 res!1083009) b!2574730))

(assert (= (and b!2574730 (not res!1083013)) b!2574727))

(assert (= (and b!2574727 (not res!1083011)) b!2574731))

(assert (= (or b!2574729 b!2574730 b!2574737) bm!166498))

(declare-fun m!2910031 () Bool)

(assert (=> b!2574727 m!2910031))

(assert (=> b!2574727 m!2910031))

(declare-fun m!2910033 () Bool)

(assert (=> b!2574727 m!2910033))

(declare-fun m!2910035 () Bool)

(assert (=> d!728309 m!2910035))

(assert (=> d!728309 m!2909909))

(assert (=> b!2574726 m!2909925))

(assert (=> b!2574733 m!2910031))

(assert (=> b!2574733 m!2910031))

(assert (=> b!2574733 m!2910033))

(assert (=> bm!166498 m!2910035))

(declare-fun m!2910037 () Bool)

(assert (=> b!2574734 m!2910037))

(assert (=> b!2574734 m!2910037))

(declare-fun m!2910039 () Bool)

(assert (=> b!2574734 m!2910039))

(assert (=> b!2574734 m!2910031))

(assert (=> b!2574734 m!2910039))

(assert (=> b!2574734 m!2910031))

(declare-fun m!2910041 () Bool)

(assert (=> b!2574734 m!2910041))

(assert (=> b!2574732 m!2910037))

(assert (=> b!2574731 m!2910037))

(assert (=> b!2574582 d!728309))

(declare-fun b!2574768 () Bool)

(declare-fun res!1083028 () Bool)

(declare-fun e!1624628 () Bool)

(assert (=> b!2574768 (=> (not res!1083028) (not e!1624628))))

(declare-fun lt!906463 () List!29707)

(declare-fun size!22967 (List!29707) Int)

(assert (=> b!2574768 (= res!1083028 (= (size!22967 lt!906463) (+ (size!22967 (_1!17345 lt!906405)) (size!22967 (_2!17345 lt!906405)))))))

(declare-fun d!728313 () Bool)

(assert (=> d!728313 e!1624628))

(declare-fun res!1083029 () Bool)

(assert (=> d!728313 (=> (not res!1083029) (not e!1624628))))

(declare-fun content!4087 (List!29707) (Set C!15442))

(assert (=> d!728313 (= res!1083029 (= (content!4087 lt!906463) (set.union (content!4087 (_1!17345 lt!906405)) (content!4087 (_2!17345 lt!906405)))))))

(declare-fun e!1624629 () List!29707)

(assert (=> d!728313 (= lt!906463 e!1624629)))

(declare-fun c!414664 () Bool)

(assert (=> d!728313 (= c!414664 (is-Nil!29607 (_1!17345 lt!906405)))))

(assert (=> d!728313 (= (++!7281 (_1!17345 lt!906405) (_2!17345 lt!906405)) lt!906463)))

(declare-fun b!2574766 () Bool)

(assert (=> b!2574766 (= e!1624629 (_2!17345 lt!906405))))

(declare-fun b!2574769 () Bool)

(assert (=> b!2574769 (= e!1624628 (or (not (= (_2!17345 lt!906405) Nil!29607)) (= lt!906463 (_1!17345 lt!906405))))))

(declare-fun b!2574767 () Bool)

(assert (=> b!2574767 (= e!1624629 (Cons!29607 (h!35027 (_1!17345 lt!906405)) (++!7281 (t!211406 (_1!17345 lt!906405)) (_2!17345 lt!906405))))))

(assert (= (and d!728313 c!414664) b!2574766))

(assert (= (and d!728313 (not c!414664)) b!2574767))

(assert (= (and d!728313 res!1083029) b!2574768))

(assert (= (and b!2574768 res!1083028) b!2574769))

(declare-fun m!2910057 () Bool)

(assert (=> b!2574768 m!2910057))

(declare-fun m!2910059 () Bool)

(assert (=> b!2574768 m!2910059))

(declare-fun m!2910061 () Bool)

(assert (=> b!2574768 m!2910061))

(declare-fun m!2910063 () Bool)

(assert (=> d!728313 m!2910063))

(declare-fun m!2910065 () Bool)

(assert (=> d!728313 m!2910065))

(declare-fun m!2910067 () Bool)

(assert (=> d!728313 m!2910067))

(declare-fun m!2910069 () Bool)

(assert (=> b!2574767 m!2910069))

(assert (=> b!2574583 d!728313))

(declare-fun b!2574790 () Bool)

(declare-fun e!1624644 () Bool)

(declare-fun lt!906478 () Option!5923)

(assert (=> b!2574790 (= e!1624644 (= (++!7281 (_1!17345 (get!9323 lt!906478)) (_2!17345 (get!9323 lt!906478))) tl!4068))))

(declare-fun b!2574791 () Bool)

(declare-fun lt!906479 () Unit!43465)

(declare-fun lt!906477 () Unit!43465)

(assert (=> b!2574791 (= lt!906479 lt!906477)))

(assert (=> b!2574791 (= (++!7281 (++!7281 Nil!29607 (Cons!29607 (h!35027 tl!4068) Nil!29607)) (t!211406 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!812 (List!29707 C!15442 List!29707 List!29707) Unit!43465)

(assert (=> b!2574791 (= lt!906477 (lemmaMoveElementToOtherListKeepsConcatEq!812 Nil!29607 (h!35027 tl!4068) (t!211406 tl!4068) tl!4068))))

(declare-fun e!1624645 () Option!5923)

(assert (=> b!2574791 (= e!1624645 (findConcatSeparation!945 lt!906401 (regTwo!15796 r!27340) (++!7281 Nil!29607 (Cons!29607 (h!35027 tl!4068) Nil!29607)) (t!211406 tl!4068) tl!4068))))

(declare-fun b!2574792 () Bool)

(assert (=> b!2574792 (= e!1624645 None!5922)))

(declare-fun b!2574793 () Bool)

(declare-fun e!1624641 () Bool)

(assert (=> b!2574793 (= e!1624641 (matchR!3585 (regTwo!15796 r!27340) tl!4068))))

(declare-fun b!2574794 () Bool)

(declare-fun e!1624642 () Bool)

(assert (=> b!2574794 (= e!1624642 (not (isDefined!4745 lt!906478)))))

(declare-fun b!2574795 () Bool)

(declare-fun e!1624643 () Option!5923)

(assert (=> b!2574795 (= e!1624643 e!1624645)))

(declare-fun c!414670 () Bool)

(assert (=> b!2574795 (= c!414670 (is-Nil!29607 tl!4068))))

(declare-fun b!2574796 () Bool)

(declare-fun res!1083043 () Bool)

(assert (=> b!2574796 (=> (not res!1083043) (not e!1624644))))

(assert (=> b!2574796 (= res!1083043 (matchR!3585 (regTwo!15796 r!27340) (_2!17345 (get!9323 lt!906478))))))

(declare-fun d!728317 () Bool)

(assert (=> d!728317 e!1624642))

(declare-fun res!1083041 () Bool)

(assert (=> d!728317 (=> res!1083041 e!1624642)))

(assert (=> d!728317 (= res!1083041 e!1624644)))

(declare-fun res!1083044 () Bool)

(assert (=> d!728317 (=> (not res!1083044) (not e!1624644))))

(assert (=> d!728317 (= res!1083044 (isDefined!4745 lt!906478))))

(assert (=> d!728317 (= lt!906478 e!1624643)))

(declare-fun c!414671 () Bool)

(assert (=> d!728317 (= c!414671 e!1624641)))

(declare-fun res!1083040 () Bool)

(assert (=> d!728317 (=> (not res!1083040) (not e!1624641))))

(assert (=> d!728317 (= res!1083040 (matchR!3585 lt!906401 Nil!29607))))

(assert (=> d!728317 (validRegex!3268 lt!906401)))

(assert (=> d!728317 (= (findConcatSeparation!945 lt!906401 (regTwo!15796 r!27340) Nil!29607 tl!4068 tl!4068) lt!906478)))

(declare-fun b!2574797 () Bool)

(assert (=> b!2574797 (= e!1624643 (Some!5922 (tuple2!29607 Nil!29607 tl!4068)))))

(declare-fun b!2574798 () Bool)

(declare-fun res!1083042 () Bool)

(assert (=> b!2574798 (=> (not res!1083042) (not e!1624644))))

(assert (=> b!2574798 (= res!1083042 (matchR!3585 lt!906401 (_1!17345 (get!9323 lt!906478))))))

(assert (= (and d!728317 res!1083040) b!2574793))

(assert (= (and d!728317 c!414671) b!2574797))

(assert (= (and d!728317 (not c!414671)) b!2574795))

(assert (= (and b!2574795 c!414670) b!2574792))

(assert (= (and b!2574795 (not c!414670)) b!2574791))

(assert (= (and d!728317 res!1083044) b!2574798))

(assert (= (and b!2574798 res!1083042) b!2574796))

(assert (= (and b!2574796 res!1083043) b!2574790))

(assert (= (and d!728317 (not res!1083041)) b!2574794))

(declare-fun m!2910087 () Bool)

(assert (=> b!2574796 m!2910087))

(declare-fun m!2910089 () Bool)

(assert (=> b!2574796 m!2910089))

(assert (=> b!2574798 m!2910087))

(declare-fun m!2910091 () Bool)

(assert (=> b!2574798 m!2910091))

(declare-fun m!2910093 () Bool)

(assert (=> b!2574794 m!2910093))

(declare-fun m!2910095 () Bool)

(assert (=> b!2574791 m!2910095))

(assert (=> b!2574791 m!2910095))

(declare-fun m!2910097 () Bool)

(assert (=> b!2574791 m!2910097))

(declare-fun m!2910099 () Bool)

(assert (=> b!2574791 m!2910099))

(assert (=> b!2574791 m!2910095))

(declare-fun m!2910101 () Bool)

(assert (=> b!2574791 m!2910101))

(assert (=> d!728317 m!2910093))

(declare-fun m!2910103 () Bool)

(assert (=> d!728317 m!2910103))

(declare-fun m!2910105 () Bool)

(assert (=> d!728317 m!2910105))

(assert (=> b!2574790 m!2910087))

(declare-fun m!2910107 () Bool)

(assert (=> b!2574790 m!2910107))

(declare-fun m!2910109 () Bool)

(assert (=> b!2574793 m!2910109))

(assert (=> b!2574583 d!728317))

(declare-fun d!728327 () Bool)

(assert (=> d!728327 (= (get!9323 lt!906411) (v!31867 lt!906411))))

(assert (=> b!2574583 d!728327))

(declare-fun d!728329 () Bool)

(assert (=> d!728329 (isDefined!4745 (findConcatSeparation!945 lt!906401 (regTwo!15796 r!27340) Nil!29607 tl!4068 tl!4068))))

(declare-fun lt!906482 () Unit!43465)

(declare-fun choose!15180 (Regex!7642 Regex!7642 List!29707) Unit!43465)

(assert (=> d!728329 (= lt!906482 (choose!15180 lt!906401 (regTwo!15796 r!27340) tl!4068))))

(assert (=> d!728329 (validRegex!3268 lt!906401)))

(assert (=> d!728329 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!227 lt!906401 (regTwo!15796 r!27340) tl!4068) lt!906482)))

(declare-fun bs!470116 () Bool)

(assert (= bs!470116 d!728329))

(assert (=> bs!470116 m!2909947))

(assert (=> bs!470116 m!2909947))

(declare-fun m!2910111 () Bool)

(assert (=> bs!470116 m!2910111))

(declare-fun m!2910113 () Bool)

(assert (=> bs!470116 m!2910113))

(assert (=> bs!470116 m!2910105))

(assert (=> b!2574583 d!728329))

(declare-fun d!728331 () Bool)

(declare-fun isEmpty!17072 (Option!5923) Bool)

(assert (=> d!728331 (= (isDefined!4745 lt!906411) (not (isEmpty!17072 lt!906411)))))

(declare-fun bs!470117 () Bool)

(assert (= bs!470117 d!728331))

(declare-fun m!2910115 () Bool)

(assert (=> bs!470117 m!2910115))

(assert (=> b!2574583 d!728331))

(declare-fun d!728333 () Bool)

(declare-fun nullableFct!784 (Regex!7642) Bool)

(assert (=> d!728333 (= (nullable!2559 (regOne!15796 r!27340)) (nullableFct!784 (regOne!15796 r!27340)))))

(declare-fun bs!470118 () Bool)

(assert (= bs!470118 d!728333))

(declare-fun m!2910117 () Bool)

(assert (=> bs!470118 m!2910117))

(assert (=> b!2574579 d!728333))

(declare-fun bm!166510 () Bool)

(declare-fun call!166519 () List!29707)

(declare-fun call!166515 () List!29707)

(assert (=> bm!166510 (= call!166519 call!166515)))

(declare-fun b!2574846 () Bool)

(declare-fun e!1624672 () List!29707)

(assert (=> b!2574846 (= e!1624672 call!166519)))

(declare-fun d!728335 () Bool)

(declare-fun c!414691 () Bool)

(assert (=> d!728335 (= c!414691 (or (is-EmptyExpr!7642 r!27340) (is-EmptyLang!7642 r!27340)))))

(declare-fun e!1624675 () List!29707)

(assert (=> d!728335 (= (firstChars!99 r!27340) e!1624675)))

(declare-fun b!2574847 () Bool)

(declare-fun c!414689 () Bool)

(assert (=> b!2574847 (= c!414689 (nullable!2559 (regOne!15796 r!27340)))))

(declare-fun e!1624674 () List!29707)

(assert (=> b!2574847 (= e!1624674 e!1624672)))

(declare-fun b!2574848 () Bool)

(assert (=> b!2574848 (= e!1624675 Nil!29607)))

(declare-fun b!2574849 () Bool)

(declare-fun call!166516 () List!29707)

(assert (=> b!2574849 (= e!1624674 call!166516)))

(declare-fun b!2574850 () Bool)

(declare-fun c!414690 () Bool)

(assert (=> b!2574850 (= c!414690 (is-Star!7642 r!27340))))

(declare-fun e!1624671 () List!29707)

(declare-fun e!1624673 () List!29707)

(assert (=> b!2574850 (= e!1624671 e!1624673)))

(declare-fun b!2574851 () Bool)

(assert (=> b!2574851 (= e!1624675 e!1624671)))

(declare-fun c!414692 () Bool)

(assert (=> b!2574851 (= c!414692 (is-ElementMatch!7642 r!27340))))

(declare-fun bm!166511 () Bool)

(declare-fun call!166517 () List!29707)

(assert (=> bm!166511 (= call!166515 call!166517)))

(declare-fun b!2574852 () Bool)

(assert (=> b!2574852 (= e!1624673 e!1624674)))

(declare-fun c!414688 () Bool)

(assert (=> b!2574852 (= c!414688 (is-Union!7642 r!27340))))

(declare-fun bm!166512 () Bool)

(assert (=> bm!166512 (= call!166517 (firstChars!99 (ite c!414690 (reg!7971 r!27340) (ite c!414688 (regOne!15797 r!27340) (ite c!414689 (regTwo!15796 r!27340) (regOne!15796 r!27340))))))))

(declare-fun b!2574853 () Bool)

(assert (=> b!2574853 (= e!1624672 call!166516)))

(declare-fun bm!166513 () Bool)

(declare-fun call!166518 () List!29707)

(assert (=> bm!166513 (= call!166518 (firstChars!99 (ite c!414688 (regTwo!15797 r!27340) (regOne!15796 r!27340))))))

(declare-fun b!2574854 () Bool)

(assert (=> b!2574854 (= e!1624671 (Cons!29607 (c!414634 r!27340) Nil!29607))))

(declare-fun bm!166514 () Bool)

(assert (=> bm!166514 (= call!166516 (++!7281 (ite c!414688 call!166515 call!166518) (ite c!414688 call!166518 call!166519)))))

(declare-fun b!2574855 () Bool)

(assert (=> b!2574855 (= e!1624673 call!166517)))

(assert (= (and d!728335 c!414691) b!2574848))

(assert (= (and d!728335 (not c!414691)) b!2574851))

(assert (= (and b!2574851 c!414692) b!2574854))

(assert (= (and b!2574851 (not c!414692)) b!2574850))

(assert (= (and b!2574850 c!414690) b!2574855))

(assert (= (and b!2574850 (not c!414690)) b!2574852))

(assert (= (and b!2574852 c!414688) b!2574849))

(assert (= (and b!2574852 (not c!414688)) b!2574847))

(assert (= (and b!2574847 c!414689) b!2574853))

(assert (= (and b!2574847 (not c!414689)) b!2574846))

(assert (= (or b!2574853 b!2574846) bm!166510))

(assert (= (or b!2574849 bm!166510) bm!166511))

(assert (= (or b!2574849 b!2574853) bm!166513))

(assert (= (or b!2574849 b!2574853) bm!166514))

(assert (= (or b!2574855 bm!166511) bm!166512))

(assert (=> b!2574847 m!2909925))

(declare-fun m!2910141 () Bool)

(assert (=> bm!166512 m!2910141))

(declare-fun m!2910143 () Bool)

(assert (=> bm!166513 m!2910143))

(declare-fun m!2910145 () Bool)

(assert (=> bm!166514 m!2910145))

(assert (=> b!2574576 d!728335))

(declare-fun bm!166515 () Bool)

(declare-fun call!166524 () List!29707)

(declare-fun call!166520 () List!29707)

(assert (=> bm!166515 (= call!166524 call!166520)))

(declare-fun b!2574856 () Bool)

(declare-fun e!1624677 () List!29707)

(assert (=> b!2574856 (= e!1624677 call!166524)))

(declare-fun d!728339 () Bool)

(declare-fun c!414696 () Bool)

(assert (=> d!728339 (= c!414696 (or (is-EmptyExpr!7642 (regOne!15796 r!27340)) (is-EmptyLang!7642 (regOne!15796 r!27340))))))

(declare-fun e!1624680 () List!29707)

(assert (=> d!728339 (= (firstChars!99 (regOne!15796 r!27340)) e!1624680)))

(declare-fun b!2574857 () Bool)

(declare-fun c!414694 () Bool)

(assert (=> b!2574857 (= c!414694 (nullable!2559 (regOne!15796 (regOne!15796 r!27340))))))

(declare-fun e!1624679 () List!29707)

(assert (=> b!2574857 (= e!1624679 e!1624677)))

(declare-fun b!2574858 () Bool)

(assert (=> b!2574858 (= e!1624680 Nil!29607)))

(declare-fun b!2574859 () Bool)

(declare-fun call!166521 () List!29707)

(assert (=> b!2574859 (= e!1624679 call!166521)))

(declare-fun b!2574860 () Bool)

(declare-fun c!414695 () Bool)

(assert (=> b!2574860 (= c!414695 (is-Star!7642 (regOne!15796 r!27340)))))

(declare-fun e!1624676 () List!29707)

(declare-fun e!1624678 () List!29707)

(assert (=> b!2574860 (= e!1624676 e!1624678)))

(declare-fun b!2574861 () Bool)

(assert (=> b!2574861 (= e!1624680 e!1624676)))

(declare-fun c!414697 () Bool)

(assert (=> b!2574861 (= c!414697 (is-ElementMatch!7642 (regOne!15796 r!27340)))))

(declare-fun bm!166516 () Bool)

(declare-fun call!166522 () List!29707)

(assert (=> bm!166516 (= call!166520 call!166522)))

(declare-fun b!2574862 () Bool)

(assert (=> b!2574862 (= e!1624678 e!1624679)))

(declare-fun c!414693 () Bool)

(assert (=> b!2574862 (= c!414693 (is-Union!7642 (regOne!15796 r!27340)))))

(declare-fun bm!166517 () Bool)

(assert (=> bm!166517 (= call!166522 (firstChars!99 (ite c!414695 (reg!7971 (regOne!15796 r!27340)) (ite c!414693 (regOne!15797 (regOne!15796 r!27340)) (ite c!414694 (regTwo!15796 (regOne!15796 r!27340)) (regOne!15796 (regOne!15796 r!27340)))))))))

(declare-fun b!2574863 () Bool)

(assert (=> b!2574863 (= e!1624677 call!166521)))

(declare-fun bm!166518 () Bool)

(declare-fun call!166523 () List!29707)

(assert (=> bm!166518 (= call!166523 (firstChars!99 (ite c!414693 (regTwo!15797 (regOne!15796 r!27340)) (regOne!15796 (regOne!15796 r!27340)))))))

(declare-fun b!2574864 () Bool)

(assert (=> b!2574864 (= e!1624676 (Cons!29607 (c!414634 (regOne!15796 r!27340)) Nil!29607))))

(declare-fun bm!166519 () Bool)

(assert (=> bm!166519 (= call!166521 (++!7281 (ite c!414693 call!166520 call!166523) (ite c!414693 call!166523 call!166524)))))

(declare-fun b!2574865 () Bool)

(assert (=> b!2574865 (= e!1624678 call!166522)))

(assert (= (and d!728339 c!414696) b!2574858))

(assert (= (and d!728339 (not c!414696)) b!2574861))

(assert (= (and b!2574861 c!414697) b!2574864))

(assert (= (and b!2574861 (not c!414697)) b!2574860))

(assert (= (and b!2574860 c!414695) b!2574865))

(assert (= (and b!2574860 (not c!414695)) b!2574862))

(assert (= (and b!2574862 c!414693) b!2574859))

(assert (= (and b!2574862 (not c!414693)) b!2574857))

(assert (= (and b!2574857 c!414694) b!2574863))

(assert (= (and b!2574857 (not c!414694)) b!2574856))

(assert (= (or b!2574863 b!2574856) bm!166515))

(assert (= (or b!2574859 bm!166515) bm!166516))

(assert (= (or b!2574859 b!2574863) bm!166518))

(assert (= (or b!2574859 b!2574863) bm!166519))

(assert (= (or b!2574865 bm!166516) bm!166517))

(declare-fun m!2910147 () Bool)

(assert (=> b!2574857 m!2910147))

(declare-fun m!2910149 () Bool)

(assert (=> bm!166517 m!2910149))

(declare-fun m!2910151 () Bool)

(assert (=> bm!166518 m!2910151))

(declare-fun m!2910153 () Bool)

(assert (=> bm!166519 m!2910153))

(assert (=> b!2574576 d!728339))

(declare-fun d!728341 () Bool)

(assert (=> d!728341 (contains!5308 (firstChars!99 (regOne!15796 r!27340)) c!14016)))

(declare-fun lt!906494 () Unit!43465)

(declare-fun choose!15181 (Regex!7642 C!15442 List!29707) Unit!43465)

(assert (=> d!728341 (= lt!906494 (choose!15181 (regOne!15796 r!27340) c!14016 (_1!17345 lt!906405)))))

(assert (=> d!728341 (validRegex!3268 (regOne!15796 r!27340))))

(assert (=> d!728341 (= (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!15 (regOne!15796 r!27340) c!14016 (_1!17345 lt!906405)) lt!906494)))

(declare-fun bs!470120 () Bool)

(assert (= bs!470120 d!728341))

(assert (=> bs!470120 m!2909905))

(assert (=> bs!470120 m!2909905))

(assert (=> bs!470120 m!2909907))

(declare-fun m!2910157 () Bool)

(assert (=> bs!470120 m!2910157))

(assert (=> bs!470120 m!2909909))

(assert (=> b!2574576 d!728341))

(declare-fun d!728345 () Bool)

(declare-fun lt!906497 () Bool)

(assert (=> d!728345 (= lt!906497 (set.member c!14016 (content!4087 (firstChars!99 r!27340))))))

(declare-fun e!1624685 () Bool)

(assert (=> d!728345 (= lt!906497 e!1624685)))

(declare-fun res!1083064 () Bool)

(assert (=> d!728345 (=> (not res!1083064) (not e!1624685))))

(assert (=> d!728345 (= res!1083064 (is-Cons!29607 (firstChars!99 r!27340)))))

(assert (=> d!728345 (= (contains!5308 (firstChars!99 r!27340) c!14016) lt!906497)))

(declare-fun b!2574870 () Bool)

(declare-fun e!1624686 () Bool)

(assert (=> b!2574870 (= e!1624685 e!1624686)))

(declare-fun res!1083065 () Bool)

(assert (=> b!2574870 (=> res!1083065 e!1624686)))

(assert (=> b!2574870 (= res!1083065 (= (h!35027 (firstChars!99 r!27340)) c!14016))))

(declare-fun b!2574871 () Bool)

(assert (=> b!2574871 (= e!1624686 (contains!5308 (t!211406 (firstChars!99 r!27340)) c!14016))))

(assert (= (and d!728345 res!1083064) b!2574870))

(assert (= (and b!2574870 (not res!1083065)) b!2574871))

(assert (=> d!728345 m!2909901))

(declare-fun m!2910159 () Bool)

(assert (=> d!728345 m!2910159))

(declare-fun m!2910161 () Bool)

(assert (=> d!728345 m!2910161))

(declare-fun m!2910163 () Bool)

(assert (=> b!2574871 m!2910163))

(assert (=> b!2574576 d!728345))

(declare-fun d!728347 () Bool)

(declare-fun lt!906498 () Bool)

(assert (=> d!728347 (= lt!906498 (set.member c!14016 (content!4087 (firstChars!99 (regOne!15796 r!27340)))))))

(declare-fun e!1624687 () Bool)

(assert (=> d!728347 (= lt!906498 e!1624687)))

(declare-fun res!1083066 () Bool)

(assert (=> d!728347 (=> (not res!1083066) (not e!1624687))))

(assert (=> d!728347 (= res!1083066 (is-Cons!29607 (firstChars!99 (regOne!15796 r!27340))))))

(assert (=> d!728347 (= (contains!5308 (firstChars!99 (regOne!15796 r!27340)) c!14016) lt!906498)))

(declare-fun b!2574872 () Bool)

(declare-fun e!1624688 () Bool)

(assert (=> b!2574872 (= e!1624687 e!1624688)))

(declare-fun res!1083067 () Bool)

(assert (=> b!2574872 (=> res!1083067 e!1624688)))

(assert (=> b!2574872 (= res!1083067 (= (h!35027 (firstChars!99 (regOne!15796 r!27340))) c!14016))))

(declare-fun b!2574873 () Bool)

(assert (=> b!2574873 (= e!1624688 (contains!5308 (t!211406 (firstChars!99 (regOne!15796 r!27340))) c!14016))))

(assert (= (and d!728347 res!1083066) b!2574872))

(assert (= (and b!2574872 (not res!1083067)) b!2574873))

(assert (=> d!728347 m!2909905))

(declare-fun m!2910165 () Bool)

(assert (=> d!728347 m!2910165))

(declare-fun m!2910167 () Bool)

(assert (=> d!728347 m!2910167))

(declare-fun m!2910169 () Bool)

(assert (=> b!2574873 m!2910169))

(assert (=> b!2574576 d!728347))

(declare-fun b!2574905 () Bool)

(declare-fun e!1624711 () Bool)

(declare-fun e!1624714 () Bool)

(assert (=> b!2574905 (= e!1624711 e!1624714)))

(declare-fun c!414706 () Bool)

(assert (=> b!2574905 (= c!414706 (is-Star!7642 (regOne!15796 r!27340)))))

(declare-fun bm!166526 () Bool)

(declare-fun c!414707 () Bool)

(declare-fun call!166531 () Bool)

(assert (=> bm!166526 (= call!166531 (validRegex!3268 (ite c!414706 (reg!7971 (regOne!15796 r!27340)) (ite c!414707 (regTwo!15797 (regOne!15796 r!27340)) (regOne!15796 (regOne!15796 r!27340))))))))

(declare-fun b!2574906 () Bool)

(declare-fun e!1624712 () Bool)

(declare-fun call!166532 () Bool)

(assert (=> b!2574906 (= e!1624712 call!166532)))

(declare-fun b!2574907 () Bool)

(declare-fun e!1624715 () Bool)

(declare-fun e!1624713 () Bool)

(assert (=> b!2574907 (= e!1624715 e!1624713)))

(declare-fun res!1083088 () Bool)

(assert (=> b!2574907 (=> (not res!1083088) (not e!1624713))))

(assert (=> b!2574907 (= res!1083088 call!166532)))

(declare-fun b!2574908 () Bool)

(declare-fun res!1083084 () Bool)

(assert (=> b!2574908 (=> res!1083084 e!1624715)))

(assert (=> b!2574908 (= res!1083084 (not (is-Concat!12338 (regOne!15796 r!27340))))))

(declare-fun e!1624709 () Bool)

(assert (=> b!2574908 (= e!1624709 e!1624715)))

(declare-fun b!2574909 () Bool)

(declare-fun res!1083086 () Bool)

(assert (=> b!2574909 (=> (not res!1083086) (not e!1624712))))

(declare-fun call!166533 () Bool)

(assert (=> b!2574909 (= res!1083086 call!166533)))

(assert (=> b!2574909 (= e!1624709 e!1624712)))

(declare-fun b!2574904 () Bool)

(declare-fun e!1624710 () Bool)

(assert (=> b!2574904 (= e!1624714 e!1624710)))

(declare-fun res!1083087 () Bool)

(assert (=> b!2574904 (= res!1083087 (not (nullable!2559 (reg!7971 (regOne!15796 r!27340)))))))

(assert (=> b!2574904 (=> (not res!1083087) (not e!1624710))))

(declare-fun d!728349 () Bool)

(declare-fun res!1083085 () Bool)

(assert (=> d!728349 (=> res!1083085 e!1624711)))

(assert (=> d!728349 (= res!1083085 (is-ElementMatch!7642 (regOne!15796 r!27340)))))

(assert (=> d!728349 (= (validRegex!3268 (regOne!15796 r!27340)) e!1624711)))

(declare-fun bm!166527 () Bool)

(assert (=> bm!166527 (= call!166533 (validRegex!3268 (ite c!414707 (regOne!15797 (regOne!15796 r!27340)) (regTwo!15796 (regOne!15796 r!27340)))))))

(declare-fun bm!166528 () Bool)

(assert (=> bm!166528 (= call!166532 call!166531)))

(declare-fun b!2574910 () Bool)

(assert (=> b!2574910 (= e!1624713 call!166533)))

(declare-fun b!2574911 () Bool)

(assert (=> b!2574911 (= e!1624714 e!1624709)))

(assert (=> b!2574911 (= c!414707 (is-Union!7642 (regOne!15796 r!27340)))))

(declare-fun b!2574912 () Bool)

(assert (=> b!2574912 (= e!1624710 call!166531)))

(assert (= (and d!728349 (not res!1083085)) b!2574905))

(assert (= (and b!2574905 c!414706) b!2574904))

(assert (= (and b!2574905 (not c!414706)) b!2574911))

(assert (= (and b!2574904 res!1083087) b!2574912))

(assert (= (and b!2574911 c!414707) b!2574909))

(assert (= (and b!2574911 (not c!414707)) b!2574908))

(assert (= (and b!2574909 res!1083086) b!2574906))

(assert (= (and b!2574908 (not res!1083084)) b!2574907))

(assert (= (and b!2574907 res!1083088) b!2574910))

(assert (= (or b!2574909 b!2574910) bm!166527))

(assert (= (or b!2574906 b!2574907) bm!166528))

(assert (= (or b!2574912 bm!166528) bm!166526))

(declare-fun m!2910185 () Bool)

(assert (=> bm!166526 m!2910185))

(declare-fun m!2910187 () Bool)

(assert (=> b!2574904 m!2910187))

(declare-fun m!2910189 () Bool)

(assert (=> bm!166527 m!2910189))

(assert (=> b!2574587 d!728349))

(declare-fun b!2574928 () Bool)

(declare-fun res!1083100 () Bool)

(declare-fun e!1624726 () Bool)

(assert (=> b!2574928 (=> res!1083100 e!1624726)))

(assert (=> b!2574928 (= res!1083100 (not (isEmpty!17071 (tail!4122 Nil!29607))))))

(declare-fun b!2574929 () Bool)

(declare-fun res!1083097 () Bool)

(declare-fun e!1624727 () Bool)

(assert (=> b!2574929 (=> res!1083097 e!1624727)))

(assert (=> b!2574929 (= res!1083097 (not (is-ElementMatch!7642 lt!906409)))))

(declare-fun e!1624728 () Bool)

(assert (=> b!2574929 (= e!1624728 e!1624727)))

(declare-fun b!2574930 () Bool)

(declare-fun e!1624724 () Bool)

(declare-fun lt!906503 () Bool)

(declare-fun call!166535 () Bool)

(assert (=> b!2574930 (= e!1624724 (= lt!906503 call!166535))))

(declare-fun b!2574931 () Bool)

(declare-fun e!1624729 () Bool)

(assert (=> b!2574931 (= e!1624729 e!1624726)))

(declare-fun res!1083102 () Bool)

(assert (=> b!2574931 (=> res!1083102 e!1624726)))

(assert (=> b!2574931 (= res!1083102 call!166535)))

(declare-fun b!2574932 () Bool)

(assert (=> b!2574932 (= e!1624726 (not (= (head!5847 Nil!29607) (c!414634 lt!906409))))))

(declare-fun b!2574933 () Bool)

(declare-fun e!1624725 () Bool)

(assert (=> b!2574933 (= e!1624725 (= (head!5847 Nil!29607) (c!414634 lt!906409)))))

(declare-fun bm!166530 () Bool)

(assert (=> bm!166530 (= call!166535 (isEmpty!17071 Nil!29607))))

(declare-fun b!2574934 () Bool)

(declare-fun res!1083103 () Bool)

(assert (=> b!2574934 (=> (not res!1083103) (not e!1624725))))

(assert (=> b!2574934 (= res!1083103 (isEmpty!17071 (tail!4122 Nil!29607)))))

(declare-fun b!2574935 () Bool)

(declare-fun e!1624723 () Bool)

(assert (=> b!2574935 (= e!1624723 (matchR!3585 (derivativeStep!2211 lt!906409 (head!5847 Nil!29607)) (tail!4122 Nil!29607)))))

(declare-fun b!2574936 () Bool)

(declare-fun res!1083101 () Bool)

(assert (=> b!2574936 (=> res!1083101 e!1624727)))

(assert (=> b!2574936 (= res!1083101 e!1624725)))

(declare-fun res!1083099 () Bool)

(assert (=> b!2574936 (=> (not res!1083099) (not e!1624725))))

(assert (=> b!2574936 (= res!1083099 lt!906503)))

(declare-fun b!2574937 () Bool)

(assert (=> b!2574937 (= e!1624727 e!1624729)))

(declare-fun res!1083098 () Bool)

(assert (=> b!2574937 (=> (not res!1083098) (not e!1624729))))

(assert (=> b!2574937 (= res!1083098 (not lt!906503))))

(declare-fun b!2574938 () Bool)

(declare-fun res!1083104 () Bool)

(assert (=> b!2574938 (=> (not res!1083104) (not e!1624725))))

(assert (=> b!2574938 (= res!1083104 (not call!166535))))

(declare-fun d!728353 () Bool)

(assert (=> d!728353 e!1624724))

(declare-fun c!414713 () Bool)

(assert (=> d!728353 (= c!414713 (is-EmptyExpr!7642 lt!906409))))

(assert (=> d!728353 (= lt!906503 e!1624723)))

(declare-fun c!414712 () Bool)

(assert (=> d!728353 (= c!414712 (isEmpty!17071 Nil!29607))))

(assert (=> d!728353 (validRegex!3268 lt!906409)))

(assert (=> d!728353 (= (matchR!3585 lt!906409 Nil!29607) lt!906503)))

(declare-fun b!2574927 () Bool)

(assert (=> b!2574927 (= e!1624723 (nullable!2559 lt!906409))))

(declare-fun b!2574939 () Bool)

(assert (=> b!2574939 (= e!1624728 (not lt!906503))))

(declare-fun b!2574940 () Bool)

(assert (=> b!2574940 (= e!1624724 e!1624728)))

(declare-fun c!414711 () Bool)

(assert (=> b!2574940 (= c!414711 (is-EmptyLang!7642 lt!906409))))

(assert (= (and d!728353 c!414712) b!2574927))

(assert (= (and d!728353 (not c!414712)) b!2574935))

(assert (= (and d!728353 c!414713) b!2574930))

(assert (= (and d!728353 (not c!414713)) b!2574940))

(assert (= (and b!2574940 c!414711) b!2574939))

(assert (= (and b!2574940 (not c!414711)) b!2574929))

(assert (= (and b!2574929 (not res!1083097)) b!2574936))

(assert (= (and b!2574936 res!1083099) b!2574938))

(assert (= (and b!2574938 res!1083104) b!2574934))

(assert (= (and b!2574934 res!1083103) b!2574933))

(assert (= (and b!2574936 (not res!1083101)) b!2574937))

(assert (= (and b!2574937 res!1083098) b!2574931))

(assert (= (and b!2574931 (not res!1083102)) b!2574928))

(assert (= (and b!2574928 (not res!1083100)) b!2574932))

(assert (= (or b!2574930 b!2574931 b!2574938) bm!166530))

(declare-fun m!2910191 () Bool)

(assert (=> b!2574928 m!2910191))

(assert (=> b!2574928 m!2910191))

(declare-fun m!2910193 () Bool)

(assert (=> b!2574928 m!2910193))

(declare-fun m!2910195 () Bool)

(assert (=> d!728353 m!2910195))

(declare-fun m!2910197 () Bool)

(assert (=> d!728353 m!2910197))

(assert (=> b!2574927 m!2909945))

(assert (=> b!2574934 m!2910191))

(assert (=> b!2574934 m!2910191))

(assert (=> b!2574934 m!2910193))

(assert (=> bm!166530 m!2910195))

(declare-fun m!2910199 () Bool)

(assert (=> b!2574935 m!2910199))

(assert (=> b!2574935 m!2910199))

(declare-fun m!2910201 () Bool)

(assert (=> b!2574935 m!2910201))

(assert (=> b!2574935 m!2910191))

(assert (=> b!2574935 m!2910201))

(assert (=> b!2574935 m!2910191))

(declare-fun m!2910203 () Bool)

(assert (=> b!2574935 m!2910203))

(assert (=> b!2574933 m!2910199))

(assert (=> b!2574932 m!2910199))

(assert (=> b!2574587 d!728353))

(declare-fun d!728355 () Bool)

(declare-fun lt!906507 () Regex!7642)

(assert (=> d!728355 (validRegex!3268 lt!906507)))

(declare-fun e!1624739 () Regex!7642)

(assert (=> d!728355 (= lt!906507 e!1624739)))

(declare-fun c!414719 () Bool)

(assert (=> d!728355 (= c!414719 (is-Cons!29607 (_1!17345 lt!906405)))))

(assert (=> d!728355 (validRegex!3268 lt!906401)))

(assert (=> d!728355 (= (derivative!337 lt!906401 (_1!17345 lt!906405)) lt!906507)))

(declare-fun b!2574959 () Bool)

(assert (=> b!2574959 (= e!1624739 (derivative!337 (derivativeStep!2211 lt!906401 (h!35027 (_1!17345 lt!906405))) (t!211406 (_1!17345 lt!906405))))))

(declare-fun b!2574960 () Bool)

(assert (=> b!2574960 (= e!1624739 lt!906401)))

(assert (= (and d!728355 c!414719) b!2574959))

(assert (= (and d!728355 (not c!414719)) b!2574960))

(declare-fun m!2910229 () Bool)

(assert (=> d!728355 m!2910229))

(assert (=> d!728355 m!2910105))

(declare-fun m!2910233 () Bool)

(assert (=> b!2574959 m!2910233))

(assert (=> b!2574959 m!2910233))

(declare-fun m!2910235 () Bool)

(assert (=> b!2574959 m!2910235))

(assert (=> b!2574587 d!728355))

(declare-fun d!728359 () Bool)

(assert (=> d!728359 (= (matchR!3585 lt!906401 (_1!17345 lt!906405)) (matchR!3585 (derivative!337 lt!906401 (_1!17345 lt!906405)) Nil!29607))))

(declare-fun lt!906511 () Unit!43465)

(declare-fun choose!15184 (Regex!7642 List!29707) Unit!43465)

(assert (=> d!728359 (= lt!906511 (choose!15184 lt!906401 (_1!17345 lt!906405)))))

(assert (=> d!728359 (validRegex!3268 lt!906401)))

(assert (=> d!728359 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!231 lt!906401 (_1!17345 lt!906405)) lt!906511)))

(declare-fun bs!470122 () Bool)

(assert (= bs!470122 d!728359))

(assert (=> bs!470122 m!2909895))

(assert (=> bs!470122 m!2909913))

(declare-fun m!2910243 () Bool)

(assert (=> bs!470122 m!2910243))

(declare-fun m!2910245 () Bool)

(assert (=> bs!470122 m!2910245))

(assert (=> bs!470122 m!2909913))

(assert (=> bs!470122 m!2910105))

(assert (=> b!2574587 d!728359))

(declare-fun d!728365 () Bool)

(assert (=> d!728365 (= (nullable!2559 lt!906409) (nullableFct!784 lt!906409))))

(declare-fun bs!470123 () Bool)

(assert (= bs!470123 d!728365))

(declare-fun m!2910247 () Bool)

(assert (=> bs!470123 m!2910247))

(assert (=> b!2574577 d!728365))

(declare-fun b!2574976 () Bool)

(declare-fun res!1083124 () Bool)

(declare-fun e!1624750 () Bool)

(assert (=> b!2574976 (=> res!1083124 e!1624750)))

(assert (=> b!2574976 (= res!1083124 (not (isEmpty!17071 (tail!4122 tl!4068))))))

(declare-fun b!2574977 () Bool)

(declare-fun res!1083121 () Bool)

(declare-fun e!1624751 () Bool)

(assert (=> b!2574977 (=> res!1083121 e!1624751)))

(assert (=> b!2574977 (= res!1083121 (not (is-ElementMatch!7642 EmptyLang!7642)))))

(declare-fun e!1624752 () Bool)

(assert (=> b!2574977 (= e!1624752 e!1624751)))

(declare-fun b!2574978 () Bool)

(declare-fun e!1624748 () Bool)

(declare-fun lt!906512 () Bool)

(declare-fun call!166538 () Bool)

(assert (=> b!2574978 (= e!1624748 (= lt!906512 call!166538))))

(declare-fun b!2574979 () Bool)

(declare-fun e!1624753 () Bool)

(assert (=> b!2574979 (= e!1624753 e!1624750)))

(declare-fun res!1083126 () Bool)

(assert (=> b!2574979 (=> res!1083126 e!1624750)))

(assert (=> b!2574979 (= res!1083126 call!166538)))

(declare-fun b!2574980 () Bool)

(assert (=> b!2574980 (= e!1624750 (not (= (head!5847 tl!4068) (c!414634 EmptyLang!7642))))))

(declare-fun b!2574981 () Bool)

(declare-fun e!1624749 () Bool)

(assert (=> b!2574981 (= e!1624749 (= (head!5847 tl!4068) (c!414634 EmptyLang!7642)))))

(declare-fun bm!166533 () Bool)

(assert (=> bm!166533 (= call!166538 (isEmpty!17071 tl!4068))))

(declare-fun b!2574982 () Bool)

(declare-fun res!1083127 () Bool)

(assert (=> b!2574982 (=> (not res!1083127) (not e!1624749))))

(assert (=> b!2574982 (= res!1083127 (isEmpty!17071 (tail!4122 tl!4068)))))

(declare-fun b!2574983 () Bool)

(declare-fun e!1624747 () Bool)

(assert (=> b!2574983 (= e!1624747 (matchR!3585 (derivativeStep!2211 EmptyLang!7642 (head!5847 tl!4068)) (tail!4122 tl!4068)))))

(declare-fun b!2574984 () Bool)

(declare-fun res!1083125 () Bool)

(assert (=> b!2574984 (=> res!1083125 e!1624751)))

(assert (=> b!2574984 (= res!1083125 e!1624749)))

(declare-fun res!1083123 () Bool)

(assert (=> b!2574984 (=> (not res!1083123) (not e!1624749))))

(assert (=> b!2574984 (= res!1083123 lt!906512)))

(declare-fun b!2574985 () Bool)

(assert (=> b!2574985 (= e!1624751 e!1624753)))

(declare-fun res!1083122 () Bool)

(assert (=> b!2574985 (=> (not res!1083122) (not e!1624753))))

(assert (=> b!2574985 (= res!1083122 (not lt!906512))))

(declare-fun b!2574986 () Bool)

(declare-fun res!1083128 () Bool)

(assert (=> b!2574986 (=> (not res!1083128) (not e!1624749))))

(assert (=> b!2574986 (= res!1083128 (not call!166538))))

(declare-fun d!728367 () Bool)

(assert (=> d!728367 e!1624748))

(declare-fun c!414725 () Bool)

(assert (=> d!728367 (= c!414725 (is-EmptyExpr!7642 EmptyLang!7642))))

(assert (=> d!728367 (= lt!906512 e!1624747)))

(declare-fun c!414724 () Bool)

(assert (=> d!728367 (= c!414724 (isEmpty!17071 tl!4068))))

(assert (=> d!728367 (validRegex!3268 EmptyLang!7642)))

(assert (=> d!728367 (= (matchR!3585 EmptyLang!7642 tl!4068) lt!906512)))

(declare-fun b!2574975 () Bool)

(assert (=> b!2574975 (= e!1624747 (nullable!2559 EmptyLang!7642))))

(declare-fun b!2574987 () Bool)

(assert (=> b!2574987 (= e!1624752 (not lt!906512))))

(declare-fun b!2574988 () Bool)

(assert (=> b!2574988 (= e!1624748 e!1624752)))

(declare-fun c!414723 () Bool)

(assert (=> b!2574988 (= c!414723 (is-EmptyLang!7642 EmptyLang!7642))))

(assert (= (and d!728367 c!414724) b!2574975))

(assert (= (and d!728367 (not c!414724)) b!2574983))

(assert (= (and d!728367 c!414725) b!2574978))

(assert (= (and d!728367 (not c!414725)) b!2574988))

(assert (= (and b!2574988 c!414723) b!2574987))

(assert (= (and b!2574988 (not c!414723)) b!2574977))

(assert (= (and b!2574977 (not res!1083121)) b!2574984))

(assert (= (and b!2574984 res!1083123) b!2574986))

(assert (= (and b!2574986 res!1083128) b!2574982))

(assert (= (and b!2574982 res!1083127) b!2574981))

(assert (= (and b!2574984 (not res!1083125)) b!2574985))

(assert (= (and b!2574985 res!1083122) b!2574979))

(assert (= (and b!2574979 (not res!1083126)) b!2574976))

(assert (= (and b!2574976 (not res!1083124)) b!2574980))

(assert (= (or b!2574978 b!2574979 b!2574986) bm!166533))

(declare-fun m!2910265 () Bool)

(assert (=> b!2574976 m!2910265))

(assert (=> b!2574976 m!2910265))

(declare-fun m!2910269 () Bool)

(assert (=> b!2574976 m!2910269))

(declare-fun m!2910271 () Bool)

(assert (=> d!728367 m!2910271))

(declare-fun m!2910273 () Bool)

(assert (=> d!728367 m!2910273))

(declare-fun m!2910275 () Bool)

(assert (=> b!2574975 m!2910275))

(assert (=> b!2574982 m!2910265))

(assert (=> b!2574982 m!2910265))

(assert (=> b!2574982 m!2910269))

(assert (=> bm!166533 m!2910271))

(declare-fun m!2910277 () Bool)

(assert (=> b!2574983 m!2910277))

(assert (=> b!2574983 m!2910277))

(declare-fun m!2910279 () Bool)

(assert (=> b!2574983 m!2910279))

(assert (=> b!2574983 m!2910265))

(assert (=> b!2574983 m!2910279))

(assert (=> b!2574983 m!2910265))

(declare-fun m!2910281 () Bool)

(assert (=> b!2574983 m!2910281))

(assert (=> b!2574981 m!2910277))

(assert (=> b!2574980 m!2910277))

(assert (=> b!2574588 d!728367))

(declare-fun d!728373 () Bool)

(assert (=> d!728373 (= (nullable!2559 (derivative!337 (derivativeStep!2211 r!27340 c!14016) tl!4068)) (nullableFct!784 (derivative!337 (derivativeStep!2211 r!27340 c!14016) tl!4068)))))

(declare-fun bs!470125 () Bool)

(assert (= bs!470125 d!728373))

(assert (=> bs!470125 m!2909921))

(declare-fun m!2910283 () Bool)

(assert (=> bs!470125 m!2910283))

(assert (=> b!2574578 d!728373))

(declare-fun d!728375 () Bool)

(declare-fun lt!906514 () Regex!7642)

(assert (=> d!728375 (validRegex!3268 lt!906514)))

(declare-fun e!1624761 () Regex!7642)

(assert (=> d!728375 (= lt!906514 e!1624761)))

(declare-fun c!414729 () Bool)

(assert (=> d!728375 (= c!414729 (is-Cons!29607 tl!4068))))

(assert (=> d!728375 (validRegex!3268 (derivativeStep!2211 r!27340 c!14016))))

(assert (=> d!728375 (= (derivative!337 (derivativeStep!2211 r!27340 c!14016) tl!4068) lt!906514)))

(declare-fun b!2575003 () Bool)

(assert (=> b!2575003 (= e!1624761 (derivative!337 (derivativeStep!2211 (derivativeStep!2211 r!27340 c!14016) (h!35027 tl!4068)) (t!211406 tl!4068)))))

(declare-fun b!2575004 () Bool)

(assert (=> b!2575004 (= e!1624761 (derivativeStep!2211 r!27340 c!14016))))

(assert (= (and d!728375 c!414729) b!2575003))

(assert (= (and d!728375 (not c!414729)) b!2575004))

(declare-fun m!2910285 () Bool)

(assert (=> d!728375 m!2910285))

(assert (=> d!728375 m!2909919))

(declare-fun m!2910287 () Bool)

(assert (=> d!728375 m!2910287))

(assert (=> b!2575003 m!2909919))

(declare-fun m!2910289 () Bool)

(assert (=> b!2575003 m!2910289))

(assert (=> b!2575003 m!2910289))

(declare-fun m!2910291 () Bool)

(assert (=> b!2575003 m!2910291))

(assert (=> b!2574578 d!728375))

(declare-fun bm!166546 () Bool)

(declare-fun c!414744 () Bool)

(declare-fun call!166554 () Regex!7642)

(assert (=> bm!166546 (= call!166554 (derivativeStep!2211 (ite c!414744 (regTwo!15797 r!27340) (regTwo!15796 r!27340)) c!14016))))

(declare-fun b!2575034 () Bool)

(declare-fun e!1624781 () Regex!7642)

(declare-fun e!1624782 () Regex!7642)

(assert (=> b!2575034 (= e!1624781 e!1624782)))

(declare-fun c!414745 () Bool)

(assert (=> b!2575034 (= c!414745 (is-Star!7642 r!27340))))

(declare-fun bm!166547 () Bool)

(declare-fun call!166553 () Regex!7642)

(assert (=> bm!166547 (= call!166553 (derivativeStep!2211 (ite c!414744 (regOne!15797 r!27340) (ite c!414745 (reg!7971 r!27340) (regOne!15796 r!27340))) c!14016))))

(declare-fun b!2575035 () Bool)

(declare-fun e!1624779 () Regex!7642)

(declare-fun e!1624783 () Regex!7642)

(assert (=> b!2575035 (= e!1624779 e!1624783)))

(declare-fun c!414743 () Bool)

(assert (=> b!2575035 (= c!414743 (is-ElementMatch!7642 r!27340))))

(declare-fun b!2575036 () Bool)

(assert (=> b!2575036 (= e!1624783 (ite (= c!14016 (c!414634 r!27340)) EmptyExpr!7642 EmptyLang!7642))))

(declare-fun bm!166548 () Bool)

(declare-fun call!166551 () Regex!7642)

(declare-fun call!166552 () Regex!7642)

(assert (=> bm!166548 (= call!166551 call!166552)))

(declare-fun d!728377 () Bool)

(declare-fun lt!906520 () Regex!7642)

(assert (=> d!728377 (validRegex!3268 lt!906520)))

(assert (=> d!728377 (= lt!906520 e!1624779)))

(declare-fun c!414747 () Bool)

(assert (=> d!728377 (= c!414747 (or (is-EmptyExpr!7642 r!27340) (is-EmptyLang!7642 r!27340)))))

(assert (=> d!728377 (validRegex!3268 r!27340)))

(assert (=> d!728377 (= (derivativeStep!2211 r!27340 c!14016) lt!906520)))

(declare-fun bm!166549 () Bool)

(assert (=> bm!166549 (= call!166552 call!166553)))

(declare-fun b!2575037 () Bool)

(assert (=> b!2575037 (= c!414744 (is-Union!7642 r!27340))))

(assert (=> b!2575037 (= e!1624783 e!1624781)))

(declare-fun e!1624780 () Regex!7642)

(declare-fun b!2575038 () Bool)

(assert (=> b!2575038 (= e!1624780 (Union!7642 (Concat!12338 call!166551 (regTwo!15796 r!27340)) call!166554))))

(declare-fun b!2575039 () Bool)

(assert (=> b!2575039 (= e!1624781 (Union!7642 call!166553 call!166554))))

(declare-fun b!2575040 () Bool)

(assert (=> b!2575040 (= e!1624780 (Union!7642 (Concat!12338 call!166551 (regTwo!15796 r!27340)) EmptyLang!7642))))

(declare-fun b!2575041 () Bool)

(declare-fun c!414746 () Bool)

(assert (=> b!2575041 (= c!414746 (nullable!2559 (regOne!15796 r!27340)))))

(assert (=> b!2575041 (= e!1624782 e!1624780)))

(declare-fun b!2575042 () Bool)

(assert (=> b!2575042 (= e!1624782 (Concat!12338 call!166552 r!27340))))

(declare-fun b!2575043 () Bool)

(assert (=> b!2575043 (= e!1624779 EmptyLang!7642)))

(assert (= (and d!728377 c!414747) b!2575043))

(assert (= (and d!728377 (not c!414747)) b!2575035))

(assert (= (and b!2575035 c!414743) b!2575036))

(assert (= (and b!2575035 (not c!414743)) b!2575037))

(assert (= (and b!2575037 c!414744) b!2575039))

(assert (= (and b!2575037 (not c!414744)) b!2575034))

(assert (= (and b!2575034 c!414745) b!2575042))

(assert (= (and b!2575034 (not c!414745)) b!2575041))

(assert (= (and b!2575041 c!414746) b!2575038))

(assert (= (and b!2575041 (not c!414746)) b!2575040))

(assert (= (or b!2575038 b!2575040) bm!166548))

(assert (= (or b!2575042 bm!166548) bm!166549))

(assert (= (or b!2575039 b!2575038) bm!166546))

(assert (= (or b!2575039 bm!166549) bm!166547))

(declare-fun m!2910313 () Bool)

(assert (=> bm!166546 m!2910313))

(declare-fun m!2910315 () Bool)

(assert (=> bm!166547 m!2910315))

(declare-fun m!2910317 () Bool)

(assert (=> d!728377 m!2910317))

(assert (=> d!728377 m!2909917))

(assert (=> b!2575041 m!2909925))

(assert (=> b!2574578 d!728377))

(declare-fun c!414749 () Bool)

(declare-fun bm!166550 () Bool)

(declare-fun call!166558 () Regex!7642)

(assert (=> bm!166550 (= call!166558 (derivativeStep!2211 (ite c!414749 (regTwo!15797 (regOne!15796 r!27340)) (regTwo!15796 (regOne!15796 r!27340))) c!14016))))

(declare-fun b!2575044 () Bool)

(declare-fun e!1624786 () Regex!7642)

(declare-fun e!1624787 () Regex!7642)

(assert (=> b!2575044 (= e!1624786 e!1624787)))

(declare-fun c!414750 () Bool)

(assert (=> b!2575044 (= c!414750 (is-Star!7642 (regOne!15796 r!27340)))))

(declare-fun bm!166551 () Bool)

(declare-fun call!166557 () Regex!7642)

(assert (=> bm!166551 (= call!166557 (derivativeStep!2211 (ite c!414749 (regOne!15797 (regOne!15796 r!27340)) (ite c!414750 (reg!7971 (regOne!15796 r!27340)) (regOne!15796 (regOne!15796 r!27340)))) c!14016))))

(declare-fun b!2575045 () Bool)

(declare-fun e!1624784 () Regex!7642)

(declare-fun e!1624788 () Regex!7642)

(assert (=> b!2575045 (= e!1624784 e!1624788)))

(declare-fun c!414748 () Bool)

(assert (=> b!2575045 (= c!414748 (is-ElementMatch!7642 (regOne!15796 r!27340)))))

(declare-fun b!2575046 () Bool)

(assert (=> b!2575046 (= e!1624788 (ite (= c!14016 (c!414634 (regOne!15796 r!27340))) EmptyExpr!7642 EmptyLang!7642))))

(declare-fun bm!166552 () Bool)

(declare-fun call!166555 () Regex!7642)

(declare-fun call!166556 () Regex!7642)

(assert (=> bm!166552 (= call!166555 call!166556)))

(declare-fun d!728385 () Bool)

(declare-fun lt!906521 () Regex!7642)

(assert (=> d!728385 (validRegex!3268 lt!906521)))

(assert (=> d!728385 (= lt!906521 e!1624784)))

(declare-fun c!414752 () Bool)

(assert (=> d!728385 (= c!414752 (or (is-EmptyExpr!7642 (regOne!15796 r!27340)) (is-EmptyLang!7642 (regOne!15796 r!27340))))))

(assert (=> d!728385 (validRegex!3268 (regOne!15796 r!27340))))

(assert (=> d!728385 (= (derivativeStep!2211 (regOne!15796 r!27340) c!14016) lt!906521)))

(declare-fun bm!166553 () Bool)

(assert (=> bm!166553 (= call!166556 call!166557)))

(declare-fun b!2575047 () Bool)

(assert (=> b!2575047 (= c!414749 (is-Union!7642 (regOne!15796 r!27340)))))

(assert (=> b!2575047 (= e!1624788 e!1624786)))

(declare-fun b!2575048 () Bool)

(declare-fun e!1624785 () Regex!7642)

(assert (=> b!2575048 (= e!1624785 (Union!7642 (Concat!12338 call!166555 (regTwo!15796 (regOne!15796 r!27340))) call!166558))))

(declare-fun b!2575049 () Bool)

(assert (=> b!2575049 (= e!1624786 (Union!7642 call!166557 call!166558))))

(declare-fun b!2575050 () Bool)

(assert (=> b!2575050 (= e!1624785 (Union!7642 (Concat!12338 call!166555 (regTwo!15796 (regOne!15796 r!27340))) EmptyLang!7642))))

(declare-fun b!2575051 () Bool)

(declare-fun c!414751 () Bool)

(assert (=> b!2575051 (= c!414751 (nullable!2559 (regOne!15796 (regOne!15796 r!27340))))))

(assert (=> b!2575051 (= e!1624787 e!1624785)))

(declare-fun b!2575052 () Bool)

(assert (=> b!2575052 (= e!1624787 (Concat!12338 call!166556 (regOne!15796 r!27340)))))

(declare-fun b!2575053 () Bool)

(assert (=> b!2575053 (= e!1624784 EmptyLang!7642)))

(assert (= (and d!728385 c!414752) b!2575053))

(assert (= (and d!728385 (not c!414752)) b!2575045))

(assert (= (and b!2575045 c!414748) b!2575046))

(assert (= (and b!2575045 (not c!414748)) b!2575047))

(assert (= (and b!2575047 c!414749) b!2575049))

(assert (= (and b!2575047 (not c!414749)) b!2575044))

(assert (= (and b!2575044 c!414750) b!2575052))

(assert (= (and b!2575044 (not c!414750)) b!2575051))

(assert (= (and b!2575051 c!414751) b!2575048))

(assert (= (and b!2575051 (not c!414751)) b!2575050))

(assert (= (or b!2575048 b!2575050) bm!166552))

(assert (= (or b!2575052 bm!166552) bm!166553))

(assert (= (or b!2575049 b!2575048) bm!166550))

(assert (= (or b!2575049 bm!166553) bm!166551))

(declare-fun m!2910319 () Bool)

(assert (=> bm!166550 m!2910319))

(declare-fun m!2910321 () Bool)

(assert (=> bm!166551 m!2910321))

(declare-fun m!2910323 () Bool)

(assert (=> d!728385 m!2910323))

(assert (=> d!728385 m!2909909))

(assert (=> b!2575051 m!2910147))

(assert (=> b!2574589 d!728385))

(declare-fun d!728387 () Bool)

(declare-fun e!1624803 () Bool)

(assert (=> d!728387 e!1624803))

(declare-fun res!1083147 () Bool)

(assert (=> d!728387 (=> res!1083147 e!1624803)))

(assert (=> d!728387 (= res!1083147 (matchR!3585 lt!906404 tl!4068))))

(declare-fun lt!906524 () Unit!43465)

(declare-fun choose!15185 (Regex!7642 Regex!7642 List!29707) Unit!43465)

(assert (=> d!728387 (= lt!906524 (choose!15185 lt!906404 EmptyLang!7642 tl!4068))))

(declare-fun e!1624804 () Bool)

(assert (=> d!728387 e!1624804))

(declare-fun res!1083146 () Bool)

(assert (=> d!728387 (=> (not res!1083146) (not e!1624804))))

(assert (=> d!728387 (= res!1083146 (validRegex!3268 lt!906404))))

(assert (=> d!728387 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!231 lt!906404 EmptyLang!7642 tl!4068) lt!906524)))

(declare-fun b!2575078 () Bool)

(assert (=> b!2575078 (= e!1624804 (validRegex!3268 EmptyLang!7642))))

(declare-fun b!2575079 () Bool)

(assert (=> b!2575079 (= e!1624803 (matchR!3585 EmptyLang!7642 tl!4068))))

(assert (= (and d!728387 res!1083146) b!2575078))

(assert (= (and d!728387 (not res!1083147)) b!2575079))

(assert (=> d!728387 m!2909933))

(declare-fun m!2910325 () Bool)

(assert (=> d!728387 m!2910325))

(declare-fun m!2910327 () Bool)

(assert (=> d!728387 m!2910327))

(assert (=> b!2575078 m!2910273))

(assert (=> b!2575079 m!2909957))

(assert (=> b!2574589 d!728387))

(declare-fun d!728389 () Bool)

(declare-fun lt!906525 () Regex!7642)

(assert (=> d!728389 (validRegex!3268 lt!906525)))

(declare-fun e!1624805 () Regex!7642)

(assert (=> d!728389 (= lt!906525 e!1624805)))

(declare-fun c!414763 () Bool)

(assert (=> d!728389 (= c!414763 (is-Cons!29607 tl!4068))))

(assert (=> d!728389 (validRegex!3268 EmptyLang!7642)))

(assert (=> d!728389 (= (derivative!337 EmptyLang!7642 tl!4068) lt!906525)))

(declare-fun b!2575080 () Bool)

(assert (=> b!2575080 (= e!1624805 (derivative!337 (derivativeStep!2211 EmptyLang!7642 (h!35027 tl!4068)) (t!211406 tl!4068)))))

(declare-fun b!2575081 () Bool)

(assert (=> b!2575081 (= e!1624805 EmptyLang!7642)))

(assert (= (and d!728389 c!414763) b!2575080))

(assert (= (and d!728389 (not c!414763)) b!2575081))

(declare-fun m!2910329 () Bool)

(assert (=> d!728389 m!2910329))

(assert (=> d!728389 m!2910273))

(declare-fun m!2910331 () Bool)

(assert (=> b!2575080 m!2910331))

(assert (=> b!2575080 m!2910331))

(declare-fun m!2910333 () Bool)

(assert (=> b!2575080 m!2910333))

(assert (=> b!2574589 d!728389))

(declare-fun d!728391 () Bool)

(declare-fun lt!906526 () Regex!7642)

(assert (=> d!728391 (validRegex!3268 lt!906526)))

(declare-fun e!1624806 () Regex!7642)

(assert (=> d!728391 (= lt!906526 e!1624806)))

(declare-fun c!414764 () Bool)

(assert (=> d!728391 (= c!414764 (is-Cons!29607 tl!4068))))

(assert (=> d!728391 (validRegex!3268 lt!906410)))

(assert (=> d!728391 (= (derivative!337 lt!906410 tl!4068) lt!906526)))

(declare-fun b!2575082 () Bool)

(assert (=> b!2575082 (= e!1624806 (derivative!337 (derivativeStep!2211 lt!906410 (h!35027 tl!4068)) (t!211406 tl!4068)))))

(declare-fun b!2575083 () Bool)

(assert (=> b!2575083 (= e!1624806 lt!906410)))

(assert (= (and d!728391 c!414764) b!2575082))

(assert (= (and d!728391 (not c!414764)) b!2575083))

(declare-fun m!2910335 () Bool)

(assert (=> d!728391 m!2910335))

(declare-fun m!2910337 () Bool)

(assert (=> d!728391 m!2910337))

(declare-fun m!2910339 () Bool)

(assert (=> b!2575082 m!2910339))

(assert (=> b!2575082 m!2910339))

(declare-fun m!2910341 () Bool)

(assert (=> b!2575082 m!2910341))

(assert (=> b!2574589 d!728391))

(declare-fun b!2575085 () Bool)

(declare-fun res!1083151 () Bool)

(declare-fun e!1624810 () Bool)

(assert (=> b!2575085 (=> res!1083151 e!1624810)))

(assert (=> b!2575085 (= res!1083151 (not (isEmpty!17071 (tail!4122 tl!4068))))))

(declare-fun b!2575086 () Bool)

(declare-fun res!1083148 () Bool)

(declare-fun e!1624811 () Bool)

(assert (=> b!2575086 (=> res!1083148 e!1624811)))

(assert (=> b!2575086 (= res!1083148 (not (is-ElementMatch!7642 lt!906410)))))

(declare-fun e!1624812 () Bool)

(assert (=> b!2575086 (= e!1624812 e!1624811)))

(declare-fun b!2575087 () Bool)

(declare-fun e!1624808 () Bool)

(declare-fun lt!906527 () Bool)

(declare-fun call!166569 () Bool)

(assert (=> b!2575087 (= e!1624808 (= lt!906527 call!166569))))

(declare-fun b!2575088 () Bool)

(declare-fun e!1624813 () Bool)

(assert (=> b!2575088 (= e!1624813 e!1624810)))

(declare-fun res!1083153 () Bool)

(assert (=> b!2575088 (=> res!1083153 e!1624810)))

(assert (=> b!2575088 (= res!1083153 call!166569)))

(declare-fun b!2575089 () Bool)

(assert (=> b!2575089 (= e!1624810 (not (= (head!5847 tl!4068) (c!414634 lt!906410))))))

(declare-fun b!2575090 () Bool)

(declare-fun e!1624809 () Bool)

(assert (=> b!2575090 (= e!1624809 (= (head!5847 tl!4068) (c!414634 lt!906410)))))

(declare-fun bm!166564 () Bool)

(assert (=> bm!166564 (= call!166569 (isEmpty!17071 tl!4068))))

(declare-fun b!2575091 () Bool)

(declare-fun res!1083154 () Bool)

(assert (=> b!2575091 (=> (not res!1083154) (not e!1624809))))

(assert (=> b!2575091 (= res!1083154 (isEmpty!17071 (tail!4122 tl!4068)))))

(declare-fun b!2575092 () Bool)

(declare-fun e!1624807 () Bool)

(assert (=> b!2575092 (= e!1624807 (matchR!3585 (derivativeStep!2211 lt!906410 (head!5847 tl!4068)) (tail!4122 tl!4068)))))

(declare-fun b!2575093 () Bool)

(declare-fun res!1083152 () Bool)

(assert (=> b!2575093 (=> res!1083152 e!1624811)))

(assert (=> b!2575093 (= res!1083152 e!1624809)))

(declare-fun res!1083150 () Bool)

(assert (=> b!2575093 (=> (not res!1083150) (not e!1624809))))

(assert (=> b!2575093 (= res!1083150 lt!906527)))

(declare-fun b!2575094 () Bool)

(assert (=> b!2575094 (= e!1624811 e!1624813)))

(declare-fun res!1083149 () Bool)

(assert (=> b!2575094 (=> (not res!1083149) (not e!1624813))))

(assert (=> b!2575094 (= res!1083149 (not lt!906527))))

(declare-fun b!2575095 () Bool)

(declare-fun res!1083155 () Bool)

(assert (=> b!2575095 (=> (not res!1083155) (not e!1624809))))

(assert (=> b!2575095 (= res!1083155 (not call!166569))))

(declare-fun d!728393 () Bool)

(assert (=> d!728393 e!1624808))

(declare-fun c!414767 () Bool)

(assert (=> d!728393 (= c!414767 (is-EmptyExpr!7642 lt!906410))))

(assert (=> d!728393 (= lt!906527 e!1624807)))

(declare-fun c!414766 () Bool)

(assert (=> d!728393 (= c!414766 (isEmpty!17071 tl!4068))))

(assert (=> d!728393 (validRegex!3268 lt!906410)))

(assert (=> d!728393 (= (matchR!3585 lt!906410 tl!4068) lt!906527)))

(declare-fun b!2575084 () Bool)

(assert (=> b!2575084 (= e!1624807 (nullable!2559 lt!906410))))

(declare-fun b!2575096 () Bool)

(assert (=> b!2575096 (= e!1624812 (not lt!906527))))

(declare-fun b!2575097 () Bool)

(assert (=> b!2575097 (= e!1624808 e!1624812)))

(declare-fun c!414765 () Bool)

(assert (=> b!2575097 (= c!414765 (is-EmptyLang!7642 lt!906410))))

(assert (= (and d!728393 c!414766) b!2575084))

(assert (= (and d!728393 (not c!414766)) b!2575092))

(assert (= (and d!728393 c!414767) b!2575087))

(assert (= (and d!728393 (not c!414767)) b!2575097))

(assert (= (and b!2575097 c!414765) b!2575096))

(assert (= (and b!2575097 (not c!414765)) b!2575086))

(assert (= (and b!2575086 (not res!1083148)) b!2575093))

(assert (= (and b!2575093 res!1083150) b!2575095))

(assert (= (and b!2575095 res!1083155) b!2575091))

(assert (= (and b!2575091 res!1083154) b!2575090))

(assert (= (and b!2575093 (not res!1083152)) b!2575094))

(assert (= (and b!2575094 res!1083149) b!2575088))

(assert (= (and b!2575088 (not res!1083153)) b!2575085))

(assert (= (and b!2575085 (not res!1083151)) b!2575089))

(assert (= (or b!2575087 b!2575088 b!2575095) bm!166564))

(assert (=> b!2575085 m!2910265))

(assert (=> b!2575085 m!2910265))

(assert (=> b!2575085 m!2910269))

(assert (=> d!728393 m!2910271))

(assert (=> d!728393 m!2910337))

(declare-fun m!2910343 () Bool)

(assert (=> b!2575084 m!2910343))

(assert (=> b!2575091 m!2910265))

(assert (=> b!2575091 m!2910265))

(assert (=> b!2575091 m!2910269))

(assert (=> bm!166564 m!2910271))

(assert (=> b!2575092 m!2910277))

(assert (=> b!2575092 m!2910277))

(declare-fun m!2910345 () Bool)

(assert (=> b!2575092 m!2910345))

(assert (=> b!2575092 m!2910265))

(assert (=> b!2575092 m!2910345))

(assert (=> b!2575092 m!2910265))

(declare-fun m!2910347 () Bool)

(assert (=> b!2575092 m!2910347))

(assert (=> b!2575090 m!2910277))

(assert (=> b!2575089 m!2910277))

(assert (=> b!2574589 d!728393))

(declare-fun d!728395 () Bool)

(assert (=> d!728395 (= (derivative!337 EmptyLang!7642 tl!4068) EmptyLang!7642)))

(declare-fun lt!906530 () Unit!43465)

(declare-fun choose!15186 (Regex!7642 List!29707) Unit!43465)

(assert (=> d!728395 (= lt!906530 (choose!15186 EmptyLang!7642 tl!4068))))

(assert (=> d!728395 (= EmptyLang!7642 EmptyLang!7642)))

(assert (=> d!728395 (= (lemmaEmptyLangDerivativeIsAFixPoint!71 EmptyLang!7642 tl!4068) lt!906530)))

(declare-fun bs!470127 () Bool)

(assert (= bs!470127 d!728395))

(assert (=> bs!470127 m!2909935))

(declare-fun m!2910349 () Bool)

(assert (=> bs!470127 m!2910349))

(assert (=> b!2574589 d!728395))

(declare-fun b!2575099 () Bool)

(declare-fun res!1083159 () Bool)

(declare-fun e!1624817 () Bool)

(assert (=> b!2575099 (=> res!1083159 e!1624817)))

(assert (=> b!2575099 (= res!1083159 (not (isEmpty!17071 (tail!4122 Nil!29607))))))

(declare-fun b!2575100 () Bool)

(declare-fun res!1083156 () Bool)

(declare-fun e!1624818 () Bool)

(assert (=> b!2575100 (=> res!1083156 e!1624818)))

(assert (=> b!2575100 (= res!1083156 (not (is-ElementMatch!7642 (derivative!337 lt!906410 tl!4068))))))

(declare-fun e!1624819 () Bool)

(assert (=> b!2575100 (= e!1624819 e!1624818)))

(declare-fun b!2575101 () Bool)

(declare-fun e!1624815 () Bool)

(declare-fun lt!906531 () Bool)

(declare-fun call!166570 () Bool)

(assert (=> b!2575101 (= e!1624815 (= lt!906531 call!166570))))

(declare-fun b!2575102 () Bool)

(declare-fun e!1624820 () Bool)

(assert (=> b!2575102 (= e!1624820 e!1624817)))

(declare-fun res!1083161 () Bool)

(assert (=> b!2575102 (=> res!1083161 e!1624817)))

(assert (=> b!2575102 (= res!1083161 call!166570)))

(declare-fun b!2575103 () Bool)

(assert (=> b!2575103 (= e!1624817 (not (= (head!5847 Nil!29607) (c!414634 (derivative!337 lt!906410 tl!4068)))))))

(declare-fun b!2575104 () Bool)

(declare-fun e!1624816 () Bool)

(assert (=> b!2575104 (= e!1624816 (= (head!5847 Nil!29607) (c!414634 (derivative!337 lt!906410 tl!4068))))))

(declare-fun bm!166565 () Bool)

(assert (=> bm!166565 (= call!166570 (isEmpty!17071 Nil!29607))))

(declare-fun b!2575105 () Bool)

(declare-fun res!1083162 () Bool)

(assert (=> b!2575105 (=> (not res!1083162) (not e!1624816))))

(assert (=> b!2575105 (= res!1083162 (isEmpty!17071 (tail!4122 Nil!29607)))))

(declare-fun b!2575106 () Bool)

(declare-fun e!1624814 () Bool)

(assert (=> b!2575106 (= e!1624814 (matchR!3585 (derivativeStep!2211 (derivative!337 lt!906410 tl!4068) (head!5847 Nil!29607)) (tail!4122 Nil!29607)))))

(declare-fun b!2575107 () Bool)

(declare-fun res!1083160 () Bool)

(assert (=> b!2575107 (=> res!1083160 e!1624818)))

(assert (=> b!2575107 (= res!1083160 e!1624816)))

(declare-fun res!1083158 () Bool)

(assert (=> b!2575107 (=> (not res!1083158) (not e!1624816))))

(assert (=> b!2575107 (= res!1083158 lt!906531)))

(declare-fun b!2575108 () Bool)

(assert (=> b!2575108 (= e!1624818 e!1624820)))

(declare-fun res!1083157 () Bool)

(assert (=> b!2575108 (=> (not res!1083157) (not e!1624820))))

(assert (=> b!2575108 (= res!1083157 (not lt!906531))))

(declare-fun b!2575109 () Bool)

(declare-fun res!1083163 () Bool)

(assert (=> b!2575109 (=> (not res!1083163) (not e!1624816))))

(assert (=> b!2575109 (= res!1083163 (not call!166570))))

(declare-fun d!728397 () Bool)

(assert (=> d!728397 e!1624815))

(declare-fun c!414770 () Bool)

(assert (=> d!728397 (= c!414770 (is-EmptyExpr!7642 (derivative!337 lt!906410 tl!4068)))))

(assert (=> d!728397 (= lt!906531 e!1624814)))

(declare-fun c!414769 () Bool)

(assert (=> d!728397 (= c!414769 (isEmpty!17071 Nil!29607))))

(assert (=> d!728397 (validRegex!3268 (derivative!337 lt!906410 tl!4068))))

(assert (=> d!728397 (= (matchR!3585 (derivative!337 lt!906410 tl!4068) Nil!29607) lt!906531)))

(declare-fun b!2575098 () Bool)

(assert (=> b!2575098 (= e!1624814 (nullable!2559 (derivative!337 lt!906410 tl!4068)))))

(declare-fun b!2575110 () Bool)

(assert (=> b!2575110 (= e!1624819 (not lt!906531))))

(declare-fun b!2575111 () Bool)

(assert (=> b!2575111 (= e!1624815 e!1624819)))

(declare-fun c!414768 () Bool)

(assert (=> b!2575111 (= c!414768 (is-EmptyLang!7642 (derivative!337 lt!906410 tl!4068)))))

(assert (= (and d!728397 c!414769) b!2575098))

(assert (= (and d!728397 (not c!414769)) b!2575106))

(assert (= (and d!728397 c!414770) b!2575101))

(assert (= (and d!728397 (not c!414770)) b!2575111))

(assert (= (and b!2575111 c!414768) b!2575110))

(assert (= (and b!2575111 (not c!414768)) b!2575100))

(assert (= (and b!2575100 (not res!1083156)) b!2575107))

(assert (= (and b!2575107 res!1083158) b!2575109))

(assert (= (and b!2575109 res!1083163) b!2575105))

(assert (= (and b!2575105 res!1083162) b!2575104))

(assert (= (and b!2575107 (not res!1083160)) b!2575108))

(assert (= (and b!2575108 res!1083157) b!2575102))

(assert (= (and b!2575102 (not res!1083161)) b!2575099))

(assert (= (and b!2575099 (not res!1083159)) b!2575103))

(assert (= (or b!2575101 b!2575102 b!2575109) bm!166565))

(assert (=> b!2575099 m!2910191))

(assert (=> b!2575099 m!2910191))

(assert (=> b!2575099 m!2910193))

(assert (=> d!728397 m!2910195))

(assert (=> d!728397 m!2909927))

(declare-fun m!2910351 () Bool)

(assert (=> d!728397 m!2910351))

(assert (=> b!2575098 m!2909927))

(declare-fun m!2910353 () Bool)

(assert (=> b!2575098 m!2910353))

(assert (=> b!2575105 m!2910191))

(assert (=> b!2575105 m!2910191))

(assert (=> b!2575105 m!2910193))

(assert (=> bm!166565 m!2910195))

(assert (=> b!2575106 m!2910199))

(assert (=> b!2575106 m!2909927))

(assert (=> b!2575106 m!2910199))

(declare-fun m!2910355 () Bool)

(assert (=> b!2575106 m!2910355))

(assert (=> b!2575106 m!2910191))

(assert (=> b!2575106 m!2910355))

(assert (=> b!2575106 m!2910191))

(declare-fun m!2910357 () Bool)

(assert (=> b!2575106 m!2910357))

(assert (=> b!2575104 m!2910199))

(assert (=> b!2575103 m!2910199))

(assert (=> b!2574589 d!728397))

(declare-fun d!728399 () Bool)

(assert (=> d!728399 (= (matchR!3585 lt!906410 tl!4068) (matchR!3585 (derivative!337 lt!906410 tl!4068) Nil!29607))))

(declare-fun lt!906532 () Unit!43465)

(assert (=> d!728399 (= lt!906532 (choose!15184 lt!906410 tl!4068))))

(assert (=> d!728399 (validRegex!3268 lt!906410)))

(assert (=> d!728399 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!231 lt!906410 tl!4068) lt!906532)))

(declare-fun bs!470128 () Bool)

(assert (= bs!470128 d!728399))

(assert (=> bs!470128 m!2909939))

(assert (=> bs!470128 m!2909927))

(assert (=> bs!470128 m!2909929))

(declare-fun m!2910359 () Bool)

(assert (=> bs!470128 m!2910359))

(assert (=> bs!470128 m!2909927))

(assert (=> bs!470128 m!2910337))

(assert (=> b!2574589 d!728399))

(declare-fun b!2575113 () Bool)

(declare-fun res!1083167 () Bool)

(declare-fun e!1624824 () Bool)

(assert (=> b!2575113 (=> res!1083167 e!1624824)))

(assert (=> b!2575113 (= res!1083167 (not (isEmpty!17071 (tail!4122 tl!4068))))))

(declare-fun b!2575114 () Bool)

(declare-fun res!1083164 () Bool)

(declare-fun e!1624825 () Bool)

(assert (=> b!2575114 (=> res!1083164 e!1624825)))

(assert (=> b!2575114 (= res!1083164 (not (is-ElementMatch!7642 lt!906404)))))

(declare-fun e!1624826 () Bool)

(assert (=> b!2575114 (= e!1624826 e!1624825)))

(declare-fun b!2575115 () Bool)

(declare-fun e!1624822 () Bool)

(declare-fun lt!906533 () Bool)

(declare-fun call!166571 () Bool)

(assert (=> b!2575115 (= e!1624822 (= lt!906533 call!166571))))

(declare-fun b!2575116 () Bool)

(declare-fun e!1624827 () Bool)

(assert (=> b!2575116 (= e!1624827 e!1624824)))

(declare-fun res!1083169 () Bool)

(assert (=> b!2575116 (=> res!1083169 e!1624824)))

(assert (=> b!2575116 (= res!1083169 call!166571)))

(declare-fun b!2575117 () Bool)

(assert (=> b!2575117 (= e!1624824 (not (= (head!5847 tl!4068) (c!414634 lt!906404))))))

(declare-fun b!2575118 () Bool)

(declare-fun e!1624823 () Bool)

(assert (=> b!2575118 (= e!1624823 (= (head!5847 tl!4068) (c!414634 lt!906404)))))

(declare-fun bm!166566 () Bool)

(assert (=> bm!166566 (= call!166571 (isEmpty!17071 tl!4068))))

(declare-fun b!2575119 () Bool)

(declare-fun res!1083170 () Bool)

(assert (=> b!2575119 (=> (not res!1083170) (not e!1624823))))

(assert (=> b!2575119 (= res!1083170 (isEmpty!17071 (tail!4122 tl!4068)))))

(declare-fun b!2575120 () Bool)

(declare-fun e!1624821 () Bool)

(assert (=> b!2575120 (= e!1624821 (matchR!3585 (derivativeStep!2211 lt!906404 (head!5847 tl!4068)) (tail!4122 tl!4068)))))

(declare-fun b!2575121 () Bool)

(declare-fun res!1083168 () Bool)

(assert (=> b!2575121 (=> res!1083168 e!1624825)))

(assert (=> b!2575121 (= res!1083168 e!1624823)))

(declare-fun res!1083166 () Bool)

(assert (=> b!2575121 (=> (not res!1083166) (not e!1624823))))

(assert (=> b!2575121 (= res!1083166 lt!906533)))

(declare-fun b!2575122 () Bool)

(assert (=> b!2575122 (= e!1624825 e!1624827)))

(declare-fun res!1083165 () Bool)

(assert (=> b!2575122 (=> (not res!1083165) (not e!1624827))))

(assert (=> b!2575122 (= res!1083165 (not lt!906533))))

(declare-fun b!2575123 () Bool)

(declare-fun res!1083171 () Bool)

(assert (=> b!2575123 (=> (not res!1083171) (not e!1624823))))

(assert (=> b!2575123 (= res!1083171 (not call!166571))))

(declare-fun d!728401 () Bool)

(assert (=> d!728401 e!1624822))

(declare-fun c!414773 () Bool)

(assert (=> d!728401 (= c!414773 (is-EmptyExpr!7642 lt!906404))))

(assert (=> d!728401 (= lt!906533 e!1624821)))

(declare-fun c!414772 () Bool)

(assert (=> d!728401 (= c!414772 (isEmpty!17071 tl!4068))))

(assert (=> d!728401 (validRegex!3268 lt!906404)))

(assert (=> d!728401 (= (matchR!3585 lt!906404 tl!4068) lt!906533)))

(declare-fun b!2575112 () Bool)

(assert (=> b!2575112 (= e!1624821 (nullable!2559 lt!906404))))

(declare-fun b!2575124 () Bool)

(assert (=> b!2575124 (= e!1624826 (not lt!906533))))

(declare-fun b!2575125 () Bool)

(assert (=> b!2575125 (= e!1624822 e!1624826)))

(declare-fun c!414771 () Bool)

(assert (=> b!2575125 (= c!414771 (is-EmptyLang!7642 lt!906404))))

(assert (= (and d!728401 c!414772) b!2575112))

(assert (= (and d!728401 (not c!414772)) b!2575120))

(assert (= (and d!728401 c!414773) b!2575115))

(assert (= (and d!728401 (not c!414773)) b!2575125))

(assert (= (and b!2575125 c!414771) b!2575124))

(assert (= (and b!2575125 (not c!414771)) b!2575114))

(assert (= (and b!2575114 (not res!1083164)) b!2575121))

(assert (= (and b!2575121 res!1083166) b!2575123))

(assert (= (and b!2575123 res!1083171) b!2575119))

(assert (= (and b!2575119 res!1083170) b!2575118))

(assert (= (and b!2575121 (not res!1083168)) b!2575122))

(assert (= (and b!2575122 res!1083165) b!2575116))

(assert (= (and b!2575116 (not res!1083169)) b!2575113))

(assert (= (and b!2575113 (not res!1083167)) b!2575117))

(assert (= (or b!2575115 b!2575116 b!2575123) bm!166566))

(assert (=> b!2575113 m!2910265))

(assert (=> b!2575113 m!2910265))

(assert (=> b!2575113 m!2910269))

(assert (=> d!728401 m!2910271))

(assert (=> d!728401 m!2910327))

(declare-fun m!2910361 () Bool)

(assert (=> b!2575112 m!2910361))

(assert (=> b!2575119 m!2910265))

(assert (=> b!2575119 m!2910265))

(assert (=> b!2575119 m!2910269))

(assert (=> bm!166566 m!2910271))

(assert (=> b!2575120 m!2910277))

(assert (=> b!2575120 m!2910277))

(declare-fun m!2910363 () Bool)

(assert (=> b!2575120 m!2910363))

(assert (=> b!2575120 m!2910265))

(assert (=> b!2575120 m!2910363))

(assert (=> b!2575120 m!2910265))

(declare-fun m!2910365 () Bool)

(assert (=> b!2575120 m!2910365))

(assert (=> b!2575118 m!2910277))

(assert (=> b!2575117 m!2910277))

(assert (=> b!2574589 d!728401))

(declare-fun b!2575137 () Bool)

(declare-fun res!1083175 () Bool)

(declare-fun e!1624836 () Bool)

(assert (=> b!2575137 (=> res!1083175 e!1624836)))

(assert (=> b!2575137 (= res!1083175 (not (isEmpty!17071 (tail!4122 (_1!17345 lt!906405)))))))

(declare-fun b!2575138 () Bool)

(declare-fun res!1083172 () Bool)

(declare-fun e!1624837 () Bool)

(assert (=> b!2575138 (=> res!1083172 e!1624837)))

(assert (=> b!2575138 (= res!1083172 (not (is-ElementMatch!7642 lt!906401)))))

(declare-fun e!1624838 () Bool)

(assert (=> b!2575138 (= e!1624838 e!1624837)))

(declare-fun b!2575139 () Bool)

(declare-fun e!1624834 () Bool)

(declare-fun lt!906534 () Bool)

(declare-fun call!166577 () Bool)

(assert (=> b!2575139 (= e!1624834 (= lt!906534 call!166577))))

(declare-fun b!2575140 () Bool)

(declare-fun e!1624839 () Bool)

(assert (=> b!2575140 (= e!1624839 e!1624836)))

(declare-fun res!1083177 () Bool)

(assert (=> b!2575140 (=> res!1083177 e!1624836)))

(assert (=> b!2575140 (= res!1083177 call!166577)))

(declare-fun b!2575141 () Bool)

(assert (=> b!2575141 (= e!1624836 (not (= (head!5847 (_1!17345 lt!906405)) (c!414634 lt!906401))))))

(declare-fun b!2575142 () Bool)

(declare-fun e!1624835 () Bool)

(assert (=> b!2575142 (= e!1624835 (= (head!5847 (_1!17345 lt!906405)) (c!414634 lt!906401)))))

(declare-fun bm!166572 () Bool)

(assert (=> bm!166572 (= call!166577 (isEmpty!17071 (_1!17345 lt!906405)))))

(declare-fun b!2575143 () Bool)

(declare-fun res!1083178 () Bool)

(assert (=> b!2575143 (=> (not res!1083178) (not e!1624835))))

(assert (=> b!2575143 (= res!1083178 (isEmpty!17071 (tail!4122 (_1!17345 lt!906405))))))

(declare-fun b!2575144 () Bool)

(declare-fun e!1624833 () Bool)

(assert (=> b!2575144 (= e!1624833 (matchR!3585 (derivativeStep!2211 lt!906401 (head!5847 (_1!17345 lt!906405))) (tail!4122 (_1!17345 lt!906405))))))

(declare-fun b!2575145 () Bool)

(declare-fun res!1083176 () Bool)

(assert (=> b!2575145 (=> res!1083176 e!1624837)))

(assert (=> b!2575145 (= res!1083176 e!1624835)))

(declare-fun res!1083174 () Bool)

(assert (=> b!2575145 (=> (not res!1083174) (not e!1624835))))

(assert (=> b!2575145 (= res!1083174 lt!906534)))

(declare-fun b!2575146 () Bool)

(assert (=> b!2575146 (= e!1624837 e!1624839)))

(declare-fun res!1083173 () Bool)

(assert (=> b!2575146 (=> (not res!1083173) (not e!1624839))))

(assert (=> b!2575146 (= res!1083173 (not lt!906534))))

(declare-fun b!2575147 () Bool)

(declare-fun res!1083179 () Bool)

(assert (=> b!2575147 (=> (not res!1083179) (not e!1624835))))

(assert (=> b!2575147 (= res!1083179 (not call!166577))))

(declare-fun d!728403 () Bool)

(assert (=> d!728403 e!1624834))

(declare-fun c!414781 () Bool)

(assert (=> d!728403 (= c!414781 (is-EmptyExpr!7642 lt!906401))))

(assert (=> d!728403 (= lt!906534 e!1624833)))

(declare-fun c!414780 () Bool)

(assert (=> d!728403 (= c!414780 (isEmpty!17071 (_1!17345 lt!906405)))))

(assert (=> d!728403 (validRegex!3268 lt!906401)))

(assert (=> d!728403 (= (matchR!3585 lt!906401 (_1!17345 lt!906405)) lt!906534)))

(declare-fun b!2575136 () Bool)

(assert (=> b!2575136 (= e!1624833 (nullable!2559 lt!906401))))

(declare-fun b!2575148 () Bool)

(assert (=> b!2575148 (= e!1624838 (not lt!906534))))

(declare-fun b!2575149 () Bool)

(assert (=> b!2575149 (= e!1624834 e!1624838)))

(declare-fun c!414779 () Bool)

(assert (=> b!2575149 (= c!414779 (is-EmptyLang!7642 lt!906401))))

(assert (= (and d!728403 c!414780) b!2575136))

(assert (= (and d!728403 (not c!414780)) b!2575144))

(assert (= (and d!728403 c!414781) b!2575139))

(assert (= (and d!728403 (not c!414781)) b!2575149))

(assert (= (and b!2575149 c!414779) b!2575148))

(assert (= (and b!2575149 (not c!414779)) b!2575138))

(assert (= (and b!2575138 (not res!1083172)) b!2575145))

(assert (= (and b!2575145 res!1083174) b!2575147))

(assert (= (and b!2575147 res!1083179) b!2575143))

(assert (= (and b!2575143 res!1083178) b!2575142))

(assert (= (and b!2575145 (not res!1083176)) b!2575146))

(assert (= (and b!2575146 res!1083173) b!2575140))

(assert (= (and b!2575140 (not res!1083177)) b!2575137))

(assert (= (and b!2575137 (not res!1083175)) b!2575141))

(assert (= (or b!2575139 b!2575140 b!2575147) bm!166572))

(declare-fun m!2910367 () Bool)

(assert (=> b!2575137 m!2910367))

(assert (=> b!2575137 m!2910367))

(declare-fun m!2910369 () Bool)

(assert (=> b!2575137 m!2910369))

(declare-fun m!2910371 () Bool)

(assert (=> d!728403 m!2910371))

(assert (=> d!728403 m!2910105))

(declare-fun m!2910373 () Bool)

(assert (=> b!2575136 m!2910373))

(assert (=> b!2575143 m!2910367))

(assert (=> b!2575143 m!2910367))

(assert (=> b!2575143 m!2910369))

(assert (=> bm!166572 m!2910371))

(declare-fun m!2910375 () Bool)

(assert (=> b!2575144 m!2910375))

(assert (=> b!2575144 m!2910375))

(declare-fun m!2910377 () Bool)

(assert (=> b!2575144 m!2910377))

(assert (=> b!2575144 m!2910367))

(assert (=> b!2575144 m!2910377))

(assert (=> b!2575144 m!2910367))

(declare-fun m!2910379 () Bool)

(assert (=> b!2575144 m!2910379))

(assert (=> b!2575142 m!2910375))

(assert (=> b!2575141 m!2910375))

(assert (=> b!2574584 d!728403))

(declare-fun b!2575151 () Bool)

(declare-fun e!1624842 () Bool)

(declare-fun e!1624845 () Bool)

(assert (=> b!2575151 (= e!1624842 e!1624845)))

(declare-fun c!414782 () Bool)

(assert (=> b!2575151 (= c!414782 (is-Star!7642 r!27340))))

(declare-fun bm!166573 () Bool)

(declare-fun c!414783 () Bool)

(declare-fun call!166578 () Bool)

(assert (=> bm!166573 (= call!166578 (validRegex!3268 (ite c!414782 (reg!7971 r!27340) (ite c!414783 (regTwo!15797 r!27340) (regOne!15796 r!27340)))))))

(declare-fun b!2575152 () Bool)

(declare-fun e!1624843 () Bool)

(declare-fun call!166579 () Bool)

(assert (=> b!2575152 (= e!1624843 call!166579)))

(declare-fun b!2575153 () Bool)

(declare-fun e!1624846 () Bool)

(declare-fun e!1624844 () Bool)

(assert (=> b!2575153 (= e!1624846 e!1624844)))

(declare-fun res!1083184 () Bool)

(assert (=> b!2575153 (=> (not res!1083184) (not e!1624844))))

(assert (=> b!2575153 (= res!1083184 call!166579)))

(declare-fun b!2575154 () Bool)

(declare-fun res!1083180 () Bool)

(assert (=> b!2575154 (=> res!1083180 e!1624846)))

(assert (=> b!2575154 (= res!1083180 (not (is-Concat!12338 r!27340)))))

(declare-fun e!1624840 () Bool)

(assert (=> b!2575154 (= e!1624840 e!1624846)))

(declare-fun b!2575155 () Bool)

(declare-fun res!1083182 () Bool)

(assert (=> b!2575155 (=> (not res!1083182) (not e!1624843))))

(declare-fun call!166580 () Bool)

(assert (=> b!2575155 (= res!1083182 call!166580)))

(assert (=> b!2575155 (= e!1624840 e!1624843)))

(declare-fun b!2575150 () Bool)

(declare-fun e!1624841 () Bool)

(assert (=> b!2575150 (= e!1624845 e!1624841)))

(declare-fun res!1083183 () Bool)

(assert (=> b!2575150 (= res!1083183 (not (nullable!2559 (reg!7971 r!27340))))))

(assert (=> b!2575150 (=> (not res!1083183) (not e!1624841))))

(declare-fun d!728405 () Bool)

(declare-fun res!1083181 () Bool)

(assert (=> d!728405 (=> res!1083181 e!1624842)))

(assert (=> d!728405 (= res!1083181 (is-ElementMatch!7642 r!27340))))

(assert (=> d!728405 (= (validRegex!3268 r!27340) e!1624842)))

(declare-fun bm!166574 () Bool)

(assert (=> bm!166574 (= call!166580 (validRegex!3268 (ite c!414783 (regOne!15797 r!27340) (regTwo!15796 r!27340))))))

(declare-fun bm!166575 () Bool)

(assert (=> bm!166575 (= call!166579 call!166578)))

(declare-fun b!2575156 () Bool)

(assert (=> b!2575156 (= e!1624844 call!166580)))

(declare-fun b!2575157 () Bool)

(assert (=> b!2575157 (= e!1624845 e!1624840)))

(assert (=> b!2575157 (= c!414783 (is-Union!7642 r!27340))))

(declare-fun b!2575158 () Bool)

(assert (=> b!2575158 (= e!1624841 call!166578)))

(assert (= (and d!728405 (not res!1083181)) b!2575151))

(assert (= (and b!2575151 c!414782) b!2575150))

(assert (= (and b!2575151 (not c!414782)) b!2575157))

(assert (= (and b!2575150 res!1083183) b!2575158))

(assert (= (and b!2575157 c!414783) b!2575155))

(assert (= (and b!2575157 (not c!414783)) b!2575154))

(assert (= (and b!2575155 res!1083182) b!2575152))

(assert (= (and b!2575154 (not res!1083180)) b!2575153))

(assert (= (and b!2575153 res!1083184) b!2575156))

(assert (= (or b!2575155 b!2575156) bm!166574))

(assert (= (or b!2575152 b!2575153) bm!166575))

(assert (= (or b!2575158 bm!166575) bm!166573))

(declare-fun m!2910387 () Bool)

(assert (=> bm!166573 m!2910387))

(declare-fun m!2910389 () Bool)

(assert (=> b!2575150 m!2910389))

(declare-fun m!2910391 () Bool)

(assert (=> bm!166574 m!2910391))

(assert (=> start!248658 d!728405))

(declare-fun b!2575170 () Bool)

(declare-fun res!1083188 () Bool)

(declare-fun e!1624855 () Bool)

(assert (=> b!2575170 (=> res!1083188 e!1624855)))

(assert (=> b!2575170 (= res!1083188 (not (isEmpty!17071 (tail!4122 (_2!17345 lt!906405)))))))

(declare-fun b!2575171 () Bool)

(declare-fun res!1083185 () Bool)

(declare-fun e!1624856 () Bool)

(assert (=> b!2575171 (=> res!1083185 e!1624856)))

(assert (=> b!2575171 (= res!1083185 (not (is-ElementMatch!7642 (regTwo!15796 r!27340))))))

(declare-fun e!1624857 () Bool)

(assert (=> b!2575171 (= e!1624857 e!1624856)))

(declare-fun b!2575172 () Bool)

(declare-fun e!1624853 () Bool)

(declare-fun lt!906535 () Bool)

(declare-fun call!166586 () Bool)

(assert (=> b!2575172 (= e!1624853 (= lt!906535 call!166586))))

(declare-fun b!2575173 () Bool)

(declare-fun e!1624858 () Bool)

(assert (=> b!2575173 (= e!1624858 e!1624855)))

(declare-fun res!1083190 () Bool)

(assert (=> b!2575173 (=> res!1083190 e!1624855)))

(assert (=> b!2575173 (= res!1083190 call!166586)))

(declare-fun b!2575174 () Bool)

(assert (=> b!2575174 (= e!1624855 (not (= (head!5847 (_2!17345 lt!906405)) (c!414634 (regTwo!15796 r!27340)))))))

(declare-fun b!2575175 () Bool)

(declare-fun e!1624854 () Bool)

(assert (=> b!2575175 (= e!1624854 (= (head!5847 (_2!17345 lt!906405)) (c!414634 (regTwo!15796 r!27340))))))

(declare-fun bm!166581 () Bool)

(assert (=> bm!166581 (= call!166586 (isEmpty!17071 (_2!17345 lt!906405)))))

(declare-fun b!2575176 () Bool)

(declare-fun res!1083191 () Bool)

(assert (=> b!2575176 (=> (not res!1083191) (not e!1624854))))

(assert (=> b!2575176 (= res!1083191 (isEmpty!17071 (tail!4122 (_2!17345 lt!906405))))))

(declare-fun b!2575177 () Bool)

(declare-fun e!1624852 () Bool)

(assert (=> b!2575177 (= e!1624852 (matchR!3585 (derivativeStep!2211 (regTwo!15796 r!27340) (head!5847 (_2!17345 lt!906405))) (tail!4122 (_2!17345 lt!906405))))))

(declare-fun b!2575178 () Bool)

(declare-fun res!1083189 () Bool)

(assert (=> b!2575178 (=> res!1083189 e!1624856)))

(assert (=> b!2575178 (= res!1083189 e!1624854)))

(declare-fun res!1083187 () Bool)

(assert (=> b!2575178 (=> (not res!1083187) (not e!1624854))))

(assert (=> b!2575178 (= res!1083187 lt!906535)))

(declare-fun b!2575179 () Bool)

(assert (=> b!2575179 (= e!1624856 e!1624858)))

(declare-fun res!1083186 () Bool)

(assert (=> b!2575179 (=> (not res!1083186) (not e!1624858))))

(assert (=> b!2575179 (= res!1083186 (not lt!906535))))

(declare-fun b!2575180 () Bool)

(declare-fun res!1083192 () Bool)

(assert (=> b!2575180 (=> (not res!1083192) (not e!1624854))))

(assert (=> b!2575180 (= res!1083192 (not call!166586))))

(declare-fun d!728409 () Bool)

(assert (=> d!728409 e!1624853))

(declare-fun c!414791 () Bool)

(assert (=> d!728409 (= c!414791 (is-EmptyExpr!7642 (regTwo!15796 r!27340)))))

(assert (=> d!728409 (= lt!906535 e!1624852)))

(declare-fun c!414790 () Bool)

(assert (=> d!728409 (= c!414790 (isEmpty!17071 (_2!17345 lt!906405)))))

(assert (=> d!728409 (validRegex!3268 (regTwo!15796 r!27340))))

(assert (=> d!728409 (= (matchR!3585 (regTwo!15796 r!27340) (_2!17345 lt!906405)) lt!906535)))

(declare-fun b!2575169 () Bool)

(assert (=> b!2575169 (= e!1624852 (nullable!2559 (regTwo!15796 r!27340)))))

(declare-fun b!2575181 () Bool)

(assert (=> b!2575181 (= e!1624857 (not lt!906535))))

(declare-fun b!2575182 () Bool)

(assert (=> b!2575182 (= e!1624853 e!1624857)))

(declare-fun c!414789 () Bool)

(assert (=> b!2575182 (= c!414789 (is-EmptyLang!7642 (regTwo!15796 r!27340)))))

(assert (= (and d!728409 c!414790) b!2575169))

(assert (= (and d!728409 (not c!414790)) b!2575177))

(assert (= (and d!728409 c!414791) b!2575172))

(assert (= (and d!728409 (not c!414791)) b!2575182))

(assert (= (and b!2575182 c!414789) b!2575181))

(assert (= (and b!2575182 (not c!414789)) b!2575171))

(assert (= (and b!2575171 (not res!1083185)) b!2575178))

(assert (= (and b!2575178 res!1083187) b!2575180))

(assert (= (and b!2575180 res!1083192) b!2575176))

(assert (= (and b!2575176 res!1083191) b!2575175))

(assert (= (and b!2575178 (not res!1083189)) b!2575179))

(assert (= (and b!2575179 res!1083186) b!2575173))

(assert (= (and b!2575173 (not res!1083190)) b!2575170))

(assert (= (and b!2575170 (not res!1083188)) b!2575174))

(assert (= (or b!2575172 b!2575173 b!2575180) bm!166581))

(declare-fun m!2910395 () Bool)

(assert (=> b!2575170 m!2910395))

(assert (=> b!2575170 m!2910395))

(declare-fun m!2910399 () Bool)

(assert (=> b!2575170 m!2910399))

(declare-fun m!2910401 () Bool)

(assert (=> d!728409 m!2910401))

(declare-fun m!2910403 () Bool)

(assert (=> d!728409 m!2910403))

(declare-fun m!2910406 () Bool)

(assert (=> b!2575169 m!2910406))

(assert (=> b!2575176 m!2910395))

(assert (=> b!2575176 m!2910395))

(assert (=> b!2575176 m!2910399))

(assert (=> bm!166581 m!2910401))

(declare-fun m!2910409 () Bool)

(assert (=> b!2575177 m!2910409))

(assert (=> b!2575177 m!2910409))

(declare-fun m!2910413 () Bool)

(assert (=> b!2575177 m!2910413))

(assert (=> b!2575177 m!2910395))

(assert (=> b!2575177 m!2910413))

(assert (=> b!2575177 m!2910395))

(declare-fun m!2910415 () Bool)

(assert (=> b!2575177 m!2910415))

(assert (=> b!2575175 m!2910409))

(assert (=> b!2575174 m!2910409))

(assert (=> b!2574575 d!728409))

(declare-fun b!2575193 () Bool)

(declare-fun e!1624861 () Bool)

(assert (=> b!2575193 (= e!1624861 tp_is_empty!13139)))

(declare-fun b!2575194 () Bool)

(declare-fun tp!818622 () Bool)

(declare-fun tp!818623 () Bool)

(assert (=> b!2575194 (= e!1624861 (and tp!818622 tp!818623))))

(assert (=> b!2574585 (= tp!818587 e!1624861)))

(declare-fun b!2575195 () Bool)

(declare-fun tp!818625 () Bool)

(assert (=> b!2575195 (= e!1624861 tp!818625)))

(declare-fun b!2575196 () Bool)

(declare-fun tp!818621 () Bool)

(declare-fun tp!818624 () Bool)

(assert (=> b!2575196 (= e!1624861 (and tp!818621 tp!818624))))

(assert (= (and b!2574585 (is-ElementMatch!7642 (reg!7971 r!27340))) b!2575193))

(assert (= (and b!2574585 (is-Concat!12338 (reg!7971 r!27340))) b!2575194))

(assert (= (and b!2574585 (is-Star!7642 (reg!7971 r!27340))) b!2575195))

(assert (= (and b!2574585 (is-Union!7642 (reg!7971 r!27340))) b!2575196))

(declare-fun b!2575197 () Bool)

(declare-fun e!1624862 () Bool)

(assert (=> b!2575197 (= e!1624862 tp_is_empty!13139)))

(declare-fun b!2575198 () Bool)

(declare-fun tp!818627 () Bool)

(declare-fun tp!818628 () Bool)

(assert (=> b!2575198 (= e!1624862 (and tp!818627 tp!818628))))

(assert (=> b!2574580 (= tp!818588 e!1624862)))

(declare-fun b!2575199 () Bool)

(declare-fun tp!818630 () Bool)

(assert (=> b!2575199 (= e!1624862 tp!818630)))

(declare-fun b!2575200 () Bool)

(declare-fun tp!818626 () Bool)

(declare-fun tp!818629 () Bool)

(assert (=> b!2575200 (= e!1624862 (and tp!818626 tp!818629))))

(assert (= (and b!2574580 (is-ElementMatch!7642 (regOne!15797 r!27340))) b!2575197))

(assert (= (and b!2574580 (is-Concat!12338 (regOne!15797 r!27340))) b!2575198))

(assert (= (and b!2574580 (is-Star!7642 (regOne!15797 r!27340))) b!2575199))

(assert (= (and b!2574580 (is-Union!7642 (regOne!15797 r!27340))) b!2575200))

(declare-fun b!2575201 () Bool)

(declare-fun e!1624863 () Bool)

(assert (=> b!2575201 (= e!1624863 tp_is_empty!13139)))

(declare-fun b!2575202 () Bool)

(declare-fun tp!818632 () Bool)

(declare-fun tp!818633 () Bool)

(assert (=> b!2575202 (= e!1624863 (and tp!818632 tp!818633))))

(assert (=> b!2574580 (= tp!818590 e!1624863)))

(declare-fun b!2575203 () Bool)

(declare-fun tp!818635 () Bool)

(assert (=> b!2575203 (= e!1624863 tp!818635)))

(declare-fun b!2575204 () Bool)

(declare-fun tp!818631 () Bool)

(declare-fun tp!818634 () Bool)

(assert (=> b!2575204 (= e!1624863 (and tp!818631 tp!818634))))

(assert (= (and b!2574580 (is-ElementMatch!7642 (regTwo!15797 r!27340))) b!2575201))

(assert (= (and b!2574580 (is-Concat!12338 (regTwo!15797 r!27340))) b!2575202))

(assert (= (and b!2574580 (is-Star!7642 (regTwo!15797 r!27340))) b!2575203))

(assert (= (and b!2574580 (is-Union!7642 (regTwo!15797 r!27340))) b!2575204))

(declare-fun b!2575209 () Bool)

(declare-fun e!1624866 () Bool)

(declare-fun tp!818638 () Bool)

(assert (=> b!2575209 (= e!1624866 (and tp_is_empty!13139 tp!818638))))

(assert (=> b!2574586 (= tp!818589 e!1624866)))

(assert (= (and b!2574586 (is-Cons!29607 (t!211406 tl!4068))) b!2575209))

(declare-fun b!2575210 () Bool)

(declare-fun e!1624867 () Bool)

(assert (=> b!2575210 (= e!1624867 tp_is_empty!13139)))

(declare-fun b!2575211 () Bool)

(declare-fun tp!818640 () Bool)

(declare-fun tp!818641 () Bool)

(assert (=> b!2575211 (= e!1624867 (and tp!818640 tp!818641))))

(assert (=> b!2574581 (= tp!818591 e!1624867)))

(declare-fun b!2575212 () Bool)

(declare-fun tp!818643 () Bool)

(assert (=> b!2575212 (= e!1624867 tp!818643)))

(declare-fun b!2575213 () Bool)

(declare-fun tp!818639 () Bool)

(declare-fun tp!818642 () Bool)

(assert (=> b!2575213 (= e!1624867 (and tp!818639 tp!818642))))

(assert (= (and b!2574581 (is-ElementMatch!7642 (regOne!15796 r!27340))) b!2575210))

(assert (= (and b!2574581 (is-Concat!12338 (regOne!15796 r!27340))) b!2575211))

(assert (= (and b!2574581 (is-Star!7642 (regOne!15796 r!27340))) b!2575212))

(assert (= (and b!2574581 (is-Union!7642 (regOne!15796 r!27340))) b!2575213))

(declare-fun b!2575216 () Bool)

(declare-fun e!1624872 () Bool)

(assert (=> b!2575216 (= e!1624872 tp_is_empty!13139)))

(declare-fun b!2575217 () Bool)

(declare-fun tp!818645 () Bool)

(declare-fun tp!818646 () Bool)

(assert (=> b!2575217 (= e!1624872 (and tp!818645 tp!818646))))

(assert (=> b!2574581 (= tp!818592 e!1624872)))

(declare-fun b!2575218 () Bool)

(declare-fun tp!818648 () Bool)

(assert (=> b!2575218 (= e!1624872 tp!818648)))

(declare-fun b!2575219 () Bool)

(declare-fun tp!818644 () Bool)

(declare-fun tp!818647 () Bool)

(assert (=> b!2575219 (= e!1624872 (and tp!818644 tp!818647))))

(assert (= (and b!2574581 (is-ElementMatch!7642 (regTwo!15796 r!27340))) b!2575216))

(assert (= (and b!2574581 (is-Concat!12338 (regTwo!15796 r!27340))) b!2575217))

(assert (= (and b!2574581 (is-Star!7642 (regTwo!15796 r!27340))) b!2575218))

(assert (= (and b!2574581 (is-Union!7642 (regTwo!15796 r!27340))) b!2575219))

(push 1)

(assert (not bm!166513))

(assert (not b!2575051))

(assert (not b!2575213))

(assert (not b!2575143))

(assert (not bm!166518))

(assert (not bm!166512))

(assert (not bm!166565))

(assert (not d!728341))

(assert (not bm!166551))

(assert (not d!728375))

(assert (not bm!166514))

(assert (not bm!166581))

(assert (not b!2574981))

(assert (not b!2575119))

(assert (not d!728345))

(assert (not bm!166572))

(assert (not d!728377))

(assert (not b!2575105))

(assert (not b!2574928))

(assert (not d!728403))

(assert (not d!728331))

(assert (not d!728313))

(assert (not b!2574793))

(assert (not d!728409))

(assert (not b!2575195))

(assert tp_is_empty!13139)

(assert (not b!2575092))

(assert (not b!2575084))

(assert (not b!2574732))

(assert (not d!728373))

(assert (not b!2574857))

(assert (not b!2575098))

(assert (not b!2575204))

(assert (not b!2574980))

(assert (not b!2575112))

(assert (not b!2575082))

(assert (not d!728353))

(assert (not b!2575194))

(assert (not b!2575117))

(assert (not b!2575169))

(assert (not d!728347))

(assert (not bm!166530))

(assert (not b!2574798))

(assert (not d!728395))

(assert (not b!2574790))

(assert (not bm!166573))

(assert (not bm!166547))

(assert (not b!2575144))

(assert (not b!2575170))

(assert (not b!2575142))

(assert (not b!2575150))

(assert (not b!2574767))

(assert (not b!2574975))

(assert (not d!728309))

(assert (not b!2574983))

(assert (not b!2575212))

(assert (not b!2574935))

(assert (not b!2574727))

(assert (not b!2575003))

(assert (not bm!166519))

(assert (not bm!166527))

(assert (not b!2575176))

(assert (not b!2575196))

(assert (not bm!166564))

(assert (not b!2574959))

(assert (not b!2575199))

(assert (not b!2575219))

(assert (not d!728365))

(assert (not b!2575113))

(assert (not b!2575174))

(assert (not bm!166566))

(assert (not b!2575177))

(assert (not b!2575118))

(assert (not b!2574726))

(assert (not b!2574794))

(assert (not bm!166526))

(assert (not b!2575085))

(assert (not b!2575090))

(assert (not bm!166550))

(assert (not b!2575106))

(assert (not b!2574904))

(assert (not b!2575175))

(assert (not b!2575202))

(assert (not bm!166546))

(assert (not b!2574871))

(assert (not b!2575041))

(assert (not b!2574847))

(assert (not b!2575198))

(assert (not d!728399))

(assert (not b!2574932))

(assert (not bm!166574))

(assert (not d!728333))

(assert (not d!728367))

(assert (not b!2575217))

(assert (not d!728397))

(assert (not b!2575141))

(assert (not b!2575091))

(assert (not d!728393))

(assert (not b!2574927))

(assert (not b!2575080))

(assert (not d!728387))

(assert (not b!2574734))

(assert (not b!2574982))

(assert (not b!2575203))

(assert (not b!2574976))

(assert (not b!2575089))

(assert (not d!728401))

(assert (not b!2574934))

(assert (not b!2574873))

(assert (not b!2575104))

(assert (not b!2575079))

(assert (not b!2575209))

(assert (not bm!166498))

(assert (not b!2575136))

(assert (not b!2575218))

(assert (not b!2574733))

(assert (not b!2574933))

(assert (not d!728355))

(assert (not d!728359))

(assert (not b!2575103))

(assert (not d!728317))

(assert (not d!728385))

(assert (not bm!166533))

(assert (not d!728329))

(assert (not b!2575200))

(assert (not b!2575078))

(assert (not d!728391))

(assert (not b!2574791))

(assert (not bm!166517))

(assert (not b!2575099))

(assert (not b!2575137))

(assert (not b!2575211))

(assert (not d!728389))

(assert (not b!2575120))

(assert (not b!2574796))

(assert (not b!2574731))

(assert (not b!2574768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

