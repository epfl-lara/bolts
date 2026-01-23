; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294612 () Bool)

(assert start!294612)

(declare-fun b!3108663 () Bool)

(declare-fun e!1942059 () Bool)

(declare-fun tp!976034 () Bool)

(declare-fun tp!976037 () Bool)

(assert (=> b!3108663 (= e!1942059 (and tp!976034 tp!976037))))

(declare-fun b!3108664 () Bool)

(declare-fun e!1942063 () Bool)

(declare-datatypes ((C!19360 0))(
  ( (C!19361 (val!11716 Int)) )
))
(declare-datatypes ((Regex!9587 0))(
  ( (ElementMatch!9587 (c!520095 C!19360)) (Concat!14908 (regOne!19686 Regex!9587) (regTwo!19686 Regex!9587)) (EmptyExpr!9587) (Star!9587 (reg!9916 Regex!9587)) (EmptyLang!9587) (Union!9587 (regOne!19687 Regex!9587) (regTwo!19687 Regex!9587)) )
))
(declare-fun lt!1057078 () Regex!9587)

(declare-datatypes ((List!35452 0))(
  ( (Nil!35328) (Cons!35328 (h!40748 C!19360) (t!234517 List!35452)) )
))
(declare-fun s!11993 () List!35452)

(declare-fun matchR!4469 (Regex!9587 List!35452) Bool)

(assert (=> b!3108664 (= e!1942063 (matchR!4469 lt!1057078 s!11993))))

(declare-fun b!3108665 () Bool)

(declare-fun res!1272824 () Bool)

(declare-fun e!1942062 () Bool)

(assert (=> b!3108665 (=> res!1272824 e!1942062)))

(declare-fun isEmptyLang!638 (Regex!9587) Bool)

(assert (=> b!3108665 (= res!1272824 (isEmptyLang!638 lt!1057078))))

(declare-fun b!3108666 () Bool)

(declare-fun e!1942061 () Bool)

(declare-fun tp_is_empty!16737 () Bool)

(declare-fun tp!976033 () Bool)

(assert (=> b!3108666 (= e!1942061 (and tp_is_empty!16737 tp!976033))))

(declare-fun b!3108667 () Bool)

(declare-fun e!1942064 () Bool)

(assert (=> b!3108667 (= e!1942064 e!1942062)))

(declare-fun res!1272823 () Bool)

(assert (=> b!3108667 (=> res!1272823 e!1942062)))

(declare-fun lt!1057077 () Regex!9587)

(assert (=> b!3108667 (= res!1272823 (isEmptyLang!638 lt!1057077))))

(declare-fun r!17423 () Regex!9587)

(declare-fun simplify!542 (Regex!9587) Regex!9587)

(assert (=> b!3108667 (= lt!1057078 (simplify!542 (regTwo!19687 r!17423)))))

(assert (=> b!3108667 (= lt!1057077 (simplify!542 (regOne!19687 r!17423)))))

(declare-fun res!1272822 () Bool)

(declare-fun e!1942065 () Bool)

(assert (=> start!294612 (=> (not res!1272822) (not e!1942065))))

(declare-fun validRegex!4320 (Regex!9587) Bool)

(assert (=> start!294612 (= res!1272822 (validRegex!4320 r!17423))))

(assert (=> start!294612 e!1942065))

(assert (=> start!294612 e!1942059))

(assert (=> start!294612 e!1942061))

(declare-fun b!3108668 () Bool)

(assert (=> b!3108668 (= e!1942059 tp_is_empty!16737)))

(declare-fun b!3108669 () Bool)

(declare-fun e!1942060 () Bool)

(assert (=> b!3108669 (= e!1942062 e!1942060)))

(declare-fun res!1272821 () Bool)

(assert (=> b!3108669 (=> res!1272821 e!1942060)))

(declare-fun lt!1057074 () Bool)

(assert (=> b!3108669 (= res!1272821 (not lt!1057074))))

(assert (=> b!3108669 e!1942063))

(declare-fun res!1272818 () Bool)

(assert (=> b!3108669 (=> res!1272818 e!1942063)))

(assert (=> b!3108669 (= res!1272818 lt!1057074)))

(assert (=> b!3108669 (= lt!1057074 (matchR!4469 lt!1057077 s!11993))))

(declare-datatypes ((Unit!49613 0))(
  ( (Unit!49614) )
))
(declare-fun lt!1057073 () Unit!49613)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!318 (Regex!9587 Regex!9587 List!35452) Unit!49613)

(assert (=> b!3108669 (= lt!1057073 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!318 lt!1057077 lt!1057078 s!11993))))

(declare-fun lt!1057075 () Int)

(declare-fun b!3108670 () Bool)

(declare-fun lt!1057071 () Int)

(declare-fun regexDepth!113 (Regex!9587) Int)

(assert (=> b!3108670 (= e!1942060 (< (+ lt!1057075 lt!1057071) (+ (regexDepth!113 r!17423) lt!1057071)))))

(declare-fun size!26579 (List!35452) Int)

(assert (=> b!3108670 (= lt!1057071 (size!26579 s!11993))))

(assert (=> b!3108670 (= lt!1057075 (regexDepth!113 (regOne!19687 r!17423)))))

(declare-fun b!3108671 () Bool)

(declare-fun tp!976036 () Bool)

(assert (=> b!3108671 (= e!1942059 tp!976036)))

(declare-fun b!3108672 () Bool)

(declare-fun res!1272819 () Bool)

(assert (=> b!3108672 (=> res!1272819 e!1942062)))

(assert (=> b!3108672 (= res!1272819 (not (matchR!4469 (Union!9587 lt!1057077 lt!1057078) s!11993)))))

(declare-fun b!3108673 () Bool)

(declare-fun tp!976035 () Bool)

(declare-fun tp!976032 () Bool)

(assert (=> b!3108673 (= e!1942059 (and tp!976035 tp!976032))))

(declare-fun b!3108674 () Bool)

(assert (=> b!3108674 (= e!1942065 (not e!1942064))))

(declare-fun res!1272817 () Bool)

(assert (=> b!3108674 (=> res!1272817 e!1942064)))

(declare-fun lt!1057072 () Bool)

(get-info :version)

(assert (=> b!3108674 (= res!1272817 (or lt!1057072 ((_ is Concat!14908) r!17423) (not ((_ is Union!9587) r!17423))))))

(declare-fun matchRSpec!1724 (Regex!9587 List!35452) Bool)

(assert (=> b!3108674 (= lt!1057072 (matchRSpec!1724 r!17423 s!11993))))

(assert (=> b!3108674 (= lt!1057072 (matchR!4469 r!17423 s!11993))))

(declare-fun lt!1057076 () Unit!49613)

(declare-fun mainMatchTheorem!1724 (Regex!9587 List!35452) Unit!49613)

(assert (=> b!3108674 (= lt!1057076 (mainMatchTheorem!1724 r!17423 s!11993))))

(declare-fun b!3108675 () Bool)

(declare-fun res!1272820 () Bool)

(assert (=> b!3108675 (=> res!1272820 e!1942060)))

(assert (=> b!3108675 (= res!1272820 (not (validRegex!4320 (regOne!19687 r!17423))))))

(assert (= (and start!294612 res!1272822) b!3108674))

(assert (= (and b!3108674 (not res!1272817)) b!3108667))

(assert (= (and b!3108667 (not res!1272823)) b!3108665))

(assert (= (and b!3108665 (not res!1272824)) b!3108672))

(assert (= (and b!3108672 (not res!1272819)) b!3108669))

(assert (= (and b!3108669 (not res!1272818)) b!3108664))

(assert (= (and b!3108669 (not res!1272821)) b!3108675))

(assert (= (and b!3108675 (not res!1272820)) b!3108670))

(assert (= (and start!294612 ((_ is ElementMatch!9587) r!17423)) b!3108668))

(assert (= (and start!294612 ((_ is Concat!14908) r!17423)) b!3108663))

(assert (= (and start!294612 ((_ is Star!9587) r!17423)) b!3108671))

(assert (= (and start!294612 ((_ is Union!9587) r!17423)) b!3108673))

(assert (= (and start!294612 ((_ is Cons!35328) s!11993)) b!3108666))

(declare-fun m!3403837 () Bool)

(assert (=> b!3108672 m!3403837))

(declare-fun m!3403839 () Bool)

(assert (=> b!3108674 m!3403839))

(declare-fun m!3403841 () Bool)

(assert (=> b!3108674 m!3403841))

(declare-fun m!3403843 () Bool)

(assert (=> b!3108674 m!3403843))

(declare-fun m!3403845 () Bool)

(assert (=> b!3108665 m!3403845))

(declare-fun m!3403847 () Bool)

(assert (=> b!3108675 m!3403847))

(declare-fun m!3403849 () Bool)

(assert (=> b!3108669 m!3403849))

(declare-fun m!3403851 () Bool)

(assert (=> b!3108669 m!3403851))

(declare-fun m!3403853 () Bool)

(assert (=> b!3108664 m!3403853))

(declare-fun m!3403855 () Bool)

(assert (=> b!3108667 m!3403855))

(declare-fun m!3403857 () Bool)

(assert (=> b!3108667 m!3403857))

(declare-fun m!3403859 () Bool)

(assert (=> b!3108667 m!3403859))

(declare-fun m!3403861 () Bool)

(assert (=> start!294612 m!3403861))

(declare-fun m!3403863 () Bool)

(assert (=> b!3108670 m!3403863))

(declare-fun m!3403865 () Bool)

(assert (=> b!3108670 m!3403865))

(declare-fun m!3403867 () Bool)

(assert (=> b!3108670 m!3403867))

(check-sat tp_is_empty!16737 (not b!3108663) (not b!3108672) (not b!3108665) (not b!3108674) (not b!3108673) (not b!3108675) (not b!3108670) (not b!3108666) (not b!3108667) (not b!3108671) (not b!3108669) (not b!3108664) (not start!294612))
(check-sat)
(get-model)

(declare-fun b!3108745 () Bool)

(declare-fun e!1942115 () Bool)

(declare-fun e!1942110 () Bool)

(assert (=> b!3108745 (= e!1942115 e!1942110)))

(declare-fun res!1272860 () Bool)

(assert (=> b!3108745 (=> (not res!1272860) (not e!1942110))))

(declare-fun lt!1057083 () Bool)

(assert (=> b!3108745 (= res!1272860 (not lt!1057083))))

(declare-fun b!3108746 () Bool)

(declare-fun e!1942113 () Bool)

(declare-fun e!1942109 () Bool)

(assert (=> b!3108746 (= e!1942113 e!1942109)))

(declare-fun c!520114 () Bool)

(assert (=> b!3108746 (= c!520114 ((_ is EmptyLang!9587) (Union!9587 lt!1057077 lt!1057078)))))

(declare-fun e!1942111 () Bool)

(declare-fun b!3108747 () Bool)

(declare-fun head!6883 (List!35452) C!19360)

(assert (=> b!3108747 (= e!1942111 (not (= (head!6883 s!11993) (c!520095 (Union!9587 lt!1057077 lt!1057078)))))))

(declare-fun b!3108748 () Bool)

(declare-fun res!1272858 () Bool)

(declare-fun e!1942114 () Bool)

(assert (=> b!3108748 (=> (not res!1272858) (not e!1942114))))

(declare-fun isEmpty!19675 (List!35452) Bool)

(declare-fun tail!5109 (List!35452) List!35452)

(assert (=> b!3108748 (= res!1272858 (isEmpty!19675 (tail!5109 s!11993)))))

(declare-fun b!3108749 () Bool)

(declare-fun call!219874 () Bool)

(assert (=> b!3108749 (= e!1942113 (= lt!1057083 call!219874))))

(declare-fun b!3108750 () Bool)

(declare-fun res!1272861 () Bool)

(assert (=> b!3108750 (=> res!1272861 e!1942115)))

(assert (=> b!3108750 (= res!1272861 (not ((_ is ElementMatch!9587) (Union!9587 lt!1057077 lt!1057078))))))

(assert (=> b!3108750 (= e!1942109 e!1942115)))

(declare-fun b!3108751 () Bool)

(declare-fun res!1272862 () Bool)

(assert (=> b!3108751 (=> (not res!1272862) (not e!1942114))))

(assert (=> b!3108751 (= res!1272862 (not call!219874))))

(declare-fun d!861579 () Bool)

(assert (=> d!861579 e!1942113))

(declare-fun c!520115 () Bool)

(assert (=> d!861579 (= c!520115 ((_ is EmptyExpr!9587) (Union!9587 lt!1057077 lt!1057078)))))

(declare-fun e!1942112 () Bool)

(assert (=> d!861579 (= lt!1057083 e!1942112)))

(declare-fun c!520116 () Bool)

(assert (=> d!861579 (= c!520116 (isEmpty!19675 s!11993))))

(assert (=> d!861579 (validRegex!4320 (Union!9587 lt!1057077 lt!1057078))))

(assert (=> d!861579 (= (matchR!4469 (Union!9587 lt!1057077 lt!1057078) s!11993) lt!1057083)))

