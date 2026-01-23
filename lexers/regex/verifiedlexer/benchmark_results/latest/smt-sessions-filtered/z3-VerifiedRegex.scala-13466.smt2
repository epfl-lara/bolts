; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727646 () Bool)

(assert start!727646)

(declare-fun res!3013085 () Bool)

(declare-fun e!4478329 () Bool)

(assert (=> start!727646 (=> (not res!3013085) (not e!4478329))))

(declare-datatypes ((C!39820 0))(
  ( (C!39821 (val!30330 Int)) )
))
(declare-datatypes ((Regex!19747 0))(
  ( (ElementMatch!19747 (c!1386859 C!39820)) (Concat!28592 (regOne!40006 Regex!19747) (regTwo!40006 Regex!19747)) (EmptyExpr!19747) (Star!19747 (reg!20076 Regex!19747)) (EmptyLang!19747) (Union!19747 (regOne!40007 Regex!19747) (regTwo!40007 Regex!19747)) )
))
(declare-datatypes ((List!72625 0))(
  ( (Nil!72501) (Cons!72501 (h!78949 Regex!19747) (t!387262 List!72625)) )
))
(declare-datatypes ((Context!16998 0))(
  ( (Context!16999 (exprs!8999 List!72625)) )
))
(declare-fun c!7091 () Context!16998)

(get-info :version)

(assert (=> start!727646 (= res!3013085 ((_ is Cons!72501) (exprs!8999 c!7091)))))

(assert (=> start!727646 e!4478329))

(declare-fun e!4478330 () Bool)

(declare-fun inv!92630 (Context!16998) Bool)

(assert (=> start!727646 (and (inv!92630 c!7091) e!4478330)))

(declare-fun b!7510203 () Bool)

(declare-fun res!3013084 () Bool)

(assert (=> b!7510203 (=> (not res!3013084) (not e!4478329))))

(declare-datatypes ((List!72626 0))(
  ( (Nil!72502) (Cons!72502 (h!78950 C!39820) (t!387263 List!72626)) )
))
(declare-datatypes ((Option!17244 0))(
  ( (None!17243) (Some!17243 (v!54378 List!72626)) )
))
(declare-fun getLanguageWitness!1081 (Regex!19747) Option!17244)

(assert (=> b!7510203 (= res!3013084 ((_ is Some!17243) (getLanguageWitness!1081 (h!78949 (exprs!8999 c!7091)))))))

(declare-fun b!7510204 () Bool)

(assert (=> b!7510204 (= e!4478329 (not (inv!92630 (Context!16999 (t!387262 (exprs!8999 c!7091))))))))

(declare-fun b!7510205 () Bool)

(declare-fun tp!2179974 () Bool)

(assert (=> b!7510205 (= e!4478330 tp!2179974)))

(assert (= (and start!727646 res!3013085) b!7510203))

(assert (= (and b!7510203 res!3013084) b!7510204))

(assert (= start!727646 b!7510205))

(declare-fun m!8094028 () Bool)

(assert (=> start!727646 m!8094028))

(declare-fun m!8094030 () Bool)

(assert (=> b!7510203 m!8094030))

(declare-fun m!8094032 () Bool)

(assert (=> b!7510204 m!8094032))

(check-sat (not start!727646) (not b!7510203) (not b!7510204) (not b!7510205))
(check-sat)
(get-model)

(declare-fun d!2306277 () Bool)

(declare-fun lambda!466174 () Int)

(declare-fun forall!18375 (List!72625 Int) Bool)

(assert (=> d!2306277 (= (inv!92630 c!7091) (forall!18375 (exprs!8999 c!7091) lambda!466174))))

(declare-fun bs!1939121 () Bool)

(assert (= bs!1939121 d!2306277))

(declare-fun m!8094044 () Bool)

(assert (=> bs!1939121 m!8094044))

(assert (=> start!727646 d!2306277))

(declare-fun b!7510291 () Bool)

(declare-fun e!4478377 () Option!17244)

(declare-fun call!688930 () Option!17244)

(assert (=> b!7510291 (= e!4478377 call!688930)))

(declare-fun b!7510292 () Bool)

(declare-fun e!4478376 () Option!17244)

(assert (=> b!7510292 (= e!4478376 e!4478377)))

(declare-fun lt!2637378 () Option!17244)

(declare-fun call!688929 () Option!17244)

