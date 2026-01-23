; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692762 () Bool)

(assert start!692762)

(declare-fun b!7117969 () Bool)

(declare-fun e!4277067 () Bool)

(declare-fun tp!1959420 () Bool)

(assert (=> b!7117969 (= e!4277067 tp!1959420)))

(declare-fun b!7117970 () Bool)

(declare-fun e!4277068 () Bool)

(declare-fun tp!1959416 () Bool)

(assert (=> b!7117970 (= e!4277068 tp!1959416)))

(declare-fun b!7117971 () Bool)

(declare-fun e!4277066 () Bool)

(declare-fun tp!1959418 () Bool)

(assert (=> b!7117971 (= e!4277066 tp!1959418)))

(declare-fun b!7117972 () Bool)

(declare-fun e!4277064 () Bool)

(declare-datatypes ((C!36218 0))(
  ( (C!36219 (val!27815 Int)) )
))
(declare-datatypes ((Regex!17974 0))(
  ( (ElementMatch!17974 (c!1328297 C!36218)) (Concat!26819 (regOne!36460 Regex!17974) (regTwo!36460 Regex!17974)) (EmptyExpr!17974) (Star!17974 (reg!18303 Regex!17974)) (EmptyLang!17974) (Union!17974 (regOne!36461 Regex!17974) (regTwo!36461 Regex!17974)) )
))
(declare-fun r!11554 () Regex!17974)

(declare-fun nullable!7611 (Regex!17974) Bool)

(assert (=> b!7117972 (= e!4277064 (not (nullable!7611 (regOne!36460 r!11554))))))

(declare-fun b!7117973 () Bool)

(declare-fun tp_is_empty!45181 () Bool)

(assert (=> b!7117973 (= e!4277068 tp_is_empty!45181)))

(declare-fun b!7117974 () Bool)

(declare-fun res!2903954 () Bool)

(declare-fun e!4277063 () Bool)

(assert (=> b!7117974 (=> (not res!2903954) (not e!4277063))))

(declare-fun a!1901 () C!36218)

(assert (=> b!7117974 (= res!2903954 (and (or (not (is-ElementMatch!17974 r!11554)) (not (= (c!1328297 r!11554) a!1901))) (not (is-Union!17974 r!11554))))))

(declare-fun res!2903953 () Bool)

(assert (=> start!692762 (=> (not res!2903953) (not e!4277063))))

(declare-fun validRegex!9247 (Regex!17974) Bool)

(assert (=> start!692762 (= res!2903953 (validRegex!9247 r!11554))))

(assert (=> start!692762 e!4277063))

(assert (=> start!692762 e!4277068))

(assert (=> start!692762 tp_is_empty!45181))

(declare-datatypes ((List!68935 0))(
  ( (Nil!68811) (Cons!68811 (h!75259 Regex!17974) (t!382788 List!68935)) )
))
(declare-datatypes ((Context!13936 0))(
  ( (Context!13937 (exprs!7468 List!68935)) )
))
(declare-fun c!9994 () Context!13936)

(declare-fun inv!87799 (Context!13936) Bool)

(assert (=> start!692762 (and (inv!87799 c!9994) e!4277067)))

(declare-fun auxCtx!45 () Context!13936)

(assert (=> start!692762 (and (inv!87799 auxCtx!45) e!4277066)))

(declare-fun b!7117975 () Bool)

(declare-fun tp!1959419 () Bool)

(declare-fun tp!1959421 () Bool)

(assert (=> b!7117975 (= e!4277068 (and tp!1959419 tp!1959421))))

(declare-fun b!7117976 () Bool)

(declare-fun e!4277065 () Bool)

(assert (=> b!7117976 (= e!4277065 (not (validRegex!9247 (reg!18303 r!11554))))))

(declare-fun b!7117977 () Bool)

(declare-fun res!2903952 () Bool)

(assert (=> b!7117977 (=> (not res!2903952) (not e!4277063))))

(assert (=> b!7117977 (= res!2903952 (and (not (is-Concat!26819 r!11554)) (is-Star!17974 r!11554)))))

(declare-fun b!7117978 () Bool)

(declare-fun res!2903949 () Bool)

(assert (=> b!7117978 (=> (not res!2903949) (not e!4277063))))

(assert (=> b!7117978 (= res!2903949 e!4277064)))

(declare-fun res!2903955 () Bool)

(assert (=> b!7117978 (=> res!2903955 e!4277064)))

(assert (=> b!7117978 (= res!2903955 (not (is-Concat!26819 r!11554)))))

(declare-fun b!7117979 () Bool)

(declare-fun tp!1959417 () Bool)

(declare-fun tp!1959415 () Bool)

(assert (=> b!7117979 (= e!4277068 (and tp!1959417 tp!1959415))))

(declare-fun b!7117980 () Bool)

(assert (=> b!7117980 (= e!4277063 e!4277065)))

(declare-fun res!2903951 () Bool)

(assert (=> b!7117980 (=> (not res!2903951) (not e!4277065))))

(assert (=> b!7117980 (= res!2903951 (validRegex!9247 r!11554))))

(declare-fun lt!2560873 () List!68935)

(declare-fun ++!16126 (List!68935 List!68935) List!68935)

(assert (=> b!7117980 (= lt!2560873 (++!16126 (exprs!7468 c!9994) (exprs!7468 auxCtx!45)))))

(declare-datatypes ((Unit!162619 0))(
  ( (Unit!162620) )
))
(declare-fun lt!2560875 () Unit!162619)

(declare-fun lambda!432478 () Int)

(declare-fun lemmaConcatPreservesForall!1259 (List!68935 List!68935 Int) Unit!162619)

(assert (=> b!7117980 (= lt!2560875 (lemmaConcatPreservesForall!1259 (exprs!7468 c!9994) (exprs!7468 auxCtx!45) lambda!432478))))

(declare-fun lt!2560874 () Unit!162619)

