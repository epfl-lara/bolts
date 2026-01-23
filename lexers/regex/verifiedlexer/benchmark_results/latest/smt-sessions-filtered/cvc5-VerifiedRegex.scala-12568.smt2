; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697198 () Bool)

(assert start!697198)

(declare-fun bs!1889556 () Bool)

(declare-fun b!7150958 () Bool)

(assert (= bs!1889556 (and b!7150958 start!697198)))

(declare-fun lambda!436140 () Int)

(declare-fun lambda!436139 () Int)

(assert (=> bs!1889556 (not (= lambda!436140 lambda!436139))))

(declare-fun b!7150952 () Bool)

(declare-fun e!4296674 () Bool)

(declare-fun tp_is_empty!46125 () Bool)

(assert (=> b!7150952 (= e!4296674 tp_is_empty!46125)))

(declare-fun b!7150953 () Bool)

(declare-fun e!4296672 () Bool)

(declare-fun tp!1974752 () Bool)

(declare-fun tp!1974749 () Bool)

(assert (=> b!7150953 (= e!4296672 (and tp!1974752 tp!1974749))))

(declare-fun b!7150954 () Bool)

(declare-fun tp!1974751 () Bool)

(declare-fun tp!1974753 () Bool)

(assert (=> b!7150954 (= e!4296674 (and tp!1974751 tp!1974753))))

(declare-fun b!7150955 () Bool)

(declare-fun tp!1974750 () Bool)

(declare-fun tp!1974754 () Bool)

(assert (=> b!7150955 (= e!4296674 (and tp!1974750 tp!1974754))))

(declare-fun res!2916812 () Bool)

(declare-fun e!4296673 () Bool)

(assert (=> start!697198 (=> (not res!2916812) (not e!4296673))))

(declare-datatypes ((C!36762 0))(
  ( (C!36763 (val!28329 Int)) )
))
(declare-datatypes ((Regex!18244 0))(
  ( (ElementMatch!18244 (c!1333171 C!36762)) (Concat!27089 (regOne!37000 Regex!18244) (regTwo!37000 Regex!18244)) (EmptyExpr!18244) (Star!18244 (reg!18573 Regex!18244)) (EmptyLang!18244) (Union!18244 (regOne!37001 Regex!18244) (regTwo!37001 Regex!18244)) )
))
(declare-datatypes ((List!69548 0))(
  ( (Nil!69424) (Cons!69424 (h!75872 Regex!18244) (t!383565 List!69548)) )
))
(declare-fun l!9154 () List!69548)

(declare-fun forall!17084 (List!69548 Int) Bool)

(assert (=> start!697198 (= res!2916812 (forall!17084 l!9154 lambda!436139))))

(assert (=> start!697198 e!4296673))

(assert (=> start!697198 e!4296672))

(assert (=> start!697198 e!4296674))

(declare-fun b!7150956 () Bool)

(declare-fun res!2916814 () Bool)

(assert (=> b!7150956 (=> (not res!2916814) (not e!4296673))))

(assert (=> b!7150956 (= res!2916814 (not (is-Cons!69424 l!9154)))))

(declare-fun b!7150957 () Bool)

(declare-fun tp!1974748 () Bool)

(assert (=> b!7150957 (= e!4296674 tp!1974748)))

(declare-fun r!13911 () Regex!18244)

(declare-fun nullable!7733 (Regex!18244) Bool)

(assert (=> b!7150958 (= e!4296673 (not (= (nullable!7733 r!13911) (forall!17084 l!9154 lambda!436140))))))

(declare-fun b!7150959 () Bool)

(declare-fun res!2916811 () Bool)

(assert (=> b!7150959 (=> (not res!2916811) (not e!4296673))))

(declare-fun e!4296671 () Bool)

(assert (=> b!7150959 (= res!2916811 e!4296671)))

(declare-fun res!2916810 () Bool)

(assert (=> b!7150959 (=> res!2916810 e!4296671)))

(assert (=> b!7150959 (= res!2916810 (not (is-Cons!69424 l!9154)))))

(declare-fun b!7150960 () Bool)

(declare-fun isEmpty!40114 (List!69548) Bool)

(assert (=> b!7150960 (= e!4296671 (not (isEmpty!40114 (t!383565 l!9154))))))

(declare-fun b!7150961 () Bool)

(declare-fun res!2916813 () Bool)

(assert (=> b!7150961 (=> (not res!2916813) (not e!4296673))))

(declare-fun generalisedConcat!2419 (List!69548) Regex!18244)

(assert (=> b!7150961 (= res!2916813 (= r!13911 (generalisedConcat!2419 l!9154)))))

(assert (= (and start!697198 res!2916812) b!7150961))

(assert (= (and b!7150961 res!2916813) b!7150959))

(assert (= (and b!7150959 (not res!2916810)) b!7150960))

(assert (= (and b!7150959 res!2916811) b!7150956))

(assert (= (and b!7150956 res!2916814) b!7150958))

(assert (= (and start!697198 (is-Cons!69424 l!9154)) b!7150953))

(assert (= (and start!697198 (is-ElementMatch!18244 r!13911)) b!7150952))

(assert (= (and start!697198 (is-Concat!27089 r!13911)) b!7150954))

(assert (= (and start!697198 (is-Star!18244 r!13911)) b!7150957))

(assert (= (and start!697198 (is-Union!18244 r!13911)) b!7150955))

(declare-fun m!7861264 () Bool)

(assert (=> start!697198 m!7861264))

(declare-fun m!7861266 () Bool)

(assert (=> b!7150958 m!7861266))

(declare-fun m!7861268 () Bool)

(assert (=> b!7150958 m!7861268))

(declare-fun m!7861270 () Bool)

(assert (=> b!7150960 m!7861270))

(declare-fun m!7861272 () Bool)

(assert (=> b!7150961 m!7861272))

(push 1)

(assert (not b!7150955))

(assert (not b!7150961))

(assert (not b!7150954))

(assert (not b!7150960))

(assert (not b!7150953))

(assert (not b!7150957))

(assert (not start!697198))

(assert (not b!7150958))

(assert tp_is_empty!46125)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228927 () Bool)

(declare-fun nullableFct!3011 (Regex!18244) Bool)

(assert (=> d!2228927 (= (nullable!7733 r!13911) (nullableFct!3011 r!13911))))

(declare-fun bs!1889558 () Bool)

(assert (= bs!1889558 d!2228927))

(declare-fun m!7861284 () Bool)

(assert (=> bs!1889558 m!7861284))

(assert (=> b!7150958 d!2228927))

(declare-fun d!2228929 () Bool)

(declare-fun res!2916834 () Bool)

(declare-fun e!4296691 () Bool)

(assert (=> d!2228929 (=> res!2916834 e!4296691)))

(assert (=> d!2228929 (= res!2916834 (is-Nil!69424 l!9154))))

(assert (=> d!2228929 (= (forall!17084 l!9154 lambda!436140) e!4296691)))

(declare-fun b!7150996 () Bool)

(declare-fun e!4296692 () Bool)

(assert (=> b!7150996 (= e!4296691 e!4296692)))

(declare-fun res!2916835 () Bool)

(assert (=> b!7150996 (=> (not res!2916835) (not e!4296692))))

(declare-fun dynLambda!28284 (Int Regex!18244) Bool)

(assert (=> b!7150996 (= res!2916835 (dynLambda!28284 lambda!436140 (h!75872 l!9154)))))

(declare-fun b!7150997 () Bool)

(assert (=> b!7150997 (= e!4296692 (forall!17084 (t!383565 l!9154) lambda!436140))))

(assert (= (and d!2228929 (not res!2916834)) b!7150996))

(assert (= (and b!7150996 res!2916835) b!7150997))

(declare-fun b_lambda!273051 () Bool)

(assert (=> (not b_lambda!273051) (not b!7150996)))

(declare-fun m!7861286 () Bool)

(assert (=> b!7150996 m!7861286))

(declare-fun m!7861288 () Bool)

(assert (=> b!7150997 m!7861288))

(assert (=> b!7150958 d!2228929))

(declare-fun bs!1889559 () Bool)

(declare-fun d!2228931 () Bool)

(assert (= bs!1889559 (and d!2228931 start!697198)))

(declare-fun lambda!436149 () Int)

(assert (=> bs!1889559 (= lambda!436149 lambda!436139)))

(declare-fun bs!1889560 () Bool)

(assert (= bs!1889560 (and d!2228931 b!7150958)))

(assert (=> bs!1889560 (not (= lambda!436149 lambda!436140))))

(declare-fun b!7151022 () Bool)

(declare-fun e!4296714 () Regex!18244)

(assert (=> b!7151022 (= e!4296714 (Concat!27089 (h!75872 l!9154) (generalisedConcat!2419 (t!383565 l!9154))))))

(declare-fun b!7151023 () Bool)

(declare-fun e!4296711 () Bool)

(declare-fun e!4296710 () Bool)

(assert (=> b!7151023 (= e!4296711 e!4296710)))

(declare-fun c!1333183 () Bool)

(declare-fun tail!14019 (List!69548) List!69548)

(assert (=> b!7151023 (= c!1333183 (isEmpty!40114 (tail!14019 l!9154)))))

(declare-fun b!7151024 () Bool)

(declare-fun lt!2569097 () Regex!18244)

(declare-fun isEmptyExpr!2069 (Regex!18244) Bool)

(assert (=> b!7151024 (= e!4296711 (isEmptyExpr!2069 lt!2569097))))

(declare-fun b!7151025 () Bool)

(declare-fun e!4296712 () Bool)

(assert (=> b!7151025 (= e!4296712 (isEmpty!40114 (t!383565 l!9154)))))

(declare-fun b!7151026 () Bool)

(assert (=> b!7151026 (= e!4296714 EmptyExpr!18244)))

(declare-fun b!7151027 () Bool)

(declare-fun e!4296709 () Bool)

(assert (=> b!7151027 (= e!4296709 e!4296711)))

(declare-fun c!1333182 () Bool)

(assert (=> b!7151027 (= c!1333182 (isEmpty!40114 l!9154))))

(assert (=> d!2228931 e!4296709))

(declare-fun res!2916845 () Bool)

(assert (=> d!2228931 (=> (not res!2916845) (not e!4296709))))

(declare-fun validRegex!9398 (Regex!18244) Bool)

(assert (=> d!2228931 (= res!2916845 (validRegex!9398 lt!2569097))))

(declare-fun e!4296713 () Regex!18244)

(assert (=> d!2228931 (= lt!2569097 e!4296713)))

(declare-fun c!1333181 () Bool)

(assert (=> d!2228931 (= c!1333181 e!4296712)))

(declare-fun res!2916844 () Bool)

(assert (=> d!2228931 (=> (not res!2916844) (not e!4296712))))

(assert (=> d!2228931 (= res!2916844 (is-Cons!69424 l!9154))))

(assert (=> d!2228931 (forall!17084 l!9154 lambda!436149)))

(assert (=> d!2228931 (= (generalisedConcat!2419 l!9154) lt!2569097)))

(declare-fun b!7151028 () Bool)

(declare-fun isConcat!1591 (Regex!18244) Bool)

(assert (=> b!7151028 (= e!4296710 (isConcat!1591 lt!2569097))))

(declare-fun b!7151029 () Bool)

(assert (=> b!7151029 (= e!4296713 (h!75872 l!9154))))

(declare-fun b!7151030 () Bool)

(declare-fun head!14550 (List!69548) Regex!18244)

(assert (=> b!7151030 (= e!4296710 (= lt!2569097 (head!14550 l!9154)))))

(declare-fun b!7151031 () Bool)

(assert (=> b!7151031 (= e!4296713 e!4296714)))

(declare-fun c!1333184 () Bool)

(assert (=> b!7151031 (= c!1333184 (is-Cons!69424 l!9154))))

(assert (= (and d!2228931 res!2916844) b!7151025))

(assert (= (and d!2228931 c!1333181) b!7151029))

(assert (= (and d!2228931 (not c!1333181)) b!7151031))

(assert (= (and b!7151031 c!1333184) b!7151022))

(assert (= (and b!7151031 (not c!1333184)) b!7151026))

(assert (= (and d!2228931 res!2916845) b!7151027))

(assert (= (and b!7151027 c!1333182) b!7151024))

(assert (= (and b!7151027 (not c!1333182)) b!7151023))

(assert (= (and b!7151023 c!1333183) b!7151030))

(assert (= (and b!7151023 (not c!1333183)) b!7151028))

