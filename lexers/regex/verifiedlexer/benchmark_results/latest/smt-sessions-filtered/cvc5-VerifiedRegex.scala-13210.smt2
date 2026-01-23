; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719862 () Bool)

(assert start!719862)

(declare-fun b!7378026 () Bool)

(declare-fun e!4416550 () Bool)

(declare-fun tp_is_empty!48861 () Bool)

(assert (=> b!7378026 (= e!4416550 tp_is_empty!48861)))

(declare-fun b!7378027 () Bool)

(declare-fun e!4416551 () Bool)

(declare-fun e!4416556 () Bool)

(assert (=> b!7378027 (= e!4416551 (not e!4416556))))

(declare-fun res!2976161 () Bool)

(assert (=> b!7378027 (=> res!2976161 e!4416556)))

(declare-datatypes ((C!38890 0))(
  ( (C!38891 (val!29805 Int)) )
))
(declare-datatypes ((Regex!19308 0))(
  ( (ElementMatch!19308 (c!1371378 C!38890)) (Concat!28153 (regOne!39128 Regex!19308) (regTwo!39128 Regex!19308)) (EmptyExpr!19308) (Star!19308 (reg!19637 Regex!19308)) (EmptyLang!19308) (Union!19308 (regOne!39129 Regex!19308) (regTwo!39129 Regex!19308)) )
))
(declare-datatypes ((List!71804 0))(
  ( (Nil!71680) (Cons!71680 (h!78128 Regex!19308) (t!386287 List!71804)) )
))
(declare-datatypes ((Context!16496 0))(
  ( (Context!16497 (exprs!8748 List!71804)) )
))
(declare-fun lt!2616556 () Context!16496)

(declare-fun lt!2616555 () (Set Context!16496))

(assert (=> b!7378027 (= res!2976161 (not (set.member lt!2616556 lt!2616555)))))

(declare-fun ct2!378 () Context!16496)

(declare-fun cWitness!61 () Context!16496)

(declare-fun lambda!458404 () Int)

(declare-datatypes ((Unit!165565 0))(
  ( (Unit!165566) )
))
(declare-fun lt!2616554 () Unit!165565)

(declare-fun lemmaConcatPreservesForall!1981 (List!71804 List!71804 Int) Unit!165565)

(assert (=> b!7378027 (= lt!2616554 (lemmaConcatPreservesForall!1981 (exprs!8748 cWitness!61) (exprs!8748 ct2!378) lambda!458404))))

(declare-fun lt!2616557 () List!71804)

(declare-fun r1!2370 () Regex!19308)

(declare-fun c!10362 () C!38890)

(declare-fun derivationStepZipperDown!3134 (Regex!19308 Context!16496 C!38890) (Set Context!16496))

(declare-fun ++!17124 (List!71804 List!71804) List!71804)

(assert (=> b!7378027 (set.member lt!2616556 (derivationStepZipperDown!3134 (regOne!39128 r1!2370) (Context!16497 (++!17124 lt!2616557 (exprs!8748 ct2!378))) c!10362))))

(assert (=> b!7378027 (= lt!2616556 (Context!16497 (++!17124 (exprs!8748 cWitness!61) (exprs!8748 ct2!378))))))

(declare-fun lt!2616551 () Unit!165565)

(assert (=> b!7378027 (= lt!2616551 (lemmaConcatPreservesForall!1981 lt!2616557 (exprs!8748 ct2!378) lambda!458404))))

(declare-fun lt!2616550 () Unit!165565)

(assert (=> b!7378027 (= lt!2616550 (lemmaConcatPreservesForall!1981 (exprs!8748 cWitness!61) (exprs!8748 ct2!378) lambda!458404))))

(declare-fun lt!2616547 () Context!16496)

(declare-fun lt!2616552 () Unit!165565)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!149 (Regex!19308 Context!16496 Context!16496 Context!16496 C!38890) Unit!165565)

