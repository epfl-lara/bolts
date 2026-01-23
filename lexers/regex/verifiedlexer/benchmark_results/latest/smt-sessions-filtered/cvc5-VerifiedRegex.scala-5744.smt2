; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284882 () Bool)

(assert start!284882)

(declare-fun b!2929282 () Bool)

(assert (=> b!2929282 true))

(assert (=> b!2929282 true))

(assert (=> b!2929282 true))

(declare-fun lambda!108946 () Int)

(declare-fun lambda!108945 () Int)

(assert (=> b!2929282 (not (= lambda!108946 lambda!108945))))

(assert (=> b!2929282 true))

(assert (=> b!2929282 true))

(assert (=> b!2929282 true))

(declare-fun b!2929280 () Bool)

(declare-fun e!1847328 () Bool)

(declare-fun tp!938990 () Bool)

(assert (=> b!2929280 (= e!1847328 tp!938990)))

(declare-fun b!2929281 () Bool)

(declare-fun res!1209150 () Bool)

(declare-fun e!1847330 () Bool)

(assert (=> b!2929281 (=> res!1209150 e!1847330)))

(declare-datatypes ((C!18262 0))(
  ( (C!18263 (val!11167 Int)) )
))
(declare-datatypes ((Regex!9038 0))(
  ( (ElementMatch!9038 (c!478378 C!18262)) (Concat!14359 (regOne!18588 Regex!9038) (regTwo!18588 Regex!9038)) (EmptyExpr!9038) (Star!9038 (reg!9367 Regex!9038)) (EmptyLang!9038) (Union!9038 (regOne!18589 Regex!9038) (regTwo!18589 Regex!9038)) )
))
(declare-fun lt!1027382 () Regex!9038)

(declare-fun validRegex!3771 (Regex!9038) Bool)

(assert (=> b!2929281 (= res!1209150 (not (validRegex!3771 lt!1027382)))))

(declare-fun e!1847329 () Bool)

(assert (=> b!2929282 (= e!1847329 e!1847330)))

(declare-fun res!1209151 () Bool)

(assert (=> b!2929282 (=> res!1209151 e!1847330)))

(declare-fun lt!1027383 () Bool)

(assert (=> b!2929282 (= res!1209151 (not lt!1027383))))

(declare-fun Exists!1400 (Int) Bool)

(assert (=> b!2929282 (= (Exists!1400 lambda!108945) (Exists!1400 lambda!108946))))

(declare-datatypes ((Unit!48415 0))(
  ( (Unit!48416) )
))
(declare-fun lt!1027384 () Unit!48415)

(declare-fun r!17423 () Regex!9038)

(declare-datatypes ((List!34903 0))(
  ( (Nil!34779) (Cons!34779 (h!40199 C!18262) (t!233968 List!34903)) )
))
(declare-fun s!11993 () List!34903)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!211 (Regex!9038 List!34903) Unit!48415)

(assert (=> b!2929282 (= lt!1027384 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!211 (reg!9367 r!17423) s!11993))))

(assert (=> b!2929282 (= lt!1027383 (Exists!1400 lambda!108945))))

(declare-datatypes ((tuple2!33726 0))(
  ( (tuple2!33727 (_1!19995 List!34903) (_2!19995 List!34903)) )
))
(declare-datatypes ((Option!6595 0))(
  ( (None!6594) (Some!6594 (v!34728 tuple2!33726)) )
))
(declare-fun isDefined!5146 (Option!6595) Bool)

(declare-fun findConcatSeparation!989 (Regex!9038 Regex!9038 List!34903 List!34903 List!34903) Option!6595)

(assert (=> b!2929282 (= lt!1027383 (isDefined!5146 (findConcatSeparation!989 (reg!9367 r!17423) lt!1027382 Nil!34779 s!11993 s!11993)))))

(declare-fun lt!1027387 () Unit!48415)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!771 (Regex!9038 Regex!9038 List!34903) Unit!48415)

(assert (=> b!2929282 (= lt!1027387 (lemmaFindConcatSeparationEquivalentToExists!771 (reg!9367 r!17423) lt!1027382 s!11993))))

(assert (=> b!2929282 (= lt!1027382 (Star!9038 (reg!9367 r!17423)))))

(declare-fun b!2929283 () Bool)

(declare-fun e!1847326 () Bool)

(declare-fun tp_is_empty!15639 () Bool)

(declare-fun tp!938992 () Bool)

(assert (=> b!2929283 (= e!1847326 (and tp_is_empty!15639 tp!938992))))

(declare-fun b!2929284 () Bool)

(declare-fun res!1209147 () Bool)

(assert (=> b!2929284 (=> res!1209147 e!1847330)))

(assert (=> b!2929284 (= res!1209147 (not (validRegex!3771 (reg!9367 r!17423))))))

(declare-fun res!1209148 () Bool)

(declare-fun e!1847327 () Bool)

(assert (=> start!284882 (=> (not res!1209148) (not e!1847327))))

(assert (=> start!284882 (= res!1209148 (validRegex!3771 r!17423))))

(assert (=> start!284882 e!1847327))

(assert (=> start!284882 e!1847328))

(assert (=> start!284882 e!1847326))

(declare-fun b!2929285 () Bool)

(declare-fun tp!938994 () Bool)

(declare-fun tp!938995 () Bool)

(assert (=> b!2929285 (= e!1847328 (and tp!938994 tp!938995))))

(declare-fun b!2929286 () Bool)

(declare-fun ++!8294 (List!34903 List!34903) List!34903)

(assert (=> b!2929286 (= e!1847330 (= (++!8294 Nil!34779 s!11993) s!11993))))

(declare-fun b!2929287 () Bool)

(declare-fun tp!938991 () Bool)

(declare-fun tp!938993 () Bool)

(assert (=> b!2929287 (= e!1847328 (and tp!938991 tp!938993))))

(declare-fun b!2929288 () Bool)

(assert (=> b!2929288 (= e!1847328 tp_is_empty!15639)))

(declare-fun b!2929289 () Bool)

(declare-fun res!1209152 () Bool)

(assert (=> b!2929289 (=> res!1209152 e!1847329)))

(declare-fun isEmpty!19026 (List!34903) Bool)

(assert (=> b!2929289 (= res!1209152 (isEmpty!19026 s!11993))))

(declare-fun b!2929290 () Bool)

(assert (=> b!2929290 (= e!1847327 (not e!1847329))))

(declare-fun res!1209149 () Bool)

(assert (=> b!2929290 (=> res!1209149 e!1847329)))

(declare-fun lt!1027385 () Bool)

(assert (=> b!2929290 (= res!1209149 (or (not lt!1027385) (is-Concat!14359 r!17423) (is-Union!9038 r!17423) (not (is-Star!9038 r!17423))))))

(declare-fun matchRSpec!1175 (Regex!9038 List!34903) Bool)

(assert (=> b!2929290 (= lt!1027385 (matchRSpec!1175 r!17423 s!11993))))

(declare-fun matchR!3920 (Regex!9038 List!34903) Bool)

(assert (=> b!2929290 (= lt!1027385 (matchR!3920 r!17423 s!11993))))

(declare-fun lt!1027386 () Unit!48415)

(declare-fun mainMatchTheorem!1175 (Regex!9038 List!34903) Unit!48415)

(assert (=> b!2929290 (= lt!1027386 (mainMatchTheorem!1175 r!17423 s!11993))))

(assert (= (and start!284882 res!1209148) b!2929290))

(assert (= (and b!2929290 (not res!1209149)) b!2929289))

(assert (= (and b!2929289 (not res!1209152)) b!2929282))

(assert (= (and b!2929282 (not res!1209151)) b!2929284))

(assert (= (and b!2929284 (not res!1209147)) b!2929281))

