; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689738 () Bool)

(assert start!689738)

(declare-fun res!2894715 () Bool)

(declare-fun e!4260160 () Bool)

(assert (=> start!689738 (=> (not res!2894715) (not e!4260160))))

(declare-datatypes ((C!35766 0))(
  ( (C!35767 (val!27589 Int)) )
))
(declare-datatypes ((Regex!17748 0))(
  ( (ElementMatch!17748 (c!1322499 C!35766)) (Concat!26593 (regOne!36008 Regex!17748) (regTwo!36008 Regex!17748)) (EmptyExpr!17748) (Star!17748 (reg!18077 Regex!17748)) (EmptyLang!17748) (Union!17748 (regOne!36009 Regex!17748) (regTwo!36009 Regex!17748)) )
))
(declare-fun r!11554 () Regex!17748)

(declare-fun validRegex!9023 (Regex!17748) Bool)

(assert (=> start!689738 (= res!2894715 (validRegex!9023 r!11554))))

(assert (=> start!689738 e!4260160))

(declare-fun e!4260161 () Bool)

(assert (=> start!689738 e!4260161))

(declare-fun tp_is_empty!44729 () Bool)

(assert (=> start!689738 tp_is_empty!44729))

(declare-datatypes ((List!68711 0))(
  ( (Nil!68587) (Cons!68587 (h!75035 Regex!17748) (t!382496 List!68711)) )
))
(declare-datatypes ((Context!13488 0))(
  ( (Context!13489 (exprs!7244 List!68711)) )
))
(declare-fun c!9994 () Context!13488)

(declare-fun e!4260158 () Bool)

(declare-fun inv!87236 (Context!13488) Bool)

(assert (=> start!689738 (and (inv!87236 c!9994) e!4260158)))

(declare-fun auxCtx!45 () Context!13488)

(declare-fun e!4260159 () Bool)

(assert (=> start!689738 (and (inv!87236 auxCtx!45) e!4260159)))

(declare-fun b!7086249 () Bool)

(declare-fun tp!1945739 () Bool)

(declare-fun tp!1945738 () Bool)

(assert (=> b!7086249 (= e!4260161 (and tp!1945739 tp!1945738))))

(declare-fun b!7086250 () Bool)

(declare-fun tp!1945735 () Bool)

(assert (=> b!7086250 (= e!4260161 tp!1945735)))

(declare-fun b!7086251 () Bool)

(declare-fun tp!1945737 () Bool)

(assert (=> b!7086251 (= e!4260159 tp!1945737)))

(declare-fun b!7086252 () Bool)

(declare-fun tp!1945736 () Bool)

(declare-fun tp!1945734 () Bool)

(assert (=> b!7086252 (= e!4260161 (and tp!1945736 tp!1945734))))

(declare-fun b!7086253 () Bool)

(declare-fun res!2894716 () Bool)

(assert (=> b!7086253 (=> (not res!2894716) (not e!4260160))))

(declare-fun a!1901 () C!35766)

(assert (=> b!7086253 (= res!2894716 (and (or (not (is-ElementMatch!17748 r!11554)) (not (= (c!1322499 r!11554) a!1901))) (is-Union!17748 r!11554)))))

(declare-fun b!7086254 () Bool)

(assert (=> b!7086254 (= e!4260161 tp_is_empty!44729)))

(declare-fun b!7086255 () Bool)

(declare-fun e!4260157 () Bool)

(assert (=> b!7086255 (= e!4260160 e!4260157)))

(declare-fun res!2894717 () Bool)

(assert (=> b!7086255 (=> (not res!2894717) (not e!4260157))))

(declare-fun lambda!429086 () Int)

(declare-fun forall!16698 (List!68711 Int) Bool)

(assert (=> b!7086255 (= res!2894717 (forall!16698 (exprs!7244 c!9994) lambda!429086))))