(assert (=> b!7510292 (= lt!2637378 call!688929)))

(declare-fun c!1386904 () Bool)

(assert (=> b!7510292 (= c!1386904 ((_ is Some!17243) lt!2637378))))

(declare-fun b!7510293 () Bool)

(declare-fun e!4478375 () Option!17244)

(declare-fun e!4478381 () Option!17244)

(assert (=> b!7510293 (= e!4478375 e!4478381)))

(declare-fun c!1386905 () Bool)

(assert (=> b!7510293 (= c!1386905 ((_ is Star!19747) (h!78949 (exprs!8999 c!7091))))))

(declare-fun b!7510294 () Bool)

(assert (=> b!7510294 (= e!4478381 (Some!17243 Nil!72502))))

(declare-fun bm!688924 () Bool)

(declare-fun c!1386907 () Bool)

(assert (=> bm!688924 (= call!688930 (getLanguageWitness!1081 (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))))))

(declare-fun d!2306283 () Bool)

(declare-fun c!1386901 () Bool)

(assert (=> d!2306283 (= c!1386901 ((_ is EmptyExpr!19747) (h!78949 (exprs!8999 c!7091))))))

(declare-fun e!4478374 () Option!17244)

(assert (=> d!2306283 (= (getLanguageWitness!1081 (h!78949 (exprs!8999 c!7091))) e!4478374)))

(declare-fun b!7510295 () Bool)

(assert (=> b!7510295 (= e!4478377 lt!2637378)))

(declare-fun b!7510296 () Bool)

(declare-fun e!4478378 () Option!17244)

(assert (=> b!7510296 (= e!4478374 e!4478378)))

(declare-fun c!1386906 () Bool)

(assert (=> b!7510296 (= c!1386906 ((_ is EmptyLang!19747) (h!78949 (exprs!8999 c!7091))))))

(declare-fun b!7510297 () Bool)

(assert (=> b!7510297 (= e!4478378 None!17243)))

(declare-fun b!7510298 () Bool)

(declare-fun e!4478379 () Option!17244)

(assert (=> b!7510298 (= e!4478376 e!4478379)))

(declare-fun lt!2637379 () Option!17244)

(assert (=> b!7510298 (= lt!2637379 call!688930)))

(declare-fun c!1386900 () Bool)

(assert (=> b!7510298 (= c!1386900 ((_ is Some!17243) lt!2637379))))

(declare-fun b!7510299 () Bool)

(declare-fun c!1386902 () Bool)

(assert (=> b!7510299 (= c!1386902 ((_ is ElementMatch!19747) (h!78949 (exprs!8999 c!7091))))))

(assert (=> b!7510299 (= e!4478378 e!4478375)))

(declare-fun b!7510300 () Bool)

(assert (=> b!7510300 (= e!4478374 (Some!17243 Nil!72502))))

(declare-fun b!7510301 () Bool)

(declare-fun e!4478380 () Option!17244)

(declare-fun lt!2637377 () Option!17244)

(declare-fun ++!17353 (List!72626 List!72626) List!72626)

(assert (=> b!7510301 (= e!4478380 (Some!17243 (++!17353 (v!54378 lt!2637379) (v!54378 lt!2637377))))))

(declare-fun b!7510302 () Bool)

(assert (=> b!7510302 (= e!4478379 None!17243)))

(declare-fun b!7510303 () Bool)

(assert (=> b!7510303 (= e!4478375 (Some!17243 (Cons!72502 (c!1386859 (h!78949 (exprs!8999 c!7091))) Nil!72502)))))

(declare-fun b!7510304 () Bool)

(assert (=> b!7510304 (= c!1386907 ((_ is Union!19747) (h!78949 (exprs!8999 c!7091))))))

(assert (=> b!7510304 (= e!4478381 e!4478376)))

(declare-fun b!7510305 () Bool)

(declare-fun c!1386903 () Bool)

(assert (=> b!7510305 (= c!1386903 ((_ is Some!17243) lt!2637377))))

(assert (=> b!7510305 (= lt!2637377 call!688929)))

(assert (=> b!7510305 (= e!4478379 e!4478380)))

(declare-fun b!7510306 () Bool)

(assert (=> b!7510306 (= e!4478380 None!17243)))

(declare-fun bm!688925 () Bool)

(assert (=> bm!688925 (= call!688929 (getLanguageWitness!1081 (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))))))

