; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718866 () Bool)

(assert start!718866)

(declare-fun b!7363060 () Bool)

(declare-fun e!4408369 () Bool)

(declare-fun tp!2092414 () Bool)

(assert (=> b!7363060 (= e!4408369 tp!2092414)))

(declare-fun b!7363061 () Bool)

(declare-fun tp!2092410 () Bool)

(declare-fun tp!2092411 () Bool)

(assert (=> b!7363061 (= e!4408369 (and tp!2092410 tp!2092411))))

(declare-fun b!7363062 () Bool)

(declare-fun e!4408370 () Bool)

(declare-fun e!4408375 () Bool)

(assert (=> b!7363062 (= e!4408370 e!4408375)))

(declare-fun res!2972174 () Bool)

(assert (=> b!7363062 (=> (not res!2972174) (not e!4408375))))

(declare-datatypes ((C!38754 0))(
  ( (C!38755 (val!29737 Int)) )
))
(declare-datatypes ((Regex!19240 0))(
  ( (ElementMatch!19240 (c!1368156 C!38754)) (Concat!28085 (regOne!38992 Regex!19240) (regTwo!38992 Regex!19240)) (EmptyExpr!19240) (Star!19240 (reg!19569 Regex!19240)) (EmptyLang!19240) (Union!19240 (regOne!38993 Regex!19240) (regTwo!38993 Regex!19240)) )
))
(declare-fun r1!2370 () Regex!19240)

(declare-fun c!10362 () C!38754)

(declare-datatypes ((List!71736 0))(
  ( (Nil!71612) (Cons!71612 (h!78060 Regex!19240) (t!386185 List!71736)) )
))
(declare-datatypes ((Context!16360 0))(
  ( (Context!16361 (exprs!8680 List!71736)) )
))
(declare-fun lt!2614244 () (Set Context!16360))

(declare-fun lt!2614242 () (Set Context!16360))

(declare-fun ct1!282 () Context!16360)

(declare-fun derivationStepZipperDown!3066 (Regex!19240 Context!16360 C!38754) (Set Context!16360))

