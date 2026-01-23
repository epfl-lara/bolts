; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718120 () Bool)

(assert start!718120)

(declare-fun b!7354051 () Bool)

(declare-fun e!4403227 () Bool)

(declare-fun e!4403225 () Bool)

(assert (=> b!7354051 (= e!4403227 e!4403225)))

(declare-fun res!2969665 () Bool)

(assert (=> b!7354051 (=> (not res!2969665) (not e!4403225))))

(declare-datatypes ((C!38644 0))(
  ( (C!38645 (val!29682 Int)) )
))
(declare-datatypes ((Regex!19185 0))(
  ( (ElementMatch!19185 (c!1366299 C!38644)) (Concat!28030 (regOne!38882 Regex!19185) (regTwo!38882 Regex!19185)) (EmptyExpr!19185) (Star!19185 (reg!19514 Regex!19185)) (EmptyLang!19185) (Union!19185 (regOne!38883 Regex!19185) (regTwo!38883 Regex!19185)) )
))
(declare-fun lt!2612828 () Regex!19185)

(declare-fun validRegex!9781 (Regex!19185) Bool)

(assert (=> b!7354051 (= res!2969665 (validRegex!9781 lt!2612828))))

(declare-fun r1!2370 () Regex!19185)

(assert (=> b!7354051 (= lt!2612828 (Star!19185 (reg!19514 r1!2370)))))

(declare-fun b!7354052 () Bool)

(declare-fun e!4403228 () Bool)

(assert (=> b!7354052 (= e!4403228 e!4403227)))

(declare-fun res!2969666 () Bool)

(assert (=> b!7354052 (=> (not res!2969666) (not e!4403227))))

(declare-fun c!10362 () C!38644)

(get-info :version)

(assert (=> b!7354052 (= res!2969666 (and (or (not ((_ is ElementMatch!19185) r1!2370)) (not (= c!10362 (c!1366299 r1!2370)))) (not ((_ is Union!19185) r1!2370))))))

(declare-datatypes ((List!71681 0))(
  ( (Nil!71557) (Cons!71557 (h!78005 Regex!19185) (t!386112 List!71681)) )
))
(declare-datatypes ((Context!16250 0))(
  ( (Context!16251 (exprs!8625 List!71681)) )
))
(declare-fun ct1!282 () Context!16250)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2612833 () (InoxSet Context!16250))

(declare-fun ct2!378 () Context!16250)

(declare-fun derivationStepZipperDown!3011 (Regex!19185 Context!16250 C!38644) (InoxSet Context!16250))

(declare-fun ++!17003 (List!71681 List!71681) List!71681)

(assert (=> b!7354052 (= lt!2612833 (derivationStepZipperDown!3011 r1!2370 (Context!16251 (++!17003 (exprs!8625 ct1!282) (exprs!8625 ct2!378))) c!10362))))

(declare-fun lambda!456835 () Int)

(declare-datatypes ((Unit!165323 0))(
  ( (Unit!165324) )
))
(declare-fun lt!2612829 () Unit!165323)

(declare-fun lemmaConcatPreservesForall!1860 (List!71681 List!71681 Int) Unit!165323)

(assert (=> b!7354052 (= lt!2612829 (lemmaConcatPreservesForall!1860 (exprs!8625 ct1!282) (exprs!8625 ct2!378) lambda!456835))))

(declare-fun b!7354053 () Bool)

(declare-fun e!4403231 () Bool)

(declare-fun tp!2088945 () Bool)

(declare-fun tp!2088947 () Bool)

(assert (=> b!7354053 (= e!4403231 (and tp!2088945 tp!2088947))))

(declare-fun b!7354054 () Bool)

(declare-fun e!4403232 () Bool)

(declare-fun tp!2088946 () Bool)

(assert (=> b!7354054 (= e!4403232 tp!2088946)))

(declare-fun b!7354055 () Bool)

(declare-fun e!4403230 () Bool)

(declare-fun tp!2088944 () Bool)

(assert (=> b!7354055 (= e!4403230 tp!2088944)))

(declare-fun res!2969667 () Bool)

(declare-fun e!4403229 () Bool)

(assert (=> start!718120 (=> (not res!2969667) (not e!4403229))))

(assert (=> start!718120 (= res!2969667 (validRegex!9781 r1!2370))))

(assert (=> start!718120 e!4403229))

(declare-fun tp_is_empty!48615 () Bool)

(assert (=> start!718120 tp_is_empty!48615))

(declare-fun cWitness!61 () Context!16250)

(declare-fun inv!91302 (Context!16250) Bool)

(assert (=> start!718120 (and (inv!91302 cWitness!61) e!4403230)))

(assert (=> start!718120 (and (inv!91302 ct1!282) e!4403232)))

(assert (=> start!718120 e!4403231))

(declare-fun e!4403226 () Bool)

(assert (=> start!718120 (and (inv!91302 ct2!378) e!4403226)))

(declare-fun b!7354056 () Bool)

(declare-fun tp!2088940 () Bool)

(declare-fun tp!2088943 () Bool)

(assert (=> b!7354056 (= e!4403231 (and tp!2088940 tp!2088943))))

(declare-fun b!7354057 () Bool)

(declare-fun e!4403233 () Bool)

(declare-fun nullable!8276 (Regex!19185) Bool)

(assert (=> b!7354057 (= e!4403233 (not (nullable!8276 (regOne!38882 r1!2370))))))

(declare-fun b!7354058 () Bool)

(assert (=> b!7354058 (= e!4403231 tp_is_empty!48615)))

(declare-fun b!7354059 () Bool)

(declare-fun tp!2088942 () Bool)

(assert (=> b!7354059 (= e!4403231 tp!2088942)))

(declare-fun b!7354060 () Bool)

(assert (=> b!7354060 (= e!4403229 e!4403228)))

(declare-fun res!2969668 () Bool)

(assert (=> b!7354060 (=> (not res!2969668) (not e!4403228))))

(declare-fun lt!2612827 () (InoxSet Context!16250))

(assert (=> b!7354060 (= res!2969668 (select lt!2612827 cWitness!61))))

(assert (=> b!7354060 (= lt!2612827 (derivationStepZipperDown!3011 r1!2370 ct1!282 c!10362))))

(declare-fun b!7354061 () Bool)

(declare-fun e!4403234 () Bool)

(declare-fun forall!18005 (List!71681 Int) Bool)

(assert (=> b!7354061 (= e!4403234 (not (forall!18005 (exprs!8625 cWitness!61) lambda!456835)))))

(declare-fun lt!2612834 () List!71681)

(assert (=> b!7354061 (select (derivationStepZipperDown!3011 (reg!19514 r1!2370) (Context!16251 (++!17003 lt!2612834 (exprs!8625 ct2!378))) c!10362) (Context!16251 (++!17003 (exprs!8625 cWitness!61) (exprs!8625 ct2!378))))))

(declare-fun lt!2612832 () Unit!165323)

(assert (=> b!7354061 (= lt!2612832 (lemmaConcatPreservesForall!1860 lt!2612834 (exprs!8625 ct2!378) lambda!456835))))

(declare-fun lt!2612835 () Unit!165323)

(assert (=> b!7354061 (= lt!2612835 (lemmaConcatPreservesForall!1860 (exprs!8625 cWitness!61) (exprs!8625 ct2!378) lambda!456835))))

(declare-fun lt!2612831 () Context!16250)

(declare-fun lt!2612830 () Unit!165323)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!102 (Regex!19185 Context!16250 Context!16250 Context!16250 C!38644) Unit!165323)