(assert (=> b!7117980 (= lt!2560874 (lemmaConcatPreservesForall!1259 (exprs!7468 c!9994) (exprs!7468 auxCtx!45) lambda!432478))))

(declare-fun b!7117981 () Bool)

(declare-fun res!2903950 () Bool)

(assert (=> b!7117981 (=> (not res!2903950) (not e!4277065))))

(declare-fun derivationStepZipperDown!2471 (Regex!17974 Context!13936 C!36218) (Set Context!13936))

(declare-fun $colon$colon!2818 (List!68935 Regex!17974) List!68935)

(assert (=> b!7117981 (= res!2903950 (= (derivationStepZipperDown!2471 r!11554 (Context!13937 lt!2560873) a!1901) (derivationStepZipperDown!2471 (reg!18303 r!11554) (Context!13937 ($colon$colon!2818 lt!2560873 r!11554)) a!1901)))))

(assert (= (and start!692762 res!2903953) b!7117974))

(assert (= (and b!7117974 res!2903954) b!7117978))

(assert (= (and b!7117978 (not res!2903955)) b!7117972))

(assert (= (and b!7117978 res!2903949) b!7117977))

(assert (= (and b!7117977 res!2903952) b!7117980))

(assert (= (and b!7117980 res!2903951) b!7117981))

(assert (= (and b!7117981 res!2903950) b!7117976))

(assert (= (and start!692762 (is-ElementMatch!17974 r!11554)) b!7117973))

(assert (= (and start!692762 (is-Concat!26819 r!11554)) b!7117979))

(assert (= (and start!692762 (is-Star!17974 r!11554)) b!7117970))

(assert (= (and start!692762 (is-Union!17974 r!11554)) b!7117975))

(assert (= start!692762 b!7117969))

(assert (= start!692762 b!7117971))

(declare-fun m!7835988 () Bool)

(assert (=> start!692762 m!7835988))

(declare-fun m!7835990 () Bool)

(assert (=> start!692762 m!7835990))

(declare-fun m!7835992 () Bool)

(assert (=> start!692762 m!7835992))

(declare-fun m!7835994 () Bool)

(assert (=> b!7117981 m!7835994))

(declare-fun m!7835996 () Bool)

(assert (=> b!7117981 m!7835996))

(declare-fun m!7835998 () Bool)

(assert (=> b!7117981 m!7835998))

(assert (=> b!7117980 m!7835988))

(declare-fun m!7836000 () Bool)

(assert (=> b!7117980 m!7836000))

(declare-fun m!7836002 () Bool)

(assert (=> b!7117980 m!7836002))

(assert (=> b!7117980 m!7836002))

(declare-fun m!7836004 () Bool)

(assert (=> b!7117976 m!7836004))

(declare-fun m!7836006 () Bool)

(assert (=> b!7117972 m!7836006))

(push 1)

(assert (not start!692762))

(assert (not b!7117975))

(assert (not b!7117980))

(assert tp_is_empty!45181)

(assert (not b!7117976))

(assert (not b!7117969))

(assert (not b!7117971))

(assert (not b!7117970))

(assert (not b!7117981))

(assert (not b!7117972))

