; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719560 () Bool)

(assert start!719560)

(declare-fun b!7373315 () Bool)

(declare-fun e!4414022 () Bool)

(declare-fun tp!2096227 () Bool)

(declare-fun tp!2096224 () Bool)

(assert (=> b!7373315 (= e!4414022 (and tp!2096227 tp!2096224))))

(declare-fun b!7373316 () Bool)

(declare-fun e!4414020 () Bool)

(declare-fun tp!2096226 () Bool)

(assert (=> b!7373316 (= e!4414020 tp!2096226)))

(declare-fun b!7373317 () Bool)

(declare-fun res!2974863 () Bool)

(declare-fun e!4414021 () Bool)

(assert (=> b!7373317 (=> (not res!2974863) (not e!4414021))))

(declare-fun e!4414024 () Bool)

(assert (=> b!7373317 (= res!2974863 e!4414024)))

(declare-fun res!2974859 () Bool)

(assert (=> b!7373317 (=> res!2974859 e!4414024)))

(declare-datatypes ((C!38856 0))(
  ( (C!38857 (val!29788 Int)) )
))
(declare-datatypes ((Regex!19291 0))(
  ( (ElementMatch!19291 (c!1370431 C!38856)) (Concat!28136 (regOne!39094 Regex!19291) (regTwo!39094 Regex!19291)) (EmptyExpr!19291) (Star!19291 (reg!19620 Regex!19291)) (EmptyLang!19291) (Union!19291 (regOne!39095 Regex!19291) (regTwo!39095 Regex!19291)) )
))
(declare-fun r1!2370 () Regex!19291)

(get-info :version)

(assert (=> b!7373317 (= res!2974859 (not ((_ is Concat!28136) r1!2370)))))

(declare-fun b!7373318 () Bool)

(declare-fun nullable!8367 (Regex!19291) Bool)

(assert (=> b!7373318 (= e!4414024 (not (nullable!8367 (regOne!39094 r1!2370))))))

(declare-fun b!7373319 () Bool)

(declare-fun e!4414026 () Bool)

(declare-fun tp!2096221 () Bool)

(assert (=> b!7373319 (= e!4414026 tp!2096221)))

(declare-fun b!7373321 () Bool)

(declare-fun validRegex!9887 (Regex!19291) Bool)

(assert (=> b!7373321 (= e!4414021 (not (validRegex!9887 (regTwo!39094 r1!2370))))))

(declare-fun b!7373322 () Bool)

(declare-fun e!4414025 () Bool)

(declare-fun tp!2096223 () Bool)

(assert (=> b!7373322 (= e!4414025 tp!2096223)))

(declare-fun b!7373323 () Bool)

(declare-fun res!2974861 () Bool)

(assert (=> b!7373323 (=> (not res!2974861) (not e!4414021))))

(assert (=> b!7373323 (= res!2974861 ((_ is Concat!28136) r1!2370))))

(declare-fun b!7373324 () Bool)

(declare-fun res!2974864 () Bool)

(declare-fun e!4414023 () Bool)

(assert (=> b!7373324 (=> (not res!2974864) (not e!4414023))))

(declare-fun c!10362 () C!38856)

(declare-datatypes ((List!71787 0))(
  ( (Nil!71663) (Cons!71663 (h!78111 Regex!19291) (t!386258 List!71787)) )
))
(declare-datatypes ((Context!16462 0))(
  ( (Context!16463 (exprs!8731 List!71787)) )
))
(declare-fun cWitness!61 () Context!16462)

(declare-fun ct1!282 () Context!16462)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!3117 (Regex!19291 Context!16462 C!38856) (InoxSet Context!16462))

(assert (=> b!7373324 (= res!2974864 (select (derivationStepZipperDown!3117 r1!2370 ct1!282 c!10362) cWitness!61))))

(declare-fun b!7373325 () Bool)

(declare-fun tp_is_empty!48827 () Bool)

(assert (=> b!7373325 (= e!4414022 tp_is_empty!48827)))

(declare-fun b!7373320 () Bool)

(declare-fun tp!2096222 () Bool)

(assert (=> b!7373320 (= e!4414022 tp!2096222)))

(declare-fun res!2974860 () Bool)

(assert (=> start!719560 (=> (not res!2974860) (not e!4414023))))

(assert (=> start!719560 (= res!2974860 (validRegex!9887 r1!2370))))

(assert (=> start!719560 e!4414023))

(assert (=> start!719560 tp_is_empty!48827))

(declare-fun inv!91567 (Context!16462) Bool)

(assert (=> start!719560 (and (inv!91567 cWitness!61) e!4414025)))

(assert (=> start!719560 (and (inv!91567 ct1!282) e!4414020)))

(assert (=> start!719560 e!4414022))

(declare-fun ct2!378 () Context!16462)

(assert (=> start!719560 (and (inv!91567 ct2!378) e!4414026)))

(declare-fun b!7373326 () Bool)

(assert (=> b!7373326 (= e!4414023 e!4414021)))

(declare-fun res!2974862 () Bool)

(assert (=> b!7373326 (=> (not res!2974862) (not e!4414021))))

(assert (=> b!7373326 (= res!2974862 (and (or (not ((_ is ElementMatch!19291) r1!2370)) (not (= c!10362 (c!1370431 r1!2370)))) (not ((_ is Union!19291) r1!2370))))))

(declare-fun lt!2616071 () (InoxSet Context!16462))

(declare-fun ++!17107 (List!71787 List!71787) List!71787)

(assert (=> b!7373326 (= lt!2616071 (derivationStepZipperDown!3117 r1!2370 (Context!16463 (++!17107 (exprs!8731 ct1!282) (exprs!8731 ct2!378))) c!10362))))

(declare-fun lambda!458213 () Int)

(declare-datatypes ((Unit!165531 0))(
  ( (Unit!165532) )
))
(declare-fun lt!2616070 () Unit!165531)

(declare-fun lemmaConcatPreservesForall!1964 (List!71787 List!71787 Int) Unit!165531)