(assert (=> b!7354061 (= lt!2612830 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!102 (reg!19514 r1!2370) lt!2612831 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7354062 () Bool)

(assert (=> b!7354062 (= e!4403225 e!4403234)))

(declare-fun res!2969663 () Bool)

(assert (=> b!7354062 (=> (not res!2969663) (not e!4403234))))

(assert (=> b!7354062 (= res!2969663 (= lt!2612827 (derivationStepZipperDown!3011 (reg!19514 r1!2370) lt!2612831 c!10362)))))

(assert (=> b!7354062 (= lt!2612831 (Context!16251 lt!2612834))))

(declare-fun $colon$colon!3182 (List!71681 Regex!19185) List!71681)

(assert (=> b!7354062 (= lt!2612834 ($colon$colon!3182 (exprs!8625 ct1!282) lt!2612828))))

(declare-fun b!7354063 () Bool)

(declare-fun res!2969662 () Bool)

(assert (=> b!7354063 (=> (not res!2969662) (not e!4403227))))

(assert (=> b!7354063 (= res!2969662 e!4403233)))

(declare-fun res!2969664 () Bool)

(assert (=> b!7354063 (=> res!2969664 e!4403233)))

(assert (=> b!7354063 (= res!2969664 (not ((_ is Concat!28030) r1!2370)))))

(declare-fun b!7354064 () Bool)

(declare-fun tp!2088941 () Bool)

(assert (=> b!7354064 (= e!4403226 tp!2088941)))

(declare-fun b!7354065 () Bool)

(declare-fun res!2969661 () Bool)

(assert (=> b!7354065 (=> (not res!2969661) (not e!4403227))))

(assert (=> b!7354065 (= res!2969661 (and (not ((_ is Concat!28030) r1!2370)) ((_ is Star!19185) r1!2370)))))

(assert (= (and start!718120 res!2969667) b!7354060))

(assert (= (and b!7354060 res!2969668) b!7354052))

(assert (= (and b!7354052 res!2969666) b!7354063))

(assert (= (and b!7354063 (not res!2969664)) b!7354057))

(assert (= (and b!7354063 res!2969662) b!7354065))

(assert (= (and b!7354065 res!2969661) b!7354051))

(assert (= (and b!7354051 res!2969665) b!7354062))

(assert (= (and b!7354062 res!2969663) b!7354061))

(assert (= start!718120 b!7354055))

(assert (= start!718120 b!7354054))

(assert (= (and start!718120 ((_ is ElementMatch!19185) r1!2370)) b!7354058))

(assert (= (and start!718120 ((_ is Concat!28030) r1!2370)) b!7354053))

(assert (= (and start!718120 ((_ is Star!19185) r1!2370)) b!7354059))

(assert (= (and start!718120 ((_ is Union!19185) r1!2370)) b!7354056))

(assert (= start!718120 b!7354064))

(declare-fun m!8014332 () Bool)

(assert (=> b!7354052 m!8014332))

(declare-fun m!8014334 () Bool)

(assert (=> b!7354052 m!8014334))

(declare-fun m!8014336 () Bool)

(assert (=> b!7354052 m!8014336))

(declare-fun m!8014338 () Bool)

(assert (=> start!718120 m!8014338))

(declare-fun m!8014340 () Bool)

(assert (=> start!718120 m!8014340))

(declare-fun m!8014342 () Bool)

(assert (=> start!718120 m!8014342))

(declare-fun m!8014344 () Bool)

(assert (=> start!718120 m!8014344))

(declare-fun m!8014346 () Bool)

(assert (=> b!7354051 m!8014346))

(declare-fun m!8014348 () Bool)

(assert (=> b!7354062 m!8014348))

(declare-fun m!8014350 () Bool)

(assert (=> b!7354062 m!8014350))

(declare-fun m!8014352 () Bool)

(assert (=> b!7354060 m!8014352))

(declare-fun m!8014354 () Bool)

(assert (=> b!7354060 m!8014354))

(declare-fun m!8014356 () Bool)

(assert (=> b!7354057 m!8014356))

(declare-fun m!8014358 () Bool)

(assert (=> b!7354061 m!8014358))

(declare-fun m!8014360 () Bool)

(assert (=> b!7354061 m!8014360))

(declare-fun m!8014362 () Bool)

(assert (=> b!7354061 m!8014362))

(declare-fun m!8014364 () Bool)

(assert (=> b!7354061 m!8014364))

(declare-fun m!8014366 () Bool)

(assert (=> b!7354061 m!8014366))

(declare-fun m!8014368 () Bool)

(assert (=> b!7354061 m!8014368))

(declare-fun m!8014370 () Bool)

(assert (=> b!7354061 m!8014370))

(declare-fun m!8014372 () Bool)

(assert (=> b!7354061 m!8014372))

(check-sat (not b!7354053) (not b!7354060) (not b!7354056) (not start!718120) (not b!7354059) (not b!7354057) (not b!7354052) (not b!7354064) (not b!7354051) (not b!7354061) tp_is_empty!48615 (not b!7354054) (not b!7354055) (not b!7354062))
(check-sat)
(get-model)

(declare-fun b!7354084 () Bool)

(declare-fun e!4403255 () Bool)

(declare-fun e!4403251 () Bool)

(assert (=> b!7354084 (= e!4403255 e!4403251)))

(declare-fun res!2969683 () Bool)

(assert (=> b!7354084 (=> (not res!2969683) (not e!4403251))))

(declare-fun call!673038 () Bool)

(assert (=> b!7354084 (= res!2969683 call!673038)))

(declare-fun bm!673033 () Bool)

(declare-fun call!673040 () Bool)

(declare-fun c!1366305 () Bool)

(assert (=> bm!673033 (= call!673040 (validRegex!9781 (ite c!1366305 (regOne!38883 r1!2370) (regTwo!38882 r1!2370))))))

(declare-fun b!7354085 () Bool)

(assert (=> b!7354085 (= e!4403251 call!673040)))

(declare-fun c!1366304 () Bool)

(declare-fun call!673039 () Bool)

(declare-fun bm!673034 () Bool)

(assert (=> bm!673034 (= call!673039 (validRegex!9781 (ite c!1366304 (reg!19514 r1!2370) (ite c!1366305 (regTwo!38883 r1!2370) (regOne!38882 r1!2370)))))))

(declare-fun b!7354086 () Bool)

(declare-fun e!4403252 () Bool)

(declare-fun e!4403254 () Bool)

(assert (=> b!7354086 (= e!4403252 e!4403254)))

(assert (=> b!7354086 (= c!1366305 ((_ is Union!19185) r1!2370))))

(declare-fun d!2281075 () Bool)

(declare-fun res!2969679 () Bool)

(declare-fun e!4403250 () Bool)

(assert (=> d!2281075 (=> res!2969679 e!4403250)))

(assert (=> d!2281075 (= res!2969679 ((_ is ElementMatch!19185) r1!2370))))

(assert (=> d!2281075 (= (validRegex!9781 r1!2370) e!4403250)))

(declare-fun bm!673035 () Bool)

(assert (=> bm!673035 (= call!673038 call!673039)))

(declare-fun b!7354087 () Bool)

(declare-fun res!2969681 () Bool)

(declare-fun e!4403253 () Bool)

(assert (=> b!7354087 (=> (not res!2969681) (not e!4403253))))

(assert (=> b!7354087 (= res!2969681 call!673040)))

(assert (=> b!7354087 (= e!4403254 e!4403253)))

(declare-fun b!7354088 () Bool)

(assert (=> b!7354088 (= e!4403250 e!4403252)))

(assert (=> b!7354088 (= c!1366304 ((_ is Star!19185) r1!2370))))

(declare-fun b!7354089 () Bool)

(declare-fun e!4403249 () Bool)

(assert (=> b!7354089 (= e!4403249 call!673039)))

(declare-fun b!7354090 () Bool)

(declare-fun res!2969682 () Bool)

(assert (=> b!7354090 (=> res!2969682 e!4403255)))

(assert (=> b!7354090 (= res!2969682 (not ((_ is Concat!28030) r1!2370)))))

(assert (=> b!7354090 (= e!4403254 e!4403255)))

(declare-fun b!7354091 () Bool)

(assert (=> b!7354091 (= e!4403252 e!4403249)))

(declare-fun res!2969680 () Bool)

(assert (=> b!7354091 (= res!2969680 (not (nullable!8276 (reg!19514 r1!2370))))))

(assert (=> b!7354091 (=> (not res!2969680) (not e!4403249))))

(declare-fun b!7354092 () Bool)

(assert (=> b!7354092 (= e!4403253 call!673038)))

(assert (= (and d!2281075 (not res!2969679)) b!7354088))

(assert (= (and b!7354088 c!1366304) b!7354091))

(assert (= (and b!7354088 (not c!1366304)) b!7354086))

(assert (= (and b!7354091 res!2969680) b!7354089))

(assert (= (and b!7354086 c!1366305) b!7354087))

(assert (= (and b!7354086 (not c!1366305)) b!7354090))

(assert (= (and b!7354087 res!2969681) b!7354092))

(assert (= (and b!7354090 (not res!2969682)) b!7354084))

(assert (= (and b!7354084 res!2969683) b!7354085))

(assert (= (or b!7354087 b!7354085) bm!673033))

(assert (= (or b!7354092 b!7354084) bm!673035))

(assert (= (or b!7354089 bm!673035) bm!673034))

(declare-fun m!8014374 () Bool)

(assert (=> bm!673033 m!8014374))

(declare-fun m!8014376 () Bool)

(assert (=> bm!673034 m!8014376))

(declare-fun m!8014378 () Bool)

(assert (=> b!7354091 m!8014378))

(assert (=> start!718120 d!2281075))

(declare-fun bs!1919562 () Bool)

(declare-fun d!2281077 () Bool)

(assert (= bs!1919562 (and d!2281077 b!7354052)))

(declare-fun lambda!456838 () Int)

(assert (=> bs!1919562 (= lambda!456838 lambda!456835)))

(assert (=> d!2281077 (= (inv!91302 cWitness!61) (forall!18005 (exprs!8625 cWitness!61) lambda!456838))))

(declare-fun bs!1919563 () Bool)

(assert (= bs!1919563 d!2281077))

(declare-fun m!8014380 () Bool)

(assert (=> bs!1919563 m!8014380))

(assert (=> start!718120 d!2281077))

(declare-fun bs!1919564 () Bool)

(declare-fun d!2281079 () Bool)

(assert (= bs!1919564 (and d!2281079 b!7354052)))

(declare-fun lambda!456839 () Int)

(assert (=> bs!1919564 (= lambda!456839 lambda!456835)))

(declare-fun bs!1919565 () Bool)

(assert (= bs!1919565 (and d!2281079 d!2281077)))

(assert (=> bs!1919565 (= lambda!456839 lambda!456838)))

(assert (=> d!2281079 (= (inv!91302 ct1!282) (forall!18005 (exprs!8625 ct1!282) lambda!456839))))

(declare-fun bs!1919566 () Bool)

(assert (= bs!1919566 d!2281079))

(declare-fun m!8014382 () Bool)

(assert (=> bs!1919566 m!8014382))

(assert (=> start!718120 d!2281079))

(declare-fun bs!1919567 () Bool)

(declare-fun d!2281081 () Bool)

(assert (= bs!1919567 (and d!2281081 b!7354052)))

(declare-fun lambda!456840 () Int)

(assert (=> bs!1919567 (= lambda!456840 lambda!456835)))

(declare-fun bs!1919568 () Bool)

(assert (= bs!1919568 (and d!2281081 d!2281077)))

(assert (=> bs!1919568 (= lambda!456840 lambda!456838)))

(declare-fun bs!1919569 () Bool)

(assert (= bs!1919569 (and d!2281081 d!2281079)))

(assert (=> bs!1919569 (= lambda!456840 lambda!456839)))

(assert (=> d!2281081 (= (inv!91302 ct2!378) (forall!18005 (exprs!8625 ct2!378) lambda!456840))))

(declare-fun bs!1919570 () Bool)

(assert (= bs!1919570 d!2281081))

(declare-fun m!8014384 () Bool)

(assert (=> bs!1919570 m!8014384))

(assert (=> start!718120 d!2281081))

(declare-fun b!7354137 () Bool)

(declare-fun e!4403282 () (InoxSet Context!16250))

(declare-fun e!4403280 () (InoxSet Context!16250))

(assert (=> b!7354137 (= e!4403282 e!4403280)))

(declare-fun c!1366327 () Bool)

(assert (=> b!7354137 (= c!1366327 ((_ is Concat!28030) r1!2370))))

(declare-fun call!673059 () List!71681)

(declare-fun call!673061 () (InoxSet Context!16250))

(declare-fun bm!673052 () Bool)

(declare-fun c!1366330 () Bool)

(assert (=> bm!673052 (= call!673061 (derivationStepZipperDown!3011 (ite c!1366330 (regOne!38883 r1!2370) (regOne!38882 r1!2370)) (ite c!1366330 (Context!16251 (++!17003 (exprs!8625 ct1!282) (exprs!8625 ct2!378))) (Context!16251 call!673059)) c!10362))))

(declare-fun b!7354138 () Bool)

(declare-fun e!4403283 () (InoxSet Context!16250))

(declare-fun call!673062 () (InoxSet Context!16250))

(assert (=> b!7354138 (= e!4403283 call!673062)))

(declare-fun b!7354139 () Bool)

(declare-fun e!4403281 () (InoxSet Context!16250))

(assert (=> b!7354139 (= e!4403281 (store ((as const (Array Context!16250 Bool)) false) (Context!16251 (++!17003 (exprs!8625 ct1!282) (exprs!8625 ct2!378))) true))))

(declare-fun d!2281083 () Bool)

(declare-fun c!1366328 () Bool)

(assert (=> d!2281083 (= c!1366328 (and ((_ is ElementMatch!19185) r1!2370) (= (c!1366299 r1!2370) c!10362)))))

(assert (=> d!2281083 (= (derivationStepZipperDown!3011 r1!2370 (Context!16251 (++!17003 (exprs!8625 ct1!282) (exprs!8625 ct2!378))) c!10362) e!4403281)))

(declare-fun b!7354140 () Bool)

(declare-fun e!4403285 () Bool)

(assert (=> b!7354140 (= e!4403285 (nullable!8276 (regOne!38882 r1!2370)))))

(declare-fun bm!673053 () Bool)

(declare-fun call!673058 () List!71681)

(assert (=> bm!673053 (= call!673058 call!673059)))

(declare-fun b!7354141 () Bool)

(declare-fun c!1366326 () Bool)

(assert (=> b!7354141 (= c!1366326 e!4403285)))

(declare-fun res!2969688 () Bool)

(assert (=> b!7354141 (=> (not res!2969688) (not e!4403285))))

(assert (=> b!7354141 (= res!2969688 ((_ is Concat!28030) r1!2370))))

(declare-fun e!4403284 () (InoxSet Context!16250))

(assert (=> b!7354141 (= e!4403284 e!4403282)))

(declare-fun call!673060 () (InoxSet Context!16250))

(declare-fun bm!673054 () Bool)

(assert (=> bm!673054 (= call!673060 (derivationStepZipperDown!3011 (ite c!1366330 (regTwo!38883 r1!2370) (ite c!1366326 (regTwo!38882 r1!2370) (ite c!1366327 (regOne!38882 r1!2370) (reg!19514 r1!2370)))) (ite (or c!1366330 c!1366326) (Context!16251 (++!17003 (exprs!8625 ct1!282) (exprs!8625 ct2!378))) (Context!16251 call!673058)) c!10362))))

(declare-fun bm!673055 () Bool)

(assert (=> bm!673055 (= call!673059 ($colon$colon!3182 (exprs!8625 (Context!16251 (++!17003 (exprs!8625 ct1!282) (exprs!8625 ct2!378)))) (ite (or c!1366326 c!1366327) (regTwo!38882 r1!2370) r1!2370)))))

(declare-fun b!7354142 () Bool)

(declare-fun call!673057 () (InoxSet Context!16250))

(assert (=> b!7354142 (= e!4403282 ((_ map or) call!673061 call!673057))))

(declare-fun b!7354143 () Bool)

(assert (=> b!7354143 (= e!4403281 e!4403284)))

(assert (=> b!7354143 (= c!1366330 ((_ is Union!19185) r1!2370))))

(declare-fun b!7354144 () Bool)

(assert (=> b!7354144 (= e!4403284 ((_ map or) call!673061 call!673060))))

(declare-fun b!7354145 () Bool)

(assert (=> b!7354145 (= e!4403283 ((as const (Array Context!16250 Bool)) false))))

(declare-fun bm!673056 () Bool)

(assert (=> bm!673056 (= call!673062 call!673057)))

(declare-fun b!7354146 () Bool)

(declare-fun c!1366329 () Bool)

(assert (=> b!7354146 (= c!1366329 ((_ is Star!19185) r1!2370))))

(assert (=> b!7354146 (= e!4403280 e!4403283)))

(declare-fun b!7354147 () Bool)

(assert (=> b!7354147 (= e!4403280 call!673062)))

(declare-fun bm!673057 () Bool)

(assert (=> bm!673057 (= call!673057 call!673060)))

(assert (= (and d!2281083 c!1366328) b!7354139))

(assert (= (and d!2281083 (not c!1366328)) b!7354143))

(assert (= (and b!7354143 c!1366330) b!7354144))

(assert (= (and b!7354143 (not c!1366330)) b!7354141))

(assert (= (and b!7354141 res!2969688) b!7354140))

(assert (= (and b!7354141 c!1366326) b!7354142))

(assert (= (and b!7354141 (not c!1366326)) b!7354137))

(assert (= (and b!7354137 c!1366327) b!7354147))

(assert (= (and b!7354137 (not c!1366327)) b!7354146))

(assert (= (and b!7354146 c!1366329) b!7354138))

(assert (= (and b!7354146 (not c!1366329)) b!7354145))

(assert (= (or b!7354147 b!7354138) bm!673053))

(assert (= (or b!7354147 b!7354138) bm!673056))

(assert (= (or b!7354142 bm!673056) bm!673057))

(assert (= (or b!7354142 bm!673053) bm!673055))

(assert (= (or b!7354144 bm!673057) bm!673054))

(assert (= (or b!7354144 b!7354142) bm!673052))

(assert (=> b!7354140 m!8014356))

(declare-fun m!8014386 () Bool)

(assert (=> b!7354139 m!8014386))

(declare-fun m!8014388 () Bool)

(assert (=> bm!673054 m!8014388))

(declare-fun m!8014390 () Bool)

(assert (=> bm!673052 m!8014390))

(declare-fun m!8014392 () Bool)

(assert (=> bm!673055 m!8014392))

(assert (=> b!7354052 d!2281083))

(declare-fun b!7354168 () Bool)

(declare-fun e!4403297 () List!71681)

(assert (=> b!7354168 (= e!4403297 (Cons!71557 (h!78005 (exprs!8625 ct1!282)) (++!17003 (t!386112 (exprs!8625 ct1!282)) (exprs!8625 ct2!378))))))

(declare-fun d!2281087 () Bool)

(declare-fun e!4403296 () Bool)

(assert (=> d!2281087 e!4403296))

(declare-fun res!2969695 () Bool)

(assert (=> d!2281087 (=> (not res!2969695) (not e!4403296))))

(declare-fun lt!2612838 () List!71681)

(declare-fun content!15087 (List!71681) (InoxSet Regex!19185))

(assert (=> d!2281087 (= res!2969695 (= (content!15087 lt!2612838) ((_ map or) (content!15087 (exprs!8625 ct1!282)) (content!15087 (exprs!8625 ct2!378)))))))

(assert (=> d!2281087 (= lt!2612838 e!4403297)))

(declare-fun c!1366338 () Bool)

(assert (=> d!2281087 (= c!1366338 ((_ is Nil!71557) (exprs!8625 ct1!282)))))

(assert (=> d!2281087 (= (++!17003 (exprs!8625 ct1!282) (exprs!8625 ct2!378)) lt!2612838)))

(declare-fun b!7354170 () Bool)

(assert (=> b!7354170 (= e!4403296 (or (not (= (exprs!8625 ct2!378) Nil!71557)) (= lt!2612838 (exprs!8625 ct1!282))))))

(declare-fun b!7354167 () Bool)

(assert (=> b!7354167 (= e!4403297 (exprs!8625 ct2!378))))

(declare-fun b!7354169 () Bool)

(declare-fun res!2969694 () Bool)

(assert (=> b!7354169 (=> (not res!2969694) (not e!4403296))))

(declare-fun size!42065 (List!71681) Int)

(assert (=> b!7354169 (= res!2969694 (= (size!42065 lt!2612838) (+ (size!42065 (exprs!8625 ct1!282)) (size!42065 (exprs!8625 ct2!378)))))))

(assert (= (and d!2281087 c!1366338) b!7354167))

(assert (= (and d!2281087 (not c!1366338)) b!7354168))

(assert (= (and d!2281087 res!2969695) b!7354169))

(assert (= (and b!7354169 res!2969694) b!7354170))

(declare-fun m!8014394 () Bool)

(assert (=> b!7354168 m!8014394))

(declare-fun m!8014396 () Bool)

(assert (=> d!2281087 m!8014396))

(declare-fun m!8014398 () Bool)

(assert (=> d!2281087 m!8014398))

(declare-fun m!8014400 () Bool)

(assert (=> d!2281087 m!8014400))

(declare-fun m!8014402 () Bool)

(assert (=> b!7354169 m!8014402))

(declare-fun m!8014404 () Bool)

(assert (=> b!7354169 m!8014404))

(declare-fun m!8014406 () Bool)

(assert (=> b!7354169 m!8014406))

(assert (=> b!7354052 d!2281087))

(declare-fun d!2281089 () Bool)

(assert (=> d!2281089 (forall!18005 (++!17003 (exprs!8625 ct1!282) (exprs!8625 ct2!378)) lambda!456835)))

(declare-fun lt!2612841 () Unit!165323)

(declare-fun choose!57204 (List!71681 List!71681 Int) Unit!165323)

(assert (=> d!2281089 (= lt!2612841 (choose!57204 (exprs!8625 ct1!282) (exprs!8625 ct2!378) lambda!456835))))

(assert (=> d!2281089 (forall!18005 (exprs!8625 ct1!282) lambda!456835)))

(assert (=> d!2281089 (= (lemmaConcatPreservesForall!1860 (exprs!8625 ct1!282) (exprs!8625 ct2!378) lambda!456835) lt!2612841)))

(declare-fun bs!1919571 () Bool)

(assert (= bs!1919571 d!2281089))

(assert (=> bs!1919571 m!8014332))

(assert (=> bs!1919571 m!8014332))

(declare-fun m!8014416 () Bool)

(assert (=> bs!1919571 m!8014416))

(declare-fun m!8014418 () Bool)

(assert (=> bs!1919571 m!8014418))

(declare-fun m!8014420 () Bool)

(assert (=> bs!1919571 m!8014420))

(assert (=> b!7354052 d!2281089))

(declare-fun d!2281093 () Bool)

(declare-fun nullableFct!3303 (Regex!19185) Bool)

(assert (=> d!2281093 (= (nullable!8276 (regOne!38882 r1!2370)) (nullableFct!3303 (regOne!38882 r1!2370)))))

(declare-fun bs!1919572 () Bool)

(assert (= bs!1919572 d!2281093))

(declare-fun m!8014422 () Bool)

(assert (=> bs!1919572 m!8014422))

(assert (=> b!7354057 d!2281093))

(declare-fun b!7354175 () Bool)

(declare-fun e!4403302 () (InoxSet Context!16250))

(declare-fun e!4403299 () (InoxSet Context!16250))

(assert (=> b!7354175 (= e!4403302 e!4403299)))

(declare-fun c!1366342 () Bool)

(assert (=> b!7354175 (= c!1366342 ((_ is Concat!28030) (reg!19514 r1!2370)))))

(declare-fun bm!673072 () Bool)

(declare-fun call!673081 () (InoxSet Context!16250))

(declare-fun c!1366345 () Bool)

(declare-fun call!673079 () List!71681)

(assert (=> bm!673072 (= call!673081 (derivationStepZipperDown!3011 (ite c!1366345 (regOne!38883 (reg!19514 r1!2370)) (regOne!38882 (reg!19514 r1!2370))) (ite c!1366345 lt!2612831 (Context!16251 call!673079)) c!10362))))

(declare-fun b!7354176 () Bool)

(declare-fun e!4403303 () (InoxSet Context!16250))

(declare-fun call!673082 () (InoxSet Context!16250))

(assert (=> b!7354176 (= e!4403303 call!673082)))

(declare-fun b!7354177 () Bool)

(declare-fun e!4403301 () (InoxSet Context!16250))

(assert (=> b!7354177 (= e!4403301 (store ((as const (Array Context!16250 Bool)) false) lt!2612831 true))))

(declare-fun d!2281095 () Bool)

(declare-fun c!1366343 () Bool)

(assert (=> d!2281095 (= c!1366343 (and ((_ is ElementMatch!19185) (reg!19514 r1!2370)) (= (c!1366299 (reg!19514 r1!2370)) c!10362)))))

(assert (=> d!2281095 (= (derivationStepZipperDown!3011 (reg!19514 r1!2370) lt!2612831 c!10362) e!4403301)))

(declare-fun b!7354178 () Bool)

(declare-fun e!4403305 () Bool)

(assert (=> b!7354178 (= e!4403305 (nullable!8276 (regOne!38882 (reg!19514 r1!2370))))))

(declare-fun bm!673073 () Bool)

(declare-fun call!673078 () List!71681)

(assert (=> bm!673073 (= call!673078 call!673079)))

(declare-fun b!7354179 () Bool)

(declare-fun c!1366340 () Bool)

(assert (=> b!7354179 (= c!1366340 e!4403305)))

(declare-fun res!2969696 () Bool)

(assert (=> b!7354179 (=> (not res!2969696) (not e!4403305))))

(assert (=> b!7354179 (= res!2969696 ((_ is Concat!28030) (reg!19514 r1!2370)))))

(declare-fun e!4403304 () (InoxSet Context!16250))

(assert (=> b!7354179 (= e!4403304 e!4403302)))

(declare-fun call!673080 () (InoxSet Context!16250))

(declare-fun bm!673074 () Bool)

(assert (=> bm!673074 (= call!673080 (derivationStepZipperDown!3011 (ite c!1366345 (regTwo!38883 (reg!19514 r1!2370)) (ite c!1366340 (regTwo!38882 (reg!19514 r1!2370)) (ite c!1366342 (regOne!38882 (reg!19514 r1!2370)) (reg!19514 (reg!19514 r1!2370))))) (ite (or c!1366345 c!1366340) lt!2612831 (Context!16251 call!673078)) c!10362))))

(declare-fun bm!673075 () Bool)

(assert (=> bm!673075 (= call!673079 ($colon$colon!3182 (exprs!8625 lt!2612831) (ite (or c!1366340 c!1366342) (regTwo!38882 (reg!19514 r1!2370)) (reg!19514 r1!2370))))))

(declare-fun b!7354180 () Bool)

(declare-fun call!673077 () (InoxSet Context!16250))

(assert (=> b!7354180 (= e!4403302 ((_ map or) call!673081 call!673077))))

(declare-fun b!7354181 () Bool)

(assert (=> b!7354181 (= e!4403301 e!4403304)))

(assert (=> b!7354181 (= c!1366345 ((_ is Union!19185) (reg!19514 r1!2370)))))

(declare-fun b!7354182 () Bool)

(assert (=> b!7354182 (= e!4403304 ((_ map or) call!673081 call!673080))))

(declare-fun b!7354183 () Bool)

(assert (=> b!7354183 (= e!4403303 ((as const (Array Context!16250 Bool)) false))))

(declare-fun bm!673076 () Bool)

(assert (=> bm!673076 (= call!673082 call!673077)))

(declare-fun b!7354184 () Bool)

(declare-fun c!1366344 () Bool)

(assert (=> b!7354184 (= c!1366344 ((_ is Star!19185) (reg!19514 r1!2370)))))

(assert (=> b!7354184 (= e!4403299 e!4403303)))

(declare-fun b!7354185 () Bool)

(assert (=> b!7354185 (= e!4403299 call!673082)))

(declare-fun bm!673077 () Bool)

(assert (=> bm!673077 (= call!673077 call!673080)))

(assert (= (and d!2281095 c!1366343) b!7354177))

(assert (= (and d!2281095 (not c!1366343)) b!7354181))

(assert (= (and b!7354181 c!1366345) b!7354182))

(assert (= (and b!7354181 (not c!1366345)) b!7354179))

(assert (= (and b!7354179 res!2969696) b!7354178))

(assert (= (and b!7354179 c!1366340) b!7354180))

(assert (= (and b!7354179 (not c!1366340)) b!7354175))

(assert (= (and b!7354175 c!1366342) b!7354185))

(assert (= (and b!7354175 (not c!1366342)) b!7354184))

(assert (= (and b!7354184 c!1366344) b!7354176))

(assert (= (and b!7354184 (not c!1366344)) b!7354183))

(assert (= (or b!7354185 b!7354176) bm!673073))

(assert (= (or b!7354185 b!7354176) bm!673076))

(assert (= (or b!7354180 bm!673076) bm!673077))

(assert (= (or b!7354180 bm!673073) bm!673075))

(assert (= (or b!7354182 bm!673077) bm!673074))

(assert (= (or b!7354182 b!7354180) bm!673072))

(declare-fun m!8014424 () Bool)

(assert (=> b!7354178 m!8014424))

(declare-fun m!8014426 () Bool)

(assert (=> b!7354177 m!8014426))

(declare-fun m!8014428 () Bool)

(assert (=> bm!673074 m!8014428))

(declare-fun m!8014430 () Bool)

(assert (=> bm!673072 m!8014430))

(declare-fun m!8014432 () Bool)

(assert (=> bm!673075 m!8014432))

(assert (=> b!7354062 d!2281095))

(declare-fun d!2281097 () Bool)

(assert (=> d!2281097 (= ($colon$colon!3182 (exprs!8625 ct1!282) lt!2612828) (Cons!71557 lt!2612828 (exprs!8625 ct1!282)))))

(assert (=> b!7354062 d!2281097))

(declare-fun b!7354190 () Bool)

(declare-fun e!4403314 () Bool)

(declare-fun e!4403310 () Bool)

(assert (=> b!7354190 (= e!4403314 e!4403310)))

(declare-fun res!2969705 () Bool)

(assert (=> b!7354190 (=> (not res!2969705) (not e!4403310))))

(declare-fun call!673083 () Bool)

(assert (=> b!7354190 (= res!2969705 call!673083)))

(declare-fun bm!673078 () Bool)

(declare-fun call!673085 () Bool)

(declare-fun c!1366347 () Bool)

(assert (=> bm!673078 (= call!673085 (validRegex!9781 (ite c!1366347 (regOne!38883 lt!2612828) (regTwo!38882 lt!2612828))))))

(declare-fun b!7354191 () Bool)

(assert (=> b!7354191 (= e!4403310 call!673085)))

(declare-fun call!673084 () Bool)

(declare-fun c!1366346 () Bool)

(declare-fun bm!673079 () Bool)

(assert (=> bm!673079 (= call!673084 (validRegex!9781 (ite c!1366346 (reg!19514 lt!2612828) (ite c!1366347 (regTwo!38883 lt!2612828) (regOne!38882 lt!2612828)))))))

(declare-fun b!7354192 () Bool)

(declare-fun e!4403311 () Bool)

(declare-fun e!4403313 () Bool)

(assert (=> b!7354192 (= e!4403311 e!4403313)))

(assert (=> b!7354192 (= c!1366347 ((_ is Union!19185) lt!2612828))))

(declare-fun d!2281099 () Bool)

(declare-fun res!2969701 () Bool)

(declare-fun e!4403309 () Bool)

(assert (=> d!2281099 (=> res!2969701 e!4403309)))

(assert (=> d!2281099 (= res!2969701 ((_ is ElementMatch!19185) lt!2612828))))

(assert (=> d!2281099 (= (validRegex!9781 lt!2612828) e!4403309)))

(declare-fun bm!673080 () Bool)

(assert (=> bm!673080 (= call!673083 call!673084)))

(declare-fun b!7354193 () Bool)

(declare-fun res!2969703 () Bool)

(declare-fun e!4403312 () Bool)

(assert (=> b!7354193 (=> (not res!2969703) (not e!4403312))))

(assert (=> b!7354193 (= res!2969703 call!673085)))

(assert (=> b!7354193 (= e!4403313 e!4403312)))

(declare-fun b!7354194 () Bool)

(assert (=> b!7354194 (= e!4403309 e!4403311)))

(assert (=> b!7354194 (= c!1366346 ((_ is Star!19185) lt!2612828))))

(declare-fun b!7354195 () Bool)

(declare-fun e!4403308 () Bool)

(assert (=> b!7354195 (= e!4403308 call!673084)))

(declare-fun b!7354196 () Bool)

(declare-fun res!2969704 () Bool)

(assert (=> b!7354196 (=> res!2969704 e!4403314)))

(assert (=> b!7354196 (= res!2969704 (not ((_ is Concat!28030) lt!2612828)))))

(assert (=> b!7354196 (= e!4403313 e!4403314)))

(declare-fun b!7354197 () Bool)

(assert (=> b!7354197 (= e!4403311 e!4403308)))

(declare-fun res!2969702 () Bool)

(assert (=> b!7354197 (= res!2969702 (not (nullable!8276 (reg!19514 lt!2612828))))))

(assert (=> b!7354197 (=> (not res!2969702) (not e!4403308))))

(declare-fun b!7354198 () Bool)

(assert (=> b!7354198 (= e!4403312 call!673083)))

(assert (= (and d!2281099 (not res!2969701)) b!7354194))

(assert (= (and b!7354194 c!1366346) b!7354197))

(assert (= (and b!7354194 (not c!1366346)) b!7354192))

(assert (= (and b!7354197 res!2969702) b!7354195))

(assert (= (and b!7354192 c!1366347) b!7354193))

(assert (= (and b!7354192 (not c!1366347)) b!7354196))

(assert (= (and b!7354193 res!2969703) b!7354198))

(assert (= (and b!7354196 (not res!2969704)) b!7354190))

(assert (= (and b!7354190 res!2969705) b!7354191))

(assert (= (or b!7354193 b!7354191) bm!673078))

(assert (= (or b!7354198 b!7354190) bm!673080))

(assert (= (or b!7354195 bm!673080) bm!673079))

(declare-fun m!8014434 () Bool)

(assert (=> bm!673078 m!8014434))

(declare-fun m!8014436 () Bool)

(assert (=> bm!673079 m!8014436))

(declare-fun m!8014438 () Bool)

(assert (=> b!7354197 m!8014438))

(assert (=> b!7354051 d!2281099))

(declare-fun d!2281101 () Bool)

(assert (=> d!2281101 (forall!18005 (++!17003 (exprs!8625 cWitness!61) (exprs!8625 ct2!378)) lambda!456835)))

(declare-fun lt!2612845 () Unit!165323)

(assert (=> d!2281101 (= lt!2612845 (choose!57204 (exprs!8625 cWitness!61) (exprs!8625 ct2!378) lambda!456835))))

(assert (=> d!2281101 (forall!18005 (exprs!8625 cWitness!61) lambda!456835)))

(assert (=> d!2281101 (= (lemmaConcatPreservesForall!1860 (exprs!8625 cWitness!61) (exprs!8625 ct2!378) lambda!456835) lt!2612845)))

(declare-fun bs!1919573 () Bool)

(assert (= bs!1919573 d!2281101))

(assert (=> bs!1919573 m!8014366))

(assert (=> bs!1919573 m!8014366))

(declare-fun m!8014454 () Bool)

(assert (=> bs!1919573 m!8014454))

(declare-fun m!8014456 () Bool)

(assert (=> bs!1919573 m!8014456))

(assert (=> bs!1919573 m!8014372))

(assert (=> b!7354061 d!2281101))

(declare-fun b!7354204 () Bool)

(declare-fun e!4403318 () List!71681)

(assert (=> b!7354204 (= e!4403318 (Cons!71557 (h!78005 lt!2612834) (++!17003 (t!386112 lt!2612834) (exprs!8625 ct2!378))))))

(declare-fun d!2281105 () Bool)

(declare-fun e!4403317 () Bool)

(assert (=> d!2281105 e!4403317))

(declare-fun res!2969709 () Bool)

(assert (=> d!2281105 (=> (not res!2969709) (not e!4403317))))

(declare-fun lt!2612846 () List!71681)

(assert (=> d!2281105 (= res!2969709 (= (content!15087 lt!2612846) ((_ map or) (content!15087 lt!2612834) (content!15087 (exprs!8625 ct2!378)))))))

(assert (=> d!2281105 (= lt!2612846 e!4403318)))

(declare-fun c!1366349 () Bool)

(assert (=> d!2281105 (= c!1366349 ((_ is Nil!71557) lt!2612834))))

(assert (=> d!2281105 (= (++!17003 lt!2612834 (exprs!8625 ct2!378)) lt!2612846)))

(declare-fun b!7354206 () Bool)

(assert (=> b!7354206 (= e!4403317 (or (not (= (exprs!8625 ct2!378) Nil!71557)) (= lt!2612846 lt!2612834)))))

(declare-fun b!7354203 () Bool)

(assert (=> b!7354203 (= e!4403318 (exprs!8625 ct2!378))))

(declare-fun b!7354205 () Bool)

(declare-fun res!2969708 () Bool)

(assert (=> b!7354205 (=> (not res!2969708) (not e!4403317))))

(assert (=> b!7354205 (= res!2969708 (= (size!42065 lt!2612846) (+ (size!42065 lt!2612834) (size!42065 (exprs!8625 ct2!378)))))))

(assert (= (and d!2281105 c!1366349) b!7354203))

(assert (= (and d!2281105 (not c!1366349)) b!7354204))

(assert (= (and d!2281105 res!2969709) b!7354205))

(assert (= (and b!7354205 res!2969708) b!7354206))

(declare-fun m!8014458 () Bool)

(assert (=> b!7354204 m!8014458))

(declare-fun m!8014460 () Bool)

(assert (=> d!2281105 m!8014460))

(declare-fun m!8014462 () Bool)

(assert (=> d!2281105 m!8014462))

(assert (=> d!2281105 m!8014400))

(declare-fun m!8014464 () Bool)

(assert (=> b!7354205 m!8014464))

(declare-fun m!8014466 () Bool)

(assert (=> b!7354205 m!8014466))

(assert (=> b!7354205 m!8014406))

(assert (=> b!7354061 d!2281105))

(declare-fun d!2281107 () Bool)

(declare-fun res!2969714 () Bool)

(declare-fun e!4403323 () Bool)

(assert (=> d!2281107 (=> res!2969714 e!4403323)))

(assert (=> d!2281107 (= res!2969714 ((_ is Nil!71557) (exprs!8625 cWitness!61)))))

(assert (=> d!2281107 (= (forall!18005 (exprs!8625 cWitness!61) lambda!456835) e!4403323)))

(declare-fun b!7354211 () Bool)

(declare-fun e!4403324 () Bool)

(assert (=> b!7354211 (= e!4403323 e!4403324)))

(declare-fun res!2969715 () Bool)

(assert (=> b!7354211 (=> (not res!2969715) (not e!4403324))))

(declare-fun dynLambda!29503 (Int Regex!19185) Bool)

(assert (=> b!7354211 (= res!2969715 (dynLambda!29503 lambda!456835 (h!78005 (exprs!8625 cWitness!61))))))

(declare-fun b!7354212 () Bool)

(assert (=> b!7354212 (= e!4403324 (forall!18005 (t!386112 (exprs!8625 cWitness!61)) lambda!456835))))

(assert (= (and d!2281107 (not res!2969714)) b!7354211))

(assert (= (and b!7354211 res!2969715) b!7354212))

(declare-fun b_lambda!284195 () Bool)

(assert (=> (not b_lambda!284195) (not b!7354211)))

(declare-fun m!8014474 () Bool)

(assert (=> b!7354211 m!8014474))

(declare-fun m!8014476 () Bool)

(assert (=> b!7354212 m!8014476))

(assert (=> b!7354061 d!2281107))

(declare-fun b!7354214 () Bool)

(declare-fun e!4403326 () List!71681)

(assert (=> b!7354214 (= e!4403326 (Cons!71557 (h!78005 (exprs!8625 cWitness!61)) (++!17003 (t!386112 (exprs!8625 cWitness!61)) (exprs!8625 ct2!378))))))

(declare-fun d!2281111 () Bool)

(declare-fun e!4403325 () Bool)

(assert (=> d!2281111 e!4403325))

(declare-fun res!2969717 () Bool)

(assert (=> d!2281111 (=> (not res!2969717) (not e!4403325))))

(declare-fun lt!2612850 () List!71681)

(assert (=> d!2281111 (= res!2969717 (= (content!15087 lt!2612850) ((_ map or) (content!15087 (exprs!8625 cWitness!61)) (content!15087 (exprs!8625 ct2!378)))))))

(assert (=> d!2281111 (= lt!2612850 e!4403326)))

(declare-fun c!1366350 () Bool)

(assert (=> d!2281111 (= c!1366350 ((_ is Nil!71557) (exprs!8625 cWitness!61)))))

(assert (=> d!2281111 (= (++!17003 (exprs!8625 cWitness!61) (exprs!8625 ct2!378)) lt!2612850)))

(declare-fun b!7354216 () Bool)

(assert (=> b!7354216 (= e!4403325 (or (not (= (exprs!8625 ct2!378) Nil!71557)) (= lt!2612850 (exprs!8625 cWitness!61))))))

(declare-fun b!7354213 () Bool)

(assert (=> b!7354213 (= e!4403326 (exprs!8625 ct2!378))))

(declare-fun b!7354215 () Bool)

(declare-fun res!2969716 () Bool)

(assert (=> b!7354215 (=> (not res!2969716) (not e!4403325))))

(assert (=> b!7354215 (= res!2969716 (= (size!42065 lt!2612850) (+ (size!42065 (exprs!8625 cWitness!61)) (size!42065 (exprs!8625 ct2!378)))))))

(assert (= (and d!2281111 c!1366350) b!7354213))

(assert (= (and d!2281111 (not c!1366350)) b!7354214))

(assert (= (and d!2281111 res!2969717) b!7354215))

(assert (= (and b!7354215 res!2969716) b!7354216))

(declare-fun m!8014480 () Bool)

(assert (=> b!7354214 m!8014480))

(declare-fun m!8014482 () Bool)

(assert (=> d!2281111 m!8014482))

(declare-fun m!8014484 () Bool)

(assert (=> d!2281111 m!8014484))

(assert (=> d!2281111 m!8014400))

(declare-fun m!8014486 () Bool)

(assert (=> b!7354215 m!8014486))

(declare-fun m!8014488 () Bool)

(assert (=> b!7354215 m!8014488))

(assert (=> b!7354215 m!8014406))

(assert (=> b!7354061 d!2281111))

(declare-fun b!7354228 () Bool)

(declare-fun e!4403335 () (InoxSet Context!16250))

(declare-fun e!4403333 () (InoxSet Context!16250))

(assert (=> b!7354228 (= e!4403335 e!4403333)))

(declare-fun c!1366357 () Bool)

(assert (=> b!7354228 (= c!1366357 ((_ is Concat!28030) (reg!19514 r1!2370)))))

(declare-fun call!673096 () (InoxSet Context!16250))

(declare-fun bm!673087 () Bool)

(declare-fun c!1366360 () Bool)

(declare-fun call!673094 () List!71681)

(assert (=> bm!673087 (= call!673096 (derivationStepZipperDown!3011 (ite c!1366360 (regOne!38883 (reg!19514 r1!2370)) (regOne!38882 (reg!19514 r1!2370))) (ite c!1366360 (Context!16251 (++!17003 lt!2612834 (exprs!8625 ct2!378))) (Context!16251 call!673094)) c!10362))))

(declare-fun b!7354229 () Bool)

(declare-fun e!4403336 () (InoxSet Context!16250))

(declare-fun call!673097 () (InoxSet Context!16250))

(assert (=> b!7354229 (= e!4403336 call!673097)))

(declare-fun b!7354230 () Bool)

(declare-fun e!4403334 () (InoxSet Context!16250))

(assert (=> b!7354230 (= e!4403334 (store ((as const (Array Context!16250 Bool)) false) (Context!16251 (++!17003 lt!2612834 (exprs!8625 ct2!378))) true))))

(declare-fun d!2281115 () Bool)

(declare-fun c!1366358 () Bool)

(assert (=> d!2281115 (= c!1366358 (and ((_ is ElementMatch!19185) (reg!19514 r1!2370)) (= (c!1366299 (reg!19514 r1!2370)) c!10362)))))

(assert (=> d!2281115 (= (derivationStepZipperDown!3011 (reg!19514 r1!2370) (Context!16251 (++!17003 lt!2612834 (exprs!8625 ct2!378))) c!10362) e!4403334)))

(declare-fun b!7354231 () Bool)

(declare-fun e!4403338 () Bool)

(assert (=> b!7354231 (= e!4403338 (nullable!8276 (regOne!38882 (reg!19514 r1!2370))))))

(declare-fun bm!673088 () Bool)

(declare-fun call!673093 () List!71681)

(assert (=> bm!673088 (= call!673093 call!673094)))

(declare-fun b!7354232 () Bool)

(declare-fun c!1366356 () Bool)

(assert (=> b!7354232 (= c!1366356 e!4403338)))

(declare-fun res!2969719 () Bool)

(assert (=> b!7354232 (=> (not res!2969719) (not e!4403338))))

(assert (=> b!7354232 (= res!2969719 ((_ is Concat!28030) (reg!19514 r1!2370)))))

(declare-fun e!4403337 () (InoxSet Context!16250))

(assert (=> b!7354232 (= e!4403337 e!4403335)))

(declare-fun call!673095 () (InoxSet Context!16250))

(declare-fun bm!673089 () Bool)

(assert (=> bm!673089 (= call!673095 (derivationStepZipperDown!3011 (ite c!1366360 (regTwo!38883 (reg!19514 r1!2370)) (ite c!1366356 (regTwo!38882 (reg!19514 r1!2370)) (ite c!1366357 (regOne!38882 (reg!19514 r1!2370)) (reg!19514 (reg!19514 r1!2370))))) (ite (or c!1366360 c!1366356) (Context!16251 (++!17003 lt!2612834 (exprs!8625 ct2!378))) (Context!16251 call!673093)) c!10362))))

(declare-fun bm!673090 () Bool)

(assert (=> bm!673090 (= call!673094 ($colon$colon!3182 (exprs!8625 (Context!16251 (++!17003 lt!2612834 (exprs!8625 ct2!378)))) (ite (or c!1366356 c!1366357) (regTwo!38882 (reg!19514 r1!2370)) (reg!19514 r1!2370))))))

(declare-fun b!7354233 () Bool)

(declare-fun call!673092 () (InoxSet Context!16250))

(assert (=> b!7354233 (= e!4403335 ((_ map or) call!673096 call!673092))))

(declare-fun b!7354234 () Bool)

(assert (=> b!7354234 (= e!4403334 e!4403337)))

(assert (=> b!7354234 (= c!1366360 ((_ is Union!19185) (reg!19514 r1!2370)))))

(declare-fun b!7354235 () Bool)

(assert (=> b!7354235 (= e!4403337 ((_ map or) call!673096 call!673095))))

(declare-fun b!7354236 () Bool)

(assert (=> b!7354236 (= e!4403336 ((as const (Array Context!16250 Bool)) false))))

(declare-fun bm!673091 () Bool)

(assert (=> bm!673091 (= call!673097 call!673092)))

(declare-fun b!7354237 () Bool)

(declare-fun c!1366359 () Bool)

(assert (=> b!7354237 (= c!1366359 ((_ is Star!19185) (reg!19514 r1!2370)))))

(assert (=> b!7354237 (= e!4403333 e!4403336)))

(declare-fun b!7354238 () Bool)

(assert (=> b!7354238 (= e!4403333 call!673097)))

(declare-fun bm!673092 () Bool)

(assert (=> bm!673092 (= call!673092 call!673095)))

(assert (= (and d!2281115 c!1366358) b!7354230))

(assert (= (and d!2281115 (not c!1366358)) b!7354234))

(assert (= (and b!7354234 c!1366360) b!7354235))

(assert (= (and b!7354234 (not c!1366360)) b!7354232))

(assert (= (and b!7354232 res!2969719) b!7354231))

(assert (= (and b!7354232 c!1366356) b!7354233))

(assert (= (and b!7354232 (not c!1366356)) b!7354228))

(assert (= (and b!7354228 c!1366357) b!7354238))

(assert (= (and b!7354228 (not c!1366357)) b!7354237))

(assert (= (and b!7354237 c!1366359) b!7354229))

(assert (= (and b!7354237 (not c!1366359)) b!7354236))

(assert (= (or b!7354238 b!7354229) bm!673088))

(assert (= (or b!7354238 b!7354229) bm!673091))

(assert (= (or b!7354233 bm!673091) bm!673092))

(assert (= (or b!7354233 bm!673088) bm!673090))

(assert (= (or b!7354235 bm!673092) bm!673089))

(assert (= (or b!7354235 b!7354233) bm!673087))

(assert (=> b!7354231 m!8014424))

(declare-fun m!8014500 () Bool)

(assert (=> b!7354230 m!8014500))

(declare-fun m!8014502 () Bool)

(assert (=> bm!673089 m!8014502))

(declare-fun m!8014504 () Bool)

(assert (=> bm!673087 m!8014504))

(declare-fun m!8014506 () Bool)

(assert (=> bm!673090 m!8014506))

(assert (=> b!7354061 d!2281115))

(declare-fun bs!1919576 () Bool)

(declare-fun d!2281119 () Bool)

(assert (= bs!1919576 (and d!2281119 b!7354052)))

(declare-fun lambda!456847 () Int)

(assert (=> bs!1919576 (= lambda!456847 lambda!456835)))

(declare-fun bs!1919577 () Bool)

(assert (= bs!1919577 (and d!2281119 d!2281077)))

(assert (=> bs!1919577 (= lambda!456847 lambda!456838)))

(declare-fun bs!1919578 () Bool)

(assert (= bs!1919578 (and d!2281119 d!2281079)))

(assert (=> bs!1919578 (= lambda!456847 lambda!456839)))

(declare-fun bs!1919579 () Bool)

(assert (= bs!1919579 (and d!2281119 d!2281081)))

(assert (=> bs!1919579 (= lambda!456847 lambda!456840)))

(assert (=> d!2281119 (select (derivationStepZipperDown!3011 (reg!19514 r1!2370) (Context!16251 (++!17003 (exprs!8625 lt!2612831) (exprs!8625 ct2!378))) c!10362) (Context!16251 (++!17003 (exprs!8625 cWitness!61) (exprs!8625 ct2!378))))))

(declare-fun lt!2612859 () Unit!165323)

(assert (=> d!2281119 (= lt!2612859 (lemmaConcatPreservesForall!1860 (exprs!8625 lt!2612831) (exprs!8625 ct2!378) lambda!456847))))

(declare-fun lt!2612858 () Unit!165323)

(assert (=> d!2281119 (= lt!2612858 (lemmaConcatPreservesForall!1860 (exprs!8625 cWitness!61) (exprs!8625 ct2!378) lambda!456847))))

(declare-fun lt!2612857 () Unit!165323)

(declare-fun choose!57206 (Regex!19185 Context!16250 Context!16250 Context!16250 C!38644) Unit!165323)

(assert (=> d!2281119 (= lt!2612857 (choose!57206 (reg!19514 r1!2370) lt!2612831 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2281119 (validRegex!9781 (reg!19514 r1!2370))))

(assert (=> d!2281119 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!102 (reg!19514 r1!2370) lt!2612831 ct2!378 cWitness!61 c!10362) lt!2612857)))

(declare-fun bs!1919584 () Bool)

(assert (= bs!1919584 d!2281119))

(declare-fun m!8014516 () Bool)

(assert (=> bs!1919584 m!8014516))

(declare-fun m!8014518 () Bool)

(assert (=> bs!1919584 m!8014518))

(declare-fun m!8014520 () Bool)

(assert (=> bs!1919584 m!8014520))

(assert (=> bs!1919584 m!8014366))

(declare-fun m!8014524 () Bool)

(assert (=> bs!1919584 m!8014524))

(declare-fun m!8014526 () Bool)

(assert (=> bs!1919584 m!8014526))

(declare-fun m!8014528 () Bool)

(assert (=> bs!1919584 m!8014528))

(declare-fun m!8014530 () Bool)

(assert (=> bs!1919584 m!8014530))

(assert (=> b!7354061 d!2281119))

(declare-fun d!2281129 () Bool)

(assert (=> d!2281129 (forall!18005 (++!17003 lt!2612834 (exprs!8625 ct2!378)) lambda!456835)))

(declare-fun lt!2612860 () Unit!165323)

(assert (=> d!2281129 (= lt!2612860 (choose!57204 lt!2612834 (exprs!8625 ct2!378) lambda!456835))))

(assert (=> d!2281129 (forall!18005 lt!2612834 lambda!456835)))

(assert (=> d!2281129 (= (lemmaConcatPreservesForall!1860 lt!2612834 (exprs!8625 ct2!378) lambda!456835) lt!2612860)))

(declare-fun bs!1919590 () Bool)

(assert (= bs!1919590 d!2281129))

(assert (=> bs!1919590 m!8014364))

(assert (=> bs!1919590 m!8014364))

(declare-fun m!8014534 () Bool)

(assert (=> bs!1919590 m!8014534))

(declare-fun m!8014536 () Bool)

(assert (=> bs!1919590 m!8014536))

(declare-fun m!8014538 () Bool)

(assert (=> bs!1919590 m!8014538))

(assert (=> b!7354061 d!2281129))

(declare-fun b!7354275 () Bool)

(declare-fun e!4403369 () (InoxSet Context!16250))

(declare-fun e!4403367 () (InoxSet Context!16250))

(assert (=> b!7354275 (= e!4403369 e!4403367)))

(declare-fun c!1366371 () Bool)

(assert (=> b!7354275 (= c!1366371 ((_ is Concat!28030) r1!2370))))

(declare-fun call!673114 () (InoxSet Context!16250))

(declare-fun call!673112 () List!71681)

(declare-fun c!1366374 () Bool)

(declare-fun bm!673105 () Bool)

(assert (=> bm!673105 (= call!673114 (derivationStepZipperDown!3011 (ite c!1366374 (regOne!38883 r1!2370) (regOne!38882 r1!2370)) (ite c!1366374 ct1!282 (Context!16251 call!673112)) c!10362))))

(declare-fun b!7354276 () Bool)

(declare-fun e!4403370 () (InoxSet Context!16250))

(declare-fun call!673115 () (InoxSet Context!16250))

(assert (=> b!7354276 (= e!4403370 call!673115)))

(declare-fun b!7354277 () Bool)

(declare-fun e!4403368 () (InoxSet Context!16250))

(assert (=> b!7354277 (= e!4403368 (store ((as const (Array Context!16250 Bool)) false) ct1!282 true))))

(declare-fun d!2281133 () Bool)

(declare-fun c!1366372 () Bool)

(assert (=> d!2281133 (= c!1366372 (and ((_ is ElementMatch!19185) r1!2370) (= (c!1366299 r1!2370) c!10362)))))

(assert (=> d!2281133 (= (derivationStepZipperDown!3011 r1!2370 ct1!282 c!10362) e!4403368)))

(declare-fun b!7354278 () Bool)

(declare-fun e!4403372 () Bool)

(assert (=> b!7354278 (= e!4403372 (nullable!8276 (regOne!38882 r1!2370)))))

(declare-fun bm!673106 () Bool)

(declare-fun call!673111 () List!71681)

(assert (=> bm!673106 (= call!673111 call!673112)))

(declare-fun b!7354279 () Bool)

(declare-fun c!1366370 () Bool)

(assert (=> b!7354279 (= c!1366370 e!4403372)))

(declare-fun res!2969740 () Bool)

(assert (=> b!7354279 (=> (not res!2969740) (not e!4403372))))

(assert (=> b!7354279 (= res!2969740 ((_ is Concat!28030) r1!2370))))

(declare-fun e!4403371 () (InoxSet Context!16250))

(assert (=> b!7354279 (= e!4403371 e!4403369)))

(declare-fun bm!673107 () Bool)

(declare-fun call!673113 () (InoxSet Context!16250))

(assert (=> bm!673107 (= call!673113 (derivationStepZipperDown!3011 (ite c!1366374 (regTwo!38883 r1!2370) (ite c!1366370 (regTwo!38882 r1!2370) (ite c!1366371 (regOne!38882 r1!2370) (reg!19514 r1!2370)))) (ite (or c!1366374 c!1366370) ct1!282 (Context!16251 call!673111)) c!10362))))

(declare-fun bm!673108 () Bool)

(assert (=> bm!673108 (= call!673112 ($colon$colon!3182 (exprs!8625 ct1!282) (ite (or c!1366370 c!1366371) (regTwo!38882 r1!2370) r1!2370)))))

(declare-fun b!7354280 () Bool)

(declare-fun call!673110 () (InoxSet Context!16250))

(assert (=> b!7354280 (= e!4403369 ((_ map or) call!673114 call!673110))))

(declare-fun b!7354281 () Bool)

(assert (=> b!7354281 (= e!4403368 e!4403371)))

(assert (=> b!7354281 (= c!1366374 ((_ is Union!19185) r1!2370))))

(declare-fun b!7354282 () Bool)

(assert (=> b!7354282 (= e!4403371 ((_ map or) call!673114 call!673113))))

(declare-fun b!7354283 () Bool)

(assert (=> b!7354283 (= e!4403370 ((as const (Array Context!16250 Bool)) false))))

(declare-fun bm!673109 () Bool)

(assert (=> bm!673109 (= call!673115 call!673110)))

(declare-fun b!7354284 () Bool)

(declare-fun c!1366373 () Bool)

(assert (=> b!7354284 (= c!1366373 ((_ is Star!19185) r1!2370))))

(assert (=> b!7354284 (= e!4403367 e!4403370)))

(declare-fun b!7354285 () Bool)

(assert (=> b!7354285 (= e!4403367 call!673115)))

(declare-fun bm!673110 () Bool)

(assert (=> bm!673110 (= call!673110 call!673113)))

(assert (= (and d!2281133 c!1366372) b!7354277))

(assert (= (and d!2281133 (not c!1366372)) b!7354281))

(assert (= (and b!7354281 c!1366374) b!7354282))

(assert (= (and b!7354281 (not c!1366374)) b!7354279))

(assert (= (and b!7354279 res!2969740) b!7354278))

(assert (= (and b!7354279 c!1366370) b!7354280))

(assert (= (and b!7354279 (not c!1366370)) b!7354275))

(assert (= (and b!7354275 c!1366371) b!7354285))

(assert (= (and b!7354275 (not c!1366371)) b!7354284))

(assert (= (and b!7354284 c!1366373) b!7354276))

(assert (= (and b!7354284 (not c!1366373)) b!7354283))

(assert (= (or b!7354285 b!7354276) bm!673106))

(assert (= (or b!7354285 b!7354276) bm!673109))

(assert (= (or b!7354280 bm!673109) bm!673110))

(assert (= (or b!7354280 bm!673106) bm!673108))

(assert (= (or b!7354282 bm!673110) bm!673107))

(assert (= (or b!7354282 b!7354280) bm!673105))

(assert (=> b!7354278 m!8014356))

(declare-fun m!8014546 () Bool)

(assert (=> b!7354277 m!8014546))

(declare-fun m!8014548 () Bool)

(assert (=> bm!673107 m!8014548))

(declare-fun m!8014550 () Bool)

(assert (=> bm!673105 m!8014550))

(declare-fun m!8014552 () Bool)

(assert (=> bm!673108 m!8014552))

(assert (=> b!7354060 d!2281133))

(declare-fun b!7354313 () Bool)

(declare-fun e!4403383 () Bool)

(declare-fun tp!2088962 () Bool)

(assert (=> b!7354313 (= e!4403383 tp!2088962)))

(assert (=> b!7354053 (= tp!2088945 e!4403383)))

(declare-fun b!7354312 () Bool)

(declare-fun tp!2088959 () Bool)

(declare-fun tp!2088958 () Bool)

(assert (=> b!7354312 (= e!4403383 (and tp!2088959 tp!2088958))))

(declare-fun b!7354311 () Bool)

(assert (=> b!7354311 (= e!4403383 tp_is_empty!48615)))

(declare-fun b!7354314 () Bool)

(declare-fun tp!2088960 () Bool)

(declare-fun tp!2088961 () Bool)

(assert (=> b!7354314 (= e!4403383 (and tp!2088960 tp!2088961))))

(assert (= (and b!7354053 ((_ is ElementMatch!19185) (regOne!38882 r1!2370))) b!7354311))

(assert (= (and b!7354053 ((_ is Concat!28030) (regOne!38882 r1!2370))) b!7354312))

(assert (= (and b!7354053 ((_ is Star!19185) (regOne!38882 r1!2370))) b!7354313))

(assert (= (and b!7354053 ((_ is Union!19185) (regOne!38882 r1!2370))) b!7354314))

(declare-fun b!7354321 () Bool)

(declare-fun e!4403386 () Bool)

(declare-fun tp!2088967 () Bool)

(assert (=> b!7354321 (= e!4403386 tp!2088967)))

(assert (=> b!7354053 (= tp!2088947 e!4403386)))

(declare-fun b!7354320 () Bool)

(declare-fun tp!2088964 () Bool)

(declare-fun tp!2088963 () Bool)

(assert (=> b!7354320 (= e!4403386 (and tp!2088964 tp!2088963))))

(declare-fun b!7354319 () Bool)

(assert (=> b!7354319 (= e!4403386 tp_is_empty!48615)))

(declare-fun b!7354322 () Bool)

(declare-fun tp!2088965 () Bool)

(declare-fun tp!2088966 () Bool)

(assert (=> b!7354322 (= e!4403386 (and tp!2088965 tp!2088966))))

(assert (= (and b!7354053 ((_ is ElementMatch!19185) (regTwo!38882 r1!2370))) b!7354319))

(assert (= (and b!7354053 ((_ is Concat!28030) (regTwo!38882 r1!2370))) b!7354320))

(assert (= (and b!7354053 ((_ is Star!19185) (regTwo!38882 r1!2370))) b!7354321))

(assert (= (and b!7354053 ((_ is Union!19185) (regTwo!38882 r1!2370))) b!7354322))

(declare-fun b!7354325 () Bool)

(declare-fun e!4403387 () Bool)

(declare-fun tp!2088972 () Bool)

(assert (=> b!7354325 (= e!4403387 tp!2088972)))

(assert (=> b!7354056 (= tp!2088940 e!4403387)))

(declare-fun b!7354324 () Bool)

(declare-fun tp!2088969 () Bool)

(declare-fun tp!2088968 () Bool)

(assert (=> b!7354324 (= e!4403387 (and tp!2088969 tp!2088968))))

(declare-fun b!7354323 () Bool)

(assert (=> b!7354323 (= e!4403387 tp_is_empty!48615)))

(declare-fun b!7354326 () Bool)

(declare-fun tp!2088970 () Bool)

(declare-fun tp!2088971 () Bool)

(assert (=> b!7354326 (= e!4403387 (and tp!2088970 tp!2088971))))

(assert (= (and b!7354056 ((_ is ElementMatch!19185) (regOne!38883 r1!2370))) b!7354323))

(assert (= (and b!7354056 ((_ is Concat!28030) (regOne!38883 r1!2370))) b!7354324))

(assert (= (and b!7354056 ((_ is Star!19185) (regOne!38883 r1!2370))) b!7354325))

(assert (= (and b!7354056 ((_ is Union!19185) (regOne!38883 r1!2370))) b!7354326))

(declare-fun b!7354340 () Bool)

(declare-fun e!4403394 () Bool)

(declare-fun tp!2088977 () Bool)

(assert (=> b!7354340 (= e!4403394 tp!2088977)))

(assert (=> b!7354056 (= tp!2088943 e!4403394)))

(declare-fun b!7354339 () Bool)

(declare-fun tp!2088974 () Bool)

(declare-fun tp!2088973 () Bool)

(assert (=> b!7354339 (= e!4403394 (and tp!2088974 tp!2088973))))

(declare-fun b!7354338 () Bool)

(assert (=> b!7354338 (= e!4403394 tp_is_empty!48615)))

(declare-fun b!7354341 () Bool)

(declare-fun tp!2088975 () Bool)

(declare-fun tp!2088976 () Bool)

(assert (=> b!7354341 (= e!4403394 (and tp!2088975 tp!2088976))))

(assert (= (and b!7354056 ((_ is ElementMatch!19185) (regTwo!38883 r1!2370))) b!7354338))

(assert (= (and b!7354056 ((_ is Concat!28030) (regTwo!38883 r1!2370))) b!7354339))

(assert (= (and b!7354056 ((_ is Star!19185) (regTwo!38883 r1!2370))) b!7354340))

(assert (= (and b!7354056 ((_ is Union!19185) (regTwo!38883 r1!2370))) b!7354341))

(declare-fun b!7354346 () Bool)

(declare-fun e!4403397 () Bool)

(declare-fun tp!2088982 () Bool)

(declare-fun tp!2088983 () Bool)

(assert (=> b!7354346 (= e!4403397 (and tp!2088982 tp!2088983))))

(assert (=> b!7354055 (= tp!2088944 e!4403397)))

(assert (= (and b!7354055 ((_ is Cons!71557) (exprs!8625 cWitness!61))) b!7354346))

(declare-fun b!7354347 () Bool)

(declare-fun e!4403398 () Bool)

(declare-fun tp!2088984 () Bool)

(declare-fun tp!2088985 () Bool)

(assert (=> b!7354347 (= e!4403398 (and tp!2088984 tp!2088985))))

(assert (=> b!7354054 (= tp!2088946 e!4403398)))

(assert (= (and b!7354054 ((_ is Cons!71557) (exprs!8625 ct1!282))) b!7354347))

(declare-fun b!7354350 () Bool)

(declare-fun e!4403399 () Bool)

(declare-fun tp!2088990 () Bool)

(assert (=> b!7354350 (= e!4403399 tp!2088990)))

(assert (=> b!7354059 (= tp!2088942 e!4403399)))

(declare-fun b!7354349 () Bool)

(declare-fun tp!2088987 () Bool)

(declare-fun tp!2088986 () Bool)

(assert (=> b!7354349 (= e!4403399 (and tp!2088987 tp!2088986))))

(declare-fun b!7354348 () Bool)

(assert (=> b!7354348 (= e!4403399 tp_is_empty!48615)))

(declare-fun b!7354351 () Bool)

(declare-fun tp!2088988 () Bool)

(declare-fun tp!2088989 () Bool)

(assert (=> b!7354351 (= e!4403399 (and tp!2088988 tp!2088989))))

(assert (= (and b!7354059 ((_ is ElementMatch!19185) (reg!19514 r1!2370))) b!7354348))

(assert (= (and b!7354059 ((_ is Concat!28030) (reg!19514 r1!2370))) b!7354349))

(assert (= (and b!7354059 ((_ is Star!19185) (reg!19514 r1!2370))) b!7354350))

(assert (= (and b!7354059 ((_ is Union!19185) (reg!19514 r1!2370))) b!7354351))

(declare-fun b!7354352 () Bool)

(declare-fun e!4403400 () Bool)

(declare-fun tp!2088991 () Bool)

(declare-fun tp!2088992 () Bool)

(assert (=> b!7354352 (= e!4403400 (and tp!2088991 tp!2088992))))

(assert (=> b!7354064 (= tp!2088941 e!4403400)))

(assert (= (and b!7354064 ((_ is Cons!71557) (exprs!8625 ct2!378))) b!7354352))

(declare-fun b_lambda!284197 () Bool)

(assert (= b_lambda!284195 (or b!7354052 b_lambda!284197)))

(declare-fun bs!1919591 () Bool)

(declare-fun d!2281145 () Bool)

(assert (= bs!1919591 (and d!2281145 b!7354052)))

(assert (=> bs!1919591 (= (dynLambda!29503 lambda!456835 (h!78005 (exprs!8625 cWitness!61))) (validRegex!9781 (h!78005 (exprs!8625 cWitness!61))))))

(declare-fun m!8014590 () Bool)

(assert (=> bs!1919591 m!8014590))

(assert (=> b!7354211 d!2281145))

(check-sat (not b!7354197) (not bs!1919591) (not b!7354231) (not b!7354340) (not bm!673052) (not b!7354314) (not bm!673108) (not bm!673074) (not b!7354321) (not b!7354325) (not b_lambda!284197) (not bm!673087) (not b!7354349) (not bm!673089) (not b!7354352) (not b!7354205) (not d!2281111) (not b!7354204) (not b!7354346) (not d!2281129) (not b!7354351) (not bm!673079) (not bm!673034) (not bm!673072) (not bm!673105) (not d!2281081) (not d!2281105) (not bm!673075) (not b!7354322) (not bm!673090) (not b!7354140) (not b!7354341) (not d!2281101) (not b!7354169) (not d!2281079) (not b!7354278) (not d!2281119) (not b!7354312) (not b!7354215) (not b!7354326) (not bm!673054) (not bm!673033) (not b!7354320) (not bm!673055) (not b!7354212) (not d!2281087) (not d!2281093) (not d!2281077) (not b!7354313) (not bm!673078) (not b!7354350) (not bm!673107) (not b!7354347) tp_is_empty!48615 (not d!2281089) (not b!7354339) (not b!7354168) (not b!7354091) (not b!7354178) (not b!7354324) (not b!7354214))
(check-sat)