(declare-fun b!3108752 () Bool)

(declare-fun nullable!3229 (Regex!9587) Bool)

(assert (=> b!3108752 (= e!1942112 (nullable!3229 (Union!9587 lt!1057077 lt!1057078)))))

(declare-fun b!3108753 () Bool)

(declare-fun res!1272863 () Bool)

(assert (=> b!3108753 (=> res!1272863 e!1942111)))

(assert (=> b!3108753 (= res!1272863 (not (isEmpty!19675 (tail!5109 s!11993))))))

(declare-fun b!3108754 () Bool)

(assert (=> b!3108754 (= e!1942110 e!1942111)))

(declare-fun res!1272867 () Bool)

(assert (=> b!3108754 (=> res!1272867 e!1942111)))

(assert (=> b!3108754 (= res!1272867 call!219874)))

(declare-fun b!3108756 () Bool)

(declare-fun res!1272859 () Bool)

(assert (=> b!3108756 (=> res!1272859 e!1942115)))

(assert (=> b!3108756 (= res!1272859 e!1942114)))

(declare-fun res!1272864 () Bool)

(assert (=> b!3108756 (=> (not res!1272864) (not e!1942114))))

(assert (=> b!3108756 (= res!1272864 lt!1057083)))

(declare-fun b!3108758 () Bool)

(assert (=> b!3108758 (= e!1942114 (= (head!6883 s!11993) (c!520095 (Union!9587 lt!1057077 lt!1057078))))))

(declare-fun b!3108759 () Bool)

(declare-fun derivativeStep!2824 (Regex!9587 C!19360) Regex!9587)

(assert (=> b!3108759 (= e!1942112 (matchR!4469 (derivativeStep!2824 (Union!9587 lt!1057077 lt!1057078) (head!6883 s!11993)) (tail!5109 s!11993)))))

(declare-fun b!3108760 () Bool)

(assert (=> b!3108760 (= e!1942109 (not lt!1057083))))

(declare-fun bm!219869 () Bool)

(assert (=> bm!219869 (= call!219874 (isEmpty!19675 s!11993))))

(assert (= (and d!861579 c!520116) b!3108752))

(assert (= (and d!861579 (not c!520116)) b!3108759))

(assert (= (and d!861579 c!520115) b!3108749))

(assert (= (and d!861579 (not c!520115)) b!3108746))

(assert (= (and b!3108746 c!520114) b!3108760))

(assert (= (and b!3108746 (not c!520114)) b!3108750))

(assert (= (and b!3108750 (not res!1272861)) b!3108756))

(assert (= (and b!3108756 res!1272864) b!3108751))

(assert (= (and b!3108751 res!1272862) b!3108748))

(assert (= (and b!3108748 res!1272858) b!3108758))

(assert (= (and b!3108756 (not res!1272859)) b!3108745))

(assert (= (and b!3108745 res!1272860) b!3108754))

(assert (= (and b!3108754 (not res!1272867)) b!3108753))

(assert (= (and b!3108753 (not res!1272863)) b!3108747))

(assert (= (or b!3108749 b!3108751 b!3108754) bm!219869))

(declare-fun m!3403875 () Bool)

(assert (=> d!861579 m!3403875))

(declare-fun m!3403877 () Bool)

(assert (=> d!861579 m!3403877))

(declare-fun m!3403879 () Bool)

(assert (=> b!3108759 m!3403879))

(assert (=> b!3108759 m!3403879))

(declare-fun m!3403881 () Bool)

(assert (=> b!3108759 m!3403881))

(declare-fun m!3403883 () Bool)

(assert (=> b!3108759 m!3403883))

(assert (=> b!3108759 m!3403881))

(assert (=> b!3108759 m!3403883))

(declare-fun m!3403885 () Bool)

(assert (=> b!3108759 m!3403885))

(assert (=> b!3108748 m!3403883))

(assert (=> b!3108748 m!3403883))

(declare-fun m!3403887 () Bool)

(assert (=> b!3108748 m!3403887))

(assert (=> b!3108747 m!3403879))

(assert (=> bm!219869 m!3403875))

(declare-fun m!3403889 () Bool)

(assert (=> b!3108752 m!3403889))

(assert (=> b!3108758 m!3403879))

(assert (=> b!3108753 m!3403883))

(assert (=> b!3108753 m!3403883))

(assert (=> b!3108753 m!3403887))

(assert (=> b!3108672 d!861579))

(declare-fun d!861583 () Bool)

(assert (=> d!861583 (= (isEmptyLang!638 lt!1057077) ((_ is EmptyLang!9587) lt!1057077))))

(assert (=> b!3108667 d!861583))

(declare-fun b!3108874 () Bool)

(declare-fun e!1942185 () Regex!9587)

(declare-fun lt!1057103 () Regex!9587)

(assert (=> b!3108874 (= e!1942185 lt!1057103)))

(declare-fun b!3108875 () Bool)

(declare-fun e!1942192 () Regex!9587)

(assert (=> b!3108875 (= e!1942192 EmptyLang!9587)))

(declare-fun b!3108876 () Bool)

(declare-fun e!1942186 () Regex!9587)

(assert (=> b!3108876 (= e!1942186 e!1942185)))

(declare-fun lt!1057100 () Regex!9587)

(declare-fun call!219900 () Regex!9587)

(assert (=> b!3108876 (= lt!1057100 call!219900)))

(declare-fun call!219899 () Regex!9587)

(assert (=> b!3108876 (= lt!1057103 call!219899)))

(declare-fun c!520153 () Bool)

(declare-fun call!219898 () Bool)

(assert (=> b!3108876 (= c!520153 call!219898)))

(declare-fun b!3108877 () Bool)

(declare-fun e!1942193 () Regex!9587)

(declare-fun e!1942196 () Regex!9587)

(assert (=> b!3108877 (= e!1942193 e!1942196)))

(declare-fun c!520161 () Bool)

(declare-fun lt!1057102 () Regex!9587)

(declare-fun isEmptyExpr!639 (Regex!9587) Bool)

(assert (=> b!3108877 (= c!520161 (isEmptyExpr!639 lt!1057102))))

(declare-fun b!3108878 () Bool)

(assert (=> b!3108878 (= e!1942193 lt!1057102)))

(declare-fun lt!1057105 () Regex!9587)

(declare-fun lt!1057101 () Regex!9587)

(declare-fun bm!219890 () Bool)

(declare-fun c!520157 () Bool)

(declare-fun call!219895 () Bool)

(assert (=> bm!219890 (= call!219895 (isEmptyExpr!639 (ite c!520157 lt!1057105 lt!1057101)))))

(declare-fun b!3108879 () Bool)

(declare-fun e!1942191 () Regex!9587)

(assert (=> b!3108879 (= e!1942191 EmptyExpr!9587)))

(declare-fun b!3108880 () Bool)

(declare-fun e!1942190 () Regex!9587)

(assert (=> b!3108880 (= e!1942190 EmptyExpr!9587)))

(declare-fun b!3108881 () Bool)

(assert (=> b!3108881 (= e!1942196 (Concat!14908 lt!1057101 lt!1057102))))

(declare-fun d!861585 () Bool)

(declare-fun e!1942187 () Bool)

(assert (=> d!861585 e!1942187))

(declare-fun res!1272913 () Bool)

(assert (=> d!861585 (=> (not res!1272913) (not e!1942187))))

(declare-fun lt!1057104 () Regex!9587)

(assert (=> d!861585 (= res!1272913 (validRegex!4320 lt!1057104))))

(declare-fun e!1942188 () Regex!9587)

(assert (=> d!861585 (= lt!1057104 e!1942188)))

(declare-fun c!520160 () Bool)

(assert (=> d!861585 (= c!520160 ((_ is EmptyLang!9587) (regTwo!19687 r!17423)))))

(assert (=> d!861585 (validRegex!4320 (regTwo!19687 r!17423))))

(assert (=> d!861585 (= (simplify!542 (regTwo!19687 r!17423)) lt!1057104)))

(declare-fun b!3108882 () Bool)

(declare-fun e!1942195 () Bool)

(assert (=> b!3108882 (= e!1942195 call!219895)))

(declare-fun b!3108883 () Bool)

(declare-fun c!520154 () Bool)

(assert (=> b!3108883 (= c!520154 ((_ is Union!9587) (regTwo!19687 r!17423)))))

(declare-fun e!1942189 () Regex!9587)

(assert (=> b!3108883 (= e!1942189 e!1942186)))

(declare-fun b!3108884 () Bool)

(assert (=> b!3108884 (= e!1942186 e!1942192)))

(assert (=> b!3108884 (= lt!1057101 call!219899)))

(assert (=> b!3108884 (= lt!1057102 call!219900)))

(declare-fun res!1272912 () Bool)

(declare-fun call!219901 () Bool)

(assert (=> b!3108884 (= res!1272912 call!219901)))

(declare-fun e!1942197 () Bool)

(assert (=> b!3108884 (=> res!1272912 e!1942197)))

(declare-fun c!520158 () Bool)

(assert (=> b!3108884 (= c!520158 e!1942197)))

(declare-fun b!3108885 () Bool)

(assert (=> b!3108885 (= e!1942190 e!1942189)))

(assert (=> b!3108885 (= c!520157 ((_ is Star!9587) (regTwo!19687 r!17423)))))

(declare-fun b!3108886 () Bool)

(declare-fun e!1942194 () Regex!9587)

(assert (=> b!3108886 (= e!1942194 (Union!9587 lt!1057100 lt!1057103))))

(declare-fun b!3108887 () Bool)

(declare-fun c!520152 () Bool)

(assert (=> b!3108887 (= c!520152 call!219895)))

(assert (=> b!3108887 (= e!1942192 e!1942193)))

(declare-fun b!3108888 () Bool)

(declare-fun e!1942184 () Regex!9587)

(assert (=> b!3108888 (= e!1942184 (regTwo!19687 r!17423))))

(declare-fun bm!219891 () Bool)

(assert (=> bm!219891 (= call!219901 (isEmptyLang!638 (ite c!520154 lt!1057103 lt!1057101)))))

(declare-fun b!3108889 () Bool)

(declare-fun c!520159 () Bool)

(assert (=> b!3108889 (= c!520159 ((_ is EmptyExpr!9587) (regTwo!19687 r!17423)))))

(assert (=> b!3108889 (= e!1942184 e!1942190)))

(declare-fun b!3108890 () Bool)

(assert (=> b!3108890 (= e!1942197 call!219898)))

(declare-fun bm!219892 () Bool)

(assert (=> bm!219892 (= call!219900 (simplify!542 (ite c!520154 (regOne!19687 (regTwo!19687 r!17423)) (regTwo!19686 (regTwo!19687 r!17423)))))))

(declare-fun b!3108891 () Bool)

(assert (=> b!3108891 (= e!1942187 (= (nullable!3229 lt!1057104) (nullable!3229 (regTwo!19687 r!17423))))))

(declare-fun b!3108892 () Bool)

(assert (=> b!3108892 (= e!1942188 e!1942184)))

(declare-fun c!520162 () Bool)

(assert (=> b!3108892 (= c!520162 ((_ is ElementMatch!9587) (regTwo!19687 r!17423)))))

(declare-fun b!3108893 () Bool)

(assert (=> b!3108893 (= e!1942196 lt!1057101)))

(declare-fun b!3108894 () Bool)

(declare-fun c!520155 () Bool)

(assert (=> b!3108894 (= c!520155 e!1942195)))

(declare-fun res!1272911 () Bool)

(assert (=> b!3108894 (=> res!1272911 e!1942195)))

(declare-fun call!219897 () Bool)

(assert (=> b!3108894 (= res!1272911 call!219897)))

(declare-fun call!219896 () Regex!9587)

(assert (=> b!3108894 (= lt!1057105 call!219896)))

(assert (=> b!3108894 (= e!1942189 e!1942191)))

(declare-fun b!3108895 () Bool)

(assert (=> b!3108895 (= e!1942188 EmptyLang!9587)))

(declare-fun bm!219893 () Bool)

(assert (=> bm!219893 (= call!219897 (isEmptyLang!638 (ite c!520157 lt!1057105 (ite c!520154 lt!1057100 lt!1057102))))))

(declare-fun bm!219894 () Bool)

(assert (=> bm!219894 (= call!219898 call!219897)))

(declare-fun bm!219895 () Bool)

(assert (=> bm!219895 (= call!219899 call!219896)))

(declare-fun b!3108896 () Bool)

(assert (=> b!3108896 (= e!1942194 lt!1057100)))

(declare-fun bm!219896 () Bool)

(assert (=> bm!219896 (= call!219896 (simplify!542 (ite c!520157 (reg!9916 (regTwo!19687 r!17423)) (ite c!520154 (regTwo!19687 (regTwo!19687 r!17423)) (regOne!19686 (regTwo!19687 r!17423))))))))

(declare-fun b!3108897 () Bool)

(declare-fun c!520156 () Bool)