(declare-datatypes ((Unit!162195 0))(
  ( (Unit!162196) )
))
(declare-fun lt!2554599 () Unit!162195)

(declare-fun lemmaConcatPreservesForall!1051 (List!68711 List!68711 Int) Unit!162195)

(assert (=> b!7086255 (= lt!2554599 (lemmaConcatPreservesForall!1051 (exprs!7244 c!9994) (exprs!7244 auxCtx!45) lambda!429086))))

(declare-fun lt!2554600 () Unit!162195)

(assert (=> b!7086255 (= lt!2554600 (lemmaConcatPreservesForall!1051 (exprs!7244 c!9994) (exprs!7244 auxCtx!45) lambda!429086))))

(declare-fun b!7086256 () Bool)

(declare-fun tp!1945733 () Bool)

(assert (=> b!7086256 (= e!4260158 tp!1945733)))

(declare-fun b!7086257 () Bool)

(assert (=> b!7086257 (= e!4260157 (not (forall!16698 (exprs!7244 auxCtx!45) lambda!429086)))))

(assert (= (and start!689738 res!2894715) b!7086253))

(assert (= (and b!7086253 res!2894716) b!7086255))

(assert (= (and b!7086255 res!2894717) b!7086257))

(assert (= (and start!689738 (is-ElementMatch!17748 r!11554)) b!7086254))

(assert (= (and start!689738 (is-Concat!26593 r!11554)) b!7086252))

(assert (= (and start!689738 (is-Star!17748 r!11554)) b!7086250))

(assert (= (and start!689738 (is-Union!17748 r!11554)) b!7086249))

(assert (= start!689738 b!7086256))

(assert (= start!689738 b!7086251))

(declare-fun m!7817024 () Bool)

(assert (=> start!689738 m!7817024))

(declare-fun m!7817026 () Bool)

(assert (=> start!689738 m!7817026))

(declare-fun m!7817028 () Bool)

(assert (=> start!689738 m!7817028))

(declare-fun m!7817030 () Bool)

(assert (=> b!7086255 m!7817030))

(declare-fun m!7817032 () Bool)

(assert (=> b!7086255 m!7817032))

(assert (=> b!7086255 m!7817032))

(declare-fun m!7817034 () Bool)

(assert (=> b!7086257 m!7817034))

(push 1)

(assert (not b!7086252))

(assert (not b!7086255))

(assert tp_is_empty!44729)

(assert (not b!7086256))

(assert (not b!7086250))

(assert (not start!689738))

(assert (not b!7086249))

(assert (not b!7086257))