(assert (=> b!7373326 (= lt!2616070 (lemmaConcatPreservesForall!1964 (exprs!8731 ct1!282) (exprs!8731 ct2!378) lambda!458213))))

(declare-fun b!7373327 () Bool)

(declare-fun tp!2096220 () Bool)

(declare-fun tp!2096225 () Bool)

(assert (=> b!7373327 (= e!4414022 (and tp!2096220 tp!2096225))))

(assert (= (and start!719560 res!2974860) b!7373324))

(assert (= (and b!7373324 res!2974864) b!7373326))

(assert (= (and b!7373326 res!2974862) b!7373317))

(assert (= (and b!7373317 (not res!2974859)) b!7373318))

(assert (= (and b!7373317 res!2974863) b!7373323))

(assert (= (and b!7373323 res!2974861) b!7373321))

(assert (= start!719560 b!7373322))

(assert (= start!719560 b!7373316))

(assert (= (and start!719560 ((_ is ElementMatch!19291) r1!2370)) b!7373325))

(assert (= (and start!719560 ((_ is Concat!28136) r1!2370)) b!7373315))

(assert (= (and start!719560 ((_ is Star!19291) r1!2370)) b!7373320))

(assert (= (and start!719560 ((_ is Union!19291) r1!2370)) b!7373327))

(assert (= start!719560 b!7373319))

(declare-fun m!8026436 () Bool)

(assert (=> b!7373321 m!8026436))

(declare-fun m!8026438 () Bool)

(assert (=> b!7373318 m!8026438))

(declare-fun m!8026440 () Bool)

(assert (=> b!7373324 m!8026440))

(declare-fun m!8026442 () Bool)

(assert (=> b!7373324 m!8026442))

(declare-fun m!8026444 () Bool)

(assert (=> b!7373326 m!8026444))

(declare-fun m!8026446 () Bool)

(assert (=> b!7373326 m!8026446))

(declare-fun m!8026448 () Bool)

(assert (=> b!7373326 m!8026448))

(declare-fun m!8026450 () Bool)

(assert (=> start!719560 m!8026450))

(declare-fun m!8026452 () Bool)

(assert (=> start!719560 m!8026452))

(declare-fun m!8026454 () Bool)

(assert (=> start!719560 m!8026454))

(declare-fun m!8026456 () Bool)

(assert (=> start!719560 m!8026456))

(check-sat (not b!7373320) (not b!7373318) tp_is_empty!48827 (not start!719560) (not b!7373327) (not b!7373326) (not b!7373315) (not b!7373316) (not b!7373322) (not b!7373324) (not b!7373319) (not b!7373321))
(check-sat)
(get-model)

(declare-fun c!1370437 () Bool)

(declare-fun bm!677505 () Bool)

(declare-fun c!1370436 () Bool)

(declare-fun call!677511 () Bool)

(assert (=> bm!677505 (= call!677511 (validRegex!9887 (ite c!1370436 (reg!19620 r1!2370) (ite c!1370437 (regOne!39095 r1!2370) (regTwo!39094 r1!2370)))))))

(declare-fun b!7373346 () Bool)

(declare-fun res!2974877 () Bool)

(declare-fun e!4414042 () Bool)

(assert (=> b!7373346 (=> res!2974877 e!4414042)))

(assert (=> b!7373346 (= res!2974877 (not ((_ is Concat!28136) r1!2370)))))

(declare-fun e!4414046 () Bool)

(assert (=> b!7373346 (= e!4414046 e!4414042)))

(declare-fun b!7373347 () Bool)

(declare-fun e!4414047 () Bool)

(declare-fun e!4414044 () Bool)

(assert (=> b!7373347 (= e!4414047 e!4414044)))

(declare-fun res!2974876 () Bool)

(assert (=> b!7373347 (= res!2974876 (not (nullable!8367 (reg!19620 r1!2370))))))

(assert (=> b!7373347 (=> (not res!2974876) (not e!4414044))))

(declare-fun b!7373348 () Bool)

(declare-fun res!2974879 () Bool)

(declare-fun e!4414045 () Bool)

(assert (=> b!7373348 (=> (not res!2974879) (not e!4414045))))

(declare-fun call!677512 () Bool)

(assert (=> b!7373348 (= res!2974879 call!677512)))

(assert (=> b!7373348 (= e!4414046 e!4414045)))

(declare-fun bm!677506 () Bool)

(declare-fun call!677510 () Bool)

(assert (=> bm!677506 (= call!677510 (validRegex!9887 (ite c!1370437 (regTwo!39095 r1!2370) (regOne!39094 r1!2370))))))

(declare-fun b!7373349 () Bool)

(assert (=> b!7373349 (= e!4414045 call!677510)))

(declare-fun b!7373350 () Bool)

(declare-fun e!4414043 () Bool)

(assert (=> b!7373350 (= e!4414042 e!4414043)))

(declare-fun res!2974875 () Bool)

(assert (=> b!7373350 (=> (not res!2974875) (not e!4414043))))

(assert (=> b!7373350 (= res!2974875 call!677510)))

(declare-fun d!2284144 () Bool)

(declare-fun res!2974878 () Bool)

(declare-fun e!4414041 () Bool)

(assert (=> d!2284144 (=> res!2974878 e!4414041)))

(assert (=> d!2284144 (= res!2974878 ((_ is ElementMatch!19291) r1!2370))))

(assert (=> d!2284144 (= (validRegex!9887 r1!2370) e!4414041)))

(declare-fun b!7373351 () Bool)

(assert (=> b!7373351 (= e!4414041 e!4414047)))

(assert (=> b!7373351 (= c!1370436 ((_ is Star!19291) r1!2370))))

(declare-fun bm!677507 () Bool)

(assert (=> bm!677507 (= call!677512 call!677511)))

(declare-fun b!7373352 () Bool)

(assert (=> b!7373352 (= e!4414044 call!677511)))

(declare-fun b!7373353 () Bool)

(assert (=> b!7373353 (= e!4414047 e!4414046)))

