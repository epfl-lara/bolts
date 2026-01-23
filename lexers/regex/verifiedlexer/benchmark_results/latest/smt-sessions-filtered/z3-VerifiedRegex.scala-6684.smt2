; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350714 () Bool)

(assert start!350714)

(declare-fun b!3725098 () Bool)

(declare-fun res!1513443 () Bool)

(declare-fun e!2305463 () Bool)

(assert (=> b!3725098 (=> (not res!1513443) (not e!2305463))))

(declare-datatypes ((C!22000 0))(
  ( (C!22001 (val!13048 Int)) )
))
(declare-datatypes ((Regex!10907 0))(
  ( (ElementMatch!10907 (c!644419 C!22000)) (Concat!17178 (regOne!22326 Regex!10907) (regTwo!22326 Regex!10907)) (EmptyExpr!10907) (Star!10907 (reg!11236 Regex!10907)) (EmptyLang!10907) (Union!10907 (regOne!22327 Regex!10907) (regTwo!22327 Regex!10907)) )
))
(declare-fun r!26968 () Regex!10907)

(get-info :version)

(assert (=> b!3725098 (= res!1513443 (and (not ((_ is EmptyExpr!10907) r!26968)) (not ((_ is EmptyLang!10907) r!26968)) (not ((_ is ElementMatch!10907) r!26968)) ((_ is Union!10907) r!26968)))))

(declare-fun b!3725099 () Bool)

(declare-fun RegexPrimitiveSize!139 (Regex!10907) Int)

(assert (=> b!3725099 (= e!2305463 (>= (RegexPrimitiveSize!139 (regOne!22327 r!26968)) (RegexPrimitiveSize!139 r!26968)))))

(declare-fun res!1513442 () Bool)

(assert (=> start!350714 (=> (not res!1513442) (not e!2305463))))

(declare-fun validRegex!5014 (Regex!10907) Bool)

(assert (=> start!350714 (= res!1513442 (validRegex!5014 r!26968))))

(assert (=> start!350714 e!2305463))

(declare-fun e!2305464 () Bool)

(assert (=> start!350714 e!2305464))

(declare-fun tp_is_empty!18829 () Bool)

(assert (=> start!350714 tp_is_empty!18829))

(declare-fun b!3725100 () Bool)

(declare-fun tp!1133230 () Bool)

(assert (=> b!3725100 (= e!2305464 tp!1133230)))

(declare-fun b!3725101 () Bool)

(declare-fun res!1513445 () Bool)

(assert (=> b!3725101 (=> (not res!1513445) (not e!2305463))))

(assert (=> b!3725101 (= res!1513445 (validRegex!5014 (regOne!22327 r!26968)))))

(declare-fun b!3725102 () Bool)

(declare-fun res!1513446 () Bool)

(assert (=> b!3725102 (=> (not res!1513446) (not e!2305463))))

(declare-fun cNot!42 () C!22000)

(declare-datatypes ((List!39788 0))(
  ( (Nil!39664) (Cons!39664 (h!45084 C!22000) (t!302471 List!39788)) )
))
(declare-fun contains!8000 (List!39788 C!22000) Bool)

(declare-fun usedCharacters!1170 (Regex!10907) List!39788)

(assert (=> b!3725102 (= res!1513446 (not (contains!8000 (usedCharacters!1170 (regOne!22327 r!26968)) cNot!42)))))

(declare-fun b!3725103 () Bool)

(declare-fun tp!1133232 () Bool)

(declare-fun tp!1133231 () Bool)

(assert (=> b!3725103 (= e!2305464 (and tp!1133232 tp!1133231))))

(declare-fun b!3725104 () Bool)

(declare-fun res!1513444 () Bool)

(assert (=> b!3725104 (=> (not res!1513444) (not e!2305463))))

(assert (=> b!3725104 (= res!1513444 (not (contains!8000 (usedCharacters!1170 r!26968) cNot!42)))))

(declare-fun b!3725105 () Bool)

(assert (=> b!3725105 (= e!2305464 tp_is_empty!18829)))

(declare-fun b!3725106 () Bool)

(declare-fun tp!1133234 () Bool)

(declare-fun tp!1133233 () Bool)

(assert (=> b!3725106 (= e!2305464 (and tp!1133234 tp!1133233))))

(assert (= (and start!350714 res!1513442) b!3725104))

(assert (= (and b!3725104 res!1513444) b!3725098))

(assert (= (and b!3725098 res!1513443) b!3725101))

(assert (= (and b!3725101 res!1513445) b!3725102))

(assert (= (and b!3725102 res!1513446) b!3725099))

(assert (= (and start!350714 ((_ is ElementMatch!10907) r!26968)) b!3725105))

(assert (= (and start!350714 ((_ is Concat!17178) r!26968)) b!3725103))

(assert (= (and start!350714 ((_ is Star!10907) r!26968)) b!3725100))

(assert (= (and start!350714 ((_ is Union!10907) r!26968)) b!3725106))

(declare-fun m!4227353 () Bool)

(assert (=> b!3725101 m!4227353))

(declare-fun m!4227355 () Bool)

(assert (=> start!350714 m!4227355))

(declare-fun m!4227357 () Bool)

(assert (=> b!3725104 m!4227357))

(assert (=> b!3725104 m!4227357))

(declare-fun m!4227359 () Bool)

(assert (=> b!3725104 m!4227359))

(declare-fun m!4227361 () Bool)

(assert (=> b!3725102 m!4227361))

(assert (=> b!3725102 m!4227361))

(declare-fun m!4227363 () Bool)

(assert (=> b!3725102 m!4227363))

(declare-fun m!4227365 () Bool)

(assert (=> b!3725099 m!4227365))

(declare-fun m!4227367 () Bool)

(assert (=> b!3725099 m!4227367))

(check-sat (not start!350714) (not b!3725103) (not b!3725104) (not b!3725101) (not b!3725102) tp_is_empty!18829 (not b!3725100) (not b!3725099) (not b!3725106))
(check-sat)
(get-model)

(declare-fun b!3725147 () Bool)

(declare-fun e!2305497 () Bool)

(declare-fun e!2305494 () Bool)

(assert (=> b!3725147 (= e!2305497 e!2305494)))

(declare-fun res!1513466 () Bool)

(declare-fun nullable!3814 (Regex!10907) Bool)

(assert (=> b!3725147 (= res!1513466 (not (nullable!3814 (reg!11236 (regOne!22327 r!26968)))))))

(assert (=> b!3725147 (=> (not res!1513466) (not e!2305494))))

(declare-fun d!1089751 () Bool)

(declare-fun res!1513465 () Bool)

(declare-fun e!2305496 () Bool)

(assert (=> d!1089751 (=> res!1513465 e!2305496)))

(assert (=> d!1089751 (= res!1513465 ((_ is ElementMatch!10907) (regOne!22327 r!26968)))))

(assert (=> d!1089751 (= (validRegex!5014 (regOne!22327 r!26968)) e!2305496)))

(declare-fun b!3725148 () Bool)

(declare-fun e!2305499 () Bool)

(assert (=> b!3725148 (= e!2305497 e!2305499)))

(declare-fun c!644432 () Bool)

(assert (=> b!3725148 (= c!644432 ((_ is Union!10907) (regOne!22327 r!26968)))))

(declare-fun bm!271200 () Bool)

(declare-fun call!271206 () Bool)

(declare-fun call!271207 () Bool)

(assert (=> bm!271200 (= call!271206 call!271207)))

(declare-fun b!3725149 () Bool)

(declare-fun e!2305493 () Bool)

(assert (=> b!3725149 (= e!2305493 call!271206)))

(declare-fun b!3725150 () Bool)

(declare-fun res!1513464 () Bool)

(assert (=> b!3725150 (=> (not res!1513464) (not e!2305493))))

(declare-fun call!271205 () Bool)

(assert (=> b!3725150 (= res!1513464 call!271205)))

(assert (=> b!3725150 (= e!2305499 e!2305493)))

(declare-fun c!644433 () Bool)

(declare-fun bm!271201 () Bool)

(assert (=> bm!271201 (= call!271207 (validRegex!5014 (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))))))

(declare-fun b!3725151 () Bool)

(declare-fun e!2305498 () Bool)

(declare-fun e!2305495 () Bool)

(assert (=> b!3725151 (= e!2305498 e!2305495)))

(declare-fun res!1513467 () Bool)

(assert (=> b!3725151 (=> (not res!1513467) (not e!2305495))))

(assert (=> b!3725151 (= res!1513467 call!271205)))

(declare-fun bm!271202 () Bool)

(assert (=> bm!271202 (= call!271205 (validRegex!5014 (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))))))

(declare-fun b!3725152 () Bool)

(assert (=> b!3725152 (= e!2305495 call!271206)))

(declare-fun b!3725153 () Bool)

(assert (=> b!3725153 (= e!2305494 call!271207)))

(declare-fun b!3725154 () Bool)

(assert (=> b!3725154 (= e!2305496 e!2305497)))

(assert (=> b!3725154 (= c!644433 ((_ is Star!10907) (regOne!22327 r!26968)))))

(declare-fun b!3725155 () Bool)

(declare-fun res!1513463 () Bool)

(assert (=> b!3725155 (=> res!1513463 e!2305498)))

(assert (=> b!3725155 (= res!1513463 (not ((_ is Concat!17178) (regOne!22327 r!26968))))))

(assert (=> b!3725155 (= e!2305499 e!2305498)))

(assert (= (and d!1089751 (not res!1513465)) b!3725154))

(assert (= (and b!3725154 c!644433) b!3725147))

(assert (= (and b!3725154 (not c!644433)) b!3725148))

(assert (= (and b!3725147 res!1513466) b!3725153))

(assert (= (and b!3725148 c!644432) b!3725150))

(assert (= (and b!3725148 (not c!644432)) b!3725155))

(assert (= (and b!3725150 res!1513464) b!3725149))

(assert (= (and b!3725155 (not res!1513463)) b!3725151))

(assert (= (and b!3725151 res!1513467) b!3725152))

(assert (= (or b!3725149 b!3725152) bm!271200))

(assert (= (or b!3725150 b!3725151) bm!271202))

(assert (= (or b!3725153 bm!271200) bm!271201))

(declare-fun m!4227375 () Bool)

(assert (=> b!3725147 m!4227375))

(declare-fun m!4227377 () Bool)

(assert (=> bm!271201 m!4227377))

(declare-fun m!4227379 () Bool)

(assert (=> bm!271202 m!4227379))

(assert (=> b!3725101 d!1089751))

(declare-fun b!3725156 () Bool)

(declare-fun e!2305504 () Bool)

(declare-fun e!2305501 () Bool)

(assert (=> b!3725156 (= e!2305504 e!2305501)))

(declare-fun res!1513471 () Bool)

(assert (=> b!3725156 (= res!1513471 (not (nullable!3814 (reg!11236 r!26968))))))

(assert (=> b!3725156 (=> (not res!1513471) (not e!2305501))))

(declare-fun d!1089757 () Bool)

(declare-fun res!1513470 () Bool)

(declare-fun e!2305503 () Bool)

(assert (=> d!1089757 (=> res!1513470 e!2305503)))

(assert (=> d!1089757 (= res!1513470 ((_ is ElementMatch!10907) r!26968))))

(assert (=> d!1089757 (= (validRegex!5014 r!26968) e!2305503)))

(declare-fun b!3725157 () Bool)

(declare-fun e!2305506 () Bool)

(assert (=> b!3725157 (= e!2305504 e!2305506)))

(declare-fun c!644434 () Bool)

(assert (=> b!3725157 (= c!644434 ((_ is Union!10907) r!26968))))

(declare-fun bm!271209 () Bool)

(declare-fun call!271215 () Bool)

(declare-fun call!271216 () Bool)

(assert (=> bm!271209 (= call!271215 call!271216)))

(declare-fun b!3725158 () Bool)

(declare-fun e!2305500 () Bool)

(assert (=> b!3725158 (= e!2305500 call!271215)))

(declare-fun b!3725159 () Bool)

(declare-fun res!1513469 () Bool)

(assert (=> b!3725159 (=> (not res!1513469) (not e!2305500))))

(declare-fun call!271214 () Bool)

(assert (=> b!3725159 (= res!1513469 call!271214)))

(assert (=> b!3725159 (= e!2305506 e!2305500)))

(declare-fun c!644435 () Bool)

(declare-fun bm!271210 () Bool)

(assert (=> bm!271210 (= call!271216 (validRegex!5014 (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))))))

(declare-fun b!3725160 () Bool)

(declare-fun e!2305505 () Bool)

(declare-fun e!2305502 () Bool)

(assert (=> b!3725160 (= e!2305505 e!2305502)))

(declare-fun res!1513472 () Bool)

(assert (=> b!3725160 (=> (not res!1513472) (not e!2305502))))

(assert (=> b!3725160 (= res!1513472 call!271214)))

(declare-fun bm!271211 () Bool)

(assert (=> bm!271211 (= call!271214 (validRegex!5014 (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))))))

(declare-fun b!3725161 () Bool)

(assert (=> b!3725161 (= e!2305502 call!271215)))

(declare-fun b!3725162 () Bool)

(assert (=> b!3725162 (= e!2305501 call!271216)))

(declare-fun b!3725163 () Bool)

(assert (=> b!3725163 (= e!2305503 e!2305504)))

(assert (=> b!3725163 (= c!644435 ((_ is Star!10907) r!26968))))

(declare-fun b!3725164 () Bool)

(declare-fun res!1513468 () Bool)

(assert (=> b!3725164 (=> res!1513468 e!2305505)))

(assert (=> b!3725164 (= res!1513468 (not ((_ is Concat!17178) r!26968)))))

(assert (=> b!3725164 (= e!2305506 e!2305505)))

(assert (= (and d!1089757 (not res!1513470)) b!3725163))

(assert (= (and b!3725163 c!644435) b!3725156))

(assert (= (and b!3725163 (not c!644435)) b!3725157))

(assert (= (and b!3725156 res!1513471) b!3725162))

(assert (= (and b!3725157 c!644434) b!3725159))

(assert (= (and b!3725157 (not c!644434)) b!3725164))

(assert (= (and b!3725159 res!1513469) b!3725158))

(assert (= (and b!3725164 (not res!1513468)) b!3725160))

(assert (= (and b!3725160 res!1513472) b!3725161))

(assert (= (or b!3725158 b!3725161) bm!271209))

(assert (= (or b!3725159 b!3725160) bm!271211))

(assert (= (or b!3725162 bm!271209) bm!271210))

(declare-fun m!4227381 () Bool)

(assert (=> b!3725156 m!4227381))

(declare-fun m!4227383 () Bool)

(assert (=> bm!271210 m!4227383))

(declare-fun m!4227385 () Bool)

(assert (=> bm!271211 m!4227385))

(assert (=> start!350714 d!1089757))

(declare-fun d!1089759 () Bool)

(declare-fun lt!1298324 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5764 (List!39788) (InoxSet C!22000))

(assert (=> d!1089759 (= lt!1298324 (select (content!5764 (usedCharacters!1170 r!26968)) cNot!42))))

(declare-fun e!2305511 () Bool)

(assert (=> d!1089759 (= lt!1298324 e!2305511)))

(declare-fun res!1513477 () Bool)

(assert (=> d!1089759 (=> (not res!1513477) (not e!2305511))))

(assert (=> d!1089759 (= res!1513477 ((_ is Cons!39664) (usedCharacters!1170 r!26968)))))

(assert (=> d!1089759 (= (contains!8000 (usedCharacters!1170 r!26968) cNot!42) lt!1298324)))

(declare-fun b!3725169 () Bool)

(declare-fun e!2305512 () Bool)

(assert (=> b!3725169 (= e!2305511 e!2305512)))

(declare-fun res!1513478 () Bool)

(assert (=> b!3725169 (=> res!1513478 e!2305512)))

(assert (=> b!3725169 (= res!1513478 (= (h!45084 (usedCharacters!1170 r!26968)) cNot!42))))

(declare-fun b!3725170 () Bool)

(assert (=> b!3725170 (= e!2305512 (contains!8000 (t!302471 (usedCharacters!1170 r!26968)) cNot!42))))

(assert (= (and d!1089759 res!1513477) b!3725169))

(assert (= (and b!3725169 (not res!1513478)) b!3725170))

(assert (=> d!1089759 m!4227357))

(declare-fun m!4227387 () Bool)

(assert (=> d!1089759 m!4227387))

(declare-fun m!4227389 () Bool)

(assert (=> d!1089759 m!4227389))

(declare-fun m!4227391 () Bool)

(assert (=> b!3725170 m!4227391))

(assert (=> b!3725104 d!1089759))

(declare-fun c!644459 () Bool)

(declare-fun call!271239 () List!39788)

(declare-fun bm!271232 () Bool)

(declare-fun c!644458 () Bool)

(assert (=> bm!271232 (= call!271239 (usedCharacters!1170 (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))))))

(declare-fun b!3725215 () Bool)

(declare-fun e!2305536 () List!39788)

(declare-fun call!271238 () List!39788)

(assert (=> b!3725215 (= e!2305536 call!271238)))

(declare-fun b!3725216 () Bool)

(assert (=> b!3725216 (= c!644458 ((_ is Star!10907) r!26968))))

(declare-fun e!2305538 () List!39788)

(declare-fun e!2305537 () List!39788)

(assert (=> b!3725216 (= e!2305538 e!2305537)))

(declare-fun b!3725217 () Bool)

(assert (=> b!3725217 (= e!2305537 e!2305536)))

(assert (=> b!3725217 (= c!644459 ((_ is Union!10907) r!26968))))

(declare-fun b!3725218 () Bool)

(assert (=> b!3725218 (= e!2305537 call!271239)))

(declare-fun bm!271233 () Bool)

(declare-fun call!271240 () List!39788)

(assert (=> bm!271233 (= call!271240 (usedCharacters!1170 (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))))))

(declare-fun b!3725220 () Bool)

(declare-fun e!2305535 () List!39788)

(assert (=> b!3725220 (= e!2305535 e!2305538)))

