; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288690 () Bool)

(assert start!288690)

(declare-fun b!2988932 () Bool)

(assert (=> b!2988932 true))

(assert (=> b!2988932 true))

(assert (=> b!2988932 true))

(declare-fun lambda!111706 () Int)

(declare-fun lambda!111705 () Int)

(assert (=> b!2988932 (not (= lambda!111706 lambda!111705))))

(assert (=> b!2988932 true))

(assert (=> b!2988932 true))

(assert (=> b!2988932 true))

(declare-fun res!1232813 () Bool)

(declare-fun e!1879049 () Bool)

(assert (=> start!288690 (=> (not res!1232813) (not e!1879049))))

(declare-datatypes ((C!18870 0))(
  ( (C!18871 (val!11471 Int)) )
))
(declare-datatypes ((Regex!9342 0))(
  ( (ElementMatch!9342 (c!491122 C!18870)) (Concat!14663 (regOne!19196 Regex!9342) (regTwo!19196 Regex!9342)) (EmptyExpr!9342) (Star!9342 (reg!9671 Regex!9342)) (EmptyLang!9342) (Union!9342 (regOne!19197 Regex!9342) (regTwo!19197 Regex!9342)) )
))
(declare-fun r!17423 () Regex!9342)

(declare-fun validRegex!4075 (Regex!9342) Bool)

(assert (=> start!288690 (= res!1232813 (validRegex!4075 r!17423))))

(assert (=> start!288690 e!1879049))

(declare-fun e!1879044 () Bool)

(assert (=> start!288690 e!1879044))

(declare-fun e!1879045 () Bool)

(assert (=> start!288690 e!1879045))

(declare-fun b!2988924 () Bool)

(declare-fun tp_is_empty!16247 () Bool)

(assert (=> b!2988924 (= e!1879044 tp_is_empty!16247)))

(declare-fun b!2988925 () Bool)

(declare-fun e!1879046 () Bool)

(declare-fun e!1879050 () Bool)

(assert (=> b!2988925 (= e!1879046 e!1879050)))

(declare-fun res!1232816 () Bool)

(assert (=> b!2988925 (=> res!1232816 e!1879050)))

(declare-datatypes ((List!35207 0))(
  ( (Nil!35083) (Cons!35083 (h!40503 C!18870) (t!234272 List!35207)) )
))
(declare-datatypes ((tuple2!34002 0))(
  ( (tuple2!34003 (_1!20133 List!35207) (_2!20133 List!35207)) )
))
(declare-fun lt!1039980 () tuple2!34002)

(declare-fun matchR!4224 (Regex!9342 List!35207) Bool)

(assert (=> b!2988925 (= res!1232816 (not (matchR!4224 (reg!9671 r!17423) (_1!20133 lt!1039980))))))

(declare-datatypes ((Option!6733 0))(
  ( (None!6732) (Some!6732 (v!34866 tuple2!34002)) )
))
(declare-fun lt!1039978 () Option!6733)

(declare-fun get!10872 (Option!6733) tuple2!34002)

(assert (=> b!2988925 (= lt!1039980 (get!10872 lt!1039978))))

(declare-fun b!2988926 () Bool)

(declare-fun res!1232812 () Bool)

(assert (=> b!2988926 (=> res!1232812 e!1879050)))

(declare-fun lt!1039977 () Regex!9342)

(assert (=> b!2988926 (= res!1232812 (not (matchR!4224 lt!1039977 (_2!20133 lt!1039980))))))

(declare-fun b!2988927 () Bool)

(declare-fun tp!950618 () Bool)

(assert (=> b!2988927 (= e!1879044 tp!950618)))

(declare-fun b!2988928 () Bool)

(declare-fun e!1879048 () Bool)

(assert (=> b!2988928 (= e!1879049 (not e!1879048))))

(declare-fun res!1232814 () Bool)

(assert (=> b!2988928 (=> res!1232814 e!1879048)))

(declare-fun lt!1039981 () Bool)

(assert (=> b!2988928 (= res!1232814 (or (not lt!1039981) (is-Concat!14663 r!17423) (is-Union!9342 r!17423) (not (is-Star!9342 r!17423))))))

(declare-fun s!11993 () List!35207)

(declare-fun matchRSpec!1479 (Regex!9342 List!35207) Bool)

(assert (=> b!2988928 (= lt!1039981 (matchRSpec!1479 r!17423 s!11993))))

(assert (=> b!2988928 (= lt!1039981 (matchR!4224 r!17423 s!11993))))

(declare-datatypes ((Unit!49087 0))(
  ( (Unit!49088) )
))
(declare-fun lt!1039985 () Unit!49087)

(declare-fun mainMatchTheorem!1479 (Regex!9342 List!35207) Unit!49087)

(assert (=> b!2988928 (= lt!1039985 (mainMatchTheorem!1479 r!17423 s!11993))))

(declare-fun b!2988929 () Bool)

(declare-fun tp!950619 () Bool)

(declare-fun tp!950623 () Bool)

(assert (=> b!2988929 (= e!1879044 (and tp!950619 tp!950623))))

(declare-fun b!2988930 () Bool)

(declare-fun res!1232815 () Bool)

(declare-fun e!1879047 () Bool)

(assert (=> b!2988930 (=> res!1232815 e!1879047)))

(declare-fun ++!8386 (List!35207 List!35207) List!35207)

(assert (=> b!2988930 (= res!1232815 (not (= (++!8386 (_1!20133 lt!1039980) (_2!20133 lt!1039980)) s!11993)))))

(declare-fun b!2988931 () Bool)

(declare-fun tp!950622 () Bool)

(assert (=> b!2988931 (= e!1879045 (and tp_is_empty!16247 tp!950622))))

(assert (=> b!2988932 (= e!1879048 e!1879046)))

(declare-fun res!1232810 () Bool)

(assert (=> b!2988932 (=> res!1232810 e!1879046)))

(declare-fun lt!1039982 () Bool)

(assert (=> b!2988932 (= res!1232810 (not lt!1039982))))

(declare-fun Exists!1615 (Int) Bool)

(assert (=> b!2988932 (= (Exists!1615 lambda!111705) (Exists!1615 lambda!111706))))

(declare-fun lt!1039975 () Unit!49087)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!291 (Regex!9342 List!35207) Unit!49087)

(assert (=> b!2988932 (= lt!1039975 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!291 (reg!9671 r!17423) s!11993))))

(assert (=> b!2988932 (= lt!1039982 (Exists!1615 lambda!111705))))

(declare-fun isDefined!5284 (Option!6733) Bool)

(assert (=> b!2988932 (= lt!1039982 (isDefined!5284 lt!1039978))))

(declare-fun findConcatSeparation!1127 (Regex!9342 Regex!9342 List!35207 List!35207 List!35207) Option!6733)

(assert (=> b!2988932 (= lt!1039978 (findConcatSeparation!1127 (reg!9671 r!17423) lt!1039977 Nil!35083 s!11993 s!11993))))

(declare-fun lt!1039983 () Unit!49087)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!905 (Regex!9342 Regex!9342 List!35207) Unit!49087)

(assert (=> b!2988932 (= lt!1039983 (lemmaFindConcatSeparationEquivalentToExists!905 (reg!9671 r!17423) lt!1039977 s!11993))))

(assert (=> b!2988932 (= lt!1039977 (Star!9342 (reg!9671 r!17423)))))

(declare-fun b!2988933 () Bool)

(assert (=> b!2988933 (= e!1879050 e!1879047)))

(declare-fun res!1232809 () Bool)

(assert (=> b!2988933 (=> res!1232809 e!1879047)))

(declare-fun lt!1039979 () Int)

(declare-fun lt!1039984 () Int)

(assert (=> b!2988933 (= res!1232809 (not (= lt!1039979 lt!1039984)))))

(declare-fun size!26492 (List!35207) Int)

(assert (=> b!2988933 (= lt!1039984 (size!26492 s!11993))))

(assert (=> b!2988933 (= lt!1039979 (size!26492 (_2!20133 lt!1039980)))))

(declare-fun simplify!333 (Regex!9342) Regex!9342)

(assert (=> b!2988933 (matchR!4224 (simplify!333 (reg!9671 r!17423)) (_1!20133 lt!1039980))))

(declare-fun lt!1039976 () Unit!49087)

(declare-fun lemmaSimplifySound!191 (Regex!9342 List!35207) Unit!49087)

(assert (=> b!2988933 (= lt!1039976 (lemmaSimplifySound!191 (reg!9671 r!17423) (_1!20133 lt!1039980)))))

(declare-fun b!2988934 () Bool)

(assert (=> b!2988934 (= e!1879047 (= (+ (size!26492 (_1!20133 lt!1039980)) lt!1039979) lt!1039984))))

(declare-fun b!2988935 () Bool)

(declare-fun res!1232811 () Bool)

(assert (=> b!2988935 (=> res!1232811 e!1879048)))

(declare-fun isEmpty!19349 (List!35207) Bool)

(assert (=> b!2988935 (= res!1232811 (isEmpty!19349 s!11993))))

(declare-fun b!2988936 () Bool)

(declare-fun tp!950620 () Bool)

(declare-fun tp!950621 () Bool)

(assert (=> b!2988936 (= e!1879044 (and tp!950620 tp!950621))))

(assert (= (and start!288690 res!1232813) b!2988928))

(assert (= (and b!2988928 (not res!1232814)) b!2988935))

(assert (= (and b!2988935 (not res!1232811)) b!2988932))

(assert (= (and b!2988932 (not res!1232810)) b!2988925))

(assert (= (and b!2988925 (not res!1232816)) b!2988926))

(assert (= (and b!2988926 (not res!1232812)) b!2988933))

(assert (= (and b!2988933 (not res!1232809)) b!2988930))

(assert (= (and b!2988930 (not res!1232815)) b!2988934))

(assert (= (and start!288690 (is-ElementMatch!9342 r!17423)) b!2988924))

(assert (= (and start!288690 (is-Concat!14663 r!17423)) b!2988936))

(assert (= (and start!288690 (is-Star!9342 r!17423)) b!2988927))

(assert (= (and start!288690 (is-Union!9342 r!17423)) b!2988929))

(assert (= (and start!288690 (is-Cons!35083 s!11993)) b!2988931))

(declare-fun m!3346113 () Bool)

(assert (=> b!2988926 m!3346113))

(declare-fun m!3346115 () Bool)

(assert (=> b!2988934 m!3346115))

(declare-fun m!3346117 () Bool)

(assert (=> b!2988932 m!3346117))

(declare-fun m!3346119 () Bool)

(assert (=> b!2988932 m!3346119))

(declare-fun m!3346121 () Bool)

(assert (=> b!2988932 m!3346121))

(declare-fun m!3346123 () Bool)

(assert (=> b!2988932 m!3346123))

(declare-fun m!3346125 () Bool)

(assert (=> b!2988932 m!3346125))

(assert (=> b!2988932 m!3346125))

(declare-fun m!3346127 () Bool)

(assert (=> b!2988932 m!3346127))

(declare-fun m!3346129 () Bool)

(assert (=> b!2988935 m!3346129))

(declare-fun m!3346131 () Bool)

(assert (=> b!2988925 m!3346131))

(declare-fun m!3346133 () Bool)

(assert (=> b!2988925 m!3346133))

(declare-fun m!3346135 () Bool)

(assert (=> start!288690 m!3346135))

(declare-fun m!3346137 () Bool)

(assert (=> b!2988930 m!3346137))

(declare-fun m!3346139 () Bool)

(assert (=> b!2988928 m!3346139))

(declare-fun m!3346141 () Bool)

