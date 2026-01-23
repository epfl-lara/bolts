; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697106 () Bool)

(assert start!697106)

(declare-fun b!7149768 () Bool)

(declare-fun e!4296105 () Bool)

(declare-fun tp!1974034 () Bool)

(declare-fun tp!1974035 () Bool)

(assert (=> b!7149768 (= e!4296105 (and tp!1974034 tp!1974035))))

(declare-fun b!7149769 () Bool)

(declare-fun res!2916478 () Bool)

(declare-fun e!4296107 () Bool)

(assert (=> b!7149769 (=> (not res!2916478) (not e!4296107))))

(declare-fun e!4296108 () Bool)

(assert (=> b!7149769 (= res!2916478 e!4296108)))

(declare-fun res!2916474 () Bool)

(assert (=> b!7149769 (=> res!2916474 e!4296108)))

(declare-datatypes ((C!36750 0))(
  ( (C!36751 (val!28323 Int)) )
))
(declare-datatypes ((Regex!18238 0))(
  ( (ElementMatch!18238 (c!1333029 C!36750)) (Concat!27083 (regOne!36988 Regex!18238) (regTwo!36988 Regex!18238)) (EmptyExpr!18238) (Star!18238 (reg!18567 Regex!18238)) (EmptyLang!18238) (Union!18238 (regOne!36989 Regex!18238) (regTwo!36989 Regex!18238)) )
))
(declare-datatypes ((List!69542 0))(
  ( (Nil!69418) (Cons!69418 (h!75866 Regex!18238) (t!383559 List!69542)) )
))
(declare-fun l!9154 () List!69542)

(assert (=> b!7149769 (= res!2916474 (not (is-Cons!69418 l!9154)))))

(declare-fun b!7149770 () Bool)

(declare-fun isEmpty!40108 (List!69542) Bool)

(assert (=> b!7149770 (= e!4296108 (not (isEmpty!40108 (t!383559 l!9154))))))

(declare-fun b!7149771 () Bool)

(declare-fun res!2916476 () Bool)

(assert (=> b!7149771 (=> (not res!2916476) (not e!4296107))))

(declare-fun r!13911 () Regex!18238)

(declare-fun generalisedConcat!2413 (List!69542) Regex!18238)

(assert (=> b!7149771 (= res!2916476 (= (regTwo!36988 r!13911) (generalisedConcat!2413 (t!383559 l!9154))))))

(declare-fun b!7149772 () Bool)

(declare-fun e!4296106 () Bool)

(declare-fun tp!1974038 () Bool)

(declare-fun tp!1974033 () Bool)

(assert (=> b!7149772 (= e!4296106 (and tp!1974038 tp!1974033))))

(declare-fun b!7149773 () Bool)

(declare-fun tp_is_empty!46113 () Bool)

(assert (=> b!7149773 (= e!4296105 tp_is_empty!46113)))

(declare-fun b!7149774 () Bool)

(declare-fun tp!1974037 () Bool)

(assert (=> b!7149774 (= e!4296105 tp!1974037)))

(declare-fun b!7149775 () Bool)

(declare-fun res!2916477 () Bool)

(assert (=> b!7149775 (=> (not res!2916477) (not e!4296107))))

(declare-fun lambda!436055 () Int)

(declare-fun forall!17078 (List!69542 Int) Bool)

(assert (=> b!7149775 (= res!2916477 (forall!17078 (t!383559 l!9154) lambda!436055))))

(declare-fun res!2916473 () Bool)

(assert (=> start!697106 (=> (not res!2916473) (not e!4296107))))

(assert (=> start!697106 (= res!2916473 (forall!17078 l!9154 lambda!436055))))

(assert (=> start!697106 e!4296107))

(assert (=> start!697106 e!4296106))

(assert (=> start!697106 e!4296105))

(declare-fun b!7149776 () Bool)

(declare-fun size!41512 (List!69542) Int)

(assert (=> b!7149776 (= e!4296107 (>= (size!41512 (t!383559 l!9154)) (size!41512 l!9154)))))

(declare-fun b!7149777 () Bool)

(declare-fun tp!1974032 () Bool)

(declare-fun tp!1974036 () Bool)

(assert (=> b!7149777 (= e!4296105 (and tp!1974032 tp!1974036))))