(assert (=> b!7373353 (= c!1370437 ((_ is Union!19291) r1!2370))))

(declare-fun b!7373354 () Bool)

(assert (=> b!7373354 (= e!4414043 call!677512)))

(assert (= (and d!2284144 (not res!2974878)) b!7373351))

(assert (= (and b!7373351 c!1370436) b!7373347))

(assert (= (and b!7373351 (not c!1370436)) b!7373353))

(assert (= (and b!7373347 res!2974876) b!7373352))

(assert (= (and b!7373353 c!1370437) b!7373348))

(assert (= (and b!7373353 (not c!1370437)) b!7373346))

(assert (= (and b!7373348 res!2974879) b!7373349))

(assert (= (and b!7373346 (not res!2974877)) b!7373350))

(assert (= (and b!7373350 res!2974875) b!7373354))

(assert (= (or b!7373348 b!7373354) bm!677507))

(assert (= (or b!7373349 b!7373350) bm!677506))

(assert (= (or b!7373352 bm!677507) bm!677505))

(declare-fun m!8026458 () Bool)

(assert (=> bm!677505 m!8026458))

(declare-fun m!8026460 () Bool)

(assert (=> b!7373347 m!8026460))

(declare-fun m!8026462 () Bool)

(assert (=> bm!677506 m!8026462))

(assert (=> start!719560 d!2284144))

(declare-fun bs!1921080 () Bool)

(declare-fun d!2284148 () Bool)

(assert (= bs!1921080 (and d!2284148 b!7373326)))

(declare-fun lambda!458216 () Int)

(assert (=> bs!1921080 (= lambda!458216 lambda!458213)))

(declare-fun forall!18090 (List!71787 Int) Bool)

(assert (=> d!2284148 (= (inv!91567 cWitness!61) (forall!18090 (exprs!8731 cWitness!61) lambda!458216))))

(declare-fun bs!1921081 () Bool)

(assert (= bs!1921081 d!2284148))

(declare-fun m!8026464 () Bool)

(assert (=> bs!1921081 m!8026464))

(assert (=> start!719560 d!2284148))

(declare-fun bs!1921082 () Bool)

(declare-fun d!2284150 () Bool)

(assert (= bs!1921082 (and d!2284150 b!7373326)))

(declare-fun lambda!458217 () Int)

(assert (=> bs!1921082 (= lambda!458217 lambda!458213)))

(declare-fun bs!1921083 () Bool)

(assert (= bs!1921083 (and d!2284150 d!2284148)))

(assert (=> bs!1921083 (= lambda!458217 lambda!458216)))

(assert (=> d!2284150 (= (inv!91567 ct1!282) (forall!18090 (exprs!8731 ct1!282) lambda!458217))))

(declare-fun bs!1921084 () Bool)

(assert (= bs!1921084 d!2284150))

(declare-fun m!8026466 () Bool)

(assert (=> bs!1921084 m!8026466))

(assert (=> start!719560 d!2284150))

(declare-fun bs!1921085 () Bool)

(declare-fun d!2284152 () Bool)

(assert (= bs!1921085 (and d!2284152 b!7373326)))

(declare-fun lambda!458218 () Int)

(assert (=> bs!1921085 (= lambda!458218 lambda!458213)))

(declare-fun bs!1921086 () Bool)

(assert (= bs!1921086 (and d!2284152 d!2284148)))

(assert (=> bs!1921086 (= lambda!458218 lambda!458216)))

(declare-fun bs!1921087 () Bool)

(assert (= bs!1921087 (and d!2284152 d!2284150)))

(assert (=> bs!1921087 (= lambda!458218 lambda!458217)))

(assert (=> d!2284152 (= (inv!91567 ct2!378) (forall!18090 (exprs!8731 ct2!378) lambda!458218))))

(declare-fun bs!1921088 () Bool)

(assert (= bs!1921088 d!2284152))

(declare-fun m!8026468 () Bool)

(assert (=> bs!1921088 m!8026468))

(assert (=> start!719560 d!2284152))

(declare-fun call!677520 () Bool)

(declare-fun c!1370443 () Bool)

(declare-fun c!1370442 () Bool)

(declare-fun bm!677514 () Bool)

(assert (=> bm!677514 (= call!677520 (validRegex!9887 (ite c!1370442 (reg!19620 (regTwo!39094 r1!2370)) (ite c!1370443 (regOne!39095 (regTwo!39094 r1!2370)) (regTwo!39094 (regTwo!39094 r1!2370))))))))

(declare-fun b!7373373 () Bool)

(declare-fun res!2974892 () Bool)

(declare-fun e!4414063 () Bool)

(assert (=> b!7373373 (=> res!2974892 e!4414063)))

(assert (=> b!7373373 (= res!2974892 (not ((_ is Concat!28136) (regTwo!39094 r1!2370))))))

(declare-fun e!4414067 () Bool)

(assert (=> b!7373373 (= e!4414067 e!4414063)))

(declare-fun b!7373374 () Bool)

(declare-fun e!4414068 () Bool)

(declare-fun e!4414065 () Bool)

(assert (=> b!7373374 (= e!4414068 e!4414065)))

(declare-fun res!2974891 () Bool)

(assert (=> b!7373374 (= res!2974891 (not (nullable!8367 (reg!19620 (regTwo!39094 r1!2370)))))))

(assert (=> b!7373374 (=> (not res!2974891) (not e!4414065))))

(declare-fun b!7373375 () Bool)

(declare-fun res!2974894 () Bool)

(declare-fun e!4414066 () Bool)

(assert (=> b!7373375 (=> (not res!2974894) (not e!4414066))))

(declare-fun call!677521 () Bool)

(assert (=> b!7373375 (= res!2974894 call!677521)))

(assert (=> b!7373375 (= e!4414067 e!4414066)))

(declare-fun bm!677515 () Bool)

(declare-fun call!677519 () Bool)

(assert (=> bm!677515 (= call!677519 (validRegex!9887 (ite c!1370443 (regTwo!39095 (regTwo!39094 r1!2370)) (regOne!39094 (regTwo!39094 r1!2370)))))))