(assert (= (and b!2929281 (not res!1209150)) b!2929286))

(assert (= (and start!284882 (is-ElementMatch!9038 r!17423)) b!2929288))

(assert (= (and start!284882 (is-Concat!14359 r!17423)) b!2929285))

(assert (= (and start!284882 (is-Star!9038 r!17423)) b!2929280))

(assert (= (and start!284882 (is-Union!9038 r!17423)) b!2929287))

(assert (= (and start!284882 (is-Cons!34779 s!11993)) b!2929283))

(declare-fun m!3320217 () Bool)

(assert (=> start!284882 m!3320217))

(declare-fun m!3320219 () Bool)

(assert (=> b!2929286 m!3320219))

(declare-fun m!3320221 () Bool)

(assert (=> b!2929290 m!3320221))

(declare-fun m!3320223 () Bool)

(assert (=> b!2929290 m!3320223))

(declare-fun m!3320225 () Bool)

(assert (=> b!2929290 m!3320225))

(declare-fun m!3320227 () Bool)

(assert (=> b!2929281 m!3320227))

(declare-fun m!3320229 () Bool)

(assert (=> b!2929282 m!3320229))

(declare-fun m!3320231 () Bool)

(assert (=> b!2929282 m!3320231))

(declare-fun m!3320233 () Bool)

(assert (=> b!2929282 m!3320233))

(assert (=> b!2929282 m!3320229))

(declare-fun m!3320235 () Bool)

(assert (=> b!2929282 m!3320235))

(declare-fun m!3320237 () Bool)

(assert (=> b!2929282 m!3320237))

(declare-fun m!3320239 () Bool)

(assert (=> b!2929282 m!3320239))

(assert (=> b!2929282 m!3320235))

(declare-fun m!3320241 () Bool)

(assert (=> b!2929284 m!3320241))

(declare-fun m!3320243 () Bool)

(assert (=> b!2929289 m!3320243))

(push 1)

(assert (not b!2929287))

(assert (not b!2929289))

(assert (not b!2929283))

(assert (not start!284882))

(assert (not b!2929281))

(assert (not b!2929282))

(assert tp_is_empty!15639)

(assert (not b!2929284))

(assert (not b!2929290))

(assert (not b!2929285))

(assert (not b!2929280))

