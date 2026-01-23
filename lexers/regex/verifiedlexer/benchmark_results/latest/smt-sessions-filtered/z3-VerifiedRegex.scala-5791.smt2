; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285888 () Bool)

(assert start!285888)

(declare-fun b!2945798 () Bool)

(declare-fun e!1855870 () Bool)

(declare-datatypes ((C!18452 0))(
  ( (C!18453 (val!11262 Int)) )
))
(declare-datatypes ((Regex!9133 0))(
  ( (ElementMatch!9133 (c!481849 C!18452)) (Concat!14454 (regOne!18778 Regex!9133) (regTwo!18778 Regex!9133)) (EmptyExpr!9133) (Star!9133 (reg!9462 Regex!9133)) (EmptyLang!9133) (Union!9133 (regOne!18779 Regex!9133) (regTwo!18779 Regex!9133)) )
))
(declare-fun r!17423 () Regex!9133)

(declare-fun validRegex!3866 (Regex!9133) Bool)

(assert (=> b!2945798 (= e!1855870 (validRegex!3866 (regTwo!18778 r!17423)))))

(declare-fun b!2945799 () Bool)

(declare-fun e!1855871 () Bool)

(declare-fun tp!942299 () Bool)

(declare-fun tp!942301 () Bool)

(assert (=> b!2945799 (= e!1855871 (and tp!942299 tp!942301))))

(declare-fun b!2945800 () Bool)

(declare-fun e!1855867 () Bool)

(declare-fun e!1855869 () Bool)

(assert (=> b!2945800 (= e!1855867 (not e!1855869))))

(declare-fun res!1215746 () Bool)

(assert (=> b!2945800 (=> res!1215746 e!1855869)))

(declare-fun lt!1031195 () Bool)

(get-info :version)

(assert (=> b!2945800 (= res!1215746 (or lt!1031195 (not ((_ is Concat!14454) r!17423))))))

(declare-datatypes ((List!34998 0))(
  ( (Nil!34874) (Cons!34874 (h!40294 C!18452) (t!234063 List!34998)) )
))
(declare-fun s!11993 () List!34998)

(declare-fun matchRSpec!1270 (Regex!9133 List!34998) Bool)

(assert (=> b!2945800 (= lt!1031195 (matchRSpec!1270 r!17423 s!11993))))

(declare-fun matchR!4015 (Regex!9133 List!34998) Bool)

(assert (=> b!2945800 (= lt!1031195 (matchR!4015 r!17423 s!11993))))

(declare-datatypes ((Unit!48645 0))(
  ( (Unit!48646) )
))
(declare-fun lt!1031193 () Unit!48645)

(declare-fun mainMatchTheorem!1270 (Regex!9133 List!34998) Unit!48645)

(assert (=> b!2945800 (= lt!1031193 (mainMatchTheorem!1270 r!17423 s!11993))))

(declare-fun b!2945801 () Bool)

(declare-fun res!1215747 () Bool)

(assert (=> b!2945801 (=> res!1215747 e!1855870)))

(declare-fun lt!1031192 () Regex!9133)

(declare-fun isEmptyExpr!336 (Regex!9133) Bool)

(assert (=> b!2945801 (= res!1215747 (isEmptyExpr!336 lt!1031192))))

(declare-fun b!2945802 () Bool)

(assert (=> b!2945802 (= e!1855869 e!1855870)))

(declare-fun res!1215748 () Bool)

(assert (=> b!2945802 (=> res!1215748 e!1855870)))

(declare-fun lt!1031194 () Regex!9133)

(declare-fun isEmptyLang!255 (Regex!9133) Bool)

(assert (=> b!2945802 (= res!1215748 (isEmptyLang!255 lt!1031194))))

(declare-fun simplify!138 (Regex!9133) Regex!9133)

(assert (=> b!2945802 (= lt!1031192 (simplify!138 (regTwo!18778 r!17423)))))

(assert (=> b!2945802 (= lt!1031194 (simplify!138 (regOne!18778 r!17423)))))

(declare-fun b!2945804 () Bool)

(declare-fun res!1215750 () Bool)

(assert (=> b!2945804 (=> res!1215750 e!1855870)))

(assert (=> b!2945804 (= res!1215750 (isEmptyLang!255 lt!1031192))))

(declare-fun b!2945805 () Bool)

(declare-fun e!1855868 () Bool)

(declare-fun tp_is_empty!15829 () Bool)

(declare-fun tp!942298 () Bool)

(assert (=> b!2945805 (= e!1855868 (and tp_is_empty!15829 tp!942298))))

(declare-fun b!2945806 () Bool)

(declare-fun res!1215752 () Bool)

(assert (=> b!2945806 (=> res!1215752 e!1855869)))

(declare-fun isEmpty!19135 (List!34998) Bool)

(assert (=> b!2945806 (= res!1215752 (isEmpty!19135 s!11993))))

(declare-fun b!2945807 () Bool)

(assert (=> b!2945807 (= e!1855871 tp_is_empty!15829)))

(declare-fun b!2945808 () Bool)

(declare-fun res!1215749 () Bool)

(assert (=> b!2945808 (=> res!1215749 e!1855870)))

(assert (=> b!2945808 (= res!1215749 (isEmptyExpr!336 lt!1031194))))

(declare-fun b!2945809 () Bool)

(declare-fun tp!942300 () Bool)

(declare-fun tp!942297 () Bool)

(assert (=> b!2945809 (= e!1855871 (and tp!942300 tp!942297))))

(declare-fun res!1215751 () Bool)

(assert (=> start!285888 (=> (not res!1215751) (not e!1855867))))

(assert (=> start!285888 (= res!1215751 (validRegex!3866 r!17423))))

(assert (=> start!285888 e!1855867))

(assert (=> start!285888 e!1855871))

(assert (=> start!285888 e!1855868))

(declare-fun b!2945803 () Bool)

(declare-fun tp!942296 () Bool)

(assert (=> b!2945803 (= e!1855871 tp!942296)))

(assert (= (and start!285888 res!1215751) b!2945800))

(assert (= (and b!2945800 (not res!1215746)) b!2945806))

(assert (= (and b!2945806 (not res!1215752)) b!2945802))

(assert (= (and b!2945802 (not res!1215748)) b!2945804))

(assert (= (and b!2945804 (not res!1215750)) b!2945808))

(assert (= (and b!2945808 (not res!1215749)) b!2945801))

(assert (= (and b!2945801 (not res!1215747)) b!2945798))

(assert (= (and start!285888 ((_ is ElementMatch!9133) r!17423)) b!2945807))

(assert (= (and start!285888 ((_ is Concat!14454) r!17423)) b!2945799))

(assert (= (and start!285888 ((_ is Star!9133) r!17423)) b!2945803))

(assert (= (and start!285888 ((_ is Union!9133) r!17423)) b!2945809))

(assert (= (and start!285888 ((_ is Cons!34874) s!11993)) b!2945805))

(declare-fun m!3327749 () Bool)

(assert (=> b!2945804 m!3327749))

(declare-fun m!3327751 () Bool)

(assert (=> b!2945800 m!3327751))

(declare-fun m!3327753 () Bool)

(assert (=> b!2945800 m!3327753))

(declare-fun m!3327755 () Bool)

(assert (=> b!2945800 m!3327755))

(declare-fun m!3327757 () Bool)

(assert (=> b!2945801 m!3327757))

(declare-fun m!3327759 () Bool)

(assert (=> b!2945802 m!3327759))

(declare-fun m!3327761 () Bool)

(assert (=> b!2945802 m!3327761))

(declare-fun m!3327763 () Bool)

(assert (=> b!2945802 m!3327763))

(declare-fun m!3327765 () Bool)

(assert (=> b!2945806 m!3327765))

(declare-fun m!3327767 () Bool)

(assert (=> b!2945798 m!3327767))

(declare-fun m!3327769 () Bool)

(assert (=> b!2945808 m!3327769))

