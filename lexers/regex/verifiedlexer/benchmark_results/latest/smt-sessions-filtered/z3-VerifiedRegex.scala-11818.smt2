; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665074 () Bool)

(assert start!665074)

(declare-fun b!6908475 () Bool)

(assert (=> b!6908475 true))

(assert (=> b!6908475 true))

(assert (=> b!6908475 true))

(declare-fun lambda!392516 () Int)

(declare-fun lambda!392515 () Int)

(assert (=> b!6908475 (not (= lambda!392516 lambda!392515))))

(assert (=> b!6908475 true))

(assert (=> b!6908475 true))

(assert (=> b!6908475 true))

(declare-fun b!6908458 () Bool)

(declare-fun e!4159616 () Bool)

(declare-fun tp!1902307 () Bool)

(assert (=> b!6908458 (= e!4159616 tp!1902307)))

(declare-fun b!6908459 () Bool)

(declare-fun e!4159617 () Bool)

(declare-fun e!4159620 () Bool)

(assert (=> b!6908459 (= e!4159617 e!4159620)))

(declare-fun res!2817347 () Bool)

(assert (=> b!6908459 (=> res!2817347 e!4159620)))

(declare-datatypes ((C!34036 0))(
  ( (C!34037 (val!26720 Int)) )
))
(declare-datatypes ((List!66640 0))(
  ( (Nil!66516) (Cons!66516 (h!72964 C!34036) (t!380383 List!66640)) )
))
(declare-datatypes ((tuple2!67500 0))(
  ( (tuple2!67501 (_1!37053 List!66640) (_2!37053 List!66640)) )
))
(declare-datatypes ((Option!16662 0))(
  ( (None!16661) (Some!16661 (v!52933 tuple2!67500)) )
))
(declare-fun lt!2468118 () Option!16662)

(declare-fun isDefined!13365 (Option!16662) Bool)

(assert (=> b!6908459 (= res!2817347 (not (isDefined!13365 lt!2468118)))))

(declare-datatypes ((Regex!16883 0))(
  ( (ElementMatch!16883 (c!1283313 C!34036)) (Concat!25728 (regOne!34278 Regex!16883) (regTwo!34278 Regex!16883)) (EmptyExpr!16883) (Star!16883 (reg!17212 Regex!16883)) (EmptyLang!16883) (Union!16883 (regOne!34279 Regex!16883) (regTwo!34279 Regex!16883)) )
))
(declare-fun lt!2468125 () Regex!16883)

(declare-fun r1!6342 () Regex!16883)

(declare-fun s!14361 () List!66640)

(declare-fun findConcatSeparation!3076 (Regex!16883 Regex!16883 List!66640 List!66640 List!66640) Option!16662)

(assert (=> b!6908459 (= lt!2468118 (findConcatSeparation!3076 r1!6342 lt!2468125 Nil!66516 s!14361 s!14361))))

(declare-fun b!6908460 () Bool)

(declare-fun e!4159621 () Bool)

(declare-fun tp_is_empty!42991 () Bool)

(assert (=> b!6908460 (= e!4159621 tp_is_empty!42991)))

(declare-fun b!6908461 () Bool)

(declare-fun tp!1902306 () Bool)

(declare-fun tp!1902303 () Bool)

(assert (=> b!6908461 (= e!4159621 (and tp!1902306 tp!1902303))))

(declare-fun b!6908462 () Bool)

(declare-fun e!4159618 () Bool)

(declare-fun tp!1902308 () Bool)

(assert (=> b!6908462 (= e!4159618 tp!1902308)))

(declare-fun b!6908463 () Bool)

(declare-fun tp!1902309 () Bool)

(declare-fun tp!1902300 () Bool)

(assert (=> b!6908463 (= e!4159621 (and tp!1902309 tp!1902300))))

(declare-fun b!6908464 () Bool)

(declare-fun res!2817346 () Bool)

(declare-fun e!4159619 () Bool)

(assert (=> b!6908464 (=> (not res!2817346) (not e!4159619))))

(declare-fun r2!6280 () Regex!16883)

(declare-fun validRegex!8591 (Regex!16883) Bool)

(assert (=> b!6908464 (= res!2817346 (validRegex!8591 r2!6280))))

(declare-fun res!2817344 () Bool)

(assert (=> start!665074 (=> (not res!2817344) (not e!4159619))))

(assert (=> start!665074 (= res!2817344 (validRegex!8591 r1!6342))))

(assert (=> start!665074 e!4159619))

(assert (=> start!665074 e!4159618))

(assert (=> start!665074 e!4159621))

(assert (=> start!665074 e!4159616))

(declare-fun e!4159622 () Bool)

(assert (=> start!665074 e!4159622))

(declare-fun b!6908465 () Bool)

(declare-fun tp!1902302 () Bool)

(assert (=> b!6908465 (= e!4159622 (and tp_is_empty!42991 tp!1902302))))

(declare-fun b!6908466 () Bool)

(declare-fun tp!1902298 () Bool)

(assert (=> b!6908466 (= e!4159621 tp!1902298)))

(declare-fun b!6908467 () Bool)

(assert (=> b!6908467 (= e!4159619 (not e!4159617))))

(declare-fun res!2817348 () Bool)

(assert (=> b!6908467 (=> res!2817348 e!4159617)))

(declare-fun lt!2468127 () Bool)

(assert (=> b!6908467 (= res!2817348 lt!2468127)))

(declare-fun lt!2468124 () Regex!16883)

(declare-fun matchR!9028 (Regex!16883 List!66640) Bool)

(declare-fun matchRSpec!3946 (Regex!16883 List!66640) Bool)

(assert (=> b!6908467 (= (matchR!9028 lt!2468124 s!14361) (matchRSpec!3946 lt!2468124 s!14361))))

(declare-datatypes ((Unit!160502 0))(
  ( (Unit!160503) )
))
(declare-fun lt!2468129 () Unit!160502)

(declare-fun mainMatchTheorem!3946 (Regex!16883 List!66640) Unit!160502)

(assert (=> b!6908467 (= lt!2468129 (mainMatchTheorem!3946 lt!2468124 s!14361))))

(declare-fun lt!2468123 () Regex!16883)

(assert (=> b!6908467 (= lt!2468127 (matchRSpec!3946 lt!2468123 s!14361))))

(assert (=> b!6908467 (= lt!2468127 (matchR!9028 lt!2468123 s!14361))))

(declare-fun lt!2468128 () Unit!160502)

(assert (=> b!6908467 (= lt!2468128 (mainMatchTheorem!3946 lt!2468123 s!14361))))

(assert (=> b!6908467 (= lt!2468124 (Concat!25728 r1!6342 lt!2468125))))

(declare-fun r3!135 () Regex!16883)

(assert (=> b!6908467 (= lt!2468125 (Concat!25728 r2!6280 r3!135))))

(assert (=> b!6908467 (= lt!2468123 (Concat!25728 (Concat!25728 r1!6342 r2!6280) r3!135))))

(declare-fun b!6908468 () Bool)

(assert (=> b!6908468 (= e!4159618 tp_is_empty!42991)))

(declare-fun b!6908469 () Bool)

(declare-fun res!2817345 () Bool)

(assert (=> b!6908469 (=> (not res!2817345) (not e!4159619))))

(assert (=> b!6908469 (= res!2817345 (validRegex!8591 r3!135))))

(declare-fun b!6908470 () Bool)

(assert (=> b!6908470 (= e!4159616 tp_is_empty!42991)))

(declare-fun b!6908471 () Bool)

(declare-fun tp!1902305 () Bool)

(declare-fun tp!1902304 () Bool)

(assert (=> b!6908471 (= e!4159618 (and tp!1902305 tp!1902304))))

(declare-fun b!6908472 () Bool)

(declare-fun tp!1902310 () Bool)

(declare-fun tp!1902297 () Bool)

(assert (=> b!6908472 (= e!4159616 (and tp!1902310 tp!1902297))))

(declare-fun b!6908473 () Bool)

(declare-fun tp!1902311 () Bool)

(declare-fun tp!1902296 () Bool)

(assert (=> b!6908473 (= e!4159616 (and tp!1902311 tp!1902296))))

(declare-fun b!6908474 () Bool)

(declare-fun tp!1902301 () Bool)

(declare-fun tp!1902299 () Bool)

(assert (=> b!6908474 (= e!4159618 (and tp!1902301 tp!1902299))))

(declare-fun lt!2468126 () Bool)

(assert (=> b!6908475 (= e!4159620 lt!2468126)))

(declare-fun lt!2468121 () tuple2!67500)

(assert (=> b!6908475 (= lt!2468126 (matchRSpec!3946 r1!6342 (_1!37053 lt!2468121)))))

(assert (=> b!6908475 (= lt!2468126 (matchR!9028 r1!6342 (_1!37053 lt!2468121)))))

(declare-fun lt!2468122 () Unit!160502)

(assert (=> b!6908475 (= lt!2468122 (mainMatchTheorem!3946 r1!6342 (_1!37053 lt!2468121)))))

(declare-fun get!23275 (Option!16662) tuple2!67500)

(assert (=> b!6908475 (= lt!2468121 (get!23275 lt!2468118))))

(declare-fun Exists!3891 (Int) Bool)

(assert (=> b!6908475 (= (Exists!3891 lambda!392515) (Exists!3891 lambda!392516))))

(declare-fun lt!2468120 () Unit!160502)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2364 (Regex!16883 Regex!16883 List!66640) Unit!160502)

(assert (=> b!6908475 (= lt!2468120 (lemmaExistCutMatchRandMatchRSpecEquivalent!2364 r1!6342 lt!2468125 s!14361))))

(assert (=> b!6908475 (Exists!3891 lambda!392515)))

(declare-fun lt!2468119 () Unit!160502)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2838 (Regex!16883 Regex!16883 List!66640) Unit!160502)

(assert (=> b!6908475 (= lt!2468119 (lemmaFindConcatSeparationEquivalentToExists!2838 r1!6342 lt!2468125 s!14361))))

(assert (= (and start!665074 res!2817344) b!6908464))

(assert (= (and b!6908464 res!2817346) b!6908469))

(assert (= (and b!6908469 res!2817345) b!6908467))

(assert (= (and b!6908467 (not res!2817348)) b!6908459))

(assert (= (and b!6908459 (not res!2817347)) b!6908475))

(get-info :version)

(assert (= (and start!665074 ((_ is ElementMatch!16883) r1!6342)) b!6908468))

(assert (= (and start!665074 ((_ is Concat!25728) r1!6342)) b!6908471))

(assert (= (and start!665074 ((_ is Star!16883) r1!6342)) b!6908462))

(assert (= (and start!665074 ((_ is Union!16883) r1!6342)) b!6908474))

(assert (= (and start!665074 ((_ is ElementMatch!16883) r2!6280)) b!6908460))

(assert (= (and start!665074 ((_ is Concat!25728) r2!6280)) b!6908461))

(assert (= (and start!665074 ((_ is Star!16883) r2!6280)) b!6908466))

(assert (= (and start!665074 ((_ is Union!16883) r2!6280)) b!6908463))

(assert (= (and start!665074 ((_ is ElementMatch!16883) r3!135)) b!6908470))

(assert (= (and start!665074 ((_ is Concat!25728) r3!135)) b!6908472))

(assert (= (and start!665074 ((_ is Star!16883) r3!135)) b!6908458))

(assert (= (and start!665074 ((_ is Union!16883) r3!135)) b!6908473))

(assert (= (and start!665074 ((_ is Cons!66516) s!14361)) b!6908465))

(declare-fun m!7624218 () Bool)

(assert (=> b!6908459 m!7624218))

(declare-fun m!7624220 () Bool)

(assert (=> b!6908459 m!7624220))

(declare-fun m!7624222 () Bool)

(assert (=> b!6908469 m!7624222))

(declare-fun m!7624224 () Bool)

(assert (=> b!6908467 m!7624224))

(declare-fun m!7624226 () Bool)

(assert (=> b!6908467 m!7624226))

(declare-fun m!7624228 () Bool)

(assert (=> b!6908467 m!7624228))

(declare-fun m!7624230 () Bool)

(assert (=> b!6908467 m!7624230))

(declare-fun m!7624232 () Bool)

(assert (=> b!6908467 m!7624232))

(declare-fun m!7624234 () Bool)

(assert (=> b!6908467 m!7624234))

(declare-fun m!7624236 () Bool)

(assert (=> b!6908475 m!7624236))

(declare-fun m!7624238 () Bool)

(assert (=> b!6908475 m!7624238))

(assert (=> b!6908475 m!7624236))

(declare-fun m!7624240 () Bool)

(assert (=> b!6908475 m!7624240))

(declare-fun m!7624242 () Bool)

(assert (=> b!6908475 m!7624242))

(declare-fun m!7624244 () Bool)

(assert (=> b!6908475 m!7624244))

(declare-fun m!7624246 () Bool)

(assert (=> b!6908475 m!7624246))

(declare-fun m!7624248 () Bool)

(assert (=> b!6908475 m!7624248))

(declare-fun m!7624250 () Bool)

(assert (=> b!6908475 m!7624250))

(declare-fun m!7624252 () Bool)

(assert (=> b!6908464 m!7624252))

(declare-fun m!7624254 () Bool)

(assert (=> start!665074 m!7624254))

(check-sat (not b!6908469) (not b!6908459) (not b!6908474) (not b!6908462) (not b!6908472) (not b!6908467) (not b!6908463) (not b!6908458) (not b!6908473) tp_is_empty!42991 (not b!6908464) (not b!6908465) (not b!6908471) (not b!6908475) (not b!6908461) (not start!665074) (not b!6908466))
(check-sat)
(get-model)

(declare-fun b!6908525 () Bool)

