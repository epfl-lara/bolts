; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715754 () Bool)

(assert start!715754)

(declare-fun lt!2607438 () Int)

(declare-fun e!4389205 () Bool)

(declare-fun b!7330080 () Bool)

(declare-fun lt!2607434 () Int)

(declare-fun lt!2607436 () Int)

(declare-fun lt!2607435 () Int)

(assert (=> b!7330080 (= e!4389205 (and (>= lt!2607434 lt!2607436) (or (not (= lt!2607434 lt!2607436)) (>= lt!2607438 lt!2607435))))))

(declare-datatypes ((C!38346 0))(
  ( (C!38347 (val!29533 Int)) )
))
(declare-datatypes ((Regex!19036 0))(
  ( (ElementMatch!19036 (c!1360902 C!38346)) (Concat!27881 (regOne!38584 Regex!19036) (regTwo!38584 Regex!19036)) (EmptyExpr!19036) (Star!19036 (reg!19365 Regex!19036)) (EmptyLang!19036) (Union!19036 (regOne!38585 Regex!19036) (regTwo!38585 Regex!19036)) )
))
(declare-datatypes ((List!71532 0))(
  ( (Nil!71408) (Cons!71408 (h!77856 Regex!19036) (t!385919 List!71532)) )
))
(declare-datatypes ((Context!15952 0))(
  ( (Context!15953 (exprs!8476 List!71532)) )
))
(declare-fun ct1!256 () Context!15952)

(declare-fun contextDepthTotal!568 (Context!15952) Int)

(assert (=> b!7330080 (= lt!2607435 (contextDepthTotal!568 ct1!256))))

(declare-fun size!41947 (List!71532) Int)

(assert (=> b!7330080 (= lt!2607436 (size!41947 (exprs!8476 ct1!256)))))

(declare-fun lt!2607429 () Context!15952)

(assert (=> b!7330080 (= lt!2607438 (contextDepthTotal!568 lt!2607429))))

(declare-fun lt!2607428 () List!71532)

(assert (=> b!7330080 (= lt!2607434 (size!41947 lt!2607428))))

(declare-fun b!7330081 () Bool)

(declare-fun e!4389203 () Bool)

(declare-fun e!4389207 () Bool)

(assert (=> b!7330081 (= e!4389203 e!4389207)))

(declare-fun res!2962439 () Bool)

(assert (=> b!7330081 (=> (not res!2962439) (not e!4389207))))

(declare-fun nullable!8137 (Regex!19036) Bool)

(assert (=> b!7330081 (= res!2962439 (nullable!8137 (h!77856 (exprs!8476 ct1!256))))))

(declare-fun lt!2607433 () (Set Context!15952))

(declare-fun c!10305 () C!38346)

(declare-fun derivationStepZipperDown!2863 (Regex!19036 Context!15952 C!38346) (Set Context!15952))

(assert (=> b!7330081 (= lt!2607433 (derivationStepZipperDown!2863 (h!77856 (exprs!8476 ct1!256)) lt!2607429 c!10305))))

(assert (=> b!7330081 (= lt!2607429 (Context!15953 lt!2607428))))

(declare-fun tail!14717 (List!71532) List!71532)

(assert (=> b!7330081 (= lt!2607428 (tail!14717 (exprs!8476 ct1!256)))))

(declare-fun res!2962441 () Bool)

(declare-fun e!4389201 () Bool)

(assert (=> start!715754 (=> (not res!2962441) (not e!4389201))))

(declare-fun cWitness!35 () Context!15952)

(declare-fun lt!2607432 () (Set Context!15952))

(assert (=> start!715754 (= res!2962441 (set.member cWitness!35 lt!2607432))))

(declare-fun derivationStepZipperUp!2716 (Context!15952 C!38346) (Set Context!15952))

(assert (=> start!715754 (= lt!2607432 (derivationStepZipperUp!2716 ct1!256 c!10305))))

(assert (=> start!715754 e!4389201))

(declare-fun tp_is_empty!48317 () Bool)

(assert (=> start!715754 tp_is_empty!48317))

(declare-fun e!4389204 () Bool)

(declare-fun inv!90931 (Context!15952) Bool)

(assert (=> start!715754 (and (inv!90931 cWitness!35) e!4389204)))

(declare-fun e!4389206 () Bool)

(assert (=> start!715754 (and (inv!90931 ct1!256) e!4389206)))

(declare-fun ct2!352 () Context!15952)

(declare-fun e!4389202 () Bool)

(assert (=> start!715754 (and (inv!90931 ct2!352) e!4389202)))

(declare-fun b!7330082 () Bool)

(declare-fun tp!2081318 () Bool)