(declare-fun m!3327771 () Bool)

(assert (=> start!285888 m!3327771))

(check-sat (not b!2945808) (not b!2945802) (not b!2945803) (not b!2945801) (not b!2945799) tp_is_empty!15829 (not b!2945798) (not b!2945805) (not b!2945804) (not start!285888) (not b!2945809) (not b!2945800) (not b!2945806))
(check-sat)
(get-model)

(declare-fun b!2945828 () Bool)

(declare-fun res!1215763 () Bool)

(declare-fun e!1855887 () Bool)

(assert (=> b!2945828 (=> res!1215763 e!1855887)))

(assert (=> b!2945828 (= res!1215763 (not ((_ is Concat!14454) (regTwo!18778 r!17423))))))

(declare-fun e!1855892 () Bool)

(assert (=> b!2945828 (= e!1855892 e!1855887)))

(declare-fun b!2945829 () Bool)

(declare-fun e!1855889 () Bool)

(declare-fun e!1855890 () Bool)

(assert (=> b!2945829 (= e!1855889 e!1855890)))

(declare-fun res!1215766 () Bool)

(declare-fun nullable!2894 (Regex!9133) Bool)

(assert (=> b!2945829 (= res!1215766 (not (nullable!2894 (reg!9462 (regTwo!18778 r!17423)))))))

(assert (=> b!2945829 (=> (not res!1215766) (not e!1855890))))

(declare-fun c!481855 () Bool)

(declare-fun call!194279 () Bool)

(declare-fun c!481854 () Bool)

(declare-fun bm!194274 () Bool)

(assert (=> bm!194274 (= call!194279 (validRegex!3866 (ite c!481855 (reg!9462 (regTwo!18778 r!17423)) (ite c!481854 (regTwo!18779 (regTwo!18778 r!17423)) (regOne!18778 (regTwo!18778 r!17423))))))))

(declare-fun d!840556 () Bool)

(declare-fun res!1215764 () Bool)

(declare-fun e!1855888 () Bool)

(assert (=> d!840556 (=> res!1215764 e!1855888)))

(assert (=> d!840556 (= res!1215764 ((_ is ElementMatch!9133) (regTwo!18778 r!17423)))))

(assert (=> d!840556 (= (validRegex!3866 (regTwo!18778 r!17423)) e!1855888)))

(declare-fun b!2945830 () Bool)

(assert (=> b!2945830 (= e!1855889 e!1855892)))

(assert (=> b!2945830 (= c!481854 ((_ is Union!9133) (regTwo!18778 r!17423)))))

(declare-fun b!2945831 () Bool)

(declare-fun res!1215767 () Bool)

(declare-fun e!1855886 () Bool)

(assert (=> b!2945831 (=> (not res!1215767) (not e!1855886))))

(declare-fun call!194281 () Bool)

(assert (=> b!2945831 (= res!1215767 call!194281)))

(assert (=> b!2945831 (= e!1855892 e!1855886)))

(declare-fun bm!194275 () Bool)

(declare-fun call!194280 () Bool)

(assert (=> bm!194275 (= call!194280 call!194279)))

(declare-fun b!2945832 () Bool)

(declare-fun e!1855891 () Bool)

(assert (=> b!2945832 (= e!1855887 e!1855891)))

(declare-fun res!1215765 () Bool)

(assert (=> b!2945832 (=> (not res!1215765) (not e!1855891))))

(assert (=> b!2945832 (= res!1215765 call!194280)))

(declare-fun b!2945833 () Bool)

(assert (=> b!2945833 (= e!1855888 e!1855889)))

(assert (=> b!2945833 (= c!481855 ((_ is Star!9133) (regTwo!18778 r!17423)))))

(declare-fun b!2945834 () Bool)

(assert (=> b!2945834 (= e!1855886 call!194280)))

(declare-fun b!2945835 () Bool)

(assert (=> b!2945835 (= e!1855891 call!194281)))

(declare-fun bm!194276 () Bool)

(assert (=> bm!194276 (= call!194281 (validRegex!3866 (ite c!481854 (regOne!18779 (regTwo!18778 r!17423)) (regTwo!18778 (regTwo!18778 r!17423)))))))

(declare-fun b!2945836 () Bool)

(assert (=> b!2945836 (= e!1855890 call!194279)))

(assert (= (and d!840556 (not res!1215764)) b!2945833))

(assert (= (and b!2945833 c!481855) b!2945829))

(assert (= (and b!2945833 (not c!481855)) b!2945830))

(assert (= (and b!2945829 res!1215766) b!2945836))

(assert (= (and b!2945830 c!481854) b!2945831))

(assert (= (and b!2945830 (not c!481854)) b!2945828))

(assert (= (and b!2945831 res!1215767) b!2945834))

(assert (= (and b!2945828 (not res!1215763)) b!2945832))

(assert (= (and b!2945832 res!1215765) b!2945835))

(assert (= (or b!2945831 b!2945835) bm!194276))

(assert (= (or b!2945834 b!2945832) bm!194275))

(assert (= (or b!2945836 bm!194275) bm!194274))

(declare-fun m!3327773 () Bool)

(assert (=> b!2945829 m!3327773))

(declare-fun m!3327775 () Bool)

(assert (=> bm!194274 m!3327775))

(declare-fun m!3327777 () Bool)

(assert (=> bm!194276 m!3327777))

(assert (=> b!2945798 d!840556))

(declare-fun d!840558 () Bool)

(assert (=> d!840558 (= (isEmptyLang!255 lt!1031192) ((_ is EmptyLang!9133) lt!1031192))))

(assert (=> b!2945804 d!840558))

(declare-fun b!2945893 () Bool)

(assert (=> b!2945893 true))

(assert (=> b!2945893 true))

(declare-fun bs!525579 () Bool)

(declare-fun b!2945891 () Bool)

(assert (= bs!525579 (and b!2945891 b!2945893)))

(declare-fun lambda!109622 () Int)

(declare-fun lambda!109621 () Int)

(assert (=> bs!525579 (not (= lambda!109622 lambda!109621))))

(assert (=> b!2945891 true))

(assert (=> b!2945891 true))

(declare-fun e!1855930 () Bool)

(declare-fun call!194286 () Bool)

(assert (=> b!2945891 (= e!1855930 call!194286)))

(declare-fun b!2945892 () Bool)

(declare-fun e!1855931 () Bool)

(declare-fun e!1855928 () Bool)

(assert (=> b!2945892 (= e!1855931 e!1855928)))

(declare-fun res!1215790 () Bool)

(assert (=> b!2945892 (= res!1215790 (matchRSpec!1270 (regOne!18779 r!17423) s!11993))))

(assert (=> b!2945892 (=> res!1215790 e!1855928)))

(declare-fun e!1855929 () Bool)

(assert (=> b!2945893 (= e!1855929 call!194286)))

(declare-fun b!2945894 () Bool)

(declare-fun c!481873 () Bool)

(assert (=> b!2945894 (= c!481873 ((_ is Union!9133) r!17423))))

(declare-fun e!1855925 () Bool)

(assert (=> b!2945894 (= e!1855925 e!1855931)))

(declare-fun b!2945895 () Bool)

(declare-fun e!1855926 () Bool)

(declare-fun call!194287 () Bool)

(assert (=> b!2945895 (= e!1855926 call!194287)))

(declare-fun b!2945896 () Bool)

(declare-fun e!1855927 () Bool)

(assert (=> b!2945896 (= e!1855926 e!1855927)))

(declare-fun res!1215792 () Bool)

(assert (=> b!2945896 (= res!1215792 (not ((_ is EmptyLang!9133) r!17423)))))

(assert (=> b!2945896 (=> (not res!1215792) (not e!1855927))))

(declare-fun b!2945897 () Bool)

(assert (=> b!2945897 (= e!1855931 e!1855930)))

(declare-fun c!481874 () Bool)

(assert (=> b!2945897 (= c!481874 ((_ is Star!9133) r!17423))))