(assert (= (and d!2306283 c!1386901) b!7510300))

(assert (= (and d!2306283 (not c!1386901)) b!7510296))

(assert (= (and b!7510296 c!1386906) b!7510297))

(assert (= (and b!7510296 (not c!1386906)) b!7510299))

(assert (= (and b!7510299 c!1386902) b!7510303))

(assert (= (and b!7510299 (not c!1386902)) b!7510293))

(assert (= (and b!7510293 c!1386905) b!7510294))

(assert (= (and b!7510293 (not c!1386905)) b!7510304))

(assert (= (and b!7510304 c!1386907) b!7510292))

(assert (= (and b!7510304 (not c!1386907)) b!7510298))

(assert (= (and b!7510292 c!1386904) b!7510295))

(assert (= (and b!7510292 (not c!1386904)) b!7510291))

(assert (= (and b!7510298 c!1386900) b!7510305))

(assert (= (and b!7510298 (not c!1386900)) b!7510302))

(assert (= (and b!7510305 c!1386903) b!7510301))

(assert (= (and b!7510305 (not c!1386903)) b!7510306))

(assert (= (or b!7510291 b!7510298) bm!688924))

(assert (= (or b!7510292 b!7510305) bm!688925))

(declare-fun m!8094046 () Bool)

(assert (=> bm!688924 m!8094046))

(declare-fun m!8094048 () Bool)

(assert (=> b!7510301 m!8094048))

(declare-fun m!8094050 () Bool)

(assert (=> bm!688925 m!8094050))

(assert (=> b!7510203 d!2306283))

(declare-fun bs!1939122 () Bool)

(declare-fun d!2306285 () Bool)

(assert (= bs!1939122 (and d!2306285 d!2306277)))

(declare-fun lambda!466175 () Int)

(assert (=> bs!1939122 (= lambda!466175 lambda!466174)))

(assert (=> d!2306285 (= (inv!92630 (Context!16999 (t!387262 (exprs!8999 c!7091)))) (forall!18375 (exprs!8999 (Context!16999 (t!387262 (exprs!8999 c!7091)))) lambda!466175))))

(declare-fun bs!1939123 () Bool)

(assert (= bs!1939123 d!2306285))

(declare-fun m!8094052 () Bool)

(assert (=> bs!1939123 m!8094052))

(assert (=> b!7510204 d!2306285))

(declare-fun b!7510311 () Bool)

(declare-fun e!4478384 () Bool)

(declare-fun tp!2179985 () Bool)

(declare-fun tp!2179986 () Bool)

(assert (=> b!7510311 (= e!4478384 (and tp!2179985 tp!2179986))))

(assert (=> b!7510205 (= tp!2179974 e!4478384)))

(assert (= (and b!7510205 ((_ is Cons!72501) (exprs!8999 c!7091))) b!7510311))

(check-sat (not d!2306277) (not b!7510301) (not bm!688925) (not d!2306285) (not b!7510311) (not bm!688924))
(check-sat)
(get-model)

(declare-fun d!2306291 () Bool)

(declare-fun res!3013096 () Bool)

(declare-fun e!4478403 () Bool)

(assert (=> d!2306291 (=> res!3013096 e!4478403)))

(assert (=> d!2306291 (= res!3013096 ((_ is Nil!72501) (exprs!8999 c!7091)))))

(assert (=> d!2306291 (= (forall!18375 (exprs!8999 c!7091) lambda!466174) e!4478403)))

(declare-fun b!7510344 () Bool)

(declare-fun e!4478404 () Bool)

(assert (=> b!7510344 (= e!4478403 e!4478404)))

(declare-fun res!3013097 () Bool)

(assert (=> b!7510344 (=> (not res!3013097) (not e!4478404))))

(declare-fun dynLambda!29838 (Int Regex!19747) Bool)

(assert (=> b!7510344 (= res!3013097 (dynLambda!29838 lambda!466174 (h!78949 (exprs!8999 c!7091))))))

(declare-fun b!7510345 () Bool)

(assert (=> b!7510345 (= e!4478404 (forall!18375 (t!387262 (exprs!8999 c!7091)) lambda!466174))))

(assert (= (and d!2306291 (not res!3013096)) b!7510344))

(assert (= (and b!7510344 res!3013097) b!7510345))

(declare-fun b_lambda!288125 () Bool)

