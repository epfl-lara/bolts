; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691766 () Bool)

(assert start!691766)

(declare-fun b!7106257 () Bool)

(declare-fun e!4270985 () Bool)

(declare-fun tp!1954213 () Bool)

(declare-fun tp!1954209 () Bool)

(assert (=> b!7106257 (= e!4270985 (and tp!1954213 tp!1954209))))

(declare-fun b!7106258 () Bool)

(declare-fun tp_is_empty!45057 () Bool)

(assert (=> b!7106258 (= e!4270985 tp_is_empty!45057)))

(declare-fun b!7106259 () Bool)

(declare-fun tp!1954211 () Bool)

(declare-fun tp!1954215 () Bool)

(assert (=> b!7106259 (= e!4270985 (and tp!1954211 tp!1954215))))

(declare-fun b!7106260 () Bool)

(declare-fun e!4270988 () Bool)

(declare-fun tp!1954214 () Bool)

(assert (=> b!7106260 (= e!4270988 tp!1954214)))

(declare-fun res!2900684 () Bool)

(declare-fun e!4270986 () Bool)

(assert (=> start!691766 (=> (not res!2900684) (not e!4270986))))

(declare-datatypes ((C!36094 0))(
  ( (C!36095 (val!27753 Int)) )
))
(declare-datatypes ((Regex!17912 0))(
  ( (ElementMatch!17912 (c!1326147 C!36094)) (Concat!26757 (regOne!36336 Regex!17912) (regTwo!36336 Regex!17912)) (EmptyExpr!17912) (Star!17912 (reg!18241 Regex!17912)) (EmptyLang!17912) (Union!17912 (regOne!36337 Regex!17912) (regTwo!36337 Regex!17912)) )
))
(declare-fun r!11554 () Regex!17912)

(declare-fun validRegex!9185 (Regex!17912) Bool)

(assert (=> start!691766 (= res!2900684 (validRegex!9185 r!11554))))

(assert (=> start!691766 e!4270986))

(assert (=> start!691766 e!4270985))

(assert (=> start!691766 tp_is_empty!45057))

(declare-datatypes ((List!68873 0))(
  ( (Nil!68749) (Cons!68749 (h!75197 Regex!17912) (t!382690 List!68873)) )
))
(declare-datatypes ((Context!13812 0))(
  ( (Context!13813 (exprs!7406 List!68873)) )
))
(declare-fun c!9994 () Context!13812)

(declare-fun inv!87644 (Context!13812) Bool)

(assert (=> start!691766 (and (inv!87644 c!9994) e!4270988)))

(declare-fun auxCtx!45 () Context!13812)

(declare-fun e!4270987 () Bool)

(assert (=> start!691766 (and (inv!87644 auxCtx!45) e!4270987)))

(declare-fun b!7106261 () Bool)

(declare-fun res!2900683 () Bool)

(assert (=> b!7106261 (=> (not res!2900683) (not e!4270986))))

(declare-fun nullable!7549 (Regex!17912) Bool)

(assert (=> b!7106261 (= res!2900683 (nullable!7549 (regOne!36336 r!11554)))))

(declare-fun b!7106262 () Bool)

(declare-fun res!2900685 () Bool)

(assert (=> b!7106262 (=> (not res!2900685) (not e!4270986))))

(declare-fun a!1901 () C!36094)

(assert (=> b!7106262 (= res!2900685 (and (or (not (is-ElementMatch!17912 r!11554)) (not (= (c!1326147 r!11554) a!1901))) (not (is-Union!17912 r!11554)) (is-Concat!26757 r!11554)))))

(declare-fun b!7106263 () Bool)

(declare-fun tp!1954212 () Bool)

(assert (=> b!7106263 (= e!4270985 tp!1954212)))

(declare-fun b!7106264 () Bool)

(declare-fun ++!16064 (List!68873 List!68873) List!68873)