(declare-fun b!7373376 () Bool)

(assert (=> b!7373376 (= e!4414066 call!677519)))

(declare-fun b!7373377 () Bool)

(declare-fun e!4414064 () Bool)

(assert (=> b!7373377 (= e!4414063 e!4414064)))

(declare-fun res!2974890 () Bool)

(assert (=> b!7373377 (=> (not res!2974890) (not e!4414064))))

(assert (=> b!7373377 (= res!2974890 call!677519)))

(declare-fun d!2284154 () Bool)

(declare-fun res!2974893 () Bool)

(declare-fun e!4414062 () Bool)

(assert (=> d!2284154 (=> res!2974893 e!4414062)))

(assert (=> d!2284154 (= res!2974893 ((_ is ElementMatch!19291) (regTwo!39094 r1!2370)))))

(assert (=> d!2284154 (= (validRegex!9887 (regTwo!39094 r1!2370)) e!4414062)))

(declare-fun b!7373378 () Bool)

(assert (=> b!7373378 (= e!4414062 e!4414068)))

(assert (=> b!7373378 (= c!1370442 ((_ is Star!19291) (regTwo!39094 r1!2370)))))

(declare-fun bm!677516 () Bool)

(assert (=> bm!677516 (= call!677521 call!677520)))

(declare-fun b!7373379 () Bool)

(assert (=> b!7373379 (= e!4414065 call!677520)))

(declare-fun b!7373380 () Bool)

(assert (=> b!7373380 (= e!4414068 e!4414067)))

(assert (=> b!7373380 (= c!1370443 ((_ is Union!19291) (regTwo!39094 r1!2370)))))

(declare-fun b!7373381 () Bool)

(assert (=> b!7373381 (= e!4414064 call!677521)))

(assert (= (and d!2284154 (not res!2974893)) b!7373378))

(assert (= (and b!7373378 c!1370442) b!7373374))

(assert (= (and b!7373378 (not c!1370442)) b!7373380))

(assert (= (and b!7373374 res!2974891) b!7373379))

(assert (= (and b!7373380 c!1370443) b!7373375))

(assert (= (and b!7373380 (not c!1370443)) b!7373373))

(assert (= (and b!7373375 res!2974894) b!7373376))

(assert (= (and b!7373373 (not res!2974892)) b!7373377))

(assert (= (and b!7373377 res!2974890) b!7373381))

(assert (= (or b!7373375 b!7373381) bm!677516))

(assert (= (or b!7373376 b!7373377) bm!677515))

(assert (= (or b!7373379 bm!677516) bm!677514))

(declare-fun m!8026470 () Bool)

(assert (=> bm!677514 m!8026470))

(declare-fun m!8026472 () Bool)

(assert (=> b!7373374 m!8026472))

(declare-fun m!8026474 () Bool)

(assert (=> bm!677515 m!8026474))

(assert (=> b!7373321 d!2284154))

(declare-fun d!2284156 () Bool)

(declare-fun nullableFct!3347 (Regex!19291) Bool)

(assert (=> d!2284156 (= (nullable!8367 (regOne!39094 r1!2370)) (nullableFct!3347 (regOne!39094 r1!2370)))))

(declare-fun bs!1921089 () Bool)

(assert (= bs!1921089 d!2284156))

(declare-fun m!8026476 () Bool)

(assert (=> bs!1921089 m!8026476))

(assert (=> b!7373318 d!2284156))

(declare-fun bm!677544 () Bool)

(declare-fun call!677553 () (InoxSet Context!16462))

(declare-fun call!677554 () (InoxSet Context!16462))

(assert (=> bm!677544 (= call!677553 call!677554)))

(declare-fun d!2284158 () Bool)

(declare-fun c!1370467 () Bool)

(assert (=> d!2284158 (= c!1370467 (and ((_ is ElementMatch!19291) r1!2370) (= (c!1370431 r1!2370) c!10362)))))

(declare-fun e!4414102 () (InoxSet Context!16462))

(assert (=> d!2284158 (= (derivationStepZipperDown!3117 r1!2370 ct1!282 c!10362) e!4414102)))

(declare-fun bm!677545 () Bool)

(declare-fun call!677550 () List!71787)

(declare-fun call!677552 () List!71787)

(assert (=> bm!677545 (= call!677550 call!677552)))

(declare-fun b!7373435 () Bool)

(declare-fun c!1370468 () Bool)

(assert (=> b!7373435 (= c!1370468 ((_ is Star!19291) r1!2370))))

(declare-fun e!4414101 () (InoxSet Context!16462))

(declare-fun e!4414103 () (InoxSet Context!16462))

(assert (=> b!7373435 (= e!4414101 e!4414103)))

(declare-fun bm!677546 () Bool)

(declare-fun call!677551 () (InoxSet Context!16462))

(assert (=> bm!677546 (= call!677551 call!677553)))

(declare-fun b!7373436 () Bool)

(declare-fun e!4414104 () (InoxSet Context!16462))

(assert (=> b!7373436 (= e!4414102 e!4414104)))

(declare-fun c!1370470 () Bool)

(assert (=> b!7373436 (= c!1370470 ((_ is Union!19291) r1!2370))))

(declare-fun b!7373437 () Bool)

(declare-fun e!4414100 () Bool)

(assert (=> b!7373437 (= e!4414100 (nullable!8367 (regOne!39094 r1!2370)))))

(declare-fun b!7373438 () Bool)

(assert (=> b!7373438 (= e!4414102 (store ((as const (Array Context!16462 Bool)) false) ct1!282 true))))

(declare-fun call!677549 () (InoxSet Context!16462))

(declare-fun bm!677547 () Bool)

(assert (=> bm!677547 (= call!677549 (derivationStepZipperDown!3117 (ite c!1370470 (regOne!39095 r1!2370) (regOne!39094 r1!2370)) (ite c!1370470 ct1!282 (Context!16463 call!677552)) c!10362))))