(assert (=> (not b_lambda!288125) (not b!7510344)))

(declare-fun m!8094074 () Bool)

(assert (=> b!7510344 m!8094074))

(declare-fun m!8094076 () Bool)

(assert (=> b!7510345 m!8094076))

(assert (=> d!2306277 d!2306291))

(declare-fun d!2306295 () Bool)

(declare-fun res!3013098 () Bool)

(declare-fun e!4478405 () Bool)

(assert (=> d!2306295 (=> res!3013098 e!4478405)))

(assert (=> d!2306295 (= res!3013098 ((_ is Nil!72501) (exprs!8999 (Context!16999 (t!387262 (exprs!8999 c!7091))))))))

(assert (=> d!2306295 (= (forall!18375 (exprs!8999 (Context!16999 (t!387262 (exprs!8999 c!7091)))) lambda!466175) e!4478405)))

(declare-fun b!7510346 () Bool)

(declare-fun e!4478406 () Bool)

(assert (=> b!7510346 (= e!4478405 e!4478406)))

(declare-fun res!3013099 () Bool)

(assert (=> b!7510346 (=> (not res!3013099) (not e!4478406))))

(assert (=> b!7510346 (= res!3013099 (dynLambda!29838 lambda!466175 (h!78949 (exprs!8999 (Context!16999 (t!387262 (exprs!8999 c!7091)))))))))

(declare-fun b!7510347 () Bool)

(assert (=> b!7510347 (= e!4478406 (forall!18375 (t!387262 (exprs!8999 (Context!16999 (t!387262 (exprs!8999 c!7091))))) lambda!466175))))

(assert (= (and d!2306295 (not res!3013098)) b!7510346))

(assert (= (and b!7510346 res!3013099) b!7510347))

(declare-fun b_lambda!288127 () Bool)

(assert (=> (not b_lambda!288127) (not b!7510346)))

(declare-fun m!8094078 () Bool)

(assert (=> b!7510346 m!8094078))

(declare-fun m!8094080 () Bool)

(assert (=> b!7510347 m!8094080))

(assert (=> d!2306285 d!2306295))

(declare-fun b!7510348 () Bool)

(declare-fun e!4478410 () Option!17244)

(declare-fun call!688934 () Option!17244)

(assert (=> b!7510348 (= e!4478410 call!688934)))

(declare-fun b!7510349 () Bool)

(declare-fun e!4478409 () Option!17244)

(assert (=> b!7510349 (= e!4478409 e!4478410)))

(declare-fun lt!2637387 () Option!17244)

(declare-fun call!688933 () Option!17244)

(assert (=> b!7510349 (= lt!2637387 call!688933)))

(declare-fun c!1386923 () Bool)

(assert (=> b!7510349 (= c!1386923 ((_ is Some!17243) lt!2637387))))

(declare-fun b!7510350 () Bool)

(declare-fun e!4478408 () Option!17244)

(declare-fun e!4478414 () Option!17244)

(assert (=> b!7510350 (= e!4478408 e!4478414)))

(declare-fun c!1386924 () Bool)

(assert (=> b!7510350 (= c!1386924 ((_ is Star!19747) (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))))))

(declare-fun b!7510351 () Bool)

(assert (=> b!7510351 (= e!4478414 (Some!17243 Nil!72502))))

(declare-fun bm!688928 () Bool)

(declare-fun c!1386926 () Bool)

(assert (=> bm!688928 (= call!688934 (getLanguageWitness!1081 (ite c!1386926 (regTwo!40007 (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))) (regOne!40006 (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))))))))

(declare-fun d!2306297 () Bool)

(declare-fun c!1386920 () Bool)

(assert (=> d!2306297 (= c!1386920 ((_ is EmptyExpr!19747) (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))))))

(declare-fun e!4478407 () Option!17244)

(assert (=> d!2306297 (= (getLanguageWitness!1081 (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))) e!4478407)))

(declare-fun b!7510352 () Bool)

(assert (=> b!7510352 (= e!4478410 lt!2637387)))

(declare-fun b!7510353 () Bool)

(declare-fun e!4478411 () Option!17244)

(assert (=> b!7510353 (= e!4478407 e!4478411)))

(declare-fun c!1386925 () Bool)

(assert (=> b!7510353 (= c!1386925 ((_ is EmptyLang!19747) (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))))))

(declare-fun b!7510354 () Bool)

