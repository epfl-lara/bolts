; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244950 () Bool)

(assert start!244950)

(declare-fun b!2511643 () Bool)

(declare-fun res!1061736 () Bool)

(declare-fun e!1591702 () Bool)

(assert (=> b!2511643 (=> (not res!1061736) (not e!1591702))))

(declare-datatypes ((C!15090 0))(
  ( (C!15091 (val!9197 Int)) )
))
(declare-datatypes ((Regex!7466 0))(
  ( (ElementMatch!7466 (c!400138 C!15090)) (Concat!12162 (regOne!15444 Regex!7466) (regTwo!15444 Regex!7466)) (EmptyExpr!7466) (Star!7466 (reg!7795 Regex!7466)) (EmptyLang!7466) (Union!7466 (regOne!15445 Regex!7466) (regTwo!15445 Regex!7466)) )
))
(declare-fun r!27340 () Regex!7466)

(declare-fun nullable!2383 (Regex!7466) Bool)

(assert (=> b!2511643 (= res!1061736 (not (nullable!2383 (regOne!15444 r!27340))))))

(declare-fun b!2511644 () Bool)

(declare-fun e!1591698 () Bool)

(declare-fun tp_is_empty!12787 () Bool)

(declare-fun tp!803193 () Bool)

(assert (=> b!2511644 (= e!1591698 (and tp_is_empty!12787 tp!803193))))

(declare-fun b!2511645 () Bool)

(declare-fun e!1591701 () Bool)

(declare-fun validRegex!3092 (Regex!7466) Bool)

(assert (=> b!2511645 (= e!1591701 (validRegex!3092 (regTwo!15444 r!27340)))))

(declare-fun b!2511646 () Bool)

(declare-fun e!1591699 () Bool)

(declare-fun tp!803191 () Bool)

(declare-fun tp!803194 () Bool)

(assert (=> b!2511646 (= e!1591699 (and tp!803191 tp!803194))))

(declare-fun b!2511647 () Bool)

(declare-fun tp!803195 () Bool)

(assert (=> b!2511647 (= e!1591699 tp!803195)))

(declare-fun b!2511648 () Bool)

(assert (=> b!2511648 (= e!1591699 tp_is_empty!12787)))

(declare-fun b!2511649 () Bool)

(declare-fun e!1591697 () Bool)

(assert (=> b!2511649 (= e!1591697 e!1591701)))

(declare-fun res!1061732 () Bool)

(assert (=> b!2511649 (=> res!1061732 e!1591701)))

(declare-fun lt!897857 () Regex!7466)

(assert (=> b!2511649 (= res!1061732 (not (validRegex!3092 lt!897857)))))

(declare-datatypes ((List!29531 0))(
  ( (Nil!29431) (Cons!29431 (h!34851 C!15090) (t!211230 List!29531)) )
))
(declare-fun tl!4068 () List!29531)

(declare-datatypes ((tuple2!29462 0))(
  ( (tuple2!29463 (_1!17273 List!29531) (_2!17273 List!29531)) )
))
(declare-datatypes ((Option!5851 0))(
  ( (None!5850) (Some!5850 (v!31781 tuple2!29462)) )
))
(declare-fun isDefined!4673 (Option!5851) Bool)

(declare-fun findConcatSeparation!873 (Regex!7466 Regex!7466 List!29531 List!29531 List!29531) Option!5851)

(assert (=> b!2511649 (isDefined!4673 (findConcatSeparation!873 lt!897857 (regTwo!15444 r!27340) Nil!29431 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43181 0))(
  ( (Unit!43182) )
))
(declare-fun lt!897858 () Unit!43181)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!155 (Regex!7466 Regex!7466 List!29531) Unit!43181)

(assert (=> b!2511649 (= lt!897858 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!155 lt!897857 (regTwo!15444 r!27340) tl!4068))))

(declare-fun res!1061733 () Bool)

(assert (=> start!244950 (=> (not res!1061733) (not e!1591702))))

(assert (=> start!244950 (= res!1061733 (validRegex!3092 r!27340))))

(assert (=> start!244950 e!1591702))

(assert (=> start!244950 e!1591699))

(assert (=> start!244950 tp_is_empty!12787))

(assert (=> start!244950 e!1591698))

(declare-fun b!2511650 () Bool)

(declare-fun e!1591700 () Bool)

(declare-fun matchR!3465 (Regex!7466 List!29531) Bool)

(assert (=> b!2511650 (= e!1591700 (matchR!3465 EmptyLang!7466 tl!4068))))

(declare-fun b!2511651 () Bool)

(declare-fun tp!803192 () Bool)

(declare-fun tp!803196 () Bool)

(assert (=> b!2511651 (= e!1591699 (and tp!803192 tp!803196))))

(declare-fun b!2511652 () Bool)

(assert (=> b!2511652 (= e!1591702 (not e!1591697))))

(declare-fun res!1061737 () Bool)

(assert (=> b!2511652 (=> res!1061737 e!1591697)))

(declare-fun lt!897859 () Bool)

(assert (=> b!2511652 (= res!1061737 (not lt!897859))))

(declare-fun derivative!161 (Regex!7466 List!29531) Regex!7466)

(assert (=> b!2511652 (= (derivative!161 EmptyLang!7466 tl!4068) EmptyLang!7466)))

(declare-fun lt!897861 () Unit!43181)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!13 (Regex!7466 List!29531) Unit!43181)

(assert (=> b!2511652 (= lt!897861 (lemmaEmptyLangDerivativeIsAFixPoint!13 EmptyLang!7466 tl!4068))))

(assert (=> b!2511652 e!1591700))

(declare-fun res!1061731 () Bool)

(assert (=> b!2511652 (=> res!1061731 e!1591700)))

(assert (=> b!2511652 (= res!1061731 lt!897859)))

(declare-fun lt!897855 () Regex!7466)

(assert (=> b!2511652 (= lt!897859 (matchR!3465 lt!897855 tl!4068))))

(declare-fun lt!897862 () Unit!43181)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!153 (Regex!7466 Regex!7466 List!29531) Unit!43181)

(assert (=> b!2511652 (= lt!897862 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!153 lt!897855 EmptyLang!7466 tl!4068))))

(declare-fun lt!897856 () Regex!7466)

(assert (=> b!2511652 (= (matchR!3465 lt!897856 tl!4068) (matchR!3465 (derivative!161 lt!897856 tl!4068) Nil!29431))))

(declare-fun lt!897860 () Unit!43181)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!111 (Regex!7466 List!29531) Unit!43181)

(assert (=> b!2511652 (= lt!897860 (lemmaMatchRIsSameAsWholeDerivativeAndNil!111 lt!897856 tl!4068))))

(assert (=> b!2511652 (= lt!897856 (Union!7466 lt!897855 EmptyLang!7466))))

(assert (=> b!2511652 (= lt!897855 (Concat!12162 lt!897857 (regTwo!15444 r!27340)))))

(declare-fun c!14016 () C!15090)

(declare-fun derivativeStep!2035 (Regex!7466 C!15090) Regex!7466)

(assert (=> b!2511652 (= lt!897857 (derivativeStep!2035 (regOne!15444 r!27340) c!14016))))

(declare-fun b!2511653 () Bool)

(declare-fun res!1061734 () Bool)

(assert (=> b!2511653 (=> (not res!1061734) (not e!1591702))))

(assert (=> b!2511653 (= res!1061734 (nullable!2383 (derivative!161 (derivativeStep!2035 r!27340 c!14016) tl!4068)))))

(declare-fun b!2511654 () Bool)

(declare-fun res!1061735 () Bool)

(assert (=> b!2511654 (=> (not res!1061735) (not e!1591702))))

(assert (=> b!2511654 (= res!1061735 (and (not (is-EmptyExpr!7466 r!27340)) (not (is-EmptyLang!7466 r!27340)) (not (is-ElementMatch!7466 r!27340)) (not (is-Union!7466 r!27340)) (not (is-Star!7466 r!27340))))))

(assert (= (and start!244950 res!1061733) b!2511653))

(assert (= (and b!2511653 res!1061734) b!2511654))

(assert (= (and b!2511654 res!1061735) b!2511643))

(assert (= (and b!2511643 res!1061736) b!2511652))

(assert (= (and b!2511652 (not res!1061731)) b!2511650))

(assert (= (and b!2511652 (not res!1061737)) b!2511649))

(assert (= (and b!2511649 (not res!1061732)) b!2511645))

(assert (= (and start!244950 (is-ElementMatch!7466 r!27340)) b!2511648))

(assert (= (and start!244950 (is-Concat!12162 r!27340)) b!2511651))

(assert (= (and start!244950 (is-Star!7466 r!27340)) b!2511647))

(assert (= (and start!244950 (is-Union!7466 r!27340)) b!2511646))

(assert (= (and start!244950 (is-Cons!29431 tl!4068)) b!2511644))

(declare-fun m!2870089 () Bool)

(assert (=> b!2511645 m!2870089))

(declare-fun m!2870091 () Bool)

(assert (=> start!244950 m!2870091))

(declare-fun m!2870093 () Bool)

(assert (=> b!2511649 m!2870093))

(declare-fun m!2870095 () Bool)

(assert (=> b!2511649 m!2870095))

(assert (=> b!2511649 m!2870095))

(declare-fun m!2870097 () Bool)

(assert (=> b!2511649 m!2870097))

(declare-fun m!2870099 () Bool)

(assert (=> b!2511649 m!2870099))

(declare-fun m!2870101 () Bool)

(assert (=> b!2511650 m!2870101))

(declare-fun m!2870103 () Bool)

(assert (=> b!2511653 m!2870103))

(assert (=> b!2511653 m!2870103))

(declare-fun m!2870105 () Bool)

(assert (=> b!2511653 m!2870105))

(assert (=> b!2511653 m!2870105))

(declare-fun m!2870107 () Bool)

(assert (=> b!2511653 m!2870107))

(declare-fun m!2870109 () Bool)

(assert (=> b!2511643 m!2870109))

(declare-fun m!2870111 () Bool)

(assert (=> b!2511652 m!2870111))

(declare-fun m!2870113 () Bool)

(assert (=> b!2511652 m!2870113))

(declare-fun m!2870115 () Bool)

(assert (=> b!2511652 m!2870115))

(declare-fun m!2870117 () Bool)

(assert (=> b!2511652 m!2870117))

(declare-fun m!2870119 () Bool)

(assert (=> b!2511652 m!2870119))

(declare-fun m!2870121 () Bool)

(assert (=> b!2511652 m!2870121))

(assert (=> b!2511652 m!2870113))

(declare-fun m!2870123 () Bool)

(assert (=> b!2511652 m!2870123))

(declare-fun m!2870125 () Bool)

(assert (=> b!2511652 m!2870125))

(declare-fun m!2870127 () Bool)

(assert (=> b!2511652 m!2870127))

(push 1)

(assert (not b!2511647))

(assert (not b!2511645))

(assert (not b!2511643))

(assert (not b!2511644))

(assert (not start!244950))

(assert (not b!2511646))

(assert (not b!2511650))

(assert (not b!2511651))

(assert (not b!2511653))

(assert (not b!2511649))

(assert tp_is_empty!12787)