(assert (=> b!2988928 m!3346141))

(declare-fun m!3346143 () Bool)

(assert (=> b!2988928 m!3346143))

(declare-fun m!3346145 () Bool)

(assert (=> b!2988933 m!3346145))

(declare-fun m!3346147 () Bool)

(assert (=> b!2988933 m!3346147))

(assert (=> b!2988933 m!3346145))

(declare-fun m!3346149 () Bool)

(assert (=> b!2988933 m!3346149))

(declare-fun m!3346151 () Bool)

(assert (=> b!2988933 m!3346151))

(declare-fun m!3346153 () Bool)

(assert (=> b!2988933 m!3346153))

(push 1)

(assert (not b!2988930))

(assert (not b!2988929))

(assert (not start!288690))

(assert tp_is_empty!16247)

(assert (not b!2988931))

(assert (not b!2988925))

(assert (not b!2988926))

(assert (not b!2988934))

(assert (not b!2988936))

(assert (not b!2988927))

(assert (not b!2988933))

(assert (not b!2988928))

(assert (not b!2988935))

(assert (not b!2988932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2989026 () Bool)

(declare-fun e!1879098 () Bool)

(declare-fun head!6670 (List!35207) C!18870)

(assert (=> b!2989026 (= e!1879098 (= (head!6670 (_2!20133 lt!1039980)) (c!491122 lt!1039977)))))

(declare-fun d!844359 () Bool)

(declare-fun e!1879094 () Bool)

(assert (=> d!844359 e!1879094))

(declare-fun c!491130 () Bool)

(assert (=> d!844359 (= c!491130 (is-EmptyExpr!9342 lt!1039977))))

(declare-fun lt!1040021 () Bool)

(declare-fun e!1879097 () Bool)

(assert (=> d!844359 (= lt!1040021 e!1879097)))

(declare-fun c!491131 () Bool)

(assert (=> d!844359 (= c!491131 (isEmpty!19349 (_2!20133 lt!1039980)))))

(assert (=> d!844359 (validRegex!4075 lt!1039977)))

(assert (=> d!844359 (= (matchR!4224 lt!1039977 (_2!20133 lt!1039980)) lt!1040021)))

(declare-fun bm!199866 () Bool)

(declare-fun call!199871 () Bool)

(assert (=> bm!199866 (= call!199871 (isEmpty!19349 (_2!20133 lt!1039980)))))

(declare-fun b!2989027 () Bool)

(assert (=> b!2989027 (= e!1879094 (= lt!1040021 call!199871))))

(declare-fun b!2989028 () Bool)

(declare-fun e!1879095 () Bool)

(assert (=> b!2989028 (= e!1879094 e!1879095)))

(declare-fun c!491132 () Bool)

(assert (=> b!2989028 (= c!491132 (is-EmptyLang!9342 lt!1039977))))

(declare-fun b!2989029 () Bool)

(declare-fun e!1879096 () Bool)

(declare-fun e!1879092 () Bool)

(assert (=> b!2989029 (= e!1879096 e!1879092)))

(declare-fun res!1232874 () Bool)

(assert (=> b!2989029 (=> (not res!1232874) (not e!1879092))))

(assert (=> b!2989029 (= res!1232874 (not lt!1040021))))

(declare-fun b!2989030 () Bool)

(declare-fun res!1232878 () Bool)

(declare-fun e!1879093 () Bool)

(assert (=> b!2989030 (=> res!1232878 e!1879093)))

(declare-fun tail!4896 (List!35207) List!35207)

(assert (=> b!2989030 (= res!1232878 (not (isEmpty!19349 (tail!4896 (_2!20133 lt!1039980)))))))

(declare-fun b!2989031 () Bool)

(declare-fun nullable!3013 (Regex!9342) Bool)

(assert (=> b!2989031 (= e!1879097 (nullable!3013 lt!1039977))))

(declare-fun b!2989032 () Bool)

(assert (=> b!2989032 (= e!1879092 e!1879093)))

(declare-fun res!1232877 () Bool)

(assert (=> b!2989032 (=> res!1232877 e!1879093)))

(assert (=> b!2989032 (= res!1232877 call!199871)))

(declare-fun b!2989033 () Bool)

(assert (=> b!2989033 (= e!1879095 (not lt!1040021))))

(declare-fun b!2989034 () Bool)

(declare-fun derivativeStep!2611 (Regex!9342 C!18870) Regex!9342)

(assert (=> b!2989034 (= e!1879097 (matchR!4224 (derivativeStep!2611 lt!1039977 (head!6670 (_2!20133 lt!1039980))) (tail!4896 (_2!20133 lt!1039980))))))

(declare-fun b!2989035 () Bool)

(declare-fun res!1232872 () Bool)

(assert (=> b!2989035 (=> (not res!1232872) (not e!1879098))))

(assert (=> b!2989035 (= res!1232872 (isEmpty!19349 (tail!4896 (_2!20133 lt!1039980))))))

(declare-fun b!2989036 () Bool)

(assert (=> b!2989036 (= e!1879093 (not (= (head!6670 (_2!20133 lt!1039980)) (c!491122 lt!1039977))))))

(declare-fun b!2989037 () Bool)

(declare-fun res!1232871 () Bool)

(assert (=> b!2989037 (=> (not res!1232871) (not e!1879098))))

(assert (=> b!2989037 (= res!1232871 (not call!199871))))

(declare-fun b!2989038 () Bool)

(declare-fun res!1232876 () Bool)

(assert (=> b!2989038 (=> res!1232876 e!1879096)))

(assert (=> b!2989038 (= res!1232876 e!1879098)))

(declare-fun res!1232875 () Bool)

(assert (=> b!2989038 (=> (not res!1232875) (not e!1879098))))

(assert (=> b!2989038 (= res!1232875 lt!1040021)))

(declare-fun b!2989039 () Bool)

(declare-fun res!1232873 () Bool)

(assert (=> b!2989039 (=> res!1232873 e!1879096)))

(assert (=> b!2989039 (= res!1232873 (not (is-ElementMatch!9342 lt!1039977)))))

(assert (=> b!2989039 (= e!1879095 e!1879096)))

(assert (= (and d!844359 c!491131) b!2989031))

(assert (= (and d!844359 (not c!491131)) b!2989034))

(assert (= (and d!844359 c!491130) b!2989027))

(assert (= (and d!844359 (not c!491130)) b!2989028))

(assert (= (and b!2989028 c!491132) b!2989033))

(assert (= (and b!2989028 (not c!491132)) b!2989039))

(assert (= (and b!2989039 (not res!1232873)) b!2989038))

(assert (= (and b!2989038 res!1232875) b!2989037))

(assert (= (and b!2989037 res!1232871) b!2989035))

(assert (= (and b!2989035 res!1232872) b!2989026))

(assert (= (and b!2989038 (not res!1232876)) b!2989029))

(assert (= (and b!2989029 res!1232874) b!2989032))

(assert (= (and b!2989032 (not res!1232877)) b!2989030))

(assert (= (and b!2989030 (not res!1232878)) b!2989036))

(assert (= (or b!2989027 b!2989032 b!2989037) bm!199866))

(declare-fun m!3346199 () Bool)

(assert (=> b!2989031 m!3346199))

(declare-fun m!3346201 () Bool)

(assert (=> b!2989034 m!3346201))

(assert (=> b!2989034 m!3346201))

(declare-fun m!3346203 () Bool)

(assert (=> b!2989034 m!3346203))

(declare-fun m!3346205 () Bool)

(assert (=> b!2989034 m!3346205))

(assert (=> b!2989034 m!3346203))

(assert (=> b!2989034 m!3346205))

(declare-fun m!3346207 () Bool)

(assert (=> b!2989034 m!3346207))

(declare-fun m!3346209 () Bool)

(assert (=> d!844359 m!3346209))

(declare-fun m!3346211 () Bool)

(assert (=> d!844359 m!3346211))

(assert (=> b!2989026 m!3346201))

(assert (=> bm!199866 m!3346209))

(assert (=> b!2989035 m!3346205))

(assert (=> b!2989035 m!3346205))

(declare-fun m!3346213 () Bool)

(assert (=> b!2989035 m!3346213))

(assert (=> b!2989036 m!3346201))

(assert (=> b!2989030 m!3346205))

(assert (=> b!2989030 m!3346205))

(assert (=> b!2989030 m!3346213))

(assert (=> b!2988926 d!844359))

(declare-fun b!2989040 () Bool)

(declare-fun e!1879105 () Bool)

(assert (=> b!2989040 (= e!1879105 (= (head!6670 (_1!20133 lt!1039980)) (c!491122 (reg!9671 r!17423))))))

(declare-fun d!844365 () Bool)

(declare-fun e!1879101 () Bool)

(assert (=> d!844365 e!1879101))

(declare-fun c!491133 () Bool)

(assert (=> d!844365 (= c!491133 (is-EmptyExpr!9342 (reg!9671 r!17423)))))

(declare-fun lt!1040022 () Bool)

(declare-fun e!1879104 () Bool)

(assert (=> d!844365 (= lt!1040022 e!1879104)))

(declare-fun c!491134 () Bool)

(assert (=> d!844365 (= c!491134 (isEmpty!19349 (_1!20133 lt!1039980)))))

(assert (=> d!844365 (validRegex!4075 (reg!9671 r!17423))))

(assert (=> d!844365 (= (matchR!4224 (reg!9671 r!17423) (_1!20133 lt!1039980)) lt!1040022)))

(declare-fun bm!199867 () Bool)

(declare-fun call!199872 () Bool)

(assert (=> bm!199867 (= call!199872 (isEmpty!19349 (_1!20133 lt!1039980)))))

(declare-fun b!2989041 () Bool)

(assert (=> b!2989041 (= e!1879101 (= lt!1040022 call!199872))))

(declare-fun b!2989042 () Bool)

(declare-fun e!1879102 () Bool)

(assert (=> b!2989042 (= e!1879101 e!1879102)))

(declare-fun c!491135 () Bool)

(assert (=> b!2989042 (= c!491135 (is-EmptyLang!9342 (reg!9671 r!17423)))))

(declare-fun b!2989043 () Bool)

(declare-fun e!1879103 () Bool)

(declare-fun e!1879099 () Bool)

(assert (=> b!2989043 (= e!1879103 e!1879099)))

(declare-fun res!1232882 () Bool)

(assert (=> b!2989043 (=> (not res!1232882) (not e!1879099))))

(assert (=> b!2989043 (= res!1232882 (not lt!1040022))))

(declare-fun b!2989044 () Bool)

(declare-fun res!1232886 () Bool)

(declare-fun e!1879100 () Bool)

(assert (=> b!2989044 (=> res!1232886 e!1879100)))

(assert (=> b!2989044 (= res!1232886 (not (isEmpty!19349 (tail!4896 (_1!20133 lt!1039980)))))))

(declare-fun b!2989045 () Bool)

(assert (=> b!2989045 (= e!1879104 (nullable!3013 (reg!9671 r!17423)))))

(declare-fun b!2989046 () Bool)

(assert (=> b!2989046 (= e!1879099 e!1879100)))

(declare-fun res!1232885 () Bool)

(assert (=> b!2989046 (=> res!1232885 e!1879100)))

(assert (=> b!2989046 (= res!1232885 call!199872)))

(declare-fun b!2989047 () Bool)

(assert (=> b!2989047 (= e!1879102 (not lt!1040022))))

(declare-fun b!2989048 () Bool)

(assert (=> b!2989048 (= e!1879104 (matchR!4224 (derivativeStep!2611 (reg!9671 r!17423) (head!6670 (_1!20133 lt!1039980))) (tail!4896 (_1!20133 lt!1039980))))))

(declare-fun b!2989049 () Bool)

(declare-fun res!1232880 () Bool)

(assert (=> b!2989049 (=> (not res!1232880) (not e!1879105))))

(assert (=> b!2989049 (= res!1232880 (isEmpty!19349 (tail!4896 (_1!20133 lt!1039980))))))

(declare-fun b!2989050 () Bool)

(assert (=> b!2989050 (= e!1879100 (not (= (head!6670 (_1!20133 lt!1039980)) (c!491122 (reg!9671 r!17423)))))))

(declare-fun b!2989051 () Bool)

(declare-fun res!1232879 () Bool)

(assert (=> b!2989051 (=> (not res!1232879) (not e!1879105))))

(assert (=> b!2989051 (= res!1232879 (not call!199872))))

(declare-fun b!2989052 () Bool)

(declare-fun res!1232884 () Bool)

(assert (=> b!2989052 (=> res!1232884 e!1879103)))

(assert (=> b!2989052 (= res!1232884 e!1879105)))

(declare-fun res!1232883 () Bool)

(assert (=> b!2989052 (=> (not res!1232883) (not e!1879105))))

(assert (=> b!2989052 (= res!1232883 lt!1040022)))

(declare-fun b!2989053 () Bool)

(declare-fun res!1232881 () Bool)

(assert (=> b!2989053 (=> res!1232881 e!1879103)))

(assert (=> b!2989053 (= res!1232881 (not (is-ElementMatch!9342 (reg!9671 r!17423))))))

(assert (=> b!2989053 (= e!1879102 e!1879103)))

(assert (= (and d!844365 c!491134) b!2989045))

(assert (= (and d!844365 (not c!491134)) b!2989048))

(assert (= (and d!844365 c!491133) b!2989041))

(assert (= (and d!844365 (not c!491133)) b!2989042))

(assert (= (and b!2989042 c!491135) b!2989047))

(assert (= (and b!2989042 (not c!491135)) b!2989053))

(assert (= (and b!2989053 (not res!1232881)) b!2989052))

(assert (= (and b!2989052 res!1232883) b!2989051))

(assert (= (and b!2989051 res!1232879) b!2989049))

(assert (= (and b!2989049 res!1232880) b!2989040))

(assert (= (and b!2989052 (not res!1232884)) b!2989043))

(assert (= (and b!2989043 res!1232882) b!2989046))

(assert (= (and b!2989046 (not res!1232885)) b!2989044))

(assert (= (and b!2989044 (not res!1232886)) b!2989050))

(assert (= (or b!2989041 b!2989046 b!2989051) bm!199867))

(declare-fun m!3346215 () Bool)

(assert (=> b!2989045 m!3346215))

(declare-fun m!3346217 () Bool)

(assert (=> b!2989048 m!3346217))

(assert (=> b!2989048 m!3346217))

(declare-fun m!3346219 () Bool)

(assert (=> b!2989048 m!3346219))

(declare-fun m!3346221 () Bool)

(assert (=> b!2989048 m!3346221))

(assert (=> b!2989048 m!3346219))

(assert (=> b!2989048 m!3346221))

(declare-fun m!3346223 () Bool)

(assert (=> b!2989048 m!3346223))

(declare-fun m!3346225 () Bool)

(assert (=> d!844365 m!3346225))

(declare-fun m!3346227 () Bool)

(assert (=> d!844365 m!3346227))

(assert (=> b!2989040 m!3346217))

(assert (=> bm!199867 m!3346225))

(assert (=> b!2989049 m!3346221))

(assert (=> b!2989049 m!3346221))

(declare-fun m!3346229 () Bool)

(assert (=> b!2989049 m!3346229))

(assert (=> b!2989050 m!3346217))

(assert (=> b!2989044 m!3346221))

(assert (=> b!2989044 m!3346221))

(assert (=> b!2989044 m!3346229))

(assert (=> b!2988925 d!844365))

(declare-fun d!844367 () Bool)

(assert (=> d!844367 (= (get!10872 lt!1039978) (v!34866 lt!1039978))))

(assert (=> b!2988925 d!844367))

(declare-fun b!2989072 () Bool)

(declare-fun e!1879125 () Bool)

(declare-fun e!1879122 () Bool)

(assert (=> b!2989072 (= e!1879125 e!1879122)))

(declare-fun res!1232899 () Bool)

(assert (=> b!2989072 (=> (not res!1232899) (not e!1879122))))

(declare-fun call!199880 () Bool)

(assert (=> b!2989072 (= res!1232899 call!199880)))

(declare-fun b!2989073 () Bool)

(declare-fun e!1879123 () Bool)

(declare-fun call!199879 () Bool)

(assert (=> b!2989073 (= e!1879123 call!199879)))

(declare-fun d!844369 () Bool)

(declare-fun res!1232900 () Bool)

(declare-fun e!1879120 () Bool)

(assert (=> d!844369 (=> res!1232900 e!1879120)))

(assert (=> d!844369 (= res!1232900 (is-ElementMatch!9342 r!17423))))

(assert (=> d!844369 (= (validRegex!4075 r!17423) e!1879120)))

(declare-fun b!2989074 () Bool)

(declare-fun call!199881 () Bool)

(assert (=> b!2989074 (= e!1879122 call!199881)))

(declare-fun b!2989075 () Bool)

(declare-fun e!1879126 () Bool)

(assert (=> b!2989075 (= e!1879126 call!199880)))

(declare-fun b!2989076 () Bool)

(declare-fun e!1879121 () Bool)

(assert (=> b!2989076 (= e!1879121 e!1879123)))

(declare-fun res!1232901 () Bool)

(assert (=> b!2989076 (= res!1232901 (not (nullable!3013 (reg!9671 r!17423))))))

(assert (=> b!2989076 (=> (not res!1232901) (not e!1879123))))

(declare-fun bm!199874 () Bool)

(declare-fun c!491141 () Bool)

(assert (=> bm!199874 (= call!199880 (validRegex!4075 (ite c!491141 (regTwo!19197 r!17423) (regOne!19196 r!17423))))))

(declare-fun b!2989077 () Bool)

(declare-fun res!1232898 () Bool)

(assert (=> b!2989077 (=> res!1232898 e!1879125)))

(assert (=> b!2989077 (= res!1232898 (not (is-Concat!14663 r!17423)))))

(declare-fun e!1879124 () Bool)

(assert (=> b!2989077 (= e!1879124 e!1879125)))

(declare-fun bm!199875 () Bool)

(assert (=> bm!199875 (= call!199881 call!199879)))

(declare-fun b!2989078 () Bool)

(assert (=> b!2989078 (= e!1879120 e!1879121)))

(declare-fun c!491140 () Bool)

(assert (=> b!2989078 (= c!491140 (is-Star!9342 r!17423))))

(declare-fun bm!199876 () Bool)

(assert (=> bm!199876 (= call!199879 (validRegex!4075 (ite c!491140 (reg!9671 r!17423) (ite c!491141 (regOne!19197 r!17423) (regTwo!19196 r!17423)))))))

(declare-fun b!2989079 () Bool)

(assert (=> b!2989079 (= e!1879121 e!1879124)))

(assert (=> b!2989079 (= c!491141 (is-Union!9342 r!17423))))

(declare-fun b!2989080 () Bool)

(declare-fun res!1232897 () Bool)

(assert (=> b!2989080 (=> (not res!1232897) (not e!1879126))))

(assert (=> b!2989080 (= res!1232897 call!199881)))

(assert (=> b!2989080 (= e!1879124 e!1879126)))

(assert (= (and d!844369 (not res!1232900)) b!2989078))

(assert (= (and b!2989078 c!491140) b!2989076))

(assert (= (and b!2989078 (not c!491140)) b!2989079))

(assert (= (and b!2989076 res!1232901) b!2989073))

(assert (= (and b!2989079 c!491141) b!2989080))

(assert (= (and b!2989079 (not c!491141)) b!2989077))

(assert (= (and b!2989080 res!1232897) b!2989075))

(assert (= (and b!2989077 (not res!1232898)) b!2989072))

(assert (= (and b!2989072 res!1232899) b!2989074))

(assert (= (or b!2989080 b!2989074) bm!199875))

(assert (= (or b!2989075 b!2989072) bm!199874))

(assert (= (or b!2989073 bm!199875) bm!199876))

(assert (=> b!2989076 m!3346215))

(declare-fun m!3346231 () Bool)

(assert (=> bm!199874 m!3346231))

(declare-fun m!3346233 () Bool)

(assert (=> bm!199876 m!3346233))

(assert (=> start!288690 d!844369))

(declare-fun bs!527584 () Bool)

(declare-fun d!844371 () Bool)

(assert (= bs!527584 (and d!844371 b!2988932)))

(declare-fun lambda!111724 () Int)

(assert (=> bs!527584 (= (= (Star!9342 (reg!9671 r!17423)) lt!1039977) (= lambda!111724 lambda!111705))))

(assert (=> bs!527584 (not (= lambda!111724 lambda!111706))))

(assert (=> d!844371 true))

(assert (=> d!844371 true))

(declare-fun lambda!111725 () Int)

(assert (=> bs!527584 (not (= lambda!111725 lambda!111705))))

(assert (=> bs!527584 (= (= (Star!9342 (reg!9671 r!17423)) lt!1039977) (= lambda!111725 lambda!111706))))

(declare-fun bs!527585 () Bool)

(assert (= bs!527585 d!844371))

(assert (=> bs!527585 (not (= lambda!111725 lambda!111724))))

(assert (=> d!844371 true))

(assert (=> d!844371 true))

(assert (=> d!844371 (= (Exists!1615 lambda!111724) (Exists!1615 lambda!111725))))

(declare-fun lt!1040028 () Unit!49087)

(declare-fun choose!17731 (Regex!9342 List!35207) Unit!49087)

(assert (=> d!844371 (= lt!1040028 (choose!17731 (reg!9671 r!17423) s!11993))))

(assert (=> d!844371 (validRegex!4075 (reg!9671 r!17423))))

(assert (=> d!844371 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!291 (reg!9671 r!17423) s!11993) lt!1040028)))

