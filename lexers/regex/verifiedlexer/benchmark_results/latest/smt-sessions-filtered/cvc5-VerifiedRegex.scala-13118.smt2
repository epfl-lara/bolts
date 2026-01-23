; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717166 () Bool)

(assert start!717166)

(declare-fun b!7343048 () Bool)

(declare-fun e!4396967 () Bool)

(declare-fun tp!2085233 () Bool)

(assert (=> b!7343048 (= e!4396967 tp!2085233)))

(declare-fun b!7343049 () Bool)

(declare-fun e!4396959 () Bool)

(declare-fun tp!2085226 () Bool)

(declare-fun tp!2085232 () Bool)

(assert (=> b!7343049 (= e!4396959 (and tp!2085226 tp!2085232))))

(declare-fun b!7343050 () Bool)

(declare-fun tp!2085229 () Bool)

(declare-fun tp!2085227 () Bool)

(assert (=> b!7343050 (= e!4396959 (and tp!2085229 tp!2085227))))

(declare-fun b!7343051 () Bool)

(declare-fun e!4396961 () Bool)

(declare-fun e!4396964 () Bool)

(assert (=> b!7343051 (= e!4396961 e!4396964)))

(declare-fun res!2966218 () Bool)

(assert (=> b!7343051 (=> (not res!2966218) (not e!4396964))))

(declare-datatypes ((C!38522 0))(
  ( (C!38523 (val!29621 Int)) )
))
(declare-datatypes ((Regex!19124 0))(
  ( (ElementMatch!19124 (c!1363980 C!38522)) (Concat!27969 (regOne!38760 Regex!19124) (regTwo!38760 Regex!19124)) (EmptyExpr!19124) (Star!19124 (reg!19453 Regex!19124)) (EmptyLang!19124) (Union!19124 (regOne!38761 Regex!19124) (regTwo!38761 Regex!19124)) )
))
(declare-fun r1!2370 () Regex!19124)

(declare-fun c!10362 () C!38522)

(declare-datatypes ((List!71620 0))(
  ( (Nil!71496) (Cons!71496 (h!77944 Regex!19124) (t!386015 List!71620)) )
))
(declare-datatypes ((Context!16128 0))(
  ( (Context!16129 (exprs!8564 List!71620)) )
))
(declare-fun lt!2610509 () (Set Context!16128))

(declare-fun lt!2610513 () (Set Context!16128))

(declare-fun ct1!282 () Context!16128)

(declare-fun derivationStepZipperDown!2950 (Regex!19124 Context!16128 C!38522) (Set Context!16128))