(assert (not b!2511652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2511727 () Bool)

(declare-fun res!1061781 () Bool)

(declare-fun e!1591749 () Bool)

(assert (=> b!2511727 (=> (not res!1061781) (not e!1591749))))

(declare-fun call!155848 () Bool)

(assert (=> b!2511727 (= res!1061781 call!155848)))

(declare-fun e!1591755 () Bool)

(assert (=> b!2511727 (= e!1591755 e!1591749)))

(declare-fun bm!155841 () Bool)

(declare-fun call!155846 () Bool)

(assert (=> bm!155841 (= call!155848 call!155846)))

(declare-fun b!2511728 () Bool)

(declare-fun e!1591752 () Bool)

(declare-fun e!1591754 () Bool)

(assert (=> b!2511728 (= e!1591752 e!1591754)))

(declare-fun res!1061779 () Bool)

(assert (=> b!2511728 (=> (not res!1061779) (not e!1591754))))

(declare-fun call!155847 () Bool)

(assert (=> b!2511728 (= res!1061779 call!155847)))

(declare-fun bm!155842 () Bool)

(declare-fun c!400148 () Bool)

(assert (=> bm!155842 (= call!155847 (validRegex!3092 (ite c!400148 (regTwo!15445 (regTwo!15444 r!27340)) (regOne!15444 (regTwo!15444 r!27340)))))))

(declare-fun b!2511730 () Bool)

(declare-fun e!1591753 () Bool)

(assert (=> b!2511730 (= e!1591753 e!1591755)))

(assert (=> b!2511730 (= c!400148 (is-Union!7466 (regTwo!15444 r!27340)))))

(declare-fun b!2511731 () Bool)

(assert (=> b!2511731 (= e!1591749 call!155847)))

(declare-fun b!2511732 () Bool)

(declare-fun e!1591751 () Bool)

(assert (=> b!2511732 (= e!1591753 e!1591751)))

(declare-fun res!1061782 () Bool)

(assert (=> b!2511732 (= res!1061782 (not (nullable!2383 (reg!7795 (regTwo!15444 r!27340)))))))

(assert (=> b!2511732 (=> (not res!1061782) (not e!1591751))))

(declare-fun b!2511733 () Bool)

(declare-fun res!1061780 () Bool)

(assert (=> b!2511733 (=> res!1061780 e!1591752)))

(assert (=> b!2511733 (= res!1061780 (not (is-Concat!12162 (regTwo!15444 r!27340))))))

(assert (=> b!2511733 (= e!1591755 e!1591752)))

(declare-fun b!2511734 () Bool)

(assert (=> b!2511734 (= e!1591754 call!155848)))

(declare-fun b!2511735 () Bool)

(assert (=> b!2511735 (= e!1591751 call!155846)))

(declare-fun bm!155843 () Bool)

(declare-fun c!400149 () Bool)

(assert (=> bm!155843 (= call!155846 (validRegex!3092 (ite c!400149 (reg!7795 (regTwo!15444 r!27340)) (ite c!400148 (regOne!15445 (regTwo!15444 r!27340)) (regTwo!15444 (regTwo!15444 r!27340))))))))

(declare-fun d!716755 () Bool)

(declare-fun res!1061783 () Bool)

(declare-fun e!1591750 () Bool)

(assert (=> d!716755 (=> res!1061783 e!1591750)))

(assert (=> d!716755 (= res!1061783 (is-ElementMatch!7466 (regTwo!15444 r!27340)))))

(assert (=> d!716755 (= (validRegex!3092 (regTwo!15444 r!27340)) e!1591750)))

(declare-fun b!2511729 () Bool)

(assert (=> b!2511729 (= e!1591750 e!1591753)))

(assert (=> b!2511729 (= c!400149 (is-Star!7466 (regTwo!15444 r!27340)))))

(assert (= (and d!716755 (not res!1061783)) b!2511729))

(assert (= (and b!2511729 c!400149) b!2511732))

(assert (= (and b!2511729 (not c!400149)) b!2511730))

(assert (= (and b!2511732 res!1061782) b!2511735))

(assert (= (and b!2511730 c!400148) b!2511727))

(assert (= (and b!2511730 (not c!400148)) b!2511733))

(assert (= (and b!2511727 res!1061781) b!2511731))

(assert (= (and b!2511733 (not res!1061780)) b!2511728))

(assert (= (and b!2511728 res!1061779) b!2511734))

(assert (= (or b!2511727 b!2511734) bm!155841))

(assert (= (or b!2511731 b!2511728) bm!155842))

(assert (= (or b!2511735 bm!155841) bm!155843))

(declare-fun m!2870169 () Bool)

(assert (=> bm!155842 m!2870169))

(declare-fun m!2870171 () Bool)

(assert (=> b!2511732 m!2870171))

(declare-fun m!2870173 () Bool)

(assert (=> bm!155843 m!2870173))

(assert (=> b!2511645 d!716755))

(declare-fun b!2511773 () Bool)

(declare-fun e!1591781 () Bool)

(declare-fun head!5733 (List!29531) C!15090)

(declare-fun tail!4010 (List!29531) List!29531)

(assert (=> b!2511773 (= e!1591781 (matchR!3465 (derivativeStep!2035 EmptyLang!7466 (head!5733 tl!4068)) (tail!4010 tl!4068)))))

(declare-fun b!2511774 () Bool)

(declare-fun res!1061811 () Bool)

(declare-fun e!1591779 () Bool)

(assert (=> b!2511774 (=> res!1061811 e!1591779)))

(declare-fun e!1591777 () Bool)

(assert (=> b!2511774 (= res!1061811 e!1591777)))

(declare-fun res!1061807 () Bool)

(assert (=> b!2511774 (=> (not res!1061807) (not e!1591777))))

(declare-fun lt!897889 () Bool)

(assert (=> b!2511774 (= res!1061807 lt!897889)))

(declare-fun b!2511775 () Bool)

(assert (=> b!2511775 (= e!1591777 (= (head!5733 tl!4068) (c!400138 EmptyLang!7466)))))

(declare-fun b!2511776 () Bool)

(declare-fun res!1061805 () Bool)

(assert (=> b!2511776 (=> (not res!1061805) (not e!1591777))))

(declare-fun isEmpty!16891 (List!29531) Bool)

(assert (=> b!2511776 (= res!1061805 (isEmpty!16891 (tail!4010 tl!4068)))))

(declare-fun bm!155855 () Bool)

(declare-fun call!155860 () Bool)

(assert (=> bm!155855 (= call!155860 (isEmpty!16891 tl!4068))))

(declare-fun b!2511777 () Bool)

(declare-fun e!1591783 () Bool)

(declare-fun e!1591778 () Bool)

(assert (=> b!2511777 (= e!1591783 e!1591778)))

(declare-fun c!400160 () Bool)

(assert (=> b!2511777 (= c!400160 (is-EmptyLang!7466 EmptyLang!7466))))

(declare-fun b!2511778 () Bool)

(assert (=> b!2511778 (= e!1591783 (= lt!897889 call!155860))))

(declare-fun d!716759 () Bool)

(assert (=> d!716759 e!1591783))

(declare-fun c!400159 () Bool)

(assert (=> d!716759 (= c!400159 (is-EmptyExpr!7466 EmptyLang!7466))))

(assert (=> d!716759 (= lt!897889 e!1591781)))

(declare-fun c!400158 () Bool)

(assert (=> d!716759 (= c!400158 (isEmpty!16891 tl!4068))))

(assert (=> d!716759 (validRegex!3092 EmptyLang!7466)))

(assert (=> d!716759 (= (matchR!3465 EmptyLang!7466 tl!4068) lt!897889)))

(declare-fun b!2511779 () Bool)

(declare-fun res!1061809 () Bool)

(assert (=> b!2511779 (=> (not res!1061809) (not e!1591777))))

(assert (=> b!2511779 (= res!1061809 (not call!155860))))

(declare-fun b!2511780 () Bool)

(declare-fun res!1061808 () Bool)

(declare-fun e!1591782 () Bool)

(assert (=> b!2511780 (=> res!1061808 e!1591782)))

(assert (=> b!2511780 (= res!1061808 (not (isEmpty!16891 (tail!4010 tl!4068))))))

(declare-fun b!2511781 () Bool)

(declare-fun e!1591780 () Bool)

(assert (=> b!2511781 (= e!1591779 e!1591780)))

(declare-fun res!1061806 () Bool)

(assert (=> b!2511781 (=> (not res!1061806) (not e!1591780))))

(assert (=> b!2511781 (= res!1061806 (not lt!897889))))

(declare-fun b!2511782 () Bool)

(assert (=> b!2511782 (= e!1591781 (nullable!2383 EmptyLang!7466))))

(declare-fun b!2511783 () Bool)

(assert (=> b!2511783 (= e!1591782 (not (= (head!5733 tl!4068) (c!400138 EmptyLang!7466))))))

(declare-fun b!2511784 () Bool)

(assert (=> b!2511784 (= e!1591778 (not lt!897889))))

(declare-fun b!2511785 () Bool)

(declare-fun res!1061810 () Bool)

(assert (=> b!2511785 (=> res!1061810 e!1591779)))

(assert (=> b!2511785 (= res!1061810 (not (is-ElementMatch!7466 EmptyLang!7466)))))

(assert (=> b!2511785 (= e!1591778 e!1591779)))

(declare-fun b!2511786 () Bool)

(assert (=> b!2511786 (= e!1591780 e!1591782)))

(declare-fun res!1061812 () Bool)

(assert (=> b!2511786 (=> res!1061812 e!1591782)))

(assert (=> b!2511786 (= res!1061812 call!155860)))

(assert (= (and d!716759 c!400158) b!2511782))

(assert (= (and d!716759 (not c!400158)) b!2511773))

(assert (= (and d!716759 c!400159) b!2511778))

(assert (= (and d!716759 (not c!400159)) b!2511777))

(assert (= (and b!2511777 c!400160) b!2511784))

(assert (= (and b!2511777 (not c!400160)) b!2511785))

(assert (= (and b!2511785 (not res!1061810)) b!2511774))

(assert (= (and b!2511774 res!1061807) b!2511779))

(assert (= (and b!2511779 res!1061809) b!2511776))

(assert (= (and b!2511776 res!1061805) b!2511775))

(assert (= (and b!2511774 (not res!1061811)) b!2511781))

(assert (= (and b!2511781 res!1061806) b!2511786))

(assert (= (and b!2511786 (not res!1061812)) b!2511780))

(assert (= (and b!2511780 (not res!1061808)) b!2511783))

(assert (= (or b!2511778 b!2511779 b!2511786) bm!155855))

(declare-fun m!2870183 () Bool)

(assert (=> b!2511773 m!2870183))

(assert (=> b!2511773 m!2870183))

(declare-fun m!2870185 () Bool)

(assert (=> b!2511773 m!2870185))

(declare-fun m!2870187 () Bool)

(assert (=> b!2511773 m!2870187))

(assert (=> b!2511773 m!2870185))

(assert (=> b!2511773 m!2870187))

(declare-fun m!2870189 () Bool)

(assert (=> b!2511773 m!2870189))

(assert (=> b!2511776 m!2870187))

(assert (=> b!2511776 m!2870187))

(declare-fun m!2870191 () Bool)

(assert (=> b!2511776 m!2870191))

(assert (=> b!2511783 m!2870183))

(assert (=> b!2511780 m!2870187))

(assert (=> b!2511780 m!2870187))

(assert (=> b!2511780 m!2870191))

(assert (=> b!2511775 m!2870183))

(declare-fun m!2870193 () Bool)

(assert (=> b!2511782 m!2870193))

(declare-fun m!2870195 () Bool)

(assert (=> bm!155855 m!2870195))

(assert (=> d!716759 m!2870195))

(declare-fun m!2870197 () Bool)

(assert (=> d!716759 m!2870197))

(assert (=> b!2511650 d!716759))

(declare-fun d!716765 () Bool)

(declare-fun e!1591789 () Bool)

(assert (=> d!716765 e!1591789))

(declare-fun res!1061817 () Bool)

(assert (=> d!716765 (=> res!1061817 e!1591789)))

(assert (=> d!716765 (= res!1061817 (matchR!3465 lt!897855 tl!4068))))

(declare-fun lt!897892 () Unit!43181)

(declare-fun choose!14867 (Regex!7466 Regex!7466 List!29531) Unit!43181)

(assert (=> d!716765 (= lt!897892 (choose!14867 lt!897855 EmptyLang!7466 tl!4068))))

(declare-fun e!1591788 () Bool)

(assert (=> d!716765 e!1591788))

(declare-fun res!1061818 () Bool)

(assert (=> d!716765 (=> (not res!1061818) (not e!1591788))))

(assert (=> d!716765 (= res!1061818 (validRegex!3092 lt!897855))))

(assert (=> d!716765 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!153 lt!897855 EmptyLang!7466 tl!4068) lt!897892)))