(declare-fun b!2945898 () Bool)

(assert (=> b!2945898 (= e!1855925 (= s!11993 (Cons!34874 (c!481849 r!17423) Nil!34874)))))

(declare-fun b!2945899 () Bool)

(declare-fun c!481875 () Bool)

(assert (=> b!2945899 (= c!481875 ((_ is ElementMatch!9133) r!17423))))

(assert (=> b!2945899 (= e!1855927 e!1855925)))

(declare-fun d!840560 () Bool)

(declare-fun c!481872 () Bool)

(assert (=> d!840560 (= c!481872 ((_ is EmptyExpr!9133) r!17423))))

(assert (=> d!840560 (= (matchRSpec!1270 r!17423 s!11993) e!1855926)))

(declare-fun bm!194281 () Bool)

(assert (=> bm!194281 (= call!194287 (isEmpty!19135 s!11993))))

(declare-fun b!2945900 () Bool)

(assert (=> b!2945900 (= e!1855928 (matchRSpec!1270 (regTwo!18779 r!17423) s!11993))))

(declare-fun bm!194282 () Bool)

(declare-fun Exists!1468 (Int) Bool)

(assert (=> bm!194282 (= call!194286 (Exists!1468 (ite c!481874 lambda!109621 lambda!109622)))))

(declare-fun b!2945901 () Bool)

(declare-fun res!1215791 () Bool)

(assert (=> b!2945901 (=> res!1215791 e!1855929)))

(assert (=> b!2945901 (= res!1215791 call!194287)))

(assert (=> b!2945901 (= e!1855930 e!1855929)))

(assert (= (and d!840560 c!481872) b!2945895))

(assert (= (and d!840560 (not c!481872)) b!2945896))

(assert (= (and b!2945896 res!1215792) b!2945899))

(assert (= (and b!2945899 c!481875) b!2945898))

(assert (= (and b!2945899 (not c!481875)) b!2945894))

(assert (= (and b!2945894 c!481873) b!2945892))

(assert (= (and b!2945894 (not c!481873)) b!2945897))

(assert (= (and b!2945892 (not res!1215790)) b!2945900))

(assert (= (and b!2945897 c!481874) b!2945901))

(assert (= (and b!2945897 (not c!481874)) b!2945891))

(assert (= (and b!2945901 (not res!1215791)) b!2945893))

(assert (= (or b!2945893 b!2945891) bm!194282))

(assert (= (or b!2945895 b!2945901) bm!194281))

(declare-fun m!3327779 () Bool)

(assert (=> b!2945892 m!3327779))

(assert (=> bm!194281 m!3327765))

(declare-fun m!3327781 () Bool)

(assert (=> b!2945900 m!3327781))

(declare-fun m!3327783 () Bool)

(assert (=> bm!194282 m!3327783))

(assert (=> b!2945800 d!840560))

(declare-fun d!840568 () Bool)

(declare-fun e!1855950 () Bool)

(assert (=> d!840568 e!1855950))

(declare-fun c!481882 () Bool)

(assert (=> d!840568 (= c!481882 ((_ is EmptyExpr!9133) r!17423))))

(declare-fun lt!1031198 () Bool)

(declare-fun e!1855952 () Bool)

(assert (=> d!840568 (= lt!1031198 e!1855952)))

(declare-fun c!481884 () Bool)

(assert (=> d!840568 (= c!481884 (isEmpty!19135 s!11993))))

(assert (=> d!840568 (validRegex!3866 r!17423)))

(assert (=> d!840568 (= (matchR!4015 r!17423 s!11993) lt!1031198)))

(declare-fun bm!194285 () Bool)

(declare-fun call!194290 () Bool)

(assert (=> bm!194285 (= call!194290 (isEmpty!19135 s!11993))))

(declare-fun b!2945934 () Bool)

(declare-fun res!1215816 () Bool)

(declare-fun e!1855947 () Bool)

(assert (=> b!2945934 (=> res!1215816 e!1855947)))

(declare-fun e!1855949 () Bool)

(assert (=> b!2945934 (= res!1215816 e!1855949)))

(declare-fun res!1215809 () Bool)

(assert (=> b!2945934 (=> (not res!1215809) (not e!1855949))))

(assert (=> b!2945934 (= res!1215809 lt!1031198)))

(declare-fun b!2945935 () Bool)

(declare-fun e!1855946 () Bool)

(assert (=> b!2945935 (= e!1855950 e!1855946)))

(declare-fun c!481883 () Bool)

(assert (=> b!2945935 (= c!481883 ((_ is EmptyLang!9133) r!17423))))

(declare-fun b!2945936 () Bool)

(declare-fun e!1855951 () Bool)

(declare-fun e!1855948 () Bool)

(assert (=> b!2945936 (= e!1855951 e!1855948)))

(declare-fun res!1215810 () Bool)

(assert (=> b!2945936 (=> res!1215810 e!1855948)))

(assert (=> b!2945936 (= res!1215810 call!194290)))

(declare-fun b!2945937 () Bool)

(declare-fun res!1215813 () Bool)

(assert (=> b!2945937 (=> (not res!1215813) (not e!1855949))))

(declare-fun tail!4782 (List!34998) List!34998)

(assert (=> b!2945937 (= res!1215813 (isEmpty!19135 (tail!4782 s!11993)))))

(declare-fun b!2945938 () Bool)

(assert (=> b!2945938 (= e!1855952 (nullable!2894 r!17423))))

(declare-fun b!2945939 () Bool)

(assert (=> b!2945939 (= e!1855950 (= lt!1031198 call!194290))))

(declare-fun b!2945940 () Bool)

(declare-fun res!1215811 () Bool)

(assert (=> b!2945940 (=> res!1215811 e!1855948)))

(assert (=> b!2945940 (= res!1215811 (not (isEmpty!19135 (tail!4782 s!11993))))))

(declare-fun b!2945941 () Bool)

(declare-fun derivativeStep!2497 (Regex!9133 C!18452) Regex!9133)

(declare-fun head!6556 (List!34998) C!18452)

(assert (=> b!2945941 (= e!1855952 (matchR!4015 (derivativeStep!2497 r!17423 (head!6556 s!11993)) (tail!4782 s!11993)))))

(declare-fun b!2945942 () Bool)

(declare-fun res!1215814 () Bool)

(assert (=> b!2945942 (=> res!1215814 e!1855947)))

(assert (=> b!2945942 (= res!1215814 (not ((_ is ElementMatch!9133) r!17423)))))

(assert (=> b!2945942 (= e!1855946 e!1855947)))

(declare-fun b!2945943 () Bool)

(assert (=> b!2945943 (= e!1855946 (not lt!1031198))))

(declare-fun b!2945944 () Bool)

(declare-fun res!1215815 () Bool)

(assert (=> b!2945944 (=> (not res!1215815) (not e!1855949))))

(assert (=> b!2945944 (= res!1215815 (not call!194290))))

(declare-fun b!2945945 () Bool)

(assert (=> b!2945945 (= e!1855948 (not (= (head!6556 s!11993) (c!481849 r!17423))))))

(declare-fun b!2945946 () Bool)

(assert (=> b!2945946 (= e!1855949 (= (head!6556 s!11993) (c!481849 r!17423)))))

(declare-fun b!2945947 () Bool)

(assert (=> b!2945947 (= e!1855947 e!1855951)))

(declare-fun res!1215812 () Bool)

(assert (=> b!2945947 (=> (not res!1215812) (not e!1855951))))

(assert (=> b!2945947 (= res!1215812 (not lt!1031198))))

(assert (= (and d!840568 c!481884) b!2945938))

(assert (= (and d!840568 (not c!481884)) b!2945941))

(assert (= (and d!840568 c!481882) b!2945939))

(assert (= (and d!840568 (not c!481882)) b!2945935))

(assert (= (and b!2945935 c!481883) b!2945943))

(assert (= (and b!2945935 (not c!481883)) b!2945942))