(assert (=> b!3108897 (= c!520156 call!219901)))

(assert (=> b!3108897 (= e!1942185 e!1942194)))

(declare-fun b!3108898 () Bool)

(assert (=> b!3108898 (= e!1942191 (Star!9587 lt!1057105))))

(assert (= (and d!861585 c!520160) b!3108895))

(assert (= (and d!861585 (not c!520160)) b!3108892))

(assert (= (and b!3108892 c!520162) b!3108888))

(assert (= (and b!3108892 (not c!520162)) b!3108889))

(assert (= (and b!3108889 c!520159) b!3108880))

(assert (= (and b!3108889 (not c!520159)) b!3108885))

(assert (= (and b!3108885 c!520157) b!3108894))

(assert (= (and b!3108885 (not c!520157)) b!3108883))

(assert (= (and b!3108894 (not res!1272911)) b!3108882))

(assert (= (and b!3108894 c!520155) b!3108879))

(assert (= (and b!3108894 (not c!520155)) b!3108898))

(assert (= (and b!3108883 c!520154) b!3108876))

(assert (= (and b!3108883 (not c!520154)) b!3108884))

(assert (= (and b!3108876 c!520153) b!3108874))

(assert (= (and b!3108876 (not c!520153)) b!3108897))

(assert (= (and b!3108897 c!520156) b!3108896))

(assert (= (and b!3108897 (not c!520156)) b!3108886))

(assert (= (and b!3108884 (not res!1272912)) b!3108890))

(assert (= (and b!3108884 c!520158) b!3108875))

(assert (= (and b!3108884 (not c!520158)) b!3108887))

(assert (= (and b!3108887 c!520152) b!3108878))

(assert (= (and b!3108887 (not c!520152)) b!3108877))

(assert (= (and b!3108877 c!520161) b!3108893))

(assert (= (and b!3108877 (not c!520161)) b!3108881))

(assert (= (or b!3108876 b!3108884) bm!219892))

(assert (= (or b!3108876 b!3108884) bm!219895))

(assert (= (or b!3108897 b!3108884) bm!219891))

(assert (= (or b!3108876 b!3108890) bm!219894))

(assert (= (or b!3108882 b!3108887) bm!219890))

(assert (= (or b!3108894 bm!219895) bm!219896))

(assert (= (or b!3108894 bm!219894) bm!219893))

(assert (= (and d!861585 res!1272913) b!3108891))

(declare-fun m!3403917 () Bool)

(assert (=> b!3108891 m!3403917))

(declare-fun m!3403919 () Bool)

(assert (=> b!3108891 m!3403919))

(declare-fun m!3403921 () Bool)

(assert (=> b!3108877 m!3403921))

(declare-fun m!3403923 () Bool)

(assert (=> d!861585 m!3403923))

(declare-fun m!3403925 () Bool)

(assert (=> d!861585 m!3403925))

(declare-fun m!3403927 () Bool)

(assert (=> bm!219896 m!3403927))

(declare-fun m!3403929 () Bool)

(assert (=> bm!219892 m!3403929))

(declare-fun m!3403931 () Bool)

(assert (=> bm!219891 m!3403931))

(declare-fun m!3403933 () Bool)

(assert (=> bm!219893 m!3403933))

(declare-fun m!3403935 () Bool)

(assert (=> bm!219890 m!3403935))

(assert (=> b!3108667 d!861585))

(declare-fun b!3108899 () Bool)

(declare-fun e!1942199 () Regex!9587)

(declare-fun lt!1057109 () Regex!9587)

(assert (=> b!3108899 (= e!1942199 lt!1057109)))

(declare-fun b!3108900 () Bool)

(declare-fun e!1942206 () Regex!9587)

(assert (=> b!3108900 (= e!1942206 EmptyLang!9587)))

(declare-fun b!3108901 () Bool)

(declare-fun e!1942200 () Regex!9587)

(assert (=> b!3108901 (= e!1942200 e!1942199)))

(declare-fun lt!1057106 () Regex!9587)

(declare-fun call!219907 () Regex!9587)

(assert (=> b!3108901 (= lt!1057106 call!219907)))

(declare-fun call!219906 () Regex!9587)

(assert (=> b!3108901 (= lt!1057109 call!219906)))

(declare-fun c!520164 () Bool)

(declare-fun call!219905 () Bool)

(assert (=> b!3108901 (= c!520164 call!219905)))

(declare-fun b!3108902 () Bool)

(declare-fun e!1942207 () Regex!9587)

(declare-fun e!1942210 () Regex!9587)

(assert (=> b!3108902 (= e!1942207 e!1942210)))

(declare-fun c!520172 () Bool)

(declare-fun lt!1057108 () Regex!9587)

(assert (=> b!3108902 (= c!520172 (isEmptyExpr!639 lt!1057108))))

(declare-fun b!3108903 () Bool)

(assert (=> b!3108903 (= e!1942207 lt!1057108)))

(declare-fun c!520168 () Bool)

(declare-fun call!219902 () Bool)

(declare-fun bm!219897 () Bool)

(declare-fun lt!1057107 () Regex!9587)

(declare-fun lt!1057111 () Regex!9587)

(assert (=> bm!219897 (= call!219902 (isEmptyExpr!639 (ite c!520168 lt!1057111 lt!1057107)))))

(declare-fun b!3108904 () Bool)

(declare-fun e!1942205 () Regex!9587)

(assert (=> b!3108904 (= e!1942205 EmptyExpr!9587)))

(declare-fun b!3108905 () Bool)

(declare-fun e!1942204 () Regex!9587)

(assert (=> b!3108905 (= e!1942204 EmptyExpr!9587)))

(declare-fun b!3108906 () Bool)

(assert (=> b!3108906 (= e!1942210 (Concat!14908 lt!1057107 lt!1057108))))

(declare-fun d!861593 () Bool)

(declare-fun e!1942201 () Bool)

(assert (=> d!861593 e!1942201))

(declare-fun res!1272916 () Bool)

(assert (=> d!861593 (=> (not res!1272916) (not e!1942201))))

(declare-fun lt!1057110 () Regex!9587)

(assert (=> d!861593 (= res!1272916 (validRegex!4320 lt!1057110))))

(declare-fun e!1942202 () Regex!9587)

(assert (=> d!861593 (= lt!1057110 e!1942202)))

(declare-fun c!520171 () Bool)

(assert (=> d!861593 (= c!520171 ((_ is EmptyLang!9587) (regOne!19687 r!17423)))))

(assert (=> d!861593 (validRegex!4320 (regOne!19687 r!17423))))

(assert (=> d!861593 (= (simplify!542 (regOne!19687 r!17423)) lt!1057110)))

(declare-fun b!3108907 () Bool)

(declare-fun e!1942209 () Bool)

(assert (=> b!3108907 (= e!1942209 call!219902)))

(declare-fun b!3108908 () Bool)

(declare-fun c!520165 () Bool)

(assert (=> b!3108908 (= c!520165 ((_ is Union!9587) (regOne!19687 r!17423)))))

(declare-fun e!1942203 () Regex!9587)

(assert (=> b!3108908 (= e!1942203 e!1942200)))

(declare-fun b!3108909 () Bool)

(assert (=> b!3108909 (= e!1942200 e!1942206)))

(assert (=> b!3108909 (= lt!1057107 call!219906)))

(assert (=> b!3108909 (= lt!1057108 call!219907)))

(declare-fun res!1272915 () Bool)

(declare-fun call!219908 () Bool)

(assert (=> b!3108909 (= res!1272915 call!219908)))

(declare-fun e!1942211 () Bool)

(assert (=> b!3108909 (=> res!1272915 e!1942211)))

(declare-fun c!520169 () Bool)

(assert (=> b!3108909 (= c!520169 e!1942211)))

(declare-fun b!3108910 () Bool)

(assert (=> b!3108910 (= e!1942204 e!1942203)))

(assert (=> b!3108910 (= c!520168 ((_ is Star!9587) (regOne!19687 r!17423)))))

(declare-fun b!3108911 () Bool)

(declare-fun e!1942208 () Regex!9587)

(assert (=> b!3108911 (= e!1942208 (Union!9587 lt!1057106 lt!1057109))))

(declare-fun b!3108912 () Bool)

(declare-fun c!520163 () Bool)

(assert (=> b!3108912 (= c!520163 call!219902)))

(assert (=> b!3108912 (= e!1942206 e!1942207)))

(declare-fun b!3108913 () Bool)

(declare-fun e!1942198 () Regex!9587)

(assert (=> b!3108913 (= e!1942198 (regOne!19687 r!17423))))

(declare-fun bm!219898 () Bool)

(assert (=> bm!219898 (= call!219908 (isEmptyLang!638 (ite c!520165 lt!1057109 lt!1057107)))))

(declare-fun b!3108914 () Bool)

(declare-fun c!520170 () Bool)

(assert (=> b!3108914 (= c!520170 ((_ is EmptyExpr!9587) (regOne!19687 r!17423)))))

(assert (=> b!3108914 (= e!1942198 e!1942204)))

(declare-fun b!3108915 () Bool)

(assert (=> b!3108915 (= e!1942211 call!219905)))

(declare-fun bm!219899 () Bool)

(assert (=> bm!219899 (= call!219907 (simplify!542 (ite c!520165 (regOne!19687 (regOne!19687 r!17423)) (regTwo!19686 (regOne!19687 r!17423)))))))

(declare-fun b!3108916 () Bool)

(assert (=> b!3108916 (= e!1942201 (= (nullable!3229 lt!1057110) (nullable!3229 (regOne!19687 r!17423))))))

(declare-fun b!3108917 () Bool)

(assert (=> b!3108917 (= e!1942202 e!1942198)))

(declare-fun c!520173 () Bool)

(assert (=> b!3108917 (= c!520173 ((_ is ElementMatch!9587) (regOne!19687 r!17423)))))

(declare-fun b!3108918 () Bool)

(assert (=> b!3108918 (= e!1942210 lt!1057107)))

(declare-fun b!3108919 () Bool)

(declare-fun c!520166 () Bool)

(assert (=> b!3108919 (= c!520166 e!1942209)))

(declare-fun res!1272914 () Bool)

(assert (=> b!3108919 (=> res!1272914 e!1942209)))

(declare-fun call!219904 () Bool)

(assert (=> b!3108919 (= res!1272914 call!219904)))

(declare-fun call!219903 () Regex!9587)

(assert (=> b!3108919 (= lt!1057111 call!219903)))

(assert (=> b!3108919 (= e!1942203 e!1942205)))

(declare-fun b!3108920 () Bool)

(assert (=> b!3108920 (= e!1942202 EmptyLang!9587)))

(declare-fun bm!219900 () Bool)

(assert (=> bm!219900 (= call!219904 (isEmptyLang!638 (ite c!520168 lt!1057111 (ite c!520165 lt!1057106 lt!1057108))))))

(declare-fun bm!219901 () Bool)

(assert (=> bm!219901 (= call!219905 call!219904)))

(declare-fun bm!219902 () Bool)

(assert (=> bm!219902 (= call!219906 call!219903)))

(declare-fun b!3108921 () Bool)

(assert (=> b!3108921 (= e!1942208 lt!1057106)))

(declare-fun bm!219903 () Bool)

(assert (=> bm!219903 (= call!219903 (simplify!542 (ite c!520168 (reg!9916 (regOne!19687 r!17423)) (ite c!520165 (regTwo!19687 (regOne!19687 r!17423)) (regOne!19686 (regOne!19687 r!17423))))))))

(declare-fun b!3108922 () Bool)

(declare-fun c!520167 () Bool)

(assert (=> b!3108922 (= c!520167 call!219908)))

(assert (=> b!3108922 (= e!1942199 e!1942208)))

(declare-fun b!3108923 () Bool)

(assert (=> b!3108923 (= e!1942205 (Star!9587 lt!1057111))))

(assert (= (and d!861593 c!520171) b!3108920))

(assert (= (and d!861593 (not c!520171)) b!3108917))

(assert (= (and b!3108917 c!520173) b!3108913))

(assert (= (and b!3108917 (not c!520173)) b!3108914))

(assert (= (and b!3108914 c!520170) b!3108905))

(assert (= (and b!3108914 (not c!520170)) b!3108910))

(assert (= (and b!3108910 c!520168) b!3108919))

(assert (= (and b!3108910 (not c!520168)) b!3108908))

(assert (= (and b!3108919 (not res!1272914)) b!3108907))

(assert (= (and b!3108919 c!520166) b!3108904))

(assert (= (and b!3108919 (not c!520166)) b!3108923))

(assert (= (and b!3108908 c!520165) b!3108901))

(assert (= (and b!3108908 (not c!520165)) b!3108909))

(assert (= (and b!3108901 c!520164) b!3108899))

(assert (= (and b!3108901 (not c!520164)) b!3108922))

(assert (= (and b!3108922 c!520167) b!3108921))

(assert (= (and b!3108922 (not c!520167)) b!3108911))

(assert (= (and b!3108909 (not res!1272915)) b!3108915))