(assert (=> b!7330082 (= e!4389206 tp!2081318)))

(declare-fun b!7330083 () Bool)

(declare-fun tp!2081316 () Bool)

(assert (=> b!7330083 (= e!4389202 tp!2081316)))

(declare-fun b!7330084 () Bool)

(declare-fun tp!2081317 () Bool)

(assert (=> b!7330084 (= e!4389204 tp!2081317)))

(declare-fun b!7330085 () Bool)

(assert (=> b!7330085 (= e!4389207 e!4389205)))

(declare-fun res!2962442 () Bool)

(assert (=> b!7330085 (=> (not res!2962442) (not e!4389205))))

(declare-fun lt!2607430 () (Set Context!15952))

(assert (=> b!7330085 (= res!2962442 (and (= lt!2607432 (set.union lt!2607433 lt!2607430)) (or (set.member cWitness!35 lt!2607433) (set.member cWitness!35 lt!2607430)) (set.member cWitness!35 lt!2607430)))))

(assert (=> b!7330085 (= lt!2607430 (derivationStepZipperUp!2716 lt!2607429 c!10305))))

(declare-fun b!7330086 () Bool)

(assert (=> b!7330086 (= e!4389201 e!4389203)))

(declare-fun res!2962440 () Bool)

(assert (=> b!7330086 (=> (not res!2962440) (not e!4389203))))

(assert (=> b!7330086 (= res!2962440 (is-Cons!71408 (exprs!8476 ct1!256)))))

(declare-fun lt!2607431 () List!71532)

(declare-fun ++!16858 (List!71532 List!71532) List!71532)

(assert (=> b!7330086 (= lt!2607431 (++!16858 (exprs!8476 ct1!256) (exprs!8476 ct2!352)))))

(declare-datatypes ((Unit!165033 0))(
  ( (Unit!165034) )
))
(declare-fun lt!2607437 () Unit!165033)

(declare-fun lambda!454560 () Int)

(declare-fun lemmaConcatPreservesForall!1715 (List!71532 List!71532 Int) Unit!165033)

(assert (=> b!7330086 (= lt!2607437 (lemmaConcatPreservesForall!1715 (exprs!8476 ct1!256) (exprs!8476 ct2!352) lambda!454560))))

(declare-fun b!7330087 () Bool)

(declare-fun res!2962443 () Bool)

(assert (=> b!7330087 (=> (not res!2962443) (not e!4389203))))

(declare-fun isEmpty!40948 (List!71532) Bool)

(assert (=> b!7330087 (= res!2962443 (not (isEmpty!40948 (exprs!8476 ct1!256))))))

(assert (= (and start!715754 res!2962441) b!7330086))

(assert (= (and b!7330086 res!2962440) b!7330087))

(assert (= (and b!7330087 res!2962443) b!7330081))

(assert (= (and b!7330081 res!2962439) b!7330085))

(assert (= (and b!7330085 res!2962442) b!7330080))

(assert (= start!715754 b!7330084))

(assert (= start!715754 b!7330082))

(assert (= start!715754 b!7330083))

(declare-fun m!7995996 () Bool)

(assert (=> b!7330081 m!7995996))

(declare-fun m!7995998 () Bool)

(assert (=> b!7330081 m!7995998))

(declare-fun m!7996000 () Bool)

(assert (=> b!7330081 m!7996000))

(declare-fun m!7996002 () Bool)

(assert (=> b!7330085 m!7996002))

(declare-fun m!7996004 () Bool)

(assert (=> b!7330085 m!7996004))

(declare-fun m!7996006 () Bool)

(assert (=> b!7330085 m!7996006))

(declare-fun m!7996008 () Bool)

(assert (=> start!715754 m!7996008))

(declare-fun m!7996010 () Bool)

(assert (=> start!715754 m!7996010))

(declare-fun m!7996012 () Bool)

(assert (=> start!715754 m!7996012))

(declare-fun m!7996014 () Bool)

(assert (=> start!715754 m!7996014))

(declare-fun m!7996016 () Bool)

(assert (=> start!715754 m!7996016))

(declare-fun m!7996018 () Bool)

(assert (=> b!7330087 m!7996018))

(declare-fun m!7996020 () Bool)

(assert (=> b!7330080 m!7996020))

(declare-fun m!7996022 () Bool)

(assert (=> b!7330080 m!7996022))

(declare-fun m!7996024 () Bool)

(assert (=> b!7330080 m!7996024))

(declare-fun m!7996026 () Bool)

(assert (=> b!7330080 m!7996026))

(declare-fun m!7996028 () Bool)

(assert (=> b!7330086 m!7996028))