(assert (=> b!7510354 (= e!4478411 None!17243)))

(declare-fun b!7510355 () Bool)

(declare-fun e!4478412 () Option!17244)

(assert (=> b!7510355 (= e!4478409 e!4478412)))

(declare-fun lt!2637388 () Option!17244)

(assert (=> b!7510355 (= lt!2637388 call!688934)))

(declare-fun c!1386919 () Bool)

(assert (=> b!7510355 (= c!1386919 ((_ is Some!17243) lt!2637388))))

(declare-fun b!7510356 () Bool)

(declare-fun c!1386921 () Bool)

(assert (=> b!7510356 (= c!1386921 ((_ is ElementMatch!19747) (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))))))

(assert (=> b!7510356 (= e!4478411 e!4478408)))

(declare-fun b!7510357 () Bool)

(assert (=> b!7510357 (= e!4478407 (Some!17243 Nil!72502))))

(declare-fun b!7510358 () Bool)

(declare-fun e!4478413 () Option!17244)

(declare-fun lt!2637386 () Option!17244)

(assert (=> b!7510358 (= e!4478413 (Some!17243 (++!17353 (v!54378 lt!2637388) (v!54378 lt!2637386))))))

(declare-fun b!7510359 () Bool)

(assert (=> b!7510359 (= e!4478412 None!17243)))

(declare-fun b!7510360 () Bool)

(assert (=> b!7510360 (= e!4478408 (Some!17243 (Cons!72502 (c!1386859 (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))) Nil!72502)))))

(declare-fun b!7510361 () Bool)

(assert (=> b!7510361 (= c!1386926 ((_ is Union!19747) (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))))))

(assert (=> b!7510361 (= e!4478414 e!4478409)))

(declare-fun b!7510362 () Bool)

(declare-fun c!1386922 () Bool)

(assert (=> b!7510362 (= c!1386922 ((_ is Some!17243) lt!2637386))))

(assert (=> b!7510362 (= lt!2637386 call!688933)))

(assert (=> b!7510362 (= e!4478412 e!4478413)))

(declare-fun b!7510363 () Bool)

(assert (=> b!7510363 (= e!4478413 None!17243)))

(declare-fun bm!688929 () Bool)

(assert (=> bm!688929 (= call!688933 (getLanguageWitness!1081 (ite c!1386926 (regOne!40007 (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))) (regTwo!40006 (ite c!1386907 (regTwo!40007 (h!78949 (exprs!8999 c!7091))) (regOne!40006 (h!78949 (exprs!8999 c!7091))))))))))

(assert (= (and d!2306297 c!1386920) b!7510357))

(assert (= (and d!2306297 (not c!1386920)) b!7510353))

(assert (= (and b!7510353 c!1386925) b!7510354))

(assert (= (and b!7510353 (not c!1386925)) b!7510356))

(assert (= (and b!7510356 c!1386921) b!7510360))

(assert (= (and b!7510356 (not c!1386921)) b!7510350))

(assert (= (and b!7510350 c!1386924) b!7510351))

(assert (= (and b!7510350 (not c!1386924)) b!7510361))

(assert (= (and b!7510361 c!1386926) b!7510349))

(assert (= (and b!7510361 (not c!1386926)) b!7510355))

(assert (= (and b!7510349 c!1386923) b!7510352))

(assert (= (and b!7510349 (not c!1386923)) b!7510348))

(assert (= (and b!7510355 c!1386919) b!7510362))

(assert (= (and b!7510355 (not c!1386919)) b!7510359))

(assert (= (and b!7510362 c!1386922) b!7510358))

(assert (= (and b!7510362 (not c!1386922)) b!7510363))

(assert (= (or b!7510348 b!7510355) bm!688928))

(assert (= (or b!7510349 b!7510362) bm!688929))

(declare-fun m!8094082 () Bool)

(assert (=> bm!688928 m!8094082))

(declare-fun m!8094084 () Bool)

(assert (=> b!7510358 m!8094084))

(declare-fun m!8094086 () Bool)

(assert (=> bm!688929 m!8094086))

(assert (=> bm!688924 d!2306297))

(declare-fun d!2306299 () Bool)

(declare-fun e!4478439 () Bool)

(assert (=> d!2306299 e!4478439))

(declare-fun res!3013112 () Bool)

(assert (=> d!2306299 (=> (not res!3013112) (not e!4478439))))