(assert (= (and b!3108909 c!520169) b!3108900))

(assert (= (and b!3108909 (not c!520169)) b!3108912))

(assert (= (and b!3108912 c!520163) b!3108903))

(assert (= (and b!3108912 (not c!520163)) b!3108902))

(assert (= (and b!3108902 c!520172) b!3108918))

(assert (= (and b!3108902 (not c!520172)) b!3108906))

(assert (= (or b!3108901 b!3108909) bm!219899))

(assert (= (or b!3108901 b!3108909) bm!219902))

(assert (= (or b!3108922 b!3108909) bm!219898))

(assert (= (or b!3108901 b!3108915) bm!219901))

(assert (= (or b!3108907 b!3108912) bm!219897))

(assert (= (or b!3108919 bm!219902) bm!219903))

(assert (= (or b!3108919 bm!219901) bm!219900))

(assert (= (and d!861593 res!1272916) b!3108916))

(declare-fun m!3403937 () Bool)

(assert (=> b!3108916 m!3403937))

(declare-fun m!3403939 () Bool)

(assert (=> b!3108916 m!3403939))

(declare-fun m!3403941 () Bool)

(assert (=> b!3108902 m!3403941))

(declare-fun m!3403943 () Bool)

(assert (=> d!861593 m!3403943))

(assert (=> d!861593 m!3403847))

(declare-fun m!3403945 () Bool)

(assert (=> bm!219903 m!3403945))

(declare-fun m!3403947 () Bool)

(assert (=> bm!219899 m!3403947))

(declare-fun m!3403949 () Bool)

(assert (=> bm!219898 m!3403949))

(declare-fun m!3403951 () Bool)

(assert (=> bm!219900 m!3403951))

(declare-fun m!3403953 () Bool)

(assert (=> bm!219897 m!3403953))

(assert (=> b!3108667 d!861593))

(declare-fun b!3108924 () Bool)

(declare-fun e!1942218 () Bool)

(declare-fun e!1942213 () Bool)

(assert (=> b!3108924 (= e!1942218 e!1942213)))

(declare-fun res!1272919 () Bool)

(assert (=> b!3108924 (=> (not res!1272919) (not e!1942213))))

(declare-fun lt!1057112 () Bool)

(assert (=> b!3108924 (= res!1272919 (not lt!1057112))))

(declare-fun b!3108925 () Bool)

(declare-fun e!1942216 () Bool)

(declare-fun e!1942212 () Bool)

(assert (=> b!3108925 (= e!1942216 e!1942212)))

(declare-fun c!520174 () Bool)

(assert (=> b!3108925 (= c!520174 ((_ is EmptyLang!9587) lt!1057077))))

(declare-fun b!3108926 () Bool)

(declare-fun e!1942214 () Bool)

(assert (=> b!3108926 (= e!1942214 (not (= (head!6883 s!11993) (c!520095 lt!1057077))))))

(declare-fun b!3108927 () Bool)

(declare-fun res!1272917 () Bool)

(declare-fun e!1942217 () Bool)

(assert (=> b!3108927 (=> (not res!1272917) (not e!1942217))))

(assert (=> b!3108927 (= res!1272917 (isEmpty!19675 (tail!5109 s!11993)))))

(declare-fun b!3108928 () Bool)

(declare-fun call!219909 () Bool)

(assert (=> b!3108928 (= e!1942216 (= lt!1057112 call!219909))))

(declare-fun b!3108929 () Bool)

(declare-fun res!1272920 () Bool)

(assert (=> b!3108929 (=> res!1272920 e!1942218)))

(assert (=> b!3108929 (= res!1272920 (not ((_ is ElementMatch!9587) lt!1057077)))))

(assert (=> b!3108929 (= e!1942212 e!1942218)))

(declare-fun b!3108930 () Bool)

(declare-fun res!1272921 () Bool)

(assert (=> b!3108930 (=> (not res!1272921) (not e!1942217))))

(assert (=> b!3108930 (= res!1272921 (not call!219909))))

(declare-fun d!861595 () Bool)

(assert (=> d!861595 e!1942216))

(declare-fun c!520175 () Bool)

(assert (=> d!861595 (= c!520175 ((_ is EmptyExpr!9587) lt!1057077))))

(declare-fun e!1942215 () Bool)

(assert (=> d!861595 (= lt!1057112 e!1942215)))

(declare-fun c!520176 () Bool)

(assert (=> d!861595 (= c!520176 (isEmpty!19675 s!11993))))

(assert (=> d!861595 (validRegex!4320 lt!1057077)))

(assert (=> d!861595 (= (matchR!4469 lt!1057077 s!11993) lt!1057112)))

(declare-fun b!3108931 () Bool)

(assert (=> b!3108931 (= e!1942215 (nullable!3229 lt!1057077))))

(declare-fun b!3108932 () Bool)

(declare-fun res!1272922 () Bool)

(assert (=> b!3108932 (=> res!1272922 e!1942214)))

(assert (=> b!3108932 (= res!1272922 (not (isEmpty!19675 (tail!5109 s!11993))))))

(declare-fun b!3108933 () Bool)

(assert (=> b!3108933 (= e!1942213 e!1942214)))

(declare-fun res!1272924 () Bool)

(assert (=> b!3108933 (=> res!1272924 e!1942214)))

(assert (=> b!3108933 (= res!1272924 call!219909)))

(declare-fun b!3108934 () Bool)

(declare-fun res!1272918 () Bool)

(assert (=> b!3108934 (=> res!1272918 e!1942218)))

(assert (=> b!3108934 (= res!1272918 e!1942217)))

(declare-fun res!1272923 () Bool)

(assert (=> b!3108934 (=> (not res!1272923) (not e!1942217))))

(assert (=> b!3108934 (= res!1272923 lt!1057112)))

(declare-fun b!3108935 () Bool)

(assert (=> b!3108935 (= e!1942217 (= (head!6883 s!11993) (c!520095 lt!1057077)))))

(declare-fun b!3108936 () Bool)

(assert (=> b!3108936 (= e!1942215 (matchR!4469 (derivativeStep!2824 lt!1057077 (head!6883 s!11993)) (tail!5109 s!11993)))))

(declare-fun b!3108937 () Bool)

(assert (=> b!3108937 (= e!1942212 (not lt!1057112))))

(declare-fun bm!219904 () Bool)

(assert (=> bm!219904 (= call!219909 (isEmpty!19675 s!11993))))

(assert (= (and d!861595 c!520176) b!3108931))

(assert (= (and d!861595 (not c!520176)) b!3108936))

(assert (= (and d!861595 c!520175) b!3108928))

(assert (= (and d!861595 (not c!520175)) b!3108925))

(assert (= (and b!3108925 c!520174) b!3108937))

(assert (= (and b!3108925 (not c!520174)) b!3108929))

(assert (= (and b!3108929 (not res!1272920)) b!3108934))

(assert (= (and b!3108934 res!1272923) b!3108930))

(assert (= (and b!3108930 res!1272921) b!3108927))

(assert (= (and b!3108927 res!1272917) b!3108935))

(assert (= (and b!3108934 (not res!1272918)) b!3108924))

(assert (= (and b!3108924 res!1272919) b!3108933))

(assert (= (and b!3108933 (not res!1272924)) b!3108932))

(assert (= (and b!3108932 (not res!1272922)) b!3108926))

(assert (= (or b!3108928 b!3108930 b!3108933) bm!219904))

(assert (=> d!861595 m!3403875))

(declare-fun m!3403955 () Bool)

(assert (=> d!861595 m!3403955))

(assert (=> b!3108936 m!3403879))

(assert (=> b!3108936 m!3403879))

(declare-fun m!3403957 () Bool)

(assert (=> b!3108936 m!3403957))

(assert (=> b!3108936 m!3403883))

(assert (=> b!3108936 m!3403957))

(assert (=> b!3108936 m!3403883))

(declare-fun m!3403959 () Bool)

(assert (=> b!3108936 m!3403959))

(assert (=> b!3108927 m!3403883))

(assert (=> b!3108927 m!3403883))

(assert (=> b!3108927 m!3403887))

(assert (=> b!3108926 m!3403879))

(assert (=> bm!219904 m!3403875))

(declare-fun m!3403961 () Bool)

(assert (=> b!3108931 m!3403961))

(assert (=> b!3108935 m!3403879))

(assert (=> b!3108932 m!3403883))

(assert (=> b!3108932 m!3403883))

(assert (=> b!3108932 m!3403887))

(assert (=> b!3108669 d!861595))

(declare-fun d!861597 () Bool)

(declare-fun e!1942223 () Bool)

(assert (=> d!861597 e!1942223))

(declare-fun res!1272929 () Bool)

(assert (=> d!861597 (=> res!1272929 e!1942223)))

(assert (=> d!861597 (= res!1272929 (matchR!4469 lt!1057077 s!11993))))

(declare-fun lt!1057115 () Unit!49613)

(declare-fun choose!18387 (Regex!9587 Regex!9587 List!35452) Unit!49613)

(assert (=> d!861597 (= lt!1057115 (choose!18387 lt!1057077 lt!1057078 s!11993))))

(declare-fun e!1942224 () Bool)

(assert (=> d!861597 e!1942224))

(declare-fun res!1272930 () Bool)

(assert (=> d!861597 (=> (not res!1272930) (not e!1942224))))

(assert (=> d!861597 (= res!1272930 (validRegex!4320 lt!1057077))))

(assert (=> d!861597 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!318 lt!1057077 lt!1057078 s!11993) lt!1057115)))

(declare-fun b!3108942 () Bool)

(assert (=> b!3108942 (= e!1942224 (validRegex!4320 lt!1057078))))

(declare-fun b!3108943 () Bool)

(assert (=> b!3108943 (= e!1942223 (matchR!4469 lt!1057078 s!11993))))

(assert (= (and d!861597 res!1272930) b!3108942))

(assert (= (and d!861597 (not res!1272929)) b!3108943))

(assert (=> d!861597 m!3403849))

(declare-fun m!3403963 () Bool)

(assert (=> d!861597 m!3403963))

(assert (=> d!861597 m!3403955))

(declare-fun m!3403965 () Bool)

(assert (=> b!3108942 m!3403965))

(assert (=> b!3108943 m!3403853))

(assert (=> b!3108669 d!861597))

(declare-fun b!3108944 () Bool)

(declare-fun e!1942231 () Bool)

(declare-fun e!1942226 () Bool)

(assert (=> b!3108944 (= e!1942231 e!1942226)))

(declare-fun res!1272933 () Bool)

(assert (=> b!3108944 (=> (not res!1272933) (not e!1942226))))

(declare-fun lt!1057116 () Bool)

(assert (=> b!3108944 (= res!1272933 (not lt!1057116))))

(declare-fun b!3108945 () Bool)

(declare-fun e!1942229 () Bool)

(declare-fun e!1942225 () Bool)

(assert (=> b!3108945 (= e!1942229 e!1942225)))

(declare-fun c!520177 () Bool)

(assert (=> b!3108945 (= c!520177 ((_ is EmptyLang!9587) lt!1057078))))

(declare-fun b!3108946 () Bool)

(declare-fun e!1942227 () Bool)

(assert (=> b!3108946 (= e!1942227 (not (= (head!6883 s!11993) (c!520095 lt!1057078))))))

(declare-fun b!3108947 () Bool)

(declare-fun res!1272931 () Bool)

(declare-fun e!1942230 () Bool)

(assert (=> b!3108947 (=> (not res!1272931) (not e!1942230))))

(assert (=> b!3108947 (= res!1272931 (isEmpty!19675 (tail!5109 s!11993)))))

(declare-fun b!3108948 () Bool)

(declare-fun call!219910 () Bool)

(assert (=> b!3108948 (= e!1942229 (= lt!1057116 call!219910))))

(declare-fun b!3108949 () Bool)

(declare-fun res!1272934 () Bool)

(assert (=> b!3108949 (=> res!1272934 e!1942231)))

(assert (=> b!3108949 (= res!1272934 (not ((_ is ElementMatch!9587) lt!1057078)))))

(assert (=> b!3108949 (= e!1942225 e!1942231)))

(declare-fun b!3108950 () Bool)

(declare-fun res!1272935 () Bool)

(assert (=> b!3108950 (=> (not res!1272935) (not e!1942230))))

(assert (=> b!3108950 (= res!1272935 (not call!219910))))

(declare-fun d!861599 () Bool)

(assert (=> d!861599 e!1942229))

(declare-fun c!520178 () Bool)

(assert (=> d!861599 (= c!520178 ((_ is EmptyExpr!9587) lt!1057078))))

(declare-fun e!1942228 () Bool)

(assert (=> d!861599 (= lt!1057116 e!1942228)))

(declare-fun c!520179 () Bool)

(assert (=> d!861599 (= c!520179 (isEmpty!19675 s!11993))))

(assert (=> d!861599 (validRegex!4320 lt!1057078)))

(assert (=> d!861599 (= (matchR!4469 lt!1057078 s!11993) lt!1057116)))