(declare-fun m!7996030 () Bool)

(assert (=> b!7330086 m!7996030))

(push 1)

(assert (not b!7330082))

(assert tp_is_empty!48317)

(assert (not b!7330080))

(assert (not start!715754))

(assert (not b!7330083))

(assert (not b!7330085))

(assert (not b!7330084))

(assert (not b!7330086))

(assert (not b!7330081))

(assert (not b!7330087))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!667569 () Bool)

(declare-fun call!667574 () (Set Context!15952))

(assert (=> bm!667569 (= call!667574 (derivationStepZipperDown!2863 (h!77856 (exprs!8476 ct1!256)) (Context!15953 (t!385919 (exprs!8476 ct1!256))) c!10305))))

(declare-fun b!7330122 () Bool)

(declare-fun e!4389235 () (Set Context!15952))

(declare-fun e!4389237 () (Set Context!15952))

(assert (=> b!7330122 (= e!4389235 e!4389237)))

(declare-fun c!1360908 () Bool)

(assert (=> b!7330122 (= c!1360908 (is-Cons!71408 (exprs!8476 ct1!256)))))

(declare-fun b!7330123 () Bool)

(declare-fun e!4389236 () Bool)

(assert (=> b!7330123 (= e!4389236 (nullable!8137 (h!77856 (exprs!8476 ct1!256))))))

(declare-fun b!7330124 () Bool)

(assert (=> b!7330124 (= e!4389235 (set.union call!667574 (derivationStepZipperUp!2716 (Context!15953 (t!385919 (exprs!8476 ct1!256))) c!10305)))))

(declare-fun b!7330125 () Bool)

(assert (=> b!7330125 (= e!4389237 (as set.empty (Set Context!15952)))))

(declare-fun b!7330126 () Bool)

(assert (=> b!7330126 (= e!4389237 call!667574)))

(declare-fun d!2276271 () Bool)

(declare-fun c!1360909 () Bool)

(assert (=> d!2276271 (= c!1360909 e!4389236)))

(declare-fun res!2962461 () Bool)

(assert (=> d!2276271 (=> (not res!2962461) (not e!4389236))))

(assert (=> d!2276271 (= res!2962461 (is-Cons!71408 (exprs!8476 ct1!256)))))

(assert (=> d!2276271 (= (derivationStepZipperUp!2716 ct1!256 c!10305) e!4389235)))

(assert (= (and d!2276271 res!2962461) b!7330123))

(assert (= (and d!2276271 c!1360909) b!7330124))

(assert (= (and d!2276271 (not c!1360909)) b!7330122))

(assert (= (and b!7330122 c!1360908) b!7330126))

(assert (= (and b!7330122 (not c!1360908)) b!7330125))

(assert (= (or b!7330124 b!7330126) bm!667569))

(declare-fun m!7996068 () Bool)

(assert (=> bm!667569 m!7996068))

(assert (=> b!7330123 m!7995996))

(declare-fun m!7996070 () Bool)

(assert (=> b!7330124 m!7996070))

(assert (=> start!715754 d!2276271))

(declare-fun bs!1917243 () Bool)

(declare-fun d!2276273 () Bool)

(assert (= bs!1917243 (and d!2276273 b!7330086)))

(declare-fun lambda!454566 () Int)

(assert (=> bs!1917243 (= lambda!454566 lambda!454560)))

(declare-fun forall!17878 (List!71532 Int) Bool)

(assert (=> d!2276273 (= (inv!90931 cWitness!35) (forall!17878 (exprs!8476 cWitness!35) lambda!454566))))

(declare-fun bs!1917244 () Bool)

(assert (= bs!1917244 d!2276273))

(declare-fun m!7996072 () Bool)

(assert (=> bs!1917244 m!7996072))

(assert (=> start!715754 d!2276273))

(declare-fun bs!1917245 () Bool)

(declare-fun d!2276275 () Bool)

(assert (= bs!1917245 (and d!2276275 b!7330086)))

(declare-fun lambda!454567 () Int)

(assert (=> bs!1917245 (= lambda!454567 lambda!454560)))

(declare-fun bs!1917246 () Bool)

(assert (= bs!1917246 (and d!2276275 d!2276273)))

(assert (=> bs!1917246 (= lambda!454567 lambda!454566)))

(assert (=> d!2276275 (= (inv!90931 ct1!256) (forall!17878 (exprs!8476 ct1!256) lambda!454567))))

(declare-fun bs!1917247 () Bool)

(assert (= bs!1917247 d!2276275))

(declare-fun m!7996074 () Bool)

(assert (=> bs!1917247 m!7996074))

(assert (=> start!715754 d!2276275))