(declare-fun c!644461 () Bool)

(assert (=> b!3725220 (= c!644461 ((_ is ElementMatch!10907) r!26968))))

(declare-fun b!3725221 () Bool)

(assert (=> b!3725221 (= e!2305535 Nil!39664)))

(declare-fun b!3725222 () Bool)

(assert (=> b!3725222 (= e!2305538 (Cons!39664 (c!644419 r!26968) Nil!39664))))

(declare-fun call!271237 () List!39788)

(declare-fun bm!271234 () Bool)

(declare-fun ++!9831 (List!39788 List!39788) List!39788)

(assert (=> bm!271234 (= call!271238 (++!9831 (ite c!644459 call!271240 call!271237) (ite c!644459 call!271237 call!271240)))))

(declare-fun bm!271235 () Bool)

(assert (=> bm!271235 (= call!271237 call!271239)))

(declare-fun b!3725219 () Bool)

(assert (=> b!3725219 (= e!2305536 call!271238)))

(declare-fun d!1089761 () Bool)

(declare-fun c!644460 () Bool)

(assert (=> d!1089761 (= c!644460 (or ((_ is EmptyExpr!10907) r!26968) ((_ is EmptyLang!10907) r!26968)))))

(assert (=> d!1089761 (= (usedCharacters!1170 r!26968) e!2305535)))

(assert (= (and d!1089761 c!644460) b!3725221))

(assert (= (and d!1089761 (not c!644460)) b!3725220))

(assert (= (and b!3725220 c!644461) b!3725222))

(assert (= (and b!3725220 (not c!644461)) b!3725216))

(assert (= (and b!3725216 c!644458) b!3725218))

(assert (= (and b!3725216 (not c!644458)) b!3725217))

(assert (= (and b!3725217 c!644459) b!3725219))

(assert (= (and b!3725217 (not c!644459)) b!3725215))

(assert (= (or b!3725219 b!3725215) bm!271233))

(assert (= (or b!3725219 b!3725215) bm!271235))

(assert (= (or b!3725219 b!3725215) bm!271234))

(assert (= (or b!3725218 bm!271235) bm!271232))

(declare-fun m!4227399 () Bool)

(assert (=> bm!271232 m!4227399))

(declare-fun m!4227401 () Bool)

(assert (=> bm!271233 m!4227401))

(declare-fun m!4227403 () Bool)

(assert (=> bm!271234 m!4227403))

(assert (=> b!3725104 d!1089761))

(declare-fun b!3725291 () Bool)

(declare-fun e!2305583 () Int)

(assert (=> b!3725291 (= e!2305583 1)))

(declare-fun b!3725292 () Bool)

(declare-fun e!2305580 () Int)

(declare-fun call!271264 () Int)

(declare-fun call!271263 () Int)

(assert (=> b!3725292 (= e!2305580 (+ 1 call!271264 call!271263))))

(declare-fun b!3725293 () Bool)

(declare-fun e!2305579 () Int)

(declare-fun e!2305582 () Int)

(assert (=> b!3725293 (= e!2305579 e!2305582)))

(declare-fun c!644494 () Bool)

(assert (=> b!3725293 (= c!644494 ((_ is Star!10907) (regOne!22327 r!26968)))))

(declare-fun bm!271258 () Bool)

(declare-fun c!644491 () Bool)

(assert (=> bm!271258 (= call!271264 (RegexPrimitiveSize!139 (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))))))

(declare-fun b!3725294 () Bool)

(declare-fun e!2305581 () Int)

(assert (=> b!3725294 (= e!2305581 0)))

(declare-fun d!1089765 () Bool)

(declare-fun lt!1298332 () Int)

(assert (=> d!1089765 (>= lt!1298332 0)))

(assert (=> d!1089765 (= lt!1298332 e!2305583)))

(declare-fun c!644492 () Bool)

(assert (=> d!1089765 (= c!644492 ((_ is ElementMatch!10907) (regOne!22327 r!26968)))))

(assert (=> d!1089765 (= (RegexPrimitiveSize!139 (regOne!22327 r!26968)) lt!1298332)))

(declare-fun bm!271259 () Bool)

(assert (=> bm!271259 (= call!271263 (RegexPrimitiveSize!139 (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))))))

(declare-fun b!3725295 () Bool)

(declare-fun c!644493 () Bool)

(assert (=> b!3725295 (= c!644493 ((_ is EmptyLang!10907) (regOne!22327 r!26968)))))

(assert (=> b!3725295 (= e!2305582 e!2305581)))

(declare-fun b!3725296 () Bool)

(declare-fun call!271265 () Int)

(assert (=> b!3725296 (= e!2305582 (+ 1 call!271265))))

(declare-fun b!3725297 () Bool)

(assert (=> b!3725297 (= e!2305581 (+ 1 call!271265 call!271264))))

(declare-fun bm!271260 () Bool)

(assert (=> bm!271260 (= call!271265 call!271263)))

(declare-fun b!3725298 () Bool)

(declare-fun c!644490 () Bool)

(assert (=> b!3725298 (= c!644490 ((_ is EmptyExpr!10907) (regOne!22327 r!26968)))))

(assert (=> b!3725298 (= e!2305580 e!2305579)))

(declare-fun b!3725299 () Bool)

(assert (=> b!3725299 (= e!2305583 e!2305580)))

(assert (=> b!3725299 (= c!644491 ((_ is Concat!17178) (regOne!22327 r!26968)))))

(declare-fun b!3725300 () Bool)

(assert (=> b!3725300 (= e!2305579 0)))

(assert (= (and d!1089765 c!644492) b!3725291))

(assert (= (and d!1089765 (not c!644492)) b!3725299))

(assert (= (and b!3725299 c!644491) b!3725292))

(assert (= (and b!3725299 (not c!644491)) b!3725298))

(assert (= (and b!3725298 c!644490) b!3725300))

(assert (= (and b!3725298 (not c!644490)) b!3725293))

(assert (= (and b!3725293 c!644494) b!3725296))

(assert (= (and b!3725293 (not c!644494)) b!3725295))

(assert (= (and b!3725295 c!644493) b!3725294))

(assert (= (and b!3725295 (not c!644493)) b!3725297))

(assert (= (or b!3725296 b!3725297) bm!271260))

(assert (= (or b!3725292 b!3725297) bm!271258))

(assert (= (or b!3725292 bm!271260) bm!271259))

(declare-fun m!4227425 () Bool)

(assert (=> bm!271258 m!4227425))

(declare-fun m!4227427 () Bool)

(assert (=> bm!271259 m!4227427))

(assert (=> b!3725099 d!1089765))

(declare-fun b!3725301 () Bool)

(declare-fun e!2305588 () Int)

(assert (=> b!3725301 (= e!2305588 1)))

(declare-fun b!3725302 () Bool)

(declare-fun e!2305585 () Int)

(declare-fun call!271267 () Int)

(declare-fun call!271266 () Int)

(assert (=> b!3725302 (= e!2305585 (+ 1 call!271267 call!271266))))

(declare-fun b!3725303 () Bool)

(declare-fun e!2305584 () Int)

(declare-fun e!2305587 () Int)

(assert (=> b!3725303 (= e!2305584 e!2305587)))

(declare-fun c!644499 () Bool)

(assert (=> b!3725303 (= c!644499 ((_ is Star!10907) r!26968))))

(declare-fun bm!271261 () Bool)

(declare-fun c!644496 () Bool)

(assert (=> bm!271261 (= call!271267 (RegexPrimitiveSize!139 (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))))))

(declare-fun b!3725304 () Bool)

(declare-fun e!2305586 () Int)

(assert (=> b!3725304 (= e!2305586 0)))

(declare-fun d!1089775 () Bool)

(declare-fun lt!1298333 () Int)

(assert (=> d!1089775 (>= lt!1298333 0)))

(assert (=> d!1089775 (= lt!1298333 e!2305588)))

(declare-fun c!644497 () Bool)

(assert (=> d!1089775 (= c!644497 ((_ is ElementMatch!10907) r!26968))))

(assert (=> d!1089775 (= (RegexPrimitiveSize!139 r!26968) lt!1298333)))

(declare-fun bm!271262 () Bool)

(assert (=> bm!271262 (= call!271266 (RegexPrimitiveSize!139 (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))))))

(declare-fun b!3725305 () Bool)

(declare-fun c!644498 () Bool)

(assert (=> b!3725305 (= c!644498 ((_ is EmptyLang!10907) r!26968))))

(assert (=> b!3725305 (= e!2305587 e!2305586)))

(declare-fun b!3725306 () Bool)

(declare-fun call!271268 () Int)

(assert (=> b!3725306 (= e!2305587 (+ 1 call!271268))))

(declare-fun b!3725307 () Bool)

(assert (=> b!3725307 (= e!2305586 (+ 1 call!271268 call!271267))))

(declare-fun bm!271263 () Bool)

(assert (=> bm!271263 (= call!271268 call!271266)))

(declare-fun b!3725308 () Bool)

(declare-fun c!644495 () Bool)

(assert (=> b!3725308 (= c!644495 ((_ is EmptyExpr!10907) r!26968))))

(assert (=> b!3725308 (= e!2305585 e!2305584)))

(declare-fun b!3725309 () Bool)

(assert (=> b!3725309 (= e!2305588 e!2305585)))

(assert (=> b!3725309 (= c!644496 ((_ is Concat!17178) r!26968))))

(declare-fun b!3725310 () Bool)

(assert (=> b!3725310 (= e!2305584 0)))

(assert (= (and d!1089775 c!644497) b!3725301))

(assert (= (and d!1089775 (not c!644497)) b!3725309))

(assert (= (and b!3725309 c!644496) b!3725302))

(assert (= (and b!3725309 (not c!644496)) b!3725308))

(assert (= (and b!3725308 c!644495) b!3725310))

(assert (= (and b!3725308 (not c!644495)) b!3725303))

(assert (= (and b!3725303 c!644499) b!3725306))

(assert (= (and b!3725303 (not c!644499)) b!3725305))

(assert (= (and b!3725305 c!644498) b!3725304))

(assert (= (and b!3725305 (not c!644498)) b!3725307))

(assert (= (or b!3725306 b!3725307) bm!271263))

(assert (= (or b!3725302 b!3725307) bm!271261))

(assert (= (or b!3725302 bm!271263) bm!271262))

(declare-fun m!4227429 () Bool)

(assert (=> bm!271261 m!4227429))

(declare-fun m!4227431 () Bool)

(assert (=> bm!271262 m!4227431))

(assert (=> b!3725099 d!1089775))

(declare-fun d!1089777 () Bool)

(declare-fun lt!1298334 () Bool)

(assert (=> d!1089777 (= lt!1298334 (select (content!5764 (usedCharacters!1170 (regOne!22327 r!26968))) cNot!42))))

(declare-fun e!2305589 () Bool)

(assert (=> d!1089777 (= lt!1298334 e!2305589)))

(declare-fun res!1513491 () Bool)

(assert (=> d!1089777 (=> (not res!1513491) (not e!2305589))))

(assert (=> d!1089777 (= res!1513491 ((_ is Cons!39664) (usedCharacters!1170 (regOne!22327 r!26968))))))

(assert (=> d!1089777 (= (contains!8000 (usedCharacters!1170 (regOne!22327 r!26968)) cNot!42) lt!1298334)))

(declare-fun b!3725311 () Bool)

(declare-fun e!2305590 () Bool)

(assert (=> b!3725311 (= e!2305589 e!2305590)))

(declare-fun res!1513492 () Bool)

(assert (=> b!3725311 (=> res!1513492 e!2305590)))

(assert (=> b!3725311 (= res!1513492 (= (h!45084 (usedCharacters!1170 (regOne!22327 r!26968))) cNot!42))))

(declare-fun b!3725312 () Bool)

(assert (=> b!3725312 (= e!2305590 (contains!8000 (t!302471 (usedCharacters!1170 (regOne!22327 r!26968))) cNot!42))))

(assert (= (and d!1089777 res!1513491) b!3725311))

(assert (= (and b!3725311 (not res!1513492)) b!3725312))

(assert (=> d!1089777 m!4227361))

(declare-fun m!4227433 () Bool)

(assert (=> d!1089777 m!4227433))

(declare-fun m!4227435 () Bool)

(assert (=> d!1089777 m!4227435))

(declare-fun m!4227437 () Bool)

(assert (=> b!3725312 m!4227437))

(assert (=> b!3725102 d!1089777))

(declare-fun bm!271264 () Bool)

(declare-fun call!271271 () List!39788)

(declare-fun c!644500 () Bool)

(declare-fun c!644501 () Bool)

(assert (=> bm!271264 (= call!271271 (usedCharacters!1170 (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))))))

(declare-fun b!3725313 () Bool)

(declare-fun e!2305592 () List!39788)

(declare-fun call!271270 () List!39788)

(assert (=> b!3725313 (= e!2305592 call!271270)))

(declare-fun b!3725314 () Bool)

(assert (=> b!3725314 (= c!644500 ((_ is Star!10907) (regOne!22327 r!26968)))))

(declare-fun e!2305594 () List!39788)

(declare-fun e!2305593 () List!39788)

(assert (=> b!3725314 (= e!2305594 e!2305593)))

(declare-fun b!3725315 () Bool)

(assert (=> b!3725315 (= e!2305593 e!2305592)))

(assert (=> b!3725315 (= c!644501 ((_ is Union!10907) (regOne!22327 r!26968)))))

(declare-fun b!3725316 () Bool)

(assert (=> b!3725316 (= e!2305593 call!271271)))

(declare-fun bm!271265 () Bool)

(declare-fun call!271272 () List!39788)

(assert (=> bm!271265 (= call!271272 (usedCharacters!1170 (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))))))

(declare-fun b!3725318 () Bool)

(declare-fun e!2305591 () List!39788)

(assert (=> b!3725318 (= e!2305591 e!2305594)))

(declare-fun c!644503 () Bool)

(assert (=> b!3725318 (= c!644503 ((_ is ElementMatch!10907) (regOne!22327 r!26968)))))

(declare-fun b!3725319 () Bool)

(assert (=> b!3725319 (= e!2305591 Nil!39664)))

(declare-fun b!3725320 () Bool)

(assert (=> b!3725320 (= e!2305594 (Cons!39664 (c!644419 (regOne!22327 r!26968)) Nil!39664))))

(declare-fun call!271269 () List!39788)

(declare-fun bm!271266 () Bool)

(assert (=> bm!271266 (= call!271270 (++!9831 (ite c!644501 call!271272 call!271269) (ite c!644501 call!271269 call!271272)))))

(declare-fun bm!271267 () Bool)

(assert (=> bm!271267 (= call!271269 call!271271)))

(declare-fun b!3725317 () Bool)

(assert (=> b!3725317 (= e!2305592 call!271270)))

(declare-fun d!1089779 () Bool)

(declare-fun c!644502 () Bool)

(assert (=> d!1089779 (= c!644502 (or ((_ is EmptyExpr!10907) (regOne!22327 r!26968)) ((_ is EmptyLang!10907) (regOne!22327 r!26968))))))

(assert (=> d!1089779 (= (usedCharacters!1170 (regOne!22327 r!26968)) e!2305591)))

(assert (= (and d!1089779 c!644502) b!3725319))

(assert (= (and d!1089779 (not c!644502)) b!3725318))

(assert (= (and b!3725318 c!644503) b!3725320))

(assert (= (and b!3725318 (not c!644503)) b!3725314))

(assert (= (and b!3725314 c!644500) b!3725316))

(assert (= (and b!3725314 (not c!644500)) b!3725315))

(assert (= (and b!3725315 c!644501) b!3725317))

(assert (= (and b!3725315 (not c!644501)) b!3725313))

(assert (= (or b!3725317 b!3725313) bm!271265))

(assert (= (or b!3725317 b!3725313) bm!271267))

(assert (= (or b!3725317 b!3725313) bm!271266))

(assert (= (or b!3725316 bm!271267) bm!271264))

(declare-fun m!4227439 () Bool)

(assert (=> bm!271264 m!4227439))

(declare-fun m!4227441 () Bool)

(assert (=> bm!271265 m!4227441))

(declare-fun m!4227443 () Bool)

(assert (=> bm!271266 m!4227443))

(assert (=> b!3725102 d!1089779))

(declare-fun b!3725355 () Bool)

(declare-fun e!2305613 () Bool)

(assert (=> b!3725355 (= e!2305613 tp_is_empty!18829)))

(declare-fun b!3725358 () Bool)

(declare-fun tp!1133248 () Bool)

(declare-fun tp!1133246 () Bool)

(assert (=> b!3725358 (= e!2305613 (and tp!1133248 tp!1133246))))

(declare-fun b!3725357 () Bool)

(declare-fun tp!1133245 () Bool)

(assert (=> b!3725357 (= e!2305613 tp!1133245)))

(declare-fun b!3725356 () Bool)

(declare-fun tp!1133247 () Bool)

(declare-fun tp!1133250 () Bool)

(assert (=> b!3725356 (= e!2305613 (and tp!1133247 tp!1133250))))

(assert (=> b!3725106 (= tp!1133234 e!2305613)))

(assert (= (and b!3725106 ((_ is ElementMatch!10907) (regOne!22327 r!26968))) b!3725355))

(assert (= (and b!3725106 ((_ is Concat!17178) (regOne!22327 r!26968))) b!3725356))

(assert (= (and b!3725106 ((_ is Star!10907) (regOne!22327 r!26968))) b!3725357))

(assert (= (and b!3725106 ((_ is Union!10907) (regOne!22327 r!26968))) b!3725358))

(declare-fun b!3725363 () Bool)

(declare-fun e!2305614 () Bool)

(assert (=> b!3725363 (= e!2305614 tp_is_empty!18829)))

(declare-fun b!3725366 () Bool)

(declare-fun tp!1133261 () Bool)

(declare-fun tp!1133259 () Bool)

(assert (=> b!3725366 (= e!2305614 (and tp!1133261 tp!1133259))))

(declare-fun b!3725365 () Bool)