(declare-fun c!1370469 () Bool)

(declare-fun c!1370466 () Bool)

(declare-fun bm!677548 () Bool)

(declare-fun $colon$colon!3272 (List!71787 Regex!19291) List!71787)

(assert (=> bm!677548 (= call!677552 ($colon$colon!3272 (exprs!8731 ct1!282) (ite (or c!1370469 c!1370466) (regTwo!39094 r1!2370) r1!2370)))))

(declare-fun bm!677549 () Bool)

(assert (=> bm!677549 (= call!677554 (derivationStepZipperDown!3117 (ite c!1370470 (regTwo!39095 r1!2370) (ite c!1370469 (regTwo!39094 r1!2370) (ite c!1370466 (regOne!39094 r1!2370) (reg!19620 r1!2370)))) (ite (or c!1370470 c!1370469) ct1!282 (Context!16463 call!677550)) c!10362))))

(declare-fun b!7373439 () Bool)

(assert (=> b!7373439 (= e!4414104 ((_ map or) call!677549 call!677554))))

(declare-fun b!7373440 () Bool)

(assert (=> b!7373440 (= e!4414103 call!677551)))

(declare-fun b!7373441 () Bool)

(assert (=> b!7373441 (= e!4414101 call!677551)))

(declare-fun b!7373442 () Bool)

(assert (=> b!7373442 (= c!1370469 e!4414100)))

(declare-fun res!2974904 () Bool)

(assert (=> b!7373442 (=> (not res!2974904) (not e!4414100))))

(assert (=> b!7373442 (= res!2974904 ((_ is Concat!28136) r1!2370))))

(declare-fun e!4414105 () (InoxSet Context!16462))

(assert (=> b!7373442 (= e!4414104 e!4414105)))

(declare-fun b!7373443 () Bool)

(assert (=> b!7373443 (= e!4414105 ((_ map or) call!677549 call!677553))))

(declare-fun b!7373444 () Bool)

(assert (=> b!7373444 (= e!4414105 e!4414101)))

(assert (=> b!7373444 (= c!1370466 ((_ is Concat!28136) r1!2370))))

(declare-fun b!7373445 () Bool)

(assert (=> b!7373445 (= e!4414103 ((as const (Array Context!16462 Bool)) false))))

(assert (= (and d!2284158 c!1370467) b!7373438))

(assert (= (and d!2284158 (not c!1370467)) b!7373436))

(assert (= (and b!7373436 c!1370470) b!7373439))

(assert (= (and b!7373436 (not c!1370470)) b!7373442))

(assert (= (and b!7373442 res!2974904) b!7373437))

(assert (= (and b!7373442 c!1370469) b!7373443))

(assert (= (and b!7373442 (not c!1370469)) b!7373444))

(assert (= (and b!7373444 c!1370466) b!7373441))

(assert (= (and b!7373444 (not c!1370466)) b!7373435))

(assert (= (and b!7373435 c!1370468) b!7373440))

(assert (= (and b!7373435 (not c!1370468)) b!7373445))

(assert (= (or b!7373441 b!7373440) bm!677545))

(assert (= (or b!7373441 b!7373440) bm!677546))

(assert (= (or b!7373443 bm!677546) bm!677544))

(assert (= (or b!7373443 bm!677545) bm!677548))

(assert (= (or b!7373439 bm!677544) bm!677549))

(assert (= (or b!7373439 b!7373443) bm!677547))

(declare-fun m!8026490 () Bool)

(assert (=> bm!677549 m!8026490))

(declare-fun m!8026492 () Bool)

(assert (=> b!7373438 m!8026492))

(assert (=> b!7373437 m!8026438))

(declare-fun m!8026494 () Bool)

(assert (=> bm!677547 m!8026494))

(declare-fun m!8026496 () Bool)

(assert (=> bm!677548 m!8026496))

(assert (=> b!7373324 d!2284158))

(declare-fun bm!677550 () Bool)

(declare-fun call!677559 () (InoxSet Context!16462))

(declare-fun call!677560 () (InoxSet Context!16462))

(assert (=> bm!677550 (= call!677559 call!677560)))

(declare-fun d!2284168 () Bool)

(declare-fun c!1370472 () Bool)

(assert (=> d!2284168 (= c!1370472 (and ((_ is ElementMatch!19291) r1!2370) (= (c!1370431 r1!2370) c!10362)))))

(declare-fun e!4414108 () (InoxSet Context!16462))

(assert (=> d!2284168 (= (derivationStepZipperDown!3117 r1!2370 (Context!16463 (++!17107 (exprs!8731 ct1!282) (exprs!8731 ct2!378))) c!10362) e!4414108)))

(declare-fun bm!677551 () Bool)

(declare-fun call!677556 () List!71787)

(declare-fun call!677558 () List!71787)

(assert (=> bm!677551 (= call!677556 call!677558)))

(declare-fun b!7373446 () Bool)

(declare-fun c!1370473 () Bool)

(assert (=> b!7373446 (= c!1370473 ((_ is Star!19291) r1!2370))))

(declare-fun e!4414107 () (InoxSet Context!16462))

(declare-fun e!4414109 () (InoxSet Context!16462))

(assert (=> b!7373446 (= e!4414107 e!4414109)))

(declare-fun bm!677552 () Bool)

(declare-fun call!677557 () (InoxSet Context!16462))

(assert (=> bm!677552 (= call!677557 call!677559)))

(declare-fun b!7373447 () Bool)

(declare-fun e!4414110 () (InoxSet Context!16462))

(assert (=> b!7373447 (= e!4414108 e!4414110)))

(declare-fun c!1370475 () Bool)

(assert (=> b!7373447 (= c!1370475 ((_ is Union!19291) r1!2370))))

(declare-fun b!7373448 () Bool)

(declare-fun e!4414106 () Bool)

(assert (=> b!7373448 (= e!4414106 (nullable!8367 (regOne!39094 r1!2370)))))

(declare-fun b!7373449 () Bool)