(declare-fun e!4159660 () Bool)

(declare-fun e!4159663 () Bool)

(assert (=> b!6908525 (= e!4159660 e!4159663)))

(declare-fun res!2817376 () Bool)

(assert (=> b!6908525 (=> (not res!2817376) (not e!4159663))))

(declare-fun call!628144 () Bool)

(assert (=> b!6908525 (= res!2817376 call!628144)))

(declare-fun b!6908526 () Bool)

(declare-fun res!2817377 () Bool)

(declare-fun e!4159658 () Bool)

(assert (=> b!6908526 (=> (not res!2817377) (not e!4159658))))

(declare-fun call!628145 () Bool)

(assert (=> b!6908526 (= res!2817377 call!628145)))

(declare-fun e!4159662 () Bool)

(assert (=> b!6908526 (= e!4159662 e!4159658)))

(declare-fun bm!628138 () Bool)

(declare-fun c!1283324 () Bool)

(assert (=> bm!628138 (= call!628145 (validRegex!8591 (ite c!1283324 (regOne!34279 r3!135) (regTwo!34278 r3!135))))))

(declare-fun b!6908527 () Bool)

(declare-fun e!4159659 () Bool)

(declare-fun e!4159664 () Bool)

(assert (=> b!6908527 (= e!4159659 e!4159664)))

(declare-fun res!2817374 () Bool)

(declare-fun nullable!6722 (Regex!16883) Bool)

(assert (=> b!6908527 (= res!2817374 (not (nullable!6722 (reg!17212 r3!135))))))

(assert (=> b!6908527 (=> (not res!2817374) (not e!4159664))))

(declare-fun b!6908528 () Bool)

(declare-fun res!2817375 () Bool)

(assert (=> b!6908528 (=> res!2817375 e!4159660)))

(assert (=> b!6908528 (= res!2817375 (not ((_ is Concat!25728) r3!135)))))

(assert (=> b!6908528 (= e!4159662 e!4159660)))

(declare-fun b!6908529 () Bool)

(declare-fun call!628143 () Bool)

(assert (=> b!6908529 (= e!4159664 call!628143)))

(declare-fun b!6908530 () Bool)

(assert (=> b!6908530 (= e!4159659 e!4159662)))

(assert (=> b!6908530 (= c!1283324 ((_ is Union!16883) r3!135))))

(declare-fun b!6908531 () Bool)

(assert (=> b!6908531 (= e!4159658 call!628144)))

(declare-fun b!6908532 () Bool)

(declare-fun e!4159661 () Bool)

(assert (=> b!6908532 (= e!4159661 e!4159659)))

(declare-fun c!1283325 () Bool)

(assert (=> b!6908532 (= c!1283325 ((_ is Star!16883) r3!135))))

(declare-fun b!6908533 () Bool)

(assert (=> b!6908533 (= e!4159663 call!628145)))

(declare-fun bm!628140 () Bool)

(assert (=> bm!628140 (= call!628143 (validRegex!8591 (ite c!1283325 (reg!17212 r3!135) (ite c!1283324 (regTwo!34279 r3!135) (regOne!34278 r3!135)))))))

(declare-fun d!2163059 () Bool)

(declare-fun res!2817378 () Bool)

(assert (=> d!2163059 (=> res!2817378 e!4159661)))

(assert (=> d!2163059 (= res!2817378 ((_ is ElementMatch!16883) r3!135))))

(assert (=> d!2163059 (= (validRegex!8591 r3!135) e!4159661)))

(declare-fun bm!628139 () Bool)

(assert (=> bm!628139 (= call!628144 call!628143)))

(assert (= (and d!2163059 (not res!2817378)) b!6908532))

(assert (= (and b!6908532 c!1283325) b!6908527))

(assert (= (and b!6908532 (not c!1283325)) b!6908530))

(assert (= (and b!6908527 res!2817374) b!6908529))

(assert (= (and b!6908530 c!1283324) b!6908526))

(assert (= (and b!6908530 (not c!1283324)) b!6908528))

(assert (= (and b!6908526 res!2817377) b!6908531))

(assert (= (and b!6908528 (not res!2817375)) b!6908525))

(assert (= (and b!6908525 res!2817376) b!6908533))

(assert (= (or b!6908526 b!6908533) bm!628138))

(assert (= (or b!6908531 b!6908525) bm!628139))

(assert (= (or b!6908529 bm!628139) bm!628140))

(declare-fun m!7624264 () Bool)

(assert (=> bm!628138 m!7624264))

(declare-fun m!7624266 () Bool)

(assert (=> b!6908527 m!7624266))

(declare-fun m!7624268 () Bool)

(assert (=> bm!628140 m!7624268))

(assert (=> b!6908469 d!2163059))

(declare-fun b!6908534 () Bool)

(declare-fun e!4159667 () Bool)

(declare-fun e!4159670 () Bool)

(assert (=> b!6908534 (= e!4159667 e!4159670)))

(declare-fun res!2817381 () Bool)

(assert (=> b!6908534 (=> (not res!2817381) (not e!4159670))))

(declare-fun call!628147 () Bool)

(assert (=> b!6908534 (= res!2817381 call!628147)))

(declare-fun b!6908535 () Bool)

(declare-fun res!2817382 () Bool)

(declare-fun e!4159665 () Bool)

(assert (=> b!6908535 (=> (not res!2817382) (not e!4159665))))

(declare-fun call!628148 () Bool)

(assert (=> b!6908535 (= res!2817382 call!628148)))

(declare-fun e!4159669 () Bool)

(assert (=> b!6908535 (= e!4159669 e!4159665)))

(declare-fun bm!628141 () Bool)

(declare-fun c!1283326 () Bool)

(assert (=> bm!628141 (= call!628148 (validRegex!8591 (ite c!1283326 (regOne!34279 r2!6280) (regTwo!34278 r2!6280))))))

(declare-fun b!6908536 () Bool)

(declare-fun e!4159666 () Bool)

(declare-fun e!4159671 () Bool)

(assert (=> b!6908536 (= e!4159666 e!4159671)))

(declare-fun res!2817379 () Bool)

(assert (=> b!6908536 (= res!2817379 (not (nullable!6722 (reg!17212 r2!6280))))))

(assert (=> b!6908536 (=> (not res!2817379) (not e!4159671))))

(declare-fun b!6908537 () Bool)

(declare-fun res!2817380 () Bool)

(assert (=> b!6908537 (=> res!2817380 e!4159667)))

(assert (=> b!6908537 (= res!2817380 (not ((_ is Concat!25728) r2!6280)))))

(assert (=> b!6908537 (= e!4159669 e!4159667)))

(declare-fun b!6908538 () Bool)

(declare-fun call!628146 () Bool)

(assert (=> b!6908538 (= e!4159671 call!628146)))

(declare-fun b!6908539 () Bool)

(assert (=> b!6908539 (= e!4159666 e!4159669)))

(assert (=> b!6908539 (= c!1283326 ((_ is Union!16883) r2!6280))))

(declare-fun b!6908540 () Bool)

(assert (=> b!6908540 (= e!4159665 call!628147)))

(declare-fun b!6908541 () Bool)

(declare-fun e!4159668 () Bool)

(assert (=> b!6908541 (= e!4159668 e!4159666)))

(declare-fun c!1283327 () Bool)

(assert (=> b!6908541 (= c!1283327 ((_ is Star!16883) r2!6280))))

(declare-fun b!6908542 () Bool)

(assert (=> b!6908542 (= e!4159670 call!628148)))

(declare-fun bm!628143 () Bool)

(assert (=> bm!628143 (= call!628146 (validRegex!8591 (ite c!1283327 (reg!17212 r2!6280) (ite c!1283326 (regTwo!34279 r2!6280) (regOne!34278 r2!6280)))))))

(declare-fun d!2163065 () Bool)

(declare-fun res!2817383 () Bool)

(assert (=> d!2163065 (=> res!2817383 e!4159668)))

(assert (=> d!2163065 (= res!2817383 ((_ is ElementMatch!16883) r2!6280))))

(assert (=> d!2163065 (= (validRegex!8591 r2!6280) e!4159668)))

(declare-fun bm!628142 () Bool)

(assert (=> bm!628142 (= call!628147 call!628146)))

(assert (= (and d!2163065 (not res!2817383)) b!6908541))

(assert (= (and b!6908541 c!1283327) b!6908536))

(assert (= (and b!6908541 (not c!1283327)) b!6908539))

(assert (= (and b!6908536 res!2817379) b!6908538))

(assert (= (and b!6908539 c!1283326) b!6908535))

(assert (= (and b!6908539 (not c!1283326)) b!6908537))

(assert (= (and b!6908535 res!2817382) b!6908540))

(assert (= (and b!6908537 (not res!2817380)) b!6908534))

(assert (= (and b!6908534 res!2817381) b!6908542))

(assert (= (or b!6908535 b!6908542) bm!628141))

(assert (= (or b!6908540 b!6908534) bm!628142))

(assert (= (or b!6908538 bm!628142) bm!628143))

(declare-fun m!7624270 () Bool)

(assert (=> bm!628141 m!7624270))

(declare-fun m!7624272 () Bool)

(assert (=> b!6908536 m!7624272))

(declare-fun m!7624274 () Bool)

(assert (=> bm!628143 m!7624274))

(assert (=> b!6908464 d!2163065))

(declare-fun b!6908543 () Bool)

(declare-fun e!4159674 () Bool)

(declare-fun e!4159677 () Bool)

(assert (=> b!6908543 (= e!4159674 e!4159677)))

(declare-fun res!2817386 () Bool)

(assert (=> b!6908543 (=> (not res!2817386) (not e!4159677))))

(declare-fun call!628150 () Bool)

(assert (=> b!6908543 (= res!2817386 call!628150)))

(declare-fun b!6908544 () Bool)

(declare-fun res!2817387 () Bool)

(declare-fun e!4159672 () Bool)

(assert (=> b!6908544 (=> (not res!2817387) (not e!4159672))))

(declare-fun call!628151 () Bool)

(assert (=> b!6908544 (= res!2817387 call!628151)))

(declare-fun e!4159676 () Bool)

(assert (=> b!6908544 (= e!4159676 e!4159672)))

(declare-fun bm!628144 () Bool)

(declare-fun c!1283328 () Bool)

(assert (=> bm!628144 (= call!628151 (validRegex!8591 (ite c!1283328 (regOne!34279 r1!6342) (regTwo!34278 r1!6342))))))

(declare-fun b!6908545 () Bool)

(declare-fun e!4159673 () Bool)

(declare-fun e!4159678 () Bool)

(assert (=> b!6908545 (= e!4159673 e!4159678)))

(declare-fun res!2817384 () Bool)

(assert (=> b!6908545 (= res!2817384 (not (nullable!6722 (reg!17212 r1!6342))))))

(assert (=> b!6908545 (=> (not res!2817384) (not e!4159678))))

(declare-fun b!6908546 () Bool)

(declare-fun res!2817385 () Bool)

(assert (=> b!6908546 (=> res!2817385 e!4159674)))

(assert (=> b!6908546 (= res!2817385 (not ((_ is Concat!25728) r1!6342)))))

(assert (=> b!6908546 (= e!4159676 e!4159674)))

(declare-fun b!6908547 () Bool)

(declare-fun call!628149 () Bool)

(assert (=> b!6908547 (= e!4159678 call!628149)))

(declare-fun b!6908548 () Bool)

(assert (=> b!6908548 (= e!4159673 e!4159676)))

(assert (=> b!6908548 (= c!1283328 ((_ is Union!16883) r1!6342))))

(declare-fun b!6908549 () Bool)

(assert (=> b!6908549 (= e!4159672 call!628150)))

(declare-fun b!6908550 () Bool)

(declare-fun e!4159675 () Bool)

(assert (=> b!6908550 (= e!4159675 e!4159673)))

(declare-fun c!1283329 () Bool)

(assert (=> b!6908550 (= c!1283329 ((_ is Star!16883) r1!6342))))

(declare-fun b!6908551 () Bool)

(assert (=> b!6908551 (= e!4159677 call!628151)))

(declare-fun bm!628146 () Bool)

(assert (=> bm!628146 (= call!628149 (validRegex!8591 (ite c!1283329 (reg!17212 r1!6342) (ite c!1283328 (regTwo!34279 r1!6342) (regOne!34278 r1!6342)))))))

(declare-fun d!2163067 () Bool)

(declare-fun res!2817388 () Bool)

(assert (=> d!2163067 (=> res!2817388 e!4159675)))

(assert (=> d!2163067 (= res!2817388 ((_ is ElementMatch!16883) r1!6342))))

(assert (=> d!2163067 (= (validRegex!8591 r1!6342) e!4159675)))

(declare-fun bm!628145 () Bool)

(assert (=> bm!628145 (= call!628150 call!628149)))

(assert (= (and d!2163067 (not res!2817388)) b!6908550))

(assert (= (and b!6908550 c!1283329) b!6908545))

(assert (= (and b!6908550 (not c!1283329)) b!6908548))

(assert (= (and b!6908545 res!2817384) b!6908547))

(assert (= (and b!6908548 c!1283328) b!6908544))

(assert (= (and b!6908548 (not c!1283328)) b!6908546))

(assert (= (and b!6908544 res!2817387) b!6908549))

(assert (= (and b!6908546 (not res!2817385)) b!6908543))

(assert (= (and b!6908543 res!2817386) b!6908551))

(assert (= (or b!6908544 b!6908551) bm!628144))

(assert (= (or b!6908549 b!6908543) bm!628145))

(assert (= (or b!6908547 bm!628145) bm!628146))

(declare-fun m!7624276 () Bool)

(assert (=> bm!628144 m!7624276))

(declare-fun m!7624278 () Bool)