(declare-fun tp!1133258 () Bool)

(assert (=> b!3725365 (= e!2305614 tp!1133258)))

(declare-fun b!3725364 () Bool)

(declare-fun tp!1133260 () Bool)

(declare-fun tp!1133262 () Bool)

(assert (=> b!3725364 (= e!2305614 (and tp!1133260 tp!1133262))))

(assert (=> b!3725106 (= tp!1133233 e!2305614)))

(assert (= (and b!3725106 ((_ is ElementMatch!10907) (regTwo!22327 r!26968))) b!3725363))

(assert (= (and b!3725106 ((_ is Concat!17178) (regTwo!22327 r!26968))) b!3725364))

(assert (= (and b!3725106 ((_ is Star!10907) (regTwo!22327 r!26968))) b!3725365))

(assert (= (and b!3725106 ((_ is Union!10907) (regTwo!22327 r!26968))) b!3725366))

(declare-fun b!3725367 () Bool)

(declare-fun e!2305615 () Bool)

(assert (=> b!3725367 (= e!2305615 tp_is_empty!18829)))

(declare-fun b!3725370 () Bool)

(declare-fun tp!1133268 () Bool)

(declare-fun tp!1133266 () Bool)

(assert (=> b!3725370 (= e!2305615 (and tp!1133268 tp!1133266))))

(declare-fun b!3725369 () Bool)

(declare-fun tp!1133265 () Bool)

(assert (=> b!3725369 (= e!2305615 tp!1133265)))

(declare-fun b!3725368 () Bool)

(declare-fun tp!1133267 () Bool)

(declare-fun tp!1133269 () Bool)

(assert (=> b!3725368 (= e!2305615 (and tp!1133267 tp!1133269))))

(assert (=> b!3725100 (= tp!1133230 e!2305615)))

(assert (= (and b!3725100 ((_ is ElementMatch!10907) (reg!11236 r!26968))) b!3725367))

(assert (= (and b!3725100 ((_ is Concat!17178) (reg!11236 r!26968))) b!3725368))

(assert (= (and b!3725100 ((_ is Star!10907) (reg!11236 r!26968))) b!3725369))

(assert (= (and b!3725100 ((_ is Union!10907) (reg!11236 r!26968))) b!3725370))

(declare-fun b!3725371 () Bool)

(declare-fun e!2305616 () Bool)

(assert (=> b!3725371 (= e!2305616 tp_is_empty!18829)))

(declare-fun b!3725374 () Bool)

(declare-fun tp!1133273 () Bool)

(declare-fun tp!1133271 () Bool)

(assert (=> b!3725374 (= e!2305616 (and tp!1133273 tp!1133271))))

(declare-fun b!3725373 () Bool)

(declare-fun tp!1133270 () Bool)

(assert (=> b!3725373 (= e!2305616 tp!1133270)))

(declare-fun b!3725372 () Bool)

(declare-fun tp!1133272 () Bool)

(declare-fun tp!1133274 () Bool)

(assert (=> b!3725372 (= e!2305616 (and tp!1133272 tp!1133274))))

(assert (=> b!3725103 (= tp!1133232 e!2305616)))

(assert (= (and b!3725103 ((_ is ElementMatch!10907) (regOne!22326 r!26968))) b!3725371))

(assert (= (and b!3725103 ((_ is Concat!17178) (regOne!22326 r!26968))) b!3725372))

(assert (= (and b!3725103 ((_ is Star!10907) (regOne!22326 r!26968))) b!3725373))

(assert (= (and b!3725103 ((_ is Union!10907) (regOne!22326 r!26968))) b!3725374))

(declare-fun b!3725375 () Bool)

(declare-fun e!2305617 () Bool)

(assert (=> b!3725375 (= e!2305617 tp_is_empty!18829)))

(declare-fun b!3725378 () Bool)

(declare-fun tp!1133278 () Bool)

(declare-fun tp!1133276 () Bool)

(assert (=> b!3725378 (= e!2305617 (and tp!1133278 tp!1133276))))

(declare-fun b!3725377 () Bool)

(declare-fun tp!1133275 () Bool)

(assert (=> b!3725377 (= e!2305617 tp!1133275)))

(declare-fun b!3725376 () Bool)

(declare-fun tp!1133277 () Bool)

(declare-fun tp!1133279 () Bool)

(assert (=> b!3725376 (= e!2305617 (and tp!1133277 tp!1133279))))

(assert (=> b!3725103 (= tp!1133231 e!2305617)))

(assert (= (and b!3725103 ((_ is ElementMatch!10907) (regTwo!22326 r!26968))) b!3725375))

(assert (= (and b!3725103 ((_ is Concat!17178) (regTwo!22326 r!26968))) b!3725376))

(assert (= (and b!3725103 ((_ is Star!10907) (regTwo!22326 r!26968))) b!3725377))

(assert (= (and b!3725103 ((_ is Union!10907) (regTwo!22326 r!26968))) b!3725378))

(check-sat (not b!3725312) (not bm!271259) (not b!3725376) (not bm!271232) (not b!3725365) (not b!3725378) (not bm!271210) (not b!3725170) (not bm!271211) (not bm!271258) (not b!3725372) (not bm!271234) tp_is_empty!18829 (not b!3725374) (not d!1089759) (not b!3725356) (not bm!271262) (not b!3725156) (not b!3725366) (not b!3725373) (not bm!271266) (not bm!271202) (not bm!271201) (not b!3725147) (not bm!271265) (not d!1089777) (not b!3725364) (not bm!271264) (not bm!271261) (not bm!271233) (not b!3725358) (not b!3725377) (not b!3725369) (not b!3725368) (not b!3725357) (not b!3725370))
(check-sat)
(get-model)

(declare-fun d!1089783 () Bool)

(declare-fun lt!1298335 () Bool)

(assert (=> d!1089783 (= lt!1298335 (select (content!5764 (t!302471 (usedCharacters!1170 (regOne!22327 r!26968)))) cNot!42))))

(declare-fun e!2305623 () Bool)

(assert (=> d!1089783 (= lt!1298335 e!2305623)))

(declare-fun res!1513503 () Bool)

(assert (=> d!1089783 (=> (not res!1513503) (not e!2305623))))

(assert (=> d!1089783 (= res!1513503 ((_ is Cons!39664) (t!302471 (usedCharacters!1170 (regOne!22327 r!26968)))))))

(assert (=> d!1089783 (= (contains!8000 (t!302471 (usedCharacters!1170 (regOne!22327 r!26968))) cNot!42) lt!1298335)))

(declare-fun b!3725399 () Bool)

(declare-fun e!2305624 () Bool)

(assert (=> b!3725399 (= e!2305623 e!2305624)))

(declare-fun res!1513504 () Bool)

(assert (=> b!3725399 (=> res!1513504 e!2305624)))

(assert (=> b!3725399 (= res!1513504 (= (h!45084 (t!302471 (usedCharacters!1170 (regOne!22327 r!26968)))) cNot!42))))

(declare-fun b!3725400 () Bool)

(assert (=> b!3725400 (= e!2305624 (contains!8000 (t!302471 (t!302471 (usedCharacters!1170 (regOne!22327 r!26968)))) cNot!42))))

(assert (= (and d!1089783 res!1513503) b!3725399))

(assert (= (and b!3725399 (not res!1513504)) b!3725400))

(declare-fun m!4227457 () Bool)

(assert (=> d!1089783 m!4227457))

(declare-fun m!4227459 () Bool)

(assert (=> d!1089783 m!4227459))

(declare-fun m!4227461 () Bool)

(assert (=> b!3725400 m!4227461))

(assert (=> b!3725312 d!1089783))

(declare-fun c!644509 () Bool)

(declare-fun c!644508 () Bool)

(declare-fun call!271281 () List!39788)

(declare-fun bm!271274 () Bool)

(assert (=> bm!271274 (= call!271281 (usedCharacters!1170 (ite c!644508 (reg!11236 (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))) (ite c!644509 (regTwo!22327 (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))) (regOne!22326 (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))))))))))

(declare-fun b!3725401 () Bool)

(declare-fun e!2305626 () List!39788)

(declare-fun call!271280 () List!39788)

(assert (=> b!3725401 (= e!2305626 call!271280)))

(declare-fun b!3725402 () Bool)

(assert (=> b!3725402 (= c!644508 ((_ is Star!10907) (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))))))

(declare-fun e!2305628 () List!39788)

(declare-fun e!2305627 () List!39788)

(assert (=> b!3725402 (= e!2305628 e!2305627)))

(declare-fun b!3725403 () Bool)

(assert (=> b!3725403 (= e!2305627 e!2305626)))

(assert (=> b!3725403 (= c!644509 ((_ is Union!10907) (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))))))

(declare-fun b!3725404 () Bool)

(assert (=> b!3725404 (= e!2305627 call!271281)))

(declare-fun call!271282 () List!39788)

(declare-fun bm!271275 () Bool)

(assert (=> bm!271275 (= call!271282 (usedCharacters!1170 (ite c!644509 (regOne!22327 (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))) (regTwo!22326 (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))))))))

(declare-fun b!3725406 () Bool)

(declare-fun e!2305625 () List!39788)

(assert (=> b!3725406 (= e!2305625 e!2305628)))

(declare-fun c!644511 () Bool)

(assert (=> b!3725406 (= c!644511 ((_ is ElementMatch!10907) (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))))))

(declare-fun b!3725407 () Bool)

(assert (=> b!3725407 (= e!2305625 Nil!39664)))

(declare-fun b!3725408 () Bool)

(assert (=> b!3725408 (= e!2305628 (Cons!39664 (c!644419 (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))) Nil!39664))))

(declare-fun bm!271276 () Bool)

(declare-fun call!271279 () List!39788)

(assert (=> bm!271276 (= call!271280 (++!9831 (ite c!644509 call!271282 call!271279) (ite c!644509 call!271279 call!271282)))))

(declare-fun bm!271277 () Bool)

(assert (=> bm!271277 (= call!271279 call!271281)))

(declare-fun b!3725405 () Bool)

(assert (=> b!3725405 (= e!2305626 call!271280)))

(declare-fun c!644510 () Bool)

(declare-fun d!1089785 () Bool)

(assert (=> d!1089785 (= c!644510 (or ((_ is EmptyExpr!10907) (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))) ((_ is EmptyLang!10907) (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))))))))

(assert (=> d!1089785 (= (usedCharacters!1170 (ite c!644500 (reg!11236 (regOne!22327 r!26968)) (ite c!644501 (regTwo!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))) e!2305625)))

(assert (= (and d!1089785 c!644510) b!3725407))

(assert (= (and d!1089785 (not c!644510)) b!3725406))

(assert (= (and b!3725406 c!644511) b!3725408))

(assert (= (and b!3725406 (not c!644511)) b!3725402))

(assert (= (and b!3725402 c!644508) b!3725404))

(assert (= (and b!3725402 (not c!644508)) b!3725403))

(assert (= (and b!3725403 c!644509) b!3725405))

(assert (= (and b!3725403 (not c!644509)) b!3725401))

(assert (= (or b!3725405 b!3725401) bm!271275))

(assert (= (or b!3725405 b!3725401) bm!271277))

(assert (= (or b!3725405 b!3725401) bm!271276))

(assert (= (or b!3725404 bm!271277) bm!271274))

(declare-fun m!4227463 () Bool)

(assert (=> bm!271274 m!4227463))

(declare-fun m!4227465 () Bool)

(assert (=> bm!271275 m!4227465))

(declare-fun m!4227467 () Bool)

(assert (=> bm!271276 m!4227467))

(assert (=> bm!271264 d!1089785))

(declare-fun b!3725409 () Bool)

(declare-fun e!2305633 () Bool)

(declare-fun e!2305630 () Bool)

(assert (=> b!3725409 (= e!2305633 e!2305630)))

(declare-fun res!1513508 () Bool)

(assert (=> b!3725409 (= res!1513508 (not (nullable!3814 (reg!11236 (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))))))))

(assert (=> b!3725409 (=> (not res!1513508) (not e!2305630))))

(declare-fun d!1089787 () Bool)

(declare-fun res!1513507 () Bool)

(declare-fun e!2305632 () Bool)

(assert (=> d!1089787 (=> res!1513507 e!2305632)))

(assert (=> d!1089787 (= res!1513507 ((_ is ElementMatch!10907) (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))))))

(assert (=> d!1089787 (= (validRegex!5014 (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))) e!2305632)))

(declare-fun b!3725410 () Bool)

(declare-fun e!2305635 () Bool)

(assert (=> b!3725410 (= e!2305633 e!2305635)))

(declare-fun c!644512 () Bool)

(assert (=> b!3725410 (= c!644512 ((_ is Union!10907) (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))))))

(declare-fun bm!271278 () Bool)

(declare-fun call!271284 () Bool)

(declare-fun call!271285 () Bool)

(assert (=> bm!271278 (= call!271284 call!271285)))

(declare-fun b!3725411 () Bool)

(declare-fun e!2305629 () Bool)

(assert (=> b!3725411 (= e!2305629 call!271284)))

(declare-fun b!3725412 () Bool)

(declare-fun res!1513506 () Bool)

(assert (=> b!3725412 (=> (not res!1513506) (not e!2305629))))

(declare-fun call!271283 () Bool)

(assert (=> b!3725412 (= res!1513506 call!271283)))

(assert (=> b!3725412 (= e!2305635 e!2305629)))

(declare-fun c!644513 () Bool)

(declare-fun bm!271279 () Bool)

(assert (=> bm!271279 (= call!271285 (validRegex!5014 (ite c!644513 (reg!11236 (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))) (ite c!644512 (regTwo!22327 (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))) (regTwo!22326 (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))))))))))

(declare-fun b!3725413 () Bool)

(declare-fun e!2305634 () Bool)

(declare-fun e!2305631 () Bool)

(assert (=> b!3725413 (= e!2305634 e!2305631)))

(declare-fun res!1513509 () Bool)

(assert (=> b!3725413 (=> (not res!1513509) (not e!2305631))))

(assert (=> b!3725413 (= res!1513509 call!271283)))

(declare-fun bm!271280 () Bool)

(assert (=> bm!271280 (= call!271283 (validRegex!5014 (ite c!644512 (regOne!22327 (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))) (regOne!22326 (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))))))))

(declare-fun b!3725414 () Bool)

(assert (=> b!3725414 (= e!2305631 call!271284)))

(declare-fun b!3725415 () Bool)

(assert (=> b!3725415 (= e!2305630 call!271285)))

(declare-fun b!3725416 () Bool)

(assert (=> b!3725416 (= e!2305632 e!2305633)))

(assert (=> b!3725416 (= c!644513 ((_ is Star!10907) (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))))))

(declare-fun b!3725417 () Bool)

(declare-fun res!1513505 () Bool)

(assert (=> b!3725417 (=> res!1513505 e!2305634)))

(assert (=> b!3725417 (= res!1513505 (not ((_ is Concat!17178) (ite c!644433 (reg!11236 (regOne!22327 r!26968)) (ite c!644432 (regTwo!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))))))))

(assert (=> b!3725417 (= e!2305635 e!2305634)))

(assert (= (and d!1089787 (not res!1513507)) b!3725416))

(assert (= (and b!3725416 c!644513) b!3725409))

(assert (= (and b!3725416 (not c!644513)) b!3725410))

(assert (= (and b!3725409 res!1513508) b!3725415))

(assert (= (and b!3725410 c!644512) b!3725412))

(assert (= (and b!3725410 (not c!644512)) b!3725417))

(assert (= (and b!3725412 res!1513506) b!3725411))

(assert (= (and b!3725417 (not res!1513505)) b!3725413))

(assert (= (and b!3725413 res!1513509) b!3725414))

(assert (= (or b!3725411 b!3725414) bm!271278))

(assert (= (or b!3725412 b!3725413) bm!271280))

(assert (= (or b!3725415 bm!271278) bm!271279))

(declare-fun m!4227469 () Bool)

(assert (=> b!3725409 m!4227469))

(declare-fun m!4227471 () Bool)

(assert (=> bm!271279 m!4227471))

(declare-fun m!4227473 () Bool)

(assert (=> bm!271280 m!4227473))

(assert (=> bm!271201 d!1089787))

(declare-fun b!3725418 () Bool)

(declare-fun e!2305640 () Int)

(assert (=> b!3725418 (= e!2305640 1)))

(declare-fun b!3725419 () Bool)

(declare-fun e!2305637 () Int)

(declare-fun call!271287 () Int)

(declare-fun call!271286 () Int)

(assert (=> b!3725419 (= e!2305637 (+ 1 call!271287 call!271286))))

(declare-fun b!3725420 () Bool)

(declare-fun e!2305636 () Int)

(declare-fun e!2305639 () Int)

(assert (=> b!3725420 (= e!2305636 e!2305639)))

(declare-fun c!644518 () Bool)

(assert (=> b!3725420 (= c!644518 ((_ is Star!10907) (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))))))

(declare-fun bm!271281 () Bool)

(declare-fun c!644515 () Bool)

(assert (=> bm!271281 (= call!271287 (RegexPrimitiveSize!139 (ite c!644515 (regOne!22326 (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))) (regTwo!22327 (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))))))))

(declare-fun b!3725421 () Bool)

(declare-fun e!2305638 () Int)

(assert (=> b!3725421 (= e!2305638 0)))

(declare-fun d!1089789 () Bool)

(declare-fun lt!1298336 () Int)

(assert (=> d!1089789 (>= lt!1298336 0)))

(assert (=> d!1089789 (= lt!1298336 e!2305640)))

(declare-fun c!644516 () Bool)

(assert (=> d!1089789 (= c!644516 ((_ is ElementMatch!10907) (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))))))

(assert (=> d!1089789 (= (RegexPrimitiveSize!139 (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))) lt!1298336)))

(declare-fun bm!271282 () Bool)

(assert (=> bm!271282 (= call!271286 (RegexPrimitiveSize!139 (ite c!644515 (regTwo!22326 (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))) (ite c!644518 (reg!11236 (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))) (regOne!22327 (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968)))))))))))