(assert (=> b!7106264 (= e!4270986 (not (inv!87644 (Context!13813 (++!16064 (exprs!7406 c!9994) (exprs!7406 auxCtx!45))))))))

(declare-datatypes ((Unit!162495 0))(
  ( (Unit!162496) )
))
(declare-fun lt!2559105 () Unit!162495)

(declare-fun lambda!431616 () Int)

(declare-fun lemmaConcatPreservesForall!1197 (List!68873 List!68873 Int) Unit!162495)

(assert (=> b!7106264 (= lt!2559105 (lemmaConcatPreservesForall!1197 (exprs!7406 c!9994) (exprs!7406 auxCtx!45) lambda!431616))))

(declare-fun lt!2559106 () Unit!162495)

(assert (=> b!7106264 (= lt!2559106 (lemmaConcatPreservesForall!1197 (exprs!7406 c!9994) (exprs!7406 auxCtx!45) lambda!431616))))

(declare-fun b!7106265 () Bool)

(declare-fun tp!1954210 () Bool)

(assert (=> b!7106265 (= e!4270987 tp!1954210)))

(assert (= (and start!691766 res!2900684) b!7106262))

(assert (= (and b!7106262 res!2900685) b!7106261))

(assert (= (and b!7106261 res!2900683) b!7106264))

(assert (= (and start!691766 (is-ElementMatch!17912 r!11554)) b!7106258))

(assert (= (and start!691766 (is-Concat!26757 r!11554)) b!7106257))

(assert (= (and start!691766 (is-Star!17912 r!11554)) b!7106263))

(assert (= (and start!691766 (is-Union!17912 r!11554)) b!7106259))

(assert (= start!691766 b!7106260))

(assert (= start!691766 b!7106265))

(declare-fun m!7829388 () Bool)

(assert (=> start!691766 m!7829388))

(declare-fun m!7829390 () Bool)

(assert (=> start!691766 m!7829390))

(declare-fun m!7829392 () Bool)

(assert (=> start!691766 m!7829392))

(declare-fun m!7829394 () Bool)

(assert (=> b!7106261 m!7829394))

(declare-fun m!7829396 () Bool)

(assert (=> b!7106264 m!7829396))

(declare-fun m!7829398 () Bool)

(assert (=> b!7106264 m!7829398))

(declare-fun m!7829400 () Bool)

(assert (=> b!7106264 m!7829400))

(assert (=> b!7106264 m!7829400))

(push 1)

(assert (not b!7106259))

(assert (not b!7106265))

(assert (not b!7106260))

(assert (not start!691766))

(assert (not b!7106261))

(assert (not b!7106263))

(assert tp_is_empty!45057)

(assert (not b!7106264))