(assert (=> b!7363062 (= res!2972174 (= lt!2614242 (set.union lt!2614244 (derivationStepZipperDown!3066 (regTwo!38993 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7363062 (= lt!2614244 (derivationStepZipperDown!3066 (regOne!38993 r1!2370) ct1!282 c!10362))))

(declare-fun b!7363063 () Bool)

(declare-fun lt!2614248 () Context!16360)

(declare-fun lt!2614250 () (Set Context!16360))

(assert (=> b!7363063 (= e!4408375 (not (set.member lt!2614248 lt!2614250)))))

(declare-fun ct2!378 () Context!16360)

(declare-datatypes ((Unit!165429 0))(
  ( (Unit!165430) )
))
(declare-fun lt!2614247 () Unit!165429)

(declare-fun cWitness!61 () Context!16360)

(declare-fun lambda!457494 () Int)

(declare-fun lemmaConcatPreservesForall!1913 (List!71736 List!71736 Int) Unit!165429)

(assert (=> b!7363063 (= lt!2614247 (lemmaConcatPreservesForall!1913 (exprs!8680 cWitness!61) (exprs!8680 ct2!378) lambda!457494))))

(declare-fun lt!2614245 () Context!16360)

(assert (=> b!7363063 (set.member lt!2614248 (derivationStepZipperDown!3066 (regOne!38993 r1!2370) lt!2614245 c!10362))))

(declare-fun ++!17056 (List!71736 List!71736) List!71736)

(assert (=> b!7363063 (= lt!2614248 (Context!16361 (++!17056 (exprs!8680 cWitness!61) (exprs!8680 ct2!378))))))

(declare-fun lt!2614251 () Unit!165429)

(assert (=> b!7363063 (= lt!2614251 (lemmaConcatPreservesForall!1913 (exprs!8680 ct1!282) (exprs!8680 ct2!378) lambda!457494))))

(declare-fun lt!2614249 () Unit!165429)

(assert (=> b!7363063 (= lt!2614249 (lemmaConcatPreservesForall!1913 (exprs!8680 cWitness!61) (exprs!8680 ct2!378) lambda!457494))))

(declare-fun lt!2614243 () Unit!165429)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!115 (Regex!19240 Context!16360 Context!16360 Context!16360 C!38754) Unit!165429)

(assert (=> b!7363063 (= lt!2614243 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!115 (regOne!38993 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7363064 () Bool)

(declare-fun tp_is_empty!48725 () Bool)

(assert (=> b!7363064 (= e!4408369 tp_is_empty!48725)))

(declare-fun b!7363065 () Bool)

(declare-fun tp!2092415 () Bool)

(declare-fun tp!2092413 () Bool)

(assert (=> b!7363065 (= e!4408369 (and tp!2092415 tp!2092413))))

(declare-fun b!7363066 () Bool)

(declare-fun e!4408376 () Bool)

(declare-fun tp!2092417 () Bool)

(assert (=> b!7363066 (= e!4408376 tp!2092417)))

(declare-fun b!7363067 () Bool)

(declare-fun e!4408374 () Bool)

(declare-fun e!4408371 () Bool)

(assert (=> b!7363067 (= e!4408374 e!4408371)))

(declare-fun res!2972175 () Bool)

(assert (=> b!7363067 (=> (not res!2972175) (not e!4408371))))

(assert (=> b!7363067 (= res!2972175 (set.member cWitness!61 lt!2614242))))

(assert (=> b!7363067 (= lt!2614242 (derivationStepZipperDown!3066 r1!2370 ct1!282 c!10362))))

(declare-fun res!2972172 () Bool)

(assert (=> start!718866 (=> (not res!2972172) (not e!4408374))))

(declare-fun validRegex!9836 (Regex!19240) Bool)

(assert (=> start!718866 (= res!2972172 (validRegex!9836 r1!2370))))

(assert (=> start!718866 e!4408374))

(assert (=> start!718866 tp_is_empty!48725))

(declare-fun e!4408372 () Bool)

(declare-fun inv!91441 (Context!16360) Bool)

(assert (=> start!718866 (and (inv!91441 cWitness!61) e!4408372)))

(declare-fun e!4408373 () Bool)

(assert (=> start!718866 (and (inv!91441 ct1!282) e!4408373)))

(assert (=> start!718866 e!4408369))

(assert (=> start!718866 (and (inv!91441 ct2!378) e!4408376)))

(declare-fun b!7363068 () Bool)

(declare-fun res!2972171 () Bool)

(assert (=> b!7363068 (=> (not res!2972171) (not e!4408375))))

(assert (=> b!7363068 (= res!2972171 (set.member cWitness!61 lt!2614244))))

(declare-fun b!7363069 () Bool)

(assert (=> b!7363069 (= e!4408371 e!4408370)))

(declare-fun res!2972173 () Bool)

(assert (=> b!7363069 (=> (not res!2972173) (not e!4408370))))

(assert (=> b!7363069 (= res!2972173 (and (or (not (is-ElementMatch!19240 r1!2370)) (not (= c!10362 (c!1368156 r1!2370)))) (is-Union!19240 r1!2370)))))

(assert (=> b!7363069 (= lt!2614250 (derivationStepZipperDown!3066 r1!2370 lt!2614245 c!10362))))

(assert (=> b!7363069 (= lt!2614245 (Context!16361 (++!17056 (exprs!8680 ct1!282) (exprs!8680 ct2!378))))))

(declare-fun lt!2614246 () Unit!165429)

(assert (=> b!7363069 (= lt!2614246 (lemmaConcatPreservesForall!1913 (exprs!8680 ct1!282) (exprs!8680 ct2!378) lambda!457494))))

(declare-fun b!7363070 () Bool)

(declare-fun tp!2092416 () Bool)

(assert (=> b!7363070 (= e!4408372 tp!2092416)))

(declare-fun b!7363071 () Bool)

(declare-fun tp!2092412 () Bool)

(assert (=> b!7363071 (= e!4408373 tp!2092412)))

(assert (= (and start!718866 res!2972172) b!7363067))

(assert (= (and b!7363067 res!2972175) b!7363069))

(assert (= (and b!7363069 res!2972173) b!7363062))

(assert (= (and b!7363062 res!2972174) b!7363068))

(assert (= (and b!7363068 res!2972171) b!7363063))

(assert (= start!718866 b!7363070))

(assert (= start!718866 b!7363071))

(assert (= (and start!718866 (is-ElementMatch!19240 r1!2370)) b!7363064))

(assert (= (and start!718866 (is-Concat!28085 r1!2370)) b!7363061))

(assert (= (and start!718866 (is-Star!19240 r1!2370)) b!7363060))

(assert (= (and start!718866 (is-Union!19240 r1!2370)) b!7363065))

(assert (= start!718866 b!7363066))

(declare-fun m!8019718 () Bool)

(assert (=> start!718866 m!8019718))

(declare-fun m!8019720 () Bool)

(assert (=> start!718866 m!8019720))

(declare-fun m!8019722 () Bool)

(assert (=> start!718866 m!8019722))

(declare-fun m!8019724 () Bool)

(assert (=> start!718866 m!8019724))

(declare-fun m!8019726 () Bool)

(assert (=> b!7363068 m!8019726))

(declare-fun m!8019728 () Bool)

(assert (=> b!7363062 m!8019728))

(declare-fun m!8019730 () Bool)

(assert (=> b!7363062 m!8019730))

(declare-fun m!8019732 () Bool)

(assert (=> b!7363063 m!8019732))

(declare-fun m!8019734 () Bool)

(assert (=> b!7363063 m!8019734))

(assert (=> b!7363063 m!8019734))

(declare-fun m!8019736 () Bool)

(assert (=> b!7363063 m!8019736))

(declare-fun m!8019738 () Bool)

(assert (=> b!7363063 m!8019738))

(declare-fun m!8019740 () Bool)

(assert (=> b!7363063 m!8019740))

(declare-fun m!8019742 () Bool)

(assert (=> b!7363063 m!8019742))

(declare-fun m!8019744 () Bool)

(assert (=> b!7363063 m!8019744))

(declare-fun m!8019746 () Bool)

(assert (=> b!7363067 m!8019746))

(declare-fun m!8019748 () Bool)

(assert (=> b!7363067 m!8019748))

(declare-fun m!8019750 () Bool)

(assert (=> b!7363069 m!8019750))

(declare-fun m!8019752 () Bool)

(assert (=> b!7363069 m!8019752))

(assert (=> b!7363069 m!8019742))

(push 1)

(assert (not b!7363067))

(assert (not b!7363061))

(assert (not b!7363071))

(assert (not b!7363065))

(assert (not b!7363060))

(assert (not b!7363066))

(assert (not start!718866))

(assert (not b!7363070))

(assert (not b!7363063))

(assert (not b!7363062))

(assert tp_is_empty!48725)

(assert (not b!7363069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!675063 () Bool)

(declare-fun call!675068 () (Set Context!16360))

(declare-fun call!675071 () (Set Context!16360))

(assert (=> bm!675063 (= call!675068 call!675071)))

(declare-fun b!7363130 () Bool)

(declare-fun e!4408413 () (Set Context!16360))

(assert (=> b!7363130 (= e!4408413 call!675068)))

(declare-fun b!7363131 () Bool)

(declare-fun e!4408417 () (Set Context!16360))

(assert (=> b!7363131 (= e!4408417 e!4408413)))

(declare-fun c!1368171 () Bool)

(assert (=> b!7363131 (= c!1368171 (is-Concat!28085 r1!2370))))

(declare-fun b!7363132 () Bool)

(declare-fun e!4408415 () (Set Context!16360))

(assert (=> b!7363132 (= e!4408415 (set.insert ct1!282 (as set.empty (Set Context!16360))))))

(declare-fun bm!675064 () Bool)

(declare-fun call!675073 () List!71736)

(declare-fun call!675072 () List!71736)

(assert (=> bm!675064 (= call!675073 call!675072)))

(declare-fun b!7363133 () Bool)

(declare-fun e!4408414 () Bool)

(declare-fun nullable!8322 (Regex!19240) Bool)

(assert (=> b!7363133 (= e!4408414 (nullable!8322 (regOne!38992 r1!2370)))))

(declare-fun bm!675065 () Bool)

(declare-fun call!675069 () (Set Context!16360))

(assert (=> bm!675065 (= call!675071 call!675069)))

(declare-fun b!7363134 () Bool)

(declare-fun e!4408416 () (Set Context!16360))

(assert (=> b!7363134 (= e!4408416 call!675068)))

(declare-fun bm!675066 () Bool)

(declare-fun c!1368170 () Bool)

(declare-fun call!675070 () (Set Context!16360))

(assert (=> bm!675066 (= call!675070 (derivationStepZipperDown!3066 (ite c!1368170 (regOne!38993 r1!2370) (regOne!38992 r1!2370)) (ite c!1368170 ct1!282 (Context!16361 call!675072)) c!10362))))

(declare-fun b!7363136 () Bool)

(assert (=> b!7363136 (= e!4408417 (set.union call!675070 call!675071))))

(declare-fun c!1368172 () Bool)

(declare-fun bm!675067 () Bool)

(assert (=> bm!675067 (= call!675069 (derivationStepZipperDown!3066 (ite c!1368170 (regTwo!38993 r1!2370) (ite c!1368172 (regTwo!38992 r1!2370) (ite c!1368171 (regOne!38992 r1!2370) (reg!19569 r1!2370)))) (ite (or c!1368170 c!1368172) ct1!282 (Context!16361 call!675073)) c!10362))))

(declare-fun b!7363137 () Bool)

(assert (=> b!7363137 (= e!4408416 (as set.empty (Set Context!16360)))))

(declare-fun b!7363138 () Bool)

(declare-fun e!4408418 () (Set Context!16360))

(assert (=> b!7363138 (= e!4408415 e!4408418)))

(assert (=> b!7363138 (= c!1368170 (is-Union!19240 r1!2370))))

(declare-fun b!7363139 () Bool)

(assert (=> b!7363139 (= c!1368172 e!4408414)))

(declare-fun res!2972193 () Bool)

(assert (=> b!7363139 (=> (not res!2972193) (not e!4408414))))

(assert (=> b!7363139 (= res!2972193 (is-Concat!28085 r1!2370))))

(assert (=> b!7363139 (= e!4408418 e!4408417)))

(declare-fun b!7363140 () Bool)

(assert (=> b!7363140 (= e!4408418 (set.union call!675070 call!675069))))

(declare-fun bm!675068 () Bool)

(declare-fun $colon$colon!3228 (List!71736 Regex!19240) List!71736)

(assert (=> bm!675068 (= call!675072 ($colon$colon!3228 (exprs!8680 ct1!282) (ite (or c!1368172 c!1368171) (regTwo!38992 r1!2370) r1!2370)))))

(declare-fun d!2282391 () Bool)

(declare-fun c!1368168 () Bool)

(assert (=> d!2282391 (= c!1368168 (and (is-ElementMatch!19240 r1!2370) (= (c!1368156 r1!2370) c!10362)))))

(assert (=> d!2282391 (= (derivationStepZipperDown!3066 r1!2370 ct1!282 c!10362) e!4408415)))

(declare-fun b!7363135 () Bool)

(declare-fun c!1368169 () Bool)

(assert (=> b!7363135 (= c!1368169 (is-Star!19240 r1!2370))))

(assert (=> b!7363135 (= e!4408413 e!4408416)))

(assert (= (and d!2282391 c!1368168) b!7363132))

(assert (= (and d!2282391 (not c!1368168)) b!7363138))

(assert (= (and b!7363138 c!1368170) b!7363140))

(assert (= (and b!7363138 (not c!1368170)) b!7363139))

(assert (= (and b!7363139 res!2972193) b!7363133))

(assert (= (and b!7363139 c!1368172) b!7363136))

(assert (= (and b!7363139 (not c!1368172)) b!7363131))

(assert (= (and b!7363131 c!1368171) b!7363130))

(assert (= (and b!7363131 (not c!1368171)) b!7363135))

(assert (= (and b!7363135 c!1368169) b!7363134))

(assert (= (and b!7363135 (not c!1368169)) b!7363137))

(assert (= (or b!7363130 b!7363134) bm!675064))

(assert (= (or b!7363130 b!7363134) bm!675063))

(assert (= (or b!7363136 bm!675063) bm!675065))

(assert (= (or b!7363136 bm!675064) bm!675068))

(assert (= (or b!7363140 bm!675065) bm!675067))

(assert (= (or b!7363140 b!7363136) bm!675066))

(declare-fun m!8019790 () Bool)

(assert (=> b!7363133 m!8019790))

(declare-fun m!8019792 () Bool)

(assert (=> bm!675066 m!8019792))

(declare-fun m!8019794 () Bool)

(assert (=> b!7363132 m!8019794))

(declare-fun m!8019796 () Bool)

(assert (=> bm!675067 m!8019796))

(declare-fun m!8019798 () Bool)

(assert (=> bm!675068 m!8019798))

(assert (=> b!7363067 d!2282391))

(declare-fun bm!675069 () Bool)

(declare-fun call!675074 () (Set Context!16360))

(declare-fun call!675077 () (Set Context!16360))

(assert (=> bm!675069 (= call!675074 call!675077)))

(declare-fun b!7363141 () Bool)

(declare-fun e!4408419 () (Set Context!16360))

(assert (=> b!7363141 (= e!4408419 call!675074)))

(declare-fun b!7363142 () Bool)

(declare-fun e!4408423 () (Set Context!16360))

(assert (=> b!7363142 (= e!4408423 e!4408419)))

(declare-fun c!1368176 () Bool)

(assert (=> b!7363142 (= c!1368176 (is-Concat!28085 (regTwo!38993 r1!2370)))))

(declare-fun b!7363143 () Bool)

(declare-fun e!4408421 () (Set Context!16360))

(assert (=> b!7363143 (= e!4408421 (set.insert ct1!282 (as set.empty (Set Context!16360))))))

(declare-fun bm!675070 () Bool)

(declare-fun call!675079 () List!71736)

(declare-fun call!675078 () List!71736)

(assert (=> bm!675070 (= call!675079 call!675078)))

(declare-fun b!7363144 () Bool)

(declare-fun e!4408420 () Bool)

(assert (=> b!7363144 (= e!4408420 (nullable!8322 (regOne!38992 (regTwo!38993 r1!2370))))))

(declare-fun bm!675071 () Bool)

(declare-fun call!675075 () (Set Context!16360))

(assert (=> bm!675071 (= call!675077 call!675075)))

(declare-fun b!7363145 () Bool)

(declare-fun e!4408422 () (Set Context!16360))

(assert (=> b!7363145 (= e!4408422 call!675074)))

(declare-fun bm!675072 () Bool)

(declare-fun call!675076 () (Set Context!16360))

(declare-fun c!1368175 () Bool)

(assert (=> bm!675072 (= call!675076 (derivationStepZipperDown!3066 (ite c!1368175 (regOne!38993 (regTwo!38993 r1!2370)) (regOne!38992 (regTwo!38993 r1!2370))) (ite c!1368175 ct1!282 (Context!16361 call!675078)) c!10362))))

(declare-fun b!7363147 () Bool)

(assert (=> b!7363147 (= e!4408423 (set.union call!675076 call!675077))))

(declare-fun c!1368177 () Bool)

(declare-fun bm!675073 () Bool)

(assert (=> bm!675073 (= call!675075 (derivationStepZipperDown!3066 (ite c!1368175 (regTwo!38993 (regTwo!38993 r1!2370)) (ite c!1368177 (regTwo!38992 (regTwo!38993 r1!2370)) (ite c!1368176 (regOne!38992 (regTwo!38993 r1!2370)) (reg!19569 (regTwo!38993 r1!2370))))) (ite (or c!1368175 c!1368177) ct1!282 (Context!16361 call!675079)) c!10362))))

(declare-fun b!7363148 () Bool)

(assert (=> b!7363148 (= e!4408422 (as set.empty (Set Context!16360)))))

(declare-fun b!7363149 () Bool)

(declare-fun e!4408424 () (Set Context!16360))

(assert (=> b!7363149 (= e!4408421 e!4408424)))

(assert (=> b!7363149 (= c!1368175 (is-Union!19240 (regTwo!38993 r1!2370)))))

(declare-fun b!7363150 () Bool)

(assert (=> b!7363150 (= c!1368177 e!4408420)))

(declare-fun res!2972194 () Bool)

(assert (=> b!7363150 (=> (not res!2972194) (not e!4408420))))

(assert (=> b!7363150 (= res!2972194 (is-Concat!28085 (regTwo!38993 r1!2370)))))

(assert (=> b!7363150 (= e!4408424 e!4408423)))

(declare-fun b!7363151 () Bool)

(assert (=> b!7363151 (= e!4408424 (set.union call!675076 call!675075))))

(declare-fun bm!675074 () Bool)

(assert (=> bm!675074 (= call!675078 ($colon$colon!3228 (exprs!8680 ct1!282) (ite (or c!1368177 c!1368176) (regTwo!38992 (regTwo!38993 r1!2370)) (regTwo!38993 r1!2370))))))

(declare-fun d!2282393 () Bool)

(declare-fun c!1368173 () Bool)

(assert (=> d!2282393 (= c!1368173 (and (is-ElementMatch!19240 (regTwo!38993 r1!2370)) (= (c!1368156 (regTwo!38993 r1!2370)) c!10362)))))

(assert (=> d!2282393 (= (derivationStepZipperDown!3066 (regTwo!38993 r1!2370) ct1!282 c!10362) e!4408421)))

(declare-fun b!7363146 () Bool)

(declare-fun c!1368174 () Bool)

(assert (=> b!7363146 (= c!1368174 (is-Star!19240 (regTwo!38993 r1!2370)))))

(assert (=> b!7363146 (= e!4408419 e!4408422)))

(assert (= (and d!2282393 c!1368173) b!7363143))

(assert (= (and d!2282393 (not c!1368173)) b!7363149))

(assert (= (and b!7363149 c!1368175) b!7363151))

(assert (= (and b!7363149 (not c!1368175)) b!7363150))

(assert (= (and b!7363150 res!2972194) b!7363144))

(assert (= (and b!7363150 c!1368177) b!7363147))

(assert (= (and b!7363150 (not c!1368177)) b!7363142))

(assert (= (and b!7363142 c!1368176) b!7363141))

(assert (= (and b!7363142 (not c!1368176)) b!7363146))

(assert (= (and b!7363146 c!1368174) b!7363145))

(assert (= (and b!7363146 (not c!1368174)) b!7363148))

(assert (= (or b!7363141 b!7363145) bm!675070))

(assert (= (or b!7363141 b!7363145) bm!675069))

(assert (= (or b!7363147 bm!675069) bm!675071))

(assert (= (or b!7363147 bm!675070) bm!675074))

(assert (= (or b!7363151 bm!675071) bm!675073))

(assert (= (or b!7363151 b!7363147) bm!675072))

(declare-fun m!8019800 () Bool)

(assert (=> b!7363144 m!8019800))

(declare-fun m!8019802 () Bool)

(assert (=> bm!675072 m!8019802))

(assert (=> b!7363143 m!8019794))

(declare-fun m!8019804 () Bool)

(assert (=> bm!675073 m!8019804))

(declare-fun m!8019806 () Bool)

(assert (=> bm!675074 m!8019806))

(assert (=> b!7363062 d!2282393))

(declare-fun bm!675075 () Bool)

(declare-fun call!675080 () (Set Context!16360))

(declare-fun call!675083 () (Set Context!16360))

(assert (=> bm!675075 (= call!675080 call!675083)))

(declare-fun b!7363152 () Bool)

(declare-fun e!4408425 () (Set Context!16360))

(assert (=> b!7363152 (= e!4408425 call!675080)))

(declare-fun b!7363153 () Bool)

(declare-fun e!4408429 () (Set Context!16360))

(assert (=> b!7363153 (= e!4408429 e!4408425)))

(declare-fun c!1368181 () Bool)

(assert (=> b!7363153 (= c!1368181 (is-Concat!28085 (regOne!38993 r1!2370)))))

(declare-fun b!7363154 () Bool)

(declare-fun e!4408427 () (Set Context!16360))

(assert (=> b!7363154 (= e!4408427 (set.insert ct1!282 (as set.empty (Set Context!16360))))))

(declare-fun bm!675076 () Bool)

(declare-fun call!675085 () List!71736)

(declare-fun call!675084 () List!71736)

(assert (=> bm!675076 (= call!675085 call!675084)))

(declare-fun b!7363155 () Bool)

(declare-fun e!4408426 () Bool)

(assert (=> b!7363155 (= e!4408426 (nullable!8322 (regOne!38992 (regOne!38993 r1!2370))))))

(declare-fun bm!675077 () Bool)

(declare-fun call!675081 () (Set Context!16360))

(assert (=> bm!675077 (= call!675083 call!675081)))

(declare-fun b!7363156 () Bool)

(declare-fun e!4408428 () (Set Context!16360))

(assert (=> b!7363156 (= e!4408428 call!675080)))

(declare-fun bm!675078 () Bool)

(declare-fun c!1368180 () Bool)

(declare-fun call!675082 () (Set Context!16360))

(assert (=> bm!675078 (= call!675082 (derivationStepZipperDown!3066 (ite c!1368180 (regOne!38993 (regOne!38993 r1!2370)) (regOne!38992 (regOne!38993 r1!2370))) (ite c!1368180 ct1!282 (Context!16361 call!675084)) c!10362))))

(declare-fun b!7363158 () Bool)

(assert (=> b!7363158 (= e!4408429 (set.union call!675082 call!675083))))

(declare-fun c!1368182 () Bool)

(declare-fun bm!675079 () Bool)

(assert (=> bm!675079 (= call!675081 (derivationStepZipperDown!3066 (ite c!1368180 (regTwo!38993 (regOne!38993 r1!2370)) (ite c!1368182 (regTwo!38992 (regOne!38993 r1!2370)) (ite c!1368181 (regOne!38992 (regOne!38993 r1!2370)) (reg!19569 (regOne!38993 r1!2370))))) (ite (or c!1368180 c!1368182) ct1!282 (Context!16361 call!675085)) c!10362))))

(declare-fun b!7363159 () Bool)

(assert (=> b!7363159 (= e!4408428 (as set.empty (Set Context!16360)))))

(declare-fun b!7363160 () Bool)

(declare-fun e!4408430 () (Set Context!16360))

(assert (=> b!7363160 (= e!4408427 e!4408430)))

(assert (=> b!7363160 (= c!1368180 (is-Union!19240 (regOne!38993 r1!2370)))))

(declare-fun b!7363161 () Bool)

(assert (=> b!7363161 (= c!1368182 e!4408426)))

(declare-fun res!2972195 () Bool)

(assert (=> b!7363161 (=> (not res!2972195) (not e!4408426))))

(assert (=> b!7363161 (= res!2972195 (is-Concat!28085 (regOne!38993 r1!2370)))))

(assert (=> b!7363161 (= e!4408430 e!4408429)))

(declare-fun b!7363162 () Bool)

(assert (=> b!7363162 (= e!4408430 (set.union call!675082 call!675081))))

(declare-fun bm!675080 () Bool)

(assert (=> bm!675080 (= call!675084 ($colon$colon!3228 (exprs!8680 ct1!282) (ite (or c!1368182 c!1368181) (regTwo!38992 (regOne!38993 r1!2370)) (regOne!38993 r1!2370))))))

(declare-fun d!2282395 () Bool)

(declare-fun c!1368178 () Bool)

(assert (=> d!2282395 (= c!1368178 (and (is-ElementMatch!19240 (regOne!38993 r1!2370)) (= (c!1368156 (regOne!38993 r1!2370)) c!10362)))))

(assert (=> d!2282395 (= (derivationStepZipperDown!3066 (regOne!38993 r1!2370) ct1!282 c!10362) e!4408427)))

(declare-fun b!7363157 () Bool)

(declare-fun c!1368179 () Bool)

(assert (=> b!7363157 (= c!1368179 (is-Star!19240 (regOne!38993 r1!2370)))))

(assert (=> b!7363157 (= e!4408425 e!4408428)))

(assert (= (and d!2282395 c!1368178) b!7363154))

(assert (= (and d!2282395 (not c!1368178)) b!7363160))

(assert (= (and b!7363160 c!1368180) b!7363162))

(assert (= (and b!7363160 (not c!1368180)) b!7363161))

(assert (= (and b!7363161 res!2972195) b!7363155))

(assert (= (and b!7363161 c!1368182) b!7363158))

(assert (= (and b!7363161 (not c!1368182)) b!7363153))

(assert (= (and b!7363153 c!1368181) b!7363152))

(assert (= (and b!7363153 (not c!1368181)) b!7363157))

(assert (= (and b!7363157 c!1368179) b!7363156))

(assert (= (and b!7363157 (not c!1368179)) b!7363159))

(assert (= (or b!7363152 b!7363156) bm!675076))

(assert (= (or b!7363152 b!7363156) bm!675075))

(assert (= (or b!7363158 bm!675075) bm!675077))

(assert (= (or b!7363158 bm!675076) bm!675080))

(assert (= (or b!7363162 bm!675077) bm!675079))

(assert (= (or b!7363162 b!7363158) bm!675078))

(declare-fun m!8019808 () Bool)

(assert (=> b!7363155 m!8019808))

(declare-fun m!8019810 () Bool)

(assert (=> bm!675078 m!8019810))

(assert (=> b!7363154 m!8019794))

(declare-fun m!8019812 () Bool)

(assert (=> bm!675079 m!8019812))

(declare-fun m!8019814 () Bool)

(assert (=> bm!675080 m!8019814))

(assert (=> b!7363062 d!2282395))

(declare-fun bs!1920296 () Bool)

(declare-fun d!2282399 () Bool)

(assert (= bs!1920296 (and d!2282399 b!7363069)))

(declare-fun lambda!457508 () Int)

(assert (=> bs!1920296 (= lambda!457508 lambda!457494)))

(assert (=> d!2282399 (set.member (Context!16361 (++!17056 (exprs!8680 cWitness!61) (exprs!8680 ct2!378))) (derivationStepZipperDown!3066 (regOne!38993 r1!2370) (Context!16361 (++!17056 (exprs!8680 ct1!282) (exprs!8680 ct2!378))) c!10362))))

(declare-fun lt!2614290 () Unit!165429)

(assert (=> d!2282399 (= lt!2614290 (lemmaConcatPreservesForall!1913 (exprs!8680 ct1!282) (exprs!8680 ct2!378) lambda!457508))))

(declare-fun lt!2614289 () Unit!165429)

(assert (=> d!2282399 (= lt!2614289 (lemmaConcatPreservesForall!1913 (exprs!8680 cWitness!61) (exprs!8680 ct2!378) lambda!457508))))

(declare-fun lt!2614288 () Unit!165429)

(declare-fun choose!57261 (Regex!19240 Context!16360 Context!16360 Context!16360 C!38754) Unit!165429)

(assert (=> d!2282399 (= lt!2614288 (choose!57261 (regOne!38993 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2282399 (validRegex!9836 (regOne!38993 r1!2370))))

(assert (=> d!2282399 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!115 (regOne!38993 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2614288)))

(declare-fun bs!1920297 () Bool)

(assert (= bs!1920297 d!2282399))

(declare-fun m!8019816 () Bool)

(assert (=> bs!1920297 m!8019816))

(declare-fun m!8019818 () Bool)

(assert (=> bs!1920297 m!8019818))

(assert (=> bs!1920297 m!8019732))

(declare-fun m!8019820 () Bool)

(assert (=> bs!1920297 m!8019820))

(declare-fun m!8019822 () Bool)

(assert (=> bs!1920297 m!8019822))

(declare-fun m!8019824 () Bool)

(assert (=> bs!1920297 m!8019824))

(declare-fun m!8019826 () Bool)

(assert (=> bs!1920297 m!8019826))

(assert (=> bs!1920297 m!8019752))

(assert (=> b!7363063 d!2282399))

(declare-fun bm!675081 () Bool)

(declare-fun call!675086 () (Set Context!16360))

(declare-fun call!675089 () (Set Context!16360))

(assert (=> bm!675081 (= call!675086 call!675089)))

(declare-fun b!7363163 () Bool)

(declare-fun e!4408431 () (Set Context!16360))

(assert (=> b!7363163 (= e!4408431 call!675086)))

(declare-fun b!7363164 () Bool)

(declare-fun e!4408435 () (Set Context!16360))

(assert (=> b!7363164 (= e!4408435 e!4408431)))

(declare-fun c!1368187 () Bool)

(assert (=> b!7363164 (= c!1368187 (is-Concat!28085 (regOne!38993 r1!2370)))))

(declare-fun b!7363165 () Bool)

(declare-fun e!4408433 () (Set Context!16360))

(assert (=> b!7363165 (= e!4408433 (set.insert lt!2614245 (as set.empty (Set Context!16360))))))

(declare-fun bm!675082 () Bool)

(declare-fun call!675091 () List!71736)

(declare-fun call!675090 () List!71736)

(assert (=> bm!675082 (= call!675091 call!675090)))

(declare-fun b!7363166 () Bool)

(declare-fun e!4408432 () Bool)

(assert (=> b!7363166 (= e!4408432 (nullable!8322 (regOne!38992 (regOne!38993 r1!2370))))))

(declare-fun bm!675083 () Bool)

(declare-fun call!675087 () (Set Context!16360))

(assert (=> bm!675083 (= call!675089 call!675087)))

(declare-fun b!7363167 () Bool)

(declare-fun e!4408434 () (Set Context!16360))

(assert (=> b!7363167 (= e!4408434 call!675086)))

(declare-fun c!1368186 () Bool)

(declare-fun bm!675084 () Bool)

(declare-fun call!675088 () (Set Context!16360))

(assert (=> bm!675084 (= call!675088 (derivationStepZipperDown!3066 (ite c!1368186 (regOne!38993 (regOne!38993 r1!2370)) (regOne!38992 (regOne!38993 r1!2370))) (ite c!1368186 lt!2614245 (Context!16361 call!675090)) c!10362))))

(declare-fun b!7363169 () Bool)

(assert (=> b!7363169 (= e!4408435 (set.union call!675088 call!675089))))

(declare-fun c!1368188 () Bool)

(declare-fun bm!675085 () Bool)

(assert (=> bm!675085 (= call!675087 (derivationStepZipperDown!3066 (ite c!1368186 (regTwo!38993 (regOne!38993 r1!2370)) (ite c!1368188 (regTwo!38992 (regOne!38993 r1!2370)) (ite c!1368187 (regOne!38992 (regOne!38993 r1!2370)) (reg!19569 (regOne!38993 r1!2370))))) (ite (or c!1368186 c!1368188) lt!2614245 (Context!16361 call!675091)) c!10362))))

(declare-fun b!7363170 () Bool)

(assert (=> b!7363170 (= e!4408434 (as set.empty (Set Context!16360)))))

(declare-fun b!7363171 () Bool)

(declare-fun e!4408436 () (Set Context!16360))

(assert (=> b!7363171 (= e!4408433 e!4408436)))

(assert (=> b!7363171 (= c!1368186 (is-Union!19240 (regOne!38993 r1!2370)))))

(declare-fun b!7363172 () Bool)

(assert (=> b!7363172 (= c!1368188 e!4408432)))

(declare-fun res!2972196 () Bool)

(assert (=> b!7363172 (=> (not res!2972196) (not e!4408432))))

(assert (=> b!7363172 (= res!2972196 (is-Concat!28085 (regOne!38993 r1!2370)))))

(assert (=> b!7363172 (= e!4408436 e!4408435)))

(declare-fun b!7363173 () Bool)

(assert (=> b!7363173 (= e!4408436 (set.union call!675088 call!675087))))

(declare-fun bm!675086 () Bool)

(assert (=> bm!675086 (= call!675090 ($colon$colon!3228 (exprs!8680 lt!2614245) (ite (or c!1368188 c!1368187) (regTwo!38992 (regOne!38993 r1!2370)) (regOne!38993 r1!2370))))))

(declare-fun d!2282401 () Bool)

(declare-fun c!1368184 () Bool)

(assert (=> d!2282401 (= c!1368184 (and (is-ElementMatch!19240 (regOne!38993 r1!2370)) (= (c!1368156 (regOne!38993 r1!2370)) c!10362)))))

(assert (=> d!2282401 (= (derivationStepZipperDown!3066 (regOne!38993 r1!2370) lt!2614245 c!10362) e!4408433)))

(declare-fun b!7363168 () Bool)

(declare-fun c!1368185 () Bool)

(assert (=> b!7363168 (= c!1368185 (is-Star!19240 (regOne!38993 r1!2370)))))

(assert (=> b!7363168 (= e!4408431 e!4408434)))

(assert (= (and d!2282401 c!1368184) b!7363165))

(assert (= (and d!2282401 (not c!1368184)) b!7363171))

(assert (= (and b!7363171 c!1368186) b!7363173))

(assert (= (and b!7363171 (not c!1368186)) b!7363172))

(assert (= (and b!7363172 res!2972196) b!7363166))

(assert (= (and b!7363172 c!1368188) b!7363169))

(assert (= (and b!7363172 (not c!1368188)) b!7363164))

(assert (= (and b!7363164 c!1368187) b!7363163))

(assert (= (and b!7363164 (not c!1368187)) b!7363168))

(assert (= (and b!7363168 c!1368185) b!7363167))

(assert (= (and b!7363168 (not c!1368185)) b!7363170))

(assert (= (or b!7363163 b!7363167) bm!675082))

(assert (= (or b!7363163 b!7363167) bm!675081))

(assert (= (or b!7363169 bm!675081) bm!675083))

(assert (= (or b!7363169 bm!675082) bm!675086))

(assert (= (or b!7363173 bm!675083) bm!675085))

(assert (= (or b!7363173 b!7363169) bm!675084))

(assert (=> b!7363166 m!8019808))

(declare-fun m!8019828 () Bool)

(assert (=> bm!675084 m!8019828))

(declare-fun m!8019830 () Bool)

(assert (=> b!7363165 m!8019830))

(declare-fun m!8019832 () Bool)

(assert (=> bm!675085 m!8019832))

(declare-fun m!8019834 () Bool)

(assert (=> bm!675086 m!8019834))

(assert (=> b!7363063 d!2282401))

(declare-fun b!7363206 () Bool)

(declare-fun res!2972203 () Bool)

(declare-fun e!4408454 () Bool)

(assert (=> b!7363206 (=> (not res!2972203) (not e!4408454))))

(declare-fun lt!2614293 () List!71736)

(declare-fun size!42106 (List!71736) Int)

(assert (=> b!7363206 (= res!2972203 (= (size!42106 lt!2614293) (+ (size!42106 (exprs!8680 cWitness!61)) (size!42106 (exprs!8680 ct2!378)))))))

(declare-fun d!2282403 () Bool)

(assert (=> d!2282403 e!4408454))

(declare-fun res!2972204 () Bool)

(assert (=> d!2282403 (=> (not res!2972204) (not e!4408454))))

(declare-fun content!15128 (List!71736) (Set Regex!19240))

(assert (=> d!2282403 (= res!2972204 (= (content!15128 lt!2614293) (set.union (content!15128 (exprs!8680 cWitness!61)) (content!15128 (exprs!8680 ct2!378)))))))

(declare-fun e!4408453 () List!71736)

(assert (=> d!2282403 (= lt!2614293 e!4408453)))

(declare-fun c!1368201 () Bool)

(assert (=> d!2282403 (= c!1368201 (is-Nil!71612 (exprs!8680 cWitness!61)))))

(assert (=> d!2282403 (= (++!17056 (exprs!8680 cWitness!61) (exprs!8680 ct2!378)) lt!2614293)))

(declare-fun b!7363204 () Bool)

(assert (=> b!7363204 (= e!4408453 (exprs!8680 ct2!378))))

(declare-fun b!7363207 () Bool)

(assert (=> b!7363207 (= e!4408454 (or (not (= (exprs!8680 ct2!378) Nil!71612)) (= lt!2614293 (exprs!8680 cWitness!61))))))

(declare-fun b!7363205 () Bool)

(assert (=> b!7363205 (= e!4408453 (Cons!71612 (h!78060 (exprs!8680 cWitness!61)) (++!17056 (t!386185 (exprs!8680 cWitness!61)) (exprs!8680 ct2!378))))))

(assert (= (and d!2282403 c!1368201) b!7363204))

(assert (= (and d!2282403 (not c!1368201)) b!7363205))

(assert (= (and d!2282403 res!2972204) b!7363206))

(assert (= (and b!7363206 res!2972203) b!7363207))

(declare-fun m!8019836 () Bool)

(assert (=> b!7363206 m!8019836))

(declare-fun m!8019838 () Bool)

(assert (=> b!7363206 m!8019838))

(declare-fun m!8019840 () Bool)

(assert (=> b!7363206 m!8019840))

(declare-fun m!8019842 () Bool)

(assert (=> d!2282403 m!8019842))

(declare-fun m!8019844 () Bool)

(assert (=> d!2282403 m!8019844))

(declare-fun m!8019846 () Bool)

(assert (=> d!2282403 m!8019846))

(declare-fun m!8019848 () Bool)

(assert (=> b!7363205 m!8019848))

(assert (=> b!7363063 d!2282403))

(declare-fun d!2282405 () Bool)

(declare-fun forall!18052 (List!71736 Int) Bool)

(assert (=> d!2282405 (forall!18052 (++!17056 (exprs!8680 ct1!282) (exprs!8680 ct2!378)) lambda!457494)))

(declare-fun lt!2614296 () Unit!165429)

(declare-fun choose!57262 (List!71736 List!71736 Int) Unit!165429)

(assert (=> d!2282405 (= lt!2614296 (choose!57262 (exprs!8680 ct1!282) (exprs!8680 ct2!378) lambda!457494))))

(assert (=> d!2282405 (forall!18052 (exprs!8680 ct1!282) lambda!457494)))

(assert (=> d!2282405 (= (lemmaConcatPreservesForall!1913 (exprs!8680 ct1!282) (exprs!8680 ct2!378) lambda!457494) lt!2614296)))

(declare-fun bs!1920298 () Bool)

(assert (= bs!1920298 d!2282405))

(assert (=> bs!1920298 m!8019752))

(assert (=> bs!1920298 m!8019752))

(declare-fun m!8019850 () Bool)

(assert (=> bs!1920298 m!8019850))

(declare-fun m!8019852 () Bool)

(assert (=> bs!1920298 m!8019852))

(declare-fun m!8019854 () Bool)

(assert (=> bs!1920298 m!8019854))

(assert (=> b!7363063 d!2282405))

(declare-fun d!2282407 () Bool)

(assert (=> d!2282407 (forall!18052 (++!17056 (exprs!8680 cWitness!61) (exprs!8680 ct2!378)) lambda!457494)))

(declare-fun lt!2614297 () Unit!165429)

(assert (=> d!2282407 (= lt!2614297 (choose!57262 (exprs!8680 cWitness!61) (exprs!8680 ct2!378) lambda!457494))))

(assert (=> d!2282407 (forall!18052 (exprs!8680 cWitness!61) lambda!457494)))

(assert (=> d!2282407 (= (lemmaConcatPreservesForall!1913 (exprs!8680 cWitness!61) (exprs!8680 ct2!378) lambda!457494) lt!2614297)))

(declare-fun bs!1920299 () Bool)

(assert (= bs!1920299 d!2282407))

(assert (=> bs!1920299 m!8019732))

(assert (=> bs!1920299 m!8019732))

(declare-fun m!8019856 () Bool)

(assert (=> bs!1920299 m!8019856))

(declare-fun m!8019858 () Bool)

(assert (=> bs!1920299 m!8019858))

(declare-fun m!8019860 () Bool)

(assert (=> bs!1920299 m!8019860))

(assert (=> b!7363063 d!2282407))

(declare-fun bm!675099 () Bool)

(declare-fun call!675104 () (Set Context!16360))

(declare-fun call!675107 () (Set Context!16360))

(assert (=> bm!675099 (= call!675104 call!675107)))

(declare-fun b!7363208 () Bool)

(declare-fun e!4408455 () (Set Context!16360))

(assert (=> b!7363208 (= e!4408455 call!675104)))

(declare-fun b!7363209 () Bool)

(declare-fun e!4408459 () (Set Context!16360))

(assert (=> b!7363209 (= e!4408459 e!4408455)))

(declare-fun c!1368205 () Bool)

(assert (=> b!7363209 (= c!1368205 (is-Concat!28085 r1!2370))))

(declare-fun b!7363210 () Bool)

(declare-fun e!4408457 () (Set Context!16360))

(assert (=> b!7363210 (= e!4408457 (set.insert lt!2614245 (as set.empty (Set Context!16360))))))

(declare-fun bm!675100 () Bool)

(declare-fun call!675109 () List!71736)

(declare-fun call!675108 () List!71736)

(assert (=> bm!675100 (= call!675109 call!675108)))

(declare-fun b!7363211 () Bool)

(declare-fun e!4408456 () Bool)

(assert (=> b!7363211 (= e!4408456 (nullable!8322 (regOne!38992 r1!2370)))))

(declare-fun bm!675101 () Bool)

(declare-fun call!675105 () (Set Context!16360))

(assert (=> bm!675101 (= call!675107 call!675105)))

(declare-fun b!7363212 () Bool)

(declare-fun e!4408458 () (Set Context!16360))

(assert (=> b!7363212 (= e!4408458 call!675104)))

(declare-fun bm!675102 () Bool)

(declare-fun call!675106 () (Set Context!16360))

(declare-fun c!1368204 () Bool)

(assert (=> bm!675102 (= call!675106 (derivationStepZipperDown!3066 (ite c!1368204 (regOne!38993 r1!2370) (regOne!38992 r1!2370)) (ite c!1368204 lt!2614245 (Context!16361 call!675108)) c!10362))))

(declare-fun b!7363214 () Bool)

(assert (=> b!7363214 (= e!4408459 (set.union call!675106 call!675107))))

(declare-fun bm!675103 () Bool)

(declare-fun c!1368206 () Bool)

(assert (=> bm!675103 (= call!675105 (derivationStepZipperDown!3066 (ite c!1368204 (regTwo!38993 r1!2370) (ite c!1368206 (regTwo!38992 r1!2370) (ite c!1368205 (regOne!38992 r1!2370) (reg!19569 r1!2370)))) (ite (or c!1368204 c!1368206) lt!2614245 (Context!16361 call!675109)) c!10362))))

(declare-fun b!7363215 () Bool)

(assert (=> b!7363215 (= e!4408458 (as set.empty (Set Context!16360)))))

(declare-fun b!7363216 () Bool)

(declare-fun e!4408460 () (Set Context!16360))

(assert (=> b!7363216 (= e!4408457 e!4408460)))

(assert (=> b!7363216 (= c!1368204 (is-Union!19240 r1!2370))))

(declare-fun b!7363217 () Bool)

(assert (=> b!7363217 (= c!1368206 e!4408456)))

(declare-fun res!2972205 () Bool)

(assert (=> b!7363217 (=> (not res!2972205) (not e!4408456))))

(assert (=> b!7363217 (= res!2972205 (is-Concat!28085 r1!2370))))

(assert (=> b!7363217 (= e!4408460 e!4408459)))

(declare-fun b!7363218 () Bool)

(assert (=> b!7363218 (= e!4408460 (set.union call!675106 call!675105))))

(declare-fun bm!675104 () Bool)

(assert (=> bm!675104 (= call!675108 ($colon$colon!3228 (exprs!8680 lt!2614245) (ite (or c!1368206 c!1368205) (regTwo!38992 r1!2370) r1!2370)))))

(declare-fun d!2282409 () Bool)

(declare-fun c!1368202 () Bool)

(assert (=> d!2282409 (= c!1368202 (and (is-ElementMatch!19240 r1!2370) (= (c!1368156 r1!2370) c!10362)))))

(assert (=> d!2282409 (= (derivationStepZipperDown!3066 r1!2370 lt!2614245 c!10362) e!4408457)))

(declare-fun b!7363213 () Bool)

(declare-fun c!1368203 () Bool)

(assert (=> b!7363213 (= c!1368203 (is-Star!19240 r1!2370))))

(assert (=> b!7363213 (= e!4408455 e!4408458)))

(assert (= (and d!2282409 c!1368202) b!7363210))

(assert (= (and d!2282409 (not c!1368202)) b!7363216))

(assert (= (and b!7363216 c!1368204) b!7363218))

(assert (= (and b!7363216 (not c!1368204)) b!7363217))

(assert (= (and b!7363217 res!2972205) b!7363211))

(assert (= (and b!7363217 c!1368206) b!7363214))

(assert (= (and b!7363217 (not c!1368206)) b!7363209))

(assert (= (and b!7363209 c!1368205) b!7363208))

(assert (= (and b!7363209 (not c!1368205)) b!7363213))

(assert (= (and b!7363213 c!1368203) b!7363212))

(assert (= (and b!7363213 (not c!1368203)) b!7363215))

(assert (= (or b!7363208 b!7363212) bm!675100))

(assert (= (or b!7363208 b!7363212) bm!675099))

(assert (= (or b!7363214 bm!675099) bm!675101))

(assert (= (or b!7363214 bm!675100) bm!675104))

(assert (= (or b!7363218 bm!675101) bm!675103))

(assert (= (or b!7363218 b!7363214) bm!675102))

(assert (=> b!7363211 m!8019790))

(declare-fun m!8019862 () Bool)

(assert (=> bm!675102 m!8019862))

(assert (=> b!7363210 m!8019830))

(declare-fun m!8019864 () Bool)

(assert (=> bm!675103 m!8019864))

(declare-fun m!8019866 () Bool)

(assert (=> bm!675104 m!8019866))

(assert (=> b!7363069 d!2282409))

(declare-fun b!7363221 () Bool)

(declare-fun res!2972206 () Bool)

(declare-fun e!4408462 () Bool)

(assert (=> b!7363221 (=> (not res!2972206) (not e!4408462))))

(declare-fun lt!2614298 () List!71736)

(assert (=> b!7363221 (= res!2972206 (= (size!42106 lt!2614298) (+ (size!42106 (exprs!8680 ct1!282)) (size!42106 (exprs!8680 ct2!378)))))))

(declare-fun d!2282411 () Bool)

(assert (=> d!2282411 e!4408462))

(declare-fun res!2972207 () Bool)

(assert (=> d!2282411 (=> (not res!2972207) (not e!4408462))))

(assert (=> d!2282411 (= res!2972207 (= (content!15128 lt!2614298) (set.union (content!15128 (exprs!8680 ct1!282)) (content!15128 (exprs!8680 ct2!378)))))))

(declare-fun e!4408461 () List!71736)

(assert (=> d!2282411 (= lt!2614298 e!4408461)))

(declare-fun c!1368207 () Bool)

(assert (=> d!2282411 (= c!1368207 (is-Nil!71612 (exprs!8680 ct1!282)))))

(assert (=> d!2282411 (= (++!17056 (exprs!8680 ct1!282) (exprs!8680 ct2!378)) lt!2614298)))

(declare-fun b!7363219 () Bool)

(assert (=> b!7363219 (= e!4408461 (exprs!8680 ct2!378))))

(declare-fun b!7363222 () Bool)

(assert (=> b!7363222 (= e!4408462 (or (not (= (exprs!8680 ct2!378) Nil!71612)) (= lt!2614298 (exprs!8680 ct1!282))))))

(declare-fun b!7363220 () Bool)

(assert (=> b!7363220 (= e!4408461 (Cons!71612 (h!78060 (exprs!8680 ct1!282)) (++!17056 (t!386185 (exprs!8680 ct1!282)) (exprs!8680 ct2!378))))))

(assert (= (and d!2282411 c!1368207) b!7363219))

(assert (= (and d!2282411 (not c!1368207)) b!7363220))

(assert (= (and d!2282411 res!2972207) b!7363221))

(assert (= (and b!7363221 res!2972206) b!7363222))

(declare-fun m!8019868 () Bool)

(assert (=> b!7363221 m!8019868))

(declare-fun m!8019870 () Bool)

(assert (=> b!7363221 m!8019870))

(assert (=> b!7363221 m!8019840))

(declare-fun m!8019872 () Bool)

(assert (=> d!2282411 m!8019872))

(declare-fun m!8019874 () Bool)

(assert (=> d!2282411 m!8019874))

(assert (=> d!2282411 m!8019846))

(declare-fun m!8019876 () Bool)

(assert (=> b!7363220 m!8019876))

(assert (=> b!7363069 d!2282411))

(assert (=> b!7363069 d!2282405))

(declare-fun b!7363241 () Bool)

(declare-fun e!4408483 () Bool)

(declare-fun e!4408481 () Bool)

(assert (=> b!7363241 (= e!4408483 e!4408481)))

(declare-fun c!1368212 () Bool)

(assert (=> b!7363241 (= c!1368212 (is-Star!19240 r1!2370))))

(declare-fun d!2282413 () Bool)

(declare-fun res!2972219 () Bool)

(assert (=> d!2282413 (=> res!2972219 e!4408483)))

(assert (=> d!2282413 (= res!2972219 (is-ElementMatch!19240 r1!2370))))

(assert (=> d!2282413 (= (validRegex!9836 r1!2370) e!4408483)))

(declare-fun b!7363242 () Bool)

(declare-fun e!4408478 () Bool)

(declare-fun call!675118 () Bool)

(assert (=> b!7363242 (= e!4408478 call!675118)))

(declare-fun b!7363243 () Bool)

(assert (=> b!7363243 (= e!4408481 e!4408478)))

(declare-fun res!2972221 () Bool)

(assert (=> b!7363243 (= res!2972221 (not (nullable!8322 (reg!19569 r1!2370))))))

(assert (=> b!7363243 (=> (not res!2972221) (not e!4408478))))

(declare-fun b!7363244 () Bool)

(declare-fun res!2972222 () Bool)

(declare-fun e!4408477 () Bool)

(assert (=> b!7363244 (=> (not res!2972222) (not e!4408477))))

(declare-fun call!675117 () Bool)

(assert (=> b!7363244 (= res!2972222 call!675117)))

(declare-fun e!4408480 () Bool)

(assert (=> b!7363244 (= e!4408480 e!4408477)))

(declare-fun bm!675111 () Bool)

(declare-fun call!675116 () Bool)

(declare-fun c!1368213 () Bool)

(assert (=> bm!675111 (= call!675116 (validRegex!9836 (ite c!1368213 (regTwo!38993 r1!2370) (regOne!38992 r1!2370))))))

(declare-fun bm!675112 () Bool)

(assert (=> bm!675112 (= call!675118 (validRegex!9836 (ite c!1368212 (reg!19569 r1!2370) (ite c!1368213 (regOne!38993 r1!2370) (regTwo!38992 r1!2370)))))))

(declare-fun b!7363245 () Bool)

(assert (=> b!7363245 (= e!4408481 e!4408480)))

(assert (=> b!7363245 (= c!1368213 (is-Union!19240 r1!2370))))

(declare-fun bm!675113 () Bool)

(assert (=> bm!675113 (= call!675117 call!675118)))

(declare-fun b!7363246 () Bool)

(declare-fun res!2972218 () Bool)

(declare-fun e!4408479 () Bool)

(assert (=> b!7363246 (=> res!2972218 e!4408479)))

(assert (=> b!7363246 (= res!2972218 (not (is-Concat!28085 r1!2370)))))

(assert (=> b!7363246 (= e!4408480 e!4408479)))

(declare-fun b!7363247 () Bool)

(declare-fun e!4408482 () Bool)

(assert (=> b!7363247 (= e!4408482 call!675117)))

(declare-fun b!7363248 () Bool)

(assert (=> b!7363248 (= e!4408479 e!4408482)))

(declare-fun res!2972220 () Bool)

(assert (=> b!7363248 (=> (not res!2972220) (not e!4408482))))

(assert (=> b!7363248 (= res!2972220 call!675116)))

(declare-fun b!7363249 () Bool)

(assert (=> b!7363249 (= e!4408477 call!675116)))

(assert (= (and d!2282413 (not res!2972219)) b!7363241))

(assert (= (and b!7363241 c!1368212) b!7363243))

(assert (= (and b!7363241 (not c!1368212)) b!7363245))

(assert (= (and b!7363243 res!2972221) b!7363242))

(assert (= (and b!7363245 c!1368213) b!7363244))

(assert (= (and b!7363245 (not c!1368213)) b!7363246))

(assert (= (and b!7363244 res!2972222) b!7363249))

(assert (= (and b!7363246 (not res!2972218)) b!7363248))

(assert (= (and b!7363248 res!2972220) b!7363247))

(assert (= (or b!7363244 b!7363247) bm!675113))

(assert (= (or b!7363249 b!7363248) bm!675111))

(assert (= (or b!7363242 bm!675113) bm!675112))

(declare-fun m!8019878 () Bool)

(assert (=> b!7363243 m!8019878))

(declare-fun m!8019880 () Bool)

(assert (=> bm!675111 m!8019880))

(declare-fun m!8019882 () Bool)

(assert (=> bm!675112 m!8019882))

(assert (=> start!718866 d!2282413))

(declare-fun bs!1920300 () Bool)

(declare-fun d!2282415 () Bool)

(assert (= bs!1920300 (and d!2282415 b!7363069)))

(declare-fun lambda!457511 () Int)

(assert (=> bs!1920300 (= lambda!457511 lambda!457494)))

(declare-fun bs!1920301 () Bool)

(assert (= bs!1920301 (and d!2282415 d!2282399)))

(assert (=> bs!1920301 (= lambda!457511 lambda!457508)))

(assert (=> d!2282415 (= (inv!91441 cWitness!61) (forall!18052 (exprs!8680 cWitness!61) lambda!457511))))

(declare-fun bs!1920302 () Bool)

(assert (= bs!1920302 d!2282415))

(declare-fun m!8019884 () Bool)

(assert (=> bs!1920302 m!8019884))

(assert (=> start!718866 d!2282415))

(declare-fun bs!1920303 () Bool)

(declare-fun d!2282417 () Bool)

(assert (= bs!1920303 (and d!2282417 b!7363069)))

(declare-fun lambda!457512 () Int)

(assert (=> bs!1920303 (= lambda!457512 lambda!457494)))

(declare-fun bs!1920304 () Bool)

(assert (= bs!1920304 (and d!2282417 d!2282399)))

(assert (=> bs!1920304 (= lambda!457512 lambda!457508)))

(declare-fun bs!1920305 () Bool)

(assert (= bs!1920305 (and d!2282417 d!2282415)))

(assert (=> bs!1920305 (= lambda!457512 lambda!457511)))

(assert (=> d!2282417 (= (inv!91441 ct1!282) (forall!18052 (exprs!8680 ct1!282) lambda!457512))))

(declare-fun bs!1920306 () Bool)

(assert (= bs!1920306 d!2282417))

(declare-fun m!8019886 () Bool)

(assert (=> bs!1920306 m!8019886))

(assert (=> start!718866 d!2282417))

(declare-fun bs!1920307 () Bool)

(declare-fun d!2282419 () Bool)

(assert (= bs!1920307 (and d!2282419 b!7363069)))

(declare-fun lambda!457513 () Int)

(assert (=> bs!1920307 (= lambda!457513 lambda!457494)))

(declare-fun bs!1920308 () Bool)

(assert (= bs!1920308 (and d!2282419 d!2282399)))

(assert (=> bs!1920308 (= lambda!457513 lambda!457508)))

(declare-fun bs!1920309 () Bool)

(assert (= bs!1920309 (and d!2282419 d!2282415)))

(assert (=> bs!1920309 (= lambda!457513 lambda!457511)))

(declare-fun bs!1920310 () Bool)

(assert (= bs!1920310 (and d!2282419 d!2282417)))

(assert (=> bs!1920310 (= lambda!457513 lambda!457512)))

(assert (=> d!2282419 (= (inv!91441 ct2!378) (forall!18052 (exprs!8680 ct2!378) lambda!457513))))

(declare-fun bs!1920311 () Bool)

(assert (= bs!1920311 d!2282419))

(declare-fun m!8019888 () Bool)

(assert (=> bs!1920311 m!8019888))

(assert (=> start!718866 d!2282419))

(declare-fun b!7363265 () Bool)

(declare-fun e!4408492 () Bool)

(declare-fun tp!2092446 () Bool)

(declare-fun tp!2092447 () Bool)

(assert (=> b!7363265 (= e!4408492 (and tp!2092446 tp!2092447))))

(assert (=> b!7363070 (= tp!2092416 e!4408492)))

(assert (= (and b!7363070 (is-Cons!71612 (exprs!8680 cWitness!61))) b!7363265))

(declare-fun e!4408495 () Bool)

(assert (=> b!7363065 (= tp!2092415 e!4408495)))

(declare-fun b!7363277 () Bool)

(declare-fun tp!2092462 () Bool)

(declare-fun tp!2092458 () Bool)

(assert (=> b!7363277 (= e!4408495 (and tp!2092462 tp!2092458))))

(declare-fun b!7363278 () Bool)

(declare-fun tp!2092461 () Bool)

(assert (=> b!7363278 (= e!4408495 tp!2092461)))

(declare-fun b!7363276 () Bool)

(assert (=> b!7363276 (= e!4408495 tp_is_empty!48725)))

(declare-fun b!7363279 () Bool)

(declare-fun tp!2092459 () Bool)

(declare-fun tp!2092460 () Bool)

(assert (=> b!7363279 (= e!4408495 (and tp!2092459 tp!2092460))))

(assert (= (and b!7363065 (is-ElementMatch!19240 (regOne!38993 r1!2370))) b!7363276))

(assert (= (and b!7363065 (is-Concat!28085 (regOne!38993 r1!2370))) b!7363277))

(assert (= (and b!7363065 (is-Star!19240 (regOne!38993 r1!2370))) b!7363278))

(assert (= (and b!7363065 (is-Union!19240 (regOne!38993 r1!2370))) b!7363279))

(declare-fun e!4408496 () Bool)

(assert (=> b!7363065 (= tp!2092413 e!4408496)))

(declare-fun b!7363281 () Bool)

(declare-fun tp!2092467 () Bool)

(declare-fun tp!2092463 () Bool)

(assert (=> b!7363281 (= e!4408496 (and tp!2092467 tp!2092463))))

(declare-fun b!7363282 () Bool)

(declare-fun tp!2092466 () Bool)

(assert (=> b!7363282 (= e!4408496 tp!2092466)))

(declare-fun b!7363280 () Bool)

(assert (=> b!7363280 (= e!4408496 tp_is_empty!48725)))

(declare-fun b!7363283 () Bool)

(declare-fun tp!2092464 () Bool)

(declare-fun tp!2092465 () Bool)

(assert (=> b!7363283 (= e!4408496 (and tp!2092464 tp!2092465))))

(assert (= (and b!7363065 (is-ElementMatch!19240 (regTwo!38993 r1!2370))) b!7363280))

(assert (= (and b!7363065 (is-Concat!28085 (regTwo!38993 r1!2370))) b!7363281))

(assert (= (and b!7363065 (is-Star!19240 (regTwo!38993 r1!2370))) b!7363282))

(assert (= (and b!7363065 (is-Union!19240 (regTwo!38993 r1!2370))) b!7363283))

(declare-fun e!4408497 () Bool)

(assert (=> b!7363060 (= tp!2092414 e!4408497)))

(declare-fun b!7363285 () Bool)

(declare-fun tp!2092472 () Bool)

(declare-fun tp!2092468 () Bool)

(assert (=> b!7363285 (= e!4408497 (and tp!2092472 tp!2092468))))

(declare-fun b!7363286 () Bool)

(declare-fun tp!2092471 () Bool)

(assert (=> b!7363286 (= e!4408497 tp!2092471)))

(declare-fun b!7363284 () Bool)

(assert (=> b!7363284 (= e!4408497 tp_is_empty!48725)))

(declare-fun b!7363287 () Bool)

(declare-fun tp!2092469 () Bool)

(declare-fun tp!2092470 () Bool)

(assert (=> b!7363287 (= e!4408497 (and tp!2092469 tp!2092470))))

(assert (= (and b!7363060 (is-ElementMatch!19240 (reg!19569 r1!2370))) b!7363284))

(assert (= (and b!7363060 (is-Concat!28085 (reg!19569 r1!2370))) b!7363285))

(assert (= (and b!7363060 (is-Star!19240 (reg!19569 r1!2370))) b!7363286))

(assert (= (and b!7363060 (is-Union!19240 (reg!19569 r1!2370))) b!7363287))

(declare-fun b!7363288 () Bool)

(declare-fun e!4408498 () Bool)

(declare-fun tp!2092473 () Bool)

(declare-fun tp!2092474 () Bool)

(assert (=> b!7363288 (= e!4408498 (and tp!2092473 tp!2092474))))

(assert (=> b!7363071 (= tp!2092412 e!4408498)))

(assert (= (and b!7363071 (is-Cons!71612 (exprs!8680 ct1!282))) b!7363288))

(declare-fun b!7363289 () Bool)

(declare-fun e!4408499 () Bool)

(declare-fun tp!2092475 () Bool)

(declare-fun tp!2092476 () Bool)

(assert (=> b!7363289 (= e!4408499 (and tp!2092475 tp!2092476))))

(assert (=> b!7363066 (= tp!2092417 e!4408499)))

(assert (= (and b!7363066 (is-Cons!71612 (exprs!8680 ct2!378))) b!7363289))

(declare-fun e!4408500 () Bool)

(assert (=> b!7363061 (= tp!2092410 e!4408500)))

(declare-fun b!7363291 () Bool)

(declare-fun tp!2092481 () Bool)

(declare-fun tp!2092477 () Bool)

(assert (=> b!7363291 (= e!4408500 (and tp!2092481 tp!2092477))))

(declare-fun b!7363292 () Bool)

(declare-fun tp!2092480 () Bool)

(assert (=> b!7363292 (= e!4408500 tp!2092480)))

(declare-fun b!7363290 () Bool)

(assert (=> b!7363290 (= e!4408500 tp_is_empty!48725)))

(declare-fun b!7363293 () Bool)

(declare-fun tp!2092478 () Bool)

(declare-fun tp!2092479 () Bool)

(assert (=> b!7363293 (= e!4408500 (and tp!2092478 tp!2092479))))

(assert (= (and b!7363061 (is-ElementMatch!19240 (regOne!38992 r1!2370))) b!7363290))

(assert (= (and b!7363061 (is-Concat!28085 (regOne!38992 r1!2370))) b!7363291))

(assert (= (and b!7363061 (is-Star!19240 (regOne!38992 r1!2370))) b!7363292))

(assert (= (and b!7363061 (is-Union!19240 (regOne!38992 r1!2370))) b!7363293))

(declare-fun e!4408501 () Bool)

(assert (=> b!7363061 (= tp!2092411 e!4408501)))

(declare-fun b!7363295 () Bool)

(declare-fun tp!2092486 () Bool)

(declare-fun tp!2092482 () Bool)

(assert (=> b!7363295 (= e!4408501 (and tp!2092486 tp!2092482))))

(declare-fun b!7363296 () Bool)

(declare-fun tp!2092485 () Bool)

(assert (=> b!7363296 (= e!4408501 tp!2092485)))

(declare-fun b!7363294 () Bool)

(assert (=> b!7363294 (= e!4408501 tp_is_empty!48725)))

(declare-fun b!7363297 () Bool)

(declare-fun tp!2092483 () Bool)

(declare-fun tp!2092484 () Bool)

(assert (=> b!7363297 (= e!4408501 (and tp!2092483 tp!2092484))))

(assert (= (and b!7363061 (is-ElementMatch!19240 (regTwo!38992 r1!2370))) b!7363294))

(assert (= (and b!7363061 (is-Concat!28085 (regTwo!38992 r1!2370))) b!7363295))

(assert (= (and b!7363061 (is-Star!19240 (regTwo!38992 r1!2370))) b!7363296))

(assert (= (and b!7363061 (is-Union!19240 (regTwo!38992 r1!2370))) b!7363297))

(push 1)

(assert (not b!7363221))

(assert (not b!7363288))

(assert (not b!7363133))

(assert (not d!2282417))

(assert (not b!7363220))

(assert (not b!7363205))

(assert (not d!2282405))

(assert (not bm!675068))

(assert (not b!7363292))

(assert (not bm!675078))

(assert (not bm!675111))

(assert (not bm!675073))

(assert (not b!7363155))

(assert (not d!2282415))

(assert (not d!2282419))

(assert (not bm!675066))

(assert (not b!7363296))

(assert (not bm!675080))

(assert (not b!7363211))

(assert (not bm!675085))

(assert (not b!7363265))

(assert (not b!7363282))

(assert (not bm!675102))

(assert (not b!7363287))

(assert (not b!7363297))

(assert (not b!7363285))

(assert (not bm!675112))

(assert (not d!2282407))

(assert (not bm!675103))

(assert (not b!7363144))

(assert (not b!7363206))

(assert (not bm!675104))

(assert (not b!7363243))

(assert (not bm!675084))

(assert (not b!7363283))

(assert (not b!7363293))

(assert (not d!2282403))

(assert (not bm!675072))

(assert (not b!7363166))

(assert (not b!7363286))

(assert (not b!7363281))

(assert (not b!7363277))

(assert (not b!7363279))

(assert (not bm!675086))

(assert (not bm!675079))

(assert (not bm!675074))

(assert (not bm!675067))

(assert (not b!7363295))

(assert (not b!7363289))

(assert (not d!2282411))

(assert tp_is_empty!48725)

(assert (not b!7363291))

(assert (not b!7363278))

(assert (not d!2282399))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

