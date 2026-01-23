; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689718 () Bool)

(assert start!689718)

(declare-fun b!7086061 () Bool)

(declare-fun res!2894659 () Bool)

(declare-fun e!4260057 () Bool)

(assert (=> b!7086061 (=> (not res!2894659) (not e!4260057))))

(declare-datatypes ((C!35762 0))(
  ( (C!35763 (val!27587 Int)) )
))
(declare-datatypes ((Regex!17746 0))(
  ( (ElementMatch!17746 (c!1322485 C!35762)) (Concat!26591 (regOne!36004 Regex!17746) (regTwo!36004 Regex!17746)) (EmptyExpr!17746) (Star!17746 (reg!18075 Regex!17746)) (EmptyLang!17746) (Union!17746 (regOne!36005 Regex!17746) (regTwo!36005 Regex!17746)) )
))
(declare-fun r!11554 () Regex!17746)

(declare-fun a!1901 () C!35762)

(assert (=> b!7086061 (= res!2894659 (and (or (not (is-ElementMatch!17746 r!11554)) (not (= (c!1322485 r!11554) a!1901))) (is-Union!17746 r!11554)))))

(declare-fun b!7086062 () Bool)

(declare-fun e!4260058 () Bool)

(declare-fun tp!1945610 () Bool)

(assert (=> b!7086062 (= e!4260058 tp!1945610)))

(declare-fun b!7086063 () Bool)

(declare-datatypes ((List!68709 0))(
  ( (Nil!68585) (Cons!68585 (h!75033 Regex!17746) (t!382494 List!68709)) )
))
(declare-datatypes ((Context!13484 0))(
  ( (Context!13485 (exprs!7242 List!68709)) )
))
(declare-fun c!9994 () Context!13484)

(declare-fun lambda!429064 () Int)

(declare-fun forall!16696 (List!68709 Int) Bool)

(assert (=> b!7086063 (= e!4260057 (not (forall!16696 (exprs!7242 c!9994) lambda!429064)))))

(declare-datatypes ((Unit!162191 0))(
  ( (Unit!162192) )
))
(declare-fun lt!2554581 () Unit!162191)

(declare-fun auxCtx!45 () Context!13484)

(declare-fun lemmaConcatPreservesForall!1049 (List!68709 List!68709 Int) Unit!162191)

(assert (=> b!7086063 (= lt!2554581 (lemmaConcatPreservesForall!1049 (exprs!7242 c!9994) (exprs!7242 auxCtx!45) lambda!429064))))

(declare-fun lt!2554582 () Unit!162191)

(assert (=> b!7086063 (= lt!2554582 (lemmaConcatPreservesForall!1049 (exprs!7242 c!9994) (exprs!7242 auxCtx!45) lambda!429064))))

(declare-fun b!7086064 () Bool)

(declare-fun e!4260056 () Bool)

(declare-fun tp!1945605 () Bool)

(assert (=> b!7086064 (= e!4260056 tp!1945605)))

(declare-fun res!2894660 () Bool)

(assert (=> start!689718 (=> (not res!2894660) (not e!4260057))))

(declare-fun validRegex!9021 (Regex!17746) Bool)

(assert (=> start!689718 (= res!2894660 (validRegex!9021 r!11554))))

(assert (=> start!689718 e!4260057))

(assert (=> start!689718 e!4260056))

(declare-fun tp_is_empty!44725 () Bool)

(assert (=> start!689718 tp_is_empty!44725))

(declare-fun e!4260055 () Bool)

(declare-fun inv!87231 (Context!13484) Bool)

(assert (=> start!689718 (and (inv!87231 c!9994) e!4260055)))

(assert (=> start!689718 (and (inv!87231 auxCtx!45) e!4260058)))

(declare-fun b!7086065 () Bool)

(assert (=> b!7086065 (= e!4260056 tp_is_empty!44725)))

(declare-fun b!7086066 () Bool)

(declare-fun tp!1945609 () Bool)

(declare-fun tp!1945608 () Bool)

(assert (=> b!7086066 (= e!4260056 (and tp!1945609 tp!1945608))))