(declare-fun b!3725422 () Bool)

(declare-fun c!644517 () Bool)

(assert (=> b!3725422 (= c!644517 ((_ is EmptyLang!10907) (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))))))

(assert (=> b!3725422 (= e!2305639 e!2305638)))

(declare-fun b!3725423 () Bool)

(declare-fun call!271288 () Int)

(assert (=> b!3725423 (= e!2305639 (+ 1 call!271288))))

(declare-fun b!3725424 () Bool)

(assert (=> b!3725424 (= e!2305638 (+ 1 call!271288 call!271287))))

(declare-fun bm!271283 () Bool)

(assert (=> bm!271283 (= call!271288 call!271286)))

(declare-fun b!3725425 () Bool)

(declare-fun c!644514 () Bool)

(assert (=> b!3725425 (= c!644514 ((_ is EmptyExpr!10907) (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))))))

(assert (=> b!3725425 (= e!2305637 e!2305636)))

(declare-fun b!3725426 () Bool)

(assert (=> b!3725426 (= e!2305640 e!2305637)))

(assert (=> b!3725426 (= c!644515 ((_ is Concat!17178) (ite c!644491 (regTwo!22326 (regOne!22327 r!26968)) (ite c!644494 (reg!11236 (regOne!22327 r!26968)) (regOne!22327 (regOne!22327 r!26968))))))))

(declare-fun b!3725427 () Bool)

(assert (=> b!3725427 (= e!2305636 0)))

(assert (= (and d!1089789 c!644516) b!3725418))

(assert (= (and d!1089789 (not c!644516)) b!3725426))

(assert (= (and b!3725426 c!644515) b!3725419))

(assert (= (and b!3725426 (not c!644515)) b!3725425))

(assert (= (and b!3725425 c!644514) b!3725427))

(assert (= (and b!3725425 (not c!644514)) b!3725420))

(assert (= (and b!3725420 c!644518) b!3725423))

(assert (= (and b!3725420 (not c!644518)) b!3725422))

(assert (= (and b!3725422 c!644517) b!3725421))

(assert (= (and b!3725422 (not c!644517)) b!3725424))

(assert (= (or b!3725423 b!3725424) bm!271283))

(assert (= (or b!3725419 b!3725424) bm!271281))

(assert (= (or b!3725419 bm!271283) bm!271282))

(declare-fun m!4227475 () Bool)

(assert (=> bm!271281 m!4227475))

(declare-fun m!4227477 () Bool)

(assert (=> bm!271282 m!4227477))

(assert (=> bm!271259 d!1089789))

(declare-fun b!3725428 () Bool)

(declare-fun e!2305645 () Int)

(assert (=> b!3725428 (= e!2305645 1)))

(declare-fun b!3725429 () Bool)

(declare-fun e!2305642 () Int)

(declare-fun call!271290 () Int)

(declare-fun call!271289 () Int)

(assert (=> b!3725429 (= e!2305642 (+ 1 call!271290 call!271289))))

(declare-fun b!3725430 () Bool)

(declare-fun e!2305641 () Int)

(declare-fun e!2305644 () Int)

(assert (=> b!3725430 (= e!2305641 e!2305644)))

(declare-fun c!644523 () Bool)

(assert (=> b!3725430 (= c!644523 ((_ is Star!10907) (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))))))

(declare-fun c!644520 () Bool)

(declare-fun bm!271284 () Bool)

(assert (=> bm!271284 (= call!271290 (RegexPrimitiveSize!139 (ite c!644520 (regOne!22326 (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))) (regTwo!22327 (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))))))))

(declare-fun b!3725431 () Bool)

(declare-fun e!2305643 () Int)

(assert (=> b!3725431 (= e!2305643 0)))

(declare-fun d!1089791 () Bool)

(declare-fun lt!1298337 () Int)

(assert (=> d!1089791 (>= lt!1298337 0)))

(assert (=> d!1089791 (= lt!1298337 e!2305645)))

(declare-fun c!644521 () Bool)

(assert (=> d!1089791 (= c!644521 ((_ is ElementMatch!10907) (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))))))

(assert (=> d!1089791 (= (RegexPrimitiveSize!139 (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))) lt!1298337)))

(declare-fun bm!271285 () Bool)

(assert (=> bm!271285 (= call!271289 (RegexPrimitiveSize!139 (ite c!644520 (regTwo!22326 (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))) (ite c!644523 (reg!11236 (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))) (regOne!22327 (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968))))))))))

(declare-fun b!3725432 () Bool)

(declare-fun c!644522 () Bool)

(assert (=> b!3725432 (= c!644522 ((_ is EmptyLang!10907) (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))))))

(assert (=> b!3725432 (= e!2305644 e!2305643)))

(declare-fun b!3725433 () Bool)

(declare-fun call!271291 () Int)

(assert (=> b!3725433 (= e!2305644 (+ 1 call!271291))))

(declare-fun b!3725434 () Bool)

(assert (=> b!3725434 (= e!2305643 (+ 1 call!271291 call!271290))))

(declare-fun bm!271286 () Bool)

(assert (=> bm!271286 (= call!271291 call!271289)))

(declare-fun b!3725435 () Bool)

(declare-fun c!644519 () Bool)

(assert (=> b!3725435 (= c!644519 ((_ is EmptyExpr!10907) (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))))))

(assert (=> b!3725435 (= e!2305642 e!2305641)))

(declare-fun b!3725436 () Bool)

(assert (=> b!3725436 (= e!2305645 e!2305642)))

(assert (=> b!3725436 (= c!644520 ((_ is Concat!17178) (ite c!644491 (regOne!22326 (regOne!22327 r!26968)) (regTwo!22327 (regOne!22327 r!26968)))))))

(declare-fun b!3725437 () Bool)

(assert (=> b!3725437 (= e!2305641 0)))

(assert (= (and d!1089791 c!644521) b!3725428))

(assert (= (and d!1089791 (not c!644521)) b!3725436))

(assert (= (and b!3725436 c!644520) b!3725429))

(assert (= (and b!3725436 (not c!644520)) b!3725435))

(assert (= (and b!3725435 c!644519) b!3725437))

(assert (= (and b!3725435 (not c!644519)) b!3725430))

(assert (= (and b!3725430 c!644523) b!3725433))

(assert (= (and b!3725430 (not c!644523)) b!3725432))

(assert (= (and b!3725432 c!644522) b!3725431))

(assert (= (and b!3725432 (not c!644522)) b!3725434))

(assert (= (or b!3725433 b!3725434) bm!271286))

(assert (= (or b!3725429 b!3725434) bm!271284))

(assert (= (or b!3725429 bm!271286) bm!271285))

(declare-fun m!4227479 () Bool)

(assert (=> bm!271284 m!4227479))

(declare-fun m!4227481 () Bool)

(assert (=> bm!271285 m!4227481))

(assert (=> bm!271258 d!1089791))

(declare-fun b!3725438 () Bool)

(declare-fun e!2305650 () Int)

(assert (=> b!3725438 (= e!2305650 1)))

(declare-fun b!3725439 () Bool)

(declare-fun e!2305647 () Int)

(declare-fun call!271293 () Int)

(declare-fun call!271292 () Int)

(assert (=> b!3725439 (= e!2305647 (+ 1 call!271293 call!271292))))

(declare-fun b!3725440 () Bool)

(declare-fun e!2305646 () Int)

(declare-fun e!2305649 () Int)

(assert (=> b!3725440 (= e!2305646 e!2305649)))

(declare-fun c!644528 () Bool)

(assert (=> b!3725440 (= c!644528 ((_ is Star!10907) (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))))))

(declare-fun bm!271287 () Bool)

(declare-fun c!644525 () Bool)

(assert (=> bm!271287 (= call!271293 (RegexPrimitiveSize!139 (ite c!644525 (regOne!22326 (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))) (regTwo!22327 (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))))))))

(declare-fun b!3725441 () Bool)

(declare-fun e!2305648 () Int)

(assert (=> b!3725441 (= e!2305648 0)))

(declare-fun d!1089793 () Bool)

(declare-fun lt!1298338 () Int)

(assert (=> d!1089793 (>= lt!1298338 0)))

(assert (=> d!1089793 (= lt!1298338 e!2305650)))

(declare-fun c!644526 () Bool)

(assert (=> d!1089793 (= c!644526 ((_ is ElementMatch!10907) (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))))))

(assert (=> d!1089793 (= (RegexPrimitiveSize!139 (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))) lt!1298338)))

(declare-fun bm!271288 () Bool)

(assert (=> bm!271288 (= call!271292 (RegexPrimitiveSize!139 (ite c!644525 (regTwo!22326 (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))) (ite c!644528 (reg!11236 (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))) (regOne!22327 (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968)))))))))

(declare-fun b!3725442 () Bool)

(declare-fun c!644527 () Bool)

(assert (=> b!3725442 (= c!644527 ((_ is EmptyLang!10907) (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))))))

(assert (=> b!3725442 (= e!2305649 e!2305648)))

(declare-fun b!3725443 () Bool)

(declare-fun call!271294 () Int)

(assert (=> b!3725443 (= e!2305649 (+ 1 call!271294))))

(declare-fun b!3725444 () Bool)

(assert (=> b!3725444 (= e!2305648 (+ 1 call!271294 call!271293))))

(declare-fun bm!271289 () Bool)

(assert (=> bm!271289 (= call!271294 call!271292)))

(declare-fun b!3725445 () Bool)

(declare-fun c!644524 () Bool)

(assert (=> b!3725445 (= c!644524 ((_ is EmptyExpr!10907) (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))))))

(assert (=> b!3725445 (= e!2305647 e!2305646)))

(declare-fun b!3725446 () Bool)

(assert (=> b!3725446 (= e!2305650 e!2305647)))

(assert (=> b!3725446 (= c!644525 ((_ is Concat!17178) (ite c!644496 (regOne!22326 r!26968) (regTwo!22327 r!26968))))))

(declare-fun b!3725447 () Bool)

(assert (=> b!3725447 (= e!2305646 0)))

(assert (= (and d!1089793 c!644526) b!3725438))

(assert (= (and d!1089793 (not c!644526)) b!3725446))

(assert (= (and b!3725446 c!644525) b!3725439))

(assert (= (and b!3725446 (not c!644525)) b!3725445))

(assert (= (and b!3725445 c!644524) b!3725447))

(assert (= (and b!3725445 (not c!644524)) b!3725440))

(assert (= (and b!3725440 c!644528) b!3725443))

(assert (= (and b!3725440 (not c!644528)) b!3725442))

(assert (= (and b!3725442 c!644527) b!3725441))

(assert (= (and b!3725442 (not c!644527)) b!3725444))

(assert (= (or b!3725443 b!3725444) bm!271289))

(assert (= (or b!3725439 b!3725444) bm!271287))

(assert (= (or b!3725439 bm!271289) bm!271288))

(declare-fun m!4227483 () Bool)

(assert (=> bm!271287 m!4227483))

(declare-fun m!4227485 () Bool)

(assert (=> bm!271288 m!4227485))

(assert (=> bm!271261 d!1089793))

(declare-fun b!3725456 () Bool)

(declare-fun e!2305656 () List!39788)

(assert (=> b!3725456 (= e!2305656 (ite c!644501 call!271269 call!271272))))

(declare-fun d!1089795 () Bool)

(declare-fun e!2305655 () Bool)

(assert (=> d!1089795 e!2305655))

(declare-fun res!1513514 () Bool)

(assert (=> d!1089795 (=> (not res!1513514) (not e!2305655))))

(declare-fun lt!1298341 () List!39788)

(assert (=> d!1089795 (= res!1513514 (= (content!5764 lt!1298341) ((_ map or) (content!5764 (ite c!644501 call!271272 call!271269)) (content!5764 (ite c!644501 call!271269 call!271272)))))))

(assert (=> d!1089795 (= lt!1298341 e!2305656)))

(declare-fun c!644531 () Bool)

(assert (=> d!1089795 (= c!644531 ((_ is Nil!39664) (ite c!644501 call!271272 call!271269)))))

(assert (=> d!1089795 (= (++!9831 (ite c!644501 call!271272 call!271269) (ite c!644501 call!271269 call!271272)) lt!1298341)))

(declare-fun b!3725458 () Bool)

(declare-fun res!1513515 () Bool)

(assert (=> b!3725458 (=> (not res!1513515) (not e!2305655))))

(declare-fun size!30027 (List!39788) Int)

(assert (=> b!3725458 (= res!1513515 (= (size!30027 lt!1298341) (+ (size!30027 (ite c!644501 call!271272 call!271269)) (size!30027 (ite c!644501 call!271269 call!271272)))))))

(declare-fun b!3725457 () Bool)

(assert (=> b!3725457 (= e!2305656 (Cons!39664 (h!45084 (ite c!644501 call!271272 call!271269)) (++!9831 (t!302471 (ite c!644501 call!271272 call!271269)) (ite c!644501 call!271269 call!271272))))))

(declare-fun b!3725459 () Bool)

(assert (=> b!3725459 (= e!2305655 (or (not (= (ite c!644501 call!271269 call!271272) Nil!39664)) (= lt!1298341 (ite c!644501 call!271272 call!271269))))))

(assert (= (and d!1089795 c!644531) b!3725456))

(assert (= (and d!1089795 (not c!644531)) b!3725457))

(assert (= (and d!1089795 res!1513514) b!3725458))

(assert (= (and b!3725458 res!1513515) b!3725459))

(declare-fun m!4227487 () Bool)

(assert (=> d!1089795 m!4227487))

(declare-fun m!4227489 () Bool)

(assert (=> d!1089795 m!4227489))

(declare-fun m!4227491 () Bool)

(assert (=> d!1089795 m!4227491))

(declare-fun m!4227493 () Bool)

(assert (=> b!3725458 m!4227493))

(declare-fun m!4227495 () Bool)

(assert (=> b!3725458 m!4227495))

(declare-fun m!4227497 () Bool)

(assert (=> b!3725458 m!4227497))

(declare-fun m!4227499 () Bool)

(assert (=> b!3725457 m!4227499))

(assert (=> bm!271266 d!1089795))

(declare-fun b!3725460 () Bool)

(declare-fun e!2305661 () Bool)

(declare-fun e!2305658 () Bool)

(assert (=> b!3725460 (= e!2305661 e!2305658)))

(declare-fun res!1513519 () Bool)

(assert (=> b!3725460 (= res!1513519 (not (nullable!3814 (reg!11236 (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))))))))

(assert (=> b!3725460 (=> (not res!1513519) (not e!2305658))))

(declare-fun d!1089797 () Bool)

(declare-fun res!1513518 () Bool)

(declare-fun e!2305660 () Bool)

(assert (=> d!1089797 (=> res!1513518 e!2305660)))

(assert (=> d!1089797 (= res!1513518 ((_ is ElementMatch!10907) (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))))))

(assert (=> d!1089797 (= (validRegex!5014 (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))) e!2305660)))

(declare-fun b!3725461 () Bool)

(declare-fun e!2305663 () Bool)

(assert (=> b!3725461 (= e!2305661 e!2305663)))

(declare-fun c!644532 () Bool)

(assert (=> b!3725461 (= c!644532 ((_ is Union!10907) (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))))))

(declare-fun bm!271290 () Bool)

(declare-fun call!271296 () Bool)

(declare-fun call!271297 () Bool)

(assert (=> bm!271290 (= call!271296 call!271297)))

(declare-fun b!3725462 () Bool)

(declare-fun e!2305657 () Bool)

(assert (=> b!3725462 (= e!2305657 call!271296)))

(declare-fun b!3725463 () Bool)

(declare-fun res!1513517 () Bool)

(assert (=> b!3725463 (=> (not res!1513517) (not e!2305657))))

(declare-fun call!271295 () Bool)

(assert (=> b!3725463 (= res!1513517 call!271295)))

(assert (=> b!3725463 (= e!2305663 e!2305657)))

(declare-fun c!644533 () Bool)

(declare-fun bm!271291 () Bool)

(assert (=> bm!271291 (= call!271297 (validRegex!5014 (ite c!644533 (reg!11236 (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))) (ite c!644532 (regTwo!22327 (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))) (regTwo!22326 (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968)))))))))

(declare-fun b!3725464 () Bool)

(declare-fun e!2305662 () Bool)

(declare-fun e!2305659 () Bool)

(assert (=> b!3725464 (= e!2305662 e!2305659)))

(declare-fun res!1513520 () Bool)

(assert (=> b!3725464 (=> (not res!1513520) (not e!2305659))))

(assert (=> b!3725464 (= res!1513520 call!271295)))

(declare-fun bm!271292 () Bool)

(assert (=> bm!271292 (= call!271295 (validRegex!5014 (ite c!644532 (regOne!22327 (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))) (regOne!22326 (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))))))))

(declare-fun b!3725465 () Bool)

(assert (=> b!3725465 (= e!2305659 call!271296)))

(declare-fun b!3725466 () Bool)

(assert (=> b!3725466 (= e!2305658 call!271297)))

(declare-fun b!3725467 () Bool)

(assert (=> b!3725467 (= e!2305660 e!2305661)))

(assert (=> b!3725467 (= c!644533 ((_ is Star!10907) (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968))))))

(declare-fun b!3725468 () Bool)

(declare-fun res!1513516 () Bool)

(assert (=> b!3725468 (=> res!1513516 e!2305662)))

(assert (=> b!3725468 (= res!1513516 (not ((_ is Concat!17178) (ite c!644434 (regOne!22327 r!26968) (regOne!22326 r!26968)))))))

(assert (=> b!3725468 (= e!2305663 e!2305662)))

(assert (= (and d!1089797 (not res!1513518)) b!3725467))

(assert (= (and b!3725467 c!644533) b!3725460))

(assert (= (and b!3725467 (not c!644533)) b!3725461))

(assert (= (and b!3725460 res!1513519) b!3725466))

(assert (= (and b!3725461 c!644532) b!3725463))

(assert (= (and b!3725461 (not c!644532)) b!3725468))

(assert (= (and b!3725463 res!1513517) b!3725462))