(assert (not b!2929286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!839193 () Bool)

(assert (=> d!839193 (= (isEmpty!19026 s!11993) (is-Nil!34779 s!11993))))

(assert (=> b!2929289 d!839193))

(declare-fun b!2929364 () Bool)

(declare-fun e!1847371 () Bool)

(declare-fun e!1847372 () Bool)

(assert (=> b!2929364 (= e!1847371 e!1847372)))

(declare-fun c!478384 () Bool)

(assert (=> b!2929364 (= c!478384 (is-Union!9038 (reg!9367 r!17423)))))

(declare-fun b!2929365 () Bool)

(declare-fun e!1847369 () Bool)

(declare-fun e!1847370 () Bool)

(assert (=> b!2929365 (= e!1847369 e!1847370)))

(declare-fun res!1209197 () Bool)

(assert (=> b!2929365 (=> (not res!1209197) (not e!1847370))))

(declare-fun call!192235 () Bool)

(assert (=> b!2929365 (= res!1209197 call!192235)))

(declare-fun b!2929366 () Bool)

(declare-fun e!1847368 () Bool)

(assert (=> b!2929366 (= e!1847371 e!1847368)))

(declare-fun res!1209195 () Bool)

(declare-fun nullable!2844 (Regex!9038) Bool)

(assert (=> b!2929366 (= res!1209195 (not (nullable!2844 (reg!9367 (reg!9367 r!17423)))))))

(assert (=> b!2929366 (=> (not res!1209195) (not e!1847368))))

(declare-fun d!839195 () Bool)

(declare-fun res!1209199 () Bool)

(declare-fun e!1847366 () Bool)

(assert (=> d!839195 (=> res!1209199 e!1847366)))

(assert (=> d!839195 (= res!1209199 (is-ElementMatch!9038 (reg!9367 r!17423)))))

(assert (=> d!839195 (= (validRegex!3771 (reg!9367 r!17423)) e!1847366)))

(declare-fun b!2929367 () Bool)

(declare-fun res!1209196 () Bool)

(declare-fun e!1847367 () Bool)

(assert (=> b!2929367 (=> (not res!1209196) (not e!1847367))))

(declare-fun call!192236 () Bool)

(assert (=> b!2929367 (= res!1209196 call!192236)))

(assert (=> b!2929367 (= e!1847372 e!1847367)))

(declare-fun b!2929368 () Bool)

(declare-fun res!1209198 () Bool)

(assert (=> b!2929368 (=> res!1209198 e!1847369)))

(assert (=> b!2929368 (= res!1209198 (not (is-Concat!14359 (reg!9367 r!17423))))))

(assert (=> b!2929368 (= e!1847372 e!1847369)))

(declare-fun b!2929369 () Bool)

(assert (=> b!2929369 (= e!1847366 e!1847371)))

(declare-fun c!478385 () Bool)

(assert (=> b!2929369 (= c!478385 (is-Star!9038 (reg!9367 r!17423)))))

(declare-fun bm!192230 () Bool)

(declare-fun call!192237 () Bool)

(assert (=> bm!192230 (= call!192235 call!192237)))

(declare-fun b!2929370 () Bool)

(assert (=> b!2929370 (= e!1847370 call!192236)))

(declare-fun bm!192231 () Bool)

(assert (=> bm!192231 (= call!192236 (validRegex!3771 (ite c!478384 (regOne!18589 (reg!9367 r!17423)) (regTwo!18588 (reg!9367 r!17423)))))))

(declare-fun b!2929371 () Bool)

(assert (=> b!2929371 (= e!1847368 call!192237)))

(declare-fun bm!192232 () Bool)

(assert (=> bm!192232 (= call!192237 (validRegex!3771 (ite c!478385 (reg!9367 (reg!9367 r!17423)) (ite c!478384 (regTwo!18589 (reg!9367 r!17423)) (regOne!18588 (reg!9367 r!17423))))))))

(declare-fun b!2929372 () Bool)

(assert (=> b!2929372 (= e!1847367 call!192235)))

(assert (= (and d!839195 (not res!1209199)) b!2929369))

(assert (= (and b!2929369 c!478385) b!2929366))

(assert (= (and b!2929369 (not c!478385)) b!2929364))

(assert (= (and b!2929366 res!1209195) b!2929371))

(assert (= (and b!2929364 c!478384) b!2929367))

(assert (= (and b!2929364 (not c!478384)) b!2929368))

(assert (= (and b!2929367 res!1209196) b!2929372))

(assert (= (and b!2929368 (not res!1209198)) b!2929365))

(assert (= (and b!2929365 res!1209197) b!2929370))

(assert (= (or b!2929367 b!2929370) bm!192231))

(assert (= (or b!2929372 b!2929365) bm!192230))

(assert (= (or b!2929371 bm!192230) bm!192232))

(declare-fun m!3320273 () Bool)

(assert (=> b!2929366 m!3320273))

(declare-fun m!3320275 () Bool)

(assert (=> bm!192231 m!3320275))

(declare-fun m!3320277 () Bool)

(assert (=> bm!192232 m!3320277))

(assert (=> b!2929284 d!839195))

(declare-fun bs!525149 () Bool)

(declare-fun b!2929411 () Bool)

(assert (= bs!525149 (and b!2929411 b!2929282)))

(declare-fun lambda!108959 () Int)

(assert (=> bs!525149 (not (= lambda!108959 lambda!108945))))

(assert (=> bs!525149 (= (= r!17423 lt!1027382) (= lambda!108959 lambda!108946))))

(assert (=> b!2929411 true))

(assert (=> b!2929411 true))

(declare-fun bs!525150 () Bool)

(declare-fun b!2929405 () Bool)

(assert (= bs!525150 (and b!2929405 b!2929282)))

(declare-fun lambda!108960 () Int)

(assert (=> bs!525150 (not (= lambda!108960 lambda!108945))))

(assert (=> bs!525150 (not (= lambda!108960 lambda!108946))))

(declare-fun bs!525151 () Bool)

(assert (= bs!525151 (and b!2929405 b!2929411)))

(assert (=> bs!525151 (not (= lambda!108960 lambda!108959))))

(assert (=> b!2929405 true))

(assert (=> b!2929405 true))

(declare-fun bm!192237 () Bool)

(declare-fun call!192242 () Bool)

(assert (=> bm!192237 (= call!192242 (isEmpty!19026 s!11993))))

(declare-fun e!1847394 () Bool)

(declare-fun call!192243 () Bool)

(assert (=> b!2929405 (= e!1847394 call!192243)))

(declare-fun b!2929406 () Bool)

(declare-fun e!1847397 () Bool)

(declare-fun e!1847396 () Bool)

(assert (=> b!2929406 (= e!1847397 e!1847396)))

(declare-fun res!1209218 () Bool)

(assert (=> b!2929406 (= res!1209218 (not (is-EmptyLang!9038 r!17423)))))

(assert (=> b!2929406 (=> (not res!1209218) (not e!1847396))))

(declare-fun b!2929407 () Bool)

(declare-fun c!478395 () Bool)

(assert (=> b!2929407 (= c!478395 (is-ElementMatch!9038 r!17423))))

(declare-fun e!1847393 () Bool)

(assert (=> b!2929407 (= e!1847396 e!1847393)))

(declare-fun b!2929408 () Bool)

(declare-fun res!1209217 () Bool)

(declare-fun e!1847391 () Bool)

(assert (=> b!2929408 (=> res!1209217 e!1847391)))

(assert (=> b!2929408 (= res!1209217 call!192242)))

(assert (=> b!2929408 (= e!1847394 e!1847391)))

(declare-fun b!2929409 () Bool)

(declare-fun e!1847392 () Bool)

(assert (=> b!2929409 (= e!1847392 (matchRSpec!1175 (regTwo!18589 r!17423) s!11993))))

(declare-fun b!2929410 () Bool)

(assert (=> b!2929410 (= e!1847393 (= s!11993 (Cons!34779 (c!478378 r!17423) Nil!34779)))))

(assert (=> b!2929411 (= e!1847391 call!192243)))

(declare-fun b!2929412 () Bool)

(declare-fun c!478396 () Bool)

(assert (=> b!2929412 (= c!478396 (is-Union!9038 r!17423))))

(declare-fun e!1847395 () Bool)

(assert (=> b!2929412 (= e!1847393 e!1847395)))

(declare-fun b!2929413 () Bool)

(assert (=> b!2929413 (= e!1847397 call!192242)))

(declare-fun c!478397 () Bool)

(declare-fun bm!192238 () Bool)

(assert (=> bm!192238 (= call!192243 (Exists!1400 (ite c!478397 lambda!108959 lambda!108960)))))

(declare-fun d!839197 () Bool)

(declare-fun c!478394 () Bool)

(assert (=> d!839197 (= c!478394 (is-EmptyExpr!9038 r!17423))))

(assert (=> d!839197 (= (matchRSpec!1175 r!17423 s!11993) e!1847397)))

(declare-fun b!2929414 () Bool)

(assert (=> b!2929414 (= e!1847395 e!1847394)))

(assert (=> b!2929414 (= c!478397 (is-Star!9038 r!17423))))

(declare-fun b!2929415 () Bool)

(assert (=> b!2929415 (= e!1847395 e!1847392)))

(declare-fun res!1209216 () Bool)

(assert (=> b!2929415 (= res!1209216 (matchRSpec!1175 (regOne!18589 r!17423) s!11993))))

(assert (=> b!2929415 (=> res!1209216 e!1847392)))

(assert (= (and d!839197 c!478394) b!2929413))

(assert (= (and d!839197 (not c!478394)) b!2929406))

(assert (= (and b!2929406 res!1209218) b!2929407))

(assert (= (and b!2929407 c!478395) b!2929410))

(assert (= (and b!2929407 (not c!478395)) b!2929412))

(assert (= (and b!2929412 c!478396) b!2929415))

(assert (= (and b!2929412 (not c!478396)) b!2929414))

(assert (= (and b!2929415 (not res!1209216)) b!2929409))

(assert (= (and b!2929414 c!478397) b!2929408))

(assert (= (and b!2929414 (not c!478397)) b!2929405))

(assert (= (and b!2929408 (not res!1209217)) b!2929411))

(assert (= (or b!2929411 b!2929405) bm!192238))

(assert (= (or b!2929413 b!2929408) bm!192237))

(assert (=> bm!192237 m!3320243))

(declare-fun m!3320279 () Bool)

(assert (=> b!2929409 m!3320279))

(declare-fun m!3320281 () Bool)

(assert (=> bm!192238 m!3320281))

(declare-fun m!3320283 () Bool)

(assert (=> b!2929415 m!3320283))

(assert (=> b!2929290 d!839197))

(declare-fun b!2929462 () Bool)

(declare-fun res!1209247 () Bool)

(declare-fun e!1847428 () Bool)

(assert (=> b!2929462 (=> res!1209247 e!1847428)))

(declare-fun e!1847426 () Bool)

(assert (=> b!2929462 (= res!1209247 e!1847426)))

(declare-fun res!1209243 () Bool)

(assert (=> b!2929462 (=> (not res!1209243) (not e!1847426))))

(declare-fun lt!1027411 () Bool)

(assert (=> b!2929462 (= res!1209243 lt!1027411)))

(declare-fun b!2929463 () Bool)

(declare-fun head!6514 (List!34903) C!18262)

(assert (=> b!2929463 (= e!1847426 (= (head!6514 s!11993) (c!478378 r!17423)))))

(declare-fun b!2929464 () Bool)

(declare-fun e!1847421 () Bool)

(declare-fun derivativeStep!2455 (Regex!9038 C!18262) Regex!9038)

(declare-fun tail!4740 (List!34903) List!34903)

(assert (=> b!2929464 (= e!1847421 (matchR!3920 (derivativeStep!2455 r!17423 (head!6514 s!11993)) (tail!4740 s!11993)))))

(declare-fun d!839201 () Bool)

(declare-fun e!1847427 () Bool)

(assert (=> d!839201 e!1847427))

(declare-fun c!478407 () Bool)

(assert (=> d!839201 (= c!478407 (is-EmptyExpr!9038 r!17423))))

(assert (=> d!839201 (= lt!1027411 e!1847421)))

(declare-fun c!478410 () Bool)

(assert (=> d!839201 (= c!478410 (isEmpty!19026 s!11993))))

(assert (=> d!839201 (validRegex!3771 r!17423)))

(assert (=> d!839201 (= (matchR!3920 r!17423 s!11993) lt!1027411)))

(declare-fun b!2929465 () Bool)

(assert (=> b!2929465 (= e!1847421 (nullable!2844 r!17423))))

(declare-fun b!2929466 () Bool)

(declare-fun call!192246 () Bool)

(assert (=> b!2929466 (= e!1847427 (= lt!1027411 call!192246))))

(declare-fun b!2929467 () Bool)

(declare-fun res!1209250 () Bool)

(assert (=> b!2929467 (=> (not res!1209250) (not e!1847426))))

(assert (=> b!2929467 (= res!1209250 (isEmpty!19026 (tail!4740 s!11993)))))

(declare-fun b!2929468 () Bool)

(declare-fun e!1847424 () Bool)

(assert (=> b!2929468 (= e!1847428 e!1847424)))

(declare-fun res!1209248 () Bool)

(assert (=> b!2929468 (=> (not res!1209248) (not e!1847424))))

(assert (=> b!2929468 (= res!1209248 (not lt!1027411))))

(declare-fun bm!192241 () Bool)

(assert (=> bm!192241 (= call!192246 (isEmpty!19026 s!11993))))

(declare-fun b!2929469 () Bool)

(declare-fun e!1847425 () Bool)

(assert (=> b!2929469 (= e!1847425 (not lt!1027411))))

(declare-fun b!2929470 () Bool)

(declare-fun res!1209245 () Bool)

(assert (=> b!2929470 (=> (not res!1209245) (not e!1847426))))

(assert (=> b!2929470 (= res!1209245 (not call!192246))))

(declare-fun b!2929471 () Bool)

(declare-fun e!1847423 () Bool)

(assert (=> b!2929471 (= e!1847424 e!1847423)))

(declare-fun res!1209246 () Bool)

(assert (=> b!2929471 (=> res!1209246 e!1847423)))

(assert (=> b!2929471 (= res!1209246 call!192246)))

(declare-fun b!2929472 () Bool)

(declare-fun res!1209249 () Bool)

(assert (=> b!2929472 (=> res!1209249 e!1847423)))

(assert (=> b!2929472 (= res!1209249 (not (isEmpty!19026 (tail!4740 s!11993))))))

(declare-fun b!2929473 () Bool)

(assert (=> b!2929473 (= e!1847427 e!1847425)))

(declare-fun c!478411 () Bool)

(assert (=> b!2929473 (= c!478411 (is-EmptyLang!9038 r!17423))))

(declare-fun b!2929474 () Bool)

(assert (=> b!2929474 (= e!1847423 (not (= (head!6514 s!11993) (c!478378 r!17423))))))

(declare-fun b!2929475 () Bool)

(declare-fun res!1209244 () Bool)

(assert (=> b!2929475 (=> res!1209244 e!1847428)))

(assert (=> b!2929475 (= res!1209244 (not (is-ElementMatch!9038 r!17423)))))

(assert (=> b!2929475 (= e!1847425 e!1847428)))

(assert (= (and d!839201 c!478410) b!2929465))

(assert (= (and d!839201 (not c!478410)) b!2929464))

(assert (= (and d!839201 c!478407) b!2929466))

(assert (= (and d!839201 (not c!478407)) b!2929473))

(assert (= (and b!2929473 c!478411) b!2929469))

(assert (= (and b!2929473 (not c!478411)) b!2929475))

(assert (= (and b!2929475 (not res!1209244)) b!2929462))

(assert (= (and b!2929462 res!1209243) b!2929470))

(assert (= (and b!2929470 res!1209245) b!2929467))

(assert (= (and b!2929467 res!1209250) b!2929463))

(assert (= (and b!2929462 (not res!1209247)) b!2929468))

(assert (= (and b!2929468 res!1209248) b!2929471))

(assert (= (and b!2929471 (not res!1209246)) b!2929472))

(assert (= (and b!2929472 (not res!1209249)) b!2929474))

(assert (= (or b!2929466 b!2929470 b!2929471) bm!192241))

(declare-fun m!3320299 () Bool)

(assert (=> b!2929474 m!3320299))

(assert (=> d!839201 m!3320243))

(assert (=> d!839201 m!3320217))

(assert (=> b!2929463 m!3320299))

(declare-fun m!3320301 () Bool)

(assert (=> b!2929472 m!3320301))

(assert (=> b!2929472 m!3320301))

(declare-fun m!3320303 () Bool)

(assert (=> b!2929472 m!3320303))

(declare-fun m!3320305 () Bool)

(assert (=> b!2929465 m!3320305))

(assert (=> b!2929467 m!3320301))

(assert (=> b!2929467 m!3320301))

(assert (=> b!2929467 m!3320303))

(assert (=> b!2929464 m!3320299))

(assert (=> b!2929464 m!3320299))

(declare-fun m!3320307 () Bool)

(assert (=> b!2929464 m!3320307))

(assert (=> b!2929464 m!3320301))

(assert (=> b!2929464 m!3320307))

(assert (=> b!2929464 m!3320301))

(declare-fun m!3320309 () Bool)

(assert (=> b!2929464 m!3320309))

(assert (=> bm!192241 m!3320243))

(assert (=> b!2929290 d!839201))

(declare-fun d!839205 () Bool)

(assert (=> d!839205 (= (matchR!3920 r!17423 s!11993) (matchRSpec!1175 r!17423 s!11993))))

(declare-fun lt!1027414 () Unit!48415)

(declare-fun choose!17303 (Regex!9038 List!34903) Unit!48415)

(assert (=> d!839205 (= lt!1027414 (choose!17303 r!17423 s!11993))))

(assert (=> d!839205 (validRegex!3771 r!17423)))

(assert (=> d!839205 (= (mainMatchTheorem!1175 r!17423 s!11993) lt!1027414)))

(declare-fun bs!525152 () Bool)

(assert (= bs!525152 d!839205))

(assert (=> bs!525152 m!3320223))

(assert (=> bs!525152 m!3320221))

(declare-fun m!3320311 () Bool)

(assert (=> bs!525152 m!3320311))

(assert (=> bs!525152 m!3320217))

(assert (=> b!2929290 d!839205))

(declare-fun b!2929496 () Bool)

(declare-fun e!1847444 () List!34903)

(assert (=> b!2929496 (= e!1847444 s!11993)))

(declare-fun b!2929497 () Bool)

(assert (=> b!2929497 (= e!1847444 (Cons!34779 (h!40199 Nil!34779) (++!8294 (t!233968 Nil!34779) s!11993)))))

(declare-fun d!839207 () Bool)

(declare-fun e!1847443 () Bool)

(assert (=> d!839207 e!1847443))

(declare-fun res!1209263 () Bool)

(assert (=> d!839207 (=> (not res!1209263) (not e!1847443))))

(declare-fun lt!1027417 () List!34903)

(declare-fun content!4751 (List!34903) (Set C!18262))

(assert (=> d!839207 (= res!1209263 (= (content!4751 lt!1027417) (set.union (content!4751 Nil!34779) (content!4751 s!11993))))))

(assert (=> d!839207 (= lt!1027417 e!1847444)))

(declare-fun c!478416 () Bool)

(assert (=> d!839207 (= c!478416 (is-Nil!34779 Nil!34779))))

(assert (=> d!839207 (= (++!8294 Nil!34779 s!11993) lt!1027417)))

(declare-fun b!2929498 () Bool)

(declare-fun res!1209264 () Bool)

(assert (=> b!2929498 (=> (not res!1209264) (not e!1847443))))

(declare-fun size!26440 (List!34903) Int)

(assert (=> b!2929498 (= res!1209264 (= (size!26440 lt!1027417) (+ (size!26440 Nil!34779) (size!26440 s!11993))))))

(declare-fun b!2929499 () Bool)

(assert (=> b!2929499 (= e!1847443 (or (not (= s!11993 Nil!34779)) (= lt!1027417 Nil!34779)))))

(assert (= (and d!839207 c!478416) b!2929496))

(assert (= (and d!839207 (not c!478416)) b!2929497))

(assert (= (and d!839207 res!1209263) b!2929498))

(assert (= (and b!2929498 res!1209264) b!2929499))

(declare-fun m!3320313 () Bool)

(assert (=> b!2929497 m!3320313))

(declare-fun m!3320315 () Bool)

(assert (=> d!839207 m!3320315))

(declare-fun m!3320317 () Bool)

(assert (=> d!839207 m!3320317))

(declare-fun m!3320319 () Bool)

(assert (=> d!839207 m!3320319))

(declare-fun m!3320321 () Bool)

(assert (=> b!2929498 m!3320321))

(declare-fun m!3320323 () Bool)

(assert (=> b!2929498 m!3320323))

(declare-fun m!3320325 () Bool)

(assert (=> b!2929498 m!3320325))

(assert (=> b!2929286 d!839207))

(declare-fun b!2929500 () Bool)

(declare-fun e!1847450 () Bool)

(declare-fun e!1847451 () Bool)

(assert (=> b!2929500 (= e!1847450 e!1847451)))

(declare-fun c!478417 () Bool)

(assert (=> b!2929500 (= c!478417 (is-Union!9038 lt!1027382))))

(declare-fun b!2929501 () Bool)

(declare-fun e!1847448 () Bool)

(declare-fun e!1847449 () Bool)

(assert (=> b!2929501 (= e!1847448 e!1847449)))

(declare-fun res!1209267 () Bool)

(assert (=> b!2929501 (=> (not res!1209267) (not e!1847449))))

(declare-fun call!192253 () Bool)

(assert (=> b!2929501 (= res!1209267 call!192253)))

(declare-fun b!2929502 () Bool)

(declare-fun e!1847447 () Bool)

(assert (=> b!2929502 (= e!1847450 e!1847447)))

(declare-fun res!1209265 () Bool)

(assert (=> b!2929502 (= res!1209265 (not (nullable!2844 (reg!9367 lt!1027382))))))

(assert (=> b!2929502 (=> (not res!1209265) (not e!1847447))))

(declare-fun d!839209 () Bool)

(declare-fun res!1209269 () Bool)

(declare-fun e!1847445 () Bool)

(assert (=> d!839209 (=> res!1209269 e!1847445)))

(assert (=> d!839209 (= res!1209269 (is-ElementMatch!9038 lt!1027382))))

(assert (=> d!839209 (= (validRegex!3771 lt!1027382) e!1847445)))

(declare-fun b!2929503 () Bool)

(declare-fun res!1209266 () Bool)

(declare-fun e!1847446 () Bool)

(assert (=> b!2929503 (=> (not res!1209266) (not e!1847446))))

(declare-fun call!192254 () Bool)

(assert (=> b!2929503 (= res!1209266 call!192254)))

(assert (=> b!2929503 (= e!1847451 e!1847446)))

(declare-fun b!2929504 () Bool)

(declare-fun res!1209268 () Bool)

(assert (=> b!2929504 (=> res!1209268 e!1847448)))

(assert (=> b!2929504 (= res!1209268 (not (is-Concat!14359 lt!1027382)))))

(assert (=> b!2929504 (= e!1847451 e!1847448)))

(declare-fun b!2929505 () Bool)

(assert (=> b!2929505 (= e!1847445 e!1847450)))

(declare-fun c!478418 () Bool)

(assert (=> b!2929505 (= c!478418 (is-Star!9038 lt!1027382))))

(declare-fun bm!192248 () Bool)

(declare-fun call!192255 () Bool)

(assert (=> bm!192248 (= call!192253 call!192255)))

(declare-fun b!2929506 () Bool)

(assert (=> b!2929506 (= e!1847449 call!192254)))

(declare-fun bm!192249 () Bool)

(assert (=> bm!192249 (= call!192254 (validRegex!3771 (ite c!478417 (regOne!18589 lt!1027382) (regTwo!18588 lt!1027382))))))

(declare-fun b!2929507 () Bool)

(assert (=> b!2929507 (= e!1847447 call!192255)))

(declare-fun bm!192250 () Bool)

(assert (=> bm!192250 (= call!192255 (validRegex!3771 (ite c!478418 (reg!9367 lt!1027382) (ite c!478417 (regTwo!18589 lt!1027382) (regOne!18588 lt!1027382)))))))

(declare-fun b!2929508 () Bool)

(assert (=> b!2929508 (= e!1847446 call!192253)))

(assert (= (and d!839209 (not res!1209269)) b!2929505))

(assert (= (and b!2929505 c!478418) b!2929502))

(assert (= (and b!2929505 (not c!478418)) b!2929500))

(assert (= (and b!2929502 res!1209265) b!2929507))

(assert (= (and b!2929500 c!478417) b!2929503))

(assert (= (and b!2929500 (not c!478417)) b!2929504))

(assert (= (and b!2929503 res!1209266) b!2929508))

(assert (= (and b!2929504 (not res!1209268)) b!2929501))

(assert (= (and b!2929501 res!1209267) b!2929506))

(assert (= (or b!2929503 b!2929506) bm!192249))

(assert (= (or b!2929508 b!2929501) bm!192248))

(assert (= (or b!2929507 bm!192248) bm!192250))

(declare-fun m!3320327 () Bool)

(assert (=> b!2929502 m!3320327))

(declare-fun m!3320329 () Bool)

(assert (=> bm!192249 m!3320329))

(declare-fun m!3320331 () Bool)

(assert (=> bm!192250 m!3320331))

(assert (=> b!2929281 d!839209))

(declare-fun b!2929509 () Bool)

(declare-fun e!1847457 () Bool)

(declare-fun e!1847458 () Bool)

(assert (=> b!2929509 (= e!1847457 e!1847458)))

(declare-fun c!478419 () Bool)

(assert (=> b!2929509 (= c!478419 (is-Union!9038 r!17423))))

(declare-fun b!2929510 () Bool)

(declare-fun e!1847455 () Bool)

(declare-fun e!1847456 () Bool)

(assert (=> b!2929510 (= e!1847455 e!1847456)))

(declare-fun res!1209272 () Bool)

(assert (=> b!2929510 (=> (not res!1209272) (not e!1847456))))

(declare-fun call!192256 () Bool)

(assert (=> b!2929510 (= res!1209272 call!192256)))

(declare-fun b!2929511 () Bool)

(declare-fun e!1847454 () Bool)

(assert (=> b!2929511 (= e!1847457 e!1847454)))

(declare-fun res!1209270 () Bool)

(assert (=> b!2929511 (= res!1209270 (not (nullable!2844 (reg!9367 r!17423))))))

(assert (=> b!2929511 (=> (not res!1209270) (not e!1847454))))

(declare-fun d!839211 () Bool)

(declare-fun res!1209274 () Bool)

(declare-fun e!1847452 () Bool)

(assert (=> d!839211 (=> res!1209274 e!1847452)))

(assert (=> d!839211 (= res!1209274 (is-ElementMatch!9038 r!17423))))

(assert (=> d!839211 (= (validRegex!3771 r!17423) e!1847452)))

(declare-fun b!2929512 () Bool)

(declare-fun res!1209271 () Bool)

(declare-fun e!1847453 () Bool)

(assert (=> b!2929512 (=> (not res!1209271) (not e!1847453))))

(declare-fun call!192257 () Bool)

(assert (=> b!2929512 (= res!1209271 call!192257)))

(assert (=> b!2929512 (= e!1847458 e!1847453)))

(declare-fun b!2929513 () Bool)

(declare-fun res!1209273 () Bool)

(assert (=> b!2929513 (=> res!1209273 e!1847455)))

(assert (=> b!2929513 (= res!1209273 (not (is-Concat!14359 r!17423)))))

(assert (=> b!2929513 (= e!1847458 e!1847455)))

(declare-fun b!2929514 () Bool)

(assert (=> b!2929514 (= e!1847452 e!1847457)))

(declare-fun c!478420 () Bool)

(assert (=> b!2929514 (= c!478420 (is-Star!9038 r!17423))))

(declare-fun bm!192251 () Bool)

(declare-fun call!192258 () Bool)

(assert (=> bm!192251 (= call!192256 call!192258)))

(declare-fun b!2929515 () Bool)

(assert (=> b!2929515 (= e!1847456 call!192257)))

(declare-fun bm!192252 () Bool)

(assert (=> bm!192252 (= call!192257 (validRegex!3771 (ite c!478419 (regOne!18589 r!17423) (regTwo!18588 r!17423))))))

(declare-fun b!2929516 () Bool)

(assert (=> b!2929516 (= e!1847454 call!192258)))

(declare-fun bm!192253 () Bool)

(assert (=> bm!192253 (= call!192258 (validRegex!3771 (ite c!478420 (reg!9367 r!17423) (ite c!478419 (regTwo!18589 r!17423) (regOne!18588 r!17423)))))))

(declare-fun b!2929517 () Bool)

(assert (=> b!2929517 (= e!1847453 call!192256)))

(assert (= (and d!839211 (not res!1209274)) b!2929514))

(assert (= (and b!2929514 c!478420) b!2929511))

(assert (= (and b!2929514 (not c!478420)) b!2929509))

(assert (= (and b!2929511 res!1209270) b!2929516))

(assert (= (and b!2929509 c!478419) b!2929512))

(assert (= (and b!2929509 (not c!478419)) b!2929513))

(assert (= (and b!2929512 res!1209271) b!2929517))

(assert (= (and b!2929513 (not res!1209273)) b!2929510))

(assert (= (and b!2929510 res!1209272) b!2929515))

(assert (= (or b!2929512 b!2929515) bm!192252))

(assert (= (or b!2929517 b!2929510) bm!192251))

(assert (= (or b!2929516 bm!192251) bm!192253))

(declare-fun m!3320333 () Bool)

(assert (=> b!2929511 m!3320333))

(declare-fun m!3320335 () Bool)

(assert (=> bm!192252 m!3320335))

(declare-fun m!3320337 () Bool)

(assert (=> bm!192253 m!3320337))

(assert (=> start!284882 d!839211))

(declare-fun bs!525153 () Bool)

(declare-fun d!839213 () Bool)

(assert (= bs!525153 (and d!839213 b!2929282)))

(declare-fun lambda!108963 () Int)

(assert (=> bs!525153 (= lambda!108963 lambda!108945)))

(assert (=> bs!525153 (not (= lambda!108963 lambda!108946))))

(declare-fun bs!525154 () Bool)

(assert (= bs!525154 (and d!839213 b!2929411)))

(assert (=> bs!525154 (not (= lambda!108963 lambda!108959))))

(declare-fun bs!525155 () Bool)

(assert (= bs!525155 (and d!839213 b!2929405)))

(assert (=> bs!525155 (not (= lambda!108963 lambda!108960))))

(assert (=> d!839213 true))

(assert (=> d!839213 true))

(assert (=> d!839213 true))

(assert (=> d!839213 (= (isDefined!5146 (findConcatSeparation!989 (reg!9367 r!17423) lt!1027382 Nil!34779 s!11993 s!11993)) (Exists!1400 lambda!108963))))

(declare-fun lt!1027420 () Unit!48415)

(declare-fun choose!17304 (Regex!9038 Regex!9038 List!34903) Unit!48415)

(assert (=> d!839213 (= lt!1027420 (choose!17304 (reg!9367 r!17423) lt!1027382 s!11993))))

(assert (=> d!839213 (validRegex!3771 (reg!9367 r!17423))))

(assert (=> d!839213 (= (lemmaFindConcatSeparationEquivalentToExists!771 (reg!9367 r!17423) lt!1027382 s!11993) lt!1027420)))

(declare-fun bs!525156 () Bool)

(assert (= bs!525156 d!839213))

(assert (=> bs!525156 m!3320229))

(assert (=> bs!525156 m!3320229))

(assert (=> bs!525156 m!3320231))

(declare-fun m!3320345 () Bool)

(assert (=> bs!525156 m!3320345))

(declare-fun m!3320347 () Bool)

(assert (=> bs!525156 m!3320347))

(assert (=> bs!525156 m!3320241))

(assert (=> b!2929282 d!839213))

(declare-fun d!839217 () Bool)

(declare-fun isEmpty!19028 (Option!6595) Bool)

(assert (=> d!839217 (= (isDefined!5146 (findConcatSeparation!989 (reg!9367 r!17423) lt!1027382 Nil!34779 s!11993 s!11993)) (not (isEmpty!19028 (findConcatSeparation!989 (reg!9367 r!17423) lt!1027382 Nil!34779 s!11993 s!11993))))))

(declare-fun bs!525157 () Bool)

(assert (= bs!525157 d!839217))

(assert (=> bs!525157 m!3320229))

(declare-fun m!3320349 () Bool)

(assert (=> bs!525157 m!3320349))

(assert (=> b!2929282 d!839217))

(declare-fun bs!525158 () Bool)

(declare-fun d!839219 () Bool)

(assert (= bs!525158 (and d!839219 b!2929411)))

(declare-fun lambda!108970 () Int)

(assert (=> bs!525158 (not (= lambda!108970 lambda!108959))))

(declare-fun bs!525159 () Bool)

(assert (= bs!525159 (and d!839219 d!839213)))

(assert (=> bs!525159 (= (= (Star!9038 (reg!9367 r!17423)) lt!1027382) (= lambda!108970 lambda!108963))))

(declare-fun bs!525160 () Bool)

(assert (= bs!525160 (and d!839219 b!2929405)))

(assert (=> bs!525160 (not (= lambda!108970 lambda!108960))))

(declare-fun bs!525161 () Bool)

(assert (= bs!525161 (and d!839219 b!2929282)))

(assert (=> bs!525161 (not (= lambda!108970 lambda!108946))))

(assert (=> bs!525161 (= (= (Star!9038 (reg!9367 r!17423)) lt!1027382) (= lambda!108970 lambda!108945))))

(assert (=> d!839219 true))

(assert (=> d!839219 true))

(declare-fun lambda!108971 () Int)

(assert (=> bs!525158 (= (= (Star!9038 (reg!9367 r!17423)) r!17423) (= lambda!108971 lambda!108959))))

(assert (=> bs!525159 (not (= lambda!108971 lambda!108963))))

(assert (=> bs!525160 (not (= lambda!108971 lambda!108960))))

(assert (=> bs!525161 (= (= (Star!9038 (reg!9367 r!17423)) lt!1027382) (= lambda!108971 lambda!108946))))

(assert (=> bs!525161 (not (= lambda!108971 lambda!108945))))

(declare-fun bs!525162 () Bool)

(assert (= bs!525162 d!839219))

(assert (=> bs!525162 (not (= lambda!108971 lambda!108970))))

(assert (=> d!839219 true))

(assert (=> d!839219 true))

(assert (=> d!839219 (= (Exists!1400 lambda!108970) (Exists!1400 lambda!108971))))

(declare-fun lt!1027423 () Unit!48415)

(declare-fun choose!17305 (Regex!9038 List!34903) Unit!48415)

(assert (=> d!839219 (= lt!1027423 (choose!17305 (reg!9367 r!17423) s!11993))))

(assert (=> d!839219 (validRegex!3771 (reg!9367 r!17423))))

(assert (=> d!839219 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!211 (reg!9367 r!17423) s!11993) lt!1027423)))

