; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287342 () Bool)

(assert start!287342)

(declare-fun res!1224785 () Bool)

(declare-fun e!1868650 () Bool)

(assert (=> start!287342 (=> (not res!1224785) (not e!1868650))))

(declare-datatypes ((C!18702 0))(
  ( (C!18703 (val!11387 Int)) )
))
(declare-datatypes ((Regex!9258 0))(
  ( (ElementMatch!9258 (c!487188 C!18702)) (Concat!14579 (regOne!19028 Regex!9258) (regTwo!19028 Regex!9258)) (EmptyExpr!9258) (Star!9258 (reg!9587 Regex!9258)) (EmptyLang!9258) (Union!9258 (regOne!19029 Regex!9258) (regTwo!19029 Regex!9258)) )
))
(declare-fun r!17423 () Regex!9258)

(declare-fun validRegex!3991 (Regex!9258) Bool)

(assert (=> start!287342 (= res!1224785 (validRegex!3991 r!17423))))

(assert (=> start!287342 e!1868650))

(declare-fun e!1868653 () Bool)

(assert (=> start!287342 e!1868653))

(declare-fun e!1868651 () Bool)

(assert (=> start!287342 e!1868651))

(declare-fun b!2969762 () Bool)

(declare-fun tp!947055 () Bool)

(assert (=> b!2969762 (= e!1868653 tp!947055)))

(declare-fun b!2969763 () Bool)

(declare-fun e!1868652 () Bool)

(assert (=> b!2969763 (= e!1868652 (validRegex!3991 (reg!9587 r!17423)))))

(declare-fun b!2969764 () Bool)

(declare-fun res!1224787 () Bool)

(assert (=> b!2969764 (=> res!1224787 e!1868652)))

(declare-fun isEmptyLang!372 (Regex!9258) Bool)

(declare-fun simplify!259 (Regex!9258) Regex!9258)

(assert (=> b!2969764 (= res!1224787 (isEmptyLang!372 (simplify!259 (reg!9587 r!17423))))))

(declare-fun b!2969765 () Bool)

(declare-fun tp!947059 () Bool)

(declare-fun tp!947056 () Bool)

(assert (=> b!2969765 (= e!1868653 (and tp!947059 tp!947056))))

(declare-fun b!2969766 () Bool)

(assert (=> b!2969766 (= e!1868650 (not e!1868652))))

(declare-fun res!1224786 () Bool)

(assert (=> b!2969766 (=> res!1224786 e!1868652)))

(declare-fun lt!1035994 () Bool)

(assert (=> b!2969766 (= res!1224786 (or lt!1035994 (is-Concat!14579 r!17423) (is-Union!9258 r!17423) (not (is-Star!9258 r!17423))))))

(declare-datatypes ((List!35123 0))(
  ( (Nil!34999) (Cons!34999 (h!40419 C!18702) (t!234188 List!35123)) )
))
(declare-fun s!11993 () List!35123)

(declare-fun matchRSpec!1395 (Regex!9258 List!35123) Bool)

(assert (=> b!2969766 (= lt!1035994 (matchRSpec!1395 r!17423 s!11993))))

(declare-fun matchR!4140 (Regex!9258 List!35123) Bool)

(assert (=> b!2969766 (= lt!1035994 (matchR!4140 r!17423 s!11993))))

(declare-datatypes ((Unit!48895 0))(
  ( (Unit!48896) )
))
(declare-fun lt!1035993 () Unit!48895)

(declare-fun mainMatchTheorem!1395 (Regex!9258 List!35123) Unit!48895)

(assert (=> b!2969766 (= lt!1035993 (mainMatchTheorem!1395 r!17423 s!11993))))

(declare-fun b!2969767 () Bool)

(declare-fun tp_is_empty!16079 () Bool)

(assert (=> b!2969767 (= e!1868653 tp_is_empty!16079)))

(declare-fun b!2969768 () Bool)

(declare-fun tp!947054 () Bool)

(assert (=> b!2969768 (= e!1868651 (and tp_is_empty!16079 tp!947054))))

(declare-fun b!2969769 () Bool)

(declare-fun tp!947057 () Bool)

(declare-fun tp!947058 () Bool)

(assert (=> b!2969769 (= e!1868653 (and tp!947057 tp!947058))))

(assert (= (and start!287342 res!1224785) b!2969766))

(assert (= (and b!2969766 (not res!1224786)) b!2969764))

(assert (= (and b!2969764 (not res!1224787)) b!2969763))

(assert (= (and start!287342 (is-ElementMatch!9258 r!17423)) b!2969767))

(assert (= (and start!287342 (is-Concat!14579 r!17423)) b!2969769))

(assert (= (and start!287342 (is-Star!9258 r!17423)) b!2969762))

(assert (= (and start!287342 (is-Union!9258 r!17423)) b!2969765))

(assert (= (and start!287342 (is-Cons!34999 s!11993)) b!2969768))

(declare-fun m!3337861 () Bool)

(assert (=> start!287342 m!3337861))

(declare-fun m!3337863 () Bool)

(assert (=> b!2969763 m!3337863))

(declare-fun m!3337865 () Bool)

(assert (=> b!2969764 m!3337865))

(assert (=> b!2969764 m!3337865))

(declare-fun m!3337867 () Bool)

(assert (=> b!2969764 m!3337867))

(declare-fun m!3337869 () Bool)

(assert (=> b!2969766 m!3337869))

(declare-fun m!3337871 () Bool)

(assert (=> b!2969766 m!3337871))

(declare-fun m!3337873 () Bool)

(assert (=> b!2969766 m!3337873))

(push 1)

(assert (not b!2969763))

(assert (not b!2969769))

(assert (not b!2969765))

(assert (not b!2969766))

(assert (not start!287342))

(assert (not b!2969768))

(assert tp_is_empty!16079)

(assert (not b!2969762))