(assert (= (and b!2945942 (not res!1215814)) b!2945934))

(assert (= (and b!2945934 res!1215809) b!2945944))

(assert (= (and b!2945944 res!1215815) b!2945937))

(assert (= (and b!2945937 res!1215813) b!2945946))

(assert (= (and b!2945934 (not res!1215816)) b!2945947))

(assert (= (and b!2945947 res!1215812) b!2945936))

(assert (= (and b!2945936 (not res!1215810)) b!2945940))

(assert (= (and b!2945940 (not res!1215811)) b!2945945))

(assert (= (or b!2945939 b!2945936 b!2945944) bm!194285))

(declare-fun m!3327785 () Bool)

(assert (=> b!2945940 m!3327785))

(assert (=> b!2945940 m!3327785))

(declare-fun m!3327787 () Bool)

(assert (=> b!2945940 m!3327787))

(declare-fun m!3327789 () Bool)

(assert (=> b!2945945 m!3327789))

(assert (=> b!2945937 m!3327785))

(assert (=> b!2945937 m!3327785))

(assert (=> b!2945937 m!3327787))

(assert (=> b!2945946 m!3327789))

(assert (=> d!840568 m!3327765))

(assert (=> d!840568 m!3327771))

(assert (=> bm!194285 m!3327765))

(assert (=> b!2945941 m!3327789))

(assert (=> b!2945941 m!3327789))

(declare-fun m!3327791 () Bool)

(assert (=> b!2945941 m!3327791))

(assert (=> b!2945941 m!3327785))

(assert (=> b!2945941 m!3327791))

(assert (=> b!2945941 m!3327785))

(declare-fun m!3327793 () Bool)

(assert (=> b!2945941 m!3327793))

(declare-fun m!3327795 () Bool)

(assert (=> b!2945938 m!3327795))

(assert (=> b!2945800 d!840568))

(declare-fun d!840570 () Bool)

(assert (=> d!840570 (= (matchR!4015 r!17423 s!11993) (matchRSpec!1270 r!17423 s!11993))))

(declare-fun lt!1031201 () Unit!48645)

(declare-fun choose!17412 (Regex!9133 List!34998) Unit!48645)

(assert (=> d!840570 (= lt!1031201 (choose!17412 r!17423 s!11993))))

(assert (=> d!840570 (validRegex!3866 r!17423)))

(assert (=> d!840570 (= (mainMatchTheorem!1270 r!17423 s!11993) lt!1031201)))

(declare-fun bs!525580 () Bool)

(assert (= bs!525580 d!840570))

(assert (=> bs!525580 m!3327753))

(assert (=> bs!525580 m!3327751))

(declare-fun m!3327797 () Bool)

(assert (=> bs!525580 m!3327797))

(assert (=> bs!525580 m!3327771))

(assert (=> b!2945800 d!840570))

(declare-fun d!840572 () Bool)

(assert (=> d!840572 (= (isEmpty!19135 s!11993) ((_ is Nil!34874) s!11993))))

(assert (=> b!2945806 d!840572))

(declare-fun b!2945948 () Bool)

(declare-fun res!1215817 () Bool)

(declare-fun e!1855954 () Bool)

(assert (=> b!2945948 (=> res!1215817 e!1855954)))

(assert (=> b!2945948 (= res!1215817 (not ((_ is Concat!14454) r!17423)))))

(declare-fun e!1855959 () Bool)

(assert (=> b!2945948 (= e!1855959 e!1855954)))

(declare-fun b!2945949 () Bool)

(declare-fun e!1855956 () Bool)

(declare-fun e!1855957 () Bool)

(assert (=> b!2945949 (= e!1855956 e!1855957)))

(declare-fun res!1215820 () Bool)

(assert (=> b!2945949 (= res!1215820 (not (nullable!2894 (reg!9462 r!17423))))))

(assert (=> b!2945949 (=> (not res!1215820) (not e!1855957))))

(declare-fun c!481885 () Bool)

(declare-fun c!481886 () Bool)

(declare-fun call!194291 () Bool)

(declare-fun bm!194286 () Bool)

(assert (=> bm!194286 (= call!194291 (validRegex!3866 (ite c!481886 (reg!9462 r!17423) (ite c!481885 (regTwo!18779 r!17423) (regOne!18778 r!17423)))))))

(declare-fun d!840574 () Bool)

(declare-fun res!1215818 () Bool)

(declare-fun e!1855955 () Bool)

(assert (=> d!840574 (=> res!1215818 e!1855955)))

(assert (=> d!840574 (= res!1215818 ((_ is ElementMatch!9133) r!17423))))

(assert (=> d!840574 (= (validRegex!3866 r!17423) e!1855955)))

(declare-fun b!2945950 () Bool)

(assert (=> b!2945950 (= e!1855956 e!1855959)))

(assert (=> b!2945950 (= c!481885 ((_ is Union!9133) r!17423))))

(declare-fun b!2945951 () Bool)

(declare-fun res!1215821 () Bool)

(declare-fun e!1855953 () Bool)

(assert (=> b!2945951 (=> (not res!1215821) (not e!1855953))))

(declare-fun call!194293 () Bool)

(assert (=> b!2945951 (= res!1215821 call!194293)))

(assert (=> b!2945951 (= e!1855959 e!1855953)))

(declare-fun bm!194287 () Bool)

(declare-fun call!194292 () Bool)

(assert (=> bm!194287 (= call!194292 call!194291)))

(declare-fun b!2945952 () Bool)

(declare-fun e!1855958 () Bool)

(assert (=> b!2945952 (= e!1855954 e!1855958)))

(declare-fun res!1215819 () Bool)

(assert (=> b!2945952 (=> (not res!1215819) (not e!1855958))))

(assert (=> b!2945952 (= res!1215819 call!194292)))

(declare-fun b!2945953 () Bool)

(assert (=> b!2945953 (= e!1855955 e!1855956)))

(assert (=> b!2945953 (= c!481886 ((_ is Star!9133) r!17423))))

(declare-fun b!2945954 () Bool)

(assert (=> b!2945954 (= e!1855953 call!194292)))

(declare-fun b!2945955 () Bool)

(assert (=> b!2945955 (= e!1855958 call!194293)))

(declare-fun bm!194288 () Bool)

(assert (=> bm!194288 (= call!194293 (validRegex!3866 (ite c!481885 (regOne!18779 r!17423) (regTwo!18778 r!17423))))))

(declare-fun b!2945956 () Bool)

(assert (=> b!2945956 (= e!1855957 call!194291)))

(assert (= (and d!840574 (not res!1215818)) b!2945953))

(assert (= (and b!2945953 c!481886) b!2945949))

(assert (= (and b!2945953 (not c!481886)) b!2945950))

(assert (= (and b!2945949 res!1215820) b!2945956))

(assert (= (and b!2945950 c!481885) b!2945951))

(assert (= (and b!2945950 (not c!481885)) b!2945948))

(assert (= (and b!2945951 res!1215821) b!2945954))

(assert (= (and b!2945948 (not res!1215817)) b!2945952))

(assert (= (and b!2945952 res!1215819) b!2945955))

(assert (= (or b!2945951 b!2945955) bm!194288))

(assert (= (or b!2945954 b!2945952) bm!194287))

(assert (= (or b!2945956 bm!194287) bm!194286))

(declare-fun m!3327799 () Bool)

(assert (=> b!2945949 m!3327799))

(declare-fun m!3327801 () Bool)

(assert (=> bm!194286 m!3327801))

(declare-fun m!3327803 () Bool)

(assert (=> bm!194288 m!3327803))

(assert (=> start!285888 d!840574))

(declare-fun d!840576 () Bool)

(assert (=> d!840576 (= (isEmptyExpr!336 lt!1031192) ((_ is EmptyExpr!9133) lt!1031192))))

(assert (=> b!2945801 d!840576))

(declare-fun d!840578 () Bool)