(declare-fun b!2511791 () Bool)

(assert (=> b!2511791 (= e!1591788 (validRegex!3092 EmptyLang!7466))))

(declare-fun b!2511792 () Bool)

(assert (=> b!2511792 (= e!1591789 (matchR!3465 EmptyLang!7466 tl!4068))))

(assert (= (and d!716765 res!1061818) b!2511791))

(assert (= (and d!716765 (not res!1061817)) b!2511792))

(assert (=> d!716765 m!2870111))

(declare-fun m!2870199 () Bool)

(assert (=> d!716765 m!2870199))

(declare-fun m!2870201 () Bool)

(assert (=> d!716765 m!2870201))

(assert (=> b!2511791 m!2870197))

(assert (=> b!2511792 m!2870101))

(assert (=> b!2511652 d!716765))

(declare-fun d!716767 () Bool)

(declare-fun lt!897901 () Regex!7466)

(assert (=> d!716767 (validRegex!3092 lt!897901)))

(declare-fun e!1591802 () Regex!7466)

(assert (=> d!716767 (= lt!897901 e!1591802)))

(declare-fun c!400167 () Bool)

(assert (=> d!716767 (= c!400167 (is-Cons!29431 tl!4068))))

(assert (=> d!716767 (validRegex!3092 EmptyLang!7466)))

(assert (=> d!716767 (= (derivative!161 EmptyLang!7466 tl!4068) lt!897901)))

(declare-fun b!2511815 () Bool)

(assert (=> b!2511815 (= e!1591802 (derivative!161 (derivativeStep!2035 EmptyLang!7466 (h!34851 tl!4068)) (t!211230 tl!4068)))))

(declare-fun b!2511816 () Bool)

(assert (=> b!2511816 (= e!1591802 EmptyLang!7466)))

(assert (= (and d!716767 c!400167) b!2511815))

(assert (= (and d!716767 (not c!400167)) b!2511816))

(declare-fun m!2870203 () Bool)

(assert (=> d!716767 m!2870203))

(assert (=> d!716767 m!2870197))

(declare-fun m!2870205 () Bool)

(assert (=> b!2511815 m!2870205))

(assert (=> b!2511815 m!2870205))

(declare-fun m!2870207 () Bool)

(assert (=> b!2511815 m!2870207))

(assert (=> b!2511652 d!716767))

(declare-fun d!716769 () Bool)

(declare-fun lt!897902 () Regex!7466)

(assert (=> d!716769 (validRegex!3092 lt!897902)))

(declare-fun e!1591803 () Regex!7466)

(assert (=> d!716769 (= lt!897902 e!1591803)))

(declare-fun c!400168 () Bool)

(assert (=> d!716769 (= c!400168 (is-Cons!29431 tl!4068))))

(assert (=> d!716769 (validRegex!3092 lt!897856)))

(assert (=> d!716769 (= (derivative!161 lt!897856 tl!4068) lt!897902)))

(declare-fun b!2511817 () Bool)

(assert (=> b!2511817 (= e!1591803 (derivative!161 (derivativeStep!2035 lt!897856 (h!34851 tl!4068)) (t!211230 tl!4068)))))

(declare-fun b!2511818 () Bool)

(assert (=> b!2511818 (= e!1591803 lt!897856)))

(assert (= (and d!716769 c!400168) b!2511817))

(assert (= (and d!716769 (not c!400168)) b!2511818))

(declare-fun m!2870209 () Bool)

(assert (=> d!716769 m!2870209))

(declare-fun m!2870211 () Bool)

(assert (=> d!716769 m!2870211))

(declare-fun m!2870213 () Bool)

(assert (=> b!2511817 m!2870213))

(assert (=> b!2511817 m!2870213))

(declare-fun m!2870215 () Bool)

(assert (=> b!2511817 m!2870215))

(assert (=> b!2511652 d!716769))

(declare-fun b!2511819 () Bool)

(declare-fun e!1591808 () Bool)

(assert (=> b!2511819 (= e!1591808 (matchR!3465 (derivativeStep!2035 lt!897855 (head!5733 tl!4068)) (tail!4010 tl!4068)))))

(declare-fun b!2511820 () Bool)

(declare-fun res!1061835 () Bool)

(declare-fun e!1591806 () Bool)

(assert (=> b!2511820 (=> res!1061835 e!1591806)))

(declare-fun e!1591804 () Bool)

(assert (=> b!2511820 (= res!1061835 e!1591804)))

(declare-fun res!1061831 () Bool)

(assert (=> b!2511820 (=> (not res!1061831) (not e!1591804))))

(declare-fun lt!897903 () Bool)

(assert (=> b!2511820 (= res!1061831 lt!897903)))

(declare-fun b!2511821 () Bool)

(assert (=> b!2511821 (= e!1591804 (= (head!5733 tl!4068) (c!400138 lt!897855)))))

(declare-fun b!2511822 () Bool)

(declare-fun res!1061829 () Bool)

(assert (=> b!2511822 (=> (not res!1061829) (not e!1591804))))

(assert (=> b!2511822 (= res!1061829 (isEmpty!16891 (tail!4010 tl!4068)))))

(declare-fun bm!155856 () Bool)

(declare-fun call!155861 () Bool)

(assert (=> bm!155856 (= call!155861 (isEmpty!16891 tl!4068))))

(declare-fun b!2511823 () Bool)

(declare-fun e!1591810 () Bool)

(declare-fun e!1591805 () Bool)

(assert (=> b!2511823 (= e!1591810 e!1591805)))

(declare-fun c!400171 () Bool)

(assert (=> b!2511823 (= c!400171 (is-EmptyLang!7466 lt!897855))))

(declare-fun b!2511824 () Bool)

(assert (=> b!2511824 (= e!1591810 (= lt!897903 call!155861))))

(declare-fun d!716771 () Bool)

(assert (=> d!716771 e!1591810))

(declare-fun c!400170 () Bool)

(assert (=> d!716771 (= c!400170 (is-EmptyExpr!7466 lt!897855))))

(assert (=> d!716771 (= lt!897903 e!1591808)))

(declare-fun c!400169 () Bool)

(assert (=> d!716771 (= c!400169 (isEmpty!16891 tl!4068))))

(assert (=> d!716771 (validRegex!3092 lt!897855)))

(assert (=> d!716771 (= (matchR!3465 lt!897855 tl!4068) lt!897903)))

(declare-fun b!2511825 () Bool)

(declare-fun res!1061833 () Bool)

(assert (=> b!2511825 (=> (not res!1061833) (not e!1591804))))

(assert (=> b!2511825 (= res!1061833 (not call!155861))))

(declare-fun b!2511826 () Bool)

(declare-fun res!1061832 () Bool)

(declare-fun e!1591809 () Bool)

(assert (=> b!2511826 (=> res!1061832 e!1591809)))

(assert (=> b!2511826 (= res!1061832 (not (isEmpty!16891 (tail!4010 tl!4068))))))

(declare-fun b!2511827 () Bool)

(declare-fun e!1591807 () Bool)

(assert (=> b!2511827 (= e!1591806 e!1591807)))

(declare-fun res!1061830 () Bool)

(assert (=> b!2511827 (=> (not res!1061830) (not e!1591807))))

(assert (=> b!2511827 (= res!1061830 (not lt!897903))))

(declare-fun b!2511828 () Bool)

(assert (=> b!2511828 (= e!1591808 (nullable!2383 lt!897855))))

(declare-fun b!2511829 () Bool)

(assert (=> b!2511829 (= e!1591809 (not (= (head!5733 tl!4068) (c!400138 lt!897855))))))

(declare-fun b!2511830 () Bool)

(assert (=> b!2511830 (= e!1591805 (not lt!897903))))

(declare-fun b!2511831 () Bool)

(declare-fun res!1061834 () Bool)

(assert (=> b!2511831 (=> res!1061834 e!1591806)))

(assert (=> b!2511831 (= res!1061834 (not (is-ElementMatch!7466 lt!897855)))))

(assert (=> b!2511831 (= e!1591805 e!1591806)))

(declare-fun b!2511832 () Bool)

(assert (=> b!2511832 (= e!1591807 e!1591809)))

(declare-fun res!1061836 () Bool)

(assert (=> b!2511832 (=> res!1061836 e!1591809)))

(assert (=> b!2511832 (= res!1061836 call!155861)))

(assert (= (and d!716771 c!400169) b!2511828))

(assert (= (and d!716771 (not c!400169)) b!2511819))

(assert (= (and d!716771 c!400170) b!2511824))

(assert (= (and d!716771 (not c!400170)) b!2511823))

(assert (= (and b!2511823 c!400171) b!2511830))

(assert (= (and b!2511823 (not c!400171)) b!2511831))

(assert (= (and b!2511831 (not res!1061834)) b!2511820))

(assert (= (and b!2511820 res!1061831) b!2511825))

(assert (= (and b!2511825 res!1061833) b!2511822))

(assert (= (and b!2511822 res!1061829) b!2511821))

(assert (= (and b!2511820 (not res!1061835)) b!2511827))

(assert (= (and b!2511827 res!1061830) b!2511832))

(assert (= (and b!2511832 (not res!1061836)) b!2511826))

(assert (= (and b!2511826 (not res!1061832)) b!2511829))

(assert (= (or b!2511824 b!2511825 b!2511832) bm!155856))

(assert (=> b!2511819 m!2870183))

(assert (=> b!2511819 m!2870183))

(declare-fun m!2870217 () Bool)

(assert (=> b!2511819 m!2870217))

(assert (=> b!2511819 m!2870187))

(assert (=> b!2511819 m!2870217))

(assert (=> b!2511819 m!2870187))

(declare-fun m!2870219 () Bool)