(declare-fun bs!1917248 () Bool)

(declare-fun d!2276277 () Bool)

(assert (= bs!1917248 (and d!2276277 b!7330086)))

(declare-fun lambda!454568 () Int)

(assert (=> bs!1917248 (= lambda!454568 lambda!454560)))

(declare-fun bs!1917249 () Bool)

(assert (= bs!1917249 (and d!2276277 d!2276273)))

(assert (=> bs!1917249 (= lambda!454568 lambda!454566)))

(declare-fun bs!1917250 () Bool)

(assert (= bs!1917250 (and d!2276277 d!2276275)))

(assert (=> bs!1917250 (= lambda!454568 lambda!454567)))

(assert (=> d!2276277 (= (inv!90931 ct2!352) (forall!17878 (exprs!8476 ct2!352) lambda!454568))))

(declare-fun bs!1917251 () Bool)

(assert (= bs!1917251 d!2276277))

(declare-fun m!7996076 () Bool)

(assert (=> bs!1917251 m!7996076))

(assert (=> start!715754 d!2276277))

(declare-fun d!2276279 () Bool)

(assert (=> d!2276279 (= (isEmpty!40948 (exprs!8476 ct1!256)) (is-Nil!71408 (exprs!8476 ct1!256)))))

(assert (=> b!7330087 d!2276279))

(declare-fun lt!2607474 () List!71532)

(declare-fun b!7330138 () Bool)

(declare-fun e!4389242 () Bool)

(assert (=> b!7330138 (= e!4389242 (or (not (= (exprs!8476 ct2!352) Nil!71408)) (= lt!2607474 (exprs!8476 ct1!256))))))

(declare-fun b!7330137 () Bool)

(declare-fun res!2962466 () Bool)

(assert (=> b!7330137 (=> (not res!2962466) (not e!4389242))))

(assert (=> b!7330137 (= res!2962466 (= (size!41947 lt!2607474) (+ (size!41947 (exprs!8476 ct1!256)) (size!41947 (exprs!8476 ct2!352)))))))

(declare-fun b!7330135 () Bool)

(declare-fun e!4389243 () List!71532)

(assert (=> b!7330135 (= e!4389243 (exprs!8476 ct2!352))))

(declare-fun d!2276281 () Bool)

(assert (=> d!2276281 e!4389242))

(declare-fun res!2962467 () Bool)

(assert (=> d!2276281 (=> (not res!2962467) (not e!4389242))))

(declare-fun content!14969 (List!71532) (Set Regex!19036))

(assert (=> d!2276281 (= res!2962467 (= (content!14969 lt!2607474) (set.union (content!14969 (exprs!8476 ct1!256)) (content!14969 (exprs!8476 ct2!352)))))))

(assert (=> d!2276281 (= lt!2607474 e!4389243)))

(declare-fun c!1360912 () Bool)

(assert (=> d!2276281 (= c!1360912 (is-Nil!71408 (exprs!8476 ct1!256)))))

(assert (=> d!2276281 (= (++!16858 (exprs!8476 ct1!256) (exprs!8476 ct2!352)) lt!2607474)))

(declare-fun b!7330136 () Bool)

(assert (=> b!7330136 (= e!4389243 (Cons!71408 (h!77856 (exprs!8476 ct1!256)) (++!16858 (t!385919 (exprs!8476 ct1!256)) (exprs!8476 ct2!352))))))

(assert (= (and d!2276281 c!1360912) b!7330135))

(assert (= (and d!2276281 (not c!1360912)) b!7330136))

(assert (= (and d!2276281 res!2962467) b!7330137))

(assert (= (and b!7330137 res!2962466) b!7330138))

(declare-fun m!7996078 () Bool)

(assert (=> b!7330137 m!7996078))

(assert (=> b!7330137 m!7996022))

(declare-fun m!7996080 () Bool)

(assert (=> b!7330137 m!7996080))

(declare-fun m!7996082 () Bool)

(assert (=> d!2276281 m!7996082))

(declare-fun m!7996084 () Bool)

(assert (=> d!2276281 m!7996084))

(declare-fun m!7996086 () Bool)

(assert (=> d!2276281 m!7996086))

(declare-fun m!7996088 () Bool)

(assert (=> b!7330136 m!7996088))

(assert (=> b!7330086 d!2276281))

(declare-fun d!2276283 () Bool)

(assert (=> d!2276283 (forall!17878 (++!16858 (exprs!8476 ct1!256) (exprs!8476 ct2!352)) lambda!454560)))

(declare-fun lt!2607477 () Unit!165033)

(declare-fun choose!57014 (List!71532 List!71532 Int) Unit!165033)

