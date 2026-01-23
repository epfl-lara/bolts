; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717966 () Bool)

(assert start!717966)

(declare-fun b!7352262 () Bool)

(declare-fun e!4402197 () Bool)

(declare-fun tp_is_empty!48593 () Bool)

(assert (=> b!7352262 (= e!4402197 tp_is_empty!48593)))

(declare-fun b!7352263 () Bool)

(declare-fun e!4402195 () Bool)

(declare-fun tp!2088320 () Bool)

(assert (=> b!7352263 (= e!4402195 tp!2088320)))

(declare-fun b!7352264 () Bool)

(declare-fun e!4402200 () Bool)

(declare-fun e!4402203 () Bool)

(assert (=> b!7352264 (= e!4402200 e!4402203)))

(declare-fun res!2969049 () Bool)

(assert (=> b!7352264 (=> (not res!2969049) (not e!4402203))))

(declare-datatypes ((C!38622 0))(
  ( (C!38623 (val!29671 Int)) )
))
(declare-datatypes ((Regex!19174 0))(
  ( (ElementMatch!19174 (c!1365958 C!38622)) (Concat!28019 (regOne!38860 Regex!19174) (regTwo!38860 Regex!19174)) (EmptyExpr!19174) (Star!19174 (reg!19503 Regex!19174)) (EmptyLang!19174) (Union!19174 (regOne!38861 Regex!19174) (regTwo!38861 Regex!19174)) )
))
(declare-datatypes ((List!71670 0))(
  ( (Nil!71546) (Cons!71546 (h!77994 Regex!19174) (t!386095 List!71670)) )
))
(declare-datatypes ((Context!16228 0))(
  ( (Context!16229 (exprs!8614 List!71670)) )
))
(declare-fun cWitness!61 () Context!16228)

(declare-fun lt!2612453 () (Set Context!16228))

(assert (=> b!7352264 (= res!2969049 (set.member cWitness!61 lt!2612453))))

(declare-fun r1!2370 () Regex!19174)

(declare-fun c!10362 () C!38622)

(declare-fun ct1!282 () Context!16228)

(declare-fun derivationStepZipperDown!3000 (Regex!19174 Context!16228 C!38622) (Set Context!16228))

(assert (=> b!7352264 (= lt!2612453 (derivationStepZipperDown!3000 r1!2370 ct1!282 c!10362))))

(declare-fun b!7352265 () Bool)

(declare-fun e!4402204 () Bool)

(declare-fun tp!2088316 () Bool)

(assert (=> b!7352265 (= e!4402204 tp!2088316)))

(declare-fun b!7352266 () Bool)

(declare-fun e!4402205 () Bool)

(assert (=> b!7352266 (= e!4402203 e!4402205)))

(declare-fun res!2969053 () Bool)

(assert (=> b!7352266 (=> (not res!2969053) (not e!4402205))))

(assert (=> b!7352266 (= res!2969053 (and (or (not (is-ElementMatch!19174 r1!2370)) (not (= c!10362 (c!1365958 r1!2370)))) (not (is-Union!19174 r1!2370))))))

(declare-fun lt!2612456 () (Set Context!16228))

(declare-fun ct2!378 () Context!16228)

(declare-fun ++!16992 (List!71670 List!71670) List!71670)