(assert (=> d!840578 (= (isEmptyLang!255 lt!1031194) ((_ is EmptyLang!9133) lt!1031194))))

(assert (=> b!2945802 d!840578))

(declare-fun b!2946007 () Bool)

(declare-fun e!1855992 () Regex!9133)

(declare-fun e!1856001 () Regex!9133)

(assert (=> b!2946007 (= e!1855992 e!1856001)))

(declare-fun c!481917 () Bool)

(declare-fun call!194312 () Bool)

(assert (=> b!2946007 (= c!481917 call!194312)))

(declare-fun b!2946008 () Bool)

(declare-fun e!1855988 () Bool)

(declare-fun lt!1031217 () Regex!9133)

(assert (=> b!2946008 (= e!1855988 (= (nullable!2894 lt!1031217) (nullable!2894 (regTwo!18778 r!17423))))))

(declare-fun b!2946009 () Bool)

(declare-fun e!1855989 () Regex!9133)

(declare-fun e!1855991 () Regex!9133)

(assert (=> b!2946009 (= e!1855989 e!1855991)))

(declare-fun lt!1031216 () Regex!9133)

(declare-fun call!194309 () Regex!9133)

(assert (=> b!2946009 (= lt!1031216 call!194309)))

(declare-fun lt!1031219 () Regex!9133)

(declare-fun call!194313 () Regex!9133)

(assert (=> b!2946009 (= lt!1031219 call!194313)))

(declare-fun res!1215829 () Bool)

(declare-fun call!194310 () Bool)

(assert (=> b!2946009 (= res!1215829 call!194310)))

(declare-fun e!1855998 () Bool)

(assert (=> b!2946009 (=> res!1215829 e!1855998)))

(declare-fun c!481910 () Bool)

(assert (=> b!2946009 (= c!481910 e!1855998)))

(declare-fun call!194314 () Bool)

(declare-fun lt!1031218 () Regex!9133)

(declare-fun lt!1031215 () Regex!9133)

(declare-fun c!481913 () Bool)

(declare-fun c!481911 () Bool)

(declare-fun bm!194303 () Bool)

(assert (=> bm!194303 (= call!194314 (isEmptyLang!255 (ite c!481911 lt!1031215 (ite c!481913 lt!1031218 lt!1031216))))))

(declare-fun b!2946010 () Bool)

(declare-fun e!1855999 () Regex!9133)

(assert (=> b!2946010 (= e!1855989 e!1855999)))

(declare-fun lt!1031214 () Regex!9133)

(assert (=> b!2946010 (= lt!1031214 call!194313)))

(assert (=> b!2946010 (= lt!1031218 call!194309)))

(declare-fun c!481918 () Bool)

(declare-fun call!194311 () Bool)

(assert (=> b!2946010 (= c!481918 call!194311)))

(declare-fun bm!194304 () Bool)

(assert (=> bm!194304 (= call!194310 call!194314)))

(declare-fun b!2946011 () Bool)

(declare-fun c!481912 () Bool)

(assert (=> b!2946011 (= c!481912 call!194310)))

(declare-fun e!1855993 () Regex!9133)

(assert (=> b!2946011 (= e!1855999 e!1855993)))

(declare-fun d!840580 () Bool)

(assert (=> d!840580 e!1855988))

(declare-fun res!1215830 () Bool)

(assert (=> d!840580 (=> (not res!1215830) (not e!1855988))))

(assert (=> d!840580 (= res!1215830 (validRegex!3866 lt!1031217))))

(declare-fun e!1855997 () Regex!9133)

(assert (=> d!840580 (= lt!1031217 e!1855997)))

(declare-fun c!481915 () Bool)

(assert (=> d!840580 (= c!481915 ((_ is EmptyLang!9133) (regTwo!18778 r!17423)))))

(assert (=> d!840580 (validRegex!3866 (regTwo!18778 r!17423))))

(assert (=> d!840580 (= (simplify!138 (regTwo!18778 r!17423)) lt!1031217)))

(declare-fun b!2946012 () Bool)

(declare-fun e!1856000 () Regex!9133)

(assert (=> b!2946012 (= e!1856000 EmptyExpr!9133)))

(declare-fun b!2946013 () Bool)

(declare-fun e!1855995 () Regex!9133)

(assert (=> b!2946013 (= e!1855995 (regTwo!18778 r!17423))))

(declare-fun b!2946014 () Bool)

(assert (=> b!2946014 (= e!1855993 (Union!9133 lt!1031214 lt!1031218))))

(declare-fun bm!194305 () Bool)

(assert (=> bm!194305 (= call!194312 (isEmptyExpr!336 (ite c!481911 lt!1031215 lt!1031219)))))

(declare-fun b!2946015 () Bool)

(assert (=> b!2946015 (= e!1856001 lt!1031216)))

(declare-fun b!2946016 () Bool)

(assert (=> b!2946016 (= e!1855999 lt!1031218)))

(declare-fun b!2946017 () Bool)

(assert (=> b!2946017 (= c!481913 ((_ is Union!9133) (regTwo!18778 r!17423)))))

(declare-fun e!1855996 () Regex!9133)

(assert (=> b!2946017 (= e!1855996 e!1855989)))

(declare-fun b!2946018 () Bool)

(assert (=> b!2946018 (= e!1855991 EmptyLang!9133)))

(declare-fun bm!194306 () Bool)

(assert (=> bm!194306 (= call!194309 (simplify!138 (ite c!481913 (regTwo!18779 (regTwo!18778 r!17423)) (regOne!18778 (regTwo!18778 r!17423)))))))

(declare-fun b!2946019 () Bool)

(declare-fun c!481919 () Bool)

(declare-fun e!1855990 () Bool)

(assert (=> b!2946019 (= c!481919 e!1855990)))

(declare-fun res!1215828 () Bool)

(assert (=> b!2946019 (=> res!1215828 e!1855990)))

(assert (=> b!2946019 (= res!1215828 call!194314)))

(declare-fun call!194308 () Regex!9133)

(assert (=> b!2946019 (= lt!1031215 call!194308)))

(declare-fun e!1855994 () Regex!9133)

(assert (=> b!2946019 (= e!1855996 e!1855994)))

(declare-fun b!2946020 () Bool)

(declare-fun c!481916 () Bool)

(assert (=> b!2946020 (= c!481916 (isEmptyExpr!336 lt!1031216))))

(assert (=> b!2946020 (= e!1855991 e!1855992)))

(declare-fun b!2946021 () Bool)

(assert (=> b!2946021 (= e!1855994 EmptyExpr!9133)))

(declare-fun bm!194307 () Bool)

(assert (=> bm!194307 (= call!194313 call!194308)))

(declare-fun b!2946022 () Bool)

(assert (=> b!2946022 (= e!1855994 (Star!9133 lt!1031215))))

(declare-fun b!2946023 () Bool)

(assert (=> b!2946023 (= e!1855993 lt!1031214)))

(declare-fun b!2946024 () Bool)

(assert (=> b!2946024 (= e!1856001 (Concat!14454 lt!1031216 lt!1031219))))

(declare-fun b!2946025 () Bool)

(assert (=> b!2946025 (= e!1856000 e!1855996)))

(assert (=> b!2946025 (= c!481911 ((_ is Star!9133) (regTwo!18778 r!17423)))))

(declare-fun bm!194308 () Bool)

(assert (=> bm!194308 (= call!194311 (isEmptyLang!255 (ite c!481913 lt!1031214 lt!1031219)))))

(declare-fun bm!194309 () Bool)

(assert (=> bm!194309 (= call!194308 (simplify!138 (ite c!481911 (reg!9462 (regTwo!18778 r!17423)) (ite c!481913 (regOne!18779 (regTwo!18778 r!17423)) (regTwo!18778 (regTwo!18778 r!17423))))))))

(declare-fun b!2946026 () Bool)

(declare-fun c!481914 () Bool)

(assert (=> b!2946026 (= c!481914 ((_ is EmptyExpr!9133) (regTwo!18778 r!17423)))))