(assert (=> b!7378027 (= lt!2616552 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!149 (regOne!39128 r1!2370) lt!2616547 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7378028 () Bool)

(declare-fun res!2976157 () Bool)

(declare-fun e!4416549 () Bool)

(assert (=> b!7378028 (=> (not res!2976157) (not e!4416549))))

(assert (=> b!7378028 (= res!2976157 (is-Concat!28153 r1!2370))))

(declare-fun b!7378029 () Bool)

(declare-fun e!4416552 () Bool)

(declare-fun tp!2098135 () Bool)

(assert (=> b!7378029 (= e!4416552 tp!2098135)))

(declare-fun b!7378030 () Bool)

(declare-fun tp!2098136 () Bool)

(declare-fun tp!2098134 () Bool)

(assert (=> b!7378030 (= e!4416550 (and tp!2098136 tp!2098134))))

(declare-fun res!2976165 () Bool)

(declare-fun e!4416555 () Bool)

(assert (=> start!719862 (=> (not res!2976165) (not e!4416555))))

(declare-fun validRegex!9904 (Regex!19308) Bool)

(assert (=> start!719862 (= res!2976165 (validRegex!9904 r1!2370))))

(assert (=> start!719862 e!4416555))

(assert (=> start!719862 tp_is_empty!48861))

(declare-fun e!4416553 () Bool)

(declare-fun inv!91611 (Context!16496) Bool)

(assert (=> start!719862 (and (inv!91611 cWitness!61) e!4416553)))

(declare-fun ct1!282 () Context!16496)

(declare-fun e!4416557 () Bool)

(assert (=> start!719862 (and (inv!91611 ct1!282) e!4416557)))

(assert (=> start!719862 e!4416550))

(assert (=> start!719862 (and (inv!91611 ct2!378) e!4416552)))

(declare-fun b!7378031 () Bool)

(declare-fun e!4416558 () Bool)

(declare-fun nullable!8384 (Regex!19308) Bool)

(assert (=> b!7378031 (= e!4416558 (not (nullable!8384 (regOne!39128 r1!2370))))))

(declare-fun b!7378032 () Bool)

(declare-fun res!2976158 () Bool)

(assert (=> b!7378032 (=> (not res!2976158) (not e!4416549))))

(assert (=> b!7378032 (= res!2976158 e!4416558)))

(declare-fun res!2976162 () Bool)

(assert (=> b!7378032 (=> res!2976162 e!4416558)))

(assert (=> b!7378032 (= res!2976162 (not (is-Concat!28153 r1!2370)))))

(declare-fun b!7378033 () Bool)

(declare-fun res!2976159 () Bool)

(assert (=> b!7378033 (=> (not res!2976159) (not e!4416549))))

(assert (=> b!7378033 (= res!2976159 (validRegex!9904 (regTwo!39128 r1!2370)))))

(declare-fun b!7378034 () Bool)

(declare-fun e!4416554 () Bool)

(assert (=> b!7378034 (= e!4416554 e!4416549)))

(declare-fun res!2976164 () Bool)

(assert (=> b!7378034 (=> (not res!2976164) (not e!4416549))))

(assert (=> b!7378034 (= res!2976164 (and (or (not (is-ElementMatch!19308 r1!2370)) (not (= c!10362 (c!1371378 r1!2370)))) (not (is-Union!19308 r1!2370))))))

(assert (=> b!7378034 (= lt!2616555 (derivationStepZipperDown!3134 r1!2370 (Context!16497 (++!17124 (exprs!8748 ct1!282) (exprs!8748 ct2!378))) c!10362))))

(declare-fun lt!2616549 () Unit!165565)

(assert (=> b!7378034 (= lt!2616549 (lemmaConcatPreservesForall!1981 (exprs!8748 ct1!282) (exprs!8748 ct2!378) lambda!458404))))

(declare-fun b!7378035 () Bool)

(declare-fun tp!2098138 () Bool)

(assert (=> b!7378035 (= e!4416550 tp!2098138)))

(declare-fun b!7378036 () Bool)

(assert (=> b!7378036 (= e!4416556 (inv!91611 lt!2616556))))

(declare-fun lt!2616546 () Unit!165565)

(assert (=> b!7378036 (= lt!2616546 (lemmaConcatPreservesForall!1981 (exprs!8748 ct1!282) (exprs!8748 ct2!378) lambda!458404))))

(declare-fun lt!2616553 () Unit!165565)

(assert (=> b!7378036 (= lt!2616553 (lemmaConcatPreservesForall!1981 (exprs!8748 cWitness!61) (exprs!8748 ct2!378) lambda!458404))))

(declare-fun b!7378037 () Bool)

(declare-fun tp!2098139 () Bool)

(assert (=> b!7378037 (= e!4416557 tp!2098139)))

(declare-fun b!7378038 () Bool)

(declare-fun tp!2098141 () Bool)

(declare-fun tp!2098137 () Bool)

(assert (=> b!7378038 (= e!4416550 (and tp!2098141 tp!2098137))))

(declare-fun b!7378039 () Bool)

(assert (=> b!7378039 (= e!4416549 e!4416551)))

(declare-fun res!2976160 () Bool)

(assert (=> b!7378039 (=> (not res!2976160) (not e!4416551))))

(declare-fun lt!2616548 () (Set Context!16496))

(assert (=> b!7378039 (= res!2976160 (= lt!2616548 (derivationStepZipperDown!3134 (regOne!39128 r1!2370) lt!2616547 c!10362)))))

(assert (=> b!7378039 (= lt!2616547 (Context!16497 lt!2616557))))

(declare-fun $colon$colon!3290 (List!71804 Regex!19308) List!71804)

(assert (=> b!7378039 (= lt!2616557 ($colon$colon!3290 (exprs!8748 ct1!282) (regTwo!39128 r1!2370)))))

(declare-fun b!7378040 () Bool)

(declare-fun tp!2098140 () Bool)

(assert (=> b!7378040 (= e!4416553 tp!2098140)))

(declare-fun b!7378041 () Bool)

(assert (=> b!7378041 (= e!4416555 e!4416554)))

(declare-fun res!2976163 () Bool)

(assert (=> b!7378041 (=> (not res!2976163) (not e!4416554))))

(assert (=> b!7378041 (= res!2976163 (set.member cWitness!61 lt!2616548))))

(assert (=> b!7378041 (= lt!2616548 (derivationStepZipperDown!3134 r1!2370 ct1!282 c!10362))))

(assert (= (and start!719862 res!2976165) b!7378041))

(assert (= (and b!7378041 res!2976163) b!7378034))

(assert (= (and b!7378034 res!2976164) b!7378032))

(assert (= (and b!7378032 (not res!2976162)) b!7378031))

(assert (= (and b!7378032 res!2976158) b!7378028))

(assert (= (and b!7378028 res!2976157) b!7378033))

(assert (= (and b!7378033 res!2976159) b!7378039))

(assert (= (and b!7378039 res!2976160) b!7378027))

(assert (= (and b!7378027 (not res!2976161)) b!7378036))

(assert (= start!719862 b!7378040))

(assert (= start!719862 b!7378037))

(assert (= (and start!719862 (is-ElementMatch!19308 r1!2370)) b!7378026))

(assert (= (and start!719862 (is-Concat!28153 r1!2370)) b!7378030))

(assert (= (and start!719862 (is-Star!19308 r1!2370)) b!7378035))

(assert (= (and start!719862 (is-Union!19308 r1!2370)) b!7378038))

(assert (= start!719862 b!7378029))

(declare-fun m!8029238 () Bool)

(assert (=> b!7378027 m!8029238))

(declare-fun m!8029240 () Bool)

(assert (=> b!7378027 m!8029240))

(declare-fun m!8029242 () Bool)

(assert (=> b!7378027 m!8029242))

(declare-fun m!8029244 () Bool)

(assert (=> b!7378027 m!8029244))

(declare-fun m!8029246 () Bool)

(assert (=> b!7378027 m!8029246))

(assert (=> b!7378027 m!8029242))

(declare-fun m!8029248 () Bool)

(assert (=> b!7378027 m!8029248))

(declare-fun m!8029250 () Bool)

(assert (=> b!7378027 m!8029250))

(declare-fun m!8029252 () Bool)

(assert (=> b!7378027 m!8029252))

(declare-fun m!8029254 () Bool)

(assert (=> b!7378033 m!8029254))

(declare-fun m!8029256 () Bool)

(assert (=> b!7378041 m!8029256))

(declare-fun m!8029258 () Bool)

(assert (=> b!7378041 m!8029258))

(declare-fun m!8029260 () Bool)

(assert (=> b!7378036 m!8029260))

(declare-fun m!8029262 () Bool)

(assert (=> b!7378036 m!8029262))

(assert (=> b!7378036 m!8029242))

(declare-fun m!8029264 () Bool)

(assert (=> b!7378031 m!8029264))

(declare-fun m!8029266 () Bool)

(assert (=> b!7378034 m!8029266))

(declare-fun m!8029268 () Bool)

(assert (=> b!7378034 m!8029268))

(assert (=> b!7378034 m!8029262))

(declare-fun m!8029270 () Bool)

(assert (=> start!719862 m!8029270))

(declare-fun m!8029272 () Bool)

(assert (=> start!719862 m!8029272))

(declare-fun m!8029274 () Bool)

(assert (=> start!719862 m!8029274))

(declare-fun m!8029276 () Bool)

(assert (=> start!719862 m!8029276))

(declare-fun m!8029278 () Bool)

(assert (=> b!7378039 m!8029278))

(declare-fun m!8029280 () Bool)

(assert (=> b!7378039 m!8029280))

(push 1)

(assert (not b!7378040))

(assert (not b!7378033))

(assert (not b!7378030))

(assert (not b!7378034))

(assert tp_is_empty!48861)

(assert (not b!7378031))

(assert (not b!7378029))

(assert (not b!7378036))

(assert (not b!7378038))

(assert (not b!7378037))

(assert (not b!7378039))

(assert (not start!719862))

(assert (not b!7378041))

(assert (not b!7378035))

(assert (not b!7378027))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2285091 () Bool)

(declare-fun nullableFct!3361 (Regex!19308) Bool)

(assert (=> d!2285091 (= (nullable!8384 (regOne!39128 r1!2370)) (nullableFct!3361 (regOne!39128 r1!2370)))))

(declare-fun bs!1921396 () Bool)

(assert (= bs!1921396 d!2285091))

(declare-fun m!8029326 () Bool)

(assert (=> bs!1921396 m!8029326))

(assert (=> b!7378031 d!2285091))

(declare-fun bs!1921397 () Bool)

(declare-fun d!2285093 () Bool)

(assert (= bs!1921397 (and d!2285093 b!7378034)))

(declare-fun lambda!458420 () Int)

(assert (=> bs!1921397 (= lambda!458420 lambda!458404)))

(declare-fun forall!18104 (List!71804 Int) Bool)

(assert (=> d!2285093 (= (inv!91611 lt!2616556) (forall!18104 (exprs!8748 lt!2616556) lambda!458420))))

(declare-fun bs!1921398 () Bool)

(assert (= bs!1921398 d!2285093))

(declare-fun m!8029328 () Bool)

(assert (=> bs!1921398 m!8029328))

(assert (=> b!7378036 d!2285093))

(declare-fun d!2285095 () Bool)

(assert (=> d!2285095 (forall!18104 (++!17124 (exprs!8748 ct1!282) (exprs!8748 ct2!378)) lambda!458404)))

(declare-fun lt!2616596 () Unit!165565)

(declare-fun choose!57335 (List!71804 List!71804 Int) Unit!165565)

(assert (=> d!2285095 (= lt!2616596 (choose!57335 (exprs!8748 ct1!282) (exprs!8748 ct2!378) lambda!458404))))

(assert (=> d!2285095 (forall!18104 (exprs!8748 ct1!282) lambda!458404)))

(assert (=> d!2285095 (= (lemmaConcatPreservesForall!1981 (exprs!8748 ct1!282) (exprs!8748 ct2!378) lambda!458404) lt!2616596)))

(declare-fun bs!1921399 () Bool)

(assert (= bs!1921399 d!2285095))

(assert (=> bs!1921399 m!8029266))

(assert (=> bs!1921399 m!8029266))

(declare-fun m!8029330 () Bool)

(assert (=> bs!1921399 m!8029330))

(declare-fun m!8029332 () Bool)

(assert (=> bs!1921399 m!8029332))

(declare-fun m!8029334 () Bool)

(assert (=> bs!1921399 m!8029334))

(assert (=> b!7378036 d!2285095))

(declare-fun d!2285097 () Bool)

(assert (=> d!2285097 (forall!18104 (++!17124 (exprs!8748 cWitness!61) (exprs!8748 ct2!378)) lambda!458404)))

(declare-fun lt!2616597 () Unit!165565)

(assert (=> d!2285097 (= lt!2616597 (choose!57335 (exprs!8748 cWitness!61) (exprs!8748 ct2!378) lambda!458404))))

(assert (=> d!2285097 (forall!18104 (exprs!8748 cWitness!61) lambda!458404)))

(assert (=> d!2285097 (= (lemmaConcatPreservesForall!1981 (exprs!8748 cWitness!61) (exprs!8748 ct2!378) lambda!458404) lt!2616597)))

(declare-fun bs!1921400 () Bool)

(assert (= bs!1921400 d!2285097))

(assert (=> bs!1921400 m!8029246))

(assert (=> bs!1921400 m!8029246))

(declare-fun m!8029336 () Bool)

(assert (=> bs!1921400 m!8029336))

(declare-fun m!8029338 () Bool)

(assert (=> bs!1921400 m!8029338))

(declare-fun m!8029340 () Bool)

(assert (=> bs!1921400 m!8029340))

(assert (=> b!7378036 d!2285097))

(declare-fun bm!678518 () Bool)

(declare-fun call!678528 () List!71804)

(declare-fun call!678526 () List!71804)

(assert (=> bm!678518 (= call!678528 call!678526)))

(declare-fun b!7378147 () Bool)

(declare-fun e!4416629 () (Set Context!16496))

(declare-fun e!4416628 () (Set Context!16496))

(assert (=> b!7378147 (= e!4416629 e!4416628)))

(declare-fun c!1371399 () Bool)

(assert (=> b!7378147 (= c!1371399 (is-Union!19308 r1!2370))))

(declare-fun bm!678519 () Bool)

(declare-fun call!678525 () (Set Context!16496))

(assert (=> bm!678519 (= call!678525 (derivationStepZipperDown!3134 (ite c!1371399 (regOne!39129 r1!2370) (regOne!39128 r1!2370)) (ite c!1371399 ct1!282 (Context!16497 call!678526)) c!10362))))

(declare-fun b!7378148 () Bool)

(declare-fun e!4416627 () (Set Context!16496))

(declare-fun call!678524 () (Set Context!16496))

(assert (=> b!7378148 (= e!4416627 call!678524)))

(declare-fun b!7378149 () Bool)

(assert (=> b!7378149 (= e!4416629 (set.insert ct1!282 (as set.empty (Set Context!16496))))))

(declare-fun c!1371400 () Bool)

(declare-fun c!1371401 () Bool)

(declare-fun bm!678520 () Bool)

(assert (=> bm!678520 (= call!678526 ($colon$colon!3290 (exprs!8748 ct1!282) (ite (or c!1371401 c!1371400) (regTwo!39128 r1!2370) r1!2370)))))

(declare-fun b!7378150 () Bool)

(declare-fun e!4416626 () (Set Context!16496))

(assert (=> b!7378150 (= e!4416626 e!4416627)))

(assert (=> b!7378150 (= c!1371400 (is-Concat!28153 r1!2370))))

(declare-fun d!2285099 () Bool)

(declare-fun c!1371402 () Bool)

(assert (=> d!2285099 (= c!1371402 (and (is-ElementMatch!19308 r1!2370) (= (c!1371378 r1!2370) c!10362)))))

(assert (=> d!2285099 (= (derivationStepZipperDown!3134 r1!2370 ct1!282 c!10362) e!4416629)))

(declare-fun b!7378151 () Bool)

(declare-fun e!4416631 () (Set Context!16496))

(assert (=> b!7378151 (= e!4416631 call!678524)))

(declare-fun bm!678521 () Bool)

(declare-fun call!678523 () (Set Context!16496))

(declare-fun call!678527 () (Set Context!16496))

(assert (=> bm!678521 (= call!678523 call!678527)))

(declare-fun bm!678522 () Bool)

(assert (=> bm!678522 (= call!678527 (derivationStepZipperDown!3134 (ite c!1371399 (regTwo!39129 r1!2370) (ite c!1371401 (regTwo!39128 r1!2370) (ite c!1371400 (regOne!39128 r1!2370) (reg!19637 r1!2370)))) (ite (or c!1371399 c!1371401) ct1!282 (Context!16497 call!678528)) c!10362))))

(declare-fun b!7378152 () Bool)

(declare-fun e!4416630 () Bool)

(assert (=> b!7378152 (= e!4416630 (nullable!8384 (regOne!39128 r1!2370)))))

(declare-fun b!7378153 () Bool)

(declare-fun c!1371398 () Bool)

(assert (=> b!7378153 (= c!1371398 (is-Star!19308 r1!2370))))

(assert (=> b!7378153 (= e!4416627 e!4416631)))

(declare-fun bm!678523 () Bool)

(assert (=> bm!678523 (= call!678524 call!678523)))

(declare-fun b!7378154 () Bool)

(assert (=> b!7378154 (= e!4416626 (set.union call!678525 call!678523))))

(declare-fun b!7378155 () Bool)

(assert (=> b!7378155 (= e!4416628 (set.union call!678525 call!678527))))

(declare-fun b!7378156 () Bool)

(assert (=> b!7378156 (= e!4416631 (as set.empty (Set Context!16496)))))

(declare-fun b!7378157 () Bool)

(assert (=> b!7378157 (= c!1371401 e!4416630)))

(declare-fun res!2976214 () Bool)

(assert (=> b!7378157 (=> (not res!2976214) (not e!4416630))))

(assert (=> b!7378157 (= res!2976214 (is-Concat!28153 r1!2370))))

(assert (=> b!7378157 (= e!4416628 e!4416626)))

(assert (= (and d!2285099 c!1371402) b!7378149))

(assert (= (and d!2285099 (not c!1371402)) b!7378147))

(assert (= (and b!7378147 c!1371399) b!7378155))

(assert (= (and b!7378147 (not c!1371399)) b!7378157))

(assert (= (and b!7378157 res!2976214) b!7378152))

(assert (= (and b!7378157 c!1371401) b!7378154))

(assert (= (and b!7378157 (not c!1371401)) b!7378150))

(assert (= (and b!7378150 c!1371400) b!7378148))

(assert (= (and b!7378150 (not c!1371400)) b!7378153))

(assert (= (and b!7378153 c!1371398) b!7378151))

(assert (= (and b!7378153 (not c!1371398)) b!7378156))

(assert (= (or b!7378148 b!7378151) bm!678518))

(assert (= (or b!7378148 b!7378151) bm!678523))

(assert (= (or b!7378154 bm!678523) bm!678521))

(assert (= (or b!7378154 bm!678518) bm!678520))

(assert (= (or b!7378155 bm!678521) bm!678522))

(assert (= (or b!7378155 b!7378154) bm!678519))

(declare-fun m!8029350 () Bool)

(assert (=> bm!678519 m!8029350))

(declare-fun m!8029352 () Bool)

(assert (=> bm!678520 m!8029352))

(declare-fun m!8029354 () Bool)

(assert (=> b!7378149 m!8029354))

(assert (=> b!7378152 m!8029264))

(declare-fun m!8029356 () Bool)

(assert (=> bm!678522 m!8029356))

(assert (=> b!7378041 d!2285099))

(declare-fun bm!678531 () Bool)

(declare-fun call!678535 () Bool)

(declare-fun c!1371409 () Bool)

(assert (=> bm!678531 (= call!678535 (validRegex!9904 (ite c!1371409 (regOne!39129 r1!2370) (regTwo!39128 r1!2370))))))

(declare-fun b!7378184 () Bool)

(declare-fun res!2976229 () Bool)

(declare-fun e!4416650 () Bool)

(assert (=> b!7378184 (=> res!2976229 e!4416650)))

(assert (=> b!7378184 (= res!2976229 (not (is-Concat!28153 r1!2370)))))

(declare-fun e!4416654 () Bool)

(assert (=> b!7378184 (= e!4416654 e!4416650)))

(declare-fun b!7378185 () Bool)

(declare-fun e!4416655 () Bool)

(declare-fun e!4416653 () Bool)

(assert (=> b!7378185 (= e!4416655 e!4416653)))

(declare-fun res!2976230 () Bool)

(assert (=> b!7378185 (= res!2976230 (not (nullable!8384 (reg!19637 r1!2370))))))

(assert (=> b!7378185 (=> (not res!2976230) (not e!4416653))))

(declare-fun b!7378186 () Bool)

(declare-fun e!4416651 () Bool)

(assert (=> b!7378186 (= e!4416651 call!678535)))

(declare-fun bm!678532 () Bool)

(declare-fun call!678536 () Bool)

(declare-fun c!1371410 () Bool)

(assert (=> bm!678532 (= call!678536 (validRegex!9904 (ite c!1371410 (reg!19637 r1!2370) (ite c!1371409 (regTwo!39129 r1!2370) (regOne!39128 r1!2370)))))))

(declare-fun b!7378187 () Bool)

(assert (=> b!7378187 (= e!4416650 e!4416651)))

(declare-fun res!2976232 () Bool)

(assert (=> b!7378187 (=> (not res!2976232) (not e!4416651))))

(declare-fun call!678537 () Bool)

(assert (=> b!7378187 (= res!2976232 call!678537)))

(declare-fun b!7378188 () Bool)

(declare-fun e!4416656 () Bool)

(assert (=> b!7378188 (= e!4416656 call!678537)))

(declare-fun bm!678530 () Bool)

(assert (=> bm!678530 (= call!678537 call!678536)))

(declare-fun d!2285105 () Bool)

(declare-fun res!2976233 () Bool)

(declare-fun e!4416652 () Bool)

(assert (=> d!2285105 (=> res!2976233 e!4416652)))

(assert (=> d!2285105 (= res!2976233 (is-ElementMatch!19308 r1!2370))))

(assert (=> d!2285105 (= (validRegex!9904 r1!2370) e!4416652)))

(declare-fun b!7378189 () Bool)

(assert (=> b!7378189 (= e!4416653 call!678536)))

(declare-fun b!7378190 () Bool)

(declare-fun res!2976231 () Bool)

(assert (=> b!7378190 (=> (not res!2976231) (not e!4416656))))

(assert (=> b!7378190 (= res!2976231 call!678535)))

(assert (=> b!7378190 (= e!4416654 e!4416656)))

(declare-fun b!7378191 () Bool)

(assert (=> b!7378191 (= e!4416652 e!4416655)))

(assert (=> b!7378191 (= c!1371410 (is-Star!19308 r1!2370))))

(declare-fun b!7378192 () Bool)

(assert (=> b!7378192 (= e!4416655 e!4416654)))

(assert (=> b!7378192 (= c!1371409 (is-Union!19308 r1!2370))))

(assert (= (and d!2285105 (not res!2976233)) b!7378191))

(assert (= (and b!7378191 c!1371410) b!7378185))

(assert (= (and b!7378191 (not c!1371410)) b!7378192))

(assert (= (and b!7378185 res!2976230) b!7378189))

(assert (= (and b!7378192 c!1371409) b!7378190))

(assert (= (and b!7378192 (not c!1371409)) b!7378184))

(assert (= (and b!7378190 res!2976231) b!7378188))

(assert (= (and b!7378184 (not res!2976229)) b!7378187))

(assert (= (and b!7378187 res!2976232) b!7378186))

(assert (= (or b!7378190 b!7378186) bm!678531))

(assert (= (or b!7378188 b!7378187) bm!678530))

(assert (= (or b!7378189 bm!678530) bm!678532))

(declare-fun m!8029382 () Bool)

(assert (=> bm!678531 m!8029382))

(declare-fun m!8029384 () Bool)

(assert (=> b!7378185 m!8029384))

(declare-fun m!8029386 () Bool)

(assert (=> bm!678532 m!8029386))

(assert (=> start!719862 d!2285105))

(declare-fun bs!1921402 () Bool)

(declare-fun d!2285111 () Bool)

(assert (= bs!1921402 (and d!2285111 b!7378034)))

(declare-fun lambda!458421 () Int)

(assert (=> bs!1921402 (= lambda!458421 lambda!458404)))

(declare-fun bs!1921403 () Bool)

(assert (= bs!1921403 (and d!2285111 d!2285093)))

(assert (=> bs!1921403 (= lambda!458421 lambda!458420)))

(assert (=> d!2285111 (= (inv!91611 cWitness!61) (forall!18104 (exprs!8748 cWitness!61) lambda!458421))))

(declare-fun bs!1921404 () Bool)

(assert (= bs!1921404 d!2285111))

(declare-fun m!8029388 () Bool)

(assert (=> bs!1921404 m!8029388))

(assert (=> start!719862 d!2285111))

(declare-fun bs!1921405 () Bool)

(declare-fun d!2285113 () Bool)

(assert (= bs!1921405 (and d!2285113 b!7378034)))

(declare-fun lambda!458422 () Int)

(assert (=> bs!1921405 (= lambda!458422 lambda!458404)))

(declare-fun bs!1921406 () Bool)

(assert (= bs!1921406 (and d!2285113 d!2285093)))

(assert (=> bs!1921406 (= lambda!458422 lambda!458420)))

(declare-fun bs!1921407 () Bool)

(assert (= bs!1921407 (and d!2285113 d!2285111)))

(assert (=> bs!1921407 (= lambda!458422 lambda!458421)))

(assert (=> d!2285113 (= (inv!91611 ct1!282) (forall!18104 (exprs!8748 ct1!282) lambda!458422))))

(declare-fun bs!1921408 () Bool)

(assert (= bs!1921408 d!2285113))

(declare-fun m!8029390 () Bool)

(assert (=> bs!1921408 m!8029390))

(assert (=> start!719862 d!2285113))

(declare-fun bs!1921409 () Bool)

(declare-fun d!2285115 () Bool)

(assert (= bs!1921409 (and d!2285115 b!7378034)))

(declare-fun lambda!458423 () Int)

(assert (=> bs!1921409 (= lambda!458423 lambda!458404)))

(declare-fun bs!1921410 () Bool)

(assert (= bs!1921410 (and d!2285115 d!2285093)))

(assert (=> bs!1921410 (= lambda!458423 lambda!458420)))

(declare-fun bs!1921411 () Bool)

(assert (= bs!1921411 (and d!2285115 d!2285111)))

(assert (=> bs!1921411 (= lambda!458423 lambda!458421)))

(declare-fun bs!1921412 () Bool)

(assert (= bs!1921412 (and d!2285115 d!2285113)))

(assert (=> bs!1921412 (= lambda!458423 lambda!458422)))

(assert (=> d!2285115 (= (inv!91611 ct2!378) (forall!18104 (exprs!8748 ct2!378) lambda!458423))))

(declare-fun bs!1921413 () Bool)

(assert (= bs!1921413 d!2285115))

(declare-fun m!8029392 () Bool)

(assert (=> bs!1921413 m!8029392))

(assert (=> start!719862 d!2285115))

(declare-fun bm!678533 () Bool)

(declare-fun call!678543 () List!71804)

(declare-fun call!678541 () List!71804)

(assert (=> bm!678533 (= call!678543 call!678541)))

(declare-fun b!7378193 () Bool)

(declare-fun e!4416660 () (Set Context!16496))

(declare-fun e!4416659 () (Set Context!16496))

(assert (=> b!7378193 (= e!4416660 e!4416659)))

(declare-fun c!1371412 () Bool)

(assert (=> b!7378193 (= c!1371412 (is-Union!19308 r1!2370))))

(declare-fun call!678540 () (Set Context!16496))

(declare-fun bm!678534 () Bool)

(assert (=> bm!678534 (= call!678540 (derivationStepZipperDown!3134 (ite c!1371412 (regOne!39129 r1!2370) (regOne!39128 r1!2370)) (ite c!1371412 (Context!16497 (++!17124 (exprs!8748 ct1!282) (exprs!8748 ct2!378))) (Context!16497 call!678541)) c!10362))))

(declare-fun b!7378194 () Bool)

(declare-fun e!4416658 () (Set Context!16496))

(declare-fun call!678539 () (Set Context!16496))

(assert (=> b!7378194 (= e!4416658 call!678539)))

(declare-fun b!7378195 () Bool)

(assert (=> b!7378195 (= e!4416660 (set.insert (Context!16497 (++!17124 (exprs!8748 ct1!282) (exprs!8748 ct2!378))) (as set.empty (Set Context!16496))))))

(declare-fun c!1371414 () Bool)

(declare-fun c!1371413 () Bool)

(declare-fun bm!678535 () Bool)

(assert (=> bm!678535 (= call!678541 ($colon$colon!3290 (exprs!8748 (Context!16497 (++!17124 (exprs!8748 ct1!282) (exprs!8748 ct2!378)))) (ite (or c!1371414 c!1371413) (regTwo!39128 r1!2370) r1!2370)))))

(declare-fun b!7378196 () Bool)

(declare-fun e!4416657 () (Set Context!16496))

(assert (=> b!7378196 (= e!4416657 e!4416658)))

(assert (=> b!7378196 (= c!1371413 (is-Concat!28153 r1!2370))))

(declare-fun d!2285117 () Bool)

(declare-fun c!1371415 () Bool)

(assert (=> d!2285117 (= c!1371415 (and (is-ElementMatch!19308 r1!2370) (= (c!1371378 r1!2370) c!10362)))))

(assert (=> d!2285117 (= (derivationStepZipperDown!3134 r1!2370 (Context!16497 (++!17124 (exprs!8748 ct1!282) (exprs!8748 ct2!378))) c!10362) e!4416660)))

(declare-fun b!7378197 () Bool)

(declare-fun e!4416662 () (Set Context!16496))

(assert (=> b!7378197 (= e!4416662 call!678539)))

(declare-fun bm!678536 () Bool)

(declare-fun call!678538 () (Set Context!16496))

(declare-fun call!678542 () (Set Context!16496))

(assert (=> bm!678536 (= call!678538 call!678542)))

(declare-fun bm!678537 () Bool)

(assert (=> bm!678537 (= call!678542 (derivationStepZipperDown!3134 (ite c!1371412 (regTwo!39129 r1!2370) (ite c!1371414 (regTwo!39128 r1!2370) (ite c!1371413 (regOne!39128 r1!2370) (reg!19637 r1!2370)))) (ite (or c!1371412 c!1371414) (Context!16497 (++!17124 (exprs!8748 ct1!282) (exprs!8748 ct2!378))) (Context!16497 call!678543)) c!10362))))

(declare-fun b!7378198 () Bool)

(declare-fun e!4416661 () Bool)

(assert (=> b!7378198 (= e!4416661 (nullable!8384 (regOne!39128 r1!2370)))))

(declare-fun b!7378199 () Bool)

(declare-fun c!1371411 () Bool)

(assert (=> b!7378199 (= c!1371411 (is-Star!19308 r1!2370))))

(assert (=> b!7378199 (= e!4416658 e!4416662)))

(declare-fun bm!678538 () Bool)

(assert (=> bm!678538 (= call!678539 call!678538)))

(declare-fun b!7378200 () Bool)

(assert (=> b!7378200 (= e!4416657 (set.union call!678540 call!678538))))

(declare-fun b!7378201 () Bool)

(assert (=> b!7378201 (= e!4416659 (set.union call!678540 call!678542))))

(declare-fun b!7378202 () Bool)

(assert (=> b!7378202 (= e!4416662 (as set.empty (Set Context!16496)))))

(declare-fun b!7378203 () Bool)

(assert (=> b!7378203 (= c!1371414 e!4416661)))

(declare-fun res!2976234 () Bool)

(assert (=> b!7378203 (=> (not res!2976234) (not e!4416661))))

(assert (=> b!7378203 (= res!2976234 (is-Concat!28153 r1!2370))))

(assert (=> b!7378203 (= e!4416659 e!4416657)))

(assert (= (and d!2285117 c!1371415) b!7378195))

(assert (= (and d!2285117 (not c!1371415)) b!7378193))

(assert (= (and b!7378193 c!1371412) b!7378201))

(assert (= (and b!7378193 (not c!1371412)) b!7378203))

(assert (= (and b!7378203 res!2976234) b!7378198))

(assert (= (and b!7378203 c!1371414) b!7378200))

(assert (= (and b!7378203 (not c!1371414)) b!7378196))

(assert (= (and b!7378196 c!1371413) b!7378194))

(assert (= (and b!7378196 (not c!1371413)) b!7378199))

(assert (= (and b!7378199 c!1371411) b!7378197))

(assert (= (and b!7378199 (not c!1371411)) b!7378202))

(assert (= (or b!7378194 b!7378197) bm!678533))

(assert (= (or b!7378194 b!7378197) bm!678538))

(assert (= (or b!7378200 bm!678538) bm!678536))

(assert (= (or b!7378200 bm!678533) bm!678535))

(assert (= (or b!7378201 bm!678536) bm!678537))

(assert (= (or b!7378201 b!7378200) bm!678534))

(declare-fun m!8029400 () Bool)

(assert (=> bm!678534 m!8029400))

(declare-fun m!8029402 () Bool)

(assert (=> bm!678535 m!8029402))

(declare-fun m!8029404 () Bool)

(assert (=> b!7378195 m!8029404))

(assert (=> b!7378198 m!8029264))

(declare-fun m!8029406 () Bool)

(assert (=> bm!678537 m!8029406))

(assert (=> b!7378034 d!2285117))

(declare-fun b!7378212 () Bool)

(declare-fun e!4416667 () List!71804)

(assert (=> b!7378212 (= e!4416667 (exprs!8748 ct2!378))))

(declare-fun d!2285121 () Bool)

(declare-fun e!4416668 () Bool)

(assert (=> d!2285121 e!4416668))

(declare-fun res!2976240 () Bool)

(assert (=> d!2285121 (=> (not res!2976240) (not e!4416668))))

(declare-fun lt!2616607 () List!71804)

(declare-fun content!15177 (List!71804) (Set Regex!19308))

(assert (=> d!2285121 (= res!2976240 (= (content!15177 lt!2616607) (set.union (content!15177 (exprs!8748 ct1!282)) (content!15177 (exprs!8748 ct2!378)))))))

(assert (=> d!2285121 (= lt!2616607 e!4416667)))

(declare-fun c!1371418 () Bool)

(assert (=> d!2285121 (= c!1371418 (is-Nil!71680 (exprs!8748 ct1!282)))))

(assert (=> d!2285121 (= (++!17124 (exprs!8748 ct1!282) (exprs!8748 ct2!378)) lt!2616607)))

(declare-fun b!7378213 () Bool)

(assert (=> b!7378213 (= e!4416667 (Cons!71680 (h!78128 (exprs!8748 ct1!282)) (++!17124 (t!386287 (exprs!8748 ct1!282)) (exprs!8748 ct2!378))))))

(declare-fun b!7378215 () Bool)

(assert (=> b!7378215 (= e!4416668 (or (not (= (exprs!8748 ct2!378) Nil!71680)) (= lt!2616607 (exprs!8748 ct1!282))))))

(declare-fun b!7378214 () Bool)

(declare-fun res!2976239 () Bool)

(assert (=> b!7378214 (=> (not res!2976239) (not e!4416668))))

(declare-fun size!42155 (List!71804) Int)

(assert (=> b!7378214 (= res!2976239 (= (size!42155 lt!2616607) (+ (size!42155 (exprs!8748 ct1!282)) (size!42155 (exprs!8748 ct2!378)))))))

(assert (= (and d!2285121 c!1371418) b!7378212))

(assert (= (and d!2285121 (not c!1371418)) b!7378213))

(assert (= (and d!2285121 res!2976240) b!7378214))

(assert (= (and b!7378214 res!2976239) b!7378215))

(declare-fun m!8029408 () Bool)

(assert (=> d!2285121 m!8029408))

(declare-fun m!8029410 () Bool)

(assert (=> d!2285121 m!8029410))

(declare-fun m!8029412 () Bool)

(assert (=> d!2285121 m!8029412))

(declare-fun m!8029414 () Bool)

(assert (=> b!7378213 m!8029414))

(declare-fun m!8029416 () Bool)

(assert (=> b!7378214 m!8029416))

(declare-fun m!8029418 () Bool)

(assert (=> b!7378214 m!8029418))

(declare-fun m!8029420 () Bool)

(assert (=> b!7378214 m!8029420))

(assert (=> b!7378034 d!2285121))

(assert (=> b!7378034 d!2285095))

(declare-fun bm!678539 () Bool)

(declare-fun call!678549 () List!71804)

(declare-fun call!678547 () List!71804)

(assert (=> bm!678539 (= call!678549 call!678547)))

(declare-fun b!7378216 () Bool)

(declare-fun e!4416672 () (Set Context!16496))

(declare-fun e!4416671 () (Set Context!16496))

(assert (=> b!7378216 (= e!4416672 e!4416671)))

(declare-fun c!1371420 () Bool)

(assert (=> b!7378216 (= c!1371420 (is-Union!19308 (regOne!39128 r1!2370)))))

(declare-fun call!678546 () (Set Context!16496))

(declare-fun bm!678540 () Bool)

(assert (=> bm!678540 (= call!678546 (derivationStepZipperDown!3134 (ite c!1371420 (regOne!39129 (regOne!39128 r1!2370)) (regOne!39128 (regOne!39128 r1!2370))) (ite c!1371420 lt!2616547 (Context!16497 call!678547)) c!10362))))

(declare-fun b!7378217 () Bool)

(declare-fun e!4416670 () (Set Context!16496))

(declare-fun call!678545 () (Set Context!16496))

(assert (=> b!7378217 (= e!4416670 call!678545)))

(declare-fun b!7378218 () Bool)

(assert (=> b!7378218 (= e!4416672 (set.insert lt!2616547 (as set.empty (Set Context!16496))))))

(declare-fun bm!678541 () Bool)

(declare-fun c!1371422 () Bool)

(declare-fun c!1371421 () Bool)

(assert (=> bm!678541 (= call!678547 ($colon$colon!3290 (exprs!8748 lt!2616547) (ite (or c!1371422 c!1371421) (regTwo!39128 (regOne!39128 r1!2370)) (regOne!39128 r1!2370))))))

(declare-fun b!7378219 () Bool)

(declare-fun e!4416669 () (Set Context!16496))

(assert (=> b!7378219 (= e!4416669 e!4416670)))

(assert (=> b!7378219 (= c!1371421 (is-Concat!28153 (regOne!39128 r1!2370)))))

(declare-fun d!2285123 () Bool)

(declare-fun c!1371423 () Bool)

(assert (=> d!2285123 (= c!1371423 (and (is-ElementMatch!19308 (regOne!39128 r1!2370)) (= (c!1371378 (regOne!39128 r1!2370)) c!10362)))))

(assert (=> d!2285123 (= (derivationStepZipperDown!3134 (regOne!39128 r1!2370) lt!2616547 c!10362) e!4416672)))

(declare-fun b!7378220 () Bool)

(declare-fun e!4416674 () (Set Context!16496))

(assert (=> b!7378220 (= e!4416674 call!678545)))

(declare-fun bm!678542 () Bool)

(declare-fun call!678544 () (Set Context!16496))

(declare-fun call!678548 () (Set Context!16496))

(assert (=> bm!678542 (= call!678544 call!678548)))

(declare-fun bm!678543 () Bool)

(assert (=> bm!678543 (= call!678548 (derivationStepZipperDown!3134 (ite c!1371420 (regTwo!39129 (regOne!39128 r1!2370)) (ite c!1371422 (regTwo!39128 (regOne!39128 r1!2370)) (ite c!1371421 (regOne!39128 (regOne!39128 r1!2370)) (reg!19637 (regOne!39128 r1!2370))))) (ite (or c!1371420 c!1371422) lt!2616547 (Context!16497 call!678549)) c!10362))))

(declare-fun b!7378221 () Bool)

(declare-fun e!4416673 () Bool)

(assert (=> b!7378221 (= e!4416673 (nullable!8384 (regOne!39128 (regOne!39128 r1!2370))))))

(declare-fun b!7378222 () Bool)

(declare-fun c!1371419 () Bool)

(assert (=> b!7378222 (= c!1371419 (is-Star!19308 (regOne!39128 r1!2370)))))

(assert (=> b!7378222 (= e!4416670 e!4416674)))

(declare-fun bm!678544 () Bool)

(assert (=> bm!678544 (= call!678545 call!678544)))

(declare-fun b!7378223 () Bool)

(assert (=> b!7378223 (= e!4416669 (set.union call!678546 call!678544))))

(declare-fun b!7378224 () Bool)

(assert (=> b!7378224 (= e!4416671 (set.union call!678546 call!678548))))

(declare-fun b!7378225 () Bool)

(assert (=> b!7378225 (= e!4416674 (as set.empty (Set Context!16496)))))

(declare-fun b!7378226 () Bool)

(assert (=> b!7378226 (= c!1371422 e!4416673)))

(declare-fun res!2976241 () Bool)

(assert (=> b!7378226 (=> (not res!2976241) (not e!4416673))))

(assert (=> b!7378226 (= res!2976241 (is-Concat!28153 (regOne!39128 r1!2370)))))

(assert (=> b!7378226 (= e!4416671 e!4416669)))

(assert (= (and d!2285123 c!1371423) b!7378218))

(assert (= (and d!2285123 (not c!1371423)) b!7378216))

(assert (= (and b!7378216 c!1371420) b!7378224))

(assert (= (and b!7378216 (not c!1371420)) b!7378226))

(assert (= (and b!7378226 res!2976241) b!7378221))

(assert (= (and b!7378226 c!1371422) b!7378223))

(assert (= (and b!7378226 (not c!1371422)) b!7378219))

(assert (= (and b!7378219 c!1371421) b!7378217))

(assert (= (and b!7378219 (not c!1371421)) b!7378222))

(assert (= (and b!7378222 c!1371419) b!7378220))

(assert (= (and b!7378222 (not c!1371419)) b!7378225))

(assert (= (or b!7378217 b!7378220) bm!678539))

(assert (= (or b!7378217 b!7378220) bm!678544))

(assert (= (or b!7378223 bm!678544) bm!678542))

(assert (= (or b!7378223 bm!678539) bm!678541))

(assert (= (or b!7378224 bm!678542) bm!678543))

(assert (= (or b!7378224 b!7378223) bm!678540))

(declare-fun m!8029422 () Bool)

(assert (=> bm!678540 m!8029422))

(declare-fun m!8029424 () Bool)

(assert (=> bm!678541 m!8029424))

(declare-fun m!8029426 () Bool)

(assert (=> b!7378218 m!8029426))

(declare-fun m!8029428 () Bool)

(assert (=> b!7378221 m!8029428))

(declare-fun m!8029430 () Bool)

(assert (=> bm!678543 m!8029430))

(assert (=> b!7378039 d!2285123))

(declare-fun d!2285125 () Bool)

(assert (=> d!2285125 (= ($colon$colon!3290 (exprs!8748 ct1!282) (regTwo!39128 r1!2370)) (Cons!71680 (regTwo!39128 r1!2370) (exprs!8748 ct1!282)))))

(assert (=> b!7378039 d!2285125))

(declare-fun bm!678546 () Bool)

(declare-fun call!678550 () Bool)

(declare-fun c!1371424 () Bool)

(assert (=> bm!678546 (= call!678550 (validRegex!9904 (ite c!1371424 (regOne!39129 (regTwo!39128 r1!2370)) (regTwo!39128 (regTwo!39128 r1!2370)))))))

(declare-fun b!7378227 () Bool)

(declare-fun res!2976242 () Bool)

(declare-fun e!4416675 () Bool)

(assert (=> b!7378227 (=> res!2976242 e!4416675)))

(assert (=> b!7378227 (= res!2976242 (not (is-Concat!28153 (regTwo!39128 r1!2370))))))

(declare-fun e!4416679 () Bool)

(assert (=> b!7378227 (= e!4416679 e!4416675)))

(declare-fun b!7378228 () Bool)

(declare-fun e!4416680 () Bool)

(declare-fun e!4416678 () Bool)

(assert (=> b!7378228 (= e!4416680 e!4416678)))

(declare-fun res!2976243 () Bool)

(assert (=> b!7378228 (= res!2976243 (not (nullable!8384 (reg!19637 (regTwo!39128 r1!2370)))))))

(assert (=> b!7378228 (=> (not res!2976243) (not e!4416678))))

(declare-fun b!7378229 () Bool)

(declare-fun e!4416676 () Bool)

(assert (=> b!7378229 (= e!4416676 call!678550)))

(declare-fun call!678551 () Bool)

(declare-fun c!1371425 () Bool)

(declare-fun bm!678547 () Bool)

(assert (=> bm!678547 (= call!678551 (validRegex!9904 (ite c!1371425 (reg!19637 (regTwo!39128 r1!2370)) (ite c!1371424 (regTwo!39129 (regTwo!39128 r1!2370)) (regOne!39128 (regTwo!39128 r1!2370))))))))

(declare-fun b!7378230 () Bool)

(assert (=> b!7378230 (= e!4416675 e!4416676)))

(declare-fun res!2976245 () Bool)

(assert (=> b!7378230 (=> (not res!2976245) (not e!4416676))))

(declare-fun call!678552 () Bool)

(assert (=> b!7378230 (= res!2976245 call!678552)))

(declare-fun b!7378231 () Bool)

(declare-fun e!4416681 () Bool)

(assert (=> b!7378231 (= e!4416681 call!678552)))

(declare-fun bm!678545 () Bool)

(assert (=> bm!678545 (= call!678552 call!678551)))

(declare-fun d!2285127 () Bool)

(declare-fun res!2976246 () Bool)

(declare-fun e!4416677 () Bool)

(assert (=> d!2285127 (=> res!2976246 e!4416677)))

(assert (=> d!2285127 (= res!2976246 (is-ElementMatch!19308 (regTwo!39128 r1!2370)))))

(assert (=> d!2285127 (= (validRegex!9904 (regTwo!39128 r1!2370)) e!4416677)))

(declare-fun b!7378232 () Bool)

(assert (=> b!7378232 (= e!4416678 call!678551)))

(declare-fun b!7378233 () Bool)

(declare-fun res!2976244 () Bool)

(assert (=> b!7378233 (=> (not res!2976244) (not e!4416681))))

(assert (=> b!7378233 (= res!2976244 call!678550)))

(assert (=> b!7378233 (= e!4416679 e!4416681)))

(declare-fun b!7378234 () Bool)

(assert (=> b!7378234 (= e!4416677 e!4416680)))

(assert (=> b!7378234 (= c!1371425 (is-Star!19308 (regTwo!39128 r1!2370)))))

(declare-fun b!7378235 () Bool)

(assert (=> b!7378235 (= e!4416680 e!4416679)))

(assert (=> b!7378235 (= c!1371424 (is-Union!19308 (regTwo!39128 r1!2370)))))

(assert (= (and d!2285127 (not res!2976246)) b!7378234))

(assert (= (and b!7378234 c!1371425) b!7378228))

(assert (= (and b!7378234 (not c!1371425)) b!7378235))

(assert (= (and b!7378228 res!2976243) b!7378232))

(assert (= (and b!7378235 c!1371424) b!7378233))

(assert (= (and b!7378235 (not c!1371424)) b!7378227))

(assert (= (and b!7378233 res!2976244) b!7378231))

(assert (= (and b!7378227 (not res!2976242)) b!7378230))

(assert (= (and b!7378230 res!2976245) b!7378229))

(assert (= (or b!7378233 b!7378229) bm!678546))

(assert (= (or b!7378231 b!7378230) bm!678545))

(assert (= (or b!7378232 bm!678545) bm!678547))

(declare-fun m!8029432 () Bool)

(assert (=> bm!678546 m!8029432))

(declare-fun m!8029434 () Bool)

(assert (=> b!7378228 m!8029434))

(declare-fun m!8029436 () Bool)

(assert (=> bm!678547 m!8029436))

(assert (=> b!7378033 d!2285127))

(declare-fun b!7378236 () Bool)

(declare-fun e!4416682 () List!71804)

(assert (=> b!7378236 (= e!4416682 (exprs!8748 ct2!378))))

(declare-fun d!2285129 () Bool)

(declare-fun e!4416683 () Bool)

(assert (=> d!2285129 e!4416683))

(declare-fun res!2976248 () Bool)

(assert (=> d!2285129 (=> (not res!2976248) (not e!4416683))))

(declare-fun lt!2616608 () List!71804)

(assert (=> d!2285129 (= res!2976248 (= (content!15177 lt!2616608) (set.union (content!15177 (exprs!8748 cWitness!61)) (content!15177 (exprs!8748 ct2!378)))))))

(assert (=> d!2285129 (= lt!2616608 e!4416682)))

(declare-fun c!1371426 () Bool)

(assert (=> d!2285129 (= c!1371426 (is-Nil!71680 (exprs!8748 cWitness!61)))))

(assert (=> d!2285129 (= (++!17124 (exprs!8748 cWitness!61) (exprs!8748 ct2!378)) lt!2616608)))

(declare-fun b!7378237 () Bool)

(assert (=> b!7378237 (= e!4416682 (Cons!71680 (h!78128 (exprs!8748 cWitness!61)) (++!17124 (t!386287 (exprs!8748 cWitness!61)) (exprs!8748 ct2!378))))))

(declare-fun b!7378239 () Bool)

(assert (=> b!7378239 (= e!4416683 (or (not (= (exprs!8748 ct2!378) Nil!71680)) (= lt!2616608 (exprs!8748 cWitness!61))))))

(declare-fun b!7378238 () Bool)

(declare-fun res!2976247 () Bool)

(assert (=> b!7378238 (=> (not res!2976247) (not e!4416683))))

(assert (=> b!7378238 (= res!2976247 (= (size!42155 lt!2616608) (+ (size!42155 (exprs!8748 cWitness!61)) (size!42155 (exprs!8748 ct2!378)))))))

(assert (= (and d!2285129 c!1371426) b!7378236))

(assert (= (and d!2285129 (not c!1371426)) b!7378237))

(assert (= (and d!2285129 res!2976248) b!7378238))

(assert (= (and b!7378238 res!2976247) b!7378239))

(declare-fun m!8029438 () Bool)

(assert (=> d!2285129 m!8029438))

(declare-fun m!8029440 () Bool)

(assert (=> d!2285129 m!8029440))

(assert (=> d!2285129 m!8029412))

(declare-fun m!8029442 () Bool)

(assert (=> b!7378237 m!8029442))

(declare-fun m!8029444 () Bool)

(assert (=> b!7378238 m!8029444))

(declare-fun m!8029446 () Bool)

(assert (=> b!7378238 m!8029446))

(assert (=> b!7378238 m!8029420))

(assert (=> b!7378027 d!2285129))

(declare-fun b!7378240 () Bool)

(declare-fun e!4416684 () List!71804)

(assert (=> b!7378240 (= e!4416684 (exprs!8748 ct2!378))))

(declare-fun d!2285131 () Bool)

(declare-fun e!4416685 () Bool)

(assert (=> d!2285131 e!4416685))

(declare-fun res!2976250 () Bool)

(assert (=> d!2285131 (=> (not res!2976250) (not e!4416685))))

(declare-fun lt!2616609 () List!71804)

(assert (=> d!2285131 (= res!2976250 (= (content!15177 lt!2616609) (set.union (content!15177 lt!2616557) (content!15177 (exprs!8748 ct2!378)))))))

(assert (=> d!2285131 (= lt!2616609 e!4416684)))

(declare-fun c!1371427 () Bool)

(assert (=> d!2285131 (= c!1371427 (is-Nil!71680 lt!2616557))))

(assert (=> d!2285131 (= (++!17124 lt!2616557 (exprs!8748 ct2!378)) lt!2616609)))

(declare-fun b!7378241 () Bool)

(assert (=> b!7378241 (= e!4416684 (Cons!71680 (h!78128 lt!2616557) (++!17124 (t!386287 lt!2616557) (exprs!8748 ct2!378))))))

(declare-fun b!7378243 () Bool)

(assert (=> b!7378243 (= e!4416685 (or (not (= (exprs!8748 ct2!378) Nil!71680)) (= lt!2616609 lt!2616557)))))

(declare-fun b!7378242 () Bool)

(declare-fun res!2976249 () Bool)

(assert (=> b!7378242 (=> (not res!2976249) (not e!4416685))))

(assert (=> b!7378242 (= res!2976249 (= (size!42155 lt!2616609) (+ (size!42155 lt!2616557) (size!42155 (exprs!8748 ct2!378)))))))

(assert (= (and d!2285131 c!1371427) b!7378240))

(assert (= (and d!2285131 (not c!1371427)) b!7378241))

(assert (= (and d!2285131 res!2976250) b!7378242))

(assert (= (and b!7378242 res!2976249) b!7378243))

(declare-fun m!8029448 () Bool)

(assert (=> d!2285131 m!8029448))

(declare-fun m!8029450 () Bool)

(assert (=> d!2285131 m!8029450))

(assert (=> d!2285131 m!8029412))

(declare-fun m!8029452 () Bool)

(assert (=> b!7378241 m!8029452))

(declare-fun m!8029454 () Bool)

(assert (=> b!7378242 m!8029454))

(declare-fun m!8029456 () Bool)

(assert (=> b!7378242 m!8029456))

(assert (=> b!7378242 m!8029420))

(assert (=> b!7378027 d!2285131))

(declare-fun d!2285133 () Bool)

(assert (=> d!2285133 (forall!18104 (++!17124 lt!2616557 (exprs!8748 ct2!378)) lambda!458404)))

(declare-fun lt!2616614 () Unit!165565)

(assert (=> d!2285133 (= lt!2616614 (choose!57335 lt!2616557 (exprs!8748 ct2!378) lambda!458404))))

(assert (=> d!2285133 (forall!18104 lt!2616557 lambda!458404)))

(assert (=> d!2285133 (= (lemmaConcatPreservesForall!1981 lt!2616557 (exprs!8748 ct2!378) lambda!458404) lt!2616614)))

(declare-fun bs!1921415 () Bool)

(assert (= bs!1921415 d!2285133))

(assert (=> bs!1921415 m!8029250))

(assert (=> bs!1921415 m!8029250))

(declare-fun m!8029458 () Bool)

(assert (=> bs!1921415 m!8029458))

(declare-fun m!8029460 () Bool)

(assert (=> bs!1921415 m!8029460))

(declare-fun m!8029462 () Bool)

(assert (=> bs!1921415 m!8029462))

(assert (=> b!7378027 d!2285133))

(declare-fun bm!678548 () Bool)

(declare-fun call!678558 () List!71804)

(declare-fun call!678556 () List!71804)

(assert (=> bm!678548 (= call!678558 call!678556)))

(declare-fun b!7378244 () Bool)

(declare-fun e!4416689 () (Set Context!16496))

(declare-fun e!4416688 () (Set Context!16496))

(assert (=> b!7378244 (= e!4416689 e!4416688)))

(declare-fun c!1371430 () Bool)

(assert (=> b!7378244 (= c!1371430 (is-Union!19308 (regOne!39128 r1!2370)))))

(declare-fun bm!678549 () Bool)

(declare-fun call!678555 () (Set Context!16496))

(assert (=> bm!678549 (= call!678555 (derivationStepZipperDown!3134 (ite c!1371430 (regOne!39129 (regOne!39128 r1!2370)) (regOne!39128 (regOne!39128 r1!2370))) (ite c!1371430 (Context!16497 (++!17124 lt!2616557 (exprs!8748 ct2!378))) (Context!16497 call!678556)) c!10362))))

(declare-fun b!7378245 () Bool)

(declare-fun e!4416687 () (Set Context!16496))

(declare-fun call!678554 () (Set Context!16496))

(assert (=> b!7378245 (= e!4416687 call!678554)))

(declare-fun b!7378246 () Bool)

(assert (=> b!7378246 (= e!4416689 (set.insert (Context!16497 (++!17124 lt!2616557 (exprs!8748 ct2!378))) (as set.empty (Set Context!16496))))))

(declare-fun bm!678550 () Bool)

(declare-fun c!1371431 () Bool)

(declare-fun c!1371432 () Bool)

(assert (=> bm!678550 (= call!678556 ($colon$colon!3290 (exprs!8748 (Context!16497 (++!17124 lt!2616557 (exprs!8748 ct2!378)))) (ite (or c!1371432 c!1371431) (regTwo!39128 (regOne!39128 r1!2370)) (regOne!39128 r1!2370))))))

(declare-fun b!7378247 () Bool)

(declare-fun e!4416686 () (Set Context!16496))

(assert (=> b!7378247 (= e!4416686 e!4416687)))

(assert (=> b!7378247 (= c!1371431 (is-Concat!28153 (regOne!39128 r1!2370)))))

(declare-fun d!2285135 () Bool)

(declare-fun c!1371433 () Bool)

(assert (=> d!2285135 (= c!1371433 (and (is-ElementMatch!19308 (regOne!39128 r1!2370)) (= (c!1371378 (regOne!39128 r1!2370)) c!10362)))))

(assert (=> d!2285135 (= (derivationStepZipperDown!3134 (regOne!39128 r1!2370) (Context!16497 (++!17124 lt!2616557 (exprs!8748 ct2!378))) c!10362) e!4416689)))

(declare-fun b!7378248 () Bool)

(declare-fun e!4416691 () (Set Context!16496))

(assert (=> b!7378248 (= e!4416691 call!678554)))

(declare-fun bm!678551 () Bool)

(declare-fun call!678553 () (Set Context!16496))

(declare-fun call!678557 () (Set Context!16496))

(assert (=> bm!678551 (= call!678553 call!678557)))

(declare-fun bm!678552 () Bool)

(assert (=> bm!678552 (= call!678557 (derivationStepZipperDown!3134 (ite c!1371430 (regTwo!39129 (regOne!39128 r1!2370)) (ite c!1371432 (regTwo!39128 (regOne!39128 r1!2370)) (ite c!1371431 (regOne!39128 (regOne!39128 r1!2370)) (reg!19637 (regOne!39128 r1!2370))))) (ite (or c!1371430 c!1371432) (Context!16497 (++!17124 lt!2616557 (exprs!8748 ct2!378))) (Context!16497 call!678558)) c!10362))))

(declare-fun b!7378249 () Bool)

(declare-fun e!4416690 () Bool)

(assert (=> b!7378249 (= e!4416690 (nullable!8384 (regOne!39128 (regOne!39128 r1!2370))))))

(declare-fun b!7378250 () Bool)

(declare-fun c!1371429 () Bool)

(assert (=> b!7378250 (= c!1371429 (is-Star!19308 (regOne!39128 r1!2370)))))

(assert (=> b!7378250 (= e!4416687 e!4416691)))

(declare-fun bm!678553 () Bool)

(assert (=> bm!678553 (= call!678554 call!678553)))

(declare-fun b!7378251 () Bool)

(assert (=> b!7378251 (= e!4416686 (set.union call!678555 call!678553))))

(declare-fun b!7378252 () Bool)

(assert (=> b!7378252 (= e!4416688 (set.union call!678555 call!678557))))

(declare-fun b!7378253 () Bool)

(assert (=> b!7378253 (= e!4416691 (as set.empty (Set Context!16496)))))

(declare-fun b!7378254 () Bool)

(assert (=> b!7378254 (= c!1371432 e!4416690)))

(declare-fun res!2976251 () Bool)

(assert (=> b!7378254 (=> (not res!2976251) (not e!4416690))))

(assert (=> b!7378254 (= res!2976251 (is-Concat!28153 (regOne!39128 r1!2370)))))

(assert (=> b!7378254 (= e!4416688 e!4416686)))

(assert (= (and d!2285135 c!1371433) b!7378246))

(assert (= (and d!2285135 (not c!1371433)) b!7378244))

(assert (= (and b!7378244 c!1371430) b!7378252))

(assert (= (and b!7378244 (not c!1371430)) b!7378254))

(assert (= (and b!7378254 res!2976251) b!7378249))

(assert (= (and b!7378254 c!1371432) b!7378251))

(assert (= (and b!7378254 (not c!1371432)) b!7378247))

(assert (= (and b!7378247 c!1371431) b!7378245))

(assert (= (and b!7378247 (not c!1371431)) b!7378250))

(assert (= (and b!7378250 c!1371429) b!7378248))

(assert (= (and b!7378250 (not c!1371429)) b!7378253))

(assert (= (or b!7378245 b!7378248) bm!678548))

(assert (= (or b!7378245 b!7378248) bm!678553))

(assert (= (or b!7378251 bm!678553) bm!678551))

(assert (= (or b!7378251 bm!678548) bm!678550))

(assert (= (or b!7378252 bm!678551) bm!678552))

(assert (= (or b!7378252 b!7378251) bm!678549))

(declare-fun m!8029464 () Bool)

(assert (=> bm!678549 m!8029464))

(declare-fun m!8029466 () Bool)

(assert (=> bm!678550 m!8029466))

(declare-fun m!8029468 () Bool)

(assert (=> b!7378246 m!8029468))

(assert (=> b!7378249 m!8029428))

(declare-fun m!8029470 () Bool)

(assert (=> bm!678552 m!8029470))

(assert (=> b!7378027 d!2285135))

(declare-fun bs!1921418 () Bool)

(declare-fun d!2285137 () Bool)

(assert (= bs!1921418 (and d!2285137 b!7378034)))

(declare-fun lambda!458433 () Int)

(assert (=> bs!1921418 (= lambda!458433 lambda!458404)))

(declare-fun bs!1921419 () Bool)

(assert (= bs!1921419 (and d!2285137 d!2285093)))

(assert (=> bs!1921419 (= lambda!458433 lambda!458420)))

(declare-fun bs!1921420 () Bool)

(assert (= bs!1921420 (and d!2285137 d!2285111)))

(assert (=> bs!1921420 (= lambda!458433 lambda!458421)))

(declare-fun bs!1921421 () Bool)

(assert (= bs!1921421 (and d!2285137 d!2285113)))

(assert (=> bs!1921421 (= lambda!458433 lambda!458422)))

(declare-fun bs!1921422 () Bool)

(assert (= bs!1921422 (and d!2285137 d!2285115)))

(assert (=> bs!1921422 (= lambda!458433 lambda!458423)))

(assert (=> d!2285137 (set.member (Context!16497 (++!17124 (exprs!8748 cWitness!61) (exprs!8748 ct2!378))) (derivationStepZipperDown!3134 (regOne!39128 r1!2370) (Context!16497 (++!17124 (exprs!8748 lt!2616547) (exprs!8748 ct2!378))) c!10362))))

(declare-fun lt!2616628 () Unit!165565)

(assert (=> d!2285137 (= lt!2616628 (lemmaConcatPreservesForall!1981 (exprs!8748 lt!2616547) (exprs!8748 ct2!378) lambda!458433))))

(declare-fun lt!2616627 () Unit!165565)

(assert (=> d!2285137 (= lt!2616627 (lemmaConcatPreservesForall!1981 (exprs!8748 cWitness!61) (exprs!8748 ct2!378) lambda!458433))))

(declare-fun lt!2616626 () Unit!165565)

(declare-fun choose!57338 (Regex!19308 Context!16496 Context!16496 Context!16496 C!38890) Unit!165565)

(assert (=> d!2285137 (= lt!2616626 (choose!57338 (regOne!39128 r1!2370) lt!2616547 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2285137 (validRegex!9904 (regOne!39128 r1!2370))))

(assert (=> d!2285137 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!149 (regOne!39128 r1!2370) lt!2616547 ct2!378 cWitness!61 c!10362) lt!2616626)))

(declare-fun bs!1921423 () Bool)

(assert (= bs!1921423 d!2285137))

(declare-fun m!8029486 () Bool)

(assert (=> bs!1921423 m!8029486))

(assert (=> bs!1921423 m!8029246))

(declare-fun m!8029488 () Bool)

(assert (=> bs!1921423 m!8029488))

(declare-fun m!8029490 () Bool)

(assert (=> bs!1921423 m!8029490))

(declare-fun m!8029492 () Bool)

(assert (=> bs!1921423 m!8029492))

(declare-fun m!8029494 () Bool)

(assert (=> bs!1921423 m!8029494))

(declare-fun m!8029496 () Bool)

(assert (=> bs!1921423 m!8029496))

(declare-fun m!8029498 () Bool)

(assert (=> bs!1921423 m!8029498))

(assert (=> b!7378027 d!2285137))

(assert (=> b!7378027 d!2285097))

(declare-fun b!7378265 () Bool)

(declare-fun e!4416694 () Bool)

(assert (=> b!7378265 (= e!4416694 tp_is_empty!48861)))

(declare-fun b!7378267 () Bool)

(declare-fun tp!2098180 () Bool)

(assert (=> b!7378267 (= e!4416694 tp!2098180)))

(assert (=> b!7378030 (= tp!2098136 e!4416694)))

(declare-fun b!7378268 () Bool)

(declare-fun tp!2098176 () Bool)

(declare-fun tp!2098179 () Bool)

(assert (=> b!7378268 (= e!4416694 (and tp!2098176 tp!2098179))))

(declare-fun b!7378266 () Bool)

(declare-fun tp!2098178 () Bool)

(declare-fun tp!2098177 () Bool)

(assert (=> b!7378266 (= e!4416694 (and tp!2098178 tp!2098177))))

(assert (= (and b!7378030 (is-ElementMatch!19308 (regOne!39128 r1!2370))) b!7378265))

(assert (= (and b!7378030 (is-Concat!28153 (regOne!39128 r1!2370))) b!7378266))

(assert (= (and b!7378030 (is-Star!19308 (regOne!39128 r1!2370))) b!7378267))

(assert (= (and b!7378030 (is-Union!19308 (regOne!39128 r1!2370))) b!7378268))

(declare-fun b!7378269 () Bool)

(declare-fun e!4416695 () Bool)

(assert (=> b!7378269 (= e!4416695 tp_is_empty!48861)))

(declare-fun b!7378271 () Bool)

(declare-fun tp!2098185 () Bool)

(assert (=> b!7378271 (= e!4416695 tp!2098185)))

(assert (=> b!7378030 (= tp!2098134 e!4416695)))

(declare-fun b!7378272 () Bool)

(declare-fun tp!2098181 () Bool)

(declare-fun tp!2098184 () Bool)

(assert (=> b!7378272 (= e!4416695 (and tp!2098181 tp!2098184))))

(declare-fun b!7378270 () Bool)

(declare-fun tp!2098183 () Bool)

(declare-fun tp!2098182 () Bool)

(assert (=> b!7378270 (= e!4416695 (and tp!2098183 tp!2098182))))

(assert (= (and b!7378030 (is-ElementMatch!19308 (regTwo!39128 r1!2370))) b!7378269))

(assert (= (and b!7378030 (is-Concat!28153 (regTwo!39128 r1!2370))) b!7378270))

(assert (= (and b!7378030 (is-Star!19308 (regTwo!39128 r1!2370))) b!7378271))

(assert (= (and b!7378030 (is-Union!19308 (regTwo!39128 r1!2370))) b!7378272))

(declare-fun b!7378273 () Bool)

(declare-fun e!4416696 () Bool)

(assert (=> b!7378273 (= e!4416696 tp_is_empty!48861)))

(declare-fun b!7378275 () Bool)

(declare-fun tp!2098190 () Bool)

(assert (=> b!7378275 (= e!4416696 tp!2098190)))

(assert (=> b!7378035 (= tp!2098138 e!4416696)))

(declare-fun b!7378276 () Bool)

(declare-fun tp!2098186 () Bool)

(declare-fun tp!2098189 () Bool)

(assert (=> b!7378276 (= e!4416696 (and tp!2098186 tp!2098189))))

(declare-fun b!7378274 () Bool)

(declare-fun tp!2098188 () Bool)

(declare-fun tp!2098187 () Bool)

(assert (=> b!7378274 (= e!4416696 (and tp!2098188 tp!2098187))))

(assert (= (and b!7378035 (is-ElementMatch!19308 (reg!19637 r1!2370))) b!7378273))

(assert (= (and b!7378035 (is-Concat!28153 (reg!19637 r1!2370))) b!7378274))

(assert (= (and b!7378035 (is-Star!19308 (reg!19637 r1!2370))) b!7378275))

(assert (= (and b!7378035 (is-Union!19308 (reg!19637 r1!2370))) b!7378276))

(declare-fun b!7378281 () Bool)

(declare-fun e!4416699 () Bool)

(declare-fun tp!2098195 () Bool)

(declare-fun tp!2098196 () Bool)

(assert (=> b!7378281 (= e!4416699 (and tp!2098195 tp!2098196))))

(assert (=> b!7378040 (= tp!2098140 e!4416699)))

(assert (= (and b!7378040 (is-Cons!71680 (exprs!8748 cWitness!61))) b!7378281))

(declare-fun b!7378282 () Bool)

(declare-fun e!4416700 () Bool)

(declare-fun tp!2098197 () Bool)

(declare-fun tp!2098198 () Bool)

(assert (=> b!7378282 (= e!4416700 (and tp!2098197 tp!2098198))))

(assert (=> b!7378029 (= tp!2098135 e!4416700)))

(assert (= (and b!7378029 (is-Cons!71680 (exprs!8748 ct2!378))) b!7378282))

(declare-fun b!7378283 () Bool)

(declare-fun e!4416701 () Bool)

(assert (=> b!7378283 (= e!4416701 tp_is_empty!48861)))

(declare-fun b!7378285 () Bool)

(declare-fun tp!2098203 () Bool)

(assert (=> b!7378285 (= e!4416701 tp!2098203)))

(assert (=> b!7378038 (= tp!2098141 e!4416701)))

(declare-fun b!7378286 () Bool)

(declare-fun tp!2098199 () Bool)

(declare-fun tp!2098202 () Bool)

(assert (=> b!7378286 (= e!4416701 (and tp!2098199 tp!2098202))))

(declare-fun b!7378284 () Bool)

(declare-fun tp!2098201 () Bool)

(declare-fun tp!2098200 () Bool)

(assert (=> b!7378284 (= e!4416701 (and tp!2098201 tp!2098200))))

(assert (= (and b!7378038 (is-ElementMatch!19308 (regOne!39129 r1!2370))) b!7378283))

(assert (= (and b!7378038 (is-Concat!28153 (regOne!39129 r1!2370))) b!7378284))

(assert (= (and b!7378038 (is-Star!19308 (regOne!39129 r1!2370))) b!7378285))

(assert (= (and b!7378038 (is-Union!19308 (regOne!39129 r1!2370))) b!7378286))

(declare-fun b!7378287 () Bool)

(declare-fun e!4416702 () Bool)

(assert (=> b!7378287 (= e!4416702 tp_is_empty!48861)))

(declare-fun b!7378289 () Bool)

(declare-fun tp!2098208 () Bool)

(assert (=> b!7378289 (= e!4416702 tp!2098208)))

(assert (=> b!7378038 (= tp!2098137 e!4416702)))

(declare-fun b!7378290 () Bool)

(declare-fun tp!2098204 () Bool)

(declare-fun tp!2098207 () Bool)

(assert (=> b!7378290 (= e!4416702 (and tp!2098204 tp!2098207))))

(declare-fun b!7378288 () Bool)

(declare-fun tp!2098206 () Bool)

(declare-fun tp!2098205 () Bool)

(assert (=> b!7378288 (= e!4416702 (and tp!2098206 tp!2098205))))

(assert (= (and b!7378038 (is-ElementMatch!19308 (regTwo!39129 r1!2370))) b!7378287))

(assert (= (and b!7378038 (is-Concat!28153 (regTwo!39129 r1!2370))) b!7378288))

(assert (= (and b!7378038 (is-Star!19308 (regTwo!39129 r1!2370))) b!7378289))

(assert (= (and b!7378038 (is-Union!19308 (regTwo!39129 r1!2370))) b!7378290))

(declare-fun b!7378291 () Bool)

(declare-fun e!4416703 () Bool)

(declare-fun tp!2098209 () Bool)

(declare-fun tp!2098210 () Bool)

(assert (=> b!7378291 (= e!4416703 (and tp!2098209 tp!2098210))))

(assert (=> b!7378037 (= tp!2098139 e!4416703)))

(assert (= (and b!7378037 (is-Cons!71680 (exprs!8748 ct1!282))) b!7378291))

(push 1)

(assert (not b!7378242))

(assert (not bm!678543))

(assert (not b!7378213))

(assert (not b!7378267))

(assert (not b!7378238))

(assert (not b!7378271))

(assert (not d!2285097))

(assert (not d!2285131))

(assert (not d!2285095))

(assert (not b!7378268))

(assert (not b!7378241))

(assert (not b!7378249))

(assert (not d!2285133))

(assert (not d!2285091))

(assert (not b!7378185))

(assert (not b!7378285))

(assert (not b!7378266))

(assert (not bm!678552))

(assert (not b!7378281))

(assert (not b!7378275))

(assert (not d!2285121))

(assert (not b!7378274))

(assert (not b!7378214))

(assert (not d!2285115))

(assert (not bm!678547))

(assert (not b!7378282))

(assert (not bm!678522))

(assert (not b!7378228))

(assert (not bm!678534))

(assert (not d!2285093))

(assert (not bm!678549))

(assert tp_is_empty!48861)

(assert (not d!2285111))

(assert (not bm!678537))

(assert (not b!7378237))

(assert (not bm!678541))

(assert (not d!2285129))

(assert (not b!7378289))

(assert (not b!7378291))

(assert (not bm!678546))

(assert (not bm!678531))

(assert (not b!7378152))

(assert (not bm!678532))

(assert (not bm!678535))

(assert (not b!7378270))

(assert (not b!7378221))

(assert (not b!7378198))

(assert (not bm!678519))

(assert (not b!7378284))

(assert (not b!7378288))

(assert (not d!2285137))

(assert (not bm!678550))

(assert (not b!7378272))

(assert (not b!7378276))

(assert (not bm!678520))

(assert (not b!7378286))

(assert (not b!7378290))

(assert (not d!2285113))

(assert (not bm!678540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