(assert (=> b!7343051 (= res!2966218 (= lt!2610513 (set.union lt!2610509 (derivationStepZipperDown!2950 (regTwo!38761 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7343051 (= lt!2610509 (derivationStepZipperDown!2950 (regOne!38761 r1!2370) ct1!282 c!10362))))

(declare-fun b!7343052 () Bool)

(declare-fun e!4396962 () Bool)

(declare-fun tp!2085228 () Bool)

(assert (=> b!7343052 (= e!4396962 tp!2085228)))

(declare-fun b!7343053 () Bool)

(declare-fun e!4396965 () Bool)

(declare-fun e!4396966 () Bool)

(assert (=> b!7343053 (= e!4396965 e!4396966)))

(declare-fun res!2966217 () Bool)

(assert (=> b!7343053 (=> (not res!2966217) (not e!4396966))))

(declare-fun cWitness!61 () Context!16128)

(assert (=> b!7343053 (= res!2966217 (set.member cWitness!61 lt!2610513))))

(assert (=> b!7343053 (= lt!2610513 (derivationStepZipperDown!2950 r1!2370 ct1!282 c!10362))))

(declare-fun res!2966222 () Bool)

(assert (=> start!717166 (=> (not res!2966222) (not e!4396965))))

(declare-fun validRegex!9720 (Regex!19124) Bool)

(assert (=> start!717166 (= res!2966222 (validRegex!9720 r1!2370))))

(assert (=> start!717166 e!4396965))

(declare-fun tp_is_empty!48493 () Bool)

(assert (=> start!717166 tp_is_empty!48493))

(declare-fun inv!91151 (Context!16128) Bool)

(assert (=> start!717166 (and (inv!91151 cWitness!61) e!4396967)))

(assert (=> start!717166 (and (inv!91151 ct1!282) e!4396962)))

(assert (=> start!717166 e!4396959))

(declare-fun ct2!378 () Context!16128)

(declare-fun e!4396960 () Bool)

(assert (=> start!717166 (and (inv!91151 ct2!378) e!4396960)))

(declare-fun b!7343054 () Bool)

(declare-fun res!2966220 () Bool)

(assert (=> b!7343054 (=> (not res!2966220) (not e!4396964))))

(assert (=> b!7343054 (= res!2966220 (not (set.member cWitness!61 lt!2610509)))))

(declare-fun b!7343055 () Bool)

(declare-fun tp!2085230 () Bool)

(assert (=> b!7343055 (= e!4396959 tp!2085230)))

(declare-fun b!7343056 () Bool)

(declare-fun e!4396963 () Bool)

(declare-fun lambda!455818 () Int)

(declare-fun forall!17954 (List!71620 Int) Bool)

(assert (=> b!7343056 (= e!4396963 (forall!17954 (exprs!8564 cWitness!61) lambda!455818))))

(declare-fun b!7343057 () Bool)

(assert (=> b!7343057 (= e!4396959 tp_is_empty!48493)))

(declare-fun b!7343058 () Bool)

(declare-fun tp!2085231 () Bool)

(assert (=> b!7343058 (= e!4396960 tp!2085231)))

(declare-fun b!7343059 () Bool)

(assert (=> b!7343059 (= e!4396966 e!4396961)))

(declare-fun res!2966221 () Bool)

(assert (=> b!7343059 (=> (not res!2966221) (not e!4396961))))

(assert (=> b!7343059 (= res!2966221 (and (or (not (is-ElementMatch!19124 r1!2370)) (not (= c!10362 (c!1363980 r1!2370)))) (is-Union!19124 r1!2370)))))

(declare-fun lt!2610514 () Context!16128)

(declare-fun lt!2610515 () (Set Context!16128))

(assert (=> b!7343059 (= lt!2610515 (derivationStepZipperDown!2950 r1!2370 lt!2610514 c!10362))))

(declare-fun ++!16942 (List!71620 List!71620) List!71620)

(assert (=> b!7343059 (= lt!2610514 (Context!16129 (++!16942 (exprs!8564 ct1!282) (exprs!8564 ct2!378))))))

(declare-datatypes ((Unit!165201 0))(
  ( (Unit!165202) )
))
(declare-fun lt!2610512 () Unit!165201)

(declare-fun lemmaConcatPreservesForall!1799 (List!71620 List!71620 Int) Unit!165201)

(assert (=> b!7343059 (= lt!2610512 (lemmaConcatPreservesForall!1799 (exprs!8564 ct1!282) (exprs!8564 ct2!378) lambda!455818))))

(declare-fun b!7343060 () Bool)

(assert (=> b!7343060 (= e!4396964 (not e!4396963))))

(declare-fun res!2966219 () Bool)

(assert (=> b!7343060 (=> res!2966219 e!4396963)))

(declare-fun lt!2610507 () Context!16128)

(assert (=> b!7343060 (= res!2966219 (not (set.member lt!2610507 lt!2610515)))))

(declare-fun lt!2610506 () Unit!165201)

(assert (=> b!7343060 (= lt!2610506 (lemmaConcatPreservesForall!1799 (exprs!8564 cWitness!61) (exprs!8564 ct2!378) lambda!455818))))

(assert (=> b!7343060 (set.member lt!2610507 (derivationStepZipperDown!2950 (regTwo!38761 r1!2370) lt!2610514 c!10362))))

(assert (=> b!7343060 (= lt!2610507 (Context!16129 (++!16942 (exprs!8564 cWitness!61) (exprs!8564 ct2!378))))))

(declare-fun lt!2610511 () Unit!165201)

(assert (=> b!7343060 (= lt!2610511 (lemmaConcatPreservesForall!1799 (exprs!8564 ct1!282) (exprs!8564 ct2!378) lambda!455818))))

(declare-fun lt!2610508 () Unit!165201)

(assert (=> b!7343060 (= lt!2610508 (lemmaConcatPreservesForall!1799 (exprs!8564 cWitness!61) (exprs!8564 ct2!378) lambda!455818))))

(declare-fun lt!2610510 () Unit!165201)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!57 (Regex!19124 Context!16128 Context!16128 Context!16128 C!38522) Unit!165201)

(assert (=> b!7343060 (= lt!2610510 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!57 (regTwo!38761 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (= (and start!717166 res!2966222) b!7343053))

(assert (= (and b!7343053 res!2966217) b!7343059))

(assert (= (and b!7343059 res!2966221) b!7343051))

(assert (= (and b!7343051 res!2966218) b!7343054))

(assert (= (and b!7343054 res!2966220) b!7343060))

(assert (= (and b!7343060 (not res!2966219)) b!7343056))

(assert (= start!717166 b!7343048))

(assert (= start!717166 b!7343052))

(assert (= (and start!717166 (is-ElementMatch!19124 r1!2370)) b!7343057))

(assert (= (and start!717166 (is-Concat!27969 r1!2370)) b!7343050))

(assert (= (and start!717166 (is-Star!19124 r1!2370)) b!7343055))

(assert (= (and start!717166 (is-Union!19124 r1!2370)) b!7343049))

(assert (= start!717166 b!7343058))

(declare-fun m!8006210 () Bool)

(assert (=> start!717166 m!8006210))

(declare-fun m!8006212 () Bool)

(assert (=> start!717166 m!8006212))

(declare-fun m!8006214 () Bool)

(assert (=> start!717166 m!8006214))

(declare-fun m!8006216 () Bool)

(assert (=> start!717166 m!8006216))

(declare-fun m!8006218 () Bool)

(assert (=> b!7343054 m!8006218))

(declare-fun m!8006220 () Bool)

(assert (=> b!7343051 m!8006220))

(declare-fun m!8006222 () Bool)

(assert (=> b!7343051 m!8006222))

(declare-fun m!8006224 () Bool)

(assert (=> b!7343053 m!8006224))

(declare-fun m!8006226 () Bool)

(assert (=> b!7343053 m!8006226))

(declare-fun m!8006228 () Bool)

(assert (=> b!7343060 m!8006228))

(declare-fun m!8006230 () Bool)

(assert (=> b!7343060 m!8006230))

(declare-fun m!8006232 () Bool)

(assert (=> b!7343060 m!8006232))

(assert (=> b!7343060 m!8006228))

(declare-fun m!8006234 () Bool)

(assert (=> b!7343060 m!8006234))

(declare-fun m!8006236 () Bool)

(assert (=> b!7343060 m!8006236))

(declare-fun m!8006238 () Bool)

(assert (=> b!7343060 m!8006238))

(declare-fun m!8006240 () Bool)

(assert (=> b!7343060 m!8006240))

(declare-fun m!8006242 () Bool)

(assert (=> b!7343056 m!8006242))

(declare-fun m!8006244 () Bool)

(assert (=> b!7343059 m!8006244))

(declare-fun m!8006246 () Bool)

(assert (=> b!7343059 m!8006246))

(assert (=> b!7343059 m!8006232))

(push 1)

(assert (not b!7343056))

(assert (not b!7343058))

(assert (not b!7343051))

(assert (not start!717166))

(assert (not b!7343055))

(assert (not b!7343050))

(assert (not b!7343048))

(assert (not b!7343059))

(assert tp_is_empty!48493)

(assert (not b!7343053))

(assert (not b!7343060))

(assert (not b!7343049))

(assert (not b!7343052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7343122 () Bool)

(declare-fun e!4397009 () (Set Context!16128))

(declare-fun call!670531 () (Set Context!16128))

(declare-fun call!670535 () (Set Context!16128))

(assert (=> b!7343122 (= e!4397009 (set.union call!670531 call!670535))))

(declare-fun b!7343123 () Bool)

(declare-fun c!1363994 () Bool)

(declare-fun e!4397007 () Bool)

(assert (=> b!7343123 (= c!1363994 e!4397007)))

(declare-fun res!2966243 () Bool)

(assert (=> b!7343123 (=> (not res!2966243) (not e!4397007))))

(assert (=> b!7343123 (= res!2966243 (is-Concat!27969 r1!2370))))

(declare-fun e!4397010 () (Set Context!16128))

(assert (=> b!7343123 (= e!4397010 e!4397009)))

(declare-fun b!7343124 () Bool)

(declare-fun e!4397012 () (Set Context!16128))

(declare-fun call!670534 () (Set Context!16128))

(assert (=> b!7343124 (= e!4397012 call!670534)))

(declare-fun b!7343125 () Bool)

(declare-fun e!4397011 () (Set Context!16128))

(assert (=> b!7343125 (= e!4397011 (set.insert lt!2610514 (as set.empty (Set Context!16128))))))

(declare-fun b!7343126 () Bool)

(declare-fun e!4397008 () (Set Context!16128))

(assert (=> b!7343126 (= e!4397008 (as set.empty (Set Context!16128)))))

(declare-fun bm!670525 () Bool)

(assert (=> bm!670525 (= call!670534 call!670535)))

(declare-fun b!7343127 () Bool)

(declare-fun call!670530 () (Set Context!16128))

(assert (=> b!7343127 (= e!4397010 (set.union call!670531 call!670530))))

(declare-fun d!2279129 () Bool)

(declare-fun c!1363992 () Bool)

(assert (=> d!2279129 (= c!1363992 (and (is-ElementMatch!19124 r1!2370) (= (c!1363980 r1!2370) c!10362)))))

(assert (=> d!2279129 (= (derivationStepZipperDown!2950 r1!2370 lt!2610514 c!10362) e!4397011)))

(declare-fun c!1363993 () Bool)

(declare-fun c!1363996 () Bool)

(declare-fun bm!670526 () Bool)

(declare-fun call!670533 () List!71620)

(assert (=> bm!670526 (= call!670530 (derivationStepZipperDown!2950 (ite c!1363996 (regTwo!38761 r1!2370) (ite c!1363994 (regTwo!38760 r1!2370) (ite c!1363993 (regOne!38760 r1!2370) (reg!19453 r1!2370)))) (ite (or c!1363996 c!1363994) lt!2610514 (Context!16129 call!670533)) c!10362))))

(declare-fun b!7343128 () Bool)

(declare-fun c!1363995 () Bool)

(assert (=> b!7343128 (= c!1363995 (is-Star!19124 r1!2370))))

(assert (=> b!7343128 (= e!4397012 e!4397008)))

(declare-fun b!7343129 () Bool)

(assert (=> b!7343129 (= e!4397011 e!4397010)))

(assert (=> b!7343129 (= c!1363996 (is-Union!19124 r1!2370))))

(declare-fun bm!670527 () Bool)

(declare-fun call!670532 () List!71620)

(assert (=> bm!670527 (= call!670533 call!670532)))

(declare-fun b!7343130 () Bool)

(assert (=> b!7343130 (= e!4397008 call!670534)))

(declare-fun b!7343131 () Bool)

(assert (=> b!7343131 (= e!4397009 e!4397012)))

(assert (=> b!7343131 (= c!1363993 (is-Concat!27969 r1!2370))))

(declare-fun bm!670528 () Bool)

(assert (=> bm!670528 (= call!670531 (derivationStepZipperDown!2950 (ite c!1363996 (regOne!38761 r1!2370) (regOne!38760 r1!2370)) (ite c!1363996 lt!2610514 (Context!16129 call!670532)) c!10362))))

(declare-fun bm!670529 () Bool)

(assert (=> bm!670529 (= call!670535 call!670530)))

(declare-fun b!7343132 () Bool)

(declare-fun nullable!8217 (Regex!19124) Bool)

(assert (=> b!7343132 (= e!4397007 (nullable!8217 (regOne!38760 r1!2370)))))

(declare-fun bm!670530 () Bool)

(declare-fun $colon$colon!3124 (List!71620 Regex!19124) List!71620)

(assert (=> bm!670530 (= call!670532 ($colon$colon!3124 (exprs!8564 lt!2610514) (ite (or c!1363994 c!1363993) (regTwo!38760 r1!2370) r1!2370)))))

(assert (= (and d!2279129 c!1363992) b!7343125))

(assert (= (and d!2279129 (not c!1363992)) b!7343129))

(assert (= (and b!7343129 c!1363996) b!7343127))

(assert (= (and b!7343129 (not c!1363996)) b!7343123))

(assert (= (and b!7343123 res!2966243) b!7343132))

(assert (= (and b!7343123 c!1363994) b!7343122))

(assert (= (and b!7343123 (not c!1363994)) b!7343131))

(assert (= (and b!7343131 c!1363993) b!7343124))

(assert (= (and b!7343131 (not c!1363993)) b!7343128))

(assert (= (and b!7343128 c!1363995) b!7343130))

(assert (= (and b!7343128 (not c!1363995)) b!7343126))

(assert (= (or b!7343124 b!7343130) bm!670527))

(assert (= (or b!7343124 b!7343130) bm!670525))

(assert (= (or b!7343122 bm!670525) bm!670529))

(assert (= (or b!7343122 bm!670527) bm!670530))

(assert (= (or b!7343127 bm!670529) bm!670526))

(assert (= (or b!7343127 b!7343122) bm!670528))

(declare-fun m!8006286 () Bool)

(assert (=> bm!670526 m!8006286))

(declare-fun m!8006288 () Bool)

(assert (=> bm!670530 m!8006288))

(declare-fun m!8006290 () Bool)

(assert (=> b!7343125 m!8006290))

(declare-fun m!8006292 () Bool)

(assert (=> b!7343132 m!8006292))

(declare-fun m!8006294 () Bool)

(assert (=> bm!670528 m!8006294))

(assert (=> b!7343059 d!2279129))

(declare-fun b!7343159 () Bool)

(declare-fun e!4397032 () List!71620)

(assert (=> b!7343159 (= e!4397032 (exprs!8564 ct2!378))))

(declare-fun lt!2610548 () List!71620)

(declare-fun b!7343162 () Bool)

(declare-fun e!4397031 () Bool)

(assert (=> b!7343162 (= e!4397031 (or (not (= (exprs!8564 ct2!378) Nil!71496)) (= lt!2610548 (exprs!8564 ct1!282))))))

(declare-fun b!7343160 () Bool)

(assert (=> b!7343160 (= e!4397032 (Cons!71496 (h!77944 (exprs!8564 ct1!282)) (++!16942 (t!386015 (exprs!8564 ct1!282)) (exprs!8564 ct2!378))))))

(declare-fun d!2279133 () Bool)

(assert (=> d!2279133 e!4397031))

(declare-fun res!2966259 () Bool)

(assert (=> d!2279133 (=> (not res!2966259) (not e!4397031))))

(declare-fun content!15039 (List!71620) (Set Regex!19124))

(assert (=> d!2279133 (= res!2966259 (= (content!15039 lt!2610548) (set.union (content!15039 (exprs!8564 ct1!282)) (content!15039 (exprs!8564 ct2!378)))))))

(assert (=> d!2279133 (= lt!2610548 e!4397032)))

(declare-fun c!1364003 () Bool)

(assert (=> d!2279133 (= c!1364003 (is-Nil!71496 (exprs!8564 ct1!282)))))

(assert (=> d!2279133 (= (++!16942 (exprs!8564 ct1!282) (exprs!8564 ct2!378)) lt!2610548)))

(declare-fun b!7343161 () Bool)

(declare-fun res!2966258 () Bool)

(assert (=> b!7343161 (=> (not res!2966258) (not e!4397031))))

(declare-fun size!42018 (List!71620) Int)

(assert (=> b!7343161 (= res!2966258 (= (size!42018 lt!2610548) (+ (size!42018 (exprs!8564 ct1!282)) (size!42018 (exprs!8564 ct2!378)))))))

(assert (= (and d!2279133 c!1364003) b!7343159))

(assert (= (and d!2279133 (not c!1364003)) b!7343160))

(assert (= (and d!2279133 res!2966259) b!7343161))

(assert (= (and b!7343161 res!2966258) b!7343162))

(declare-fun m!8006296 () Bool)

(assert (=> b!7343160 m!8006296))

(declare-fun m!8006298 () Bool)

(assert (=> d!2279133 m!8006298))

(declare-fun m!8006300 () Bool)

(assert (=> d!2279133 m!8006300))

(declare-fun m!8006302 () Bool)

(assert (=> d!2279133 m!8006302))

(declare-fun m!8006304 () Bool)

(assert (=> b!7343161 m!8006304))

(declare-fun m!8006306 () Bool)

(assert (=> b!7343161 m!8006306))

(declare-fun m!8006308 () Bool)

(assert (=> b!7343161 m!8006308))

(assert (=> b!7343059 d!2279133))

(declare-fun d!2279135 () Bool)

(assert (=> d!2279135 (forall!17954 (++!16942 (exprs!8564 ct1!282) (exprs!8564 ct2!378)) lambda!455818)))

(declare-fun lt!2610551 () Unit!165201)

(declare-fun choose!57117 (List!71620 List!71620 Int) Unit!165201)

(assert (=> d!2279135 (= lt!2610551 (choose!57117 (exprs!8564 ct1!282) (exprs!8564 ct2!378) lambda!455818))))

(assert (=> d!2279135 (forall!17954 (exprs!8564 ct1!282) lambda!455818)))

(assert (=> d!2279135 (= (lemmaConcatPreservesForall!1799 (exprs!8564 ct1!282) (exprs!8564 ct2!378) lambda!455818) lt!2610551)))

(declare-fun bs!1918606 () Bool)

(assert (= bs!1918606 d!2279135))

(assert (=> bs!1918606 m!8006246))

(assert (=> bs!1918606 m!8006246))

(declare-fun m!8006310 () Bool)

(assert (=> bs!1918606 m!8006310))

(declare-fun m!8006312 () Bool)

(assert (=> bs!1918606 m!8006312))

(declare-fun m!8006314 () Bool)

(assert (=> bs!1918606 m!8006314))

(assert (=> b!7343059 d!2279135))

(declare-fun b!7343163 () Bool)

(declare-fun e!4397035 () (Set Context!16128))

(declare-fun call!670543 () (Set Context!16128))

(declare-fun call!670547 () (Set Context!16128))

(assert (=> b!7343163 (= e!4397035 (set.union call!670543 call!670547))))

(declare-fun b!7343164 () Bool)

(declare-fun c!1364006 () Bool)

(declare-fun e!4397033 () Bool)

(assert (=> b!7343164 (= c!1364006 e!4397033)))

(declare-fun res!2966260 () Bool)

(assert (=> b!7343164 (=> (not res!2966260) (not e!4397033))))

(assert (=> b!7343164 (= res!2966260 (is-Concat!27969 r1!2370))))

(declare-fun e!4397036 () (Set Context!16128))

(assert (=> b!7343164 (= e!4397036 e!4397035)))

(declare-fun b!7343165 () Bool)

(declare-fun e!4397038 () (Set Context!16128))

(declare-fun call!670546 () (Set Context!16128))

(assert (=> b!7343165 (= e!4397038 call!670546)))

(declare-fun b!7343166 () Bool)

(declare-fun e!4397037 () (Set Context!16128))

(assert (=> b!7343166 (= e!4397037 (set.insert ct1!282 (as set.empty (Set Context!16128))))))

(declare-fun b!7343167 () Bool)

(declare-fun e!4397034 () (Set Context!16128))

(assert (=> b!7343167 (= e!4397034 (as set.empty (Set Context!16128)))))

(declare-fun bm!670537 () Bool)

(assert (=> bm!670537 (= call!670546 call!670547)))

(declare-fun b!7343168 () Bool)

(declare-fun call!670542 () (Set Context!16128))

(assert (=> b!7343168 (= e!4397036 (set.union call!670543 call!670542))))

(declare-fun d!2279137 () Bool)

(declare-fun c!1364004 () Bool)

(assert (=> d!2279137 (= c!1364004 (and (is-ElementMatch!19124 r1!2370) (= (c!1363980 r1!2370) c!10362)))))

(assert (=> d!2279137 (= (derivationStepZipperDown!2950 r1!2370 ct1!282 c!10362) e!4397037)))

(declare-fun call!670545 () List!71620)

(declare-fun c!1364008 () Bool)

(declare-fun bm!670538 () Bool)

(declare-fun c!1364005 () Bool)

(assert (=> bm!670538 (= call!670542 (derivationStepZipperDown!2950 (ite c!1364008 (regTwo!38761 r1!2370) (ite c!1364006 (regTwo!38760 r1!2370) (ite c!1364005 (regOne!38760 r1!2370) (reg!19453 r1!2370)))) (ite (or c!1364008 c!1364006) ct1!282 (Context!16129 call!670545)) c!10362))))

(declare-fun b!7343169 () Bool)

(declare-fun c!1364007 () Bool)

(assert (=> b!7343169 (= c!1364007 (is-Star!19124 r1!2370))))

(assert (=> b!7343169 (= e!4397038 e!4397034)))

(declare-fun b!7343170 () Bool)

(assert (=> b!7343170 (= e!4397037 e!4397036)))

(assert (=> b!7343170 (= c!1364008 (is-Union!19124 r1!2370))))

(declare-fun bm!670539 () Bool)

(declare-fun call!670544 () List!71620)

(assert (=> bm!670539 (= call!670545 call!670544)))

(declare-fun b!7343171 () Bool)

(assert (=> b!7343171 (= e!4397034 call!670546)))

(declare-fun b!7343172 () Bool)

(assert (=> b!7343172 (= e!4397035 e!4397038)))

(assert (=> b!7343172 (= c!1364005 (is-Concat!27969 r1!2370))))

(declare-fun bm!670540 () Bool)

(assert (=> bm!670540 (= call!670543 (derivationStepZipperDown!2950 (ite c!1364008 (regOne!38761 r1!2370) (regOne!38760 r1!2370)) (ite c!1364008 ct1!282 (Context!16129 call!670544)) c!10362))))

(declare-fun bm!670541 () Bool)

(assert (=> bm!670541 (= call!670547 call!670542)))

(declare-fun b!7343173 () Bool)

(assert (=> b!7343173 (= e!4397033 (nullable!8217 (regOne!38760 r1!2370)))))

(declare-fun bm!670542 () Bool)

(assert (=> bm!670542 (= call!670544 ($colon$colon!3124 (exprs!8564 ct1!282) (ite (or c!1364006 c!1364005) (regTwo!38760 r1!2370) r1!2370)))))

(assert (= (and d!2279137 c!1364004) b!7343166))

(assert (= (and d!2279137 (not c!1364004)) b!7343170))

(assert (= (and b!7343170 c!1364008) b!7343168))

(assert (= (and b!7343170 (not c!1364008)) b!7343164))

(assert (= (and b!7343164 res!2966260) b!7343173))

(assert (= (and b!7343164 c!1364006) b!7343163))

(assert (= (and b!7343164 (not c!1364006)) b!7343172))

(assert (= (and b!7343172 c!1364005) b!7343165))

(assert (= (and b!7343172 (not c!1364005)) b!7343169))

(assert (= (and b!7343169 c!1364007) b!7343171))

(assert (= (and b!7343169 (not c!1364007)) b!7343167))

(assert (= (or b!7343165 b!7343171) bm!670539))

(assert (= (or b!7343165 b!7343171) bm!670537))

(assert (= (or b!7343163 bm!670537) bm!670541))

(assert (= (or b!7343163 bm!670539) bm!670542))

(assert (= (or b!7343168 bm!670541) bm!670538))

(assert (= (or b!7343168 b!7343163) bm!670540))

(declare-fun m!8006316 () Bool)

(assert (=> bm!670538 m!8006316))

(declare-fun m!8006318 () Bool)

(assert (=> bm!670542 m!8006318))

(declare-fun m!8006320 () Bool)

(assert (=> b!7343166 m!8006320))

(assert (=> b!7343173 m!8006292))

(declare-fun m!8006322 () Bool)

(assert (=> bm!670540 m!8006322))

(assert (=> b!7343053 d!2279137))

(declare-fun bs!1918608 () Bool)

(declare-fun d!2279139 () Bool)

(assert (= bs!1918608 (and d!2279139 b!7343059)))

(declare-fun lambda!455837 () Int)

(assert (=> bs!1918608 (= lambda!455837 lambda!455818)))

(assert (=> d!2279139 (set.member (Context!16129 (++!16942 (exprs!8564 cWitness!61) (exprs!8564 ct2!378))) (derivationStepZipperDown!2950 (regTwo!38761 r1!2370) (Context!16129 (++!16942 (exprs!8564 ct1!282) (exprs!8564 ct2!378))) c!10362))))

(declare-fun lt!2610560 () Unit!165201)

(assert (=> d!2279139 (= lt!2610560 (lemmaConcatPreservesForall!1799 (exprs!8564 ct1!282) (exprs!8564 ct2!378) lambda!455837))))

(declare-fun lt!2610559 () Unit!165201)

(assert (=> d!2279139 (= lt!2610559 (lemmaConcatPreservesForall!1799 (exprs!8564 cWitness!61) (exprs!8564 ct2!378) lambda!455837))))

(declare-fun lt!2610558 () Unit!165201)

(declare-fun choose!57118 (Regex!19124 Context!16128 Context!16128 Context!16128 C!38522) Unit!165201)

(assert (=> d!2279139 (= lt!2610558 (choose!57118 (regTwo!38761 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279139 (validRegex!9720 (regTwo!38761 r1!2370))))

(assert (=> d!2279139 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!57 (regTwo!38761 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610558)))

(declare-fun bs!1918610 () Bool)

(assert (= bs!1918610 d!2279139))

(declare-fun m!8006332 () Bool)

(assert (=> bs!1918610 m!8006332))

(declare-fun m!8006334 () Bool)

(assert (=> bs!1918610 m!8006334))

(assert (=> bs!1918610 m!8006234))

(declare-fun m!8006336 () Bool)

(assert (=> bs!1918610 m!8006336))

(declare-fun m!8006338 () Bool)

(assert (=> bs!1918610 m!8006338))

(declare-fun m!8006340 () Bool)

(assert (=> bs!1918610 m!8006340))

(assert (=> bs!1918610 m!8006246))

(declare-fun m!8006342 () Bool)

(assert (=> bs!1918610 m!8006342))

(assert (=> b!7343060 d!2279139))

(declare-fun b!7343183 () Bool)

(declare-fun e!4397047 () List!71620)

(assert (=> b!7343183 (= e!4397047 (exprs!8564 ct2!378))))

(declare-fun lt!2610561 () List!71620)

(declare-fun b!7343186 () Bool)

(declare-fun e!4397046 () Bool)

(assert (=> b!7343186 (= e!4397046 (or (not (= (exprs!8564 ct2!378) Nil!71496)) (= lt!2610561 (exprs!8564 cWitness!61))))))

(declare-fun b!7343184 () Bool)

(assert (=> b!7343184 (= e!4397047 (Cons!71496 (h!77944 (exprs!8564 cWitness!61)) (++!16942 (t!386015 (exprs!8564 cWitness!61)) (exprs!8564 ct2!378))))))

(declare-fun d!2279145 () Bool)

(assert (=> d!2279145 e!4397046))

(declare-fun res!2966267 () Bool)

(assert (=> d!2279145 (=> (not res!2966267) (not e!4397046))))

(assert (=> d!2279145 (= res!2966267 (= (content!15039 lt!2610561) (set.union (content!15039 (exprs!8564 cWitness!61)) (content!15039 (exprs!8564 ct2!378)))))))

(assert (=> d!2279145 (= lt!2610561 e!4397047)))

(declare-fun c!1364012 () Bool)

(assert (=> d!2279145 (= c!1364012 (is-Nil!71496 (exprs!8564 cWitness!61)))))

(assert (=> d!2279145 (= (++!16942 (exprs!8564 cWitness!61) (exprs!8564 ct2!378)) lt!2610561)))

(declare-fun b!7343185 () Bool)

(declare-fun res!2966266 () Bool)

(assert (=> b!7343185 (=> (not res!2966266) (not e!4397046))))

(assert (=> b!7343185 (= res!2966266 (= (size!42018 lt!2610561) (+ (size!42018 (exprs!8564 cWitness!61)) (size!42018 (exprs!8564 ct2!378)))))))

(assert (= (and d!2279145 c!1364012) b!7343183))

(assert (= (and d!2279145 (not c!1364012)) b!7343184))

(assert (= (and d!2279145 res!2966267) b!7343185))

(assert (= (and b!7343185 res!2966266) b!7343186))

(declare-fun m!8006344 () Bool)

(assert (=> b!7343184 m!8006344))

(declare-fun m!8006348 () Bool)

(assert (=> d!2279145 m!8006348))

(declare-fun m!8006350 () Bool)

(assert (=> d!2279145 m!8006350))

(assert (=> d!2279145 m!8006302))

(declare-fun m!8006352 () Bool)

(assert (=> b!7343185 m!8006352))

(declare-fun m!8006354 () Bool)

(assert (=> b!7343185 m!8006354))

(assert (=> b!7343185 m!8006308))

(assert (=> b!7343060 d!2279145))

(assert (=> b!7343060 d!2279135))

(declare-fun d!2279149 () Bool)

(assert (=> d!2279149 (forall!17954 (++!16942 (exprs!8564 cWitness!61) (exprs!8564 ct2!378)) lambda!455818)))

(declare-fun lt!2610562 () Unit!165201)

(assert (=> d!2279149 (= lt!2610562 (choose!57117 (exprs!8564 cWitness!61) (exprs!8564 ct2!378) lambda!455818))))

(assert (=> d!2279149 (forall!17954 (exprs!8564 cWitness!61) lambda!455818)))

(assert (=> d!2279149 (= (lemmaConcatPreservesForall!1799 (exprs!8564 cWitness!61) (exprs!8564 ct2!378) lambda!455818) lt!2610562)))

(declare-fun bs!1918614 () Bool)

(assert (= bs!1918614 d!2279149))

(assert (=> bs!1918614 m!8006234))

(assert (=> bs!1918614 m!8006234))

(declare-fun m!8006356 () Bool)

(assert (=> bs!1918614 m!8006356))

(declare-fun m!8006358 () Bool)

(assert (=> bs!1918614 m!8006358))

(assert (=> bs!1918614 m!8006242))

(assert (=> b!7343060 d!2279149))

(declare-fun b!7343187 () Bool)

(declare-fun e!4397050 () (Set Context!16128))

(declare-fun call!670552 () (Set Context!16128))

(declare-fun call!670556 () (Set Context!16128))

(assert (=> b!7343187 (= e!4397050 (set.union call!670552 call!670556))))

(declare-fun b!7343188 () Bool)

(declare-fun c!1364015 () Bool)

(declare-fun e!4397048 () Bool)

(assert (=> b!7343188 (= c!1364015 e!4397048)))

(declare-fun res!2966268 () Bool)

(assert (=> b!7343188 (=> (not res!2966268) (not e!4397048))))

(assert (=> b!7343188 (= res!2966268 (is-Concat!27969 (regTwo!38761 r1!2370)))))

(declare-fun e!4397051 () (Set Context!16128))

(assert (=> b!7343188 (= e!4397051 e!4397050)))

(declare-fun b!7343189 () Bool)

(declare-fun e!4397053 () (Set Context!16128))

(declare-fun call!670555 () (Set Context!16128))

(assert (=> b!7343189 (= e!4397053 call!670555)))

(declare-fun b!7343190 () Bool)

(declare-fun e!4397052 () (Set Context!16128))

(assert (=> b!7343190 (= e!4397052 (set.insert lt!2610514 (as set.empty (Set Context!16128))))))

(declare-fun b!7343191 () Bool)

(declare-fun e!4397049 () (Set Context!16128))

(assert (=> b!7343191 (= e!4397049 (as set.empty (Set Context!16128)))))

(declare-fun bm!670546 () Bool)

(assert (=> bm!670546 (= call!670555 call!670556)))

(declare-fun b!7343192 () Bool)

(declare-fun call!670551 () (Set Context!16128))

(assert (=> b!7343192 (= e!4397051 (set.union call!670552 call!670551))))

(declare-fun d!2279151 () Bool)

(declare-fun c!1364013 () Bool)

(assert (=> d!2279151 (= c!1364013 (and (is-ElementMatch!19124 (regTwo!38761 r1!2370)) (= (c!1363980 (regTwo!38761 r1!2370)) c!10362)))))

(assert (=> d!2279151 (= (derivationStepZipperDown!2950 (regTwo!38761 r1!2370) lt!2610514 c!10362) e!4397052)))

(declare-fun c!1364014 () Bool)

(declare-fun c!1364017 () Bool)

(declare-fun bm!670547 () Bool)

(declare-fun call!670554 () List!71620)

(assert (=> bm!670547 (= call!670551 (derivationStepZipperDown!2950 (ite c!1364017 (regTwo!38761 (regTwo!38761 r1!2370)) (ite c!1364015 (regTwo!38760 (regTwo!38761 r1!2370)) (ite c!1364014 (regOne!38760 (regTwo!38761 r1!2370)) (reg!19453 (regTwo!38761 r1!2370))))) (ite (or c!1364017 c!1364015) lt!2610514 (Context!16129 call!670554)) c!10362))))

(declare-fun b!7343193 () Bool)

(declare-fun c!1364016 () Bool)

(assert (=> b!7343193 (= c!1364016 (is-Star!19124 (regTwo!38761 r1!2370)))))

(assert (=> b!7343193 (= e!4397053 e!4397049)))

(declare-fun b!7343194 () Bool)

(assert (=> b!7343194 (= e!4397052 e!4397051)))

(assert (=> b!7343194 (= c!1364017 (is-Union!19124 (regTwo!38761 r1!2370)))))

(declare-fun bm!670548 () Bool)

(declare-fun call!670553 () List!71620)

(assert (=> bm!670548 (= call!670554 call!670553)))

(declare-fun b!7343195 () Bool)

(assert (=> b!7343195 (= e!4397049 call!670555)))

(declare-fun b!7343196 () Bool)

(assert (=> b!7343196 (= e!4397050 e!4397053)))

(assert (=> b!7343196 (= c!1364014 (is-Concat!27969 (regTwo!38761 r1!2370)))))

(declare-fun bm!670549 () Bool)

(assert (=> bm!670549 (= call!670552 (derivationStepZipperDown!2950 (ite c!1364017 (regOne!38761 (regTwo!38761 r1!2370)) (regOne!38760 (regTwo!38761 r1!2370))) (ite c!1364017 lt!2610514 (Context!16129 call!670553)) c!10362))))

(declare-fun bm!670550 () Bool)

(assert (=> bm!670550 (= call!670556 call!670551)))

(declare-fun b!7343197 () Bool)

(assert (=> b!7343197 (= e!4397048 (nullable!8217 (regOne!38760 (regTwo!38761 r1!2370))))))

(declare-fun bm!670551 () Bool)

(assert (=> bm!670551 (= call!670553 ($colon$colon!3124 (exprs!8564 lt!2610514) (ite (or c!1364015 c!1364014) (regTwo!38760 (regTwo!38761 r1!2370)) (regTwo!38761 r1!2370))))))

(assert (= (and d!2279151 c!1364013) b!7343190))

(assert (= (and d!2279151 (not c!1364013)) b!7343194))

(assert (= (and b!7343194 c!1364017) b!7343192))

(assert (= (and b!7343194 (not c!1364017)) b!7343188))

(assert (= (and b!7343188 res!2966268) b!7343197))

(assert (= (and b!7343188 c!1364015) b!7343187))

(assert (= (and b!7343188 (not c!1364015)) b!7343196))

(assert (= (and b!7343196 c!1364014) b!7343189))

(assert (= (and b!7343196 (not c!1364014)) b!7343193))

(assert (= (and b!7343193 c!1364016) b!7343195))

(assert (= (and b!7343193 (not c!1364016)) b!7343191))

(assert (= (or b!7343189 b!7343195) bm!670548))

(assert (= (or b!7343189 b!7343195) bm!670546))

(assert (= (or b!7343187 bm!670546) bm!670550))

(assert (= (or b!7343187 bm!670548) bm!670551))

(assert (= (or b!7343192 bm!670550) bm!670547))

(assert (= (or b!7343192 b!7343187) bm!670549))

(declare-fun m!8006362 () Bool)

(assert (=> bm!670547 m!8006362))

(declare-fun m!8006364 () Bool)

(assert (=> bm!670551 m!8006364))

(assert (=> b!7343190 m!8006290))

(declare-fun m!8006366 () Bool)

(assert (=> b!7343197 m!8006366))

(declare-fun m!8006368 () Bool)

(assert (=> bm!670549 m!8006368))

(assert (=> b!7343060 d!2279151))

(declare-fun b!7343198 () Bool)

(declare-fun e!4397056 () (Set Context!16128))

(declare-fun call!670558 () (Set Context!16128))

(declare-fun call!670562 () (Set Context!16128))

(assert (=> b!7343198 (= e!4397056 (set.union call!670558 call!670562))))

(declare-fun b!7343199 () Bool)

(declare-fun c!1364020 () Bool)

(declare-fun e!4397054 () Bool)

(assert (=> b!7343199 (= c!1364020 e!4397054)))

(declare-fun res!2966269 () Bool)

(assert (=> b!7343199 (=> (not res!2966269) (not e!4397054))))

(assert (=> b!7343199 (= res!2966269 (is-Concat!27969 (regTwo!38761 r1!2370)))))

(declare-fun e!4397057 () (Set Context!16128))

(assert (=> b!7343199 (= e!4397057 e!4397056)))

(declare-fun b!7343200 () Bool)

(declare-fun e!4397059 () (Set Context!16128))

(declare-fun call!670561 () (Set Context!16128))

(assert (=> b!7343200 (= e!4397059 call!670561)))

(declare-fun b!7343201 () Bool)

(declare-fun e!4397058 () (Set Context!16128))

(assert (=> b!7343201 (= e!4397058 (set.insert ct1!282 (as set.empty (Set Context!16128))))))

(declare-fun b!7343202 () Bool)

(declare-fun e!4397055 () (Set Context!16128))

(assert (=> b!7343202 (= e!4397055 (as set.empty (Set Context!16128)))))

(declare-fun bm!670552 () Bool)

(assert (=> bm!670552 (= call!670561 call!670562)))

(declare-fun b!7343203 () Bool)

(declare-fun call!670557 () (Set Context!16128))

(assert (=> b!7343203 (= e!4397057 (set.union call!670558 call!670557))))

(declare-fun d!2279155 () Bool)

(declare-fun c!1364018 () Bool)

(assert (=> d!2279155 (= c!1364018 (and (is-ElementMatch!19124 (regTwo!38761 r1!2370)) (= (c!1363980 (regTwo!38761 r1!2370)) c!10362)))))

(assert (=> d!2279155 (= (derivationStepZipperDown!2950 (regTwo!38761 r1!2370) ct1!282 c!10362) e!4397058)))

(declare-fun c!1364019 () Bool)

(declare-fun call!670560 () List!71620)

(declare-fun bm!670553 () Bool)

(declare-fun c!1364022 () Bool)

(assert (=> bm!670553 (= call!670557 (derivationStepZipperDown!2950 (ite c!1364022 (regTwo!38761 (regTwo!38761 r1!2370)) (ite c!1364020 (regTwo!38760 (regTwo!38761 r1!2370)) (ite c!1364019 (regOne!38760 (regTwo!38761 r1!2370)) (reg!19453 (regTwo!38761 r1!2370))))) (ite (or c!1364022 c!1364020) ct1!282 (Context!16129 call!670560)) c!10362))))

(declare-fun b!7343204 () Bool)

(declare-fun c!1364021 () Bool)

(assert (=> b!7343204 (= c!1364021 (is-Star!19124 (regTwo!38761 r1!2370)))))

(assert (=> b!7343204 (= e!4397059 e!4397055)))

(declare-fun b!7343205 () Bool)

(assert (=> b!7343205 (= e!4397058 e!4397057)))

(assert (=> b!7343205 (= c!1364022 (is-Union!19124 (regTwo!38761 r1!2370)))))

(declare-fun bm!670554 () Bool)

(declare-fun call!670559 () List!71620)

(assert (=> bm!670554 (= call!670560 call!670559)))

(declare-fun b!7343206 () Bool)

(assert (=> b!7343206 (= e!4397055 call!670561)))

(declare-fun b!7343207 () Bool)

(assert (=> b!7343207 (= e!4397056 e!4397059)))

(assert (=> b!7343207 (= c!1364019 (is-Concat!27969 (regTwo!38761 r1!2370)))))

(declare-fun bm!670555 () Bool)

(assert (=> bm!670555 (= call!670558 (derivationStepZipperDown!2950 (ite c!1364022 (regOne!38761 (regTwo!38761 r1!2370)) (regOne!38760 (regTwo!38761 r1!2370))) (ite c!1364022 ct1!282 (Context!16129 call!670559)) c!10362))))

(declare-fun bm!670556 () Bool)

(assert (=> bm!670556 (= call!670562 call!670557)))

(declare-fun b!7343208 () Bool)

(assert (=> b!7343208 (= e!4397054 (nullable!8217 (regOne!38760 (regTwo!38761 r1!2370))))))

(declare-fun bm!670557 () Bool)

(assert (=> bm!670557 (= call!670559 ($colon$colon!3124 (exprs!8564 ct1!282) (ite (or c!1364020 c!1364019) (regTwo!38760 (regTwo!38761 r1!2370)) (regTwo!38761 r1!2370))))))

(assert (= (and d!2279155 c!1364018) b!7343201))

(assert (= (and d!2279155 (not c!1364018)) b!7343205))

(assert (= (and b!7343205 c!1364022) b!7343203))

(assert (= (and b!7343205 (not c!1364022)) b!7343199))

(assert (= (and b!7343199 res!2966269) b!7343208))

(assert (= (and b!7343199 c!1364020) b!7343198))

(assert (= (and b!7343199 (not c!1364020)) b!7343207))

(assert (= (and b!7343207 c!1364019) b!7343200))

(assert (= (and b!7343207 (not c!1364019)) b!7343204))

(assert (= (and b!7343204 c!1364021) b!7343206))

(assert (= (and b!7343204 (not c!1364021)) b!7343202))

(assert (= (or b!7343200 b!7343206) bm!670554))

(assert (= (or b!7343200 b!7343206) bm!670552))

(assert (= (or b!7343198 bm!670552) bm!670556))

(assert (= (or b!7343198 bm!670554) bm!670557))

(assert (= (or b!7343203 bm!670556) bm!670553))

(assert (= (or b!7343203 b!7343198) bm!670555))

(declare-fun m!8006370 () Bool)

(assert (=> bm!670553 m!8006370))

(declare-fun m!8006372 () Bool)

(assert (=> bm!670557 m!8006372))

(assert (=> b!7343201 m!8006320))

(assert (=> b!7343208 m!8006366))

(declare-fun m!8006374 () Bool)

(assert (=> bm!670555 m!8006374))

(assert (=> b!7343051 d!2279155))

(declare-fun b!7343209 () Bool)

(declare-fun e!4397062 () (Set Context!16128))

(declare-fun call!670564 () (Set Context!16128))

(declare-fun call!670568 () (Set Context!16128))

(assert (=> b!7343209 (= e!4397062 (set.union call!670564 call!670568))))

(declare-fun b!7343210 () Bool)

(declare-fun c!1364025 () Bool)

(declare-fun e!4397060 () Bool)

(assert (=> b!7343210 (= c!1364025 e!4397060)))

(declare-fun res!2966270 () Bool)

(assert (=> b!7343210 (=> (not res!2966270) (not e!4397060))))

(assert (=> b!7343210 (= res!2966270 (is-Concat!27969 (regOne!38761 r1!2370)))))

(declare-fun e!4397063 () (Set Context!16128))

(assert (=> b!7343210 (= e!4397063 e!4397062)))

(declare-fun b!7343211 () Bool)

(declare-fun e!4397065 () (Set Context!16128))

(declare-fun call!670567 () (Set Context!16128))

(assert (=> b!7343211 (= e!4397065 call!670567)))

(declare-fun b!7343212 () Bool)

(declare-fun e!4397064 () (Set Context!16128))

(assert (=> b!7343212 (= e!4397064 (set.insert ct1!282 (as set.empty (Set Context!16128))))))

(declare-fun b!7343213 () Bool)

(declare-fun e!4397061 () (Set Context!16128))

(assert (=> b!7343213 (= e!4397061 (as set.empty (Set Context!16128)))))

(declare-fun bm!670558 () Bool)

(assert (=> bm!670558 (= call!670567 call!670568)))

(declare-fun b!7343214 () Bool)

(declare-fun call!670563 () (Set Context!16128))

(assert (=> b!7343214 (= e!4397063 (set.union call!670564 call!670563))))

(declare-fun d!2279157 () Bool)

(declare-fun c!1364023 () Bool)

(assert (=> d!2279157 (= c!1364023 (and (is-ElementMatch!19124 (regOne!38761 r1!2370)) (= (c!1363980 (regOne!38761 r1!2370)) c!10362)))))

(assert (=> d!2279157 (= (derivationStepZipperDown!2950 (regOne!38761 r1!2370) ct1!282 c!10362) e!4397064)))

(declare-fun call!670566 () List!71620)

(declare-fun bm!670559 () Bool)

(declare-fun c!1364024 () Bool)

(declare-fun c!1364027 () Bool)

(assert (=> bm!670559 (= call!670563 (derivationStepZipperDown!2950 (ite c!1364027 (regTwo!38761 (regOne!38761 r1!2370)) (ite c!1364025 (regTwo!38760 (regOne!38761 r1!2370)) (ite c!1364024 (regOne!38760 (regOne!38761 r1!2370)) (reg!19453 (regOne!38761 r1!2370))))) (ite (or c!1364027 c!1364025) ct1!282 (Context!16129 call!670566)) c!10362))))

(declare-fun b!7343215 () Bool)

(declare-fun c!1364026 () Bool)

(assert (=> b!7343215 (= c!1364026 (is-Star!19124 (regOne!38761 r1!2370)))))

(assert (=> b!7343215 (= e!4397065 e!4397061)))

(declare-fun b!7343216 () Bool)

(assert (=> b!7343216 (= e!4397064 e!4397063)))

(assert (=> b!7343216 (= c!1364027 (is-Union!19124 (regOne!38761 r1!2370)))))

(declare-fun bm!670560 () Bool)

(declare-fun call!670565 () List!71620)

(assert (=> bm!670560 (= call!670566 call!670565)))

(declare-fun b!7343217 () Bool)

(assert (=> b!7343217 (= e!4397061 call!670567)))

(declare-fun b!7343218 () Bool)

(assert (=> b!7343218 (= e!4397062 e!4397065)))

(assert (=> b!7343218 (= c!1364024 (is-Concat!27969 (regOne!38761 r1!2370)))))

(declare-fun bm!670561 () Bool)

(assert (=> bm!670561 (= call!670564 (derivationStepZipperDown!2950 (ite c!1364027 (regOne!38761 (regOne!38761 r1!2370)) (regOne!38760 (regOne!38761 r1!2370))) (ite c!1364027 ct1!282 (Context!16129 call!670565)) c!10362))))

(declare-fun bm!670562 () Bool)

(assert (=> bm!670562 (= call!670568 call!670563)))

(declare-fun b!7343219 () Bool)

(assert (=> b!7343219 (= e!4397060 (nullable!8217 (regOne!38760 (regOne!38761 r1!2370))))))

(declare-fun bm!670563 () Bool)

(assert (=> bm!670563 (= call!670565 ($colon$colon!3124 (exprs!8564 ct1!282) (ite (or c!1364025 c!1364024) (regTwo!38760 (regOne!38761 r1!2370)) (regOne!38761 r1!2370))))))

(assert (= (and d!2279157 c!1364023) b!7343212))

(assert (= (and d!2279157 (not c!1364023)) b!7343216))

(assert (= (and b!7343216 c!1364027) b!7343214))

(assert (= (and b!7343216 (not c!1364027)) b!7343210))

(assert (= (and b!7343210 res!2966270) b!7343219))

(assert (= (and b!7343210 c!1364025) b!7343209))

(assert (= (and b!7343210 (not c!1364025)) b!7343218))

(assert (= (and b!7343218 c!1364024) b!7343211))

(assert (= (and b!7343218 (not c!1364024)) b!7343215))

(assert (= (and b!7343215 c!1364026) b!7343217))

(assert (= (and b!7343215 (not c!1364026)) b!7343213))

(assert (= (or b!7343211 b!7343217) bm!670560))

(assert (= (or b!7343211 b!7343217) bm!670558))

(assert (= (or b!7343209 bm!670558) bm!670562))

(assert (= (or b!7343209 bm!670560) bm!670563))

(assert (= (or b!7343214 bm!670562) bm!670559))

(assert (= (or b!7343214 b!7343209) bm!670561))

(declare-fun m!8006376 () Bool)

(assert (=> bm!670559 m!8006376))

(declare-fun m!8006378 () Bool)

(assert (=> bm!670563 m!8006378))

(assert (=> b!7343212 m!8006320))

(declare-fun m!8006380 () Bool)

(assert (=> b!7343219 m!8006380))

(declare-fun m!8006382 () Bool)

(assert (=> bm!670561 m!8006382))

(assert (=> b!7343051 d!2279157))

(declare-fun d!2279159 () Bool)

(declare-fun res!2966284 () Bool)

(declare-fun e!4397081 () Bool)

(assert (=> d!2279159 (=> res!2966284 e!4397081)))

(assert (=> d!2279159 (= res!2966284 (is-ElementMatch!19124 r1!2370))))

(assert (=> d!2279159 (= (validRegex!9720 r1!2370) e!4397081)))

(declare-fun b!7343238 () Bool)

(declare-fun e!4397086 () Bool)

(declare-fun call!670577 () Bool)

(assert (=> b!7343238 (= e!4397086 call!670577)))

(declare-fun b!7343239 () Bool)

(declare-fun e!4397080 () Bool)

(declare-fun e!4397085 () Bool)

(assert (=> b!7343239 (= e!4397080 e!4397085)))

(declare-fun res!2966281 () Bool)

(assert (=> b!7343239 (= res!2966281 (not (nullable!8217 (reg!19453 r1!2370))))))

(assert (=> b!7343239 (=> (not res!2966281) (not e!4397085))))

(declare-fun b!7343240 () Bool)

(declare-fun call!670576 () Bool)

(assert (=> b!7343240 (= e!4397085 call!670576)))

(declare-fun b!7343241 () Bool)

(declare-fun e!4397083 () Bool)

(declare-fun call!670575 () Bool)

(assert (=> b!7343241 (= e!4397083 call!670575)))

(declare-fun b!7343242 () Bool)

(declare-fun res!2966282 () Bool)

(assert (=> b!7343242 (=> (not res!2966282) (not e!4397083))))

(assert (=> b!7343242 (= res!2966282 call!670577)))

(declare-fun e!4397084 () Bool)

(assert (=> b!7343242 (= e!4397084 e!4397083)))

(declare-fun b!7343243 () Bool)

(declare-fun e!4397082 () Bool)

(assert (=> b!7343243 (= e!4397082 e!4397086)))

(declare-fun res!2966285 () Bool)

(assert (=> b!7343243 (=> (not res!2966285) (not e!4397086))))

(assert (=> b!7343243 (= res!2966285 call!670575)))

(declare-fun b!7343244 () Bool)

(declare-fun res!2966283 () Bool)

(assert (=> b!7343244 (=> res!2966283 e!4397082)))

(assert (=> b!7343244 (= res!2966283 (not (is-Concat!27969 r1!2370)))))

(assert (=> b!7343244 (= e!4397084 e!4397082)))

(declare-fun b!7343245 () Bool)

(assert (=> b!7343245 (= e!4397081 e!4397080)))

(declare-fun c!1364033 () Bool)

(assert (=> b!7343245 (= c!1364033 (is-Star!19124 r1!2370))))

(declare-fun c!1364032 () Bool)

(declare-fun bm!670570 () Bool)

(assert (=> bm!670570 (= call!670576 (validRegex!9720 (ite c!1364033 (reg!19453 r1!2370) (ite c!1364032 (regTwo!38761 r1!2370) (regOne!38760 r1!2370)))))))

(declare-fun bm!670571 () Bool)

(assert (=> bm!670571 (= call!670575 call!670576)))

(declare-fun b!7343246 () Bool)

(assert (=> b!7343246 (= e!4397080 e!4397084)))

(assert (=> b!7343246 (= c!1364032 (is-Union!19124 r1!2370))))

(declare-fun bm!670572 () Bool)

(assert (=> bm!670572 (= call!670577 (validRegex!9720 (ite c!1364032 (regOne!38761 r1!2370) (regTwo!38760 r1!2370))))))

(assert (= (and d!2279159 (not res!2966284)) b!7343245))

(assert (= (and b!7343245 c!1364033) b!7343239))

(assert (= (and b!7343245 (not c!1364033)) b!7343246))

(assert (= (and b!7343239 res!2966281) b!7343240))

(assert (= (and b!7343246 c!1364032) b!7343242))

(assert (= (and b!7343246 (not c!1364032)) b!7343244))

(assert (= (and b!7343242 res!2966282) b!7343241))

(assert (= (and b!7343244 (not res!2966283)) b!7343243))

(assert (= (and b!7343243 res!2966285) b!7343238))

(assert (= (or b!7343242 b!7343238) bm!670572))

(assert (= (or b!7343241 b!7343243) bm!670571))

(assert (= (or b!7343240 bm!670571) bm!670570))

(declare-fun m!8006384 () Bool)

(assert (=> b!7343239 m!8006384))

(declare-fun m!8006386 () Bool)

(assert (=> bm!670570 m!8006386))

(declare-fun m!8006388 () Bool)

(assert (=> bm!670572 m!8006388))

(assert (=> start!717166 d!2279159))

(declare-fun bs!1918619 () Bool)

(declare-fun d!2279161 () Bool)

(assert (= bs!1918619 (and d!2279161 b!7343059)))

(declare-fun lambda!455842 () Int)

(assert (=> bs!1918619 (= lambda!455842 lambda!455818)))

(declare-fun bs!1918620 () Bool)

(assert (= bs!1918620 (and d!2279161 d!2279139)))

(assert (=> bs!1918620 (= lambda!455842 lambda!455837)))

(assert (=> d!2279161 (= (inv!91151 cWitness!61) (forall!17954 (exprs!8564 cWitness!61) lambda!455842))))

(declare-fun bs!1918621 () Bool)

(assert (= bs!1918621 d!2279161))

(declare-fun m!8006390 () Bool)

(assert (=> bs!1918621 m!8006390))

(assert (=> start!717166 d!2279161))

(declare-fun bs!1918622 () Bool)

(declare-fun d!2279163 () Bool)

(assert (= bs!1918622 (and d!2279163 b!7343059)))

(declare-fun lambda!455843 () Int)

(assert (=> bs!1918622 (= lambda!455843 lambda!455818)))

(declare-fun bs!1918623 () Bool)

(assert (= bs!1918623 (and d!2279163 d!2279139)))

(assert (=> bs!1918623 (= lambda!455843 lambda!455837)))

(declare-fun bs!1918624 () Bool)

(assert (= bs!1918624 (and d!2279163 d!2279161)))

(assert (=> bs!1918624 (= lambda!455843 lambda!455842)))

(assert (=> d!2279163 (= (inv!91151 ct1!282) (forall!17954 (exprs!8564 ct1!282) lambda!455843))))

(declare-fun bs!1918625 () Bool)

(assert (= bs!1918625 d!2279163))

(declare-fun m!8006392 () Bool)

(assert (=> bs!1918625 m!8006392))

(assert (=> start!717166 d!2279163))

(declare-fun bs!1918626 () Bool)

(declare-fun d!2279165 () Bool)

(assert (= bs!1918626 (and d!2279165 b!7343059)))

(declare-fun lambda!455844 () Int)

(assert (=> bs!1918626 (= lambda!455844 lambda!455818)))

(declare-fun bs!1918627 () Bool)

(assert (= bs!1918627 (and d!2279165 d!2279139)))

(assert (=> bs!1918627 (= lambda!455844 lambda!455837)))

(declare-fun bs!1918628 () Bool)

(assert (= bs!1918628 (and d!2279165 d!2279161)))

(assert (=> bs!1918628 (= lambda!455844 lambda!455842)))

(declare-fun bs!1918629 () Bool)

(assert (= bs!1918629 (and d!2279165 d!2279163)))

(assert (=> bs!1918629 (= lambda!455844 lambda!455843)))

(assert (=> d!2279165 (= (inv!91151 ct2!378) (forall!17954 (exprs!8564 ct2!378) lambda!455844))))

(declare-fun bs!1918630 () Bool)

(assert (= bs!1918630 d!2279165))

(declare-fun m!8006394 () Bool)

(assert (=> bs!1918630 m!8006394))

(assert (=> start!717166 d!2279165))

(declare-fun d!2279167 () Bool)

(declare-fun res!2966292 () Bool)

(declare-fun e!4397103 () Bool)

(assert (=> d!2279167 (=> res!2966292 e!4397103)))

(assert (=> d!2279167 (= res!2966292 (is-Nil!71496 (exprs!8564 cWitness!61)))))

(assert (=> d!2279167 (= (forall!17954 (exprs!8564 cWitness!61) lambda!455818) e!4397103)))

(declare-fun b!7343273 () Bool)

(declare-fun e!4397104 () Bool)

(assert (=> b!7343273 (= e!4397103 e!4397104)))

(declare-fun res!2966293 () Bool)

(assert (=> b!7343273 (=> (not res!2966293) (not e!4397104))))

(declare-fun dynLambda!29461 (Int Regex!19124) Bool)

(assert (=> b!7343273 (= res!2966293 (dynLambda!29461 lambda!455818 (h!77944 (exprs!8564 cWitness!61))))))

(declare-fun b!7343274 () Bool)

(assert (=> b!7343274 (= e!4397104 (forall!17954 (t!386015 (exprs!8564 cWitness!61)) lambda!455818))))

(assert (= (and d!2279167 (not res!2966292)) b!7343273))

(assert (= (and b!7343273 res!2966293) b!7343274))

(declare-fun b_lambda!283931 () Bool)

(assert (=> (not b_lambda!283931) (not b!7343273)))

(declare-fun m!8006396 () Bool)

(assert (=> b!7343273 m!8006396))

(declare-fun m!8006398 () Bool)

(assert (=> b!7343274 m!8006398))

(assert (=> b!7343056 d!2279167))

(declare-fun b!7343279 () Bool)

(declare-fun e!4397107 () Bool)

(declare-fun tp!2085262 () Bool)

(declare-fun tp!2085263 () Bool)

(assert (=> b!7343279 (= e!4397107 (and tp!2085262 tp!2085263))))

(assert (=> b!7343048 (= tp!2085233 e!4397107)))

(assert (= (and b!7343048 (is-Cons!71496 (exprs!8564 cWitness!61))) b!7343279))

(declare-fun b!7343292 () Bool)

(declare-fun e!4397110 () Bool)

(declare-fun tp!2085276 () Bool)

(assert (=> b!7343292 (= e!4397110 tp!2085276)))

(declare-fun b!7343293 () Bool)

(declare-fun tp!2085278 () Bool)

(declare-fun tp!2085275 () Bool)

(assert (=> b!7343293 (= e!4397110 (and tp!2085278 tp!2085275))))

(declare-fun b!7343291 () Bool)

(declare-fun tp!2085274 () Bool)

(declare-fun tp!2085277 () Bool)

(assert (=> b!7343291 (= e!4397110 (and tp!2085274 tp!2085277))))

(declare-fun b!7343290 () Bool)

(assert (=> b!7343290 (= e!4397110 tp_is_empty!48493)))

(assert (=> b!7343055 (= tp!2085230 e!4397110)))

(assert (= (and b!7343055 (is-ElementMatch!19124 (reg!19453 r1!2370))) b!7343290))

(assert (= (and b!7343055 (is-Concat!27969 (reg!19453 r1!2370))) b!7343291))

(assert (= (and b!7343055 (is-Star!19124 (reg!19453 r1!2370))) b!7343292))

(assert (= (and b!7343055 (is-Union!19124 (reg!19453 r1!2370))) b!7343293))

(declare-fun b!7343296 () Bool)

(declare-fun e!4397111 () Bool)

(declare-fun tp!2085281 () Bool)

(assert (=> b!7343296 (= e!4397111 tp!2085281)))

(declare-fun b!7343297 () Bool)

(declare-fun tp!2085283 () Bool)

(declare-fun tp!2085280 () Bool)

(assert (=> b!7343297 (= e!4397111 (and tp!2085283 tp!2085280))))

(declare-fun b!7343295 () Bool)

(declare-fun tp!2085279 () Bool)

(declare-fun tp!2085282 () Bool)

(assert (=> b!7343295 (= e!4397111 (and tp!2085279 tp!2085282))))

(declare-fun b!7343294 () Bool)

(assert (=> b!7343294 (= e!4397111 tp_is_empty!48493)))

(assert (=> b!7343050 (= tp!2085229 e!4397111)))

(assert (= (and b!7343050 (is-ElementMatch!19124 (regOne!38760 r1!2370))) b!7343294))

(assert (= (and b!7343050 (is-Concat!27969 (regOne!38760 r1!2370))) b!7343295))

(assert (= (and b!7343050 (is-Star!19124 (regOne!38760 r1!2370))) b!7343296))

(assert (= (and b!7343050 (is-Union!19124 (regOne!38760 r1!2370))) b!7343297))

(declare-fun b!7343300 () Bool)

(declare-fun e!4397112 () Bool)

(declare-fun tp!2085286 () Bool)

(assert (=> b!7343300 (= e!4397112 tp!2085286)))

(declare-fun b!7343301 () Bool)

(declare-fun tp!2085288 () Bool)

(declare-fun tp!2085285 () Bool)

(assert (=> b!7343301 (= e!4397112 (and tp!2085288 tp!2085285))))

(declare-fun b!7343299 () Bool)

(declare-fun tp!2085284 () Bool)

(declare-fun tp!2085287 () Bool)

(assert (=> b!7343299 (= e!4397112 (and tp!2085284 tp!2085287))))

(declare-fun b!7343298 () Bool)

(assert (=> b!7343298 (= e!4397112 tp_is_empty!48493)))

(assert (=> b!7343050 (= tp!2085227 e!4397112)))

(assert (= (and b!7343050 (is-ElementMatch!19124 (regTwo!38760 r1!2370))) b!7343298))

(assert (= (and b!7343050 (is-Concat!27969 (regTwo!38760 r1!2370))) b!7343299))

(assert (= (and b!7343050 (is-Star!19124 (regTwo!38760 r1!2370))) b!7343300))

(assert (= (and b!7343050 (is-Union!19124 (regTwo!38760 r1!2370))) b!7343301))

(declare-fun b!7343304 () Bool)

(declare-fun e!4397113 () Bool)

(declare-fun tp!2085291 () Bool)

(assert (=> b!7343304 (= e!4397113 tp!2085291)))

(declare-fun b!7343305 () Bool)

(declare-fun tp!2085293 () Bool)

(declare-fun tp!2085290 () Bool)

(assert (=> b!7343305 (= e!4397113 (and tp!2085293 tp!2085290))))

(declare-fun b!7343303 () Bool)

(declare-fun tp!2085289 () Bool)

(declare-fun tp!2085292 () Bool)

(assert (=> b!7343303 (= e!4397113 (and tp!2085289 tp!2085292))))

(declare-fun b!7343302 () Bool)

(assert (=> b!7343302 (= e!4397113 tp_is_empty!48493)))

(assert (=> b!7343049 (= tp!2085226 e!4397113)))

(assert (= (and b!7343049 (is-ElementMatch!19124 (regOne!38761 r1!2370))) b!7343302))

(assert (= (and b!7343049 (is-Concat!27969 (regOne!38761 r1!2370))) b!7343303))

(assert (= (and b!7343049 (is-Star!19124 (regOne!38761 r1!2370))) b!7343304))

(assert (= (and b!7343049 (is-Union!19124 (regOne!38761 r1!2370))) b!7343305))

(declare-fun b!7343308 () Bool)

(declare-fun e!4397114 () Bool)

(declare-fun tp!2085296 () Bool)

(assert (=> b!7343308 (= e!4397114 tp!2085296)))

(declare-fun b!7343309 () Bool)

(declare-fun tp!2085298 () Bool)

(declare-fun tp!2085295 () Bool)

(assert (=> b!7343309 (= e!4397114 (and tp!2085298 tp!2085295))))

(declare-fun b!7343307 () Bool)

(declare-fun tp!2085294 () Bool)

(declare-fun tp!2085297 () Bool)

(assert (=> b!7343307 (= e!4397114 (and tp!2085294 tp!2085297))))

(declare-fun b!7343306 () Bool)

(assert (=> b!7343306 (= e!4397114 tp_is_empty!48493)))

(assert (=> b!7343049 (= tp!2085232 e!4397114)))

(assert (= (and b!7343049 (is-ElementMatch!19124 (regTwo!38761 r1!2370))) b!7343306))

(assert (= (and b!7343049 (is-Concat!27969 (regTwo!38761 r1!2370))) b!7343307))

(assert (= (and b!7343049 (is-Star!19124 (regTwo!38761 r1!2370))) b!7343308))

(assert (= (and b!7343049 (is-Union!19124 (regTwo!38761 r1!2370))) b!7343309))

(declare-fun b!7343310 () Bool)

(declare-fun e!4397115 () Bool)

(declare-fun tp!2085299 () Bool)

(declare-fun tp!2085300 () Bool)

(assert (=> b!7343310 (= e!4397115 (and tp!2085299 tp!2085300))))

(assert (=> b!7343058 (= tp!2085231 e!4397115)))

(assert (= (and b!7343058 (is-Cons!71496 (exprs!8564 ct2!378))) b!7343310))

(declare-fun b!7343311 () Bool)

(declare-fun e!4397116 () Bool)

(declare-fun tp!2085301 () Bool)

(declare-fun tp!2085302 () Bool)

(assert (=> b!7343311 (= e!4397116 (and tp!2085301 tp!2085302))))

(assert (=> b!7343052 (= tp!2085228 e!4397116)))

(assert (= (and b!7343052 (is-Cons!71496 (exprs!8564 ct1!282))) b!7343311))

(declare-fun b_lambda!283933 () Bool)

(assert (= b_lambda!283931 (or b!7343059 b_lambda!283933)))

(declare-fun bs!1918631 () Bool)

(declare-fun d!2279169 () Bool)

(assert (= bs!1918631 (and d!2279169 b!7343059)))

(assert (=> bs!1918631 (= (dynLambda!29461 lambda!455818 (h!77944 (exprs!8564 cWitness!61))) (validRegex!9720 (h!77944 (exprs!8564 cWitness!61))))))

(declare-fun m!8006400 () Bool)

(assert (=> bs!1918631 m!8006400))

(assert (=> b!7343273 d!2279169))

(push 1)

(assert (not d!2279149))

(assert (not b!7343279))

(assert (not b!7343303))

(assert (not d!2279161))

(assert (not b!7343296))

(assert (not b!7343299))

(assert tp_is_empty!48493)

(assert (not bm!670553))

(assert (not bm!670528))

(assert (not b!7343293))

(assert (not bm!670557))

(assert (not b!7343208))

(assert (not b!7343185))

(assert (not b!7343297))

(assert (not b!7343274))

(assert (not d!2279133))

(assert (not b!7343310))

(assert (not b!7343295))

(assert (not bm!670547))

(assert (not bm!670555))

(assert (not bm!670526))

(assert (not b!7343292))

(assert (not b!7343291))

(assert (not b_lambda!283933))

(assert (not b!7343173))

(assert (not b!7343161))

(assert (not d!2279145))

(assert (not bm!670561))

(assert (not d!2279139))

(assert (not b!7343300))

(assert (not bm!670551))

(assert (not bm!670549))

(assert (not b!7343219))

(assert (not b!7343301))

(assert (not b!7343305))

(assert (not b!7343160))

(assert (not bs!1918631))

(assert (not bm!670540))

(assert (not b!7343307))

(assert (not bm!670572))

(assert (not b!7343308))

(assert (not d!2279135))

(assert (not bm!670530))

(assert (not b!7343132))

(assert (not bm!670559))

(assert (not bm!670563))

(assert (not d!2279165))

(assert (not b!7343304))

(assert (not bm!670542))

(assert (not b!7343184))

(assert (not b!7343197))

(assert (not b!7343309))

(assert (not b!7343311))

(assert (not b!7343239))

(assert (not bm!670570))

(assert (not bm!670538))

(assert (not d!2279163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