(declare-fun m!7861290 () Bool)

(assert (=> b!7151022 m!7861290))

(declare-fun m!7861292 () Bool)

(assert (=> b!7151023 m!7861292))

(assert (=> b!7151023 m!7861292))

(declare-fun m!7861294 () Bool)

(assert (=> b!7151023 m!7861294))

(assert (=> b!7151025 m!7861270))

(declare-fun m!7861296 () Bool)

(assert (=> b!7151027 m!7861296))

(declare-fun m!7861298 () Bool)

(assert (=> b!7151030 m!7861298))

(declare-fun m!7861300 () Bool)

(assert (=> d!2228931 m!7861300))

(declare-fun m!7861302 () Bool)

(assert (=> d!2228931 m!7861302))

(declare-fun m!7861304 () Bool)

(assert (=> b!7151028 m!7861304))

(declare-fun m!7861306 () Bool)

(assert (=> b!7151024 m!7861306))

(assert (=> b!7150961 d!2228931))

(declare-fun d!2228935 () Bool)

(assert (=> d!2228935 (= (isEmpty!40114 (t!383565 l!9154)) (is-Nil!69424 (t!383565 l!9154)))))

(assert (=> b!7150960 d!2228935))

(declare-fun d!2228937 () Bool)

(declare-fun res!2916846 () Bool)

(declare-fun e!4296715 () Bool)

(assert (=> d!2228937 (=> res!2916846 e!4296715)))

(assert (=> d!2228937 (= res!2916846 (is-Nil!69424 l!9154))))

(assert (=> d!2228937 (= (forall!17084 l!9154 lambda!436139) e!4296715)))

(declare-fun b!7151032 () Bool)

(declare-fun e!4296716 () Bool)

(assert (=> b!7151032 (= e!4296715 e!4296716)))

(declare-fun res!2916847 () Bool)

(assert (=> b!7151032 (=> (not res!2916847) (not e!4296716))))

(assert (=> b!7151032 (= res!2916847 (dynLambda!28284 lambda!436139 (h!75872 l!9154)))))

(declare-fun b!7151033 () Bool)

(assert (=> b!7151033 (= e!4296716 (forall!17084 (t!383565 l!9154) lambda!436139))))

(assert (= (and d!2228937 (not res!2916846)) b!7151032))

(assert (= (and b!7151032 res!2916847) b!7151033))

(declare-fun b_lambda!273053 () Bool)

(assert (=> (not b_lambda!273053) (not b!7151032)))

(declare-fun m!7861308 () Bool)

(assert (=> b!7151032 m!7861308))

(declare-fun m!7861310 () Bool)

(assert (=> b!7151033 m!7861310))

(assert (=> start!697198 d!2228937))

(declare-fun b!7151047 () Bool)

(declare-fun e!4296721 () Bool)

(declare-fun tp!1974789 () Bool)

(declare-fun tp!1974788 () Bool)

(assert (=> b!7151047 (= e!4296721 (and tp!1974789 tp!1974788))))

(declare-fun b!7151046 () Bool)

(assert (=> b!7151046 (= e!4296721 tp_is_empty!46125)))

(assert (=> b!7150953 (= tp!1974752 e!4296721)))

(declare-fun b!7151049 () Bool)

(declare-fun tp!1974786 () Bool)

(declare-fun tp!1974787 () Bool)

(assert (=> b!7151049 (= e!4296721 (and tp!1974786 tp!1974787))))

(declare-fun b!7151048 () Bool)

(declare-fun tp!1974790 () Bool)

(assert (=> b!7151048 (= e!4296721 tp!1974790)))

(assert (= (and b!7150953 (is-ElementMatch!18244 (h!75872 l!9154))) b!7151046))

(assert (= (and b!7150953 (is-Concat!27089 (h!75872 l!9154))) b!7151047))

(assert (= (and b!7150953 (is-Star!18244 (h!75872 l!9154))) b!7151048))

(assert (= (and b!7150953 (is-Union!18244 (h!75872 l!9154))) b!7151049))

(declare-fun b!7151054 () Bool)

(declare-fun e!4296724 () Bool)

(declare-fun tp!1974795 () Bool)

(declare-fun tp!1974796 () Bool)

(assert (=> b!7151054 (= e!4296724 (and tp!1974795 tp!1974796))))

(assert (=> b!7150953 (= tp!1974749 e!4296724)))

(assert (= (and b!7150953 (is-Cons!69424 (t!383565 l!9154))) b!7151054))

(declare-fun b!7151056 () Bool)

(declare-fun e!4296725 () Bool)

(declare-fun tp!1974800 () Bool)

(declare-fun tp!1974799 () Bool)

(assert (=> b!7151056 (= e!4296725 (and tp!1974800 tp!1974799))))

(declare-fun b!7151055 () Bool)

(assert (=> b!7151055 (= e!4296725 tp_is_empty!46125)))

(assert (=> b!7150957 (= tp!1974748 e!4296725)))

(declare-fun b!7151058 () Bool)

(declare-fun tp!1974797 () Bool)

(declare-fun tp!1974798 () Bool)

(assert (=> b!7151058 (= e!4296725 (and tp!1974797 tp!1974798))))

(declare-fun b!7151057 () Bool)

(declare-fun tp!1974801 () Bool)

(assert (=> b!7151057 (= e!4296725 tp!1974801)))

(assert (= (and b!7150957 (is-ElementMatch!18244 (reg!18573 r!13911))) b!7151055))

(assert (= (and b!7150957 (is-Concat!27089 (reg!18573 r!13911))) b!7151056))

(assert (= (and b!7150957 (is-Star!18244 (reg!18573 r!13911))) b!7151057))

(assert (= (and b!7150957 (is-Union!18244 (reg!18573 r!13911))) b!7151058))

(declare-fun b!7151060 () Bool)

(declare-fun e!4296726 () Bool)

(declare-fun tp!1974805 () Bool)

(declare-fun tp!1974804 () Bool)

(assert (=> b!7151060 (= e!4296726 (and tp!1974805 tp!1974804))))

(declare-fun b!7151059 () Bool)

(assert (=> b!7151059 (= e!4296726 tp_is_empty!46125)))

(assert (=> b!7150955 (= tp!1974750 e!4296726)))

(declare-fun b!7151062 () Bool)

(declare-fun tp!1974802 () Bool)

(declare-fun tp!1974803 () Bool)

(assert (=> b!7151062 (= e!4296726 (and tp!1974802 tp!1974803))))

(declare-fun b!7151061 () Bool)

(declare-fun tp!1974806 () Bool)

(assert (=> b!7151061 (= e!4296726 tp!1974806)))

(assert (= (and b!7150955 (is-ElementMatch!18244 (regOne!37001 r!13911))) b!7151059))

(assert (= (and b!7150955 (is-Concat!27089 (regOne!37001 r!13911))) b!7151060))

(assert (= (and b!7150955 (is-Star!18244 (regOne!37001 r!13911))) b!7151061))

(assert (= (and b!7150955 (is-Union!18244 (regOne!37001 r!13911))) b!7151062))

(declare-fun b!7151064 () Bool)

(declare-fun e!4296727 () Bool)

(declare-fun tp!1974810 () Bool)

(declare-fun tp!1974809 () Bool)

(assert (=> b!7151064 (= e!4296727 (and tp!1974810 tp!1974809))))

(declare-fun b!7151063 () Bool)

(assert (=> b!7151063 (= e!4296727 tp_is_empty!46125)))

(assert (=> b!7150955 (= tp!1974754 e!4296727)))

(declare-fun b!7151066 () Bool)

(declare-fun tp!1974807 () Bool)

(declare-fun tp!1974808 () Bool)

(assert (=> b!7151066 (= e!4296727 (and tp!1974807 tp!1974808))))

(declare-fun b!7151065 () Bool)

(declare-fun tp!1974811 () Bool)

(assert (=> b!7151065 (= e!4296727 tp!1974811)))

(assert (= (and b!7150955 (is-ElementMatch!18244 (regTwo!37001 r!13911))) b!7151063))

(assert (= (and b!7150955 (is-Concat!27089 (regTwo!37001 r!13911))) b!7151064))

(assert (= (and b!7150955 (is-Star!18244 (regTwo!37001 r!13911))) b!7151065))

(assert (= (and b!7150955 (is-Union!18244 (regTwo!37001 r!13911))) b!7151066))

(declare-fun b!7151068 () Bool)

(declare-fun e!4296728 () Bool)

(declare-fun tp!1974815 () Bool)

(declare-fun tp!1974814 () Bool)

(assert (=> b!7151068 (= e!4296728 (and tp!1974815 tp!1974814))))

(declare-fun b!7151067 () Bool)

(assert (=> b!7151067 (= e!4296728 tp_is_empty!46125)))

(assert (=> b!7150954 (= tp!1974751 e!4296728)))

(declare-fun b!7151070 () Bool)

(declare-fun tp!1974812 () Bool)

(declare-fun tp!1974813 () Bool)

(assert (=> b!7151070 (= e!4296728 (and tp!1974812 tp!1974813))))

(declare-fun b!7151069 () Bool)

(declare-fun tp!1974816 () Bool)

(assert (=> b!7151069 (= e!4296728 tp!1974816)))

(assert (= (and b!7150954 (is-ElementMatch!18244 (regOne!37000 r!13911))) b!7151067))

(assert (= (and b!7150954 (is-Concat!27089 (regOne!37000 r!13911))) b!7151068))

(assert (= (and b!7150954 (is-Star!18244 (regOne!37000 r!13911))) b!7151069))

(assert (= (and b!7150954 (is-Union!18244 (regOne!37000 r!13911))) b!7151070))

(declare-fun b!7151072 () Bool)

(declare-fun e!4296729 () Bool)

(declare-fun tp!1974820 () Bool)

(declare-fun tp!1974819 () Bool)

(assert (=> b!7151072 (= e!4296729 (and tp!1974820 tp!1974819))))

(declare-fun b!7151071 () Bool)

(assert (=> b!7151071 (= e!4296729 tp_is_empty!46125)))

(assert (=> b!7150954 (= tp!1974753 e!4296729)))

(declare-fun b!7151074 () Bool)

(declare-fun tp!1974817 () Bool)

(declare-fun tp!1974818 () Bool)

(assert (=> b!7151074 (= e!4296729 (and tp!1974817 tp!1974818))))

(declare-fun b!7151073 () Bool)

(declare-fun tp!1974821 () Bool)

(assert (=> b!7151073 (= e!4296729 tp!1974821)))

(assert (= (and b!7150954 (is-ElementMatch!18244 (regTwo!37000 r!13911))) b!7151071))

(assert (= (and b!7150954 (is-Concat!27089 (regTwo!37000 r!13911))) b!7151072))

(assert (= (and b!7150954 (is-Star!18244 (regTwo!37000 r!13911))) b!7151073))

(assert (= (and b!7150954 (is-Union!18244 (regTwo!37000 r!13911))) b!7151074))

(declare-fun b_lambda!273057 () Bool)

(assert (= b_lambda!273051 (or b!7150958 b_lambda!273057)))

(declare-fun bs!1889562 () Bool)

(declare-fun d!2228943 () Bool)

(assert (= bs!1889562 (and d!2228943 b!7150958)))

(assert (=> bs!1889562 (= (dynLambda!28284 lambda!436140 (h!75872 l!9154)) (nullable!7733 (h!75872 l!9154)))))

(declare-fun m!7861318 () Bool)

(assert (=> bs!1889562 m!7861318))

(assert (=> b!7150996 d!2228943))

(declare-fun b_lambda!273059 () Bool)

(assert (= b_lambda!273053 (or start!697198 b_lambda!273059)))

(declare-fun bs!1889563 () Bool)

(declare-fun d!2228945 () Bool)

(assert (= bs!1889563 (and d!2228945 start!697198)))

(assert (=> bs!1889563 (= (dynLambda!28284 lambda!436139 (h!75872 l!9154)) (validRegex!9398 (h!75872 l!9154)))))

(declare-fun m!7861320 () Bool)

(assert (=> bs!1889563 m!7861320))

(assert (=> b!7151032 d!2228945))

(push 1)

(assert (not b!7151028))

(assert (not b!7151062))

(assert (not b!7151054))

(assert (not b!7151069))

(assert (not b!7151025))

(assert (not b!7151027))

(assert (not b!7151033))

(assert tp_is_empty!46125)

(assert (not bs!1889563))

(assert (not b_lambda!273059))