(assert (=> b!7352266 (= lt!2612456 (derivationStepZipperDown!3000 r1!2370 (Context!16229 (++!16992 (exprs!8614 ct1!282) (exprs!8614 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165301 0))(
  ( (Unit!165302) )
))
(declare-fun lt!2612450 () Unit!165301)

(declare-fun lambda!456672 () Int)

(declare-fun lemmaConcatPreservesForall!1849 (List!71670 List!71670 Int) Unit!165301)

(assert (=> b!7352266 (= lt!2612450 (lemmaConcatPreservesForall!1849 (exprs!8614 ct1!282) (exprs!8614 ct2!378) lambda!456672))))

(declare-fun res!2969055 () Bool)

(assert (=> start!717966 (=> (not res!2969055) (not e!4402200))))

(declare-fun validRegex!9770 (Regex!19174) Bool)

(assert (=> start!717966 (= res!2969055 (validRegex!9770 r1!2370))))

(assert (=> start!717966 e!4402200))

(assert (=> start!717966 tp_is_empty!48593))

(declare-fun inv!91276 (Context!16228) Bool)

(assert (=> start!717966 (and (inv!91276 cWitness!61) e!4402195)))

(assert (=> start!717966 (and (inv!91276 ct1!282) e!4402204)))

(assert (=> start!717966 e!4402197))

(declare-fun e!4402196 () Bool)

(assert (=> start!717966 (and (inv!91276 ct2!378) e!4402196)))

(declare-fun b!7352267 () Bool)

(declare-fun tp!2088317 () Bool)

(declare-fun tp!2088321 () Bool)

(assert (=> b!7352267 (= e!4402197 (and tp!2088317 tp!2088321))))

(declare-fun b!7352268 () Bool)

(declare-fun e!4402202 () Bool)

(declare-fun forall!17996 (List!71670 Int) Bool)

(assert (=> b!7352268 (= e!4402202 (forall!17996 (exprs!8614 ct2!378) lambda!456672))))

(declare-fun b!7352269 () Bool)

(declare-fun tp!2088318 () Bool)

(assert (=> b!7352269 (= e!4402197 tp!2088318)))

(declare-fun b!7352270 () Bool)

(declare-fun e!4402201 () Bool)

(assert (=> b!7352270 (= e!4402205 e!4402201)))

(declare-fun res!2969056 () Bool)

(assert (=> b!7352270 (=> (not res!2969056) (not e!4402201))))

(declare-fun lt!2612448 () Context!16228)

(assert (=> b!7352270 (= res!2969056 (= lt!2612453 (derivationStepZipperDown!3000 (regOne!38860 r1!2370) lt!2612448 c!10362)))))

(declare-fun lt!2612455 () List!71670)

(assert (=> b!7352270 (= lt!2612448 (Context!16229 lt!2612455))))

(declare-fun $colon$colon!3172 (List!71670 Regex!19174) List!71670)

(assert (=> b!7352270 (= lt!2612455 ($colon$colon!3172 (exprs!8614 ct1!282) (regTwo!38860 r1!2370)))))

(declare-fun b!7352271 () Bool)

(declare-fun e!4402199 () Bool)

(declare-fun nullable!8265 (Regex!19174) Bool)

(assert (=> b!7352271 (= e!4402199 (not (nullable!8265 (regOne!38860 r1!2370))))))

(declare-fun b!7352272 () Bool)

(declare-fun tp!2088322 () Bool)

(declare-fun tp!2088319 () Bool)

(assert (=> b!7352272 (= e!4402197 (and tp!2088322 tp!2088319))))

(declare-fun b!7352273 () Bool)

(declare-fun res!2969052 () Bool)

(assert (=> b!7352273 (=> (not res!2969052) (not e!4402205))))

(assert (=> b!7352273 (= res!2969052 e!4402199)))

(declare-fun res!2969048 () Bool)

(assert (=> b!7352273 (=> res!2969048 e!4402199)))

(assert (=> b!7352273 (= res!2969048 (not (is-Concat!28019 r1!2370)))))

(declare-fun b!7352274 () Bool)

(declare-fun tp!2088323 () Bool)

(assert (=> b!7352274 (= e!4402196 tp!2088323)))

(declare-fun b!7352275 () Bool)

(declare-fun res!2969054 () Bool)

(assert (=> b!7352275 (=> (not res!2969054) (not e!4402205))))

(assert (=> b!7352275 (= res!2969054 (validRegex!9770 (regTwo!38860 r1!2370)))))

(declare-fun b!7352276 () Bool)

(declare-fun e!4402198 () Bool)

(assert (=> b!7352276 (= e!4402201 (not e!4402198))))

(declare-fun res!2969050 () Bool)

(assert (=> b!7352276 (=> res!2969050 e!4402198)))

(declare-fun lt!2612451 () Context!16228)

(assert (=> b!7352276 (= res!2969050 (not (set.member lt!2612451 lt!2612456)))))

(declare-fun lt!2612452 () Unit!165301)

(assert (=> b!7352276 (= lt!2612452 (lemmaConcatPreservesForall!1849 (exprs!8614 cWitness!61) (exprs!8614 ct2!378) lambda!456672))))

(assert (=> b!7352276 (set.member lt!2612451 (derivationStepZipperDown!3000 (regOne!38860 r1!2370) (Context!16229 (++!16992 lt!2612455 (exprs!8614 ct2!378))) c!10362))))

(assert (=> b!7352276 (= lt!2612451 (Context!16229 (++!16992 (exprs!8614 cWitness!61) (exprs!8614 ct2!378))))))

(declare-fun lt!2612454 () Unit!165301)

(assert (=> b!7352276 (= lt!2612454 (lemmaConcatPreservesForall!1849 lt!2612455 (exprs!8614 ct2!378) lambda!456672))))

(declare-fun lt!2612457 () Unit!165301)

(assert (=> b!7352276 (= lt!2612457 (lemmaConcatPreservesForall!1849 (exprs!8614 cWitness!61) (exprs!8614 ct2!378) lambda!456672))))

(declare-fun lt!2612449 () Unit!165301)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!95 (Regex!19174 Context!16228 Context!16228 Context!16228 C!38622) Unit!165301)

(assert (=> b!7352276 (= lt!2612449 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!95 (regOne!38860 r1!2370) lt!2612448 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7352277 () Bool)

(declare-fun res!2969051 () Bool)

(assert (=> b!7352277 (=> (not res!2969051) (not e!4402205))))

(assert (=> b!7352277 (= res!2969051 (is-Concat!28019 r1!2370))))

(declare-fun b!7352278 () Bool)

(assert (=> b!7352278 (= e!4402198 e!4402202)))

(declare-fun res!2969047 () Bool)

(assert (=> b!7352278 (=> res!2969047 e!4402202)))

(assert (=> b!7352278 (= res!2969047 (not (forall!17996 (exprs!8614 cWitness!61) lambda!456672)))))

(assert (= (and start!717966 res!2969055) b!7352264))

(assert (= (and b!7352264 res!2969049) b!7352266))

(assert (= (and b!7352266 res!2969053) b!7352273))

(assert (= (and b!7352273 (not res!2969048)) b!7352271))

(assert (= (and b!7352273 res!2969052) b!7352277))

(assert (= (and b!7352277 res!2969051) b!7352275))

(assert (= (and b!7352275 res!2969054) b!7352270))

(assert (= (and b!7352270 res!2969056) b!7352276))

(assert (= (and b!7352276 (not res!2969050)) b!7352278))

(assert (= (and b!7352278 (not res!2969047)) b!7352268))

(assert (= start!717966 b!7352263))

(assert (= start!717966 b!7352265))

(assert (= (and start!717966 (is-ElementMatch!19174 r1!2370)) b!7352262))

(assert (= (and start!717966 (is-Concat!28019 r1!2370)) b!7352267))

(assert (= (and start!717966 (is-Star!19174 r1!2370)) b!7352269))

(assert (= (and start!717966 (is-Union!19174 r1!2370)) b!7352272))

(assert (= start!717966 b!7352274))

(declare-fun m!8013026 () Bool)

(assert (=> b!7352270 m!8013026))

(declare-fun m!8013028 () Bool)

(assert (=> b!7352270 m!8013028))

(declare-fun m!8013030 () Bool)

(assert (=> b!7352268 m!8013030))

(declare-fun m!8013032 () Bool)

(assert (=> b!7352275 m!8013032))

(declare-fun m!8013034 () Bool)

(assert (=> b!7352271 m!8013034))

(declare-fun m!8013036 () Bool)

(assert (=> b!7352264 m!8013036))

(declare-fun m!8013038 () Bool)

(assert (=> b!7352264 m!8013038))

(declare-fun m!8013040 () Bool)

(assert (=> b!7352276 m!8013040))

(declare-fun m!8013042 () Bool)

(assert (=> b!7352276 m!8013042))

(declare-fun m!8013044 () Bool)

(assert (=> b!7352276 m!8013044))

(assert (=> b!7352276 m!8013042))

(declare-fun m!8013046 () Bool)

(assert (=> b!7352276 m!8013046))

(declare-fun m!8013048 () Bool)

(assert (=> b!7352276 m!8013048))

(declare-fun m!8013050 () Bool)

(assert (=> b!7352276 m!8013050))

(declare-fun m!8013052 () Bool)

(assert (=> b!7352276 m!8013052))

(declare-fun m!8013054 () Bool)

(assert (=> b!7352276 m!8013054))

(declare-fun m!8013056 () Bool)

(assert (=> b!7352266 m!8013056))

(declare-fun m!8013058 () Bool)

(assert (=> b!7352266 m!8013058))

(declare-fun m!8013060 () Bool)

(assert (=> b!7352266 m!8013060))

(declare-fun m!8013062 () Bool)

(assert (=> b!7352278 m!8013062))

(declare-fun m!8013064 () Bool)

(assert (=> start!717966 m!8013064))

(declare-fun m!8013066 () Bool)

(assert (=> start!717966 m!8013066))

(declare-fun m!8013068 () Bool)

(assert (=> start!717966 m!8013068))

(declare-fun m!8013070 () Bool)

(assert (=> start!717966 m!8013070))

(push 1)

(assert (not b!7352276))

(assert (not b!7352264))

(assert (not b!7352263))

(assert (not b!7352271))

(assert (not b!7352266))

(assert (not start!717966))

(assert (not b!7352268))

(assert (not b!7352272))

(assert (not b!7352267))

(assert (not b!7352274))

(assert (not b!7352269))

(assert (not b!7352275))

(assert (not b!7352278))

(assert (not b!7352265))

(assert (not b!7352270))

(assert tp_is_empty!48593)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7352370 () Bool)

(declare-fun e!4402268 () (Set Context!16228))

(assert (=> b!7352370 (= e!4402268 (as set.empty (Set Context!16228)))))

(declare-fun bm!672679 () Bool)

(declare-fun call!672684 () (Set Context!16228))

(declare-fun call!672685 () (Set Context!16228))

(assert (=> bm!672679 (= call!672684 call!672685)))

(declare-fun b!7352371 () Bool)

(declare-fun e!4402269 () (Set Context!16228))

(declare-fun e!4402265 () (Set Context!16228))

(assert (=> b!7352371 (= e!4402269 e!4402265)))

(declare-fun c!1365977 () Bool)

(assert (=> b!7352371 (= c!1365977 (is-Concat!28019 r1!2370))))

(declare-fun d!2280770 () Bool)

(declare-fun c!1365975 () Bool)

(assert (=> d!2280770 (= c!1365975 (and (is-ElementMatch!19174 r1!2370) (= (c!1365958 r1!2370) c!10362)))))

(declare-fun e!4402267 () (Set Context!16228))

(assert (=> d!2280770 (= (derivationStepZipperDown!3000 r1!2370 (Context!16229 (++!16992 (exprs!8614 ct1!282) (exprs!8614 ct2!378))) c!10362) e!4402267)))

(declare-fun call!672687 () (Set Context!16228))

(declare-fun call!672686 () List!71670)

(declare-fun bm!672680 () Bool)

(declare-fun c!1365978 () Bool)

(assert (=> bm!672680 (= call!672687 (derivationStepZipperDown!3000 (ite c!1365978 (regTwo!38861 r1!2370) (regOne!38860 r1!2370)) (ite c!1365978 (Context!16229 (++!16992 (exprs!8614 ct1!282) (exprs!8614 ct2!378))) (Context!16229 call!672686)) c!10362))))

(declare-fun b!7352372 () Bool)

(assert (=> b!7352372 (= e!4402267 (set.insert (Context!16229 (++!16992 (exprs!8614 ct1!282) (exprs!8614 ct2!378))) (as set.empty (Set Context!16228))))))

(declare-fun b!7352373 () Bool)

(declare-fun e!4402270 () (Set Context!16228))

(assert (=> b!7352373 (= e!4402267 e!4402270)))

(assert (=> b!7352373 (= c!1365978 (is-Union!19174 r1!2370))))

(declare-fun b!7352374 () Bool)

(assert (=> b!7352374 (= e!4402269 (set.union call!672687 call!672685))))

(declare-fun bm!672681 () Bool)

(declare-fun c!1365974 () Bool)

(assert (=> bm!672681 (= call!672686 ($colon$colon!3172 (exprs!8614 (Context!16229 (++!16992 (exprs!8614 ct1!282) (exprs!8614 ct2!378)))) (ite (or c!1365974 c!1365977) (regTwo!38860 r1!2370) r1!2370)))))

(declare-fun bm!672682 () Bool)

(declare-fun call!672688 () (Set Context!16228))

(assert (=> bm!672682 (= call!672685 call!672688)))

(declare-fun b!7352375 () Bool)

(assert (=> b!7352375 (= e!4402268 call!672684)))

(declare-fun bm!672683 () Bool)

(declare-fun call!672689 () List!71670)

(assert (=> bm!672683 (= call!672688 (derivationStepZipperDown!3000 (ite c!1365978 (regOne!38861 r1!2370) (ite c!1365974 (regTwo!38860 r1!2370) (ite c!1365977 (regOne!38860 r1!2370) (reg!19503 r1!2370)))) (ite (or c!1365978 c!1365974) (Context!16229 (++!16992 (exprs!8614 ct1!282) (exprs!8614 ct2!378))) (Context!16229 call!672689)) c!10362))))

(declare-fun b!7352376 () Bool)

(assert (=> b!7352376 (= e!4402265 call!672684)))

(declare-fun b!7352377 () Bool)

(declare-fun c!1365976 () Bool)

(assert (=> b!7352377 (= c!1365976 (is-Star!19174 r1!2370))))

(assert (=> b!7352377 (= e!4402265 e!4402268)))

(declare-fun bm!672684 () Bool)

(assert (=> bm!672684 (= call!672689 call!672686)))

(declare-fun b!7352378 () Bool)

(assert (=> b!7352378 (= e!4402270 (set.union call!672688 call!672687))))

(declare-fun b!7352379 () Bool)

(declare-fun e!4402266 () Bool)

(assert (=> b!7352379 (= e!4402266 (nullable!8265 (regOne!38860 r1!2370)))))

(declare-fun b!7352380 () Bool)

(assert (=> b!7352380 (= c!1365974 e!4402266)))

(declare-fun res!2969099 () Bool)

(assert (=> b!7352380 (=> (not res!2969099) (not e!4402266))))

(assert (=> b!7352380 (= res!2969099 (is-Concat!28019 r1!2370))))

(assert (=> b!7352380 (= e!4402270 e!4402269)))

(assert (= (and d!2280770 c!1365975) b!7352372))

(assert (= (and d!2280770 (not c!1365975)) b!7352373))

(assert (= (and b!7352373 c!1365978) b!7352378))

(assert (= (and b!7352373 (not c!1365978)) b!7352380))

(assert (= (and b!7352380 res!2969099) b!7352379))

(assert (= (and b!7352380 c!1365974) b!7352374))

(assert (= (and b!7352380 (not c!1365974)) b!7352371))

(assert (= (and b!7352371 c!1365977) b!7352376))

(assert (= (and b!7352371 (not c!1365977)) b!7352377))

(assert (= (and b!7352377 c!1365976) b!7352375))

(assert (= (and b!7352377 (not c!1365976)) b!7352370))

(assert (= (or b!7352376 b!7352375) bm!672684))

(assert (= (or b!7352376 b!7352375) bm!672679))

(assert (= (or b!7352374 bm!672679) bm!672682))

(assert (= (or b!7352374 bm!672684) bm!672681))

(assert (= (or b!7352378 b!7352374) bm!672680))

(assert (= (or b!7352378 bm!672682) bm!672683))

(declare-fun m!8013118 () Bool)

(assert (=> bm!672683 m!8013118))

(declare-fun m!8013120 () Bool)

(assert (=> bm!672681 m!8013120))

(assert (=> b!7352379 m!8013034))

(declare-fun m!8013122 () Bool)

(assert (=> bm!672680 m!8013122))

(declare-fun m!8013124 () Bool)

(assert (=> b!7352372 m!8013124))

(assert (=> b!7352266 d!2280770))

(declare-fun b!7352407 () Bool)

(declare-fun e!4402290 () List!71670)

(assert (=> b!7352407 (= e!4402290 (exprs!8614 ct2!378))))

(declare-fun b!7352408 () Bool)

(assert (=> b!7352408 (= e!4402290 (Cons!71546 (h!77994 (exprs!8614 ct1!282)) (++!16992 (t!386095 (exprs!8614 ct1!282)) (exprs!8614 ct2!378))))))

(declare-fun d!2280774 () Bool)

(declare-fun e!4402289 () Bool)

(assert (=> d!2280774 e!4402289))

(declare-fun res!2969115 () Bool)

(assert (=> d!2280774 (=> (not res!2969115) (not e!4402289))))

(declare-fun lt!2612490 () List!71670)

(declare-fun content!15080 (List!71670) (Set Regex!19174))

(assert (=> d!2280774 (= res!2969115 (= (content!15080 lt!2612490) (set.union (content!15080 (exprs!8614 ct1!282)) (content!15080 (exprs!8614 ct2!378)))))))

(assert (=> d!2280774 (= lt!2612490 e!4402290)))

(declare-fun c!1365985 () Bool)

(assert (=> d!2280774 (= c!1365985 (is-Nil!71546 (exprs!8614 ct1!282)))))

(assert (=> d!2280774 (= (++!16992 (exprs!8614 ct1!282) (exprs!8614 ct2!378)) lt!2612490)))

(declare-fun b!7352410 () Bool)

(assert (=> b!7352410 (= e!4402289 (or (not (= (exprs!8614 ct2!378) Nil!71546)) (= lt!2612490 (exprs!8614 ct1!282))))))

(declare-fun b!7352409 () Bool)

(declare-fun res!2969114 () Bool)

(assert (=> b!7352409 (=> (not res!2969114) (not e!4402289))))

(declare-fun size!42059 (List!71670) Int)

(assert (=> b!7352409 (= res!2969114 (= (size!42059 lt!2612490) (+ (size!42059 (exprs!8614 ct1!282)) (size!42059 (exprs!8614 ct2!378)))))))

(assert (= (and d!2280774 c!1365985) b!7352407))

(assert (= (and d!2280774 (not c!1365985)) b!7352408))

(assert (= (and d!2280774 res!2969115) b!7352409))

(assert (= (and b!7352409 res!2969114) b!7352410))

(declare-fun m!8013132 () Bool)

(assert (=> b!7352408 m!8013132))

(declare-fun m!8013134 () Bool)

(assert (=> d!2280774 m!8013134))

(declare-fun m!8013136 () Bool)

(assert (=> d!2280774 m!8013136))

(declare-fun m!8013138 () Bool)

(assert (=> d!2280774 m!8013138))

(declare-fun m!8013140 () Bool)

(assert (=> b!7352409 m!8013140))

(declare-fun m!8013142 () Bool)

(assert (=> b!7352409 m!8013142))

(declare-fun m!8013144 () Bool)

(assert (=> b!7352409 m!8013144))

(assert (=> b!7352266 d!2280774))

(declare-fun d!2280778 () Bool)

(assert (=> d!2280778 (forall!17996 (++!16992 (exprs!8614 ct1!282) (exprs!8614 ct2!378)) lambda!456672)))

(declare-fun lt!2612493 () Unit!165301)

(declare-fun choose!57193 (List!71670 List!71670 Int) Unit!165301)

(assert (=> d!2280778 (= lt!2612493 (choose!57193 (exprs!8614 ct1!282) (exprs!8614 ct2!378) lambda!456672))))

(assert (=> d!2280778 (forall!17996 (exprs!8614 ct1!282) lambda!456672)))

(assert (=> d!2280778 (= (lemmaConcatPreservesForall!1849 (exprs!8614 ct1!282) (exprs!8614 ct2!378) lambda!456672) lt!2612493)))

(declare-fun bs!1919412 () Bool)

(assert (= bs!1919412 d!2280778))

(assert (=> bs!1919412 m!8013056))

(assert (=> bs!1919412 m!8013056))

(declare-fun m!8013152 () Bool)

(assert (=> bs!1919412 m!8013152))

(declare-fun m!8013154 () Bool)

(assert (=> bs!1919412 m!8013154))

(declare-fun m!8013156 () Bool)

(assert (=> bs!1919412 m!8013156))

(assert (=> b!7352266 d!2280778))

(declare-fun d!2280782 () Bool)

(declare-fun nullableFct!3299 (Regex!19174) Bool)

(assert (=> d!2280782 (= (nullable!8265 (regOne!38860 r1!2370)) (nullableFct!3299 (regOne!38860 r1!2370)))))

(declare-fun bs!1919413 () Bool)

(assert (= bs!1919413 d!2280782))

(declare-fun m!8013158 () Bool)

(assert (=> bs!1919413 m!8013158))

(assert (=> b!7352271 d!2280782))

(declare-fun d!2280784 () Bool)

(assert (=> d!2280784 (forall!17996 (++!16992 lt!2612455 (exprs!8614 ct2!378)) lambda!456672)))

(declare-fun lt!2612494 () Unit!165301)

(assert (=> d!2280784 (= lt!2612494 (choose!57193 lt!2612455 (exprs!8614 ct2!378) lambda!456672))))

(assert (=> d!2280784 (forall!17996 lt!2612455 lambda!456672)))

(assert (=> d!2280784 (= (lemmaConcatPreservesForall!1849 lt!2612455 (exprs!8614 ct2!378) lambda!456672) lt!2612494)))

(declare-fun bs!1919414 () Bool)

(assert (= bs!1919414 d!2280784))

(assert (=> bs!1919414 m!8013044))

(assert (=> bs!1919414 m!8013044))

(declare-fun m!8013160 () Bool)

(assert (=> bs!1919414 m!8013160))

(declare-fun m!8013162 () Bool)

(assert (=> bs!1919414 m!8013162))

(declare-fun m!8013164 () Bool)

(assert (=> bs!1919414 m!8013164))

(assert (=> b!7352276 d!2280784))

(declare-fun b!7352411 () Bool)

(declare-fun e!4402294 () (Set Context!16228))

(assert (=> b!7352411 (= e!4402294 (as set.empty (Set Context!16228)))))

(declare-fun bm!672691 () Bool)

(declare-fun call!672696 () (Set Context!16228))

(declare-fun call!672697 () (Set Context!16228))

(assert (=> bm!672691 (= call!672696 call!672697)))

(declare-fun b!7352412 () Bool)

(declare-fun e!4402295 () (Set Context!16228))

(declare-fun e!4402291 () (Set Context!16228))

(assert (=> b!7352412 (= e!4402295 e!4402291)))

(declare-fun c!1365989 () Bool)

(assert (=> b!7352412 (= c!1365989 (is-Concat!28019 (regOne!38860 r1!2370)))))

(declare-fun d!2280786 () Bool)

(declare-fun c!1365987 () Bool)

(assert (=> d!2280786 (= c!1365987 (and (is-ElementMatch!19174 (regOne!38860 r1!2370)) (= (c!1365958 (regOne!38860 r1!2370)) c!10362)))))

(declare-fun e!4402293 () (Set Context!16228))

(assert (=> d!2280786 (= (derivationStepZipperDown!3000 (regOne!38860 r1!2370) (Context!16229 (++!16992 lt!2612455 (exprs!8614 ct2!378))) c!10362) e!4402293)))

(declare-fun call!672699 () (Set Context!16228))

(declare-fun call!672698 () List!71670)

(declare-fun c!1365990 () Bool)

(declare-fun bm!672692 () Bool)

(assert (=> bm!672692 (= call!672699 (derivationStepZipperDown!3000 (ite c!1365990 (regTwo!38861 (regOne!38860 r1!2370)) (regOne!38860 (regOne!38860 r1!2370))) (ite c!1365990 (Context!16229 (++!16992 lt!2612455 (exprs!8614 ct2!378))) (Context!16229 call!672698)) c!10362))))

(declare-fun b!7352413 () Bool)

(assert (=> b!7352413 (= e!4402293 (set.insert (Context!16229 (++!16992 lt!2612455 (exprs!8614 ct2!378))) (as set.empty (Set Context!16228))))))

(declare-fun b!7352414 () Bool)

(declare-fun e!4402296 () (Set Context!16228))

(assert (=> b!7352414 (= e!4402293 e!4402296)))

(assert (=> b!7352414 (= c!1365990 (is-Union!19174 (regOne!38860 r1!2370)))))

(declare-fun b!7352415 () Bool)

(assert (=> b!7352415 (= e!4402295 (set.union call!672699 call!672697))))

(declare-fun bm!672693 () Bool)

(declare-fun c!1365986 () Bool)

(assert (=> bm!672693 (= call!672698 ($colon$colon!3172 (exprs!8614 (Context!16229 (++!16992 lt!2612455 (exprs!8614 ct2!378)))) (ite (or c!1365986 c!1365989) (regTwo!38860 (regOne!38860 r1!2370)) (regOne!38860 r1!2370))))))

(declare-fun bm!672694 () Bool)

(declare-fun call!672700 () (Set Context!16228))

(assert (=> bm!672694 (= call!672697 call!672700)))

(declare-fun b!7352416 () Bool)

(assert (=> b!7352416 (= e!4402294 call!672696)))

(declare-fun bm!672695 () Bool)

(declare-fun call!672701 () List!71670)

(assert (=> bm!672695 (= call!672700 (derivationStepZipperDown!3000 (ite c!1365990 (regOne!38861 (regOne!38860 r1!2370)) (ite c!1365986 (regTwo!38860 (regOne!38860 r1!2370)) (ite c!1365989 (regOne!38860 (regOne!38860 r1!2370)) (reg!19503 (regOne!38860 r1!2370))))) (ite (or c!1365990 c!1365986) (Context!16229 (++!16992 lt!2612455 (exprs!8614 ct2!378))) (Context!16229 call!672701)) c!10362))))

(declare-fun b!7352417 () Bool)

(assert (=> b!7352417 (= e!4402291 call!672696)))

(declare-fun b!7352418 () Bool)

(declare-fun c!1365988 () Bool)

(assert (=> b!7352418 (= c!1365988 (is-Star!19174 (regOne!38860 r1!2370)))))

(assert (=> b!7352418 (= e!4402291 e!4402294)))

(declare-fun bm!672696 () Bool)

(assert (=> bm!672696 (= call!672701 call!672698)))

(declare-fun b!7352419 () Bool)

(assert (=> b!7352419 (= e!4402296 (set.union call!672700 call!672699))))

(declare-fun b!7352420 () Bool)

(declare-fun e!4402292 () Bool)

(assert (=> b!7352420 (= e!4402292 (nullable!8265 (regOne!38860 (regOne!38860 r1!2370))))))

(declare-fun b!7352421 () Bool)

(assert (=> b!7352421 (= c!1365986 e!4402292)))

(declare-fun res!2969116 () Bool)

(assert (=> b!7352421 (=> (not res!2969116) (not e!4402292))))

(assert (=> b!7352421 (= res!2969116 (is-Concat!28019 (regOne!38860 r1!2370)))))

(assert (=> b!7352421 (= e!4402296 e!4402295)))

(assert (= (and d!2280786 c!1365987) b!7352413))

(assert (= (and d!2280786 (not c!1365987)) b!7352414))

(assert (= (and b!7352414 c!1365990) b!7352419))

(assert (= (and b!7352414 (not c!1365990)) b!7352421))

(assert (= (and b!7352421 res!2969116) b!7352420))

(assert (= (and b!7352421 c!1365986) b!7352415))

(assert (= (and b!7352421 (not c!1365986)) b!7352412))

(assert (= (and b!7352412 c!1365989) b!7352417))

(assert (= (and b!7352412 (not c!1365989)) b!7352418))

(assert (= (and b!7352418 c!1365988) b!7352416))

(assert (= (and b!7352418 (not c!1365988)) b!7352411))

(assert (= (or b!7352417 b!7352416) bm!672696))

(assert (= (or b!7352417 b!7352416) bm!672691))

(assert (= (or b!7352415 bm!672691) bm!672694))

(assert (= (or b!7352415 bm!672696) bm!672693))

(assert (= (or b!7352419 b!7352415) bm!672692))

(assert (= (or b!7352419 bm!672694) bm!672695))

(declare-fun m!8013166 () Bool)

(assert (=> bm!672695 m!8013166))

(declare-fun m!8013170 () Bool)

(assert (=> bm!672693 m!8013170))

(declare-fun m!8013172 () Bool)

(assert (=> b!7352420 m!8013172))

(declare-fun m!8013174 () Bool)

(assert (=> bm!672692 m!8013174))

(declare-fun m!8013176 () Bool)

(assert (=> b!7352413 m!8013176))

(assert (=> b!7352276 d!2280786))

(declare-fun bs!1919424 () Bool)

(declare-fun d!2280790 () Bool)

(assert (= bs!1919424 (and d!2280790 b!7352266)))

(declare-fun lambda!456693 () Int)

(assert (=> bs!1919424 (= lambda!456693 lambda!456672)))

(assert (=> d!2280790 (set.member (Context!16229 (++!16992 (exprs!8614 cWitness!61) (exprs!8614 ct2!378))) (derivationStepZipperDown!3000 (regOne!38860 r1!2370) (Context!16229 (++!16992 (exprs!8614 lt!2612448) (exprs!8614 ct2!378))) c!10362))))

(declare-fun lt!2612503 () Unit!165301)

(assert (=> d!2280790 (= lt!2612503 (lemmaConcatPreservesForall!1849 (exprs!8614 lt!2612448) (exprs!8614 ct2!378) lambda!456693))))

(declare-fun lt!2612502 () Unit!165301)

(assert (=> d!2280790 (= lt!2612502 (lemmaConcatPreservesForall!1849 (exprs!8614 cWitness!61) (exprs!8614 ct2!378) lambda!456693))))

(declare-fun lt!2612501 () Unit!165301)

(declare-fun choose!57194 (Regex!19174 Context!16228 Context!16228 Context!16228 C!38622) Unit!165301)

(assert (=> d!2280790 (= lt!2612501 (choose!57194 (regOne!38860 r1!2370) lt!2612448 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280790 (validRegex!9770 (regOne!38860 r1!2370))))

(assert (=> d!2280790 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!95 (regOne!38860 r1!2370) lt!2612448 ct2!378 cWitness!61 c!10362) lt!2612501)))

(declare-fun bs!1919425 () Bool)

(assert (= bs!1919425 d!2280790))

(declare-fun m!8013182 () Bool)

(assert (=> bs!1919425 m!8013182))

(assert (=> bs!1919425 m!8013046))

(declare-fun m!8013184 () Bool)

(assert (=> bs!1919425 m!8013184))

(declare-fun m!8013186 () Bool)

(assert (=> bs!1919425 m!8013186))

(declare-fun m!8013188 () Bool)

(assert (=> bs!1919425 m!8013188))

(declare-fun m!8013190 () Bool)

(assert (=> bs!1919425 m!8013190))

(declare-fun m!8013192 () Bool)

(assert (=> bs!1919425 m!8013192))

(declare-fun m!8013194 () Bool)

(assert (=> bs!1919425 m!8013194))

(assert (=> b!7352276 d!2280790))

(declare-fun b!7352422 () Bool)

(declare-fun e!4402298 () List!71670)

(assert (=> b!7352422 (= e!4402298 (exprs!8614 ct2!378))))

(declare-fun b!7352423 () Bool)

(assert (=> b!7352423 (= e!4402298 (Cons!71546 (h!77994 lt!2612455) (++!16992 (t!386095 lt!2612455) (exprs!8614 ct2!378))))))

(declare-fun d!2280796 () Bool)

(declare-fun e!4402297 () Bool)

(assert (=> d!2280796 e!4402297))

(declare-fun res!2969118 () Bool)

(assert (=> d!2280796 (=> (not res!2969118) (not e!4402297))))

(declare-fun lt!2612504 () List!71670)

(assert (=> d!2280796 (= res!2969118 (= (content!15080 lt!2612504) (set.union (content!15080 lt!2612455) (content!15080 (exprs!8614 ct2!378)))))))

(assert (=> d!2280796 (= lt!2612504 e!4402298)))

(declare-fun c!1365992 () Bool)

(assert (=> d!2280796 (= c!1365992 (is-Nil!71546 lt!2612455))))

(assert (=> d!2280796 (= (++!16992 lt!2612455 (exprs!8614 ct2!378)) lt!2612504)))

(declare-fun b!7352425 () Bool)

(assert (=> b!7352425 (= e!4402297 (or (not (= (exprs!8614 ct2!378) Nil!71546)) (= lt!2612504 lt!2612455)))))

(declare-fun b!7352424 () Bool)

(declare-fun res!2969117 () Bool)

(assert (=> b!7352424 (=> (not res!2969117) (not e!4402297))))

(assert (=> b!7352424 (= res!2969117 (= (size!42059 lt!2612504) (+ (size!42059 lt!2612455) (size!42059 (exprs!8614 ct2!378)))))))

(assert (= (and d!2280796 c!1365992) b!7352422))

(assert (= (and d!2280796 (not c!1365992)) b!7352423))

(assert (= (and d!2280796 res!2969118) b!7352424))

(assert (= (and b!7352424 res!2969117) b!7352425))

(declare-fun m!8013196 () Bool)

(assert (=> b!7352423 m!8013196))

(declare-fun m!8013198 () Bool)

(assert (=> d!2280796 m!8013198))

(declare-fun m!8013200 () Bool)

(assert (=> d!2280796 m!8013200))

(assert (=> d!2280796 m!8013138))

(declare-fun m!8013202 () Bool)

(assert (=> b!7352424 m!8013202))

(declare-fun m!8013204 () Bool)

(assert (=> b!7352424 m!8013204))

(assert (=> b!7352424 m!8013144))

(assert (=> b!7352276 d!2280796))

(declare-fun b!7352426 () Bool)

(declare-fun e!4402300 () List!71670)

(assert (=> b!7352426 (= e!4402300 (exprs!8614 ct2!378))))

(declare-fun b!7352427 () Bool)

(assert (=> b!7352427 (= e!4402300 (Cons!71546 (h!77994 (exprs!8614 cWitness!61)) (++!16992 (t!386095 (exprs!8614 cWitness!61)) (exprs!8614 ct2!378))))))

(declare-fun d!2280798 () Bool)

(declare-fun e!4402299 () Bool)

(assert (=> d!2280798 e!4402299))

(declare-fun res!2969120 () Bool)

(assert (=> d!2280798 (=> (not res!2969120) (not e!4402299))))

(declare-fun lt!2612505 () List!71670)

(assert (=> d!2280798 (= res!2969120 (= (content!15080 lt!2612505) (set.union (content!15080 (exprs!8614 cWitness!61)) (content!15080 (exprs!8614 ct2!378)))))))

(assert (=> d!2280798 (= lt!2612505 e!4402300)))

(declare-fun c!1365993 () Bool)

(assert (=> d!2280798 (= c!1365993 (is-Nil!71546 (exprs!8614 cWitness!61)))))

(assert (=> d!2280798 (= (++!16992 (exprs!8614 cWitness!61) (exprs!8614 ct2!378)) lt!2612505)))

(declare-fun b!7352429 () Bool)

(assert (=> b!7352429 (= e!4402299 (or (not (= (exprs!8614 ct2!378) Nil!71546)) (= lt!2612505 (exprs!8614 cWitness!61))))))

(declare-fun b!7352428 () Bool)

(declare-fun res!2969119 () Bool)

(assert (=> b!7352428 (=> (not res!2969119) (not e!4402299))))

(assert (=> b!7352428 (= res!2969119 (= (size!42059 lt!2612505) (+ (size!42059 (exprs!8614 cWitness!61)) (size!42059 (exprs!8614 ct2!378)))))))

(assert (= (and d!2280798 c!1365993) b!7352426))

(assert (= (and d!2280798 (not c!1365993)) b!7352427))

(assert (= (and d!2280798 res!2969120) b!7352428))

(assert (= (and b!7352428 res!2969119) b!7352429))

(declare-fun m!8013206 () Bool)

(assert (=> b!7352427 m!8013206))

(declare-fun m!8013208 () Bool)

(assert (=> d!2280798 m!8013208))

(declare-fun m!8013210 () Bool)

(assert (=> d!2280798 m!8013210))

(assert (=> d!2280798 m!8013138))

(declare-fun m!8013212 () Bool)

(assert (=> b!7352428 m!8013212))

(declare-fun m!8013214 () Bool)

(assert (=> b!7352428 m!8013214))

(assert (=> b!7352428 m!8013144))

(assert (=> b!7352276 d!2280798))

(declare-fun d!2280800 () Bool)

(assert (=> d!2280800 (forall!17996 (++!16992 (exprs!8614 cWitness!61) (exprs!8614 ct2!378)) lambda!456672)))

(declare-fun lt!2612506 () Unit!165301)

(assert (=> d!2280800 (= lt!2612506 (choose!57193 (exprs!8614 cWitness!61) (exprs!8614 ct2!378) lambda!456672))))

(assert (=> d!2280800 (forall!17996 (exprs!8614 cWitness!61) lambda!456672)))

(assert (=> d!2280800 (= (lemmaConcatPreservesForall!1849 (exprs!8614 cWitness!61) (exprs!8614 ct2!378) lambda!456672) lt!2612506)))

(declare-fun bs!1919426 () Bool)

(assert (= bs!1919426 d!2280800))

(assert (=> bs!1919426 m!8013046))

(assert (=> bs!1919426 m!8013046))

(declare-fun m!8013216 () Bool)

(assert (=> bs!1919426 m!8013216))

(declare-fun m!8013218 () Bool)

(assert (=> bs!1919426 m!8013218))

(assert (=> bs!1919426 m!8013062))

(assert (=> b!7352276 d!2280800))

(declare-fun b!7352430 () Bool)

(declare-fun e!4402304 () (Set Context!16228))

(assert (=> b!7352430 (= e!4402304 (as set.empty (Set Context!16228)))))

(declare-fun bm!672697 () Bool)

(declare-fun call!672702 () (Set Context!16228))

(declare-fun call!672703 () (Set Context!16228))

(assert (=> bm!672697 (= call!672702 call!672703)))

(declare-fun b!7352431 () Bool)

(declare-fun e!4402305 () (Set Context!16228))

(declare-fun e!4402301 () (Set Context!16228))

(assert (=> b!7352431 (= e!4402305 e!4402301)))

(declare-fun c!1365997 () Bool)

(assert (=> b!7352431 (= c!1365997 (is-Concat!28019 (regOne!38860 r1!2370)))))

(declare-fun d!2280802 () Bool)

(declare-fun c!1365995 () Bool)

(assert (=> d!2280802 (= c!1365995 (and (is-ElementMatch!19174 (regOne!38860 r1!2370)) (= (c!1365958 (regOne!38860 r1!2370)) c!10362)))))

(declare-fun e!4402303 () (Set Context!16228))

(assert (=> d!2280802 (= (derivationStepZipperDown!3000 (regOne!38860 r1!2370) lt!2612448 c!10362) e!4402303)))

(declare-fun bm!672698 () Bool)

(declare-fun call!672704 () List!71670)

(declare-fun call!672705 () (Set Context!16228))

(declare-fun c!1365998 () Bool)

(assert (=> bm!672698 (= call!672705 (derivationStepZipperDown!3000 (ite c!1365998 (regTwo!38861 (regOne!38860 r1!2370)) (regOne!38860 (regOne!38860 r1!2370))) (ite c!1365998 lt!2612448 (Context!16229 call!672704)) c!10362))))

(declare-fun b!7352432 () Bool)

(assert (=> b!7352432 (= e!4402303 (set.insert lt!2612448 (as set.empty (Set Context!16228))))))

(declare-fun b!7352433 () Bool)

(declare-fun e!4402306 () (Set Context!16228))

(assert (=> b!7352433 (= e!4402303 e!4402306)))

(assert (=> b!7352433 (= c!1365998 (is-Union!19174 (regOne!38860 r1!2370)))))

(declare-fun b!7352434 () Bool)

(assert (=> b!7352434 (= e!4402305 (set.union call!672705 call!672703))))

(declare-fun bm!672699 () Bool)

(declare-fun c!1365994 () Bool)

(assert (=> bm!672699 (= call!672704 ($colon$colon!3172 (exprs!8614 lt!2612448) (ite (or c!1365994 c!1365997) (regTwo!38860 (regOne!38860 r1!2370)) (regOne!38860 r1!2370))))))

(declare-fun bm!672700 () Bool)

(declare-fun call!672706 () (Set Context!16228))

(assert (=> bm!672700 (= call!672703 call!672706)))

(declare-fun b!7352435 () Bool)

(assert (=> b!7352435 (= e!4402304 call!672702)))

(declare-fun bm!672701 () Bool)

(declare-fun call!672707 () List!71670)

(assert (=> bm!672701 (= call!672706 (derivationStepZipperDown!3000 (ite c!1365998 (regOne!38861 (regOne!38860 r1!2370)) (ite c!1365994 (regTwo!38860 (regOne!38860 r1!2370)) (ite c!1365997 (regOne!38860 (regOne!38860 r1!2370)) (reg!19503 (regOne!38860 r1!2370))))) (ite (or c!1365998 c!1365994) lt!2612448 (Context!16229 call!672707)) c!10362))))

(declare-fun b!7352436 () Bool)

(assert (=> b!7352436 (= e!4402301 call!672702)))

(declare-fun b!7352437 () Bool)

(declare-fun c!1365996 () Bool)

(assert (=> b!7352437 (= c!1365996 (is-Star!19174 (regOne!38860 r1!2370)))))

(assert (=> b!7352437 (= e!4402301 e!4402304)))

(declare-fun bm!672702 () Bool)

(assert (=> bm!672702 (= call!672707 call!672704)))

(declare-fun b!7352438 () Bool)

(assert (=> b!7352438 (= e!4402306 (set.union call!672706 call!672705))))

(declare-fun b!7352439 () Bool)

(declare-fun e!4402302 () Bool)

(assert (=> b!7352439 (= e!4402302 (nullable!8265 (regOne!38860 (regOne!38860 r1!2370))))))

(declare-fun b!7352440 () Bool)

(assert (=> b!7352440 (= c!1365994 e!4402302)))

(declare-fun res!2969121 () Bool)

(assert (=> b!7352440 (=> (not res!2969121) (not e!4402302))))

(assert (=> b!7352440 (= res!2969121 (is-Concat!28019 (regOne!38860 r1!2370)))))

(assert (=> b!7352440 (= e!4402306 e!4402305)))

(assert (= (and d!2280802 c!1365995) b!7352432))

(assert (= (and d!2280802 (not c!1365995)) b!7352433))

(assert (= (and b!7352433 c!1365998) b!7352438))

(assert (= (and b!7352433 (not c!1365998)) b!7352440))

(assert (= (and b!7352440 res!2969121) b!7352439))

(assert (= (and b!7352440 c!1365994) b!7352434))

(assert (= (and b!7352440 (not c!1365994)) b!7352431))

(assert (= (and b!7352431 c!1365997) b!7352436))

(assert (= (and b!7352431 (not c!1365997)) b!7352437))

(assert (= (and b!7352437 c!1365996) b!7352435))

(assert (= (and b!7352437 (not c!1365996)) b!7352430))

(assert (= (or b!7352436 b!7352435) bm!672702))

(assert (= (or b!7352436 b!7352435) bm!672697))

(assert (= (or b!7352434 bm!672697) bm!672700))

(assert (= (or b!7352434 bm!672702) bm!672699))

(assert (= (or b!7352438 b!7352434) bm!672698))

(assert (= (or b!7352438 bm!672700) bm!672701))

(declare-fun m!8013220 () Bool)

(assert (=> bm!672701 m!8013220))

(declare-fun m!8013222 () Bool)

(assert (=> bm!672699 m!8013222))

(assert (=> b!7352439 m!8013172))

(declare-fun m!8013224 () Bool)

(assert (=> bm!672698 m!8013224))

(declare-fun m!8013226 () Bool)

(assert (=> b!7352432 m!8013226))

(assert (=> b!7352270 d!2280802))

(declare-fun d!2280804 () Bool)

(assert (=> d!2280804 (= ($colon$colon!3172 (exprs!8614 ct1!282) (regTwo!38860 r1!2370)) (Cons!71546 (regTwo!38860 r1!2370) (exprs!8614 ct1!282)))))

(assert (=> b!7352270 d!2280804))

(declare-fun d!2280806 () Bool)

(declare-fun res!2969138 () Bool)

(declare-fun e!4402339 () Bool)

(assert (=> d!2280806 (=> res!2969138 e!4402339)))

(assert (=> d!2280806 (= res!2969138 (is-ElementMatch!19174 (regTwo!38860 r1!2370)))))

(assert (=> d!2280806 (= (validRegex!9770 (regTwo!38860 r1!2370)) e!4402339)))

(declare-fun bm!672719 () Bool)

(declare-fun call!672727 () Bool)

(declare-fun c!1366014 () Bool)

(assert (=> bm!672719 (= call!672727 (validRegex!9770 (ite c!1366014 (regOne!38861 (regTwo!38860 r1!2370)) (regTwo!38860 (regTwo!38860 r1!2370)))))))

(declare-fun b!7352481 () Bool)

(declare-fun e!4402338 () Bool)

(declare-fun call!672728 () Bool)

(assert (=> b!7352481 (= e!4402338 call!672728)))

(declare-fun b!7352482 () Bool)

(declare-fun res!2969135 () Bool)

(assert (=> b!7352482 (=> (not res!2969135) (not e!4402338))))

(assert (=> b!7352482 (= res!2969135 call!672727)))

(declare-fun e!4402337 () Bool)

(assert (=> b!7352482 (= e!4402337 e!4402338)))

(declare-fun b!7352483 () Bool)

(declare-fun e!4402334 () Bool)

(declare-fun e!4402336 () Bool)

(assert (=> b!7352483 (= e!4402334 e!4402336)))

(declare-fun res!2969137 () Bool)

(assert (=> b!7352483 (= res!2969137 (not (nullable!8265 (reg!19503 (regTwo!38860 r1!2370)))))))

(assert (=> b!7352483 (=> (not res!2969137) (not e!4402336))))

(declare-fun b!7352484 () Bool)

(assert (=> b!7352484 (= e!4402339 e!4402334)))

(declare-fun c!1366013 () Bool)

(assert (=> b!7352484 (= c!1366013 (is-Star!19174 (regTwo!38860 r1!2370)))))

(declare-fun b!7352485 () Bool)

(assert (=> b!7352485 (= e!4402334 e!4402337)))

(assert (=> b!7352485 (= c!1366014 (is-Union!19174 (regTwo!38860 r1!2370)))))

(declare-fun b!7352486 () Bool)

(declare-fun e!4402333 () Bool)

(assert (=> b!7352486 (= e!4402333 call!672727)))

(declare-fun bm!672720 () Bool)

(declare-fun call!672726 () Bool)

(assert (=> bm!672720 (= call!672726 (validRegex!9770 (ite c!1366013 (reg!19503 (regTwo!38860 r1!2370)) (ite c!1366014 (regTwo!38861 (regTwo!38860 r1!2370)) (regOne!38860 (regTwo!38860 r1!2370))))))))

(declare-fun b!7352487 () Bool)

(declare-fun res!2969136 () Bool)

(declare-fun e!4402335 () Bool)

(assert (=> b!7352487 (=> res!2969136 e!4402335)))

(assert (=> b!7352487 (= res!2969136 (not (is-Concat!28019 (regTwo!38860 r1!2370))))))

(assert (=> b!7352487 (= e!4402337 e!4402335)))

(declare-fun bm!672721 () Bool)

(assert (=> bm!672721 (= call!672728 call!672726)))

(declare-fun b!7352488 () Bool)

(assert (=> b!7352488 (= e!4402335 e!4402333)))

(declare-fun res!2969134 () Bool)

(assert (=> b!7352488 (=> (not res!2969134) (not e!4402333))))

(assert (=> b!7352488 (= res!2969134 call!672728)))

(declare-fun b!7352489 () Bool)

(assert (=> b!7352489 (= e!4402336 call!672726)))

(assert (= (and d!2280806 (not res!2969138)) b!7352484))

(assert (= (and b!7352484 c!1366013) b!7352483))

(assert (= (and b!7352484 (not c!1366013)) b!7352485))

(assert (= (and b!7352483 res!2969137) b!7352489))

(assert (= (and b!7352485 c!1366014) b!7352482))

(assert (= (and b!7352485 (not c!1366014)) b!7352487))

(assert (= (and b!7352482 res!2969135) b!7352481))

(assert (= (and b!7352487 (not res!2969136)) b!7352488))

(assert (= (and b!7352488 res!2969134) b!7352486))

(assert (= (or b!7352482 b!7352486) bm!672719))

(assert (= (or b!7352481 b!7352488) bm!672721))

(assert (= (or b!7352489 bm!672721) bm!672720))

(declare-fun m!8013228 () Bool)

(assert (=> bm!672719 m!8013228))

(declare-fun m!8013230 () Bool)

(assert (=> b!7352483 m!8013230))

(declare-fun m!8013232 () Bool)

(assert (=> bm!672720 m!8013232))

(assert (=> b!7352275 d!2280806))

(declare-fun b!7352490 () Bool)

(declare-fun e!4402343 () (Set Context!16228))

(assert (=> b!7352490 (= e!4402343 (as set.empty (Set Context!16228)))))

(declare-fun bm!672724 () Bool)

(declare-fun call!672729 () (Set Context!16228))

(declare-fun call!672730 () (Set Context!16228))

(assert (=> bm!672724 (= call!672729 call!672730)))

(declare-fun b!7352491 () Bool)

(declare-fun e!4402344 () (Set Context!16228))

(declare-fun e!4402340 () (Set Context!16228))

(assert (=> b!7352491 (= e!4402344 e!4402340)))

(declare-fun c!1366018 () Bool)

(assert (=> b!7352491 (= c!1366018 (is-Concat!28019 r1!2370))))

(declare-fun d!2280808 () Bool)

(declare-fun c!1366016 () Bool)

(assert (=> d!2280808 (= c!1366016 (and (is-ElementMatch!19174 r1!2370) (= (c!1365958 r1!2370) c!10362)))))

(declare-fun e!4402342 () (Set Context!16228))

(assert (=> d!2280808 (= (derivationStepZipperDown!3000 r1!2370 ct1!282 c!10362) e!4402342)))

(declare-fun call!672731 () List!71670)

(declare-fun bm!672725 () Bool)

(declare-fun c!1366019 () Bool)

(declare-fun call!672732 () (Set Context!16228))

(assert (=> bm!672725 (= call!672732 (derivationStepZipperDown!3000 (ite c!1366019 (regTwo!38861 r1!2370) (regOne!38860 r1!2370)) (ite c!1366019 ct1!282 (Context!16229 call!672731)) c!10362))))

(declare-fun b!7352492 () Bool)

(assert (=> b!7352492 (= e!4402342 (set.insert ct1!282 (as set.empty (Set Context!16228))))))

(declare-fun b!7352493 () Bool)

(declare-fun e!4402345 () (Set Context!16228))

(assert (=> b!7352493 (= e!4402342 e!4402345)))

(assert (=> b!7352493 (= c!1366019 (is-Union!19174 r1!2370))))

(declare-fun b!7352494 () Bool)

(assert (=> b!7352494 (= e!4402344 (set.union call!672732 call!672730))))

(declare-fun c!1366015 () Bool)

(declare-fun bm!672726 () Bool)

(assert (=> bm!672726 (= call!672731 ($colon$colon!3172 (exprs!8614 ct1!282) (ite (or c!1366015 c!1366018) (regTwo!38860 r1!2370) r1!2370)))))

(declare-fun bm!672727 () Bool)

(declare-fun call!672733 () (Set Context!16228))

(assert (=> bm!672727 (= call!672730 call!672733)))

(declare-fun b!7352495 () Bool)

(assert (=> b!7352495 (= e!4402343 call!672729)))

(declare-fun bm!672728 () Bool)

(declare-fun call!672734 () List!71670)

(assert (=> bm!672728 (= call!672733 (derivationStepZipperDown!3000 (ite c!1366019 (regOne!38861 r1!2370) (ite c!1366015 (regTwo!38860 r1!2370) (ite c!1366018 (regOne!38860 r1!2370) (reg!19503 r1!2370)))) (ite (or c!1366019 c!1366015) ct1!282 (Context!16229 call!672734)) c!10362))))

(declare-fun b!7352496 () Bool)

(assert (=> b!7352496 (= e!4402340 call!672729)))

(declare-fun b!7352497 () Bool)

(declare-fun c!1366017 () Bool)

(assert (=> b!7352497 (= c!1366017 (is-Star!19174 r1!2370))))

(assert (=> b!7352497 (= e!4402340 e!4402343)))

(declare-fun bm!672729 () Bool)

(assert (=> bm!672729 (= call!672734 call!672731)))

(declare-fun b!7352498 () Bool)

(assert (=> b!7352498 (= e!4402345 (set.union call!672733 call!672732))))

(declare-fun b!7352499 () Bool)

(declare-fun e!4402341 () Bool)

(assert (=> b!7352499 (= e!4402341 (nullable!8265 (regOne!38860 r1!2370)))))

(declare-fun b!7352500 () Bool)

(assert (=> b!7352500 (= c!1366015 e!4402341)))

(declare-fun res!2969139 () Bool)

(assert (=> b!7352500 (=> (not res!2969139) (not e!4402341))))

(assert (=> b!7352500 (= res!2969139 (is-Concat!28019 r1!2370))))

(assert (=> b!7352500 (= e!4402345 e!4402344)))

(assert (= (and d!2280808 c!1366016) b!7352492))

(assert (= (and d!2280808 (not c!1366016)) b!7352493))

(assert (= (and b!7352493 c!1366019) b!7352498))

(assert (= (and b!7352493 (not c!1366019)) b!7352500))

(assert (= (and b!7352500 res!2969139) b!7352499))

(assert (= (and b!7352500 c!1366015) b!7352494))

(assert (= (and b!7352500 (not c!1366015)) b!7352491))

(assert (= (and b!7352491 c!1366018) b!7352496))

(assert (= (and b!7352491 (not c!1366018)) b!7352497))

(assert (= (and b!7352497 c!1366017) b!7352495))

(assert (= (and b!7352497 (not c!1366017)) b!7352490))

(assert (= (or b!7352496 b!7352495) bm!672729))

(assert (= (or b!7352496 b!7352495) bm!672724))

(assert (= (or b!7352494 bm!672724) bm!672727))

(assert (= (or b!7352494 bm!672729) bm!672726))

(assert (= (or b!7352498 b!7352494) bm!672725))

(assert (= (or b!7352498 bm!672727) bm!672728))

(declare-fun m!8013234 () Bool)

(assert (=> bm!672728 m!8013234))

(declare-fun m!8013236 () Bool)

(assert (=> bm!672726 m!8013236))

(assert (=> b!7352499 m!8013034))

(declare-fun m!8013238 () Bool)

(assert (=> bm!672725 m!8013238))

(declare-fun m!8013240 () Bool)

(assert (=> b!7352492 m!8013240))

(assert (=> b!7352264 d!2280808))

(declare-fun d!2280810 () Bool)

(declare-fun res!2969144 () Bool)

(declare-fun e!4402352 () Bool)

(assert (=> d!2280810 (=> res!2969144 e!4402352)))

(assert (=> d!2280810 (= res!2969144 (is-ElementMatch!19174 r1!2370))))

(assert (=> d!2280810 (= (validRegex!9770 r1!2370) e!4402352)))

(declare-fun bm!672730 () Bool)

(declare-fun call!672736 () Bool)

(declare-fun c!1366021 () Bool)

(assert (=> bm!672730 (= call!672736 (validRegex!9770 (ite c!1366021 (regOne!38861 r1!2370) (regTwo!38860 r1!2370))))))

(declare-fun b!7352501 () Bool)

(declare-fun e!4402351 () Bool)

(declare-fun call!672737 () Bool)

(assert (=> b!7352501 (= e!4402351 call!672737)))

(declare-fun b!7352502 () Bool)

(declare-fun res!2969141 () Bool)

(assert (=> b!7352502 (=> (not res!2969141) (not e!4402351))))

(assert (=> b!7352502 (= res!2969141 call!672736)))

(declare-fun e!4402350 () Bool)

(assert (=> b!7352502 (= e!4402350 e!4402351)))

(declare-fun b!7352503 () Bool)

(declare-fun e!4402347 () Bool)

(declare-fun e!4402349 () Bool)

(assert (=> b!7352503 (= e!4402347 e!4402349)))

(declare-fun res!2969143 () Bool)

(assert (=> b!7352503 (= res!2969143 (not (nullable!8265 (reg!19503 r1!2370))))))

(assert (=> b!7352503 (=> (not res!2969143) (not e!4402349))))

(declare-fun b!7352504 () Bool)

(assert (=> b!7352504 (= e!4402352 e!4402347)))

(declare-fun c!1366020 () Bool)

(assert (=> b!7352504 (= c!1366020 (is-Star!19174 r1!2370))))

(declare-fun b!7352505 () Bool)

(assert (=> b!7352505 (= e!4402347 e!4402350)))

(assert (=> b!7352505 (= c!1366021 (is-Union!19174 r1!2370))))

(declare-fun b!7352506 () Bool)

(declare-fun e!4402346 () Bool)

(assert (=> b!7352506 (= e!4402346 call!672736)))

(declare-fun call!672735 () Bool)

(declare-fun bm!672731 () Bool)

(assert (=> bm!672731 (= call!672735 (validRegex!9770 (ite c!1366020 (reg!19503 r1!2370) (ite c!1366021 (regTwo!38861 r1!2370) (regOne!38860 r1!2370)))))))

(declare-fun b!7352507 () Bool)

(declare-fun res!2969142 () Bool)

(declare-fun e!4402348 () Bool)

(assert (=> b!7352507 (=> res!2969142 e!4402348)))

(assert (=> b!7352507 (= res!2969142 (not (is-Concat!28019 r1!2370)))))

(assert (=> b!7352507 (= e!4402350 e!4402348)))

(declare-fun bm!672732 () Bool)

(assert (=> bm!672732 (= call!672737 call!672735)))

(declare-fun b!7352508 () Bool)

(assert (=> b!7352508 (= e!4402348 e!4402346)))

(declare-fun res!2969140 () Bool)

(assert (=> b!7352508 (=> (not res!2969140) (not e!4402346))))

(assert (=> b!7352508 (= res!2969140 call!672737)))

(declare-fun b!7352509 () Bool)

(assert (=> b!7352509 (= e!4402349 call!672735)))

(assert (= (and d!2280810 (not res!2969144)) b!7352504))

(assert (= (and b!7352504 c!1366020) b!7352503))

(assert (= (and b!7352504 (not c!1366020)) b!7352505))

(assert (= (and b!7352503 res!2969143) b!7352509))

(assert (= (and b!7352505 c!1366021) b!7352502))

(assert (= (and b!7352505 (not c!1366021)) b!7352507))

(assert (= (and b!7352502 res!2969141) b!7352501))

(assert (= (and b!7352507 (not res!2969142)) b!7352508))

(assert (= (and b!7352508 res!2969140) b!7352506))

(assert (= (or b!7352502 b!7352506) bm!672730))

(assert (= (or b!7352501 b!7352508) bm!672732))

(assert (= (or b!7352509 bm!672732) bm!672731))

(declare-fun m!8013242 () Bool)

(assert (=> bm!672730 m!8013242))

(declare-fun m!8013244 () Bool)

(assert (=> b!7352503 m!8013244))

(declare-fun m!8013246 () Bool)

(assert (=> bm!672731 m!8013246))

(assert (=> start!717966 d!2280810))

(declare-fun bs!1919427 () Bool)

(declare-fun d!2280812 () Bool)

(assert (= bs!1919427 (and d!2280812 b!7352266)))

(declare-fun lambda!456696 () Int)

(assert (=> bs!1919427 (= lambda!456696 lambda!456672)))

(declare-fun bs!1919428 () Bool)

(assert (= bs!1919428 (and d!2280812 d!2280790)))

(assert (=> bs!1919428 (= lambda!456696 lambda!456693)))

(assert (=> d!2280812 (= (inv!91276 cWitness!61) (forall!17996 (exprs!8614 cWitness!61) lambda!456696))))

(declare-fun bs!1919429 () Bool)

(assert (= bs!1919429 d!2280812))

(declare-fun m!8013248 () Bool)

(assert (=> bs!1919429 m!8013248))

(assert (=> start!717966 d!2280812))

(declare-fun bs!1919430 () Bool)

(declare-fun d!2280814 () Bool)

(assert (= bs!1919430 (and d!2280814 b!7352266)))

(declare-fun lambda!456697 () Int)

(assert (=> bs!1919430 (= lambda!456697 lambda!456672)))

(declare-fun bs!1919431 () Bool)

(assert (= bs!1919431 (and d!2280814 d!2280790)))

(assert (=> bs!1919431 (= lambda!456697 lambda!456693)))

(declare-fun bs!1919432 () Bool)

(assert (= bs!1919432 (and d!2280814 d!2280812)))

(assert (=> bs!1919432 (= lambda!456697 lambda!456696)))

(assert (=> d!2280814 (= (inv!91276 ct1!282) (forall!17996 (exprs!8614 ct1!282) lambda!456697))))

(declare-fun bs!1919433 () Bool)

(assert (= bs!1919433 d!2280814))

(declare-fun m!8013250 () Bool)

(assert (=> bs!1919433 m!8013250))

(assert (=> start!717966 d!2280814))

(declare-fun bs!1919434 () Bool)

(declare-fun d!2280816 () Bool)

(assert (= bs!1919434 (and d!2280816 b!7352266)))

(declare-fun lambda!456698 () Int)

(assert (=> bs!1919434 (= lambda!456698 lambda!456672)))

(declare-fun bs!1919435 () Bool)

(assert (= bs!1919435 (and d!2280816 d!2280790)))

(assert (=> bs!1919435 (= lambda!456698 lambda!456693)))

(declare-fun bs!1919436 () Bool)

(assert (= bs!1919436 (and d!2280816 d!2280812)))

(assert (=> bs!1919436 (= lambda!456698 lambda!456696)))

(declare-fun bs!1919437 () Bool)

(assert (= bs!1919437 (and d!2280816 d!2280814)))

(assert (=> bs!1919437 (= lambda!456698 lambda!456697)))

(assert (=> d!2280816 (= (inv!91276 ct2!378) (forall!17996 (exprs!8614 ct2!378) lambda!456698))))

(declare-fun bs!1919438 () Bool)

(assert (= bs!1919438 d!2280816))

(declare-fun m!8013252 () Bool)

(assert (=> bs!1919438 m!8013252))

(assert (=> start!717966 d!2280816))

(declare-fun d!2280818 () Bool)

(declare-fun res!2969149 () Bool)

(declare-fun e!4402357 () Bool)

(assert (=> d!2280818 (=> res!2969149 e!4402357)))

(assert (=> d!2280818 (= res!2969149 (is-Nil!71546 (exprs!8614 ct2!378)))))

(assert (=> d!2280818 (= (forall!17996 (exprs!8614 ct2!378) lambda!456672) e!4402357)))

(declare-fun b!7352514 () Bool)

(declare-fun e!4402358 () Bool)

(assert (=> b!7352514 (= e!4402357 e!4402358)))

(declare-fun res!2969150 () Bool)

(assert (=> b!7352514 (=> (not res!2969150) (not e!4402358))))

(declare-fun dynLambda!29498 (Int Regex!19174) Bool)

(assert (=> b!7352514 (= res!2969150 (dynLambda!29498 lambda!456672 (h!77994 (exprs!8614 ct2!378))))))

(declare-fun b!7352515 () Bool)

(assert (=> b!7352515 (= e!4402358 (forall!17996 (t!386095 (exprs!8614 ct2!378)) lambda!456672))))

(assert (= (and d!2280818 (not res!2969149)) b!7352514))

(assert (= (and b!7352514 res!2969150) b!7352515))

(declare-fun b_lambda!284155 () Bool)

(assert (=> (not b_lambda!284155) (not b!7352514)))

(declare-fun m!8013254 () Bool)

(assert (=> b!7352514 m!8013254))

(declare-fun m!8013256 () Bool)

(assert (=> b!7352515 m!8013256))

(assert (=> b!7352268 d!2280818))

(declare-fun d!2280820 () Bool)

(declare-fun res!2969151 () Bool)

(declare-fun e!4402359 () Bool)

(assert (=> d!2280820 (=> res!2969151 e!4402359)))

(assert (=> d!2280820 (= res!2969151 (is-Nil!71546 (exprs!8614 cWitness!61)))))

(assert (=> d!2280820 (= (forall!17996 (exprs!8614 cWitness!61) lambda!456672) e!4402359)))

(declare-fun b!7352516 () Bool)

(declare-fun e!4402360 () Bool)

(assert (=> b!7352516 (= e!4402359 e!4402360)))

(declare-fun res!2969152 () Bool)

(assert (=> b!7352516 (=> (not res!2969152) (not e!4402360))))

(assert (=> b!7352516 (= res!2969152 (dynLambda!29498 lambda!456672 (h!77994 (exprs!8614 cWitness!61))))))

(declare-fun b!7352517 () Bool)

(assert (=> b!7352517 (= e!4402360 (forall!17996 (t!386095 (exprs!8614 cWitness!61)) lambda!456672))))

(assert (= (and d!2280820 (not res!2969151)) b!7352516))

(assert (= (and b!7352516 res!2969152) b!7352517))

(declare-fun b_lambda!284157 () Bool)

(assert (=> (not b_lambda!284157) (not b!7352516)))

(declare-fun m!8013258 () Bool)

(assert (=> b!7352516 m!8013258))

(declare-fun m!8013260 () Bool)

(assert (=> b!7352517 m!8013260))

(assert (=> b!7352278 d!2280820))

(declare-fun b!7352530 () Bool)

(declare-fun e!4402363 () Bool)

(declare-fun tp!2088361 () Bool)

(assert (=> b!7352530 (= e!4402363 tp!2088361)))

(declare-fun b!7352528 () Bool)

(assert (=> b!7352528 (= e!4402363 tp_is_empty!48593)))

(assert (=> b!7352272 (= tp!2088322 e!4402363)))

(declare-fun b!7352531 () Bool)

(declare-fun tp!2088362 () Bool)

(declare-fun tp!2088358 () Bool)

(assert (=> b!7352531 (= e!4402363 (and tp!2088362 tp!2088358))))

(declare-fun b!7352529 () Bool)

(declare-fun tp!2088360 () Bool)

(declare-fun tp!2088359 () Bool)

(assert (=> b!7352529 (= e!4402363 (and tp!2088360 tp!2088359))))

(assert (= (and b!7352272 (is-ElementMatch!19174 (regOne!38861 r1!2370))) b!7352528))

(assert (= (and b!7352272 (is-Concat!28019 (regOne!38861 r1!2370))) b!7352529))

(assert (= (and b!7352272 (is-Star!19174 (regOne!38861 r1!2370))) b!7352530))

(assert (= (and b!7352272 (is-Union!19174 (regOne!38861 r1!2370))) b!7352531))

(declare-fun b!7352534 () Bool)

(declare-fun e!4402364 () Bool)

(declare-fun tp!2088366 () Bool)

(assert (=> b!7352534 (= e!4402364 tp!2088366)))

(declare-fun b!7352532 () Bool)

(assert (=> b!7352532 (= e!4402364 tp_is_empty!48593)))

(assert (=> b!7352272 (= tp!2088319 e!4402364)))

(declare-fun b!7352535 () Bool)

(declare-fun tp!2088367 () Bool)

(declare-fun tp!2088363 () Bool)

(assert (=> b!7352535 (= e!4402364 (and tp!2088367 tp!2088363))))

(declare-fun b!7352533 () Bool)

(declare-fun tp!2088365 () Bool)

(declare-fun tp!2088364 () Bool)

(assert (=> b!7352533 (= e!4402364 (and tp!2088365 tp!2088364))))

(assert (= (and b!7352272 (is-ElementMatch!19174 (regTwo!38861 r1!2370))) b!7352532))

(assert (= (and b!7352272 (is-Concat!28019 (regTwo!38861 r1!2370))) b!7352533))

(assert (= (and b!7352272 (is-Star!19174 (regTwo!38861 r1!2370))) b!7352534))

(assert (= (and b!7352272 (is-Union!19174 (regTwo!38861 r1!2370))) b!7352535))

(declare-fun b!7352540 () Bool)

(declare-fun e!4402367 () Bool)

(declare-fun tp!2088372 () Bool)

(declare-fun tp!2088373 () Bool)

(assert (=> b!7352540 (= e!4402367 (and tp!2088372 tp!2088373))))

(assert (=> b!7352265 (= tp!2088316 e!4402367)))

(assert (= (and b!7352265 (is-Cons!71546 (exprs!8614 ct1!282))) b!7352540))

(declare-fun b!7352543 () Bool)

(declare-fun e!4402368 () Bool)

(declare-fun tp!2088377 () Bool)

(assert (=> b!7352543 (= e!4402368 tp!2088377)))

(declare-fun b!7352541 () Bool)

(assert (=> b!7352541 (= e!4402368 tp_is_empty!48593)))

(assert (=> b!7352269 (= tp!2088318 e!4402368)))

(declare-fun b!7352544 () Bool)

(declare-fun tp!2088378 () Bool)

(declare-fun tp!2088374 () Bool)

(assert (=> b!7352544 (= e!4402368 (and tp!2088378 tp!2088374))))

(declare-fun b!7352542 () Bool)

(declare-fun tp!2088376 () Bool)

(declare-fun tp!2088375 () Bool)

(assert (=> b!7352542 (= e!4402368 (and tp!2088376 tp!2088375))))

(assert (= (and b!7352269 (is-ElementMatch!19174 (reg!19503 r1!2370))) b!7352541))

(assert (= (and b!7352269 (is-Concat!28019 (reg!19503 r1!2370))) b!7352542))

(assert (= (and b!7352269 (is-Star!19174 (reg!19503 r1!2370))) b!7352543))

(assert (= (and b!7352269 (is-Union!19174 (reg!19503 r1!2370))) b!7352544))

(declare-fun b!7352545 () Bool)

(declare-fun e!4402369 () Bool)

(declare-fun tp!2088379 () Bool)

(declare-fun tp!2088380 () Bool)

(assert (=> b!7352545 (= e!4402369 (and tp!2088379 tp!2088380))))

(assert (=> b!7352274 (= tp!2088323 e!4402369)))

(assert (= (and b!7352274 (is-Cons!71546 (exprs!8614 ct2!378))) b!7352545))

(declare-fun b!7352546 () Bool)

(declare-fun e!4402371 () Bool)

(declare-fun tp!2088381 () Bool)

(declare-fun tp!2088382 () Bool)

(assert (=> b!7352546 (= e!4402371 (and tp!2088381 tp!2088382))))

(assert (=> b!7352263 (= tp!2088320 e!4402371)))

(assert (= (and b!7352263 (is-Cons!71546 (exprs!8614 cWitness!61))) b!7352546))

(declare-fun b!7352559 () Bool)

(declare-fun e!4402377 () Bool)

(declare-fun tp!2088386 () Bool)

(assert (=> b!7352559 (= e!4402377 tp!2088386)))

(declare-fun b!7352555 () Bool)

(assert (=> b!7352555 (= e!4402377 tp_is_empty!48593)))

(assert (=> b!7352267 (= tp!2088317 e!4402377)))

(declare-fun b!7352560 () Bool)

(declare-fun tp!2088387 () Bool)

(declare-fun tp!2088383 () Bool)

(assert (=> b!7352560 (= e!4402377 (and tp!2088387 tp!2088383))))

(declare-fun b!7352557 () Bool)

(declare-fun tp!2088385 () Bool)

(declare-fun tp!2088384 () Bool)

(assert (=> b!7352557 (= e!4402377 (and tp!2088385 tp!2088384))))

(assert (= (and b!7352267 (is-ElementMatch!19174 (regOne!38860 r1!2370))) b!7352555))

(assert (= (and b!7352267 (is-Concat!28019 (regOne!38860 r1!2370))) b!7352557))

(assert (= (and b!7352267 (is-Star!19174 (regOne!38860 r1!2370))) b!7352559))

(assert (= (and b!7352267 (is-Union!19174 (regOne!38860 r1!2370))) b!7352560))

(declare-fun b!7352564 () Bool)

(declare-fun e!4402378 () Bool)

(declare-fun tp!2088391 () Bool)

(assert (=> b!7352564 (= e!4402378 tp!2088391)))

(declare-fun b!7352562 () Bool)

(assert (=> b!7352562 (= e!4402378 tp_is_empty!48593)))

(assert (=> b!7352267 (= tp!2088321 e!4402378)))

(declare-fun b!7352565 () Bool)

(declare-fun tp!2088392 () Bool)

(declare-fun tp!2088388 () Bool)

(assert (=> b!7352565 (= e!4402378 (and tp!2088392 tp!2088388))))

(declare-fun b!7352563 () Bool)

(declare-fun tp!2088390 () Bool)

(declare-fun tp!2088389 () Bool)

(assert (=> b!7352563 (= e!4402378 (and tp!2088390 tp!2088389))))

(assert (= (and b!7352267 (is-ElementMatch!19174 (regTwo!38860 r1!2370))) b!7352562))

(assert (= (and b!7352267 (is-Concat!28019 (regTwo!38860 r1!2370))) b!7352563))

(assert (= (and b!7352267 (is-Star!19174 (regTwo!38860 r1!2370))) b!7352564))

(assert (= (and b!7352267 (is-Union!19174 (regTwo!38860 r1!2370))) b!7352565))

(declare-fun b_lambda!284159 () Bool)

(assert (= b_lambda!284157 (or b!7352266 b_lambda!284159)))

(declare-fun bs!1919439 () Bool)

(declare-fun d!2280822 () Bool)

(assert (= bs!1919439 (and d!2280822 b!7352266)))

(assert (=> bs!1919439 (= (dynLambda!29498 lambda!456672 (h!77994 (exprs!8614 cWitness!61))) (validRegex!9770 (h!77994 (exprs!8614 cWitness!61))))))

(declare-fun m!8013262 () Bool)

(assert (=> bs!1919439 m!8013262))

(assert (=> b!7352516 d!2280822))

(declare-fun b_lambda!284161 () Bool)

(assert (= b_lambda!284155 (or b!7352266 b_lambda!284161)))

(declare-fun bs!1919440 () Bool)

(declare-fun d!2280824 () Bool)

(assert (= bs!1919440 (and d!2280824 b!7352266)))

(assert (=> bs!1919440 (= (dynLambda!29498 lambda!456672 (h!77994 (exprs!8614 ct2!378))) (validRegex!9770 (h!77994 (exprs!8614 ct2!378))))))

(declare-fun m!8013264 () Bool)

(assert (=> bs!1919440 m!8013264))

(assert (=> b!7352514 d!2280824))

(push 1)

(assert (not b!7352499))

(assert (not d!2280782))

(assert (not b!7352420))

(assert (not b!7352542))

(assert (not bm!672699))

(assert (not b!7352559))

(assert (not b!7352424))

(assert (not bm!672725))

(assert (not b!7352531))

(assert (not d!2280812))

(assert (not b_lambda!284161))

(assert (not b!7352563))

(assert (not b!7352543))

(assert (not b!7352408))

(assert (not bm!672726))

(assert (not d!2280800))

(assert (not bm!672720))

(assert (not d!2280816))

(assert (not b!7352409))

(assert (not b!7352544))

(assert (not d!2280784))

(assert (not d!2280790))

(assert (not b!7352427))

(assert (not b!7352483))

(assert (not bs!1919440))

(assert (not b!7352423))

(assert (not bm!672731))

(assert (not b!7352503))

(assert (not bm!672698))

(assert (not b_lambda!284159))

(assert (not d!2280798))

(assert (not b!7352517))

(assert (not b!7352560))

(assert (not bm!672680))

(assert (not bm!672719))

(assert (not bs!1919439))

(assert (not bm!672683))

(assert (not b!7352515))

(assert (not b!7352529))

(assert (not bm!672728))

(assert (not b!7352546))

(assert (not b!7352379))

(assert (not d!2280796))

(assert (not bm!672681))

(assert (not bm!672730))

(assert (not b!7352557))

(assert (not bm!672692))

(assert (not b!7352565))

(assert tp_is_empty!48593)

(assert (not b!7352564))

(assert (not bm!672701))

(assert (not b!7352439))

(assert (not b!7352545))

(assert (not d!2280778))

(assert (not d!2280814))

(assert (not bm!672695))

(assert (not b!7352533))

(assert (not b!7352534))

(assert (not b!7352530))

(assert (not b!7352535))

(assert (not b!7352428))

(assert (not b!7352540))

(assert (not d!2280774))

(assert (not bm!672693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