(assert (not b!7086251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2216080 () Bool)

(declare-fun res!2894731 () Bool)

(declare-fun e!4260181 () Bool)

(assert (=> d!2216080 (=> res!2894731 e!4260181)))

(assert (=> d!2216080 (= res!2894731 (is-Nil!68587 (exprs!7244 c!9994)))))

(assert (=> d!2216080 (= (forall!16698 (exprs!7244 c!9994) lambda!429086) e!4260181)))

(declare-fun b!7086289 () Bool)

(declare-fun e!4260182 () Bool)

(assert (=> b!7086289 (= e!4260181 e!4260182)))

(declare-fun res!2894732 () Bool)

(assert (=> b!7086289 (=> (not res!2894732) (not e!4260182))))

(declare-fun dynLambda!27978 (Int Regex!17748) Bool)

(assert (=> b!7086289 (= res!2894732 (dynLambda!27978 lambda!429086 (h!75035 (exprs!7244 c!9994))))))

(declare-fun b!7086290 () Bool)

(assert (=> b!7086290 (= e!4260182 (forall!16698 (t!382496 (exprs!7244 c!9994)) lambda!429086))))

(assert (= (and d!2216080 (not res!2894731)) b!7086289))

(assert (= (and b!7086289 res!2894732) b!7086290))

(declare-fun b_lambda!270889 () Bool)

(assert (=> (not b_lambda!270889) (not b!7086289)))

(declare-fun m!7817048 () Bool)

(assert (=> b!7086289 m!7817048))

(declare-fun m!7817050 () Bool)

(assert (=> b!7086290 m!7817050))

(assert (=> b!7086255 d!2216080))

(declare-fun d!2216082 () Bool)

(declare-fun ++!15921 (List!68711 List!68711) List!68711)

(assert (=> d!2216082 (forall!16698 (++!15921 (exprs!7244 c!9994) (exprs!7244 auxCtx!45)) lambda!429086)))

(declare-fun lt!2554609 () Unit!162195)

(declare-fun choose!54612 (List!68711 List!68711 Int) Unit!162195)

(assert (=> d!2216082 (= lt!2554609 (choose!54612 (exprs!7244 c!9994) (exprs!7244 auxCtx!45) lambda!429086))))

(assert (=> d!2216082 (forall!16698 (exprs!7244 c!9994) lambda!429086)))

(assert (=> d!2216082 (= (lemmaConcatPreservesForall!1051 (exprs!7244 c!9994) (exprs!7244 auxCtx!45) lambda!429086) lt!2554609)))

(declare-fun bs!1882973 () Bool)

(assert (= bs!1882973 d!2216082))

(declare-fun m!7817052 () Bool)

(assert (=> bs!1882973 m!7817052))

(assert (=> bs!1882973 m!7817052))

(declare-fun m!7817054 () Bool)

(assert (=> bs!1882973 m!7817054))

(declare-fun m!7817056 () Bool)

(assert (=> bs!1882973 m!7817056))

(assert (=> bs!1882973 m!7817030))

(assert (=> b!7086255 d!2216082))

(declare-fun b!7086309 () Bool)

(declare-fun e!4260197 () Bool)

(declare-fun call!643921 () Bool)

(assert (=> b!7086309 (= e!4260197 call!643921)))

(declare-fun b!7086310 () Bool)

(declare-fun e!4260201 () Bool)

(declare-fun e!4260203 () Bool)

(assert (=> b!7086310 (= e!4260201 e!4260203)))

(declare-fun c!1322506 () Bool)

(assert (=> b!7086310 (= c!1322506 (is-Union!17748 r!11554))))

(declare-fun bm!643915 () Bool)

(declare-fun call!643920 () Bool)

(assert (=> bm!643915 (= call!643920 (validRegex!9023 (ite c!1322506 (regOne!36009 r!11554) (regTwo!36008 r!11554))))))

(declare-fun b!7086311 () Bool)

(declare-fun res!2894746 () Bool)

(assert (=> b!7086311 (=> (not res!2894746) (not e!4260197))))

(assert (=> b!7086311 (= res!2894746 call!643920)))

(assert (=> b!7086311 (= e!4260203 e!4260197)))

(declare-fun b!7086312 () Bool)

(declare-fun e!4260198 () Bool)

(assert (=> b!7086312 (= e!4260201 e!4260198)))

(declare-fun res!2894747 () Bool)

(declare-fun nullable!7398 (Regex!17748) Bool)

(assert (=> b!7086312 (= res!2894747 (not (nullable!7398 (reg!18077 r!11554))))))

(assert (=> b!7086312 (=> (not res!2894747) (not e!4260198))))

(declare-fun bm!643916 () Bool)

(declare-fun c!1322505 () Bool)

(declare-fun call!643922 () Bool)

(assert (=> bm!643916 (= call!643922 (validRegex!9023 (ite c!1322505 (reg!18077 r!11554) (ite c!1322506 (regTwo!36009 r!11554) (regOne!36008 r!11554)))))))

(declare-fun d!2216084 () Bool)

(declare-fun res!2894745 () Bool)

(declare-fun e!4260200 () Bool)

(assert (=> d!2216084 (=> res!2894745 e!4260200)))

(assert (=> d!2216084 (= res!2894745 (is-ElementMatch!17748 r!11554))))

(assert (=> d!2216084 (= (validRegex!9023 r!11554) e!4260200)))

(declare-fun b!7086313 () Bool)

(declare-fun e!4260202 () Bool)

(assert (=> b!7086313 (= e!4260202 call!643920)))

(declare-fun b!7086314 () Bool)

(declare-fun res!2894743 () Bool)

(declare-fun e!4260199 () Bool)

(assert (=> b!7086314 (=> res!2894743 e!4260199)))

(assert (=> b!7086314 (= res!2894743 (not (is-Concat!26593 r!11554)))))

(assert (=> b!7086314 (= e!4260203 e!4260199)))

(declare-fun b!7086315 () Bool)

(assert (=> b!7086315 (= e!4260198 call!643922)))

(declare-fun bm!643917 () Bool)

(assert (=> bm!643917 (= call!643921 call!643922)))

(declare-fun b!7086316 () Bool)

(assert (=> b!7086316 (= e!4260200 e!4260201)))

(assert (=> b!7086316 (= c!1322505 (is-Star!17748 r!11554))))

(declare-fun b!7086317 () Bool)

(assert (=> b!7086317 (= e!4260199 e!4260202)))

(declare-fun res!2894744 () Bool)

(assert (=> b!7086317 (=> (not res!2894744) (not e!4260202))))

(assert (=> b!7086317 (= res!2894744 call!643921)))

(assert (= (and d!2216084 (not res!2894745)) b!7086316))

(assert (= (and b!7086316 c!1322505) b!7086312))

(assert (= (and b!7086316 (not c!1322505)) b!7086310))

(assert (= (and b!7086312 res!2894747) b!7086315))

(assert (= (and b!7086310 c!1322506) b!7086311))

(assert (= (and b!7086310 (not c!1322506)) b!7086314))

(assert (= (and b!7086311 res!2894746) b!7086309))

(assert (= (and b!7086314 (not res!2894743)) b!7086317))

(assert (= (and b!7086317 res!2894744) b!7086313))

(assert (= (or b!7086311 b!7086313) bm!643915))

(assert (= (or b!7086309 b!7086317) bm!643917))

(assert (= (or b!7086315 bm!643917) bm!643916))

(declare-fun m!7817058 () Bool)

(assert (=> bm!643915 m!7817058))

(declare-fun m!7817060 () Bool)

(assert (=> b!7086312 m!7817060))

(declare-fun m!7817062 () Bool)

(assert (=> bm!643916 m!7817062))

(assert (=> start!689738 d!2216084))

(declare-fun bs!1882974 () Bool)

(declare-fun d!2216088 () Bool)

(assert (= bs!1882974 (and d!2216088 b!7086255)))

(declare-fun lambda!429096 () Int)

(assert (=> bs!1882974 (= lambda!429096 lambda!429086)))

(assert (=> d!2216088 (= (inv!87236 c!9994) (forall!16698 (exprs!7244 c!9994) lambda!429096))))

(declare-fun bs!1882975 () Bool)

(assert (= bs!1882975 d!2216088))

(declare-fun m!7817064 () Bool)

(assert (=> bs!1882975 m!7817064))

(assert (=> start!689738 d!2216088))

(declare-fun bs!1882976 () Bool)

(declare-fun d!2216090 () Bool)

(assert (= bs!1882976 (and d!2216090 b!7086255)))

(declare-fun lambda!429097 () Int)

(assert (=> bs!1882976 (= lambda!429097 lambda!429086)))

(declare-fun bs!1882977 () Bool)

(assert (= bs!1882977 (and d!2216090 d!2216088)))

(assert (=> bs!1882977 (= lambda!429097 lambda!429096)))

(assert (=> d!2216090 (= (inv!87236 auxCtx!45) (forall!16698 (exprs!7244 auxCtx!45) lambda!429097))))

(declare-fun bs!1882978 () Bool)

(assert (= bs!1882978 d!2216090))

(declare-fun m!7817066 () Bool)

(assert (=> bs!1882978 m!7817066))

(assert (=> start!689738 d!2216090))

(declare-fun d!2216092 () Bool)

(declare-fun res!2894758 () Bool)

(declare-fun e!4260218 () Bool)

(assert (=> d!2216092 (=> res!2894758 e!4260218)))

(assert (=> d!2216092 (= res!2894758 (is-Nil!68587 (exprs!7244 auxCtx!45)))))

(assert (=> d!2216092 (= (forall!16698 (exprs!7244 auxCtx!45) lambda!429086) e!4260218)))

(declare-fun b!7086336 () Bool)

(declare-fun e!4260219 () Bool)

(assert (=> b!7086336 (= e!4260218 e!4260219)))

(declare-fun res!2894759 () Bool)

(assert (=> b!7086336 (=> (not res!2894759) (not e!4260219))))

(assert (=> b!7086336 (= res!2894759 (dynLambda!27978 lambda!429086 (h!75035 (exprs!7244 auxCtx!45))))))

(declare-fun b!7086337 () Bool)

(assert (=> b!7086337 (= e!4260219 (forall!16698 (t!382496 (exprs!7244 auxCtx!45)) lambda!429086))))

(assert (= (and d!2216092 (not res!2894758)) b!7086336))

(assert (= (and b!7086336 res!2894759) b!7086337))

(declare-fun b_lambda!270891 () Bool)

(assert (=> (not b_lambda!270891) (not b!7086336)))

(declare-fun m!7817068 () Bool)

(assert (=> b!7086336 m!7817068))

(declare-fun m!7817070 () Bool)

(assert (=> b!7086337 m!7817070))

(assert (=> b!7086257 d!2216092))

(declare-fun e!4260222 () Bool)

(assert (=> b!7086249 (= tp!1945739 e!4260222)))

(declare-fun b!7086349 () Bool)

(declare-fun tp!1945772 () Bool)

(declare-fun tp!1945775 () Bool)

(assert (=> b!7086349 (= e!4260222 (and tp!1945772 tp!1945775))))

(declare-fun b!7086348 () Bool)

(assert (=> b!7086348 (= e!4260222 tp_is_empty!44729)))

(declare-fun b!7086350 () Bool)

(declare-fun tp!1945774 () Bool)

(assert (=> b!7086350 (= e!4260222 tp!1945774)))

(declare-fun b!7086351 () Bool)

(declare-fun tp!1945771 () Bool)

(declare-fun tp!1945773 () Bool)

(assert (=> b!7086351 (= e!4260222 (and tp!1945771 tp!1945773))))

(assert (= (and b!7086249 (is-ElementMatch!17748 (regOne!36009 r!11554))) b!7086348))

(assert (= (and b!7086249 (is-Concat!26593 (regOne!36009 r!11554))) b!7086349))

(assert (= (and b!7086249 (is-Star!17748 (regOne!36009 r!11554))) b!7086350))

(assert (= (and b!7086249 (is-Union!17748 (regOne!36009 r!11554))) b!7086351))

(declare-fun e!4260223 () Bool)

(assert (=> b!7086249 (= tp!1945738 e!4260223)))

(declare-fun b!7086353 () Bool)

(declare-fun tp!1945777 () Bool)

(declare-fun tp!1945780 () Bool)

(assert (=> b!7086353 (= e!4260223 (and tp!1945777 tp!1945780))))

(declare-fun b!7086352 () Bool)

(assert (=> b!7086352 (= e!4260223 tp_is_empty!44729)))

(declare-fun b!7086354 () Bool)

(declare-fun tp!1945779 () Bool)

(assert (=> b!7086354 (= e!4260223 tp!1945779)))

(declare-fun b!7086355 () Bool)

(declare-fun tp!1945776 () Bool)

(declare-fun tp!1945778 () Bool)

(assert (=> b!7086355 (= e!4260223 (and tp!1945776 tp!1945778))))

(assert (= (and b!7086249 (is-ElementMatch!17748 (regTwo!36009 r!11554))) b!7086352))

(assert (= (and b!7086249 (is-Concat!26593 (regTwo!36009 r!11554))) b!7086353))

(assert (= (and b!7086249 (is-Star!17748 (regTwo!36009 r!11554))) b!7086354))

(assert (= (and b!7086249 (is-Union!17748 (regTwo!36009 r!11554))) b!7086355))

(declare-fun e!4260224 () Bool)

(assert (=> b!7086252 (= tp!1945736 e!4260224)))

(declare-fun b!7086357 () Bool)

(declare-fun tp!1945782 () Bool)

(declare-fun tp!1945785 () Bool)

(assert (=> b!7086357 (= e!4260224 (and tp!1945782 tp!1945785))))

(declare-fun b!7086356 () Bool)

(assert (=> b!7086356 (= e!4260224 tp_is_empty!44729)))

(declare-fun b!7086358 () Bool)

(declare-fun tp!1945784 () Bool)

(assert (=> b!7086358 (= e!4260224 tp!1945784)))

(declare-fun b!7086359 () Bool)

(declare-fun tp!1945781 () Bool)

(declare-fun tp!1945783 () Bool)

(assert (=> b!7086359 (= e!4260224 (and tp!1945781 tp!1945783))))

(assert (= (and b!7086252 (is-ElementMatch!17748 (regOne!36008 r!11554))) b!7086356))

(assert (= (and b!7086252 (is-Concat!26593 (regOne!36008 r!11554))) b!7086357))

(assert (= (and b!7086252 (is-Star!17748 (regOne!36008 r!11554))) b!7086358))

(assert (= (and b!7086252 (is-Union!17748 (regOne!36008 r!11554))) b!7086359))

(declare-fun e!4260225 () Bool)

(assert (=> b!7086252 (= tp!1945734 e!4260225)))

(declare-fun b!7086361 () Bool)

(declare-fun tp!1945787 () Bool)

(declare-fun tp!1945790 () Bool)

(assert (=> b!7086361 (= e!4260225 (and tp!1945787 tp!1945790))))

(declare-fun b!7086360 () Bool)

(assert (=> b!7086360 (= e!4260225 tp_is_empty!44729)))

(declare-fun b!7086362 () Bool)

(declare-fun tp!1945789 () Bool)

(assert (=> b!7086362 (= e!4260225 tp!1945789)))

(declare-fun b!7086363 () Bool)

(declare-fun tp!1945786 () Bool)

(declare-fun tp!1945788 () Bool)

(assert (=> b!7086363 (= e!4260225 (and tp!1945786 tp!1945788))))

(assert (= (and b!7086252 (is-ElementMatch!17748 (regTwo!36008 r!11554))) b!7086360))

(assert (= (and b!7086252 (is-Concat!26593 (regTwo!36008 r!11554))) b!7086361))

(assert (= (and b!7086252 (is-Star!17748 (regTwo!36008 r!11554))) b!7086362))

(assert (= (and b!7086252 (is-Union!17748 (regTwo!36008 r!11554))) b!7086363))

(declare-fun e!4260226 () Bool)

(assert (=> b!7086250 (= tp!1945735 e!4260226)))

(declare-fun b!7086365 () Bool)

(declare-fun tp!1945792 () Bool)

(declare-fun tp!1945795 () Bool)

(assert (=> b!7086365 (= e!4260226 (and tp!1945792 tp!1945795))))

(declare-fun b!7086364 () Bool)

(assert (=> b!7086364 (= e!4260226 tp_is_empty!44729)))

(declare-fun b!7086366 () Bool)

(declare-fun tp!1945794 () Bool)

(assert (=> b!7086366 (= e!4260226 tp!1945794)))

(declare-fun b!7086367 () Bool)

(declare-fun tp!1945791 () Bool)

(declare-fun tp!1945793 () Bool)

(assert (=> b!7086367 (= e!4260226 (and tp!1945791 tp!1945793))))

(assert (= (and b!7086250 (is-ElementMatch!17748 (reg!18077 r!11554))) b!7086364))

(assert (= (and b!7086250 (is-Concat!26593 (reg!18077 r!11554))) b!7086365))

(assert (= (and b!7086250 (is-Star!17748 (reg!18077 r!11554))) b!7086366))

(assert (= (and b!7086250 (is-Union!17748 (reg!18077 r!11554))) b!7086367))

(declare-fun b!7086372 () Bool)

(declare-fun e!4260229 () Bool)

(declare-fun tp!1945800 () Bool)

(declare-fun tp!1945801 () Bool)

(assert (=> b!7086372 (= e!4260229 (and tp!1945800 tp!1945801))))

(assert (=> b!7086251 (= tp!1945737 e!4260229)))

(assert (= (and b!7086251 (is-Cons!68587 (exprs!7244 auxCtx!45))) b!7086372))

(declare-fun b!7086373 () Bool)

(declare-fun e!4260230 () Bool)

(declare-fun tp!1945802 () Bool)

(declare-fun tp!1945803 () Bool)

(assert (=> b!7086373 (= e!4260230 (and tp!1945802 tp!1945803))))

(assert (=> b!7086256 (= tp!1945733 e!4260230)))

(assert (= (and b!7086256 (is-Cons!68587 (exprs!7244 c!9994))) b!7086373))

(declare-fun b_lambda!270893 () Bool)

(assert (= b_lambda!270889 (or b!7086255 b_lambda!270893)))

(declare-fun bs!1882979 () Bool)

(declare-fun d!2216094 () Bool)

(assert (= bs!1882979 (and d!2216094 b!7086255)))

(assert (=> bs!1882979 (= (dynLambda!27978 lambda!429086 (h!75035 (exprs!7244 c!9994))) (validRegex!9023 (h!75035 (exprs!7244 c!9994))))))

(declare-fun m!7817072 () Bool)

(assert (=> bs!1882979 m!7817072))

(assert (=> b!7086289 d!2216094))

(declare-fun b_lambda!270895 () Bool)

(assert (= b_lambda!270891 (or b!7086255 b_lambda!270895)))

(declare-fun bs!1882980 () Bool)

(declare-fun d!2216096 () Bool)

(assert (= bs!1882980 (and d!2216096 b!7086255)))

(assert (=> bs!1882980 (= (dynLambda!27978 lambda!429086 (h!75035 (exprs!7244 auxCtx!45))) (validRegex!9023 (h!75035 (exprs!7244 auxCtx!45))))))

(declare-fun m!7817074 () Bool)

(assert (=> bs!1882980 m!7817074))

(assert (=> b!7086336 d!2216096))

(push 1)

(assert (not b!7086365))

(assert (not b!7086349))

(assert (not b!7086337))

(assert (not b!7086355))

(assert (not b!7086373))

(assert (not b!7086353))

(assert (not d!2216082))

(assert (not bs!1882980))

(assert (not b!7086372))

(assert (not b!7086312))

(assert (not b!7086358))

(assert (not b!7086359))

(assert (not b!7086290))

(assert (not d!2216088))

(assert (not b!7086363))

(assert (not b!7086350))

(assert (not b!7086357))

(assert (not b!7086361))

(assert (not bm!643915))

(assert (not b_lambda!270893))

(assert (not b_lambda!270895))

(assert (not b!7086367))

(assert (not bs!1882979))

(assert (not b!7086362))

(assert (not d!2216090))

(assert (not b!7086366))

(assert (not bm!643916))

(assert (not b!7086354))

(assert tp_is_empty!44729)

(assert (not b!7086351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

