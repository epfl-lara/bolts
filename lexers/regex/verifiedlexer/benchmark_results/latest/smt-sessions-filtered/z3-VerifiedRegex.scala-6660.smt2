; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350314 () Bool)

(assert start!350314)

(declare-fun b!3718864 () Bool)

(declare-fun e!2302435 () Bool)

(declare-fun tp!1131233 () Bool)

(assert (=> b!3718864 (= e!2302435 tp!1131233)))

(declare-fun b!3718865 () Bool)

(declare-fun res!1511597 () Bool)

(declare-fun e!2302437 () Bool)

(assert (=> b!3718865 (=> res!1511597 e!2302437)))

(declare-datatypes ((C!21904 0))(
  ( (C!21905 (val!13000 Int)) )
))
(declare-datatypes ((Regex!10859 0))(
  ( (ElementMatch!10859 (c!642993 C!21904)) (Concat!17130 (regOne!22230 Regex!10859) (regTwo!22230 Regex!10859)) (EmptyExpr!10859) (Star!10859 (reg!11188 Regex!10859)) (EmptyLang!10859) (Union!10859 (regOne!22231 Regex!10859) (regTwo!22231 Regex!10859)) )
))
(declare-fun r!26326 () Regex!10859)

(declare-datatypes ((List!39740 0))(
  ( (Nil!39616) (Cons!39616 (h!45036 C!21904) (t!302423 List!39740)) )
))
(declare-datatypes ((tuple2!39224 0))(
  ( (tuple2!39225 (_1!22746 List!39740) (_2!22746 List!39740)) )
))
(declare-fun lt!1297729 () tuple2!39224)

(declare-fun matchR!5304 (Regex!10859 List!39740) Bool)

(assert (=> b!3718865 (= res!1511597 (not (matchR!5304 (regTwo!22230 r!26326) (_2!22746 lt!1297729))))))

(declare-fun b!3718866 () Bool)

(declare-fun e!2302438 () Bool)

(declare-fun tl!3933 () List!39740)

(assert (=> b!3718866 (= e!2302438 (matchR!5304 EmptyLang!10859 tl!3933))))

(declare-fun b!3718867 () Bool)

(declare-fun e!2302439 () Bool)

(declare-fun c!13576 () C!21904)

(declare-fun contains!7952 (List!39740 C!21904) Bool)

(declare-fun usedCharacters!1122 (Regex!10859) List!39740)

(assert (=> b!3718867 (= e!2302439 (contains!7952 (usedCharacters!1122 r!26326) c!13576))))

(assert (=> b!3718867 (contains!7952 (usedCharacters!1122 (regOne!22230 r!26326)) c!13576)))

(declare-datatypes ((Unit!57516 0))(
  ( (Unit!57517) )
))
(declare-fun lt!1297727 () Unit!57516)

(declare-fun lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!16 (Regex!10859 C!21904 List!39740) Unit!57516)

(assert (=> b!3718867 (= lt!1297727 (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!16 (regOne!22230 r!26326) c!13576 (_1!22746 lt!1297729)))))

(declare-fun b!3718868 () Bool)

(assert (=> b!3718868 (= e!2302437 e!2302439)))

(declare-fun res!1511600 () Bool)

(assert (=> b!3718868 (=> res!1511600 e!2302439)))

(declare-fun validRegex!4966 (Regex!10859) Bool)

(assert (=> b!3718868 (= res!1511600 (not (validRegex!4966 (regOne!22230 r!26326))))))

(declare-fun lt!1297726 () Regex!10859)

(assert (=> b!3718868 (matchR!5304 lt!1297726 Nil!39616)))

(declare-fun lt!1297728 () Regex!10859)

(declare-fun derivative!373 (Regex!10859 List!39740) Regex!10859)

(assert (=> b!3718868 (= lt!1297726 (derivative!373 lt!1297728 (_1!22746 lt!1297729)))))

(declare-fun lt!1297730 () Unit!57516)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!250 (Regex!10859 List!39740) Unit!57516)

(assert (=> b!3718868 (= lt!1297730 (lemmaMatchRIsSameAsWholeDerivativeAndNil!250 lt!1297728 (_1!22746 lt!1297729)))))

(declare-fun b!3718870 () Bool)

(declare-fun tp!1131232 () Bool)

(declare-fun tp!1131234 () Bool)

(assert (=> b!3718870 (= e!2302435 (and tp!1131232 tp!1131234))))

(declare-fun b!3718871 () Bool)

(declare-fun res!1511599 () Bool)

(declare-fun e!2302440 () Bool)

(assert (=> b!3718871 (=> (not res!1511599) (not e!2302440))))

(declare-fun nullable!3782 (Regex!10859) Bool)

(assert (=> b!3718871 (= res!1511599 (not (nullable!3782 (regOne!22230 r!26326))))))

(declare-fun b!3718872 () Bool)

(declare-fun res!1511591 () Bool)

(assert (=> b!3718872 (=> res!1511591 e!2302437)))

(assert (=> b!3718872 (= res!1511591 (not (matchR!5304 (regOne!22230 r!26326) (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(declare-fun b!3718873 () Bool)

(declare-fun res!1511592 () Bool)

(assert (=> b!3718873 (=> (not res!1511592) (not e!2302440))))

(get-info :version)

(assert (=> b!3718873 (= res!1511592 (and (not ((_ is EmptyExpr!10859) r!26326)) (not ((_ is EmptyLang!10859) r!26326)) (not ((_ is ElementMatch!10859) r!26326)) (not ((_ is Union!10859) r!26326)) (not ((_ is Star!10859) r!26326))))))

(declare-fun b!3718874 () Bool)

(declare-fun res!1511596 () Bool)

(assert (=> b!3718874 (=> res!1511596 e!2302437)))

(assert (=> b!3718874 (= res!1511596 (not (matchR!5304 lt!1297728 (_1!22746 lt!1297729))))))

(declare-fun b!3718875 () Bool)

(declare-fun e!2302436 () Bool)

(assert (=> b!3718875 (= e!2302440 (not e!2302436))))

(declare-fun res!1511590 () Bool)

(assert (=> b!3718875 (=> res!1511590 e!2302436)))

(declare-fun lt!1297731 () Bool)

(assert (=> b!3718875 (= res!1511590 (not lt!1297731))))

(assert (=> b!3718875 (= (derivative!373 EmptyLang!10859 tl!3933) EmptyLang!10859)))

(declare-fun lt!1297733 () Unit!57516)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!74 (Regex!10859 List!39740) Unit!57516)

(assert (=> b!3718875 (= lt!1297733 (lemmaEmptyLangDerivativeIsAFixPoint!74 EmptyLang!10859 tl!3933))))

(assert (=> b!3718875 e!2302438))

(declare-fun res!1511594 () Bool)

(assert (=> b!3718875 (=> res!1511594 e!2302438)))

(assert (=> b!3718875 (= res!1511594 lt!1297731)))

(declare-fun lt!1297725 () Regex!10859)

(assert (=> b!3718875 (= lt!1297731 (matchR!5304 lt!1297725 tl!3933))))

(declare-fun lt!1297735 () Unit!57516)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!336 (Regex!10859 Regex!10859 List!39740) Unit!57516)

(assert (=> b!3718875 (= lt!1297735 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!336 lt!1297725 EmptyLang!10859 tl!3933))))

(declare-fun lt!1297736 () Regex!10859)

(assert (=> b!3718875 (= (matchR!5304 lt!1297736 tl!3933) (matchR!5304 (derivative!373 lt!1297736 tl!3933) Nil!39616))))

(declare-fun lt!1297734 () Unit!57516)

(assert (=> b!3718875 (= lt!1297734 (lemmaMatchRIsSameAsWholeDerivativeAndNil!250 lt!1297736 tl!3933))))

(assert (=> b!3718875 (= lt!1297736 (Union!10859 lt!1297725 EmptyLang!10859))))

(assert (=> b!3718875 (= lt!1297725 (Concat!17130 lt!1297728 (regTwo!22230 r!26326)))))

(declare-fun derivativeStep!3324 (Regex!10859 C!21904) Regex!10859)

(assert (=> b!3718875 (= lt!1297728 (derivativeStep!3324 (regOne!22230 r!26326) c!13576))))

(declare-fun b!3718876 () Bool)

(declare-fun tp!1131231 () Bool)

(declare-fun tp!1131235 () Bool)

(assert (=> b!3718876 (= e!2302435 (and tp!1131231 tp!1131235))))

(declare-fun b!3718877 () Bool)

(assert (=> b!3718877 (= e!2302436 e!2302437)))

(declare-fun res!1511593 () Bool)

(assert (=> b!3718877 (=> res!1511593 e!2302437)))

(declare-fun ++!9805 (List!39740 List!39740) List!39740)

(assert (=> b!3718877 (= res!1511593 (not (= (++!9805 (_1!22746 lt!1297729) (_2!22746 lt!1297729)) tl!3933)))))

(declare-datatypes ((Option!8574 0))(
  ( (None!8573) (Some!8573 (v!38595 tuple2!39224)) )
))
(declare-fun lt!1297732 () Option!8574)

(declare-fun get!13204 (Option!8574) tuple2!39224)

(assert (=> b!3718877 (= lt!1297729 (get!13204 lt!1297732))))

(declare-fun isDefined!6751 (Option!8574) Bool)

(assert (=> b!3718877 (isDefined!6751 lt!1297732)))

(declare-fun findConcatSeparation!1262 (Regex!10859 Regex!10859 List!39740 List!39740 List!39740) Option!8574)

(assert (=> b!3718877 (= lt!1297732 (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) Nil!39616 tl!3933 tl!3933))))

(declare-fun lt!1297724 () Unit!57516)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!234 (Regex!10859 Regex!10859 List!39740) Unit!57516)

(assert (=> b!3718877 (= lt!1297724 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!234 lt!1297728 (regTwo!22230 r!26326) tl!3933))))

(declare-fun b!3718878 () Bool)

(declare-fun e!2302434 () Bool)

(declare-fun tp_is_empty!18733 () Bool)

(declare-fun tp!1131236 () Bool)

(assert (=> b!3718878 (= e!2302434 (and tp_is_empty!18733 tp!1131236))))

(declare-fun res!1511595 () Bool)

(assert (=> start!350314 (=> (not res!1511595) (not e!2302440))))

(assert (=> start!350314 (= res!1511595 (validRegex!4966 r!26326))))

(assert (=> start!350314 e!2302440))

(assert (=> start!350314 e!2302435))

(assert (=> start!350314 tp_is_empty!18733))

(assert (=> start!350314 e!2302434))

(declare-fun b!3718869 () Bool)

(declare-fun res!1511598 () Bool)

(assert (=> b!3718869 (=> (not res!1511598) (not e!2302440))))

(assert (=> b!3718869 (= res!1511598 (nullable!3782 (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)))))

(declare-fun b!3718879 () Bool)

(declare-fun res!1511589 () Bool)

(assert (=> b!3718879 (=> res!1511589 e!2302439)))

(assert (=> b!3718879 (= res!1511589 (not (nullable!3782 lt!1297726)))))

(declare-fun b!3718880 () Bool)

(assert (=> b!3718880 (= e!2302435 tp_is_empty!18733)))

(assert (= (and start!350314 res!1511595) b!3718869))

(assert (= (and b!3718869 res!1511598) b!3718873))

(assert (= (and b!3718873 res!1511592) b!3718871))

(assert (= (and b!3718871 res!1511599) b!3718875))

(assert (= (and b!3718875 (not res!1511594)) b!3718866))

(assert (= (and b!3718875 (not res!1511590)) b!3718877))

(assert (= (and b!3718877 (not res!1511593)) b!3718874))

(assert (= (and b!3718874 (not res!1511596)) b!3718865))

(assert (= (and b!3718865 (not res!1511597)) b!3718872))

(assert (= (and b!3718872 (not res!1511591)) b!3718868))

(assert (= (and b!3718868 (not res!1511600)) b!3718879))

(assert (= (and b!3718879 (not res!1511589)) b!3718867))

(assert (= (and start!350314 ((_ is ElementMatch!10859) r!26326)) b!3718880))

(assert (= (and start!350314 ((_ is Concat!17130) r!26326)) b!3718876))

(assert (= (and start!350314 ((_ is Star!10859) r!26326)) b!3718864))

(assert (= (and start!350314 ((_ is Union!10859) r!26326)) b!3718870))

(assert (= (and start!350314 ((_ is Cons!39616) tl!3933)) b!3718878))

(declare-fun m!4223731 () Bool)

(assert (=> b!3718868 m!4223731))

(declare-fun m!4223733 () Bool)

(assert (=> b!3718868 m!4223733))

(declare-fun m!4223735 () Bool)

(assert (=> b!3718868 m!4223735))

(declare-fun m!4223737 () Bool)

(assert (=> b!3718868 m!4223737))

(declare-fun m!4223739 () Bool)

(assert (=> start!350314 m!4223739))

(declare-fun m!4223741 () Bool)

(assert (=> b!3718867 m!4223741))

(declare-fun m!4223743 () Bool)

(assert (=> b!3718867 m!4223743))

(assert (=> b!3718867 m!4223743))

(declare-fun m!4223745 () Bool)

(assert (=> b!3718867 m!4223745))

(declare-fun m!4223747 () Bool)

(assert (=> b!3718867 m!4223747))

(assert (=> b!3718867 m!4223747))

(declare-fun m!4223749 () Bool)

(assert (=> b!3718867 m!4223749))

(declare-fun m!4223751 () Bool)

(assert (=> b!3718872 m!4223751))

(declare-fun m!4223753 () Bool)

(assert (=> b!3718877 m!4223753))

(declare-fun m!4223755 () Bool)

(assert (=> b!3718877 m!4223755))

(declare-fun m!4223757 () Bool)

(assert (=> b!3718877 m!4223757))

(declare-fun m!4223759 () Bool)

(assert (=> b!3718877 m!4223759))

(declare-fun m!4223761 () Bool)

(assert (=> b!3718877 m!4223761))

(declare-fun m!4223763 () Bool)

(assert (=> b!3718879 m!4223763))

(declare-fun m!4223765 () Bool)

(assert (=> b!3718874 m!4223765))

(declare-fun m!4223767 () Bool)

(assert (=> b!3718871 m!4223767))

(declare-fun m!4223769 () Bool)

(assert (=> b!3718869 m!4223769))

(assert (=> b!3718869 m!4223769))

(declare-fun m!4223771 () Bool)

(assert (=> b!3718869 m!4223771))

(assert (=> b!3718869 m!4223771))

(declare-fun m!4223773 () Bool)

(assert (=> b!3718869 m!4223773))

(declare-fun m!4223775 () Bool)

(assert (=> b!3718866 m!4223775))

(declare-fun m!4223777 () Bool)

(assert (=> b!3718865 m!4223777))

(declare-fun m!4223779 () Bool)

(assert (=> b!3718875 m!4223779))

(declare-fun m!4223781 () Bool)

(assert (=> b!3718875 m!4223781))

(declare-fun m!4223783 () Bool)

(assert (=> b!3718875 m!4223783))

(declare-fun m!4223785 () Bool)

(assert (=> b!3718875 m!4223785))

(declare-fun m!4223787 () Bool)

(assert (=> b!3718875 m!4223787))

(declare-fun m!4223789 () Bool)

(assert (=> b!3718875 m!4223789))

(declare-fun m!4223791 () Bool)

(assert (=> b!3718875 m!4223791))

(declare-fun m!4223793 () Bool)

(assert (=> b!3718875 m!4223793))

(assert (=> b!3718875 m!4223781))

(declare-fun m!4223795 () Bool)

(assert (=> b!3718875 m!4223795))

(check-sat (not b!3718870) (not b!3718876) (not b!3718867) (not b!3718865) (not b!3718866) (not b!3718864) (not b!3718869) (not b!3718877) (not b!3718868) (not start!350314) (not b!3718872) (not b!3718874) (not b!3718875) (not b!3718878) tp_is_empty!18733 (not b!3718879) (not b!3718871))
(check-sat)
(get-model)

(declare-fun b!3718899 () Bool)

(declare-fun res!1511615 () Bool)

(declare-fun e!2302460 () Bool)

(assert (=> b!3718899 (=> res!1511615 e!2302460)))

(assert (=> b!3718899 (= res!1511615 (not ((_ is Concat!17130) (regOne!22230 r!26326))))))

(declare-fun e!2302461 () Bool)

(assert (=> b!3718899 (= e!2302461 e!2302460)))

(declare-fun b!3718901 () Bool)

(declare-fun res!1511611 () Bool)

(declare-fun e!2302459 () Bool)

(assert (=> b!3718901 (=> (not res!1511611) (not e!2302459))))

(declare-fun call!269985 () Bool)

(assert (=> b!3718901 (= res!1511611 call!269985)))

(assert (=> b!3718901 (= e!2302461 e!2302459)))

(declare-fun c!642998 () Bool)

(declare-fun c!642999 () Bool)

(declare-fun call!269983 () Bool)

(declare-fun bm!269978 () Bool)

(assert (=> bm!269978 (= call!269983 (validRegex!4966 (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))

(declare-fun bm!269979 () Bool)

(assert (=> bm!269979 (= call!269985 (validRegex!4966 (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))

(declare-fun b!3718902 () Bool)

(declare-fun e!2302458 () Bool)

(assert (=> b!3718902 (= e!2302458 call!269985)))

(declare-fun b!3718903 () Bool)

(declare-fun e!2302455 () Bool)

(assert (=> b!3718903 (= e!2302455 e!2302461)))

(assert (=> b!3718903 (= c!642999 ((_ is Union!10859) (regOne!22230 r!26326)))))

(declare-fun b!3718904 () Bool)

(declare-fun e!2302457 () Bool)

(assert (=> b!3718904 (= e!2302457 e!2302455)))

(assert (=> b!3718904 (= c!642998 ((_ is Star!10859) (regOne!22230 r!26326)))))

(declare-fun b!3718905 () Bool)

(declare-fun e!2302456 () Bool)

(assert (=> b!3718905 (= e!2302455 e!2302456)))

(declare-fun res!1511614 () Bool)

(assert (=> b!3718905 (= res!1511614 (not (nullable!3782 (reg!11188 (regOne!22230 r!26326)))))))

(assert (=> b!3718905 (=> (not res!1511614) (not e!2302456))))

(declare-fun bm!269980 () Bool)

(declare-fun call!269984 () Bool)

(assert (=> bm!269980 (= call!269984 call!269983)))

(declare-fun b!3718900 () Bool)

(assert (=> b!3718900 (= e!2302460 e!2302458)))

(declare-fun res!1511612 () Bool)

(assert (=> b!3718900 (=> (not res!1511612) (not e!2302458))))

(assert (=> b!3718900 (= res!1511612 call!269984)))

(declare-fun d!1088743 () Bool)

(declare-fun res!1511613 () Bool)

(assert (=> d!1088743 (=> res!1511613 e!2302457)))

(assert (=> d!1088743 (= res!1511613 ((_ is ElementMatch!10859) (regOne!22230 r!26326)))))

(assert (=> d!1088743 (= (validRegex!4966 (regOne!22230 r!26326)) e!2302457)))

(declare-fun b!3718906 () Bool)

(assert (=> b!3718906 (= e!2302459 call!269984)))

(declare-fun b!3718907 () Bool)

(assert (=> b!3718907 (= e!2302456 call!269983)))

(assert (= (and d!1088743 (not res!1511613)) b!3718904))

(assert (= (and b!3718904 c!642998) b!3718905))

(assert (= (and b!3718904 (not c!642998)) b!3718903))

(assert (= (and b!3718905 res!1511614) b!3718907))

(assert (= (and b!3718903 c!642999) b!3718901))

(assert (= (and b!3718903 (not c!642999)) b!3718899))

(assert (= (and b!3718901 res!1511611) b!3718906))

(assert (= (and b!3718899 (not res!1511615)) b!3718900))

(assert (= (and b!3718900 res!1511612) b!3718902))

(assert (= (or b!3718906 b!3718900) bm!269980))

(assert (= (or b!3718901 b!3718902) bm!269979))

(assert (= (or b!3718907 bm!269980) bm!269978))

(declare-fun m!4223797 () Bool)

(assert (=> bm!269978 m!4223797))

(declare-fun m!4223799 () Bool)

(assert (=> bm!269979 m!4223799))

(declare-fun m!4223801 () Bool)

(assert (=> b!3718905 m!4223801))

(assert (=> b!3718868 d!1088743))

(declare-fun b!3718963 () Bool)

(declare-fun e!2302503 () Bool)

(declare-fun head!8025 (List!39740) C!21904)

(assert (=> b!3718963 (= e!2302503 (not (= (head!8025 Nil!39616) (c!642993 lt!1297726))))))

(declare-fun b!3718964 () Bool)

(declare-fun res!1511651 () Bool)

(declare-fun e!2302501 () Bool)

(assert (=> b!3718964 (=> (not res!1511651) (not e!2302501))))

(declare-fun call!269997 () Bool)

(assert (=> b!3718964 (= res!1511651 (not call!269997))))

(declare-fun b!3718965 () Bool)

(declare-fun e!2302499 () Bool)

(declare-fun e!2302502 () Bool)

(assert (=> b!3718965 (= e!2302499 e!2302502)))

(declare-fun c!643013 () Bool)

(assert (=> b!3718965 (= c!643013 ((_ is EmptyLang!10859) lt!1297726))))

(declare-fun b!3718966 () Bool)

(declare-fun lt!1297739 () Bool)

(assert (=> b!3718966 (= e!2302499 (= lt!1297739 call!269997))))

(declare-fun d!1088745 () Bool)

(assert (=> d!1088745 e!2302499))

(declare-fun c!643014 () Bool)

(assert (=> d!1088745 (= c!643014 ((_ is EmptyExpr!10859) lt!1297726))))

(declare-fun e!2302498 () Bool)

(assert (=> d!1088745 (= lt!1297739 e!2302498)))

(declare-fun c!643012 () Bool)

(declare-fun isEmpty!23512 (List!39740) Bool)

(assert (=> d!1088745 (= c!643012 (isEmpty!23512 Nil!39616))))

(assert (=> d!1088745 (validRegex!4966 lt!1297726)))

(assert (=> d!1088745 (= (matchR!5304 lt!1297726 Nil!39616) lt!1297739)))

(declare-fun b!3718967 () Bool)

(declare-fun res!1511652 () Bool)

(declare-fun e!2302500 () Bool)

(assert (=> b!3718967 (=> res!1511652 e!2302500)))

(assert (=> b!3718967 (= res!1511652 e!2302501)))

(declare-fun res!1511649 () Bool)

(assert (=> b!3718967 (=> (not res!1511649) (not e!2302501))))

(assert (=> b!3718967 (= res!1511649 lt!1297739)))

(declare-fun b!3718968 () Bool)

(declare-fun res!1511648 () Bool)

(assert (=> b!3718968 (=> (not res!1511648) (not e!2302501))))

(declare-fun tail!5752 (List!39740) List!39740)

(assert (=> b!3718968 (= res!1511648 (isEmpty!23512 (tail!5752 Nil!39616)))))

(declare-fun b!3718969 () Bool)

(declare-fun res!1511654 () Bool)

(assert (=> b!3718969 (=> res!1511654 e!2302503)))

(assert (=> b!3718969 (= res!1511654 (not (isEmpty!23512 (tail!5752 Nil!39616))))))

(declare-fun b!3718970 () Bool)

(assert (=> b!3718970 (= e!2302498 (matchR!5304 (derivativeStep!3324 lt!1297726 (head!8025 Nil!39616)) (tail!5752 Nil!39616)))))

(declare-fun bm!269992 () Bool)

(assert (=> bm!269992 (= call!269997 (isEmpty!23512 Nil!39616))))

(declare-fun b!3718971 () Bool)

(declare-fun e!2302497 () Bool)

(assert (=> b!3718971 (= e!2302500 e!2302497)))

(declare-fun res!1511647 () Bool)

(assert (=> b!3718971 (=> (not res!1511647) (not e!2302497))))

(assert (=> b!3718971 (= res!1511647 (not lt!1297739))))

(declare-fun b!3718972 () Bool)

(assert (=> b!3718972 (= e!2302498 (nullable!3782 lt!1297726))))

(declare-fun b!3718973 () Bool)

(assert (=> b!3718973 (= e!2302502 (not lt!1297739))))

(declare-fun b!3718974 () Bool)

(assert (=> b!3718974 (= e!2302497 e!2302503)))

(declare-fun res!1511650 () Bool)

(assert (=> b!3718974 (=> res!1511650 e!2302503)))

(assert (=> b!3718974 (= res!1511650 call!269997)))

(declare-fun b!3718975 () Bool)

(declare-fun res!1511653 () Bool)

(assert (=> b!3718975 (=> res!1511653 e!2302500)))

(assert (=> b!3718975 (= res!1511653 (not ((_ is ElementMatch!10859) lt!1297726)))))

(assert (=> b!3718975 (= e!2302502 e!2302500)))

(declare-fun b!3718976 () Bool)

(assert (=> b!3718976 (= e!2302501 (= (head!8025 Nil!39616) (c!642993 lt!1297726)))))

(assert (= (and d!1088745 c!643012) b!3718972))

(assert (= (and d!1088745 (not c!643012)) b!3718970))

(assert (= (and d!1088745 c!643014) b!3718966))

(assert (= (and d!1088745 (not c!643014)) b!3718965))

(assert (= (and b!3718965 c!643013) b!3718973))

(assert (= (and b!3718965 (not c!643013)) b!3718975))

(assert (= (and b!3718975 (not res!1511653)) b!3718967))

(assert (= (and b!3718967 res!1511649) b!3718964))

(assert (= (and b!3718964 res!1511651) b!3718968))

(assert (= (and b!3718968 res!1511648) b!3718976))

(assert (= (and b!3718967 (not res!1511652)) b!3718971))

(assert (= (and b!3718971 res!1511647) b!3718974))

(assert (= (and b!3718974 (not res!1511650)) b!3718969))

(assert (= (and b!3718969 (not res!1511654)) b!3718963))

(assert (= (or b!3718966 b!3718964 b!3718974) bm!269992))

(declare-fun m!4223809 () Bool)

(assert (=> d!1088745 m!4223809))

(declare-fun m!4223811 () Bool)

(assert (=> d!1088745 m!4223811))

(declare-fun m!4223813 () Bool)

(assert (=> b!3718976 m!4223813))

(assert (=> b!3718963 m!4223813))

(assert (=> b!3718970 m!4223813))

(assert (=> b!3718970 m!4223813))

(declare-fun m!4223815 () Bool)

(assert (=> b!3718970 m!4223815))

(declare-fun m!4223817 () Bool)

(assert (=> b!3718970 m!4223817))

(assert (=> b!3718970 m!4223815))

(assert (=> b!3718970 m!4223817))

(declare-fun m!4223819 () Bool)

(assert (=> b!3718970 m!4223819))

(assert (=> b!3718969 m!4223817))

(assert (=> b!3718969 m!4223817))

(declare-fun m!4223821 () Bool)

(assert (=> b!3718969 m!4223821))

(assert (=> b!3718968 m!4223817))

(assert (=> b!3718968 m!4223817))

(assert (=> b!3718968 m!4223821))

(assert (=> bm!269992 m!4223809))

(assert (=> b!3718972 m!4223763))

(assert (=> b!3718868 d!1088745))

(declare-fun d!1088751 () Bool)

(declare-fun lt!1297744 () Regex!10859)

(assert (=> d!1088751 (validRegex!4966 lt!1297744)))

(declare-fun e!2302520 () Regex!10859)

(assert (=> d!1088751 (= lt!1297744 e!2302520)))

(declare-fun c!643023 () Bool)

(assert (=> d!1088751 (= c!643023 ((_ is Cons!39616) (_1!22746 lt!1297729)))))

(assert (=> d!1088751 (validRegex!4966 lt!1297728)))

(assert (=> d!1088751 (= (derivative!373 lt!1297728 (_1!22746 lt!1297729)) lt!1297744)))

(declare-fun b!3719009 () Bool)

(assert (=> b!3719009 (= e!2302520 (derivative!373 (derivativeStep!3324 lt!1297728 (h!45036 (_1!22746 lt!1297729))) (t!302423 (_1!22746 lt!1297729))))))

(declare-fun b!3719010 () Bool)

(assert (=> b!3719010 (= e!2302520 lt!1297728)))

(assert (= (and d!1088751 c!643023) b!3719009))

(assert (= (and d!1088751 (not c!643023)) b!3719010))

(declare-fun m!4223823 () Bool)

(assert (=> d!1088751 m!4223823))

(declare-fun m!4223825 () Bool)

(assert (=> d!1088751 m!4223825))

(declare-fun m!4223827 () Bool)

(assert (=> b!3719009 m!4223827))

(assert (=> b!3719009 m!4223827))

(declare-fun m!4223829 () Bool)

(assert (=> b!3719009 m!4223829))

(assert (=> b!3718868 d!1088751))

(declare-fun d!1088753 () Bool)

(assert (=> d!1088753 (= (matchR!5304 lt!1297728 (_1!22746 lt!1297729)) (matchR!5304 (derivative!373 lt!1297728 (_1!22746 lt!1297729)) Nil!39616))))

(declare-fun lt!1297748 () Unit!57516)

(declare-fun choose!22204 (Regex!10859 List!39740) Unit!57516)

(assert (=> d!1088753 (= lt!1297748 (choose!22204 lt!1297728 (_1!22746 lt!1297729)))))

(assert (=> d!1088753 (validRegex!4966 lt!1297728)))

(assert (=> d!1088753 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!250 lt!1297728 (_1!22746 lt!1297729)) lt!1297748)))

(declare-fun bs!574902 () Bool)

(assert (= bs!574902 d!1088753))

(assert (=> bs!574902 m!4223825))

(assert (=> bs!574902 m!4223735))

(assert (=> bs!574902 m!4223735))

(declare-fun m!4223847 () Bool)

(assert (=> bs!574902 m!4223847))

(assert (=> bs!574902 m!4223765))

(declare-fun m!4223849 () Bool)

(assert (=> bs!574902 m!4223849))

(assert (=> b!3718868 d!1088753))

(declare-fun d!1088757 () Bool)

(declare-fun nullableFct!1070 (Regex!10859) Bool)

(assert (=> d!1088757 (= (nullable!3782 lt!1297726) (nullableFct!1070 lt!1297726))))

(declare-fun bs!574903 () Bool)

(assert (= bs!574903 d!1088757))

(declare-fun m!4223851 () Bool)

(assert (=> bs!574903 m!4223851))

(assert (=> b!3718879 d!1088757))

(declare-fun d!1088759 () Bool)

(assert (=> d!1088759 (contains!7952 (usedCharacters!1122 (regOne!22230 r!26326)) c!13576)))

(declare-fun lt!1297754 () Unit!57516)

(declare-fun choose!22205 (Regex!10859 C!21904 List!39740) Unit!57516)

(assert (=> d!1088759 (= lt!1297754 (choose!22205 (regOne!22230 r!26326) c!13576 (_1!22746 lt!1297729)))))

(assert (=> d!1088759 (validRegex!4966 (regOne!22230 r!26326))))

(assert (=> d!1088759 (= (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!16 (regOne!22230 r!26326) c!13576 (_1!22746 lt!1297729)) lt!1297754)))

(declare-fun bs!574905 () Bool)

(assert (= bs!574905 d!1088759))

(assert (=> bs!574905 m!4223747))

(assert (=> bs!574905 m!4223747))

(assert (=> bs!574905 m!4223749))

(declare-fun m!4223857 () Bool)

(assert (=> bs!574905 m!4223857))

(assert (=> bs!574905 m!4223731))

(assert (=> b!3718867 d!1088759))

(declare-fun b!3719047 () Bool)

(declare-fun e!2302539 () List!39740)

(declare-fun e!2302540 () List!39740)

(assert (=> b!3719047 (= e!2302539 e!2302540)))

(declare-fun c!643039 () Bool)

(assert (=> b!3719047 (= c!643039 ((_ is ElementMatch!10859) r!26326))))

(declare-fun bm!270004 () Bool)

(declare-fun call!270010 () List!39740)

(declare-fun call!270009 () List!39740)

(assert (=> bm!270004 (= call!270010 call!270009)))

(declare-fun b!3719048 () Bool)

(declare-fun e!2302542 () List!39740)

(declare-fun call!270012 () List!39740)

(assert (=> b!3719048 (= e!2302542 call!270012)))

(declare-fun b!3719049 () Bool)

(assert (=> b!3719049 (= e!2302542 call!270012)))

(declare-fun bm!270005 () Bool)

(declare-fun c!643042 () Bool)

(declare-fun c!643040 () Bool)

(assert (=> bm!270005 (= call!270009 (usedCharacters!1122 (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))))))

(declare-fun bm!270006 () Bool)

(declare-fun call!270011 () List!39740)

(assert (=> bm!270006 (= call!270011 (usedCharacters!1122 (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))))))

(declare-fun b!3719050 () Bool)

(assert (=> b!3719050 (= e!2302540 (Cons!39616 (c!642993 r!26326) Nil!39616))))

(declare-fun b!3719051 () Bool)

(declare-fun e!2302541 () List!39740)

(assert (=> b!3719051 (= e!2302541 e!2302542)))

(assert (=> b!3719051 (= c!643042 ((_ is Union!10859) r!26326))))

(declare-fun b!3719052 () Bool)

(assert (=> b!3719052 (= e!2302539 Nil!39616)))

(declare-fun bm!270007 () Bool)

(assert (=> bm!270007 (= call!270012 (++!9805 call!270011 call!270010))))

(declare-fun d!1088763 () Bool)

(declare-fun c!643041 () Bool)

(assert (=> d!1088763 (= c!643041 (or ((_ is EmptyExpr!10859) r!26326) ((_ is EmptyLang!10859) r!26326)))))

(assert (=> d!1088763 (= (usedCharacters!1122 r!26326) e!2302539)))

(declare-fun b!3719053 () Bool)

(assert (=> b!3719053 (= c!643040 ((_ is Star!10859) r!26326))))

(assert (=> b!3719053 (= e!2302540 e!2302541)))

(declare-fun b!3719054 () Bool)

(assert (=> b!3719054 (= e!2302541 call!270009)))

(assert (= (and d!1088763 c!643041) b!3719052))

(assert (= (and d!1088763 (not c!643041)) b!3719047))

(assert (= (and b!3719047 c!643039) b!3719050))

(assert (= (and b!3719047 (not c!643039)) b!3719053))

(assert (= (and b!3719053 c!643040) b!3719054))

(assert (= (and b!3719053 (not c!643040)) b!3719051))

(assert (= (and b!3719051 c!643042) b!3719048))

(assert (= (and b!3719051 (not c!643042)) b!3719049))

(assert (= (or b!3719048 b!3719049) bm!270006))

(assert (= (or b!3719048 b!3719049) bm!270004))

(assert (= (or b!3719048 b!3719049) bm!270007))

(assert (= (or b!3719054 bm!270004) bm!270005))

(declare-fun m!4223867 () Bool)

(assert (=> bm!270005 m!4223867))

(declare-fun m!4223869 () Bool)

(assert (=> bm!270006 m!4223869))

(declare-fun m!4223871 () Bool)

(assert (=> bm!270007 m!4223871))

(assert (=> b!3718867 d!1088763))

(declare-fun b!3719055 () Bool)

(declare-fun e!2302543 () List!39740)

(declare-fun e!2302544 () List!39740)

(assert (=> b!3719055 (= e!2302543 e!2302544)))

(declare-fun c!643043 () Bool)

(assert (=> b!3719055 (= c!643043 ((_ is ElementMatch!10859) (regOne!22230 r!26326)))))

(declare-fun bm!270008 () Bool)

(declare-fun call!270014 () List!39740)

(declare-fun call!270013 () List!39740)

(assert (=> bm!270008 (= call!270014 call!270013)))

(declare-fun b!3719056 () Bool)

(declare-fun e!2302546 () List!39740)

(declare-fun call!270016 () List!39740)

(assert (=> b!3719056 (= e!2302546 call!270016)))

(declare-fun b!3719057 () Bool)

(assert (=> b!3719057 (= e!2302546 call!270016)))

(declare-fun c!643044 () Bool)

(declare-fun bm!270009 () Bool)

(declare-fun c!643046 () Bool)

(assert (=> bm!270009 (= call!270013 (usedCharacters!1122 (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(declare-fun bm!270010 () Bool)

(declare-fun call!270015 () List!39740)

(assert (=> bm!270010 (= call!270015 (usedCharacters!1122 (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(declare-fun b!3719058 () Bool)

(assert (=> b!3719058 (= e!2302544 (Cons!39616 (c!642993 (regOne!22230 r!26326)) Nil!39616))))

(declare-fun b!3719059 () Bool)

(declare-fun e!2302545 () List!39740)

(assert (=> b!3719059 (= e!2302545 e!2302546)))

(assert (=> b!3719059 (= c!643046 ((_ is Union!10859) (regOne!22230 r!26326)))))

(declare-fun b!3719060 () Bool)

(assert (=> b!3719060 (= e!2302543 Nil!39616)))

(declare-fun bm!270011 () Bool)

(assert (=> bm!270011 (= call!270016 (++!9805 call!270015 call!270014))))

(declare-fun d!1088769 () Bool)

(declare-fun c!643045 () Bool)

(assert (=> d!1088769 (= c!643045 (or ((_ is EmptyExpr!10859) (regOne!22230 r!26326)) ((_ is EmptyLang!10859) (regOne!22230 r!26326))))))

(assert (=> d!1088769 (= (usedCharacters!1122 (regOne!22230 r!26326)) e!2302543)))

(declare-fun b!3719061 () Bool)

(assert (=> b!3719061 (= c!643044 ((_ is Star!10859) (regOne!22230 r!26326)))))

(assert (=> b!3719061 (= e!2302544 e!2302545)))

(declare-fun b!3719062 () Bool)

(assert (=> b!3719062 (= e!2302545 call!270013)))

(assert (= (and d!1088769 c!643045) b!3719060))

(assert (= (and d!1088769 (not c!643045)) b!3719055))

(assert (= (and b!3719055 c!643043) b!3719058))

(assert (= (and b!3719055 (not c!643043)) b!3719061))

(assert (= (and b!3719061 c!643044) b!3719062))

(assert (= (and b!3719061 (not c!643044)) b!3719059))

(assert (= (and b!3719059 c!643046) b!3719056))

(assert (= (and b!3719059 (not c!643046)) b!3719057))

(assert (= (or b!3719056 b!3719057) bm!270010))

(assert (= (or b!3719056 b!3719057) bm!270008))

(assert (= (or b!3719056 b!3719057) bm!270011))

(assert (= (or b!3719062 bm!270008) bm!270009))

(declare-fun m!4223873 () Bool)

(assert (=> bm!270009 m!4223873))

(declare-fun m!4223875 () Bool)

(assert (=> bm!270010 m!4223875))

(declare-fun m!4223877 () Bool)

(assert (=> bm!270011 m!4223877))

(assert (=> b!3718867 d!1088769))

(declare-fun d!1088771 () Bool)

(declare-fun lt!1297765 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5741 (List!39740) (InoxSet C!21904))

(assert (=> d!1088771 (= lt!1297765 (select (content!5741 (usedCharacters!1122 r!26326)) c!13576))))

(declare-fun e!2302562 () Bool)

(assert (=> d!1088771 (= lt!1297765 e!2302562)))

(declare-fun res!1511683 () Bool)

(assert (=> d!1088771 (=> (not res!1511683) (not e!2302562))))

(assert (=> d!1088771 (= res!1511683 ((_ is Cons!39616) (usedCharacters!1122 r!26326)))))

(assert (=> d!1088771 (= (contains!7952 (usedCharacters!1122 r!26326) c!13576) lt!1297765)))

(declare-fun b!3719087 () Bool)

(declare-fun e!2302561 () Bool)

(assert (=> b!3719087 (= e!2302562 e!2302561)))

(declare-fun res!1511684 () Bool)

(assert (=> b!3719087 (=> res!1511684 e!2302561)))

(assert (=> b!3719087 (= res!1511684 (= (h!45036 (usedCharacters!1122 r!26326)) c!13576))))

(declare-fun b!3719088 () Bool)

(assert (=> b!3719088 (= e!2302561 (contains!7952 (t!302423 (usedCharacters!1122 r!26326)) c!13576))))

(assert (= (and d!1088771 res!1511683) b!3719087))

(assert (= (and b!3719087 (not res!1511684)) b!3719088))

(assert (=> d!1088771 m!4223743))

(declare-fun m!4223879 () Bool)

(assert (=> d!1088771 m!4223879))

(declare-fun m!4223881 () Bool)

(assert (=> d!1088771 m!4223881))

(declare-fun m!4223883 () Bool)

(assert (=> b!3719088 m!4223883))

(assert (=> b!3718867 d!1088771))

(declare-fun d!1088773 () Bool)

(declare-fun lt!1297766 () Bool)

(assert (=> d!1088773 (= lt!1297766 (select (content!5741 (usedCharacters!1122 (regOne!22230 r!26326))) c!13576))))

(declare-fun e!2302564 () Bool)

(assert (=> d!1088773 (= lt!1297766 e!2302564)))

(declare-fun res!1511685 () Bool)

(assert (=> d!1088773 (=> (not res!1511685) (not e!2302564))))

(assert (=> d!1088773 (= res!1511685 ((_ is Cons!39616) (usedCharacters!1122 (regOne!22230 r!26326))))))

(assert (=> d!1088773 (= (contains!7952 (usedCharacters!1122 (regOne!22230 r!26326)) c!13576) lt!1297766)))

(declare-fun b!3719089 () Bool)

(declare-fun e!2302563 () Bool)

(assert (=> b!3719089 (= e!2302564 e!2302563)))

(declare-fun res!1511686 () Bool)

(assert (=> b!3719089 (=> res!1511686 e!2302563)))

(assert (=> b!3719089 (= res!1511686 (= (h!45036 (usedCharacters!1122 (regOne!22230 r!26326))) c!13576))))

(declare-fun b!3719090 () Bool)

(assert (=> b!3719090 (= e!2302563 (contains!7952 (t!302423 (usedCharacters!1122 (regOne!22230 r!26326))) c!13576))))

(assert (= (and d!1088773 res!1511685) b!3719089))

(assert (= (and b!3719089 (not res!1511686)) b!3719090))

(assert (=> d!1088773 m!4223747))

(declare-fun m!4223885 () Bool)

(assert (=> d!1088773 m!4223885))

(declare-fun m!4223887 () Bool)

(assert (=> d!1088773 m!4223887))

(declare-fun m!4223889 () Bool)

(assert (=> b!3719090 m!4223889))

(assert (=> b!3718867 d!1088773))

(declare-fun b!3719091 () Bool)

(declare-fun e!2302571 () Bool)

(assert (=> b!3719091 (= e!2302571 (not (= (head!8025 tl!3933) (c!642993 EmptyLang!10859))))))

(declare-fun b!3719092 () Bool)

(declare-fun res!1511691 () Bool)

(declare-fun e!2302569 () Bool)

(assert (=> b!3719092 (=> (not res!1511691) (not e!2302569))))

(declare-fun call!270025 () Bool)

(assert (=> b!3719092 (= res!1511691 (not call!270025))))

(declare-fun b!3719093 () Bool)

(declare-fun e!2302567 () Bool)

(declare-fun e!2302570 () Bool)

(assert (=> b!3719093 (= e!2302567 e!2302570)))

(declare-fun c!643058 () Bool)

(assert (=> b!3719093 (= c!643058 ((_ is EmptyLang!10859) EmptyLang!10859))))

(declare-fun b!3719094 () Bool)

(declare-fun lt!1297767 () Bool)

(assert (=> b!3719094 (= e!2302567 (= lt!1297767 call!270025))))

(declare-fun d!1088775 () Bool)

(assert (=> d!1088775 e!2302567))

(declare-fun c!643059 () Bool)

(assert (=> d!1088775 (= c!643059 ((_ is EmptyExpr!10859) EmptyLang!10859))))

(declare-fun e!2302566 () Bool)

(assert (=> d!1088775 (= lt!1297767 e!2302566)))

(declare-fun c!643057 () Bool)

(assert (=> d!1088775 (= c!643057 (isEmpty!23512 tl!3933))))

(assert (=> d!1088775 (validRegex!4966 EmptyLang!10859)))

(assert (=> d!1088775 (= (matchR!5304 EmptyLang!10859 tl!3933) lt!1297767)))

(declare-fun b!3719095 () Bool)

(declare-fun res!1511692 () Bool)

(declare-fun e!2302568 () Bool)

(assert (=> b!3719095 (=> res!1511692 e!2302568)))

(assert (=> b!3719095 (= res!1511692 e!2302569)))

(declare-fun res!1511689 () Bool)

(assert (=> b!3719095 (=> (not res!1511689) (not e!2302569))))

(assert (=> b!3719095 (= res!1511689 lt!1297767)))

(declare-fun b!3719096 () Bool)

(declare-fun res!1511688 () Bool)

(assert (=> b!3719096 (=> (not res!1511688) (not e!2302569))))

(assert (=> b!3719096 (= res!1511688 (isEmpty!23512 (tail!5752 tl!3933)))))

(declare-fun b!3719097 () Bool)

(declare-fun res!1511694 () Bool)

(assert (=> b!3719097 (=> res!1511694 e!2302571)))

(assert (=> b!3719097 (= res!1511694 (not (isEmpty!23512 (tail!5752 tl!3933))))))

(declare-fun b!3719098 () Bool)

(assert (=> b!3719098 (= e!2302566 (matchR!5304 (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933)) (tail!5752 tl!3933)))))

(declare-fun bm!270020 () Bool)

(assert (=> bm!270020 (= call!270025 (isEmpty!23512 tl!3933))))

(declare-fun b!3719099 () Bool)

(declare-fun e!2302565 () Bool)

(assert (=> b!3719099 (= e!2302568 e!2302565)))

(declare-fun res!1511687 () Bool)

(assert (=> b!3719099 (=> (not res!1511687) (not e!2302565))))

(assert (=> b!3719099 (= res!1511687 (not lt!1297767))))

(declare-fun b!3719100 () Bool)

(assert (=> b!3719100 (= e!2302566 (nullable!3782 EmptyLang!10859))))

(declare-fun b!3719101 () Bool)

(assert (=> b!3719101 (= e!2302570 (not lt!1297767))))

(declare-fun b!3719102 () Bool)

(assert (=> b!3719102 (= e!2302565 e!2302571)))

(declare-fun res!1511690 () Bool)

(assert (=> b!3719102 (=> res!1511690 e!2302571)))

(assert (=> b!3719102 (= res!1511690 call!270025)))

(declare-fun b!3719103 () Bool)

(declare-fun res!1511693 () Bool)

(assert (=> b!3719103 (=> res!1511693 e!2302568)))

(assert (=> b!3719103 (= res!1511693 (not ((_ is ElementMatch!10859) EmptyLang!10859)))))

(assert (=> b!3719103 (= e!2302570 e!2302568)))

(declare-fun b!3719104 () Bool)

(assert (=> b!3719104 (= e!2302569 (= (head!8025 tl!3933) (c!642993 EmptyLang!10859)))))

(assert (= (and d!1088775 c!643057) b!3719100))

(assert (= (and d!1088775 (not c!643057)) b!3719098))

(assert (= (and d!1088775 c!643059) b!3719094))

(assert (= (and d!1088775 (not c!643059)) b!3719093))

(assert (= (and b!3719093 c!643058) b!3719101))

(assert (= (and b!3719093 (not c!643058)) b!3719103))

(assert (= (and b!3719103 (not res!1511693)) b!3719095))

(assert (= (and b!3719095 res!1511689) b!3719092))

(assert (= (and b!3719092 res!1511691) b!3719096))

(assert (= (and b!3719096 res!1511688) b!3719104))

(assert (= (and b!3719095 (not res!1511692)) b!3719099))

(assert (= (and b!3719099 res!1511687) b!3719102))

(assert (= (and b!3719102 (not res!1511690)) b!3719097))

(assert (= (and b!3719097 (not res!1511694)) b!3719091))

(assert (= (or b!3719094 b!3719092 b!3719102) bm!270020))

(declare-fun m!4223891 () Bool)

(assert (=> d!1088775 m!4223891))

(declare-fun m!4223893 () Bool)

(assert (=> d!1088775 m!4223893))

(declare-fun m!4223895 () Bool)

(assert (=> b!3719104 m!4223895))

(assert (=> b!3719091 m!4223895))

(assert (=> b!3719098 m!4223895))

(assert (=> b!3719098 m!4223895))

(declare-fun m!4223897 () Bool)

(assert (=> b!3719098 m!4223897))

(declare-fun m!4223899 () Bool)

(assert (=> b!3719098 m!4223899))

(assert (=> b!3719098 m!4223897))

(assert (=> b!3719098 m!4223899))

(declare-fun m!4223901 () Bool)

(assert (=> b!3719098 m!4223901))

(assert (=> b!3719097 m!4223899))

(assert (=> b!3719097 m!4223899))

(declare-fun m!4223903 () Bool)

(assert (=> b!3719097 m!4223903))

(assert (=> b!3719096 m!4223899))

(assert (=> b!3719096 m!4223899))

(assert (=> b!3719096 m!4223903))

(assert (=> bm!270020 m!4223891))

(declare-fun m!4223905 () Bool)

(assert (=> b!3719100 m!4223905))

(assert (=> b!3718866 d!1088775))

(declare-fun d!1088777 () Bool)

(assert (=> d!1088777 (isDefined!6751 (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) Nil!39616 tl!3933 tl!3933))))

(declare-fun lt!1297772 () Unit!57516)

(declare-fun choose!22206 (Regex!10859 Regex!10859 List!39740) Unit!57516)

(assert (=> d!1088777 (= lt!1297772 (choose!22206 lt!1297728 (regTwo!22230 r!26326) tl!3933))))

(assert (=> d!1088777 (validRegex!4966 lt!1297728)))

(assert (=> d!1088777 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!234 lt!1297728 (regTwo!22230 r!26326) tl!3933) lt!1297772)))

(declare-fun bs!574907 () Bool)

(assert (= bs!574907 d!1088777))

(assert (=> bs!574907 m!4223761))

(assert (=> bs!574907 m!4223761))

(declare-fun m!4223931 () Bool)

(assert (=> bs!574907 m!4223931))

(declare-fun m!4223933 () Bool)

(assert (=> bs!574907 m!4223933))

(assert (=> bs!574907 m!4223825))

(assert (=> b!3718877 d!1088777))

(declare-fun b!3719288 () Bool)

(declare-fun e!2302676 () Option!8574)

(declare-fun e!2302674 () Option!8574)

(assert (=> b!3719288 (= e!2302676 e!2302674)))

(declare-fun c!643114 () Bool)

(assert (=> b!3719288 (= c!643114 ((_ is Nil!39616) tl!3933))))

(declare-fun b!3719289 () Bool)

(declare-fun e!2302677 () Bool)

(assert (=> b!3719289 (= e!2302677 (matchR!5304 (regTwo!22230 r!26326) tl!3933))))

(declare-fun b!3719290 () Bool)

(assert (=> b!3719290 (= e!2302674 None!8573)))

(declare-fun b!3719291 () Bool)

(declare-fun e!2302675 () Bool)

(declare-fun lt!1297803 () Option!8574)

(assert (=> b!3719291 (= e!2302675 (not (isDefined!6751 lt!1297803)))))

(declare-fun b!3719292 () Bool)

(assert (=> b!3719292 (= e!2302676 (Some!8573 (tuple2!39225 Nil!39616 tl!3933)))))

(declare-fun b!3719293 () Bool)

(declare-fun res!1511775 () Bool)

(declare-fun e!2302678 () Bool)

(assert (=> b!3719293 (=> (not res!1511775) (not e!2302678))))

(assert (=> b!3719293 (= res!1511775 (matchR!5304 lt!1297728 (_1!22746 (get!13204 lt!1297803))))))

(declare-fun d!1088783 () Bool)

(assert (=> d!1088783 e!2302675))

(declare-fun res!1511772 () Bool)

(assert (=> d!1088783 (=> res!1511772 e!2302675)))

(assert (=> d!1088783 (= res!1511772 e!2302678)))

(declare-fun res!1511776 () Bool)

(assert (=> d!1088783 (=> (not res!1511776) (not e!2302678))))

(assert (=> d!1088783 (= res!1511776 (isDefined!6751 lt!1297803))))

(assert (=> d!1088783 (= lt!1297803 e!2302676)))

(declare-fun c!643115 () Bool)

(assert (=> d!1088783 (= c!643115 e!2302677)))

(declare-fun res!1511773 () Bool)

(assert (=> d!1088783 (=> (not res!1511773) (not e!2302677))))

(assert (=> d!1088783 (= res!1511773 (matchR!5304 lt!1297728 Nil!39616))))

(assert (=> d!1088783 (validRegex!4966 lt!1297728)))

(assert (=> d!1088783 (= (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) Nil!39616 tl!3933 tl!3933) lt!1297803)))

(declare-fun b!3719294 () Bool)

(declare-fun res!1511774 () Bool)

(assert (=> b!3719294 (=> (not res!1511774) (not e!2302678))))

(assert (=> b!3719294 (= res!1511774 (matchR!5304 (regTwo!22230 r!26326) (_2!22746 (get!13204 lt!1297803))))))

(declare-fun b!3719295 () Bool)

(assert (=> b!3719295 (= e!2302678 (= (++!9805 (_1!22746 (get!13204 lt!1297803)) (_2!22746 (get!13204 lt!1297803))) tl!3933))))

(declare-fun b!3719296 () Bool)

(declare-fun lt!1297804 () Unit!57516)

(declare-fun lt!1297802 () Unit!57516)

(assert (=> b!3719296 (= lt!1297804 lt!1297802)))

(assert (=> b!3719296 (= (++!9805 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (t!302423 tl!3933)) tl!3933)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1197 (List!39740 C!21904 List!39740 List!39740) Unit!57516)

(assert (=> b!3719296 (= lt!1297802 (lemmaMoveElementToOtherListKeepsConcatEq!1197 Nil!39616 (h!45036 tl!3933) (t!302423 tl!3933) tl!3933))))

(assert (=> b!3719296 (= e!2302674 (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (t!302423 tl!3933) tl!3933))))

(assert (= (and d!1088783 res!1511773) b!3719289))

(assert (= (and d!1088783 c!643115) b!3719292))

(assert (= (and d!1088783 (not c!643115)) b!3719288))

(assert (= (and b!3719288 c!643114) b!3719290))

(assert (= (and b!3719288 (not c!643114)) b!3719296))

(assert (= (and d!1088783 res!1511776) b!3719293))

(assert (= (and b!3719293 res!1511775) b!3719294))

(assert (= (and b!3719294 res!1511774) b!3719295))

(assert (= (and d!1088783 (not res!1511772)) b!3719291))

(declare-fun m!4224061 () Bool)

(assert (=> b!3719296 m!4224061))

(assert (=> b!3719296 m!4224061))

(declare-fun m!4224063 () Bool)

(assert (=> b!3719296 m!4224063))

(declare-fun m!4224065 () Bool)

(assert (=> b!3719296 m!4224065))

(assert (=> b!3719296 m!4224061))

(declare-fun m!4224067 () Bool)

(assert (=> b!3719296 m!4224067))

(declare-fun m!4224069 () Bool)

(assert (=> b!3719289 m!4224069))

(declare-fun m!4224071 () Bool)

(assert (=> b!3719295 m!4224071))

(declare-fun m!4224073 () Bool)

(assert (=> b!3719295 m!4224073))

(assert (=> b!3719293 m!4224071))

(declare-fun m!4224075 () Bool)

(assert (=> b!3719293 m!4224075))

(declare-fun m!4224077 () Bool)

(assert (=> d!1088783 m!4224077))

(declare-fun m!4224079 () Bool)

(assert (=> d!1088783 m!4224079))

(assert (=> d!1088783 m!4223825))

(assert (=> b!3719291 m!4224077))

(assert (=> b!3719294 m!4224071))

(declare-fun m!4224081 () Bool)

(assert (=> b!3719294 m!4224081))

(assert (=> b!3718877 d!1088783))

(declare-fun b!3719317 () Bool)

(declare-fun e!2302690 () List!39740)

(assert (=> b!3719317 (= e!2302690 (_2!22746 lt!1297729))))

(declare-fun b!3719320 () Bool)

(declare-fun e!2302689 () Bool)

(declare-fun lt!1297810 () List!39740)

(assert (=> b!3719320 (= e!2302689 (or (not (= (_2!22746 lt!1297729) Nil!39616)) (= lt!1297810 (_1!22746 lt!1297729))))))

(declare-fun b!3719319 () Bool)

(declare-fun res!1511788 () Bool)

(assert (=> b!3719319 (=> (not res!1511788) (not e!2302689))))

(declare-fun size!30023 (List!39740) Int)

(assert (=> b!3719319 (= res!1511788 (= (size!30023 lt!1297810) (+ (size!30023 (_1!22746 lt!1297729)) (size!30023 (_2!22746 lt!1297729)))))))

(declare-fun b!3719318 () Bool)

(assert (=> b!3719318 (= e!2302690 (Cons!39616 (h!45036 (_1!22746 lt!1297729)) (++!9805 (t!302423 (_1!22746 lt!1297729)) (_2!22746 lt!1297729))))))

(declare-fun d!1088829 () Bool)

(assert (=> d!1088829 e!2302689))

(declare-fun res!1511787 () Bool)

(assert (=> d!1088829 (=> (not res!1511787) (not e!2302689))))

(assert (=> d!1088829 (= res!1511787 (= (content!5741 lt!1297810) ((_ map or) (content!5741 (_1!22746 lt!1297729)) (content!5741 (_2!22746 lt!1297729)))))))

(assert (=> d!1088829 (= lt!1297810 e!2302690)))

(declare-fun c!643121 () Bool)

(assert (=> d!1088829 (= c!643121 ((_ is Nil!39616) (_1!22746 lt!1297729)))))

(assert (=> d!1088829 (= (++!9805 (_1!22746 lt!1297729) (_2!22746 lt!1297729)) lt!1297810)))

(assert (= (and d!1088829 c!643121) b!3719317))

(assert (= (and d!1088829 (not c!643121)) b!3719318))

(assert (= (and d!1088829 res!1511787) b!3719319))

(assert (= (and b!3719319 res!1511788) b!3719320))

(declare-fun m!4224097 () Bool)

(assert (=> b!3719319 m!4224097))

(declare-fun m!4224099 () Bool)

(assert (=> b!3719319 m!4224099))

(declare-fun m!4224101 () Bool)

(assert (=> b!3719319 m!4224101))

(declare-fun m!4224103 () Bool)

(assert (=> b!3719318 m!4224103))

(declare-fun m!4224105 () Bool)

(assert (=> d!1088829 m!4224105))

(declare-fun m!4224107 () Bool)

(assert (=> d!1088829 m!4224107))

(declare-fun m!4224109 () Bool)

(assert (=> d!1088829 m!4224109))

(assert (=> b!3718877 d!1088829))

(declare-fun d!1088835 () Bool)

(declare-fun isEmpty!23513 (Option!8574) Bool)

(assert (=> d!1088835 (= (isDefined!6751 lt!1297732) (not (isEmpty!23513 lt!1297732)))))

(declare-fun bs!574915 () Bool)

(assert (= bs!574915 d!1088835))

(declare-fun m!4224111 () Bool)

(assert (=> bs!574915 m!4224111))

(assert (=> b!3718877 d!1088835))

(declare-fun d!1088837 () Bool)

(assert (=> d!1088837 (= (get!13204 lt!1297732) (v!38595 lt!1297732))))

(assert (=> b!3718877 d!1088837))

(declare-fun d!1088839 () Bool)

(assert (=> d!1088839 (= (nullable!3782 (regOne!22230 r!26326)) (nullableFct!1070 (regOne!22230 r!26326)))))

(declare-fun bs!574916 () Bool)

(assert (= bs!574916 d!1088839))

(declare-fun m!4224113 () Bool)

(assert (=> bs!574916 m!4224113))

(assert (=> b!3718871 d!1088839))

(declare-fun d!1088841 () Bool)

(assert (=> d!1088841 (= (nullable!3782 (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)) (nullableFct!1070 (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)))))

(declare-fun bs!574917 () Bool)

(assert (= bs!574917 d!1088841))

(assert (=> bs!574917 m!4223771))

(declare-fun m!4224115 () Bool)

(assert (=> bs!574917 m!4224115))

(assert (=> b!3718869 d!1088841))

(declare-fun d!1088843 () Bool)

(declare-fun lt!1297813 () Regex!10859)

(assert (=> d!1088843 (validRegex!4966 lt!1297813)))

(declare-fun e!2302691 () Regex!10859)

(assert (=> d!1088843 (= lt!1297813 e!2302691)))

(declare-fun c!643122 () Bool)

(assert (=> d!1088843 (= c!643122 ((_ is Cons!39616) tl!3933))))

(assert (=> d!1088843 (validRegex!4966 (derivativeStep!3324 r!26326 c!13576))))

(assert (=> d!1088843 (= (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933) lt!1297813)))

(declare-fun b!3719323 () Bool)

(assert (=> b!3719323 (= e!2302691 (derivative!373 (derivativeStep!3324 (derivativeStep!3324 r!26326 c!13576) (h!45036 tl!3933)) (t!302423 tl!3933)))))

(declare-fun b!3719324 () Bool)

(assert (=> b!3719324 (= e!2302691 (derivativeStep!3324 r!26326 c!13576))))

(assert (= (and d!1088843 c!643122) b!3719323))

(assert (= (and d!1088843 (not c!643122)) b!3719324))

(declare-fun m!4224117 () Bool)

(assert (=> d!1088843 m!4224117))

(assert (=> d!1088843 m!4223769))

(declare-fun m!4224119 () Bool)

(assert (=> d!1088843 m!4224119))

(assert (=> b!3719323 m!4223769))

(declare-fun m!4224121 () Bool)

(assert (=> b!3719323 m!4224121))

(assert (=> b!3719323 m!4224121))

(declare-fun m!4224123 () Bool)

(assert (=> b!3719323 m!4224123))

(assert (=> b!3718869 d!1088843))

(declare-fun b!3719419 () Bool)

(declare-fun e!2302735 () Regex!10859)

(declare-fun e!2302738 () Regex!10859)

(assert (=> b!3719419 (= e!2302735 e!2302738)))

(declare-fun c!643146 () Bool)

(assert (=> b!3719419 (= c!643146 ((_ is Star!10859) r!26326))))

(declare-fun b!3719420 () Bool)

(declare-fun call!270070 () Regex!10859)

(assert (=> b!3719420 (= e!2302738 (Concat!17130 call!270070 r!26326))))

(declare-fun bm!270063 () Bool)

(declare-fun call!270071 () Regex!10859)

(assert (=> bm!270063 (= call!270070 call!270071)))

(declare-fun b!3719421 () Bool)

(declare-fun e!2302736 () Regex!10859)

(declare-fun e!2302734 () Regex!10859)

(assert (=> b!3719421 (= e!2302736 e!2302734)))

(declare-fun c!643142 () Bool)

(assert (=> b!3719421 (= c!643142 ((_ is ElementMatch!10859) r!26326))))

(declare-fun b!3719422 () Bool)

(assert (=> b!3719422 (= e!2302736 EmptyLang!10859)))

(declare-fun bm!270064 () Bool)

(declare-fun call!270069 () Regex!10859)

(declare-fun call!270068 () Regex!10859)

(assert (=> bm!270064 (= call!270069 call!270068)))

(declare-fun e!2302737 () Regex!10859)

(declare-fun b!3719423 () Bool)

(assert (=> b!3719423 (= e!2302737 (Union!10859 (Concat!17130 call!270069 (regTwo!22230 r!26326)) call!270070))))

(declare-fun b!3719424 () Bool)

(declare-fun c!643144 () Bool)

(assert (=> b!3719424 (= c!643144 ((_ is Union!10859) r!26326))))

(assert (=> b!3719424 (= e!2302734 e!2302735)))

(declare-fun bm!270065 () Bool)

(assert (=> bm!270065 (= call!270068 (derivativeStep!3324 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)) c!13576))))

(declare-fun b!3719425 () Bool)

(assert (=> b!3719425 (= e!2302734 (ite (= c!13576 (c!642993 r!26326)) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719426 () Bool)

(assert (=> b!3719426 (= e!2302737 (Union!10859 (Concat!17130 call!270069 (regTwo!22230 r!26326)) EmptyLang!10859))))

(declare-fun bm!270066 () Bool)

(assert (=> bm!270066 (= call!270071 (derivativeStep!3324 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))) c!13576))))

(declare-fun b!3719428 () Bool)

(assert (=> b!3719428 (= e!2302735 (Union!10859 call!270068 call!270071))))

(declare-fun d!1088845 () Bool)

(declare-fun lt!1297824 () Regex!10859)

(assert (=> d!1088845 (validRegex!4966 lt!1297824)))

(assert (=> d!1088845 (= lt!1297824 e!2302736)))

(declare-fun c!643145 () Bool)

(assert (=> d!1088845 (= c!643145 (or ((_ is EmptyExpr!10859) r!26326) ((_ is EmptyLang!10859) r!26326)))))

(assert (=> d!1088845 (validRegex!4966 r!26326)))

(assert (=> d!1088845 (= (derivativeStep!3324 r!26326 c!13576) lt!1297824)))

(declare-fun b!3719427 () Bool)

(declare-fun c!643143 () Bool)

(assert (=> b!3719427 (= c!643143 (nullable!3782 (regOne!22230 r!26326)))))

(assert (=> b!3719427 (= e!2302738 e!2302737)))

(assert (= (and d!1088845 c!643145) b!3719422))

(assert (= (and d!1088845 (not c!643145)) b!3719421))

(assert (= (and b!3719421 c!643142) b!3719425))

(assert (= (and b!3719421 (not c!643142)) b!3719424))

(assert (= (and b!3719424 c!643144) b!3719428))

(assert (= (and b!3719424 (not c!643144)) b!3719419))

(assert (= (and b!3719419 c!643146) b!3719420))

(assert (= (and b!3719419 (not c!643146)) b!3719427))

(assert (= (and b!3719427 c!643143) b!3719423))

(assert (= (and b!3719427 (not c!643143)) b!3719426))

(assert (= (or b!3719423 b!3719426) bm!270064))

(assert (= (or b!3719420 b!3719423) bm!270063))

(assert (= (or b!3719428 bm!270063) bm!270066))

(assert (= (or b!3719428 bm!270064) bm!270065))

(declare-fun m!4224161 () Bool)

(assert (=> bm!270065 m!4224161))

(declare-fun m!4224163 () Bool)

(assert (=> bm!270066 m!4224163))

(declare-fun m!4224165 () Bool)

(assert (=> d!1088845 m!4224165))

(assert (=> d!1088845 m!4223739))

(assert (=> b!3719427 m!4223767))

(assert (=> b!3718869 d!1088845))

(declare-fun b!3719429 () Bool)

(declare-fun res!1511816 () Bool)

(declare-fun e!2302744 () Bool)

(assert (=> b!3719429 (=> res!1511816 e!2302744)))

(assert (=> b!3719429 (= res!1511816 (not ((_ is Concat!17130) r!26326)))))

(declare-fun e!2302745 () Bool)

(assert (=> b!3719429 (= e!2302745 e!2302744)))

(declare-fun b!3719431 () Bool)

(declare-fun res!1511812 () Bool)

(declare-fun e!2302743 () Bool)

(assert (=> b!3719431 (=> (not res!1511812) (not e!2302743))))

(declare-fun call!270074 () Bool)

(assert (=> b!3719431 (= res!1511812 call!270074)))

(assert (=> b!3719431 (= e!2302745 e!2302743)))

(declare-fun bm!270067 () Bool)

(declare-fun c!643147 () Bool)

(declare-fun call!270072 () Bool)

(declare-fun c!643148 () Bool)

(assert (=> bm!270067 (= call!270072 (validRegex!4966 (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))))))

(declare-fun bm!270068 () Bool)

(assert (=> bm!270068 (= call!270074 (validRegex!4966 (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))))))

(declare-fun b!3719432 () Bool)

(declare-fun e!2302742 () Bool)

(assert (=> b!3719432 (= e!2302742 call!270074)))

(declare-fun b!3719433 () Bool)

(declare-fun e!2302739 () Bool)

(assert (=> b!3719433 (= e!2302739 e!2302745)))

(assert (=> b!3719433 (= c!643148 ((_ is Union!10859) r!26326))))

(declare-fun b!3719434 () Bool)

(declare-fun e!2302741 () Bool)

(assert (=> b!3719434 (= e!2302741 e!2302739)))

(assert (=> b!3719434 (= c!643147 ((_ is Star!10859) r!26326))))

(declare-fun b!3719435 () Bool)

(declare-fun e!2302740 () Bool)

(assert (=> b!3719435 (= e!2302739 e!2302740)))

(declare-fun res!1511815 () Bool)

(assert (=> b!3719435 (= res!1511815 (not (nullable!3782 (reg!11188 r!26326))))))

(assert (=> b!3719435 (=> (not res!1511815) (not e!2302740))))

(declare-fun bm!270069 () Bool)

(declare-fun call!270073 () Bool)

(assert (=> bm!270069 (= call!270073 call!270072)))

(declare-fun b!3719430 () Bool)

(assert (=> b!3719430 (= e!2302744 e!2302742)))

(declare-fun res!1511813 () Bool)

(assert (=> b!3719430 (=> (not res!1511813) (not e!2302742))))

(assert (=> b!3719430 (= res!1511813 call!270073)))

(declare-fun d!1088849 () Bool)

(declare-fun res!1511814 () Bool)

(assert (=> d!1088849 (=> res!1511814 e!2302741)))

(assert (=> d!1088849 (= res!1511814 ((_ is ElementMatch!10859) r!26326))))

(assert (=> d!1088849 (= (validRegex!4966 r!26326) e!2302741)))

(declare-fun b!3719436 () Bool)

(assert (=> b!3719436 (= e!2302743 call!270073)))

(declare-fun b!3719437 () Bool)

(assert (=> b!3719437 (= e!2302740 call!270072)))

(assert (= (and d!1088849 (not res!1511814)) b!3719434))

(assert (= (and b!3719434 c!643147) b!3719435))

(assert (= (and b!3719434 (not c!643147)) b!3719433))

(assert (= (and b!3719435 res!1511815) b!3719437))

(assert (= (and b!3719433 c!643148) b!3719431))

(assert (= (and b!3719433 (not c!643148)) b!3719429))

(assert (= (and b!3719431 res!1511812) b!3719436))

(assert (= (and b!3719429 (not res!1511816)) b!3719430))

(assert (= (and b!3719430 res!1511813) b!3719432))

(assert (= (or b!3719436 b!3719430) bm!270069))

(assert (= (or b!3719431 b!3719432) bm!270068))

(assert (= (or b!3719437 bm!270069) bm!270067))

(declare-fun m!4224167 () Bool)

(assert (=> bm!270067 m!4224167))

(declare-fun m!4224169 () Bool)

(assert (=> bm!270068 m!4224169))

(declare-fun m!4224171 () Bool)

(assert (=> b!3719435 m!4224171))

(assert (=> start!350314 d!1088849))

(declare-fun e!2302752 () Bool)

(declare-fun b!3719438 () Bool)

(assert (=> b!3719438 (= e!2302752 (not (= (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729))) (c!642993 (regOne!22230 r!26326)))))))

(declare-fun b!3719439 () Bool)

(declare-fun res!1511821 () Bool)

(declare-fun e!2302750 () Bool)

(assert (=> b!3719439 (=> (not res!1511821) (not e!2302750))))

(declare-fun call!270075 () Bool)

(assert (=> b!3719439 (= res!1511821 (not call!270075))))

(declare-fun b!3719440 () Bool)

(declare-fun e!2302748 () Bool)

(declare-fun e!2302751 () Bool)

(assert (=> b!3719440 (= e!2302748 e!2302751)))

(declare-fun c!643150 () Bool)

(assert (=> b!3719440 (= c!643150 ((_ is EmptyLang!10859) (regOne!22230 r!26326)))))

(declare-fun b!3719441 () Bool)

(declare-fun lt!1297825 () Bool)

(assert (=> b!3719441 (= e!2302748 (= lt!1297825 call!270075))))

(declare-fun d!1088851 () Bool)

(assert (=> d!1088851 e!2302748))

(declare-fun c!643151 () Bool)

(assert (=> d!1088851 (= c!643151 ((_ is EmptyExpr!10859) (regOne!22230 r!26326)))))

(declare-fun e!2302747 () Bool)

(assert (=> d!1088851 (= lt!1297825 e!2302747)))

(declare-fun c!643149 () Bool)

(assert (=> d!1088851 (= c!643149 (isEmpty!23512 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))

(assert (=> d!1088851 (validRegex!4966 (regOne!22230 r!26326))))

(assert (=> d!1088851 (= (matchR!5304 (regOne!22230 r!26326) (Cons!39616 c!13576 (_1!22746 lt!1297729))) lt!1297825)))

(declare-fun b!3719442 () Bool)

(declare-fun res!1511822 () Bool)

(declare-fun e!2302749 () Bool)

(assert (=> b!3719442 (=> res!1511822 e!2302749)))

(assert (=> b!3719442 (= res!1511822 e!2302750)))

(declare-fun res!1511819 () Bool)

(assert (=> b!3719442 (=> (not res!1511819) (not e!2302750))))

(assert (=> b!3719442 (= res!1511819 lt!1297825)))

(declare-fun b!3719443 () Bool)

(declare-fun res!1511818 () Bool)

(assert (=> b!3719443 (=> (not res!1511818) (not e!2302750))))

(assert (=> b!3719443 (= res!1511818 (isEmpty!23512 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(declare-fun b!3719444 () Bool)

(declare-fun res!1511824 () Bool)

(assert (=> b!3719444 (=> res!1511824 e!2302752)))

(assert (=> b!3719444 (= res!1511824 (not (isEmpty!23512 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))))

(declare-fun b!3719445 () Bool)

(assert (=> b!3719445 (= e!2302747 (matchR!5304 (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))) (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(declare-fun bm!270070 () Bool)

(assert (=> bm!270070 (= call!270075 (isEmpty!23512 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))

(declare-fun b!3719446 () Bool)

(declare-fun e!2302746 () Bool)

(assert (=> b!3719446 (= e!2302749 e!2302746)))

(declare-fun res!1511817 () Bool)

(assert (=> b!3719446 (=> (not res!1511817) (not e!2302746))))

(assert (=> b!3719446 (= res!1511817 (not lt!1297825))))

(declare-fun b!3719447 () Bool)

(assert (=> b!3719447 (= e!2302747 (nullable!3782 (regOne!22230 r!26326)))))

(declare-fun b!3719448 () Bool)

(assert (=> b!3719448 (= e!2302751 (not lt!1297825))))

(declare-fun b!3719449 () Bool)

(assert (=> b!3719449 (= e!2302746 e!2302752)))

(declare-fun res!1511820 () Bool)

(assert (=> b!3719449 (=> res!1511820 e!2302752)))

(assert (=> b!3719449 (= res!1511820 call!270075)))

(declare-fun b!3719450 () Bool)

(declare-fun res!1511823 () Bool)

(assert (=> b!3719450 (=> res!1511823 e!2302749)))

(assert (=> b!3719450 (= res!1511823 (not ((_ is ElementMatch!10859) (regOne!22230 r!26326))))))

(assert (=> b!3719450 (= e!2302751 e!2302749)))

(declare-fun b!3719451 () Bool)

(assert (=> b!3719451 (= e!2302750 (= (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729))) (c!642993 (regOne!22230 r!26326))))))

(assert (= (and d!1088851 c!643149) b!3719447))

(assert (= (and d!1088851 (not c!643149)) b!3719445))

(assert (= (and d!1088851 c!643151) b!3719441))

(assert (= (and d!1088851 (not c!643151)) b!3719440))

(assert (= (and b!3719440 c!643150) b!3719448))

(assert (= (and b!3719440 (not c!643150)) b!3719450))

(assert (= (and b!3719450 (not res!1511823)) b!3719442))

(assert (= (and b!3719442 res!1511819) b!3719439))

(assert (= (and b!3719439 res!1511821) b!3719443))

(assert (= (and b!3719443 res!1511818) b!3719451))

(assert (= (and b!3719442 (not res!1511822)) b!3719446))

(assert (= (and b!3719446 res!1511817) b!3719449))

(assert (= (and b!3719449 (not res!1511820)) b!3719444))

(assert (= (and b!3719444 (not res!1511824)) b!3719438))

(assert (= (or b!3719441 b!3719439 b!3719449) bm!270070))

(declare-fun m!4224173 () Bool)

(assert (=> d!1088851 m!4224173))

(assert (=> d!1088851 m!4223731))

(declare-fun m!4224175 () Bool)

(assert (=> b!3719451 m!4224175))

(assert (=> b!3719438 m!4224175))

(assert (=> b!3719445 m!4224175))

(assert (=> b!3719445 m!4224175))

(declare-fun m!4224177 () Bool)

(assert (=> b!3719445 m!4224177))

(declare-fun m!4224179 () Bool)

(assert (=> b!3719445 m!4224179))

(assert (=> b!3719445 m!4224177))

(assert (=> b!3719445 m!4224179))

(declare-fun m!4224181 () Bool)

(assert (=> b!3719445 m!4224181))

(assert (=> b!3719444 m!4224179))

(assert (=> b!3719444 m!4224179))

(declare-fun m!4224183 () Bool)

(assert (=> b!3719444 m!4224183))

(assert (=> b!3719443 m!4224179))

(assert (=> b!3719443 m!4224179))

(assert (=> b!3719443 m!4224183))

(assert (=> bm!270070 m!4224173))

(assert (=> b!3719447 m!4223767))

(assert (=> b!3718872 d!1088851))

(declare-fun b!3719452 () Bool)

(declare-fun e!2302759 () Bool)

(assert (=> b!3719452 (= e!2302759 (not (= (head!8025 (_2!22746 lt!1297729)) (c!642993 (regTwo!22230 r!26326)))))))

(declare-fun b!3719453 () Bool)

(declare-fun res!1511829 () Bool)

(declare-fun e!2302757 () Bool)

(assert (=> b!3719453 (=> (not res!1511829) (not e!2302757))))

(declare-fun call!270076 () Bool)

(assert (=> b!3719453 (= res!1511829 (not call!270076))))

(declare-fun b!3719454 () Bool)

(declare-fun e!2302755 () Bool)

(declare-fun e!2302758 () Bool)

(assert (=> b!3719454 (= e!2302755 e!2302758)))

(declare-fun c!643153 () Bool)

(assert (=> b!3719454 (= c!643153 ((_ is EmptyLang!10859) (regTwo!22230 r!26326)))))

(declare-fun b!3719455 () Bool)

(declare-fun lt!1297826 () Bool)

(assert (=> b!3719455 (= e!2302755 (= lt!1297826 call!270076))))

(declare-fun d!1088853 () Bool)

(assert (=> d!1088853 e!2302755))

(declare-fun c!643154 () Bool)

(assert (=> d!1088853 (= c!643154 ((_ is EmptyExpr!10859) (regTwo!22230 r!26326)))))

(declare-fun e!2302754 () Bool)

(assert (=> d!1088853 (= lt!1297826 e!2302754)))

(declare-fun c!643152 () Bool)

(assert (=> d!1088853 (= c!643152 (isEmpty!23512 (_2!22746 lt!1297729)))))

(assert (=> d!1088853 (validRegex!4966 (regTwo!22230 r!26326))))

(assert (=> d!1088853 (= (matchR!5304 (regTwo!22230 r!26326) (_2!22746 lt!1297729)) lt!1297826)))

(declare-fun b!3719456 () Bool)

(declare-fun res!1511830 () Bool)

(declare-fun e!2302756 () Bool)

(assert (=> b!3719456 (=> res!1511830 e!2302756)))

(assert (=> b!3719456 (= res!1511830 e!2302757)))

(declare-fun res!1511827 () Bool)

(assert (=> b!3719456 (=> (not res!1511827) (not e!2302757))))

(assert (=> b!3719456 (= res!1511827 lt!1297826)))

(declare-fun b!3719457 () Bool)

(declare-fun res!1511826 () Bool)

(assert (=> b!3719457 (=> (not res!1511826) (not e!2302757))))

(assert (=> b!3719457 (= res!1511826 (isEmpty!23512 (tail!5752 (_2!22746 lt!1297729))))))

(declare-fun b!3719458 () Bool)

(declare-fun res!1511832 () Bool)

(assert (=> b!3719458 (=> res!1511832 e!2302759)))

(assert (=> b!3719458 (= res!1511832 (not (isEmpty!23512 (tail!5752 (_2!22746 lt!1297729)))))))

(declare-fun b!3719459 () Bool)

(assert (=> b!3719459 (= e!2302754 (matchR!5304 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729))) (tail!5752 (_2!22746 lt!1297729))))))

(declare-fun bm!270071 () Bool)

(assert (=> bm!270071 (= call!270076 (isEmpty!23512 (_2!22746 lt!1297729)))))

(declare-fun b!3719460 () Bool)

(declare-fun e!2302753 () Bool)

(assert (=> b!3719460 (= e!2302756 e!2302753)))

(declare-fun res!1511825 () Bool)

(assert (=> b!3719460 (=> (not res!1511825) (not e!2302753))))

(assert (=> b!3719460 (= res!1511825 (not lt!1297826))))

(declare-fun b!3719461 () Bool)

(assert (=> b!3719461 (= e!2302754 (nullable!3782 (regTwo!22230 r!26326)))))

(declare-fun b!3719462 () Bool)

(assert (=> b!3719462 (= e!2302758 (not lt!1297826))))

(declare-fun b!3719463 () Bool)

(assert (=> b!3719463 (= e!2302753 e!2302759)))

(declare-fun res!1511828 () Bool)

(assert (=> b!3719463 (=> res!1511828 e!2302759)))

(assert (=> b!3719463 (= res!1511828 call!270076)))

(declare-fun b!3719464 () Bool)

(declare-fun res!1511831 () Bool)

(assert (=> b!3719464 (=> res!1511831 e!2302756)))

(assert (=> b!3719464 (= res!1511831 (not ((_ is ElementMatch!10859) (regTwo!22230 r!26326))))))

(assert (=> b!3719464 (= e!2302758 e!2302756)))

(declare-fun b!3719465 () Bool)

(assert (=> b!3719465 (= e!2302757 (= (head!8025 (_2!22746 lt!1297729)) (c!642993 (regTwo!22230 r!26326))))))

(assert (= (and d!1088853 c!643152) b!3719461))

(assert (= (and d!1088853 (not c!643152)) b!3719459))

(assert (= (and d!1088853 c!643154) b!3719455))

(assert (= (and d!1088853 (not c!643154)) b!3719454))

(assert (= (and b!3719454 c!643153) b!3719462))

(assert (= (and b!3719454 (not c!643153)) b!3719464))

(assert (= (and b!3719464 (not res!1511831)) b!3719456))

(assert (= (and b!3719456 res!1511827) b!3719453))

(assert (= (and b!3719453 res!1511829) b!3719457))

(assert (= (and b!3719457 res!1511826) b!3719465))

(assert (= (and b!3719456 (not res!1511830)) b!3719460))

(assert (= (and b!3719460 res!1511825) b!3719463))

(assert (= (and b!3719463 (not res!1511828)) b!3719458))

(assert (= (and b!3719458 (not res!1511832)) b!3719452))

(assert (= (or b!3719455 b!3719453 b!3719463) bm!270071))

(declare-fun m!4224185 () Bool)

(assert (=> d!1088853 m!4224185))

(declare-fun m!4224187 () Bool)

(assert (=> d!1088853 m!4224187))

(declare-fun m!4224189 () Bool)

(assert (=> b!3719465 m!4224189))

(assert (=> b!3719452 m!4224189))

(assert (=> b!3719459 m!4224189))

(assert (=> b!3719459 m!4224189))

(declare-fun m!4224191 () Bool)

(assert (=> b!3719459 m!4224191))

(declare-fun m!4224193 () Bool)

(assert (=> b!3719459 m!4224193))

(assert (=> b!3719459 m!4224191))

(assert (=> b!3719459 m!4224193))

(declare-fun m!4224195 () Bool)

(assert (=> b!3719459 m!4224195))

(assert (=> b!3719458 m!4224193))

(assert (=> b!3719458 m!4224193))

(declare-fun m!4224197 () Bool)

(assert (=> b!3719458 m!4224197))

(assert (=> b!3719457 m!4224193))

(assert (=> b!3719457 m!4224193))

(assert (=> b!3719457 m!4224197))

(assert (=> bm!270071 m!4224185))

(declare-fun m!4224199 () Bool)

(assert (=> b!3719461 m!4224199))

(assert (=> b!3718865 d!1088853))

(declare-fun d!1088855 () Bool)

(declare-fun e!2302765 () Bool)

(assert (=> d!1088855 e!2302765))

(declare-fun res!1511837 () Bool)

(assert (=> d!1088855 (=> res!1511837 e!2302765)))

(assert (=> d!1088855 (= res!1511837 (matchR!5304 lt!1297725 tl!3933))))

(declare-fun lt!1297829 () Unit!57516)

(declare-fun choose!22208 (Regex!10859 Regex!10859 List!39740) Unit!57516)

(assert (=> d!1088855 (= lt!1297829 (choose!22208 lt!1297725 EmptyLang!10859 tl!3933))))

(declare-fun e!2302764 () Bool)

(assert (=> d!1088855 e!2302764))

(declare-fun res!1511838 () Bool)

(assert (=> d!1088855 (=> (not res!1511838) (not e!2302764))))

(assert (=> d!1088855 (= res!1511838 (validRegex!4966 lt!1297725))))

(assert (=> d!1088855 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!336 lt!1297725 EmptyLang!10859 tl!3933) lt!1297829)))

(declare-fun b!3719470 () Bool)

(assert (=> b!3719470 (= e!2302764 (validRegex!4966 EmptyLang!10859))))

(declare-fun b!3719471 () Bool)

(assert (=> b!3719471 (= e!2302765 (matchR!5304 EmptyLang!10859 tl!3933))))

(assert (= (and d!1088855 res!1511838) b!3719470))

(assert (= (and d!1088855 (not res!1511837)) b!3719471))

(assert (=> d!1088855 m!4223789))

(declare-fun m!4224201 () Bool)

(assert (=> d!1088855 m!4224201))

(declare-fun m!4224203 () Bool)

(assert (=> d!1088855 m!4224203))

(assert (=> b!3719470 m!4223893))

(assert (=> b!3719471 m!4223775))

(assert (=> b!3718875 d!1088855))

(declare-fun b!3719472 () Bool)

(declare-fun e!2302772 () Bool)

(assert (=> b!3719472 (= e!2302772 (not (= (head!8025 tl!3933) (c!642993 lt!1297725))))))

(declare-fun b!3719473 () Bool)

(declare-fun res!1511843 () Bool)

(declare-fun e!2302770 () Bool)

(assert (=> b!3719473 (=> (not res!1511843) (not e!2302770))))

(declare-fun call!270077 () Bool)

(assert (=> b!3719473 (= res!1511843 (not call!270077))))

(declare-fun b!3719474 () Bool)

(declare-fun e!2302768 () Bool)

(declare-fun e!2302771 () Bool)

(assert (=> b!3719474 (= e!2302768 e!2302771)))

(declare-fun c!643156 () Bool)

(assert (=> b!3719474 (= c!643156 ((_ is EmptyLang!10859) lt!1297725))))

(declare-fun b!3719475 () Bool)

(declare-fun lt!1297830 () Bool)

(assert (=> b!3719475 (= e!2302768 (= lt!1297830 call!270077))))

(declare-fun d!1088857 () Bool)

(assert (=> d!1088857 e!2302768))

(declare-fun c!643157 () Bool)

(assert (=> d!1088857 (= c!643157 ((_ is EmptyExpr!10859) lt!1297725))))

(declare-fun e!2302767 () Bool)

(assert (=> d!1088857 (= lt!1297830 e!2302767)))

(declare-fun c!643155 () Bool)

(assert (=> d!1088857 (= c!643155 (isEmpty!23512 tl!3933))))

(assert (=> d!1088857 (validRegex!4966 lt!1297725)))

(assert (=> d!1088857 (= (matchR!5304 lt!1297725 tl!3933) lt!1297830)))

(declare-fun b!3719476 () Bool)

(declare-fun res!1511844 () Bool)

(declare-fun e!2302769 () Bool)

(assert (=> b!3719476 (=> res!1511844 e!2302769)))

(assert (=> b!3719476 (= res!1511844 e!2302770)))

(declare-fun res!1511841 () Bool)

(assert (=> b!3719476 (=> (not res!1511841) (not e!2302770))))

(assert (=> b!3719476 (= res!1511841 lt!1297830)))

(declare-fun b!3719477 () Bool)

(declare-fun res!1511840 () Bool)

(assert (=> b!3719477 (=> (not res!1511840) (not e!2302770))))

(assert (=> b!3719477 (= res!1511840 (isEmpty!23512 (tail!5752 tl!3933)))))

(declare-fun b!3719478 () Bool)

(declare-fun res!1511846 () Bool)

(assert (=> b!3719478 (=> res!1511846 e!2302772)))

(assert (=> b!3719478 (= res!1511846 (not (isEmpty!23512 (tail!5752 tl!3933))))))

(declare-fun b!3719479 () Bool)

(assert (=> b!3719479 (= e!2302767 (matchR!5304 (derivativeStep!3324 lt!1297725 (head!8025 tl!3933)) (tail!5752 tl!3933)))))

(declare-fun bm!270072 () Bool)

(assert (=> bm!270072 (= call!270077 (isEmpty!23512 tl!3933))))

(declare-fun b!3719480 () Bool)

(declare-fun e!2302766 () Bool)

(assert (=> b!3719480 (= e!2302769 e!2302766)))

(declare-fun res!1511839 () Bool)

(assert (=> b!3719480 (=> (not res!1511839) (not e!2302766))))

(assert (=> b!3719480 (= res!1511839 (not lt!1297830))))

(declare-fun b!3719481 () Bool)

(assert (=> b!3719481 (= e!2302767 (nullable!3782 lt!1297725))))

(declare-fun b!3719482 () Bool)

(assert (=> b!3719482 (= e!2302771 (not lt!1297830))))

(declare-fun b!3719483 () Bool)

(assert (=> b!3719483 (= e!2302766 e!2302772)))

(declare-fun res!1511842 () Bool)

(assert (=> b!3719483 (=> res!1511842 e!2302772)))

(assert (=> b!3719483 (= res!1511842 call!270077)))

(declare-fun b!3719484 () Bool)

(declare-fun res!1511845 () Bool)

(assert (=> b!3719484 (=> res!1511845 e!2302769)))

(assert (=> b!3719484 (= res!1511845 (not ((_ is ElementMatch!10859) lt!1297725)))))

(assert (=> b!3719484 (= e!2302771 e!2302769)))

(declare-fun b!3719485 () Bool)

(assert (=> b!3719485 (= e!2302770 (= (head!8025 tl!3933) (c!642993 lt!1297725)))))

(assert (= (and d!1088857 c!643155) b!3719481))

(assert (= (and d!1088857 (not c!643155)) b!3719479))

(assert (= (and d!1088857 c!643157) b!3719475))

(assert (= (and d!1088857 (not c!643157)) b!3719474))

(assert (= (and b!3719474 c!643156) b!3719482))

(assert (= (and b!3719474 (not c!643156)) b!3719484))

(assert (= (and b!3719484 (not res!1511845)) b!3719476))

(assert (= (and b!3719476 res!1511841) b!3719473))

(assert (= (and b!3719473 res!1511843) b!3719477))

(assert (= (and b!3719477 res!1511840) b!3719485))

(assert (= (and b!3719476 (not res!1511844)) b!3719480))

(assert (= (and b!3719480 res!1511839) b!3719483))

(assert (= (and b!3719483 (not res!1511842)) b!3719478))

(assert (= (and b!3719478 (not res!1511846)) b!3719472))

(assert (= (or b!3719475 b!3719473 b!3719483) bm!270072))

(assert (=> d!1088857 m!4223891))

(assert (=> d!1088857 m!4224203))

(assert (=> b!3719485 m!4223895))

(assert (=> b!3719472 m!4223895))

(assert (=> b!3719479 m!4223895))

(assert (=> b!3719479 m!4223895))

(declare-fun m!4224205 () Bool)

(assert (=> b!3719479 m!4224205))

(assert (=> b!3719479 m!4223899))

(assert (=> b!3719479 m!4224205))

(assert (=> b!3719479 m!4223899))

(declare-fun m!4224207 () Bool)

(assert (=> b!3719479 m!4224207))

(assert (=> b!3719478 m!4223899))

(assert (=> b!3719478 m!4223899))

(assert (=> b!3719478 m!4223903))

(assert (=> b!3719477 m!4223899))

(assert (=> b!3719477 m!4223899))

(assert (=> b!3719477 m!4223903))

(assert (=> bm!270072 m!4223891))

(declare-fun m!4224209 () Bool)

(assert (=> b!3719481 m!4224209))

(assert (=> b!3718875 d!1088857))

(declare-fun d!1088859 () Bool)

(assert (=> d!1088859 (= (derivative!373 EmptyLang!10859 tl!3933) EmptyLang!10859)))

(declare-fun lt!1297833 () Unit!57516)

(declare-fun choose!22210 (Regex!10859 List!39740) Unit!57516)

(assert (=> d!1088859 (= lt!1297833 (choose!22210 EmptyLang!10859 tl!3933))))

(assert (=> d!1088859 (= EmptyLang!10859 EmptyLang!10859)))

(assert (=> d!1088859 (= (lemmaEmptyLangDerivativeIsAFixPoint!74 EmptyLang!10859 tl!3933) lt!1297833)))

(declare-fun bs!574918 () Bool)

(assert (= bs!574918 d!1088859))

(assert (=> bs!574918 m!4223783))

(declare-fun m!4224211 () Bool)

(assert (=> bs!574918 m!4224211))

(assert (=> b!3718875 d!1088859))

(declare-fun d!1088861 () Bool)

(declare-fun lt!1297834 () Regex!10859)

(assert (=> d!1088861 (validRegex!4966 lt!1297834)))

(declare-fun e!2302773 () Regex!10859)

(assert (=> d!1088861 (= lt!1297834 e!2302773)))

(declare-fun c!643158 () Bool)

(assert (=> d!1088861 (= c!643158 ((_ is Cons!39616) tl!3933))))

(assert (=> d!1088861 (validRegex!4966 lt!1297736)))

(assert (=> d!1088861 (= (derivative!373 lt!1297736 tl!3933) lt!1297834)))

(declare-fun b!3719486 () Bool)

(assert (=> b!3719486 (= e!2302773 (derivative!373 (derivativeStep!3324 lt!1297736 (h!45036 tl!3933)) (t!302423 tl!3933)))))

(declare-fun b!3719487 () Bool)

(assert (=> b!3719487 (= e!2302773 lt!1297736)))

(assert (= (and d!1088861 c!643158) b!3719486))

(assert (= (and d!1088861 (not c!643158)) b!3719487))

(declare-fun m!4224213 () Bool)

(assert (=> d!1088861 m!4224213))

(declare-fun m!4224215 () Bool)

(assert (=> d!1088861 m!4224215))

(declare-fun m!4224217 () Bool)

(assert (=> b!3719486 m!4224217))

(assert (=> b!3719486 m!4224217))

(declare-fun m!4224219 () Bool)

(assert (=> b!3719486 m!4224219))

(assert (=> b!3718875 d!1088861))

(declare-fun b!3719488 () Bool)

(declare-fun e!2302775 () Regex!10859)

(declare-fun e!2302778 () Regex!10859)

(assert (=> b!3719488 (= e!2302775 e!2302778)))

(declare-fun c!643163 () Bool)

(assert (=> b!3719488 (= c!643163 ((_ is Star!10859) (regOne!22230 r!26326)))))

(declare-fun b!3719489 () Bool)

(declare-fun call!270080 () Regex!10859)

(assert (=> b!3719489 (= e!2302778 (Concat!17130 call!270080 (regOne!22230 r!26326)))))

(declare-fun bm!270073 () Bool)

(declare-fun call!270081 () Regex!10859)

(assert (=> bm!270073 (= call!270080 call!270081)))

(declare-fun b!3719490 () Bool)

(declare-fun e!2302776 () Regex!10859)

(declare-fun e!2302774 () Regex!10859)

(assert (=> b!3719490 (= e!2302776 e!2302774)))

(declare-fun c!643159 () Bool)

(assert (=> b!3719490 (= c!643159 ((_ is ElementMatch!10859) (regOne!22230 r!26326)))))

(declare-fun b!3719491 () Bool)

(assert (=> b!3719491 (= e!2302776 EmptyLang!10859)))

(declare-fun bm!270074 () Bool)

(declare-fun call!270079 () Regex!10859)

(declare-fun call!270078 () Regex!10859)

(assert (=> bm!270074 (= call!270079 call!270078)))

(declare-fun e!2302777 () Regex!10859)

(declare-fun b!3719492 () Bool)

(assert (=> b!3719492 (= e!2302777 (Union!10859 (Concat!17130 call!270079 (regTwo!22230 (regOne!22230 r!26326))) call!270080))))

(declare-fun b!3719493 () Bool)

(declare-fun c!643161 () Bool)

(assert (=> b!3719493 (= c!643161 ((_ is Union!10859) (regOne!22230 r!26326)))))

(assert (=> b!3719493 (= e!2302774 e!2302775)))

(declare-fun bm!270075 () Bool)

(assert (=> bm!270075 (= call!270078 (derivativeStep!3324 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))) c!13576))))

(declare-fun b!3719494 () Bool)

(assert (=> b!3719494 (= e!2302774 (ite (= c!13576 (c!642993 (regOne!22230 r!26326))) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719495 () Bool)

(assert (=> b!3719495 (= e!2302777 (Union!10859 (Concat!17130 call!270079 (regTwo!22230 (regOne!22230 r!26326))) EmptyLang!10859))))

(declare-fun bm!270076 () Bool)

(assert (=> bm!270076 (= call!270081 (derivativeStep!3324 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))) c!13576))))

(declare-fun b!3719497 () Bool)

(assert (=> b!3719497 (= e!2302775 (Union!10859 call!270078 call!270081))))

(declare-fun d!1088863 () Bool)

(declare-fun lt!1297835 () Regex!10859)

(assert (=> d!1088863 (validRegex!4966 lt!1297835)))

(assert (=> d!1088863 (= lt!1297835 e!2302776)))

(declare-fun c!643162 () Bool)

(assert (=> d!1088863 (= c!643162 (or ((_ is EmptyExpr!10859) (regOne!22230 r!26326)) ((_ is EmptyLang!10859) (regOne!22230 r!26326))))))

(assert (=> d!1088863 (validRegex!4966 (regOne!22230 r!26326))))

(assert (=> d!1088863 (= (derivativeStep!3324 (regOne!22230 r!26326) c!13576) lt!1297835)))

(declare-fun b!3719496 () Bool)

(declare-fun c!643160 () Bool)

(assert (=> b!3719496 (= c!643160 (nullable!3782 (regOne!22230 (regOne!22230 r!26326))))))

(assert (=> b!3719496 (= e!2302778 e!2302777)))

(assert (= (and d!1088863 c!643162) b!3719491))

(assert (= (and d!1088863 (not c!643162)) b!3719490))

(assert (= (and b!3719490 c!643159) b!3719494))

(assert (= (and b!3719490 (not c!643159)) b!3719493))

(assert (= (and b!3719493 c!643161) b!3719497))

(assert (= (and b!3719493 (not c!643161)) b!3719488))

(assert (= (and b!3719488 c!643163) b!3719489))

(assert (= (and b!3719488 (not c!643163)) b!3719496))

(assert (= (and b!3719496 c!643160) b!3719492))

(assert (= (and b!3719496 (not c!643160)) b!3719495))

(assert (= (or b!3719492 b!3719495) bm!270074))

(assert (= (or b!3719489 b!3719492) bm!270073))

(assert (= (or b!3719497 bm!270073) bm!270076))

(assert (= (or b!3719497 bm!270074) bm!270075))

(declare-fun m!4224221 () Bool)

(assert (=> bm!270075 m!4224221))

(declare-fun m!4224223 () Bool)

(assert (=> bm!270076 m!4224223))

(declare-fun m!4224225 () Bool)

(assert (=> d!1088863 m!4224225))

(assert (=> d!1088863 m!4223731))

(declare-fun m!4224227 () Bool)

(assert (=> b!3719496 m!4224227))

(assert (=> b!3718875 d!1088863))

(declare-fun b!3719498 () Bool)

(declare-fun e!2302785 () Bool)

(assert (=> b!3719498 (= e!2302785 (not (= (head!8025 Nil!39616) (c!642993 (derivative!373 lt!1297736 tl!3933)))))))

(declare-fun b!3719499 () Bool)

(declare-fun res!1511851 () Bool)

(declare-fun e!2302783 () Bool)

(assert (=> b!3719499 (=> (not res!1511851) (not e!2302783))))

(declare-fun call!270082 () Bool)

(assert (=> b!3719499 (= res!1511851 (not call!270082))))

(declare-fun b!3719500 () Bool)

(declare-fun e!2302781 () Bool)

(declare-fun e!2302784 () Bool)

(assert (=> b!3719500 (= e!2302781 e!2302784)))

(declare-fun c!643165 () Bool)

(assert (=> b!3719500 (= c!643165 ((_ is EmptyLang!10859) (derivative!373 lt!1297736 tl!3933)))))

(declare-fun b!3719501 () Bool)

(declare-fun lt!1297836 () Bool)

(assert (=> b!3719501 (= e!2302781 (= lt!1297836 call!270082))))

(declare-fun d!1088865 () Bool)

(assert (=> d!1088865 e!2302781))

(declare-fun c!643166 () Bool)

(assert (=> d!1088865 (= c!643166 ((_ is EmptyExpr!10859) (derivative!373 lt!1297736 tl!3933)))))

(declare-fun e!2302780 () Bool)

(assert (=> d!1088865 (= lt!1297836 e!2302780)))

(declare-fun c!643164 () Bool)

(assert (=> d!1088865 (= c!643164 (isEmpty!23512 Nil!39616))))

(assert (=> d!1088865 (validRegex!4966 (derivative!373 lt!1297736 tl!3933))))

(assert (=> d!1088865 (= (matchR!5304 (derivative!373 lt!1297736 tl!3933) Nil!39616) lt!1297836)))

(declare-fun b!3719502 () Bool)

(declare-fun res!1511852 () Bool)

(declare-fun e!2302782 () Bool)

(assert (=> b!3719502 (=> res!1511852 e!2302782)))

(assert (=> b!3719502 (= res!1511852 e!2302783)))

(declare-fun res!1511849 () Bool)

(assert (=> b!3719502 (=> (not res!1511849) (not e!2302783))))

(assert (=> b!3719502 (= res!1511849 lt!1297836)))

(declare-fun b!3719503 () Bool)

(declare-fun res!1511848 () Bool)

(assert (=> b!3719503 (=> (not res!1511848) (not e!2302783))))

(assert (=> b!3719503 (= res!1511848 (isEmpty!23512 (tail!5752 Nil!39616)))))

(declare-fun b!3719504 () Bool)

(declare-fun res!1511854 () Bool)

(assert (=> b!3719504 (=> res!1511854 e!2302785)))

(assert (=> b!3719504 (= res!1511854 (not (isEmpty!23512 (tail!5752 Nil!39616))))))

(declare-fun b!3719505 () Bool)

(assert (=> b!3719505 (= e!2302780 (matchR!5304 (derivativeStep!3324 (derivative!373 lt!1297736 tl!3933) (head!8025 Nil!39616)) (tail!5752 Nil!39616)))))

(declare-fun bm!270077 () Bool)

(assert (=> bm!270077 (= call!270082 (isEmpty!23512 Nil!39616))))

(declare-fun b!3719506 () Bool)

(declare-fun e!2302779 () Bool)

(assert (=> b!3719506 (= e!2302782 e!2302779)))

(declare-fun res!1511847 () Bool)

(assert (=> b!3719506 (=> (not res!1511847) (not e!2302779))))

(assert (=> b!3719506 (= res!1511847 (not lt!1297836))))

(declare-fun b!3719507 () Bool)

(assert (=> b!3719507 (= e!2302780 (nullable!3782 (derivative!373 lt!1297736 tl!3933)))))

(declare-fun b!3719508 () Bool)

(assert (=> b!3719508 (= e!2302784 (not lt!1297836))))

(declare-fun b!3719509 () Bool)

(assert (=> b!3719509 (= e!2302779 e!2302785)))

(declare-fun res!1511850 () Bool)

(assert (=> b!3719509 (=> res!1511850 e!2302785)))

(assert (=> b!3719509 (= res!1511850 call!270082)))

(declare-fun b!3719510 () Bool)

(declare-fun res!1511853 () Bool)

(assert (=> b!3719510 (=> res!1511853 e!2302782)))

(assert (=> b!3719510 (= res!1511853 (not ((_ is ElementMatch!10859) (derivative!373 lt!1297736 tl!3933))))))

(assert (=> b!3719510 (= e!2302784 e!2302782)))

(declare-fun b!3719511 () Bool)

(assert (=> b!3719511 (= e!2302783 (= (head!8025 Nil!39616) (c!642993 (derivative!373 lt!1297736 tl!3933))))))

(assert (= (and d!1088865 c!643164) b!3719507))

(assert (= (and d!1088865 (not c!643164)) b!3719505))

(assert (= (and d!1088865 c!643166) b!3719501))

(assert (= (and d!1088865 (not c!643166)) b!3719500))

(assert (= (and b!3719500 c!643165) b!3719508))

(assert (= (and b!3719500 (not c!643165)) b!3719510))

(assert (= (and b!3719510 (not res!1511853)) b!3719502))

(assert (= (and b!3719502 res!1511849) b!3719499))

(assert (= (and b!3719499 res!1511851) b!3719503))

(assert (= (and b!3719503 res!1511848) b!3719511))

(assert (= (and b!3719502 (not res!1511852)) b!3719506))

(assert (= (and b!3719506 res!1511847) b!3719509))

(assert (= (and b!3719509 (not res!1511850)) b!3719504))

(assert (= (and b!3719504 (not res!1511854)) b!3719498))

(assert (= (or b!3719501 b!3719499 b!3719509) bm!270077))

(assert (=> d!1088865 m!4223809))

(assert (=> d!1088865 m!4223781))

(declare-fun m!4224229 () Bool)

(assert (=> d!1088865 m!4224229))

(assert (=> b!3719511 m!4223813))

(assert (=> b!3719498 m!4223813))

(assert (=> b!3719505 m!4223813))

(assert (=> b!3719505 m!4223781))

(assert (=> b!3719505 m!4223813))

(declare-fun m!4224231 () Bool)

(assert (=> b!3719505 m!4224231))

(assert (=> b!3719505 m!4223817))

(assert (=> b!3719505 m!4224231))

(assert (=> b!3719505 m!4223817))

(declare-fun m!4224233 () Bool)

(assert (=> b!3719505 m!4224233))

(assert (=> b!3719504 m!4223817))

(assert (=> b!3719504 m!4223817))

(assert (=> b!3719504 m!4223821))

(assert (=> b!3719503 m!4223817))

(assert (=> b!3719503 m!4223817))

(assert (=> b!3719503 m!4223821))

(assert (=> bm!270077 m!4223809))

(assert (=> b!3719507 m!4223781))

(declare-fun m!4224235 () Bool)

(assert (=> b!3719507 m!4224235))

(assert (=> b!3718875 d!1088865))

(declare-fun b!3719512 () Bool)

(declare-fun e!2302792 () Bool)

(assert (=> b!3719512 (= e!2302792 (not (= (head!8025 tl!3933) (c!642993 lt!1297736))))))

(declare-fun b!3719513 () Bool)

(declare-fun res!1511859 () Bool)

(declare-fun e!2302790 () Bool)

(assert (=> b!3719513 (=> (not res!1511859) (not e!2302790))))

(declare-fun call!270083 () Bool)

(assert (=> b!3719513 (= res!1511859 (not call!270083))))

(declare-fun b!3719514 () Bool)

(declare-fun e!2302788 () Bool)

(declare-fun e!2302791 () Bool)

(assert (=> b!3719514 (= e!2302788 e!2302791)))

(declare-fun c!643168 () Bool)

(assert (=> b!3719514 (= c!643168 ((_ is EmptyLang!10859) lt!1297736))))

(declare-fun b!3719515 () Bool)

(declare-fun lt!1297837 () Bool)

(assert (=> b!3719515 (= e!2302788 (= lt!1297837 call!270083))))

(declare-fun d!1088867 () Bool)

(assert (=> d!1088867 e!2302788))

(declare-fun c!643169 () Bool)

(assert (=> d!1088867 (= c!643169 ((_ is EmptyExpr!10859) lt!1297736))))

(declare-fun e!2302787 () Bool)

(assert (=> d!1088867 (= lt!1297837 e!2302787)))

(declare-fun c!643167 () Bool)

(assert (=> d!1088867 (= c!643167 (isEmpty!23512 tl!3933))))

(assert (=> d!1088867 (validRegex!4966 lt!1297736)))

(assert (=> d!1088867 (= (matchR!5304 lt!1297736 tl!3933) lt!1297837)))

(declare-fun b!3719516 () Bool)

(declare-fun res!1511860 () Bool)

(declare-fun e!2302789 () Bool)

(assert (=> b!3719516 (=> res!1511860 e!2302789)))

(assert (=> b!3719516 (= res!1511860 e!2302790)))

(declare-fun res!1511857 () Bool)

(assert (=> b!3719516 (=> (not res!1511857) (not e!2302790))))

(assert (=> b!3719516 (= res!1511857 lt!1297837)))

(declare-fun b!3719517 () Bool)

(declare-fun res!1511856 () Bool)

(assert (=> b!3719517 (=> (not res!1511856) (not e!2302790))))

(assert (=> b!3719517 (= res!1511856 (isEmpty!23512 (tail!5752 tl!3933)))))

(declare-fun b!3719518 () Bool)

(declare-fun res!1511862 () Bool)

(assert (=> b!3719518 (=> res!1511862 e!2302792)))

(assert (=> b!3719518 (= res!1511862 (not (isEmpty!23512 (tail!5752 tl!3933))))))

(declare-fun b!3719519 () Bool)

(assert (=> b!3719519 (= e!2302787 (matchR!5304 (derivativeStep!3324 lt!1297736 (head!8025 tl!3933)) (tail!5752 tl!3933)))))

(declare-fun bm!270078 () Bool)

(assert (=> bm!270078 (= call!270083 (isEmpty!23512 tl!3933))))

(declare-fun b!3719520 () Bool)

(declare-fun e!2302786 () Bool)

(assert (=> b!3719520 (= e!2302789 e!2302786)))

(declare-fun res!1511855 () Bool)

(assert (=> b!3719520 (=> (not res!1511855) (not e!2302786))))

(assert (=> b!3719520 (= res!1511855 (not lt!1297837))))

(declare-fun b!3719521 () Bool)

(assert (=> b!3719521 (= e!2302787 (nullable!3782 lt!1297736))))

(declare-fun b!3719522 () Bool)

(assert (=> b!3719522 (= e!2302791 (not lt!1297837))))

(declare-fun b!3719523 () Bool)

(assert (=> b!3719523 (= e!2302786 e!2302792)))

(declare-fun res!1511858 () Bool)

(assert (=> b!3719523 (=> res!1511858 e!2302792)))

(assert (=> b!3719523 (= res!1511858 call!270083)))

(declare-fun b!3719524 () Bool)

(declare-fun res!1511861 () Bool)

(assert (=> b!3719524 (=> res!1511861 e!2302789)))

(assert (=> b!3719524 (= res!1511861 (not ((_ is ElementMatch!10859) lt!1297736)))))

(assert (=> b!3719524 (= e!2302791 e!2302789)))

(declare-fun b!3719525 () Bool)

(assert (=> b!3719525 (= e!2302790 (= (head!8025 tl!3933) (c!642993 lt!1297736)))))

(assert (= (and d!1088867 c!643167) b!3719521))

(assert (= (and d!1088867 (not c!643167)) b!3719519))

(assert (= (and d!1088867 c!643169) b!3719515))

(assert (= (and d!1088867 (not c!643169)) b!3719514))

(assert (= (and b!3719514 c!643168) b!3719522))

(assert (= (and b!3719514 (not c!643168)) b!3719524))

(assert (= (and b!3719524 (not res!1511861)) b!3719516))

(assert (= (and b!3719516 res!1511857) b!3719513))

(assert (= (and b!3719513 res!1511859) b!3719517))

(assert (= (and b!3719517 res!1511856) b!3719525))

(assert (= (and b!3719516 (not res!1511860)) b!3719520))

(assert (= (and b!3719520 res!1511855) b!3719523))

(assert (= (and b!3719523 (not res!1511858)) b!3719518))

(assert (= (and b!3719518 (not res!1511862)) b!3719512))

(assert (= (or b!3719515 b!3719513 b!3719523) bm!270078))

(assert (=> d!1088867 m!4223891))

(assert (=> d!1088867 m!4224215))

(assert (=> b!3719525 m!4223895))

(assert (=> b!3719512 m!4223895))

(assert (=> b!3719519 m!4223895))

(assert (=> b!3719519 m!4223895))

(declare-fun m!4224237 () Bool)

(assert (=> b!3719519 m!4224237))

(assert (=> b!3719519 m!4223899))

(assert (=> b!3719519 m!4224237))

(assert (=> b!3719519 m!4223899))

(declare-fun m!4224239 () Bool)

(assert (=> b!3719519 m!4224239))

(assert (=> b!3719518 m!4223899))

(assert (=> b!3719518 m!4223899))

(assert (=> b!3719518 m!4223903))

(assert (=> b!3719517 m!4223899))

(assert (=> b!3719517 m!4223899))

(assert (=> b!3719517 m!4223903))

(assert (=> bm!270078 m!4223891))

(declare-fun m!4224241 () Bool)

(assert (=> b!3719521 m!4224241))

(assert (=> b!3718875 d!1088867))

(declare-fun d!1088869 () Bool)

(declare-fun lt!1297838 () Regex!10859)

(assert (=> d!1088869 (validRegex!4966 lt!1297838)))

(declare-fun e!2302793 () Regex!10859)

(assert (=> d!1088869 (= lt!1297838 e!2302793)))

(declare-fun c!643170 () Bool)

(assert (=> d!1088869 (= c!643170 ((_ is Cons!39616) tl!3933))))

(assert (=> d!1088869 (validRegex!4966 EmptyLang!10859)))

(assert (=> d!1088869 (= (derivative!373 EmptyLang!10859 tl!3933) lt!1297838)))

(declare-fun b!3719526 () Bool)

(assert (=> b!3719526 (= e!2302793 (derivative!373 (derivativeStep!3324 EmptyLang!10859 (h!45036 tl!3933)) (t!302423 tl!3933)))))

(declare-fun b!3719527 () Bool)

(assert (=> b!3719527 (= e!2302793 EmptyLang!10859)))

(assert (= (and d!1088869 c!643170) b!3719526))

(assert (= (and d!1088869 (not c!643170)) b!3719527))

(declare-fun m!4224243 () Bool)

(assert (=> d!1088869 m!4224243))

(assert (=> d!1088869 m!4223893))

(declare-fun m!4224245 () Bool)

(assert (=> b!3719526 m!4224245))

(assert (=> b!3719526 m!4224245))

(declare-fun m!4224247 () Bool)

(assert (=> b!3719526 m!4224247))

(assert (=> b!3718875 d!1088869))

(declare-fun d!1088871 () Bool)

(assert (=> d!1088871 (= (matchR!5304 lt!1297736 tl!3933) (matchR!5304 (derivative!373 lt!1297736 tl!3933) Nil!39616))))

(declare-fun lt!1297839 () Unit!57516)

(assert (=> d!1088871 (= lt!1297839 (choose!22204 lt!1297736 tl!3933))))

(assert (=> d!1088871 (validRegex!4966 lt!1297736)))

(assert (=> d!1088871 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!250 lt!1297736 tl!3933) lt!1297839)))

(declare-fun bs!574919 () Bool)

(assert (= bs!574919 d!1088871))

(assert (=> bs!574919 m!4224215))

(assert (=> bs!574919 m!4223781))

(assert (=> bs!574919 m!4223781))

(assert (=> bs!574919 m!4223795))

(assert (=> bs!574919 m!4223791))

(declare-fun m!4224249 () Bool)

(assert (=> bs!574919 m!4224249))

(assert (=> b!3718875 d!1088871))

(declare-fun b!3719528 () Bool)

(declare-fun e!2302800 () Bool)

(assert (=> b!3719528 (= e!2302800 (not (= (head!8025 (_1!22746 lt!1297729)) (c!642993 lt!1297728))))))

(declare-fun b!3719529 () Bool)

(declare-fun res!1511867 () Bool)

(declare-fun e!2302798 () Bool)

(assert (=> b!3719529 (=> (not res!1511867) (not e!2302798))))

(declare-fun call!270084 () Bool)

(assert (=> b!3719529 (= res!1511867 (not call!270084))))

(declare-fun b!3719530 () Bool)

(declare-fun e!2302796 () Bool)

(declare-fun e!2302799 () Bool)

(assert (=> b!3719530 (= e!2302796 e!2302799)))

(declare-fun c!643172 () Bool)

(assert (=> b!3719530 (= c!643172 ((_ is EmptyLang!10859) lt!1297728))))

(declare-fun b!3719531 () Bool)

(declare-fun lt!1297840 () Bool)

(assert (=> b!3719531 (= e!2302796 (= lt!1297840 call!270084))))

(declare-fun d!1088873 () Bool)

(assert (=> d!1088873 e!2302796))

(declare-fun c!643173 () Bool)

(assert (=> d!1088873 (= c!643173 ((_ is EmptyExpr!10859) lt!1297728))))

(declare-fun e!2302795 () Bool)

(assert (=> d!1088873 (= lt!1297840 e!2302795)))

(declare-fun c!643171 () Bool)

(assert (=> d!1088873 (= c!643171 (isEmpty!23512 (_1!22746 lt!1297729)))))

(assert (=> d!1088873 (validRegex!4966 lt!1297728)))

(assert (=> d!1088873 (= (matchR!5304 lt!1297728 (_1!22746 lt!1297729)) lt!1297840)))

(declare-fun b!3719532 () Bool)

(declare-fun res!1511868 () Bool)

(declare-fun e!2302797 () Bool)

(assert (=> b!3719532 (=> res!1511868 e!2302797)))

(assert (=> b!3719532 (= res!1511868 e!2302798)))

(declare-fun res!1511865 () Bool)

(assert (=> b!3719532 (=> (not res!1511865) (not e!2302798))))

(assert (=> b!3719532 (= res!1511865 lt!1297840)))

(declare-fun b!3719533 () Bool)

(declare-fun res!1511864 () Bool)

(assert (=> b!3719533 (=> (not res!1511864) (not e!2302798))))

(assert (=> b!3719533 (= res!1511864 (isEmpty!23512 (tail!5752 (_1!22746 lt!1297729))))))

(declare-fun b!3719534 () Bool)

(declare-fun res!1511870 () Bool)

(assert (=> b!3719534 (=> res!1511870 e!2302800)))

(assert (=> b!3719534 (= res!1511870 (not (isEmpty!23512 (tail!5752 (_1!22746 lt!1297729)))))))

(declare-fun b!3719535 () Bool)

(assert (=> b!3719535 (= e!2302795 (matchR!5304 (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729))) (tail!5752 (_1!22746 lt!1297729))))))

(declare-fun bm!270079 () Bool)

(assert (=> bm!270079 (= call!270084 (isEmpty!23512 (_1!22746 lt!1297729)))))

(declare-fun b!3719536 () Bool)

(declare-fun e!2302794 () Bool)

(assert (=> b!3719536 (= e!2302797 e!2302794)))

(declare-fun res!1511863 () Bool)

(assert (=> b!3719536 (=> (not res!1511863) (not e!2302794))))

(assert (=> b!3719536 (= res!1511863 (not lt!1297840))))

(declare-fun b!3719537 () Bool)

(assert (=> b!3719537 (= e!2302795 (nullable!3782 lt!1297728))))

(declare-fun b!3719538 () Bool)

(assert (=> b!3719538 (= e!2302799 (not lt!1297840))))

(declare-fun b!3719539 () Bool)

(assert (=> b!3719539 (= e!2302794 e!2302800)))

(declare-fun res!1511866 () Bool)

(assert (=> b!3719539 (=> res!1511866 e!2302800)))

(assert (=> b!3719539 (= res!1511866 call!270084)))

(declare-fun b!3719540 () Bool)

(declare-fun res!1511869 () Bool)

(assert (=> b!3719540 (=> res!1511869 e!2302797)))

(assert (=> b!3719540 (= res!1511869 (not ((_ is ElementMatch!10859) lt!1297728)))))

(assert (=> b!3719540 (= e!2302799 e!2302797)))

(declare-fun b!3719541 () Bool)

(assert (=> b!3719541 (= e!2302798 (= (head!8025 (_1!22746 lt!1297729)) (c!642993 lt!1297728)))))

(assert (= (and d!1088873 c!643171) b!3719537))

(assert (= (and d!1088873 (not c!643171)) b!3719535))

(assert (= (and d!1088873 c!643173) b!3719531))

(assert (= (and d!1088873 (not c!643173)) b!3719530))

(assert (= (and b!3719530 c!643172) b!3719538))

(assert (= (and b!3719530 (not c!643172)) b!3719540))

(assert (= (and b!3719540 (not res!1511869)) b!3719532))

(assert (= (and b!3719532 res!1511865) b!3719529))

(assert (= (and b!3719529 res!1511867) b!3719533))

(assert (= (and b!3719533 res!1511864) b!3719541))

(assert (= (and b!3719532 (not res!1511868)) b!3719536))

(assert (= (and b!3719536 res!1511863) b!3719539))

(assert (= (and b!3719539 (not res!1511866)) b!3719534))

(assert (= (and b!3719534 (not res!1511870)) b!3719528))

(assert (= (or b!3719531 b!3719529 b!3719539) bm!270079))

(declare-fun m!4224251 () Bool)

(assert (=> d!1088873 m!4224251))

(assert (=> d!1088873 m!4223825))

(declare-fun m!4224253 () Bool)

(assert (=> b!3719541 m!4224253))

(assert (=> b!3719528 m!4224253))

(assert (=> b!3719535 m!4224253))

(assert (=> b!3719535 m!4224253))

(declare-fun m!4224255 () Bool)

(assert (=> b!3719535 m!4224255))

(declare-fun m!4224257 () Bool)

(assert (=> b!3719535 m!4224257))

(assert (=> b!3719535 m!4224255))

(assert (=> b!3719535 m!4224257))

(declare-fun m!4224259 () Bool)

(assert (=> b!3719535 m!4224259))

(assert (=> b!3719534 m!4224257))

(assert (=> b!3719534 m!4224257))

(declare-fun m!4224261 () Bool)

(assert (=> b!3719534 m!4224261))

(assert (=> b!3719533 m!4224257))

(assert (=> b!3719533 m!4224257))

(assert (=> b!3719533 m!4224261))

(assert (=> bm!270079 m!4224251))

(declare-fun m!4224263 () Bool)

(assert (=> b!3719537 m!4224263))

(assert (=> b!3718874 d!1088873))

(declare-fun b!3719546 () Bool)

(declare-fun e!2302803 () Bool)

(declare-fun tp!1131277 () Bool)

(assert (=> b!3719546 (= e!2302803 (and tp_is_empty!18733 tp!1131277))))

(assert (=> b!3718878 (= tp!1131236 e!2302803)))

(assert (= (and b!3718878 ((_ is Cons!39616) (t!302423 tl!3933))) b!3719546))

(declare-fun b!3719558 () Bool)

(declare-fun e!2302806 () Bool)

(declare-fun tp!1131289 () Bool)

(declare-fun tp!1131292 () Bool)

(assert (=> b!3719558 (= e!2302806 (and tp!1131289 tp!1131292))))

(declare-fun b!3719557 () Bool)

(assert (=> b!3719557 (= e!2302806 tp_is_empty!18733)))

(assert (=> b!3718876 (= tp!1131231 e!2302806)))

(declare-fun b!3719559 () Bool)

(declare-fun tp!1131290 () Bool)

(assert (=> b!3719559 (= e!2302806 tp!1131290)))

(declare-fun b!3719560 () Bool)

(declare-fun tp!1131291 () Bool)

(declare-fun tp!1131288 () Bool)

(assert (=> b!3719560 (= e!2302806 (and tp!1131291 tp!1131288))))

(assert (= (and b!3718876 ((_ is ElementMatch!10859) (regOne!22230 r!26326))) b!3719557))

(assert (= (and b!3718876 ((_ is Concat!17130) (regOne!22230 r!26326))) b!3719558))

(assert (= (and b!3718876 ((_ is Star!10859) (regOne!22230 r!26326))) b!3719559))

(assert (= (and b!3718876 ((_ is Union!10859) (regOne!22230 r!26326))) b!3719560))

(declare-fun b!3719562 () Bool)

(declare-fun e!2302807 () Bool)

(declare-fun tp!1131294 () Bool)

(declare-fun tp!1131297 () Bool)

(assert (=> b!3719562 (= e!2302807 (and tp!1131294 tp!1131297))))

(declare-fun b!3719561 () Bool)

(assert (=> b!3719561 (= e!2302807 tp_is_empty!18733)))

(assert (=> b!3718876 (= tp!1131235 e!2302807)))

(declare-fun b!3719563 () Bool)

(declare-fun tp!1131295 () Bool)

(assert (=> b!3719563 (= e!2302807 tp!1131295)))

(declare-fun b!3719564 () Bool)

(declare-fun tp!1131296 () Bool)

(declare-fun tp!1131293 () Bool)

(assert (=> b!3719564 (= e!2302807 (and tp!1131296 tp!1131293))))

(assert (= (and b!3718876 ((_ is ElementMatch!10859) (regTwo!22230 r!26326))) b!3719561))

(assert (= (and b!3718876 ((_ is Concat!17130) (regTwo!22230 r!26326))) b!3719562))

(assert (= (and b!3718876 ((_ is Star!10859) (regTwo!22230 r!26326))) b!3719563))

(assert (= (and b!3718876 ((_ is Union!10859) (regTwo!22230 r!26326))) b!3719564))

(declare-fun b!3719566 () Bool)

(declare-fun e!2302808 () Bool)

(declare-fun tp!1131299 () Bool)

(declare-fun tp!1131302 () Bool)

(assert (=> b!3719566 (= e!2302808 (and tp!1131299 tp!1131302))))

(declare-fun b!3719565 () Bool)

(assert (=> b!3719565 (= e!2302808 tp_is_empty!18733)))

(assert (=> b!3718870 (= tp!1131232 e!2302808)))

(declare-fun b!3719567 () Bool)

(declare-fun tp!1131300 () Bool)

(assert (=> b!3719567 (= e!2302808 tp!1131300)))

(declare-fun b!3719568 () Bool)

(declare-fun tp!1131301 () Bool)

(declare-fun tp!1131298 () Bool)

(assert (=> b!3719568 (= e!2302808 (and tp!1131301 tp!1131298))))

(assert (= (and b!3718870 ((_ is ElementMatch!10859) (regOne!22231 r!26326))) b!3719565))

(assert (= (and b!3718870 ((_ is Concat!17130) (regOne!22231 r!26326))) b!3719566))

(assert (= (and b!3718870 ((_ is Star!10859) (regOne!22231 r!26326))) b!3719567))

(assert (= (and b!3718870 ((_ is Union!10859) (regOne!22231 r!26326))) b!3719568))

(declare-fun b!3719570 () Bool)

(declare-fun e!2302809 () Bool)

(declare-fun tp!1131304 () Bool)

(declare-fun tp!1131307 () Bool)

(assert (=> b!3719570 (= e!2302809 (and tp!1131304 tp!1131307))))

(declare-fun b!3719569 () Bool)

(assert (=> b!3719569 (= e!2302809 tp_is_empty!18733)))

(assert (=> b!3718870 (= tp!1131234 e!2302809)))

(declare-fun b!3719571 () Bool)

(declare-fun tp!1131305 () Bool)

(assert (=> b!3719571 (= e!2302809 tp!1131305)))

(declare-fun b!3719572 () Bool)

(declare-fun tp!1131306 () Bool)

(declare-fun tp!1131303 () Bool)

(assert (=> b!3719572 (= e!2302809 (and tp!1131306 tp!1131303))))

(assert (= (and b!3718870 ((_ is ElementMatch!10859) (regTwo!22231 r!26326))) b!3719569))

(assert (= (and b!3718870 ((_ is Concat!17130) (regTwo!22231 r!26326))) b!3719570))

(assert (= (and b!3718870 ((_ is Star!10859) (regTwo!22231 r!26326))) b!3719571))

(assert (= (and b!3718870 ((_ is Union!10859) (regTwo!22231 r!26326))) b!3719572))

(declare-fun b!3719574 () Bool)

(declare-fun e!2302810 () Bool)

(declare-fun tp!1131309 () Bool)

(declare-fun tp!1131312 () Bool)

(assert (=> b!3719574 (= e!2302810 (and tp!1131309 tp!1131312))))

(declare-fun b!3719573 () Bool)

(assert (=> b!3719573 (= e!2302810 tp_is_empty!18733)))

(assert (=> b!3718864 (= tp!1131233 e!2302810)))

(declare-fun b!3719575 () Bool)

(declare-fun tp!1131310 () Bool)

(assert (=> b!3719575 (= e!2302810 tp!1131310)))

(declare-fun b!3719576 () Bool)

(declare-fun tp!1131311 () Bool)

(declare-fun tp!1131308 () Bool)

(assert (=> b!3719576 (= e!2302810 (and tp!1131311 tp!1131308))))

(assert (= (and b!3718864 ((_ is ElementMatch!10859) (reg!11188 r!26326))) b!3719573))

(assert (= (and b!3718864 ((_ is Concat!17130) (reg!11188 r!26326))) b!3719574))

(assert (= (and b!3718864 ((_ is Star!10859) (reg!11188 r!26326))) b!3719575))

(assert (= (and b!3718864 ((_ is Union!10859) (reg!11188 r!26326))) b!3719576))

(check-sat (not bm!270068) (not b!3719097) (not b!3719566) (not d!1088871) (not d!1088835) (not bm!270079) (not b!3719445) (not b!3719512) (not b!3719451) (not b!3719472) (not b!3719289) (not bm!270070) (not bm!270077) (not b!3719481) (not b!3719465) (not b!3719294) (not b!3719457) (not b!3719427) (not b!3719088) (not b!3719459) (not b!3719458) (not b!3718972) (not d!1088855) (not b!3719498) (not d!1088863) (not b!3719486) (not b!3718968) (not d!1088745) (not d!1088773) (not b!3719503) (not b!3719574) (not b!3719575) (not b!3719576) (not b!3718970) (not d!1088859) (not b!3719559) (not bm!270011) (not b!3719091) (not bm!270078) (not d!1088775) (not bm!270067) (not d!1088853) (not b!3719505) (not d!1088783) (not d!1088851) (not bm!270065) (not b!3719560) (not b!3719452) (not b!3719485) (not bm!270020) (not b!3719438) (not d!1088843) (not b!3719318) (not b!3719478) (not b!3719526) (not b!3719564) (not d!1088757) (not d!1088759) (not bm!270007) (not b!3719570) (not b!3719572) (not bm!270075) (not b!3719323) (not bm!270006) (not b!3719541) (not d!1088751) (not b!3719517) (not d!1088841) (not b!3719504) (not bm!270005) (not b!3718976) (not d!1088867) (not b!3719461) (not bm!269978) (not b!3719470) (not b!3718905) (not b!3719090) (not bm!270010) (not b!3719535) (not d!1088777) (not bm!270066) (not b!3719528) (not b!3719098) (not b!3719546) (not b!3718963) (not b!3719534) (not b!3719447) (not b!3719009) (not b!3719518) (not d!1088861) (not b!3719100) (not b!3719563) (not d!1088829) (not b!3719319) (not b!3719471) (not b!3719291) (not b!3719096) (not b!3719537) (not d!1088839) (not d!1088771) (not b!3719295) (not b!3719104) (not b!3719568) (not b!3719567) (not b!3719479) (not b!3719444) (not b!3719435) (not b!3719562) (not bm!270076) (not b!3719443) (not bm!269992) (not b!3719533) (not d!1088873) (not b!3719525) (not b!3718969) (not d!1088753) (not b!3719558) (not d!1088869) (not b!3719511) (not d!1088845) (not bm!270009) (not b!3719507) (not b!3719477) (not b!3719521) (not b!3719519) (not b!3719571) (not b!3719293) (not b!3719496) (not d!1088857) (not b!3719296) (not bm!270072) (not bm!269979) (not d!1088865) tp_is_empty!18733 (not bm!270071))
(check-sat)
(get-model)

(declare-fun d!1088875 () Bool)

(declare-fun lt!1297841 () Bool)

(assert (=> d!1088875 (= lt!1297841 (select (content!5741 (t!302423 (usedCharacters!1122 r!26326))) c!13576))))

(declare-fun e!2302812 () Bool)

(assert (=> d!1088875 (= lt!1297841 e!2302812)))

(declare-fun res!1511871 () Bool)

(assert (=> d!1088875 (=> (not res!1511871) (not e!2302812))))

(assert (=> d!1088875 (= res!1511871 ((_ is Cons!39616) (t!302423 (usedCharacters!1122 r!26326))))))

(assert (=> d!1088875 (= (contains!7952 (t!302423 (usedCharacters!1122 r!26326)) c!13576) lt!1297841)))

(declare-fun b!3719577 () Bool)

(declare-fun e!2302811 () Bool)

(assert (=> b!3719577 (= e!2302812 e!2302811)))

(declare-fun res!1511872 () Bool)

(assert (=> b!3719577 (=> res!1511872 e!2302811)))

(assert (=> b!3719577 (= res!1511872 (= (h!45036 (t!302423 (usedCharacters!1122 r!26326))) c!13576))))

(declare-fun b!3719578 () Bool)

(assert (=> b!3719578 (= e!2302811 (contains!7952 (t!302423 (t!302423 (usedCharacters!1122 r!26326))) c!13576))))

(assert (= (and d!1088875 res!1511871) b!3719577))

(assert (= (and b!3719577 (not res!1511872)) b!3719578))

(declare-fun m!4224265 () Bool)

(assert (=> d!1088875 m!4224265))

(declare-fun m!4224267 () Bool)

(assert (=> d!1088875 m!4224267))

(declare-fun m!4224269 () Bool)

(assert (=> b!3719578 m!4224269))

(assert (=> b!3719088 d!1088875))

(declare-fun b!3719579 () Bool)

(declare-fun e!2302819 () Bool)

(assert (=> b!3719579 (= e!2302819 (not (= (head!8025 (tail!5752 tl!3933)) (c!642993 (derivativeStep!3324 lt!1297725 (head!8025 tl!3933))))))))

(declare-fun b!3719580 () Bool)

(declare-fun res!1511877 () Bool)

(declare-fun e!2302817 () Bool)

(assert (=> b!3719580 (=> (not res!1511877) (not e!2302817))))

(declare-fun call!270085 () Bool)

(assert (=> b!3719580 (= res!1511877 (not call!270085))))

(declare-fun b!3719581 () Bool)

(declare-fun e!2302815 () Bool)

(declare-fun e!2302818 () Bool)

(assert (=> b!3719581 (= e!2302815 e!2302818)))

(declare-fun c!643175 () Bool)

(assert (=> b!3719581 (= c!643175 ((_ is EmptyLang!10859) (derivativeStep!3324 lt!1297725 (head!8025 tl!3933))))))

(declare-fun b!3719582 () Bool)

(declare-fun lt!1297842 () Bool)

(assert (=> b!3719582 (= e!2302815 (= lt!1297842 call!270085))))

(declare-fun d!1088877 () Bool)

(assert (=> d!1088877 e!2302815))

(declare-fun c!643176 () Bool)

(assert (=> d!1088877 (= c!643176 ((_ is EmptyExpr!10859) (derivativeStep!3324 lt!1297725 (head!8025 tl!3933))))))

(declare-fun e!2302814 () Bool)

(assert (=> d!1088877 (= lt!1297842 e!2302814)))

(declare-fun c!643174 () Bool)

(assert (=> d!1088877 (= c!643174 (isEmpty!23512 (tail!5752 tl!3933)))))

(assert (=> d!1088877 (validRegex!4966 (derivativeStep!3324 lt!1297725 (head!8025 tl!3933)))))

(assert (=> d!1088877 (= (matchR!5304 (derivativeStep!3324 lt!1297725 (head!8025 tl!3933)) (tail!5752 tl!3933)) lt!1297842)))

(declare-fun b!3719583 () Bool)

(declare-fun res!1511878 () Bool)

(declare-fun e!2302816 () Bool)

(assert (=> b!3719583 (=> res!1511878 e!2302816)))

(assert (=> b!3719583 (= res!1511878 e!2302817)))

(declare-fun res!1511875 () Bool)

(assert (=> b!3719583 (=> (not res!1511875) (not e!2302817))))

(assert (=> b!3719583 (= res!1511875 lt!1297842)))

(declare-fun b!3719584 () Bool)

(declare-fun res!1511874 () Bool)

(assert (=> b!3719584 (=> (not res!1511874) (not e!2302817))))

(assert (=> b!3719584 (= res!1511874 (isEmpty!23512 (tail!5752 (tail!5752 tl!3933))))))

(declare-fun b!3719585 () Bool)

(declare-fun res!1511880 () Bool)

(assert (=> b!3719585 (=> res!1511880 e!2302819)))

(assert (=> b!3719585 (= res!1511880 (not (isEmpty!23512 (tail!5752 (tail!5752 tl!3933)))))))

(declare-fun b!3719586 () Bool)

(assert (=> b!3719586 (= e!2302814 (matchR!5304 (derivativeStep!3324 (derivativeStep!3324 lt!1297725 (head!8025 tl!3933)) (head!8025 (tail!5752 tl!3933))) (tail!5752 (tail!5752 tl!3933))))))

(declare-fun bm!270080 () Bool)

(assert (=> bm!270080 (= call!270085 (isEmpty!23512 (tail!5752 tl!3933)))))

(declare-fun b!3719587 () Bool)

(declare-fun e!2302813 () Bool)

(assert (=> b!3719587 (= e!2302816 e!2302813)))

(declare-fun res!1511873 () Bool)

(assert (=> b!3719587 (=> (not res!1511873) (not e!2302813))))

(assert (=> b!3719587 (= res!1511873 (not lt!1297842))))

(declare-fun b!3719588 () Bool)

(assert (=> b!3719588 (= e!2302814 (nullable!3782 (derivativeStep!3324 lt!1297725 (head!8025 tl!3933))))))

(declare-fun b!3719589 () Bool)

(assert (=> b!3719589 (= e!2302818 (not lt!1297842))))

(declare-fun b!3719590 () Bool)

(assert (=> b!3719590 (= e!2302813 e!2302819)))

(declare-fun res!1511876 () Bool)

(assert (=> b!3719590 (=> res!1511876 e!2302819)))

(assert (=> b!3719590 (= res!1511876 call!270085)))

(declare-fun b!3719591 () Bool)

(declare-fun res!1511879 () Bool)

(assert (=> b!3719591 (=> res!1511879 e!2302816)))

(assert (=> b!3719591 (= res!1511879 (not ((_ is ElementMatch!10859) (derivativeStep!3324 lt!1297725 (head!8025 tl!3933)))))))

(assert (=> b!3719591 (= e!2302818 e!2302816)))

(declare-fun b!3719592 () Bool)

(assert (=> b!3719592 (= e!2302817 (= (head!8025 (tail!5752 tl!3933)) (c!642993 (derivativeStep!3324 lt!1297725 (head!8025 tl!3933)))))))

(assert (= (and d!1088877 c!643174) b!3719588))

(assert (= (and d!1088877 (not c!643174)) b!3719586))

(assert (= (and d!1088877 c!643176) b!3719582))

(assert (= (and d!1088877 (not c!643176)) b!3719581))

(assert (= (and b!3719581 c!643175) b!3719589))

(assert (= (and b!3719581 (not c!643175)) b!3719591))

(assert (= (and b!3719591 (not res!1511879)) b!3719583))

(assert (= (and b!3719583 res!1511875) b!3719580))

(assert (= (and b!3719580 res!1511877) b!3719584))

(assert (= (and b!3719584 res!1511874) b!3719592))

(assert (= (and b!3719583 (not res!1511878)) b!3719587))

(assert (= (and b!3719587 res!1511873) b!3719590))

(assert (= (and b!3719590 (not res!1511876)) b!3719585))

(assert (= (and b!3719585 (not res!1511880)) b!3719579))

(assert (= (or b!3719582 b!3719580 b!3719590) bm!270080))

(assert (=> d!1088877 m!4223899))

(assert (=> d!1088877 m!4223903))

(assert (=> d!1088877 m!4224205))

(declare-fun m!4224271 () Bool)

(assert (=> d!1088877 m!4224271))

(assert (=> b!3719592 m!4223899))

(declare-fun m!4224273 () Bool)

(assert (=> b!3719592 m!4224273))

(assert (=> b!3719579 m!4223899))

(assert (=> b!3719579 m!4224273))

(assert (=> b!3719586 m!4223899))

(assert (=> b!3719586 m!4224273))

(assert (=> b!3719586 m!4224205))

(assert (=> b!3719586 m!4224273))

(declare-fun m!4224275 () Bool)

(assert (=> b!3719586 m!4224275))

(assert (=> b!3719586 m!4223899))

(declare-fun m!4224277 () Bool)

(assert (=> b!3719586 m!4224277))

(assert (=> b!3719586 m!4224275))

(assert (=> b!3719586 m!4224277))

(declare-fun m!4224279 () Bool)

(assert (=> b!3719586 m!4224279))

(assert (=> b!3719585 m!4223899))

(assert (=> b!3719585 m!4224277))

(assert (=> b!3719585 m!4224277))

(declare-fun m!4224281 () Bool)

(assert (=> b!3719585 m!4224281))

(assert (=> b!3719584 m!4223899))

(assert (=> b!3719584 m!4224277))

(assert (=> b!3719584 m!4224277))

(assert (=> b!3719584 m!4224281))

(assert (=> bm!270080 m!4223899))

(assert (=> bm!270080 m!4223903))

(assert (=> b!3719588 m!4224205))

(declare-fun m!4224283 () Bool)

(assert (=> b!3719588 m!4224283))

(assert (=> b!3719479 d!1088877))

(declare-fun b!3719593 () Bool)

(declare-fun e!2302821 () Regex!10859)

(declare-fun e!2302824 () Regex!10859)

(assert (=> b!3719593 (= e!2302821 e!2302824)))

(declare-fun c!643181 () Bool)

(assert (=> b!3719593 (= c!643181 ((_ is Star!10859) lt!1297725))))

(declare-fun b!3719594 () Bool)

(declare-fun call!270088 () Regex!10859)

(assert (=> b!3719594 (= e!2302824 (Concat!17130 call!270088 lt!1297725))))

(declare-fun bm!270081 () Bool)

(declare-fun call!270089 () Regex!10859)

(assert (=> bm!270081 (= call!270088 call!270089)))

(declare-fun b!3719595 () Bool)

(declare-fun e!2302822 () Regex!10859)

(declare-fun e!2302820 () Regex!10859)

(assert (=> b!3719595 (= e!2302822 e!2302820)))

(declare-fun c!643177 () Bool)

(assert (=> b!3719595 (= c!643177 ((_ is ElementMatch!10859) lt!1297725))))

(declare-fun b!3719596 () Bool)

(assert (=> b!3719596 (= e!2302822 EmptyLang!10859)))

(declare-fun bm!270082 () Bool)

(declare-fun call!270087 () Regex!10859)

(declare-fun call!270086 () Regex!10859)

(assert (=> bm!270082 (= call!270087 call!270086)))

(declare-fun e!2302823 () Regex!10859)

(declare-fun b!3719597 () Bool)

(assert (=> b!3719597 (= e!2302823 (Union!10859 (Concat!17130 call!270087 (regTwo!22230 lt!1297725)) call!270088))))

(declare-fun b!3719598 () Bool)

(declare-fun c!643179 () Bool)

(assert (=> b!3719598 (= c!643179 ((_ is Union!10859) lt!1297725))))

(assert (=> b!3719598 (= e!2302820 e!2302821)))

(declare-fun bm!270083 () Bool)

(assert (=> bm!270083 (= call!270086 (derivativeStep!3324 (ite c!643179 (regOne!22231 lt!1297725) (regOne!22230 lt!1297725)) (head!8025 tl!3933)))))

(declare-fun b!3719599 () Bool)

(assert (=> b!3719599 (= e!2302820 (ite (= (head!8025 tl!3933) (c!642993 lt!1297725)) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719600 () Bool)

(assert (=> b!3719600 (= e!2302823 (Union!10859 (Concat!17130 call!270087 (regTwo!22230 lt!1297725)) EmptyLang!10859))))

(declare-fun bm!270084 () Bool)

(assert (=> bm!270084 (= call!270089 (derivativeStep!3324 (ite c!643179 (regTwo!22231 lt!1297725) (ite c!643181 (reg!11188 lt!1297725) (regTwo!22230 lt!1297725))) (head!8025 tl!3933)))))

(declare-fun b!3719602 () Bool)

(assert (=> b!3719602 (= e!2302821 (Union!10859 call!270086 call!270089))))

(declare-fun d!1088879 () Bool)

(declare-fun lt!1297843 () Regex!10859)

(assert (=> d!1088879 (validRegex!4966 lt!1297843)))

(assert (=> d!1088879 (= lt!1297843 e!2302822)))

(declare-fun c!643180 () Bool)

(assert (=> d!1088879 (= c!643180 (or ((_ is EmptyExpr!10859) lt!1297725) ((_ is EmptyLang!10859) lt!1297725)))))

(assert (=> d!1088879 (validRegex!4966 lt!1297725)))

(assert (=> d!1088879 (= (derivativeStep!3324 lt!1297725 (head!8025 tl!3933)) lt!1297843)))

(declare-fun b!3719601 () Bool)

(declare-fun c!643178 () Bool)

(assert (=> b!3719601 (= c!643178 (nullable!3782 (regOne!22230 lt!1297725)))))

(assert (=> b!3719601 (= e!2302824 e!2302823)))

(assert (= (and d!1088879 c!643180) b!3719596))

(assert (= (and d!1088879 (not c!643180)) b!3719595))

(assert (= (and b!3719595 c!643177) b!3719599))

(assert (= (and b!3719595 (not c!643177)) b!3719598))

(assert (= (and b!3719598 c!643179) b!3719602))

(assert (= (and b!3719598 (not c!643179)) b!3719593))

(assert (= (and b!3719593 c!643181) b!3719594))

(assert (= (and b!3719593 (not c!643181)) b!3719601))

(assert (= (and b!3719601 c!643178) b!3719597))

(assert (= (and b!3719601 (not c!643178)) b!3719600))

(assert (= (or b!3719597 b!3719600) bm!270082))

(assert (= (or b!3719594 b!3719597) bm!270081))

(assert (= (or b!3719602 bm!270081) bm!270084))

(assert (= (or b!3719602 bm!270082) bm!270083))

(assert (=> bm!270083 m!4223895))

(declare-fun m!4224285 () Bool)

(assert (=> bm!270083 m!4224285))

(assert (=> bm!270084 m!4223895))

(declare-fun m!4224287 () Bool)

(assert (=> bm!270084 m!4224287))

(declare-fun m!4224289 () Bool)

(assert (=> d!1088879 m!4224289))

(assert (=> d!1088879 m!4224203))

(declare-fun m!4224291 () Bool)

(assert (=> b!3719601 m!4224291))

(assert (=> b!3719479 d!1088879))

(declare-fun d!1088881 () Bool)

(assert (=> d!1088881 (= (head!8025 tl!3933) (h!45036 tl!3933))))

(assert (=> b!3719479 d!1088881))

(declare-fun d!1088883 () Bool)

(assert (=> d!1088883 (= (tail!5752 tl!3933) (t!302423 tl!3933))))

(assert (=> b!3719479 d!1088883))

(declare-fun d!1088885 () Bool)

(assert (not d!1088885))

(assert (=> b!3718969 d!1088885))

(declare-fun d!1088887 () Bool)

(assert (not d!1088887))

(assert (=> b!3718969 d!1088887))

(declare-fun b!3719603 () Bool)

(declare-fun e!2302826 () Regex!10859)

(declare-fun e!2302829 () Regex!10859)

(assert (=> b!3719603 (= e!2302826 e!2302829)))

(declare-fun c!643186 () Bool)

(assert (=> b!3719603 (= c!643186 ((_ is Star!10859) (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(declare-fun call!270092 () Regex!10859)

(declare-fun b!3719604 () Bool)

(assert (=> b!3719604 (= e!2302829 (Concat!17130 call!270092 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(declare-fun bm!270085 () Bool)

(declare-fun call!270093 () Regex!10859)

(assert (=> bm!270085 (= call!270092 call!270093)))

(declare-fun b!3719605 () Bool)

(declare-fun e!2302827 () Regex!10859)

(declare-fun e!2302825 () Regex!10859)

(assert (=> b!3719605 (= e!2302827 e!2302825)))

(declare-fun c!643182 () Bool)

(assert (=> b!3719605 (= c!643182 ((_ is ElementMatch!10859) (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(declare-fun b!3719606 () Bool)

(assert (=> b!3719606 (= e!2302827 EmptyLang!10859)))

(declare-fun bm!270086 () Bool)

(declare-fun call!270091 () Regex!10859)

(declare-fun call!270090 () Regex!10859)

(assert (=> bm!270086 (= call!270091 call!270090)))

(declare-fun b!3719607 () Bool)

(declare-fun e!2302828 () Regex!10859)

(assert (=> b!3719607 (= e!2302828 (Union!10859 (Concat!17130 call!270091 (regTwo!22230 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))) call!270092))))

(declare-fun b!3719608 () Bool)

(declare-fun c!643184 () Bool)

(assert (=> b!3719608 (= c!643184 ((_ is Union!10859) (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(assert (=> b!3719608 (= e!2302825 e!2302826)))

(declare-fun bm!270087 () Bool)

(assert (=> bm!270087 (= call!270090 (derivativeStep!3324 (ite c!643184 (regOne!22231 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) (regOne!22230 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))) c!13576))))

(declare-fun b!3719609 () Bool)

(assert (=> b!3719609 (= e!2302825 (ite (= c!13576 (c!642993 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719610 () Bool)

(assert (=> b!3719610 (= e!2302828 (Union!10859 (Concat!17130 call!270091 (regTwo!22230 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))) EmptyLang!10859))))

(declare-fun bm!270088 () Bool)

(assert (=> bm!270088 (= call!270093 (derivativeStep!3324 (ite c!643184 (regTwo!22231 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) (ite c!643186 (reg!11188 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) (regTwo!22230 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))) c!13576))))

(declare-fun b!3719612 () Bool)

(assert (=> b!3719612 (= e!2302826 (Union!10859 call!270090 call!270093))))

(declare-fun d!1088889 () Bool)

(declare-fun lt!1297844 () Regex!10859)

(assert (=> d!1088889 (validRegex!4966 lt!1297844)))

(assert (=> d!1088889 (= lt!1297844 e!2302827)))

(declare-fun c!643185 () Bool)

(assert (=> d!1088889 (= c!643185 (or ((_ is EmptyExpr!10859) (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) ((_ is EmptyLang!10859) (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))

(assert (=> d!1088889 (validRegex!4966 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))

(assert (=> d!1088889 (= (derivativeStep!3324 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))) c!13576) lt!1297844)))

(declare-fun b!3719611 () Bool)

(declare-fun c!643183 () Bool)

(assert (=> b!3719611 (= c!643183 (nullable!3782 (regOne!22230 (ite c!643161 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))

(assert (=> b!3719611 (= e!2302829 e!2302828)))

(assert (= (and d!1088889 c!643185) b!3719606))

(assert (= (and d!1088889 (not c!643185)) b!3719605))

(assert (= (and b!3719605 c!643182) b!3719609))

(assert (= (and b!3719605 (not c!643182)) b!3719608))

(assert (= (and b!3719608 c!643184) b!3719612))

(assert (= (and b!3719608 (not c!643184)) b!3719603))

(assert (= (and b!3719603 c!643186) b!3719604))

(assert (= (and b!3719603 (not c!643186)) b!3719611))

(assert (= (and b!3719611 c!643183) b!3719607))

(assert (= (and b!3719611 (not c!643183)) b!3719610))

(assert (= (or b!3719607 b!3719610) bm!270086))

(assert (= (or b!3719604 b!3719607) bm!270085))

(assert (= (or b!3719612 bm!270085) bm!270088))

(assert (= (or b!3719612 bm!270086) bm!270087))

(declare-fun m!4224293 () Bool)

(assert (=> bm!270087 m!4224293))

(declare-fun m!4224295 () Bool)

(assert (=> bm!270088 m!4224295))

(declare-fun m!4224297 () Bool)

(assert (=> d!1088889 m!4224297))

(declare-fun m!4224299 () Bool)

(assert (=> d!1088889 m!4224299))

(declare-fun m!4224301 () Bool)

(assert (=> b!3719611 m!4224301))

(assert (=> bm!270075 d!1088889))

(declare-fun d!1088891 () Bool)

(assert (=> d!1088891 (= (isDefined!6751 lt!1297803) (not (isEmpty!23513 lt!1297803)))))

(declare-fun bs!574920 () Bool)

(assert (= bs!574920 d!1088891))

(declare-fun m!4224303 () Bool)

(assert (=> bs!574920 m!4224303))

(assert (=> b!3719291 d!1088891))

(assert (=> b!3719504 d!1088885))

(assert (=> b!3719504 d!1088887))

(declare-fun b!3719613 () Bool)

(declare-fun e!2302830 () List!39740)

(declare-fun e!2302831 () List!39740)

(assert (=> b!3719613 (= e!2302830 e!2302831)))

(declare-fun c!643187 () Bool)

(assert (=> b!3719613 (= c!643187 ((_ is ElementMatch!10859) (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(declare-fun bm!270089 () Bool)

(declare-fun call!270095 () List!39740)

(declare-fun call!270094 () List!39740)

(assert (=> bm!270089 (= call!270095 call!270094)))

(declare-fun b!3719614 () Bool)

(declare-fun e!2302833 () List!39740)

(declare-fun call!270097 () List!39740)

(assert (=> b!3719614 (= e!2302833 call!270097)))

(declare-fun b!3719615 () Bool)

(assert (=> b!3719615 (= e!2302833 call!270097)))

(declare-fun c!643188 () Bool)

(declare-fun c!643190 () Bool)

(declare-fun bm!270090 () Bool)

(assert (=> bm!270090 (= call!270094 (usedCharacters!1122 (ite c!643188 (reg!11188 (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) (ite c!643190 (regTwo!22231 (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) (regTwo!22230 (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))))

(declare-fun call!270096 () List!39740)

(declare-fun bm!270091 () Bool)

(assert (=> bm!270091 (= call!270096 (usedCharacters!1122 (ite c!643190 (regOne!22231 (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) (regOne!22230 (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))))

(declare-fun b!3719616 () Bool)

(assert (=> b!3719616 (= e!2302831 (Cons!39616 (c!642993 (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) Nil!39616))))

(declare-fun b!3719617 () Bool)

(declare-fun e!2302832 () List!39740)

(assert (=> b!3719617 (= e!2302832 e!2302833)))

(assert (=> b!3719617 (= c!643190 ((_ is Union!10859) (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(declare-fun b!3719618 () Bool)

(assert (=> b!3719618 (= e!2302830 Nil!39616)))

(declare-fun bm!270092 () Bool)

(assert (=> bm!270092 (= call!270097 (++!9805 call!270096 call!270095))))

(declare-fun d!1088893 () Bool)

(declare-fun c!643189 () Bool)

(assert (=> d!1088893 (= c!643189 (or ((_ is EmptyExpr!10859) (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) ((_ is EmptyLang!10859) (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))

(assert (=> d!1088893 (= (usedCharacters!1122 (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))) e!2302830)))

(declare-fun b!3719619 () Bool)

(assert (=> b!3719619 (= c!643188 ((_ is Star!10859) (ite c!643046 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(assert (=> b!3719619 (= e!2302831 e!2302832)))

(declare-fun b!3719620 () Bool)

(assert (=> b!3719620 (= e!2302832 call!270094)))

(assert (= (and d!1088893 c!643189) b!3719618))

(assert (= (and d!1088893 (not c!643189)) b!3719613))

(assert (= (and b!3719613 c!643187) b!3719616))

(assert (= (and b!3719613 (not c!643187)) b!3719619))

(assert (= (and b!3719619 c!643188) b!3719620))

(assert (= (and b!3719619 (not c!643188)) b!3719617))

(assert (= (and b!3719617 c!643190) b!3719614))

(assert (= (and b!3719617 (not c!643190)) b!3719615))

(assert (= (or b!3719614 b!3719615) bm!270091))

(assert (= (or b!3719614 b!3719615) bm!270089))

(assert (= (or b!3719614 b!3719615) bm!270092))

(assert (= (or b!3719620 bm!270089) bm!270090))

(declare-fun m!4224305 () Bool)

(assert (=> bm!270090 m!4224305))

(declare-fun m!4224307 () Bool)

(assert (=> bm!270091 m!4224307))

(declare-fun m!4224309 () Bool)

(assert (=> bm!270092 m!4224309))

(assert (=> bm!270010 d!1088893))

(declare-fun d!1088895 () Bool)

(assert (=> d!1088895 (= (isEmpty!23512 (tail!5752 tl!3933)) ((_ is Nil!39616) (tail!5752 tl!3933)))))

(assert (=> b!3719518 d!1088895))

(assert (=> b!3719518 d!1088883))

(declare-fun d!1088897 () Bool)

(assert (=> d!1088897 (= (nullable!3782 (derivative!373 lt!1297736 tl!3933)) (nullableFct!1070 (derivative!373 lt!1297736 tl!3933)))))

(declare-fun bs!574921 () Bool)

(assert (= bs!574921 d!1088897))

(assert (=> bs!574921 m!4223781))

(declare-fun m!4224311 () Bool)

(assert (=> bs!574921 m!4224311))

(assert (=> b!3719507 d!1088897))

(declare-fun d!1088899 () Bool)

(assert (=> d!1088899 (= (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729))) (h!45036 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))

(assert (=> b!3719438 d!1088899))

(assert (=> b!3718972 d!1088757))

(declare-fun b!3719621 () Bool)

(declare-fun e!2302840 () Bool)

(assert (=> b!3719621 (= e!2302840 (not (= (head!8025 (tail!5752 (_1!22746 lt!1297729))) (c!642993 (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729)))))))))

(declare-fun b!3719622 () Bool)

(declare-fun res!1511885 () Bool)

(declare-fun e!2302838 () Bool)

(assert (=> b!3719622 (=> (not res!1511885) (not e!2302838))))

(declare-fun call!270098 () Bool)

(assert (=> b!3719622 (= res!1511885 (not call!270098))))

(declare-fun b!3719623 () Bool)

(declare-fun e!2302836 () Bool)

(declare-fun e!2302839 () Bool)

(assert (=> b!3719623 (= e!2302836 e!2302839)))

(declare-fun c!643192 () Bool)

(assert (=> b!3719623 (= c!643192 ((_ is EmptyLang!10859) (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729)))))))

(declare-fun b!3719624 () Bool)

(declare-fun lt!1297845 () Bool)

(assert (=> b!3719624 (= e!2302836 (= lt!1297845 call!270098))))

(declare-fun d!1088901 () Bool)

(assert (=> d!1088901 e!2302836))

(declare-fun c!643193 () Bool)

(assert (=> d!1088901 (= c!643193 ((_ is EmptyExpr!10859) (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729)))))))

(declare-fun e!2302835 () Bool)

(assert (=> d!1088901 (= lt!1297845 e!2302835)))

(declare-fun c!643191 () Bool)

(assert (=> d!1088901 (= c!643191 (isEmpty!23512 (tail!5752 (_1!22746 lt!1297729))))))

(assert (=> d!1088901 (validRegex!4966 (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729))))))

(assert (=> d!1088901 (= (matchR!5304 (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729))) (tail!5752 (_1!22746 lt!1297729))) lt!1297845)))

(declare-fun b!3719625 () Bool)

(declare-fun res!1511886 () Bool)

(declare-fun e!2302837 () Bool)

(assert (=> b!3719625 (=> res!1511886 e!2302837)))

(assert (=> b!3719625 (= res!1511886 e!2302838)))

(declare-fun res!1511883 () Bool)

(assert (=> b!3719625 (=> (not res!1511883) (not e!2302838))))

(assert (=> b!3719625 (= res!1511883 lt!1297845)))

(declare-fun b!3719626 () Bool)

(declare-fun res!1511882 () Bool)

(assert (=> b!3719626 (=> (not res!1511882) (not e!2302838))))

(assert (=> b!3719626 (= res!1511882 (isEmpty!23512 (tail!5752 (tail!5752 (_1!22746 lt!1297729)))))))

(declare-fun b!3719627 () Bool)

(declare-fun res!1511888 () Bool)

(assert (=> b!3719627 (=> res!1511888 e!2302840)))

(assert (=> b!3719627 (= res!1511888 (not (isEmpty!23512 (tail!5752 (tail!5752 (_1!22746 lt!1297729))))))))

(declare-fun b!3719628 () Bool)

(assert (=> b!3719628 (= e!2302835 (matchR!5304 (derivativeStep!3324 (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729))) (head!8025 (tail!5752 (_1!22746 lt!1297729)))) (tail!5752 (tail!5752 (_1!22746 lt!1297729)))))))

(declare-fun bm!270093 () Bool)

(assert (=> bm!270093 (= call!270098 (isEmpty!23512 (tail!5752 (_1!22746 lt!1297729))))))

(declare-fun b!3719629 () Bool)

(declare-fun e!2302834 () Bool)

(assert (=> b!3719629 (= e!2302837 e!2302834)))

(declare-fun res!1511881 () Bool)

(assert (=> b!3719629 (=> (not res!1511881) (not e!2302834))))

(assert (=> b!3719629 (= res!1511881 (not lt!1297845))))

(declare-fun b!3719630 () Bool)

(assert (=> b!3719630 (= e!2302835 (nullable!3782 (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729)))))))

(declare-fun b!3719631 () Bool)

(assert (=> b!3719631 (= e!2302839 (not lt!1297845))))

(declare-fun b!3719632 () Bool)

(assert (=> b!3719632 (= e!2302834 e!2302840)))

(declare-fun res!1511884 () Bool)

(assert (=> b!3719632 (=> res!1511884 e!2302840)))

(assert (=> b!3719632 (= res!1511884 call!270098)))

(declare-fun b!3719633 () Bool)

(declare-fun res!1511887 () Bool)

(assert (=> b!3719633 (=> res!1511887 e!2302837)))

(assert (=> b!3719633 (= res!1511887 (not ((_ is ElementMatch!10859) (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729))))))))

(assert (=> b!3719633 (= e!2302839 e!2302837)))

(declare-fun b!3719634 () Bool)

(assert (=> b!3719634 (= e!2302838 (= (head!8025 (tail!5752 (_1!22746 lt!1297729))) (c!642993 (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729))))))))

(assert (= (and d!1088901 c!643191) b!3719630))

(assert (= (and d!1088901 (not c!643191)) b!3719628))

(assert (= (and d!1088901 c!643193) b!3719624))

(assert (= (and d!1088901 (not c!643193)) b!3719623))

(assert (= (and b!3719623 c!643192) b!3719631))

(assert (= (and b!3719623 (not c!643192)) b!3719633))

(assert (= (and b!3719633 (not res!1511887)) b!3719625))

(assert (= (and b!3719625 res!1511883) b!3719622))

(assert (= (and b!3719622 res!1511885) b!3719626))

(assert (= (and b!3719626 res!1511882) b!3719634))

(assert (= (and b!3719625 (not res!1511886)) b!3719629))

(assert (= (and b!3719629 res!1511881) b!3719632))

(assert (= (and b!3719632 (not res!1511884)) b!3719627))

(assert (= (and b!3719627 (not res!1511888)) b!3719621))

(assert (= (or b!3719624 b!3719622 b!3719632) bm!270093))

(assert (=> d!1088901 m!4224257))

(assert (=> d!1088901 m!4224261))

(assert (=> d!1088901 m!4224255))

(declare-fun m!4224313 () Bool)

(assert (=> d!1088901 m!4224313))

(assert (=> b!3719634 m!4224257))

(declare-fun m!4224315 () Bool)

(assert (=> b!3719634 m!4224315))

(assert (=> b!3719621 m!4224257))

(assert (=> b!3719621 m!4224315))

(assert (=> b!3719628 m!4224257))

(assert (=> b!3719628 m!4224315))

(assert (=> b!3719628 m!4224255))

(assert (=> b!3719628 m!4224315))

(declare-fun m!4224317 () Bool)

(assert (=> b!3719628 m!4224317))

(assert (=> b!3719628 m!4224257))

(declare-fun m!4224319 () Bool)

(assert (=> b!3719628 m!4224319))

(assert (=> b!3719628 m!4224317))

(assert (=> b!3719628 m!4224319))

(declare-fun m!4224321 () Bool)

(assert (=> b!3719628 m!4224321))

(assert (=> b!3719627 m!4224257))

(assert (=> b!3719627 m!4224319))

(assert (=> b!3719627 m!4224319))

(declare-fun m!4224323 () Bool)

(assert (=> b!3719627 m!4224323))

(assert (=> b!3719626 m!4224257))

(assert (=> b!3719626 m!4224319))

(assert (=> b!3719626 m!4224319))

(assert (=> b!3719626 m!4224323))

(assert (=> bm!270093 m!4224257))

(assert (=> bm!270093 m!4224261))

(assert (=> b!3719630 m!4224255))

(declare-fun m!4224325 () Bool)

(assert (=> b!3719630 m!4224325))

(assert (=> b!3719535 d!1088901))

(declare-fun b!3719635 () Bool)

(declare-fun e!2302842 () Regex!10859)

(declare-fun e!2302845 () Regex!10859)

(assert (=> b!3719635 (= e!2302842 e!2302845)))

(declare-fun c!643198 () Bool)

(assert (=> b!3719635 (= c!643198 ((_ is Star!10859) lt!1297728))))

(declare-fun b!3719636 () Bool)

(declare-fun call!270101 () Regex!10859)

(assert (=> b!3719636 (= e!2302845 (Concat!17130 call!270101 lt!1297728))))

(declare-fun bm!270094 () Bool)

(declare-fun call!270102 () Regex!10859)

(assert (=> bm!270094 (= call!270101 call!270102)))

(declare-fun b!3719637 () Bool)

(declare-fun e!2302843 () Regex!10859)

(declare-fun e!2302841 () Regex!10859)

(assert (=> b!3719637 (= e!2302843 e!2302841)))

(declare-fun c!643194 () Bool)

(assert (=> b!3719637 (= c!643194 ((_ is ElementMatch!10859) lt!1297728))))

(declare-fun b!3719638 () Bool)

(assert (=> b!3719638 (= e!2302843 EmptyLang!10859)))

(declare-fun bm!270095 () Bool)

(declare-fun call!270100 () Regex!10859)

(declare-fun call!270099 () Regex!10859)

(assert (=> bm!270095 (= call!270100 call!270099)))

(declare-fun e!2302844 () Regex!10859)

(declare-fun b!3719639 () Bool)

(assert (=> b!3719639 (= e!2302844 (Union!10859 (Concat!17130 call!270100 (regTwo!22230 lt!1297728)) call!270101))))

(declare-fun b!3719640 () Bool)

(declare-fun c!643196 () Bool)

(assert (=> b!3719640 (= c!643196 ((_ is Union!10859) lt!1297728))))

(assert (=> b!3719640 (= e!2302841 e!2302842)))

(declare-fun bm!270096 () Bool)

(assert (=> bm!270096 (= call!270099 (derivativeStep!3324 (ite c!643196 (regOne!22231 lt!1297728) (regOne!22230 lt!1297728)) (head!8025 (_1!22746 lt!1297729))))))

(declare-fun b!3719641 () Bool)

(assert (=> b!3719641 (= e!2302841 (ite (= (head!8025 (_1!22746 lt!1297729)) (c!642993 lt!1297728)) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719642 () Bool)

(assert (=> b!3719642 (= e!2302844 (Union!10859 (Concat!17130 call!270100 (regTwo!22230 lt!1297728)) EmptyLang!10859))))

(declare-fun bm!270097 () Bool)

(assert (=> bm!270097 (= call!270102 (derivativeStep!3324 (ite c!643196 (regTwo!22231 lt!1297728) (ite c!643198 (reg!11188 lt!1297728) (regTwo!22230 lt!1297728))) (head!8025 (_1!22746 lt!1297729))))))

(declare-fun b!3719644 () Bool)

(assert (=> b!3719644 (= e!2302842 (Union!10859 call!270099 call!270102))))

(declare-fun d!1088903 () Bool)

(declare-fun lt!1297846 () Regex!10859)

(assert (=> d!1088903 (validRegex!4966 lt!1297846)))

(assert (=> d!1088903 (= lt!1297846 e!2302843)))

(declare-fun c!643197 () Bool)

(assert (=> d!1088903 (= c!643197 (or ((_ is EmptyExpr!10859) lt!1297728) ((_ is EmptyLang!10859) lt!1297728)))))

(assert (=> d!1088903 (validRegex!4966 lt!1297728)))

(assert (=> d!1088903 (= (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 lt!1297729))) lt!1297846)))

(declare-fun b!3719643 () Bool)

(declare-fun c!643195 () Bool)

(assert (=> b!3719643 (= c!643195 (nullable!3782 (regOne!22230 lt!1297728)))))

(assert (=> b!3719643 (= e!2302845 e!2302844)))

(assert (= (and d!1088903 c!643197) b!3719638))

(assert (= (and d!1088903 (not c!643197)) b!3719637))

(assert (= (and b!3719637 c!643194) b!3719641))

(assert (= (and b!3719637 (not c!643194)) b!3719640))

(assert (= (and b!3719640 c!643196) b!3719644))

(assert (= (and b!3719640 (not c!643196)) b!3719635))

(assert (= (and b!3719635 c!643198) b!3719636))

(assert (= (and b!3719635 (not c!643198)) b!3719643))

(assert (= (and b!3719643 c!643195) b!3719639))

(assert (= (and b!3719643 (not c!643195)) b!3719642))

(assert (= (or b!3719639 b!3719642) bm!270095))

(assert (= (or b!3719636 b!3719639) bm!270094))

(assert (= (or b!3719644 bm!270094) bm!270097))

(assert (= (or b!3719644 bm!270095) bm!270096))

(assert (=> bm!270096 m!4224253))

(declare-fun m!4224327 () Bool)

(assert (=> bm!270096 m!4224327))

(assert (=> bm!270097 m!4224253))

(declare-fun m!4224329 () Bool)

(assert (=> bm!270097 m!4224329))

(declare-fun m!4224331 () Bool)

(assert (=> d!1088903 m!4224331))

(assert (=> d!1088903 m!4223825))

(declare-fun m!4224333 () Bool)

(assert (=> b!3719643 m!4224333))

(assert (=> b!3719535 d!1088903))

(declare-fun d!1088905 () Bool)

(assert (=> d!1088905 (= (head!8025 (_1!22746 lt!1297729)) (h!45036 (_1!22746 lt!1297729)))))

(assert (=> b!3719535 d!1088905))

(declare-fun d!1088907 () Bool)

(assert (=> d!1088907 (= (tail!5752 (_1!22746 lt!1297729)) (t!302423 (_1!22746 lt!1297729)))))

(assert (=> b!3719535 d!1088907))

(declare-fun d!1088909 () Bool)

(declare-fun c!643201 () Bool)

(assert (=> d!1088909 (= c!643201 ((_ is Nil!39616) (usedCharacters!1122 (regOne!22230 r!26326))))))

(declare-fun e!2302848 () (InoxSet C!21904))

(assert (=> d!1088909 (= (content!5741 (usedCharacters!1122 (regOne!22230 r!26326))) e!2302848)))

(declare-fun b!3719649 () Bool)

(assert (=> b!3719649 (= e!2302848 ((as const (Array C!21904 Bool)) false))))

(declare-fun b!3719650 () Bool)

(assert (=> b!3719650 (= e!2302848 ((_ map or) (store ((as const (Array C!21904 Bool)) false) (h!45036 (usedCharacters!1122 (regOne!22230 r!26326))) true) (content!5741 (t!302423 (usedCharacters!1122 (regOne!22230 r!26326))))))))

(assert (= (and d!1088909 c!643201) b!3719649))

(assert (= (and d!1088909 (not c!643201)) b!3719650))

(declare-fun m!4224335 () Bool)

(assert (=> b!3719650 m!4224335))

(declare-fun m!4224337 () Bool)

(assert (=> b!3719650 m!4224337))

(assert (=> d!1088773 d!1088909))

(declare-fun d!1088911 () Bool)

(assert (not d!1088911))

(assert (=> b!3718976 d!1088911))

(assert (=> b!3719097 d!1088895))

(assert (=> b!3719097 d!1088883))

(assert (=> b!3719471 d!1088775))

(declare-fun b!3719651 () Bool)

(declare-fun e!2302850 () Regex!10859)

(declare-fun e!2302853 () Regex!10859)

(assert (=> b!3719651 (= e!2302850 e!2302853)))

(declare-fun c!643206 () Bool)

(assert (=> b!3719651 (= c!643206 ((_ is Star!10859) (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(declare-fun call!270105 () Regex!10859)

(declare-fun b!3719652 () Bool)

(assert (=> b!3719652 (= e!2302853 (Concat!17130 call!270105 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(declare-fun bm!270098 () Bool)

(declare-fun call!270106 () Regex!10859)

(assert (=> bm!270098 (= call!270105 call!270106)))

(declare-fun b!3719653 () Bool)

(declare-fun e!2302851 () Regex!10859)

(declare-fun e!2302849 () Regex!10859)

(assert (=> b!3719653 (= e!2302851 e!2302849)))

(declare-fun c!643202 () Bool)

(assert (=> b!3719653 (= c!643202 ((_ is ElementMatch!10859) (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(declare-fun b!3719654 () Bool)

(assert (=> b!3719654 (= e!2302851 EmptyLang!10859)))

(declare-fun bm!270099 () Bool)

(declare-fun call!270104 () Regex!10859)

(declare-fun call!270103 () Regex!10859)

(assert (=> bm!270099 (= call!270104 call!270103)))

(declare-fun e!2302852 () Regex!10859)

(declare-fun b!3719655 () Bool)

(assert (=> b!3719655 (= e!2302852 (Union!10859 (Concat!17130 call!270104 (regTwo!22230 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))) call!270105))))

(declare-fun b!3719656 () Bool)

(declare-fun c!643204 () Bool)

(assert (=> b!3719656 (= c!643204 ((_ is Union!10859) (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(assert (=> b!3719656 (= e!2302849 e!2302850)))

(declare-fun bm!270100 () Bool)

(assert (=> bm!270100 (= call!270103 (derivativeStep!3324 (ite c!643204 (regOne!22231 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) (regOne!22230 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))) c!13576))))

(declare-fun b!3719657 () Bool)

(assert (=> b!3719657 (= e!2302849 (ite (= c!13576 (c!642993 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719658 () Bool)

(assert (=> b!3719658 (= e!2302852 (Union!10859 (Concat!17130 call!270104 (regTwo!22230 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))) EmptyLang!10859))))

(declare-fun bm!270101 () Bool)

(assert (=> bm!270101 (= call!270106 (derivativeStep!3324 (ite c!643204 (regTwo!22231 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) (ite c!643206 (reg!11188 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) (regTwo!22230 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))) c!13576))))

(declare-fun b!3719660 () Bool)

(assert (=> b!3719660 (= e!2302850 (Union!10859 call!270103 call!270106))))

(declare-fun d!1088913 () Bool)

(declare-fun lt!1297847 () Regex!10859)

(assert (=> d!1088913 (validRegex!4966 lt!1297847)))

(assert (=> d!1088913 (= lt!1297847 e!2302851)))

(declare-fun c!643205 () Bool)

(assert (=> d!1088913 (= c!643205 (or ((_ is EmptyExpr!10859) (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) ((_ is EmptyLang!10859) (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))))

(assert (=> d!1088913 (validRegex!4966 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))

(assert (=> d!1088913 (= (derivativeStep!3324 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))) c!13576) lt!1297847)))

(declare-fun c!643203 () Bool)

(declare-fun b!3719659 () Bool)

(assert (=> b!3719659 (= c!643203 (nullable!3782 (regOne!22230 (ite c!643161 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643163 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))))

(assert (=> b!3719659 (= e!2302853 e!2302852)))

(assert (= (and d!1088913 c!643205) b!3719654))

(assert (= (and d!1088913 (not c!643205)) b!3719653))

(assert (= (and b!3719653 c!643202) b!3719657))

(assert (= (and b!3719653 (not c!643202)) b!3719656))

(assert (= (and b!3719656 c!643204) b!3719660))

(assert (= (and b!3719656 (not c!643204)) b!3719651))

(assert (= (and b!3719651 c!643206) b!3719652))

(assert (= (and b!3719651 (not c!643206)) b!3719659))

(assert (= (and b!3719659 c!643203) b!3719655))

(assert (= (and b!3719659 (not c!643203)) b!3719658))

(assert (= (or b!3719655 b!3719658) bm!270099))

(assert (= (or b!3719652 b!3719655) bm!270098))

(assert (= (or b!3719660 bm!270098) bm!270101))

(assert (= (or b!3719660 bm!270099) bm!270100))

(declare-fun m!4224339 () Bool)

(assert (=> bm!270100 m!4224339))

(declare-fun m!4224341 () Bool)

(assert (=> bm!270101 m!4224341))

(declare-fun m!4224343 () Bool)

(assert (=> d!1088913 m!4224343))

(declare-fun m!4224345 () Bool)

(assert (=> d!1088913 m!4224345))

(declare-fun m!4224347 () Bool)

(assert (=> b!3719659 m!4224347))

(assert (=> bm!270076 d!1088913))

(declare-fun b!3719661 () Bool)

(declare-fun e!2302855 () List!39740)

(assert (=> b!3719661 (= e!2302855 (_2!22746 (get!13204 lt!1297803)))))

(declare-fun b!3719664 () Bool)

(declare-fun e!2302854 () Bool)

(declare-fun lt!1297848 () List!39740)

(assert (=> b!3719664 (= e!2302854 (or (not (= (_2!22746 (get!13204 lt!1297803)) Nil!39616)) (= lt!1297848 (_1!22746 (get!13204 lt!1297803)))))))

(declare-fun b!3719663 () Bool)

(declare-fun res!1511890 () Bool)

(assert (=> b!3719663 (=> (not res!1511890) (not e!2302854))))

(assert (=> b!3719663 (= res!1511890 (= (size!30023 lt!1297848) (+ (size!30023 (_1!22746 (get!13204 lt!1297803))) (size!30023 (_2!22746 (get!13204 lt!1297803))))))))

(declare-fun b!3719662 () Bool)

(assert (=> b!3719662 (= e!2302855 (Cons!39616 (h!45036 (_1!22746 (get!13204 lt!1297803))) (++!9805 (t!302423 (_1!22746 (get!13204 lt!1297803))) (_2!22746 (get!13204 lt!1297803)))))))

(declare-fun d!1088915 () Bool)

(assert (=> d!1088915 e!2302854))

(declare-fun res!1511889 () Bool)

(assert (=> d!1088915 (=> (not res!1511889) (not e!2302854))))

(assert (=> d!1088915 (= res!1511889 (= (content!5741 lt!1297848) ((_ map or) (content!5741 (_1!22746 (get!13204 lt!1297803))) (content!5741 (_2!22746 (get!13204 lt!1297803))))))))

(assert (=> d!1088915 (= lt!1297848 e!2302855)))

(declare-fun c!643207 () Bool)

(assert (=> d!1088915 (= c!643207 ((_ is Nil!39616) (_1!22746 (get!13204 lt!1297803))))))

(assert (=> d!1088915 (= (++!9805 (_1!22746 (get!13204 lt!1297803)) (_2!22746 (get!13204 lt!1297803))) lt!1297848)))

(assert (= (and d!1088915 c!643207) b!3719661))

(assert (= (and d!1088915 (not c!643207)) b!3719662))

(assert (= (and d!1088915 res!1511889) b!3719663))

(assert (= (and b!3719663 res!1511890) b!3719664))

(declare-fun m!4224349 () Bool)

(assert (=> b!3719663 m!4224349))

(declare-fun m!4224351 () Bool)

(assert (=> b!3719663 m!4224351))

(declare-fun m!4224353 () Bool)

(assert (=> b!3719663 m!4224353))

(declare-fun m!4224355 () Bool)

(assert (=> b!3719662 m!4224355))

(declare-fun m!4224357 () Bool)

(assert (=> d!1088915 m!4224357))

(declare-fun m!4224359 () Bool)

(assert (=> d!1088915 m!4224359))

(declare-fun m!4224361 () Bool)

(assert (=> d!1088915 m!4224361))

(assert (=> b!3719295 d!1088915))

(declare-fun d!1088917 () Bool)

(assert (=> d!1088917 (= (get!13204 lt!1297803) (v!38595 lt!1297803))))

(assert (=> b!3719295 d!1088917))

(declare-fun b!3719665 () Bool)

(declare-fun res!1511895 () Bool)

(declare-fun e!2302861 () Bool)

(assert (=> b!3719665 (=> res!1511895 e!2302861)))

(assert (=> b!3719665 (= res!1511895 (not ((_ is Concat!17130) (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326))))))))

(declare-fun e!2302862 () Bool)

(assert (=> b!3719665 (= e!2302862 e!2302861)))

(declare-fun b!3719667 () Bool)

(declare-fun res!1511891 () Bool)

(declare-fun e!2302860 () Bool)

(assert (=> b!3719667 (=> (not res!1511891) (not e!2302860))))

(declare-fun call!270109 () Bool)

(assert (=> b!3719667 (= res!1511891 call!270109)))

(assert (=> b!3719667 (= e!2302862 e!2302860)))

(declare-fun call!270107 () Bool)

(declare-fun c!643208 () Bool)

(declare-fun c!643209 () Bool)

(declare-fun bm!270102 () Bool)

(assert (=> bm!270102 (= call!270107 (validRegex!4966 (ite c!643208 (reg!11188 (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))) (ite c!643209 (regTwo!22231 (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))) (regOne!22230 (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326))))))))))

(declare-fun bm!270103 () Bool)

(assert (=> bm!270103 (= call!270109 (validRegex!4966 (ite c!643209 (regOne!22231 (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))) (regTwo!22230 (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))))))))

(declare-fun b!3719668 () Bool)

(declare-fun e!2302859 () Bool)

(assert (=> b!3719668 (= e!2302859 call!270109)))

(declare-fun b!3719669 () Bool)

(declare-fun e!2302856 () Bool)

(assert (=> b!3719669 (= e!2302856 e!2302862)))

(assert (=> b!3719669 (= c!643209 ((_ is Union!10859) (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))))))

(declare-fun b!3719670 () Bool)

(declare-fun e!2302858 () Bool)

(assert (=> b!3719670 (= e!2302858 e!2302856)))

(assert (=> b!3719670 (= c!643208 ((_ is Star!10859) (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))))))

(declare-fun b!3719671 () Bool)

(declare-fun e!2302857 () Bool)

(assert (=> b!3719671 (= e!2302856 e!2302857)))

(declare-fun res!1511894 () Bool)

(assert (=> b!3719671 (= res!1511894 (not (nullable!3782 (reg!11188 (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))))))))

(assert (=> b!3719671 (=> (not res!1511894) (not e!2302857))))

(declare-fun bm!270104 () Bool)

(declare-fun call!270108 () Bool)

(assert (=> bm!270104 (= call!270108 call!270107)))

(declare-fun b!3719666 () Bool)

(assert (=> b!3719666 (= e!2302861 e!2302859)))

(declare-fun res!1511892 () Bool)

(assert (=> b!3719666 (=> (not res!1511892) (not e!2302859))))

(assert (=> b!3719666 (= res!1511892 call!270108)))

(declare-fun d!1088919 () Bool)

(declare-fun res!1511893 () Bool)

(assert (=> d!1088919 (=> res!1511893 e!2302858)))

(assert (=> d!1088919 (= res!1511893 ((_ is ElementMatch!10859) (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))))))

(assert (=> d!1088919 (= (validRegex!4966 (ite c!643147 (reg!11188 r!26326) (ite c!643148 (regTwo!22231 r!26326) (regOne!22230 r!26326)))) e!2302858)))

(declare-fun b!3719672 () Bool)

(assert (=> b!3719672 (= e!2302860 call!270108)))

(declare-fun b!3719673 () Bool)

(assert (=> b!3719673 (= e!2302857 call!270107)))

(assert (= (and d!1088919 (not res!1511893)) b!3719670))

(assert (= (and b!3719670 c!643208) b!3719671))

(assert (= (and b!3719670 (not c!643208)) b!3719669))

(assert (= (and b!3719671 res!1511894) b!3719673))

(assert (= (and b!3719669 c!643209) b!3719667))

(assert (= (and b!3719669 (not c!643209)) b!3719665))

(assert (= (and b!3719667 res!1511891) b!3719672))

(assert (= (and b!3719665 (not res!1511895)) b!3719666))

(assert (= (and b!3719666 res!1511892) b!3719668))

(assert (= (or b!3719672 b!3719666) bm!270104))

(assert (= (or b!3719667 b!3719668) bm!270103))

(assert (= (or b!3719673 bm!270104) bm!270102))

(declare-fun m!4224363 () Bool)

(assert (=> bm!270102 m!4224363))

(declare-fun m!4224365 () Bool)

(assert (=> bm!270103 m!4224365))

(declare-fun m!4224367 () Bool)

(assert (=> b!3719671 m!4224367))

(assert (=> bm!270067 d!1088919))

(declare-fun b!3719674 () Bool)

(declare-fun e!2302864 () List!39740)

(assert (=> b!3719674 (= e!2302864 call!270014)))

(declare-fun lt!1297849 () List!39740)

(declare-fun e!2302863 () Bool)

(declare-fun b!3719677 () Bool)

(assert (=> b!3719677 (= e!2302863 (or (not (= call!270014 Nil!39616)) (= lt!1297849 call!270015)))))

(declare-fun b!3719676 () Bool)

(declare-fun res!1511897 () Bool)

(assert (=> b!3719676 (=> (not res!1511897) (not e!2302863))))

(assert (=> b!3719676 (= res!1511897 (= (size!30023 lt!1297849) (+ (size!30023 call!270015) (size!30023 call!270014))))))

(declare-fun b!3719675 () Bool)

(assert (=> b!3719675 (= e!2302864 (Cons!39616 (h!45036 call!270015) (++!9805 (t!302423 call!270015) call!270014)))))

(declare-fun d!1088921 () Bool)

(assert (=> d!1088921 e!2302863))

(declare-fun res!1511896 () Bool)

(assert (=> d!1088921 (=> (not res!1511896) (not e!2302863))))

(assert (=> d!1088921 (= res!1511896 (= (content!5741 lt!1297849) ((_ map or) (content!5741 call!270015) (content!5741 call!270014))))))

(assert (=> d!1088921 (= lt!1297849 e!2302864)))

(declare-fun c!643210 () Bool)

(assert (=> d!1088921 (= c!643210 ((_ is Nil!39616) call!270015))))

(assert (=> d!1088921 (= (++!9805 call!270015 call!270014) lt!1297849)))

(assert (= (and d!1088921 c!643210) b!3719674))

(assert (= (and d!1088921 (not c!643210)) b!3719675))

(assert (= (and d!1088921 res!1511896) b!3719676))

(assert (= (and b!3719676 res!1511897) b!3719677))

(declare-fun m!4224369 () Bool)

(assert (=> b!3719676 m!4224369))

(declare-fun m!4224371 () Bool)

(assert (=> b!3719676 m!4224371))

(declare-fun m!4224373 () Bool)

(assert (=> b!3719676 m!4224373))

(declare-fun m!4224375 () Bool)

(assert (=> b!3719675 m!4224375))

(declare-fun m!4224377 () Bool)

(assert (=> d!1088921 m!4224377))

(declare-fun m!4224379 () Bool)

(assert (=> d!1088921 m!4224379))

(declare-fun m!4224381 () Bool)

(assert (=> d!1088921 m!4224381))

(assert (=> bm!270011 d!1088921))

(declare-fun d!1088923 () Bool)

(assert (=> d!1088923 (= (nullable!3782 lt!1297736) (nullableFct!1070 lt!1297736))))

(declare-fun bs!574922 () Bool)

(assert (= bs!574922 d!1088923))

(declare-fun m!4224383 () Bool)

(assert (=> bs!574922 m!4224383))

(assert (=> b!3719521 d!1088923))

(assert (=> b!3719511 d!1088911))

(assert (=> d!1088871 d!1088861))

(assert (=> d!1088871 d!1088865))

(declare-fun b!3719678 () Bool)

(declare-fun res!1511902 () Bool)

(declare-fun e!2302870 () Bool)

(assert (=> b!3719678 (=> res!1511902 e!2302870)))

(assert (=> b!3719678 (= res!1511902 (not ((_ is Concat!17130) lt!1297736)))))

(declare-fun e!2302871 () Bool)

(assert (=> b!3719678 (= e!2302871 e!2302870)))

(declare-fun b!3719680 () Bool)

(declare-fun res!1511898 () Bool)

(declare-fun e!2302869 () Bool)

(assert (=> b!3719680 (=> (not res!1511898) (not e!2302869))))

(declare-fun call!270112 () Bool)

(assert (=> b!3719680 (= res!1511898 call!270112)))

(assert (=> b!3719680 (= e!2302871 e!2302869)))

(declare-fun bm!270105 () Bool)

(declare-fun call!270110 () Bool)

(declare-fun c!643211 () Bool)

(declare-fun c!643212 () Bool)

(assert (=> bm!270105 (= call!270110 (validRegex!4966 (ite c!643211 (reg!11188 lt!1297736) (ite c!643212 (regTwo!22231 lt!1297736) (regOne!22230 lt!1297736)))))))

(declare-fun bm!270106 () Bool)

(assert (=> bm!270106 (= call!270112 (validRegex!4966 (ite c!643212 (regOne!22231 lt!1297736) (regTwo!22230 lt!1297736))))))

(declare-fun b!3719681 () Bool)

(declare-fun e!2302868 () Bool)

(assert (=> b!3719681 (= e!2302868 call!270112)))

(declare-fun b!3719682 () Bool)

(declare-fun e!2302865 () Bool)

(assert (=> b!3719682 (= e!2302865 e!2302871)))

(assert (=> b!3719682 (= c!643212 ((_ is Union!10859) lt!1297736))))

(declare-fun b!3719683 () Bool)

(declare-fun e!2302867 () Bool)

(assert (=> b!3719683 (= e!2302867 e!2302865)))

(assert (=> b!3719683 (= c!643211 ((_ is Star!10859) lt!1297736))))

(declare-fun b!3719684 () Bool)

(declare-fun e!2302866 () Bool)

(assert (=> b!3719684 (= e!2302865 e!2302866)))

(declare-fun res!1511901 () Bool)

(assert (=> b!3719684 (= res!1511901 (not (nullable!3782 (reg!11188 lt!1297736))))))

(assert (=> b!3719684 (=> (not res!1511901) (not e!2302866))))

(declare-fun bm!270107 () Bool)

(declare-fun call!270111 () Bool)

(assert (=> bm!270107 (= call!270111 call!270110)))

(declare-fun b!3719679 () Bool)

(assert (=> b!3719679 (= e!2302870 e!2302868)))

(declare-fun res!1511899 () Bool)

(assert (=> b!3719679 (=> (not res!1511899) (not e!2302868))))

(assert (=> b!3719679 (= res!1511899 call!270111)))

(declare-fun d!1088925 () Bool)

(declare-fun res!1511900 () Bool)

(assert (=> d!1088925 (=> res!1511900 e!2302867)))

(assert (=> d!1088925 (= res!1511900 ((_ is ElementMatch!10859) lt!1297736))))

(assert (=> d!1088925 (= (validRegex!4966 lt!1297736) e!2302867)))

(declare-fun b!3719685 () Bool)

(assert (=> b!3719685 (= e!2302869 call!270111)))

(declare-fun b!3719686 () Bool)

(assert (=> b!3719686 (= e!2302866 call!270110)))

(assert (= (and d!1088925 (not res!1511900)) b!3719683))

(assert (= (and b!3719683 c!643211) b!3719684))

(assert (= (and b!3719683 (not c!643211)) b!3719682))

(assert (= (and b!3719684 res!1511901) b!3719686))

(assert (= (and b!3719682 c!643212) b!3719680))

(assert (= (and b!3719682 (not c!643212)) b!3719678))

(assert (= (and b!3719680 res!1511898) b!3719685))

(assert (= (and b!3719678 (not res!1511902)) b!3719679))

(assert (= (and b!3719679 res!1511899) b!3719681))

(assert (= (or b!3719685 b!3719679) bm!270107))

(assert (= (or b!3719680 b!3719681) bm!270106))

(assert (= (or b!3719686 bm!270107) bm!270105))

(declare-fun m!4224385 () Bool)

(assert (=> bm!270105 m!4224385))

(declare-fun m!4224387 () Bool)

(assert (=> bm!270106 m!4224387))

(declare-fun m!4224389 () Bool)

(assert (=> b!3719684 m!4224389))

(assert (=> d!1088871 d!1088925))

(assert (=> d!1088871 d!1088867))

(declare-fun d!1088927 () Bool)

(assert (=> d!1088927 (= (matchR!5304 lt!1297736 tl!3933) (matchR!5304 (derivative!373 lt!1297736 tl!3933) Nil!39616))))

(assert (=> d!1088927 true))

(declare-fun _$108!440 () Unit!57516)

(assert (=> d!1088927 (= (choose!22204 lt!1297736 tl!3933) _$108!440)))

(declare-fun bs!574923 () Bool)

(assert (= bs!574923 d!1088927))

(assert (=> bs!574923 m!4223791))

(assert (=> bs!574923 m!4223781))

(assert (=> bs!574923 m!4223781))

(assert (=> bs!574923 m!4223795))

(assert (=> d!1088871 d!1088927))

(declare-fun d!1088929 () Bool)

(assert (=> d!1088929 (= (head!8025 (_2!22746 lt!1297729)) (h!45036 (_2!22746 lt!1297729)))))

(assert (=> b!3719452 d!1088929))

(assert (=> b!3719525 d!1088881))

(declare-fun d!1088931 () Bool)

(assert (=> d!1088931 (= (isEmpty!23512 (_2!22746 lt!1297729)) ((_ is Nil!39616) (_2!22746 lt!1297729)))))

(assert (=> d!1088853 d!1088931))

(declare-fun b!3719687 () Bool)

(declare-fun res!1511907 () Bool)

(declare-fun e!2302877 () Bool)

(assert (=> b!3719687 (=> res!1511907 e!2302877)))

(assert (=> b!3719687 (= res!1511907 (not ((_ is Concat!17130) (regTwo!22230 r!26326))))))

(declare-fun e!2302878 () Bool)

(assert (=> b!3719687 (= e!2302878 e!2302877)))

(declare-fun b!3719689 () Bool)

(declare-fun res!1511903 () Bool)

(declare-fun e!2302876 () Bool)

(assert (=> b!3719689 (=> (not res!1511903) (not e!2302876))))

(declare-fun call!270115 () Bool)

(assert (=> b!3719689 (= res!1511903 call!270115)))

(assert (=> b!3719689 (= e!2302878 e!2302876)))

(declare-fun c!643214 () Bool)

(declare-fun call!270113 () Bool)

(declare-fun c!643213 () Bool)

(declare-fun bm!270108 () Bool)

(assert (=> bm!270108 (= call!270113 (validRegex!4966 (ite c!643213 (reg!11188 (regTwo!22230 r!26326)) (ite c!643214 (regTwo!22231 (regTwo!22230 r!26326)) (regOne!22230 (regTwo!22230 r!26326))))))))

(declare-fun bm!270109 () Bool)

(assert (=> bm!270109 (= call!270115 (validRegex!4966 (ite c!643214 (regOne!22231 (regTwo!22230 r!26326)) (regTwo!22230 (regTwo!22230 r!26326)))))))

(declare-fun b!3719690 () Bool)

(declare-fun e!2302875 () Bool)

(assert (=> b!3719690 (= e!2302875 call!270115)))

(declare-fun b!3719691 () Bool)

(declare-fun e!2302872 () Bool)

(assert (=> b!3719691 (= e!2302872 e!2302878)))

(assert (=> b!3719691 (= c!643214 ((_ is Union!10859) (regTwo!22230 r!26326)))))

(declare-fun b!3719692 () Bool)

(declare-fun e!2302874 () Bool)

(assert (=> b!3719692 (= e!2302874 e!2302872)))

(assert (=> b!3719692 (= c!643213 ((_ is Star!10859) (regTwo!22230 r!26326)))))

(declare-fun b!3719693 () Bool)

(declare-fun e!2302873 () Bool)

(assert (=> b!3719693 (= e!2302872 e!2302873)))

(declare-fun res!1511906 () Bool)

(assert (=> b!3719693 (= res!1511906 (not (nullable!3782 (reg!11188 (regTwo!22230 r!26326)))))))

(assert (=> b!3719693 (=> (not res!1511906) (not e!2302873))))

(declare-fun bm!270110 () Bool)

(declare-fun call!270114 () Bool)

(assert (=> bm!270110 (= call!270114 call!270113)))

(declare-fun b!3719688 () Bool)

(assert (=> b!3719688 (= e!2302877 e!2302875)))

(declare-fun res!1511904 () Bool)

(assert (=> b!3719688 (=> (not res!1511904) (not e!2302875))))

(assert (=> b!3719688 (= res!1511904 call!270114)))

(declare-fun d!1088933 () Bool)

(declare-fun res!1511905 () Bool)

(assert (=> d!1088933 (=> res!1511905 e!2302874)))

(assert (=> d!1088933 (= res!1511905 ((_ is ElementMatch!10859) (regTwo!22230 r!26326)))))

(assert (=> d!1088933 (= (validRegex!4966 (regTwo!22230 r!26326)) e!2302874)))

(declare-fun b!3719694 () Bool)

(assert (=> b!3719694 (= e!2302876 call!270114)))

(declare-fun b!3719695 () Bool)

(assert (=> b!3719695 (= e!2302873 call!270113)))

(assert (= (and d!1088933 (not res!1511905)) b!3719692))

(assert (= (and b!3719692 c!643213) b!3719693))

(assert (= (and b!3719692 (not c!643213)) b!3719691))

(assert (= (and b!3719693 res!1511906) b!3719695))

(assert (= (and b!3719691 c!643214) b!3719689))

(assert (= (and b!3719691 (not c!643214)) b!3719687))

(assert (= (and b!3719689 res!1511903) b!3719694))

(assert (= (and b!3719687 (not res!1511907)) b!3719688))

(assert (= (and b!3719688 res!1511904) b!3719690))

(assert (= (or b!3719694 b!3719688) bm!270110))

(assert (= (or b!3719689 b!3719690) bm!270109))

(assert (= (or b!3719695 bm!270110) bm!270108))

(declare-fun m!4224391 () Bool)

(assert (=> bm!270108 m!4224391))

(declare-fun m!4224393 () Bool)

(assert (=> bm!270109 m!4224393))

(declare-fun m!4224395 () Bool)

(assert (=> b!3719693 m!4224395))

(assert (=> d!1088853 d!1088933))

(declare-fun d!1088935 () Bool)

(assert (=> d!1088935 (= (nullable!3782 EmptyLang!10859) false)))

(assert (=> b!3719100 d!1088935))

(assert (=> b!3719104 d!1088881))

(declare-fun b!3719696 () Bool)

(declare-fun e!2302880 () Regex!10859)

(declare-fun e!2302883 () Regex!10859)

(assert (=> b!3719696 (= e!2302880 e!2302883)))

(declare-fun c!643219 () Bool)

(assert (=> b!3719696 (= c!643219 ((_ is Star!10859) (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))))))

(declare-fun call!270118 () Regex!10859)

(declare-fun b!3719697 () Bool)

(assert (=> b!3719697 (= e!2302883 (Concat!17130 call!270118 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))))))

(declare-fun bm!270111 () Bool)

(declare-fun call!270119 () Regex!10859)

(assert (=> bm!270111 (= call!270118 call!270119)))

(declare-fun b!3719698 () Bool)

(declare-fun e!2302881 () Regex!10859)

(declare-fun e!2302879 () Regex!10859)

(assert (=> b!3719698 (= e!2302881 e!2302879)))

(declare-fun c!643215 () Bool)

(assert (=> b!3719698 (= c!643215 ((_ is ElementMatch!10859) (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))))))

(declare-fun b!3719699 () Bool)

(assert (=> b!3719699 (= e!2302881 EmptyLang!10859)))

(declare-fun bm!270112 () Bool)

(declare-fun call!270117 () Regex!10859)

(declare-fun call!270116 () Regex!10859)

(assert (=> bm!270112 (= call!270117 call!270116)))

(declare-fun e!2302882 () Regex!10859)

(declare-fun b!3719700 () Bool)

(assert (=> b!3719700 (= e!2302882 (Union!10859 (Concat!17130 call!270117 (regTwo!22230 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)))) call!270118))))

(declare-fun b!3719701 () Bool)

(declare-fun c!643217 () Bool)

(assert (=> b!3719701 (= c!643217 ((_ is Union!10859) (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))))))

(assert (=> b!3719701 (= e!2302879 e!2302880)))

(declare-fun bm!270113 () Bool)

(assert (=> bm!270113 (= call!270116 (derivativeStep!3324 (ite c!643217 (regOne!22231 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))) (regOne!22230 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)))) c!13576))))

(declare-fun b!3719702 () Bool)

(assert (=> b!3719702 (= e!2302879 (ite (= c!13576 (c!642993 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)))) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719703 () Bool)

(assert (=> b!3719703 (= e!2302882 (Union!10859 (Concat!17130 call!270117 (regTwo!22230 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)))) EmptyLang!10859))))

(declare-fun bm!270114 () Bool)

(assert (=> bm!270114 (= call!270119 (derivativeStep!3324 (ite c!643217 (regTwo!22231 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))) (ite c!643219 (reg!11188 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))) (regTwo!22230 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))))) c!13576))))

(declare-fun b!3719705 () Bool)

(assert (=> b!3719705 (= e!2302880 (Union!10859 call!270116 call!270119))))

(declare-fun d!1088937 () Bool)

(declare-fun lt!1297850 () Regex!10859)

(assert (=> d!1088937 (validRegex!4966 lt!1297850)))

(assert (=> d!1088937 (= lt!1297850 e!2302881)))

(declare-fun c!643218 () Bool)

(assert (=> d!1088937 (= c!643218 (or ((_ is EmptyExpr!10859) (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326))) ((_ is EmptyLang!10859) (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)))))))

(assert (=> d!1088937 (validRegex!4966 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)))))

(assert (=> d!1088937 (= (derivativeStep!3324 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)) c!13576) lt!1297850)))

(declare-fun b!3719704 () Bool)

(declare-fun c!643216 () Bool)

(assert (=> b!3719704 (= c!643216 (nullable!3782 (regOne!22230 (ite c!643144 (regOne!22231 r!26326) (regOne!22230 r!26326)))))))

(assert (=> b!3719704 (= e!2302883 e!2302882)))

(assert (= (and d!1088937 c!643218) b!3719699))

(assert (= (and d!1088937 (not c!643218)) b!3719698))

(assert (= (and b!3719698 c!643215) b!3719702))

(assert (= (and b!3719698 (not c!643215)) b!3719701))

(assert (= (and b!3719701 c!643217) b!3719705))

(assert (= (and b!3719701 (not c!643217)) b!3719696))

(assert (= (and b!3719696 c!643219) b!3719697))

(assert (= (and b!3719696 (not c!643219)) b!3719704))

(assert (= (and b!3719704 c!643216) b!3719700))

(assert (= (and b!3719704 (not c!643216)) b!3719703))

(assert (= (or b!3719700 b!3719703) bm!270112))

(assert (= (or b!3719697 b!3719700) bm!270111))

(assert (= (or b!3719705 bm!270111) bm!270114))

(assert (= (or b!3719705 bm!270112) bm!270113))

(declare-fun m!4224397 () Bool)

(assert (=> bm!270113 m!4224397))

(declare-fun m!4224399 () Bool)

(assert (=> bm!270114 m!4224399))

(declare-fun m!4224401 () Bool)

(assert (=> d!1088937 m!4224401))

(declare-fun m!4224403 () Bool)

(assert (=> d!1088937 m!4224403))

(declare-fun m!4224405 () Bool)

(assert (=> b!3719704 m!4224405))

(assert (=> bm!270065 d!1088937))

(declare-fun d!1088939 () Bool)

(assert (not d!1088939))

(assert (=> b!3718970 d!1088939))

(declare-fun d!1088941 () Bool)

(assert (not d!1088941))

(assert (=> b!3718970 d!1088941))

(assert (=> b!3718970 d!1088911))

(assert (=> b!3718970 d!1088887))

(declare-fun b!3719706 () Bool)

(declare-fun res!1511912 () Bool)

(declare-fun e!2302889 () Bool)

(assert (=> b!3719706 (=> res!1511912 e!2302889)))

(assert (=> b!3719706 (= res!1511912 (not ((_ is Concat!17130) lt!1297835)))))

(declare-fun e!2302890 () Bool)

(assert (=> b!3719706 (= e!2302890 e!2302889)))

(declare-fun b!3719708 () Bool)

(declare-fun res!1511908 () Bool)

(declare-fun e!2302888 () Bool)

(assert (=> b!3719708 (=> (not res!1511908) (not e!2302888))))

(declare-fun call!270122 () Bool)

(assert (=> b!3719708 (= res!1511908 call!270122)))

(assert (=> b!3719708 (= e!2302890 e!2302888)))

(declare-fun bm!270115 () Bool)

(declare-fun c!643220 () Bool)

(declare-fun c!643221 () Bool)

(declare-fun call!270120 () Bool)

(assert (=> bm!270115 (= call!270120 (validRegex!4966 (ite c!643220 (reg!11188 lt!1297835) (ite c!643221 (regTwo!22231 lt!1297835) (regOne!22230 lt!1297835)))))))

(declare-fun bm!270116 () Bool)

(assert (=> bm!270116 (= call!270122 (validRegex!4966 (ite c!643221 (regOne!22231 lt!1297835) (regTwo!22230 lt!1297835))))))

(declare-fun b!3719709 () Bool)

(declare-fun e!2302887 () Bool)

(assert (=> b!3719709 (= e!2302887 call!270122)))

(declare-fun b!3719710 () Bool)

(declare-fun e!2302884 () Bool)

(assert (=> b!3719710 (= e!2302884 e!2302890)))

(assert (=> b!3719710 (= c!643221 ((_ is Union!10859) lt!1297835))))

(declare-fun b!3719711 () Bool)

(declare-fun e!2302886 () Bool)

(assert (=> b!3719711 (= e!2302886 e!2302884)))

(assert (=> b!3719711 (= c!643220 ((_ is Star!10859) lt!1297835))))

(declare-fun b!3719712 () Bool)

(declare-fun e!2302885 () Bool)

(assert (=> b!3719712 (= e!2302884 e!2302885)))

(declare-fun res!1511911 () Bool)

(assert (=> b!3719712 (= res!1511911 (not (nullable!3782 (reg!11188 lt!1297835))))))

(assert (=> b!3719712 (=> (not res!1511911) (not e!2302885))))

(declare-fun bm!270117 () Bool)

(declare-fun call!270121 () Bool)

(assert (=> bm!270117 (= call!270121 call!270120)))

(declare-fun b!3719707 () Bool)

(assert (=> b!3719707 (= e!2302889 e!2302887)))

(declare-fun res!1511909 () Bool)

(assert (=> b!3719707 (=> (not res!1511909) (not e!2302887))))

(assert (=> b!3719707 (= res!1511909 call!270121)))

(declare-fun d!1088943 () Bool)

(declare-fun res!1511910 () Bool)

(assert (=> d!1088943 (=> res!1511910 e!2302886)))

(assert (=> d!1088943 (= res!1511910 ((_ is ElementMatch!10859) lt!1297835))))

(assert (=> d!1088943 (= (validRegex!4966 lt!1297835) e!2302886)))

(declare-fun b!3719713 () Bool)

(assert (=> b!3719713 (= e!2302888 call!270121)))

(declare-fun b!3719714 () Bool)

(assert (=> b!3719714 (= e!2302885 call!270120)))

(assert (= (and d!1088943 (not res!1511910)) b!3719711))

(assert (= (and b!3719711 c!643220) b!3719712))

(assert (= (and b!3719711 (not c!643220)) b!3719710))

(assert (= (and b!3719712 res!1511911) b!3719714))

(assert (= (and b!3719710 c!643221) b!3719708))

(assert (= (and b!3719710 (not c!643221)) b!3719706))

(assert (= (and b!3719708 res!1511908) b!3719713))

(assert (= (and b!3719706 (not res!1511912)) b!3719707))

(assert (= (and b!3719707 res!1511909) b!3719709))

(assert (= (or b!3719713 b!3719707) bm!270117))

(assert (= (or b!3719708 b!3719709) bm!270116))

(assert (= (or b!3719714 bm!270117) bm!270115))

(declare-fun m!4224407 () Bool)

(assert (=> bm!270115 m!4224407))

(declare-fun m!4224409 () Bool)

(assert (=> bm!270116 m!4224409))

(declare-fun m!4224411 () Bool)

(assert (=> b!3719712 m!4224411))

(assert (=> d!1088863 d!1088943))

(assert (=> d!1088863 d!1088743))

(declare-fun d!1088945 () Bool)

(assert (=> d!1088945 (= (isEmpty!23512 tl!3933) ((_ is Nil!39616) tl!3933))))

(assert (=> bm!270072 d!1088945))

(declare-fun b!3719715 () Bool)

(declare-fun e!2302892 () List!39740)

(assert (=> b!3719715 (= e!2302892 call!270010)))

(declare-fun lt!1297851 () List!39740)

(declare-fun e!2302891 () Bool)

(declare-fun b!3719718 () Bool)

(assert (=> b!3719718 (= e!2302891 (or (not (= call!270010 Nil!39616)) (= lt!1297851 call!270011)))))

(declare-fun b!3719717 () Bool)

(declare-fun res!1511914 () Bool)

(assert (=> b!3719717 (=> (not res!1511914) (not e!2302891))))

(assert (=> b!3719717 (= res!1511914 (= (size!30023 lt!1297851) (+ (size!30023 call!270011) (size!30023 call!270010))))))

(declare-fun b!3719716 () Bool)

(assert (=> b!3719716 (= e!2302892 (Cons!39616 (h!45036 call!270011) (++!9805 (t!302423 call!270011) call!270010)))))

(declare-fun d!1088947 () Bool)

(assert (=> d!1088947 e!2302891))

(declare-fun res!1511913 () Bool)

(assert (=> d!1088947 (=> (not res!1511913) (not e!2302891))))

(assert (=> d!1088947 (= res!1511913 (= (content!5741 lt!1297851) ((_ map or) (content!5741 call!270011) (content!5741 call!270010))))))

(assert (=> d!1088947 (= lt!1297851 e!2302892)))

(declare-fun c!643222 () Bool)

(assert (=> d!1088947 (= c!643222 ((_ is Nil!39616) call!270011))))

(assert (=> d!1088947 (= (++!9805 call!270011 call!270010) lt!1297851)))

(assert (= (and d!1088947 c!643222) b!3719715))

(assert (= (and d!1088947 (not c!643222)) b!3719716))

(assert (= (and d!1088947 res!1511913) b!3719717))

(assert (= (and b!3719717 res!1511914) b!3719718))

(declare-fun m!4224413 () Bool)

(assert (=> b!3719717 m!4224413))

(declare-fun m!4224415 () Bool)

(assert (=> b!3719717 m!4224415))

(declare-fun m!4224417 () Bool)

(assert (=> b!3719717 m!4224417))

(declare-fun m!4224419 () Bool)

(assert (=> b!3719716 m!4224419))

(declare-fun m!4224421 () Bool)

(assert (=> d!1088947 m!4224421))

(declare-fun m!4224423 () Bool)

(assert (=> d!1088947 m!4224423))

(declare-fun m!4224425 () Bool)

(assert (=> d!1088947 m!4224425))

(assert (=> bm!270007 d!1088947))

(assert (=> d!1088753 d!1088751))

(declare-fun b!3719719 () Bool)

(declare-fun res!1511919 () Bool)

(declare-fun e!2302898 () Bool)

(assert (=> b!3719719 (=> res!1511919 e!2302898)))

(assert (=> b!3719719 (= res!1511919 (not ((_ is Concat!17130) lt!1297728)))))

(declare-fun e!2302899 () Bool)

(assert (=> b!3719719 (= e!2302899 e!2302898)))

(declare-fun b!3719721 () Bool)

(declare-fun res!1511915 () Bool)

(declare-fun e!2302897 () Bool)

(assert (=> b!3719721 (=> (not res!1511915) (not e!2302897))))

(declare-fun call!270125 () Bool)

(assert (=> b!3719721 (= res!1511915 call!270125)))

(assert (=> b!3719721 (= e!2302899 e!2302897)))

(declare-fun bm!270118 () Bool)

(declare-fun c!643224 () Bool)

(declare-fun call!270123 () Bool)

(declare-fun c!643223 () Bool)

(assert (=> bm!270118 (= call!270123 (validRegex!4966 (ite c!643223 (reg!11188 lt!1297728) (ite c!643224 (regTwo!22231 lt!1297728) (regOne!22230 lt!1297728)))))))

(declare-fun bm!270119 () Bool)

(assert (=> bm!270119 (= call!270125 (validRegex!4966 (ite c!643224 (regOne!22231 lt!1297728) (regTwo!22230 lt!1297728))))))

(declare-fun b!3719722 () Bool)

(declare-fun e!2302896 () Bool)

(assert (=> b!3719722 (= e!2302896 call!270125)))

(declare-fun b!3719723 () Bool)

(declare-fun e!2302893 () Bool)

(assert (=> b!3719723 (= e!2302893 e!2302899)))

(assert (=> b!3719723 (= c!643224 ((_ is Union!10859) lt!1297728))))

(declare-fun b!3719724 () Bool)

(declare-fun e!2302895 () Bool)

(assert (=> b!3719724 (= e!2302895 e!2302893)))

(assert (=> b!3719724 (= c!643223 ((_ is Star!10859) lt!1297728))))

(declare-fun b!3719725 () Bool)

(declare-fun e!2302894 () Bool)

(assert (=> b!3719725 (= e!2302893 e!2302894)))

(declare-fun res!1511918 () Bool)

(assert (=> b!3719725 (= res!1511918 (not (nullable!3782 (reg!11188 lt!1297728))))))

(assert (=> b!3719725 (=> (not res!1511918) (not e!2302894))))

(declare-fun bm!270120 () Bool)

(declare-fun call!270124 () Bool)

(assert (=> bm!270120 (= call!270124 call!270123)))

(declare-fun b!3719720 () Bool)

(assert (=> b!3719720 (= e!2302898 e!2302896)))

(declare-fun res!1511916 () Bool)

(assert (=> b!3719720 (=> (not res!1511916) (not e!2302896))))

(assert (=> b!3719720 (= res!1511916 call!270124)))

(declare-fun d!1088949 () Bool)

(declare-fun res!1511917 () Bool)

(assert (=> d!1088949 (=> res!1511917 e!2302895)))

(assert (=> d!1088949 (= res!1511917 ((_ is ElementMatch!10859) lt!1297728))))

(assert (=> d!1088949 (= (validRegex!4966 lt!1297728) e!2302895)))

(declare-fun b!3719726 () Bool)

(assert (=> b!3719726 (= e!2302897 call!270124)))

(declare-fun b!3719727 () Bool)

(assert (=> b!3719727 (= e!2302894 call!270123)))

(assert (= (and d!1088949 (not res!1511917)) b!3719724))

(assert (= (and b!3719724 c!643223) b!3719725))

(assert (= (and b!3719724 (not c!643223)) b!3719723))

(assert (= (and b!3719725 res!1511918) b!3719727))

(assert (= (and b!3719723 c!643224) b!3719721))

(assert (= (and b!3719723 (not c!643224)) b!3719719))

(assert (= (and b!3719721 res!1511915) b!3719726))

(assert (= (and b!3719719 (not res!1511919)) b!3719720))

(assert (= (and b!3719720 res!1511916) b!3719722))

(assert (= (or b!3719726 b!3719720) bm!270120))

(assert (= (or b!3719721 b!3719722) bm!270119))

(assert (= (or b!3719727 bm!270120) bm!270118))

(declare-fun m!4224427 () Bool)

(assert (=> bm!270118 m!4224427))

(declare-fun m!4224429 () Bool)

(assert (=> bm!270119 m!4224429))

(declare-fun m!4224431 () Bool)

(assert (=> b!3719725 m!4224431))

(assert (=> d!1088753 d!1088949))

(declare-fun b!3719728 () Bool)

(declare-fun e!2302906 () Bool)

(assert (=> b!3719728 (= e!2302906 (not (= (head!8025 Nil!39616) (c!642993 (derivative!373 lt!1297728 (_1!22746 lt!1297729))))))))

(declare-fun b!3719729 () Bool)

(declare-fun res!1511924 () Bool)

(declare-fun e!2302904 () Bool)

(assert (=> b!3719729 (=> (not res!1511924) (not e!2302904))))

(declare-fun call!270126 () Bool)

(assert (=> b!3719729 (= res!1511924 (not call!270126))))

(declare-fun b!3719730 () Bool)

(declare-fun e!2302902 () Bool)

(declare-fun e!2302905 () Bool)

(assert (=> b!3719730 (= e!2302902 e!2302905)))

(declare-fun c!643226 () Bool)

(assert (=> b!3719730 (= c!643226 ((_ is EmptyLang!10859) (derivative!373 lt!1297728 (_1!22746 lt!1297729))))))

(declare-fun b!3719731 () Bool)

(declare-fun lt!1297852 () Bool)

(assert (=> b!3719731 (= e!2302902 (= lt!1297852 call!270126))))

(declare-fun d!1088951 () Bool)

(assert (=> d!1088951 e!2302902))

(declare-fun c!643227 () Bool)

(assert (=> d!1088951 (= c!643227 ((_ is EmptyExpr!10859) (derivative!373 lt!1297728 (_1!22746 lt!1297729))))))

(declare-fun e!2302901 () Bool)

(assert (=> d!1088951 (= lt!1297852 e!2302901)))

(declare-fun c!643225 () Bool)

(assert (=> d!1088951 (= c!643225 (isEmpty!23512 Nil!39616))))

(assert (=> d!1088951 (validRegex!4966 (derivative!373 lt!1297728 (_1!22746 lt!1297729)))))

(assert (=> d!1088951 (= (matchR!5304 (derivative!373 lt!1297728 (_1!22746 lt!1297729)) Nil!39616) lt!1297852)))

(declare-fun b!3719732 () Bool)

(declare-fun res!1511925 () Bool)

(declare-fun e!2302903 () Bool)

(assert (=> b!3719732 (=> res!1511925 e!2302903)))

(assert (=> b!3719732 (= res!1511925 e!2302904)))

(declare-fun res!1511922 () Bool)

(assert (=> b!3719732 (=> (not res!1511922) (not e!2302904))))

(assert (=> b!3719732 (= res!1511922 lt!1297852)))

(declare-fun b!3719733 () Bool)

(declare-fun res!1511921 () Bool)

(assert (=> b!3719733 (=> (not res!1511921) (not e!2302904))))

(assert (=> b!3719733 (= res!1511921 (isEmpty!23512 (tail!5752 Nil!39616)))))

(declare-fun b!3719734 () Bool)

(declare-fun res!1511927 () Bool)

(assert (=> b!3719734 (=> res!1511927 e!2302906)))

(assert (=> b!3719734 (= res!1511927 (not (isEmpty!23512 (tail!5752 Nil!39616))))))

(declare-fun b!3719735 () Bool)

(assert (=> b!3719735 (= e!2302901 (matchR!5304 (derivativeStep!3324 (derivative!373 lt!1297728 (_1!22746 lt!1297729)) (head!8025 Nil!39616)) (tail!5752 Nil!39616)))))

(declare-fun bm!270121 () Bool)

(assert (=> bm!270121 (= call!270126 (isEmpty!23512 Nil!39616))))

(declare-fun b!3719736 () Bool)

(declare-fun e!2302900 () Bool)

(assert (=> b!3719736 (= e!2302903 e!2302900)))

(declare-fun res!1511920 () Bool)

(assert (=> b!3719736 (=> (not res!1511920) (not e!2302900))))

(assert (=> b!3719736 (= res!1511920 (not lt!1297852))))

(declare-fun b!3719737 () Bool)

(assert (=> b!3719737 (= e!2302901 (nullable!3782 (derivative!373 lt!1297728 (_1!22746 lt!1297729))))))

(declare-fun b!3719738 () Bool)

(assert (=> b!3719738 (= e!2302905 (not lt!1297852))))

(declare-fun b!3719739 () Bool)

(assert (=> b!3719739 (= e!2302900 e!2302906)))

(declare-fun res!1511923 () Bool)

(assert (=> b!3719739 (=> res!1511923 e!2302906)))

(assert (=> b!3719739 (= res!1511923 call!270126)))

(declare-fun b!3719740 () Bool)

(declare-fun res!1511926 () Bool)

(assert (=> b!3719740 (=> res!1511926 e!2302903)))

(assert (=> b!3719740 (= res!1511926 (not ((_ is ElementMatch!10859) (derivative!373 lt!1297728 (_1!22746 lt!1297729)))))))

(assert (=> b!3719740 (= e!2302905 e!2302903)))

(declare-fun b!3719741 () Bool)

(assert (=> b!3719741 (= e!2302904 (= (head!8025 Nil!39616) (c!642993 (derivative!373 lt!1297728 (_1!22746 lt!1297729)))))))

(assert (= (and d!1088951 c!643225) b!3719737))

(assert (= (and d!1088951 (not c!643225)) b!3719735))

(assert (= (and d!1088951 c!643227) b!3719731))

(assert (= (and d!1088951 (not c!643227)) b!3719730))

(assert (= (and b!3719730 c!643226) b!3719738))

(assert (= (and b!3719730 (not c!643226)) b!3719740))

(assert (= (and b!3719740 (not res!1511926)) b!3719732))

(assert (= (and b!3719732 res!1511922) b!3719729))

(assert (= (and b!3719729 res!1511924) b!3719733))

(assert (= (and b!3719733 res!1511921) b!3719741))

(assert (= (and b!3719732 (not res!1511925)) b!3719736))

(assert (= (and b!3719736 res!1511920) b!3719739))

(assert (= (and b!3719739 (not res!1511923)) b!3719734))

(assert (= (and b!3719734 (not res!1511927)) b!3719728))

(assert (= (or b!3719731 b!3719729 b!3719739) bm!270121))

(assert (=> d!1088951 m!4223809))

(assert (=> d!1088951 m!4223735))

(declare-fun m!4224433 () Bool)

(assert (=> d!1088951 m!4224433))

(assert (=> b!3719741 m!4223813))

(assert (=> b!3719728 m!4223813))

(assert (=> b!3719735 m!4223813))

(assert (=> b!3719735 m!4223735))

(assert (=> b!3719735 m!4223813))

(declare-fun m!4224435 () Bool)

(assert (=> b!3719735 m!4224435))

(assert (=> b!3719735 m!4223817))

(assert (=> b!3719735 m!4224435))

(assert (=> b!3719735 m!4223817))

(declare-fun m!4224437 () Bool)

(assert (=> b!3719735 m!4224437))

(assert (=> b!3719734 m!4223817))

(assert (=> b!3719734 m!4223817))

(assert (=> b!3719734 m!4223821))

(assert (=> b!3719733 m!4223817))

(assert (=> b!3719733 m!4223817))

(assert (=> b!3719733 m!4223821))

(assert (=> bm!270121 m!4223809))

(assert (=> b!3719737 m!4223735))

(declare-fun m!4224439 () Bool)

(assert (=> b!3719737 m!4224439))

(assert (=> d!1088753 d!1088951))

(declare-fun d!1088953 () Bool)

(assert (=> d!1088953 (= (matchR!5304 lt!1297728 (_1!22746 lt!1297729)) (matchR!5304 (derivative!373 lt!1297728 (_1!22746 lt!1297729)) Nil!39616))))

(assert (=> d!1088953 true))

(declare-fun _$108!441 () Unit!57516)

(assert (=> d!1088953 (= (choose!22204 lt!1297728 (_1!22746 lt!1297729)) _$108!441)))

(declare-fun bs!574924 () Bool)

(assert (= bs!574924 d!1088953))

(assert (=> bs!574924 m!4223765))

(assert (=> bs!574924 m!4223735))

(assert (=> bs!574924 m!4223735))

(assert (=> bs!574924 m!4223847))

(assert (=> d!1088753 d!1088953))

(assert (=> d!1088753 d!1088873))

(declare-fun d!1088955 () Bool)

(declare-fun c!643228 () Bool)

(assert (=> d!1088955 (= c!643228 ((_ is Nil!39616) (usedCharacters!1122 r!26326)))))

(declare-fun e!2302907 () (InoxSet C!21904))

(assert (=> d!1088955 (= (content!5741 (usedCharacters!1122 r!26326)) e!2302907)))

(declare-fun b!3719742 () Bool)

(assert (=> b!3719742 (= e!2302907 ((as const (Array C!21904 Bool)) false))))

(declare-fun b!3719743 () Bool)

(assert (=> b!3719743 (= e!2302907 ((_ map or) (store ((as const (Array C!21904 Bool)) false) (h!45036 (usedCharacters!1122 r!26326)) true) (content!5741 (t!302423 (usedCharacters!1122 r!26326)))))))

(assert (= (and d!1088955 c!643228) b!3719742))

(assert (= (and d!1088955 (not c!643228)) b!3719743))

(declare-fun m!4224441 () Bool)

(assert (=> b!3719743 m!4224441))

(assert (=> b!3719743 m!4224265))

(assert (=> d!1088771 d!1088955))

(declare-fun d!1088957 () Bool)

(assert (not d!1088957))

(assert (=> b!3719505 d!1088957))

(declare-fun d!1088959 () Bool)

(assert (not d!1088959))

(assert (=> b!3719505 d!1088959))

(assert (=> b!3719505 d!1088911))

(assert (=> b!3719505 d!1088887))

(declare-fun b!3719767 () Bool)

(declare-fun e!2302932 () Bool)

(declare-fun e!2302928 () Bool)

(assert (=> b!3719767 (= e!2302932 e!2302928)))

(declare-fun res!1511945 () Bool)

(assert (=> b!3719767 (=> res!1511945 e!2302928)))

(assert (=> b!3719767 (= res!1511945 ((_ is Star!10859) lt!1297726))))

(declare-fun b!3719768 () Bool)

(declare-fun e!2302929 () Bool)

(declare-fun call!270135 () Bool)

(assert (=> b!3719768 (= e!2302929 call!270135)))

(declare-fun b!3719769 () Bool)

(declare-fun e!2302931 () Bool)

(assert (=> b!3719769 (= e!2302931 e!2302929)))

(declare-fun res!1511946 () Bool)

(declare-fun call!270134 () Bool)

(assert (=> b!3719769 (= res!1511946 call!270134)))

(assert (=> b!3719769 (=> (not res!1511946) (not e!2302929))))

(declare-fun b!3719770 () Bool)

(assert (=> b!3719770 (= e!2302928 e!2302931)))

(declare-fun c!643233 () Bool)

(assert (=> b!3719770 (= c!643233 ((_ is Union!10859) lt!1297726))))

(declare-fun b!3719771 () Bool)

(declare-fun e!2302927 () Bool)

(assert (=> b!3719771 (= e!2302931 e!2302927)))

(declare-fun res!1511943 () Bool)

(assert (=> b!3719771 (= res!1511943 call!270135)))

(assert (=> b!3719771 (=> res!1511943 e!2302927)))

(declare-fun d!1088961 () Bool)

(declare-fun res!1511944 () Bool)

(declare-fun e!2302930 () Bool)

(assert (=> d!1088961 (=> res!1511944 e!2302930)))

(assert (=> d!1088961 (= res!1511944 ((_ is EmptyExpr!10859) lt!1297726))))

(assert (=> d!1088961 (= (nullableFct!1070 lt!1297726) e!2302930)))

(declare-fun b!3719772 () Bool)

(assert (=> b!3719772 (= e!2302930 e!2302932)))

(declare-fun res!1511947 () Bool)

(assert (=> b!3719772 (=> (not res!1511947) (not e!2302932))))

(assert (=> b!3719772 (= res!1511947 (and (not ((_ is EmptyLang!10859) lt!1297726)) (not ((_ is ElementMatch!10859) lt!1297726))))))

(declare-fun bm!270129 () Bool)

(assert (=> bm!270129 (= call!270135 (nullable!3782 (ite c!643233 (regOne!22231 lt!1297726) (regTwo!22230 lt!1297726))))))

(declare-fun b!3719773 () Bool)

(assert (=> b!3719773 (= e!2302927 call!270134)))

(declare-fun bm!270130 () Bool)

(assert (=> bm!270130 (= call!270134 (nullable!3782 (ite c!643233 (regTwo!22231 lt!1297726) (regOne!22230 lt!1297726))))))

(assert (= (and d!1088961 (not res!1511944)) b!3719772))

(assert (= (and b!3719772 res!1511947) b!3719767))

(assert (= (and b!3719767 (not res!1511945)) b!3719770))

(assert (= (and b!3719770 c!643233) b!3719771))

(assert (= (and b!3719770 (not c!643233)) b!3719769))

(assert (= (and b!3719771 (not res!1511943)) b!3719773))

(assert (= (and b!3719769 res!1511946) b!3719768))

(assert (= (or b!3719773 b!3719769) bm!270130))

(assert (= (or b!3719771 b!3719768) bm!270129))

(declare-fun m!4224449 () Bool)

(assert (=> bm!270129 m!4224449))

(declare-fun m!4224451 () Bool)

(assert (=> bm!270130 m!4224451))

(assert (=> d!1088757 d!1088961))

(declare-fun d!1088969 () Bool)

(assert (=> d!1088969 (= (nullable!3782 (regTwo!22230 r!26326)) (nullableFct!1070 (regTwo!22230 r!26326)))))

(declare-fun bs!574925 () Bool)

(assert (= bs!574925 d!1088969))

(declare-fun m!4224453 () Bool)

(assert (=> bs!574925 m!4224453))

(assert (=> b!3719461 d!1088969))

(declare-fun d!1088971 () Bool)

(assert (=> d!1088971 (= (isEmpty!23512 (_1!22746 lt!1297729)) ((_ is Nil!39616) (_1!22746 lt!1297729)))))

(assert (=> bm!270079 d!1088971))

(assert (=> b!3719465 d!1088929))

(declare-fun b!3719778 () Bool)

(declare-fun e!2302936 () List!39740)

(assert (=> b!3719778 (= e!2302936 (t!302423 tl!3933))))

(declare-fun b!3719781 () Bool)

(declare-fun e!2302935 () Bool)

(declare-fun lt!1297854 () List!39740)

(assert (=> b!3719781 (= e!2302935 (or (not (= (t!302423 tl!3933) Nil!39616)) (= lt!1297854 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)))))))

(declare-fun b!3719780 () Bool)

(declare-fun res!1511951 () Bool)

(assert (=> b!3719780 (=> (not res!1511951) (not e!2302935))))

(assert (=> b!3719780 (= res!1511951 (= (size!30023 lt!1297854) (+ (size!30023 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616))) (size!30023 (t!302423 tl!3933)))))))

(declare-fun b!3719779 () Bool)

(assert (=> b!3719779 (= e!2302936 (Cons!39616 (h!45036 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616))) (++!9805 (t!302423 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616))) (t!302423 tl!3933))))))

(declare-fun d!1088973 () Bool)

(assert (=> d!1088973 e!2302935))

(declare-fun res!1511950 () Bool)

(assert (=> d!1088973 (=> (not res!1511950) (not e!2302935))))

(assert (=> d!1088973 (= res!1511950 (= (content!5741 lt!1297854) ((_ map or) (content!5741 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616))) (content!5741 (t!302423 tl!3933)))))))

(assert (=> d!1088973 (= lt!1297854 e!2302936)))

(declare-fun c!643235 () Bool)

(assert (=> d!1088973 (= c!643235 ((_ is Nil!39616) (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616))))))

(assert (=> d!1088973 (= (++!9805 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (t!302423 tl!3933)) lt!1297854)))

(assert (= (and d!1088973 c!643235) b!3719778))

(assert (= (and d!1088973 (not c!643235)) b!3719779))

(assert (= (and d!1088973 res!1511950) b!3719780))

(assert (= (and b!3719780 res!1511951) b!3719781))

(declare-fun m!4224455 () Bool)

(assert (=> b!3719780 m!4224455))

(assert (=> b!3719780 m!4224061))

(declare-fun m!4224457 () Bool)

(assert (=> b!3719780 m!4224457))

(declare-fun m!4224459 () Bool)

(assert (=> b!3719780 m!4224459))

(declare-fun m!4224461 () Bool)

(assert (=> b!3719779 m!4224461))

(declare-fun m!4224463 () Bool)

(assert (=> d!1088973 m!4224463))

(assert (=> d!1088973 m!4224061))

(declare-fun m!4224465 () Bool)

(assert (=> d!1088973 m!4224465))

(declare-fun m!4224469 () Bool)

(assert (=> d!1088973 m!4224469))

(assert (=> b!3719296 d!1088973))

(declare-fun b!3719782 () Bool)

(declare-fun e!2302938 () List!39740)

(assert (=> b!3719782 (= e!2302938 (Cons!39616 (h!45036 tl!3933) Nil!39616))))

(declare-fun b!3719785 () Bool)

(declare-fun e!2302937 () Bool)

(declare-fun lt!1297855 () List!39740)

(assert (=> b!3719785 (= e!2302937 (or (not (= (Cons!39616 (h!45036 tl!3933) Nil!39616) Nil!39616)) (= lt!1297855 Nil!39616)))))

(declare-fun b!3719784 () Bool)

(declare-fun res!1511953 () Bool)

(assert (=> b!3719784 (=> (not res!1511953) (not e!2302937))))

(assert (=> b!3719784 (= res!1511953 (= (size!30023 lt!1297855) (+ (size!30023 Nil!39616) (size!30023 (Cons!39616 (h!45036 tl!3933) Nil!39616)))))))

(declare-fun b!3719783 () Bool)

(assert (=> b!3719783 (= e!2302938 (Cons!39616 (h!45036 Nil!39616) (++!9805 (t!302423 Nil!39616) (Cons!39616 (h!45036 tl!3933) Nil!39616))))))

(declare-fun d!1088975 () Bool)

(assert (=> d!1088975 e!2302937))

(declare-fun res!1511952 () Bool)

(assert (=> d!1088975 (=> (not res!1511952) (not e!2302937))))

(assert (=> d!1088975 (= res!1511952 (= (content!5741 lt!1297855) ((_ map or) (content!5741 Nil!39616) (content!5741 (Cons!39616 (h!45036 tl!3933) Nil!39616)))))))

(assert (=> d!1088975 (= lt!1297855 e!2302938)))

(declare-fun c!643236 () Bool)

(assert (=> d!1088975 (= c!643236 ((_ is Nil!39616) Nil!39616))))

(assert (=> d!1088975 (= (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) lt!1297855)))

(assert (= (and d!1088975 c!643236) b!3719782))

(assert (= (and d!1088975 (not c!643236)) b!3719783))

(assert (= (and d!1088975 res!1511952) b!3719784))

(assert (= (and b!3719784 res!1511953) b!3719785))

(declare-fun m!4224483 () Bool)

(assert (=> b!3719784 m!4224483))

(declare-fun m!4224485 () Bool)

(assert (=> b!3719784 m!4224485))

(declare-fun m!4224487 () Bool)

(assert (=> b!3719784 m!4224487))

(declare-fun m!4224489 () Bool)

(assert (=> b!3719783 m!4224489))

(declare-fun m!4224491 () Bool)

(assert (=> d!1088975 m!4224491))

(declare-fun m!4224493 () Bool)

(assert (=> d!1088975 m!4224493))

(declare-fun m!4224495 () Bool)

(assert (=> d!1088975 m!4224495))

(assert (=> b!3719296 d!1088975))

(declare-fun d!1088981 () Bool)

(assert (=> d!1088981 (= (++!9805 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (t!302423 tl!3933)) tl!3933)))

(declare-fun lt!1297860 () Unit!57516)

(declare-fun choose!22211 (List!39740 C!21904 List!39740 List!39740) Unit!57516)

(assert (=> d!1088981 (= lt!1297860 (choose!22211 Nil!39616 (h!45036 tl!3933) (t!302423 tl!3933) tl!3933))))

(assert (=> d!1088981 (= (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) (t!302423 tl!3933))) tl!3933)))

(assert (=> d!1088981 (= (lemmaMoveElementToOtherListKeepsConcatEq!1197 Nil!39616 (h!45036 tl!3933) (t!302423 tl!3933) tl!3933) lt!1297860)))

(declare-fun bs!574926 () Bool)

(assert (= bs!574926 d!1088981))

(assert (=> bs!574926 m!4224061))

(assert (=> bs!574926 m!4224061))

(assert (=> bs!574926 m!4224063))

(declare-fun m!4224517 () Bool)

(assert (=> bs!574926 m!4224517))

(declare-fun m!4224519 () Bool)

(assert (=> bs!574926 m!4224519))

(assert (=> b!3719296 d!1088981))

(declare-fun b!3719800 () Bool)

(declare-fun e!2302948 () Option!8574)

(declare-fun e!2302946 () Option!8574)

(assert (=> b!3719800 (= e!2302948 e!2302946)))

(declare-fun c!643243 () Bool)

(assert (=> b!3719800 (= c!643243 ((_ is Nil!39616) (t!302423 tl!3933)))))

(declare-fun b!3719801 () Bool)

(declare-fun e!2302949 () Bool)

(assert (=> b!3719801 (= e!2302949 (matchR!5304 (regTwo!22230 r!26326) (t!302423 tl!3933)))))

(declare-fun b!3719802 () Bool)

(assert (=> b!3719802 (= e!2302946 None!8573)))

(declare-fun b!3719803 () Bool)

(declare-fun e!2302947 () Bool)

(declare-fun lt!1297862 () Option!8574)

(assert (=> b!3719803 (= e!2302947 (not (isDefined!6751 lt!1297862)))))

(declare-fun b!3719804 () Bool)

(assert (=> b!3719804 (= e!2302948 (Some!8573 (tuple2!39225 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (t!302423 tl!3933))))))

(declare-fun b!3719805 () Bool)

(declare-fun res!1511959 () Bool)

(declare-fun e!2302950 () Bool)

(assert (=> b!3719805 (=> (not res!1511959) (not e!2302950))))

(assert (=> b!3719805 (= res!1511959 (matchR!5304 lt!1297728 (_1!22746 (get!13204 lt!1297862))))))

(declare-fun d!1088987 () Bool)

(assert (=> d!1088987 e!2302947))

(declare-fun res!1511956 () Bool)

(assert (=> d!1088987 (=> res!1511956 e!2302947)))

(assert (=> d!1088987 (= res!1511956 e!2302950)))

(declare-fun res!1511960 () Bool)

(assert (=> d!1088987 (=> (not res!1511960) (not e!2302950))))

(assert (=> d!1088987 (= res!1511960 (isDefined!6751 lt!1297862))))

(assert (=> d!1088987 (= lt!1297862 e!2302948)))

(declare-fun c!643244 () Bool)

(assert (=> d!1088987 (= c!643244 e!2302949)))

(declare-fun res!1511957 () Bool)

(assert (=> d!1088987 (=> (not res!1511957) (not e!2302949))))

(assert (=> d!1088987 (= res!1511957 (matchR!5304 lt!1297728 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616))))))

(assert (=> d!1088987 (validRegex!4966 lt!1297728)))

(assert (=> d!1088987 (= (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (t!302423 tl!3933) tl!3933) lt!1297862)))

(declare-fun b!3719806 () Bool)

(declare-fun res!1511958 () Bool)

(assert (=> b!3719806 (=> (not res!1511958) (not e!2302950))))

(assert (=> b!3719806 (= res!1511958 (matchR!5304 (regTwo!22230 r!26326) (_2!22746 (get!13204 lt!1297862))))))

(declare-fun b!3719807 () Bool)

(assert (=> b!3719807 (= e!2302950 (= (++!9805 (_1!22746 (get!13204 lt!1297862)) (_2!22746 (get!13204 lt!1297862))) tl!3933))))

(declare-fun b!3719808 () Bool)

(declare-fun lt!1297863 () Unit!57516)

(declare-fun lt!1297861 () Unit!57516)

(assert (=> b!3719808 (= lt!1297863 lt!1297861)))

(assert (=> b!3719808 (= (++!9805 (++!9805 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (Cons!39616 (h!45036 (t!302423 tl!3933)) Nil!39616)) (t!302423 (t!302423 tl!3933))) tl!3933)))

(assert (=> b!3719808 (= lt!1297861 (lemmaMoveElementToOtherListKeepsConcatEq!1197 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (h!45036 (t!302423 tl!3933)) (t!302423 (t!302423 tl!3933)) tl!3933))))

(assert (=> b!3719808 (= e!2302946 (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) (++!9805 (++!9805 Nil!39616 (Cons!39616 (h!45036 tl!3933) Nil!39616)) (Cons!39616 (h!45036 (t!302423 tl!3933)) Nil!39616)) (t!302423 (t!302423 tl!3933)) tl!3933))))

(assert (= (and d!1088987 res!1511957) b!3719801))

(assert (= (and d!1088987 c!643244) b!3719804))

(assert (= (and d!1088987 (not c!643244)) b!3719800))

(assert (= (and b!3719800 c!643243) b!3719802))

(assert (= (and b!3719800 (not c!643243)) b!3719808))

(assert (= (and d!1088987 res!1511960) b!3719805))

(assert (= (and b!3719805 res!1511959) b!3719806))

(assert (= (and b!3719806 res!1511958) b!3719807))

(assert (= (and d!1088987 (not res!1511956)) b!3719803))

(assert (=> b!3719808 m!4224061))

(declare-fun m!4224521 () Bool)

(assert (=> b!3719808 m!4224521))

(assert (=> b!3719808 m!4224521))

(declare-fun m!4224523 () Bool)

(assert (=> b!3719808 m!4224523))

(assert (=> b!3719808 m!4224061))

(declare-fun m!4224525 () Bool)

(assert (=> b!3719808 m!4224525))

(assert (=> b!3719808 m!4224521))

(declare-fun m!4224527 () Bool)

(assert (=> b!3719808 m!4224527))

(declare-fun m!4224529 () Bool)

(assert (=> b!3719801 m!4224529))

(declare-fun m!4224531 () Bool)

(assert (=> b!3719807 m!4224531))

(declare-fun m!4224533 () Bool)

(assert (=> b!3719807 m!4224533))

(assert (=> b!3719805 m!4224531))

(declare-fun m!4224535 () Bool)

(assert (=> b!3719805 m!4224535))

(declare-fun m!4224537 () Bool)

(assert (=> d!1088987 m!4224537))

(assert (=> d!1088987 m!4224061))

(declare-fun m!4224539 () Bool)

(assert (=> d!1088987 m!4224539))

(assert (=> d!1088987 m!4223825))

(assert (=> b!3719803 m!4224537))

(assert (=> b!3719806 m!4224531))

(declare-fun m!4224541 () Bool)

(assert (=> b!3719806 m!4224541))

(assert (=> b!3719296 d!1088987))

(declare-fun b!3719813 () Bool)

(declare-fun e!2302959 () Bool)

(assert (=> b!3719813 (= e!2302959 (not (= (head!8025 (tail!5752 tl!3933)) (c!642993 (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933))))))))

(declare-fun b!3719814 () Bool)

(declare-fun res!1511965 () Bool)

(declare-fun e!2302957 () Bool)

(assert (=> b!3719814 (=> (not res!1511965) (not e!2302957))))

(declare-fun call!270140 () Bool)

(assert (=> b!3719814 (= res!1511965 (not call!270140))))

(declare-fun b!3719815 () Bool)

(declare-fun e!2302955 () Bool)

(declare-fun e!2302958 () Bool)

(assert (=> b!3719815 (= e!2302955 e!2302958)))

(declare-fun c!643248 () Bool)

(assert (=> b!3719815 (= c!643248 ((_ is EmptyLang!10859) (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933))))))

(declare-fun b!3719816 () Bool)

(declare-fun lt!1297864 () Bool)

(assert (=> b!3719816 (= e!2302955 (= lt!1297864 call!270140))))

(declare-fun d!1088991 () Bool)

(assert (=> d!1088991 e!2302955))

(declare-fun c!643249 () Bool)

(assert (=> d!1088991 (= c!643249 ((_ is EmptyExpr!10859) (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933))))))

(declare-fun e!2302954 () Bool)

(assert (=> d!1088991 (= lt!1297864 e!2302954)))

(declare-fun c!643247 () Bool)

(assert (=> d!1088991 (= c!643247 (isEmpty!23512 (tail!5752 tl!3933)))))

(assert (=> d!1088991 (validRegex!4966 (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933)))))

(assert (=> d!1088991 (= (matchR!5304 (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933)) (tail!5752 tl!3933)) lt!1297864)))

(declare-fun b!3719817 () Bool)

(declare-fun res!1511966 () Bool)

(declare-fun e!2302956 () Bool)

(assert (=> b!3719817 (=> res!1511966 e!2302956)))

(assert (=> b!3719817 (= res!1511966 e!2302957)))

(declare-fun res!1511963 () Bool)

(assert (=> b!3719817 (=> (not res!1511963) (not e!2302957))))

(assert (=> b!3719817 (= res!1511963 lt!1297864)))

(declare-fun b!3719818 () Bool)

(declare-fun res!1511962 () Bool)

(assert (=> b!3719818 (=> (not res!1511962) (not e!2302957))))

(assert (=> b!3719818 (= res!1511962 (isEmpty!23512 (tail!5752 (tail!5752 tl!3933))))))

(declare-fun b!3719819 () Bool)

(declare-fun res!1511968 () Bool)

(assert (=> b!3719819 (=> res!1511968 e!2302959)))

(assert (=> b!3719819 (= res!1511968 (not (isEmpty!23512 (tail!5752 (tail!5752 tl!3933)))))))

(declare-fun b!3719820 () Bool)

(assert (=> b!3719820 (= e!2302954 (matchR!5304 (derivativeStep!3324 (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933)) (head!8025 (tail!5752 tl!3933))) (tail!5752 (tail!5752 tl!3933))))))

(declare-fun bm!270135 () Bool)

(assert (=> bm!270135 (= call!270140 (isEmpty!23512 (tail!5752 tl!3933)))))

(declare-fun b!3719821 () Bool)

(declare-fun e!2302953 () Bool)

(assert (=> b!3719821 (= e!2302956 e!2302953)))

(declare-fun res!1511961 () Bool)

(assert (=> b!3719821 (=> (not res!1511961) (not e!2302953))))

(assert (=> b!3719821 (= res!1511961 (not lt!1297864))))

(declare-fun b!3719822 () Bool)

(assert (=> b!3719822 (= e!2302954 (nullable!3782 (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933))))))

(declare-fun b!3719823 () Bool)

(assert (=> b!3719823 (= e!2302958 (not lt!1297864))))

(declare-fun b!3719824 () Bool)

(assert (=> b!3719824 (= e!2302953 e!2302959)))

(declare-fun res!1511964 () Bool)

(assert (=> b!3719824 (=> res!1511964 e!2302959)))

(assert (=> b!3719824 (= res!1511964 call!270140)))

(declare-fun b!3719825 () Bool)

(declare-fun res!1511967 () Bool)

(assert (=> b!3719825 (=> res!1511967 e!2302956)))

(assert (=> b!3719825 (= res!1511967 (not ((_ is ElementMatch!10859) (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933)))))))

(assert (=> b!3719825 (= e!2302958 e!2302956)))

(declare-fun b!3719826 () Bool)

(assert (=> b!3719826 (= e!2302957 (= (head!8025 (tail!5752 tl!3933)) (c!642993 (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933)))))))

(assert (= (and d!1088991 c!643247) b!3719822))

(assert (= (and d!1088991 (not c!643247)) b!3719820))

(assert (= (and d!1088991 c!643249) b!3719816))

(assert (= (and d!1088991 (not c!643249)) b!3719815))

(assert (= (and b!3719815 c!643248) b!3719823))

(assert (= (and b!3719815 (not c!643248)) b!3719825))

(assert (= (and b!3719825 (not res!1511967)) b!3719817))

(assert (= (and b!3719817 res!1511963) b!3719814))

(assert (= (and b!3719814 res!1511965) b!3719818))

(assert (= (and b!3719818 res!1511962) b!3719826))

(assert (= (and b!3719817 (not res!1511966)) b!3719821))

(assert (= (and b!3719821 res!1511961) b!3719824))

(assert (= (and b!3719824 (not res!1511964)) b!3719819))

(assert (= (and b!3719819 (not res!1511968)) b!3719813))

(assert (= (or b!3719816 b!3719814 b!3719824) bm!270135))

(assert (=> d!1088991 m!4223899))

(assert (=> d!1088991 m!4223903))

(assert (=> d!1088991 m!4223897))

(declare-fun m!4224543 () Bool)

(assert (=> d!1088991 m!4224543))

(assert (=> b!3719826 m!4223899))

(assert (=> b!3719826 m!4224273))

(assert (=> b!3719813 m!4223899))

(assert (=> b!3719813 m!4224273))

(assert (=> b!3719820 m!4223899))

(assert (=> b!3719820 m!4224273))

(assert (=> b!3719820 m!4223897))

(assert (=> b!3719820 m!4224273))

(declare-fun m!4224545 () Bool)

(assert (=> b!3719820 m!4224545))

(assert (=> b!3719820 m!4223899))

(assert (=> b!3719820 m!4224277))

(assert (=> b!3719820 m!4224545))

(assert (=> b!3719820 m!4224277))

(declare-fun m!4224547 () Bool)

(assert (=> b!3719820 m!4224547))

(assert (=> b!3719819 m!4223899))

(assert (=> b!3719819 m!4224277))

(assert (=> b!3719819 m!4224277))

(assert (=> b!3719819 m!4224281))

(assert (=> b!3719818 m!4223899))

(assert (=> b!3719818 m!4224277))

(assert (=> b!3719818 m!4224277))

(assert (=> b!3719818 m!4224281))

(assert (=> bm!270135 m!4223899))

(assert (=> bm!270135 m!4223903))

(assert (=> b!3719822 m!4223897))

(declare-fun m!4224549 () Bool)

(assert (=> b!3719822 m!4224549))

(assert (=> b!3719098 d!1088991))

(declare-fun b!3719829 () Bool)

(declare-fun e!2302962 () Regex!10859)

(declare-fun e!2302965 () Regex!10859)

(assert (=> b!3719829 (= e!2302962 e!2302965)))

(declare-fun c!643255 () Bool)

(assert (=> b!3719829 (= c!643255 ((_ is Star!10859) EmptyLang!10859))))

(declare-fun b!3719830 () Bool)

(declare-fun call!270143 () Regex!10859)

(assert (=> b!3719830 (= e!2302965 (Concat!17130 call!270143 EmptyLang!10859))))

(declare-fun bm!270136 () Bool)

(declare-fun call!270144 () Regex!10859)

(assert (=> bm!270136 (= call!270143 call!270144)))

(declare-fun b!3719831 () Bool)

(declare-fun e!2302963 () Regex!10859)

(declare-fun e!2302960 () Regex!10859)

(assert (=> b!3719831 (= e!2302963 e!2302960)))

(declare-fun c!643251 () Bool)

(assert (=> b!3719831 (= c!643251 ((_ is ElementMatch!10859) EmptyLang!10859))))

(declare-fun b!3719832 () Bool)

(assert (=> b!3719832 (= e!2302963 EmptyLang!10859)))

(declare-fun bm!270137 () Bool)

(declare-fun call!270142 () Regex!10859)

(declare-fun call!270141 () Regex!10859)

(assert (=> bm!270137 (= call!270142 call!270141)))

(declare-fun b!3719833 () Bool)

(declare-fun e!2302964 () Regex!10859)

(assert (=> b!3719833 (= e!2302964 (Union!10859 (Concat!17130 call!270142 (regTwo!22230 EmptyLang!10859)) call!270143))))

(declare-fun b!3719834 () Bool)

(declare-fun c!643253 () Bool)

(assert (=> b!3719834 (= c!643253 ((_ is Union!10859) EmptyLang!10859))))

(assert (=> b!3719834 (= e!2302960 e!2302962)))

(declare-fun bm!270138 () Bool)

(assert (=> bm!270138 (= call!270141 (derivativeStep!3324 (ite c!643253 (regOne!22231 EmptyLang!10859) (regOne!22230 EmptyLang!10859)) (head!8025 tl!3933)))))

(declare-fun b!3719835 () Bool)

(assert (=> b!3719835 (= e!2302960 (ite (= (head!8025 tl!3933) (c!642993 EmptyLang!10859)) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719836 () Bool)

(assert (=> b!3719836 (= e!2302964 (Union!10859 (Concat!17130 call!270142 (regTwo!22230 EmptyLang!10859)) EmptyLang!10859))))

(declare-fun bm!270139 () Bool)

(assert (=> bm!270139 (= call!270144 (derivativeStep!3324 (ite c!643253 (regTwo!22231 EmptyLang!10859) (ite c!643255 (reg!11188 EmptyLang!10859) (regTwo!22230 EmptyLang!10859))) (head!8025 tl!3933)))))

(declare-fun b!3719838 () Bool)

(assert (=> b!3719838 (= e!2302962 (Union!10859 call!270141 call!270144))))

(declare-fun d!1088993 () Bool)

(declare-fun lt!1297865 () Regex!10859)

(assert (=> d!1088993 (validRegex!4966 lt!1297865)))

(assert (=> d!1088993 (= lt!1297865 e!2302963)))

(declare-fun c!643254 () Bool)

(assert (=> d!1088993 (= c!643254 (or ((_ is EmptyExpr!10859) EmptyLang!10859) ((_ is EmptyLang!10859) EmptyLang!10859)))))

(assert (=> d!1088993 (validRegex!4966 EmptyLang!10859)))

(assert (=> d!1088993 (= (derivativeStep!3324 EmptyLang!10859 (head!8025 tl!3933)) lt!1297865)))

(declare-fun b!3719837 () Bool)

(declare-fun c!643252 () Bool)

(assert (=> b!3719837 (= c!643252 (nullable!3782 (regOne!22230 EmptyLang!10859)))))

(assert (=> b!3719837 (= e!2302965 e!2302964)))

(assert (= (and d!1088993 c!643254) b!3719832))

(assert (= (and d!1088993 (not c!643254)) b!3719831))

(assert (= (and b!3719831 c!643251) b!3719835))

(assert (= (and b!3719831 (not c!643251)) b!3719834))

(assert (= (and b!3719834 c!643253) b!3719838))

(assert (= (and b!3719834 (not c!643253)) b!3719829))

(assert (= (and b!3719829 c!643255) b!3719830))

(assert (= (and b!3719829 (not c!643255)) b!3719837))

(assert (= (and b!3719837 c!643252) b!3719833))

(assert (= (and b!3719837 (not c!643252)) b!3719836))

(assert (= (or b!3719833 b!3719836) bm!270137))

(assert (= (or b!3719830 b!3719833) bm!270136))

(assert (= (or b!3719838 bm!270136) bm!270139))

(assert (= (or b!3719838 bm!270137) bm!270138))

(assert (=> bm!270138 m!4223895))

(declare-fun m!4224555 () Bool)

(assert (=> bm!270138 m!4224555))

(assert (=> bm!270139 m!4223895))

(declare-fun m!4224557 () Bool)

(assert (=> bm!270139 m!4224557))

(declare-fun m!4224559 () Bool)

(assert (=> d!1088993 m!4224559))

(assert (=> d!1088993 m!4223893))

(declare-fun m!4224561 () Bool)

(assert (=> b!3719837 m!4224561))

(assert (=> b!3719098 d!1088993))

(assert (=> b!3719098 d!1088881))

(assert (=> b!3719098 d!1088883))

(declare-fun b!3719839 () Bool)

(declare-fun e!2302972 () Bool)

(assert (=> b!3719839 (= e!2302972 (not (= (head!8025 (tail!5752 tl!3933)) (c!642993 (derivativeStep!3324 lt!1297736 (head!8025 tl!3933))))))))

(declare-fun b!3719840 () Bool)

(declare-fun res!1511973 () Bool)

(declare-fun e!2302970 () Bool)

(assert (=> b!3719840 (=> (not res!1511973) (not e!2302970))))

(declare-fun call!270145 () Bool)

(assert (=> b!3719840 (= res!1511973 (not call!270145))))

(declare-fun b!3719841 () Bool)

(declare-fun e!2302968 () Bool)

(declare-fun e!2302971 () Bool)

(assert (=> b!3719841 (= e!2302968 e!2302971)))

(declare-fun c!643257 () Bool)

(assert (=> b!3719841 (= c!643257 ((_ is EmptyLang!10859) (derivativeStep!3324 lt!1297736 (head!8025 tl!3933))))))

(declare-fun b!3719842 () Bool)

(declare-fun lt!1297866 () Bool)

(assert (=> b!3719842 (= e!2302968 (= lt!1297866 call!270145))))

(declare-fun d!1088997 () Bool)

(assert (=> d!1088997 e!2302968))

(declare-fun c!643258 () Bool)

(assert (=> d!1088997 (= c!643258 ((_ is EmptyExpr!10859) (derivativeStep!3324 lt!1297736 (head!8025 tl!3933))))))

(declare-fun e!2302967 () Bool)

(assert (=> d!1088997 (= lt!1297866 e!2302967)))

(declare-fun c!643256 () Bool)

(assert (=> d!1088997 (= c!643256 (isEmpty!23512 (tail!5752 tl!3933)))))

(assert (=> d!1088997 (validRegex!4966 (derivativeStep!3324 lt!1297736 (head!8025 tl!3933)))))

(assert (=> d!1088997 (= (matchR!5304 (derivativeStep!3324 lt!1297736 (head!8025 tl!3933)) (tail!5752 tl!3933)) lt!1297866)))

(declare-fun b!3719843 () Bool)

(declare-fun res!1511974 () Bool)

(declare-fun e!2302969 () Bool)

(assert (=> b!3719843 (=> res!1511974 e!2302969)))

(assert (=> b!3719843 (= res!1511974 e!2302970)))

(declare-fun res!1511971 () Bool)

(assert (=> b!3719843 (=> (not res!1511971) (not e!2302970))))

(assert (=> b!3719843 (= res!1511971 lt!1297866)))

(declare-fun b!3719844 () Bool)

(declare-fun res!1511970 () Bool)

(assert (=> b!3719844 (=> (not res!1511970) (not e!2302970))))

(assert (=> b!3719844 (= res!1511970 (isEmpty!23512 (tail!5752 (tail!5752 tl!3933))))))

(declare-fun b!3719845 () Bool)

(declare-fun res!1511976 () Bool)

(assert (=> b!3719845 (=> res!1511976 e!2302972)))

(assert (=> b!3719845 (= res!1511976 (not (isEmpty!23512 (tail!5752 (tail!5752 tl!3933)))))))

(declare-fun b!3719846 () Bool)

(assert (=> b!3719846 (= e!2302967 (matchR!5304 (derivativeStep!3324 (derivativeStep!3324 lt!1297736 (head!8025 tl!3933)) (head!8025 (tail!5752 tl!3933))) (tail!5752 (tail!5752 tl!3933))))))

(declare-fun bm!270140 () Bool)

(assert (=> bm!270140 (= call!270145 (isEmpty!23512 (tail!5752 tl!3933)))))

(declare-fun b!3719847 () Bool)

(declare-fun e!2302966 () Bool)

(assert (=> b!3719847 (= e!2302969 e!2302966)))

(declare-fun res!1511969 () Bool)

(assert (=> b!3719847 (=> (not res!1511969) (not e!2302966))))

(assert (=> b!3719847 (= res!1511969 (not lt!1297866))))

(declare-fun b!3719848 () Bool)

(assert (=> b!3719848 (= e!2302967 (nullable!3782 (derivativeStep!3324 lt!1297736 (head!8025 tl!3933))))))

(declare-fun b!3719849 () Bool)

(assert (=> b!3719849 (= e!2302971 (not lt!1297866))))

(declare-fun b!3719850 () Bool)

(assert (=> b!3719850 (= e!2302966 e!2302972)))

(declare-fun res!1511972 () Bool)

(assert (=> b!3719850 (=> res!1511972 e!2302972)))

(assert (=> b!3719850 (= res!1511972 call!270145)))

(declare-fun b!3719851 () Bool)

(declare-fun res!1511975 () Bool)

(assert (=> b!3719851 (=> res!1511975 e!2302969)))

(assert (=> b!3719851 (= res!1511975 (not ((_ is ElementMatch!10859) (derivativeStep!3324 lt!1297736 (head!8025 tl!3933)))))))

(assert (=> b!3719851 (= e!2302971 e!2302969)))

(declare-fun b!3719852 () Bool)

(assert (=> b!3719852 (= e!2302970 (= (head!8025 (tail!5752 tl!3933)) (c!642993 (derivativeStep!3324 lt!1297736 (head!8025 tl!3933)))))))

(assert (= (and d!1088997 c!643256) b!3719848))

(assert (= (and d!1088997 (not c!643256)) b!3719846))

(assert (= (and d!1088997 c!643258) b!3719842))

(assert (= (and d!1088997 (not c!643258)) b!3719841))

(assert (= (and b!3719841 c!643257) b!3719849))

(assert (= (and b!3719841 (not c!643257)) b!3719851))

(assert (= (and b!3719851 (not res!1511975)) b!3719843))

(assert (= (and b!3719843 res!1511971) b!3719840))

(assert (= (and b!3719840 res!1511973) b!3719844))

(assert (= (and b!3719844 res!1511970) b!3719852))

(assert (= (and b!3719843 (not res!1511974)) b!3719847))

(assert (= (and b!3719847 res!1511969) b!3719850))

(assert (= (and b!3719850 (not res!1511972)) b!3719845))

(assert (= (and b!3719845 (not res!1511976)) b!3719839))

(assert (= (or b!3719842 b!3719840 b!3719850) bm!270140))

(assert (=> d!1088997 m!4223899))

(assert (=> d!1088997 m!4223903))

(assert (=> d!1088997 m!4224237))

(declare-fun m!4224563 () Bool)

(assert (=> d!1088997 m!4224563))

(assert (=> b!3719852 m!4223899))

(assert (=> b!3719852 m!4224273))

(assert (=> b!3719839 m!4223899))

(assert (=> b!3719839 m!4224273))

(assert (=> b!3719846 m!4223899))

(assert (=> b!3719846 m!4224273))

(assert (=> b!3719846 m!4224237))

(assert (=> b!3719846 m!4224273))

(declare-fun m!4224565 () Bool)

(assert (=> b!3719846 m!4224565))

(assert (=> b!3719846 m!4223899))

(assert (=> b!3719846 m!4224277))

(assert (=> b!3719846 m!4224565))

(assert (=> b!3719846 m!4224277))

(declare-fun m!4224567 () Bool)

(assert (=> b!3719846 m!4224567))

(assert (=> b!3719845 m!4223899))

(assert (=> b!3719845 m!4224277))

(assert (=> b!3719845 m!4224277))

(assert (=> b!3719845 m!4224281))

(assert (=> b!3719844 m!4223899))

(assert (=> b!3719844 m!4224277))

(assert (=> b!3719844 m!4224277))

(assert (=> b!3719844 m!4224281))

(assert (=> bm!270140 m!4223899))

(assert (=> bm!270140 m!4223903))

(assert (=> b!3719848 m!4224237))

(declare-fun m!4224569 () Bool)

(assert (=> b!3719848 m!4224569))

(assert (=> b!3719519 d!1088997))

(declare-fun b!3719862 () Bool)

(declare-fun e!2302981 () Regex!10859)

(declare-fun e!2302984 () Regex!10859)

(assert (=> b!3719862 (= e!2302981 e!2302984)))

(declare-fun c!643265 () Bool)

(assert (=> b!3719862 (= c!643265 ((_ is Star!10859) lt!1297736))))

(declare-fun b!3719863 () Bool)

(declare-fun call!270151 () Regex!10859)

(assert (=> b!3719863 (= e!2302984 (Concat!17130 call!270151 lt!1297736))))

(declare-fun bm!270144 () Bool)

(declare-fun call!270152 () Regex!10859)

(assert (=> bm!270144 (= call!270151 call!270152)))

(declare-fun b!3719864 () Bool)

(declare-fun e!2302982 () Regex!10859)

(declare-fun e!2302980 () Regex!10859)

(assert (=> b!3719864 (= e!2302982 e!2302980)))

(declare-fun c!643261 () Bool)

(assert (=> b!3719864 (= c!643261 ((_ is ElementMatch!10859) lt!1297736))))

(declare-fun b!3719865 () Bool)

(assert (=> b!3719865 (= e!2302982 EmptyLang!10859)))

(declare-fun bm!270145 () Bool)

(declare-fun call!270150 () Regex!10859)

(declare-fun call!270149 () Regex!10859)

(assert (=> bm!270145 (= call!270150 call!270149)))

(declare-fun b!3719866 () Bool)

(declare-fun e!2302983 () Regex!10859)

(assert (=> b!3719866 (= e!2302983 (Union!10859 (Concat!17130 call!270150 (regTwo!22230 lt!1297736)) call!270151))))

(declare-fun b!3719867 () Bool)

(declare-fun c!643263 () Bool)

(assert (=> b!3719867 (= c!643263 ((_ is Union!10859) lt!1297736))))

(assert (=> b!3719867 (= e!2302980 e!2302981)))

(declare-fun bm!270146 () Bool)

(assert (=> bm!270146 (= call!270149 (derivativeStep!3324 (ite c!643263 (regOne!22231 lt!1297736) (regOne!22230 lt!1297736)) (head!8025 tl!3933)))))

(declare-fun b!3719868 () Bool)

(assert (=> b!3719868 (= e!2302980 (ite (= (head!8025 tl!3933) (c!642993 lt!1297736)) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719869 () Bool)

(assert (=> b!3719869 (= e!2302983 (Union!10859 (Concat!17130 call!270150 (regTwo!22230 lt!1297736)) EmptyLang!10859))))

(declare-fun bm!270147 () Bool)

(assert (=> bm!270147 (= call!270152 (derivativeStep!3324 (ite c!643263 (regTwo!22231 lt!1297736) (ite c!643265 (reg!11188 lt!1297736) (regTwo!22230 lt!1297736))) (head!8025 tl!3933)))))

(declare-fun b!3719871 () Bool)

(assert (=> b!3719871 (= e!2302981 (Union!10859 call!270149 call!270152))))

(declare-fun d!1089009 () Bool)

(declare-fun lt!1297867 () Regex!10859)

(assert (=> d!1089009 (validRegex!4966 lt!1297867)))

(assert (=> d!1089009 (= lt!1297867 e!2302982)))

(declare-fun c!643264 () Bool)

(assert (=> d!1089009 (= c!643264 (or ((_ is EmptyExpr!10859) lt!1297736) ((_ is EmptyLang!10859) lt!1297736)))))

(assert (=> d!1089009 (validRegex!4966 lt!1297736)))

(assert (=> d!1089009 (= (derivativeStep!3324 lt!1297736 (head!8025 tl!3933)) lt!1297867)))

(declare-fun b!3719870 () Bool)

(declare-fun c!643262 () Bool)

(assert (=> b!3719870 (= c!643262 (nullable!3782 (regOne!22230 lt!1297736)))))

(assert (=> b!3719870 (= e!2302984 e!2302983)))

(assert (= (and d!1089009 c!643264) b!3719865))

(assert (= (and d!1089009 (not c!643264)) b!3719864))

(assert (= (and b!3719864 c!643261) b!3719868))

(assert (= (and b!3719864 (not c!643261)) b!3719867))

(assert (= (and b!3719867 c!643263) b!3719871))

(assert (= (and b!3719867 (not c!643263)) b!3719862))

(assert (= (and b!3719862 c!643265) b!3719863))

(assert (= (and b!3719862 (not c!643265)) b!3719870))

(assert (= (and b!3719870 c!643262) b!3719866))

(assert (= (and b!3719870 (not c!643262)) b!3719869))

(assert (= (or b!3719866 b!3719869) bm!270145))

(assert (= (or b!3719863 b!3719866) bm!270144))

(assert (= (or b!3719871 bm!270144) bm!270147))

(assert (= (or b!3719871 bm!270145) bm!270146))

(assert (=> bm!270146 m!4223895))

(declare-fun m!4224571 () Bool)

(assert (=> bm!270146 m!4224571))

(assert (=> bm!270147 m!4223895))

(declare-fun m!4224575 () Bool)

(assert (=> bm!270147 m!4224575))

(declare-fun m!4224577 () Bool)

(assert (=> d!1089009 m!4224577))

(assert (=> d!1089009 m!4224215))

(declare-fun m!4224579 () Bool)

(assert (=> b!3719870 m!4224579))

(assert (=> b!3719519 d!1089009))

(assert (=> b!3719519 d!1088881))

(assert (=> b!3719519 d!1088883))

(declare-fun d!1089011 () Bool)

(assert (=> d!1089011 (= (isEmpty!23512 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))) ((_ is Nil!39616) (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(assert (=> b!3719443 d!1089011))

(declare-fun d!1089015 () Bool)

(assert (=> d!1089015 (= (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729))) (t!302423 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))

(assert (=> b!3719443 d!1089015))

(assert (=> d!1088759 d!1088773))

(assert (=> d!1088759 d!1088769))

(declare-fun d!1089017 () Bool)

(assert (=> d!1089017 (contains!7952 (usedCharacters!1122 (regOne!22230 r!26326)) c!13576)))

(assert (=> d!1089017 true))

(declare-fun _$132!122 () Unit!57516)

(assert (=> d!1089017 (= (choose!22205 (regOne!22230 r!26326) c!13576 (_1!22746 lt!1297729)) _$132!122)))

(declare-fun bs!574927 () Bool)

(assert (= bs!574927 d!1089017))

(assert (=> bs!574927 m!4223747))

(assert (=> bs!574927 m!4223747))

(assert (=> bs!574927 m!4223749))

(assert (=> d!1088759 d!1089017))

(assert (=> d!1088759 d!1088743))

(declare-fun d!1089023 () Bool)

(assert (=> d!1089023 (= (isDefined!6751 (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) Nil!39616 tl!3933 tl!3933)) (not (isEmpty!23513 (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) Nil!39616 tl!3933 tl!3933))))))

(declare-fun bs!574928 () Bool)

(assert (= bs!574928 d!1089023))

(assert (=> bs!574928 m!4223761))

(declare-fun m!4224585 () Bool)

(assert (=> bs!574928 m!4224585))

(assert (=> d!1088777 d!1089023))

(assert (=> d!1088777 d!1088783))

(declare-fun d!1089025 () Bool)

(assert (=> d!1089025 (isDefined!6751 (findConcatSeparation!1262 lt!1297728 (regTwo!22230 r!26326) Nil!39616 tl!3933 tl!3933))))

(assert (=> d!1089025 true))

(declare-fun _$122!364 () Unit!57516)

(assert (=> d!1089025 (= (choose!22206 lt!1297728 (regTwo!22230 r!26326) tl!3933) _$122!364)))

(declare-fun bs!574930 () Bool)

(assert (= bs!574930 d!1089025))

(assert (=> bs!574930 m!4223761))

(assert (=> bs!574930 m!4223761))

(assert (=> bs!574930 m!4223931))

(assert (=> d!1088777 d!1089025))

(assert (=> d!1088777 d!1088949))

(declare-fun b!3719891 () Bool)

(declare-fun res!1511991 () Bool)

(declare-fun e!2303002 () Bool)

(assert (=> b!3719891 (=> res!1511991 e!2303002)))

(assert (=> b!3719891 (= res!1511991 (not ((_ is Concat!17130) (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326)))))))

(declare-fun e!2303003 () Bool)

(assert (=> b!3719891 (= e!2303003 e!2303002)))

(declare-fun b!3719893 () Bool)

(declare-fun res!1511987 () Bool)

(declare-fun e!2303001 () Bool)

(assert (=> b!3719893 (=> (not res!1511987) (not e!2303001))))

(declare-fun call!270162 () Bool)

(assert (=> b!3719893 (= res!1511987 call!270162)))

(assert (=> b!3719893 (= e!2303003 e!2303001)))

(declare-fun c!643274 () Bool)

(declare-fun call!270160 () Bool)

(declare-fun bm!270155 () Bool)

(declare-fun c!643275 () Bool)

(assert (=> bm!270155 (= call!270160 (validRegex!4966 (ite c!643274 (reg!11188 (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))) (ite c!643275 (regTwo!22231 (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))) (regOne!22230 (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326)))))))))

(declare-fun bm!270156 () Bool)

(assert (=> bm!270156 (= call!270162 (validRegex!4966 (ite c!643275 (regOne!22231 (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))) (regTwo!22230 (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))))))))

(declare-fun b!3719894 () Bool)

(declare-fun e!2303000 () Bool)

(assert (=> b!3719894 (= e!2303000 call!270162)))

(declare-fun b!3719895 () Bool)

(declare-fun e!2302997 () Bool)

(assert (=> b!3719895 (= e!2302997 e!2303003)))

(assert (=> b!3719895 (= c!643275 ((_ is Union!10859) (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))))))

(declare-fun b!3719896 () Bool)

(declare-fun e!2302999 () Bool)

(assert (=> b!3719896 (= e!2302999 e!2302997)))

(assert (=> b!3719896 (= c!643274 ((_ is Star!10859) (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))))))

(declare-fun b!3719897 () Bool)

(declare-fun e!2302998 () Bool)

(assert (=> b!3719897 (= e!2302997 e!2302998)))

(declare-fun res!1511990 () Bool)

(assert (=> b!3719897 (= res!1511990 (not (nullable!3782 (reg!11188 (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))))))))

(assert (=> b!3719897 (=> (not res!1511990) (not e!2302998))))

(declare-fun bm!270157 () Bool)

(declare-fun call!270161 () Bool)

(assert (=> bm!270157 (= call!270161 call!270160)))

(declare-fun b!3719892 () Bool)

(assert (=> b!3719892 (= e!2303002 e!2303000)))

(declare-fun res!1511988 () Bool)

(assert (=> b!3719892 (=> (not res!1511988) (not e!2303000))))

(assert (=> b!3719892 (= res!1511988 call!270161)))

(declare-fun d!1089035 () Bool)

(declare-fun res!1511989 () Bool)

(assert (=> d!1089035 (=> res!1511989 e!2302999)))

(assert (=> d!1089035 (= res!1511989 ((_ is ElementMatch!10859) (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))))))

(assert (=> d!1089035 (= (validRegex!4966 (ite c!643148 (regOne!22231 r!26326) (regTwo!22230 r!26326))) e!2302999)))

(declare-fun b!3719898 () Bool)

(assert (=> b!3719898 (= e!2303001 call!270161)))

(declare-fun b!3719899 () Bool)

(assert (=> b!3719899 (= e!2302998 call!270160)))

(assert (= (and d!1089035 (not res!1511989)) b!3719896))

(assert (= (and b!3719896 c!643274) b!3719897))

(assert (= (and b!3719896 (not c!643274)) b!3719895))

(assert (= (and b!3719897 res!1511990) b!3719899))

(assert (= (and b!3719895 c!643275) b!3719893))

(assert (= (and b!3719895 (not c!643275)) b!3719891))

(assert (= (and b!3719893 res!1511987) b!3719898))

(assert (= (and b!3719891 (not res!1511991)) b!3719892))

(assert (= (and b!3719892 res!1511988) b!3719894))

(assert (= (or b!3719898 b!3719892) bm!270157))

(assert (= (or b!3719893 b!3719894) bm!270156))

(assert (= (or b!3719899 bm!270157) bm!270155))

(declare-fun m!4224605 () Bool)

(assert (=> bm!270155 m!4224605))

(declare-fun m!4224607 () Bool)

(assert (=> bm!270156 m!4224607))

(declare-fun m!4224609 () Bool)

(assert (=> b!3719897 m!4224609))

(assert (=> bm!270068 d!1089035))

(declare-fun d!1089039 () Bool)

(assert (=> d!1089039 (= (isEmpty!23512 Nil!39616) true)))

(assert (=> d!1088745 d!1089039))

(declare-fun b!3719914 () Bool)

(declare-fun res!1512004 () Bool)

(declare-fun e!2303016 () Bool)

(assert (=> b!3719914 (=> res!1512004 e!2303016)))

(assert (=> b!3719914 (= res!1512004 (not ((_ is Concat!17130) lt!1297726)))))

(declare-fun e!2303017 () Bool)

(assert (=> b!3719914 (= e!2303017 e!2303016)))

(declare-fun b!3719916 () Bool)

(declare-fun res!1512000 () Bool)

(declare-fun e!2303015 () Bool)

(assert (=> b!3719916 (=> (not res!1512000) (not e!2303015))))

(declare-fun call!270166 () Bool)

(assert (=> b!3719916 (= res!1512000 call!270166)))

(assert (=> b!3719916 (= e!2303017 e!2303015)))

(declare-fun c!643279 () Bool)

(declare-fun call!270164 () Bool)

(declare-fun bm!270159 () Bool)

(declare-fun c!643280 () Bool)

(assert (=> bm!270159 (= call!270164 (validRegex!4966 (ite c!643279 (reg!11188 lt!1297726) (ite c!643280 (regTwo!22231 lt!1297726) (regOne!22230 lt!1297726)))))))

(declare-fun bm!270160 () Bool)

(assert (=> bm!270160 (= call!270166 (validRegex!4966 (ite c!643280 (regOne!22231 lt!1297726) (regTwo!22230 lt!1297726))))))

(declare-fun b!3719917 () Bool)

(declare-fun e!2303014 () Bool)

(assert (=> b!3719917 (= e!2303014 call!270166)))

(declare-fun b!3719918 () Bool)

(declare-fun e!2303011 () Bool)

(assert (=> b!3719918 (= e!2303011 e!2303017)))

(assert (=> b!3719918 (= c!643280 ((_ is Union!10859) lt!1297726))))

(declare-fun b!3719919 () Bool)

(declare-fun e!2303013 () Bool)

(assert (=> b!3719919 (= e!2303013 e!2303011)))

(assert (=> b!3719919 (= c!643279 ((_ is Star!10859) lt!1297726))))

(declare-fun b!3719920 () Bool)

(declare-fun e!2303012 () Bool)

(assert (=> b!3719920 (= e!2303011 e!2303012)))

(declare-fun res!1512003 () Bool)

(assert (=> b!3719920 (= res!1512003 (not (nullable!3782 (reg!11188 lt!1297726))))))

(assert (=> b!3719920 (=> (not res!1512003) (not e!2303012))))

(declare-fun bm!270161 () Bool)

(declare-fun call!270165 () Bool)

(assert (=> bm!270161 (= call!270165 call!270164)))

(declare-fun b!3719915 () Bool)

(assert (=> b!3719915 (= e!2303016 e!2303014)))

(declare-fun res!1512001 () Bool)

(assert (=> b!3719915 (=> (not res!1512001) (not e!2303014))))

(assert (=> b!3719915 (= res!1512001 call!270165)))

(declare-fun d!1089041 () Bool)

(declare-fun res!1512002 () Bool)

(assert (=> d!1089041 (=> res!1512002 e!2303013)))

(assert (=> d!1089041 (= res!1512002 ((_ is ElementMatch!10859) lt!1297726))))

(assert (=> d!1089041 (= (validRegex!4966 lt!1297726) e!2303013)))

(declare-fun b!3719921 () Bool)

(assert (=> b!3719921 (= e!2303015 call!270165)))

(declare-fun b!3719922 () Bool)

(assert (=> b!3719922 (= e!2303012 call!270164)))

(assert (= (and d!1089041 (not res!1512002)) b!3719919))

(assert (= (and b!3719919 c!643279) b!3719920))

(assert (= (and b!3719919 (not c!643279)) b!3719918))

(assert (= (and b!3719920 res!1512003) b!3719922))

(assert (= (and b!3719918 c!643280) b!3719916))

(assert (= (and b!3719918 (not c!643280)) b!3719914))

(assert (= (and b!3719916 res!1512000) b!3719921))

(assert (= (and b!3719914 (not res!1512004)) b!3719915))

(assert (= (and b!3719915 res!1512001) b!3719917))

(assert (= (or b!3719921 b!3719915) bm!270161))

(assert (= (or b!3719916 b!3719917) bm!270160))

(assert (= (or b!3719922 bm!270161) bm!270159))

(declare-fun m!4224611 () Bool)

(assert (=> bm!270159 m!4224611))

(declare-fun m!4224613 () Bool)

(assert (=> bm!270160 m!4224613))

(declare-fun m!4224615 () Bool)

(assert (=> b!3719920 m!4224615))

(assert (=> d!1088745 d!1089041))

(declare-fun d!1089043 () Bool)

(assert (=> d!1089043 (= (nullable!3782 (reg!11188 r!26326)) (nullableFct!1070 (reg!11188 r!26326)))))

(declare-fun bs!574931 () Bool)

(assert (= bs!574931 d!1089043))

(declare-fun m!4224617 () Bool)

(assert (=> bs!574931 m!4224617))

(assert (=> b!3719435 d!1089043))

(declare-fun b!3719923 () Bool)

(declare-fun e!2303018 () List!39740)

(declare-fun e!2303019 () List!39740)

(assert (=> b!3719923 (= e!2303018 e!2303019)))

(declare-fun c!643281 () Bool)

(assert (=> b!3719923 (= c!643281 ((_ is ElementMatch!10859) (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))))))

(declare-fun bm!270162 () Bool)

(declare-fun call!270168 () List!39740)

(declare-fun call!270167 () List!39740)

(assert (=> bm!270162 (= call!270168 call!270167)))

(declare-fun b!3719924 () Bool)

(declare-fun e!2303021 () List!39740)

(declare-fun call!270170 () List!39740)

(assert (=> b!3719924 (= e!2303021 call!270170)))

(declare-fun b!3719925 () Bool)

(assert (=> b!3719925 (= e!2303021 call!270170)))

(declare-fun bm!270163 () Bool)

(declare-fun c!643282 () Bool)

(declare-fun c!643284 () Bool)

(assert (=> bm!270163 (= call!270167 (usedCharacters!1122 (ite c!643282 (reg!11188 (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))) (ite c!643284 (regTwo!22231 (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))) (regTwo!22230 (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326))))))))))

(declare-fun call!270169 () List!39740)

(declare-fun bm!270164 () Bool)

(assert (=> bm!270164 (= call!270169 (usedCharacters!1122 (ite c!643284 (regOne!22231 (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))) (regOne!22230 (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))))))))

(declare-fun b!3719926 () Bool)

(assert (=> b!3719926 (= e!2303019 (Cons!39616 (c!642993 (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))) Nil!39616))))

(declare-fun b!3719927 () Bool)

(declare-fun e!2303020 () List!39740)

(assert (=> b!3719927 (= e!2303020 e!2303021)))

(assert (=> b!3719927 (= c!643284 ((_ is Union!10859) (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))))))

(declare-fun b!3719928 () Bool)

(assert (=> b!3719928 (= e!2303018 Nil!39616)))

(declare-fun bm!270165 () Bool)

(assert (=> bm!270165 (= call!270170 (++!9805 call!270169 call!270168))))

(declare-fun c!643283 () Bool)

(declare-fun d!1089045 () Bool)

(assert (=> d!1089045 (= c!643283 (or ((_ is EmptyExpr!10859) (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))) ((_ is EmptyLang!10859) (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326))))))))

(assert (=> d!1089045 (= (usedCharacters!1122 (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))) e!2303018)))

(declare-fun b!3719929 () Bool)

(assert (=> b!3719929 (= c!643282 ((_ is Star!10859) (ite c!643040 (reg!11188 r!26326) (ite c!643042 (regTwo!22231 r!26326) (regTwo!22230 r!26326)))))))

(assert (=> b!3719929 (= e!2303019 e!2303020)))

(declare-fun b!3719930 () Bool)

(assert (=> b!3719930 (= e!2303020 call!270167)))

(assert (= (and d!1089045 c!643283) b!3719928))

(assert (= (and d!1089045 (not c!643283)) b!3719923))

(assert (= (and b!3719923 c!643281) b!3719926))

(assert (= (and b!3719923 (not c!643281)) b!3719929))

(assert (= (and b!3719929 c!643282) b!3719930))

(assert (= (and b!3719929 (not c!643282)) b!3719927))

(assert (= (and b!3719927 c!643284) b!3719924))

(assert (= (and b!3719927 (not c!643284)) b!3719925))

(assert (= (or b!3719924 b!3719925) bm!270164))

(assert (= (or b!3719924 b!3719925) bm!270162))

(assert (= (or b!3719924 b!3719925) bm!270165))

(assert (= (or b!3719930 bm!270162) bm!270163))

(declare-fun m!4224629 () Bool)

(assert (=> bm!270163 m!4224629))

(declare-fun m!4224631 () Bool)

(assert (=> bm!270164 m!4224631))

(declare-fun m!4224633 () Bool)

(assert (=> bm!270165 m!4224633))

(assert (=> bm!270005 d!1089045))

(declare-fun d!1089047 () Bool)

(assert (=> d!1089047 (= (isEmpty!23512 (Cons!39616 c!13576 (_1!22746 lt!1297729))) ((_ is Nil!39616) (Cons!39616 c!13576 (_1!22746 lt!1297729))))))

(assert (=> bm!270070 d!1089047))

(declare-fun d!1089049 () Bool)

(assert (=> d!1089049 (= (isEmpty!23512 (tail!5752 (_2!22746 lt!1297729))) ((_ is Nil!39616) (tail!5752 (_2!22746 lt!1297729))))))

(assert (=> b!3719457 d!1089049))

(declare-fun d!1089051 () Bool)

(assert (=> d!1089051 (= (tail!5752 (_2!22746 lt!1297729)) (t!302423 (_2!22746 lt!1297729)))))

(assert (=> b!3719457 d!1089051))

(declare-fun b!3719931 () Bool)

(declare-fun e!2303023 () List!39740)

(assert (=> b!3719931 (= e!2303023 (_2!22746 lt!1297729))))

(declare-fun b!3719934 () Bool)

(declare-fun e!2303022 () Bool)

(declare-fun lt!1297870 () List!39740)

(assert (=> b!3719934 (= e!2303022 (or (not (= (_2!22746 lt!1297729) Nil!39616)) (= lt!1297870 (t!302423 (_1!22746 lt!1297729)))))))

(declare-fun b!3719933 () Bool)

(declare-fun res!1512006 () Bool)

(assert (=> b!3719933 (=> (not res!1512006) (not e!2303022))))

(assert (=> b!3719933 (= res!1512006 (= (size!30023 lt!1297870) (+ (size!30023 (t!302423 (_1!22746 lt!1297729))) (size!30023 (_2!22746 lt!1297729)))))))

(declare-fun b!3719932 () Bool)

(assert (=> b!3719932 (= e!2303023 (Cons!39616 (h!45036 (t!302423 (_1!22746 lt!1297729))) (++!9805 (t!302423 (t!302423 (_1!22746 lt!1297729))) (_2!22746 lt!1297729))))))

(declare-fun d!1089053 () Bool)

(assert (=> d!1089053 e!2303022))

(declare-fun res!1512005 () Bool)

(assert (=> d!1089053 (=> (not res!1512005) (not e!2303022))))

(assert (=> d!1089053 (= res!1512005 (= (content!5741 lt!1297870) ((_ map or) (content!5741 (t!302423 (_1!22746 lt!1297729))) (content!5741 (_2!22746 lt!1297729)))))))

(assert (=> d!1089053 (= lt!1297870 e!2303023)))

(declare-fun c!643285 () Bool)

(assert (=> d!1089053 (= c!643285 ((_ is Nil!39616) (t!302423 (_1!22746 lt!1297729))))))

(assert (=> d!1089053 (= (++!9805 (t!302423 (_1!22746 lt!1297729)) (_2!22746 lt!1297729)) lt!1297870)))

(assert (= (and d!1089053 c!643285) b!3719931))

(assert (= (and d!1089053 (not c!643285)) b!3719932))

(assert (= (and d!1089053 res!1512005) b!3719933))

(assert (= (and b!3719933 res!1512006) b!3719934))

(declare-fun m!4224639 () Bool)

(assert (=> b!3719933 m!4224639))

(declare-fun m!4224641 () Bool)

(assert (=> b!3719933 m!4224641))

(assert (=> b!3719933 m!4224101))

(declare-fun m!4224643 () Bool)

(assert (=> b!3719932 m!4224643))

(declare-fun m!4224645 () Bool)

(assert (=> d!1089053 m!4224645))

(declare-fun m!4224647 () Bool)

(assert (=> d!1089053 m!4224647))

(assert (=> d!1089053 m!4224109))

(assert (=> b!3719318 d!1089053))

(declare-fun d!1089057 () Bool)

(declare-fun c!643289 () Bool)

(assert (=> d!1089057 (= c!643289 ((_ is Nil!39616) lt!1297810))))

(declare-fun e!2303025 () (InoxSet C!21904))

(assert (=> d!1089057 (= (content!5741 lt!1297810) e!2303025)))

(declare-fun b!3719935 () Bool)

(assert (=> b!3719935 (= e!2303025 ((as const (Array C!21904 Bool)) false))))

(declare-fun b!3719936 () Bool)

(assert (=> b!3719936 (= e!2303025 ((_ map or) (store ((as const (Array C!21904 Bool)) false) (h!45036 lt!1297810) true) (content!5741 (t!302423 lt!1297810))))))

(assert (= (and d!1089057 c!643289) b!3719935))

(assert (= (and d!1089057 (not c!643289)) b!3719936))

(declare-fun m!4224649 () Bool)

(assert (=> b!3719936 m!4224649))

(declare-fun m!4224651 () Bool)

(assert (=> b!3719936 m!4224651))

(assert (=> d!1088829 d!1089057))

(declare-fun d!1089059 () Bool)

(declare-fun c!643292 () Bool)

(assert (=> d!1089059 (= c!643292 ((_ is Nil!39616) (_1!22746 lt!1297729)))))

(declare-fun e!2303030 () (InoxSet C!21904))

(assert (=> d!1089059 (= (content!5741 (_1!22746 lt!1297729)) e!2303030)))

(declare-fun b!3719947 () Bool)

(assert (=> b!3719947 (= e!2303030 ((as const (Array C!21904 Bool)) false))))

(declare-fun b!3719948 () Bool)

(assert (=> b!3719948 (= e!2303030 ((_ map or) (store ((as const (Array C!21904 Bool)) false) (h!45036 (_1!22746 lt!1297729)) true) (content!5741 (t!302423 (_1!22746 lt!1297729)))))))

(assert (= (and d!1089059 c!643292) b!3719947))

(assert (= (and d!1089059 (not c!643292)) b!3719948))

(declare-fun m!4224653 () Bool)

(assert (=> b!3719948 m!4224653))

(assert (=> b!3719948 m!4224647))

(assert (=> d!1088829 d!1089059))

(declare-fun d!1089061 () Bool)

(declare-fun c!643293 () Bool)

(assert (=> d!1089061 (= c!643293 ((_ is Nil!39616) (_2!22746 lt!1297729)))))

(declare-fun e!2303031 () (InoxSet C!21904))

(assert (=> d!1089061 (= (content!5741 (_2!22746 lt!1297729)) e!2303031)))

(declare-fun b!3719949 () Bool)

(assert (=> b!3719949 (= e!2303031 ((as const (Array C!21904 Bool)) false))))

(declare-fun b!3719950 () Bool)

(assert (=> b!3719950 (= e!2303031 ((_ map or) (store ((as const (Array C!21904 Bool)) false) (h!45036 (_2!22746 lt!1297729)) true) (content!5741 (t!302423 (_2!22746 lt!1297729)))))))

(assert (= (and d!1089061 c!643293) b!3719949))

(assert (= (and d!1089061 (not c!643293)) b!3719950))

(declare-fun m!4224655 () Bool)

(assert (=> b!3719950 m!4224655))

(declare-fun m!4224657 () Bool)

(assert (=> b!3719950 m!4224657))

(assert (=> d!1088829 d!1089061))

(assert (=> b!3719451 d!1088899))

(assert (=> d!1088867 d!1088945))

(assert (=> d!1088867 d!1088925))

(declare-fun b!3719951 () Bool)

(declare-fun e!2303038 () Bool)

(assert (=> b!3719951 (= e!2303038 (not (= (head!8025 (tail!5752 (_2!22746 lt!1297729))) (c!642993 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729)))))))))

(declare-fun b!3719952 () Bool)

(declare-fun res!1512011 () Bool)

(declare-fun e!2303036 () Bool)

(assert (=> b!3719952 (=> (not res!1512011) (not e!2303036))))

(declare-fun call!270175 () Bool)

(assert (=> b!3719952 (= res!1512011 (not call!270175))))

(declare-fun b!3719953 () Bool)

(declare-fun e!2303034 () Bool)

(declare-fun e!2303037 () Bool)

(assert (=> b!3719953 (= e!2303034 e!2303037)))

(declare-fun c!643295 () Bool)

(assert (=> b!3719953 (= c!643295 ((_ is EmptyLang!10859) (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729)))))))

(declare-fun b!3719954 () Bool)

(declare-fun lt!1297872 () Bool)

(assert (=> b!3719954 (= e!2303034 (= lt!1297872 call!270175))))

(declare-fun d!1089063 () Bool)

(assert (=> d!1089063 e!2303034))

(declare-fun c!643296 () Bool)

(assert (=> d!1089063 (= c!643296 ((_ is EmptyExpr!10859) (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729)))))))

(declare-fun e!2303033 () Bool)

(assert (=> d!1089063 (= lt!1297872 e!2303033)))

(declare-fun c!643294 () Bool)

(assert (=> d!1089063 (= c!643294 (isEmpty!23512 (tail!5752 (_2!22746 lt!1297729))))))

(assert (=> d!1089063 (validRegex!4966 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729))))))

(assert (=> d!1089063 (= (matchR!5304 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729))) (tail!5752 (_2!22746 lt!1297729))) lt!1297872)))

(declare-fun b!3719955 () Bool)

(declare-fun res!1512012 () Bool)

(declare-fun e!2303035 () Bool)

(assert (=> b!3719955 (=> res!1512012 e!2303035)))

(assert (=> b!3719955 (= res!1512012 e!2303036)))

(declare-fun res!1512009 () Bool)

(assert (=> b!3719955 (=> (not res!1512009) (not e!2303036))))

(assert (=> b!3719955 (= res!1512009 lt!1297872)))

(declare-fun b!3719956 () Bool)

(declare-fun res!1512008 () Bool)

(assert (=> b!3719956 (=> (not res!1512008) (not e!2303036))))

(assert (=> b!3719956 (= res!1512008 (isEmpty!23512 (tail!5752 (tail!5752 (_2!22746 lt!1297729)))))))

(declare-fun b!3719957 () Bool)

(declare-fun res!1512014 () Bool)

(assert (=> b!3719957 (=> res!1512014 e!2303038)))

(assert (=> b!3719957 (= res!1512014 (not (isEmpty!23512 (tail!5752 (tail!5752 (_2!22746 lt!1297729))))))))

(declare-fun b!3719958 () Bool)

(assert (=> b!3719958 (= e!2303033 (matchR!5304 (derivativeStep!3324 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729))) (head!8025 (tail!5752 (_2!22746 lt!1297729)))) (tail!5752 (tail!5752 (_2!22746 lt!1297729)))))))

(declare-fun bm!270170 () Bool)

(assert (=> bm!270170 (= call!270175 (isEmpty!23512 (tail!5752 (_2!22746 lt!1297729))))))

(declare-fun b!3719959 () Bool)

(declare-fun e!2303032 () Bool)

(assert (=> b!3719959 (= e!2303035 e!2303032)))

(declare-fun res!1512007 () Bool)

(assert (=> b!3719959 (=> (not res!1512007) (not e!2303032))))

(assert (=> b!3719959 (= res!1512007 (not lt!1297872))))

(declare-fun b!3719960 () Bool)

(assert (=> b!3719960 (= e!2303033 (nullable!3782 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729)))))))

(declare-fun b!3719961 () Bool)

(assert (=> b!3719961 (= e!2303037 (not lt!1297872))))

(declare-fun b!3719962 () Bool)

(assert (=> b!3719962 (= e!2303032 e!2303038)))

(declare-fun res!1512010 () Bool)

(assert (=> b!3719962 (=> res!1512010 e!2303038)))

(assert (=> b!3719962 (= res!1512010 call!270175)))

(declare-fun b!3719963 () Bool)

(declare-fun res!1512013 () Bool)

(assert (=> b!3719963 (=> res!1512013 e!2303035)))

(assert (=> b!3719963 (= res!1512013 (not ((_ is ElementMatch!10859) (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729))))))))

(assert (=> b!3719963 (= e!2303037 e!2303035)))

(declare-fun b!3719964 () Bool)

(assert (=> b!3719964 (= e!2303036 (= (head!8025 (tail!5752 (_2!22746 lt!1297729))) (c!642993 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729))))))))

(assert (= (and d!1089063 c!643294) b!3719960))

(assert (= (and d!1089063 (not c!643294)) b!3719958))

(assert (= (and d!1089063 c!643296) b!3719954))

(assert (= (and d!1089063 (not c!643296)) b!3719953))

(assert (= (and b!3719953 c!643295) b!3719961))

(assert (= (and b!3719953 (not c!643295)) b!3719963))

(assert (= (and b!3719963 (not res!1512013)) b!3719955))

(assert (= (and b!3719955 res!1512009) b!3719952))

(assert (= (and b!3719952 res!1512011) b!3719956))

(assert (= (and b!3719956 res!1512008) b!3719964))

(assert (= (and b!3719955 (not res!1512012)) b!3719959))

(assert (= (and b!3719959 res!1512007) b!3719962))

(assert (= (and b!3719962 (not res!1512010)) b!3719957))

(assert (= (and b!3719957 (not res!1512014)) b!3719951))

(assert (= (or b!3719954 b!3719952 b!3719962) bm!270170))

(assert (=> d!1089063 m!4224193))

(assert (=> d!1089063 m!4224197))

(assert (=> d!1089063 m!4224191))

(declare-fun m!4224665 () Bool)

(assert (=> d!1089063 m!4224665))

(assert (=> b!3719964 m!4224193))

(declare-fun m!4224667 () Bool)

(assert (=> b!3719964 m!4224667))

(assert (=> b!3719951 m!4224193))

(assert (=> b!3719951 m!4224667))

(assert (=> b!3719958 m!4224193))

(assert (=> b!3719958 m!4224667))

(assert (=> b!3719958 m!4224191))

(assert (=> b!3719958 m!4224667))

(declare-fun m!4224669 () Bool)

(assert (=> b!3719958 m!4224669))

(assert (=> b!3719958 m!4224193))

(declare-fun m!4224671 () Bool)

(assert (=> b!3719958 m!4224671))

(assert (=> b!3719958 m!4224669))

(assert (=> b!3719958 m!4224671))

(declare-fun m!4224673 () Bool)

(assert (=> b!3719958 m!4224673))

(assert (=> b!3719957 m!4224193))

(assert (=> b!3719957 m!4224671))

(assert (=> b!3719957 m!4224671))

(declare-fun m!4224675 () Bool)

(assert (=> b!3719957 m!4224675))

(assert (=> b!3719956 m!4224193))

(assert (=> b!3719956 m!4224671))

(assert (=> b!3719956 m!4224671))

(assert (=> b!3719956 m!4224675))

(assert (=> bm!270170 m!4224193))

(assert (=> bm!270170 m!4224197))

(assert (=> b!3719960 m!4224191))

(declare-fun m!4224677 () Bool)

(assert (=> b!3719960 m!4224677))

(assert (=> b!3719459 d!1089063))

(declare-fun b!3719967 () Bool)

(declare-fun e!2303041 () Regex!10859)

(declare-fun e!2303044 () Regex!10859)

(assert (=> b!3719967 (= e!2303041 e!2303044)))

(declare-fun c!643302 () Bool)

(assert (=> b!3719967 (= c!643302 ((_ is Star!10859) (regTwo!22230 r!26326)))))

(declare-fun b!3719968 () Bool)

(declare-fun call!270178 () Regex!10859)

(assert (=> b!3719968 (= e!2303044 (Concat!17130 call!270178 (regTwo!22230 r!26326)))))

(declare-fun bm!270171 () Bool)

(declare-fun call!270179 () Regex!10859)

(assert (=> bm!270171 (= call!270178 call!270179)))

(declare-fun b!3719969 () Bool)

(declare-fun e!2303042 () Regex!10859)

(declare-fun e!2303040 () Regex!10859)

(assert (=> b!3719969 (= e!2303042 e!2303040)))

(declare-fun c!643298 () Bool)

(assert (=> b!3719969 (= c!643298 ((_ is ElementMatch!10859) (regTwo!22230 r!26326)))))

(declare-fun b!3719970 () Bool)

(assert (=> b!3719970 (= e!2303042 EmptyLang!10859)))

(declare-fun bm!270172 () Bool)

(declare-fun call!270177 () Regex!10859)

(declare-fun call!270176 () Regex!10859)

(assert (=> bm!270172 (= call!270177 call!270176)))

(declare-fun e!2303043 () Regex!10859)

(declare-fun b!3719971 () Bool)

(assert (=> b!3719971 (= e!2303043 (Union!10859 (Concat!17130 call!270177 (regTwo!22230 (regTwo!22230 r!26326))) call!270178))))

(declare-fun b!3719972 () Bool)

(declare-fun c!643300 () Bool)

(assert (=> b!3719972 (= c!643300 ((_ is Union!10859) (regTwo!22230 r!26326)))))

(assert (=> b!3719972 (= e!2303040 e!2303041)))

(declare-fun bm!270173 () Bool)

(assert (=> bm!270173 (= call!270176 (derivativeStep!3324 (ite c!643300 (regOne!22231 (regTwo!22230 r!26326)) (regOne!22230 (regTwo!22230 r!26326))) (head!8025 (_2!22746 lt!1297729))))))

(declare-fun b!3719973 () Bool)

(assert (=> b!3719973 (= e!2303040 (ite (= (head!8025 (_2!22746 lt!1297729)) (c!642993 (regTwo!22230 r!26326))) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3719974 () Bool)

(assert (=> b!3719974 (= e!2303043 (Union!10859 (Concat!17130 call!270177 (regTwo!22230 (regTwo!22230 r!26326))) EmptyLang!10859))))

(declare-fun bm!270174 () Bool)

(assert (=> bm!270174 (= call!270179 (derivativeStep!3324 (ite c!643300 (regTwo!22231 (regTwo!22230 r!26326)) (ite c!643302 (reg!11188 (regTwo!22230 r!26326)) (regTwo!22230 (regTwo!22230 r!26326)))) (head!8025 (_2!22746 lt!1297729))))))

(declare-fun b!3719976 () Bool)

(assert (=> b!3719976 (= e!2303041 (Union!10859 call!270176 call!270179))))

(declare-fun d!1089073 () Bool)

(declare-fun lt!1297874 () Regex!10859)

(assert (=> d!1089073 (validRegex!4966 lt!1297874)))

(assert (=> d!1089073 (= lt!1297874 e!2303042)))

(declare-fun c!643301 () Bool)

(assert (=> d!1089073 (= c!643301 (or ((_ is EmptyExpr!10859) (regTwo!22230 r!26326)) ((_ is EmptyLang!10859) (regTwo!22230 r!26326))))))

(assert (=> d!1089073 (validRegex!4966 (regTwo!22230 r!26326))))

(assert (=> d!1089073 (= (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 lt!1297729))) lt!1297874)))

(declare-fun b!3719975 () Bool)

(declare-fun c!643299 () Bool)

(assert (=> b!3719975 (= c!643299 (nullable!3782 (regOne!22230 (regTwo!22230 r!26326))))))

(assert (=> b!3719975 (= e!2303044 e!2303043)))

(assert (= (and d!1089073 c!643301) b!3719970))

(assert (= (and d!1089073 (not c!643301)) b!3719969))

(assert (= (and b!3719969 c!643298) b!3719973))

(assert (= (and b!3719969 (not c!643298)) b!3719972))

(assert (= (and b!3719972 c!643300) b!3719976))

(assert (= (and b!3719972 (not c!643300)) b!3719967))

(assert (= (and b!3719967 c!643302) b!3719968))

(assert (= (and b!3719967 (not c!643302)) b!3719975))

(assert (= (and b!3719975 c!643299) b!3719971))

(assert (= (and b!3719975 (not c!643299)) b!3719974))

(assert (= (or b!3719971 b!3719974) bm!270172))

(assert (= (or b!3719968 b!3719971) bm!270171))

(assert (= (or b!3719976 bm!270171) bm!270174))

(assert (= (or b!3719976 bm!270172) bm!270173))

(assert (=> bm!270173 m!4224189))

(declare-fun m!4224687 () Bool)

(assert (=> bm!270173 m!4224687))

(assert (=> bm!270174 m!4224189))

(declare-fun m!4224689 () Bool)

(assert (=> bm!270174 m!4224689))

(declare-fun m!4224691 () Bool)

(assert (=> d!1089073 m!4224691))

(assert (=> d!1089073 m!4224187))

(declare-fun m!4224693 () Bool)

(assert (=> b!3719975 m!4224693))

(assert (=> b!3719459 d!1089073))

(assert (=> b!3719459 d!1088929))

(assert (=> b!3719459 d!1089051))

(assert (=> b!3719512 d!1088881))

(declare-fun d!1089077 () Bool)

(assert (=> d!1089077 (= (isEmpty!23512 (tail!5752 (_1!22746 lt!1297729))) ((_ is Nil!39616) (tail!5752 (_1!22746 lt!1297729))))))

(assert (=> b!3719533 d!1089077))

(assert (=> b!3719533 d!1088907))

(assert (=> d!1088855 d!1088857))

(declare-fun d!1089079 () Bool)

(declare-fun e!2303059 () Bool)

(assert (=> d!1089079 e!2303059))

(declare-fun res!1512022 () Bool)

(assert (=> d!1089079 (=> res!1512022 e!2303059)))

(assert (=> d!1089079 (= res!1512022 (matchR!5304 lt!1297725 tl!3933))))

(assert (=> d!1089079 true))

(declare-fun _$116!400 () Unit!57516)

(assert (=> d!1089079 (= (choose!22208 lt!1297725 EmptyLang!10859 tl!3933) _$116!400)))

(declare-fun b!3719998 () Bool)

(assert (=> b!3719998 (= e!2303059 (matchR!5304 EmptyLang!10859 tl!3933))))

(assert (= (and d!1089079 (not res!1512022)) b!3719998))

(assert (=> d!1089079 m!4223789))

(assert (=> b!3719998 m!4223775))

(assert (=> d!1088855 d!1089079))

(declare-fun b!3719999 () Bool)

(declare-fun res!1512027 () Bool)

(declare-fun e!2303065 () Bool)

(assert (=> b!3719999 (=> res!1512027 e!2303065)))

(assert (=> b!3719999 (= res!1512027 (not ((_ is Concat!17130) lt!1297725)))))

(declare-fun e!2303066 () Bool)

(assert (=> b!3719999 (= e!2303066 e!2303065)))

(declare-fun b!3720001 () Bool)

(declare-fun res!1512023 () Bool)

(declare-fun e!2303064 () Bool)

(assert (=> b!3720001 (=> (not res!1512023) (not e!2303064))))

(declare-fun call!270189 () Bool)

(assert (=> b!3720001 (= res!1512023 call!270189)))

(assert (=> b!3720001 (= e!2303066 e!2303064)))

(declare-fun c!643311 () Bool)

(declare-fun c!643310 () Bool)

(declare-fun bm!270182 () Bool)

(declare-fun call!270187 () Bool)

(assert (=> bm!270182 (= call!270187 (validRegex!4966 (ite c!643310 (reg!11188 lt!1297725) (ite c!643311 (regTwo!22231 lt!1297725) (regOne!22230 lt!1297725)))))))

(declare-fun bm!270183 () Bool)

(assert (=> bm!270183 (= call!270189 (validRegex!4966 (ite c!643311 (regOne!22231 lt!1297725) (regTwo!22230 lt!1297725))))))

(declare-fun b!3720002 () Bool)

(declare-fun e!2303063 () Bool)

(assert (=> b!3720002 (= e!2303063 call!270189)))

(declare-fun b!3720003 () Bool)

(declare-fun e!2303060 () Bool)

(assert (=> b!3720003 (= e!2303060 e!2303066)))

(assert (=> b!3720003 (= c!643311 ((_ is Union!10859) lt!1297725))))

(declare-fun b!3720004 () Bool)

(declare-fun e!2303062 () Bool)

(assert (=> b!3720004 (= e!2303062 e!2303060)))

(assert (=> b!3720004 (= c!643310 ((_ is Star!10859) lt!1297725))))

(declare-fun b!3720005 () Bool)

(declare-fun e!2303061 () Bool)

(assert (=> b!3720005 (= e!2303060 e!2303061)))

(declare-fun res!1512026 () Bool)

(assert (=> b!3720005 (= res!1512026 (not (nullable!3782 (reg!11188 lt!1297725))))))

(assert (=> b!3720005 (=> (not res!1512026) (not e!2303061))))

(declare-fun bm!270184 () Bool)

(declare-fun call!270188 () Bool)

(assert (=> bm!270184 (= call!270188 call!270187)))

(declare-fun b!3720000 () Bool)

(assert (=> b!3720000 (= e!2303065 e!2303063)))

(declare-fun res!1512024 () Bool)

(assert (=> b!3720000 (=> (not res!1512024) (not e!2303063))))

(assert (=> b!3720000 (= res!1512024 call!270188)))

(declare-fun d!1089087 () Bool)

(declare-fun res!1512025 () Bool)

(assert (=> d!1089087 (=> res!1512025 e!2303062)))

(assert (=> d!1089087 (= res!1512025 ((_ is ElementMatch!10859) lt!1297725))))

(assert (=> d!1089087 (= (validRegex!4966 lt!1297725) e!2303062)))

(declare-fun b!3720006 () Bool)

(assert (=> b!3720006 (= e!2303064 call!270188)))

(declare-fun b!3720007 () Bool)

(assert (=> b!3720007 (= e!2303061 call!270187)))

(assert (= (and d!1089087 (not res!1512025)) b!3720004))

(assert (= (and b!3720004 c!643310) b!3720005))

(assert (= (and b!3720004 (not c!643310)) b!3720003))

(assert (= (and b!3720005 res!1512026) b!3720007))

(assert (= (and b!3720003 c!643311) b!3720001))

(assert (= (and b!3720003 (not c!643311)) b!3719999))

(assert (= (and b!3720001 res!1512023) b!3720006))

(assert (= (and b!3719999 (not res!1512027)) b!3720000))

(assert (= (and b!3720000 res!1512024) b!3720002))

(assert (= (or b!3720006 b!3720000) bm!270184))

(assert (= (or b!3720001 b!3720002) bm!270183))

(assert (= (or b!3720007 bm!270184) bm!270182))

(declare-fun m!4224703 () Bool)

(assert (=> bm!270182 m!4224703))

(declare-fun m!4224705 () Bool)

(assert (=> bm!270183 m!4224705))

(declare-fun m!4224707 () Bool)

(assert (=> b!3720005 m!4224707))

(assert (=> d!1088855 d!1089087))

(assert (=> bm!269992 d!1089039))

(assert (=> b!3719091 d!1088881))

(assert (=> b!3719427 d!1088839))

(assert (=> d!1088775 d!1088945))

(declare-fun d!1089089 () Bool)

(assert (=> d!1089089 (= (validRegex!4966 EmptyLang!10859) true)))

(assert (=> d!1088775 d!1089089))

(declare-fun b!3720022 () Bool)

(declare-fun e!2303080 () Bool)

(assert (=> b!3720022 (= e!2303080 (not (= (head!8025 tl!3933) (c!642993 (regTwo!22230 r!26326)))))))

(declare-fun b!3720023 () Bool)

(declare-fun res!1512040 () Bool)

(declare-fun e!2303078 () Bool)

(assert (=> b!3720023 (=> (not res!1512040) (not e!2303078))))

(declare-fun call!270191 () Bool)

(assert (=> b!3720023 (= res!1512040 (not call!270191))))

(declare-fun b!3720024 () Bool)

(declare-fun e!2303076 () Bool)

(declare-fun e!2303079 () Bool)

(assert (=> b!3720024 (= e!2303076 e!2303079)))

(declare-fun c!643316 () Bool)

(assert (=> b!3720024 (= c!643316 ((_ is EmptyLang!10859) (regTwo!22230 r!26326)))))

(declare-fun b!3720025 () Bool)

(declare-fun lt!1297877 () Bool)

(assert (=> b!3720025 (= e!2303076 (= lt!1297877 call!270191))))

(declare-fun d!1089093 () Bool)

(assert (=> d!1089093 e!2303076))

(declare-fun c!643317 () Bool)

(assert (=> d!1089093 (= c!643317 ((_ is EmptyExpr!10859) (regTwo!22230 r!26326)))))

(declare-fun e!2303075 () Bool)

(assert (=> d!1089093 (= lt!1297877 e!2303075)))

(declare-fun c!643315 () Bool)

(assert (=> d!1089093 (= c!643315 (isEmpty!23512 tl!3933))))

(assert (=> d!1089093 (validRegex!4966 (regTwo!22230 r!26326))))

(assert (=> d!1089093 (= (matchR!5304 (regTwo!22230 r!26326) tl!3933) lt!1297877)))

(declare-fun b!3720026 () Bool)

(declare-fun res!1512041 () Bool)

(declare-fun e!2303077 () Bool)

(assert (=> b!3720026 (=> res!1512041 e!2303077)))

(assert (=> b!3720026 (= res!1512041 e!2303078)))

(declare-fun res!1512038 () Bool)

(assert (=> b!3720026 (=> (not res!1512038) (not e!2303078))))

(assert (=> b!3720026 (= res!1512038 lt!1297877)))

(declare-fun b!3720027 () Bool)

(declare-fun res!1512037 () Bool)

(assert (=> b!3720027 (=> (not res!1512037) (not e!2303078))))

(assert (=> b!3720027 (= res!1512037 (isEmpty!23512 (tail!5752 tl!3933)))))

(declare-fun b!3720028 () Bool)

(declare-fun res!1512043 () Bool)

(assert (=> b!3720028 (=> res!1512043 e!2303080)))

(assert (=> b!3720028 (= res!1512043 (not (isEmpty!23512 (tail!5752 tl!3933))))))

(declare-fun b!3720029 () Bool)

(assert (=> b!3720029 (= e!2303075 (matchR!5304 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 tl!3933)) (tail!5752 tl!3933)))))

(declare-fun bm!270186 () Bool)

(assert (=> bm!270186 (= call!270191 (isEmpty!23512 tl!3933))))

(declare-fun b!3720030 () Bool)

(declare-fun e!2303074 () Bool)

(assert (=> b!3720030 (= e!2303077 e!2303074)))

(declare-fun res!1512036 () Bool)

(assert (=> b!3720030 (=> (not res!1512036) (not e!2303074))))

(assert (=> b!3720030 (= res!1512036 (not lt!1297877))))

(declare-fun b!3720031 () Bool)

(assert (=> b!3720031 (= e!2303075 (nullable!3782 (regTwo!22230 r!26326)))))

(declare-fun b!3720032 () Bool)

(assert (=> b!3720032 (= e!2303079 (not lt!1297877))))

(declare-fun b!3720033 () Bool)

(assert (=> b!3720033 (= e!2303074 e!2303080)))

(declare-fun res!1512039 () Bool)

(assert (=> b!3720033 (=> res!1512039 e!2303080)))

(assert (=> b!3720033 (= res!1512039 call!270191)))

(declare-fun b!3720034 () Bool)

(declare-fun res!1512042 () Bool)

(assert (=> b!3720034 (=> res!1512042 e!2303077)))

(assert (=> b!3720034 (= res!1512042 (not ((_ is ElementMatch!10859) (regTwo!22230 r!26326))))))

(assert (=> b!3720034 (= e!2303079 e!2303077)))

(declare-fun b!3720035 () Bool)

(assert (=> b!3720035 (= e!2303078 (= (head!8025 tl!3933) (c!642993 (regTwo!22230 r!26326))))))

(assert (= (and d!1089093 c!643315) b!3720031))

(assert (= (and d!1089093 (not c!643315)) b!3720029))

(assert (= (and d!1089093 c!643317) b!3720025))

(assert (= (and d!1089093 (not c!643317)) b!3720024))

(assert (= (and b!3720024 c!643316) b!3720032))

(assert (= (and b!3720024 (not c!643316)) b!3720034))

(assert (= (and b!3720034 (not res!1512042)) b!3720026))

(assert (= (and b!3720026 res!1512038) b!3720023))

(assert (= (and b!3720023 res!1512040) b!3720027))

(assert (= (and b!3720027 res!1512037) b!3720035))

(assert (= (and b!3720026 (not res!1512041)) b!3720030))

(assert (= (and b!3720030 res!1512036) b!3720033))

(assert (= (and b!3720033 (not res!1512039)) b!3720028))

(assert (= (and b!3720028 (not res!1512043)) b!3720022))

(assert (= (or b!3720025 b!3720023 b!3720033) bm!270186))

(assert (=> d!1089093 m!4223891))

(assert (=> d!1089093 m!4224187))

(assert (=> b!3720035 m!4223895))

(assert (=> b!3720022 m!4223895))

(assert (=> b!3720029 m!4223895))

(assert (=> b!3720029 m!4223895))

(declare-fun m!4224715 () Bool)

(assert (=> b!3720029 m!4224715))

(assert (=> b!3720029 m!4223899))

(assert (=> b!3720029 m!4224715))

(assert (=> b!3720029 m!4223899))

(declare-fun m!4224717 () Bool)

(assert (=> b!3720029 m!4224717))

(assert (=> b!3720028 m!4223899))

(assert (=> b!3720028 m!4223899))

(assert (=> b!3720028 m!4223903))

(assert (=> b!3720027 m!4223899))

(assert (=> b!3720027 m!4223899))

(assert (=> b!3720027 m!4223903))

(assert (=> bm!270186 m!4223891))

(assert (=> b!3720031 m!4224199))

(assert (=> b!3719289 d!1089093))

(declare-fun d!1089095 () Bool)

(assert (=> d!1089095 (= (nullable!3782 (reg!11188 (regOne!22230 r!26326))) (nullableFct!1070 (reg!11188 (regOne!22230 r!26326))))))

(declare-fun bs!574932 () Bool)

(assert (= bs!574932 d!1089095))

(declare-fun m!4224719 () Bool)

(assert (=> bs!574932 m!4224719))

(assert (=> b!3718905 d!1089095))

(declare-fun b!3720036 () Bool)

(declare-fun e!2303087 () Bool)

(assert (=> b!3720036 (= e!2303087 (not (= (head!8025 (_1!22746 (get!13204 lt!1297803))) (c!642993 lt!1297728))))))

(declare-fun b!3720037 () Bool)

(declare-fun res!1512048 () Bool)

(declare-fun e!2303085 () Bool)

(assert (=> b!3720037 (=> (not res!1512048) (not e!2303085))))

(declare-fun call!270192 () Bool)

(assert (=> b!3720037 (= res!1512048 (not call!270192))))

(declare-fun b!3720038 () Bool)

(declare-fun e!2303083 () Bool)

(declare-fun e!2303086 () Bool)

(assert (=> b!3720038 (= e!2303083 e!2303086)))

(declare-fun c!643319 () Bool)

(assert (=> b!3720038 (= c!643319 ((_ is EmptyLang!10859) lt!1297728))))

(declare-fun b!3720039 () Bool)

(declare-fun lt!1297878 () Bool)

(assert (=> b!3720039 (= e!2303083 (= lt!1297878 call!270192))))

(declare-fun d!1089097 () Bool)

(assert (=> d!1089097 e!2303083))

(declare-fun c!643320 () Bool)

(assert (=> d!1089097 (= c!643320 ((_ is EmptyExpr!10859) lt!1297728))))

(declare-fun e!2303082 () Bool)

(assert (=> d!1089097 (= lt!1297878 e!2303082)))

(declare-fun c!643318 () Bool)

(assert (=> d!1089097 (= c!643318 (isEmpty!23512 (_1!22746 (get!13204 lt!1297803))))))

(assert (=> d!1089097 (validRegex!4966 lt!1297728)))

(assert (=> d!1089097 (= (matchR!5304 lt!1297728 (_1!22746 (get!13204 lt!1297803))) lt!1297878)))

(declare-fun b!3720040 () Bool)

(declare-fun res!1512049 () Bool)

(declare-fun e!2303084 () Bool)

(assert (=> b!3720040 (=> res!1512049 e!2303084)))

(assert (=> b!3720040 (= res!1512049 e!2303085)))

(declare-fun res!1512046 () Bool)

(assert (=> b!3720040 (=> (not res!1512046) (not e!2303085))))

(assert (=> b!3720040 (= res!1512046 lt!1297878)))

(declare-fun b!3720041 () Bool)

(declare-fun res!1512045 () Bool)

(assert (=> b!3720041 (=> (not res!1512045) (not e!2303085))))

(assert (=> b!3720041 (= res!1512045 (isEmpty!23512 (tail!5752 (_1!22746 (get!13204 lt!1297803)))))))

(declare-fun b!3720042 () Bool)

(declare-fun res!1512051 () Bool)

(assert (=> b!3720042 (=> res!1512051 e!2303087)))

(assert (=> b!3720042 (= res!1512051 (not (isEmpty!23512 (tail!5752 (_1!22746 (get!13204 lt!1297803))))))))

(declare-fun b!3720043 () Bool)

(assert (=> b!3720043 (= e!2303082 (matchR!5304 (derivativeStep!3324 lt!1297728 (head!8025 (_1!22746 (get!13204 lt!1297803)))) (tail!5752 (_1!22746 (get!13204 lt!1297803)))))))

(declare-fun bm!270187 () Bool)

(assert (=> bm!270187 (= call!270192 (isEmpty!23512 (_1!22746 (get!13204 lt!1297803))))))

(declare-fun b!3720044 () Bool)

(declare-fun e!2303081 () Bool)

(assert (=> b!3720044 (= e!2303084 e!2303081)))

(declare-fun res!1512044 () Bool)

(assert (=> b!3720044 (=> (not res!1512044) (not e!2303081))))

(assert (=> b!3720044 (= res!1512044 (not lt!1297878))))

(declare-fun b!3720045 () Bool)

(assert (=> b!3720045 (= e!2303082 (nullable!3782 lt!1297728))))

(declare-fun b!3720046 () Bool)

(assert (=> b!3720046 (= e!2303086 (not lt!1297878))))

(declare-fun b!3720047 () Bool)

(assert (=> b!3720047 (= e!2303081 e!2303087)))

(declare-fun res!1512047 () Bool)

(assert (=> b!3720047 (=> res!1512047 e!2303087)))

(assert (=> b!3720047 (= res!1512047 call!270192)))

(declare-fun b!3720048 () Bool)

(declare-fun res!1512050 () Bool)

(assert (=> b!3720048 (=> res!1512050 e!2303084)))

(assert (=> b!3720048 (= res!1512050 (not ((_ is ElementMatch!10859) lt!1297728)))))

(assert (=> b!3720048 (= e!2303086 e!2303084)))

(declare-fun b!3720049 () Bool)

(assert (=> b!3720049 (= e!2303085 (= (head!8025 (_1!22746 (get!13204 lt!1297803))) (c!642993 lt!1297728)))))

(assert (= (and d!1089097 c!643318) b!3720045))

(assert (= (and d!1089097 (not c!643318)) b!3720043))

(assert (= (and d!1089097 c!643320) b!3720039))

(assert (= (and d!1089097 (not c!643320)) b!3720038))

(assert (= (and b!3720038 c!643319) b!3720046))

(assert (= (and b!3720038 (not c!643319)) b!3720048))

(assert (= (and b!3720048 (not res!1512050)) b!3720040))

(assert (= (and b!3720040 res!1512046) b!3720037))

(assert (= (and b!3720037 res!1512048) b!3720041))

(assert (= (and b!3720041 res!1512045) b!3720049))

(assert (= (and b!3720040 (not res!1512049)) b!3720044))

(assert (= (and b!3720044 res!1512044) b!3720047))

(assert (= (and b!3720047 (not res!1512047)) b!3720042))

(assert (= (and b!3720042 (not res!1512051)) b!3720036))

(assert (= (or b!3720039 b!3720037 b!3720047) bm!270187))

(declare-fun m!4224725 () Bool)

(assert (=> d!1089097 m!4224725))

(assert (=> d!1089097 m!4223825))

(declare-fun m!4224727 () Bool)

(assert (=> b!3720049 m!4224727))

(assert (=> b!3720036 m!4224727))

(assert (=> b!3720043 m!4224727))

(assert (=> b!3720043 m!4224727))

(declare-fun m!4224729 () Bool)

(assert (=> b!3720043 m!4224729))

(declare-fun m!4224731 () Bool)

(assert (=> b!3720043 m!4224731))

(assert (=> b!3720043 m!4224729))

(assert (=> b!3720043 m!4224731))

(declare-fun m!4224733 () Bool)

(assert (=> b!3720043 m!4224733))

(assert (=> b!3720042 m!4224731))

(assert (=> b!3720042 m!4224731))

(declare-fun m!4224735 () Bool)

(assert (=> b!3720042 m!4224735))

(assert (=> b!3720041 m!4224731))

(assert (=> b!3720041 m!4224731))

(assert (=> b!3720041 m!4224735))

(assert (=> bm!270187 m!4224725))

(assert (=> b!3720045 m!4224263))

(assert (=> b!3719293 d!1089097))

(assert (=> b!3719293 d!1088917))

(assert (=> bm!270077 d!1089039))

(declare-fun b!3720059 () Bool)

(declare-fun e!2303100 () Bool)

(declare-fun e!2303096 () Bool)

(assert (=> b!3720059 (= e!2303100 e!2303096)))

(declare-fun res!1512059 () Bool)

(assert (=> b!3720059 (=> res!1512059 e!2303096)))

(assert (=> b!3720059 (= res!1512059 ((_ is Star!10859) (regOne!22230 r!26326)))))

(declare-fun b!3720060 () Bool)

(declare-fun e!2303097 () Bool)

(declare-fun call!270197 () Bool)

(assert (=> b!3720060 (= e!2303097 call!270197)))

(declare-fun b!3720061 () Bool)

(declare-fun e!2303099 () Bool)

(assert (=> b!3720061 (= e!2303099 e!2303097)))

(declare-fun res!1512060 () Bool)

(declare-fun call!270196 () Bool)

(assert (=> b!3720061 (= res!1512060 call!270196)))

(assert (=> b!3720061 (=> (not res!1512060) (not e!2303097))))

(declare-fun b!3720062 () Bool)

(assert (=> b!3720062 (= e!2303096 e!2303099)))

(declare-fun c!643323 () Bool)

(assert (=> b!3720062 (= c!643323 ((_ is Union!10859) (regOne!22230 r!26326)))))

(declare-fun b!3720063 () Bool)

(declare-fun e!2303095 () Bool)

(assert (=> b!3720063 (= e!2303099 e!2303095)))

(declare-fun res!1512057 () Bool)

(assert (=> b!3720063 (= res!1512057 call!270197)))

(assert (=> b!3720063 (=> res!1512057 e!2303095)))

(declare-fun d!1089101 () Bool)

(declare-fun res!1512058 () Bool)

(declare-fun e!2303098 () Bool)

(assert (=> d!1089101 (=> res!1512058 e!2303098)))

(assert (=> d!1089101 (= res!1512058 ((_ is EmptyExpr!10859) (regOne!22230 r!26326)))))

(assert (=> d!1089101 (= (nullableFct!1070 (regOne!22230 r!26326)) e!2303098)))

(declare-fun b!3720064 () Bool)

(assert (=> b!3720064 (= e!2303098 e!2303100)))

(declare-fun res!1512061 () Bool)

(assert (=> b!3720064 (=> (not res!1512061) (not e!2303100))))

(assert (=> b!3720064 (= res!1512061 (and (not ((_ is EmptyLang!10859) (regOne!22230 r!26326))) (not ((_ is ElementMatch!10859) (regOne!22230 r!26326)))))))

(declare-fun bm!270191 () Bool)

(assert (=> bm!270191 (= call!270197 (nullable!3782 (ite c!643323 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))

(declare-fun b!3720065 () Bool)

(assert (=> b!3720065 (= e!2303095 call!270196)))

(declare-fun bm!270192 () Bool)

(assert (=> bm!270192 (= call!270196 (nullable!3782 (ite c!643323 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))

(assert (= (and d!1089101 (not res!1512058)) b!3720064))

(assert (= (and b!3720064 res!1512061) b!3720059))

(assert (= (and b!3720059 (not res!1512059)) b!3720062))

(assert (= (and b!3720062 c!643323) b!3720063))

(assert (= (and b!3720062 (not c!643323)) b!3720061))

(assert (= (and b!3720063 (not res!1512057)) b!3720065))

(assert (= (and b!3720061 res!1512060) b!3720060))

(assert (= (or b!3720065 b!3720061) bm!270192))

(assert (= (or b!3720063 b!3720060) bm!270191))

(declare-fun m!4224739 () Bool)

(assert (=> bm!270191 m!4224739))

(declare-fun m!4224741 () Bool)

(assert (=> bm!270192 m!4224741))

(assert (=> d!1088839 d!1089101))

(declare-fun b!3720066 () Bool)

(declare-fun res!1512066 () Bool)

(declare-fun e!2303106 () Bool)

(assert (=> b!3720066 (=> res!1512066 e!2303106)))

(assert (=> b!3720066 (= res!1512066 (not ((_ is Concat!17130) lt!1297813)))))

(declare-fun e!2303107 () Bool)

(assert (=> b!3720066 (= e!2303107 e!2303106)))

(declare-fun b!3720068 () Bool)

(declare-fun res!1512062 () Bool)

(declare-fun e!2303105 () Bool)

(assert (=> b!3720068 (=> (not res!1512062) (not e!2303105))))

(declare-fun call!270200 () Bool)

(assert (=> b!3720068 (= res!1512062 call!270200)))

(assert (=> b!3720068 (= e!2303107 e!2303105)))

(declare-fun bm!270193 () Bool)

(declare-fun call!270198 () Bool)

(declare-fun c!643324 () Bool)

(declare-fun c!643325 () Bool)

(assert (=> bm!270193 (= call!270198 (validRegex!4966 (ite c!643324 (reg!11188 lt!1297813) (ite c!643325 (regTwo!22231 lt!1297813) (regOne!22230 lt!1297813)))))))

(declare-fun bm!270194 () Bool)

(assert (=> bm!270194 (= call!270200 (validRegex!4966 (ite c!643325 (regOne!22231 lt!1297813) (regTwo!22230 lt!1297813))))))

(declare-fun b!3720069 () Bool)

(declare-fun e!2303104 () Bool)

(assert (=> b!3720069 (= e!2303104 call!270200)))

(declare-fun b!3720070 () Bool)

(declare-fun e!2303101 () Bool)

(assert (=> b!3720070 (= e!2303101 e!2303107)))

(assert (=> b!3720070 (= c!643325 ((_ is Union!10859) lt!1297813))))

(declare-fun b!3720071 () Bool)

(declare-fun e!2303103 () Bool)

(assert (=> b!3720071 (= e!2303103 e!2303101)))

(assert (=> b!3720071 (= c!643324 ((_ is Star!10859) lt!1297813))))

(declare-fun b!3720072 () Bool)

(declare-fun e!2303102 () Bool)

(assert (=> b!3720072 (= e!2303101 e!2303102)))

(declare-fun res!1512065 () Bool)

(assert (=> b!3720072 (= res!1512065 (not (nullable!3782 (reg!11188 lt!1297813))))))

(assert (=> b!3720072 (=> (not res!1512065) (not e!2303102))))

(declare-fun bm!270195 () Bool)

(declare-fun call!270199 () Bool)

(assert (=> bm!270195 (= call!270199 call!270198)))

(declare-fun b!3720067 () Bool)

(assert (=> b!3720067 (= e!2303106 e!2303104)))

(declare-fun res!1512063 () Bool)

(assert (=> b!3720067 (=> (not res!1512063) (not e!2303104))))

(assert (=> b!3720067 (= res!1512063 call!270199)))

(declare-fun d!1089103 () Bool)

(declare-fun res!1512064 () Bool)

(assert (=> d!1089103 (=> res!1512064 e!2303103)))

(assert (=> d!1089103 (= res!1512064 ((_ is ElementMatch!10859) lt!1297813))))

(assert (=> d!1089103 (= (validRegex!4966 lt!1297813) e!2303103)))

(declare-fun b!3720073 () Bool)

(assert (=> b!3720073 (= e!2303105 call!270199)))

(declare-fun b!3720074 () Bool)

(assert (=> b!3720074 (= e!2303102 call!270198)))

(assert (= (and d!1089103 (not res!1512064)) b!3720071))

(assert (= (and b!3720071 c!643324) b!3720072))

(assert (= (and b!3720071 (not c!643324)) b!3720070))

(assert (= (and b!3720072 res!1512065) b!3720074))

(assert (= (and b!3720070 c!643325) b!3720068))

(assert (= (and b!3720070 (not c!643325)) b!3720066))

(assert (= (and b!3720068 res!1512062) b!3720073))

(assert (= (and b!3720066 (not res!1512066)) b!3720067))

(assert (= (and b!3720067 res!1512063) b!3720069))

(assert (= (or b!3720073 b!3720067) bm!270195))

(assert (= (or b!3720068 b!3720069) bm!270194))

(assert (= (or b!3720074 bm!270195) bm!270193))

(declare-fun m!4224747 () Bool)

(assert (=> bm!270193 m!4224747))

(declare-fun m!4224749 () Bool)

(assert (=> bm!270194 m!4224749))

(declare-fun m!4224751 () Bool)

(assert (=> b!3720072 m!4224751))

(assert (=> d!1088843 d!1089103))

(declare-fun b!3720089 () Bool)

(declare-fun res!1512079 () Bool)

(declare-fun e!2303120 () Bool)

(assert (=> b!3720089 (=> res!1512079 e!2303120)))

(assert (=> b!3720089 (= res!1512079 (not ((_ is Concat!17130) (derivativeStep!3324 r!26326 c!13576))))))

(declare-fun e!2303121 () Bool)

(assert (=> b!3720089 (= e!2303121 e!2303120)))

(declare-fun b!3720091 () Bool)

(declare-fun res!1512075 () Bool)

(declare-fun e!2303119 () Bool)

(assert (=> b!3720091 (=> (not res!1512075) (not e!2303119))))

(declare-fun call!270204 () Bool)

(assert (=> b!3720091 (= res!1512075 call!270204)))

(assert (=> b!3720091 (= e!2303121 e!2303119)))

(declare-fun c!643330 () Bool)

(declare-fun c!643329 () Bool)

(declare-fun bm!270197 () Bool)

(declare-fun call!270202 () Bool)

(assert (=> bm!270197 (= call!270202 (validRegex!4966 (ite c!643329 (reg!11188 (derivativeStep!3324 r!26326 c!13576)) (ite c!643330 (regTwo!22231 (derivativeStep!3324 r!26326 c!13576)) (regOne!22230 (derivativeStep!3324 r!26326 c!13576))))))))

(declare-fun bm!270198 () Bool)

(assert (=> bm!270198 (= call!270204 (validRegex!4966 (ite c!643330 (regOne!22231 (derivativeStep!3324 r!26326 c!13576)) (regTwo!22230 (derivativeStep!3324 r!26326 c!13576)))))))

(declare-fun b!3720092 () Bool)

(declare-fun e!2303118 () Bool)

(assert (=> b!3720092 (= e!2303118 call!270204)))

(declare-fun b!3720093 () Bool)

(declare-fun e!2303115 () Bool)

(assert (=> b!3720093 (= e!2303115 e!2303121)))

(assert (=> b!3720093 (= c!643330 ((_ is Union!10859) (derivativeStep!3324 r!26326 c!13576)))))

(declare-fun b!3720094 () Bool)

(declare-fun e!2303117 () Bool)

(assert (=> b!3720094 (= e!2303117 e!2303115)))

(assert (=> b!3720094 (= c!643329 ((_ is Star!10859) (derivativeStep!3324 r!26326 c!13576)))))

(declare-fun b!3720095 () Bool)

(declare-fun e!2303116 () Bool)

(assert (=> b!3720095 (= e!2303115 e!2303116)))

(declare-fun res!1512078 () Bool)

(assert (=> b!3720095 (= res!1512078 (not (nullable!3782 (reg!11188 (derivativeStep!3324 r!26326 c!13576)))))))

(assert (=> b!3720095 (=> (not res!1512078) (not e!2303116))))

(declare-fun bm!270199 () Bool)

(declare-fun call!270203 () Bool)

(assert (=> bm!270199 (= call!270203 call!270202)))

(declare-fun b!3720090 () Bool)

(assert (=> b!3720090 (= e!2303120 e!2303118)))

(declare-fun res!1512076 () Bool)

(assert (=> b!3720090 (=> (not res!1512076) (not e!2303118))))

(assert (=> b!3720090 (= res!1512076 call!270203)))

(declare-fun d!1089111 () Bool)

(declare-fun res!1512077 () Bool)

(assert (=> d!1089111 (=> res!1512077 e!2303117)))

(assert (=> d!1089111 (= res!1512077 ((_ is ElementMatch!10859) (derivativeStep!3324 r!26326 c!13576)))))

(assert (=> d!1089111 (= (validRegex!4966 (derivativeStep!3324 r!26326 c!13576)) e!2303117)))

(declare-fun b!3720096 () Bool)

(assert (=> b!3720096 (= e!2303119 call!270203)))

(declare-fun b!3720097 () Bool)

(assert (=> b!3720097 (= e!2303116 call!270202)))

(assert (= (and d!1089111 (not res!1512077)) b!3720094))

(assert (= (and b!3720094 c!643329) b!3720095))

(assert (= (and b!3720094 (not c!643329)) b!3720093))

(assert (= (and b!3720095 res!1512078) b!3720097))

(assert (= (and b!3720093 c!643330) b!3720091))

(assert (= (and b!3720093 (not c!643330)) b!3720089))

(assert (= (and b!3720091 res!1512075) b!3720096))

(assert (= (and b!3720089 (not res!1512079)) b!3720090))

(assert (= (and b!3720090 res!1512076) b!3720092))

(assert (= (or b!3720096 b!3720090) bm!270199))

(assert (= (or b!3720091 b!3720092) bm!270198))

(assert (= (or b!3720097 bm!270199) bm!270197))

(declare-fun m!4224753 () Bool)

(assert (=> bm!270197 m!4224753))

(declare-fun m!4224755 () Bool)

(assert (=> bm!270198 m!4224755))

(declare-fun m!4224757 () Bool)

(assert (=> b!3720095 m!4224757))

(assert (=> d!1088843 d!1089111))

(assert (=> bm!270078 d!1088945))

(declare-fun d!1089113 () Bool)

(declare-fun lt!1297880 () Regex!10859)

(assert (=> d!1089113 (validRegex!4966 lt!1297880)))

(declare-fun e!2303122 () Regex!10859)

(assert (=> d!1089113 (= lt!1297880 e!2303122)))

(declare-fun c!643331 () Bool)

(assert (=> d!1089113 (= c!643331 ((_ is Cons!39616) (t!302423 tl!3933)))))

(assert (=> d!1089113 (validRegex!4966 (derivativeStep!3324 (derivativeStep!3324 r!26326 c!13576) (h!45036 tl!3933)))))

(assert (=> d!1089113 (= (derivative!373 (derivativeStep!3324 (derivativeStep!3324 r!26326 c!13576) (h!45036 tl!3933)) (t!302423 tl!3933)) lt!1297880)))

(declare-fun b!3720098 () Bool)

(assert (=> b!3720098 (= e!2303122 (derivative!373 (derivativeStep!3324 (derivativeStep!3324 (derivativeStep!3324 r!26326 c!13576) (h!45036 tl!3933)) (h!45036 (t!302423 tl!3933))) (t!302423 (t!302423 tl!3933))))))

(declare-fun b!3720099 () Bool)

(assert (=> b!3720099 (= e!2303122 (derivativeStep!3324 (derivativeStep!3324 r!26326 c!13576) (h!45036 tl!3933)))))

(assert (= (and d!1089113 c!643331) b!3720098))

(assert (= (and d!1089113 (not c!643331)) b!3720099))

(declare-fun m!4224759 () Bool)

(assert (=> d!1089113 m!4224759))

(assert (=> d!1089113 m!4224121))

(declare-fun m!4224761 () Bool)

(assert (=> d!1089113 m!4224761))

(assert (=> b!3720098 m!4224121))

(declare-fun m!4224763 () Bool)

(assert (=> b!3720098 m!4224763))

(assert (=> b!3720098 m!4224763))

(declare-fun m!4224765 () Bool)

(assert (=> b!3720098 m!4224765))

(assert (=> b!3719323 d!1089113))

(declare-fun b!3720100 () Bool)

(declare-fun e!2303124 () Regex!10859)

(declare-fun e!2303127 () Regex!10859)

(assert (=> b!3720100 (= e!2303124 e!2303127)))

(declare-fun c!643336 () Bool)

(assert (=> b!3720100 (= c!643336 ((_ is Star!10859) (derivativeStep!3324 r!26326 c!13576)))))

(declare-fun b!3720101 () Bool)

(declare-fun call!270207 () Regex!10859)

(assert (=> b!3720101 (= e!2303127 (Concat!17130 call!270207 (derivativeStep!3324 r!26326 c!13576)))))

(declare-fun bm!270200 () Bool)

(declare-fun call!270208 () Regex!10859)

(assert (=> bm!270200 (= call!270207 call!270208)))

(declare-fun b!3720102 () Bool)

(declare-fun e!2303125 () Regex!10859)

(declare-fun e!2303123 () Regex!10859)

(assert (=> b!3720102 (= e!2303125 e!2303123)))

(declare-fun c!643332 () Bool)

(assert (=> b!3720102 (= c!643332 ((_ is ElementMatch!10859) (derivativeStep!3324 r!26326 c!13576)))))

(declare-fun b!3720103 () Bool)

(assert (=> b!3720103 (= e!2303125 EmptyLang!10859)))

(declare-fun bm!270201 () Bool)

(declare-fun call!270206 () Regex!10859)

(declare-fun call!270205 () Regex!10859)

(assert (=> bm!270201 (= call!270206 call!270205)))

(declare-fun e!2303126 () Regex!10859)

(declare-fun b!3720104 () Bool)

(assert (=> b!3720104 (= e!2303126 (Union!10859 (Concat!17130 call!270206 (regTwo!22230 (derivativeStep!3324 r!26326 c!13576))) call!270207))))

(declare-fun b!3720105 () Bool)

(declare-fun c!643334 () Bool)

(assert (=> b!3720105 (= c!643334 ((_ is Union!10859) (derivativeStep!3324 r!26326 c!13576)))))

(assert (=> b!3720105 (= e!2303123 e!2303124)))

(declare-fun bm!270202 () Bool)

(assert (=> bm!270202 (= call!270205 (derivativeStep!3324 (ite c!643334 (regOne!22231 (derivativeStep!3324 r!26326 c!13576)) (regOne!22230 (derivativeStep!3324 r!26326 c!13576))) (h!45036 tl!3933)))))

(declare-fun b!3720106 () Bool)

(assert (=> b!3720106 (= e!2303123 (ite (= (h!45036 tl!3933) (c!642993 (derivativeStep!3324 r!26326 c!13576))) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3720107 () Bool)

(assert (=> b!3720107 (= e!2303126 (Union!10859 (Concat!17130 call!270206 (regTwo!22230 (derivativeStep!3324 r!26326 c!13576))) EmptyLang!10859))))

(declare-fun bm!270203 () Bool)

(assert (=> bm!270203 (= call!270208 (derivativeStep!3324 (ite c!643334 (regTwo!22231 (derivativeStep!3324 r!26326 c!13576)) (ite c!643336 (reg!11188 (derivativeStep!3324 r!26326 c!13576)) (regTwo!22230 (derivativeStep!3324 r!26326 c!13576)))) (h!45036 tl!3933)))))

(declare-fun b!3720109 () Bool)

(assert (=> b!3720109 (= e!2303124 (Union!10859 call!270205 call!270208))))

(declare-fun d!1089115 () Bool)

(declare-fun lt!1297881 () Regex!10859)

(assert (=> d!1089115 (validRegex!4966 lt!1297881)))

(assert (=> d!1089115 (= lt!1297881 e!2303125)))

(declare-fun c!643335 () Bool)

(assert (=> d!1089115 (= c!643335 (or ((_ is EmptyExpr!10859) (derivativeStep!3324 r!26326 c!13576)) ((_ is EmptyLang!10859) (derivativeStep!3324 r!26326 c!13576))))))

(assert (=> d!1089115 (validRegex!4966 (derivativeStep!3324 r!26326 c!13576))))

(assert (=> d!1089115 (= (derivativeStep!3324 (derivativeStep!3324 r!26326 c!13576) (h!45036 tl!3933)) lt!1297881)))

(declare-fun b!3720108 () Bool)

(declare-fun c!643333 () Bool)

(assert (=> b!3720108 (= c!643333 (nullable!3782 (regOne!22230 (derivativeStep!3324 r!26326 c!13576))))))

(assert (=> b!3720108 (= e!2303127 e!2303126)))

(assert (= (and d!1089115 c!643335) b!3720103))

(assert (= (and d!1089115 (not c!643335)) b!3720102))

(assert (= (and b!3720102 c!643332) b!3720106))

(assert (= (and b!3720102 (not c!643332)) b!3720105))

(assert (= (and b!3720105 c!643334) b!3720109))

(assert (= (and b!3720105 (not c!643334)) b!3720100))

(assert (= (and b!3720100 c!643336) b!3720101))

(assert (= (and b!3720100 (not c!643336)) b!3720108))

(assert (= (and b!3720108 c!643333) b!3720104))

(assert (= (and b!3720108 (not c!643333)) b!3720107))

(assert (= (or b!3720104 b!3720107) bm!270201))

(assert (= (or b!3720101 b!3720104) bm!270200))

(assert (= (or b!3720109 bm!270200) bm!270203))

(assert (= (or b!3720109 bm!270201) bm!270202))

(declare-fun m!4224779 () Bool)

(assert (=> bm!270202 m!4224779))

(declare-fun m!4224781 () Bool)

(assert (=> bm!270203 m!4224781))

(declare-fun m!4224783 () Bool)

(assert (=> d!1089115 m!4224783))

(assert (=> d!1089115 m!4223769))

(assert (=> d!1089115 m!4224119))

(declare-fun m!4224785 () Bool)

(assert (=> b!3720108 m!4224785))

(assert (=> b!3719323 d!1089115))

(assert (=> bm!270020 d!1088945))

(assert (=> b!3719472 d!1088881))

(assert (=> b!3719444 d!1089011))

(assert (=> b!3719444 d!1089015))

(declare-fun b!3720110 () Bool)

(declare-fun e!2303128 () List!39740)

(declare-fun e!2303129 () List!39740)

(assert (=> b!3720110 (= e!2303128 e!2303129)))

(declare-fun c!643337 () Bool)

(assert (=> b!3720110 (= c!643337 ((_ is ElementMatch!10859) (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))))))

(declare-fun bm!270204 () Bool)

(declare-fun call!270210 () List!39740)

(declare-fun call!270209 () List!39740)

(assert (=> bm!270204 (= call!270210 call!270209)))

(declare-fun b!3720111 () Bool)

(declare-fun e!2303131 () List!39740)

(declare-fun call!270212 () List!39740)

(assert (=> b!3720111 (= e!2303131 call!270212)))

(declare-fun b!3720112 () Bool)

(assert (=> b!3720112 (= e!2303131 call!270212)))

(declare-fun c!643340 () Bool)

(declare-fun c!643338 () Bool)

(declare-fun bm!270205 () Bool)

(assert (=> bm!270205 (= call!270209 (usedCharacters!1122 (ite c!643338 (reg!11188 (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))) (ite c!643340 (regTwo!22231 (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))) (regTwo!22230 (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326)))))))))

(declare-fun call!270211 () List!39740)

(declare-fun bm!270206 () Bool)

(assert (=> bm!270206 (= call!270211 (usedCharacters!1122 (ite c!643340 (regOne!22231 (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))) (regOne!22230 (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))))))))

(declare-fun b!3720113 () Bool)

(assert (=> b!3720113 (= e!2303129 (Cons!39616 (c!642993 (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))) Nil!39616))))

(declare-fun b!3720114 () Bool)

(declare-fun e!2303130 () List!39740)

(assert (=> b!3720114 (= e!2303130 e!2303131)))

(assert (=> b!3720114 (= c!643340 ((_ is Union!10859) (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))))))

(declare-fun b!3720115 () Bool)

(assert (=> b!3720115 (= e!2303128 Nil!39616)))

(declare-fun bm!270207 () Bool)

(assert (=> bm!270207 (= call!270212 (++!9805 call!270211 call!270210))))

(declare-fun d!1089117 () Bool)

(declare-fun c!643339 () Bool)

(assert (=> d!1089117 (= c!643339 (or ((_ is EmptyExpr!10859) (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))) ((_ is EmptyLang!10859) (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326)))))))

(assert (=> d!1089117 (= (usedCharacters!1122 (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))) e!2303128)))

(declare-fun b!3720116 () Bool)

(assert (=> b!3720116 (= c!643338 ((_ is Star!10859) (ite c!643042 (regOne!22231 r!26326) (regOne!22230 r!26326))))))

(assert (=> b!3720116 (= e!2303129 e!2303130)))

(declare-fun b!3720117 () Bool)

(assert (=> b!3720117 (= e!2303130 call!270209)))

(assert (= (and d!1089117 c!643339) b!3720115))

(assert (= (and d!1089117 (not c!643339)) b!3720110))

(assert (= (and b!3720110 c!643337) b!3720113))

(assert (= (and b!3720110 (not c!643337)) b!3720116))

(assert (= (and b!3720116 c!643338) b!3720117))

(assert (= (and b!3720116 (not c!643338)) b!3720114))

(assert (= (and b!3720114 c!643340) b!3720111))

(assert (= (and b!3720114 (not c!643340)) b!3720112))

(assert (= (or b!3720111 b!3720112) bm!270206))

(assert (= (or b!3720111 b!3720112) bm!270204))

(assert (= (or b!3720111 b!3720112) bm!270207))

(assert (= (or b!3720117 bm!270204) bm!270205))

(declare-fun m!4224789 () Bool)

(assert (=> bm!270205 m!4224789))

(declare-fun m!4224791 () Bool)

(assert (=> bm!270206 m!4224791))

(declare-fun m!4224793 () Bool)

(assert (=> bm!270207 m!4224793))

(assert (=> bm!270006 d!1089117))

(assert (=> d!1088857 d!1088945))

(assert (=> d!1088857 d!1089087))

(declare-fun d!1089121 () Bool)

(assert (=> d!1089121 (= (isEmpty!23513 lt!1297732) (not ((_ is Some!8573) lt!1297732)))))

(assert (=> d!1088835 d!1089121))

(assert (=> b!3719528 d!1088905))

(declare-fun d!1089123 () Bool)

(declare-fun lt!1297886 () Int)

(assert (=> d!1089123 (>= lt!1297886 0)))

(declare-fun e!2303141 () Int)

(assert (=> d!1089123 (= lt!1297886 e!2303141)))

(declare-fun c!643349 () Bool)

(assert (=> d!1089123 (= c!643349 ((_ is Nil!39616) lt!1297810))))

(assert (=> d!1089123 (= (size!30023 lt!1297810) lt!1297886)))

(declare-fun b!3720136 () Bool)

(assert (=> b!3720136 (= e!2303141 0)))

(declare-fun b!3720137 () Bool)

(assert (=> b!3720137 (= e!2303141 (+ 1 (size!30023 (t!302423 lt!1297810))))))

(assert (= (and d!1089123 c!643349) b!3720136))

(assert (= (and d!1089123 (not c!643349)) b!3720137))

(declare-fun m!4224819 () Bool)

(assert (=> b!3720137 m!4224819))

(assert (=> b!3719319 d!1089123))

(declare-fun d!1089133 () Bool)

(declare-fun lt!1297887 () Int)

(assert (=> d!1089133 (>= lt!1297887 0)))

(declare-fun e!2303146 () Int)

(assert (=> d!1089133 (= lt!1297887 e!2303146)))

(declare-fun c!643354 () Bool)

(assert (=> d!1089133 (= c!643354 ((_ is Nil!39616) (_1!22746 lt!1297729)))))

(assert (=> d!1089133 (= (size!30023 (_1!22746 lt!1297729)) lt!1297887)))

(declare-fun b!3720146 () Bool)

(assert (=> b!3720146 (= e!2303146 0)))

(declare-fun b!3720147 () Bool)

(assert (=> b!3720147 (= e!2303146 (+ 1 (size!30023 (t!302423 (_1!22746 lt!1297729)))))))

(assert (= (and d!1089133 c!643354) b!3720146))

(assert (= (and d!1089133 (not c!643354)) b!3720147))

(assert (=> b!3720147 m!4224641))

(assert (=> b!3719319 d!1089133))

(declare-fun d!1089135 () Bool)

(declare-fun lt!1297888 () Int)

(assert (=> d!1089135 (>= lt!1297888 0)))

(declare-fun e!2303147 () Int)

(assert (=> d!1089135 (= lt!1297888 e!2303147)))

(declare-fun c!643355 () Bool)

(assert (=> d!1089135 (= c!643355 ((_ is Nil!39616) (_2!22746 lt!1297729)))))

(assert (=> d!1089135 (= (size!30023 (_2!22746 lt!1297729)) lt!1297888)))

(declare-fun b!3720148 () Bool)

(assert (=> b!3720148 (= e!2303147 0)))

(declare-fun b!3720149 () Bool)

(assert (=> b!3720149 (= e!2303147 (+ 1 (size!30023 (t!302423 (_2!22746 lt!1297729)))))))

(assert (= (and d!1089135 c!643355) b!3720148))

(assert (= (and d!1089135 (not c!643355)) b!3720149))

(declare-fun m!4224821 () Bool)

(assert (=> b!3720149 m!4224821))

(assert (=> b!3719319 d!1089135))

(assert (=> d!1088873 d!1088971))

(assert (=> d!1088873 d!1088949))

(assert (=> b!3719458 d!1089049))

(assert (=> b!3719458 d!1089051))

(declare-fun b!3720150 () Bool)

(declare-fun res!1512086 () Bool)

(declare-fun e!2303153 () Bool)

(assert (=> b!3720150 (=> res!1512086 e!2303153)))

(assert (=> b!3720150 (= res!1512086 (not ((_ is Concat!17130) (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))))

(declare-fun e!2303154 () Bool)

(assert (=> b!3720150 (= e!2303154 e!2303153)))

(declare-fun b!3720152 () Bool)

(declare-fun res!1512082 () Bool)

(declare-fun e!2303152 () Bool)

(assert (=> b!3720152 (=> (not res!1512082) (not e!2303152))))

(declare-fun call!270223 () Bool)

(assert (=> b!3720152 (= res!1512082 call!270223)))

(assert (=> b!3720152 (= e!2303154 e!2303152)))

(declare-fun bm!270216 () Bool)

(declare-fun c!643357 () Bool)

(declare-fun call!270221 () Bool)

(declare-fun c!643356 () Bool)

(assert (=> bm!270216 (= call!270221 (validRegex!4966 (ite c!643356 (reg!11188 (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))) (ite c!643357 (regTwo!22231 (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))) (regOne!22230 (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326)))))))))))

(declare-fun bm!270217 () Bool)

(assert (=> bm!270217 (= call!270223 (validRegex!4966 (ite c!643357 (regOne!22231 (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))) (regTwo!22230 (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))))

(declare-fun b!3720153 () Bool)

(declare-fun e!2303151 () Bool)

(assert (=> b!3720153 (= e!2303151 call!270223)))

(declare-fun b!3720154 () Bool)

(declare-fun e!2303148 () Bool)

(assert (=> b!3720154 (= e!2303148 e!2303154)))

(assert (=> b!3720154 (= c!643357 ((_ is Union!10859) (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))

(declare-fun b!3720155 () Bool)

(declare-fun e!2303150 () Bool)

(assert (=> b!3720155 (= e!2303150 e!2303148)))

(assert (=> b!3720155 (= c!643356 ((_ is Star!10859) (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))

(declare-fun b!3720156 () Bool)

(declare-fun e!2303149 () Bool)

(assert (=> b!3720156 (= e!2303148 e!2303149)))

(declare-fun res!1512085 () Bool)

(assert (=> b!3720156 (= res!1512085 (not (nullable!3782 (reg!11188 (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))))

(assert (=> b!3720156 (=> (not res!1512085) (not e!2303149))))

(declare-fun bm!270218 () Bool)

(declare-fun call!270222 () Bool)

(assert (=> bm!270218 (= call!270222 call!270221)))

(declare-fun b!3720151 () Bool)

(assert (=> b!3720151 (= e!2303153 e!2303151)))

(declare-fun res!1512083 () Bool)

(assert (=> b!3720151 (=> (not res!1512083) (not e!2303151))))

(assert (=> b!3720151 (= res!1512083 call!270222)))

(declare-fun d!1089137 () Bool)

(declare-fun res!1512084 () Bool)

(assert (=> d!1089137 (=> res!1512084 e!2303150)))

(assert (=> d!1089137 (= res!1512084 ((_ is ElementMatch!10859) (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))))))

(assert (=> d!1089137 (= (validRegex!4966 (ite c!642998 (reg!11188 (regOne!22230 r!26326)) (ite c!642999 (regTwo!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))))) e!2303150)))

(declare-fun b!3720157 () Bool)

(assert (=> b!3720157 (= e!2303152 call!270222)))

(declare-fun b!3720158 () Bool)

(assert (=> b!3720158 (= e!2303149 call!270221)))

(assert (= (and d!1089137 (not res!1512084)) b!3720155))

(assert (= (and b!3720155 c!643356) b!3720156))

(assert (= (and b!3720155 (not c!643356)) b!3720154))

(assert (= (and b!3720156 res!1512085) b!3720158))

(assert (= (and b!3720154 c!643357) b!3720152))

(assert (= (and b!3720154 (not c!643357)) b!3720150))

(assert (= (and b!3720152 res!1512082) b!3720157))

(assert (= (and b!3720150 (not res!1512086)) b!3720151))

(assert (= (and b!3720151 res!1512083) b!3720153))

(assert (= (or b!3720157 b!3720151) bm!270218))

(assert (= (or b!3720152 b!3720153) bm!270217))

(assert (= (or b!3720158 bm!270218) bm!270216))

(declare-fun m!4224829 () Bool)

(assert (=> bm!270216 m!4224829))

(declare-fun m!4224831 () Bool)

(assert (=> bm!270217 m!4224831))

(declare-fun m!4224833 () Bool)

(assert (=> b!3720156 m!4224833))

(assert (=> bm!269978 d!1089137))

(assert (=> bm!270071 d!1088931))

(declare-fun b!3720168 () Bool)

(declare-fun res!1512096 () Bool)

(declare-fun e!2303167 () Bool)

(assert (=> b!3720168 (=> res!1512096 e!2303167)))

(assert (=> b!3720168 (= res!1512096 (not ((_ is Concat!17130) lt!1297838)))))

(declare-fun e!2303168 () Bool)

(assert (=> b!3720168 (= e!2303168 e!2303167)))

(declare-fun b!3720170 () Bool)

(declare-fun res!1512092 () Bool)

(declare-fun e!2303166 () Bool)

(assert (=> b!3720170 (=> (not res!1512092) (not e!2303166))))

(declare-fun call!270229 () Bool)

(assert (=> b!3720170 (= res!1512092 call!270229)))

(assert (=> b!3720170 (= e!2303168 e!2303166)))

(declare-fun call!270227 () Bool)

(declare-fun c!643360 () Bool)

(declare-fun bm!270222 () Bool)

(declare-fun c!643361 () Bool)

(assert (=> bm!270222 (= call!270227 (validRegex!4966 (ite c!643360 (reg!11188 lt!1297838) (ite c!643361 (regTwo!22231 lt!1297838) (regOne!22230 lt!1297838)))))))

(declare-fun bm!270223 () Bool)

(assert (=> bm!270223 (= call!270229 (validRegex!4966 (ite c!643361 (regOne!22231 lt!1297838) (regTwo!22230 lt!1297838))))))

(declare-fun b!3720171 () Bool)

(declare-fun e!2303165 () Bool)

(assert (=> b!3720171 (= e!2303165 call!270229)))

(declare-fun b!3720172 () Bool)

(declare-fun e!2303162 () Bool)

(assert (=> b!3720172 (= e!2303162 e!2303168)))

(assert (=> b!3720172 (= c!643361 ((_ is Union!10859) lt!1297838))))

(declare-fun b!3720173 () Bool)

(declare-fun e!2303164 () Bool)

(assert (=> b!3720173 (= e!2303164 e!2303162)))

(assert (=> b!3720173 (= c!643360 ((_ is Star!10859) lt!1297838))))

(declare-fun b!3720174 () Bool)

(declare-fun e!2303163 () Bool)

(assert (=> b!3720174 (= e!2303162 e!2303163)))

(declare-fun res!1512095 () Bool)

(assert (=> b!3720174 (= res!1512095 (not (nullable!3782 (reg!11188 lt!1297838))))))

(assert (=> b!3720174 (=> (not res!1512095) (not e!2303163))))

(declare-fun bm!270224 () Bool)

(declare-fun call!270228 () Bool)

(assert (=> bm!270224 (= call!270228 call!270227)))

(declare-fun b!3720169 () Bool)

(assert (=> b!3720169 (= e!2303167 e!2303165)))

(declare-fun res!1512093 () Bool)

(assert (=> b!3720169 (=> (not res!1512093) (not e!2303165))))

(assert (=> b!3720169 (= res!1512093 call!270228)))

(declare-fun d!1089141 () Bool)

(declare-fun res!1512094 () Bool)

(assert (=> d!1089141 (=> res!1512094 e!2303164)))

(assert (=> d!1089141 (= res!1512094 ((_ is ElementMatch!10859) lt!1297838))))

(assert (=> d!1089141 (= (validRegex!4966 lt!1297838) e!2303164)))

(declare-fun b!3720175 () Bool)

(assert (=> b!3720175 (= e!2303166 call!270228)))

(declare-fun b!3720176 () Bool)

(assert (=> b!3720176 (= e!2303163 call!270227)))

(assert (= (and d!1089141 (not res!1512094)) b!3720173))

(assert (= (and b!3720173 c!643360) b!3720174))

(assert (= (and b!3720173 (not c!643360)) b!3720172))

(assert (= (and b!3720174 res!1512095) b!3720176))

(assert (= (and b!3720172 c!643361) b!3720170))

(assert (= (and b!3720172 (not c!643361)) b!3720168))

(assert (= (and b!3720170 res!1512092) b!3720175))

(assert (= (and b!3720168 (not res!1512096)) b!3720169))

(assert (= (and b!3720169 res!1512093) b!3720171))

(assert (= (or b!3720175 b!3720169) bm!270224))

(assert (= (or b!3720170 b!3720171) bm!270223))

(assert (= (or b!3720176 bm!270224) bm!270222))

(declare-fun m!4224835 () Bool)

(assert (=> bm!270222 m!4224835))

(declare-fun m!4224837 () Bool)

(assert (=> bm!270223 m!4224837))

(declare-fun m!4224839 () Bool)

(assert (=> b!3720174 m!4224839))

(assert (=> d!1088869 d!1089141))

(assert (=> d!1088869 d!1089089))

(assert (=> b!3719478 d!1088895))

(assert (=> b!3719478 d!1088883))

(assert (=> b!3718968 d!1088885))

(assert (=> b!3718968 d!1088887))

(declare-fun b!3720177 () Bool)

(declare-fun res!1512101 () Bool)

(declare-fun e!2303174 () Bool)

(assert (=> b!3720177 (=> res!1512101 e!2303174)))

(assert (=> b!3720177 (= res!1512101 (not ((_ is Concat!17130) lt!1297824)))))

(declare-fun e!2303175 () Bool)

(assert (=> b!3720177 (= e!2303175 e!2303174)))

(declare-fun b!3720179 () Bool)

(declare-fun res!1512097 () Bool)

(declare-fun e!2303173 () Bool)

(assert (=> b!3720179 (=> (not res!1512097) (not e!2303173))))

(declare-fun call!270232 () Bool)

(assert (=> b!3720179 (= res!1512097 call!270232)))

(assert (=> b!3720179 (= e!2303175 e!2303173)))

(declare-fun c!643362 () Bool)

(declare-fun call!270230 () Bool)

(declare-fun bm!270225 () Bool)

(declare-fun c!643363 () Bool)

(assert (=> bm!270225 (= call!270230 (validRegex!4966 (ite c!643362 (reg!11188 lt!1297824) (ite c!643363 (regTwo!22231 lt!1297824) (regOne!22230 lt!1297824)))))))

(declare-fun bm!270226 () Bool)

(assert (=> bm!270226 (= call!270232 (validRegex!4966 (ite c!643363 (regOne!22231 lt!1297824) (regTwo!22230 lt!1297824))))))

(declare-fun b!3720180 () Bool)

(declare-fun e!2303172 () Bool)

(assert (=> b!3720180 (= e!2303172 call!270232)))

(declare-fun b!3720181 () Bool)

(declare-fun e!2303169 () Bool)

(assert (=> b!3720181 (= e!2303169 e!2303175)))

(assert (=> b!3720181 (= c!643363 ((_ is Union!10859) lt!1297824))))

(declare-fun b!3720182 () Bool)

(declare-fun e!2303171 () Bool)

(assert (=> b!3720182 (= e!2303171 e!2303169)))

(assert (=> b!3720182 (= c!643362 ((_ is Star!10859) lt!1297824))))

(declare-fun b!3720183 () Bool)

(declare-fun e!2303170 () Bool)

(assert (=> b!3720183 (= e!2303169 e!2303170)))

(declare-fun res!1512100 () Bool)

(assert (=> b!3720183 (= res!1512100 (not (nullable!3782 (reg!11188 lt!1297824))))))

(assert (=> b!3720183 (=> (not res!1512100) (not e!2303170))))

(declare-fun bm!270227 () Bool)

(declare-fun call!270231 () Bool)

(assert (=> bm!270227 (= call!270231 call!270230)))

(declare-fun b!3720178 () Bool)

(assert (=> b!3720178 (= e!2303174 e!2303172)))

(declare-fun res!1512098 () Bool)

(assert (=> b!3720178 (=> (not res!1512098) (not e!2303172))))

(assert (=> b!3720178 (= res!1512098 call!270231)))

(declare-fun d!1089143 () Bool)

(declare-fun res!1512099 () Bool)

(assert (=> d!1089143 (=> res!1512099 e!2303171)))

(assert (=> d!1089143 (= res!1512099 ((_ is ElementMatch!10859) lt!1297824))))

(assert (=> d!1089143 (= (validRegex!4966 lt!1297824) e!2303171)))

(declare-fun b!3720184 () Bool)

(assert (=> b!3720184 (= e!2303173 call!270231)))

(declare-fun b!3720185 () Bool)

(assert (=> b!3720185 (= e!2303170 call!270230)))

(assert (= (and d!1089143 (not res!1512099)) b!3720182))

(assert (= (and b!3720182 c!643362) b!3720183))

(assert (= (and b!3720182 (not c!643362)) b!3720181))

(assert (= (and b!3720183 res!1512100) b!3720185))

(assert (= (and b!3720181 c!643363) b!3720179))

(assert (= (and b!3720181 (not c!643363)) b!3720177))

(assert (= (and b!3720179 res!1512097) b!3720184))

(assert (= (and b!3720177 (not res!1512101)) b!3720178))

(assert (= (and b!3720178 res!1512098) b!3720180))

(assert (= (or b!3720184 b!3720178) bm!270227))

(assert (= (or b!3720179 b!3720180) bm!270226))

(assert (= (or b!3720185 bm!270227) bm!270225))

(declare-fun m!4224849 () Bool)

(assert (=> bm!270225 m!4224849))

(declare-fun m!4224851 () Bool)

(assert (=> bm!270226 m!4224851))

(declare-fun m!4224853 () Bool)

(assert (=> b!3720183 m!4224853))

(assert (=> d!1088845 d!1089143))

(assert (=> d!1088845 d!1088849))

(declare-fun d!1089153 () Bool)

(assert (=> d!1089153 (= (nullable!3782 lt!1297725) (nullableFct!1070 lt!1297725))))

(declare-fun bs!574935 () Bool)

(assert (= bs!574935 d!1089153))

(declare-fun m!4224855 () Bool)

(assert (=> bs!574935 m!4224855))

(assert (=> b!3719481 d!1089153))

(declare-fun b!3720186 () Bool)

(declare-fun res!1512106 () Bool)

(declare-fun e!2303181 () Bool)

(assert (=> b!3720186 (=> res!1512106 e!2303181)))

(assert (=> b!3720186 (= res!1512106 (not ((_ is Concat!17130) lt!1297744)))))

(declare-fun e!2303182 () Bool)

(assert (=> b!3720186 (= e!2303182 e!2303181)))

(declare-fun b!3720188 () Bool)

(declare-fun res!1512102 () Bool)

(declare-fun e!2303180 () Bool)

(assert (=> b!3720188 (=> (not res!1512102) (not e!2303180))))

(declare-fun call!270235 () Bool)

(assert (=> b!3720188 (= res!1512102 call!270235)))

(assert (=> b!3720188 (= e!2303182 e!2303180)))

(declare-fun c!643364 () Bool)

(declare-fun bm!270228 () Bool)

(declare-fun call!270233 () Bool)

(declare-fun c!643365 () Bool)

(assert (=> bm!270228 (= call!270233 (validRegex!4966 (ite c!643364 (reg!11188 lt!1297744) (ite c!643365 (regTwo!22231 lt!1297744) (regOne!22230 lt!1297744)))))))

(declare-fun bm!270229 () Bool)

(assert (=> bm!270229 (= call!270235 (validRegex!4966 (ite c!643365 (regOne!22231 lt!1297744) (regTwo!22230 lt!1297744))))))

(declare-fun b!3720189 () Bool)

(declare-fun e!2303179 () Bool)

(assert (=> b!3720189 (= e!2303179 call!270235)))

(declare-fun b!3720190 () Bool)

(declare-fun e!2303176 () Bool)

(assert (=> b!3720190 (= e!2303176 e!2303182)))

(assert (=> b!3720190 (= c!643365 ((_ is Union!10859) lt!1297744))))

(declare-fun b!3720191 () Bool)

(declare-fun e!2303178 () Bool)

(assert (=> b!3720191 (= e!2303178 e!2303176)))

(assert (=> b!3720191 (= c!643364 ((_ is Star!10859) lt!1297744))))

(declare-fun b!3720192 () Bool)

(declare-fun e!2303177 () Bool)

(assert (=> b!3720192 (= e!2303176 e!2303177)))

(declare-fun res!1512105 () Bool)

(assert (=> b!3720192 (= res!1512105 (not (nullable!3782 (reg!11188 lt!1297744))))))

(assert (=> b!3720192 (=> (not res!1512105) (not e!2303177))))

(declare-fun bm!270230 () Bool)

(declare-fun call!270234 () Bool)

(assert (=> bm!270230 (= call!270234 call!270233)))

(declare-fun b!3720187 () Bool)

(assert (=> b!3720187 (= e!2303181 e!2303179)))

(declare-fun res!1512103 () Bool)

(assert (=> b!3720187 (=> (not res!1512103) (not e!2303179))))

(assert (=> b!3720187 (= res!1512103 call!270234)))

(declare-fun d!1089155 () Bool)

(declare-fun res!1512104 () Bool)

(assert (=> d!1089155 (=> res!1512104 e!2303178)))

(assert (=> d!1089155 (= res!1512104 ((_ is ElementMatch!10859) lt!1297744))))

(assert (=> d!1089155 (= (validRegex!4966 lt!1297744) e!2303178)))

(declare-fun b!3720193 () Bool)

(assert (=> b!3720193 (= e!2303180 call!270234)))

(declare-fun b!3720194 () Bool)

(assert (=> b!3720194 (= e!2303177 call!270233)))

(assert (= (and d!1089155 (not res!1512104)) b!3720191))

(assert (= (and b!3720191 c!643364) b!3720192))

(assert (= (and b!3720191 (not c!643364)) b!3720190))

(assert (= (and b!3720192 res!1512105) b!3720194))

(assert (= (and b!3720190 c!643365) b!3720188))

(assert (= (and b!3720190 (not c!643365)) b!3720186))

(assert (= (and b!3720188 res!1512102) b!3720193))

(assert (= (and b!3720186 (not res!1512106)) b!3720187))

(assert (= (and b!3720187 res!1512103) b!3720189))

(assert (= (or b!3720193 b!3720187) bm!270230))

(assert (= (or b!3720188 b!3720189) bm!270229))

(assert (= (or b!3720194 bm!270230) bm!270228))

(declare-fun m!4224857 () Bool)

(assert (=> bm!270228 m!4224857))

(declare-fun m!4224859 () Bool)

(assert (=> bm!270229 m!4224859))

(declare-fun m!4224861 () Bool)

(assert (=> b!3720192 m!4224861))

(assert (=> d!1088751 d!1089155))

(assert (=> d!1088751 d!1088949))

(assert (=> b!3719534 d!1089077))

(assert (=> b!3719534 d!1088907))

(assert (=> b!3719503 d!1088885))

(assert (=> b!3719503 d!1088887))

(declare-fun b!3720195 () Bool)

(declare-fun e!2303184 () Regex!10859)

(declare-fun e!2303187 () Regex!10859)

(assert (=> b!3720195 (= e!2303184 e!2303187)))

(declare-fun c!643370 () Bool)

(assert (=> b!3720195 (= c!643370 ((_ is Star!10859) (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))))))

(declare-fun b!3720196 () Bool)

(declare-fun call!270238 () Regex!10859)

(assert (=> b!3720196 (= e!2303187 (Concat!17130 call!270238 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))))))

(declare-fun bm!270231 () Bool)

(declare-fun call!270239 () Regex!10859)

(assert (=> bm!270231 (= call!270238 call!270239)))

(declare-fun b!3720197 () Bool)

(declare-fun e!2303185 () Regex!10859)

(declare-fun e!2303183 () Regex!10859)

(assert (=> b!3720197 (= e!2303185 e!2303183)))

(declare-fun c!643366 () Bool)

(assert (=> b!3720197 (= c!643366 ((_ is ElementMatch!10859) (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))))))

(declare-fun b!3720198 () Bool)

(assert (=> b!3720198 (= e!2303185 EmptyLang!10859)))

(declare-fun bm!270232 () Bool)

(declare-fun call!270237 () Regex!10859)

(declare-fun call!270236 () Regex!10859)

(assert (=> bm!270232 (= call!270237 call!270236)))

(declare-fun b!3720199 () Bool)

(declare-fun e!2303186 () Regex!10859)

(assert (=> b!3720199 (= e!2303186 (Union!10859 (Concat!17130 call!270237 (regTwo!22230 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))))) call!270238))))

(declare-fun c!643368 () Bool)

(declare-fun b!3720200 () Bool)

(assert (=> b!3720200 (= c!643368 ((_ is Union!10859) (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))))))

(assert (=> b!3720200 (= e!2303183 e!2303184)))

(declare-fun bm!270233 () Bool)

(assert (=> bm!270233 (= call!270236 (derivativeStep!3324 (ite c!643368 (regOne!22231 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))) (regOne!22230 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))))) c!13576))))

(declare-fun b!3720201 () Bool)

(assert (=> b!3720201 (= e!2303183 (ite (= c!13576 (c!642993 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))))) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3720202 () Bool)

(assert (=> b!3720202 (= e!2303186 (Union!10859 (Concat!17130 call!270237 (regTwo!22230 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))))) EmptyLang!10859))))

(declare-fun bm!270234 () Bool)

(assert (=> bm!270234 (= call!270239 (derivativeStep!3324 (ite c!643368 (regTwo!22231 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))) (ite c!643370 (reg!11188 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))) (regTwo!22230 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))))) c!13576))))

(declare-fun b!3720204 () Bool)

(assert (=> b!3720204 (= e!2303184 (Union!10859 call!270236 call!270239))))

(declare-fun d!1089157 () Bool)

(declare-fun lt!1297889 () Regex!10859)

(assert (=> d!1089157 (validRegex!4966 lt!1297889)))

(assert (=> d!1089157 (= lt!1297889 e!2303185)))

(declare-fun c!643369 () Bool)

(assert (=> d!1089157 (= c!643369 (or ((_ is EmptyExpr!10859) (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326)))) ((_ is EmptyLang!10859) (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))))))))

(assert (=> d!1089157 (validRegex!4966 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))))))

(assert (=> d!1089157 (= (derivativeStep!3324 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))) c!13576) lt!1297889)))

(declare-fun c!643367 () Bool)

(declare-fun b!3720203 () Bool)

(assert (=> b!3720203 (= c!643367 (nullable!3782 (regOne!22230 (ite c!643144 (regTwo!22231 r!26326) (ite c!643146 (reg!11188 r!26326) (regTwo!22230 r!26326))))))))

(assert (=> b!3720203 (= e!2303187 e!2303186)))

(assert (= (and d!1089157 c!643369) b!3720198))

(assert (= (and d!1089157 (not c!643369)) b!3720197))

(assert (= (and b!3720197 c!643366) b!3720201))

(assert (= (and b!3720197 (not c!643366)) b!3720200))

(assert (= (and b!3720200 c!643368) b!3720204))

(assert (= (and b!3720200 (not c!643368)) b!3720195))

(assert (= (and b!3720195 c!643370) b!3720196))

(assert (= (and b!3720195 (not c!643370)) b!3720203))

(assert (= (and b!3720203 c!643367) b!3720199))

(assert (= (and b!3720203 (not c!643367)) b!3720202))

(assert (= (or b!3720199 b!3720202) bm!270232))

(assert (= (or b!3720196 b!3720199) bm!270231))

(assert (= (or b!3720204 bm!270231) bm!270234))

(assert (= (or b!3720204 bm!270232) bm!270233))

(declare-fun m!4224863 () Bool)

(assert (=> bm!270233 m!4224863))

(declare-fun m!4224865 () Bool)

(assert (=> bm!270234 m!4224865))

(declare-fun m!4224867 () Bool)

(assert (=> d!1089157 m!4224867))

(declare-fun m!4224869 () Bool)

(assert (=> d!1089157 m!4224869))

(declare-fun m!4224871 () Bool)

(assert (=> b!3720203 m!4224871))

(assert (=> bm!270066 d!1089157))

(assert (=> d!1088851 d!1089047))

(assert (=> d!1088851 d!1088743))

(declare-fun b!3720205 () Bool)

(declare-fun e!2303188 () List!39740)

(declare-fun e!2303189 () List!39740)

(assert (=> b!3720205 (= e!2303188 e!2303189)))

(declare-fun c!643371 () Bool)

(assert (=> b!3720205 (= c!643371 ((_ is ElementMatch!10859) (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(declare-fun bm!270235 () Bool)

(declare-fun call!270241 () List!39740)

(declare-fun call!270240 () List!39740)

(assert (=> bm!270235 (= call!270241 call!270240)))

(declare-fun b!3720206 () Bool)

(declare-fun e!2303191 () List!39740)

(declare-fun call!270243 () List!39740)

(assert (=> b!3720206 (= e!2303191 call!270243)))

(declare-fun b!3720207 () Bool)

(assert (=> b!3720207 (= e!2303191 call!270243)))

(declare-fun bm!270236 () Bool)

(declare-fun c!643374 () Bool)

(declare-fun c!643372 () Bool)

(assert (=> bm!270236 (= call!270240 (usedCharacters!1122 (ite c!643372 (reg!11188 (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) (ite c!643374 (regTwo!22231 (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) (regTwo!22230 (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))))))

(declare-fun call!270242 () List!39740)

(declare-fun bm!270237 () Bool)

(assert (=> bm!270237 (= call!270242 (usedCharacters!1122 (ite c!643374 (regOne!22231 (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) (regOne!22230 (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))))

(declare-fun b!3720208 () Bool)

(assert (=> b!3720208 (= e!2303189 (Cons!39616 (c!642993 (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) Nil!39616))))

(declare-fun b!3720209 () Bool)

(declare-fun e!2303190 () List!39740)

(assert (=> b!3720209 (= e!2303190 e!2303191)))

(assert (=> b!3720209 (= c!643374 ((_ is Union!10859) (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(declare-fun b!3720210 () Bool)

(assert (=> b!3720210 (= e!2303188 Nil!39616)))

(declare-fun bm!270238 () Bool)

(assert (=> bm!270238 (= call!270243 (++!9805 call!270242 call!270241))))

(declare-fun c!643373 () Bool)

(declare-fun d!1089159 () Bool)

(assert (=> d!1089159 (= c!643373 (or ((_ is EmptyExpr!10859) (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) ((_ is EmptyLang!10859) (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))))

(assert (=> d!1089159 (= (usedCharacters!1122 (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))) e!2303188)))

(declare-fun b!3720211 () Bool)

(assert (=> b!3720211 (= c!643372 ((_ is Star!10859) (ite c!643044 (reg!11188 (regOne!22230 r!26326)) (ite c!643046 (regTwo!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(assert (=> b!3720211 (= e!2303189 e!2303190)))

(declare-fun b!3720212 () Bool)

(assert (=> b!3720212 (= e!2303190 call!270240)))

(assert (= (and d!1089159 c!643373) b!3720210))

(assert (= (and d!1089159 (not c!643373)) b!3720205))

(assert (= (and b!3720205 c!643371) b!3720208))

(assert (= (and b!3720205 (not c!643371)) b!3720211))

(assert (= (and b!3720211 c!643372) b!3720212))

(assert (= (and b!3720211 (not c!643372)) b!3720209))

(assert (= (and b!3720209 c!643374) b!3720206))

(assert (= (and b!3720209 (not c!643374)) b!3720207))

(assert (= (or b!3720206 b!3720207) bm!270237))

(assert (= (or b!3720206 b!3720207) bm!270235))

(assert (= (or b!3720206 b!3720207) bm!270238))

(assert (= (or b!3720212 bm!270235) bm!270236))

(declare-fun m!4224873 () Bool)

(assert (=> bm!270236 m!4224873))

(declare-fun m!4224875 () Bool)

(assert (=> bm!270237 m!4224875))

(declare-fun m!4224877 () Bool)

(assert (=> bm!270238 m!4224877))

(assert (=> bm!270009 d!1089159))

(declare-fun b!3720213 () Bool)

(declare-fun e!2303198 () Bool)

(assert (=> b!3720213 (= e!2303198 (not (= (head!8025 (_2!22746 (get!13204 lt!1297803))) (c!642993 (regTwo!22230 r!26326)))))))

(declare-fun b!3720214 () Bool)

(declare-fun res!1512111 () Bool)

(declare-fun e!2303196 () Bool)

(assert (=> b!3720214 (=> (not res!1512111) (not e!2303196))))

(declare-fun call!270244 () Bool)

(assert (=> b!3720214 (= res!1512111 (not call!270244))))

(declare-fun b!3720215 () Bool)

(declare-fun e!2303194 () Bool)

(declare-fun e!2303197 () Bool)

(assert (=> b!3720215 (= e!2303194 e!2303197)))

(declare-fun c!643376 () Bool)

(assert (=> b!3720215 (= c!643376 ((_ is EmptyLang!10859) (regTwo!22230 r!26326)))))

(declare-fun b!3720216 () Bool)

(declare-fun lt!1297890 () Bool)

(assert (=> b!3720216 (= e!2303194 (= lt!1297890 call!270244))))

(declare-fun d!1089161 () Bool)

(assert (=> d!1089161 e!2303194))

(declare-fun c!643377 () Bool)

(assert (=> d!1089161 (= c!643377 ((_ is EmptyExpr!10859) (regTwo!22230 r!26326)))))

(declare-fun e!2303193 () Bool)

(assert (=> d!1089161 (= lt!1297890 e!2303193)))

(declare-fun c!643375 () Bool)

(assert (=> d!1089161 (= c!643375 (isEmpty!23512 (_2!22746 (get!13204 lt!1297803))))))

(assert (=> d!1089161 (validRegex!4966 (regTwo!22230 r!26326))))

(assert (=> d!1089161 (= (matchR!5304 (regTwo!22230 r!26326) (_2!22746 (get!13204 lt!1297803))) lt!1297890)))

(declare-fun b!3720217 () Bool)

(declare-fun res!1512112 () Bool)

(declare-fun e!2303195 () Bool)

(assert (=> b!3720217 (=> res!1512112 e!2303195)))

(assert (=> b!3720217 (= res!1512112 e!2303196)))

(declare-fun res!1512109 () Bool)

(assert (=> b!3720217 (=> (not res!1512109) (not e!2303196))))

(assert (=> b!3720217 (= res!1512109 lt!1297890)))

(declare-fun b!3720218 () Bool)

(declare-fun res!1512108 () Bool)

(assert (=> b!3720218 (=> (not res!1512108) (not e!2303196))))

(assert (=> b!3720218 (= res!1512108 (isEmpty!23512 (tail!5752 (_2!22746 (get!13204 lt!1297803)))))))

(declare-fun b!3720219 () Bool)

(declare-fun res!1512114 () Bool)

(assert (=> b!3720219 (=> res!1512114 e!2303198)))

(assert (=> b!3720219 (= res!1512114 (not (isEmpty!23512 (tail!5752 (_2!22746 (get!13204 lt!1297803))))))))

(declare-fun b!3720220 () Bool)

(assert (=> b!3720220 (= e!2303193 (matchR!5304 (derivativeStep!3324 (regTwo!22230 r!26326) (head!8025 (_2!22746 (get!13204 lt!1297803)))) (tail!5752 (_2!22746 (get!13204 lt!1297803)))))))

(declare-fun bm!270239 () Bool)

(assert (=> bm!270239 (= call!270244 (isEmpty!23512 (_2!22746 (get!13204 lt!1297803))))))

(declare-fun b!3720221 () Bool)

(declare-fun e!2303192 () Bool)

(assert (=> b!3720221 (= e!2303195 e!2303192)))

(declare-fun res!1512107 () Bool)

(assert (=> b!3720221 (=> (not res!1512107) (not e!2303192))))

(assert (=> b!3720221 (= res!1512107 (not lt!1297890))))

(declare-fun b!3720222 () Bool)

(assert (=> b!3720222 (= e!2303193 (nullable!3782 (regTwo!22230 r!26326)))))

(declare-fun b!3720223 () Bool)

(assert (=> b!3720223 (= e!2303197 (not lt!1297890))))

(declare-fun b!3720224 () Bool)

(assert (=> b!3720224 (= e!2303192 e!2303198)))

(declare-fun res!1512110 () Bool)

(assert (=> b!3720224 (=> res!1512110 e!2303198)))

(assert (=> b!3720224 (= res!1512110 call!270244)))

(declare-fun b!3720225 () Bool)

(declare-fun res!1512113 () Bool)

(assert (=> b!3720225 (=> res!1512113 e!2303195)))

(assert (=> b!3720225 (= res!1512113 (not ((_ is ElementMatch!10859) (regTwo!22230 r!26326))))))

(assert (=> b!3720225 (= e!2303197 e!2303195)))

(declare-fun b!3720226 () Bool)

(assert (=> b!3720226 (= e!2303196 (= (head!8025 (_2!22746 (get!13204 lt!1297803))) (c!642993 (regTwo!22230 r!26326))))))

(assert (= (and d!1089161 c!643375) b!3720222))

(assert (= (and d!1089161 (not c!643375)) b!3720220))

(assert (= (and d!1089161 c!643377) b!3720216))

(assert (= (and d!1089161 (not c!643377)) b!3720215))

(assert (= (and b!3720215 c!643376) b!3720223))

(assert (= (and b!3720215 (not c!643376)) b!3720225))

(assert (= (and b!3720225 (not res!1512113)) b!3720217))

(assert (= (and b!3720217 res!1512109) b!3720214))

(assert (= (and b!3720214 res!1512111) b!3720218))

(assert (= (and b!3720218 res!1512108) b!3720226))

(assert (= (and b!3720217 (not res!1512112)) b!3720221))

(assert (= (and b!3720221 res!1512107) b!3720224))

(assert (= (and b!3720224 (not res!1512110)) b!3720219))

(assert (= (and b!3720219 (not res!1512114)) b!3720213))

(assert (= (or b!3720216 b!3720214 b!3720224) bm!270239))

(declare-fun m!4224879 () Bool)

(assert (=> d!1089161 m!4224879))

(assert (=> d!1089161 m!4224187))

(declare-fun m!4224881 () Bool)

(assert (=> b!3720226 m!4224881))

(assert (=> b!3720213 m!4224881))

(assert (=> b!3720220 m!4224881))

(assert (=> b!3720220 m!4224881))

(declare-fun m!4224883 () Bool)

(assert (=> b!3720220 m!4224883))

(declare-fun m!4224885 () Bool)

(assert (=> b!3720220 m!4224885))

(assert (=> b!3720220 m!4224883))

(assert (=> b!3720220 m!4224885))

(declare-fun m!4224887 () Bool)

(assert (=> b!3720220 m!4224887))

(assert (=> b!3720219 m!4224885))

(assert (=> b!3720219 m!4224885))

(declare-fun m!4224889 () Bool)

(assert (=> b!3720219 m!4224889))

(assert (=> b!3720218 m!4224885))

(assert (=> b!3720218 m!4224885))

(assert (=> b!3720218 m!4224889))

(assert (=> bm!270239 m!4224879))

(assert (=> b!3720222 m!4224199))

(assert (=> b!3719294 d!1089161))

(assert (=> b!3719294 d!1088917))

(declare-fun d!1089163 () Bool)

(assert (=> d!1089163 (= (nullable!3782 (regOne!22230 (regOne!22230 r!26326))) (nullableFct!1070 (regOne!22230 (regOne!22230 r!26326))))))

(declare-fun bs!574936 () Bool)

(assert (= bs!574936 d!1089163))

(declare-fun m!4224891 () Bool)

(assert (=> bs!574936 m!4224891))

(assert (=> b!3719496 d!1089163))

(declare-fun d!1089165 () Bool)

(declare-fun lt!1297891 () Regex!10859)

(assert (=> d!1089165 (validRegex!4966 lt!1297891)))

(declare-fun e!2303211 () Regex!10859)

(assert (=> d!1089165 (= lt!1297891 e!2303211)))

(declare-fun c!643380 () Bool)

(assert (=> d!1089165 (= c!643380 ((_ is Cons!39616) (t!302423 tl!3933)))))

(assert (=> d!1089165 (validRegex!4966 (derivativeStep!3324 EmptyLang!10859 (h!45036 tl!3933)))))

(assert (=> d!1089165 (= (derivative!373 (derivativeStep!3324 EmptyLang!10859 (h!45036 tl!3933)) (t!302423 tl!3933)) lt!1297891)))

(declare-fun b!3720241 () Bool)

(assert (=> b!3720241 (= e!2303211 (derivative!373 (derivativeStep!3324 (derivativeStep!3324 EmptyLang!10859 (h!45036 tl!3933)) (h!45036 (t!302423 tl!3933))) (t!302423 (t!302423 tl!3933))))))

(declare-fun b!3720242 () Bool)

(assert (=> b!3720242 (= e!2303211 (derivativeStep!3324 EmptyLang!10859 (h!45036 tl!3933)))))

(assert (= (and d!1089165 c!643380) b!3720241))

(assert (= (and d!1089165 (not c!643380)) b!3720242))

(declare-fun m!4224893 () Bool)

(assert (=> d!1089165 m!4224893))

(assert (=> d!1089165 m!4224245))

(declare-fun m!4224895 () Bool)

(assert (=> d!1089165 m!4224895))

(assert (=> b!3720241 m!4224245))

(declare-fun m!4224897 () Bool)

(assert (=> b!3720241 m!4224897))

(assert (=> b!3720241 m!4224897))

(declare-fun m!4224899 () Bool)

(assert (=> b!3720241 m!4224899))

(assert (=> b!3719526 d!1089165))

(declare-fun b!3720243 () Bool)

(declare-fun e!2303213 () Regex!10859)

(declare-fun e!2303216 () Regex!10859)

(assert (=> b!3720243 (= e!2303213 e!2303216)))

(declare-fun c!643385 () Bool)

(assert (=> b!3720243 (= c!643385 ((_ is Star!10859) EmptyLang!10859))))

(declare-fun b!3720244 () Bool)

(declare-fun call!270251 () Regex!10859)

(assert (=> b!3720244 (= e!2303216 (Concat!17130 call!270251 EmptyLang!10859))))

(declare-fun bm!270244 () Bool)

(declare-fun call!270252 () Regex!10859)

(assert (=> bm!270244 (= call!270251 call!270252)))

(declare-fun b!3720245 () Bool)

(declare-fun e!2303214 () Regex!10859)

(declare-fun e!2303212 () Regex!10859)

(assert (=> b!3720245 (= e!2303214 e!2303212)))

(declare-fun c!643381 () Bool)

(assert (=> b!3720245 (= c!643381 ((_ is ElementMatch!10859) EmptyLang!10859))))

(declare-fun b!3720246 () Bool)

(assert (=> b!3720246 (= e!2303214 EmptyLang!10859)))

(declare-fun bm!270245 () Bool)

(declare-fun call!270250 () Regex!10859)

(declare-fun call!270249 () Regex!10859)

(assert (=> bm!270245 (= call!270250 call!270249)))

(declare-fun b!3720247 () Bool)

(declare-fun e!2303215 () Regex!10859)

(assert (=> b!3720247 (= e!2303215 (Union!10859 (Concat!17130 call!270250 (regTwo!22230 EmptyLang!10859)) call!270251))))

(declare-fun b!3720248 () Bool)

(declare-fun c!643383 () Bool)

(assert (=> b!3720248 (= c!643383 ((_ is Union!10859) EmptyLang!10859))))

(assert (=> b!3720248 (= e!2303212 e!2303213)))

(declare-fun bm!270246 () Bool)

(assert (=> bm!270246 (= call!270249 (derivativeStep!3324 (ite c!643383 (regOne!22231 EmptyLang!10859) (regOne!22230 EmptyLang!10859)) (h!45036 tl!3933)))))

(declare-fun b!3720249 () Bool)

(assert (=> b!3720249 (= e!2303212 (ite (= (h!45036 tl!3933) (c!642993 EmptyLang!10859)) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3720250 () Bool)

(assert (=> b!3720250 (= e!2303215 (Union!10859 (Concat!17130 call!270250 (regTwo!22230 EmptyLang!10859)) EmptyLang!10859))))

(declare-fun bm!270247 () Bool)

(assert (=> bm!270247 (= call!270252 (derivativeStep!3324 (ite c!643383 (regTwo!22231 EmptyLang!10859) (ite c!643385 (reg!11188 EmptyLang!10859) (regTwo!22230 EmptyLang!10859))) (h!45036 tl!3933)))))

(declare-fun b!3720252 () Bool)

(assert (=> b!3720252 (= e!2303213 (Union!10859 call!270249 call!270252))))

(declare-fun d!1089167 () Bool)

(declare-fun lt!1297892 () Regex!10859)

(assert (=> d!1089167 (validRegex!4966 lt!1297892)))

(assert (=> d!1089167 (= lt!1297892 e!2303214)))

(declare-fun c!643384 () Bool)

(assert (=> d!1089167 (= c!643384 (or ((_ is EmptyExpr!10859) EmptyLang!10859) ((_ is EmptyLang!10859) EmptyLang!10859)))))

(assert (=> d!1089167 (validRegex!4966 EmptyLang!10859)))

(assert (=> d!1089167 (= (derivativeStep!3324 EmptyLang!10859 (h!45036 tl!3933)) lt!1297892)))

(declare-fun b!3720251 () Bool)

(declare-fun c!643382 () Bool)

(assert (=> b!3720251 (= c!643382 (nullable!3782 (regOne!22230 EmptyLang!10859)))))

(assert (=> b!3720251 (= e!2303216 e!2303215)))

(assert (= (and d!1089167 c!643384) b!3720246))

(assert (= (and d!1089167 (not c!643384)) b!3720245))

(assert (= (and b!3720245 c!643381) b!3720249))

(assert (= (and b!3720245 (not c!643381)) b!3720248))

(assert (= (and b!3720248 c!643383) b!3720252))

(assert (= (and b!3720248 (not c!643383)) b!3720243))

(assert (= (and b!3720243 c!643385) b!3720244))

(assert (= (and b!3720243 (not c!643385)) b!3720251))

(assert (= (and b!3720251 c!643382) b!3720247))

(assert (= (and b!3720251 (not c!643382)) b!3720250))

(assert (= (or b!3720247 b!3720250) bm!270245))

(assert (= (or b!3720244 b!3720247) bm!270244))

(assert (= (or b!3720252 bm!270244) bm!270247))

(assert (= (or b!3720252 bm!270245) bm!270246))

(declare-fun m!4224901 () Bool)

(assert (=> bm!270246 m!4224901))

(declare-fun m!4224903 () Bool)

(assert (=> bm!270247 m!4224903))

(declare-fun m!4224905 () Bool)

(assert (=> d!1089167 m!4224905))

(assert (=> d!1089167 m!4223893))

(assert (=> b!3720251 m!4224561))

(assert (=> b!3719526 d!1089167))

(assert (=> b!3719517 d!1088895))

(assert (=> b!3719517 d!1088883))

(assert (=> d!1088783 d!1088891))

(declare-fun b!3720253 () Bool)

(declare-fun e!2303223 () Bool)

(assert (=> b!3720253 (= e!2303223 (not (= (head!8025 Nil!39616) (c!642993 lt!1297728))))))

(declare-fun b!3720254 () Bool)

(declare-fun res!1512129 () Bool)

(declare-fun e!2303221 () Bool)

(assert (=> b!3720254 (=> (not res!1512129) (not e!2303221))))

(declare-fun call!270253 () Bool)

(assert (=> b!3720254 (= res!1512129 (not call!270253))))

(declare-fun b!3720255 () Bool)

(declare-fun e!2303219 () Bool)

(declare-fun e!2303222 () Bool)

(assert (=> b!3720255 (= e!2303219 e!2303222)))

(declare-fun c!643387 () Bool)

(assert (=> b!3720255 (= c!643387 ((_ is EmptyLang!10859) lt!1297728))))

(declare-fun b!3720256 () Bool)

(declare-fun lt!1297893 () Bool)

(assert (=> b!3720256 (= e!2303219 (= lt!1297893 call!270253))))

(declare-fun d!1089169 () Bool)

(assert (=> d!1089169 e!2303219))

(declare-fun c!643388 () Bool)

(assert (=> d!1089169 (= c!643388 ((_ is EmptyExpr!10859) lt!1297728))))

(declare-fun e!2303218 () Bool)

(assert (=> d!1089169 (= lt!1297893 e!2303218)))

(declare-fun c!643386 () Bool)

(assert (=> d!1089169 (= c!643386 (isEmpty!23512 Nil!39616))))

(assert (=> d!1089169 (validRegex!4966 lt!1297728)))

(assert (=> d!1089169 (= (matchR!5304 lt!1297728 Nil!39616) lt!1297893)))

(declare-fun b!3720257 () Bool)

(declare-fun res!1512130 () Bool)

(declare-fun e!2303220 () Bool)

(assert (=> b!3720257 (=> res!1512130 e!2303220)))

(assert (=> b!3720257 (= res!1512130 e!2303221)))

(declare-fun res!1512127 () Bool)

(assert (=> b!3720257 (=> (not res!1512127) (not e!2303221))))

(assert (=> b!3720257 (= res!1512127 lt!1297893)))

(declare-fun b!3720258 () Bool)

(declare-fun res!1512126 () Bool)

(assert (=> b!3720258 (=> (not res!1512126) (not e!2303221))))

(assert (=> b!3720258 (= res!1512126 (isEmpty!23512 (tail!5752 Nil!39616)))))

(declare-fun b!3720259 () Bool)

(declare-fun res!1512132 () Bool)

(assert (=> b!3720259 (=> res!1512132 e!2303223)))

(assert (=> b!3720259 (= res!1512132 (not (isEmpty!23512 (tail!5752 Nil!39616))))))

(declare-fun b!3720260 () Bool)

(assert (=> b!3720260 (= e!2303218 (matchR!5304 (derivativeStep!3324 lt!1297728 (head!8025 Nil!39616)) (tail!5752 Nil!39616)))))

(declare-fun bm!270248 () Bool)

(assert (=> bm!270248 (= call!270253 (isEmpty!23512 Nil!39616))))

(declare-fun b!3720261 () Bool)

(declare-fun e!2303217 () Bool)

(assert (=> b!3720261 (= e!2303220 e!2303217)))

(declare-fun res!1512125 () Bool)

(assert (=> b!3720261 (=> (not res!1512125) (not e!2303217))))

(assert (=> b!3720261 (= res!1512125 (not lt!1297893))))

(declare-fun b!3720262 () Bool)

(assert (=> b!3720262 (= e!2303218 (nullable!3782 lt!1297728))))

(declare-fun b!3720263 () Bool)

(assert (=> b!3720263 (= e!2303222 (not lt!1297893))))

(declare-fun b!3720264 () Bool)

(assert (=> b!3720264 (= e!2303217 e!2303223)))

(declare-fun res!1512128 () Bool)

(assert (=> b!3720264 (=> res!1512128 e!2303223)))

(assert (=> b!3720264 (= res!1512128 call!270253)))

(declare-fun b!3720265 () Bool)

(declare-fun res!1512131 () Bool)

(assert (=> b!3720265 (=> res!1512131 e!2303220)))

(assert (=> b!3720265 (= res!1512131 (not ((_ is ElementMatch!10859) lt!1297728)))))

(assert (=> b!3720265 (= e!2303222 e!2303220)))

(declare-fun b!3720266 () Bool)

(assert (=> b!3720266 (= e!2303221 (= (head!8025 Nil!39616) (c!642993 lt!1297728)))))

(assert (= (and d!1089169 c!643386) b!3720262))

(assert (= (and d!1089169 (not c!643386)) b!3720260))

(assert (= (and d!1089169 c!643388) b!3720256))

(assert (= (and d!1089169 (not c!643388)) b!3720255))

(assert (= (and b!3720255 c!643387) b!3720263))

(assert (= (and b!3720255 (not c!643387)) b!3720265))

(assert (= (and b!3720265 (not res!1512131)) b!3720257))

(assert (= (and b!3720257 res!1512127) b!3720254))

(assert (= (and b!3720254 res!1512129) b!3720258))

(assert (= (and b!3720258 res!1512126) b!3720266))

(assert (= (and b!3720257 (not res!1512130)) b!3720261))

(assert (= (and b!3720261 res!1512125) b!3720264))

(assert (= (and b!3720264 (not res!1512128)) b!3720259))

(assert (= (and b!3720259 (not res!1512132)) b!3720253))

(assert (= (or b!3720256 b!3720254 b!3720264) bm!270248))

(assert (=> d!1089169 m!4223809))

(assert (=> d!1089169 m!4223825))

(assert (=> b!3720266 m!4223813))

(assert (=> b!3720253 m!4223813))

(assert (=> b!3720260 m!4223813))

(assert (=> b!3720260 m!4223813))

(declare-fun m!4224907 () Bool)

(assert (=> b!3720260 m!4224907))

(assert (=> b!3720260 m!4223817))

(assert (=> b!3720260 m!4224907))

(assert (=> b!3720260 m!4223817))

(declare-fun m!4224909 () Bool)

(assert (=> b!3720260 m!4224909))

(assert (=> b!3720259 m!4223817))

(assert (=> b!3720259 m!4223817))

(assert (=> b!3720259 m!4223821))

(assert (=> b!3720258 m!4223817))

(assert (=> b!3720258 m!4223817))

(assert (=> b!3720258 m!4223821))

(assert (=> bm!270248 m!4223809))

(assert (=> b!3720262 m!4224263))

(assert (=> d!1088783 d!1089169))

(assert (=> d!1088783 d!1088949))

(declare-fun b!3720267 () Bool)

(declare-fun res!1512137 () Bool)

(declare-fun e!2303229 () Bool)

(assert (=> b!3720267 (=> res!1512137 e!2303229)))

(assert (=> b!3720267 (= res!1512137 (not ((_ is Concat!17130) lt!1297834)))))

(declare-fun e!2303230 () Bool)

(assert (=> b!3720267 (= e!2303230 e!2303229)))

(declare-fun b!3720269 () Bool)

(declare-fun res!1512133 () Bool)

(declare-fun e!2303228 () Bool)

(assert (=> b!3720269 (=> (not res!1512133) (not e!2303228))))

(declare-fun call!270256 () Bool)

(assert (=> b!3720269 (= res!1512133 call!270256)))

(assert (=> b!3720269 (= e!2303230 e!2303228)))

(declare-fun call!270254 () Bool)

(declare-fun bm!270249 () Bool)

(declare-fun c!643389 () Bool)

(declare-fun c!643390 () Bool)

(assert (=> bm!270249 (= call!270254 (validRegex!4966 (ite c!643389 (reg!11188 lt!1297834) (ite c!643390 (regTwo!22231 lt!1297834) (regOne!22230 lt!1297834)))))))

(declare-fun bm!270250 () Bool)

(assert (=> bm!270250 (= call!270256 (validRegex!4966 (ite c!643390 (regOne!22231 lt!1297834) (regTwo!22230 lt!1297834))))))

(declare-fun b!3720270 () Bool)

(declare-fun e!2303227 () Bool)

(assert (=> b!3720270 (= e!2303227 call!270256)))

(declare-fun b!3720271 () Bool)

(declare-fun e!2303224 () Bool)

(assert (=> b!3720271 (= e!2303224 e!2303230)))

(assert (=> b!3720271 (= c!643390 ((_ is Union!10859) lt!1297834))))

(declare-fun b!3720272 () Bool)

(declare-fun e!2303226 () Bool)

(assert (=> b!3720272 (= e!2303226 e!2303224)))

(assert (=> b!3720272 (= c!643389 ((_ is Star!10859) lt!1297834))))

(declare-fun b!3720273 () Bool)

(declare-fun e!2303225 () Bool)

(assert (=> b!3720273 (= e!2303224 e!2303225)))

(declare-fun res!1512136 () Bool)

(assert (=> b!3720273 (= res!1512136 (not (nullable!3782 (reg!11188 lt!1297834))))))

(assert (=> b!3720273 (=> (not res!1512136) (not e!2303225))))

(declare-fun bm!270251 () Bool)

(declare-fun call!270255 () Bool)

(assert (=> bm!270251 (= call!270255 call!270254)))

(declare-fun b!3720268 () Bool)

(assert (=> b!3720268 (= e!2303229 e!2303227)))

(declare-fun res!1512134 () Bool)

(assert (=> b!3720268 (=> (not res!1512134) (not e!2303227))))

(assert (=> b!3720268 (= res!1512134 call!270255)))

(declare-fun d!1089171 () Bool)

(declare-fun res!1512135 () Bool)

(assert (=> d!1089171 (=> res!1512135 e!2303226)))

(assert (=> d!1089171 (= res!1512135 ((_ is ElementMatch!10859) lt!1297834))))

(assert (=> d!1089171 (= (validRegex!4966 lt!1297834) e!2303226)))

(declare-fun b!3720274 () Bool)

(assert (=> b!3720274 (= e!2303228 call!270255)))

(declare-fun b!3720275 () Bool)

(assert (=> b!3720275 (= e!2303225 call!270254)))

(assert (= (and d!1089171 (not res!1512135)) b!3720272))

(assert (= (and b!3720272 c!643389) b!3720273))

(assert (= (and b!3720272 (not c!643389)) b!3720271))

(assert (= (and b!3720273 res!1512136) b!3720275))

(assert (= (and b!3720271 c!643390) b!3720269))

(assert (= (and b!3720271 (not c!643390)) b!3720267))

(assert (= (and b!3720269 res!1512133) b!3720274))

(assert (= (and b!3720267 (not res!1512137)) b!3720268))

(assert (= (and b!3720268 res!1512134) b!3720270))

(assert (= (or b!3720274 b!3720268) bm!270251))

(assert (= (or b!3720269 b!3720270) bm!270250))

(assert (= (or b!3720275 bm!270251) bm!270249))

(declare-fun m!4224911 () Bool)

(assert (=> bm!270249 m!4224911))

(declare-fun m!4224913 () Bool)

(assert (=> bm!270250 m!4224913))

(declare-fun m!4224915 () Bool)

(assert (=> b!3720273 m!4224915))

(assert (=> d!1088861 d!1089171))

(assert (=> d!1088861 d!1088925))

(assert (=> b!3719485 d!1088881))

(assert (=> b!3719096 d!1088895))

(assert (=> b!3719096 d!1088883))

(assert (=> b!3719470 d!1089089))

(declare-fun d!1089173 () Bool)

(assert (=> d!1089173 (= (nullable!3782 lt!1297728) (nullableFct!1070 lt!1297728))))

(declare-fun bs!574937 () Bool)

(assert (= bs!574937 d!1089173))

(declare-fun m!4224917 () Bool)

(assert (=> bs!574937 m!4224917))

(assert (=> b!3719537 d!1089173))

(declare-fun d!1089175 () Bool)

(declare-fun lt!1297894 () Regex!10859)

(assert (=> d!1089175 (validRegex!4966 lt!1297894)))

(declare-fun e!2303231 () Regex!10859)

(assert (=> d!1089175 (= lt!1297894 e!2303231)))

(declare-fun c!643391 () Bool)

(assert (=> d!1089175 (= c!643391 ((_ is Cons!39616) (t!302423 tl!3933)))))

(assert (=> d!1089175 (validRegex!4966 (derivativeStep!3324 lt!1297736 (h!45036 tl!3933)))))

(assert (=> d!1089175 (= (derivative!373 (derivativeStep!3324 lt!1297736 (h!45036 tl!3933)) (t!302423 tl!3933)) lt!1297894)))

(declare-fun b!3720276 () Bool)

(assert (=> b!3720276 (= e!2303231 (derivative!373 (derivativeStep!3324 (derivativeStep!3324 lt!1297736 (h!45036 tl!3933)) (h!45036 (t!302423 tl!3933))) (t!302423 (t!302423 tl!3933))))))

(declare-fun b!3720277 () Bool)

(assert (=> b!3720277 (= e!2303231 (derivativeStep!3324 lt!1297736 (h!45036 tl!3933)))))

(assert (= (and d!1089175 c!643391) b!3720276))

(assert (= (and d!1089175 (not c!643391)) b!3720277))

(declare-fun m!4224919 () Bool)

(assert (=> d!1089175 m!4224919))

(assert (=> d!1089175 m!4224217))

(declare-fun m!4224921 () Bool)

(assert (=> d!1089175 m!4224921))

(assert (=> b!3720276 m!4224217))

(declare-fun m!4224923 () Bool)

(assert (=> b!3720276 m!4224923))

(assert (=> b!3720276 m!4224923))

(declare-fun m!4224925 () Bool)

(assert (=> b!3720276 m!4224925))

(assert (=> b!3719486 d!1089175))

(declare-fun b!3720278 () Bool)

(declare-fun e!2303233 () Regex!10859)

(declare-fun e!2303236 () Regex!10859)

(assert (=> b!3720278 (= e!2303233 e!2303236)))

(declare-fun c!643396 () Bool)

(assert (=> b!3720278 (= c!643396 ((_ is Star!10859) lt!1297736))))

(declare-fun b!3720279 () Bool)

(declare-fun call!270259 () Regex!10859)

(assert (=> b!3720279 (= e!2303236 (Concat!17130 call!270259 lt!1297736))))

(declare-fun bm!270252 () Bool)

(declare-fun call!270260 () Regex!10859)

(assert (=> bm!270252 (= call!270259 call!270260)))

(declare-fun b!3720280 () Bool)

(declare-fun e!2303234 () Regex!10859)

(declare-fun e!2303232 () Regex!10859)

(assert (=> b!3720280 (= e!2303234 e!2303232)))

(declare-fun c!643392 () Bool)

(assert (=> b!3720280 (= c!643392 ((_ is ElementMatch!10859) lt!1297736))))

(declare-fun b!3720281 () Bool)

(assert (=> b!3720281 (= e!2303234 EmptyLang!10859)))

(declare-fun bm!270253 () Bool)

(declare-fun call!270258 () Regex!10859)

(declare-fun call!270257 () Regex!10859)

(assert (=> bm!270253 (= call!270258 call!270257)))

(declare-fun b!3720282 () Bool)

(declare-fun e!2303235 () Regex!10859)

(assert (=> b!3720282 (= e!2303235 (Union!10859 (Concat!17130 call!270258 (regTwo!22230 lt!1297736)) call!270259))))

(declare-fun b!3720283 () Bool)

(declare-fun c!643394 () Bool)

(assert (=> b!3720283 (= c!643394 ((_ is Union!10859) lt!1297736))))

(assert (=> b!3720283 (= e!2303232 e!2303233)))

(declare-fun bm!270254 () Bool)

(assert (=> bm!270254 (= call!270257 (derivativeStep!3324 (ite c!643394 (regOne!22231 lt!1297736) (regOne!22230 lt!1297736)) (h!45036 tl!3933)))))

(declare-fun b!3720284 () Bool)

(assert (=> b!3720284 (= e!2303232 (ite (= (h!45036 tl!3933) (c!642993 lt!1297736)) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3720285 () Bool)

(assert (=> b!3720285 (= e!2303235 (Union!10859 (Concat!17130 call!270258 (regTwo!22230 lt!1297736)) EmptyLang!10859))))

(declare-fun bm!270255 () Bool)

(assert (=> bm!270255 (= call!270260 (derivativeStep!3324 (ite c!643394 (regTwo!22231 lt!1297736) (ite c!643396 (reg!11188 lt!1297736) (regTwo!22230 lt!1297736))) (h!45036 tl!3933)))))

(declare-fun b!3720287 () Bool)

(assert (=> b!3720287 (= e!2303233 (Union!10859 call!270257 call!270260))))

(declare-fun d!1089177 () Bool)

(declare-fun lt!1297895 () Regex!10859)

(assert (=> d!1089177 (validRegex!4966 lt!1297895)))

(assert (=> d!1089177 (= lt!1297895 e!2303234)))

(declare-fun c!643395 () Bool)

(assert (=> d!1089177 (= c!643395 (or ((_ is EmptyExpr!10859) lt!1297736) ((_ is EmptyLang!10859) lt!1297736)))))

(assert (=> d!1089177 (validRegex!4966 lt!1297736)))

(assert (=> d!1089177 (= (derivativeStep!3324 lt!1297736 (h!45036 tl!3933)) lt!1297895)))

(declare-fun b!3720286 () Bool)

(declare-fun c!643393 () Bool)

(assert (=> b!3720286 (= c!643393 (nullable!3782 (regOne!22230 lt!1297736)))))

(assert (=> b!3720286 (= e!2303236 e!2303235)))

(assert (= (and d!1089177 c!643395) b!3720281))

(assert (= (and d!1089177 (not c!643395)) b!3720280))

(assert (= (and b!3720280 c!643392) b!3720284))

(assert (= (and b!3720280 (not c!643392)) b!3720283))

(assert (= (and b!3720283 c!643394) b!3720287))

(assert (= (and b!3720283 (not c!643394)) b!3720278))

(assert (= (and b!3720278 c!643396) b!3720279))

(assert (= (and b!3720278 (not c!643396)) b!3720286))

(assert (= (and b!3720286 c!643393) b!3720282))

(assert (= (and b!3720286 (not c!643393)) b!3720285))

(assert (= (or b!3720282 b!3720285) bm!270253))

(assert (= (or b!3720279 b!3720282) bm!270252))

(assert (= (or b!3720287 bm!270252) bm!270255))

(assert (= (or b!3720287 bm!270253) bm!270254))

(declare-fun m!4224927 () Bool)

(assert (=> bm!270254 m!4224927))

(declare-fun m!4224929 () Bool)

(assert (=> bm!270255 m!4224929))

(declare-fun m!4224931 () Bool)

(assert (=> d!1089177 m!4224931))

(assert (=> d!1089177 m!4224215))

(assert (=> b!3720286 m!4224579))

(assert (=> b!3719486 d!1089177))

(assert (=> b!3719541 d!1088905))

(declare-fun d!1089179 () Bool)

(declare-fun lt!1297896 () Regex!10859)

(assert (=> d!1089179 (validRegex!4966 lt!1297896)))

(declare-fun e!2303243 () Regex!10859)

(assert (=> d!1089179 (= lt!1297896 e!2303243)))

(declare-fun c!643398 () Bool)

(assert (=> d!1089179 (= c!643398 ((_ is Cons!39616) (t!302423 (_1!22746 lt!1297729))))))

(assert (=> d!1089179 (validRegex!4966 (derivativeStep!3324 lt!1297728 (h!45036 (_1!22746 lt!1297729))))))

(assert (=> d!1089179 (= (derivative!373 (derivativeStep!3324 lt!1297728 (h!45036 (_1!22746 lt!1297729))) (t!302423 (_1!22746 lt!1297729))) lt!1297896)))

(declare-fun b!3720295 () Bool)

(assert (=> b!3720295 (= e!2303243 (derivative!373 (derivativeStep!3324 (derivativeStep!3324 lt!1297728 (h!45036 (_1!22746 lt!1297729))) (h!45036 (t!302423 (_1!22746 lt!1297729)))) (t!302423 (t!302423 (_1!22746 lt!1297729)))))))

(declare-fun b!3720296 () Bool)

(assert (=> b!3720296 (= e!2303243 (derivativeStep!3324 lt!1297728 (h!45036 (_1!22746 lt!1297729))))))

(assert (= (and d!1089179 c!643398) b!3720295))

(assert (= (and d!1089179 (not c!643398)) b!3720296))

(declare-fun m!4224933 () Bool)

(assert (=> d!1089179 m!4224933))

(assert (=> d!1089179 m!4223827))

(declare-fun m!4224935 () Bool)

(assert (=> d!1089179 m!4224935))

(assert (=> b!3720295 m!4223827))

(declare-fun m!4224937 () Bool)

(assert (=> b!3720295 m!4224937))

(assert (=> b!3720295 m!4224937))

(declare-fun m!4224939 () Bool)

(assert (=> b!3720295 m!4224939))

(assert (=> b!3719009 d!1089179))

(declare-fun b!3720297 () Bool)

(declare-fun e!2303245 () Regex!10859)

(declare-fun e!2303248 () Regex!10859)

(assert (=> b!3720297 (= e!2303245 e!2303248)))

(declare-fun c!643403 () Bool)

(assert (=> b!3720297 (= c!643403 ((_ is Star!10859) lt!1297728))))

(declare-fun b!3720298 () Bool)

(declare-fun call!270265 () Regex!10859)

(assert (=> b!3720298 (= e!2303248 (Concat!17130 call!270265 lt!1297728))))

(declare-fun bm!270258 () Bool)

(declare-fun call!270266 () Regex!10859)

(assert (=> bm!270258 (= call!270265 call!270266)))

(declare-fun b!3720299 () Bool)

(declare-fun e!2303246 () Regex!10859)

(declare-fun e!2303244 () Regex!10859)

(assert (=> b!3720299 (= e!2303246 e!2303244)))

(declare-fun c!643399 () Bool)

(assert (=> b!3720299 (= c!643399 ((_ is ElementMatch!10859) lt!1297728))))

(declare-fun b!3720300 () Bool)

(assert (=> b!3720300 (= e!2303246 EmptyLang!10859)))

(declare-fun bm!270259 () Bool)

(declare-fun call!270264 () Regex!10859)

(declare-fun call!270263 () Regex!10859)

(assert (=> bm!270259 (= call!270264 call!270263)))

(declare-fun b!3720301 () Bool)

(declare-fun e!2303247 () Regex!10859)

(assert (=> b!3720301 (= e!2303247 (Union!10859 (Concat!17130 call!270264 (regTwo!22230 lt!1297728)) call!270265))))

(declare-fun b!3720302 () Bool)

(declare-fun c!643401 () Bool)

(assert (=> b!3720302 (= c!643401 ((_ is Union!10859) lt!1297728))))

(assert (=> b!3720302 (= e!2303244 e!2303245)))

(declare-fun bm!270260 () Bool)

(assert (=> bm!270260 (= call!270263 (derivativeStep!3324 (ite c!643401 (regOne!22231 lt!1297728) (regOne!22230 lt!1297728)) (h!45036 (_1!22746 lt!1297729))))))

(declare-fun b!3720303 () Bool)

(assert (=> b!3720303 (= e!2303244 (ite (= (h!45036 (_1!22746 lt!1297729)) (c!642993 lt!1297728)) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3720304 () Bool)

(assert (=> b!3720304 (= e!2303247 (Union!10859 (Concat!17130 call!270264 (regTwo!22230 lt!1297728)) EmptyLang!10859))))

(declare-fun bm!270261 () Bool)

(assert (=> bm!270261 (= call!270266 (derivativeStep!3324 (ite c!643401 (regTwo!22231 lt!1297728) (ite c!643403 (reg!11188 lt!1297728) (regTwo!22230 lt!1297728))) (h!45036 (_1!22746 lt!1297729))))))

(declare-fun b!3720306 () Bool)

(assert (=> b!3720306 (= e!2303245 (Union!10859 call!270263 call!270266))))

(declare-fun d!1089181 () Bool)

(declare-fun lt!1297897 () Regex!10859)

(assert (=> d!1089181 (validRegex!4966 lt!1297897)))

(assert (=> d!1089181 (= lt!1297897 e!2303246)))

(declare-fun c!643402 () Bool)

(assert (=> d!1089181 (= c!643402 (or ((_ is EmptyExpr!10859) lt!1297728) ((_ is EmptyLang!10859) lt!1297728)))))

(assert (=> d!1089181 (validRegex!4966 lt!1297728)))

(assert (=> d!1089181 (= (derivativeStep!3324 lt!1297728 (h!45036 (_1!22746 lt!1297729))) lt!1297897)))

(declare-fun b!3720305 () Bool)

(declare-fun c!643400 () Bool)

(assert (=> b!3720305 (= c!643400 (nullable!3782 (regOne!22230 lt!1297728)))))

(assert (=> b!3720305 (= e!2303248 e!2303247)))

(assert (= (and d!1089181 c!643402) b!3720300))

(assert (= (and d!1089181 (not c!643402)) b!3720299))

(assert (= (and b!3720299 c!643399) b!3720303))

(assert (= (and b!3720299 (not c!643399)) b!3720302))

(assert (= (and b!3720302 c!643401) b!3720306))

(assert (= (and b!3720302 (not c!643401)) b!3720297))

(assert (= (and b!3720297 c!643403) b!3720298))

(assert (= (and b!3720297 (not c!643403)) b!3720305))

(assert (= (and b!3720305 c!643400) b!3720301))

(assert (= (and b!3720305 (not c!643400)) b!3720304))

(assert (= (or b!3720301 b!3720304) bm!270259))

(assert (= (or b!3720298 b!3720301) bm!270258))

(assert (= (or b!3720306 bm!270258) bm!270261))

(assert (= (or b!3720306 bm!270259) bm!270260))

(declare-fun m!4224945 () Bool)

(assert (=> bm!270260 m!4224945))

(declare-fun m!4224947 () Bool)

(assert (=> bm!270261 m!4224947))

(declare-fun m!4224949 () Bool)

(assert (=> d!1089181 m!4224949))

(assert (=> d!1089181 m!4223825))

(assert (=> b!3720305 m!4224333))

(assert (=> b!3719009 d!1089181))

(declare-fun e!2303255 () Bool)

(declare-fun b!3720307 () Bool)

(assert (=> b!3720307 (= e!2303255 (not (= (head!8025 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))) (c!642993 (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))))))

(declare-fun b!3720308 () Bool)

(declare-fun res!1512147 () Bool)

(declare-fun e!2303253 () Bool)

(assert (=> b!3720308 (=> (not res!1512147) (not e!2303253))))

(declare-fun call!270267 () Bool)

(assert (=> b!3720308 (= res!1512147 (not call!270267))))

(declare-fun b!3720309 () Bool)

(declare-fun e!2303251 () Bool)

(declare-fun e!2303254 () Bool)

(assert (=> b!3720309 (= e!2303251 e!2303254)))

(declare-fun c!643405 () Bool)

(assert (=> b!3720309 (= c!643405 ((_ is EmptyLang!10859) (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))))

(declare-fun b!3720310 () Bool)

(declare-fun lt!1297898 () Bool)

(assert (=> b!3720310 (= e!2303251 (= lt!1297898 call!270267))))

(declare-fun d!1089185 () Bool)

(assert (=> d!1089185 e!2303251))

(declare-fun c!643406 () Bool)

(assert (=> d!1089185 (= c!643406 ((_ is EmptyExpr!10859) (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))))

(declare-fun e!2303250 () Bool)

(assert (=> d!1089185 (= lt!1297898 e!2303250)))

(declare-fun c!643404 () Bool)

(assert (=> d!1089185 (= c!643404 (isEmpty!23512 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(assert (=> d!1089185 (validRegex!4966 (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(assert (=> d!1089185 (= (matchR!5304 (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))) (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))) lt!1297898)))

(declare-fun b!3720311 () Bool)

(declare-fun res!1512148 () Bool)

(declare-fun e!2303252 () Bool)

(assert (=> b!3720311 (=> res!1512148 e!2303252)))

(assert (=> b!3720311 (= res!1512148 e!2303253)))

(declare-fun res!1512145 () Bool)

(assert (=> b!3720311 (=> (not res!1512145) (not e!2303253))))

(assert (=> b!3720311 (= res!1512145 lt!1297898)))

(declare-fun b!3720312 () Bool)

(declare-fun res!1512144 () Bool)

(assert (=> b!3720312 (=> (not res!1512144) (not e!2303253))))

(assert (=> b!3720312 (= res!1512144 (isEmpty!23512 (tail!5752 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))))

(declare-fun b!3720313 () Bool)

(declare-fun res!1512150 () Bool)

(assert (=> b!3720313 (=> res!1512150 e!2303255)))

(assert (=> b!3720313 (= res!1512150 (not (isEmpty!23512 (tail!5752 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))))

(declare-fun b!3720314 () Bool)

(assert (=> b!3720314 (= e!2303250 (matchR!5304 (derivativeStep!3324 (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))) (head!8025 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729))))) (tail!5752 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))))

(declare-fun bm!270262 () Bool)

(assert (=> bm!270262 (= call!270267 (isEmpty!23512 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(declare-fun b!3720315 () Bool)

(declare-fun e!2303249 () Bool)

(assert (=> b!3720315 (= e!2303252 e!2303249)))

(declare-fun res!1512143 () Bool)

(assert (=> b!3720315 (=> (not res!1512143) (not e!2303249))))

(assert (=> b!3720315 (= res!1512143 (not lt!1297898))))

(declare-fun b!3720316 () Bool)

(assert (=> b!3720316 (= e!2303250 (nullable!3782 (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729))))))))

(declare-fun b!3720317 () Bool)

(assert (=> b!3720317 (= e!2303254 (not lt!1297898))))

(declare-fun b!3720318 () Bool)

(assert (=> b!3720318 (= e!2303249 e!2303255)))

(declare-fun res!1512146 () Bool)

(assert (=> b!3720318 (=> res!1512146 e!2303255)))

(assert (=> b!3720318 (= res!1512146 call!270267)))

(declare-fun b!3720319 () Bool)

(declare-fun res!1512149 () Bool)

(assert (=> b!3720319 (=> res!1512149 e!2303252)))

(assert (=> b!3720319 (= res!1512149 (not ((_ is ElementMatch!10859) (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))))

(assert (=> b!3720319 (= e!2303254 e!2303252)))

(declare-fun b!3720320 () Bool)

(assert (=> b!3720320 (= e!2303253 (= (head!8025 (tail!5752 (Cons!39616 c!13576 (_1!22746 lt!1297729)))) (c!642993 (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))))

(assert (= (and d!1089185 c!643404) b!3720316))

(assert (= (and d!1089185 (not c!643404)) b!3720314))

(assert (= (and d!1089185 c!643406) b!3720310))

(assert (= (and d!1089185 (not c!643406)) b!3720309))

(assert (= (and b!3720309 c!643405) b!3720317))

(assert (= (and b!3720309 (not c!643405)) b!3720319))

(assert (= (and b!3720319 (not res!1512149)) b!3720311))

(assert (= (and b!3720311 res!1512145) b!3720308))

(assert (= (and b!3720308 res!1512147) b!3720312))

(assert (= (and b!3720312 res!1512144) b!3720320))

(assert (= (and b!3720311 (not res!1512148)) b!3720315))

(assert (= (and b!3720315 res!1512143) b!3720318))

(assert (= (and b!3720318 (not res!1512146)) b!3720313))

(assert (= (and b!3720313 (not res!1512150)) b!3720307))

(assert (= (or b!3720310 b!3720308 b!3720318) bm!270262))

(assert (=> d!1089185 m!4224179))

(assert (=> d!1089185 m!4224183))

(assert (=> d!1089185 m!4224177))

(declare-fun m!4224951 () Bool)

(assert (=> d!1089185 m!4224951))

(assert (=> b!3720320 m!4224179))

(declare-fun m!4224953 () Bool)

(assert (=> b!3720320 m!4224953))

(assert (=> b!3720307 m!4224179))

(assert (=> b!3720307 m!4224953))

(assert (=> b!3720314 m!4224179))

(assert (=> b!3720314 m!4224953))

(assert (=> b!3720314 m!4224177))

(assert (=> b!3720314 m!4224953))

(declare-fun m!4224955 () Bool)

(assert (=> b!3720314 m!4224955))

(assert (=> b!3720314 m!4224179))

(declare-fun m!4224957 () Bool)

(assert (=> b!3720314 m!4224957))

(assert (=> b!3720314 m!4224955))

(assert (=> b!3720314 m!4224957))

(declare-fun m!4224959 () Bool)

(assert (=> b!3720314 m!4224959))

(assert (=> b!3720313 m!4224179))

(assert (=> b!3720313 m!4224957))

(assert (=> b!3720313 m!4224957))

(declare-fun m!4224961 () Bool)

(assert (=> b!3720313 m!4224961))

(assert (=> b!3720312 m!4224179))

(assert (=> b!3720312 m!4224957))

(assert (=> b!3720312 m!4224957))

(assert (=> b!3720312 m!4224961))

(assert (=> bm!270262 m!4224179))

(assert (=> bm!270262 m!4224183))

(assert (=> b!3720316 m!4224177))

(declare-fun m!4224963 () Bool)

(assert (=> b!3720316 m!4224963))

(assert (=> b!3719445 d!1089185))

(declare-fun b!3720331 () Bool)

(declare-fun e!2303262 () Regex!10859)

(declare-fun e!2303265 () Regex!10859)

(assert (=> b!3720331 (= e!2303262 e!2303265)))

(declare-fun c!643416 () Bool)

(assert (=> b!3720331 (= c!643416 ((_ is Star!10859) (regOne!22230 r!26326)))))

(declare-fun b!3720332 () Bool)

(declare-fun call!270274 () Regex!10859)

(assert (=> b!3720332 (= e!2303265 (Concat!17130 call!270274 (regOne!22230 r!26326)))))

(declare-fun bm!270267 () Bool)

(declare-fun call!270275 () Regex!10859)

(assert (=> bm!270267 (= call!270274 call!270275)))

(declare-fun b!3720333 () Bool)

(declare-fun e!2303263 () Regex!10859)

(declare-fun e!2303261 () Regex!10859)

(assert (=> b!3720333 (= e!2303263 e!2303261)))

(declare-fun c!643412 () Bool)

(assert (=> b!3720333 (= c!643412 ((_ is ElementMatch!10859) (regOne!22230 r!26326)))))

(declare-fun b!3720334 () Bool)

(assert (=> b!3720334 (= e!2303263 EmptyLang!10859)))

(declare-fun bm!270268 () Bool)

(declare-fun call!270273 () Regex!10859)

(declare-fun call!270272 () Regex!10859)

(assert (=> bm!270268 (= call!270273 call!270272)))

(declare-fun e!2303264 () Regex!10859)

(declare-fun b!3720335 () Bool)

(assert (=> b!3720335 (= e!2303264 (Union!10859 (Concat!17130 call!270273 (regTwo!22230 (regOne!22230 r!26326))) call!270274))))

(declare-fun b!3720336 () Bool)

(declare-fun c!643414 () Bool)

(assert (=> b!3720336 (= c!643414 ((_ is Union!10859) (regOne!22230 r!26326)))))

(assert (=> b!3720336 (= e!2303261 e!2303262)))

(declare-fun bm!270269 () Bool)

(assert (=> bm!270269 (= call!270272 (derivativeStep!3324 (ite c!643414 (regOne!22231 (regOne!22230 r!26326)) (regOne!22230 (regOne!22230 r!26326))) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(declare-fun b!3720337 () Bool)

(assert (=> b!3720337 (= e!2303261 (ite (= (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729))) (c!642993 (regOne!22230 r!26326))) EmptyExpr!10859 EmptyLang!10859))))

(declare-fun b!3720338 () Bool)

(assert (=> b!3720338 (= e!2303264 (Union!10859 (Concat!17130 call!270273 (regTwo!22230 (regOne!22230 r!26326))) EmptyLang!10859))))

(declare-fun bm!270270 () Bool)

(assert (=> bm!270270 (= call!270275 (derivativeStep!3324 (ite c!643414 (regTwo!22231 (regOne!22230 r!26326)) (ite c!643416 (reg!11188 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))))))

(declare-fun b!3720340 () Bool)

(assert (=> b!3720340 (= e!2303262 (Union!10859 call!270272 call!270275))))

(declare-fun d!1089189 () Bool)

(declare-fun lt!1297900 () Regex!10859)

(assert (=> d!1089189 (validRegex!4966 lt!1297900)))

(assert (=> d!1089189 (= lt!1297900 e!2303263)))

(declare-fun c!643415 () Bool)

(assert (=> d!1089189 (= c!643415 (or ((_ is EmptyExpr!10859) (regOne!22230 r!26326)) ((_ is EmptyLang!10859) (regOne!22230 r!26326))))))

(assert (=> d!1089189 (validRegex!4966 (regOne!22230 r!26326))))

(assert (=> d!1089189 (= (derivativeStep!3324 (regOne!22230 r!26326) (head!8025 (Cons!39616 c!13576 (_1!22746 lt!1297729)))) lt!1297900)))

(declare-fun b!3720339 () Bool)

(declare-fun c!643413 () Bool)

(assert (=> b!3720339 (= c!643413 (nullable!3782 (regOne!22230 (regOne!22230 r!26326))))))

(assert (=> b!3720339 (= e!2303265 e!2303264)))

(assert (= (and d!1089189 c!643415) b!3720334))

(assert (= (and d!1089189 (not c!643415)) b!3720333))

(assert (= (and b!3720333 c!643412) b!3720337))

(assert (= (and b!3720333 (not c!643412)) b!3720336))

(assert (= (and b!3720336 c!643414) b!3720340))

(assert (= (and b!3720336 (not c!643414)) b!3720331))

(assert (= (and b!3720331 c!643416) b!3720332))

(assert (= (and b!3720331 (not c!643416)) b!3720339))

(assert (= (and b!3720339 c!643413) b!3720335))

(assert (= (and b!3720339 (not c!643413)) b!3720338))

(assert (= (or b!3720335 b!3720338) bm!270268))

(assert (= (or b!3720332 b!3720335) bm!270267))

(assert (= (or b!3720340 bm!270267) bm!270270))

(assert (= (or b!3720340 bm!270268) bm!270269))

(assert (=> bm!270269 m!4224175))

(declare-fun m!4224975 () Bool)

(assert (=> bm!270269 m!4224975))

(assert (=> bm!270270 m!4224175))

(declare-fun m!4224977 () Bool)

(assert (=> bm!270270 m!4224977))

(declare-fun m!4224979 () Bool)

(assert (=> d!1089189 m!4224979))

(assert (=> d!1089189 m!4223731))

(assert (=> b!3720339 m!4224227))

(assert (=> b!3719445 d!1089189))

(assert (=> b!3719445 d!1088899))

(assert (=> b!3719445 d!1089015))

(declare-fun b!3720341 () Bool)

(declare-fun e!2303271 () Bool)

(declare-fun e!2303267 () Bool)

(assert (=> b!3720341 (= e!2303271 e!2303267)))

(declare-fun res!1512153 () Bool)

(assert (=> b!3720341 (=> res!1512153 e!2303267)))

(assert (=> b!3720341 (= res!1512153 ((_ is Star!10859) (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)))))

(declare-fun b!3720342 () Bool)

(declare-fun e!2303268 () Bool)

(declare-fun call!270277 () Bool)

(assert (=> b!3720342 (= e!2303268 call!270277)))

(declare-fun b!3720343 () Bool)

(declare-fun e!2303270 () Bool)

(assert (=> b!3720343 (= e!2303270 e!2303268)))

(declare-fun res!1512154 () Bool)

(declare-fun call!270276 () Bool)

(assert (=> b!3720343 (= res!1512154 call!270276)))

(assert (=> b!3720343 (=> (not res!1512154) (not e!2303268))))

(declare-fun b!3720344 () Bool)

(assert (=> b!3720344 (= e!2303267 e!2303270)))

(declare-fun c!643417 () Bool)

(assert (=> b!3720344 (= c!643417 ((_ is Union!10859) (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)))))

(declare-fun b!3720345 () Bool)

(declare-fun e!2303266 () Bool)

(assert (=> b!3720345 (= e!2303270 e!2303266)))

(declare-fun res!1512151 () Bool)

(assert (=> b!3720345 (= res!1512151 call!270277)))

(assert (=> b!3720345 (=> res!1512151 e!2303266)))

(declare-fun d!1089193 () Bool)

(declare-fun res!1512152 () Bool)

(declare-fun e!2303269 () Bool)

(assert (=> d!1089193 (=> res!1512152 e!2303269)))

(assert (=> d!1089193 (= res!1512152 ((_ is EmptyExpr!10859) (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)))))

(assert (=> d!1089193 (= (nullableFct!1070 (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)) e!2303269)))

(declare-fun b!3720346 () Bool)

(assert (=> b!3720346 (= e!2303269 e!2303271)))

(declare-fun res!1512155 () Bool)

(assert (=> b!3720346 (=> (not res!1512155) (not e!2303271))))

(assert (=> b!3720346 (= res!1512155 (and (not ((_ is EmptyLang!10859) (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933))) (not ((_ is ElementMatch!10859) (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)))))))

(declare-fun bm!270271 () Bool)

(assert (=> bm!270271 (= call!270277 (nullable!3782 (ite c!643417 (regOne!22231 (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)) (regTwo!22230 (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3720347 () Bool)

(assert (=> b!3720347 (= e!2303266 call!270276)))

(declare-fun bm!270272 () Bool)

(assert (=> bm!270272 (= call!270276 (nullable!3782 (ite c!643417 (regTwo!22231 (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)) (regOne!22230 (derivative!373 (derivativeStep!3324 r!26326 c!13576) tl!3933)))))))

(assert (= (and d!1089193 (not res!1512152)) b!3720346))

(assert (= (and b!3720346 res!1512155) b!3720341))

(assert (= (and b!3720341 (not res!1512153)) b!3720344))

(assert (= (and b!3720344 c!643417) b!3720345))

(assert (= (and b!3720344 (not c!643417)) b!3720343))

(assert (= (and b!3720345 (not res!1512151)) b!3720347))

(assert (= (and b!3720343 res!1512154) b!3720342))

(assert (= (or b!3720347 b!3720343) bm!270272))

(assert (= (or b!3720345 b!3720342) bm!270271))

(declare-fun m!4224981 () Bool)

(assert (=> bm!270271 m!4224981))

(declare-fun m!4224983 () Bool)

(assert (=> bm!270272 m!4224983))

(assert (=> d!1088841 d!1089193))

(assert (=> b!3718963 d!1088911))

(declare-fun d!1089195 () Bool)

(declare-fun lt!1297901 () Bool)

(assert (=> d!1089195 (= lt!1297901 (select (content!5741 (t!302423 (usedCharacters!1122 (regOne!22230 r!26326)))) c!13576))))

(declare-fun e!2303273 () Bool)

(assert (=> d!1089195 (= lt!1297901 e!2303273)))

(declare-fun res!1512156 () Bool)

(assert (=> d!1089195 (=> (not res!1512156) (not e!2303273))))

(assert (=> d!1089195 (= res!1512156 ((_ is Cons!39616) (t!302423 (usedCharacters!1122 (regOne!22230 r!26326)))))))

(assert (=> d!1089195 (= (contains!7952 (t!302423 (usedCharacters!1122 (regOne!22230 r!26326))) c!13576) lt!1297901)))

(declare-fun b!3720348 () Bool)

(declare-fun e!2303272 () Bool)

(assert (=> b!3720348 (= e!2303273 e!2303272)))

(declare-fun res!1512157 () Bool)

(assert (=> b!3720348 (=> res!1512157 e!2303272)))

(assert (=> b!3720348 (= res!1512157 (= (h!45036 (t!302423 (usedCharacters!1122 (regOne!22230 r!26326)))) c!13576))))

(declare-fun b!3720349 () Bool)

(assert (=> b!3720349 (= e!2303272 (contains!7952 (t!302423 (t!302423 (usedCharacters!1122 (regOne!22230 r!26326)))) c!13576))))

(assert (= (and d!1089195 res!1512156) b!3720348))

(assert (= (and b!3720348 (not res!1512157)) b!3720349))

(assert (=> d!1089195 m!4224337))

(declare-fun m!4224985 () Bool)

(assert (=> d!1089195 m!4224985))

(declare-fun m!4224987 () Bool)

(assert (=> b!3720349 m!4224987))

(assert (=> b!3719090 d!1089195))

(assert (=> d!1088859 d!1088869))

(declare-fun d!1089197 () Bool)

(assert (=> d!1089197 (= (derivative!373 EmptyLang!10859 tl!3933) EmptyLang!10859)))

(assert (=> d!1089197 true))

(declare-fun _$134!189 () Unit!57516)

(assert (=> d!1089197 (= (choose!22210 EmptyLang!10859 tl!3933) _$134!189)))

(declare-fun bs!574938 () Bool)

(assert (= bs!574938 d!1089197))

(assert (=> bs!574938 m!4223783))

(assert (=> d!1088859 d!1089197))

(declare-fun b!3720354 () Bool)

(declare-fun res!1512162 () Bool)

(declare-fun e!2303281 () Bool)

(assert (=> b!3720354 (=> res!1512162 e!2303281)))

(assert (=> b!3720354 (= res!1512162 (not ((_ is Concat!17130) (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))

(declare-fun e!2303282 () Bool)

(assert (=> b!3720354 (= e!2303282 e!2303281)))

(declare-fun b!3720356 () Bool)

(declare-fun res!1512158 () Bool)

(declare-fun e!2303280 () Bool)

(assert (=> b!3720356 (=> (not res!1512158) (not e!2303280))))

(declare-fun call!270280 () Bool)

(assert (=> b!3720356 (= res!1512158 call!270280)))

(assert (=> b!3720356 (= e!2303282 e!2303280)))

(declare-fun c!643421 () Bool)

(declare-fun call!270278 () Bool)

(declare-fun c!643420 () Bool)

(declare-fun bm!270273 () Bool)

(assert (=> bm!270273 (= call!270278 (validRegex!4966 (ite c!643420 (reg!11188 (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))) (ite c!643421 (regTwo!22231 (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))) (regOne!22230 (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326))))))))))

(declare-fun bm!270274 () Bool)

(assert (=> bm!270274 (= call!270280 (validRegex!4966 (ite c!643421 (regOne!22231 (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))) (regTwo!22230 (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))))

(declare-fun b!3720357 () Bool)

(declare-fun e!2303279 () Bool)

(assert (=> b!3720357 (= e!2303279 call!270280)))

(declare-fun b!3720358 () Bool)

(declare-fun e!2303276 () Bool)

(assert (=> b!3720358 (= e!2303276 e!2303282)))

(assert (=> b!3720358 (= c!643421 ((_ is Union!10859) (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))

(declare-fun b!3720359 () Bool)

(declare-fun e!2303278 () Bool)

(assert (=> b!3720359 (= e!2303278 e!2303276)))

(assert (=> b!3720359 (= c!643420 ((_ is Star!10859) (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))

(declare-fun b!3720360 () Bool)

(declare-fun e!2303277 () Bool)

(assert (=> b!3720360 (= e!2303276 e!2303277)))

(declare-fun res!1512161 () Bool)

(assert (=> b!3720360 (= res!1512161 (not (nullable!3782 (reg!11188 (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))))

(assert (=> b!3720360 (=> (not res!1512161) (not e!2303277))))

(declare-fun bm!270275 () Bool)

(declare-fun call!270279 () Bool)

(assert (=> bm!270275 (= call!270279 call!270278)))

(declare-fun b!3720355 () Bool)

(assert (=> b!3720355 (= e!2303281 e!2303279)))

(declare-fun res!1512159 () Bool)

(assert (=> b!3720355 (=> (not res!1512159) (not e!2303279))))

(assert (=> b!3720355 (= res!1512159 call!270279)))

(declare-fun d!1089199 () Bool)

(declare-fun res!1512160 () Bool)

(assert (=> d!1089199 (=> res!1512160 e!2303278)))

(assert (=> d!1089199 (= res!1512160 ((_ is ElementMatch!10859) (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))))))

(assert (=> d!1089199 (= (validRegex!4966 (ite c!642999 (regOne!22231 (regOne!22230 r!26326)) (regTwo!22230 (regOne!22230 r!26326)))) e!2303278)))

(declare-fun b!3720361 () Bool)

(assert (=> b!3720361 (= e!2303280 call!270279)))

(declare-fun b!3720362 () Bool)

(assert (=> b!3720362 (= e!2303277 call!270278)))

(assert (= (and d!1089199 (not res!1512160)) b!3720359))

(assert (= (and b!3720359 c!643420) b!3720360))

(assert (= (and b!3720359 (not c!643420)) b!3720358))

(assert (= (and b!3720360 res!1512161) b!3720362))

(assert (= (and b!3720358 c!643421) b!3720356))

(assert (= (and b!3720358 (not c!643421)) b!3720354))

(assert (= (and b!3720356 res!1512158) b!3720361))

(assert (= (and b!3720354 (not res!1512162)) b!3720355))

(assert (= (and b!3720355 res!1512159) b!3720357))

(assert (= (or b!3720361 b!3720355) bm!270275))

(assert (= (or b!3720356 b!3720357) bm!270274))

(assert (= (or b!3720362 bm!270275) bm!270273))

(declare-fun m!4224989 () Bool)

(assert (=> bm!270273 m!4224989))

(declare-fun m!4224991 () Bool)

(assert (=> bm!270274 m!4224991))

(declare-fun m!4224993 () Bool)

(assert (=> b!3720360 m!4224993))

(assert (=> bm!269979 d!1089199))

(assert (=> b!3719477 d!1088895))

(assert (=> b!3719477 d!1088883))

(assert (=> b!3719447 d!1088839))

(assert (=> b!3719498 d!1088911))

(assert (=> d!1088865 d!1089039))

(declare-fun b!3720365 () Bool)

(declare-fun res!1512167 () Bool)

(declare-fun e!2303289 () Bool)

(assert (=> b!3720365 (=> res!1512167 e!2303289)))

(assert (=> b!3720365 (= res!1512167 (not ((_ is Concat!17130) (derivative!373 lt!1297736 tl!3933))))))

(declare-fun e!2303290 () Bool)

(assert (=> b!3720365 (= e!2303290 e!2303289)))

(declare-fun b!3720367 () Bool)

(declare-fun res!1512163 () Bool)

(declare-fun e!2303288 () Bool)

(assert (=> b!3720367 (=> (not res!1512163) (not e!2303288))))

(declare-fun call!270283 () Bool)

(assert (=> b!3720367 (= res!1512163 call!270283)))

(assert (=> b!3720367 (= e!2303290 e!2303288)))

(declare-fun bm!270276 () Bool)

(declare-fun c!643424 () Bool)

(declare-fun c!643423 () Bool)

(declare-fun call!270281 () Bool)

(assert (=> bm!270276 (= call!270281 (validRegex!4966 (ite c!643423 (reg!11188 (derivative!373 lt!1297736 tl!3933)) (ite c!643424 (regTwo!22231 (derivative!373 lt!1297736 tl!3933)) (regOne!22230 (derivative!373 lt!1297736 tl!3933))))))))

(declare-fun bm!270277 () Bool)

(assert (=> bm!270277 (= call!270283 (validRegex!4966 (ite c!643424 (regOne!22231 (derivative!373 lt!1297736 tl!3933)) (regTwo!22230 (derivative!373 lt!1297736 tl!3933)))))))

(declare-fun b!3720368 () Bool)

(declare-fun e!2303287 () Bool)

(assert (=> b!3720368 (= e!2303287 call!270283)))

(declare-fun b!3720369 () Bool)

(declare-fun e!2303284 () Bool)

(assert (=> b!3720369 (= e!2303284 e!2303290)))

(assert (=> b!3720369 (= c!643424 ((_ is Union!10859) (derivative!373 lt!1297736 tl!3933)))))

(declare-fun b!3720370 () Bool)

(declare-fun e!2303286 () Bool)

(assert (=> b!3720370 (= e!2303286 e!2303284)))

(assert (=> b!3720370 (= c!643423 ((_ is Star!10859) (derivative!373 lt!1297736 tl!3933)))))

(declare-fun b!3720371 () Bool)

(declare-fun e!2303285 () Bool)

(assert (=> b!3720371 (= e!2303284 e!2303285)))

(declare-fun res!1512166 () Bool)

(assert (=> b!3720371 (= res!1512166 (not (nullable!3782 (reg!11188 (derivative!373 lt!1297736 tl!3933)))))))

(assert (=> b!3720371 (=> (not res!1512166) (not e!2303285))))

(declare-fun bm!270278 () Bool)

(declare-fun call!270282 () Bool)

(assert (=> bm!270278 (= call!270282 call!270281)))

(declare-fun b!3720366 () Bool)

(assert (=> b!3720366 (= e!2303289 e!2303287)))

(declare-fun res!1512164 () Bool)

(assert (=> b!3720366 (=> (not res!1512164) (not e!2303287))))

(assert (=> b!3720366 (= res!1512164 call!270282)))

(declare-fun d!1089201 () Bool)

(declare-fun res!1512165 () Bool)

(assert (=> d!1089201 (=> res!1512165 e!2303286)))

(assert (=> d!1089201 (= res!1512165 ((_ is ElementMatch!10859) (derivative!373 lt!1297736 tl!3933)))))

(assert (=> d!1089201 (= (validRegex!4966 (derivative!373 lt!1297736 tl!3933)) e!2303286)))

(declare-fun b!3720372 () Bool)

(assert (=> b!3720372 (= e!2303288 call!270282)))

(declare-fun b!3720373 () Bool)

(assert (=> b!3720373 (= e!2303285 call!270281)))

(assert (= (and d!1089201 (not res!1512165)) b!3720370))

(assert (= (and b!3720370 c!643423) b!3720371))

(assert (= (and b!3720370 (not c!643423)) b!3720369))

(assert (= (and b!3720371 res!1512166) b!3720373))

(assert (= (and b!3720369 c!643424) b!3720367))

(assert (= (and b!3720369 (not c!643424)) b!3720365))

(assert (= (and b!3720367 res!1512163) b!3720372))

(assert (= (and b!3720365 (not res!1512167)) b!3720366))

(assert (= (and b!3720366 res!1512164) b!3720368))

(assert (= (or b!3720372 b!3720366) bm!270278))

(assert (= (or b!3720367 b!3720368) bm!270277))

(assert (= (or b!3720373 bm!270278) bm!270276))

(declare-fun m!4224997 () Bool)

(assert (=> bm!270276 m!4224997))

(declare-fun m!4224999 () Bool)

(assert (=> bm!270277 m!4224999))

(declare-fun m!4225001 () Bool)

(assert (=> b!3720371 m!4225001))

(assert (=> d!1088865 d!1089201))

(declare-fun b!3720379 () Bool)

(declare-fun e!2303293 () Bool)

(declare-fun tp!1131314 () Bool)

(declare-fun tp!1131317 () Bool)

(assert (=> b!3720379 (= e!2303293 (and tp!1131314 tp!1131317))))

(declare-fun b!3720378 () Bool)

(assert (=> b!3720378 (= e!2303293 tp_is_empty!18733)))

(assert (=> b!3719572 (= tp!1131306 e!2303293)))

(declare-fun b!3720380 () Bool)

(declare-fun tp!1131315 () Bool)

(assert (=> b!3720380 (= e!2303293 tp!1131315)))

(declare-fun b!3720381 () Bool)

(declare-fun tp!1131316 () Bool)

(declare-fun tp!1131313 () Bool)

(assert (=> b!3720381 (= e!2303293 (and tp!1131316 tp!1131313))))

(assert (= (and b!3719572 ((_ is ElementMatch!10859) (regOne!22231 (regTwo!22231 r!26326)))) b!3720378))

(assert (= (and b!3719572 ((_ is Concat!17130) (regOne!22231 (regTwo!22231 r!26326)))) b!3720379))

(assert (= (and b!3719572 ((_ is Star!10859) (regOne!22231 (regTwo!22231 r!26326)))) b!3720380))

(assert (= (and b!3719572 ((_ is Union!10859) (regOne!22231 (regTwo!22231 r!26326)))) b!3720381))

(declare-fun b!3720384 () Bool)

(declare-fun e!2303301 () Bool)

(declare-fun tp!1131319 () Bool)

(declare-fun tp!1131322 () Bool)

(assert (=> b!3720384 (= e!2303301 (and tp!1131319 tp!1131322))))

(declare-fun b!3720382 () Bool)

(assert (=> b!3720382 (= e!2303301 tp_is_empty!18733)))

(assert (=> b!3719572 (= tp!1131303 e!2303301)))

(declare-fun b!3720386 () Bool)

(declare-fun tp!1131320 () Bool)

(assert (=> b!3720386 (= e!2303301 tp!1131320)))

(declare-fun b!3720388 () Bool)

(declare-fun tp!1131321 () Bool)

(declare-fun tp!1131318 () Bool)

(assert (=> b!3720388 (= e!2303301 (and tp!1131321 tp!1131318))))

(assert (= (and b!3719572 ((_ is ElementMatch!10859) (regTwo!22231 (regTwo!22231 r!26326)))) b!3720382))

(assert (= (and b!3719572 ((_ is Concat!17130) (regTwo!22231 (regTwo!22231 r!26326)))) b!3720384))

(assert (= (and b!3719572 ((_ is Star!10859) (regTwo!22231 (regTwo!22231 r!26326)))) b!3720386))

(assert (= (and b!3719572 ((_ is Union!10859) (regTwo!22231 (regTwo!22231 r!26326)))) b!3720388))

(declare-fun b!3720396 () Bool)

(declare-fun e!2303302 () Bool)

(declare-fun tp!1131324 () Bool)

(declare-fun tp!1131327 () Bool)

(assert (=> b!3720396 (= e!2303302 (and tp!1131324 tp!1131327))))

(declare-fun b!3720395 () Bool)

(assert (=> b!3720395 (= e!2303302 tp_is_empty!18733)))

(assert (=> b!3719558 (= tp!1131289 e!2303302)))

(declare-fun b!3720397 () Bool)

(declare-fun tp!1131325 () Bool)

(assert (=> b!3720397 (= e!2303302 tp!1131325)))

(declare-fun b!3720398 () Bool)

(declare-fun tp!1131326 () Bool)

(declare-fun tp!1131323 () Bool)

(assert (=> b!3720398 (= e!2303302 (and tp!1131326 tp!1131323))))

(assert (= (and b!3719558 ((_ is ElementMatch!10859) (regOne!22230 (regOne!22230 r!26326)))) b!3720395))

(assert (= (and b!3719558 ((_ is Concat!17130) (regOne!22230 (regOne!22230 r!26326)))) b!3720396))

(assert (= (and b!3719558 ((_ is Star!10859) (regOne!22230 (regOne!22230 r!26326)))) b!3720397))

(assert (= (and b!3719558 ((_ is Union!10859) (regOne!22230 (regOne!22230 r!26326)))) b!3720398))

(declare-fun b!3720400 () Bool)

(declare-fun e!2303303 () Bool)

(declare-fun tp!1131329 () Bool)

(declare-fun tp!1131332 () Bool)

(assert (=> b!3720400 (= e!2303303 (and tp!1131329 tp!1131332))))

(declare-fun b!3720399 () Bool)

(assert (=> b!3720399 (= e!2303303 tp_is_empty!18733)))

(assert (=> b!3719558 (= tp!1131292 e!2303303)))

(declare-fun b!3720401 () Bool)

(declare-fun tp!1131330 () Bool)

(assert (=> b!3720401 (= e!2303303 tp!1131330)))

(declare-fun b!3720402 () Bool)

(declare-fun tp!1131331 () Bool)

(declare-fun tp!1131328 () Bool)

(assert (=> b!3720402 (= e!2303303 (and tp!1131331 tp!1131328))))

(assert (= (and b!3719558 ((_ is ElementMatch!10859) (regTwo!22230 (regOne!22230 r!26326)))) b!3720399))

(assert (= (and b!3719558 ((_ is Concat!17130) (regTwo!22230 (regOne!22230 r!26326)))) b!3720400))

(assert (= (and b!3719558 ((_ is Star!10859) (regTwo!22230 (regOne!22230 r!26326)))) b!3720401))

(assert (= (and b!3719558 ((_ is Union!10859) (regTwo!22230 (regOne!22230 r!26326)))) b!3720402))

(declare-fun b!3720404 () Bool)

(declare-fun e!2303304 () Bool)

(declare-fun tp!1131334 () Bool)

(declare-fun tp!1131337 () Bool)

(assert (=> b!3720404 (= e!2303304 (and tp!1131334 tp!1131337))))

(declare-fun b!3720403 () Bool)

(assert (=> b!3720403 (= e!2303304 tp_is_empty!18733)))

(assert (=> b!3719563 (= tp!1131295 e!2303304)))

(declare-fun b!3720405 () Bool)

(declare-fun tp!1131335 () Bool)

(assert (=> b!3720405 (= e!2303304 tp!1131335)))

(declare-fun b!3720406 () Bool)

(declare-fun tp!1131336 () Bool)

(declare-fun tp!1131333 () Bool)

(assert (=> b!3720406 (= e!2303304 (and tp!1131336 tp!1131333))))

(assert (= (and b!3719563 ((_ is ElementMatch!10859) (reg!11188 (regTwo!22230 r!26326)))) b!3720403))

(assert (= (and b!3719563 ((_ is Concat!17130) (reg!11188 (regTwo!22230 r!26326)))) b!3720404))

(assert (= (and b!3719563 ((_ is Star!10859) (reg!11188 (regTwo!22230 r!26326)))) b!3720405))

(assert (= (and b!3719563 ((_ is Union!10859) (reg!11188 (regTwo!22230 r!26326)))) b!3720406))

(declare-fun b!3720408 () Bool)

(declare-fun e!2303305 () Bool)

(declare-fun tp!1131339 () Bool)

(declare-fun tp!1131342 () Bool)

(assert (=> b!3720408 (= e!2303305 (and tp!1131339 tp!1131342))))

(declare-fun b!3720407 () Bool)

(assert (=> b!3720407 (= e!2303305 tp_is_empty!18733)))

(assert (=> b!3719568 (= tp!1131301 e!2303305)))

(declare-fun b!3720409 () Bool)

(declare-fun tp!1131340 () Bool)

(assert (=> b!3720409 (= e!2303305 tp!1131340)))

(declare-fun b!3720410 () Bool)

(declare-fun tp!1131341 () Bool)

(declare-fun tp!1131338 () Bool)

(assert (=> b!3720410 (= e!2303305 (and tp!1131341 tp!1131338))))

(assert (= (and b!3719568 ((_ is ElementMatch!10859) (regOne!22231 (regOne!22231 r!26326)))) b!3720407))

(assert (= (and b!3719568 ((_ is Concat!17130) (regOne!22231 (regOne!22231 r!26326)))) b!3720408))

(assert (= (and b!3719568 ((_ is Star!10859) (regOne!22231 (regOne!22231 r!26326)))) b!3720409))

(assert (= (and b!3719568 ((_ is Union!10859) (regOne!22231 (regOne!22231 r!26326)))) b!3720410))

(declare-fun b!3720412 () Bool)

(declare-fun e!2303306 () Bool)

(declare-fun tp!1131344 () Bool)

(declare-fun tp!1131347 () Bool)

(assert (=> b!3720412 (= e!2303306 (and tp!1131344 tp!1131347))))

(declare-fun b!3720411 () Bool)

(assert (=> b!3720411 (= e!2303306 tp_is_empty!18733)))

(assert (=> b!3719568 (= tp!1131298 e!2303306)))

(declare-fun b!3720413 () Bool)

(declare-fun tp!1131345 () Bool)

(assert (=> b!3720413 (= e!2303306 tp!1131345)))

(declare-fun b!3720414 () Bool)

(declare-fun tp!1131346 () Bool)

(declare-fun tp!1131343 () Bool)

(assert (=> b!3720414 (= e!2303306 (and tp!1131346 tp!1131343))))

(assert (= (and b!3719568 ((_ is ElementMatch!10859) (regTwo!22231 (regOne!22231 r!26326)))) b!3720411))

(assert (= (and b!3719568 ((_ is Concat!17130) (regTwo!22231 (regOne!22231 r!26326)))) b!3720412))

(assert (= (and b!3719568 ((_ is Star!10859) (regTwo!22231 (regOne!22231 r!26326)))) b!3720413))

(assert (= (and b!3719568 ((_ is Union!10859) (regTwo!22231 (regOne!22231 r!26326)))) b!3720414))

(declare-fun b!3720416 () Bool)

(declare-fun e!2303307 () Bool)

(declare-fun tp!1131349 () Bool)

(declare-fun tp!1131352 () Bool)

(assert (=> b!3720416 (= e!2303307 (and tp!1131349 tp!1131352))))

(declare-fun b!3720415 () Bool)

(assert (=> b!3720415 (= e!2303307 tp_is_empty!18733)))

(assert (=> b!3719559 (= tp!1131290 e!2303307)))

(declare-fun b!3720417 () Bool)

(declare-fun tp!1131350 () Bool)

(assert (=> b!3720417 (= e!2303307 tp!1131350)))

(declare-fun b!3720418 () Bool)

(declare-fun tp!1131351 () Bool)

(declare-fun tp!1131348 () Bool)

(assert (=> b!3720418 (= e!2303307 (and tp!1131351 tp!1131348))))

(assert (= (and b!3719559 ((_ is ElementMatch!10859) (reg!11188 (regOne!22230 r!26326)))) b!3720415))

(assert (= (and b!3719559 ((_ is Concat!17130) (reg!11188 (regOne!22230 r!26326)))) b!3720416))

(assert (= (and b!3719559 ((_ is Star!10859) (reg!11188 (regOne!22230 r!26326)))) b!3720417))

(assert (= (and b!3719559 ((_ is Union!10859) (reg!11188 (regOne!22230 r!26326)))) b!3720418))

(declare-fun b!3720420 () Bool)

(declare-fun e!2303308 () Bool)

(declare-fun tp!1131354 () Bool)

(declare-fun tp!1131357 () Bool)

(assert (=> b!3720420 (= e!2303308 (and tp!1131354 tp!1131357))))

(declare-fun b!3720419 () Bool)

(assert (=> b!3720419 (= e!2303308 tp_is_empty!18733)))

(assert (=> b!3719566 (= tp!1131299 e!2303308)))

(declare-fun b!3720421 () Bool)

(declare-fun tp!1131355 () Bool)

(assert (=> b!3720421 (= e!2303308 tp!1131355)))

(declare-fun b!3720422 () Bool)

(declare-fun tp!1131356 () Bool)

(declare-fun tp!1131353 () Bool)

(assert (=> b!3720422 (= e!2303308 (and tp!1131356 tp!1131353))))

(assert (= (and b!3719566 ((_ is ElementMatch!10859) (regOne!22230 (regOne!22231 r!26326)))) b!3720419))

(assert (= (and b!3719566 ((_ is Concat!17130) (regOne!22230 (regOne!22231 r!26326)))) b!3720420))

(assert (= (and b!3719566 ((_ is Star!10859) (regOne!22230 (regOne!22231 r!26326)))) b!3720421))

(assert (= (and b!3719566 ((_ is Union!10859) (regOne!22230 (regOne!22231 r!26326)))) b!3720422))

(declare-fun b!3720426 () Bool)

(declare-fun e!2303310 () Bool)

(declare-fun tp!1131359 () Bool)

(declare-fun tp!1131362 () Bool)

(assert (=> b!3720426 (= e!2303310 (and tp!1131359 tp!1131362))))

(declare-fun b!3720425 () Bool)

(assert (=> b!3720425 (= e!2303310 tp_is_empty!18733)))

(assert (=> b!3719566 (= tp!1131302 e!2303310)))

(declare-fun b!3720427 () Bool)

(declare-fun tp!1131360 () Bool)

(assert (=> b!3720427 (= e!2303310 tp!1131360)))

(declare-fun b!3720428 () Bool)

(declare-fun tp!1131361 () Bool)

(declare-fun tp!1131358 () Bool)

(assert (=> b!3720428 (= e!2303310 (and tp!1131361 tp!1131358))))

(assert (= (and b!3719566 ((_ is ElementMatch!10859) (regTwo!22230 (regOne!22231 r!26326)))) b!3720425))

(assert (= (and b!3719566 ((_ is Concat!17130) (regTwo!22230 (regOne!22231 r!26326)))) b!3720426))

(assert (= (and b!3719566 ((_ is Star!10859) (regTwo!22230 (regOne!22231 r!26326)))) b!3720427))

(assert (= (and b!3719566 ((_ is Union!10859) (regTwo!22230 (regOne!22231 r!26326)))) b!3720428))

(declare-fun b!3720430 () Bool)

(declare-fun e!2303311 () Bool)

(declare-fun tp!1131364 () Bool)

(declare-fun tp!1131367 () Bool)

(assert (=> b!3720430 (= e!2303311 (and tp!1131364 tp!1131367))))

(declare-fun b!3720429 () Bool)

(assert (=> b!3720429 (= e!2303311 tp_is_empty!18733)))

(assert (=> b!3719571 (= tp!1131305 e!2303311)))

(declare-fun b!3720431 () Bool)

(declare-fun tp!1131365 () Bool)

(assert (=> b!3720431 (= e!2303311 tp!1131365)))

(declare-fun b!3720432 () Bool)

(declare-fun tp!1131366 () Bool)

(declare-fun tp!1131363 () Bool)

(assert (=> b!3720432 (= e!2303311 (and tp!1131366 tp!1131363))))

(assert (= (and b!3719571 ((_ is ElementMatch!10859) (reg!11188 (regTwo!22231 r!26326)))) b!3720429))

(assert (= (and b!3719571 ((_ is Concat!17130) (reg!11188 (regTwo!22231 r!26326)))) b!3720430))

(assert (= (and b!3719571 ((_ is Star!10859) (reg!11188 (regTwo!22231 r!26326)))) b!3720431))

(assert (= (and b!3719571 ((_ is Union!10859) (reg!11188 (regTwo!22231 r!26326)))) b!3720432))

(declare-fun b!3720434 () Bool)

(declare-fun e!2303312 () Bool)

(declare-fun tp!1131369 () Bool)

(declare-fun tp!1131372 () Bool)

(assert (=> b!3720434 (= e!2303312 (and tp!1131369 tp!1131372))))

(declare-fun b!3720433 () Bool)

(assert (=> b!3720433 (= e!2303312 tp_is_empty!18733)))

(assert (=> b!3719576 (= tp!1131311 e!2303312)))

(declare-fun b!3720435 () Bool)

(declare-fun tp!1131370 () Bool)

(assert (=> b!3720435 (= e!2303312 tp!1131370)))

(declare-fun b!3720436 () Bool)

(declare-fun tp!1131371 () Bool)

(declare-fun tp!1131368 () Bool)

(assert (=> b!3720436 (= e!2303312 (and tp!1131371 tp!1131368))))

(assert (= (and b!3719576 ((_ is ElementMatch!10859) (regOne!22231 (reg!11188 r!26326)))) b!3720433))

(assert (= (and b!3719576 ((_ is Concat!17130) (regOne!22231 (reg!11188 r!26326)))) b!3720434))

(assert (= (and b!3719576 ((_ is Star!10859) (regOne!22231 (reg!11188 r!26326)))) b!3720435))

(assert (= (and b!3719576 ((_ is Union!10859) (regOne!22231 (reg!11188 r!26326)))) b!3720436))

(declare-fun b!3720438 () Bool)

(declare-fun e!2303313 () Bool)

(declare-fun tp!1131374 () Bool)

(declare-fun tp!1131377 () Bool)

(assert (=> b!3720438 (= e!2303313 (and tp!1131374 tp!1131377))))

(declare-fun b!3720437 () Bool)

(assert (=> b!3720437 (= e!2303313 tp_is_empty!18733)))

(assert (=> b!3719576 (= tp!1131308 e!2303313)))

(declare-fun b!3720439 () Bool)

(declare-fun tp!1131375 () Bool)

(assert (=> b!3720439 (= e!2303313 tp!1131375)))

(declare-fun b!3720440 () Bool)

(declare-fun tp!1131376 () Bool)

(declare-fun tp!1131373 () Bool)

(assert (=> b!3720440 (= e!2303313 (and tp!1131376 tp!1131373))))

(assert (= (and b!3719576 ((_ is ElementMatch!10859) (regTwo!22231 (reg!11188 r!26326)))) b!3720437))

(assert (= (and b!3719576 ((_ is Concat!17130) (regTwo!22231 (reg!11188 r!26326)))) b!3720438))

(assert (= (and b!3719576 ((_ is Star!10859) (regTwo!22231 (reg!11188 r!26326)))) b!3720439))

(assert (= (and b!3719576 ((_ is Union!10859) (regTwo!22231 (reg!11188 r!26326)))) b!3720440))

(declare-fun b!3720452 () Bool)

(declare-fun e!2303319 () Bool)

(declare-fun tp!1131379 () Bool)

(declare-fun tp!1131382 () Bool)

(assert (=> b!3720452 (= e!2303319 (and tp!1131379 tp!1131382))))

(declare-fun b!3720451 () Bool)

(assert (=> b!3720451 (= e!2303319 tp_is_empty!18733)))

(assert (=> b!3719562 (= tp!1131294 e!2303319)))

(declare-fun b!3720453 () Bool)

(declare-fun tp!1131380 () Bool)

(assert (=> b!3720453 (= e!2303319 tp!1131380)))

(declare-fun b!3720454 () Bool)

(declare-fun tp!1131381 () Bool)

(declare-fun tp!1131378 () Bool)

(assert (=> b!3720454 (= e!2303319 (and tp!1131381 tp!1131378))))

(assert (= (and b!3719562 ((_ is ElementMatch!10859) (regOne!22230 (regTwo!22230 r!26326)))) b!3720451))

(assert (= (and b!3719562 ((_ is Concat!17130) (regOne!22230 (regTwo!22230 r!26326)))) b!3720452))

(assert (= (and b!3719562 ((_ is Star!10859) (regOne!22230 (regTwo!22230 r!26326)))) b!3720453))

(assert (= (and b!3719562 ((_ is Union!10859) (regOne!22230 (regTwo!22230 r!26326)))) b!3720454))

(declare-fun b!3720456 () Bool)

(declare-fun e!2303320 () Bool)

(declare-fun tp!1131384 () Bool)

(declare-fun tp!1131387 () Bool)

(assert (=> b!3720456 (= e!2303320 (and tp!1131384 tp!1131387))))

(declare-fun b!3720455 () Bool)

(assert (=> b!3720455 (= e!2303320 tp_is_empty!18733)))

(assert (=> b!3719562 (= tp!1131297 e!2303320)))

(declare-fun b!3720457 () Bool)

(declare-fun tp!1131385 () Bool)

(assert (=> b!3720457 (= e!2303320 tp!1131385)))

(declare-fun b!3720458 () Bool)

(declare-fun tp!1131386 () Bool)

(declare-fun tp!1131383 () Bool)

(assert (=> b!3720458 (= e!2303320 (and tp!1131386 tp!1131383))))

(assert (= (and b!3719562 ((_ is ElementMatch!10859) (regTwo!22230 (regTwo!22230 r!26326)))) b!3720455))

(assert (= (and b!3719562 ((_ is Concat!17130) (regTwo!22230 (regTwo!22230 r!26326)))) b!3720456))

(assert (= (and b!3719562 ((_ is Star!10859) (regTwo!22230 (regTwo!22230 r!26326)))) b!3720457))

(assert (= (and b!3719562 ((_ is Union!10859) (regTwo!22230 (regTwo!22230 r!26326)))) b!3720458))

(declare-fun b!3720460 () Bool)

(declare-fun e!2303321 () Bool)

(declare-fun tp!1131389 () Bool)

(declare-fun tp!1131392 () Bool)

(assert (=> b!3720460 (= e!2303321 (and tp!1131389 tp!1131392))))

(declare-fun b!3720459 () Bool)

(assert (=> b!3720459 (= e!2303321 tp_is_empty!18733)))

(assert (=> b!3719567 (= tp!1131300 e!2303321)))

(declare-fun b!3720461 () Bool)

(declare-fun tp!1131390 () Bool)

(assert (=> b!3720461 (= e!2303321 tp!1131390)))

(declare-fun b!3720462 () Bool)

(declare-fun tp!1131391 () Bool)

(declare-fun tp!1131388 () Bool)

(assert (=> b!3720462 (= e!2303321 (and tp!1131391 tp!1131388))))

(assert (= (and b!3719567 ((_ is ElementMatch!10859) (reg!11188 (regOne!22231 r!26326)))) b!3720459))

(assert (= (and b!3719567 ((_ is Concat!17130) (reg!11188 (regOne!22231 r!26326)))) b!3720460))

(assert (= (and b!3719567 ((_ is Star!10859) (reg!11188 (regOne!22231 r!26326)))) b!3720461))

(assert (= (and b!3719567 ((_ is Union!10859) (reg!11188 (regOne!22231 r!26326)))) b!3720462))

(declare-fun b!3720464 () Bool)

(declare-fun e!2303322 () Bool)

(declare-fun tp!1131394 () Bool)

(declare-fun tp!1131397 () Bool)

(assert (=> b!3720464 (= e!2303322 (and tp!1131394 tp!1131397))))

(declare-fun b!3720463 () Bool)

(assert (=> b!3720463 (= e!2303322 tp_is_empty!18733)))

(assert (=> b!3719564 (= tp!1131296 e!2303322)))

(declare-fun b!3720465 () Bool)

(declare-fun tp!1131395 () Bool)

(assert (=> b!3720465 (= e!2303322 tp!1131395)))

(declare-fun b!3720466 () Bool)

(declare-fun tp!1131396 () Bool)

(declare-fun tp!1131393 () Bool)

(assert (=> b!3720466 (= e!2303322 (and tp!1131396 tp!1131393))))

(assert (= (and b!3719564 ((_ is ElementMatch!10859) (regOne!22231 (regTwo!22230 r!26326)))) b!3720463))

(assert (= (and b!3719564 ((_ is Concat!17130) (regOne!22231 (regTwo!22230 r!26326)))) b!3720464))

(assert (= (and b!3719564 ((_ is Star!10859) (regOne!22231 (regTwo!22230 r!26326)))) b!3720465))

(assert (= (and b!3719564 ((_ is Union!10859) (regOne!22231 (regTwo!22230 r!26326)))) b!3720466))

(declare-fun b!3720468 () Bool)

(declare-fun e!2303323 () Bool)

(declare-fun tp!1131399 () Bool)

(declare-fun tp!1131402 () Bool)

(assert (=> b!3720468 (= e!2303323 (and tp!1131399 tp!1131402))))

(declare-fun b!3720467 () Bool)

(assert (=> b!3720467 (= e!2303323 tp_is_empty!18733)))

(assert (=> b!3719564 (= tp!1131293 e!2303323)))

(declare-fun b!3720469 () Bool)

(declare-fun tp!1131400 () Bool)

(assert (=> b!3720469 (= e!2303323 tp!1131400)))

(declare-fun b!3720470 () Bool)

(declare-fun tp!1131401 () Bool)

(declare-fun tp!1131398 () Bool)

(assert (=> b!3720470 (= e!2303323 (and tp!1131401 tp!1131398))))

(assert (= (and b!3719564 ((_ is ElementMatch!10859) (regTwo!22231 (regTwo!22230 r!26326)))) b!3720467))

(assert (= (and b!3719564 ((_ is Concat!17130) (regTwo!22231 (regTwo!22230 r!26326)))) b!3720468))

(assert (= (and b!3719564 ((_ is Star!10859) (regTwo!22231 (regTwo!22230 r!26326)))) b!3720469))

(assert (= (and b!3719564 ((_ is Union!10859) (regTwo!22231 (regTwo!22230 r!26326)))) b!3720470))

(declare-fun b!3720472 () Bool)

(declare-fun e!2303324 () Bool)

(declare-fun tp!1131404 () Bool)

(declare-fun tp!1131407 () Bool)

(assert (=> b!3720472 (= e!2303324 (and tp!1131404 tp!1131407))))

(declare-fun b!3720471 () Bool)

(assert (=> b!3720471 (= e!2303324 tp_is_empty!18733)))

(assert (=> b!3719560 (= tp!1131291 e!2303324)))

(declare-fun b!3720473 () Bool)

(declare-fun tp!1131405 () Bool)

(assert (=> b!3720473 (= e!2303324 tp!1131405)))

(declare-fun b!3720474 () Bool)

(declare-fun tp!1131406 () Bool)

(declare-fun tp!1131403 () Bool)

(assert (=> b!3720474 (= e!2303324 (and tp!1131406 tp!1131403))))

(assert (= (and b!3719560 ((_ is ElementMatch!10859) (regOne!22231 (regOne!22230 r!26326)))) b!3720471))

(assert (= (and b!3719560 ((_ is Concat!17130) (regOne!22231 (regOne!22230 r!26326)))) b!3720472))

(assert (= (and b!3719560 ((_ is Star!10859) (regOne!22231 (regOne!22230 r!26326)))) b!3720473))

(assert (= (and b!3719560 ((_ is Union!10859) (regOne!22231 (regOne!22230 r!26326)))) b!3720474))

(declare-fun b!3720476 () Bool)

(declare-fun e!2303325 () Bool)

(declare-fun tp!1131409 () Bool)

(declare-fun tp!1131412 () Bool)

(assert (=> b!3720476 (= e!2303325 (and tp!1131409 tp!1131412))))

(declare-fun b!3720475 () Bool)

(assert (=> b!3720475 (= e!2303325 tp_is_empty!18733)))

(assert (=> b!3719560 (= tp!1131288 e!2303325)))

(declare-fun b!3720477 () Bool)

(declare-fun tp!1131410 () Bool)

(assert (=> b!3720477 (= e!2303325 tp!1131410)))

(declare-fun b!3720478 () Bool)

(declare-fun tp!1131411 () Bool)

(declare-fun tp!1131408 () Bool)

(assert (=> b!3720478 (= e!2303325 (and tp!1131411 tp!1131408))))

(assert (= (and b!3719560 ((_ is ElementMatch!10859) (regTwo!22231 (regOne!22230 r!26326)))) b!3720475))

(assert (= (and b!3719560 ((_ is Concat!17130) (regTwo!22231 (regOne!22230 r!26326)))) b!3720476))

(assert (= (and b!3719560 ((_ is Star!10859) (regTwo!22231 (regOne!22230 r!26326)))) b!3720477))

(assert (= (and b!3719560 ((_ is Union!10859) (regTwo!22231 (regOne!22230 r!26326)))) b!3720478))

(declare-fun b!3720480 () Bool)

(declare-fun e!2303326 () Bool)

(declare-fun tp!1131414 () Bool)

(declare-fun tp!1131417 () Bool)

(assert (=> b!3720480 (= e!2303326 (and tp!1131414 tp!1131417))))

(declare-fun b!3720479 () Bool)

(assert (=> b!3720479 (= e!2303326 tp_is_empty!18733)))

(assert (=> b!3719574 (= tp!1131309 e!2303326)))

(declare-fun b!3720481 () Bool)

(declare-fun tp!1131415 () Bool)

(assert (=> b!3720481 (= e!2303326 tp!1131415)))

(declare-fun b!3720482 () Bool)

(declare-fun tp!1131416 () Bool)

(declare-fun tp!1131413 () Bool)

(assert (=> b!3720482 (= e!2303326 (and tp!1131416 tp!1131413))))

(assert (= (and b!3719574 ((_ is ElementMatch!10859) (regOne!22230 (reg!11188 r!26326)))) b!3720479))

(assert (= (and b!3719574 ((_ is Concat!17130) (regOne!22230 (reg!11188 r!26326)))) b!3720480))

(assert (= (and b!3719574 ((_ is Star!10859) (regOne!22230 (reg!11188 r!26326)))) b!3720481))

(assert (= (and b!3719574 ((_ is Union!10859) (regOne!22230 (reg!11188 r!26326)))) b!3720482))

(declare-fun b!3720484 () Bool)

(declare-fun e!2303327 () Bool)

(declare-fun tp!1131419 () Bool)

(declare-fun tp!1131422 () Bool)

(assert (=> b!3720484 (= e!2303327 (and tp!1131419 tp!1131422))))

(declare-fun b!3720483 () Bool)

(assert (=> b!3720483 (= e!2303327 tp_is_empty!18733)))

(assert (=> b!3719574 (= tp!1131312 e!2303327)))

(declare-fun b!3720485 () Bool)

(declare-fun tp!1131420 () Bool)

(assert (=> b!3720485 (= e!2303327 tp!1131420)))

(declare-fun b!3720486 () Bool)

(declare-fun tp!1131421 () Bool)

(declare-fun tp!1131418 () Bool)

(assert (=> b!3720486 (= e!2303327 (and tp!1131421 tp!1131418))))

(assert (= (and b!3719574 ((_ is ElementMatch!10859) (regTwo!22230 (reg!11188 r!26326)))) b!3720483))

(assert (= (and b!3719574 ((_ is Concat!17130) (regTwo!22230 (reg!11188 r!26326)))) b!3720484))

(assert (= (and b!3719574 ((_ is Star!10859) (regTwo!22230 (reg!11188 r!26326)))) b!3720485))

(assert (= (and b!3719574 ((_ is Union!10859) (regTwo!22230 (reg!11188 r!26326)))) b!3720486))

(declare-fun b!3720496 () Bool)

(declare-fun e!2303332 () Bool)

(declare-fun tp!1131424 () Bool)

(declare-fun tp!1131427 () Bool)

(assert (=> b!3720496 (= e!2303332 (and tp!1131424 tp!1131427))))

(declare-fun b!3720494 () Bool)

(assert (=> b!3720494 (= e!2303332 tp_is_empty!18733)))

(assert (=> b!3719570 (= tp!1131304 e!2303332)))

(declare-fun b!3720497 () Bool)

(declare-fun tp!1131425 () Bool)

(assert (=> b!3720497 (= e!2303332 tp!1131425)))

(declare-fun b!3720498 () Bool)

(declare-fun tp!1131426 () Bool)

(declare-fun tp!1131423 () Bool)

(assert (=> b!3720498 (= e!2303332 (and tp!1131426 tp!1131423))))

(assert (= (and b!3719570 ((_ is ElementMatch!10859) (regOne!22230 (regTwo!22231 r!26326)))) b!3720494))

(assert (= (and b!3719570 ((_ is Concat!17130) (regOne!22230 (regTwo!22231 r!26326)))) b!3720496))

(assert (= (and b!3719570 ((_ is Star!10859) (regOne!22230 (regTwo!22231 r!26326)))) b!3720497))

(assert (= (and b!3719570 ((_ is Union!10859) (regOne!22230 (regTwo!22231 r!26326)))) b!3720498))

(declare-fun b!3720500 () Bool)

(declare-fun e!2303333 () Bool)

(declare-fun tp!1131429 () Bool)

(declare-fun tp!1131432 () Bool)

(assert (=> b!3720500 (= e!2303333 (and tp!1131429 tp!1131432))))

(declare-fun b!3720499 () Bool)

(assert (=> b!3720499 (= e!2303333 tp_is_empty!18733)))

(assert (=> b!3719570 (= tp!1131307 e!2303333)))

(declare-fun b!3720501 () Bool)

(declare-fun tp!1131430 () Bool)

(assert (=> b!3720501 (= e!2303333 tp!1131430)))

(declare-fun b!3720502 () Bool)

(declare-fun tp!1131431 () Bool)

(declare-fun tp!1131428 () Bool)

(assert (=> b!3720502 (= e!2303333 (and tp!1131431 tp!1131428))))

(assert (= (and b!3719570 ((_ is ElementMatch!10859) (regTwo!22230 (regTwo!22231 r!26326)))) b!3720499))

(assert (= (and b!3719570 ((_ is Concat!17130) (regTwo!22230 (regTwo!22231 r!26326)))) b!3720500))

(assert (= (and b!3719570 ((_ is Star!10859) (regTwo!22230 (regTwo!22231 r!26326)))) b!3720501))

(assert (= (and b!3719570 ((_ is Union!10859) (regTwo!22230 (regTwo!22231 r!26326)))) b!3720502))

(declare-fun b!3720503 () Bool)

(declare-fun e!2303334 () Bool)

(declare-fun tp!1131433 () Bool)

(assert (=> b!3720503 (= e!2303334 (and tp_is_empty!18733 tp!1131433))))

(assert (=> b!3719546 (= tp!1131277 e!2303334)))

(assert (= (and b!3719546 ((_ is Cons!39616) (t!302423 (t!302423 tl!3933)))) b!3720503))

(declare-fun b!3720505 () Bool)

(declare-fun e!2303335 () Bool)

(declare-fun tp!1131435 () Bool)

(declare-fun tp!1131438 () Bool)

(assert (=> b!3720505 (= e!2303335 (and tp!1131435 tp!1131438))))

(declare-fun b!3720504 () Bool)

(assert (=> b!3720504 (= e!2303335 tp_is_empty!18733)))

(assert (=> b!3719575 (= tp!1131310 e!2303335)))

(declare-fun b!3720506 () Bool)

(declare-fun tp!1131436 () Bool)

(assert (=> b!3720506 (= e!2303335 tp!1131436)))

(declare-fun b!3720507 () Bool)

(declare-fun tp!1131437 () Bool)

(declare-fun tp!1131434 () Bool)

(assert (=> b!3720507 (= e!2303335 (and tp!1131437 tp!1131434))))

(assert (= (and b!3719575 ((_ is ElementMatch!10859) (reg!11188 (reg!11188 r!26326)))) b!3720504))

(assert (= (and b!3719575 ((_ is Concat!17130) (reg!11188 (reg!11188 r!26326)))) b!3720505))

(assert (= (and b!3719575 ((_ is Star!10859) (reg!11188 (reg!11188 r!26326)))) b!3720506))

(assert (= (and b!3719575 ((_ is Union!10859) (reg!11188 (reg!11188 r!26326)))) b!3720507))

(check-sat (not bm!270250) (not d!1089053) (not bm!270246) (not b!3720149) (not b!3720339) (not b!3720312) (not b!3719584) (not bm!270262) (not b!3720478) (not b!3719779) (not b!3720505) (not b!3719728) (not b!3719780) (not bm!270274) (not bm!270155) (not b!3720461) (not b!3720465) (not b!3719813) (not b!3720258) (not bm!270247) (not d!1089095) (not b!3719588) (not b!3719936) (not bm!270273) (not bm!270203) (not b!3720460) (not bm!270206) (not b!3720432) (not b!3719630) (not b!3719743) (not d!1088901) (not bm!270138) (not d!1088987) (not b!3720203) (not bm!270093) (not b!3720042) (not bm!270088) (not d!1088973) (not b!3720349) (not b!3719585) (not b!3720253) (not d!1088897) (not bm!270092) (not b!3720420) (not b!3720427) (not b!3720428) (not bm!270146) (not b!3720041) (not bm!270260) (not bm!270114) (not bm!270248) (not b!3720452) (not bm!270113) (not b!3720507) (not b!3720307) (not b!3720469) (not bm!270090) (not bm!270182) (not bm!270118) (not b!3720029) (not b!3719628) (not b!3720496) (not b!3720305) (not bm!270205) (not b!3720220) (not b!3719807) (not bm!270109) (not bm!270084) (not b!3720422) (not d!1088927) (not b!3720501) (not b!3720241) (not b!3719784) (not b!3720498) (not d!1088879) (not d!1088891) (not b!3720222) (not b!3720470) (not b!3720266) (not b!3719627) (not b!3720397) (not d!1089185) (not b!3720472) (not b!3719671) (not b!3720464) (not bm!270121) (not b!3719734) (not b!3719822) (not b!3720098) (not b!3719735) (not bm!270097) (not b!3719586) (not bm!270269) (not d!1088915) (not b!3719920) (not b!3720476) (not b!3720262) (not bm!270140) (not d!1089025) (not bm!270228) (not b!3720438) (not bm!270139) (not b!3720386) (not b!3720430) (not b!3720458) (not bm!270100) (not b!3720421) (not bm!270229) (not bm!270202) (not bm!270216) (not b!3720379) (not bm!270270) (not b!3719783) (not d!1089169) (not b!3719932) (not b!3720360) (not bm!270271) (not bm!270261) (not d!1088875) (not d!1088981) (not d!1088951) (not b!3720183) (not d!1088877) (not b!3719837) (not b!3720137) (not b!3720497) (not bm!270217) (not b!3720276) (not b!3720259) (not b!3720405) (not b!3720477) (not bm!270160) (not b!3719839) (not d!1089115) (not bm!270135) (not bm!270236) (not b!3719852) (not b!3720273) (not bm!270164) (not d!1089175) (not b!3720400) (not b!3720439) (not b!3720435) (not b!3720192) (not b!3719846) (not b!3719725) (not bm!270165) (not b!3719897) (not b!3720503) (not d!1089093) (not b!3720260) (not b!3720384) (not b!3719684) (not d!1089063) (not b!3720156) (not bm!270106) (not b!3719578) (not b!3720314) (not bm!270173) (not b!3719611) (not b!3720147) (not d!1088969) (not d!1089153) (not bm!270129) (not b!3720481) (not d!1088921) (not b!3720072) (not b!3720396) (not d!1089097) (not bm!270102) (not d!1089173) (not d!1089161) (not d!1089043) (not bm!270249) (not d!1089165) (not bm!270105) (not bm!270254) (not bm!270170) (not bm!270207) (not b!3720453) (not b!3719643) (not b!3719579) (not b!3720456) (not b!3720454) (not d!1089167) (not bm!270091) (not b!3720486) (not d!1089197) (not b!3720045) (not b!3720108) (not bm!270198) (not b!3720413) (not b!3720313) (not b!3720506) (not d!1088997) (not b!3720404) (not bm!270187) (not bm!270192) (not b!3720412) (not bm!270193) (not b!3719801) (not bm!270159) (not bm!270115) (not b!3720049) (not b!3720500) (not b!3720005) (not d!1088975) (not b!3720480) (not b!3719957) (not d!1089177) (not d!1089079) (not b!3719803) (not b!3720457) (not bm!270191) (not b!3719704) (not bm!270223) (not bm!270096) (not bm!270101) (not bm!270087) (not b!3720401) (not b!3719951) (not bm!270225) (not b!3719808) (not b!3720417) (not b!3720218) (not b!3720028) (not b!3719870) (not bm!270272) (not b!3719712) (not b!3719950) (not b!3719818) (not b!3720408) (not bm!270183) (not d!1088937) (not b!3719621) (not b!3720426) (not b!3719933) (not bm!270194) (not b!3720371) (not bm!270239) (not b!3719806) (not b!3720036) (not bm!270103) (not b!3720226) (not b!3720473) (not b!3719675) (not d!1089189) (not b!3720406) (not b!3720095) (not b!3719958) (not b!3720440) (not bm!270234) (not b!3720482) (not bm!270186) (not b!3720434) (not bm!270276) (not d!1088923) (not b!3719659) (not d!1089017) (not b!3719948) (not d!1088903) (not b!3719592) (not b!3720380) (not b!3720316) (not b!3720174) (not b!3719626) (not d!1089073) (not b!3719650) (not d!1088953) (not b!3720466) (not bm!270163) (not b!3720219) (not b!3720484) (not b!3720402) (not b!3719717) (not b!3720022) (not b!3719848) (not b!3719634) (not d!1089113) (not b!3720431) (not b!3720502) (not d!1088993) (not bm!270237) (not b!3719844) (not d!1089181) (not b!3720031) (not bm!270174) (not d!1089023) (not b!3719601) (not bm!270130) (not b!3720418) (not b!3719956) (not bm!270119) (not b!3719819) (not b!3719676) (not b!3720381) (not b!3720213) (not d!1088991) (not bm!270083) (not d!1088947) (not b!3720388) (not b!3720027) (not b!3719716) (not b!3719960) (not d!1088889) (not d!1089009) (not b!3720409) (not b!3719741) (not b!3720398) (not b!3720436) (not b!3720416) (not b!3719733) (not b!3720462) (not bm!270226) (not b!3719998) (not bm!270233) (not bm!270147) (not d!1088913) (not d!1089179) (not d!1089157) (not bm!270277) (not bm!270238) (not bm!270197) (not b!3719845) (not b!3719964) (not b!3720295) (not b!3720410) (not bm!270156) (not b!3720474) (not bm!270108) (not b!3720468) (not b!3720035) (not b!3720286) (not d!1089195) (not b!3719663) (not b!3719805) (not bm!270116) (not d!1089163) (not bm!270255) (not b!3719662) (not b!3720414) (not b!3719975) (not b!3720251) (not b!3720043) (not bm!270222) (not b!3719820) (not b!3719737) (not b!3719826) (not bm!270080) tp_is_empty!18733 (not b!3720485) (not b!3719693) (not b!3720320))
(check-sat)