(assert (=> b!7373449 (= e!4414108 (store ((as const (Array Context!16462 Bool)) false) (Context!16463 (++!17107 (exprs!8731 ct1!282) (exprs!8731 ct2!378))) true))))

(declare-fun call!677555 () (InoxSet Context!16462))

(declare-fun bm!677553 () Bool)

(assert (=> bm!677553 (= call!677555 (derivationStepZipperDown!3117 (ite c!1370475 (regOne!39095 r1!2370) (regOne!39094 r1!2370)) (ite c!1370475 (Context!16463 (++!17107 (exprs!8731 ct1!282) (exprs!8731 ct2!378))) (Context!16463 call!677558)) c!10362))))

(declare-fun bm!677554 () Bool)

(declare-fun c!1370471 () Bool)

(declare-fun c!1370474 () Bool)

(assert (=> bm!677554 (= call!677558 ($colon$colon!3272 (exprs!8731 (Context!16463 (++!17107 (exprs!8731 ct1!282) (exprs!8731 ct2!378)))) (ite (or c!1370474 c!1370471) (regTwo!39094 r1!2370) r1!2370)))))

(declare-fun bm!677555 () Bool)

(assert (=> bm!677555 (= call!677560 (derivationStepZipperDown!3117 (ite c!1370475 (regTwo!39095 r1!2370) (ite c!1370474 (regTwo!39094 r1!2370) (ite c!1370471 (regOne!39094 r1!2370) (reg!19620 r1!2370)))) (ite (or c!1370475 c!1370474) (Context!16463 (++!17107 (exprs!8731 ct1!282) (exprs!8731 ct2!378))) (Context!16463 call!677556)) c!10362))))

(declare-fun b!7373450 () Bool)

(assert (=> b!7373450 (= e!4414110 ((_ map or) call!677555 call!677560))))

(declare-fun b!7373451 () Bool)

(assert (=> b!7373451 (= e!4414109 call!677557)))

(declare-fun b!7373452 () Bool)

(assert (=> b!7373452 (= e!4414107 call!677557)))

(declare-fun b!7373453 () Bool)

(assert (=> b!7373453 (= c!1370474 e!4414106)))

(declare-fun res!2974905 () Bool)

(assert (=> b!7373453 (=> (not res!2974905) (not e!4414106))))

(assert (=> b!7373453 (= res!2974905 ((_ is Concat!28136) r1!2370))))

(declare-fun e!4414111 () (InoxSet Context!16462))

(assert (=> b!7373453 (= e!4414110 e!4414111)))

(declare-fun b!7373454 () Bool)

(assert (=> b!7373454 (= e!4414111 ((_ map or) call!677555 call!677559))))

(declare-fun b!7373455 () Bool)

(assert (=> b!7373455 (= e!4414111 e!4414107)))

(assert (=> b!7373455 (= c!1370471 ((_ is Concat!28136) r1!2370))))

(declare-fun b!7373456 () Bool)

(assert (=> b!7373456 (= e!4414109 ((as const (Array Context!16462 Bool)) false))))

(assert (= (and d!2284168 c!1370472) b!7373449))

(assert (= (and d!2284168 (not c!1370472)) b!7373447))

(assert (= (and b!7373447 c!1370475) b!7373450))

(assert (= (and b!7373447 (not c!1370475)) b!7373453))

(assert (= (and b!7373453 res!2974905) b!7373448))

(assert (= (and b!7373453 c!1370474) b!7373454))

(assert (= (and b!7373453 (not c!1370474)) b!7373455))

(assert (= (and b!7373455 c!1370471) b!7373452))

(assert (= (and b!7373455 (not c!1370471)) b!7373446))

(assert (= (and b!7373446 c!1370473) b!7373451))

(assert (= (and b!7373446 (not c!1370473)) b!7373456))

(assert (= (or b!7373452 b!7373451) bm!677551))

(assert (= (or b!7373452 b!7373451) bm!677552))

(assert (= (or b!7373454 bm!677552) bm!677550))

(assert (= (or b!7373454 bm!677551) bm!677554))

(assert (= (or b!7373450 bm!677550) bm!677555))

(assert (= (or b!7373450 b!7373454) bm!677553))

(declare-fun m!8026498 () Bool)

(assert (=> bm!677555 m!8026498))

(declare-fun m!8026500 () Bool)

(assert (=> b!7373449 m!8026500))

(assert (=> b!7373448 m!8026438))

(declare-fun m!8026502 () Bool)

(assert (=> bm!677553 m!8026502))

(declare-fun m!8026504 () Bool)

(assert (=> bm!677554 m!8026504))

(assert (=> b!7373326 d!2284168))

(declare-fun b!7373478 () Bool)

(declare-fun res!2974912 () Bool)

(declare-fun e!4414122 () Bool)

(assert (=> b!7373478 (=> (not res!2974912) (not e!4414122))))

(declare-fun lt!2616074 () List!71787)

(declare-fun size!42142 (List!71787) Int)

(assert (=> b!7373478 (= res!2974912 (= (size!42142 lt!2616074) (+ (size!42142 (exprs!8731 ct1!282)) (size!42142 (exprs!8731 ct2!378)))))))

(declare-fun d!2284170 () Bool)

(assert (=> d!2284170 e!4414122))

(declare-fun res!2974911 () Bool)

(assert (=> d!2284170 (=> (not res!2974911) (not e!4414122))))

(declare-fun content!15165 (List!71787) (InoxSet Regex!19291))

(assert (=> d!2284170 (= res!2974911 (= (content!15165 lt!2616074) ((_ map or) (content!15165 (exprs!8731 ct1!282)) (content!15165 (exprs!8731 ct2!378)))))))

(declare-fun e!4414123 () List!71787)

(assert (=> d!2284170 (= lt!2616074 e!4414123)))

(declare-fun c!1370483 () Bool)

(assert (=> d!2284170 (= c!1370483 ((_ is Nil!71663) (exprs!8731 ct1!282)))))

(assert (=> d!2284170 (= (++!17107 (exprs!8731 ct1!282) (exprs!8731 ct2!378)) lt!2616074)))