(assert (=> b!6908545 m!7624278))

(declare-fun m!7624280 () Bool)

(assert (=> bm!628146 m!7624280))

(assert (=> start!665074 d!2163067))

(declare-fun d!2163069 () Bool)

(assert (=> d!2163069 (= (matchR!9028 lt!2468124 s!14361) (matchRSpec!3946 lt!2468124 s!14361))))

(declare-fun lt!2468132 () Unit!160502)

(declare-fun choose!51447 (Regex!16883 List!66640) Unit!160502)

(assert (=> d!2163069 (= lt!2468132 (choose!51447 lt!2468124 s!14361))))

(assert (=> d!2163069 (validRegex!8591 lt!2468124)))

(assert (=> d!2163069 (= (mainMatchTheorem!3946 lt!2468124 s!14361) lt!2468132)))

(declare-fun bs!1844343 () Bool)

(assert (= bs!1844343 d!2163069))

(assert (=> bs!1844343 m!7624234))

(assert (=> bs!1844343 m!7624230))

(declare-fun m!7624282 () Bool)

(assert (=> bs!1844343 m!7624282))

(declare-fun m!7624284 () Bool)

(assert (=> bs!1844343 m!7624284))

(assert (=> b!6908467 d!2163069))

(declare-fun b!6908607 () Bool)

(declare-fun res!2817423 () Bool)

(declare-fun e!4159713 () Bool)

(assert (=> b!6908607 (=> res!2817423 e!4159713)))

(assert (=> b!6908607 (= res!2817423 (not ((_ is ElementMatch!16883) lt!2468124)))))

(declare-fun e!4159712 () Bool)

(assert (=> b!6908607 (= e!4159712 e!4159713)))

(declare-fun b!6908608 () Bool)

(declare-fun e!4159708 () Bool)

(declare-fun head!13854 (List!66640) C!34036)

(assert (=> b!6908608 (= e!4159708 (not (= (head!13854 s!14361) (c!1283313 lt!2468124))))))

(declare-fun b!6908609 () Bool)

(declare-fun e!4159711 () Bool)

(declare-fun derivativeStep!5401 (Regex!16883 C!34036) Regex!16883)

(declare-fun tail!12906 (List!66640) List!66640)

(assert (=> b!6908609 (= e!4159711 (matchR!9028 (derivativeStep!5401 lt!2468124 (head!13854 s!14361)) (tail!12906 s!14361)))))

(declare-fun b!6908610 () Bool)

(declare-fun e!4159709 () Bool)

(assert (=> b!6908610 (= e!4159709 e!4159712)))

(declare-fun c!1283342 () Bool)

(assert (=> b!6908610 (= c!1283342 ((_ is EmptyLang!16883) lt!2468124))))

(declare-fun b!6908611 () Bool)

(declare-fun res!2817421 () Bool)

(declare-fun e!4159714 () Bool)

(assert (=> b!6908611 (=> (not res!2817421) (not e!4159714))))

(declare-fun call!628154 () Bool)

(assert (=> b!6908611 (= res!2817421 (not call!628154))))

(declare-fun b!6908612 () Bool)

(declare-fun e!4159710 () Bool)

(assert (=> b!6908612 (= e!4159713 e!4159710)))

(declare-fun res!2817420 () Bool)

(assert (=> b!6908612 (=> (not res!2817420) (not e!4159710))))

(declare-fun lt!2468146 () Bool)

(assert (=> b!6908612 (= res!2817420 (not lt!2468146))))

(declare-fun bm!628149 () Bool)

(declare-fun isEmpty!38758 (List!66640) Bool)

(assert (=> bm!628149 (= call!628154 (isEmpty!38758 s!14361))))

(declare-fun b!6908613 () Bool)

(assert (=> b!6908613 (= e!4159709 (= lt!2468146 call!628154))))

(declare-fun b!6908614 () Bool)

(declare-fun res!2817426 () Bool)

(assert (=> b!6908614 (=> (not res!2817426) (not e!4159714))))

(assert (=> b!6908614 (= res!2817426 (isEmpty!38758 (tail!12906 s!14361)))))

(declare-fun d!2163071 () Bool)

(assert (=> d!2163071 e!4159709))

(declare-fun c!1283343 () Bool)

(assert (=> d!2163071 (= c!1283343 ((_ is EmptyExpr!16883) lt!2468124))))

(assert (=> d!2163071 (= lt!2468146 e!4159711)))

(declare-fun c!1283344 () Bool)

(assert (=> d!2163071 (= c!1283344 (isEmpty!38758 s!14361))))

(assert (=> d!2163071 (validRegex!8591 lt!2468124)))

(assert (=> d!2163071 (= (matchR!9028 lt!2468124 s!14361) lt!2468146)))

(declare-fun b!6908615 () Bool)

(assert (=> b!6908615 (= e!4159714 (= (head!13854 s!14361) (c!1283313 lt!2468124)))))

(declare-fun b!6908616 () Bool)

(declare-fun res!2817422 () Bool)

(assert (=> b!6908616 (=> res!2817422 e!4159708)))

(assert (=> b!6908616 (= res!2817422 (not (isEmpty!38758 (tail!12906 s!14361))))))

(declare-fun b!6908617 () Bool)

(declare-fun res!2817425 () Bool)

(assert (=> b!6908617 (=> res!2817425 e!4159713)))

(assert (=> b!6908617 (= res!2817425 e!4159714)))

(declare-fun res!2817427 () Bool)

(assert (=> b!6908617 (=> (not res!2817427) (not e!4159714))))

(assert (=> b!6908617 (= res!2817427 lt!2468146)))

(declare-fun b!6908618 () Bool)

(assert (=> b!6908618 (= e!4159711 (nullable!6722 lt!2468124))))

(declare-fun b!6908619 () Bool)

(assert (=> b!6908619 (= e!4159712 (not lt!2468146))))

(declare-fun b!6908620 () Bool)

(assert (=> b!6908620 (= e!4159710 e!4159708)))

(declare-fun res!2817424 () Bool)

(assert (=> b!6908620 (=> res!2817424 e!4159708)))

(assert (=> b!6908620 (= res!2817424 call!628154)))

(assert (= (and d!2163071 c!1283344) b!6908618))

(assert (= (and d!2163071 (not c!1283344)) b!6908609))

(assert (= (and d!2163071 c!1283343) b!6908613))

(assert (= (and d!2163071 (not c!1283343)) b!6908610))

(assert (= (and b!6908610 c!1283342) b!6908619))

(assert (= (and b!6908610 (not c!1283342)) b!6908607))

(assert (= (and b!6908607 (not res!2817423)) b!6908617))

(assert (= (and b!6908617 res!2817427) b!6908611))

(assert (= (and b!6908611 res!2817421) b!6908614))

(assert (= (and b!6908614 res!2817426) b!6908615))

(assert (= (and b!6908617 (not res!2817425)) b!6908612))

(assert (= (and b!6908612 res!2817420) b!6908620))

(assert (= (and b!6908620 (not res!2817424)) b!6908616))

(assert (= (and b!6908616 (not res!2817422)) b!6908608))

(assert (= (or b!6908613 b!6908611 b!6908620) bm!628149))

(declare-fun m!7624310 () Bool)

(assert (=> b!6908618 m!7624310))

(declare-fun m!7624312 () Bool)

(assert (=> d!2163071 m!7624312))

(assert (=> d!2163071 m!7624284))

(declare-fun m!7624314 () Bool)

(assert (=> b!6908615 m!7624314))

(declare-fun m!7624316 () Bool)

(assert (=> b!6908614 m!7624316))

(assert (=> b!6908614 m!7624316))

(declare-fun m!7624318 () Bool)

(assert (=> b!6908614 m!7624318))

(assert (=> b!6908609 m!7624314))

(assert (=> b!6908609 m!7624314))

(declare-fun m!7624320 () Bool)

(assert (=> b!6908609 m!7624320))

(assert (=> b!6908609 m!7624316))

(assert (=> b!6908609 m!7624320))

(assert (=> b!6908609 m!7624316))

(declare-fun m!7624322 () Bool)

(assert (=> b!6908609 m!7624322))

(assert (=> b!6908608 m!7624314))

(assert (=> bm!628149 m!7624312))

(assert (=> b!6908616 m!7624316))

(assert (=> b!6908616 m!7624316))

(assert (=> b!6908616 m!7624318))

(assert (=> b!6908467 d!2163071))

(declare-fun d!2163077 () Bool)

(assert (=> d!2163077 (= (matchR!9028 lt!2468123 s!14361) (matchRSpec!3946 lt!2468123 s!14361))))

(declare-fun lt!2468148 () Unit!160502)

(assert (=> d!2163077 (= lt!2468148 (choose!51447 lt!2468123 s!14361))))

(assert (=> d!2163077 (validRegex!8591 lt!2468123)))

(assert (=> d!2163077 (= (mainMatchTheorem!3946 lt!2468123 s!14361) lt!2468148)))

(declare-fun bs!1844345 () Bool)

(assert (= bs!1844345 d!2163077))

(assert (=> bs!1844345 m!7624226))

(assert (=> bs!1844345 m!7624232))

(declare-fun m!7624324 () Bool)

(assert (=> bs!1844345 m!7624324))

(declare-fun m!7624326 () Bool)

(assert (=> bs!1844345 m!7624326))

(assert (=> b!6908467 d!2163077))

(declare-fun b!6908621 () Bool)

(declare-fun res!2817431 () Bool)

(declare-fun e!4159720 () Bool)

(assert (=> b!6908621 (=> res!2817431 e!4159720)))

(assert (=> b!6908621 (= res!2817431 (not ((_ is ElementMatch!16883) lt!2468123)))))

(declare-fun e!4159719 () Bool)

(assert (=> b!6908621 (= e!4159719 e!4159720)))

(declare-fun b!6908622 () Bool)

(declare-fun e!4159715 () Bool)

(assert (=> b!6908622 (= e!4159715 (not (= (head!13854 s!14361) (c!1283313 lt!2468123))))))

(declare-fun b!6908623 () Bool)

(declare-fun e!4159718 () Bool)

(assert (=> b!6908623 (= e!4159718 (matchR!9028 (derivativeStep!5401 lt!2468123 (head!13854 s!14361)) (tail!12906 s!14361)))))

(declare-fun b!6908624 () Bool)

(declare-fun e!4159716 () Bool)

(assert (=> b!6908624 (= e!4159716 e!4159719)))

(declare-fun c!1283345 () Bool)

(assert (=> b!6908624 (= c!1283345 ((_ is EmptyLang!16883) lt!2468123))))

(declare-fun b!6908625 () Bool)

(declare-fun res!2817429 () Bool)

(declare-fun e!4159721 () Bool)

(assert (=> b!6908625 (=> (not res!2817429) (not e!4159721))))

(declare-fun call!628155 () Bool)

(assert (=> b!6908625 (= res!2817429 (not call!628155))))

(declare-fun b!6908626 () Bool)

(declare-fun e!4159717 () Bool)

(assert (=> b!6908626 (= e!4159720 e!4159717)))

(declare-fun res!2817428 () Bool)

(assert (=> b!6908626 (=> (not res!2817428) (not e!4159717))))

(declare-fun lt!2468149 () Bool)

(assert (=> b!6908626 (= res!2817428 (not lt!2468149))))

(declare-fun bm!628150 () Bool)

(assert (=> bm!628150 (= call!628155 (isEmpty!38758 s!14361))))

(declare-fun b!6908627 () Bool)

(assert (=> b!6908627 (= e!4159716 (= lt!2468149 call!628155))))

(declare-fun b!6908628 () Bool)

(declare-fun res!2817434 () Bool)

(assert (=> b!6908628 (=> (not res!2817434) (not e!4159721))))

(assert (=> b!6908628 (= res!2817434 (isEmpty!38758 (tail!12906 s!14361)))))

(declare-fun d!2163079 () Bool)

(assert (=> d!2163079 e!4159716))

(declare-fun c!1283346 () Bool)

(assert (=> d!2163079 (= c!1283346 ((_ is EmptyExpr!16883) lt!2468123))))

(assert (=> d!2163079 (= lt!2468149 e!4159718)))

(declare-fun c!1283347 () Bool)

(assert (=> d!2163079 (= c!1283347 (isEmpty!38758 s!14361))))

(assert (=> d!2163079 (validRegex!8591 lt!2468123)))

(assert (=> d!2163079 (= (matchR!9028 lt!2468123 s!14361) lt!2468149)))

(declare-fun b!6908629 () Bool)

(assert (=> b!6908629 (= e!4159721 (= (head!13854 s!14361) (c!1283313 lt!2468123)))))

(declare-fun b!6908630 () Bool)

(declare-fun res!2817430 () Bool)

(assert (=> b!6908630 (=> res!2817430 e!4159715)))

(assert (=> b!6908630 (= res!2817430 (not (isEmpty!38758 (tail!12906 s!14361))))))

(declare-fun b!6908631 () Bool)

(declare-fun res!2817433 () Bool)

(assert (=> b!6908631 (=> res!2817433 e!4159720)))

(assert (=> b!6908631 (= res!2817433 e!4159721)))

(declare-fun res!2817435 () Bool)

(assert (=> b!6908631 (=> (not res!2817435) (not e!4159721))))

(assert (=> b!6908631 (= res!2817435 lt!2468149)))

(declare-fun b!6908632 () Bool)

(assert (=> b!6908632 (= e!4159718 (nullable!6722 lt!2468123))))

(declare-fun b!6908633 () Bool)

(assert (=> b!6908633 (= e!4159719 (not lt!2468149))))

(declare-fun b!6908634 () Bool)

(assert (=> b!6908634 (= e!4159717 e!4159715)))

(declare-fun res!2817432 () Bool)

