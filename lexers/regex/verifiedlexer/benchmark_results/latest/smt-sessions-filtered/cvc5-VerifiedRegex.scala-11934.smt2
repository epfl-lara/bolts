; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668228 () Bool)

(assert start!668228)

(declare-fun b!6965852 () Bool)

(declare-fun e!4187815 () Bool)

(declare-datatypes ((C!34498 0))(
  ( (C!34499 (val!26951 Int)) )
))
(declare-datatypes ((Regex!17114 0))(
  ( (ElementMatch!17114 (c!1291518 C!34498)) (Concat!25959 (regOne!34740 Regex!17114) (regTwo!34740 Regex!17114)) (EmptyExpr!17114) (Star!17114 (reg!17443 Regex!17114)) (EmptyLang!17114) (Union!17114 (regOne!34741 Regex!17114) (regTwo!34741 Regex!17114)) )
))
(declare-fun r!13765 () Regex!17114)

(declare-fun validRegex!8798 (Regex!17114) Bool)

(assert (=> b!6965852 (= e!4187815 (not (validRegex!8798 r!13765)))))

(declare-fun b!6965853 () Bool)

(declare-fun res!2842023 () Bool)

(assert (=> b!6965853 (=> (not res!2842023) (not e!4187815))))

(declare-datatypes ((List!66911 0))(
  ( (Nil!66787) (Cons!66787 (h!73235 Regex!17114) (t!380654 List!66911)) )
))
(declare-fun l!9142 () List!66911)

(declare-fun generalisedUnion!2589 (List!66911) Regex!17114)

(assert (=> b!6965853 (= res!2842023 (= r!13765 (generalisedUnion!2589 l!9142)))))

(declare-fun b!6965854 () Bool)

(declare-fun e!4187817 () Bool)

(declare-fun tp!1921115 () Bool)

(declare-fun tp!1921111 () Bool)

(assert (=> b!6965854 (= e!4187817 (and tp!1921115 tp!1921111))))

(declare-fun b!6965855 () Bool)

(declare-fun e!4187816 () Bool)

(declare-fun tp!1921110 () Bool)

(declare-fun tp!1921114 () Bool)

(assert (=> b!6965855 (= e!4187816 (and tp!1921110 tp!1921114))))

(declare-fun b!6965856 () Bool)

(declare-fun tp_is_empty!43453 () Bool)

(assert (=> b!6965856 (= e!4187817 tp_is_empty!43453)))

(declare-fun res!2842024 () Bool)

(assert (=> start!668228 (=> (not res!2842024) (not e!4187815))))

(declare-fun lambda!397485 () Int)

(declare-fun forall!15985 (List!66911 Int) Bool)

(assert (=> start!668228 (= res!2842024 (forall!15985 l!9142 lambda!397485))))

(assert (=> start!668228 e!4187815))

(assert (=> start!668228 e!4187816))

(assert (=> start!668228 e!4187817))

(declare-fun b!6965857 () Bool)

(declare-fun tp!1921116 () Bool)

(assert (=> b!6965857 (= e!4187817 tp!1921116)))

(declare-fun b!6965858 () Bool)

(declare-fun tp!1921112 () Bool)

(declare-fun tp!1921113 () Bool)

(assert (=> b!6965858 (= e!4187817 (and tp!1921112 tp!1921113))))

(assert (= (and start!668228 res!2842024) b!6965853))

(assert (= (and b!6965853 res!2842023) b!6965852))

(assert (= (and start!668228 (is-Cons!66787 l!9142)) b!6965855))

(assert (= (and start!668228 (is-ElementMatch!17114 r!13765)) b!6965856))

(assert (= (and start!668228 (is-Concat!25959 r!13765)) b!6965854))

(assert (= (and start!668228 (is-Star!17114 r!13765)) b!6965857))

(assert (= (and start!668228 (is-Union!17114 r!13765)) b!6965858))

(declare-fun m!7657972 () Bool)

(assert (=> b!6965852 m!7657972))

(declare-fun m!7657974 () Bool)

(assert (=> b!6965853 m!7657974))

(declare-fun m!7657976 () Bool)

(assert (=> start!668228 m!7657976))

(push 1)

(assert (not b!6965858))

(assert (not b!6965852))

(assert (not b!6965857))

(assert (not b!6965853))

(assert (not b!6965855))

(assert (not start!668228))