(assert (=> d!2276283 (= lt!2607477 (choose!57014 (exprs!8476 ct1!256) (exprs!8476 ct2!352) lambda!454560))))

(assert (=> d!2276283 (forall!17878 (exprs!8476 ct1!256) lambda!454560)))

(assert (=> d!2276283 (= (lemmaConcatPreservesForall!1715 (exprs!8476 ct1!256) (exprs!8476 ct2!352) lambda!454560) lt!2607477)))

(declare-fun bs!1917252 () Bool)

(assert (= bs!1917252 d!2276283))

(assert (=> bs!1917252 m!7996028))

(assert (=> bs!1917252 m!7996028))

(declare-fun m!7996090 () Bool)

(assert (=> bs!1917252 m!7996090))

(declare-fun m!7996092 () Bool)

(assert (=> bs!1917252 m!7996092))

(declare-fun m!7996094 () Bool)

(assert (=> bs!1917252 m!7996094))

(assert (=> b!7330086 d!2276283))

(declare-fun d!2276285 () Bool)

(declare-fun nullableFct!3235 (Regex!19036) Bool)

(assert (=> d!2276285 (= (nullable!8137 (h!77856 (exprs!8476 ct1!256))) (nullableFct!3235 (h!77856 (exprs!8476 ct1!256))))))

(declare-fun bs!1917253 () Bool)

(assert (= bs!1917253 d!2276285))

(declare-fun m!7996096 () Bool)

(assert (=> bs!1917253 m!7996096))

(assert (=> b!7330081 d!2276285))

(declare-fun d!2276287 () Bool)

(declare-fun c!1360927 () Bool)

(assert (=> d!2276287 (= c!1360927 (and (is-ElementMatch!19036 (h!77856 (exprs!8476 ct1!256))) (= (c!1360902 (h!77856 (exprs!8476 ct1!256))) c!10305)))))

(declare-fun e!4389260 () (Set Context!15952))

(assert (=> d!2276287 (= (derivationStepZipperDown!2863 (h!77856 (exprs!8476 ct1!256)) lt!2607429 c!10305) e!4389260)))

(declare-fun b!7330167 () Bool)

(declare-fun c!1360930 () Bool)

(assert (=> b!7330167 (= c!1360930 (is-Star!19036 (h!77856 (exprs!8476 ct1!256))))))

(declare-fun e!4389264 () (Set Context!15952))

(declare-fun e!4389262 () (Set Context!15952))

(assert (=> b!7330167 (= e!4389264 e!4389262)))

(declare-fun b!7330168 () Bool)

(declare-fun e!4389263 () (Set Context!15952))

(declare-fun call!667589 () (Set Context!15952))

(declare-fun call!667590 () (Set Context!15952))

(assert (=> b!7330168 (= e!4389263 (set.union call!667589 call!667590))))

(declare-fun b!7330169 () Bool)

(assert (=> b!7330169 (= e!4389262 (as set.empty (Set Context!15952)))))

(declare-fun bm!667582 () Bool)

(declare-fun call!667592 () List!71532)

(declare-fun call!667591 () List!71532)

(assert (=> bm!667582 (= call!667592 call!667591)))

(declare-fun b!7330170 () Bool)

(declare-fun e!4389259 () (Set Context!15952))

(declare-fun call!667587 () (Set Context!15952))

(assert (=> b!7330170 (= e!4389259 (set.union call!667589 call!667587))))

(declare-fun b!7330171 () Bool)

(assert (=> b!7330171 (= e!4389259 e!4389264)))

(declare-fun c!1360929 () Bool)

(assert (=> b!7330171 (= c!1360929 (is-Concat!27881 (h!77856 (exprs!8476 ct1!256))))))

(declare-fun bm!667583 () Bool)

(declare-fun c!1360928 () Bool)

(declare-fun c!1360931 () Bool)

(assert (=> bm!667583 (= call!667590 (derivationStepZipperDown!2863 (ite c!1360931 (regTwo!38585 (h!77856 (exprs!8476 ct1!256))) (ite c!1360928 (regTwo!38584 (h!77856 (exprs!8476 ct1!256))) (ite c!1360929 (regOne!38584 (h!77856 (exprs!8476 ct1!256))) (reg!19365 (h!77856 (exprs!8476 ct1!256)))))) (ite (or c!1360931 c!1360928) lt!2607429 (Context!15953 call!667592)) c!10305))))

(declare-fun b!7330172 () Bool)

(declare-fun e!4389261 () Bool)

(assert (=> b!7330172 (= e!4389261 (nullable!8137 (regOne!38584 (h!77856 (exprs!8476 ct1!256)))))))