(assert (not b!2969764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!197598 () Bool)

(declare-fun call!197603 () Bool)

(declare-fun call!197604 () Bool)

(assert (=> bm!197598 (= call!197603 call!197604)))

(declare-fun b!2969816 () Bool)

(declare-fun res!1224811 () Bool)

(declare-fun e!1868686 () Bool)

(assert (=> b!2969816 (=> res!1224811 e!1868686)))

(assert (=> b!2969816 (= res!1224811 (not (is-Concat!14579 r!17423)))))

(declare-fun e!1868688 () Bool)

(assert (=> b!2969816 (= e!1868688 e!1868686)))

(declare-fun b!2969817 () Bool)

(declare-fun e!1868685 () Bool)

(assert (=> b!2969817 (= e!1868685 e!1868688)))

(declare-fun c!487195 () Bool)

(assert (=> b!2969817 (= c!487195 (is-Union!9258 r!17423))))

(declare-fun bm!197599 () Bool)

(declare-fun call!197605 () Bool)

(assert (=> bm!197599 (= call!197605 (validRegex!3991 (ite c!487195 (regOne!19029 r!17423) (regTwo!19028 r!17423))))))

(declare-fun b!2969818 () Bool)

(declare-fun e!1868684 () Bool)

(assert (=> b!2969818 (= e!1868684 call!197604)))

(declare-fun b!2969819 () Bool)

(declare-fun res!1224809 () Bool)

(declare-fun e!1868682 () Bool)

(assert (=> b!2969819 (=> (not res!1224809) (not e!1868682))))

(assert (=> b!2969819 (= res!1224809 call!197605)))

(assert (=> b!2969819 (= e!1868688 e!1868682)))

(declare-fun d!842597 () Bool)

(declare-fun res!1224813 () Bool)

(declare-fun e!1868683 () Bool)

(assert (=> d!842597 (=> res!1224813 e!1868683)))

(assert (=> d!842597 (= res!1224813 (is-ElementMatch!9258 r!17423))))

(assert (=> d!842597 (= (validRegex!3991 r!17423) e!1868683)))

(declare-fun b!2969820 () Bool)

(assert (=> b!2969820 (= e!1868683 e!1868685)))

(declare-fun c!487194 () Bool)

(assert (=> b!2969820 (= c!487194 (is-Star!9258 r!17423))))

(declare-fun b!2969821 () Bool)

(declare-fun e!1868687 () Bool)

(assert (=> b!2969821 (= e!1868686 e!1868687)))

(declare-fun res!1224812 () Bool)

(assert (=> b!2969821 (=> (not res!1224812) (not e!1868687))))

(assert (=> b!2969821 (= res!1224812 call!197603)))

(declare-fun b!2969822 () Bool)

(assert (=> b!2969822 (= e!1868685 e!1868684)))

(declare-fun res!1224810 () Bool)

(declare-fun nullable!2959 (Regex!9258) Bool)

(assert (=> b!2969822 (= res!1224810 (not (nullable!2959 (reg!9587 r!17423))))))

(assert (=> b!2969822 (=> (not res!1224810) (not e!1868684))))

(declare-fun b!2969823 () Bool)

(assert (=> b!2969823 (= e!1868687 call!197605)))

(declare-fun bm!197600 () Bool)

(assert (=> bm!197600 (= call!197604 (validRegex!3991 (ite c!487194 (reg!9587 r!17423) (ite c!487195 (regTwo!19029 r!17423) (regOne!19028 r!17423)))))))

(declare-fun b!2969824 () Bool)

(assert (=> b!2969824 (= e!1868682 call!197603)))

(assert (= (and d!842597 (not res!1224813)) b!2969820))

(assert (= (and b!2969820 c!487194) b!2969822))

(assert (= (and b!2969820 (not c!487194)) b!2969817))

(assert (= (and b!2969822 res!1224810) b!2969818))

(assert (= (and b!2969817 c!487195) b!2969819))

(assert (= (and b!2969817 (not c!487195)) b!2969816))

(assert (= (and b!2969819 res!1224809) b!2969824))

(assert (= (and b!2969816 (not res!1224811)) b!2969821))

(assert (= (and b!2969821 res!1224812) b!2969823))

(assert (= (or b!2969819 b!2969823) bm!197599))

(assert (= (or b!2969824 b!2969821) bm!197598))

(assert (= (or b!2969818 bm!197598) bm!197600))

(declare-fun m!3337889 () Bool)

(assert (=> bm!197599 m!3337889))

(declare-fun m!3337891 () Bool)

(assert (=> b!2969822 m!3337891))

(declare-fun m!3337893 () Bool)

(assert (=> bm!197600 m!3337893))

(assert (=> start!287342 d!842597))

(declare-fun b!2969996 () Bool)

(assert (=> b!2969996 true))

(assert (=> b!2969996 true))

(declare-fun bs!526468 () Bool)

(declare-fun b!2969991 () Bool)

(assert (= bs!526468 (and b!2969991 b!2969996)))

(declare-fun lambda!110524 () Int)

(declare-fun lambda!110523 () Int)

(assert (=> bs!526468 (not (= lambda!110524 lambda!110523))))

(assert (=> b!2969991 true))

(assert (=> b!2969991 true))

(declare-fun b!2969986 () Bool)

(declare-fun c!487256 () Bool)

(assert (=> b!2969986 (= c!487256 (is-Union!9258 r!17423))))

(declare-fun e!1868791 () Bool)

(declare-fun e!1868789 () Bool)

(assert (=> b!2969986 (= e!1868791 e!1868789)))

(declare-fun b!2969987 () Bool)

(declare-fun e!1868790 () Bool)

(declare-fun e!1868795 () Bool)

(assert (=> b!2969987 (= e!1868790 e!1868795)))

(declare-fun res!1224863 () Bool)

(assert (=> b!2969987 (= res!1224863 (not (is-EmptyLang!9258 r!17423)))))

(assert (=> b!2969987 (=> (not res!1224863) (not e!1868795))))

(declare-fun b!2969988 () Bool)

(declare-fun res!1224864 () Bool)

(declare-fun e!1868793 () Bool)

(assert (=> b!2969988 (=> res!1224864 e!1868793)))

(declare-fun call!197644 () Bool)

(assert (=> b!2969988 (= res!1224864 call!197644)))

(declare-fun e!1868792 () Bool)

(assert (=> b!2969988 (= e!1868792 e!1868793)))

(declare-fun d!842601 () Bool)

(declare-fun c!487253 () Bool)

(assert (=> d!842601 (= c!487253 (is-EmptyExpr!9258 r!17423))))

(assert (=> d!842601 (= (matchRSpec!1395 r!17423 s!11993) e!1868790)))

(declare-fun b!2969989 () Bool)

(declare-fun e!1868794 () Bool)

(assert (=> b!2969989 (= e!1868794 (matchRSpec!1395 (regTwo!19029 r!17423) s!11993))))

(declare-fun bm!197638 () Bool)

(declare-fun isEmpty!19240 (List!35123) Bool)

(assert (=> bm!197638 (= call!197644 (isEmpty!19240 s!11993))))

(declare-fun b!2969990 () Bool)

(assert (=> b!2969990 (= e!1868789 e!1868794)))

(declare-fun res!1224865 () Bool)

(assert (=> b!2969990 (= res!1224865 (matchRSpec!1395 (regOne!19029 r!17423) s!11993))))

(assert (=> b!2969990 (=> res!1224865 e!1868794)))

(declare-fun call!197643 () Bool)

(assert (=> b!2969991 (= e!1868792 call!197643)))

(declare-fun b!2969992 () Bool)

(assert (=> b!2969992 (= e!1868791 (= s!11993 (Cons!34999 (c!487188 r!17423) Nil!34999)))))

(declare-fun bm!197639 () Bool)

(declare-fun c!487254 () Bool)

(declare-fun Exists!1544 (Int) Bool)

(assert (=> bm!197639 (= call!197643 (Exists!1544 (ite c!487254 lambda!110523 lambda!110524)))))

(declare-fun b!2969993 () Bool)

(declare-fun c!487255 () Bool)

(assert (=> b!2969993 (= c!487255 (is-ElementMatch!9258 r!17423))))

(assert (=> b!2969993 (= e!1868795 e!1868791)))

(declare-fun b!2969994 () Bool)

(assert (=> b!2969994 (= e!1868790 call!197644)))

(declare-fun b!2969995 () Bool)

(assert (=> b!2969995 (= e!1868789 e!1868792)))

(assert (=> b!2969995 (= c!487254 (is-Star!9258 r!17423))))

(assert (=> b!2969996 (= e!1868793 call!197643)))

(assert (= (and d!842601 c!487253) b!2969994))

(assert (= (and d!842601 (not c!487253)) b!2969987))

(assert (= (and b!2969987 res!1224863) b!2969993))

(assert (= (and b!2969993 c!487255) b!2969992))

(assert (= (and b!2969993 (not c!487255)) b!2969986))

(assert (= (and b!2969986 c!487256) b!2969990))

(assert (= (and b!2969986 (not c!487256)) b!2969995))

(assert (= (and b!2969990 (not res!1224865)) b!2969989))

(assert (= (and b!2969995 c!487254) b!2969988))

(assert (= (and b!2969995 (not c!487254)) b!2969991))

(assert (= (and b!2969988 (not res!1224864)) b!2969996))

(assert (= (or b!2969996 b!2969991) bm!197639))

(assert (= (or b!2969994 b!2969988) bm!197638))

(declare-fun m!3337923 () Bool)

(assert (=> b!2969989 m!3337923))

(declare-fun m!3337925 () Bool)

(assert (=> bm!197638 m!3337925))

(declare-fun m!3337927 () Bool)

(assert (=> b!2969990 m!3337927))

(declare-fun m!3337929 () Bool)

(assert (=> bm!197639 m!3337929))

(assert (=> b!2969766 d!842601))

(declare-fun d!842611 () Bool)

(declare-fun e!1868816 () Bool)

(assert (=> d!842611 e!1868816))

(declare-fun c!487263 () Bool)

(assert (=> d!842611 (= c!487263 (is-EmptyExpr!9258 r!17423))))

(declare-fun lt!1036021 () Bool)

(declare-fun e!1868811 () Bool)

(assert (=> d!842611 (= lt!1036021 e!1868811)))

(declare-fun c!487264 () Bool)

(assert (=> d!842611 (= c!487264 (isEmpty!19240 s!11993))))

(assert (=> d!842611 (validRegex!3991 r!17423)))

(assert (=> d!842611 (= (matchR!4140 r!17423 s!11993) lt!1036021)))

(declare-fun b!2970029 () Bool)

(declare-fun call!197647 () Bool)

(assert (=> b!2970029 (= e!1868816 (= lt!1036021 call!197647))))

(declare-fun b!2970030 () Bool)

(declare-fun res!1224889 () Bool)

(declare-fun e!1868812 () Bool)

(assert (=> b!2970030 (=> (not res!1224889) (not e!1868812))))

(assert (=> b!2970030 (= res!1224889 (not call!197647))))

(declare-fun b!2970031 () Bool)

(declare-fun e!1868815 () Bool)

(declare-fun head!6620 (List!35123) C!18702)

(assert (=> b!2970031 (= e!1868815 (not (= (head!6620 s!11993) (c!487188 r!17423))))))

(declare-fun b!2970032 () Bool)

(declare-fun res!1224888 () Bool)

(assert (=> b!2970032 (=> (not res!1224888) (not e!1868812))))

(declare-fun tail!4846 (List!35123) List!35123)

(assert (=> b!2970032 (= res!1224888 (isEmpty!19240 (tail!4846 s!11993)))))

(declare-fun b!2970033 () Bool)

(declare-fun res!1224885 () Bool)

(assert (=> b!2970033 (=> res!1224885 e!1868815)))

(assert (=> b!2970033 (= res!1224885 (not (isEmpty!19240 (tail!4846 s!11993))))))

(declare-fun b!2970034 () Bool)

(declare-fun e!1868810 () Bool)

(declare-fun e!1868814 () Bool)

(assert (=> b!2970034 (= e!1868810 e!1868814)))

(declare-fun res!1224886 () Bool)

(assert (=> b!2970034 (=> (not res!1224886) (not e!1868814))))

(assert (=> b!2970034 (= res!1224886 (not lt!1036021))))

(declare-fun b!2970035 () Bool)

(declare-fun e!1868813 () Bool)

(assert (=> b!2970035 (= e!1868813 (not lt!1036021))))

(declare-fun b!2970036 () Bool)

(declare-fun res!1224887 () Bool)

(assert (=> b!2970036 (=> res!1224887 e!1868810)))

(assert (=> b!2970036 (= res!1224887 (not (is-ElementMatch!9258 r!17423)))))

(assert (=> b!2970036 (= e!1868813 e!1868810)))

(declare-fun b!2970037 () Bool)

(assert (=> b!2970037 (= e!1868814 e!1868815)))

(declare-fun res!1224883 () Bool)

(assert (=> b!2970037 (=> res!1224883 e!1868815)))

(assert (=> b!2970037 (= res!1224883 call!197647)))

(declare-fun b!2970038 () Bool)

(assert (=> b!2970038 (= e!1868816 e!1868813)))

(declare-fun c!487265 () Bool)

(assert (=> b!2970038 (= c!487265 (is-EmptyLang!9258 r!17423))))

(declare-fun b!2970039 () Bool)

(declare-fun res!1224884 () Bool)

(assert (=> b!2970039 (=> res!1224884 e!1868810)))

(assert (=> b!2970039 (= res!1224884 e!1868812)))

(declare-fun res!1224882 () Bool)

(assert (=> b!2970039 (=> (not res!1224882) (not e!1868812))))

(assert (=> b!2970039 (= res!1224882 lt!1036021)))

(declare-fun b!2970040 () Bool)

(assert (=> b!2970040 (= e!1868811 (nullable!2959 r!17423))))

(declare-fun bm!197642 () Bool)

(assert (=> bm!197642 (= call!197647 (isEmpty!19240 s!11993))))

(declare-fun b!2970041 () Bool)

(declare-fun derivativeStep!2561 (Regex!9258 C!18702) Regex!9258)

(assert (=> b!2970041 (= e!1868811 (matchR!4140 (derivativeStep!2561 r!17423 (head!6620 s!11993)) (tail!4846 s!11993)))))

(declare-fun b!2970042 () Bool)

(assert (=> b!2970042 (= e!1868812 (= (head!6620 s!11993) (c!487188 r!17423)))))

(assert (= (and d!842611 c!487264) b!2970040))

(assert (= (and d!842611 (not c!487264)) b!2970041))

(assert (= (and d!842611 c!487263) b!2970029))

(assert (= (and d!842611 (not c!487263)) b!2970038))

(assert (= (and b!2970038 c!487265) b!2970035))

(assert (= (and b!2970038 (not c!487265)) b!2970036))

(assert (= (and b!2970036 (not res!1224887)) b!2970039))

(assert (= (and b!2970039 res!1224882) b!2970030))

(assert (= (and b!2970030 res!1224889) b!2970032))

(assert (= (and b!2970032 res!1224888) b!2970042))

(assert (= (and b!2970039 (not res!1224884)) b!2970034))

(assert (= (and b!2970034 res!1224886) b!2970037))

(assert (= (and b!2970037 (not res!1224883)) b!2970033))

(assert (= (and b!2970033 (not res!1224885)) b!2970031))

(assert (= (or b!2970029 b!2970030 b!2970037) bm!197642))

(declare-fun m!3337931 () Bool)

(assert (=> b!2970042 m!3337931))

(assert (=> bm!197642 m!3337925))

(assert (=> d!842611 m!3337925))

(assert (=> d!842611 m!3337861))

(declare-fun m!3337933 () Bool)

(assert (=> b!2970032 m!3337933))

(assert (=> b!2970032 m!3337933))

(declare-fun m!3337935 () Bool)

(assert (=> b!2970032 m!3337935))

(declare-fun m!3337937 () Bool)

(assert (=> b!2970040 m!3337937))

(assert (=> b!2970033 m!3337933))

(assert (=> b!2970033 m!3337933))

(assert (=> b!2970033 m!3337935))

(assert (=> b!2970031 m!3337931))

(assert (=> b!2970041 m!3337931))

(assert (=> b!2970041 m!3337931))

(declare-fun m!3337939 () Bool)

(assert (=> b!2970041 m!3337939))

(assert (=> b!2970041 m!3337933))

(assert (=> b!2970041 m!3337939))

(assert (=> b!2970041 m!3337933))

(declare-fun m!3337941 () Bool)

(assert (=> b!2970041 m!3337941))

(assert (=> b!2969766 d!842611))

(declare-fun d!842613 () Bool)

(assert (=> d!842613 (= (matchR!4140 r!17423 s!11993) (matchRSpec!1395 r!17423 s!11993))))

(declare-fun lt!1036024 () Unit!48895)

(declare-fun choose!17563 (Regex!9258 List!35123) Unit!48895)

(assert (=> d!842613 (= lt!1036024 (choose!17563 r!17423 s!11993))))

(assert (=> d!842613 (validRegex!3991 r!17423)))

(assert (=> d!842613 (= (mainMatchTheorem!1395 r!17423 s!11993) lt!1036024)))

(declare-fun bs!526469 () Bool)

(assert (= bs!526469 d!842613))

(assert (=> bs!526469 m!3337871))

(assert (=> bs!526469 m!3337869))

(declare-fun m!3337943 () Bool)

(assert (=> bs!526469 m!3337943))

(assert (=> bs!526469 m!3337861))

(assert (=> b!2969766 d!842613))

(declare-fun bm!197643 () Bool)

(declare-fun call!197648 () Bool)

(declare-fun call!197649 () Bool)

(assert (=> bm!197643 (= call!197648 call!197649)))

(declare-fun b!2970043 () Bool)

(declare-fun res!1224892 () Bool)

(declare-fun e!1868821 () Bool)

(assert (=> b!2970043 (=> res!1224892 e!1868821)))

(assert (=> b!2970043 (= res!1224892 (not (is-Concat!14579 (reg!9587 r!17423))))))

(declare-fun e!1868823 () Bool)

(assert (=> b!2970043 (= e!1868823 e!1868821)))

(declare-fun b!2970044 () Bool)

(declare-fun e!1868820 () Bool)

(assert (=> b!2970044 (= e!1868820 e!1868823)))

(declare-fun c!487267 () Bool)

(assert (=> b!2970044 (= c!487267 (is-Union!9258 (reg!9587 r!17423)))))

(declare-fun bm!197644 () Bool)

(declare-fun call!197650 () Bool)

(assert (=> bm!197644 (= call!197650 (validRegex!3991 (ite c!487267 (regOne!19029 (reg!9587 r!17423)) (regTwo!19028 (reg!9587 r!17423)))))))

(declare-fun b!2970045 () Bool)

(declare-fun e!1868819 () Bool)

(assert (=> b!2970045 (= e!1868819 call!197649)))

(declare-fun b!2970046 () Bool)

(declare-fun res!1224890 () Bool)

(declare-fun e!1868817 () Bool)

(assert (=> b!2970046 (=> (not res!1224890) (not e!1868817))))

(assert (=> b!2970046 (= res!1224890 call!197650)))

(assert (=> b!2970046 (= e!1868823 e!1868817)))

(declare-fun d!842615 () Bool)

(declare-fun res!1224894 () Bool)

(declare-fun e!1868818 () Bool)

(assert (=> d!842615 (=> res!1224894 e!1868818)))

(assert (=> d!842615 (= res!1224894 (is-ElementMatch!9258 (reg!9587 r!17423)))))

(assert (=> d!842615 (= (validRegex!3991 (reg!9587 r!17423)) e!1868818)))

(declare-fun b!2970047 () Bool)

(assert (=> b!2970047 (= e!1868818 e!1868820)))

(declare-fun c!487266 () Bool)

(assert (=> b!2970047 (= c!487266 (is-Star!9258 (reg!9587 r!17423)))))

(declare-fun b!2970048 () Bool)

(declare-fun e!1868822 () Bool)

(assert (=> b!2970048 (= e!1868821 e!1868822)))

(declare-fun res!1224893 () Bool)

(assert (=> b!2970048 (=> (not res!1224893) (not e!1868822))))

(assert (=> b!2970048 (= res!1224893 call!197648)))

(declare-fun b!2970049 () Bool)

(assert (=> b!2970049 (= e!1868820 e!1868819)))

(declare-fun res!1224891 () Bool)

(assert (=> b!2970049 (= res!1224891 (not (nullable!2959 (reg!9587 (reg!9587 r!17423)))))))

(assert (=> b!2970049 (=> (not res!1224891) (not e!1868819))))

(declare-fun b!2970050 () Bool)

(assert (=> b!2970050 (= e!1868822 call!197650)))

(declare-fun bm!197645 () Bool)

(assert (=> bm!197645 (= call!197649 (validRegex!3991 (ite c!487266 (reg!9587 (reg!9587 r!17423)) (ite c!487267 (regTwo!19029 (reg!9587 r!17423)) (regOne!19028 (reg!9587 r!17423))))))))

(declare-fun b!2970051 () Bool)

(assert (=> b!2970051 (= e!1868817 call!197648)))

(assert (= (and d!842615 (not res!1224894)) b!2970047))

(assert (= (and b!2970047 c!487266) b!2970049))

(assert (= (and b!2970047 (not c!487266)) b!2970044))

(assert (= (and b!2970049 res!1224891) b!2970045))

(assert (= (and b!2970044 c!487267) b!2970046))

(assert (= (and b!2970044 (not c!487267)) b!2970043))

(assert (= (and b!2970046 res!1224890) b!2970051))

(assert (= (and b!2970043 (not res!1224892)) b!2970048))

(assert (= (and b!2970048 res!1224893) b!2970050))

(assert (= (or b!2970046 b!2970050) bm!197644))

(assert (= (or b!2970051 b!2970048) bm!197643))

(assert (= (or b!2970045 bm!197643) bm!197645))

(declare-fun m!3337945 () Bool)

(assert (=> bm!197644 m!3337945))

(declare-fun m!3337947 () Bool)

(assert (=> b!2970049 m!3337947))

(declare-fun m!3337949 () Bool)

(assert (=> bm!197645 m!3337949))

(assert (=> b!2969763 d!842615))

(declare-fun d!842617 () Bool)

(assert (=> d!842617 (= (isEmptyLang!372 (simplify!259 (reg!9587 r!17423))) (is-EmptyLang!9258 (simplify!259 (reg!9587 r!17423))))))

(assert (=> b!2969764 d!842617))

(declare-fun b!2970102 () Bool)

(declare-fun e!1868865 () Regex!9258)

(declare-fun e!1868852 () Regex!9258)

(assert (=> b!2970102 (= e!1868865 e!1868852)))

(declare-fun c!487295 () Bool)

(assert (=> b!2970102 (= c!487295 (is-Star!9258 (reg!9587 r!17423)))))

(declare-fun d!842619 () Bool)

(declare-fun e!1868855 () Bool)

(assert (=> d!842619 e!1868855))

(declare-fun res!1224901 () Bool)

(assert (=> d!842619 (=> (not res!1224901) (not e!1868855))))

(declare-fun lt!1036039 () Regex!9258)

(assert (=> d!842619 (= res!1224901 (validRegex!3991 lt!1036039))))

(declare-fun e!1868857 () Regex!9258)

(assert (=> d!842619 (= lt!1036039 e!1868857)))

(declare-fun c!487296 () Bool)

(assert (=> d!842619 (= c!487296 (is-EmptyLang!9258 (reg!9587 r!17423)))))

(assert (=> d!842619 (validRegex!3991 (reg!9587 r!17423))))

(assert (=> d!842619 (= (simplify!259 (reg!9587 r!17423)) lt!1036039)))

(declare-fun b!2970103 () Bool)

(declare-fun e!1868854 () Regex!9258)

(declare-fun lt!1036041 () Regex!9258)

(declare-fun lt!1036040 () Regex!9258)

(assert (=> b!2970103 (= e!1868854 (Union!9258 lt!1036041 lt!1036040))))

(declare-fun b!2970104 () Bool)

(assert (=> b!2970104 (= e!1868855 (= (nullable!2959 lt!1036039) (nullable!2959 (reg!9587 r!17423))))))

(declare-fun bm!197660 () Bool)

(declare-fun call!197666 () Regex!9258)

(declare-fun c!487297 () Bool)

(assert (=> bm!197660 (= call!197666 (simplify!259 (ite c!487297 (regOne!19029 (reg!9587 r!17423)) (regOne!19028 (reg!9587 r!17423)))))))

(declare-fun b!2970105 () Bool)

(declare-fun e!1868856 () Regex!9258)

(declare-fun lt!1036037 () Regex!9258)

(assert (=> b!2970105 (= e!1868856 (Star!9258 lt!1036037))))

(declare-fun b!2970106 () Bool)

(assert (=> b!2970106 (= c!487297 (is-Union!9258 (reg!9587 r!17423)))))

(declare-fun e!1868859 () Regex!9258)

(assert (=> b!2970106 (= e!1868852 e!1868859)))

(declare-fun b!2970107 () Bool)

(declare-fun e!1868864 () Regex!9258)

(assert (=> b!2970107 (= e!1868864 EmptyLang!9258)))

(declare-fun b!2970108 () Bool)

(declare-fun c!487299 () Bool)

(assert (=> b!2970108 (= c!487299 (is-EmptyExpr!9258 (reg!9587 r!17423)))))

(declare-fun e!1868863 () Regex!9258)

(assert (=> b!2970108 (= e!1868863 e!1868865)))

(declare-fun bm!197661 () Bool)

(declare-fun call!197669 () Regex!9258)

(declare-fun call!197670 () Regex!9258)

(assert (=> bm!197661 (= call!197669 call!197670)))

(declare-fun bm!197662 () Bool)

(assert (=> bm!197662 (= call!197670 (simplify!259 (ite c!487295 (reg!9587 (reg!9587 r!17423)) (ite c!487297 (regTwo!19029 (reg!9587 r!17423)) (regTwo!19028 (reg!9587 r!17423))))))))

(declare-fun b!2970109 () Bool)

(assert (=> b!2970109 (= e!1868854 lt!1036041)))

(declare-fun b!2970110 () Bool)

(declare-fun c!487298 () Bool)

(declare-fun call!197671 () Bool)

(assert (=> b!2970110 (= c!487298 call!197671)))

(declare-fun e!1868861 () Regex!9258)

(assert (=> b!2970110 (= e!1868861 e!1868854)))

(declare-fun call!197668 () Bool)

(declare-fun bm!197663 () Bool)

(declare-fun lt!1036042 () Regex!9258)

(assert (=> bm!197663 (= call!197668 (isEmptyLang!372 (ite c!487295 lt!1036037 (ite c!487297 lt!1036041 lt!1036042))))))

(declare-fun b!2970111 () Bool)

(declare-fun c!487291 () Bool)

(declare-fun e!1868860 () Bool)

(assert (=> b!2970111 (= c!487291 e!1868860)))

(declare-fun res!1224903 () Bool)

(assert (=> b!2970111 (=> res!1224903 e!1868860)))

(assert (=> b!2970111 (= res!1224903 call!197668)))

(assert (=> b!2970111 (= lt!1036037 call!197670)))

(assert (=> b!2970111 (= e!1868852 e!1868856)))

(declare-fun b!2970112 () Bool)

(declare-fun e!1868858 () Bool)

(assert (=> b!2970112 (= e!1868858 call!197671)))

(declare-fun b!2970113 () Bool)

(declare-fun e!1868862 () Regex!9258)

(declare-fun e!1868853 () Regex!9258)

(assert (=> b!2970113 (= e!1868862 e!1868853)))

(declare-fun c!487293 () Bool)

(declare-fun lt!1036038 () Regex!9258)

(declare-fun isEmptyExpr!415 (Regex!9258) Bool)

(assert (=> b!2970113 (= c!487293 (isEmptyExpr!415 lt!1036038))))

(declare-fun b!2970114 () Bool)

(assert (=> b!2970114 (= e!1868857 e!1868863)))

(declare-fun c!487290 () Bool)

(assert (=> b!2970114 (= c!487290 (is-ElementMatch!9258 (reg!9587 r!17423)))))

(declare-fun b!2970115 () Bool)

(assert (=> b!2970115 (= e!1868859 e!1868864)))

(assert (=> b!2970115 (= lt!1036042 call!197666)))

(assert (=> b!2970115 (= lt!1036038 call!197669)))

(declare-fun res!1224902 () Bool)

(declare-fun call!197667 () Bool)

(assert (=> b!2970115 (= res!1224902 call!197667)))

(assert (=> b!2970115 (=> res!1224902 e!1868858)))

(declare-fun c!487292 () Bool)

(assert (=> b!2970115 (= c!487292 e!1868858)))

(declare-fun bm!197664 () Bool)

(declare-fun call!197665 () Bool)

(assert (=> bm!197664 (= call!197665 (isEmptyExpr!415 (ite c!487295 lt!1036037 lt!1036042)))))

(declare-fun b!2970116 () Bool)

(assert (=> b!2970116 (= e!1868861 lt!1036040)))

(declare-fun b!2970117 () Bool)

(assert (=> b!2970117 (= e!1868860 call!197665)))

(declare-fun b!2970118 () Bool)

(assert (=> b!2970118 (= e!1868862 lt!1036038)))

(declare-fun b!2970119 () Bool)

(assert (=> b!2970119 (= e!1868856 EmptyExpr!9258)))

(declare-fun b!2970120 () Bool)

(assert (=> b!2970120 (= e!1868859 e!1868861)))

(assert (=> b!2970120 (= lt!1036041 call!197666)))

(assert (=> b!2970120 (= lt!1036040 call!197669)))

(declare-fun c!487294 () Bool)

(assert (=> b!2970120 (= c!487294 call!197667)))

(declare-fun b!2970121 () Bool)

(assert (=> b!2970121 (= e!1868853 lt!1036042)))

(declare-fun b!2970122 () Bool)

(assert (=> b!2970122 (= e!1868865 EmptyExpr!9258)))

(declare-fun bm!197665 () Bool)

(assert (=> bm!197665 (= call!197667 call!197668)))

(declare-fun b!2970123 () Bool)

(assert (=> b!2970123 (= e!1868853 (Concat!14579 lt!1036042 lt!1036038))))

(declare-fun b!2970124 () Bool)

(assert (=> b!2970124 (= e!1868857 EmptyLang!9258)))

(declare-fun b!2970125 () Bool)

(declare-fun c!487300 () Bool)

(assert (=> b!2970125 (= c!487300 call!197665)))

(assert (=> b!2970125 (= e!1868864 e!1868862)))

(declare-fun b!2970126 () Bool)

(assert (=> b!2970126 (= e!1868863 (reg!9587 r!17423))))

(declare-fun bm!197666 () Bool)

(assert (=> bm!197666 (= call!197671 (isEmptyLang!372 (ite c!487297 lt!1036040 lt!1036038)))))

(assert (= (and d!842619 c!487296) b!2970124))

(assert (= (and d!842619 (not c!487296)) b!2970114))

(assert (= (and b!2970114 c!487290) b!2970126))

(assert (= (and b!2970114 (not c!487290)) b!2970108))

(assert (= (and b!2970108 c!487299) b!2970122))

(assert (= (and b!2970108 (not c!487299)) b!2970102))

(assert (= (and b!2970102 c!487295) b!2970111))

(assert (= (and b!2970102 (not c!487295)) b!2970106))

(assert (= (and b!2970111 (not res!1224903)) b!2970117))

(assert (= (and b!2970111 c!487291) b!2970119))

(assert (= (and b!2970111 (not c!487291)) b!2970105))

(assert (= (and b!2970106 c!487297) b!2970120))

(assert (= (and b!2970106 (not c!487297)) b!2970115))

(assert (= (and b!2970120 c!487294) b!2970116))

(assert (= (and b!2970120 (not c!487294)) b!2970110))

(assert (= (and b!2970110 c!487298) b!2970109))

(assert (= (and b!2970110 (not c!487298)) b!2970103))

(assert (= (and b!2970115 (not res!1224902)) b!2970112))

(assert (= (and b!2970115 c!487292) b!2970107))

(assert (= (and b!2970115 (not c!487292)) b!2970125))

(assert (= (and b!2970125 c!487300) b!2970118))

(assert (= (and b!2970125 (not c!487300)) b!2970113))

(assert (= (and b!2970113 c!487293) b!2970121))

(assert (= (and b!2970113 (not c!487293)) b!2970123))

(assert (= (or b!2970120 b!2970115) bm!197661))

(assert (= (or b!2970120 b!2970115) bm!197660))

(assert (= (or b!2970120 b!2970115) bm!197665))

(assert (= (or b!2970110 b!2970112) bm!197666))

(assert (= (or b!2970117 b!2970125) bm!197664))

(assert (= (or b!2970111 bm!197661) bm!197662))

(assert (= (or b!2970111 bm!197665) bm!197663))

(assert (= (and d!842619 res!1224901) b!2970104))

(declare-fun m!3337951 () Bool)

(assert (=> bm!197662 m!3337951))

(declare-fun m!3337953 () Bool)

(assert (=> bm!197660 m!3337953))

(declare-fun m!3337955 () Bool)

(assert (=> b!2970113 m!3337955))

(declare-fun m!3337957 () Bool)

(assert (=> bm!197664 m!3337957))

(declare-fun m!3337959 () Bool)

(assert (=> bm!197663 m!3337959))

(declare-fun m!3337961 () Bool)

(assert (=> d!842619 m!3337961))

(assert (=> d!842619 m!3337863))

(declare-fun m!3337963 () Bool)

(assert (=> bm!197666 m!3337963))

(declare-fun m!3337965 () Bool)

(assert (=> b!2970104 m!3337965))

(assert (=> b!2970104 m!3337891))

(assert (=> b!2969764 d!842619))

(declare-fun b!2970140 () Bool)

(declare-fun e!1868868 () Bool)

(declare-fun tp!947092 () Bool)

(declare-fun tp!947090 () Bool)

(assert (=> b!2970140 (= e!1868868 (and tp!947092 tp!947090))))

(assert (=> b!2969762 (= tp!947055 e!1868868)))

(declare-fun b!2970138 () Bool)

(declare-fun tp!947088 () Bool)

(declare-fun tp!947091 () Bool)

(assert (=> b!2970138 (= e!1868868 (and tp!947088 tp!947091))))

(declare-fun b!2970139 () Bool)

(declare-fun tp!947089 () Bool)

(assert (=> b!2970139 (= e!1868868 tp!947089)))

(declare-fun b!2970137 () Bool)

(assert (=> b!2970137 (= e!1868868 tp_is_empty!16079)))

(assert (= (and b!2969762 (is-ElementMatch!9258 (reg!9587 r!17423))) b!2970137))

(assert (= (and b!2969762 (is-Concat!14579 (reg!9587 r!17423))) b!2970138))

(assert (= (and b!2969762 (is-Star!9258 (reg!9587 r!17423))) b!2970139))

(assert (= (and b!2969762 (is-Union!9258 (reg!9587 r!17423))) b!2970140))

(declare-fun b!2970145 () Bool)

(declare-fun e!1868871 () Bool)

(declare-fun tp!947095 () Bool)

(assert (=> b!2970145 (= e!1868871 (and tp_is_empty!16079 tp!947095))))

(assert (=> b!2969768 (= tp!947054 e!1868871)))

(assert (= (and b!2969768 (is-Cons!34999 (t!234188 s!11993))) b!2970145))

(declare-fun b!2970149 () Bool)

(declare-fun e!1868872 () Bool)

(declare-fun tp!947100 () Bool)

(declare-fun tp!947098 () Bool)

(assert (=> b!2970149 (= e!1868872 (and tp!947100 tp!947098))))

(assert (=> b!2969765 (= tp!947059 e!1868872)))

(declare-fun b!2970147 () Bool)

(declare-fun tp!947096 () Bool)

(declare-fun tp!947099 () Bool)

(assert (=> b!2970147 (= e!1868872 (and tp!947096 tp!947099))))

(declare-fun b!2970148 () Bool)

(declare-fun tp!947097 () Bool)

(assert (=> b!2970148 (= e!1868872 tp!947097)))

(declare-fun b!2970146 () Bool)

(assert (=> b!2970146 (= e!1868872 tp_is_empty!16079)))

(assert (= (and b!2969765 (is-ElementMatch!9258 (regOne!19029 r!17423))) b!2970146))

(assert (= (and b!2969765 (is-Concat!14579 (regOne!19029 r!17423))) b!2970147))

(assert (= (and b!2969765 (is-Star!9258 (regOne!19029 r!17423))) b!2970148))

(assert (= (and b!2969765 (is-Union!9258 (regOne!19029 r!17423))) b!2970149))

(declare-fun b!2970153 () Bool)

(declare-fun e!1868873 () Bool)

(declare-fun tp!947105 () Bool)

(declare-fun tp!947103 () Bool)

(assert (=> b!2970153 (= e!1868873 (and tp!947105 tp!947103))))

(assert (=> b!2969765 (= tp!947056 e!1868873)))

(declare-fun b!2970151 () Bool)

(declare-fun tp!947101 () Bool)

(declare-fun tp!947104 () Bool)

(assert (=> b!2970151 (= e!1868873 (and tp!947101 tp!947104))))

(declare-fun b!2970152 () Bool)

(declare-fun tp!947102 () Bool)

(assert (=> b!2970152 (= e!1868873 tp!947102)))

(declare-fun b!2970150 () Bool)

(assert (=> b!2970150 (= e!1868873 tp_is_empty!16079)))

(assert (= (and b!2969765 (is-ElementMatch!9258 (regTwo!19029 r!17423))) b!2970150))

(assert (= (and b!2969765 (is-Concat!14579 (regTwo!19029 r!17423))) b!2970151))

(assert (= (and b!2969765 (is-Star!9258 (regTwo!19029 r!17423))) b!2970152))

(assert (= (and b!2969765 (is-Union!9258 (regTwo!19029 r!17423))) b!2970153))

(declare-fun b!2970157 () Bool)

(declare-fun e!1868874 () Bool)

(declare-fun tp!947110 () Bool)

(declare-fun tp!947108 () Bool)

(assert (=> b!2970157 (= e!1868874 (and tp!947110 tp!947108))))

(assert (=> b!2969769 (= tp!947057 e!1868874)))

(declare-fun b!2970155 () Bool)

(declare-fun tp!947106 () Bool)

(declare-fun tp!947109 () Bool)

(assert (=> b!2970155 (= e!1868874 (and tp!947106 tp!947109))))

(declare-fun b!2970156 () Bool)

(declare-fun tp!947107 () Bool)

(assert (=> b!2970156 (= e!1868874 tp!947107)))

(declare-fun b!2970154 () Bool)

(assert (=> b!2970154 (= e!1868874 tp_is_empty!16079)))

(assert (= (and b!2969769 (is-ElementMatch!9258 (regOne!19028 r!17423))) b!2970154))

(assert (= (and b!2969769 (is-Concat!14579 (regOne!19028 r!17423))) b!2970155))

(assert (= (and b!2969769 (is-Star!9258 (regOne!19028 r!17423))) b!2970156))

(assert (= (and b!2969769 (is-Union!9258 (regOne!19028 r!17423))) b!2970157))

(declare-fun b!2970161 () Bool)

(declare-fun e!1868875 () Bool)

(declare-fun tp!947115 () Bool)

(declare-fun tp!947113 () Bool)

(assert (=> b!2970161 (= e!1868875 (and tp!947115 tp!947113))))

(assert (=> b!2969769 (= tp!947058 e!1868875)))

(declare-fun b!2970159 () Bool)

(declare-fun tp!947111 () Bool)

(declare-fun tp!947114 () Bool)

(assert (=> b!2970159 (= e!1868875 (and tp!947111 tp!947114))))

(declare-fun b!2970160 () Bool)

(declare-fun tp!947112 () Bool)

(assert (=> b!2970160 (= e!1868875 tp!947112)))

(declare-fun b!2970158 () Bool)

(assert (=> b!2970158 (= e!1868875 tp_is_empty!16079)))

(assert (= (and b!2969769 (is-ElementMatch!9258 (regTwo!19028 r!17423))) b!2970158))

(assert (= (and b!2969769 (is-Concat!14579 (regTwo!19028 r!17423))) b!2970159))

(assert (= (and b!2969769 (is-Star!9258 (regTwo!19028 r!17423))) b!2970160))

(assert (= (and b!2969769 (is-Union!9258 (regTwo!19028 r!17423))) b!2970161))

(push 1)

(assert (not b!2970151))

(assert (not b!2970159))

(assert (not b!2970113))

(assert (not b!2970031))

(assert (not d!842611))

(assert (not b!2970153))

(assert (not b!2970147))

(assert (not b!2970138))

(assert (not b!2970149))

(assert (not bm!197645))

(assert (not b!2970156))

(assert (not bm!197642))

(assert (not bm!197600))

(assert (not b!2970139))

(assert (not b!2970104))

(assert (not bm!197639))

(assert (not b!2969989))

(assert (not b!2969822))

(assert (not b!2970155))

(assert (not b!2970033))

(assert (not b!2970160))

(assert (not b!2970049))

(assert (not b!2970042))

(assert (not bm!197599))

(assert (not b!2970157))

(assert (not b!2970041))

(assert (not bm!197660))

(assert (not b!2970140))

(assert (not b!2969990))

(assert (not bm!197666))

(assert (not b!2970148))

(assert (not d!842613))

(assert (not b!2970145))

(assert (not bm!197638))

(assert (not b!2970161))

(assert (not bm!197662))

(assert (not d!842619))

(assert (not b!2970152))

(assert (not b!2970032))

(assert (not bm!197663))

(assert (not b!2970040))

(assert (not bm!197664))

(assert (not bm!197644))

(assert tp_is_empty!16079)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