(assert (=> b!6908634 (=> res!2817432 e!4159715)))

(assert (=> b!6908634 (= res!2817432 call!628155)))

(assert (= (and d!2163079 c!1283347) b!6908632))

(assert (= (and d!2163079 (not c!1283347)) b!6908623))

(assert (= (and d!2163079 c!1283346) b!6908627))

(assert (= (and d!2163079 (not c!1283346)) b!6908624))

(assert (= (and b!6908624 c!1283345) b!6908633))

(assert (= (and b!6908624 (not c!1283345)) b!6908621))

(assert (= (and b!6908621 (not res!2817431)) b!6908631))

(assert (= (and b!6908631 res!2817435) b!6908625))

(assert (= (and b!6908625 res!2817429) b!6908628))

(assert (= (and b!6908628 res!2817434) b!6908629))

(assert (= (and b!6908631 (not res!2817433)) b!6908626))

(assert (= (and b!6908626 res!2817428) b!6908634))

(assert (= (and b!6908634 (not res!2817432)) b!6908630))

(assert (= (and b!6908630 (not res!2817430)) b!6908622))

(assert (= (or b!6908627 b!6908625 b!6908634) bm!628150))

(declare-fun m!7624328 () Bool)

(assert (=> b!6908632 m!7624328))

(assert (=> d!2163079 m!7624312))

(assert (=> d!2163079 m!7624326))

(assert (=> b!6908629 m!7624314))

(assert (=> b!6908628 m!7624316))

(assert (=> b!6908628 m!7624316))

(assert (=> b!6908628 m!7624318))

(assert (=> b!6908623 m!7624314))

(assert (=> b!6908623 m!7624314))

(declare-fun m!7624330 () Bool)

(assert (=> b!6908623 m!7624330))

(assert (=> b!6908623 m!7624316))

(assert (=> b!6908623 m!7624330))

(assert (=> b!6908623 m!7624316))

(declare-fun m!7624332 () Bool)

(assert (=> b!6908623 m!7624332))

(assert (=> b!6908622 m!7624314))

(assert (=> bm!628150 m!7624312))

(assert (=> b!6908630 m!7624316))

(assert (=> b!6908630 m!7624316))

(assert (=> b!6908630 m!7624318))

(assert (=> b!6908467 d!2163079))

(declare-fun bs!1844347 () Bool)

(declare-fun b!6908714 () Bool)

(assert (= bs!1844347 (and b!6908714 b!6908475)))

(declare-fun lambda!392521 () Int)

(assert (=> bs!1844347 (not (= lambda!392521 lambda!392515))))

(assert (=> bs!1844347 (not (= lambda!392521 lambda!392516))))

(assert (=> b!6908714 true))

(assert (=> b!6908714 true))

(declare-fun bs!1844348 () Bool)

(declare-fun b!6908715 () Bool)

(assert (= bs!1844348 (and b!6908715 b!6908475)))

(declare-fun lambda!392522 () Int)

(assert (=> bs!1844348 (not (= lambda!392522 lambda!392515))))

(assert (=> bs!1844348 (= (and (= (regOne!34278 lt!2468124) r1!6342) (= (regTwo!34278 lt!2468124) lt!2468125)) (= lambda!392522 lambda!392516))))

(declare-fun bs!1844349 () Bool)

(assert (= bs!1844349 (and b!6908715 b!6908714)))

(assert (=> bs!1844349 (not (= lambda!392522 lambda!392521))))

(assert (=> b!6908715 true))

(assert (=> b!6908715 true))

(declare-fun b!6908710 () Bool)

(declare-fun e!4159766 () Bool)

(assert (=> b!6908710 (= e!4159766 (= s!14361 (Cons!66516 (c!1283313 lt!2468124) Nil!66516)))))

(declare-fun c!1283367 () Bool)

(declare-fun bm!628158 () Bool)

(declare-fun call!628163 () Bool)

(assert (=> bm!628158 (= call!628163 (Exists!3891 (ite c!1283367 lambda!392521 lambda!392522)))))

(declare-fun b!6908711 () Bool)

(declare-fun e!4159764 () Bool)

(declare-fun e!4159762 () Bool)

(assert (=> b!6908711 (= e!4159764 e!4159762)))

(declare-fun res!2817476 () Bool)

(assert (=> b!6908711 (= res!2817476 (matchRSpec!3946 (regOne!34279 lt!2468124) s!14361))))

(assert (=> b!6908711 (=> res!2817476 e!4159762)))

(declare-fun b!6908712 () Bool)

(declare-fun e!4159767 () Bool)

(declare-fun e!4159765 () Bool)

(assert (=> b!6908712 (= e!4159767 e!4159765)))

(declare-fun res!2817477 () Bool)

(assert (=> b!6908712 (= res!2817477 (not ((_ is EmptyLang!16883) lt!2468124)))))

(assert (=> b!6908712 (=> (not res!2817477) (not e!4159765))))

(declare-fun b!6908713 () Bool)

(declare-fun call!628164 () Bool)

(assert (=> b!6908713 (= e!4159767 call!628164)))

(declare-fun e!4159763 () Bool)

(assert (=> b!6908714 (= e!4159763 call!628163)))

(declare-fun bm!628159 () Bool)

(assert (=> bm!628159 (= call!628164 (isEmpty!38758 s!14361))))

(declare-fun e!4159761 () Bool)

(assert (=> b!6908715 (= e!4159761 call!628163)))

(declare-fun b!6908716 () Bool)

(declare-fun c!1283366 () Bool)

(assert (=> b!6908716 (= c!1283366 ((_ is ElementMatch!16883) lt!2468124))))

(assert (=> b!6908716 (= e!4159765 e!4159766)))

(declare-fun b!6908717 () Bool)

(assert (=> b!6908717 (= e!4159764 e!4159761)))

(assert (=> b!6908717 (= c!1283367 ((_ is Star!16883) lt!2468124))))

(declare-fun d!2163081 () Bool)

(declare-fun c!1283365 () Bool)

(assert (=> d!2163081 (= c!1283365 ((_ is EmptyExpr!16883) lt!2468124))))

(assert (=> d!2163081 (= (matchRSpec!3946 lt!2468124 s!14361) e!4159767)))

(declare-fun b!6908709 () Bool)

(declare-fun res!2817478 () Bool)

(assert (=> b!6908709 (=> res!2817478 e!4159763)))

(assert (=> b!6908709 (= res!2817478 call!628164)))

(assert (=> b!6908709 (= e!4159761 e!4159763)))

(declare-fun b!6908718 () Bool)

(declare-fun c!1283368 () Bool)

(assert (=> b!6908718 (= c!1283368 ((_ is Union!16883) lt!2468124))))

(assert (=> b!6908718 (= e!4159766 e!4159764)))

(declare-fun b!6908719 () Bool)

(assert (=> b!6908719 (= e!4159762 (matchRSpec!3946 (regTwo!34279 lt!2468124) s!14361))))

(assert (= (and d!2163081 c!1283365) b!6908713))

(assert (= (and d!2163081 (not c!1283365)) b!6908712))

(assert (= (and b!6908712 res!2817477) b!6908716))

(assert (= (and b!6908716 c!1283366) b!6908710))

(assert (= (and b!6908716 (not c!1283366)) b!6908718))

(assert (= (and b!6908718 c!1283368) b!6908711))

(assert (= (and b!6908718 (not c!1283368)) b!6908717))

(assert (= (and b!6908711 (not res!2817476)) b!6908719))

(assert (= (and b!6908717 c!1283367) b!6908709))

(assert (= (and b!6908717 (not c!1283367)) b!6908715))

(assert (= (and b!6908709 (not res!2817478)) b!6908714))

(assert (= (or b!6908714 b!6908715) bm!628158))

(assert (= (or b!6908713 b!6908709) bm!628159))

(declare-fun m!7624350 () Bool)

(assert (=> bm!628158 m!7624350))

(declare-fun m!7624352 () Bool)

(assert (=> b!6908711 m!7624352))

(assert (=> bm!628159 m!7624312))

(declare-fun m!7624354 () Bool)

(assert (=> b!6908719 m!7624354))

(assert (=> b!6908467 d!2163081))

(declare-fun bs!1844350 () Bool)

(declare-fun b!6908747 () Bool)

(assert (= bs!1844350 (and b!6908747 b!6908475)))

(declare-fun lambda!392525 () Int)

(assert (=> bs!1844350 (not (= lambda!392525 lambda!392515))))

(assert (=> bs!1844350 (not (= lambda!392525 lambda!392516))))

(declare-fun bs!1844351 () Bool)

(assert (= bs!1844351 (and b!6908747 b!6908714)))

(assert (=> bs!1844351 (= (and (= (reg!17212 lt!2468123) (reg!17212 lt!2468124)) (= lt!2468123 lt!2468124)) (= lambda!392525 lambda!392521))))

(declare-fun bs!1844352 () Bool)

(assert (= bs!1844352 (and b!6908747 b!6908715)))

(assert (=> bs!1844352 (not (= lambda!392525 lambda!392522))))

(assert (=> b!6908747 true))

(assert (=> b!6908747 true))

(declare-fun bs!1844353 () Bool)

(declare-fun b!6908748 () Bool)

(assert (= bs!1844353 (and b!6908748 b!6908714)))

(declare-fun lambda!392526 () Int)

(assert (=> bs!1844353 (not (= lambda!392526 lambda!392521))))

(declare-fun bs!1844354 () Bool)

(assert (= bs!1844354 (and b!6908748 b!6908747)))

(assert (=> bs!1844354 (not (= lambda!392526 lambda!392525))))

(declare-fun bs!1844355 () Bool)

(assert (= bs!1844355 (and b!6908748 b!6908475)))

(assert (=> bs!1844355 (= (and (= (regOne!34278 lt!2468123) r1!6342) (= (regTwo!34278 lt!2468123) lt!2468125)) (= lambda!392526 lambda!392516))))

(assert (=> bs!1844355 (not (= lambda!392526 lambda!392515))))

(declare-fun bs!1844356 () Bool)

(assert (= bs!1844356 (and b!6908748 b!6908715)))

(assert (=> bs!1844356 (= (and (= (regOne!34278 lt!2468123) (regOne!34278 lt!2468124)) (= (regTwo!34278 lt!2468123) (regTwo!34278 lt!2468124))) (= lambda!392526 lambda!392522))))

(assert (=> b!6908748 true))

(assert (=> b!6908748 true))

(declare-fun b!6908743 () Bool)

(declare-fun e!4159787 () Bool)

(assert (=> b!6908743 (= e!4159787 (= s!14361 (Cons!66516 (c!1283313 lt!2468123) Nil!66516)))))

(declare-fun call!628165 () Bool)

(declare-fun bm!628160 () Bool)

(declare-fun c!1283379 () Bool)

(assert (=> bm!628160 (= call!628165 (Exists!3891 (ite c!1283379 lambda!392525 lambda!392526)))))

(declare-fun b!6908744 () Bool)

(declare-fun e!4159785 () Bool)

(declare-fun e!4159783 () Bool)

(assert (=> b!6908744 (= e!4159785 e!4159783)))

(declare-fun res!2817485 () Bool)

(assert (=> b!6908744 (= res!2817485 (matchRSpec!3946 (regOne!34279 lt!2468123) s!14361))))

(assert (=> b!6908744 (=> res!2817485 e!4159783)))

(declare-fun b!6908745 () Bool)

(declare-fun e!4159788 () Bool)

(declare-fun e!4159786 () Bool)

(assert (=> b!6908745 (= e!4159788 e!4159786)))

(declare-fun res!2817486 () Bool)

(assert (=> b!6908745 (= res!2817486 (not ((_ is EmptyLang!16883) lt!2468123)))))

(assert (=> b!6908745 (=> (not res!2817486) (not e!4159786))))

(declare-fun b!6908746 () Bool)

(declare-fun call!628166 () Bool)

(assert (=> b!6908746 (= e!4159788 call!628166)))

(declare-fun e!4159784 () Bool)

(assert (=> b!6908747 (= e!4159784 call!628165)))

(declare-fun bm!628161 () Bool)

(assert (=> bm!628161 (= call!628166 (isEmpty!38758 s!14361))))

(declare-fun e!4159782 () Bool)

(assert (=> b!6908748 (= e!4159782 call!628165)))

(declare-fun b!6908749 () Bool)

(declare-fun c!1283378 () Bool)

(assert (=> b!6908749 (= c!1283378 ((_ is ElementMatch!16883) lt!2468123))))

(assert (=> b!6908749 (= e!4159786 e!4159787)))

(declare-fun b!6908750 () Bool)

(assert (=> b!6908750 (= e!4159785 e!4159782)))

(assert (=> b!6908750 (= c!1283379 ((_ is Star!16883) lt!2468123))))

(declare-fun d!2163089 () Bool)

(declare-fun c!1283377 () Bool)

(assert (=> d!2163089 (= c!1283377 ((_ is EmptyExpr!16883) lt!2468123))))

(assert (=> d!2163089 (= (matchRSpec!3946 lt!2468123 s!14361) e!4159788)))

(declare-fun b!6908742 () Bool)

(declare-fun res!2817487 () Bool)

(assert (=> b!6908742 (=> res!2817487 e!4159784)))

(assert (=> b!6908742 (= res!2817487 call!628166)))

(assert (=> b!6908742 (= e!4159782 e!4159784)))

(declare-fun b!6908751 () Bool)

(declare-fun c!1283380 () Bool)

(assert (=> b!6908751 (= c!1283380 ((_ is Union!16883) lt!2468123))))

(assert (=> b!6908751 (= e!4159787 e!4159785)))

(declare-fun b!6908752 () Bool)

(assert (=> b!6908752 (= e!4159783 (matchRSpec!3946 (regTwo!34279 lt!2468123) s!14361))))