(declare-fun b!7330173 () Bool)

(assert (=> b!7330173 (= e!4389260 e!4389263)))

(assert (=> b!7330173 (= c!1360931 (is-Union!19036 (h!77856 (exprs!8476 ct1!256))))))

(declare-fun b!7330174 () Bool)

(declare-fun call!667588 () (Set Context!15952))

(assert (=> b!7330174 (= e!4389264 call!667588)))

(declare-fun bm!667584 () Bool)

(assert (=> bm!667584 (= call!667587 call!667590)))

(declare-fun b!7330175 () Bool)

(assert (=> b!7330175 (= c!1360928 e!4389261)))

(declare-fun res!2962470 () Bool)

(assert (=> b!7330175 (=> (not res!2962470) (not e!4389261))))

(assert (=> b!7330175 (= res!2962470 (is-Concat!27881 (h!77856 (exprs!8476 ct1!256))))))

(assert (=> b!7330175 (= e!4389263 e!4389259)))

(declare-fun bm!667585 () Bool)

(assert (=> bm!667585 (= call!667588 call!667587)))

(declare-fun b!7330176 () Bool)

(assert (=> b!7330176 (= e!4389260 (set.insert lt!2607429 (as set.empty (Set Context!15952))))))

(declare-fun bm!667586 () Bool)

(assert (=> bm!667586 (= call!667589 (derivationStepZipperDown!2863 (ite c!1360931 (regOne!38585 (h!77856 (exprs!8476 ct1!256))) (regOne!38584 (h!77856 (exprs!8476 ct1!256)))) (ite c!1360931 lt!2607429 (Context!15953 call!667591)) c!10305))))

(declare-fun b!7330177 () Bool)

(assert (=> b!7330177 (= e!4389262 call!667588)))

(declare-fun bm!667587 () Bool)

(declare-fun $colon$colon!3052 (List!71532 Regex!19036) List!71532)

(assert (=> bm!667587 (= call!667591 ($colon$colon!3052 (exprs!8476 lt!2607429) (ite (or c!1360928 c!1360929) (regTwo!38584 (h!77856 (exprs!8476 ct1!256))) (h!77856 (exprs!8476 ct1!256)))))))

(assert (= (and d!2276287 c!1360927) b!7330176))

(assert (= (and d!2276287 (not c!1360927)) b!7330173))

(assert (= (and b!7330173 c!1360931) b!7330168))

(assert (= (and b!7330173 (not c!1360931)) b!7330175))

(assert (= (and b!7330175 res!2962470) b!7330172))

(assert (= (and b!7330175 c!1360928) b!7330170))

(assert (= (and b!7330175 (not c!1360928)) b!7330171))

(assert (= (and b!7330171 c!1360929) b!7330174))

(assert (= (and b!7330171 (not c!1360929)) b!7330167))

(assert (= (and b!7330167 c!1360930) b!7330177))

(assert (= (and b!7330167 (not c!1360930)) b!7330169))

(assert (= (or b!7330174 b!7330177) bm!667582))

(assert (= (or b!7330174 b!7330177) bm!667585))

(assert (= (or b!7330170 bm!667585) bm!667584))

(assert (= (or b!7330170 bm!667582) bm!667587))

(assert (= (or b!7330168 bm!667584) bm!667583))

(assert (= (or b!7330168 b!7330170) bm!667586))

(declare-fun m!7996102 () Bool)

(assert (=> bm!667587 m!7996102))

(declare-fun m!7996104 () Bool)

(assert (=> bm!667583 m!7996104))

(declare-fun m!7996106 () Bool)

(assert (=> b!7330176 m!7996106))

(declare-fun m!7996108 () Bool)

(assert (=> bm!667586 m!7996108))

(declare-fun m!7996110 () Bool)

(assert (=> b!7330172 m!7996110))

(assert (=> b!7330081 d!2276287))

(declare-fun d!2276293 () Bool)

(assert (=> d!2276293 (= (tail!14717 (exprs!8476 ct1!256)) (t!385919 (exprs!8476 ct1!256)))))

(assert (=> b!7330081 d!2276293))

(declare-fun d!2276295 () Bool)

(declare-fun lt!2607488 () Int)

(assert (=> d!2276295 (>= lt!2607488 0)))

(declare-fun e!4389272 () Int)

(assert (=> d!2276295 (= lt!2607488 e!4389272)))

(declare-fun c!1360940 () Bool)

(assert (=> d!2276295 (= c!1360940 (is-Cons!71408 (exprs!8476 ct1!256)))))

(assert (=> d!2276295 (= (contextDepthTotal!568 ct1!256) lt!2607488)))