(assert (= (and b!3725468 (not res!1513516)) b!3725464))

(assert (= (and b!3725464 res!1513520) b!3725465))

(assert (= (or b!3725462 b!3725465) bm!271290))

(assert (= (or b!3725463 b!3725464) bm!271292))

(assert (= (or b!3725466 bm!271290) bm!271291))

(declare-fun m!4227501 () Bool)

(assert (=> b!3725460 m!4227501))

(declare-fun m!4227503 () Bool)

(assert (=> bm!271291 m!4227503))

(declare-fun m!4227505 () Bool)

(assert (=> bm!271292 m!4227505))

(assert (=> bm!271211 d!1089797))

(declare-fun call!271300 () List!39788)

(declare-fun bm!271293 () Bool)

(declare-fun c!644534 () Bool)

(declare-fun c!644535 () Bool)

(assert (=> bm!271293 (= call!271300 (usedCharacters!1170 (ite c!644534 (reg!11236 (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))) (ite c!644535 (regTwo!22327 (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))) (regOne!22326 (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968))))))))))

(declare-fun b!3725469 () Bool)

(declare-fun e!2305665 () List!39788)

(declare-fun call!271299 () List!39788)

(assert (=> b!3725469 (= e!2305665 call!271299)))

(declare-fun b!3725470 () Bool)

(assert (=> b!3725470 (= c!644534 ((_ is Star!10907) (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))))))

(declare-fun e!2305667 () List!39788)

(declare-fun e!2305666 () List!39788)

(assert (=> b!3725470 (= e!2305667 e!2305666)))

(declare-fun b!3725471 () Bool)

(assert (=> b!3725471 (= e!2305666 e!2305665)))

(assert (=> b!3725471 (= c!644535 ((_ is Union!10907) (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))))))

(declare-fun b!3725472 () Bool)

(assert (=> b!3725472 (= e!2305666 call!271300)))

(declare-fun call!271301 () List!39788)

(declare-fun bm!271294 () Bool)

(assert (=> bm!271294 (= call!271301 (usedCharacters!1170 (ite c!644535 (regOne!22327 (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))) (regTwo!22326 (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))))))))

(declare-fun b!3725474 () Bool)

(declare-fun e!2305664 () List!39788)

(assert (=> b!3725474 (= e!2305664 e!2305667)))

(declare-fun c!644537 () Bool)

(assert (=> b!3725474 (= c!644537 ((_ is ElementMatch!10907) (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))))))

(declare-fun b!3725475 () Bool)

(assert (=> b!3725475 (= e!2305664 Nil!39664)))

(declare-fun b!3725476 () Bool)

(assert (=> b!3725476 (= e!2305667 (Cons!39664 (c!644419 (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))) Nil!39664))))

(declare-fun call!271298 () List!39788)

(declare-fun bm!271295 () Bool)

(assert (=> bm!271295 (= call!271299 (++!9831 (ite c!644535 call!271301 call!271298) (ite c!644535 call!271298 call!271301)))))

(declare-fun bm!271296 () Bool)

(assert (=> bm!271296 (= call!271298 call!271300)))

(declare-fun b!3725473 () Bool)

(assert (=> b!3725473 (= e!2305665 call!271299)))

(declare-fun d!1089799 () Bool)

(declare-fun c!644536 () Bool)

(assert (=> d!1089799 (= c!644536 (or ((_ is EmptyExpr!10907) (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))) ((_ is EmptyLang!10907) (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968))))))))

(assert (=> d!1089799 (= (usedCharacters!1170 (ite c!644458 (reg!11236 r!26968) (ite c!644459 (regTwo!22327 r!26968) (regOne!22326 r!26968)))) e!2305664)))

(assert (= (and d!1089799 c!644536) b!3725475))

(assert (= (and d!1089799 (not c!644536)) b!3725474))

(assert (= (and b!3725474 c!644537) b!3725476))

(assert (= (and b!3725474 (not c!644537)) b!3725470))

(assert (= (and b!3725470 c!644534) b!3725472))

(assert (= (and b!3725470 (not c!644534)) b!3725471))

(assert (= (and b!3725471 c!644535) b!3725473))

(assert (= (and b!3725471 (not c!644535)) b!3725469))

(assert (= (or b!3725473 b!3725469) bm!271294))

(assert (= (or b!3725473 b!3725469) bm!271296))

(assert (= (or b!3725473 b!3725469) bm!271295))

(assert (= (or b!3725472 bm!271296) bm!271293))

(declare-fun m!4227507 () Bool)

(assert (=> bm!271293 m!4227507))

(declare-fun m!4227509 () Bool)

(assert (=> bm!271294 m!4227509))

(declare-fun m!4227511 () Bool)

(assert (=> bm!271295 m!4227511))

(assert (=> bm!271232 d!1089799))

(declare-fun e!2305669 () List!39788)

(declare-fun b!3725477 () Bool)

(assert (=> b!3725477 (= e!2305669 (ite c!644459 call!271237 call!271240))))

(declare-fun d!1089801 () Bool)

(declare-fun e!2305668 () Bool)

(assert (=> d!1089801 e!2305668))

(declare-fun res!1513521 () Bool)

(assert (=> d!1089801 (=> (not res!1513521) (not e!2305668))))

(declare-fun lt!1298342 () List!39788)

(assert (=> d!1089801 (= res!1513521 (= (content!5764 lt!1298342) ((_ map or) (content!5764 (ite c!644459 call!271240 call!271237)) (content!5764 (ite c!644459 call!271237 call!271240)))))))

(assert (=> d!1089801 (= lt!1298342 e!2305669)))

(declare-fun c!644538 () Bool)

(assert (=> d!1089801 (= c!644538 ((_ is Nil!39664) (ite c!644459 call!271240 call!271237)))))

(assert (=> d!1089801 (= (++!9831 (ite c!644459 call!271240 call!271237) (ite c!644459 call!271237 call!271240)) lt!1298342)))

(declare-fun b!3725479 () Bool)

(declare-fun res!1513522 () Bool)

(assert (=> b!3725479 (=> (not res!1513522) (not e!2305668))))

(assert (=> b!3725479 (= res!1513522 (= (size!30027 lt!1298342) (+ (size!30027 (ite c!644459 call!271240 call!271237)) (size!30027 (ite c!644459 call!271237 call!271240)))))))

(declare-fun b!3725478 () Bool)

(assert (=> b!3725478 (= e!2305669 (Cons!39664 (h!45084 (ite c!644459 call!271240 call!271237)) (++!9831 (t!302471 (ite c!644459 call!271240 call!271237)) (ite c!644459 call!271237 call!271240))))))

(declare-fun b!3725480 () Bool)

(assert (=> b!3725480 (= e!2305668 (or (not (= (ite c!644459 call!271237 call!271240) Nil!39664)) (= lt!1298342 (ite c!644459 call!271240 call!271237))))))

(assert (= (and d!1089801 c!644538) b!3725477))

(assert (= (and d!1089801 (not c!644538)) b!3725478))

(assert (= (and d!1089801 res!1513521) b!3725479))

(assert (= (and b!3725479 res!1513522) b!3725480))

(declare-fun m!4227513 () Bool)

(assert (=> d!1089801 m!4227513))

(declare-fun m!4227515 () Bool)

(assert (=> d!1089801 m!4227515))

(declare-fun m!4227517 () Bool)

(assert (=> d!1089801 m!4227517))

(declare-fun m!4227519 () Bool)

(assert (=> b!3725479 m!4227519))

(declare-fun m!4227521 () Bool)

(assert (=> b!3725479 m!4227521))

(declare-fun m!4227523 () Bool)

(assert (=> b!3725479 m!4227523))

(declare-fun m!4227525 () Bool)

(assert (=> b!3725478 m!4227525))

(assert (=> bm!271234 d!1089801))

(declare-fun b!3725481 () Bool)

(declare-fun e!2305674 () Bool)

(declare-fun e!2305671 () Bool)

(assert (=> b!3725481 (= e!2305674 e!2305671)))

(declare-fun res!1513526 () Bool)

(assert (=> b!3725481 (= res!1513526 (not (nullable!3814 (reg!11236 (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))))))))

(assert (=> b!3725481 (=> (not res!1513526) (not e!2305671))))

(declare-fun d!1089803 () Bool)

(declare-fun res!1513525 () Bool)

(declare-fun e!2305673 () Bool)

(assert (=> d!1089803 (=> res!1513525 e!2305673)))

(assert (=> d!1089803 (= res!1513525 ((_ is ElementMatch!10907) (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))))))

(assert (=> d!1089803 (= (validRegex!5014 (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))) e!2305673)))

(declare-fun b!3725482 () Bool)

(declare-fun e!2305676 () Bool)

(assert (=> b!3725482 (= e!2305674 e!2305676)))

(declare-fun c!644539 () Bool)

(assert (=> b!3725482 (= c!644539 ((_ is Union!10907) (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))))))

(declare-fun bm!271297 () Bool)

(declare-fun call!271303 () Bool)

(declare-fun call!271304 () Bool)

(assert (=> bm!271297 (= call!271303 call!271304)))

(declare-fun b!3725483 () Bool)

(declare-fun e!2305670 () Bool)

(assert (=> b!3725483 (= e!2305670 call!271303)))

(declare-fun b!3725484 () Bool)

(declare-fun res!1513524 () Bool)

(assert (=> b!3725484 (=> (not res!1513524) (not e!2305670))))

(declare-fun call!271302 () Bool)

(assert (=> b!3725484 (= res!1513524 call!271302)))

(assert (=> b!3725484 (= e!2305676 e!2305670)))

(declare-fun c!644540 () Bool)

(declare-fun bm!271298 () Bool)

(assert (=> bm!271298 (= call!271304 (validRegex!5014 (ite c!644540 (reg!11236 (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))) (ite c!644539 (regTwo!22327 (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))) (regTwo!22326 (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968))))))))))

(declare-fun b!3725485 () Bool)

(declare-fun e!2305675 () Bool)

(declare-fun e!2305672 () Bool)

(assert (=> b!3725485 (= e!2305675 e!2305672)))

(declare-fun res!1513527 () Bool)

(assert (=> b!3725485 (=> (not res!1513527) (not e!2305672))))

(assert (=> b!3725485 (= res!1513527 call!271302)))

(declare-fun bm!271299 () Bool)

(assert (=> bm!271299 (= call!271302 (validRegex!5014 (ite c!644539 (regOne!22327 (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))) (regOne!22326 (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))))))))

(declare-fun b!3725486 () Bool)

(assert (=> b!3725486 (= e!2305672 call!271303)))

(declare-fun b!3725487 () Bool)

(assert (=> b!3725487 (= e!2305671 call!271304)))

(declare-fun b!3725488 () Bool)

(assert (=> b!3725488 (= e!2305673 e!2305674)))

(assert (=> b!3725488 (= c!644540 ((_ is Star!10907) (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968)))))))

(declare-fun b!3725489 () Bool)

(declare-fun res!1513523 () Bool)

(assert (=> b!3725489 (=> res!1513523 e!2305675)))

(assert (=> b!3725489 (= res!1513523 (not ((_ is Concat!17178) (ite c!644435 (reg!11236 r!26968) (ite c!644434 (regTwo!22327 r!26968) (regTwo!22326 r!26968))))))))

(assert (=> b!3725489 (= e!2305676 e!2305675)))

(assert (= (and d!1089803 (not res!1513525)) b!3725488))

(assert (= (and b!3725488 c!644540) b!3725481))

(assert (= (and b!3725488 (not c!644540)) b!3725482))

(assert (= (and b!3725481 res!1513526) b!3725487))

(assert (= (and b!3725482 c!644539) b!3725484))

(assert (= (and b!3725482 (not c!644539)) b!3725489))

(assert (= (and b!3725484 res!1513524) b!3725483))

(assert (= (and b!3725489 (not res!1513523)) b!3725485))

(assert (= (and b!3725485 res!1513527) b!3725486))

(assert (= (or b!3725483 b!3725486) bm!271297))

(assert (= (or b!3725484 b!3725485) bm!271299))

(assert (= (or b!3725487 bm!271297) bm!271298))

(declare-fun m!4227527 () Bool)

(assert (=> b!3725481 m!4227527))

(declare-fun m!4227529 () Bool)

(assert (=> bm!271298 m!4227529))

(declare-fun m!4227531 () Bool)

(assert (=> bm!271299 m!4227531))

(assert (=> bm!271210 d!1089803))

(declare-fun d!1089805 () Bool)

(declare-fun lt!1298343 () Bool)

(assert (=> d!1089805 (= lt!1298343 (select (content!5764 (t!302471 (usedCharacters!1170 r!26968))) cNot!42))))

(declare-fun e!2305677 () Bool)

(assert (=> d!1089805 (= lt!1298343 e!2305677)))

(declare-fun res!1513528 () Bool)

(assert (=> d!1089805 (=> (not res!1513528) (not e!2305677))))

(assert (=> d!1089805 (= res!1513528 ((_ is Cons!39664) (t!302471 (usedCharacters!1170 r!26968))))))

(assert (=> d!1089805 (= (contains!8000 (t!302471 (usedCharacters!1170 r!26968)) cNot!42) lt!1298343)))

(declare-fun b!3725490 () Bool)

(declare-fun e!2305678 () Bool)

(assert (=> b!3725490 (= e!2305677 e!2305678)))

(declare-fun res!1513529 () Bool)

(assert (=> b!3725490 (=> res!1513529 e!2305678)))

(assert (=> b!3725490 (= res!1513529 (= (h!45084 (t!302471 (usedCharacters!1170 r!26968))) cNot!42))))

(declare-fun b!3725491 () Bool)

(assert (=> b!3725491 (= e!2305678 (contains!8000 (t!302471 (t!302471 (usedCharacters!1170 r!26968))) cNot!42))))

(assert (= (and d!1089805 res!1513528) b!3725490))

(assert (= (and b!3725490 (not res!1513529)) b!3725491))

(declare-fun m!4227533 () Bool)

(assert (=> d!1089805 m!4227533))

(declare-fun m!4227535 () Bool)

(assert (=> d!1089805 m!4227535))

(declare-fun m!4227537 () Bool)

(assert (=> b!3725491 m!4227537))

(assert (=> b!3725170 d!1089805))

(declare-fun d!1089807 () Bool)

(declare-fun nullableFct!1078 (Regex!10907) Bool)

(assert (=> d!1089807 (= (nullable!3814 (reg!11236 (regOne!22327 r!26968))) (nullableFct!1078 (reg!11236 (regOne!22327 r!26968))))))

(declare-fun bs!575024 () Bool)

(assert (= bs!575024 d!1089807))

(declare-fun m!4227539 () Bool)

(assert (=> bs!575024 m!4227539))

(assert (=> b!3725147 d!1089807))

(declare-fun d!1089809 () Bool)

(declare-fun c!644547 () Bool)

(assert (=> d!1089809 (= c!644547 ((_ is Nil!39664) (usedCharacters!1170 (regOne!22327 r!26968))))))

(declare-fun e!2305685 () (InoxSet C!22000))

(assert (=> d!1089809 (= (content!5764 (usedCharacters!1170 (regOne!22327 r!26968))) e!2305685)))

(declare-fun b!3725504 () Bool)

(assert (=> b!3725504 (= e!2305685 ((as const (Array C!22000 Bool)) false))))

(declare-fun b!3725505 () Bool)

(assert (=> b!3725505 (= e!2305685 ((_ map or) (store ((as const (Array C!22000 Bool)) false) (h!45084 (usedCharacters!1170 (regOne!22327 r!26968))) true) (content!5764 (t!302471 (usedCharacters!1170 (regOne!22327 r!26968))))))))

(assert (= (and d!1089809 c!644547) b!3725504))

(assert (= (and d!1089809 (not c!644547)) b!3725505))

(declare-fun m!4227543 () Bool)

(assert (=> b!3725505 m!4227543))

(assert (=> b!3725505 m!4227457))

(assert (=> d!1089777 d!1089809))

(declare-fun c!644548 () Bool)

(declare-fun call!271311 () List!39788)

(declare-fun c!644549 () Bool)

(declare-fun bm!271304 () Bool)

(assert (=> bm!271304 (= call!271311 (usedCharacters!1170 (ite c!644548 (reg!11236 (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))) (ite c!644549 (regTwo!22327 (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))) (regOne!22326 (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))))))))

(declare-fun b!3725506 () Bool)

(declare-fun e!2305687 () List!39788)

(declare-fun call!271310 () List!39788)

(assert (=> b!3725506 (= e!2305687 call!271310)))

(declare-fun b!3725507 () Bool)

(assert (=> b!3725507 (= c!644548 ((_ is Star!10907) (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))))))

(declare-fun e!2305689 () List!39788)

(declare-fun e!2305688 () List!39788)

(assert (=> b!3725507 (= e!2305689 e!2305688)))

(declare-fun b!3725508 () Bool)

(assert (=> b!3725508 (= e!2305688 e!2305687)))

(assert (=> b!3725508 (= c!644549 ((_ is Union!10907) (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))))))

(declare-fun b!3725509 () Bool)

(assert (=> b!3725509 (= e!2305688 call!271311)))

(declare-fun bm!271305 () Bool)

(declare-fun call!271312 () List!39788)

(assert (=> bm!271305 (= call!271312 (usedCharacters!1170 (ite c!644549 (regOne!22327 (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))) (regTwo!22326 (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))))))))

(declare-fun b!3725511 () Bool)

(declare-fun e!2305686 () List!39788)

(assert (=> b!3725511 (= e!2305686 e!2305689)))

(declare-fun c!644551 () Bool)

(assert (=> b!3725511 (= c!644551 ((_ is ElementMatch!10907) (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))))))

(declare-fun b!3725512 () Bool)

(assert (=> b!3725512 (= e!2305686 Nil!39664)))

(declare-fun b!3725513 () Bool)

(assert (=> b!3725513 (= e!2305689 (Cons!39664 (c!644419 (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))) Nil!39664))))

(declare-fun call!271309 () List!39788)