(declare-fun b!7373477 () Bool)

(assert (=> b!7373477 (= e!4414123 (Cons!71663 (h!78111 (exprs!8731 ct1!282)) (++!17107 (t!386258 (exprs!8731 ct1!282)) (exprs!8731 ct2!378))))))

(declare-fun b!7373476 () Bool)

(assert (=> b!7373476 (= e!4414123 (exprs!8731 ct2!378))))

(declare-fun b!7373479 () Bool)

(assert (=> b!7373479 (= e!4414122 (or (not (= (exprs!8731 ct2!378) Nil!71663)) (= lt!2616074 (exprs!8731 ct1!282))))))

(assert (= (and d!2284170 c!1370483) b!7373476))

(assert (= (and d!2284170 (not c!1370483)) b!7373477))

(assert (= (and d!2284170 res!2974911) b!7373478))

(assert (= (and b!7373478 res!2974912) b!7373479))

(declare-fun m!8026514 () Bool)

(assert (=> b!7373478 m!8026514))

(declare-fun m!8026516 () Bool)

(assert (=> b!7373478 m!8026516))

(declare-fun m!8026518 () Bool)

(assert (=> b!7373478 m!8026518))

(declare-fun m!8026520 () Bool)

(assert (=> d!2284170 m!8026520))

(declare-fun m!8026522 () Bool)

(assert (=> d!2284170 m!8026522))

(declare-fun m!8026524 () Bool)

(assert (=> d!2284170 m!8026524))

(declare-fun m!8026526 () Bool)

(assert (=> b!7373477 m!8026526))

(assert (=> b!7373326 d!2284170))

(declare-fun d!2284174 () Bool)

(assert (=> d!2284174 (forall!18090 (++!17107 (exprs!8731 ct1!282) (exprs!8731 ct2!378)) lambda!458213)))

(declare-fun lt!2616080 () Unit!165531)

(declare-fun choose!57318 (List!71787 List!71787 Int) Unit!165531)

(assert (=> d!2284174 (= lt!2616080 (choose!57318 (exprs!8731 ct1!282) (exprs!8731 ct2!378) lambda!458213))))

(assert (=> d!2284174 (forall!18090 (exprs!8731 ct1!282) lambda!458213)))

(assert (=> d!2284174 (= (lemmaConcatPreservesForall!1964 (exprs!8731 ct1!282) (exprs!8731 ct2!378) lambda!458213) lt!2616080)))

(declare-fun bs!1921099 () Bool)

(assert (= bs!1921099 d!2284174))

(assert (=> bs!1921099 m!8026444))

(assert (=> bs!1921099 m!8026444))

(declare-fun m!8026542 () Bool)

(assert (=> bs!1921099 m!8026542))

(declare-fun m!8026544 () Bool)

(assert (=> bs!1921099 m!8026544))

(declare-fun m!8026546 () Bool)

(assert (=> bs!1921099 m!8026546))

(assert (=> b!7373326 d!2284174))

(declare-fun b!7373496 () Bool)

(declare-fun e!4414132 () Bool)

(declare-fun tp!2096232 () Bool)

(declare-fun tp!2096233 () Bool)

(assert (=> b!7373496 (= e!4414132 (and tp!2096232 tp!2096233))))

(assert (=> b!7373322 (= tp!2096223 e!4414132)))

(assert (= (and b!7373322 ((_ is Cons!71663) (exprs!8731 cWitness!61))) b!7373496))

(declare-fun b!7373509 () Bool)

(declare-fun e!4414135 () Bool)

(declare-fun tp!2096244 () Bool)

(assert (=> b!7373509 (= e!4414135 tp!2096244)))

(declare-fun b!7373508 () Bool)

(declare-fun tp!2096246 () Bool)

(declare-fun tp!2096247 () Bool)

(assert (=> b!7373508 (= e!4414135 (and tp!2096246 tp!2096247))))

(assert (=> b!7373327 (= tp!2096220 e!4414135)))

(declare-fun b!7373507 () Bool)

(assert (=> b!7373507 (= e!4414135 tp_is_empty!48827)))

(declare-fun b!7373510 () Bool)

(declare-fun tp!2096248 () Bool)

(declare-fun tp!2096245 () Bool)

(assert (=> b!7373510 (= e!4414135 (and tp!2096248 tp!2096245))))

(assert (= (and b!7373327 ((_ is ElementMatch!19291) (regOne!39095 r1!2370))) b!7373507))

(assert (= (and b!7373327 ((_ is Concat!28136) (regOne!39095 r1!2370))) b!7373508))

(assert (= (and b!7373327 ((_ is Star!19291) (regOne!39095 r1!2370))) b!7373509))

(assert (= (and b!7373327 ((_ is Union!19291) (regOne!39095 r1!2370))) b!7373510))

(declare-fun b!7373513 () Bool)

(declare-fun e!4414136 () Bool)

(declare-fun tp!2096249 () Bool)

(assert (=> b!7373513 (= e!4414136 tp!2096249)))

(declare-fun b!7373512 () Bool)

(declare-fun tp!2096251 () Bool)

(declare-fun tp!2096252 () Bool)

(assert (=> b!7373512 (= e!4414136 (and tp!2096251 tp!2096252))))

(assert (=> b!7373327 (= tp!2096225 e!4414136)))

(declare-fun b!7373511 () Bool)

(assert (=> b!7373511 (= e!4414136 tp_is_empty!48827)))

(declare-fun b!7373514 () Bool)

(declare-fun tp!2096253 () Bool)

(declare-fun tp!2096250 () Bool)

(assert (=> b!7373514 (= e!4414136 (and tp!2096253 tp!2096250))))

(assert (= (and b!7373327 ((_ is ElementMatch!19291) (regTwo!39095 r1!2370))) b!7373511))

(assert (= (and b!7373327 ((_ is Concat!28136) (regTwo!39095 r1!2370))) b!7373512))

(assert (= (and b!7373327 ((_ is Star!19291) (regTwo!39095 r1!2370))) b!7373513))