(assert (= (and d!2163089 c!1283377) b!6908746))

(assert (= (and d!2163089 (not c!1283377)) b!6908745))

(assert (= (and b!6908745 res!2817486) b!6908749))

(assert (= (and b!6908749 c!1283378) b!6908743))

(assert (= (and b!6908749 (not c!1283378)) b!6908751))

(assert (= (and b!6908751 c!1283380) b!6908744))

(assert (= (and b!6908751 (not c!1283380)) b!6908750))

(assert (= (and b!6908744 (not res!2817485)) b!6908752))

(assert (= (and b!6908750 c!1283379) b!6908742))

(assert (= (and b!6908750 (not c!1283379)) b!6908748))

(assert (= (and b!6908742 (not res!2817487)) b!6908747))

(assert (= (or b!6908747 b!6908748) bm!628160))

(assert (= (or b!6908746 b!6908742) bm!628161))

(declare-fun m!7624356 () Bool)

(assert (=> bm!628160 m!7624356))

(declare-fun m!7624358 () Bool)

(assert (=> b!6908744 m!7624358))

(assert (=> bm!628161 m!7624312))

(declare-fun m!7624360 () Bool)

(assert (=> b!6908752 m!7624360))

(assert (=> b!6908467 d!2163089))

(declare-fun d!2163091 () Bool)

(declare-fun isEmpty!38759 (Option!16662) Bool)

(assert (=> d!2163091 (= (isDefined!13365 lt!2468118) (not (isEmpty!38759 lt!2468118)))))

(declare-fun bs!1844357 () Bool)

(assert (= bs!1844357 d!2163091))

(declare-fun m!7624362 () Bool)

(assert (=> bs!1844357 m!7624362))

(assert (=> b!6908459 d!2163091))

(declare-fun b!6908796 () Bool)

(declare-fun e!4159813 () Option!16662)

(declare-fun e!4159812 () Option!16662)

(assert (=> b!6908796 (= e!4159813 e!4159812)))

(declare-fun c!1283389 () Bool)

(assert (=> b!6908796 (= c!1283389 ((_ is Nil!66516) s!14361))))

(declare-fun b!6908797 () Bool)

(declare-fun e!4159816 () Bool)

(declare-fun lt!2468164 () Option!16662)

(assert (=> b!6908797 (= e!4159816 (not (isDefined!13365 lt!2468164)))))

(declare-fun d!2163093 () Bool)

(assert (=> d!2163093 e!4159816))

(declare-fun res!2817515 () Bool)

(assert (=> d!2163093 (=> res!2817515 e!4159816)))

(declare-fun e!4159815 () Bool)

(assert (=> d!2163093 (= res!2817515 e!4159815)))

(declare-fun res!2817517 () Bool)

(assert (=> d!2163093 (=> (not res!2817517) (not e!4159815))))

(assert (=> d!2163093 (= res!2817517 (isDefined!13365 lt!2468164))))

(assert (=> d!2163093 (= lt!2468164 e!4159813)))

(declare-fun c!1283390 () Bool)

(declare-fun e!4159814 () Bool)

(assert (=> d!2163093 (= c!1283390 e!4159814)))

(declare-fun res!2817516 () Bool)

(assert (=> d!2163093 (=> (not res!2817516) (not e!4159814))))

(assert (=> d!2163093 (= res!2817516 (matchR!9028 r1!6342 Nil!66516))))

(assert (=> d!2163093 (validRegex!8591 r1!6342)))

(assert (=> d!2163093 (= (findConcatSeparation!3076 r1!6342 lt!2468125 Nil!66516 s!14361 s!14361) lt!2468164)))

(declare-fun b!6908798 () Bool)

(assert (=> b!6908798 (= e!4159814 (matchR!9028 lt!2468125 s!14361))))

(declare-fun b!6908799 () Bool)

(declare-fun lt!2468163 () Unit!160502)

(declare-fun lt!2468162 () Unit!160502)

(assert (=> b!6908799 (= lt!2468163 lt!2468162)))

(declare-fun ++!14936 (List!66640 List!66640) List!66640)