(declare-fun bm!271306 () Bool)

(assert (=> bm!271306 (= call!271310 (++!9831 (ite c!644549 call!271312 call!271309) (ite c!644549 call!271309 call!271312)))))

(declare-fun bm!271307 () Bool)

(assert (=> bm!271307 (= call!271309 call!271311)))

(declare-fun b!3725510 () Bool)

(assert (=> b!3725510 (= e!2305687 call!271310)))

(declare-fun d!1089813 () Bool)

(declare-fun c!644550 () Bool)

(assert (=> d!1089813 (= c!644550 (or ((_ is EmptyExpr!10907) (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))) ((_ is EmptyLang!10907) (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968))))))))

(assert (=> d!1089813 (= (usedCharacters!1170 (ite c!644501 (regOne!22327 (regOne!22327 r!26968)) (regTwo!22326 (regOne!22327 r!26968)))) e!2305686)))

(assert (= (and d!1089813 c!644550) b!3725512))

(assert (= (and d!1089813 (not c!644550)) b!3725511))

(assert (= (and b!3725511 c!644551) b!3725513))

(assert (= (and b!3725511 (not c!644551)) b!3725507))

(assert (= (and b!3725507 c!644548) b!3725509))

(assert (= (and b!3725507 (not c!644548)) b!3725508))

(assert (= (and b!3725508 c!644549) b!3725510))

(assert (= (and b!3725508 (not c!644549)) b!3725506))

(assert (= (or b!3725510 b!3725506) bm!271305))

(assert (= (or b!3725510 b!3725506) bm!271307))

(assert (= (or b!3725510 b!3725506) bm!271306))

(assert (= (or b!3725509 bm!271307) bm!271304))

(declare-fun m!4227549 () Bool)

(assert (=> bm!271304 m!4227549))

(declare-fun m!4227551 () Bool)

(assert (=> bm!271305 m!4227551))

(declare-fun m!4227553 () Bool)

(assert (=> bm!271306 m!4227553))

(assert (=> bm!271265 d!1089813))

(declare-fun d!1089817 () Bool)

(declare-fun c!644556 () Bool)

(assert (=> d!1089817 (= c!644556 ((_ is Nil!39664) (usedCharacters!1170 r!26968)))))

(declare-fun e!2305694 () (InoxSet C!22000))

(assert (=> d!1089817 (= (content!5764 (usedCharacters!1170 r!26968)) e!2305694)))

(declare-fun b!3725522 () Bool)

(assert (=> b!3725522 (= e!2305694 ((as const (Array C!22000 Bool)) false))))

(declare-fun b!3725523 () Bool)

(assert (=> b!3725523 (= e!2305694 ((_ map or) (store ((as const (Array C!22000 Bool)) false) (h!45084 (usedCharacters!1170 r!26968)) true) (content!5764 (t!302471 (usedCharacters!1170 r!26968)))))))

(assert (= (and d!1089817 c!644556) b!3725522))

(assert (= (and d!1089817 (not c!644556)) b!3725523))

(declare-fun m!4227557 () Bool)

(assert (=> b!3725523 m!4227557))

(assert (=> b!3725523 m!4227533))

(assert (=> d!1089759 d!1089817))

(declare-fun b!3725524 () Bool)

(declare-fun e!2305699 () Int)

(assert (=> b!3725524 (= e!2305699 1)))

(declare-fun b!3725525 () Bool)

(declare-fun e!2305696 () Int)

(declare-fun call!271318 () Int)

(declare-fun call!271317 () Int)

(assert (=> b!3725525 (= e!2305696 (+ 1 call!271318 call!271317))))

(declare-fun b!3725526 () Bool)

(declare-fun e!2305695 () Int)

(declare-fun e!2305698 () Int)

(assert (=> b!3725526 (= e!2305695 e!2305698)))

(declare-fun c!644561 () Bool)

(assert (=> b!3725526 (= c!644561 ((_ is Star!10907) (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))))))

(declare-fun bm!271312 () Bool)

(declare-fun c!644558 () Bool)

(assert (=> bm!271312 (= call!271318 (RegexPrimitiveSize!139 (ite c!644558 (regOne!22326 (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))) (regTwo!22327 (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))))))))

(declare-fun b!3725527 () Bool)

(declare-fun e!2305697 () Int)

(assert (=> b!3725527 (= e!2305697 0)))

(declare-fun d!1089819 () Bool)

(declare-fun lt!1298344 () Int)

(assert (=> d!1089819 (>= lt!1298344 0)))

(assert (=> d!1089819 (= lt!1298344 e!2305699)))

(declare-fun c!644559 () Bool)

(assert (=> d!1089819 (= c!644559 ((_ is ElementMatch!10907) (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))))))

(assert (=> d!1089819 (= (RegexPrimitiveSize!139 (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))) lt!1298344)))

(declare-fun bm!271313 () Bool)

(assert (=> bm!271313 (= call!271317 (RegexPrimitiveSize!139 (ite c!644558 (regTwo!22326 (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))) (ite c!644561 (reg!11236 (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))) (regOne!22327 (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968))))))))))

(declare-fun b!3725528 () Bool)

(declare-fun c!644560 () Bool)

(assert (=> b!3725528 (= c!644560 ((_ is EmptyLang!10907) (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))))))

(assert (=> b!3725528 (= e!2305698 e!2305697)))

(declare-fun b!3725529 () Bool)

(declare-fun call!271319 () Int)

(assert (=> b!3725529 (= e!2305698 (+ 1 call!271319))))

(declare-fun b!3725530 () Bool)

(assert (=> b!3725530 (= e!2305697 (+ 1 call!271319 call!271318))))

(declare-fun bm!271314 () Bool)

(assert (=> bm!271314 (= call!271319 call!271317)))

(declare-fun b!3725531 () Bool)

(declare-fun c!644557 () Bool)

(assert (=> b!3725531 (= c!644557 ((_ is EmptyExpr!10907) (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))))))

(assert (=> b!3725531 (= e!2305696 e!2305695)))

(declare-fun b!3725532 () Bool)

(assert (=> b!3725532 (= e!2305699 e!2305696)))

(assert (=> b!3725532 (= c!644558 ((_ is Concat!17178) (ite c!644496 (regTwo!22326 r!26968) (ite c!644499 (reg!11236 r!26968) (regOne!22327 r!26968)))))))

(declare-fun b!3725533 () Bool)

(assert (=> b!3725533 (= e!2305695 0)))

(assert (= (and d!1089819 c!644559) b!3725524))

(assert (= (and d!1089819 (not c!644559)) b!3725532))

(assert (= (and b!3725532 c!644558) b!3725525))

(assert (= (and b!3725532 (not c!644558)) b!3725531))

(assert (= (and b!3725531 c!644557) b!3725533))

(assert (= (and b!3725531 (not c!644557)) b!3725526))

(assert (= (and b!3725526 c!644561) b!3725529))

(assert (= (and b!3725526 (not c!644561)) b!3725528))

(assert (= (and b!3725528 c!644560) b!3725527))

(assert (= (and b!3725528 (not c!644560)) b!3725530))

(assert (= (or b!3725529 b!3725530) bm!271314))

(assert (= (or b!3725525 b!3725530) bm!271312))

(assert (= (or b!3725525 bm!271314) bm!271313))

(declare-fun m!4227563 () Bool)

(assert (=> bm!271312 m!4227563))

(declare-fun m!4227565 () Bool)

(assert (=> bm!271313 m!4227565))

(assert (=> bm!271262 d!1089819))

(declare-fun b!3725543 () Bool)

(declare-fun e!2305711 () Bool)

(declare-fun e!2305708 () Bool)

(assert (=> b!3725543 (= e!2305711 e!2305708)))

(declare-fun res!1513538 () Bool)

(assert (=> b!3725543 (= res!1513538 (not (nullable!3814 (reg!11236 (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))))))))

(assert (=> b!3725543 (=> (not res!1513538) (not e!2305708))))

(declare-fun d!1089823 () Bool)

(declare-fun res!1513537 () Bool)

(declare-fun e!2305710 () Bool)

(assert (=> d!1089823 (=> res!1513537 e!2305710)))

(assert (=> d!1089823 (= res!1513537 ((_ is ElementMatch!10907) (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))))))

(assert (=> d!1089823 (= (validRegex!5014 (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))) e!2305710)))

(declare-fun b!3725544 () Bool)

(declare-fun e!2305713 () Bool)

(assert (=> b!3725544 (= e!2305711 e!2305713)))

(declare-fun c!644564 () Bool)

(assert (=> b!3725544 (= c!644564 ((_ is Union!10907) (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))))))

(declare-fun bm!271318 () Bool)

(declare-fun call!271324 () Bool)

(declare-fun call!271325 () Bool)

(assert (=> bm!271318 (= call!271324 call!271325)))

(declare-fun b!3725545 () Bool)

(declare-fun e!2305707 () Bool)

(assert (=> b!3725545 (= e!2305707 call!271324)))

(declare-fun b!3725546 () Bool)

(declare-fun res!1513536 () Bool)

(assert (=> b!3725546 (=> (not res!1513536) (not e!2305707))))

(declare-fun call!271323 () Bool)

(assert (=> b!3725546 (= res!1513536 call!271323)))

(assert (=> b!3725546 (= e!2305713 e!2305707)))

(declare-fun bm!271319 () Bool)

(declare-fun c!644565 () Bool)

(assert (=> bm!271319 (= call!271325 (validRegex!5014 (ite c!644565 (reg!11236 (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))) (ite c!644564 (regTwo!22327 (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))) (regTwo!22326 (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))))))))

(declare-fun b!3725547 () Bool)

(declare-fun e!2305712 () Bool)

(declare-fun e!2305709 () Bool)

(assert (=> b!3725547 (= e!2305712 e!2305709)))

(declare-fun res!1513539 () Bool)

(assert (=> b!3725547 (=> (not res!1513539) (not e!2305709))))

(assert (=> b!3725547 (= res!1513539 call!271323)))

(declare-fun bm!271320 () Bool)

(assert (=> bm!271320 (= call!271323 (validRegex!5014 (ite c!644564 (regOne!22327 (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))) (regOne!22326 (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))))))))

(declare-fun b!3725548 () Bool)

(assert (=> b!3725548 (= e!2305709 call!271324)))

(declare-fun b!3725549 () Bool)

(assert (=> b!3725549 (= e!2305708 call!271325)))

(declare-fun b!3725550 () Bool)

(assert (=> b!3725550 (= e!2305710 e!2305711)))

(assert (=> b!3725550 (= c!644565 ((_ is Star!10907) (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968)))))))

(declare-fun b!3725551 () Bool)

(declare-fun res!1513535 () Bool)

(assert (=> b!3725551 (=> res!1513535 e!2305712)))

(assert (=> b!3725551 (= res!1513535 (not ((_ is Concat!17178) (ite c!644432 (regOne!22327 (regOne!22327 r!26968)) (regOne!22326 (regOne!22327 r!26968))))))))

(assert (=> b!3725551 (= e!2305713 e!2305712)))

(assert (= (and d!1089823 (not res!1513537)) b!3725550))

(assert (= (and b!3725550 c!644565) b!3725543))

(assert (= (and b!3725550 (not c!644565)) b!3725544))

(assert (= (and b!3725543 res!1513538) b!3725549))

(assert (= (and b!3725544 c!644564) b!3725546))

(assert (= (and b!3725544 (not c!644564)) b!3725551))

(assert (= (and b!3725546 res!1513536) b!3725545))

(assert (= (and b!3725551 (not res!1513535)) b!3725547))

(assert (= (and b!3725547 res!1513539) b!3725548))

(assert (= (or b!3725545 b!3725548) bm!271318))

(assert (= (or b!3725546 b!3725547) bm!271320))

(assert (= (or b!3725549 bm!271318) bm!271319))

(declare-fun m!4227573 () Bool)

(assert (=> b!3725543 m!4227573))

(declare-fun m!4227575 () Bool)

(assert (=> bm!271319 m!4227575))

(declare-fun m!4227577 () Bool)

(assert (=> bm!271320 m!4227577))

(assert (=> bm!271202 d!1089823))

(declare-fun c!644567 () Bool)

(declare-fun c!644566 () Bool)

(declare-fun call!271328 () List!39788)

(declare-fun bm!271321 () Bool)

(assert (=> bm!271321 (= call!271328 (usedCharacters!1170 (ite c!644566 (reg!11236 (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))) (ite c!644567 (regTwo!22327 (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))) (regOne!22326 (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968)))))))))

(declare-fun b!3725552 () Bool)

(declare-fun e!2305715 () List!39788)

(declare-fun call!271327 () List!39788)

(assert (=> b!3725552 (= e!2305715 call!271327)))

(declare-fun b!3725553 () Bool)

(assert (=> b!3725553 (= c!644566 ((_ is Star!10907) (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))))))

(declare-fun e!2305717 () List!39788)

(declare-fun e!2305716 () List!39788)

(assert (=> b!3725553 (= e!2305717 e!2305716)))

(declare-fun b!3725554 () Bool)

(assert (=> b!3725554 (= e!2305716 e!2305715)))

(assert (=> b!3725554 (= c!644567 ((_ is Union!10907) (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))))))

(declare-fun b!3725555 () Bool)

(assert (=> b!3725555 (= e!2305716 call!271328)))

(declare-fun call!271329 () List!39788)

(declare-fun bm!271322 () Bool)

(assert (=> bm!271322 (= call!271329 (usedCharacters!1170 (ite c!644567 (regOne!22327 (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))) (regTwo!22326 (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))))))))

(declare-fun b!3725557 () Bool)

(declare-fun e!2305714 () List!39788)

(assert (=> b!3725557 (= e!2305714 e!2305717)))

(declare-fun c!644569 () Bool)

(assert (=> b!3725557 (= c!644569 ((_ is ElementMatch!10907) (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))))))

(declare-fun b!3725558 () Bool)

(assert (=> b!3725558 (= e!2305714 Nil!39664)))

(declare-fun b!3725559 () Bool)

(assert (=> b!3725559 (= e!2305717 (Cons!39664 (c!644419 (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))) Nil!39664))))

(declare-fun call!271326 () List!39788)

(declare-fun bm!271323 () Bool)

(assert (=> bm!271323 (= call!271327 (++!9831 (ite c!644567 call!271329 call!271326) (ite c!644567 call!271326 call!271329)))))

(declare-fun bm!271324 () Bool)

(assert (=> bm!271324 (= call!271326 call!271328)))

(declare-fun b!3725556 () Bool)

(assert (=> b!3725556 (= e!2305715 call!271327)))

(declare-fun d!1089827 () Bool)

(declare-fun c!644568 () Bool)

(assert (=> d!1089827 (= c!644568 (or ((_ is EmptyExpr!10907) (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))) ((_ is EmptyLang!10907) (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968)))))))

(assert (=> d!1089827 (= (usedCharacters!1170 (ite c!644459 (regOne!22327 r!26968) (regTwo!22326 r!26968))) e!2305714)))

(assert (= (and d!1089827 c!644568) b!3725558))

(assert (= (and d!1089827 (not c!644568)) b!3725557))

(assert (= (and b!3725557 c!644569) b!3725559))

(assert (= (and b!3725557 (not c!644569)) b!3725553))

(assert (= (and b!3725553 c!644566) b!3725555))

(assert (= (and b!3725553 (not c!644566)) b!3725554))

(assert (= (and b!3725554 c!644567) b!3725556))

(assert (= (and b!3725554 (not c!644567)) b!3725552))

(assert (= (or b!3725556 b!3725552) bm!271322))

(assert (= (or b!3725556 b!3725552) bm!271324))

(assert (= (or b!3725556 b!3725552) bm!271323))

(assert (= (or b!3725555 bm!271324) bm!271321))

(declare-fun m!4227579 () Bool)

(assert (=> bm!271321 m!4227579))

(declare-fun m!4227581 () Bool)

(assert (=> bm!271322 m!4227581))

(declare-fun m!4227583 () Bool)

(assert (=> bm!271323 m!4227583))

(assert (=> bm!271233 d!1089827))

(declare-fun d!1089829 () Bool)

(assert (=> d!1089829 (= (nullable!3814 (reg!11236 r!26968)) (nullableFct!1078 (reg!11236 r!26968)))))

(declare-fun bs!575025 () Bool)

(assert (= bs!575025 d!1089829))

(declare-fun m!4227585 () Bool)

(assert (=> bs!575025 m!4227585))

(assert (=> b!3725156 d!1089829))

(declare-fun b!3725564 () Bool)

(declare-fun e!2305720 () Bool)

(assert (=> b!3725564 (= e!2305720 tp_is_empty!18829)))

(declare-fun b!3725567 () Bool)

(declare-fun tp!1133308 () Bool)

(declare-fun tp!1133306 () Bool)

(assert (=> b!3725567 (= e!2305720 (and tp!1133308 tp!1133306))))

(declare-fun b!3725566 () Bool)

(declare-fun tp!1133305 () Bool)

(assert (=> b!3725566 (= e!2305720 tp!1133305)))

(declare-fun b!3725565 () Bool)

(declare-fun tp!1133307 () Bool)

(declare-fun tp!1133309 () Bool)

(assert (=> b!3725565 (= e!2305720 (and tp!1133307 tp!1133309))))

(assert (=> b!3725370 (= tp!1133268 e!2305720)))

(assert (= (and b!3725370 ((_ is ElementMatch!10907) (regOne!22327 (reg!11236 r!26968)))) b!3725564))

(assert (= (and b!3725370 ((_ is Concat!17178) (regOne!22327 (reg!11236 r!26968)))) b!3725565))

(assert (= (and b!3725370 ((_ is Star!10907) (regOne!22327 (reg!11236 r!26968)))) b!3725566))

(assert (= (and b!3725370 ((_ is Union!10907) (regOne!22327 (reg!11236 r!26968)))) b!3725567))

(declare-fun b!3725568 () Bool)

(declare-fun e!2305721 () Bool)

(assert (=> b!3725568 (= e!2305721 tp_is_empty!18829)))

(declare-fun b!3725571 () Bool)