(assert (not b!7117979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2221477 () Bool)

(declare-fun nullableFct!2953 (Regex!17974) Bool)

(assert (=> d!2221477 (= (nullable!7611 (regOne!36460 r!11554)) (nullableFct!2953 (regOne!36460 r!11554)))))

(declare-fun bs!1885667 () Bool)

(assert (= bs!1885667 d!2221477))

(declare-fun m!7836028 () Bool)

(assert (=> bs!1885667 m!7836028))

(assert (=> b!7117972 d!2221477))

(declare-fun bm!650093 () Bool)

(declare-fun call!650101 () List!68935)

(declare-fun call!650100 () List!68935)

(assert (=> bm!650093 (= call!650101 call!650100)))

(declare-fun b!7118043 () Bool)

(declare-fun e!4277101 () (Set Context!13936))

(declare-fun call!650103 () (Set Context!13936))

(declare-fun call!650102 () (Set Context!13936))

(assert (=> b!7118043 (= e!4277101 (set.union call!650103 call!650102))))

(declare-fun bm!650094 () Bool)

(declare-fun call!650098 () (Set Context!13936))

(assert (=> bm!650094 (= call!650102 call!650098)))

(declare-fun b!7118044 () Bool)

(declare-fun e!4277099 () (Set Context!13936))

(declare-fun call!650099 () (Set Context!13936))

(assert (=> b!7118044 (= e!4277099 call!650099)))

(declare-fun bm!650095 () Bool)

(declare-fun c!1328312 () Bool)

(declare-fun c!1328311 () Bool)

(assert (=> bm!650095 (= call!650100 ($colon$colon!2818 (exprs!7468 (Context!13937 lt!2560873)) (ite (or c!1328312 c!1328311) (regTwo!36460 r!11554) r!11554)))))

(declare-fun b!7118045 () Bool)

(declare-fun e!4277103 () (Set Context!13936))

(assert (=> b!7118045 (= e!4277101 e!4277103)))

(assert (=> b!7118045 (= c!1328311 (is-Concat!26819 r!11554))))

(declare-fun d!2221479 () Bool)

(declare-fun c!1328309 () Bool)

(assert (=> d!2221479 (= c!1328309 (and (is-ElementMatch!17974 r!11554) (= (c!1328297 r!11554) a!1901)))))

(declare-fun e!4277102 () (Set Context!13936))

(assert (=> d!2221479 (= (derivationStepZipperDown!2471 r!11554 (Context!13937 lt!2560873) a!1901) e!4277102)))

(declare-fun b!7118046 () Bool)

(declare-fun e!4277104 () Bool)

(assert (=> b!7118046 (= e!4277104 (nullable!7611 (regOne!36460 r!11554)))))

(declare-fun bm!650096 () Bool)

(assert (=> bm!650096 (= call!650099 call!650102)))

(declare-fun b!7118047 () Bool)

(declare-fun e!4277100 () (Set Context!13936))

(assert (=> b!7118047 (= e!4277102 e!4277100)))

(declare-fun c!1328313 () Bool)

(assert (=> b!7118047 (= c!1328313 (is-Union!17974 r!11554))))

(declare-fun b!7118048 () Bool)

(declare-fun c!1328310 () Bool)

(assert (=> b!7118048 (= c!1328310 (is-Star!17974 r!11554))))

(assert (=> b!7118048 (= e!4277103 e!4277099)))

(declare-fun b!7118049 () Bool)

(assert (=> b!7118049 (= c!1328312 e!4277104)))

(declare-fun res!2903979 () Bool)

(assert (=> b!7118049 (=> (not res!2903979) (not e!4277104))))

(assert (=> b!7118049 (= res!2903979 (is-Concat!26819 r!11554))))

(assert (=> b!7118049 (= e!4277100 e!4277101)))

(declare-fun bm!650097 () Bool)

(assert (=> bm!650097 (= call!650098 (derivationStepZipperDown!2471 (ite c!1328313 (regTwo!36461 r!11554) (ite c!1328312 (regTwo!36460 r!11554) (ite c!1328311 (regOne!36460 r!11554) (reg!18303 r!11554)))) (ite (or c!1328313 c!1328312) (Context!13937 lt!2560873) (Context!13937 call!650101)) a!1901))))

(declare-fun b!7118050 () Bool)

(assert (=> b!7118050 (= e!4277102 (set.insert (Context!13937 lt!2560873) (as set.empty (Set Context!13936))))))

(declare-fun bm!650098 () Bool)

(assert (=> bm!650098 (= call!650103 (derivationStepZipperDown!2471 (ite c!1328313 (regOne!36461 r!11554) (regOne!36460 r!11554)) (ite c!1328313 (Context!13937 lt!2560873) (Context!13937 call!650100)) a!1901))))

(declare-fun b!7118051 () Bool)

(assert (=> b!7118051 (= e!4277100 (set.union call!650103 call!650098))))

(declare-fun b!7118052 () Bool)

(assert (=> b!7118052 (= e!4277099 (as set.empty (Set Context!13936)))))

(declare-fun b!7118053 () Bool)

(assert (=> b!7118053 (= e!4277103 call!650099)))

(assert (= (and d!2221479 c!1328309) b!7118050))

(assert (= (and d!2221479 (not c!1328309)) b!7118047))

(assert (= (and b!7118047 c!1328313) b!7118051))

(assert (= (and b!7118047 (not c!1328313)) b!7118049))

(assert (= (and b!7118049 res!2903979) b!7118046))

(assert (= (and b!7118049 c!1328312) b!7118043))

(assert (= (and b!7118049 (not c!1328312)) b!7118045))

(assert (= (and b!7118045 c!1328311) b!7118053))

(assert (= (and b!7118045 (not c!1328311)) b!7118048))

(assert (= (and b!7118048 c!1328310) b!7118044))

(assert (= (and b!7118048 (not c!1328310)) b!7118052))

(assert (= (or b!7118053 b!7118044) bm!650093))

(assert (= (or b!7118053 b!7118044) bm!650096))

(assert (= (or b!7118043 bm!650096) bm!650094))

(assert (= (or b!7118043 bm!650093) bm!650095))

(assert (= (or b!7118051 bm!650094) bm!650097))

(assert (= (or b!7118051 b!7118043) bm!650098))

(declare-fun m!7836030 () Bool)

(assert (=> bm!650098 m!7836030))

(assert (=> b!7118046 m!7836006))

(declare-fun m!7836032 () Bool)

(assert (=> bm!650097 m!7836032))

(declare-fun m!7836034 () Bool)

(assert (=> bm!650095 m!7836034))

(declare-fun m!7836036 () Bool)

(assert (=> b!7118050 m!7836036))

(assert (=> b!7117981 d!2221479))

(declare-fun bm!650099 () Bool)

(declare-fun call!650107 () List!68935)

(declare-fun call!650106 () List!68935)

(assert (=> bm!650099 (= call!650107 call!650106)))

(declare-fun b!7118054 () Bool)

(declare-fun e!4277107 () (Set Context!13936))

(declare-fun call!650109 () (Set Context!13936))

(declare-fun call!650108 () (Set Context!13936))

(assert (=> b!7118054 (= e!4277107 (set.union call!650109 call!650108))))

(declare-fun bm!650100 () Bool)

(declare-fun call!650104 () (Set Context!13936))

(assert (=> bm!650100 (= call!650108 call!650104)))

(declare-fun b!7118055 () Bool)

(declare-fun e!4277105 () (Set Context!13936))

(declare-fun call!650105 () (Set Context!13936))

(assert (=> b!7118055 (= e!4277105 call!650105)))

(declare-fun bm!650101 () Bool)

(declare-fun c!1328317 () Bool)

(declare-fun c!1328316 () Bool)

(assert (=> bm!650101 (= call!650106 ($colon$colon!2818 (exprs!7468 (Context!13937 ($colon$colon!2818 lt!2560873 r!11554))) (ite (or c!1328317 c!1328316) (regTwo!36460 (reg!18303 r!11554)) (reg!18303 r!11554))))))

(declare-fun b!7118056 () Bool)

(declare-fun e!4277109 () (Set Context!13936))

(assert (=> b!7118056 (= e!4277107 e!4277109)))

(assert (=> b!7118056 (= c!1328316 (is-Concat!26819 (reg!18303 r!11554)))))

(declare-fun d!2221483 () Bool)

(declare-fun c!1328314 () Bool)

(assert (=> d!2221483 (= c!1328314 (and (is-ElementMatch!17974 (reg!18303 r!11554)) (= (c!1328297 (reg!18303 r!11554)) a!1901)))))

(declare-fun e!4277108 () (Set Context!13936))

(assert (=> d!2221483 (= (derivationStepZipperDown!2471 (reg!18303 r!11554) (Context!13937 ($colon$colon!2818 lt!2560873 r!11554)) a!1901) e!4277108)))

(declare-fun b!7118057 () Bool)

(declare-fun e!4277110 () Bool)

(assert (=> b!7118057 (= e!4277110 (nullable!7611 (regOne!36460 (reg!18303 r!11554))))))

(declare-fun bm!650102 () Bool)

(assert (=> bm!650102 (= call!650105 call!650108)))

(declare-fun b!7118058 () Bool)

(declare-fun e!4277106 () (Set Context!13936))

(assert (=> b!7118058 (= e!4277108 e!4277106)))

(declare-fun c!1328318 () Bool)

(assert (=> b!7118058 (= c!1328318 (is-Union!17974 (reg!18303 r!11554)))))

(declare-fun b!7118059 () Bool)

(declare-fun c!1328315 () Bool)

(assert (=> b!7118059 (= c!1328315 (is-Star!17974 (reg!18303 r!11554)))))

(assert (=> b!7118059 (= e!4277109 e!4277105)))

(declare-fun b!7118060 () Bool)

(assert (=> b!7118060 (= c!1328317 e!4277110)))

(declare-fun res!2903980 () Bool)

(assert (=> b!7118060 (=> (not res!2903980) (not e!4277110))))

(assert (=> b!7118060 (= res!2903980 (is-Concat!26819 (reg!18303 r!11554)))))

(assert (=> b!7118060 (= e!4277106 e!4277107)))

(declare-fun bm!650103 () Bool)

(assert (=> bm!650103 (= call!650104 (derivationStepZipperDown!2471 (ite c!1328318 (regTwo!36461 (reg!18303 r!11554)) (ite c!1328317 (regTwo!36460 (reg!18303 r!11554)) (ite c!1328316 (regOne!36460 (reg!18303 r!11554)) (reg!18303 (reg!18303 r!11554))))) (ite (or c!1328318 c!1328317) (Context!13937 ($colon$colon!2818 lt!2560873 r!11554)) (Context!13937 call!650107)) a!1901))))

(declare-fun b!7118061 () Bool)

(assert (=> b!7118061 (= e!4277108 (set.insert (Context!13937 ($colon$colon!2818 lt!2560873 r!11554)) (as set.empty (Set Context!13936))))))

(declare-fun bm!650104 () Bool)

(assert (=> bm!650104 (= call!650109 (derivationStepZipperDown!2471 (ite c!1328318 (regOne!36461 (reg!18303 r!11554)) (regOne!36460 (reg!18303 r!11554))) (ite c!1328318 (Context!13937 ($colon$colon!2818 lt!2560873 r!11554)) (Context!13937 call!650106)) a!1901))))

(declare-fun b!7118062 () Bool)

(assert (=> b!7118062 (= e!4277106 (set.union call!650109 call!650104))))

(declare-fun b!7118063 () Bool)

(assert (=> b!7118063 (= e!4277105 (as set.empty (Set Context!13936)))))

(declare-fun b!7118064 () Bool)

(assert (=> b!7118064 (= e!4277109 call!650105)))

(assert (= (and d!2221483 c!1328314) b!7118061))

(assert (= (and d!2221483 (not c!1328314)) b!7118058))

(assert (= (and b!7118058 c!1328318) b!7118062))

(assert (= (and b!7118058 (not c!1328318)) b!7118060))

(assert (= (and b!7118060 res!2903980) b!7118057))

(assert (= (and b!7118060 c!1328317) b!7118054))

(assert (= (and b!7118060 (not c!1328317)) b!7118056))

(assert (= (and b!7118056 c!1328316) b!7118064))

(assert (= (and b!7118056 (not c!1328316)) b!7118059))

(assert (= (and b!7118059 c!1328315) b!7118055))

(assert (= (and b!7118059 (not c!1328315)) b!7118063))

(assert (= (or b!7118064 b!7118055) bm!650099))

(assert (= (or b!7118064 b!7118055) bm!650102))

(assert (= (or b!7118054 bm!650102) bm!650100))

(assert (= (or b!7118054 bm!650099) bm!650101))

(assert (= (or b!7118062 bm!650100) bm!650103))

(assert (= (or b!7118062 b!7118054) bm!650104))

(declare-fun m!7836038 () Bool)

(assert (=> bm!650104 m!7836038))

(declare-fun m!7836040 () Bool)

(assert (=> b!7118057 m!7836040))

(declare-fun m!7836042 () Bool)

(assert (=> bm!650103 m!7836042))

(declare-fun m!7836044 () Bool)

(assert (=> bm!650101 m!7836044))

(declare-fun m!7836046 () Bool)

(assert (=> b!7118061 m!7836046))

(assert (=> b!7117981 d!2221483))

(declare-fun d!2221485 () Bool)

(assert (=> d!2221485 (= ($colon$colon!2818 lt!2560873 r!11554) (Cons!68811 r!11554 lt!2560873))))

(assert (=> b!7117981 d!2221485))

(declare-fun b!7118101 () Bool)

(declare-fun e!4277141 () Bool)

(declare-fun e!4277140 () Bool)

(assert (=> b!7118101 (= e!4277141 e!4277140)))

(declare-fun res!2904002 () Bool)

(assert (=> b!7118101 (=> (not res!2904002) (not e!4277140))))

(declare-fun call!650122 () Bool)

(assert (=> b!7118101 (= res!2904002 call!650122)))

(declare-fun call!650124 () Bool)

(declare-fun c!1328327 () Bool)

(declare-fun c!1328328 () Bool)

(declare-fun bm!650117 () Bool)

(assert (=> bm!650117 (= call!650124 (validRegex!9247 (ite c!1328328 (reg!18303 r!11554) (ite c!1328327 (regOne!36461 r!11554) (regTwo!36460 r!11554)))))))

(declare-fun b!7118102 () Bool)

(declare-fun e!4277145 () Bool)

(declare-fun e!4277139 () Bool)

(assert (=> b!7118102 (= e!4277145 e!4277139)))

(declare-fun res!2904001 () Bool)

(assert (=> b!7118102 (= res!2904001 (not (nullable!7611 (reg!18303 r!11554))))))

(assert (=> b!7118102 (=> (not res!2904001) (not e!4277139))))

(declare-fun b!7118103 () Bool)

(declare-fun e!4277142 () Bool)

(assert (=> b!7118103 (= e!4277145 e!4277142)))

(assert (=> b!7118103 (= c!1328327 (is-Union!17974 r!11554))))

(declare-fun b!7118104 () Bool)

(declare-fun e!4277144 () Bool)

(assert (=> b!7118104 (= e!4277144 e!4277145)))

(assert (=> b!7118104 (= c!1328328 (is-Star!17974 r!11554))))

(declare-fun b!7118105 () Bool)

(declare-fun call!650123 () Bool)

(assert (=> b!7118105 (= e!4277140 call!650123)))

(declare-fun b!7118106 () Bool)

(declare-fun res!2904005 () Bool)

(assert (=> b!7118106 (=> res!2904005 e!4277141)))

(assert (=> b!7118106 (= res!2904005 (not (is-Concat!26819 r!11554)))))

(assert (=> b!7118106 (= e!4277142 e!4277141)))

(declare-fun bm!650118 () Bool)

(assert (=> bm!650118 (= call!650123 call!650124)))

(declare-fun b!7118108 () Bool)

(declare-fun res!2904003 () Bool)

(declare-fun e!4277143 () Bool)

(assert (=> b!7118108 (=> (not res!2904003) (not e!4277143))))

(assert (=> b!7118108 (= res!2904003 call!650123)))

(assert (=> b!7118108 (= e!4277142 e!4277143)))

(declare-fun d!2221487 () Bool)

(declare-fun res!2904004 () Bool)

(assert (=> d!2221487 (=> res!2904004 e!4277144)))

(assert (=> d!2221487 (= res!2904004 (is-ElementMatch!17974 r!11554))))

(assert (=> d!2221487 (= (validRegex!9247 r!11554) e!4277144)))

(declare-fun b!7118107 () Bool)

(assert (=> b!7118107 (= e!4277139 call!650124)))

(declare-fun b!7118109 () Bool)

(assert (=> b!7118109 (= e!4277143 call!650122)))

(declare-fun bm!650119 () Bool)

(assert (=> bm!650119 (= call!650122 (validRegex!9247 (ite c!1328327 (regTwo!36461 r!11554) (regOne!36460 r!11554))))))

(assert (= (and d!2221487 (not res!2904004)) b!7118104))

(assert (= (and b!7118104 c!1328328) b!7118102))

(assert (= (and b!7118104 (not c!1328328)) b!7118103))

(assert (= (and b!7118102 res!2904001) b!7118107))

(assert (= (and b!7118103 c!1328327) b!7118108))

(assert (= (and b!7118103 (not c!1328327)) b!7118106))

(assert (= (and b!7118108 res!2904003) b!7118109))

(assert (= (and b!7118106 (not res!2904005)) b!7118101))

(assert (= (and b!7118101 res!2904002) b!7118105))

(assert (= (or b!7118108 b!7118105) bm!650118))

(assert (= (or b!7118109 b!7118101) bm!650119))

(assert (= (or b!7118107 bm!650118) bm!650117))

(declare-fun m!7836048 () Bool)

(assert (=> bm!650117 m!7836048))

(declare-fun m!7836050 () Bool)

(assert (=> b!7118102 m!7836050))

(declare-fun m!7836052 () Bool)

(assert (=> bm!650119 m!7836052))

(assert (=> b!7117980 d!2221487))

(declare-fun e!4277157 () Bool)

(declare-fun lt!2560887 () List!68935)

(declare-fun b!7118130 () Bool)

(assert (=> b!7118130 (= e!4277157 (or (not (= (exprs!7468 auxCtx!45) Nil!68811)) (= lt!2560887 (exprs!7468 c!9994))))))

(declare-fun b!7118129 () Bool)

(declare-fun res!2904016 () Bool)

(assert (=> b!7118129 (=> (not res!2904016) (not e!4277157))))

(declare-fun size!41422 (List!68935) Int)

(assert (=> b!7118129 (= res!2904016 (= (size!41422 lt!2560887) (+ (size!41422 (exprs!7468 c!9994)) (size!41422 (exprs!7468 auxCtx!45)))))))

(declare-fun b!7118127 () Bool)

(declare-fun e!4277158 () List!68935)

(assert (=> b!7118127 (= e!4277158 (exprs!7468 auxCtx!45))))

(declare-fun b!7118128 () Bool)

(assert (=> b!7118128 (= e!4277158 (Cons!68811 (h!75259 (exprs!7468 c!9994)) (++!16126 (t!382788 (exprs!7468 c!9994)) (exprs!7468 auxCtx!45))))))

(declare-fun d!2221489 () Bool)

(assert (=> d!2221489 e!4277157))

(declare-fun res!2904015 () Bool)

(assert (=> d!2221489 (=> (not res!2904015) (not e!4277157))))

(declare-fun content!14047 (List!68935) (Set Regex!17974))

(assert (=> d!2221489 (= res!2904015 (= (content!14047 lt!2560887) (set.union (content!14047 (exprs!7468 c!9994)) (content!14047 (exprs!7468 auxCtx!45)))))))

(assert (=> d!2221489 (= lt!2560887 e!4277158)))

(declare-fun c!1328333 () Bool)

(assert (=> d!2221489 (= c!1328333 (is-Nil!68811 (exprs!7468 c!9994)))))

(assert (=> d!2221489 (= (++!16126 (exprs!7468 c!9994) (exprs!7468 auxCtx!45)) lt!2560887)))

(assert (= (and d!2221489 c!1328333) b!7118127))

(assert (= (and d!2221489 (not c!1328333)) b!7118128))

(assert (= (and d!2221489 res!2904015) b!7118129))

(assert (= (and b!7118129 res!2904016) b!7118130))

(declare-fun m!7836054 () Bool)

(assert (=> b!7118129 m!7836054))

(declare-fun m!7836056 () Bool)

(assert (=> b!7118129 m!7836056))

(declare-fun m!7836058 () Bool)

(assert (=> b!7118129 m!7836058))

(declare-fun m!7836060 () Bool)

(assert (=> b!7118128 m!7836060))

(declare-fun m!7836062 () Bool)

(assert (=> d!2221489 m!7836062))

(declare-fun m!7836064 () Bool)

(assert (=> d!2221489 m!7836064))

(declare-fun m!7836066 () Bool)

(assert (=> d!2221489 m!7836066))

(assert (=> b!7117980 d!2221489))

(declare-fun d!2221491 () Bool)

(declare-fun forall!16862 (List!68935 Int) Bool)

(assert (=> d!2221491 (forall!16862 (++!16126 (exprs!7468 c!9994) (exprs!7468 auxCtx!45)) lambda!432478)))

(declare-fun lt!2560890 () Unit!162619)

(declare-fun choose!54897 (List!68935 List!68935 Int) Unit!162619)

(assert (=> d!2221491 (= lt!2560890 (choose!54897 (exprs!7468 c!9994) (exprs!7468 auxCtx!45) lambda!432478))))

(assert (=> d!2221491 (forall!16862 (exprs!7468 c!9994) lambda!432478)))

(assert (=> d!2221491 (= (lemmaConcatPreservesForall!1259 (exprs!7468 c!9994) (exprs!7468 auxCtx!45) lambda!432478) lt!2560890)))

(declare-fun bs!1885668 () Bool)

(assert (= bs!1885668 d!2221491))

(assert (=> bs!1885668 m!7836000))

(assert (=> bs!1885668 m!7836000))

(declare-fun m!7836074 () Bool)

(assert (=> bs!1885668 m!7836074))

(declare-fun m!7836076 () Bool)

(assert (=> bs!1885668 m!7836076))

(declare-fun m!7836078 () Bool)

(assert (=> bs!1885668 m!7836078))

(assert (=> b!7117980 d!2221491))

(declare-fun b!7118131 () Bool)

(declare-fun e!4277161 () Bool)

(declare-fun e!4277160 () Bool)

(assert (=> b!7118131 (= e!4277161 e!4277160)))

(declare-fun res!2904018 () Bool)

(assert (=> b!7118131 (=> (not res!2904018) (not e!4277160))))

(declare-fun call!650128 () Bool)

(assert (=> b!7118131 (= res!2904018 call!650128)))

(declare-fun call!650130 () Bool)

(declare-fun c!1328335 () Bool)

(declare-fun bm!650123 () Bool)

(declare-fun c!1328334 () Bool)

(assert (=> bm!650123 (= call!650130 (validRegex!9247 (ite c!1328335 (reg!18303 (reg!18303 r!11554)) (ite c!1328334 (regOne!36461 (reg!18303 r!11554)) (regTwo!36460 (reg!18303 r!11554))))))))

(declare-fun b!7118132 () Bool)

(declare-fun e!4277165 () Bool)

(declare-fun e!4277159 () Bool)

(assert (=> b!7118132 (= e!4277165 e!4277159)))

(declare-fun res!2904017 () Bool)

(assert (=> b!7118132 (= res!2904017 (not (nullable!7611 (reg!18303 (reg!18303 r!11554)))))))

(assert (=> b!7118132 (=> (not res!2904017) (not e!4277159))))

(declare-fun b!7118133 () Bool)

(declare-fun e!4277162 () Bool)

(assert (=> b!7118133 (= e!4277165 e!4277162)))

(assert (=> b!7118133 (= c!1328334 (is-Union!17974 (reg!18303 r!11554)))))

(declare-fun b!7118134 () Bool)

(declare-fun e!4277164 () Bool)

(assert (=> b!7118134 (= e!4277164 e!4277165)))

(assert (=> b!7118134 (= c!1328335 (is-Star!17974 (reg!18303 r!11554)))))

(declare-fun b!7118135 () Bool)

(declare-fun call!650129 () Bool)

(assert (=> b!7118135 (= e!4277160 call!650129)))

(declare-fun b!7118136 () Bool)

(declare-fun res!2904021 () Bool)

(assert (=> b!7118136 (=> res!2904021 e!4277161)))

(assert (=> b!7118136 (= res!2904021 (not (is-Concat!26819 (reg!18303 r!11554))))))

(assert (=> b!7118136 (= e!4277162 e!4277161)))

(declare-fun bm!650124 () Bool)

(assert (=> bm!650124 (= call!650129 call!650130)))

(declare-fun b!7118138 () Bool)

(declare-fun res!2904019 () Bool)

(declare-fun e!4277163 () Bool)

(assert (=> b!7118138 (=> (not res!2904019) (not e!4277163))))

(assert (=> b!7118138 (= res!2904019 call!650129)))

(assert (=> b!7118138 (= e!4277162 e!4277163)))

(declare-fun d!2221495 () Bool)

(declare-fun res!2904020 () Bool)

(assert (=> d!2221495 (=> res!2904020 e!4277164)))

(assert (=> d!2221495 (= res!2904020 (is-ElementMatch!17974 (reg!18303 r!11554)))))

(assert (=> d!2221495 (= (validRegex!9247 (reg!18303 r!11554)) e!4277164)))

(declare-fun b!7118137 () Bool)

(assert (=> b!7118137 (= e!4277159 call!650130)))

(declare-fun b!7118139 () Bool)

(assert (=> b!7118139 (= e!4277163 call!650128)))

(declare-fun bm!650125 () Bool)

(assert (=> bm!650125 (= call!650128 (validRegex!9247 (ite c!1328334 (regTwo!36461 (reg!18303 r!11554)) (regOne!36460 (reg!18303 r!11554)))))))

(assert (= (and d!2221495 (not res!2904020)) b!7118134))

(assert (= (and b!7118134 c!1328335) b!7118132))

(assert (= (and b!7118134 (not c!1328335)) b!7118133))

(assert (= (and b!7118132 res!2904017) b!7118137))

(assert (= (and b!7118133 c!1328334) b!7118138))

(assert (= (and b!7118133 (not c!1328334)) b!7118136))

(assert (= (and b!7118138 res!2904019) b!7118139))

(assert (= (and b!7118136 (not res!2904021)) b!7118131))

(assert (= (and b!7118131 res!2904018) b!7118135))

(assert (= (or b!7118138 b!7118135) bm!650124))

(assert (= (or b!7118139 b!7118131) bm!650125))

(assert (= (or b!7118137 bm!650124) bm!650123))

(declare-fun m!7836080 () Bool)

(assert (=> bm!650123 m!7836080))

(declare-fun m!7836082 () Bool)

(assert (=> b!7118132 m!7836082))

(declare-fun m!7836084 () Bool)

(assert (=> bm!650125 m!7836084))

(assert (=> b!7117976 d!2221495))

(assert (=> start!692762 d!2221487))

(declare-fun bs!1885670 () Bool)

(declare-fun d!2221497 () Bool)

(assert (= bs!1885670 (and d!2221497 b!7117980)))

(declare-fun lambda!432489 () Int)

(assert (=> bs!1885670 (= lambda!432489 lambda!432478)))

(assert (=> d!2221497 (= (inv!87799 c!9994) (forall!16862 (exprs!7468 c!9994) lambda!432489))))

(declare-fun bs!1885671 () Bool)

(assert (= bs!1885671 d!2221497))

(declare-fun m!7836086 () Bool)

(assert (=> bs!1885671 m!7836086))

(assert (=> start!692762 d!2221497))

(declare-fun bs!1885672 () Bool)

(declare-fun d!2221499 () Bool)

(assert (= bs!1885672 (and d!2221499 b!7117980)))

(declare-fun lambda!432490 () Int)

(assert (=> bs!1885672 (= lambda!432490 lambda!432478)))

(declare-fun bs!1885674 () Bool)

(assert (= bs!1885674 (and d!2221499 d!2221497)))

(assert (=> bs!1885674 (= lambda!432490 lambda!432489)))

(assert (=> d!2221499 (= (inv!87799 auxCtx!45) (forall!16862 (exprs!7468 auxCtx!45) lambda!432490))))

(declare-fun bs!1885675 () Bool)

(assert (= bs!1885675 d!2221499))

(declare-fun m!7836090 () Bool)

(assert (=> bs!1885675 m!7836090))

(assert (=> start!692762 d!2221499))

(declare-fun b!7118144 () Bool)

(declare-fun e!4277168 () Bool)

(declare-fun tp!1959447 () Bool)

(declare-fun tp!1959448 () Bool)

(assert (=> b!7118144 (= e!4277168 (and tp!1959447 tp!1959448))))

(assert (=> b!7117969 (= tp!1959420 e!4277168)))

(assert (= (and b!7117969 (is-Cons!68811 (exprs!7468 c!9994))) b!7118144))

(declare-fun b!7118165 () Bool)

(declare-fun e!4277178 () Bool)

(declare-fun tp!1959460 () Bool)

(declare-fun tp!1959462 () Bool)

(assert (=> b!7118165 (= e!4277178 (and tp!1959460 tp!1959462))))

(assert (=> b!7117979 (= tp!1959417 e!4277178)))

(declare-fun b!7118164 () Bool)

(assert (=> b!7118164 (= e!4277178 tp_is_empty!45181)))

(declare-fun b!7118167 () Bool)

(declare-fun tp!1959459 () Bool)

(declare-fun tp!1959461 () Bool)

(assert (=> b!7118167 (= e!4277178 (and tp!1959459 tp!1959461))))

(declare-fun b!7118166 () Bool)

(declare-fun tp!1959463 () Bool)

(assert (=> b!7118166 (= e!4277178 tp!1959463)))

(assert (= (and b!7117979 (is-ElementMatch!17974 (regOne!36460 r!11554))) b!7118164))

(assert (= (and b!7117979 (is-Concat!26819 (regOne!36460 r!11554))) b!7118165))

(assert (= (and b!7117979 (is-Star!17974 (regOne!36460 r!11554))) b!7118166))

(assert (= (and b!7117979 (is-Union!17974 (regOne!36460 r!11554))) b!7118167))

(declare-fun b!7118169 () Bool)

(declare-fun e!4277179 () Bool)

(declare-fun tp!1959465 () Bool)

(declare-fun tp!1959467 () Bool)

(assert (=> b!7118169 (= e!4277179 (and tp!1959465 tp!1959467))))

(assert (=> b!7117979 (= tp!1959415 e!4277179)))

(declare-fun b!7118168 () Bool)

(assert (=> b!7118168 (= e!4277179 tp_is_empty!45181)))

(declare-fun b!7118171 () Bool)

(declare-fun tp!1959464 () Bool)

(declare-fun tp!1959466 () Bool)

(assert (=> b!7118171 (= e!4277179 (and tp!1959464 tp!1959466))))

(declare-fun b!7118170 () Bool)

(declare-fun tp!1959468 () Bool)

(assert (=> b!7118170 (= e!4277179 tp!1959468)))

(assert (= (and b!7117979 (is-ElementMatch!17974 (regTwo!36460 r!11554))) b!7118168))

(assert (= (and b!7117979 (is-Concat!26819 (regTwo!36460 r!11554))) b!7118169))

(assert (= (and b!7117979 (is-Star!17974 (regTwo!36460 r!11554))) b!7118170))

(assert (= (and b!7117979 (is-Union!17974 (regTwo!36460 r!11554))) b!7118171))

(declare-fun b!7118173 () Bool)

(declare-fun e!4277180 () Bool)

(declare-fun tp!1959470 () Bool)

(declare-fun tp!1959472 () Bool)

(assert (=> b!7118173 (= e!4277180 (and tp!1959470 tp!1959472))))

(assert (=> b!7117970 (= tp!1959416 e!4277180)))

(declare-fun b!7118172 () Bool)

(assert (=> b!7118172 (= e!4277180 tp_is_empty!45181)))

(declare-fun b!7118175 () Bool)

(declare-fun tp!1959469 () Bool)

(declare-fun tp!1959471 () Bool)

(assert (=> b!7118175 (= e!4277180 (and tp!1959469 tp!1959471))))

(declare-fun b!7118174 () Bool)

(declare-fun tp!1959473 () Bool)

(assert (=> b!7118174 (= e!4277180 tp!1959473)))

(assert (= (and b!7117970 (is-ElementMatch!17974 (reg!18303 r!11554))) b!7118172))

(assert (= (and b!7117970 (is-Concat!26819 (reg!18303 r!11554))) b!7118173))

(assert (= (and b!7117970 (is-Star!17974 (reg!18303 r!11554))) b!7118174))

(assert (= (and b!7117970 (is-Union!17974 (reg!18303 r!11554))) b!7118175))

(declare-fun b!7118177 () Bool)

(declare-fun e!4277181 () Bool)

(declare-fun tp!1959475 () Bool)

(declare-fun tp!1959477 () Bool)

(assert (=> b!7118177 (= e!4277181 (and tp!1959475 tp!1959477))))

(assert (=> b!7117975 (= tp!1959419 e!4277181)))

(declare-fun b!7118176 () Bool)

(assert (=> b!7118176 (= e!4277181 tp_is_empty!45181)))

(declare-fun b!7118179 () Bool)

(declare-fun tp!1959474 () Bool)

(declare-fun tp!1959476 () Bool)

(assert (=> b!7118179 (= e!4277181 (and tp!1959474 tp!1959476))))

(declare-fun b!7118178 () Bool)

(declare-fun tp!1959478 () Bool)

(assert (=> b!7118178 (= e!4277181 tp!1959478)))

(assert (= (and b!7117975 (is-ElementMatch!17974 (regOne!36461 r!11554))) b!7118176))

(assert (= (and b!7117975 (is-Concat!26819 (regOne!36461 r!11554))) b!7118177))

(assert (= (and b!7117975 (is-Star!17974 (regOne!36461 r!11554))) b!7118178))

(assert (= (and b!7117975 (is-Union!17974 (regOne!36461 r!11554))) b!7118179))

(declare-fun b!7118181 () Bool)

(declare-fun e!4277182 () Bool)

(declare-fun tp!1959480 () Bool)

(declare-fun tp!1959482 () Bool)

(assert (=> b!7118181 (= e!4277182 (and tp!1959480 tp!1959482))))

(assert (=> b!7117975 (= tp!1959421 e!4277182)))

(declare-fun b!7118180 () Bool)

(assert (=> b!7118180 (= e!4277182 tp_is_empty!45181)))

(declare-fun b!7118183 () Bool)

(declare-fun tp!1959479 () Bool)

(declare-fun tp!1959481 () Bool)

(assert (=> b!7118183 (= e!4277182 (and tp!1959479 tp!1959481))))

(declare-fun b!7118182 () Bool)

(declare-fun tp!1959483 () Bool)

(assert (=> b!7118182 (= e!4277182 tp!1959483)))

(assert (= (and b!7117975 (is-ElementMatch!17974 (regTwo!36461 r!11554))) b!7118180))

(assert (= (and b!7117975 (is-Concat!26819 (regTwo!36461 r!11554))) b!7118181))

(assert (= (and b!7117975 (is-Star!17974 (regTwo!36461 r!11554))) b!7118182))

(assert (= (and b!7117975 (is-Union!17974 (regTwo!36461 r!11554))) b!7118183))

(declare-fun b!7118184 () Bool)

(declare-fun e!4277183 () Bool)

(declare-fun tp!1959484 () Bool)

(declare-fun tp!1959485 () Bool)

(assert (=> b!7118184 (= e!4277183 (and tp!1959484 tp!1959485))))

(assert (=> b!7117971 (= tp!1959418 e!4277183)))

(assert (= (and b!7117971 (is-Cons!68811 (exprs!7468 auxCtx!45))) b!7118184))

(push 1)

(assert (not b!7118174))

(assert tp_is_empty!45181)

(assert (not b!7118169))

(assert (not bm!650104))

(assert (not b!7118175))

(assert (not d!2221497))

(assert (not b!7118165))

(assert (not d!2221489))

(assert (not b!7118167))

(assert (not bm!650097))

(assert (not b!7118129))

(assert (not d!2221491))

(assert (not b!7118184))

(assert (not b!7118128))

(assert (not bm!650125))

(assert (not b!7118173))

(assert (not bm!650101))

(assert (not b!7118181))

(assert (not b!7118177))

(assert (not b!7118166))

(assert (not b!7118182))

(assert (not b!7118179))

(assert (not bm!650098))

(assert (not d!2221499))

(assert (not b!7118144))

(assert (not b!7118170))

(assert (not bm!650103))

(assert (not b!7118183))

(assert (not bm!650117))

(assert (not bm!650123))

(assert (not d!2221477))

(assert (not b!7118171))

(assert (not b!7118102))

(assert (not b!7118046))

(assert (not b!7118178))

(assert (not b!7118057))

(assert (not b!7118132))

(assert (not bm!650119))

(assert (not bm!650095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