(assert tp_is_empty!43453)

(assert (not b!6965854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1858656 () Bool)

(declare-fun d!2170523 () Bool)

(assert (= bs!1858656 (and d!2170523 start!668228)))

(declare-fun lambda!397491 () Int)

(assert (=> bs!1858656 (= lambda!397491 lambda!397485)))

(declare-fun b!6965904 () Bool)

(declare-fun e!4187847 () Regex!17114)

(declare-fun e!4187848 () Regex!17114)

(assert (=> b!6965904 (= e!4187847 e!4187848)))

(declare-fun c!1291529 () Bool)

(assert (=> b!6965904 (= c!1291529 (is-Cons!66787 l!9142))))

(declare-fun b!6965905 () Bool)

(declare-fun e!4187844 () Bool)

(declare-fun e!4187845 () Bool)

(assert (=> b!6965905 (= e!4187844 e!4187845)))

(declare-fun c!1291528 () Bool)

(declare-fun isEmpty!38993 (List!66911) Bool)

(declare-fun tail!13074 (List!66911) List!66911)

(assert (=> b!6965905 (= c!1291528 (isEmpty!38993 (tail!13074 l!9142)))))

(declare-fun b!6965906 () Bool)

(declare-fun e!4187843 () Bool)

(assert (=> b!6965906 (= e!4187843 e!4187844)))

(declare-fun c!1291530 () Bool)

(assert (=> b!6965906 (= c!1291530 (isEmpty!38993 l!9142))))

(declare-fun b!6965907 () Bool)

(declare-fun lt!2479378 () Regex!17114)

(declare-fun isEmptyLang!2055 (Regex!17114) Bool)

(assert (=> b!6965907 (= e!4187844 (isEmptyLang!2055 lt!2479378))))

(declare-fun b!6965908 () Bool)

(declare-fun e!4187846 () Bool)

(assert (=> b!6965908 (= e!4187846 (isEmpty!38993 (t!380654 l!9142)))))

(declare-fun b!6965909 () Bool)

(assert (=> b!6965909 (= e!4187848 (Union!17114 (h!73235 l!9142) (generalisedUnion!2589 (t!380654 l!9142))))))

(declare-fun b!6965910 () Bool)

(declare-fun isUnion!1483 (Regex!17114) Bool)

(assert (=> b!6965910 (= e!4187845 (isUnion!1483 lt!2479378))))

(declare-fun b!6965911 () Bool)

(assert (=> b!6965911 (= e!4187848 EmptyLang!17114)))

(assert (=> d!2170523 e!4187843))

(declare-fun res!2842040 () Bool)

(assert (=> d!2170523 (=> (not res!2842040) (not e!4187843))))

(assert (=> d!2170523 (= res!2842040 (validRegex!8798 lt!2479378))))

(assert (=> d!2170523 (= lt!2479378 e!4187847)))

(declare-fun c!1291531 () Bool)

(assert (=> d!2170523 (= c!1291531 e!4187846)))

(declare-fun res!2842039 () Bool)

(assert (=> d!2170523 (=> (not res!2842039) (not e!4187846))))

(assert (=> d!2170523 (= res!2842039 (is-Cons!66787 l!9142))))

(assert (=> d!2170523 (forall!15985 l!9142 lambda!397491)))

(assert (=> d!2170523 (= (generalisedUnion!2589 l!9142) lt!2479378)))

(declare-fun b!6965912 () Bool)

(declare-fun head!14006 (List!66911) Regex!17114)

(assert (=> b!6965912 (= e!4187845 (= lt!2479378 (head!14006 l!9142)))))

(declare-fun b!6965913 () Bool)

(assert (=> b!6965913 (= e!4187847 (h!73235 l!9142))))

(assert (= (and d!2170523 res!2842039) b!6965908))

(assert (= (and d!2170523 c!1291531) b!6965913))

(assert (= (and d!2170523 (not c!1291531)) b!6965904))

(assert (= (and b!6965904 c!1291529) b!6965909))

(assert (= (and b!6965904 (not c!1291529)) b!6965911))

(assert (= (and d!2170523 res!2842040) b!6965906))

(assert (= (and b!6965906 c!1291530) b!6965907))

(assert (= (and b!6965906 (not c!1291530)) b!6965905))

(assert (= (and b!6965905 c!1291528) b!6965912))

(assert (= (and b!6965905 (not c!1291528)) b!6965910))

(declare-fun m!7657984 () Bool)

(assert (=> b!6965909 m!7657984))

(declare-fun m!7657986 () Bool)

(assert (=> b!6965906 m!7657986))

(declare-fun m!7657988 () Bool)

(assert (=> b!6965908 m!7657988))

(declare-fun m!7657990 () Bool)

(assert (=> b!6965912 m!7657990))

(declare-fun m!7657992 () Bool)

(assert (=> b!6965910 m!7657992))

(declare-fun m!7657994 () Bool)

(assert (=> b!6965907 m!7657994))

(declare-fun m!7657996 () Bool)

(assert (=> d!2170523 m!7657996))

(declare-fun m!7657998 () Bool)

(assert (=> d!2170523 m!7657998))

(declare-fun m!7658000 () Bool)

(assert (=> b!6965905 m!7658000))

(assert (=> b!6965905 m!7658000))

(declare-fun m!7658002 () Bool)

(assert (=> b!6965905 m!7658002))

(assert (=> b!6965853 d!2170523))

(declare-fun b!6965934 () Bool)

(declare-fun res!2842057 () Bool)

(declare-fun e!4187865 () Bool)

(assert (=> b!6965934 (=> res!2842057 e!4187865)))

(assert (=> b!6965934 (= res!2842057 (not (is-Concat!25959 r!13765)))))

(declare-fun e!4187870 () Bool)

(assert (=> b!6965934 (= e!4187870 e!4187865)))

(declare-fun b!6965935 () Bool)

(declare-fun e!4187871 () Bool)

(declare-fun e!4187866 () Bool)

(assert (=> b!6965935 (= e!4187871 e!4187866)))

(declare-fun res!2842054 () Bool)

(declare-fun nullable!6903 (Regex!17114) Bool)

(assert (=> b!6965935 (= res!2842054 (not (nullable!6903 (reg!17443 r!13765))))))

(assert (=> b!6965935 (=> (not res!2842054) (not e!4187866))))

(declare-fun d!2170527 () Bool)

(declare-fun res!2842056 () Bool)

(declare-fun e!4187869 () Bool)

(assert (=> d!2170527 (=> res!2842056 e!4187869)))

(assert (=> d!2170527 (= res!2842056 (is-ElementMatch!17114 r!13765))))

(assert (=> d!2170527 (= (validRegex!8798 r!13765) e!4187869)))

(declare-fun b!6965936 () Bool)

(declare-fun call!632364 () Bool)

(assert (=> b!6965936 (= e!4187866 call!632364)))

(declare-fun bm!632357 () Bool)

(declare-fun call!632363 () Bool)

(declare-fun c!1291536 () Bool)

(assert (=> bm!632357 (= call!632363 (validRegex!8798 (ite c!1291536 (regOne!34741 r!13765) (regOne!34740 r!13765))))))

(declare-fun bm!632358 () Bool)

(declare-fun call!632362 () Bool)

(assert (=> bm!632358 (= call!632362 call!632364)))

(declare-fun b!6965937 () Bool)

(declare-fun e!4187868 () Bool)

(assert (=> b!6965937 (= e!4187865 e!4187868)))

(declare-fun res!2842055 () Bool)

(assert (=> b!6965937 (=> (not res!2842055) (not e!4187868))))

(assert (=> b!6965937 (= res!2842055 call!632363)))

(declare-fun c!1291537 () Bool)

(declare-fun bm!632359 () Bool)

(assert (=> bm!632359 (= call!632364 (validRegex!8798 (ite c!1291537 (reg!17443 r!13765) (ite c!1291536 (regTwo!34741 r!13765) (regTwo!34740 r!13765)))))))

(declare-fun b!6965938 () Bool)

(declare-fun res!2842053 () Bool)

(declare-fun e!4187867 () Bool)

(assert (=> b!6965938 (=> (not res!2842053) (not e!4187867))))

(assert (=> b!6965938 (= res!2842053 call!632363)))

(assert (=> b!6965938 (= e!4187870 e!4187867)))

(declare-fun b!6965939 () Bool)

(assert (=> b!6965939 (= e!4187869 e!4187871)))

(assert (=> b!6965939 (= c!1291537 (is-Star!17114 r!13765))))

(declare-fun b!6965940 () Bool)

(assert (=> b!6965940 (= e!4187871 e!4187870)))

(assert (=> b!6965940 (= c!1291536 (is-Union!17114 r!13765))))

(declare-fun b!6965941 () Bool)

(assert (=> b!6965941 (= e!4187868 call!632362)))

(declare-fun b!6965942 () Bool)

(assert (=> b!6965942 (= e!4187867 call!632362)))

(assert (= (and d!2170527 (not res!2842056)) b!6965939))

(assert (= (and b!6965939 c!1291537) b!6965935))

(assert (= (and b!6965939 (not c!1291537)) b!6965940))

(assert (= (and b!6965935 res!2842054) b!6965936))

(assert (= (and b!6965940 c!1291536) b!6965938))

(assert (= (and b!6965940 (not c!1291536)) b!6965934))

(assert (= (and b!6965938 res!2842053) b!6965942))

(assert (= (and b!6965934 (not res!2842057)) b!6965937))

(assert (= (and b!6965937 res!2842055) b!6965941))

(assert (= (or b!6965938 b!6965937) bm!632357))

(assert (= (or b!6965942 b!6965941) bm!632358))

(assert (= (or b!6965936 bm!632358) bm!632359))

(declare-fun m!7658008 () Bool)

(assert (=> b!6965935 m!7658008))

(declare-fun m!7658010 () Bool)

(assert (=> bm!632357 m!7658010))

(declare-fun m!7658012 () Bool)

(assert (=> bm!632359 m!7658012))

(assert (=> b!6965852 d!2170527))

(declare-fun d!2170531 () Bool)

(declare-fun res!2842062 () Bool)

(declare-fun e!4187876 () Bool)

(assert (=> d!2170531 (=> res!2842062 e!4187876)))

(assert (=> d!2170531 (= res!2842062 (is-Nil!66787 l!9142))))

(assert (=> d!2170531 (= (forall!15985 l!9142 lambda!397485) e!4187876)))

(declare-fun b!6965947 () Bool)

(declare-fun e!4187877 () Bool)

(assert (=> b!6965947 (= e!4187876 e!4187877)))

(declare-fun res!2842063 () Bool)

(assert (=> b!6965947 (=> (not res!2842063) (not e!4187877))))

(declare-fun dynLambda!26628 (Int Regex!17114) Bool)

(assert (=> b!6965947 (= res!2842063 (dynLambda!26628 lambda!397485 (h!73235 l!9142)))))

(declare-fun b!6965948 () Bool)

(assert (=> b!6965948 (= e!4187877 (forall!15985 (t!380654 l!9142) lambda!397485))))

(assert (= (and d!2170531 (not res!2842062)) b!6965947))

(assert (= (and b!6965947 res!2842063) b!6965948))

(declare-fun b_lambda!260651 () Bool)

(assert (=> (not b_lambda!260651) (not b!6965947)))

(declare-fun m!7658014 () Bool)

(assert (=> b!6965947 m!7658014))

(declare-fun m!7658016 () Bool)

(assert (=> b!6965948 m!7658016))

(assert (=> start!668228 d!2170531))

(declare-fun b!6965962 () Bool)

(declare-fun e!4187880 () Bool)

(declare-fun tp!1921148 () Bool)

(declare-fun tp!1921151 () Bool)

(assert (=> b!6965962 (= e!4187880 (and tp!1921148 tp!1921151))))

(assert (=> b!6965854 (= tp!1921115 e!4187880)))

(declare-fun b!6965960 () Bool)

(declare-fun tp!1921150 () Bool)

(declare-fun tp!1921152 () Bool)

(assert (=> b!6965960 (= e!4187880 (and tp!1921150 tp!1921152))))

(declare-fun b!6965961 () Bool)

(declare-fun tp!1921149 () Bool)

(assert (=> b!6965961 (= e!4187880 tp!1921149)))

(declare-fun b!6965959 () Bool)

(assert (=> b!6965959 (= e!4187880 tp_is_empty!43453)))

(assert (= (and b!6965854 (is-ElementMatch!17114 (regOne!34740 r!13765))) b!6965959))

(assert (= (and b!6965854 (is-Concat!25959 (regOne!34740 r!13765))) b!6965960))

(assert (= (and b!6965854 (is-Star!17114 (regOne!34740 r!13765))) b!6965961))

(assert (= (and b!6965854 (is-Union!17114 (regOne!34740 r!13765))) b!6965962))

(declare-fun b!6965966 () Bool)

(declare-fun e!4187881 () Bool)

(declare-fun tp!1921153 () Bool)

(declare-fun tp!1921156 () Bool)

(assert (=> b!6965966 (= e!4187881 (and tp!1921153 tp!1921156))))

(assert (=> b!6965854 (= tp!1921111 e!4187881)))

(declare-fun b!6965964 () Bool)

(declare-fun tp!1921155 () Bool)

(declare-fun tp!1921157 () Bool)

(assert (=> b!6965964 (= e!4187881 (and tp!1921155 tp!1921157))))

(declare-fun b!6965965 () Bool)

(declare-fun tp!1921154 () Bool)

(assert (=> b!6965965 (= e!4187881 tp!1921154)))

(declare-fun b!6965963 () Bool)

(assert (=> b!6965963 (= e!4187881 tp_is_empty!43453)))

(assert (= (and b!6965854 (is-ElementMatch!17114 (regTwo!34740 r!13765))) b!6965963))

(assert (= (and b!6965854 (is-Concat!25959 (regTwo!34740 r!13765))) b!6965964))

(assert (= (and b!6965854 (is-Star!17114 (regTwo!34740 r!13765))) b!6965965))

(assert (= (and b!6965854 (is-Union!17114 (regTwo!34740 r!13765))) b!6965966))

(declare-fun b!6965970 () Bool)

(declare-fun e!4187882 () Bool)

(declare-fun tp!1921158 () Bool)

(declare-fun tp!1921161 () Bool)

(assert (=> b!6965970 (= e!4187882 (and tp!1921158 tp!1921161))))

(assert (=> b!6965858 (= tp!1921112 e!4187882)))

(declare-fun b!6965968 () Bool)

(declare-fun tp!1921160 () Bool)

(declare-fun tp!1921162 () Bool)

(assert (=> b!6965968 (= e!4187882 (and tp!1921160 tp!1921162))))

(declare-fun b!6965969 () Bool)

(declare-fun tp!1921159 () Bool)

(assert (=> b!6965969 (= e!4187882 tp!1921159)))

(declare-fun b!6965967 () Bool)

(assert (=> b!6965967 (= e!4187882 tp_is_empty!43453)))

(assert (= (and b!6965858 (is-ElementMatch!17114 (regOne!34741 r!13765))) b!6965967))

(assert (= (and b!6965858 (is-Concat!25959 (regOne!34741 r!13765))) b!6965968))

(assert (= (and b!6965858 (is-Star!17114 (regOne!34741 r!13765))) b!6965969))

(assert (= (and b!6965858 (is-Union!17114 (regOne!34741 r!13765))) b!6965970))

(declare-fun b!6965974 () Bool)

(declare-fun e!4187883 () Bool)

(declare-fun tp!1921163 () Bool)

(declare-fun tp!1921166 () Bool)

(assert (=> b!6965974 (= e!4187883 (and tp!1921163 tp!1921166))))

(assert (=> b!6965858 (= tp!1921113 e!4187883)))

(declare-fun b!6965972 () Bool)

(declare-fun tp!1921165 () Bool)

(declare-fun tp!1921167 () Bool)

(assert (=> b!6965972 (= e!4187883 (and tp!1921165 tp!1921167))))

(declare-fun b!6965973 () Bool)

(declare-fun tp!1921164 () Bool)

(assert (=> b!6965973 (= e!4187883 tp!1921164)))

(declare-fun b!6965971 () Bool)

(assert (=> b!6965971 (= e!4187883 tp_is_empty!43453)))

(assert (= (and b!6965858 (is-ElementMatch!17114 (regTwo!34741 r!13765))) b!6965971))

(assert (= (and b!6965858 (is-Concat!25959 (regTwo!34741 r!13765))) b!6965972))

(assert (= (and b!6965858 (is-Star!17114 (regTwo!34741 r!13765))) b!6965973))

(assert (= (and b!6965858 (is-Union!17114 (regTwo!34741 r!13765))) b!6965974))

(declare-fun b!6965978 () Bool)

(declare-fun e!4187884 () Bool)

(declare-fun tp!1921168 () Bool)

(declare-fun tp!1921171 () Bool)

(assert (=> b!6965978 (= e!4187884 (and tp!1921168 tp!1921171))))

(assert (=> b!6965857 (= tp!1921116 e!4187884)))

(declare-fun b!6965976 () Bool)

(declare-fun tp!1921170 () Bool)

(declare-fun tp!1921172 () Bool)

(assert (=> b!6965976 (= e!4187884 (and tp!1921170 tp!1921172))))

(declare-fun b!6965977 () Bool)

(declare-fun tp!1921169 () Bool)

(assert (=> b!6965977 (= e!4187884 tp!1921169)))

(declare-fun b!6965975 () Bool)

(assert (=> b!6965975 (= e!4187884 tp_is_empty!43453)))

(assert (= (and b!6965857 (is-ElementMatch!17114 (reg!17443 r!13765))) b!6965975))

(assert (= (and b!6965857 (is-Concat!25959 (reg!17443 r!13765))) b!6965976))

(assert (= (and b!6965857 (is-Star!17114 (reg!17443 r!13765))) b!6965977))

(assert (= (and b!6965857 (is-Union!17114 (reg!17443 r!13765))) b!6965978))

(declare-fun b!6965982 () Bool)

(declare-fun e!4187885 () Bool)

(declare-fun tp!1921173 () Bool)

(declare-fun tp!1921176 () Bool)

(assert (=> b!6965982 (= e!4187885 (and tp!1921173 tp!1921176))))

(assert (=> b!6965855 (= tp!1921110 e!4187885)))

(declare-fun b!6965980 () Bool)

(declare-fun tp!1921175 () Bool)

(declare-fun tp!1921177 () Bool)

(assert (=> b!6965980 (= e!4187885 (and tp!1921175 tp!1921177))))

(declare-fun b!6965981 () Bool)

(declare-fun tp!1921174 () Bool)

(assert (=> b!6965981 (= e!4187885 tp!1921174)))

(declare-fun b!6965979 () Bool)

(assert (=> b!6965979 (= e!4187885 tp_is_empty!43453)))

(assert (= (and b!6965855 (is-ElementMatch!17114 (h!73235 l!9142))) b!6965979))

(assert (= (and b!6965855 (is-Concat!25959 (h!73235 l!9142))) b!6965980))

(assert (= (and b!6965855 (is-Star!17114 (h!73235 l!9142))) b!6965981))

(assert (= (and b!6965855 (is-Union!17114 (h!73235 l!9142))) b!6965982))

(declare-fun b!6965987 () Bool)

(declare-fun e!4187888 () Bool)

(declare-fun tp!1921182 () Bool)

(declare-fun tp!1921183 () Bool)

(assert (=> b!6965987 (= e!4187888 (and tp!1921182 tp!1921183))))

(assert (=> b!6965855 (= tp!1921114 e!4187888)))

(assert (= (and b!6965855 (is-Cons!66787 (t!380654 l!9142))) b!6965987))

(declare-fun b_lambda!260653 () Bool)

(assert (= b_lambda!260651 (or start!668228 b_lambda!260653)))

(declare-fun bs!1858657 () Bool)

(declare-fun d!2170533 () Bool)

(assert (= bs!1858657 (and d!2170533 start!668228)))

(assert (=> bs!1858657 (= (dynLambda!26628 lambda!397485 (h!73235 l!9142)) (validRegex!8798 (h!73235 l!9142)))))

(declare-fun m!7658018 () Bool)

(assert (=> bs!1858657 m!7658018))

(assert (=> b!6965947 d!2170533))

(push 1)

(assert (not b!6965974))

(assert (not b!6965961))

(assert (not b!6965976))

(assert (not b!6965948))

(assert (not b!6965935))

(assert tp_is_empty!43453)

(assert (not b!6965909))

(assert (not b!6965972))

(assert (not b!6965987))

(assert (not b!6965908))

(assert (not b!6965977))

(assert (not b!6965969))

(assert (not b!6965968))

(assert (not b_lambda!260653))

(assert (not b!6965962))

(assert (not bs!1858657))

(assert (not b!6965907))

(assert (not bm!632359))

(assert (not b!6965912))

(assert (not b!6965982))

(assert (not b!6965960))

(assert (not b!6965966))

(assert (not b!6965964))

(assert (not b!6965978))

(assert (not b!6965905))

(assert (not b!6965981))

(assert (not b!6965970))

(assert (not bm!632357))

(assert (not b!6965910))

(assert (not b!6965973))

(assert (not d!2170523))

(assert (not b!6965980))

(assert (not b!6965906))

(assert (not b!6965965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