(declare-fun tp!1133313 () Bool)

(declare-fun tp!1133311 () Bool)

(assert (=> b!3725571 (= e!2305721 (and tp!1133313 tp!1133311))))

(declare-fun b!3725570 () Bool)

(declare-fun tp!1133310 () Bool)

(assert (=> b!3725570 (= e!2305721 tp!1133310)))

(declare-fun b!3725569 () Bool)

(declare-fun tp!1133312 () Bool)

(declare-fun tp!1133314 () Bool)

(assert (=> b!3725569 (= e!2305721 (and tp!1133312 tp!1133314))))

(assert (=> b!3725370 (= tp!1133266 e!2305721)))

(assert (= (and b!3725370 ((_ is ElementMatch!10907) (regTwo!22327 (reg!11236 r!26968)))) b!3725568))

(assert (= (and b!3725370 ((_ is Concat!17178) (regTwo!22327 (reg!11236 r!26968)))) b!3725569))

(assert (= (and b!3725370 ((_ is Star!10907) (regTwo!22327 (reg!11236 r!26968)))) b!3725570))

(assert (= (and b!3725370 ((_ is Union!10907) (regTwo!22327 (reg!11236 r!26968)))) b!3725571))

(declare-fun b!3725572 () Bool)

(declare-fun e!2305722 () Bool)

(assert (=> b!3725572 (= e!2305722 tp_is_empty!18829)))

(declare-fun b!3725575 () Bool)

(declare-fun tp!1133318 () Bool)

(declare-fun tp!1133316 () Bool)

(assert (=> b!3725575 (= e!2305722 (and tp!1133318 tp!1133316))))

(declare-fun b!3725574 () Bool)

(declare-fun tp!1133315 () Bool)

(assert (=> b!3725574 (= e!2305722 tp!1133315)))

(declare-fun b!3725573 () Bool)

(declare-fun tp!1133317 () Bool)

(declare-fun tp!1133319 () Bool)

(assert (=> b!3725573 (= e!2305722 (and tp!1133317 tp!1133319))))

(assert (=> b!3725358 (= tp!1133248 e!2305722)))

(assert (= (and b!3725358 ((_ is ElementMatch!10907) (regOne!22327 (regOne!22327 r!26968)))) b!3725572))

(assert (= (and b!3725358 ((_ is Concat!17178) (regOne!22327 (regOne!22327 r!26968)))) b!3725573))

(assert (= (and b!3725358 ((_ is Star!10907) (regOne!22327 (regOne!22327 r!26968)))) b!3725574))

(assert (= (and b!3725358 ((_ is Union!10907) (regOne!22327 (regOne!22327 r!26968)))) b!3725575))

(declare-fun b!3725576 () Bool)

(declare-fun e!2305723 () Bool)

(assert (=> b!3725576 (= e!2305723 tp_is_empty!18829)))

(declare-fun b!3725579 () Bool)

(declare-fun tp!1133323 () Bool)

(declare-fun tp!1133321 () Bool)

(assert (=> b!3725579 (= e!2305723 (and tp!1133323 tp!1133321))))

(declare-fun b!3725578 () Bool)

(declare-fun tp!1133320 () Bool)

(assert (=> b!3725578 (= e!2305723 tp!1133320)))

(declare-fun b!3725577 () Bool)

(declare-fun tp!1133322 () Bool)

(declare-fun tp!1133324 () Bool)

(assert (=> b!3725577 (= e!2305723 (and tp!1133322 tp!1133324))))

(assert (=> b!3725358 (= tp!1133246 e!2305723)))

(assert (= (and b!3725358 ((_ is ElementMatch!10907) (regTwo!22327 (regOne!22327 r!26968)))) b!3725576))

(assert (= (and b!3725358 ((_ is Concat!17178) (regTwo!22327 (regOne!22327 r!26968)))) b!3725577))

(assert (= (and b!3725358 ((_ is Star!10907) (regTwo!22327 (regOne!22327 r!26968)))) b!3725578))

(assert (= (and b!3725358 ((_ is Union!10907) (regTwo!22327 (regOne!22327 r!26968)))) b!3725579))

(declare-fun b!3725582 () Bool)

(declare-fun e!2305725 () Bool)

(assert (=> b!3725582 (= e!2305725 tp_is_empty!18829)))

(declare-fun b!3725585 () Bool)

(declare-fun tp!1133328 () Bool)

(declare-fun tp!1133326 () Bool)

(assert (=> b!3725585 (= e!2305725 (and tp!1133328 tp!1133326))))

(declare-fun b!3725584 () Bool)

(declare-fun tp!1133325 () Bool)

(assert (=> b!3725584 (= e!2305725 tp!1133325)))

(declare-fun b!3725583 () Bool)

(declare-fun tp!1133327 () Bool)

(declare-fun tp!1133329 () Bool)

(assert (=> b!3725583 (= e!2305725 (and tp!1133327 tp!1133329))))

(assert (=> b!3725378 (= tp!1133278 e!2305725)))

(assert (= (and b!3725378 ((_ is ElementMatch!10907) (regOne!22327 (regTwo!22326 r!26968)))) b!3725582))

(assert (= (and b!3725378 ((_ is Concat!17178) (regOne!22327 (regTwo!22326 r!26968)))) b!3725583))

(assert (= (and b!3725378 ((_ is Star!10907) (regOne!22327 (regTwo!22326 r!26968)))) b!3725584))

(assert (= (and b!3725378 ((_ is Union!10907) (regOne!22327 (regTwo!22326 r!26968)))) b!3725585))

(declare-fun b!3725586 () Bool)

(declare-fun e!2305726 () Bool)

(assert (=> b!3725586 (= e!2305726 tp_is_empty!18829)))

(declare-fun b!3725589 () Bool)

(declare-fun tp!1133333 () Bool)

(declare-fun tp!1133331 () Bool)

(assert (=> b!3725589 (= e!2305726 (and tp!1133333 tp!1133331))))

(declare-fun b!3725588 () Bool)

(declare-fun tp!1133330 () Bool)

(assert (=> b!3725588 (= e!2305726 tp!1133330)))

(declare-fun b!3725587 () Bool)

(declare-fun tp!1133332 () Bool)

(declare-fun tp!1133334 () Bool)

(assert (=> b!3725587 (= e!2305726 (and tp!1133332 tp!1133334))))

(assert (=> b!3725378 (= tp!1133276 e!2305726)))

(assert (= (and b!3725378 ((_ is ElementMatch!10907) (regTwo!22327 (regTwo!22326 r!26968)))) b!3725586))

(assert (= (and b!3725378 ((_ is Concat!17178) (regTwo!22327 (regTwo!22326 r!26968)))) b!3725587))

(assert (= (and b!3725378 ((_ is Star!10907) (regTwo!22327 (regTwo!22326 r!26968)))) b!3725588))

(assert (= (and b!3725378 ((_ is Union!10907) (regTwo!22327 (regTwo!22326 r!26968)))) b!3725589))

(declare-fun b!3725590 () Bool)

(declare-fun e!2305731 () Bool)

(assert (=> b!3725590 (= e!2305731 tp_is_empty!18829)))

(declare-fun b!3725593 () Bool)

(declare-fun tp!1133338 () Bool)

(declare-fun tp!1133336 () Bool)

(assert (=> b!3725593 (= e!2305731 (and tp!1133338 tp!1133336))))

(declare-fun b!3725592 () Bool)

(declare-fun tp!1133335 () Bool)

(assert (=> b!3725592 (= e!2305731 tp!1133335)))

(declare-fun b!3725591 () Bool)

(declare-fun tp!1133337 () Bool)

(declare-fun tp!1133339 () Bool)

(assert (=> b!3725591 (= e!2305731 (and tp!1133337 tp!1133339))))

(assert (=> b!3725366 (= tp!1133261 e!2305731)))

(assert (= (and b!3725366 ((_ is ElementMatch!10907) (regOne!22327 (regTwo!22327 r!26968)))) b!3725590))

(assert (= (and b!3725366 ((_ is Concat!17178) (regOne!22327 (regTwo!22327 r!26968)))) b!3725591))

(assert (= (and b!3725366 ((_ is Star!10907) (regOne!22327 (regTwo!22327 r!26968)))) b!3725592))

(assert (= (and b!3725366 ((_ is Union!10907) (regOne!22327 (regTwo!22327 r!26968)))) b!3725593))

(declare-fun b!3725603 () Bool)

(declare-fun e!2305735 () Bool)

(assert (=> b!3725603 (= e!2305735 tp_is_empty!18829)))

(declare-fun b!3725606 () Bool)

(declare-fun tp!1133343 () Bool)

(declare-fun tp!1133341 () Bool)

(assert (=> b!3725606 (= e!2305735 (and tp!1133343 tp!1133341))))

(declare-fun b!3725605 () Bool)

(declare-fun tp!1133340 () Bool)

(assert (=> b!3725605 (= e!2305735 tp!1133340)))

(declare-fun b!3725604 () Bool)

(declare-fun tp!1133342 () Bool)

(declare-fun tp!1133344 () Bool)

(assert (=> b!3725604 (= e!2305735 (and tp!1133342 tp!1133344))))

(assert (=> b!3725366 (= tp!1133259 e!2305735)))

(assert (= (and b!3725366 ((_ is ElementMatch!10907) (regTwo!22327 (regTwo!22327 r!26968)))) b!3725603))

(assert (= (and b!3725366 ((_ is Concat!17178) (regTwo!22327 (regTwo!22327 r!26968)))) b!3725604))

(assert (= (and b!3725366 ((_ is Star!10907) (regTwo!22327 (regTwo!22327 r!26968)))) b!3725605))

(assert (= (and b!3725366 ((_ is Union!10907) (regTwo!22327 (regTwo!22327 r!26968)))) b!3725606))

(declare-fun b!3725607 () Bool)

(declare-fun e!2305736 () Bool)

(assert (=> b!3725607 (= e!2305736 tp_is_empty!18829)))

(declare-fun b!3725610 () Bool)

(declare-fun tp!1133348 () Bool)

(declare-fun tp!1133346 () Bool)

(assert (=> b!3725610 (= e!2305736 (and tp!1133348 tp!1133346))))

(declare-fun b!3725609 () Bool)

(declare-fun tp!1133345 () Bool)

(assert (=> b!3725609 (= e!2305736 tp!1133345)))

(declare-fun b!3725608 () Bool)

(declare-fun tp!1133347 () Bool)

(declare-fun tp!1133349 () Bool)

(assert (=> b!3725608 (= e!2305736 (and tp!1133347 tp!1133349))))

(assert (=> b!3725373 (= tp!1133270 e!2305736)))

(assert (= (and b!3725373 ((_ is ElementMatch!10907) (reg!11236 (regOne!22326 r!26968)))) b!3725607))

(assert (= (and b!3725373 ((_ is Concat!17178) (reg!11236 (regOne!22326 r!26968)))) b!3725608))

(assert (= (and b!3725373 ((_ is Star!10907) (reg!11236 (regOne!22326 r!26968)))) b!3725609))

(assert (= (and b!3725373 ((_ is Union!10907) (reg!11236 (regOne!22326 r!26968)))) b!3725610))

(declare-fun b!3725611 () Bool)

(declare-fun e!2305737 () Bool)

(assert (=> b!3725611 (= e!2305737 tp_is_empty!18829)))

(declare-fun b!3725614 () Bool)

(declare-fun tp!1133353 () Bool)

(declare-fun tp!1133351 () Bool)

(assert (=> b!3725614 (= e!2305737 (and tp!1133353 tp!1133351))))

(declare-fun b!3725613 () Bool)

(declare-fun tp!1133350 () Bool)

(assert (=> b!3725613 (= e!2305737 tp!1133350)))

(declare-fun b!3725612 () Bool)

(declare-fun tp!1133352 () Bool)

(declare-fun tp!1133354 () Bool)

(assert (=> b!3725612 (= e!2305737 (and tp!1133352 tp!1133354))))

(assert (=> b!3725374 (= tp!1133273 e!2305737)))

(assert (= (and b!3725374 ((_ is ElementMatch!10907) (regOne!22327 (regOne!22326 r!26968)))) b!3725611))

(assert (= (and b!3725374 ((_ is Concat!17178) (regOne!22327 (regOne!22326 r!26968)))) b!3725612))

(assert (= (and b!3725374 ((_ is Star!10907) (regOne!22327 (regOne!22326 r!26968)))) b!3725613))

(assert (= (and b!3725374 ((_ is Union!10907) (regOne!22327 (regOne!22326 r!26968)))) b!3725614))

(declare-fun b!3725615 () Bool)

(declare-fun e!2305738 () Bool)

(assert (=> b!3725615 (= e!2305738 tp_is_empty!18829)))

(declare-fun b!3725618 () Bool)

(declare-fun tp!1133358 () Bool)

(declare-fun tp!1133356 () Bool)

(assert (=> b!3725618 (= e!2305738 (and tp!1133358 tp!1133356))))

(declare-fun b!3725617 () Bool)

(declare-fun tp!1133355 () Bool)

(assert (=> b!3725617 (= e!2305738 tp!1133355)))

(declare-fun b!3725616 () Bool)

(declare-fun tp!1133357 () Bool)

(declare-fun tp!1133359 () Bool)

(assert (=> b!3725616 (= e!2305738 (and tp!1133357 tp!1133359))))

(assert (=> b!3725374 (= tp!1133271 e!2305738)))

(assert (= (and b!3725374 ((_ is ElementMatch!10907) (regTwo!22327 (regOne!22326 r!26968)))) b!3725615))

(assert (= (and b!3725374 ((_ is Concat!17178) (regTwo!22327 (regOne!22326 r!26968)))) b!3725616))

(assert (= (and b!3725374 ((_ is Star!10907) (regTwo!22327 (regOne!22326 r!26968)))) b!3725617))

(assert (= (and b!3725374 ((_ is Union!10907) (regTwo!22327 (regOne!22326 r!26968)))) b!3725618))

(declare-fun b!3725619 () Bool)

(declare-fun e!2305739 () Bool)

(assert (=> b!3725619 (= e!2305739 tp_is_empty!18829)))

(declare-fun b!3725622 () Bool)

(declare-fun tp!1133363 () Bool)

(declare-fun tp!1133361 () Bool)

(assert (=> b!3725622 (= e!2305739 (and tp!1133363 tp!1133361))))

(declare-fun b!3725621 () Bool)

(declare-fun tp!1133360 () Bool)

(assert (=> b!3725621 (= e!2305739 tp!1133360)))

(declare-fun b!3725620 () Bool)

(declare-fun tp!1133362 () Bool)

(declare-fun tp!1133364 () Bool)

(assert (=> b!3725620 (= e!2305739 (and tp!1133362 tp!1133364))))

(assert (=> b!3725369 (= tp!1133265 e!2305739)))

(assert (= (and b!3725369 ((_ is ElementMatch!10907) (reg!11236 (reg!11236 r!26968)))) b!3725619))

(assert (= (and b!3725369 ((_ is Concat!17178) (reg!11236 (reg!11236 r!26968)))) b!3725620))

(assert (= (and b!3725369 ((_ is Star!10907) (reg!11236 (reg!11236 r!26968)))) b!3725621))

(assert (= (and b!3725369 ((_ is Union!10907) (reg!11236 (reg!11236 r!26968)))) b!3725622))

(declare-fun b!3725623 () Bool)

(declare-fun e!2305740 () Bool)

(assert (=> b!3725623 (= e!2305740 tp_is_empty!18829)))

(declare-fun b!3725626 () Bool)

(declare-fun tp!1133368 () Bool)

(declare-fun tp!1133366 () Bool)

(assert (=> b!3725626 (= e!2305740 (and tp!1133368 tp!1133366))))

(declare-fun b!3725625 () Bool)

(declare-fun tp!1133365 () Bool)

(assert (=> b!3725625 (= e!2305740 tp!1133365)))

(declare-fun b!3725624 () Bool)

(declare-fun tp!1133367 () Bool)

(declare-fun tp!1133369 () Bool)

(assert (=> b!3725624 (= e!2305740 (and tp!1133367 tp!1133369))))

(assert (=> b!3725357 (= tp!1133245 e!2305740)))

(assert (= (and b!3725357 ((_ is ElementMatch!10907) (reg!11236 (regOne!22327 r!26968)))) b!3725623))

(assert (= (and b!3725357 ((_ is Concat!17178) (reg!11236 (regOne!22327 r!26968)))) b!3725624))

(assert (= (and b!3725357 ((_ is Star!10907) (reg!11236 (regOne!22327 r!26968)))) b!3725625))

(assert (= (and b!3725357 ((_ is Union!10907) (reg!11236 (regOne!22327 r!26968)))) b!3725626))

(declare-fun b!3725627 () Bool)

(declare-fun e!2305741 () Bool)

(assert (=> b!3725627 (= e!2305741 tp_is_empty!18829)))

(declare-fun b!3725630 () Bool)

(declare-fun tp!1133373 () Bool)

(declare-fun tp!1133371 () Bool)

(assert (=> b!3725630 (= e!2305741 (and tp!1133373 tp!1133371))))

(declare-fun b!3725629 () Bool)

(declare-fun tp!1133370 () Bool)

(assert (=> b!3725629 (= e!2305741 tp!1133370)))

(declare-fun b!3725628 () Bool)

(declare-fun tp!1133372 () Bool)

(declare-fun tp!1133374 () Bool)

(assert (=> b!3725628 (= e!2305741 (and tp!1133372 tp!1133374))))

(assert (=> b!3725372 (= tp!1133272 e!2305741)))

(assert (= (and b!3725372 ((_ is ElementMatch!10907) (regOne!22326 (regOne!22326 r!26968)))) b!3725627))

(assert (= (and b!3725372 ((_ is Concat!17178) (regOne!22326 (regOne!22326 r!26968)))) b!3725628))

(assert (= (and b!3725372 ((_ is Star!10907) (regOne!22326 (regOne!22326 r!26968)))) b!3725629))