(declare-fun b!3108951 () Bool)

(assert (=> b!3108951 (= e!1942228 (nullable!3229 lt!1057078))))

(declare-fun b!3108952 () Bool)

(declare-fun res!1272936 () Bool)

(assert (=> b!3108952 (=> res!1272936 e!1942227)))

(assert (=> b!3108952 (= res!1272936 (not (isEmpty!19675 (tail!5109 s!11993))))))

(declare-fun b!3108953 () Bool)

(assert (=> b!3108953 (= e!1942226 e!1942227)))

(declare-fun res!1272938 () Bool)

(assert (=> b!3108953 (=> res!1272938 e!1942227)))

(assert (=> b!3108953 (= res!1272938 call!219910)))

(declare-fun b!3108954 () Bool)

(declare-fun res!1272932 () Bool)

(assert (=> b!3108954 (=> res!1272932 e!1942231)))

(assert (=> b!3108954 (= res!1272932 e!1942230)))

(declare-fun res!1272937 () Bool)

(assert (=> b!3108954 (=> (not res!1272937) (not e!1942230))))

(assert (=> b!3108954 (= res!1272937 lt!1057116)))

(declare-fun b!3108955 () Bool)

(assert (=> b!3108955 (= e!1942230 (= (head!6883 s!11993) (c!520095 lt!1057078)))))

(declare-fun b!3108956 () Bool)

(assert (=> b!3108956 (= e!1942228 (matchR!4469 (derivativeStep!2824 lt!1057078 (head!6883 s!11993)) (tail!5109 s!11993)))))

(declare-fun b!3108957 () Bool)

(assert (=> b!3108957 (= e!1942225 (not lt!1057116))))

(declare-fun bm!219905 () Bool)

(assert (=> bm!219905 (= call!219910 (isEmpty!19675 s!11993))))

(assert (= (and d!861599 c!520179) b!3108951))

(assert (= (and d!861599 (not c!520179)) b!3108956))

(assert (= (and d!861599 c!520178) b!3108948))

(assert (= (and d!861599 (not c!520178)) b!3108945))

(assert (= (and b!3108945 c!520177) b!3108957))

(assert (= (and b!3108945 (not c!520177)) b!3108949))

(assert (= (and b!3108949 (not res!1272934)) b!3108954))

(assert (= (and b!3108954 res!1272937) b!3108950))

(assert (= (and b!3108950 res!1272935) b!3108947))

(assert (= (and b!3108947 res!1272931) b!3108955))

(assert (= (and b!3108954 (not res!1272932)) b!3108944))

(assert (= (and b!3108944 res!1272933) b!3108953))

(assert (= (and b!3108953 (not res!1272938)) b!3108952))

(assert (= (and b!3108952 (not res!1272936)) b!3108946))

(assert (= (or b!3108948 b!3108950 b!3108953) bm!219905))

(assert (=> d!861599 m!3403875))

(assert (=> d!861599 m!3403965))

(assert (=> b!3108956 m!3403879))

(assert (=> b!3108956 m!3403879))

(declare-fun m!3403967 () Bool)

(assert (=> b!3108956 m!3403967))

(assert (=> b!3108956 m!3403883))

(assert (=> b!3108956 m!3403967))

(assert (=> b!3108956 m!3403883))

(declare-fun m!3403969 () Bool)

(assert (=> b!3108956 m!3403969))

(assert (=> b!3108947 m!3403883))

(assert (=> b!3108947 m!3403883))

(assert (=> b!3108947 m!3403887))

(assert (=> b!3108946 m!3403879))

(assert (=> bm!219905 m!3403875))

(declare-fun m!3403971 () Bool)

(assert (=> b!3108951 m!3403971))

(assert (=> b!3108955 m!3403879))

(assert (=> b!3108952 m!3403883))

(assert (=> b!3108952 m!3403883))

(assert (=> b!3108952 m!3403887))

(assert (=> b!3108664 d!861599))

(declare-fun b!3109268 () Bool)

(assert (=> b!3109268 true))

(assert (=> b!3109268 true))

(declare-fun bs!535772 () Bool)

(declare-fun b!3109271 () Bool)

(assert (= bs!535772 (and b!3109271 b!3109268)))

(declare-fun lambda!115024 () Int)

(declare-fun lambda!115023 () Int)

(assert (=> bs!535772 (not (= lambda!115024 lambda!115023))))

(assert (=> b!3109271 true))

(assert (=> b!3109271 true))

(declare-fun b!3109267 () Bool)

(declare-fun e!1942392 () Bool)

(assert (=> b!3109267 (= e!1942392 (= s!11993 (Cons!35328 (c!520095 r!17423) Nil!35328)))))

(declare-fun e!1942393 () Bool)

(declare-fun call!219980 () Bool)

(assert (=> b!3109268 (= e!1942393 call!219980)))

(declare-fun b!3109269 () Bool)

(declare-fun e!1942395 () Bool)

(declare-fun e!1942396 () Bool)

(assert (=> b!3109269 (= e!1942395 e!1942396)))

(declare-fun res!1273016 () Bool)

(assert (=> b!3109269 (= res!1273016 (not ((_ is EmptyLang!9587) r!17423)))))

(assert (=> b!3109269 (=> (not res!1273016) (not e!1942396))))

(declare-fun b!3109270 () Bool)

(declare-fun e!1942394 () Bool)

(declare-fun e!1942397 () Bool)

(assert (=> b!3109270 (= e!1942394 e!1942397)))

(declare-fun res!1273017 () Bool)

(assert (=> b!3109270 (= res!1273017 (matchRSpec!1724 (regOne!19687 r!17423) s!11993))))

(assert (=> b!3109270 (=> res!1273017 e!1942397)))

(declare-fun e!1942391 () Bool)

(assert (=> b!3109271 (= e!1942391 call!219980)))

(declare-fun b!3109272 () Bool)

(declare-fun c!520278 () Bool)

(assert (=> b!3109272 (= c!520278 ((_ is ElementMatch!9587) r!17423))))

(assert (=> b!3109272 (= e!1942396 e!1942392)))

(declare-fun b!3109273 () Bool)

(declare-fun c!520277 () Bool)

(assert (=> b!3109273 (= c!520277 ((_ is Union!9587) r!17423))))

(assert (=> b!3109273 (= e!1942392 e!1942394)))

(declare-fun b!3109274 () Bool)

(assert (=> b!3109274 (= e!1942397 (matchRSpec!1724 (regTwo!19687 r!17423) s!11993))))

(declare-fun b!3109275 () Bool)

(assert (=> b!3109275 (= e!1942394 e!1942391)))

(declare-fun c!520276 () Bool)

(assert (=> b!3109275 (= c!520276 ((_ is Star!9587) r!17423))))

(declare-fun bm!219975 () Bool)

(declare-fun call!219981 () Bool)

(assert (=> bm!219975 (= call!219981 (isEmpty!19675 s!11993))))

(declare-fun b!3109266 () Bool)

(declare-fun res!1273018 () Bool)

(assert (=> b!3109266 (=> res!1273018 e!1942393)))

(assert (=> b!3109266 (= res!1273018 call!219981)))

(assert (=> b!3109266 (= e!1942391 e!1942393)))

(declare-fun d!861601 () Bool)

(declare-fun c!520279 () Bool)

(assert (=> d!861601 (= c!520279 ((_ is EmptyExpr!9587) r!17423))))

(assert (=> d!861601 (= (matchRSpec!1724 r!17423 s!11993) e!1942395)))

(declare-fun b!3109276 () Bool)

(assert (=> b!3109276 (= e!1942395 call!219981)))

(declare-fun bm!219976 () Bool)

(declare-fun Exists!1845 (Int) Bool)

(assert (=> bm!219976 (= call!219980 (Exists!1845 (ite c!520276 lambda!115023 lambda!115024)))))

(assert (= (and d!861601 c!520279) b!3109276))

(assert (= (and d!861601 (not c!520279)) b!3109269))

(assert (= (and b!3109269 res!1273016) b!3109272))

(assert (= (and b!3109272 c!520278) b!3109267))

(assert (= (and b!3109272 (not c!520278)) b!3109273))

(assert (= (and b!3109273 c!520277) b!3109270))

(assert (= (and b!3109273 (not c!520277)) b!3109275))

(assert (= (and b!3109270 (not res!1273017)) b!3109274))

(assert (= (and b!3109275 c!520276) b!3109266))

(assert (= (and b!3109275 (not c!520276)) b!3109271))

(assert (= (and b!3109266 (not res!1273018)) b!3109268))

(assert (= (or b!3109268 b!3109271) bm!219976))

(assert (= (or b!3109276 b!3109266) bm!219975))

(declare-fun m!3404061 () Bool)

(assert (=> b!3109270 m!3404061))

(declare-fun m!3404063 () Bool)

(assert (=> b!3109274 m!3404063))

(assert (=> bm!219975 m!3403875))

(declare-fun m!3404065 () Bool)

(assert (=> bm!219976 m!3404065))

(assert (=> b!3108674 d!861601))

(declare-fun b!3109281 () Bool)

(declare-fun e!1942404 () Bool)

(declare-fun e!1942399 () Bool)

(assert (=> b!3109281 (= e!1942404 e!1942399)))

(declare-fun res!1273021 () Bool)

(assert (=> b!3109281 (=> (not res!1273021) (not e!1942399))))

(declare-fun lt!1057154 () Bool)

(assert (=> b!3109281 (= res!1273021 (not lt!1057154))))

(declare-fun b!3109282 () Bool)

(declare-fun e!1942402 () Bool)

(declare-fun e!1942398 () Bool)

(assert (=> b!3109282 (= e!1942402 e!1942398)))

(declare-fun c!520280 () Bool)

(assert (=> b!3109282 (= c!520280 ((_ is EmptyLang!9587) r!17423))))

(declare-fun b!3109283 () Bool)

(declare-fun e!1942400 () Bool)

(assert (=> b!3109283 (= e!1942400 (not (= (head!6883 s!11993) (c!520095 r!17423))))))

(declare-fun b!3109284 () Bool)

(declare-fun res!1273019 () Bool)

(declare-fun e!1942403 () Bool)

(assert (=> b!3109284 (=> (not res!1273019) (not e!1942403))))

(assert (=> b!3109284 (= res!1273019 (isEmpty!19675 (tail!5109 s!11993)))))

(declare-fun b!3109285 () Bool)

(declare-fun call!219982 () Bool)

(assert (=> b!3109285 (= e!1942402 (= lt!1057154 call!219982))))

(declare-fun b!3109286 () Bool)

(declare-fun res!1273022 () Bool)

(assert (=> b!3109286 (=> res!1273022 e!1942404)))

(assert (=> b!3109286 (= res!1273022 (not ((_ is ElementMatch!9587) r!17423)))))

(assert (=> b!3109286 (= e!1942398 e!1942404)))

(declare-fun b!3109287 () Bool)

(declare-fun res!1273023 () Bool)

(assert (=> b!3109287 (=> (not res!1273023) (not e!1942403))))

(assert (=> b!3109287 (= res!1273023 (not call!219982))))

(declare-fun d!861625 () Bool)

(assert (=> d!861625 e!1942402))

(declare-fun c!520281 () Bool)

(assert (=> d!861625 (= c!520281 ((_ is EmptyExpr!9587) r!17423))))

(declare-fun e!1942401 () Bool)

(assert (=> d!861625 (= lt!1057154 e!1942401)))

(declare-fun c!520282 () Bool)

(assert (=> d!861625 (= c!520282 (isEmpty!19675 s!11993))))

(assert (=> d!861625 (validRegex!4320 r!17423)))

(assert (=> d!861625 (= (matchR!4469 r!17423 s!11993) lt!1057154)))

(declare-fun b!3109288 () Bool)

(assert (=> b!3109288 (= e!1942401 (nullable!3229 r!17423))))

(declare-fun b!3109289 () Bool)

(declare-fun res!1273024 () Bool)

(assert (=> b!3109289 (=> res!1273024 e!1942400)))

(assert (=> b!3109289 (= res!1273024 (not (isEmpty!19675 (tail!5109 s!11993))))))

(declare-fun b!3109290 () Bool)

(assert (=> b!3109290 (= e!1942399 e!1942400)))

(declare-fun res!1273026 () Bool)

(assert (=> b!3109290 (=> res!1273026 e!1942400)))

(assert (=> b!3109290 (= res!1273026 call!219982)))

(declare-fun b!3109291 () Bool)

(declare-fun res!1273020 () Bool)

(assert (=> b!3109291 (=> res!1273020 e!1942404)))

(assert (=> b!3109291 (= res!1273020 e!1942403)))

(declare-fun res!1273025 () Bool)

(assert (=> b!3109291 (=> (not res!1273025) (not e!1942403))))

(assert (=> b!3109291 (= res!1273025 lt!1057154)))

(declare-fun b!3109292 () Bool)

(assert (=> b!3109292 (= e!1942403 (= (head!6883 s!11993) (c!520095 r!17423)))))