(assert (=> b!2946026 (= e!1855995 e!1856000)))

(declare-fun b!2946027 () Bool)

(assert (=> b!2946027 (= e!1855992 lt!1031219)))

(declare-fun b!2946028 () Bool)

(assert (=> b!2946028 (= e!1855997 e!1855995)))

(declare-fun c!481909 () Bool)

(assert (=> b!2946028 (= c!481909 ((_ is ElementMatch!9133) (regTwo!18778 r!17423)))))

(declare-fun b!2946029 () Bool)

(assert (=> b!2946029 (= e!1855997 EmptyLang!9133)))

(declare-fun b!2946030 () Bool)

(assert (=> b!2946030 (= e!1855990 call!194312)))

(declare-fun b!2946031 () Bool)

(assert (=> b!2946031 (= e!1855998 call!194311)))

(assert (= (and d!840580 c!481915) b!2946029))

(assert (= (and d!840580 (not c!481915)) b!2946028))

(assert (= (and b!2946028 c!481909) b!2946013))

(assert (= (and b!2946028 (not c!481909)) b!2946026))

(assert (= (and b!2946026 c!481914) b!2946012))

(assert (= (and b!2946026 (not c!481914)) b!2946025))

(assert (= (and b!2946025 c!481911) b!2946019))

(assert (= (and b!2946025 (not c!481911)) b!2946017))

(assert (= (and b!2946019 (not res!1215828)) b!2946030))

(assert (= (and b!2946019 c!481919) b!2946021))

(assert (= (and b!2946019 (not c!481919)) b!2946022))

(assert (= (and b!2946017 c!481913) b!2946010))

(assert (= (and b!2946017 (not c!481913)) b!2946009))

(assert (= (and b!2946010 c!481918) b!2946016))

(assert (= (and b!2946010 (not c!481918)) b!2946011))

(assert (= (and b!2946011 c!481912) b!2946023))

(assert (= (and b!2946011 (not c!481912)) b!2946014))

(assert (= (and b!2946009 (not res!1215829)) b!2946031))

(assert (= (and b!2946009 c!481910) b!2946018))

(assert (= (and b!2946009 (not c!481910)) b!2946020))

(assert (= (and b!2946020 c!481916) b!2946027))

(assert (= (and b!2946020 (not c!481916)) b!2946007))

(assert (= (and b!2946007 c!481917) b!2946015))

(assert (= (and b!2946007 (not c!481917)) b!2946024))

(assert (= (or b!2946010 b!2946009) bm!194307))

(assert (= (or b!2946010 b!2946009) bm!194306))

(assert (= (or b!2946011 b!2946009) bm!194304))

(assert (= (or b!2946010 b!2946031) bm!194308))

(assert (= (or b!2946030 b!2946007) bm!194305))

(assert (= (or b!2946019 bm!194307) bm!194309))

(assert (= (or b!2946019 bm!194304) bm!194303))

(assert (= (and d!840580 res!1215830) b!2946008))

(declare-fun m!3327805 () Bool)

(assert (=> bm!194306 m!3327805))

(declare-fun m!3327807 () Bool)

(assert (=> bm!194305 m!3327807))

(declare-fun m!3327809 () Bool)

(assert (=> b!2946008 m!3327809))

(declare-fun m!3327811 () Bool)

(assert (=> b!2946008 m!3327811))

(declare-fun m!3327813 () Bool)

(assert (=> d!840580 m!3327813))

(assert (=> d!840580 m!3327767))

(declare-fun m!3327815 () Bool)

(assert (=> bm!194308 m!3327815))

(declare-fun m!3327817 () Bool)

(assert (=> bm!194309 m!3327817))

(declare-fun m!3327819 () Bool)

(assert (=> bm!194303 m!3327819))

(declare-fun m!3327821 () Bool)

(assert (=> b!2946020 m!3327821))

(assert (=> b!2945802 d!840580))

(declare-fun b!2946032 () Bool)

(declare-fun e!1856006 () Regex!9133)

(declare-fun e!1856015 () Regex!9133)

(assert (=> b!2946032 (= e!1856006 e!1856015)))

(declare-fun c!481928 () Bool)

(declare-fun call!194319 () Bool)

(assert (=> b!2946032 (= c!481928 call!194319)))

(declare-fun b!2946033 () Bool)

(declare-fun e!1856002 () Bool)

(declare-fun lt!1031223 () Regex!9133)

(assert (=> b!2946033 (= e!1856002 (= (nullable!2894 lt!1031223) (nullable!2894 (regOne!18778 r!17423))))))

(declare-fun b!2946034 () Bool)

(declare-fun e!1856003 () Regex!9133)

(declare-fun e!1856005 () Regex!9133)

(assert (=> b!2946034 (= e!1856003 e!1856005)))

(declare-fun lt!1031222 () Regex!9133)

(declare-fun call!194316 () Regex!9133)

(assert (=> b!2946034 (= lt!1031222 call!194316)))

(declare-fun lt!1031225 () Regex!9133)

(declare-fun call!194320 () Regex!9133)

(assert (=> b!2946034 (= lt!1031225 call!194320)))

(declare-fun res!1215832 () Bool)

(declare-fun call!194317 () Bool)

(assert (=> b!2946034 (= res!1215832 call!194317)))

(declare-fun e!1856012 () Bool)

(assert (=> b!2946034 (=> res!1215832 e!1856012)))

(declare-fun c!481921 () Bool)

(assert (=> b!2946034 (= c!481921 e!1856012)))

(declare-fun bm!194310 () Bool)

(declare-fun call!194321 () Bool)

(declare-fun c!481922 () Bool)

(declare-fun lt!1031221 () Regex!9133)

(declare-fun c!481924 () Bool)

(declare-fun lt!1031224 () Regex!9133)

(assert (=> bm!194310 (= call!194321 (isEmptyLang!255 (ite c!481922 lt!1031221 (ite c!481924 lt!1031224 lt!1031222))))))

(declare-fun b!2946035 () Bool)

(declare-fun e!1856013 () Regex!9133)

(assert (=> b!2946035 (= e!1856003 e!1856013)))

(declare-fun lt!1031220 () Regex!9133)

(assert (=> b!2946035 (= lt!1031220 call!194320)))

(assert (=> b!2946035 (= lt!1031224 call!194316)))

(declare-fun c!481929 () Bool)

(declare-fun call!194318 () Bool)

(assert (=> b!2946035 (= c!481929 call!194318)))

(declare-fun bm!194311 () Bool)

(assert (=> bm!194311 (= call!194317 call!194321)))

(declare-fun b!2946036 () Bool)

(declare-fun c!481923 () Bool)

(assert (=> b!2946036 (= c!481923 call!194317)))

(declare-fun e!1856007 () Regex!9133)

(assert (=> b!2946036 (= e!1856013 e!1856007)))

(declare-fun d!840582 () Bool)

(assert (=> d!840582 e!1856002))

(declare-fun res!1215833 () Bool)

(assert (=> d!840582 (=> (not res!1215833) (not e!1856002))))

(assert (=> d!840582 (= res!1215833 (validRegex!3866 lt!1031223))))

(declare-fun e!1856011 () Regex!9133)

(assert (=> d!840582 (= lt!1031223 e!1856011)))

(declare-fun c!481926 () Bool)

(assert (=> d!840582 (= c!481926 ((_ is EmptyLang!9133) (regOne!18778 r!17423)))))

(assert (=> d!840582 (validRegex!3866 (regOne!18778 r!17423))))

(assert (=> d!840582 (= (simplify!138 (regOne!18778 r!17423)) lt!1031223)))

(declare-fun b!2946037 () Bool)

(declare-fun e!1856014 () Regex!9133)

(assert (=> b!2946037 (= e!1856014 EmptyExpr!9133)))

(declare-fun b!2946038 () Bool)

(declare-fun e!1856009 () Regex!9133)

(assert (=> b!2946038 (= e!1856009 (regOne!18778 r!17423))))