(declare-fun lt!2637394 () List!72626)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15338 (List!72626) (InoxSet C!39820))

(assert (=> d!2306299 (= res!3013112 (= (content!15338 lt!2637394) ((_ map or) (content!15338 (v!54378 lt!2637379)) (content!15338 (v!54378 lt!2637377)))))))

(declare-fun e!4478440 () List!72626)

(assert (=> d!2306299 (= lt!2637394 e!4478440)))

(declare-fun c!1386937 () Bool)

(assert (=> d!2306299 (= c!1386937 ((_ is Nil!72502) (v!54378 lt!2637379)))))

(assert (=> d!2306299 (= (++!17353 (v!54378 lt!2637379) (v!54378 lt!2637377)) lt!2637394)))

(declare-fun b!7510411 () Bool)

(assert (=> b!7510411 (= e!4478440 (v!54378 lt!2637377))))

(declare-fun b!7510412 () Bool)

(assert (=> b!7510412 (= e!4478440 (Cons!72502 (h!78950 (v!54378 lt!2637379)) (++!17353 (t!387263 (v!54378 lt!2637379)) (v!54378 lt!2637377))))))

(declare-fun b!7510413 () Bool)

(declare-fun res!3013113 () Bool)

(assert (=> b!7510413 (=> (not res!3013113) (not e!4478439))))

(declare-fun size!42293 (List!72626) Int)

(assert (=> b!7510413 (= res!3013113 (= (size!42293 lt!2637394) (+ (size!42293 (v!54378 lt!2637379)) (size!42293 (v!54378 lt!2637377)))))))

(declare-fun b!7510414 () Bool)

(assert (=> b!7510414 (= e!4478439 (or (not (= (v!54378 lt!2637377) Nil!72502)) (= lt!2637394 (v!54378 lt!2637379))))))

(assert (= (and d!2306299 c!1386937) b!7510411))

(assert (= (and d!2306299 (not c!1386937)) b!7510412))

(assert (= (and d!2306299 res!3013112) b!7510413))

(assert (= (and b!7510413 res!3013113) b!7510414))

(declare-fun m!8094106 () Bool)

(assert (=> d!2306299 m!8094106))

(declare-fun m!8094108 () Bool)

(assert (=> d!2306299 m!8094108))

(declare-fun m!8094110 () Bool)

(assert (=> d!2306299 m!8094110))

(declare-fun m!8094112 () Bool)

(assert (=> b!7510412 m!8094112))

(declare-fun m!8094114 () Bool)

(assert (=> b!7510413 m!8094114))

(declare-fun m!8094116 () Bool)

(assert (=> b!7510413 m!8094116))

(declare-fun m!8094118 () Bool)

(assert (=> b!7510413 m!8094118))

(assert (=> b!7510301 d!2306299))

(declare-fun b!7510415 () Bool)

(declare-fun e!4478444 () Option!17244)

(declare-fun call!688938 () Option!17244)

(assert (=> b!7510415 (= e!4478444 call!688938)))

(declare-fun b!7510416 () Bool)

(declare-fun e!4478443 () Option!17244)

(assert (=> b!7510416 (= e!4478443 e!4478444)))

(declare-fun lt!2637396 () Option!17244)

(declare-fun call!688937 () Option!17244)

(assert (=> b!7510416 (= lt!2637396 call!688937)))

(declare-fun c!1386942 () Bool)

(assert (=> b!7510416 (= c!1386942 ((_ is Some!17243) lt!2637396))))

(declare-fun b!7510417 () Bool)

(declare-fun e!4478442 () Option!17244)

(declare-fun e!4478448 () Option!17244)

(assert (=> b!7510417 (= e!4478442 e!4478448)))

(declare-fun c!1386943 () Bool)

(assert (=> b!7510417 (= c!1386943 ((_ is Star!19747) (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))))))

(declare-fun b!7510418 () Bool)

(assert (=> b!7510418 (= e!4478448 (Some!17243 Nil!72502))))

(declare-fun c!1386945 () Bool)

(declare-fun bm!688932 () Bool)

(assert (=> bm!688932 (= call!688938 (getLanguageWitness!1081 (ite c!1386945 (regTwo!40007 (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))) (regOne!40006 (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))))))))

(declare-fun d!2306309 () Bool)

(declare-fun c!1386939 () Bool)