(declare-fun m!3320351 () Bool)

(assert (=> bs!525162 m!3320351))

(declare-fun m!3320353 () Bool)

(assert (=> bs!525162 m!3320353))

(declare-fun m!3320355 () Bool)

(assert (=> bs!525162 m!3320355))

(assert (=> bs!525162 m!3320241))

(assert (=> b!2929282 d!839219))

(declare-fun b!2929591 () Bool)

(declare-fun e!1847500 () Option!6595)

(declare-fun e!1847504 () Option!6595)

(assert (=> b!2929591 (= e!1847500 e!1847504)))

(declare-fun c!478436 () Bool)

(assert (=> b!2929591 (= c!478436 (is-Nil!34779 s!11993))))

(declare-fun b!2929592 () Bool)

(assert (=> b!2929592 (= e!1847504 None!6594)))

(declare-fun b!2929593 () Bool)

(declare-fun e!1847503 () Bool)

(assert (=> b!2929593 (= e!1847503 (matchR!3920 lt!1027382 s!11993))))

(declare-fun b!2929594 () Bool)

(declare-fun lt!1027432 () Unit!48415)

(declare-fun lt!1027430 () Unit!48415)

(assert (=> b!2929594 (= lt!1027432 lt!1027430)))

(assert (=> b!2929594 (= (++!8294 (++!8294 Nil!34779 (Cons!34779 (h!40199 s!11993) Nil!34779)) (t!233968 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!928 (List!34903 C!18262 List!34903 List!34903) Unit!48415)

(assert (=> b!2929594 (= lt!1027430 (lemmaMoveElementToOtherListKeepsConcatEq!928 Nil!34779 (h!40199 s!11993) (t!233968 s!11993) s!11993))))

(assert (=> b!2929594 (= e!1847504 (findConcatSeparation!989 (reg!9367 r!17423) lt!1027382 (++!8294 Nil!34779 (Cons!34779 (h!40199 s!11993) Nil!34779)) (t!233968 s!11993) s!11993))))

(declare-fun b!2929595 () Bool)

(declare-fun e!1847502 () Bool)

(declare-fun lt!1027431 () Option!6595)

(assert (=> b!2929595 (= e!1847502 (not (isDefined!5146 lt!1027431)))))

(declare-fun b!2929596 () Bool)

(declare-fun res!1209321 () Bool)

(declare-fun e!1847501 () Bool)

(assert (=> b!2929596 (=> (not res!1209321) (not e!1847501))))

(declare-fun get!10609 (Option!6595) tuple2!33726)

(assert (=> b!2929596 (= res!1209321 (matchR!3920 (reg!9367 r!17423) (_1!19995 (get!10609 lt!1027431))))))

(declare-fun d!839221 () Bool)

(assert (=> d!839221 e!1847502))

(declare-fun res!1209323 () Bool)

(assert (=> d!839221 (=> res!1209323 e!1847502)))

(assert (=> d!839221 (= res!1209323 e!1847501)))

(declare-fun res!1209322 () Bool)

(assert (=> d!839221 (=> (not res!1209322) (not e!1847501))))

(assert (=> d!839221 (= res!1209322 (isDefined!5146 lt!1027431))))

(assert (=> d!839221 (= lt!1027431 e!1847500)))

(declare-fun c!478435 () Bool)

(assert (=> d!839221 (= c!478435 e!1847503)))

(declare-fun res!1209324 () Bool)

(assert (=> d!839221 (=> (not res!1209324) (not e!1847503))))

(assert (=> d!839221 (= res!1209324 (matchR!3920 (reg!9367 r!17423) Nil!34779))))

(assert (=> d!839221 (validRegex!3771 (reg!9367 r!17423))))

(assert (=> d!839221 (= (findConcatSeparation!989 (reg!9367 r!17423) lt!1027382 Nil!34779 s!11993 s!11993) lt!1027431)))

(declare-fun b!2929597 () Bool)

(declare-fun res!1209320 () Bool)

(assert (=> b!2929597 (=> (not res!1209320) (not e!1847501))))

(assert (=> b!2929597 (= res!1209320 (matchR!3920 lt!1027382 (_2!19995 (get!10609 lt!1027431))))))

(declare-fun b!2929598 () Bool)

(assert (=> b!2929598 (= e!1847501 (= (++!8294 (_1!19995 (get!10609 lt!1027431)) (_2!19995 (get!10609 lt!1027431))) s!11993))))

(declare-fun b!2929599 () Bool)

(assert (=> b!2929599 (= e!1847500 (Some!6594 (tuple2!33727 Nil!34779 s!11993)))))

(assert (= (and d!839221 res!1209324) b!2929593))

(assert (= (and d!839221 c!478435) b!2929599))

(assert (= (and d!839221 (not c!478435)) b!2929591))

(assert (= (and b!2929591 c!478436) b!2929592))

(assert (= (and b!2929591 (not c!478436)) b!2929594))

(assert (= (and d!839221 res!1209322) b!2929596))

(assert (= (and b!2929596 res!1209321) b!2929597))

(assert (= (and b!2929597 res!1209320) b!2929598))

(assert (= (and d!839221 (not res!1209323)) b!2929595))

(declare-fun m!3320357 () Bool)

(assert (=> b!2929594 m!3320357))

(assert (=> b!2929594 m!3320357))

(declare-fun m!3320359 () Bool)

(assert (=> b!2929594 m!3320359))

(declare-fun m!3320361 () Bool)

(assert (=> b!2929594 m!3320361))

(assert (=> b!2929594 m!3320357))

(declare-fun m!3320363 () Bool)

(assert (=> b!2929594 m!3320363))

(declare-fun m!3320365 () Bool)

(assert (=> b!2929595 m!3320365))

(assert (=> d!839221 m!3320365))

(declare-fun m!3320367 () Bool)

(assert (=> d!839221 m!3320367))

(assert (=> d!839221 m!3320241))

(declare-fun m!3320369 () Bool)

(assert (=> b!2929596 m!3320369))

(declare-fun m!3320371 () Bool)

(assert (=> b!2929596 m!3320371))

(assert (=> b!2929598 m!3320369))

(declare-fun m!3320373 () Bool)

(assert (=> b!2929598 m!3320373))

(declare-fun m!3320375 () Bool)

(assert (=> b!2929593 m!3320375))

(assert (=> b!2929597 m!3320369))

(declare-fun m!3320377 () Bool)

(assert (=> b!2929597 m!3320377))

(assert (=> b!2929282 d!839221))

(declare-fun d!839223 () Bool)

(declare-fun choose!17306 (Int) Bool)

(assert (=> d!839223 (= (Exists!1400 lambda!108945) (choose!17306 lambda!108945))))

(declare-fun bs!525163 () Bool)

(assert (= bs!525163 d!839223))

(declare-fun m!3320379 () Bool)

(assert (=> bs!525163 m!3320379))

(assert (=> b!2929282 d!839223))

(declare-fun d!839225 () Bool)

(assert (=> d!839225 (= (Exists!1400 lambda!108946) (choose!17306 lambda!108946))))

(declare-fun bs!525164 () Bool)

(assert (= bs!525164 d!839225))

(declare-fun m!3320381 () Bool)

(assert (=> bs!525164 m!3320381))

(assert (=> b!2929282 d!839225))

(declare-fun b!2929615 () Bool)

(declare-fun e!1847514 () Bool)

(declare-fun tp!939016 () Bool)

(assert (=> b!2929615 (= e!1847514 (and tp_is_empty!15639 tp!939016))))

(assert (=> b!2929283 (= tp!938992 e!1847514)))

(assert (= (and b!2929283 (is-Cons!34779 (t!233968 s!11993))) b!2929615))

(declare-fun b!2929626 () Bool)

(declare-fun e!1847517 () Bool)

(assert (=> b!2929626 (= e!1847517 tp_is_empty!15639)))

(declare-fun b!2929628 () Bool)

(declare-fun tp!939030 () Bool)

(assert (=> b!2929628 (= e!1847517 tp!939030)))

(declare-fun b!2929627 () Bool)

(declare-fun tp!939028 () Bool)

(declare-fun tp!939031 () Bool)

(assert (=> b!2929627 (= e!1847517 (and tp!939028 tp!939031))))

(declare-fun b!2929629 () Bool)

(declare-fun tp!939029 () Bool)

(declare-fun tp!939027 () Bool)

(assert (=> b!2929629 (= e!1847517 (and tp!939029 tp!939027))))

(assert (=> b!2929285 (= tp!938994 e!1847517)))

(assert (= (and b!2929285 (is-ElementMatch!9038 (regOne!18588 r!17423))) b!2929626))

(assert (= (and b!2929285 (is-Concat!14359 (regOne!18588 r!17423))) b!2929627))

(assert (= (and b!2929285 (is-Star!9038 (regOne!18588 r!17423))) b!2929628))

(assert (= (and b!2929285 (is-Union!9038 (regOne!18588 r!17423))) b!2929629))

(declare-fun b!2929630 () Bool)

(declare-fun e!1847518 () Bool)

(assert (=> b!2929630 (= e!1847518 tp_is_empty!15639)))

(declare-fun b!2929632 () Bool)

(declare-fun tp!939035 () Bool)

(assert (=> b!2929632 (= e!1847518 tp!939035)))

(declare-fun b!2929631 () Bool)

(declare-fun tp!939033 () Bool)

(declare-fun tp!939036 () Bool)

(assert (=> b!2929631 (= e!1847518 (and tp!939033 tp!939036))))

(declare-fun b!2929633 () Bool)

(declare-fun tp!939034 () Bool)

(declare-fun tp!939032 () Bool)

(assert (=> b!2929633 (= e!1847518 (and tp!939034 tp!939032))))

(assert (=> b!2929285 (= tp!938995 e!1847518)))

(assert (= (and b!2929285 (is-ElementMatch!9038 (regTwo!18588 r!17423))) b!2929630))

(assert (= (and b!2929285 (is-Concat!14359 (regTwo!18588 r!17423))) b!2929631))

(assert (= (and b!2929285 (is-Star!9038 (regTwo!18588 r!17423))) b!2929632))

(assert (= (and b!2929285 (is-Union!9038 (regTwo!18588 r!17423))) b!2929633))

(declare-fun b!2929634 () Bool)

(declare-fun e!1847519 () Bool)

(assert (=> b!2929634 (= e!1847519 tp_is_empty!15639)))

(declare-fun b!2929636 () Bool)

(declare-fun tp!939040 () Bool)

(assert (=> b!2929636 (= e!1847519 tp!939040)))

(declare-fun b!2929635 () Bool)

(declare-fun tp!939038 () Bool)

(declare-fun tp!939041 () Bool)

(assert (=> b!2929635 (= e!1847519 (and tp!939038 tp!939041))))

(declare-fun b!2929637 () Bool)

(declare-fun tp!939039 () Bool)

(declare-fun tp!939037 () Bool)

(assert (=> b!2929637 (= e!1847519 (and tp!939039 tp!939037))))

(assert (=> b!2929280 (= tp!938990 e!1847519)))

(assert (= (and b!2929280 (is-ElementMatch!9038 (reg!9367 r!17423))) b!2929634))

(assert (= (and b!2929280 (is-Concat!14359 (reg!9367 r!17423))) b!2929635))

(assert (= (and b!2929280 (is-Star!9038 (reg!9367 r!17423))) b!2929636))

(assert (= (and b!2929280 (is-Union!9038 (reg!9367 r!17423))) b!2929637))

(declare-fun b!2929638 () Bool)

(declare-fun e!1847520 () Bool)

(assert (=> b!2929638 (= e!1847520 tp_is_empty!15639)))

(declare-fun b!2929640 () Bool)

(declare-fun tp!939045 () Bool)

(assert (=> b!2929640 (= e!1847520 tp!939045)))

(declare-fun b!2929639 () Bool)

(declare-fun tp!939043 () Bool)

(declare-fun tp!939046 () Bool)

(assert (=> b!2929639 (= e!1847520 (and tp!939043 tp!939046))))

(declare-fun b!2929641 () Bool)

(declare-fun tp!939044 () Bool)

(declare-fun tp!939042 () Bool)

(assert (=> b!2929641 (= e!1847520 (and tp!939044 tp!939042))))

(assert (=> b!2929287 (= tp!938991 e!1847520)))

(assert (= (and b!2929287 (is-ElementMatch!9038 (regOne!18589 r!17423))) b!2929638))

(assert (= (and b!2929287 (is-Concat!14359 (regOne!18589 r!17423))) b!2929639))

(assert (= (and b!2929287 (is-Star!9038 (regOne!18589 r!17423))) b!2929640))

(assert (= (and b!2929287 (is-Union!9038 (regOne!18589 r!17423))) b!2929641))

(declare-fun b!2929642 () Bool)

(declare-fun e!1847521 () Bool)

(assert (=> b!2929642 (= e!1847521 tp_is_empty!15639)))

(declare-fun b!2929644 () Bool)

(declare-fun tp!939050 () Bool)

(assert (=> b!2929644 (= e!1847521 tp!939050)))

(declare-fun b!2929643 () Bool)

(declare-fun tp!939048 () Bool)

(declare-fun tp!939051 () Bool)

(assert (=> b!2929643 (= e!1847521 (and tp!939048 tp!939051))))

(declare-fun b!2929645 () Bool)

(declare-fun tp!939049 () Bool)

(declare-fun tp!939047 () Bool)

(assert (=> b!2929645 (= e!1847521 (and tp!939049 tp!939047))))

(assert (=> b!2929287 (= tp!938993 e!1847521)))

(assert (= (and b!2929287 (is-ElementMatch!9038 (regTwo!18589 r!17423))) b!2929642))

(assert (= (and b!2929287 (is-Concat!14359 (regTwo!18589 r!17423))) b!2929643))

(assert (= (and b!2929287 (is-Star!9038 (regTwo!18589 r!17423))) b!2929644))

(assert (= (and b!2929287 (is-Union!9038 (regTwo!18589 r!17423))) b!2929645))

(push 1)

(assert (not b!2929641))

(assert (not bm!192237))

(assert (not b!2929595))

(assert (not d!839207))

(assert (not b!2929467))

(assert (not b!2929632))

(assert (not d!839225))

(assert (not d!839213))

(assert (not bm!192231))

(assert (not b!2929636))

(assert (not b!2929464))

(assert (not bm!192238))

(assert (not b!2929474))

(assert (not b!2929635))

(assert (not b!2929593))

(assert (not b!2929597))

(assert (not b!2929472))

(assert (not bm!192241))

(assert (not b!2929502))

(assert (not b!2929639))

(assert (not b!2929645))

(assert (not b!2929643))

(assert (not d!839217))

(assert (not b!2929511))

(assert (not b!2929596))

(assert (not d!839201))

(assert (not b!2929628))

(assert (not bm!192250))

(assert (not bm!192253))

(assert (not b!2929644))

(assert (not b!2929629))

(assert (not b!2929631))

(assert (not d!839205))

(assert (not b!2929633))

(assert (not b!2929463))

(assert (not b!2929366))

(assert (not b!2929594))

(assert (not b!2929598))

(assert (not b!2929465))

(assert (not d!839221))

(assert tp_is_empty!15639)

(assert (not b!2929615))

(assert (not bm!192232))

(assert (not b!2929640))

(assert (not bm!192249))

(assert (not d!839219))

(assert (not b!2929409))

(assert (not b!2929637))

(assert (not b!2929627))

(assert (not b!2929415))

(assert (not d!839223))

(assert (not bm!192252))

(assert (not b!2929498))

(assert (not b!2929497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