(declare-fun b!3109293 () Bool)

(assert (=> b!3109293 (= e!1942401 (matchR!4469 (derivativeStep!2824 r!17423 (head!6883 s!11993)) (tail!5109 s!11993)))))

(declare-fun b!3109294 () Bool)

(assert (=> b!3109294 (= e!1942398 (not lt!1057154))))

(declare-fun bm!219977 () Bool)

(assert (=> bm!219977 (= call!219982 (isEmpty!19675 s!11993))))

(assert (= (and d!861625 c!520282) b!3109288))

(assert (= (and d!861625 (not c!520282)) b!3109293))

(assert (= (and d!861625 c!520281) b!3109285))

(assert (= (and d!861625 (not c!520281)) b!3109282))

(assert (= (and b!3109282 c!520280) b!3109294))

(assert (= (and b!3109282 (not c!520280)) b!3109286))

(assert (= (and b!3109286 (not res!1273022)) b!3109291))

(assert (= (and b!3109291 res!1273025) b!3109287))

(assert (= (and b!3109287 res!1273023) b!3109284))

(assert (= (and b!3109284 res!1273019) b!3109292))

(assert (= (and b!3109291 (not res!1273020)) b!3109281))

(assert (= (and b!3109281 res!1273021) b!3109290))

(assert (= (and b!3109290 (not res!1273026)) b!3109289))

(assert (= (and b!3109289 (not res!1273024)) b!3109283))

(assert (= (or b!3109285 b!3109287 b!3109290) bm!219977))

(assert (=> d!861625 m!3403875))

(assert (=> d!861625 m!3403861))

(assert (=> b!3109293 m!3403879))

(assert (=> b!3109293 m!3403879))

(declare-fun m!3404067 () Bool)

(assert (=> b!3109293 m!3404067))

(assert (=> b!3109293 m!3403883))

(assert (=> b!3109293 m!3404067))

(assert (=> b!3109293 m!3403883))

(declare-fun m!3404069 () Bool)

(assert (=> b!3109293 m!3404069))

(assert (=> b!3109284 m!3403883))

(assert (=> b!3109284 m!3403883))

(assert (=> b!3109284 m!3403887))

(assert (=> b!3109283 m!3403879))

(assert (=> bm!219977 m!3403875))

(declare-fun m!3404071 () Bool)

(assert (=> b!3109288 m!3404071))

(assert (=> b!3109292 m!3403879))

(assert (=> b!3109289 m!3403883))

(assert (=> b!3109289 m!3403883))

(assert (=> b!3109289 m!3403887))

(assert (=> b!3108674 d!861625))

(declare-fun d!861627 () Bool)

(assert (=> d!861627 (= (matchR!4469 r!17423 s!11993) (matchRSpec!1724 r!17423 s!11993))))

(declare-fun lt!1057157 () Unit!49613)

(declare-fun choose!18388 (Regex!9587 List!35452) Unit!49613)

(assert (=> d!861627 (= lt!1057157 (choose!18388 r!17423 s!11993))))

(assert (=> d!861627 (validRegex!4320 r!17423)))

(assert (=> d!861627 (= (mainMatchTheorem!1724 r!17423 s!11993) lt!1057157)))

(declare-fun bs!535773 () Bool)

(assert (= bs!535773 d!861627))

(assert (=> bs!535773 m!3403841))

(assert (=> bs!535773 m!3403839))

(declare-fun m!3404073 () Bool)

(assert (=> bs!535773 m!3404073))

(assert (=> bs!535773 m!3403861))

(assert (=> b!3108674 d!861627))

(declare-fun d!861629 () Bool)

(assert (=> d!861629 (= (isEmptyLang!638 lt!1057078) ((_ is EmptyLang!9587) lt!1057078))))

(assert (=> b!3108665 d!861629))

(declare-fun b!3109313 () Bool)

(declare-fun e!1942422 () Bool)

(declare-fun e!1942419 () Bool)

(assert (=> b!3109313 (= e!1942422 e!1942419)))

(declare-fun c!520287 () Bool)

(assert (=> b!3109313 (= c!520287 ((_ is Union!9587) (regOne!19687 r!17423)))))

(declare-fun bm!219984 () Bool)

(declare-fun call!219990 () Bool)

(declare-fun call!219991 () Bool)

(assert (=> bm!219984 (= call!219990 call!219991)))

(declare-fun b!3109314 () Bool)

(declare-fun e!1942423 () Bool)

(assert (=> b!3109314 (= e!1942423 call!219990)))

(declare-fun b!3109315 () Bool)

(declare-fun e!1942425 () Bool)

(declare-fun call!219989 () Bool)

(assert (=> b!3109315 (= e!1942425 call!219989)))

(declare-fun b!3109316 () Bool)

(declare-fun e!1942424 () Bool)

(assert (=> b!3109316 (= e!1942422 e!1942424)))

(declare-fun res!1273038 () Bool)

(assert (=> b!3109316 (= res!1273038 (not (nullable!3229 (reg!9916 (regOne!19687 r!17423)))))))

(assert (=> b!3109316 (=> (not res!1273038) (not e!1942424))))

(declare-fun d!861631 () Bool)

(declare-fun res!1273039 () Bool)

(declare-fun e!1942421 () Bool)

(assert (=> d!861631 (=> res!1273039 e!1942421)))

(assert (=> d!861631 (= res!1273039 ((_ is ElementMatch!9587) (regOne!19687 r!17423)))))

(assert (=> d!861631 (= (validRegex!4320 (regOne!19687 r!17423)) e!1942421)))

(declare-fun b!3109317 () Bool)

(declare-fun e!1942420 () Bool)

(assert (=> b!3109317 (= e!1942420 e!1942423)))

(declare-fun res!1273040 () Bool)

(assert (=> b!3109317 (=> (not res!1273040) (not e!1942423))))

(assert (=> b!3109317 (= res!1273040 call!219989)))

(declare-fun b!3109318 () Bool)

(assert (=> b!3109318 (= e!1942421 e!1942422)))

(declare-fun c!520288 () Bool)

(assert (=> b!3109318 (= c!520288 ((_ is Star!9587) (regOne!19687 r!17423)))))

(declare-fun bm!219985 () Bool)

(assert (=> bm!219985 (= call!219989 (validRegex!4320 (ite c!520287 (regTwo!19687 (regOne!19687 r!17423)) (regOne!19686 (regOne!19687 r!17423)))))))

(declare-fun b!3109319 () Bool)

(assert (=> b!3109319 (= e!1942424 call!219991)))

(declare-fun b!3109320 () Bool)

(declare-fun res!1273037 () Bool)

(assert (=> b!3109320 (=> (not res!1273037) (not e!1942425))))

(assert (=> b!3109320 (= res!1273037 call!219990)))

(assert (=> b!3109320 (= e!1942419 e!1942425)))

(declare-fun bm!219986 () Bool)

(assert (=> bm!219986 (= call!219991 (validRegex!4320 (ite c!520288 (reg!9916 (regOne!19687 r!17423)) (ite c!520287 (regOne!19687 (regOne!19687 r!17423)) (regTwo!19686 (regOne!19687 r!17423))))))))

(declare-fun b!3109321 () Bool)

(declare-fun res!1273041 () Bool)

(assert (=> b!3109321 (=> res!1273041 e!1942420)))

(assert (=> b!3109321 (= res!1273041 (not ((_ is Concat!14908) (regOne!19687 r!17423))))))

(assert (=> b!3109321 (= e!1942419 e!1942420)))

(assert (= (and d!861631 (not res!1273039)) b!3109318))

(assert (= (and b!3109318 c!520288) b!3109316))

(assert (= (and b!3109318 (not c!520288)) b!3109313))

(assert (= (and b!3109316 res!1273038) b!3109319))

(assert (= (and b!3109313 c!520287) b!3109320))

(assert (= (and b!3109313 (not c!520287)) b!3109321))

(assert (= (and b!3109320 res!1273037) b!3109315))

(assert (= (and b!3109321 (not res!1273041)) b!3109317))

(assert (= (and b!3109317 res!1273040) b!3109314))

(assert (= (or b!3109320 b!3109314) bm!219984))

(assert (= (or b!3109315 b!3109317) bm!219985))

(assert (= (or b!3109319 bm!219984) bm!219986))

(declare-fun m!3404075 () Bool)

(assert (=> b!3109316 m!3404075))

(declare-fun m!3404077 () Bool)

(assert (=> bm!219985 m!3404077))

(declare-fun m!3404079 () Bool)

(assert (=> bm!219986 m!3404079))

(assert (=> b!3108675 d!861631))

(declare-fun b!3109322 () Bool)

(declare-fun e!1942429 () Bool)

(declare-fun e!1942426 () Bool)

(assert (=> b!3109322 (= e!1942429 e!1942426)))

(declare-fun c!520289 () Bool)

(assert (=> b!3109322 (= c!520289 ((_ is Union!9587) r!17423))))

(declare-fun bm!219987 () Bool)

(declare-fun call!219993 () Bool)

(declare-fun call!219994 () Bool)

(assert (=> bm!219987 (= call!219993 call!219994)))

(declare-fun b!3109323 () Bool)

(declare-fun e!1942430 () Bool)

(assert (=> b!3109323 (= e!1942430 call!219993)))

(declare-fun b!3109324 () Bool)

(declare-fun e!1942432 () Bool)

(declare-fun call!219992 () Bool)

(assert (=> b!3109324 (= e!1942432 call!219992)))

(declare-fun b!3109325 () Bool)

(declare-fun e!1942431 () Bool)

(assert (=> b!3109325 (= e!1942429 e!1942431)))

(declare-fun res!1273043 () Bool)

(assert (=> b!3109325 (= res!1273043 (not (nullable!3229 (reg!9916 r!17423))))))

(assert (=> b!3109325 (=> (not res!1273043) (not e!1942431))))

(declare-fun d!861633 () Bool)

(declare-fun res!1273044 () Bool)

(declare-fun e!1942428 () Bool)

(assert (=> d!861633 (=> res!1273044 e!1942428)))

(assert (=> d!861633 (= res!1273044 ((_ is ElementMatch!9587) r!17423))))

(assert (=> d!861633 (= (validRegex!4320 r!17423) e!1942428)))

(declare-fun b!3109326 () Bool)

(declare-fun e!1942427 () Bool)

(assert (=> b!3109326 (= e!1942427 e!1942430)))

(declare-fun res!1273045 () Bool)

(assert (=> b!3109326 (=> (not res!1273045) (not e!1942430))))

(assert (=> b!3109326 (= res!1273045 call!219992)))

(declare-fun b!3109327 () Bool)

(assert (=> b!3109327 (= e!1942428 e!1942429)))

(declare-fun c!520290 () Bool)

(assert (=> b!3109327 (= c!520290 ((_ is Star!9587) r!17423))))

(declare-fun bm!219988 () Bool)

(assert (=> bm!219988 (= call!219992 (validRegex!4320 (ite c!520289 (regTwo!19687 r!17423) (regOne!19686 r!17423))))))

(declare-fun b!3109328 () Bool)

(assert (=> b!3109328 (= e!1942431 call!219994)))

(declare-fun b!3109329 () Bool)

(declare-fun res!1273042 () Bool)

(assert (=> b!3109329 (=> (not res!1273042) (not e!1942432))))

(assert (=> b!3109329 (= res!1273042 call!219993)))

(assert (=> b!3109329 (= e!1942426 e!1942432)))

(declare-fun bm!219989 () Bool)

(assert (=> bm!219989 (= call!219994 (validRegex!4320 (ite c!520290 (reg!9916 r!17423) (ite c!520289 (regOne!19687 r!17423) (regTwo!19686 r!17423)))))))

(declare-fun b!3109330 () Bool)

(declare-fun res!1273046 () Bool)

(assert (=> b!3109330 (=> res!1273046 e!1942427)))

(assert (=> b!3109330 (= res!1273046 (not ((_ is Concat!14908) r!17423)))))

(assert (=> b!3109330 (= e!1942426 e!1942427)))

(assert (= (and d!861633 (not res!1273044)) b!3109327))

(assert (= (and b!3109327 c!520290) b!3109325))

(assert (= (and b!3109327 (not c!520290)) b!3109322))

(assert (= (and b!3109325 res!1273043) b!3109328))

(assert (= (and b!3109322 c!520289) b!3109329))

(assert (= (and b!3109322 (not c!520289)) b!3109330))

(assert (= (and b!3109329 res!1273042) b!3109324))

(assert (= (and b!3109330 (not res!1273046)) b!3109326))

(assert (= (and b!3109326 res!1273045) b!3109323))

(assert (= (or b!3109329 b!3109323) bm!219987))

(assert (= (or b!3109324 b!3109326) bm!219988))

(assert (= (or b!3109328 bm!219987) bm!219989))

(declare-fun m!3404081 () Bool)

(assert (=> b!3109325 m!3404081))

(declare-fun m!3404083 () Bool)

(assert (=> bm!219988 m!3404083))

(declare-fun m!3404085 () Bool)