(assert (=> b!2511819 m!2870219))

(assert (=> b!2511822 m!2870187))

(assert (=> b!2511822 m!2870187))

(assert (=> b!2511822 m!2870191))

(assert (=> b!2511829 m!2870183))

(assert (=> b!2511826 m!2870187))

(assert (=> b!2511826 m!2870187))

(assert (=> b!2511826 m!2870191))

(assert (=> b!2511821 m!2870183))

(declare-fun m!2870221 () Bool)

(assert (=> b!2511828 m!2870221))

(assert (=> bm!155856 m!2870195))

(assert (=> d!716771 m!2870195))

(assert (=> d!716771 m!2870201))

(assert (=> b!2511652 d!716771))

(declare-fun b!2511833 () Bool)

(declare-fun e!1591815 () Bool)

(assert (=> b!2511833 (= e!1591815 (matchR!3465 (derivativeStep!2035 (derivative!161 lt!897856 tl!4068) (head!5733 Nil!29431)) (tail!4010 Nil!29431)))))

(declare-fun b!2511834 () Bool)

(declare-fun res!1061843 () Bool)

(declare-fun e!1591813 () Bool)

(assert (=> b!2511834 (=> res!1061843 e!1591813)))

(declare-fun e!1591811 () Bool)

(assert (=> b!2511834 (= res!1061843 e!1591811)))

(declare-fun res!1061839 () Bool)

(assert (=> b!2511834 (=> (not res!1061839) (not e!1591811))))

(declare-fun lt!897904 () Bool)

(assert (=> b!2511834 (= res!1061839 lt!897904)))

(declare-fun b!2511835 () Bool)

(assert (=> b!2511835 (= e!1591811 (= (head!5733 Nil!29431) (c!400138 (derivative!161 lt!897856 tl!4068))))))

(declare-fun b!2511836 () Bool)

(declare-fun res!1061837 () Bool)

(assert (=> b!2511836 (=> (not res!1061837) (not e!1591811))))

(assert (=> b!2511836 (= res!1061837 (isEmpty!16891 (tail!4010 Nil!29431)))))

(declare-fun bm!155857 () Bool)

(declare-fun call!155862 () Bool)

(assert (=> bm!155857 (= call!155862 (isEmpty!16891 Nil!29431))))

(declare-fun b!2511837 () Bool)

(declare-fun e!1591817 () Bool)

(declare-fun e!1591812 () Bool)

(assert (=> b!2511837 (= e!1591817 e!1591812)))

(declare-fun c!400174 () Bool)

(assert (=> b!2511837 (= c!400174 (is-EmptyLang!7466 (derivative!161 lt!897856 tl!4068)))))

(declare-fun b!2511838 () Bool)

(assert (=> b!2511838 (= e!1591817 (= lt!897904 call!155862))))

(declare-fun d!716773 () Bool)

(assert (=> d!716773 e!1591817))

(declare-fun c!400173 () Bool)

(assert (=> d!716773 (= c!400173 (is-EmptyExpr!7466 (derivative!161 lt!897856 tl!4068)))))

(assert (=> d!716773 (= lt!897904 e!1591815)))

(declare-fun c!400172 () Bool)

(assert (=> d!716773 (= c!400172 (isEmpty!16891 Nil!29431))))

(assert (=> d!716773 (validRegex!3092 (derivative!161 lt!897856 tl!4068))))

(assert (=> d!716773 (= (matchR!3465 (derivative!161 lt!897856 tl!4068) Nil!29431) lt!897904)))

(declare-fun b!2511839 () Bool)

(declare-fun res!1061841 () Bool)

(assert (=> b!2511839 (=> (not res!1061841) (not e!1591811))))

(assert (=> b!2511839 (= res!1061841 (not call!155862))))

(declare-fun b!2511840 () Bool)

(declare-fun res!1061840 () Bool)

(declare-fun e!1591816 () Bool)

(assert (=> b!2511840 (=> res!1061840 e!1591816)))

(assert (=> b!2511840 (= res!1061840 (not (isEmpty!16891 (tail!4010 Nil!29431))))))

(declare-fun b!2511841 () Bool)

(declare-fun e!1591814 () Bool)

(assert (=> b!2511841 (= e!1591813 e!1591814)))

(declare-fun res!1061838 () Bool)

(assert (=> b!2511841 (=> (not res!1061838) (not e!1591814))))

(assert (=> b!2511841 (= res!1061838 (not lt!897904))))

(declare-fun b!2511842 () Bool)

(assert (=> b!2511842 (= e!1591815 (nullable!2383 (derivative!161 lt!897856 tl!4068)))))

(declare-fun b!2511843 () Bool)

(assert (=> b!2511843 (= e!1591816 (not (= (head!5733 Nil!29431) (c!400138 (derivative!161 lt!897856 tl!4068)))))))

(declare-fun b!2511844 () Bool)

(assert (=> b!2511844 (= e!1591812 (not lt!897904))))

(declare-fun b!2511845 () Bool)

(declare-fun res!1061842 () Bool)

(assert (=> b!2511845 (=> res!1061842 e!1591813)))

(assert (=> b!2511845 (= res!1061842 (not (is-ElementMatch!7466 (derivative!161 lt!897856 tl!4068))))))

(assert (=> b!2511845 (= e!1591812 e!1591813)))

(declare-fun b!2511846 () Bool)

(assert (=> b!2511846 (= e!1591814 e!1591816)))

(declare-fun res!1061844 () Bool)

(assert (=> b!2511846 (=> res!1061844 e!1591816)))

(assert (=> b!2511846 (= res!1061844 call!155862)))

(assert (= (and d!716773 c!400172) b!2511842))

(assert (= (and d!716773 (not c!400172)) b!2511833))

(assert (= (and d!716773 c!400173) b!2511838))

(assert (= (and d!716773 (not c!400173)) b!2511837))

(assert (= (and b!2511837 c!400174) b!2511844))

(assert (= (and b!2511837 (not c!400174)) b!2511845))

(assert (= (and b!2511845 (not res!1061842)) b!2511834))

(assert (= (and b!2511834 res!1061839) b!2511839))

(assert (= (and b!2511839 res!1061841) b!2511836))

(assert (= (and b!2511836 res!1061837) b!2511835))

(assert (= (and b!2511834 (not res!1061843)) b!2511841))

(assert (= (and b!2511841 res!1061838) b!2511846))

(assert (= (and b!2511846 (not res!1061844)) b!2511840))

(assert (= (and b!2511840 (not res!1061840)) b!2511843))

(assert (= (or b!2511838 b!2511839 b!2511846) bm!155857))

(declare-fun m!2870223 () Bool)

(assert (=> b!2511833 m!2870223))

(assert (=> b!2511833 m!2870113))

(assert (=> b!2511833 m!2870223))

(declare-fun m!2870225 () Bool)

(assert (=> b!2511833 m!2870225))

(declare-fun m!2870227 () Bool)

(assert (=> b!2511833 m!2870227))

(assert (=> b!2511833 m!2870225))

(assert (=> b!2511833 m!2870227))

(declare-fun m!2870229 () Bool)

(assert (=> b!2511833 m!2870229))

(assert (=> b!2511836 m!2870227))

(assert (=> b!2511836 m!2870227))

(declare-fun m!2870231 () Bool)

(assert (=> b!2511836 m!2870231))

(assert (=> b!2511843 m!2870223))

(assert (=> b!2511840 m!2870227))

(assert (=> b!2511840 m!2870227))

(assert (=> b!2511840 m!2870231))

(assert (=> b!2511835 m!2870223))

(assert (=> b!2511842 m!2870113))

(declare-fun m!2870233 () Bool)

(assert (=> b!2511842 m!2870233))

(declare-fun m!2870235 () Bool)

(assert (=> bm!155857 m!2870235))

(assert (=> d!716773 m!2870235))

(assert (=> d!716773 m!2870113))

(declare-fun m!2870237 () Bool)

(assert (=> d!716773 m!2870237))

(assert (=> b!2511652 d!716773))

(declare-fun d!716775 () Bool)

(assert (=> d!716775 (= (derivative!161 EmptyLang!7466 tl!4068) EmptyLang!7466)))

(declare-fun lt!897910 () Unit!43181)

(declare-fun choose!14868 (Regex!7466 List!29531) Unit!43181)

(assert (=> d!716775 (= lt!897910 (choose!14868 EmptyLang!7466 tl!4068))))

(assert (=> d!716775 (= EmptyLang!7466 EmptyLang!7466)))

(assert (=> d!716775 (= (lemmaEmptyLangDerivativeIsAFixPoint!13 EmptyLang!7466 tl!4068) lt!897910)))

(declare-fun bs!468793 () Bool)

(assert (= bs!468793 d!716775))

(assert (=> bs!468793 m!2870121))

(declare-fun m!2870239 () Bool)

(assert (=> bs!468793 m!2870239))

(assert (=> b!2511652 d!716775))

(declare-fun d!716777 () Bool)

(assert (=> d!716777 (= (matchR!3465 lt!897856 tl!4068) (matchR!3465 (derivative!161 lt!897856 tl!4068) Nil!29431))))

(declare-fun lt!897913 () Unit!43181)

(declare-fun choose!14869 (Regex!7466 List!29531) Unit!43181)

(assert (=> d!716777 (= lt!897913 (choose!14869 lt!897856 tl!4068))))

(assert (=> d!716777 (validRegex!3092 lt!897856)))

(assert (=> d!716777 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!111 lt!897856 tl!4068) lt!897913)))

(declare-fun bs!468794 () Bool)

(assert (= bs!468794 d!716777))

(assert (=> bs!468794 m!2870113))

(assert (=> bs!468794 m!2870115))

(assert (=> bs!468794 m!2870113))

(assert (=> bs!468794 m!2870123))

(declare-fun m!2870263 () Bool)

(assert (=> bs!468794 m!2870263))

(assert (=> bs!468794 m!2870211))

(assert (=> b!2511652 d!716777))

(declare-fun call!155874 () Regex!7466)

(declare-fun c!400189 () Bool)

(declare-fun bm!155869 () Bool)

(declare-fun c!400190 () Bool)

(assert (=> bm!155869 (= call!155874 (derivativeStep!2035 (ite c!400190 (regOne!15445 (regOne!15444 r!27340)) (ite c!400189 (reg!7795 (regOne!15444 r!27340)) (regOne!15444 (regOne!15444 r!27340)))) c!14016))))

(declare-fun bm!155870 () Bool)

(declare-fun call!155876 () Regex!7466)

(assert (=> bm!155870 (= call!155876 (derivativeStep!2035 (ite c!400190 (regTwo!15445 (regOne!15444 r!27340)) (regTwo!15444 (regOne!15444 r!27340))) c!14016))))

(declare-fun b!2511885 () Bool)

(declare-fun e!1591844 () Regex!7466)

(assert (=> b!2511885 (= e!1591844 EmptyLang!7466)))

(declare-fun bm!155871 () Bool)

(declare-fun call!155875 () Regex!7466)

(declare-fun call!155877 () Regex!7466)

(assert (=> bm!155871 (= call!155875 call!155877)))

(declare-fun b!2511886 () Bool)

(declare-fun e!1591842 () Regex!7466)

(assert (=> b!2511886 (= e!1591842 (ite (= c!14016 (c!400138 (regOne!15444 r!27340))) EmptyExpr!7466 EmptyLang!7466))))