(declare-fun b!7330192 () Bool)

(declare-fun regexDepthTotal!338 (Regex!19036) Int)

(assert (=> b!7330192 (= e!4389272 (+ (regexDepthTotal!338 (h!77856 (exprs!8476 ct1!256))) (contextDepthTotal!568 (Context!15953 (t!385919 (exprs!8476 ct1!256))))))))

(declare-fun b!7330193 () Bool)

(assert (=> b!7330193 (= e!4389272 1)))

(assert (= (and d!2276295 c!1360940) b!7330192))

(assert (= (and d!2276295 (not c!1360940)) b!7330193))

(declare-fun m!7996120 () Bool)

(assert (=> b!7330192 m!7996120))

(declare-fun m!7996122 () Bool)

(assert (=> b!7330192 m!7996122))

(assert (=> b!7330080 d!2276295))

(declare-fun d!2276303 () Bool)

(declare-fun lt!2607491 () Int)

(assert (=> d!2276303 (>= lt!2607491 0)))

(declare-fun e!4389275 () Int)

(assert (=> d!2276303 (= lt!2607491 e!4389275)))

(declare-fun c!1360943 () Bool)

(assert (=> d!2276303 (= c!1360943 (is-Nil!71408 (exprs!8476 ct1!256)))))

(assert (=> d!2276303 (= (size!41947 (exprs!8476 ct1!256)) lt!2607491)))

(declare-fun b!7330198 () Bool)

(assert (=> b!7330198 (= e!4389275 0)))

(declare-fun b!7330199 () Bool)

(assert (=> b!7330199 (= e!4389275 (+ 1 (size!41947 (t!385919 (exprs!8476 ct1!256)))))))

(assert (= (and d!2276303 c!1360943) b!7330198))

(assert (= (and d!2276303 (not c!1360943)) b!7330199))

(declare-fun m!7996124 () Bool)

(assert (=> b!7330199 m!7996124))

(assert (=> b!7330080 d!2276303))

(declare-fun d!2276305 () Bool)

(declare-fun lt!2607492 () Int)

(assert (=> d!2276305 (>= lt!2607492 0)))

(declare-fun e!4389276 () Int)

(assert (=> d!2276305 (= lt!2607492 e!4389276)))

(declare-fun c!1360944 () Bool)

(assert (=> d!2276305 (= c!1360944 (is-Cons!71408 (exprs!8476 lt!2607429)))))

(assert (=> d!2276305 (= (contextDepthTotal!568 lt!2607429) lt!2607492)))

(declare-fun b!7330200 () Bool)

(assert (=> b!7330200 (= e!4389276 (+ (regexDepthTotal!338 (h!77856 (exprs!8476 lt!2607429))) (contextDepthTotal!568 (Context!15953 (t!385919 (exprs!8476 lt!2607429))))))))

(declare-fun b!7330201 () Bool)

(assert (=> b!7330201 (= e!4389276 1)))

(assert (= (and d!2276305 c!1360944) b!7330200))

(assert (= (and d!2276305 (not c!1360944)) b!7330201))

(declare-fun m!7996126 () Bool)

(assert (=> b!7330200 m!7996126))

(declare-fun m!7996128 () Bool)

(assert (=> b!7330200 m!7996128))

(assert (=> b!7330080 d!2276305))

(declare-fun d!2276307 () Bool)

(declare-fun lt!2607493 () Int)

(assert (=> d!2276307 (>= lt!2607493 0)))

(declare-fun e!4389277 () Int)

(assert (=> d!2276307 (= lt!2607493 e!4389277)))

(declare-fun c!1360945 () Bool)

(assert (=> d!2276307 (= c!1360945 (is-Nil!71408 lt!2607428))))

(assert (=> d!2276307 (= (size!41947 lt!2607428) lt!2607493)))

(declare-fun b!7330202 () Bool)

(assert (=> b!7330202 (= e!4389277 0)))

(declare-fun b!7330203 () Bool)

(assert (=> b!7330203 (= e!4389277 (+ 1 (size!41947 (t!385919 lt!2607428))))))

(assert (= (and d!2276307 c!1360945) b!7330202))

(assert (= (and d!2276307 (not c!1360945)) b!7330203))

(declare-fun m!7996130 () Bool)

(assert (=> b!7330203 m!7996130))

(assert (=> b!7330080 d!2276307))

(declare-fun bm!667588 () Bool)

(declare-fun call!667593 () (Set Context!15952))

(assert (=> bm!667588 (= call!667593 (derivationStepZipperDown!2863 (h!77856 (exprs!8476 lt!2607429)) (Context!15953 (t!385919 (exprs!8476 lt!2607429))) c!10305))))