(assert (=> bm!219989 m!3404085))

(assert (=> start!294612 d!861633))

(declare-fun bm!220004 () Bool)

(declare-fun call!220011 () Int)

(declare-fun c!520307 () Bool)

(assert (=> bm!220004 (= call!220011 (regexDepth!113 (ite c!520307 (regTwo!19687 r!17423) (regTwo!19686 r!17423))))))

(declare-fun bm!220005 () Bool)

(declare-fun call!220014 () Int)

(declare-fun call!220009 () Int)

(assert (=> bm!220005 (= call!220014 call!220009)))

(declare-fun b!3109365 () Bool)

(declare-fun e!1942457 () Int)

(declare-fun call!220010 () Int)

(assert (=> b!3109365 (= e!1942457 (+ 1 call!220010))))

(declare-fun b!3109366 () Bool)

(declare-fun e!1942458 () Bool)

(declare-fun lt!1057160 () Int)

(assert (=> b!3109366 (= e!1942458 (= lt!1057160 1))))

(declare-fun c!520310 () Bool)

(declare-fun call!220015 () Int)

(declare-fun bm!220006 () Bool)

(assert (=> bm!220006 (= call!220015 (regexDepth!113 (ite c!520310 (reg!9916 r!17423) (ite c!520307 (regOne!19687 r!17423) (regOne!19686 r!17423)))))))

(declare-fun b!3109367 () Bool)

(declare-fun e!1942456 () Bool)

(assert (=> b!3109367 (= e!1942456 (> lt!1057160 call!220009))))

(declare-fun bm!220007 () Bool)

(declare-fun call!220013 () Int)

(assert (=> bm!220007 (= call!220013 call!220015)))

(declare-fun b!3109368 () Bool)

(declare-fun e!1942455 () Int)

(assert (=> b!3109368 (= e!1942455 (+ 1 call!220015))))

(declare-fun b!3109369 () Bool)

(declare-fun res!1273055 () Bool)

(declare-fun e!1942454 () Bool)

(assert (=> b!3109369 (=> (not res!1273055) (not e!1942454))))

(declare-fun call!220012 () Int)

(assert (=> b!3109369 (= res!1273055 (> lt!1057160 call!220012))))

(declare-fun e!1942453 () Bool)

(assert (=> b!3109369 (= e!1942453 e!1942454)))

(declare-fun b!3109370 () Bool)

(declare-fun e!1942460 () Int)

(assert (=> b!3109370 (= e!1942460 e!1942457)))

(declare-fun c!520305 () Bool)

(assert (=> b!3109370 (= c!520305 ((_ is Concat!14908) r!17423))))

(declare-fun b!3109371 () Bool)

(assert (=> b!3109371 (= e!1942457 1)))

(declare-fun bm!220008 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!220008 (= call!220010 (maxBigInt!0 call!220013 call!220011))))

(declare-fun b!3109372 () Bool)

(assert (=> b!3109372 (= e!1942458 (> lt!1057160 call!220014))))

(declare-fun b!3109373 () Bool)

(assert (=> b!3109373 (= e!1942460 (+ 1 call!220010))))

(declare-fun b!3109374 () Bool)

(assert (=> b!3109374 (= e!1942454 (> lt!1057160 call!220014))))

(declare-fun b!3109375 () Bool)

(declare-fun e!1942461 () Int)

(assert (=> b!3109375 (= e!1942461 e!1942455)))

(assert (=> b!3109375 (= c!520310 ((_ is Star!9587) r!17423))))

(declare-fun b!3109376 () Bool)

(declare-fun c!520308 () Bool)

(assert (=> b!3109376 (= c!520308 ((_ is Star!9587) r!17423))))

(assert (=> b!3109376 (= e!1942453 e!1942458)))

(declare-fun c!520311 () Bool)

(declare-fun c!520309 () Bool)

(declare-fun bm!220009 () Bool)

(assert (=> bm!220009 (= call!220009 (regexDepth!113 (ite c!520311 (regTwo!19687 r!17423) (ite c!520309 (regTwo!19686 r!17423) (reg!9916 r!17423)))))))

(declare-fun b!3109377 () Bool)

(declare-fun e!1942462 () Bool)

(assert (=> b!3109377 (= e!1942462 e!1942453)))

(assert (=> b!3109377 (= c!520309 ((_ is Concat!14908) r!17423))))

(declare-fun b!3109378 () Bool)

(declare-fun e!1942459 () Bool)

(assert (=> b!3109378 (= e!1942459 e!1942462)))

(assert (=> b!3109378 (= c!520311 ((_ is Union!9587) r!17423))))

(declare-fun d!861635 () Bool)

(assert (=> d!861635 e!1942459))

(declare-fun res!1273054 () Bool)

(assert (=> d!861635 (=> (not res!1273054) (not e!1942459))))

(assert (=> d!861635 (= res!1273054 (> lt!1057160 0))))

(assert (=> d!861635 (= lt!1057160 e!1942461)))

(declare-fun c!520306 () Bool)

(assert (=> d!861635 (= c!520306 ((_ is ElementMatch!9587) r!17423))))

(assert (=> d!861635 (= (regexDepth!113 r!17423) lt!1057160)))

(declare-fun b!3109379 () Bool)

(assert (=> b!3109379 (= e!1942461 1)))

(declare-fun b!3109380 () Bool)

(assert (=> b!3109380 (= c!520307 ((_ is Union!9587) r!17423))))

(assert (=> b!3109380 (= e!1942455 e!1942460)))

(declare-fun b!3109381 () Bool)

(assert (=> b!3109381 (= e!1942462 e!1942456)))

(declare-fun res!1273053 () Bool)

(assert (=> b!3109381 (= res!1273053 (> lt!1057160 call!220012))))

(assert (=> b!3109381 (=> (not res!1273053) (not e!1942456))))

(declare-fun bm!220010 () Bool)

(assert (=> bm!220010 (= call!220012 (regexDepth!113 (ite c!520311 (regOne!19687 r!17423) (regOne!19686 r!17423))))))

(assert (= (and d!861635 c!520306) b!3109379))

(assert (= (and d!861635 (not c!520306)) b!3109375))

(assert (= (and b!3109375 c!520310) b!3109368))

(assert (= (and b!3109375 (not c!520310)) b!3109380))

(assert (= (and b!3109380 c!520307) b!3109373))

(assert (= (and b!3109380 (not c!520307)) b!3109370))

(assert (= (and b!3109370 c!520305) b!3109365))

(assert (= (and b!3109370 (not c!520305)) b!3109371))

(assert (= (or b!3109373 b!3109365) bm!220004))

(assert (= (or b!3109373 b!3109365) bm!220007))

(assert (= (or b!3109373 b!3109365) bm!220008))

(assert (= (or b!3109368 bm!220007) bm!220006))

(assert (= (and d!861635 res!1273054) b!3109378))

(assert (= (and b!3109378 c!520311) b!3109381))

(assert (= (and b!3109378 (not c!520311)) b!3109377))

(assert (= (and b!3109381 res!1273053) b!3109367))

(assert (= (and b!3109377 c!520309) b!3109369))

(assert (= (and b!3109377 (not c!520309)) b!3109376))

(assert (= (and b!3109369 res!1273055) b!3109374))

(assert (= (and b!3109376 c!520308) b!3109372))

(assert (= (and b!3109376 (not c!520308)) b!3109366))

(assert (= (or b!3109374 b!3109372) bm!220005))

(assert (= (or b!3109367 bm!220005) bm!220009))

(assert (= (or b!3109381 b!3109369) bm!220010))

(declare-fun m!3404087 () Bool)

(assert (=> bm!220009 m!3404087))

(declare-fun m!3404089 () Bool)

(assert (=> bm!220008 m!3404089))

(declare-fun m!3404091 () Bool)

(assert (=> bm!220010 m!3404091))

(declare-fun m!3404093 () Bool)

(assert (=> bm!220006 m!3404093))

(declare-fun m!3404095 () Bool)

(assert (=> bm!220004 m!3404095))

(assert (=> b!3108670 d!861635))

(declare-fun d!861637 () Bool)

(declare-fun lt!1057163 () Int)

(assert (=> d!861637 (>= lt!1057163 0)))

(declare-fun e!1942465 () Int)

(assert (=> d!861637 (= lt!1057163 e!1942465)))

(declare-fun c!520314 () Bool)

(assert (=> d!861637 (= c!520314 ((_ is Nil!35328) s!11993))))

(assert (=> d!861637 (= (size!26579 s!11993) lt!1057163)))

(declare-fun b!3109386 () Bool)

(assert (=> b!3109386 (= e!1942465 0)))

(declare-fun b!3109387 () Bool)

(assert (=> b!3109387 (= e!1942465 (+ 1 (size!26579 (t!234517 s!11993))))))

(assert (= (and d!861637 c!520314) b!3109386))

(assert (= (and d!861637 (not c!520314)) b!3109387))

(declare-fun m!3404097 () Bool)

(assert (=> b!3109387 m!3404097))

(assert (=> b!3108670 d!861637))

(declare-fun bm!220011 () Bool)

(declare-fun call!220018 () Int)

(declare-fun c!520317 () Bool)

(assert (=> bm!220011 (= call!220018 (regexDepth!113 (ite c!520317 (regTwo!19687 (regOne!19687 r!17423)) (regTwo!19686 (regOne!19687 r!17423)))))))

(declare-fun bm!220012 () Bool)

(declare-fun call!220021 () Int)

(declare-fun call!220016 () Int)

(assert (=> bm!220012 (= call!220021 call!220016)))

(declare-fun b!3109388 () Bool)

(declare-fun e!1942470 () Int)

(declare-fun call!220017 () Int)

(assert (=> b!3109388 (= e!1942470 (+ 1 call!220017))))

(declare-fun b!3109389 () Bool)

(declare-fun e!1942471 () Bool)

(declare-fun lt!1057164 () Int)

(assert (=> b!3109389 (= e!1942471 (= lt!1057164 1))))

(declare-fun call!220022 () Int)

(declare-fun bm!220013 () Bool)

(declare-fun c!520320 () Bool)

(assert (=> bm!220013 (= call!220022 (regexDepth!113 (ite c!520320 (reg!9916 (regOne!19687 r!17423)) (ite c!520317 (regOne!19687 (regOne!19687 r!17423)) (regOne!19686 (regOne!19687 r!17423))))))))

(declare-fun b!3109390 () Bool)

(declare-fun e!1942469 () Bool)

(assert (=> b!3109390 (= e!1942469 (> lt!1057164 call!220016))))

(declare-fun bm!220014 () Bool)

(declare-fun call!220020 () Int)

(assert (=> bm!220014 (= call!220020 call!220022)))

(declare-fun b!3109391 () Bool)

(declare-fun e!1942468 () Int)

(assert (=> b!3109391 (= e!1942468 (+ 1 call!220022))))

(declare-fun b!3109392 () Bool)

(declare-fun res!1273058 () Bool)

(declare-fun e!1942467 () Bool)

(assert (=> b!3109392 (=> (not res!1273058) (not e!1942467))))

(declare-fun call!220019 () Int)

(assert (=> b!3109392 (= res!1273058 (> lt!1057164 call!220019))))

(declare-fun e!1942466 () Bool)

(assert (=> b!3109392 (= e!1942466 e!1942467)))

(declare-fun b!3109393 () Bool)

(declare-fun e!1942473 () Int)

(assert (=> b!3109393 (= e!1942473 e!1942470)))

(declare-fun c!520315 () Bool)

(assert (=> b!3109393 (= c!520315 ((_ is Concat!14908) (regOne!19687 r!17423)))))

(declare-fun b!3109394 () Bool)

(assert (=> b!3109394 (= e!1942470 1)))

(declare-fun bm!220015 () Bool)

(assert (=> bm!220015 (= call!220017 (maxBigInt!0 call!220020 call!220018))))

(declare-fun b!3109395 () Bool)

(assert (=> b!3109395 (= e!1942471 (> lt!1057164 call!220021))))

(declare-fun b!3109396 () Bool)

(assert (=> b!3109396 (= e!1942473 (+ 1 call!220017))))

(declare-fun b!3109397 () Bool)

(assert (=> b!3109397 (= e!1942467 (> lt!1057164 call!220021))))

(declare-fun b!3109398 () Bool)

(declare-fun e!1942474 () Int)

(assert (=> b!3109398 (= e!1942474 e!1942468)))

(assert (=> b!3109398 (= c!520320 ((_ is Star!9587) (regOne!19687 r!17423)))))

(declare-fun b!3109399 () Bool)

(declare-fun c!520318 () Bool)

(assert (=> b!3109399 (= c!520318 ((_ is Star!9587) (regOne!19687 r!17423)))))

(assert (=> b!3109399 (= e!1942466 e!1942471)))

(declare-fun c!520321 () Bool)

(declare-fun bm!220016 () Bool)

(declare-fun c!520319 () Bool)