(declare-fun b!2946039 () Bool)

(assert (=> b!2946039 (= e!1856007 (Union!9133 lt!1031220 lt!1031224))))

(declare-fun bm!194312 () Bool)

(assert (=> bm!194312 (= call!194319 (isEmptyExpr!336 (ite c!481922 lt!1031221 lt!1031225)))))

(declare-fun b!2946040 () Bool)

(assert (=> b!2946040 (= e!1856015 lt!1031222)))

(declare-fun b!2946041 () Bool)

(assert (=> b!2946041 (= e!1856013 lt!1031224)))

(declare-fun b!2946042 () Bool)

(assert (=> b!2946042 (= c!481924 ((_ is Union!9133) (regOne!18778 r!17423)))))

(declare-fun e!1856010 () Regex!9133)

(assert (=> b!2946042 (= e!1856010 e!1856003)))

(declare-fun b!2946043 () Bool)

(assert (=> b!2946043 (= e!1856005 EmptyLang!9133)))

(declare-fun bm!194313 () Bool)

(assert (=> bm!194313 (= call!194316 (simplify!138 (ite c!481924 (regTwo!18779 (regOne!18778 r!17423)) (regOne!18778 (regOne!18778 r!17423)))))))

(declare-fun b!2946044 () Bool)

(declare-fun c!481930 () Bool)

(declare-fun e!1856004 () Bool)

(assert (=> b!2946044 (= c!481930 e!1856004)))

(declare-fun res!1215831 () Bool)

(assert (=> b!2946044 (=> res!1215831 e!1856004)))

(assert (=> b!2946044 (= res!1215831 call!194321)))

(declare-fun call!194315 () Regex!9133)

(assert (=> b!2946044 (= lt!1031221 call!194315)))

(declare-fun e!1856008 () Regex!9133)

(assert (=> b!2946044 (= e!1856010 e!1856008)))

(declare-fun b!2946045 () Bool)

(declare-fun c!481927 () Bool)

(assert (=> b!2946045 (= c!481927 (isEmptyExpr!336 lt!1031222))))

(assert (=> b!2946045 (= e!1856005 e!1856006)))

(declare-fun b!2946046 () Bool)

(assert (=> b!2946046 (= e!1856008 EmptyExpr!9133)))

(declare-fun bm!194314 () Bool)

(assert (=> bm!194314 (= call!194320 call!194315)))

(declare-fun b!2946047 () Bool)

(assert (=> b!2946047 (= e!1856008 (Star!9133 lt!1031221))))

(declare-fun b!2946048 () Bool)

(assert (=> b!2946048 (= e!1856007 lt!1031220)))

(declare-fun b!2946049 () Bool)

(assert (=> b!2946049 (= e!1856015 (Concat!14454 lt!1031222 lt!1031225))))

(declare-fun b!2946050 () Bool)

(assert (=> b!2946050 (= e!1856014 e!1856010)))

(assert (=> b!2946050 (= c!481922 ((_ is Star!9133) (regOne!18778 r!17423)))))

(declare-fun bm!194315 () Bool)

(assert (=> bm!194315 (= call!194318 (isEmptyLang!255 (ite c!481924 lt!1031220 lt!1031225)))))

(declare-fun bm!194316 () Bool)

(assert (=> bm!194316 (= call!194315 (simplify!138 (ite c!481922 (reg!9462 (regOne!18778 r!17423)) (ite c!481924 (regOne!18779 (regOne!18778 r!17423)) (regTwo!18778 (regOne!18778 r!17423))))))))

(declare-fun b!2946051 () Bool)

(declare-fun c!481925 () Bool)

(assert (=> b!2946051 (= c!481925 ((_ is EmptyExpr!9133) (regOne!18778 r!17423)))))

(assert (=> b!2946051 (= e!1856009 e!1856014)))

(declare-fun b!2946052 () Bool)

(assert (=> b!2946052 (= e!1856006 lt!1031225)))

(declare-fun b!2946053 () Bool)

(assert (=> b!2946053 (= e!1856011 e!1856009)))

(declare-fun c!481920 () Bool)

(assert (=> b!2946053 (= c!481920 ((_ is ElementMatch!9133) (regOne!18778 r!17423)))))

(declare-fun b!2946054 () Bool)

(assert (=> b!2946054 (= e!1856011 EmptyLang!9133)))

(declare-fun b!2946055 () Bool)

(assert (=> b!2946055 (= e!1856004 call!194319)))

(declare-fun b!2946056 () Bool)

(assert (=> b!2946056 (= e!1856012 call!194318)))

(assert (= (and d!840582 c!481926) b!2946054))

(assert (= (and d!840582 (not c!481926)) b!2946053))

(assert (= (and b!2946053 c!481920) b!2946038))

(assert (= (and b!2946053 (not c!481920)) b!2946051))

(assert (= (and b!2946051 c!481925) b!2946037))

(assert (= (and b!2946051 (not c!481925)) b!2946050))

(assert (= (and b!2946050 c!481922) b!2946044))

(assert (= (and b!2946050 (not c!481922)) b!2946042))

(assert (= (and b!2946044 (not res!1215831)) b!2946055))

(assert (= (and b!2946044 c!481930) b!2946046))

(assert (= (and b!2946044 (not c!481930)) b!2946047))

(assert (= (and b!2946042 c!481924) b!2946035))

(assert (= (and b!2946042 (not c!481924)) b!2946034))

(assert (= (and b!2946035 c!481929) b!2946041))

(assert (= (and b!2946035 (not c!481929)) b!2946036))

(assert (= (and b!2946036 c!481923) b!2946048))

(assert (= (and b!2946036 (not c!481923)) b!2946039))

(assert (= (and b!2946034 (not res!1215832)) b!2946056))

(assert (= (and b!2946034 c!481921) b!2946043))

(assert (= (and b!2946034 (not c!481921)) b!2946045))

(assert (= (and b!2946045 c!481927) b!2946052))

(assert (= (and b!2946045 (not c!481927)) b!2946032))

(assert (= (and b!2946032 c!481928) b!2946040))

(assert (= (and b!2946032 (not c!481928)) b!2946049))

(assert (= (or b!2946035 b!2946034) bm!194314))

(assert (= (or b!2946035 b!2946034) bm!194313))

(assert (= (or b!2946036 b!2946034) bm!194311))

(assert (= (or b!2946035 b!2946056) bm!194315))

(assert (= (or b!2946055 b!2946032) bm!194312))

(assert (= (or b!2946044 bm!194314) bm!194316))

(assert (= (or b!2946044 bm!194311) bm!194310))

(assert (= (and d!840582 res!1215833) b!2946033))

(declare-fun m!3327823 () Bool)

(assert (=> bm!194313 m!3327823))

(declare-fun m!3327825 () Bool)

(assert (=> bm!194312 m!3327825))

(declare-fun m!3327827 () Bool)

(assert (=> b!2946033 m!3327827))

(declare-fun m!3327829 () Bool)

(assert (=> b!2946033 m!3327829))

(declare-fun m!3327831 () Bool)

(assert (=> d!840582 m!3327831))

(declare-fun m!3327833 () Bool)

(assert (=> d!840582 m!3327833))

(declare-fun m!3327835 () Bool)

(assert (=> bm!194315 m!3327835))

(declare-fun m!3327837 () Bool)

(assert (=> bm!194316 m!3327837))

(declare-fun m!3327839 () Bool)

(assert (=> bm!194310 m!3327839))

(declare-fun m!3327841 () Bool)

(assert (=> b!2946045 m!3327841))

(assert (=> b!2945802 d!840582))

(declare-fun d!840584 () Bool)

(assert (=> d!840584 (= (isEmptyExpr!336 lt!1031194) ((_ is EmptyExpr!9133) lt!1031194))))

(assert (=> b!2945808 d!840584))

(declare-fun b!2946068 () Bool)

(declare-fun e!1856018 () Bool)