(assert (not b!7106257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2219370 () Bool)

(declare-fun nullableFct!2906 (Regex!17912) Bool)

(assert (=> d!2219370 (= (nullable!7549 (regOne!36336 r!11554)) (nullableFct!2906 (regOne!36336 r!11554)))))

(declare-fun bs!1884777 () Bool)

(assert (= bs!1884777 d!2219370))

(declare-fun m!7829416 () Bool)

(assert (=> bs!1884777 m!7829416))

(assert (=> b!7106261 d!2219370))

(declare-fun b!7106311 () Bool)

(declare-fun e!4271016 () Bool)

(declare-fun e!4271017 () Bool)

(assert (=> b!7106311 (= e!4271016 e!4271017)))

(declare-fun c!1326153 () Bool)

(assert (=> b!7106311 (= c!1326153 (is-Star!17912 r!11554))))

(declare-fun b!7106312 () Bool)

(declare-fun e!4271015 () Bool)

(declare-fun e!4271021 () Bool)

(assert (=> b!7106312 (= e!4271015 e!4271021)))

(declare-fun res!2900708 () Bool)

(assert (=> b!7106312 (=> (not res!2900708) (not e!4271021))))

(declare-fun call!647849 () Bool)

(assert (=> b!7106312 (= res!2900708 call!647849)))

(declare-fun bm!647843 () Bool)

(declare-fun c!1326154 () Bool)

(assert (=> bm!647843 (= call!647849 (validRegex!9185 (ite c!1326154 (regTwo!36337 r!11554) (regOne!36336 r!11554))))))

(declare-fun b!7106313 () Bool)

(declare-fun res!2900705 () Bool)

(assert (=> b!7106313 (=> res!2900705 e!4271015)))

(assert (=> b!7106313 (= res!2900705 (not (is-Concat!26757 r!11554)))))

(declare-fun e!4271018 () Bool)

(assert (=> b!7106313 (= e!4271018 e!4271015)))

(declare-fun b!7106314 () Bool)

(declare-fun res!2900709 () Bool)

(declare-fun e!4271019 () Bool)

(assert (=> b!7106314 (=> (not res!2900709) (not e!4271019))))

(declare-fun call!647850 () Bool)

(assert (=> b!7106314 (= res!2900709 call!647850)))

(assert (=> b!7106314 (= e!4271018 e!4271019)))

(declare-fun b!7106315 () Bool)

(assert (=> b!7106315 (= e!4271017 e!4271018)))

(assert (=> b!7106315 (= c!1326154 (is-Union!17912 r!11554))))

(declare-fun bm!647844 () Bool)

(declare-fun call!647848 () Bool)

(assert (=> bm!647844 (= call!647850 call!647848)))

(declare-fun b!7106317 () Bool)

(assert (=> b!7106317 (= e!4271019 call!647849)))

(declare-fun b!7106318 () Bool)

(assert (=> b!7106318 (= e!4271021 call!647850)))

(declare-fun b!7106319 () Bool)

(declare-fun e!4271020 () Bool)

(assert (=> b!7106319 (= e!4271020 call!647848)))

(declare-fun bm!647845 () Bool)

(assert (=> bm!647845 (= call!647848 (validRegex!9185 (ite c!1326153 (reg!18241 r!11554) (ite c!1326154 (regOne!36337 r!11554) (regTwo!36336 r!11554)))))))

(declare-fun d!2219372 () Bool)

(declare-fun res!2900707 () Bool)

(assert (=> d!2219372 (=> res!2900707 e!4271016)))

(assert (=> d!2219372 (= res!2900707 (is-ElementMatch!17912 r!11554))))

(assert (=> d!2219372 (= (validRegex!9185 r!11554) e!4271016)))

(declare-fun b!7106316 () Bool)

(assert (=> b!7106316 (= e!4271017 e!4271020)))

(declare-fun res!2900706 () Bool)

(assert (=> b!7106316 (= res!2900706 (not (nullable!7549 (reg!18241 r!11554))))))

(assert (=> b!7106316 (=> (not res!2900706) (not e!4271020))))

(assert (= (and d!2219372 (not res!2900707)) b!7106311))

(assert (= (and b!7106311 c!1326153) b!7106316))

(assert (= (and b!7106311 (not c!1326153)) b!7106315))

(assert (= (and b!7106316 res!2900706) b!7106319))

(assert (= (and b!7106315 c!1326154) b!7106314))

(assert (= (and b!7106315 (not c!1326154)) b!7106313))

(assert (= (and b!7106314 res!2900709) b!7106317))

(assert (= (and b!7106313 (not res!2900705)) b!7106312))

(assert (= (and b!7106312 res!2900708) b!7106318))

(assert (= (or b!7106314 b!7106318) bm!647844))

(assert (= (or b!7106317 b!7106312) bm!647843))

(assert (= (or b!7106319 bm!647844) bm!647845))

(declare-fun m!7829420 () Bool)

(assert (=> bm!647843 m!7829420))

(declare-fun m!7829422 () Bool)

(assert (=> bm!647845 m!7829422))

(declare-fun m!7829424 () Bool)

(assert (=> b!7106316 m!7829424))

(assert (=> start!691766 d!2219372))

(declare-fun bs!1884779 () Bool)

(declare-fun d!2219378 () Bool)

(assert (= bs!1884779 (and d!2219378 b!7106264)))

(declare-fun lambda!431624 () Int)

(assert (=> bs!1884779 (= lambda!431624 lambda!431616)))

(declare-fun forall!16815 (List!68873 Int) Bool)

(assert (=> d!2219378 (= (inv!87644 c!9994) (forall!16815 (exprs!7406 c!9994) lambda!431624))))

(declare-fun bs!1884780 () Bool)

(assert (= bs!1884780 d!2219378))

(declare-fun m!7829426 () Bool)

(assert (=> bs!1884780 m!7829426))

(assert (=> start!691766 d!2219378))

(declare-fun bs!1884781 () Bool)

(declare-fun d!2219380 () Bool)

(assert (= bs!1884781 (and d!2219380 b!7106264)))

(declare-fun lambda!431625 () Int)

(assert (=> bs!1884781 (= lambda!431625 lambda!431616)))

(declare-fun bs!1884782 () Bool)

(assert (= bs!1884782 (and d!2219380 d!2219378)))

(assert (=> bs!1884782 (= lambda!431625 lambda!431624)))

(assert (=> d!2219380 (= (inv!87644 auxCtx!45) (forall!16815 (exprs!7406 auxCtx!45) lambda!431625))))

(declare-fun bs!1884783 () Bool)

(assert (= bs!1884783 d!2219380))

(declare-fun m!7829428 () Bool)

(assert (=> bs!1884783 m!7829428))

(assert (=> start!691766 d!2219380))

(declare-fun bs!1884784 () Bool)

(declare-fun d!2219382 () Bool)

(assert (= bs!1884784 (and d!2219382 b!7106264)))

(declare-fun lambda!431626 () Int)

(assert (=> bs!1884784 (= lambda!431626 lambda!431616)))

(declare-fun bs!1884785 () Bool)

(assert (= bs!1884785 (and d!2219382 d!2219378)))

(assert (=> bs!1884785 (= lambda!431626 lambda!431624)))

(declare-fun bs!1884786 () Bool)

(assert (= bs!1884786 (and d!2219382 d!2219380)))

(assert (=> bs!1884786 (= lambda!431626 lambda!431625)))

(assert (=> d!2219382 (= (inv!87644 (Context!13813 (++!16064 (exprs!7406 c!9994) (exprs!7406 auxCtx!45)))) (forall!16815 (exprs!7406 (Context!13813 (++!16064 (exprs!7406 c!9994) (exprs!7406 auxCtx!45)))) lambda!431626))))

(declare-fun bs!1884787 () Bool)

(assert (= bs!1884787 d!2219382))

(declare-fun m!7829430 () Bool)

(assert (=> bs!1884787 m!7829430))

(assert (=> b!7106264 d!2219382))

(declare-fun d!2219384 () Bool)

(declare-fun e!4271040 () Bool)

(assert (=> d!2219384 e!4271040))

(declare-fun res!2900725 () Bool)

(assert (=> d!2219384 (=> (not res!2900725) (not e!4271040))))

(declare-fun lt!2559115 () List!68873)

(declare-fun content!14001 (List!68873) (Set Regex!17912))

(assert (=> d!2219384 (= res!2900725 (= (content!14001 lt!2559115) (set.union (content!14001 (exprs!7406 c!9994)) (content!14001 (exprs!7406 auxCtx!45)))))))

(declare-fun e!4271041 () List!68873)

(assert (=> d!2219384 (= lt!2559115 e!4271041)))

(declare-fun c!1326161 () Bool)

(assert (=> d!2219384 (= c!1326161 (is-Nil!68749 (exprs!7406 c!9994)))))

(assert (=> d!2219384 (= (++!16064 (exprs!7406 c!9994) (exprs!7406 auxCtx!45)) lt!2559115)))

(declare-fun b!7106348 () Bool)

(declare-fun res!2900724 () Bool)

(assert (=> b!7106348 (=> (not res!2900724) (not e!4271040))))

(declare-fun size!41376 (List!68873) Int)

(assert (=> b!7106348 (= res!2900724 (= (size!41376 lt!2559115) (+ (size!41376 (exprs!7406 c!9994)) (size!41376 (exprs!7406 auxCtx!45)))))))

(declare-fun b!7106349 () Bool)

(assert (=> b!7106349 (= e!4271040 (or (not (= (exprs!7406 auxCtx!45) Nil!68749)) (= lt!2559115 (exprs!7406 c!9994))))))

(declare-fun b!7106346 () Bool)

(assert (=> b!7106346 (= e!4271041 (exprs!7406 auxCtx!45))))

(declare-fun b!7106347 () Bool)

(assert (=> b!7106347 (= e!4271041 (Cons!68749 (h!75197 (exprs!7406 c!9994)) (++!16064 (t!382690 (exprs!7406 c!9994)) (exprs!7406 auxCtx!45))))))

(assert (= (and d!2219384 c!1326161) b!7106346))

(assert (= (and d!2219384 (not c!1326161)) b!7106347))

(assert (= (and d!2219384 res!2900725) b!7106348))

(assert (= (and b!7106348 res!2900724) b!7106349))

(declare-fun m!7829432 () Bool)

(assert (=> d!2219384 m!7829432))

(declare-fun m!7829434 () Bool)

(assert (=> d!2219384 m!7829434))

(declare-fun m!7829436 () Bool)

(assert (=> d!2219384 m!7829436))

(declare-fun m!7829438 () Bool)

(assert (=> b!7106348 m!7829438))

(declare-fun m!7829440 () Bool)

(assert (=> b!7106348 m!7829440))

(declare-fun m!7829442 () Bool)

(assert (=> b!7106348 m!7829442))

(declare-fun m!7829444 () Bool)

(assert (=> b!7106347 m!7829444))

(assert (=> b!7106264 d!2219384))

(declare-fun d!2219386 () Bool)

(assert (=> d!2219386 (forall!16815 (++!16064 (exprs!7406 c!9994) (exprs!7406 auxCtx!45)) lambda!431616)))

(declare-fun lt!2559118 () Unit!162495)

(declare-fun choose!54824 (List!68873 List!68873 Int) Unit!162495)

(assert (=> d!2219386 (= lt!2559118 (choose!54824 (exprs!7406 c!9994) (exprs!7406 auxCtx!45) lambda!431616))))

(assert (=> d!2219386 (forall!16815 (exprs!7406 c!9994) lambda!431616)))

(assert (=> d!2219386 (= (lemmaConcatPreservesForall!1197 (exprs!7406 c!9994) (exprs!7406 auxCtx!45) lambda!431616) lt!2559118)))

(declare-fun bs!1884788 () Bool)

(assert (= bs!1884788 d!2219386))

(assert (=> bs!1884788 m!7829396))

(assert (=> bs!1884788 m!7829396))

(declare-fun m!7829446 () Bool)

(assert (=> bs!1884788 m!7829446))

(declare-fun m!7829448 () Bool)

(assert (=> bs!1884788 m!7829448))

(declare-fun m!7829450 () Bool)

(assert (=> bs!1884788 m!7829450))

(assert (=> b!7106264 d!2219386))

(declare-fun b!7106363 () Bool)

(declare-fun e!4271051 () Bool)

(declare-fun tp!1954241 () Bool)

(declare-fun tp!1954242 () Bool)

(assert (=> b!7106363 (= e!4271051 (and tp!1954241 tp!1954242))))

(assert (=> b!7106265 (= tp!1954210 e!4271051)))

(assert (= (and b!7106265 (is-Cons!68749 (exprs!7406 auxCtx!45))) b!7106363))

(declare-fun b!7106364 () Bool)

(declare-fun e!4271052 () Bool)

(declare-fun tp!1954243 () Bool)

(declare-fun tp!1954244 () Bool)

(assert (=> b!7106364 (= e!4271052 (and tp!1954243 tp!1954244))))

(assert (=> b!7106260 (= tp!1954214 e!4271052)))

(assert (= (and b!7106260 (is-Cons!68749 (exprs!7406 c!9994))) b!7106364))

(declare-fun b!7106375 () Bool)

(declare-fun e!4271055 () Bool)

(assert (=> b!7106375 (= e!4271055 tp_is_empty!45057)))

(assert (=> b!7106259 (= tp!1954211 e!4271055)))

(declare-fun b!7106376 () Bool)

(declare-fun tp!1954258 () Bool)

(declare-fun tp!1954257 () Bool)

(assert (=> b!7106376 (= e!4271055 (and tp!1954258 tp!1954257))))

(declare-fun b!7106377 () Bool)

(declare-fun tp!1954255 () Bool)

(assert (=> b!7106377 (= e!4271055 tp!1954255)))

(declare-fun b!7106378 () Bool)

(declare-fun tp!1954259 () Bool)

(declare-fun tp!1954256 () Bool)

(assert (=> b!7106378 (= e!4271055 (and tp!1954259 tp!1954256))))

(assert (= (and b!7106259 (is-ElementMatch!17912 (regOne!36337 r!11554))) b!7106375))

(assert (= (and b!7106259 (is-Concat!26757 (regOne!36337 r!11554))) b!7106376))

(assert (= (and b!7106259 (is-Star!17912 (regOne!36337 r!11554))) b!7106377))

(assert (= (and b!7106259 (is-Union!17912 (regOne!36337 r!11554))) b!7106378))

(declare-fun b!7106379 () Bool)

(declare-fun e!4271056 () Bool)

(assert (=> b!7106379 (= e!4271056 tp_is_empty!45057)))

(assert (=> b!7106259 (= tp!1954215 e!4271056)))

(declare-fun b!7106380 () Bool)

(declare-fun tp!1954263 () Bool)

(declare-fun tp!1954262 () Bool)

(assert (=> b!7106380 (= e!4271056 (and tp!1954263 tp!1954262))))

(declare-fun b!7106381 () Bool)

(declare-fun tp!1954260 () Bool)

(assert (=> b!7106381 (= e!4271056 tp!1954260)))

(declare-fun b!7106382 () Bool)

(declare-fun tp!1954264 () Bool)

(declare-fun tp!1954261 () Bool)

(assert (=> b!7106382 (= e!4271056 (and tp!1954264 tp!1954261))))

(assert (= (and b!7106259 (is-ElementMatch!17912 (regTwo!36337 r!11554))) b!7106379))

(assert (= (and b!7106259 (is-Concat!26757 (regTwo!36337 r!11554))) b!7106380))

(assert (= (and b!7106259 (is-Star!17912 (regTwo!36337 r!11554))) b!7106381))

(assert (= (and b!7106259 (is-Union!17912 (regTwo!36337 r!11554))) b!7106382))

(declare-fun b!7106383 () Bool)

(declare-fun e!4271057 () Bool)

(assert (=> b!7106383 (= e!4271057 tp_is_empty!45057)))

(assert (=> b!7106257 (= tp!1954213 e!4271057)))

(declare-fun b!7106384 () Bool)

(declare-fun tp!1954268 () Bool)

(declare-fun tp!1954267 () Bool)

(assert (=> b!7106384 (= e!4271057 (and tp!1954268 tp!1954267))))

(declare-fun b!7106385 () Bool)

(declare-fun tp!1954265 () Bool)

(assert (=> b!7106385 (= e!4271057 tp!1954265)))

(declare-fun b!7106386 () Bool)

(declare-fun tp!1954269 () Bool)

(declare-fun tp!1954266 () Bool)

(assert (=> b!7106386 (= e!4271057 (and tp!1954269 tp!1954266))))

(assert (= (and b!7106257 (is-ElementMatch!17912 (regOne!36336 r!11554))) b!7106383))

(assert (= (and b!7106257 (is-Concat!26757 (regOne!36336 r!11554))) b!7106384))

(assert (= (and b!7106257 (is-Star!17912 (regOne!36336 r!11554))) b!7106385))

(assert (= (and b!7106257 (is-Union!17912 (regOne!36336 r!11554))) b!7106386))

(declare-fun b!7106387 () Bool)

(declare-fun e!4271058 () Bool)

(assert (=> b!7106387 (= e!4271058 tp_is_empty!45057)))

(assert (=> b!7106257 (= tp!1954209 e!4271058)))

(declare-fun b!7106388 () Bool)

(declare-fun tp!1954273 () Bool)

(declare-fun tp!1954272 () Bool)

(assert (=> b!7106388 (= e!4271058 (and tp!1954273 tp!1954272))))

(declare-fun b!7106389 () Bool)

(declare-fun tp!1954270 () Bool)

(assert (=> b!7106389 (= e!4271058 tp!1954270)))

(declare-fun b!7106390 () Bool)

(declare-fun tp!1954274 () Bool)

(declare-fun tp!1954271 () Bool)

(assert (=> b!7106390 (= e!4271058 (and tp!1954274 tp!1954271))))

(assert (= (and b!7106257 (is-ElementMatch!17912 (regTwo!36336 r!11554))) b!7106387))

(assert (= (and b!7106257 (is-Concat!26757 (regTwo!36336 r!11554))) b!7106388))

(assert (= (and b!7106257 (is-Star!17912 (regTwo!36336 r!11554))) b!7106389))

(assert (= (and b!7106257 (is-Union!17912 (regTwo!36336 r!11554))) b!7106390))

(declare-fun b!7106391 () Bool)

(declare-fun e!4271059 () Bool)

(assert (=> b!7106391 (= e!4271059 tp_is_empty!45057)))

(assert (=> b!7106263 (= tp!1954212 e!4271059)))

(declare-fun b!7106392 () Bool)

(declare-fun tp!1954278 () Bool)

(declare-fun tp!1954277 () Bool)

(assert (=> b!7106392 (= e!4271059 (and tp!1954278 tp!1954277))))

(declare-fun b!7106393 () Bool)

(declare-fun tp!1954275 () Bool)

(assert (=> b!7106393 (= e!4271059 tp!1954275)))

(declare-fun b!7106394 () Bool)

(declare-fun tp!1954279 () Bool)

(declare-fun tp!1954276 () Bool)

(assert (=> b!7106394 (= e!4271059 (and tp!1954279 tp!1954276))))

(assert (= (and b!7106263 (is-ElementMatch!17912 (reg!18241 r!11554))) b!7106391))

(assert (= (and b!7106263 (is-Concat!26757 (reg!18241 r!11554))) b!7106392))

(assert (= (and b!7106263 (is-Star!17912 (reg!18241 r!11554))) b!7106393))

(assert (= (and b!7106263 (is-Union!17912 (reg!18241 r!11554))) b!7106394))

(push 1)

(assert (not b!7106348))

(assert (not b!7106382))

(assert (not b!7106363))

(assert (not b!7106393))

(assert (not b!7106386))

(assert (not bm!647843))

(assert (not b!7106390))

(assert (not b!7106376))

(assert (not b!7106394))

(assert (not b!7106389))

(assert (not d!2219380))

(assert (not d!2219370))

(assert (not b!7106381))

(assert (not b!7106388))

(assert (not d!2219386))

(assert (not d!2219378))

(assert (not b!7106392))

(assert (not b!7106380))

(assert (not b!7106378))

(assert (not d!2219384))

(assert (not b!7106384))

(assert (not b!7106347))

(assert (not b!7106316))

(assert (not b!7106385))

(assert (not b!7106377))

(assert (not b!7106364))

(assert (not bm!647845))

(assert (not d!2219382))

(assert tp_is_empty!45057)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