(assert (=> d!2306309 (= c!1386939 ((_ is EmptyExpr!19747) (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))))))

(declare-fun e!4478441 () Option!17244)

(assert (=> d!2306309 (= (getLanguageWitness!1081 (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))) e!4478441)))

(declare-fun b!7510419 () Bool)

(assert (=> b!7510419 (= e!4478444 lt!2637396)))

(declare-fun b!7510420 () Bool)

(declare-fun e!4478445 () Option!17244)

(assert (=> b!7510420 (= e!4478441 e!4478445)))

(declare-fun c!1386944 () Bool)

(assert (=> b!7510420 (= c!1386944 ((_ is EmptyLang!19747) (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))))))

(declare-fun b!7510421 () Bool)

(assert (=> b!7510421 (= e!4478445 None!17243)))

(declare-fun b!7510422 () Bool)

(declare-fun e!4478446 () Option!17244)

(assert (=> b!7510422 (= e!4478443 e!4478446)))

(declare-fun lt!2637397 () Option!17244)

(assert (=> b!7510422 (= lt!2637397 call!688938)))

(declare-fun c!1386938 () Bool)

(assert (=> b!7510422 (= c!1386938 ((_ is Some!17243) lt!2637397))))

(declare-fun b!7510423 () Bool)

(declare-fun c!1386940 () Bool)

(assert (=> b!7510423 (= c!1386940 ((_ is ElementMatch!19747) (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))))))

(assert (=> b!7510423 (= e!4478445 e!4478442)))

(declare-fun b!7510424 () Bool)

(assert (=> b!7510424 (= e!4478441 (Some!17243 Nil!72502))))

(declare-fun b!7510425 () Bool)

(declare-fun e!4478447 () Option!17244)

(declare-fun lt!2637395 () Option!17244)

(assert (=> b!7510425 (= e!4478447 (Some!17243 (++!17353 (v!54378 lt!2637397) (v!54378 lt!2637395))))))

(declare-fun b!7510426 () Bool)

(assert (=> b!7510426 (= e!4478446 None!17243)))

(declare-fun b!7510427 () Bool)

(assert (=> b!7510427 (= e!4478442 (Some!17243 (Cons!72502 (c!1386859 (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))) Nil!72502)))))

(declare-fun b!7510428 () Bool)

(assert (=> b!7510428 (= c!1386945 ((_ is Union!19747) (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))))))

(assert (=> b!7510428 (= e!4478448 e!4478443)))

(declare-fun b!7510429 () Bool)

(declare-fun c!1386941 () Bool)

(assert (=> b!7510429 (= c!1386941 ((_ is Some!17243) lt!2637395))))

(assert (=> b!7510429 (= lt!2637395 call!688937)))

(assert (=> b!7510429 (= e!4478446 e!4478447)))

(declare-fun b!7510430 () Bool)

(assert (=> b!7510430 (= e!4478447 None!17243)))

(declare-fun bm!688933 () Bool)

(assert (=> bm!688933 (= call!688937 (getLanguageWitness!1081 (ite c!1386945 (regOne!40007 (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))) (regTwo!40006 (ite c!1386907 (regOne!40007 (h!78949 (exprs!8999 c!7091))) (regTwo!40006 (h!78949 (exprs!8999 c!7091))))))))))

(assert (= (and d!2306309 c!1386939) b!7510424))

(assert (= (and d!2306309 (not c!1386939)) b!7510420))

(assert (= (and b!7510420 c!1386944) b!7510421))

(assert (= (and b!7510420 (not c!1386944)) b!7510423))

(assert (= (and b!7510423 c!1386940) b!7510427))

(assert (= (and b!7510423 (not c!1386940)) b!7510417))

(assert (= (and b!7510417 c!1386943) b!7510418))

(assert (= (and b!7510417 (not c!1386943)) b!7510428))

(assert (= (and b!7510428 c!1386945) b!7510416))

(assert (= (and b!7510428 (not c!1386945)) b!7510422))

(assert (= (and b!7510416 c!1386942) b!7510419))

(assert (= (and b!7510416 (not c!1386942)) b!7510415))

(assert (= (and b!7510422 c!1386938) b!7510429))

(assert (= (and b!7510422 (not c!1386938)) b!7510426))

(assert (= (and b!7510429 c!1386941) b!7510425))

(assert (= (and b!7510429 (not c!1386941)) b!7510430))