(assert (= (and b!3725372 ((_ is Union!10907) (regOne!22326 (regOne!22326 r!26968)))) b!3725630))

(declare-fun b!3725631 () Bool)

(declare-fun e!2305742 () Bool)

(assert (=> b!3725631 (= e!2305742 tp_is_empty!18829)))

(declare-fun b!3725634 () Bool)

(declare-fun tp!1133378 () Bool)

(declare-fun tp!1133376 () Bool)

(assert (=> b!3725634 (= e!2305742 (and tp!1133378 tp!1133376))))

(declare-fun b!3725633 () Bool)

(declare-fun tp!1133375 () Bool)

(assert (=> b!3725633 (= e!2305742 tp!1133375)))

(declare-fun b!3725632 () Bool)

(declare-fun tp!1133377 () Bool)

(declare-fun tp!1133379 () Bool)

(assert (=> b!3725632 (= e!2305742 (and tp!1133377 tp!1133379))))

(assert (=> b!3725372 (= tp!1133274 e!2305742)))

(assert (= (and b!3725372 ((_ is ElementMatch!10907) (regTwo!22326 (regOne!22326 r!26968)))) b!3725631))

(assert (= (and b!3725372 ((_ is Concat!17178) (regTwo!22326 (regOne!22326 r!26968)))) b!3725632))

(assert (= (and b!3725372 ((_ is Star!10907) (regTwo!22326 (regOne!22326 r!26968)))) b!3725633))

(assert (= (and b!3725372 ((_ is Union!10907) (regTwo!22326 (regOne!22326 r!26968)))) b!3725634))

(declare-fun b!3725635 () Bool)

(declare-fun e!2305743 () Bool)

(assert (=> b!3725635 (= e!2305743 tp_is_empty!18829)))

(declare-fun b!3725638 () Bool)

(declare-fun tp!1133383 () Bool)

(declare-fun tp!1133381 () Bool)

(assert (=> b!3725638 (= e!2305743 (and tp!1133383 tp!1133381))))

(declare-fun b!3725637 () Bool)

(declare-fun tp!1133380 () Bool)

(assert (=> b!3725637 (= e!2305743 tp!1133380)))

(declare-fun b!3725636 () Bool)

(declare-fun tp!1133382 () Bool)

(declare-fun tp!1133384 () Bool)

(assert (=> b!3725636 (= e!2305743 (and tp!1133382 tp!1133384))))

(assert (=> b!3725368 (= tp!1133267 e!2305743)))

(assert (= (and b!3725368 ((_ is ElementMatch!10907) (regOne!22326 (reg!11236 r!26968)))) b!3725635))

(assert (= (and b!3725368 ((_ is Concat!17178) (regOne!22326 (reg!11236 r!26968)))) b!3725636))

(assert (= (and b!3725368 ((_ is Star!10907) (regOne!22326 (reg!11236 r!26968)))) b!3725637))

(assert (= (and b!3725368 ((_ is Union!10907) (regOne!22326 (reg!11236 r!26968)))) b!3725638))

(declare-fun b!3725639 () Bool)

(declare-fun e!2305744 () Bool)

(assert (=> b!3725639 (= e!2305744 tp_is_empty!18829)))

(declare-fun b!3725642 () Bool)

(declare-fun tp!1133388 () Bool)

(declare-fun tp!1133386 () Bool)

(assert (=> b!3725642 (= e!2305744 (and tp!1133388 tp!1133386))))

(declare-fun b!3725641 () Bool)

(declare-fun tp!1133385 () Bool)

(assert (=> b!3725641 (= e!2305744 tp!1133385)))

(declare-fun b!3725640 () Bool)

(declare-fun tp!1133387 () Bool)

(declare-fun tp!1133389 () Bool)

(assert (=> b!3725640 (= e!2305744 (and tp!1133387 tp!1133389))))

(assert (=> b!3725368 (= tp!1133269 e!2305744)))

(assert (= (and b!3725368 ((_ is ElementMatch!10907) (regTwo!22326 (reg!11236 r!26968)))) b!3725639))

(assert (= (and b!3725368 ((_ is Concat!17178) (regTwo!22326 (reg!11236 r!26968)))) b!3725640))

(assert (= (and b!3725368 ((_ is Star!10907) (regTwo!22326 (reg!11236 r!26968)))) b!3725641))

(assert (= (and b!3725368 ((_ is Union!10907) (regTwo!22326 (reg!11236 r!26968)))) b!3725642))

(declare-fun b!3725643 () Bool)

(declare-fun e!2305745 () Bool)

(assert (=> b!3725643 (= e!2305745 tp_is_empty!18829)))

(declare-fun b!3725646 () Bool)

(declare-fun tp!1133393 () Bool)

(declare-fun tp!1133391 () Bool)

(assert (=> b!3725646 (= e!2305745 (and tp!1133393 tp!1133391))))

(declare-fun b!3725645 () Bool)

(declare-fun tp!1133390 () Bool)

(assert (=> b!3725645 (= e!2305745 tp!1133390)))

(declare-fun b!3725644 () Bool)

(declare-fun tp!1133392 () Bool)

(declare-fun tp!1133394 () Bool)

(assert (=> b!3725644 (= e!2305745 (and tp!1133392 tp!1133394))))

(assert (=> b!3725356 (= tp!1133247 e!2305745)))

(assert (= (and b!3725356 ((_ is ElementMatch!10907) (regOne!22326 (regOne!22327 r!26968)))) b!3725643))

(assert (= (and b!3725356 ((_ is Concat!17178) (regOne!22326 (regOne!22327 r!26968)))) b!3725644))

(assert (= (and b!3725356 ((_ is Star!10907) (regOne!22326 (regOne!22327 r!26968)))) b!3725645))

(assert (= (and b!3725356 ((_ is Union!10907) (regOne!22326 (regOne!22327 r!26968)))) b!3725646))

(declare-fun b!3725647 () Bool)

(declare-fun e!2305746 () Bool)

(assert (=> b!3725647 (= e!2305746 tp_is_empty!18829)))

(declare-fun b!3725650 () Bool)

(declare-fun tp!1133398 () Bool)

(declare-fun tp!1133396 () Bool)

(assert (=> b!3725650 (= e!2305746 (and tp!1133398 tp!1133396))))

(declare-fun b!3725649 () Bool)

(declare-fun tp!1133395 () Bool)

(assert (=> b!3725649 (= e!2305746 tp!1133395)))

(declare-fun b!3725648 () Bool)

(declare-fun tp!1133397 () Bool)

(declare-fun tp!1133399 () Bool)

(assert (=> b!3725648 (= e!2305746 (and tp!1133397 tp!1133399))))

(assert (=> b!3725356 (= tp!1133250 e!2305746)))

(assert (= (and b!3725356 ((_ is ElementMatch!10907) (regTwo!22326 (regOne!22327 r!26968)))) b!3725647))

(assert (= (and b!3725356 ((_ is Concat!17178) (regTwo!22326 (regOne!22327 r!26968)))) b!3725648))

(assert (= (and b!3725356 ((_ is Star!10907) (regTwo!22326 (regOne!22327 r!26968)))) b!3725649))

(assert (= (and b!3725356 ((_ is Union!10907) (regTwo!22326 (regOne!22327 r!26968)))) b!3725650))

(declare-fun b!3725651 () Bool)

(declare-fun e!2305747 () Bool)

(assert (=> b!3725651 (= e!2305747 tp_is_empty!18829)))

(declare-fun b!3725654 () Bool)

(declare-fun tp!1133403 () Bool)

(declare-fun tp!1133401 () Bool)

(assert (=> b!3725654 (= e!2305747 (and tp!1133403 tp!1133401))))

(declare-fun b!3725653 () Bool)

(declare-fun tp!1133400 () Bool)

(assert (=> b!3725653 (= e!2305747 tp!1133400)))

(declare-fun b!3725652 () Bool)

(declare-fun tp!1133402 () Bool)

(declare-fun tp!1133404 () Bool)

(assert (=> b!3725652 (= e!2305747 (and tp!1133402 tp!1133404))))

(assert (=> b!3725377 (= tp!1133275 e!2305747)))

(assert (= (and b!3725377 ((_ is ElementMatch!10907) (reg!11236 (regTwo!22326 r!26968)))) b!3725651))

(assert (= (and b!3725377 ((_ is Concat!17178) (reg!11236 (regTwo!22326 r!26968)))) b!3725652))

(assert (= (and b!3725377 ((_ is Star!10907) (reg!11236 (regTwo!22326 r!26968)))) b!3725653))

(assert (= (and b!3725377 ((_ is Union!10907) (reg!11236 (regTwo!22326 r!26968)))) b!3725654))

(declare-fun b!3725655 () Bool)

(declare-fun e!2305748 () Bool)

(assert (=> b!3725655 (= e!2305748 tp_is_empty!18829)))

(declare-fun b!3725658 () Bool)

(declare-fun tp!1133408 () Bool)

(declare-fun tp!1133406 () Bool)

(assert (=> b!3725658 (= e!2305748 (and tp!1133408 tp!1133406))))

(declare-fun b!3725657 () Bool)

(declare-fun tp!1133405 () Bool)

(assert (=> b!3725657 (= e!2305748 tp!1133405)))

(declare-fun b!3725656 () Bool)

(declare-fun tp!1133407 () Bool)

(declare-fun tp!1133409 () Bool)

(assert (=> b!3725656 (= e!2305748 (and tp!1133407 tp!1133409))))

(assert (=> b!3725365 (= tp!1133258 e!2305748)))

(assert (= (and b!3725365 ((_ is ElementMatch!10907) (reg!11236 (regTwo!22327 r!26968)))) b!3725655))

(assert (= (and b!3725365 ((_ is Concat!17178) (reg!11236 (regTwo!22327 r!26968)))) b!3725656))

(assert (= (and b!3725365 ((_ is Star!10907) (reg!11236 (regTwo!22327 r!26968)))) b!3725657))

(assert (= (and b!3725365 ((_ is Union!10907) (reg!11236 (regTwo!22327 r!26968)))) b!3725658))

(declare-fun b!3725659 () Bool)

(declare-fun e!2305749 () Bool)

(assert (=> b!3725659 (= e!2305749 tp_is_empty!18829)))

(declare-fun b!3725662 () Bool)

(declare-fun tp!1133413 () Bool)

(declare-fun tp!1133411 () Bool)

(assert (=> b!3725662 (= e!2305749 (and tp!1133413 tp!1133411))))

(declare-fun b!3725661 () Bool)

(declare-fun tp!1133410 () Bool)

(assert (=> b!3725661 (= e!2305749 tp!1133410)))

(declare-fun b!3725660 () Bool)

(declare-fun tp!1133412 () Bool)

(declare-fun tp!1133414 () Bool)

(assert (=> b!3725660 (= e!2305749 (and tp!1133412 tp!1133414))))

(assert (=> b!3725376 (= tp!1133277 e!2305749)))

(assert (= (and b!3725376 ((_ is ElementMatch!10907) (regOne!22326 (regTwo!22326 r!26968)))) b!3725659))

(assert (= (and b!3725376 ((_ is Concat!17178) (regOne!22326 (regTwo!22326 r!26968)))) b!3725660))

(assert (= (and b!3725376 ((_ is Star!10907) (regOne!22326 (regTwo!22326 r!26968)))) b!3725661))

(assert (= (and b!3725376 ((_ is Union!10907) (regOne!22326 (regTwo!22326 r!26968)))) b!3725662))

(declare-fun b!3725663 () Bool)

(declare-fun e!2305750 () Bool)

(assert (=> b!3725663 (= e!2305750 tp_is_empty!18829)))

(declare-fun b!3725666 () Bool)

(declare-fun tp!1133418 () Bool)

(declare-fun tp!1133416 () Bool)

(assert (=> b!3725666 (= e!2305750 (and tp!1133418 tp!1133416))))

(declare-fun b!3725665 () Bool)

(declare-fun tp!1133415 () Bool)

(assert (=> b!3725665 (= e!2305750 tp!1133415)))

(declare-fun b!3725664 () Bool)

(declare-fun tp!1133417 () Bool)

(declare-fun tp!1133419 () Bool)

(assert (=> b!3725664 (= e!2305750 (and tp!1133417 tp!1133419))))

(assert (=> b!3725376 (= tp!1133279 e!2305750)))

(assert (= (and b!3725376 ((_ is ElementMatch!10907) (regTwo!22326 (regTwo!22326 r!26968)))) b!3725663))

(assert (= (and b!3725376 ((_ is Concat!17178) (regTwo!22326 (regTwo!22326 r!26968)))) b!3725664))

(assert (= (and b!3725376 ((_ is Star!10907) (regTwo!22326 (regTwo!22326 r!26968)))) b!3725665))

(assert (= (and b!3725376 ((_ is Union!10907) (regTwo!22326 (regTwo!22326 r!26968)))) b!3725666))

(declare-fun b!3725667 () Bool)

(declare-fun e!2305751 () Bool)

(assert (=> b!3725667 (= e!2305751 tp_is_empty!18829)))

(declare-fun b!3725670 () Bool)

(declare-fun tp!1133423 () Bool)

(declare-fun tp!1133421 () Bool)

(assert (=> b!3725670 (= e!2305751 (and tp!1133423 tp!1133421))))

(declare-fun b!3725669 () Bool)

(declare-fun tp!1133420 () Bool)

(assert (=> b!3725669 (= e!2305751 tp!1133420)))

(declare-fun b!3725668 () Bool)

(declare-fun tp!1133422 () Bool)

(declare-fun tp!1133424 () Bool)

(assert (=> b!3725668 (= e!2305751 (and tp!1133422 tp!1133424))))

(assert (=> b!3725364 (= tp!1133260 e!2305751)))

(assert (= (and b!3725364 ((_ is ElementMatch!10907) (regOne!22326 (regTwo!22327 r!26968)))) b!3725667))

(assert (= (and b!3725364 ((_ is Concat!17178) (regOne!22326 (regTwo!22327 r!26968)))) b!3725668))

(assert (= (and b!3725364 ((_ is Star!10907) (regOne!22326 (regTwo!22327 r!26968)))) b!3725669))

(assert (= (and b!3725364 ((_ is Union!10907) (regOne!22326 (regTwo!22327 r!26968)))) b!3725670))

(declare-fun b!3725671 () Bool)

(declare-fun e!2305752 () Bool)

(assert (=> b!3725671 (= e!2305752 tp_is_empty!18829)))

(declare-fun b!3725674 () Bool)

(declare-fun tp!1133428 () Bool)

(declare-fun tp!1133426 () Bool)

(assert (=> b!3725674 (= e!2305752 (and tp!1133428 tp!1133426))))

(declare-fun b!3725673 () Bool)

(declare-fun tp!1133425 () Bool)

(assert (=> b!3725673 (= e!2305752 tp!1133425)))

(declare-fun b!3725672 () Bool)

(declare-fun tp!1133427 () Bool)

(declare-fun tp!1133429 () Bool)

(assert (=> b!3725672 (= e!2305752 (and tp!1133427 tp!1133429))))

(assert (=> b!3725364 (= tp!1133262 e!2305752)))

(assert (= (and b!3725364 ((_ is ElementMatch!10907) (regTwo!22326 (regTwo!22327 r!26968)))) b!3725671))

(assert (= (and b!3725364 ((_ is Concat!17178) (regTwo!22326 (regTwo!22327 r!26968)))) b!3725672))

(assert (= (and b!3725364 ((_ is Star!10907) (regTwo!22326 (regTwo!22327 r!26968)))) b!3725673))

(assert (= (and b!3725364 ((_ is Union!10907) (regTwo!22326 (regTwo!22327 r!26968)))) b!3725674))

(check-sat (not bm!271292) (not bm!271284) (not bm!271305) (not b!3725612) (not b!3725578) (not b!3725567) (not b!3725666) (not bm!271294) (not b!3725658) (not b!3725618) (not b!3725457) (not b!3725630) (not d!1089805) (not b!3725629) (not b!3725662) (not b!3725656) (not b!3725636) (not b!3725593) (not b!3725645) (not bm!271299) (not b!3725622) (not b!3725573) (not d!1089783) (not b!3725653) (not b!3725634) (not b!3725670) (not bm!271321) (not bm!271313) (not bm!271323) (not b!3725610) (not bm!271280) (not b!3725626) (not b!3725672) (not b!3725614) (not b!3725571) (not bm!271312) (not b!3725579) (not b!3725660) (not d!1089801) (not bm!271281) (not b!3725409) (not b!3725673) (not b!3725625) (not b!3725574) (not b!3725589) (not b!3725585) (not b!3725661) (not b!3725400) (not bm!271282) (not b!3725637) (not bm!271306) (not b!3725664) (not b!3725638) (not d!1089807) (not b!3725577) (not b!3725609) (not bm!271320) (not bm!271274) (not b!3725566) (not b!3725460) (not b!3725608) (not b!3725646) (not b!3725642) (not bm!271288) (not bm!271304) (not bm!271293) (not b!3725616) (not b!3725565) (not b!3725669) (not b!3725505) (not b!3725523) (not b!3725628) (not bm!271291) (not b!3725584) (not b!3725644) (not b!3725604) (not b!3725479) (not b!3725650) (not b!3725591) (not bm!271322) (not d!1089795) (not b!3725583) (not b!3725481) (not b!3725617) (not b!3725620) (not b!3725648) (not b!3725613) (not bm!271285) (not b!3725575) (not bm!271287) (not b!3725478) (not b!3725569) (not b!3725587) (not b!3725588) (not bm!271279) (not b!3725652) (not b!3725641) (not d!1089829) (not bm!271298) (not bm!271319) (not b!3725606) (not b!3725632) (not b!3725621) tp_is_empty!18829 (not b!3725543) (not b!3725633) (not b!3725654) (not b!3725491) (not b!3725592) (not bm!271295) (not bm!271276) (not bm!271275) (not b!3725458) (not b!3725665) (not b!3725605) (not b!3725624) (not b!3725640) (not b!3725657) (not b!3725570) (not b!3725649) (not b!3725674) (not b!3725668))
(check-sat)