(declare-fun b!7330204 () Bool)

(declare-fun e!4389278 () (Set Context!15952))

(declare-fun e!4389280 () (Set Context!15952))

(assert (=> b!7330204 (= e!4389278 e!4389280)))

(declare-fun c!1360946 () Bool)

(assert (=> b!7330204 (= c!1360946 (is-Cons!71408 (exprs!8476 lt!2607429)))))

(declare-fun b!7330205 () Bool)

(declare-fun e!4389279 () Bool)

(assert (=> b!7330205 (= e!4389279 (nullable!8137 (h!77856 (exprs!8476 lt!2607429))))))

(declare-fun b!7330206 () Bool)

(assert (=> b!7330206 (= e!4389278 (set.union call!667593 (derivationStepZipperUp!2716 (Context!15953 (t!385919 (exprs!8476 lt!2607429))) c!10305)))))

(declare-fun b!7330207 () Bool)

(assert (=> b!7330207 (= e!4389280 (as set.empty (Set Context!15952)))))

(declare-fun b!7330208 () Bool)

(assert (=> b!7330208 (= e!4389280 call!667593)))

(declare-fun d!2276309 () Bool)

(declare-fun c!1360947 () Bool)

(assert (=> d!2276309 (= c!1360947 e!4389279)))

(declare-fun res!2962471 () Bool)

(assert (=> d!2276309 (=> (not res!2962471) (not e!4389279))))

(assert (=> d!2276309 (= res!2962471 (is-Cons!71408 (exprs!8476 lt!2607429)))))

(assert (=> d!2276309 (= (derivationStepZipperUp!2716 lt!2607429 c!10305) e!4389278)))

(assert (= (and d!2276309 res!2962471) b!7330205))

(assert (= (and d!2276309 c!1360947) b!7330206))

(assert (= (and d!2276309 (not c!1360947)) b!7330204))

(assert (= (and b!7330204 c!1360946) b!7330208))

(assert (= (and b!7330204 (not c!1360946)) b!7330207))

(assert (= (or b!7330206 b!7330208) bm!667588))

(declare-fun m!7996132 () Bool)

(assert (=> bm!667588 m!7996132))

(declare-fun m!7996134 () Bool)

(assert (=> b!7330205 m!7996134))

(declare-fun m!7996136 () Bool)

(assert (=> b!7330206 m!7996136))

(assert (=> b!7330085 d!2276309))

(declare-fun b!7330213 () Bool)

(declare-fun e!4389283 () Bool)

(declare-fun tp!2081332 () Bool)

(declare-fun tp!2081333 () Bool)

(assert (=> b!7330213 (= e!4389283 (and tp!2081332 tp!2081333))))

(assert (=> b!7330083 (= tp!2081316 e!4389283)))

(assert (= (and b!7330083 (is-Cons!71408 (exprs!8476 ct2!352))) b!7330213))

(declare-fun b!7330214 () Bool)

(declare-fun e!4389284 () Bool)

(declare-fun tp!2081334 () Bool)

(declare-fun tp!2081335 () Bool)

(assert (=> b!7330214 (= e!4389284 (and tp!2081334 tp!2081335))))

(assert (=> b!7330082 (= tp!2081318 e!4389284)))

(assert (= (and b!7330082 (is-Cons!71408 (exprs!8476 ct1!256))) b!7330214))

(declare-fun b!7330215 () Bool)

(declare-fun e!4389285 () Bool)

(declare-fun tp!2081336 () Bool)

(declare-fun tp!2081337 () Bool)

(assert (=> b!7330215 (= e!4389285 (and tp!2081336 tp!2081337))))

(assert (=> b!7330084 (= tp!2081317 e!4389285)))

(assert (= (and b!7330084 (is-Cons!71408 (exprs!8476 cWitness!35))) b!7330215))

(push 1)

(assert (not b!7330200))

(assert (not b!7330124))

(assert (not b!7330192))

(assert (not d!2276275))

(assert (not b!7330136))

(assert (not b!7330215))

(assert (not d!2276277))

(assert (not b!7330203))

(assert (not d!2276281))

(assert (not d!2276273))

(assert (not d!2276285))

(assert tp_is_empty!48317)

(assert (not b!7330172))

(assert (not b!7330137))

(assert (not bm!667586))

(assert (not d!2276283))

(assert (not b!7330199))

(assert (not b!7330206))

(assert (not b!7330213))

(assert (not b!7330214))

(assert (not bm!667587))

(assert (not b!7330205))

(assert (not b!7330123))

(assert (not bm!667588))

(assert (not bm!667583))

(assert (not bm!667569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