(assert (= (or b!7510415 b!7510422) bm!688932))

(assert (= (or b!7510416 b!7510429) bm!688933))

(declare-fun m!8094120 () Bool)

(assert (=> bm!688932 m!8094120))

(declare-fun m!8094122 () Bool)

(assert (=> b!7510425 m!8094122))

(declare-fun m!8094124 () Bool)

(assert (=> bm!688933 m!8094124))

(assert (=> bm!688925 d!2306309))

(declare-fun b!7510444 () Bool)

(declare-fun e!4478451 () Bool)

(declare-fun tp!2180014 () Bool)

(declare-fun tp!2180018 () Bool)

(assert (=> b!7510444 (= e!4478451 (and tp!2180014 tp!2180018))))

(assert (=> b!7510311 (= tp!2179985 e!4478451)))

(declare-fun b!7510441 () Bool)

(declare-fun tp_is_empty!49833 () Bool)

(assert (=> b!7510441 (= e!4478451 tp_is_empty!49833)))

(declare-fun b!7510443 () Bool)

(declare-fun tp!2180016 () Bool)

(assert (=> b!7510443 (= e!4478451 tp!2180016)))

(declare-fun b!7510442 () Bool)

(declare-fun tp!2180015 () Bool)

(declare-fun tp!2180017 () Bool)

(assert (=> b!7510442 (= e!4478451 (and tp!2180015 tp!2180017))))

(assert (= (and b!7510311 ((_ is ElementMatch!19747) (h!78949 (exprs!8999 c!7091)))) b!7510441))

(assert (= (and b!7510311 ((_ is Concat!28592) (h!78949 (exprs!8999 c!7091)))) b!7510442))

(assert (= (and b!7510311 ((_ is Star!19747) (h!78949 (exprs!8999 c!7091)))) b!7510443))

(assert (= (and b!7510311 ((_ is Union!19747) (h!78949 (exprs!8999 c!7091)))) b!7510444))

(declare-fun b!7510445 () Bool)

(declare-fun e!4478452 () Bool)

(declare-fun tp!2180019 () Bool)

(declare-fun tp!2180020 () Bool)

(assert (=> b!7510445 (= e!4478452 (and tp!2180019 tp!2180020))))

(assert (=> b!7510311 (= tp!2179986 e!4478452)))

(assert (= (and b!7510311 ((_ is Cons!72501) (t!387262 (exprs!8999 c!7091)))) b!7510445))

(declare-fun b_lambda!288137 () Bool)

(assert (= b_lambda!288125 (or d!2306277 b_lambda!288137)))

(declare-fun bs!1939126 () Bool)

(declare-fun d!2306311 () Bool)

(assert (= bs!1939126 (and d!2306311 d!2306277)))

(declare-fun validRegex!10188 (Regex!19747) Bool)

(assert (=> bs!1939126 (= (dynLambda!29838 lambda!466174 (h!78949 (exprs!8999 c!7091))) (validRegex!10188 (h!78949 (exprs!8999 c!7091))))))

(declare-fun m!8094126 () Bool)

(assert (=> bs!1939126 m!8094126))

(assert (=> b!7510344 d!2306311))

(declare-fun b_lambda!288139 () Bool)

(assert (= b_lambda!288127 (or d!2306285 b_lambda!288139)))

(declare-fun bs!1939127 () Bool)

(declare-fun d!2306313 () Bool)

(assert (= bs!1939127 (and d!2306313 d!2306285)))

(assert (=> bs!1939127 (= (dynLambda!29838 lambda!466175 (h!78949 (exprs!8999 (Context!16999 (t!387262 (exprs!8999 c!7091)))))) (validRegex!10188 (h!78949 (exprs!8999 (Context!16999 (t!387262 (exprs!8999 c!7091)))))))))

(declare-fun m!8094128 () Bool)

(assert (=> bs!1939127 m!8094128))

(assert (=> b!7510346 d!2306313))

(check-sat (not bm!688932) (not b!7510347) (not b_lambda!288137) (not b!7510443) (not b!7510444) (not b!7510412) (not bm!688929) (not b!7510425) (not bm!688928) (not b!7510345) (not b!7510413) (not b!7510445) (not b!7510358) (not b!7510442) (not bs!1939127) (not d!2306299) tp_is_empty!49833 (not bs!1939126) (not b_lambda!288139) (not bm!688933))
(check-sat)