(declare-fun m!3346235 () Bool)

(assert (=> bs!527585 m!3346235))

(declare-fun m!3346237 () Bool)

(assert (=> bs!527585 m!3346237))

(declare-fun m!3346239 () Bool)

(assert (=> bs!527585 m!3346239))

(assert (=> bs!527585 m!3346227))

(assert (=> b!2988932 d!844371))

(declare-fun bs!527588 () Bool)

(declare-fun d!844373 () Bool)

(assert (= bs!527588 (and d!844373 b!2988932)))

(declare-fun lambda!111729 () Int)

(assert (=> bs!527588 (= lambda!111729 lambda!111705)))

(assert (=> bs!527588 (not (= lambda!111729 lambda!111706))))

(declare-fun bs!527589 () Bool)

(assert (= bs!527589 (and d!844373 d!844371)))

(assert (=> bs!527589 (= (= lt!1039977 (Star!9342 (reg!9671 r!17423))) (= lambda!111729 lambda!111724))))

(assert (=> bs!527589 (not (= lambda!111729 lambda!111725))))

(assert (=> d!844373 true))

(assert (=> d!844373 true))

(assert (=> d!844373 true))

(assert (=> d!844373 (= (isDefined!5284 (findConcatSeparation!1127 (reg!9671 r!17423) lt!1039977 Nil!35083 s!11993 s!11993)) (Exists!1615 lambda!111729))))

(declare-fun lt!1040031 () Unit!49087)