(assert (= (and b!7373327 ((_ is Union!19291) (regTwo!39095 r1!2370))) b!7373514))

(declare-fun b!7373515 () Bool)

(declare-fun e!4414137 () Bool)

(declare-fun tp!2096254 () Bool)

(declare-fun tp!2096255 () Bool)

(assert (=> b!7373515 (= e!4414137 (and tp!2096254 tp!2096255))))

(assert (=> b!7373316 (= tp!2096226 e!4414137)))

(assert (= (and b!7373316 ((_ is Cons!71663) (exprs!8731 ct1!282))) b!7373515))

(declare-fun b!7373516 () Bool)

(declare-fun e!4414138 () Bool)

(declare-fun tp!2096256 () Bool)

(declare-fun tp!2096257 () Bool)

(assert (=> b!7373516 (= e!4414138 (and tp!2096256 tp!2096257))))

(assert (=> b!7373319 (= tp!2096221 e!4414138)))

(assert (= (and b!7373319 ((_ is Cons!71663) (exprs!8731 ct2!378))) b!7373516))

(declare-fun b!7373519 () Bool)

(declare-fun e!4414139 () Bool)

(declare-fun tp!2096258 () Bool)

(assert (=> b!7373519 (= e!4414139 tp!2096258)))

(declare-fun b!7373518 () Bool)

(declare-fun tp!2096260 () Bool)

(declare-fun tp!2096261 () Bool)

(assert (=> b!7373518 (= e!4414139 (and tp!2096260 tp!2096261))))

(assert (=> b!7373315 (= tp!2096227 e!4414139)))

(declare-fun b!7373517 () Bool)

(assert (=> b!7373517 (= e!4414139 tp_is_empty!48827)))

(declare-fun b!7373520 () Bool)

(declare-fun tp!2096262 () Bool)

(declare-fun tp!2096259 () Bool)

(assert (=> b!7373520 (= e!4414139 (and tp!2096262 tp!2096259))))

(assert (= (and b!7373315 ((_ is ElementMatch!19291) (regOne!39094 r1!2370))) b!7373517))

(assert (= (and b!7373315 ((_ is Concat!28136) (regOne!39094 r1!2370))) b!7373518))

(assert (= (and b!7373315 ((_ is Star!19291) (regOne!39094 r1!2370))) b!7373519))

(assert (= (and b!7373315 ((_ is Union!19291) (regOne!39094 r1!2370))) b!7373520))

(declare-fun b!7373523 () Bool)

(declare-fun e!4414140 () Bool)

(declare-fun tp!2096263 () Bool)

(assert (=> b!7373523 (= e!4414140 tp!2096263)))

(declare-fun b!7373522 () Bool)

(declare-fun tp!2096265 () Bool)

(declare-fun tp!2096266 () Bool)

(assert (=> b!7373522 (= e!4414140 (and tp!2096265 tp!2096266))))

(assert (=> b!7373315 (= tp!2096224 e!4414140)))

(declare-fun b!7373521 () Bool)

(assert (=> b!7373521 (= e!4414140 tp_is_empty!48827)))

(declare-fun b!7373524 () Bool)

(declare-fun tp!2096267 () Bool)

(declare-fun tp!2096264 () Bool)

(assert (=> b!7373524 (= e!4414140 (and tp!2096267 tp!2096264))))

(assert (= (and b!7373315 ((_ is ElementMatch!19291) (regTwo!39094 r1!2370))) b!7373521))

(assert (= (and b!7373315 ((_ is Concat!28136) (regTwo!39094 r1!2370))) b!7373522))

(assert (= (and b!7373315 ((_ is Star!19291) (regTwo!39094 r1!2370))) b!7373523))

(assert (= (and b!7373315 ((_ is Union!19291) (regTwo!39094 r1!2370))) b!7373524))

(declare-fun b!7373538 () Bool)

(declare-fun e!4414147 () Bool)

(declare-fun tp!2096268 () Bool)

(assert (=> b!7373538 (= e!4414147 tp!2096268)))

(declare-fun b!7373537 () Bool)

(declare-fun tp!2096270 () Bool)

(declare-fun tp!2096271 () Bool)

(assert (=> b!7373537 (= e!4414147 (and tp!2096270 tp!2096271))))

(assert (=> b!7373320 (= tp!2096222 e!4414147)))

(declare-fun b!7373536 () Bool)

(assert (=> b!7373536 (= e!4414147 tp_is_empty!48827)))

(declare-fun b!7373539 () Bool)

(declare-fun tp!2096272 () Bool)

(declare-fun tp!2096269 () Bool)

(assert (=> b!7373539 (= e!4414147 (and tp!2096272 tp!2096269))))

(assert (= (and b!7373320 ((_ is ElementMatch!19291) (reg!19620 r1!2370))) b!7373536))

(assert (= (and b!7373320 ((_ is Concat!28136) (reg!19620 r1!2370))) b!7373537))

(assert (= (and b!7373320 ((_ is Star!19291) (reg!19620 r1!2370))) b!7373538))

(assert (= (and b!7373320 ((_ is Union!19291) (reg!19620 r1!2370))) b!7373539))

(check-sat (not bm!677506) (not bm!677555) (not bm!677547) (not b!7373523) (not b!7373519) tp_is_empty!48827 (not b!7373508) (not bm!677548) (not b!7373522) (not d!2284174) (not b!7373477) (not b!7373516) (not b!7373510) (not d!2284170) (not d!2284156) (not b!7373448) (not bm!677505) (not b!7373518) (not b!7373537) (not d!2284150) (not bm!677553) (not b!7373437) (not d!2284152) (not b!7373374) (not bm!677554) (not bm!677515) (not b!7373513) (not b!7373478) (not b!7373347) (not b!7373515) (not bm!677549) (not b!7373539) (not b!7373538) (not b!7373496) (not b!7373509) (not bm!677514) (not d!2284148) (not b!7373514) (not b!7373524) (not b!7373512) (not b!7373520))
(check-sat)