(declare-fun b!2511887 () Bool)

(declare-fun e!1591843 () Regex!7466)

(assert (=> b!2511887 (= e!1591843 (Union!7466 (Concat!12162 call!155875 (regTwo!15444 (regOne!15444 r!27340))) EmptyLang!7466))))

(declare-fun b!2511888 () Bool)

(assert (=> b!2511888 (= e!1591844 e!1591842)))

(declare-fun c!400193 () Bool)

(assert (=> b!2511888 (= c!400193 (is-ElementMatch!7466 (regOne!15444 r!27340)))))

(declare-fun b!2511889 () Bool)

(declare-fun e!1591841 () Regex!7466)

(assert (=> b!2511889 (= e!1591841 (Union!7466 call!155874 call!155876))))

(declare-fun d!716781 () Bool)

(declare-fun lt!897919 () Regex!7466)

(assert (=> d!716781 (validRegex!3092 lt!897919)))

(assert (=> d!716781 (= lt!897919 e!1591844)))

(declare-fun c!400192 () Bool)

(assert (=> d!716781 (= c!400192 (or (is-EmptyExpr!7466 (regOne!15444 r!27340)) (is-EmptyLang!7466 (regOne!15444 r!27340))))))

(assert (=> d!716781 (validRegex!3092 (regOne!15444 r!27340))))

(assert (=> d!716781 (= (derivativeStep!2035 (regOne!15444 r!27340) c!14016) lt!897919)))

(declare-fun b!2511890 () Bool)

(assert (=> b!2511890 (= e!1591843 (Union!7466 (Concat!12162 call!155875 (regTwo!15444 (regOne!15444 r!27340))) call!155876))))

(declare-fun b!2511891 () Bool)

(declare-fun e!1591840 () Regex!7466)

(assert (=> b!2511891 (= e!1591841 e!1591840)))

(assert (=> b!2511891 (= c!400189 (is-Star!7466 (regOne!15444 r!27340)))))

(declare-fun b!2511892 () Bool)

(assert (=> b!2511892 (= e!1591840 (Concat!12162 call!155877 (regOne!15444 r!27340)))))

(declare-fun b!2511893 () Bool)

(declare-fun c!400191 () Bool)

(assert (=> b!2511893 (= c!400191 (nullable!2383 (regOne!15444 (regOne!15444 r!27340))))))

(assert (=> b!2511893 (= e!1591840 e!1591843)))

(declare-fun bm!155872 () Bool)

(assert (=> bm!155872 (= call!155877 call!155874)))

(declare-fun b!2511894 () Bool)

(assert (=> b!2511894 (= c!400190 (is-Union!7466 (regOne!15444 r!27340)))))

(assert (=> b!2511894 (= e!1591842 e!1591841)))

(assert (= (and d!716781 c!400192) b!2511885))

(assert (= (and d!716781 (not c!400192)) b!2511888))

(assert (= (and b!2511888 c!400193) b!2511886))

(assert (= (and b!2511888 (not c!400193)) b!2511894))

(assert (= (and b!2511894 c!400190) b!2511889))

(assert (= (and b!2511894 (not c!400190)) b!2511891))

(assert (= (and b!2511891 c!400189) b!2511892))

(assert (= (and b!2511891 (not c!400189)) b!2511893))

(assert (= (and b!2511893 c!400191) b!2511890))

(assert (= (and b!2511893 (not c!400191)) b!2511887))

(assert (= (or b!2511890 b!2511887) bm!155871))

(assert (= (or b!2511892 bm!155871) bm!155872))

(assert (= (or b!2511889 b!2511890) bm!155870))

(assert (= (or b!2511889 bm!155872) bm!155869))

(declare-fun m!2870273 () Bool)

(assert (=> bm!155869 m!2870273))

(declare-fun m!2870275 () Bool)

(assert (=> bm!155870 m!2870275))

(declare-fun m!2870277 () Bool)

(assert (=> d!716781 m!2870277))

(declare-fun m!2870279 () Bool)

(assert (=> d!716781 m!2870279))

(declare-fun m!2870281 () Bool)

(assert (=> b!2511893 m!2870281))

(assert (=> b!2511652 d!716781))

(declare-fun b!2511895 () Bool)

(declare-fun e!1591849 () Bool)

(assert (=> b!2511895 (= e!1591849 (matchR!3465 (derivativeStep!2035 lt!897856 (head!5733 tl!4068)) (tail!4010 tl!4068)))))

(declare-fun b!2511896 () Bool)

(declare-fun res!1061861 () Bool)

(declare-fun e!1591847 () Bool)

(assert (=> b!2511896 (=> res!1061861 e!1591847)))

(declare-fun e!1591845 () Bool)

(assert (=> b!2511896 (= res!1061861 e!1591845)))

(declare-fun res!1061857 () Bool)

(assert (=> b!2511896 (=> (not res!1061857) (not e!1591845))))

(declare-fun lt!897920 () Bool)

(assert (=> b!2511896 (= res!1061857 lt!897920)))

(declare-fun b!2511897 () Bool)

(assert (=> b!2511897 (= e!1591845 (= (head!5733 tl!4068) (c!400138 lt!897856)))))

(declare-fun b!2511898 () Bool)

(declare-fun res!1061855 () Bool)

(assert (=> b!2511898 (=> (not res!1061855) (not e!1591845))))

(assert (=> b!2511898 (= res!1061855 (isEmpty!16891 (tail!4010 tl!4068)))))

(declare-fun bm!155873 () Bool)

(declare-fun call!155878 () Bool)

(assert (=> bm!155873 (= call!155878 (isEmpty!16891 tl!4068))))

(declare-fun b!2511899 () Bool)

(declare-fun e!1591851 () Bool)

(declare-fun e!1591846 () Bool)

(assert (=> b!2511899 (= e!1591851 e!1591846)))

(declare-fun c!400196 () Bool)

(assert (=> b!2511899 (= c!400196 (is-EmptyLang!7466 lt!897856))))

(declare-fun b!2511900 () Bool)

(assert (=> b!2511900 (= e!1591851 (= lt!897920 call!155878))))

(declare-fun d!716787 () Bool)

(assert (=> d!716787 e!1591851))

(declare-fun c!400195 () Bool)

(assert (=> d!716787 (= c!400195 (is-EmptyExpr!7466 lt!897856))))

(assert (=> d!716787 (= lt!897920 e!1591849)))

(declare-fun c!400194 () Bool)

(assert (=> d!716787 (= c!400194 (isEmpty!16891 tl!4068))))

(assert (=> d!716787 (validRegex!3092 lt!897856)))

(assert (=> d!716787 (= (matchR!3465 lt!897856 tl!4068) lt!897920)))

(declare-fun b!2511901 () Bool)

(declare-fun res!1061859 () Bool)

(assert (=> b!2511901 (=> (not res!1061859) (not e!1591845))))

(assert (=> b!2511901 (= res!1061859 (not call!155878))))

(declare-fun b!2511902 () Bool)

(declare-fun res!1061858 () Bool)

(declare-fun e!1591850 () Bool)

(assert (=> b!2511902 (=> res!1061858 e!1591850)))

(assert (=> b!2511902 (= res!1061858 (not (isEmpty!16891 (tail!4010 tl!4068))))))

(declare-fun b!2511903 () Bool)

(declare-fun e!1591848 () Bool)

(assert (=> b!2511903 (= e!1591847 e!1591848)))

(declare-fun res!1061856 () Bool)

(assert (=> b!2511903 (=> (not res!1061856) (not e!1591848))))

(assert (=> b!2511903 (= res!1061856 (not lt!897920))))

(declare-fun b!2511904 () Bool)

(assert (=> b!2511904 (= e!1591849 (nullable!2383 lt!897856))))

(declare-fun b!2511905 () Bool)

(assert (=> b!2511905 (= e!1591850 (not (= (head!5733 tl!4068) (c!400138 lt!897856))))))

(declare-fun b!2511906 () Bool)

(assert (=> b!2511906 (= e!1591846 (not lt!897920))))

(declare-fun b!2511907 () Bool)

(declare-fun res!1061860 () Bool)

(assert (=> b!2511907 (=> res!1061860 e!1591847)))

(assert (=> b!2511907 (= res!1061860 (not (is-ElementMatch!7466 lt!897856)))))

(assert (=> b!2511907 (= e!1591846 e!1591847)))

(declare-fun b!2511908 () Bool)

(assert (=> b!2511908 (= e!1591848 e!1591850)))

(declare-fun res!1061862 () Bool)

(assert (=> b!2511908 (=> res!1061862 e!1591850)))

(assert (=> b!2511908 (= res!1061862 call!155878)))

(assert (= (and d!716787 c!400194) b!2511904))

(assert (= (and d!716787 (not c!400194)) b!2511895))

(assert (= (and d!716787 c!400195) b!2511900))

(assert (= (and d!716787 (not c!400195)) b!2511899))

(assert (= (and b!2511899 c!400196) b!2511906))

(assert (= (and b!2511899 (not c!400196)) b!2511907))

(assert (= (and b!2511907 (not res!1061860)) b!2511896))

(assert (= (and b!2511896 res!1061857) b!2511901))

(assert (= (and b!2511901 res!1061859) b!2511898))

(assert (= (and b!2511898 res!1061855) b!2511897))

(assert (= (and b!2511896 (not res!1061861)) b!2511903))

(assert (= (and b!2511903 res!1061856) b!2511908))

(assert (= (and b!2511908 (not res!1061862)) b!2511902))

(assert (= (and b!2511902 (not res!1061858)) b!2511905))

(assert (= (or b!2511900 b!2511901 b!2511908) bm!155873))

(assert (=> b!2511895 m!2870183))

(assert (=> b!2511895 m!2870183))

(declare-fun m!2870283 () Bool)

(assert (=> b!2511895 m!2870283))

(assert (=> b!2511895 m!2870187))

(assert (=> b!2511895 m!2870283))

(assert (=> b!2511895 m!2870187))

(declare-fun m!2870285 () Bool)

(assert (=> b!2511895 m!2870285))

(assert (=> b!2511898 m!2870187))

(assert (=> b!2511898 m!2870187))

(assert (=> b!2511898 m!2870191))

(assert (=> b!2511905 m!2870183))

(assert (=> b!2511902 m!2870187))

(assert (=> b!2511902 m!2870187))

(assert (=> b!2511902 m!2870191))

(assert (=> b!2511897 m!2870183))

(declare-fun m!2870287 () Bool)

(assert (=> b!2511904 m!2870287))

(assert (=> bm!155873 m!2870195))

(assert (=> d!716787 m!2870195))

(assert (=> d!716787 m!2870211))

(assert (=> b!2511652 d!716787))

(declare-fun d!716789 () Bool)

(declare-fun nullableFct!631 (Regex!7466) Bool)