(assert (=> bm!220016 (= call!220016 (regexDepth!113 (ite c!520321 (regTwo!19687 (regOne!19687 r!17423)) (ite c!520319 (regTwo!19686 (regOne!19687 r!17423)) (reg!9916 (regOne!19687 r!17423))))))))

(declare-fun b!3109400 () Bool)

(declare-fun e!1942475 () Bool)

(assert (=> b!3109400 (= e!1942475 e!1942466)))

(assert (=> b!3109400 (= c!520319 ((_ is Concat!14908) (regOne!19687 r!17423)))))

(declare-fun b!3109401 () Bool)

(declare-fun e!1942472 () Bool)

(assert (=> b!3109401 (= e!1942472 e!1942475)))

(assert (=> b!3109401 (= c!520321 ((_ is Union!9587) (regOne!19687 r!17423)))))

(declare-fun d!861639 () Bool)

(assert (=> d!861639 e!1942472))

(declare-fun res!1273057 () Bool)

(assert (=> d!861639 (=> (not res!1273057) (not e!1942472))))

(assert (=> d!861639 (= res!1273057 (> lt!1057164 0))))

(assert (=> d!861639 (= lt!1057164 e!1942474)))

(declare-fun c!520316 () Bool)

(assert (=> d!861639 (= c!520316 ((_ is ElementMatch!9587) (regOne!19687 r!17423)))))

(assert (=> d!861639 (= (regexDepth!113 (regOne!19687 r!17423)) lt!1057164)))

(declare-fun b!3109402 () Bool)

(assert (=> b!3109402 (= e!1942474 1)))

(declare-fun b!3109403 () Bool)

(assert (=> b!3109403 (= c!520317 ((_ is Union!9587) (regOne!19687 r!17423)))))

(assert (=> b!3109403 (= e!1942468 e!1942473)))

(declare-fun b!3109404 () Bool)

(assert (=> b!3109404 (= e!1942475 e!1942469)))

(declare-fun res!1273056 () Bool)

(assert (=> b!3109404 (= res!1273056 (> lt!1057164 call!220019))))

(assert (=> b!3109404 (=> (not res!1273056) (not e!1942469))))

(declare-fun bm!220017 () Bool)

(assert (=> bm!220017 (= call!220019 (regexDepth!113 (ite c!520321 (regOne!19687 (regOne!19687 r!17423)) (regOne!19686 (regOne!19687 r!17423)))))))

(assert (= (and d!861639 c!520316) b!3109402))

(assert (= (and d!861639 (not c!520316)) b!3109398))

(assert (= (and b!3109398 c!520320) b!3109391))

(assert (= (and b!3109398 (not c!520320)) b!3109403))

(assert (= (and b!3109403 c!520317) b!3109396))

(assert (= (and b!3109403 (not c!520317)) b!3109393))

(assert (= (and b!3109393 c!520315) b!3109388))

(assert (= (and b!3109393 (not c!520315)) b!3109394))

(assert (= (or b!3109396 b!3109388) bm!220011))

(assert (= (or b!3109396 b!3109388) bm!220014))

(assert (= (or b!3109396 b!3109388) bm!220015))

(assert (= (or b!3109391 bm!220014) bm!220013))

(assert (= (and d!861639 res!1273057) b!3109401))

(assert (= (and b!3109401 c!520321) b!3109404))

(assert (= (and b!3109401 (not c!520321)) b!3109400))

(assert (= (and b!3109404 res!1273056) b!3109390))

(assert (= (and b!3109400 c!520319) b!3109392))

(assert (= (and b!3109400 (not c!520319)) b!3109399))

(assert (= (and b!3109392 res!1273058) b!3109397))

(assert (= (and b!3109399 c!520318) b!3109395))

(assert (= (and b!3109399 (not c!520318)) b!3109389))

(assert (= (or b!3109397 b!3109395) bm!220012))

(assert (= (or b!3109390 bm!220012) bm!220016))

(assert (= (or b!3109404 b!3109392) bm!220017))

(declare-fun m!3404099 () Bool)

(assert (=> bm!220016 m!3404099))

(declare-fun m!3404101 () Bool)

(assert (=> bm!220015 m!3404101))

(declare-fun m!3404103 () Bool)

(assert (=> bm!220017 m!3404103))

(declare-fun m!3404105 () Bool)

(assert (=> bm!220013 m!3404105))

(declare-fun m!3404107 () Bool)

(assert (=> bm!220011 m!3404107))

(assert (=> b!3108670 d!861639))

(declare-fun e!1942478 () Bool)

(assert (=> b!3108671 (= tp!976036 e!1942478)))

(declare-fun b!3109416 () Bool)

(declare-fun tp!976089 () Bool)

(declare-fun tp!976088 () Bool)

(assert (=> b!3109416 (= e!1942478 (and tp!976089 tp!976088))))

(declare-fun b!3109418 () Bool)

(declare-fun tp!976090 () Bool)

(declare-fun tp!976087 () Bool)

(assert (=> b!3109418 (= e!1942478 (and tp!976090 tp!976087))))

(declare-fun b!3109417 () Bool)

(declare-fun tp!976086 () Bool)

(assert (=> b!3109417 (= e!1942478 tp!976086)))

(declare-fun b!3109415 () Bool)

(assert (=> b!3109415 (= e!1942478 tp_is_empty!16737)))

(assert (= (and b!3108671 ((_ is ElementMatch!9587) (reg!9916 r!17423))) b!3109415))

(assert (= (and b!3108671 ((_ is Concat!14908) (reg!9916 r!17423))) b!3109416))

(assert (= (and b!3108671 ((_ is Star!9587) (reg!9916 r!17423))) b!3109417))

(assert (= (and b!3108671 ((_ is Union!9587) (reg!9916 r!17423))) b!3109418))

(declare-fun b!3109423 () Bool)

(declare-fun e!1942481 () Bool)

(declare-fun tp!976093 () Bool)

(assert (=> b!3109423 (= e!1942481 (and tp_is_empty!16737 tp!976093))))

(assert (=> b!3108666 (= tp!976033 e!1942481)))

(assert (= (and b!3108666 ((_ is Cons!35328) (t!234517 s!11993))) b!3109423))

(declare-fun e!1942482 () Bool)

(assert (=> b!3108673 (= tp!976035 e!1942482)))

(declare-fun b!3109425 () Bool)

(declare-fun tp!976097 () Bool)

(declare-fun tp!976096 () Bool)

(assert (=> b!3109425 (= e!1942482 (and tp!976097 tp!976096))))

(declare-fun b!3109427 () Bool)

(declare-fun tp!976098 () Bool)

(declare-fun tp!976095 () Bool)

(assert (=> b!3109427 (= e!1942482 (and tp!976098 tp!976095))))

(declare-fun b!3109426 () Bool)

(declare-fun tp!976094 () Bool)

(assert (=> b!3109426 (= e!1942482 tp!976094)))

(declare-fun b!3109424 () Bool)

(assert (=> b!3109424 (= e!1942482 tp_is_empty!16737)))

(assert (= (and b!3108673 ((_ is ElementMatch!9587) (regOne!19687 r!17423))) b!3109424))

(assert (= (and b!3108673 ((_ is Concat!14908) (regOne!19687 r!17423))) b!3109425))

(assert (= (and b!3108673 ((_ is Star!9587) (regOne!19687 r!17423))) b!3109426))

(assert (= (and b!3108673 ((_ is Union!9587) (regOne!19687 r!17423))) b!3109427))

(declare-fun e!1942483 () Bool)

(assert (=> b!3108673 (= tp!976032 e!1942483)))

(declare-fun b!3109429 () Bool)

(declare-fun tp!976102 () Bool)

(declare-fun tp!976101 () Bool)

(assert (=> b!3109429 (= e!1942483 (and tp!976102 tp!976101))))

(declare-fun b!3109431 () Bool)

(declare-fun tp!976103 () Bool)

(declare-fun tp!976100 () Bool)

(assert (=> b!3109431 (= e!1942483 (and tp!976103 tp!976100))))

(declare-fun b!3109430 () Bool)

(declare-fun tp!976099 () Bool)

(assert (=> b!3109430 (= e!1942483 tp!976099)))

(declare-fun b!3109428 () Bool)

(assert (=> b!3109428 (= e!1942483 tp_is_empty!16737)))

(assert (= (and b!3108673 ((_ is ElementMatch!9587) (regTwo!19687 r!17423))) b!3109428))

(assert (= (and b!3108673 ((_ is Concat!14908) (regTwo!19687 r!17423))) b!3109429))

(assert (= (and b!3108673 ((_ is Star!9587) (regTwo!19687 r!17423))) b!3109430))

(assert (= (and b!3108673 ((_ is Union!9587) (regTwo!19687 r!17423))) b!3109431))

(declare-fun e!1942484 () Bool)

(assert (=> b!3108663 (= tp!976034 e!1942484)))

(declare-fun b!3109433 () Bool)

(declare-fun tp!976107 () Bool)

(declare-fun tp!976106 () Bool)

(assert (=> b!3109433 (= e!1942484 (and tp!976107 tp!976106))))

(declare-fun b!3109435 () Bool)

(declare-fun tp!976108 () Bool)

(declare-fun tp!976105 () Bool)

(assert (=> b!3109435 (= e!1942484 (and tp!976108 tp!976105))))

(declare-fun b!3109434 () Bool)

(declare-fun tp!976104 () Bool)

(assert (=> b!3109434 (= e!1942484 tp!976104)))

(declare-fun b!3109432 () Bool)

(assert (=> b!3109432 (= e!1942484 tp_is_empty!16737)))

(assert (= (and b!3108663 ((_ is ElementMatch!9587) (regOne!19686 r!17423))) b!3109432))

(assert (= (and b!3108663 ((_ is Concat!14908) (regOne!19686 r!17423))) b!3109433))

(assert (= (and b!3108663 ((_ is Star!9587) (regOne!19686 r!17423))) b!3109434))

(assert (= (and b!3108663 ((_ is Union!9587) (regOne!19686 r!17423))) b!3109435))

(declare-fun e!1942485 () Bool)

(assert (=> b!3108663 (= tp!976037 e!1942485)))

(declare-fun b!3109437 () Bool)

(declare-fun tp!976112 () Bool)

(declare-fun tp!976111 () Bool)

(assert (=> b!3109437 (= e!1942485 (and tp!976112 tp!976111))))

(declare-fun b!3109439 () Bool)

(declare-fun tp!976113 () Bool)

(declare-fun tp!976110 () Bool)

(assert (=> b!3109439 (= e!1942485 (and tp!976113 tp!976110))))

(declare-fun b!3109438 () Bool)

(declare-fun tp!976109 () Bool)

(assert (=> b!3109438 (= e!1942485 tp!976109)))

(declare-fun b!3109436 () Bool)

(assert (=> b!3109436 (= e!1942485 tp_is_empty!16737)))

(assert (= (and b!3108663 ((_ is ElementMatch!9587) (regTwo!19686 r!17423))) b!3109436))

(assert (= (and b!3108663 ((_ is Concat!14908) (regTwo!19686 r!17423))) b!3109437))

(assert (= (and b!3108663 ((_ is Star!9587) (regTwo!19686 r!17423))) b!3109438))

(assert (= (and b!3108663 ((_ is Union!9587) (regTwo!19686 r!17423))) b!3109439))

(check-sat (not b!3108946) (not b!3109274) (not bm!219900) (not b!3108748) tp_is_empty!16737 (not d!861625) (not b!3108902) (not bm!220010) (not bm!219890) (not bm!219988) (not b!3109283) (not b!3109435) (not bm!219896) (not b!3108926) (not b!3108936) (not b!3108877) (not bm!220013) (not bm!220015) (not b!3108753) (not b!3108955) (not b!3109270) (not bm!219891) (not b!3108931) (not bm!219986) (not b!3108947) (not b!3108927) (not d!861595) (not b!3109387) (not bm!220011) (not bm!220006) (not b!3109325) (not bm!219897) (not b!3109292) (not b!3109437) (not b!3109439) (not bm!219903) (not b!3109434) (not b!3109288) (not bm!219892) (not b!3109289) (not b!3109416) (not b!3109427) (not bm!219905) (not b!3108951) (not b!3109438) (not b!3109430) (not b!3108956) (not b!3108942) (not d!861585) (not d!861599) (not b!3109425) (not bm!220004) (not b!3109433) (not bm!219869) (not b!3109423) (not b!3108747) (not b!3109418) (not b!3109293) (not b!3109429) (not b!3108952) (not d!861597) (not b!3108916) (not d!861579) (not bm!219904) (not d!861627) (not bm!219898) (not bm!219977) (not b!3108759) (not b!3109431) (not bm!219985) (not bm!219893) (not b!3108932) (not b!3108943) (not bm!220016) (not b!3108752) (not b!3109316) (not bm!220008) (not b!3108935) (not bm!220009) (not bm!219989) (not d!861593) (not b!3108891) (not bm!219975) (not bm!219976) (not bm!220017) (not b!3109284) (not b!3108758) (not bm!219899) (not b!3109417) (not b!3109426))
(check-sat)