(declare-fun tp!942314 () Bool)

(declare-fun tp!942316 () Bool)

(assert (=> b!2946068 (= e!1856018 (and tp!942314 tp!942316))))

(assert (=> b!2945803 (= tp!942296 e!1856018)))

(declare-fun b!2946069 () Bool)

(declare-fun tp!942313 () Bool)

(assert (=> b!2946069 (= e!1856018 tp!942313)))

(declare-fun b!2946070 () Bool)

(declare-fun tp!942315 () Bool)

(declare-fun tp!942312 () Bool)

(assert (=> b!2946070 (= e!1856018 (and tp!942315 tp!942312))))

(declare-fun b!2946067 () Bool)

(assert (=> b!2946067 (= e!1856018 tp_is_empty!15829)))

(assert (= (and b!2945803 ((_ is ElementMatch!9133) (reg!9462 r!17423))) b!2946067))

(assert (= (and b!2945803 ((_ is Concat!14454) (reg!9462 r!17423))) b!2946068))

(assert (= (and b!2945803 ((_ is Star!9133) (reg!9462 r!17423))) b!2946069))

(assert (= (and b!2945803 ((_ is Union!9133) (reg!9462 r!17423))) b!2946070))

(declare-fun b!2946072 () Bool)

(declare-fun e!1856019 () Bool)

(declare-fun tp!942319 () Bool)

(declare-fun tp!942321 () Bool)

(assert (=> b!2946072 (= e!1856019 (and tp!942319 tp!942321))))

(assert (=> b!2945809 (= tp!942300 e!1856019)))

(declare-fun b!2946073 () Bool)

(declare-fun tp!942318 () Bool)

(assert (=> b!2946073 (= e!1856019 tp!942318)))

(declare-fun b!2946074 () Bool)

(declare-fun tp!942320 () Bool)

(declare-fun tp!942317 () Bool)

(assert (=> b!2946074 (= e!1856019 (and tp!942320 tp!942317))))

(declare-fun b!2946071 () Bool)

(assert (=> b!2946071 (= e!1856019 tp_is_empty!15829)))

(assert (= (and b!2945809 ((_ is ElementMatch!9133) (regOne!18779 r!17423))) b!2946071))

(assert (= (and b!2945809 ((_ is Concat!14454) (regOne!18779 r!17423))) b!2946072))

(assert (= (and b!2945809 ((_ is Star!9133) (regOne!18779 r!17423))) b!2946073))

(assert (= (and b!2945809 ((_ is Union!9133) (regOne!18779 r!17423))) b!2946074))

(declare-fun b!2946076 () Bool)

(declare-fun e!1856020 () Bool)

(declare-fun tp!942324 () Bool)

(declare-fun tp!942326 () Bool)

(assert (=> b!2946076 (= e!1856020 (and tp!942324 tp!942326))))

(assert (=> b!2945809 (= tp!942297 e!1856020)))

(declare-fun b!2946077 () Bool)

(declare-fun tp!942323 () Bool)

(assert (=> b!2946077 (= e!1856020 tp!942323)))

(declare-fun b!2946078 () Bool)

(declare-fun tp!942325 () Bool)

(declare-fun tp!942322 () Bool)

(assert (=> b!2946078 (= e!1856020 (and tp!942325 tp!942322))))

(declare-fun b!2946075 () Bool)

(assert (=> b!2946075 (= e!1856020 tp_is_empty!15829)))

(assert (= (and b!2945809 ((_ is ElementMatch!9133) (regTwo!18779 r!17423))) b!2946075))

(assert (= (and b!2945809 ((_ is Concat!14454) (regTwo!18779 r!17423))) b!2946076))

(assert (= (and b!2945809 ((_ is Star!9133) (regTwo!18779 r!17423))) b!2946077))

(assert (= (and b!2945809 ((_ is Union!9133) (regTwo!18779 r!17423))) b!2946078))

(declare-fun b!2946080 () Bool)

(declare-fun e!1856021 () Bool)

(declare-fun tp!942329 () Bool)

(declare-fun tp!942331 () Bool)

(assert (=> b!2946080 (= e!1856021 (and tp!942329 tp!942331))))

(assert (=> b!2945799 (= tp!942299 e!1856021)))

(declare-fun b!2946081 () Bool)

(declare-fun tp!942328 () Bool)

(assert (=> b!2946081 (= e!1856021 tp!942328)))

(declare-fun b!2946082 () Bool)

(declare-fun tp!942330 () Bool)

(declare-fun tp!942327 () Bool)

(assert (=> b!2946082 (= e!1856021 (and tp!942330 tp!942327))))

(declare-fun b!2946079 () Bool)

(assert (=> b!2946079 (= e!1856021 tp_is_empty!15829)))

(assert (= (and b!2945799 ((_ is ElementMatch!9133) (regOne!18778 r!17423))) b!2946079))

(assert (= (and b!2945799 ((_ is Concat!14454) (regOne!18778 r!17423))) b!2946080))

(assert (= (and b!2945799 ((_ is Star!9133) (regOne!18778 r!17423))) b!2946081))

(assert (= (and b!2945799 ((_ is Union!9133) (regOne!18778 r!17423))) b!2946082))

(declare-fun b!2946084 () Bool)

(declare-fun e!1856022 () Bool)

(declare-fun tp!942334 () Bool)

(declare-fun tp!942336 () Bool)

(assert (=> b!2946084 (= e!1856022 (and tp!942334 tp!942336))))

(assert (=> b!2945799 (= tp!942301 e!1856022)))

(declare-fun b!2946085 () Bool)

(declare-fun tp!942333 () Bool)

(assert (=> b!2946085 (= e!1856022 tp!942333)))

(declare-fun b!2946086 () Bool)

(declare-fun tp!942335 () Bool)

(declare-fun tp!942332 () Bool)

(assert (=> b!2946086 (= e!1856022 (and tp!942335 tp!942332))))

(declare-fun b!2946083 () Bool)

(assert (=> b!2946083 (= e!1856022 tp_is_empty!15829)))

(assert (= (and b!2945799 ((_ is ElementMatch!9133) (regTwo!18778 r!17423))) b!2946083))

(assert (= (and b!2945799 ((_ is Concat!14454) (regTwo!18778 r!17423))) b!2946084))

(assert (= (and b!2945799 ((_ is Star!9133) (regTwo!18778 r!17423))) b!2946085))

(assert (= (and b!2945799 ((_ is Union!9133) (regTwo!18778 r!17423))) b!2946086))

(declare-fun b!2946091 () Bool)

(declare-fun e!1856025 () Bool)

(declare-fun tp!942339 () Bool)

(assert (=> b!2946091 (= e!1856025 (and tp_is_empty!15829 tp!942339))))

(assert (=> b!2945805 (= tp!942298 e!1856025)))

(assert (= (and b!2945805 ((_ is Cons!34874) (t!234063 s!11993))) b!2946091))

(check-sat (not b!2946068) (not b!2946033) (not bm!194315) (not b!2946072) (not b!2946008) (not bm!194305) (not bm!194274) (not bm!194316) (not b!2945949) (not b!2946077) (not d!840582) (not b!2945829) (not b!2946045) (not b!2945946) (not d!840580) (not b!2946080) (not b!2945900) (not b!2945937) (not b!2946078) (not d!840570) (not b!2946070) (not b!2946020) (not b!2945945) (not bm!194309) (not b!2946082) (not b!2946069) (not bm!194288) (not b!2946081) (not b!2945892) (not bm!194310) (not bm!194286) (not b!2946076) (not b!2946084) (not bm!194312) (not bm!194308) (not bm!194285) (not b!2945938) (not bm!194306) (not b!2945941) (not bm!194303) (not b!2946086) (not b!2946085) (not d!840568) tp_is_empty!15829 (not b!2946091) (not b!2945940) (not bm!194276) (not bm!194281) (not b!2946073) (not bm!194313) (not b!2946074) (not bm!194282))
(check-sat)
