; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727772 () Bool)

(assert start!727772)

(declare-fun res!3013720 () Bool)

(declare-fun e!4481072 () Bool)

(assert (=> start!727772 (=> (not res!3013720) (not e!4481072))))

(declare-datatypes ((C!39838 0))(
  ( (C!39839 (val!30339 Int)) )
))
(declare-datatypes ((Regex!19756 0))(
  ( (ElementMatch!19756 (c!1388670 C!39838)) (Concat!28601 (regOne!40024 Regex!19756) (regTwo!40024 Regex!19756)) (EmptyExpr!19756) (Star!19756 (reg!20085 Regex!19756)) (EmptyLang!19756) (Union!19756 (regOne!40025 Regex!19756) (regTwo!40025 Regex!19756)) )
))
(declare-datatypes ((List!72643 0))(
  ( (Nil!72519) (Cons!72519 (h!78967 Regex!19756) (t!387280 List!72643)) )
))
(declare-datatypes ((Context!17016 0))(
  ( (Context!17017 (exprs!9008 List!72643)) )
))
(declare-fun c!7091 () Context!17016)

(assert (=> start!727772 (= res!3013720 (is-Cons!72519 (exprs!9008 c!7091)))))

(assert (=> start!727772 e!4481072))

(declare-fun e!4481071 () Bool)

(declare-fun inv!92654 (Context!17016) Bool)

(assert (=> start!727772 (and (inv!92654 c!7091) e!4481071)))

(declare-fun b!7516150 () Bool)

(declare-fun res!3013721 () Bool)

(assert (=> b!7516150 (=> (not res!3013721) (not e!4481072))))

(declare-datatypes ((List!72644 0))(
  ( (Nil!72520) (Cons!72520 (h!78968 C!39838) (t!387281 List!72644)) )
))
(declare-datatypes ((Option!17253 0))(
  ( (None!17252) (Some!17252 (v!54387 List!72644)) )
))
(declare-fun getLanguageWitness!1096 (Regex!19756) Option!17253)

(assert (=> b!7516150 (= res!3013721 (not (is-Some!17252 (getLanguageWitness!1096 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516151 () Bool)

(declare-fun lambda!466252 () Int)

(declare-fun exists!4936 (List!72643 Int) Bool)

(assert (=> b!7516151 (= e!4481072 (not (= true (exists!4936 (exprs!9008 c!7091) lambda!466252))))))

(declare-fun b!7516152 () Bool)

(declare-fun tp!2182093 () Bool)

(assert (=> b!7516152 (= e!4481071 tp!2182093)))

(assert (= (and start!727772 res!3013720) b!7516150))

(assert (= (and b!7516150 res!3013721) b!7516151))

(assert (= start!727772 b!7516152))

(declare-fun m!8097924 () Bool)

(assert (=> start!727772 m!8097924))

(declare-fun m!8097926 () Bool)

(assert (=> b!7516150 m!8097926))

(declare-fun m!8097928 () Bool)

(assert (=> b!7516151 m!8097928))

(push 1)

(assert (not b!7516150))

(assert (not start!727772))

(assert (not b!7516151))

(assert (not b!7516152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7516194 () Bool)

(declare-fun c!1388690 () Bool)

(assert (=> b!7516194 (= c!1388690 (is-ElementMatch!19756 (h!78967 (exprs!9008 c!7091))))))

(declare-fun e!4481098 () Option!17253)

(declare-fun e!4481100 () Option!17253)

(assert (=> b!7516194 (= e!4481098 e!4481100)))

(declare-fun d!2307914 () Bool)

(declare-fun c!1388689 () Bool)

(assert (=> d!2307914 (= c!1388689 (is-EmptyExpr!19756 (h!78967 (exprs!9008 c!7091))))))

(declare-fun e!4481095 () Option!17253)

(assert (=> d!2307914 (= (getLanguageWitness!1096 (h!78967 (exprs!9008 c!7091))) e!4481095)))

(declare-fun b!7516195 () Bool)

(declare-fun e!4481101 () Option!17253)

(declare-fun lt!2638220 () Option!17253)

(assert (=> b!7516195 (= e!4481101 lt!2638220)))

(declare-fun b!7516196 () Bool)

(declare-fun e!4481096 () Option!17253)

(assert (=> b!7516196 (= e!4481096 e!4481101)))

(declare-fun call!689320 () Option!17253)

(assert (=> b!7516196 (= lt!2638220 call!689320)))

(declare-fun c!1388693 () Bool)

(assert (=> b!7516196 (= c!1388693 (is-Some!17252 lt!2638220))))

(declare-fun b!7516197 () Bool)

(declare-fun call!689319 () Option!17253)

(assert (=> b!7516197 (= e!4481101 call!689319)))

(declare-fun b!7516198 () Bool)

(declare-fun c!1388695 () Bool)

(assert (=> b!7516198 (= c!1388695 (is-Union!19756 (h!78967 (exprs!9008 c!7091))))))

(declare-fun e!4481099 () Option!17253)

(assert (=> b!7516198 (= e!4481099 e!4481096)))

(declare-fun b!7516199 () Bool)

(declare-fun e!4481097 () Option!17253)

(assert (=> b!7516199 (= e!4481097 None!17252)))

(declare-fun bm!689314 () Bool)

(assert (=> bm!689314 (= call!689320 (getLanguageWitness!1096 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516200 () Bool)

(assert (=> b!7516200 (= e!4481100 e!4481099)))

(declare-fun c!1388694 () Bool)

(assert (=> b!7516200 (= c!1388694 (is-Star!19756 (h!78967 (exprs!9008 c!7091))))))

(declare-fun b!7516201 () Bool)

(assert (=> b!7516201 (= e!4481095 (Some!17252 Nil!72520))))

(declare-fun b!7516202 () Bool)

(declare-fun e!4481102 () Option!17253)

(assert (=> b!7516202 (= e!4481096 e!4481102)))

(declare-fun lt!2638221 () Option!17253)

(assert (=> b!7516202 (= lt!2638221 call!689319)))

(declare-fun c!1388688 () Bool)

(assert (=> b!7516202 (= c!1388688 (is-Some!17252 lt!2638221))))

(declare-fun b!7516203 () Bool)

(declare-fun c!1388692 () Bool)

(declare-fun lt!2638219 () Option!17253)

(assert (=> b!7516203 (= c!1388692 (is-Some!17252 lt!2638219))))

(assert (=> b!7516203 (= lt!2638219 call!689320)))

(assert (=> b!7516203 (= e!4481102 e!4481097)))

(declare-fun bm!689315 () Bool)

(assert (=> bm!689315 (= call!689319 (getLanguageWitness!1096 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516204 () Bool)

(assert (=> b!7516204 (= e!4481099 (Some!17252 Nil!72520))))

(declare-fun b!7516205 () Bool)

(declare-fun ++!17359 (List!72644 List!72644) List!72644)

(assert (=> b!7516205 (= e!4481097 (Some!17252 (++!17359 (v!54387 lt!2638221) (v!54387 lt!2638219))))))

(declare-fun b!7516206 () Bool)

(assert (=> b!7516206 (= e!4481100 (Some!17252 (Cons!72520 (c!1388670 (h!78967 (exprs!9008 c!7091))) Nil!72520)))))

(declare-fun b!7516207 () Bool)

(assert (=> b!7516207 (= e!4481095 e!4481098)))

(declare-fun c!1388691 () Bool)

(assert (=> b!7516207 (= c!1388691 (is-EmptyLang!19756 (h!78967 (exprs!9008 c!7091))))))

(declare-fun b!7516208 () Bool)

(assert (=> b!7516208 (= e!4481098 None!17252)))

(declare-fun b!7516209 () Bool)

(assert (=> b!7516209 (= e!4481102 None!17252)))

(assert (= (and d!2307914 c!1388689) b!7516201))

(assert (= (and d!2307914 (not c!1388689)) b!7516207))

(assert (= (and b!7516207 c!1388691) b!7516208))

(assert (= (and b!7516207 (not c!1388691)) b!7516194))

(assert (= (and b!7516194 c!1388690) b!7516206))

(assert (= (and b!7516194 (not c!1388690)) b!7516200))

(assert (= (and b!7516200 c!1388694) b!7516204))

(assert (= (and b!7516200 (not c!1388694)) b!7516198))

(assert (= (and b!7516198 c!1388695) b!7516196))

(assert (= (and b!7516198 (not c!1388695)) b!7516202))

(assert (= (and b!7516196 c!1388693) b!7516195))

(assert (= (and b!7516196 (not c!1388693)) b!7516197))

(assert (= (and b!7516202 c!1388688) b!7516203))

(assert (= (and b!7516202 (not c!1388688)) b!7516209))

(assert (= (and b!7516203 c!1388692) b!7516205))

(assert (= (and b!7516203 (not c!1388692)) b!7516199))

(assert (= (or b!7516197 b!7516202) bm!689315))

(assert (= (or b!7516196 b!7516203) bm!689314))

(declare-fun m!8097936 () Bool)

(assert (=> bm!689314 m!8097936))

(declare-fun m!8097938 () Bool)

(assert (=> bm!689315 m!8097938))

(declare-fun m!8097940 () Bool)

(assert (=> b!7516205 m!8097940))

(assert (=> b!7516150 d!2307914))

(declare-fun bs!1939387 () Bool)

(declare-fun d!2307918 () Bool)

(assert (= bs!1939387 (and d!2307918 b!7516151)))

(declare-fun lambda!466260 () Int)

(assert (=> bs!1939387 (not (= lambda!466260 lambda!466252))))

(declare-fun forall!18381 (List!72643 Int) Bool)

(assert (=> d!2307918 (= (inv!92654 c!7091) (forall!18381 (exprs!9008 c!7091) lambda!466260))))

(declare-fun bs!1939388 () Bool)

(assert (= bs!1939388 d!2307918))

(declare-fun m!8097942 () Bool)

(assert (=> bs!1939388 m!8097942))

(assert (=> start!727772 d!2307918))

(declare-fun bs!1939391 () Bool)

(declare-fun d!2307920 () Bool)

(assert (= bs!1939391 (and d!2307920 b!7516151)))

(declare-fun lambda!466264 () Int)

(assert (=> bs!1939391 (not (= lambda!466264 lambda!466252))))

(declare-fun bs!1939392 () Bool)

(assert (= bs!1939392 (and d!2307920 d!2307918)))

(assert (=> bs!1939392 (not (= lambda!466264 lambda!466260))))

(assert (=> d!2307920 true))

(declare-fun order!29729 () Int)

(declare-fun dynLambda!29848 (Int Int) Int)

(assert (=> d!2307920 (< (dynLambda!29848 order!29729 lambda!466252) (dynLambda!29848 order!29729 lambda!466264))))

(assert (=> d!2307920 (= (exists!4936 (exprs!9008 c!7091) lambda!466252) (not (forall!18381 (exprs!9008 c!7091) lambda!466264)))))

(declare-fun bs!1939393 () Bool)

(assert (= bs!1939393 d!2307920))

(declare-fun m!8097946 () Bool)

(assert (=> bs!1939393 m!8097946))

(assert (=> b!7516151 d!2307920))

(declare-fun b!7516216 () Bool)

(declare-fun e!4481105 () Bool)

(declare-fun tp!2182101 () Bool)

(declare-fun tp!2182102 () Bool)

(assert (=> b!7516216 (= e!4481105 (and tp!2182101 tp!2182102))))

(assert (=> b!7516152 (= tp!2182093 e!4481105)))

(assert (= (and b!7516152 (is-Cons!72519 (exprs!9008 c!7091))) b!7516216))

(push 1)

(assert (not d!2307920))

(assert (not bm!689314))

(assert (not b!7516216))

(assert (not b!7516205))

(assert (not bm!689315))

(assert (not d!2307918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7516280 () Bool)

(declare-fun e!4481138 () List!72644)

(assert (=> b!7516280 (= e!4481138 (v!54387 lt!2638219))))

(declare-fun e!4481137 () Bool)

(declare-fun b!7516283 () Bool)

(declare-fun lt!2638233 () List!72644)

(assert (=> b!7516283 (= e!4481137 (or (not (= (v!54387 lt!2638219) Nil!72520)) (= lt!2638233 (v!54387 lt!2638221))))))

(declare-fun b!7516282 () Bool)

(declare-fun res!3013732 () Bool)

(assert (=> b!7516282 (=> (not res!3013732) (not e!4481137))))

(declare-fun size!42300 (List!72644) Int)

(assert (=> b!7516282 (= res!3013732 (= (size!42300 lt!2638233) (+ (size!42300 (v!54387 lt!2638221)) (size!42300 (v!54387 lt!2638219)))))))

(declare-fun b!7516281 () Bool)

(assert (=> b!7516281 (= e!4481138 (Cons!72520 (h!78968 (v!54387 lt!2638221)) (++!17359 (t!387281 (v!54387 lt!2638221)) (v!54387 lt!2638219))))))

(declare-fun d!2307926 () Bool)

(assert (=> d!2307926 e!4481137))

(declare-fun res!3013733 () Bool)

(assert (=> d!2307926 (=> (not res!3013733) (not e!4481137))))

(declare-fun content!15343 (List!72644) (Set C!39838))

(assert (=> d!2307926 (= res!3013733 (= (content!15343 lt!2638233) (set.union (content!15343 (v!54387 lt!2638221)) (content!15343 (v!54387 lt!2638219)))))))

(assert (=> d!2307926 (= lt!2638233 e!4481138)))

(declare-fun c!1388722 () Bool)

(assert (=> d!2307926 (= c!1388722 (is-Nil!72520 (v!54387 lt!2638221)))))

(assert (=> d!2307926 (= (++!17359 (v!54387 lt!2638221) (v!54387 lt!2638219)) lt!2638233)))

(assert (= (and d!2307926 c!1388722) b!7516280))

(assert (= (and d!2307926 (not c!1388722)) b!7516281))

(assert (= (and d!2307926 res!3013733) b!7516282))

(assert (= (and b!7516282 res!3013732) b!7516283))

(declare-fun m!8097956 () Bool)

(assert (=> b!7516282 m!8097956))

(declare-fun m!8097958 () Bool)

(assert (=> b!7516282 m!8097958))

(declare-fun m!8097960 () Bool)

(assert (=> b!7516282 m!8097960))

(declare-fun m!8097962 () Bool)

(assert (=> b!7516281 m!8097962))

(declare-fun m!8097964 () Bool)

(assert (=> d!2307926 m!8097964))

(declare-fun m!8097966 () Bool)

(assert (=> d!2307926 m!8097966))

(declare-fun m!8097968 () Bool)

(assert (=> d!2307926 m!8097968))

(assert (=> b!7516205 d!2307926))

(declare-fun d!2307928 () Bool)

(declare-fun res!3013738 () Bool)

(declare-fun e!4481143 () Bool)

(assert (=> d!2307928 (=> res!3013738 e!4481143)))

(assert (=> d!2307928 (= res!3013738 (is-Nil!72519 (exprs!9008 c!7091)))))

(assert (=> d!2307928 (= (forall!18381 (exprs!9008 c!7091) lambda!466260) e!4481143)))

(declare-fun b!7516288 () Bool)

(declare-fun e!4481144 () Bool)

(assert (=> b!7516288 (= e!4481143 e!4481144)))

(declare-fun res!3013739 () Bool)

(assert (=> b!7516288 (=> (not res!3013739) (not e!4481144))))

(declare-fun dynLambda!29850 (Int Regex!19756) Bool)

(assert (=> b!7516288 (= res!3013739 (dynLambda!29850 lambda!466260 (h!78967 (exprs!9008 c!7091))))))

(declare-fun b!7516289 () Bool)

(assert (=> b!7516289 (= e!4481144 (forall!18381 (t!387280 (exprs!9008 c!7091)) lambda!466260))))

(assert (= (and d!2307928 (not res!3013738)) b!7516288))

(assert (= (and b!7516288 res!3013739) b!7516289))

(declare-fun b_lambda!288337 () Bool)

(assert (=> (not b_lambda!288337) (not b!7516288)))

(declare-fun m!8097970 () Bool)

(assert (=> b!7516288 m!8097970))

(declare-fun m!8097972 () Bool)

(assert (=> b!7516289 m!8097972))

(assert (=> d!2307918 d!2307928))

(declare-fun d!2307930 () Bool)

(declare-fun res!3013740 () Bool)

(declare-fun e!4481145 () Bool)

(assert (=> d!2307930 (=> res!3013740 e!4481145)))

(assert (=> d!2307930 (= res!3013740 (is-Nil!72519 (exprs!9008 c!7091)))))

(assert (=> d!2307930 (= (forall!18381 (exprs!9008 c!7091) lambda!466264) e!4481145)))

(declare-fun b!7516290 () Bool)

(declare-fun e!4481146 () Bool)

(assert (=> b!7516290 (= e!4481145 e!4481146)))

(declare-fun res!3013741 () Bool)

(assert (=> b!7516290 (=> (not res!3013741) (not e!4481146))))

(assert (=> b!7516290 (= res!3013741 (dynLambda!29850 lambda!466264 (h!78967 (exprs!9008 c!7091))))))

(declare-fun b!7516291 () Bool)

(assert (=> b!7516291 (= e!4481146 (forall!18381 (t!387280 (exprs!9008 c!7091)) lambda!466264))))

(assert (= (and d!2307930 (not res!3013740)) b!7516290))

(assert (= (and b!7516290 res!3013741) b!7516291))

(declare-fun b_lambda!288339 () Bool)

(assert (=> (not b_lambda!288339) (not b!7516290)))

(declare-fun m!8097974 () Bool)

(assert (=> b!7516290 m!8097974))

(declare-fun m!8097976 () Bool)

(assert (=> b!7516291 m!8097976))

(assert (=> d!2307920 d!2307930))

(declare-fun b!7516292 () Bool)

(declare-fun c!1388725 () Bool)

(assert (=> b!7516292 (= c!1388725 (is-ElementMatch!19756 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun e!4481150 () Option!17253)

(declare-fun e!4481152 () Option!17253)

(assert (=> b!7516292 (= e!4481150 e!4481152)))

(declare-fun d!2307932 () Bool)

(declare-fun c!1388724 () Bool)

(assert (=> d!2307932 (= c!1388724 (is-EmptyExpr!19756 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun e!4481147 () Option!17253)

(assert (=> d!2307932 (= (getLanguageWitness!1096 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) e!4481147)))

(declare-fun b!7516293 () Bool)

(declare-fun e!4481153 () Option!17253)

(declare-fun lt!2638235 () Option!17253)

(assert (=> b!7516293 (= e!4481153 lt!2638235)))

(declare-fun b!7516294 () Bool)

(declare-fun e!4481148 () Option!17253)

(assert (=> b!7516294 (= e!4481148 e!4481153)))

(declare-fun call!689328 () Option!17253)

(assert (=> b!7516294 (= lt!2638235 call!689328)))

(declare-fun c!1388728 () Bool)

(assert (=> b!7516294 (= c!1388728 (is-Some!17252 lt!2638235))))

(declare-fun b!7516295 () Bool)

(declare-fun call!689327 () Option!17253)

(assert (=> b!7516295 (= e!4481153 call!689327)))

(declare-fun b!7516296 () Bool)

(declare-fun c!1388730 () Bool)

(assert (=> b!7516296 (= c!1388730 (is-Union!19756 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun e!4481151 () Option!17253)

(assert (=> b!7516296 (= e!4481151 e!4481148)))

(declare-fun b!7516297 () Bool)

(declare-fun e!4481149 () Option!17253)

(assert (=> b!7516297 (= e!4481149 None!17252)))

(declare-fun bm!689322 () Bool)

(assert (=> bm!689322 (= call!689328 (getLanguageWitness!1096 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516298 () Bool)

(assert (=> b!7516298 (= e!4481152 e!4481151)))

(declare-fun c!1388729 () Bool)

(assert (=> b!7516298 (= c!1388729 (is-Star!19756 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516299 () Bool)

(assert (=> b!7516299 (= e!4481147 (Some!17252 Nil!72520))))

(declare-fun b!7516300 () Bool)

(declare-fun e!4481154 () Option!17253)

(assert (=> b!7516300 (= e!4481148 e!4481154)))

(declare-fun lt!2638236 () Option!17253)

(assert (=> b!7516300 (= lt!2638236 call!689327)))

(declare-fun c!1388723 () Bool)

(assert (=> b!7516300 (= c!1388723 (is-Some!17252 lt!2638236))))

(declare-fun b!7516301 () Bool)

(declare-fun c!1388727 () Bool)

(declare-fun lt!2638234 () Option!17253)

(assert (=> b!7516301 (= c!1388727 (is-Some!17252 lt!2638234))))

(assert (=> b!7516301 (= lt!2638234 call!689328)))

(assert (=> b!7516301 (= e!4481154 e!4481149)))

(declare-fun bm!689323 () Bool)

(assert (=> bm!689323 (= call!689327 (getLanguageWitness!1096 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516302 () Bool)

(assert (=> b!7516302 (= e!4481151 (Some!17252 Nil!72520))))

(declare-fun b!7516303 () Bool)

(assert (=> b!7516303 (= e!4481149 (Some!17252 (++!17359 (v!54387 lt!2638236) (v!54387 lt!2638234))))))

(declare-fun b!7516304 () Bool)

(assert (=> b!7516304 (= e!4481152 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) Nil!72520)))))

(declare-fun b!7516305 () Bool)

(assert (=> b!7516305 (= e!4481147 e!4481150)))

(declare-fun c!1388726 () Bool)

(assert (=> b!7516305 (= c!1388726 (is-EmptyLang!19756 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516306 () Bool)

(assert (=> b!7516306 (= e!4481150 None!17252)))

(declare-fun b!7516307 () Bool)

(assert (=> b!7516307 (= e!4481154 None!17252)))

(assert (= (and d!2307932 c!1388724) b!7516299))

(assert (= (and d!2307932 (not c!1388724)) b!7516305))

(assert (= (and b!7516305 c!1388726) b!7516306))

(assert (= (and b!7516305 (not c!1388726)) b!7516292))

(assert (= (and b!7516292 c!1388725) b!7516304))

(assert (= (and b!7516292 (not c!1388725)) b!7516298))

(assert (= (and b!7516298 c!1388729) b!7516302))

(assert (= (and b!7516298 (not c!1388729)) b!7516296))

(assert (= (and b!7516296 c!1388730) b!7516294))

(assert (= (and b!7516296 (not c!1388730)) b!7516300))

(assert (= (and b!7516294 c!1388728) b!7516293))

(assert (= (and b!7516294 (not c!1388728)) b!7516295))

(assert (= (and b!7516300 c!1388723) b!7516301))

(assert (= (and b!7516300 (not c!1388723)) b!7516307))

(assert (= (and b!7516301 c!1388727) b!7516303))

(assert (= (and b!7516301 (not c!1388727)) b!7516297))

(assert (= (or b!7516295 b!7516300) bm!689323))

(assert (= (or b!7516294 b!7516301) bm!689322))

(declare-fun m!8097978 () Bool)

(assert (=> bm!689322 m!8097978))

(declare-fun m!8097980 () Bool)

(assert (=> bm!689323 m!8097980))

(declare-fun m!8097982 () Bool)

(assert (=> b!7516303 m!8097982))

(assert (=> bm!689315 d!2307932))

(declare-fun b!7516308 () Bool)

(declare-fun c!1388733 () Bool)

(assert (=> b!7516308 (= c!1388733 (is-ElementMatch!19756 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun e!4481158 () Option!17253)

(declare-fun e!4481160 () Option!17253)

(assert (=> b!7516308 (= e!4481158 e!4481160)))

(declare-fun d!2307934 () Bool)

(declare-fun c!1388732 () Bool)

(assert (=> d!2307934 (= c!1388732 (is-EmptyExpr!19756 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun e!4481155 () Option!17253)

(assert (=> d!2307934 (= (getLanguageWitness!1096 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) e!4481155)))

(declare-fun b!7516309 () Bool)

(declare-fun e!4481161 () Option!17253)

(declare-fun lt!2638238 () Option!17253)

(assert (=> b!7516309 (= e!4481161 lt!2638238)))

(declare-fun b!7516310 () Bool)

(declare-fun e!4481156 () Option!17253)

(assert (=> b!7516310 (= e!4481156 e!4481161)))

(declare-fun call!689330 () Option!17253)

(assert (=> b!7516310 (= lt!2638238 call!689330)))

(declare-fun c!1388736 () Bool)

(assert (=> b!7516310 (= c!1388736 (is-Some!17252 lt!2638238))))

(declare-fun b!7516311 () Bool)

(declare-fun call!689329 () Option!17253)

(assert (=> b!7516311 (= e!4481161 call!689329)))

(declare-fun b!7516312 () Bool)

(declare-fun c!1388738 () Bool)

(assert (=> b!7516312 (= c!1388738 (is-Union!19756 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun e!4481159 () Option!17253)

(assert (=> b!7516312 (= e!4481159 e!4481156)))

(declare-fun b!7516313 () Bool)

(declare-fun e!4481157 () Option!17253)

(assert (=> b!7516313 (= e!4481157 None!17252)))

(declare-fun bm!689324 () Bool)

(assert (=> bm!689324 (= call!689330 (getLanguageWitness!1096 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516314 () Bool)

(assert (=> b!7516314 (= e!4481160 e!4481159)))

(declare-fun c!1388737 () Bool)

(assert (=> b!7516314 (= c!1388737 (is-Star!19756 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516315 () Bool)

(assert (=> b!7516315 (= e!4481155 (Some!17252 Nil!72520))))

(declare-fun b!7516316 () Bool)

(declare-fun e!4481162 () Option!17253)

(assert (=> b!7516316 (= e!4481156 e!4481162)))

(declare-fun lt!2638239 () Option!17253)

(assert (=> b!7516316 (= lt!2638239 call!689329)))

(declare-fun c!1388731 () Bool)

(assert (=> b!7516316 (= c!1388731 (is-Some!17252 lt!2638239))))

(declare-fun b!7516317 () Bool)

(declare-fun c!1388735 () Bool)

(declare-fun lt!2638237 () Option!17253)

(assert (=> b!7516317 (= c!1388735 (is-Some!17252 lt!2638237))))

(assert (=> b!7516317 (= lt!2638237 call!689330)))

(assert (=> b!7516317 (= e!4481162 e!4481157)))

(declare-fun bm!689325 () Bool)

(assert (=> bm!689325 (= call!689329 (getLanguageWitness!1096 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516318 () Bool)

(assert (=> b!7516318 (= e!4481159 (Some!17252 Nil!72520))))

(declare-fun b!7516319 () Bool)

(assert (=> b!7516319 (= e!4481157 (Some!17252 (++!17359 (v!54387 lt!2638239) (v!54387 lt!2638237))))))

(declare-fun b!7516320 () Bool)

(assert (=> b!7516320 (= e!4481160 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) Nil!72520)))))

(declare-fun b!7516321 () Bool)

(assert (=> b!7516321 (= e!4481155 e!4481158)))

(declare-fun c!1388734 () Bool)

(assert (=> b!7516321 (= c!1388734 (is-EmptyLang!19756 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516322 () Bool)

(assert (=> b!7516322 (= e!4481158 None!17252)))

(declare-fun b!7516323 () Bool)

(assert (=> b!7516323 (= e!4481162 None!17252)))

(assert (= (and d!2307934 c!1388732) b!7516315))

(assert (= (and d!2307934 (not c!1388732)) b!7516321))

(assert (= (and b!7516321 c!1388734) b!7516322))

(assert (= (and b!7516321 (not c!1388734)) b!7516308))

(assert (= (and b!7516308 c!1388733) b!7516320))

(assert (= (and b!7516308 (not c!1388733)) b!7516314))

(assert (= (and b!7516314 c!1388737) b!7516318))

(assert (= (and b!7516314 (not c!1388737)) b!7516312))

(assert (= (and b!7516312 c!1388738) b!7516310))

(assert (= (and b!7516312 (not c!1388738)) b!7516316))

(assert (= (and b!7516310 c!1388736) b!7516309))

(assert (= (and b!7516310 (not c!1388736)) b!7516311))

(assert (= (and b!7516316 c!1388731) b!7516317))

(assert (= (and b!7516316 (not c!1388731)) b!7516323))

(assert (= (and b!7516317 c!1388735) b!7516319))

(assert (= (and b!7516317 (not c!1388735)) b!7516313))

(assert (= (or b!7516311 b!7516316) bm!689325))

(assert (= (or b!7516310 b!7516317) bm!689324))

(declare-fun m!8097984 () Bool)

(assert (=> bm!689324 m!8097984))

(declare-fun m!8097986 () Bool)

(assert (=> bm!689325 m!8097986))

(declare-fun m!8097988 () Bool)

(assert (=> b!7516319 m!8097988))

(assert (=> bm!689314 d!2307934))

(declare-fun b!7516337 () Bool)

(declare-fun e!4481165 () Bool)

(declare-fun tp!2182119 () Bool)

(declare-fun tp!2182122 () Bool)

(assert (=> b!7516337 (= e!4481165 (and tp!2182119 tp!2182122))))

(declare-fun b!7516334 () Bool)

(declare-fun tp_is_empty!49843 () Bool)

(assert (=> b!7516334 (= e!4481165 tp_is_empty!49843)))

(declare-fun b!7516336 () Bool)

(declare-fun tp!2182121 () Bool)

(assert (=> b!7516336 (= e!4481165 tp!2182121)))

(declare-fun b!7516335 () Bool)

(declare-fun tp!2182123 () Bool)

(declare-fun tp!2182120 () Bool)

(assert (=> b!7516335 (= e!4481165 (and tp!2182123 tp!2182120))))

(assert (=> b!7516216 (= tp!2182101 e!4481165)))

(assert (= (and b!7516216 (is-ElementMatch!19756 (h!78967 (exprs!9008 c!7091)))) b!7516334))

(assert (= (and b!7516216 (is-Concat!28601 (h!78967 (exprs!9008 c!7091)))) b!7516335))

(assert (= (and b!7516216 (is-Star!19756 (h!78967 (exprs!9008 c!7091)))) b!7516336))

(assert (= (and b!7516216 (is-Union!19756 (h!78967 (exprs!9008 c!7091)))) b!7516337))

(declare-fun b!7516338 () Bool)

(declare-fun e!4481166 () Bool)

(declare-fun tp!2182124 () Bool)

(declare-fun tp!2182125 () Bool)

(assert (=> b!7516338 (= e!4481166 (and tp!2182124 tp!2182125))))

(assert (=> b!7516216 (= tp!2182102 e!4481166)))

(assert (= (and b!7516216 (is-Cons!72519 (t!387280 (exprs!9008 c!7091)))) b!7516338))

(declare-fun b_lambda!288341 () Bool)

(assert (= b_lambda!288339 (or d!2307920 b_lambda!288341)))

(declare-fun bs!1939397 () Bool)

(declare-fun d!2307936 () Bool)

(assert (= bs!1939397 (and d!2307936 d!2307920)))

(assert (=> bs!1939397 (= (dynLambda!29850 lambda!466264 (h!78967 (exprs!9008 c!7091))) (not (dynLambda!29850 lambda!466252 (h!78967 (exprs!9008 c!7091)))))))

(declare-fun b_lambda!288345 () Bool)

(assert (=> (not b_lambda!288345) (not bs!1939397)))

(declare-fun m!8097990 () Bool)

(assert (=> bs!1939397 m!8097990))

(assert (=> b!7516290 d!2307936))

(declare-fun b_lambda!288343 () Bool)

(assert (= b_lambda!288337 (or d!2307918 b_lambda!288343)))

(declare-fun bs!1939398 () Bool)

(declare-fun d!2307938 () Bool)

(assert (= bs!1939398 (and d!2307938 d!2307918)))

(declare-fun validRegex!10192 (Regex!19756) Bool)

(assert (=> bs!1939398 (= (dynLambda!29850 lambda!466260 (h!78967 (exprs!9008 c!7091))) (validRegex!10192 (h!78967 (exprs!9008 c!7091))))))

(declare-fun m!8097992 () Bool)

(assert (=> bs!1939398 m!8097992))

(assert (=> b!7516288 d!2307938))

(push 1)

(assert (not b_lambda!288345))

(assert (not d!2307926))

(assert (not bm!689324))

(assert (not b!7516335))

(assert (not b!7516337))

(assert (not bm!689322))

(assert (not bm!689325))

(assert (not b!7516303))

(assert (not b!7516289))

(assert (not b!7516281))

(assert (not b!7516319))

(assert (not b!7516336))

(assert tp_is_empty!49843)

(assert (not bm!689323))

(assert (not b!7516338))

(assert (not b_lambda!288343))

(assert (not bs!1939398))

(assert (not b!7516291))

(assert (not b_lambda!288341))

(assert (not b!7516282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288349 () Bool)

(assert (= b_lambda!288345 (or b!7516151 b_lambda!288349)))

(declare-fun bs!1939399 () Bool)

(declare-fun d!2307948 () Bool)

(assert (= bs!1939399 (and d!2307948 b!7516151)))

(declare-fun lostCause!1627 (Regex!19756) Bool)

(assert (=> bs!1939399 (= (dynLambda!29850 lambda!466252 (h!78967 (exprs!9008 c!7091))) (lostCause!1627 (h!78967 (exprs!9008 c!7091))))))

(declare-fun m!8098010 () Bool)

(assert (=> bs!1939399 m!8098010))

(assert (=> bs!1939397 d!2307948))

(push 1)

(assert (not d!2307926))

(assert (not bm!689324))

(assert (not bs!1939399))

(assert (not b!7516335))

(assert (not b!7516337))

(assert (not bm!689322))

(assert (not bm!689325))

(assert (not b_lambda!288349))

(assert (not b!7516303))

(assert (not b!7516289))

(assert (not b!7516281))

(assert (not b!7516319))

(assert (not b!7516336))

(assert tp_is_empty!49843)

(assert (not bm!689323))

(assert (not b!7516338))

(assert (not b_lambda!288343))

(assert (not bs!1939398))

(assert (not b!7516291))

(assert (not b_lambda!288341))

(assert (not b!7516282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1388760 () Bool)

(declare-fun b!7516406 () Bool)

(assert (=> b!7516406 (= c!1388760 (is-ElementMatch!19756 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481204 () Option!17253)

(declare-fun e!4481206 () Option!17253)

(assert (=> b!7516406 (= e!4481204 e!4481206)))

(declare-fun d!2307956 () Bool)

(declare-fun c!1388759 () Bool)

(assert (=> d!2307956 (= c!1388759 (is-EmptyExpr!19756 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481201 () Option!17253)

(assert (=> d!2307956 (= (getLanguageWitness!1096 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) e!4481201)))

(declare-fun b!7516407 () Bool)

(declare-fun e!4481207 () Option!17253)

(declare-fun lt!2638250 () Option!17253)

(assert (=> b!7516407 (= e!4481207 lt!2638250)))

(declare-fun b!7516408 () Bool)

(declare-fun e!4481202 () Option!17253)

(assert (=> b!7516408 (= e!4481202 e!4481207)))

(declare-fun call!689336 () Option!17253)

(assert (=> b!7516408 (= lt!2638250 call!689336)))

(declare-fun c!1388763 () Bool)

(assert (=> b!7516408 (= c!1388763 (is-Some!17252 lt!2638250))))

(declare-fun b!7516409 () Bool)

(declare-fun call!689335 () Option!17253)

(assert (=> b!7516409 (= e!4481207 call!689335)))

(declare-fun c!1388765 () Bool)

(declare-fun b!7516410 () Bool)

(assert (=> b!7516410 (= c!1388765 (is-Union!19756 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481205 () Option!17253)

(assert (=> b!7516410 (= e!4481205 e!4481202)))

(declare-fun b!7516411 () Bool)

(declare-fun e!4481203 () Option!17253)

(assert (=> b!7516411 (= e!4481203 None!17252)))

(declare-fun bm!689330 () Bool)

(assert (=> bm!689330 (= call!689336 (getLanguageWitness!1096 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516412 () Bool)

(assert (=> b!7516412 (= e!4481206 e!4481205)))

(declare-fun c!1388764 () Bool)

(assert (=> b!7516412 (= c!1388764 (is-Star!19756 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516413 () Bool)

(assert (=> b!7516413 (= e!4481201 (Some!17252 Nil!72520))))

(declare-fun b!7516414 () Bool)

(declare-fun e!4481208 () Option!17253)

(assert (=> b!7516414 (= e!4481202 e!4481208)))

(declare-fun lt!2638251 () Option!17253)

(assert (=> b!7516414 (= lt!2638251 call!689335)))

(declare-fun c!1388758 () Bool)

(assert (=> b!7516414 (= c!1388758 (is-Some!17252 lt!2638251))))

(declare-fun b!7516415 () Bool)

(declare-fun c!1388762 () Bool)

(declare-fun lt!2638249 () Option!17253)

(assert (=> b!7516415 (= c!1388762 (is-Some!17252 lt!2638249))))

(assert (=> b!7516415 (= lt!2638249 call!689336)))

(assert (=> b!7516415 (= e!4481208 e!4481203)))

(declare-fun bm!689331 () Bool)

(assert (=> bm!689331 (= call!689335 (getLanguageWitness!1096 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516416 () Bool)

(assert (=> b!7516416 (= e!4481205 (Some!17252 Nil!72520))))

(declare-fun b!7516417 () Bool)

(assert (=> b!7516417 (= e!4481203 (Some!17252 (++!17359 (v!54387 lt!2638251) (v!54387 lt!2638249))))))

(declare-fun b!7516418 () Bool)

(assert (=> b!7516418 (= e!4481206 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) Nil!72520)))))

(declare-fun b!7516419 () Bool)

(assert (=> b!7516419 (= e!4481201 e!4481204)))

(declare-fun c!1388761 () Bool)

(assert (=> b!7516419 (= c!1388761 (is-EmptyLang!19756 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516420 () Bool)

(assert (=> b!7516420 (= e!4481204 None!17252)))

(declare-fun b!7516421 () Bool)

(assert (=> b!7516421 (= e!4481208 None!17252)))

(assert (= (and d!2307956 c!1388759) b!7516413))

(assert (= (and d!2307956 (not c!1388759)) b!7516419))

(assert (= (and b!7516419 c!1388761) b!7516420))

(assert (= (and b!7516419 (not c!1388761)) b!7516406))

(assert (= (and b!7516406 c!1388760) b!7516418))

(assert (= (and b!7516406 (not c!1388760)) b!7516412))

(assert (= (and b!7516412 c!1388764) b!7516416))

(assert (= (and b!7516412 (not c!1388764)) b!7516410))

(assert (= (and b!7516410 c!1388765) b!7516408))

(assert (= (and b!7516410 (not c!1388765)) b!7516414))

(assert (= (and b!7516408 c!1388763) b!7516407))

(assert (= (and b!7516408 (not c!1388763)) b!7516409))

(assert (= (and b!7516414 c!1388758) b!7516415))

(assert (= (and b!7516414 (not c!1388758)) b!7516421))

(assert (= (and b!7516415 c!1388762) b!7516417))

(assert (= (and b!7516415 (not c!1388762)) b!7516411))

(assert (= (or b!7516409 b!7516414) bm!689331))

(assert (= (or b!7516408 b!7516415) bm!689330))

(declare-fun m!8098034 () Bool)

(assert (=> bm!689330 m!8098034))

(declare-fun m!8098036 () Bool)

(assert (=> bm!689331 m!8098036))

(declare-fun m!8098038 () Bool)

(assert (=> b!7516417 m!8098038))

(assert (=> bm!689324 d!2307956))

(declare-fun b!7516440 () Bool)

(declare-fun e!4481224 () Bool)

(declare-fun call!689344 () Bool)

(assert (=> b!7516440 (= e!4481224 call!689344)))

(declare-fun b!7516441 () Bool)

(declare-fun res!3013767 () Bool)

(declare-fun e!4481228 () Bool)

(assert (=> b!7516441 (=> (not res!3013767) (not e!4481228))))

(declare-fun call!689345 () Bool)

(assert (=> b!7516441 (= res!3013767 call!689345)))

(declare-fun e!4481227 () Bool)

(assert (=> b!7516441 (= e!4481227 e!4481228)))

(declare-fun bm!689338 () Bool)

(declare-fun call!689343 () Bool)

(declare-fun c!1388770 () Bool)

(assert (=> bm!689338 (= call!689343 (validRegex!10192 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516442 () Bool)

(declare-fun e!4481225 () Bool)

(assert (=> b!7516442 (= e!4481225 e!4481224)))

(declare-fun res!3013766 () Bool)

(declare-fun nullable!8596 (Regex!19756) Bool)

(assert (=> b!7516442 (= res!3013766 (not (nullable!8596 (reg!20085 (h!78967 (exprs!9008 c!7091))))))))

(assert (=> b!7516442 (=> (not res!3013766) (not e!4481224))))

(declare-fun bm!689339 () Bool)

(assert (=> bm!689339 (= call!689345 call!689344)))

(declare-fun bm!689340 () Bool)

(declare-fun c!1388771 () Bool)

(assert (=> bm!689340 (= call!689344 (validRegex!10192 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))

(declare-fun b!7516443 () Bool)

(assert (=> b!7516443 (= e!4481228 call!689343)))

(declare-fun d!2307958 () Bool)

(declare-fun res!3013770 () Bool)

(declare-fun e!4481229 () Bool)

(assert (=> d!2307958 (=> res!3013770 e!4481229)))

(assert (=> d!2307958 (= res!3013770 (is-ElementMatch!19756 (h!78967 (exprs!9008 c!7091))))))

(assert (=> d!2307958 (= (validRegex!10192 (h!78967 (exprs!9008 c!7091))) e!4481229)))

(declare-fun b!7516444 () Bool)

(assert (=> b!7516444 (= e!4481225 e!4481227)))

(assert (=> b!7516444 (= c!1388770 (is-Union!19756 (h!78967 (exprs!9008 c!7091))))))

(declare-fun b!7516445 () Bool)

(declare-fun e!4481223 () Bool)

(assert (=> b!7516445 (= e!4481223 call!689343)))

(declare-fun b!7516446 () Bool)

(declare-fun e!4481226 () Bool)

(assert (=> b!7516446 (= e!4481226 e!4481223)))

(declare-fun res!3013768 () Bool)

(assert (=> b!7516446 (=> (not res!3013768) (not e!4481223))))

(assert (=> b!7516446 (= res!3013768 call!689345)))

(declare-fun b!7516447 () Bool)

(declare-fun res!3013769 () Bool)

(assert (=> b!7516447 (=> res!3013769 e!4481226)))

(assert (=> b!7516447 (= res!3013769 (not (is-Concat!28601 (h!78967 (exprs!9008 c!7091)))))))

(assert (=> b!7516447 (= e!4481227 e!4481226)))

(declare-fun b!7516448 () Bool)

(assert (=> b!7516448 (= e!4481229 e!4481225)))

(assert (=> b!7516448 (= c!1388771 (is-Star!19756 (h!78967 (exprs!9008 c!7091))))))

(assert (= (and d!2307958 (not res!3013770)) b!7516448))

(assert (= (and b!7516448 c!1388771) b!7516442))

(assert (= (and b!7516448 (not c!1388771)) b!7516444))

(assert (= (and b!7516442 res!3013766) b!7516440))

(assert (= (and b!7516444 c!1388770) b!7516441))

(assert (= (and b!7516444 (not c!1388770)) b!7516447))

(assert (= (and b!7516441 res!3013767) b!7516443))

(assert (= (and b!7516447 (not res!3013769)) b!7516446))

(assert (= (and b!7516446 res!3013768) b!7516445))

(assert (= (or b!7516441 b!7516446) bm!689339))

(assert (= (or b!7516443 b!7516445) bm!689338))

(assert (= (or b!7516440 bm!689339) bm!689340))

(declare-fun m!8098040 () Bool)

(assert (=> bm!689338 m!8098040))

(declare-fun m!8098042 () Bool)

(assert (=> b!7516442 m!8098042))

(declare-fun m!8098044 () Bool)

(assert (=> bm!689340 m!8098044))

(assert (=> bs!1939398 d!2307958))

(declare-fun d!2307960 () Bool)

(declare-fun res!3013771 () Bool)

(declare-fun e!4481230 () Bool)

(assert (=> d!2307960 (=> res!3013771 e!4481230)))

(assert (=> d!2307960 (= res!3013771 (is-Nil!72519 (t!387280 (exprs!9008 c!7091))))))

(assert (=> d!2307960 (= (forall!18381 (t!387280 (exprs!9008 c!7091)) lambda!466260) e!4481230)))

(declare-fun b!7516449 () Bool)

(declare-fun e!4481231 () Bool)

(assert (=> b!7516449 (= e!4481230 e!4481231)))

(declare-fun res!3013772 () Bool)

(assert (=> b!7516449 (=> (not res!3013772) (not e!4481231))))

(assert (=> b!7516449 (= res!3013772 (dynLambda!29850 lambda!466260 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(declare-fun b!7516450 () Bool)

(assert (=> b!7516450 (= e!4481231 (forall!18381 (t!387280 (t!387280 (exprs!9008 c!7091))) lambda!466260))))

(assert (= (and d!2307960 (not res!3013771)) b!7516449))

(assert (= (and b!7516449 res!3013772) b!7516450))

(declare-fun b_lambda!288359 () Bool)

(assert (=> (not b_lambda!288359) (not b!7516449)))

(declare-fun m!8098046 () Bool)

(assert (=> b!7516449 m!8098046))

(declare-fun m!8098048 () Bool)

(assert (=> b!7516450 m!8098048))

(assert (=> b!7516289 d!2307960))

(declare-fun c!1388774 () Bool)

(declare-fun b!7516451 () Bool)

(assert (=> b!7516451 (= c!1388774 (is-ElementMatch!19756 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481235 () Option!17253)

(declare-fun e!4481237 () Option!17253)

(assert (=> b!7516451 (= e!4481235 e!4481237)))

(declare-fun c!1388773 () Bool)

(declare-fun d!2307962 () Bool)

(assert (=> d!2307962 (= c!1388773 (is-EmptyExpr!19756 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481232 () Option!17253)

(assert (=> d!2307962 (= (getLanguageWitness!1096 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) e!4481232)))

(declare-fun b!7516452 () Bool)

(declare-fun e!4481238 () Option!17253)

(declare-fun lt!2638253 () Option!17253)

(assert (=> b!7516452 (= e!4481238 lt!2638253)))

(declare-fun b!7516453 () Bool)

(declare-fun e!4481233 () Option!17253)

(assert (=> b!7516453 (= e!4481233 e!4481238)))

(declare-fun call!689347 () Option!17253)

(assert (=> b!7516453 (= lt!2638253 call!689347)))

(declare-fun c!1388777 () Bool)

(assert (=> b!7516453 (= c!1388777 (is-Some!17252 lt!2638253))))

(declare-fun b!7516454 () Bool)

(declare-fun call!689346 () Option!17253)

(assert (=> b!7516454 (= e!4481238 call!689346)))

(declare-fun c!1388779 () Bool)

(declare-fun b!7516455 () Bool)

(assert (=> b!7516455 (= c!1388779 (is-Union!19756 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481236 () Option!17253)

(assert (=> b!7516455 (= e!4481236 e!4481233)))

(declare-fun b!7516456 () Bool)

(declare-fun e!4481234 () Option!17253)

(assert (=> b!7516456 (= e!4481234 None!17252)))

(declare-fun bm!689341 () Bool)

(assert (=> bm!689341 (= call!689347 (getLanguageWitness!1096 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516457 () Bool)

(assert (=> b!7516457 (= e!4481237 e!4481236)))

(declare-fun c!1388778 () Bool)

(assert (=> b!7516457 (= c!1388778 (is-Star!19756 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516458 () Bool)

(assert (=> b!7516458 (= e!4481232 (Some!17252 Nil!72520))))

(declare-fun b!7516459 () Bool)

(declare-fun e!4481239 () Option!17253)

(assert (=> b!7516459 (= e!4481233 e!4481239)))

(declare-fun lt!2638254 () Option!17253)

(assert (=> b!7516459 (= lt!2638254 call!689346)))

(declare-fun c!1388772 () Bool)

(assert (=> b!7516459 (= c!1388772 (is-Some!17252 lt!2638254))))

(declare-fun b!7516460 () Bool)

(declare-fun c!1388776 () Bool)

(declare-fun lt!2638252 () Option!17253)

(assert (=> b!7516460 (= c!1388776 (is-Some!17252 lt!2638252))))

(assert (=> b!7516460 (= lt!2638252 call!689347)))

(assert (=> b!7516460 (= e!4481239 e!4481234)))

(declare-fun bm!689342 () Bool)

(assert (=> bm!689342 (= call!689346 (getLanguageWitness!1096 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516461 () Bool)

(assert (=> b!7516461 (= e!4481236 (Some!17252 Nil!72520))))

(declare-fun b!7516462 () Bool)

(assert (=> b!7516462 (= e!4481234 (Some!17252 (++!17359 (v!54387 lt!2638254) (v!54387 lt!2638252))))))

(declare-fun b!7516463 () Bool)

(assert (=> b!7516463 (= e!4481237 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) Nil!72520)))))

(declare-fun b!7516464 () Bool)

(assert (=> b!7516464 (= e!4481232 e!4481235)))

(declare-fun c!1388775 () Bool)

(assert (=> b!7516464 (= c!1388775 (is-EmptyLang!19756 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516465 () Bool)

(assert (=> b!7516465 (= e!4481235 None!17252)))

(declare-fun b!7516466 () Bool)

(assert (=> b!7516466 (= e!4481239 None!17252)))

(assert (= (and d!2307962 c!1388773) b!7516458))

(assert (= (and d!2307962 (not c!1388773)) b!7516464))

(assert (= (and b!7516464 c!1388775) b!7516465))

(assert (= (and b!7516464 (not c!1388775)) b!7516451))

(assert (= (and b!7516451 c!1388774) b!7516463))

(assert (= (and b!7516451 (not c!1388774)) b!7516457))

(assert (= (and b!7516457 c!1388778) b!7516461))

(assert (= (and b!7516457 (not c!1388778)) b!7516455))

(assert (= (and b!7516455 c!1388779) b!7516453))

(assert (= (and b!7516455 (not c!1388779)) b!7516459))

(assert (= (and b!7516453 c!1388777) b!7516452))

(assert (= (and b!7516453 (not c!1388777)) b!7516454))

(assert (= (and b!7516459 c!1388772) b!7516460))

(assert (= (and b!7516459 (not c!1388772)) b!7516466))

(assert (= (and b!7516460 c!1388776) b!7516462))

(assert (= (and b!7516460 (not c!1388776)) b!7516456))

(assert (= (or b!7516454 b!7516459) bm!689342))

(assert (= (or b!7516453 b!7516460) bm!689341))

(declare-fun m!8098050 () Bool)

(assert (=> bm!689341 m!8098050))

(declare-fun m!8098052 () Bool)

(assert (=> bm!689342 m!8098052))

(declare-fun m!8098054 () Bool)

(assert (=> b!7516462 m!8098054))

(assert (=> bm!689323 d!2307962))

(declare-fun b!7516467 () Bool)

(declare-fun e!4481241 () List!72644)

(assert (=> b!7516467 (= e!4481241 (v!54387 lt!2638219))))

(declare-fun lt!2638255 () List!72644)

(declare-fun e!4481240 () Bool)

(declare-fun b!7516470 () Bool)

(assert (=> b!7516470 (= e!4481240 (or (not (= (v!54387 lt!2638219) Nil!72520)) (= lt!2638255 (t!387281 (v!54387 lt!2638221)))))))

(declare-fun b!7516469 () Bool)

(declare-fun res!3013773 () Bool)

(assert (=> b!7516469 (=> (not res!3013773) (not e!4481240))))

(assert (=> b!7516469 (= res!3013773 (= (size!42300 lt!2638255) (+ (size!42300 (t!387281 (v!54387 lt!2638221))) (size!42300 (v!54387 lt!2638219)))))))

(declare-fun b!7516468 () Bool)

(assert (=> b!7516468 (= e!4481241 (Cons!72520 (h!78968 (t!387281 (v!54387 lt!2638221))) (++!17359 (t!387281 (t!387281 (v!54387 lt!2638221))) (v!54387 lt!2638219))))))

(declare-fun d!2307964 () Bool)

(assert (=> d!2307964 e!4481240))

(declare-fun res!3013774 () Bool)

(assert (=> d!2307964 (=> (not res!3013774) (not e!4481240))))

(assert (=> d!2307964 (= res!3013774 (= (content!15343 lt!2638255) (set.union (content!15343 (t!387281 (v!54387 lt!2638221))) (content!15343 (v!54387 lt!2638219)))))))

(assert (=> d!2307964 (= lt!2638255 e!4481241)))

(declare-fun c!1388780 () Bool)

(assert (=> d!2307964 (= c!1388780 (is-Nil!72520 (t!387281 (v!54387 lt!2638221))))))

(assert (=> d!2307964 (= (++!17359 (t!387281 (v!54387 lt!2638221)) (v!54387 lt!2638219)) lt!2638255)))

(assert (= (and d!2307964 c!1388780) b!7516467))

(assert (= (and d!2307964 (not c!1388780)) b!7516468))

(assert (= (and d!2307964 res!3013774) b!7516469))

(assert (= (and b!7516469 res!3013773) b!7516470))

(declare-fun m!8098056 () Bool)

(assert (=> b!7516469 m!8098056))

(declare-fun m!8098058 () Bool)

(assert (=> b!7516469 m!8098058))

(assert (=> b!7516469 m!8097960))

(declare-fun m!8098060 () Bool)

(assert (=> b!7516468 m!8098060))

(declare-fun m!8098062 () Bool)

(assert (=> d!2307964 m!8098062))

(declare-fun m!8098064 () Bool)

(assert (=> d!2307964 m!8098064))

(assert (=> d!2307964 m!8097968))

(assert (=> b!7516281 d!2307964))

(declare-fun b!7516471 () Bool)

(declare-fun e!4481243 () List!72644)

(assert (=> b!7516471 (= e!4481243 (v!54387 lt!2638234))))

(declare-fun e!4481242 () Bool)

(declare-fun lt!2638256 () List!72644)

(declare-fun b!7516474 () Bool)

(assert (=> b!7516474 (= e!4481242 (or (not (= (v!54387 lt!2638234) Nil!72520)) (= lt!2638256 (v!54387 lt!2638236))))))

(declare-fun b!7516473 () Bool)

(declare-fun res!3013775 () Bool)

(assert (=> b!7516473 (=> (not res!3013775) (not e!4481242))))

(assert (=> b!7516473 (= res!3013775 (= (size!42300 lt!2638256) (+ (size!42300 (v!54387 lt!2638236)) (size!42300 (v!54387 lt!2638234)))))))

(declare-fun b!7516472 () Bool)

(assert (=> b!7516472 (= e!4481243 (Cons!72520 (h!78968 (v!54387 lt!2638236)) (++!17359 (t!387281 (v!54387 lt!2638236)) (v!54387 lt!2638234))))))

(declare-fun d!2307966 () Bool)

(assert (=> d!2307966 e!4481242))

(declare-fun res!3013776 () Bool)

(assert (=> d!2307966 (=> (not res!3013776) (not e!4481242))))

(assert (=> d!2307966 (= res!3013776 (= (content!15343 lt!2638256) (set.union (content!15343 (v!54387 lt!2638236)) (content!15343 (v!54387 lt!2638234)))))))

(assert (=> d!2307966 (= lt!2638256 e!4481243)))

(declare-fun c!1388781 () Bool)

(assert (=> d!2307966 (= c!1388781 (is-Nil!72520 (v!54387 lt!2638236)))))

(assert (=> d!2307966 (= (++!17359 (v!54387 lt!2638236) (v!54387 lt!2638234)) lt!2638256)))

(assert (= (and d!2307966 c!1388781) b!7516471))

(assert (= (and d!2307966 (not c!1388781)) b!7516472))

(assert (= (and d!2307966 res!3013776) b!7516473))

(assert (= (and b!7516473 res!3013775) b!7516474))

(declare-fun m!8098066 () Bool)

(assert (=> b!7516473 m!8098066))

(declare-fun m!8098068 () Bool)

(assert (=> b!7516473 m!8098068))

(declare-fun m!8098070 () Bool)

(assert (=> b!7516473 m!8098070))

(declare-fun m!8098072 () Bool)

(assert (=> b!7516472 m!8098072))

(declare-fun m!8098074 () Bool)

(assert (=> d!2307966 m!8098074))

(declare-fun m!8098076 () Bool)

(assert (=> d!2307966 m!8098076))

(declare-fun m!8098078 () Bool)

(assert (=> d!2307966 m!8098078))

(assert (=> b!7516303 d!2307966))

(declare-fun d!2307968 () Bool)

(declare-fun res!3013777 () Bool)

(declare-fun e!4481244 () Bool)

(assert (=> d!2307968 (=> res!3013777 e!4481244)))

(assert (=> d!2307968 (= res!3013777 (is-Nil!72519 (t!387280 (exprs!9008 c!7091))))))

(assert (=> d!2307968 (= (forall!18381 (t!387280 (exprs!9008 c!7091)) lambda!466264) e!4481244)))

(declare-fun b!7516475 () Bool)

(declare-fun e!4481245 () Bool)

(assert (=> b!7516475 (= e!4481244 e!4481245)))

(declare-fun res!3013778 () Bool)

(assert (=> b!7516475 (=> (not res!3013778) (not e!4481245))))

(assert (=> b!7516475 (= res!3013778 (dynLambda!29850 lambda!466264 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(declare-fun b!7516476 () Bool)

(assert (=> b!7516476 (= e!4481245 (forall!18381 (t!387280 (t!387280 (exprs!9008 c!7091))) lambda!466264))))

(assert (= (and d!2307968 (not res!3013777)) b!7516475))

(assert (= (and b!7516475 res!3013778) b!7516476))

(declare-fun b_lambda!288361 () Bool)

(assert (=> (not b_lambda!288361) (not b!7516475)))

(declare-fun m!8098080 () Bool)

(assert (=> b!7516475 m!8098080))

(declare-fun m!8098082 () Bool)

(assert (=> b!7516476 m!8098082))

(assert (=> b!7516291 d!2307968))

(declare-fun d!2307970 () Bool)

(declare-fun lt!2638259 () Int)

(assert (=> d!2307970 (>= lt!2638259 0)))

(declare-fun e!4481248 () Int)

(assert (=> d!2307970 (= lt!2638259 e!4481248)))

(declare-fun c!1388784 () Bool)

(assert (=> d!2307970 (= c!1388784 (is-Nil!72520 lt!2638233))))

(assert (=> d!2307970 (= (size!42300 lt!2638233) lt!2638259)))

(declare-fun b!7516481 () Bool)

(assert (=> b!7516481 (= e!4481248 0)))

(declare-fun b!7516482 () Bool)

(assert (=> b!7516482 (= e!4481248 (+ 1 (size!42300 (t!387281 lt!2638233))))))

(assert (= (and d!2307970 c!1388784) b!7516481))

(assert (= (and d!2307970 (not c!1388784)) b!7516482))

(declare-fun m!8098084 () Bool)

(assert (=> b!7516482 m!8098084))

(assert (=> b!7516282 d!2307970))

(declare-fun d!2307972 () Bool)

(declare-fun lt!2638260 () Int)

(assert (=> d!2307972 (>= lt!2638260 0)))

(declare-fun e!4481249 () Int)

(assert (=> d!2307972 (= lt!2638260 e!4481249)))

(declare-fun c!1388785 () Bool)

(assert (=> d!2307972 (= c!1388785 (is-Nil!72520 (v!54387 lt!2638221)))))

(assert (=> d!2307972 (= (size!42300 (v!54387 lt!2638221)) lt!2638260)))

(declare-fun b!7516483 () Bool)

(assert (=> b!7516483 (= e!4481249 0)))

(declare-fun b!7516484 () Bool)

(assert (=> b!7516484 (= e!4481249 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638221)))))))

(assert (= (and d!2307972 c!1388785) b!7516483))

(assert (= (and d!2307972 (not c!1388785)) b!7516484))

(assert (=> b!7516484 m!8098058))

(assert (=> b!7516282 d!2307972))

(declare-fun d!2307974 () Bool)

(declare-fun lt!2638261 () Int)

(assert (=> d!2307974 (>= lt!2638261 0)))

(declare-fun e!4481250 () Int)

(assert (=> d!2307974 (= lt!2638261 e!4481250)))

(declare-fun c!1388786 () Bool)

(assert (=> d!2307974 (= c!1388786 (is-Nil!72520 (v!54387 lt!2638219)))))

(assert (=> d!2307974 (= (size!42300 (v!54387 lt!2638219)) lt!2638261)))

(declare-fun b!7516485 () Bool)

(assert (=> b!7516485 (= e!4481250 0)))

(declare-fun b!7516486 () Bool)

(assert (=> b!7516486 (= e!4481250 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638219)))))))

(assert (= (and d!2307974 c!1388786) b!7516485))

(assert (= (and d!2307974 (not c!1388786)) b!7516486))

(declare-fun m!8098086 () Bool)

(assert (=> b!7516486 m!8098086))

(assert (=> b!7516282 d!2307974))

(declare-fun d!2307976 () Bool)

(declare-fun lostCauseFct!409 (Regex!19756) Bool)

(assert (=> d!2307976 (= (lostCause!1627 (h!78967 (exprs!9008 c!7091))) (lostCauseFct!409 (h!78967 (exprs!9008 c!7091))))))

(declare-fun bs!1939402 () Bool)

(assert (= bs!1939402 d!2307976))

(declare-fun m!8098088 () Bool)

(assert (=> bs!1939402 m!8098088))

(assert (=> bs!1939399 d!2307976))

(declare-fun c!1388789 () Bool)

(declare-fun b!7516487 () Bool)

(assert (=> b!7516487 (= c!1388789 (is-ElementMatch!19756 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481254 () Option!17253)

(declare-fun e!4481256 () Option!17253)

(assert (=> b!7516487 (= e!4481254 e!4481256)))

(declare-fun c!1388788 () Bool)

(declare-fun d!2307978 () Bool)

(assert (=> d!2307978 (= c!1388788 (is-EmptyExpr!19756 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481251 () Option!17253)

(assert (=> d!2307978 (= (getLanguageWitness!1096 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) e!4481251)))

(declare-fun b!7516488 () Bool)

(declare-fun e!4481257 () Option!17253)

(declare-fun lt!2638263 () Option!17253)

(assert (=> b!7516488 (= e!4481257 lt!2638263)))

(declare-fun b!7516489 () Bool)

(declare-fun e!4481252 () Option!17253)

(assert (=> b!7516489 (= e!4481252 e!4481257)))

(declare-fun call!689349 () Option!17253)

(assert (=> b!7516489 (= lt!2638263 call!689349)))

(declare-fun c!1388792 () Bool)

(assert (=> b!7516489 (= c!1388792 (is-Some!17252 lt!2638263))))

(declare-fun b!7516490 () Bool)

(declare-fun call!689348 () Option!17253)

(assert (=> b!7516490 (= e!4481257 call!689348)))

(declare-fun b!7516491 () Bool)

(declare-fun c!1388794 () Bool)

(assert (=> b!7516491 (= c!1388794 (is-Union!19756 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481255 () Option!17253)

(assert (=> b!7516491 (= e!4481255 e!4481252)))

(declare-fun b!7516492 () Bool)

(declare-fun e!4481253 () Option!17253)

(assert (=> b!7516492 (= e!4481253 None!17252)))

(declare-fun bm!689343 () Bool)

(assert (=> bm!689343 (= call!689349 (getLanguageWitness!1096 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516493 () Bool)

(assert (=> b!7516493 (= e!4481256 e!4481255)))

(declare-fun c!1388793 () Bool)

(assert (=> b!7516493 (= c!1388793 (is-Star!19756 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516494 () Bool)

(assert (=> b!7516494 (= e!4481251 (Some!17252 Nil!72520))))

(declare-fun b!7516495 () Bool)

(declare-fun e!4481258 () Option!17253)

(assert (=> b!7516495 (= e!4481252 e!4481258)))

(declare-fun lt!2638264 () Option!17253)

(assert (=> b!7516495 (= lt!2638264 call!689348)))

(declare-fun c!1388787 () Bool)

(assert (=> b!7516495 (= c!1388787 (is-Some!17252 lt!2638264))))

(declare-fun b!7516496 () Bool)

(declare-fun c!1388791 () Bool)

(declare-fun lt!2638262 () Option!17253)

(assert (=> b!7516496 (= c!1388791 (is-Some!17252 lt!2638262))))

(assert (=> b!7516496 (= lt!2638262 call!689349)))

(assert (=> b!7516496 (= e!4481258 e!4481253)))

(declare-fun bm!689344 () Bool)

(assert (=> bm!689344 (= call!689348 (getLanguageWitness!1096 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516497 () Bool)

(assert (=> b!7516497 (= e!4481255 (Some!17252 Nil!72520))))

(declare-fun b!7516498 () Bool)

(assert (=> b!7516498 (= e!4481253 (Some!17252 (++!17359 (v!54387 lt!2638264) (v!54387 lt!2638262))))))

(declare-fun b!7516499 () Bool)

(assert (=> b!7516499 (= e!4481256 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) Nil!72520)))))

(declare-fun b!7516500 () Bool)

(assert (=> b!7516500 (= e!4481251 e!4481254)))

(declare-fun c!1388790 () Bool)

(assert (=> b!7516500 (= c!1388790 (is-EmptyLang!19756 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516501 () Bool)

(assert (=> b!7516501 (= e!4481254 None!17252)))

(declare-fun b!7516502 () Bool)

(assert (=> b!7516502 (= e!4481258 None!17252)))

(assert (= (and d!2307978 c!1388788) b!7516494))

(assert (= (and d!2307978 (not c!1388788)) b!7516500))

(assert (= (and b!7516500 c!1388790) b!7516501))

(assert (= (and b!7516500 (not c!1388790)) b!7516487))

(assert (= (and b!7516487 c!1388789) b!7516499))

(assert (= (and b!7516487 (not c!1388789)) b!7516493))

(assert (= (and b!7516493 c!1388793) b!7516497))

(assert (= (and b!7516493 (not c!1388793)) b!7516491))

(assert (= (and b!7516491 c!1388794) b!7516489))

(assert (= (and b!7516491 (not c!1388794)) b!7516495))

(assert (= (and b!7516489 c!1388792) b!7516488))

(assert (= (and b!7516489 (not c!1388792)) b!7516490))

(assert (= (and b!7516495 c!1388787) b!7516496))

(assert (= (and b!7516495 (not c!1388787)) b!7516502))

(assert (= (and b!7516496 c!1388791) b!7516498))

(assert (= (and b!7516496 (not c!1388791)) b!7516492))

(assert (= (or b!7516490 b!7516495) bm!689344))

(assert (= (or b!7516489 b!7516496) bm!689343))

(declare-fun m!8098090 () Bool)

(assert (=> bm!689343 m!8098090))

(declare-fun m!8098092 () Bool)

(assert (=> bm!689344 m!8098092))

(declare-fun m!8098094 () Bool)

(assert (=> b!7516498 m!8098094))

(assert (=> bm!689325 d!2307978))

(declare-fun c!1388797 () Bool)

(declare-fun b!7516503 () Bool)

(assert (=> b!7516503 (= c!1388797 (is-ElementMatch!19756 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481262 () Option!17253)

(declare-fun e!4481264 () Option!17253)

(assert (=> b!7516503 (= e!4481262 e!4481264)))

(declare-fun c!1388796 () Bool)

(declare-fun d!2307980 () Bool)

(assert (=> d!2307980 (= c!1388796 (is-EmptyExpr!19756 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481259 () Option!17253)

(assert (=> d!2307980 (= (getLanguageWitness!1096 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) e!4481259)))

(declare-fun b!7516504 () Bool)

(declare-fun e!4481265 () Option!17253)

(declare-fun lt!2638266 () Option!17253)

(assert (=> b!7516504 (= e!4481265 lt!2638266)))

(declare-fun b!7516505 () Bool)

(declare-fun e!4481260 () Option!17253)

(assert (=> b!7516505 (= e!4481260 e!4481265)))

(declare-fun call!689351 () Option!17253)

(assert (=> b!7516505 (= lt!2638266 call!689351)))

(declare-fun c!1388800 () Bool)

(assert (=> b!7516505 (= c!1388800 (is-Some!17252 lt!2638266))))

(declare-fun b!7516506 () Bool)

(declare-fun call!689350 () Option!17253)

(assert (=> b!7516506 (= e!4481265 call!689350)))

(declare-fun c!1388802 () Bool)

(declare-fun b!7516507 () Bool)

(assert (=> b!7516507 (= c!1388802 (is-Union!19756 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun e!4481263 () Option!17253)

(assert (=> b!7516507 (= e!4481263 e!4481260)))

(declare-fun b!7516508 () Bool)

(declare-fun e!4481261 () Option!17253)

(assert (=> b!7516508 (= e!4481261 None!17252)))

(declare-fun bm!689345 () Bool)

(assert (=> bm!689345 (= call!689351 (getLanguageWitness!1096 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516509 () Bool)

(assert (=> b!7516509 (= e!4481264 e!4481263)))

(declare-fun c!1388801 () Bool)

(assert (=> b!7516509 (= c!1388801 (is-Star!19756 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516510 () Bool)

(assert (=> b!7516510 (= e!4481259 (Some!17252 Nil!72520))))

(declare-fun b!7516511 () Bool)

(declare-fun e!4481266 () Option!17253)

(assert (=> b!7516511 (= e!4481260 e!4481266)))

(declare-fun lt!2638267 () Option!17253)

(assert (=> b!7516511 (= lt!2638267 call!689350)))

(declare-fun c!1388795 () Bool)

(assert (=> b!7516511 (= c!1388795 (is-Some!17252 lt!2638267))))

(declare-fun b!7516512 () Bool)

(declare-fun c!1388799 () Bool)

(declare-fun lt!2638265 () Option!17253)

(assert (=> b!7516512 (= c!1388799 (is-Some!17252 lt!2638265))))

(assert (=> b!7516512 (= lt!2638265 call!689351)))

(assert (=> b!7516512 (= e!4481266 e!4481261)))

(declare-fun bm!689346 () Bool)

(assert (=> bm!689346 (= call!689350 (getLanguageWitness!1096 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516513 () Bool)

(assert (=> b!7516513 (= e!4481263 (Some!17252 Nil!72520))))

(declare-fun b!7516514 () Bool)

(assert (=> b!7516514 (= e!4481261 (Some!17252 (++!17359 (v!54387 lt!2638267) (v!54387 lt!2638265))))))

(declare-fun b!7516515 () Bool)

(assert (=> b!7516515 (= e!4481264 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) Nil!72520)))))

(declare-fun b!7516516 () Bool)

(assert (=> b!7516516 (= e!4481259 e!4481262)))

(declare-fun c!1388798 () Bool)

(assert (=> b!7516516 (= c!1388798 (is-EmptyLang!19756 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516517 () Bool)

(assert (=> b!7516517 (= e!4481262 None!17252)))

(declare-fun b!7516518 () Bool)

(assert (=> b!7516518 (= e!4481266 None!17252)))

(assert (= (and d!2307980 c!1388796) b!7516510))

(assert (= (and d!2307980 (not c!1388796)) b!7516516))

(assert (= (and b!7516516 c!1388798) b!7516517))

(assert (= (and b!7516516 (not c!1388798)) b!7516503))

(assert (= (and b!7516503 c!1388797) b!7516515))

(assert (= (and b!7516503 (not c!1388797)) b!7516509))

(assert (= (and b!7516509 c!1388801) b!7516513))

(assert (= (and b!7516509 (not c!1388801)) b!7516507))

(assert (= (and b!7516507 c!1388802) b!7516505))

(assert (= (and b!7516507 (not c!1388802)) b!7516511))

(assert (= (and b!7516505 c!1388800) b!7516504))

(assert (= (and b!7516505 (not c!1388800)) b!7516506))

(assert (= (and b!7516511 c!1388795) b!7516512))

(assert (= (and b!7516511 (not c!1388795)) b!7516518))

(assert (= (and b!7516512 c!1388799) b!7516514))

(assert (= (and b!7516512 (not c!1388799)) b!7516508))

(assert (= (or b!7516506 b!7516511) bm!689346))

(assert (= (or b!7516505 b!7516512) bm!689345))

(declare-fun m!8098096 () Bool)

(assert (=> bm!689345 m!8098096))

(declare-fun m!8098098 () Bool)

(assert (=> bm!689346 m!8098098))

(declare-fun m!8098100 () Bool)

(assert (=> b!7516514 m!8098100))

(assert (=> bm!689322 d!2307980))

(declare-fun b!7516519 () Bool)

(declare-fun e!4481268 () List!72644)

(assert (=> b!7516519 (= e!4481268 (v!54387 lt!2638237))))

(declare-fun lt!2638268 () List!72644)

(declare-fun e!4481267 () Bool)

(declare-fun b!7516522 () Bool)

(assert (=> b!7516522 (= e!4481267 (or (not (= (v!54387 lt!2638237) Nil!72520)) (= lt!2638268 (v!54387 lt!2638239))))))

(declare-fun b!7516521 () Bool)

(declare-fun res!3013779 () Bool)

(assert (=> b!7516521 (=> (not res!3013779) (not e!4481267))))

(assert (=> b!7516521 (= res!3013779 (= (size!42300 lt!2638268) (+ (size!42300 (v!54387 lt!2638239)) (size!42300 (v!54387 lt!2638237)))))))

(declare-fun b!7516520 () Bool)

(assert (=> b!7516520 (= e!4481268 (Cons!72520 (h!78968 (v!54387 lt!2638239)) (++!17359 (t!387281 (v!54387 lt!2638239)) (v!54387 lt!2638237))))))

(declare-fun d!2307982 () Bool)

(assert (=> d!2307982 e!4481267))

(declare-fun res!3013780 () Bool)

(assert (=> d!2307982 (=> (not res!3013780) (not e!4481267))))

(assert (=> d!2307982 (= res!3013780 (= (content!15343 lt!2638268) (set.union (content!15343 (v!54387 lt!2638239)) (content!15343 (v!54387 lt!2638237)))))))

(assert (=> d!2307982 (= lt!2638268 e!4481268)))

(declare-fun c!1388803 () Bool)

(assert (=> d!2307982 (= c!1388803 (is-Nil!72520 (v!54387 lt!2638239)))))

(assert (=> d!2307982 (= (++!17359 (v!54387 lt!2638239) (v!54387 lt!2638237)) lt!2638268)))

(assert (= (and d!2307982 c!1388803) b!7516519))

(assert (= (and d!2307982 (not c!1388803)) b!7516520))

(assert (= (and d!2307982 res!3013780) b!7516521))

(assert (= (and b!7516521 res!3013779) b!7516522))

(declare-fun m!8098102 () Bool)

(assert (=> b!7516521 m!8098102))

(declare-fun m!8098104 () Bool)

(assert (=> b!7516521 m!8098104))

(declare-fun m!8098106 () Bool)

(assert (=> b!7516521 m!8098106))

(declare-fun m!8098108 () Bool)

(assert (=> b!7516520 m!8098108))

(declare-fun m!8098110 () Bool)

(assert (=> d!2307982 m!8098110))

(declare-fun m!8098112 () Bool)

(assert (=> d!2307982 m!8098112))

(declare-fun m!8098114 () Bool)

(assert (=> d!2307982 m!8098114))

(assert (=> b!7516319 d!2307982))

(declare-fun d!2307984 () Bool)

(declare-fun c!1388806 () Bool)

(assert (=> d!2307984 (= c!1388806 (is-Nil!72520 lt!2638233))))

(declare-fun e!4481271 () (Set C!39838))

(assert (=> d!2307984 (= (content!15343 lt!2638233) e!4481271)))

(declare-fun b!7516527 () Bool)

(assert (=> b!7516527 (= e!4481271 (as set.empty (Set C!39838)))))

(declare-fun b!7516528 () Bool)

(assert (=> b!7516528 (= e!4481271 (set.union (set.insert (h!78968 lt!2638233) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638233))))))

(assert (= (and d!2307984 c!1388806) b!7516527))

(assert (= (and d!2307984 (not c!1388806)) b!7516528))

(declare-fun m!8098116 () Bool)

(assert (=> b!7516528 m!8098116))

(declare-fun m!8098118 () Bool)

(assert (=> b!7516528 m!8098118))

(assert (=> d!2307926 d!2307984))

(declare-fun d!2307986 () Bool)

(declare-fun c!1388807 () Bool)

(assert (=> d!2307986 (= c!1388807 (is-Nil!72520 (v!54387 lt!2638221)))))

(declare-fun e!4481272 () (Set C!39838))

(assert (=> d!2307986 (= (content!15343 (v!54387 lt!2638221)) e!4481272)))

(declare-fun b!7516529 () Bool)

(assert (=> b!7516529 (= e!4481272 (as set.empty (Set C!39838)))))

(declare-fun b!7516530 () Bool)

(assert (=> b!7516530 (= e!4481272 (set.union (set.insert (h!78968 (v!54387 lt!2638221)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638221)))))))

(assert (= (and d!2307986 c!1388807) b!7516529))

(assert (= (and d!2307986 (not c!1388807)) b!7516530))

(declare-fun m!8098120 () Bool)

(assert (=> b!7516530 m!8098120))

(assert (=> b!7516530 m!8098064))

(assert (=> d!2307926 d!2307986))

(declare-fun d!2307988 () Bool)

(declare-fun c!1388808 () Bool)

(assert (=> d!2307988 (= c!1388808 (is-Nil!72520 (v!54387 lt!2638219)))))

(declare-fun e!4481273 () (Set C!39838))

(assert (=> d!2307988 (= (content!15343 (v!54387 lt!2638219)) e!4481273)))

(declare-fun b!7516531 () Bool)

(assert (=> b!7516531 (= e!4481273 (as set.empty (Set C!39838)))))

(declare-fun b!7516532 () Bool)

(assert (=> b!7516532 (= e!4481273 (set.union (set.insert (h!78968 (v!54387 lt!2638219)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638219)))))))

(assert (= (and d!2307988 c!1388808) b!7516531))

(assert (= (and d!2307988 (not c!1388808)) b!7516532))

(declare-fun m!8098122 () Bool)

(assert (=> b!7516532 m!8098122))

(declare-fun m!8098124 () Bool)

(assert (=> b!7516532 m!8098124))

(assert (=> d!2307926 d!2307988))

(declare-fun b!7516536 () Bool)

(declare-fun e!4481274 () Bool)

(declare-fun tp!2182143 () Bool)

(declare-fun tp!2182146 () Bool)

(assert (=> b!7516536 (= e!4481274 (and tp!2182143 tp!2182146))))

(declare-fun b!7516533 () Bool)

(assert (=> b!7516533 (= e!4481274 tp_is_empty!49843)))

(declare-fun b!7516535 () Bool)

(declare-fun tp!2182145 () Bool)

(assert (=> b!7516535 (= e!4481274 tp!2182145)))

(declare-fun b!7516534 () Bool)

(declare-fun tp!2182147 () Bool)

(declare-fun tp!2182144 () Bool)

(assert (=> b!7516534 (= e!4481274 (and tp!2182147 tp!2182144))))

(assert (=> b!7516338 (= tp!2182124 e!4481274)))

(assert (= (and b!7516338 (is-ElementMatch!19756 (h!78967 (t!387280 (exprs!9008 c!7091))))) b!7516533))

(assert (= (and b!7516338 (is-Concat!28601 (h!78967 (t!387280 (exprs!9008 c!7091))))) b!7516534))

(assert (= (and b!7516338 (is-Star!19756 (h!78967 (t!387280 (exprs!9008 c!7091))))) b!7516535))

(assert (= (and b!7516338 (is-Union!19756 (h!78967 (t!387280 (exprs!9008 c!7091))))) b!7516536))

(declare-fun b!7516537 () Bool)

(declare-fun e!4481275 () Bool)

(declare-fun tp!2182148 () Bool)

(declare-fun tp!2182149 () Bool)

(assert (=> b!7516537 (= e!4481275 (and tp!2182148 tp!2182149))))

(assert (=> b!7516338 (= tp!2182125 e!4481275)))

(assert (= (and b!7516338 (is-Cons!72519 (t!387280 (t!387280 (exprs!9008 c!7091))))) b!7516537))

(declare-fun b!7516541 () Bool)

(declare-fun e!4481276 () Bool)

(declare-fun tp!2182150 () Bool)

(declare-fun tp!2182153 () Bool)

(assert (=> b!7516541 (= e!4481276 (and tp!2182150 tp!2182153))))

(declare-fun b!7516538 () Bool)

(assert (=> b!7516538 (= e!4481276 tp_is_empty!49843)))

(declare-fun b!7516540 () Bool)

(declare-fun tp!2182152 () Bool)

(assert (=> b!7516540 (= e!4481276 tp!2182152)))

(declare-fun b!7516539 () Bool)

(declare-fun tp!2182154 () Bool)

(declare-fun tp!2182151 () Bool)

(assert (=> b!7516539 (= e!4481276 (and tp!2182154 tp!2182151))))

(assert (=> b!7516335 (= tp!2182123 e!4481276)))

(assert (= (and b!7516335 (is-ElementMatch!19756 (regOne!40024 (h!78967 (exprs!9008 c!7091))))) b!7516538))

(assert (= (and b!7516335 (is-Concat!28601 (regOne!40024 (h!78967 (exprs!9008 c!7091))))) b!7516539))

(assert (= (and b!7516335 (is-Star!19756 (regOne!40024 (h!78967 (exprs!9008 c!7091))))) b!7516540))

(assert (= (and b!7516335 (is-Union!19756 (regOne!40024 (h!78967 (exprs!9008 c!7091))))) b!7516541))

(declare-fun b!7516545 () Bool)

(declare-fun e!4481277 () Bool)

(declare-fun tp!2182155 () Bool)

(declare-fun tp!2182158 () Bool)

(assert (=> b!7516545 (= e!4481277 (and tp!2182155 tp!2182158))))

(declare-fun b!7516542 () Bool)

(assert (=> b!7516542 (= e!4481277 tp_is_empty!49843)))

(declare-fun b!7516544 () Bool)

(declare-fun tp!2182157 () Bool)

(assert (=> b!7516544 (= e!4481277 tp!2182157)))

(declare-fun b!7516543 () Bool)

(declare-fun tp!2182159 () Bool)

(declare-fun tp!2182156 () Bool)

(assert (=> b!7516543 (= e!4481277 (and tp!2182159 tp!2182156))))

(assert (=> b!7516335 (= tp!2182120 e!4481277)))

(assert (= (and b!7516335 (is-ElementMatch!19756 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) b!7516542))

(assert (= (and b!7516335 (is-Concat!28601 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) b!7516543))

(assert (= (and b!7516335 (is-Star!19756 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) b!7516544))

(assert (= (and b!7516335 (is-Union!19756 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) b!7516545))

(declare-fun b!7516549 () Bool)

(declare-fun e!4481278 () Bool)

(declare-fun tp!2182160 () Bool)

(declare-fun tp!2182163 () Bool)

(assert (=> b!7516549 (= e!4481278 (and tp!2182160 tp!2182163))))

(declare-fun b!7516546 () Bool)

(assert (=> b!7516546 (= e!4481278 tp_is_empty!49843)))

(declare-fun b!7516548 () Bool)

(declare-fun tp!2182162 () Bool)

(assert (=> b!7516548 (= e!4481278 tp!2182162)))

(declare-fun b!7516547 () Bool)

(declare-fun tp!2182164 () Bool)

(declare-fun tp!2182161 () Bool)

(assert (=> b!7516547 (= e!4481278 (and tp!2182164 tp!2182161))))

(assert (=> b!7516337 (= tp!2182119 e!4481278)))

(assert (= (and b!7516337 (is-ElementMatch!19756 (regOne!40025 (h!78967 (exprs!9008 c!7091))))) b!7516546))

(assert (= (and b!7516337 (is-Concat!28601 (regOne!40025 (h!78967 (exprs!9008 c!7091))))) b!7516547))

(assert (= (and b!7516337 (is-Star!19756 (regOne!40025 (h!78967 (exprs!9008 c!7091))))) b!7516548))

(assert (= (and b!7516337 (is-Union!19756 (regOne!40025 (h!78967 (exprs!9008 c!7091))))) b!7516549))

(declare-fun b!7516553 () Bool)

(declare-fun e!4481279 () Bool)

(declare-fun tp!2182165 () Bool)

(declare-fun tp!2182168 () Bool)

(assert (=> b!7516553 (= e!4481279 (and tp!2182165 tp!2182168))))

(declare-fun b!7516550 () Bool)

(assert (=> b!7516550 (= e!4481279 tp_is_empty!49843)))

(declare-fun b!7516552 () Bool)

(declare-fun tp!2182167 () Bool)

(assert (=> b!7516552 (= e!4481279 tp!2182167)))

(declare-fun b!7516551 () Bool)

(declare-fun tp!2182169 () Bool)

(declare-fun tp!2182166 () Bool)

(assert (=> b!7516551 (= e!4481279 (and tp!2182169 tp!2182166))))

(assert (=> b!7516337 (= tp!2182122 e!4481279)))

(assert (= (and b!7516337 (is-ElementMatch!19756 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))) b!7516550))

(assert (= (and b!7516337 (is-Concat!28601 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))) b!7516551))

(assert (= (and b!7516337 (is-Star!19756 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))) b!7516552))

(assert (= (and b!7516337 (is-Union!19756 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))) b!7516553))

(declare-fun b!7516557 () Bool)

(declare-fun e!4481280 () Bool)

(declare-fun tp!2182170 () Bool)

(declare-fun tp!2182173 () Bool)

(assert (=> b!7516557 (= e!4481280 (and tp!2182170 tp!2182173))))

(declare-fun b!7516554 () Bool)

(assert (=> b!7516554 (= e!4481280 tp_is_empty!49843)))

(declare-fun b!7516556 () Bool)

(declare-fun tp!2182172 () Bool)

(assert (=> b!7516556 (= e!4481280 tp!2182172)))

(declare-fun b!7516555 () Bool)

(declare-fun tp!2182174 () Bool)

(declare-fun tp!2182171 () Bool)

(assert (=> b!7516555 (= e!4481280 (and tp!2182174 tp!2182171))))

(assert (=> b!7516336 (= tp!2182121 e!4481280)))

(assert (= (and b!7516336 (is-ElementMatch!19756 (reg!20085 (h!78967 (exprs!9008 c!7091))))) b!7516554))

(assert (= (and b!7516336 (is-Concat!28601 (reg!20085 (h!78967 (exprs!9008 c!7091))))) b!7516555))

(assert (= (and b!7516336 (is-Star!19756 (reg!20085 (h!78967 (exprs!9008 c!7091))))) b!7516556))

(assert (= (and b!7516336 (is-Union!19756 (reg!20085 (h!78967 (exprs!9008 c!7091))))) b!7516557))

(declare-fun b_lambda!288363 () Bool)

(assert (= b_lambda!288359 (or d!2307918 b_lambda!288363)))

(declare-fun bs!1939403 () Bool)

(declare-fun d!2307990 () Bool)

(assert (= bs!1939403 (and d!2307990 d!2307918)))

(assert (=> bs!1939403 (= (dynLambda!29850 lambda!466260 (h!78967 (t!387280 (exprs!9008 c!7091)))) (validRegex!10192 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(declare-fun m!8098126 () Bool)

(assert (=> bs!1939403 m!8098126))

(assert (=> b!7516449 d!2307990))

(declare-fun b_lambda!288365 () Bool)

(assert (= b_lambda!288361 (or d!2307920 b_lambda!288365)))

(declare-fun bs!1939404 () Bool)

(declare-fun d!2307992 () Bool)

(assert (= bs!1939404 (and d!2307992 d!2307920)))

(assert (=> bs!1939404 (= (dynLambda!29850 lambda!466264 (h!78967 (t!387280 (exprs!9008 c!7091)))) (not (dynLambda!29850 lambda!466252 (h!78967 (t!387280 (exprs!9008 c!7091))))))))

(declare-fun b_lambda!288367 () Bool)

(assert (=> (not b_lambda!288367) (not bs!1939404)))

(declare-fun m!8098128 () Bool)

(assert (=> bs!1939404 m!8098128))

(assert (=> b!7516475 d!2307992))

(push 1)

(assert (not b!7516534))

(assert (not b!7516539))

(assert (not b_lambda!288367))

(assert (not b!7516473))

(assert (not b!7516555))

(assert (not d!2307982))

(assert (not b!7516417))

(assert (not b!7516536))

(assert (not b!7516468))

(assert (not b!7516543))

(assert (not b!7516548))

(assert (not d!2307966))

(assert (not bm!689341))

(assert (not b!7516557))

(assert (not b!7516537))

(assert (not b!7516532))

(assert (not b!7516498))

(assert (not bm!689345))

(assert (not bm!689340))

(assert (not b!7516551))

(assert (not b!7516521))

(assert (not b!7516545))

(assert (not bm!689346))

(assert (not b!7516462))

(assert (not b!7516540))

(assert (not b!7516450))

(assert (not b!7516472))

(assert (not b!7516469))

(assert (not b!7516484))

(assert (not b!7516476))

(assert (not d!2307964))

(assert (not b!7516552))

(assert (not b!7516535))

(assert (not b!7516442))

(assert (not b!7516528))

(assert (not b!7516541))

(assert (not b!7516553))

(assert (not bm!689342))

(assert (not bm!689331))

(assert (not b!7516556))

(assert (not b!7516544))

(assert (not bs!1939403))

(assert (not b!7516520))

(assert (not b!7516547))

(assert tp_is_empty!49843)

(assert (not b_lambda!288363))

(assert (not b!7516514))

(assert (not bm!689344))

(assert (not b!7516486))

(assert (not b_lambda!288349))

(assert (not b!7516549))

(assert (not b!7516482))

(assert (not b_lambda!288343))

(assert (not d!2307976))

(assert (not b!7516530))

(assert (not bm!689330))

(assert (not bm!689338))

(assert (not b_lambda!288365))

(assert (not bm!689343))

(assert (not b_lambda!288341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288373 () Bool)

(assert (= b_lambda!288367 (or b!7516151 b_lambda!288373)))

(declare-fun bs!1939407 () Bool)

(declare-fun d!2308022 () Bool)

(assert (= bs!1939407 (and d!2308022 b!7516151)))

(assert (=> bs!1939407 (= (dynLambda!29850 lambda!466252 (h!78967 (t!387280 (exprs!9008 c!7091)))) (lostCause!1627 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(declare-fun m!8098180 () Bool)

(assert (=> bs!1939407 m!8098180))

(assert (=> bs!1939404 d!2308022))

(push 1)

(assert (not b!7516534))

(assert (not b_lambda!288373))

(assert (not b!7516539))

(assert (not b!7516473))

(assert (not b!7516555))

(assert (not d!2307982))

(assert (not b!7516417))

(assert (not b!7516536))

(assert (not b!7516468))

(assert (not b!7516543))

(assert (not b!7516548))

(assert (not d!2307966))

(assert (not bm!689341))

(assert (not b!7516557))

(assert (not b!7516537))

(assert (not b!7516532))

(assert (not b!7516498))

(assert (not bm!689345))

(assert (not bm!689340))

(assert (not b!7516551))

(assert (not b!7516521))

(assert (not b!7516545))

(assert (not bm!689346))

(assert (not b!7516462))

(assert (not b!7516540))

(assert (not b!7516450))

(assert (not b!7516472))

(assert (not b!7516469))

(assert (not b!7516484))

(assert (not b!7516476))

(assert (not d!2307964))

(assert (not bs!1939407))

(assert (not b!7516552))

(assert (not b!7516535))

(assert (not b!7516442))

(assert (not b!7516528))

(assert (not b!7516541))

(assert (not b!7516553))

(assert (not bm!689342))

(assert (not bm!689331))

(assert (not b!7516556))

(assert (not b!7516544))

(assert (not bs!1939403))

(assert (not b!7516520))

(assert (not b!7516547))

(assert tp_is_empty!49843)

(assert (not b_lambda!288363))

(assert (not b!7516514))

(assert (not bm!689344))

(assert (not b!7516486))

(assert (not b_lambda!288349))

(assert (not b!7516549))

(assert (not b!7516482))

(assert (not b_lambda!288343))

(assert (not d!2307976))

(assert (not b!7516530))

(assert (not bm!689330))

(assert (not bm!689338))

(assert (not b_lambda!288365))

(assert (not bm!689343))

(assert (not b_lambda!288341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1388862 () Bool)

(declare-fun b!7516710 () Bool)

(assert (=> b!7516710 (= c!1388862 (is-ElementMatch!19756 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481364 () Option!17253)

(declare-fun e!4481366 () Option!17253)

(assert (=> b!7516710 (= e!4481364 e!4481366)))

(declare-fun c!1388861 () Bool)

(declare-fun d!2308036 () Bool)

(assert (=> d!2308036 (= c!1388861 (is-EmptyExpr!19756 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481361 () Option!17253)

(assert (=> d!2308036 (= (getLanguageWitness!1096 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481361)))

(declare-fun b!7516711 () Bool)

(declare-fun e!4481367 () Option!17253)

(declare-fun lt!2638290 () Option!17253)

(assert (=> b!7516711 (= e!4481367 lt!2638290)))

(declare-fun b!7516712 () Bool)

(declare-fun e!4481362 () Option!17253)

(assert (=> b!7516712 (= e!4481362 e!4481367)))

(declare-fun call!689370 () Option!17253)

(assert (=> b!7516712 (= lt!2638290 call!689370)))

(declare-fun c!1388865 () Bool)

(assert (=> b!7516712 (= c!1388865 (is-Some!17252 lt!2638290))))

(declare-fun b!7516713 () Bool)

(declare-fun call!689369 () Option!17253)

(assert (=> b!7516713 (= e!4481367 call!689369)))

(declare-fun b!7516714 () Bool)

(declare-fun c!1388867 () Bool)

(assert (=> b!7516714 (= c!1388867 (is-Union!19756 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481365 () Option!17253)

(assert (=> b!7516714 (= e!4481365 e!4481362)))

(declare-fun b!7516715 () Bool)

(declare-fun e!4481363 () Option!17253)

(assert (=> b!7516715 (= e!4481363 None!17252)))

(declare-fun bm!689364 () Bool)

(assert (=> bm!689364 (= call!689370 (getLanguageWitness!1096 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516716 () Bool)

(assert (=> b!7516716 (= e!4481366 e!4481365)))

(declare-fun c!1388866 () Bool)

(assert (=> b!7516716 (= c!1388866 (is-Star!19756 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516717 () Bool)

(assert (=> b!7516717 (= e!4481361 (Some!17252 Nil!72520))))

(declare-fun b!7516718 () Bool)

(declare-fun e!4481368 () Option!17253)

(assert (=> b!7516718 (= e!4481362 e!4481368)))

(declare-fun lt!2638291 () Option!17253)

(assert (=> b!7516718 (= lt!2638291 call!689369)))

(declare-fun c!1388860 () Bool)

(assert (=> b!7516718 (= c!1388860 (is-Some!17252 lt!2638291))))

(declare-fun b!7516719 () Bool)

(declare-fun c!1388864 () Bool)

(declare-fun lt!2638289 () Option!17253)

(assert (=> b!7516719 (= c!1388864 (is-Some!17252 lt!2638289))))

(assert (=> b!7516719 (= lt!2638289 call!689370)))

(assert (=> b!7516719 (= e!4481368 e!4481363)))

(declare-fun bm!689365 () Bool)

(assert (=> bm!689365 (= call!689369 (getLanguageWitness!1096 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516720 () Bool)

(assert (=> b!7516720 (= e!4481365 (Some!17252 Nil!72520))))

(declare-fun b!7516721 () Bool)

(assert (=> b!7516721 (= e!4481363 (Some!17252 (++!17359 (v!54387 lt!2638291) (v!54387 lt!2638289))))))

(declare-fun b!7516722 () Bool)

(assert (=> b!7516722 (= e!4481366 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) Nil!72520)))))

(declare-fun b!7516723 () Bool)

(assert (=> b!7516723 (= e!4481361 e!4481364)))

(declare-fun c!1388863 () Bool)

(assert (=> b!7516723 (= c!1388863 (is-EmptyLang!19756 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516724 () Bool)

(assert (=> b!7516724 (= e!4481364 None!17252)))

(declare-fun b!7516725 () Bool)

(assert (=> b!7516725 (= e!4481368 None!17252)))

(assert (= (and d!2308036 c!1388861) b!7516717))

(assert (= (and d!2308036 (not c!1388861)) b!7516723))

(assert (= (and b!7516723 c!1388863) b!7516724))

(assert (= (and b!7516723 (not c!1388863)) b!7516710))

(assert (= (and b!7516710 c!1388862) b!7516722))

(assert (= (and b!7516710 (not c!1388862)) b!7516716))

(assert (= (and b!7516716 c!1388866) b!7516720))

(assert (= (and b!7516716 (not c!1388866)) b!7516714))

(assert (= (and b!7516714 c!1388867) b!7516712))

(assert (= (and b!7516714 (not c!1388867)) b!7516718))

(assert (= (and b!7516712 c!1388865) b!7516711))

(assert (= (and b!7516712 (not c!1388865)) b!7516713))

(assert (= (and b!7516718 c!1388860) b!7516719))

(assert (= (and b!7516718 (not c!1388860)) b!7516725))

(assert (= (and b!7516719 c!1388864) b!7516721))

(assert (= (and b!7516719 (not c!1388864)) b!7516715))

(assert (= (or b!7516713 b!7516718) bm!689365))

(assert (= (or b!7516712 b!7516719) bm!689364))

(declare-fun m!8098230 () Bool)

(assert (=> bm!689364 m!8098230))

(declare-fun m!8098232 () Bool)

(assert (=> bm!689365 m!8098232))

(declare-fun m!8098234 () Bool)

(assert (=> b!7516721 m!8098234))

(assert (=> bm!689341 d!2308036))

(declare-fun d!2308038 () Bool)

(declare-fun lt!2638292 () Int)

(assert (=> d!2308038 (>= lt!2638292 0)))

(declare-fun e!4481369 () Int)

(assert (=> d!2308038 (= lt!2638292 e!4481369)))

(declare-fun c!1388868 () Bool)

(assert (=> d!2308038 (= c!1388868 (is-Nil!72520 (t!387281 (v!54387 lt!2638221))))))

(assert (=> d!2308038 (= (size!42300 (t!387281 (v!54387 lt!2638221))) lt!2638292)))

(declare-fun b!7516726 () Bool)

(assert (=> b!7516726 (= e!4481369 0)))

(declare-fun b!7516727 () Bool)

(assert (=> b!7516727 (= e!4481369 (+ 1 (size!42300 (t!387281 (t!387281 (v!54387 lt!2638221))))))))

(assert (= (and d!2308038 c!1388868) b!7516726))

(assert (= (and d!2308038 (not c!1388868)) b!7516727))

(declare-fun m!8098236 () Bool)

(assert (=> b!7516727 m!8098236))

(assert (=> b!7516484 d!2308038))

(declare-fun d!2308040 () Bool)

(declare-fun c!1388869 () Bool)

(assert (=> d!2308040 (= c!1388869 (is-Nil!72520 (t!387281 (v!54387 lt!2638219))))))

(declare-fun e!4481370 () (Set C!39838))

(assert (=> d!2308040 (= (content!15343 (t!387281 (v!54387 lt!2638219))) e!4481370)))

(declare-fun b!7516728 () Bool)

(assert (=> b!7516728 (= e!4481370 (as set.empty (Set C!39838)))))

(declare-fun b!7516729 () Bool)

(assert (=> b!7516729 (= e!4481370 (set.union (set.insert (h!78968 (t!387281 (v!54387 lt!2638219))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (v!54387 lt!2638219))))))))

(assert (= (and d!2308040 c!1388869) b!7516728))

(assert (= (and d!2308040 (not c!1388869)) b!7516729))

(declare-fun m!8098238 () Bool)

(assert (=> b!7516729 m!8098238))

(declare-fun m!8098240 () Bool)

(assert (=> b!7516729 m!8098240))

(assert (=> b!7516532 d!2308040))

(declare-fun b!7516730 () Bool)

(declare-fun e!4481372 () Bool)

(declare-fun call!689372 () Bool)

(assert (=> b!7516730 (= e!4481372 call!689372)))

(declare-fun b!7516731 () Bool)

(declare-fun res!3013807 () Bool)

(declare-fun e!4481376 () Bool)

(assert (=> b!7516731 (=> (not res!3013807) (not e!4481376))))

(declare-fun call!689373 () Bool)

(assert (=> b!7516731 (= res!3013807 call!689373)))

(declare-fun e!4481375 () Bool)

(assert (=> b!7516731 (= e!4481375 e!4481376)))

(declare-fun call!689371 () Bool)

(declare-fun bm!689366 () Bool)

(declare-fun c!1388870 () Bool)

(assert (=> bm!689366 (= call!689371 (validRegex!10192 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7516732 () Bool)

(declare-fun e!4481373 () Bool)

(assert (=> b!7516732 (= e!4481373 e!4481372)))

(declare-fun res!3013806 () Bool)

(assert (=> b!7516732 (= res!3013806 (not (nullable!8596 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(assert (=> b!7516732 (=> (not res!3013806) (not e!4481372))))

(declare-fun bm!689367 () Bool)

(assert (=> bm!689367 (= call!689373 call!689372)))

(declare-fun c!1388871 () Bool)

(declare-fun bm!689368 () Bool)

(assert (=> bm!689368 (= call!689372 (validRegex!10192 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(declare-fun b!7516733 () Bool)

(assert (=> b!7516733 (= e!4481376 call!689371)))

(declare-fun d!2308042 () Bool)

(declare-fun res!3013810 () Bool)

(declare-fun e!4481377 () Bool)

(assert (=> d!2308042 (=> res!3013810 e!4481377)))

(assert (=> d!2308042 (= res!3013810 (is-ElementMatch!19756 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(assert (=> d!2308042 (= (validRegex!10192 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) e!4481377)))

(declare-fun b!7516734 () Bool)

(assert (=> b!7516734 (= e!4481373 e!4481375)))

(assert (=> b!7516734 (= c!1388870 (is-Union!19756 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516735 () Bool)

(declare-fun e!4481371 () Bool)

(assert (=> b!7516735 (= e!4481371 call!689371)))

(declare-fun b!7516736 () Bool)

(declare-fun e!4481374 () Bool)

(assert (=> b!7516736 (= e!4481374 e!4481371)))

(declare-fun res!3013808 () Bool)

(assert (=> b!7516736 (=> (not res!3013808) (not e!4481371))))

(assert (=> b!7516736 (= res!3013808 call!689373)))

(declare-fun b!7516737 () Bool)

(declare-fun res!3013809 () Bool)

(assert (=> b!7516737 (=> res!3013809 e!4481374)))

(assert (=> b!7516737 (= res!3013809 (not (is-Concat!28601 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))

(assert (=> b!7516737 (= e!4481375 e!4481374)))

(declare-fun b!7516738 () Bool)

(assert (=> b!7516738 (= e!4481377 e!4481373)))

(assert (=> b!7516738 (= c!1388871 (is-Star!19756 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(assert (= (and d!2308042 (not res!3013810)) b!7516738))

(assert (= (and b!7516738 c!1388871) b!7516732))

(assert (= (and b!7516738 (not c!1388871)) b!7516734))

(assert (= (and b!7516732 res!3013806) b!7516730))

(assert (= (and b!7516734 c!1388870) b!7516731))

(assert (= (and b!7516734 (not c!1388870)) b!7516737))

(assert (= (and b!7516731 res!3013807) b!7516733))

(assert (= (and b!7516737 (not res!3013809)) b!7516736))

(assert (= (and b!7516736 res!3013808) b!7516735))

(assert (= (or b!7516731 b!7516736) bm!689367))

(assert (= (or b!7516733 b!7516735) bm!689366))

(assert (= (or b!7516730 bm!689367) bm!689368))

(declare-fun m!8098242 () Bool)

(assert (=> bm!689366 m!8098242))

(declare-fun m!8098244 () Bool)

(assert (=> b!7516732 m!8098244))

(declare-fun m!8098246 () Bool)

(assert (=> bm!689368 m!8098246))

(assert (=> bm!689338 d!2308042))

(declare-fun b!7516739 () Bool)

(declare-fun c!1388874 () Bool)

(assert (=> b!7516739 (= c!1388874 (is-ElementMatch!19756 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481381 () Option!17253)

(declare-fun e!4481383 () Option!17253)

(assert (=> b!7516739 (= e!4481381 e!4481383)))

(declare-fun d!2308044 () Bool)

(declare-fun c!1388873 () Bool)

(assert (=> d!2308044 (= c!1388873 (is-EmptyExpr!19756 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481378 () Option!17253)

(assert (=> d!2308044 (= (getLanguageWitness!1096 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481378)))

(declare-fun b!7516740 () Bool)

(declare-fun e!4481384 () Option!17253)

(declare-fun lt!2638294 () Option!17253)

(assert (=> b!7516740 (= e!4481384 lt!2638294)))

(declare-fun b!7516741 () Bool)

(declare-fun e!4481379 () Option!17253)

(assert (=> b!7516741 (= e!4481379 e!4481384)))

(declare-fun call!689375 () Option!17253)

(assert (=> b!7516741 (= lt!2638294 call!689375)))

(declare-fun c!1388877 () Bool)

(assert (=> b!7516741 (= c!1388877 (is-Some!17252 lt!2638294))))

(declare-fun b!7516742 () Bool)

(declare-fun call!689374 () Option!17253)

(assert (=> b!7516742 (= e!4481384 call!689374)))

(declare-fun c!1388879 () Bool)

(declare-fun b!7516743 () Bool)

(assert (=> b!7516743 (= c!1388879 (is-Union!19756 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481382 () Option!17253)

(assert (=> b!7516743 (= e!4481382 e!4481379)))

(declare-fun b!7516744 () Bool)

(declare-fun e!4481380 () Option!17253)

(assert (=> b!7516744 (= e!4481380 None!17252)))

(declare-fun bm!689369 () Bool)

(assert (=> bm!689369 (= call!689375 (getLanguageWitness!1096 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516745 () Bool)

(assert (=> b!7516745 (= e!4481383 e!4481382)))

(declare-fun c!1388878 () Bool)

(assert (=> b!7516745 (= c!1388878 (is-Star!19756 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516746 () Bool)

(assert (=> b!7516746 (= e!4481378 (Some!17252 Nil!72520))))

(declare-fun b!7516747 () Bool)

(declare-fun e!4481385 () Option!17253)

(assert (=> b!7516747 (= e!4481379 e!4481385)))

(declare-fun lt!2638295 () Option!17253)

(assert (=> b!7516747 (= lt!2638295 call!689374)))

(declare-fun c!1388872 () Bool)

(assert (=> b!7516747 (= c!1388872 (is-Some!17252 lt!2638295))))

(declare-fun b!7516748 () Bool)

(declare-fun c!1388876 () Bool)

(declare-fun lt!2638293 () Option!17253)

(assert (=> b!7516748 (= c!1388876 (is-Some!17252 lt!2638293))))

(assert (=> b!7516748 (= lt!2638293 call!689375)))

(assert (=> b!7516748 (= e!4481385 e!4481380)))

(declare-fun bm!689370 () Bool)

(assert (=> bm!689370 (= call!689374 (getLanguageWitness!1096 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516749 () Bool)

(assert (=> b!7516749 (= e!4481382 (Some!17252 Nil!72520))))

(declare-fun b!7516750 () Bool)

(assert (=> b!7516750 (= e!4481380 (Some!17252 (++!17359 (v!54387 lt!2638295) (v!54387 lt!2638293))))))

(declare-fun b!7516751 () Bool)

(assert (=> b!7516751 (= e!4481383 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) Nil!72520)))))

(declare-fun b!7516752 () Bool)

(assert (=> b!7516752 (= e!4481378 e!4481381)))

(declare-fun c!1388875 () Bool)

(assert (=> b!7516752 (= c!1388875 (is-EmptyLang!19756 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516753 () Bool)

(assert (=> b!7516753 (= e!4481381 None!17252)))

(declare-fun b!7516754 () Bool)

(assert (=> b!7516754 (= e!4481385 None!17252)))

(assert (= (and d!2308044 c!1388873) b!7516746))

(assert (= (and d!2308044 (not c!1388873)) b!7516752))

(assert (= (and b!7516752 c!1388875) b!7516753))

(assert (= (and b!7516752 (not c!1388875)) b!7516739))

(assert (= (and b!7516739 c!1388874) b!7516751))

(assert (= (and b!7516739 (not c!1388874)) b!7516745))

(assert (= (and b!7516745 c!1388878) b!7516749))

(assert (= (and b!7516745 (not c!1388878)) b!7516743))

(assert (= (and b!7516743 c!1388879) b!7516741))

(assert (= (and b!7516743 (not c!1388879)) b!7516747))

(assert (= (and b!7516741 c!1388877) b!7516740))

(assert (= (and b!7516741 (not c!1388877)) b!7516742))

(assert (= (and b!7516747 c!1388872) b!7516748))

(assert (= (and b!7516747 (not c!1388872)) b!7516754))

(assert (= (and b!7516748 c!1388876) b!7516750))

(assert (= (and b!7516748 (not c!1388876)) b!7516744))

(assert (= (or b!7516742 b!7516747) bm!689370))

(assert (= (or b!7516741 b!7516748) bm!689369))

(declare-fun m!8098248 () Bool)

(assert (=> bm!689369 m!8098248))

(declare-fun m!8098250 () Bool)

(assert (=> bm!689370 m!8098250))

(declare-fun m!8098252 () Bool)

(assert (=> b!7516750 m!8098252))

(assert (=> bm!689342 d!2308044))

(declare-fun d!2308046 () Bool)

(declare-fun lt!2638296 () Int)

(assert (=> d!2308046 (>= lt!2638296 0)))

(declare-fun e!4481386 () Int)

(assert (=> d!2308046 (= lt!2638296 e!4481386)))

(declare-fun c!1388880 () Bool)

(assert (=> d!2308046 (= c!1388880 (is-Nil!72520 lt!2638268))))

(assert (=> d!2308046 (= (size!42300 lt!2638268) lt!2638296)))

(declare-fun b!7516755 () Bool)

(assert (=> b!7516755 (= e!4481386 0)))

(declare-fun b!7516756 () Bool)

(assert (=> b!7516756 (= e!4481386 (+ 1 (size!42300 (t!387281 lt!2638268))))))

(assert (= (and d!2308046 c!1388880) b!7516755))

(assert (= (and d!2308046 (not c!1388880)) b!7516756))

(declare-fun m!8098254 () Bool)

(assert (=> b!7516756 m!8098254))

(assert (=> b!7516521 d!2308046))

(declare-fun d!2308048 () Bool)

(declare-fun lt!2638297 () Int)

(assert (=> d!2308048 (>= lt!2638297 0)))

(declare-fun e!4481387 () Int)

(assert (=> d!2308048 (= lt!2638297 e!4481387)))

(declare-fun c!1388881 () Bool)

(assert (=> d!2308048 (= c!1388881 (is-Nil!72520 (v!54387 lt!2638239)))))

(assert (=> d!2308048 (= (size!42300 (v!54387 lt!2638239)) lt!2638297)))

(declare-fun b!7516757 () Bool)

(assert (=> b!7516757 (= e!4481387 0)))

(declare-fun b!7516758 () Bool)

(assert (=> b!7516758 (= e!4481387 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638239)))))))

(assert (= (and d!2308048 c!1388881) b!7516757))

(assert (= (and d!2308048 (not c!1388881)) b!7516758))

(declare-fun m!8098256 () Bool)

(assert (=> b!7516758 m!8098256))

(assert (=> b!7516521 d!2308048))

(declare-fun d!2308050 () Bool)

(declare-fun lt!2638298 () Int)

(assert (=> d!2308050 (>= lt!2638298 0)))

(declare-fun e!4481388 () Int)

(assert (=> d!2308050 (= lt!2638298 e!4481388)))

(declare-fun c!1388882 () Bool)

(assert (=> d!2308050 (= c!1388882 (is-Nil!72520 (v!54387 lt!2638237)))))

(assert (=> d!2308050 (= (size!42300 (v!54387 lt!2638237)) lt!2638298)))

(declare-fun b!7516759 () Bool)

(assert (=> b!7516759 (= e!4481388 0)))

(declare-fun b!7516760 () Bool)

(assert (=> b!7516760 (= e!4481388 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638237)))))))

(assert (= (and d!2308050 c!1388882) b!7516759))

(assert (= (and d!2308050 (not c!1388882)) b!7516760))

(declare-fun m!8098258 () Bool)

(assert (=> b!7516760 m!8098258))

(assert (=> b!7516521 d!2308050))

(declare-fun c!1388885 () Bool)

(declare-fun b!7516761 () Bool)

(assert (=> b!7516761 (= c!1388885 (is-ElementMatch!19756 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481392 () Option!17253)

(declare-fun e!4481394 () Option!17253)

(assert (=> b!7516761 (= e!4481392 e!4481394)))

(declare-fun d!2308052 () Bool)

(declare-fun c!1388884 () Bool)

(assert (=> d!2308052 (= c!1388884 (is-EmptyExpr!19756 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481389 () Option!17253)

(assert (=> d!2308052 (= (getLanguageWitness!1096 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481389)))

(declare-fun b!7516762 () Bool)

(declare-fun e!4481395 () Option!17253)

(declare-fun lt!2638300 () Option!17253)

(assert (=> b!7516762 (= e!4481395 lt!2638300)))

(declare-fun b!7516763 () Bool)

(declare-fun e!4481390 () Option!17253)

(assert (=> b!7516763 (= e!4481390 e!4481395)))

(declare-fun call!689377 () Option!17253)

(assert (=> b!7516763 (= lt!2638300 call!689377)))

(declare-fun c!1388888 () Bool)

(assert (=> b!7516763 (= c!1388888 (is-Some!17252 lt!2638300))))

(declare-fun b!7516764 () Bool)

(declare-fun call!689376 () Option!17253)

(assert (=> b!7516764 (= e!4481395 call!689376)))

(declare-fun c!1388890 () Bool)

(declare-fun b!7516765 () Bool)

(assert (=> b!7516765 (= c!1388890 (is-Union!19756 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481393 () Option!17253)

(assert (=> b!7516765 (= e!4481393 e!4481390)))

(declare-fun b!7516766 () Bool)

(declare-fun e!4481391 () Option!17253)

(assert (=> b!7516766 (= e!4481391 None!17252)))

(declare-fun bm!689371 () Bool)

(assert (=> bm!689371 (= call!689377 (getLanguageWitness!1096 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516767 () Bool)

(assert (=> b!7516767 (= e!4481394 e!4481393)))

(declare-fun c!1388889 () Bool)

(assert (=> b!7516767 (= c!1388889 (is-Star!19756 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516768 () Bool)

(assert (=> b!7516768 (= e!4481389 (Some!17252 Nil!72520))))

(declare-fun b!7516769 () Bool)

(declare-fun e!4481396 () Option!17253)

(assert (=> b!7516769 (= e!4481390 e!4481396)))

(declare-fun lt!2638301 () Option!17253)

(assert (=> b!7516769 (= lt!2638301 call!689376)))

(declare-fun c!1388883 () Bool)

(assert (=> b!7516769 (= c!1388883 (is-Some!17252 lt!2638301))))

(declare-fun b!7516770 () Bool)

(declare-fun c!1388887 () Bool)

(declare-fun lt!2638299 () Option!17253)

(assert (=> b!7516770 (= c!1388887 (is-Some!17252 lt!2638299))))

(assert (=> b!7516770 (= lt!2638299 call!689377)))

(assert (=> b!7516770 (= e!4481396 e!4481391)))

(declare-fun bm!689372 () Bool)

(assert (=> bm!689372 (= call!689376 (getLanguageWitness!1096 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516771 () Bool)

(assert (=> b!7516771 (= e!4481393 (Some!17252 Nil!72520))))

(declare-fun b!7516772 () Bool)

(assert (=> b!7516772 (= e!4481391 (Some!17252 (++!17359 (v!54387 lt!2638301) (v!54387 lt!2638299))))))

(declare-fun b!7516773 () Bool)

(assert (=> b!7516773 (= e!4481394 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) Nil!72520)))))

(declare-fun b!7516774 () Bool)

(assert (=> b!7516774 (= e!4481389 e!4481392)))

(declare-fun c!1388886 () Bool)

(assert (=> b!7516774 (= c!1388886 (is-EmptyLang!19756 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516775 () Bool)

(assert (=> b!7516775 (= e!4481392 None!17252)))

(declare-fun b!7516776 () Bool)

(assert (=> b!7516776 (= e!4481396 None!17252)))

(assert (= (and d!2308052 c!1388884) b!7516768))

(assert (= (and d!2308052 (not c!1388884)) b!7516774))

(assert (= (and b!7516774 c!1388886) b!7516775))

(assert (= (and b!7516774 (not c!1388886)) b!7516761))

(assert (= (and b!7516761 c!1388885) b!7516773))

(assert (= (and b!7516761 (not c!1388885)) b!7516767))

(assert (= (and b!7516767 c!1388889) b!7516771))

(assert (= (and b!7516767 (not c!1388889)) b!7516765))

(assert (= (and b!7516765 c!1388890) b!7516763))

(assert (= (and b!7516765 (not c!1388890)) b!7516769))

(assert (= (and b!7516763 c!1388888) b!7516762))

(assert (= (and b!7516763 (not c!1388888)) b!7516764))

(assert (= (and b!7516769 c!1388883) b!7516770))

(assert (= (and b!7516769 (not c!1388883)) b!7516776))

(assert (= (and b!7516770 c!1388887) b!7516772))

(assert (= (and b!7516770 (not c!1388887)) b!7516766))

(assert (= (or b!7516764 b!7516769) bm!689372))

(assert (= (or b!7516763 b!7516770) bm!689371))

(declare-fun m!8098260 () Bool)

(assert (=> bm!689371 m!8098260))

(declare-fun m!8098262 () Bool)

(assert (=> bm!689372 m!8098262))

(declare-fun m!8098264 () Bool)

(assert (=> b!7516772 m!8098264))

(assert (=> bm!689331 d!2308052))

(declare-fun b!7516777 () Bool)

(declare-fun e!4481398 () List!72644)

(assert (=> b!7516777 (= e!4481398 (v!54387 lt!2638265))))

(declare-fun lt!2638302 () List!72644)

(declare-fun b!7516780 () Bool)

(declare-fun e!4481397 () Bool)

(assert (=> b!7516780 (= e!4481397 (or (not (= (v!54387 lt!2638265) Nil!72520)) (= lt!2638302 (v!54387 lt!2638267))))))

(declare-fun b!7516779 () Bool)

(declare-fun res!3013811 () Bool)

(assert (=> b!7516779 (=> (not res!3013811) (not e!4481397))))

(assert (=> b!7516779 (= res!3013811 (= (size!42300 lt!2638302) (+ (size!42300 (v!54387 lt!2638267)) (size!42300 (v!54387 lt!2638265)))))))

(declare-fun b!7516778 () Bool)

(assert (=> b!7516778 (= e!4481398 (Cons!72520 (h!78968 (v!54387 lt!2638267)) (++!17359 (t!387281 (v!54387 lt!2638267)) (v!54387 lt!2638265))))))

(declare-fun d!2308054 () Bool)

(assert (=> d!2308054 e!4481397))

(declare-fun res!3013812 () Bool)

(assert (=> d!2308054 (=> (not res!3013812) (not e!4481397))))

(assert (=> d!2308054 (= res!3013812 (= (content!15343 lt!2638302) (set.union (content!15343 (v!54387 lt!2638267)) (content!15343 (v!54387 lt!2638265)))))))

(assert (=> d!2308054 (= lt!2638302 e!4481398)))

(declare-fun c!1388891 () Bool)

(assert (=> d!2308054 (= c!1388891 (is-Nil!72520 (v!54387 lt!2638267)))))

(assert (=> d!2308054 (= (++!17359 (v!54387 lt!2638267) (v!54387 lt!2638265)) lt!2638302)))

(assert (= (and d!2308054 c!1388891) b!7516777))

(assert (= (and d!2308054 (not c!1388891)) b!7516778))

(assert (= (and d!2308054 res!3013812) b!7516779))

(assert (= (and b!7516779 res!3013811) b!7516780))

(declare-fun m!8098266 () Bool)

(assert (=> b!7516779 m!8098266))

(declare-fun m!8098268 () Bool)

(assert (=> b!7516779 m!8098268))

(declare-fun m!8098270 () Bool)

(assert (=> b!7516779 m!8098270))

(declare-fun m!8098272 () Bool)

(assert (=> b!7516778 m!8098272))

(declare-fun m!8098274 () Bool)

(assert (=> d!2308054 m!8098274))

(declare-fun m!8098276 () Bool)

(assert (=> d!2308054 m!8098276))

(declare-fun m!8098278 () Bool)

(assert (=> d!2308054 m!8098278))

(assert (=> b!7516514 d!2308054))

(declare-fun d!2308056 () Bool)

(declare-fun c!1388892 () Bool)

(assert (=> d!2308056 (= c!1388892 (is-Nil!72520 (t!387281 (v!54387 lt!2638221))))))

(declare-fun e!4481399 () (Set C!39838))

(assert (=> d!2308056 (= (content!15343 (t!387281 (v!54387 lt!2638221))) e!4481399)))

(declare-fun b!7516781 () Bool)

(assert (=> b!7516781 (= e!4481399 (as set.empty (Set C!39838)))))

(declare-fun b!7516782 () Bool)

(assert (=> b!7516782 (= e!4481399 (set.union (set.insert (h!78968 (t!387281 (v!54387 lt!2638221))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (v!54387 lt!2638221))))))))

(assert (= (and d!2308056 c!1388892) b!7516781))

(assert (= (and d!2308056 (not c!1388892)) b!7516782))

(declare-fun m!8098280 () Bool)

(assert (=> b!7516782 m!8098280))

(declare-fun m!8098282 () Bool)

(assert (=> b!7516782 m!8098282))

(assert (=> b!7516530 d!2308056))

(declare-fun d!2308058 () Bool)

(declare-fun c!1388893 () Bool)

(assert (=> d!2308058 (= c!1388893 (is-Nil!72520 lt!2638256))))

(declare-fun e!4481400 () (Set C!39838))

(assert (=> d!2308058 (= (content!15343 lt!2638256) e!4481400)))

(declare-fun b!7516783 () Bool)

(assert (=> b!7516783 (= e!4481400 (as set.empty (Set C!39838)))))

(declare-fun b!7516784 () Bool)

(assert (=> b!7516784 (= e!4481400 (set.union (set.insert (h!78968 lt!2638256) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638256))))))

(assert (= (and d!2308058 c!1388893) b!7516783))

(assert (= (and d!2308058 (not c!1388893)) b!7516784))

(declare-fun m!8098284 () Bool)

(assert (=> b!7516784 m!8098284))

(declare-fun m!8098286 () Bool)

(assert (=> b!7516784 m!8098286))

(assert (=> d!2307966 d!2308058))

(declare-fun d!2308060 () Bool)

(declare-fun c!1388894 () Bool)

(assert (=> d!2308060 (= c!1388894 (is-Nil!72520 (v!54387 lt!2638236)))))

(declare-fun e!4481401 () (Set C!39838))

(assert (=> d!2308060 (= (content!15343 (v!54387 lt!2638236)) e!4481401)))

(declare-fun b!7516785 () Bool)

(assert (=> b!7516785 (= e!4481401 (as set.empty (Set C!39838)))))

(declare-fun b!7516786 () Bool)

(assert (=> b!7516786 (= e!4481401 (set.union (set.insert (h!78968 (v!54387 lt!2638236)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638236)))))))

(assert (= (and d!2308060 c!1388894) b!7516785))

(assert (= (and d!2308060 (not c!1388894)) b!7516786))

(declare-fun m!8098288 () Bool)

(assert (=> b!7516786 m!8098288))

(declare-fun m!8098290 () Bool)

(assert (=> b!7516786 m!8098290))

(assert (=> d!2307966 d!2308060))

(declare-fun d!2308062 () Bool)

(declare-fun c!1388895 () Bool)

(assert (=> d!2308062 (= c!1388895 (is-Nil!72520 (v!54387 lt!2638234)))))

(declare-fun e!4481402 () (Set C!39838))

(assert (=> d!2308062 (= (content!15343 (v!54387 lt!2638234)) e!4481402)))

(declare-fun b!7516787 () Bool)

(assert (=> b!7516787 (= e!4481402 (as set.empty (Set C!39838)))))

(declare-fun b!7516788 () Bool)

(assert (=> b!7516788 (= e!4481402 (set.union (set.insert (h!78968 (v!54387 lt!2638234)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638234)))))))

(assert (= (and d!2308062 c!1388895) b!7516787))

(assert (= (and d!2308062 (not c!1388895)) b!7516788))

(declare-fun m!8098292 () Bool)

(assert (=> b!7516788 m!8098292))

(declare-fun m!8098294 () Bool)

(assert (=> b!7516788 m!8098294))

(assert (=> d!2307966 d!2308062))

(declare-fun b!7516789 () Bool)

(declare-fun e!4481404 () List!72644)

(assert (=> b!7516789 (= e!4481404 (v!54387 lt!2638249))))

(declare-fun b!7516792 () Bool)

(declare-fun e!4481403 () Bool)

(declare-fun lt!2638303 () List!72644)

(assert (=> b!7516792 (= e!4481403 (or (not (= (v!54387 lt!2638249) Nil!72520)) (= lt!2638303 (v!54387 lt!2638251))))))

(declare-fun b!7516791 () Bool)

(declare-fun res!3013813 () Bool)

(assert (=> b!7516791 (=> (not res!3013813) (not e!4481403))))

(assert (=> b!7516791 (= res!3013813 (= (size!42300 lt!2638303) (+ (size!42300 (v!54387 lt!2638251)) (size!42300 (v!54387 lt!2638249)))))))

(declare-fun b!7516790 () Bool)

(assert (=> b!7516790 (= e!4481404 (Cons!72520 (h!78968 (v!54387 lt!2638251)) (++!17359 (t!387281 (v!54387 lt!2638251)) (v!54387 lt!2638249))))))

(declare-fun d!2308064 () Bool)

(assert (=> d!2308064 e!4481403))

(declare-fun res!3013814 () Bool)

(assert (=> d!2308064 (=> (not res!3013814) (not e!4481403))))

(assert (=> d!2308064 (= res!3013814 (= (content!15343 lt!2638303) (set.union (content!15343 (v!54387 lt!2638251)) (content!15343 (v!54387 lt!2638249)))))))

(assert (=> d!2308064 (= lt!2638303 e!4481404)))

(declare-fun c!1388896 () Bool)

(assert (=> d!2308064 (= c!1388896 (is-Nil!72520 (v!54387 lt!2638251)))))

(assert (=> d!2308064 (= (++!17359 (v!54387 lt!2638251) (v!54387 lt!2638249)) lt!2638303)))

(assert (= (and d!2308064 c!1388896) b!7516789))

(assert (= (and d!2308064 (not c!1388896)) b!7516790))

(assert (= (and d!2308064 res!3013814) b!7516791))

(assert (= (and b!7516791 res!3013813) b!7516792))

(declare-fun m!8098296 () Bool)

(assert (=> b!7516791 m!8098296))

(declare-fun m!8098298 () Bool)

(assert (=> b!7516791 m!8098298))

(declare-fun m!8098300 () Bool)

(assert (=> b!7516791 m!8098300))

(declare-fun m!8098302 () Bool)

(assert (=> b!7516790 m!8098302))

(declare-fun m!8098304 () Bool)

(assert (=> d!2308064 m!8098304))

(declare-fun m!8098306 () Bool)

(assert (=> d!2308064 m!8098306))

(declare-fun m!8098308 () Bool)

(assert (=> d!2308064 m!8098308))

(assert (=> b!7516417 d!2308064))

(declare-fun d!2308066 () Bool)

(declare-fun c!1388897 () Bool)

(assert (=> d!2308066 (= c!1388897 (is-Nil!72520 lt!2638255))))

(declare-fun e!4481405 () (Set C!39838))

(assert (=> d!2308066 (= (content!15343 lt!2638255) e!4481405)))

(declare-fun b!7516793 () Bool)

(assert (=> b!7516793 (= e!4481405 (as set.empty (Set C!39838)))))

(declare-fun b!7516794 () Bool)

(assert (=> b!7516794 (= e!4481405 (set.union (set.insert (h!78968 lt!2638255) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638255))))))

(assert (= (and d!2308066 c!1388897) b!7516793))

(assert (= (and d!2308066 (not c!1388897)) b!7516794))

(declare-fun m!8098310 () Bool)

(assert (=> b!7516794 m!8098310))

(declare-fun m!8098312 () Bool)

(assert (=> b!7516794 m!8098312))

(assert (=> d!2307964 d!2308066))

(assert (=> d!2307964 d!2308056))

(assert (=> d!2307964 d!2307988))

(declare-fun c!1388900 () Bool)

(declare-fun b!7516795 () Bool)

(assert (=> b!7516795 (= c!1388900 (is-ElementMatch!19756 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481409 () Option!17253)

(declare-fun e!4481411 () Option!17253)

(assert (=> b!7516795 (= e!4481409 e!4481411)))

(declare-fun d!2308068 () Bool)

(declare-fun c!1388899 () Bool)

(assert (=> d!2308068 (= c!1388899 (is-EmptyExpr!19756 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481406 () Option!17253)

(assert (=> d!2308068 (= (getLanguageWitness!1096 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481406)))

(declare-fun b!7516796 () Bool)

(declare-fun e!4481412 () Option!17253)

(declare-fun lt!2638305 () Option!17253)

(assert (=> b!7516796 (= e!4481412 lt!2638305)))

(declare-fun b!7516797 () Bool)

(declare-fun e!4481407 () Option!17253)

(assert (=> b!7516797 (= e!4481407 e!4481412)))

(declare-fun call!689379 () Option!17253)

(assert (=> b!7516797 (= lt!2638305 call!689379)))

(declare-fun c!1388903 () Bool)

(assert (=> b!7516797 (= c!1388903 (is-Some!17252 lt!2638305))))

(declare-fun b!7516798 () Bool)

(declare-fun call!689378 () Option!17253)

(assert (=> b!7516798 (= e!4481412 call!689378)))

(declare-fun b!7516799 () Bool)

(declare-fun c!1388905 () Bool)

(assert (=> b!7516799 (= c!1388905 (is-Union!19756 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481410 () Option!17253)

(assert (=> b!7516799 (= e!4481410 e!4481407)))

(declare-fun b!7516800 () Bool)

(declare-fun e!4481408 () Option!17253)

(assert (=> b!7516800 (= e!4481408 None!17252)))

(declare-fun bm!689373 () Bool)

(assert (=> bm!689373 (= call!689379 (getLanguageWitness!1096 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516801 () Bool)

(assert (=> b!7516801 (= e!4481411 e!4481410)))

(declare-fun c!1388904 () Bool)

(assert (=> b!7516801 (= c!1388904 (is-Star!19756 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516802 () Bool)

(assert (=> b!7516802 (= e!4481406 (Some!17252 Nil!72520))))

(declare-fun b!7516803 () Bool)

(declare-fun e!4481413 () Option!17253)

(assert (=> b!7516803 (= e!4481407 e!4481413)))

(declare-fun lt!2638306 () Option!17253)

(assert (=> b!7516803 (= lt!2638306 call!689378)))

(declare-fun c!1388898 () Bool)

(assert (=> b!7516803 (= c!1388898 (is-Some!17252 lt!2638306))))

(declare-fun b!7516804 () Bool)

(declare-fun c!1388902 () Bool)

(declare-fun lt!2638304 () Option!17253)

(assert (=> b!7516804 (= c!1388902 (is-Some!17252 lt!2638304))))

(assert (=> b!7516804 (= lt!2638304 call!689379)))

(assert (=> b!7516804 (= e!4481413 e!4481408)))

(declare-fun bm!689374 () Bool)

(assert (=> bm!689374 (= call!689378 (getLanguageWitness!1096 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516805 () Bool)

(assert (=> b!7516805 (= e!4481410 (Some!17252 Nil!72520))))

(declare-fun b!7516806 () Bool)

(assert (=> b!7516806 (= e!4481408 (Some!17252 (++!17359 (v!54387 lt!2638306) (v!54387 lt!2638304))))))

(declare-fun b!7516807 () Bool)

(assert (=> b!7516807 (= e!4481411 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) Nil!72520)))))

(declare-fun b!7516808 () Bool)

(assert (=> b!7516808 (= e!4481406 e!4481409)))

(declare-fun c!1388901 () Bool)

(assert (=> b!7516808 (= c!1388901 (is-EmptyLang!19756 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516809 () Bool)

(assert (=> b!7516809 (= e!4481409 None!17252)))

(declare-fun b!7516810 () Bool)

(assert (=> b!7516810 (= e!4481413 None!17252)))

(assert (= (and d!2308068 c!1388899) b!7516802))

(assert (= (and d!2308068 (not c!1388899)) b!7516808))

(assert (= (and b!7516808 c!1388901) b!7516809))

(assert (= (and b!7516808 (not c!1388901)) b!7516795))

(assert (= (and b!7516795 c!1388900) b!7516807))

(assert (= (and b!7516795 (not c!1388900)) b!7516801))

(assert (= (and b!7516801 c!1388904) b!7516805))

(assert (= (and b!7516801 (not c!1388904)) b!7516799))

(assert (= (and b!7516799 c!1388905) b!7516797))

(assert (= (and b!7516799 (not c!1388905)) b!7516803))

(assert (= (and b!7516797 c!1388903) b!7516796))

(assert (= (and b!7516797 (not c!1388903)) b!7516798))

(assert (= (and b!7516803 c!1388898) b!7516804))

(assert (= (and b!7516803 (not c!1388898)) b!7516810))

(assert (= (and b!7516804 c!1388902) b!7516806))

(assert (= (and b!7516804 (not c!1388902)) b!7516800))

(assert (= (or b!7516798 b!7516803) bm!689374))

(assert (= (or b!7516797 b!7516804) bm!689373))

(declare-fun m!8098314 () Bool)

(assert (=> bm!689373 m!8098314))

(declare-fun m!8098316 () Bool)

(assert (=> bm!689374 m!8098316))

(declare-fun m!8098318 () Bool)

(assert (=> b!7516806 m!8098318))

(assert (=> bm!689330 d!2308068))

(declare-fun c!1388908 () Bool)

(declare-fun b!7516811 () Bool)

(assert (=> b!7516811 (= c!1388908 (is-ElementMatch!19756 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481417 () Option!17253)

(declare-fun e!4481419 () Option!17253)

(assert (=> b!7516811 (= e!4481417 e!4481419)))

(declare-fun d!2308070 () Bool)

(declare-fun c!1388907 () Bool)

(assert (=> d!2308070 (= c!1388907 (is-EmptyExpr!19756 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481414 () Option!17253)

(assert (=> d!2308070 (= (getLanguageWitness!1096 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481414)))

(declare-fun b!7516812 () Bool)

(declare-fun e!4481420 () Option!17253)

(declare-fun lt!2638308 () Option!17253)

(assert (=> b!7516812 (= e!4481420 lt!2638308)))

(declare-fun b!7516813 () Bool)

(declare-fun e!4481415 () Option!17253)

(assert (=> b!7516813 (= e!4481415 e!4481420)))

(declare-fun call!689381 () Option!17253)

(assert (=> b!7516813 (= lt!2638308 call!689381)))

(declare-fun c!1388911 () Bool)

(assert (=> b!7516813 (= c!1388911 (is-Some!17252 lt!2638308))))

(declare-fun b!7516814 () Bool)

(declare-fun call!689380 () Option!17253)

(assert (=> b!7516814 (= e!4481420 call!689380)))

(declare-fun c!1388913 () Bool)

(declare-fun b!7516815 () Bool)

(assert (=> b!7516815 (= c!1388913 (is-Union!19756 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481418 () Option!17253)

(assert (=> b!7516815 (= e!4481418 e!4481415)))

(declare-fun b!7516816 () Bool)

(declare-fun e!4481416 () Option!17253)

(assert (=> b!7516816 (= e!4481416 None!17252)))

(declare-fun bm!689375 () Bool)

(assert (=> bm!689375 (= call!689381 (getLanguageWitness!1096 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516817 () Bool)

(assert (=> b!7516817 (= e!4481419 e!4481418)))

(declare-fun c!1388912 () Bool)

(assert (=> b!7516817 (= c!1388912 (is-Star!19756 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516818 () Bool)

(assert (=> b!7516818 (= e!4481414 (Some!17252 Nil!72520))))

(declare-fun b!7516819 () Bool)

(declare-fun e!4481421 () Option!17253)

(assert (=> b!7516819 (= e!4481415 e!4481421)))

(declare-fun lt!2638309 () Option!17253)

(assert (=> b!7516819 (= lt!2638309 call!689380)))

(declare-fun c!1388906 () Bool)

(assert (=> b!7516819 (= c!1388906 (is-Some!17252 lt!2638309))))

(declare-fun b!7516820 () Bool)

(declare-fun c!1388910 () Bool)

(declare-fun lt!2638307 () Option!17253)

(assert (=> b!7516820 (= c!1388910 (is-Some!17252 lt!2638307))))

(assert (=> b!7516820 (= lt!2638307 call!689381)))

(assert (=> b!7516820 (= e!4481421 e!4481416)))

(declare-fun bm!689376 () Bool)

(assert (=> bm!689376 (= call!689380 (getLanguageWitness!1096 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516821 () Bool)

(assert (=> b!7516821 (= e!4481418 (Some!17252 Nil!72520))))

(declare-fun b!7516822 () Bool)

(assert (=> b!7516822 (= e!4481416 (Some!17252 (++!17359 (v!54387 lt!2638309) (v!54387 lt!2638307))))))

(declare-fun b!7516823 () Bool)

(assert (=> b!7516823 (= e!4481419 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) Nil!72520)))))

(declare-fun b!7516824 () Bool)

(assert (=> b!7516824 (= e!4481414 e!4481417)))

(declare-fun c!1388909 () Bool)

(assert (=> b!7516824 (= c!1388909 (is-EmptyLang!19756 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516825 () Bool)

(assert (=> b!7516825 (= e!4481417 None!17252)))

(declare-fun b!7516826 () Bool)

(assert (=> b!7516826 (= e!4481421 None!17252)))

(assert (= (and d!2308070 c!1388907) b!7516818))

(assert (= (and d!2308070 (not c!1388907)) b!7516824))

(assert (= (and b!7516824 c!1388909) b!7516825))

(assert (= (and b!7516824 (not c!1388909)) b!7516811))

(assert (= (and b!7516811 c!1388908) b!7516823))

(assert (= (and b!7516811 (not c!1388908)) b!7516817))

(assert (= (and b!7516817 c!1388912) b!7516821))

(assert (= (and b!7516817 (not c!1388912)) b!7516815))

(assert (= (and b!7516815 c!1388913) b!7516813))

(assert (= (and b!7516815 (not c!1388913)) b!7516819))

(assert (= (and b!7516813 c!1388911) b!7516812))

(assert (= (and b!7516813 (not c!1388911)) b!7516814))

(assert (= (and b!7516819 c!1388906) b!7516820))

(assert (= (and b!7516819 (not c!1388906)) b!7516826))

(assert (= (and b!7516820 c!1388910) b!7516822))

(assert (= (and b!7516820 (not c!1388910)) b!7516816))

(assert (= (or b!7516814 b!7516819) bm!689376))

(assert (= (or b!7516813 b!7516820) bm!689375))

(declare-fun m!8098320 () Bool)

(assert (=> bm!689375 m!8098320))

(declare-fun m!8098322 () Bool)

(assert (=> bm!689376 m!8098322))

(declare-fun m!8098324 () Bool)

(assert (=> b!7516822 m!8098324))

(assert (=> bm!689344 d!2308070))

(declare-fun b!7516827 () Bool)

(declare-fun e!4481423 () List!72644)

(assert (=> b!7516827 (= e!4481423 (v!54387 lt!2638262))))

(declare-fun e!4481422 () Bool)

(declare-fun lt!2638310 () List!72644)

(declare-fun b!7516830 () Bool)

(assert (=> b!7516830 (= e!4481422 (or (not (= (v!54387 lt!2638262) Nil!72520)) (= lt!2638310 (v!54387 lt!2638264))))))

(declare-fun b!7516829 () Bool)

(declare-fun res!3013815 () Bool)

(assert (=> b!7516829 (=> (not res!3013815) (not e!4481422))))

(assert (=> b!7516829 (= res!3013815 (= (size!42300 lt!2638310) (+ (size!42300 (v!54387 lt!2638264)) (size!42300 (v!54387 lt!2638262)))))))

(declare-fun b!7516828 () Bool)

(assert (=> b!7516828 (= e!4481423 (Cons!72520 (h!78968 (v!54387 lt!2638264)) (++!17359 (t!387281 (v!54387 lt!2638264)) (v!54387 lt!2638262))))))

(declare-fun d!2308072 () Bool)

(assert (=> d!2308072 e!4481422))

(declare-fun res!3013816 () Bool)

(assert (=> d!2308072 (=> (not res!3013816) (not e!4481422))))

(assert (=> d!2308072 (= res!3013816 (= (content!15343 lt!2638310) (set.union (content!15343 (v!54387 lt!2638264)) (content!15343 (v!54387 lt!2638262)))))))

(assert (=> d!2308072 (= lt!2638310 e!4481423)))

(declare-fun c!1388914 () Bool)

(assert (=> d!2308072 (= c!1388914 (is-Nil!72520 (v!54387 lt!2638264)))))

(assert (=> d!2308072 (= (++!17359 (v!54387 lt!2638264) (v!54387 lt!2638262)) lt!2638310)))

(assert (= (and d!2308072 c!1388914) b!7516827))

(assert (= (and d!2308072 (not c!1388914)) b!7516828))

(assert (= (and d!2308072 res!3013816) b!7516829))

(assert (= (and b!7516829 res!3013815) b!7516830))

(declare-fun m!8098326 () Bool)

(assert (=> b!7516829 m!8098326))

(declare-fun m!8098328 () Bool)

(assert (=> b!7516829 m!8098328))

(declare-fun m!8098330 () Bool)

(assert (=> b!7516829 m!8098330))

(declare-fun m!8098332 () Bool)

(assert (=> b!7516828 m!8098332))

(declare-fun m!8098334 () Bool)

(assert (=> d!2308072 m!8098334))

(declare-fun m!8098336 () Bool)

(assert (=> d!2308072 m!8098336))

(declare-fun m!8098338 () Bool)

(assert (=> d!2308072 m!8098338))

(assert (=> b!7516498 d!2308072))

(declare-fun b!7516845 () Bool)

(declare-fun e!4481440 () Bool)

(declare-fun e!4481438 () Bool)

(assert (=> b!7516845 (= e!4481440 e!4481438)))

(declare-fun res!3013831 () Bool)

(declare-fun call!689387 () Bool)

(assert (=> b!7516845 (= res!3013831 call!689387)))

(assert (=> b!7516845 (=> (not res!3013831) (not e!4481438))))

(declare-fun b!7516847 () Bool)

(declare-fun e!4481436 () Bool)

(declare-fun e!4481441 () Bool)

(assert (=> b!7516847 (= e!4481436 e!4481441)))

(declare-fun res!3013827 () Bool)

(assert (=> b!7516847 (=> (not res!3013827) (not e!4481441))))

(assert (=> b!7516847 (= res!3013827 (and (not (is-ElementMatch!19756 (h!78967 (exprs!9008 c!7091)))) (not (is-Star!19756 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun bm!689381 () Bool)

(declare-fun c!1388917 () Bool)

(assert (=> bm!689381 (= call!689387 (lostCause!1627 (ite c!1388917 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516848 () Bool)

(declare-fun call!689386 () Bool)

(assert (=> b!7516848 (= e!4481438 call!689386)))

(declare-fun b!7516849 () Bool)

(declare-fun e!4481439 () Bool)

(assert (=> b!7516849 (= e!4481440 e!4481439)))

(declare-fun res!3013828 () Bool)

(assert (=> b!7516849 (= res!3013828 call!689386)))

(assert (=> b!7516849 (=> res!3013828 e!4481439)))

(declare-fun b!7516850 () Bool)

(assert (=> b!7516850 (= e!4481441 e!4481440)))

(assert (=> b!7516850 (= c!1388917 (is-Union!19756 (h!78967 (exprs!9008 c!7091))))))

(declare-fun b!7516846 () Bool)

(declare-fun e!4481437 () Bool)

(assert (=> b!7516846 (= e!4481437 e!4481436)))

(declare-fun res!3013829 () Bool)

(assert (=> b!7516846 (=> res!3013829 e!4481436)))

(assert (=> b!7516846 (= res!3013829 (is-EmptyLang!19756 (h!78967 (exprs!9008 c!7091))))))

(declare-fun d!2308074 () Bool)

(declare-fun lt!2638313 () Bool)

(declare-fun isEmpty!41334 (Option!17253) Bool)

(assert (=> d!2308074 (= lt!2638313 (isEmpty!41334 (getLanguageWitness!1096 (h!78967 (exprs!9008 c!7091)))))))

(assert (=> d!2308074 (= lt!2638313 e!4481437)))

(declare-fun res!3013830 () Bool)

(assert (=> d!2308074 (=> (not res!3013830) (not e!4481437))))

(assert (=> d!2308074 (= res!3013830 (not (is-EmptyExpr!19756 (h!78967 (exprs!9008 c!7091)))))))

(assert (=> d!2308074 (= (lostCauseFct!409 (h!78967 (exprs!9008 c!7091))) lt!2638313)))

(declare-fun bm!689382 () Bool)

(assert (=> bm!689382 (= call!689386 (lostCause!1627 (ite c!1388917 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun b!7516851 () Bool)

(assert (=> b!7516851 (= e!4481439 call!689387)))

(assert (= (and d!2308074 res!3013830) b!7516846))

(assert (= (and b!7516846 (not res!3013829)) b!7516847))

(assert (= (and b!7516847 res!3013827) b!7516850))

(assert (= (and b!7516850 c!1388917) b!7516845))

(assert (= (and b!7516850 (not c!1388917)) b!7516849))

(assert (= (and b!7516845 res!3013831) b!7516848))

(assert (= (and b!7516849 (not res!3013828)) b!7516851))

(assert (= (or b!7516845 b!7516851) bm!689381))

(assert (= (or b!7516848 b!7516849) bm!689382))

(declare-fun m!8098340 () Bool)

(assert (=> bm!689381 m!8098340))

(assert (=> d!2308074 m!8097926))

(assert (=> d!2308074 m!8097926))

(declare-fun m!8098342 () Bool)

(assert (=> d!2308074 m!8098342))

(declare-fun m!8098344 () Bool)

(assert (=> bm!689382 m!8098344))

(assert (=> d!2307976 d!2308074))

(declare-fun d!2308076 () Bool)

(declare-fun lt!2638314 () Int)

(assert (=> d!2308076 (>= lt!2638314 0)))

(declare-fun e!4481442 () Int)

(assert (=> d!2308076 (= lt!2638314 e!4481442)))

(declare-fun c!1388918 () Bool)

(assert (=> d!2308076 (= c!1388918 (is-Nil!72520 (t!387281 lt!2638233)))))

(assert (=> d!2308076 (= (size!42300 (t!387281 lt!2638233)) lt!2638314)))

(declare-fun b!7516852 () Bool)

(assert (=> b!7516852 (= e!4481442 0)))

(declare-fun b!7516853 () Bool)

(assert (=> b!7516853 (= e!4481442 (+ 1 (size!42300 (t!387281 (t!387281 lt!2638233)))))))

(assert (= (and d!2308076 c!1388918) b!7516852))

(assert (= (and d!2308076 (not c!1388918)) b!7516853))

(declare-fun m!8098346 () Bool)

(assert (=> b!7516853 m!8098346))

(assert (=> b!7516482 d!2308076))

(declare-fun b!7516854 () Bool)

(declare-fun e!4481444 () Bool)

(declare-fun call!689389 () Bool)

(assert (=> b!7516854 (= e!4481444 call!689389)))

(declare-fun b!7516855 () Bool)

(declare-fun res!3013833 () Bool)

(declare-fun e!4481448 () Bool)

(assert (=> b!7516855 (=> (not res!3013833) (not e!4481448))))

(declare-fun call!689390 () Bool)

(assert (=> b!7516855 (= res!3013833 call!689390)))

(declare-fun e!4481447 () Bool)

(assert (=> b!7516855 (= e!4481447 e!4481448)))

(declare-fun bm!689383 () Bool)

(declare-fun call!689388 () Bool)

(declare-fun c!1388919 () Bool)

(assert (=> bm!689383 (= call!689388 (validRegex!10192 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun b!7516856 () Bool)

(declare-fun e!4481445 () Bool)

(assert (=> b!7516856 (= e!4481445 e!4481444)))

(declare-fun res!3013832 () Bool)

(assert (=> b!7516856 (= res!3013832 (not (nullable!8596 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))

(assert (=> b!7516856 (=> (not res!3013832) (not e!4481444))))

(declare-fun bm!689384 () Bool)

(assert (=> bm!689384 (= call!689390 call!689389)))

(declare-fun c!1388920 () Bool)

(declare-fun bm!689385 () Bool)

(assert (=> bm!689385 (= call!689389 (validRegex!10192 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))))))

(declare-fun b!7516857 () Bool)

(assert (=> b!7516857 (= e!4481448 call!689388)))

(declare-fun d!2308078 () Bool)

(declare-fun res!3013836 () Bool)

(declare-fun e!4481449 () Bool)

(assert (=> d!2308078 (=> res!3013836 e!4481449)))

(assert (=> d!2308078 (= res!3013836 (is-ElementMatch!19756 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(assert (=> d!2308078 (= (validRegex!10192 (h!78967 (t!387280 (exprs!9008 c!7091)))) e!4481449)))

(declare-fun b!7516858 () Bool)

(assert (=> b!7516858 (= e!4481445 e!4481447)))

(assert (=> b!7516858 (= c!1388919 (is-Union!19756 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(declare-fun b!7516859 () Bool)

(declare-fun e!4481443 () Bool)

(assert (=> b!7516859 (= e!4481443 call!689388)))

(declare-fun b!7516860 () Bool)

(declare-fun e!4481446 () Bool)

(assert (=> b!7516860 (= e!4481446 e!4481443)))

(declare-fun res!3013834 () Bool)

(assert (=> b!7516860 (=> (not res!3013834) (not e!4481443))))

(assert (=> b!7516860 (= res!3013834 call!689390)))

(declare-fun b!7516861 () Bool)

(declare-fun res!3013835 () Bool)

(assert (=> b!7516861 (=> res!3013835 e!4481446)))

(assert (=> b!7516861 (= res!3013835 (not (is-Concat!28601 (h!78967 (t!387280 (exprs!9008 c!7091))))))))

(assert (=> b!7516861 (= e!4481447 e!4481446)))

(declare-fun b!7516862 () Bool)

(assert (=> b!7516862 (= e!4481449 e!4481445)))

(assert (=> b!7516862 (= c!1388920 (is-Star!19756 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(assert (= (and d!2308078 (not res!3013836)) b!7516862))

(assert (= (and b!7516862 c!1388920) b!7516856))

(assert (= (and b!7516862 (not c!1388920)) b!7516858))

(assert (= (and b!7516856 res!3013832) b!7516854))

(assert (= (and b!7516858 c!1388919) b!7516855))

(assert (= (and b!7516858 (not c!1388919)) b!7516861))

(assert (= (and b!7516855 res!3013833) b!7516857))

(assert (= (and b!7516861 (not res!3013835)) b!7516860))

(assert (= (and b!7516860 res!3013834) b!7516859))

(assert (= (or b!7516855 b!7516860) bm!689384))

(assert (= (or b!7516857 b!7516859) bm!689383))

(assert (= (or b!7516854 bm!689384) bm!689385))

(declare-fun m!8098348 () Bool)

(assert (=> bm!689383 m!8098348))

(declare-fun m!8098350 () Bool)

(assert (=> b!7516856 m!8098350))

(declare-fun m!8098352 () Bool)

(assert (=> bm!689385 m!8098352))

(assert (=> bs!1939403 d!2308078))

(declare-fun d!2308080 () Bool)

(assert (=> d!2308080 (= (lostCause!1627 (h!78967 (t!387280 (exprs!9008 c!7091)))) (lostCauseFct!409 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(declare-fun bs!1939410 () Bool)

(assert (= bs!1939410 d!2308080))

(declare-fun m!8098354 () Bool)

(assert (=> bs!1939410 m!8098354))

(assert (=> bs!1939407 d!2308080))

(declare-fun b!7516863 () Bool)

(declare-fun e!4481451 () List!72644)

(assert (=> b!7516863 (= e!4481451 (v!54387 lt!2638237))))

(declare-fun e!4481450 () Bool)

(declare-fun lt!2638315 () List!72644)

(declare-fun b!7516866 () Bool)

(assert (=> b!7516866 (= e!4481450 (or (not (= (v!54387 lt!2638237) Nil!72520)) (= lt!2638315 (t!387281 (v!54387 lt!2638239)))))))

(declare-fun b!7516865 () Bool)

(declare-fun res!3013837 () Bool)

(assert (=> b!7516865 (=> (not res!3013837) (not e!4481450))))

(assert (=> b!7516865 (= res!3013837 (= (size!42300 lt!2638315) (+ (size!42300 (t!387281 (v!54387 lt!2638239))) (size!42300 (v!54387 lt!2638237)))))))

(declare-fun b!7516864 () Bool)

(assert (=> b!7516864 (= e!4481451 (Cons!72520 (h!78968 (t!387281 (v!54387 lt!2638239))) (++!17359 (t!387281 (t!387281 (v!54387 lt!2638239))) (v!54387 lt!2638237))))))

(declare-fun d!2308082 () Bool)

(assert (=> d!2308082 e!4481450))

(declare-fun res!3013838 () Bool)

(assert (=> d!2308082 (=> (not res!3013838) (not e!4481450))))

(assert (=> d!2308082 (= res!3013838 (= (content!15343 lt!2638315) (set.union (content!15343 (t!387281 (v!54387 lt!2638239))) (content!15343 (v!54387 lt!2638237)))))))

(assert (=> d!2308082 (= lt!2638315 e!4481451)))

(declare-fun c!1388921 () Bool)

(assert (=> d!2308082 (= c!1388921 (is-Nil!72520 (t!387281 (v!54387 lt!2638239))))))

(assert (=> d!2308082 (= (++!17359 (t!387281 (v!54387 lt!2638239)) (v!54387 lt!2638237)) lt!2638315)))

(assert (= (and d!2308082 c!1388921) b!7516863))

(assert (= (and d!2308082 (not c!1388921)) b!7516864))

(assert (= (and d!2308082 res!3013838) b!7516865))

(assert (= (and b!7516865 res!3013837) b!7516866))

(declare-fun m!8098356 () Bool)

(assert (=> b!7516865 m!8098356))

(assert (=> b!7516865 m!8098256))

(assert (=> b!7516865 m!8098106))

(declare-fun m!8098358 () Bool)

(assert (=> b!7516864 m!8098358))

(declare-fun m!8098360 () Bool)

(assert (=> d!2308082 m!8098360))

(declare-fun m!8098362 () Bool)

(assert (=> d!2308082 m!8098362))

(assert (=> d!2308082 m!8098114))

(assert (=> b!7516520 d!2308082))

(declare-fun b!7516867 () Bool)

(declare-fun c!1388924 () Bool)

(assert (=> b!7516867 (= c!1388924 (is-ElementMatch!19756 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481455 () Option!17253)

(declare-fun e!4481457 () Option!17253)

(assert (=> b!7516867 (= e!4481455 e!4481457)))

(declare-fun c!1388923 () Bool)

(declare-fun d!2308084 () Bool)

(assert (=> d!2308084 (= c!1388923 (is-EmptyExpr!19756 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481452 () Option!17253)

(assert (=> d!2308084 (= (getLanguageWitness!1096 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481452)))

(declare-fun b!7516868 () Bool)

(declare-fun e!4481458 () Option!17253)

(declare-fun lt!2638317 () Option!17253)

(assert (=> b!7516868 (= e!4481458 lt!2638317)))

(declare-fun b!7516869 () Bool)

(declare-fun e!4481453 () Option!17253)

(assert (=> b!7516869 (= e!4481453 e!4481458)))

(declare-fun call!689392 () Option!17253)

(assert (=> b!7516869 (= lt!2638317 call!689392)))

(declare-fun c!1388927 () Bool)

(assert (=> b!7516869 (= c!1388927 (is-Some!17252 lt!2638317))))

(declare-fun b!7516870 () Bool)

(declare-fun call!689391 () Option!17253)

(assert (=> b!7516870 (= e!4481458 call!689391)))

(declare-fun c!1388929 () Bool)

(declare-fun b!7516871 () Bool)

(assert (=> b!7516871 (= c!1388929 (is-Union!19756 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481456 () Option!17253)

(assert (=> b!7516871 (= e!4481456 e!4481453)))

(declare-fun b!7516872 () Bool)

(declare-fun e!4481454 () Option!17253)

(assert (=> b!7516872 (= e!4481454 None!17252)))

(declare-fun bm!689386 () Bool)

(assert (=> bm!689386 (= call!689392 (getLanguageWitness!1096 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516873 () Bool)

(assert (=> b!7516873 (= e!4481457 e!4481456)))

(declare-fun c!1388928 () Bool)

(assert (=> b!7516873 (= c!1388928 (is-Star!19756 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516874 () Bool)

(assert (=> b!7516874 (= e!4481452 (Some!17252 Nil!72520))))

(declare-fun b!7516875 () Bool)

(declare-fun e!4481459 () Option!17253)

(assert (=> b!7516875 (= e!4481453 e!4481459)))

(declare-fun lt!2638318 () Option!17253)

(assert (=> b!7516875 (= lt!2638318 call!689391)))

(declare-fun c!1388922 () Bool)

(assert (=> b!7516875 (= c!1388922 (is-Some!17252 lt!2638318))))

(declare-fun b!7516876 () Bool)

(declare-fun c!1388926 () Bool)

(declare-fun lt!2638316 () Option!17253)

(assert (=> b!7516876 (= c!1388926 (is-Some!17252 lt!2638316))))

(assert (=> b!7516876 (= lt!2638316 call!689392)))

(assert (=> b!7516876 (= e!4481459 e!4481454)))

(declare-fun bm!689387 () Bool)

(assert (=> bm!689387 (= call!689391 (getLanguageWitness!1096 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516877 () Bool)

(assert (=> b!7516877 (= e!4481456 (Some!17252 Nil!72520))))

(declare-fun b!7516878 () Bool)

(assert (=> b!7516878 (= e!4481454 (Some!17252 (++!17359 (v!54387 lt!2638318) (v!54387 lt!2638316))))))

(declare-fun b!7516879 () Bool)

(assert (=> b!7516879 (= e!4481457 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) Nil!72520)))))

(declare-fun b!7516880 () Bool)

(assert (=> b!7516880 (= e!4481452 e!4481455)))

(declare-fun c!1388925 () Bool)

(assert (=> b!7516880 (= c!1388925 (is-EmptyLang!19756 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516881 () Bool)

(assert (=> b!7516881 (= e!4481455 None!17252)))

(declare-fun b!7516882 () Bool)

(assert (=> b!7516882 (= e!4481459 None!17252)))

(assert (= (and d!2308084 c!1388923) b!7516874))

(assert (= (and d!2308084 (not c!1388923)) b!7516880))

(assert (= (and b!7516880 c!1388925) b!7516881))

(assert (= (and b!7516880 (not c!1388925)) b!7516867))

(assert (= (and b!7516867 c!1388924) b!7516879))

(assert (= (and b!7516867 (not c!1388924)) b!7516873))

(assert (= (and b!7516873 c!1388928) b!7516877))

(assert (= (and b!7516873 (not c!1388928)) b!7516871))

(assert (= (and b!7516871 c!1388929) b!7516869))

(assert (= (and b!7516871 (not c!1388929)) b!7516875))

(assert (= (and b!7516869 c!1388927) b!7516868))

(assert (= (and b!7516869 (not c!1388927)) b!7516870))

(assert (= (and b!7516875 c!1388922) b!7516876))

(assert (= (and b!7516875 (not c!1388922)) b!7516882))

(assert (= (and b!7516876 c!1388926) b!7516878))

(assert (= (and b!7516876 (not c!1388926)) b!7516872))

(assert (= (or b!7516870 b!7516875) bm!689387))

(assert (= (or b!7516869 b!7516876) bm!689386))

(declare-fun m!8098364 () Bool)

(assert (=> bm!689386 m!8098364))

(declare-fun m!8098366 () Bool)

(assert (=> bm!689387 m!8098366))

(declare-fun m!8098368 () Bool)

(assert (=> b!7516878 m!8098368))

(assert (=> bm!689346 d!2308084))

(declare-fun d!2308086 () Bool)

(declare-fun nullableFct!3433 (Regex!19756) Bool)

(assert (=> d!2308086 (= (nullable!8596 (reg!20085 (h!78967 (exprs!9008 c!7091)))) (nullableFct!3433 (reg!20085 (h!78967 (exprs!9008 c!7091)))))))

(declare-fun bs!1939411 () Bool)

(assert (= bs!1939411 d!2308086))

(declare-fun m!8098370 () Bool)

(assert (=> bs!1939411 m!8098370))

(assert (=> b!7516442 d!2308086))

(declare-fun d!2308088 () Bool)

(declare-fun c!1388930 () Bool)

(assert (=> d!2308088 (= c!1388930 (is-Nil!72520 (t!387281 lt!2638233)))))

(declare-fun e!4481460 () (Set C!39838))

(assert (=> d!2308088 (= (content!15343 (t!387281 lt!2638233)) e!4481460)))

(declare-fun b!7516883 () Bool)

(assert (=> b!7516883 (= e!4481460 (as set.empty (Set C!39838)))))

(declare-fun b!7516884 () Bool)

(assert (=> b!7516884 (= e!4481460 (set.union (set.insert (h!78968 (t!387281 lt!2638233)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 lt!2638233)))))))

(assert (= (and d!2308088 c!1388930) b!7516883))

(assert (= (and d!2308088 (not c!1388930)) b!7516884))

(declare-fun m!8098372 () Bool)

(assert (=> b!7516884 m!8098372))

(declare-fun m!8098374 () Bool)

(assert (=> b!7516884 m!8098374))

(assert (=> b!7516528 d!2308088))

(declare-fun b!7516885 () Bool)

(declare-fun e!4481462 () List!72644)

(assert (=> b!7516885 (= e!4481462 (v!54387 lt!2638234))))

(declare-fun b!7516888 () Bool)

(declare-fun e!4481461 () Bool)

(declare-fun lt!2638319 () List!72644)

(assert (=> b!7516888 (= e!4481461 (or (not (= (v!54387 lt!2638234) Nil!72520)) (= lt!2638319 (t!387281 (v!54387 lt!2638236)))))))

(declare-fun b!7516887 () Bool)

(declare-fun res!3013839 () Bool)

(assert (=> b!7516887 (=> (not res!3013839) (not e!4481461))))

(assert (=> b!7516887 (= res!3013839 (= (size!42300 lt!2638319) (+ (size!42300 (t!387281 (v!54387 lt!2638236))) (size!42300 (v!54387 lt!2638234)))))))

(declare-fun b!7516886 () Bool)

(assert (=> b!7516886 (= e!4481462 (Cons!72520 (h!78968 (t!387281 (v!54387 lt!2638236))) (++!17359 (t!387281 (t!387281 (v!54387 lt!2638236))) (v!54387 lt!2638234))))))

(declare-fun d!2308090 () Bool)

(assert (=> d!2308090 e!4481461))

(declare-fun res!3013840 () Bool)

(assert (=> d!2308090 (=> (not res!3013840) (not e!4481461))))

(assert (=> d!2308090 (= res!3013840 (= (content!15343 lt!2638319) (set.union (content!15343 (t!387281 (v!54387 lt!2638236))) (content!15343 (v!54387 lt!2638234)))))))

(assert (=> d!2308090 (= lt!2638319 e!4481462)))

(declare-fun c!1388931 () Bool)

(assert (=> d!2308090 (= c!1388931 (is-Nil!72520 (t!387281 (v!54387 lt!2638236))))))

(assert (=> d!2308090 (= (++!17359 (t!387281 (v!54387 lt!2638236)) (v!54387 lt!2638234)) lt!2638319)))

(assert (= (and d!2308090 c!1388931) b!7516885))

(assert (= (and d!2308090 (not c!1388931)) b!7516886))

(assert (= (and d!2308090 res!3013840) b!7516887))

(assert (= (and b!7516887 res!3013839) b!7516888))

(declare-fun m!8098376 () Bool)

(assert (=> b!7516887 m!8098376))

(declare-fun m!8098378 () Bool)

(assert (=> b!7516887 m!8098378))

(assert (=> b!7516887 m!8098070))

(declare-fun m!8098380 () Bool)

(assert (=> b!7516886 m!8098380))

(declare-fun m!8098382 () Bool)

(assert (=> d!2308090 m!8098382))

(assert (=> d!2308090 m!8098290))

(assert (=> d!2308090 m!8098078))

(assert (=> b!7516472 d!2308090))

(declare-fun b!7516889 () Bool)

(declare-fun e!4481464 () List!72644)

(assert (=> b!7516889 (= e!4481464 (v!54387 lt!2638219))))

(declare-fun lt!2638320 () List!72644)

(declare-fun b!7516892 () Bool)

(declare-fun e!4481463 () Bool)

(assert (=> b!7516892 (= e!4481463 (or (not (= (v!54387 lt!2638219) Nil!72520)) (= lt!2638320 (t!387281 (t!387281 (v!54387 lt!2638221))))))))

(declare-fun b!7516891 () Bool)

(declare-fun res!3013841 () Bool)

(assert (=> b!7516891 (=> (not res!3013841) (not e!4481463))))

(assert (=> b!7516891 (= res!3013841 (= (size!42300 lt!2638320) (+ (size!42300 (t!387281 (t!387281 (v!54387 lt!2638221)))) (size!42300 (v!54387 lt!2638219)))))))

(declare-fun b!7516890 () Bool)

(assert (=> b!7516890 (= e!4481464 (Cons!72520 (h!78968 (t!387281 (t!387281 (v!54387 lt!2638221)))) (++!17359 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221)))) (v!54387 lt!2638219))))))

(declare-fun d!2308092 () Bool)

(assert (=> d!2308092 e!4481463))

(declare-fun res!3013842 () Bool)

(assert (=> d!2308092 (=> (not res!3013842) (not e!4481463))))

(assert (=> d!2308092 (= res!3013842 (= (content!15343 lt!2638320) (set.union (content!15343 (t!387281 (t!387281 (v!54387 lt!2638221)))) (content!15343 (v!54387 lt!2638219)))))))

(assert (=> d!2308092 (= lt!2638320 e!4481464)))

(declare-fun c!1388932 () Bool)

(assert (=> d!2308092 (= c!1388932 (is-Nil!72520 (t!387281 (t!387281 (v!54387 lt!2638221)))))))

(assert (=> d!2308092 (= (++!17359 (t!387281 (t!387281 (v!54387 lt!2638221))) (v!54387 lt!2638219)) lt!2638320)))

(assert (= (and d!2308092 c!1388932) b!7516889))

(assert (= (and d!2308092 (not c!1388932)) b!7516890))

(assert (= (and d!2308092 res!3013842) b!7516891))

(assert (= (and b!7516891 res!3013841) b!7516892))

(declare-fun m!8098384 () Bool)

(assert (=> b!7516891 m!8098384))

(assert (=> b!7516891 m!8098236))

(assert (=> b!7516891 m!8097960))

(declare-fun m!8098386 () Bool)

(assert (=> b!7516890 m!8098386))

(declare-fun m!8098388 () Bool)

(assert (=> d!2308092 m!8098388))

(assert (=> d!2308092 m!8098282))

(assert (=> d!2308092 m!8097968))

(assert (=> b!7516468 d!2308092))

(declare-fun b!7516893 () Bool)

(declare-fun c!1388935 () Bool)

(assert (=> b!7516893 (= c!1388935 (is-ElementMatch!19756 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481468 () Option!17253)

(declare-fun e!4481470 () Option!17253)

(assert (=> b!7516893 (= e!4481468 e!4481470)))

(declare-fun d!2308094 () Bool)

(declare-fun c!1388934 () Bool)

(assert (=> d!2308094 (= c!1388934 (is-EmptyExpr!19756 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481465 () Option!17253)

(assert (=> d!2308094 (= (getLanguageWitness!1096 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481465)))

(declare-fun b!7516894 () Bool)

(declare-fun e!4481471 () Option!17253)

(declare-fun lt!2638322 () Option!17253)

(assert (=> b!7516894 (= e!4481471 lt!2638322)))

(declare-fun b!7516895 () Bool)

(declare-fun e!4481466 () Option!17253)

(assert (=> b!7516895 (= e!4481466 e!4481471)))

(declare-fun call!689394 () Option!17253)

(assert (=> b!7516895 (= lt!2638322 call!689394)))

(declare-fun c!1388938 () Bool)

(assert (=> b!7516895 (= c!1388938 (is-Some!17252 lt!2638322))))

(declare-fun b!7516896 () Bool)

(declare-fun call!689393 () Option!17253)

(assert (=> b!7516896 (= e!4481471 call!689393)))

(declare-fun b!7516897 () Bool)

(declare-fun c!1388940 () Bool)

(assert (=> b!7516897 (= c!1388940 (is-Union!19756 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481469 () Option!17253)

(assert (=> b!7516897 (= e!4481469 e!4481466)))

(declare-fun b!7516898 () Bool)

(declare-fun e!4481467 () Option!17253)

(assert (=> b!7516898 (= e!4481467 None!17252)))

(declare-fun bm!689388 () Bool)

(assert (=> bm!689388 (= call!689394 (getLanguageWitness!1096 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516899 () Bool)

(assert (=> b!7516899 (= e!4481470 e!4481469)))

(declare-fun c!1388939 () Bool)

(assert (=> b!7516899 (= c!1388939 (is-Star!19756 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516900 () Bool)

(assert (=> b!7516900 (= e!4481465 (Some!17252 Nil!72520))))

(declare-fun b!7516901 () Bool)

(declare-fun e!4481472 () Option!17253)

(assert (=> b!7516901 (= e!4481466 e!4481472)))

(declare-fun lt!2638323 () Option!17253)

(assert (=> b!7516901 (= lt!2638323 call!689393)))

(declare-fun c!1388933 () Bool)

(assert (=> b!7516901 (= c!1388933 (is-Some!17252 lt!2638323))))

(declare-fun b!7516902 () Bool)

(declare-fun c!1388937 () Bool)

(declare-fun lt!2638321 () Option!17253)

(assert (=> b!7516902 (= c!1388937 (is-Some!17252 lt!2638321))))

(assert (=> b!7516902 (= lt!2638321 call!689394)))

(assert (=> b!7516902 (= e!4481472 e!4481467)))

(declare-fun bm!689389 () Bool)

(assert (=> bm!689389 (= call!689393 (getLanguageWitness!1096 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516903 () Bool)

(assert (=> b!7516903 (= e!4481469 (Some!17252 Nil!72520))))

(declare-fun b!7516904 () Bool)

(assert (=> b!7516904 (= e!4481467 (Some!17252 (++!17359 (v!54387 lt!2638323) (v!54387 lt!2638321))))))

(declare-fun b!7516905 () Bool)

(assert (=> b!7516905 (= e!4481470 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) Nil!72520)))))

(declare-fun b!7516906 () Bool)

(assert (=> b!7516906 (= e!4481465 e!4481468)))

(declare-fun c!1388936 () Bool)

(assert (=> b!7516906 (= c!1388936 (is-EmptyLang!19756 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516907 () Bool)

(assert (=> b!7516907 (= e!4481468 None!17252)))

(declare-fun b!7516908 () Bool)

(assert (=> b!7516908 (= e!4481472 None!17252)))

(assert (= (and d!2308094 c!1388934) b!7516900))

(assert (= (and d!2308094 (not c!1388934)) b!7516906))

(assert (= (and b!7516906 c!1388936) b!7516907))

(assert (= (and b!7516906 (not c!1388936)) b!7516893))

(assert (= (and b!7516893 c!1388935) b!7516905))

(assert (= (and b!7516893 (not c!1388935)) b!7516899))

(assert (= (and b!7516899 c!1388939) b!7516903))

(assert (= (and b!7516899 (not c!1388939)) b!7516897))

(assert (= (and b!7516897 c!1388940) b!7516895))

(assert (= (and b!7516897 (not c!1388940)) b!7516901))

(assert (= (and b!7516895 c!1388938) b!7516894))

(assert (= (and b!7516895 (not c!1388938)) b!7516896))

(assert (= (and b!7516901 c!1388933) b!7516902))

(assert (= (and b!7516901 (not c!1388933)) b!7516908))

(assert (= (and b!7516902 c!1388937) b!7516904))

(assert (= (and b!7516902 (not c!1388937)) b!7516898))

(assert (= (or b!7516896 b!7516901) bm!689389))

(assert (= (or b!7516895 b!7516902) bm!689388))

(declare-fun m!8098390 () Bool)

(assert (=> bm!689388 m!8098390))

(declare-fun m!8098392 () Bool)

(assert (=> bm!689389 m!8098392))

(declare-fun m!8098394 () Bool)

(assert (=> b!7516904 m!8098394))

(assert (=> bm!689343 d!2308094))

(declare-fun d!2308096 () Bool)

(declare-fun lt!2638324 () Int)

(assert (=> d!2308096 (>= lt!2638324 0)))

(declare-fun e!4481473 () Int)

(assert (=> d!2308096 (= lt!2638324 e!4481473)))

(declare-fun c!1388941 () Bool)

(assert (=> d!2308096 (= c!1388941 (is-Nil!72520 lt!2638256))))

(assert (=> d!2308096 (= (size!42300 lt!2638256) lt!2638324)))

(declare-fun b!7516909 () Bool)

(assert (=> b!7516909 (= e!4481473 0)))

(declare-fun b!7516910 () Bool)

(assert (=> b!7516910 (= e!4481473 (+ 1 (size!42300 (t!387281 lt!2638256))))))

(assert (= (and d!2308096 c!1388941) b!7516909))

(assert (= (and d!2308096 (not c!1388941)) b!7516910))

(declare-fun m!8098396 () Bool)

(assert (=> b!7516910 m!8098396))

(assert (=> b!7516473 d!2308096))

(declare-fun d!2308098 () Bool)

(declare-fun lt!2638325 () Int)

(assert (=> d!2308098 (>= lt!2638325 0)))

(declare-fun e!4481474 () Int)

(assert (=> d!2308098 (= lt!2638325 e!4481474)))

(declare-fun c!1388942 () Bool)

(assert (=> d!2308098 (= c!1388942 (is-Nil!72520 (v!54387 lt!2638236)))))

(assert (=> d!2308098 (= (size!42300 (v!54387 lt!2638236)) lt!2638325)))

(declare-fun b!7516911 () Bool)

(assert (=> b!7516911 (= e!4481474 0)))

(declare-fun b!7516912 () Bool)

(assert (=> b!7516912 (= e!4481474 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638236)))))))

(assert (= (and d!2308098 c!1388942) b!7516911))

(assert (= (and d!2308098 (not c!1388942)) b!7516912))

(assert (=> b!7516912 m!8098378))

(assert (=> b!7516473 d!2308098))

(declare-fun d!2308100 () Bool)

(declare-fun lt!2638326 () Int)

(assert (=> d!2308100 (>= lt!2638326 0)))

(declare-fun e!4481475 () Int)

(assert (=> d!2308100 (= lt!2638326 e!4481475)))

(declare-fun c!1388943 () Bool)

(assert (=> d!2308100 (= c!1388943 (is-Nil!72520 (v!54387 lt!2638234)))))

(assert (=> d!2308100 (= (size!42300 (v!54387 lt!2638234)) lt!2638326)))

(declare-fun b!7516913 () Bool)

(assert (=> b!7516913 (= e!4481475 0)))

(declare-fun b!7516914 () Bool)

(assert (=> b!7516914 (= e!4481475 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638234)))))))

(assert (= (and d!2308100 c!1388943) b!7516913))

(assert (= (and d!2308100 (not c!1388943)) b!7516914))

(declare-fun m!8098398 () Bool)

(assert (=> b!7516914 m!8098398))

(assert (=> b!7516473 d!2308100))

(declare-fun d!2308102 () Bool)

(declare-fun c!1388944 () Bool)

(assert (=> d!2308102 (= c!1388944 (is-Nil!72520 lt!2638268))))

(declare-fun e!4481476 () (Set C!39838))

(assert (=> d!2308102 (= (content!15343 lt!2638268) e!4481476)))

(declare-fun b!7516915 () Bool)

(assert (=> b!7516915 (= e!4481476 (as set.empty (Set C!39838)))))

(declare-fun b!7516916 () Bool)

(assert (=> b!7516916 (= e!4481476 (set.union (set.insert (h!78968 lt!2638268) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638268))))))

(assert (= (and d!2308102 c!1388944) b!7516915))

(assert (= (and d!2308102 (not c!1388944)) b!7516916))

(declare-fun m!8098400 () Bool)

(assert (=> b!7516916 m!8098400))

(declare-fun m!8098402 () Bool)

(assert (=> b!7516916 m!8098402))

(assert (=> d!2307982 d!2308102))

(declare-fun d!2308104 () Bool)

(declare-fun c!1388945 () Bool)

(assert (=> d!2308104 (= c!1388945 (is-Nil!72520 (v!54387 lt!2638239)))))

(declare-fun e!4481477 () (Set C!39838))

(assert (=> d!2308104 (= (content!15343 (v!54387 lt!2638239)) e!4481477)))

(declare-fun b!7516917 () Bool)

(assert (=> b!7516917 (= e!4481477 (as set.empty (Set C!39838)))))

(declare-fun b!7516918 () Bool)

(assert (=> b!7516918 (= e!4481477 (set.union (set.insert (h!78968 (v!54387 lt!2638239)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638239)))))))

(assert (= (and d!2308104 c!1388945) b!7516917))

(assert (= (and d!2308104 (not c!1388945)) b!7516918))

(declare-fun m!8098404 () Bool)

(assert (=> b!7516918 m!8098404))

(assert (=> b!7516918 m!8098362))

(assert (=> d!2307982 d!2308104))

(declare-fun d!2308106 () Bool)

(declare-fun c!1388946 () Bool)

(assert (=> d!2308106 (= c!1388946 (is-Nil!72520 (v!54387 lt!2638237)))))

(declare-fun e!4481478 () (Set C!39838))

(assert (=> d!2308106 (= (content!15343 (v!54387 lt!2638237)) e!4481478)))

(declare-fun b!7516919 () Bool)

(assert (=> b!7516919 (= e!4481478 (as set.empty (Set C!39838)))))

(declare-fun b!7516920 () Bool)

(assert (=> b!7516920 (= e!4481478 (set.union (set.insert (h!78968 (v!54387 lt!2638237)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638237)))))))

(assert (= (and d!2308106 c!1388946) b!7516919))

(assert (= (and d!2308106 (not c!1388946)) b!7516920))

(declare-fun m!8098406 () Bool)

(assert (=> b!7516920 m!8098406))

(declare-fun m!8098408 () Bool)

(assert (=> b!7516920 m!8098408))

(assert (=> d!2307982 d!2308106))

(declare-fun d!2308108 () Bool)

(declare-fun res!3013843 () Bool)

(declare-fun e!4481479 () Bool)

(assert (=> d!2308108 (=> res!3013843 e!4481479)))

(assert (=> d!2308108 (= res!3013843 (is-Nil!72519 (t!387280 (t!387280 (exprs!9008 c!7091)))))))

(assert (=> d!2308108 (= (forall!18381 (t!387280 (t!387280 (exprs!9008 c!7091))) lambda!466260) e!4481479)))

(declare-fun b!7516921 () Bool)

(declare-fun e!4481480 () Bool)

(assert (=> b!7516921 (= e!4481479 e!4481480)))

(declare-fun res!3013844 () Bool)

(assert (=> b!7516921 (=> (not res!3013844) (not e!4481480))))

(assert (=> b!7516921 (= res!3013844 (dynLambda!29850 lambda!466260 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(declare-fun b!7516922 () Bool)

(assert (=> b!7516922 (= e!4481480 (forall!18381 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))) lambda!466260))))

(assert (= (and d!2308108 (not res!3013843)) b!7516921))

(assert (= (and b!7516921 res!3013844) b!7516922))

(declare-fun b_lambda!288383 () Bool)

(assert (=> (not b_lambda!288383) (not b!7516921)))

(declare-fun m!8098410 () Bool)

(assert (=> b!7516921 m!8098410))

(declare-fun m!8098412 () Bool)

(assert (=> b!7516922 m!8098412))

(assert (=> b!7516450 d!2308108))

(declare-fun d!2308110 () Bool)

(declare-fun lt!2638327 () Int)

(assert (=> d!2308110 (>= lt!2638327 0)))

(declare-fun e!4481481 () Int)

(assert (=> d!2308110 (= lt!2638327 e!4481481)))

(declare-fun c!1388947 () Bool)

(assert (=> d!2308110 (= c!1388947 (is-Nil!72520 lt!2638255))))

(assert (=> d!2308110 (= (size!42300 lt!2638255) lt!2638327)))

(declare-fun b!7516923 () Bool)

(assert (=> b!7516923 (= e!4481481 0)))

(declare-fun b!7516924 () Bool)

(assert (=> b!7516924 (= e!4481481 (+ 1 (size!42300 (t!387281 lt!2638255))))))

(assert (= (and d!2308110 c!1388947) b!7516923))

(assert (= (and d!2308110 (not c!1388947)) b!7516924))

(declare-fun m!8098414 () Bool)

(assert (=> b!7516924 m!8098414))

(assert (=> b!7516469 d!2308110))

(assert (=> b!7516469 d!2308038))

(assert (=> b!7516469 d!2307974))

(declare-fun b!7516925 () Bool)

(declare-fun e!4481483 () List!72644)

(assert (=> b!7516925 (= e!4481483 (v!54387 lt!2638252))))

(declare-fun e!4481482 () Bool)

(declare-fun lt!2638328 () List!72644)

(declare-fun b!7516928 () Bool)

(assert (=> b!7516928 (= e!4481482 (or (not (= (v!54387 lt!2638252) Nil!72520)) (= lt!2638328 (v!54387 lt!2638254))))))

(declare-fun b!7516927 () Bool)

(declare-fun res!3013845 () Bool)

(assert (=> b!7516927 (=> (not res!3013845) (not e!4481482))))

(assert (=> b!7516927 (= res!3013845 (= (size!42300 lt!2638328) (+ (size!42300 (v!54387 lt!2638254)) (size!42300 (v!54387 lt!2638252)))))))

(declare-fun b!7516926 () Bool)

(assert (=> b!7516926 (= e!4481483 (Cons!72520 (h!78968 (v!54387 lt!2638254)) (++!17359 (t!387281 (v!54387 lt!2638254)) (v!54387 lt!2638252))))))

(declare-fun d!2308112 () Bool)

(assert (=> d!2308112 e!4481482))

(declare-fun res!3013846 () Bool)

(assert (=> d!2308112 (=> (not res!3013846) (not e!4481482))))

(assert (=> d!2308112 (= res!3013846 (= (content!15343 lt!2638328) (set.union (content!15343 (v!54387 lt!2638254)) (content!15343 (v!54387 lt!2638252)))))))

(assert (=> d!2308112 (= lt!2638328 e!4481483)))

(declare-fun c!1388948 () Bool)

(assert (=> d!2308112 (= c!1388948 (is-Nil!72520 (v!54387 lt!2638254)))))

(assert (=> d!2308112 (= (++!17359 (v!54387 lt!2638254) (v!54387 lt!2638252)) lt!2638328)))

(assert (= (and d!2308112 c!1388948) b!7516925))

(assert (= (and d!2308112 (not c!1388948)) b!7516926))

(assert (= (and d!2308112 res!3013846) b!7516927))

(assert (= (and b!7516927 res!3013845) b!7516928))

(declare-fun m!8098416 () Bool)

(assert (=> b!7516927 m!8098416))

(declare-fun m!8098418 () Bool)

(assert (=> b!7516927 m!8098418))

(declare-fun m!8098420 () Bool)

(assert (=> b!7516927 m!8098420))

(declare-fun m!8098422 () Bool)

(assert (=> b!7516926 m!8098422))

(declare-fun m!8098424 () Bool)

(assert (=> d!2308112 m!8098424))

(declare-fun m!8098426 () Bool)

(assert (=> d!2308112 m!8098426))

(declare-fun m!8098428 () Bool)

(assert (=> d!2308112 m!8098428))

(assert (=> b!7516462 d!2308112))

(declare-fun d!2308114 () Bool)

(declare-fun res!3013847 () Bool)

(declare-fun e!4481484 () Bool)

(assert (=> d!2308114 (=> res!3013847 e!4481484)))

(assert (=> d!2308114 (= res!3013847 (is-Nil!72519 (t!387280 (t!387280 (exprs!9008 c!7091)))))))

(assert (=> d!2308114 (= (forall!18381 (t!387280 (t!387280 (exprs!9008 c!7091))) lambda!466264) e!4481484)))

(declare-fun b!7516929 () Bool)

(declare-fun e!4481485 () Bool)

(assert (=> b!7516929 (= e!4481484 e!4481485)))

(declare-fun res!3013848 () Bool)

(assert (=> b!7516929 (=> (not res!3013848) (not e!4481485))))

(assert (=> b!7516929 (= res!3013848 (dynLambda!29850 lambda!466264 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(declare-fun b!7516930 () Bool)

(assert (=> b!7516930 (= e!4481485 (forall!18381 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))) lambda!466264))))

(assert (= (and d!2308114 (not res!3013847)) b!7516929))

(assert (= (and b!7516929 res!3013848) b!7516930))

(declare-fun b_lambda!288385 () Bool)

(assert (=> (not b_lambda!288385) (not b!7516929)))

(declare-fun m!8098430 () Bool)

(assert (=> b!7516929 m!8098430))

(declare-fun m!8098432 () Bool)

(assert (=> b!7516930 m!8098432))

(assert (=> b!7516476 d!2308114))

(declare-fun b!7516931 () Bool)

(declare-fun e!4481487 () Bool)

(declare-fun call!689396 () Bool)

(assert (=> b!7516931 (= e!4481487 call!689396)))

(declare-fun b!7516932 () Bool)

(declare-fun res!3013850 () Bool)

(declare-fun e!4481491 () Bool)

(assert (=> b!7516932 (=> (not res!3013850) (not e!4481491))))

(declare-fun call!689397 () Bool)

(assert (=> b!7516932 (= res!3013850 call!689397)))

(declare-fun e!4481490 () Bool)

(assert (=> b!7516932 (= e!4481490 e!4481491)))

(declare-fun c!1388949 () Bool)

(declare-fun bm!689390 () Bool)

(declare-fun call!689395 () Bool)

(assert (=> bm!689390 (= call!689395 (validRegex!10192 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(declare-fun b!7516933 () Bool)

(declare-fun e!4481488 () Bool)

(assert (=> b!7516933 (= e!4481488 e!4481487)))

(declare-fun res!3013849 () Bool)

(assert (=> b!7516933 (= res!3013849 (not (nullable!8596 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(assert (=> b!7516933 (=> (not res!3013849) (not e!4481487))))

(declare-fun bm!689391 () Bool)

(assert (=> bm!689391 (= call!689397 call!689396)))

(declare-fun c!1388950 () Bool)

(declare-fun bm!689392 () Bool)

(assert (=> bm!689392 (= call!689396 (validRegex!10192 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516934 () Bool)

(assert (=> b!7516934 (= e!4481491 call!689395)))

(declare-fun d!2308116 () Bool)

(declare-fun res!3013853 () Bool)

(declare-fun e!4481492 () Bool)

(assert (=> d!2308116 (=> res!3013853 e!4481492)))

(assert (=> d!2308116 (= res!3013853 (is-ElementMatch!19756 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))

(assert (=> d!2308116 (= (validRegex!10192 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) e!4481492)))

(declare-fun b!7516935 () Bool)

(assert (=> b!7516935 (= e!4481488 e!4481490)))

(assert (=> b!7516935 (= c!1388949 (is-Union!19756 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))

(declare-fun b!7516936 () Bool)

(declare-fun e!4481486 () Bool)

(assert (=> b!7516936 (= e!4481486 call!689395)))

(declare-fun b!7516937 () Bool)

(declare-fun e!4481489 () Bool)

(assert (=> b!7516937 (= e!4481489 e!4481486)))

(declare-fun res!3013851 () Bool)

(assert (=> b!7516937 (=> (not res!3013851) (not e!4481486))))

(assert (=> b!7516937 (= res!3013851 call!689397)))

(declare-fun b!7516938 () Bool)

(declare-fun res!3013852 () Bool)

(assert (=> b!7516938 (=> res!3013852 e!4481489)))

(assert (=> b!7516938 (= res!3013852 (not (is-Concat!28601 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(assert (=> b!7516938 (= e!4481490 e!4481489)))

(declare-fun b!7516939 () Bool)

(assert (=> b!7516939 (= e!4481492 e!4481488)))

(assert (=> b!7516939 (= c!1388950 (is-Star!19756 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))

(assert (= (and d!2308116 (not res!3013853)) b!7516939))

(assert (= (and b!7516939 c!1388950) b!7516933))

(assert (= (and b!7516939 (not c!1388950)) b!7516935))

(assert (= (and b!7516933 res!3013849) b!7516931))

(assert (= (and b!7516935 c!1388949) b!7516932))

(assert (= (and b!7516935 (not c!1388949)) b!7516938))

(assert (= (and b!7516932 res!3013850) b!7516934))

(assert (= (and b!7516938 (not res!3013852)) b!7516937))

(assert (= (and b!7516937 res!3013851) b!7516936))

(assert (= (or b!7516932 b!7516937) bm!689391))

(assert (= (or b!7516934 b!7516936) bm!689390))

(assert (= (or b!7516931 bm!689391) bm!689392))

(declare-fun m!8098434 () Bool)

(assert (=> bm!689390 m!8098434))

(declare-fun m!8098436 () Bool)

(assert (=> b!7516933 m!8098436))

(declare-fun m!8098438 () Bool)

(assert (=> bm!689392 m!8098438))

(assert (=> bm!689340 d!2308116))

(declare-fun d!2308118 () Bool)

(declare-fun lt!2638329 () Int)

(assert (=> d!2308118 (>= lt!2638329 0)))

(declare-fun e!4481493 () Int)

(assert (=> d!2308118 (= lt!2638329 e!4481493)))

(declare-fun c!1388951 () Bool)

(assert (=> d!2308118 (= c!1388951 (is-Nil!72520 (t!387281 (v!54387 lt!2638219))))))

(assert (=> d!2308118 (= (size!42300 (t!387281 (v!54387 lt!2638219))) lt!2638329)))

(declare-fun b!7516940 () Bool)

(assert (=> b!7516940 (= e!4481493 0)))

(declare-fun b!7516941 () Bool)

(assert (=> b!7516941 (= e!4481493 (+ 1 (size!42300 (t!387281 (t!387281 (v!54387 lt!2638219))))))))

(assert (= (and d!2308118 c!1388951) b!7516940))

(assert (= (and d!2308118 (not c!1388951)) b!7516941))

(declare-fun m!8098440 () Bool)

(assert (=> b!7516941 m!8098440))

(assert (=> b!7516486 d!2308118))

(declare-fun c!1388954 () Bool)

(declare-fun b!7516942 () Bool)

(assert (=> b!7516942 (= c!1388954 (is-ElementMatch!19756 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481497 () Option!17253)

(declare-fun e!4481499 () Option!17253)

(assert (=> b!7516942 (= e!4481497 e!4481499)))

(declare-fun d!2308120 () Bool)

(declare-fun c!1388953 () Bool)

(assert (=> d!2308120 (= c!1388953 (is-EmptyExpr!19756 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481494 () Option!17253)

(assert (=> d!2308120 (= (getLanguageWitness!1096 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481494)))

(declare-fun b!7516943 () Bool)

(declare-fun e!4481500 () Option!17253)

(declare-fun lt!2638331 () Option!17253)

(assert (=> b!7516943 (= e!4481500 lt!2638331)))

(declare-fun b!7516944 () Bool)

(declare-fun e!4481495 () Option!17253)

(assert (=> b!7516944 (= e!4481495 e!4481500)))

(declare-fun call!689399 () Option!17253)

(assert (=> b!7516944 (= lt!2638331 call!689399)))

(declare-fun c!1388957 () Bool)

(assert (=> b!7516944 (= c!1388957 (is-Some!17252 lt!2638331))))

(declare-fun b!7516945 () Bool)

(declare-fun call!689398 () Option!17253)

(assert (=> b!7516945 (= e!4481500 call!689398)))

(declare-fun b!7516946 () Bool)

(declare-fun c!1388959 () Bool)

(assert (=> b!7516946 (= c!1388959 (is-Union!19756 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun e!4481498 () Option!17253)

(assert (=> b!7516946 (= e!4481498 e!4481495)))

(declare-fun b!7516947 () Bool)

(declare-fun e!4481496 () Option!17253)

(assert (=> b!7516947 (= e!4481496 None!17252)))

(declare-fun bm!689393 () Bool)

(assert (=> bm!689393 (= call!689399 (getLanguageWitness!1096 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516948 () Bool)

(assert (=> b!7516948 (= e!4481499 e!4481498)))

(declare-fun c!1388958 () Bool)

(assert (=> b!7516948 (= c!1388958 (is-Star!19756 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516949 () Bool)

(assert (=> b!7516949 (= e!4481494 (Some!17252 Nil!72520))))

(declare-fun b!7516950 () Bool)

(declare-fun e!4481501 () Option!17253)

(assert (=> b!7516950 (= e!4481495 e!4481501)))

(declare-fun lt!2638332 () Option!17253)

(assert (=> b!7516950 (= lt!2638332 call!689398)))

(declare-fun c!1388952 () Bool)

(assert (=> b!7516950 (= c!1388952 (is-Some!17252 lt!2638332))))

(declare-fun b!7516951 () Bool)

(declare-fun c!1388956 () Bool)

(declare-fun lt!2638330 () Option!17253)

(assert (=> b!7516951 (= c!1388956 (is-Some!17252 lt!2638330))))

(assert (=> b!7516951 (= lt!2638330 call!689399)))

(assert (=> b!7516951 (= e!4481501 e!4481496)))

(declare-fun bm!689394 () Bool)

(assert (=> bm!689394 (= call!689398 (getLanguageWitness!1096 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7516952 () Bool)

(assert (=> b!7516952 (= e!4481498 (Some!17252 Nil!72520))))

(declare-fun b!7516953 () Bool)

(assert (=> b!7516953 (= e!4481496 (Some!17252 (++!17359 (v!54387 lt!2638332) (v!54387 lt!2638330))))))

(declare-fun b!7516954 () Bool)

(assert (=> b!7516954 (= e!4481499 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) Nil!72520)))))

(declare-fun b!7516955 () Bool)

(assert (=> b!7516955 (= e!4481494 e!4481497)))

(declare-fun c!1388955 () Bool)

(assert (=> b!7516955 (= c!1388955 (is-EmptyLang!19756 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7516956 () Bool)

(assert (=> b!7516956 (= e!4481497 None!17252)))

(declare-fun b!7516957 () Bool)

(assert (=> b!7516957 (= e!4481501 None!17252)))

(assert (= (and d!2308120 c!1388953) b!7516949))

(assert (= (and d!2308120 (not c!1388953)) b!7516955))

(assert (= (and b!7516955 c!1388955) b!7516956))

(assert (= (and b!7516955 (not c!1388955)) b!7516942))

(assert (= (and b!7516942 c!1388954) b!7516954))

(assert (= (and b!7516942 (not c!1388954)) b!7516948))

(assert (= (and b!7516948 c!1388958) b!7516952))

(assert (= (and b!7516948 (not c!1388958)) b!7516946))

(assert (= (and b!7516946 c!1388959) b!7516944))

(assert (= (and b!7516946 (not c!1388959)) b!7516950))

(assert (= (and b!7516944 c!1388957) b!7516943))

(assert (= (and b!7516944 (not c!1388957)) b!7516945))

(assert (= (and b!7516950 c!1388952) b!7516951))

(assert (= (and b!7516950 (not c!1388952)) b!7516957))

(assert (= (and b!7516951 c!1388956) b!7516953))

(assert (= (and b!7516951 (not c!1388956)) b!7516947))

(assert (= (or b!7516945 b!7516950) bm!689394))

(assert (= (or b!7516944 b!7516951) bm!689393))

(declare-fun m!8098442 () Bool)

(assert (=> bm!689393 m!8098442))

(declare-fun m!8098444 () Bool)

(assert (=> bm!689394 m!8098444))

(declare-fun m!8098446 () Bool)

(assert (=> b!7516953 m!8098446))

(assert (=> bm!689345 d!2308120))

(declare-fun b!7516961 () Bool)

(declare-fun e!4481502 () Bool)

(declare-fun tp!2182207 () Bool)

(declare-fun tp!2182210 () Bool)

(assert (=> b!7516961 (= e!4481502 (and tp!2182207 tp!2182210))))

(declare-fun b!7516958 () Bool)

(assert (=> b!7516958 (= e!4481502 tp_is_empty!49843)))

(declare-fun b!7516960 () Bool)

(declare-fun tp!2182209 () Bool)

(assert (=> b!7516960 (= e!4481502 tp!2182209)))

(declare-fun b!7516959 () Bool)

(declare-fun tp!2182211 () Bool)

(declare-fun tp!2182208 () Bool)

(assert (=> b!7516959 (= e!4481502 (and tp!2182211 tp!2182208))))

(assert (=> b!7516555 (= tp!2182174 e!4481502)))

(assert (= (and b!7516555 (is-ElementMatch!19756 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7516958))

(assert (= (and b!7516555 (is-Concat!28601 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7516959))

(assert (= (and b!7516555 (is-Star!19756 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7516960))

(assert (= (and b!7516555 (is-Union!19756 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7516961))

(declare-fun b!7516965 () Bool)

(declare-fun e!4481503 () Bool)

(declare-fun tp!2182212 () Bool)

(declare-fun tp!2182215 () Bool)

(assert (=> b!7516965 (= e!4481503 (and tp!2182212 tp!2182215))))

(declare-fun b!7516962 () Bool)

(assert (=> b!7516962 (= e!4481503 tp_is_empty!49843)))

(declare-fun b!7516964 () Bool)

(declare-fun tp!2182214 () Bool)

(assert (=> b!7516964 (= e!4481503 tp!2182214)))

(declare-fun b!7516963 () Bool)

(declare-fun tp!2182216 () Bool)

(declare-fun tp!2182213 () Bool)

(assert (=> b!7516963 (= e!4481503 (and tp!2182216 tp!2182213))))

(assert (=> b!7516555 (= tp!2182171 e!4481503)))

(assert (= (and b!7516555 (is-ElementMatch!19756 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7516962))

(assert (= (and b!7516555 (is-Concat!28601 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7516963))

(assert (= (and b!7516555 (is-Star!19756 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7516964))

(assert (= (and b!7516555 (is-Union!19756 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7516965))

(declare-fun b!7516969 () Bool)

(declare-fun e!4481504 () Bool)

(declare-fun tp!2182217 () Bool)

(declare-fun tp!2182220 () Bool)

(assert (=> b!7516969 (= e!4481504 (and tp!2182217 tp!2182220))))

(declare-fun b!7516966 () Bool)

(assert (=> b!7516966 (= e!4481504 tp_is_empty!49843)))

(declare-fun b!7516968 () Bool)

(declare-fun tp!2182219 () Bool)

(assert (=> b!7516968 (= e!4481504 tp!2182219)))

(declare-fun b!7516967 () Bool)

(declare-fun tp!2182221 () Bool)

(declare-fun tp!2182218 () Bool)

(assert (=> b!7516967 (= e!4481504 (and tp!2182221 tp!2182218))))

(assert (=> b!7516535 (= tp!2182145 e!4481504)))

(assert (= (and b!7516535 (is-ElementMatch!19756 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516966))

(assert (= (and b!7516535 (is-Concat!28601 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516967))

(assert (= (and b!7516535 (is-Star!19756 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516968))

(assert (= (and b!7516535 (is-Union!19756 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516969))

(declare-fun b!7516973 () Bool)

(declare-fun e!4481505 () Bool)

(declare-fun tp!2182222 () Bool)

(declare-fun tp!2182225 () Bool)

(assert (=> b!7516973 (= e!4481505 (and tp!2182222 tp!2182225))))

(declare-fun b!7516970 () Bool)

(assert (=> b!7516970 (= e!4481505 tp_is_empty!49843)))

(declare-fun b!7516972 () Bool)

(declare-fun tp!2182224 () Bool)

(assert (=> b!7516972 (= e!4481505 tp!2182224)))

(declare-fun b!7516971 () Bool)

(declare-fun tp!2182226 () Bool)

(declare-fun tp!2182223 () Bool)

(assert (=> b!7516971 (= e!4481505 (and tp!2182226 tp!2182223))))

(assert (=> b!7516534 (= tp!2182147 e!4481505)))

(assert (= (and b!7516534 (is-ElementMatch!19756 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516970))

(assert (= (and b!7516534 (is-Concat!28601 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516971))

(assert (= (and b!7516534 (is-Star!19756 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516972))

(assert (= (and b!7516534 (is-Union!19756 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516973))

(declare-fun b!7516977 () Bool)

(declare-fun e!4481506 () Bool)

(declare-fun tp!2182227 () Bool)

(declare-fun tp!2182230 () Bool)

(assert (=> b!7516977 (= e!4481506 (and tp!2182227 tp!2182230))))

(declare-fun b!7516974 () Bool)

(assert (=> b!7516974 (= e!4481506 tp_is_empty!49843)))

(declare-fun b!7516976 () Bool)

(declare-fun tp!2182229 () Bool)

(assert (=> b!7516976 (= e!4481506 tp!2182229)))

(declare-fun b!7516975 () Bool)

(declare-fun tp!2182231 () Bool)

(declare-fun tp!2182228 () Bool)

(assert (=> b!7516975 (= e!4481506 (and tp!2182231 tp!2182228))))

(assert (=> b!7516534 (= tp!2182144 e!4481506)))

(assert (= (and b!7516534 (is-ElementMatch!19756 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516974))

(assert (= (and b!7516534 (is-Concat!28601 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516975))

(assert (= (and b!7516534 (is-Star!19756 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516976))

(assert (= (and b!7516534 (is-Union!19756 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516977))

(declare-fun b!7516981 () Bool)

(declare-fun e!4481507 () Bool)

(declare-fun tp!2182232 () Bool)

(declare-fun tp!2182235 () Bool)

(assert (=> b!7516981 (= e!4481507 (and tp!2182232 tp!2182235))))

(declare-fun b!7516978 () Bool)

(assert (=> b!7516978 (= e!4481507 tp_is_empty!49843)))

(declare-fun b!7516980 () Bool)

(declare-fun tp!2182234 () Bool)

(assert (=> b!7516980 (= e!4481507 tp!2182234)))

(declare-fun b!7516979 () Bool)

(declare-fun tp!2182236 () Bool)

(declare-fun tp!2182233 () Bool)

(assert (=> b!7516979 (= e!4481507 (and tp!2182236 tp!2182233))))

(assert (=> b!7516547 (= tp!2182164 e!4481507)))

(assert (= (and b!7516547 (is-ElementMatch!19756 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516978))

(assert (= (and b!7516547 (is-Concat!28601 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516979))

(assert (= (and b!7516547 (is-Star!19756 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516980))

(assert (= (and b!7516547 (is-Union!19756 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516981))

(declare-fun b!7516985 () Bool)

(declare-fun e!4481508 () Bool)

(declare-fun tp!2182237 () Bool)

(declare-fun tp!2182240 () Bool)

(assert (=> b!7516985 (= e!4481508 (and tp!2182237 tp!2182240))))

(declare-fun b!7516982 () Bool)

(assert (=> b!7516982 (= e!4481508 tp_is_empty!49843)))

(declare-fun b!7516984 () Bool)

(declare-fun tp!2182239 () Bool)

(assert (=> b!7516984 (= e!4481508 tp!2182239)))

(declare-fun b!7516983 () Bool)

(declare-fun tp!2182241 () Bool)

(declare-fun tp!2182238 () Bool)

(assert (=> b!7516983 (= e!4481508 (and tp!2182241 tp!2182238))))

(assert (=> b!7516547 (= tp!2182161 e!4481508)))

(assert (= (and b!7516547 (is-ElementMatch!19756 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516982))

(assert (= (and b!7516547 (is-Concat!28601 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516983))

(assert (= (and b!7516547 (is-Star!19756 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516984))

(assert (= (and b!7516547 (is-Union!19756 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516985))

(declare-fun b!7516989 () Bool)

(declare-fun e!4481509 () Bool)

(declare-fun tp!2182242 () Bool)

(declare-fun tp!2182245 () Bool)

(assert (=> b!7516989 (= e!4481509 (and tp!2182242 tp!2182245))))

(declare-fun b!7516986 () Bool)

(assert (=> b!7516986 (= e!4481509 tp_is_empty!49843)))

(declare-fun b!7516988 () Bool)

(declare-fun tp!2182244 () Bool)

(assert (=> b!7516988 (= e!4481509 tp!2182244)))

(declare-fun b!7516987 () Bool)

(declare-fun tp!2182246 () Bool)

(declare-fun tp!2182243 () Bool)

(assert (=> b!7516987 (= e!4481509 (and tp!2182246 tp!2182243))))

(assert (=> b!7516536 (= tp!2182143 e!4481509)))

(assert (= (and b!7516536 (is-ElementMatch!19756 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516986))

(assert (= (and b!7516536 (is-Concat!28601 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516987))

(assert (= (and b!7516536 (is-Star!19756 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516988))

(assert (= (and b!7516536 (is-Union!19756 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516989))

(declare-fun b!7516993 () Bool)

(declare-fun e!4481510 () Bool)

(declare-fun tp!2182247 () Bool)

(declare-fun tp!2182250 () Bool)

(assert (=> b!7516993 (= e!4481510 (and tp!2182247 tp!2182250))))

(declare-fun b!7516990 () Bool)

(assert (=> b!7516990 (= e!4481510 tp_is_empty!49843)))

(declare-fun b!7516992 () Bool)

(declare-fun tp!2182249 () Bool)

(assert (=> b!7516992 (= e!4481510 tp!2182249)))

(declare-fun b!7516991 () Bool)

(declare-fun tp!2182251 () Bool)

(declare-fun tp!2182248 () Bool)

(assert (=> b!7516991 (= e!4481510 (and tp!2182251 tp!2182248))))

(assert (=> b!7516536 (= tp!2182146 e!4481510)))

(assert (= (and b!7516536 (is-ElementMatch!19756 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516990))

(assert (= (and b!7516536 (is-Concat!28601 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516991))

(assert (= (and b!7516536 (is-Star!19756 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516992))

(assert (= (and b!7516536 (is-Union!19756 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))))) b!7516993))

(declare-fun b!7516997 () Bool)

(declare-fun e!4481511 () Bool)

(declare-fun tp!2182252 () Bool)

(declare-fun tp!2182255 () Bool)

(assert (=> b!7516997 (= e!4481511 (and tp!2182252 tp!2182255))))

(declare-fun b!7516994 () Bool)

(assert (=> b!7516994 (= e!4481511 tp_is_empty!49843)))

(declare-fun b!7516996 () Bool)

(declare-fun tp!2182254 () Bool)

(assert (=> b!7516996 (= e!4481511 tp!2182254)))

(declare-fun b!7516995 () Bool)

(declare-fun tp!2182256 () Bool)

(declare-fun tp!2182253 () Bool)

(assert (=> b!7516995 (= e!4481511 (and tp!2182256 tp!2182253))))

(assert (=> b!7516552 (= tp!2182167 e!4481511)))

(assert (= (and b!7516552 (is-ElementMatch!19756 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516994))

(assert (= (and b!7516552 (is-Concat!28601 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516995))

(assert (= (and b!7516552 (is-Star!19756 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516996))

(assert (= (and b!7516552 (is-Union!19756 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516997))

(declare-fun b!7517001 () Bool)

(declare-fun e!4481512 () Bool)

(declare-fun tp!2182257 () Bool)

(declare-fun tp!2182260 () Bool)

(assert (=> b!7517001 (= e!4481512 (and tp!2182257 tp!2182260))))

(declare-fun b!7516998 () Bool)

(assert (=> b!7516998 (= e!4481512 tp_is_empty!49843)))

(declare-fun b!7517000 () Bool)

(declare-fun tp!2182259 () Bool)

(assert (=> b!7517000 (= e!4481512 tp!2182259)))

(declare-fun b!7516999 () Bool)

(declare-fun tp!2182261 () Bool)

(declare-fun tp!2182258 () Bool)

(assert (=> b!7516999 (= e!4481512 (and tp!2182261 tp!2182258))))

(assert (=> b!7516551 (= tp!2182169 e!4481512)))

(assert (= (and b!7516551 (is-ElementMatch!19756 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516998))

(assert (= (and b!7516551 (is-Concat!28601 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7516999))

(assert (= (and b!7516551 (is-Star!19756 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517000))

(assert (= (and b!7516551 (is-Union!19756 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517001))

(declare-fun b!7517005 () Bool)

(declare-fun e!4481513 () Bool)

(declare-fun tp!2182262 () Bool)

(declare-fun tp!2182265 () Bool)

(assert (=> b!7517005 (= e!4481513 (and tp!2182262 tp!2182265))))

(declare-fun b!7517002 () Bool)

(assert (=> b!7517002 (= e!4481513 tp_is_empty!49843)))

(declare-fun b!7517004 () Bool)

(declare-fun tp!2182264 () Bool)

(assert (=> b!7517004 (= e!4481513 tp!2182264)))

(declare-fun b!7517003 () Bool)

(declare-fun tp!2182266 () Bool)

(declare-fun tp!2182263 () Bool)

(assert (=> b!7517003 (= e!4481513 (and tp!2182266 tp!2182263))))

(assert (=> b!7516551 (= tp!2182166 e!4481513)))

(assert (= (and b!7516551 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517002))

(assert (= (and b!7516551 (is-Concat!28601 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517003))

(assert (= (and b!7516551 (is-Star!19756 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517004))

(assert (= (and b!7516551 (is-Union!19756 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517005))

(declare-fun b!7517009 () Bool)

(declare-fun e!4481514 () Bool)

(declare-fun tp!2182267 () Bool)

(declare-fun tp!2182270 () Bool)

(assert (=> b!7517009 (= e!4481514 (and tp!2182267 tp!2182270))))

(declare-fun b!7517006 () Bool)

(assert (=> b!7517006 (= e!4481514 tp_is_empty!49843)))

(declare-fun b!7517008 () Bool)

(declare-fun tp!2182269 () Bool)

(assert (=> b!7517008 (= e!4481514 tp!2182269)))

(declare-fun b!7517007 () Bool)

(declare-fun tp!2182271 () Bool)

(declare-fun tp!2182268 () Bool)

(assert (=> b!7517007 (= e!4481514 (and tp!2182271 tp!2182268))))

(assert (=> b!7516556 (= tp!2182172 e!4481514)))

(assert (= (and b!7516556 (is-ElementMatch!19756 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517006))

(assert (= (and b!7516556 (is-Concat!28601 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517007))

(assert (= (and b!7516556 (is-Star!19756 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517008))

(assert (= (and b!7516556 (is-Union!19756 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517009))

(declare-fun b!7517013 () Bool)

(declare-fun e!4481515 () Bool)

(declare-fun tp!2182272 () Bool)

(declare-fun tp!2182275 () Bool)

(assert (=> b!7517013 (= e!4481515 (and tp!2182272 tp!2182275))))

(declare-fun b!7517010 () Bool)

(assert (=> b!7517010 (= e!4481515 tp_is_empty!49843)))

(declare-fun b!7517012 () Bool)

(declare-fun tp!2182274 () Bool)

(assert (=> b!7517012 (= e!4481515 tp!2182274)))

(declare-fun b!7517011 () Bool)

(declare-fun tp!2182276 () Bool)

(declare-fun tp!2182273 () Bool)

(assert (=> b!7517011 (= e!4481515 (and tp!2182276 tp!2182273))))

(assert (=> b!7516553 (= tp!2182165 e!4481515)))

(assert (= (and b!7516553 (is-ElementMatch!19756 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517010))

(assert (= (and b!7516553 (is-Concat!28601 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517011))

(assert (= (and b!7516553 (is-Star!19756 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517012))

(assert (= (and b!7516553 (is-Union!19756 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517013))

(declare-fun b!7517017 () Bool)

(declare-fun e!4481516 () Bool)

(declare-fun tp!2182277 () Bool)

(declare-fun tp!2182280 () Bool)

(assert (=> b!7517017 (= e!4481516 (and tp!2182277 tp!2182280))))

(declare-fun b!7517014 () Bool)

(assert (=> b!7517014 (= e!4481516 tp_is_empty!49843)))

(declare-fun b!7517016 () Bool)

(declare-fun tp!2182279 () Bool)

(assert (=> b!7517016 (= e!4481516 tp!2182279)))

(declare-fun b!7517015 () Bool)

(declare-fun tp!2182281 () Bool)

(declare-fun tp!2182278 () Bool)

(assert (=> b!7517015 (= e!4481516 (and tp!2182281 tp!2182278))))

(assert (=> b!7516553 (= tp!2182168 e!4481516)))

(assert (= (and b!7516553 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517014))

(assert (= (and b!7516553 (is-Concat!28601 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517015))

(assert (= (and b!7516553 (is-Star!19756 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517016))

(assert (= (and b!7516553 (is-Union!19756 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517017))

(declare-fun b!7517021 () Bool)

(declare-fun e!4481517 () Bool)

(declare-fun tp!2182282 () Bool)

(declare-fun tp!2182285 () Bool)

(assert (=> b!7517021 (= e!4481517 (and tp!2182282 tp!2182285))))

(declare-fun b!7517018 () Bool)

(assert (=> b!7517018 (= e!4481517 tp_is_empty!49843)))

(declare-fun b!7517020 () Bool)

(declare-fun tp!2182284 () Bool)

(assert (=> b!7517020 (= e!4481517 tp!2182284)))

(declare-fun b!7517019 () Bool)

(declare-fun tp!2182286 () Bool)

(declare-fun tp!2182283 () Bool)

(assert (=> b!7517019 (= e!4481517 (and tp!2182286 tp!2182283))))

(assert (=> b!7516539 (= tp!2182154 e!4481517)))

(assert (= (and b!7516539 (is-ElementMatch!19756 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517018))

(assert (= (and b!7516539 (is-Concat!28601 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517019))

(assert (= (and b!7516539 (is-Star!19756 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517020))

(assert (= (and b!7516539 (is-Union!19756 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517021))

(declare-fun b!7517025 () Bool)

(declare-fun e!4481518 () Bool)

(declare-fun tp!2182287 () Bool)

(declare-fun tp!2182290 () Bool)

(assert (=> b!7517025 (= e!4481518 (and tp!2182287 tp!2182290))))

(declare-fun b!7517022 () Bool)

(assert (=> b!7517022 (= e!4481518 tp_is_empty!49843)))

(declare-fun b!7517024 () Bool)

(declare-fun tp!2182289 () Bool)

(assert (=> b!7517024 (= e!4481518 tp!2182289)))

(declare-fun b!7517023 () Bool)

(declare-fun tp!2182291 () Bool)

(declare-fun tp!2182288 () Bool)

(assert (=> b!7517023 (= e!4481518 (and tp!2182291 tp!2182288))))

(assert (=> b!7516539 (= tp!2182151 e!4481518)))

(assert (= (and b!7516539 (is-ElementMatch!19756 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517022))

(assert (= (and b!7516539 (is-Concat!28601 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517023))

(assert (= (and b!7516539 (is-Star!19756 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517024))

(assert (= (and b!7516539 (is-Union!19756 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517025))

(declare-fun b!7517029 () Bool)

(declare-fun e!4481519 () Bool)

(declare-fun tp!2182292 () Bool)

(declare-fun tp!2182295 () Bool)

(assert (=> b!7517029 (= e!4481519 (and tp!2182292 tp!2182295))))

(declare-fun b!7517026 () Bool)

(assert (=> b!7517026 (= e!4481519 tp_is_empty!49843)))

(declare-fun b!7517028 () Bool)

(declare-fun tp!2182294 () Bool)

(assert (=> b!7517028 (= e!4481519 tp!2182294)))

(declare-fun b!7517027 () Bool)

(declare-fun tp!2182296 () Bool)

(declare-fun tp!2182293 () Bool)

(assert (=> b!7517027 (= e!4481519 (and tp!2182296 tp!2182293))))

(assert (=> b!7516544 (= tp!2182157 e!4481519)))

(assert (= (and b!7516544 (is-ElementMatch!19756 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517026))

(assert (= (and b!7516544 (is-Concat!28601 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517027))

(assert (= (and b!7516544 (is-Star!19756 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517028))

(assert (= (and b!7516544 (is-Union!19756 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517029))

(declare-fun b!7517033 () Bool)

(declare-fun e!4481520 () Bool)

(declare-fun tp!2182297 () Bool)

(declare-fun tp!2182300 () Bool)

(assert (=> b!7517033 (= e!4481520 (and tp!2182297 tp!2182300))))

(declare-fun b!7517030 () Bool)

(assert (=> b!7517030 (= e!4481520 tp_is_empty!49843)))

(declare-fun b!7517032 () Bool)

(declare-fun tp!2182299 () Bool)

(assert (=> b!7517032 (= e!4481520 tp!2182299)))

(declare-fun b!7517031 () Bool)

(declare-fun tp!2182301 () Bool)

(declare-fun tp!2182298 () Bool)

(assert (=> b!7517031 (= e!4481520 (and tp!2182301 tp!2182298))))

(assert (=> b!7516557 (= tp!2182170 e!4481520)))

(assert (= (and b!7516557 (is-ElementMatch!19756 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517030))

(assert (= (and b!7516557 (is-Concat!28601 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517031))

(assert (= (and b!7516557 (is-Star!19756 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517032))

(assert (= (and b!7516557 (is-Union!19756 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517033))

(declare-fun b!7517037 () Bool)

(declare-fun e!4481521 () Bool)

(declare-fun tp!2182302 () Bool)

(declare-fun tp!2182305 () Bool)

(assert (=> b!7517037 (= e!4481521 (and tp!2182302 tp!2182305))))

(declare-fun b!7517034 () Bool)

(assert (=> b!7517034 (= e!4481521 tp_is_empty!49843)))

(declare-fun b!7517036 () Bool)

(declare-fun tp!2182304 () Bool)

(assert (=> b!7517036 (= e!4481521 tp!2182304)))

(declare-fun b!7517035 () Bool)

(declare-fun tp!2182306 () Bool)

(declare-fun tp!2182303 () Bool)

(assert (=> b!7517035 (= e!4481521 (and tp!2182306 tp!2182303))))

(assert (=> b!7516557 (= tp!2182173 e!4481521)))

(assert (= (and b!7516557 (is-ElementMatch!19756 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517034))

(assert (= (and b!7516557 (is-Concat!28601 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517035))

(assert (= (and b!7516557 (is-Star!19756 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517036))

(assert (= (and b!7516557 (is-Union!19756 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))))) b!7517037))

(declare-fun b!7517041 () Bool)

(declare-fun e!4481522 () Bool)

(declare-fun tp!2182307 () Bool)

(declare-fun tp!2182310 () Bool)

(assert (=> b!7517041 (= e!4481522 (and tp!2182307 tp!2182310))))

(declare-fun b!7517038 () Bool)

(assert (=> b!7517038 (= e!4481522 tp_is_empty!49843)))

(declare-fun b!7517040 () Bool)

(declare-fun tp!2182309 () Bool)

(assert (=> b!7517040 (= e!4481522 tp!2182309)))

(declare-fun b!7517039 () Bool)

(declare-fun tp!2182311 () Bool)

(declare-fun tp!2182308 () Bool)

(assert (=> b!7517039 (= e!4481522 (and tp!2182311 tp!2182308))))

(assert (=> b!7516543 (= tp!2182159 e!4481522)))

(assert (= (and b!7516543 (is-ElementMatch!19756 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517038))

(assert (= (and b!7516543 (is-Concat!28601 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517039))

(assert (= (and b!7516543 (is-Star!19756 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517040))

(assert (= (and b!7516543 (is-Union!19756 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517041))

(declare-fun b!7517045 () Bool)

(declare-fun e!4481523 () Bool)

(declare-fun tp!2182312 () Bool)

(declare-fun tp!2182315 () Bool)

(assert (=> b!7517045 (= e!4481523 (and tp!2182312 tp!2182315))))

(declare-fun b!7517042 () Bool)

(assert (=> b!7517042 (= e!4481523 tp_is_empty!49843)))

(declare-fun b!7517044 () Bool)

(declare-fun tp!2182314 () Bool)

(assert (=> b!7517044 (= e!4481523 tp!2182314)))

(declare-fun b!7517043 () Bool)

(declare-fun tp!2182316 () Bool)

(declare-fun tp!2182313 () Bool)

(assert (=> b!7517043 (= e!4481523 (and tp!2182316 tp!2182313))))

(assert (=> b!7516543 (= tp!2182156 e!4481523)))

(assert (= (and b!7516543 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517042))

(assert (= (and b!7516543 (is-Concat!28601 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517043))

(assert (= (and b!7516543 (is-Star!19756 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517044))

(assert (= (and b!7516543 (is-Union!19756 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517045))

(declare-fun b!7517049 () Bool)

(declare-fun e!4481524 () Bool)

(declare-fun tp!2182317 () Bool)

(declare-fun tp!2182320 () Bool)

(assert (=> b!7517049 (= e!4481524 (and tp!2182317 tp!2182320))))

(declare-fun b!7517046 () Bool)

(assert (=> b!7517046 (= e!4481524 tp_is_empty!49843)))

(declare-fun b!7517048 () Bool)

(declare-fun tp!2182319 () Bool)

(assert (=> b!7517048 (= e!4481524 tp!2182319)))

(declare-fun b!7517047 () Bool)

(declare-fun tp!2182321 () Bool)

(declare-fun tp!2182318 () Bool)

(assert (=> b!7517047 (= e!4481524 (and tp!2182321 tp!2182318))))

(assert (=> b!7516548 (= tp!2182162 e!4481524)))

(assert (= (and b!7516548 (is-ElementMatch!19756 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517046))

(assert (= (and b!7516548 (is-Concat!28601 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517047))

(assert (= (and b!7516548 (is-Star!19756 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517048))

(assert (= (and b!7516548 (is-Union!19756 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517049))

(declare-fun b!7517053 () Bool)

(declare-fun e!4481525 () Bool)

(declare-fun tp!2182322 () Bool)

(declare-fun tp!2182325 () Bool)

(assert (=> b!7517053 (= e!4481525 (and tp!2182322 tp!2182325))))

(declare-fun b!7517050 () Bool)

(assert (=> b!7517050 (= e!4481525 tp_is_empty!49843)))

(declare-fun b!7517052 () Bool)

(declare-fun tp!2182324 () Bool)

(assert (=> b!7517052 (= e!4481525 tp!2182324)))

(declare-fun b!7517051 () Bool)

(declare-fun tp!2182326 () Bool)

(declare-fun tp!2182323 () Bool)

(assert (=> b!7517051 (= e!4481525 (and tp!2182326 tp!2182323))))

(assert (=> b!7516545 (= tp!2182155 e!4481525)))

(assert (= (and b!7516545 (is-ElementMatch!19756 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517050))

(assert (= (and b!7516545 (is-Concat!28601 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517051))

(assert (= (and b!7516545 (is-Star!19756 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517052))

(assert (= (and b!7516545 (is-Union!19756 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517053))

(declare-fun b!7517057 () Bool)

(declare-fun e!4481526 () Bool)

(declare-fun tp!2182327 () Bool)

(declare-fun tp!2182330 () Bool)

(assert (=> b!7517057 (= e!4481526 (and tp!2182327 tp!2182330))))

(declare-fun b!7517054 () Bool)

(assert (=> b!7517054 (= e!4481526 tp_is_empty!49843)))

(declare-fun b!7517056 () Bool)

(declare-fun tp!2182329 () Bool)

(assert (=> b!7517056 (= e!4481526 tp!2182329)))

(declare-fun b!7517055 () Bool)

(declare-fun tp!2182331 () Bool)

(declare-fun tp!2182328 () Bool)

(assert (=> b!7517055 (= e!4481526 (and tp!2182331 tp!2182328))))

(assert (=> b!7516545 (= tp!2182158 e!4481526)))

(assert (= (and b!7516545 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517054))

(assert (= (and b!7516545 (is-Concat!28601 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517055))

(assert (= (and b!7516545 (is-Star!19756 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517056))

(assert (= (and b!7516545 (is-Union!19756 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517057))

(declare-fun b!7517061 () Bool)

(declare-fun e!4481527 () Bool)

(declare-fun tp!2182332 () Bool)

(declare-fun tp!2182335 () Bool)

(assert (=> b!7517061 (= e!4481527 (and tp!2182332 tp!2182335))))

(declare-fun b!7517058 () Bool)

(assert (=> b!7517058 (= e!4481527 tp_is_empty!49843)))

(declare-fun b!7517060 () Bool)

(declare-fun tp!2182334 () Bool)

(assert (=> b!7517060 (= e!4481527 tp!2182334)))

(declare-fun b!7517059 () Bool)

(declare-fun tp!2182336 () Bool)

(declare-fun tp!2182333 () Bool)

(assert (=> b!7517059 (= e!4481527 (and tp!2182336 tp!2182333))))

(assert (=> b!7516549 (= tp!2182160 e!4481527)))

(assert (= (and b!7516549 (is-ElementMatch!19756 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517058))

(assert (= (and b!7516549 (is-Concat!28601 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517059))

(assert (= (and b!7516549 (is-Star!19756 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517060))

(assert (= (and b!7516549 (is-Union!19756 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517061))

(declare-fun b!7517065 () Bool)

(declare-fun e!4481528 () Bool)

(declare-fun tp!2182337 () Bool)

(declare-fun tp!2182340 () Bool)

(assert (=> b!7517065 (= e!4481528 (and tp!2182337 tp!2182340))))

(declare-fun b!7517062 () Bool)

(assert (=> b!7517062 (= e!4481528 tp_is_empty!49843)))

(declare-fun b!7517064 () Bool)

(declare-fun tp!2182339 () Bool)

(assert (=> b!7517064 (= e!4481528 tp!2182339)))

(declare-fun b!7517063 () Bool)

(declare-fun tp!2182341 () Bool)

(declare-fun tp!2182338 () Bool)

(assert (=> b!7517063 (= e!4481528 (and tp!2182341 tp!2182338))))

(assert (=> b!7516549 (= tp!2182163 e!4481528)))

(assert (= (and b!7516549 (is-ElementMatch!19756 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517062))

(assert (= (and b!7516549 (is-Concat!28601 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517063))

(assert (= (and b!7516549 (is-Star!19756 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517064))

(assert (= (and b!7516549 (is-Union!19756 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091)))))) b!7517065))

(declare-fun b!7517069 () Bool)

(declare-fun e!4481529 () Bool)

(declare-fun tp!2182342 () Bool)

(declare-fun tp!2182345 () Bool)

(assert (=> b!7517069 (= e!4481529 (and tp!2182342 tp!2182345))))

(declare-fun b!7517066 () Bool)

(assert (=> b!7517066 (= e!4481529 tp_is_empty!49843)))

(declare-fun b!7517068 () Bool)

(declare-fun tp!2182344 () Bool)

(assert (=> b!7517068 (= e!4481529 tp!2182344)))

(declare-fun b!7517067 () Bool)

(declare-fun tp!2182346 () Bool)

(declare-fun tp!2182343 () Bool)

(assert (=> b!7517067 (= e!4481529 (and tp!2182346 tp!2182343))))

(assert (=> b!7516540 (= tp!2182152 e!4481529)))

(assert (= (and b!7516540 (is-ElementMatch!19756 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517066))

(assert (= (and b!7516540 (is-Concat!28601 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517067))

(assert (= (and b!7516540 (is-Star!19756 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517068))

(assert (= (and b!7516540 (is-Union!19756 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517069))

(declare-fun b!7517073 () Bool)

(declare-fun e!4481530 () Bool)

(declare-fun tp!2182347 () Bool)

(declare-fun tp!2182350 () Bool)

(assert (=> b!7517073 (= e!4481530 (and tp!2182347 tp!2182350))))

(declare-fun b!7517070 () Bool)

(assert (=> b!7517070 (= e!4481530 tp_is_empty!49843)))

(declare-fun b!7517072 () Bool)

(declare-fun tp!2182349 () Bool)

(assert (=> b!7517072 (= e!4481530 tp!2182349)))

(declare-fun b!7517071 () Bool)

(declare-fun tp!2182351 () Bool)

(declare-fun tp!2182348 () Bool)

(assert (=> b!7517071 (= e!4481530 (and tp!2182351 tp!2182348))))

(assert (=> b!7516537 (= tp!2182148 e!4481530)))

(assert (= (and b!7516537 (is-ElementMatch!19756 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091)))))) b!7517070))

(assert (= (and b!7516537 (is-Concat!28601 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091)))))) b!7517071))

(assert (= (and b!7516537 (is-Star!19756 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091)))))) b!7517072))

(assert (= (and b!7516537 (is-Union!19756 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091)))))) b!7517073))

(declare-fun b!7517074 () Bool)

(declare-fun e!4481531 () Bool)

(declare-fun tp!2182352 () Bool)

(declare-fun tp!2182353 () Bool)

(assert (=> b!7517074 (= e!4481531 (and tp!2182352 tp!2182353))))

(assert (=> b!7516537 (= tp!2182149 e!4481531)))

(assert (= (and b!7516537 (is-Cons!72519 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))))) b!7517074))

(declare-fun b!7517078 () Bool)

(declare-fun e!4481532 () Bool)

(declare-fun tp!2182354 () Bool)

(declare-fun tp!2182357 () Bool)

(assert (=> b!7517078 (= e!4481532 (and tp!2182354 tp!2182357))))

(declare-fun b!7517075 () Bool)

(assert (=> b!7517075 (= e!4481532 tp_is_empty!49843)))

(declare-fun b!7517077 () Bool)

(declare-fun tp!2182356 () Bool)

(assert (=> b!7517077 (= e!4481532 tp!2182356)))

(declare-fun b!7517076 () Bool)

(declare-fun tp!2182358 () Bool)

(declare-fun tp!2182355 () Bool)

(assert (=> b!7517076 (= e!4481532 (and tp!2182358 tp!2182355))))

(assert (=> b!7516541 (= tp!2182150 e!4481532)))

(assert (= (and b!7516541 (is-ElementMatch!19756 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517075))

(assert (= (and b!7516541 (is-Concat!28601 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517076))

(assert (= (and b!7516541 (is-Star!19756 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517077))

(assert (= (and b!7516541 (is-Union!19756 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517078))

(declare-fun b!7517082 () Bool)

(declare-fun e!4481533 () Bool)

(declare-fun tp!2182359 () Bool)

(declare-fun tp!2182362 () Bool)

(assert (=> b!7517082 (= e!4481533 (and tp!2182359 tp!2182362))))

(declare-fun b!7517079 () Bool)

(assert (=> b!7517079 (= e!4481533 tp_is_empty!49843)))

(declare-fun b!7517081 () Bool)

(declare-fun tp!2182361 () Bool)

(assert (=> b!7517081 (= e!4481533 tp!2182361)))

(declare-fun b!7517080 () Bool)

(declare-fun tp!2182363 () Bool)

(declare-fun tp!2182360 () Bool)

(assert (=> b!7517080 (= e!4481533 (and tp!2182363 tp!2182360))))

(assert (=> b!7516541 (= tp!2182153 e!4481533)))

(assert (= (and b!7516541 (is-ElementMatch!19756 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517079))

(assert (= (and b!7516541 (is-Concat!28601 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517080))

(assert (= (and b!7516541 (is-Star!19756 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517081))

(assert (= (and b!7516541 (is-Union!19756 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) b!7517082))

(declare-fun b_lambda!288387 () Bool)

(assert (= b_lambda!288383 (or d!2307918 b_lambda!288387)))

(declare-fun bs!1939412 () Bool)

(declare-fun d!2308122 () Bool)

(assert (= bs!1939412 (and d!2308122 d!2307918)))

(assert (=> bs!1939412 (= (dynLambda!29850 lambda!466260 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))) (validRegex!10192 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(declare-fun m!8098448 () Bool)

(assert (=> bs!1939412 m!8098448))

(assert (=> b!7516921 d!2308122))

(declare-fun b_lambda!288389 () Bool)

(assert (= b_lambda!288385 (or d!2307920 b_lambda!288389)))

(declare-fun bs!1939413 () Bool)

(declare-fun d!2308124 () Bool)

(assert (= bs!1939413 (and d!2308124 d!2307920)))

(assert (=> bs!1939413 (= (dynLambda!29850 lambda!466264 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))) (not (dynLambda!29850 lambda!466252 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun b_lambda!288391 () Bool)

(assert (=> (not b_lambda!288391) (not bs!1939413)))

(declare-fun m!8098450 () Bool)

(assert (=> bs!1939413 m!8098450))

(assert (=> b!7516929 d!2308124))

(push 1)

(assert (not b!7517049))

(assert (not b!7517043))

(assert (not b!7516828))

(assert (not d!2308090))

(assert (not b!7517033))

(assert (not b!7517020))

(assert (not bm!689383))

(assert (not b!7516806))

(assert (not bm!689394))

(assert (not b!7516959))

(assert (not b!7517004))

(assert (not b!7516973))

(assert (not b!7517047))

(assert (not b!7516993))

(assert (not b!7516891))

(assert (not b!7516750))

(assert (not b!7517059))

(assert (not b!7517032))

(assert (not b!7516987))

(assert (not b!7516912))

(assert (not b!7517036))

(assert (not b!7517081))

(assert (not b!7516976))

(assert (not b!7517074))

(assert (not b!7516997))

(assert (not bs!1939412))

(assert (not b!7516856))

(assert (not b!7517015))

(assert (not b!7516878))

(assert (not b!7516890))

(assert (not b!7517023))

(assert (not bm!689366))

(assert (not bm!689369))

(assert (not b!7517044))

(assert (not b!7516980))

(assert (not d!2308072))

(assert (not bm!689374))

(assert (not b!7516961))

(assert (not b_lambda!288373))

(assert (not b!7517055))

(assert (not b!7517008))

(assert (not b!7516972))

(assert (not b!7516965))

(assert (not b!7516960))

(assert (not bm!689393))

(assert (not b!7517003))

(assert (not bm!689371))

(assert (not b_lambda!288389))

(assert (not b!7517073))

(assert (not b!7517053))

(assert (not b!7516995))

(assert (not b!7516790))

(assert (not b!7516996))

(assert (not b!7516904))

(assert (not b!7516971))

(assert (not b!7516979))

(assert (not b!7516991))

(assert (not b!7516963))

(assert (not b!7517045))

(assert (not b!7516782))

(assert (not b!7516968))

(assert (not b!7517039))

(assert (not d!2308082))

(assert (not bm!689390))

(assert (not b!7517011))

(assert (not bm!689386))

(assert (not b!7517069))

(assert (not b!7516760))

(assert (not b!7517068))

(assert (not b!7517076))

(assert (not b!7516721))

(assert (not b!7516953))

(assert (not b!7516983))

(assert (not b!7516920))

(assert (not b!7517013))

(assert (not b!7516910))

(assert (not b!7516756))

(assert (not b!7517082))

(assert (not b!7516758))

(assert (not b!7516794))

(assert (not b!7516864))

(assert (not b!7516964))

(assert (not d!2308054))

(assert (not b!7517064))

(assert (not b!7517001))

(assert (not bm!689389))

(assert (not d!2308064))

(assert (not b!7517071))

(assert (not b!7516914))

(assert (not b!7517031))

(assert (not b!7517063))

(assert (not b!7517007))

(assert (not bm!689365))

(assert (not b!7517029))

(assert (not b!7517012))

(assert (not bm!689381))

(assert (not b!7516778))

(assert (not b!7516865))

(assert (not b!7517005))

(assert (not d!2308074))

(assert (not b!7517037))

(assert (not b!7517000))

(assert (not b!7517024))

(assert (not b!7517052))

(assert (not b!7517057))

(assert (not b!7516829))

(assert (not b!7517077))

(assert (not bm!689387))

(assert (not b!7516791))

(assert (not b!7517021))

(assert (not b!7516989))

(assert (not b!7516975))

(assert (not b!7517065))

(assert (not bm!689385))

(assert (not b!7517016))

(assert (not b!7516922))

(assert (not bm!689364))

(assert (not b!7516969))

(assert (not bm!689376))

(assert (not d!2308086))

(assert (not b!7516784))

(assert (not b!7516916))

(assert (not b!7516999))

(assert (not b!7517078))

(assert (not b!7517056))

(assert (not b!7517017))

(assert (not bm!689372))

(assert (not bm!689382))

(assert (not b!7517051))

(assert (not b!7517009))

(assert (not b!7517028))

(assert (not b!7516884))

(assert (not b!7517027))

(assert (not b!7517080))

(assert (not b!7516984))

(assert (not b!7517060))

(assert (not b!7516933))

(assert (not b!7516727))

(assert (not b!7516729))

(assert (not b!7517061))

(assert (not b!7517067))

(assert tp_is_empty!49843)

(assert (not b_lambda!288363))

(assert (not b!7516853))

(assert (not b!7516967))

(assert (not b!7516927))

(assert (not b!7516822))

(assert (not bm!689373))

(assert (not b!7516981))

(assert (not b!7516772))

(assert (not b!7517041))

(assert (not b_lambda!288349))

(assert (not b!7516886))

(assert (not b!7516941))

(assert (not bm!689392))

(assert (not b_lambda!288343))

(assert (not bm!689370))

(assert (not b!7516930))

(assert (not b!7517040))

(assert (not b!7516918))

(assert (not b_lambda!288387))

(assert (not b!7516985))

(assert (not b!7516924))

(assert (not d!2308112))

(assert (not b!7516926))

(assert (not b!7517035))

(assert (not b!7516788))

(assert (not bm!689368))

(assert (not b!7516732))

(assert (not b!7516977))

(assert (not b!7516779))

(assert (not d!2308080))

(assert (not bm!689388))

(assert (not bm!689375))

(assert (not b!7516988))

(assert (not b!7517072))

(assert (not b!7516786))

(assert (not b!7516992))

(assert (not b_lambda!288365))

(assert (not b_lambda!288391))

(assert (not b!7517025))

(assert (not d!2308092))

(assert (not b!7517048))

(assert (not b!7516887))

(assert (not b!7517019))

(assert (not b_lambda!288341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288405 () Bool)

(assert (= b_lambda!288391 (or b!7516151 b_lambda!288405)))

(declare-fun bs!1939419 () Bool)

(declare-fun d!2308218 () Bool)

(assert (= bs!1939419 (and d!2308218 b!7516151)))

(assert (=> bs!1939419 (= (dynLambda!29850 lambda!466252 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))) (lostCause!1627 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(declare-fun m!8098676 () Bool)

(assert (=> bs!1939419 m!8098676))

(assert (=> bs!1939413 d!2308218))

(push 1)

(assert (not b!7517049))

(assert (not b!7517043))

(assert (not b!7516828))

(assert (not d!2308090))

(assert (not b!7517033))

(assert (not b!7517020))

(assert (not bm!689383))

(assert (not b!7516806))

(assert (not bm!689394))

(assert (not b!7516959))

(assert (not b!7517004))

(assert (not b!7516973))

(assert (not b!7517047))

(assert (not b!7516993))

(assert (not b!7516891))

(assert (not b!7516750))

(assert (not b!7517059))

(assert (not b!7517032))

(assert (not b!7516987))

(assert (not b!7516912))

(assert (not b!7517036))

(assert (not b!7517081))

(assert (not b!7516976))

(assert (not b!7517074))

(assert (not b!7516997))

(assert (not bs!1939412))

(assert (not b!7516856))

(assert (not bs!1939419))

(assert (not b!7517015))

(assert (not b!7516878))

(assert (not b!7516890))

(assert (not b!7517023))

(assert (not bm!689366))

(assert (not bm!689369))

(assert (not b!7517044))

(assert (not b!7516980))

(assert (not d!2308072))

(assert (not bm!689374))

(assert (not b!7516961))

(assert (not b_lambda!288373))

(assert (not b!7517055))

(assert (not b!7517008))

(assert (not b!7516972))

(assert (not b!7516965))

(assert (not b!7516960))

(assert (not bm!689393))

(assert (not b!7517003))

(assert (not bm!689371))

(assert (not b_lambda!288389))

(assert (not b!7517073))

(assert (not b!7517053))

(assert (not b!7516995))

(assert (not b!7516790))

(assert (not b!7516996))

(assert (not b!7516904))

(assert (not b!7516971))

(assert (not b!7516979))

(assert (not b!7516991))

(assert (not b!7516963))

(assert (not b!7517045))

(assert (not b!7516782))

(assert (not b!7516968))

(assert (not b!7517039))

(assert (not d!2308082))

(assert (not bm!689390))

(assert (not b!7517011))

(assert (not bm!689386))

(assert (not b!7517069))

(assert (not b!7516760))

(assert (not b!7517068))

(assert (not b!7517076))

(assert (not b!7516721))

(assert (not b!7516953))

(assert (not b!7516983))

(assert (not b!7516920))

(assert (not b!7517013))

(assert (not b!7516910))

(assert (not b!7516756))

(assert (not b!7517082))

(assert (not b!7516758))

(assert (not b!7516794))

(assert (not b!7516864))

(assert (not b!7516964))

(assert (not d!2308054))

(assert (not b!7517064))

(assert (not b!7517001))

(assert (not b_lambda!288405))

(assert (not bm!689389))

(assert (not d!2308064))

(assert (not b!7517071))

(assert (not b!7516914))

(assert (not b!7517031))

(assert (not b!7517063))

(assert (not b!7517007))

(assert (not bm!689365))

(assert (not b!7517029))

(assert (not b!7517012))

(assert (not bm!689381))

(assert (not b!7516778))

(assert (not b!7516865))

(assert (not b!7517005))

(assert (not d!2308074))

(assert (not b!7517037))

(assert (not b!7517000))

(assert (not b!7517024))

(assert (not b!7517052))

(assert (not b!7517057))

(assert (not b!7516829))

(assert (not b!7517077))

(assert (not bm!689387))

(assert (not b!7516791))

(assert (not b!7517021))

(assert (not b!7516989))

(assert (not b!7516975))

(assert (not b!7517065))

(assert (not bm!689385))

(assert (not b!7517016))

(assert (not b!7516922))

(assert (not bm!689364))

(assert (not b!7516969))

(assert (not bm!689376))

(assert (not d!2308086))

(assert (not b!7516784))

(assert (not b!7516916))

(assert (not b!7516999))

(assert (not b!7517078))

(assert (not b!7517056))

(assert (not b!7517017))

(assert (not bm!689372))

(assert (not bm!689382))

(assert (not b!7517051))

(assert (not b!7517009))

(assert (not b!7517028))

(assert (not b!7516884))

(assert (not b!7517027))

(assert (not b!7517080))

(assert (not b!7516984))

(assert (not b!7517060))

(assert (not b!7516933))

(assert (not b!7516727))

(assert (not b!7516729))

(assert (not b!7517061))

(assert (not b!7517067))

(assert tp_is_empty!49843)

(assert (not b_lambda!288363))

(assert (not b!7516853))

(assert (not b!7516967))

(assert (not b!7516927))

(assert (not b!7516822))

(assert (not bm!689373))

(assert (not b!7516981))

(assert (not b!7516772))

(assert (not b!7517041))

(assert (not b_lambda!288349))

(assert (not b!7516886))

(assert (not b!7516941))

(assert (not bm!689392))

(assert (not b_lambda!288343))

(assert (not bm!689370))

(assert (not b!7516930))

(assert (not b!7517040))

(assert (not b!7516918))

(assert (not b_lambda!288387))

(assert (not b!7516985))

(assert (not b!7516924))

(assert (not d!2308112))

(assert (not b!7516926))

(assert (not b!7517035))

(assert (not b!7516788))

(assert (not bm!689368))

(assert (not b!7516732))

(assert (not b!7516977))

(assert (not b!7516779))

(assert (not d!2308080))

(assert (not bm!689388))

(assert (not bm!689375))

(assert (not b!7516988))

(assert (not b!7517072))

(assert (not b!7516786))

(assert (not b!7516992))

(assert (not b_lambda!288365))

(assert (not b!7517025))

(assert (not d!2308092))

(assert (not b!7517048))

(assert (not b!7516887))

(assert (not b!7517019))

(assert (not b_lambda!288341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7517456 () Bool)

(declare-fun e!4481708 () List!72644)

(assert (=> b!7517456 (= e!4481708 (v!54387 lt!2638316))))

(declare-fun lt!2638377 () List!72644)

(declare-fun e!4481707 () Bool)

(declare-fun b!7517459 () Bool)

(assert (=> b!7517459 (= e!4481707 (or (not (= (v!54387 lt!2638316) Nil!72520)) (= lt!2638377 (v!54387 lt!2638318))))))

(declare-fun b!7517458 () Bool)

(declare-fun res!3013902 () Bool)

(assert (=> b!7517458 (=> (not res!3013902) (not e!4481707))))

(assert (=> b!7517458 (= res!3013902 (= (size!42300 lt!2638377) (+ (size!42300 (v!54387 lt!2638318)) (size!42300 (v!54387 lt!2638316)))))))

(declare-fun b!7517457 () Bool)

(assert (=> b!7517457 (= e!4481708 (Cons!72520 (h!78968 (v!54387 lt!2638318)) (++!17359 (t!387281 (v!54387 lt!2638318)) (v!54387 lt!2638316))))))

(declare-fun d!2308220 () Bool)

(assert (=> d!2308220 e!4481707))

(declare-fun res!3013903 () Bool)

(assert (=> d!2308220 (=> (not res!3013903) (not e!4481707))))

(assert (=> d!2308220 (= res!3013903 (= (content!15343 lt!2638377) (set.union (content!15343 (v!54387 lt!2638318)) (content!15343 (v!54387 lt!2638316)))))))

(assert (=> d!2308220 (= lt!2638377 e!4481708)))

(declare-fun c!1389060 () Bool)

(assert (=> d!2308220 (= c!1389060 (is-Nil!72520 (v!54387 lt!2638318)))))

(assert (=> d!2308220 (= (++!17359 (v!54387 lt!2638318) (v!54387 lt!2638316)) lt!2638377)))

(assert (= (and d!2308220 c!1389060) b!7517456))

(assert (= (and d!2308220 (not c!1389060)) b!7517457))

(assert (= (and d!2308220 res!3013903) b!7517458))

(assert (= (and b!7517458 res!3013902) b!7517459))

(declare-fun m!8098678 () Bool)

(assert (=> b!7517458 m!8098678))

(declare-fun m!8098680 () Bool)

(assert (=> b!7517458 m!8098680))

(declare-fun m!8098682 () Bool)

(assert (=> b!7517458 m!8098682))

(declare-fun m!8098684 () Bool)

(assert (=> b!7517457 m!8098684))

(declare-fun m!8098686 () Bool)

(assert (=> d!2308220 m!8098686))

(declare-fun m!8098688 () Bool)

(assert (=> d!2308220 m!8098688))

(declare-fun m!8098690 () Bool)

(assert (=> d!2308220 m!8098690))

(assert (=> b!7516878 d!2308220))

(declare-fun d!2308222 () Bool)

(declare-fun c!1389061 () Bool)

(assert (=> d!2308222 (= c!1389061 (is-Nil!72520 (t!387281 (t!387281 (v!54387 lt!2638219)))))))

(declare-fun e!4481709 () (Set C!39838))

(assert (=> d!2308222 (= (content!15343 (t!387281 (t!387281 (v!54387 lt!2638219)))) e!4481709)))

(declare-fun b!7517460 () Bool)

(assert (=> b!7517460 (= e!4481709 (as set.empty (Set C!39838)))))

(declare-fun b!7517461 () Bool)

(assert (=> b!7517461 (= e!4481709 (set.union (set.insert (h!78968 (t!387281 (t!387281 (v!54387 lt!2638219)))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638219)))))))))

(assert (= (and d!2308222 c!1389061) b!7517460))

(assert (= (and d!2308222 (not c!1389061)) b!7517461))

(declare-fun m!8098692 () Bool)

(assert (=> b!7517461 m!8098692))

(declare-fun m!8098694 () Bool)

(assert (=> b!7517461 m!8098694))

(assert (=> b!7516729 d!2308222))

(declare-fun d!2308224 () Bool)

(declare-fun c!1389062 () Bool)

(assert (=> d!2308224 (= c!1389062 (is-Nil!72520 (t!387281 (v!54387 lt!2638236))))))

(declare-fun e!4481710 () (Set C!39838))

(assert (=> d!2308224 (= (content!15343 (t!387281 (v!54387 lt!2638236))) e!4481710)))

(declare-fun b!7517462 () Bool)

(assert (=> b!7517462 (= e!4481710 (as set.empty (Set C!39838)))))

(declare-fun b!7517463 () Bool)

(assert (=> b!7517463 (= e!4481710 (set.union (set.insert (h!78968 (t!387281 (v!54387 lt!2638236))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (v!54387 lt!2638236))))))))

(assert (= (and d!2308224 c!1389062) b!7517462))

(assert (= (and d!2308224 (not c!1389062)) b!7517463))

(declare-fun m!8098696 () Bool)

(assert (=> b!7517463 m!8098696))

(declare-fun m!8098698 () Bool)

(assert (=> b!7517463 m!8098698))

(assert (=> b!7516786 d!2308224))

(declare-fun b!7517464 () Bool)

(declare-fun e!4481712 () List!72644)

(assert (=> b!7517464 (= e!4481712 (v!54387 lt!2638265))))

(declare-fun e!4481711 () Bool)

(declare-fun lt!2638378 () List!72644)

(declare-fun b!7517467 () Bool)

(assert (=> b!7517467 (= e!4481711 (or (not (= (v!54387 lt!2638265) Nil!72520)) (= lt!2638378 (t!387281 (v!54387 lt!2638267)))))))

(declare-fun b!7517466 () Bool)

(declare-fun res!3013904 () Bool)

(assert (=> b!7517466 (=> (not res!3013904) (not e!4481711))))

(assert (=> b!7517466 (= res!3013904 (= (size!42300 lt!2638378) (+ (size!42300 (t!387281 (v!54387 lt!2638267))) (size!42300 (v!54387 lt!2638265)))))))

(declare-fun b!7517465 () Bool)

(assert (=> b!7517465 (= e!4481712 (Cons!72520 (h!78968 (t!387281 (v!54387 lt!2638267))) (++!17359 (t!387281 (t!387281 (v!54387 lt!2638267))) (v!54387 lt!2638265))))))

(declare-fun d!2308226 () Bool)

(assert (=> d!2308226 e!4481711))

(declare-fun res!3013905 () Bool)

(assert (=> d!2308226 (=> (not res!3013905) (not e!4481711))))

(assert (=> d!2308226 (= res!3013905 (= (content!15343 lt!2638378) (set.union (content!15343 (t!387281 (v!54387 lt!2638267))) (content!15343 (v!54387 lt!2638265)))))))

(assert (=> d!2308226 (= lt!2638378 e!4481712)))

(declare-fun c!1389063 () Bool)

(assert (=> d!2308226 (= c!1389063 (is-Nil!72520 (t!387281 (v!54387 lt!2638267))))))

(assert (=> d!2308226 (= (++!17359 (t!387281 (v!54387 lt!2638267)) (v!54387 lt!2638265)) lt!2638378)))

(assert (= (and d!2308226 c!1389063) b!7517464))

(assert (= (and d!2308226 (not c!1389063)) b!7517465))

(assert (= (and d!2308226 res!3013905) b!7517466))

(assert (= (and b!7517466 res!3013904) b!7517467))

(declare-fun m!8098700 () Bool)

(assert (=> b!7517466 m!8098700))

(declare-fun m!8098702 () Bool)

(assert (=> b!7517466 m!8098702))

(assert (=> b!7517466 m!8098270))

(declare-fun m!8098704 () Bool)

(assert (=> b!7517465 m!8098704))

(declare-fun m!8098706 () Bool)

(assert (=> d!2308226 m!8098706))

(declare-fun m!8098708 () Bool)

(assert (=> d!2308226 m!8098708))

(assert (=> d!2308226 m!8098278))

(assert (=> b!7516778 d!2308226))

(declare-fun d!2308228 () Bool)

(declare-fun res!3013906 () Bool)

(declare-fun e!4481713 () Bool)

(assert (=> d!2308228 (=> res!3013906 e!4481713)))

(assert (=> d!2308228 (= res!3013906 (is-Nil!72519 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(assert (=> d!2308228 (= (forall!18381 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))) lambda!466260) e!4481713)))

(declare-fun b!7517468 () Bool)

(declare-fun e!4481714 () Bool)

(assert (=> b!7517468 (= e!4481713 e!4481714)))

(declare-fun res!3013907 () Bool)

(assert (=> b!7517468 (=> (not res!3013907) (not e!4481714))))

(assert (=> b!7517468 (= res!3013907 (dynLambda!29850 lambda!466260 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun b!7517469 () Bool)

(assert (=> b!7517469 (= e!4481714 (forall!18381 (t!387280 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))) lambda!466260))))

(assert (= (and d!2308228 (not res!3013906)) b!7517468))

(assert (= (and b!7517468 res!3013907) b!7517469))

(declare-fun b_lambda!288407 () Bool)

(assert (=> (not b_lambda!288407) (not b!7517468)))

(declare-fun m!8098710 () Bool)

(assert (=> b!7517468 m!8098710))

(declare-fun m!8098712 () Bool)

(assert (=> b!7517469 m!8098712))

(assert (=> b!7516922 d!2308228))

(declare-fun d!2308230 () Bool)

(assert (=> d!2308230 (= (isEmpty!41334 (getLanguageWitness!1096 (h!78967 (exprs!9008 c!7091)))) (not (is-Some!17252 (getLanguageWitness!1096 (h!78967 (exprs!9008 c!7091))))))))

(assert (=> d!2308074 d!2308230))

(assert (=> d!2308074 d!2307914))

(declare-fun c!1389066 () Bool)

(declare-fun b!7517470 () Bool)

(assert (=> b!7517470 (= c!1389066 (is-ElementMatch!19756 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481718 () Option!17253)

(declare-fun e!4481720 () Option!17253)

(assert (=> b!7517470 (= e!4481718 e!4481720)))

(declare-fun c!1389065 () Bool)

(declare-fun d!2308232 () Bool)

(assert (=> d!2308232 (= c!1389065 (is-EmptyExpr!19756 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481715 () Option!17253)

(assert (=> d!2308232 (= (getLanguageWitness!1096 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481715)))

(declare-fun b!7517471 () Bool)

(declare-fun e!4481721 () Option!17253)

(declare-fun lt!2638380 () Option!17253)

(assert (=> b!7517471 (= e!4481721 lt!2638380)))

(declare-fun b!7517472 () Bool)

(declare-fun e!4481716 () Option!17253)

(assert (=> b!7517472 (= e!4481716 e!4481721)))

(declare-fun call!689432 () Option!17253)

(assert (=> b!7517472 (= lt!2638380 call!689432)))

(declare-fun c!1389069 () Bool)

(assert (=> b!7517472 (= c!1389069 (is-Some!17252 lt!2638380))))

(declare-fun b!7517473 () Bool)

(declare-fun call!689431 () Option!17253)

(assert (=> b!7517473 (= e!4481721 call!689431)))

(declare-fun c!1389071 () Bool)

(declare-fun b!7517474 () Bool)

(assert (=> b!7517474 (= c!1389071 (is-Union!19756 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481719 () Option!17253)

(assert (=> b!7517474 (= e!4481719 e!4481716)))

(declare-fun b!7517475 () Bool)

(declare-fun e!4481717 () Option!17253)

(assert (=> b!7517475 (= e!4481717 None!17252)))

(declare-fun bm!689426 () Bool)

(assert (=> bm!689426 (= call!689432 (getLanguageWitness!1096 (ite c!1389071 (regOne!40025 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517476 () Bool)

(assert (=> b!7517476 (= e!4481720 e!4481719)))

(declare-fun c!1389070 () Bool)

(assert (=> b!7517476 (= c!1389070 (is-Star!19756 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517477 () Bool)

(assert (=> b!7517477 (= e!4481715 (Some!17252 Nil!72520))))

(declare-fun b!7517478 () Bool)

(declare-fun e!4481722 () Option!17253)

(assert (=> b!7517478 (= e!4481716 e!4481722)))

(declare-fun lt!2638381 () Option!17253)

(assert (=> b!7517478 (= lt!2638381 call!689431)))

(declare-fun c!1389064 () Bool)

(assert (=> b!7517478 (= c!1389064 (is-Some!17252 lt!2638381))))

(declare-fun b!7517479 () Bool)

(declare-fun c!1389068 () Bool)

(declare-fun lt!2638379 () Option!17253)

(assert (=> b!7517479 (= c!1389068 (is-Some!17252 lt!2638379))))

(assert (=> b!7517479 (= lt!2638379 call!689432)))

(assert (=> b!7517479 (= e!4481722 e!4481717)))

(declare-fun bm!689427 () Bool)

(assert (=> bm!689427 (= call!689431 (getLanguageWitness!1096 (ite c!1389071 (regTwo!40025 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517480 () Bool)

(assert (=> b!7517480 (= e!4481719 (Some!17252 Nil!72520))))

(declare-fun b!7517481 () Bool)

(assert (=> b!7517481 (= e!4481717 (Some!17252 (++!17359 (v!54387 lt!2638381) (v!54387 lt!2638379))))))

(declare-fun b!7517482 () Bool)

(assert (=> b!7517482 (= e!4481720 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517483 () Bool)

(assert (=> b!7517483 (= e!4481715 e!4481718)))

(declare-fun c!1389067 () Bool)

(assert (=> b!7517483 (= c!1389067 (is-EmptyLang!19756 (ite c!1388940 (regTwo!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517484 () Bool)

(assert (=> b!7517484 (= e!4481718 None!17252)))

(declare-fun b!7517485 () Bool)

(assert (=> b!7517485 (= e!4481722 None!17252)))

(assert (= (and d!2308232 c!1389065) b!7517477))

(assert (= (and d!2308232 (not c!1389065)) b!7517483))

(assert (= (and b!7517483 c!1389067) b!7517484))

(assert (= (and b!7517483 (not c!1389067)) b!7517470))

(assert (= (and b!7517470 c!1389066) b!7517482))

(assert (= (and b!7517470 (not c!1389066)) b!7517476))

(assert (= (and b!7517476 c!1389070) b!7517480))

(assert (= (and b!7517476 (not c!1389070)) b!7517474))

(assert (= (and b!7517474 c!1389071) b!7517472))

(assert (= (and b!7517474 (not c!1389071)) b!7517478))

(assert (= (and b!7517472 c!1389069) b!7517471))

(assert (= (and b!7517472 (not c!1389069)) b!7517473))

(assert (= (and b!7517478 c!1389064) b!7517479))

(assert (= (and b!7517478 (not c!1389064)) b!7517485))

(assert (= (and b!7517479 c!1389068) b!7517481))

(assert (= (and b!7517479 (not c!1389068)) b!7517475))

(assert (= (or b!7517473 b!7517478) bm!689427))

(assert (= (or b!7517472 b!7517479) bm!689426))

(declare-fun m!8098714 () Bool)

(assert (=> bm!689426 m!8098714))

(declare-fun m!8098716 () Bool)

(assert (=> bm!689427 m!8098716))

(declare-fun m!8098718 () Bool)

(assert (=> b!7517481 m!8098718))

(assert (=> bm!689389 d!2308232))

(declare-fun d!2308234 () Bool)

(declare-fun c!1389072 () Bool)

(assert (=> d!2308234 (= c!1389072 (is-Nil!72520 lt!2638302))))

(declare-fun e!4481723 () (Set C!39838))

(assert (=> d!2308234 (= (content!15343 lt!2638302) e!4481723)))

(declare-fun b!7517486 () Bool)

(assert (=> b!7517486 (= e!4481723 (as set.empty (Set C!39838)))))

(declare-fun b!7517487 () Bool)

(assert (=> b!7517487 (= e!4481723 (set.union (set.insert (h!78968 lt!2638302) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638302))))))

(assert (= (and d!2308234 c!1389072) b!7517486))

(assert (= (and d!2308234 (not c!1389072)) b!7517487))

(declare-fun m!8098720 () Bool)

(assert (=> b!7517487 m!8098720))

(declare-fun m!8098722 () Bool)

(assert (=> b!7517487 m!8098722))

(assert (=> d!2308054 d!2308234))

(declare-fun d!2308236 () Bool)

(declare-fun c!1389073 () Bool)

(assert (=> d!2308236 (= c!1389073 (is-Nil!72520 (v!54387 lt!2638267)))))

(declare-fun e!4481724 () (Set C!39838))

(assert (=> d!2308236 (= (content!15343 (v!54387 lt!2638267)) e!4481724)))

(declare-fun b!7517488 () Bool)

(assert (=> b!7517488 (= e!4481724 (as set.empty (Set C!39838)))))

(declare-fun b!7517489 () Bool)

(assert (=> b!7517489 (= e!4481724 (set.union (set.insert (h!78968 (v!54387 lt!2638267)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638267)))))))

(assert (= (and d!2308236 c!1389073) b!7517488))

(assert (= (and d!2308236 (not c!1389073)) b!7517489))

(declare-fun m!8098724 () Bool)

(assert (=> b!7517489 m!8098724))

(assert (=> b!7517489 m!8098708))

(assert (=> d!2308054 d!2308236))

(declare-fun d!2308238 () Bool)

(declare-fun c!1389074 () Bool)

(assert (=> d!2308238 (= c!1389074 (is-Nil!72520 (v!54387 lt!2638265)))))

(declare-fun e!4481725 () (Set C!39838))

(assert (=> d!2308238 (= (content!15343 (v!54387 lt!2638265)) e!4481725)))

(declare-fun b!7517490 () Bool)

(assert (=> b!7517490 (= e!4481725 (as set.empty (Set C!39838)))))

(declare-fun b!7517491 () Bool)

(assert (=> b!7517491 (= e!4481725 (set.union (set.insert (h!78968 (v!54387 lt!2638265)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638265)))))))

(assert (= (and d!2308238 c!1389074) b!7517490))

(assert (= (and d!2308238 (not c!1389074)) b!7517491))

(declare-fun m!8098726 () Bool)

(assert (=> b!7517491 m!8098726))

(declare-fun m!8098728 () Bool)

(assert (=> b!7517491 m!8098728))

(assert (=> d!2308054 d!2308238))

(declare-fun b!7517492 () Bool)

(declare-fun e!4481727 () List!72644)

(assert (=> b!7517492 (= e!4481727 (v!54387 lt!2638234))))

(declare-fun e!4481726 () Bool)

(declare-fun b!7517495 () Bool)

(declare-fun lt!2638382 () List!72644)

(assert (=> b!7517495 (= e!4481726 (or (not (= (v!54387 lt!2638234) Nil!72520)) (= lt!2638382 (t!387281 (t!387281 (v!54387 lt!2638236))))))))

(declare-fun b!7517494 () Bool)

(declare-fun res!3013908 () Bool)

(assert (=> b!7517494 (=> (not res!3013908) (not e!4481726))))

(assert (=> b!7517494 (= res!3013908 (= (size!42300 lt!2638382) (+ (size!42300 (t!387281 (t!387281 (v!54387 lt!2638236)))) (size!42300 (v!54387 lt!2638234)))))))

(declare-fun b!7517493 () Bool)

(assert (=> b!7517493 (= e!4481727 (Cons!72520 (h!78968 (t!387281 (t!387281 (v!54387 lt!2638236)))) (++!17359 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638236)))) (v!54387 lt!2638234))))))

(declare-fun d!2308240 () Bool)

(assert (=> d!2308240 e!4481726))

(declare-fun res!3013909 () Bool)

(assert (=> d!2308240 (=> (not res!3013909) (not e!4481726))))

(assert (=> d!2308240 (= res!3013909 (= (content!15343 lt!2638382) (set.union (content!15343 (t!387281 (t!387281 (v!54387 lt!2638236)))) (content!15343 (v!54387 lt!2638234)))))))

(assert (=> d!2308240 (= lt!2638382 e!4481727)))

(declare-fun c!1389075 () Bool)

(assert (=> d!2308240 (= c!1389075 (is-Nil!72520 (t!387281 (t!387281 (v!54387 lt!2638236)))))))

(assert (=> d!2308240 (= (++!17359 (t!387281 (t!387281 (v!54387 lt!2638236))) (v!54387 lt!2638234)) lt!2638382)))

(assert (= (and d!2308240 c!1389075) b!7517492))

(assert (= (and d!2308240 (not c!1389075)) b!7517493))

(assert (= (and d!2308240 res!3013909) b!7517494))

(assert (= (and b!7517494 res!3013908) b!7517495))

(declare-fun m!8098730 () Bool)

(assert (=> b!7517494 m!8098730))

(declare-fun m!8098732 () Bool)

(assert (=> b!7517494 m!8098732))

(assert (=> b!7517494 m!8098070))

(declare-fun m!8098734 () Bool)

(assert (=> b!7517493 m!8098734))

(declare-fun m!8098736 () Bool)

(assert (=> d!2308240 m!8098736))

(assert (=> d!2308240 m!8098698))

(assert (=> d!2308240 m!8098078))

(assert (=> b!7516886 d!2308240))

(declare-fun c!1389078 () Bool)

(declare-fun b!7517496 () Bool)

(assert (=> b!7517496 (= c!1389078 (is-ElementMatch!19756 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481731 () Option!17253)

(declare-fun e!4481733 () Option!17253)

(assert (=> b!7517496 (= e!4481731 e!4481733)))

(declare-fun d!2308242 () Bool)

(declare-fun c!1389077 () Bool)

(assert (=> d!2308242 (= c!1389077 (is-EmptyExpr!19756 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481728 () Option!17253)

(assert (=> d!2308242 (= (getLanguageWitness!1096 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481728)))

(declare-fun b!7517497 () Bool)

(declare-fun e!4481734 () Option!17253)

(declare-fun lt!2638384 () Option!17253)

(assert (=> b!7517497 (= e!4481734 lt!2638384)))

(declare-fun b!7517498 () Bool)

(declare-fun e!4481729 () Option!17253)

(assert (=> b!7517498 (= e!4481729 e!4481734)))

(declare-fun call!689434 () Option!17253)

(assert (=> b!7517498 (= lt!2638384 call!689434)))

(declare-fun c!1389081 () Bool)

(assert (=> b!7517498 (= c!1389081 (is-Some!17252 lt!2638384))))

(declare-fun b!7517499 () Bool)

(declare-fun call!689433 () Option!17253)

(assert (=> b!7517499 (= e!4481734 call!689433)))

(declare-fun c!1389083 () Bool)

(declare-fun b!7517500 () Bool)

(assert (=> b!7517500 (= c!1389083 (is-Union!19756 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481732 () Option!17253)

(assert (=> b!7517500 (= e!4481732 e!4481729)))

(declare-fun b!7517501 () Bool)

(declare-fun e!4481730 () Option!17253)

(assert (=> b!7517501 (= e!4481730 None!17252)))

(declare-fun bm!689428 () Bool)

(assert (=> bm!689428 (= call!689434 (getLanguageWitness!1096 (ite c!1389083 (regOne!40025 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517502 () Bool)

(assert (=> b!7517502 (= e!4481733 e!4481732)))

(declare-fun c!1389082 () Bool)

(assert (=> b!7517502 (= c!1389082 (is-Star!19756 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517503 () Bool)

(assert (=> b!7517503 (= e!4481728 (Some!17252 Nil!72520))))

(declare-fun b!7517504 () Bool)

(declare-fun e!4481735 () Option!17253)

(assert (=> b!7517504 (= e!4481729 e!4481735)))

(declare-fun lt!2638385 () Option!17253)

(assert (=> b!7517504 (= lt!2638385 call!689433)))

(declare-fun c!1389076 () Bool)

(assert (=> b!7517504 (= c!1389076 (is-Some!17252 lt!2638385))))

(declare-fun b!7517505 () Bool)

(declare-fun c!1389080 () Bool)

(declare-fun lt!2638383 () Option!17253)

(assert (=> b!7517505 (= c!1389080 (is-Some!17252 lt!2638383))))

(assert (=> b!7517505 (= lt!2638383 call!689434)))

(assert (=> b!7517505 (= e!4481735 e!4481730)))

(declare-fun bm!689429 () Bool)

(assert (=> bm!689429 (= call!689433 (getLanguageWitness!1096 (ite c!1389083 (regTwo!40025 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517506 () Bool)

(assert (=> b!7517506 (= e!4481732 (Some!17252 Nil!72520))))

(declare-fun b!7517507 () Bool)

(assert (=> b!7517507 (= e!4481730 (Some!17252 (++!17359 (v!54387 lt!2638385) (v!54387 lt!2638383))))))

(declare-fun b!7517508 () Bool)

(assert (=> b!7517508 (= e!4481733 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517509 () Bool)

(assert (=> b!7517509 (= e!4481728 e!4481731)))

(declare-fun c!1389079 () Bool)

(assert (=> b!7517509 (= c!1389079 (is-EmptyLang!19756 (ite c!1388867 (regTwo!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517510 () Bool)

(assert (=> b!7517510 (= e!4481731 None!17252)))

(declare-fun b!7517511 () Bool)

(assert (=> b!7517511 (= e!4481735 None!17252)))

(assert (= (and d!2308242 c!1389077) b!7517503))

(assert (= (and d!2308242 (not c!1389077)) b!7517509))

(assert (= (and b!7517509 c!1389079) b!7517510))

(assert (= (and b!7517509 (not c!1389079)) b!7517496))

(assert (= (and b!7517496 c!1389078) b!7517508))

(assert (= (and b!7517496 (not c!1389078)) b!7517502))

(assert (= (and b!7517502 c!1389082) b!7517506))

(assert (= (and b!7517502 (not c!1389082)) b!7517500))

(assert (= (and b!7517500 c!1389083) b!7517498))

(assert (= (and b!7517500 (not c!1389083)) b!7517504))

(assert (= (and b!7517498 c!1389081) b!7517497))

(assert (= (and b!7517498 (not c!1389081)) b!7517499))

(assert (= (and b!7517504 c!1389076) b!7517505))

(assert (= (and b!7517504 (not c!1389076)) b!7517511))

(assert (= (and b!7517505 c!1389080) b!7517507))

(assert (= (and b!7517505 (not c!1389080)) b!7517501))

(assert (= (or b!7517499 b!7517504) bm!689429))

(assert (= (or b!7517498 b!7517505) bm!689428))

(declare-fun m!8098738 () Bool)

(assert (=> bm!689428 m!8098738))

(declare-fun m!8098740 () Bool)

(assert (=> bm!689429 m!8098740))

(declare-fun m!8098742 () Bool)

(assert (=> b!7517507 m!8098742))

(assert (=> bm!689365 d!2308242))

(declare-fun d!2308244 () Bool)

(declare-fun lt!2638386 () Int)

(assert (=> d!2308244 (>= lt!2638386 0)))

(declare-fun e!4481736 () Int)

(assert (=> d!2308244 (= lt!2638386 e!4481736)))

(declare-fun c!1389084 () Bool)

(assert (=> d!2308244 (= c!1389084 (is-Nil!72520 lt!2638320))))

(assert (=> d!2308244 (= (size!42300 lt!2638320) lt!2638386)))

(declare-fun b!7517512 () Bool)

(assert (=> b!7517512 (= e!4481736 0)))

(declare-fun b!7517513 () Bool)

(assert (=> b!7517513 (= e!4481736 (+ 1 (size!42300 (t!387281 lt!2638320))))))

(assert (= (and d!2308244 c!1389084) b!7517512))

(assert (= (and d!2308244 (not c!1389084)) b!7517513))

(declare-fun m!8098744 () Bool)

(assert (=> b!7517513 m!8098744))

(assert (=> b!7516891 d!2308244))

(declare-fun d!2308246 () Bool)

(declare-fun lt!2638387 () Int)

(assert (=> d!2308246 (>= lt!2638387 0)))

(declare-fun e!4481737 () Int)

(assert (=> d!2308246 (= lt!2638387 e!4481737)))

(declare-fun c!1389085 () Bool)

(assert (=> d!2308246 (= c!1389085 (is-Nil!72520 (t!387281 (t!387281 (v!54387 lt!2638221)))))))

(assert (=> d!2308246 (= (size!42300 (t!387281 (t!387281 (v!54387 lt!2638221)))) lt!2638387)))

(declare-fun b!7517514 () Bool)

(assert (=> b!7517514 (= e!4481737 0)))

(declare-fun b!7517515 () Bool)

(assert (=> b!7517515 (= e!4481737 (+ 1 (size!42300 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221)))))))))

(assert (= (and d!2308246 c!1389085) b!7517514))

(assert (= (and d!2308246 (not c!1389085)) b!7517515))

(declare-fun m!8098746 () Bool)

(assert (=> b!7517515 m!8098746))

(assert (=> b!7516891 d!2308246))

(assert (=> b!7516891 d!2307974))

(declare-fun d!2308248 () Bool)

(declare-fun lt!2638388 () Int)

(assert (=> d!2308248 (>= lt!2638388 0)))

(declare-fun e!4481738 () Int)

(assert (=> d!2308248 (= lt!2638388 e!4481738)))

(declare-fun c!1389086 () Bool)

(assert (=> d!2308248 (= c!1389086 (is-Nil!72520 (t!387281 lt!2638255)))))

(assert (=> d!2308248 (= (size!42300 (t!387281 lt!2638255)) lt!2638388)))

(declare-fun b!7517516 () Bool)

(assert (=> b!7517516 (= e!4481738 0)))

(declare-fun b!7517517 () Bool)

(assert (=> b!7517517 (= e!4481738 (+ 1 (size!42300 (t!387281 (t!387281 lt!2638255)))))))

(assert (= (and d!2308248 c!1389086) b!7517516))

(assert (= (and d!2308248 (not c!1389086)) b!7517517))

(declare-fun m!8098748 () Bool)

(assert (=> b!7517517 m!8098748))

(assert (=> b!7516924 d!2308248))

(declare-fun d!2308250 () Bool)

(assert (=> d!2308250 (= (nullable!8596 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (nullableFct!3433 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun bs!1939420 () Bool)

(assert (= bs!1939420 d!2308250))

(declare-fun m!8098750 () Bool)

(assert (=> bs!1939420 m!8098750))

(assert (=> b!7516933 d!2308250))

(declare-fun d!2308252 () Bool)

(declare-fun lt!2638389 () Int)

(assert (=> d!2308252 (>= lt!2638389 0)))

(declare-fun e!4481739 () Int)

(assert (=> d!2308252 (= lt!2638389 e!4481739)))

(declare-fun c!1389087 () Bool)

(assert (=> d!2308252 (= c!1389087 (is-Nil!72520 (t!387281 (t!387281 (v!54387 lt!2638219)))))))

(assert (=> d!2308252 (= (size!42300 (t!387281 (t!387281 (v!54387 lt!2638219)))) lt!2638389)))

(declare-fun b!7517518 () Bool)

(assert (=> b!7517518 (= e!4481739 0)))

(declare-fun b!7517519 () Bool)

(assert (=> b!7517519 (= e!4481739 (+ 1 (size!42300 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638219)))))))))

(assert (= (and d!2308252 c!1389087) b!7517518))

(assert (= (and d!2308252 (not c!1389087)) b!7517519))

(declare-fun m!8098752 () Bool)

(assert (=> b!7517519 m!8098752))

(assert (=> b!7516941 d!2308252))

(declare-fun d!2308254 () Bool)

(declare-fun lt!2638390 () Int)

(assert (=> d!2308254 (>= lt!2638390 0)))

(declare-fun e!4481740 () Int)

(assert (=> d!2308254 (= lt!2638390 e!4481740)))

(declare-fun c!1389088 () Bool)

(assert (=> d!2308254 (= c!1389088 (is-Nil!72520 lt!2638315))))

(assert (=> d!2308254 (= (size!42300 lt!2638315) lt!2638390)))

(declare-fun b!7517520 () Bool)

(assert (=> b!7517520 (= e!4481740 0)))

(declare-fun b!7517521 () Bool)

(assert (=> b!7517521 (= e!4481740 (+ 1 (size!42300 (t!387281 lt!2638315))))))

(assert (= (and d!2308254 c!1389088) b!7517520))

(assert (= (and d!2308254 (not c!1389088)) b!7517521))

(declare-fun m!8098754 () Bool)

(assert (=> b!7517521 m!8098754))

(assert (=> b!7516865 d!2308254))

(declare-fun d!2308256 () Bool)

(declare-fun lt!2638391 () Int)

(assert (=> d!2308256 (>= lt!2638391 0)))

(declare-fun e!4481741 () Int)

(assert (=> d!2308256 (= lt!2638391 e!4481741)))

(declare-fun c!1389089 () Bool)

(assert (=> d!2308256 (= c!1389089 (is-Nil!72520 (t!387281 (v!54387 lt!2638239))))))

(assert (=> d!2308256 (= (size!42300 (t!387281 (v!54387 lt!2638239))) lt!2638391)))

(declare-fun b!7517522 () Bool)

(assert (=> b!7517522 (= e!4481741 0)))

(declare-fun b!7517523 () Bool)

(assert (=> b!7517523 (= e!4481741 (+ 1 (size!42300 (t!387281 (t!387281 (v!54387 lt!2638239))))))))

(assert (= (and d!2308256 c!1389089) b!7517522))

(assert (= (and d!2308256 (not c!1389089)) b!7517523))

(declare-fun m!8098756 () Bool)

(assert (=> b!7517523 m!8098756))

(assert (=> b!7516865 d!2308256))

(assert (=> b!7516865 d!2308050))

(declare-fun c!1389092 () Bool)

(declare-fun b!7517524 () Bool)

(assert (=> b!7517524 (= c!1389092 (is-ElementMatch!19756 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481745 () Option!17253)

(declare-fun e!4481747 () Option!17253)

(assert (=> b!7517524 (= e!4481745 e!4481747)))

(declare-fun d!2308258 () Bool)

(declare-fun c!1389091 () Bool)

(assert (=> d!2308258 (= c!1389091 (is-EmptyExpr!19756 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481742 () Option!17253)

(assert (=> d!2308258 (= (getLanguageWitness!1096 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481742)))

(declare-fun b!7517525 () Bool)

(declare-fun e!4481748 () Option!17253)

(declare-fun lt!2638393 () Option!17253)

(assert (=> b!7517525 (= e!4481748 lt!2638393)))

(declare-fun b!7517526 () Bool)

(declare-fun e!4481743 () Option!17253)

(assert (=> b!7517526 (= e!4481743 e!4481748)))

(declare-fun call!689436 () Option!17253)

(assert (=> b!7517526 (= lt!2638393 call!689436)))

(declare-fun c!1389095 () Bool)

(assert (=> b!7517526 (= c!1389095 (is-Some!17252 lt!2638393))))

(declare-fun b!7517527 () Bool)

(declare-fun call!689435 () Option!17253)

(assert (=> b!7517527 (= e!4481748 call!689435)))

(declare-fun b!7517528 () Bool)

(declare-fun c!1389097 () Bool)

(assert (=> b!7517528 (= c!1389097 (is-Union!19756 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481746 () Option!17253)

(assert (=> b!7517528 (= e!4481746 e!4481743)))

(declare-fun b!7517529 () Bool)

(declare-fun e!4481744 () Option!17253)

(assert (=> b!7517529 (= e!4481744 None!17252)))

(declare-fun bm!689430 () Bool)

(assert (=> bm!689430 (= call!689436 (getLanguageWitness!1096 (ite c!1389097 (regOne!40025 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517530 () Bool)

(assert (=> b!7517530 (= e!4481747 e!4481746)))

(declare-fun c!1389096 () Bool)

(assert (=> b!7517530 (= c!1389096 (is-Star!19756 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517531 () Bool)

(assert (=> b!7517531 (= e!4481742 (Some!17252 Nil!72520))))

(declare-fun b!7517532 () Bool)

(declare-fun e!4481749 () Option!17253)

(assert (=> b!7517532 (= e!4481743 e!4481749)))

(declare-fun lt!2638394 () Option!17253)

(assert (=> b!7517532 (= lt!2638394 call!689435)))

(declare-fun c!1389090 () Bool)

(assert (=> b!7517532 (= c!1389090 (is-Some!17252 lt!2638394))))

(declare-fun b!7517533 () Bool)

(declare-fun c!1389094 () Bool)

(declare-fun lt!2638392 () Option!17253)

(assert (=> b!7517533 (= c!1389094 (is-Some!17252 lt!2638392))))

(assert (=> b!7517533 (= lt!2638392 call!689436)))

(assert (=> b!7517533 (= e!4481749 e!4481744)))

(declare-fun bm!689431 () Bool)

(assert (=> bm!689431 (= call!689435 (getLanguageWitness!1096 (ite c!1389097 (regTwo!40025 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517534 () Bool)

(assert (=> b!7517534 (= e!4481746 (Some!17252 Nil!72520))))

(declare-fun b!7517535 () Bool)

(assert (=> b!7517535 (= e!4481744 (Some!17252 (++!17359 (v!54387 lt!2638394) (v!54387 lt!2638392))))))

(declare-fun b!7517536 () Bool)

(assert (=> b!7517536 (= e!4481747 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517537 () Bool)

(assert (=> b!7517537 (= e!4481742 e!4481745)))

(declare-fun c!1389093 () Bool)

(assert (=> b!7517537 (= c!1389093 (is-EmptyLang!19756 (ite c!1388890 (regOne!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517538 () Bool)

(assert (=> b!7517538 (= e!4481745 None!17252)))

(declare-fun b!7517539 () Bool)

(assert (=> b!7517539 (= e!4481749 None!17252)))

(assert (= (and d!2308258 c!1389091) b!7517531))

(assert (= (and d!2308258 (not c!1389091)) b!7517537))

(assert (= (and b!7517537 c!1389093) b!7517538))

(assert (= (and b!7517537 (not c!1389093)) b!7517524))

(assert (= (and b!7517524 c!1389092) b!7517536))

(assert (= (and b!7517524 (not c!1389092)) b!7517530))

(assert (= (and b!7517530 c!1389096) b!7517534))

(assert (= (and b!7517530 (not c!1389096)) b!7517528))

(assert (= (and b!7517528 c!1389097) b!7517526))

(assert (= (and b!7517528 (not c!1389097)) b!7517532))

(assert (= (and b!7517526 c!1389095) b!7517525))

(assert (= (and b!7517526 (not c!1389095)) b!7517527))

(assert (= (and b!7517532 c!1389090) b!7517533))

(assert (= (and b!7517532 (not c!1389090)) b!7517539))

(assert (= (and b!7517533 c!1389094) b!7517535))

(assert (= (and b!7517533 (not c!1389094)) b!7517529))

(assert (= (or b!7517527 b!7517532) bm!689431))

(assert (= (or b!7517526 b!7517533) bm!689430))

(declare-fun m!8098758 () Bool)

(assert (=> bm!689430 m!8098758))

(declare-fun m!8098760 () Bool)

(assert (=> bm!689431 m!8098760))

(declare-fun m!8098762 () Bool)

(assert (=> b!7517535 m!8098762))

(assert (=> bm!689371 d!2308258))

(declare-fun b!7517540 () Bool)

(declare-fun e!4481751 () List!72644)

(assert (=> b!7517540 (= e!4481751 (v!54387 lt!2638321))))

(declare-fun b!7517543 () Bool)

(declare-fun lt!2638395 () List!72644)

(declare-fun e!4481750 () Bool)

(assert (=> b!7517543 (= e!4481750 (or (not (= (v!54387 lt!2638321) Nil!72520)) (= lt!2638395 (v!54387 lt!2638323))))))

(declare-fun b!7517542 () Bool)

(declare-fun res!3013910 () Bool)

(assert (=> b!7517542 (=> (not res!3013910) (not e!4481750))))

(assert (=> b!7517542 (= res!3013910 (= (size!42300 lt!2638395) (+ (size!42300 (v!54387 lt!2638323)) (size!42300 (v!54387 lt!2638321)))))))

(declare-fun b!7517541 () Bool)

(assert (=> b!7517541 (= e!4481751 (Cons!72520 (h!78968 (v!54387 lt!2638323)) (++!17359 (t!387281 (v!54387 lt!2638323)) (v!54387 lt!2638321))))))

(declare-fun d!2308260 () Bool)

(assert (=> d!2308260 e!4481750))

(declare-fun res!3013911 () Bool)

(assert (=> d!2308260 (=> (not res!3013911) (not e!4481750))))

(assert (=> d!2308260 (= res!3013911 (= (content!15343 lt!2638395) (set.union (content!15343 (v!54387 lt!2638323)) (content!15343 (v!54387 lt!2638321)))))))

(assert (=> d!2308260 (= lt!2638395 e!4481751)))

(declare-fun c!1389098 () Bool)

(assert (=> d!2308260 (= c!1389098 (is-Nil!72520 (v!54387 lt!2638323)))))

(assert (=> d!2308260 (= (++!17359 (v!54387 lt!2638323) (v!54387 lt!2638321)) lt!2638395)))

(assert (= (and d!2308260 c!1389098) b!7517540))

(assert (= (and d!2308260 (not c!1389098)) b!7517541))

(assert (= (and d!2308260 res!3013911) b!7517542))

(assert (= (and b!7517542 res!3013910) b!7517543))

(declare-fun m!8098764 () Bool)

(assert (=> b!7517542 m!8098764))

(declare-fun m!8098766 () Bool)

(assert (=> b!7517542 m!8098766))

(declare-fun m!8098768 () Bool)

(assert (=> b!7517542 m!8098768))

(declare-fun m!8098770 () Bool)

(assert (=> b!7517541 m!8098770))

(declare-fun m!8098772 () Bool)

(assert (=> d!2308260 m!8098772))

(declare-fun m!8098774 () Bool)

(assert (=> d!2308260 m!8098774))

(declare-fun m!8098776 () Bool)

(assert (=> d!2308260 m!8098776))

(assert (=> b!7516904 d!2308260))

(declare-fun c!1389101 () Bool)

(declare-fun b!7517544 () Bool)

(assert (=> b!7517544 (= c!1389101 (is-ElementMatch!19756 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481755 () Option!17253)

(declare-fun e!4481757 () Option!17253)

(assert (=> b!7517544 (= e!4481755 e!4481757)))

(declare-fun c!1389100 () Bool)

(declare-fun d!2308262 () Bool)

(assert (=> d!2308262 (= c!1389100 (is-EmptyExpr!19756 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481752 () Option!17253)

(assert (=> d!2308262 (= (getLanguageWitness!1096 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481752)))

(declare-fun b!7517545 () Bool)

(declare-fun e!4481758 () Option!17253)

(declare-fun lt!2638397 () Option!17253)

(assert (=> b!7517545 (= e!4481758 lt!2638397)))

(declare-fun b!7517546 () Bool)

(declare-fun e!4481753 () Option!17253)

(assert (=> b!7517546 (= e!4481753 e!4481758)))

(declare-fun call!689438 () Option!17253)

(assert (=> b!7517546 (= lt!2638397 call!689438)))

(declare-fun c!1389104 () Bool)

(assert (=> b!7517546 (= c!1389104 (is-Some!17252 lt!2638397))))

(declare-fun b!7517547 () Bool)

(declare-fun call!689437 () Option!17253)

(assert (=> b!7517547 (= e!4481758 call!689437)))

(declare-fun c!1389106 () Bool)

(declare-fun b!7517548 () Bool)

(assert (=> b!7517548 (= c!1389106 (is-Union!19756 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481756 () Option!17253)

(assert (=> b!7517548 (= e!4481756 e!4481753)))

(declare-fun b!7517549 () Bool)

(declare-fun e!4481754 () Option!17253)

(assert (=> b!7517549 (= e!4481754 None!17252)))

(declare-fun bm!689432 () Bool)

(assert (=> bm!689432 (= call!689438 (getLanguageWitness!1096 (ite c!1389106 (regOne!40025 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517550 () Bool)

(assert (=> b!7517550 (= e!4481757 e!4481756)))

(declare-fun c!1389105 () Bool)

(assert (=> b!7517550 (= c!1389105 (is-Star!19756 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517551 () Bool)

(assert (=> b!7517551 (= e!4481752 (Some!17252 Nil!72520))))

(declare-fun b!7517552 () Bool)

(declare-fun e!4481759 () Option!17253)

(assert (=> b!7517552 (= e!4481753 e!4481759)))

(declare-fun lt!2638398 () Option!17253)

(assert (=> b!7517552 (= lt!2638398 call!689437)))

(declare-fun c!1389099 () Bool)

(assert (=> b!7517552 (= c!1389099 (is-Some!17252 lt!2638398))))

(declare-fun b!7517553 () Bool)

(declare-fun c!1389103 () Bool)

(declare-fun lt!2638396 () Option!17253)

(assert (=> b!7517553 (= c!1389103 (is-Some!17252 lt!2638396))))

(assert (=> b!7517553 (= lt!2638396 call!689438)))

(assert (=> b!7517553 (= e!4481759 e!4481754)))

(declare-fun bm!689433 () Bool)

(assert (=> bm!689433 (= call!689437 (getLanguageWitness!1096 (ite c!1389106 (regTwo!40025 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517554 () Bool)

(assert (=> b!7517554 (= e!4481756 (Some!17252 Nil!72520))))

(declare-fun b!7517555 () Bool)

(assert (=> b!7517555 (= e!4481754 (Some!17252 (++!17359 (v!54387 lt!2638398) (v!54387 lt!2638396))))))

(declare-fun b!7517556 () Bool)

(assert (=> b!7517556 (= e!4481757 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517557 () Bool)

(assert (=> b!7517557 (= e!4481752 e!4481755)))

(declare-fun c!1389102 () Bool)

(assert (=> b!7517557 (= c!1389102 (is-EmptyLang!19756 (ite c!1388905 (regOne!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517558 () Bool)

(assert (=> b!7517558 (= e!4481755 None!17252)))

(declare-fun b!7517559 () Bool)

(assert (=> b!7517559 (= e!4481759 None!17252)))

(assert (= (and d!2308262 c!1389100) b!7517551))

(assert (= (and d!2308262 (not c!1389100)) b!7517557))

(assert (= (and b!7517557 c!1389102) b!7517558))

(assert (= (and b!7517557 (not c!1389102)) b!7517544))

(assert (= (and b!7517544 c!1389101) b!7517556))

(assert (= (and b!7517544 (not c!1389101)) b!7517550))

(assert (= (and b!7517550 c!1389105) b!7517554))

(assert (= (and b!7517550 (not c!1389105)) b!7517548))

(assert (= (and b!7517548 c!1389106) b!7517546))

(assert (= (and b!7517548 (not c!1389106)) b!7517552))

(assert (= (and b!7517546 c!1389104) b!7517545))

(assert (= (and b!7517546 (not c!1389104)) b!7517547))

(assert (= (and b!7517552 c!1389099) b!7517553))

(assert (= (and b!7517552 (not c!1389099)) b!7517559))

(assert (= (and b!7517553 c!1389103) b!7517555))

(assert (= (and b!7517553 (not c!1389103)) b!7517549))

(assert (= (or b!7517547 b!7517552) bm!689433))

(assert (= (or b!7517546 b!7517553) bm!689432))

(declare-fun m!8098778 () Bool)

(assert (=> bm!689432 m!8098778))

(declare-fun m!8098780 () Bool)

(assert (=> bm!689433 m!8098780))

(declare-fun m!8098782 () Bool)

(assert (=> b!7517555 m!8098782))

(assert (=> bm!689373 d!2308262))

(declare-fun b!7517560 () Bool)

(declare-fun e!4481761 () List!72644)

(assert (=> b!7517560 (= e!4481761 (v!54387 lt!2638289))))

(declare-fun e!4481760 () Bool)

(declare-fun lt!2638399 () List!72644)

(declare-fun b!7517563 () Bool)

(assert (=> b!7517563 (= e!4481760 (or (not (= (v!54387 lt!2638289) Nil!72520)) (= lt!2638399 (v!54387 lt!2638291))))))

(declare-fun b!7517562 () Bool)

(declare-fun res!3013912 () Bool)

(assert (=> b!7517562 (=> (not res!3013912) (not e!4481760))))

(assert (=> b!7517562 (= res!3013912 (= (size!42300 lt!2638399) (+ (size!42300 (v!54387 lt!2638291)) (size!42300 (v!54387 lt!2638289)))))))

(declare-fun b!7517561 () Bool)

(assert (=> b!7517561 (= e!4481761 (Cons!72520 (h!78968 (v!54387 lt!2638291)) (++!17359 (t!387281 (v!54387 lt!2638291)) (v!54387 lt!2638289))))))

(declare-fun d!2308264 () Bool)

(assert (=> d!2308264 e!4481760))

(declare-fun res!3013913 () Bool)

(assert (=> d!2308264 (=> (not res!3013913) (not e!4481760))))

(assert (=> d!2308264 (= res!3013913 (= (content!15343 lt!2638399) (set.union (content!15343 (v!54387 lt!2638291)) (content!15343 (v!54387 lt!2638289)))))))

(assert (=> d!2308264 (= lt!2638399 e!4481761)))

(declare-fun c!1389107 () Bool)

(assert (=> d!2308264 (= c!1389107 (is-Nil!72520 (v!54387 lt!2638291)))))

(assert (=> d!2308264 (= (++!17359 (v!54387 lt!2638291) (v!54387 lt!2638289)) lt!2638399)))

(assert (= (and d!2308264 c!1389107) b!7517560))

(assert (= (and d!2308264 (not c!1389107)) b!7517561))

(assert (= (and d!2308264 res!3013913) b!7517562))

(assert (= (and b!7517562 res!3013912) b!7517563))

(declare-fun m!8098784 () Bool)

(assert (=> b!7517562 m!8098784))

(declare-fun m!8098786 () Bool)

(assert (=> b!7517562 m!8098786))

(declare-fun m!8098788 () Bool)

(assert (=> b!7517562 m!8098788))

(declare-fun m!8098790 () Bool)

(assert (=> b!7517561 m!8098790))

(declare-fun m!8098792 () Bool)

(assert (=> d!2308264 m!8098792))

(declare-fun m!8098794 () Bool)

(assert (=> d!2308264 m!8098794))

(declare-fun m!8098796 () Bool)

(assert (=> d!2308264 m!8098796))

(assert (=> b!7516721 d!2308264))

(declare-fun b!7517564 () Bool)

(declare-fun c!1389110 () Bool)

(assert (=> b!7517564 (= c!1389110 (is-ElementMatch!19756 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481765 () Option!17253)

(declare-fun e!4481767 () Option!17253)

(assert (=> b!7517564 (= e!4481765 e!4481767)))

(declare-fun c!1389109 () Bool)

(declare-fun d!2308266 () Bool)

(assert (=> d!2308266 (= c!1389109 (is-EmptyExpr!19756 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481762 () Option!17253)

(assert (=> d!2308266 (= (getLanguageWitness!1096 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481762)))

(declare-fun b!7517565 () Bool)

(declare-fun e!4481768 () Option!17253)

(declare-fun lt!2638401 () Option!17253)

(assert (=> b!7517565 (= e!4481768 lt!2638401)))

(declare-fun b!7517566 () Bool)

(declare-fun e!4481763 () Option!17253)

(assert (=> b!7517566 (= e!4481763 e!4481768)))

(declare-fun call!689440 () Option!17253)

(assert (=> b!7517566 (= lt!2638401 call!689440)))

(declare-fun c!1389113 () Bool)

(assert (=> b!7517566 (= c!1389113 (is-Some!17252 lt!2638401))))

(declare-fun b!7517567 () Bool)

(declare-fun call!689439 () Option!17253)

(assert (=> b!7517567 (= e!4481768 call!689439)))

(declare-fun c!1389115 () Bool)

(declare-fun b!7517568 () Bool)

(assert (=> b!7517568 (= c!1389115 (is-Union!19756 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481766 () Option!17253)

(assert (=> b!7517568 (= e!4481766 e!4481763)))

(declare-fun b!7517569 () Bool)

(declare-fun e!4481764 () Option!17253)

(assert (=> b!7517569 (= e!4481764 None!17252)))

(declare-fun bm!689434 () Bool)

(assert (=> bm!689434 (= call!689440 (getLanguageWitness!1096 (ite c!1389115 (regOne!40025 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517570 () Bool)

(assert (=> b!7517570 (= e!4481767 e!4481766)))

(declare-fun c!1389114 () Bool)

(assert (=> b!7517570 (= c!1389114 (is-Star!19756 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517571 () Bool)

(assert (=> b!7517571 (= e!4481762 (Some!17252 Nil!72520))))

(declare-fun b!7517572 () Bool)

(declare-fun e!4481769 () Option!17253)

(assert (=> b!7517572 (= e!4481763 e!4481769)))

(declare-fun lt!2638402 () Option!17253)

(assert (=> b!7517572 (= lt!2638402 call!689439)))

(declare-fun c!1389108 () Bool)

(assert (=> b!7517572 (= c!1389108 (is-Some!17252 lt!2638402))))

(declare-fun b!7517573 () Bool)

(declare-fun c!1389112 () Bool)

(declare-fun lt!2638400 () Option!17253)

(assert (=> b!7517573 (= c!1389112 (is-Some!17252 lt!2638400))))

(assert (=> b!7517573 (= lt!2638400 call!689440)))

(assert (=> b!7517573 (= e!4481769 e!4481764)))

(declare-fun bm!689435 () Bool)

(assert (=> bm!689435 (= call!689439 (getLanguageWitness!1096 (ite c!1389115 (regTwo!40025 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517574 () Bool)

(assert (=> b!7517574 (= e!4481766 (Some!17252 Nil!72520))))

(declare-fun b!7517575 () Bool)

(assert (=> b!7517575 (= e!4481764 (Some!17252 (++!17359 (v!54387 lt!2638402) (v!54387 lt!2638400))))))

(declare-fun b!7517576 () Bool)

(assert (=> b!7517576 (= e!4481767 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517577 () Bool)

(assert (=> b!7517577 (= e!4481762 e!4481765)))

(declare-fun c!1389111 () Bool)

(assert (=> b!7517577 (= c!1389111 (is-EmptyLang!19756 (ite c!1388929 (regTwo!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517578 () Bool)

(assert (=> b!7517578 (= e!4481765 None!17252)))

(declare-fun b!7517579 () Bool)

(assert (=> b!7517579 (= e!4481769 None!17252)))

(assert (= (and d!2308266 c!1389109) b!7517571))

(assert (= (and d!2308266 (not c!1389109)) b!7517577))

(assert (= (and b!7517577 c!1389111) b!7517578))

(assert (= (and b!7517577 (not c!1389111)) b!7517564))

(assert (= (and b!7517564 c!1389110) b!7517576))

(assert (= (and b!7517564 (not c!1389110)) b!7517570))

(assert (= (and b!7517570 c!1389114) b!7517574))

(assert (= (and b!7517570 (not c!1389114)) b!7517568))

(assert (= (and b!7517568 c!1389115) b!7517566))

(assert (= (and b!7517568 (not c!1389115)) b!7517572))

(assert (= (and b!7517566 c!1389113) b!7517565))

(assert (= (and b!7517566 (not c!1389113)) b!7517567))

(assert (= (and b!7517572 c!1389108) b!7517573))

(assert (= (and b!7517572 (not c!1389108)) b!7517579))

(assert (= (and b!7517573 c!1389112) b!7517575))

(assert (= (and b!7517573 (not c!1389112)) b!7517569))

(assert (= (or b!7517567 b!7517572) bm!689435))

(assert (= (or b!7517566 b!7517573) bm!689434))

(declare-fun m!8098798 () Bool)

(assert (=> bm!689434 m!8098798))

(declare-fun m!8098800 () Bool)

(assert (=> bm!689435 m!8098800))

(declare-fun m!8098802 () Bool)

(assert (=> b!7517575 m!8098802))

(assert (=> bm!689387 d!2308266))

(declare-fun b!7517580 () Bool)

(declare-fun e!4481771 () Bool)

(declare-fun call!689442 () Bool)

(assert (=> b!7517580 (= e!4481771 call!689442)))

(declare-fun b!7517581 () Bool)

(declare-fun res!3013915 () Bool)

(declare-fun e!4481775 () Bool)

(assert (=> b!7517581 (=> (not res!3013915) (not e!4481775))))

(declare-fun call!689443 () Bool)

(assert (=> b!7517581 (= res!3013915 call!689443)))

(declare-fun e!4481774 () Bool)

(assert (=> b!7517581 (= e!4481774 e!4481775)))

(declare-fun c!1389116 () Bool)

(declare-fun bm!689436 () Bool)

(declare-fun call!689441 () Bool)

(assert (=> bm!689436 (= call!689441 (validRegex!10192 (ite c!1389116 (regTwo!40025 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517582 () Bool)

(declare-fun e!4481772 () Bool)

(assert (=> b!7517582 (= e!4481772 e!4481771)))

(declare-fun res!3013914 () Bool)

(assert (=> b!7517582 (= res!3013914 (not (nullable!8596 (reg!20085 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(assert (=> b!7517582 (=> (not res!3013914) (not e!4481771))))

(declare-fun bm!689437 () Bool)

(assert (=> bm!689437 (= call!689443 call!689442)))

(declare-fun c!1389117 () Bool)

(declare-fun bm!689438 () Bool)

(assert (=> bm!689438 (= call!689442 (validRegex!10192 (ite c!1389117 (reg!20085 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (ite c!1389116 (regOne!40025 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))))))

(declare-fun b!7517583 () Bool)

(assert (=> b!7517583 (= e!4481775 call!689441)))

(declare-fun d!2308268 () Bool)

(declare-fun res!3013918 () Bool)

(declare-fun e!4481776 () Bool)

(assert (=> d!2308268 (=> res!3013918 e!4481776)))

(assert (=> d!2308268 (= res!3013918 (is-ElementMatch!19756 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(assert (=> d!2308268 (= (validRegex!10192 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) e!4481776)))

(declare-fun b!7517584 () Bool)

(assert (=> b!7517584 (= e!4481772 e!4481774)))

(assert (=> b!7517584 (= c!1389116 (is-Union!19756 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7517585 () Bool)

(declare-fun e!4481770 () Bool)

(assert (=> b!7517585 (= e!4481770 call!689441)))

(declare-fun b!7517586 () Bool)

(declare-fun e!4481773 () Bool)

(assert (=> b!7517586 (= e!4481773 e!4481770)))

(declare-fun res!3013916 () Bool)

(assert (=> b!7517586 (=> (not res!3013916) (not e!4481770))))

(assert (=> b!7517586 (= res!3013916 call!689443)))

(declare-fun b!7517587 () Bool)

(declare-fun res!3013917 () Bool)

(assert (=> b!7517587 (=> res!3013917 e!4481773)))

(assert (=> b!7517587 (= res!3013917 (not (is-Concat!28601 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))))

(assert (=> b!7517587 (= e!4481774 e!4481773)))

(declare-fun b!7517588 () Bool)

(assert (=> b!7517588 (= e!4481776 e!4481772)))

(assert (=> b!7517588 (= c!1389117 (is-Star!19756 (ite c!1388950 (reg!20085 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (ite c!1388949 (regOne!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(assert (= (and d!2308268 (not res!3013918)) b!7517588))

(assert (= (and b!7517588 c!1389117) b!7517582))

(assert (= (and b!7517588 (not c!1389117)) b!7517584))

(assert (= (and b!7517582 res!3013914) b!7517580))

(assert (= (and b!7517584 c!1389116) b!7517581))

(assert (= (and b!7517584 (not c!1389116)) b!7517587))

(assert (= (and b!7517581 res!3013915) b!7517583))

(assert (= (and b!7517587 (not res!3013917)) b!7517586))

(assert (= (and b!7517586 res!3013916) b!7517585))

(assert (= (or b!7517581 b!7517586) bm!689437))

(assert (= (or b!7517583 b!7517585) bm!689436))

(assert (= (or b!7517580 bm!689437) bm!689438))

(declare-fun m!8098804 () Bool)

(assert (=> bm!689436 m!8098804))

(declare-fun m!8098806 () Bool)

(assert (=> b!7517582 m!8098806))

(declare-fun m!8098808 () Bool)

(assert (=> bm!689438 m!8098808))

(assert (=> bm!689392 d!2308268))

(declare-fun d!2308270 () Bool)

(declare-fun c!1389118 () Bool)

(assert (=> d!2308270 (= c!1389118 (is-Nil!72520 lt!2638328))))

(declare-fun e!4481777 () (Set C!39838))

(assert (=> d!2308270 (= (content!15343 lt!2638328) e!4481777)))

(declare-fun b!7517589 () Bool)

(assert (=> b!7517589 (= e!4481777 (as set.empty (Set C!39838)))))

(declare-fun b!7517590 () Bool)

(assert (=> b!7517590 (= e!4481777 (set.union (set.insert (h!78968 lt!2638328) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638328))))))

(assert (= (and d!2308270 c!1389118) b!7517589))

(assert (= (and d!2308270 (not c!1389118)) b!7517590))

(declare-fun m!8098810 () Bool)

(assert (=> b!7517590 m!8098810))

(declare-fun m!8098812 () Bool)

(assert (=> b!7517590 m!8098812))

(assert (=> d!2308112 d!2308270))

(declare-fun d!2308272 () Bool)

(declare-fun c!1389119 () Bool)

(assert (=> d!2308272 (= c!1389119 (is-Nil!72520 (v!54387 lt!2638254)))))

(declare-fun e!4481778 () (Set C!39838))

(assert (=> d!2308272 (= (content!15343 (v!54387 lt!2638254)) e!4481778)))

(declare-fun b!7517591 () Bool)

(assert (=> b!7517591 (= e!4481778 (as set.empty (Set C!39838)))))

(declare-fun b!7517592 () Bool)

(assert (=> b!7517592 (= e!4481778 (set.union (set.insert (h!78968 (v!54387 lt!2638254)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638254)))))))

(assert (= (and d!2308272 c!1389119) b!7517591))

(assert (= (and d!2308272 (not c!1389119)) b!7517592))

(declare-fun m!8098814 () Bool)

(assert (=> b!7517592 m!8098814))

(declare-fun m!8098816 () Bool)

(assert (=> b!7517592 m!8098816))

(assert (=> d!2308112 d!2308272))

(declare-fun d!2308274 () Bool)

(declare-fun c!1389120 () Bool)

(assert (=> d!2308274 (= c!1389120 (is-Nil!72520 (v!54387 lt!2638252)))))

(declare-fun e!4481779 () (Set C!39838))

(assert (=> d!2308274 (= (content!15343 (v!54387 lt!2638252)) e!4481779)))

(declare-fun b!7517593 () Bool)

(assert (=> b!7517593 (= e!4481779 (as set.empty (Set C!39838)))))

(declare-fun b!7517594 () Bool)

(assert (=> b!7517594 (= e!4481779 (set.union (set.insert (h!78968 (v!54387 lt!2638252)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638252)))))))

(assert (= (and d!2308274 c!1389120) b!7517593))

(assert (= (and d!2308274 (not c!1389120)) b!7517594))

(declare-fun m!8098818 () Bool)

(assert (=> b!7517594 m!8098818))

(declare-fun m!8098820 () Bool)

(assert (=> b!7517594 m!8098820))

(assert (=> d!2308112 d!2308274))

(declare-fun d!2308276 () Bool)

(declare-fun lt!2638403 () Int)

(assert (=> d!2308276 (>= lt!2638403 0)))

(declare-fun e!4481780 () Int)

(assert (=> d!2308276 (= lt!2638403 e!4481780)))

(declare-fun c!1389121 () Bool)

(assert (=> d!2308276 (= c!1389121 (is-Nil!72520 (t!387281 lt!2638268)))))

(assert (=> d!2308276 (= (size!42300 (t!387281 lt!2638268)) lt!2638403)))

(declare-fun b!7517595 () Bool)

(assert (=> b!7517595 (= e!4481780 0)))

(declare-fun b!7517596 () Bool)

(assert (=> b!7517596 (= e!4481780 (+ 1 (size!42300 (t!387281 (t!387281 lt!2638268)))))))

(assert (= (and d!2308276 c!1389121) b!7517595))

(assert (= (and d!2308276 (not c!1389121)) b!7517596))

(declare-fun m!8098822 () Bool)

(assert (=> b!7517596 m!8098822))

(assert (=> b!7516756 d!2308276))

(declare-fun d!2308278 () Bool)

(declare-fun c!1389122 () Bool)

(assert (=> d!2308278 (= c!1389122 (is-Nil!72520 (t!387281 (v!54387 lt!2638237))))))

(declare-fun e!4481781 () (Set C!39838))

(assert (=> d!2308278 (= (content!15343 (t!387281 (v!54387 lt!2638237))) e!4481781)))

(declare-fun b!7517597 () Bool)

(assert (=> b!7517597 (= e!4481781 (as set.empty (Set C!39838)))))

(declare-fun b!7517598 () Bool)

(assert (=> b!7517598 (= e!4481781 (set.union (set.insert (h!78968 (t!387281 (v!54387 lt!2638237))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (v!54387 lt!2638237))))))))

(assert (= (and d!2308278 c!1389122) b!7517597))

(assert (= (and d!2308278 (not c!1389122)) b!7517598))

(declare-fun m!8098824 () Bool)

(assert (=> b!7517598 m!8098824))

(declare-fun m!8098826 () Bool)

(assert (=> b!7517598 m!8098826))

(assert (=> b!7516920 d!2308278))

(declare-fun d!2308280 () Bool)

(declare-fun lt!2638404 () Int)

(assert (=> d!2308280 (>= lt!2638404 0)))

(declare-fun e!4481782 () Int)

(assert (=> d!2308280 (= lt!2638404 e!4481782)))

(declare-fun c!1389123 () Bool)

(assert (=> d!2308280 (= c!1389123 (is-Nil!72520 (t!387281 lt!2638256)))))

(assert (=> d!2308280 (= (size!42300 (t!387281 lt!2638256)) lt!2638404)))

(declare-fun b!7517599 () Bool)

(assert (=> b!7517599 (= e!4481782 0)))

(declare-fun b!7517600 () Bool)

(assert (=> b!7517600 (= e!4481782 (+ 1 (size!42300 (t!387281 (t!387281 lt!2638256)))))))

(assert (= (and d!2308280 c!1389123) b!7517599))

(assert (= (and d!2308280 (not c!1389123)) b!7517600))

(declare-fun m!8098828 () Bool)

(assert (=> b!7517600 m!8098828))

(assert (=> b!7516910 d!2308280))

(declare-fun d!2308282 () Bool)

(assert (=> d!2308282 (= (lostCause!1627 (ite c!1388917 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (lostCauseFct!409 (ite c!1388917 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun bs!1939421 () Bool)

(assert (= bs!1939421 d!2308282))

(declare-fun m!8098830 () Bool)

(assert (=> bs!1939421 m!8098830))

(assert (=> bm!689382 d!2308282))

(declare-fun b!7517601 () Bool)

(declare-fun c!1389126 () Bool)

(assert (=> b!7517601 (= c!1389126 (is-ElementMatch!19756 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481786 () Option!17253)

(declare-fun e!4481788 () Option!17253)

(assert (=> b!7517601 (= e!4481786 e!4481788)))

(declare-fun c!1389125 () Bool)

(declare-fun d!2308284 () Bool)

(assert (=> d!2308284 (= c!1389125 (is-EmptyExpr!19756 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481783 () Option!17253)

(assert (=> d!2308284 (= (getLanguageWitness!1096 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481783)))

(declare-fun b!7517602 () Bool)

(declare-fun e!4481789 () Option!17253)

(declare-fun lt!2638406 () Option!17253)

(assert (=> b!7517602 (= e!4481789 lt!2638406)))

(declare-fun b!7517603 () Bool)

(declare-fun e!4481784 () Option!17253)

(assert (=> b!7517603 (= e!4481784 e!4481789)))

(declare-fun call!689445 () Option!17253)

(assert (=> b!7517603 (= lt!2638406 call!689445)))

(declare-fun c!1389129 () Bool)

(assert (=> b!7517603 (= c!1389129 (is-Some!17252 lt!2638406))))

(declare-fun b!7517604 () Bool)

(declare-fun call!689444 () Option!17253)

(assert (=> b!7517604 (= e!4481789 call!689444)))

(declare-fun b!7517605 () Bool)

(declare-fun c!1389131 () Bool)

(assert (=> b!7517605 (= c!1389131 (is-Union!19756 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481787 () Option!17253)

(assert (=> b!7517605 (= e!4481787 e!4481784)))

(declare-fun b!7517606 () Bool)

(declare-fun e!4481785 () Option!17253)

(assert (=> b!7517606 (= e!4481785 None!17252)))

(declare-fun bm!689439 () Bool)

(assert (=> bm!689439 (= call!689445 (getLanguageWitness!1096 (ite c!1389131 (regOne!40025 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517607 () Bool)

(assert (=> b!7517607 (= e!4481788 e!4481787)))

(declare-fun c!1389130 () Bool)

(assert (=> b!7517607 (= c!1389130 (is-Star!19756 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517608 () Bool)

(assert (=> b!7517608 (= e!4481783 (Some!17252 Nil!72520))))

(declare-fun b!7517609 () Bool)

(declare-fun e!4481790 () Option!17253)

(assert (=> b!7517609 (= e!4481784 e!4481790)))

(declare-fun lt!2638407 () Option!17253)

(assert (=> b!7517609 (= lt!2638407 call!689444)))

(declare-fun c!1389124 () Bool)

(assert (=> b!7517609 (= c!1389124 (is-Some!17252 lt!2638407))))

(declare-fun b!7517610 () Bool)

(declare-fun c!1389128 () Bool)

(declare-fun lt!2638405 () Option!17253)

(assert (=> b!7517610 (= c!1389128 (is-Some!17252 lt!2638405))))

(assert (=> b!7517610 (= lt!2638405 call!689445)))

(assert (=> b!7517610 (= e!4481790 e!4481785)))

(declare-fun bm!689440 () Bool)

(assert (=> bm!689440 (= call!689444 (getLanguageWitness!1096 (ite c!1389131 (regTwo!40025 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517611 () Bool)

(assert (=> b!7517611 (= e!4481787 (Some!17252 Nil!72520))))

(declare-fun b!7517612 () Bool)

(assert (=> b!7517612 (= e!4481785 (Some!17252 (++!17359 (v!54387 lt!2638407) (v!54387 lt!2638405))))))

(declare-fun b!7517613 () Bool)

(assert (=> b!7517613 (= e!4481788 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517614 () Bool)

(assert (=> b!7517614 (= e!4481783 e!4481786)))

(declare-fun c!1389127 () Bool)

(assert (=> b!7517614 (= c!1389127 (is-EmptyLang!19756 (ite c!1388879 (regTwo!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517615 () Bool)

(assert (=> b!7517615 (= e!4481786 None!17252)))

(declare-fun b!7517616 () Bool)

(assert (=> b!7517616 (= e!4481790 None!17252)))

(assert (= (and d!2308284 c!1389125) b!7517608))

(assert (= (and d!2308284 (not c!1389125)) b!7517614))

(assert (= (and b!7517614 c!1389127) b!7517615))

(assert (= (and b!7517614 (not c!1389127)) b!7517601))

(assert (= (and b!7517601 c!1389126) b!7517613))

(assert (= (and b!7517601 (not c!1389126)) b!7517607))

(assert (= (and b!7517607 c!1389130) b!7517611))

(assert (= (and b!7517607 (not c!1389130)) b!7517605))

(assert (= (and b!7517605 c!1389131) b!7517603))

(assert (= (and b!7517605 (not c!1389131)) b!7517609))

(assert (= (and b!7517603 c!1389129) b!7517602))

(assert (= (and b!7517603 (not c!1389129)) b!7517604))

(assert (= (and b!7517609 c!1389124) b!7517610))

(assert (= (and b!7517609 (not c!1389124)) b!7517616))

(assert (= (and b!7517610 c!1389128) b!7517612))

(assert (= (and b!7517610 (not c!1389128)) b!7517606))

(assert (= (or b!7517604 b!7517609) bm!689440))

(assert (= (or b!7517603 b!7517610) bm!689439))

(declare-fun m!8098832 () Bool)

(assert (=> bm!689439 m!8098832))

(declare-fun m!8098834 () Bool)

(assert (=> bm!689440 m!8098834))

(declare-fun m!8098836 () Bool)

(assert (=> b!7517612 m!8098836))

(assert (=> bm!689370 d!2308284))

(declare-fun d!2308286 () Bool)

(declare-fun c!1389132 () Bool)

(assert (=> d!2308286 (= c!1389132 (is-Nil!72520 (t!387281 lt!2638256)))))

(declare-fun e!4481791 () (Set C!39838))

(assert (=> d!2308286 (= (content!15343 (t!387281 lt!2638256)) e!4481791)))

(declare-fun b!7517617 () Bool)

(assert (=> b!7517617 (= e!4481791 (as set.empty (Set C!39838)))))

(declare-fun b!7517618 () Bool)

(assert (=> b!7517618 (= e!4481791 (set.union (set.insert (h!78968 (t!387281 lt!2638256)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 lt!2638256)))))))

(assert (= (and d!2308286 c!1389132) b!7517617))

(assert (= (and d!2308286 (not c!1389132)) b!7517618))

(declare-fun m!8098838 () Bool)

(assert (=> b!7517618 m!8098838))

(declare-fun m!8098840 () Bool)

(assert (=> b!7517618 m!8098840))

(assert (=> b!7516784 d!2308286))

(assert (=> b!7516727 d!2308246))

(declare-fun b!7517619 () Bool)

(declare-fun e!4481793 () List!72644)

(assert (=> b!7517619 (= e!4481793 (v!54387 lt!2638293))))

(declare-fun b!7517622 () Bool)

(declare-fun lt!2638408 () List!72644)

(declare-fun e!4481792 () Bool)

(assert (=> b!7517622 (= e!4481792 (or (not (= (v!54387 lt!2638293) Nil!72520)) (= lt!2638408 (v!54387 lt!2638295))))))

(declare-fun b!7517621 () Bool)

(declare-fun res!3013919 () Bool)

(assert (=> b!7517621 (=> (not res!3013919) (not e!4481792))))

(assert (=> b!7517621 (= res!3013919 (= (size!42300 lt!2638408) (+ (size!42300 (v!54387 lt!2638295)) (size!42300 (v!54387 lt!2638293)))))))

(declare-fun b!7517620 () Bool)

(assert (=> b!7517620 (= e!4481793 (Cons!72520 (h!78968 (v!54387 lt!2638295)) (++!17359 (t!387281 (v!54387 lt!2638295)) (v!54387 lt!2638293))))))

(declare-fun d!2308288 () Bool)

(assert (=> d!2308288 e!4481792))

(declare-fun res!3013920 () Bool)

(assert (=> d!2308288 (=> (not res!3013920) (not e!4481792))))

(assert (=> d!2308288 (= res!3013920 (= (content!15343 lt!2638408) (set.union (content!15343 (v!54387 lt!2638295)) (content!15343 (v!54387 lt!2638293)))))))

(assert (=> d!2308288 (= lt!2638408 e!4481793)))

(declare-fun c!1389133 () Bool)

(assert (=> d!2308288 (= c!1389133 (is-Nil!72520 (v!54387 lt!2638295)))))

(assert (=> d!2308288 (= (++!17359 (v!54387 lt!2638295) (v!54387 lt!2638293)) lt!2638408)))

(assert (= (and d!2308288 c!1389133) b!7517619))

(assert (= (and d!2308288 (not c!1389133)) b!7517620))

(assert (= (and d!2308288 res!3013920) b!7517621))

(assert (= (and b!7517621 res!3013919) b!7517622))

(declare-fun m!8098842 () Bool)

(assert (=> b!7517621 m!8098842))

(declare-fun m!8098844 () Bool)

(assert (=> b!7517621 m!8098844))

(declare-fun m!8098846 () Bool)

(assert (=> b!7517621 m!8098846))

(declare-fun m!8098848 () Bool)

(assert (=> b!7517620 m!8098848))

(declare-fun m!8098850 () Bool)

(assert (=> d!2308288 m!8098850))

(declare-fun m!8098852 () Bool)

(assert (=> d!2308288 m!8098852))

(declare-fun m!8098854 () Bool)

(assert (=> d!2308288 m!8098854))

(assert (=> b!7516750 d!2308288))

(declare-fun b!7517623 () Bool)

(declare-fun e!4481795 () Bool)

(declare-fun call!689447 () Bool)

(assert (=> b!7517623 (= e!4481795 call!689447)))

(declare-fun b!7517624 () Bool)

(declare-fun res!3013922 () Bool)

(declare-fun e!4481799 () Bool)

(assert (=> b!7517624 (=> (not res!3013922) (not e!4481799))))

(declare-fun call!689448 () Bool)

(assert (=> b!7517624 (= res!3013922 call!689448)))

(declare-fun e!4481798 () Bool)

(assert (=> b!7517624 (= e!4481798 e!4481799)))

(declare-fun call!689446 () Bool)

(declare-fun c!1389134 () Bool)

(declare-fun bm!689441 () Bool)

(assert (=> bm!689441 (= call!689446 (validRegex!10192 (ite c!1389134 (regTwo!40025 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(declare-fun b!7517625 () Bool)

(declare-fun e!4481796 () Bool)

(assert (=> b!7517625 (= e!4481796 e!4481795)))

(declare-fun res!3013921 () Bool)

(assert (=> b!7517625 (= res!3013921 (not (nullable!8596 (reg!20085 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(assert (=> b!7517625 (=> (not res!3013921) (not e!4481795))))

(declare-fun bm!689442 () Bool)

(assert (=> bm!689442 (= call!689448 call!689447)))

(declare-fun c!1389135 () Bool)

(declare-fun bm!689443 () Bool)

(assert (=> bm!689443 (= call!689447 (validRegex!10192 (ite c!1389135 (reg!20085 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (ite c!1389134 (regOne!40025 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))))))

(declare-fun b!7517626 () Bool)

(assert (=> b!7517626 (= e!4481799 call!689446)))

(declare-fun d!2308290 () Bool)

(declare-fun res!3013925 () Bool)

(declare-fun e!4481800 () Bool)

(assert (=> d!2308290 (=> res!3013925 e!4481800)))

(assert (=> d!2308290 (= res!3013925 (is-ElementMatch!19756 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(assert (=> d!2308290 (= (validRegex!10192 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) e!4481800)))

(declare-fun b!7517627 () Bool)

(assert (=> b!7517627 (= e!4481796 e!4481798)))

(assert (=> b!7517627 (= c!1389134 (is-Union!19756 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(declare-fun b!7517628 () Bool)

(declare-fun e!4481794 () Bool)

(assert (=> b!7517628 (= e!4481794 call!689446)))

(declare-fun b!7517629 () Bool)

(declare-fun e!4481797 () Bool)

(assert (=> b!7517629 (= e!4481797 e!4481794)))

(declare-fun res!3013923 () Bool)

(assert (=> b!7517629 (=> (not res!3013923) (not e!4481794))))

(assert (=> b!7517629 (= res!3013923 call!689448)))

(declare-fun b!7517630 () Bool)

(declare-fun res!3013924 () Bool)

(assert (=> b!7517630 (=> res!3013924 e!4481797)))

(assert (=> b!7517630 (= res!3013924 (not (is-Concat!28601 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(assert (=> b!7517630 (= e!4481798 e!4481797)))

(declare-fun b!7517631 () Bool)

(assert (=> b!7517631 (= e!4481800 e!4481796)))

(assert (=> b!7517631 (= c!1389135 (is-Star!19756 (ite c!1388870 (regTwo!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))

(assert (= (and d!2308290 (not res!3013925)) b!7517631))

(assert (= (and b!7517631 c!1389135) b!7517625))

(assert (= (and b!7517631 (not c!1389135)) b!7517627))

(assert (= (and b!7517625 res!3013921) b!7517623))

(assert (= (and b!7517627 c!1389134) b!7517624))

(assert (= (and b!7517627 (not c!1389134)) b!7517630))

(assert (= (and b!7517624 res!3013922) b!7517626))

(assert (= (and b!7517630 (not res!3013924)) b!7517629))

(assert (= (and b!7517629 res!3013923) b!7517628))

(assert (= (or b!7517624 b!7517629) bm!689442))

(assert (= (or b!7517626 b!7517628) bm!689441))

(assert (= (or b!7517623 bm!689442) bm!689443))

(declare-fun m!8098856 () Bool)

(assert (=> bm!689441 m!8098856))

(declare-fun m!8098858 () Bool)

(assert (=> b!7517625 m!8098858))

(declare-fun m!8098860 () Bool)

(assert (=> bm!689443 m!8098860))

(assert (=> bm!689366 d!2308290))

(declare-fun b!7517632 () Bool)

(declare-fun c!1389138 () Bool)

(assert (=> b!7517632 (= c!1389138 (is-ElementMatch!19756 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481804 () Option!17253)

(declare-fun e!4481806 () Option!17253)

(assert (=> b!7517632 (= e!4481804 e!4481806)))

(declare-fun d!2308292 () Bool)

(declare-fun c!1389137 () Bool)

(assert (=> d!2308292 (= c!1389137 (is-EmptyExpr!19756 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481801 () Option!17253)

(assert (=> d!2308292 (= (getLanguageWitness!1096 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481801)))

(declare-fun b!7517633 () Bool)

(declare-fun e!4481807 () Option!17253)

(declare-fun lt!2638410 () Option!17253)

(assert (=> b!7517633 (= e!4481807 lt!2638410)))

(declare-fun b!7517634 () Bool)

(declare-fun e!4481802 () Option!17253)

(assert (=> b!7517634 (= e!4481802 e!4481807)))

(declare-fun call!689450 () Option!17253)

(assert (=> b!7517634 (= lt!2638410 call!689450)))

(declare-fun c!1389141 () Bool)

(assert (=> b!7517634 (= c!1389141 (is-Some!17252 lt!2638410))))

(declare-fun b!7517635 () Bool)

(declare-fun call!689449 () Option!17253)

(assert (=> b!7517635 (= e!4481807 call!689449)))

(declare-fun b!7517636 () Bool)

(declare-fun c!1389143 () Bool)

(assert (=> b!7517636 (= c!1389143 (is-Union!19756 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481805 () Option!17253)

(assert (=> b!7517636 (= e!4481805 e!4481802)))

(declare-fun b!7517637 () Bool)

(declare-fun e!4481803 () Option!17253)

(assert (=> b!7517637 (= e!4481803 None!17252)))

(declare-fun bm!689444 () Bool)

(assert (=> bm!689444 (= call!689450 (getLanguageWitness!1096 (ite c!1389143 (regOne!40025 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517638 () Bool)

(assert (=> b!7517638 (= e!4481806 e!4481805)))

(declare-fun c!1389142 () Bool)

(assert (=> b!7517638 (= c!1389142 (is-Star!19756 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517639 () Bool)

(assert (=> b!7517639 (= e!4481801 (Some!17252 Nil!72520))))

(declare-fun b!7517640 () Bool)

(declare-fun e!4481808 () Option!17253)

(assert (=> b!7517640 (= e!4481802 e!4481808)))

(declare-fun lt!2638411 () Option!17253)

(assert (=> b!7517640 (= lt!2638411 call!689449)))

(declare-fun c!1389136 () Bool)

(assert (=> b!7517640 (= c!1389136 (is-Some!17252 lt!2638411))))

(declare-fun b!7517641 () Bool)

(declare-fun c!1389140 () Bool)

(declare-fun lt!2638409 () Option!17253)

(assert (=> b!7517641 (= c!1389140 (is-Some!17252 lt!2638409))))

(assert (=> b!7517641 (= lt!2638409 call!689450)))

(assert (=> b!7517641 (= e!4481808 e!4481803)))

(declare-fun bm!689445 () Bool)

(assert (=> bm!689445 (= call!689449 (getLanguageWitness!1096 (ite c!1389143 (regTwo!40025 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517642 () Bool)

(assert (=> b!7517642 (= e!4481805 (Some!17252 Nil!72520))))

(declare-fun b!7517643 () Bool)

(assert (=> b!7517643 (= e!4481803 (Some!17252 (++!17359 (v!54387 lt!2638411) (v!54387 lt!2638409))))))

(declare-fun b!7517644 () Bool)

(assert (=> b!7517644 (= e!4481806 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517645 () Bool)

(assert (=> b!7517645 (= e!4481801 e!4481804)))

(declare-fun c!1389139 () Bool)

(assert (=> b!7517645 (= c!1389139 (is-EmptyLang!19756 (ite c!1388959 (regOne!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517646 () Bool)

(assert (=> b!7517646 (= e!4481804 None!17252)))

(declare-fun b!7517647 () Bool)

(assert (=> b!7517647 (= e!4481808 None!17252)))

(assert (= (and d!2308292 c!1389137) b!7517639))

(assert (= (and d!2308292 (not c!1389137)) b!7517645))

(assert (= (and b!7517645 c!1389139) b!7517646))

(assert (= (and b!7517645 (not c!1389139)) b!7517632))

(assert (= (and b!7517632 c!1389138) b!7517644))

(assert (= (and b!7517632 (not c!1389138)) b!7517638))

(assert (= (and b!7517638 c!1389142) b!7517642))

(assert (= (and b!7517638 (not c!1389142)) b!7517636))

(assert (= (and b!7517636 c!1389143) b!7517634))

(assert (= (and b!7517636 (not c!1389143)) b!7517640))

(assert (= (and b!7517634 c!1389141) b!7517633))

(assert (= (and b!7517634 (not c!1389141)) b!7517635))

(assert (= (and b!7517640 c!1389136) b!7517641))

(assert (= (and b!7517640 (not c!1389136)) b!7517647))

(assert (= (and b!7517641 c!1389140) b!7517643))

(assert (= (and b!7517641 (not c!1389140)) b!7517637))

(assert (= (or b!7517635 b!7517640) bm!689445))

(assert (= (or b!7517634 b!7517641) bm!689444))

(declare-fun m!8098862 () Bool)

(assert (=> bm!689444 m!8098862))

(declare-fun m!8098864 () Bool)

(assert (=> bm!689445 m!8098864))

(declare-fun m!8098866 () Bool)

(assert (=> b!7517643 m!8098866))

(assert (=> bm!689393 d!2308292))

(declare-fun b!7517648 () Bool)

(declare-fun e!4481810 () List!72644)

(assert (=> b!7517648 (= e!4481810 (v!54387 lt!2638262))))

(declare-fun b!7517651 () Bool)

(declare-fun lt!2638412 () List!72644)

(declare-fun e!4481809 () Bool)

(assert (=> b!7517651 (= e!4481809 (or (not (= (v!54387 lt!2638262) Nil!72520)) (= lt!2638412 (t!387281 (v!54387 lt!2638264)))))))

(declare-fun b!7517650 () Bool)

(declare-fun res!3013926 () Bool)

(assert (=> b!7517650 (=> (not res!3013926) (not e!4481809))))

(assert (=> b!7517650 (= res!3013926 (= (size!42300 lt!2638412) (+ (size!42300 (t!387281 (v!54387 lt!2638264))) (size!42300 (v!54387 lt!2638262)))))))

(declare-fun b!7517649 () Bool)

(assert (=> b!7517649 (= e!4481810 (Cons!72520 (h!78968 (t!387281 (v!54387 lt!2638264))) (++!17359 (t!387281 (t!387281 (v!54387 lt!2638264))) (v!54387 lt!2638262))))))

(declare-fun d!2308294 () Bool)

(assert (=> d!2308294 e!4481809))

(declare-fun res!3013927 () Bool)

(assert (=> d!2308294 (=> (not res!3013927) (not e!4481809))))

(assert (=> d!2308294 (= res!3013927 (= (content!15343 lt!2638412) (set.union (content!15343 (t!387281 (v!54387 lt!2638264))) (content!15343 (v!54387 lt!2638262)))))))

(assert (=> d!2308294 (= lt!2638412 e!4481810)))

(declare-fun c!1389144 () Bool)

(assert (=> d!2308294 (= c!1389144 (is-Nil!72520 (t!387281 (v!54387 lt!2638264))))))

(assert (=> d!2308294 (= (++!17359 (t!387281 (v!54387 lt!2638264)) (v!54387 lt!2638262)) lt!2638412)))

(assert (= (and d!2308294 c!1389144) b!7517648))

(assert (= (and d!2308294 (not c!1389144)) b!7517649))

(assert (= (and d!2308294 res!3013927) b!7517650))

(assert (= (and b!7517650 res!3013926) b!7517651))

(declare-fun m!8098868 () Bool)

(assert (=> b!7517650 m!8098868))

(declare-fun m!8098870 () Bool)

(assert (=> b!7517650 m!8098870))

(assert (=> b!7517650 m!8098330))

(declare-fun m!8098872 () Bool)

(assert (=> b!7517649 m!8098872))

(declare-fun m!8098874 () Bool)

(assert (=> d!2308294 m!8098874))

(declare-fun m!8098876 () Bool)

(assert (=> d!2308294 m!8098876))

(assert (=> d!2308294 m!8098338))

(assert (=> b!7516828 d!2308294))

(declare-fun d!2308296 () Bool)

(declare-fun lt!2638413 () Int)

(assert (=> d!2308296 (>= lt!2638413 0)))

(declare-fun e!4481811 () Int)

(assert (=> d!2308296 (= lt!2638413 e!4481811)))

(declare-fun c!1389145 () Bool)

(assert (=> d!2308296 (= c!1389145 (is-Nil!72520 lt!2638328))))

(assert (=> d!2308296 (= (size!42300 lt!2638328) lt!2638413)))

(declare-fun b!7517652 () Bool)

(assert (=> b!7517652 (= e!4481811 0)))

(declare-fun b!7517653 () Bool)

(assert (=> b!7517653 (= e!4481811 (+ 1 (size!42300 (t!387281 lt!2638328))))))

(assert (= (and d!2308296 c!1389145) b!7517652))

(assert (= (and d!2308296 (not c!1389145)) b!7517653))

(declare-fun m!8098878 () Bool)

(assert (=> b!7517653 m!8098878))

(assert (=> b!7516927 d!2308296))

(declare-fun d!2308298 () Bool)

(declare-fun lt!2638414 () Int)

(assert (=> d!2308298 (>= lt!2638414 0)))

(declare-fun e!4481812 () Int)

(assert (=> d!2308298 (= lt!2638414 e!4481812)))

(declare-fun c!1389146 () Bool)

(assert (=> d!2308298 (= c!1389146 (is-Nil!72520 (v!54387 lt!2638254)))))

(assert (=> d!2308298 (= (size!42300 (v!54387 lt!2638254)) lt!2638414)))

(declare-fun b!7517654 () Bool)

(assert (=> b!7517654 (= e!4481812 0)))

(declare-fun b!7517655 () Bool)

(assert (=> b!7517655 (= e!4481812 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638254)))))))

(assert (= (and d!2308298 c!1389146) b!7517654))

(assert (= (and d!2308298 (not c!1389146)) b!7517655))

(declare-fun m!8098880 () Bool)

(assert (=> b!7517655 m!8098880))

(assert (=> b!7516927 d!2308298))

(declare-fun d!2308300 () Bool)

(declare-fun lt!2638415 () Int)

(assert (=> d!2308300 (>= lt!2638415 0)))

(declare-fun e!4481813 () Int)

(assert (=> d!2308300 (= lt!2638415 e!4481813)))

(declare-fun c!1389147 () Bool)

(assert (=> d!2308300 (= c!1389147 (is-Nil!72520 (v!54387 lt!2638252)))))

(assert (=> d!2308300 (= (size!42300 (v!54387 lt!2638252)) lt!2638415)))

(declare-fun b!7517656 () Bool)

(assert (=> b!7517656 (= e!4481813 0)))

(declare-fun b!7517657 () Bool)

(assert (=> b!7517657 (= e!4481813 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638252)))))))

(assert (= (and d!2308300 c!1389147) b!7517656))

(assert (= (and d!2308300 (not c!1389147)) b!7517657))

(declare-fun m!8098882 () Bool)

(assert (=> b!7517657 m!8098882))

(assert (=> b!7516927 d!2308300))

(declare-fun d!2308302 () Bool)

(declare-fun c!1389148 () Bool)

(assert (=> d!2308302 (= c!1389148 (is-Nil!72520 lt!2638319))))

(declare-fun e!4481814 () (Set C!39838))

(assert (=> d!2308302 (= (content!15343 lt!2638319) e!4481814)))

(declare-fun b!7517658 () Bool)

(assert (=> b!7517658 (= e!4481814 (as set.empty (Set C!39838)))))

(declare-fun b!7517659 () Bool)

(assert (=> b!7517659 (= e!4481814 (set.union (set.insert (h!78968 lt!2638319) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638319))))))

(assert (= (and d!2308302 c!1389148) b!7517658))

(assert (= (and d!2308302 (not c!1389148)) b!7517659))

(declare-fun m!8098884 () Bool)

(assert (=> b!7517659 m!8098884))

(declare-fun m!8098886 () Bool)

(assert (=> b!7517659 m!8098886))

(assert (=> d!2308090 d!2308302))

(assert (=> d!2308090 d!2308224))

(assert (=> d!2308090 d!2308062))

(declare-fun b!7517660 () Bool)

(declare-fun e!4481816 () Bool)

(declare-fun call!689452 () Bool)

(assert (=> b!7517660 (= e!4481816 call!689452)))

(declare-fun b!7517661 () Bool)

(declare-fun res!3013929 () Bool)

(declare-fun e!4481820 () Bool)

(assert (=> b!7517661 (=> (not res!3013929) (not e!4481820))))

(declare-fun call!689453 () Bool)

(assert (=> b!7517661 (= res!3013929 call!689453)))

(declare-fun e!4481819 () Bool)

(assert (=> b!7517661 (= e!4481819 e!4481820)))

(declare-fun call!689451 () Bool)

(declare-fun c!1389149 () Bool)

(declare-fun bm!689446 () Bool)

(assert (=> bm!689446 (= call!689451 (validRegex!10192 (ite c!1389149 (regTwo!40025 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))))

(declare-fun b!7517662 () Bool)

(declare-fun e!4481817 () Bool)

(assert (=> b!7517662 (= e!4481817 e!4481816)))

(declare-fun res!3013928 () Bool)

(assert (=> b!7517662 (= res!3013928 (not (nullable!8596 (reg!20085 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))))

(assert (=> b!7517662 (=> (not res!3013928) (not e!4481816))))

(declare-fun bm!689447 () Bool)

(assert (=> bm!689447 (= call!689453 call!689452)))

(declare-fun bm!689448 () Bool)

(declare-fun c!1389150 () Bool)

(assert (=> bm!689448 (= call!689452 (validRegex!10192 (ite c!1389150 (reg!20085 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) (ite c!1389149 (regOne!40025 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) (regOne!40024 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))))))))

(declare-fun b!7517663 () Bool)

(assert (=> b!7517663 (= e!4481820 call!689451)))

(declare-fun d!2308304 () Bool)

(declare-fun res!3013932 () Bool)

(declare-fun e!4481821 () Bool)

(assert (=> d!2308304 (=> res!3013932 e!4481821)))

(assert (=> d!2308304 (= res!3013932 (is-ElementMatch!19756 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))

(assert (=> d!2308304 (= (validRegex!10192 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))) e!4481821)))

(declare-fun b!7517664 () Bool)

(assert (=> b!7517664 (= e!4481817 e!4481819)))

(assert (=> b!7517664 (= c!1389149 (is-Union!19756 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun b!7517665 () Bool)

(declare-fun e!4481815 () Bool)

(assert (=> b!7517665 (= e!4481815 call!689451)))

(declare-fun b!7517666 () Bool)

(declare-fun e!4481818 () Bool)

(assert (=> b!7517666 (= e!4481818 e!4481815)))

(declare-fun res!3013930 () Bool)

(assert (=> b!7517666 (=> (not res!3013930) (not e!4481815))))

(assert (=> b!7517666 (= res!3013930 call!689453)))

(declare-fun b!7517667 () Bool)

(declare-fun res!3013931 () Bool)

(assert (=> b!7517667 (=> res!3013931 e!4481818)))

(assert (=> b!7517667 (= res!3013931 (not (is-Concat!28601 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))))))

(assert (=> b!7517667 (= e!4481819 e!4481818)))

(declare-fun b!7517668 () Bool)

(assert (=> b!7517668 (= e!4481821 e!4481817)))

(assert (=> b!7517668 (= c!1389150 (is-Star!19756 (ite c!1388919 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))

(assert (= (and d!2308304 (not res!3013932)) b!7517668))

(assert (= (and b!7517668 c!1389150) b!7517662))

(assert (= (and b!7517668 (not c!1389150)) b!7517664))

(assert (= (and b!7517662 res!3013928) b!7517660))

(assert (= (and b!7517664 c!1389149) b!7517661))

(assert (= (and b!7517664 (not c!1389149)) b!7517667))

(assert (= (and b!7517661 res!3013929) b!7517663))

(assert (= (and b!7517667 (not res!3013931)) b!7517666))

(assert (= (and b!7517666 res!3013930) b!7517665))

(assert (= (or b!7517661 b!7517666) bm!689447))

(assert (= (or b!7517663 b!7517665) bm!689446))

(assert (= (or b!7517660 bm!689447) bm!689448))

(declare-fun m!8098888 () Bool)

(assert (=> bm!689446 m!8098888))

(declare-fun m!8098890 () Bool)

(assert (=> b!7517662 m!8098890))

(declare-fun m!8098892 () Bool)

(assert (=> bm!689448 m!8098892))

(assert (=> bm!689383 d!2308304))

(declare-fun d!2308306 () Bool)

(assert (=> d!2308306 (= (lostCause!1627 (ite c!1388917 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (lostCauseFct!409 (ite c!1388917 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))

(declare-fun bs!1939422 () Bool)

(assert (= bs!1939422 d!2308306))

(declare-fun m!8098894 () Bool)

(assert (=> bs!1939422 m!8098894))

(assert (=> bm!689381 d!2308306))

(declare-fun d!2308308 () Bool)

(declare-fun res!3013933 () Bool)

(declare-fun e!4481822 () Bool)

(assert (=> d!2308308 (=> res!3013933 e!4481822)))

(assert (=> d!2308308 (= res!3013933 (is-Nil!72519 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(assert (=> d!2308308 (= (forall!18381 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))) lambda!466264) e!4481822)))

(declare-fun b!7517669 () Bool)

(declare-fun e!4481823 () Bool)

(assert (=> b!7517669 (= e!4481822 e!4481823)))

(declare-fun res!3013934 () Bool)

(assert (=> b!7517669 (=> (not res!3013934) (not e!4481823))))

(assert (=> b!7517669 (= res!3013934 (dynLambda!29850 lambda!466264 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun b!7517670 () Bool)

(assert (=> b!7517670 (= e!4481823 (forall!18381 (t!387280 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))) lambda!466264))))

(assert (= (and d!2308308 (not res!3013933)) b!7517669))

(assert (= (and b!7517669 res!3013934) b!7517670))

(declare-fun b_lambda!288409 () Bool)

(assert (=> (not b_lambda!288409) (not b!7517669)))

(declare-fun m!8098896 () Bool)

(assert (=> b!7517669 m!8098896))

(declare-fun m!8098898 () Bool)

(assert (=> b!7517670 m!8098898))

(assert (=> b!7516930 d!2308308))

(declare-fun c!1389153 () Bool)

(declare-fun b!7517671 () Bool)

(assert (=> b!7517671 (= c!1389153 (is-ElementMatch!19756 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481827 () Option!17253)

(declare-fun e!4481829 () Option!17253)

(assert (=> b!7517671 (= e!4481827 e!4481829)))

(declare-fun c!1389152 () Bool)

(declare-fun d!2308310 () Bool)

(assert (=> d!2308310 (= c!1389152 (is-EmptyExpr!19756 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481824 () Option!17253)

(assert (=> d!2308310 (= (getLanguageWitness!1096 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481824)))

(declare-fun b!7517672 () Bool)

(declare-fun e!4481830 () Option!17253)

(declare-fun lt!2638417 () Option!17253)

(assert (=> b!7517672 (= e!4481830 lt!2638417)))

(declare-fun b!7517673 () Bool)

(declare-fun e!4481825 () Option!17253)

(assert (=> b!7517673 (= e!4481825 e!4481830)))

(declare-fun call!689455 () Option!17253)

(assert (=> b!7517673 (= lt!2638417 call!689455)))

(declare-fun c!1389156 () Bool)

(assert (=> b!7517673 (= c!1389156 (is-Some!17252 lt!2638417))))

(declare-fun b!7517674 () Bool)

(declare-fun call!689454 () Option!17253)

(assert (=> b!7517674 (= e!4481830 call!689454)))

(declare-fun c!1389158 () Bool)

(declare-fun b!7517675 () Bool)

(assert (=> b!7517675 (= c!1389158 (is-Union!19756 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481828 () Option!17253)

(assert (=> b!7517675 (= e!4481828 e!4481825)))

(declare-fun b!7517676 () Bool)

(declare-fun e!4481826 () Option!17253)

(assert (=> b!7517676 (= e!4481826 None!17252)))

(declare-fun bm!689449 () Bool)

(assert (=> bm!689449 (= call!689455 (getLanguageWitness!1096 (ite c!1389158 (regOne!40025 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517677 () Bool)

(assert (=> b!7517677 (= e!4481829 e!4481828)))

(declare-fun c!1389157 () Bool)

(assert (=> b!7517677 (= c!1389157 (is-Star!19756 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517678 () Bool)

(assert (=> b!7517678 (= e!4481824 (Some!17252 Nil!72520))))

(declare-fun b!7517679 () Bool)

(declare-fun e!4481831 () Option!17253)

(assert (=> b!7517679 (= e!4481825 e!4481831)))

(declare-fun lt!2638418 () Option!17253)

(assert (=> b!7517679 (= lt!2638418 call!689454)))

(declare-fun c!1389151 () Bool)

(assert (=> b!7517679 (= c!1389151 (is-Some!17252 lt!2638418))))

(declare-fun b!7517680 () Bool)

(declare-fun c!1389155 () Bool)

(declare-fun lt!2638416 () Option!17253)

(assert (=> b!7517680 (= c!1389155 (is-Some!17252 lt!2638416))))

(assert (=> b!7517680 (= lt!2638416 call!689455)))

(assert (=> b!7517680 (= e!4481831 e!4481826)))

(declare-fun bm!689450 () Bool)

(assert (=> bm!689450 (= call!689454 (getLanguageWitness!1096 (ite c!1389158 (regTwo!40025 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517681 () Bool)

(assert (=> b!7517681 (= e!4481828 (Some!17252 Nil!72520))))

(declare-fun b!7517682 () Bool)

(assert (=> b!7517682 (= e!4481826 (Some!17252 (++!17359 (v!54387 lt!2638418) (v!54387 lt!2638416))))))

(declare-fun b!7517683 () Bool)

(assert (=> b!7517683 (= e!4481829 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517684 () Bool)

(assert (=> b!7517684 (= e!4481824 e!4481827)))

(declare-fun c!1389154 () Bool)

(assert (=> b!7517684 (= c!1389154 (is-EmptyLang!19756 (ite c!1388913 (regOne!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517685 () Bool)

(assert (=> b!7517685 (= e!4481827 None!17252)))

(declare-fun b!7517686 () Bool)

(assert (=> b!7517686 (= e!4481831 None!17252)))

(assert (= (and d!2308310 c!1389152) b!7517678))

(assert (= (and d!2308310 (not c!1389152)) b!7517684))

(assert (= (and b!7517684 c!1389154) b!7517685))

(assert (= (and b!7517684 (not c!1389154)) b!7517671))

(assert (= (and b!7517671 c!1389153) b!7517683))

(assert (= (and b!7517671 (not c!1389153)) b!7517677))

(assert (= (and b!7517677 c!1389157) b!7517681))

(assert (= (and b!7517677 (not c!1389157)) b!7517675))

(assert (= (and b!7517675 c!1389158) b!7517673))

(assert (= (and b!7517675 (not c!1389158)) b!7517679))

(assert (= (and b!7517673 c!1389156) b!7517672))

(assert (= (and b!7517673 (not c!1389156)) b!7517674))

(assert (= (and b!7517679 c!1389151) b!7517680))

(assert (= (and b!7517679 (not c!1389151)) b!7517686))

(assert (= (and b!7517680 c!1389155) b!7517682))

(assert (= (and b!7517680 (not c!1389155)) b!7517676))

(assert (= (or b!7517674 b!7517679) bm!689450))

(assert (= (or b!7517673 b!7517680) bm!689449))

(declare-fun m!8098900 () Bool)

(assert (=> bm!689449 m!8098900))

(declare-fun m!8098902 () Bool)

(assert (=> bm!689450 m!8098902))

(declare-fun m!8098904 () Bool)

(assert (=> b!7517682 m!8098904))

(assert (=> bm!689375 d!2308310))

(declare-fun c!1389161 () Bool)

(declare-fun b!7517687 () Bool)

(assert (=> b!7517687 (= c!1389161 (is-ElementMatch!19756 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481835 () Option!17253)

(declare-fun e!4481837 () Option!17253)

(assert (=> b!7517687 (= e!4481835 e!4481837)))

(declare-fun c!1389160 () Bool)

(declare-fun d!2308312 () Bool)

(assert (=> d!2308312 (= c!1389160 (is-EmptyExpr!19756 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481832 () Option!17253)

(assert (=> d!2308312 (= (getLanguageWitness!1096 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481832)))

(declare-fun b!7517688 () Bool)

(declare-fun e!4481838 () Option!17253)

(declare-fun lt!2638420 () Option!17253)

(assert (=> b!7517688 (= e!4481838 lt!2638420)))

(declare-fun b!7517689 () Bool)

(declare-fun e!4481833 () Option!17253)

(assert (=> b!7517689 (= e!4481833 e!4481838)))

(declare-fun call!689457 () Option!17253)

(assert (=> b!7517689 (= lt!2638420 call!689457)))

(declare-fun c!1389164 () Bool)

(assert (=> b!7517689 (= c!1389164 (is-Some!17252 lt!2638420))))

(declare-fun b!7517690 () Bool)

(declare-fun call!689456 () Option!17253)

(assert (=> b!7517690 (= e!4481838 call!689456)))

(declare-fun b!7517691 () Bool)

(declare-fun c!1389166 () Bool)

(assert (=> b!7517691 (= c!1389166 (is-Union!19756 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481836 () Option!17253)

(assert (=> b!7517691 (= e!4481836 e!4481833)))

(declare-fun b!7517692 () Bool)

(declare-fun e!4481834 () Option!17253)

(assert (=> b!7517692 (= e!4481834 None!17252)))

(declare-fun bm!689451 () Bool)

(assert (=> bm!689451 (= call!689457 (getLanguageWitness!1096 (ite c!1389166 (regOne!40025 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517693 () Bool)

(assert (=> b!7517693 (= e!4481837 e!4481836)))

(declare-fun c!1389165 () Bool)

(assert (=> b!7517693 (= c!1389165 (is-Star!19756 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517694 () Bool)

(assert (=> b!7517694 (= e!4481832 (Some!17252 Nil!72520))))

(declare-fun b!7517695 () Bool)

(declare-fun e!4481839 () Option!17253)

(assert (=> b!7517695 (= e!4481833 e!4481839)))

(declare-fun lt!2638421 () Option!17253)

(assert (=> b!7517695 (= lt!2638421 call!689456)))

(declare-fun c!1389159 () Bool)

(assert (=> b!7517695 (= c!1389159 (is-Some!17252 lt!2638421))))

(declare-fun b!7517696 () Bool)

(declare-fun c!1389163 () Bool)

(declare-fun lt!2638419 () Option!17253)

(assert (=> b!7517696 (= c!1389163 (is-Some!17252 lt!2638419))))

(assert (=> b!7517696 (= lt!2638419 call!689457)))

(assert (=> b!7517696 (= e!4481839 e!4481834)))

(declare-fun bm!689452 () Bool)

(assert (=> bm!689452 (= call!689456 (getLanguageWitness!1096 (ite c!1389166 (regTwo!40025 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517697 () Bool)

(assert (=> b!7517697 (= e!4481836 (Some!17252 Nil!72520))))

(declare-fun b!7517698 () Bool)

(assert (=> b!7517698 (= e!4481834 (Some!17252 (++!17359 (v!54387 lt!2638421) (v!54387 lt!2638419))))))

(declare-fun b!7517699 () Bool)

(assert (=> b!7517699 (= e!4481837 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517700 () Bool)

(assert (=> b!7517700 (= e!4481832 e!4481835)))

(declare-fun c!1389162 () Bool)

(assert (=> b!7517700 (= c!1389162 (is-EmptyLang!19756 (ite c!1388905 (regTwo!40025 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regOne!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517701 () Bool)

(assert (=> b!7517701 (= e!4481835 None!17252)))

(declare-fun b!7517702 () Bool)

(assert (=> b!7517702 (= e!4481839 None!17252)))

(assert (= (and d!2308312 c!1389160) b!7517694))

(assert (= (and d!2308312 (not c!1389160)) b!7517700))

(assert (= (and b!7517700 c!1389162) b!7517701))

(assert (= (and b!7517700 (not c!1389162)) b!7517687))

(assert (= (and b!7517687 c!1389161) b!7517699))

(assert (= (and b!7517687 (not c!1389161)) b!7517693))

(assert (= (and b!7517693 c!1389165) b!7517697))

(assert (= (and b!7517693 (not c!1389165)) b!7517691))

(assert (= (and b!7517691 c!1389166) b!7517689))

(assert (= (and b!7517691 (not c!1389166)) b!7517695))

(assert (= (and b!7517689 c!1389164) b!7517688))

(assert (= (and b!7517689 (not c!1389164)) b!7517690))

(assert (= (and b!7517695 c!1389159) b!7517696))

(assert (= (and b!7517695 (not c!1389159)) b!7517702))

(assert (= (and b!7517696 c!1389163) b!7517698))

(assert (= (and b!7517696 (not c!1389163)) b!7517692))

(assert (= (or b!7517690 b!7517695) bm!689452))

(assert (= (or b!7517689 b!7517696) bm!689451))

(declare-fun m!8098906 () Bool)

(assert (=> bm!689451 m!8098906))

(declare-fun m!8098908 () Bool)

(assert (=> bm!689452 m!8098908))

(declare-fun m!8098910 () Bool)

(assert (=> b!7517698 m!8098910))

(assert (=> bm!689374 d!2308312))

(declare-fun d!2308314 () Bool)

(declare-fun lt!2638422 () Int)

(assert (=> d!2308314 (>= lt!2638422 0)))

(declare-fun e!4481840 () Int)

(assert (=> d!2308314 (= lt!2638422 e!4481840)))

(declare-fun c!1389167 () Bool)

(assert (=> d!2308314 (= c!1389167 (is-Nil!72520 (t!387281 (v!54387 lt!2638236))))))

(assert (=> d!2308314 (= (size!42300 (t!387281 (v!54387 lt!2638236))) lt!2638422)))

(declare-fun b!7517703 () Bool)

(assert (=> b!7517703 (= e!4481840 0)))

(declare-fun b!7517704 () Bool)

(assert (=> b!7517704 (= e!4481840 (+ 1 (size!42300 (t!387281 (t!387281 (v!54387 lt!2638236))))))))

(assert (= (and d!2308314 c!1389167) b!7517703))

(assert (= (and d!2308314 (not c!1389167)) b!7517704))

(assert (=> b!7517704 m!8098732))

(assert (=> b!7516912 d!2308314))

(declare-fun c!1389170 () Bool)

(declare-fun b!7517705 () Bool)

(assert (=> b!7517705 (= c!1389170 (is-ElementMatch!19756 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481844 () Option!17253)

(declare-fun e!4481846 () Option!17253)

(assert (=> b!7517705 (= e!4481844 e!4481846)))

(declare-fun d!2308316 () Bool)

(declare-fun c!1389169 () Bool)

(assert (=> d!2308316 (= c!1389169 (is-EmptyExpr!19756 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481841 () Option!17253)

(assert (=> d!2308316 (= (getLanguageWitness!1096 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481841)))

(declare-fun b!7517706 () Bool)

(declare-fun e!4481847 () Option!17253)

(declare-fun lt!2638424 () Option!17253)

(assert (=> b!7517706 (= e!4481847 lt!2638424)))

(declare-fun b!7517707 () Bool)

(declare-fun e!4481842 () Option!17253)

(assert (=> b!7517707 (= e!4481842 e!4481847)))

(declare-fun call!689459 () Option!17253)

(assert (=> b!7517707 (= lt!2638424 call!689459)))

(declare-fun c!1389173 () Bool)

(assert (=> b!7517707 (= c!1389173 (is-Some!17252 lt!2638424))))

(declare-fun b!7517708 () Bool)

(declare-fun call!689458 () Option!17253)

(assert (=> b!7517708 (= e!4481847 call!689458)))

(declare-fun c!1389175 () Bool)

(declare-fun b!7517709 () Bool)

(assert (=> b!7517709 (= c!1389175 (is-Union!19756 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481845 () Option!17253)

(assert (=> b!7517709 (= e!4481845 e!4481842)))

(declare-fun b!7517710 () Bool)

(declare-fun e!4481843 () Option!17253)

(assert (=> b!7517710 (= e!4481843 None!17252)))

(declare-fun bm!689453 () Bool)

(assert (=> bm!689453 (= call!689459 (getLanguageWitness!1096 (ite c!1389175 (regOne!40025 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517711 () Bool)

(assert (=> b!7517711 (= e!4481846 e!4481845)))

(declare-fun c!1389174 () Bool)

(assert (=> b!7517711 (= c!1389174 (is-Star!19756 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517712 () Bool)

(assert (=> b!7517712 (= e!4481841 (Some!17252 Nil!72520))))

(declare-fun b!7517713 () Bool)

(declare-fun e!4481848 () Option!17253)

(assert (=> b!7517713 (= e!4481842 e!4481848)))

(declare-fun lt!2638425 () Option!17253)

(assert (=> b!7517713 (= lt!2638425 call!689458)))

(declare-fun c!1389168 () Bool)

(assert (=> b!7517713 (= c!1389168 (is-Some!17252 lt!2638425))))

(declare-fun b!7517714 () Bool)

(declare-fun c!1389172 () Bool)

(declare-fun lt!2638423 () Option!17253)

(assert (=> b!7517714 (= c!1389172 (is-Some!17252 lt!2638423))))

(assert (=> b!7517714 (= lt!2638423 call!689459)))

(assert (=> b!7517714 (= e!4481848 e!4481843)))

(declare-fun bm!689454 () Bool)

(assert (=> bm!689454 (= call!689458 (getLanguageWitness!1096 (ite c!1389175 (regTwo!40025 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517715 () Bool)

(assert (=> b!7517715 (= e!4481845 (Some!17252 Nil!72520))))

(declare-fun b!7517716 () Bool)

(assert (=> b!7517716 (= e!4481843 (Some!17252 (++!17359 (v!54387 lt!2638425) (v!54387 lt!2638423))))))

(declare-fun b!7517717 () Bool)

(assert (=> b!7517717 (= e!4481846 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517718 () Bool)

(assert (=> b!7517718 (= e!4481841 e!4481844)))

(declare-fun c!1389171 () Bool)

(assert (=> b!7517718 (= c!1389171 (is-EmptyLang!19756 (ite c!1388890 (regTwo!40025 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388765 (regTwo!40025 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regOne!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517719 () Bool)

(assert (=> b!7517719 (= e!4481844 None!17252)))

(declare-fun b!7517720 () Bool)

(assert (=> b!7517720 (= e!4481848 None!17252)))

(assert (= (and d!2308316 c!1389169) b!7517712))

(assert (= (and d!2308316 (not c!1389169)) b!7517718))

(assert (= (and b!7517718 c!1389171) b!7517719))

(assert (= (and b!7517718 (not c!1389171)) b!7517705))

(assert (= (and b!7517705 c!1389170) b!7517717))

(assert (= (and b!7517705 (not c!1389170)) b!7517711))

(assert (= (and b!7517711 c!1389174) b!7517715))

(assert (= (and b!7517711 (not c!1389174)) b!7517709))

(assert (= (and b!7517709 c!1389175) b!7517707))

(assert (= (and b!7517709 (not c!1389175)) b!7517713))

(assert (= (and b!7517707 c!1389173) b!7517706))

(assert (= (and b!7517707 (not c!1389173)) b!7517708))

(assert (= (and b!7517713 c!1389168) b!7517714))

(assert (= (and b!7517713 (not c!1389168)) b!7517720))

(assert (= (and b!7517714 c!1389172) b!7517716))

(assert (= (and b!7517714 (not c!1389172)) b!7517710))

(assert (= (or b!7517708 b!7517713) bm!689454))

(assert (= (or b!7517707 b!7517714) bm!689453))

(declare-fun m!8098912 () Bool)

(assert (=> bm!689453 m!8098912))

(declare-fun m!8098914 () Bool)

(assert (=> bm!689454 m!8098914))

(declare-fun m!8098916 () Bool)

(assert (=> b!7517716 m!8098916))

(assert (=> bm!689372 d!2308316))

(declare-fun d!2308318 () Bool)

(declare-fun c!1389176 () Bool)

(assert (=> d!2308318 (= c!1389176 (is-Nil!72520 (t!387281 (t!387281 lt!2638233))))))

(declare-fun e!4481849 () (Set C!39838))

(assert (=> d!2308318 (= (content!15343 (t!387281 (t!387281 lt!2638233))) e!4481849)))

(declare-fun b!7517721 () Bool)

(assert (=> b!7517721 (= e!4481849 (as set.empty (Set C!39838)))))

(declare-fun b!7517722 () Bool)

(assert (=> b!7517722 (= e!4481849 (set.union (set.insert (h!78968 (t!387281 (t!387281 lt!2638233))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (t!387281 lt!2638233))))))))

(assert (= (and d!2308318 c!1389176) b!7517721))

(assert (= (and d!2308318 (not c!1389176)) b!7517722))

(declare-fun m!8098918 () Bool)

(assert (=> b!7517722 m!8098918))

(declare-fun m!8098920 () Bool)

(assert (=> b!7517722 m!8098920))

(assert (=> b!7516884 d!2308318))

(declare-fun d!2308320 () Bool)

(declare-fun lt!2638426 () Int)

(assert (=> d!2308320 (>= lt!2638426 0)))

(declare-fun e!4481850 () Int)

(assert (=> d!2308320 (= lt!2638426 e!4481850)))

(declare-fun c!1389177 () Bool)

(assert (=> d!2308320 (= c!1389177 (is-Nil!72520 lt!2638302))))

(assert (=> d!2308320 (= (size!42300 lt!2638302) lt!2638426)))

(declare-fun b!7517723 () Bool)

(assert (=> b!7517723 (= e!4481850 0)))

(declare-fun b!7517724 () Bool)

(assert (=> b!7517724 (= e!4481850 (+ 1 (size!42300 (t!387281 lt!2638302))))))

(assert (= (and d!2308320 c!1389177) b!7517723))

(assert (= (and d!2308320 (not c!1389177)) b!7517724))

(declare-fun m!8098922 () Bool)

(assert (=> b!7517724 m!8098922))

(assert (=> b!7516779 d!2308320))

(declare-fun d!2308322 () Bool)

(declare-fun lt!2638427 () Int)

(assert (=> d!2308322 (>= lt!2638427 0)))

(declare-fun e!4481851 () Int)

(assert (=> d!2308322 (= lt!2638427 e!4481851)))

(declare-fun c!1389178 () Bool)

(assert (=> d!2308322 (= c!1389178 (is-Nil!72520 (v!54387 lt!2638267)))))

(assert (=> d!2308322 (= (size!42300 (v!54387 lt!2638267)) lt!2638427)))

(declare-fun b!7517725 () Bool)

(assert (=> b!7517725 (= e!4481851 0)))

(declare-fun b!7517726 () Bool)

(assert (=> b!7517726 (= e!4481851 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638267)))))))

(assert (= (and d!2308322 c!1389178) b!7517725))

(assert (= (and d!2308322 (not c!1389178)) b!7517726))

(assert (=> b!7517726 m!8098702))

(assert (=> b!7516779 d!2308322))

(declare-fun d!2308324 () Bool)

(declare-fun lt!2638428 () Int)

(assert (=> d!2308324 (>= lt!2638428 0)))

(declare-fun e!4481852 () Int)

(assert (=> d!2308324 (= lt!2638428 e!4481852)))

(declare-fun c!1389179 () Bool)

(assert (=> d!2308324 (= c!1389179 (is-Nil!72520 (v!54387 lt!2638265)))))

(assert (=> d!2308324 (= (size!42300 (v!54387 lt!2638265)) lt!2638428)))

(declare-fun b!7517727 () Bool)

(assert (=> b!7517727 (= e!4481852 0)))

(declare-fun b!7517728 () Bool)

(assert (=> b!7517728 (= e!4481852 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638265)))))))

(assert (= (and d!2308324 c!1389179) b!7517727))

(assert (= (and d!2308324 (not c!1389179)) b!7517728))

(declare-fun m!8098924 () Bool)

(assert (=> b!7517728 m!8098924))

(assert (=> b!7516779 d!2308324))

(declare-fun b!7517729 () Bool)

(declare-fun e!4481854 () List!72644)

(assert (=> b!7517729 (= e!4481854 (v!54387 lt!2638304))))

(declare-fun b!7517732 () Bool)

(declare-fun e!4481853 () Bool)

(declare-fun lt!2638429 () List!72644)

(assert (=> b!7517732 (= e!4481853 (or (not (= (v!54387 lt!2638304) Nil!72520)) (= lt!2638429 (v!54387 lt!2638306))))))

(declare-fun b!7517731 () Bool)

(declare-fun res!3013935 () Bool)

(assert (=> b!7517731 (=> (not res!3013935) (not e!4481853))))

(assert (=> b!7517731 (= res!3013935 (= (size!42300 lt!2638429) (+ (size!42300 (v!54387 lt!2638306)) (size!42300 (v!54387 lt!2638304)))))))

(declare-fun b!7517730 () Bool)

(assert (=> b!7517730 (= e!4481854 (Cons!72520 (h!78968 (v!54387 lt!2638306)) (++!17359 (t!387281 (v!54387 lt!2638306)) (v!54387 lt!2638304))))))

(declare-fun d!2308326 () Bool)

(assert (=> d!2308326 e!4481853))

(declare-fun res!3013936 () Bool)

(assert (=> d!2308326 (=> (not res!3013936) (not e!4481853))))

(assert (=> d!2308326 (= res!3013936 (= (content!15343 lt!2638429) (set.union (content!15343 (v!54387 lt!2638306)) (content!15343 (v!54387 lt!2638304)))))))

(assert (=> d!2308326 (= lt!2638429 e!4481854)))

(declare-fun c!1389180 () Bool)

(assert (=> d!2308326 (= c!1389180 (is-Nil!72520 (v!54387 lt!2638306)))))

(assert (=> d!2308326 (= (++!17359 (v!54387 lt!2638306) (v!54387 lt!2638304)) lt!2638429)))

(assert (= (and d!2308326 c!1389180) b!7517729))

(assert (= (and d!2308326 (not c!1389180)) b!7517730))

(assert (= (and d!2308326 res!3013936) b!7517731))

(assert (= (and b!7517731 res!3013935) b!7517732))

(declare-fun m!8098926 () Bool)

(assert (=> b!7517731 m!8098926))

(declare-fun m!8098928 () Bool)

(assert (=> b!7517731 m!8098928))

(declare-fun m!8098930 () Bool)

(assert (=> b!7517731 m!8098930))

(declare-fun m!8098932 () Bool)

(assert (=> b!7517730 m!8098932))

(declare-fun m!8098934 () Bool)

(assert (=> d!2308326 m!8098934))

(declare-fun m!8098936 () Bool)

(assert (=> d!2308326 m!8098936))

(declare-fun m!8098938 () Bool)

(assert (=> d!2308326 m!8098938))

(assert (=> b!7516806 d!2308326))

(declare-fun b!7517733 () Bool)

(declare-fun e!4481856 () Bool)

(declare-fun call!689461 () Bool)

(assert (=> b!7517733 (= e!4481856 call!689461)))

(declare-fun b!7517734 () Bool)

(declare-fun res!3013938 () Bool)

(declare-fun e!4481860 () Bool)

(assert (=> b!7517734 (=> (not res!3013938) (not e!4481860))))

(declare-fun call!689462 () Bool)

(assert (=> b!7517734 (= res!3013938 call!689462)))

(declare-fun e!4481859 () Bool)

(assert (=> b!7517734 (= e!4481859 e!4481860)))

(declare-fun bm!689455 () Bool)

(declare-fun call!689460 () Bool)

(declare-fun c!1389181 () Bool)

(assert (=> bm!689455 (= call!689460 (validRegex!10192 (ite c!1389181 (regTwo!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))) (regTwo!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))))

(declare-fun b!7517735 () Bool)

(declare-fun e!4481857 () Bool)

(assert (=> b!7517735 (= e!4481857 e!4481856)))

(declare-fun res!3013937 () Bool)

(assert (=> b!7517735 (= res!3013937 (not (nullable!8596 (reg!20085 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))))

(assert (=> b!7517735 (=> (not res!3013937) (not e!4481856))))

(declare-fun bm!689456 () Bool)

(assert (=> bm!689456 (= call!689462 call!689461)))

(declare-fun c!1389182 () Bool)

(declare-fun bm!689457 () Bool)

(assert (=> bm!689457 (= call!689461 (validRegex!10192 (ite c!1389182 (reg!20085 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))) (ite c!1389181 (regOne!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))) (regOne!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091)))))))))))

(declare-fun b!7517736 () Bool)

(assert (=> b!7517736 (= e!4481860 call!689460)))

(declare-fun d!2308328 () Bool)

(declare-fun res!3013941 () Bool)

(declare-fun e!4481861 () Bool)

(assert (=> d!2308328 (=> res!3013941 e!4481861)))

(assert (=> d!2308328 (= res!3013941 (is-ElementMatch!19756 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(assert (=> d!2308328 (= (validRegex!10192 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))) e!4481861)))

(declare-fun b!7517737 () Bool)

(assert (=> b!7517737 (= e!4481857 e!4481859)))

(assert (=> b!7517737 (= c!1389181 (is-Union!19756 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(declare-fun b!7517738 () Bool)

(declare-fun e!4481855 () Bool)

(assert (=> b!7517738 (= e!4481855 call!689460)))

(declare-fun b!7517739 () Bool)

(declare-fun e!4481858 () Bool)

(assert (=> b!7517739 (= e!4481858 e!4481855)))

(declare-fun res!3013939 () Bool)

(assert (=> b!7517739 (=> (not res!3013939) (not e!4481855))))

(assert (=> b!7517739 (= res!3013939 call!689462)))

(declare-fun b!7517740 () Bool)

(declare-fun res!3013940 () Bool)

(assert (=> b!7517740 (=> res!3013940 e!4481858)))

(assert (=> b!7517740 (= res!3013940 (not (is-Concat!28601 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091)))))))))

(assert (=> b!7517740 (= e!4481859 e!4481858)))

(declare-fun b!7517741 () Bool)

(assert (=> b!7517741 (= e!4481861 e!4481857)))

(assert (=> b!7517741 (= c!1389182 (is-Star!19756 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(assert (= (and d!2308328 (not res!3013941)) b!7517741))

(assert (= (and b!7517741 c!1389182) b!7517735))

(assert (= (and b!7517741 (not c!1389182)) b!7517737))

(assert (= (and b!7517735 res!3013937) b!7517733))

(assert (= (and b!7517737 c!1389181) b!7517734))

(assert (= (and b!7517737 (not c!1389181)) b!7517740))

(assert (= (and b!7517734 res!3013938) b!7517736))

(assert (= (and b!7517740 (not res!3013940)) b!7517739))

(assert (= (and b!7517739 res!3013939) b!7517738))

(assert (= (or b!7517734 b!7517739) bm!689456))

(assert (= (or b!7517736 b!7517738) bm!689455))

(assert (= (or b!7517733 bm!689456) bm!689457))

(declare-fun m!8098940 () Bool)

(assert (=> bm!689455 m!8098940))

(declare-fun m!8098942 () Bool)

(assert (=> b!7517735 m!8098942))

(declare-fun m!8098944 () Bool)

(assert (=> bm!689457 m!8098944))

(assert (=> bs!1939412 d!2308328))

(declare-fun d!2308330 () Bool)

(declare-fun c!1389183 () Bool)

(assert (=> d!2308330 (= c!1389183 (is-Nil!72520 (t!387281 (t!387281 (v!54387 lt!2638221)))))))

(declare-fun e!4481862 () (Set C!39838))

(assert (=> d!2308330 (= (content!15343 (t!387281 (t!387281 (v!54387 lt!2638221)))) e!4481862)))

(declare-fun b!7517742 () Bool)

(assert (=> b!7517742 (= e!4481862 (as set.empty (Set C!39838)))))

(declare-fun b!7517743 () Bool)

(assert (=> b!7517743 (= e!4481862 (set.union (set.insert (h!78968 (t!387281 (t!387281 (v!54387 lt!2638221)))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221)))))))))

(assert (= (and d!2308330 c!1389183) b!7517742))

(assert (= (and d!2308330 (not c!1389183)) b!7517743))

(declare-fun m!8098946 () Bool)

(assert (=> b!7517743 m!8098946))

(declare-fun m!8098948 () Bool)

(assert (=> b!7517743 m!8098948))

(assert (=> b!7516782 d!2308330))

(declare-fun b!7517744 () Bool)

(declare-fun e!4481867 () Bool)

(declare-fun e!4481865 () Bool)

(assert (=> b!7517744 (= e!4481867 e!4481865)))

(declare-fun res!3013946 () Bool)

(declare-fun call!689464 () Bool)

(assert (=> b!7517744 (= res!3013946 call!689464)))

(assert (=> b!7517744 (=> (not res!3013946) (not e!4481865))))

(declare-fun b!7517746 () Bool)

(declare-fun e!4481863 () Bool)

(declare-fun e!4481868 () Bool)

(assert (=> b!7517746 (= e!4481863 e!4481868)))

(declare-fun res!3013942 () Bool)

(assert (=> b!7517746 (=> (not res!3013942) (not e!4481868))))

(assert (=> b!7517746 (= res!3013942 (and (not (is-ElementMatch!19756 (h!78967 (t!387280 (exprs!9008 c!7091))))) (not (is-Star!19756 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun bm!689458 () Bool)

(declare-fun c!1389184 () Bool)

(assert (=> bm!689458 (= call!689464 (lostCause!1627 (ite c!1389184 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun b!7517747 () Bool)

(declare-fun call!689463 () Bool)

(assert (=> b!7517747 (= e!4481865 call!689463)))

(declare-fun b!7517748 () Bool)

(declare-fun e!4481866 () Bool)

(assert (=> b!7517748 (= e!4481867 e!4481866)))

(declare-fun res!3013943 () Bool)

(assert (=> b!7517748 (= res!3013943 call!689463)))

(assert (=> b!7517748 (=> res!3013943 e!4481866)))

(declare-fun b!7517749 () Bool)

(assert (=> b!7517749 (= e!4481868 e!4481867)))

(assert (=> b!7517749 (= c!1389184 (is-Union!19756 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(declare-fun b!7517745 () Bool)

(declare-fun e!4481864 () Bool)

(assert (=> b!7517745 (= e!4481864 e!4481863)))

(declare-fun res!3013944 () Bool)

(assert (=> b!7517745 (=> res!3013944 e!4481863)))

(assert (=> b!7517745 (= res!3013944 (is-EmptyLang!19756 (h!78967 (t!387280 (exprs!9008 c!7091)))))))

(declare-fun d!2308332 () Bool)

(declare-fun lt!2638430 () Bool)

(assert (=> d!2308332 (= lt!2638430 (isEmpty!41334 (getLanguageWitness!1096 (h!78967 (t!387280 (exprs!9008 c!7091))))))))

(assert (=> d!2308332 (= lt!2638430 e!4481864)))

(declare-fun res!3013945 () Bool)

(assert (=> d!2308332 (=> (not res!3013945) (not e!4481864))))

(assert (=> d!2308332 (= res!3013945 (not (is-EmptyExpr!19756 (h!78967 (t!387280 (exprs!9008 c!7091))))))))

(assert (=> d!2308332 (= (lostCauseFct!409 (h!78967 (t!387280 (exprs!9008 c!7091)))) lt!2638430)))

(declare-fun bm!689459 () Bool)

(assert (=> bm!689459 (= call!689463 (lostCause!1627 (ite c!1389184 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun b!7517750 () Bool)

(assert (=> b!7517750 (= e!4481866 call!689464)))

(assert (= (and d!2308332 res!3013945) b!7517745))

(assert (= (and b!7517745 (not res!3013944)) b!7517746))

(assert (= (and b!7517746 res!3013942) b!7517749))

(assert (= (and b!7517749 c!1389184) b!7517744))

(assert (= (and b!7517749 (not c!1389184)) b!7517748))

(assert (= (and b!7517744 res!3013946) b!7517747))

(assert (= (and b!7517748 (not res!3013943)) b!7517750))

(assert (= (or b!7517744 b!7517750) bm!689458))

(assert (= (or b!7517747 b!7517748) bm!689459))

(declare-fun m!8098950 () Bool)

(assert (=> bm!689458 m!8098950))

(declare-fun m!8098952 () Bool)

(assert (=> d!2308332 m!8098952))

(assert (=> d!2308332 m!8098952))

(declare-fun m!8098954 () Bool)

(assert (=> d!2308332 m!8098954))

(declare-fun m!8098956 () Bool)

(assert (=> bm!689459 m!8098956))

(assert (=> d!2308080 d!2308332))

(declare-fun b!7517751 () Bool)

(declare-fun e!4481870 () List!72644)

(assert (=> b!7517751 (= e!4481870 (v!54387 lt!2638299))))

(declare-fun b!7517754 () Bool)

(declare-fun lt!2638431 () List!72644)

(declare-fun e!4481869 () Bool)

(assert (=> b!7517754 (= e!4481869 (or (not (= (v!54387 lt!2638299) Nil!72520)) (= lt!2638431 (v!54387 lt!2638301))))))

(declare-fun b!7517753 () Bool)

(declare-fun res!3013947 () Bool)

(assert (=> b!7517753 (=> (not res!3013947) (not e!4481869))))

(assert (=> b!7517753 (= res!3013947 (= (size!42300 lt!2638431) (+ (size!42300 (v!54387 lt!2638301)) (size!42300 (v!54387 lt!2638299)))))))

(declare-fun b!7517752 () Bool)

(assert (=> b!7517752 (= e!4481870 (Cons!72520 (h!78968 (v!54387 lt!2638301)) (++!17359 (t!387281 (v!54387 lt!2638301)) (v!54387 lt!2638299))))))

(declare-fun d!2308334 () Bool)

(assert (=> d!2308334 e!4481869))

(declare-fun res!3013948 () Bool)

(assert (=> d!2308334 (=> (not res!3013948) (not e!4481869))))

(assert (=> d!2308334 (= res!3013948 (= (content!15343 lt!2638431) (set.union (content!15343 (v!54387 lt!2638301)) (content!15343 (v!54387 lt!2638299)))))))

(assert (=> d!2308334 (= lt!2638431 e!4481870)))

(declare-fun c!1389185 () Bool)

(assert (=> d!2308334 (= c!1389185 (is-Nil!72520 (v!54387 lt!2638301)))))

(assert (=> d!2308334 (= (++!17359 (v!54387 lt!2638301) (v!54387 lt!2638299)) lt!2638431)))

(assert (= (and d!2308334 c!1389185) b!7517751))

(assert (= (and d!2308334 (not c!1389185)) b!7517752))

(assert (= (and d!2308334 res!3013948) b!7517753))

(assert (= (and b!7517753 res!3013947) b!7517754))

(declare-fun m!8098958 () Bool)

(assert (=> b!7517753 m!8098958))

(declare-fun m!8098960 () Bool)

(assert (=> b!7517753 m!8098960))

(declare-fun m!8098962 () Bool)

(assert (=> b!7517753 m!8098962))

(declare-fun m!8098964 () Bool)

(assert (=> b!7517752 m!8098964))

(declare-fun m!8098966 () Bool)

(assert (=> d!2308334 m!8098966))

(declare-fun m!8098968 () Bool)

(assert (=> d!2308334 m!8098968))

(declare-fun m!8098970 () Bool)

(assert (=> d!2308334 m!8098970))

(assert (=> b!7516772 d!2308334))

(declare-fun d!2308336 () Bool)

(declare-fun c!1389186 () Bool)

(assert (=> d!2308336 (= c!1389186 (is-Nil!72520 (t!387281 (v!54387 lt!2638239))))))

(declare-fun e!4481871 () (Set C!39838))

(assert (=> d!2308336 (= (content!15343 (t!387281 (v!54387 lt!2638239))) e!4481871)))

(declare-fun b!7517755 () Bool)

(assert (=> b!7517755 (= e!4481871 (as set.empty (Set C!39838)))))

(declare-fun b!7517756 () Bool)

(assert (=> b!7517756 (= e!4481871 (set.union (set.insert (h!78968 (t!387281 (v!54387 lt!2638239))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (v!54387 lt!2638239))))))))

(assert (= (and d!2308336 c!1389186) b!7517755))

(assert (= (and d!2308336 (not c!1389186)) b!7517756))

(declare-fun m!8098972 () Bool)

(assert (=> b!7517756 m!8098972))

(declare-fun m!8098974 () Bool)

(assert (=> b!7517756 m!8098974))

(assert (=> b!7516918 d!2308336))

(declare-fun b!7517757 () Bool)

(declare-fun e!4481873 () List!72644)

(assert (=> b!7517757 (= e!4481873 (v!54387 lt!2638249))))

(declare-fun e!4481872 () Bool)

(declare-fun lt!2638432 () List!72644)

(declare-fun b!7517760 () Bool)

(assert (=> b!7517760 (= e!4481872 (or (not (= (v!54387 lt!2638249) Nil!72520)) (= lt!2638432 (t!387281 (v!54387 lt!2638251)))))))

(declare-fun b!7517759 () Bool)

(declare-fun res!3013949 () Bool)

(assert (=> b!7517759 (=> (not res!3013949) (not e!4481872))))

(assert (=> b!7517759 (= res!3013949 (= (size!42300 lt!2638432) (+ (size!42300 (t!387281 (v!54387 lt!2638251))) (size!42300 (v!54387 lt!2638249)))))))

(declare-fun b!7517758 () Bool)

(assert (=> b!7517758 (= e!4481873 (Cons!72520 (h!78968 (t!387281 (v!54387 lt!2638251))) (++!17359 (t!387281 (t!387281 (v!54387 lt!2638251))) (v!54387 lt!2638249))))))

(declare-fun d!2308338 () Bool)

(assert (=> d!2308338 e!4481872))

(declare-fun res!3013950 () Bool)

(assert (=> d!2308338 (=> (not res!3013950) (not e!4481872))))

(assert (=> d!2308338 (= res!3013950 (= (content!15343 lt!2638432) (set.union (content!15343 (t!387281 (v!54387 lt!2638251))) (content!15343 (v!54387 lt!2638249)))))))

(assert (=> d!2308338 (= lt!2638432 e!4481873)))

(declare-fun c!1389187 () Bool)

(assert (=> d!2308338 (= c!1389187 (is-Nil!72520 (t!387281 (v!54387 lt!2638251))))))

(assert (=> d!2308338 (= (++!17359 (t!387281 (v!54387 lt!2638251)) (v!54387 lt!2638249)) lt!2638432)))

(assert (= (and d!2308338 c!1389187) b!7517757))

(assert (= (and d!2308338 (not c!1389187)) b!7517758))

(assert (= (and d!2308338 res!3013950) b!7517759))

(assert (= (and b!7517759 res!3013949) b!7517760))

(declare-fun m!8098976 () Bool)

(assert (=> b!7517759 m!8098976))

(declare-fun m!8098978 () Bool)

(assert (=> b!7517759 m!8098978))

(assert (=> b!7517759 m!8098300))

(declare-fun m!8098980 () Bool)

(assert (=> b!7517758 m!8098980))

(declare-fun m!8098982 () Bool)

(assert (=> d!2308338 m!8098982))

(declare-fun m!8098984 () Bool)

(assert (=> d!2308338 m!8098984))

(assert (=> d!2308338 m!8098308))

(assert (=> b!7516790 d!2308338))

(declare-fun d!2308340 () Bool)

(declare-fun c!1389188 () Bool)

(assert (=> d!2308340 (= c!1389188 (is-Nil!72520 (t!387281 lt!2638268)))))

(declare-fun e!4481874 () (Set C!39838))

(assert (=> d!2308340 (= (content!15343 (t!387281 lt!2638268)) e!4481874)))

(declare-fun b!7517761 () Bool)

(assert (=> b!7517761 (= e!4481874 (as set.empty (Set C!39838)))))

(declare-fun b!7517762 () Bool)

(assert (=> b!7517762 (= e!4481874 (set.union (set.insert (h!78968 (t!387281 lt!2638268)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 lt!2638268)))))))

(assert (= (and d!2308340 c!1389188) b!7517761))

(assert (= (and d!2308340 (not c!1389188)) b!7517762))

(declare-fun m!8098986 () Bool)

(assert (=> b!7517762 m!8098986))

(declare-fun m!8098988 () Bool)

(assert (=> b!7517762 m!8098988))

(assert (=> b!7516916 d!2308340))

(declare-fun b!7517763 () Bool)

(declare-fun e!4481876 () Bool)

(declare-fun call!689466 () Bool)

(assert (=> b!7517763 (= e!4481876 call!689466)))

(declare-fun b!7517764 () Bool)

(declare-fun res!3013952 () Bool)

(declare-fun e!4481880 () Bool)

(assert (=> b!7517764 (=> (not res!3013952) (not e!4481880))))

(declare-fun call!689467 () Bool)

(assert (=> b!7517764 (= res!3013952 call!689467)))

(declare-fun e!4481879 () Bool)

(assert (=> b!7517764 (= e!4481879 e!4481880)))

(declare-fun call!689465 () Bool)

(declare-fun c!1389189 () Bool)

(declare-fun bm!689460 () Bool)

(assert (=> bm!689460 (= call!689465 (validRegex!10192 (ite c!1389189 (regTwo!40025 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))) (regTwo!40024 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))))

(declare-fun b!7517765 () Bool)

(declare-fun e!4481877 () Bool)

(assert (=> b!7517765 (= e!4481877 e!4481876)))

(declare-fun res!3013951 () Bool)

(assert (=> b!7517765 (= res!3013951 (not (nullable!8596 (reg!20085 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))))

(assert (=> b!7517765 (=> (not res!3013951) (not e!4481876))))

(declare-fun bm!689461 () Bool)

(assert (=> bm!689461 (= call!689467 call!689466)))

(declare-fun bm!689462 () Bool)

(declare-fun c!1389190 () Bool)

(assert (=> bm!689462 (= call!689466 (validRegex!10192 (ite c!1389190 (reg!20085 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))) (ite c!1389189 (regOne!40025 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))) (regOne!40024 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517766 () Bool)

(assert (=> b!7517766 (= e!4481880 call!689465)))

(declare-fun d!2308342 () Bool)

(declare-fun res!3013955 () Bool)

(declare-fun e!4481881 () Bool)

(assert (=> d!2308342 (=> res!3013955 e!4481881)))

(assert (=> d!2308342 (= res!3013955 (is-ElementMatch!19756 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(assert (=> d!2308342 (= (validRegex!10192 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))) e!4481881)))

(declare-fun b!7517767 () Bool)

(assert (=> b!7517767 (= e!4481877 e!4481879)))

(assert (=> b!7517767 (= c!1389189 (is-Union!19756 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(declare-fun b!7517768 () Bool)

(declare-fun e!4481875 () Bool)

(assert (=> b!7517768 (= e!4481875 call!689465)))

(declare-fun b!7517769 () Bool)

(declare-fun e!4481878 () Bool)

(assert (=> b!7517769 (= e!4481878 e!4481875)))

(declare-fun res!3013953 () Bool)

(assert (=> b!7517769 (=> (not res!3013953) (not e!4481875))))

(assert (=> b!7517769 (= res!3013953 call!689467)))

(declare-fun b!7517770 () Bool)

(declare-fun res!3013954 () Bool)

(assert (=> b!7517770 (=> res!3013954 e!4481878)))

(assert (=> b!7517770 (= res!3013954 (not (is-Concat!28601 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(assert (=> b!7517770 (= e!4481879 e!4481878)))

(declare-fun b!7517771 () Bool)

(assert (=> b!7517771 (= e!4481881 e!4481877)))

(assert (=> b!7517771 (= c!1389190 (is-Star!19756 (ite c!1388949 (regTwo!40025 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))) (regTwo!40024 (ite c!1388771 (reg!20085 (h!78967 (exprs!9008 c!7091))) (ite c!1388770 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(assert (= (and d!2308342 (not res!3013955)) b!7517771))

(assert (= (and b!7517771 c!1389190) b!7517765))

(assert (= (and b!7517771 (not c!1389190)) b!7517767))

(assert (= (and b!7517765 res!3013951) b!7517763))

(assert (= (and b!7517767 c!1389189) b!7517764))

(assert (= (and b!7517767 (not c!1389189)) b!7517770))

(assert (= (and b!7517764 res!3013952) b!7517766))

(assert (= (and b!7517770 (not res!3013954)) b!7517769))

(assert (= (and b!7517769 res!3013953) b!7517768))

(assert (= (or b!7517764 b!7517769) bm!689461))

(assert (= (or b!7517766 b!7517768) bm!689460))

(assert (= (or b!7517763 bm!689461) bm!689462))

(declare-fun m!8098990 () Bool)

(assert (=> bm!689460 m!8098990))

(declare-fun m!8098992 () Bool)

(assert (=> b!7517765 m!8098992))

(declare-fun m!8098994 () Bool)

(assert (=> bm!689462 m!8098994))

(assert (=> bm!689390 d!2308342))

(declare-fun b!7517772 () Bool)

(declare-fun e!4481883 () List!72644)

(assert (=> b!7517772 (= e!4481883 (v!54387 lt!2638237))))

(declare-fun b!7517775 () Bool)

(declare-fun lt!2638433 () List!72644)

(declare-fun e!4481882 () Bool)

(assert (=> b!7517775 (= e!4481882 (or (not (= (v!54387 lt!2638237) Nil!72520)) (= lt!2638433 (t!387281 (t!387281 (v!54387 lt!2638239))))))))

(declare-fun b!7517774 () Bool)

(declare-fun res!3013956 () Bool)

(assert (=> b!7517774 (=> (not res!3013956) (not e!4481882))))

(assert (=> b!7517774 (= res!3013956 (= (size!42300 lt!2638433) (+ (size!42300 (t!387281 (t!387281 (v!54387 lt!2638239)))) (size!42300 (v!54387 lt!2638237)))))))

(declare-fun b!7517773 () Bool)

(assert (=> b!7517773 (= e!4481883 (Cons!72520 (h!78968 (t!387281 (t!387281 (v!54387 lt!2638239)))) (++!17359 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638239)))) (v!54387 lt!2638237))))))

(declare-fun d!2308344 () Bool)

(assert (=> d!2308344 e!4481882))

(declare-fun res!3013957 () Bool)

(assert (=> d!2308344 (=> (not res!3013957) (not e!4481882))))

(assert (=> d!2308344 (= res!3013957 (= (content!15343 lt!2638433) (set.union (content!15343 (t!387281 (t!387281 (v!54387 lt!2638239)))) (content!15343 (v!54387 lt!2638237)))))))

(assert (=> d!2308344 (= lt!2638433 e!4481883)))

(declare-fun c!1389191 () Bool)

(assert (=> d!2308344 (= c!1389191 (is-Nil!72520 (t!387281 (t!387281 (v!54387 lt!2638239)))))))

(assert (=> d!2308344 (= (++!17359 (t!387281 (t!387281 (v!54387 lt!2638239))) (v!54387 lt!2638237)) lt!2638433)))

(assert (= (and d!2308344 c!1389191) b!7517772))

(assert (= (and d!2308344 (not c!1389191)) b!7517773))

(assert (= (and d!2308344 res!3013957) b!7517774))

(assert (= (and b!7517774 res!3013956) b!7517775))

(declare-fun m!8098996 () Bool)

(assert (=> b!7517774 m!8098996))

(assert (=> b!7517774 m!8098756))

(assert (=> b!7517774 m!8098106))

(declare-fun m!8098998 () Bool)

(assert (=> b!7517773 m!8098998))

(declare-fun m!8099000 () Bool)

(assert (=> d!2308344 m!8099000))

(assert (=> d!2308344 m!8098974))

(assert (=> d!2308344 m!8098114))

(assert (=> b!7516864 d!2308344))

(declare-fun d!2308346 () Bool)

(declare-fun lt!2638434 () Int)

(assert (=> d!2308346 (>= lt!2638434 0)))

(declare-fun e!4481884 () Int)

(assert (=> d!2308346 (= lt!2638434 e!4481884)))

(declare-fun c!1389192 () Bool)

(assert (=> d!2308346 (= c!1389192 (is-Nil!72520 lt!2638319))))

(assert (=> d!2308346 (= (size!42300 lt!2638319) lt!2638434)))

(declare-fun b!7517776 () Bool)

(assert (=> b!7517776 (= e!4481884 0)))

(declare-fun b!7517777 () Bool)

(assert (=> b!7517777 (= e!4481884 (+ 1 (size!42300 (t!387281 lt!2638319))))))

(assert (= (and d!2308346 c!1389192) b!7517776))

(assert (= (and d!2308346 (not c!1389192)) b!7517777))

(declare-fun m!8099002 () Bool)

(assert (=> b!7517777 m!8099002))

(assert (=> b!7516887 d!2308346))

(assert (=> b!7516887 d!2308314))

(assert (=> b!7516887 d!2308100))

(declare-fun d!2308348 () Bool)

(declare-fun c!1389193 () Bool)

(assert (=> d!2308348 (= c!1389193 (is-Nil!72520 lt!2638303))))

(declare-fun e!4481885 () (Set C!39838))

(assert (=> d!2308348 (= (content!15343 lt!2638303) e!4481885)))

(declare-fun b!7517778 () Bool)

(assert (=> b!7517778 (= e!4481885 (as set.empty (Set C!39838)))))

(declare-fun b!7517779 () Bool)

(assert (=> b!7517779 (= e!4481885 (set.union (set.insert (h!78968 lt!2638303) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638303))))))

(assert (= (and d!2308348 c!1389193) b!7517778))

(assert (= (and d!2308348 (not c!1389193)) b!7517779))

(declare-fun m!8099004 () Bool)

(assert (=> b!7517779 m!8099004))

(declare-fun m!8099006 () Bool)

(assert (=> b!7517779 m!8099006))

(assert (=> d!2308064 d!2308348))

(declare-fun d!2308350 () Bool)

(declare-fun c!1389194 () Bool)

(assert (=> d!2308350 (= c!1389194 (is-Nil!72520 (v!54387 lt!2638251)))))

(declare-fun e!4481886 () (Set C!39838))

(assert (=> d!2308350 (= (content!15343 (v!54387 lt!2638251)) e!4481886)))

(declare-fun b!7517780 () Bool)

(assert (=> b!7517780 (= e!4481886 (as set.empty (Set C!39838)))))

(declare-fun b!7517781 () Bool)

(assert (=> b!7517781 (= e!4481886 (set.union (set.insert (h!78968 (v!54387 lt!2638251)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638251)))))))

(assert (= (and d!2308350 c!1389194) b!7517780))

(assert (= (and d!2308350 (not c!1389194)) b!7517781))

(declare-fun m!8099008 () Bool)

(assert (=> b!7517781 m!8099008))

(assert (=> b!7517781 m!8098984))

(assert (=> d!2308064 d!2308350))

(declare-fun d!2308352 () Bool)

(declare-fun c!1389195 () Bool)

(assert (=> d!2308352 (= c!1389195 (is-Nil!72520 (v!54387 lt!2638249)))))

(declare-fun e!4481887 () (Set C!39838))

(assert (=> d!2308352 (= (content!15343 (v!54387 lt!2638249)) e!4481887)))

(declare-fun b!7517782 () Bool)

(assert (=> b!7517782 (= e!4481887 (as set.empty (Set C!39838)))))

(declare-fun b!7517783 () Bool)

(assert (=> b!7517783 (= e!4481887 (set.union (set.insert (h!78968 (v!54387 lt!2638249)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638249)))))))

(assert (= (and d!2308352 c!1389195) b!7517782))

(assert (= (and d!2308352 (not c!1389195)) b!7517783))

(declare-fun m!8099010 () Bool)

(assert (=> b!7517783 m!8099010))

(declare-fun m!8099012 () Bool)

(assert (=> b!7517783 m!8099012))

(assert (=> d!2308064 d!2308352))

(declare-fun d!2308354 () Bool)

(assert (=> d!2308354 (= (lostCause!1627 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))) (lostCauseFct!409 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))))

(declare-fun bs!1939423 () Bool)

(assert (= bs!1939423 d!2308354))

(declare-fun m!8099014 () Bool)

(assert (=> bs!1939423 m!8099014))

(assert (=> bs!1939419 d!2308354))

(declare-fun d!2308356 () Bool)

(declare-fun c!1389196 () Bool)

(assert (=> d!2308356 (= c!1389196 (is-Nil!72520 lt!2638310))))

(declare-fun e!4481888 () (Set C!39838))

(assert (=> d!2308356 (= (content!15343 lt!2638310) e!4481888)))

(declare-fun b!7517784 () Bool)

(assert (=> b!7517784 (= e!4481888 (as set.empty (Set C!39838)))))

(declare-fun b!7517785 () Bool)

(assert (=> b!7517785 (= e!4481888 (set.union (set.insert (h!78968 lt!2638310) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638310))))))

(assert (= (and d!2308356 c!1389196) b!7517784))

(assert (= (and d!2308356 (not c!1389196)) b!7517785))

(declare-fun m!8099016 () Bool)

(assert (=> b!7517785 m!8099016))

(declare-fun m!8099018 () Bool)

(assert (=> b!7517785 m!8099018))

(assert (=> d!2308072 d!2308356))

(declare-fun d!2308358 () Bool)

(declare-fun c!1389197 () Bool)

(assert (=> d!2308358 (= c!1389197 (is-Nil!72520 (v!54387 lt!2638264)))))

(declare-fun e!4481889 () (Set C!39838))

(assert (=> d!2308358 (= (content!15343 (v!54387 lt!2638264)) e!4481889)))

(declare-fun b!7517786 () Bool)

(assert (=> b!7517786 (= e!4481889 (as set.empty (Set C!39838)))))

(declare-fun b!7517787 () Bool)

(assert (=> b!7517787 (= e!4481889 (set.union (set.insert (h!78968 (v!54387 lt!2638264)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638264)))))))

(assert (= (and d!2308358 c!1389197) b!7517786))

(assert (= (and d!2308358 (not c!1389197)) b!7517787))

(declare-fun m!8099020 () Bool)

(assert (=> b!7517787 m!8099020))

(assert (=> b!7517787 m!8098876))

(assert (=> d!2308072 d!2308358))

(declare-fun d!2308360 () Bool)

(declare-fun c!1389198 () Bool)

(assert (=> d!2308360 (= c!1389198 (is-Nil!72520 (v!54387 lt!2638262)))))

(declare-fun e!4481890 () (Set C!39838))

(assert (=> d!2308360 (= (content!15343 (v!54387 lt!2638262)) e!4481890)))

(declare-fun b!7517788 () Bool)

(assert (=> b!7517788 (= e!4481890 (as set.empty (Set C!39838)))))

(declare-fun b!7517789 () Bool)

(assert (=> b!7517789 (= e!4481890 (set.union (set.insert (h!78968 (v!54387 lt!2638262)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (v!54387 lt!2638262)))))))

(assert (= (and d!2308360 c!1389198) b!7517788))

(assert (= (and d!2308360 (not c!1389198)) b!7517789))

(declare-fun m!8099022 () Bool)

(assert (=> b!7517789 m!8099022))

(declare-fun m!8099024 () Bool)

(assert (=> b!7517789 m!8099024))

(assert (=> d!2308072 d!2308360))

(assert (=> b!7516758 d!2308256))

(declare-fun b!7517790 () Bool)

(declare-fun c!1389201 () Bool)

(assert (=> b!7517790 (= c!1389201 (is-ElementMatch!19756 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481894 () Option!17253)

(declare-fun e!4481896 () Option!17253)

(assert (=> b!7517790 (= e!4481894 e!4481896)))

(declare-fun d!2308362 () Bool)

(declare-fun c!1389200 () Bool)

(assert (=> d!2308362 (= c!1389200 (is-EmptyExpr!19756 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481891 () Option!17253)

(assert (=> d!2308362 (= (getLanguageWitness!1096 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481891)))

(declare-fun b!7517791 () Bool)

(declare-fun e!4481897 () Option!17253)

(declare-fun lt!2638436 () Option!17253)

(assert (=> b!7517791 (= e!4481897 lt!2638436)))

(declare-fun b!7517792 () Bool)

(declare-fun e!4481892 () Option!17253)

(assert (=> b!7517792 (= e!4481892 e!4481897)))

(declare-fun call!689469 () Option!17253)

(assert (=> b!7517792 (= lt!2638436 call!689469)))

(declare-fun c!1389204 () Bool)

(assert (=> b!7517792 (= c!1389204 (is-Some!17252 lt!2638436))))

(declare-fun b!7517793 () Bool)

(declare-fun call!689468 () Option!17253)

(assert (=> b!7517793 (= e!4481897 call!689468)))

(declare-fun c!1389206 () Bool)

(declare-fun b!7517794 () Bool)

(assert (=> b!7517794 (= c!1389206 (is-Union!19756 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481895 () Option!17253)

(assert (=> b!7517794 (= e!4481895 e!4481892)))

(declare-fun b!7517795 () Bool)

(declare-fun e!4481893 () Option!17253)

(assert (=> b!7517795 (= e!4481893 None!17252)))

(declare-fun bm!689463 () Bool)

(assert (=> bm!689463 (= call!689469 (getLanguageWitness!1096 (ite c!1389206 (regOne!40025 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517796 () Bool)

(assert (=> b!7517796 (= e!4481896 e!4481895)))

(declare-fun c!1389205 () Bool)

(assert (=> b!7517796 (= c!1389205 (is-Star!19756 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517797 () Bool)

(assert (=> b!7517797 (= e!4481891 (Some!17252 Nil!72520))))

(declare-fun b!7517798 () Bool)

(declare-fun e!4481898 () Option!17253)

(assert (=> b!7517798 (= e!4481892 e!4481898)))

(declare-fun lt!2638437 () Option!17253)

(assert (=> b!7517798 (= lt!2638437 call!689468)))

(declare-fun c!1389199 () Bool)

(assert (=> b!7517798 (= c!1389199 (is-Some!17252 lt!2638437))))

(declare-fun b!7517799 () Bool)

(declare-fun c!1389203 () Bool)

(declare-fun lt!2638435 () Option!17253)

(assert (=> b!7517799 (= c!1389203 (is-Some!17252 lt!2638435))))

(assert (=> b!7517799 (= lt!2638435 call!689469)))

(assert (=> b!7517799 (= e!4481898 e!4481893)))

(declare-fun bm!689464 () Bool)

(assert (=> bm!689464 (= call!689468 (getLanguageWitness!1096 (ite c!1389206 (regTwo!40025 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517800 () Bool)

(assert (=> b!7517800 (= e!4481895 (Some!17252 Nil!72520))))

(declare-fun b!7517801 () Bool)

(assert (=> b!7517801 (= e!4481893 (Some!17252 (++!17359 (v!54387 lt!2638437) (v!54387 lt!2638435))))))

(declare-fun b!7517802 () Bool)

(assert (=> b!7517802 (= e!4481896 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517803 () Bool)

(assert (=> b!7517803 (= e!4481891 e!4481894)))

(declare-fun c!1389202 () Bool)

(assert (=> b!7517803 (= c!1389202 (is-EmptyLang!19756 (ite c!1388940 (regOne!40025 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388794 (regOne!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517804 () Bool)

(assert (=> b!7517804 (= e!4481894 None!17252)))

(declare-fun b!7517805 () Bool)

(assert (=> b!7517805 (= e!4481898 None!17252)))

(assert (= (and d!2308362 c!1389200) b!7517797))

(assert (= (and d!2308362 (not c!1389200)) b!7517803))

(assert (= (and b!7517803 c!1389202) b!7517804))

(assert (= (and b!7517803 (not c!1389202)) b!7517790))

(assert (= (and b!7517790 c!1389201) b!7517802))

(assert (= (and b!7517790 (not c!1389201)) b!7517796))

(assert (= (and b!7517796 c!1389205) b!7517800))

(assert (= (and b!7517796 (not c!1389205)) b!7517794))

(assert (= (and b!7517794 c!1389206) b!7517792))

(assert (= (and b!7517794 (not c!1389206)) b!7517798))

(assert (= (and b!7517792 c!1389204) b!7517791))

(assert (= (and b!7517792 (not c!1389204)) b!7517793))

(assert (= (and b!7517798 c!1389199) b!7517799))

(assert (= (and b!7517798 (not c!1389199)) b!7517805))

(assert (= (and b!7517799 c!1389203) b!7517801))

(assert (= (and b!7517799 (not c!1389203)) b!7517795))

(assert (= (or b!7517793 b!7517798) bm!689464))

(assert (= (or b!7517792 b!7517799) bm!689463))

(declare-fun m!8099026 () Bool)

(assert (=> bm!689463 m!8099026))

(declare-fun m!8099028 () Bool)

(assert (=> bm!689464 m!8099028))

(declare-fun m!8099030 () Bool)

(assert (=> b!7517801 m!8099030))

(assert (=> bm!689388 d!2308362))

(declare-fun b!7517806 () Bool)

(declare-fun e!4481900 () Bool)

(declare-fun call!689471 () Bool)

(assert (=> b!7517806 (= e!4481900 call!689471)))

(declare-fun b!7517807 () Bool)

(declare-fun res!3013959 () Bool)

(declare-fun e!4481904 () Bool)

(assert (=> b!7517807 (=> (not res!3013959) (not e!4481904))))

(declare-fun call!689472 () Bool)

(assert (=> b!7517807 (= res!3013959 call!689472)))

(declare-fun e!4481903 () Bool)

(assert (=> b!7517807 (= e!4481903 e!4481904)))

(declare-fun bm!689465 () Bool)

(declare-fun call!689470 () Bool)

(declare-fun c!1389207 () Bool)

(assert (=> bm!689465 (= call!689470 (validRegex!10192 (ite c!1389207 (regTwo!40025 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))))))))

(declare-fun b!7517808 () Bool)

(declare-fun e!4481901 () Bool)

(assert (=> b!7517808 (= e!4481901 e!4481900)))

(declare-fun res!3013958 () Bool)

(assert (=> b!7517808 (= res!3013958 (not (nullable!8596 (reg!20085 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))))))))

(assert (=> b!7517808 (=> (not res!3013958) (not e!4481900))))

(declare-fun bm!689466 () Bool)

(assert (=> bm!689466 (= call!689472 call!689471)))

(declare-fun c!1389208 () Bool)

(declare-fun bm!689467 () Bool)

(assert (=> bm!689467 (= call!689471 (validRegex!10192 (ite c!1389208 (reg!20085 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) (ite c!1389207 (regOne!40025 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))))))

(declare-fun b!7517809 () Bool)

(assert (=> b!7517809 (= e!4481904 call!689470)))

(declare-fun d!2308364 () Bool)

(declare-fun res!3013962 () Bool)

(declare-fun e!4481905 () Bool)

(assert (=> d!2308364 (=> res!3013962 e!4481905)))

(assert (=> d!2308364 (= res!3013962 (is-ElementMatch!19756 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))))))

(assert (=> d!2308364 (= (validRegex!10192 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) e!4481905)))

(declare-fun b!7517810 () Bool)

(assert (=> b!7517810 (= e!4481901 e!4481903)))

(assert (=> b!7517810 (= c!1389207 (is-Union!19756 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))))))

(declare-fun b!7517811 () Bool)

(declare-fun e!4481899 () Bool)

(assert (=> b!7517811 (= e!4481899 call!689470)))

(declare-fun b!7517812 () Bool)

(declare-fun e!4481902 () Bool)

(assert (=> b!7517812 (= e!4481902 e!4481899)))

(declare-fun res!3013960 () Bool)

(assert (=> b!7517812 (=> (not res!3013960) (not e!4481899))))

(assert (=> b!7517812 (= res!3013960 call!689472)))

(declare-fun b!7517813 () Bool)

(declare-fun res!3013961 () Bool)

(assert (=> b!7517813 (=> res!3013961 e!4481902)))

(assert (=> b!7517813 (= res!3013961 (not (is-Concat!28601 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091)))))))))))

(assert (=> b!7517813 (= e!4481903 e!4481902)))

(declare-fun b!7517814 () Bool)

(assert (=> b!7517814 (= e!4481905 e!4481901)))

(assert (=> b!7517814 (= c!1389208 (is-Star!19756 (ite c!1388920 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091)))) (ite c!1388919 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091)))) (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))))))

(assert (= (and d!2308364 (not res!3013962)) b!7517814))

(assert (= (and b!7517814 c!1389208) b!7517808))

(assert (= (and b!7517814 (not c!1389208)) b!7517810))

(assert (= (and b!7517808 res!3013958) b!7517806))

(assert (= (and b!7517810 c!1389207) b!7517807))

(assert (= (and b!7517810 (not c!1389207)) b!7517813))

(assert (= (and b!7517807 res!3013959) b!7517809))

(assert (= (and b!7517813 (not res!3013961)) b!7517812))

(assert (= (and b!7517812 res!3013960) b!7517811))

(assert (= (or b!7517807 b!7517812) bm!689466))

(assert (= (or b!7517809 b!7517811) bm!689465))

(assert (= (or b!7517806 bm!689466) bm!689467))

(declare-fun m!8099032 () Bool)

(assert (=> bm!689465 m!8099032))

(declare-fun m!8099034 () Bool)

(assert (=> b!7517808 m!8099034))

(declare-fun m!8099036 () Bool)

(assert (=> bm!689467 m!8099036))

(assert (=> bm!689385 d!2308364))

(declare-fun b!7517815 () Bool)

(declare-fun c!1389211 () Bool)

(assert (=> b!7517815 (= c!1389211 (is-ElementMatch!19756 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481909 () Option!17253)

(declare-fun e!4481911 () Option!17253)

(assert (=> b!7517815 (= e!4481909 e!4481911)))

(declare-fun c!1389210 () Bool)

(declare-fun d!2308366 () Bool)

(assert (=> d!2308366 (= c!1389210 (is-EmptyExpr!19756 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481906 () Option!17253)

(assert (=> d!2308366 (= (getLanguageWitness!1096 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481906)))

(declare-fun b!7517816 () Bool)

(declare-fun e!4481912 () Option!17253)

(declare-fun lt!2638439 () Option!17253)

(assert (=> b!7517816 (= e!4481912 lt!2638439)))

(declare-fun b!7517817 () Bool)

(declare-fun e!4481907 () Option!17253)

(assert (=> b!7517817 (= e!4481907 e!4481912)))

(declare-fun call!689474 () Option!17253)

(assert (=> b!7517817 (= lt!2638439 call!689474)))

(declare-fun c!1389214 () Bool)

(assert (=> b!7517817 (= c!1389214 (is-Some!17252 lt!2638439))))

(declare-fun b!7517818 () Bool)

(declare-fun call!689473 () Option!17253)

(assert (=> b!7517818 (= e!4481912 call!689473)))

(declare-fun b!7517819 () Bool)

(declare-fun c!1389216 () Bool)

(assert (=> b!7517819 (= c!1389216 (is-Union!19756 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481910 () Option!17253)

(assert (=> b!7517819 (= e!4481910 e!4481907)))

(declare-fun b!7517820 () Bool)

(declare-fun e!4481908 () Option!17253)

(assert (=> b!7517820 (= e!4481908 None!17252)))

(declare-fun bm!689468 () Bool)

(assert (=> bm!689468 (= call!689474 (getLanguageWitness!1096 (ite c!1389216 (regOne!40025 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517821 () Bool)

(assert (=> b!7517821 (= e!4481911 e!4481910)))

(declare-fun c!1389215 () Bool)

(assert (=> b!7517821 (= c!1389215 (is-Star!19756 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517822 () Bool)

(assert (=> b!7517822 (= e!4481906 (Some!17252 Nil!72520))))

(declare-fun b!7517823 () Bool)

(declare-fun e!4481913 () Option!17253)

(assert (=> b!7517823 (= e!4481907 e!4481913)))

(declare-fun lt!2638440 () Option!17253)

(assert (=> b!7517823 (= lt!2638440 call!689473)))

(declare-fun c!1389209 () Bool)

(assert (=> b!7517823 (= c!1389209 (is-Some!17252 lt!2638440))))

(declare-fun b!7517824 () Bool)

(declare-fun c!1389213 () Bool)

(declare-fun lt!2638438 () Option!17253)

(assert (=> b!7517824 (= c!1389213 (is-Some!17252 lt!2638438))))

(assert (=> b!7517824 (= lt!2638438 call!689474)))

(assert (=> b!7517824 (= e!4481913 e!4481908)))

(declare-fun bm!689469 () Bool)

(assert (=> bm!689469 (= call!689473 (getLanguageWitness!1096 (ite c!1389216 (regTwo!40025 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517825 () Bool)

(assert (=> b!7517825 (= e!4481910 (Some!17252 Nil!72520))))

(declare-fun b!7517826 () Bool)

(assert (=> b!7517826 (= e!4481908 (Some!17252 (++!17359 (v!54387 lt!2638440) (v!54387 lt!2638438))))))

(declare-fun b!7517827 () Bool)

(assert (=> b!7517827 (= e!4481911 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517828 () Bool)

(assert (=> b!7517828 (= e!4481906 e!4481909)))

(declare-fun c!1389212 () Bool)

(assert (=> b!7517828 (= c!1389212 (is-EmptyLang!19756 (ite c!1388959 (regTwo!40025 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388802 (regOne!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517829 () Bool)

(assert (=> b!7517829 (= e!4481909 None!17252)))

(declare-fun b!7517830 () Bool)

(assert (=> b!7517830 (= e!4481913 None!17252)))

(assert (= (and d!2308366 c!1389210) b!7517822))

(assert (= (and d!2308366 (not c!1389210)) b!7517828))

(assert (= (and b!7517828 c!1389212) b!7517829))

(assert (= (and b!7517828 (not c!1389212)) b!7517815))

(assert (= (and b!7517815 c!1389211) b!7517827))

(assert (= (and b!7517815 (not c!1389211)) b!7517821))

(assert (= (and b!7517821 c!1389215) b!7517825))

(assert (= (and b!7517821 (not c!1389215)) b!7517819))

(assert (= (and b!7517819 c!1389216) b!7517817))

(assert (= (and b!7517819 (not c!1389216)) b!7517823))

(assert (= (and b!7517817 c!1389214) b!7517816))

(assert (= (and b!7517817 (not c!1389214)) b!7517818))

(assert (= (and b!7517823 c!1389209) b!7517824))

(assert (= (and b!7517823 (not c!1389209)) b!7517830))

(assert (= (and b!7517824 c!1389213) b!7517826))

(assert (= (and b!7517824 (not c!1389213)) b!7517820))

(assert (= (or b!7517818 b!7517823) bm!689469))

(assert (= (or b!7517817 b!7517824) bm!689468))

(declare-fun m!8099038 () Bool)

(assert (=> bm!689468 m!8099038))

(declare-fun m!8099040 () Bool)

(assert (=> bm!689469 m!8099040))

(declare-fun m!8099042 () Bool)

(assert (=> b!7517826 m!8099042))

(assert (=> bm!689394 d!2308366))

(declare-fun b!7517845 () Bool)

(declare-fun e!4481927 () Bool)

(declare-fun call!689480 () Bool)

(assert (=> b!7517845 (= e!4481927 call!689480)))

(declare-fun bm!689474 () Bool)

(declare-fun call!689479 () Bool)

(declare-fun c!1389219 () Bool)

(assert (=> bm!689474 (= call!689479 (nullable!8596 (ite c!1389219 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))) (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))))))

(declare-fun d!2308368 () Bool)

(declare-fun res!3013977 () Bool)

(declare-fun e!4481930 () Bool)

(assert (=> d!2308368 (=> res!3013977 e!4481930)))

(assert (=> d!2308368 (= res!3013977 (is-EmptyExpr!19756 (reg!20085 (h!78967 (exprs!9008 c!7091)))))))

(assert (=> d!2308368 (= (nullableFct!3433 (reg!20085 (h!78967 (exprs!9008 c!7091)))) e!4481930)))

(declare-fun b!7517846 () Bool)

(declare-fun e!4481931 () Bool)

(assert (=> b!7517846 (= e!4481931 e!4481927)))

(declare-fun res!3013973 () Bool)

(assert (=> b!7517846 (= res!3013973 call!689479)))

(assert (=> b!7517846 (=> res!3013973 e!4481927)))

(declare-fun b!7517847 () Bool)

(declare-fun e!4481928 () Bool)

(assert (=> b!7517847 (= e!4481928 e!4481931)))

(assert (=> b!7517847 (= c!1389219 (is-Union!19756 (reg!20085 (h!78967 (exprs!9008 c!7091)))))))

(declare-fun bm!689475 () Bool)

(assert (=> bm!689475 (= call!689480 (nullable!8596 (ite c!1389219 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091)))) (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091)))))))))

(declare-fun b!7517848 () Bool)

(declare-fun e!4481926 () Bool)

(assert (=> b!7517848 (= e!4481930 e!4481926)))

(declare-fun res!3013975 () Bool)

(assert (=> b!7517848 (=> (not res!3013975) (not e!4481926))))

(assert (=> b!7517848 (= res!3013975 (and (not (is-EmptyLang!19756 (reg!20085 (h!78967 (exprs!9008 c!7091))))) (not (is-ElementMatch!19756 (reg!20085 (h!78967 (exprs!9008 c!7091)))))))))

(declare-fun b!7517849 () Bool)

(declare-fun e!4481929 () Bool)

(assert (=> b!7517849 (= e!4481931 e!4481929)))

(declare-fun res!3013976 () Bool)

(assert (=> b!7517849 (= res!3013976 call!689479)))

(assert (=> b!7517849 (=> (not res!3013976) (not e!4481929))))

(declare-fun b!7517850 () Bool)

(assert (=> b!7517850 (= e!4481926 e!4481928)))

(declare-fun res!3013974 () Bool)

(assert (=> b!7517850 (=> res!3013974 e!4481928)))

(assert (=> b!7517850 (= res!3013974 (is-Star!19756 (reg!20085 (h!78967 (exprs!9008 c!7091)))))))

(declare-fun b!7517851 () Bool)

(assert (=> b!7517851 (= e!4481929 call!689480)))

(assert (= (and d!2308368 (not res!3013977)) b!7517848))

(assert (= (and b!7517848 res!3013975) b!7517850))

(assert (= (and b!7517850 (not res!3013974)) b!7517847))

(assert (= (and b!7517847 c!1389219) b!7517846))

(assert (= (and b!7517847 (not c!1389219)) b!7517849))

(assert (= (and b!7517846 (not res!3013973)) b!7517845))

(assert (= (and b!7517849 res!3013976) b!7517851))

(assert (= (or b!7517846 b!7517849) bm!689474))

(assert (= (or b!7517845 b!7517851) bm!689475))

(declare-fun m!8099044 () Bool)

(assert (=> bm!689474 m!8099044))

(declare-fun m!8099046 () Bool)

(assert (=> bm!689475 m!8099046))

(assert (=> d!2308086 d!2308368))

(declare-fun c!1389222 () Bool)

(declare-fun b!7517852 () Bool)

(assert (=> b!7517852 (= c!1389222 (is-ElementMatch!19756 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481935 () Option!17253)

(declare-fun e!4481937 () Option!17253)

(assert (=> b!7517852 (= e!4481935 e!4481937)))

(declare-fun d!2308370 () Bool)

(declare-fun c!1389221 () Bool)

(assert (=> d!2308370 (= c!1389221 (is-EmptyExpr!19756 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481932 () Option!17253)

(assert (=> d!2308370 (= (getLanguageWitness!1096 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481932)))

(declare-fun b!7517853 () Bool)

(declare-fun e!4481938 () Option!17253)

(declare-fun lt!2638442 () Option!17253)

(assert (=> b!7517853 (= e!4481938 lt!2638442)))

(declare-fun b!7517854 () Bool)

(declare-fun e!4481933 () Option!17253)

(assert (=> b!7517854 (= e!4481933 e!4481938)))

(declare-fun call!689482 () Option!17253)

(assert (=> b!7517854 (= lt!2638442 call!689482)))

(declare-fun c!1389225 () Bool)

(assert (=> b!7517854 (= c!1389225 (is-Some!17252 lt!2638442))))

(declare-fun b!7517855 () Bool)

(declare-fun call!689481 () Option!17253)

(assert (=> b!7517855 (= e!4481938 call!689481)))

(declare-fun b!7517856 () Bool)

(declare-fun c!1389227 () Bool)

(assert (=> b!7517856 (= c!1389227 (is-Union!19756 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481936 () Option!17253)

(assert (=> b!7517856 (= e!4481936 e!4481933)))

(declare-fun b!7517857 () Bool)

(declare-fun e!4481934 () Option!17253)

(assert (=> b!7517857 (= e!4481934 None!17252)))

(declare-fun bm!689476 () Bool)

(assert (=> bm!689476 (= call!689482 (getLanguageWitness!1096 (ite c!1389227 (regOne!40025 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517858 () Bool)

(assert (=> b!7517858 (= e!4481937 e!4481936)))

(declare-fun c!1389226 () Bool)

(assert (=> b!7517858 (= c!1389226 (is-Star!19756 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517859 () Bool)

(assert (=> b!7517859 (= e!4481932 (Some!17252 Nil!72520))))

(declare-fun b!7517860 () Bool)

(declare-fun e!4481939 () Option!17253)

(assert (=> b!7517860 (= e!4481933 e!4481939)))

(declare-fun lt!2638443 () Option!17253)

(assert (=> b!7517860 (= lt!2638443 call!689481)))

(declare-fun c!1389220 () Bool)

(assert (=> b!7517860 (= c!1389220 (is-Some!17252 lt!2638443))))

(declare-fun b!7517861 () Bool)

(declare-fun c!1389224 () Bool)

(declare-fun lt!2638441 () Option!17253)

(assert (=> b!7517861 (= c!1389224 (is-Some!17252 lt!2638441))))

(assert (=> b!7517861 (= lt!2638441 call!689482)))

(assert (=> b!7517861 (= e!4481939 e!4481934)))

(declare-fun bm!689477 () Bool)

(assert (=> bm!689477 (= call!689481 (getLanguageWitness!1096 (ite c!1389227 (regTwo!40025 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517862 () Bool)

(assert (=> b!7517862 (= e!4481936 (Some!17252 Nil!72520))))

(declare-fun b!7517863 () Bool)

(assert (=> b!7517863 (= e!4481934 (Some!17252 (++!17359 (v!54387 lt!2638443) (v!54387 lt!2638441))))))

(declare-fun b!7517864 () Bool)

(assert (=> b!7517864 (= e!4481937 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517865 () Bool)

(assert (=> b!7517865 (= e!4481932 e!4481935)))

(declare-fun c!1389223 () Bool)

(assert (=> b!7517865 (= c!1389223 (is-EmptyLang!19756 (ite c!1388867 (regOne!40025 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regOne!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regTwo!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517866 () Bool)

(assert (=> b!7517866 (= e!4481935 None!17252)))

(declare-fun b!7517867 () Bool)

(assert (=> b!7517867 (= e!4481939 None!17252)))

(assert (= (and d!2308370 c!1389221) b!7517859))

(assert (= (and d!2308370 (not c!1389221)) b!7517865))

(assert (= (and b!7517865 c!1389223) b!7517866))

(assert (= (and b!7517865 (not c!1389223)) b!7517852))

(assert (= (and b!7517852 c!1389222) b!7517864))

(assert (= (and b!7517852 (not c!1389222)) b!7517858))

(assert (= (and b!7517858 c!1389226) b!7517862))

(assert (= (and b!7517858 (not c!1389226)) b!7517856))

(assert (= (and b!7517856 c!1389227) b!7517854))

(assert (= (and b!7517856 (not c!1389227)) b!7517860))

(assert (= (and b!7517854 c!1389225) b!7517853))

(assert (= (and b!7517854 (not c!1389225)) b!7517855))

(assert (= (and b!7517860 c!1389220) b!7517861))

(assert (= (and b!7517860 (not c!1389220)) b!7517867))

(assert (= (and b!7517861 c!1389224) b!7517863))

(assert (= (and b!7517861 (not c!1389224)) b!7517857))

(assert (= (or b!7517855 b!7517860) bm!689477))

(assert (= (or b!7517854 b!7517861) bm!689476))

(declare-fun m!8099048 () Bool)

(assert (=> bm!689476 m!8099048))

(declare-fun m!8099050 () Bool)

(assert (=> bm!689477 m!8099050))

(declare-fun m!8099052 () Bool)

(assert (=> b!7517863 m!8099052))

(assert (=> bm!689364 d!2308370))

(declare-fun d!2308372 () Bool)

(declare-fun c!1389228 () Bool)

(assert (=> d!2308372 (= c!1389228 (is-Nil!72520 (t!387281 (v!54387 lt!2638234))))))

(declare-fun e!4481940 () (Set C!39838))

(assert (=> d!2308372 (= (content!15343 (t!387281 (v!54387 lt!2638234))) e!4481940)))

(declare-fun b!7517868 () Bool)

(assert (=> b!7517868 (= e!4481940 (as set.empty (Set C!39838)))))

(declare-fun b!7517869 () Bool)

(assert (=> b!7517869 (= e!4481940 (set.union (set.insert (h!78968 (t!387281 (v!54387 lt!2638234))) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 (v!54387 lt!2638234))))))))

(assert (= (and d!2308372 c!1389228) b!7517868))

(assert (= (and d!2308372 (not c!1389228)) b!7517869))

(declare-fun m!8099054 () Bool)

(assert (=> b!7517869 m!8099054))

(declare-fun m!8099056 () Bool)

(assert (=> b!7517869 m!8099056))

(assert (=> b!7516788 d!2308372))

(declare-fun b!7517870 () Bool)

(declare-fun e!4481942 () List!72644)

(assert (=> b!7517870 (= e!4481942 (v!54387 lt!2638330))))

(declare-fun b!7517873 () Bool)

(declare-fun lt!2638444 () List!72644)

(declare-fun e!4481941 () Bool)

(assert (=> b!7517873 (= e!4481941 (or (not (= (v!54387 lt!2638330) Nil!72520)) (= lt!2638444 (v!54387 lt!2638332))))))

(declare-fun b!7517872 () Bool)

(declare-fun res!3013978 () Bool)

(assert (=> b!7517872 (=> (not res!3013978) (not e!4481941))))

(assert (=> b!7517872 (= res!3013978 (= (size!42300 lt!2638444) (+ (size!42300 (v!54387 lt!2638332)) (size!42300 (v!54387 lt!2638330)))))))

(declare-fun b!7517871 () Bool)

(assert (=> b!7517871 (= e!4481942 (Cons!72520 (h!78968 (v!54387 lt!2638332)) (++!17359 (t!387281 (v!54387 lt!2638332)) (v!54387 lt!2638330))))))

(declare-fun d!2308374 () Bool)

(assert (=> d!2308374 e!4481941))

(declare-fun res!3013979 () Bool)

(assert (=> d!2308374 (=> (not res!3013979) (not e!4481941))))

(assert (=> d!2308374 (= res!3013979 (= (content!15343 lt!2638444) (set.union (content!15343 (v!54387 lt!2638332)) (content!15343 (v!54387 lt!2638330)))))))

(assert (=> d!2308374 (= lt!2638444 e!4481942)))

(declare-fun c!1389229 () Bool)

(assert (=> d!2308374 (= c!1389229 (is-Nil!72520 (v!54387 lt!2638332)))))

(assert (=> d!2308374 (= (++!17359 (v!54387 lt!2638332) (v!54387 lt!2638330)) lt!2638444)))

(assert (= (and d!2308374 c!1389229) b!7517870))

(assert (= (and d!2308374 (not c!1389229)) b!7517871))

(assert (= (and d!2308374 res!3013979) b!7517872))

(assert (= (and b!7517872 res!3013978) b!7517873))

(declare-fun m!8099058 () Bool)

(assert (=> b!7517872 m!8099058))

(declare-fun m!8099060 () Bool)

(assert (=> b!7517872 m!8099060))

(declare-fun m!8099062 () Bool)

(assert (=> b!7517872 m!8099062))

(declare-fun m!8099064 () Bool)

(assert (=> b!7517871 m!8099064))

(declare-fun m!8099066 () Bool)

(assert (=> d!2308374 m!8099066))

(declare-fun m!8099068 () Bool)

(assert (=> d!2308374 m!8099068))

(declare-fun m!8099070 () Bool)

(assert (=> d!2308374 m!8099070))

(assert (=> b!7516953 d!2308374))

(declare-fun c!1389232 () Bool)

(declare-fun b!7517874 () Bool)

(assert (=> b!7517874 (= c!1389232 (is-ElementMatch!19756 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481946 () Option!17253)

(declare-fun e!4481948 () Option!17253)

(assert (=> b!7517874 (= e!4481946 e!4481948)))

(declare-fun d!2308376 () Bool)

(declare-fun c!1389231 () Bool)

(assert (=> d!2308376 (= c!1389231 (is-EmptyExpr!19756 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481943 () Option!17253)

(assert (=> d!2308376 (= (getLanguageWitness!1096 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481943)))

(declare-fun b!7517875 () Bool)

(declare-fun e!4481949 () Option!17253)

(declare-fun lt!2638446 () Option!17253)

(assert (=> b!7517875 (= e!4481949 lt!2638446)))

(declare-fun b!7517876 () Bool)

(declare-fun e!4481944 () Option!17253)

(assert (=> b!7517876 (= e!4481944 e!4481949)))

(declare-fun call!689484 () Option!17253)

(assert (=> b!7517876 (= lt!2638446 call!689484)))

(declare-fun c!1389235 () Bool)

(assert (=> b!7517876 (= c!1389235 (is-Some!17252 lt!2638446))))

(declare-fun b!7517877 () Bool)

(declare-fun call!689483 () Option!17253)

(assert (=> b!7517877 (= e!4481949 call!689483)))

(declare-fun c!1389237 () Bool)

(declare-fun b!7517878 () Bool)

(assert (=> b!7517878 (= c!1389237 (is-Union!19756 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481947 () Option!17253)

(assert (=> b!7517878 (= e!4481947 e!4481944)))

(declare-fun b!7517879 () Bool)

(declare-fun e!4481945 () Option!17253)

(assert (=> b!7517879 (= e!4481945 None!17252)))

(declare-fun bm!689478 () Bool)

(assert (=> bm!689478 (= call!689484 (getLanguageWitness!1096 (ite c!1389237 (regOne!40025 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517880 () Bool)

(assert (=> b!7517880 (= e!4481948 e!4481947)))

(declare-fun c!1389236 () Bool)

(assert (=> b!7517880 (= c!1389236 (is-Star!19756 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517881 () Bool)

(assert (=> b!7517881 (= e!4481943 (Some!17252 Nil!72520))))

(declare-fun b!7517882 () Bool)

(declare-fun e!4481950 () Option!17253)

(assert (=> b!7517882 (= e!4481944 e!4481950)))

(declare-fun lt!2638447 () Option!17253)

(assert (=> b!7517882 (= lt!2638447 call!689483)))

(declare-fun c!1389230 () Bool)

(assert (=> b!7517882 (= c!1389230 (is-Some!17252 lt!2638447))))

(declare-fun b!7517883 () Bool)

(declare-fun c!1389234 () Bool)

(declare-fun lt!2638445 () Option!17253)

(assert (=> b!7517883 (= c!1389234 (is-Some!17252 lt!2638445))))

(assert (=> b!7517883 (= lt!2638445 call!689484)))

(assert (=> b!7517883 (= e!4481950 e!4481945)))

(declare-fun bm!689479 () Bool)

(assert (=> bm!689479 (= call!689483 (getLanguageWitness!1096 (ite c!1389237 (regTwo!40025 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517884 () Bool)

(assert (=> b!7517884 (= e!4481947 (Some!17252 Nil!72520))))

(declare-fun b!7517885 () Bool)

(assert (=> b!7517885 (= e!4481945 (Some!17252 (++!17359 (v!54387 lt!2638447) (v!54387 lt!2638445))))))

(declare-fun b!7517886 () Bool)

(assert (=> b!7517886 (= e!4481948 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517887 () Bool)

(assert (=> b!7517887 (= e!4481943 e!4481946)))

(declare-fun c!1389233 () Bool)

(assert (=> b!7517887 (= c!1389233 (is-EmptyLang!19756 (ite c!1388929 (regOne!40025 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388802 (regTwo!40025 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regOne!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regTwo!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517888 () Bool)

(assert (=> b!7517888 (= e!4481946 None!17252)))

(declare-fun b!7517889 () Bool)

(assert (=> b!7517889 (= e!4481950 None!17252)))

(assert (= (and d!2308376 c!1389231) b!7517881))

(assert (= (and d!2308376 (not c!1389231)) b!7517887))

(assert (= (and b!7517887 c!1389233) b!7517888))

(assert (= (and b!7517887 (not c!1389233)) b!7517874))

(assert (= (and b!7517874 c!1389232) b!7517886))

(assert (= (and b!7517874 (not c!1389232)) b!7517880))

(assert (= (and b!7517880 c!1389236) b!7517884))

(assert (= (and b!7517880 (not c!1389236)) b!7517878))

(assert (= (and b!7517878 c!1389237) b!7517876))

(assert (= (and b!7517878 (not c!1389237)) b!7517882))

(assert (= (and b!7517876 c!1389235) b!7517875))

(assert (= (and b!7517876 (not c!1389235)) b!7517877))

(assert (= (and b!7517882 c!1389230) b!7517883))

(assert (= (and b!7517882 (not c!1389230)) b!7517889))

(assert (= (and b!7517883 c!1389234) b!7517885))

(assert (= (and b!7517883 (not c!1389234)) b!7517879))

(assert (= (or b!7517877 b!7517882) bm!689479))

(assert (= (or b!7517876 b!7517883) bm!689478))

(declare-fun m!8099072 () Bool)

(assert (=> bm!689478 m!8099072))

(declare-fun m!8099074 () Bool)

(assert (=> bm!689479 m!8099074))

(declare-fun m!8099076 () Bool)

(assert (=> b!7517885 m!8099076))

(assert (=> bm!689386 d!2308376))

(declare-fun b!7517890 () Bool)

(declare-fun e!4481952 () List!72644)

(assert (=> b!7517890 (= e!4481952 (v!54387 lt!2638219))))

(declare-fun b!7517893 () Bool)

(declare-fun lt!2638448 () List!72644)

(declare-fun e!4481951 () Bool)

(assert (=> b!7517893 (= e!4481951 (or (not (= (v!54387 lt!2638219) Nil!72520)) (= lt!2638448 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221)))))))))

(declare-fun b!7517892 () Bool)

(declare-fun res!3013980 () Bool)

(assert (=> b!7517892 (=> (not res!3013980) (not e!4481951))))

(assert (=> b!7517892 (= res!3013980 (= (size!42300 lt!2638448) (+ (size!42300 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221))))) (size!42300 (v!54387 lt!2638219)))))))

(declare-fun b!7517891 () Bool)

(assert (=> b!7517891 (= e!4481952 (Cons!72520 (h!78968 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221))))) (++!17359 (t!387281 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221))))) (v!54387 lt!2638219))))))

(declare-fun d!2308378 () Bool)

(assert (=> d!2308378 e!4481951))

(declare-fun res!3013981 () Bool)

(assert (=> d!2308378 (=> (not res!3013981) (not e!4481951))))

(assert (=> d!2308378 (= res!3013981 (= (content!15343 lt!2638448) (set.union (content!15343 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221))))) (content!15343 (v!54387 lt!2638219)))))))

(assert (=> d!2308378 (= lt!2638448 e!4481952)))

(declare-fun c!1389238 () Bool)

(assert (=> d!2308378 (= c!1389238 (is-Nil!72520 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221))))))))

(assert (=> d!2308378 (= (++!17359 (t!387281 (t!387281 (t!387281 (v!54387 lt!2638221)))) (v!54387 lt!2638219)) lt!2638448)))

(assert (= (and d!2308378 c!1389238) b!7517890))

(assert (= (and d!2308378 (not c!1389238)) b!7517891))

(assert (= (and d!2308378 res!3013981) b!7517892))

(assert (= (and b!7517892 res!3013980) b!7517893))

(declare-fun m!8099078 () Bool)

(assert (=> b!7517892 m!8099078))

(assert (=> b!7517892 m!8098746))

(assert (=> b!7517892 m!8097960))

(declare-fun m!8099080 () Bool)

(assert (=> b!7517891 m!8099080))

(declare-fun m!8099082 () Bool)

(assert (=> d!2308378 m!8099082))

(assert (=> d!2308378 m!8098948))

(assert (=> d!2308378 m!8097968))

(assert (=> b!7516890 d!2308378))

(declare-fun d!2308380 () Bool)

(declare-fun lt!2638449 () Int)

(assert (=> d!2308380 (>= lt!2638449 0)))

(declare-fun e!4481953 () Int)

(assert (=> d!2308380 (= lt!2638449 e!4481953)))

(declare-fun c!1389239 () Bool)

(assert (=> d!2308380 (= c!1389239 (is-Nil!72520 lt!2638303))))

(assert (=> d!2308380 (= (size!42300 lt!2638303) lt!2638449)))

(declare-fun b!7517894 () Bool)

(assert (=> b!7517894 (= e!4481953 0)))

(declare-fun b!7517895 () Bool)

(assert (=> b!7517895 (= e!4481953 (+ 1 (size!42300 (t!387281 lt!2638303))))))

(assert (= (and d!2308380 c!1389239) b!7517894))

(assert (= (and d!2308380 (not c!1389239)) b!7517895))

(declare-fun m!8099084 () Bool)

(assert (=> b!7517895 m!8099084))

(assert (=> b!7516791 d!2308380))

(declare-fun d!2308382 () Bool)

(declare-fun lt!2638450 () Int)

(assert (=> d!2308382 (>= lt!2638450 0)))

(declare-fun e!4481954 () Int)

(assert (=> d!2308382 (= lt!2638450 e!4481954)))

(declare-fun c!1389240 () Bool)

(assert (=> d!2308382 (= c!1389240 (is-Nil!72520 (v!54387 lt!2638251)))))

(assert (=> d!2308382 (= (size!42300 (v!54387 lt!2638251)) lt!2638450)))

(declare-fun b!7517896 () Bool)

(assert (=> b!7517896 (= e!4481954 0)))

(declare-fun b!7517897 () Bool)

(assert (=> b!7517897 (= e!4481954 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638251)))))))

(assert (= (and d!2308382 c!1389240) b!7517896))

(assert (= (and d!2308382 (not c!1389240)) b!7517897))

(assert (=> b!7517897 m!8098978))

(assert (=> b!7516791 d!2308382))

(declare-fun d!2308384 () Bool)

(declare-fun lt!2638451 () Int)

(assert (=> d!2308384 (>= lt!2638451 0)))

(declare-fun e!4481955 () Int)

(assert (=> d!2308384 (= lt!2638451 e!4481955)))

(declare-fun c!1389241 () Bool)

(assert (=> d!2308384 (= c!1389241 (is-Nil!72520 (v!54387 lt!2638249)))))

(assert (=> d!2308384 (= (size!42300 (v!54387 lt!2638249)) lt!2638451)))

(declare-fun b!7517898 () Bool)

(assert (=> b!7517898 (= e!4481955 0)))

(declare-fun b!7517899 () Bool)

(assert (=> b!7517899 (= e!4481955 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638249)))))))

(assert (= (and d!2308384 c!1389241) b!7517898))

(assert (= (and d!2308384 (not c!1389241)) b!7517899))

(declare-fun m!8099086 () Bool)

(assert (=> b!7517899 m!8099086))

(assert (=> b!7516791 d!2308384))

(declare-fun d!2308386 () Bool)

(declare-fun c!1389242 () Bool)

(assert (=> d!2308386 (= c!1389242 (is-Nil!72520 (t!387281 lt!2638255)))))

(declare-fun e!4481956 () (Set C!39838))

(assert (=> d!2308386 (= (content!15343 (t!387281 lt!2638255)) e!4481956)))

(declare-fun b!7517900 () Bool)

(assert (=> b!7517900 (= e!4481956 (as set.empty (Set C!39838)))))

(declare-fun b!7517901 () Bool)

(assert (=> b!7517901 (= e!4481956 (set.union (set.insert (h!78968 (t!387281 lt!2638255)) (as set.empty (Set C!39838))) (content!15343 (t!387281 (t!387281 lt!2638255)))))))

(assert (= (and d!2308386 c!1389242) b!7517900))

(assert (= (and d!2308386 (not c!1389242)) b!7517901))

(declare-fun m!8099088 () Bool)

(assert (=> b!7517901 m!8099088))

(declare-fun m!8099090 () Bool)

(assert (=> b!7517901 m!8099090))

(assert (=> b!7516794 d!2308386))

(declare-fun c!1389245 () Bool)

(declare-fun b!7517902 () Bool)

(assert (=> b!7517902 (= c!1389245 (is-ElementMatch!19756 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481960 () Option!17253)

(declare-fun e!4481962 () Option!17253)

(assert (=> b!7517902 (= e!4481960 e!4481962)))

(declare-fun d!2308388 () Bool)

(declare-fun c!1389244 () Bool)

(assert (=> d!2308388 (= c!1389244 (is-EmptyExpr!19756 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481957 () Option!17253)

(assert (=> d!2308388 (= (getLanguageWitness!1096 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481957)))

(declare-fun b!7517903 () Bool)

(declare-fun e!4481963 () Option!17253)

(declare-fun lt!2638453 () Option!17253)

(assert (=> b!7517903 (= e!4481963 lt!2638453)))

(declare-fun b!7517904 () Bool)

(declare-fun e!4481958 () Option!17253)

(assert (=> b!7517904 (= e!4481958 e!4481963)))

(declare-fun call!689486 () Option!17253)

(assert (=> b!7517904 (= lt!2638453 call!689486)))

(declare-fun c!1389248 () Bool)

(assert (=> b!7517904 (= c!1389248 (is-Some!17252 lt!2638453))))

(declare-fun b!7517905 () Bool)

(declare-fun call!689485 () Option!17253)

(assert (=> b!7517905 (= e!4481963 call!689485)))

(declare-fun c!1389250 () Bool)

(declare-fun b!7517906 () Bool)

(assert (=> b!7517906 (= c!1389250 (is-Union!19756 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481961 () Option!17253)

(assert (=> b!7517906 (= e!4481961 e!4481958)))

(declare-fun b!7517907 () Bool)

(declare-fun e!4481959 () Option!17253)

(assert (=> b!7517907 (= e!4481959 None!17252)))

(declare-fun bm!689480 () Bool)

(assert (=> bm!689480 (= call!689486 (getLanguageWitness!1096 (ite c!1389250 (regOne!40025 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517908 () Bool)

(assert (=> b!7517908 (= e!4481962 e!4481961)))

(declare-fun c!1389249 () Bool)

(assert (=> b!7517908 (= c!1389249 (is-Star!19756 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517909 () Bool)

(assert (=> b!7517909 (= e!4481957 (Some!17252 Nil!72520))))

(declare-fun b!7517910 () Bool)

(declare-fun e!4481964 () Option!17253)

(assert (=> b!7517910 (= e!4481958 e!4481964)))

(declare-fun lt!2638454 () Option!17253)

(assert (=> b!7517910 (= lt!2638454 call!689485)))

(declare-fun c!1389243 () Bool)

(assert (=> b!7517910 (= c!1389243 (is-Some!17252 lt!2638454))))

(declare-fun b!7517911 () Bool)

(declare-fun c!1389247 () Bool)

(declare-fun lt!2638452 () Option!17253)

(assert (=> b!7517911 (= c!1389247 (is-Some!17252 lt!2638452))))

(assert (=> b!7517911 (= lt!2638452 call!689486)))

(assert (=> b!7517911 (= e!4481964 e!4481959)))

(declare-fun bm!689481 () Bool)

(assert (=> bm!689481 (= call!689485 (getLanguageWitness!1096 (ite c!1389250 (regTwo!40025 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517912 () Bool)

(assert (=> b!7517912 (= e!4481961 (Some!17252 Nil!72520))))

(declare-fun b!7517913 () Bool)

(assert (=> b!7517913 (= e!4481959 (Some!17252 (++!17359 (v!54387 lt!2638454) (v!54387 lt!2638452))))))

(declare-fun b!7517914 () Bool)

(assert (=> b!7517914 (= e!4481962 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517915 () Bool)

(assert (=> b!7517915 (= e!4481957 e!4481960)))

(declare-fun c!1389246 () Bool)

(assert (=> b!7517915 (= c!1389246 (is-EmptyLang!19756 (ite c!1388913 (regTwo!40025 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))) (regOne!40024 (ite c!1388794 (regTwo!40025 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388738 (regTwo!40025 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regOne!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517916 () Bool)

(assert (=> b!7517916 (= e!4481960 None!17252)))

(declare-fun b!7517917 () Bool)

(assert (=> b!7517917 (= e!4481964 None!17252)))

(assert (= (and d!2308388 c!1389244) b!7517909))

(assert (= (and d!2308388 (not c!1389244)) b!7517915))

(assert (= (and b!7517915 c!1389246) b!7517916))

(assert (= (and b!7517915 (not c!1389246)) b!7517902))

(assert (= (and b!7517902 c!1389245) b!7517914))

(assert (= (and b!7517902 (not c!1389245)) b!7517908))

(assert (= (and b!7517908 c!1389249) b!7517912))

(assert (= (and b!7517908 (not c!1389249)) b!7517906))

(assert (= (and b!7517906 c!1389250) b!7517904))

(assert (= (and b!7517906 (not c!1389250)) b!7517910))

(assert (= (and b!7517904 c!1389248) b!7517903))

(assert (= (and b!7517904 (not c!1389248)) b!7517905))

(assert (= (and b!7517910 c!1389243) b!7517911))

(assert (= (and b!7517910 (not c!1389243)) b!7517917))

(assert (= (and b!7517911 c!1389247) b!7517913))

(assert (= (and b!7517911 (not c!1389247)) b!7517907))

(assert (= (or b!7517905 b!7517910) bm!689481))

(assert (= (or b!7517904 b!7517911) bm!689480))

(declare-fun m!8099092 () Bool)

(assert (=> bm!689480 m!8099092))

(declare-fun m!8099094 () Bool)

(assert (=> bm!689481 m!8099094))

(declare-fun m!8099096 () Bool)

(assert (=> b!7517913 m!8099096))

(assert (=> bm!689376 d!2308388))

(declare-fun d!2308390 () Bool)

(declare-fun lt!2638455 () Int)

(assert (=> d!2308390 (>= lt!2638455 0)))

(declare-fun e!4481965 () Int)

(assert (=> d!2308390 (= lt!2638455 e!4481965)))

(declare-fun c!1389251 () Bool)

(assert (=> d!2308390 (= c!1389251 (is-Nil!72520 (t!387281 (t!387281 lt!2638233))))))

(assert (=> d!2308390 (= (size!42300 (t!387281 (t!387281 lt!2638233))) lt!2638455)))

(declare-fun b!7517918 () Bool)

(assert (=> b!7517918 (= e!4481965 0)))

(declare-fun b!7517919 () Bool)

(assert (=> b!7517919 (= e!4481965 (+ 1 (size!42300 (t!387281 (t!387281 (t!387281 lt!2638233))))))))

(assert (= (and d!2308390 c!1389251) b!7517918))

(assert (= (and d!2308390 (not c!1389251)) b!7517919))

(declare-fun m!8099098 () Bool)

(assert (=> b!7517919 m!8099098))

(assert (=> b!7516853 d!2308390))

(declare-fun d!2308392 () Bool)

(assert (=> d!2308392 (= (nullable!8596 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))) (nullableFct!3433 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))

(declare-fun bs!1939424 () Bool)

(assert (= bs!1939424 d!2308392))

(declare-fun m!8099100 () Bool)

(assert (=> bs!1939424 m!8099100))

(assert (=> b!7516732 d!2308392))

(declare-fun d!2308394 () Bool)

(declare-fun lt!2638456 () Int)

(assert (=> d!2308394 (>= lt!2638456 0)))

(declare-fun e!4481966 () Int)

(assert (=> d!2308394 (= lt!2638456 e!4481966)))

(declare-fun c!1389252 () Bool)

(assert (=> d!2308394 (= c!1389252 (is-Nil!72520 lt!2638310))))

(assert (=> d!2308394 (= (size!42300 lt!2638310) lt!2638456)))

(declare-fun b!7517920 () Bool)

(assert (=> b!7517920 (= e!4481966 0)))

(declare-fun b!7517921 () Bool)

(assert (=> b!7517921 (= e!4481966 (+ 1 (size!42300 (t!387281 lt!2638310))))))

(assert (= (and d!2308394 c!1389252) b!7517920))

(assert (= (and d!2308394 (not c!1389252)) b!7517921))

(declare-fun m!8099102 () Bool)

(assert (=> b!7517921 m!8099102))

(assert (=> b!7516829 d!2308394))

(declare-fun d!2308396 () Bool)

(declare-fun lt!2638457 () Int)

(assert (=> d!2308396 (>= lt!2638457 0)))

(declare-fun e!4481967 () Int)

(assert (=> d!2308396 (= lt!2638457 e!4481967)))

(declare-fun c!1389253 () Bool)

(assert (=> d!2308396 (= c!1389253 (is-Nil!72520 (v!54387 lt!2638264)))))

(assert (=> d!2308396 (= (size!42300 (v!54387 lt!2638264)) lt!2638457)))

(declare-fun b!7517922 () Bool)

(assert (=> b!7517922 (= e!4481967 0)))

(declare-fun b!7517923 () Bool)

(assert (=> b!7517923 (= e!4481967 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638264)))))))

(assert (= (and d!2308396 c!1389253) b!7517922))

(assert (= (and d!2308396 (not c!1389253)) b!7517923))

(assert (=> b!7517923 m!8098870))

(assert (=> b!7516829 d!2308396))

(declare-fun d!2308398 () Bool)

(declare-fun lt!2638458 () Int)

(assert (=> d!2308398 (>= lt!2638458 0)))

(declare-fun e!4481968 () Int)

(assert (=> d!2308398 (= lt!2638458 e!4481968)))

(declare-fun c!1389254 () Bool)

(assert (=> d!2308398 (= c!1389254 (is-Nil!72520 (v!54387 lt!2638262)))))

(assert (=> d!2308398 (= (size!42300 (v!54387 lt!2638262)) lt!2638458)))

(declare-fun b!7517924 () Bool)

(assert (=> b!7517924 (= e!4481968 0)))

(declare-fun b!7517925 () Bool)

(assert (=> b!7517925 (= e!4481968 (+ 1 (size!42300 (t!387281 (v!54387 lt!2638262)))))))

(assert (= (and d!2308398 c!1389254) b!7517924))

(assert (= (and d!2308398 (not c!1389254)) b!7517925))

(declare-fun m!8099104 () Bool)

(assert (=> b!7517925 m!8099104))

(assert (=> b!7516829 d!2308398))

(declare-fun d!2308400 () Bool)

(declare-fun c!1389255 () Bool)

(assert (=> d!2308400 (= c!1389255 (is-Nil!72520 lt!2638320))))

(declare-fun e!4481969 () (Set C!39838))

(assert (=> d!2308400 (= (content!15343 lt!2638320) e!4481969)))

(declare-fun b!7517926 () Bool)

(assert (=> b!7517926 (= e!4481969 (as set.empty (Set C!39838)))))

(declare-fun b!7517927 () Bool)

(assert (=> b!7517927 (= e!4481969 (set.union (set.insert (h!78968 lt!2638320) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638320))))))

(assert (= (and d!2308400 c!1389255) b!7517926))

(assert (= (and d!2308400 (not c!1389255)) b!7517927))

(declare-fun m!8099106 () Bool)

(assert (=> b!7517927 m!8099106))

(declare-fun m!8099108 () Bool)

(assert (=> b!7517927 m!8099108))

(assert (=> d!2308092 d!2308400))

(assert (=> d!2308092 d!2308330))

(assert (=> d!2308092 d!2307988))

(declare-fun d!2308402 () Bool)

(declare-fun lt!2638459 () Int)

(assert (=> d!2308402 (>= lt!2638459 0)))

(declare-fun e!4481970 () Int)

(assert (=> d!2308402 (= lt!2638459 e!4481970)))

(declare-fun c!1389256 () Bool)

(assert (=> d!2308402 (= c!1389256 (is-Nil!72520 (t!387281 (v!54387 lt!2638237))))))

(assert (=> d!2308402 (= (size!42300 (t!387281 (v!54387 lt!2638237))) lt!2638459)))

(declare-fun b!7517928 () Bool)

(assert (=> b!7517928 (= e!4481970 0)))

(declare-fun b!7517929 () Bool)

(assert (=> b!7517929 (= e!4481970 (+ 1 (size!42300 (t!387281 (t!387281 (v!54387 lt!2638237))))))))

(assert (= (and d!2308402 c!1389256) b!7517928))

(assert (= (and d!2308402 (not c!1389256)) b!7517929))

(declare-fun m!8099110 () Bool)

(assert (=> b!7517929 m!8099110))

(assert (=> b!7516760 d!2308402))

(declare-fun b!7517930 () Bool)

(declare-fun e!4481972 () List!72644)

(assert (=> b!7517930 (= e!4481972 (v!54387 lt!2638252))))

(declare-fun lt!2638460 () List!72644)

(declare-fun b!7517933 () Bool)

(declare-fun e!4481971 () Bool)

(assert (=> b!7517933 (= e!4481971 (or (not (= (v!54387 lt!2638252) Nil!72520)) (= lt!2638460 (t!387281 (v!54387 lt!2638254)))))))

(declare-fun b!7517932 () Bool)

(declare-fun res!3013982 () Bool)

(assert (=> b!7517932 (=> (not res!3013982) (not e!4481971))))

(assert (=> b!7517932 (= res!3013982 (= (size!42300 lt!2638460) (+ (size!42300 (t!387281 (v!54387 lt!2638254))) (size!42300 (v!54387 lt!2638252)))))))

(declare-fun b!7517931 () Bool)

(assert (=> b!7517931 (= e!4481972 (Cons!72520 (h!78968 (t!387281 (v!54387 lt!2638254))) (++!17359 (t!387281 (t!387281 (v!54387 lt!2638254))) (v!54387 lt!2638252))))))

(declare-fun d!2308404 () Bool)

(assert (=> d!2308404 e!4481971))

(declare-fun res!3013983 () Bool)

(assert (=> d!2308404 (=> (not res!3013983) (not e!4481971))))

(assert (=> d!2308404 (= res!3013983 (= (content!15343 lt!2638460) (set.union (content!15343 (t!387281 (v!54387 lt!2638254))) (content!15343 (v!54387 lt!2638252)))))))

(assert (=> d!2308404 (= lt!2638460 e!4481972)))

(declare-fun c!1389257 () Bool)

(assert (=> d!2308404 (= c!1389257 (is-Nil!72520 (t!387281 (v!54387 lt!2638254))))))

(assert (=> d!2308404 (= (++!17359 (t!387281 (v!54387 lt!2638254)) (v!54387 lt!2638252)) lt!2638460)))

(assert (= (and d!2308404 c!1389257) b!7517930))

(assert (= (and d!2308404 (not c!1389257)) b!7517931))

(assert (= (and d!2308404 res!3013983) b!7517932))

(assert (= (and b!7517932 res!3013982) b!7517933))

(declare-fun m!8099112 () Bool)

(assert (=> b!7517932 m!8099112))

(assert (=> b!7517932 m!8098880))

(assert (=> b!7517932 m!8098420))

(declare-fun m!8099114 () Bool)

(assert (=> b!7517931 m!8099114))

(declare-fun m!8099116 () Bool)

(assert (=> d!2308404 m!8099116))

(assert (=> d!2308404 m!8098816))

(assert (=> d!2308404 m!8098428))

(assert (=> b!7516926 d!2308404))

(declare-fun d!2308406 () Bool)

(declare-fun lt!2638461 () Int)

(assert (=> d!2308406 (>= lt!2638461 0)))

(declare-fun e!4481973 () Int)

(assert (=> d!2308406 (= lt!2638461 e!4481973)))

(declare-fun c!1389258 () Bool)

(assert (=> d!2308406 (= c!1389258 (is-Nil!72520 (t!387281 (v!54387 lt!2638234))))))

(assert (=> d!2308406 (= (size!42300 (t!387281 (v!54387 lt!2638234))) lt!2638461)))

(declare-fun b!7517934 () Bool)

(assert (=> b!7517934 (= e!4481973 0)))

(declare-fun b!7517935 () Bool)

(assert (=> b!7517935 (= e!4481973 (+ 1 (size!42300 (t!387281 (t!387281 (v!54387 lt!2638234))))))))

(assert (= (and d!2308406 c!1389258) b!7517934))

(assert (= (and d!2308406 (not c!1389258)) b!7517935))

(declare-fun m!8099118 () Bool)

(assert (=> b!7517935 m!8099118))

(assert (=> b!7516914 d!2308406))

(declare-fun b!7517936 () Bool)

(declare-fun c!1389261 () Bool)

(assert (=> b!7517936 (= c!1389261 (is-ElementMatch!19756 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481977 () Option!17253)

(declare-fun e!4481979 () Option!17253)

(assert (=> b!7517936 (= e!4481977 e!4481979)))

(declare-fun d!2308408 () Bool)

(declare-fun c!1389260 () Bool)

(assert (=> d!2308408 (= c!1389260 (is-EmptyExpr!19756 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481974 () Option!17253)

(assert (=> d!2308408 (= (getLanguageWitness!1096 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) e!4481974)))

(declare-fun b!7517937 () Bool)

(declare-fun e!4481980 () Option!17253)

(declare-fun lt!2638463 () Option!17253)

(assert (=> b!7517937 (= e!4481980 lt!2638463)))

(declare-fun b!7517938 () Bool)

(declare-fun e!4481975 () Option!17253)

(assert (=> b!7517938 (= e!4481975 e!4481980)))

(declare-fun call!689488 () Option!17253)

(assert (=> b!7517938 (= lt!2638463 call!689488)))

(declare-fun c!1389264 () Bool)

(assert (=> b!7517938 (= c!1389264 (is-Some!17252 lt!2638463))))

(declare-fun b!7517939 () Bool)

(declare-fun call!689487 () Option!17253)

(assert (=> b!7517939 (= e!4481980 call!689487)))

(declare-fun b!7517940 () Bool)

(declare-fun c!1389266 () Bool)

(assert (=> b!7517940 (= c!1389266 (is-Union!19756 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun e!4481978 () Option!17253)

(assert (=> b!7517940 (= e!4481978 e!4481975)))

(declare-fun b!7517941 () Bool)

(declare-fun e!4481976 () Option!17253)

(assert (=> b!7517941 (= e!4481976 None!17252)))

(declare-fun bm!689482 () Bool)

(assert (=> bm!689482 (= call!689488 (getLanguageWitness!1096 (ite c!1389266 (regOne!40025 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regTwo!40024 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517942 () Bool)

(assert (=> b!7517942 (= e!4481979 e!4481978)))

(declare-fun c!1389265 () Bool)

(assert (=> b!7517942 (= c!1389265 (is-Star!19756 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517943 () Bool)

(assert (=> b!7517943 (= e!4481974 (Some!17252 Nil!72520))))

(declare-fun b!7517944 () Bool)

(declare-fun e!4481981 () Option!17253)

(assert (=> b!7517944 (= e!4481975 e!4481981)))

(declare-fun lt!2638464 () Option!17253)

(assert (=> b!7517944 (= lt!2638464 call!689487)))

(declare-fun c!1389259 () Bool)

(assert (=> b!7517944 (= c!1389259 (is-Some!17252 lt!2638464))))

(declare-fun b!7517945 () Bool)

(declare-fun c!1389263 () Bool)

(declare-fun lt!2638462 () Option!17253)

(assert (=> b!7517945 (= c!1389263 (is-Some!17252 lt!2638462))))

(assert (=> b!7517945 (= lt!2638462 call!689488)))

(assert (=> b!7517945 (= e!4481981 e!4481976)))

(declare-fun bm!689483 () Bool)

(assert (=> bm!689483 (= call!689487 (getLanguageWitness!1096 (ite c!1389266 (regTwo!40025 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) (regOne!40024 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))))

(declare-fun b!7517946 () Bool)

(assert (=> b!7517946 (= e!4481978 (Some!17252 Nil!72520))))

(declare-fun b!7517947 () Bool)

(assert (=> b!7517947 (= e!4481976 (Some!17252 (++!17359 (v!54387 lt!2638464) (v!54387 lt!2638462))))))

(declare-fun b!7517948 () Bool)

(assert (=> b!7517948 (= e!4481979 (Some!17252 (Cons!72520 (c!1388670 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))) Nil!72520)))))

(declare-fun b!7517949 () Bool)

(assert (=> b!7517949 (= e!4481974 e!4481977)))

(declare-fun c!1389262 () Bool)

(assert (=> b!7517949 (= c!1389262 (is-EmptyLang!19756 (ite c!1388879 (regOne!40025 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))) (regTwo!40024 (ite c!1388779 (regTwo!40025 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) (regOne!40024 (ite c!1388730 (regTwo!40025 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388695 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regOne!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517950 () Bool)

(assert (=> b!7517950 (= e!4481977 None!17252)))

(declare-fun b!7517951 () Bool)

(assert (=> b!7517951 (= e!4481981 None!17252)))

(assert (= (and d!2308408 c!1389260) b!7517943))

(assert (= (and d!2308408 (not c!1389260)) b!7517949))

(assert (= (and b!7517949 c!1389262) b!7517950))

(assert (= (and b!7517949 (not c!1389262)) b!7517936))

(assert (= (and b!7517936 c!1389261) b!7517948))

(assert (= (and b!7517936 (not c!1389261)) b!7517942))

(assert (= (and b!7517942 c!1389265) b!7517946))

(assert (= (and b!7517942 (not c!1389265)) b!7517940))

(assert (= (and b!7517940 c!1389266) b!7517938))

(assert (= (and b!7517940 (not c!1389266)) b!7517944))

(assert (= (and b!7517938 c!1389264) b!7517937))

(assert (= (and b!7517938 (not c!1389264)) b!7517939))

(assert (= (and b!7517944 c!1389259) b!7517945))

(assert (= (and b!7517944 (not c!1389259)) b!7517951))

(assert (= (and b!7517945 c!1389263) b!7517947))

(assert (= (and b!7517945 (not c!1389263)) b!7517941))

(assert (= (or b!7517939 b!7517944) bm!689483))

(assert (= (or b!7517938 b!7517945) bm!689482))

(declare-fun m!8099120 () Bool)

(assert (=> bm!689482 m!8099120))

(declare-fun m!8099122 () Bool)

(assert (=> bm!689483 m!8099122))

(declare-fun m!8099124 () Bool)

(assert (=> b!7517947 m!8099124))

(assert (=> bm!689369 d!2308408))

(declare-fun b!7517952 () Bool)

(declare-fun e!4481983 () List!72644)

(assert (=> b!7517952 (= e!4481983 (v!54387 lt!2638307))))

(declare-fun e!4481982 () Bool)

(declare-fun lt!2638465 () List!72644)

(declare-fun b!7517955 () Bool)

(assert (=> b!7517955 (= e!4481982 (or (not (= (v!54387 lt!2638307) Nil!72520)) (= lt!2638465 (v!54387 lt!2638309))))))

(declare-fun b!7517954 () Bool)

(declare-fun res!3013984 () Bool)

(assert (=> b!7517954 (=> (not res!3013984) (not e!4481982))))

(assert (=> b!7517954 (= res!3013984 (= (size!42300 lt!2638465) (+ (size!42300 (v!54387 lt!2638309)) (size!42300 (v!54387 lt!2638307)))))))

(declare-fun b!7517953 () Bool)

(assert (=> b!7517953 (= e!4481983 (Cons!72520 (h!78968 (v!54387 lt!2638309)) (++!17359 (t!387281 (v!54387 lt!2638309)) (v!54387 lt!2638307))))))

(declare-fun d!2308410 () Bool)

(assert (=> d!2308410 e!4481982))

(declare-fun res!3013985 () Bool)

(assert (=> d!2308410 (=> (not res!3013985) (not e!4481982))))

(assert (=> d!2308410 (= res!3013985 (= (content!15343 lt!2638465) (set.union (content!15343 (v!54387 lt!2638309)) (content!15343 (v!54387 lt!2638307)))))))

(assert (=> d!2308410 (= lt!2638465 e!4481983)))

(declare-fun c!1389267 () Bool)

(assert (=> d!2308410 (= c!1389267 (is-Nil!72520 (v!54387 lt!2638309)))))

(assert (=> d!2308410 (= (++!17359 (v!54387 lt!2638309) (v!54387 lt!2638307)) lt!2638465)))

(assert (= (and d!2308410 c!1389267) b!7517952))

(assert (= (and d!2308410 (not c!1389267)) b!7517953))

(assert (= (and d!2308410 res!3013985) b!7517954))

(assert (= (and b!7517954 res!3013984) b!7517955))

(declare-fun m!8099126 () Bool)

(assert (=> b!7517954 m!8099126))

(declare-fun m!8099128 () Bool)

(assert (=> b!7517954 m!8099128))

(declare-fun m!8099130 () Bool)

(assert (=> b!7517954 m!8099130))

(declare-fun m!8099132 () Bool)

(assert (=> b!7517953 m!8099132))

(declare-fun m!8099134 () Bool)

(assert (=> d!2308410 m!8099134))

(declare-fun m!8099136 () Bool)

(assert (=> d!2308410 m!8099136))

(declare-fun m!8099138 () Bool)

(assert (=> d!2308410 m!8099138))

(assert (=> b!7516822 d!2308410))

(declare-fun b!7517956 () Bool)

(declare-fun e!4481985 () Bool)

(declare-fun call!689490 () Bool)

(assert (=> b!7517956 (= e!4481985 call!689490)))

(declare-fun b!7517957 () Bool)

(declare-fun res!3013987 () Bool)

(declare-fun e!4481989 () Bool)

(assert (=> b!7517957 (=> (not res!3013987) (not e!4481989))))

(declare-fun call!689491 () Bool)

(assert (=> b!7517957 (= res!3013987 call!689491)))

(declare-fun e!4481988 () Bool)

(assert (=> b!7517957 (= e!4481988 e!4481989)))

(declare-fun bm!689484 () Bool)

(declare-fun c!1389268 () Bool)

(declare-fun call!689489 () Bool)

(assert (=> bm!689484 (= call!689489 (validRegex!10192 (ite c!1389268 (regTwo!40025 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))) (regTwo!40024 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))))))

(declare-fun b!7517958 () Bool)

(declare-fun e!4481986 () Bool)

(assert (=> b!7517958 (= e!4481986 e!4481985)))

(declare-fun res!3013986 () Bool)

(assert (=> b!7517958 (= res!3013986 (not (nullable!8596 (reg!20085 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))))))

(assert (=> b!7517958 (=> (not res!3013986) (not e!4481985))))

(declare-fun bm!689485 () Bool)

(assert (=> bm!689485 (= call!689491 call!689490)))

(declare-fun c!1389269 () Bool)

(declare-fun bm!689486 () Bool)

(assert (=> bm!689486 (= call!689490 (validRegex!10192 (ite c!1389269 (reg!20085 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))) (ite c!1389268 (regOne!40025 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))) (regOne!40024 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))))

(declare-fun b!7517959 () Bool)

(assert (=> b!7517959 (= e!4481989 call!689489)))

(declare-fun d!2308412 () Bool)

(declare-fun res!3013990 () Bool)

(declare-fun e!4481990 () Bool)

(assert (=> d!2308412 (=> res!3013990 e!4481990)))

(assert (=> d!2308412 (= res!3013990 (is-ElementMatch!19756 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(assert (=> d!2308412 (= (validRegex!10192 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))) e!4481990)))

(declare-fun b!7517960 () Bool)

(assert (=> b!7517960 (= e!4481986 e!4481988)))

(assert (=> b!7517960 (= c!1389268 (is-Union!19756 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(declare-fun b!7517961 () Bool)

(declare-fun e!4481984 () Bool)

(assert (=> b!7517961 (= e!4481984 call!689489)))

(declare-fun b!7517962 () Bool)

(declare-fun e!4481987 () Bool)

(assert (=> b!7517962 (= e!4481987 e!4481984)))

(declare-fun res!3013988 () Bool)

(assert (=> b!7517962 (=> (not res!3013988) (not e!4481984))))

(assert (=> b!7517962 (= res!3013988 call!689491)))

(declare-fun b!7517963 () Bool)

(declare-fun res!3013989 () Bool)

(assert (=> b!7517963 (=> res!3013989 e!4481987)))

(assert (=> b!7517963 (= res!3013989 (not (is-Concat!28601 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))))))))

(assert (=> b!7517963 (= e!4481988 e!4481987)))

(declare-fun b!7517964 () Bool)

(assert (=> b!7517964 (= e!4481990 e!4481986)))

(assert (=> b!7517964 (= c!1389269 (is-Star!19756 (ite c!1388871 (reg!20085 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (ite c!1388870 (regOne!40025 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091))))) (regOne!40024 (ite c!1388770 (regTwo!40025 (h!78967 (exprs!9008 c!7091))) (regTwo!40024 (h!78967 (exprs!9008 c!7091)))))))))))

(assert (= (and d!2308412 (not res!3013990)) b!7517964))

(assert (= (and b!7517964 c!1389269) b!7517958))

(assert (= (and b!7517964 (not c!1389269)) b!7517960))

(assert (= (and b!7517958 res!3013986) b!7517956))

(assert (= (and b!7517960 c!1389268) b!7517957))

(assert (= (and b!7517960 (not c!1389268)) b!7517963))

(assert (= (and b!7517957 res!3013987) b!7517959))

(assert (= (and b!7517963 (not res!3013989)) b!7517962))

(assert (= (and b!7517962 res!3013988) b!7517961))

(assert (= (or b!7517957 b!7517962) bm!689485))

(assert (= (or b!7517959 b!7517961) bm!689484))

(assert (= (or b!7517956 bm!689485) bm!689486))

(declare-fun m!8099140 () Bool)

(assert (=> bm!689484 m!8099140))

(declare-fun m!8099142 () Bool)

(assert (=> b!7517958 m!8099142))

(declare-fun m!8099144 () Bool)

(assert (=> bm!689486 m!8099144))

(assert (=> bm!689368 d!2308412))

(declare-fun d!2308414 () Bool)

(assert (=> d!2308414 (= (nullable!8596 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))) (nullableFct!3433 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))))

(declare-fun bs!1939425 () Bool)

(assert (= bs!1939425 d!2308414))

(declare-fun m!8099146 () Bool)

(assert (=> bs!1939425 m!8099146))

(assert (=> b!7516856 d!2308414))

(declare-fun d!2308416 () Bool)

(declare-fun c!1389270 () Bool)

(assert (=> d!2308416 (= c!1389270 (is-Nil!72520 lt!2638315))))

(declare-fun e!4481991 () (Set C!39838))

(assert (=> d!2308416 (= (content!15343 lt!2638315) e!4481991)))

(declare-fun b!7517965 () Bool)

(assert (=> b!7517965 (= e!4481991 (as set.empty (Set C!39838)))))

(declare-fun b!7517966 () Bool)

(assert (=> b!7517966 (= e!4481991 (set.union (set.insert (h!78968 lt!2638315) (as set.empty (Set C!39838))) (content!15343 (t!387281 lt!2638315))))))

(assert (= (and d!2308416 c!1389270) b!7517965))

(assert (= (and d!2308416 (not c!1389270)) b!7517966))

(declare-fun m!8099148 () Bool)

(assert (=> b!7517966 m!8099148))

(declare-fun m!8099150 () Bool)

(assert (=> b!7517966 m!8099150))

(assert (=> d!2308082 d!2308416))

(assert (=> d!2308082 d!2308336))

(assert (=> d!2308082 d!2308106))

(declare-fun b!7517970 () Bool)

(declare-fun e!4481992 () Bool)

(declare-fun tp!2182521 () Bool)

(declare-fun tp!2182524 () Bool)

(assert (=> b!7517970 (= e!4481992 (and tp!2182521 tp!2182524))))

(declare-fun b!7517967 () Bool)

(assert (=> b!7517967 (= e!4481992 tp_is_empty!49843)))

(declare-fun b!7517969 () Bool)

(declare-fun tp!2182523 () Bool)

(assert (=> b!7517969 (= e!4481992 tp!2182523)))

(declare-fun b!7517968 () Bool)

(declare-fun tp!2182525 () Bool)

(declare-fun tp!2182522 () Bool)

(assert (=> b!7517968 (= e!4481992 (and tp!2182525 tp!2182522))))

(assert (=> b!7517033 (= tp!2182297 e!4481992)))

(assert (= (and b!7517033 (is-ElementMatch!19756 (regOne!40025 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517967))

(assert (= (and b!7517033 (is-Concat!28601 (regOne!40025 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517968))

(assert (= (and b!7517033 (is-Star!19756 (regOne!40025 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517969))

(assert (= (and b!7517033 (is-Union!19756 (regOne!40025 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517970))

(declare-fun b!7517974 () Bool)

(declare-fun e!4481993 () Bool)

(declare-fun tp!2182526 () Bool)

(declare-fun tp!2182529 () Bool)

(assert (=> b!7517974 (= e!4481993 (and tp!2182526 tp!2182529))))

(declare-fun b!7517971 () Bool)

(assert (=> b!7517971 (= e!4481993 tp_is_empty!49843)))

(declare-fun b!7517973 () Bool)

(declare-fun tp!2182528 () Bool)

(assert (=> b!7517973 (= e!4481993 tp!2182528)))

(declare-fun b!7517972 () Bool)

(declare-fun tp!2182530 () Bool)

(declare-fun tp!2182527 () Bool)

(assert (=> b!7517972 (= e!4481993 (and tp!2182530 tp!2182527))))

(assert (=> b!7517033 (= tp!2182300 e!4481993)))

(assert (= (and b!7517033 (is-ElementMatch!19756 (regTwo!40025 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517971))

(assert (= (and b!7517033 (is-Concat!28601 (regTwo!40025 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517972))

(assert (= (and b!7517033 (is-Star!19756 (regTwo!40025 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517973))

(assert (= (and b!7517033 (is-Union!19756 (regTwo!40025 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517974))

(declare-fun b!7517978 () Bool)

(declare-fun e!4481994 () Bool)

(declare-fun tp!2182531 () Bool)

(declare-fun tp!2182534 () Bool)

(assert (=> b!7517978 (= e!4481994 (and tp!2182531 tp!2182534))))

(declare-fun b!7517975 () Bool)

(assert (=> b!7517975 (= e!4481994 tp_is_empty!49843)))

(declare-fun b!7517977 () Bool)

(declare-fun tp!2182533 () Bool)

(assert (=> b!7517977 (= e!4481994 tp!2182533)))

(declare-fun b!7517976 () Bool)

(declare-fun tp!2182535 () Bool)

(declare-fun tp!2182532 () Bool)

(assert (=> b!7517976 (= e!4481994 (and tp!2182535 tp!2182532))))

(assert (=> b!7517024 (= tp!2182289 e!4481994)))

(assert (= (and b!7517024 (is-ElementMatch!19756 (reg!20085 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7517975))

(assert (= (and b!7517024 (is-Concat!28601 (reg!20085 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7517976))

(assert (= (and b!7517024 (is-Star!19756 (reg!20085 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7517977))

(assert (= (and b!7517024 (is-Union!19756 (reg!20085 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7517978))

(declare-fun b!7517982 () Bool)

(declare-fun e!4481995 () Bool)

(declare-fun tp!2182536 () Bool)

(declare-fun tp!2182539 () Bool)

(assert (=> b!7517982 (= e!4481995 (and tp!2182536 tp!2182539))))

(declare-fun b!7517979 () Bool)

(assert (=> b!7517979 (= e!4481995 tp_is_empty!49843)))

(declare-fun b!7517981 () Bool)

(declare-fun tp!2182538 () Bool)

(assert (=> b!7517981 (= e!4481995 tp!2182538)))

(declare-fun b!7517980 () Bool)

(declare-fun tp!2182540 () Bool)

(declare-fun tp!2182537 () Bool)

(assert (=> b!7517980 (= e!4481995 (and tp!2182540 tp!2182537))))

(assert (=> b!7516965 (= tp!2182212 e!4481995)))

(assert (= (and b!7516965 (is-ElementMatch!19756 (regOne!40025 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517979))

(assert (= (and b!7516965 (is-Concat!28601 (regOne!40025 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517980))

(assert (= (and b!7516965 (is-Star!19756 (regOne!40025 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517981))

(assert (= (and b!7516965 (is-Union!19756 (regOne!40025 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517982))

(declare-fun b!7517986 () Bool)

(declare-fun e!4481996 () Bool)

(declare-fun tp!2182541 () Bool)

(declare-fun tp!2182544 () Bool)

(assert (=> b!7517986 (= e!4481996 (and tp!2182541 tp!2182544))))

(declare-fun b!7517983 () Bool)

(assert (=> b!7517983 (= e!4481996 tp_is_empty!49843)))

(declare-fun b!7517985 () Bool)

(declare-fun tp!2182543 () Bool)

(assert (=> b!7517985 (= e!4481996 tp!2182543)))

(declare-fun b!7517984 () Bool)

(declare-fun tp!2182545 () Bool)

(declare-fun tp!2182542 () Bool)

(assert (=> b!7517984 (= e!4481996 (and tp!2182545 tp!2182542))))

(assert (=> b!7516965 (= tp!2182215 e!4481996)))

(assert (= (and b!7516965 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517983))

(assert (= (and b!7516965 (is-Concat!28601 (regTwo!40025 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517984))

(assert (= (and b!7516965 (is-Star!19756 (regTwo!40025 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517985))

(assert (= (and b!7516965 (is-Union!19756 (regTwo!40025 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7517986))

(declare-fun b!7517990 () Bool)

(declare-fun e!4481997 () Bool)

(declare-fun tp!2182546 () Bool)

(declare-fun tp!2182549 () Bool)

(assert (=> b!7517990 (= e!4481997 (and tp!2182546 tp!2182549))))

(declare-fun b!7517987 () Bool)

(assert (=> b!7517987 (= e!4481997 tp_is_empty!49843)))

(declare-fun b!7517989 () Bool)

(declare-fun tp!2182548 () Bool)

(assert (=> b!7517989 (= e!4481997 tp!2182548)))

(declare-fun b!7517988 () Bool)

(declare-fun tp!2182550 () Bool)

(declare-fun tp!2182547 () Bool)

(assert (=> b!7517988 (= e!4481997 (and tp!2182550 tp!2182547))))

(assert (=> b!7517015 (= tp!2182281 e!4481997)))

(assert (= (and b!7517015 (is-ElementMatch!19756 (regOne!40024 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517987))

(assert (= (and b!7517015 (is-Concat!28601 (regOne!40024 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517988))

(assert (= (and b!7517015 (is-Star!19756 (regOne!40024 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517989))

(assert (= (and b!7517015 (is-Union!19756 (regOne!40024 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517990))

(declare-fun b!7517994 () Bool)

(declare-fun e!4481998 () Bool)

(declare-fun tp!2182551 () Bool)

(declare-fun tp!2182554 () Bool)

(assert (=> b!7517994 (= e!4481998 (and tp!2182551 tp!2182554))))

(declare-fun b!7517991 () Bool)

(assert (=> b!7517991 (= e!4481998 tp_is_empty!49843)))

(declare-fun b!7517993 () Bool)

(declare-fun tp!2182553 () Bool)

(assert (=> b!7517993 (= e!4481998 tp!2182553)))

(declare-fun b!7517992 () Bool)

(declare-fun tp!2182555 () Bool)

(declare-fun tp!2182552 () Bool)

(assert (=> b!7517992 (= e!4481998 (and tp!2182555 tp!2182552))))

(assert (=> b!7517015 (= tp!2182278 e!4481998)))

(assert (= (and b!7517015 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517991))

(assert (= (and b!7517015 (is-Concat!28601 (regTwo!40024 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517992))

(assert (= (and b!7517015 (is-Star!19756 (regTwo!40024 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517993))

(assert (= (and b!7517015 (is-Union!19756 (regTwo!40024 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517994))

(declare-fun b!7517998 () Bool)

(declare-fun e!4481999 () Bool)

(declare-fun tp!2182556 () Bool)

(declare-fun tp!2182559 () Bool)

(assert (=> b!7517998 (= e!4481999 (and tp!2182556 tp!2182559))))

(declare-fun b!7517995 () Bool)

(assert (=> b!7517995 (= e!4481999 tp_is_empty!49843)))

(declare-fun b!7517997 () Bool)

(declare-fun tp!2182558 () Bool)

(assert (=> b!7517997 (= e!4481999 tp!2182558)))

(declare-fun b!7517996 () Bool)

(declare-fun tp!2182560 () Bool)

(declare-fun tp!2182557 () Bool)

(assert (=> b!7517996 (= e!4481999 (and tp!2182560 tp!2182557))))

(assert (=> b!7517017 (= tp!2182277 e!4481999)))

(assert (= (and b!7517017 (is-ElementMatch!19756 (regOne!40025 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517995))

(assert (= (and b!7517017 (is-Concat!28601 (regOne!40025 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517996))

(assert (= (and b!7517017 (is-Star!19756 (regOne!40025 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517997))

(assert (= (and b!7517017 (is-Union!19756 (regOne!40025 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517998))

(declare-fun b!7518002 () Bool)

(declare-fun e!4482000 () Bool)

(declare-fun tp!2182561 () Bool)

(declare-fun tp!2182564 () Bool)

(assert (=> b!7518002 (= e!4482000 (and tp!2182561 tp!2182564))))

(declare-fun b!7517999 () Bool)

(assert (=> b!7517999 (= e!4482000 tp_is_empty!49843)))

(declare-fun b!7518001 () Bool)

(declare-fun tp!2182563 () Bool)

(assert (=> b!7518001 (= e!4482000 tp!2182563)))

(declare-fun b!7518000 () Bool)

(declare-fun tp!2182565 () Bool)

(declare-fun tp!2182562 () Bool)

(assert (=> b!7518000 (= e!4482000 (and tp!2182565 tp!2182562))))

(assert (=> b!7517017 (= tp!2182280 e!4482000)))

(assert (= (and b!7517017 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7517999))

(assert (= (and b!7517017 (is-Concat!28601 (regTwo!40025 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518000))

(assert (= (and b!7517017 (is-Star!19756 (regTwo!40025 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518001))

(assert (= (and b!7517017 (is-Union!19756 (regTwo!40025 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518002))

(declare-fun b!7518006 () Bool)

(declare-fun e!4482001 () Bool)

(declare-fun tp!2182566 () Bool)

(declare-fun tp!2182569 () Bool)

(assert (=> b!7518006 (= e!4482001 (and tp!2182566 tp!2182569))))

(declare-fun b!7518003 () Bool)

(assert (=> b!7518003 (= e!4482001 tp_is_empty!49843)))

(declare-fun b!7518005 () Bool)

(declare-fun tp!2182568 () Bool)

(assert (=> b!7518005 (= e!4482001 tp!2182568)))

(declare-fun b!7518004 () Bool)

(declare-fun tp!2182570 () Bool)

(declare-fun tp!2182567 () Bool)

(assert (=> b!7518004 (= e!4482001 (and tp!2182570 tp!2182567))))

(assert (=> b!7517067 (= tp!2182346 e!4482001)))

(assert (= (and b!7517067 (is-ElementMatch!19756 (regOne!40024 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518003))

(assert (= (and b!7517067 (is-Concat!28601 (regOne!40024 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518004))

(assert (= (and b!7517067 (is-Star!19756 (regOne!40024 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518005))

(assert (= (and b!7517067 (is-Union!19756 (regOne!40024 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518006))

(declare-fun b!7518010 () Bool)

(declare-fun e!4482002 () Bool)

(declare-fun tp!2182571 () Bool)

(declare-fun tp!2182574 () Bool)

(assert (=> b!7518010 (= e!4482002 (and tp!2182571 tp!2182574))))

(declare-fun b!7518007 () Bool)

(assert (=> b!7518007 (= e!4482002 tp_is_empty!49843)))

(declare-fun b!7518009 () Bool)

(declare-fun tp!2182573 () Bool)

(assert (=> b!7518009 (= e!4482002 tp!2182573)))

(declare-fun b!7518008 () Bool)

(declare-fun tp!2182575 () Bool)

(declare-fun tp!2182572 () Bool)

(assert (=> b!7518008 (= e!4482002 (and tp!2182575 tp!2182572))))

(assert (=> b!7517067 (= tp!2182343 e!4482002)))

(assert (= (and b!7517067 (is-ElementMatch!19756 (regTwo!40024 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518007))

(assert (= (and b!7517067 (is-Concat!28601 (regTwo!40024 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518008))

(assert (= (and b!7517067 (is-Star!19756 (regTwo!40024 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518009))

(assert (= (and b!7517067 (is-Union!19756 (regTwo!40024 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518010))

(declare-fun b!7518014 () Bool)

(declare-fun e!4482003 () Bool)

(declare-fun tp!2182576 () Bool)

(declare-fun tp!2182579 () Bool)

(assert (=> b!7518014 (= e!4482003 (and tp!2182576 tp!2182579))))

(declare-fun b!7518011 () Bool)

(assert (=> b!7518011 (= e!4482003 tp_is_empty!49843)))

(declare-fun b!7518013 () Bool)

(declare-fun tp!2182578 () Bool)

(assert (=> b!7518013 (= e!4482003 tp!2182578)))

(declare-fun b!7518012 () Bool)

(declare-fun tp!2182580 () Bool)

(declare-fun tp!2182577 () Bool)

(assert (=> b!7518012 (= e!4482003 (and tp!2182580 tp!2182577))))

(assert (=> b!7517008 (= tp!2182269 e!4482003)))

(assert (= (and b!7517008 (is-ElementMatch!19756 (reg!20085 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518011))

(assert (= (and b!7517008 (is-Concat!28601 (reg!20085 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518012))

(assert (= (and b!7517008 (is-Star!19756 (reg!20085 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518013))

(assert (= (and b!7517008 (is-Union!19756 (reg!20085 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518014))

(declare-fun b!7518018 () Bool)

(declare-fun e!4482004 () Bool)

(declare-fun tp!2182581 () Bool)

(declare-fun tp!2182584 () Bool)

(assert (=> b!7518018 (= e!4482004 (and tp!2182581 tp!2182584))))

(declare-fun b!7518015 () Bool)

(assert (=> b!7518015 (= e!4482004 tp_is_empty!49843)))

(declare-fun b!7518017 () Bool)

(declare-fun tp!2182583 () Bool)

(assert (=> b!7518017 (= e!4482004 tp!2182583)))

(declare-fun b!7518016 () Bool)

(declare-fun tp!2182585 () Bool)

(declare-fun tp!2182582 () Bool)

(assert (=> b!7518016 (= e!4482004 (and tp!2182585 tp!2182582))))

(assert (=> b!7516999 (= tp!2182261 e!4482004)))

(assert (= (and b!7516999 (is-ElementMatch!19756 (regOne!40024 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518015))

(assert (= (and b!7516999 (is-Concat!28601 (regOne!40024 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518016))

(assert (= (and b!7516999 (is-Star!19756 (regOne!40024 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518017))

(assert (= (and b!7516999 (is-Union!19756 (regOne!40024 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518018))

(declare-fun b!7518022 () Bool)

(declare-fun e!4482005 () Bool)

(declare-fun tp!2182586 () Bool)

(declare-fun tp!2182589 () Bool)

(assert (=> b!7518022 (= e!4482005 (and tp!2182586 tp!2182589))))

(declare-fun b!7518019 () Bool)

(assert (=> b!7518019 (= e!4482005 tp_is_empty!49843)))

(declare-fun b!7518021 () Bool)

(declare-fun tp!2182588 () Bool)

(assert (=> b!7518021 (= e!4482005 tp!2182588)))

(declare-fun b!7518020 () Bool)

(declare-fun tp!2182590 () Bool)

(declare-fun tp!2182587 () Bool)

(assert (=> b!7518020 (= e!4482005 (and tp!2182590 tp!2182587))))

(assert (=> b!7516999 (= tp!2182258 e!4482005)))

(assert (= (and b!7516999 (is-ElementMatch!19756 (regTwo!40024 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518019))

(assert (= (and b!7516999 (is-Concat!28601 (regTwo!40024 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518020))

(assert (= (and b!7516999 (is-Star!19756 (regTwo!40024 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518021))

(assert (= (and b!7516999 (is-Union!19756 (regTwo!40024 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518022))

(declare-fun b!7518026 () Bool)

(declare-fun e!4482006 () Bool)

(declare-fun tp!2182591 () Bool)

(declare-fun tp!2182594 () Bool)

(assert (=> b!7518026 (= e!4482006 (and tp!2182591 tp!2182594))))

(declare-fun b!7518023 () Bool)

(assert (=> b!7518023 (= e!4482006 tp_is_empty!49843)))

(declare-fun b!7518025 () Bool)

(declare-fun tp!2182593 () Bool)

(assert (=> b!7518025 (= e!4482006 tp!2182593)))

(declare-fun b!7518024 () Bool)

(declare-fun tp!2182595 () Bool)

(declare-fun tp!2182592 () Bool)

(assert (=> b!7518024 (= e!4482006 (and tp!2182595 tp!2182592))))

(assert (=> b!7517069 (= tp!2182342 e!4482006)))

(assert (= (and b!7517069 (is-ElementMatch!19756 (regOne!40025 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518023))

(assert (= (and b!7517069 (is-Concat!28601 (regOne!40025 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518024))

(assert (= (and b!7517069 (is-Star!19756 (regOne!40025 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518025))

(assert (= (and b!7517069 (is-Union!19756 (regOne!40025 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518026))

(declare-fun b!7518030 () Bool)

(declare-fun e!4482007 () Bool)

(declare-fun tp!2182596 () Bool)

(declare-fun tp!2182599 () Bool)

(assert (=> b!7518030 (= e!4482007 (and tp!2182596 tp!2182599))))

(declare-fun b!7518027 () Bool)

(assert (=> b!7518027 (= e!4482007 tp_is_empty!49843)))

(declare-fun b!7518029 () Bool)

(declare-fun tp!2182598 () Bool)

(assert (=> b!7518029 (= e!4482007 tp!2182598)))

(declare-fun b!7518028 () Bool)

(declare-fun tp!2182600 () Bool)

(declare-fun tp!2182597 () Bool)

(assert (=> b!7518028 (= e!4482007 (and tp!2182600 tp!2182597))))

(assert (=> b!7517069 (= tp!2182345 e!4482007)))

(assert (= (and b!7517069 (is-ElementMatch!19756 (regTwo!40025 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518027))

(assert (= (and b!7517069 (is-Concat!28601 (regTwo!40025 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518028))

(assert (= (and b!7517069 (is-Star!19756 (regTwo!40025 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518029))

(assert (= (and b!7517069 (is-Union!19756 (regTwo!40025 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518030))

(declare-fun b!7518034 () Bool)

(declare-fun e!4482008 () Bool)

(declare-fun tp!2182601 () Bool)

(declare-fun tp!2182604 () Bool)

(assert (=> b!7518034 (= e!4482008 (and tp!2182601 tp!2182604))))

(declare-fun b!7518031 () Bool)

(assert (=> b!7518031 (= e!4482008 tp_is_empty!49843)))

(declare-fun b!7518033 () Bool)

(declare-fun tp!2182603 () Bool)

(assert (=> b!7518033 (= e!4482008 tp!2182603)))

(declare-fun b!7518032 () Bool)

(declare-fun tp!2182605 () Bool)

(declare-fun tp!2182602 () Bool)

(assert (=> b!7518032 (= e!4482008 (and tp!2182605 tp!2182602))))

(assert (=> b!7517065 (= tp!2182337 e!4482008)))

(assert (= (and b!7517065 (is-ElementMatch!19756 (regOne!40025 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518031))

(assert (= (and b!7517065 (is-Concat!28601 (regOne!40025 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518032))

(assert (= (and b!7517065 (is-Star!19756 (regOne!40025 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518033))

(assert (= (and b!7517065 (is-Union!19756 (regOne!40025 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518034))

(declare-fun b!7518038 () Bool)

(declare-fun e!4482009 () Bool)

(declare-fun tp!2182606 () Bool)

(declare-fun tp!2182609 () Bool)

(assert (=> b!7518038 (= e!4482009 (and tp!2182606 tp!2182609))))

(declare-fun b!7518035 () Bool)

(assert (=> b!7518035 (= e!4482009 tp_is_empty!49843)))

(declare-fun b!7518037 () Bool)

(declare-fun tp!2182608 () Bool)

(assert (=> b!7518037 (= e!4482009 tp!2182608)))

(declare-fun b!7518036 () Bool)

(declare-fun tp!2182610 () Bool)

(declare-fun tp!2182607 () Bool)

(assert (=> b!7518036 (= e!4482009 (and tp!2182610 tp!2182607))))

(assert (=> b!7517065 (= tp!2182340 e!4482009)))

(assert (= (and b!7517065 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518035))

(assert (= (and b!7517065 (is-Concat!28601 (regTwo!40025 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518036))

(assert (= (and b!7517065 (is-Star!19756 (regTwo!40025 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518037))

(assert (= (and b!7517065 (is-Union!19756 (regTwo!40025 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518038))

(declare-fun b!7518042 () Bool)

(declare-fun e!4482010 () Bool)

(declare-fun tp!2182611 () Bool)

(declare-fun tp!2182614 () Bool)

(assert (=> b!7518042 (= e!4482010 (and tp!2182611 tp!2182614))))

(declare-fun b!7518039 () Bool)

(assert (=> b!7518039 (= e!4482010 tp_is_empty!49843)))

(declare-fun b!7518041 () Bool)

(declare-fun tp!2182613 () Bool)

(assert (=> b!7518041 (= e!4482010 tp!2182613)))

(declare-fun b!7518040 () Bool)

(declare-fun tp!2182615 () Bool)

(declare-fun tp!2182612 () Bool)

(assert (=> b!7518040 (= e!4482010 (and tp!2182615 tp!2182612))))

(assert (=> b!7517056 (= tp!2182329 e!4482010)))

(assert (= (and b!7517056 (is-ElementMatch!19756 (reg!20085 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518039))

(assert (= (and b!7517056 (is-Concat!28601 (reg!20085 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518040))

(assert (= (and b!7517056 (is-Star!19756 (reg!20085 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518041))

(assert (= (and b!7517056 (is-Union!19756 (reg!20085 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518042))

(declare-fun b!7518046 () Bool)

(declare-fun e!4482011 () Bool)

(declare-fun tp!2182616 () Bool)

(declare-fun tp!2182619 () Bool)

(assert (=> b!7518046 (= e!4482011 (and tp!2182616 tp!2182619))))

(declare-fun b!7518043 () Bool)

(assert (=> b!7518043 (= e!4482011 tp_is_empty!49843)))

(declare-fun b!7518045 () Bool)

(declare-fun tp!2182618 () Bool)

(assert (=> b!7518045 (= e!4482011 tp!2182618)))

(declare-fun b!7518044 () Bool)

(declare-fun tp!2182620 () Bool)

(declare-fun tp!2182617 () Bool)

(assert (=> b!7518044 (= e!4482011 (and tp!2182620 tp!2182617))))

(assert (=> b!7516997 (= tp!2182252 e!4482011)))

(assert (= (and b!7516997 (is-ElementMatch!19756 (regOne!40025 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518043))

(assert (= (and b!7516997 (is-Concat!28601 (regOne!40025 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518044))

(assert (= (and b!7516997 (is-Star!19756 (regOne!40025 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518045))

(assert (= (and b!7516997 (is-Union!19756 (regOne!40025 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518046))

(declare-fun b!7518050 () Bool)

(declare-fun e!4482012 () Bool)

(declare-fun tp!2182621 () Bool)

(declare-fun tp!2182624 () Bool)

(assert (=> b!7518050 (= e!4482012 (and tp!2182621 tp!2182624))))

(declare-fun b!7518047 () Bool)

(assert (=> b!7518047 (= e!4482012 tp_is_empty!49843)))

(declare-fun b!7518049 () Bool)

(declare-fun tp!2182623 () Bool)

(assert (=> b!7518049 (= e!4482012 tp!2182623)))

(declare-fun b!7518048 () Bool)

(declare-fun tp!2182625 () Bool)

(declare-fun tp!2182622 () Bool)

(assert (=> b!7518048 (= e!4482012 (and tp!2182625 tp!2182622))))

(assert (=> b!7516997 (= tp!2182255 e!4482012)))

(assert (= (and b!7516997 (is-ElementMatch!19756 (regTwo!40025 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518047))

(assert (= (and b!7516997 (is-Concat!28601 (regTwo!40025 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518048))

(assert (= (and b!7516997 (is-Star!19756 (regTwo!40025 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518049))

(assert (= (and b!7516997 (is-Union!19756 (regTwo!40025 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518050))

(declare-fun b!7518054 () Bool)

(declare-fun e!4482013 () Bool)

(declare-fun tp!2182626 () Bool)

(declare-fun tp!2182629 () Bool)

(assert (=> b!7518054 (= e!4482013 (and tp!2182626 tp!2182629))))

(declare-fun b!7518051 () Bool)

(assert (=> b!7518051 (= e!4482013 tp_is_empty!49843)))

(declare-fun b!7518053 () Bool)

(declare-fun tp!2182628 () Bool)

(assert (=> b!7518053 (= e!4482013 tp!2182628)))

(declare-fun b!7518052 () Bool)

(declare-fun tp!2182630 () Bool)

(declare-fun tp!2182627 () Bool)

(assert (=> b!7518052 (= e!4482013 (and tp!2182630 tp!2182627))))

(assert (=> b!7517047 (= tp!2182321 e!4482013)))

(assert (= (and b!7517047 (is-ElementMatch!19756 (regOne!40024 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518051))

(assert (= (and b!7517047 (is-Concat!28601 (regOne!40024 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518052))

(assert (= (and b!7517047 (is-Star!19756 (regOne!40024 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518053))

(assert (= (and b!7517047 (is-Union!19756 (regOne!40024 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518054))

(declare-fun b!7518058 () Bool)

(declare-fun e!4482014 () Bool)

(declare-fun tp!2182631 () Bool)

(declare-fun tp!2182634 () Bool)

(assert (=> b!7518058 (= e!4482014 (and tp!2182631 tp!2182634))))

(declare-fun b!7518055 () Bool)

(assert (=> b!7518055 (= e!4482014 tp_is_empty!49843)))

(declare-fun b!7518057 () Bool)

(declare-fun tp!2182633 () Bool)

(assert (=> b!7518057 (= e!4482014 tp!2182633)))

(declare-fun b!7518056 () Bool)

(declare-fun tp!2182635 () Bool)

(declare-fun tp!2182632 () Bool)

(assert (=> b!7518056 (= e!4482014 (and tp!2182635 tp!2182632))))

(assert (=> b!7517047 (= tp!2182318 e!4482014)))

(assert (= (and b!7517047 (is-ElementMatch!19756 (regTwo!40024 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518055))

(assert (= (and b!7517047 (is-Concat!28601 (regTwo!40024 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518056))

(assert (= (and b!7517047 (is-Star!19756 (regTwo!40024 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518057))

(assert (= (and b!7517047 (is-Union!19756 (regTwo!40024 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518058))

(declare-fun b!7518062 () Bool)

(declare-fun e!4482015 () Bool)

(declare-fun tp!2182636 () Bool)

(declare-fun tp!2182639 () Bool)

(assert (=> b!7518062 (= e!4482015 (and tp!2182636 tp!2182639))))

(declare-fun b!7518059 () Bool)

(assert (=> b!7518059 (= e!4482015 tp_is_empty!49843)))

(declare-fun b!7518061 () Bool)

(declare-fun tp!2182638 () Bool)

(assert (=> b!7518061 (= e!4482015 tp!2182638)))

(declare-fun b!7518060 () Bool)

(declare-fun tp!2182640 () Bool)

(declare-fun tp!2182637 () Bool)

(assert (=> b!7518060 (= e!4482015 (and tp!2182640 tp!2182637))))

(assert (=> b!7516988 (= tp!2182244 e!4482015)))

(assert (= (and b!7516988 (is-ElementMatch!19756 (reg!20085 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518059))

(assert (= (and b!7516988 (is-Concat!28601 (reg!20085 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518060))

(assert (= (and b!7516988 (is-Star!19756 (reg!20085 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518061))

(assert (= (and b!7516988 (is-Union!19756 (reg!20085 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518062))

(declare-fun b!7518066 () Bool)

(declare-fun e!4482016 () Bool)

(declare-fun tp!2182641 () Bool)

(declare-fun tp!2182644 () Bool)

(assert (=> b!7518066 (= e!4482016 (and tp!2182641 tp!2182644))))

(declare-fun b!7518063 () Bool)

(assert (=> b!7518063 (= e!4482016 tp_is_empty!49843)))

(declare-fun b!7518065 () Bool)

(declare-fun tp!2182643 () Bool)

(assert (=> b!7518065 (= e!4482016 tp!2182643)))

(declare-fun b!7518064 () Bool)

(declare-fun tp!2182645 () Bool)

(declare-fun tp!2182642 () Bool)

(assert (=> b!7518064 (= e!4482016 (and tp!2182645 tp!2182642))))

(assert (=> b!7516979 (= tp!2182236 e!4482016)))

(assert (= (and b!7516979 (is-ElementMatch!19756 (regOne!40024 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518063))

(assert (= (and b!7516979 (is-Concat!28601 (regOne!40024 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518064))

(assert (= (and b!7516979 (is-Star!19756 (regOne!40024 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518065))

(assert (= (and b!7516979 (is-Union!19756 (regOne!40024 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518066))

(declare-fun b!7518070 () Bool)

(declare-fun e!4482017 () Bool)

(declare-fun tp!2182646 () Bool)

(declare-fun tp!2182649 () Bool)

(assert (=> b!7518070 (= e!4482017 (and tp!2182646 tp!2182649))))

(declare-fun b!7518067 () Bool)

(assert (=> b!7518067 (= e!4482017 tp_is_empty!49843)))

(declare-fun b!7518069 () Bool)

(declare-fun tp!2182648 () Bool)

(assert (=> b!7518069 (= e!4482017 tp!2182648)))

(declare-fun b!7518068 () Bool)

(declare-fun tp!2182650 () Bool)

(declare-fun tp!2182647 () Bool)

(assert (=> b!7518068 (= e!4482017 (and tp!2182650 tp!2182647))))

(assert (=> b!7516979 (= tp!2182233 e!4482017)))

(assert (= (and b!7516979 (is-ElementMatch!19756 (regTwo!40024 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518067))

(assert (= (and b!7516979 (is-Concat!28601 (regTwo!40024 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518068))

(assert (= (and b!7516979 (is-Star!19756 (regTwo!40024 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518069))

(assert (= (and b!7516979 (is-Union!19756 (regTwo!40024 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518070))

(declare-fun b!7518074 () Bool)

(declare-fun e!4482018 () Bool)

(declare-fun tp!2182651 () Bool)

(declare-fun tp!2182654 () Bool)

(assert (=> b!7518074 (= e!4482018 (and tp!2182651 tp!2182654))))

(declare-fun b!7518071 () Bool)

(assert (=> b!7518071 (= e!4482018 tp_is_empty!49843)))

(declare-fun b!7518073 () Bool)

(declare-fun tp!2182653 () Bool)

(assert (=> b!7518073 (= e!4482018 tp!2182653)))

(declare-fun b!7518072 () Bool)

(declare-fun tp!2182655 () Bool)

(declare-fun tp!2182652 () Bool)

(assert (=> b!7518072 (= e!4482018 (and tp!2182655 tp!2182652))))

(assert (=> b!7517082 (= tp!2182359 e!4482018)))

(assert (= (and b!7517082 (is-ElementMatch!19756 (regOne!40025 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518071))

(assert (= (and b!7517082 (is-Concat!28601 (regOne!40025 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518072))

(assert (= (and b!7517082 (is-Star!19756 (regOne!40025 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518073))

(assert (= (and b!7517082 (is-Union!19756 (regOne!40025 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518074))

(declare-fun b!7518078 () Bool)

(declare-fun e!4482019 () Bool)

(declare-fun tp!2182656 () Bool)

(declare-fun tp!2182659 () Bool)

(assert (=> b!7518078 (= e!4482019 (and tp!2182656 tp!2182659))))

(declare-fun b!7518075 () Bool)

(assert (=> b!7518075 (= e!4482019 tp_is_empty!49843)))

(declare-fun b!7518077 () Bool)

(declare-fun tp!2182658 () Bool)

(assert (=> b!7518077 (= e!4482019 tp!2182658)))

(declare-fun b!7518076 () Bool)

(declare-fun tp!2182660 () Bool)

(declare-fun tp!2182657 () Bool)

(assert (=> b!7518076 (= e!4482019 (and tp!2182660 tp!2182657))))

(assert (=> b!7517082 (= tp!2182362 e!4482019)))

(assert (= (and b!7517082 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518075))

(assert (= (and b!7517082 (is-Concat!28601 (regTwo!40025 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518076))

(assert (= (and b!7517082 (is-Star!19756 (regTwo!40025 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518077))

(assert (= (and b!7517082 (is-Union!19756 (regTwo!40025 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518078))

(declare-fun b!7518082 () Bool)

(declare-fun e!4482020 () Bool)

(declare-fun tp!2182661 () Bool)

(declare-fun tp!2182664 () Bool)

(assert (=> b!7518082 (= e!4482020 (and tp!2182661 tp!2182664))))

(declare-fun b!7518079 () Bool)

(assert (=> b!7518079 (= e!4482020 tp_is_empty!49843)))

(declare-fun b!7518081 () Bool)

(declare-fun tp!2182663 () Bool)

(assert (=> b!7518081 (= e!4482020 tp!2182663)))

(declare-fun b!7518080 () Bool)

(declare-fun tp!2182665 () Bool)

(declare-fun tp!2182662 () Bool)

(assert (=> b!7518080 (= e!4482020 (and tp!2182665 tp!2182662))))

(assert (=> b!7517049 (= tp!2182317 e!4482020)))

(assert (= (and b!7517049 (is-ElementMatch!19756 (regOne!40025 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518079))

(assert (= (and b!7517049 (is-Concat!28601 (regOne!40025 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518080))

(assert (= (and b!7517049 (is-Star!19756 (regOne!40025 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518081))

(assert (= (and b!7517049 (is-Union!19756 (regOne!40025 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518082))

(declare-fun b!7518086 () Bool)

(declare-fun e!4482021 () Bool)

(declare-fun tp!2182666 () Bool)

(declare-fun tp!2182669 () Bool)

(assert (=> b!7518086 (= e!4482021 (and tp!2182666 tp!2182669))))

(declare-fun b!7518083 () Bool)

(assert (=> b!7518083 (= e!4482021 tp_is_empty!49843)))

(declare-fun b!7518085 () Bool)

(declare-fun tp!2182668 () Bool)

(assert (=> b!7518085 (= e!4482021 tp!2182668)))

(declare-fun b!7518084 () Bool)

(declare-fun tp!2182670 () Bool)

(declare-fun tp!2182667 () Bool)

(assert (=> b!7518084 (= e!4482021 (and tp!2182670 tp!2182667))))

(assert (=> b!7517049 (= tp!2182320 e!4482021)))

(assert (= (and b!7517049 (is-ElementMatch!19756 (regTwo!40025 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518083))

(assert (= (and b!7517049 (is-Concat!28601 (regTwo!40025 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518084))

(assert (= (and b!7517049 (is-Star!19756 (regTwo!40025 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518085))

(assert (= (and b!7517049 (is-Union!19756 (regTwo!40025 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518086))

(declare-fun b!7518090 () Bool)

(declare-fun e!4482022 () Bool)

(declare-fun tp!2182671 () Bool)

(declare-fun tp!2182674 () Bool)

(assert (=> b!7518090 (= e!4482022 (and tp!2182671 tp!2182674))))

(declare-fun b!7518087 () Bool)

(assert (=> b!7518087 (= e!4482022 tp_is_empty!49843)))

(declare-fun b!7518089 () Bool)

(declare-fun tp!2182673 () Bool)

(assert (=> b!7518089 (= e!4482022 tp!2182673)))

(declare-fun b!7518088 () Bool)

(declare-fun tp!2182675 () Bool)

(declare-fun tp!2182672 () Bool)

(assert (=> b!7518088 (= e!4482022 (and tp!2182675 tp!2182672))))

(assert (=> b!7517040 (= tp!2182309 e!4482022)))

(assert (= (and b!7517040 (is-ElementMatch!19756 (reg!20085 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518087))

(assert (= (and b!7517040 (is-Concat!28601 (reg!20085 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518088))

(assert (= (and b!7517040 (is-Star!19756 (reg!20085 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518089))

(assert (= (and b!7517040 (is-Union!19756 (reg!20085 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518090))

(declare-fun b!7518094 () Bool)

(declare-fun e!4482023 () Bool)

(declare-fun tp!2182676 () Bool)

(declare-fun tp!2182679 () Bool)

(assert (=> b!7518094 (= e!4482023 (and tp!2182676 tp!2182679))))

(declare-fun b!7518091 () Bool)

(assert (=> b!7518091 (= e!4482023 tp_is_empty!49843)))

(declare-fun b!7518093 () Bool)

(declare-fun tp!2182678 () Bool)

(assert (=> b!7518093 (= e!4482023 tp!2182678)))

(declare-fun b!7518092 () Bool)

(declare-fun tp!2182680 () Bool)

(declare-fun tp!2182677 () Bool)

(assert (=> b!7518092 (= e!4482023 (and tp!2182680 tp!2182677))))

(assert (=> b!7516981 (= tp!2182232 e!4482023)))

(assert (= (and b!7516981 (is-ElementMatch!19756 (regOne!40025 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518091))

(assert (= (and b!7516981 (is-Concat!28601 (regOne!40025 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518092))

(assert (= (and b!7516981 (is-Star!19756 (regOne!40025 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518093))

(assert (= (and b!7516981 (is-Union!19756 (regOne!40025 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518094))

(declare-fun b!7518098 () Bool)

(declare-fun e!4482024 () Bool)

(declare-fun tp!2182681 () Bool)

(declare-fun tp!2182684 () Bool)

(assert (=> b!7518098 (= e!4482024 (and tp!2182681 tp!2182684))))

(declare-fun b!7518095 () Bool)

(assert (=> b!7518095 (= e!4482024 tp_is_empty!49843)))

(declare-fun b!7518097 () Bool)

(declare-fun tp!2182683 () Bool)

(assert (=> b!7518097 (= e!4482024 tp!2182683)))

(declare-fun b!7518096 () Bool)

(declare-fun tp!2182685 () Bool)

(declare-fun tp!2182682 () Bool)

(assert (=> b!7518096 (= e!4482024 (and tp!2182685 tp!2182682))))

(assert (=> b!7516981 (= tp!2182235 e!4482024)))

(assert (= (and b!7516981 (is-ElementMatch!19756 (regTwo!40025 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518095))

(assert (= (and b!7516981 (is-Concat!28601 (regTwo!40025 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518096))

(assert (= (and b!7516981 (is-Star!19756 (regTwo!40025 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518097))

(assert (= (and b!7516981 (is-Union!19756 (regTwo!40025 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518098))

(declare-fun b!7518102 () Bool)

(declare-fun e!4482025 () Bool)

(declare-fun tp!2182686 () Bool)

(declare-fun tp!2182689 () Bool)

(assert (=> b!7518102 (= e!4482025 (and tp!2182686 tp!2182689))))

(declare-fun b!7518099 () Bool)

(assert (=> b!7518099 (= e!4482025 tp_is_empty!49843)))

(declare-fun b!7518101 () Bool)

(declare-fun tp!2182688 () Bool)

(assert (=> b!7518101 (= e!4482025 tp!2182688)))

(declare-fun b!7518100 () Bool)

(declare-fun tp!2182690 () Bool)

(declare-fun tp!2182687 () Bool)

(assert (=> b!7518100 (= e!4482025 (and tp!2182690 tp!2182687))))

(assert (=> b!7517031 (= tp!2182301 e!4482025)))

(assert (= (and b!7517031 (is-ElementMatch!19756 (regOne!40024 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518099))

(assert (= (and b!7517031 (is-Concat!28601 (regOne!40024 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518100))

(assert (= (and b!7517031 (is-Star!19756 (regOne!40024 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518101))

(assert (= (and b!7517031 (is-Union!19756 (regOne!40024 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518102))

(declare-fun b!7518106 () Bool)

(declare-fun e!4482026 () Bool)

(declare-fun tp!2182691 () Bool)

(declare-fun tp!2182694 () Bool)

(assert (=> b!7518106 (= e!4482026 (and tp!2182691 tp!2182694))))

(declare-fun b!7518103 () Bool)

(assert (=> b!7518103 (= e!4482026 tp_is_empty!49843)))

(declare-fun b!7518105 () Bool)

(declare-fun tp!2182693 () Bool)

(assert (=> b!7518105 (= e!4482026 tp!2182693)))

(declare-fun b!7518104 () Bool)

(declare-fun tp!2182695 () Bool)

(declare-fun tp!2182692 () Bool)

(assert (=> b!7518104 (= e!4482026 (and tp!2182695 tp!2182692))))

(assert (=> b!7517031 (= tp!2182298 e!4482026)))

(assert (= (and b!7517031 (is-ElementMatch!19756 (regTwo!40024 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518103))

(assert (= (and b!7517031 (is-Concat!28601 (regTwo!40024 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518104))

(assert (= (and b!7517031 (is-Star!19756 (regTwo!40024 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518105))

(assert (= (and b!7517031 (is-Union!19756 (regTwo!40024 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518106))

(declare-fun b!7518110 () Bool)

(declare-fun e!4482027 () Bool)

(declare-fun tp!2182696 () Bool)

(declare-fun tp!2182699 () Bool)

(assert (=> b!7518110 (= e!4482027 (and tp!2182696 tp!2182699))))

(declare-fun b!7518107 () Bool)

(assert (=> b!7518107 (= e!4482027 tp_is_empty!49843)))

(declare-fun b!7518109 () Bool)

(declare-fun tp!2182698 () Bool)

(assert (=> b!7518109 (= e!4482027 tp!2182698)))

(declare-fun b!7518108 () Bool)

(declare-fun tp!2182700 () Bool)

(declare-fun tp!2182697 () Bool)

(assert (=> b!7518108 (= e!4482027 (and tp!2182700 tp!2182697))))

(assert (=> b!7516972 (= tp!2182224 e!4482027)))

(assert (= (and b!7516972 (is-ElementMatch!19756 (reg!20085 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518107))

(assert (= (and b!7516972 (is-Concat!28601 (reg!20085 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518108))

(assert (= (and b!7516972 (is-Star!19756 (reg!20085 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518109))

(assert (= (and b!7516972 (is-Union!19756 (reg!20085 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518110))

(declare-fun b!7518114 () Bool)

(declare-fun e!4482028 () Bool)

(declare-fun tp!2182701 () Bool)

(declare-fun tp!2182704 () Bool)

(assert (=> b!7518114 (= e!4482028 (and tp!2182701 tp!2182704))))

(declare-fun b!7518111 () Bool)

(assert (=> b!7518111 (= e!4482028 tp_is_empty!49843)))

(declare-fun b!7518113 () Bool)

(declare-fun tp!2182703 () Bool)

(assert (=> b!7518113 (= e!4482028 tp!2182703)))

(declare-fun b!7518112 () Bool)

(declare-fun tp!2182705 () Bool)

(declare-fun tp!2182702 () Bool)

(assert (=> b!7518112 (= e!4482028 (and tp!2182705 tp!2182702))))

(assert (=> b!7516963 (= tp!2182216 e!4482028)))

(assert (= (and b!7516963 (is-ElementMatch!19756 (regOne!40024 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518111))

(assert (= (and b!7516963 (is-Concat!28601 (regOne!40024 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518112))

(assert (= (and b!7516963 (is-Star!19756 (regOne!40024 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518113))

(assert (= (and b!7516963 (is-Union!19756 (regOne!40024 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518114))

(declare-fun b!7518118 () Bool)

(declare-fun e!4482029 () Bool)

(declare-fun tp!2182706 () Bool)

(declare-fun tp!2182709 () Bool)

(assert (=> b!7518118 (= e!4482029 (and tp!2182706 tp!2182709))))

(declare-fun b!7518115 () Bool)

(assert (=> b!7518115 (= e!4482029 tp_is_empty!49843)))

(declare-fun b!7518117 () Bool)

(declare-fun tp!2182708 () Bool)

(assert (=> b!7518117 (= e!4482029 tp!2182708)))

(declare-fun b!7518116 () Bool)

(declare-fun tp!2182710 () Bool)

(declare-fun tp!2182707 () Bool)

(assert (=> b!7518116 (= e!4482029 (and tp!2182710 tp!2182707))))

(assert (=> b!7516963 (= tp!2182213 e!4482029)))

(assert (= (and b!7516963 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518115))

(assert (= (and b!7516963 (is-Concat!28601 (regTwo!40024 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518116))

(assert (= (and b!7516963 (is-Star!19756 (regTwo!40024 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518117))

(assert (= (and b!7516963 (is-Union!19756 (regTwo!40024 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518118))

(declare-fun b!7518122 () Bool)

(declare-fun e!4482030 () Bool)

(declare-fun tp!2182711 () Bool)

(declare-fun tp!2182714 () Bool)

(assert (=> b!7518122 (= e!4482030 (and tp!2182711 tp!2182714))))

(declare-fun b!7518119 () Bool)

(assert (=> b!7518119 (= e!4482030 tp_is_empty!49843)))

(declare-fun b!7518121 () Bool)

(declare-fun tp!2182713 () Bool)

(assert (=> b!7518121 (= e!4482030 tp!2182713)))

(declare-fun b!7518120 () Bool)

(declare-fun tp!2182715 () Bool)

(declare-fun tp!2182712 () Bool)

(assert (=> b!7518120 (= e!4482030 (and tp!2182715 tp!2182712))))

(assert (=> b!7517029 (= tp!2182292 e!4482030)))

(assert (= (and b!7517029 (is-ElementMatch!19756 (regOne!40025 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518119))

(assert (= (and b!7517029 (is-Concat!28601 (regOne!40025 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518120))

(assert (= (and b!7517029 (is-Star!19756 (regOne!40025 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518121))

(assert (= (and b!7517029 (is-Union!19756 (regOne!40025 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518122))

(declare-fun b!7518126 () Bool)

(declare-fun e!4482031 () Bool)

(declare-fun tp!2182716 () Bool)

(declare-fun tp!2182719 () Bool)

(assert (=> b!7518126 (= e!4482031 (and tp!2182716 tp!2182719))))

(declare-fun b!7518123 () Bool)

(assert (=> b!7518123 (= e!4482031 tp_is_empty!49843)))

(declare-fun b!7518125 () Bool)

(declare-fun tp!2182718 () Bool)

(assert (=> b!7518125 (= e!4482031 tp!2182718)))

(declare-fun b!7518124 () Bool)

(declare-fun tp!2182720 () Bool)

(declare-fun tp!2182717 () Bool)

(assert (=> b!7518124 (= e!4482031 (and tp!2182720 tp!2182717))))

(assert (=> b!7517029 (= tp!2182295 e!4482031)))

(assert (= (and b!7517029 (is-ElementMatch!19756 (regTwo!40025 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518123))

(assert (= (and b!7517029 (is-Concat!28601 (regTwo!40025 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518124))

(assert (= (and b!7517029 (is-Star!19756 (regTwo!40025 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518125))

(assert (= (and b!7517029 (is-Union!19756 (regTwo!40025 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518126))

(declare-fun b!7518130 () Bool)

(declare-fun e!4482032 () Bool)

(declare-fun tp!2182721 () Bool)

(declare-fun tp!2182724 () Bool)

(assert (=> b!7518130 (= e!4482032 (and tp!2182721 tp!2182724))))

(declare-fun b!7518127 () Bool)

(assert (=> b!7518127 (= e!4482032 tp_is_empty!49843)))

(declare-fun b!7518129 () Bool)

(declare-fun tp!2182723 () Bool)

(assert (=> b!7518129 (= e!4482032 tp!2182723)))

(declare-fun b!7518128 () Bool)

(declare-fun tp!2182725 () Bool)

(declare-fun tp!2182722 () Bool)

(assert (=> b!7518128 (= e!4482032 (and tp!2182725 tp!2182722))))

(assert (=> b!7517020 (= tp!2182284 e!4482032)))

(assert (= (and b!7517020 (is-ElementMatch!19756 (reg!20085 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518127))

(assert (= (and b!7517020 (is-Concat!28601 (reg!20085 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518128))

(assert (= (and b!7517020 (is-Star!19756 (reg!20085 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518129))

(assert (= (and b!7517020 (is-Union!19756 (reg!20085 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518130))

(declare-fun b!7518134 () Bool)

(declare-fun e!4482033 () Bool)

(declare-fun tp!2182726 () Bool)

(declare-fun tp!2182729 () Bool)

(assert (=> b!7518134 (= e!4482033 (and tp!2182726 tp!2182729))))

(declare-fun b!7518131 () Bool)

(assert (=> b!7518131 (= e!4482033 tp_is_empty!49843)))

(declare-fun b!7518133 () Bool)

(declare-fun tp!2182728 () Bool)

(assert (=> b!7518133 (= e!4482033 tp!2182728)))

(declare-fun b!7518132 () Bool)

(declare-fun tp!2182730 () Bool)

(declare-fun tp!2182727 () Bool)

(assert (=> b!7518132 (= e!4482033 (and tp!2182730 tp!2182727))))

(assert (=> b!7516961 (= tp!2182207 e!4482033)))

(assert (= (and b!7516961 (is-ElementMatch!19756 (regOne!40025 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518131))

(assert (= (and b!7516961 (is-Concat!28601 (regOne!40025 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518132))

(assert (= (and b!7516961 (is-Star!19756 (regOne!40025 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518133))

(assert (= (and b!7516961 (is-Union!19756 (regOne!40025 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518134))

(declare-fun b!7518138 () Bool)

(declare-fun e!4482034 () Bool)

(declare-fun tp!2182731 () Bool)

(declare-fun tp!2182734 () Bool)

(assert (=> b!7518138 (= e!4482034 (and tp!2182731 tp!2182734))))

(declare-fun b!7518135 () Bool)

(assert (=> b!7518135 (= e!4482034 tp_is_empty!49843)))

(declare-fun b!7518137 () Bool)

(declare-fun tp!2182733 () Bool)

(assert (=> b!7518137 (= e!4482034 tp!2182733)))

(declare-fun b!7518136 () Bool)

(declare-fun tp!2182735 () Bool)

(declare-fun tp!2182732 () Bool)

(assert (=> b!7518136 (= e!4482034 (and tp!2182735 tp!2182732))))

(assert (=> b!7516961 (= tp!2182210 e!4482034)))

(assert (= (and b!7516961 (is-ElementMatch!19756 (regTwo!40025 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518135))

(assert (= (and b!7516961 (is-Concat!28601 (regTwo!40025 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518136))

(assert (= (and b!7516961 (is-Star!19756 (regTwo!40025 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518137))

(assert (= (and b!7516961 (is-Union!19756 (regTwo!40025 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518138))

(declare-fun b!7518142 () Bool)

(declare-fun e!4482035 () Bool)

(declare-fun tp!2182736 () Bool)

(declare-fun tp!2182739 () Bool)

(assert (=> b!7518142 (= e!4482035 (and tp!2182736 tp!2182739))))

(declare-fun b!7518139 () Bool)

(assert (=> b!7518139 (= e!4482035 tp_is_empty!49843)))

(declare-fun b!7518141 () Bool)

(declare-fun tp!2182738 () Bool)

(assert (=> b!7518141 (= e!4482035 tp!2182738)))

(declare-fun b!7518140 () Bool)

(declare-fun tp!2182740 () Bool)

(declare-fun tp!2182737 () Bool)

(assert (=> b!7518140 (= e!4482035 (and tp!2182740 tp!2182737))))

(assert (=> b!7517011 (= tp!2182276 e!4482035)))

(assert (= (and b!7517011 (is-ElementMatch!19756 (regOne!40024 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518139))

(assert (= (and b!7517011 (is-Concat!28601 (regOne!40024 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518140))

(assert (= (and b!7517011 (is-Star!19756 (regOne!40024 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518141))

(assert (= (and b!7517011 (is-Union!19756 (regOne!40024 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518142))

(declare-fun b!7518146 () Bool)

(declare-fun e!4482036 () Bool)

(declare-fun tp!2182741 () Bool)

(declare-fun tp!2182744 () Bool)

(assert (=> b!7518146 (= e!4482036 (and tp!2182741 tp!2182744))))

(declare-fun b!7518143 () Bool)

(assert (=> b!7518143 (= e!4482036 tp_is_empty!49843)))

(declare-fun b!7518145 () Bool)

(declare-fun tp!2182743 () Bool)

(assert (=> b!7518145 (= e!4482036 tp!2182743)))

(declare-fun b!7518144 () Bool)

(declare-fun tp!2182745 () Bool)

(declare-fun tp!2182742 () Bool)

(assert (=> b!7518144 (= e!4482036 (and tp!2182745 tp!2182742))))

(assert (=> b!7517011 (= tp!2182273 e!4482036)))

(assert (= (and b!7517011 (is-ElementMatch!19756 (regTwo!40024 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518143))

(assert (= (and b!7517011 (is-Concat!28601 (regTwo!40024 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518144))

(assert (= (and b!7517011 (is-Star!19756 (regTwo!40024 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518145))

(assert (= (and b!7517011 (is-Union!19756 (regTwo!40024 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518146))

(declare-fun b!7518150 () Bool)

(declare-fun e!4482037 () Bool)

(declare-fun tp!2182746 () Bool)

(declare-fun tp!2182749 () Bool)

(assert (=> b!7518150 (= e!4482037 (and tp!2182746 tp!2182749))))

(declare-fun b!7518147 () Bool)

(assert (=> b!7518147 (= e!4482037 tp_is_empty!49843)))

(declare-fun b!7518149 () Bool)

(declare-fun tp!2182748 () Bool)

(assert (=> b!7518149 (= e!4482037 tp!2182748)))

(declare-fun b!7518148 () Bool)

(declare-fun tp!2182750 () Bool)

(declare-fun tp!2182747 () Bool)

(assert (=> b!7518148 (= e!4482037 (and tp!2182750 tp!2182747))))

(assert (=> b!7517072 (= tp!2182349 e!4482037)))

(assert (= (and b!7517072 (is-ElementMatch!19756 (reg!20085 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518147))

(assert (= (and b!7517072 (is-Concat!28601 (reg!20085 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518148))

(assert (= (and b!7517072 (is-Star!19756 (reg!20085 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518149))

(assert (= (and b!7517072 (is-Union!19756 (reg!20085 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518150))

(declare-fun b!7518154 () Bool)

(declare-fun e!4482038 () Bool)

(declare-fun tp!2182751 () Bool)

(declare-fun tp!2182754 () Bool)

(assert (=> b!7518154 (= e!4482038 (and tp!2182751 tp!2182754))))

(declare-fun b!7518151 () Bool)

(assert (=> b!7518151 (= e!4482038 tp_is_empty!49843)))

(declare-fun b!7518153 () Bool)

(declare-fun tp!2182753 () Bool)

(assert (=> b!7518153 (= e!4482038 tp!2182753)))

(declare-fun b!7518152 () Bool)

(declare-fun tp!2182755 () Bool)

(declare-fun tp!2182752 () Bool)

(assert (=> b!7518152 (= e!4482038 (and tp!2182755 tp!2182752))))

(assert (=> b!7517013 (= tp!2182272 e!4482038)))

(assert (= (and b!7517013 (is-ElementMatch!19756 (regOne!40025 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518151))

(assert (= (and b!7517013 (is-Concat!28601 (regOne!40025 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518152))

(assert (= (and b!7517013 (is-Star!19756 (regOne!40025 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518153))

(assert (= (and b!7517013 (is-Union!19756 (regOne!40025 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518154))

(declare-fun b!7518158 () Bool)

(declare-fun e!4482039 () Bool)

(declare-fun tp!2182756 () Bool)

(declare-fun tp!2182759 () Bool)

(assert (=> b!7518158 (= e!4482039 (and tp!2182756 tp!2182759))))

(declare-fun b!7518155 () Bool)

(assert (=> b!7518155 (= e!4482039 tp_is_empty!49843)))

(declare-fun b!7518157 () Bool)

(declare-fun tp!2182758 () Bool)

(assert (=> b!7518157 (= e!4482039 tp!2182758)))

(declare-fun b!7518156 () Bool)

(declare-fun tp!2182760 () Bool)

(declare-fun tp!2182757 () Bool)

(assert (=> b!7518156 (= e!4482039 (and tp!2182760 tp!2182757))))

(assert (=> b!7517013 (= tp!2182275 e!4482039)))

(assert (= (and b!7517013 (is-ElementMatch!19756 (regTwo!40025 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518155))

(assert (= (and b!7517013 (is-Concat!28601 (regTwo!40025 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518156))

(assert (= (and b!7517013 (is-Star!19756 (regTwo!40025 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518157))

(assert (= (and b!7517013 (is-Union!19756 (regTwo!40025 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518158))

(declare-fun b!7518162 () Bool)

(declare-fun e!4482040 () Bool)

(declare-fun tp!2182761 () Bool)

(declare-fun tp!2182764 () Bool)

(assert (=> b!7518162 (= e!4482040 (and tp!2182761 tp!2182764))))

(declare-fun b!7518159 () Bool)

(assert (=> b!7518159 (= e!4482040 tp_is_empty!49843)))

(declare-fun b!7518161 () Bool)

(declare-fun tp!2182763 () Bool)

(assert (=> b!7518161 (= e!4482040 tp!2182763)))

(declare-fun b!7518160 () Bool)

(declare-fun tp!2182765 () Bool)

(declare-fun tp!2182762 () Bool)

(assert (=> b!7518160 (= e!4482040 (and tp!2182765 tp!2182762))))

(assert (=> b!7517063 (= tp!2182341 e!4482040)))

(assert (= (and b!7517063 (is-ElementMatch!19756 (regOne!40024 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518159))

(assert (= (and b!7517063 (is-Concat!28601 (regOne!40024 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518160))

(assert (= (and b!7517063 (is-Star!19756 (regOne!40024 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518161))

(assert (= (and b!7517063 (is-Union!19756 (regOne!40024 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518162))

(declare-fun b!7518166 () Bool)

(declare-fun e!4482041 () Bool)

(declare-fun tp!2182766 () Bool)

(declare-fun tp!2182769 () Bool)

(assert (=> b!7518166 (= e!4482041 (and tp!2182766 tp!2182769))))

(declare-fun b!7518163 () Bool)

(assert (=> b!7518163 (= e!4482041 tp_is_empty!49843)))

(declare-fun b!7518165 () Bool)

(declare-fun tp!2182768 () Bool)

(assert (=> b!7518165 (= e!4482041 tp!2182768)))

(declare-fun b!7518164 () Bool)

(declare-fun tp!2182770 () Bool)

(declare-fun tp!2182767 () Bool)

(assert (=> b!7518164 (= e!4482041 (and tp!2182770 tp!2182767))))

(assert (=> b!7517063 (= tp!2182338 e!4482041)))

(assert (= (and b!7517063 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518163))

(assert (= (and b!7517063 (is-Concat!28601 (regTwo!40024 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518164))

(assert (= (and b!7517063 (is-Star!19756 (regTwo!40024 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518165))

(assert (= (and b!7517063 (is-Union!19756 (regTwo!40024 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518166))

(declare-fun b!7518170 () Bool)

(declare-fun e!4482042 () Bool)

(declare-fun tp!2182771 () Bool)

(declare-fun tp!2182774 () Bool)

(assert (=> b!7518170 (= e!4482042 (and tp!2182771 tp!2182774))))

(declare-fun b!7518167 () Bool)

(assert (=> b!7518167 (= e!4482042 tp_is_empty!49843)))

(declare-fun b!7518169 () Bool)

(declare-fun tp!2182773 () Bool)

(assert (=> b!7518169 (= e!4482042 tp!2182773)))

(declare-fun b!7518168 () Bool)

(declare-fun tp!2182775 () Bool)

(declare-fun tp!2182772 () Bool)

(assert (=> b!7518168 (= e!4482042 (and tp!2182775 tp!2182772))))

(assert (=> b!7517004 (= tp!2182264 e!4482042)))

(assert (= (and b!7517004 (is-ElementMatch!19756 (reg!20085 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518167))

(assert (= (and b!7517004 (is-Concat!28601 (reg!20085 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518168))

(assert (= (and b!7517004 (is-Star!19756 (reg!20085 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518169))

(assert (= (and b!7517004 (is-Union!19756 (reg!20085 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518170))

(declare-fun b!7518174 () Bool)

(declare-fun e!4482043 () Bool)

(declare-fun tp!2182776 () Bool)

(declare-fun tp!2182779 () Bool)

(assert (=> b!7518174 (= e!4482043 (and tp!2182776 tp!2182779))))

(declare-fun b!7518171 () Bool)

(assert (=> b!7518171 (= e!4482043 tp_is_empty!49843)))

(declare-fun b!7518173 () Bool)

(declare-fun tp!2182778 () Bool)

(assert (=> b!7518173 (= e!4482043 tp!2182778)))

(declare-fun b!7518172 () Bool)

(declare-fun tp!2182780 () Bool)

(declare-fun tp!2182777 () Bool)

(assert (=> b!7518172 (= e!4482043 (and tp!2182780 tp!2182777))))

(assert (=> b!7516995 (= tp!2182256 e!4482043)))

(assert (= (and b!7516995 (is-ElementMatch!19756 (regOne!40024 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518171))

(assert (= (and b!7516995 (is-Concat!28601 (regOne!40024 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518172))

(assert (= (and b!7516995 (is-Star!19756 (regOne!40024 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518173))

(assert (= (and b!7516995 (is-Union!19756 (regOne!40024 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518174))

(declare-fun b!7518178 () Bool)

(declare-fun e!4482044 () Bool)

(declare-fun tp!2182781 () Bool)

(declare-fun tp!2182784 () Bool)

(assert (=> b!7518178 (= e!4482044 (and tp!2182781 tp!2182784))))

(declare-fun b!7518175 () Bool)

(assert (=> b!7518175 (= e!4482044 tp_is_empty!49843)))

(declare-fun b!7518177 () Bool)

(declare-fun tp!2182783 () Bool)

(assert (=> b!7518177 (= e!4482044 tp!2182783)))

(declare-fun b!7518176 () Bool)

(declare-fun tp!2182785 () Bool)

(declare-fun tp!2182782 () Bool)

(assert (=> b!7518176 (= e!4482044 (and tp!2182785 tp!2182782))))

(assert (=> b!7516995 (= tp!2182253 e!4482044)))

(assert (= (and b!7516995 (is-ElementMatch!19756 (regTwo!40024 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518175))

(assert (= (and b!7516995 (is-Concat!28601 (regTwo!40024 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518176))

(assert (= (and b!7516995 (is-Star!19756 (regTwo!40024 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518177))

(assert (= (and b!7516995 (is-Union!19756 (regTwo!40024 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518178))

(declare-fun b!7518182 () Bool)

(declare-fun e!4482045 () Bool)

(declare-fun tp!2182786 () Bool)

(declare-fun tp!2182789 () Bool)

(assert (=> b!7518182 (= e!4482045 (and tp!2182786 tp!2182789))))

(declare-fun b!7518179 () Bool)

(assert (=> b!7518179 (= e!4482045 tp_is_empty!49843)))

(declare-fun b!7518181 () Bool)

(declare-fun tp!2182788 () Bool)

(assert (=> b!7518181 (= e!4482045 tp!2182788)))

(declare-fun b!7518180 () Bool)

(declare-fun tp!2182790 () Bool)

(declare-fun tp!2182787 () Bool)

(assert (=> b!7518180 (= e!4482045 (and tp!2182790 tp!2182787))))

(assert (=> b!7517080 (= tp!2182363 e!4482045)))

(assert (= (and b!7517080 (is-ElementMatch!19756 (regOne!40024 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518179))

(assert (= (and b!7517080 (is-Concat!28601 (regOne!40024 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518180))

(assert (= (and b!7517080 (is-Star!19756 (regOne!40024 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518181))

(assert (= (and b!7517080 (is-Union!19756 (regOne!40024 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518182))

(declare-fun b!7518186 () Bool)

(declare-fun e!4482046 () Bool)

(declare-fun tp!2182791 () Bool)

(declare-fun tp!2182794 () Bool)

(assert (=> b!7518186 (= e!4482046 (and tp!2182791 tp!2182794))))

(declare-fun b!7518183 () Bool)

(assert (=> b!7518183 (= e!4482046 tp_is_empty!49843)))

(declare-fun b!7518185 () Bool)

(declare-fun tp!2182793 () Bool)

(assert (=> b!7518185 (= e!4482046 tp!2182793)))

(declare-fun b!7518184 () Bool)

(declare-fun tp!2182795 () Bool)

(declare-fun tp!2182792 () Bool)

(assert (=> b!7518184 (= e!4482046 (and tp!2182795 tp!2182792))))

(assert (=> b!7517080 (= tp!2182360 e!4482046)))

(assert (= (and b!7517080 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518183))

(assert (= (and b!7517080 (is-Concat!28601 (regTwo!40024 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518184))

(assert (= (and b!7517080 (is-Star!19756 (regTwo!40024 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518185))

(assert (= (and b!7517080 (is-Union!19756 (regTwo!40024 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518186))

(declare-fun b!7518190 () Bool)

(declare-fun e!4482047 () Bool)

(declare-fun tp!2182796 () Bool)

(declare-fun tp!2182799 () Bool)

(assert (=> b!7518190 (= e!4482047 (and tp!2182796 tp!2182799))))

(declare-fun b!7518187 () Bool)

(assert (=> b!7518187 (= e!4482047 tp_is_empty!49843)))

(declare-fun b!7518189 () Bool)

(declare-fun tp!2182798 () Bool)

(assert (=> b!7518189 (= e!4482047 tp!2182798)))

(declare-fun b!7518188 () Bool)

(declare-fun tp!2182800 () Bool)

(declare-fun tp!2182797 () Bool)

(assert (=> b!7518188 (= e!4482047 (and tp!2182800 tp!2182797))))

(assert (=> b!7517076 (= tp!2182358 e!4482047)))

(assert (= (and b!7517076 (is-ElementMatch!19756 (regOne!40024 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518187))

(assert (= (and b!7517076 (is-Concat!28601 (regOne!40024 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518188))

(assert (= (and b!7517076 (is-Star!19756 (regOne!40024 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518189))

(assert (= (and b!7517076 (is-Union!19756 (regOne!40024 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518190))

(declare-fun b!7518194 () Bool)

(declare-fun e!4482048 () Bool)

(declare-fun tp!2182801 () Bool)

(declare-fun tp!2182804 () Bool)

(assert (=> b!7518194 (= e!4482048 (and tp!2182801 tp!2182804))))

(declare-fun b!7518191 () Bool)

(assert (=> b!7518191 (= e!4482048 tp_is_empty!49843)))

(declare-fun b!7518193 () Bool)

(declare-fun tp!2182803 () Bool)

(assert (=> b!7518193 (= e!4482048 tp!2182803)))

(declare-fun b!7518192 () Bool)

(declare-fun tp!2182805 () Bool)

(declare-fun tp!2182802 () Bool)

(assert (=> b!7518192 (= e!4482048 (and tp!2182805 tp!2182802))))

(assert (=> b!7517076 (= tp!2182355 e!4482048)))

(assert (= (and b!7517076 (is-ElementMatch!19756 (regTwo!40024 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518191))

(assert (= (and b!7517076 (is-Concat!28601 (regTwo!40024 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518192))

(assert (= (and b!7517076 (is-Star!19756 (regTwo!40024 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518193))

(assert (= (and b!7517076 (is-Union!19756 (regTwo!40024 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518194))

(declare-fun b!7518198 () Bool)

(declare-fun e!4482049 () Bool)

(declare-fun tp!2182806 () Bool)

(declare-fun tp!2182809 () Bool)

(assert (=> b!7518198 (= e!4482049 (and tp!2182806 tp!2182809))))

(declare-fun b!7518195 () Bool)

(assert (=> b!7518195 (= e!4482049 tp_is_empty!49843)))

(declare-fun b!7518197 () Bool)

(declare-fun tp!2182808 () Bool)

(assert (=> b!7518197 (= e!4482049 tp!2182808)))

(declare-fun b!7518196 () Bool)

(declare-fun tp!2182810 () Bool)

(declare-fun tp!2182807 () Bool)

(assert (=> b!7518196 (= e!4482049 (and tp!2182810 tp!2182807))))

(assert (=> b!7517061 (= tp!2182332 e!4482049)))

(assert (= (and b!7517061 (is-ElementMatch!19756 (regOne!40025 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518195))

(assert (= (and b!7517061 (is-Concat!28601 (regOne!40025 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518196))

(assert (= (and b!7517061 (is-Star!19756 (regOne!40025 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518197))

(assert (= (and b!7517061 (is-Union!19756 (regOne!40025 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518198))

(declare-fun b!7518202 () Bool)

(declare-fun e!4482050 () Bool)

(declare-fun tp!2182811 () Bool)

(declare-fun tp!2182814 () Bool)

(assert (=> b!7518202 (= e!4482050 (and tp!2182811 tp!2182814))))

(declare-fun b!7518199 () Bool)

(assert (=> b!7518199 (= e!4482050 tp_is_empty!49843)))

(declare-fun b!7518201 () Bool)

(declare-fun tp!2182813 () Bool)

(assert (=> b!7518201 (= e!4482050 tp!2182813)))

(declare-fun b!7518200 () Bool)

(declare-fun tp!2182815 () Bool)

(declare-fun tp!2182812 () Bool)

(assert (=> b!7518200 (= e!4482050 (and tp!2182815 tp!2182812))))

(assert (=> b!7517061 (= tp!2182335 e!4482050)))

(assert (= (and b!7517061 (is-ElementMatch!19756 (regTwo!40025 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518199))

(assert (= (and b!7517061 (is-Concat!28601 (regTwo!40025 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518200))

(assert (= (and b!7517061 (is-Star!19756 (regTwo!40025 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518201))

(assert (= (and b!7517061 (is-Union!19756 (regTwo!40025 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518202))

(declare-fun b!7518206 () Bool)

(declare-fun e!4482051 () Bool)

(declare-fun tp!2182816 () Bool)

(declare-fun tp!2182819 () Bool)

(assert (=> b!7518206 (= e!4482051 (and tp!2182816 tp!2182819))))

(declare-fun b!7518203 () Bool)

(assert (=> b!7518203 (= e!4482051 tp_is_empty!49843)))

(declare-fun b!7518205 () Bool)

(declare-fun tp!2182818 () Bool)

(assert (=> b!7518205 (= e!4482051 tp!2182818)))

(declare-fun b!7518204 () Bool)

(declare-fun tp!2182820 () Bool)

(declare-fun tp!2182817 () Bool)

(assert (=> b!7518204 (= e!4482051 (and tp!2182820 tp!2182817))))

(assert (=> b!7517052 (= tp!2182324 e!4482051)))

(assert (= (and b!7517052 (is-ElementMatch!19756 (reg!20085 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518203))

(assert (= (and b!7517052 (is-Concat!28601 (reg!20085 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518204))

(assert (= (and b!7517052 (is-Star!19756 (reg!20085 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518205))

(assert (= (and b!7517052 (is-Union!19756 (reg!20085 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518206))

(declare-fun b!7518210 () Bool)

(declare-fun e!4482052 () Bool)

(declare-fun tp!2182821 () Bool)

(declare-fun tp!2182824 () Bool)

(assert (=> b!7518210 (= e!4482052 (and tp!2182821 tp!2182824))))

(declare-fun b!7518207 () Bool)

(assert (=> b!7518207 (= e!4482052 tp_is_empty!49843)))

(declare-fun b!7518209 () Bool)

(declare-fun tp!2182823 () Bool)

(assert (=> b!7518209 (= e!4482052 tp!2182823)))

(declare-fun b!7518208 () Bool)

(declare-fun tp!2182825 () Bool)

(declare-fun tp!2182822 () Bool)

(assert (=> b!7518208 (= e!4482052 (and tp!2182825 tp!2182822))))

(assert (=> b!7516993 (= tp!2182247 e!4482052)))

(assert (= (and b!7516993 (is-ElementMatch!19756 (regOne!40025 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518207))

(assert (= (and b!7516993 (is-Concat!28601 (regOne!40025 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518208))

(assert (= (and b!7516993 (is-Star!19756 (regOne!40025 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518209))

(assert (= (and b!7516993 (is-Union!19756 (regOne!40025 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518210))

(declare-fun b!7518214 () Bool)

(declare-fun e!4482053 () Bool)

(declare-fun tp!2182826 () Bool)

(declare-fun tp!2182829 () Bool)

(assert (=> b!7518214 (= e!4482053 (and tp!2182826 tp!2182829))))

(declare-fun b!7518211 () Bool)

(assert (=> b!7518211 (= e!4482053 tp_is_empty!49843)))

(declare-fun b!7518213 () Bool)

(declare-fun tp!2182828 () Bool)

(assert (=> b!7518213 (= e!4482053 tp!2182828)))

(declare-fun b!7518212 () Bool)

(declare-fun tp!2182830 () Bool)

(declare-fun tp!2182827 () Bool)

(assert (=> b!7518212 (= e!4482053 (and tp!2182830 tp!2182827))))

(assert (=> b!7516993 (= tp!2182250 e!4482053)))

(assert (= (and b!7516993 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518211))

(assert (= (and b!7516993 (is-Concat!28601 (regTwo!40025 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518212))

(assert (= (and b!7516993 (is-Star!19756 (regTwo!40025 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518213))

(assert (= (and b!7516993 (is-Union!19756 (regTwo!40025 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518214))

(declare-fun b!7518218 () Bool)

(declare-fun e!4482054 () Bool)

(declare-fun tp!2182831 () Bool)

(declare-fun tp!2182834 () Bool)

(assert (=> b!7518218 (= e!4482054 (and tp!2182831 tp!2182834))))

(declare-fun b!7518215 () Bool)

(assert (=> b!7518215 (= e!4482054 tp_is_empty!49843)))

(declare-fun b!7518217 () Bool)

(declare-fun tp!2182833 () Bool)

(assert (=> b!7518217 (= e!4482054 tp!2182833)))

(declare-fun b!7518216 () Bool)

(declare-fun tp!2182835 () Bool)

(declare-fun tp!2182832 () Bool)

(assert (=> b!7518216 (= e!4482054 (and tp!2182835 tp!2182832))))

(assert (=> b!7517043 (= tp!2182316 e!4482054)))

(assert (= (and b!7517043 (is-ElementMatch!19756 (regOne!40024 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518215))

(assert (= (and b!7517043 (is-Concat!28601 (regOne!40024 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518216))

(assert (= (and b!7517043 (is-Star!19756 (regOne!40024 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518217))

(assert (= (and b!7517043 (is-Union!19756 (regOne!40024 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518218))

(declare-fun b!7518222 () Bool)

(declare-fun e!4482055 () Bool)

(declare-fun tp!2182836 () Bool)

(declare-fun tp!2182839 () Bool)

(assert (=> b!7518222 (= e!4482055 (and tp!2182836 tp!2182839))))

(declare-fun b!7518219 () Bool)

(assert (=> b!7518219 (= e!4482055 tp_is_empty!49843)))

(declare-fun b!7518221 () Bool)

(declare-fun tp!2182838 () Bool)

(assert (=> b!7518221 (= e!4482055 tp!2182838)))

(declare-fun b!7518220 () Bool)

(declare-fun tp!2182840 () Bool)

(declare-fun tp!2182837 () Bool)

(assert (=> b!7518220 (= e!4482055 (and tp!2182840 tp!2182837))))

(assert (=> b!7517043 (= tp!2182313 e!4482055)))

(assert (= (and b!7517043 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518219))

(assert (= (and b!7517043 (is-Concat!28601 (regTwo!40024 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518220))

(assert (= (and b!7517043 (is-Star!19756 (regTwo!40024 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518221))

(assert (= (and b!7517043 (is-Union!19756 (regTwo!40024 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518222))

(declare-fun b!7518226 () Bool)

(declare-fun e!4482056 () Bool)

(declare-fun tp!2182841 () Bool)

(declare-fun tp!2182844 () Bool)

(assert (=> b!7518226 (= e!4482056 (and tp!2182841 tp!2182844))))

(declare-fun b!7518223 () Bool)

(assert (=> b!7518223 (= e!4482056 tp_is_empty!49843)))

(declare-fun b!7518225 () Bool)

(declare-fun tp!2182843 () Bool)

(assert (=> b!7518225 (= e!4482056 tp!2182843)))

(declare-fun b!7518224 () Bool)

(declare-fun tp!2182845 () Bool)

(declare-fun tp!2182842 () Bool)

(assert (=> b!7518224 (= e!4482056 (and tp!2182845 tp!2182842))))

(assert (=> b!7516984 (= tp!2182239 e!4482056)))

(assert (= (and b!7516984 (is-ElementMatch!19756 (reg!20085 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518223))

(assert (= (and b!7516984 (is-Concat!28601 (reg!20085 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518224))

(assert (= (and b!7516984 (is-Star!19756 (reg!20085 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518225))

(assert (= (and b!7516984 (is-Union!19756 (reg!20085 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518226))

(declare-fun b!7518230 () Bool)

(declare-fun e!4482057 () Bool)

(declare-fun tp!2182846 () Bool)

(declare-fun tp!2182849 () Bool)

(assert (=> b!7518230 (= e!4482057 (and tp!2182846 tp!2182849))))

(declare-fun b!7518227 () Bool)

(assert (=> b!7518227 (= e!4482057 tp_is_empty!49843)))

(declare-fun b!7518229 () Bool)

(declare-fun tp!2182848 () Bool)

(assert (=> b!7518229 (= e!4482057 tp!2182848)))

(declare-fun b!7518228 () Bool)

(declare-fun tp!2182850 () Bool)

(declare-fun tp!2182847 () Bool)

(assert (=> b!7518228 (= e!4482057 (and tp!2182850 tp!2182847))))

(assert (=> b!7516975 (= tp!2182231 e!4482057)))

(assert (= (and b!7516975 (is-ElementMatch!19756 (regOne!40024 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518227))

(assert (= (and b!7516975 (is-Concat!28601 (regOne!40024 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518228))

(assert (= (and b!7516975 (is-Star!19756 (regOne!40024 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518229))

(assert (= (and b!7516975 (is-Union!19756 (regOne!40024 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518230))

(declare-fun b!7518234 () Bool)

(declare-fun e!4482058 () Bool)

(declare-fun tp!2182851 () Bool)

(declare-fun tp!2182854 () Bool)

(assert (=> b!7518234 (= e!4482058 (and tp!2182851 tp!2182854))))

(declare-fun b!7518231 () Bool)

(assert (=> b!7518231 (= e!4482058 tp_is_empty!49843)))

(declare-fun b!7518233 () Bool)

(declare-fun tp!2182853 () Bool)

(assert (=> b!7518233 (= e!4482058 tp!2182853)))

(declare-fun b!7518232 () Bool)

(declare-fun tp!2182855 () Bool)

(declare-fun tp!2182852 () Bool)

(assert (=> b!7518232 (= e!4482058 (and tp!2182855 tp!2182852))))

(assert (=> b!7516975 (= tp!2182228 e!4482058)))

(assert (= (and b!7516975 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518231))

(assert (= (and b!7516975 (is-Concat!28601 (regTwo!40024 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518232))

(assert (= (and b!7516975 (is-Star!19756 (regTwo!40024 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518233))

(assert (= (and b!7516975 (is-Union!19756 (regTwo!40024 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518234))

(declare-fun b!7518238 () Bool)

(declare-fun e!4482059 () Bool)

(declare-fun tp!2182856 () Bool)

(declare-fun tp!2182859 () Bool)

(assert (=> b!7518238 (= e!4482059 (and tp!2182856 tp!2182859))))

(declare-fun b!7518235 () Bool)

(assert (=> b!7518235 (= e!4482059 tp_is_empty!49843)))

(declare-fun b!7518237 () Bool)

(declare-fun tp!2182858 () Bool)

(assert (=> b!7518237 (= e!4482059 tp!2182858)))

(declare-fun b!7518236 () Bool)

(declare-fun tp!2182860 () Bool)

(declare-fun tp!2182857 () Bool)

(assert (=> b!7518236 (= e!4482059 (and tp!2182860 tp!2182857))))

(assert (=> b!7517078 (= tp!2182354 e!4482059)))

(assert (= (and b!7517078 (is-ElementMatch!19756 (regOne!40025 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518235))

(assert (= (and b!7517078 (is-Concat!28601 (regOne!40025 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518236))

(assert (= (and b!7517078 (is-Star!19756 (regOne!40025 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518237))

(assert (= (and b!7517078 (is-Union!19756 (regOne!40025 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518238))

(declare-fun b!7518242 () Bool)

(declare-fun e!4482060 () Bool)

(declare-fun tp!2182861 () Bool)

(declare-fun tp!2182864 () Bool)

(assert (=> b!7518242 (= e!4482060 (and tp!2182861 tp!2182864))))

(declare-fun b!7518239 () Bool)

(assert (=> b!7518239 (= e!4482060 tp_is_empty!49843)))

(declare-fun b!7518241 () Bool)

(declare-fun tp!2182863 () Bool)

(assert (=> b!7518241 (= e!4482060 tp!2182863)))

(declare-fun b!7518240 () Bool)

(declare-fun tp!2182865 () Bool)

(declare-fun tp!2182862 () Bool)

(assert (=> b!7518240 (= e!4482060 (and tp!2182865 tp!2182862))))

(assert (=> b!7517078 (= tp!2182357 e!4482060)))

(assert (= (and b!7517078 (is-ElementMatch!19756 (regTwo!40025 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518239))

(assert (= (and b!7517078 (is-Concat!28601 (regTwo!40025 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518240))

(assert (= (and b!7517078 (is-Star!19756 (regTwo!40025 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518241))

(assert (= (and b!7517078 (is-Union!19756 (regTwo!40025 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518242))

(declare-fun b!7518246 () Bool)

(declare-fun e!4482061 () Bool)

(declare-fun tp!2182866 () Bool)

(declare-fun tp!2182869 () Bool)

(assert (=> b!7518246 (= e!4482061 (and tp!2182866 tp!2182869))))

(declare-fun b!7518243 () Bool)

(assert (=> b!7518243 (= e!4482061 tp_is_empty!49843)))

(declare-fun b!7518245 () Bool)

(declare-fun tp!2182868 () Bool)

(assert (=> b!7518245 (= e!4482061 tp!2182868)))

(declare-fun b!7518244 () Bool)

(declare-fun tp!2182870 () Bool)

(declare-fun tp!2182867 () Bool)

(assert (=> b!7518244 (= e!4482061 (and tp!2182870 tp!2182867))))

(assert (=> b!7517045 (= tp!2182312 e!4482061)))

(assert (= (and b!7517045 (is-ElementMatch!19756 (regOne!40025 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518243))

(assert (= (and b!7517045 (is-Concat!28601 (regOne!40025 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518244))

(assert (= (and b!7517045 (is-Star!19756 (regOne!40025 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518245))

(assert (= (and b!7517045 (is-Union!19756 (regOne!40025 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518246))

(declare-fun b!7518250 () Bool)

(declare-fun e!4482062 () Bool)

(declare-fun tp!2182871 () Bool)

(declare-fun tp!2182874 () Bool)

(assert (=> b!7518250 (= e!4482062 (and tp!2182871 tp!2182874))))

(declare-fun b!7518247 () Bool)

(assert (=> b!7518247 (= e!4482062 tp_is_empty!49843)))

(declare-fun b!7518249 () Bool)

(declare-fun tp!2182873 () Bool)

(assert (=> b!7518249 (= e!4482062 tp!2182873)))

(declare-fun b!7518248 () Bool)

(declare-fun tp!2182875 () Bool)

(declare-fun tp!2182872 () Bool)

(assert (=> b!7518248 (= e!4482062 (and tp!2182875 tp!2182872))))

(assert (=> b!7517045 (= tp!2182315 e!4482062)))

(assert (= (and b!7517045 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518247))

(assert (= (and b!7517045 (is-Concat!28601 (regTwo!40025 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518248))

(assert (= (and b!7517045 (is-Star!19756 (regTwo!40025 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518249))

(assert (= (and b!7517045 (is-Union!19756 (regTwo!40025 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518250))

(declare-fun b!7518254 () Bool)

(declare-fun e!4482063 () Bool)

(declare-fun tp!2182876 () Bool)

(declare-fun tp!2182879 () Bool)

(assert (=> b!7518254 (= e!4482063 (and tp!2182876 tp!2182879))))

(declare-fun b!7518251 () Bool)

(assert (=> b!7518251 (= e!4482063 tp_is_empty!49843)))

(declare-fun b!7518253 () Bool)

(declare-fun tp!2182878 () Bool)

(assert (=> b!7518253 (= e!4482063 tp!2182878)))

(declare-fun b!7518252 () Bool)

(declare-fun tp!2182880 () Bool)

(declare-fun tp!2182877 () Bool)

(assert (=> b!7518252 (= e!4482063 (and tp!2182880 tp!2182877))))

(assert (=> b!7517036 (= tp!2182304 e!4482063)))

(assert (= (and b!7517036 (is-ElementMatch!19756 (reg!20085 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518251))

(assert (= (and b!7517036 (is-Concat!28601 (reg!20085 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518252))

(assert (= (and b!7517036 (is-Star!19756 (reg!20085 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518253))

(assert (= (and b!7517036 (is-Union!19756 (reg!20085 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518254))

(declare-fun b!7518258 () Bool)

(declare-fun e!4482064 () Bool)

(declare-fun tp!2182881 () Bool)

(declare-fun tp!2182884 () Bool)

(assert (=> b!7518258 (= e!4482064 (and tp!2182881 tp!2182884))))

(declare-fun b!7518255 () Bool)

(assert (=> b!7518255 (= e!4482064 tp_is_empty!49843)))

(declare-fun b!7518257 () Bool)

(declare-fun tp!2182883 () Bool)

(assert (=> b!7518257 (= e!4482064 tp!2182883)))

(declare-fun b!7518256 () Bool)

(declare-fun tp!2182885 () Bool)

(declare-fun tp!2182882 () Bool)

(assert (=> b!7518256 (= e!4482064 (and tp!2182885 tp!2182882))))

(assert (=> b!7516977 (= tp!2182227 e!4482064)))

(assert (= (and b!7516977 (is-ElementMatch!19756 (regOne!40025 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518255))

(assert (= (and b!7516977 (is-Concat!28601 (regOne!40025 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518256))

(assert (= (and b!7516977 (is-Star!19756 (regOne!40025 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518257))

(assert (= (and b!7516977 (is-Union!19756 (regOne!40025 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518258))

(declare-fun b!7518262 () Bool)

(declare-fun e!4482065 () Bool)

(declare-fun tp!2182886 () Bool)

(declare-fun tp!2182889 () Bool)

(assert (=> b!7518262 (= e!4482065 (and tp!2182886 tp!2182889))))

(declare-fun b!7518259 () Bool)

(assert (=> b!7518259 (= e!4482065 tp_is_empty!49843)))

(declare-fun b!7518261 () Bool)

(declare-fun tp!2182888 () Bool)

(assert (=> b!7518261 (= e!4482065 tp!2182888)))

(declare-fun b!7518260 () Bool)

(declare-fun tp!2182890 () Bool)

(declare-fun tp!2182887 () Bool)

(assert (=> b!7518260 (= e!4482065 (and tp!2182890 tp!2182887))))

(assert (=> b!7516977 (= tp!2182230 e!4482065)))

(assert (= (and b!7516977 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518259))

(assert (= (and b!7516977 (is-Concat!28601 (regTwo!40025 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518260))

(assert (= (and b!7516977 (is-Star!19756 (regTwo!40025 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518261))

(assert (= (and b!7516977 (is-Union!19756 (regTwo!40025 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518262))

(declare-fun b!7518266 () Bool)

(declare-fun e!4482066 () Bool)

(declare-fun tp!2182891 () Bool)

(declare-fun tp!2182894 () Bool)

(assert (=> b!7518266 (= e!4482066 (and tp!2182891 tp!2182894))))

(declare-fun b!7518263 () Bool)

(assert (=> b!7518263 (= e!4482066 tp_is_empty!49843)))

(declare-fun b!7518265 () Bool)

(declare-fun tp!2182893 () Bool)

(assert (=> b!7518265 (= e!4482066 tp!2182893)))

(declare-fun b!7518264 () Bool)

(declare-fun tp!2182895 () Bool)

(declare-fun tp!2182892 () Bool)

(assert (=> b!7518264 (= e!4482066 (and tp!2182895 tp!2182892))))

(assert (=> b!7517027 (= tp!2182296 e!4482066)))

(assert (= (and b!7517027 (is-ElementMatch!19756 (regOne!40024 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518263))

(assert (= (and b!7517027 (is-Concat!28601 (regOne!40024 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518264))

(assert (= (and b!7517027 (is-Star!19756 (regOne!40024 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518265))

(assert (= (and b!7517027 (is-Union!19756 (regOne!40024 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518266))

(declare-fun b!7518270 () Bool)

(declare-fun e!4482067 () Bool)

(declare-fun tp!2182896 () Bool)

(declare-fun tp!2182899 () Bool)

(assert (=> b!7518270 (= e!4482067 (and tp!2182896 tp!2182899))))

(declare-fun b!7518267 () Bool)

(assert (=> b!7518267 (= e!4482067 tp_is_empty!49843)))

(declare-fun b!7518269 () Bool)

(declare-fun tp!2182898 () Bool)

(assert (=> b!7518269 (= e!4482067 tp!2182898)))

(declare-fun b!7518268 () Bool)

(declare-fun tp!2182900 () Bool)

(declare-fun tp!2182897 () Bool)

(assert (=> b!7518268 (= e!4482067 (and tp!2182900 tp!2182897))))

(assert (=> b!7517027 (= tp!2182293 e!4482067)))

(assert (= (and b!7517027 (is-ElementMatch!19756 (regTwo!40024 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518267))

(assert (= (and b!7517027 (is-Concat!28601 (regTwo!40024 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518268))

(assert (= (and b!7517027 (is-Star!19756 (regTwo!40024 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518269))

(assert (= (and b!7517027 (is-Union!19756 (regTwo!40024 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518270))

(declare-fun b!7518274 () Bool)

(declare-fun e!4482068 () Bool)

(declare-fun tp!2182901 () Bool)

(declare-fun tp!2182904 () Bool)

(assert (=> b!7518274 (= e!4482068 (and tp!2182901 tp!2182904))))

(declare-fun b!7518271 () Bool)

(assert (=> b!7518271 (= e!4482068 tp_is_empty!49843)))

(declare-fun b!7518273 () Bool)

(declare-fun tp!2182903 () Bool)

(assert (=> b!7518273 (= e!4482068 tp!2182903)))

(declare-fun b!7518272 () Bool)

(declare-fun tp!2182905 () Bool)

(declare-fun tp!2182902 () Bool)

(assert (=> b!7518272 (= e!4482068 (and tp!2182905 tp!2182902))))

(assert (=> b!7516968 (= tp!2182219 e!4482068)))

(assert (= (and b!7516968 (is-ElementMatch!19756 (reg!20085 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518271))

(assert (= (and b!7516968 (is-Concat!28601 (reg!20085 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518272))

(assert (= (and b!7516968 (is-Star!19756 (reg!20085 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518273))

(assert (= (and b!7516968 (is-Union!19756 (reg!20085 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518274))

(declare-fun b!7518278 () Bool)

(declare-fun e!4482069 () Bool)

(declare-fun tp!2182906 () Bool)

(declare-fun tp!2182909 () Bool)

(assert (=> b!7518278 (= e!4482069 (and tp!2182906 tp!2182909))))

(declare-fun b!7518275 () Bool)

(assert (=> b!7518275 (= e!4482069 tp_is_empty!49843)))

(declare-fun b!7518277 () Bool)

(declare-fun tp!2182908 () Bool)

(assert (=> b!7518277 (= e!4482069 tp!2182908)))

(declare-fun b!7518276 () Bool)

(declare-fun tp!2182910 () Bool)

(declare-fun tp!2182907 () Bool)

(assert (=> b!7518276 (= e!4482069 (and tp!2182910 tp!2182907))))

(assert (=> b!7516959 (= tp!2182211 e!4482069)))

(assert (= (and b!7516959 (is-ElementMatch!19756 (regOne!40024 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518275))

(assert (= (and b!7516959 (is-Concat!28601 (regOne!40024 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518276))

(assert (= (and b!7516959 (is-Star!19756 (regOne!40024 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518277))

(assert (= (and b!7516959 (is-Union!19756 (regOne!40024 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518278))

(declare-fun b!7518282 () Bool)

(declare-fun e!4482070 () Bool)

(declare-fun tp!2182911 () Bool)

(declare-fun tp!2182914 () Bool)

(assert (=> b!7518282 (= e!4482070 (and tp!2182911 tp!2182914))))

(declare-fun b!7518279 () Bool)

(assert (=> b!7518279 (= e!4482070 tp_is_empty!49843)))

(declare-fun b!7518281 () Bool)

(declare-fun tp!2182913 () Bool)

(assert (=> b!7518281 (= e!4482070 tp!2182913)))

(declare-fun b!7518280 () Bool)

(declare-fun tp!2182915 () Bool)

(declare-fun tp!2182912 () Bool)

(assert (=> b!7518280 (= e!4482070 (and tp!2182915 tp!2182912))))

(assert (=> b!7516959 (= tp!2182208 e!4482070)))

(assert (= (and b!7516959 (is-ElementMatch!19756 (regTwo!40024 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518279))

(assert (= (and b!7516959 (is-Concat!28601 (regTwo!40024 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518280))

(assert (= (and b!7516959 (is-Star!19756 (regTwo!40024 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518281))

(assert (= (and b!7516959 (is-Union!19756 (regTwo!40024 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518282))

(declare-fun b!7518286 () Bool)

(declare-fun e!4482071 () Bool)

(declare-fun tp!2182916 () Bool)

(declare-fun tp!2182919 () Bool)

(assert (=> b!7518286 (= e!4482071 (and tp!2182916 tp!2182919))))

(declare-fun b!7518283 () Bool)

(assert (=> b!7518283 (= e!4482071 tp_is_empty!49843)))

(declare-fun b!7518285 () Bool)

(declare-fun tp!2182918 () Bool)

(assert (=> b!7518285 (= e!4482071 tp!2182918)))

(declare-fun b!7518284 () Bool)

(declare-fun tp!2182920 () Bool)

(declare-fun tp!2182917 () Bool)

(assert (=> b!7518284 (= e!4482071 (and tp!2182920 tp!2182917))))

(assert (=> b!7516964 (= tp!2182214 e!4482071)))

(assert (= (and b!7516964 (is-ElementMatch!19756 (reg!20085 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518283))

(assert (= (and b!7516964 (is-Concat!28601 (reg!20085 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518284))

(assert (= (and b!7516964 (is-Star!19756 (reg!20085 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518285))

(assert (= (and b!7516964 (is-Union!19756 (reg!20085 (regTwo!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518286))

(declare-fun b!7518290 () Bool)

(declare-fun e!4482072 () Bool)

(declare-fun tp!2182921 () Bool)

(declare-fun tp!2182924 () Bool)

(assert (=> b!7518290 (= e!4482072 (and tp!2182921 tp!2182924))))

(declare-fun b!7518287 () Bool)

(assert (=> b!7518287 (= e!4482072 tp_is_empty!49843)))

(declare-fun b!7518289 () Bool)

(declare-fun tp!2182923 () Bool)

(assert (=> b!7518289 (= e!4482072 tp!2182923)))

(declare-fun b!7518288 () Bool)

(declare-fun tp!2182925 () Bool)

(declare-fun tp!2182922 () Bool)

(assert (=> b!7518288 (= e!4482072 (and tp!2182925 tp!2182922))))

(assert (=> b!7517025 (= tp!2182287 e!4482072)))

(assert (= (and b!7517025 (is-ElementMatch!19756 (regOne!40025 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518287))

(assert (= (and b!7517025 (is-Concat!28601 (regOne!40025 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518288))

(assert (= (and b!7517025 (is-Star!19756 (regOne!40025 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518289))

(assert (= (and b!7517025 (is-Union!19756 (regOne!40025 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518290))

(declare-fun b!7518294 () Bool)

(declare-fun e!4482073 () Bool)

(declare-fun tp!2182926 () Bool)

(declare-fun tp!2182929 () Bool)

(assert (=> b!7518294 (= e!4482073 (and tp!2182926 tp!2182929))))

(declare-fun b!7518291 () Bool)

(assert (=> b!7518291 (= e!4482073 tp_is_empty!49843)))

(declare-fun b!7518293 () Bool)

(declare-fun tp!2182928 () Bool)

(assert (=> b!7518293 (= e!4482073 tp!2182928)))

(declare-fun b!7518292 () Bool)

(declare-fun tp!2182930 () Bool)

(declare-fun tp!2182927 () Bool)

(assert (=> b!7518292 (= e!4482073 (and tp!2182930 tp!2182927))))

(assert (=> b!7517025 (= tp!2182290 e!4482073)))

(assert (= (and b!7517025 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518291))

(assert (= (and b!7517025 (is-Concat!28601 (regTwo!40025 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518292))

(assert (= (and b!7517025 (is-Star!19756 (regTwo!40025 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518293))

(assert (= (and b!7517025 (is-Union!19756 (regTwo!40025 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518294))

(declare-fun b!7518298 () Bool)

(declare-fun e!4482074 () Bool)

(declare-fun tp!2182931 () Bool)

(declare-fun tp!2182934 () Bool)

(assert (=> b!7518298 (= e!4482074 (and tp!2182931 tp!2182934))))

(declare-fun b!7518295 () Bool)

(assert (=> b!7518295 (= e!4482074 tp_is_empty!49843)))

(declare-fun b!7518297 () Bool)

(declare-fun tp!2182933 () Bool)

(assert (=> b!7518297 (= e!4482074 tp!2182933)))

(declare-fun b!7518296 () Bool)

(declare-fun tp!2182935 () Bool)

(declare-fun tp!2182932 () Bool)

(assert (=> b!7518296 (= e!4482074 (and tp!2182935 tp!2182932))))

(assert (=> b!7517016 (= tp!2182279 e!4482074)))

(assert (= (and b!7517016 (is-ElementMatch!19756 (reg!20085 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518295))

(assert (= (and b!7517016 (is-Concat!28601 (reg!20085 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518296))

(assert (= (and b!7517016 (is-Star!19756 (reg!20085 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518297))

(assert (= (and b!7517016 (is-Union!19756 (reg!20085 (regTwo!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518298))

(declare-fun b!7518302 () Bool)

(declare-fun e!4482075 () Bool)

(declare-fun tp!2182936 () Bool)

(declare-fun tp!2182939 () Bool)

(assert (=> b!7518302 (= e!4482075 (and tp!2182936 tp!2182939))))

(declare-fun b!7518299 () Bool)

(assert (=> b!7518299 (= e!4482075 tp_is_empty!49843)))

(declare-fun b!7518301 () Bool)

(declare-fun tp!2182938 () Bool)

(assert (=> b!7518301 (= e!4482075 tp!2182938)))

(declare-fun b!7518300 () Bool)

(declare-fun tp!2182940 () Bool)

(declare-fun tp!2182937 () Bool)

(assert (=> b!7518300 (= e!4482075 (and tp!2182940 tp!2182937))))

(assert (=> b!7517007 (= tp!2182271 e!4482075)))

(assert (= (and b!7517007 (is-ElementMatch!19756 (regOne!40024 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518299))

(assert (= (and b!7517007 (is-Concat!28601 (regOne!40024 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518300))

(assert (= (and b!7517007 (is-Star!19756 (regOne!40024 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518301))

(assert (= (and b!7517007 (is-Union!19756 (regOne!40024 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518302))

(declare-fun b!7518306 () Bool)

(declare-fun e!4482076 () Bool)

(declare-fun tp!2182941 () Bool)

(declare-fun tp!2182944 () Bool)

(assert (=> b!7518306 (= e!4482076 (and tp!2182941 tp!2182944))))

(declare-fun b!7518303 () Bool)

(assert (=> b!7518303 (= e!4482076 tp_is_empty!49843)))

(declare-fun b!7518305 () Bool)

(declare-fun tp!2182943 () Bool)

(assert (=> b!7518305 (= e!4482076 tp!2182943)))

(declare-fun b!7518304 () Bool)

(declare-fun tp!2182945 () Bool)

(declare-fun tp!2182942 () Bool)

(assert (=> b!7518304 (= e!4482076 (and tp!2182945 tp!2182942))))

(assert (=> b!7517007 (= tp!2182268 e!4482076)))

(assert (= (and b!7517007 (is-ElementMatch!19756 (regTwo!40024 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518303))

(assert (= (and b!7517007 (is-Concat!28601 (regTwo!40024 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518304))

(assert (= (and b!7517007 (is-Star!19756 (regTwo!40024 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518305))

(assert (= (and b!7517007 (is-Union!19756 (regTwo!40024 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518306))

(declare-fun b!7518310 () Bool)

(declare-fun e!4482077 () Bool)

(declare-fun tp!2182946 () Bool)

(declare-fun tp!2182949 () Bool)

(assert (=> b!7518310 (= e!4482077 (and tp!2182946 tp!2182949))))

(declare-fun b!7518307 () Bool)

(assert (=> b!7518307 (= e!4482077 tp_is_empty!49843)))

(declare-fun b!7518309 () Bool)

(declare-fun tp!2182948 () Bool)

(assert (=> b!7518309 (= e!4482077 tp!2182948)))

(declare-fun b!7518308 () Bool)

(declare-fun tp!2182950 () Bool)

(declare-fun tp!2182947 () Bool)

(assert (=> b!7518308 (= e!4482077 (and tp!2182950 tp!2182947))))

(assert (=> b!7517068 (= tp!2182344 e!4482077)))

(assert (= (and b!7517068 (is-ElementMatch!19756 (reg!20085 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518307))

(assert (= (and b!7517068 (is-Concat!28601 (reg!20085 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518308))

(assert (= (and b!7517068 (is-Star!19756 (reg!20085 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518309))

(assert (= (and b!7517068 (is-Union!19756 (reg!20085 (reg!20085 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518310))

(declare-fun b!7518314 () Bool)

(declare-fun e!4482078 () Bool)

(declare-fun tp!2182951 () Bool)

(declare-fun tp!2182954 () Bool)

(assert (=> b!7518314 (= e!4482078 (and tp!2182951 tp!2182954))))

(declare-fun b!7518311 () Bool)

(assert (=> b!7518311 (= e!4482078 tp_is_empty!49843)))

(declare-fun b!7518313 () Bool)

(declare-fun tp!2182953 () Bool)

(assert (=> b!7518313 (= e!4482078 tp!2182953)))

(declare-fun b!7518312 () Bool)

(declare-fun tp!2182955 () Bool)

(declare-fun tp!2182952 () Bool)

(assert (=> b!7518312 (= e!4482078 (and tp!2182955 tp!2182952))))

(assert (=> b!7517009 (= tp!2182267 e!4482078)))

(assert (= (and b!7517009 (is-ElementMatch!19756 (regOne!40025 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518311))

(assert (= (and b!7517009 (is-Concat!28601 (regOne!40025 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518312))

(assert (= (and b!7517009 (is-Star!19756 (regOne!40025 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518313))

(assert (= (and b!7517009 (is-Union!19756 (regOne!40025 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518314))

(declare-fun b!7518318 () Bool)

(declare-fun e!4482079 () Bool)

(declare-fun tp!2182956 () Bool)

(declare-fun tp!2182959 () Bool)

(assert (=> b!7518318 (= e!4482079 (and tp!2182956 tp!2182959))))

(declare-fun b!7518315 () Bool)

(assert (=> b!7518315 (= e!4482079 tp_is_empty!49843)))

(declare-fun b!7518317 () Bool)

(declare-fun tp!2182958 () Bool)

(assert (=> b!7518317 (= e!4482079 tp!2182958)))

(declare-fun b!7518316 () Bool)

(declare-fun tp!2182960 () Bool)

(declare-fun tp!2182957 () Bool)

(assert (=> b!7518316 (= e!4482079 (and tp!2182960 tp!2182957))))

(assert (=> b!7517009 (= tp!2182270 e!4482079)))

(assert (= (and b!7517009 (is-ElementMatch!19756 (regTwo!40025 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518315))

(assert (= (and b!7517009 (is-Concat!28601 (regTwo!40025 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518316))

(assert (= (and b!7517009 (is-Star!19756 (regTwo!40025 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518317))

(assert (= (and b!7517009 (is-Union!19756 (regTwo!40025 (reg!20085 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518318))

(declare-fun b!7518322 () Bool)

(declare-fun e!4482080 () Bool)

(declare-fun tp!2182961 () Bool)

(declare-fun tp!2182964 () Bool)

(assert (=> b!7518322 (= e!4482080 (and tp!2182961 tp!2182964))))

(declare-fun b!7518319 () Bool)

(assert (=> b!7518319 (= e!4482080 tp_is_empty!49843)))

(declare-fun b!7518321 () Bool)

(declare-fun tp!2182963 () Bool)

(assert (=> b!7518321 (= e!4482080 tp!2182963)))

(declare-fun b!7518320 () Bool)

(declare-fun tp!2182965 () Bool)

(declare-fun tp!2182962 () Bool)

(assert (=> b!7518320 (= e!4482080 (and tp!2182965 tp!2182962))))

(assert (=> b!7517059 (= tp!2182336 e!4482080)))

(assert (= (and b!7517059 (is-ElementMatch!19756 (regOne!40024 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518319))

(assert (= (and b!7517059 (is-Concat!28601 (regOne!40024 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518320))

(assert (= (and b!7517059 (is-Star!19756 (regOne!40024 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518321))

(assert (= (and b!7517059 (is-Union!19756 (regOne!40024 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518322))

(declare-fun b!7518326 () Bool)

(declare-fun e!4482081 () Bool)

(declare-fun tp!2182966 () Bool)

(declare-fun tp!2182969 () Bool)

(assert (=> b!7518326 (= e!4482081 (and tp!2182966 tp!2182969))))

(declare-fun b!7518323 () Bool)

(assert (=> b!7518323 (= e!4482081 tp_is_empty!49843)))

(declare-fun b!7518325 () Bool)

(declare-fun tp!2182968 () Bool)

(assert (=> b!7518325 (= e!4482081 tp!2182968)))

(declare-fun b!7518324 () Bool)

(declare-fun tp!2182970 () Bool)

(declare-fun tp!2182967 () Bool)

(assert (=> b!7518324 (= e!4482081 (and tp!2182970 tp!2182967))))

(assert (=> b!7517059 (= tp!2182333 e!4482081)))

(assert (= (and b!7517059 (is-ElementMatch!19756 (regTwo!40024 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518323))

(assert (= (and b!7517059 (is-Concat!28601 (regTwo!40024 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518324))

(assert (= (and b!7517059 (is-Star!19756 (regTwo!40024 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518325))

(assert (= (and b!7517059 (is-Union!19756 (regTwo!40024 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518326))

(declare-fun b!7518330 () Bool)

(declare-fun e!4482082 () Bool)

(declare-fun tp!2182971 () Bool)

(declare-fun tp!2182974 () Bool)

(assert (=> b!7518330 (= e!4482082 (and tp!2182971 tp!2182974))))

(declare-fun b!7518327 () Bool)

(assert (=> b!7518327 (= e!4482082 tp_is_empty!49843)))

(declare-fun b!7518329 () Bool)

(declare-fun tp!2182973 () Bool)

(assert (=> b!7518329 (= e!4482082 tp!2182973)))

(declare-fun b!7518328 () Bool)

(declare-fun tp!2182975 () Bool)

(declare-fun tp!2182972 () Bool)

(assert (=> b!7518328 (= e!4482082 (and tp!2182975 tp!2182972))))

(assert (=> b!7517000 (= tp!2182259 e!4482082)))

(assert (= (and b!7517000 (is-ElementMatch!19756 (reg!20085 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518327))

(assert (= (and b!7517000 (is-Concat!28601 (reg!20085 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518328))

(assert (= (and b!7517000 (is-Star!19756 (reg!20085 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518329))

(assert (= (and b!7517000 (is-Union!19756 (reg!20085 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518330))

(declare-fun b!7518334 () Bool)

(declare-fun e!4482083 () Bool)

(declare-fun tp!2182976 () Bool)

(declare-fun tp!2182979 () Bool)

(assert (=> b!7518334 (= e!4482083 (and tp!2182976 tp!2182979))))

(declare-fun b!7518331 () Bool)

(assert (=> b!7518331 (= e!4482083 tp_is_empty!49843)))

(declare-fun b!7518333 () Bool)

(declare-fun tp!2182978 () Bool)

(assert (=> b!7518333 (= e!4482083 tp!2182978)))

(declare-fun b!7518332 () Bool)

(declare-fun tp!2182980 () Bool)

(declare-fun tp!2182977 () Bool)

(assert (=> b!7518332 (= e!4482083 (and tp!2182980 tp!2182977))))

(assert (=> b!7516991 (= tp!2182251 e!4482083)))

(assert (= (and b!7516991 (is-ElementMatch!19756 (regOne!40024 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518331))

(assert (= (and b!7516991 (is-Concat!28601 (regOne!40024 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518332))

(assert (= (and b!7516991 (is-Star!19756 (regOne!40024 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518333))

(assert (= (and b!7516991 (is-Union!19756 (regOne!40024 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518334))

(declare-fun b!7518338 () Bool)

(declare-fun e!4482084 () Bool)

(declare-fun tp!2182981 () Bool)

(declare-fun tp!2182984 () Bool)

(assert (=> b!7518338 (= e!4482084 (and tp!2182981 tp!2182984))))

(declare-fun b!7518335 () Bool)

(assert (=> b!7518335 (= e!4482084 tp_is_empty!49843)))

(declare-fun b!7518337 () Bool)

(declare-fun tp!2182983 () Bool)

(assert (=> b!7518337 (= e!4482084 tp!2182983)))

(declare-fun b!7518336 () Bool)

(declare-fun tp!2182985 () Bool)

(declare-fun tp!2182982 () Bool)

(assert (=> b!7518336 (= e!4482084 (and tp!2182985 tp!2182982))))

(assert (=> b!7516991 (= tp!2182248 e!4482084)))

(assert (= (and b!7516991 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518335))

(assert (= (and b!7516991 (is-Concat!28601 (regTwo!40024 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518336))

(assert (= (and b!7516991 (is-Star!19756 (regTwo!40024 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518337))

(assert (= (and b!7516991 (is-Union!19756 (regTwo!40024 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518338))

(declare-fun b!7518342 () Bool)

(declare-fun e!4482085 () Bool)

(declare-fun tp!2182986 () Bool)

(declare-fun tp!2182989 () Bool)

(assert (=> b!7518342 (= e!4482085 (and tp!2182986 tp!2182989))))

(declare-fun b!7518339 () Bool)

(assert (=> b!7518339 (= e!4482085 tp_is_empty!49843)))

(declare-fun b!7518341 () Bool)

(declare-fun tp!2182988 () Bool)

(assert (=> b!7518341 (= e!4482085 tp!2182988)))

(declare-fun b!7518340 () Bool)

(declare-fun tp!2182990 () Bool)

(declare-fun tp!2182987 () Bool)

(assert (=> b!7518340 (= e!4482085 (and tp!2182990 tp!2182987))))

(assert (=> b!7516996 (= tp!2182254 e!4482085)))

(assert (= (and b!7516996 (is-ElementMatch!19756 (reg!20085 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518339))

(assert (= (and b!7516996 (is-Concat!28601 (reg!20085 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518340))

(assert (= (and b!7516996 (is-Star!19756 (reg!20085 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518341))

(assert (= (and b!7516996 (is-Union!19756 (reg!20085 (reg!20085 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518342))

(declare-fun b!7518346 () Bool)

(declare-fun e!4482086 () Bool)

(declare-fun tp!2182991 () Bool)

(declare-fun tp!2182994 () Bool)

(assert (=> b!7518346 (= e!4482086 (and tp!2182991 tp!2182994))))

(declare-fun b!7518343 () Bool)

(assert (=> b!7518343 (= e!4482086 tp_is_empty!49843)))

(declare-fun b!7518345 () Bool)

(declare-fun tp!2182993 () Bool)

(assert (=> b!7518345 (= e!4482086 tp!2182993)))

(declare-fun b!7518344 () Bool)

(declare-fun tp!2182995 () Bool)

(declare-fun tp!2182992 () Bool)

(assert (=> b!7518344 (= e!4482086 (and tp!2182995 tp!2182992))))

(assert (=> b!7516987 (= tp!2182246 e!4482086)))

(assert (= (and b!7516987 (is-ElementMatch!19756 (regOne!40024 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518343))

(assert (= (and b!7516987 (is-Concat!28601 (regOne!40024 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518344))

(assert (= (and b!7516987 (is-Star!19756 (regOne!40024 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518345))

(assert (= (and b!7516987 (is-Union!19756 (regOne!40024 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518346))

(declare-fun b!7518350 () Bool)

(declare-fun e!4482087 () Bool)

(declare-fun tp!2182996 () Bool)

(declare-fun tp!2182999 () Bool)

(assert (=> b!7518350 (= e!4482087 (and tp!2182996 tp!2182999))))

(declare-fun b!7518347 () Bool)

(assert (=> b!7518347 (= e!4482087 tp_is_empty!49843)))

(declare-fun b!7518349 () Bool)

(declare-fun tp!2182998 () Bool)

(assert (=> b!7518349 (= e!4482087 tp!2182998)))

(declare-fun b!7518348 () Bool)

(declare-fun tp!2183000 () Bool)

(declare-fun tp!2182997 () Bool)

(assert (=> b!7518348 (= e!4482087 (and tp!2183000 tp!2182997))))

(assert (=> b!7516987 (= tp!2182243 e!4482087)))

(assert (= (and b!7516987 (is-ElementMatch!19756 (regTwo!40024 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518347))

(assert (= (and b!7516987 (is-Concat!28601 (regTwo!40024 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518348))

(assert (= (and b!7516987 (is-Star!19756 (regTwo!40024 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518349))

(assert (= (and b!7516987 (is-Union!19756 (regTwo!40024 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518350))

(declare-fun b!7518354 () Bool)

(declare-fun e!4482088 () Bool)

(declare-fun tp!2183001 () Bool)

(declare-fun tp!2183004 () Bool)

(assert (=> b!7518354 (= e!4482088 (and tp!2183001 tp!2183004))))

(declare-fun b!7518351 () Bool)

(assert (=> b!7518351 (= e!4482088 tp_is_empty!49843)))

(declare-fun b!7518353 () Bool)

(declare-fun tp!2183003 () Bool)

(assert (=> b!7518353 (= e!4482088 tp!2183003)))

(declare-fun b!7518352 () Bool)

(declare-fun tp!2183005 () Bool)

(declare-fun tp!2183002 () Bool)

(assert (=> b!7518352 (= e!4482088 (and tp!2183005 tp!2183002))))

(assert (=> b!7517081 (= tp!2182361 e!4482088)))

(assert (= (and b!7517081 (is-ElementMatch!19756 (reg!20085 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518351))

(assert (= (and b!7517081 (is-Concat!28601 (reg!20085 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518352))

(assert (= (and b!7517081 (is-Star!19756 (reg!20085 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518353))

(assert (= (and b!7517081 (is-Union!19756 (reg!20085 (regTwo!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518354))

(declare-fun b!7518358 () Bool)

(declare-fun e!4482089 () Bool)

(declare-fun tp!2183006 () Bool)

(declare-fun tp!2183009 () Bool)

(assert (=> b!7518358 (= e!4482089 (and tp!2183006 tp!2183009))))

(declare-fun b!7518355 () Bool)

(assert (=> b!7518355 (= e!4482089 tp_is_empty!49843)))

(declare-fun b!7518357 () Bool)

(declare-fun tp!2183008 () Bool)

(assert (=> b!7518357 (= e!4482089 tp!2183008)))

(declare-fun b!7518356 () Bool)

(declare-fun tp!2183010 () Bool)

(declare-fun tp!2183007 () Bool)

(assert (=> b!7518356 (= e!4482089 (and tp!2183010 tp!2183007))))

(assert (=> b!7517057 (= tp!2182327 e!4482089)))

(assert (= (and b!7517057 (is-ElementMatch!19756 (regOne!40025 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518355))

(assert (= (and b!7517057 (is-Concat!28601 (regOne!40025 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518356))

(assert (= (and b!7517057 (is-Star!19756 (regOne!40025 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518357))

(assert (= (and b!7517057 (is-Union!19756 (regOne!40025 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518358))

(declare-fun b!7518362 () Bool)

(declare-fun e!4482090 () Bool)

(declare-fun tp!2183011 () Bool)

(declare-fun tp!2183014 () Bool)

(assert (=> b!7518362 (= e!4482090 (and tp!2183011 tp!2183014))))

(declare-fun b!7518359 () Bool)

(assert (=> b!7518359 (= e!4482090 tp_is_empty!49843)))

(declare-fun b!7518361 () Bool)

(declare-fun tp!2183013 () Bool)

(assert (=> b!7518361 (= e!4482090 tp!2183013)))

(declare-fun b!7518360 () Bool)

(declare-fun tp!2183015 () Bool)

(declare-fun tp!2183012 () Bool)

(assert (=> b!7518360 (= e!4482090 (and tp!2183015 tp!2183012))))

(assert (=> b!7517057 (= tp!2182330 e!4482090)))

(assert (= (and b!7517057 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518359))

(assert (= (and b!7517057 (is-Concat!28601 (regTwo!40025 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518360))

(assert (= (and b!7517057 (is-Star!19756 (regTwo!40025 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518361))

(assert (= (and b!7517057 (is-Union!19756 (regTwo!40025 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518362))

(declare-fun b!7518366 () Bool)

(declare-fun e!4482091 () Bool)

(declare-fun tp!2183016 () Bool)

(declare-fun tp!2183019 () Bool)

(assert (=> b!7518366 (= e!4482091 (and tp!2183016 tp!2183019))))

(declare-fun b!7518363 () Bool)

(assert (=> b!7518363 (= e!4482091 tp_is_empty!49843)))

(declare-fun b!7518365 () Bool)

(declare-fun tp!2183018 () Bool)

(assert (=> b!7518365 (= e!4482091 tp!2183018)))

(declare-fun b!7518364 () Bool)

(declare-fun tp!2183020 () Bool)

(declare-fun tp!2183017 () Bool)

(assert (=> b!7518364 (= e!4482091 (and tp!2183020 tp!2183017))))

(assert (=> b!7517048 (= tp!2182319 e!4482091)))

(assert (= (and b!7517048 (is-ElementMatch!19756 (reg!20085 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518363))

(assert (= (and b!7517048 (is-Concat!28601 (reg!20085 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518364))

(assert (= (and b!7517048 (is-Star!19756 (reg!20085 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518365))

(assert (= (and b!7517048 (is-Union!19756 (reg!20085 (reg!20085 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518366))

(declare-fun b!7518370 () Bool)

(declare-fun e!4482092 () Bool)

(declare-fun tp!2183021 () Bool)

(declare-fun tp!2183024 () Bool)

(assert (=> b!7518370 (= e!4482092 (and tp!2183021 tp!2183024))))

(declare-fun b!7518367 () Bool)

(assert (=> b!7518367 (= e!4482092 tp_is_empty!49843)))

(declare-fun b!7518369 () Bool)

(declare-fun tp!2183023 () Bool)

(assert (=> b!7518369 (= e!4482092 tp!2183023)))

(declare-fun b!7518368 () Bool)

(declare-fun tp!2183025 () Bool)

(declare-fun tp!2183022 () Bool)

(assert (=> b!7518368 (= e!4482092 (and tp!2183025 tp!2183022))))

(assert (=> b!7516989 (= tp!2182242 e!4482092)))

(assert (= (and b!7516989 (is-ElementMatch!19756 (regOne!40025 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518367))

(assert (= (and b!7516989 (is-Concat!28601 (regOne!40025 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518368))

(assert (= (and b!7516989 (is-Star!19756 (regOne!40025 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518369))

(assert (= (and b!7516989 (is-Union!19756 (regOne!40025 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518370))

(declare-fun b!7518374 () Bool)

(declare-fun e!4482093 () Bool)

(declare-fun tp!2183026 () Bool)

(declare-fun tp!2183029 () Bool)

(assert (=> b!7518374 (= e!4482093 (and tp!2183026 tp!2183029))))

(declare-fun b!7518371 () Bool)

(assert (=> b!7518371 (= e!4482093 tp_is_empty!49843)))

(declare-fun b!7518373 () Bool)

(declare-fun tp!2183028 () Bool)

(assert (=> b!7518373 (= e!4482093 tp!2183028)))

(declare-fun b!7518372 () Bool)

(declare-fun tp!2183030 () Bool)

(declare-fun tp!2183027 () Bool)

(assert (=> b!7518372 (= e!4482093 (and tp!2183030 tp!2183027))))

(assert (=> b!7516989 (= tp!2182245 e!4482093)))

(assert (= (and b!7516989 (is-ElementMatch!19756 (regTwo!40025 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518371))

(assert (= (and b!7516989 (is-Concat!28601 (regTwo!40025 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518372))

(assert (= (and b!7516989 (is-Star!19756 (regTwo!40025 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518373))

(assert (= (and b!7516989 (is-Union!19756 (regTwo!40025 (regOne!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518374))

(declare-fun b!7518378 () Bool)

(declare-fun e!4482094 () Bool)

(declare-fun tp!2183031 () Bool)

(declare-fun tp!2183034 () Bool)

(assert (=> b!7518378 (= e!4482094 (and tp!2183031 tp!2183034))))

(declare-fun b!7518375 () Bool)

(assert (=> b!7518375 (= e!4482094 tp_is_empty!49843)))

(declare-fun b!7518377 () Bool)

(declare-fun tp!2183033 () Bool)

(assert (=> b!7518377 (= e!4482094 tp!2183033)))

(declare-fun b!7518376 () Bool)

(declare-fun tp!2183035 () Bool)

(declare-fun tp!2183032 () Bool)

(assert (=> b!7518376 (= e!4482094 (and tp!2183035 tp!2183032))))

(assert (=> b!7517039 (= tp!2182311 e!4482094)))

(assert (= (and b!7517039 (is-ElementMatch!19756 (regOne!40024 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518375))

(assert (= (and b!7517039 (is-Concat!28601 (regOne!40024 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518376))

(assert (= (and b!7517039 (is-Star!19756 (regOne!40024 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518377))

(assert (= (and b!7517039 (is-Union!19756 (regOne!40024 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518378))

(declare-fun b!7518382 () Bool)

(declare-fun e!4482095 () Bool)

(declare-fun tp!2183036 () Bool)

(declare-fun tp!2183039 () Bool)

(assert (=> b!7518382 (= e!4482095 (and tp!2183036 tp!2183039))))

(declare-fun b!7518379 () Bool)

(assert (=> b!7518379 (= e!4482095 tp_is_empty!49843)))

(declare-fun b!7518381 () Bool)

(declare-fun tp!2183038 () Bool)

(assert (=> b!7518381 (= e!4482095 tp!2183038)))

(declare-fun b!7518380 () Bool)

(declare-fun tp!2183040 () Bool)

(declare-fun tp!2183037 () Bool)

(assert (=> b!7518380 (= e!4482095 (and tp!2183040 tp!2183037))))

(assert (=> b!7517039 (= tp!2182308 e!4482095)))

(assert (= (and b!7517039 (is-ElementMatch!19756 (regTwo!40024 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518379))

(assert (= (and b!7517039 (is-Concat!28601 (regTwo!40024 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518380))

(assert (= (and b!7517039 (is-Star!19756 (regTwo!40024 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518381))

(assert (= (and b!7517039 (is-Union!19756 (regTwo!40024 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518382))

(declare-fun b!7518386 () Bool)

(declare-fun e!4482096 () Bool)

(declare-fun tp!2183041 () Bool)

(declare-fun tp!2183044 () Bool)

(assert (=> b!7518386 (= e!4482096 (and tp!2183041 tp!2183044))))

(declare-fun b!7518383 () Bool)

(assert (=> b!7518383 (= e!4482096 tp_is_empty!49843)))

(declare-fun b!7518385 () Bool)

(declare-fun tp!2183043 () Bool)

(assert (=> b!7518385 (= e!4482096 tp!2183043)))

(declare-fun b!7518384 () Bool)

(declare-fun tp!2183045 () Bool)

(declare-fun tp!2183042 () Bool)

(assert (=> b!7518384 (= e!4482096 (and tp!2183045 tp!2183042))))

(assert (=> b!7516980 (= tp!2182234 e!4482096)))

(assert (= (and b!7516980 (is-ElementMatch!19756 (reg!20085 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518383))

(assert (= (and b!7516980 (is-Concat!28601 (reg!20085 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518384))

(assert (= (and b!7516980 (is-Star!19756 (reg!20085 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518385))

(assert (= (and b!7516980 (is-Union!19756 (reg!20085 (regOne!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518386))

(declare-fun b!7518390 () Bool)

(declare-fun e!4482097 () Bool)

(declare-fun tp!2183046 () Bool)

(declare-fun tp!2183049 () Bool)

(assert (=> b!7518390 (= e!4482097 (and tp!2183046 tp!2183049))))

(declare-fun b!7518387 () Bool)

(assert (=> b!7518387 (= e!4482097 tp_is_empty!49843)))

(declare-fun b!7518389 () Bool)

(declare-fun tp!2183048 () Bool)

(assert (=> b!7518389 (= e!4482097 tp!2183048)))

(declare-fun b!7518388 () Bool)

(declare-fun tp!2183050 () Bool)

(declare-fun tp!2183047 () Bool)

(assert (=> b!7518388 (= e!4482097 (and tp!2183050 tp!2183047))))

(assert (=> b!7516971 (= tp!2182226 e!4482097)))

(assert (= (and b!7516971 (is-ElementMatch!19756 (regOne!40024 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518387))

(assert (= (and b!7516971 (is-Concat!28601 (regOne!40024 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518388))

(assert (= (and b!7516971 (is-Star!19756 (regOne!40024 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518389))

(assert (= (and b!7516971 (is-Union!19756 (regOne!40024 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518390))

(declare-fun b!7518394 () Bool)

(declare-fun e!4482098 () Bool)

(declare-fun tp!2183051 () Bool)

(declare-fun tp!2183054 () Bool)

(assert (=> b!7518394 (= e!4482098 (and tp!2183051 tp!2183054))))

(declare-fun b!7518391 () Bool)

(assert (=> b!7518391 (= e!4482098 tp_is_empty!49843)))

(declare-fun b!7518393 () Bool)

(declare-fun tp!2183053 () Bool)

(assert (=> b!7518393 (= e!4482098 tp!2183053)))

(declare-fun b!7518392 () Bool)

(declare-fun tp!2183055 () Bool)

(declare-fun tp!2183052 () Bool)

(assert (=> b!7518392 (= e!4482098 (and tp!2183055 tp!2183052))))

(assert (=> b!7516971 (= tp!2182223 e!4482098)))

(assert (= (and b!7516971 (is-ElementMatch!19756 (regTwo!40024 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518391))

(assert (= (and b!7516971 (is-Concat!28601 (regTwo!40024 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518392))

(assert (= (and b!7516971 (is-Star!19756 (regTwo!40024 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518393))

(assert (= (and b!7516971 (is-Union!19756 (regTwo!40024 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518394))

(declare-fun b!7518398 () Bool)

(declare-fun e!4482099 () Bool)

(declare-fun tp!2183056 () Bool)

(declare-fun tp!2183059 () Bool)

(assert (=> b!7518398 (= e!4482099 (and tp!2183056 tp!2183059))))

(declare-fun b!7518395 () Bool)

(assert (=> b!7518395 (= e!4482099 tp_is_empty!49843)))

(declare-fun b!7518397 () Bool)

(declare-fun tp!2183058 () Bool)

(assert (=> b!7518397 (= e!4482099 tp!2183058)))

(declare-fun b!7518396 () Bool)

(declare-fun tp!2183060 () Bool)

(declare-fun tp!2183057 () Bool)

(assert (=> b!7518396 (= e!4482099 (and tp!2183060 tp!2183057))))

(assert (=> b!7517074 (= tp!2182352 e!4482099)))

(assert (= (and b!7517074 (is-ElementMatch!19756 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518395))

(assert (= (and b!7517074 (is-Concat!28601 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518396))

(assert (= (and b!7517074 (is-Star!19756 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518397))

(assert (= (and b!7517074 (is-Union!19756 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518398))

(declare-fun b!7518399 () Bool)

(declare-fun e!4482100 () Bool)

(declare-fun tp!2183061 () Bool)

(declare-fun tp!2183062 () Bool)

(assert (=> b!7518399 (= e!4482100 (and tp!2183061 tp!2183062))))

(assert (=> b!7517074 (= tp!2182353 e!4482100)))

(assert (= (and b!7517074 (is-Cons!72519 (t!387280 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518399))

(declare-fun b!7518403 () Bool)

(declare-fun e!4482101 () Bool)

(declare-fun tp!2183063 () Bool)

(declare-fun tp!2183066 () Bool)

(assert (=> b!7518403 (= e!4482101 (and tp!2183063 tp!2183066))))

(declare-fun b!7518400 () Bool)

(assert (=> b!7518400 (= e!4482101 tp_is_empty!49843)))

(declare-fun b!7518402 () Bool)

(declare-fun tp!2183065 () Bool)

(assert (=> b!7518402 (= e!4482101 tp!2183065)))

(declare-fun b!7518401 () Bool)

(declare-fun tp!2183067 () Bool)

(declare-fun tp!2183064 () Bool)

(assert (=> b!7518401 (= e!4482101 (and tp!2183067 tp!2183064))))

(assert (=> b!7517041 (= tp!2182307 e!4482101)))

(assert (= (and b!7517041 (is-ElementMatch!19756 (regOne!40025 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518400))

(assert (= (and b!7517041 (is-Concat!28601 (regOne!40025 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518401))

(assert (= (and b!7517041 (is-Star!19756 (regOne!40025 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518402))

(assert (= (and b!7517041 (is-Union!19756 (regOne!40025 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518403))

(declare-fun b!7518407 () Bool)

(declare-fun e!4482102 () Bool)

(declare-fun tp!2183068 () Bool)

(declare-fun tp!2183071 () Bool)

(assert (=> b!7518407 (= e!4482102 (and tp!2183068 tp!2183071))))

(declare-fun b!7518404 () Bool)

(assert (=> b!7518404 (= e!4482102 tp_is_empty!49843)))

(declare-fun b!7518406 () Bool)

(declare-fun tp!2183070 () Bool)

(assert (=> b!7518406 (= e!4482102 tp!2183070)))

(declare-fun b!7518405 () Bool)

(declare-fun tp!2183072 () Bool)

(declare-fun tp!2183069 () Bool)

(assert (=> b!7518405 (= e!4482102 (and tp!2183072 tp!2183069))))

(assert (=> b!7517041 (= tp!2182310 e!4482102)))

(assert (= (and b!7517041 (is-ElementMatch!19756 (regTwo!40025 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518404))

(assert (= (and b!7517041 (is-Concat!28601 (regTwo!40025 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518405))

(assert (= (and b!7517041 (is-Star!19756 (regTwo!40025 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518406))

(assert (= (and b!7517041 (is-Union!19756 (regTwo!40025 (regOne!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518407))

(declare-fun b!7518411 () Bool)

(declare-fun e!4482103 () Bool)

(declare-fun tp!2183073 () Bool)

(declare-fun tp!2183076 () Bool)

(assert (=> b!7518411 (= e!4482103 (and tp!2183073 tp!2183076))))

(declare-fun b!7518408 () Bool)

(assert (=> b!7518408 (= e!4482103 tp_is_empty!49843)))

(declare-fun b!7518410 () Bool)

(declare-fun tp!2183075 () Bool)

(assert (=> b!7518410 (= e!4482103 tp!2183075)))

(declare-fun b!7518409 () Bool)

(declare-fun tp!2183077 () Bool)

(declare-fun tp!2183074 () Bool)

(assert (=> b!7518409 (= e!4482103 (and tp!2183077 tp!2183074))))

(assert (=> b!7517032 (= tp!2182299 e!4482103)))

(assert (= (and b!7517032 (is-ElementMatch!19756 (reg!20085 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518408))

(assert (= (and b!7517032 (is-Concat!28601 (reg!20085 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518409))

(assert (= (and b!7517032 (is-Star!19756 (reg!20085 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518410))

(assert (= (and b!7517032 (is-Union!19756 (reg!20085 (regOne!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518411))

(declare-fun b!7518415 () Bool)

(declare-fun e!4482104 () Bool)

(declare-fun tp!2183078 () Bool)

(declare-fun tp!2183081 () Bool)

(assert (=> b!7518415 (= e!4482104 (and tp!2183078 tp!2183081))))

(declare-fun b!7518412 () Bool)

(assert (=> b!7518412 (= e!4482104 tp_is_empty!49843)))

(declare-fun b!7518414 () Bool)

(declare-fun tp!2183080 () Bool)

(assert (=> b!7518414 (= e!4482104 tp!2183080)))

(declare-fun b!7518413 () Bool)

(declare-fun tp!2183082 () Bool)

(declare-fun tp!2183079 () Bool)

(assert (=> b!7518413 (= e!4482104 (and tp!2183082 tp!2183079))))

(assert (=> b!7516973 (= tp!2182222 e!4482104)))

(assert (= (and b!7516973 (is-ElementMatch!19756 (regOne!40025 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518412))

(assert (= (and b!7516973 (is-Concat!28601 (regOne!40025 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518413))

(assert (= (and b!7516973 (is-Star!19756 (regOne!40025 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518414))

(assert (= (and b!7516973 (is-Union!19756 (regOne!40025 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518415))

(declare-fun b!7518419 () Bool)

(declare-fun e!4482105 () Bool)

(declare-fun tp!2183083 () Bool)

(declare-fun tp!2183086 () Bool)

(assert (=> b!7518419 (= e!4482105 (and tp!2183083 tp!2183086))))

(declare-fun b!7518416 () Bool)

(assert (=> b!7518416 (= e!4482105 tp_is_empty!49843)))

(declare-fun b!7518418 () Bool)

(declare-fun tp!2183085 () Bool)

(assert (=> b!7518418 (= e!4482105 tp!2183085)))

(declare-fun b!7518417 () Bool)

(declare-fun tp!2183087 () Bool)

(declare-fun tp!2183084 () Bool)

(assert (=> b!7518417 (= e!4482105 (and tp!2183087 tp!2183084))))

(assert (=> b!7516973 (= tp!2182225 e!4482105)))

(assert (= (and b!7516973 (is-ElementMatch!19756 (regTwo!40025 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518416))

(assert (= (and b!7516973 (is-Concat!28601 (regTwo!40025 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518417))

(assert (= (and b!7516973 (is-Star!19756 (regTwo!40025 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518418))

(assert (= (and b!7516973 (is-Union!19756 (regTwo!40025 (regOne!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518419))

(declare-fun b!7518423 () Bool)

(declare-fun e!4482106 () Bool)

(declare-fun tp!2183088 () Bool)

(declare-fun tp!2183091 () Bool)

(assert (=> b!7518423 (= e!4482106 (and tp!2183088 tp!2183091))))

(declare-fun b!7518420 () Bool)

(assert (=> b!7518420 (= e!4482106 tp_is_empty!49843)))

(declare-fun b!7518422 () Bool)

(declare-fun tp!2183090 () Bool)

(assert (=> b!7518422 (= e!4482106 tp!2183090)))

(declare-fun b!7518421 () Bool)

(declare-fun tp!2183092 () Bool)

(declare-fun tp!2183089 () Bool)

(assert (=> b!7518421 (= e!4482106 (and tp!2183092 tp!2183089))))

(assert (=> b!7517023 (= tp!2182291 e!4482106)))

(assert (= (and b!7517023 (is-ElementMatch!19756 (regOne!40024 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518420))

(assert (= (and b!7517023 (is-Concat!28601 (regOne!40024 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518421))

(assert (= (and b!7517023 (is-Star!19756 (regOne!40024 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518422))

(assert (= (and b!7517023 (is-Union!19756 (regOne!40024 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518423))

(declare-fun b!7518427 () Bool)

(declare-fun e!4482107 () Bool)

(declare-fun tp!2183093 () Bool)

(declare-fun tp!2183096 () Bool)

(assert (=> b!7518427 (= e!4482107 (and tp!2183093 tp!2183096))))

(declare-fun b!7518424 () Bool)

(assert (=> b!7518424 (= e!4482107 tp_is_empty!49843)))

(declare-fun b!7518426 () Bool)

(declare-fun tp!2183095 () Bool)

(assert (=> b!7518426 (= e!4482107 tp!2183095)))

(declare-fun b!7518425 () Bool)

(declare-fun tp!2183097 () Bool)

(declare-fun tp!2183094 () Bool)

(assert (=> b!7518425 (= e!4482107 (and tp!2183097 tp!2183094))))

(assert (=> b!7517023 (= tp!2182288 e!4482107)))

(assert (= (and b!7517023 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518424))

(assert (= (and b!7517023 (is-Concat!28601 (regTwo!40024 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518425))

(assert (= (and b!7517023 (is-Star!19756 (regTwo!40024 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518426))

(assert (= (and b!7517023 (is-Union!19756 (regTwo!40024 (regTwo!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518427))

(declare-fun b!7518431 () Bool)

(declare-fun e!4482108 () Bool)

(declare-fun tp!2183098 () Bool)

(declare-fun tp!2183101 () Bool)

(assert (=> b!7518431 (= e!4482108 (and tp!2183098 tp!2183101))))

(declare-fun b!7518428 () Bool)

(assert (=> b!7518428 (= e!4482108 tp_is_empty!49843)))

(declare-fun b!7518430 () Bool)

(declare-fun tp!2183100 () Bool)

(assert (=> b!7518430 (= e!4482108 tp!2183100)))

(declare-fun b!7518429 () Bool)

(declare-fun tp!2183102 () Bool)

(declare-fun tp!2183099 () Bool)

(assert (=> b!7518429 (= e!4482108 (and tp!2183102 tp!2183099))))

(assert (=> b!7517028 (= tp!2182294 e!4482108)))

(assert (= (and b!7517028 (is-ElementMatch!19756 (reg!20085 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518428))

(assert (= (and b!7517028 (is-Concat!28601 (reg!20085 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518429))

(assert (= (and b!7517028 (is-Star!19756 (reg!20085 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518430))

(assert (= (and b!7517028 (is-Union!19756 (reg!20085 (reg!20085 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518431))

(declare-fun b!7518435 () Bool)

(declare-fun e!4482109 () Bool)

(declare-fun tp!2183103 () Bool)

(declare-fun tp!2183106 () Bool)

(assert (=> b!7518435 (= e!4482109 (and tp!2183103 tp!2183106))))

(declare-fun b!7518432 () Bool)

(assert (=> b!7518432 (= e!4482109 tp_is_empty!49843)))

(declare-fun b!7518434 () Bool)

(declare-fun tp!2183105 () Bool)

(assert (=> b!7518434 (= e!4482109 tp!2183105)))

(declare-fun b!7518433 () Bool)

(declare-fun tp!2183107 () Bool)

(declare-fun tp!2183104 () Bool)

(assert (=> b!7518433 (= e!4482109 (and tp!2183107 tp!2183104))))

(assert (=> b!7516969 (= tp!2182217 e!4482109)))

(assert (= (and b!7516969 (is-ElementMatch!19756 (regOne!40025 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518432))

(assert (= (and b!7516969 (is-Concat!28601 (regOne!40025 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518433))

(assert (= (and b!7516969 (is-Star!19756 (regOne!40025 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518434))

(assert (= (and b!7516969 (is-Union!19756 (regOne!40025 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518435))

(declare-fun b!7518439 () Bool)

(declare-fun e!4482110 () Bool)

(declare-fun tp!2183108 () Bool)

(declare-fun tp!2183111 () Bool)

(assert (=> b!7518439 (= e!4482110 (and tp!2183108 tp!2183111))))

(declare-fun b!7518436 () Bool)

(assert (=> b!7518436 (= e!4482110 tp_is_empty!49843)))

(declare-fun b!7518438 () Bool)

(declare-fun tp!2183110 () Bool)

(assert (=> b!7518438 (= e!4482110 tp!2183110)))

(declare-fun b!7518437 () Bool)

(declare-fun tp!2183112 () Bool)

(declare-fun tp!2183109 () Bool)

(assert (=> b!7518437 (= e!4482110 (and tp!2183112 tp!2183109))))

(assert (=> b!7516969 (= tp!2182220 e!4482110)))

(assert (= (and b!7516969 (is-ElementMatch!19756 (regTwo!40025 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518436))

(assert (= (and b!7516969 (is-Concat!28601 (regTwo!40025 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518437))

(assert (= (and b!7516969 (is-Star!19756 (regTwo!40025 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518438))

(assert (= (and b!7516969 (is-Union!19756 (regTwo!40025 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518439))

(declare-fun b!7518443 () Bool)

(declare-fun e!4482111 () Bool)

(declare-fun tp!2183113 () Bool)

(declare-fun tp!2183116 () Bool)

(assert (=> b!7518443 (= e!4482111 (and tp!2183113 tp!2183116))))

(declare-fun b!7518440 () Bool)

(assert (=> b!7518440 (= e!4482111 tp_is_empty!49843)))

(declare-fun b!7518442 () Bool)

(declare-fun tp!2183115 () Bool)

(assert (=> b!7518442 (= e!4482111 tp!2183115)))

(declare-fun b!7518441 () Bool)

(declare-fun tp!2183117 () Bool)

(declare-fun tp!2183114 () Bool)

(assert (=> b!7518441 (= e!4482111 (and tp!2183117 tp!2183114))))

(assert (=> b!7517019 (= tp!2182286 e!4482111)))

(assert (= (and b!7517019 (is-ElementMatch!19756 (regOne!40024 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518440))

(assert (= (and b!7517019 (is-Concat!28601 (regOne!40024 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518441))

(assert (= (and b!7517019 (is-Star!19756 (regOne!40024 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518442))

(assert (= (and b!7517019 (is-Union!19756 (regOne!40024 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518443))

(declare-fun b!7518447 () Bool)

(declare-fun e!4482112 () Bool)

(declare-fun tp!2183118 () Bool)

(declare-fun tp!2183121 () Bool)

(assert (=> b!7518447 (= e!4482112 (and tp!2183118 tp!2183121))))

(declare-fun b!7518444 () Bool)

(assert (=> b!7518444 (= e!4482112 tp_is_empty!49843)))

(declare-fun b!7518446 () Bool)

(declare-fun tp!2183120 () Bool)

(assert (=> b!7518446 (= e!4482112 tp!2183120)))

(declare-fun b!7518445 () Bool)

(declare-fun tp!2183122 () Bool)

(declare-fun tp!2183119 () Bool)

(assert (=> b!7518445 (= e!4482112 (and tp!2183122 tp!2183119))))

(assert (=> b!7517019 (= tp!2182283 e!4482112)))

(assert (= (and b!7517019 (is-ElementMatch!19756 (regTwo!40024 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518444))

(assert (= (and b!7517019 (is-Concat!28601 (regTwo!40024 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518445))

(assert (= (and b!7517019 (is-Star!19756 (regTwo!40024 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518446))

(assert (= (and b!7517019 (is-Union!19756 (regTwo!40024 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518447))

(declare-fun b!7518451 () Bool)

(declare-fun e!4482113 () Bool)

(declare-fun tp!2183123 () Bool)

(declare-fun tp!2183126 () Bool)

(assert (=> b!7518451 (= e!4482113 (and tp!2183123 tp!2183126))))

(declare-fun b!7518448 () Bool)

(assert (=> b!7518448 (= e!4482113 tp_is_empty!49843)))

(declare-fun b!7518450 () Bool)

(declare-fun tp!2183125 () Bool)

(assert (=> b!7518450 (= e!4482113 tp!2183125)))

(declare-fun b!7518449 () Bool)

(declare-fun tp!2183127 () Bool)

(declare-fun tp!2183124 () Bool)

(assert (=> b!7518449 (= e!4482113 (and tp!2183127 tp!2183124))))

(assert (=> b!7516960 (= tp!2182209 e!4482113)))

(assert (= (and b!7516960 (is-ElementMatch!19756 (reg!20085 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518448))

(assert (= (and b!7516960 (is-Concat!28601 (reg!20085 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518449))

(assert (= (and b!7516960 (is-Star!19756 (reg!20085 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518450))

(assert (= (and b!7516960 (is-Union!19756 (reg!20085 (regOne!40024 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518451))

(declare-fun b!7518455 () Bool)

(declare-fun e!4482114 () Bool)

(declare-fun tp!2183128 () Bool)

(declare-fun tp!2183131 () Bool)

(assert (=> b!7518455 (= e!4482114 (and tp!2183128 tp!2183131))))

(declare-fun b!7518452 () Bool)

(assert (=> b!7518452 (= e!4482114 tp_is_empty!49843)))

(declare-fun b!7518454 () Bool)

(declare-fun tp!2183130 () Bool)

(assert (=> b!7518454 (= e!4482114 tp!2183130)))

(declare-fun b!7518453 () Bool)

(declare-fun tp!2183132 () Bool)

(declare-fun tp!2183129 () Bool)

(assert (=> b!7518453 (= e!4482114 (and tp!2183132 tp!2183129))))

(assert (=> b!7517021 (= tp!2182282 e!4482114)))

(assert (= (and b!7517021 (is-ElementMatch!19756 (regOne!40025 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518452))

(assert (= (and b!7517021 (is-Concat!28601 (regOne!40025 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518453))

(assert (= (and b!7517021 (is-Star!19756 (regOne!40025 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518454))

(assert (= (and b!7517021 (is-Union!19756 (regOne!40025 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518455))

(declare-fun b!7518459 () Bool)

(declare-fun e!4482115 () Bool)

(declare-fun tp!2183133 () Bool)

(declare-fun tp!2183136 () Bool)

(assert (=> b!7518459 (= e!4482115 (and tp!2183133 tp!2183136))))

(declare-fun b!7518456 () Bool)

(assert (=> b!7518456 (= e!4482115 tp_is_empty!49843)))

(declare-fun b!7518458 () Bool)

(declare-fun tp!2183135 () Bool)

(assert (=> b!7518458 (= e!4482115 tp!2183135)))

(declare-fun b!7518457 () Bool)

(declare-fun tp!2183137 () Bool)

(declare-fun tp!2183134 () Bool)

(assert (=> b!7518457 (= e!4482115 (and tp!2183137 tp!2183134))))

(assert (=> b!7517021 (= tp!2182285 e!4482115)))

(assert (= (and b!7517021 (is-ElementMatch!19756 (regTwo!40025 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518456))

(assert (= (and b!7517021 (is-Concat!28601 (regTwo!40025 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518457))

(assert (= (and b!7517021 (is-Star!19756 (regTwo!40025 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518458))

(assert (= (and b!7517021 (is-Union!19756 (regTwo!40025 (regOne!40024 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518459))

(declare-fun b!7518463 () Bool)

(declare-fun e!4482116 () Bool)

(declare-fun tp!2183138 () Bool)

(declare-fun tp!2183141 () Bool)

(assert (=> b!7518463 (= e!4482116 (and tp!2183138 tp!2183141))))

(declare-fun b!7518460 () Bool)

(assert (=> b!7518460 (= e!4482116 tp_is_empty!49843)))

(declare-fun b!7518462 () Bool)

(declare-fun tp!2183140 () Bool)

(assert (=> b!7518462 (= e!4482116 tp!2183140)))

(declare-fun b!7518461 () Bool)

(declare-fun tp!2183142 () Bool)

(declare-fun tp!2183139 () Bool)

(assert (=> b!7518461 (= e!4482116 (and tp!2183142 tp!2183139))))

(assert (=> b!7517071 (= tp!2182351 e!4482116)))

(assert (= (and b!7517071 (is-ElementMatch!19756 (regOne!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518460))

(assert (= (and b!7517071 (is-Concat!28601 (regOne!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518461))

(assert (= (and b!7517071 (is-Star!19756 (regOne!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518462))

(assert (= (and b!7517071 (is-Union!19756 (regOne!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518463))

(declare-fun b!7518467 () Bool)

(declare-fun e!4482117 () Bool)

(declare-fun tp!2183143 () Bool)

(declare-fun tp!2183146 () Bool)

(assert (=> b!7518467 (= e!4482117 (and tp!2183143 tp!2183146))))

(declare-fun b!7518464 () Bool)

(assert (=> b!7518464 (= e!4482117 tp_is_empty!49843)))

(declare-fun b!7518466 () Bool)

(declare-fun tp!2183145 () Bool)

(assert (=> b!7518466 (= e!4482117 tp!2183145)))

(declare-fun b!7518465 () Bool)

(declare-fun tp!2183147 () Bool)

(declare-fun tp!2183144 () Bool)

(assert (=> b!7518465 (= e!4482117 (and tp!2183147 tp!2183144))))

(assert (=> b!7517071 (= tp!2182348 e!4482117)))

(assert (= (and b!7517071 (is-ElementMatch!19756 (regTwo!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518464))

(assert (= (and b!7517071 (is-Concat!28601 (regTwo!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518465))

(assert (= (and b!7517071 (is-Star!19756 (regTwo!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518466))

(assert (= (and b!7517071 (is-Union!19756 (regTwo!40024 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518467))

(declare-fun b!7518471 () Bool)

(declare-fun e!4482118 () Bool)

(declare-fun tp!2183148 () Bool)

(declare-fun tp!2183151 () Bool)

(assert (=> b!7518471 (= e!4482118 (and tp!2183148 tp!2183151))))

(declare-fun b!7518468 () Bool)

(assert (=> b!7518468 (= e!4482118 tp_is_empty!49843)))

(declare-fun b!7518470 () Bool)

(declare-fun tp!2183150 () Bool)

(assert (=> b!7518470 (= e!4482118 tp!2183150)))

(declare-fun b!7518469 () Bool)

(declare-fun tp!2183152 () Bool)

(declare-fun tp!2183149 () Bool)

(assert (=> b!7518469 (= e!4482118 (and tp!2183152 tp!2183149))))

(assert (=> b!7517012 (= tp!2182274 e!4482118)))

(assert (= (and b!7517012 (is-ElementMatch!19756 (reg!20085 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518468))

(assert (= (and b!7517012 (is-Concat!28601 (reg!20085 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518469))

(assert (= (and b!7517012 (is-Star!19756 (reg!20085 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518470))

(assert (= (and b!7517012 (is-Union!19756 (reg!20085 (regOne!40025 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518471))

(declare-fun b!7518475 () Bool)

(declare-fun e!4482119 () Bool)

(declare-fun tp!2183153 () Bool)

(declare-fun tp!2183156 () Bool)

(assert (=> b!7518475 (= e!4482119 (and tp!2183153 tp!2183156))))

(declare-fun b!7518472 () Bool)

(assert (=> b!7518472 (= e!4482119 tp_is_empty!49843)))

(declare-fun b!7518474 () Bool)

(declare-fun tp!2183155 () Bool)

(assert (=> b!7518474 (= e!4482119 tp!2183155)))

(declare-fun b!7518473 () Bool)

(declare-fun tp!2183157 () Bool)

(declare-fun tp!2183154 () Bool)

(assert (=> b!7518473 (= e!4482119 (and tp!2183157 tp!2183154))))

(assert (=> b!7517003 (= tp!2182266 e!4482119)))

(assert (= (and b!7517003 (is-ElementMatch!19756 (regOne!40024 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518472))

(assert (= (and b!7517003 (is-Concat!28601 (regOne!40024 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518473))

(assert (= (and b!7517003 (is-Star!19756 (regOne!40024 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518474))

(assert (= (and b!7517003 (is-Union!19756 (regOne!40024 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518475))

(declare-fun b!7518479 () Bool)

(declare-fun e!4482120 () Bool)

(declare-fun tp!2183158 () Bool)

(declare-fun tp!2183161 () Bool)

(assert (=> b!7518479 (= e!4482120 (and tp!2183158 tp!2183161))))

(declare-fun b!7518476 () Bool)

(assert (=> b!7518476 (= e!4482120 tp_is_empty!49843)))

(declare-fun b!7518478 () Bool)

(declare-fun tp!2183160 () Bool)

(assert (=> b!7518478 (= e!4482120 tp!2183160)))

(declare-fun b!7518477 () Bool)

(declare-fun tp!2183162 () Bool)

(declare-fun tp!2183159 () Bool)

(assert (=> b!7518477 (= e!4482120 (and tp!2183162 tp!2183159))))

(assert (=> b!7517003 (= tp!2182263 e!4482120)))

(assert (= (and b!7517003 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518476))

(assert (= (and b!7517003 (is-Concat!28601 (regTwo!40024 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518477))

(assert (= (and b!7517003 (is-Star!19756 (regTwo!40024 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518478))

(assert (= (and b!7517003 (is-Union!19756 (regTwo!40024 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518479))

(declare-fun b!7518483 () Bool)

(declare-fun e!4482121 () Bool)

(declare-fun tp!2183163 () Bool)

(declare-fun tp!2183166 () Bool)

(assert (=> b!7518483 (= e!4482121 (and tp!2183163 tp!2183166))))

(declare-fun b!7518480 () Bool)

(assert (=> b!7518480 (= e!4482121 tp_is_empty!49843)))

(declare-fun b!7518482 () Bool)

(declare-fun tp!2183165 () Bool)

(assert (=> b!7518482 (= e!4482121 tp!2183165)))

(declare-fun b!7518481 () Bool)

(declare-fun tp!2183167 () Bool)

(declare-fun tp!2183164 () Bool)

(assert (=> b!7518481 (= e!4482121 (and tp!2183167 tp!2183164))))

(assert (=> b!7517073 (= tp!2182347 e!4482121)))

(assert (= (and b!7517073 (is-ElementMatch!19756 (regOne!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518480))

(assert (= (and b!7517073 (is-Concat!28601 (regOne!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518481))

(assert (= (and b!7517073 (is-Star!19756 (regOne!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518482))

(assert (= (and b!7517073 (is-Union!19756 (regOne!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518483))

(declare-fun b!7518487 () Bool)

(declare-fun e!4482122 () Bool)

(declare-fun tp!2183168 () Bool)

(declare-fun tp!2183171 () Bool)

(assert (=> b!7518487 (= e!4482122 (and tp!2183168 tp!2183171))))

(declare-fun b!7518484 () Bool)

(assert (=> b!7518484 (= e!4482122 tp_is_empty!49843)))

(declare-fun b!7518486 () Bool)

(declare-fun tp!2183170 () Bool)

(assert (=> b!7518486 (= e!4482122 tp!2183170)))

(declare-fun b!7518485 () Bool)

(declare-fun tp!2183172 () Bool)

(declare-fun tp!2183169 () Bool)

(assert (=> b!7518485 (= e!4482122 (and tp!2183172 tp!2183169))))

(assert (=> b!7517073 (= tp!2182350 e!4482122)))

(assert (= (and b!7517073 (is-ElementMatch!19756 (regTwo!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518484))

(assert (= (and b!7517073 (is-Concat!28601 (regTwo!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518485))

(assert (= (and b!7517073 (is-Star!19756 (regTwo!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518486))

(assert (= (and b!7517073 (is-Union!19756 (regTwo!40025 (h!78967 (t!387280 (t!387280 (exprs!9008 c!7091))))))) b!7518487))

(declare-fun b!7518491 () Bool)

(declare-fun e!4482123 () Bool)

(declare-fun tp!2183173 () Bool)

(declare-fun tp!2183176 () Bool)

(assert (=> b!7518491 (= e!4482123 (and tp!2183173 tp!2183176))))

(declare-fun b!7518488 () Bool)

(assert (=> b!7518488 (= e!4482123 tp_is_empty!49843)))

(declare-fun b!7518490 () Bool)

(declare-fun tp!2183175 () Bool)

(assert (=> b!7518490 (= e!4482123 tp!2183175)))

(declare-fun b!7518489 () Bool)

(declare-fun tp!2183177 () Bool)

(declare-fun tp!2183174 () Bool)

(assert (=> b!7518489 (= e!4482123 (and tp!2183177 tp!2183174))))

(assert (=> b!7517064 (= tp!2182339 e!4482123)))

(assert (= (and b!7517064 (is-ElementMatch!19756 (reg!20085 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518488))

(assert (= (and b!7517064 (is-Concat!28601 (reg!20085 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518489))

(assert (= (and b!7517064 (is-Star!19756 (reg!20085 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518490))

(assert (= (and b!7517064 (is-Union!19756 (reg!20085 (regTwo!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518491))

(declare-fun b!7518495 () Bool)

(declare-fun e!4482124 () Bool)

(declare-fun tp!2183178 () Bool)

(declare-fun tp!2183181 () Bool)

(assert (=> b!7518495 (= e!4482124 (and tp!2183178 tp!2183181))))

(declare-fun b!7518492 () Bool)

(assert (=> b!7518492 (= e!4482124 tp_is_empty!49843)))

(declare-fun b!7518494 () Bool)

(declare-fun tp!2183180 () Bool)

(assert (=> b!7518494 (= e!4482124 tp!2183180)))

(declare-fun b!7518493 () Bool)

(declare-fun tp!2183182 () Bool)

(declare-fun tp!2183179 () Bool)

(assert (=> b!7518493 (= e!4482124 (and tp!2183182 tp!2183179))))

(assert (=> b!7517005 (= tp!2182262 e!4482124)))

(assert (= (and b!7517005 (is-ElementMatch!19756 (regOne!40025 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518492))

(assert (= (and b!7517005 (is-Concat!28601 (regOne!40025 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518493))

(assert (= (and b!7517005 (is-Star!19756 (regOne!40025 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518494))

(assert (= (and b!7517005 (is-Union!19756 (regOne!40025 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518495))

(declare-fun b!7518499 () Bool)

(declare-fun e!4482125 () Bool)

(declare-fun tp!2183183 () Bool)

(declare-fun tp!2183186 () Bool)

(assert (=> b!7518499 (= e!4482125 (and tp!2183183 tp!2183186))))

(declare-fun b!7518496 () Bool)

(assert (=> b!7518496 (= e!4482125 tp_is_empty!49843)))

(declare-fun b!7518498 () Bool)

(declare-fun tp!2183185 () Bool)

(assert (=> b!7518498 (= e!4482125 tp!2183185)))

(declare-fun b!7518497 () Bool)

(declare-fun tp!2183187 () Bool)

(declare-fun tp!2183184 () Bool)

(assert (=> b!7518497 (= e!4482125 (and tp!2183187 tp!2183184))))

(assert (=> b!7517005 (= tp!2182265 e!4482125)))

(assert (= (and b!7517005 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518496))

(assert (= (and b!7517005 (is-Concat!28601 (regTwo!40025 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518497))

(assert (= (and b!7517005 (is-Star!19756 (regTwo!40025 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518498))

(assert (= (and b!7517005 (is-Union!19756 (regTwo!40025 (regTwo!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518499))

(declare-fun b!7518503 () Bool)

(declare-fun e!4482126 () Bool)

(declare-fun tp!2183188 () Bool)

(declare-fun tp!2183191 () Bool)

(assert (=> b!7518503 (= e!4482126 (and tp!2183188 tp!2183191))))

(declare-fun b!7518500 () Bool)

(assert (=> b!7518500 (= e!4482126 tp_is_empty!49843)))

(declare-fun b!7518502 () Bool)

(declare-fun tp!2183190 () Bool)

(assert (=> b!7518502 (= e!4482126 tp!2183190)))

(declare-fun b!7518501 () Bool)

(declare-fun tp!2183192 () Bool)

(declare-fun tp!2183189 () Bool)

(assert (=> b!7518501 (= e!4482126 (and tp!2183192 tp!2183189))))

(assert (=> b!7517055 (= tp!2182331 e!4482126)))

(assert (= (and b!7517055 (is-ElementMatch!19756 (regOne!40024 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518500))

(assert (= (and b!7517055 (is-Concat!28601 (regOne!40024 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518501))

(assert (= (and b!7517055 (is-Star!19756 (regOne!40024 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518502))

(assert (= (and b!7517055 (is-Union!19756 (regOne!40024 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518503))

(declare-fun b!7518507 () Bool)

(declare-fun e!4482127 () Bool)

(declare-fun tp!2183193 () Bool)

(declare-fun tp!2183196 () Bool)

(assert (=> b!7518507 (= e!4482127 (and tp!2183193 tp!2183196))))

(declare-fun b!7518504 () Bool)

(assert (=> b!7518504 (= e!4482127 tp_is_empty!49843)))

(declare-fun b!7518506 () Bool)

(declare-fun tp!2183195 () Bool)

(assert (=> b!7518506 (= e!4482127 tp!2183195)))

(declare-fun b!7518505 () Bool)

(declare-fun tp!2183197 () Bool)

(declare-fun tp!2183194 () Bool)

(assert (=> b!7518505 (= e!4482127 (and tp!2183197 tp!2183194))))

(assert (=> b!7517055 (= tp!2182328 e!4482127)))

(assert (= (and b!7517055 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518504))

(assert (= (and b!7517055 (is-Concat!28601 (regTwo!40024 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518505))

(assert (= (and b!7517055 (is-Star!19756 (regTwo!40024 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518506))

(assert (= (and b!7517055 (is-Union!19756 (regTwo!40024 (regTwo!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518507))

(declare-fun b!7518511 () Bool)

(declare-fun e!4482128 () Bool)

(declare-fun tp!2183198 () Bool)

(declare-fun tp!2183201 () Bool)

(assert (=> b!7518511 (= e!4482128 (and tp!2183198 tp!2183201))))

(declare-fun b!7518508 () Bool)

(assert (=> b!7518508 (= e!4482128 tp_is_empty!49843)))

(declare-fun b!7518510 () Bool)

(declare-fun tp!2183200 () Bool)

(assert (=> b!7518510 (= e!4482128 tp!2183200)))

(declare-fun b!7518509 () Bool)

(declare-fun tp!2183202 () Bool)

(declare-fun tp!2183199 () Bool)

(assert (=> b!7518509 (= e!4482128 (and tp!2183202 tp!2183199))))

(assert (=> b!7517060 (= tp!2182334 e!4482128)))

(assert (= (and b!7517060 (is-ElementMatch!19756 (reg!20085 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518508))

(assert (= (and b!7517060 (is-Concat!28601 (reg!20085 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518509))

(assert (= (and b!7517060 (is-Star!19756 (reg!20085 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518510))

(assert (= (and b!7517060 (is-Union!19756 (reg!20085 (regOne!40025 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518511))

(declare-fun b!7518515 () Bool)

(declare-fun e!4482129 () Bool)

(declare-fun tp!2183203 () Bool)

(declare-fun tp!2183206 () Bool)

(assert (=> b!7518515 (= e!4482129 (and tp!2183203 tp!2183206))))

(declare-fun b!7518512 () Bool)

(assert (=> b!7518512 (= e!4482129 tp_is_empty!49843)))

(declare-fun b!7518514 () Bool)

(declare-fun tp!2183205 () Bool)

(assert (=> b!7518514 (= e!4482129 tp!2183205)))

(declare-fun b!7518513 () Bool)

(declare-fun tp!2183207 () Bool)

(declare-fun tp!2183204 () Bool)

(assert (=> b!7518513 (= e!4482129 (and tp!2183207 tp!2183204))))

(assert (=> b!7517051 (= tp!2182326 e!4482129)))

(assert (= (and b!7517051 (is-ElementMatch!19756 (regOne!40024 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518512))

(assert (= (and b!7517051 (is-Concat!28601 (regOne!40024 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518513))

(assert (= (and b!7517051 (is-Star!19756 (regOne!40024 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518514))

(assert (= (and b!7517051 (is-Union!19756 (regOne!40024 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518515))

(declare-fun b!7518519 () Bool)

(declare-fun e!4482130 () Bool)

(declare-fun tp!2183208 () Bool)

(declare-fun tp!2183211 () Bool)

(assert (=> b!7518519 (= e!4482130 (and tp!2183208 tp!2183211))))

(declare-fun b!7518516 () Bool)

(assert (=> b!7518516 (= e!4482130 tp_is_empty!49843)))

(declare-fun b!7518518 () Bool)

(declare-fun tp!2183210 () Bool)

(assert (=> b!7518518 (= e!4482130 tp!2183210)))

(declare-fun b!7518517 () Bool)

(declare-fun tp!2183212 () Bool)

(declare-fun tp!2183209 () Bool)

(assert (=> b!7518517 (= e!4482130 (and tp!2183212 tp!2183209))))

(assert (=> b!7517051 (= tp!2182323 e!4482130)))

(assert (= (and b!7517051 (is-ElementMatch!19756 (regTwo!40024 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518516))

(assert (= (and b!7517051 (is-Concat!28601 (regTwo!40024 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518517))

(assert (= (and b!7517051 (is-Star!19756 (regTwo!40024 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518518))

(assert (= (and b!7517051 (is-Union!19756 (regTwo!40024 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518519))

(declare-fun b!7518523 () Bool)

(declare-fun e!4482131 () Bool)

(declare-fun tp!2183213 () Bool)

(declare-fun tp!2183216 () Bool)

(assert (=> b!7518523 (= e!4482131 (and tp!2183213 tp!2183216))))

(declare-fun b!7518520 () Bool)

(assert (=> b!7518520 (= e!4482131 tp_is_empty!49843)))

(declare-fun b!7518522 () Bool)

(declare-fun tp!2183215 () Bool)

(assert (=> b!7518522 (= e!4482131 tp!2183215)))

(declare-fun b!7518521 () Bool)

(declare-fun tp!2183217 () Bool)

(declare-fun tp!2183214 () Bool)

(assert (=> b!7518521 (= e!4482131 (and tp!2183217 tp!2183214))))

(assert (=> b!7517001 (= tp!2182257 e!4482131)))

(assert (= (and b!7517001 (is-ElementMatch!19756 (regOne!40025 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518520))

(assert (= (and b!7517001 (is-Concat!28601 (regOne!40025 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518521))

(assert (= (and b!7517001 (is-Star!19756 (regOne!40025 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518522))

(assert (= (and b!7517001 (is-Union!19756 (regOne!40025 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518523))

(declare-fun b!7518527 () Bool)

(declare-fun e!4482132 () Bool)

(declare-fun tp!2183218 () Bool)

(declare-fun tp!2183221 () Bool)

(assert (=> b!7518527 (= e!4482132 (and tp!2183218 tp!2183221))))

(declare-fun b!7518524 () Bool)

(assert (=> b!7518524 (= e!4482132 tp_is_empty!49843)))

(declare-fun b!7518526 () Bool)

(declare-fun tp!2183220 () Bool)

(assert (=> b!7518526 (= e!4482132 tp!2183220)))

(declare-fun b!7518525 () Bool)

(declare-fun tp!2183222 () Bool)

(declare-fun tp!2183219 () Bool)

(assert (=> b!7518525 (= e!4482132 (and tp!2183222 tp!2183219))))

(assert (=> b!7517001 (= tp!2182260 e!4482132)))

(assert (= (and b!7517001 (is-ElementMatch!19756 (regTwo!40025 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518524))

(assert (= (and b!7517001 (is-Concat!28601 (regTwo!40025 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518525))

(assert (= (and b!7517001 (is-Star!19756 (regTwo!40025 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518526))

(assert (= (and b!7517001 (is-Union!19756 (regTwo!40025 (regOne!40024 (regTwo!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518527))

(declare-fun b!7518531 () Bool)

(declare-fun e!4482133 () Bool)

(declare-fun tp!2183223 () Bool)

(declare-fun tp!2183226 () Bool)

(assert (=> b!7518531 (= e!4482133 (and tp!2183223 tp!2183226))))

(declare-fun b!7518528 () Bool)

(assert (=> b!7518528 (= e!4482133 tp_is_empty!49843)))

(declare-fun b!7518530 () Bool)

(declare-fun tp!2183225 () Bool)

(assert (=> b!7518530 (= e!4482133 tp!2183225)))

(declare-fun b!7518529 () Bool)

(declare-fun tp!2183227 () Bool)

(declare-fun tp!2183224 () Bool)

(assert (=> b!7518529 (= e!4482133 (and tp!2183227 tp!2183224))))

(assert (=> b!7516992 (= tp!2182249 e!4482133)))

(assert (= (and b!7516992 (is-ElementMatch!19756 (reg!20085 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518528))

(assert (= (and b!7516992 (is-Concat!28601 (reg!20085 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518529))

(assert (= (and b!7516992 (is-Star!19756 (reg!20085 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518530))

(assert (= (and b!7516992 (is-Union!19756 (reg!20085 (regTwo!40025 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518531))

(declare-fun b!7518535 () Bool)

(declare-fun e!4482134 () Bool)

(declare-fun tp!2183228 () Bool)

(declare-fun tp!2183231 () Bool)

(assert (=> b!7518535 (= e!4482134 (and tp!2183228 tp!2183231))))

(declare-fun b!7518532 () Bool)

(assert (=> b!7518532 (= e!4482134 tp_is_empty!49843)))

(declare-fun b!7518534 () Bool)

(declare-fun tp!2183230 () Bool)

(assert (=> b!7518534 (= e!4482134 tp!2183230)))

(declare-fun b!7518533 () Bool)

(declare-fun tp!2183232 () Bool)

(declare-fun tp!2183229 () Bool)

(assert (=> b!7518533 (= e!4482134 (and tp!2183232 tp!2183229))))

(assert (=> b!7516983 (= tp!2182241 e!4482134)))

(assert (= (and b!7516983 (is-ElementMatch!19756 (regOne!40024 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518532))

(assert (= (and b!7516983 (is-Concat!28601 (regOne!40024 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518533))

(assert (= (and b!7516983 (is-Star!19756 (regOne!40024 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518534))

(assert (= (and b!7516983 (is-Union!19756 (regOne!40024 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518535))

(declare-fun b!7518539 () Bool)

(declare-fun e!4482135 () Bool)

(declare-fun tp!2183233 () Bool)

(declare-fun tp!2183236 () Bool)

(assert (=> b!7518539 (= e!4482135 (and tp!2183233 tp!2183236))))

(declare-fun b!7518536 () Bool)

(assert (=> b!7518536 (= e!4482135 tp_is_empty!49843)))

(declare-fun b!7518538 () Bool)

(declare-fun tp!2183235 () Bool)

(assert (=> b!7518538 (= e!4482135 tp!2183235)))

(declare-fun b!7518537 () Bool)

(declare-fun tp!2183237 () Bool)

(declare-fun tp!2183234 () Bool)

(assert (=> b!7518537 (= e!4482135 (and tp!2183237 tp!2183234))))

(assert (=> b!7516983 (= tp!2182238 e!4482135)))

(assert (= (and b!7516983 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518536))

(assert (= (and b!7516983 (is-Concat!28601 (regTwo!40024 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518537))

(assert (= (and b!7516983 (is-Star!19756 (regTwo!40024 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518538))

(assert (= (and b!7516983 (is-Union!19756 (regTwo!40024 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518539))

(declare-fun b!7518543 () Bool)

(declare-fun e!4482136 () Bool)

(declare-fun tp!2183238 () Bool)

(declare-fun tp!2183241 () Bool)

(assert (=> b!7518543 (= e!4482136 (and tp!2183238 tp!2183241))))

(declare-fun b!7518540 () Bool)

(assert (=> b!7518540 (= e!4482136 tp_is_empty!49843)))

(declare-fun b!7518542 () Bool)

(declare-fun tp!2183240 () Bool)

(assert (=> b!7518542 (= e!4482136 tp!2183240)))

(declare-fun b!7518541 () Bool)

(declare-fun tp!2183242 () Bool)

(declare-fun tp!2183239 () Bool)

(assert (=> b!7518541 (= e!4482136 (and tp!2183242 tp!2183239))))

(assert (=> b!7517077 (= tp!2182356 e!4482136)))

(assert (= (and b!7517077 (is-ElementMatch!19756 (reg!20085 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518540))

(assert (= (and b!7517077 (is-Concat!28601 (reg!20085 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518541))

(assert (= (and b!7517077 (is-Star!19756 (reg!20085 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518542))

(assert (= (and b!7517077 (is-Union!19756 (reg!20085 (regOne!40025 (regOne!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518543))

(declare-fun b!7518547 () Bool)

(declare-fun e!4482137 () Bool)

(declare-fun tp!2183243 () Bool)

(declare-fun tp!2183246 () Bool)

(assert (=> b!7518547 (= e!4482137 (and tp!2183243 tp!2183246))))

(declare-fun b!7518544 () Bool)

(assert (=> b!7518544 (= e!4482137 tp_is_empty!49843)))

(declare-fun b!7518546 () Bool)

(declare-fun tp!2183245 () Bool)

(assert (=> b!7518546 (= e!4482137 tp!2183245)))

(declare-fun b!7518545 () Bool)

(declare-fun tp!2183247 () Bool)

(declare-fun tp!2183244 () Bool)

(assert (=> b!7518545 (= e!4482137 (and tp!2183247 tp!2183244))))

(assert (=> b!7517053 (= tp!2182322 e!4482137)))

(assert (= (and b!7517053 (is-ElementMatch!19756 (regOne!40025 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518544))

(assert (= (and b!7517053 (is-Concat!28601 (regOne!40025 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518545))

(assert (= (and b!7517053 (is-Star!19756 (regOne!40025 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518546))

(assert (= (and b!7517053 (is-Union!19756 (regOne!40025 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518547))

(declare-fun b!7518551 () Bool)

(declare-fun e!4482138 () Bool)

(declare-fun tp!2183248 () Bool)

(declare-fun tp!2183251 () Bool)

(assert (=> b!7518551 (= e!4482138 (and tp!2183248 tp!2183251))))

(declare-fun b!7518548 () Bool)

(assert (=> b!7518548 (= e!4482138 tp_is_empty!49843)))

(declare-fun b!7518550 () Bool)

(declare-fun tp!2183250 () Bool)

(assert (=> b!7518550 (= e!4482138 tp!2183250)))

(declare-fun b!7518549 () Bool)

(declare-fun tp!2183252 () Bool)

(declare-fun tp!2183249 () Bool)

(assert (=> b!7518549 (= e!4482138 (and tp!2183252 tp!2183249))))

(assert (=> b!7517053 (= tp!2182325 e!4482138)))

(assert (= (and b!7517053 (is-ElementMatch!19756 (regTwo!40025 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518548))

(assert (= (and b!7517053 (is-Concat!28601 (regTwo!40025 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518549))

(assert (= (and b!7517053 (is-Star!19756 (regTwo!40025 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518550))

(assert (= (and b!7517053 (is-Union!19756 (regTwo!40025 (regOne!40025 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518551))

(declare-fun b!7518555 () Bool)

(declare-fun e!4482139 () Bool)

(declare-fun tp!2183253 () Bool)

(declare-fun tp!2183256 () Bool)

(assert (=> b!7518555 (= e!4482139 (and tp!2183253 tp!2183256))))

(declare-fun b!7518552 () Bool)

(assert (=> b!7518552 (= e!4482139 tp_is_empty!49843)))

(declare-fun b!7518554 () Bool)

(declare-fun tp!2183255 () Bool)

(assert (=> b!7518554 (= e!4482139 tp!2183255)))

(declare-fun b!7518553 () Bool)

(declare-fun tp!2183257 () Bool)

(declare-fun tp!2183254 () Bool)

(assert (=> b!7518553 (= e!4482139 (and tp!2183257 tp!2183254))))

(assert (=> b!7517044 (= tp!2182314 e!4482139)))

(assert (= (and b!7517044 (is-ElementMatch!19756 (reg!20085 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518552))

(assert (= (and b!7517044 (is-Concat!28601 (reg!20085 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518553))

(assert (= (and b!7517044 (is-Star!19756 (reg!20085 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518554))

(assert (= (and b!7517044 (is-Union!19756 (reg!20085 (regTwo!40024 (regTwo!40024 (h!78967 (exprs!9008 c!7091))))))) b!7518555))

(declare-fun b!7518559 () Bool)

(declare-fun e!4482140 () Bool)

(declare-fun tp!2183258 () Bool)

(declare-fun tp!2183261 () Bool)

(assert (=> b!7518559 (= e!4482140 (and tp!2183258 tp!2183261))))

(declare-fun b!7518556 () Bool)

(assert (=> b!7518556 (= e!4482140 tp_is_empty!49843)))

(declare-fun b!7518558 () Bool)

(declare-fun tp!2183260 () Bool)

(assert (=> b!7518558 (= e!4482140 tp!2183260)))

(declare-fun b!7518557 () Bool)

(declare-fun tp!2183262 () Bool)

(declare-fun tp!2183259 () Bool)

(assert (=> b!7518557 (= e!4482140 (and tp!2183262 tp!2183259))))

(assert (=> b!7516985 (= tp!2182237 e!4482140)))

(assert (= (and b!7516985 (is-ElementMatch!19756 (regOne!40025 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518556))

(assert (= (and b!7516985 (is-Concat!28601 (regOne!40025 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518557))

(assert (= (and b!7516985 (is-Star!19756 (regOne!40025 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518558))

(assert (= (and b!7516985 (is-Union!19756 (regOne!40025 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518559))

(declare-fun b!7518563 () Bool)

(declare-fun e!4482141 () Bool)

(declare-fun tp!2183263 () Bool)

(declare-fun tp!2183266 () Bool)

(assert (=> b!7518563 (= e!4482141 (and tp!2183263 tp!2183266))))

(declare-fun b!7518560 () Bool)

(assert (=> b!7518560 (= e!4482141 tp_is_empty!49843)))

(declare-fun b!7518562 () Bool)

(declare-fun tp!2183265 () Bool)

(assert (=> b!7518562 (= e!4482141 tp!2183265)))

(declare-fun b!7518561 () Bool)

(declare-fun tp!2183267 () Bool)

(declare-fun tp!2183264 () Bool)

(assert (=> b!7518561 (= e!4482141 (and tp!2183267 tp!2183264))))

(assert (=> b!7516985 (= tp!2182240 e!4482141)))

(assert (= (and b!7516985 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518560))

(assert (= (and b!7516985 (is-Concat!28601 (regTwo!40025 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518561))

(assert (= (and b!7516985 (is-Star!19756 (regTwo!40025 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518562))

(assert (= (and b!7516985 (is-Union!19756 (regTwo!40025 (regTwo!40024 (regOne!40025 (h!78967 (exprs!9008 c!7091))))))) b!7518563))

(declare-fun b!7518567 () Bool)

(declare-fun e!4482142 () Bool)

(declare-fun tp!2183268 () Bool)

(declare-fun tp!2183271 () Bool)

(assert (=> b!7518567 (= e!4482142 (and tp!2183268 tp!2183271))))

(declare-fun b!7518564 () Bool)

(assert (=> b!7518564 (= e!4482142 tp_is_empty!49843)))

(declare-fun b!7518566 () Bool)

(declare-fun tp!2183270 () Bool)

(assert (=> b!7518566 (= e!4482142 tp!2183270)))

(declare-fun b!7518565 () Bool)

(declare-fun tp!2183272 () Bool)

(declare-fun tp!2183269 () Bool)

(assert (=> b!7518565 (= e!4482142 (and tp!2183272 tp!2183269))))

(assert (=> b!7517035 (= tp!2182306 e!4482142)))

(assert (= (and b!7517035 (is-ElementMatch!19756 (regOne!40024 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518564))

(assert (= (and b!7517035 (is-Concat!28601 (regOne!40024 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518565))

(assert (= (and b!7517035 (is-Star!19756 (regOne!40024 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518566))

(assert (= (and b!7517035 (is-Union!19756 (regOne!40024 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518567))

(declare-fun b!7518571 () Bool)

(declare-fun e!4482143 () Bool)

(declare-fun tp!2183273 () Bool)

(declare-fun tp!2183276 () Bool)

(assert (=> b!7518571 (= e!4482143 (and tp!2183273 tp!2183276))))

(declare-fun b!7518568 () Bool)

(assert (=> b!7518568 (= e!4482143 tp_is_empty!49843)))

(declare-fun b!7518570 () Bool)

(declare-fun tp!2183275 () Bool)

(assert (=> b!7518570 (= e!4482143 tp!2183275)))

(declare-fun b!7518569 () Bool)

(declare-fun tp!2183277 () Bool)

(declare-fun tp!2183274 () Bool)

(assert (=> b!7518569 (= e!4482143 (and tp!2183277 tp!2183274))))

(assert (=> b!7517035 (= tp!2182303 e!4482143)))

(assert (= (and b!7517035 (is-ElementMatch!19756 (regTwo!40024 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518568))

(assert (= (and b!7517035 (is-Concat!28601 (regTwo!40024 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518569))

(assert (= (and b!7517035 (is-Star!19756 (regTwo!40024 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518570))

(assert (= (and b!7517035 (is-Union!19756 (regTwo!40024 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518571))

(declare-fun b!7518575 () Bool)

(declare-fun e!4482144 () Bool)

(declare-fun tp!2183278 () Bool)

(declare-fun tp!2183281 () Bool)

(assert (=> b!7518575 (= e!4482144 (and tp!2183278 tp!2183281))))

(declare-fun b!7518572 () Bool)

(assert (=> b!7518572 (= e!4482144 tp_is_empty!49843)))

(declare-fun b!7518574 () Bool)

(declare-fun tp!2183280 () Bool)

(assert (=> b!7518574 (= e!4482144 tp!2183280)))

(declare-fun b!7518573 () Bool)

(declare-fun tp!2183282 () Bool)

(declare-fun tp!2183279 () Bool)

(assert (=> b!7518573 (= e!4482144 (and tp!2183282 tp!2183279))))

(assert (=> b!7516976 (= tp!2182229 e!4482144)))

(assert (= (and b!7516976 (is-ElementMatch!19756 (reg!20085 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518572))

(assert (= (and b!7516976 (is-Concat!28601 (reg!20085 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518573))

(assert (= (and b!7516976 (is-Star!19756 (reg!20085 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518574))

(assert (= (and b!7516976 (is-Union!19756 (reg!20085 (regTwo!40024 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518575))

(declare-fun b!7518579 () Bool)

(declare-fun e!4482145 () Bool)

(declare-fun tp!2183283 () Bool)

(declare-fun tp!2183286 () Bool)

(assert (=> b!7518579 (= e!4482145 (and tp!2183283 tp!2183286))))

(declare-fun b!7518576 () Bool)

(assert (=> b!7518576 (= e!4482145 tp_is_empty!49843)))

(declare-fun b!7518578 () Bool)

(declare-fun tp!2183285 () Bool)

(assert (=> b!7518578 (= e!4482145 tp!2183285)))

(declare-fun b!7518577 () Bool)

(declare-fun tp!2183287 () Bool)

(declare-fun tp!2183284 () Bool)

(assert (=> b!7518577 (= e!4482145 (and tp!2183287 tp!2183284))))

(assert (=> b!7516967 (= tp!2182221 e!4482145)))

(assert (= (and b!7516967 (is-ElementMatch!19756 (regOne!40024 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518576))

(assert (= (and b!7516967 (is-Concat!28601 (regOne!40024 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518577))

(assert (= (and b!7516967 (is-Star!19756 (regOne!40024 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518578))

(assert (= (and b!7516967 (is-Union!19756 (regOne!40024 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518579))

(declare-fun b!7518583 () Bool)

(declare-fun e!4482146 () Bool)

(declare-fun tp!2183288 () Bool)

(declare-fun tp!2183291 () Bool)

(assert (=> b!7518583 (= e!4482146 (and tp!2183288 tp!2183291))))

(declare-fun b!7518580 () Bool)

(assert (=> b!7518580 (= e!4482146 tp_is_empty!49843)))

(declare-fun b!7518582 () Bool)

(declare-fun tp!2183290 () Bool)

(assert (=> b!7518582 (= e!4482146 tp!2183290)))

(declare-fun b!7518581 () Bool)

(declare-fun tp!2183292 () Bool)

(declare-fun tp!2183289 () Bool)

(assert (=> b!7518581 (= e!4482146 (and tp!2183292 tp!2183289))))

(assert (=> b!7516967 (= tp!2182218 e!4482146)))

(assert (= (and b!7516967 (is-ElementMatch!19756 (regTwo!40024 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518580))

(assert (= (and b!7516967 (is-Concat!28601 (regTwo!40024 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518581))

(assert (= (and b!7516967 (is-Star!19756 (regTwo!40024 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518582))

(assert (= (and b!7516967 (is-Union!19756 (regTwo!40024 (reg!20085 (h!78967 (t!387280 (exprs!9008 c!7091))))))) b!7518583))

(declare-fun b!7518587 () Bool)

(declare-fun e!4482147 () Bool)

(declare-fun tp!2183293 () Bool)

(declare-fun tp!2183296 () Bool)

(assert (=> b!7518587 (= e!4482147 (and tp!2183293 tp!2183296))))

(declare-fun b!7518584 () Bool)

(assert (=> b!7518584 (= e!4482147 tp_is_empty!49843)))

(declare-fun b!7518586 () Bool)

(declare-fun tp!2183295 () Bool)

(assert (=> b!7518586 (= e!4482147 tp!2183295)))

(declare-fun b!7518585 () Bool)

(declare-fun tp!2183297 () Bool)

(declare-fun tp!2183294 () Bool)

(assert (=> b!7518585 (= e!4482147 (and tp!2183297 tp!2183294))))

(assert (=> b!7517037 (= tp!2182302 e!4482147)))

(assert (= (and b!7517037 (is-ElementMatch!19756 (regOne!40025 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518584))

(assert (= (and b!7517037 (is-Concat!28601 (regOne!40025 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518585))

(assert (= (and b!7517037 (is-Star!19756 (regOne!40025 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518586))

(assert (= (and b!7517037 (is-Union!19756 (regOne!40025 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518587))

(declare-fun b!7518591 () Bool)

(declare-fun e!4482148 () Bool)

(declare-fun tp!2183298 () Bool)

(declare-fun tp!2183301 () Bool)

(assert (=> b!7518591 (= e!4482148 (and tp!2183298 tp!2183301))))

(declare-fun b!7518588 () Bool)

(assert (=> b!7518588 (= e!4482148 tp_is_empty!49843)))

(declare-fun b!7518590 () Bool)

(declare-fun tp!2183300 () Bool)

(assert (=> b!7518590 (= e!4482148 tp!2183300)))

(declare-fun b!7518589 () Bool)

(declare-fun tp!2183302 () Bool)

(declare-fun tp!2183299 () Bool)

(assert (=> b!7518589 (= e!4482148 (and tp!2183302 tp!2183299))))

(assert (=> b!7517037 (= tp!2182305 e!4482148)))

(assert (= (and b!7517037 (is-ElementMatch!19756 (regTwo!40025 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518588))

(assert (= (and b!7517037 (is-Concat!28601 (regTwo!40025 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518589))

(assert (= (and b!7517037 (is-Star!19756 (regTwo!40025 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518590))

(assert (= (and b!7517037 (is-Union!19756 (regTwo!40025 (regTwo!40025 (reg!20085 (h!78967 (exprs!9008 c!7091))))))) b!7518591))

(declare-fun b_lambda!288411 () Bool)

(assert (= b_lambda!288407 (or d!2307918 b_lambda!288411)))

(declare-fun bs!1939426 () Bool)

(declare-fun d!2308418 () Bool)

(assert (= bs!1939426 (and d!2308418 d!2307918)))

(assert (=> bs!1939426 (= (dynLambda!29850 lambda!466260 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))))) (validRegex!10192 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))))))))

(declare-fun m!8099152 () Bool)

(assert (=> bs!1939426 m!8099152))

(assert (=> b!7517468 d!2308418))

(declare-fun b_lambda!288413 () Bool)

(assert (= b_lambda!288409 (or d!2307920 b_lambda!288413)))

(declare-fun bs!1939427 () Bool)

(declare-fun d!2308420 () Bool)

(assert (= bs!1939427 (and d!2308420 d!2307920)))

(assert (=> bs!1939427 (= (dynLambda!29850 lambda!466264 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091)))))) (not (dynLambda!29850 lambda!466252 (h!78967 (t!387280 (t!387280 (t!387280 (exprs!9008 c!7091))))))))))

(declare-fun b_lambda!288415 () Bool)

(assert (=> (not b_lambda!288415) (not bs!1939427)))

(declare-fun m!8099154 () Bool)

(assert (=> bs!1939427 m!8099154))

(assert (=> b!7517669 d!2308420))

(push 1)

(assert (not b!7517487))

(assert (not b!7518002))

(assert (not b!7517781))

(assert (not b!7517996))

(assert (not b!7518096))

(assert (not b!7518442))

(assert (not b!7518421))

(assert (not b!7517463))

(assert (not b!7517973))

(assert (not b!7518076))

(assert (not b!7518357))

(assert (not b!7518280))

(assert (not b!7518142))

(assert (not b!7517923))

(assert (not b!7517542))

(assert (not b!7518205))

(assert (not b!7518534))

(assert (not b!7518300))

(assert (not b!7518045))

(assert (not b!7518338))

(assert (not b!7518169))

(assert (not b!7518124))

(assert (not b!7518445))

(assert (not bm!689443))

(assert (not b!7518433))

(assert (not b!7518161))

(assert (not b!7518016))

(assert (not b!7518426))

(assert (not b!7518531))

(assert (not b!7517541))

(assert (not b!7517493))

(assert (not b!7518567))

(assert (not b!7517662))

(assert (not b!7518396))

(assert (not b!7518181))

(assert (not b!7518417))

(assert (not b!7518197))

(assert (not b!7518526))

(assert (not b!7517657))

(assert (not b!7518344))

(assert (not b!7518138))

(assert (not b!7518513))

(assert (not b!7518184))

(assert (not b!7518381))

(assert (not b!7518430))

(assert (not bm!689450))

(assert (not b!7517596))

(assert (not b!7518158))

(assert (not b!7517735))

(assert (not b!7518409))

(assert (not b!7518558))

(assert (not b!7518349))

(assert (not b!7517598))

(assert (not bm!689486))

(assert (not b!7518066))

(assert (not b!7518326))

(assert (not b!7517863))

(assert (not bm!689431))

(assert (not bm!689427))

(assert (not b!7518317))

(assert (not b!7518547))

(assert (not b!7517899))

(assert (not b!7518551))

(assert (not b!7518198))

(assert (not b!7518026))

(assert (not b!7517594))

(assert (not b!7518217))

(assert (not b!7518244))

(assert (not b!7517958))

(assert (not d!2308288))

(assert (not b!7517625))

(assert (not d!2308282))

(assert (not b!7518234))

(assert (not b!7517921))

(assert (not b!7518037))

(assert (not b!7518498))

(assert (not b!7518571))

(assert (not b!7518137))

(assert (not b!7518102))

(assert (not b!7518334))

(assert (not b!7517947))

(assert (not b!7517994))

(assert (not b!7518341))

(assert (not b!7518053))

(assert (not b!7517600))

(assert (not bm!689458))

(assert (not b!7518529))

(assert (not b!7517494))

(assert (not b!7518196))

(assert (not b!7518116))

(assert (not b!7517507))

(assert (not b!7518148))

(assert (not b!7518040))

(assert (not b!7518333))

(assert (not b!7517783))

(assert (not b!7517592))

(assert (not b!7518449))

(assert (not b!7518486))

(assert (not b!7518465))

(assert (not b!7518180))

(assert (not b!7518539))

(assert (not b!7518545))

(assert (not b!7518172))

(assert (not b!7518296))

(assert (not b!7518182))

(assert (not b!7517972))

(assert (not b!7518278))

(assert (not b!7518252))

(assert (not b!7518437))

(assert (not b!7518369))

(assert (not b!7518140))

(assert (not b!7518081))

(assert (not b!7517457))

(assert (not b!7518144))

(assert (not bm!689445))

(assert (not b!7518503))

(assert (not bm!689434))

(assert (not b!7518533))

(assert (not b!7518342))

(assert (not b_lambda!288373))

(assert (not b!7518542))

(assert (not b!7518049))

(assert (not d!2308338))

(assert (not b!7518578))

(assert (not b!7518028))

(assert (not b!7518312))

(assert (not b!7517869))

(assert (not b!7518032))

(assert (not b!7517985))

(assert (not b!7518185))

(assert (not b!7518146))

(assert (not b!7517897))

(assert (not b!7518368))

(assert (not b!7518232))

(assert (not b!7518377))

(assert (not b!7518080))

(assert (not b!7517787))

(assert (not b!7517491))

(assert (not b!7518152))

(assert (not bm!689457))

(assert (not b_lambda!288389))

(assert (not b!7518495))

(assert (not b!7518029))

(assert (not b!7518145))

(assert (not b!7517561))

(assert (not b!7518036))

(assert (not b!7517612))

(assert (not b!7518070))

(assert (not b!7518586))

(assert (not b!7518052))

(assert (not b!7518340))

(assert (not b!7517774))

(assert (not b!7518033))

(assert (not b!7518141))

(assert (not b!7517724))

(assert (not d!2308326))

(assert (not b!7518380))

(assert (not b!7518105))

(assert (not b!7518425))

(assert (not b!7518431))

(assert (not b!7518438))

(assert (not b!7518245))

(assert (not b!7517489))

(assert (not b!7518072))

(assert (not b!7518104))

(assert (not b!7517465))

(assert (not b!7517977))

(assert (not b!7517621))

(assert (not b!7518216))

(assert (not b!7518018))

(assert (not b!7518108))

(assert (not b!7518233))

(assert (not b!7518376))

(assert (not b!7518450))

(assert (not b!7518292))

(assert (not b!7518406))

(assert (not bm!689478))

(assert (not b!7518591))

(assert (not b!7518092))

(assert (not b!7518403))

(assert (not b!7518538))

(assert (not b!7518481))

(assert (not b!7518453))

(assert (not b!7518394))

(assert (not b!7517966))

(assert (not b!7518378))

(assert (not b!7518276))

(assert (not b!7518078))

(assert (not b!7518228))

(assert (not b!7518254))

(assert (not b!7518270))

(assert (not b!7518507))

(assert (not b!7517461))

(assert (not b!7518490))

(assert (not b!7518330))

(assert (not b!7518229))

(assert (not b!7518566))

(assert (not b!7518038))

(assert (not d!2308294))

(assert (not b!7518133))

(assert (not b!7517777))

(assert (not b!7518208))

(assert (not b!7518006))

(assert (not d!2308332))

(assert (not b!7518305))

(assert (not b!7518176))

(assert (not b!7518405))

(assert (not b!7518451))

(assert (not b!7517655))

(assert (not b!7518281))

(assert (not b!7518402))

(assert (not b!7518364))

(assert (not b!7517919))

(assert (not b!7518346))

(assert (not b!7518559))

(assert (not b!7518441))

(assert (not bm!689436))

(assert (not b!7518249))

(assert (not b!7518365))

(assert (not b!7518527))

(assert (not b!7517779))

(assert (not b!7518042))

(assert (not b!7518194))

(assert (not b!7518121))

(assert (not b!7518165))

(assert (not b_lambda!288415))

(assert (not bm!689438))

(assert (not b!7518373))

(assert (not b!7518510))

(assert (not b!7518260))

(assert (not b!7518166))

(assert (not b!7518258))

(assert (not b!7517469))

(assert (not b!7518423))

(assert (not b!7518577))

(assert (not b!7518170))

(assert (not bm!689476))

(assert (not b!7518557))

(assert (not b!7518535))

(assert (not b!7517752))

(assert (not bm!689428))

(assert (not b!7518109))

(assert (not b!7518350))

(assert (not d!2308306))

(assert (not b!7517773))

(assert (not b!7518393))

(assert (not b!7517892))

(assert (not b!7518110))

(assert (not b!7518097))

(assert (not b!7518358))

(assert (not b!7517982))

(assert (not b!7518525))

(assert (not b!7518458))

(assert (not b!7517932))

(assert (not d!2308220))

(assert (not b!7518429))

(assert (not b!7517659))

(assert (not b!7518585))

(assert (not b!7518361))

(assert (not d!2308410))

(assert (not d!2308226))

(assert (not b!7518455))

(assert (not b!7517620))

(assert (not b!7518397))

(assert (not b!7518001))

(assert (not b!7518134))

(assert (not b!7518241))

(assert (not b!7517986))

(assert (not b!7518178))

(assert (not b!7518126))

(assert (not b!7518310))

(assert (not b!7518128))

(assert (not b!7518422))

(assert (not b!7518337))

(assert (not b!7518479))

(assert (not b_lambda!288405))

(assert (not b!7517481))

(assert (not b!7517981))

(assert (not b!7518098))

(assert (not b!7518065))

(assert (not b!7518046))

(assert (not b!7517929))

(assert (not b!7517826))

(assert (not b!7518273))

(assert (not b!7518262))

(assert (not b!7518118))

(assert (not b!7518582))

(assert (not b!7518463))

(assert (not d!2308378))

(assert (not b!7518562))

(assert (not b!7518236))

(assert (not b!7518190))

(assert (not b!7517976))

(assert (not bm!689451))

(assert (not b!7518293))

(assert (not b!7518222))

(assert (not b!7518301))

(assert (not b!7518398))

(assert (not b!7518471))

(assert (not b!7518502))

(assert (not bm!689430))

(assert (not b!7518192))

(assert (not b!7517730))

(assert (not b!7518462))

(assert (not b!7517704))

(assert (not b!7518298))

(assert (not b!7518523))

(assert (not b!7518555))

(assert (not b!7518309))

(assert (not b!7518413))

(assert (not b!7517753))

(assert (not b!7518265))

(assert (not b!7518200))

(assert (not b!7518060))

(assert (not b!7518561))

(assert (not b!7518084))

(assert (not b!7518168))

(assert (not b!7518530))

(assert (not bm!689469))

(assert (not b!7518325))

(assert (not b!7518164))

(assert (not b!7518518))

(assert (not b!7518382))

(assert (not b!7518100))

(assert (not b!7518583))

(assert (not b!7518129))

(assert (not b!7518302))

(assert (not b!7518004))

(assert (not b!7518494))

(assert (not b!7518077))

(assert (not b!7518284))

(assert (not bm!689463))

(assert (not b!7517743))

(assert (not b!7517653))

(assert (not b_lambda!288411))

(assert (not b!7518212))

(assert (not bm!689464))

(assert (not b!7518362))

(assert (not b!7518370))

(assert (not b!7518505))

(assert (not b!7518306))

(assert (not b!7518013))

(assert (not b!7518587))

(assert (not b!7518257))

(assert (not b!7517728))

(assert (not b!7517785))

(assert (not b!7517968))

(assert (not b!7518554))

(assert (not b!7517649))

(assert (not b!7518206))

(assert (not b!7517990))

(assert (not b!7518386))

(assert (not b!7518000))

(assert (not b!7518392))

(assert (not b!7518521))

(assert (not b!7518086))

(assert (not b!7518089))

(assert (not d!2308374))

(assert (not b!7517974))

(assert (not bm!689432))

(assert (not b!7518048))

(assert (not b!7518418))

(assert (not b!7518467))

(assert (not b!7518447))

(assert (not b!7518399))

(assert (not bm!689452))

(assert (not b!7518157))

(assert (not b!7517466))

(assert (not b!7518017))

(assert (not b!7518514))

(assert (not b!7518318))

(assert (not b!7517535))

(assert (not b!7518218))

(assert (not b!7518461))

(assert (not b!7518054))

(assert (not b!7517885))

(assert (not b!7518240))

(assert (not b!7518470))

(assert (not b!7518329))

(assert (not b!7517523))

(assert (not b!7518256))

(assert (not bm!689459))

(assert (not b!7518509))

(assert (not b!7517643))

(assert (not bm!689455))

(assert (not b!7517758))

(assert (not b!7518153))

(assert (not b!7518174))

(assert (not d!2308344))

(assert (not b!7518385))

(assert (not b!7518288))

(assert (not b!7518005))

(assert (not b!7518090))

(assert (not b!7518064))

(assert (not b!7518112))

(assert (not bm!689426))

(assert (not b!7518401))

(assert (not bm!689460))

(assert (not bm!689479))

(assert (not b!7518289))

(assert (not b!7518411))

(assert (not b!7518443))

(assert (not b!7518237))

(assert (not bm!689440))

(assert (not bm!689477))

(assert (not b!7518304))

(assert (not b!7518162))

(assert (not b!7518189))

(assert (not b!7518366))

(assert (not bm!689454))

(assert (not b!7518088))

(assert (not b!7517562))

(assert (not b!7518590))

(assert (not b!7518150))

(assert (not b!7518073))

(assert (not b!7518314))

(assert (not b!7518541))

(assert (not b!7518575))

(assert (not b!7518410))

(assert (not b!7518248))

(assert (not b!7517762))

(assert (not bs!1939426))

(assert (not b!7518253))

(assert (not d!2308334))

(assert (not bm!689465))

(assert (not b!7517716))

(assert (not b!7517590))

(assert (not b!7517582))

(assert (not b!7518324))

(assert (not bm!689453))

(assert (not b!7518230))

(assert (not b!7518173))

(assert (not bm!689446))

(assert (not b!7518313))

(assert (not b!7518322))

(assert (not b!7518062))

(assert (not b!7518478))

(assert (not b!7517722))

(assert (not b!7518186))

(assert (not b!7517997))

(assert (not b!7518177))

(assert (not b!7518473))

(assert (not b!7517998))

(assert (not b!7518345))

(assert (not b!7518160))

(assert (not b!7518201))

(assert (not b!7518041))

(assert (not b!7517970))

(assert (not b_lambda!288413))

(assert (not b!7518277))

(assert (not b!7518193))

(assert (not b!7517931))

(assert (not b!7518570))

(assert (not b!7518321))

(assert (not b!7518320))

(assert (not b!7518268))

(assert (not b!7518122))

(assert (not b!7518290))

(assert (not b!7518094))

(assert (not bm!689441))

(assert (not b!7518224))

(assert (not b!7518282))

(assert (not b!7518522))

(assert (not b!7518487))

(assert (not b!7518093))

(assert (not b!7518477))

(assert (not b!7517517))

(assert (not d!2308250))

(assert (not b!7518221))

(assert (not b!7518543))

(assert (not b!7518012))

(assert (not b!7518569))

(assert (not b!7517984))

(assert (not b!7518209))

(assert (not d!2308260))

(assert (not b!7518372))

(assert tp_is_empty!49843)

(assert (not b!7518057))

(assert (not b!7517872))

(assert (not b!7518022))

(assert (not b!7518491))

(assert (not bm!689439))

(assert (not b!7518352))

(assert (not b!7518356))

(assert (not b!7517988))

(assert (not b!7517731))

(assert (not b!7518250))

(assert (not b!7518546))

(assert (not b!7518374))

(assert (not b!7517993))

(assert (not b!7518020))

(assert (not bm!689484))

(assert (not b!7518050))

(assert (not bm!689429))

(assert (not b!7518407))

(assert (not b!7518120))

(assert (not b_lambda!288363))

(assert (not b!7518132))

(assert (not b!7518044))

(assert (not b!7517954))

(assert (not b!7518482))

(assert (not b!7518515))

(assert (not b!7518069))

(assert (not b!7517698))

(assert (not b!7518501))

(assert (not b!7517575))

(assert (not b!7518389))

(assert (not b!7518008))

(assert (not b!7517726))

(assert (not b!7518074))

(assert (not b!7518264))

(assert (not b!7518435))

(assert (not b!7518439))

(assert (not bm!689435))

(assert (not b!7517555))

(assert (not d!2308264))

(assert (not b!7518285))

(assert (not b!7517515))

(assert (not b!7518348))

(assert (not b!7518565))

(assert (not b!7518220))

(assert (not b!7517650))

(assert (not d!2308414))

(assert (not b!7517513))

(assert (not b!7518454))

(assert (not b!7518269))

(assert (not b!7518030))

(assert (not b!7518238))

(assert (not b!7518024))

(assert (not b!7518537))

(assert (not d!2308354))

(assert (not b!7518068))

(assert (not b!7518475))

(assert (not b!7518493))

(assert (not b!7518210))

(assert (not b!7518573))

(assert (not b!7518056))

(assert (not b!7517895))

(assert (not b!7518469))

(assert (not b_lambda!288349))

(assert (not b!7518485))

(assert (not b!7518274))

(assert (not b!7518360))

(assert (not b!7518415))

(assert (not b!7518427))

(assert (not b!7518188))

(assert (not b!7517519))

(assert (not b!7518589))

(assert (not b!7517901))

(assert (not b!7518213))

(assert (not b!7517521))

(assert (not b!7518466))

(assert (not b!7518261))

(assert (not b!7518446))

(assert (not b!7518125))

(assert (not b!7517927))

(assert (not b!7517789))

(assert (not bm!689482))

(assert (not b!7518434))

(assert (not b!7517989))

(assert (not b!7518154))

(assert (not bm!689449))

(assert (not b!7518061))

(assert (not b!7518286))

(assert (not d!2308392))

(assert (not b!7517969))

(assert (not b_lambda!288343))

(assert (not b!7518034))

(assert (not b!7517935))

(assert (not b!7518517))

(assert (not b!7518499))

(assert (not bm!689462))

(assert (not b!7518328))

(assert (not b!7518483))

(assert (not b_lambda!288387))

(assert (not b!7518511))

(assert (not b!7518457))

(assert (not b!7517871))

(assert (not b!7518563))

(assert (not b!7518085))

(assert (not b!7517891))

(assert (not b!7518101))

(assert (not b!7518272))

(assert (not b!7518136))

(assert (not b!7518308))

(assert (not b!7518419))

(assert (not b!7518332))

(assert (not b!7518459))

(assert (not bm!689468))

(assert (not b!7517458))

(assert (not b!7517978))

(assert (not b!7518106))

(assert (not b!7518149))

(assert (not b!7517670))

(assert (not b!7517682))

(assert (not b!7518082))

(assert (not b!7518246))

(assert (not b!7517765))

(assert (not b!7518294))

(assert (not b!7518388))

(assert (not d!2308404))

(assert (not b!7518519))

(assert (not b!7517759))

(assert (not b!7518506))

(assert (not bm!689474))

(assert (not b!7518010))

(assert (not b!7518553))

(assert (not b!7517913))

(assert (not b!7517618))

(assert (not b!7517953))

(assert (not b!7518202))

(assert (not b!7518114))

(assert (not b!7517980))

(assert (not b!7518336))

(assert (not b!7518130))

(assert (not bm!689433))

(assert (not b!7518316))

(assert (not d!2308240))

(assert (not b!7518581))

(assert (not b!7518204))

(assert (not b!7517801))

(assert (not bm!689483))

(assert (not b!7518353))

(assert (not b!7518474))

(assert (not b!7518025))

(assert (not b!7518113))

(assert (not b!7518014))

(assert (not bm!689444))

(assert (not b!7518058))

(assert (not b_lambda!288365))

(assert (not b!7518214))

(assert (not b!7518489))

(assert (not bm!689480))

(assert (not b!7518226))

(assert (not bm!689481))

(assert (not b!7518242))

(assert (not b!7517925))

(assert (not b_lambda!288341))

(assert (not b!7518117))

(assert (not bm!689475))

(assert (not b!7518021))

(assert (not b!7518156))

(assert (not bm!689467))

(assert (not b!7518384))

(assert (not b!7518009))

(assert (not b!7518354))

(assert (not b!7518579))

(assert (not b!7518297))

(assert (not b!7518266))

(assert (not b!7517756))

(assert (not b!7518550))

(assert (not b!7517808))

(assert (not b!7518390))

(assert (not b!7518574))

(assert (not b!7518549))

(assert (not b!7518497))

(assert (not bm!689448))

(assert (not b!7518414))

(assert (not b!7517992))

(assert (not b!7518225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