(assert (=> b!6908799 (= (++!14936 (++!14936 Nil!66516 (Cons!66516 (h!72964 s!14361) Nil!66516)) (t!380383 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2809 (List!66640 C!34036 List!66640 List!66640) Unit!160502)

(assert (=> b!6908799 (= lt!2468162 (lemmaMoveElementToOtherListKeepsConcatEq!2809 Nil!66516 (h!72964 s!14361) (t!380383 s!14361) s!14361))))

(assert (=> b!6908799 (= e!4159812 (findConcatSeparation!3076 r1!6342 lt!2468125 (++!14936 Nil!66516 (Cons!66516 (h!72964 s!14361) Nil!66516)) (t!380383 s!14361) s!14361))))

(declare-fun b!6908800 () Bool)

(assert (=> b!6908800 (= e!4159815 (= (++!14936 (_1!37053 (get!23275 lt!2468164)) (_2!37053 (get!23275 lt!2468164))) s!14361))))

(declare-fun b!6908801 () Bool)

(declare-fun res!2817519 () Bool)

(assert (=> b!6908801 (=> (not res!2817519) (not e!4159815))))

(assert (=> b!6908801 (= res!2817519 (matchR!9028 lt!2468125 (_2!37053 (get!23275 lt!2468164))))))

(declare-fun b!6908802 () Bool)

(assert (=> b!6908802 (= e!4159812 None!16661)))

(declare-fun b!6908803 () Bool)

(assert (=> b!6908803 (= e!4159813 (Some!16661 (tuple2!67501 Nil!66516 s!14361)))))

(declare-fun b!6908804 () Bool)

(declare-fun res!2817518 () Bool)

(assert (=> b!6908804 (=> (not res!2817518) (not e!4159815))))

(assert (=> b!6908804 (= res!2817518 (matchR!9028 r1!6342 (_1!37053 (get!23275 lt!2468164))))))

(assert (= (and d!2163093 res!2817516) b!6908798))

(assert (= (and d!2163093 c!1283390) b!6908803))

(assert (= (and d!2163093 (not c!1283390)) b!6908796))

(assert (= (and b!6908796 c!1283389) b!6908802))

(assert (= (and b!6908796 (not c!1283389)) b!6908799))

(assert (= (and d!2163093 res!2817517) b!6908804))

(assert (= (and b!6908804 res!2817518) b!6908801))

(assert (= (and b!6908801 res!2817519) b!6908800))

(assert (= (and d!2163093 (not res!2817515)) b!6908797))

(declare-fun m!7624374 () Bool)

(assert (=> b!6908800 m!7624374))

(declare-fun m!7624378 () Bool)

(assert (=> b!6908800 m!7624378))

(declare-fun m!7624380 () Bool)

(assert (=> b!6908799 m!7624380))

(assert (=> b!6908799 m!7624380))

(declare-fun m!7624384 () Bool)

(assert (=> b!6908799 m!7624384))

(declare-fun m!7624386 () Bool)

(assert (=> b!6908799 m!7624386))

(assert (=> b!6908799 m!7624380))

(declare-fun m!7624388 () Bool)

(assert (=> b!6908799 m!7624388))

(declare-fun m!7624390 () Bool)

(assert (=> b!6908797 m!7624390))

(assert (=> b!6908804 m!7624374))

(declare-fun m!7624392 () Bool)

(assert (=> b!6908804 m!7624392))

(assert (=> b!6908801 m!7624374))

(declare-fun m!7624394 () Bool)

(assert (=> b!6908801 m!7624394))

(declare-fun m!7624396 () Bool)

(assert (=> b!6908798 m!7624396))

(assert (=> d!2163093 m!7624390))

(declare-fun m!7624398 () Bool)

(assert (=> d!2163093 m!7624398))

(assert (=> d!2163093 m!7624254))

(assert (=> b!6908459 d!2163093))

(declare-fun bs!1844366 () Bool)

(declare-fun d!2163101 () Bool)

(assert (= bs!1844366 (and d!2163101 b!6908714)))

(declare-fun lambda!392540 () Int)

(assert (=> bs!1844366 (not (= lambda!392540 lambda!392521))))

(declare-fun bs!1844367 () Bool)

(assert (= bs!1844367 (and d!2163101 b!6908747)))

(assert (=> bs!1844367 (not (= lambda!392540 lambda!392525))))

(declare-fun bs!1844368 () Bool)

(assert (= bs!1844368 (and d!2163101 b!6908475)))

(assert (=> bs!1844368 (not (= lambda!392540 lambda!392516))))

(assert (=> bs!1844368 (= lambda!392540 lambda!392515)))

(declare-fun bs!1844369 () Bool)

(assert (= bs!1844369 (and d!2163101 b!6908748)))

(assert (=> bs!1844369 (not (= lambda!392540 lambda!392526))))

(declare-fun bs!1844370 () Bool)

(assert (= bs!1844370 (and d!2163101 b!6908715)))

(assert (=> bs!1844370 (not (= lambda!392540 lambda!392522))))

(assert (=> d!2163101 true))

(assert (=> d!2163101 true))

(assert (=> d!2163101 true))

(assert (=> d!2163101 (= (isDefined!13365 (findConcatSeparation!3076 r1!6342 lt!2468125 Nil!66516 s!14361 s!14361)) (Exists!3891 lambda!392540))))

(declare-fun lt!2468169 () Unit!160502)

(declare-fun choose!51451 (Regex!16883 Regex!16883 List!66640) Unit!160502)

(assert (=> d!2163101 (= lt!2468169 (choose!51451 r1!6342 lt!2468125 s!14361))))

(assert (=> d!2163101 (validRegex!8591 r1!6342)))

(assert (=> d!2163101 (= (lemmaFindConcatSeparationEquivalentToExists!2838 r1!6342 lt!2468125 s!14361) lt!2468169)))

(declare-fun bs!1844371 () Bool)

(assert (= bs!1844371 d!2163101))

(assert (=> bs!1844371 m!7624220))

(declare-fun m!7624400 () Bool)

(assert (=> bs!1844371 m!7624400))

(assert (=> bs!1844371 m!7624254))

(declare-fun m!7624402 () Bool)

(assert (=> bs!1844371 m!7624402))

(assert (=> bs!1844371 m!7624220))

(declare-fun m!7624404 () Bool)

(assert (=> bs!1844371 m!7624404))

(assert (=> b!6908475 d!2163101))

(declare-fun d!2163103 () Bool)

(declare-fun choose!51452 (Int) Bool)

(assert (=> d!2163103 (= (Exists!3891 lambda!392515) (choose!51452 lambda!392515))))

(declare-fun bs!1844374 () Bool)

(assert (= bs!1844374 d!2163103))

(declare-fun m!7624406 () Bool)

(assert (=> bs!1844374 m!7624406))

(assert (=> b!6908475 d!2163103))

(declare-fun d!2163105 () Bool)

(assert (=> d!2163105 (= (matchR!9028 r1!6342 (_1!37053 lt!2468121)) (matchRSpec!3946 r1!6342 (_1!37053 lt!2468121)))))

(declare-fun lt!2468171 () Unit!160502)

(assert (=> d!2163105 (= lt!2468171 (choose!51447 r1!6342 (_1!37053 lt!2468121)))))

(assert (=> d!2163105 (validRegex!8591 r1!6342)))

(assert (=> d!2163105 (= (mainMatchTheorem!3946 r1!6342 (_1!37053 lt!2468121)) lt!2468171)))

(declare-fun bs!1844376 () Bool)

(assert (= bs!1844376 d!2163105))

(assert (=> bs!1844376 m!7624238))

(assert (=> bs!1844376 m!7624240))

(declare-fun m!7624408 () Bool)

(assert (=> bs!1844376 m!7624408))

(assert (=> bs!1844376 m!7624254))

(assert (=> b!6908475 d!2163105))

(declare-fun b!6908817 () Bool)

(declare-fun res!2817535 () Bool)

(declare-fun e!4159828 () Bool)

(assert (=> b!6908817 (=> res!2817535 e!4159828)))

(assert (=> b!6908817 (= res!2817535 (not ((_ is ElementMatch!16883) r1!6342)))))

(declare-fun e!4159827 () Bool)

(assert (=> b!6908817 (= e!4159827 e!4159828)))

(declare-fun b!6908818 () Bool)

(declare-fun e!4159823 () Bool)

(assert (=> b!6908818 (= e!4159823 (not (= (head!13854 (_1!37053 lt!2468121)) (c!1283313 r1!6342))))))

(declare-fun b!6908819 () Bool)

(declare-fun e!4159826 () Bool)

(assert (=> b!6908819 (= e!4159826 (matchR!9028 (derivativeStep!5401 r1!6342 (head!13854 (_1!37053 lt!2468121))) (tail!12906 (_1!37053 lt!2468121))))))

(declare-fun b!6908820 () Bool)

(declare-fun e!4159824 () Bool)

(assert (=> b!6908820 (= e!4159824 e!4159827)))

(declare-fun c!1283391 () Bool)

(assert (=> b!6908820 (= c!1283391 ((_ is EmptyLang!16883) r1!6342))))

(declare-fun b!6908821 () Bool)

(declare-fun res!2817533 () Bool)

(declare-fun e!4159829 () Bool)

(assert (=> b!6908821 (=> (not res!2817533) (not e!4159829))))

(declare-fun call!628173 () Bool)

(assert (=> b!6908821 (= res!2817533 (not call!628173))))

(declare-fun b!6908822 () Bool)

(declare-fun e!4159825 () Bool)

(assert (=> b!6908822 (= e!4159828 e!4159825)))

(declare-fun res!2817532 () Bool)

(assert (=> b!6908822 (=> (not res!2817532) (not e!4159825))))

(declare-fun lt!2468172 () Bool)

(assert (=> b!6908822 (= res!2817532 (not lt!2468172))))

(declare-fun bm!628168 () Bool)

(assert (=> bm!628168 (= call!628173 (isEmpty!38758 (_1!37053 lt!2468121)))))

(declare-fun b!6908823 () Bool)

(assert (=> b!6908823 (= e!4159824 (= lt!2468172 call!628173))))

(declare-fun b!6908824 () Bool)

(declare-fun res!2817538 () Bool)

(assert (=> b!6908824 (=> (not res!2817538) (not e!4159829))))

(assert (=> b!6908824 (= res!2817538 (isEmpty!38758 (tail!12906 (_1!37053 lt!2468121))))))

(declare-fun d!2163107 () Bool)

(assert (=> d!2163107 e!4159824))

(declare-fun c!1283392 () Bool)

(assert (=> d!2163107 (= c!1283392 ((_ is EmptyExpr!16883) r1!6342))))

(assert (=> d!2163107 (= lt!2468172 e!4159826)))

(declare-fun c!1283393 () Bool)

(assert (=> d!2163107 (= c!1283393 (isEmpty!38758 (_1!37053 lt!2468121)))))

(assert (=> d!2163107 (validRegex!8591 r1!6342)))

(assert (=> d!2163107 (= (matchR!9028 r1!6342 (_1!37053 lt!2468121)) lt!2468172)))

(declare-fun b!6908825 () Bool)

(assert (=> b!6908825 (= e!4159829 (= (head!13854 (_1!37053 lt!2468121)) (c!1283313 r1!6342)))))

(declare-fun b!6908826 () Bool)

(declare-fun res!2817534 () Bool)

(assert (=> b!6908826 (=> res!2817534 e!4159823)))

(assert (=> b!6908826 (= res!2817534 (not (isEmpty!38758 (tail!12906 (_1!37053 lt!2468121)))))))

(declare-fun b!6908827 () Bool)

(declare-fun res!2817537 () Bool)

(assert (=> b!6908827 (=> res!2817537 e!4159828)))

(assert (=> b!6908827 (= res!2817537 e!4159829)))

(declare-fun res!2817539 () Bool)

(assert (=> b!6908827 (=> (not res!2817539) (not e!4159829))))

(assert (=> b!6908827 (= res!2817539 lt!2468172)))

(declare-fun b!6908828 () Bool)

(assert (=> b!6908828 (= e!4159826 (nullable!6722 r1!6342))))

(declare-fun b!6908829 () Bool)

(assert (=> b!6908829 (= e!4159827 (not lt!2468172))))

(declare-fun b!6908830 () Bool)

(assert (=> b!6908830 (= e!4159825 e!4159823)))

(declare-fun res!2817536 () Bool)

(assert (=> b!6908830 (=> res!2817536 e!4159823)))

(assert (=> b!6908830 (= res!2817536 call!628173)))

(assert (= (and d!2163107 c!1283393) b!6908828))

(assert (= (and d!2163107 (not c!1283393)) b!6908819))

(assert (= (and d!2163107 c!1283392) b!6908823))

(assert (= (and d!2163107 (not c!1283392)) b!6908820))

(assert (= (and b!6908820 c!1283391) b!6908829))

(assert (= (and b!6908820 (not c!1283391)) b!6908817))

(assert (= (and b!6908817 (not res!2817535)) b!6908827))

(assert (= (and b!6908827 res!2817539) b!6908821))

(assert (= (and b!6908821 res!2817533) b!6908824))

(assert (= (and b!6908824 res!2817538) b!6908825))

(assert (= (and b!6908827 (not res!2817537)) b!6908822))

(assert (= (and b!6908822 res!2817532) b!6908830))

(assert (= (and b!6908830 (not res!2817536)) b!6908826))

(assert (= (and b!6908826 (not res!2817534)) b!6908818))

(assert (= (or b!6908823 b!6908821 b!6908830) bm!628168))

(declare-fun m!7624410 () Bool)

(assert (=> b!6908828 m!7624410))

(declare-fun m!7624412 () Bool)

(assert (=> d!2163107 m!7624412))

(assert (=> d!2163107 m!7624254))

(declare-fun m!7624414 () Bool)

(assert (=> b!6908825 m!7624414))

(declare-fun m!7624416 () Bool)

(assert (=> b!6908824 m!7624416))

(assert (=> b!6908824 m!7624416))

(declare-fun m!7624418 () Bool)

(assert (=> b!6908824 m!7624418))

(assert (=> b!6908819 m!7624414))

(assert (=> b!6908819 m!7624414))

(declare-fun m!7624420 () Bool)

(assert (=> b!6908819 m!7624420))

(assert (=> b!6908819 m!7624416))

(assert (=> b!6908819 m!7624420))

(assert (=> b!6908819 m!7624416))

(declare-fun m!7624422 () Bool)

(assert (=> b!6908819 m!7624422))

(assert (=> b!6908818 m!7624414))

(assert (=> bm!628168 m!7624412))

(assert (=> b!6908826 m!7624416))

(assert (=> b!6908826 m!7624416))

(assert (=> b!6908826 m!7624418))

(assert (=> b!6908475 d!2163107))

(declare-fun d!2163109 () Bool)

(assert (=> d!2163109 (= (get!23275 lt!2468118) (v!52933 lt!2468118))))

(assert (=> b!6908475 d!2163109))

(declare-fun bs!1844380 () Bool)

(declare-fun b!6908847 () Bool)

(assert (= bs!1844380 (and b!6908847 b!6908714)))

(declare-fun lambda!392544 () Int)

(assert (=> bs!1844380 (= (and (= (_1!37053 lt!2468121) s!14361) (= (reg!17212 r1!6342) (reg!17212 lt!2468124)) (= r1!6342 lt!2468124)) (= lambda!392544 lambda!392521))))

(declare-fun bs!1844383 () Bool)

(assert (= bs!1844383 (and b!6908847 b!6908747)))

(assert (=> bs!1844383 (= (and (= (_1!37053 lt!2468121) s!14361) (= (reg!17212 r1!6342) (reg!17212 lt!2468123)) (= r1!6342 lt!2468123)) (= lambda!392544 lambda!392525))))

(declare-fun bs!1844385 () Bool)

(assert (= bs!1844385 (and b!6908847 b!6908475)))

(assert (=> bs!1844385 (not (= lambda!392544 lambda!392516))))

(declare-fun bs!1844386 () Bool)

(assert (= bs!1844386 (and b!6908847 d!2163101)))

(assert (=> bs!1844386 (not (= lambda!392544 lambda!392540))))

(assert (=> bs!1844385 (not (= lambda!392544 lambda!392515))))

(declare-fun bs!1844388 () Bool)

(assert (= bs!1844388 (and b!6908847 b!6908748)))

(assert (=> bs!1844388 (not (= lambda!392544 lambda!392526))))

(declare-fun bs!1844389 () Bool)

(assert (= bs!1844389 (and b!6908847 b!6908715)))

(assert (=> bs!1844389 (not (= lambda!392544 lambda!392522))))

(assert (=> b!6908847 true))

(assert (=> b!6908847 true))

(declare-fun bs!1844392 () Bool)

(declare-fun b!6908848 () Bool)

(assert (= bs!1844392 (and b!6908848 b!6908714)))

(declare-fun lambda!392546 () Int)

(assert (=> bs!1844392 (not (= lambda!392546 lambda!392521))))

(declare-fun bs!1844394 () Bool)

(assert (= bs!1844394 (and b!6908848 b!6908747)))

(assert (=> bs!1844394 (not (= lambda!392546 lambda!392525))))

(declare-fun bs!1844396 () Bool)

(assert (= bs!1844396 (and b!6908848 b!6908475)))

(assert (=> bs!1844396 (= (and (= (_1!37053 lt!2468121) s!14361) (= (regOne!34278 r1!6342) r1!6342) (= (regTwo!34278 r1!6342) lt!2468125)) (= lambda!392546 lambda!392516))))

(declare-fun bs!1844398 () Bool)

(assert (= bs!1844398 (and b!6908848 d!2163101)))

(assert (=> bs!1844398 (not (= lambda!392546 lambda!392540))))

(declare-fun bs!1844399 () Bool)

(assert (= bs!1844399 (and b!6908848 b!6908847)))

(assert (=> bs!1844399 (not (= lambda!392546 lambda!392544))))

(assert (=> bs!1844396 (not (= lambda!392546 lambda!392515))))

(declare-fun bs!1844401 () Bool)

(assert (= bs!1844401 (and b!6908848 b!6908748)))

(assert (=> bs!1844401 (= (and (= (_1!37053 lt!2468121) s!14361) (= (regOne!34278 r1!6342) (regOne!34278 lt!2468123)) (= (regTwo!34278 r1!6342) (regTwo!34278 lt!2468123))) (= lambda!392546 lambda!392526))))

(declare-fun bs!1844402 () Bool)

(assert (= bs!1844402 (and b!6908848 b!6908715)))

(assert (=> bs!1844402 (= (and (= (_1!37053 lt!2468121) s!14361) (= (regOne!34278 r1!6342) (regOne!34278 lt!2468124)) (= (regTwo!34278 r1!6342) (regTwo!34278 lt!2468124))) (= lambda!392546 lambda!392522))))

(assert (=> b!6908848 true))

(assert (=> b!6908848 true))

(declare-fun b!6908843 () Bool)

(declare-fun e!4159842 () Bool)

(assert (=> b!6908843 (= e!4159842 (= (_1!37053 lt!2468121) (Cons!66516 (c!1283313 r1!6342) Nil!66516)))))

(declare-fun bm!628171 () Bool)

(declare-fun c!1283400 () Bool)

(declare-fun call!628176 () Bool)

(assert (=> bm!628171 (= call!628176 (Exists!3891 (ite c!1283400 lambda!392544 lambda!392546)))))

(declare-fun b!6908844 () Bool)

(declare-fun e!4159840 () Bool)

(declare-fun e!4159838 () Bool)

(assert (=> b!6908844 (= e!4159840 e!4159838)))

(declare-fun res!2817543 () Bool)

(assert (=> b!6908844 (= res!2817543 (matchRSpec!3946 (regOne!34279 r1!6342) (_1!37053 lt!2468121)))))

(assert (=> b!6908844 (=> res!2817543 e!4159838)))

(declare-fun b!6908845 () Bool)

(declare-fun e!4159843 () Bool)

(declare-fun e!4159841 () Bool)

(assert (=> b!6908845 (= e!4159843 e!4159841)))

(declare-fun res!2817544 () Bool)

(assert (=> b!6908845 (= res!2817544 (not ((_ is EmptyLang!16883) r1!6342)))))

(assert (=> b!6908845 (=> (not res!2817544) (not e!4159841))))

(declare-fun b!6908846 () Bool)

(declare-fun call!628177 () Bool)

(assert (=> b!6908846 (= e!4159843 call!628177)))

(declare-fun e!4159839 () Bool)

(assert (=> b!6908847 (= e!4159839 call!628176)))

(declare-fun bm!628172 () Bool)

(assert (=> bm!628172 (= call!628177 (isEmpty!38758 (_1!37053 lt!2468121)))))

(declare-fun e!4159837 () Bool)

(assert (=> b!6908848 (= e!4159837 call!628176)))

(declare-fun b!6908849 () Bool)

(declare-fun c!1283399 () Bool)

(assert (=> b!6908849 (= c!1283399 ((_ is ElementMatch!16883) r1!6342))))

(assert (=> b!6908849 (= e!4159841 e!4159842)))

(declare-fun b!6908850 () Bool)

(assert (=> b!6908850 (= e!4159840 e!4159837)))

(assert (=> b!6908850 (= c!1283400 ((_ is Star!16883) r1!6342))))

(declare-fun d!2163113 () Bool)

(declare-fun c!1283398 () Bool)

(assert (=> d!2163113 (= c!1283398 ((_ is EmptyExpr!16883) r1!6342))))

(assert (=> d!2163113 (= (matchRSpec!3946 r1!6342 (_1!37053 lt!2468121)) e!4159843)))

(declare-fun b!6908842 () Bool)

(declare-fun res!2817545 () Bool)

(assert (=> b!6908842 (=> res!2817545 e!4159839)))

(assert (=> b!6908842 (= res!2817545 call!628177)))

(assert (=> b!6908842 (= e!4159837 e!4159839)))

(declare-fun b!6908851 () Bool)

(declare-fun c!1283401 () Bool)

(assert (=> b!6908851 (= c!1283401 ((_ is Union!16883) r1!6342))))

(assert (=> b!6908851 (= e!4159842 e!4159840)))

(declare-fun b!6908852 () Bool)

(assert (=> b!6908852 (= e!4159838 (matchRSpec!3946 (regTwo!34279 r1!6342) (_1!37053 lt!2468121)))))

(assert (= (and d!2163113 c!1283398) b!6908846))

(assert (= (and d!2163113 (not c!1283398)) b!6908845))

(assert (= (and b!6908845 res!2817544) b!6908849))

(assert (= (and b!6908849 c!1283399) b!6908843))

(assert (= (and b!6908849 (not c!1283399)) b!6908851))

(assert (= (and b!6908851 c!1283401) b!6908844))

(assert (= (and b!6908851 (not c!1283401)) b!6908850))

(assert (= (and b!6908844 (not res!2817543)) b!6908852))

(assert (= (and b!6908850 c!1283400) b!6908842))

(assert (= (and b!6908850 (not c!1283400)) b!6908848))

(assert (= (and b!6908842 (not res!2817545)) b!6908847))

(assert (= (or b!6908847 b!6908848) bm!628171))

(assert (= (or b!6908846 b!6908842) bm!628172))

(declare-fun m!7624438 () Bool)

(assert (=> bm!628171 m!7624438))

(declare-fun m!7624440 () Bool)

(assert (=> b!6908844 m!7624440))

(assert (=> bm!628172 m!7624412))

(declare-fun m!7624442 () Bool)

(assert (=> b!6908852 m!7624442))

(assert (=> b!6908475 d!2163113))

(declare-fun bs!1844420 () Bool)

(declare-fun d!2163117 () Bool)

(assert (= bs!1844420 (and d!2163117 b!6908714)))

(declare-fun lambda!392553 () Int)

(assert (=> bs!1844420 (not (= lambda!392553 lambda!392521))))

(declare-fun bs!1844421 () Bool)

(assert (= bs!1844421 (and d!2163117 b!6908747)))

(assert (=> bs!1844421 (not (= lambda!392553 lambda!392525))))

(declare-fun bs!1844422 () Bool)

(assert (= bs!1844422 (and d!2163117 b!6908475)))

(assert (=> bs!1844422 (not (= lambda!392553 lambda!392516))))

(declare-fun bs!1844423 () Bool)

(assert (= bs!1844423 (and d!2163117 d!2163101)))

(assert (=> bs!1844423 (= lambda!392553 lambda!392540)))

(declare-fun bs!1844424 () Bool)

(assert (= bs!1844424 (and d!2163117 b!6908847)))

(assert (=> bs!1844424 (not (= lambda!392553 lambda!392544))))

(assert (=> bs!1844422 (= lambda!392553 lambda!392515)))

(declare-fun bs!1844425 () Bool)

(assert (= bs!1844425 (and d!2163117 b!6908848)))

(assert (=> bs!1844425 (not (= lambda!392553 lambda!392546))))

(declare-fun bs!1844426 () Bool)

(assert (= bs!1844426 (and d!2163117 b!6908748)))

(assert (=> bs!1844426 (not (= lambda!392553 lambda!392526))))

(declare-fun bs!1844427 () Bool)

(assert (= bs!1844427 (and d!2163117 b!6908715)))

(assert (=> bs!1844427 (not (= lambda!392553 lambda!392522))))

(assert (=> d!2163117 true))

(assert (=> d!2163117 true))

(assert (=> d!2163117 true))

(declare-fun lambda!392554 () Int)

(assert (=> bs!1844420 (not (= lambda!392554 lambda!392521))))

(assert (=> bs!1844421 (not (= lambda!392554 lambda!392525))))

(assert (=> bs!1844422 (= lambda!392554 lambda!392516)))

(assert (=> bs!1844423 (not (= lambda!392554 lambda!392540))))

(assert (=> bs!1844424 (not (= lambda!392554 lambda!392544))))

(assert (=> bs!1844425 (= (and (= s!14361 (_1!37053 lt!2468121)) (= r1!6342 (regOne!34278 r1!6342)) (= lt!2468125 (regTwo!34278 r1!6342))) (= lambda!392554 lambda!392546))))

(assert (=> bs!1844426 (= (and (= r1!6342 (regOne!34278 lt!2468123)) (= lt!2468125 (regTwo!34278 lt!2468123))) (= lambda!392554 lambda!392526))))

(assert (=> bs!1844427 (= (and (= r1!6342 (regOne!34278 lt!2468124)) (= lt!2468125 (regTwo!34278 lt!2468124))) (= lambda!392554 lambda!392522))))

(assert (=> bs!1844422 (not (= lambda!392554 lambda!392515))))

(declare-fun bs!1844428 () Bool)

(assert (= bs!1844428 d!2163117))

(assert (=> bs!1844428 (not (= lambda!392554 lambda!392553))))

(assert (=> d!2163117 true))

(assert (=> d!2163117 true))

(assert (=> d!2163117 true))

(assert (=> d!2163117 (= (Exists!3891 lambda!392553) (Exists!3891 lambda!392554))))

(declare-fun lt!2468179 () Unit!160502)

(declare-fun choose!51453 (Regex!16883 Regex!16883 List!66640) Unit!160502)

(assert (=> d!2163117 (= lt!2468179 (choose!51453 r1!6342 lt!2468125 s!14361))))

(assert (=> d!2163117 (validRegex!8591 r1!6342)))

(assert (=> d!2163117 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2364 r1!6342 lt!2468125 s!14361) lt!2468179)))

(declare-fun m!7624488 () Bool)

(assert (=> bs!1844428 m!7624488))

(declare-fun m!7624490 () Bool)

(assert (=> bs!1844428 m!7624490))

(declare-fun m!7624492 () Bool)

(assert (=> bs!1844428 m!7624492))

(assert (=> bs!1844428 m!7624254))

(assert (=> b!6908475 d!2163117))

(declare-fun d!2163131 () Bool)

(assert (=> d!2163131 (= (Exists!3891 lambda!392516) (choose!51452 lambda!392516))))

(declare-fun bs!1844429 () Bool)

(assert (= bs!1844429 d!2163131))

(declare-fun m!7624494 () Bool)

(assert (=> bs!1844429 m!7624494))

(assert (=> b!6908475 d!2163131))

(declare-fun b!6909006 () Bool)

(declare-fun e!4159905 () Bool)

(declare-fun tp!1902413 () Bool)

(declare-fun tp!1902410 () Bool)

(assert (=> b!6909006 (= e!4159905 (and tp!1902413 tp!1902410))))

(declare-fun b!6909003 () Bool)

(assert (=> b!6909003 (= e!4159905 tp_is_empty!42991)))

(declare-fun b!6909005 () Bool)

(declare-fun tp!1902411 () Bool)

(assert (=> b!6909005 (= e!4159905 tp!1902411)))

(declare-fun b!6909004 () Bool)

(declare-fun tp!1902412 () Bool)

(declare-fun tp!1902414 () Bool)

(assert (=> b!6909004 (= e!4159905 (and tp!1902412 tp!1902414))))

(assert (=> b!6908463 (= tp!1902309 e!4159905)))

(assert (= (and b!6908463 ((_ is ElementMatch!16883) (regOne!34279 r2!6280))) b!6909003))

(assert (= (and b!6908463 ((_ is Concat!25728) (regOne!34279 r2!6280))) b!6909004))

(assert (= (and b!6908463 ((_ is Star!16883) (regOne!34279 r2!6280))) b!6909005))

(assert (= (and b!6908463 ((_ is Union!16883) (regOne!34279 r2!6280))) b!6909006))

(declare-fun b!6909010 () Bool)

(declare-fun e!4159906 () Bool)

(declare-fun tp!1902418 () Bool)

(declare-fun tp!1902415 () Bool)

(assert (=> b!6909010 (= e!4159906 (and tp!1902418 tp!1902415))))

(declare-fun b!6909007 () Bool)

(assert (=> b!6909007 (= e!4159906 tp_is_empty!42991)))

(declare-fun b!6909009 () Bool)

(declare-fun tp!1902416 () Bool)

(assert (=> b!6909009 (= e!4159906 tp!1902416)))

(declare-fun b!6909008 () Bool)

(declare-fun tp!1902417 () Bool)

(declare-fun tp!1902419 () Bool)

(assert (=> b!6909008 (= e!4159906 (and tp!1902417 tp!1902419))))

(assert (=> b!6908463 (= tp!1902300 e!4159906)))

(assert (= (and b!6908463 ((_ is ElementMatch!16883) (regTwo!34279 r2!6280))) b!6909007))

(assert (= (and b!6908463 ((_ is Concat!25728) (regTwo!34279 r2!6280))) b!6909008))

(assert (= (and b!6908463 ((_ is Star!16883) (regTwo!34279 r2!6280))) b!6909009))

(assert (= (and b!6908463 ((_ is Union!16883) (regTwo!34279 r2!6280))) b!6909010))

(declare-fun b!6909014 () Bool)

(declare-fun e!4159907 () Bool)

(declare-fun tp!1902423 () Bool)

(declare-fun tp!1902420 () Bool)

(assert (=> b!6909014 (= e!4159907 (and tp!1902423 tp!1902420))))

(declare-fun b!6909011 () Bool)

(assert (=> b!6909011 (= e!4159907 tp_is_empty!42991)))

(declare-fun b!6909013 () Bool)

(declare-fun tp!1902421 () Bool)

(assert (=> b!6909013 (= e!4159907 tp!1902421)))

(declare-fun b!6909012 () Bool)

(declare-fun tp!1902422 () Bool)

(declare-fun tp!1902424 () Bool)

(assert (=> b!6909012 (= e!4159907 (and tp!1902422 tp!1902424))))

(assert (=> b!6908458 (= tp!1902307 e!4159907)))

(assert (= (and b!6908458 ((_ is ElementMatch!16883) (reg!17212 r3!135))) b!6909011))

(assert (= (and b!6908458 ((_ is Concat!25728) (reg!17212 r3!135))) b!6909012))

(assert (= (and b!6908458 ((_ is Star!16883) (reg!17212 r3!135))) b!6909013))

(assert (= (and b!6908458 ((_ is Union!16883) (reg!17212 r3!135))) b!6909014))

(declare-fun b!6909018 () Bool)

(declare-fun e!4159908 () Bool)

(declare-fun tp!1902428 () Bool)

(declare-fun tp!1902425 () Bool)

(assert (=> b!6909018 (= e!4159908 (and tp!1902428 tp!1902425))))

(declare-fun b!6909015 () Bool)

(assert (=> b!6909015 (= e!4159908 tp_is_empty!42991)))

(declare-fun b!6909017 () Bool)

(declare-fun tp!1902426 () Bool)

(assert (=> b!6909017 (= e!4159908 tp!1902426)))

(declare-fun b!6909016 () Bool)

(declare-fun tp!1902427 () Bool)

(declare-fun tp!1902429 () Bool)

(assert (=> b!6909016 (= e!4159908 (and tp!1902427 tp!1902429))))

(assert (=> b!6908474 (= tp!1902301 e!4159908)))

(assert (= (and b!6908474 ((_ is ElementMatch!16883) (regOne!34279 r1!6342))) b!6909015))

(assert (= (and b!6908474 ((_ is Concat!25728) (regOne!34279 r1!6342))) b!6909016))

(assert (= (and b!6908474 ((_ is Star!16883) (regOne!34279 r1!6342))) b!6909017))

(assert (= (and b!6908474 ((_ is Union!16883) (regOne!34279 r1!6342))) b!6909018))

(declare-fun b!6909022 () Bool)

(declare-fun e!4159909 () Bool)

(declare-fun tp!1902433 () Bool)

(declare-fun tp!1902430 () Bool)

(assert (=> b!6909022 (= e!4159909 (and tp!1902433 tp!1902430))))

(declare-fun b!6909019 () Bool)

(assert (=> b!6909019 (= e!4159909 tp_is_empty!42991)))

(declare-fun b!6909021 () Bool)

(declare-fun tp!1902431 () Bool)

(assert (=> b!6909021 (= e!4159909 tp!1902431)))

(declare-fun b!6909020 () Bool)

(declare-fun tp!1902432 () Bool)

(declare-fun tp!1902434 () Bool)

(assert (=> b!6909020 (= e!4159909 (and tp!1902432 tp!1902434))))

(assert (=> b!6908474 (= tp!1902299 e!4159909)))

(assert (= (and b!6908474 ((_ is ElementMatch!16883) (regTwo!34279 r1!6342))) b!6909019))

(assert (= (and b!6908474 ((_ is Concat!25728) (regTwo!34279 r1!6342))) b!6909020))

(assert (= (and b!6908474 ((_ is Star!16883) (regTwo!34279 r1!6342))) b!6909021))

(assert (= (and b!6908474 ((_ is Union!16883) (regTwo!34279 r1!6342))) b!6909022))

(declare-fun b!6909026 () Bool)

(declare-fun e!4159910 () Bool)

(declare-fun tp!1902438 () Bool)

(declare-fun tp!1902435 () Bool)

(assert (=> b!6909026 (= e!4159910 (and tp!1902438 tp!1902435))))

(declare-fun b!6909023 () Bool)

(assert (=> b!6909023 (= e!4159910 tp_is_empty!42991)))

(declare-fun b!6909025 () Bool)

(declare-fun tp!1902436 () Bool)

(assert (=> b!6909025 (= e!4159910 tp!1902436)))

(declare-fun b!6909024 () Bool)

(declare-fun tp!1902437 () Bool)

(declare-fun tp!1902439 () Bool)

(assert (=> b!6909024 (= e!4159910 (and tp!1902437 tp!1902439))))

(assert (=> b!6908473 (= tp!1902311 e!4159910)))

(assert (= (and b!6908473 ((_ is ElementMatch!16883) (regOne!34279 r3!135))) b!6909023))

(assert (= (and b!6908473 ((_ is Concat!25728) (regOne!34279 r3!135))) b!6909024))

(assert (= (and b!6908473 ((_ is Star!16883) (regOne!34279 r3!135))) b!6909025))

(assert (= (and b!6908473 ((_ is Union!16883) (regOne!34279 r3!135))) b!6909026))

(declare-fun b!6909030 () Bool)

(declare-fun e!4159911 () Bool)

(declare-fun tp!1902443 () Bool)

(declare-fun tp!1902440 () Bool)

(assert (=> b!6909030 (= e!4159911 (and tp!1902443 tp!1902440))))

(declare-fun b!6909027 () Bool)

(assert (=> b!6909027 (= e!4159911 tp_is_empty!42991)))

(declare-fun b!6909029 () Bool)

(declare-fun tp!1902441 () Bool)

(assert (=> b!6909029 (= e!4159911 tp!1902441)))

(declare-fun b!6909028 () Bool)

(declare-fun tp!1902442 () Bool)

(declare-fun tp!1902444 () Bool)

(assert (=> b!6909028 (= e!4159911 (and tp!1902442 tp!1902444))))

(assert (=> b!6908473 (= tp!1902296 e!4159911)))

(assert (= (and b!6908473 ((_ is ElementMatch!16883) (regTwo!34279 r3!135))) b!6909027))

(assert (= (and b!6908473 ((_ is Concat!25728) (regTwo!34279 r3!135))) b!6909028))

(assert (= (and b!6908473 ((_ is Star!16883) (regTwo!34279 r3!135))) b!6909029))

(assert (= (and b!6908473 ((_ is Union!16883) (regTwo!34279 r3!135))) b!6909030))

(declare-fun b!6909034 () Bool)

(declare-fun e!4159912 () Bool)

(declare-fun tp!1902448 () Bool)

(declare-fun tp!1902445 () Bool)

(assert (=> b!6909034 (= e!4159912 (and tp!1902448 tp!1902445))))

(declare-fun b!6909031 () Bool)

(assert (=> b!6909031 (= e!4159912 tp_is_empty!42991)))

(declare-fun b!6909033 () Bool)

(declare-fun tp!1902446 () Bool)

(assert (=> b!6909033 (= e!4159912 tp!1902446)))

(declare-fun b!6909032 () Bool)

(declare-fun tp!1902447 () Bool)

(declare-fun tp!1902449 () Bool)

(assert (=> b!6909032 (= e!4159912 (and tp!1902447 tp!1902449))))

(assert (=> b!6908462 (= tp!1902308 e!4159912)))

(assert (= (and b!6908462 ((_ is ElementMatch!16883) (reg!17212 r1!6342))) b!6909031))

(assert (= (and b!6908462 ((_ is Concat!25728) (reg!17212 r1!6342))) b!6909032))

(assert (= (and b!6908462 ((_ is Star!16883) (reg!17212 r1!6342))) b!6909033))

(assert (= (and b!6908462 ((_ is Union!16883) (reg!17212 r1!6342))) b!6909034))

(declare-fun b!6909038 () Bool)

(declare-fun e!4159913 () Bool)

(declare-fun tp!1902453 () Bool)

(declare-fun tp!1902450 () Bool)

(assert (=> b!6909038 (= e!4159913 (and tp!1902453 tp!1902450))))

(declare-fun b!6909035 () Bool)

(assert (=> b!6909035 (= e!4159913 tp_is_empty!42991)))

(declare-fun b!6909037 () Bool)

(declare-fun tp!1902451 () Bool)

(assert (=> b!6909037 (= e!4159913 tp!1902451)))

(declare-fun b!6909036 () Bool)

(declare-fun tp!1902452 () Bool)

(declare-fun tp!1902454 () Bool)

(assert (=> b!6909036 (= e!4159913 (and tp!1902452 tp!1902454))))

(assert (=> b!6908461 (= tp!1902306 e!4159913)))

(assert (= (and b!6908461 ((_ is ElementMatch!16883) (regOne!34278 r2!6280))) b!6909035))

(assert (= (and b!6908461 ((_ is Concat!25728) (regOne!34278 r2!6280))) b!6909036))

(assert (= (and b!6908461 ((_ is Star!16883) (regOne!34278 r2!6280))) b!6909037))

(assert (= (and b!6908461 ((_ is Union!16883) (regOne!34278 r2!6280))) b!6909038))

(declare-fun b!6909042 () Bool)

(declare-fun e!4159914 () Bool)

(declare-fun tp!1902458 () Bool)

(declare-fun tp!1902455 () Bool)

(assert (=> b!6909042 (= e!4159914 (and tp!1902458 tp!1902455))))

(declare-fun b!6909039 () Bool)

(assert (=> b!6909039 (= e!4159914 tp_is_empty!42991)))

(declare-fun b!6909041 () Bool)

(declare-fun tp!1902456 () Bool)

(assert (=> b!6909041 (= e!4159914 tp!1902456)))

(declare-fun b!6909040 () Bool)

(declare-fun tp!1902457 () Bool)

(declare-fun tp!1902459 () Bool)

(assert (=> b!6909040 (= e!4159914 (and tp!1902457 tp!1902459))))

(assert (=> b!6908461 (= tp!1902303 e!4159914)))

(assert (= (and b!6908461 ((_ is ElementMatch!16883) (regTwo!34278 r2!6280))) b!6909039))

(assert (= (and b!6908461 ((_ is Concat!25728) (regTwo!34278 r2!6280))) b!6909040))

(assert (= (and b!6908461 ((_ is Star!16883) (regTwo!34278 r2!6280))) b!6909041))

(assert (= (and b!6908461 ((_ is Union!16883) (regTwo!34278 r2!6280))) b!6909042))

(declare-fun b!6909046 () Bool)

(declare-fun e!4159915 () Bool)

(declare-fun tp!1902463 () Bool)

(declare-fun tp!1902460 () Bool)

(assert (=> b!6909046 (= e!4159915 (and tp!1902463 tp!1902460))))

(declare-fun b!6909043 () Bool)

(assert (=> b!6909043 (= e!4159915 tp_is_empty!42991)))

(declare-fun b!6909045 () Bool)

(declare-fun tp!1902461 () Bool)

(assert (=> b!6909045 (= e!4159915 tp!1902461)))

(declare-fun b!6909044 () Bool)

(declare-fun tp!1902462 () Bool)

(declare-fun tp!1902464 () Bool)

(assert (=> b!6909044 (= e!4159915 (and tp!1902462 tp!1902464))))

(assert (=> b!6908472 (= tp!1902310 e!4159915)))

(assert (= (and b!6908472 ((_ is ElementMatch!16883) (regOne!34278 r3!135))) b!6909043))

(assert (= (and b!6908472 ((_ is Concat!25728) (regOne!34278 r3!135))) b!6909044))

(assert (= (and b!6908472 ((_ is Star!16883) (regOne!34278 r3!135))) b!6909045))

(assert (= (and b!6908472 ((_ is Union!16883) (regOne!34278 r3!135))) b!6909046))

(declare-fun b!6909050 () Bool)

(declare-fun e!4159916 () Bool)

(declare-fun tp!1902468 () Bool)

(declare-fun tp!1902465 () Bool)

(assert (=> b!6909050 (= e!4159916 (and tp!1902468 tp!1902465))))

(declare-fun b!6909047 () Bool)

(assert (=> b!6909047 (= e!4159916 tp_is_empty!42991)))

(declare-fun b!6909049 () Bool)

(declare-fun tp!1902466 () Bool)

(assert (=> b!6909049 (= e!4159916 tp!1902466)))

(declare-fun b!6909048 () Bool)

(declare-fun tp!1902467 () Bool)

(declare-fun tp!1902469 () Bool)

(assert (=> b!6909048 (= e!4159916 (and tp!1902467 tp!1902469))))

(assert (=> b!6908472 (= tp!1902297 e!4159916)))

(assert (= (and b!6908472 ((_ is ElementMatch!16883) (regTwo!34278 r3!135))) b!6909047))

(assert (= (and b!6908472 ((_ is Concat!25728) (regTwo!34278 r3!135))) b!6909048))

(assert (= (and b!6908472 ((_ is Star!16883) (regTwo!34278 r3!135))) b!6909049))

(assert (= (and b!6908472 ((_ is Union!16883) (regTwo!34278 r3!135))) b!6909050))

(declare-fun b!6909054 () Bool)

(declare-fun e!4159917 () Bool)

(declare-fun tp!1902473 () Bool)

(declare-fun tp!1902470 () Bool)

(assert (=> b!6909054 (= e!4159917 (and tp!1902473 tp!1902470))))

(declare-fun b!6909051 () Bool)

(assert (=> b!6909051 (= e!4159917 tp_is_empty!42991)))

(declare-fun b!6909053 () Bool)

(declare-fun tp!1902471 () Bool)

(assert (=> b!6909053 (= e!4159917 tp!1902471)))

(declare-fun b!6909052 () Bool)

(declare-fun tp!1902472 () Bool)

(declare-fun tp!1902474 () Bool)

(assert (=> b!6909052 (= e!4159917 (and tp!1902472 tp!1902474))))

(assert (=> b!6908471 (= tp!1902305 e!4159917)))

(assert (= (and b!6908471 ((_ is ElementMatch!16883) (regOne!34278 r1!6342))) b!6909051))

(assert (= (and b!6908471 ((_ is Concat!25728) (regOne!34278 r1!6342))) b!6909052))

(assert (= (and b!6908471 ((_ is Star!16883) (regOne!34278 r1!6342))) b!6909053))

(assert (= (and b!6908471 ((_ is Union!16883) (regOne!34278 r1!6342))) b!6909054))

(declare-fun b!6909058 () Bool)

(declare-fun e!4159918 () Bool)

(declare-fun tp!1902478 () Bool)

(declare-fun tp!1902475 () Bool)

(assert (=> b!6909058 (= e!4159918 (and tp!1902478 tp!1902475))))

(declare-fun b!6909055 () Bool)

(assert (=> b!6909055 (= e!4159918 tp_is_empty!42991)))

(declare-fun b!6909057 () Bool)

(declare-fun tp!1902476 () Bool)

(assert (=> b!6909057 (= e!4159918 tp!1902476)))

(declare-fun b!6909056 () Bool)

(declare-fun tp!1902477 () Bool)

(declare-fun tp!1902479 () Bool)

(assert (=> b!6909056 (= e!4159918 (and tp!1902477 tp!1902479))))

(assert (=> b!6908471 (= tp!1902304 e!4159918)))

(assert (= (and b!6908471 ((_ is ElementMatch!16883) (regTwo!34278 r1!6342))) b!6909055))

(assert (= (and b!6908471 ((_ is Concat!25728) (regTwo!34278 r1!6342))) b!6909056))

(assert (= (and b!6908471 ((_ is Star!16883) (regTwo!34278 r1!6342))) b!6909057))

(assert (= (and b!6908471 ((_ is Union!16883) (regTwo!34278 r1!6342))) b!6909058))

(declare-fun b!6909062 () Bool)

(declare-fun e!4159919 () Bool)

(declare-fun tp!1902483 () Bool)

(declare-fun tp!1902480 () Bool)

(assert (=> b!6909062 (= e!4159919 (and tp!1902483 tp!1902480))))

(declare-fun b!6909059 () Bool)

(assert (=> b!6909059 (= e!4159919 tp_is_empty!42991)))

(declare-fun b!6909061 () Bool)

(declare-fun tp!1902481 () Bool)

(assert (=> b!6909061 (= e!4159919 tp!1902481)))

(declare-fun b!6909060 () Bool)

(declare-fun tp!1902482 () Bool)

(declare-fun tp!1902484 () Bool)

(assert (=> b!6909060 (= e!4159919 (and tp!1902482 tp!1902484))))

(assert (=> b!6908466 (= tp!1902298 e!4159919)))

(assert (= (and b!6908466 ((_ is ElementMatch!16883) (reg!17212 r2!6280))) b!6909059))

(assert (= (and b!6908466 ((_ is Concat!25728) (reg!17212 r2!6280))) b!6909060))

(assert (= (and b!6908466 ((_ is Star!16883) (reg!17212 r2!6280))) b!6909061))

(assert (= (and b!6908466 ((_ is Union!16883) (reg!17212 r2!6280))) b!6909062))

(declare-fun b!6909067 () Bool)

(declare-fun e!4159922 () Bool)

(declare-fun tp!1902487 () Bool)

(assert (=> b!6909067 (= e!4159922 (and tp_is_empty!42991 tp!1902487))))

(assert (=> b!6908465 (= tp!1902302 e!4159922)))

(assert (= (and b!6908465 ((_ is Cons!66516) (t!380383 s!14361))) b!6909067))

(check-sat (not bm!628161) (not b!6909045) (not bm!628149) (not b!6909057) (not b!6908719) (not b!6909060) (not b!6909018) (not b!6908711) (not b!6909067) (not b!6908844) (not b!6909040) (not b!6908622) (not b!6909006) tp_is_empty!42991 (not d!2163071) (not b!6909008) (not b!6908800) (not d!2163103) (not d!2163091) (not b!6909042) (not b!6908630) (not b!6908828) (not b!6909056) (not b!6909048) (not b!6909046) (not b!6908545) (not b!6909012) (not b!6909010) (not b!6908615) (not b!6908752) (not d!2163079) (not b!6909032) (not b!6908616) (not b!6908826) (not bm!628146) (not b!6908804) (not b!6908818) (not bm!628141) (not b!6908618) (not b!6909029) (not b!6909013) (not b!6909016) (not d!2163117) (not d!2163131) (not b!6908614) (not b!6909058) (not bm!628143) (not b!6909022) (not b!6908799) (not b!6909028) (not b!6908852) (not d!2163105) (not d!2163069) (not b!6908632) (not b!6909030) (not b!6909052) (not b!6909017) (not b!6909021) (not b!6909062) (not b!6909054) (not b!6909033) (not bm!628150) (not d!2163093) (not b!6909038) (not b!6908609) (not bm!628144) (not bm!628160) (not b!6908536) (not b!6908744) (not b!6909036) (not b!6909061) (not b!6909009) (not b!6909037) (not b!6909024) (not b!6909026) (not b!6909041) (not b!6908825) (not b!6908527) (not b!6908801) (not b!6909005) (not b!6908629) (not b!6909044) (not bm!628168) (not d!2163107) (not b!6908608) (not b!6908819) (not b!6909034) (not b!6909049) (not d!2163101) (not b!6909050) (not d!2163077) (not b!6908798) (not b!6909020) (not b!6909053) (not bm!628158) (not bm!628159) (not b!6909025) (not b!6908628) (not b!6908824) (not bm!628171) (not b!6909014) (not bm!628140) (not b!6908623) (not bm!628138) (not bm!628172) (not b!6909004) (not b!6908797))
(check-sat)