(declare-fun choose!17732 (Regex!9342 Regex!9342 List!35207) Unit!49087)

(assert (=> d!844373 (= lt!1040031 (choose!17732 (reg!9671 r!17423) lt!1039977 s!11993))))

(assert (=> d!844373 (validRegex!4075 (reg!9671 r!17423))))

(assert (=> d!844373 (= (lemmaFindConcatSeparationEquivalentToExists!905 (reg!9671 r!17423) lt!1039977 s!11993) lt!1040031)))

(declare-fun bs!527590 () Bool)

(assert (= bs!527590 d!844373))

(assert (=> bs!527590 m!3346121))

(assert (=> bs!527590 m!3346121))

(declare-fun m!3346251 () Bool)

(assert (=> bs!527590 m!3346251))

(declare-fun m!3346253 () Bool)

(assert (=> bs!527590 m!3346253))

(declare-fun m!3346255 () Bool)

(assert (=> bs!527590 m!3346255))

(assert (=> bs!527590 m!3346227))

(assert (=> b!2988932 d!844373))

(declare-fun d!844379 () Bool)

(declare-fun choose!17733 (Int) Bool)

(assert (=> d!844379 (= (Exists!1615 lambda!111706) (choose!17733 lambda!111706))))

(declare-fun bs!527591 () Bool)

(assert (= bs!527591 d!844379))

(declare-fun m!3346257 () Bool)

(assert (=> bs!527591 m!3346257))

(assert (=> b!2988932 d!844379))

(declare-fun d!844381 () Bool)

(declare-fun isEmpty!19351 (Option!6733) Bool)

(assert (=> d!844381 (= (isDefined!5284 lt!1039978) (not (isEmpty!19351 lt!1039978)))))

(declare-fun bs!527592 () Bool)

(assert (= bs!527592 d!844381))

(declare-fun m!3346259 () Bool)

(assert (=> bs!527592 m!3346259))

(assert (=> b!2988932 d!844381))

(declare-fun b!2989133 () Bool)

(declare-fun e!1879155 () Option!6733)

(assert (=> b!2989133 (= e!1879155 None!6732)))

(declare-fun b!2989134 () Bool)

(declare-fun lt!1040045 () Unit!49087)

(declare-fun lt!1040046 () Unit!49087)

(assert (=> b!2989134 (= lt!1040045 lt!1040046)))