(declare-fun b!7149778 () Bool)

(declare-fun res!2916475 () Bool)

(assert (=> b!7149778 (=> (not res!2916475) (not e!4296107))))

(assert (=> b!7149778 (= res!2916475 (= r!13911 (generalisedConcat!2413 l!9154)))))

(declare-fun b!7149779 () Bool)

(declare-fun res!2916472 () Bool)

(assert (=> b!7149779 (=> (not res!2916472) (not e!4296107))))

(assert (=> b!7149779 (= res!2916472 (and (is-Cons!69418 l!9154) (is-Concat!27083 r!13911)))))

(assert (= (and start!697106 res!2916473) b!7149778))

(assert (= (and b!7149778 res!2916475) b!7149769))

(assert (= (and b!7149769 (not res!2916474)) b!7149770))

(assert (= (and b!7149769 res!2916478) b!7149779))

(assert (= (and b!7149779 res!2916472) b!7149775))

(assert (= (and b!7149775 res!2916477) b!7149771))

(assert (= (and b!7149771 res!2916476) b!7149776))

(assert (= (and start!697106 (is-Cons!69418 l!9154)) b!7149772))

(assert (= (and start!697106 (is-ElementMatch!18238 r!13911)) b!7149773))

(assert (= (and start!697106 (is-Concat!27083 r!13911)) b!7149777))

(assert (= (and start!697106 (is-Star!18238 r!13911)) b!7149774))

(assert (= (and start!697106 (is-Union!18238 r!13911)) b!7149768))

(declare-fun m!7860724 () Bool)

(assert (=> b!7149771 m!7860724))

(declare-fun m!7860726 () Bool)

(assert (=> b!7149776 m!7860726))

(declare-fun m!7860728 () Bool)

(assert (=> b!7149776 m!7860728))

(declare-fun m!7860730 () Bool)

(assert (=> b!7149778 m!7860730))

(declare-fun m!7860732 () Bool)

(assert (=> b!7149775 m!7860732))

(declare-fun m!7860734 () Bool)

(assert (=> b!7149770 m!7860734))

(declare-fun m!7860736 () Bool)

(assert (=> start!697106 m!7860736))

(push 1)

(assert (not b!7149775))

(assert (not b!7149771))

(assert (not b!7149770))

(assert (not b!7149777))

(assert (not b!7149778))

(assert (not b!7149772))

(assert (not start!697106))

(assert tp_is_empty!46113)

(assert (not b!7149774))

(assert (not b!7149768))