(assert (=> d!716789 (= (nullable!2383 (derivative!161 (derivativeStep!2035 r!27340 c!14016) tl!4068)) (nullableFct!631 (derivative!161 (derivativeStep!2035 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468796 () Bool)

(assert (= bs!468796 d!716789))

(assert (=> bs!468796 m!2870105))

(declare-fun m!2870289 () Bool)

(assert (=> bs!468796 m!2870289))

(assert (=> b!2511653 d!716789))

(declare-fun d!716791 () Bool)

(declare-fun lt!897923 () Regex!7466)

(assert (=> d!716791 (validRegex!3092 lt!897923)))

(declare-fun e!1591854 () Regex!7466)

(assert (=> d!716791 (= lt!897923 e!1591854)))

(declare-fun c!400199 () Bool)

(assert (=> d!716791 (= c!400199 (is-Cons!29431 tl!4068))))

(assert (=> d!716791 (validRegex!3092 (derivativeStep!2035 r!27340 c!14016))))

(assert (=> d!716791 (= (derivative!161 (derivativeStep!2035 r!27340 c!14016) tl!4068) lt!897923)))

(declare-fun b!2511915 () Bool)

(assert (=> b!2511915 (= e!1591854 (derivative!161 (derivativeStep!2035 (derivativeStep!2035 r!27340 c!14016) (h!34851 tl!4068)) (t!211230 tl!4068)))))

(declare-fun b!2511916 () Bool)

(assert (=> b!2511916 (= e!1591854 (derivativeStep!2035 r!27340 c!14016))))

(assert (= (and d!716791 c!400199) b!2511915))

(assert (= (and d!716791 (not c!400199)) b!2511916))

(declare-fun m!2870291 () Bool)

(assert (=> d!716791 m!2870291))

(assert (=> d!716791 m!2870103))

(declare-fun m!2870293 () Bool)

(assert (=> d!716791 m!2870293))

(assert (=> b!2511915 m!2870103))

(declare-fun m!2870295 () Bool)

(assert (=> b!2511915 m!2870295))

(assert (=> b!2511915 m!2870295))

(declare-fun m!2870297 () Bool)

(assert (=> b!2511915 m!2870297))

(assert (=> b!2511653 d!716791))

(declare-fun bm!155874 () Bool)

(declare-fun call!155879 () Regex!7466)

(declare-fun c!400205 () Bool)

(declare-fun c!400204 () Bool)

(assert (=> bm!155874 (= call!155879 (derivativeStep!2035 (ite c!400205 (regOne!15445 r!27340) (ite c!400204 (reg!7795 r!27340) (regOne!15444 r!27340))) c!14016))))

(declare-fun bm!155875 () Bool)

(declare-fun call!155881 () Regex!7466)

(assert (=> bm!155875 (= call!155881 (derivativeStep!2035 (ite c!400205 (regTwo!15445 r!27340) (regTwo!15444 r!27340)) c!14016))))

(declare-fun b!2511927 () Bool)

(declare-fun e!1591867 () Regex!7466)

(assert (=> b!2511927 (= e!1591867 EmptyLang!7466)))

(declare-fun bm!155876 () Bool)

(declare-fun call!155880 () Regex!7466)

(declare-fun call!155882 () Regex!7466)

(assert (=> bm!155876 (= call!155880 call!155882)))

(declare-fun b!2511928 () Bool)

(declare-fun e!1591863 () Regex!7466)

(assert (=> b!2511928 (= e!1591863 (ite (= c!14016 (c!400138 r!27340)) EmptyExpr!7466 EmptyLang!7466))))

(declare-fun b!2511929 () Bool)

(declare-fun e!1591866 () Regex!7466)

(assert (=> b!2511929 (= e!1591866 (Union!7466 (Concat!12162 call!155880 (regTwo!15444 r!27340)) EmptyLang!7466))))

(declare-fun b!2511930 () Bool)

(assert (=> b!2511930 (= e!1591867 e!1591863)))

(declare-fun c!400208 () Bool)

(assert (=> b!2511930 (= c!400208 (is-ElementMatch!7466 r!27340))))

(declare-fun b!2511931 () Bool)

(declare-fun e!1591862 () Regex!7466)

(assert (=> b!2511931 (= e!1591862 (Union!7466 call!155879 call!155881))))

(declare-fun d!716793 () Bool)

(declare-fun lt!897924 () Regex!7466)

(assert (=> d!716793 (validRegex!3092 lt!897924)))

(assert (=> d!716793 (= lt!897924 e!1591867)))

(declare-fun c!400207 () Bool)

(assert (=> d!716793 (= c!400207 (or (is-EmptyExpr!7466 r!27340) (is-EmptyLang!7466 r!27340)))))

(assert (=> d!716793 (validRegex!3092 r!27340)))

(assert (=> d!716793 (= (derivativeStep!2035 r!27340 c!14016) lt!897924)))

(declare-fun b!2511932 () Bool)

(assert (=> b!2511932 (= e!1591866 (Union!7466 (Concat!12162 call!155880 (regTwo!15444 r!27340)) call!155881))))

(declare-fun b!2511933 () Bool)

(declare-fun e!1591861 () Regex!7466)

(assert (=> b!2511933 (= e!1591862 e!1591861)))

(assert (=> b!2511933 (= c!400204 (is-Star!7466 r!27340))))

(declare-fun b!2511934 () Bool)

(assert (=> b!2511934 (= e!1591861 (Concat!12162 call!155882 r!27340))))

(declare-fun b!2511935 () Bool)

(declare-fun c!400206 () Bool)

(assert (=> b!2511935 (= c!400206 (nullable!2383 (regOne!15444 r!27340)))))

(assert (=> b!2511935 (= e!1591861 e!1591866)))

(declare-fun bm!155877 () Bool)

(assert (=> bm!155877 (= call!155882 call!155879)))

(declare-fun b!2511936 () Bool)

(assert (=> b!2511936 (= c!400205 (is-Union!7466 r!27340))))

(assert (=> b!2511936 (= e!1591863 e!1591862)))

(assert (= (and d!716793 c!400207) b!2511927))

(assert (= (and d!716793 (not c!400207)) b!2511930))

(assert (= (and b!2511930 c!400208) b!2511928))

(assert (= (and b!2511930 (not c!400208)) b!2511936))

(assert (= (and b!2511936 c!400205) b!2511931))

(assert (= (and b!2511936 (not c!400205)) b!2511933))

(assert (= (and b!2511933 c!400204) b!2511934))

(assert (= (and b!2511933 (not c!400204)) b!2511935))

(assert (= (and b!2511935 c!400206) b!2511932))

(assert (= (and b!2511935 (not c!400206)) b!2511929))

(assert (= (or b!2511932 b!2511929) bm!155876))

(assert (= (or b!2511934 bm!155876) bm!155877))

(assert (= (or b!2511931 b!2511932) bm!155875))

(assert (= (or b!2511931 bm!155877) bm!155874))

(declare-fun m!2870299 () Bool)

(assert (=> bm!155874 m!2870299))

(declare-fun m!2870301 () Bool)

(assert (=> bm!155875 m!2870301))

(declare-fun m!2870303 () Bool)

(assert (=> d!716793 m!2870303))

(assert (=> d!716793 m!2870091))

(assert (=> b!2511935 m!2870109))

(assert (=> b!2511653 d!716793))

(declare-fun b!2511949 () Bool)

(declare-fun res!1061881 () Bool)

(declare-fun e!1591872 () Bool)

(assert (=> b!2511949 (=> (not res!1061881) (not e!1591872))))

(declare-fun call!155885 () Bool)

(assert (=> b!2511949 (= res!1061881 call!155885)))

(declare-fun e!1591878 () Bool)

(assert (=> b!2511949 (= e!1591878 e!1591872)))

(declare-fun bm!155878 () Bool)

(declare-fun call!155883 () Bool)

(assert (=> bm!155878 (= call!155885 call!155883)))

(declare-fun b!2511950 () Bool)

(declare-fun e!1591875 () Bool)

(declare-fun e!1591877 () Bool)

(assert (=> b!2511950 (= e!1591875 e!1591877)))

(declare-fun res!1061879 () Bool)

(assert (=> b!2511950 (=> (not res!1061879) (not e!1591877))))

(declare-fun call!155884 () Bool)

(assert (=> b!2511950 (= res!1061879 call!155884)))

(declare-fun bm!155879 () Bool)

(declare-fun c!400209 () Bool)

(assert (=> bm!155879 (= call!155884 (validRegex!3092 (ite c!400209 (regTwo!15445 r!27340) (regOne!15444 r!27340))))))

(declare-fun b!2511952 () Bool)

(declare-fun e!1591876 () Bool)

(assert (=> b!2511952 (= e!1591876 e!1591878)))

(assert (=> b!2511952 (= c!400209 (is-Union!7466 r!27340))))

(declare-fun b!2511953 () Bool)

(assert (=> b!2511953 (= e!1591872 call!155884)))

(declare-fun b!2511954 () Bool)

(declare-fun e!1591874 () Bool)

(assert (=> b!2511954 (= e!1591876 e!1591874)))

(declare-fun res!1061882 () Bool)

(assert (=> b!2511954 (= res!1061882 (not (nullable!2383 (reg!7795 r!27340))))))

(assert (=> b!2511954 (=> (not res!1061882) (not e!1591874))))

(declare-fun b!2511955 () Bool)

(declare-fun res!1061880 () Bool)

(assert (=> b!2511955 (=> res!1061880 e!1591875)))

(assert (=> b!2511955 (= res!1061880 (not (is-Concat!12162 r!27340)))))

(assert (=> b!2511955 (= e!1591878 e!1591875)))

(declare-fun b!2511956 () Bool)

(assert (=> b!2511956 (= e!1591877 call!155885)))

(declare-fun b!2511957 () Bool)

(assert (=> b!2511957 (= e!1591874 call!155883)))

(declare-fun bm!155880 () Bool)

(declare-fun c!400210 () Bool)

(assert (=> bm!155880 (= call!155883 (validRegex!3092 (ite c!400210 (reg!7795 r!27340) (ite c!400209 (regOne!15445 r!27340) (regTwo!15444 r!27340)))))))

(declare-fun d!716795 () Bool)

(declare-fun res!1061883 () Bool)

(declare-fun e!1591873 () Bool)

(assert (=> d!716795 (=> res!1061883 e!1591873)))

(assert (=> d!716795 (= res!1061883 (is-ElementMatch!7466 r!27340))))

(assert (=> d!716795 (= (validRegex!3092 r!27340) e!1591873)))

(declare-fun b!2511951 () Bool)

(assert (=> b!2511951 (= e!1591873 e!1591876)))

(assert (=> b!2511951 (= c!400210 (is-Star!7466 r!27340))))

(assert (= (and d!716795 (not res!1061883)) b!2511951))

(assert (= (and b!2511951 c!400210) b!2511954))

(assert (= (and b!2511951 (not c!400210)) b!2511952))

(assert (= (and b!2511954 res!1061882) b!2511957))

(assert (= (and b!2511952 c!400209) b!2511949))

(assert (= (and b!2511952 (not c!400209)) b!2511955))

(assert (= (and b!2511949 res!1061881) b!2511953))

(assert (= (and b!2511955 (not res!1061880)) b!2511950))

(assert (= (and b!2511950 res!1061879) b!2511956))

(assert (= (or b!2511949 b!2511956) bm!155878))

(assert (= (or b!2511953 b!2511950) bm!155879))

(assert (= (or b!2511957 bm!155878) bm!155880))

(declare-fun m!2870305 () Bool)

(assert (=> bm!155879 m!2870305))

(declare-fun m!2870307 () Bool)

(assert (=> b!2511954 m!2870307))

(declare-fun m!2870309 () Bool)

(assert (=> bm!155880 m!2870309))

(assert (=> start!244950 d!716795))

(declare-fun b!2511958 () Bool)

(declare-fun res!1061886 () Bool)

(declare-fun e!1591879 () Bool)

(assert (=> b!2511958 (=> (not res!1061886) (not e!1591879))))

(declare-fun call!155890 () Bool)

(assert (=> b!2511958 (= res!1061886 call!155890)))

(declare-fun e!1591885 () Bool)

(assert (=> b!2511958 (= e!1591885 e!1591879)))

(declare-fun bm!155881 () Bool)

(declare-fun call!155888 () Bool)

(assert (=> bm!155881 (= call!155890 call!155888)))

(declare-fun b!2511959 () Bool)

(declare-fun e!1591882 () Bool)

(declare-fun e!1591884 () Bool)

(assert (=> b!2511959 (= e!1591882 e!1591884)))

(declare-fun res!1061884 () Bool)

(assert (=> b!2511959 (=> (not res!1061884) (not e!1591884))))

(declare-fun call!155889 () Bool)

(assert (=> b!2511959 (= res!1061884 call!155889)))

(declare-fun bm!155882 () Bool)

(declare-fun c!400211 () Bool)

(assert (=> bm!155882 (= call!155889 (validRegex!3092 (ite c!400211 (regTwo!15445 lt!897857) (regOne!15444 lt!897857))))))

(declare-fun b!2511961 () Bool)

(declare-fun e!1591883 () Bool)

(assert (=> b!2511961 (= e!1591883 e!1591885)))

(assert (=> b!2511961 (= c!400211 (is-Union!7466 lt!897857))))

(declare-fun b!2511962 () Bool)

(assert (=> b!2511962 (= e!1591879 call!155889)))

(declare-fun b!2511963 () Bool)

(declare-fun e!1591881 () Bool)

(assert (=> b!2511963 (= e!1591883 e!1591881)))

(declare-fun res!1061887 () Bool)

(assert (=> b!2511963 (= res!1061887 (not (nullable!2383 (reg!7795 lt!897857))))))

(assert (=> b!2511963 (=> (not res!1061887) (not e!1591881))))

(declare-fun b!2511964 () Bool)

(declare-fun res!1061885 () Bool)

(assert (=> b!2511964 (=> res!1061885 e!1591882)))

(assert (=> b!2511964 (= res!1061885 (not (is-Concat!12162 lt!897857)))))

(assert (=> b!2511964 (= e!1591885 e!1591882)))

(declare-fun b!2511965 () Bool)

(assert (=> b!2511965 (= e!1591884 call!155890)))

(declare-fun b!2511966 () Bool)

(assert (=> b!2511966 (= e!1591881 call!155888)))

(declare-fun c!400212 () Bool)

(declare-fun bm!155883 () Bool)

(assert (=> bm!155883 (= call!155888 (validRegex!3092 (ite c!400212 (reg!7795 lt!897857) (ite c!400211 (regOne!15445 lt!897857) (regTwo!15444 lt!897857)))))))

(declare-fun d!716797 () Bool)

(declare-fun res!1061888 () Bool)

(declare-fun e!1591880 () Bool)

(assert (=> d!716797 (=> res!1061888 e!1591880)))

(assert (=> d!716797 (= res!1061888 (is-ElementMatch!7466 lt!897857))))

(assert (=> d!716797 (= (validRegex!3092 lt!897857) e!1591880)))

(declare-fun b!2511960 () Bool)

(assert (=> b!2511960 (= e!1591880 e!1591883)))

(assert (=> b!2511960 (= c!400212 (is-Star!7466 lt!897857))))

(assert (= (and d!716797 (not res!1061888)) b!2511960))

(assert (= (and b!2511960 c!400212) b!2511963))

(assert (= (and b!2511960 (not c!400212)) b!2511961))

(assert (= (and b!2511963 res!1061887) b!2511966))

(assert (= (and b!2511961 c!400211) b!2511958))

(assert (= (and b!2511961 (not c!400211)) b!2511964))

(assert (= (and b!2511958 res!1061886) b!2511962))

(assert (= (and b!2511964 (not res!1061885)) b!2511959))

(assert (= (and b!2511959 res!1061884) b!2511965))

(assert (= (or b!2511958 b!2511965) bm!155881))

(assert (= (or b!2511962 b!2511959) bm!155882))

(assert (= (or b!2511966 bm!155881) bm!155883))

(declare-fun m!2870311 () Bool)

(assert (=> bm!155882 m!2870311))

(declare-fun m!2870313 () Bool)

(assert (=> b!2511963 m!2870313))

(declare-fun m!2870315 () Bool)

(assert (=> bm!155883 m!2870315))

(assert (=> b!2511649 d!716797))

(declare-fun d!716799 () Bool)

(declare-fun isEmpty!16894 (Option!5851) Bool)

(assert (=> d!716799 (= (isDefined!4673 (findConcatSeparation!873 lt!897857 (regTwo!15444 r!27340) Nil!29431 tl!4068 tl!4068)) (not (isEmpty!16894 (findConcatSeparation!873 lt!897857 (regTwo!15444 r!27340) Nil!29431 tl!4068 tl!4068))))))

(declare-fun bs!468797 () Bool)

(assert (= bs!468797 d!716799))

(assert (=> bs!468797 m!2870095))

(declare-fun m!2870317 () Bool)

(assert (=> bs!468797 m!2870317))

(assert (=> b!2511649 d!716799))

(declare-fun b!2512008 () Bool)

(declare-fun e!1591911 () Bool)

(declare-fun lt!897934 () Option!5851)

(declare-fun ++!7203 (List!29531 List!29531) List!29531)

(declare-fun get!9166 (Option!5851) tuple2!29462)

(assert (=> b!2512008 (= e!1591911 (= (++!7203 (_1!17273 (get!9166 lt!897934)) (_2!17273 (get!9166 lt!897934))) tl!4068))))

(declare-fun b!2512009 () Bool)

(declare-fun e!1591914 () Option!5851)

(assert (=> b!2512009 (= e!1591914 (Some!5850 (tuple2!29463 Nil!29431 tl!4068)))))

(declare-fun b!2512010 () Bool)

(declare-fun res!1061916 () Bool)

(assert (=> b!2512010 (=> (not res!1061916) (not e!1591911))))

(assert (=> b!2512010 (= res!1061916 (matchR!3465 lt!897857 (_1!17273 (get!9166 lt!897934))))))

(declare-fun b!2512011 () Bool)

(declare-fun e!1591912 () Bool)

(assert (=> b!2512011 (= e!1591912 (not (isDefined!4673 lt!897934)))))

(declare-fun d!716801 () Bool)

(assert (=> d!716801 e!1591912))

(declare-fun res!1061915 () Bool)

(assert (=> d!716801 (=> res!1061915 e!1591912)))

(assert (=> d!716801 (= res!1061915 e!1591911)))

(declare-fun res!1061914 () Bool)

(assert (=> d!716801 (=> (not res!1061914) (not e!1591911))))

(assert (=> d!716801 (= res!1061914 (isDefined!4673 lt!897934))))

(assert (=> d!716801 (= lt!897934 e!1591914)))

(declare-fun c!400223 () Bool)

(declare-fun e!1591913 () Bool)

(assert (=> d!716801 (= c!400223 e!1591913)))

(declare-fun res!1061912 () Bool)

(assert (=> d!716801 (=> (not res!1061912) (not e!1591913))))

(assert (=> d!716801 (= res!1061912 (matchR!3465 lt!897857 Nil!29431))))

(assert (=> d!716801 (validRegex!3092 lt!897857)))

(assert (=> d!716801 (= (findConcatSeparation!873 lt!897857 (regTwo!15444 r!27340) Nil!29431 tl!4068 tl!4068) lt!897934)))

(declare-fun b!2512012 () Bool)

(declare-fun e!1591910 () Option!5851)

(assert (=> b!2512012 (= e!1591910 None!5850)))

(declare-fun b!2512013 () Bool)

(assert (=> b!2512013 (= e!1591913 (matchR!3465 (regTwo!15444 r!27340) tl!4068))))

(declare-fun b!2512014 () Bool)

(assert (=> b!2512014 (= e!1591914 e!1591910)))

(declare-fun c!400222 () Bool)

(assert (=> b!2512014 (= c!400222 (is-Nil!29431 tl!4068))))

(declare-fun b!2512015 () Bool)

(declare-fun res!1061913 () Bool)

(assert (=> b!2512015 (=> (not res!1061913) (not e!1591911))))

(assert (=> b!2512015 (= res!1061913 (matchR!3465 (regTwo!15444 r!27340) (_2!17273 (get!9166 lt!897934))))))

(declare-fun b!2512016 () Bool)

(declare-fun lt!897933 () Unit!43181)

(declare-fun lt!897932 () Unit!43181)

(assert (=> b!2512016 (= lt!897933 lt!897932)))

(assert (=> b!2512016 (= (++!7203 (++!7203 Nil!29431 (Cons!29431 (h!34851 tl!4068) Nil!29431)) (t!211230 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!749 (List!29531 C!15090 List!29531 List!29531) Unit!43181)

(assert (=> b!2512016 (= lt!897932 (lemmaMoveElementToOtherListKeepsConcatEq!749 Nil!29431 (h!34851 tl!4068) (t!211230 tl!4068) tl!4068))))

(assert (=> b!2512016 (= e!1591910 (findConcatSeparation!873 lt!897857 (regTwo!15444 r!27340) (++!7203 Nil!29431 (Cons!29431 (h!34851 tl!4068) Nil!29431)) (t!211230 tl!4068) tl!4068))))

(assert (= (and d!716801 res!1061912) b!2512013))

(assert (= (and d!716801 c!400223) b!2512009))

(assert (= (and d!716801 (not c!400223)) b!2512014))

(assert (= (and b!2512014 c!400222) b!2512012))

(assert (= (and b!2512014 (not c!400222)) b!2512016))

(assert (= (and d!716801 res!1061914) b!2512010))

(assert (= (and b!2512010 res!1061916) b!2512015))

(assert (= (and b!2512015 res!1061913) b!2512008))

(assert (= (and d!716801 (not res!1061915)) b!2512011))

(declare-fun m!2870343 () Bool)

(assert (=> b!2512013 m!2870343))

(declare-fun m!2870345 () Bool)

(assert (=> b!2512008 m!2870345))

(declare-fun m!2870347 () Bool)

(assert (=> b!2512008 m!2870347))

(assert (=> b!2512010 m!2870345))

(declare-fun m!2870349 () Bool)

(assert (=> b!2512010 m!2870349))

(declare-fun m!2870351 () Bool)

(assert (=> b!2512016 m!2870351))

(assert (=> b!2512016 m!2870351))

(declare-fun m!2870353 () Bool)

(assert (=> b!2512016 m!2870353))

(declare-fun m!2870355 () Bool)

(assert (=> b!2512016 m!2870355))

(assert (=> b!2512016 m!2870351))

(declare-fun m!2870357 () Bool)

(assert (=> b!2512016 m!2870357))

(declare-fun m!2870359 () Bool)

(assert (=> b!2512011 m!2870359))

(assert (=> d!716801 m!2870359))

(declare-fun m!2870361 () Bool)

(assert (=> d!716801 m!2870361))

(assert (=> d!716801 m!2870093))

(assert (=> b!2512015 m!2870345))

(declare-fun m!2870363 () Bool)

(assert (=> b!2512015 m!2870363))

(assert (=> b!2511649 d!716801))

(declare-fun d!716809 () Bool)

(assert (=> d!716809 (isDefined!4673 (findConcatSeparation!873 lt!897857 (regTwo!15444 r!27340) Nil!29431 tl!4068 tl!4068))))

(declare-fun lt!897937 () Unit!43181)

(declare-fun choose!14871 (Regex!7466 Regex!7466 List!29531) Unit!43181)

(assert (=> d!716809 (= lt!897937 (choose!14871 lt!897857 (regTwo!15444 r!27340) tl!4068))))

(assert (=> d!716809 (validRegex!3092 lt!897857)))

(assert (=> d!716809 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!155 lt!897857 (regTwo!15444 r!27340) tl!4068) lt!897937)))

(declare-fun bs!468799 () Bool)

(assert (= bs!468799 d!716809))

(assert (=> bs!468799 m!2870095))

(assert (=> bs!468799 m!2870095))

(assert (=> bs!468799 m!2870097))

(declare-fun m!2870365 () Bool)

(assert (=> bs!468799 m!2870365))

(assert (=> bs!468799 m!2870093))

(assert (=> b!2511649 d!716809))

(declare-fun d!716811 () Bool)

(assert (=> d!716811 (= (nullable!2383 (regOne!15444 r!27340)) (nullableFct!631 (regOne!15444 r!27340)))))

(declare-fun bs!468800 () Bool)

(assert (= bs!468800 d!716811))

(declare-fun m!2870367 () Bool)

(assert (=> bs!468800 m!2870367))

(assert (=> b!2511643 d!716811))

(declare-fun b!2512029 () Bool)

(declare-fun e!1591917 () Bool)

(declare-fun tp!803225 () Bool)

(assert (=> b!2512029 (= e!1591917 tp!803225)))

(declare-fun b!2512027 () Bool)

(assert (=> b!2512027 (= e!1591917 tp_is_empty!12787)))

(assert (=> b!2511646 (= tp!803191 e!1591917)))

(declare-fun b!2512028 () Bool)

(declare-fun tp!803229 () Bool)

(declare-fun tp!803228 () Bool)

(assert (=> b!2512028 (= e!1591917 (and tp!803229 tp!803228))))

(declare-fun b!2512030 () Bool)

(declare-fun tp!803227 () Bool)

(declare-fun tp!803226 () Bool)

(assert (=> b!2512030 (= e!1591917 (and tp!803227 tp!803226))))

(assert (= (and b!2511646 (is-ElementMatch!7466 (regOne!15445 r!27340))) b!2512027))

(assert (= (and b!2511646 (is-Concat!12162 (regOne!15445 r!27340))) b!2512028))

(assert (= (and b!2511646 (is-Star!7466 (regOne!15445 r!27340))) b!2512029))

(assert (= (and b!2511646 (is-Union!7466 (regOne!15445 r!27340))) b!2512030))

(declare-fun b!2512033 () Bool)

(declare-fun e!1591918 () Bool)

(declare-fun tp!803230 () Bool)

(assert (=> b!2512033 (= e!1591918 tp!803230)))

(declare-fun b!2512031 () Bool)

(assert (=> b!2512031 (= e!1591918 tp_is_empty!12787)))

(assert (=> b!2511646 (= tp!803194 e!1591918)))

(declare-fun b!2512032 () Bool)

(declare-fun tp!803234 () Bool)

(declare-fun tp!803233 () Bool)

(assert (=> b!2512032 (= e!1591918 (and tp!803234 tp!803233))))

(declare-fun b!2512034 () Bool)

(declare-fun tp!803232 () Bool)

(declare-fun tp!803231 () Bool)

(assert (=> b!2512034 (= e!1591918 (and tp!803232 tp!803231))))

(assert (= (and b!2511646 (is-ElementMatch!7466 (regTwo!15445 r!27340))) b!2512031))

(assert (= (and b!2511646 (is-Concat!12162 (regTwo!15445 r!27340))) b!2512032))

(assert (= (and b!2511646 (is-Star!7466 (regTwo!15445 r!27340))) b!2512033))

(assert (= (and b!2511646 (is-Union!7466 (regTwo!15445 r!27340))) b!2512034))

(declare-fun b!2512037 () Bool)

(declare-fun e!1591919 () Bool)

(declare-fun tp!803235 () Bool)

(assert (=> b!2512037 (= e!1591919 tp!803235)))

(declare-fun b!2512035 () Bool)

(assert (=> b!2512035 (= e!1591919 tp_is_empty!12787)))

(assert (=> b!2511651 (= tp!803192 e!1591919)))

(declare-fun b!2512036 () Bool)

(declare-fun tp!803239 () Bool)

(declare-fun tp!803238 () Bool)

(assert (=> b!2512036 (= e!1591919 (and tp!803239 tp!803238))))

(declare-fun b!2512038 () Bool)

(declare-fun tp!803237 () Bool)

(declare-fun tp!803236 () Bool)

(assert (=> b!2512038 (= e!1591919 (and tp!803237 tp!803236))))

(assert (= (and b!2511651 (is-ElementMatch!7466 (regOne!15444 r!27340))) b!2512035))

(assert (= (and b!2511651 (is-Concat!12162 (regOne!15444 r!27340))) b!2512036))

(assert (= (and b!2511651 (is-Star!7466 (regOne!15444 r!27340))) b!2512037))

(assert (= (and b!2511651 (is-Union!7466 (regOne!15444 r!27340))) b!2512038))

(declare-fun b!2512043 () Bool)

(declare-fun e!1591920 () Bool)

(declare-fun tp!803240 () Bool)

(assert (=> b!2512043 (= e!1591920 tp!803240)))

(declare-fun b!2512041 () Bool)

(assert (=> b!2512041 (= e!1591920 tp_is_empty!12787)))

(assert (=> b!2511651 (= tp!803196 e!1591920)))

(declare-fun b!2512042 () Bool)

(declare-fun tp!803244 () Bool)

(declare-fun tp!803243 () Bool)

(assert (=> b!2512042 (= e!1591920 (and tp!803244 tp!803243))))

(declare-fun b!2512044 () Bool)

(declare-fun tp!803242 () Bool)

(declare-fun tp!803241 () Bool)

(assert (=> b!2512044 (= e!1591920 (and tp!803242 tp!803241))))

(assert (= (and b!2511651 (is-ElementMatch!7466 (regTwo!15444 r!27340))) b!2512041))

(assert (= (and b!2511651 (is-Concat!12162 (regTwo!15444 r!27340))) b!2512042))

(assert (= (and b!2511651 (is-Star!7466 (regTwo!15444 r!27340))) b!2512043))

(assert (= (and b!2511651 (is-Union!7466 (regTwo!15444 r!27340))) b!2512044))

(declare-fun b!2512047 () Bool)

(declare-fun e!1591921 () Bool)

(declare-fun tp!803245 () Bool)

(assert (=> b!2512047 (= e!1591921 tp!803245)))

(declare-fun b!2512045 () Bool)

(assert (=> b!2512045 (= e!1591921 tp_is_empty!12787)))

(assert (=> b!2511647 (= tp!803195 e!1591921)))

(declare-fun b!2512046 () Bool)

(declare-fun tp!803249 () Bool)

(declare-fun tp!803248 () Bool)

(assert (=> b!2512046 (= e!1591921 (and tp!803249 tp!803248))))

(declare-fun b!2512048 () Bool)

(declare-fun tp!803247 () Bool)

(declare-fun tp!803246 () Bool)

(assert (=> b!2512048 (= e!1591921 (and tp!803247 tp!803246))))

(assert (= (and b!2511647 (is-ElementMatch!7466 (reg!7795 r!27340))) b!2512045))

(assert (= (and b!2511647 (is-Concat!12162 (reg!7795 r!27340))) b!2512046))

(assert (= (and b!2511647 (is-Star!7466 (reg!7795 r!27340))) b!2512047))

(assert (= (and b!2511647 (is-Union!7466 (reg!7795 r!27340))) b!2512048))

(declare-fun b!2512059 () Bool)

(declare-fun e!1591928 () Bool)

(declare-fun tp!803252 () Bool)

(assert (=> b!2512059 (= e!1591928 (and tp_is_empty!12787 tp!803252))))

(assert (=> b!2511644 (= tp!803193 e!1591928)))

(assert (= (and b!2511644 (is-Cons!29431 (t!211230 tl!4068))) b!2512059))

(push 1)

(assert (not b!2511963))

(assert (not b!2512046))

(assert (not b!2511915))

(assert (not bm!155857))

(assert (not b!2512044))

(assert (not bm!155842))

(assert (not bm!155879))

(assert (not bm!155874))

(assert (not b!2511904))

(assert (not d!716789))

(assert (not b!2511836))

(assert (not d!716809))

(assert (not bm!155856))

(assert (not b!2511829))

(assert (not b!2511776))

(assert (not d!716777))

(assert (not b!2511833))

(assert (not bm!155869))

(assert (not b!2512013))

(assert (not d!716799))

(assert (not b!2511828))

(assert (not d!716775))

(assert (not bm!155880))

(assert (not d!716787))

(assert (not bm!155882))

(assert (not b!2511905))

(assert (not b!2511821))

(assert (not d!716771))

(assert (not b!2512016))

(assert (not d!716811))

(assert (not b!2512038))

(assert (not d!716769))

(assert (not bm!155843))

(assert (not b!2511895))

(assert (not b!2512036))

(assert (not bm!155883))

(assert (not b!2511898))

(assert (not bm!155855))

(assert (not b!2512011))

(assert (not b!2511893))

(assert (not b!2511826))

(assert tp_is_empty!12787)

(assert (not b!2511935))

(assert (not b!2511791))

(assert (not b!2511902))

(assert (not b!2511792))

(assert (not b!2511822))

(assert (not d!716793))

(assert (not b!2511783))

(assert (not d!716781))

(assert (not b!2512033))

(assert (not b!2511842))

(assert (not b!2511732))

(assert (not b!2511835))

(assert (not b!2511954))

(assert (not b!2511780))

(assert (not b!2511773))

(assert (not b!2512010))

(assert (not d!716791))

(assert (not b!2512043))

(assert (not b!2512059))

(assert (not b!2511775))

(assert (not bm!155873))

(assert (not d!716759))

(assert (not b!2511840))

(assert (not d!716801))

(assert (not b!2512048))

(assert (not d!716767))

(assert (not b!2512029))

(assert (not b!2512034))

(assert (not b!2511843))

(assert (not b!2511897))

(assert (not b!2511815))

(assert (not b!2512015))

(assert (not b!2512008))

(assert (not bm!155875))

(assert (not d!716765))

(assert (not b!2511817))

(assert (not b!2512030))

(assert (not bm!155870))

(assert (not b!2512032))

(assert (not b!2512047))

(assert (not b!2512037))

(assert (not b!2512042))

(assert (not b!2511782))

(assert (not d!716773))

(assert (not b!2511819))

(assert (not b!2512028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