(declare-fun b!7086067 () Bool)

(declare-fun tp!1945611 () Bool)

(declare-fun tp!1945606 () Bool)

(assert (=> b!7086067 (= e!4260056 (and tp!1945611 tp!1945606))))

(declare-fun b!7086068 () Bool)

(declare-fun tp!1945607 () Bool)

(assert (=> b!7086068 (= e!4260055 tp!1945607)))

(assert (= (and start!689718 res!2894660) b!7086061))

(assert (= (and b!7086061 res!2894659) b!7086063))

(assert (= (and start!689718 (is-ElementMatch!17746 r!11554)) b!7086065))

(assert (= (and start!689718 (is-Concat!26591 r!11554)) b!7086066))

(assert (= (and start!689718 (is-Star!17746 r!11554)) b!7086064))

(assert (= (and start!689718 (is-Union!17746 r!11554)) b!7086067))

(assert (= start!689718 b!7086068))

(assert (= start!689718 b!7086062))

(declare-fun m!7816960 () Bool)

(assert (=> b!7086063 m!7816960))

(declare-fun m!7816962 () Bool)

(assert (=> b!7086063 m!7816962))

(assert (=> b!7086063 m!7816962))

(declare-fun m!7816964 () Bool)

(assert (=> start!689718 m!7816964))

(declare-fun m!7816966 () Bool)

(assert (=> start!689718 m!7816966))

(declare-fun m!7816968 () Bool)

(assert (=> start!689718 m!7816968))

(push 1)

(assert tp_is_empty!44725)

(assert (not b!7086066))

(assert (not b!7086063))

(assert (not b!7086068))

(assert (not b!7086062))

(assert (not b!7086067))

(assert (not b!7086064))