(assert (not b!7149776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228668 () Bool)

(declare-fun lt!2569053 () Int)

(assert (=> d!2228668 (>= lt!2569053 0)))

(declare-fun e!4296123 () Int)

(assert (=> d!2228668 (= lt!2569053 e!4296123)))

(declare-fun c!1333033 () Bool)

(assert (=> d!2228668 (= c!1333033 (is-Nil!69418 (t!383559 l!9154)))))

(assert (=> d!2228668 (= (size!41512 (t!383559 l!9154)) lt!2569053)))

(declare-fun b!7149820 () Bool)

(assert (=> b!7149820 (= e!4296123 0)))

(declare-fun b!7149821 () Bool)

(assert (=> b!7149821 (= e!4296123 (+ 1 (size!41512 (t!383559 (t!383559 l!9154)))))))

(assert (= (and d!2228668 c!1333033) b!7149820))

(assert (= (and d!2228668 (not c!1333033)) b!7149821))

(declare-fun m!7860752 () Bool)

(assert (=> b!7149821 m!7860752))

(assert (=> b!7149776 d!2228668))

(declare-fun d!2228670 () Bool)

(declare-fun lt!2569054 () Int)

(assert (=> d!2228670 (>= lt!2569054 0)))

(declare-fun e!4296124 () Int)

(assert (=> d!2228670 (= lt!2569054 e!4296124)))

(declare-fun c!1333034 () Bool)

(assert (=> d!2228670 (= c!1333034 (is-Nil!69418 l!9154))))

(assert (=> d!2228670 (= (size!41512 l!9154) lt!2569054)))

(declare-fun b!7149822 () Bool)

(assert (=> b!7149822 (= e!4296124 0)))

(declare-fun b!7149823 () Bool)

(assert (=> b!7149823 (= e!4296124 (+ 1 (size!41512 (t!383559 l!9154))))))

(assert (= (and d!2228670 c!1333034) b!7149822))

(assert (= (and d!2228670 (not c!1333034)) b!7149823))

(assert (=> b!7149823 m!7860726))

(assert (=> b!7149776 d!2228670))

(declare-fun bs!1889454 () Bool)

(declare-fun d!2228672 () Bool)

(assert (= bs!1889454 (and d!2228672 start!697106)))

(declare-fun lambda!436063 () Int)

(assert (=> bs!1889454 (= lambda!436063 lambda!436055)))

(declare-fun b!7149845 () Bool)

(declare-fun e!4296139 () Bool)

(declare-fun lt!2569057 () Regex!18238)

(declare-fun head!14545 (List!69542) Regex!18238)

(assert (=> b!7149845 (= e!4296139 (= lt!2569057 (head!14545 (t!383559 l!9154))))))

(declare-fun b!7149846 () Bool)

(declare-fun isConcat!1586 (Regex!18238) Bool)

(assert (=> b!7149846 (= e!4296139 (isConcat!1586 lt!2569057))))

(declare-fun b!7149847 () Bool)

(declare-fun e!4296140 () Regex!18238)

(assert (=> b!7149847 (= e!4296140 EmptyExpr!18238)))

(declare-fun b!7149848 () Bool)

(declare-fun e!4296142 () Regex!18238)

(assert (=> b!7149848 (= e!4296142 (h!75866 (t!383559 l!9154)))))

(declare-fun b!7149849 () Bool)

(declare-fun e!4296138 () Bool)

(declare-fun e!4296141 () Bool)

(assert (=> b!7149849 (= e!4296138 e!4296141)))

(declare-fun c!1333044 () Bool)

(assert (=> b!7149849 (= c!1333044 (isEmpty!40108 (t!383559 l!9154)))))

(declare-fun b!7149850 () Bool)

(declare-fun e!4296137 () Bool)

(assert (=> b!7149850 (= e!4296137 (isEmpty!40108 (t!383559 (t!383559 l!9154))))))

(declare-fun b!7149851 () Bool)

(assert (=> b!7149851 (= e!4296141 e!4296139)))

(declare-fun c!1333046 () Bool)

(declare-fun tail!14014 (List!69542) List!69542)

(assert (=> b!7149851 (= c!1333046 (isEmpty!40108 (tail!14014 (t!383559 l!9154))))))

(declare-fun b!7149852 () Bool)

(declare-fun isEmptyExpr!2064 (Regex!18238) Bool)

(assert (=> b!7149852 (= e!4296141 (isEmptyExpr!2064 lt!2569057))))

(declare-fun b!7149853 () Bool)

(assert (=> b!7149853 (= e!4296140 (Concat!27083 (h!75866 (t!383559 l!9154)) (generalisedConcat!2413 (t!383559 (t!383559 l!9154)))))))

(assert (=> d!2228672 e!4296138))

(declare-fun res!2916505 () Bool)

(assert (=> d!2228672 (=> (not res!2916505) (not e!4296138))))

(declare-fun validRegex!9393 (Regex!18238) Bool)

(assert (=> d!2228672 (= res!2916505 (validRegex!9393 lt!2569057))))

(assert (=> d!2228672 (= lt!2569057 e!4296142)))

(declare-fun c!1333043 () Bool)

(assert (=> d!2228672 (= c!1333043 e!4296137)))

(declare-fun res!2916504 () Bool)

(assert (=> d!2228672 (=> (not res!2916504) (not e!4296137))))

(assert (=> d!2228672 (= res!2916504 (is-Cons!69418 (t!383559 l!9154)))))

(assert (=> d!2228672 (forall!17078 (t!383559 l!9154) lambda!436063)))

(assert (=> d!2228672 (= (generalisedConcat!2413 (t!383559 l!9154)) lt!2569057)))

(declare-fun b!7149844 () Bool)

(assert (=> b!7149844 (= e!4296142 e!4296140)))

(declare-fun c!1333045 () Bool)

(assert (=> b!7149844 (= c!1333045 (is-Cons!69418 (t!383559 l!9154)))))

(assert (= (and d!2228672 res!2916504) b!7149850))

(assert (= (and d!2228672 c!1333043) b!7149848))

(assert (= (and d!2228672 (not c!1333043)) b!7149844))

(assert (= (and b!7149844 c!1333045) b!7149853))

(assert (= (and b!7149844 (not c!1333045)) b!7149847))

(assert (= (and d!2228672 res!2916505) b!7149849))

(assert (= (and b!7149849 c!1333044) b!7149852))

(assert (= (and b!7149849 (not c!1333044)) b!7149851))

(assert (= (and b!7149851 c!1333046) b!7149845))

(assert (= (and b!7149851 (not c!1333046)) b!7149846))

(declare-fun m!7860754 () Bool)

(assert (=> b!7149850 m!7860754))

(declare-fun m!7860756 () Bool)

(assert (=> b!7149845 m!7860756))

(declare-fun m!7860758 () Bool)

(assert (=> d!2228672 m!7860758))

(declare-fun m!7860760 () Bool)

(assert (=> d!2228672 m!7860760))

(declare-fun m!7860762 () Bool)

(assert (=> b!7149851 m!7860762))

(assert (=> b!7149851 m!7860762))

(declare-fun m!7860764 () Bool)

(assert (=> b!7149851 m!7860764))

(declare-fun m!7860766 () Bool)

(assert (=> b!7149846 m!7860766))

(assert (=> b!7149849 m!7860734))

(declare-fun m!7860768 () Bool)

(assert (=> b!7149853 m!7860768))

(declare-fun m!7860770 () Bool)

(assert (=> b!7149852 m!7860770))

(assert (=> b!7149771 d!2228672))

(declare-fun d!2228676 () Bool)

(declare-fun res!2916510 () Bool)

(declare-fun e!4296147 () Bool)

(assert (=> d!2228676 (=> res!2916510 e!4296147)))

(assert (=> d!2228676 (= res!2916510 (is-Nil!69418 l!9154))))

(assert (=> d!2228676 (= (forall!17078 l!9154 lambda!436055) e!4296147)))

(declare-fun b!7149858 () Bool)

(declare-fun e!4296148 () Bool)

(assert (=> b!7149858 (= e!4296147 e!4296148)))

(declare-fun res!2916511 () Bool)

(assert (=> b!7149858 (=> (not res!2916511) (not e!4296148))))

(declare-fun dynLambda!28279 (Int Regex!18238) Bool)

(assert (=> b!7149858 (= res!2916511 (dynLambda!28279 lambda!436055 (h!75866 l!9154)))))

(declare-fun b!7149859 () Bool)

(assert (=> b!7149859 (= e!4296148 (forall!17078 (t!383559 l!9154) lambda!436055))))

(assert (= (and d!2228676 (not res!2916510)) b!7149858))

(assert (= (and b!7149858 res!2916511) b!7149859))

(declare-fun b_lambda!272939 () Bool)

(assert (=> (not b_lambda!272939) (not b!7149858)))

(declare-fun m!7860772 () Bool)

(assert (=> b!7149858 m!7860772))

(assert (=> b!7149859 m!7860732))

(assert (=> start!697106 d!2228676))

(declare-fun d!2228678 () Bool)

(declare-fun res!2916512 () Bool)

(declare-fun e!4296149 () Bool)

(assert (=> d!2228678 (=> res!2916512 e!4296149)))

(assert (=> d!2228678 (= res!2916512 (is-Nil!69418 (t!383559 l!9154)))))

(assert (=> d!2228678 (= (forall!17078 (t!383559 l!9154) lambda!436055) e!4296149)))

(declare-fun b!7149860 () Bool)

(declare-fun e!4296150 () Bool)

(assert (=> b!7149860 (= e!4296149 e!4296150)))

(declare-fun res!2916513 () Bool)

(assert (=> b!7149860 (=> (not res!2916513) (not e!4296150))))

(assert (=> b!7149860 (= res!2916513 (dynLambda!28279 lambda!436055 (h!75866 (t!383559 l!9154))))))

(declare-fun b!7149861 () Bool)

(assert (=> b!7149861 (= e!4296150 (forall!17078 (t!383559 (t!383559 l!9154)) lambda!436055))))

(assert (= (and d!2228678 (not res!2916512)) b!7149860))

(assert (= (and b!7149860 res!2916513) b!7149861))

(declare-fun b_lambda!272941 () Bool)

(assert (=> (not b_lambda!272941) (not b!7149860)))

(declare-fun m!7860774 () Bool)

(assert (=> b!7149860 m!7860774))

(declare-fun m!7860776 () Bool)

(assert (=> b!7149861 m!7860776))

(assert (=> b!7149775 d!2228678))

(declare-fun d!2228680 () Bool)

(assert (=> d!2228680 (= (isEmpty!40108 (t!383559 l!9154)) (is-Nil!69418 (t!383559 l!9154)))))

(assert (=> b!7149770 d!2228680))

(declare-fun bs!1889455 () Bool)

(declare-fun d!2228682 () Bool)

(assert (= bs!1889455 (and d!2228682 start!697106)))

(declare-fun lambda!436064 () Int)

(assert (=> bs!1889455 (= lambda!436064 lambda!436055)))

(declare-fun bs!1889456 () Bool)

(assert (= bs!1889456 (and d!2228682 d!2228672)))

(assert (=> bs!1889456 (= lambda!436064 lambda!436063)))

(declare-fun b!7149863 () Bool)

(declare-fun e!4296153 () Bool)

(declare-fun lt!2569058 () Regex!18238)

(assert (=> b!7149863 (= e!4296153 (= lt!2569058 (head!14545 l!9154)))))

(declare-fun b!7149864 () Bool)

(assert (=> b!7149864 (= e!4296153 (isConcat!1586 lt!2569058))))

(declare-fun b!7149865 () Bool)

(declare-fun e!4296154 () Regex!18238)

(assert (=> b!7149865 (= e!4296154 EmptyExpr!18238)))

(declare-fun b!7149866 () Bool)

(declare-fun e!4296156 () Regex!18238)

(assert (=> b!7149866 (= e!4296156 (h!75866 l!9154))))

(declare-fun b!7149867 () Bool)

(declare-fun e!4296152 () Bool)

(declare-fun e!4296155 () Bool)

(assert (=> b!7149867 (= e!4296152 e!4296155)))

(declare-fun c!1333048 () Bool)

(assert (=> b!7149867 (= c!1333048 (isEmpty!40108 l!9154))))

(declare-fun b!7149868 () Bool)

(declare-fun e!4296151 () Bool)

(assert (=> b!7149868 (= e!4296151 (isEmpty!40108 (t!383559 l!9154)))))

(declare-fun b!7149869 () Bool)

(assert (=> b!7149869 (= e!4296155 e!4296153)))

(declare-fun c!1333050 () Bool)

(assert (=> b!7149869 (= c!1333050 (isEmpty!40108 (tail!14014 l!9154)))))

(declare-fun b!7149870 () Bool)

(assert (=> b!7149870 (= e!4296155 (isEmptyExpr!2064 lt!2569058))))

(declare-fun b!7149871 () Bool)

(assert (=> b!7149871 (= e!4296154 (Concat!27083 (h!75866 l!9154) (generalisedConcat!2413 (t!383559 l!9154))))))

(assert (=> d!2228682 e!4296152))

(declare-fun res!2916515 () Bool)

(assert (=> d!2228682 (=> (not res!2916515) (not e!4296152))))

(assert (=> d!2228682 (= res!2916515 (validRegex!9393 lt!2569058))))

(assert (=> d!2228682 (= lt!2569058 e!4296156)))

(declare-fun c!1333047 () Bool)

(assert (=> d!2228682 (= c!1333047 e!4296151)))

(declare-fun res!2916514 () Bool)

(assert (=> d!2228682 (=> (not res!2916514) (not e!4296151))))

(assert (=> d!2228682 (= res!2916514 (is-Cons!69418 l!9154))))

(assert (=> d!2228682 (forall!17078 l!9154 lambda!436064)))

(assert (=> d!2228682 (= (generalisedConcat!2413 l!9154) lt!2569058)))

(declare-fun b!7149862 () Bool)

(assert (=> b!7149862 (= e!4296156 e!4296154)))

(declare-fun c!1333049 () Bool)

(assert (=> b!7149862 (= c!1333049 (is-Cons!69418 l!9154))))

(assert (= (and d!2228682 res!2916514) b!7149868))

(assert (= (and d!2228682 c!1333047) b!7149866))

(assert (= (and d!2228682 (not c!1333047)) b!7149862))

(assert (= (and b!7149862 c!1333049) b!7149871))

(assert (= (and b!7149862 (not c!1333049)) b!7149865))

(assert (= (and d!2228682 res!2916515) b!7149867))

(assert (= (and b!7149867 c!1333048) b!7149870))

(assert (= (and b!7149867 (not c!1333048)) b!7149869))

(assert (= (and b!7149869 c!1333050) b!7149863))

(assert (= (and b!7149869 (not c!1333050)) b!7149864))

(assert (=> b!7149868 m!7860734))

(declare-fun m!7860778 () Bool)

(assert (=> b!7149863 m!7860778))

(declare-fun m!7860780 () Bool)

(assert (=> d!2228682 m!7860780))

(declare-fun m!7860782 () Bool)

(assert (=> d!2228682 m!7860782))

(declare-fun m!7860784 () Bool)

(assert (=> b!7149869 m!7860784))

(assert (=> b!7149869 m!7860784))

(declare-fun m!7860786 () Bool)

(assert (=> b!7149869 m!7860786))

(declare-fun m!7860788 () Bool)

(assert (=> b!7149864 m!7860788))

(declare-fun m!7860790 () Bool)

(assert (=> b!7149867 m!7860790))

(assert (=> b!7149871 m!7860724))

(declare-fun m!7860792 () Bool)

(assert (=> b!7149870 m!7860792))

(assert (=> b!7149778 d!2228682))

(declare-fun b!7149885 () Bool)

(declare-fun e!4296159 () Bool)

(declare-fun tp!1974072 () Bool)

(declare-fun tp!1974074 () Bool)

(assert (=> b!7149885 (= e!4296159 (and tp!1974072 tp!1974074))))

(declare-fun b!7149883 () Bool)

(declare-fun tp!1974071 () Bool)

(declare-fun tp!1974070 () Bool)

(assert (=> b!7149883 (= e!4296159 (and tp!1974071 tp!1974070))))

(declare-fun b!7149884 () Bool)

(declare-fun tp!1974073 () Bool)

(assert (=> b!7149884 (= e!4296159 tp!1974073)))

(declare-fun b!7149882 () Bool)

(assert (=> b!7149882 (= e!4296159 tp_is_empty!46113)))

(assert (=> b!7149768 (= tp!1974034 e!4296159)))

(assert (= (and b!7149768 (is-ElementMatch!18238 (regOne!36989 r!13911))) b!7149882))

(assert (= (and b!7149768 (is-Concat!27083 (regOne!36989 r!13911))) b!7149883))

(assert (= (and b!7149768 (is-Star!18238 (regOne!36989 r!13911))) b!7149884))

(assert (= (and b!7149768 (is-Union!18238 (regOne!36989 r!13911))) b!7149885))

(declare-fun b!7149889 () Bool)

(declare-fun e!4296160 () Bool)

(declare-fun tp!1974077 () Bool)

(declare-fun tp!1974079 () Bool)

(assert (=> b!7149889 (= e!4296160 (and tp!1974077 tp!1974079))))

(declare-fun b!7149887 () Bool)

(declare-fun tp!1974076 () Bool)

(declare-fun tp!1974075 () Bool)

(assert (=> b!7149887 (= e!4296160 (and tp!1974076 tp!1974075))))

(declare-fun b!7149888 () Bool)

(declare-fun tp!1974078 () Bool)

(assert (=> b!7149888 (= e!4296160 tp!1974078)))

(declare-fun b!7149886 () Bool)

(assert (=> b!7149886 (= e!4296160 tp_is_empty!46113)))

(assert (=> b!7149768 (= tp!1974035 e!4296160)))

(assert (= (and b!7149768 (is-ElementMatch!18238 (regTwo!36989 r!13911))) b!7149886))

(assert (= (and b!7149768 (is-Concat!27083 (regTwo!36989 r!13911))) b!7149887))

(assert (= (and b!7149768 (is-Star!18238 (regTwo!36989 r!13911))) b!7149888))

(assert (= (and b!7149768 (is-Union!18238 (regTwo!36989 r!13911))) b!7149889))

(declare-fun b!7149893 () Bool)

(declare-fun e!4296161 () Bool)

(declare-fun tp!1974082 () Bool)

(declare-fun tp!1974084 () Bool)

(assert (=> b!7149893 (= e!4296161 (and tp!1974082 tp!1974084))))

(declare-fun b!7149891 () Bool)

(declare-fun tp!1974081 () Bool)

(declare-fun tp!1974080 () Bool)

(assert (=> b!7149891 (= e!4296161 (and tp!1974081 tp!1974080))))

(declare-fun b!7149892 () Bool)

(declare-fun tp!1974083 () Bool)

(assert (=> b!7149892 (= e!4296161 tp!1974083)))

(declare-fun b!7149890 () Bool)

(assert (=> b!7149890 (= e!4296161 tp_is_empty!46113)))

(assert (=> b!7149774 (= tp!1974037 e!4296161)))

(assert (= (and b!7149774 (is-ElementMatch!18238 (reg!18567 r!13911))) b!7149890))

(assert (= (and b!7149774 (is-Concat!27083 (reg!18567 r!13911))) b!7149891))

(assert (= (and b!7149774 (is-Star!18238 (reg!18567 r!13911))) b!7149892))

(assert (= (and b!7149774 (is-Union!18238 (reg!18567 r!13911))) b!7149893))

(declare-fun b!7149897 () Bool)

(declare-fun e!4296162 () Bool)

(declare-fun tp!1974087 () Bool)

(declare-fun tp!1974089 () Bool)

(assert (=> b!7149897 (= e!4296162 (and tp!1974087 tp!1974089))))

(declare-fun b!7149895 () Bool)

(declare-fun tp!1974086 () Bool)

(declare-fun tp!1974085 () Bool)

(assert (=> b!7149895 (= e!4296162 (and tp!1974086 tp!1974085))))

(declare-fun b!7149896 () Bool)

(declare-fun tp!1974088 () Bool)

(assert (=> b!7149896 (= e!4296162 tp!1974088)))

(declare-fun b!7149894 () Bool)

(assert (=> b!7149894 (= e!4296162 tp_is_empty!46113)))

(assert (=> b!7149777 (= tp!1974032 e!4296162)))

(assert (= (and b!7149777 (is-ElementMatch!18238 (regOne!36988 r!13911))) b!7149894))

(assert (= (and b!7149777 (is-Concat!27083 (regOne!36988 r!13911))) b!7149895))

(assert (= (and b!7149777 (is-Star!18238 (regOne!36988 r!13911))) b!7149896))

(assert (= (and b!7149777 (is-Union!18238 (regOne!36988 r!13911))) b!7149897))

(declare-fun b!7149901 () Bool)

(declare-fun e!4296163 () Bool)

(declare-fun tp!1974092 () Bool)

(declare-fun tp!1974094 () Bool)

(assert (=> b!7149901 (= e!4296163 (and tp!1974092 tp!1974094))))

(declare-fun b!7149899 () Bool)

(declare-fun tp!1974091 () Bool)

(declare-fun tp!1974090 () Bool)

(assert (=> b!7149899 (= e!4296163 (and tp!1974091 tp!1974090))))

(declare-fun b!7149900 () Bool)

(declare-fun tp!1974093 () Bool)

(assert (=> b!7149900 (= e!4296163 tp!1974093)))

(declare-fun b!7149898 () Bool)

(assert (=> b!7149898 (= e!4296163 tp_is_empty!46113)))

(assert (=> b!7149777 (= tp!1974036 e!4296163)))

(assert (= (and b!7149777 (is-ElementMatch!18238 (regTwo!36988 r!13911))) b!7149898))

(assert (= (and b!7149777 (is-Concat!27083 (regTwo!36988 r!13911))) b!7149899))

(assert (= (and b!7149777 (is-Star!18238 (regTwo!36988 r!13911))) b!7149900))

(assert (= (and b!7149777 (is-Union!18238 (regTwo!36988 r!13911))) b!7149901))

(declare-fun b!7149905 () Bool)

(declare-fun e!4296164 () Bool)

(declare-fun tp!1974097 () Bool)

(declare-fun tp!1974099 () Bool)

(assert (=> b!7149905 (= e!4296164 (and tp!1974097 tp!1974099))))

(declare-fun b!7149903 () Bool)

(declare-fun tp!1974096 () Bool)

(declare-fun tp!1974095 () Bool)

(assert (=> b!7149903 (= e!4296164 (and tp!1974096 tp!1974095))))

(declare-fun b!7149904 () Bool)

(declare-fun tp!1974098 () Bool)

(assert (=> b!7149904 (= e!4296164 tp!1974098)))

(declare-fun b!7149902 () Bool)

(assert (=> b!7149902 (= e!4296164 tp_is_empty!46113)))

(assert (=> b!7149772 (= tp!1974038 e!4296164)))

(assert (= (and b!7149772 (is-ElementMatch!18238 (h!75866 l!9154))) b!7149902))

(assert (= (and b!7149772 (is-Concat!27083 (h!75866 l!9154))) b!7149903))

(assert (= (and b!7149772 (is-Star!18238 (h!75866 l!9154))) b!7149904))

(assert (= (and b!7149772 (is-Union!18238 (h!75866 l!9154))) b!7149905))

(declare-fun b!7149910 () Bool)

(declare-fun e!4296167 () Bool)

(declare-fun tp!1974104 () Bool)

(declare-fun tp!1974105 () Bool)

(assert (=> b!7149910 (= e!4296167 (and tp!1974104 tp!1974105))))

(assert (=> b!7149772 (= tp!1974033 e!4296167)))

(assert (= (and b!7149772 (is-Cons!69418 (t!383559 l!9154))) b!7149910))

(declare-fun b_lambda!272943 () Bool)

(assert (= b_lambda!272941 (or start!697106 b_lambda!272943)))

(declare-fun bs!1889457 () Bool)

(declare-fun d!2228684 () Bool)

(assert (= bs!1889457 (and d!2228684 start!697106)))

(assert (=> bs!1889457 (= (dynLambda!28279 lambda!436055 (h!75866 (t!383559 l!9154))) (validRegex!9393 (h!75866 (t!383559 l!9154))))))

(declare-fun m!7860794 () Bool)

(assert (=> bs!1889457 m!7860794))

(assert (=> b!7149860 d!2228684))

(declare-fun b_lambda!272945 () Bool)

(assert (= b_lambda!272939 (or start!697106 b_lambda!272945)))

(declare-fun bs!1889458 () Bool)

(declare-fun d!2228686 () Bool)

(assert (= bs!1889458 (and d!2228686 start!697106)))

(assert (=> bs!1889458 (= (dynLambda!28279 lambda!436055 (h!75866 l!9154)) (validRegex!9393 (h!75866 l!9154)))))

(declare-fun m!7860796 () Bool)

(assert (=> bs!1889458 m!7860796))

(assert (=> b!7149858 d!2228686))

(push 1)

(assert (not b!7149845))

(assert (not b!7149897))

(assert (not b!7149889))

(assert (not b!7149885))

(assert (not b!7149888))

(assert (not b!7149861))

(assert (not b!7149887))

(assert (not b!7149823))

(assert (not b!7149903))

(assert (not b!7149863))

(assert (not b!7149864))

(assert (not d!2228672))

(assert (not b!7149870))

(assert (not b_lambda!272943))

(assert (not d!2228682))

(assert (not b!7149867))

(assert (not b!7149899))

(assert (not b!7149884))

(assert (not b!7149895))

(assert (not b!7149868))

(assert (not b!7149893))

(assert (not b!7149904))

(assert (not b!7149852))

(assert (not b!7149883))

(assert (not b!7149871))

(assert (not bs!1889457))

(assert (not b!7149846))

(assert (not b!7149905))

(assert (not b!7149850))

(assert (not b!7149853))

(assert (not b!7149849))

(assert (not b!7149892))

(assert (not bs!1889458))

(assert tp_is_empty!46113)

(assert (not b!7149901))

(assert (not b!7149891))

(assert (not b!7149910))

(assert (not b!7149821))

(assert (not b!7149896))

(assert (not b!7149869))

(assert (not b!7149900))

(assert (not b!7149851))

(assert (not b!7149859))

(assert (not b_lambda!272945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