(assert (=> b!2989134 (= (++!8386 (++!8386 Nil!35083 (Cons!35083 (h!40503 s!11993) Nil!35083)) (t!234272 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1001 (List!35207 C!18870 List!35207 List!35207) Unit!49087)

(assert (=> b!2989134 (= lt!1040046 (lemmaMoveElementToOtherListKeepsConcatEq!1001 Nil!35083 (h!40503 s!11993) (t!234272 s!11993) s!11993))))

(assert (=> b!2989134 (= e!1879155 (findConcatSeparation!1127 (reg!9671 r!17423) lt!1039977 (++!8386 Nil!35083 (Cons!35083 (h!40503 s!11993) Nil!35083)) (t!234272 s!11993) s!11993))))

(declare-fun b!2989135 () Bool)

(declare-fun e!1879154 () Bool)

(assert (=> b!2989135 (= e!1879154 (matchR!4224 lt!1039977 s!11993))))

(declare-fun b!2989136 () Bool)

(declare-fun e!1879153 () Option!6733)

(assert (=> b!2989136 (= e!1879153 e!1879155)))

(declare-fun c!491151 () Bool)

(assert (=> b!2989136 (= c!491151 (is-Nil!35083 s!11993))))

(declare-fun b!2989137 () Bool)

(declare-fun e!1879156 () Bool)

(declare-fun lt!1040044 () Option!6733)

(assert (=> b!2989137 (= e!1879156 (not (isDefined!5284 lt!1040044)))))

(declare-fun d!844383 () Bool)

(assert (=> d!844383 e!1879156))

(declare-fun res!1232941 () Bool)

(assert (=> d!844383 (=> res!1232941 e!1879156)))

(declare-fun e!1879157 () Bool)

(assert (=> d!844383 (= res!1232941 e!1879157)))

(declare-fun res!1232939 () Bool)

(assert (=> d!844383 (=> (not res!1232939) (not e!1879157))))

(assert (=> d!844383 (= res!1232939 (isDefined!5284 lt!1040044))))

(assert (=> d!844383 (= lt!1040044 e!1879153)))

(declare-fun c!491150 () Bool)

(assert (=> d!844383 (= c!491150 e!1879154)))

(declare-fun res!1232940 () Bool)

(assert (=> d!844383 (=> (not res!1232940) (not e!1879154))))

(assert (=> d!844383 (= res!1232940 (matchR!4224 (reg!9671 r!17423) Nil!35083))))

(assert (=> d!844383 (validRegex!4075 (reg!9671 r!17423))))

(assert (=> d!844383 (= (findConcatSeparation!1127 (reg!9671 r!17423) lt!1039977 Nil!35083 s!11993 s!11993) lt!1040044)))

(declare-fun b!2989138 () Bool)

(assert (=> b!2989138 (= e!1879157 (= (++!8386 (_1!20133 (get!10872 lt!1040044)) (_2!20133 (get!10872 lt!1040044))) s!11993))))

(declare-fun b!2989139 () Bool)

(declare-fun res!1232938 () Bool)

(assert (=> b!2989139 (=> (not res!1232938) (not e!1879157))))

(assert (=> b!2989139 (= res!1232938 (matchR!4224 lt!1039977 (_2!20133 (get!10872 lt!1040044))))))

(declare-fun b!2989140 () Bool)

(declare-fun res!1232942 () Bool)

(assert (=> b!2989140 (=> (not res!1232942) (not e!1879157))))

(assert (=> b!2989140 (= res!1232942 (matchR!4224 (reg!9671 r!17423) (_1!20133 (get!10872 lt!1040044))))))

(declare-fun b!2989141 () Bool)

(assert (=> b!2989141 (= e!1879153 (Some!6732 (tuple2!34003 Nil!35083 s!11993)))))

(assert (= (and d!844383 res!1232940) b!2989135))

(assert (= (and d!844383 c!491150) b!2989141))

(assert (= (and d!844383 (not c!491150)) b!2989136))

(assert (= (and b!2989136 c!491151) b!2989133))

(assert (= (and b!2989136 (not c!491151)) b!2989134))

(assert (= (and d!844383 res!1232939) b!2989140))

(assert (= (and b!2989140 res!1232942) b!2989139))

(assert (= (and b!2989139 res!1232938) b!2989138))

(assert (= (and d!844383 (not res!1232941)) b!2989137))

(declare-fun m!3346261 () Bool)

(assert (=> d!844383 m!3346261))

(declare-fun m!3346263 () Bool)

(assert (=> d!844383 m!3346263))

(assert (=> d!844383 m!3346227))

(declare-fun m!3346265 () Bool)

(assert (=> b!2989135 m!3346265))

(declare-fun m!3346267 () Bool)

(assert (=> b!2989140 m!3346267))

(declare-fun m!3346269 () Bool)

(assert (=> b!2989140 m!3346269))

(assert (=> b!2989139 m!3346267))

(declare-fun m!3346271 () Bool)

(assert (=> b!2989139 m!3346271))

(declare-fun m!3346273 () Bool)

(assert (=> b!2989134 m!3346273))

(assert (=> b!2989134 m!3346273))

(declare-fun m!3346275 () Bool)

(assert (=> b!2989134 m!3346275))

(declare-fun m!3346277 () Bool)

(assert (=> b!2989134 m!3346277))

(assert (=> b!2989134 m!3346273))

(declare-fun m!3346279 () Bool)

(assert (=> b!2989134 m!3346279))

(assert (=> b!2989137 m!3346261))

(assert (=> b!2989138 m!3346267))

(declare-fun m!3346281 () Bool)

(assert (=> b!2989138 m!3346281))

(assert (=> b!2988932 d!844383))

(declare-fun d!844385 () Bool)

(assert (=> d!844385 (= (Exists!1615 lambda!111705) (choose!17733 lambda!111705))))

(declare-fun bs!527593 () Bool)

(assert (= bs!527593 d!844385))

(declare-fun m!3346283 () Bool)

(assert (=> bs!527593 m!3346283))

(assert (=> b!2988932 d!844385))

(declare-fun d!844387 () Bool)

(declare-fun lt!1040049 () Int)

(assert (=> d!844387 (>= lt!1040049 0)))

(declare-fun e!1879164 () Int)

(assert (=> d!844387 (= lt!1040049 e!1879164)))

(declare-fun c!491154 () Bool)

(assert (=> d!844387 (= c!491154 (is-Nil!35083 (_1!20133 lt!1039980)))))

(assert (=> d!844387 (= (size!26492 (_1!20133 lt!1039980)) lt!1040049)))

(declare-fun b!2989154 () Bool)

(assert (=> b!2989154 (= e!1879164 0)))

(declare-fun b!2989155 () Bool)

(assert (=> b!2989155 (= e!1879164 (+ 1 (size!26492 (t!234272 (_1!20133 lt!1039980)))))))

(assert (= (and d!844387 c!491154) b!2989154))

(assert (= (and d!844387 (not c!491154)) b!2989155))

(declare-fun m!3346285 () Bool)

(assert (=> b!2989155 m!3346285))

(assert (=> b!2988934 d!844387))

(declare-fun bs!527595 () Bool)

(declare-fun b!2989203 () Bool)

(assert (= bs!527595 (and b!2989203 b!2988932)))

(declare-fun lambda!111734 () Int)

(assert (=> bs!527595 (= (= r!17423 lt!1039977) (= lambda!111734 lambda!111706))))

(declare-fun bs!527596 () Bool)

(assert (= bs!527596 (and b!2989203 d!844371)))

(assert (=> bs!527596 (not (= lambda!111734 lambda!111724))))

(assert (=> bs!527595 (not (= lambda!111734 lambda!111705))))

(assert (=> bs!527596 (= (= r!17423 (Star!9342 (reg!9671 r!17423))) (= lambda!111734 lambda!111725))))

(declare-fun bs!527597 () Bool)

(assert (= bs!527597 (and b!2989203 d!844373)))

(assert (=> bs!527597 (not (= lambda!111734 lambda!111729))))

(assert (=> b!2989203 true))

(assert (=> b!2989203 true))

(declare-fun bs!527598 () Bool)

(declare-fun b!2989205 () Bool)

(assert (= bs!527598 (and b!2989205 b!2989203)))

(declare-fun lambda!111735 () Int)

(assert (=> bs!527598 (not (= lambda!111735 lambda!111734))))

(declare-fun bs!527599 () Bool)

(assert (= bs!527599 (and b!2989205 b!2988932)))

(assert (=> bs!527599 (not (= lambda!111735 lambda!111706))))

(declare-fun bs!527600 () Bool)

(assert (= bs!527600 (and b!2989205 d!844371)))

(assert (=> bs!527600 (not (= lambda!111735 lambda!111724))))

(assert (=> bs!527599 (not (= lambda!111735 lambda!111705))))

(assert (=> bs!527600 (not (= lambda!111735 lambda!111725))))

(declare-fun bs!527601 () Bool)

(assert (= bs!527601 (and b!2989205 d!844373)))

(assert (=> bs!527601 (not (= lambda!111735 lambda!111729))))

(assert (=> b!2989205 true))

(assert (=> b!2989205 true))

(declare-fun b!2989197 () Bool)

(declare-fun c!491166 () Bool)

(assert (=> b!2989197 (= c!491166 (is-ElementMatch!9342 r!17423))))

(declare-fun e!1879194 () Bool)

(declare-fun e!1879192 () Bool)

(assert (=> b!2989197 (= e!1879194 e!1879192)))

(declare-fun d!844389 () Bool)

(declare-fun c!491168 () Bool)

(assert (=> d!844389 (= c!491168 (is-EmptyExpr!9342 r!17423))))

(declare-fun e!1879191 () Bool)

(assert (=> d!844389 (= (matchRSpec!1479 r!17423 s!11993) e!1879191)))

(declare-fun b!2989198 () Bool)

(assert (=> b!2989198 (= e!1879192 (= s!11993 (Cons!35083 (c!491122 r!17423) Nil!35083)))))

(declare-fun b!2989199 () Bool)

(assert (=> b!2989199 (= e!1879191 e!1879194)))

(declare-fun res!1232973 () Bool)

(assert (=> b!2989199 (= res!1232973 (not (is-EmptyLang!9342 r!17423)))))

(assert (=> b!2989199 (=> (not res!1232973) (not e!1879194))))

(declare-fun bm!199881 () Bool)

(declare-fun call!199887 () Bool)

(declare-fun c!491165 () Bool)

(assert (=> bm!199881 (= call!199887 (Exists!1615 (ite c!491165 lambda!111734 lambda!111735)))))

(declare-fun b!2989200 () Bool)

(declare-fun c!491167 () Bool)

(assert (=> b!2989200 (= c!491167 (is-Union!9342 r!17423))))

(declare-fun e!1879190 () Bool)

(assert (=> b!2989200 (= e!1879192 e!1879190)))

(declare-fun bm!199882 () Bool)

(declare-fun call!199886 () Bool)

(assert (=> bm!199882 (= call!199886 (isEmpty!19349 s!11993))))

(declare-fun b!2989201 () Bool)

(declare-fun e!1879193 () Bool)

(assert (=> b!2989201 (= e!1879190 e!1879193)))

(declare-fun res!1232974 () Bool)

(assert (=> b!2989201 (= res!1232974 (matchRSpec!1479 (regOne!19197 r!17423) s!11993))))

(assert (=> b!2989201 (=> res!1232974 e!1879193)))

(declare-fun b!2989202 () Bool)

(declare-fun e!1879188 () Bool)

(assert (=> b!2989202 (= e!1879190 e!1879188)))

(assert (=> b!2989202 (= c!491165 (is-Star!9342 r!17423))))

(declare-fun e!1879189 () Bool)

(assert (=> b!2989203 (= e!1879189 call!199887)))

(declare-fun b!2989204 () Bool)

(assert (=> b!2989204 (= e!1879191 call!199886)))

(assert (=> b!2989205 (= e!1879188 call!199887)))

(declare-fun b!2989206 () Bool)

(assert (=> b!2989206 (= e!1879193 (matchRSpec!1479 (regTwo!19197 r!17423) s!11993))))

(declare-fun b!2989207 () Bool)

(declare-fun res!1232972 () Bool)

(assert (=> b!2989207 (=> res!1232972 e!1879189)))

(assert (=> b!2989207 (= res!1232972 call!199886)))

(assert (=> b!2989207 (= e!1879188 e!1879189)))

(assert (= (and d!844389 c!491168) b!2989204))

(assert (= (and d!844389 (not c!491168)) b!2989199))

(assert (= (and b!2989199 res!1232973) b!2989197))

(assert (= (and b!2989197 c!491166) b!2989198))

(assert (= (and b!2989197 (not c!491166)) b!2989200))

(assert (= (and b!2989200 c!491167) b!2989201))

(assert (= (and b!2989200 (not c!491167)) b!2989202))

(assert (= (and b!2989201 (not res!1232974)) b!2989206))

(assert (= (and b!2989202 c!491165) b!2989207))

(assert (= (and b!2989202 (not c!491165)) b!2989205))

(assert (= (and b!2989207 (not res!1232972)) b!2989203))

(assert (= (or b!2989203 b!2989205) bm!199881))

(assert (= (or b!2989204 b!2989207) bm!199882))

(declare-fun m!3346311 () Bool)

(assert (=> bm!199881 m!3346311))

(assert (=> bm!199882 m!3346129))

(declare-fun m!3346313 () Bool)

(assert (=> b!2989201 m!3346313))

(declare-fun m!3346315 () Bool)

(assert (=> b!2989206 m!3346315))

(assert (=> b!2988928 d!844389))

(declare-fun b!2989208 () Bool)

(declare-fun e!1879201 () Bool)

(assert (=> b!2989208 (= e!1879201 (= (head!6670 s!11993) (c!491122 r!17423)))))

(declare-fun d!844395 () Bool)

(declare-fun e!1879197 () Bool)

(assert (=> d!844395 e!1879197))

(declare-fun c!491169 () Bool)

(assert (=> d!844395 (= c!491169 (is-EmptyExpr!9342 r!17423))))

(declare-fun lt!1040053 () Bool)

(declare-fun e!1879200 () Bool)

(assert (=> d!844395 (= lt!1040053 e!1879200)))

(declare-fun c!491170 () Bool)

(assert (=> d!844395 (= c!491170 (isEmpty!19349 s!11993))))

(assert (=> d!844395 (validRegex!4075 r!17423)))

(assert (=> d!844395 (= (matchR!4224 r!17423 s!11993) lt!1040053)))

(declare-fun bm!199883 () Bool)

(declare-fun call!199888 () Bool)

(assert (=> bm!199883 (= call!199888 (isEmpty!19349 s!11993))))

(declare-fun b!2989209 () Bool)

(assert (=> b!2989209 (= e!1879197 (= lt!1040053 call!199888))))

(declare-fun b!2989210 () Bool)

(declare-fun e!1879198 () Bool)

(assert (=> b!2989210 (= e!1879197 e!1879198)))

(declare-fun c!491171 () Bool)

(assert (=> b!2989210 (= c!491171 (is-EmptyLang!9342 r!17423))))

(declare-fun b!2989211 () Bool)

(declare-fun e!1879199 () Bool)

(declare-fun e!1879195 () Bool)

(assert (=> b!2989211 (= e!1879199 e!1879195)))

(declare-fun res!1232978 () Bool)

(assert (=> b!2989211 (=> (not res!1232978) (not e!1879195))))

(assert (=> b!2989211 (= res!1232978 (not lt!1040053))))

(declare-fun b!2989212 () Bool)

(declare-fun res!1232982 () Bool)

(declare-fun e!1879196 () Bool)

(assert (=> b!2989212 (=> res!1232982 e!1879196)))

(assert (=> b!2989212 (= res!1232982 (not (isEmpty!19349 (tail!4896 s!11993))))))

(declare-fun b!2989213 () Bool)

(assert (=> b!2989213 (= e!1879200 (nullable!3013 r!17423))))

(declare-fun b!2989214 () Bool)

(assert (=> b!2989214 (= e!1879195 e!1879196)))

(declare-fun res!1232981 () Bool)

(assert (=> b!2989214 (=> res!1232981 e!1879196)))

(assert (=> b!2989214 (= res!1232981 call!199888)))

(declare-fun b!2989215 () Bool)

(assert (=> b!2989215 (= e!1879198 (not lt!1040053))))

(declare-fun b!2989216 () Bool)

(assert (=> b!2989216 (= e!1879200 (matchR!4224 (derivativeStep!2611 r!17423 (head!6670 s!11993)) (tail!4896 s!11993)))))

(declare-fun b!2989217 () Bool)

(declare-fun res!1232976 () Bool)

(assert (=> b!2989217 (=> (not res!1232976) (not e!1879201))))

(assert (=> b!2989217 (= res!1232976 (isEmpty!19349 (tail!4896 s!11993)))))

(declare-fun b!2989218 () Bool)

(assert (=> b!2989218 (= e!1879196 (not (= (head!6670 s!11993) (c!491122 r!17423))))))

(declare-fun b!2989219 () Bool)

(declare-fun res!1232975 () Bool)

(assert (=> b!2989219 (=> (not res!1232975) (not e!1879201))))

(assert (=> b!2989219 (= res!1232975 (not call!199888))))

(declare-fun b!2989220 () Bool)

(declare-fun res!1232980 () Bool)

(assert (=> b!2989220 (=> res!1232980 e!1879199)))

(assert (=> b!2989220 (= res!1232980 e!1879201)))

(declare-fun res!1232979 () Bool)

(assert (=> b!2989220 (=> (not res!1232979) (not e!1879201))))

(assert (=> b!2989220 (= res!1232979 lt!1040053)))

(declare-fun b!2989221 () Bool)

(declare-fun res!1232977 () Bool)

(assert (=> b!2989221 (=> res!1232977 e!1879199)))

(assert (=> b!2989221 (= res!1232977 (not (is-ElementMatch!9342 r!17423)))))

(assert (=> b!2989221 (= e!1879198 e!1879199)))

(assert (= (and d!844395 c!491170) b!2989213))

(assert (= (and d!844395 (not c!491170)) b!2989216))

(assert (= (and d!844395 c!491169) b!2989209))

(assert (= (and d!844395 (not c!491169)) b!2989210))

(assert (= (and b!2989210 c!491171) b!2989215))

(assert (= (and b!2989210 (not c!491171)) b!2989221))

(assert (= (and b!2989221 (not res!1232977)) b!2989220))

(assert (= (and b!2989220 res!1232979) b!2989219))

(assert (= (and b!2989219 res!1232975) b!2989217))

(assert (= (and b!2989217 res!1232976) b!2989208))

(assert (= (and b!2989220 (not res!1232980)) b!2989211))

(assert (= (and b!2989211 res!1232978) b!2989214))

(assert (= (and b!2989214 (not res!1232981)) b!2989212))

(assert (= (and b!2989212 (not res!1232982)) b!2989218))

(assert (= (or b!2989209 b!2989214 b!2989219) bm!199883))

(declare-fun m!3346317 () Bool)

(assert (=> b!2989213 m!3346317))

(declare-fun m!3346319 () Bool)

(assert (=> b!2989216 m!3346319))

(assert (=> b!2989216 m!3346319))

(declare-fun m!3346321 () Bool)

(assert (=> b!2989216 m!3346321))

(declare-fun m!3346323 () Bool)

(assert (=> b!2989216 m!3346323))

(assert (=> b!2989216 m!3346321))

(assert (=> b!2989216 m!3346323))

(declare-fun m!3346325 () Bool)

(assert (=> b!2989216 m!3346325))

(assert (=> d!844395 m!3346129))

(assert (=> d!844395 m!3346135))

(assert (=> b!2989208 m!3346319))

(assert (=> bm!199883 m!3346129))

(assert (=> b!2989217 m!3346323))

(assert (=> b!2989217 m!3346323))

(declare-fun m!3346327 () Bool)

(assert (=> b!2989217 m!3346327))

(assert (=> b!2989218 m!3346319))

(assert (=> b!2989212 m!3346323))

(assert (=> b!2989212 m!3346323))

(assert (=> b!2989212 m!3346327))

(assert (=> b!2988928 d!844395))

(declare-fun d!844397 () Bool)

(assert (=> d!844397 (= (matchR!4224 r!17423 s!11993) (matchRSpec!1479 r!17423 s!11993))))

(declare-fun lt!1040056 () Unit!49087)

(declare-fun choose!17734 (Regex!9342 List!35207) Unit!49087)

(assert (=> d!844397 (= lt!1040056 (choose!17734 r!17423 s!11993))))

(assert (=> d!844397 (validRegex!4075 r!17423)))

(assert (=> d!844397 (= (mainMatchTheorem!1479 r!17423 s!11993) lt!1040056)))

(declare-fun bs!527602 () Bool)

(assert (= bs!527602 d!844397))

(assert (=> bs!527602 m!3346141))

(assert (=> bs!527602 m!3346139))

(declare-fun m!3346329 () Bool)

(assert (=> bs!527602 m!3346329))

(assert (=> bs!527602 m!3346135))

(assert (=> b!2988928 d!844397))

(declare-fun d!844399 () Bool)

(declare-fun lt!1040057 () Int)

(assert (=> d!844399 (>= lt!1040057 0)))

(declare-fun e!1879202 () Int)

(assert (=> d!844399 (= lt!1040057 e!1879202)))

(declare-fun c!491172 () Bool)

(assert (=> d!844399 (= c!491172 (is-Nil!35083 (_2!20133 lt!1039980)))))

(assert (=> d!844399 (= (size!26492 (_2!20133 lt!1039980)) lt!1040057)))

(declare-fun b!2989222 () Bool)

(assert (=> b!2989222 (= e!1879202 0)))

(declare-fun b!2989223 () Bool)

(assert (=> b!2989223 (= e!1879202 (+ 1 (size!26492 (t!234272 (_2!20133 lt!1039980)))))))

(assert (= (and d!844399 c!491172) b!2989222))

(assert (= (and d!844399 (not c!491172)) b!2989223))

(declare-fun m!3346331 () Bool)

(assert (=> b!2989223 m!3346331))

(assert (=> b!2988933 d!844399))

(declare-fun d!844401 () Bool)

(assert (=> d!844401 (= (matchR!4224 (reg!9671 r!17423) (_1!20133 lt!1039980)) (matchR!4224 (simplify!333 (reg!9671 r!17423)) (_1!20133 lt!1039980)))))

(declare-fun lt!1040062 () Unit!49087)

(declare-fun choose!17735 (Regex!9342 List!35207) Unit!49087)

(assert (=> d!844401 (= lt!1040062 (choose!17735 (reg!9671 r!17423) (_1!20133 lt!1039980)))))

(assert (=> d!844401 (validRegex!4075 (reg!9671 r!17423))))

(assert (=> d!844401 (= (lemmaSimplifySound!191 (reg!9671 r!17423) (_1!20133 lt!1039980)) lt!1040062)))

(declare-fun bs!527603 () Bool)

(assert (= bs!527603 d!844401))

(assert (=> bs!527603 m!3346145))

(declare-fun m!3346333 () Bool)

(assert (=> bs!527603 m!3346333))

(assert (=> bs!527603 m!3346227))

(assert (=> bs!527603 m!3346131))

(assert (=> bs!527603 m!3346145))

(assert (=> bs!527603 m!3346147))

(assert (=> b!2988933 d!844401))

(declare-fun b!2989278 () Bool)

(declare-fun e!1879234 () Bool)

(declare-fun lt!1040080 () Regex!9342)

(assert (=> b!2989278 (= e!1879234 (= (nullable!3013 lt!1040080) (nullable!3013 (reg!9671 r!17423))))))

(declare-fun b!2989279 () Bool)

(declare-fun e!1879236 () Regex!9342)

(assert (=> b!2989279 (= e!1879236 EmptyLang!9342)))

(declare-fun bm!199898 () Bool)

(declare-fun call!199904 () Bool)

(declare-fun call!199903 () Bool)

(assert (=> bm!199898 (= call!199904 call!199903)))

(declare-fun bm!199899 () Bool)

(declare-fun c!491203 () Bool)

(declare-fun call!199906 () Bool)

(declare-fun lt!1040084 () Regex!9342)

(declare-fun lt!1040079 () Regex!9342)

(declare-fun isEmptyExpr!457 (Regex!9342) Bool)

(assert (=> bm!199899 (= call!199906 (isEmptyExpr!457 (ite c!491203 lt!1040079 lt!1040084)))))

(declare-fun b!2989280 () Bool)

(declare-fun e!1879245 () Regex!9342)

(assert (=> b!2989280 (= e!1879245 (Star!9342 lt!1040079))))

(declare-fun b!2989281 () Bool)

(declare-fun e!1879238 () Regex!9342)

(assert (=> b!2989281 (= e!1879236 e!1879238)))

(declare-fun c!491205 () Bool)

(assert (=> b!2989281 (= c!491205 (is-ElementMatch!9342 (reg!9671 r!17423)))))

(declare-fun b!2989282 () Bool)

(declare-fun c!491199 () Bool)

(assert (=> b!2989282 (= c!491199 (is-Union!9342 (reg!9671 r!17423)))))

(declare-fun e!1879244 () Regex!9342)

(declare-fun e!1879243 () Regex!9342)

(assert (=> b!2989282 (= e!1879244 e!1879243)))

(declare-fun b!2989283 () Bool)

(declare-fun c!491201 () Bool)

(declare-fun call!199907 () Bool)

(assert (=> b!2989283 (= c!491201 call!199907)))

(declare-fun e!1879240 () Regex!9342)

(declare-fun e!1879235 () Regex!9342)

(assert (=> b!2989283 (= e!1879240 e!1879235)))

(declare-fun b!2989284 () Bool)

(assert (=> b!2989284 (= e!1879245 EmptyExpr!9342)))

(declare-fun bm!199900 () Bool)

(declare-fun lt!1040082 () Regex!9342)

(declare-fun isEmptyLang!440 (Regex!9342) Bool)

(assert (=> bm!199900 (= call!199903 (isEmptyLang!440 (ite c!491203 lt!1040079 (ite c!491199 lt!1040082 lt!1040084))))))

(declare-fun b!2989285 () Bool)

(declare-fun e!1879239 () Regex!9342)

(assert (=> b!2989285 (= e!1879239 lt!1040084)))

(declare-fun b!2989286 () Bool)

(declare-fun c!491195 () Bool)

(declare-fun e!1879233 () Bool)

(assert (=> b!2989286 (= c!491195 e!1879233)))

(declare-fun res!1232994 () Bool)

(assert (=> b!2989286 (=> res!1232994 e!1879233)))

(assert (=> b!2989286 (= res!1232994 call!199903)))

(declare-fun call!199908 () Regex!9342)

(assert (=> b!2989286 (= lt!1040079 call!199908)))

(assert (=> b!2989286 (= e!1879244 e!1879245)))

(declare-fun b!2989287 () Bool)

(declare-fun e!1879246 () Regex!9342)

(assert (=> b!2989287 (= e!1879246 e!1879239)))

(declare-fun c!491197 () Bool)

(declare-fun lt!1040081 () Regex!9342)

(assert (=> b!2989287 (= c!491197 (isEmptyExpr!457 lt!1040081))))

(declare-fun b!2989288 () Bool)

(declare-fun lt!1040083 () Regex!9342)

(assert (=> b!2989288 (= e!1879235 (Union!9342 lt!1040082 lt!1040083))))

(declare-fun b!2989289 () Bool)

(declare-fun c!491198 () Bool)

(assert (=> b!2989289 (= c!491198 call!199906)))

(declare-fun e!1879237 () Regex!9342)

(assert (=> b!2989289 (= e!1879237 e!1879246)))

(declare-fun bm!199901 () Bool)

(assert (=> bm!199901 (= call!199908 (simplify!333 (ite c!491203 (reg!9671 (reg!9671 r!17423)) (ite c!491199 (regOne!19197 (reg!9671 r!17423)) (regTwo!19196 (reg!9671 r!17423))))))))

(declare-fun b!2989290 () Bool)

(declare-fun e!1879242 () Bool)

(assert (=> b!2989290 (= e!1879242 call!199907)))

(declare-fun b!2989291 () Bool)

(assert (=> b!2989291 (= e!1879239 (Concat!14663 lt!1040084 lt!1040081))))

(declare-fun bm!199902 () Bool)

(declare-fun call!199909 () Regex!9342)

(assert (=> bm!199902 (= call!199909 call!199908)))

(declare-fun b!2989292 () Bool)

(declare-fun e!1879241 () Regex!9342)

(assert (=> b!2989292 (= e!1879241 e!1879244)))

(assert (=> b!2989292 (= c!491203 (is-Star!9342 (reg!9671 r!17423)))))

(declare-fun b!2989293 () Bool)

(declare-fun c!491202 () Bool)

(assert (=> b!2989293 (= c!491202 (is-EmptyExpr!9342 (reg!9671 r!17423)))))

(assert (=> b!2989293 (= e!1879238 e!1879241)))

(declare-fun b!2989294 () Bool)

(assert (=> b!2989294 (= e!1879241 EmptyExpr!9342)))

(declare-fun b!2989295 () Bool)

(assert (=> b!2989295 (= e!1879246 lt!1040081)))

(declare-fun bm!199903 () Bool)

(assert (=> bm!199903 (= call!199907 (isEmptyLang!440 (ite c!491199 lt!1040083 lt!1040081)))))

(declare-fun b!2989296 () Bool)

(assert (=> b!2989296 (= e!1879238 (reg!9671 r!17423))))

(declare-fun bm!199904 () Bool)

(declare-fun call!199905 () Regex!9342)

(assert (=> bm!199904 (= call!199905 (simplify!333 (ite c!491199 (regTwo!19197 (reg!9671 r!17423)) (regOne!19196 (reg!9671 r!17423)))))))

(declare-fun d!844403 () Bool)

(assert (=> d!844403 e!1879234))

(declare-fun res!1232995 () Bool)

(assert (=> d!844403 (=> (not res!1232995) (not e!1879234))))

(assert (=> d!844403 (= res!1232995 (validRegex!4075 lt!1040080))))

(assert (=> d!844403 (= lt!1040080 e!1879236)))

(declare-fun c!491200 () Bool)

(assert (=> d!844403 (= c!491200 (is-EmptyLang!9342 (reg!9671 r!17423)))))

(assert (=> d!844403 (validRegex!4075 (reg!9671 r!17423))))

(assert (=> d!844403 (= (simplify!333 (reg!9671 r!17423)) lt!1040080)))

(declare-fun b!2989297 () Bool)

(assert (=> b!2989297 (= e!1879237 EmptyLang!9342)))

(declare-fun b!2989298 () Bool)

(assert (=> b!2989298 (= e!1879243 e!1879237)))

(assert (=> b!2989298 (= lt!1040084 call!199905)))

(assert (=> b!2989298 (= lt!1040081 call!199909)))

(declare-fun res!1232993 () Bool)

(assert (=> b!2989298 (= res!1232993 call!199904)))

(assert (=> b!2989298 (=> res!1232993 e!1879242)))

(declare-fun c!491196 () Bool)

(assert (=> b!2989298 (= c!491196 e!1879242)))

(declare-fun b!2989299 () Bool)

(assert (=> b!2989299 (= e!1879243 e!1879240)))

(assert (=> b!2989299 (= lt!1040082 call!199909)))

(assert (=> b!2989299 (= lt!1040083 call!199905)))

(declare-fun c!491204 () Bool)

(assert (=> b!2989299 (= c!491204 call!199904)))

(declare-fun b!2989300 () Bool)

(assert (=> b!2989300 (= e!1879240 lt!1040083)))

(declare-fun b!2989301 () Bool)

(assert (=> b!2989301 (= e!1879233 call!199906)))

(declare-fun b!2989302 () Bool)

(assert (=> b!2989302 (= e!1879235 lt!1040082)))

(assert (= (and d!844403 c!491200) b!2989279))

(assert (= (and d!844403 (not c!491200)) b!2989281))

(assert (= (and b!2989281 c!491205) b!2989296))

(assert (= (and b!2989281 (not c!491205)) b!2989293))

(assert (= (and b!2989293 c!491202) b!2989294))

(assert (= (and b!2989293 (not c!491202)) b!2989292))

(assert (= (and b!2989292 c!491203) b!2989286))

(assert (= (and b!2989292 (not c!491203)) b!2989282))

(assert (= (and b!2989286 (not res!1232994)) b!2989301))

(assert (= (and b!2989286 c!491195) b!2989284))

(assert (= (and b!2989286 (not c!491195)) b!2989280))

(assert (= (and b!2989282 c!491199) b!2989299))

(assert (= (and b!2989282 (not c!491199)) b!2989298))

(assert (= (and b!2989299 c!491204) b!2989300))

(assert (= (and b!2989299 (not c!491204)) b!2989283))

(assert (= (and b!2989283 c!491201) b!2989302))

(assert (= (and b!2989283 (not c!491201)) b!2989288))

(assert (= (and b!2989298 (not res!1232993)) b!2989290))

(assert (= (and b!2989298 c!491196) b!2989297))

(assert (= (and b!2989298 (not c!491196)) b!2989289))

(assert (= (and b!2989289 c!491198) b!2989295))

(assert (= (and b!2989289 (not c!491198)) b!2989287))

(assert (= (and b!2989287 c!491197) b!2989285))

(assert (= (and b!2989287 (not c!491197)) b!2989291))

(assert (= (or b!2989299 b!2989298) bm!199902))

(assert (= (or b!2989299 b!2989298) bm!199904))

(assert (= (or b!2989299 b!2989298) bm!199898))

(assert (= (or b!2989283 b!2989290) bm!199903))

(assert (= (or b!2989301 b!2989289) bm!199899))

(assert (= (or b!2989286 bm!199902) bm!199901))

(assert (= (or b!2989286 bm!199898) bm!199900))

(assert (= (and d!844403 res!1232995) b!2989278))

(declare-fun m!3346343 () Bool)

(assert (=> b!2989278 m!3346343))

(assert (=> b!2989278 m!3346215))

(declare-fun m!3346345 () Bool)

(assert (=> bm!199899 m!3346345))

(declare-fun m!3346347 () Bool)

(assert (=> bm!199903 m!3346347))

(declare-fun m!3346349 () Bool)

(assert (=> bm!199900 m!3346349))

(declare-fun m!3346351 () Bool)

(assert (=> bm!199901 m!3346351))

(declare-fun m!3346353 () Bool)

(assert (=> b!2989287 m!3346353))

(declare-fun m!3346355 () Bool)

(assert (=> bm!199904 m!3346355))

(declare-fun m!3346357 () Bool)

(assert (=> d!844403 m!3346357))

(assert (=> d!844403 m!3346227))

(assert (=> b!2988933 d!844403))

(declare-fun d!844409 () Bool)

(declare-fun lt!1040085 () Int)

(assert (=> d!844409 (>= lt!1040085 0)))

(declare-fun e!1879247 () Int)

(assert (=> d!844409 (= lt!1040085 e!1879247)))

(declare-fun c!491206 () Bool)

(assert (=> d!844409 (= c!491206 (is-Nil!35083 s!11993))))

(assert (=> d!844409 (= (size!26492 s!11993) lt!1040085)))

(declare-fun b!2989303 () Bool)

(assert (=> b!2989303 (= e!1879247 0)))

(declare-fun b!2989304 () Bool)

(assert (=> b!2989304 (= e!1879247 (+ 1 (size!26492 (t!234272 s!11993))))))

(assert (= (and d!844409 c!491206) b!2989303))

(assert (= (and d!844409 (not c!491206)) b!2989304))

(declare-fun m!3346359 () Bool)

(assert (=> b!2989304 m!3346359))

(assert (=> b!2988933 d!844409))

(declare-fun b!2989305 () Bool)

(declare-fun e!1879254 () Bool)

(assert (=> b!2989305 (= e!1879254 (= (head!6670 (_1!20133 lt!1039980)) (c!491122 (simplify!333 (reg!9671 r!17423)))))))

(declare-fun d!844411 () Bool)

(declare-fun e!1879250 () Bool)

(assert (=> d!844411 e!1879250))

(declare-fun c!491207 () Bool)

(assert (=> d!844411 (= c!491207 (is-EmptyExpr!9342 (simplify!333 (reg!9671 r!17423))))))

(declare-fun lt!1040086 () Bool)

(declare-fun e!1879253 () Bool)

(assert (=> d!844411 (= lt!1040086 e!1879253)))

(declare-fun c!491208 () Bool)

(assert (=> d!844411 (= c!491208 (isEmpty!19349 (_1!20133 lt!1039980)))))

(assert (=> d!844411 (validRegex!4075 (simplify!333 (reg!9671 r!17423)))))

(assert (=> d!844411 (= (matchR!4224 (simplify!333 (reg!9671 r!17423)) (_1!20133 lt!1039980)) lt!1040086)))

(declare-fun bm!199905 () Bool)

(declare-fun call!199910 () Bool)

(assert (=> bm!199905 (= call!199910 (isEmpty!19349 (_1!20133 lt!1039980)))))

(declare-fun b!2989306 () Bool)

(assert (=> b!2989306 (= e!1879250 (= lt!1040086 call!199910))))

(declare-fun b!2989307 () Bool)

(declare-fun e!1879251 () Bool)

(assert (=> b!2989307 (= e!1879250 e!1879251)))

(declare-fun c!491209 () Bool)

(assert (=> b!2989307 (= c!491209 (is-EmptyLang!9342 (simplify!333 (reg!9671 r!17423))))))

(declare-fun b!2989308 () Bool)

(declare-fun e!1879252 () Bool)

(declare-fun e!1879248 () Bool)

(assert (=> b!2989308 (= e!1879252 e!1879248)))

(declare-fun res!1232999 () Bool)

(assert (=> b!2989308 (=> (not res!1232999) (not e!1879248))))

(assert (=> b!2989308 (= res!1232999 (not lt!1040086))))

(declare-fun b!2989309 () Bool)

(declare-fun res!1233003 () Bool)

(declare-fun e!1879249 () Bool)

(assert (=> b!2989309 (=> res!1233003 e!1879249)))

(assert (=> b!2989309 (= res!1233003 (not (isEmpty!19349 (tail!4896 (_1!20133 lt!1039980)))))))

(declare-fun b!2989310 () Bool)

(assert (=> b!2989310 (= e!1879253 (nullable!3013 (simplify!333 (reg!9671 r!17423))))))

(declare-fun b!2989311 () Bool)

(assert (=> b!2989311 (= e!1879248 e!1879249)))

(declare-fun res!1233002 () Bool)

(assert (=> b!2989311 (=> res!1233002 e!1879249)))

(assert (=> b!2989311 (= res!1233002 call!199910)))

(declare-fun b!2989312 () Bool)

(assert (=> b!2989312 (= e!1879251 (not lt!1040086))))

(declare-fun b!2989313 () Bool)

(assert (=> b!2989313 (= e!1879253 (matchR!4224 (derivativeStep!2611 (simplify!333 (reg!9671 r!17423)) (head!6670 (_1!20133 lt!1039980))) (tail!4896 (_1!20133 lt!1039980))))))

(declare-fun b!2989314 () Bool)

(declare-fun res!1232997 () Bool)

(assert (=> b!2989314 (=> (not res!1232997) (not e!1879254))))

(assert (=> b!2989314 (= res!1232997 (isEmpty!19349 (tail!4896 (_1!20133 lt!1039980))))))

(declare-fun b!2989315 () Bool)

(assert (=> b!2989315 (= e!1879249 (not (= (head!6670 (_1!20133 lt!1039980)) (c!491122 (simplify!333 (reg!9671 r!17423))))))))

(declare-fun b!2989316 () Bool)

(declare-fun res!1232996 () Bool)

(assert (=> b!2989316 (=> (not res!1232996) (not e!1879254))))

(assert (=> b!2989316 (= res!1232996 (not call!199910))))

(declare-fun b!2989317 () Bool)

(declare-fun res!1233001 () Bool)

(assert (=> b!2989317 (=> res!1233001 e!1879252)))

(assert (=> b!2989317 (= res!1233001 e!1879254)))

(declare-fun res!1233000 () Bool)

(assert (=> b!2989317 (=> (not res!1233000) (not e!1879254))))

(assert (=> b!2989317 (= res!1233000 lt!1040086)))

(declare-fun b!2989318 () Bool)

(declare-fun res!1232998 () Bool)

(assert (=> b!2989318 (=> res!1232998 e!1879252)))

(assert (=> b!2989318 (= res!1232998 (not (is-ElementMatch!9342 (simplify!333 (reg!9671 r!17423)))))))

(assert (=> b!2989318 (= e!1879251 e!1879252)))

(assert (= (and d!844411 c!491208) b!2989310))

(assert (= (and d!844411 (not c!491208)) b!2989313))

(assert (= (and d!844411 c!491207) b!2989306))

(assert (= (and d!844411 (not c!491207)) b!2989307))

(assert (= (and b!2989307 c!491209) b!2989312))

(assert (= (and b!2989307 (not c!491209)) b!2989318))

(assert (= (and b!2989318 (not res!1232998)) b!2989317))

(assert (= (and b!2989317 res!1233000) b!2989316))

(assert (= (and b!2989316 res!1232996) b!2989314))

(assert (= (and b!2989314 res!1232997) b!2989305))

(assert (= (and b!2989317 (not res!1233001)) b!2989308))

(assert (= (and b!2989308 res!1232999) b!2989311))

(assert (= (and b!2989311 (not res!1233002)) b!2989309))

(assert (= (and b!2989309 (not res!1233003)) b!2989315))

(assert (= (or b!2989306 b!2989311 b!2989316) bm!199905))

(assert (=> b!2989310 m!3346145))

(declare-fun m!3346361 () Bool)

(assert (=> b!2989310 m!3346361))

(assert (=> b!2989313 m!3346217))

(assert (=> b!2989313 m!3346145))

(assert (=> b!2989313 m!3346217))

(declare-fun m!3346363 () Bool)

(assert (=> b!2989313 m!3346363))

(assert (=> b!2989313 m!3346221))

(assert (=> b!2989313 m!3346363))

(assert (=> b!2989313 m!3346221))

(declare-fun m!3346365 () Bool)

(assert (=> b!2989313 m!3346365))

(assert (=> d!844411 m!3346225))

(assert (=> d!844411 m!3346145))

(declare-fun m!3346367 () Bool)

(assert (=> d!844411 m!3346367))

(assert (=> b!2989305 m!3346217))

(assert (=> bm!199905 m!3346225))

(assert (=> b!2989314 m!3346221))

(assert (=> b!2989314 m!3346221))

(assert (=> b!2989314 m!3346229))

(assert (=> b!2989315 m!3346217))

(assert (=> b!2989309 m!3346221))

(assert (=> b!2989309 m!3346221))

(assert (=> b!2989309 m!3346229))

(assert (=> b!2988933 d!844411))

(declare-fun b!2989329 () Bool)

(declare-fun res!1233008 () Bool)

(declare-fun e!1879259 () Bool)

(assert (=> b!2989329 (=> (not res!1233008) (not e!1879259))))

(declare-fun lt!1040089 () List!35207)

(assert (=> b!2989329 (= res!1233008 (= (size!26492 lt!1040089) (+ (size!26492 (_1!20133 lt!1039980)) (size!26492 (_2!20133 lt!1039980)))))))

(declare-fun b!2989327 () Bool)

(declare-fun e!1879260 () List!35207)

(assert (=> b!2989327 (= e!1879260 (_2!20133 lt!1039980))))

(declare-fun b!2989328 () Bool)

(assert (=> b!2989328 (= e!1879260 (Cons!35083 (h!40503 (_1!20133 lt!1039980)) (++!8386 (t!234272 (_1!20133 lt!1039980)) (_2!20133 lt!1039980))))))

(declare-fun d!844413 () Bool)

(assert (=> d!844413 e!1879259))

(declare-fun res!1233009 () Bool)

(assert (=> d!844413 (=> (not res!1233009) (not e!1879259))))

(declare-fun content!4769 (List!35207) (Set C!18870))

(assert (=> d!844413 (= res!1233009 (= (content!4769 lt!1040089) (set.union (content!4769 (_1!20133 lt!1039980)) (content!4769 (_2!20133 lt!1039980)))))))

(assert (=> d!844413 (= lt!1040089 e!1879260)))

(declare-fun c!491212 () Bool)

(assert (=> d!844413 (= c!491212 (is-Nil!35083 (_1!20133 lt!1039980)))))

(assert (=> d!844413 (= (++!8386 (_1!20133 lt!1039980) (_2!20133 lt!1039980)) lt!1040089)))

(declare-fun b!2989330 () Bool)

(assert (=> b!2989330 (= e!1879259 (or (not (= (_2!20133 lt!1039980) Nil!35083)) (= lt!1040089 (_1!20133 lt!1039980))))))

(assert (= (and d!844413 c!491212) b!2989327))

(assert (= (and d!844413 (not c!491212)) b!2989328))

(assert (= (and d!844413 res!1233009) b!2989329))

(assert (= (and b!2989329 res!1233008) b!2989330))

(declare-fun m!3346369 () Bool)

(assert (=> b!2989329 m!3346369))

(assert (=> b!2989329 m!3346115))

(assert (=> b!2989329 m!3346149))

(declare-fun m!3346371 () Bool)

(assert (=> b!2989328 m!3346371))

(declare-fun m!3346373 () Bool)

(assert (=> d!844413 m!3346373))

(declare-fun m!3346375 () Bool)

(assert (=> d!844413 m!3346375))

(declare-fun m!3346377 () Bool)

(assert (=> d!844413 m!3346377))

(assert (=> b!2988930 d!844413))

(declare-fun d!844415 () Bool)

(assert (=> d!844415 (= (isEmpty!19349 s!11993) (is-Nil!35083 s!11993))))

(assert (=> b!2988935 d!844415))

(declare-fun b!2989335 () Bool)

(declare-fun e!1879263 () Bool)

(declare-fun tp!950644 () Bool)

(assert (=> b!2989335 (= e!1879263 (and tp_is_empty!16247 tp!950644))))

(assert (=> b!2988931 (= tp!950622 e!1879263)))

(assert (= (and b!2988931 (is-Cons!35083 (t!234272 s!11993))) b!2989335))

(declare-fun b!2989348 () Bool)

(declare-fun e!1879266 () Bool)

(declare-fun tp!950659 () Bool)

(assert (=> b!2989348 (= e!1879266 tp!950659)))

(declare-fun b!2989346 () Bool)

(assert (=> b!2989346 (= e!1879266 tp_is_empty!16247)))

(declare-fun b!2989347 () Bool)

(declare-fun tp!950658 () Bool)

(declare-fun tp!950657 () Bool)

(assert (=> b!2989347 (= e!1879266 (and tp!950658 tp!950657))))

(declare-fun b!2989349 () Bool)

(declare-fun tp!950655 () Bool)

(declare-fun tp!950656 () Bool)

(assert (=> b!2989349 (= e!1879266 (and tp!950655 tp!950656))))

(assert (=> b!2988936 (= tp!950620 e!1879266)))

(assert (= (and b!2988936 (is-ElementMatch!9342 (regOne!19196 r!17423))) b!2989346))

(assert (= (and b!2988936 (is-Concat!14663 (regOne!19196 r!17423))) b!2989347))

(assert (= (and b!2988936 (is-Star!9342 (regOne!19196 r!17423))) b!2989348))

(assert (= (and b!2988936 (is-Union!9342 (regOne!19196 r!17423))) b!2989349))

(declare-fun b!2989352 () Bool)

(declare-fun e!1879267 () Bool)

(declare-fun tp!950664 () Bool)

(assert (=> b!2989352 (= e!1879267 tp!950664)))

(declare-fun b!2989350 () Bool)

(assert (=> b!2989350 (= e!1879267 tp_is_empty!16247)))

(declare-fun b!2989351 () Bool)

(declare-fun tp!950663 () Bool)

(declare-fun tp!950662 () Bool)

(assert (=> b!2989351 (= e!1879267 (and tp!950663 tp!950662))))

(declare-fun b!2989353 () Bool)

(declare-fun tp!950660 () Bool)

(declare-fun tp!950661 () Bool)

(assert (=> b!2989353 (= e!1879267 (and tp!950660 tp!950661))))

(assert (=> b!2988936 (= tp!950621 e!1879267)))

(assert (= (and b!2988936 (is-ElementMatch!9342 (regTwo!19196 r!17423))) b!2989350))

(assert (= (and b!2988936 (is-Concat!14663 (regTwo!19196 r!17423))) b!2989351))

(assert (= (and b!2988936 (is-Star!9342 (regTwo!19196 r!17423))) b!2989352))

(assert (= (and b!2988936 (is-Union!9342 (regTwo!19196 r!17423))) b!2989353))

(declare-fun b!2989356 () Bool)

(declare-fun e!1879268 () Bool)

(declare-fun tp!950669 () Bool)

(assert (=> b!2989356 (= e!1879268 tp!950669)))

(declare-fun b!2989354 () Bool)

(assert (=> b!2989354 (= e!1879268 tp_is_empty!16247)))

(declare-fun b!2989355 () Bool)

(declare-fun tp!950668 () Bool)

(declare-fun tp!950667 () Bool)

(assert (=> b!2989355 (= e!1879268 (and tp!950668 tp!950667))))

(declare-fun b!2989357 () Bool)

(declare-fun tp!950665 () Bool)

(declare-fun tp!950666 () Bool)

(assert (=> b!2989357 (= e!1879268 (and tp!950665 tp!950666))))

(assert (=> b!2988927 (= tp!950618 e!1879268)))

(assert (= (and b!2988927 (is-ElementMatch!9342 (reg!9671 r!17423))) b!2989354))

(assert (= (and b!2988927 (is-Concat!14663 (reg!9671 r!17423))) b!2989355))

(assert (= (and b!2988927 (is-Star!9342 (reg!9671 r!17423))) b!2989356))

(assert (= (and b!2988927 (is-Union!9342 (reg!9671 r!17423))) b!2989357))

(declare-fun b!2989360 () Bool)

(declare-fun e!1879269 () Bool)

(declare-fun tp!950674 () Bool)

(assert (=> b!2989360 (= e!1879269 tp!950674)))

(declare-fun b!2989358 () Bool)

(assert (=> b!2989358 (= e!1879269 tp_is_empty!16247)))

(declare-fun b!2989359 () Bool)

(declare-fun tp!950673 () Bool)

(declare-fun tp!950672 () Bool)

(assert (=> b!2989359 (= e!1879269 (and tp!950673 tp!950672))))

(declare-fun b!2989361 () Bool)

(declare-fun tp!950670 () Bool)

(declare-fun tp!950671 () Bool)

(assert (=> b!2989361 (= e!1879269 (and tp!950670 tp!950671))))

(assert (=> b!2988929 (= tp!950619 e!1879269)))

(assert (= (and b!2988929 (is-ElementMatch!9342 (regOne!19197 r!17423))) b!2989358))

(assert (= (and b!2988929 (is-Concat!14663 (regOne!19197 r!17423))) b!2989359))

(assert (= (and b!2988929 (is-Star!9342 (regOne!19197 r!17423))) b!2989360))

(assert (= (and b!2988929 (is-Union!9342 (regOne!19197 r!17423))) b!2989361))

(declare-fun b!2989364 () Bool)

(declare-fun e!1879270 () Bool)

(declare-fun tp!950679 () Bool)

(assert (=> b!2989364 (= e!1879270 tp!950679)))

(declare-fun b!2989362 () Bool)

(assert (=> b!2989362 (= e!1879270 tp_is_empty!16247)))

(declare-fun b!2989363 () Bool)

(declare-fun tp!950678 () Bool)

(declare-fun tp!950677 () Bool)

(assert (=> b!2989363 (= e!1879270 (and tp!950678 tp!950677))))

(declare-fun b!2989365 () Bool)

(declare-fun tp!950675 () Bool)

(declare-fun tp!950676 () Bool)

(assert (=> b!2989365 (= e!1879270 (and tp!950675 tp!950676))))

(assert (=> b!2988929 (= tp!950623 e!1879270)))

(assert (= (and b!2988929 (is-ElementMatch!9342 (regTwo!19197 r!17423))) b!2989362))

(assert (= (and b!2988929 (is-Concat!14663 (regTwo!19197 r!17423))) b!2989363))

(assert (= (and b!2988929 (is-Star!9342 (regTwo!19197 r!17423))) b!2989364))

(assert (= (and b!2988929 (is-Union!9342 (regTwo!19197 r!17423))) b!2989365))

(push 1)

(assert (not d!844365))

(assert (not b!2989309))

(assert (not bm!199901))

(assert (not b!2989335))

(assert (not bm!199883))

(assert (not d!844413))

(assert (not b!2989314))

(assert (not d!844395))

(assert (not bm!199881))

(assert (not bm!199904))

(assert (not b!2989310))

(assert (not b!2989138))

(assert (not b!2989048))

(assert (not d!844397))

(assert (not b!2989278))

(assert (not b!2989040))

(assert (not bm!199903))

(assert (not b!2989357))

(assert (not b!2989036))

(assert (not b!2989223))

(assert (not b!2989030))

(assert (not b!2989044))

(assert (not b!2989313))

(assert (not b!2989363))

(assert (not b!2989134))

(assert (not b!2989352))

(assert (not b!2989050))

(assert (not b!2989359))

(assert (not bm!199900))

(assert (not b!2989328))

(assert (not b!2989361))

(assert (not b!2989139))

(assert (not b!2989217))

(assert (not b!2989287))

(assert (not b!2989351))

(assert (not d!844385))

(assert (not b!2989213))

(assert (not b!2989212))

(assert (not bm!199905))

(assert (not b!2989140))

(assert (not bm!199867))

(assert (not bm!199866))

(assert (not bm!199899))

(assert (not b!2989218))

(assert (not b!2989216))

(assert tp_is_empty!16247)

(assert (not b!2989035))

(assert (not d!844403))

(assert (not b!2989135))

(assert (not b!2989365))

(assert (not b!2989315))

(assert (not b!2989208))

(assert (not bm!199876))

(assert (not b!2989360))

(assert (not b!2989155))

(assert (not bm!199882))

(assert (not b!2989076))

(assert (not d!844411))

(assert (not d!844379))

(assert (not d!844371))

(assert (not d!844401))

(assert (not b!2989356))

(assert (not b!2989031))

(assert (not b!2989353))

(assert (not b!2989355))

(assert (not b!2989364))

(assert (not b!2989049))

(assert (not b!2989305))

(assert (not d!844383))

(assert (not b!2989201))

(assert (not b!2989347))

(assert (not d!844381))

(assert (not b!2989034))

(assert (not b!2989045))

(assert (not d!844373))

(assert (not b!2989206))

(assert (not d!844359))

(assert (not bm!199874))

(assert (not b!2989348))

(assert (not b!2989026))

(assert (not b!2989304))

(assert (not b!2989137))

(assert (not b!2989349))

(assert (not b!2989329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