(assert (not start!689718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7086111 () Bool)

(declare-fun e!4260088 () Bool)

(declare-fun e!4260091 () Bool)

(assert (=> b!7086111 (= e!4260088 e!4260091)))

(declare-fun c!1322492 () Bool)

(assert (=> b!7086111 (= c!1322492 (is-Union!17746 r!11554))))

(declare-fun b!7086112 () Bool)

(declare-fun res!2894677 () Bool)

(declare-fun e!4260087 () Bool)

(assert (=> b!7086112 (=> res!2894677 e!4260087)))

(assert (=> b!7086112 (= res!2894677 (not (is-Concat!26591 r!11554)))))

(assert (=> b!7086112 (= e!4260091 e!4260087)))

(declare-fun b!7086113 () Bool)

(declare-fun e!4260090 () Bool)

(assert (=> b!7086113 (= e!4260087 e!4260090)))

(declare-fun res!2894680 () Bool)

(assert (=> b!7086113 (=> (not res!2894680) (not e!4260090))))

(declare-fun call!643902 () Bool)

(assert (=> b!7086113 (= res!2894680 call!643902)))

(declare-fun bm!643897 () Bool)

(declare-fun call!643903 () Bool)

(declare-fun call!643904 () Bool)

(assert (=> bm!643897 (= call!643903 call!643904)))

(declare-fun b!7086114 () Bool)

(declare-fun e!4260086 () Bool)

(assert (=> b!7086114 (= e!4260088 e!4260086)))

(declare-fun res!2894681 () Bool)

(declare-fun nullable!7396 (Regex!17746) Bool)

(assert (=> b!7086114 (= res!2894681 (not (nullable!7396 (reg!18075 r!11554))))))

(assert (=> b!7086114 (=> (not res!2894681) (not e!4260086))))

(declare-fun bm!643898 () Bool)

(declare-fun c!1322491 () Bool)

(assert (=> bm!643898 (= call!643904 (validRegex!9021 (ite c!1322491 (reg!18075 r!11554) (ite c!1322492 (regOne!36005 r!11554) (regTwo!36004 r!11554)))))))

(declare-fun d!2216055 () Bool)

(declare-fun res!2894679 () Bool)

(declare-fun e!4260085 () Bool)

(assert (=> d!2216055 (=> res!2894679 e!4260085)))

(assert (=> d!2216055 (= res!2894679 (is-ElementMatch!17746 r!11554))))

(assert (=> d!2216055 (= (validRegex!9021 r!11554) e!4260085)))

(declare-fun bm!643899 () Bool)

(assert (=> bm!643899 (= call!643902 (validRegex!9021 (ite c!1322492 (regTwo!36005 r!11554) (regOne!36004 r!11554))))))

(declare-fun b!7086115 () Bool)

(assert (=> b!7086115 (= e!4260086 call!643904)))

(declare-fun b!7086116 () Bool)

(declare-fun res!2894678 () Bool)

(declare-fun e!4260089 () Bool)

(assert (=> b!7086116 (=> (not res!2894678) (not e!4260089))))

(assert (=> b!7086116 (= res!2894678 call!643903)))

(assert (=> b!7086116 (= e!4260091 e!4260089)))

(declare-fun b!7086117 () Bool)

(assert (=> b!7086117 (= e!4260085 e!4260088)))

(assert (=> b!7086117 (= c!1322491 (is-Star!17746 r!11554))))

(declare-fun b!7086118 () Bool)

(assert (=> b!7086118 (= e!4260090 call!643903)))

(declare-fun b!7086119 () Bool)

(assert (=> b!7086119 (= e!4260089 call!643902)))

(assert (= (and d!2216055 (not res!2894679)) b!7086117))

(assert (= (and b!7086117 c!1322491) b!7086114))

(assert (= (and b!7086117 (not c!1322491)) b!7086111))

(assert (= (and b!7086114 res!2894681) b!7086115))

(assert (= (and b!7086111 c!1322492) b!7086116))

(assert (= (and b!7086111 (not c!1322492)) b!7086112))

(assert (= (and b!7086116 res!2894678) b!7086119))

(assert (= (and b!7086112 (not res!2894677)) b!7086113))

(assert (= (and b!7086113 res!2894680) b!7086118))

(assert (= (or b!7086116 b!7086118) bm!643897))

(assert (= (or b!7086119 b!7086113) bm!643899))

(assert (= (or b!7086115 bm!643897) bm!643898))

(declare-fun m!7816980 () Bool)

(assert (=> b!7086114 m!7816980))

(declare-fun m!7816982 () Bool)

(assert (=> bm!643898 m!7816982))

(declare-fun m!7816984 () Bool)

(assert (=> bm!643899 m!7816984))

(assert (=> start!689718 d!2216055))

(declare-fun bs!1882957 () Bool)

(declare-fun d!2216057 () Bool)

(assert (= bs!1882957 (and d!2216057 b!7086063)))

(declare-fun lambda!429074 () Int)

(assert (=> bs!1882957 (= lambda!429074 lambda!429064)))

(assert (=> d!2216057 (= (inv!87231 c!9994) (forall!16696 (exprs!7242 c!9994) lambda!429074))))

(declare-fun bs!1882958 () Bool)

(assert (= bs!1882958 d!2216057))

(declare-fun m!7816986 () Bool)

(assert (=> bs!1882958 m!7816986))

(assert (=> start!689718 d!2216057))

(declare-fun bs!1882959 () Bool)

(declare-fun d!2216061 () Bool)

(assert (= bs!1882959 (and d!2216061 b!7086063)))

(declare-fun lambda!429075 () Int)

(assert (=> bs!1882959 (= lambda!429075 lambda!429064)))

(declare-fun bs!1882960 () Bool)

(assert (= bs!1882960 (and d!2216061 d!2216057)))

(assert (=> bs!1882960 (= lambda!429075 lambda!429074)))

(assert (=> d!2216061 (= (inv!87231 auxCtx!45) (forall!16696 (exprs!7242 auxCtx!45) lambda!429075))))

(declare-fun bs!1882961 () Bool)

(assert (= bs!1882961 d!2216061))

(declare-fun m!7816988 () Bool)

(assert (=> bs!1882961 m!7816988))

(assert (=> start!689718 d!2216061))

(declare-fun d!2216063 () Bool)

(declare-fun res!2894690 () Bool)

(declare-fun e!4260100 () Bool)

(assert (=> d!2216063 (=> res!2894690 e!4260100)))

(assert (=> d!2216063 (= res!2894690 (is-Nil!68585 (exprs!7242 c!9994)))))

(assert (=> d!2216063 (= (forall!16696 (exprs!7242 c!9994) lambda!429064) e!4260100)))

(declare-fun b!7086128 () Bool)

(declare-fun e!4260101 () Bool)

(assert (=> b!7086128 (= e!4260100 e!4260101)))

(declare-fun res!2894691 () Bool)

(assert (=> b!7086128 (=> (not res!2894691) (not e!4260101))))

(declare-fun dynLambda!27976 (Int Regex!17746) Bool)

(assert (=> b!7086128 (= res!2894691 (dynLambda!27976 lambda!429064 (h!75033 (exprs!7242 c!9994))))))

(declare-fun b!7086129 () Bool)

(assert (=> b!7086129 (= e!4260101 (forall!16696 (t!382494 (exprs!7242 c!9994)) lambda!429064))))

(assert (= (and d!2216063 (not res!2894690)) b!7086128))

(assert (= (and b!7086128 res!2894691) b!7086129))

(declare-fun b_lambda!270881 () Bool)

(assert (=> (not b_lambda!270881) (not b!7086128)))

(declare-fun m!7816990 () Bool)

(assert (=> b!7086128 m!7816990))

(declare-fun m!7816992 () Bool)

(assert (=> b!7086129 m!7816992))

(assert (=> b!7086063 d!2216063))

(declare-fun d!2216065 () Bool)

(declare-fun ++!15919 (List!68709 List!68709) List!68709)

(assert (=> d!2216065 (forall!16696 (++!15919 (exprs!7242 c!9994) (exprs!7242 auxCtx!45)) lambda!429064)))

(declare-fun lt!2554591 () Unit!162191)

(declare-fun choose!54610 (List!68709 List!68709 Int) Unit!162191)

(assert (=> d!2216065 (= lt!2554591 (choose!54610 (exprs!7242 c!9994) (exprs!7242 auxCtx!45) lambda!429064))))

(assert (=> d!2216065 (forall!16696 (exprs!7242 c!9994) lambda!429064)))

(assert (=> d!2216065 (= (lemmaConcatPreservesForall!1049 (exprs!7242 c!9994) (exprs!7242 auxCtx!45) lambda!429064) lt!2554591)))

(declare-fun bs!1882962 () Bool)

(assert (= bs!1882962 d!2216065))

(declare-fun m!7816998 () Bool)

(assert (=> bs!1882962 m!7816998))

(assert (=> bs!1882962 m!7816998))

(declare-fun m!7817000 () Bool)

(assert (=> bs!1882962 m!7817000))

(declare-fun m!7817002 () Bool)

(assert (=> bs!1882962 m!7817002))

(assert (=> bs!1882962 m!7816960))

(assert (=> b!7086063 d!2216065))

(declare-fun b!7086136 () Bool)

(declare-fun e!4260106 () Bool)

(declare-fun tp!1945637 () Bool)

(declare-fun tp!1945638 () Bool)

(assert (=> b!7086136 (= e!4260106 (and tp!1945637 tp!1945638))))

(assert (=> b!7086062 (= tp!1945610 e!4260106)))

(assert (= (and b!7086062 (is-Cons!68585 (exprs!7242 auxCtx!45))) b!7086136))

(declare-fun b!7086147 () Bool)

(declare-fun e!4260109 () Bool)

(assert (=> b!7086147 (= e!4260109 tp_is_empty!44725)))

(declare-fun b!7086150 () Bool)

(declare-fun tp!1945652 () Bool)

(declare-fun tp!1945650 () Bool)

(assert (=> b!7086150 (= e!4260109 (and tp!1945652 tp!1945650))))

(declare-fun b!7086149 () Bool)

(declare-fun tp!1945653 () Bool)

(assert (=> b!7086149 (= e!4260109 tp!1945653)))

(assert (=> b!7086067 (= tp!1945611 e!4260109)))

(declare-fun b!7086148 () Bool)

(declare-fun tp!1945649 () Bool)

(declare-fun tp!1945651 () Bool)

(assert (=> b!7086148 (= e!4260109 (and tp!1945649 tp!1945651))))

(assert (= (and b!7086067 (is-ElementMatch!17746 (regOne!36005 r!11554))) b!7086147))

(assert (= (and b!7086067 (is-Concat!26591 (regOne!36005 r!11554))) b!7086148))

(assert (= (and b!7086067 (is-Star!17746 (regOne!36005 r!11554))) b!7086149))

(assert (= (and b!7086067 (is-Union!17746 (regOne!36005 r!11554))) b!7086150))

(declare-fun b!7086151 () Bool)

(declare-fun e!4260110 () Bool)

(assert (=> b!7086151 (= e!4260110 tp_is_empty!44725)))

(declare-fun b!7086154 () Bool)

(declare-fun tp!1945657 () Bool)

(declare-fun tp!1945655 () Bool)

(assert (=> b!7086154 (= e!4260110 (and tp!1945657 tp!1945655))))

(declare-fun b!7086153 () Bool)

(declare-fun tp!1945658 () Bool)

(assert (=> b!7086153 (= e!4260110 tp!1945658)))

(assert (=> b!7086067 (= tp!1945606 e!4260110)))

(declare-fun b!7086152 () Bool)

(declare-fun tp!1945654 () Bool)

(declare-fun tp!1945656 () Bool)

(assert (=> b!7086152 (= e!4260110 (and tp!1945654 tp!1945656))))

(assert (= (and b!7086067 (is-ElementMatch!17746 (regTwo!36005 r!11554))) b!7086151))

(assert (= (and b!7086067 (is-Concat!26591 (regTwo!36005 r!11554))) b!7086152))

(assert (= (and b!7086067 (is-Star!17746 (regTwo!36005 r!11554))) b!7086153))

(assert (= (and b!7086067 (is-Union!17746 (regTwo!36005 r!11554))) b!7086154))

(declare-fun b!7086155 () Bool)

(declare-fun e!4260111 () Bool)

(assert (=> b!7086155 (= e!4260111 tp_is_empty!44725)))

(declare-fun b!7086158 () Bool)

(declare-fun tp!1945662 () Bool)

(declare-fun tp!1945660 () Bool)

(assert (=> b!7086158 (= e!4260111 (and tp!1945662 tp!1945660))))

(declare-fun b!7086157 () Bool)

(declare-fun tp!1945663 () Bool)

(assert (=> b!7086157 (= e!4260111 tp!1945663)))

(assert (=> b!7086066 (= tp!1945609 e!4260111)))

(declare-fun b!7086156 () Bool)

(declare-fun tp!1945659 () Bool)

(declare-fun tp!1945661 () Bool)

(assert (=> b!7086156 (= e!4260111 (and tp!1945659 tp!1945661))))

(assert (= (and b!7086066 (is-ElementMatch!17746 (regOne!36004 r!11554))) b!7086155))

(assert (= (and b!7086066 (is-Concat!26591 (regOne!36004 r!11554))) b!7086156))

(assert (= (and b!7086066 (is-Star!17746 (regOne!36004 r!11554))) b!7086157))

(assert (= (and b!7086066 (is-Union!17746 (regOne!36004 r!11554))) b!7086158))

(declare-fun b!7086159 () Bool)

(declare-fun e!4260112 () Bool)

(assert (=> b!7086159 (= e!4260112 tp_is_empty!44725)))

(declare-fun b!7086162 () Bool)

(declare-fun tp!1945667 () Bool)

(declare-fun tp!1945665 () Bool)

(assert (=> b!7086162 (= e!4260112 (and tp!1945667 tp!1945665))))

(declare-fun b!7086161 () Bool)

(declare-fun tp!1945668 () Bool)

(assert (=> b!7086161 (= e!4260112 tp!1945668)))

(assert (=> b!7086066 (= tp!1945608 e!4260112)))

(declare-fun b!7086160 () Bool)

(declare-fun tp!1945664 () Bool)

(declare-fun tp!1945666 () Bool)

(assert (=> b!7086160 (= e!4260112 (and tp!1945664 tp!1945666))))

(assert (= (and b!7086066 (is-ElementMatch!17746 (regTwo!36004 r!11554))) b!7086159))

(assert (= (and b!7086066 (is-Concat!26591 (regTwo!36004 r!11554))) b!7086160))

(assert (= (and b!7086066 (is-Star!17746 (regTwo!36004 r!11554))) b!7086161))

(assert (= (and b!7086066 (is-Union!17746 (regTwo!36004 r!11554))) b!7086162))

(declare-fun b!7086163 () Bool)

(declare-fun e!4260113 () Bool)

(assert (=> b!7086163 (= e!4260113 tp_is_empty!44725)))

(declare-fun b!7086166 () Bool)

(declare-fun tp!1945672 () Bool)

(declare-fun tp!1945670 () Bool)

(assert (=> b!7086166 (= e!4260113 (and tp!1945672 tp!1945670))))

(declare-fun b!7086165 () Bool)

(declare-fun tp!1945673 () Bool)

(assert (=> b!7086165 (= e!4260113 tp!1945673)))

(assert (=> b!7086064 (= tp!1945605 e!4260113)))

(declare-fun b!7086164 () Bool)

(declare-fun tp!1945669 () Bool)

(declare-fun tp!1945671 () Bool)

(assert (=> b!7086164 (= e!4260113 (and tp!1945669 tp!1945671))))

(assert (= (and b!7086064 (is-ElementMatch!17746 (reg!18075 r!11554))) b!7086163))

(assert (= (and b!7086064 (is-Concat!26591 (reg!18075 r!11554))) b!7086164))

(assert (= (and b!7086064 (is-Star!17746 (reg!18075 r!11554))) b!7086165))

(assert (= (and b!7086064 (is-Union!17746 (reg!18075 r!11554))) b!7086166))

(declare-fun b!7086167 () Bool)

(declare-fun e!4260114 () Bool)

(declare-fun tp!1945674 () Bool)

(declare-fun tp!1945675 () Bool)

(assert (=> b!7086167 (= e!4260114 (and tp!1945674 tp!1945675))))

(assert (=> b!7086068 (= tp!1945607 e!4260114)))

(assert (= (and b!7086068 (is-Cons!68585 (exprs!7242 c!9994))) b!7086167))

(declare-fun b_lambda!270885 () Bool)

(assert (= b_lambda!270881 (or b!7086063 b_lambda!270885)))

(declare-fun bs!1882963 () Bool)

(declare-fun d!2216069 () Bool)

(assert (= bs!1882963 (and d!2216069 b!7086063)))

(assert (=> bs!1882963 (= (dynLambda!27976 lambda!429064 (h!75033 (exprs!7242 c!9994))) (validRegex!9021 (h!75033 (exprs!7242 c!9994))))))

(declare-fun m!7817004 () Bool)

(assert (=> bs!1882963 m!7817004))

(assert (=> b!7086128 d!2216069))

(push 1)

(assert (not b!7086148))

(assert (not b!7086162))

(assert (not b!7086154))

(assert (not b!7086150))

(assert (not b!7086167))

(assert (not bm!643898))

(assert (not b!7086165))

(assert (not bm!643899))

(assert (not b!7086156))

(assert (not d!2216061))

(assert (not b!7086129))

(assert (not b!7086158))

(assert (not b!7086157))

(assert (not d!2216057))

(assert tp_is_empty!44725)

(assert (not b_lambda!270885))

(assert (not b!7086149))

(assert (not bs!1882963))

(assert (not b!7086114))

(assert (not b!7086136))

(assert (not d!2216065))

(assert (not b!7086166))

(assert (not b!7086153))

(assert (not b!7086160))

(assert (not b!7086164))

(assert (not b!7086161))

(assert (not b!7086152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