(assert (not b!7150997))

(assert (not b!7151072))

(assert (not b!7151058))

(assert (not b!7151061))

(assert (not b!7151074))

(assert (not b!7151060))

(assert (not b!7151056))

(assert (not b!7151048))

(assert (not d!2228931))

(assert (not b!7151070))

(assert (not b!7151022))

(assert (not b!7151024))

(assert (not b!7151073))

(assert (not bs!1889562))

(assert (not b!7151047))

(assert (not b!7151066))

(assert (not b!7151049))

(assert (not b!7151065))

(assert (not b_lambda!273057))

(assert (not b!7151068))

(assert (not b!7151057))

(assert (not b!7151030))

(assert (not b!7151064))

(assert (not b!7151023))

(assert (not d!2228927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7151164 () Bool)

(declare-fun res!2916871 () Bool)

(declare-fun e!4296779 () Bool)

(assert (=> b!7151164 (=> (not res!2916871) (not e!4296779))))

(declare-fun call!651545 () Bool)

(assert (=> b!7151164 (= res!2916871 call!651545)))

(declare-fun e!4296776 () Bool)

(assert (=> b!7151164 (= e!4296776 e!4296779)))

(declare-fun bm!651538 () Bool)

(declare-fun c!1333202 () Bool)

(assert (=> bm!651538 (= call!651545 (validRegex!9398 (ite c!1333202 (regOne!37001 lt!2569097) (regOne!37000 lt!2569097))))))

(declare-fun b!7151165 () Bool)

(declare-fun call!651543 () Bool)

(assert (=> b!7151165 (= e!4296779 call!651543)))

(declare-fun b!7151166 () Bool)

(declare-fun e!4296775 () Bool)

(declare-fun e!4296781 () Bool)

(assert (=> b!7151166 (= e!4296775 e!4296781)))

(declare-fun c!1333201 () Bool)

(assert (=> b!7151166 (= c!1333201 (is-Star!18244 lt!2569097))))

(declare-fun b!7151167 () Bool)

(declare-fun e!4296780 () Bool)

(assert (=> b!7151167 (= e!4296781 e!4296780)))

(declare-fun res!2916870 () Bool)

(assert (=> b!7151167 (= res!2916870 (not (nullable!7733 (reg!18573 lt!2569097))))))

(assert (=> b!7151167 (=> (not res!2916870) (not e!4296780))))

(declare-fun bm!651540 () Bool)

(declare-fun call!651544 () Bool)

(assert (=> bm!651540 (= call!651544 (validRegex!9398 (ite c!1333201 (reg!18573 lt!2569097) (ite c!1333202 (regTwo!37001 lt!2569097) (regTwo!37000 lt!2569097)))))))

(declare-fun b!7151168 () Bool)

(declare-fun e!4296777 () Bool)

(assert (=> b!7151168 (= e!4296777 call!651543)))

(declare-fun b!7151169 () Bool)

(declare-fun res!2916868 () Bool)

(declare-fun e!4296778 () Bool)

(assert (=> b!7151169 (=> res!2916868 e!4296778)))

(assert (=> b!7151169 (= res!2916868 (not (is-Concat!27089 lt!2569097)))))

(assert (=> b!7151169 (= e!4296776 e!4296778)))

(declare-fun b!7151170 () Bool)

(assert (=> b!7151170 (= e!4296778 e!4296777)))

(declare-fun res!2916869 () Bool)

(assert (=> b!7151170 (=> (not res!2916869) (not e!4296777))))

(assert (=> b!7151170 (= res!2916869 call!651545)))

(declare-fun b!7151171 () Bool)

(assert (=> b!7151171 (= e!4296781 e!4296776)))

(assert (=> b!7151171 (= c!1333202 (is-Union!18244 lt!2569097))))

(declare-fun b!7151172 () Bool)

(assert (=> b!7151172 (= e!4296780 call!651544)))

(declare-fun bm!651539 () Bool)

(assert (=> bm!651539 (= call!651543 call!651544)))

(declare-fun d!2228955 () Bool)

(declare-fun res!2916872 () Bool)

(assert (=> d!2228955 (=> res!2916872 e!4296775)))

(assert (=> d!2228955 (= res!2916872 (is-ElementMatch!18244 lt!2569097))))

(assert (=> d!2228955 (= (validRegex!9398 lt!2569097) e!4296775)))

(assert (= (and d!2228955 (not res!2916872)) b!7151166))

(assert (= (and b!7151166 c!1333201) b!7151167))

(assert (= (and b!7151166 (not c!1333201)) b!7151171))

(assert (= (and b!7151167 res!2916870) b!7151172))

(assert (= (and b!7151171 c!1333202) b!7151164))

(assert (= (and b!7151171 (not c!1333202)) b!7151169))

(assert (= (and b!7151164 res!2916871) b!7151165))

(assert (= (and b!7151169 (not res!2916868)) b!7151170))

(assert (= (and b!7151170 res!2916869) b!7151168))

(assert (= (or b!7151165 b!7151168) bm!651539))

(assert (= (or b!7151164 b!7151170) bm!651538))

(assert (= (or b!7151172 bm!651539) bm!651540))

(declare-fun m!7861348 () Bool)

(assert (=> bm!651538 m!7861348))

(declare-fun m!7861350 () Bool)

(assert (=> b!7151167 m!7861350))

(declare-fun m!7861352 () Bool)

(assert (=> bm!651540 m!7861352))

(assert (=> d!2228931 d!2228955))

(declare-fun d!2228957 () Bool)

(declare-fun res!2916873 () Bool)

(declare-fun e!4296782 () Bool)

(assert (=> d!2228957 (=> res!2916873 e!4296782)))

(assert (=> d!2228957 (= res!2916873 (is-Nil!69424 l!9154))))

(assert (=> d!2228957 (= (forall!17084 l!9154 lambda!436149) e!4296782)))

(declare-fun b!7151173 () Bool)

(declare-fun e!4296783 () Bool)

(assert (=> b!7151173 (= e!4296782 e!4296783)))

(declare-fun res!2916874 () Bool)

(assert (=> b!7151173 (=> (not res!2916874) (not e!4296783))))

(assert (=> b!7151173 (= res!2916874 (dynLambda!28284 lambda!436149 (h!75872 l!9154)))))

(declare-fun b!7151174 () Bool)

(assert (=> b!7151174 (= e!4296783 (forall!17084 (t!383565 l!9154) lambda!436149))))

(assert (= (and d!2228957 (not res!2916873)) b!7151173))

(assert (= (and b!7151173 res!2916874) b!7151174))

(declare-fun b_lambda!273067 () Bool)

(assert (=> (not b_lambda!273067) (not b!7151173)))

(declare-fun m!7861354 () Bool)

(assert (=> b!7151173 m!7861354))

(declare-fun m!7861356 () Bool)

(assert (=> b!7151174 m!7861356))

(assert (=> d!2228931 d!2228957))

(assert (=> b!7151025 d!2228935))

(declare-fun d!2228959 () Bool)

(assert (=> d!2228959 (= (isEmptyExpr!2069 lt!2569097) (is-EmptyExpr!18244 lt!2569097))))

(assert (=> b!7151024 d!2228959))

(declare-fun b!7151175 () Bool)

(declare-fun res!2916878 () Bool)

(declare-fun e!4296788 () Bool)

(assert (=> b!7151175 (=> (not res!2916878) (not e!4296788))))

(declare-fun call!651548 () Bool)

(assert (=> b!7151175 (= res!2916878 call!651548)))

(declare-fun e!4296785 () Bool)

(assert (=> b!7151175 (= e!4296785 e!4296788)))

(declare-fun bm!651541 () Bool)

(declare-fun c!1333204 () Bool)

(assert (=> bm!651541 (= call!651548 (validRegex!9398 (ite c!1333204 (regOne!37001 (h!75872 l!9154)) (regOne!37000 (h!75872 l!9154)))))))

(declare-fun b!7151176 () Bool)

(declare-fun call!651546 () Bool)

(assert (=> b!7151176 (= e!4296788 call!651546)))

(declare-fun b!7151177 () Bool)

(declare-fun e!4296784 () Bool)

(declare-fun e!4296790 () Bool)

(assert (=> b!7151177 (= e!4296784 e!4296790)))

(declare-fun c!1333203 () Bool)

(assert (=> b!7151177 (= c!1333203 (is-Star!18244 (h!75872 l!9154)))))

(declare-fun b!7151178 () Bool)

(declare-fun e!4296789 () Bool)

(assert (=> b!7151178 (= e!4296790 e!4296789)))

(declare-fun res!2916877 () Bool)

(assert (=> b!7151178 (= res!2916877 (not (nullable!7733 (reg!18573 (h!75872 l!9154)))))))

(assert (=> b!7151178 (=> (not res!2916877) (not e!4296789))))

(declare-fun bm!651543 () Bool)

(declare-fun call!651547 () Bool)

(assert (=> bm!651543 (= call!651547 (validRegex!9398 (ite c!1333203 (reg!18573 (h!75872 l!9154)) (ite c!1333204 (regTwo!37001 (h!75872 l!9154)) (regTwo!37000 (h!75872 l!9154))))))))

(declare-fun b!7151179 () Bool)

(declare-fun e!4296786 () Bool)

(assert (=> b!7151179 (= e!4296786 call!651546)))

(declare-fun b!7151180 () Bool)

(declare-fun res!2916875 () Bool)

(declare-fun e!4296787 () Bool)

(assert (=> b!7151180 (=> res!2916875 e!4296787)))

(assert (=> b!7151180 (= res!2916875 (not (is-Concat!27089 (h!75872 l!9154))))))

(assert (=> b!7151180 (= e!4296785 e!4296787)))

(declare-fun b!7151181 () Bool)

(assert (=> b!7151181 (= e!4296787 e!4296786)))

(declare-fun res!2916876 () Bool)

(assert (=> b!7151181 (=> (not res!2916876) (not e!4296786))))

(assert (=> b!7151181 (= res!2916876 call!651548)))

(declare-fun b!7151182 () Bool)

(assert (=> b!7151182 (= e!4296790 e!4296785)))

(assert (=> b!7151182 (= c!1333204 (is-Union!18244 (h!75872 l!9154)))))

(declare-fun b!7151183 () Bool)

(assert (=> b!7151183 (= e!4296789 call!651547)))

(declare-fun bm!651542 () Bool)

(assert (=> bm!651542 (= call!651546 call!651547)))

(declare-fun d!2228961 () Bool)

(declare-fun res!2916879 () Bool)

(assert (=> d!2228961 (=> res!2916879 e!4296784)))

(assert (=> d!2228961 (= res!2916879 (is-ElementMatch!18244 (h!75872 l!9154)))))

(assert (=> d!2228961 (= (validRegex!9398 (h!75872 l!9154)) e!4296784)))

(assert (= (and d!2228961 (not res!2916879)) b!7151177))

(assert (= (and b!7151177 c!1333203) b!7151178))

(assert (= (and b!7151177 (not c!1333203)) b!7151182))

(assert (= (and b!7151178 res!2916877) b!7151183))

(assert (= (and b!7151182 c!1333204) b!7151175))

(assert (= (and b!7151182 (not c!1333204)) b!7151180))

(assert (= (and b!7151175 res!2916878) b!7151176))

(assert (= (and b!7151180 (not res!2916875)) b!7151181))

(assert (= (and b!7151181 res!2916876) b!7151179))

(assert (= (or b!7151176 b!7151179) bm!651542))

(assert (= (or b!7151175 b!7151181) bm!651541))

(assert (= (or b!7151183 bm!651542) bm!651543))

(declare-fun m!7861358 () Bool)

(assert (=> bm!651541 m!7861358))

(declare-fun m!7861360 () Bool)

(assert (=> b!7151178 m!7861360))

(declare-fun m!7861362 () Bool)

(assert (=> bm!651543 m!7861362))

(assert (=> bs!1889563 d!2228961))

(declare-fun d!2228963 () Bool)

(assert (=> d!2228963 (= (isEmpty!40114 (tail!14019 l!9154)) (is-Nil!69424 (tail!14019 l!9154)))))

(assert (=> b!7151023 d!2228963))

(declare-fun d!2228965 () Bool)

(assert (=> d!2228965 (= (tail!14019 l!9154) (t!383565 l!9154))))

(assert (=> b!7151023 d!2228965))

(declare-fun d!2228967 () Bool)

(declare-fun res!2916880 () Bool)

(declare-fun e!4296791 () Bool)

(assert (=> d!2228967 (=> res!2916880 e!4296791)))

(assert (=> d!2228967 (= res!2916880 (is-Nil!69424 (t!383565 l!9154)))))

(assert (=> d!2228967 (= (forall!17084 (t!383565 l!9154) lambda!436139) e!4296791)))

(declare-fun b!7151184 () Bool)

(declare-fun e!4296792 () Bool)

(assert (=> b!7151184 (= e!4296791 e!4296792)))

(declare-fun res!2916881 () Bool)

(assert (=> b!7151184 (=> (not res!2916881) (not e!4296792))))

(assert (=> b!7151184 (= res!2916881 (dynLambda!28284 lambda!436139 (h!75872 (t!383565 l!9154))))))

(declare-fun b!7151185 () Bool)

(assert (=> b!7151185 (= e!4296792 (forall!17084 (t!383565 (t!383565 l!9154)) lambda!436139))))

(assert (= (and d!2228967 (not res!2916880)) b!7151184))

(assert (= (and b!7151184 res!2916881) b!7151185))

(declare-fun b_lambda!273069 () Bool)

(assert (=> (not b_lambda!273069) (not b!7151184)))

(declare-fun m!7861364 () Bool)

(assert (=> b!7151184 m!7861364))

(declare-fun m!7861366 () Bool)

(assert (=> b!7151185 m!7861366))

(assert (=> b!7151033 d!2228967))

(declare-fun bs!1889568 () Bool)

(declare-fun d!2228969 () Bool)

(assert (= bs!1889568 (and d!2228969 start!697198)))

(declare-fun lambda!436153 () Int)

(assert (=> bs!1889568 (= lambda!436153 lambda!436139)))

(declare-fun bs!1889569 () Bool)

(assert (= bs!1889569 (and d!2228969 b!7150958)))

(assert (=> bs!1889569 (not (= lambda!436153 lambda!436140))))

(declare-fun bs!1889570 () Bool)

(assert (= bs!1889570 (and d!2228969 d!2228931)))

(assert (=> bs!1889570 (= lambda!436153 lambda!436149)))

(declare-fun b!7151186 () Bool)

(declare-fun e!4296798 () Regex!18244)

(assert (=> b!7151186 (= e!4296798 (Concat!27089 (h!75872 (t!383565 l!9154)) (generalisedConcat!2419 (t!383565 (t!383565 l!9154)))))))

(declare-fun b!7151187 () Bool)

(declare-fun e!4296795 () Bool)

(declare-fun e!4296794 () Bool)

(assert (=> b!7151187 (= e!4296795 e!4296794)))

(declare-fun c!1333207 () Bool)

(assert (=> b!7151187 (= c!1333207 (isEmpty!40114 (tail!14019 (t!383565 l!9154))))))

(declare-fun b!7151188 () Bool)

(declare-fun lt!2569101 () Regex!18244)

(assert (=> b!7151188 (= e!4296795 (isEmptyExpr!2069 lt!2569101))))

(declare-fun b!7151189 () Bool)

(declare-fun e!4296796 () Bool)

(assert (=> b!7151189 (= e!4296796 (isEmpty!40114 (t!383565 (t!383565 l!9154))))))

(declare-fun b!7151190 () Bool)

(assert (=> b!7151190 (= e!4296798 EmptyExpr!18244)))

(declare-fun b!7151191 () Bool)

(declare-fun e!4296793 () Bool)

(assert (=> b!7151191 (= e!4296793 e!4296795)))

(declare-fun c!1333206 () Bool)

(assert (=> b!7151191 (= c!1333206 (isEmpty!40114 (t!383565 l!9154)))))

(assert (=> d!2228969 e!4296793))

(declare-fun res!2916883 () Bool)

(assert (=> d!2228969 (=> (not res!2916883) (not e!4296793))))

(assert (=> d!2228969 (= res!2916883 (validRegex!9398 lt!2569101))))

(declare-fun e!4296797 () Regex!18244)

(assert (=> d!2228969 (= lt!2569101 e!4296797)))

(declare-fun c!1333205 () Bool)

(assert (=> d!2228969 (= c!1333205 e!4296796)))

(declare-fun res!2916882 () Bool)

(assert (=> d!2228969 (=> (not res!2916882) (not e!4296796))))

(assert (=> d!2228969 (= res!2916882 (is-Cons!69424 (t!383565 l!9154)))))

(assert (=> d!2228969 (forall!17084 (t!383565 l!9154) lambda!436153)))

(assert (=> d!2228969 (= (generalisedConcat!2419 (t!383565 l!9154)) lt!2569101)))

(declare-fun b!7151192 () Bool)

(assert (=> b!7151192 (= e!4296794 (isConcat!1591 lt!2569101))))

(declare-fun b!7151193 () Bool)

(assert (=> b!7151193 (= e!4296797 (h!75872 (t!383565 l!9154)))))

(declare-fun b!7151194 () Bool)

(assert (=> b!7151194 (= e!4296794 (= lt!2569101 (head!14550 (t!383565 l!9154))))))

(declare-fun b!7151195 () Bool)

(assert (=> b!7151195 (= e!4296797 e!4296798)))

(declare-fun c!1333208 () Bool)

(assert (=> b!7151195 (= c!1333208 (is-Cons!69424 (t!383565 l!9154)))))

(assert (= (and d!2228969 res!2916882) b!7151189))

(assert (= (and d!2228969 c!1333205) b!7151193))

(assert (= (and d!2228969 (not c!1333205)) b!7151195))

(assert (= (and b!7151195 c!1333208) b!7151186))

(assert (= (and b!7151195 (not c!1333208)) b!7151190))

(assert (= (and d!2228969 res!2916883) b!7151191))

(assert (= (and b!7151191 c!1333206) b!7151188))

(assert (= (and b!7151191 (not c!1333206)) b!7151187))

(assert (= (and b!7151187 c!1333207) b!7151194))

(assert (= (and b!7151187 (not c!1333207)) b!7151192))

(declare-fun m!7861368 () Bool)

(assert (=> b!7151186 m!7861368))

(declare-fun m!7861370 () Bool)

(assert (=> b!7151187 m!7861370))

(assert (=> b!7151187 m!7861370))

(declare-fun m!7861372 () Bool)

(assert (=> b!7151187 m!7861372))

(declare-fun m!7861374 () Bool)

(assert (=> b!7151189 m!7861374))

(assert (=> b!7151191 m!7861270))

(declare-fun m!7861376 () Bool)

(assert (=> b!7151194 m!7861376))

(declare-fun m!7861378 () Bool)

(assert (=> d!2228969 m!7861378))

(declare-fun m!7861380 () Bool)

(assert (=> d!2228969 m!7861380))

(declare-fun m!7861382 () Bool)

(assert (=> b!7151192 m!7861382))

(declare-fun m!7861384 () Bool)

(assert (=> b!7151188 m!7861384))

(assert (=> b!7151022 d!2228969))

(declare-fun bm!651548 () Bool)

(declare-fun call!651553 () Bool)

(declare-fun c!1333211 () Bool)

(assert (=> bm!651548 (= call!651553 (nullable!7733 (ite c!1333211 (regOne!37001 r!13911) (regTwo!37000 r!13911))))))

(declare-fun bm!651549 () Bool)

(declare-fun call!651554 () Bool)

(assert (=> bm!651549 (= call!651554 (nullable!7733 (ite c!1333211 (regTwo!37001 r!13911) (regOne!37000 r!13911))))))

(declare-fun b!7151211 () Bool)

(declare-fun e!4296816 () Bool)

(declare-fun e!4296815 () Bool)

(assert (=> b!7151211 (= e!4296816 e!4296815)))

(declare-fun res!2916894 () Bool)

(assert (=> b!7151211 (=> res!2916894 e!4296815)))

(assert (=> b!7151211 (= res!2916894 (is-Star!18244 r!13911))))

(declare-fun b!7151212 () Bool)

(declare-fun e!4296814 () Bool)

(assert (=> b!7151212 (= e!4296814 call!651553)))

(declare-fun b!7151213 () Bool)

(declare-fun e!4296812 () Bool)

(assert (=> b!7151213 (= e!4296812 e!4296814)))

(declare-fun res!2916895 () Bool)

(assert (=> b!7151213 (= res!2916895 call!651554)))

(assert (=> b!7151213 (=> (not res!2916895) (not e!4296814))))

(declare-fun b!7151214 () Bool)

(declare-fun e!4296813 () Bool)

(assert (=> b!7151214 (= e!4296813 call!651554)))

(declare-fun d!2228971 () Bool)

(declare-fun res!2916898 () Bool)

(declare-fun e!4296811 () Bool)

(assert (=> d!2228971 (=> res!2916898 e!4296811)))

(assert (=> d!2228971 (= res!2916898 (is-EmptyExpr!18244 r!13911))))

(assert (=> d!2228971 (= (nullableFct!3011 r!13911) e!4296811)))

(declare-fun b!7151210 () Bool)

(assert (=> b!7151210 (= e!4296811 e!4296816)))

(declare-fun res!2916896 () Bool)

(assert (=> b!7151210 (=> (not res!2916896) (not e!4296816))))

(assert (=> b!7151210 (= res!2916896 (and (not (is-EmptyLang!18244 r!13911)) (not (is-ElementMatch!18244 r!13911))))))

(declare-fun b!7151215 () Bool)

(assert (=> b!7151215 (= e!4296812 e!4296813)))

(declare-fun res!2916897 () Bool)

(assert (=> b!7151215 (= res!2916897 call!651553)))

(assert (=> b!7151215 (=> res!2916897 e!4296813)))

(declare-fun b!7151216 () Bool)

(assert (=> b!7151216 (= e!4296815 e!4296812)))

(assert (=> b!7151216 (= c!1333211 (is-Union!18244 r!13911))))

(assert (= (and d!2228971 (not res!2916898)) b!7151210))

(assert (= (and b!7151210 res!2916896) b!7151211))

(assert (= (and b!7151211 (not res!2916894)) b!7151216))

(assert (= (and b!7151216 c!1333211) b!7151215))

(assert (= (and b!7151216 (not c!1333211)) b!7151213))

(assert (= (and b!7151215 (not res!2916897)) b!7151214))

(assert (= (and b!7151213 res!2916895) b!7151212))

(assert (= (or b!7151214 b!7151213) bm!651549))

(assert (= (or b!7151215 b!7151212) bm!651548))

(declare-fun m!7861386 () Bool)

(assert (=> bm!651548 m!7861386))

(declare-fun m!7861388 () Bool)

(assert (=> bm!651549 m!7861388))

(assert (=> d!2228927 d!2228971))

(declare-fun d!2228973 () Bool)

(assert (=> d!2228973 (= (head!14550 l!9154) (h!75872 l!9154))))

(assert (=> b!7151030 d!2228973))

(declare-fun d!2228975 () Bool)

(assert (=> d!2228975 (= (nullable!7733 (h!75872 l!9154)) (nullableFct!3011 (h!75872 l!9154)))))

(declare-fun bs!1889571 () Bool)

(assert (= bs!1889571 d!2228975))

(declare-fun m!7861390 () Bool)

(assert (=> bs!1889571 m!7861390))

(assert (=> bs!1889562 d!2228975))

(declare-fun d!2228977 () Bool)

(assert (=> d!2228977 (= (isConcat!1591 lt!2569097) (is-Concat!27089 lt!2569097))))

(assert (=> b!7151028 d!2228977))

(declare-fun d!2228979 () Bool)

(declare-fun res!2916899 () Bool)

(declare-fun e!4296817 () Bool)

(assert (=> d!2228979 (=> res!2916899 e!4296817)))

(assert (=> d!2228979 (= res!2916899 (is-Nil!69424 (t!383565 l!9154)))))

(assert (=> d!2228979 (= (forall!17084 (t!383565 l!9154) lambda!436140) e!4296817)))

(declare-fun b!7151217 () Bool)

(declare-fun e!4296818 () Bool)

(assert (=> b!7151217 (= e!4296817 e!4296818)))

(declare-fun res!2916900 () Bool)

(assert (=> b!7151217 (=> (not res!2916900) (not e!4296818))))

(assert (=> b!7151217 (= res!2916900 (dynLambda!28284 lambda!436140 (h!75872 (t!383565 l!9154))))))

(declare-fun b!7151218 () Bool)

(assert (=> b!7151218 (= e!4296818 (forall!17084 (t!383565 (t!383565 l!9154)) lambda!436140))))

(assert (= (and d!2228979 (not res!2916899)) b!7151217))

(assert (= (and b!7151217 res!2916900) b!7151218))

(declare-fun b_lambda!273071 () Bool)

(assert (=> (not b_lambda!273071) (not b!7151217)))

(declare-fun m!7861392 () Bool)

(assert (=> b!7151217 m!7861392))

(declare-fun m!7861394 () Bool)

(assert (=> b!7151218 m!7861394))

(assert (=> b!7150997 d!2228979))

(declare-fun d!2228981 () Bool)

(assert (=> d!2228981 (= (isEmpty!40114 l!9154) (is-Nil!69424 l!9154))))

(assert (=> b!7151027 d!2228981))

(declare-fun b!7151220 () Bool)

(declare-fun e!4296819 () Bool)

(declare-fun tp!1974871 () Bool)

(declare-fun tp!1974870 () Bool)

(assert (=> b!7151220 (= e!4296819 (and tp!1974871 tp!1974870))))

(declare-fun b!7151219 () Bool)

(assert (=> b!7151219 (= e!4296819 tp_is_empty!46125)))

(assert (=> b!7151062 (= tp!1974802 e!4296819)))

(declare-fun b!7151222 () Bool)

(declare-fun tp!1974868 () Bool)

(declare-fun tp!1974869 () Bool)

(assert (=> b!7151222 (= e!4296819 (and tp!1974868 tp!1974869))))

(declare-fun b!7151221 () Bool)

(declare-fun tp!1974872 () Bool)

(assert (=> b!7151221 (= e!4296819 tp!1974872)))

(assert (= (and b!7151062 (is-ElementMatch!18244 (regOne!37001 (regOne!37001 r!13911)))) b!7151219))

(assert (= (and b!7151062 (is-Concat!27089 (regOne!37001 (regOne!37001 r!13911)))) b!7151220))

(assert (= (and b!7151062 (is-Star!18244 (regOne!37001 (regOne!37001 r!13911)))) b!7151221))

(assert (= (and b!7151062 (is-Union!18244 (regOne!37001 (regOne!37001 r!13911)))) b!7151222))

(declare-fun b!7151224 () Bool)

(declare-fun e!4296820 () Bool)

(declare-fun tp!1974876 () Bool)

(declare-fun tp!1974875 () Bool)

(assert (=> b!7151224 (= e!4296820 (and tp!1974876 tp!1974875))))

(declare-fun b!7151223 () Bool)

(assert (=> b!7151223 (= e!4296820 tp_is_empty!46125)))

(assert (=> b!7151062 (= tp!1974803 e!4296820)))

(declare-fun b!7151226 () Bool)

(declare-fun tp!1974873 () Bool)

(declare-fun tp!1974874 () Bool)

(assert (=> b!7151226 (= e!4296820 (and tp!1974873 tp!1974874))))

(declare-fun b!7151225 () Bool)

(declare-fun tp!1974877 () Bool)

(assert (=> b!7151225 (= e!4296820 tp!1974877)))

(assert (= (and b!7151062 (is-ElementMatch!18244 (regTwo!37001 (regOne!37001 r!13911)))) b!7151223))

(assert (= (and b!7151062 (is-Concat!27089 (regTwo!37001 (regOne!37001 r!13911)))) b!7151224))

(assert (= (and b!7151062 (is-Star!18244 (regTwo!37001 (regOne!37001 r!13911)))) b!7151225))

(assert (= (and b!7151062 (is-Union!18244 (regTwo!37001 (regOne!37001 r!13911)))) b!7151226))

(declare-fun b!7151228 () Bool)

(declare-fun e!4296821 () Bool)

(declare-fun tp!1974881 () Bool)

(declare-fun tp!1974880 () Bool)

(assert (=> b!7151228 (= e!4296821 (and tp!1974881 tp!1974880))))

(declare-fun b!7151227 () Bool)

(assert (=> b!7151227 (= e!4296821 tp_is_empty!46125)))

(assert (=> b!7151049 (= tp!1974786 e!4296821)))

(declare-fun b!7151230 () Bool)

(declare-fun tp!1974878 () Bool)

(declare-fun tp!1974879 () Bool)

(assert (=> b!7151230 (= e!4296821 (and tp!1974878 tp!1974879))))

(declare-fun b!7151229 () Bool)

(declare-fun tp!1974882 () Bool)

(assert (=> b!7151229 (= e!4296821 tp!1974882)))

(assert (= (and b!7151049 (is-ElementMatch!18244 (regOne!37001 (h!75872 l!9154)))) b!7151227))

(assert (= (and b!7151049 (is-Concat!27089 (regOne!37001 (h!75872 l!9154)))) b!7151228))

(assert (= (and b!7151049 (is-Star!18244 (regOne!37001 (h!75872 l!9154)))) b!7151229))

(assert (= (and b!7151049 (is-Union!18244 (regOne!37001 (h!75872 l!9154)))) b!7151230))

(declare-fun b!7151232 () Bool)

(declare-fun e!4296822 () Bool)

(declare-fun tp!1974886 () Bool)

(declare-fun tp!1974885 () Bool)

(assert (=> b!7151232 (= e!4296822 (and tp!1974886 tp!1974885))))

(declare-fun b!7151231 () Bool)

(assert (=> b!7151231 (= e!4296822 tp_is_empty!46125)))

(assert (=> b!7151049 (= tp!1974787 e!4296822)))

(declare-fun b!7151234 () Bool)

(declare-fun tp!1974883 () Bool)

(declare-fun tp!1974884 () Bool)

(assert (=> b!7151234 (= e!4296822 (and tp!1974883 tp!1974884))))

(declare-fun b!7151233 () Bool)

(declare-fun tp!1974887 () Bool)

(assert (=> b!7151233 (= e!4296822 tp!1974887)))

(assert (= (and b!7151049 (is-ElementMatch!18244 (regTwo!37001 (h!75872 l!9154)))) b!7151231))

(assert (= (and b!7151049 (is-Concat!27089 (regTwo!37001 (h!75872 l!9154)))) b!7151232))

(assert (= (and b!7151049 (is-Star!18244 (regTwo!37001 (h!75872 l!9154)))) b!7151233))

(assert (= (and b!7151049 (is-Union!18244 (regTwo!37001 (h!75872 l!9154)))) b!7151234))

(declare-fun b!7151236 () Bool)

(declare-fun e!4296823 () Bool)

(declare-fun tp!1974891 () Bool)

(declare-fun tp!1974890 () Bool)

(assert (=> b!7151236 (= e!4296823 (and tp!1974891 tp!1974890))))

(declare-fun b!7151235 () Bool)

(assert (=> b!7151235 (= e!4296823 tp_is_empty!46125)))

(assert (=> b!7151066 (= tp!1974807 e!4296823)))

(declare-fun b!7151238 () Bool)

(declare-fun tp!1974888 () Bool)

(declare-fun tp!1974889 () Bool)

(assert (=> b!7151238 (= e!4296823 (and tp!1974888 tp!1974889))))

(declare-fun b!7151237 () Bool)

(declare-fun tp!1974892 () Bool)

(assert (=> b!7151237 (= e!4296823 tp!1974892)))

(assert (= (and b!7151066 (is-ElementMatch!18244 (regOne!37001 (regTwo!37001 r!13911)))) b!7151235))

(assert (= (and b!7151066 (is-Concat!27089 (regOne!37001 (regTwo!37001 r!13911)))) b!7151236))

(assert (= (and b!7151066 (is-Star!18244 (regOne!37001 (regTwo!37001 r!13911)))) b!7151237))

(assert (= (and b!7151066 (is-Union!18244 (regOne!37001 (regTwo!37001 r!13911)))) b!7151238))

(declare-fun b!7151240 () Bool)

(declare-fun e!4296824 () Bool)

(declare-fun tp!1974896 () Bool)

(declare-fun tp!1974895 () Bool)

(assert (=> b!7151240 (= e!4296824 (and tp!1974896 tp!1974895))))

(declare-fun b!7151239 () Bool)

(assert (=> b!7151239 (= e!4296824 tp_is_empty!46125)))

(assert (=> b!7151066 (= tp!1974808 e!4296824)))

(declare-fun b!7151242 () Bool)

(declare-fun tp!1974893 () Bool)

(declare-fun tp!1974894 () Bool)

(assert (=> b!7151242 (= e!4296824 (and tp!1974893 tp!1974894))))

(declare-fun b!7151241 () Bool)

(declare-fun tp!1974897 () Bool)

(assert (=> b!7151241 (= e!4296824 tp!1974897)))

(assert (= (and b!7151066 (is-ElementMatch!18244 (regTwo!37001 (regTwo!37001 r!13911)))) b!7151239))

(assert (= (and b!7151066 (is-Concat!27089 (regTwo!37001 (regTwo!37001 r!13911)))) b!7151240))

(assert (= (and b!7151066 (is-Star!18244 (regTwo!37001 (regTwo!37001 r!13911)))) b!7151241))

(assert (= (and b!7151066 (is-Union!18244 (regTwo!37001 (regTwo!37001 r!13911)))) b!7151242))

(declare-fun b!7151244 () Bool)

(declare-fun e!4296825 () Bool)

(declare-fun tp!1974901 () Bool)

(declare-fun tp!1974900 () Bool)

(assert (=> b!7151244 (= e!4296825 (and tp!1974901 tp!1974900))))

(declare-fun b!7151243 () Bool)

(assert (=> b!7151243 (= e!4296825 tp_is_empty!46125)))

(assert (=> b!7151061 (= tp!1974806 e!4296825)))

(declare-fun b!7151246 () Bool)

(declare-fun tp!1974898 () Bool)

(declare-fun tp!1974899 () Bool)

(assert (=> b!7151246 (= e!4296825 (and tp!1974898 tp!1974899))))

(declare-fun b!7151245 () Bool)

(declare-fun tp!1974902 () Bool)

(assert (=> b!7151245 (= e!4296825 tp!1974902)))

(assert (= (and b!7151061 (is-ElementMatch!18244 (reg!18573 (regOne!37001 r!13911)))) b!7151243))

(assert (= (and b!7151061 (is-Concat!27089 (reg!18573 (regOne!37001 r!13911)))) b!7151244))

(assert (= (and b!7151061 (is-Star!18244 (reg!18573 (regOne!37001 r!13911)))) b!7151245))

(assert (= (and b!7151061 (is-Union!18244 (reg!18573 (regOne!37001 r!13911)))) b!7151246))

(declare-fun b!7151248 () Bool)

(declare-fun e!4296826 () Bool)

(declare-fun tp!1974906 () Bool)

(declare-fun tp!1974905 () Bool)

(assert (=> b!7151248 (= e!4296826 (and tp!1974906 tp!1974905))))

(declare-fun b!7151247 () Bool)

(assert (=> b!7151247 (= e!4296826 tp_is_empty!46125)))

(assert (=> b!7151048 (= tp!1974790 e!4296826)))

(declare-fun b!7151250 () Bool)

(declare-fun tp!1974903 () Bool)

(declare-fun tp!1974904 () Bool)

(assert (=> b!7151250 (= e!4296826 (and tp!1974903 tp!1974904))))

(declare-fun b!7151249 () Bool)

(declare-fun tp!1974907 () Bool)

(assert (=> b!7151249 (= e!4296826 tp!1974907)))

(assert (= (and b!7151048 (is-ElementMatch!18244 (reg!18573 (h!75872 l!9154)))) b!7151247))

(assert (= (and b!7151048 (is-Concat!27089 (reg!18573 (h!75872 l!9154)))) b!7151248))

(assert (= (and b!7151048 (is-Star!18244 (reg!18573 (h!75872 l!9154)))) b!7151249))

(assert (= (and b!7151048 (is-Union!18244 (reg!18573 (h!75872 l!9154)))) b!7151250))

(declare-fun b!7151252 () Bool)

(declare-fun e!4296827 () Bool)

(declare-fun tp!1974911 () Bool)

(declare-fun tp!1974910 () Bool)

(assert (=> b!7151252 (= e!4296827 (and tp!1974911 tp!1974910))))

(declare-fun b!7151251 () Bool)

(assert (=> b!7151251 (= e!4296827 tp_is_empty!46125)))

(assert (=> b!7151070 (= tp!1974812 e!4296827)))

(declare-fun b!7151254 () Bool)

(declare-fun tp!1974908 () Bool)

(declare-fun tp!1974909 () Bool)

(assert (=> b!7151254 (= e!4296827 (and tp!1974908 tp!1974909))))

(declare-fun b!7151253 () Bool)

(declare-fun tp!1974912 () Bool)

(assert (=> b!7151253 (= e!4296827 tp!1974912)))

(assert (= (and b!7151070 (is-ElementMatch!18244 (regOne!37001 (regOne!37000 r!13911)))) b!7151251))

(assert (= (and b!7151070 (is-Concat!27089 (regOne!37001 (regOne!37000 r!13911)))) b!7151252))

(assert (= (and b!7151070 (is-Star!18244 (regOne!37001 (regOne!37000 r!13911)))) b!7151253))

(assert (= (and b!7151070 (is-Union!18244 (regOne!37001 (regOne!37000 r!13911)))) b!7151254))

(declare-fun b!7151256 () Bool)

(declare-fun e!4296828 () Bool)

(declare-fun tp!1974916 () Bool)

(declare-fun tp!1974915 () Bool)

(assert (=> b!7151256 (= e!4296828 (and tp!1974916 tp!1974915))))

(declare-fun b!7151255 () Bool)

(assert (=> b!7151255 (= e!4296828 tp_is_empty!46125)))

(assert (=> b!7151070 (= tp!1974813 e!4296828)))

(declare-fun b!7151258 () Bool)

(declare-fun tp!1974913 () Bool)

(declare-fun tp!1974914 () Bool)

(assert (=> b!7151258 (= e!4296828 (and tp!1974913 tp!1974914))))

(declare-fun b!7151257 () Bool)

(declare-fun tp!1974917 () Bool)

(assert (=> b!7151257 (= e!4296828 tp!1974917)))

(assert (= (and b!7151070 (is-ElementMatch!18244 (regTwo!37001 (regOne!37000 r!13911)))) b!7151255))

(assert (= (and b!7151070 (is-Concat!27089 (regTwo!37001 (regOne!37000 r!13911)))) b!7151256))

(assert (= (and b!7151070 (is-Star!18244 (regTwo!37001 (regOne!37000 r!13911)))) b!7151257))

(assert (= (and b!7151070 (is-Union!18244 (regTwo!37001 (regOne!37000 r!13911)))) b!7151258))

(declare-fun b!7151260 () Bool)

(declare-fun e!4296829 () Bool)

(declare-fun tp!1974921 () Bool)

(declare-fun tp!1974920 () Bool)

(assert (=> b!7151260 (= e!4296829 (and tp!1974921 tp!1974920))))

(declare-fun b!7151259 () Bool)

(assert (=> b!7151259 (= e!4296829 tp_is_empty!46125)))

(assert (=> b!7151065 (= tp!1974811 e!4296829)))

(declare-fun b!7151262 () Bool)

(declare-fun tp!1974918 () Bool)

(declare-fun tp!1974919 () Bool)

(assert (=> b!7151262 (= e!4296829 (and tp!1974918 tp!1974919))))

(declare-fun b!7151261 () Bool)

(declare-fun tp!1974922 () Bool)

(assert (=> b!7151261 (= e!4296829 tp!1974922)))

(assert (= (and b!7151065 (is-ElementMatch!18244 (reg!18573 (regTwo!37001 r!13911)))) b!7151259))

(assert (= (and b!7151065 (is-Concat!27089 (reg!18573 (regTwo!37001 r!13911)))) b!7151260))

(assert (= (and b!7151065 (is-Star!18244 (reg!18573 (regTwo!37001 r!13911)))) b!7151261))

(assert (= (and b!7151065 (is-Union!18244 (reg!18573 (regTwo!37001 r!13911)))) b!7151262))

(declare-fun b!7151264 () Bool)

(declare-fun e!4296830 () Bool)

(declare-fun tp!1974926 () Bool)

(declare-fun tp!1974925 () Bool)

(assert (=> b!7151264 (= e!4296830 (and tp!1974926 tp!1974925))))

(declare-fun b!7151263 () Bool)

(assert (=> b!7151263 (= e!4296830 tp_is_empty!46125)))

(assert (=> b!7151054 (= tp!1974795 e!4296830)))

(declare-fun b!7151266 () Bool)

(declare-fun tp!1974923 () Bool)

(declare-fun tp!1974924 () Bool)

(assert (=> b!7151266 (= e!4296830 (and tp!1974923 tp!1974924))))

(declare-fun b!7151265 () Bool)

(declare-fun tp!1974927 () Bool)

(assert (=> b!7151265 (= e!4296830 tp!1974927)))

(assert (= (and b!7151054 (is-ElementMatch!18244 (h!75872 (t!383565 l!9154)))) b!7151263))

(assert (= (and b!7151054 (is-Concat!27089 (h!75872 (t!383565 l!9154)))) b!7151264))

(assert (= (and b!7151054 (is-Star!18244 (h!75872 (t!383565 l!9154)))) b!7151265))

(assert (= (and b!7151054 (is-Union!18244 (h!75872 (t!383565 l!9154)))) b!7151266))

(declare-fun b!7151267 () Bool)

(declare-fun e!4296831 () Bool)

(declare-fun tp!1974928 () Bool)

(declare-fun tp!1974929 () Bool)

(assert (=> b!7151267 (= e!4296831 (and tp!1974928 tp!1974929))))

(assert (=> b!7151054 (= tp!1974796 e!4296831)))

(assert (= (and b!7151054 (is-Cons!69424 (t!383565 (t!383565 l!9154)))) b!7151267))

(declare-fun b!7151269 () Bool)

(declare-fun e!4296832 () Bool)

(declare-fun tp!1974933 () Bool)

(declare-fun tp!1974932 () Bool)

(assert (=> b!7151269 (= e!4296832 (and tp!1974933 tp!1974932))))

(declare-fun b!7151268 () Bool)

(assert (=> b!7151268 (= e!4296832 tp_is_empty!46125)))

(assert (=> b!7151074 (= tp!1974817 e!4296832)))

(declare-fun b!7151271 () Bool)

(declare-fun tp!1974930 () Bool)

(declare-fun tp!1974931 () Bool)

(assert (=> b!7151271 (= e!4296832 (and tp!1974930 tp!1974931))))

(declare-fun b!7151270 () Bool)

(declare-fun tp!1974934 () Bool)

(assert (=> b!7151270 (= e!4296832 tp!1974934)))

(assert (= (and b!7151074 (is-ElementMatch!18244 (regOne!37001 (regTwo!37000 r!13911)))) b!7151268))

(assert (= (and b!7151074 (is-Concat!27089 (regOne!37001 (regTwo!37000 r!13911)))) b!7151269))

(assert (= (and b!7151074 (is-Star!18244 (regOne!37001 (regTwo!37000 r!13911)))) b!7151270))

(assert (= (and b!7151074 (is-Union!18244 (regOne!37001 (regTwo!37000 r!13911)))) b!7151271))

(declare-fun b!7151273 () Bool)

(declare-fun e!4296833 () Bool)

(declare-fun tp!1974938 () Bool)

(declare-fun tp!1974937 () Bool)

(assert (=> b!7151273 (= e!4296833 (and tp!1974938 tp!1974937))))

(declare-fun b!7151272 () Bool)

(assert (=> b!7151272 (= e!4296833 tp_is_empty!46125)))

(assert (=> b!7151074 (= tp!1974818 e!4296833)))

(declare-fun b!7151275 () Bool)

(declare-fun tp!1974935 () Bool)

(declare-fun tp!1974936 () Bool)

(assert (=> b!7151275 (= e!4296833 (and tp!1974935 tp!1974936))))

(declare-fun b!7151274 () Bool)

(declare-fun tp!1974939 () Bool)

(assert (=> b!7151274 (= e!4296833 tp!1974939)))

(assert (= (and b!7151074 (is-ElementMatch!18244 (regTwo!37001 (regTwo!37000 r!13911)))) b!7151272))

(assert (= (and b!7151074 (is-Concat!27089 (regTwo!37001 (regTwo!37000 r!13911)))) b!7151273))

(assert (= (and b!7151074 (is-Star!18244 (regTwo!37001 (regTwo!37000 r!13911)))) b!7151274))

(assert (= (and b!7151074 (is-Union!18244 (regTwo!37001 (regTwo!37000 r!13911)))) b!7151275))

(declare-fun b!7151277 () Bool)

(declare-fun e!4296834 () Bool)

(declare-fun tp!1974943 () Bool)

(declare-fun tp!1974942 () Bool)

(assert (=> b!7151277 (= e!4296834 (and tp!1974943 tp!1974942))))

(declare-fun b!7151276 () Bool)

(assert (=> b!7151276 (= e!4296834 tp_is_empty!46125)))

(assert (=> b!7151060 (= tp!1974805 e!4296834)))

(declare-fun b!7151279 () Bool)

(declare-fun tp!1974940 () Bool)

(declare-fun tp!1974941 () Bool)

(assert (=> b!7151279 (= e!4296834 (and tp!1974940 tp!1974941))))

(declare-fun b!7151278 () Bool)

(declare-fun tp!1974944 () Bool)

(assert (=> b!7151278 (= e!4296834 tp!1974944)))

(assert (= (and b!7151060 (is-ElementMatch!18244 (regOne!37000 (regOne!37001 r!13911)))) b!7151276))

(assert (= (and b!7151060 (is-Concat!27089 (regOne!37000 (regOne!37001 r!13911)))) b!7151277))

(assert (= (and b!7151060 (is-Star!18244 (regOne!37000 (regOne!37001 r!13911)))) b!7151278))

(assert (= (and b!7151060 (is-Union!18244 (regOne!37000 (regOne!37001 r!13911)))) b!7151279))

(declare-fun b!7151281 () Bool)

(declare-fun e!4296835 () Bool)

(declare-fun tp!1974948 () Bool)

(declare-fun tp!1974947 () Bool)

(assert (=> b!7151281 (= e!4296835 (and tp!1974948 tp!1974947))))

(declare-fun b!7151280 () Bool)

(assert (=> b!7151280 (= e!4296835 tp_is_empty!46125)))

(assert (=> b!7151060 (= tp!1974804 e!4296835)))

(declare-fun b!7151283 () Bool)

(declare-fun tp!1974945 () Bool)

(declare-fun tp!1974946 () Bool)

(assert (=> b!7151283 (= e!4296835 (and tp!1974945 tp!1974946))))

(declare-fun b!7151282 () Bool)

(declare-fun tp!1974949 () Bool)

(assert (=> b!7151282 (= e!4296835 tp!1974949)))

(assert (= (and b!7151060 (is-ElementMatch!18244 (regTwo!37000 (regOne!37001 r!13911)))) b!7151280))

(assert (= (and b!7151060 (is-Concat!27089 (regTwo!37000 (regOne!37001 r!13911)))) b!7151281))

(assert (= (and b!7151060 (is-Star!18244 (regTwo!37000 (regOne!37001 r!13911)))) b!7151282))

(assert (= (and b!7151060 (is-Union!18244 (regTwo!37000 (regOne!37001 r!13911)))) b!7151283))

(declare-fun b!7151285 () Bool)

(declare-fun e!4296836 () Bool)

(declare-fun tp!1974953 () Bool)

(declare-fun tp!1974952 () Bool)

(assert (=> b!7151285 (= e!4296836 (and tp!1974953 tp!1974952))))

(declare-fun b!7151284 () Bool)

(assert (=> b!7151284 (= e!4296836 tp_is_empty!46125)))

(assert (=> b!7151047 (= tp!1974789 e!4296836)))

(declare-fun b!7151287 () Bool)

(declare-fun tp!1974950 () Bool)

(declare-fun tp!1974951 () Bool)

(assert (=> b!7151287 (= e!4296836 (and tp!1974950 tp!1974951))))

(declare-fun b!7151286 () Bool)

(declare-fun tp!1974954 () Bool)

(assert (=> b!7151286 (= e!4296836 tp!1974954)))

(assert (= (and b!7151047 (is-ElementMatch!18244 (regOne!37000 (h!75872 l!9154)))) b!7151284))

(assert (= (and b!7151047 (is-Concat!27089 (regOne!37000 (h!75872 l!9154)))) b!7151285))

(assert (= (and b!7151047 (is-Star!18244 (regOne!37000 (h!75872 l!9154)))) b!7151286))

(assert (= (and b!7151047 (is-Union!18244 (regOne!37000 (h!75872 l!9154)))) b!7151287))

(declare-fun b!7151289 () Bool)

(declare-fun e!4296837 () Bool)

(declare-fun tp!1974958 () Bool)

(declare-fun tp!1974957 () Bool)

(assert (=> b!7151289 (= e!4296837 (and tp!1974958 tp!1974957))))

(declare-fun b!7151288 () Bool)

(assert (=> b!7151288 (= e!4296837 tp_is_empty!46125)))

(assert (=> b!7151047 (= tp!1974788 e!4296837)))

(declare-fun b!7151291 () Bool)

(declare-fun tp!1974955 () Bool)

(declare-fun tp!1974956 () Bool)

(assert (=> b!7151291 (= e!4296837 (and tp!1974955 tp!1974956))))

(declare-fun b!7151290 () Bool)

(declare-fun tp!1974959 () Bool)

(assert (=> b!7151290 (= e!4296837 tp!1974959)))

(assert (= (and b!7151047 (is-ElementMatch!18244 (regTwo!37000 (h!75872 l!9154)))) b!7151288))

(assert (= (and b!7151047 (is-Concat!27089 (regTwo!37000 (h!75872 l!9154)))) b!7151289))

(assert (= (and b!7151047 (is-Star!18244 (regTwo!37000 (h!75872 l!9154)))) b!7151290))

(assert (= (and b!7151047 (is-Union!18244 (regTwo!37000 (h!75872 l!9154)))) b!7151291))

(declare-fun b!7151293 () Bool)

(declare-fun e!4296838 () Bool)

(declare-fun tp!1974963 () Bool)

(declare-fun tp!1974962 () Bool)

(assert (=> b!7151293 (= e!4296838 (and tp!1974963 tp!1974962))))

(declare-fun b!7151292 () Bool)

(assert (=> b!7151292 (= e!4296838 tp_is_empty!46125)))

(assert (=> b!7151069 (= tp!1974816 e!4296838)))

(declare-fun b!7151295 () Bool)

(declare-fun tp!1974960 () Bool)

(declare-fun tp!1974961 () Bool)

(assert (=> b!7151295 (= e!4296838 (and tp!1974960 tp!1974961))))

(declare-fun b!7151294 () Bool)

(declare-fun tp!1974964 () Bool)

(assert (=> b!7151294 (= e!4296838 tp!1974964)))

(assert (= (and b!7151069 (is-ElementMatch!18244 (reg!18573 (regOne!37000 r!13911)))) b!7151292))

(assert (= (and b!7151069 (is-Concat!27089 (reg!18573 (regOne!37000 r!13911)))) b!7151293))

(assert (= (and b!7151069 (is-Star!18244 (reg!18573 (regOne!37000 r!13911)))) b!7151294))

(assert (= (and b!7151069 (is-Union!18244 (reg!18573 (regOne!37000 r!13911)))) b!7151295))

(declare-fun b!7151297 () Bool)

(declare-fun e!4296839 () Bool)

(declare-fun tp!1974968 () Bool)

(declare-fun tp!1974967 () Bool)

(assert (=> b!7151297 (= e!4296839 (and tp!1974968 tp!1974967))))

(declare-fun b!7151296 () Bool)

(assert (=> b!7151296 (= e!4296839 tp_is_empty!46125)))

(assert (=> b!7151058 (= tp!1974797 e!4296839)))

(declare-fun b!7151299 () Bool)

(declare-fun tp!1974965 () Bool)

(declare-fun tp!1974966 () Bool)

(assert (=> b!7151299 (= e!4296839 (and tp!1974965 tp!1974966))))

(declare-fun b!7151298 () Bool)

(declare-fun tp!1974969 () Bool)

(assert (=> b!7151298 (= e!4296839 tp!1974969)))

(assert (= (and b!7151058 (is-ElementMatch!18244 (regOne!37001 (reg!18573 r!13911)))) b!7151296))

(assert (= (and b!7151058 (is-Concat!27089 (regOne!37001 (reg!18573 r!13911)))) b!7151297))

(assert (= (and b!7151058 (is-Star!18244 (regOne!37001 (reg!18573 r!13911)))) b!7151298))

(assert (= (and b!7151058 (is-Union!18244 (regOne!37001 (reg!18573 r!13911)))) b!7151299))

(declare-fun b!7151301 () Bool)

(declare-fun e!4296840 () Bool)

(declare-fun tp!1974973 () Bool)

(declare-fun tp!1974972 () Bool)

(assert (=> b!7151301 (= e!4296840 (and tp!1974973 tp!1974972))))

(declare-fun b!7151300 () Bool)

(assert (=> b!7151300 (= e!4296840 tp_is_empty!46125)))

(assert (=> b!7151058 (= tp!1974798 e!4296840)))

(declare-fun b!7151303 () Bool)

(declare-fun tp!1974970 () Bool)

(declare-fun tp!1974971 () Bool)

(assert (=> b!7151303 (= e!4296840 (and tp!1974970 tp!1974971))))

(declare-fun b!7151302 () Bool)

(declare-fun tp!1974974 () Bool)

(assert (=> b!7151302 (= e!4296840 tp!1974974)))

(assert (= (and b!7151058 (is-ElementMatch!18244 (regTwo!37001 (reg!18573 r!13911)))) b!7151300))

(assert (= (and b!7151058 (is-Concat!27089 (regTwo!37001 (reg!18573 r!13911)))) b!7151301))

(assert (= (and b!7151058 (is-Star!18244 (regTwo!37001 (reg!18573 r!13911)))) b!7151302))

(assert (= (and b!7151058 (is-Union!18244 (regTwo!37001 (reg!18573 r!13911)))) b!7151303))

(declare-fun b!7151305 () Bool)

(declare-fun e!4296841 () Bool)

(declare-fun tp!1974978 () Bool)

(declare-fun tp!1974977 () Bool)

(assert (=> b!7151305 (= e!4296841 (and tp!1974978 tp!1974977))))

(declare-fun b!7151304 () Bool)

(assert (=> b!7151304 (= e!4296841 tp_is_empty!46125)))

(assert (=> b!7151064 (= tp!1974810 e!4296841)))

(declare-fun b!7151307 () Bool)

(declare-fun tp!1974975 () Bool)

(declare-fun tp!1974976 () Bool)

(assert (=> b!7151307 (= e!4296841 (and tp!1974975 tp!1974976))))

(declare-fun b!7151306 () Bool)

(declare-fun tp!1974979 () Bool)

(assert (=> b!7151306 (= e!4296841 tp!1974979)))

(assert (= (and b!7151064 (is-ElementMatch!18244 (regOne!37000 (regTwo!37001 r!13911)))) b!7151304))

(assert (= (and b!7151064 (is-Concat!27089 (regOne!37000 (regTwo!37001 r!13911)))) b!7151305))

(assert (= (and b!7151064 (is-Star!18244 (regOne!37000 (regTwo!37001 r!13911)))) b!7151306))

(assert (= (and b!7151064 (is-Union!18244 (regOne!37000 (regTwo!37001 r!13911)))) b!7151307))

(declare-fun b!7151309 () Bool)

(declare-fun e!4296842 () Bool)

(declare-fun tp!1974983 () Bool)

(declare-fun tp!1974982 () Bool)

(assert (=> b!7151309 (= e!4296842 (and tp!1974983 tp!1974982))))

(declare-fun b!7151308 () Bool)

(assert (=> b!7151308 (= e!4296842 tp_is_empty!46125)))

(assert (=> b!7151064 (= tp!1974809 e!4296842)))

(declare-fun b!7151311 () Bool)

(declare-fun tp!1974980 () Bool)

(declare-fun tp!1974981 () Bool)

(assert (=> b!7151311 (= e!4296842 (and tp!1974980 tp!1974981))))

(declare-fun b!7151310 () Bool)

(declare-fun tp!1974984 () Bool)

(assert (=> b!7151310 (= e!4296842 tp!1974984)))

(assert (= (and b!7151064 (is-ElementMatch!18244 (regTwo!37000 (regTwo!37001 r!13911)))) b!7151308))

(assert (= (and b!7151064 (is-Concat!27089 (regTwo!37000 (regTwo!37001 r!13911)))) b!7151309))

(assert (= (and b!7151064 (is-Star!18244 (regTwo!37000 (regTwo!37001 r!13911)))) b!7151310))

(assert (= (and b!7151064 (is-Union!18244 (regTwo!37000 (regTwo!37001 r!13911)))) b!7151311))

(declare-fun b!7151313 () Bool)

(declare-fun e!4296843 () Bool)

(declare-fun tp!1974988 () Bool)

(declare-fun tp!1974987 () Bool)

(assert (=> b!7151313 (= e!4296843 (and tp!1974988 tp!1974987))))

(declare-fun b!7151312 () Bool)

(assert (=> b!7151312 (= e!4296843 tp_is_empty!46125)))

(assert (=> b!7151073 (= tp!1974821 e!4296843)))

(declare-fun b!7151315 () Bool)

(declare-fun tp!1974985 () Bool)

(declare-fun tp!1974986 () Bool)

(assert (=> b!7151315 (= e!4296843 (and tp!1974985 tp!1974986))))

(declare-fun b!7151314 () Bool)

(declare-fun tp!1974989 () Bool)

(assert (=> b!7151314 (= e!4296843 tp!1974989)))

(assert (= (and b!7151073 (is-ElementMatch!18244 (reg!18573 (regTwo!37000 r!13911)))) b!7151312))

(assert (= (and b!7151073 (is-Concat!27089 (reg!18573 (regTwo!37000 r!13911)))) b!7151313))

(assert (= (and b!7151073 (is-Star!18244 (reg!18573 (regTwo!37000 r!13911)))) b!7151314))

(assert (= (and b!7151073 (is-Union!18244 (reg!18573 (regTwo!37000 r!13911)))) b!7151315))

(declare-fun b!7151317 () Bool)

(declare-fun e!4296844 () Bool)

(declare-fun tp!1974993 () Bool)

(declare-fun tp!1974992 () Bool)

(assert (=> b!7151317 (= e!4296844 (and tp!1974993 tp!1974992))))

(declare-fun b!7151316 () Bool)

(assert (=> b!7151316 (= e!4296844 tp_is_empty!46125)))

(assert (=> b!7151068 (= tp!1974815 e!4296844)))

(declare-fun b!7151319 () Bool)

(declare-fun tp!1974990 () Bool)

(declare-fun tp!1974991 () Bool)

(assert (=> b!7151319 (= e!4296844 (and tp!1974990 tp!1974991))))

(declare-fun b!7151318 () Bool)

(declare-fun tp!1974994 () Bool)

(assert (=> b!7151318 (= e!4296844 tp!1974994)))

(assert (= (and b!7151068 (is-ElementMatch!18244 (regOne!37000 (regOne!37000 r!13911)))) b!7151316))

(assert (= (and b!7151068 (is-Concat!27089 (regOne!37000 (regOne!37000 r!13911)))) b!7151317))

(assert (= (and b!7151068 (is-Star!18244 (regOne!37000 (regOne!37000 r!13911)))) b!7151318))

(assert (= (and b!7151068 (is-Union!18244 (regOne!37000 (regOne!37000 r!13911)))) b!7151319))

(declare-fun b!7151321 () Bool)

(declare-fun e!4296845 () Bool)

(declare-fun tp!1974998 () Bool)

(declare-fun tp!1974997 () Bool)

(assert (=> b!7151321 (= e!4296845 (and tp!1974998 tp!1974997))))

(declare-fun b!7151320 () Bool)

(assert (=> b!7151320 (= e!4296845 tp_is_empty!46125)))

(assert (=> b!7151068 (= tp!1974814 e!4296845)))

(declare-fun b!7151323 () Bool)

(declare-fun tp!1974995 () Bool)

(declare-fun tp!1974996 () Bool)

(assert (=> b!7151323 (= e!4296845 (and tp!1974995 tp!1974996))))

(declare-fun b!7151322 () Bool)

(declare-fun tp!1974999 () Bool)

(assert (=> b!7151322 (= e!4296845 tp!1974999)))

(assert (= (and b!7151068 (is-ElementMatch!18244 (regTwo!37000 (regOne!37000 r!13911)))) b!7151320))

(assert (= (and b!7151068 (is-Concat!27089 (regTwo!37000 (regOne!37000 r!13911)))) b!7151321))

(assert (= (and b!7151068 (is-Star!18244 (regTwo!37000 (regOne!37000 r!13911)))) b!7151322))

(assert (= (and b!7151068 (is-Union!18244 (regTwo!37000 (regOne!37000 r!13911)))) b!7151323))

(declare-fun b!7151325 () Bool)

(declare-fun e!4296846 () Bool)

(declare-fun tp!1975003 () Bool)

(declare-fun tp!1975002 () Bool)

(assert (=> b!7151325 (= e!4296846 (and tp!1975003 tp!1975002))))

(declare-fun b!7151324 () Bool)

(assert (=> b!7151324 (= e!4296846 tp_is_empty!46125)))

(assert (=> b!7151057 (= tp!1974801 e!4296846)))

(declare-fun b!7151327 () Bool)

(declare-fun tp!1975000 () Bool)

(declare-fun tp!1975001 () Bool)

(assert (=> b!7151327 (= e!4296846 (and tp!1975000 tp!1975001))))

(declare-fun b!7151326 () Bool)

(declare-fun tp!1975004 () Bool)

(assert (=> b!7151326 (= e!4296846 tp!1975004)))

(assert (= (and b!7151057 (is-ElementMatch!18244 (reg!18573 (reg!18573 r!13911)))) b!7151324))

(assert (= (and b!7151057 (is-Concat!27089 (reg!18573 (reg!18573 r!13911)))) b!7151325))

(assert (= (and b!7151057 (is-Star!18244 (reg!18573 (reg!18573 r!13911)))) b!7151326))

(assert (= (and b!7151057 (is-Union!18244 (reg!18573 (reg!18573 r!13911)))) b!7151327))

(declare-fun b!7151329 () Bool)

(declare-fun e!4296847 () Bool)

(declare-fun tp!1975008 () Bool)

(declare-fun tp!1975007 () Bool)

(assert (=> b!7151329 (= e!4296847 (and tp!1975008 tp!1975007))))

(declare-fun b!7151328 () Bool)

(assert (=> b!7151328 (= e!4296847 tp_is_empty!46125)))

(assert (=> b!7151072 (= tp!1974820 e!4296847)))

(declare-fun b!7151331 () Bool)

(declare-fun tp!1975005 () Bool)

(declare-fun tp!1975006 () Bool)

(assert (=> b!7151331 (= e!4296847 (and tp!1975005 tp!1975006))))

(declare-fun b!7151330 () Bool)

(declare-fun tp!1975009 () Bool)

(assert (=> b!7151330 (= e!4296847 tp!1975009)))

(assert (= (and b!7151072 (is-ElementMatch!18244 (regOne!37000 (regTwo!37000 r!13911)))) b!7151328))

(assert (= (and b!7151072 (is-Concat!27089 (regOne!37000 (regTwo!37000 r!13911)))) b!7151329))

(assert (= (and b!7151072 (is-Star!18244 (regOne!37000 (regTwo!37000 r!13911)))) b!7151330))

(assert (= (and b!7151072 (is-Union!18244 (regOne!37000 (regTwo!37000 r!13911)))) b!7151331))

(declare-fun b!7151333 () Bool)

(declare-fun e!4296848 () Bool)

(declare-fun tp!1975013 () Bool)

(declare-fun tp!1975012 () Bool)

(assert (=> b!7151333 (= e!4296848 (and tp!1975013 tp!1975012))))

(declare-fun b!7151332 () Bool)

(assert (=> b!7151332 (= e!4296848 tp_is_empty!46125)))

(assert (=> b!7151072 (= tp!1974819 e!4296848)))

(declare-fun b!7151335 () Bool)

(declare-fun tp!1975010 () Bool)

(declare-fun tp!1975011 () Bool)

(assert (=> b!7151335 (= e!4296848 (and tp!1975010 tp!1975011))))

(declare-fun b!7151334 () Bool)

(declare-fun tp!1975014 () Bool)

(assert (=> b!7151334 (= e!4296848 tp!1975014)))

(assert (= (and b!7151072 (is-ElementMatch!18244 (regTwo!37000 (regTwo!37000 r!13911)))) b!7151332))

(assert (= (and b!7151072 (is-Concat!27089 (regTwo!37000 (regTwo!37000 r!13911)))) b!7151333))

(assert (= (and b!7151072 (is-Star!18244 (regTwo!37000 (regTwo!37000 r!13911)))) b!7151334))

(assert (= (and b!7151072 (is-Union!18244 (regTwo!37000 (regTwo!37000 r!13911)))) b!7151335))

(declare-fun b!7151337 () Bool)

(declare-fun e!4296849 () Bool)

(declare-fun tp!1975018 () Bool)

(declare-fun tp!1975017 () Bool)

(assert (=> b!7151337 (= e!4296849 (and tp!1975018 tp!1975017))))

(declare-fun b!7151336 () Bool)

(assert (=> b!7151336 (= e!4296849 tp_is_empty!46125)))

(assert (=> b!7151056 (= tp!1974800 e!4296849)))

(declare-fun b!7151339 () Bool)

(declare-fun tp!1975015 () Bool)

(declare-fun tp!1975016 () Bool)

(assert (=> b!7151339 (= e!4296849 (and tp!1975015 tp!1975016))))

(declare-fun b!7151338 () Bool)

(declare-fun tp!1975019 () Bool)

(assert (=> b!7151338 (= e!4296849 tp!1975019)))

(assert (= (and b!7151056 (is-ElementMatch!18244 (regOne!37000 (reg!18573 r!13911)))) b!7151336))

(assert (= (and b!7151056 (is-Concat!27089 (regOne!37000 (reg!18573 r!13911)))) b!7151337))

(assert (= (and b!7151056 (is-Star!18244 (regOne!37000 (reg!18573 r!13911)))) b!7151338))

(assert (= (and b!7151056 (is-Union!18244 (regOne!37000 (reg!18573 r!13911)))) b!7151339))

(declare-fun b!7151341 () Bool)

(declare-fun e!4296850 () Bool)

(declare-fun tp!1975023 () Bool)

(declare-fun tp!1975022 () Bool)

(assert (=> b!7151341 (= e!4296850 (and tp!1975023 tp!1975022))))

(declare-fun b!7151340 () Bool)

(assert (=> b!7151340 (= e!4296850 tp_is_empty!46125)))

(assert (=> b!7151056 (= tp!1974799 e!4296850)))

(declare-fun b!7151343 () Bool)

(declare-fun tp!1975020 () Bool)

(declare-fun tp!1975021 () Bool)

(assert (=> b!7151343 (= e!4296850 (and tp!1975020 tp!1975021))))

(declare-fun b!7151342 () Bool)

(declare-fun tp!1975024 () Bool)

(assert (=> b!7151342 (= e!4296850 tp!1975024)))

(assert (= (and b!7151056 (is-ElementMatch!18244 (regTwo!37000 (reg!18573 r!13911)))) b!7151340))

(assert (= (and b!7151056 (is-Concat!27089 (regTwo!37000 (reg!18573 r!13911)))) b!7151341))

(assert (= (and b!7151056 (is-Star!18244 (regTwo!37000 (reg!18573 r!13911)))) b!7151342))

(assert (= (and b!7151056 (is-Union!18244 (regTwo!37000 (reg!18573 r!13911)))) b!7151343))

(declare-fun b_lambda!273073 () Bool)

(assert (= b_lambda!273067 (or d!2228931 b_lambda!273073)))

(declare-fun bs!1889572 () Bool)

(declare-fun d!2228983 () Bool)

(assert (= bs!1889572 (and d!2228983 d!2228931)))

(assert (=> bs!1889572 (= (dynLambda!28284 lambda!436149 (h!75872 l!9154)) (validRegex!9398 (h!75872 l!9154)))))

(assert (=> bs!1889572 m!7861320))

(assert (=> b!7151173 d!2228983))

(declare-fun b_lambda!273075 () Bool)

(assert (= b_lambda!273069 (or start!697198 b_lambda!273075)))

(declare-fun bs!1889573 () Bool)

(declare-fun d!2228985 () Bool)

(assert (= bs!1889573 (and d!2228985 start!697198)))

(assert (=> bs!1889573 (= (dynLambda!28284 lambda!436139 (h!75872 (t!383565 l!9154))) (validRegex!9398 (h!75872 (t!383565 l!9154))))))

(declare-fun m!7861396 () Bool)

(assert (=> bs!1889573 m!7861396))

(assert (=> b!7151184 d!2228985))

(declare-fun b_lambda!273077 () Bool)

(assert (= b_lambda!273071 (or b!7150958 b_lambda!273077)))

(declare-fun bs!1889574 () Bool)

(declare-fun d!2228987 () Bool)

(assert (= bs!1889574 (and d!2228987 b!7150958)))

(assert (=> bs!1889574 (= (dynLambda!28284 lambda!436140 (h!75872 (t!383565 l!9154))) (nullable!7733 (h!75872 (t!383565 l!9154))))))

(declare-fun m!7861398 () Bool)

(assert (=> bs!1889574 m!7861398))

(assert (=> b!7151217 d!2228987))

(push 1)

(assert (not b!7151222))

(assert (not b!7151314))

(assert (not b!7151289))

(assert (not b!7151278))

(assert (not bs!1889574))

(assert (not b!7151311))

(assert (not b!7151244))

(assert (not b!7151174))

(assert (not b!7151233))

(assert (not b!7151252))

(assert (not b!7151302))

(assert (not b!7151335))

(assert (not b!7151254))

(assert (not b!7151249))

(assert (not b!7151281))

(assert (not b!7151303))

(assert (not b!7151189))

(assert (not b!7151269))

(assert (not bm!651548))

(assert (not b!7151297))

(assert (not b!7151257))

(assert (not bm!651549))

(assert (not b!7151188))

(assert (not b!7151334))

(assert (not b!7151279))

(assert (not b!7151274))

(assert (not b!7151250))

(assert (not d!2228969))

(assert (not b!7151194))

(assert (not b!7151293))

(assert (not b!7151310))

(assert (not b!7151230))

(assert (not b!7151283))

(assert (not b_lambda!273077))

(assert (not b!7151236))

(assert (not b!7151237))

(assert (not b_lambda!273073))

(assert (not b!7151246))

(assert (not b!7151258))

(assert (not b!7151256))

(assert (not b!7151218))

(assert (not b!7151330))

(assert (not b!7151322))

(assert (not b!7151191))

(assert (not b!7151290))

(assert (not b!7151313))

(assert (not b!7151241))

(assert (not b!7151224))

(assert (not bs!1889573))

(assert (not b!7151261))

(assert (not b!7151262))

(assert (not bs!1889572))

(assert (not b!7151178))

(assert (not b!7151248))

(assert (not b!7151291))

(assert (not b!7151167))

(assert (not bm!651543))

(assert (not b!7151282))

(assert tp_is_empty!46125)

(assert (not b!7151264))

(assert (not d!2228975))

(assert (not b!7151185))

(assert (not b!7151319))

(assert (not b!7151295))

(assert (not b!7151331))

(assert (not b!7151309))

(assert (not b!7151323))

(assert (not b!7151226))

(assert (not b!7151343))

(assert (not b!7151301))

(assert (not b!7151265))

(assert (not b!7151298))

(assert (not b!7151225))

(assert (not b!7151329))

(assert (not b!7151326))

(assert (not b!7151305))

(assert (not b!7151318))

(assert (not b!7151337))

(assert (not bm!651541))

(assert (not b!7151327))

(assert (not b!7151306))

(assert (not b_lambda!273059))

(assert (not b!7151221))

(assert (not b!7151341))

(assert (not b!7151232))

(assert (not b!7151253))

(assert (not b!7151307))

(assert (not b!7151339))

(assert (not bm!651540))

(assert (not b!7151315))

(assert (not b!7151285))

(assert (not b!7151299))

(assert (not b!7151271))

(assert (not b!7151277))

(assert (not b!7151342))

(assert (not b!7151275))

(assert (not b!7151273))

(assert (not b!7151192))

(assert (not b!7151186))

(assert (not b!7151338))

(assert (not b!7151240))

(assert (not b!7151294))

(assert (not b!7151270))

(assert (not b_lambda!273057))

(assert (not b!7151234))

(assert (not b!7151321))

(assert (not b!7151260))

(assert (not b!7151317))

(assert (not b!7151228))

(assert (not b!7151267))

(assert (not b!7151229))

(assert (not b!7151325))

(assert (not b!7151286))

(assert (not b!7151220))

(assert (not b!7151266))

(assert (not b!7151245))

(assert (not b!7151242))

(assert (not b!7151287))

(assert (not b_lambda!273075))

(assert (not b!7151333))

(assert (not b!7151187))

(assert (not bm!651538))

(assert (not b!7151238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

