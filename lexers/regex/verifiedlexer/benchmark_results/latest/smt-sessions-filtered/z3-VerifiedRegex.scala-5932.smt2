; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290548 () Bool)

(assert start!290548)

(declare-fun b!3026135 () Bool)

(assert (=> b!3026135 true))

(assert (=> b!3026135 true))

(declare-fun lambda!113074 () Int)

(declare-fun lambda!113073 () Int)

(assert (=> b!3026135 (not (= lambda!113074 lambda!113073))))

(assert (=> b!3026135 true))

(assert (=> b!3026135 true))

(declare-fun b!3026126 () Bool)

(declare-fun e!1898313 () Bool)

(declare-fun tp_is_empty!16393 () Bool)

(declare-fun tp!959759 () Bool)

(assert (=> b!3026126 (= e!1898313 (and tp_is_empty!16393 tp!959759))))

(declare-fun b!3026127 () Bool)

(declare-fun e!1898311 () Bool)

(declare-fun e!1898315 () Bool)

(assert (=> b!3026127 (= e!1898311 (not e!1898315))))

(declare-fun res!1245363 () Bool)

(assert (=> b!3026127 (=> res!1245363 e!1898315)))

(declare-fun lt!1045356 () Bool)

(declare-datatypes ((C!19016 0))(
  ( (C!19017 (val!11544 Int)) )
))
(declare-datatypes ((Regex!9415 0))(
  ( (ElementMatch!9415 (c!499613 C!19016)) (Concat!14736 (regOne!19342 Regex!9415) (regTwo!19342 Regex!9415)) (EmptyExpr!9415) (Star!9415 (reg!9744 Regex!9415)) (EmptyLang!9415) (Union!9415 (regOne!19343 Regex!9415) (regTwo!19343 Regex!9415)) )
))
(declare-fun r!17423 () Regex!9415)

(get-info :version)

(assert (=> b!3026127 (= res!1245363 (or (not lt!1045356) (not ((_ is Concat!14736) r!17423))))))

(declare-datatypes ((List!35280 0))(
  ( (Nil!35156) (Cons!35156 (h!40576 C!19016) (t!234345 List!35280)) )
))
(declare-fun s!11993 () List!35280)

(declare-fun matchRSpec!1552 (Regex!9415 List!35280) Bool)

(assert (=> b!3026127 (= lt!1045356 (matchRSpec!1552 r!17423 s!11993))))

(declare-fun matchR!4297 (Regex!9415 List!35280) Bool)

(assert (=> b!3026127 (= lt!1045356 (matchR!4297 r!17423 s!11993))))

(declare-datatypes ((Unit!49253 0))(
  ( (Unit!49254) )
))
(declare-fun lt!1045347 () Unit!49253)

(declare-fun mainMatchTheorem!1552 (Regex!9415 List!35280) Unit!49253)

(assert (=> b!3026127 (= lt!1045347 (mainMatchTheorem!1552 r!17423 s!11993))))

(declare-fun b!3026128 () Bool)

(declare-fun e!1898314 () Bool)

(declare-fun e!1898312 () Bool)

(assert (=> b!3026128 (= e!1898314 e!1898312)))

(declare-fun res!1245359 () Bool)

(assert (=> b!3026128 (=> res!1245359 e!1898312)))

(declare-fun lt!1045353 () Regex!9415)

(declare-fun validRegex!4148 (Regex!9415) Bool)

(assert (=> b!3026128 (= res!1245359 (not (validRegex!4148 lt!1045353)))))

(declare-fun lt!1045354 () Regex!9415)

(declare-datatypes ((tuple2!34112 0))(
  ( (tuple2!34113 (_1!20188 List!35280) (_2!20188 List!35280)) )
))
(declare-fun lt!1045349 () tuple2!34112)

(assert (=> b!3026128 (matchR!4297 lt!1045354 (_2!20188 lt!1045349))))

(declare-fun simplify!394 (Regex!9415) Regex!9415)

(assert (=> b!3026128 (= lt!1045354 (simplify!394 (regTwo!19342 r!17423)))))

(declare-fun lt!1045350 () Unit!49253)

(declare-fun lemmaSimplifySound!242 (Regex!9415 List!35280) Unit!49253)

(assert (=> b!3026128 (= lt!1045350 (lemmaSimplifySound!242 (regTwo!19342 r!17423) (_2!20188 lt!1045349)))))

(assert (=> b!3026128 (matchR!4297 lt!1045353 (_1!20188 lt!1045349))))

(assert (=> b!3026128 (= lt!1045353 (simplify!394 (regOne!19342 r!17423)))))

(declare-fun lt!1045352 () Unit!49253)

(assert (=> b!3026128 (= lt!1045352 (lemmaSimplifySound!242 (regOne!19342 r!17423) (_1!20188 lt!1045349)))))

(declare-fun b!3026129 () Bool)

(declare-fun e!1898310 () Bool)

(declare-fun tp!959756 () Bool)

(declare-fun tp!959758 () Bool)

(assert (=> b!3026129 (= e!1898310 (and tp!959756 tp!959758))))

(declare-fun b!3026130 () Bool)

(declare-fun res!1245364 () Bool)

(assert (=> b!3026130 (=> res!1245364 e!1898315)))

(declare-fun isEmpty!19456 (List!35280) Bool)

(assert (=> b!3026130 (= res!1245364 (isEmpty!19456 s!11993))))

(declare-fun b!3026131 () Bool)

(assert (=> b!3026131 (= e!1898312 (matchR!4297 (simplify!394 r!17423) s!11993))))

(declare-fun ++!8434 (List!35280 List!35280) List!35280)

(assert (=> b!3026131 (matchR!4297 (Concat!14736 lt!1045353 lt!1045354) (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))

(declare-fun lt!1045351 () Unit!49253)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!154 (Regex!9415 Regex!9415 List!35280 List!35280) Unit!49253)

(assert (=> b!3026131 (= lt!1045351 (lemmaTwoRegexMatchThenConcatMatchesConcatString!154 lt!1045353 lt!1045354 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))

(declare-fun b!3026132 () Bool)

(declare-fun tp!959761 () Bool)

(assert (=> b!3026132 (= e!1898310 tp!959761)))

(declare-fun res!1245358 () Bool)

(assert (=> start!290548 (=> (not res!1245358) (not e!1898311))))

(assert (=> start!290548 (= res!1245358 (validRegex!4148 r!17423))))

(assert (=> start!290548 e!1898311))

(assert (=> start!290548 e!1898310))

(assert (=> start!290548 e!1898313))

(declare-fun b!3026133 () Bool)

(declare-fun res!1245360 () Bool)

(assert (=> b!3026133 (=> res!1245360 e!1898314)))

(assert (=> b!3026133 (= res!1245360 (not (matchR!4297 (regTwo!19342 r!17423) (_2!20188 lt!1045349))))))

(declare-fun b!3026134 () Bool)

(declare-fun res!1245362 () Bool)

(assert (=> b!3026134 (=> res!1245362 e!1898312)))

(assert (=> b!3026134 (= res!1245362 (not (validRegex!4148 lt!1045354)))))

(assert (=> b!3026135 (= e!1898315 e!1898314)))

(declare-fun res!1245361 () Bool)

(assert (=> b!3026135 (=> res!1245361 e!1898314)))

(assert (=> b!3026135 (= res!1245361 (not (matchR!4297 (regOne!19342 r!17423) (_1!20188 lt!1045349))))))

(declare-datatypes ((Option!6788 0))(
  ( (None!6787) (Some!6787 (v!34921 tuple2!34112)) )
))
(declare-fun lt!1045346 () Option!6788)

(declare-fun get!10962 (Option!6788) tuple2!34112)

(assert (=> b!3026135 (= lt!1045349 (get!10962 lt!1045346))))

(declare-fun Exists!1683 (Int) Bool)

(assert (=> b!3026135 (= (Exists!1683 lambda!113073) (Exists!1683 lambda!113074))))

(declare-fun lt!1045348 () Unit!49253)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!556 (Regex!9415 Regex!9415 List!35280) Unit!49253)

(assert (=> b!3026135 (= lt!1045348 (lemmaExistCutMatchRandMatchRSpecEquivalent!556 (regOne!19342 r!17423) (regTwo!19342 r!17423) s!11993))))

(declare-fun isDefined!5339 (Option!6788) Bool)

(assert (=> b!3026135 (= (isDefined!5339 lt!1045346) (Exists!1683 lambda!113073))))

(declare-fun findConcatSeparation!1182 (Regex!9415 Regex!9415 List!35280 List!35280 List!35280) Option!6788)

(assert (=> b!3026135 (= lt!1045346 (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) Nil!35156 s!11993 s!11993))))

(declare-fun lt!1045355 () Unit!49253)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!960 (Regex!9415 Regex!9415 List!35280) Unit!49253)

(assert (=> b!3026135 (= lt!1045355 (lemmaFindConcatSeparationEquivalentToExists!960 (regOne!19342 r!17423) (regTwo!19342 r!17423) s!11993))))

(declare-fun b!3026136 () Bool)

(assert (=> b!3026136 (= e!1898310 tp_is_empty!16393)))

(declare-fun b!3026137 () Bool)

(declare-fun tp!959760 () Bool)

(declare-fun tp!959757 () Bool)

(assert (=> b!3026137 (= e!1898310 (and tp!959760 tp!959757))))

(assert (= (and start!290548 res!1245358) b!3026127))

(assert (= (and b!3026127 (not res!1245363)) b!3026130))

(assert (= (and b!3026130 (not res!1245364)) b!3026135))

(assert (= (and b!3026135 (not res!1245361)) b!3026133))

(assert (= (and b!3026133 (not res!1245360)) b!3026128))

(assert (= (and b!3026128 (not res!1245359)) b!3026134))

(assert (= (and b!3026134 (not res!1245362)) b!3026131))

(assert (= (and start!290548 ((_ is ElementMatch!9415) r!17423)) b!3026136))

(assert (= (and start!290548 ((_ is Concat!14736) r!17423)) b!3026129))

(assert (= (and start!290548 ((_ is Star!9415) r!17423)) b!3026132))

(assert (= (and start!290548 ((_ is Union!9415) r!17423)) b!3026137))

(assert (= (and start!290548 ((_ is Cons!35156) s!11993)) b!3026126))

(declare-fun m!3365363 () Bool)

(assert (=> b!3026135 m!3365363))

(declare-fun m!3365365 () Bool)

(assert (=> b!3026135 m!3365365))

(declare-fun m!3365367 () Bool)

(assert (=> b!3026135 m!3365367))

(declare-fun m!3365369 () Bool)

(assert (=> b!3026135 m!3365369))

(declare-fun m!3365371 () Bool)

(assert (=> b!3026135 m!3365371))

(declare-fun m!3365373 () Bool)

(assert (=> b!3026135 m!3365373))

(declare-fun m!3365375 () Bool)

(assert (=> b!3026135 m!3365375))

(assert (=> b!3026135 m!3365373))

(declare-fun m!3365377 () Bool)

(assert (=> b!3026135 m!3365377))

(declare-fun m!3365379 () Bool)

(assert (=> b!3026131 m!3365379))

(declare-fun m!3365381 () Bool)

(assert (=> b!3026131 m!3365381))

(declare-fun m!3365383 () Bool)

(assert (=> b!3026131 m!3365383))

(declare-fun m!3365385 () Bool)

(assert (=> b!3026131 m!3365385))

(assert (=> b!3026131 m!3365379))

(declare-fun m!3365387 () Bool)

(assert (=> b!3026131 m!3365387))

(assert (=> b!3026131 m!3365383))

(declare-fun m!3365389 () Bool)

(assert (=> b!3026133 m!3365389))

(declare-fun m!3365391 () Bool)

(assert (=> b!3026130 m!3365391))

(declare-fun m!3365393 () Bool)

(assert (=> b!3026134 m!3365393))

(declare-fun m!3365395 () Bool)

(assert (=> start!290548 m!3365395))

(declare-fun m!3365397 () Bool)

(assert (=> b!3026128 m!3365397))

(declare-fun m!3365399 () Bool)

(assert (=> b!3026128 m!3365399))

(declare-fun m!3365401 () Bool)

(assert (=> b!3026128 m!3365401))

(declare-fun m!3365403 () Bool)

(assert (=> b!3026128 m!3365403))

(declare-fun m!3365405 () Bool)

(assert (=> b!3026128 m!3365405))

(declare-fun m!3365407 () Bool)

(assert (=> b!3026128 m!3365407))

(declare-fun m!3365409 () Bool)

(assert (=> b!3026128 m!3365409))

(declare-fun m!3365411 () Bool)

(assert (=> b!3026127 m!3365411))

(declare-fun m!3365413 () Bool)

(assert (=> b!3026127 m!3365413))

(declare-fun m!3365415 () Bool)

(assert (=> b!3026127 m!3365415))

(check-sat (not b!3026128) (not b!3026135) (not b!3026130) tp_is_empty!16393 (not b!3026129) (not b!3026137) (not b!3026126) (not b!3026132) (not b!3026133) (not b!3026127) (not b!3026131) (not b!3026134) (not start!290548))
(check-sat)
(get-model)

(declare-fun b!3026247 () Bool)

(declare-fun res!1245408 () Bool)

(declare-fun e!1898381 () Bool)

(assert (=> b!3026247 (=> res!1245408 e!1898381)))

(assert (=> b!3026247 (= res!1245408 (not ((_ is ElementMatch!9415) (Concat!14736 lt!1045353 lt!1045354))))))

(declare-fun e!1898383 () Bool)

(assert (=> b!3026247 (= e!1898383 e!1898381)))

(declare-fun b!3026248 () Bool)

(declare-fun e!1898379 () Bool)

(assert (=> b!3026248 (= e!1898379 e!1898383)))

(declare-fun c!499648 () Bool)

(assert (=> b!3026248 (= c!499648 ((_ is EmptyLang!9415) (Concat!14736 lt!1045353 lt!1045354)))))

(declare-fun b!3026249 () Bool)

(declare-fun lt!1045371 () Bool)

(assert (=> b!3026249 (= e!1898383 (not lt!1045371))))

(declare-fun b!3026250 () Bool)

(declare-fun res!1245406 () Bool)

(assert (=> b!3026250 (=> res!1245406 e!1898381)))

(declare-fun e!1898385 () Bool)

(assert (=> b!3026250 (= res!1245406 e!1898385)))

(declare-fun res!1245404 () Bool)

(assert (=> b!3026250 (=> (not res!1245404) (not e!1898385))))

(assert (=> b!3026250 (= res!1245404 lt!1045371)))

(declare-fun bm!205687 () Bool)

(declare-fun call!205692 () Bool)

(assert (=> bm!205687 (= call!205692 (isEmpty!19456 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))

(declare-fun b!3026251 () Bool)

(declare-fun res!1245402 () Bool)

(assert (=> b!3026251 (=> (not res!1245402) (not e!1898385))))

(assert (=> b!3026251 (= res!1245402 (not call!205692))))

(declare-fun d!850353 () Bool)

(assert (=> d!850353 e!1898379))

(declare-fun c!499649 () Bool)

(assert (=> d!850353 (= c!499649 ((_ is EmptyExpr!9415) (Concat!14736 lt!1045353 lt!1045354)))))

(declare-fun e!1898382 () Bool)

(assert (=> d!850353 (= lt!1045371 e!1898382)))

(declare-fun c!499650 () Bool)

(assert (=> d!850353 (= c!499650 (isEmpty!19456 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))

(assert (=> d!850353 (validRegex!4148 (Concat!14736 lt!1045353 lt!1045354))))

(assert (=> d!850353 (= (matchR!4297 (Concat!14736 lt!1045353 lt!1045354) (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))) lt!1045371)))

(declare-fun b!3026252 () Bool)

(declare-fun e!1898384 () Bool)

(assert (=> b!3026252 (= e!1898381 e!1898384)))

(declare-fun res!1245405 () Bool)

(assert (=> b!3026252 (=> (not res!1245405) (not e!1898384))))

(assert (=> b!3026252 (= res!1245405 (not lt!1045371))))

(declare-fun b!3026253 () Bool)

(declare-fun derivativeStep!2664 (Regex!9415 C!19016) Regex!9415)

(declare-fun head!6723 (List!35280) C!19016)

(declare-fun tail!4949 (List!35280) List!35280)

(assert (=> b!3026253 (= e!1898382 (matchR!4297 (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))) (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))

(declare-fun e!1898380 () Bool)

(declare-fun b!3026254 () Bool)

(assert (=> b!3026254 (= e!1898380 (not (= (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))) (c!499613 (Concat!14736 lt!1045353 lt!1045354)))))))

(declare-fun b!3026255 () Bool)

(assert (=> b!3026255 (= e!1898384 e!1898380)))

(declare-fun res!1245403 () Bool)

(assert (=> b!3026255 (=> res!1245403 e!1898380)))

(assert (=> b!3026255 (= res!1245403 call!205692)))

(declare-fun b!3026256 () Bool)

(declare-fun res!1245409 () Bool)

(assert (=> b!3026256 (=> res!1245409 e!1898380)))

(assert (=> b!3026256 (= res!1245409 (not (isEmpty!19456 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))))

(declare-fun b!3026257 () Bool)

(assert (=> b!3026257 (= e!1898385 (= (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))) (c!499613 (Concat!14736 lt!1045353 lt!1045354))))))

(declare-fun b!3026258 () Bool)

(declare-fun nullable!3067 (Regex!9415) Bool)

(assert (=> b!3026258 (= e!1898382 (nullable!3067 (Concat!14736 lt!1045353 lt!1045354)))))

(declare-fun b!3026259 () Bool)

(assert (=> b!3026259 (= e!1898379 (= lt!1045371 call!205692))))

(declare-fun b!3026260 () Bool)

(declare-fun res!1245407 () Bool)

(assert (=> b!3026260 (=> (not res!1245407) (not e!1898385))))

(assert (=> b!3026260 (= res!1245407 (isEmpty!19456 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))

(assert (= (and d!850353 c!499650) b!3026258))

(assert (= (and d!850353 (not c!499650)) b!3026253))

(assert (= (and d!850353 c!499649) b!3026259))

(assert (= (and d!850353 (not c!499649)) b!3026248))

(assert (= (and b!3026248 c!499648) b!3026249))

(assert (= (and b!3026248 (not c!499648)) b!3026247))

(assert (= (and b!3026247 (not res!1245408)) b!3026250))

(assert (= (and b!3026250 res!1245404) b!3026251))

(assert (= (and b!3026251 res!1245402) b!3026260))

(assert (= (and b!3026260 res!1245407) b!3026257))

(assert (= (and b!3026250 (not res!1245406)) b!3026252))

(assert (= (and b!3026252 res!1245405) b!3026255))

(assert (= (and b!3026255 (not res!1245403)) b!3026256))

(assert (= (and b!3026256 (not res!1245409)) b!3026254))

(assert (= (or b!3026259 b!3026251 b!3026255) bm!205687))

(assert (=> b!3026260 m!3365383))

(declare-fun m!3365423 () Bool)

(assert (=> b!3026260 m!3365423))

(assert (=> b!3026260 m!3365423))

(declare-fun m!3365425 () Bool)

(assert (=> b!3026260 m!3365425))

(assert (=> b!3026256 m!3365383))

(assert (=> b!3026256 m!3365423))

(assert (=> b!3026256 m!3365423))

(assert (=> b!3026256 m!3365425))

(declare-fun m!3365427 () Bool)

(assert (=> b!3026258 m!3365427))

(assert (=> b!3026253 m!3365383))

(declare-fun m!3365429 () Bool)

(assert (=> b!3026253 m!3365429))

(assert (=> b!3026253 m!3365429))

(declare-fun m!3365431 () Bool)

(assert (=> b!3026253 m!3365431))

(assert (=> b!3026253 m!3365383))

(assert (=> b!3026253 m!3365423))

(assert (=> b!3026253 m!3365431))

(assert (=> b!3026253 m!3365423))

(declare-fun m!3365433 () Bool)

(assert (=> b!3026253 m!3365433))

(assert (=> b!3026257 m!3365383))

(assert (=> b!3026257 m!3365429))

(assert (=> b!3026254 m!3365383))

(assert (=> b!3026254 m!3365429))

(assert (=> bm!205687 m!3365383))

(declare-fun m!3365435 () Bool)

(assert (=> bm!205687 m!3365435))

(assert (=> d!850353 m!3365383))

(assert (=> d!850353 m!3365435))

(declare-fun m!3365437 () Bool)

(assert (=> d!850353 m!3365437))

(assert (=> b!3026131 d!850353))

(declare-fun b!3026325 () Bool)

(declare-fun e!1898417 () Bool)

(declare-fun lt!1045385 () List!35280)

(assert (=> b!3026325 (= e!1898417 (or (not (= (_2!20188 lt!1045349) Nil!35156)) (= lt!1045385 (_1!20188 lt!1045349))))))

(declare-fun d!850357 () Bool)

(assert (=> d!850357 e!1898417))

(declare-fun res!1245432 () Bool)

(assert (=> d!850357 (=> (not res!1245432) (not e!1898417))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4791 (List!35280) (InoxSet C!19016))

(assert (=> d!850357 (= res!1245432 (= (content!4791 lt!1045385) ((_ map or) (content!4791 (_1!20188 lt!1045349)) (content!4791 (_2!20188 lt!1045349)))))))

(declare-fun e!1898419 () List!35280)

(assert (=> d!850357 (= lt!1045385 e!1898419)))

(declare-fun c!499670 () Bool)

(assert (=> d!850357 (= c!499670 ((_ is Nil!35156) (_1!20188 lt!1045349)))))

(assert (=> d!850357 (= (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)) lt!1045385)))

(declare-fun b!3026320 () Bool)

(assert (=> b!3026320 (= e!1898419 (_2!20188 lt!1045349))))

(declare-fun b!3026321 () Bool)

(assert (=> b!3026321 (= e!1898419 (Cons!35156 (h!40576 (_1!20188 lt!1045349)) (++!8434 (t!234345 (_1!20188 lt!1045349)) (_2!20188 lt!1045349))))))

(declare-fun b!3026322 () Bool)

(declare-fun res!1245429 () Bool)

(assert (=> b!3026322 (=> (not res!1245429) (not e!1898417))))

(declare-fun size!26528 (List!35280) Int)

(assert (=> b!3026322 (= res!1245429 (= (size!26528 lt!1045385) (+ (size!26528 (_1!20188 lt!1045349)) (size!26528 (_2!20188 lt!1045349)))))))

(assert (= (and d!850357 c!499670) b!3026320))

(assert (= (and d!850357 (not c!499670)) b!3026321))

(assert (= (and d!850357 res!1245432) b!3026322))

(assert (= (and b!3026322 res!1245429) b!3026325))

(declare-fun m!3365465 () Bool)

(assert (=> d!850357 m!3365465))

(declare-fun m!3365467 () Bool)

(assert (=> d!850357 m!3365467))

(declare-fun m!3365469 () Bool)

(assert (=> d!850357 m!3365469))

(declare-fun m!3365471 () Bool)

(assert (=> b!3026321 m!3365471))

(declare-fun m!3365473 () Bool)

(assert (=> b!3026322 m!3365473))

(declare-fun m!3365475 () Bool)

(assert (=> b!3026322 m!3365475))

(declare-fun m!3365477 () Bool)

(assert (=> b!3026322 m!3365477))

(assert (=> b!3026131 d!850357))

(declare-fun d!850363 () Bool)

(assert (=> d!850363 (matchR!4297 (Concat!14736 lt!1045353 lt!1045354) (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))

(declare-fun lt!1045396 () Unit!49253)

(declare-fun choose!17943 (Regex!9415 Regex!9415 List!35280 List!35280) Unit!49253)

(assert (=> d!850363 (= lt!1045396 (choose!17943 lt!1045353 lt!1045354 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))

(declare-fun e!1898457 () Bool)

(assert (=> d!850363 e!1898457))

(declare-fun res!1245461 () Bool)

(assert (=> d!850363 (=> (not res!1245461) (not e!1898457))))

(assert (=> d!850363 (= res!1245461 (validRegex!4148 lt!1045353))))

(assert (=> d!850363 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!154 lt!1045353 lt!1045354 (_1!20188 lt!1045349) (_2!20188 lt!1045349)) lt!1045396)))

(declare-fun b!3026390 () Bool)

(assert (=> b!3026390 (= e!1898457 (validRegex!4148 lt!1045354))))

(assert (= (and d!850363 res!1245461) b!3026390))

(assert (=> d!850363 m!3365383))

(assert (=> d!850363 m!3365383))

(assert (=> d!850363 m!3365385))

(declare-fun m!3365535 () Bool)

(assert (=> d!850363 m!3365535))

(assert (=> d!850363 m!3365403))

(assert (=> b!3026390 m!3365393))

(assert (=> b!3026131 d!850363))

(declare-fun b!3026572 () Bool)

(declare-fun e!1898570 () Regex!9415)

(declare-fun lt!1045435 () Regex!9415)

(assert (=> b!3026572 (= e!1898570 lt!1045435)))

(declare-fun d!850375 () Bool)

(declare-fun e!1898559 () Bool)

(assert (=> d!850375 e!1898559))

(declare-fun res!1245536 () Bool)

(assert (=> d!850375 (=> (not res!1245536) (not e!1898559))))

(declare-fun lt!1045438 () Regex!9415)

(assert (=> d!850375 (= res!1245536 (validRegex!4148 lt!1045438))))

(declare-fun e!1898561 () Regex!9415)

(assert (=> d!850375 (= lt!1045438 e!1898561)))

(declare-fun c!499751 () Bool)

(assert (=> d!850375 (= c!499751 ((_ is EmptyLang!9415) r!17423))))

(assert (=> d!850375 (validRegex!4148 r!17423)))

(assert (=> d!850375 (= (simplify!394 r!17423) lt!1045438)))

(declare-fun lt!1045437 () Regex!9415)

(declare-fun c!499744 () Bool)

(declare-fun bm!205737 () Bool)

(declare-fun call!205747 () Bool)

(declare-fun isEmptyLang!492 (Regex!9415) Bool)

(assert (=> bm!205737 (= call!205747 (isEmptyLang!492 (ite c!499744 lt!1045435 lt!1045437)))))

(declare-fun b!3026573 () Bool)

(declare-fun c!499745 () Bool)

(declare-fun e!1898566 () Bool)

(assert (=> b!3026573 (= c!499745 e!1898566)))

(declare-fun res!1245535 () Bool)

(assert (=> b!3026573 (=> res!1245535 e!1898566)))

(declare-fun call!205748 () Bool)

(assert (=> b!3026573 (= res!1245535 call!205748)))

(declare-fun lt!1045439 () Regex!9415)

(declare-fun call!205742 () Regex!9415)

(assert (=> b!3026573 (= lt!1045439 call!205742)))

(declare-fun e!1898564 () Regex!9415)

(declare-fun e!1898563 () Regex!9415)

(assert (=> b!3026573 (= e!1898564 e!1898563)))

(declare-fun b!3026574 () Bool)

(declare-fun e!1898560 () Regex!9415)

(declare-fun lt!1045440 () Regex!9415)

(assert (=> b!3026574 (= e!1898560 lt!1045440)))

(declare-fun b!3026575 () Bool)

(declare-fun e!1898569 () Regex!9415)

(declare-fun e!1898558 () Regex!9415)

(assert (=> b!3026575 (= e!1898569 e!1898558)))

(declare-fun c!499746 () Bool)

(declare-fun call!205744 () Bool)

(assert (=> b!3026575 (= c!499746 call!205744)))

(declare-fun bm!205738 () Bool)

(declare-fun c!499747 () Bool)

(assert (=> bm!205738 (= call!205742 (simplify!394 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(declare-fun b!3026576 () Bool)

(declare-fun e!1898571 () Regex!9415)

(assert (=> b!3026576 (= e!1898571 e!1898570)))

(declare-fun call!205746 () Regex!9415)

(assert (=> b!3026576 (= lt!1045440 call!205746)))

(declare-fun call!205745 () Regex!9415)

(assert (=> b!3026576 (= lt!1045435 call!205745)))

(declare-fun c!499753 () Bool)

(declare-fun call!205743 () Bool)

(assert (=> b!3026576 (= c!499753 call!205743)))

(declare-fun b!3026577 () Bool)

(declare-fun c!499752 () Bool)

(declare-fun lt!1045436 () Regex!9415)

(declare-fun isEmptyExpr!498 (Regex!9415) Bool)

(assert (=> b!3026577 (= c!499752 (isEmptyExpr!498 lt!1045436))))

(declare-fun e!1898568 () Regex!9415)

(assert (=> b!3026577 (= e!1898568 e!1898569)))

(declare-fun bm!205739 () Bool)

(assert (=> bm!205739 (= call!205746 call!205742)))

(declare-fun b!3026578 () Bool)

(declare-fun c!499748 () Bool)

(assert (=> b!3026578 (= c!499748 call!205747)))

(assert (=> b!3026578 (= e!1898570 e!1898560)))

(declare-fun b!3026579 () Bool)

(assert (=> b!3026579 (= e!1898568 EmptyLang!9415)))

(declare-fun b!3026580 () Bool)

(assert (=> b!3026580 (= e!1898558 lt!1045436)))

(declare-fun b!3026581 () Bool)

(declare-fun e!1898567 () Regex!9415)

(assert (=> b!3026581 (= e!1898567 EmptyExpr!9415)))

(declare-fun b!3026582 () Bool)

(assert (=> b!3026582 (= e!1898569 lt!1045437)))

(declare-fun b!3026583 () Bool)

(assert (=> b!3026583 (= e!1898559 (= (nullable!3067 lt!1045438) (nullable!3067 r!17423)))))

(declare-fun b!3026584 () Bool)

(assert (=> b!3026584 (= e!1898560 (Union!9415 lt!1045440 lt!1045435))))

(declare-fun bm!205740 () Bool)

(assert (=> bm!205740 (= call!205744 (isEmptyExpr!498 (ite c!499747 lt!1045439 lt!1045437)))))

(declare-fun b!3026585 () Bool)

(assert (=> b!3026585 (= e!1898566 call!205744)))

(declare-fun b!3026586 () Bool)

(declare-fun e!1898565 () Regex!9415)

(assert (=> b!3026586 (= e!1898565 r!17423)))

(declare-fun bm!205741 () Bool)

(assert (=> bm!205741 (= call!205748 (isEmptyLang!492 (ite c!499747 lt!1045439 (ite c!499744 lt!1045440 lt!1045436))))))

(declare-fun b!3026587 () Bool)

(assert (=> b!3026587 (= c!499744 ((_ is Union!9415) r!17423))))

(assert (=> b!3026587 (= e!1898564 e!1898571)))

(declare-fun b!3026588 () Bool)

(assert (=> b!3026588 (= e!1898571 e!1898568)))

(assert (=> b!3026588 (= lt!1045436 call!205745)))

(assert (=> b!3026588 (= lt!1045437 call!205746)))

(declare-fun res!1245537 () Bool)

(assert (=> b!3026588 (= res!1245537 call!205743)))

(declare-fun e!1898562 () Bool)

(assert (=> b!3026588 (=> res!1245537 e!1898562)))

(declare-fun c!499749 () Bool)

(assert (=> b!3026588 (= c!499749 e!1898562)))

(declare-fun b!3026589 () Bool)

(assert (=> b!3026589 (= e!1898561 e!1898565)))

(declare-fun c!499750 () Bool)

(assert (=> b!3026589 (= c!499750 ((_ is ElementMatch!9415) r!17423))))

(declare-fun bm!205742 () Bool)

(assert (=> bm!205742 (= call!205743 call!205748)))

(declare-fun b!3026590 () Bool)

(assert (=> b!3026590 (= e!1898567 e!1898564)))

(assert (=> b!3026590 (= c!499747 ((_ is Star!9415) r!17423))))

(declare-fun b!3026591 () Bool)

(assert (=> b!3026591 (= e!1898558 (Concat!14736 lt!1045436 lt!1045437))))

(declare-fun b!3026592 () Bool)

(assert (=> b!3026592 (= e!1898563 (Star!9415 lt!1045439))))

(declare-fun bm!205743 () Bool)

(assert (=> bm!205743 (= call!205745 (simplify!394 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(declare-fun b!3026593 () Bool)

(assert (=> b!3026593 (= e!1898561 EmptyLang!9415)))

(declare-fun b!3026594 () Bool)

(declare-fun c!499754 () Bool)

(assert (=> b!3026594 (= c!499754 ((_ is EmptyExpr!9415) r!17423))))

(assert (=> b!3026594 (= e!1898565 e!1898567)))

(declare-fun b!3026595 () Bool)

(assert (=> b!3026595 (= e!1898563 EmptyExpr!9415)))

(declare-fun b!3026596 () Bool)

(assert (=> b!3026596 (= e!1898562 call!205747)))

(assert (= (and d!850375 c!499751) b!3026593))

(assert (= (and d!850375 (not c!499751)) b!3026589))

(assert (= (and b!3026589 c!499750) b!3026586))

(assert (= (and b!3026589 (not c!499750)) b!3026594))

(assert (= (and b!3026594 c!499754) b!3026581))

(assert (= (and b!3026594 (not c!499754)) b!3026590))

(assert (= (and b!3026590 c!499747) b!3026573))

(assert (= (and b!3026590 (not c!499747)) b!3026587))

(assert (= (and b!3026573 (not res!1245535)) b!3026585))

(assert (= (and b!3026573 c!499745) b!3026595))

(assert (= (and b!3026573 (not c!499745)) b!3026592))

(assert (= (and b!3026587 c!499744) b!3026576))

(assert (= (and b!3026587 (not c!499744)) b!3026588))

(assert (= (and b!3026576 c!499753) b!3026572))

(assert (= (and b!3026576 (not c!499753)) b!3026578))

(assert (= (and b!3026578 c!499748) b!3026574))

(assert (= (and b!3026578 (not c!499748)) b!3026584))

(assert (= (and b!3026588 (not res!1245537)) b!3026596))

(assert (= (and b!3026588 c!499749) b!3026579))

(assert (= (and b!3026588 (not c!499749)) b!3026577))

(assert (= (and b!3026577 c!499752) b!3026582))

(assert (= (and b!3026577 (not c!499752)) b!3026575))

(assert (= (and b!3026575 c!499746) b!3026580))

(assert (= (and b!3026575 (not c!499746)) b!3026591))

(assert (= (or b!3026576 b!3026588) bm!205739))

(assert (= (or b!3026576 b!3026588) bm!205743))

(assert (= (or b!3026576 b!3026588) bm!205742))

(assert (= (or b!3026578 b!3026596) bm!205737))

(assert (= (or b!3026585 b!3026575) bm!205740))

(assert (= (or b!3026573 bm!205739) bm!205738))

(assert (= (or b!3026573 bm!205742) bm!205741))

(assert (= (and d!850375 res!1245536) b!3026583))

(declare-fun m!3365649 () Bool)

(assert (=> bm!205740 m!3365649))

(declare-fun m!3365651 () Bool)

(assert (=> d!850375 m!3365651))

(assert (=> d!850375 m!3365395))

(declare-fun m!3365653 () Bool)

(assert (=> bm!205743 m!3365653))

(declare-fun m!3365655 () Bool)

(assert (=> bm!205741 m!3365655))

(declare-fun m!3365657 () Bool)

(assert (=> bm!205737 m!3365657))

(declare-fun m!3365659 () Bool)

(assert (=> b!3026583 m!3365659))

(declare-fun m!3365661 () Bool)

(assert (=> b!3026583 m!3365661))

(declare-fun m!3365663 () Bool)

(assert (=> bm!205738 m!3365663))

(declare-fun m!3365665 () Bool)

(assert (=> b!3026577 m!3365665))

(assert (=> b!3026131 d!850375))

(declare-fun b!3026606 () Bool)

(declare-fun res!1245549 () Bool)

(declare-fun e!1898579 () Bool)

(assert (=> b!3026606 (=> res!1245549 e!1898579)))

(assert (=> b!3026606 (= res!1245549 (not ((_ is ElementMatch!9415) (simplify!394 r!17423))))))

(declare-fun e!1898581 () Bool)

(assert (=> b!3026606 (= e!1898581 e!1898579)))

(declare-fun b!3026607 () Bool)

(declare-fun e!1898577 () Bool)

(assert (=> b!3026607 (= e!1898577 e!1898581)))

(declare-fun c!499757 () Bool)

(assert (=> b!3026607 (= c!499757 ((_ is EmptyLang!9415) (simplify!394 r!17423)))))

(declare-fun b!3026608 () Bool)

(declare-fun lt!1045444 () Bool)

(assert (=> b!3026608 (= e!1898581 (not lt!1045444))))

(declare-fun b!3026609 () Bool)

(declare-fun res!1245547 () Bool)

(assert (=> b!3026609 (=> res!1245547 e!1898579)))

(declare-fun e!1898583 () Bool)

(assert (=> b!3026609 (= res!1245547 e!1898583)))

(declare-fun res!1245545 () Bool)

(assert (=> b!3026609 (=> (not res!1245545) (not e!1898583))))

(assert (=> b!3026609 (= res!1245545 lt!1045444)))

(declare-fun bm!205744 () Bool)

(declare-fun call!205749 () Bool)

(assert (=> bm!205744 (= call!205749 (isEmpty!19456 s!11993))))

(declare-fun b!3026610 () Bool)

(declare-fun res!1245543 () Bool)

(assert (=> b!3026610 (=> (not res!1245543) (not e!1898583))))

(assert (=> b!3026610 (= res!1245543 (not call!205749))))

(declare-fun d!850407 () Bool)

(assert (=> d!850407 e!1898577))

(declare-fun c!499758 () Bool)

(assert (=> d!850407 (= c!499758 ((_ is EmptyExpr!9415) (simplify!394 r!17423)))))

(declare-fun e!1898580 () Bool)

(assert (=> d!850407 (= lt!1045444 e!1898580)))

(declare-fun c!499759 () Bool)

(assert (=> d!850407 (= c!499759 (isEmpty!19456 s!11993))))

(assert (=> d!850407 (validRegex!4148 (simplify!394 r!17423))))

(assert (=> d!850407 (= (matchR!4297 (simplify!394 r!17423) s!11993) lt!1045444)))

(declare-fun b!3026611 () Bool)

(declare-fun e!1898582 () Bool)

(assert (=> b!3026611 (= e!1898579 e!1898582)))

(declare-fun res!1245546 () Bool)

(assert (=> b!3026611 (=> (not res!1245546) (not e!1898582))))

(assert (=> b!3026611 (= res!1245546 (not lt!1045444))))

(declare-fun b!3026612 () Bool)

(assert (=> b!3026612 (= e!1898580 (matchR!4297 (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993)) (tail!4949 s!11993)))))

(declare-fun b!3026613 () Bool)

(declare-fun e!1898578 () Bool)

(assert (=> b!3026613 (= e!1898578 (not (= (head!6723 s!11993) (c!499613 (simplify!394 r!17423)))))))

(declare-fun b!3026614 () Bool)

(assert (=> b!3026614 (= e!1898582 e!1898578)))

(declare-fun res!1245544 () Bool)

(assert (=> b!3026614 (=> res!1245544 e!1898578)))

(assert (=> b!3026614 (= res!1245544 call!205749)))

(declare-fun b!3026615 () Bool)

(declare-fun res!1245550 () Bool)

(assert (=> b!3026615 (=> res!1245550 e!1898578)))

(assert (=> b!3026615 (= res!1245550 (not (isEmpty!19456 (tail!4949 s!11993))))))

(declare-fun b!3026616 () Bool)

(assert (=> b!3026616 (= e!1898583 (= (head!6723 s!11993) (c!499613 (simplify!394 r!17423))))))

(declare-fun b!3026617 () Bool)

(assert (=> b!3026617 (= e!1898580 (nullable!3067 (simplify!394 r!17423)))))

(declare-fun b!3026618 () Bool)

(assert (=> b!3026618 (= e!1898577 (= lt!1045444 call!205749))))

(declare-fun b!3026619 () Bool)

(declare-fun res!1245548 () Bool)

(assert (=> b!3026619 (=> (not res!1245548) (not e!1898583))))

(assert (=> b!3026619 (= res!1245548 (isEmpty!19456 (tail!4949 s!11993)))))

(assert (= (and d!850407 c!499759) b!3026617))

(assert (= (and d!850407 (not c!499759)) b!3026612))

(assert (= (and d!850407 c!499758) b!3026618))

(assert (= (and d!850407 (not c!499758)) b!3026607))

(assert (= (and b!3026607 c!499757) b!3026608))

(assert (= (and b!3026607 (not c!499757)) b!3026606))

(assert (= (and b!3026606 (not res!1245549)) b!3026609))

(assert (= (and b!3026609 res!1245545) b!3026610))

(assert (= (and b!3026610 res!1245543) b!3026619))

(assert (= (and b!3026619 res!1245548) b!3026616))

(assert (= (and b!3026609 (not res!1245547)) b!3026611))

(assert (= (and b!3026611 res!1245546) b!3026614))

(assert (= (and b!3026614 (not res!1245544)) b!3026615))

(assert (= (and b!3026615 (not res!1245550)) b!3026613))

(assert (= (or b!3026618 b!3026610 b!3026614) bm!205744))

(declare-fun m!3365667 () Bool)

(assert (=> b!3026619 m!3365667))

(assert (=> b!3026619 m!3365667))

(declare-fun m!3365669 () Bool)

(assert (=> b!3026619 m!3365669))

(assert (=> b!3026615 m!3365667))

(assert (=> b!3026615 m!3365667))

(assert (=> b!3026615 m!3365669))

(assert (=> b!3026617 m!3365379))

(declare-fun m!3365671 () Bool)

(assert (=> b!3026617 m!3365671))

(declare-fun m!3365673 () Bool)

(assert (=> b!3026612 m!3365673))

(assert (=> b!3026612 m!3365379))

(assert (=> b!3026612 m!3365673))

(declare-fun m!3365675 () Bool)

(assert (=> b!3026612 m!3365675))

(assert (=> b!3026612 m!3365667))

(assert (=> b!3026612 m!3365675))

(assert (=> b!3026612 m!3365667))

(declare-fun m!3365677 () Bool)

(assert (=> b!3026612 m!3365677))

(assert (=> b!3026616 m!3365673))

(assert (=> b!3026613 m!3365673))

(assert (=> bm!205744 m!3365391))

(assert (=> d!850407 m!3365391))

(assert (=> d!850407 m!3365379))

(declare-fun m!3365679 () Bool)

(assert (=> d!850407 m!3365679))

(assert (=> b!3026131 d!850407))

(declare-fun bs!530635 () Bool)

(declare-fun b!3026703 () Bool)

(assert (= bs!530635 (and b!3026703 b!3026135)))

(declare-fun lambda!113093 () Int)

(assert (=> bs!530635 (not (= lambda!113093 lambda!113073))))

(assert (=> bs!530635 (not (= lambda!113093 lambda!113074))))

(assert (=> b!3026703 true))

(assert (=> b!3026703 true))

(declare-fun bs!530639 () Bool)

(declare-fun b!3026699 () Bool)

(assert (= bs!530639 (and b!3026699 b!3026135)))

(declare-fun lambda!113095 () Int)

(assert (=> bs!530639 (not (= lambda!113095 lambda!113073))))

(assert (=> bs!530639 (= lambda!113095 lambda!113074)))

(declare-fun bs!530641 () Bool)

(assert (= bs!530641 (and b!3026699 b!3026703)))

(assert (=> bs!530641 (not (= lambda!113095 lambda!113093))))

(assert (=> b!3026699 true))

(assert (=> b!3026699 true))

(declare-fun e!1898629 () Bool)

(declare-fun call!205761 () Bool)

(assert (=> b!3026699 (= e!1898629 call!205761)))

(declare-fun d!850409 () Bool)

(declare-fun c!499782 () Bool)

(assert (=> d!850409 (= c!499782 ((_ is EmptyExpr!9415) r!17423))))

(declare-fun e!1898633 () Bool)

(assert (=> d!850409 (= (matchRSpec!1552 r!17423 s!11993) e!1898633)))

(declare-fun bm!205755 () Bool)

(declare-fun c!499781 () Bool)

(assert (=> bm!205755 (= call!205761 (Exists!1683 (ite c!499781 lambda!113093 lambda!113095)))))

(declare-fun b!3026700 () Bool)

(declare-fun res!1245592 () Bool)

(declare-fun e!1898635 () Bool)

(assert (=> b!3026700 (=> res!1245592 e!1898635)))

(declare-fun call!205760 () Bool)

(assert (=> b!3026700 (= res!1245592 call!205760)))

(assert (=> b!3026700 (= e!1898629 e!1898635)))

(declare-fun b!3026701 () Bool)

(declare-fun c!499780 () Bool)

(assert (=> b!3026701 (= c!499780 ((_ is ElementMatch!9415) r!17423))))

(declare-fun e!1898630 () Bool)

(declare-fun e!1898631 () Bool)

(assert (=> b!3026701 (= e!1898630 e!1898631)))

(declare-fun b!3026702 () Bool)

(declare-fun c!499783 () Bool)

(assert (=> b!3026702 (= c!499783 ((_ is Union!9415) r!17423))))

(declare-fun e!1898632 () Bool)

(assert (=> b!3026702 (= e!1898631 e!1898632)))

(assert (=> b!3026703 (= e!1898635 call!205761)))

(declare-fun b!3026704 () Bool)

(assert (=> b!3026704 (= e!1898633 e!1898630)))

(declare-fun res!1245590 () Bool)

(assert (=> b!3026704 (= res!1245590 (not ((_ is EmptyLang!9415) r!17423)))))

(assert (=> b!3026704 (=> (not res!1245590) (not e!1898630))))

(declare-fun bm!205756 () Bool)

(assert (=> bm!205756 (= call!205760 (isEmpty!19456 s!11993))))

(declare-fun b!3026705 () Bool)

(assert (=> b!3026705 (= e!1898631 (= s!11993 (Cons!35156 (c!499613 r!17423) Nil!35156)))))

(declare-fun b!3026706 () Bool)

(declare-fun e!1898634 () Bool)

(assert (=> b!3026706 (= e!1898634 (matchRSpec!1552 (regTwo!19343 r!17423) s!11993))))

(declare-fun b!3026707 () Bool)

(assert (=> b!3026707 (= e!1898633 call!205760)))

(declare-fun b!3026708 () Bool)

(assert (=> b!3026708 (= e!1898632 e!1898629)))

(assert (=> b!3026708 (= c!499781 ((_ is Star!9415) r!17423))))

(declare-fun b!3026709 () Bool)

(assert (=> b!3026709 (= e!1898632 e!1898634)))

(declare-fun res!1245591 () Bool)

(assert (=> b!3026709 (= res!1245591 (matchRSpec!1552 (regOne!19343 r!17423) s!11993))))

(assert (=> b!3026709 (=> res!1245591 e!1898634)))

(assert (= (and d!850409 c!499782) b!3026707))

(assert (= (and d!850409 (not c!499782)) b!3026704))

(assert (= (and b!3026704 res!1245590) b!3026701))

(assert (= (and b!3026701 c!499780) b!3026705))

(assert (= (and b!3026701 (not c!499780)) b!3026702))

(assert (= (and b!3026702 c!499783) b!3026709))

(assert (= (and b!3026702 (not c!499783)) b!3026708))

(assert (= (and b!3026709 (not res!1245591)) b!3026706))

(assert (= (and b!3026708 c!499781) b!3026700))

(assert (= (and b!3026708 (not c!499781)) b!3026699))

(assert (= (and b!3026700 (not res!1245592)) b!3026703))

(assert (= (or b!3026703 b!3026699) bm!205755))

(assert (= (or b!3026707 b!3026700) bm!205756))

(declare-fun m!3365693 () Bool)

(assert (=> bm!205755 m!3365693))

(assert (=> bm!205756 m!3365391))

(declare-fun m!3365695 () Bool)

(assert (=> b!3026706 m!3365695))

(declare-fun m!3365697 () Bool)

(assert (=> b!3026709 m!3365697))

(assert (=> b!3026127 d!850409))

(declare-fun b!3026724 () Bool)

(declare-fun res!1245607 () Bool)

(declare-fun e!1898645 () Bool)

(assert (=> b!3026724 (=> res!1245607 e!1898645)))

(assert (=> b!3026724 (= res!1245607 (not ((_ is ElementMatch!9415) r!17423)))))

(declare-fun e!1898647 () Bool)

(assert (=> b!3026724 (= e!1898647 e!1898645)))

(declare-fun b!3026725 () Bool)

(declare-fun e!1898643 () Bool)

(assert (=> b!3026725 (= e!1898643 e!1898647)))

(declare-fun c!499787 () Bool)

(assert (=> b!3026725 (= c!499787 ((_ is EmptyLang!9415) r!17423))))

(declare-fun b!3026726 () Bool)

(declare-fun lt!1045449 () Bool)

(assert (=> b!3026726 (= e!1898647 (not lt!1045449))))

(declare-fun b!3026727 () Bool)

(declare-fun res!1245605 () Bool)

(assert (=> b!3026727 (=> res!1245605 e!1898645)))

(declare-fun e!1898649 () Bool)

(assert (=> b!3026727 (= res!1245605 e!1898649)))

(declare-fun res!1245603 () Bool)

(assert (=> b!3026727 (=> (not res!1245603) (not e!1898649))))

(assert (=> b!3026727 (= res!1245603 lt!1045449)))

(declare-fun bm!205758 () Bool)

(declare-fun call!205763 () Bool)

(assert (=> bm!205758 (= call!205763 (isEmpty!19456 s!11993))))

(declare-fun b!3026728 () Bool)

(declare-fun res!1245601 () Bool)

(assert (=> b!3026728 (=> (not res!1245601) (not e!1898649))))

(assert (=> b!3026728 (= res!1245601 (not call!205763))))

(declare-fun d!850415 () Bool)

(assert (=> d!850415 e!1898643))

(declare-fun c!499788 () Bool)

(assert (=> d!850415 (= c!499788 ((_ is EmptyExpr!9415) r!17423))))

(declare-fun e!1898646 () Bool)

(assert (=> d!850415 (= lt!1045449 e!1898646)))

(declare-fun c!499789 () Bool)

(assert (=> d!850415 (= c!499789 (isEmpty!19456 s!11993))))

(assert (=> d!850415 (validRegex!4148 r!17423)))

(assert (=> d!850415 (= (matchR!4297 r!17423 s!11993) lt!1045449)))

(declare-fun b!3026729 () Bool)

(declare-fun e!1898648 () Bool)

(assert (=> b!3026729 (= e!1898645 e!1898648)))

(declare-fun res!1245604 () Bool)

(assert (=> b!3026729 (=> (not res!1245604) (not e!1898648))))

(assert (=> b!3026729 (= res!1245604 (not lt!1045449))))

(declare-fun b!3026730 () Bool)

(assert (=> b!3026730 (= e!1898646 (matchR!4297 (derivativeStep!2664 r!17423 (head!6723 s!11993)) (tail!4949 s!11993)))))

(declare-fun b!3026731 () Bool)

(declare-fun e!1898644 () Bool)

(assert (=> b!3026731 (= e!1898644 (not (= (head!6723 s!11993) (c!499613 r!17423))))))

(declare-fun b!3026732 () Bool)

(assert (=> b!3026732 (= e!1898648 e!1898644)))

(declare-fun res!1245602 () Bool)

(assert (=> b!3026732 (=> res!1245602 e!1898644)))

(assert (=> b!3026732 (= res!1245602 call!205763)))

(declare-fun b!3026733 () Bool)

(declare-fun res!1245608 () Bool)

(assert (=> b!3026733 (=> res!1245608 e!1898644)))

(assert (=> b!3026733 (= res!1245608 (not (isEmpty!19456 (tail!4949 s!11993))))))

(declare-fun b!3026734 () Bool)

(assert (=> b!3026734 (= e!1898649 (= (head!6723 s!11993) (c!499613 r!17423)))))

(declare-fun b!3026735 () Bool)

(assert (=> b!3026735 (= e!1898646 (nullable!3067 r!17423))))

(declare-fun b!3026736 () Bool)

(assert (=> b!3026736 (= e!1898643 (= lt!1045449 call!205763))))

(declare-fun b!3026737 () Bool)

(declare-fun res!1245606 () Bool)

(assert (=> b!3026737 (=> (not res!1245606) (not e!1898649))))

(assert (=> b!3026737 (= res!1245606 (isEmpty!19456 (tail!4949 s!11993)))))

(assert (= (and d!850415 c!499789) b!3026735))

(assert (= (and d!850415 (not c!499789)) b!3026730))

(assert (= (and d!850415 c!499788) b!3026736))

(assert (= (and d!850415 (not c!499788)) b!3026725))

(assert (= (and b!3026725 c!499787) b!3026726))

(assert (= (and b!3026725 (not c!499787)) b!3026724))

(assert (= (and b!3026724 (not res!1245607)) b!3026727))

(assert (= (and b!3026727 res!1245603) b!3026728))

(assert (= (and b!3026728 res!1245601) b!3026737))

(assert (= (and b!3026737 res!1245606) b!3026734))

(assert (= (and b!3026727 (not res!1245605)) b!3026729))

(assert (= (and b!3026729 res!1245604) b!3026732))

(assert (= (and b!3026732 (not res!1245602)) b!3026733))

(assert (= (and b!3026733 (not res!1245608)) b!3026731))

(assert (= (or b!3026736 b!3026728 b!3026732) bm!205758))

(assert (=> b!3026737 m!3365667))

(assert (=> b!3026737 m!3365667))

(assert (=> b!3026737 m!3365669))

(assert (=> b!3026733 m!3365667))

(assert (=> b!3026733 m!3365667))

(assert (=> b!3026733 m!3365669))

(assert (=> b!3026735 m!3365661))

(assert (=> b!3026730 m!3365673))

(assert (=> b!3026730 m!3365673))

(declare-fun m!3365703 () Bool)

(assert (=> b!3026730 m!3365703))

(assert (=> b!3026730 m!3365667))

(assert (=> b!3026730 m!3365703))

(assert (=> b!3026730 m!3365667))

(declare-fun m!3365705 () Bool)

(assert (=> b!3026730 m!3365705))

(assert (=> b!3026734 m!3365673))

(assert (=> b!3026731 m!3365673))

(assert (=> bm!205758 m!3365391))

(assert (=> d!850415 m!3365391))

(assert (=> d!850415 m!3365395))

(assert (=> b!3026127 d!850415))

(declare-fun d!850419 () Bool)

(assert (=> d!850419 (= (matchR!4297 r!17423 s!11993) (matchRSpec!1552 r!17423 s!11993))))

(declare-fun lt!1045455 () Unit!49253)

(declare-fun choose!17944 (Regex!9415 List!35280) Unit!49253)

(assert (=> d!850419 (= lt!1045455 (choose!17944 r!17423 s!11993))))

(assert (=> d!850419 (validRegex!4148 r!17423)))

(assert (=> d!850419 (= (mainMatchTheorem!1552 r!17423 s!11993) lt!1045455)))

(declare-fun bs!530643 () Bool)

(assert (= bs!530643 d!850419))

(assert (=> bs!530643 m!3365413))

(assert (=> bs!530643 m!3365411))

(declare-fun m!3365709 () Bool)

(assert (=> bs!530643 m!3365709))

(assert (=> bs!530643 m!3365395))

(assert (=> b!3026127 d!850419))

(declare-fun d!850421 () Bool)

(assert (=> d!850421 (= (matchR!4297 (regTwo!19342 r!17423) (_2!20188 lt!1045349)) (matchR!4297 (simplify!394 (regTwo!19342 r!17423)) (_2!20188 lt!1045349)))))

(declare-fun lt!1045458 () Unit!49253)

(declare-fun choose!17945 (Regex!9415 List!35280) Unit!49253)

(assert (=> d!850421 (= lt!1045458 (choose!17945 (regTwo!19342 r!17423) (_2!20188 lt!1045349)))))

(assert (=> d!850421 (validRegex!4148 (regTwo!19342 r!17423))))

(assert (=> d!850421 (= (lemmaSimplifySound!242 (regTwo!19342 r!17423) (_2!20188 lt!1045349)) lt!1045458)))

(declare-fun bs!530644 () Bool)

(assert (= bs!530644 d!850421))

(assert (=> bs!530644 m!3365389))

(assert (=> bs!530644 m!3365397))

(declare-fun m!3365711 () Bool)

(assert (=> bs!530644 m!3365711))

(assert (=> bs!530644 m!3365397))

(declare-fun m!3365713 () Bool)

(assert (=> bs!530644 m!3365713))

(declare-fun m!3365715 () Bool)

(assert (=> bs!530644 m!3365715))

(assert (=> b!3026128 d!850421))

(declare-fun b!3026773 () Bool)

(declare-fun e!1898672 () Regex!9415)

(declare-fun lt!1045459 () Regex!9415)

(assert (=> b!3026773 (= e!1898672 lt!1045459)))

(declare-fun d!850423 () Bool)

(declare-fun e!1898661 () Bool)

(assert (=> d!850423 e!1898661))

(declare-fun res!1245610 () Bool)

(assert (=> d!850423 (=> (not res!1245610) (not e!1898661))))

(declare-fun lt!1045462 () Regex!9415)

(assert (=> d!850423 (= res!1245610 (validRegex!4148 lt!1045462))))

(declare-fun e!1898663 () Regex!9415)

(assert (=> d!850423 (= lt!1045462 e!1898663)))

(declare-fun c!499797 () Bool)

(assert (=> d!850423 (= c!499797 ((_ is EmptyLang!9415) (regTwo!19342 r!17423)))))

(assert (=> d!850423 (validRegex!4148 (regTwo!19342 r!17423))))

(assert (=> d!850423 (= (simplify!394 (regTwo!19342 r!17423)) lt!1045462)))

(declare-fun lt!1045461 () Regex!9415)

(declare-fun bm!205759 () Bool)

(declare-fun call!205769 () Bool)

(declare-fun c!499790 () Bool)

(assert (=> bm!205759 (= call!205769 (isEmptyLang!492 (ite c!499790 lt!1045459 lt!1045461)))))

(declare-fun b!3026774 () Bool)

(declare-fun c!499791 () Bool)

(declare-fun e!1898668 () Bool)

(assert (=> b!3026774 (= c!499791 e!1898668)))

(declare-fun res!1245609 () Bool)

(assert (=> b!3026774 (=> res!1245609 e!1898668)))

(declare-fun call!205770 () Bool)

(assert (=> b!3026774 (= res!1245609 call!205770)))

(declare-fun lt!1045463 () Regex!9415)

(declare-fun call!205764 () Regex!9415)

(assert (=> b!3026774 (= lt!1045463 call!205764)))

(declare-fun e!1898666 () Regex!9415)

(declare-fun e!1898665 () Regex!9415)

(assert (=> b!3026774 (= e!1898666 e!1898665)))

(declare-fun b!3026775 () Bool)

(declare-fun e!1898662 () Regex!9415)

(declare-fun lt!1045464 () Regex!9415)

(assert (=> b!3026775 (= e!1898662 lt!1045464)))

(declare-fun b!3026776 () Bool)

(declare-fun e!1898671 () Regex!9415)

(declare-fun e!1898660 () Regex!9415)

(assert (=> b!3026776 (= e!1898671 e!1898660)))

(declare-fun c!499792 () Bool)

(declare-fun call!205766 () Bool)

(assert (=> b!3026776 (= c!499792 call!205766)))

(declare-fun bm!205760 () Bool)

(declare-fun c!499793 () Bool)

(assert (=> bm!205760 (= call!205764 (simplify!394 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))))))

(declare-fun b!3026777 () Bool)

(declare-fun e!1898673 () Regex!9415)

(assert (=> b!3026777 (= e!1898673 e!1898672)))

(declare-fun call!205768 () Regex!9415)

(assert (=> b!3026777 (= lt!1045464 call!205768)))

(declare-fun call!205767 () Regex!9415)

(assert (=> b!3026777 (= lt!1045459 call!205767)))

(declare-fun c!499799 () Bool)

(declare-fun call!205765 () Bool)

(assert (=> b!3026777 (= c!499799 call!205765)))

(declare-fun b!3026778 () Bool)

(declare-fun c!499798 () Bool)

(declare-fun lt!1045460 () Regex!9415)

(assert (=> b!3026778 (= c!499798 (isEmptyExpr!498 lt!1045460))))

(declare-fun e!1898670 () Regex!9415)

(assert (=> b!3026778 (= e!1898670 e!1898671)))

(declare-fun bm!205761 () Bool)

(assert (=> bm!205761 (= call!205768 call!205764)))

(declare-fun b!3026779 () Bool)

(declare-fun c!499794 () Bool)

(assert (=> b!3026779 (= c!499794 call!205769)))

(assert (=> b!3026779 (= e!1898672 e!1898662)))

(declare-fun b!3026780 () Bool)

(assert (=> b!3026780 (= e!1898670 EmptyLang!9415)))

(declare-fun b!3026781 () Bool)

(assert (=> b!3026781 (= e!1898660 lt!1045460)))

(declare-fun b!3026782 () Bool)

(declare-fun e!1898669 () Regex!9415)

(assert (=> b!3026782 (= e!1898669 EmptyExpr!9415)))

(declare-fun b!3026783 () Bool)

(assert (=> b!3026783 (= e!1898671 lt!1045461)))

(declare-fun b!3026784 () Bool)

(assert (=> b!3026784 (= e!1898661 (= (nullable!3067 lt!1045462) (nullable!3067 (regTwo!19342 r!17423))))))

(declare-fun b!3026785 () Bool)

(assert (=> b!3026785 (= e!1898662 (Union!9415 lt!1045464 lt!1045459))))

(declare-fun bm!205762 () Bool)

(assert (=> bm!205762 (= call!205766 (isEmptyExpr!498 (ite c!499793 lt!1045463 lt!1045461)))))

(declare-fun b!3026786 () Bool)

(assert (=> b!3026786 (= e!1898668 call!205766)))

(declare-fun b!3026787 () Bool)

(declare-fun e!1898667 () Regex!9415)

(assert (=> b!3026787 (= e!1898667 (regTwo!19342 r!17423))))

(declare-fun bm!205763 () Bool)

(assert (=> bm!205763 (= call!205770 (isEmptyLang!492 (ite c!499793 lt!1045463 (ite c!499790 lt!1045464 lt!1045460))))))

(declare-fun b!3026788 () Bool)

(assert (=> b!3026788 (= c!499790 ((_ is Union!9415) (regTwo!19342 r!17423)))))

(assert (=> b!3026788 (= e!1898666 e!1898673)))

(declare-fun b!3026789 () Bool)

(assert (=> b!3026789 (= e!1898673 e!1898670)))

(assert (=> b!3026789 (= lt!1045460 call!205767)))

(assert (=> b!3026789 (= lt!1045461 call!205768)))

(declare-fun res!1245611 () Bool)

(assert (=> b!3026789 (= res!1245611 call!205765)))

(declare-fun e!1898664 () Bool)

(assert (=> b!3026789 (=> res!1245611 e!1898664)))

(declare-fun c!499795 () Bool)

(assert (=> b!3026789 (= c!499795 e!1898664)))

(declare-fun b!3026790 () Bool)

(assert (=> b!3026790 (= e!1898663 e!1898667)))

(declare-fun c!499796 () Bool)

(assert (=> b!3026790 (= c!499796 ((_ is ElementMatch!9415) (regTwo!19342 r!17423)))))

(declare-fun bm!205764 () Bool)

(assert (=> bm!205764 (= call!205765 call!205770)))

(declare-fun b!3026791 () Bool)

(assert (=> b!3026791 (= e!1898669 e!1898666)))

(assert (=> b!3026791 (= c!499793 ((_ is Star!9415) (regTwo!19342 r!17423)))))

(declare-fun b!3026792 () Bool)

(assert (=> b!3026792 (= e!1898660 (Concat!14736 lt!1045460 lt!1045461))))

(declare-fun b!3026793 () Bool)

(assert (=> b!3026793 (= e!1898665 (Star!9415 lt!1045463))))

(declare-fun bm!205765 () Bool)

(assert (=> bm!205765 (= call!205767 (simplify!394 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))))))

(declare-fun b!3026794 () Bool)

(assert (=> b!3026794 (= e!1898663 EmptyLang!9415)))

(declare-fun b!3026795 () Bool)

(declare-fun c!499800 () Bool)

(assert (=> b!3026795 (= c!499800 ((_ is EmptyExpr!9415) (regTwo!19342 r!17423)))))

(assert (=> b!3026795 (= e!1898667 e!1898669)))

(declare-fun b!3026796 () Bool)

(assert (=> b!3026796 (= e!1898665 EmptyExpr!9415)))

(declare-fun b!3026797 () Bool)

(assert (=> b!3026797 (= e!1898664 call!205769)))

(assert (= (and d!850423 c!499797) b!3026794))

(assert (= (and d!850423 (not c!499797)) b!3026790))

(assert (= (and b!3026790 c!499796) b!3026787))

(assert (= (and b!3026790 (not c!499796)) b!3026795))

(assert (= (and b!3026795 c!499800) b!3026782))

(assert (= (and b!3026795 (not c!499800)) b!3026791))

(assert (= (and b!3026791 c!499793) b!3026774))

(assert (= (and b!3026791 (not c!499793)) b!3026788))

(assert (= (and b!3026774 (not res!1245609)) b!3026786))

(assert (= (and b!3026774 c!499791) b!3026796))

(assert (= (and b!3026774 (not c!499791)) b!3026793))

(assert (= (and b!3026788 c!499790) b!3026777))

(assert (= (and b!3026788 (not c!499790)) b!3026789))

(assert (= (and b!3026777 c!499799) b!3026773))

(assert (= (and b!3026777 (not c!499799)) b!3026779))

(assert (= (and b!3026779 c!499794) b!3026775))

(assert (= (and b!3026779 (not c!499794)) b!3026785))

(assert (= (and b!3026789 (not res!1245611)) b!3026797))

(assert (= (and b!3026789 c!499795) b!3026780))

(assert (= (and b!3026789 (not c!499795)) b!3026778))

(assert (= (and b!3026778 c!499798) b!3026783))

(assert (= (and b!3026778 (not c!499798)) b!3026776))

(assert (= (and b!3026776 c!499792) b!3026781))

(assert (= (and b!3026776 (not c!499792)) b!3026792))

(assert (= (or b!3026777 b!3026789) bm!205761))

(assert (= (or b!3026777 b!3026789) bm!205765))

(assert (= (or b!3026777 b!3026789) bm!205764))

(assert (= (or b!3026779 b!3026797) bm!205759))

(assert (= (or b!3026786 b!3026776) bm!205762))

(assert (= (or b!3026774 bm!205761) bm!205760))

(assert (= (or b!3026774 bm!205764) bm!205763))

(assert (= (and d!850423 res!1245610) b!3026784))

(declare-fun m!3365717 () Bool)

(assert (=> bm!205762 m!3365717))

(declare-fun m!3365719 () Bool)

(assert (=> d!850423 m!3365719))

(assert (=> d!850423 m!3365715))

(declare-fun m!3365721 () Bool)

(assert (=> bm!205765 m!3365721))

(declare-fun m!3365723 () Bool)

(assert (=> bm!205763 m!3365723))

(declare-fun m!3365725 () Bool)

(assert (=> bm!205759 m!3365725))

(declare-fun m!3365727 () Bool)

(assert (=> b!3026784 m!3365727))

(declare-fun m!3365729 () Bool)

(assert (=> b!3026784 m!3365729))

(declare-fun m!3365731 () Bool)

(assert (=> bm!205760 m!3365731))

(declare-fun m!3365733 () Bool)

(assert (=> b!3026778 m!3365733))

(assert (=> b!3026128 d!850423))

(declare-fun b!3026798 () Bool)

(declare-fun res!1245618 () Bool)

(declare-fun e!1898676 () Bool)

(assert (=> b!3026798 (=> res!1245618 e!1898676)))

(assert (=> b!3026798 (= res!1245618 (not ((_ is ElementMatch!9415) lt!1045353)))))

(declare-fun e!1898678 () Bool)

(assert (=> b!3026798 (= e!1898678 e!1898676)))

(declare-fun b!3026799 () Bool)

(declare-fun e!1898674 () Bool)

(assert (=> b!3026799 (= e!1898674 e!1898678)))

(declare-fun c!499801 () Bool)

(assert (=> b!3026799 (= c!499801 ((_ is EmptyLang!9415) lt!1045353))))

(declare-fun b!3026800 () Bool)

(declare-fun lt!1045465 () Bool)

(assert (=> b!3026800 (= e!1898678 (not lt!1045465))))

(declare-fun b!3026801 () Bool)

(declare-fun res!1245616 () Bool)

(assert (=> b!3026801 (=> res!1245616 e!1898676)))

(declare-fun e!1898680 () Bool)

(assert (=> b!3026801 (= res!1245616 e!1898680)))

(declare-fun res!1245614 () Bool)

(assert (=> b!3026801 (=> (not res!1245614) (not e!1898680))))

(assert (=> b!3026801 (= res!1245614 lt!1045465)))

(declare-fun bm!205766 () Bool)

(declare-fun call!205771 () Bool)

(assert (=> bm!205766 (= call!205771 (isEmpty!19456 (_1!20188 lt!1045349)))))

(declare-fun b!3026802 () Bool)

(declare-fun res!1245612 () Bool)

(assert (=> b!3026802 (=> (not res!1245612) (not e!1898680))))

(assert (=> b!3026802 (= res!1245612 (not call!205771))))

(declare-fun d!850425 () Bool)

(assert (=> d!850425 e!1898674))

(declare-fun c!499802 () Bool)

(assert (=> d!850425 (= c!499802 ((_ is EmptyExpr!9415) lt!1045353))))

(declare-fun e!1898677 () Bool)

(assert (=> d!850425 (= lt!1045465 e!1898677)))

(declare-fun c!499803 () Bool)

(assert (=> d!850425 (= c!499803 (isEmpty!19456 (_1!20188 lt!1045349)))))

(assert (=> d!850425 (validRegex!4148 lt!1045353)))

(assert (=> d!850425 (= (matchR!4297 lt!1045353 (_1!20188 lt!1045349)) lt!1045465)))

(declare-fun b!3026803 () Bool)

(declare-fun e!1898679 () Bool)

(assert (=> b!3026803 (= e!1898676 e!1898679)))

(declare-fun res!1245615 () Bool)

(assert (=> b!3026803 (=> (not res!1245615) (not e!1898679))))

(assert (=> b!3026803 (= res!1245615 (not lt!1045465))))

(declare-fun b!3026804 () Bool)

(assert (=> b!3026804 (= e!1898677 (matchR!4297 (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349))) (tail!4949 (_1!20188 lt!1045349))))))

(declare-fun b!3026805 () Bool)

(declare-fun e!1898675 () Bool)

(assert (=> b!3026805 (= e!1898675 (not (= (head!6723 (_1!20188 lt!1045349)) (c!499613 lt!1045353))))))

(declare-fun b!3026806 () Bool)

(assert (=> b!3026806 (= e!1898679 e!1898675)))

(declare-fun res!1245613 () Bool)

(assert (=> b!3026806 (=> res!1245613 e!1898675)))

(assert (=> b!3026806 (= res!1245613 call!205771)))

(declare-fun b!3026807 () Bool)

(declare-fun res!1245619 () Bool)

(assert (=> b!3026807 (=> res!1245619 e!1898675)))

(assert (=> b!3026807 (= res!1245619 (not (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349)))))))

(declare-fun b!3026808 () Bool)

(assert (=> b!3026808 (= e!1898680 (= (head!6723 (_1!20188 lt!1045349)) (c!499613 lt!1045353)))))

(declare-fun b!3026809 () Bool)

(assert (=> b!3026809 (= e!1898677 (nullable!3067 lt!1045353))))

(declare-fun b!3026810 () Bool)

(assert (=> b!3026810 (= e!1898674 (= lt!1045465 call!205771))))

(declare-fun b!3026811 () Bool)

(declare-fun res!1245617 () Bool)

(assert (=> b!3026811 (=> (not res!1245617) (not e!1898680))))

(assert (=> b!3026811 (= res!1245617 (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349))))))

(assert (= (and d!850425 c!499803) b!3026809))

(assert (= (and d!850425 (not c!499803)) b!3026804))

(assert (= (and d!850425 c!499802) b!3026810))

(assert (= (and d!850425 (not c!499802)) b!3026799))

(assert (= (and b!3026799 c!499801) b!3026800))

(assert (= (and b!3026799 (not c!499801)) b!3026798))

(assert (= (and b!3026798 (not res!1245618)) b!3026801))

(assert (= (and b!3026801 res!1245614) b!3026802))

(assert (= (and b!3026802 res!1245612) b!3026811))

(assert (= (and b!3026811 res!1245617) b!3026808))

(assert (= (and b!3026801 (not res!1245616)) b!3026803))

(assert (= (and b!3026803 res!1245615) b!3026806))

(assert (= (and b!3026806 (not res!1245613)) b!3026807))

(assert (= (and b!3026807 (not res!1245619)) b!3026805))

(assert (= (or b!3026810 b!3026802 b!3026806) bm!205766))

(declare-fun m!3365735 () Bool)

(assert (=> b!3026811 m!3365735))

(assert (=> b!3026811 m!3365735))

(declare-fun m!3365737 () Bool)

(assert (=> b!3026811 m!3365737))

(assert (=> b!3026807 m!3365735))

(assert (=> b!3026807 m!3365735))

(assert (=> b!3026807 m!3365737))

(declare-fun m!3365739 () Bool)

(assert (=> b!3026809 m!3365739))

(declare-fun m!3365741 () Bool)

(assert (=> b!3026804 m!3365741))

(assert (=> b!3026804 m!3365741))

(declare-fun m!3365743 () Bool)

(assert (=> b!3026804 m!3365743))

(assert (=> b!3026804 m!3365735))

(assert (=> b!3026804 m!3365743))

(assert (=> b!3026804 m!3365735))

(declare-fun m!3365745 () Bool)

(assert (=> b!3026804 m!3365745))

(assert (=> b!3026808 m!3365741))

(assert (=> b!3026805 m!3365741))

(declare-fun m!3365747 () Bool)

(assert (=> bm!205766 m!3365747))

(assert (=> d!850425 m!3365747))

(assert (=> d!850425 m!3365403))

(assert (=> b!3026128 d!850425))

(declare-fun bm!205773 () Bool)

(declare-fun call!205779 () Bool)

(declare-fun call!205778 () Bool)

(assert (=> bm!205773 (= call!205779 call!205778)))

(declare-fun b!3026831 () Bool)

(declare-fun res!1245632 () Bool)

(declare-fun e!1898701 () Bool)

(assert (=> b!3026831 (=> (not res!1245632) (not e!1898701))))

(assert (=> b!3026831 (= res!1245632 call!205779)))

(declare-fun e!1898699 () Bool)

(assert (=> b!3026831 (= e!1898699 e!1898701)))

(declare-fun b!3026832 () Bool)

(declare-fun call!205780 () Bool)

(assert (=> b!3026832 (= e!1898701 call!205780)))

(declare-fun b!3026833 () Bool)

(declare-fun e!1898695 () Bool)

(declare-fun e!1898697 () Bool)

(assert (=> b!3026833 (= e!1898695 e!1898697)))

(declare-fun c!499808 () Bool)

(assert (=> b!3026833 (= c!499808 ((_ is Star!9415) lt!1045353))))

(declare-fun c!499809 () Bool)

(declare-fun bm!205774 () Bool)

(assert (=> bm!205774 (= call!205778 (validRegex!4148 (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))))))

(declare-fun b!3026834 () Bool)

(declare-fun e!1898698 () Bool)

(declare-fun e!1898696 () Bool)

(assert (=> b!3026834 (= e!1898698 e!1898696)))

(declare-fun res!1245630 () Bool)

(assert (=> b!3026834 (=> (not res!1245630) (not e!1898696))))

(assert (=> b!3026834 (= res!1245630 call!205780)))

(declare-fun b!3026830 () Bool)

(assert (=> b!3026830 (= e!1898696 call!205779)))

(declare-fun d!850427 () Bool)

(declare-fun res!1245634 () Bool)

(assert (=> d!850427 (=> res!1245634 e!1898695)))

(assert (=> d!850427 (= res!1245634 ((_ is ElementMatch!9415) lt!1045353))))

(assert (=> d!850427 (= (validRegex!4148 lt!1045353) e!1898695)))

(declare-fun b!3026835 () Bool)

(assert (=> b!3026835 (= e!1898697 e!1898699)))

(assert (=> b!3026835 (= c!499809 ((_ is Union!9415) lt!1045353))))

(declare-fun b!3026836 () Bool)

(declare-fun e!1898700 () Bool)

(assert (=> b!3026836 (= e!1898700 call!205778)))

(declare-fun bm!205775 () Bool)

(assert (=> bm!205775 (= call!205780 (validRegex!4148 (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))))))

(declare-fun b!3026837 () Bool)

(declare-fun res!1245631 () Bool)

(assert (=> b!3026837 (=> res!1245631 e!1898698)))

(assert (=> b!3026837 (= res!1245631 (not ((_ is Concat!14736) lt!1045353)))))

(assert (=> b!3026837 (= e!1898699 e!1898698)))

(declare-fun b!3026838 () Bool)

(assert (=> b!3026838 (= e!1898697 e!1898700)))

(declare-fun res!1245633 () Bool)

(assert (=> b!3026838 (= res!1245633 (not (nullable!3067 (reg!9744 lt!1045353))))))

(assert (=> b!3026838 (=> (not res!1245633) (not e!1898700))))

(assert (= (and d!850427 (not res!1245634)) b!3026833))

(assert (= (and b!3026833 c!499808) b!3026838))

(assert (= (and b!3026833 (not c!499808)) b!3026835))

(assert (= (and b!3026838 res!1245633) b!3026836))

(assert (= (and b!3026835 c!499809) b!3026831))

(assert (= (and b!3026835 (not c!499809)) b!3026837))

(assert (= (and b!3026831 res!1245632) b!3026832))

(assert (= (and b!3026837 (not res!1245631)) b!3026834))

(assert (= (and b!3026834 res!1245630) b!3026830))

(assert (= (or b!3026831 b!3026830) bm!205773))

(assert (= (or b!3026832 b!3026834) bm!205775))

(assert (= (or b!3026836 bm!205773) bm!205774))

(declare-fun m!3365749 () Bool)

(assert (=> bm!205774 m!3365749))

(declare-fun m!3365751 () Bool)

(assert (=> bm!205775 m!3365751))

(declare-fun m!3365753 () Bool)

(assert (=> b!3026838 m!3365753))

(assert (=> b!3026128 d!850427))

(declare-fun b!3026839 () Bool)

(declare-fun res!1245641 () Bool)

(declare-fun e!1898704 () Bool)

(assert (=> b!3026839 (=> res!1245641 e!1898704)))

(assert (=> b!3026839 (= res!1245641 (not ((_ is ElementMatch!9415) lt!1045354)))))

(declare-fun e!1898706 () Bool)

(assert (=> b!3026839 (= e!1898706 e!1898704)))

(declare-fun b!3026840 () Bool)

(declare-fun e!1898702 () Bool)

(assert (=> b!3026840 (= e!1898702 e!1898706)))

(declare-fun c!499810 () Bool)

(assert (=> b!3026840 (= c!499810 ((_ is EmptyLang!9415) lt!1045354))))

(declare-fun b!3026841 () Bool)

(declare-fun lt!1045466 () Bool)

(assert (=> b!3026841 (= e!1898706 (not lt!1045466))))

(declare-fun b!3026842 () Bool)

(declare-fun res!1245639 () Bool)

(assert (=> b!3026842 (=> res!1245639 e!1898704)))

(declare-fun e!1898708 () Bool)

(assert (=> b!3026842 (= res!1245639 e!1898708)))

(declare-fun res!1245637 () Bool)

(assert (=> b!3026842 (=> (not res!1245637) (not e!1898708))))

(assert (=> b!3026842 (= res!1245637 lt!1045466)))

(declare-fun bm!205776 () Bool)

(declare-fun call!205781 () Bool)

(assert (=> bm!205776 (= call!205781 (isEmpty!19456 (_2!20188 lt!1045349)))))

(declare-fun b!3026843 () Bool)

(declare-fun res!1245635 () Bool)

(assert (=> b!3026843 (=> (not res!1245635) (not e!1898708))))

(assert (=> b!3026843 (= res!1245635 (not call!205781))))

(declare-fun d!850429 () Bool)

(assert (=> d!850429 e!1898702))

(declare-fun c!499811 () Bool)

(assert (=> d!850429 (= c!499811 ((_ is EmptyExpr!9415) lt!1045354))))

(declare-fun e!1898705 () Bool)

(assert (=> d!850429 (= lt!1045466 e!1898705)))

(declare-fun c!499812 () Bool)

(assert (=> d!850429 (= c!499812 (isEmpty!19456 (_2!20188 lt!1045349)))))

(assert (=> d!850429 (validRegex!4148 lt!1045354)))

(assert (=> d!850429 (= (matchR!4297 lt!1045354 (_2!20188 lt!1045349)) lt!1045466)))

(declare-fun b!3026844 () Bool)

(declare-fun e!1898707 () Bool)

(assert (=> b!3026844 (= e!1898704 e!1898707)))

(declare-fun res!1245638 () Bool)

(assert (=> b!3026844 (=> (not res!1245638) (not e!1898707))))

(assert (=> b!3026844 (= res!1245638 (not lt!1045466))))

(declare-fun b!3026845 () Bool)

(assert (=> b!3026845 (= e!1898705 (matchR!4297 (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349))) (tail!4949 (_2!20188 lt!1045349))))))

(declare-fun b!3026846 () Bool)

(declare-fun e!1898703 () Bool)

(assert (=> b!3026846 (= e!1898703 (not (= (head!6723 (_2!20188 lt!1045349)) (c!499613 lt!1045354))))))

(declare-fun b!3026847 () Bool)

(assert (=> b!3026847 (= e!1898707 e!1898703)))

(declare-fun res!1245636 () Bool)

(assert (=> b!3026847 (=> res!1245636 e!1898703)))

(assert (=> b!3026847 (= res!1245636 call!205781)))

(declare-fun b!3026848 () Bool)

(declare-fun res!1245642 () Bool)

(assert (=> b!3026848 (=> res!1245642 e!1898703)))

(assert (=> b!3026848 (= res!1245642 (not (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349)))))))

(declare-fun b!3026849 () Bool)

(assert (=> b!3026849 (= e!1898708 (= (head!6723 (_2!20188 lt!1045349)) (c!499613 lt!1045354)))))

(declare-fun b!3026850 () Bool)

(assert (=> b!3026850 (= e!1898705 (nullable!3067 lt!1045354))))

(declare-fun b!3026851 () Bool)

(assert (=> b!3026851 (= e!1898702 (= lt!1045466 call!205781))))

(declare-fun b!3026852 () Bool)

(declare-fun res!1245640 () Bool)

(assert (=> b!3026852 (=> (not res!1245640) (not e!1898708))))

(assert (=> b!3026852 (= res!1245640 (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349))))))

(assert (= (and d!850429 c!499812) b!3026850))

(assert (= (and d!850429 (not c!499812)) b!3026845))

(assert (= (and d!850429 c!499811) b!3026851))

(assert (= (and d!850429 (not c!499811)) b!3026840))

(assert (= (and b!3026840 c!499810) b!3026841))

(assert (= (and b!3026840 (not c!499810)) b!3026839))

(assert (= (and b!3026839 (not res!1245641)) b!3026842))

(assert (= (and b!3026842 res!1245637) b!3026843))

(assert (= (and b!3026843 res!1245635) b!3026852))

(assert (= (and b!3026852 res!1245640) b!3026849))

(assert (= (and b!3026842 (not res!1245639)) b!3026844))

(assert (= (and b!3026844 res!1245638) b!3026847))

(assert (= (and b!3026847 (not res!1245636)) b!3026848))

(assert (= (and b!3026848 (not res!1245642)) b!3026846))

(assert (= (or b!3026851 b!3026843 b!3026847) bm!205776))

(declare-fun m!3365755 () Bool)

(assert (=> b!3026852 m!3365755))

(assert (=> b!3026852 m!3365755))

(declare-fun m!3365757 () Bool)

(assert (=> b!3026852 m!3365757))

(assert (=> b!3026848 m!3365755))

(assert (=> b!3026848 m!3365755))

(assert (=> b!3026848 m!3365757))

(declare-fun m!3365759 () Bool)

(assert (=> b!3026850 m!3365759))

(declare-fun m!3365761 () Bool)

(assert (=> b!3026845 m!3365761))

(assert (=> b!3026845 m!3365761))

(declare-fun m!3365763 () Bool)

(assert (=> b!3026845 m!3365763))

(assert (=> b!3026845 m!3365755))

(assert (=> b!3026845 m!3365763))

(assert (=> b!3026845 m!3365755))

(declare-fun m!3365765 () Bool)

(assert (=> b!3026845 m!3365765))

(assert (=> b!3026849 m!3365761))

(assert (=> b!3026846 m!3365761))

(declare-fun m!3365767 () Bool)

(assert (=> bm!205776 m!3365767))

(assert (=> d!850429 m!3365767))

(assert (=> d!850429 m!3365393))

(assert (=> b!3026128 d!850429))

(declare-fun b!3026853 () Bool)

(declare-fun e!1898721 () Regex!9415)

(declare-fun lt!1045467 () Regex!9415)

(assert (=> b!3026853 (= e!1898721 lt!1045467)))

(declare-fun d!850431 () Bool)

(declare-fun e!1898710 () Bool)

(assert (=> d!850431 e!1898710))

(declare-fun res!1245644 () Bool)

(assert (=> d!850431 (=> (not res!1245644) (not e!1898710))))

(declare-fun lt!1045470 () Regex!9415)

(assert (=> d!850431 (= res!1245644 (validRegex!4148 lt!1045470))))

(declare-fun e!1898712 () Regex!9415)

(assert (=> d!850431 (= lt!1045470 e!1898712)))

(declare-fun c!499820 () Bool)

(assert (=> d!850431 (= c!499820 ((_ is EmptyLang!9415) (regOne!19342 r!17423)))))

(assert (=> d!850431 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850431 (= (simplify!394 (regOne!19342 r!17423)) lt!1045470)))

(declare-fun call!205787 () Bool)

(declare-fun bm!205777 () Bool)

(declare-fun lt!1045469 () Regex!9415)

(declare-fun c!499813 () Bool)

(assert (=> bm!205777 (= call!205787 (isEmptyLang!492 (ite c!499813 lt!1045467 lt!1045469)))))

(declare-fun b!3026854 () Bool)

(declare-fun c!499814 () Bool)

(declare-fun e!1898717 () Bool)

(assert (=> b!3026854 (= c!499814 e!1898717)))

(declare-fun res!1245643 () Bool)

(assert (=> b!3026854 (=> res!1245643 e!1898717)))

(declare-fun call!205788 () Bool)

(assert (=> b!3026854 (= res!1245643 call!205788)))

(declare-fun lt!1045471 () Regex!9415)

(declare-fun call!205782 () Regex!9415)

(assert (=> b!3026854 (= lt!1045471 call!205782)))

(declare-fun e!1898715 () Regex!9415)

(declare-fun e!1898714 () Regex!9415)

(assert (=> b!3026854 (= e!1898715 e!1898714)))

(declare-fun b!3026855 () Bool)

(declare-fun e!1898711 () Regex!9415)

(declare-fun lt!1045472 () Regex!9415)

(assert (=> b!3026855 (= e!1898711 lt!1045472)))

(declare-fun b!3026856 () Bool)

(declare-fun e!1898720 () Regex!9415)

(declare-fun e!1898709 () Regex!9415)

(assert (=> b!3026856 (= e!1898720 e!1898709)))

(declare-fun c!499815 () Bool)

(declare-fun call!205784 () Bool)

(assert (=> b!3026856 (= c!499815 call!205784)))

(declare-fun bm!205778 () Bool)

(declare-fun c!499816 () Bool)

(assert (=> bm!205778 (= call!205782 (simplify!394 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))))))

(declare-fun b!3026857 () Bool)

(declare-fun e!1898722 () Regex!9415)

(assert (=> b!3026857 (= e!1898722 e!1898721)))

(declare-fun call!205786 () Regex!9415)

(assert (=> b!3026857 (= lt!1045472 call!205786)))

(declare-fun call!205785 () Regex!9415)

(assert (=> b!3026857 (= lt!1045467 call!205785)))

(declare-fun c!499822 () Bool)

(declare-fun call!205783 () Bool)

(assert (=> b!3026857 (= c!499822 call!205783)))

(declare-fun b!3026858 () Bool)

(declare-fun c!499821 () Bool)

(declare-fun lt!1045468 () Regex!9415)

(assert (=> b!3026858 (= c!499821 (isEmptyExpr!498 lt!1045468))))

(declare-fun e!1898719 () Regex!9415)

(assert (=> b!3026858 (= e!1898719 e!1898720)))

(declare-fun bm!205779 () Bool)

(assert (=> bm!205779 (= call!205786 call!205782)))

(declare-fun b!3026859 () Bool)

(declare-fun c!499817 () Bool)

(assert (=> b!3026859 (= c!499817 call!205787)))

(assert (=> b!3026859 (= e!1898721 e!1898711)))

(declare-fun b!3026860 () Bool)

(assert (=> b!3026860 (= e!1898719 EmptyLang!9415)))

(declare-fun b!3026861 () Bool)

(assert (=> b!3026861 (= e!1898709 lt!1045468)))

(declare-fun b!3026862 () Bool)

(declare-fun e!1898718 () Regex!9415)

(assert (=> b!3026862 (= e!1898718 EmptyExpr!9415)))

(declare-fun b!3026863 () Bool)

(assert (=> b!3026863 (= e!1898720 lt!1045469)))

(declare-fun b!3026864 () Bool)

(assert (=> b!3026864 (= e!1898710 (= (nullable!3067 lt!1045470) (nullable!3067 (regOne!19342 r!17423))))))

(declare-fun b!3026865 () Bool)

(assert (=> b!3026865 (= e!1898711 (Union!9415 lt!1045472 lt!1045467))))

(declare-fun bm!205780 () Bool)

(assert (=> bm!205780 (= call!205784 (isEmptyExpr!498 (ite c!499816 lt!1045471 lt!1045469)))))

(declare-fun b!3026866 () Bool)

(assert (=> b!3026866 (= e!1898717 call!205784)))

(declare-fun b!3026867 () Bool)

(declare-fun e!1898716 () Regex!9415)

(assert (=> b!3026867 (= e!1898716 (regOne!19342 r!17423))))

(declare-fun bm!205781 () Bool)

(assert (=> bm!205781 (= call!205788 (isEmptyLang!492 (ite c!499816 lt!1045471 (ite c!499813 lt!1045472 lt!1045468))))))

(declare-fun b!3026868 () Bool)

(assert (=> b!3026868 (= c!499813 ((_ is Union!9415) (regOne!19342 r!17423)))))

(assert (=> b!3026868 (= e!1898715 e!1898722)))

(declare-fun b!3026869 () Bool)

(assert (=> b!3026869 (= e!1898722 e!1898719)))

(assert (=> b!3026869 (= lt!1045468 call!205785)))

(assert (=> b!3026869 (= lt!1045469 call!205786)))

(declare-fun res!1245645 () Bool)

(assert (=> b!3026869 (= res!1245645 call!205783)))

(declare-fun e!1898713 () Bool)

(assert (=> b!3026869 (=> res!1245645 e!1898713)))

(declare-fun c!499818 () Bool)

(assert (=> b!3026869 (= c!499818 e!1898713)))

(declare-fun b!3026870 () Bool)

(assert (=> b!3026870 (= e!1898712 e!1898716)))

(declare-fun c!499819 () Bool)

(assert (=> b!3026870 (= c!499819 ((_ is ElementMatch!9415) (regOne!19342 r!17423)))))

(declare-fun bm!205782 () Bool)

(assert (=> bm!205782 (= call!205783 call!205788)))

(declare-fun b!3026871 () Bool)

(assert (=> b!3026871 (= e!1898718 e!1898715)))

(assert (=> b!3026871 (= c!499816 ((_ is Star!9415) (regOne!19342 r!17423)))))

(declare-fun b!3026872 () Bool)

(assert (=> b!3026872 (= e!1898709 (Concat!14736 lt!1045468 lt!1045469))))

(declare-fun b!3026873 () Bool)

(assert (=> b!3026873 (= e!1898714 (Star!9415 lt!1045471))))

(declare-fun bm!205783 () Bool)

(assert (=> bm!205783 (= call!205785 (simplify!394 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))))))

(declare-fun b!3026874 () Bool)

(assert (=> b!3026874 (= e!1898712 EmptyLang!9415)))

(declare-fun b!3026875 () Bool)

(declare-fun c!499823 () Bool)

(assert (=> b!3026875 (= c!499823 ((_ is EmptyExpr!9415) (regOne!19342 r!17423)))))

(assert (=> b!3026875 (= e!1898716 e!1898718)))

(declare-fun b!3026876 () Bool)

(assert (=> b!3026876 (= e!1898714 EmptyExpr!9415)))

(declare-fun b!3026877 () Bool)

(assert (=> b!3026877 (= e!1898713 call!205787)))

(assert (= (and d!850431 c!499820) b!3026874))

(assert (= (and d!850431 (not c!499820)) b!3026870))

(assert (= (and b!3026870 c!499819) b!3026867))

(assert (= (and b!3026870 (not c!499819)) b!3026875))

(assert (= (and b!3026875 c!499823) b!3026862))

(assert (= (and b!3026875 (not c!499823)) b!3026871))

(assert (= (and b!3026871 c!499816) b!3026854))

(assert (= (and b!3026871 (not c!499816)) b!3026868))

(assert (= (and b!3026854 (not res!1245643)) b!3026866))

(assert (= (and b!3026854 c!499814) b!3026876))

(assert (= (and b!3026854 (not c!499814)) b!3026873))

(assert (= (and b!3026868 c!499813) b!3026857))

(assert (= (and b!3026868 (not c!499813)) b!3026869))

(assert (= (and b!3026857 c!499822) b!3026853))

(assert (= (and b!3026857 (not c!499822)) b!3026859))

(assert (= (and b!3026859 c!499817) b!3026855))

(assert (= (and b!3026859 (not c!499817)) b!3026865))

(assert (= (and b!3026869 (not res!1245645)) b!3026877))

(assert (= (and b!3026869 c!499818) b!3026860))

(assert (= (and b!3026869 (not c!499818)) b!3026858))

(assert (= (and b!3026858 c!499821) b!3026863))

(assert (= (and b!3026858 (not c!499821)) b!3026856))

(assert (= (and b!3026856 c!499815) b!3026861))

(assert (= (and b!3026856 (not c!499815)) b!3026872))

(assert (= (or b!3026857 b!3026869) bm!205779))

(assert (= (or b!3026857 b!3026869) bm!205783))

(assert (= (or b!3026857 b!3026869) bm!205782))

(assert (= (or b!3026859 b!3026877) bm!205777))

(assert (= (or b!3026866 b!3026856) bm!205780))

(assert (= (or b!3026854 bm!205779) bm!205778))

(assert (= (or b!3026854 bm!205782) bm!205781))

(assert (= (and d!850431 res!1245644) b!3026864))

(declare-fun m!3365769 () Bool)

(assert (=> bm!205780 m!3365769))

(declare-fun m!3365771 () Bool)

(assert (=> d!850431 m!3365771))

(declare-fun m!3365773 () Bool)

(assert (=> d!850431 m!3365773))

(declare-fun m!3365775 () Bool)

(assert (=> bm!205783 m!3365775))

(declare-fun m!3365777 () Bool)

(assert (=> bm!205781 m!3365777))

(declare-fun m!3365779 () Bool)

(assert (=> bm!205777 m!3365779))

(declare-fun m!3365781 () Bool)

(assert (=> b!3026864 m!3365781))

(declare-fun m!3365783 () Bool)

(assert (=> b!3026864 m!3365783))

(declare-fun m!3365785 () Bool)

(assert (=> bm!205778 m!3365785))

(declare-fun m!3365787 () Bool)

(assert (=> b!3026858 m!3365787))

(assert (=> b!3026128 d!850431))

(declare-fun d!850433 () Bool)

(assert (=> d!850433 (= (matchR!4297 (regOne!19342 r!17423) (_1!20188 lt!1045349)) (matchR!4297 (simplify!394 (regOne!19342 r!17423)) (_1!20188 lt!1045349)))))

(declare-fun lt!1045473 () Unit!49253)

(assert (=> d!850433 (= lt!1045473 (choose!17945 (regOne!19342 r!17423) (_1!20188 lt!1045349)))))

(assert (=> d!850433 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850433 (= (lemmaSimplifySound!242 (regOne!19342 r!17423) (_1!20188 lt!1045349)) lt!1045473)))

(declare-fun bs!530645 () Bool)

(assert (= bs!530645 d!850433))

(assert (=> bs!530645 m!3365369))

(assert (=> bs!530645 m!3365409))

(declare-fun m!3365789 () Bool)

(assert (=> bs!530645 m!3365789))

(assert (=> bs!530645 m!3365409))

(declare-fun m!3365791 () Bool)

(assert (=> bs!530645 m!3365791))

(assert (=> bs!530645 m!3365773))

(assert (=> b!3026128 d!850433))

(declare-fun b!3026878 () Bool)

(declare-fun res!1245652 () Bool)

(declare-fun e!1898725 () Bool)

(assert (=> b!3026878 (=> res!1245652 e!1898725)))

(assert (=> b!3026878 (= res!1245652 (not ((_ is ElementMatch!9415) (regTwo!19342 r!17423))))))

(declare-fun e!1898727 () Bool)

(assert (=> b!3026878 (= e!1898727 e!1898725)))

(declare-fun b!3026879 () Bool)

(declare-fun e!1898723 () Bool)

(assert (=> b!3026879 (= e!1898723 e!1898727)))

(declare-fun c!499824 () Bool)

(assert (=> b!3026879 (= c!499824 ((_ is EmptyLang!9415) (regTwo!19342 r!17423)))))

(declare-fun b!3026880 () Bool)

(declare-fun lt!1045474 () Bool)

(assert (=> b!3026880 (= e!1898727 (not lt!1045474))))

(declare-fun b!3026881 () Bool)

(declare-fun res!1245650 () Bool)

(assert (=> b!3026881 (=> res!1245650 e!1898725)))

(declare-fun e!1898729 () Bool)

(assert (=> b!3026881 (= res!1245650 e!1898729)))

(declare-fun res!1245648 () Bool)

(assert (=> b!3026881 (=> (not res!1245648) (not e!1898729))))

(assert (=> b!3026881 (= res!1245648 lt!1045474)))

(declare-fun bm!205784 () Bool)

(declare-fun call!205789 () Bool)

(assert (=> bm!205784 (= call!205789 (isEmpty!19456 (_2!20188 lt!1045349)))))

(declare-fun b!3026882 () Bool)

(declare-fun res!1245646 () Bool)

(assert (=> b!3026882 (=> (not res!1245646) (not e!1898729))))

(assert (=> b!3026882 (= res!1245646 (not call!205789))))

(declare-fun d!850435 () Bool)

(assert (=> d!850435 e!1898723))

(declare-fun c!499825 () Bool)

(assert (=> d!850435 (= c!499825 ((_ is EmptyExpr!9415) (regTwo!19342 r!17423)))))

(declare-fun e!1898726 () Bool)

(assert (=> d!850435 (= lt!1045474 e!1898726)))

(declare-fun c!499826 () Bool)

(assert (=> d!850435 (= c!499826 (isEmpty!19456 (_2!20188 lt!1045349)))))

(assert (=> d!850435 (validRegex!4148 (regTwo!19342 r!17423))))

(assert (=> d!850435 (= (matchR!4297 (regTwo!19342 r!17423) (_2!20188 lt!1045349)) lt!1045474)))

(declare-fun b!3026883 () Bool)

(declare-fun e!1898728 () Bool)

(assert (=> b!3026883 (= e!1898725 e!1898728)))

(declare-fun res!1245649 () Bool)

(assert (=> b!3026883 (=> (not res!1245649) (not e!1898728))))

(assert (=> b!3026883 (= res!1245649 (not lt!1045474))))

(declare-fun b!3026884 () Bool)

(assert (=> b!3026884 (= e!1898726 (matchR!4297 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349))) (tail!4949 (_2!20188 lt!1045349))))))

(declare-fun b!3026885 () Bool)

(declare-fun e!1898724 () Bool)

(assert (=> b!3026885 (= e!1898724 (not (= (head!6723 (_2!20188 lt!1045349)) (c!499613 (regTwo!19342 r!17423)))))))

(declare-fun b!3026886 () Bool)

(assert (=> b!3026886 (= e!1898728 e!1898724)))

(declare-fun res!1245647 () Bool)

(assert (=> b!3026886 (=> res!1245647 e!1898724)))

(assert (=> b!3026886 (= res!1245647 call!205789)))

(declare-fun b!3026887 () Bool)

(declare-fun res!1245653 () Bool)

(assert (=> b!3026887 (=> res!1245653 e!1898724)))

(assert (=> b!3026887 (= res!1245653 (not (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349)))))))

(declare-fun b!3026888 () Bool)

(assert (=> b!3026888 (= e!1898729 (= (head!6723 (_2!20188 lt!1045349)) (c!499613 (regTwo!19342 r!17423))))))

(declare-fun b!3026889 () Bool)

(assert (=> b!3026889 (= e!1898726 (nullable!3067 (regTwo!19342 r!17423)))))

(declare-fun b!3026890 () Bool)

(assert (=> b!3026890 (= e!1898723 (= lt!1045474 call!205789))))

(declare-fun b!3026891 () Bool)

(declare-fun res!1245651 () Bool)

(assert (=> b!3026891 (=> (not res!1245651) (not e!1898729))))

(assert (=> b!3026891 (= res!1245651 (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349))))))

(assert (= (and d!850435 c!499826) b!3026889))

(assert (= (and d!850435 (not c!499826)) b!3026884))

(assert (= (and d!850435 c!499825) b!3026890))

(assert (= (and d!850435 (not c!499825)) b!3026879))

(assert (= (and b!3026879 c!499824) b!3026880))

(assert (= (and b!3026879 (not c!499824)) b!3026878))

(assert (= (and b!3026878 (not res!1245652)) b!3026881))

(assert (= (and b!3026881 res!1245648) b!3026882))

(assert (= (and b!3026882 res!1245646) b!3026891))

(assert (= (and b!3026891 res!1245651) b!3026888))

(assert (= (and b!3026881 (not res!1245650)) b!3026883))

(assert (= (and b!3026883 res!1245649) b!3026886))

(assert (= (and b!3026886 (not res!1245647)) b!3026887))

(assert (= (and b!3026887 (not res!1245653)) b!3026885))

(assert (= (or b!3026890 b!3026882 b!3026886) bm!205784))

(assert (=> b!3026891 m!3365755))

(assert (=> b!3026891 m!3365755))

(assert (=> b!3026891 m!3365757))

(assert (=> b!3026887 m!3365755))

(assert (=> b!3026887 m!3365755))

(assert (=> b!3026887 m!3365757))

(assert (=> b!3026889 m!3365729))

(assert (=> b!3026884 m!3365761))

(assert (=> b!3026884 m!3365761))

(declare-fun m!3365793 () Bool)

(assert (=> b!3026884 m!3365793))

(assert (=> b!3026884 m!3365755))

(assert (=> b!3026884 m!3365793))

(assert (=> b!3026884 m!3365755))

(declare-fun m!3365795 () Bool)

(assert (=> b!3026884 m!3365795))

(assert (=> b!3026888 m!3365761))

(assert (=> b!3026885 m!3365761))

(assert (=> bm!205784 m!3365767))

(assert (=> d!850435 m!3365767))

(assert (=> d!850435 m!3365715))

(assert (=> b!3026133 d!850435))

(declare-fun bm!205785 () Bool)

(declare-fun call!205791 () Bool)

(declare-fun call!205790 () Bool)

(assert (=> bm!205785 (= call!205791 call!205790)))

(declare-fun b!3026893 () Bool)

(declare-fun res!1245656 () Bool)

(declare-fun e!1898736 () Bool)

(assert (=> b!3026893 (=> (not res!1245656) (not e!1898736))))

(assert (=> b!3026893 (= res!1245656 call!205791)))

(declare-fun e!1898734 () Bool)

(assert (=> b!3026893 (= e!1898734 e!1898736)))

(declare-fun b!3026894 () Bool)

(declare-fun call!205792 () Bool)

(assert (=> b!3026894 (= e!1898736 call!205792)))

(declare-fun b!3026895 () Bool)

(declare-fun e!1898730 () Bool)

(declare-fun e!1898732 () Bool)

(assert (=> b!3026895 (= e!1898730 e!1898732)))

(declare-fun c!499827 () Bool)

(assert (=> b!3026895 (= c!499827 ((_ is Star!9415) lt!1045354))))

(declare-fun bm!205786 () Bool)

(declare-fun c!499828 () Bool)

(assert (=> bm!205786 (= call!205790 (validRegex!4148 (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))))))

(declare-fun b!3026896 () Bool)

(declare-fun e!1898733 () Bool)

(declare-fun e!1898731 () Bool)

(assert (=> b!3026896 (= e!1898733 e!1898731)))

(declare-fun res!1245654 () Bool)

(assert (=> b!3026896 (=> (not res!1245654) (not e!1898731))))

(assert (=> b!3026896 (= res!1245654 call!205792)))

(declare-fun b!3026892 () Bool)

(assert (=> b!3026892 (= e!1898731 call!205791)))

(declare-fun d!850437 () Bool)

(declare-fun res!1245658 () Bool)

(assert (=> d!850437 (=> res!1245658 e!1898730)))

(assert (=> d!850437 (= res!1245658 ((_ is ElementMatch!9415) lt!1045354))))

(assert (=> d!850437 (= (validRegex!4148 lt!1045354) e!1898730)))

(declare-fun b!3026897 () Bool)

(assert (=> b!3026897 (= e!1898732 e!1898734)))

(assert (=> b!3026897 (= c!499828 ((_ is Union!9415) lt!1045354))))

(declare-fun b!3026898 () Bool)

(declare-fun e!1898735 () Bool)

(assert (=> b!3026898 (= e!1898735 call!205790)))

(declare-fun bm!205787 () Bool)

(assert (=> bm!205787 (= call!205792 (validRegex!4148 (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))))))

(declare-fun b!3026899 () Bool)

(declare-fun res!1245655 () Bool)

(assert (=> b!3026899 (=> res!1245655 e!1898733)))

(assert (=> b!3026899 (= res!1245655 (not ((_ is Concat!14736) lt!1045354)))))

(assert (=> b!3026899 (= e!1898734 e!1898733)))

(declare-fun b!3026900 () Bool)

(assert (=> b!3026900 (= e!1898732 e!1898735)))

(declare-fun res!1245657 () Bool)

(assert (=> b!3026900 (= res!1245657 (not (nullable!3067 (reg!9744 lt!1045354))))))

(assert (=> b!3026900 (=> (not res!1245657) (not e!1898735))))

(assert (= (and d!850437 (not res!1245658)) b!3026895))

(assert (= (and b!3026895 c!499827) b!3026900))

(assert (= (and b!3026895 (not c!499827)) b!3026897))

(assert (= (and b!3026900 res!1245657) b!3026898))

(assert (= (and b!3026897 c!499828) b!3026893))

(assert (= (and b!3026897 (not c!499828)) b!3026899))

(assert (= (and b!3026893 res!1245656) b!3026894))

(assert (= (and b!3026899 (not res!1245655)) b!3026896))

(assert (= (and b!3026896 res!1245654) b!3026892))

(assert (= (or b!3026893 b!3026892) bm!205785))

(assert (= (or b!3026894 b!3026896) bm!205787))

(assert (= (or b!3026898 bm!205785) bm!205786))

(declare-fun m!3365797 () Bool)

(assert (=> bm!205786 m!3365797))

(declare-fun m!3365799 () Bool)

(assert (=> bm!205787 m!3365799))

(declare-fun m!3365801 () Bool)

(assert (=> b!3026900 m!3365801))

(assert (=> b!3026134 d!850437))

(declare-fun d!850439 () Bool)

(assert (=> d!850439 (= (isEmpty!19456 s!11993) ((_ is Nil!35156) s!11993))))

(assert (=> b!3026130 d!850439))

(declare-fun d!850441 () Bool)

(assert (=> d!850441 (= (get!10962 lt!1045346) (v!34921 lt!1045346))))

(assert (=> b!3026135 d!850441))

(declare-fun d!850443 () Bool)

(declare-fun choose!17951 (Int) Bool)

(assert (=> d!850443 (= (Exists!1683 lambda!113073) (choose!17951 lambda!113073))))

(declare-fun bs!530646 () Bool)

(assert (= bs!530646 d!850443))

(declare-fun m!3365803 () Bool)

(assert (=> bs!530646 m!3365803))

(assert (=> b!3026135 d!850443))

(declare-fun b!3026901 () Bool)

(declare-fun res!1245665 () Bool)

(declare-fun e!1898739 () Bool)

(assert (=> b!3026901 (=> res!1245665 e!1898739)))

(assert (=> b!3026901 (= res!1245665 (not ((_ is ElementMatch!9415) (regOne!19342 r!17423))))))

(declare-fun e!1898741 () Bool)

(assert (=> b!3026901 (= e!1898741 e!1898739)))

(declare-fun b!3026902 () Bool)

(declare-fun e!1898737 () Bool)

(assert (=> b!3026902 (= e!1898737 e!1898741)))

(declare-fun c!499829 () Bool)

(assert (=> b!3026902 (= c!499829 ((_ is EmptyLang!9415) (regOne!19342 r!17423)))))

(declare-fun b!3026903 () Bool)

(declare-fun lt!1045475 () Bool)

(assert (=> b!3026903 (= e!1898741 (not lt!1045475))))

(declare-fun b!3026904 () Bool)

(declare-fun res!1245663 () Bool)

(assert (=> b!3026904 (=> res!1245663 e!1898739)))

(declare-fun e!1898743 () Bool)

(assert (=> b!3026904 (= res!1245663 e!1898743)))

(declare-fun res!1245661 () Bool)

(assert (=> b!3026904 (=> (not res!1245661) (not e!1898743))))

(assert (=> b!3026904 (= res!1245661 lt!1045475)))

(declare-fun bm!205788 () Bool)

(declare-fun call!205793 () Bool)

(assert (=> bm!205788 (= call!205793 (isEmpty!19456 (_1!20188 lt!1045349)))))

(declare-fun b!3026905 () Bool)

(declare-fun res!1245659 () Bool)

(assert (=> b!3026905 (=> (not res!1245659) (not e!1898743))))

(assert (=> b!3026905 (= res!1245659 (not call!205793))))

(declare-fun d!850445 () Bool)

(assert (=> d!850445 e!1898737))

(declare-fun c!499830 () Bool)

(assert (=> d!850445 (= c!499830 ((_ is EmptyExpr!9415) (regOne!19342 r!17423)))))

(declare-fun e!1898740 () Bool)

(assert (=> d!850445 (= lt!1045475 e!1898740)))

(declare-fun c!499831 () Bool)

(assert (=> d!850445 (= c!499831 (isEmpty!19456 (_1!20188 lt!1045349)))))

(assert (=> d!850445 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850445 (= (matchR!4297 (regOne!19342 r!17423) (_1!20188 lt!1045349)) lt!1045475)))

(declare-fun b!3026906 () Bool)

(declare-fun e!1898742 () Bool)

(assert (=> b!3026906 (= e!1898739 e!1898742)))

(declare-fun res!1245662 () Bool)

(assert (=> b!3026906 (=> (not res!1245662) (not e!1898742))))

(assert (=> b!3026906 (= res!1245662 (not lt!1045475))))

(declare-fun b!3026907 () Bool)

(assert (=> b!3026907 (= e!1898740 (matchR!4297 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349))) (tail!4949 (_1!20188 lt!1045349))))))

(declare-fun b!3026908 () Bool)

(declare-fun e!1898738 () Bool)

(assert (=> b!3026908 (= e!1898738 (not (= (head!6723 (_1!20188 lt!1045349)) (c!499613 (regOne!19342 r!17423)))))))

(declare-fun b!3026909 () Bool)

(assert (=> b!3026909 (= e!1898742 e!1898738)))

(declare-fun res!1245660 () Bool)

(assert (=> b!3026909 (=> res!1245660 e!1898738)))

(assert (=> b!3026909 (= res!1245660 call!205793)))

(declare-fun b!3026910 () Bool)

(declare-fun res!1245666 () Bool)

(assert (=> b!3026910 (=> res!1245666 e!1898738)))

(assert (=> b!3026910 (= res!1245666 (not (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349)))))))

(declare-fun b!3026911 () Bool)

(assert (=> b!3026911 (= e!1898743 (= (head!6723 (_1!20188 lt!1045349)) (c!499613 (regOne!19342 r!17423))))))

(declare-fun b!3026912 () Bool)

(assert (=> b!3026912 (= e!1898740 (nullable!3067 (regOne!19342 r!17423)))))

(declare-fun b!3026913 () Bool)

(assert (=> b!3026913 (= e!1898737 (= lt!1045475 call!205793))))

(declare-fun b!3026914 () Bool)

(declare-fun res!1245664 () Bool)

(assert (=> b!3026914 (=> (not res!1245664) (not e!1898743))))

(assert (=> b!3026914 (= res!1245664 (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349))))))

(assert (= (and d!850445 c!499831) b!3026912))

(assert (= (and d!850445 (not c!499831)) b!3026907))

(assert (= (and d!850445 c!499830) b!3026913))

(assert (= (and d!850445 (not c!499830)) b!3026902))

(assert (= (and b!3026902 c!499829) b!3026903))

(assert (= (and b!3026902 (not c!499829)) b!3026901))

(assert (= (and b!3026901 (not res!1245665)) b!3026904))

(assert (= (and b!3026904 res!1245661) b!3026905))

(assert (= (and b!3026905 res!1245659) b!3026914))

(assert (= (and b!3026914 res!1245664) b!3026911))

(assert (= (and b!3026904 (not res!1245663)) b!3026906))

(assert (= (and b!3026906 res!1245662) b!3026909))

(assert (= (and b!3026909 (not res!1245660)) b!3026910))

(assert (= (and b!3026910 (not res!1245666)) b!3026908))

(assert (= (or b!3026913 b!3026905 b!3026909) bm!205788))

(assert (=> b!3026914 m!3365735))

(assert (=> b!3026914 m!3365735))

(assert (=> b!3026914 m!3365737))

(assert (=> b!3026910 m!3365735))

(assert (=> b!3026910 m!3365735))

(assert (=> b!3026910 m!3365737))

(assert (=> b!3026912 m!3365783))

(assert (=> b!3026907 m!3365741))

(assert (=> b!3026907 m!3365741))

(declare-fun m!3365805 () Bool)

(assert (=> b!3026907 m!3365805))

(assert (=> b!3026907 m!3365735))

(assert (=> b!3026907 m!3365805))

(assert (=> b!3026907 m!3365735))

(declare-fun m!3365807 () Bool)

(assert (=> b!3026907 m!3365807))

(assert (=> b!3026911 m!3365741))

(assert (=> b!3026908 m!3365741))

(assert (=> bm!205788 m!3365747))

(assert (=> d!850445 m!3365747))

(assert (=> d!850445 m!3365773))

(assert (=> b!3026135 d!850445))

(declare-fun bs!530647 () Bool)

(declare-fun d!850447 () Bool)

(assert (= bs!530647 (and d!850447 b!3026135)))

(declare-fun lambda!113100 () Int)

(assert (=> bs!530647 (= lambda!113100 lambda!113073)))

(assert (=> bs!530647 (not (= lambda!113100 lambda!113074))))

(declare-fun bs!530648 () Bool)

(assert (= bs!530648 (and d!850447 b!3026703)))

(assert (=> bs!530648 (not (= lambda!113100 lambda!113093))))

(declare-fun bs!530649 () Bool)

(assert (= bs!530649 (and d!850447 b!3026699)))

(assert (=> bs!530649 (not (= lambda!113100 lambda!113095))))

(assert (=> d!850447 true))

(assert (=> d!850447 true))

(assert (=> d!850447 true))

(declare-fun lambda!113101 () Int)

(assert (=> bs!530648 (not (= lambda!113101 lambda!113093))))

(assert (=> bs!530647 (= lambda!113101 lambda!113074)))

(assert (=> bs!530647 (not (= lambda!113101 lambda!113073))))

(declare-fun bs!530650 () Bool)

(assert (= bs!530650 d!850447))

(assert (=> bs!530650 (not (= lambda!113101 lambda!113100))))

(assert (=> bs!530649 (= lambda!113101 lambda!113095)))

(assert (=> d!850447 true))

(assert (=> d!850447 true))

(assert (=> d!850447 true))

(assert (=> d!850447 (= (Exists!1683 lambda!113100) (Exists!1683 lambda!113101))))

(declare-fun lt!1045478 () Unit!49253)

(declare-fun choose!17952 (Regex!9415 Regex!9415 List!35280) Unit!49253)

(assert (=> d!850447 (= lt!1045478 (choose!17952 (regOne!19342 r!17423) (regTwo!19342 r!17423) s!11993))))

(assert (=> d!850447 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850447 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!556 (regOne!19342 r!17423) (regTwo!19342 r!17423) s!11993) lt!1045478)))

(declare-fun m!3365809 () Bool)

(assert (=> bs!530650 m!3365809))

(declare-fun m!3365811 () Bool)

(assert (=> bs!530650 m!3365811))

(declare-fun m!3365813 () Bool)

(assert (=> bs!530650 m!3365813))

(assert (=> bs!530650 m!3365773))

(assert (=> b!3026135 d!850447))

(declare-fun b!3026941 () Bool)

(declare-fun lt!1045485 () Unit!49253)

(declare-fun lt!1045487 () Unit!49253)

(assert (=> b!3026941 (= lt!1045485 lt!1045487)))

(assert (=> b!3026941 (= (++!8434 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (t!234345 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1041 (List!35280 C!19016 List!35280 List!35280) Unit!49253)

(assert (=> b!3026941 (= lt!1045487 (lemmaMoveElementToOtherListKeepsConcatEq!1041 Nil!35156 (h!40576 s!11993) (t!234345 s!11993) s!11993))))

(declare-fun e!1898759 () Option!6788)

(assert (=> b!3026941 (= e!1898759 (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (t!234345 s!11993) s!11993))))

(declare-fun b!3026942 () Bool)

(declare-fun res!1245685 () Bool)

(declare-fun e!1898761 () Bool)

(assert (=> b!3026942 (=> (not res!1245685) (not e!1898761))))

(declare-fun lt!1045486 () Option!6788)

(assert (=> b!3026942 (= res!1245685 (matchR!4297 (regTwo!19342 r!17423) (_2!20188 (get!10962 lt!1045486))))))

(declare-fun b!3026943 () Bool)

(declare-fun e!1898760 () Option!6788)

(assert (=> b!3026943 (= e!1898760 e!1898759)))

(declare-fun c!499836 () Bool)

(assert (=> b!3026943 (= c!499836 ((_ is Nil!35156) s!11993))))

(declare-fun b!3026944 () Bool)

(declare-fun res!1245689 () Bool)

(assert (=> b!3026944 (=> (not res!1245689) (not e!1898761))))

(assert (=> b!3026944 (= res!1245689 (matchR!4297 (regOne!19342 r!17423) (_1!20188 (get!10962 lt!1045486))))))

(declare-fun b!3026945 () Bool)

(assert (=> b!3026945 (= e!1898760 (Some!6787 (tuple2!34113 Nil!35156 s!11993)))))

(declare-fun b!3026946 () Bool)

(declare-fun e!1898758 () Bool)

(assert (=> b!3026946 (= e!1898758 (matchR!4297 (regTwo!19342 r!17423) s!11993))))

(declare-fun b!3026947 () Bool)

(declare-fun e!1898762 () Bool)

(assert (=> b!3026947 (= e!1898762 (not (isDefined!5339 lt!1045486)))))

(declare-fun b!3026948 () Bool)

(assert (=> b!3026948 (= e!1898759 None!6787)))

(declare-fun d!850449 () Bool)

(assert (=> d!850449 e!1898762))

(declare-fun res!1245686 () Bool)

(assert (=> d!850449 (=> res!1245686 e!1898762)))

(assert (=> d!850449 (= res!1245686 e!1898761)))

(declare-fun res!1245688 () Bool)

(assert (=> d!850449 (=> (not res!1245688) (not e!1898761))))

(assert (=> d!850449 (= res!1245688 (isDefined!5339 lt!1045486))))

(assert (=> d!850449 (= lt!1045486 e!1898760)))

(declare-fun c!499837 () Bool)

(assert (=> d!850449 (= c!499837 e!1898758)))

(declare-fun res!1245687 () Bool)

(assert (=> d!850449 (=> (not res!1245687) (not e!1898758))))

(assert (=> d!850449 (= res!1245687 (matchR!4297 (regOne!19342 r!17423) Nil!35156))))

(assert (=> d!850449 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850449 (= (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) Nil!35156 s!11993 s!11993) lt!1045486)))

(declare-fun b!3026949 () Bool)

(assert (=> b!3026949 (= e!1898761 (= (++!8434 (_1!20188 (get!10962 lt!1045486)) (_2!20188 (get!10962 lt!1045486))) s!11993))))

(assert (= (and d!850449 res!1245687) b!3026946))

(assert (= (and d!850449 c!499837) b!3026945))

(assert (= (and d!850449 (not c!499837)) b!3026943))

(assert (= (and b!3026943 c!499836) b!3026948))

(assert (= (and b!3026943 (not c!499836)) b!3026941))

(assert (= (and d!850449 res!1245688) b!3026944))

(assert (= (and b!3026944 res!1245689) b!3026942))

(assert (= (and b!3026942 res!1245685) b!3026949))

(assert (= (and d!850449 (not res!1245686)) b!3026947))

(declare-fun m!3365815 () Bool)

(assert (=> b!3026944 m!3365815))

(declare-fun m!3365817 () Bool)

(assert (=> b!3026944 m!3365817))

(declare-fun m!3365819 () Bool)

(assert (=> b!3026947 m!3365819))

(assert (=> b!3026942 m!3365815))

(declare-fun m!3365821 () Bool)

(assert (=> b!3026942 m!3365821))

(declare-fun m!3365823 () Bool)

(assert (=> b!3026946 m!3365823))

(assert (=> d!850449 m!3365819))

(declare-fun m!3365825 () Bool)

(assert (=> d!850449 m!3365825))

(assert (=> d!850449 m!3365773))

(assert (=> b!3026949 m!3365815))

(declare-fun m!3365827 () Bool)

(assert (=> b!3026949 m!3365827))

(declare-fun m!3365829 () Bool)

(assert (=> b!3026941 m!3365829))

(assert (=> b!3026941 m!3365829))

(declare-fun m!3365831 () Bool)

(assert (=> b!3026941 m!3365831))

(declare-fun m!3365833 () Bool)

(assert (=> b!3026941 m!3365833))

(assert (=> b!3026941 m!3365829))

(declare-fun m!3365835 () Bool)

(assert (=> b!3026941 m!3365835))

(assert (=> b!3026135 d!850449))

(declare-fun bs!530651 () Bool)

(declare-fun d!850451 () Bool)

(assert (= bs!530651 (and d!850451 b!3026703)))

(declare-fun lambda!113104 () Int)

(assert (=> bs!530651 (not (= lambda!113104 lambda!113093))))

(declare-fun bs!530652 () Bool)

(assert (= bs!530652 (and d!850451 b!3026135)))

(assert (=> bs!530652 (not (= lambda!113104 lambda!113074))))

(declare-fun bs!530653 () Bool)

(assert (= bs!530653 (and d!850451 d!850447)))

(assert (=> bs!530653 (= lambda!113104 lambda!113100)))

(declare-fun bs!530654 () Bool)

(assert (= bs!530654 (and d!850451 b!3026699)))

(assert (=> bs!530654 (not (= lambda!113104 lambda!113095))))

(assert (=> bs!530652 (= lambda!113104 lambda!113073)))

(assert (=> bs!530653 (not (= lambda!113104 lambda!113101))))

(assert (=> d!850451 true))

(assert (=> d!850451 true))

(assert (=> d!850451 true))

(assert (=> d!850451 (= (isDefined!5339 (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) Nil!35156 s!11993 s!11993)) (Exists!1683 lambda!113104))))

(declare-fun lt!1045490 () Unit!49253)

(declare-fun choose!17953 (Regex!9415 Regex!9415 List!35280) Unit!49253)

(assert (=> d!850451 (= lt!1045490 (choose!17953 (regOne!19342 r!17423) (regTwo!19342 r!17423) s!11993))))

(assert (=> d!850451 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850451 (= (lemmaFindConcatSeparationEquivalentToExists!960 (regOne!19342 r!17423) (regTwo!19342 r!17423) s!11993) lt!1045490)))

(declare-fun bs!530655 () Bool)

(assert (= bs!530655 d!850451))

(declare-fun m!3365837 () Bool)

(assert (=> bs!530655 m!3365837))

(assert (=> bs!530655 m!3365367))

(assert (=> bs!530655 m!3365367))

(declare-fun m!3365839 () Bool)

(assert (=> bs!530655 m!3365839))

(declare-fun m!3365841 () Bool)

(assert (=> bs!530655 m!3365841))

(assert (=> bs!530655 m!3365773))

(assert (=> b!3026135 d!850451))

(declare-fun d!850453 () Bool)

(assert (=> d!850453 (= (Exists!1683 lambda!113074) (choose!17951 lambda!113074))))

(declare-fun bs!530656 () Bool)

(assert (= bs!530656 d!850453))

(declare-fun m!3365843 () Bool)

(assert (=> bs!530656 m!3365843))

(assert (=> b!3026135 d!850453))

(declare-fun d!850455 () Bool)

(declare-fun isEmpty!19458 (Option!6788) Bool)

(assert (=> d!850455 (= (isDefined!5339 lt!1045346) (not (isEmpty!19458 lt!1045346)))))

(declare-fun bs!530657 () Bool)

(assert (= bs!530657 d!850455))

(declare-fun m!3365845 () Bool)

(assert (=> bs!530657 m!3365845))

(assert (=> b!3026135 d!850455))

(declare-fun bm!205789 () Bool)

(declare-fun call!205795 () Bool)

(declare-fun call!205794 () Bool)

(assert (=> bm!205789 (= call!205795 call!205794)))

(declare-fun b!3026955 () Bool)

(declare-fun res!1245696 () Bool)

(declare-fun e!1898771 () Bool)

(assert (=> b!3026955 (=> (not res!1245696) (not e!1898771))))

(assert (=> b!3026955 (= res!1245696 call!205795)))

(declare-fun e!1898769 () Bool)

(assert (=> b!3026955 (= e!1898769 e!1898771)))

(declare-fun b!3026956 () Bool)

(declare-fun call!205796 () Bool)

(assert (=> b!3026956 (= e!1898771 call!205796)))

(declare-fun b!3026957 () Bool)

(declare-fun e!1898765 () Bool)

(declare-fun e!1898767 () Bool)

(assert (=> b!3026957 (= e!1898765 e!1898767)))

(declare-fun c!499838 () Bool)

(assert (=> b!3026957 (= c!499838 ((_ is Star!9415) r!17423))))

(declare-fun bm!205790 () Bool)

(declare-fun c!499839 () Bool)

(assert (=> bm!205790 (= call!205794 (validRegex!4148 (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(declare-fun b!3026958 () Bool)

(declare-fun e!1898768 () Bool)

(declare-fun e!1898766 () Bool)

(assert (=> b!3026958 (= e!1898768 e!1898766)))

(declare-fun res!1245694 () Bool)

(assert (=> b!3026958 (=> (not res!1245694) (not e!1898766))))

(assert (=> b!3026958 (= res!1245694 call!205796)))

(declare-fun b!3026954 () Bool)

(assert (=> b!3026954 (= e!1898766 call!205795)))

(declare-fun d!850457 () Bool)

(declare-fun res!1245698 () Bool)

(assert (=> d!850457 (=> res!1245698 e!1898765)))

(assert (=> d!850457 (= res!1245698 ((_ is ElementMatch!9415) r!17423))))

(assert (=> d!850457 (= (validRegex!4148 r!17423) e!1898765)))

(declare-fun b!3026959 () Bool)

(assert (=> b!3026959 (= e!1898767 e!1898769)))

(assert (=> b!3026959 (= c!499839 ((_ is Union!9415) r!17423))))

(declare-fun b!3026960 () Bool)

(declare-fun e!1898770 () Bool)

(assert (=> b!3026960 (= e!1898770 call!205794)))

(declare-fun bm!205791 () Bool)

(assert (=> bm!205791 (= call!205796 (validRegex!4148 (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(declare-fun b!3026961 () Bool)

(declare-fun res!1245695 () Bool)

(assert (=> b!3026961 (=> res!1245695 e!1898768)))

(assert (=> b!3026961 (= res!1245695 (not ((_ is Concat!14736) r!17423)))))

(assert (=> b!3026961 (= e!1898769 e!1898768)))

(declare-fun b!3026962 () Bool)

(assert (=> b!3026962 (= e!1898767 e!1898770)))

(declare-fun res!1245697 () Bool)

(assert (=> b!3026962 (= res!1245697 (not (nullable!3067 (reg!9744 r!17423))))))

(assert (=> b!3026962 (=> (not res!1245697) (not e!1898770))))

(assert (= (and d!850457 (not res!1245698)) b!3026957))

(assert (= (and b!3026957 c!499838) b!3026962))

(assert (= (and b!3026957 (not c!499838)) b!3026959))

(assert (= (and b!3026962 res!1245697) b!3026960))

(assert (= (and b!3026959 c!499839) b!3026955))

(assert (= (and b!3026959 (not c!499839)) b!3026961))

(assert (= (and b!3026955 res!1245696) b!3026956))

(assert (= (and b!3026961 (not res!1245695)) b!3026958))

(assert (= (and b!3026958 res!1245694) b!3026954))

(assert (= (or b!3026955 b!3026954) bm!205789))

(assert (= (or b!3026956 b!3026958) bm!205791))

(assert (= (or b!3026960 bm!205789) bm!205790))

(declare-fun m!3365847 () Bool)

(assert (=> bm!205790 m!3365847))

(declare-fun m!3365849 () Bool)

(assert (=> bm!205791 m!3365849))

(declare-fun m!3365851 () Bool)

(assert (=> b!3026962 m!3365851))

(assert (=> start!290548 d!850457))

(declare-fun b!3026967 () Bool)

(declare-fun e!1898774 () Bool)

(declare-fun tp!959802 () Bool)

(assert (=> b!3026967 (= e!1898774 (and tp_is_empty!16393 tp!959802))))

(assert (=> b!3026126 (= tp!959759 e!1898774)))

(assert (= (and b!3026126 ((_ is Cons!35156) (t!234345 s!11993))) b!3026967))

(declare-fun b!3026980 () Bool)

(declare-fun e!1898777 () Bool)

(declare-fun tp!959814 () Bool)

(assert (=> b!3026980 (= e!1898777 tp!959814)))

(declare-fun b!3026981 () Bool)

(declare-fun tp!959816 () Bool)

(declare-fun tp!959817 () Bool)

(assert (=> b!3026981 (= e!1898777 (and tp!959816 tp!959817))))

(declare-fun b!3026978 () Bool)

(assert (=> b!3026978 (= e!1898777 tp_is_empty!16393)))

(declare-fun b!3026979 () Bool)

(declare-fun tp!959813 () Bool)

(declare-fun tp!959815 () Bool)

(assert (=> b!3026979 (= e!1898777 (and tp!959813 tp!959815))))

(assert (=> b!3026132 (= tp!959761 e!1898777)))

(assert (= (and b!3026132 ((_ is ElementMatch!9415) (reg!9744 r!17423))) b!3026978))

(assert (= (and b!3026132 ((_ is Concat!14736) (reg!9744 r!17423))) b!3026979))

(assert (= (and b!3026132 ((_ is Star!9415) (reg!9744 r!17423))) b!3026980))

(assert (= (and b!3026132 ((_ is Union!9415) (reg!9744 r!17423))) b!3026981))

(declare-fun b!3026984 () Bool)

(declare-fun e!1898778 () Bool)

(declare-fun tp!959819 () Bool)

(assert (=> b!3026984 (= e!1898778 tp!959819)))

(declare-fun b!3026985 () Bool)

(declare-fun tp!959821 () Bool)

(declare-fun tp!959822 () Bool)

(assert (=> b!3026985 (= e!1898778 (and tp!959821 tp!959822))))

(declare-fun b!3026982 () Bool)

(assert (=> b!3026982 (= e!1898778 tp_is_empty!16393)))

(declare-fun b!3026983 () Bool)

(declare-fun tp!959818 () Bool)

(declare-fun tp!959820 () Bool)

(assert (=> b!3026983 (= e!1898778 (and tp!959818 tp!959820))))

(assert (=> b!3026137 (= tp!959760 e!1898778)))

(assert (= (and b!3026137 ((_ is ElementMatch!9415) (regOne!19343 r!17423))) b!3026982))

(assert (= (and b!3026137 ((_ is Concat!14736) (regOne!19343 r!17423))) b!3026983))

(assert (= (and b!3026137 ((_ is Star!9415) (regOne!19343 r!17423))) b!3026984))

(assert (= (and b!3026137 ((_ is Union!9415) (regOne!19343 r!17423))) b!3026985))

(declare-fun b!3026988 () Bool)

(declare-fun e!1898779 () Bool)

(declare-fun tp!959824 () Bool)

(assert (=> b!3026988 (= e!1898779 tp!959824)))

(declare-fun b!3026989 () Bool)

(declare-fun tp!959826 () Bool)

(declare-fun tp!959827 () Bool)

(assert (=> b!3026989 (= e!1898779 (and tp!959826 tp!959827))))

(declare-fun b!3026986 () Bool)

(assert (=> b!3026986 (= e!1898779 tp_is_empty!16393)))

(declare-fun b!3026987 () Bool)

(declare-fun tp!959823 () Bool)

(declare-fun tp!959825 () Bool)

(assert (=> b!3026987 (= e!1898779 (and tp!959823 tp!959825))))

(assert (=> b!3026137 (= tp!959757 e!1898779)))

(assert (= (and b!3026137 ((_ is ElementMatch!9415) (regTwo!19343 r!17423))) b!3026986))

(assert (= (and b!3026137 ((_ is Concat!14736) (regTwo!19343 r!17423))) b!3026987))

(assert (= (and b!3026137 ((_ is Star!9415) (regTwo!19343 r!17423))) b!3026988))

(assert (= (and b!3026137 ((_ is Union!9415) (regTwo!19343 r!17423))) b!3026989))

(declare-fun b!3026992 () Bool)

(declare-fun e!1898780 () Bool)

(declare-fun tp!959829 () Bool)

(assert (=> b!3026992 (= e!1898780 tp!959829)))

(declare-fun b!3026993 () Bool)

(declare-fun tp!959831 () Bool)

(declare-fun tp!959832 () Bool)

(assert (=> b!3026993 (= e!1898780 (and tp!959831 tp!959832))))

(declare-fun b!3026990 () Bool)

(assert (=> b!3026990 (= e!1898780 tp_is_empty!16393)))

(declare-fun b!3026991 () Bool)

(declare-fun tp!959828 () Bool)

(declare-fun tp!959830 () Bool)

(assert (=> b!3026991 (= e!1898780 (and tp!959828 tp!959830))))

(assert (=> b!3026129 (= tp!959756 e!1898780)))

(assert (= (and b!3026129 ((_ is ElementMatch!9415) (regOne!19342 r!17423))) b!3026990))

(assert (= (and b!3026129 ((_ is Concat!14736) (regOne!19342 r!17423))) b!3026991))

(assert (= (and b!3026129 ((_ is Star!9415) (regOne!19342 r!17423))) b!3026992))

(assert (= (and b!3026129 ((_ is Union!9415) (regOne!19342 r!17423))) b!3026993))

(declare-fun b!3026996 () Bool)

(declare-fun e!1898781 () Bool)

(declare-fun tp!959834 () Bool)

(assert (=> b!3026996 (= e!1898781 tp!959834)))

(declare-fun b!3026997 () Bool)

(declare-fun tp!959836 () Bool)

(declare-fun tp!959837 () Bool)

(assert (=> b!3026997 (= e!1898781 (and tp!959836 tp!959837))))

(declare-fun b!3026994 () Bool)

(assert (=> b!3026994 (= e!1898781 tp_is_empty!16393)))

(declare-fun b!3026995 () Bool)

(declare-fun tp!959833 () Bool)

(declare-fun tp!959835 () Bool)

(assert (=> b!3026995 (= e!1898781 (and tp!959833 tp!959835))))

(assert (=> b!3026129 (= tp!959758 e!1898781)))

(assert (= (and b!3026129 ((_ is ElementMatch!9415) (regTwo!19342 r!17423))) b!3026994))

(assert (= (and b!3026129 ((_ is Concat!14736) (regTwo!19342 r!17423))) b!3026995))

(assert (= (and b!3026129 ((_ is Star!9415) (regTwo!19342 r!17423))) b!3026996))

(assert (= (and b!3026129 ((_ is Union!9415) (regTwo!19342 r!17423))) b!3026997))

(check-sat (not d!850433) (not b!3026967) (not bm!205744) (not bm!205790) (not b!3026996) (not b!3026988) (not b!3026258) (not bm!205766) (not d!850431) (not b!3026884) (not b!3026992) (not bm!205687) (not d!850363) (not b!3026256) (not b!3026737) (not bm!205759) (not b!3026808) (not d!850421) (not b!3026981) (not bm!205765) (not b!3026733) (not bm!205760) (not bm!205755) (not d!850419) (not b!3026991) (not bm!205743) (not b!3026942) (not b!3026784) (not bm!205784) (not b!3026889) (not b!3026850) (not b!3026864) (not b!3026947) (not b!3026615) (not b!3026321) (not d!850443) (not bm!205776) (not d!850423) (not b!3026997) (not b!3026805) (not d!850435) (not bm!205737) (not bm!205741) (not b!3026891) (not b!3026809) (not b!3026807) (not b!3026941) (not d!850429) (not b!3026730) (not bm!205738) (not d!850455) (not b!3026900) (not bm!205781) (not d!850447) (not b!3026735) (not d!850353) (not b!3026390) (not b!3026734) (not d!850445) (not bm!205783) (not b!3026849) (not b!3026583) (not b!3026910) (not b!3026907) (not b!3026846) (not b!3026577) (not b!3026887) (not b!3026253) (not b!3026984) (not bm!205763) (not b!3026848) (not b!3026989) (not bm!205758) (not b!3026613) (not d!850407) (not d!850415) (not bm!205756) tp_is_empty!16393 (not b!3026980) (not b!3026322) (not bm!205775) (not b!3026612) (not b!3026962) (not b!3026709) (not b!3026616) (not b!3026995) (not d!850453) (not bm!205778) (not b!3026254) (not b!3026852) (not bm!205787) (not b!3026979) (not b!3026987) (not b!3026804) (not bm!205762) (not b!3026838) (not d!850357) (not b!3026911) (not b!3026617) (not b!3026885) (not b!3026260) (not b!3026946) (not b!3026985) (not d!850425) (not bm!205740) (not b!3026983) (not b!3026949) (not b!3026858) (not b!3026993) (not d!850449) (not bm!205786) (not b!3026845) (not d!850451) (not b!3026888) (not b!3026619) (not bm!205774) (not b!3026914) (not b!3026257) (not b!3026706) (not bm!205780) (not b!3026731) (not b!3026912) (not d!850375) (not b!3026944) (not bm!205791) (not bm!205777) (not b!3026778) (not b!3026908) (not bm!205788) (not b!3026811))
(check-sat)
(get-model)

(assert (=> b!3026390 d!850437))

(declare-fun b!3026998 () Bool)

(declare-fun res!1245705 () Bool)

(declare-fun e!1898784 () Bool)

(assert (=> b!3026998 (=> res!1245705 e!1898784)))

(assert (=> b!3026998 (= res!1245705 (not ((_ is ElementMatch!9415) (regOne!19342 r!17423))))))

(declare-fun e!1898786 () Bool)

(assert (=> b!3026998 (= e!1898786 e!1898784)))

(declare-fun b!3026999 () Bool)

(declare-fun e!1898782 () Bool)

(assert (=> b!3026999 (= e!1898782 e!1898786)))

(declare-fun c!499840 () Bool)

(assert (=> b!3026999 (= c!499840 ((_ is EmptyLang!9415) (regOne!19342 r!17423)))))

(declare-fun b!3027000 () Bool)

(declare-fun lt!1045491 () Bool)

(assert (=> b!3027000 (= e!1898786 (not lt!1045491))))

(declare-fun b!3027001 () Bool)

(declare-fun res!1245703 () Bool)

(assert (=> b!3027001 (=> res!1245703 e!1898784)))

(declare-fun e!1898788 () Bool)

(assert (=> b!3027001 (= res!1245703 e!1898788)))

(declare-fun res!1245701 () Bool)

(assert (=> b!3027001 (=> (not res!1245701) (not e!1898788))))

(assert (=> b!3027001 (= res!1245701 lt!1045491)))

(declare-fun bm!205792 () Bool)

(declare-fun call!205797 () Bool)

(assert (=> bm!205792 (= call!205797 (isEmpty!19456 (_1!20188 (get!10962 lt!1045486))))))

(declare-fun b!3027002 () Bool)

(declare-fun res!1245699 () Bool)

(assert (=> b!3027002 (=> (not res!1245699) (not e!1898788))))

(assert (=> b!3027002 (= res!1245699 (not call!205797))))

(declare-fun d!850459 () Bool)

(assert (=> d!850459 e!1898782))

(declare-fun c!499841 () Bool)

(assert (=> d!850459 (= c!499841 ((_ is EmptyExpr!9415) (regOne!19342 r!17423)))))

(declare-fun e!1898785 () Bool)

(assert (=> d!850459 (= lt!1045491 e!1898785)))

(declare-fun c!499842 () Bool)

(assert (=> d!850459 (= c!499842 (isEmpty!19456 (_1!20188 (get!10962 lt!1045486))))))

(assert (=> d!850459 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850459 (= (matchR!4297 (regOne!19342 r!17423) (_1!20188 (get!10962 lt!1045486))) lt!1045491)))

(declare-fun b!3027003 () Bool)

(declare-fun e!1898787 () Bool)

(assert (=> b!3027003 (= e!1898784 e!1898787)))

(declare-fun res!1245702 () Bool)

(assert (=> b!3027003 (=> (not res!1245702) (not e!1898787))))

(assert (=> b!3027003 (= res!1245702 (not lt!1045491))))

(declare-fun b!3027004 () Bool)

(assert (=> b!3027004 (= e!1898785 (matchR!4297 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 (get!10962 lt!1045486)))) (tail!4949 (_1!20188 (get!10962 lt!1045486)))))))

(declare-fun b!3027005 () Bool)

(declare-fun e!1898783 () Bool)

(assert (=> b!3027005 (= e!1898783 (not (= (head!6723 (_1!20188 (get!10962 lt!1045486))) (c!499613 (regOne!19342 r!17423)))))))

(declare-fun b!3027006 () Bool)

(assert (=> b!3027006 (= e!1898787 e!1898783)))

(declare-fun res!1245700 () Bool)

(assert (=> b!3027006 (=> res!1245700 e!1898783)))

(assert (=> b!3027006 (= res!1245700 call!205797)))

(declare-fun b!3027007 () Bool)

(declare-fun res!1245706 () Bool)

(assert (=> b!3027007 (=> res!1245706 e!1898783)))

(assert (=> b!3027007 (= res!1245706 (not (isEmpty!19456 (tail!4949 (_1!20188 (get!10962 lt!1045486))))))))

(declare-fun b!3027008 () Bool)

(assert (=> b!3027008 (= e!1898788 (= (head!6723 (_1!20188 (get!10962 lt!1045486))) (c!499613 (regOne!19342 r!17423))))))

(declare-fun b!3027009 () Bool)

(assert (=> b!3027009 (= e!1898785 (nullable!3067 (regOne!19342 r!17423)))))

(declare-fun b!3027010 () Bool)

(assert (=> b!3027010 (= e!1898782 (= lt!1045491 call!205797))))

(declare-fun b!3027011 () Bool)

(declare-fun res!1245704 () Bool)

(assert (=> b!3027011 (=> (not res!1245704) (not e!1898788))))

(assert (=> b!3027011 (= res!1245704 (isEmpty!19456 (tail!4949 (_1!20188 (get!10962 lt!1045486)))))))

(assert (= (and d!850459 c!499842) b!3027009))

(assert (= (and d!850459 (not c!499842)) b!3027004))

(assert (= (and d!850459 c!499841) b!3027010))

(assert (= (and d!850459 (not c!499841)) b!3026999))

(assert (= (and b!3026999 c!499840) b!3027000))

(assert (= (and b!3026999 (not c!499840)) b!3026998))

(assert (= (and b!3026998 (not res!1245705)) b!3027001))

(assert (= (and b!3027001 res!1245701) b!3027002))

(assert (= (and b!3027002 res!1245699) b!3027011))

(assert (= (and b!3027011 res!1245704) b!3027008))

(assert (= (and b!3027001 (not res!1245703)) b!3027003))

(assert (= (and b!3027003 res!1245702) b!3027006))

(assert (= (and b!3027006 (not res!1245700)) b!3027007))

(assert (= (and b!3027007 (not res!1245706)) b!3027005))

(assert (= (or b!3027010 b!3027002 b!3027006) bm!205792))

(declare-fun m!3365853 () Bool)

(assert (=> b!3027011 m!3365853))

(assert (=> b!3027011 m!3365853))

(declare-fun m!3365855 () Bool)

(assert (=> b!3027011 m!3365855))

(assert (=> b!3027007 m!3365853))

(assert (=> b!3027007 m!3365853))

(assert (=> b!3027007 m!3365855))

(assert (=> b!3027009 m!3365783))

(declare-fun m!3365857 () Bool)

(assert (=> b!3027004 m!3365857))

(assert (=> b!3027004 m!3365857))

(declare-fun m!3365859 () Bool)

(assert (=> b!3027004 m!3365859))

(assert (=> b!3027004 m!3365853))

(assert (=> b!3027004 m!3365859))

(assert (=> b!3027004 m!3365853))

(declare-fun m!3365861 () Bool)

(assert (=> b!3027004 m!3365861))

(assert (=> b!3027008 m!3365857))

(assert (=> b!3027005 m!3365857))

(declare-fun m!3365863 () Bool)

(assert (=> bm!205792 m!3365863))

(assert (=> d!850459 m!3365863))

(assert (=> d!850459 m!3365773))

(assert (=> b!3026944 d!850459))

(declare-fun d!850461 () Bool)

(assert (=> d!850461 (= (get!10962 lt!1045486) (v!34921 lt!1045486))))

(assert (=> b!3026944 d!850461))

(declare-fun d!850463 () Bool)

(assert (=> d!850463 (= (Exists!1683 (ite c!499781 lambda!113093 lambda!113095)) (choose!17951 (ite c!499781 lambda!113093 lambda!113095)))))

(declare-fun bs!530658 () Bool)

(assert (= bs!530658 d!850463))

(declare-fun m!3365865 () Bool)

(assert (=> bs!530658 m!3365865))

(assert (=> bm!205755 d!850463))

(declare-fun d!850465 () Bool)

(assert (=> d!850465 (= (isEmpty!19456 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))) ((_ is Nil!35156) (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))

(assert (=> d!850353 d!850465))

(declare-fun bm!205793 () Bool)

(declare-fun call!205799 () Bool)

(declare-fun call!205798 () Bool)

(assert (=> bm!205793 (= call!205799 call!205798)))

(declare-fun b!3027013 () Bool)

(declare-fun res!1245709 () Bool)

(declare-fun e!1898795 () Bool)

(assert (=> b!3027013 (=> (not res!1245709) (not e!1898795))))

(assert (=> b!3027013 (= res!1245709 call!205799)))

(declare-fun e!1898793 () Bool)

(assert (=> b!3027013 (= e!1898793 e!1898795)))

(declare-fun b!3027014 () Bool)

(declare-fun call!205800 () Bool)

(assert (=> b!3027014 (= e!1898795 call!205800)))

(declare-fun b!3027015 () Bool)

(declare-fun e!1898789 () Bool)

(declare-fun e!1898791 () Bool)

(assert (=> b!3027015 (= e!1898789 e!1898791)))

(declare-fun c!499843 () Bool)

(assert (=> b!3027015 (= c!499843 ((_ is Star!9415) (Concat!14736 lt!1045353 lt!1045354)))))

(declare-fun c!499844 () Bool)

(declare-fun bm!205794 () Bool)

(assert (=> bm!205794 (= call!205798 (validRegex!4148 (ite c!499843 (reg!9744 (Concat!14736 lt!1045353 lt!1045354)) (ite c!499844 (regOne!19343 (Concat!14736 lt!1045353 lt!1045354)) (regTwo!19342 (Concat!14736 lt!1045353 lt!1045354))))))))

(declare-fun b!3027016 () Bool)

(declare-fun e!1898792 () Bool)

(declare-fun e!1898790 () Bool)

(assert (=> b!3027016 (= e!1898792 e!1898790)))

(declare-fun res!1245707 () Bool)

(assert (=> b!3027016 (=> (not res!1245707) (not e!1898790))))

(assert (=> b!3027016 (= res!1245707 call!205800)))

(declare-fun b!3027012 () Bool)

(assert (=> b!3027012 (= e!1898790 call!205799)))

(declare-fun d!850467 () Bool)

(declare-fun res!1245711 () Bool)

(assert (=> d!850467 (=> res!1245711 e!1898789)))

(assert (=> d!850467 (= res!1245711 ((_ is ElementMatch!9415) (Concat!14736 lt!1045353 lt!1045354)))))

(assert (=> d!850467 (= (validRegex!4148 (Concat!14736 lt!1045353 lt!1045354)) e!1898789)))

(declare-fun b!3027017 () Bool)

(assert (=> b!3027017 (= e!1898791 e!1898793)))

(assert (=> b!3027017 (= c!499844 ((_ is Union!9415) (Concat!14736 lt!1045353 lt!1045354)))))

(declare-fun b!3027018 () Bool)

(declare-fun e!1898794 () Bool)

(assert (=> b!3027018 (= e!1898794 call!205798)))

(declare-fun bm!205795 () Bool)

(assert (=> bm!205795 (= call!205800 (validRegex!4148 (ite c!499844 (regTwo!19343 (Concat!14736 lt!1045353 lt!1045354)) (regOne!19342 (Concat!14736 lt!1045353 lt!1045354)))))))

(declare-fun b!3027019 () Bool)

(declare-fun res!1245708 () Bool)

(assert (=> b!3027019 (=> res!1245708 e!1898792)))

(assert (=> b!3027019 (= res!1245708 (not ((_ is Concat!14736) (Concat!14736 lt!1045353 lt!1045354))))))

(assert (=> b!3027019 (= e!1898793 e!1898792)))

(declare-fun b!3027020 () Bool)

(assert (=> b!3027020 (= e!1898791 e!1898794)))

(declare-fun res!1245710 () Bool)

(assert (=> b!3027020 (= res!1245710 (not (nullable!3067 (reg!9744 (Concat!14736 lt!1045353 lt!1045354)))))))

(assert (=> b!3027020 (=> (not res!1245710) (not e!1898794))))

(assert (= (and d!850467 (not res!1245711)) b!3027015))

(assert (= (and b!3027015 c!499843) b!3027020))

(assert (= (and b!3027015 (not c!499843)) b!3027017))

(assert (= (and b!3027020 res!1245710) b!3027018))

(assert (= (and b!3027017 c!499844) b!3027013))

(assert (= (and b!3027017 (not c!499844)) b!3027019))

(assert (= (and b!3027013 res!1245709) b!3027014))

(assert (= (and b!3027019 (not res!1245708)) b!3027016))

(assert (= (and b!3027016 res!1245707) b!3027012))

(assert (= (or b!3027013 b!3027012) bm!205793))

(assert (= (or b!3027014 b!3027016) bm!205795))

(assert (= (or b!3027018 bm!205793) bm!205794))

(declare-fun m!3365867 () Bool)

(assert (=> bm!205794 m!3365867))

(declare-fun m!3365869 () Bool)

(assert (=> bm!205795 m!3365869))

(declare-fun m!3365871 () Bool)

(assert (=> b!3027020 m!3365871))

(assert (=> d!850353 d!850467))

(declare-fun b!3027021 () Bool)

(declare-fun res!1245718 () Bool)

(declare-fun e!1898798 () Bool)

(assert (=> b!3027021 (=> res!1245718 e!1898798)))

(assert (=> b!3027021 (= res!1245718 (not ((_ is ElementMatch!9415) (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349))))))))

(declare-fun e!1898800 () Bool)

(assert (=> b!3027021 (= e!1898800 e!1898798)))

(declare-fun b!3027022 () Bool)

(declare-fun e!1898796 () Bool)

(assert (=> b!3027022 (= e!1898796 e!1898800)))

(declare-fun c!499845 () Bool)

(assert (=> b!3027022 (= c!499845 ((_ is EmptyLang!9415) (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349)))))))

(declare-fun b!3027023 () Bool)

(declare-fun lt!1045492 () Bool)

(assert (=> b!3027023 (= e!1898800 (not lt!1045492))))

(declare-fun b!3027024 () Bool)

(declare-fun res!1245716 () Bool)

(assert (=> b!3027024 (=> res!1245716 e!1898798)))

(declare-fun e!1898802 () Bool)

(assert (=> b!3027024 (= res!1245716 e!1898802)))

(declare-fun res!1245714 () Bool)

(assert (=> b!3027024 (=> (not res!1245714) (not e!1898802))))

(assert (=> b!3027024 (= res!1245714 lt!1045492)))

(declare-fun bm!205796 () Bool)

(declare-fun call!205801 () Bool)

(assert (=> bm!205796 (= call!205801 (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349))))))

(declare-fun b!3027025 () Bool)

(declare-fun res!1245712 () Bool)

(assert (=> b!3027025 (=> (not res!1245712) (not e!1898802))))

(assert (=> b!3027025 (= res!1245712 (not call!205801))))

(declare-fun d!850469 () Bool)

(assert (=> d!850469 e!1898796))

(declare-fun c!499846 () Bool)

(assert (=> d!850469 (= c!499846 ((_ is EmptyExpr!9415) (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349)))))))

(declare-fun e!1898799 () Bool)

(assert (=> d!850469 (= lt!1045492 e!1898799)))

(declare-fun c!499847 () Bool)

(assert (=> d!850469 (= c!499847 (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349))))))

(assert (=> d!850469 (validRegex!4148 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349))))))

(assert (=> d!850469 (= (matchR!4297 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349))) (tail!4949 (_1!20188 lt!1045349))) lt!1045492)))

(declare-fun b!3027026 () Bool)

(declare-fun e!1898801 () Bool)

(assert (=> b!3027026 (= e!1898798 e!1898801)))

(declare-fun res!1245715 () Bool)

(assert (=> b!3027026 (=> (not res!1245715) (not e!1898801))))

(assert (=> b!3027026 (= res!1245715 (not lt!1045492))))

(declare-fun b!3027027 () Bool)

(assert (=> b!3027027 (= e!1898799 (matchR!4297 (derivativeStep!2664 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349))) (head!6723 (tail!4949 (_1!20188 lt!1045349)))) (tail!4949 (tail!4949 (_1!20188 lt!1045349)))))))

(declare-fun b!3027028 () Bool)

(declare-fun e!1898797 () Bool)

(assert (=> b!3027028 (= e!1898797 (not (= (head!6723 (tail!4949 (_1!20188 lt!1045349))) (c!499613 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349)))))))))

(declare-fun b!3027029 () Bool)

(assert (=> b!3027029 (= e!1898801 e!1898797)))

(declare-fun res!1245713 () Bool)

(assert (=> b!3027029 (=> res!1245713 e!1898797)))

(assert (=> b!3027029 (= res!1245713 call!205801)))

(declare-fun b!3027030 () Bool)

(declare-fun res!1245719 () Bool)

(assert (=> b!3027030 (=> res!1245719 e!1898797)))

(assert (=> b!3027030 (= res!1245719 (not (isEmpty!19456 (tail!4949 (tail!4949 (_1!20188 lt!1045349))))))))

(declare-fun b!3027031 () Bool)

(assert (=> b!3027031 (= e!1898802 (= (head!6723 (tail!4949 (_1!20188 lt!1045349))) (c!499613 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349))))))))

(declare-fun b!3027032 () Bool)

(assert (=> b!3027032 (= e!1898799 (nullable!3067 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349)))))))

(declare-fun b!3027033 () Bool)

(assert (=> b!3027033 (= e!1898796 (= lt!1045492 call!205801))))

(declare-fun b!3027034 () Bool)

(declare-fun res!1245717 () Bool)

(assert (=> b!3027034 (=> (not res!1245717) (not e!1898802))))

(assert (=> b!3027034 (= res!1245717 (isEmpty!19456 (tail!4949 (tail!4949 (_1!20188 lt!1045349)))))))

(assert (= (and d!850469 c!499847) b!3027032))

(assert (= (and d!850469 (not c!499847)) b!3027027))

(assert (= (and d!850469 c!499846) b!3027033))

(assert (= (and d!850469 (not c!499846)) b!3027022))

(assert (= (and b!3027022 c!499845) b!3027023))

(assert (= (and b!3027022 (not c!499845)) b!3027021))

(assert (= (and b!3027021 (not res!1245718)) b!3027024))

(assert (= (and b!3027024 res!1245714) b!3027025))

(assert (= (and b!3027025 res!1245712) b!3027034))

(assert (= (and b!3027034 res!1245717) b!3027031))

(assert (= (and b!3027024 (not res!1245716)) b!3027026))

(assert (= (and b!3027026 res!1245715) b!3027029))

(assert (= (and b!3027029 (not res!1245713)) b!3027030))

(assert (= (and b!3027030 (not res!1245719)) b!3027028))

(assert (= (or b!3027033 b!3027025 b!3027029) bm!205796))

(assert (=> b!3027034 m!3365735))

(declare-fun m!3365873 () Bool)

(assert (=> b!3027034 m!3365873))

(assert (=> b!3027034 m!3365873))

(declare-fun m!3365875 () Bool)

(assert (=> b!3027034 m!3365875))

(assert (=> b!3027030 m!3365735))

(assert (=> b!3027030 m!3365873))

(assert (=> b!3027030 m!3365873))

(assert (=> b!3027030 m!3365875))

(assert (=> b!3027032 m!3365805))

(declare-fun m!3365877 () Bool)

(assert (=> b!3027032 m!3365877))

(assert (=> b!3027027 m!3365735))

(declare-fun m!3365879 () Bool)

(assert (=> b!3027027 m!3365879))

(assert (=> b!3027027 m!3365805))

(assert (=> b!3027027 m!3365879))

(declare-fun m!3365881 () Bool)

(assert (=> b!3027027 m!3365881))

(assert (=> b!3027027 m!3365735))

(assert (=> b!3027027 m!3365873))

(assert (=> b!3027027 m!3365881))

(assert (=> b!3027027 m!3365873))

(declare-fun m!3365883 () Bool)

(assert (=> b!3027027 m!3365883))

(assert (=> b!3027031 m!3365735))

(assert (=> b!3027031 m!3365879))

(assert (=> b!3027028 m!3365735))

(assert (=> b!3027028 m!3365879))

(assert (=> bm!205796 m!3365735))

(assert (=> bm!205796 m!3365737))

(assert (=> d!850469 m!3365735))

(assert (=> d!850469 m!3365737))

(assert (=> d!850469 m!3365805))

(declare-fun m!3365885 () Bool)

(assert (=> d!850469 m!3365885))

(assert (=> b!3026907 d!850469))

(declare-fun b!3027055 () Bool)

(declare-fun e!1898813 () Regex!9415)

(declare-fun call!205810 () Regex!9415)

(declare-fun call!205813 () Regex!9415)

(assert (=> b!3027055 (= e!1898813 (Union!9415 call!205810 call!205813))))

(declare-fun b!3027056 () Bool)

(declare-fun e!1898814 () Regex!9415)

(assert (=> b!3027056 (= e!1898813 e!1898814)))

(declare-fun c!499858 () Bool)

(assert (=> b!3027056 (= c!499858 ((_ is Star!9415) (regOne!19342 r!17423)))))

(declare-fun bm!205805 () Bool)

(declare-fun call!205812 () Regex!9415)

(assert (=> bm!205805 (= call!205812 call!205813)))

(declare-fun c!499862 () Bool)

(declare-fun bm!205806 () Bool)

(assert (=> bm!205806 (= call!205810 (derivativeStep!2664 (ite c!499862 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))) (head!6723 (_1!20188 lt!1045349))))))

(declare-fun b!3027057 () Bool)

(declare-fun e!1898817 () Regex!9415)

(declare-fun call!205811 () Regex!9415)

(assert (=> b!3027057 (= e!1898817 (Union!9415 (Concat!14736 call!205811 (regTwo!19342 (regOne!19342 r!17423))) EmptyLang!9415))))

(declare-fun b!3027058 () Bool)

(declare-fun c!499860 () Bool)

(assert (=> b!3027058 (= c!499860 (nullable!3067 (regOne!19342 (regOne!19342 r!17423))))))

(assert (=> b!3027058 (= e!1898814 e!1898817)))

(declare-fun bm!205807 () Bool)

(assert (=> bm!205807 (= call!205811 call!205812)))

(declare-fun d!850471 () Bool)

(declare-fun lt!1045495 () Regex!9415)

(assert (=> d!850471 (validRegex!4148 lt!1045495)))

(declare-fun e!1898815 () Regex!9415)

(assert (=> d!850471 (= lt!1045495 e!1898815)))

(declare-fun c!499859 () Bool)

(assert (=> d!850471 (= c!499859 (or ((_ is EmptyExpr!9415) (regOne!19342 r!17423)) ((_ is EmptyLang!9415) (regOne!19342 r!17423))))))

(assert (=> d!850471 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850471 (= (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 (_1!20188 lt!1045349))) lt!1045495)))

(declare-fun b!3027059 () Bool)

(declare-fun e!1898816 () Regex!9415)

(assert (=> b!3027059 (= e!1898816 (ite (= (head!6723 (_1!20188 lt!1045349)) (c!499613 (regOne!19342 r!17423))) EmptyExpr!9415 EmptyLang!9415))))

(declare-fun b!3027060 () Bool)

(assert (=> b!3027060 (= e!1898817 (Union!9415 (Concat!14736 call!205811 (regTwo!19342 (regOne!19342 r!17423))) call!205810))))

(declare-fun b!3027061 () Bool)

(assert (=> b!3027061 (= c!499862 ((_ is Union!9415) (regOne!19342 r!17423)))))

(assert (=> b!3027061 (= e!1898816 e!1898813)))

(declare-fun bm!205808 () Bool)

(assert (=> bm!205808 (= call!205813 (derivativeStep!2664 (ite c!499862 (regTwo!19343 (regOne!19342 r!17423)) (ite c!499858 (reg!9744 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))) (head!6723 (_1!20188 lt!1045349))))))

(declare-fun b!3027062 () Bool)

(assert (=> b!3027062 (= e!1898815 e!1898816)))

(declare-fun c!499861 () Bool)

(assert (=> b!3027062 (= c!499861 ((_ is ElementMatch!9415) (regOne!19342 r!17423)))))

(declare-fun b!3027063 () Bool)

(assert (=> b!3027063 (= e!1898815 EmptyLang!9415)))

(declare-fun b!3027064 () Bool)

(assert (=> b!3027064 (= e!1898814 (Concat!14736 call!205812 (regOne!19342 r!17423)))))

(assert (= (and d!850471 c!499859) b!3027063))

(assert (= (and d!850471 (not c!499859)) b!3027062))

(assert (= (and b!3027062 c!499861) b!3027059))

(assert (= (and b!3027062 (not c!499861)) b!3027061))

(assert (= (and b!3027061 c!499862) b!3027055))

(assert (= (and b!3027061 (not c!499862)) b!3027056))

(assert (= (and b!3027056 c!499858) b!3027064))

(assert (= (and b!3027056 (not c!499858)) b!3027058))

(assert (= (and b!3027058 c!499860) b!3027060))

(assert (= (and b!3027058 (not c!499860)) b!3027057))

(assert (= (or b!3027060 b!3027057) bm!205807))

(assert (= (or b!3027064 bm!205807) bm!205805))

(assert (= (or b!3027055 bm!205805) bm!205808))

(assert (= (or b!3027055 b!3027060) bm!205806))

(assert (=> bm!205806 m!3365741))

(declare-fun m!3365887 () Bool)

(assert (=> bm!205806 m!3365887))

(declare-fun m!3365889 () Bool)

(assert (=> b!3027058 m!3365889))

(declare-fun m!3365891 () Bool)

(assert (=> d!850471 m!3365891))

(assert (=> d!850471 m!3365773))

(assert (=> bm!205808 m!3365741))

(declare-fun m!3365893 () Bool)

(assert (=> bm!205808 m!3365893))

(assert (=> b!3026907 d!850471))

(declare-fun d!850473 () Bool)

(assert (=> d!850473 (= (head!6723 (_1!20188 lt!1045349)) (h!40576 (_1!20188 lt!1045349)))))

(assert (=> b!3026907 d!850473))

(declare-fun d!850475 () Bool)

(assert (=> d!850475 (= (tail!4949 (_1!20188 lt!1045349)) (t!234345 (_1!20188 lt!1045349)))))

(assert (=> b!3026907 d!850475))

(declare-fun d!850477 () Bool)

(assert (=> d!850477 (= (Exists!1683 lambda!113100) (choose!17951 lambda!113100))))

(declare-fun bs!530659 () Bool)

(assert (= bs!530659 d!850477))

(declare-fun m!3365895 () Bool)

(assert (=> bs!530659 m!3365895))

(assert (=> d!850447 d!850477))

(declare-fun d!850479 () Bool)

(assert (=> d!850479 (= (Exists!1683 lambda!113101) (choose!17951 lambda!113101))))

(declare-fun bs!530660 () Bool)

(assert (= bs!530660 d!850479))

(declare-fun m!3365897 () Bool)

(assert (=> bs!530660 m!3365897))

(assert (=> d!850447 d!850479))

(declare-fun bs!530663 () Bool)

(declare-fun d!850481 () Bool)

(assert (= bs!530663 (and d!850481 b!3026703)))

(declare-fun lambda!113109 () Int)

(assert (=> bs!530663 (not (= lambda!113109 lambda!113093))))

(declare-fun bs!530664 () Bool)

(assert (= bs!530664 (and d!850481 b!3026135)))

(assert (=> bs!530664 (not (= lambda!113109 lambda!113074))))

(declare-fun bs!530665 () Bool)

(assert (= bs!530665 (and d!850481 d!850447)))

(assert (=> bs!530665 (= lambda!113109 lambda!113100)))

(declare-fun bs!530666 () Bool)

(assert (= bs!530666 (and d!850481 b!3026699)))

(assert (=> bs!530666 (not (= lambda!113109 lambda!113095))))

(declare-fun bs!530667 () Bool)

(assert (= bs!530667 (and d!850481 d!850451)))

(assert (=> bs!530667 (= lambda!113109 lambda!113104)))

(assert (=> bs!530664 (= lambda!113109 lambda!113073)))

(assert (=> bs!530665 (not (= lambda!113109 lambda!113101))))

(assert (=> d!850481 true))

(assert (=> d!850481 true))

(assert (=> d!850481 true))

(declare-fun lambda!113110 () Int)

(assert (=> bs!530663 (not (= lambda!113110 lambda!113093))))

(declare-fun bs!530668 () Bool)

(assert (= bs!530668 d!850481))

(assert (=> bs!530668 (not (= lambda!113110 lambda!113109))))

(assert (=> bs!530664 (= lambda!113110 lambda!113074)))

(assert (=> bs!530665 (not (= lambda!113110 lambda!113100))))

(assert (=> bs!530666 (= lambda!113110 lambda!113095)))

(assert (=> bs!530667 (not (= lambda!113110 lambda!113104))))

(assert (=> bs!530664 (not (= lambda!113110 lambda!113073))))

(assert (=> bs!530665 (= lambda!113110 lambda!113101)))

(assert (=> d!850481 true))

(assert (=> d!850481 true))

(assert (=> d!850481 true))

(assert (=> d!850481 (= (Exists!1683 lambda!113109) (Exists!1683 lambda!113110))))

(assert (=> d!850481 true))

(declare-fun _$90!949 () Unit!49253)

(assert (=> d!850481 (= (choose!17952 (regOne!19342 r!17423) (regTwo!19342 r!17423) s!11993) _$90!949)))

(declare-fun m!3365933 () Bool)

(assert (=> bs!530668 m!3365933))

(declare-fun m!3365935 () Bool)

(assert (=> bs!530668 m!3365935))

(assert (=> d!850447 d!850481))

(declare-fun bm!205813 () Bool)

(declare-fun call!205819 () Bool)

(declare-fun call!205818 () Bool)

(assert (=> bm!205813 (= call!205819 call!205818)))

(declare-fun b!3027101 () Bool)

(declare-fun res!1245745 () Bool)

(declare-fun e!1898844 () Bool)

(assert (=> b!3027101 (=> (not res!1245745) (not e!1898844))))

(assert (=> b!3027101 (= res!1245745 call!205819)))

(declare-fun e!1898842 () Bool)

(assert (=> b!3027101 (= e!1898842 e!1898844)))

(declare-fun b!3027102 () Bool)

(declare-fun call!205820 () Bool)

(assert (=> b!3027102 (= e!1898844 call!205820)))

(declare-fun b!3027103 () Bool)

(declare-fun e!1898838 () Bool)

(declare-fun e!1898840 () Bool)

(assert (=> b!3027103 (= e!1898838 e!1898840)))

(declare-fun c!499869 () Bool)

(assert (=> b!3027103 (= c!499869 ((_ is Star!9415) (regOne!19342 r!17423)))))

(declare-fun bm!205814 () Bool)

(declare-fun c!499870 () Bool)

(assert (=> bm!205814 (= call!205818 (validRegex!4148 (ite c!499869 (reg!9744 (regOne!19342 r!17423)) (ite c!499870 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))))))

(declare-fun b!3027104 () Bool)

(declare-fun e!1898841 () Bool)

(declare-fun e!1898839 () Bool)

(assert (=> b!3027104 (= e!1898841 e!1898839)))

(declare-fun res!1245743 () Bool)

(assert (=> b!3027104 (=> (not res!1245743) (not e!1898839))))

(assert (=> b!3027104 (= res!1245743 call!205820)))

(declare-fun b!3027100 () Bool)

(assert (=> b!3027100 (= e!1898839 call!205819)))

(declare-fun d!850495 () Bool)

(declare-fun res!1245747 () Bool)

(assert (=> d!850495 (=> res!1245747 e!1898838)))

(assert (=> d!850495 (= res!1245747 ((_ is ElementMatch!9415) (regOne!19342 r!17423)))))

(assert (=> d!850495 (= (validRegex!4148 (regOne!19342 r!17423)) e!1898838)))

(declare-fun b!3027105 () Bool)

(assert (=> b!3027105 (= e!1898840 e!1898842)))

(assert (=> b!3027105 (= c!499870 ((_ is Union!9415) (regOne!19342 r!17423)))))

(declare-fun b!3027106 () Bool)

(declare-fun e!1898843 () Bool)

(assert (=> b!3027106 (= e!1898843 call!205818)))

(declare-fun bm!205815 () Bool)

(assert (=> bm!205815 (= call!205820 (validRegex!4148 (ite c!499870 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))))))

(declare-fun b!3027107 () Bool)

(declare-fun res!1245744 () Bool)

(assert (=> b!3027107 (=> res!1245744 e!1898841)))

(assert (=> b!3027107 (= res!1245744 (not ((_ is Concat!14736) (regOne!19342 r!17423))))))

(assert (=> b!3027107 (= e!1898842 e!1898841)))

(declare-fun b!3027108 () Bool)

(assert (=> b!3027108 (= e!1898840 e!1898843)))

(declare-fun res!1245746 () Bool)

(assert (=> b!3027108 (= res!1245746 (not (nullable!3067 (reg!9744 (regOne!19342 r!17423)))))))

(assert (=> b!3027108 (=> (not res!1245746) (not e!1898843))))

(assert (= (and d!850495 (not res!1245747)) b!3027103))

(assert (= (and b!3027103 c!499869) b!3027108))

(assert (= (and b!3027103 (not c!499869)) b!3027105))

(assert (= (and b!3027108 res!1245746) b!3027106))

(assert (= (and b!3027105 c!499870) b!3027101))

(assert (= (and b!3027105 (not c!499870)) b!3027107))

(assert (= (and b!3027101 res!1245745) b!3027102))

(assert (= (and b!3027107 (not res!1245744)) b!3027104))

(assert (= (and b!3027104 res!1245743) b!3027100))

(assert (= (or b!3027101 b!3027100) bm!205813))

(assert (= (or b!3027102 b!3027104) bm!205815))

(assert (= (or b!3027106 bm!205813) bm!205814))

(declare-fun m!3365937 () Bool)

(assert (=> bm!205814 m!3365937))

(declare-fun m!3365939 () Bool)

(assert (=> bm!205815 m!3365939))

(declare-fun m!3365941 () Bool)

(assert (=> b!3027108 m!3365941))

(assert (=> d!850447 d!850495))

(declare-fun b!3027109 () Bool)

(declare-fun e!1898857 () Regex!9415)

(declare-fun lt!1045498 () Regex!9415)

(assert (=> b!3027109 (= e!1898857 lt!1045498)))

(declare-fun d!850497 () Bool)

(declare-fun e!1898846 () Bool)

(assert (=> d!850497 e!1898846))

(declare-fun res!1245749 () Bool)

(assert (=> d!850497 (=> (not res!1245749) (not e!1898846))))

(declare-fun lt!1045501 () Regex!9415)

(assert (=> d!850497 (= res!1245749 (validRegex!4148 lt!1045501))))

(declare-fun e!1898848 () Regex!9415)

(assert (=> d!850497 (= lt!1045501 e!1898848)))

(declare-fun c!499878 () Bool)

(assert (=> d!850497 (= c!499878 ((_ is EmptyLang!9415) (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))))))

(assert (=> d!850497 (validRegex!4148 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423)))))))

(assert (=> d!850497 (= (simplify!394 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))) lt!1045501)))

(declare-fun c!499871 () Bool)

(declare-fun bm!205816 () Bool)

(declare-fun call!205826 () Bool)

(declare-fun lt!1045500 () Regex!9415)

(assert (=> bm!205816 (= call!205826 (isEmptyLang!492 (ite c!499871 lt!1045498 lt!1045500)))))

(declare-fun b!3027110 () Bool)

(declare-fun c!499872 () Bool)

(declare-fun e!1898853 () Bool)

(assert (=> b!3027110 (= c!499872 e!1898853)))

(declare-fun res!1245748 () Bool)

(assert (=> b!3027110 (=> res!1245748 e!1898853)))

(declare-fun call!205827 () Bool)

(assert (=> b!3027110 (= res!1245748 call!205827)))

(declare-fun lt!1045502 () Regex!9415)

(declare-fun call!205821 () Regex!9415)

(assert (=> b!3027110 (= lt!1045502 call!205821)))

(declare-fun e!1898851 () Regex!9415)

(declare-fun e!1898850 () Regex!9415)

(assert (=> b!3027110 (= e!1898851 e!1898850)))

(declare-fun b!3027111 () Bool)

(declare-fun e!1898847 () Regex!9415)

(declare-fun lt!1045503 () Regex!9415)

(assert (=> b!3027111 (= e!1898847 lt!1045503)))

(declare-fun b!3027112 () Bool)

(declare-fun e!1898856 () Regex!9415)

(declare-fun e!1898845 () Regex!9415)

(assert (=> b!3027112 (= e!1898856 e!1898845)))

(declare-fun c!499873 () Bool)

(declare-fun call!205823 () Bool)

(assert (=> b!3027112 (= c!499873 call!205823)))

(declare-fun c!499874 () Bool)

(declare-fun bm!205817 () Bool)

(assert (=> bm!205817 (= call!205821 (simplify!394 (ite c!499874 (reg!9744 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))) (ite c!499871 (regOne!19343 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))) (regTwo!19342 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423)))))))))))

(declare-fun b!3027113 () Bool)

(declare-fun e!1898858 () Regex!9415)

(assert (=> b!3027113 (= e!1898858 e!1898857)))

(declare-fun call!205825 () Regex!9415)

(assert (=> b!3027113 (= lt!1045503 call!205825)))

(declare-fun call!205824 () Regex!9415)

(assert (=> b!3027113 (= lt!1045498 call!205824)))

(declare-fun c!499880 () Bool)

(declare-fun call!205822 () Bool)

(assert (=> b!3027113 (= c!499880 call!205822)))

(declare-fun b!3027114 () Bool)

(declare-fun c!499879 () Bool)

(declare-fun lt!1045499 () Regex!9415)

(assert (=> b!3027114 (= c!499879 (isEmptyExpr!498 lt!1045499))))

(declare-fun e!1898855 () Regex!9415)

(assert (=> b!3027114 (= e!1898855 e!1898856)))

(declare-fun bm!205818 () Bool)

(assert (=> bm!205818 (= call!205825 call!205821)))

(declare-fun b!3027115 () Bool)

(declare-fun c!499875 () Bool)

(assert (=> b!3027115 (= c!499875 call!205826)))

(assert (=> b!3027115 (= e!1898857 e!1898847)))

(declare-fun b!3027116 () Bool)

(assert (=> b!3027116 (= e!1898855 EmptyLang!9415)))

(declare-fun b!3027117 () Bool)

(assert (=> b!3027117 (= e!1898845 lt!1045499)))

(declare-fun b!3027118 () Bool)

(declare-fun e!1898854 () Regex!9415)

(assert (=> b!3027118 (= e!1898854 EmptyExpr!9415)))

(declare-fun b!3027119 () Bool)

(assert (=> b!3027119 (= e!1898856 lt!1045500)))

(declare-fun b!3027120 () Bool)

(assert (=> b!3027120 (= e!1898846 (= (nullable!3067 lt!1045501) (nullable!3067 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423)))))))))

(declare-fun b!3027121 () Bool)

(assert (=> b!3027121 (= e!1898847 (Union!9415 lt!1045503 lt!1045498))))

(declare-fun bm!205819 () Bool)

(assert (=> bm!205819 (= call!205823 (isEmptyExpr!498 (ite c!499874 lt!1045502 lt!1045500)))))

(declare-fun b!3027122 () Bool)

(assert (=> b!3027122 (= e!1898853 call!205823)))

(declare-fun e!1898852 () Regex!9415)

(declare-fun b!3027123 () Bool)

(assert (=> b!3027123 (= e!1898852 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423)))))))

(declare-fun bm!205820 () Bool)

(assert (=> bm!205820 (= call!205827 (isEmptyLang!492 (ite c!499874 lt!1045502 (ite c!499871 lt!1045503 lt!1045499))))))

(declare-fun b!3027124 () Bool)

(assert (=> b!3027124 (= c!499871 ((_ is Union!9415) (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))))))

(assert (=> b!3027124 (= e!1898851 e!1898858)))

(declare-fun b!3027125 () Bool)

(assert (=> b!3027125 (= e!1898858 e!1898855)))

(assert (=> b!3027125 (= lt!1045499 call!205824)))

(assert (=> b!3027125 (= lt!1045500 call!205825)))

(declare-fun res!1245750 () Bool)

(assert (=> b!3027125 (= res!1245750 call!205822)))

(declare-fun e!1898849 () Bool)

(assert (=> b!3027125 (=> res!1245750 e!1898849)))

(declare-fun c!499876 () Bool)

(assert (=> b!3027125 (= c!499876 e!1898849)))

(declare-fun b!3027126 () Bool)

(assert (=> b!3027126 (= e!1898848 e!1898852)))

(declare-fun c!499877 () Bool)

(assert (=> b!3027126 (= c!499877 ((_ is ElementMatch!9415) (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))))))

(declare-fun bm!205821 () Bool)

(assert (=> bm!205821 (= call!205822 call!205827)))

(declare-fun b!3027127 () Bool)

(assert (=> b!3027127 (= e!1898854 e!1898851)))

(assert (=> b!3027127 (= c!499874 ((_ is Star!9415) (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))))))

(declare-fun b!3027128 () Bool)

(assert (=> b!3027128 (= e!1898845 (Concat!14736 lt!1045499 lt!1045500))))

(declare-fun b!3027129 () Bool)

(assert (=> b!3027129 (= e!1898850 (Star!9415 lt!1045502))))

(declare-fun bm!205822 () Bool)

(assert (=> bm!205822 (= call!205824 (simplify!394 (ite c!499871 (regTwo!19343 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))) (regOne!19342 (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))))))))

(declare-fun b!3027130 () Bool)

(assert (=> b!3027130 (= e!1898848 EmptyLang!9415)))

(declare-fun c!499881 () Bool)

(declare-fun b!3027131 () Bool)

(assert (=> b!3027131 (= c!499881 ((_ is EmptyExpr!9415) (ite c!499816 (reg!9744 (regOne!19342 r!17423)) (ite c!499813 (regOne!19343 (regOne!19342 r!17423)) (regTwo!19342 (regOne!19342 r!17423))))))))

(assert (=> b!3027131 (= e!1898852 e!1898854)))

(declare-fun b!3027132 () Bool)

(assert (=> b!3027132 (= e!1898850 EmptyExpr!9415)))

(declare-fun b!3027133 () Bool)

(assert (=> b!3027133 (= e!1898849 call!205826)))

(assert (= (and d!850497 c!499878) b!3027130))

(assert (= (and d!850497 (not c!499878)) b!3027126))

(assert (= (and b!3027126 c!499877) b!3027123))

(assert (= (and b!3027126 (not c!499877)) b!3027131))

(assert (= (and b!3027131 c!499881) b!3027118))

(assert (= (and b!3027131 (not c!499881)) b!3027127))

(assert (= (and b!3027127 c!499874) b!3027110))

(assert (= (and b!3027127 (not c!499874)) b!3027124))

(assert (= (and b!3027110 (not res!1245748)) b!3027122))

(assert (= (and b!3027110 c!499872) b!3027132))

(assert (= (and b!3027110 (not c!499872)) b!3027129))

(assert (= (and b!3027124 c!499871) b!3027113))

(assert (= (and b!3027124 (not c!499871)) b!3027125))

(assert (= (and b!3027113 c!499880) b!3027109))

(assert (= (and b!3027113 (not c!499880)) b!3027115))

(assert (= (and b!3027115 c!499875) b!3027111))

(assert (= (and b!3027115 (not c!499875)) b!3027121))

(assert (= (and b!3027125 (not res!1245750)) b!3027133))

(assert (= (and b!3027125 c!499876) b!3027116))

(assert (= (and b!3027125 (not c!499876)) b!3027114))

(assert (= (and b!3027114 c!499879) b!3027119))

(assert (= (and b!3027114 (not c!499879)) b!3027112))

(assert (= (and b!3027112 c!499873) b!3027117))

(assert (= (and b!3027112 (not c!499873)) b!3027128))

(assert (= (or b!3027113 b!3027125) bm!205818))

(assert (= (or b!3027113 b!3027125) bm!205822))

(assert (= (or b!3027113 b!3027125) bm!205821))

(assert (= (or b!3027115 b!3027133) bm!205816))

(assert (= (or b!3027122 b!3027112) bm!205819))

(assert (= (or b!3027110 bm!205818) bm!205817))

(assert (= (or b!3027110 bm!205821) bm!205820))

(assert (= (and d!850497 res!1245749) b!3027120))

(declare-fun m!3365943 () Bool)

(assert (=> bm!205819 m!3365943))

(declare-fun m!3365945 () Bool)

(assert (=> d!850497 m!3365945))

(declare-fun m!3365947 () Bool)

(assert (=> d!850497 m!3365947))

(declare-fun m!3365949 () Bool)

(assert (=> bm!205822 m!3365949))

(declare-fun m!3365951 () Bool)

(assert (=> bm!205820 m!3365951))

(declare-fun m!3365953 () Bool)

(assert (=> bm!205816 m!3365953))

(declare-fun m!3365955 () Bool)

(assert (=> b!3027120 m!3365955))

(declare-fun m!3365957 () Bool)

(assert (=> b!3027120 m!3365957))

(declare-fun m!3365959 () Bool)

(assert (=> bm!205817 m!3365959))

(declare-fun m!3365961 () Bool)

(assert (=> b!3027114 m!3365961))

(assert (=> bm!205778 d!850497))

(declare-fun b!3027134 () Bool)

(declare-fun res!1245757 () Bool)

(declare-fun e!1898861 () Bool)

(assert (=> b!3027134 (=> res!1245757 e!1898861)))

(assert (=> b!3027134 (= res!1245757 (not ((_ is ElementMatch!9415) (derivativeStep!2664 r!17423 (head!6723 s!11993)))))))

(declare-fun e!1898863 () Bool)

(assert (=> b!3027134 (= e!1898863 e!1898861)))

(declare-fun b!3027135 () Bool)

(declare-fun e!1898859 () Bool)

(assert (=> b!3027135 (= e!1898859 e!1898863)))

(declare-fun c!499882 () Bool)

(assert (=> b!3027135 (= c!499882 ((_ is EmptyLang!9415) (derivativeStep!2664 r!17423 (head!6723 s!11993))))))

(declare-fun b!3027136 () Bool)

(declare-fun lt!1045504 () Bool)

(assert (=> b!3027136 (= e!1898863 (not lt!1045504))))

(declare-fun b!3027137 () Bool)

(declare-fun res!1245755 () Bool)

(assert (=> b!3027137 (=> res!1245755 e!1898861)))

(declare-fun e!1898865 () Bool)

(assert (=> b!3027137 (= res!1245755 e!1898865)))

(declare-fun res!1245753 () Bool)

(assert (=> b!3027137 (=> (not res!1245753) (not e!1898865))))

(assert (=> b!3027137 (= res!1245753 lt!1045504)))

(declare-fun bm!205823 () Bool)

(declare-fun call!205828 () Bool)

(assert (=> bm!205823 (= call!205828 (isEmpty!19456 (tail!4949 s!11993)))))

(declare-fun b!3027138 () Bool)

(declare-fun res!1245751 () Bool)

(assert (=> b!3027138 (=> (not res!1245751) (not e!1898865))))

(assert (=> b!3027138 (= res!1245751 (not call!205828))))

(declare-fun d!850499 () Bool)

(assert (=> d!850499 e!1898859))

(declare-fun c!499883 () Bool)

(assert (=> d!850499 (= c!499883 ((_ is EmptyExpr!9415) (derivativeStep!2664 r!17423 (head!6723 s!11993))))))

(declare-fun e!1898862 () Bool)

(assert (=> d!850499 (= lt!1045504 e!1898862)))

(declare-fun c!499884 () Bool)

(assert (=> d!850499 (= c!499884 (isEmpty!19456 (tail!4949 s!11993)))))

(assert (=> d!850499 (validRegex!4148 (derivativeStep!2664 r!17423 (head!6723 s!11993)))))

(assert (=> d!850499 (= (matchR!4297 (derivativeStep!2664 r!17423 (head!6723 s!11993)) (tail!4949 s!11993)) lt!1045504)))

(declare-fun b!3027139 () Bool)

(declare-fun e!1898864 () Bool)

(assert (=> b!3027139 (= e!1898861 e!1898864)))

(declare-fun res!1245754 () Bool)

(assert (=> b!3027139 (=> (not res!1245754) (not e!1898864))))

(assert (=> b!3027139 (= res!1245754 (not lt!1045504))))

(declare-fun b!3027140 () Bool)

(assert (=> b!3027140 (= e!1898862 (matchR!4297 (derivativeStep!2664 (derivativeStep!2664 r!17423 (head!6723 s!11993)) (head!6723 (tail!4949 s!11993))) (tail!4949 (tail!4949 s!11993))))))

(declare-fun b!3027141 () Bool)

(declare-fun e!1898860 () Bool)

(assert (=> b!3027141 (= e!1898860 (not (= (head!6723 (tail!4949 s!11993)) (c!499613 (derivativeStep!2664 r!17423 (head!6723 s!11993))))))))

(declare-fun b!3027142 () Bool)

(assert (=> b!3027142 (= e!1898864 e!1898860)))

(declare-fun res!1245752 () Bool)

(assert (=> b!3027142 (=> res!1245752 e!1898860)))

(assert (=> b!3027142 (= res!1245752 call!205828)))

(declare-fun b!3027143 () Bool)

(declare-fun res!1245758 () Bool)

(assert (=> b!3027143 (=> res!1245758 e!1898860)))

(assert (=> b!3027143 (= res!1245758 (not (isEmpty!19456 (tail!4949 (tail!4949 s!11993)))))))

(declare-fun b!3027144 () Bool)

(assert (=> b!3027144 (= e!1898865 (= (head!6723 (tail!4949 s!11993)) (c!499613 (derivativeStep!2664 r!17423 (head!6723 s!11993)))))))

(declare-fun b!3027145 () Bool)

(assert (=> b!3027145 (= e!1898862 (nullable!3067 (derivativeStep!2664 r!17423 (head!6723 s!11993))))))

(declare-fun b!3027146 () Bool)

(assert (=> b!3027146 (= e!1898859 (= lt!1045504 call!205828))))

(declare-fun b!3027147 () Bool)

(declare-fun res!1245756 () Bool)

(assert (=> b!3027147 (=> (not res!1245756) (not e!1898865))))

(assert (=> b!3027147 (= res!1245756 (isEmpty!19456 (tail!4949 (tail!4949 s!11993))))))

(assert (= (and d!850499 c!499884) b!3027145))

(assert (= (and d!850499 (not c!499884)) b!3027140))

(assert (= (and d!850499 c!499883) b!3027146))

(assert (= (and d!850499 (not c!499883)) b!3027135))

(assert (= (and b!3027135 c!499882) b!3027136))

(assert (= (and b!3027135 (not c!499882)) b!3027134))

(assert (= (and b!3027134 (not res!1245757)) b!3027137))

(assert (= (and b!3027137 res!1245753) b!3027138))

(assert (= (and b!3027138 res!1245751) b!3027147))

(assert (= (and b!3027147 res!1245756) b!3027144))

(assert (= (and b!3027137 (not res!1245755)) b!3027139))

(assert (= (and b!3027139 res!1245754) b!3027142))

(assert (= (and b!3027142 (not res!1245752)) b!3027143))

(assert (= (and b!3027143 (not res!1245758)) b!3027141))

(assert (= (or b!3027146 b!3027138 b!3027142) bm!205823))

(assert (=> b!3027147 m!3365667))

(declare-fun m!3365963 () Bool)

(assert (=> b!3027147 m!3365963))

(assert (=> b!3027147 m!3365963))

(declare-fun m!3365965 () Bool)

(assert (=> b!3027147 m!3365965))

(assert (=> b!3027143 m!3365667))

(assert (=> b!3027143 m!3365963))

(assert (=> b!3027143 m!3365963))

(assert (=> b!3027143 m!3365965))

(assert (=> b!3027145 m!3365703))

(declare-fun m!3365967 () Bool)

(assert (=> b!3027145 m!3365967))

(assert (=> b!3027140 m!3365667))

(declare-fun m!3365969 () Bool)

(assert (=> b!3027140 m!3365969))

(assert (=> b!3027140 m!3365703))

(assert (=> b!3027140 m!3365969))

(declare-fun m!3365971 () Bool)

(assert (=> b!3027140 m!3365971))

(assert (=> b!3027140 m!3365667))

(assert (=> b!3027140 m!3365963))

(assert (=> b!3027140 m!3365971))

(assert (=> b!3027140 m!3365963))

(declare-fun m!3365973 () Bool)

(assert (=> b!3027140 m!3365973))

(assert (=> b!3027144 m!3365667))

(assert (=> b!3027144 m!3365969))

(assert (=> b!3027141 m!3365667))

(assert (=> b!3027141 m!3365969))

(assert (=> bm!205823 m!3365667))

(assert (=> bm!205823 m!3365669))

(assert (=> d!850499 m!3365667))

(assert (=> d!850499 m!3365669))

(assert (=> d!850499 m!3365703))

(declare-fun m!3365975 () Bool)

(assert (=> d!850499 m!3365975))

(assert (=> b!3026730 d!850499))

(declare-fun b!3027148 () Bool)

(declare-fun e!1898866 () Regex!9415)

(declare-fun call!205829 () Regex!9415)

(declare-fun call!205832 () Regex!9415)

(assert (=> b!3027148 (= e!1898866 (Union!9415 call!205829 call!205832))))

(declare-fun b!3027149 () Bool)

(declare-fun e!1898867 () Regex!9415)

(assert (=> b!3027149 (= e!1898866 e!1898867)))

(declare-fun c!499885 () Bool)

(assert (=> b!3027149 (= c!499885 ((_ is Star!9415) r!17423))))

(declare-fun bm!205824 () Bool)

(declare-fun call!205831 () Regex!9415)

(assert (=> bm!205824 (= call!205831 call!205832)))

(declare-fun bm!205825 () Bool)

(declare-fun c!499889 () Bool)

(assert (=> bm!205825 (= call!205829 (derivativeStep!2664 (ite c!499889 (regOne!19343 r!17423) (regTwo!19342 r!17423)) (head!6723 s!11993)))))

(declare-fun b!3027150 () Bool)

(declare-fun e!1898870 () Regex!9415)

(declare-fun call!205830 () Regex!9415)

(assert (=> b!3027150 (= e!1898870 (Union!9415 (Concat!14736 call!205830 (regTwo!19342 r!17423)) EmptyLang!9415))))

(declare-fun b!3027151 () Bool)

(declare-fun c!499887 () Bool)

(assert (=> b!3027151 (= c!499887 (nullable!3067 (regOne!19342 r!17423)))))

(assert (=> b!3027151 (= e!1898867 e!1898870)))

(declare-fun bm!205826 () Bool)

(assert (=> bm!205826 (= call!205830 call!205831)))

(declare-fun d!850501 () Bool)

(declare-fun lt!1045505 () Regex!9415)

(assert (=> d!850501 (validRegex!4148 lt!1045505)))

(declare-fun e!1898868 () Regex!9415)

(assert (=> d!850501 (= lt!1045505 e!1898868)))

(declare-fun c!499886 () Bool)

(assert (=> d!850501 (= c!499886 (or ((_ is EmptyExpr!9415) r!17423) ((_ is EmptyLang!9415) r!17423)))))

(assert (=> d!850501 (validRegex!4148 r!17423)))

(assert (=> d!850501 (= (derivativeStep!2664 r!17423 (head!6723 s!11993)) lt!1045505)))

(declare-fun b!3027152 () Bool)

(declare-fun e!1898869 () Regex!9415)

(assert (=> b!3027152 (= e!1898869 (ite (= (head!6723 s!11993) (c!499613 r!17423)) EmptyExpr!9415 EmptyLang!9415))))

(declare-fun b!3027153 () Bool)

(assert (=> b!3027153 (= e!1898870 (Union!9415 (Concat!14736 call!205830 (regTwo!19342 r!17423)) call!205829))))

(declare-fun b!3027154 () Bool)

(assert (=> b!3027154 (= c!499889 ((_ is Union!9415) r!17423))))

(assert (=> b!3027154 (= e!1898869 e!1898866)))

(declare-fun bm!205827 () Bool)

(assert (=> bm!205827 (= call!205832 (derivativeStep!2664 (ite c!499889 (regTwo!19343 r!17423) (ite c!499885 (reg!9744 r!17423) (regOne!19342 r!17423))) (head!6723 s!11993)))))

(declare-fun b!3027155 () Bool)

(assert (=> b!3027155 (= e!1898868 e!1898869)))

(declare-fun c!499888 () Bool)

(assert (=> b!3027155 (= c!499888 ((_ is ElementMatch!9415) r!17423))))

(declare-fun b!3027156 () Bool)

(assert (=> b!3027156 (= e!1898868 EmptyLang!9415)))

(declare-fun b!3027157 () Bool)

(assert (=> b!3027157 (= e!1898867 (Concat!14736 call!205831 r!17423))))

(assert (= (and d!850501 c!499886) b!3027156))

(assert (= (and d!850501 (not c!499886)) b!3027155))

(assert (= (and b!3027155 c!499888) b!3027152))

(assert (= (and b!3027155 (not c!499888)) b!3027154))

(assert (= (and b!3027154 c!499889) b!3027148))

(assert (= (and b!3027154 (not c!499889)) b!3027149))

(assert (= (and b!3027149 c!499885) b!3027157))

(assert (= (and b!3027149 (not c!499885)) b!3027151))

(assert (= (and b!3027151 c!499887) b!3027153))

(assert (= (and b!3027151 (not c!499887)) b!3027150))

(assert (= (or b!3027153 b!3027150) bm!205826))

(assert (= (or b!3027157 bm!205826) bm!205824))

(assert (= (or b!3027148 bm!205824) bm!205827))

(assert (= (or b!3027148 b!3027153) bm!205825))

(assert (=> bm!205825 m!3365673))

(declare-fun m!3365977 () Bool)

(assert (=> bm!205825 m!3365977))

(assert (=> b!3027151 m!3365783))

(declare-fun m!3365979 () Bool)

(assert (=> d!850501 m!3365979))

(assert (=> d!850501 m!3365395))

(assert (=> bm!205827 m!3365673))

(declare-fun m!3365981 () Bool)

(assert (=> bm!205827 m!3365981))

(assert (=> b!3026730 d!850501))

(declare-fun d!850503 () Bool)

(assert (=> d!850503 (= (head!6723 s!11993) (h!40576 s!11993))))

(assert (=> b!3026730 d!850503))

(declare-fun d!850505 () Bool)

(assert (=> d!850505 (= (tail!4949 s!11993) (t!234345 s!11993))))

(assert (=> b!3026730 d!850505))

(declare-fun d!850507 () Bool)

(assert (=> d!850507 (= (isEmptyExpr!498 lt!1045460) ((_ is EmptyExpr!9415) lt!1045460))))

(assert (=> b!3026778 d!850507))

(declare-fun b!3027158 () Bool)

(declare-fun e!1898883 () Regex!9415)

(declare-fun lt!1045506 () Regex!9415)

(assert (=> b!3027158 (= e!1898883 lt!1045506)))

(declare-fun d!850509 () Bool)

(declare-fun e!1898872 () Bool)

(assert (=> d!850509 e!1898872))

(declare-fun res!1245760 () Bool)

(assert (=> d!850509 (=> (not res!1245760) (not e!1898872))))

(declare-fun lt!1045509 () Regex!9415)

(assert (=> d!850509 (= res!1245760 (validRegex!4148 lt!1045509))))

(declare-fun e!1898874 () Regex!9415)

(assert (=> d!850509 (= lt!1045509 e!1898874)))

(declare-fun c!499897 () Bool)

(assert (=> d!850509 (= c!499897 ((_ is EmptyLang!9415) (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(assert (=> d!850509 (validRegex!4148 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423))))))

(assert (=> d!850509 (= (simplify!394 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))) lt!1045509)))

(declare-fun bm!205828 () Bool)

(declare-fun c!499890 () Bool)

(declare-fun call!205838 () Bool)

(declare-fun lt!1045508 () Regex!9415)

(assert (=> bm!205828 (= call!205838 (isEmptyLang!492 (ite c!499890 lt!1045506 lt!1045508)))))

(declare-fun b!3027159 () Bool)

(declare-fun c!499891 () Bool)

(declare-fun e!1898879 () Bool)

(assert (=> b!3027159 (= c!499891 e!1898879)))

(declare-fun res!1245759 () Bool)

(assert (=> b!3027159 (=> res!1245759 e!1898879)))

(declare-fun call!205839 () Bool)

(assert (=> b!3027159 (= res!1245759 call!205839)))

(declare-fun lt!1045510 () Regex!9415)

(declare-fun call!205833 () Regex!9415)

(assert (=> b!3027159 (= lt!1045510 call!205833)))

(declare-fun e!1898877 () Regex!9415)

(declare-fun e!1898876 () Regex!9415)

(assert (=> b!3027159 (= e!1898877 e!1898876)))

(declare-fun b!3027160 () Bool)

(declare-fun e!1898873 () Regex!9415)

(declare-fun lt!1045511 () Regex!9415)

(assert (=> b!3027160 (= e!1898873 lt!1045511)))

(declare-fun b!3027161 () Bool)

(declare-fun e!1898882 () Regex!9415)

(declare-fun e!1898871 () Regex!9415)

(assert (=> b!3027161 (= e!1898882 e!1898871)))

(declare-fun c!499892 () Bool)

(declare-fun call!205835 () Bool)

(assert (=> b!3027161 (= c!499892 call!205835)))

(declare-fun c!499893 () Bool)

(declare-fun bm!205829 () Bool)

(assert (=> bm!205829 (= call!205833 (simplify!394 (ite c!499893 (reg!9744 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))) (ite c!499890 (regOne!19343 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))) (regTwo!19342 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423))))))))))

(declare-fun b!3027162 () Bool)

(declare-fun e!1898884 () Regex!9415)

(assert (=> b!3027162 (= e!1898884 e!1898883)))

(declare-fun call!205837 () Regex!9415)

(assert (=> b!3027162 (= lt!1045511 call!205837)))

(declare-fun call!205836 () Regex!9415)

(assert (=> b!3027162 (= lt!1045506 call!205836)))

(declare-fun c!499899 () Bool)

(declare-fun call!205834 () Bool)

(assert (=> b!3027162 (= c!499899 call!205834)))

(declare-fun b!3027163 () Bool)

(declare-fun c!499898 () Bool)

(declare-fun lt!1045507 () Regex!9415)

(assert (=> b!3027163 (= c!499898 (isEmptyExpr!498 lt!1045507))))

(declare-fun e!1898881 () Regex!9415)

(assert (=> b!3027163 (= e!1898881 e!1898882)))

(declare-fun bm!205830 () Bool)

(assert (=> bm!205830 (= call!205837 call!205833)))

(declare-fun b!3027164 () Bool)

(declare-fun c!499894 () Bool)

(assert (=> b!3027164 (= c!499894 call!205838)))

(assert (=> b!3027164 (= e!1898883 e!1898873)))

(declare-fun b!3027165 () Bool)

(assert (=> b!3027165 (= e!1898881 EmptyLang!9415)))

(declare-fun b!3027166 () Bool)

(assert (=> b!3027166 (= e!1898871 lt!1045507)))

(declare-fun b!3027167 () Bool)

(declare-fun e!1898880 () Regex!9415)

(assert (=> b!3027167 (= e!1898880 EmptyExpr!9415)))

(declare-fun b!3027168 () Bool)

(assert (=> b!3027168 (= e!1898882 lt!1045508)))

(declare-fun b!3027169 () Bool)

(assert (=> b!3027169 (= e!1898872 (= (nullable!3067 lt!1045509) (nullable!3067 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423))))))))

(declare-fun b!3027170 () Bool)

(assert (=> b!3027170 (= e!1898873 (Union!9415 lt!1045511 lt!1045506))))

(declare-fun bm!205831 () Bool)

(assert (=> bm!205831 (= call!205835 (isEmptyExpr!498 (ite c!499893 lt!1045510 lt!1045508)))))

(declare-fun b!3027171 () Bool)

(assert (=> b!3027171 (= e!1898879 call!205835)))

(declare-fun b!3027172 () Bool)

(declare-fun e!1898878 () Regex!9415)

(assert (=> b!3027172 (= e!1898878 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423))))))

(declare-fun bm!205832 () Bool)

(assert (=> bm!205832 (= call!205839 (isEmptyLang!492 (ite c!499893 lt!1045510 (ite c!499890 lt!1045511 lt!1045507))))))

(declare-fun b!3027173 () Bool)

(assert (=> b!3027173 (= c!499890 ((_ is Union!9415) (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(assert (=> b!3027173 (= e!1898877 e!1898884)))

(declare-fun b!3027174 () Bool)

(assert (=> b!3027174 (= e!1898884 e!1898881)))

(assert (=> b!3027174 (= lt!1045507 call!205836)))

(assert (=> b!3027174 (= lt!1045508 call!205837)))

(declare-fun res!1245761 () Bool)

(assert (=> b!3027174 (= res!1245761 call!205834)))

(declare-fun e!1898875 () Bool)

(assert (=> b!3027174 (=> res!1245761 e!1898875)))

(declare-fun c!499895 () Bool)

(assert (=> b!3027174 (= c!499895 e!1898875)))

(declare-fun b!3027175 () Bool)

(assert (=> b!3027175 (= e!1898874 e!1898878)))

(declare-fun c!499896 () Bool)

(assert (=> b!3027175 (= c!499896 ((_ is ElementMatch!9415) (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(declare-fun bm!205833 () Bool)

(assert (=> bm!205833 (= call!205834 call!205839)))

(declare-fun b!3027176 () Bool)

(assert (=> b!3027176 (= e!1898880 e!1898877)))

(assert (=> b!3027176 (= c!499893 ((_ is Star!9415) (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(declare-fun b!3027177 () Bool)

(assert (=> b!3027177 (= e!1898871 (Concat!14736 lt!1045507 lt!1045508))))

(declare-fun b!3027178 () Bool)

(assert (=> b!3027178 (= e!1898876 (Star!9415 lt!1045510))))

(declare-fun bm!205834 () Bool)

(assert (=> bm!205834 (= call!205836 (simplify!394 (ite c!499890 (regTwo!19343 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))) (regOne!19342 (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))))

(declare-fun b!3027179 () Bool)

(assert (=> b!3027179 (= e!1898874 EmptyLang!9415)))

(declare-fun c!499900 () Bool)

(declare-fun b!3027180 () Bool)

(assert (=> b!3027180 (= c!499900 ((_ is EmptyExpr!9415) (ite c!499747 (reg!9744 r!17423) (ite c!499744 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(assert (=> b!3027180 (= e!1898878 e!1898880)))

(declare-fun b!3027181 () Bool)

(assert (=> b!3027181 (= e!1898876 EmptyExpr!9415)))

(declare-fun b!3027182 () Bool)

(assert (=> b!3027182 (= e!1898875 call!205838)))

(assert (= (and d!850509 c!499897) b!3027179))

(assert (= (and d!850509 (not c!499897)) b!3027175))

(assert (= (and b!3027175 c!499896) b!3027172))

(assert (= (and b!3027175 (not c!499896)) b!3027180))

(assert (= (and b!3027180 c!499900) b!3027167))

(assert (= (and b!3027180 (not c!499900)) b!3027176))

(assert (= (and b!3027176 c!499893) b!3027159))

(assert (= (and b!3027176 (not c!499893)) b!3027173))

(assert (= (and b!3027159 (not res!1245759)) b!3027171))

(assert (= (and b!3027159 c!499891) b!3027181))

(assert (= (and b!3027159 (not c!499891)) b!3027178))

(assert (= (and b!3027173 c!499890) b!3027162))

(assert (= (and b!3027173 (not c!499890)) b!3027174))

(assert (= (and b!3027162 c!499899) b!3027158))

(assert (= (and b!3027162 (not c!499899)) b!3027164))

(assert (= (and b!3027164 c!499894) b!3027160))

(assert (= (and b!3027164 (not c!499894)) b!3027170))

(assert (= (and b!3027174 (not res!1245761)) b!3027182))

(assert (= (and b!3027174 c!499895) b!3027165))

(assert (= (and b!3027174 (not c!499895)) b!3027163))

(assert (= (and b!3027163 c!499898) b!3027168))

(assert (= (and b!3027163 (not c!499898)) b!3027161))

(assert (= (and b!3027161 c!499892) b!3027166))

(assert (= (and b!3027161 (not c!499892)) b!3027177))

(assert (= (or b!3027162 b!3027174) bm!205830))

(assert (= (or b!3027162 b!3027174) bm!205834))

(assert (= (or b!3027162 b!3027174) bm!205833))

(assert (= (or b!3027164 b!3027182) bm!205828))

(assert (= (or b!3027171 b!3027161) bm!205831))

(assert (= (or b!3027159 bm!205830) bm!205829))

(assert (= (or b!3027159 bm!205833) bm!205832))

(assert (= (and d!850509 res!1245760) b!3027169))

(declare-fun m!3365983 () Bool)

(assert (=> bm!205831 m!3365983))

(declare-fun m!3365985 () Bool)

(assert (=> d!850509 m!3365985))

(declare-fun m!3365987 () Bool)

(assert (=> d!850509 m!3365987))

(declare-fun m!3365989 () Bool)

(assert (=> bm!205834 m!3365989))

(declare-fun m!3365991 () Bool)

(assert (=> bm!205832 m!3365991))

(declare-fun m!3365993 () Bool)

(assert (=> bm!205828 m!3365993))

(declare-fun m!3365995 () Bool)

(assert (=> b!3027169 m!3365995))

(declare-fun m!3365997 () Bool)

(assert (=> b!3027169 m!3365997))

(declare-fun m!3365999 () Bool)

(assert (=> bm!205829 m!3365999))

(declare-fun m!3366001 () Bool)

(assert (=> b!3027163 m!3366001))

(assert (=> bm!205738 d!850509))

(assert (=> b!3026734 d!850503))

(declare-fun d!850511 () Bool)

(assert (=> d!850511 (= (head!6723 (_2!20188 lt!1045349)) (h!40576 (_2!20188 lt!1045349)))))

(assert (=> b!3026888 d!850511))

(declare-fun d!850513 () Bool)

(assert (=> d!850513 (= (isEmptyLang!492 (ite c!499813 lt!1045467 lt!1045469)) ((_ is EmptyLang!9415) (ite c!499813 lt!1045467 lt!1045469)))))

(assert (=> bm!205777 d!850513))

(assert (=> b!3026616 d!850503))

(declare-fun d!850515 () Bool)

(assert (=> d!850515 (= (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349))) ((_ is Nil!35156) (tail!4949 (_1!20188 lt!1045349))))))

(assert (=> b!3026807 d!850515))

(assert (=> b!3026807 d!850475))

(assert (=> b!3026811 d!850515))

(assert (=> b!3026811 d!850475))

(declare-fun d!850517 () Bool)

(assert (=> d!850517 (= (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))) (h!40576 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))

(assert (=> b!3026257 d!850517))

(assert (=> d!850363 d!850353))

(assert (=> d!850363 d!850357))

(declare-fun d!850519 () Bool)

(assert (=> d!850519 (matchR!4297 (Concat!14736 lt!1045353 lt!1045354) (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))

(assert (=> d!850519 true))

(declare-fun _$119!421 () Unit!49253)

(assert (=> d!850519 (= (choose!17943 lt!1045353 lt!1045354 (_1!20188 lt!1045349) (_2!20188 lt!1045349)) _$119!421)))

(declare-fun bs!530669 () Bool)

(assert (= bs!530669 d!850519))

(assert (=> bs!530669 m!3365383))

(assert (=> bs!530669 m!3365383))

(assert (=> bs!530669 m!3365385))

(assert (=> d!850363 d!850519))

(assert (=> d!850363 d!850427))

(declare-fun b!3027203 () Bool)

(declare-fun res!1245768 () Bool)

(declare-fun e!1898897 () Bool)

(assert (=> b!3027203 (=> res!1245768 e!1898897)))

(assert (=> b!3027203 (= res!1245768 (not ((_ is ElementMatch!9415) (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349))))))))

(declare-fun e!1898899 () Bool)

(assert (=> b!3027203 (= e!1898899 e!1898897)))

(declare-fun b!3027204 () Bool)

(declare-fun e!1898895 () Bool)

(assert (=> b!3027204 (= e!1898895 e!1898899)))

(declare-fun c!499911 () Bool)

(assert (=> b!3027204 (= c!499911 ((_ is EmptyLang!9415) (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349)))))))

(declare-fun b!3027205 () Bool)

(declare-fun lt!1045514 () Bool)

(assert (=> b!3027205 (= e!1898899 (not lt!1045514))))

(declare-fun b!3027206 () Bool)

(declare-fun res!1245766 () Bool)

(assert (=> b!3027206 (=> res!1245766 e!1898897)))

(declare-fun e!1898901 () Bool)

(assert (=> b!3027206 (= res!1245766 e!1898901)))

(declare-fun res!1245764 () Bool)

(assert (=> b!3027206 (=> (not res!1245764) (not e!1898901))))

(assert (=> b!3027206 (= res!1245764 lt!1045514)))

(declare-fun bm!205837 () Bool)

(declare-fun call!205842 () Bool)

(assert (=> bm!205837 (= call!205842 (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349))))))

(declare-fun b!3027207 () Bool)

(declare-fun res!1245762 () Bool)

(assert (=> b!3027207 (=> (not res!1245762) (not e!1898901))))

(assert (=> b!3027207 (= res!1245762 (not call!205842))))

(declare-fun d!850521 () Bool)

(assert (=> d!850521 e!1898895))

(declare-fun c!499912 () Bool)

(assert (=> d!850521 (= c!499912 ((_ is EmptyExpr!9415) (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349)))))))

(declare-fun e!1898898 () Bool)

(assert (=> d!850521 (= lt!1045514 e!1898898)))

(declare-fun c!499913 () Bool)

(assert (=> d!850521 (= c!499913 (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349))))))

(assert (=> d!850521 (validRegex!4148 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349))))))

(assert (=> d!850521 (= (matchR!4297 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349))) (tail!4949 (_2!20188 lt!1045349))) lt!1045514)))

(declare-fun b!3027208 () Bool)

(declare-fun e!1898900 () Bool)

(assert (=> b!3027208 (= e!1898897 e!1898900)))

(declare-fun res!1245765 () Bool)

(assert (=> b!3027208 (=> (not res!1245765) (not e!1898900))))

(assert (=> b!3027208 (= res!1245765 (not lt!1045514))))

(declare-fun b!3027209 () Bool)

(assert (=> b!3027209 (= e!1898898 (matchR!4297 (derivativeStep!2664 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349))) (head!6723 (tail!4949 (_2!20188 lt!1045349)))) (tail!4949 (tail!4949 (_2!20188 lt!1045349)))))))

(declare-fun b!3027210 () Bool)

(declare-fun e!1898896 () Bool)

(assert (=> b!3027210 (= e!1898896 (not (= (head!6723 (tail!4949 (_2!20188 lt!1045349))) (c!499613 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349)))))))))

(declare-fun b!3027211 () Bool)

(assert (=> b!3027211 (= e!1898900 e!1898896)))

(declare-fun res!1245763 () Bool)

(assert (=> b!3027211 (=> res!1245763 e!1898896)))

(assert (=> b!3027211 (= res!1245763 call!205842)))

(declare-fun b!3027212 () Bool)

(declare-fun res!1245769 () Bool)

(assert (=> b!3027212 (=> res!1245769 e!1898896)))

(assert (=> b!3027212 (= res!1245769 (not (isEmpty!19456 (tail!4949 (tail!4949 (_2!20188 lt!1045349))))))))

(declare-fun b!3027213 () Bool)

(assert (=> b!3027213 (= e!1898901 (= (head!6723 (tail!4949 (_2!20188 lt!1045349))) (c!499613 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349))))))))

(declare-fun b!3027214 () Bool)

(assert (=> b!3027214 (= e!1898898 (nullable!3067 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349)))))))

(declare-fun b!3027215 () Bool)

(assert (=> b!3027215 (= e!1898895 (= lt!1045514 call!205842))))

(declare-fun b!3027216 () Bool)

(declare-fun res!1245767 () Bool)

(assert (=> b!3027216 (=> (not res!1245767) (not e!1898901))))

(assert (=> b!3027216 (= res!1245767 (isEmpty!19456 (tail!4949 (tail!4949 (_2!20188 lt!1045349)))))))

(assert (= (and d!850521 c!499913) b!3027214))

(assert (= (and d!850521 (not c!499913)) b!3027209))

(assert (= (and d!850521 c!499912) b!3027215))

(assert (= (and d!850521 (not c!499912)) b!3027204))

(assert (= (and b!3027204 c!499911) b!3027205))

(assert (= (and b!3027204 (not c!499911)) b!3027203))

(assert (= (and b!3027203 (not res!1245768)) b!3027206))

(assert (= (and b!3027206 res!1245764) b!3027207))

(assert (= (and b!3027207 res!1245762) b!3027216))

(assert (= (and b!3027216 res!1245767) b!3027213))

(assert (= (and b!3027206 (not res!1245766)) b!3027208))

(assert (= (and b!3027208 res!1245765) b!3027211))

(assert (= (and b!3027211 (not res!1245763)) b!3027212))

(assert (= (and b!3027212 (not res!1245769)) b!3027210))

(assert (= (or b!3027215 b!3027207 b!3027211) bm!205837))

(assert (=> b!3027216 m!3365755))

(declare-fun m!3366003 () Bool)

(assert (=> b!3027216 m!3366003))

(assert (=> b!3027216 m!3366003))

(declare-fun m!3366005 () Bool)

(assert (=> b!3027216 m!3366005))

(assert (=> b!3027212 m!3365755))

(assert (=> b!3027212 m!3366003))

(assert (=> b!3027212 m!3366003))

(assert (=> b!3027212 m!3366005))

(assert (=> b!3027214 m!3365793))

(declare-fun m!3366007 () Bool)

(assert (=> b!3027214 m!3366007))

(assert (=> b!3027209 m!3365755))

(declare-fun m!3366009 () Bool)

(assert (=> b!3027209 m!3366009))

(assert (=> b!3027209 m!3365793))

(assert (=> b!3027209 m!3366009))

(declare-fun m!3366011 () Bool)

(assert (=> b!3027209 m!3366011))

(assert (=> b!3027209 m!3365755))

(assert (=> b!3027209 m!3366003))

(assert (=> b!3027209 m!3366011))

(assert (=> b!3027209 m!3366003))

(declare-fun m!3366013 () Bool)

(assert (=> b!3027209 m!3366013))

(assert (=> b!3027213 m!3365755))

(assert (=> b!3027213 m!3366009))

(assert (=> b!3027210 m!3365755))

(assert (=> b!3027210 m!3366009))

(assert (=> bm!205837 m!3365755))

(assert (=> bm!205837 m!3365757))

(assert (=> d!850521 m!3365755))

(assert (=> d!850521 m!3365757))

(assert (=> d!850521 m!3365793))

(declare-fun m!3366015 () Bool)

(assert (=> d!850521 m!3366015))

(assert (=> b!3026884 d!850521))

(declare-fun b!3027217 () Bool)

(declare-fun e!1898902 () Regex!9415)

(declare-fun call!205845 () Regex!9415)

(declare-fun call!205848 () Regex!9415)

(assert (=> b!3027217 (= e!1898902 (Union!9415 call!205845 call!205848))))

(declare-fun b!3027218 () Bool)

(declare-fun e!1898903 () Regex!9415)

(assert (=> b!3027218 (= e!1898902 e!1898903)))

(declare-fun c!499914 () Bool)

(assert (=> b!3027218 (= c!499914 ((_ is Star!9415) (regTwo!19342 r!17423)))))

(declare-fun bm!205840 () Bool)

(declare-fun call!205847 () Regex!9415)

(assert (=> bm!205840 (= call!205847 call!205848)))

(declare-fun c!499918 () Bool)

(declare-fun bm!205841 () Bool)

(assert (=> bm!205841 (= call!205845 (derivativeStep!2664 (ite c!499918 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))) (head!6723 (_2!20188 lt!1045349))))))

(declare-fun b!3027219 () Bool)

(declare-fun e!1898906 () Regex!9415)

(declare-fun call!205846 () Regex!9415)

(assert (=> b!3027219 (= e!1898906 (Union!9415 (Concat!14736 call!205846 (regTwo!19342 (regTwo!19342 r!17423))) EmptyLang!9415))))

(declare-fun b!3027220 () Bool)

(declare-fun c!499916 () Bool)

(assert (=> b!3027220 (= c!499916 (nullable!3067 (regOne!19342 (regTwo!19342 r!17423))))))

(assert (=> b!3027220 (= e!1898903 e!1898906)))

(declare-fun bm!205842 () Bool)

(assert (=> bm!205842 (= call!205846 call!205847)))

(declare-fun d!850523 () Bool)

(declare-fun lt!1045515 () Regex!9415)

(assert (=> d!850523 (validRegex!4148 lt!1045515)))

(declare-fun e!1898904 () Regex!9415)

(assert (=> d!850523 (= lt!1045515 e!1898904)))

(declare-fun c!499915 () Bool)

(assert (=> d!850523 (= c!499915 (or ((_ is EmptyExpr!9415) (regTwo!19342 r!17423)) ((_ is EmptyLang!9415) (regTwo!19342 r!17423))))))

(assert (=> d!850523 (validRegex!4148 (regTwo!19342 r!17423))))

(assert (=> d!850523 (= (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 lt!1045349))) lt!1045515)))

(declare-fun b!3027221 () Bool)

(declare-fun e!1898905 () Regex!9415)

(assert (=> b!3027221 (= e!1898905 (ite (= (head!6723 (_2!20188 lt!1045349)) (c!499613 (regTwo!19342 r!17423))) EmptyExpr!9415 EmptyLang!9415))))

(declare-fun b!3027222 () Bool)

(assert (=> b!3027222 (= e!1898906 (Union!9415 (Concat!14736 call!205846 (regTwo!19342 (regTwo!19342 r!17423))) call!205845))))

(declare-fun b!3027223 () Bool)

(assert (=> b!3027223 (= c!499918 ((_ is Union!9415) (regTwo!19342 r!17423)))))

(assert (=> b!3027223 (= e!1898905 e!1898902)))

(declare-fun bm!205843 () Bool)

(assert (=> bm!205843 (= call!205848 (derivativeStep!2664 (ite c!499918 (regTwo!19343 (regTwo!19342 r!17423)) (ite c!499914 (reg!9744 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))) (head!6723 (_2!20188 lt!1045349))))))

(declare-fun b!3027224 () Bool)

(assert (=> b!3027224 (= e!1898904 e!1898905)))

(declare-fun c!499917 () Bool)

(assert (=> b!3027224 (= c!499917 ((_ is ElementMatch!9415) (regTwo!19342 r!17423)))))

(declare-fun b!3027225 () Bool)

(assert (=> b!3027225 (= e!1898904 EmptyLang!9415)))

(declare-fun b!3027226 () Bool)

(assert (=> b!3027226 (= e!1898903 (Concat!14736 call!205847 (regTwo!19342 r!17423)))))

(assert (= (and d!850523 c!499915) b!3027225))

(assert (= (and d!850523 (not c!499915)) b!3027224))

(assert (= (and b!3027224 c!499917) b!3027221))

(assert (= (and b!3027224 (not c!499917)) b!3027223))

(assert (= (and b!3027223 c!499918) b!3027217))

(assert (= (and b!3027223 (not c!499918)) b!3027218))

(assert (= (and b!3027218 c!499914) b!3027226))

(assert (= (and b!3027218 (not c!499914)) b!3027220))

(assert (= (and b!3027220 c!499916) b!3027222))

(assert (= (and b!3027220 (not c!499916)) b!3027219))

(assert (= (or b!3027222 b!3027219) bm!205842))

(assert (= (or b!3027226 bm!205842) bm!205840))

(assert (= (or b!3027217 bm!205840) bm!205843))

(assert (= (or b!3027217 b!3027222) bm!205841))

(assert (=> bm!205841 m!3365761))

(declare-fun m!3366017 () Bool)

(assert (=> bm!205841 m!3366017))

(declare-fun m!3366019 () Bool)

(assert (=> b!3027220 m!3366019))

(declare-fun m!3366021 () Bool)

(assert (=> d!850523 m!3366021))

(assert (=> d!850523 m!3365715))

(assert (=> bm!205843 m!3365761))

(declare-fun m!3366023 () Bool)

(assert (=> bm!205843 m!3366023))

(assert (=> b!3026884 d!850523))

(assert (=> b!3026884 d!850511))

(declare-fun d!850525 () Bool)

(assert (=> d!850525 (= (tail!4949 (_2!20188 lt!1045349)) (t!234345 (_2!20188 lt!1045349)))))

(assert (=> b!3026884 d!850525))

(declare-fun d!850527 () Bool)

(declare-fun nullableFct!875 (Regex!9415) Bool)

(assert (=> d!850527 (= (nullable!3067 (reg!9744 lt!1045354)) (nullableFct!875 (reg!9744 lt!1045354)))))

(declare-fun bs!530670 () Bool)

(assert (= bs!530670 d!850527))

(declare-fun m!3366025 () Bool)

(assert (=> bs!530670 m!3366025))

(assert (=> b!3026900 d!850527))

(declare-fun d!850529 () Bool)

(assert (=> d!850529 (= (isEmptyLang!492 (ite c!499744 lt!1045435 lt!1045437)) ((_ is EmptyLang!9415) (ite c!499744 lt!1045435 lt!1045437)))))

(assert (=> bm!205737 d!850529))

(assert (=> b!3026849 d!850511))

(declare-fun b!3027230 () Bool)

(declare-fun e!1898907 () Bool)

(declare-fun lt!1045516 () List!35280)

(assert (=> b!3027230 (= e!1898907 (or (not (= (_2!20188 (get!10962 lt!1045486)) Nil!35156)) (= lt!1045516 (_1!20188 (get!10962 lt!1045486)))))))

(declare-fun d!850531 () Bool)

(assert (=> d!850531 e!1898907))

(declare-fun res!1245771 () Bool)

(assert (=> d!850531 (=> (not res!1245771) (not e!1898907))))

(assert (=> d!850531 (= res!1245771 (= (content!4791 lt!1045516) ((_ map or) (content!4791 (_1!20188 (get!10962 lt!1045486))) (content!4791 (_2!20188 (get!10962 lt!1045486))))))))

(declare-fun e!1898908 () List!35280)

(assert (=> d!850531 (= lt!1045516 e!1898908)))

(declare-fun c!499919 () Bool)

(assert (=> d!850531 (= c!499919 ((_ is Nil!35156) (_1!20188 (get!10962 lt!1045486))))))

(assert (=> d!850531 (= (++!8434 (_1!20188 (get!10962 lt!1045486)) (_2!20188 (get!10962 lt!1045486))) lt!1045516)))

(declare-fun b!3027227 () Bool)

(assert (=> b!3027227 (= e!1898908 (_2!20188 (get!10962 lt!1045486)))))

(declare-fun b!3027228 () Bool)

(assert (=> b!3027228 (= e!1898908 (Cons!35156 (h!40576 (_1!20188 (get!10962 lt!1045486))) (++!8434 (t!234345 (_1!20188 (get!10962 lt!1045486))) (_2!20188 (get!10962 lt!1045486)))))))

(declare-fun b!3027229 () Bool)

(declare-fun res!1245770 () Bool)

(assert (=> b!3027229 (=> (not res!1245770) (not e!1898907))))

(assert (=> b!3027229 (= res!1245770 (= (size!26528 lt!1045516) (+ (size!26528 (_1!20188 (get!10962 lt!1045486))) (size!26528 (_2!20188 (get!10962 lt!1045486))))))))

(assert (= (and d!850531 c!499919) b!3027227))

(assert (= (and d!850531 (not c!499919)) b!3027228))

(assert (= (and d!850531 res!1245771) b!3027229))

(assert (= (and b!3027229 res!1245770) b!3027230))

(declare-fun m!3366027 () Bool)

(assert (=> d!850531 m!3366027))

(declare-fun m!3366029 () Bool)

(assert (=> d!850531 m!3366029))

(declare-fun m!3366031 () Bool)

(assert (=> d!850531 m!3366031))

(declare-fun m!3366033 () Bool)

(assert (=> b!3027228 m!3366033))

(declare-fun m!3366035 () Bool)

(assert (=> b!3027229 m!3366035))

(declare-fun m!3366037 () Bool)

(assert (=> b!3027229 m!3366037))

(declare-fun m!3366039 () Bool)

(assert (=> b!3027229 m!3366039))

(assert (=> b!3026949 d!850531))

(assert (=> b!3026949 d!850461))

(declare-fun d!850533 () Bool)

(assert (=> d!850533 true))

(assert (=> d!850533 true))

(declare-fun res!1245774 () Bool)

(assert (=> d!850533 (= (choose!17951 lambda!113074) res!1245774)))

(assert (=> d!850453 d!850533))

(declare-fun d!850535 () Bool)

(assert (=> d!850535 (= (nullable!3067 (reg!9744 r!17423)) (nullableFct!875 (reg!9744 r!17423)))))

(declare-fun bs!530671 () Bool)

(assert (= bs!530671 d!850535))

(declare-fun m!3366041 () Bool)

(assert (=> bs!530671 m!3366041))

(assert (=> b!3026962 d!850535))

(declare-fun b!3027231 () Bool)

(declare-fun res!1245781 () Bool)

(declare-fun e!1898911 () Bool)

(assert (=> b!3027231 (=> res!1245781 e!1898911)))

(assert (=> b!3027231 (= res!1245781 (not ((_ is ElementMatch!9415) (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993)))))))

(declare-fun e!1898913 () Bool)

(assert (=> b!3027231 (= e!1898913 e!1898911)))

(declare-fun b!3027232 () Bool)

(declare-fun e!1898909 () Bool)

(assert (=> b!3027232 (= e!1898909 e!1898913)))

(declare-fun c!499920 () Bool)

(assert (=> b!3027232 (= c!499920 ((_ is EmptyLang!9415) (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993))))))

(declare-fun b!3027233 () Bool)

(declare-fun lt!1045517 () Bool)

(assert (=> b!3027233 (= e!1898913 (not lt!1045517))))

(declare-fun b!3027234 () Bool)

(declare-fun res!1245779 () Bool)

(assert (=> b!3027234 (=> res!1245779 e!1898911)))

(declare-fun e!1898915 () Bool)

(assert (=> b!3027234 (= res!1245779 e!1898915)))

(declare-fun res!1245777 () Bool)

(assert (=> b!3027234 (=> (not res!1245777) (not e!1898915))))

(assert (=> b!3027234 (= res!1245777 lt!1045517)))

(declare-fun bm!205848 () Bool)

(declare-fun call!205853 () Bool)

(assert (=> bm!205848 (= call!205853 (isEmpty!19456 (tail!4949 s!11993)))))

(declare-fun b!3027235 () Bool)

(declare-fun res!1245775 () Bool)

(assert (=> b!3027235 (=> (not res!1245775) (not e!1898915))))

(assert (=> b!3027235 (= res!1245775 (not call!205853))))

(declare-fun d!850537 () Bool)

(assert (=> d!850537 e!1898909))

(declare-fun c!499921 () Bool)

(assert (=> d!850537 (= c!499921 ((_ is EmptyExpr!9415) (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993))))))

(declare-fun e!1898912 () Bool)

(assert (=> d!850537 (= lt!1045517 e!1898912)))

(declare-fun c!499922 () Bool)

(assert (=> d!850537 (= c!499922 (isEmpty!19456 (tail!4949 s!11993)))))

(assert (=> d!850537 (validRegex!4148 (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993)))))

(assert (=> d!850537 (= (matchR!4297 (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993)) (tail!4949 s!11993)) lt!1045517)))

(declare-fun b!3027236 () Bool)

(declare-fun e!1898914 () Bool)

(assert (=> b!3027236 (= e!1898911 e!1898914)))

(declare-fun res!1245778 () Bool)

(assert (=> b!3027236 (=> (not res!1245778) (not e!1898914))))

(assert (=> b!3027236 (= res!1245778 (not lt!1045517))))

(declare-fun b!3027237 () Bool)

(assert (=> b!3027237 (= e!1898912 (matchR!4297 (derivativeStep!2664 (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993)) (head!6723 (tail!4949 s!11993))) (tail!4949 (tail!4949 s!11993))))))

(declare-fun b!3027238 () Bool)

(declare-fun e!1898910 () Bool)

(assert (=> b!3027238 (= e!1898910 (not (= (head!6723 (tail!4949 s!11993)) (c!499613 (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993))))))))

(declare-fun b!3027239 () Bool)

(assert (=> b!3027239 (= e!1898914 e!1898910)))

(declare-fun res!1245776 () Bool)

(assert (=> b!3027239 (=> res!1245776 e!1898910)))

(assert (=> b!3027239 (= res!1245776 call!205853)))

(declare-fun b!3027240 () Bool)

(declare-fun res!1245782 () Bool)

(assert (=> b!3027240 (=> res!1245782 e!1898910)))

(assert (=> b!3027240 (= res!1245782 (not (isEmpty!19456 (tail!4949 (tail!4949 s!11993)))))))

(declare-fun b!3027241 () Bool)

(assert (=> b!3027241 (= e!1898915 (= (head!6723 (tail!4949 s!11993)) (c!499613 (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993)))))))

(declare-fun b!3027242 () Bool)

(assert (=> b!3027242 (= e!1898912 (nullable!3067 (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993))))))

(declare-fun b!3027243 () Bool)

(assert (=> b!3027243 (= e!1898909 (= lt!1045517 call!205853))))

(declare-fun b!3027244 () Bool)

(declare-fun res!1245780 () Bool)

(assert (=> b!3027244 (=> (not res!1245780) (not e!1898915))))

(assert (=> b!3027244 (= res!1245780 (isEmpty!19456 (tail!4949 (tail!4949 s!11993))))))

(assert (= (and d!850537 c!499922) b!3027242))

(assert (= (and d!850537 (not c!499922)) b!3027237))

(assert (= (and d!850537 c!499921) b!3027243))

(assert (= (and d!850537 (not c!499921)) b!3027232))

(assert (= (and b!3027232 c!499920) b!3027233))

(assert (= (and b!3027232 (not c!499920)) b!3027231))

(assert (= (and b!3027231 (not res!1245781)) b!3027234))

(assert (= (and b!3027234 res!1245777) b!3027235))

(assert (= (and b!3027235 res!1245775) b!3027244))

(assert (= (and b!3027244 res!1245780) b!3027241))

(assert (= (and b!3027234 (not res!1245779)) b!3027236))

(assert (= (and b!3027236 res!1245778) b!3027239))

(assert (= (and b!3027239 (not res!1245776)) b!3027240))

(assert (= (and b!3027240 (not res!1245782)) b!3027238))

(assert (= (or b!3027243 b!3027235 b!3027239) bm!205848))

(assert (=> b!3027244 m!3365667))

(assert (=> b!3027244 m!3365963))

(assert (=> b!3027244 m!3365963))

(assert (=> b!3027244 m!3365965))

(assert (=> b!3027240 m!3365667))

(assert (=> b!3027240 m!3365963))

(assert (=> b!3027240 m!3365963))

(assert (=> b!3027240 m!3365965))

(assert (=> b!3027242 m!3365675))

(declare-fun m!3366043 () Bool)

(assert (=> b!3027242 m!3366043))

(assert (=> b!3027237 m!3365667))

(assert (=> b!3027237 m!3365969))

(assert (=> b!3027237 m!3365675))

(assert (=> b!3027237 m!3365969))

(declare-fun m!3366045 () Bool)

(assert (=> b!3027237 m!3366045))

(assert (=> b!3027237 m!3365667))

(assert (=> b!3027237 m!3365963))

(assert (=> b!3027237 m!3366045))

(assert (=> b!3027237 m!3365963))

(declare-fun m!3366047 () Bool)

(assert (=> b!3027237 m!3366047))

(assert (=> b!3027241 m!3365667))

(assert (=> b!3027241 m!3365969))

(assert (=> b!3027238 m!3365667))

(assert (=> b!3027238 m!3365969))

(assert (=> bm!205848 m!3365667))

(assert (=> bm!205848 m!3365669))

(assert (=> d!850537 m!3365667))

(assert (=> d!850537 m!3365669))

(assert (=> d!850537 m!3365675))

(declare-fun m!3366049 () Bool)

(assert (=> d!850537 m!3366049))

(assert (=> b!3026612 d!850537))

(declare-fun b!3027245 () Bool)

(declare-fun e!1898916 () Regex!9415)

(declare-fun call!205854 () Regex!9415)

(declare-fun call!205857 () Regex!9415)

(assert (=> b!3027245 (= e!1898916 (Union!9415 call!205854 call!205857))))

(declare-fun b!3027246 () Bool)

(declare-fun e!1898917 () Regex!9415)

(assert (=> b!3027246 (= e!1898916 e!1898917)))

(declare-fun c!499923 () Bool)

(assert (=> b!3027246 (= c!499923 ((_ is Star!9415) (simplify!394 r!17423)))))

(declare-fun bm!205849 () Bool)

(declare-fun call!205856 () Regex!9415)

(assert (=> bm!205849 (= call!205856 call!205857)))

(declare-fun c!499927 () Bool)

(declare-fun bm!205850 () Bool)

(assert (=> bm!205850 (= call!205854 (derivativeStep!2664 (ite c!499927 (regOne!19343 (simplify!394 r!17423)) (regTwo!19342 (simplify!394 r!17423))) (head!6723 s!11993)))))

(declare-fun b!3027247 () Bool)

(declare-fun e!1898920 () Regex!9415)

(declare-fun call!205855 () Regex!9415)

(assert (=> b!3027247 (= e!1898920 (Union!9415 (Concat!14736 call!205855 (regTwo!19342 (simplify!394 r!17423))) EmptyLang!9415))))

(declare-fun b!3027248 () Bool)

(declare-fun c!499925 () Bool)

(assert (=> b!3027248 (= c!499925 (nullable!3067 (regOne!19342 (simplify!394 r!17423))))))

(assert (=> b!3027248 (= e!1898917 e!1898920)))

(declare-fun bm!205851 () Bool)

(assert (=> bm!205851 (= call!205855 call!205856)))

(declare-fun d!850539 () Bool)

(declare-fun lt!1045518 () Regex!9415)

(assert (=> d!850539 (validRegex!4148 lt!1045518)))

(declare-fun e!1898918 () Regex!9415)

(assert (=> d!850539 (= lt!1045518 e!1898918)))

(declare-fun c!499924 () Bool)

(assert (=> d!850539 (= c!499924 (or ((_ is EmptyExpr!9415) (simplify!394 r!17423)) ((_ is EmptyLang!9415) (simplify!394 r!17423))))))

(assert (=> d!850539 (validRegex!4148 (simplify!394 r!17423))))

(assert (=> d!850539 (= (derivativeStep!2664 (simplify!394 r!17423) (head!6723 s!11993)) lt!1045518)))

(declare-fun b!3027249 () Bool)

(declare-fun e!1898919 () Regex!9415)

(assert (=> b!3027249 (= e!1898919 (ite (= (head!6723 s!11993) (c!499613 (simplify!394 r!17423))) EmptyExpr!9415 EmptyLang!9415))))

(declare-fun b!3027250 () Bool)

(assert (=> b!3027250 (= e!1898920 (Union!9415 (Concat!14736 call!205855 (regTwo!19342 (simplify!394 r!17423))) call!205854))))

(declare-fun b!3027251 () Bool)

(assert (=> b!3027251 (= c!499927 ((_ is Union!9415) (simplify!394 r!17423)))))

(assert (=> b!3027251 (= e!1898919 e!1898916)))

(declare-fun bm!205852 () Bool)

(assert (=> bm!205852 (= call!205857 (derivativeStep!2664 (ite c!499927 (regTwo!19343 (simplify!394 r!17423)) (ite c!499923 (reg!9744 (simplify!394 r!17423)) (regOne!19342 (simplify!394 r!17423)))) (head!6723 s!11993)))))

(declare-fun b!3027252 () Bool)

(assert (=> b!3027252 (= e!1898918 e!1898919)))

(declare-fun c!499926 () Bool)

(assert (=> b!3027252 (= c!499926 ((_ is ElementMatch!9415) (simplify!394 r!17423)))))

(declare-fun b!3027253 () Bool)

(assert (=> b!3027253 (= e!1898918 EmptyLang!9415)))

(declare-fun b!3027254 () Bool)

(assert (=> b!3027254 (= e!1898917 (Concat!14736 call!205856 (simplify!394 r!17423)))))

(assert (= (and d!850539 c!499924) b!3027253))

(assert (= (and d!850539 (not c!499924)) b!3027252))

(assert (= (and b!3027252 c!499926) b!3027249))

(assert (= (and b!3027252 (not c!499926)) b!3027251))

(assert (= (and b!3027251 c!499927) b!3027245))

(assert (= (and b!3027251 (not c!499927)) b!3027246))

(assert (= (and b!3027246 c!499923) b!3027254))

(assert (= (and b!3027246 (not c!499923)) b!3027248))

(assert (= (and b!3027248 c!499925) b!3027250))

(assert (= (and b!3027248 (not c!499925)) b!3027247))

(assert (= (or b!3027250 b!3027247) bm!205851))

(assert (= (or b!3027254 bm!205851) bm!205849))

(assert (= (or b!3027245 bm!205849) bm!205852))

(assert (= (or b!3027245 b!3027250) bm!205850))

(assert (=> bm!205850 m!3365673))

(declare-fun m!3366051 () Bool)

(assert (=> bm!205850 m!3366051))

(declare-fun m!3366053 () Bool)

(assert (=> b!3027248 m!3366053))

(declare-fun m!3366055 () Bool)

(assert (=> d!850539 m!3366055))

(assert (=> d!850539 m!3365379))

(assert (=> d!850539 m!3365679))

(assert (=> bm!205852 m!3365673))

(declare-fun m!3366057 () Bool)

(assert (=> bm!205852 m!3366057))

(assert (=> b!3026612 d!850539))

(assert (=> b!3026612 d!850503))

(assert (=> b!3026612 d!850505))

(assert (=> b!3026908 d!850473))

(declare-fun b!3027255 () Bool)

(declare-fun res!1245789 () Bool)

(declare-fun e!1898923 () Bool)

(assert (=> b!3027255 (=> res!1245789 e!1898923)))

(assert (=> b!3027255 (= res!1245789 (not ((_ is ElementMatch!9415) (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349))))))))

(declare-fun e!1898925 () Bool)

(assert (=> b!3027255 (= e!1898925 e!1898923)))

(declare-fun b!3027256 () Bool)

(declare-fun e!1898921 () Bool)

(assert (=> b!3027256 (= e!1898921 e!1898925)))

(declare-fun c!499928 () Bool)

(assert (=> b!3027256 (= c!499928 ((_ is EmptyLang!9415) (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349)))))))

(declare-fun b!3027257 () Bool)

(declare-fun lt!1045519 () Bool)

(assert (=> b!3027257 (= e!1898925 (not lt!1045519))))

(declare-fun b!3027258 () Bool)

(declare-fun res!1245787 () Bool)

(assert (=> b!3027258 (=> res!1245787 e!1898923)))

(declare-fun e!1898927 () Bool)

(assert (=> b!3027258 (= res!1245787 e!1898927)))

(declare-fun res!1245785 () Bool)

(assert (=> b!3027258 (=> (not res!1245785) (not e!1898927))))

(assert (=> b!3027258 (= res!1245785 lt!1045519)))

(declare-fun bm!205853 () Bool)

(declare-fun call!205858 () Bool)

(assert (=> bm!205853 (= call!205858 (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349))))))

(declare-fun b!3027259 () Bool)

(declare-fun res!1245783 () Bool)

(assert (=> b!3027259 (=> (not res!1245783) (not e!1898927))))

(assert (=> b!3027259 (= res!1245783 (not call!205858))))

(declare-fun d!850541 () Bool)

(assert (=> d!850541 e!1898921))

(declare-fun c!499929 () Bool)

(assert (=> d!850541 (= c!499929 ((_ is EmptyExpr!9415) (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349)))))))

(declare-fun e!1898924 () Bool)

(assert (=> d!850541 (= lt!1045519 e!1898924)))

(declare-fun c!499930 () Bool)

(assert (=> d!850541 (= c!499930 (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349))))))

(assert (=> d!850541 (validRegex!4148 (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349))))))

(assert (=> d!850541 (= (matchR!4297 (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349))) (tail!4949 (_2!20188 lt!1045349))) lt!1045519)))

(declare-fun b!3027260 () Bool)

(declare-fun e!1898926 () Bool)

(assert (=> b!3027260 (= e!1898923 e!1898926)))

(declare-fun res!1245786 () Bool)

(assert (=> b!3027260 (=> (not res!1245786) (not e!1898926))))

(assert (=> b!3027260 (= res!1245786 (not lt!1045519))))

(declare-fun b!3027261 () Bool)

(assert (=> b!3027261 (= e!1898924 (matchR!4297 (derivativeStep!2664 (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349))) (head!6723 (tail!4949 (_2!20188 lt!1045349)))) (tail!4949 (tail!4949 (_2!20188 lt!1045349)))))))

(declare-fun b!3027262 () Bool)

(declare-fun e!1898922 () Bool)

(assert (=> b!3027262 (= e!1898922 (not (= (head!6723 (tail!4949 (_2!20188 lt!1045349))) (c!499613 (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349)))))))))

(declare-fun b!3027263 () Bool)

(assert (=> b!3027263 (= e!1898926 e!1898922)))

(declare-fun res!1245784 () Bool)

(assert (=> b!3027263 (=> res!1245784 e!1898922)))

(assert (=> b!3027263 (= res!1245784 call!205858)))

(declare-fun b!3027264 () Bool)

(declare-fun res!1245790 () Bool)

(assert (=> b!3027264 (=> res!1245790 e!1898922)))

(assert (=> b!3027264 (= res!1245790 (not (isEmpty!19456 (tail!4949 (tail!4949 (_2!20188 lt!1045349))))))))

(declare-fun b!3027265 () Bool)

(assert (=> b!3027265 (= e!1898927 (= (head!6723 (tail!4949 (_2!20188 lt!1045349))) (c!499613 (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349))))))))

(declare-fun b!3027266 () Bool)

(assert (=> b!3027266 (= e!1898924 (nullable!3067 (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349)))))))

(declare-fun b!3027267 () Bool)

(assert (=> b!3027267 (= e!1898921 (= lt!1045519 call!205858))))

(declare-fun b!3027268 () Bool)

(declare-fun res!1245788 () Bool)

(assert (=> b!3027268 (=> (not res!1245788) (not e!1898927))))

(assert (=> b!3027268 (= res!1245788 (isEmpty!19456 (tail!4949 (tail!4949 (_2!20188 lt!1045349)))))))

(assert (= (and d!850541 c!499930) b!3027266))

(assert (= (and d!850541 (not c!499930)) b!3027261))

(assert (= (and d!850541 c!499929) b!3027267))

(assert (= (and d!850541 (not c!499929)) b!3027256))

(assert (= (and b!3027256 c!499928) b!3027257))

(assert (= (and b!3027256 (not c!499928)) b!3027255))

(assert (= (and b!3027255 (not res!1245789)) b!3027258))

(assert (= (and b!3027258 res!1245785) b!3027259))

(assert (= (and b!3027259 res!1245783) b!3027268))

(assert (= (and b!3027268 res!1245788) b!3027265))

(assert (= (and b!3027258 (not res!1245787)) b!3027260))

(assert (= (and b!3027260 res!1245786) b!3027263))

(assert (= (and b!3027263 (not res!1245784)) b!3027264))

(assert (= (and b!3027264 (not res!1245790)) b!3027262))

(assert (= (or b!3027267 b!3027259 b!3027263) bm!205853))

(assert (=> b!3027268 m!3365755))

(assert (=> b!3027268 m!3366003))

(assert (=> b!3027268 m!3366003))

(assert (=> b!3027268 m!3366005))

(assert (=> b!3027264 m!3365755))

(assert (=> b!3027264 m!3366003))

(assert (=> b!3027264 m!3366003))

(assert (=> b!3027264 m!3366005))

(assert (=> b!3027266 m!3365763))

(declare-fun m!3366059 () Bool)

(assert (=> b!3027266 m!3366059))

(assert (=> b!3027261 m!3365755))

(assert (=> b!3027261 m!3366009))

(assert (=> b!3027261 m!3365763))

(assert (=> b!3027261 m!3366009))

(declare-fun m!3366061 () Bool)

(assert (=> b!3027261 m!3366061))

(assert (=> b!3027261 m!3365755))

(assert (=> b!3027261 m!3366003))

(assert (=> b!3027261 m!3366061))

(assert (=> b!3027261 m!3366003))

(declare-fun m!3366063 () Bool)

(assert (=> b!3027261 m!3366063))

(assert (=> b!3027265 m!3365755))

(assert (=> b!3027265 m!3366009))

(assert (=> b!3027262 m!3365755))

(assert (=> b!3027262 m!3366009))

(assert (=> bm!205853 m!3365755))

(assert (=> bm!205853 m!3365757))

(assert (=> d!850541 m!3365755))

(assert (=> d!850541 m!3365757))

(assert (=> d!850541 m!3365763))

(declare-fun m!3366065 () Bool)

(assert (=> d!850541 m!3366065))

(assert (=> b!3026845 d!850541))

(declare-fun b!3027269 () Bool)

(declare-fun e!1898928 () Regex!9415)

(declare-fun call!205859 () Regex!9415)

(declare-fun call!205862 () Regex!9415)

(assert (=> b!3027269 (= e!1898928 (Union!9415 call!205859 call!205862))))

(declare-fun b!3027270 () Bool)

(declare-fun e!1898929 () Regex!9415)

(assert (=> b!3027270 (= e!1898928 e!1898929)))

(declare-fun c!499931 () Bool)

(assert (=> b!3027270 (= c!499931 ((_ is Star!9415) lt!1045354))))

(declare-fun bm!205854 () Bool)

(declare-fun call!205861 () Regex!9415)

(assert (=> bm!205854 (= call!205861 call!205862)))

(declare-fun c!499935 () Bool)

(declare-fun bm!205855 () Bool)

(assert (=> bm!205855 (= call!205859 (derivativeStep!2664 (ite c!499935 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)) (head!6723 (_2!20188 lt!1045349))))))

(declare-fun b!3027271 () Bool)

(declare-fun e!1898932 () Regex!9415)

(declare-fun call!205860 () Regex!9415)

(assert (=> b!3027271 (= e!1898932 (Union!9415 (Concat!14736 call!205860 (regTwo!19342 lt!1045354)) EmptyLang!9415))))

(declare-fun b!3027272 () Bool)

(declare-fun c!499933 () Bool)

(assert (=> b!3027272 (= c!499933 (nullable!3067 (regOne!19342 lt!1045354)))))

(assert (=> b!3027272 (= e!1898929 e!1898932)))

(declare-fun bm!205856 () Bool)

(assert (=> bm!205856 (= call!205860 call!205861)))

(declare-fun d!850543 () Bool)

(declare-fun lt!1045520 () Regex!9415)

(assert (=> d!850543 (validRegex!4148 lt!1045520)))

(declare-fun e!1898930 () Regex!9415)

(assert (=> d!850543 (= lt!1045520 e!1898930)))

(declare-fun c!499932 () Bool)

(assert (=> d!850543 (= c!499932 (or ((_ is EmptyExpr!9415) lt!1045354) ((_ is EmptyLang!9415) lt!1045354)))))

(assert (=> d!850543 (validRegex!4148 lt!1045354)))

(assert (=> d!850543 (= (derivativeStep!2664 lt!1045354 (head!6723 (_2!20188 lt!1045349))) lt!1045520)))

(declare-fun b!3027273 () Bool)

(declare-fun e!1898931 () Regex!9415)

(assert (=> b!3027273 (= e!1898931 (ite (= (head!6723 (_2!20188 lt!1045349)) (c!499613 lt!1045354)) EmptyExpr!9415 EmptyLang!9415))))

(declare-fun b!3027274 () Bool)

(assert (=> b!3027274 (= e!1898932 (Union!9415 (Concat!14736 call!205860 (regTwo!19342 lt!1045354)) call!205859))))

(declare-fun b!3027275 () Bool)

(assert (=> b!3027275 (= c!499935 ((_ is Union!9415) lt!1045354))))

(assert (=> b!3027275 (= e!1898931 e!1898928)))

(declare-fun bm!205857 () Bool)

(assert (=> bm!205857 (= call!205862 (derivativeStep!2664 (ite c!499935 (regTwo!19343 lt!1045354) (ite c!499931 (reg!9744 lt!1045354) (regOne!19342 lt!1045354))) (head!6723 (_2!20188 lt!1045349))))))

(declare-fun b!3027276 () Bool)

(assert (=> b!3027276 (= e!1898930 e!1898931)))

(declare-fun c!499934 () Bool)

(assert (=> b!3027276 (= c!499934 ((_ is ElementMatch!9415) lt!1045354))))

(declare-fun b!3027277 () Bool)

(assert (=> b!3027277 (= e!1898930 EmptyLang!9415)))

(declare-fun b!3027278 () Bool)

(assert (=> b!3027278 (= e!1898929 (Concat!14736 call!205861 lt!1045354))))

(assert (= (and d!850543 c!499932) b!3027277))

(assert (= (and d!850543 (not c!499932)) b!3027276))

(assert (= (and b!3027276 c!499934) b!3027273))

(assert (= (and b!3027276 (not c!499934)) b!3027275))

(assert (= (and b!3027275 c!499935) b!3027269))

(assert (= (and b!3027275 (not c!499935)) b!3027270))

(assert (= (and b!3027270 c!499931) b!3027278))

(assert (= (and b!3027270 (not c!499931)) b!3027272))

(assert (= (and b!3027272 c!499933) b!3027274))

(assert (= (and b!3027272 (not c!499933)) b!3027271))

(assert (= (or b!3027274 b!3027271) bm!205856))

(assert (= (or b!3027278 bm!205856) bm!205854))

(assert (= (or b!3027269 bm!205854) bm!205857))

(assert (= (or b!3027269 b!3027274) bm!205855))

(assert (=> bm!205855 m!3365761))

(declare-fun m!3366067 () Bool)

(assert (=> bm!205855 m!3366067))

(declare-fun m!3366069 () Bool)

(assert (=> b!3027272 m!3366069))

(declare-fun m!3366071 () Bool)

(assert (=> d!850543 m!3366071))

(assert (=> d!850543 m!3365393))

(assert (=> bm!205857 m!3365761))

(declare-fun m!3366073 () Bool)

(assert (=> bm!205857 m!3366073))

(assert (=> b!3026845 d!850543))

(assert (=> b!3026845 d!850511))

(assert (=> b!3026845 d!850525))

(declare-fun d!850545 () Bool)

(assert (=> d!850545 (= (nullable!3067 (regOne!19342 r!17423)) (nullableFct!875 (regOne!19342 r!17423)))))

(declare-fun bs!530672 () Bool)

(assert (= bs!530672 d!850545))

(declare-fun m!3366075 () Bool)

(assert (=> bs!530672 m!3366075))

(assert (=> b!3026912 d!850545))

(declare-fun d!850547 () Bool)

(assert (=> d!850547 (= (isEmptyExpr!498 (ite c!499793 lt!1045463 lt!1045461)) ((_ is EmptyExpr!9415) (ite c!499793 lt!1045463 lt!1045461)))))

(assert (=> bm!205762 d!850547))

(declare-fun b!3027279 () Bool)

(declare-fun res!1245797 () Bool)

(declare-fun e!1898935 () Bool)

(assert (=> b!3027279 (=> res!1245797 e!1898935)))

(assert (=> b!3027279 (= res!1245797 (not ((_ is ElementMatch!9415) (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))))

(declare-fun e!1898937 () Bool)

(assert (=> b!3027279 (= e!1898937 e!1898935)))

(declare-fun b!3027280 () Bool)

(declare-fun e!1898933 () Bool)

(assert (=> b!3027280 (= e!1898933 e!1898937)))

(declare-fun c!499936 () Bool)

(assert (=> b!3027280 (= c!499936 ((_ is EmptyLang!9415) (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))))

(declare-fun b!3027281 () Bool)

(declare-fun lt!1045521 () Bool)

(assert (=> b!3027281 (= e!1898937 (not lt!1045521))))

(declare-fun b!3027282 () Bool)

(declare-fun res!1245795 () Bool)

(assert (=> b!3027282 (=> res!1245795 e!1898935)))

(declare-fun e!1898939 () Bool)

(assert (=> b!3027282 (= res!1245795 e!1898939)))

(declare-fun res!1245793 () Bool)

(assert (=> b!3027282 (=> (not res!1245793) (not e!1898939))))

(assert (=> b!3027282 (= res!1245793 lt!1045521)))

(declare-fun bm!205858 () Bool)

(declare-fun call!205863 () Bool)

(assert (=> bm!205858 (= call!205863 (isEmpty!19456 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))

(declare-fun b!3027283 () Bool)

(declare-fun res!1245791 () Bool)

(assert (=> b!3027283 (=> (not res!1245791) (not e!1898939))))

(assert (=> b!3027283 (= res!1245791 (not call!205863))))

(declare-fun d!850549 () Bool)

(assert (=> d!850549 e!1898933))

(declare-fun c!499937 () Bool)

(assert (=> d!850549 (= c!499937 ((_ is EmptyExpr!9415) (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))))

(declare-fun e!1898936 () Bool)

(assert (=> d!850549 (= lt!1045521 e!1898936)))

(declare-fun c!499938 () Bool)

(assert (=> d!850549 (= c!499938 (isEmpty!19456 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))

(assert (=> d!850549 (validRegex!4148 (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))

(assert (=> d!850549 (= (matchR!4297 (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))) (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))) lt!1045521)))

(declare-fun b!3027284 () Bool)

(declare-fun e!1898938 () Bool)

(assert (=> b!3027284 (= e!1898935 e!1898938)))

(declare-fun res!1245794 () Bool)

(assert (=> b!3027284 (=> (not res!1245794) (not e!1898938))))

(assert (=> b!3027284 (= res!1245794 (not lt!1045521))))

(declare-fun b!3027285 () Bool)

(assert (=> b!3027285 (= e!1898936 (matchR!4297 (derivativeStep!2664 (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))) (head!6723 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))) (tail!4949 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))))

(declare-fun b!3027286 () Bool)

(declare-fun e!1898934 () Bool)

(assert (=> b!3027286 (= e!1898934 (not (= (head!6723 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))) (c!499613 (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))))))

(declare-fun b!3027287 () Bool)

(assert (=> b!3027287 (= e!1898938 e!1898934)))

(declare-fun res!1245792 () Bool)

(assert (=> b!3027287 (=> res!1245792 e!1898934)))

(assert (=> b!3027287 (= res!1245792 call!205863)))

(declare-fun b!3027288 () Bool)

(declare-fun res!1245798 () Bool)

(assert (=> b!3027288 (=> res!1245798 e!1898934)))

(assert (=> b!3027288 (= res!1245798 (not (isEmpty!19456 (tail!4949 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))))

(declare-fun b!3027289 () Bool)

(assert (=> b!3027289 (= e!1898939 (= (head!6723 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))) (c!499613 (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))))

(declare-fun b!3027290 () Bool)

(assert (=> b!3027290 (= e!1898936 (nullable!3067 (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))))

(declare-fun b!3027291 () Bool)

(assert (=> b!3027291 (= e!1898933 (= lt!1045521 call!205863))))

(declare-fun b!3027292 () Bool)

(declare-fun res!1245796 () Bool)

(assert (=> b!3027292 (=> (not res!1245796) (not e!1898939))))

(assert (=> b!3027292 (= res!1245796 (isEmpty!19456 (tail!4949 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))))

(assert (= (and d!850549 c!499938) b!3027290))

(assert (= (and d!850549 (not c!499938)) b!3027285))

(assert (= (and d!850549 c!499937) b!3027291))

(assert (= (and d!850549 (not c!499937)) b!3027280))

(assert (= (and b!3027280 c!499936) b!3027281))

(assert (= (and b!3027280 (not c!499936)) b!3027279))

(assert (= (and b!3027279 (not res!1245797)) b!3027282))

(assert (= (and b!3027282 res!1245793) b!3027283))

(assert (= (and b!3027283 res!1245791) b!3027292))

(assert (= (and b!3027292 res!1245796) b!3027289))

(assert (= (and b!3027282 (not res!1245795)) b!3027284))

(assert (= (and b!3027284 res!1245794) b!3027287))

(assert (= (and b!3027287 (not res!1245792)) b!3027288))

(assert (= (and b!3027288 (not res!1245798)) b!3027286))

(assert (= (or b!3027291 b!3027283 b!3027287) bm!205858))

(assert (=> b!3027292 m!3365423))

(declare-fun m!3366077 () Bool)

(assert (=> b!3027292 m!3366077))

(assert (=> b!3027292 m!3366077))

(declare-fun m!3366079 () Bool)

(assert (=> b!3027292 m!3366079))

(assert (=> b!3027288 m!3365423))

(assert (=> b!3027288 m!3366077))

(assert (=> b!3027288 m!3366077))

(assert (=> b!3027288 m!3366079))

(assert (=> b!3027290 m!3365431))

(declare-fun m!3366081 () Bool)

(assert (=> b!3027290 m!3366081))

(assert (=> b!3027285 m!3365423))

(declare-fun m!3366083 () Bool)

(assert (=> b!3027285 m!3366083))

(assert (=> b!3027285 m!3365431))

(assert (=> b!3027285 m!3366083))

(declare-fun m!3366085 () Bool)

(assert (=> b!3027285 m!3366085))

(assert (=> b!3027285 m!3365423))

(assert (=> b!3027285 m!3366077))

(assert (=> b!3027285 m!3366085))

(assert (=> b!3027285 m!3366077))

(declare-fun m!3366087 () Bool)

(assert (=> b!3027285 m!3366087))

(assert (=> b!3027289 m!3365423))

(assert (=> b!3027289 m!3366083))

(assert (=> b!3027286 m!3365423))

(assert (=> b!3027286 m!3366083))

(assert (=> bm!205858 m!3365423))

(assert (=> bm!205858 m!3365425))

(assert (=> d!850549 m!3365423))

(assert (=> d!850549 m!3365425))

(assert (=> d!850549 m!3365431))

(declare-fun m!3366089 () Bool)

(assert (=> d!850549 m!3366089))

(assert (=> b!3026253 d!850549))

(declare-fun b!3027303 () Bool)

(declare-fun e!1898945 () Regex!9415)

(declare-fun call!205868 () Regex!9415)

(declare-fun call!205871 () Regex!9415)

(assert (=> b!3027303 (= e!1898945 (Union!9415 call!205868 call!205871))))

(declare-fun b!3027304 () Bool)

(declare-fun e!1898946 () Regex!9415)

(assert (=> b!3027304 (= e!1898945 e!1898946)))

(declare-fun c!499944 () Bool)

(assert (=> b!3027304 (= c!499944 ((_ is Star!9415) (Concat!14736 lt!1045353 lt!1045354)))))

(declare-fun bm!205863 () Bool)

(declare-fun call!205870 () Regex!9415)

(assert (=> bm!205863 (= call!205870 call!205871)))

(declare-fun bm!205864 () Bool)

(declare-fun c!499948 () Bool)

(assert (=> bm!205864 (= call!205868 (derivativeStep!2664 (ite c!499948 (regOne!19343 (Concat!14736 lt!1045353 lt!1045354)) (regTwo!19342 (Concat!14736 lt!1045353 lt!1045354))) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))

(declare-fun e!1898949 () Regex!9415)

(declare-fun b!3027305 () Bool)

(declare-fun call!205869 () Regex!9415)

(assert (=> b!3027305 (= e!1898949 (Union!9415 (Concat!14736 call!205869 (regTwo!19342 (Concat!14736 lt!1045353 lt!1045354))) EmptyLang!9415))))

(declare-fun b!3027306 () Bool)

(declare-fun c!499946 () Bool)

(assert (=> b!3027306 (= c!499946 (nullable!3067 (regOne!19342 (Concat!14736 lt!1045353 lt!1045354))))))

(assert (=> b!3027306 (= e!1898946 e!1898949)))

(declare-fun bm!205865 () Bool)

(assert (=> bm!205865 (= call!205869 call!205870)))

(declare-fun d!850551 () Bool)

(declare-fun lt!1045523 () Regex!9415)

(assert (=> d!850551 (validRegex!4148 lt!1045523)))

(declare-fun e!1898947 () Regex!9415)

(assert (=> d!850551 (= lt!1045523 e!1898947)))

(declare-fun c!499945 () Bool)

(assert (=> d!850551 (= c!499945 (or ((_ is EmptyExpr!9415) (Concat!14736 lt!1045353 lt!1045354)) ((_ is EmptyLang!9415) (Concat!14736 lt!1045353 lt!1045354))))))

(assert (=> d!850551 (validRegex!4148 (Concat!14736 lt!1045353 lt!1045354))))

(assert (=> d!850551 (= (derivativeStep!2664 (Concat!14736 lt!1045353 lt!1045354) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))) lt!1045523)))

(declare-fun b!3027307 () Bool)

(declare-fun e!1898948 () Regex!9415)

(assert (=> b!3027307 (= e!1898948 (ite (= (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))) (c!499613 (Concat!14736 lt!1045353 lt!1045354))) EmptyExpr!9415 EmptyLang!9415))))

(declare-fun b!3027308 () Bool)

(assert (=> b!3027308 (= e!1898949 (Union!9415 (Concat!14736 call!205869 (regTwo!19342 (Concat!14736 lt!1045353 lt!1045354))) call!205868))))

(declare-fun b!3027309 () Bool)

(assert (=> b!3027309 (= c!499948 ((_ is Union!9415) (Concat!14736 lt!1045353 lt!1045354)))))

(assert (=> b!3027309 (= e!1898948 e!1898945)))

(declare-fun bm!205866 () Bool)

(assert (=> bm!205866 (= call!205871 (derivativeStep!2664 (ite c!499948 (regTwo!19343 (Concat!14736 lt!1045353 lt!1045354)) (ite c!499944 (reg!9744 (Concat!14736 lt!1045353 lt!1045354)) (regOne!19342 (Concat!14736 lt!1045353 lt!1045354)))) (head!6723 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))

(declare-fun b!3027310 () Bool)

(assert (=> b!3027310 (= e!1898947 e!1898948)))

(declare-fun c!499947 () Bool)

(assert (=> b!3027310 (= c!499947 ((_ is ElementMatch!9415) (Concat!14736 lt!1045353 lt!1045354)))))

(declare-fun b!3027311 () Bool)

(assert (=> b!3027311 (= e!1898947 EmptyLang!9415)))

(declare-fun b!3027312 () Bool)

(assert (=> b!3027312 (= e!1898946 (Concat!14736 call!205870 (Concat!14736 lt!1045353 lt!1045354)))))

(assert (= (and d!850551 c!499945) b!3027311))

(assert (= (and d!850551 (not c!499945)) b!3027310))

(assert (= (and b!3027310 c!499947) b!3027307))

(assert (= (and b!3027310 (not c!499947)) b!3027309))

(assert (= (and b!3027309 c!499948) b!3027303))

(assert (= (and b!3027309 (not c!499948)) b!3027304))

(assert (= (and b!3027304 c!499944) b!3027312))

(assert (= (and b!3027304 (not c!499944)) b!3027306))

(assert (= (and b!3027306 c!499946) b!3027308))

(assert (= (and b!3027306 (not c!499946)) b!3027305))

(assert (= (or b!3027308 b!3027305) bm!205865))

(assert (= (or b!3027312 bm!205865) bm!205863))

(assert (= (or b!3027303 bm!205863) bm!205866))

(assert (= (or b!3027303 b!3027308) bm!205864))

(assert (=> bm!205864 m!3365429))

(declare-fun m!3366091 () Bool)

(assert (=> bm!205864 m!3366091))

(declare-fun m!3366093 () Bool)

(assert (=> b!3027306 m!3366093))

(declare-fun m!3366095 () Bool)

(assert (=> d!850551 m!3366095))

(assert (=> d!850551 m!3365437))

(assert (=> bm!205866 m!3365429))

(declare-fun m!3366097 () Bool)

(assert (=> bm!205866 m!3366097))

(assert (=> b!3026253 d!850551))

(assert (=> b!3026253 d!850517))

(declare-fun d!850553 () Bool)

(assert (=> d!850553 (= (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))) (t!234345 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349))))))

(assert (=> b!3026253 d!850553))

(declare-fun d!850555 () Bool)

(assert (=> d!850555 (= (isEmpty!19456 (_1!20188 lt!1045349)) ((_ is Nil!35156) (_1!20188 lt!1045349)))))

(assert (=> bm!205788 d!850555))

(declare-fun d!850557 () Bool)

(assert (=> d!850557 (= (nullable!3067 lt!1045438) (nullableFct!875 lt!1045438))))

(declare-fun bs!530673 () Bool)

(assert (= bs!530673 d!850557))

(declare-fun m!3366103 () Bool)

(assert (=> bs!530673 m!3366103))

(assert (=> b!3026583 d!850557))

(declare-fun d!850559 () Bool)

(assert (=> d!850559 (= (nullable!3067 r!17423) (nullableFct!875 r!17423))))

(declare-fun bs!530674 () Bool)

(assert (= bs!530674 d!850559))

(declare-fun m!3366107 () Bool)

(assert (=> bs!530674 m!3366107))

(assert (=> b!3026583 d!850559))

(declare-fun d!850561 () Bool)

(assert (=> d!850561 (= (nullable!3067 lt!1045470) (nullableFct!875 lt!1045470))))

(declare-fun bs!530675 () Bool)

(assert (= bs!530675 d!850561))

(declare-fun m!3366111 () Bool)

(assert (=> bs!530675 m!3366111))

(assert (=> b!3026864 d!850561))

(assert (=> b!3026864 d!850545))

(assert (=> b!3026731 d!850503))

(declare-fun b!3027313 () Bool)

(declare-fun e!1898962 () Regex!9415)

(declare-fun lt!1045524 () Regex!9415)

(assert (=> b!3027313 (= e!1898962 lt!1045524)))

(declare-fun d!850565 () Bool)

(declare-fun e!1898951 () Bool)

(assert (=> d!850565 e!1898951))

(declare-fun res!1245800 () Bool)

(assert (=> d!850565 (=> (not res!1245800) (not e!1898951))))

(declare-fun lt!1045527 () Regex!9415)

(assert (=> d!850565 (= res!1245800 (validRegex!4148 lt!1045527))))

(declare-fun e!1898953 () Regex!9415)

(assert (=> d!850565 (= lt!1045527 e!1898953)))

(declare-fun c!499956 () Bool)

(assert (=> d!850565 (= c!499956 ((_ is EmptyLang!9415) (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))))))

(assert (=> d!850565 (validRegex!4148 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423))))))

(assert (=> d!850565 (= (simplify!394 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))) lt!1045527)))

(declare-fun bm!205867 () Bool)

(declare-fun c!499949 () Bool)

(declare-fun lt!1045526 () Regex!9415)

(declare-fun call!205877 () Bool)

(assert (=> bm!205867 (= call!205877 (isEmptyLang!492 (ite c!499949 lt!1045524 lt!1045526)))))

(declare-fun b!3027314 () Bool)

(declare-fun c!499950 () Bool)

(declare-fun e!1898958 () Bool)

(assert (=> b!3027314 (= c!499950 e!1898958)))

(declare-fun res!1245799 () Bool)

(assert (=> b!3027314 (=> res!1245799 e!1898958)))

(declare-fun call!205878 () Bool)

(assert (=> b!3027314 (= res!1245799 call!205878)))

(declare-fun lt!1045528 () Regex!9415)

(declare-fun call!205872 () Regex!9415)

(assert (=> b!3027314 (= lt!1045528 call!205872)))

(declare-fun e!1898956 () Regex!9415)

(declare-fun e!1898955 () Regex!9415)

(assert (=> b!3027314 (= e!1898956 e!1898955)))

(declare-fun b!3027315 () Bool)

(declare-fun e!1898952 () Regex!9415)

(declare-fun lt!1045529 () Regex!9415)

(assert (=> b!3027315 (= e!1898952 lt!1045529)))

(declare-fun b!3027316 () Bool)

(declare-fun e!1898961 () Regex!9415)

(declare-fun e!1898950 () Regex!9415)

(assert (=> b!3027316 (= e!1898961 e!1898950)))

(declare-fun c!499951 () Bool)

(declare-fun call!205874 () Bool)

(assert (=> b!3027316 (= c!499951 call!205874)))

(declare-fun bm!205868 () Bool)

(declare-fun c!499952 () Bool)

(assert (=> bm!205868 (= call!205872 (simplify!394 (ite c!499952 (reg!9744 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))) (ite c!499949 (regOne!19343 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))) (regTwo!19342 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423))))))))))

(declare-fun b!3027317 () Bool)

(declare-fun e!1898963 () Regex!9415)

(assert (=> b!3027317 (= e!1898963 e!1898962)))

(declare-fun call!205876 () Regex!9415)

(assert (=> b!3027317 (= lt!1045529 call!205876)))

(declare-fun call!205875 () Regex!9415)

(assert (=> b!3027317 (= lt!1045524 call!205875)))

(declare-fun c!499958 () Bool)

(declare-fun call!205873 () Bool)

(assert (=> b!3027317 (= c!499958 call!205873)))

(declare-fun b!3027318 () Bool)

(declare-fun c!499957 () Bool)

(declare-fun lt!1045525 () Regex!9415)

(assert (=> b!3027318 (= c!499957 (isEmptyExpr!498 lt!1045525))))

(declare-fun e!1898960 () Regex!9415)

(assert (=> b!3027318 (= e!1898960 e!1898961)))

(declare-fun bm!205869 () Bool)

(assert (=> bm!205869 (= call!205876 call!205872)))

(declare-fun b!3027319 () Bool)

(declare-fun c!499953 () Bool)

(assert (=> b!3027319 (= c!499953 call!205877)))

(assert (=> b!3027319 (= e!1898962 e!1898952)))

(declare-fun b!3027320 () Bool)

(assert (=> b!3027320 (= e!1898960 EmptyLang!9415)))

(declare-fun b!3027321 () Bool)

(assert (=> b!3027321 (= e!1898950 lt!1045525)))

(declare-fun b!3027322 () Bool)

(declare-fun e!1898959 () Regex!9415)

(assert (=> b!3027322 (= e!1898959 EmptyExpr!9415)))

(declare-fun b!3027323 () Bool)

(assert (=> b!3027323 (= e!1898961 lt!1045526)))

(declare-fun b!3027324 () Bool)

(assert (=> b!3027324 (= e!1898951 (= (nullable!3067 lt!1045527) (nullable!3067 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423))))))))

(declare-fun b!3027325 () Bool)

(assert (=> b!3027325 (= e!1898952 (Union!9415 lt!1045529 lt!1045524))))

(declare-fun bm!205870 () Bool)

(assert (=> bm!205870 (= call!205874 (isEmptyExpr!498 (ite c!499952 lt!1045528 lt!1045526)))))

(declare-fun b!3027326 () Bool)

(assert (=> b!3027326 (= e!1898958 call!205874)))

(declare-fun b!3027327 () Bool)

(declare-fun e!1898957 () Regex!9415)

(assert (=> b!3027327 (= e!1898957 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423))))))

(declare-fun bm!205871 () Bool)

(assert (=> bm!205871 (= call!205878 (isEmptyLang!492 (ite c!499952 lt!1045528 (ite c!499949 lt!1045529 lt!1045525))))))

(declare-fun b!3027328 () Bool)

(assert (=> b!3027328 (= c!499949 ((_ is Union!9415) (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))))))

(assert (=> b!3027328 (= e!1898956 e!1898963)))

(declare-fun b!3027329 () Bool)

(assert (=> b!3027329 (= e!1898963 e!1898960)))

(assert (=> b!3027329 (= lt!1045525 call!205875)))

(assert (=> b!3027329 (= lt!1045526 call!205876)))

(declare-fun res!1245801 () Bool)

(assert (=> b!3027329 (= res!1245801 call!205873)))

(declare-fun e!1898954 () Bool)

(assert (=> b!3027329 (=> res!1245801 e!1898954)))

(declare-fun c!499954 () Bool)

(assert (=> b!3027329 (= c!499954 e!1898954)))

(declare-fun b!3027330 () Bool)

(assert (=> b!3027330 (= e!1898953 e!1898957)))

(declare-fun c!499955 () Bool)

(assert (=> b!3027330 (= c!499955 ((_ is ElementMatch!9415) (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))))))

(declare-fun bm!205872 () Bool)

(assert (=> bm!205872 (= call!205873 call!205878)))

(declare-fun b!3027331 () Bool)

(assert (=> b!3027331 (= e!1898959 e!1898956)))

(assert (=> b!3027331 (= c!499952 ((_ is Star!9415) (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))))))

(declare-fun b!3027332 () Bool)

(assert (=> b!3027332 (= e!1898950 (Concat!14736 lt!1045525 lt!1045526))))

(declare-fun b!3027333 () Bool)

(assert (=> b!3027333 (= e!1898955 (Star!9415 lt!1045528))))

(declare-fun bm!205873 () Bool)

(assert (=> bm!205873 (= call!205875 (simplify!394 (ite c!499949 (regTwo!19343 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))) (regOne!19342 (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))))))))

(declare-fun b!3027334 () Bool)

(assert (=> b!3027334 (= e!1898953 EmptyLang!9415)))

(declare-fun b!3027335 () Bool)

(declare-fun c!499959 () Bool)

(assert (=> b!3027335 (= c!499959 ((_ is EmptyExpr!9415) (ite c!499813 (regTwo!19343 (regOne!19342 r!17423)) (regOne!19342 (regOne!19342 r!17423)))))))

(assert (=> b!3027335 (= e!1898957 e!1898959)))

(declare-fun b!3027336 () Bool)

(assert (=> b!3027336 (= e!1898955 EmptyExpr!9415)))

(declare-fun b!3027337 () Bool)

(assert (=> b!3027337 (= e!1898954 call!205877)))

(assert (= (and d!850565 c!499956) b!3027334))

(assert (= (and d!850565 (not c!499956)) b!3027330))

(assert (= (and b!3027330 c!499955) b!3027327))

(assert (= (and b!3027330 (not c!499955)) b!3027335))

(assert (= (and b!3027335 c!499959) b!3027322))

(assert (= (and b!3027335 (not c!499959)) b!3027331))

(assert (= (and b!3027331 c!499952) b!3027314))

(assert (= (and b!3027331 (not c!499952)) b!3027328))

(assert (= (and b!3027314 (not res!1245799)) b!3027326))

(assert (= (and b!3027314 c!499950) b!3027336))

(assert (= (and b!3027314 (not c!499950)) b!3027333))

(assert (= (and b!3027328 c!499949) b!3027317))

(assert (= (and b!3027328 (not c!499949)) b!3027329))

(assert (= (and b!3027317 c!499958) b!3027313))

(assert (= (and b!3027317 (not c!499958)) b!3027319))

(assert (= (and b!3027319 c!499953) b!3027315))

(assert (= (and b!3027319 (not c!499953)) b!3027325))

(assert (= (and b!3027329 (not res!1245801)) b!3027337))

(assert (= (and b!3027329 c!499954) b!3027320))

(assert (= (and b!3027329 (not c!499954)) b!3027318))

(assert (= (and b!3027318 c!499957) b!3027323))

(assert (= (and b!3027318 (not c!499957)) b!3027316))

(assert (= (and b!3027316 c!499951) b!3027321))

(assert (= (and b!3027316 (not c!499951)) b!3027332))

(assert (= (or b!3027317 b!3027329) bm!205869))

(assert (= (or b!3027317 b!3027329) bm!205873))

(assert (= (or b!3027317 b!3027329) bm!205872))

(assert (= (or b!3027319 b!3027337) bm!205867))

(assert (= (or b!3027326 b!3027316) bm!205870))

(assert (= (or b!3027314 bm!205869) bm!205868))

(assert (= (or b!3027314 bm!205872) bm!205871))

(assert (= (and d!850565 res!1245800) b!3027324))

(declare-fun m!3366113 () Bool)

(assert (=> bm!205870 m!3366113))

(declare-fun m!3366115 () Bool)

(assert (=> d!850565 m!3366115))

(declare-fun m!3366117 () Bool)

(assert (=> d!850565 m!3366117))

(declare-fun m!3366119 () Bool)

(assert (=> bm!205873 m!3366119))

(declare-fun m!3366121 () Bool)

(assert (=> bm!205871 m!3366121))

(declare-fun m!3366123 () Bool)

(assert (=> bm!205867 m!3366123))

(declare-fun m!3366125 () Bool)

(assert (=> b!3027324 m!3366125))

(declare-fun m!3366127 () Bool)

(assert (=> b!3027324 m!3366127))

(declare-fun m!3366129 () Bool)

(assert (=> bm!205868 m!3366129))

(declare-fun m!3366131 () Bool)

(assert (=> b!3027318 m!3366131))

(assert (=> bm!205783 d!850565))

(declare-fun bm!205874 () Bool)

(declare-fun call!205880 () Bool)

(declare-fun call!205879 () Bool)

(assert (=> bm!205874 (= call!205880 call!205879)))

(declare-fun b!3027339 () Bool)

(declare-fun res!1245804 () Bool)

(declare-fun e!1898970 () Bool)

(assert (=> b!3027339 (=> (not res!1245804) (not e!1898970))))

(assert (=> b!3027339 (= res!1245804 call!205880)))

(declare-fun e!1898968 () Bool)

(assert (=> b!3027339 (= e!1898968 e!1898970)))

(declare-fun b!3027340 () Bool)

(declare-fun call!205881 () Bool)

(assert (=> b!3027340 (= e!1898970 call!205881)))

(declare-fun b!3027341 () Bool)

(declare-fun e!1898964 () Bool)

(declare-fun e!1898966 () Bool)

(assert (=> b!3027341 (= e!1898964 e!1898966)))

(declare-fun c!499960 () Bool)

(assert (=> b!3027341 (= c!499960 ((_ is Star!9415) lt!1045438))))

(declare-fun bm!205875 () Bool)

(declare-fun c!499961 () Bool)

(assert (=> bm!205875 (= call!205879 (validRegex!4148 (ite c!499960 (reg!9744 lt!1045438) (ite c!499961 (regOne!19343 lt!1045438) (regTwo!19342 lt!1045438)))))))

(declare-fun b!3027342 () Bool)

(declare-fun e!1898967 () Bool)

(declare-fun e!1898965 () Bool)

(assert (=> b!3027342 (= e!1898967 e!1898965)))

(declare-fun res!1245802 () Bool)

(assert (=> b!3027342 (=> (not res!1245802) (not e!1898965))))

(assert (=> b!3027342 (= res!1245802 call!205881)))

(declare-fun b!3027338 () Bool)

(assert (=> b!3027338 (= e!1898965 call!205880)))

(declare-fun d!850571 () Bool)

(declare-fun res!1245806 () Bool)

(assert (=> d!850571 (=> res!1245806 e!1898964)))

(assert (=> d!850571 (= res!1245806 ((_ is ElementMatch!9415) lt!1045438))))

(assert (=> d!850571 (= (validRegex!4148 lt!1045438) e!1898964)))

(declare-fun b!3027343 () Bool)

(assert (=> b!3027343 (= e!1898966 e!1898968)))

(assert (=> b!3027343 (= c!499961 ((_ is Union!9415) lt!1045438))))

(declare-fun b!3027344 () Bool)

(declare-fun e!1898969 () Bool)

(assert (=> b!3027344 (= e!1898969 call!205879)))

(declare-fun bm!205876 () Bool)

(assert (=> bm!205876 (= call!205881 (validRegex!4148 (ite c!499961 (regTwo!19343 lt!1045438) (regOne!19342 lt!1045438))))))

(declare-fun b!3027345 () Bool)

(declare-fun res!1245803 () Bool)

(assert (=> b!3027345 (=> res!1245803 e!1898967)))

(assert (=> b!3027345 (= res!1245803 (not ((_ is Concat!14736) lt!1045438)))))

(assert (=> b!3027345 (= e!1898968 e!1898967)))

(declare-fun b!3027346 () Bool)

(assert (=> b!3027346 (= e!1898966 e!1898969)))

(declare-fun res!1245805 () Bool)

(assert (=> b!3027346 (= res!1245805 (not (nullable!3067 (reg!9744 lt!1045438))))))

(assert (=> b!3027346 (=> (not res!1245805) (not e!1898969))))

(assert (= (and d!850571 (not res!1245806)) b!3027341))

(assert (= (and b!3027341 c!499960) b!3027346))

(assert (= (and b!3027341 (not c!499960)) b!3027343))

(assert (= (and b!3027346 res!1245805) b!3027344))

(assert (= (and b!3027343 c!499961) b!3027339))

(assert (= (and b!3027343 (not c!499961)) b!3027345))

(assert (= (and b!3027339 res!1245804) b!3027340))

(assert (= (and b!3027345 (not res!1245803)) b!3027342))

(assert (= (and b!3027342 res!1245802) b!3027338))

(assert (= (or b!3027339 b!3027338) bm!205874))

(assert (= (or b!3027340 b!3027342) bm!205876))

(assert (= (or b!3027344 bm!205874) bm!205875))

(declare-fun m!3366137 () Bool)

(assert (=> bm!205875 m!3366137))

(declare-fun m!3366139 () Bool)

(assert (=> bm!205876 m!3366139))

(declare-fun m!3366141 () Bool)

(assert (=> b!3027346 m!3366141))

(assert (=> d!850375 d!850571))

(assert (=> d!850375 d!850457))

(assert (=> b!3026885 d!850511))

(assert (=> b!3026735 d!850559))

(declare-fun b!3027354 () Bool)

(declare-fun e!1898973 () Bool)

(declare-fun lt!1045531 () List!35280)

(assert (=> b!3027354 (= e!1898973 (or (not (= (t!234345 s!11993) Nil!35156)) (= lt!1045531 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)))))))

(declare-fun d!850577 () Bool)

(assert (=> d!850577 e!1898973))

(declare-fun res!1245810 () Bool)

(assert (=> d!850577 (=> (not res!1245810) (not e!1898973))))

(assert (=> d!850577 (= res!1245810 (= (content!4791 lt!1045531) ((_ map or) (content!4791 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156))) (content!4791 (t!234345 s!11993)))))))

(declare-fun e!1898974 () List!35280)

(assert (=> d!850577 (= lt!1045531 e!1898974)))

(declare-fun c!499963 () Bool)

(assert (=> d!850577 (= c!499963 ((_ is Nil!35156) (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156))))))

(assert (=> d!850577 (= (++!8434 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (t!234345 s!11993)) lt!1045531)))

(declare-fun b!3027351 () Bool)

(assert (=> b!3027351 (= e!1898974 (t!234345 s!11993))))

(declare-fun b!3027352 () Bool)

(assert (=> b!3027352 (= e!1898974 (Cons!35156 (h!40576 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156))) (++!8434 (t!234345 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156))) (t!234345 s!11993))))))

(declare-fun b!3027353 () Bool)

(declare-fun res!1245809 () Bool)

(assert (=> b!3027353 (=> (not res!1245809) (not e!1898973))))

(assert (=> b!3027353 (= res!1245809 (= (size!26528 lt!1045531) (+ (size!26528 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156))) (size!26528 (t!234345 s!11993)))))))

(assert (= (and d!850577 c!499963) b!3027351))

(assert (= (and d!850577 (not c!499963)) b!3027352))

(assert (= (and d!850577 res!1245810) b!3027353))

(assert (= (and b!3027353 res!1245809) b!3027354))

(declare-fun m!3366151 () Bool)

(assert (=> d!850577 m!3366151))

(assert (=> d!850577 m!3365829))

(declare-fun m!3366155 () Bool)

(assert (=> d!850577 m!3366155))

(declare-fun m!3366159 () Bool)

(assert (=> d!850577 m!3366159))

(declare-fun m!3366162 () Bool)

(assert (=> b!3027352 m!3366162))

(declare-fun m!3366165 () Bool)

(assert (=> b!3027353 m!3366165))

(assert (=> b!3027353 m!3365829))

(declare-fun m!3366167 () Bool)

(assert (=> b!3027353 m!3366167))

(declare-fun m!3366169 () Bool)

(assert (=> b!3027353 m!3366169))

(assert (=> b!3026941 d!850577))

(declare-fun b!3027358 () Bool)

(declare-fun e!1898975 () Bool)

(declare-fun lt!1045532 () List!35280)

(assert (=> b!3027358 (= e!1898975 (or (not (= (Cons!35156 (h!40576 s!11993) Nil!35156) Nil!35156)) (= lt!1045532 Nil!35156)))))

(declare-fun d!850581 () Bool)

(assert (=> d!850581 e!1898975))

(declare-fun res!1245812 () Bool)

(assert (=> d!850581 (=> (not res!1245812) (not e!1898975))))

(assert (=> d!850581 (= res!1245812 (= (content!4791 lt!1045532) ((_ map or) (content!4791 Nil!35156) (content!4791 (Cons!35156 (h!40576 s!11993) Nil!35156)))))))

(declare-fun e!1898976 () List!35280)

(assert (=> d!850581 (= lt!1045532 e!1898976)))

(declare-fun c!499964 () Bool)

(assert (=> d!850581 (= c!499964 ((_ is Nil!35156) Nil!35156))))

(assert (=> d!850581 (= (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) lt!1045532)))

(declare-fun b!3027355 () Bool)

(assert (=> b!3027355 (= e!1898976 (Cons!35156 (h!40576 s!11993) Nil!35156))))

(declare-fun b!3027356 () Bool)

(assert (=> b!3027356 (= e!1898976 (Cons!35156 (h!40576 Nil!35156) (++!8434 (t!234345 Nil!35156) (Cons!35156 (h!40576 s!11993) Nil!35156))))))

(declare-fun b!3027357 () Bool)

(declare-fun res!1245811 () Bool)

(assert (=> b!3027357 (=> (not res!1245811) (not e!1898975))))

(assert (=> b!3027357 (= res!1245811 (= (size!26528 lt!1045532) (+ (size!26528 Nil!35156) (size!26528 (Cons!35156 (h!40576 s!11993) Nil!35156)))))))

(assert (= (and d!850581 c!499964) b!3027355))

(assert (= (and d!850581 (not c!499964)) b!3027356))

(assert (= (and d!850581 res!1245812) b!3027357))

(assert (= (and b!3027357 res!1245811) b!3027358))

(declare-fun m!3366171 () Bool)

(assert (=> d!850581 m!3366171))

(declare-fun m!3366173 () Bool)

(assert (=> d!850581 m!3366173))

(declare-fun m!3366175 () Bool)

(assert (=> d!850581 m!3366175))

(declare-fun m!3366177 () Bool)

(assert (=> b!3027356 m!3366177))

(declare-fun m!3366179 () Bool)

(assert (=> b!3027357 m!3366179))

(declare-fun m!3366181 () Bool)

(assert (=> b!3027357 m!3366181))

(declare-fun m!3366183 () Bool)

(assert (=> b!3027357 m!3366183))

(assert (=> b!3026941 d!850581))

(declare-fun d!850583 () Bool)

(assert (=> d!850583 (= (++!8434 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (t!234345 s!11993)) s!11993)))

(declare-fun lt!1045536 () Unit!49253)

(declare-fun choose!17955 (List!35280 C!19016 List!35280 List!35280) Unit!49253)

(assert (=> d!850583 (= lt!1045536 (choose!17955 Nil!35156 (h!40576 s!11993) (t!234345 s!11993) s!11993))))

(assert (=> d!850583 (= (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) (t!234345 s!11993))) s!11993)))

(assert (=> d!850583 (= (lemmaMoveElementToOtherListKeepsConcatEq!1041 Nil!35156 (h!40576 s!11993) (t!234345 s!11993) s!11993) lt!1045536)))

(declare-fun bs!530678 () Bool)

(assert (= bs!530678 d!850583))

(assert (=> bs!530678 m!3365829))

(assert (=> bs!530678 m!3365829))

(assert (=> bs!530678 m!3365831))

(declare-fun m!3366199 () Bool)

(assert (=> bs!530678 m!3366199))

(declare-fun m!3366201 () Bool)

(assert (=> bs!530678 m!3366201))

(assert (=> b!3026941 d!850583))

(declare-fun b!3027363 () Bool)

(declare-fun lt!1045537 () Unit!49253)

(declare-fun lt!1045539 () Unit!49253)

(assert (=> b!3027363 (= lt!1045537 lt!1045539)))

(assert (=> b!3027363 (= (++!8434 (++!8434 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (Cons!35156 (h!40576 (t!234345 s!11993)) Nil!35156)) (t!234345 (t!234345 s!11993))) s!11993)))

(assert (=> b!3027363 (= lt!1045539 (lemmaMoveElementToOtherListKeepsConcatEq!1041 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (h!40576 (t!234345 s!11993)) (t!234345 (t!234345 s!11993)) s!11993))))

(declare-fun e!1898980 () Option!6788)

(assert (=> b!3027363 (= e!1898980 (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) (++!8434 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (Cons!35156 (h!40576 (t!234345 s!11993)) Nil!35156)) (t!234345 (t!234345 s!11993)) s!11993))))

(declare-fun b!3027364 () Bool)

(declare-fun res!1245815 () Bool)

(declare-fun e!1898982 () Bool)

(assert (=> b!3027364 (=> (not res!1245815) (not e!1898982))))

(declare-fun lt!1045538 () Option!6788)

(assert (=> b!3027364 (= res!1245815 (matchR!4297 (regTwo!19342 r!17423) (_2!20188 (get!10962 lt!1045538))))))

(declare-fun b!3027365 () Bool)

(declare-fun e!1898981 () Option!6788)

(assert (=> b!3027365 (= e!1898981 e!1898980)))

(declare-fun c!499966 () Bool)

(assert (=> b!3027365 (= c!499966 ((_ is Nil!35156) (t!234345 s!11993)))))

(declare-fun b!3027366 () Bool)

(declare-fun res!1245819 () Bool)

(assert (=> b!3027366 (=> (not res!1245819) (not e!1898982))))

(assert (=> b!3027366 (= res!1245819 (matchR!4297 (regOne!19342 r!17423) (_1!20188 (get!10962 lt!1045538))))))

(declare-fun b!3027367 () Bool)

(assert (=> b!3027367 (= e!1898981 (Some!6787 (tuple2!34113 (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (t!234345 s!11993))))))

(declare-fun b!3027368 () Bool)

(declare-fun e!1898979 () Bool)

(assert (=> b!3027368 (= e!1898979 (matchR!4297 (regTwo!19342 r!17423) (t!234345 s!11993)))))

(declare-fun b!3027369 () Bool)

(declare-fun e!1898983 () Bool)

(assert (=> b!3027369 (= e!1898983 (not (isDefined!5339 lt!1045538)))))

(declare-fun b!3027370 () Bool)

(assert (=> b!3027370 (= e!1898980 None!6787)))

(declare-fun d!850587 () Bool)

(assert (=> d!850587 e!1898983))

(declare-fun res!1245816 () Bool)

(assert (=> d!850587 (=> res!1245816 e!1898983)))

(assert (=> d!850587 (= res!1245816 e!1898982)))

(declare-fun res!1245818 () Bool)

(assert (=> d!850587 (=> (not res!1245818) (not e!1898982))))

(assert (=> d!850587 (= res!1245818 (isDefined!5339 lt!1045538))))

(assert (=> d!850587 (= lt!1045538 e!1898981)))

(declare-fun c!499967 () Bool)

(assert (=> d!850587 (= c!499967 e!1898979)))

(declare-fun res!1245817 () Bool)

(assert (=> d!850587 (=> (not res!1245817) (not e!1898979))))

(assert (=> d!850587 (= res!1245817 (matchR!4297 (regOne!19342 r!17423) (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156))))))

(assert (=> d!850587 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850587 (= (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) (++!8434 Nil!35156 (Cons!35156 (h!40576 s!11993) Nil!35156)) (t!234345 s!11993) s!11993) lt!1045538)))

(declare-fun b!3027371 () Bool)

(assert (=> b!3027371 (= e!1898982 (= (++!8434 (_1!20188 (get!10962 lt!1045538)) (_2!20188 (get!10962 lt!1045538))) s!11993))))

(assert (= (and d!850587 res!1245817) b!3027368))

(assert (= (and d!850587 c!499967) b!3027367))

(assert (= (and d!850587 (not c!499967)) b!3027365))

(assert (= (and b!3027365 c!499966) b!3027370))

(assert (= (and b!3027365 (not c!499966)) b!3027363))

(assert (= (and d!850587 res!1245818) b!3027366))

(assert (= (and b!3027366 res!1245819) b!3027364))

(assert (= (and b!3027364 res!1245815) b!3027371))

(assert (= (and d!850587 (not res!1245816)) b!3027369))

(declare-fun m!3366203 () Bool)

(assert (=> b!3027366 m!3366203))

(declare-fun m!3366205 () Bool)

(assert (=> b!3027366 m!3366205))

(declare-fun m!3366207 () Bool)

(assert (=> b!3027369 m!3366207))

(assert (=> b!3027364 m!3366203))

(declare-fun m!3366209 () Bool)

(assert (=> b!3027364 m!3366209))

(declare-fun m!3366211 () Bool)

(assert (=> b!3027368 m!3366211))

(assert (=> d!850587 m!3366207))

(assert (=> d!850587 m!3365829))

(declare-fun m!3366213 () Bool)

(assert (=> d!850587 m!3366213))

(assert (=> d!850587 m!3365773))

(assert (=> b!3027371 m!3366203))

(declare-fun m!3366215 () Bool)

(assert (=> b!3027371 m!3366215))

(assert (=> b!3027363 m!3365829))

(declare-fun m!3366217 () Bool)

(assert (=> b!3027363 m!3366217))

(assert (=> b!3027363 m!3366217))

(declare-fun m!3366219 () Bool)

(assert (=> b!3027363 m!3366219))

(assert (=> b!3027363 m!3365829))

(declare-fun m!3366221 () Bool)

(assert (=> b!3027363 m!3366221))

(assert (=> b!3027363 m!3366217))

(declare-fun m!3366223 () Bool)

(assert (=> b!3027363 m!3366223))

(assert (=> b!3026941 d!850587))

(declare-fun b!3027372 () Bool)

(declare-fun e!1898996 () Regex!9415)

(declare-fun lt!1045542 () Regex!9415)

(assert (=> b!3027372 (= e!1898996 lt!1045542)))

(declare-fun d!850589 () Bool)

(declare-fun e!1898985 () Bool)

(assert (=> d!850589 e!1898985))

(declare-fun res!1245821 () Bool)

(assert (=> d!850589 (=> (not res!1245821) (not e!1898985))))

(declare-fun lt!1045545 () Regex!9415)

(assert (=> d!850589 (= res!1245821 (validRegex!4148 lt!1045545))))

(declare-fun e!1898987 () Regex!9415)

(assert (=> d!850589 (= lt!1045545 e!1898987)))

(declare-fun c!499975 () Bool)

(assert (=> d!850589 (= c!499975 ((_ is EmptyLang!9415) (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(assert (=> d!850589 (validRegex!4148 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423)))))

(assert (=> d!850589 (= (simplify!394 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))) lt!1045545)))

(declare-fun bm!205877 () Bool)

(declare-fun lt!1045544 () Regex!9415)

(declare-fun c!499968 () Bool)

(declare-fun call!205887 () Bool)

(assert (=> bm!205877 (= call!205887 (isEmptyLang!492 (ite c!499968 lt!1045542 lt!1045544)))))

(declare-fun b!3027373 () Bool)

(declare-fun c!499969 () Bool)

(declare-fun e!1898992 () Bool)

(assert (=> b!3027373 (= c!499969 e!1898992)))

(declare-fun res!1245820 () Bool)

(assert (=> b!3027373 (=> res!1245820 e!1898992)))

(declare-fun call!205888 () Bool)

(assert (=> b!3027373 (= res!1245820 call!205888)))

(declare-fun lt!1045546 () Regex!9415)

(declare-fun call!205882 () Regex!9415)

(assert (=> b!3027373 (= lt!1045546 call!205882)))

(declare-fun e!1898990 () Regex!9415)

(declare-fun e!1898989 () Regex!9415)

(assert (=> b!3027373 (= e!1898990 e!1898989)))

(declare-fun b!3027374 () Bool)

(declare-fun e!1898986 () Regex!9415)

(declare-fun lt!1045547 () Regex!9415)

(assert (=> b!3027374 (= e!1898986 lt!1045547)))

(declare-fun b!3027375 () Bool)

(declare-fun e!1898995 () Regex!9415)

(declare-fun e!1898984 () Regex!9415)

(assert (=> b!3027375 (= e!1898995 e!1898984)))

(declare-fun c!499970 () Bool)

(declare-fun call!205884 () Bool)

(assert (=> b!3027375 (= c!499970 call!205884)))

(declare-fun bm!205878 () Bool)

(declare-fun c!499971 () Bool)

(assert (=> bm!205878 (= call!205882 (simplify!394 (ite c!499971 (reg!9744 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))) (ite c!499968 (regOne!19343 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))) (regTwo!19342 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423)))))))))

(declare-fun b!3027376 () Bool)

(declare-fun e!1898997 () Regex!9415)

(assert (=> b!3027376 (= e!1898997 e!1898996)))

(declare-fun call!205886 () Regex!9415)

(assert (=> b!3027376 (= lt!1045547 call!205886)))

(declare-fun call!205885 () Regex!9415)

(assert (=> b!3027376 (= lt!1045542 call!205885)))

(declare-fun c!499977 () Bool)

(declare-fun call!205883 () Bool)

(assert (=> b!3027376 (= c!499977 call!205883)))

(declare-fun b!3027377 () Bool)

(declare-fun c!499976 () Bool)

(declare-fun lt!1045543 () Regex!9415)

(assert (=> b!3027377 (= c!499976 (isEmptyExpr!498 lt!1045543))))

(declare-fun e!1898994 () Regex!9415)

(assert (=> b!3027377 (= e!1898994 e!1898995)))

(declare-fun bm!205879 () Bool)

(assert (=> bm!205879 (= call!205886 call!205882)))

(declare-fun b!3027378 () Bool)

(declare-fun c!499972 () Bool)

(assert (=> b!3027378 (= c!499972 call!205887)))

(assert (=> b!3027378 (= e!1898996 e!1898986)))

(declare-fun b!3027379 () Bool)

(assert (=> b!3027379 (= e!1898994 EmptyLang!9415)))

(declare-fun b!3027380 () Bool)

(assert (=> b!3027380 (= e!1898984 lt!1045543)))

(declare-fun b!3027381 () Bool)

(declare-fun e!1898993 () Regex!9415)

(assert (=> b!3027381 (= e!1898993 EmptyExpr!9415)))

(declare-fun b!3027382 () Bool)

(assert (=> b!3027382 (= e!1898995 lt!1045544)))

(declare-fun b!3027383 () Bool)

(assert (=> b!3027383 (= e!1898985 (= (nullable!3067 lt!1045545) (nullable!3067 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423)))))))

(declare-fun b!3027384 () Bool)

(assert (=> b!3027384 (= e!1898986 (Union!9415 lt!1045547 lt!1045542))))

(declare-fun bm!205880 () Bool)

(assert (=> bm!205880 (= call!205884 (isEmptyExpr!498 (ite c!499971 lt!1045546 lt!1045544)))))

(declare-fun b!3027385 () Bool)

(assert (=> b!3027385 (= e!1898992 call!205884)))

(declare-fun b!3027386 () Bool)

(declare-fun e!1898991 () Regex!9415)

(assert (=> b!3027386 (= e!1898991 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423)))))

(declare-fun bm!205881 () Bool)

(assert (=> bm!205881 (= call!205888 (isEmptyLang!492 (ite c!499971 lt!1045546 (ite c!499968 lt!1045547 lt!1045543))))))

(declare-fun b!3027387 () Bool)

(assert (=> b!3027387 (= c!499968 ((_ is Union!9415) (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(assert (=> b!3027387 (= e!1898990 e!1898997)))

(declare-fun b!3027388 () Bool)

(assert (=> b!3027388 (= e!1898997 e!1898994)))

(assert (=> b!3027388 (= lt!1045543 call!205885)))

(assert (=> b!3027388 (= lt!1045544 call!205886)))

(declare-fun res!1245822 () Bool)

(assert (=> b!3027388 (= res!1245822 call!205883)))

(declare-fun e!1898988 () Bool)

(assert (=> b!3027388 (=> res!1245822 e!1898988)))

(declare-fun c!499973 () Bool)

(assert (=> b!3027388 (= c!499973 e!1898988)))

(declare-fun b!3027389 () Bool)

(assert (=> b!3027389 (= e!1898987 e!1898991)))

(declare-fun c!499974 () Bool)

(assert (=> b!3027389 (= c!499974 ((_ is ElementMatch!9415) (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(declare-fun bm!205882 () Bool)

(assert (=> bm!205882 (= call!205883 call!205888)))

(declare-fun b!3027390 () Bool)

(assert (=> b!3027390 (= e!1898993 e!1898990)))

(assert (=> b!3027390 (= c!499971 ((_ is Star!9415) (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(declare-fun b!3027391 () Bool)

(assert (=> b!3027391 (= e!1898984 (Concat!14736 lt!1045543 lt!1045544))))

(declare-fun b!3027392 () Bool)

(assert (=> b!3027392 (= e!1898989 (Star!9415 lt!1045546))))

(declare-fun bm!205883 () Bool)

(assert (=> bm!205883 (= call!205885 (simplify!394 (ite c!499968 (regTwo!19343 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))) (regOne!19342 (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))))

(declare-fun b!3027393 () Bool)

(assert (=> b!3027393 (= e!1898987 EmptyLang!9415)))

(declare-fun b!3027394 () Bool)

(declare-fun c!499978 () Bool)

(assert (=> b!3027394 (= c!499978 ((_ is EmptyExpr!9415) (ite c!499744 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(assert (=> b!3027394 (= e!1898991 e!1898993)))

(declare-fun b!3027395 () Bool)

(assert (=> b!3027395 (= e!1898989 EmptyExpr!9415)))

(declare-fun b!3027396 () Bool)

(assert (=> b!3027396 (= e!1898988 call!205887)))

(assert (= (and d!850589 c!499975) b!3027393))

(assert (= (and d!850589 (not c!499975)) b!3027389))

(assert (= (and b!3027389 c!499974) b!3027386))

(assert (= (and b!3027389 (not c!499974)) b!3027394))

(assert (= (and b!3027394 c!499978) b!3027381))

(assert (= (and b!3027394 (not c!499978)) b!3027390))

(assert (= (and b!3027390 c!499971) b!3027373))

(assert (= (and b!3027390 (not c!499971)) b!3027387))

(assert (= (and b!3027373 (not res!1245820)) b!3027385))

(assert (= (and b!3027373 c!499969) b!3027395))

(assert (= (and b!3027373 (not c!499969)) b!3027392))

(assert (= (and b!3027387 c!499968) b!3027376))

(assert (= (and b!3027387 (not c!499968)) b!3027388))

(assert (= (and b!3027376 c!499977) b!3027372))

(assert (= (and b!3027376 (not c!499977)) b!3027378))

(assert (= (and b!3027378 c!499972) b!3027374))

(assert (= (and b!3027378 (not c!499972)) b!3027384))

(assert (= (and b!3027388 (not res!1245822)) b!3027396))

(assert (= (and b!3027388 c!499973) b!3027379))

(assert (= (and b!3027388 (not c!499973)) b!3027377))

(assert (= (and b!3027377 c!499976) b!3027382))

(assert (= (and b!3027377 (not c!499976)) b!3027375))

(assert (= (and b!3027375 c!499970) b!3027380))

(assert (= (and b!3027375 (not c!499970)) b!3027391))

(assert (= (or b!3027376 b!3027388) bm!205879))

(assert (= (or b!3027376 b!3027388) bm!205883))

(assert (= (or b!3027376 b!3027388) bm!205882))

(assert (= (or b!3027378 b!3027396) bm!205877))

(assert (= (or b!3027385 b!3027375) bm!205880))

(assert (= (or b!3027373 bm!205879) bm!205878))

(assert (= (or b!3027373 bm!205882) bm!205881))

(assert (= (and d!850589 res!1245821) b!3027383))

(declare-fun m!3366225 () Bool)

(assert (=> bm!205880 m!3366225))

(declare-fun m!3366229 () Bool)

(assert (=> d!850589 m!3366229))

(declare-fun m!3366231 () Bool)

(assert (=> d!850589 m!3366231))

(declare-fun m!3366235 () Bool)

(assert (=> bm!205883 m!3366235))

(declare-fun m!3366237 () Bool)

(assert (=> bm!205881 m!3366237))

(declare-fun m!3366239 () Bool)

(assert (=> bm!205877 m!3366239))

(declare-fun m!3366241 () Bool)

(assert (=> b!3027383 m!3366241))

(declare-fun m!3366243 () Bool)

(assert (=> b!3027383 m!3366243))

(declare-fun m!3366245 () Bool)

(assert (=> bm!205878 m!3366245))

(declare-fun m!3366247 () Bool)

(assert (=> b!3027377 m!3366247))

(assert (=> bm!205743 d!850589))

(declare-fun d!850593 () Bool)

(assert (=> d!850593 (= (nullable!3067 (regTwo!19342 r!17423)) (nullableFct!875 (regTwo!19342 r!17423)))))

(declare-fun bs!530680 () Bool)

(assert (= bs!530680 d!850593))

(declare-fun m!3366249 () Bool)

(assert (=> bs!530680 m!3366249))

(assert (=> b!3026889 d!850593))

(assert (=> d!850445 d!850555))

(assert (=> d!850445 d!850495))

(assert (=> bm!205758 d!850439))

(assert (=> b!3026808 d!850473))

(declare-fun d!850595 () Bool)

(assert (=> d!850595 (= (isEmpty!19456 (_2!20188 lt!1045349)) ((_ is Nil!35156) (_2!20188 lt!1045349)))))

(assert (=> bm!205784 d!850595))

(declare-fun d!850597 () Bool)

(assert (=> d!850597 (= (nullable!3067 (simplify!394 r!17423)) (nullableFct!875 (simplify!394 r!17423)))))

(declare-fun bs!530681 () Bool)

(assert (= bs!530681 d!850597))

(assert (=> bs!530681 m!3365379))

(declare-fun m!3366251 () Bool)

(assert (=> bs!530681 m!3366251))

(assert (=> b!3026617 d!850597))

(declare-fun d!850599 () Bool)

(assert (=> d!850599 true))

(assert (=> d!850599 true))

(declare-fun res!1245828 () Bool)

(assert (=> d!850599 (= (choose!17951 lambda!113073) res!1245828)))

(assert (=> d!850443 d!850599))

(declare-fun d!850601 () Bool)

(assert (=> d!850601 (= (isEmpty!19458 lt!1045346) (not ((_ is Some!6787) lt!1045346)))))

(assert (=> d!850455 d!850601))

(assert (=> b!3026613 d!850503))

(declare-fun d!850603 () Bool)

(assert (=> d!850603 (= (nullable!3067 (reg!9744 lt!1045353)) (nullableFct!875 (reg!9744 lt!1045353)))))

(declare-fun bs!530682 () Bool)

(assert (= bs!530682 d!850603))

(declare-fun m!3366253 () Bool)

(assert (=> bs!530682 m!3366253))

(assert (=> b!3026838 d!850603))

(declare-fun bm!205884 () Bool)

(declare-fun call!205890 () Bool)

(declare-fun call!205889 () Bool)

(assert (=> bm!205884 (= call!205890 call!205889)))

(declare-fun b!3027407 () Bool)

(declare-fun res!1245831 () Bool)

(declare-fun e!1899009 () Bool)

(assert (=> b!3027407 (=> (not res!1245831) (not e!1899009))))

(assert (=> b!3027407 (= res!1245831 call!205890)))

(declare-fun e!1899007 () Bool)

(assert (=> b!3027407 (= e!1899007 e!1899009)))

(declare-fun b!3027408 () Bool)

(declare-fun call!205891 () Bool)

(assert (=> b!3027408 (= e!1899009 call!205891)))

(declare-fun b!3027409 () Bool)

(declare-fun e!1899003 () Bool)

(declare-fun e!1899005 () Bool)

(assert (=> b!3027409 (= e!1899003 e!1899005)))

(declare-fun c!499981 () Bool)

(assert (=> b!3027409 (= c!499981 ((_ is Star!9415) lt!1045462))))

(declare-fun c!499982 () Bool)

(declare-fun bm!205885 () Bool)

(assert (=> bm!205885 (= call!205889 (validRegex!4148 (ite c!499981 (reg!9744 lt!1045462) (ite c!499982 (regOne!19343 lt!1045462) (regTwo!19342 lt!1045462)))))))

(declare-fun b!3027410 () Bool)

(declare-fun e!1899006 () Bool)

(declare-fun e!1899004 () Bool)

(assert (=> b!3027410 (= e!1899006 e!1899004)))

(declare-fun res!1245829 () Bool)

(assert (=> b!3027410 (=> (not res!1245829) (not e!1899004))))

(assert (=> b!3027410 (= res!1245829 call!205891)))

(declare-fun b!3027406 () Bool)

(assert (=> b!3027406 (= e!1899004 call!205890)))

(declare-fun d!850605 () Bool)

(declare-fun res!1245833 () Bool)

(assert (=> d!850605 (=> res!1245833 e!1899003)))

(assert (=> d!850605 (= res!1245833 ((_ is ElementMatch!9415) lt!1045462))))

(assert (=> d!850605 (= (validRegex!4148 lt!1045462) e!1899003)))

(declare-fun b!3027411 () Bool)

(assert (=> b!3027411 (= e!1899005 e!1899007)))

(assert (=> b!3027411 (= c!499982 ((_ is Union!9415) lt!1045462))))

(declare-fun b!3027412 () Bool)

(declare-fun e!1899008 () Bool)

(assert (=> b!3027412 (= e!1899008 call!205889)))

(declare-fun bm!205886 () Bool)

(assert (=> bm!205886 (= call!205891 (validRegex!4148 (ite c!499982 (regTwo!19343 lt!1045462) (regOne!19342 lt!1045462))))))

(declare-fun b!3027413 () Bool)

(declare-fun res!1245830 () Bool)

(assert (=> b!3027413 (=> res!1245830 e!1899006)))

(assert (=> b!3027413 (= res!1245830 (not ((_ is Concat!14736) lt!1045462)))))

(assert (=> b!3027413 (= e!1899007 e!1899006)))

(declare-fun b!3027414 () Bool)

(assert (=> b!3027414 (= e!1899005 e!1899008)))

(declare-fun res!1245832 () Bool)

(assert (=> b!3027414 (= res!1245832 (not (nullable!3067 (reg!9744 lt!1045462))))))

(assert (=> b!3027414 (=> (not res!1245832) (not e!1899008))))

(assert (= (and d!850605 (not res!1245833)) b!3027409))

(assert (= (and b!3027409 c!499981) b!3027414))

(assert (= (and b!3027409 (not c!499981)) b!3027411))

(assert (= (and b!3027414 res!1245832) b!3027412))

(assert (= (and b!3027411 c!499982) b!3027407))

(assert (= (and b!3027411 (not c!499982)) b!3027413))

(assert (= (and b!3027407 res!1245831) b!3027408))

(assert (= (and b!3027413 (not res!1245830)) b!3027410))

(assert (= (and b!3027410 res!1245829) b!3027406))

(assert (= (or b!3027407 b!3027406) bm!205884))

(assert (= (or b!3027408 b!3027410) bm!205886))

(assert (= (or b!3027412 bm!205884) bm!205885))

(declare-fun m!3366277 () Bool)

(assert (=> bm!205885 m!3366277))

(declare-fun m!3366279 () Bool)

(assert (=> bm!205886 m!3366279))

(declare-fun m!3366281 () Bool)

(assert (=> b!3027414 m!3366281))

(assert (=> d!850423 d!850605))

(declare-fun bm!205887 () Bool)

(declare-fun call!205894 () Bool)

(declare-fun call!205892 () Bool)

(assert (=> bm!205887 (= call!205894 call!205892)))

(declare-fun b!3027416 () Bool)

(declare-fun res!1245839 () Bool)

(declare-fun e!1899022 () Bool)

(assert (=> b!3027416 (=> (not res!1245839) (not e!1899022))))

(assert (=> b!3027416 (= res!1245839 call!205894)))

(declare-fun e!1899020 () Bool)

(assert (=> b!3027416 (= e!1899020 e!1899022)))

(declare-fun b!3027418 () Bool)

(declare-fun call!205895 () Bool)

(assert (=> b!3027418 (= e!1899022 call!205895)))

(declare-fun b!3027420 () Bool)

(declare-fun e!1899011 () Bool)

(declare-fun e!1899016 () Bool)

(assert (=> b!3027420 (= e!1899011 e!1899016)))

(declare-fun c!499983 () Bool)

(assert (=> b!3027420 (= c!499983 ((_ is Star!9415) (regTwo!19342 r!17423)))))

(declare-fun c!499987 () Bool)

(declare-fun bm!205888 () Bool)

(assert (=> bm!205888 (= call!205892 (validRegex!4148 (ite c!499983 (reg!9744 (regTwo!19342 r!17423)) (ite c!499987 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))))))

(declare-fun b!3027423 () Bool)

(declare-fun e!1899019 () Bool)

(declare-fun e!1899013 () Bool)

(assert (=> b!3027423 (= e!1899019 e!1899013)))

(declare-fun res!1245835 () Bool)

(assert (=> b!3027423 (=> (not res!1245835) (not e!1899013))))

(assert (=> b!3027423 (= res!1245835 call!205895)))

(declare-fun b!3027415 () Bool)

(assert (=> b!3027415 (= e!1899013 call!205894)))

(declare-fun d!850609 () Bool)

(declare-fun res!1245843 () Bool)

(assert (=> d!850609 (=> res!1245843 e!1899011)))

(assert (=> d!850609 (= res!1245843 ((_ is ElementMatch!9415) (regTwo!19342 r!17423)))))

(assert (=> d!850609 (= (validRegex!4148 (regTwo!19342 r!17423)) e!1899011)))

(declare-fun b!3027425 () Bool)

(assert (=> b!3027425 (= e!1899016 e!1899020)))

(assert (=> b!3027425 (= c!499987 ((_ is Union!9415) (regTwo!19342 r!17423)))))

(declare-fun b!3027427 () Bool)

(declare-fun e!1899021 () Bool)

(assert (=> b!3027427 (= e!1899021 call!205892)))

(declare-fun bm!205889 () Bool)

(assert (=> bm!205889 (= call!205895 (validRegex!4148 (ite c!499987 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))))))

(declare-fun b!3027430 () Bool)

(declare-fun res!1245837 () Bool)

(assert (=> b!3027430 (=> res!1245837 e!1899019)))

(assert (=> b!3027430 (= res!1245837 (not ((_ is Concat!14736) (regTwo!19342 r!17423))))))

(assert (=> b!3027430 (= e!1899020 e!1899019)))

(declare-fun b!3027432 () Bool)

(assert (=> b!3027432 (= e!1899016 e!1899021)))

(declare-fun res!1245840 () Bool)

(assert (=> b!3027432 (= res!1245840 (not (nullable!3067 (reg!9744 (regTwo!19342 r!17423)))))))

(assert (=> b!3027432 (=> (not res!1245840) (not e!1899021))))

(assert (= (and d!850609 (not res!1245843)) b!3027420))

(assert (= (and b!3027420 c!499983) b!3027432))

(assert (= (and b!3027420 (not c!499983)) b!3027425))

(assert (= (and b!3027432 res!1245840) b!3027427))

(assert (= (and b!3027425 c!499987) b!3027416))

(assert (= (and b!3027425 (not c!499987)) b!3027430))

(assert (= (and b!3027416 res!1245839) b!3027418))

(assert (= (and b!3027430 (not res!1245837)) b!3027423))

(assert (= (and b!3027423 res!1245835) b!3027415))

(assert (= (or b!3027416 b!3027415) bm!205887))

(assert (= (or b!3027418 b!3027423) bm!205889))

(assert (= (or b!3027427 bm!205887) bm!205888))

(declare-fun m!3366283 () Bool)

(assert (=> bm!205888 m!3366283))

(declare-fun m!3366285 () Bool)

(assert (=> bm!205889 m!3366285))

(declare-fun m!3366287 () Bool)

(assert (=> b!3027432 m!3366287))

(assert (=> d!850423 d!850609))

(declare-fun d!850611 () Bool)

(assert (=> d!850611 (= (nullable!3067 lt!1045354) (nullableFct!875 lt!1045354))))

(declare-fun bs!530683 () Bool)

(assert (= bs!530683 d!850611))

(declare-fun m!3366289 () Bool)

(assert (=> bs!530683 m!3366289))

(assert (=> b!3026850 d!850611))

(declare-fun d!850613 () Bool)

(assert (=> d!850613 (= (nullable!3067 (Concat!14736 lt!1045353 lt!1045354)) (nullableFct!875 (Concat!14736 lt!1045353 lt!1045354)))))

(declare-fun bs!530684 () Bool)

(assert (= bs!530684 d!850613))

(declare-fun m!3366291 () Bool)

(assert (=> bs!530684 m!3366291))

(assert (=> b!3026258 d!850613))

(declare-fun d!850615 () Bool)

(assert (=> d!850615 (= (isDefined!5339 lt!1045486) (not (isEmpty!19458 lt!1045486)))))

(declare-fun bs!530685 () Bool)

(assert (= bs!530685 d!850615))

(declare-fun m!3366295 () Bool)

(assert (=> bs!530685 m!3366295))

(assert (=> d!850449 d!850615))

(declare-fun b!3027438 () Bool)

(declare-fun res!1245853 () Bool)

(declare-fun e!1899026 () Bool)

(assert (=> b!3027438 (=> res!1245853 e!1899026)))

(assert (=> b!3027438 (= res!1245853 (not ((_ is ElementMatch!9415) (regOne!19342 r!17423))))))

(declare-fun e!1899028 () Bool)

(assert (=> b!3027438 (= e!1899028 e!1899026)))

(declare-fun b!3027439 () Bool)

(declare-fun e!1899024 () Bool)

(assert (=> b!3027439 (= e!1899024 e!1899028)))

(declare-fun c!499988 () Bool)

(assert (=> b!3027439 (= c!499988 ((_ is EmptyLang!9415) (regOne!19342 r!17423)))))

(declare-fun b!3027440 () Bool)

(declare-fun lt!1045553 () Bool)

(assert (=> b!3027440 (= e!1899028 (not lt!1045553))))

(declare-fun b!3027441 () Bool)

(declare-fun res!1245851 () Bool)

(assert (=> b!3027441 (=> res!1245851 e!1899026)))

(declare-fun e!1899030 () Bool)

(assert (=> b!3027441 (= res!1245851 e!1899030)))

(declare-fun res!1245849 () Bool)

(assert (=> b!3027441 (=> (not res!1245849) (not e!1899030))))

(assert (=> b!3027441 (= res!1245849 lt!1045553)))

(declare-fun bm!205891 () Bool)

(declare-fun call!205896 () Bool)

(assert (=> bm!205891 (= call!205896 (isEmpty!19456 Nil!35156))))

(declare-fun b!3027442 () Bool)

(declare-fun res!1245847 () Bool)

(assert (=> b!3027442 (=> (not res!1245847) (not e!1899030))))

(assert (=> b!3027442 (= res!1245847 (not call!205896))))

(declare-fun d!850617 () Bool)

(assert (=> d!850617 e!1899024))

(declare-fun c!499989 () Bool)

(assert (=> d!850617 (= c!499989 ((_ is EmptyExpr!9415) (regOne!19342 r!17423)))))

(declare-fun e!1899027 () Bool)

(assert (=> d!850617 (= lt!1045553 e!1899027)))

(declare-fun c!499990 () Bool)

(assert (=> d!850617 (= c!499990 (isEmpty!19456 Nil!35156))))

(assert (=> d!850617 (validRegex!4148 (regOne!19342 r!17423))))

(assert (=> d!850617 (= (matchR!4297 (regOne!19342 r!17423) Nil!35156) lt!1045553)))

(declare-fun b!3027443 () Bool)

(declare-fun e!1899029 () Bool)

(assert (=> b!3027443 (= e!1899026 e!1899029)))

(declare-fun res!1245850 () Bool)

(assert (=> b!3027443 (=> (not res!1245850) (not e!1899029))))

(assert (=> b!3027443 (= res!1245850 (not lt!1045553))))

(declare-fun b!3027444 () Bool)

(assert (=> b!3027444 (= e!1899027 (matchR!4297 (derivativeStep!2664 (regOne!19342 r!17423) (head!6723 Nil!35156)) (tail!4949 Nil!35156)))))

(declare-fun b!3027445 () Bool)

(declare-fun e!1899025 () Bool)

(assert (=> b!3027445 (= e!1899025 (not (= (head!6723 Nil!35156) (c!499613 (regOne!19342 r!17423)))))))

(declare-fun b!3027446 () Bool)

(assert (=> b!3027446 (= e!1899029 e!1899025)))

(declare-fun res!1245848 () Bool)

(assert (=> b!3027446 (=> res!1245848 e!1899025)))

(assert (=> b!3027446 (= res!1245848 call!205896)))

(declare-fun b!3027447 () Bool)

(declare-fun res!1245854 () Bool)

(assert (=> b!3027447 (=> res!1245854 e!1899025)))

(assert (=> b!3027447 (= res!1245854 (not (isEmpty!19456 (tail!4949 Nil!35156))))))

(declare-fun b!3027448 () Bool)

(assert (=> b!3027448 (= e!1899030 (= (head!6723 Nil!35156) (c!499613 (regOne!19342 r!17423))))))

(declare-fun b!3027449 () Bool)

(assert (=> b!3027449 (= e!1899027 (nullable!3067 (regOne!19342 r!17423)))))

(declare-fun b!3027450 () Bool)

(assert (=> b!3027450 (= e!1899024 (= lt!1045553 call!205896))))

(declare-fun b!3027451 () Bool)

(declare-fun res!1245852 () Bool)

(assert (=> b!3027451 (=> (not res!1245852) (not e!1899030))))

(assert (=> b!3027451 (= res!1245852 (isEmpty!19456 (tail!4949 Nil!35156)))))

(assert (= (and d!850617 c!499990) b!3027449))

(assert (= (and d!850617 (not c!499990)) b!3027444))

(assert (= (and d!850617 c!499989) b!3027450))

(assert (= (and d!850617 (not c!499989)) b!3027439))

(assert (= (and b!3027439 c!499988) b!3027440))

(assert (= (and b!3027439 (not c!499988)) b!3027438))

(assert (= (and b!3027438 (not res!1245853)) b!3027441))

(assert (= (and b!3027441 res!1245849) b!3027442))

(assert (= (and b!3027442 res!1245847) b!3027451))

(assert (= (and b!3027451 res!1245852) b!3027448))

(assert (= (and b!3027441 (not res!1245851)) b!3027443))

(assert (= (and b!3027443 res!1245850) b!3027446))

(assert (= (and b!3027446 (not res!1245848)) b!3027447))

(assert (= (and b!3027447 (not res!1245854)) b!3027445))

(assert (= (or b!3027450 b!3027442 b!3027446) bm!205891))

(declare-fun m!3366309 () Bool)

(assert (=> b!3027451 m!3366309))

(assert (=> b!3027451 m!3366309))

(declare-fun m!3366311 () Bool)

(assert (=> b!3027451 m!3366311))

(assert (=> b!3027447 m!3366309))

(assert (=> b!3027447 m!3366309))

(assert (=> b!3027447 m!3366311))

(assert (=> b!3027449 m!3365783))

(declare-fun m!3366313 () Bool)

(assert (=> b!3027444 m!3366313))

(assert (=> b!3027444 m!3366313))

(declare-fun m!3366315 () Bool)

(assert (=> b!3027444 m!3366315))

(assert (=> b!3027444 m!3366309))

(assert (=> b!3027444 m!3366315))

(assert (=> b!3027444 m!3366309))

(declare-fun m!3366317 () Bool)

(assert (=> b!3027444 m!3366317))

(assert (=> b!3027448 m!3366313))

(assert (=> b!3027445 m!3366313))

(declare-fun m!3366319 () Bool)

(assert (=> bm!205891 m!3366319))

(assert (=> d!850617 m!3366319))

(assert (=> d!850617 m!3365773))

(assert (=> d!850449 d!850617))

(assert (=> d!850449 d!850495))

(declare-fun b!3027465 () Bool)

(declare-fun e!1899036 () Bool)

(declare-fun lt!1045555 () List!35280)

(assert (=> b!3027465 (= e!1899036 (or (not (= (_2!20188 lt!1045349) Nil!35156)) (= lt!1045555 (t!234345 (_1!20188 lt!1045349)))))))

(declare-fun d!850621 () Bool)

(assert (=> d!850621 e!1899036))

(declare-fun res!1245856 () Bool)

(assert (=> d!850621 (=> (not res!1245856) (not e!1899036))))

(assert (=> d!850621 (= res!1245856 (= (content!4791 lt!1045555) ((_ map or) (content!4791 (t!234345 (_1!20188 lt!1045349))) (content!4791 (_2!20188 lt!1045349)))))))

(declare-fun e!1899037 () List!35280)

(assert (=> d!850621 (= lt!1045555 e!1899037)))

(declare-fun c!499996 () Bool)

(assert (=> d!850621 (= c!499996 ((_ is Nil!35156) (t!234345 (_1!20188 lt!1045349))))))

(assert (=> d!850621 (= (++!8434 (t!234345 (_1!20188 lt!1045349)) (_2!20188 lt!1045349)) lt!1045555)))

(declare-fun b!3027462 () Bool)

(assert (=> b!3027462 (= e!1899037 (_2!20188 lt!1045349))))

(declare-fun b!3027463 () Bool)

(assert (=> b!3027463 (= e!1899037 (Cons!35156 (h!40576 (t!234345 (_1!20188 lt!1045349))) (++!8434 (t!234345 (t!234345 (_1!20188 lt!1045349))) (_2!20188 lt!1045349))))))

(declare-fun b!3027464 () Bool)

(declare-fun res!1245855 () Bool)

(assert (=> b!3027464 (=> (not res!1245855) (not e!1899036))))

(assert (=> b!3027464 (= res!1245855 (= (size!26528 lt!1045555) (+ (size!26528 (t!234345 (_1!20188 lt!1045349))) (size!26528 (_2!20188 lt!1045349)))))))

(assert (= (and d!850621 c!499996) b!3027462))

(assert (= (and d!850621 (not c!499996)) b!3027463))

(assert (= (and d!850621 res!1245856) b!3027464))

(assert (= (and b!3027464 res!1245855) b!3027465))

(declare-fun m!3366329 () Bool)

(assert (=> d!850621 m!3366329))

(declare-fun m!3366331 () Bool)

(assert (=> d!850621 m!3366331))

(assert (=> d!850621 m!3365469))

(declare-fun m!3366333 () Bool)

(assert (=> b!3027463 m!3366333))

(declare-fun m!3366335 () Bool)

(assert (=> b!3027464 m!3366335))

(declare-fun m!3366337 () Bool)

(assert (=> b!3027464 m!3366337))

(assert (=> b!3027464 m!3365477))

(assert (=> b!3026321 d!850621))

(assert (=> b!3026254 d!850517))

(declare-fun d!850629 () Bool)

(assert (=> d!850629 (= (isEmptyLang!492 (ite c!499747 lt!1045439 (ite c!499744 lt!1045440 lt!1045436))) ((_ is EmptyLang!9415) (ite c!499747 lt!1045439 (ite c!499744 lt!1045440 lt!1045436))))))

(assert (=> bm!205741 d!850629))

(assert (=> bm!205756 d!850439))

(assert (=> bm!205776 d!850595))

(assert (=> b!3026846 d!850511))

(assert (=> d!850415 d!850439))

(assert (=> d!850415 d!850457))

(declare-fun d!850631 () Bool)

(assert (=> d!850631 (= (isEmptyLang!492 (ite c!499816 lt!1045471 (ite c!499813 lt!1045472 lt!1045468))) ((_ is EmptyLang!9415) (ite c!499816 lt!1045471 (ite c!499813 lt!1045472 lt!1045468))))))

(assert (=> bm!205781 d!850631))

(declare-fun b!3027475 () Bool)

(declare-fun res!1245868 () Bool)

(declare-fun e!1899047 () Bool)

(assert (=> b!3027475 (=> res!1245868 e!1899047)))

(assert (=> b!3027475 (= res!1245868 (not ((_ is ElementMatch!9415) (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349))))))))

(declare-fun e!1899049 () Bool)

(assert (=> b!3027475 (= e!1899049 e!1899047)))

(declare-fun b!3027476 () Bool)

(declare-fun e!1899045 () Bool)

(assert (=> b!3027476 (= e!1899045 e!1899049)))

(declare-fun c!499999 () Bool)

(assert (=> b!3027476 (= c!499999 ((_ is EmptyLang!9415) (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349)))))))

(declare-fun b!3027477 () Bool)

(declare-fun lt!1045556 () Bool)

(assert (=> b!3027477 (= e!1899049 (not lt!1045556))))

(declare-fun b!3027478 () Bool)

(declare-fun res!1245866 () Bool)

(assert (=> b!3027478 (=> res!1245866 e!1899047)))

(declare-fun e!1899051 () Bool)

(assert (=> b!3027478 (= res!1245866 e!1899051)))

(declare-fun res!1245864 () Bool)

(assert (=> b!3027478 (=> (not res!1245864) (not e!1899051))))

(assert (=> b!3027478 (= res!1245864 lt!1045556)))

(declare-fun bm!205899 () Bool)

(declare-fun call!205904 () Bool)

(assert (=> bm!205899 (= call!205904 (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349))))))

(declare-fun b!3027479 () Bool)

(declare-fun res!1245862 () Bool)

(assert (=> b!3027479 (=> (not res!1245862) (not e!1899051))))

(assert (=> b!3027479 (= res!1245862 (not call!205904))))

(declare-fun d!850633 () Bool)

(assert (=> d!850633 e!1899045))

(declare-fun c!500000 () Bool)

(assert (=> d!850633 (= c!500000 ((_ is EmptyExpr!9415) (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349)))))))

(declare-fun e!1899048 () Bool)

(assert (=> d!850633 (= lt!1045556 e!1899048)))

(declare-fun c!500001 () Bool)

(assert (=> d!850633 (= c!500001 (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349))))))

(assert (=> d!850633 (validRegex!4148 (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349))))))

(assert (=> d!850633 (= (matchR!4297 (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349))) (tail!4949 (_1!20188 lt!1045349))) lt!1045556)))

(declare-fun b!3027480 () Bool)

(declare-fun e!1899050 () Bool)

(assert (=> b!3027480 (= e!1899047 e!1899050)))

(declare-fun res!1245865 () Bool)

(assert (=> b!3027480 (=> (not res!1245865) (not e!1899050))))

(assert (=> b!3027480 (= res!1245865 (not lt!1045556))))

(declare-fun b!3027481 () Bool)

(assert (=> b!3027481 (= e!1899048 (matchR!4297 (derivativeStep!2664 (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349))) (head!6723 (tail!4949 (_1!20188 lt!1045349)))) (tail!4949 (tail!4949 (_1!20188 lt!1045349)))))))

(declare-fun b!3027482 () Bool)

(declare-fun e!1899046 () Bool)

(assert (=> b!3027482 (= e!1899046 (not (= (head!6723 (tail!4949 (_1!20188 lt!1045349))) (c!499613 (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349)))))))))

(declare-fun b!3027483 () Bool)

(assert (=> b!3027483 (= e!1899050 e!1899046)))

(declare-fun res!1245863 () Bool)

(assert (=> b!3027483 (=> res!1245863 e!1899046)))

(assert (=> b!3027483 (= res!1245863 call!205904)))

(declare-fun b!3027484 () Bool)

(declare-fun res!1245869 () Bool)

(assert (=> b!3027484 (=> res!1245869 e!1899046)))

(assert (=> b!3027484 (= res!1245869 (not (isEmpty!19456 (tail!4949 (tail!4949 (_1!20188 lt!1045349))))))))

(declare-fun b!3027485 () Bool)

(assert (=> b!3027485 (= e!1899051 (= (head!6723 (tail!4949 (_1!20188 lt!1045349))) (c!499613 (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349))))))))

(declare-fun b!3027486 () Bool)

(assert (=> b!3027486 (= e!1899048 (nullable!3067 (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349)))))))

(declare-fun b!3027487 () Bool)

(assert (=> b!3027487 (= e!1899045 (= lt!1045556 call!205904))))

(declare-fun b!3027488 () Bool)

(declare-fun res!1245867 () Bool)

(assert (=> b!3027488 (=> (not res!1245867) (not e!1899051))))

(assert (=> b!3027488 (= res!1245867 (isEmpty!19456 (tail!4949 (tail!4949 (_1!20188 lt!1045349)))))))

(assert (= (and d!850633 c!500001) b!3027486))

(assert (= (and d!850633 (not c!500001)) b!3027481))

(assert (= (and d!850633 c!500000) b!3027487))

(assert (= (and d!850633 (not c!500000)) b!3027476))

(assert (= (and b!3027476 c!499999) b!3027477))

(assert (= (and b!3027476 (not c!499999)) b!3027475))

(assert (= (and b!3027475 (not res!1245868)) b!3027478))

(assert (= (and b!3027478 res!1245864) b!3027479))

(assert (= (and b!3027479 res!1245862) b!3027488))

(assert (= (and b!3027488 res!1245867) b!3027485))

(assert (= (and b!3027478 (not res!1245866)) b!3027480))

(assert (= (and b!3027480 res!1245865) b!3027483))

(assert (= (and b!3027483 (not res!1245863)) b!3027484))

(assert (= (and b!3027484 (not res!1245869)) b!3027482))

(assert (= (or b!3027487 b!3027479 b!3027483) bm!205899))

(assert (=> b!3027488 m!3365735))

(assert (=> b!3027488 m!3365873))

(assert (=> b!3027488 m!3365873))

(assert (=> b!3027488 m!3365875))

(assert (=> b!3027484 m!3365735))

(assert (=> b!3027484 m!3365873))

(assert (=> b!3027484 m!3365873))

(assert (=> b!3027484 m!3365875))

(assert (=> b!3027486 m!3365743))

(declare-fun m!3366345 () Bool)

(assert (=> b!3027486 m!3366345))

(assert (=> b!3027481 m!3365735))

(assert (=> b!3027481 m!3365879))

(assert (=> b!3027481 m!3365743))

(assert (=> b!3027481 m!3365879))

(declare-fun m!3366347 () Bool)

(assert (=> b!3027481 m!3366347))

(assert (=> b!3027481 m!3365735))

(assert (=> b!3027481 m!3365873))

(assert (=> b!3027481 m!3366347))

(assert (=> b!3027481 m!3365873))

(declare-fun m!3366349 () Bool)

(assert (=> b!3027481 m!3366349))

(assert (=> b!3027485 m!3365735))

(assert (=> b!3027485 m!3365879))

(assert (=> b!3027482 m!3365735))

(assert (=> b!3027482 m!3365879))

(assert (=> bm!205899 m!3365735))

(assert (=> bm!205899 m!3365737))

(assert (=> d!850633 m!3365735))

(assert (=> d!850633 m!3365737))

(assert (=> d!850633 m!3365743))

(declare-fun m!3366351 () Bool)

(assert (=> d!850633 m!3366351))

(assert (=> b!3026804 d!850633))

(declare-fun b!3027514 () Bool)

(declare-fun e!1899066 () Regex!9415)

(declare-fun call!205912 () Regex!9415)

(declare-fun call!205915 () Regex!9415)

(assert (=> b!3027514 (= e!1899066 (Union!9415 call!205912 call!205915))))

(declare-fun b!3027515 () Bool)

(declare-fun e!1899067 () Regex!9415)

(assert (=> b!3027515 (= e!1899066 e!1899067)))

(declare-fun c!500013 () Bool)

(assert (=> b!3027515 (= c!500013 ((_ is Star!9415) lt!1045353))))

(declare-fun bm!205907 () Bool)

(declare-fun call!205914 () Regex!9415)

(assert (=> bm!205907 (= call!205914 call!205915)))

(declare-fun c!500017 () Bool)

(declare-fun bm!205908 () Bool)

(assert (=> bm!205908 (= call!205912 (derivativeStep!2664 (ite c!500017 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)) (head!6723 (_1!20188 lt!1045349))))))

(declare-fun b!3027516 () Bool)

(declare-fun e!1899070 () Regex!9415)

(declare-fun call!205913 () Regex!9415)

(assert (=> b!3027516 (= e!1899070 (Union!9415 (Concat!14736 call!205913 (regTwo!19342 lt!1045353)) EmptyLang!9415))))

(declare-fun b!3027517 () Bool)

(declare-fun c!500015 () Bool)

(assert (=> b!3027517 (= c!500015 (nullable!3067 (regOne!19342 lt!1045353)))))

(assert (=> b!3027517 (= e!1899067 e!1899070)))

(declare-fun bm!205909 () Bool)

(assert (=> bm!205909 (= call!205913 call!205914)))

(declare-fun d!850639 () Bool)

(declare-fun lt!1045563 () Regex!9415)

(assert (=> d!850639 (validRegex!4148 lt!1045563)))

(declare-fun e!1899068 () Regex!9415)

(assert (=> d!850639 (= lt!1045563 e!1899068)))

(declare-fun c!500014 () Bool)

(assert (=> d!850639 (= c!500014 (or ((_ is EmptyExpr!9415) lt!1045353) ((_ is EmptyLang!9415) lt!1045353)))))

(assert (=> d!850639 (validRegex!4148 lt!1045353)))

(assert (=> d!850639 (= (derivativeStep!2664 lt!1045353 (head!6723 (_1!20188 lt!1045349))) lt!1045563)))

(declare-fun b!3027518 () Bool)

(declare-fun e!1899069 () Regex!9415)

(assert (=> b!3027518 (= e!1899069 (ite (= (head!6723 (_1!20188 lt!1045349)) (c!499613 lt!1045353)) EmptyExpr!9415 EmptyLang!9415))))

(declare-fun b!3027519 () Bool)

(assert (=> b!3027519 (= e!1899070 (Union!9415 (Concat!14736 call!205913 (regTwo!19342 lt!1045353)) call!205912))))

(declare-fun b!3027520 () Bool)

(assert (=> b!3027520 (= c!500017 ((_ is Union!9415) lt!1045353))))

(assert (=> b!3027520 (= e!1899069 e!1899066)))

(declare-fun bm!205910 () Bool)

(assert (=> bm!205910 (= call!205915 (derivativeStep!2664 (ite c!500017 (regTwo!19343 lt!1045353) (ite c!500013 (reg!9744 lt!1045353) (regOne!19342 lt!1045353))) (head!6723 (_1!20188 lt!1045349))))))

(declare-fun b!3027521 () Bool)

(assert (=> b!3027521 (= e!1899068 e!1899069)))

(declare-fun c!500016 () Bool)

(assert (=> b!3027521 (= c!500016 ((_ is ElementMatch!9415) lt!1045353))))

(declare-fun b!3027522 () Bool)

(assert (=> b!3027522 (= e!1899068 EmptyLang!9415)))

(declare-fun b!3027523 () Bool)

(assert (=> b!3027523 (= e!1899067 (Concat!14736 call!205914 lt!1045353))))

(assert (= (and d!850639 c!500014) b!3027522))

(assert (= (and d!850639 (not c!500014)) b!3027521))

(assert (= (and b!3027521 c!500016) b!3027518))

(assert (= (and b!3027521 (not c!500016)) b!3027520))

(assert (= (and b!3027520 c!500017) b!3027514))

(assert (= (and b!3027520 (not c!500017)) b!3027515))

(assert (= (and b!3027515 c!500013) b!3027523))

(assert (= (and b!3027515 (not c!500013)) b!3027517))

(assert (= (and b!3027517 c!500015) b!3027519))

(assert (= (and b!3027517 (not c!500015)) b!3027516))

(assert (= (or b!3027519 b!3027516) bm!205909))

(assert (= (or b!3027523 bm!205909) bm!205907))

(assert (= (or b!3027514 bm!205907) bm!205910))

(assert (= (or b!3027514 b!3027519) bm!205908))

(assert (=> bm!205908 m!3365741))

(declare-fun m!3366355 () Bool)

(assert (=> bm!205908 m!3366355))

(declare-fun m!3366359 () Bool)

(assert (=> b!3027517 m!3366359))

(declare-fun m!3366361 () Bool)

(assert (=> d!850639 m!3366361))

(assert (=> d!850639 m!3365403))

(assert (=> bm!205910 m!3365741))

(declare-fun m!3366369 () Bool)

(assert (=> bm!205910 m!3366369))

(assert (=> b!3026804 d!850639))

(assert (=> b!3026804 d!850473))

(assert (=> b!3026804 d!850475))

(assert (=> bm!205744 d!850439))

(assert (=> d!850435 d!850595))

(assert (=> d!850435 d!850609))

(assert (=> d!850407 d!850439))

(declare-fun bm!205911 () Bool)

(declare-fun call!205917 () Bool)

(declare-fun call!205916 () Bool)

(assert (=> bm!205911 (= call!205917 call!205916)))

(declare-fun b!3027525 () Bool)

(declare-fun res!1245875 () Bool)

(declare-fun e!1899077 () Bool)

(assert (=> b!3027525 (=> (not res!1245875) (not e!1899077))))

(assert (=> b!3027525 (= res!1245875 call!205917)))

(declare-fun e!1899075 () Bool)

(assert (=> b!3027525 (= e!1899075 e!1899077)))

(declare-fun b!3027526 () Bool)

(declare-fun call!205918 () Bool)

(assert (=> b!3027526 (= e!1899077 call!205918)))

(declare-fun b!3027527 () Bool)

(declare-fun e!1899071 () Bool)

(declare-fun e!1899073 () Bool)

(assert (=> b!3027527 (= e!1899071 e!1899073)))

(declare-fun c!500018 () Bool)

(assert (=> b!3027527 (= c!500018 ((_ is Star!9415) (simplify!394 r!17423)))))

(declare-fun bm!205912 () Bool)

(declare-fun c!500019 () Bool)

(assert (=> bm!205912 (= call!205916 (validRegex!4148 (ite c!500018 (reg!9744 (simplify!394 r!17423)) (ite c!500019 (regOne!19343 (simplify!394 r!17423)) (regTwo!19342 (simplify!394 r!17423))))))))

(declare-fun b!3027528 () Bool)

(declare-fun e!1899074 () Bool)

(declare-fun e!1899072 () Bool)

(assert (=> b!3027528 (= e!1899074 e!1899072)))

(declare-fun res!1245873 () Bool)

(assert (=> b!3027528 (=> (not res!1245873) (not e!1899072))))

(assert (=> b!3027528 (= res!1245873 call!205918)))

(declare-fun b!3027524 () Bool)

(assert (=> b!3027524 (= e!1899072 call!205917)))

(declare-fun d!850641 () Bool)

(declare-fun res!1245877 () Bool)

(assert (=> d!850641 (=> res!1245877 e!1899071)))

(assert (=> d!850641 (= res!1245877 ((_ is ElementMatch!9415) (simplify!394 r!17423)))))

(assert (=> d!850641 (= (validRegex!4148 (simplify!394 r!17423)) e!1899071)))

(declare-fun b!3027529 () Bool)

(assert (=> b!3027529 (= e!1899073 e!1899075)))

(assert (=> b!3027529 (= c!500019 ((_ is Union!9415) (simplify!394 r!17423)))))

(declare-fun b!3027530 () Bool)

(declare-fun e!1899076 () Bool)

(assert (=> b!3027530 (= e!1899076 call!205916)))

(declare-fun bm!205913 () Bool)

(assert (=> bm!205913 (= call!205918 (validRegex!4148 (ite c!500019 (regTwo!19343 (simplify!394 r!17423)) (regOne!19342 (simplify!394 r!17423)))))))

(declare-fun b!3027531 () Bool)

(declare-fun res!1245874 () Bool)

(assert (=> b!3027531 (=> res!1245874 e!1899074)))

(assert (=> b!3027531 (= res!1245874 (not ((_ is Concat!14736) (simplify!394 r!17423))))))

(assert (=> b!3027531 (= e!1899075 e!1899074)))

(declare-fun b!3027532 () Bool)

(assert (=> b!3027532 (= e!1899073 e!1899076)))

(declare-fun res!1245876 () Bool)

(assert (=> b!3027532 (= res!1245876 (not (nullable!3067 (reg!9744 (simplify!394 r!17423)))))))

(assert (=> b!3027532 (=> (not res!1245876) (not e!1899076))))

(assert (= (and d!850641 (not res!1245877)) b!3027527))

(assert (= (and b!3027527 c!500018) b!3027532))

(assert (= (and b!3027527 (not c!500018)) b!3027529))

(assert (= (and b!3027532 res!1245876) b!3027530))

(assert (= (and b!3027529 c!500019) b!3027525))

(assert (= (and b!3027529 (not c!500019)) b!3027531))

(assert (= (and b!3027525 res!1245875) b!3027526))

(assert (= (and b!3027531 (not res!1245874)) b!3027528))

(assert (= (and b!3027528 res!1245873) b!3027524))

(assert (= (or b!3027525 b!3027524) bm!205911))

(assert (= (or b!3027526 b!3027528) bm!205913))

(assert (= (or b!3027530 bm!205911) bm!205912))

(declare-fun m!3366381 () Bool)

(assert (=> bm!205912 m!3366381))

(declare-fun m!3366383 () Bool)

(assert (=> bm!205913 m!3366383))

(declare-fun m!3366385 () Bool)

(assert (=> b!3027532 m!3366385))

(assert (=> d!850407 d!850641))

(assert (=> d!850425 d!850555))

(assert (=> d!850425 d!850427))

(assert (=> d!850433 d!850445))

(assert (=> d!850433 d!850495))

(declare-fun b!3027533 () Bool)

(declare-fun res!1245884 () Bool)

(declare-fun e!1899080 () Bool)

(assert (=> b!3027533 (=> res!1245884 e!1899080)))

(assert (=> b!3027533 (= res!1245884 (not ((_ is ElementMatch!9415) (simplify!394 (regOne!19342 r!17423)))))))

(declare-fun e!1899082 () Bool)

(assert (=> b!3027533 (= e!1899082 e!1899080)))

(declare-fun b!3027534 () Bool)

(declare-fun e!1899078 () Bool)

(assert (=> b!3027534 (= e!1899078 e!1899082)))

(declare-fun c!500020 () Bool)

(assert (=> b!3027534 (= c!500020 ((_ is EmptyLang!9415) (simplify!394 (regOne!19342 r!17423))))))

(declare-fun b!3027535 () Bool)

(declare-fun lt!1045564 () Bool)

(assert (=> b!3027535 (= e!1899082 (not lt!1045564))))

(declare-fun b!3027536 () Bool)

(declare-fun res!1245882 () Bool)

(assert (=> b!3027536 (=> res!1245882 e!1899080)))

(declare-fun e!1899084 () Bool)

(assert (=> b!3027536 (= res!1245882 e!1899084)))

(declare-fun res!1245880 () Bool)

(assert (=> b!3027536 (=> (not res!1245880) (not e!1899084))))

(assert (=> b!3027536 (= res!1245880 lt!1045564)))

(declare-fun bm!205914 () Bool)

(declare-fun call!205919 () Bool)

(assert (=> bm!205914 (= call!205919 (isEmpty!19456 (_1!20188 lt!1045349)))))

(declare-fun b!3027537 () Bool)

(declare-fun res!1245878 () Bool)

(assert (=> b!3027537 (=> (not res!1245878) (not e!1899084))))

(assert (=> b!3027537 (= res!1245878 (not call!205919))))

(declare-fun d!850647 () Bool)

(assert (=> d!850647 e!1899078))

(declare-fun c!500021 () Bool)

(assert (=> d!850647 (= c!500021 ((_ is EmptyExpr!9415) (simplify!394 (regOne!19342 r!17423))))))

(declare-fun e!1899081 () Bool)

(assert (=> d!850647 (= lt!1045564 e!1899081)))

(declare-fun c!500022 () Bool)

(assert (=> d!850647 (= c!500022 (isEmpty!19456 (_1!20188 lt!1045349)))))

(assert (=> d!850647 (validRegex!4148 (simplify!394 (regOne!19342 r!17423)))))

(assert (=> d!850647 (= (matchR!4297 (simplify!394 (regOne!19342 r!17423)) (_1!20188 lt!1045349)) lt!1045564)))

(declare-fun b!3027538 () Bool)

(declare-fun e!1899083 () Bool)

(assert (=> b!3027538 (= e!1899080 e!1899083)))

(declare-fun res!1245881 () Bool)

(assert (=> b!3027538 (=> (not res!1245881) (not e!1899083))))

(assert (=> b!3027538 (= res!1245881 (not lt!1045564))))

(declare-fun b!3027539 () Bool)

(assert (=> b!3027539 (= e!1899081 (matchR!4297 (derivativeStep!2664 (simplify!394 (regOne!19342 r!17423)) (head!6723 (_1!20188 lt!1045349))) (tail!4949 (_1!20188 lt!1045349))))))

(declare-fun b!3027540 () Bool)

(declare-fun e!1899079 () Bool)

(assert (=> b!3027540 (= e!1899079 (not (= (head!6723 (_1!20188 lt!1045349)) (c!499613 (simplify!394 (regOne!19342 r!17423))))))))

(declare-fun b!3027541 () Bool)

(assert (=> b!3027541 (= e!1899083 e!1899079)))

(declare-fun res!1245879 () Bool)

(assert (=> b!3027541 (=> res!1245879 e!1899079)))

(assert (=> b!3027541 (= res!1245879 call!205919)))

(declare-fun b!3027542 () Bool)

(declare-fun res!1245885 () Bool)

(assert (=> b!3027542 (=> res!1245885 e!1899079)))

(assert (=> b!3027542 (= res!1245885 (not (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349)))))))

(declare-fun b!3027543 () Bool)

(assert (=> b!3027543 (= e!1899084 (= (head!6723 (_1!20188 lt!1045349)) (c!499613 (simplify!394 (regOne!19342 r!17423)))))))

(declare-fun b!3027544 () Bool)

(assert (=> b!3027544 (= e!1899081 (nullable!3067 (simplify!394 (regOne!19342 r!17423))))))

(declare-fun b!3027545 () Bool)

(assert (=> b!3027545 (= e!1899078 (= lt!1045564 call!205919))))

(declare-fun b!3027546 () Bool)

(declare-fun res!1245883 () Bool)

(assert (=> b!3027546 (=> (not res!1245883) (not e!1899084))))

(assert (=> b!3027546 (= res!1245883 (isEmpty!19456 (tail!4949 (_1!20188 lt!1045349))))))

(assert (= (and d!850647 c!500022) b!3027544))

(assert (= (and d!850647 (not c!500022)) b!3027539))

(assert (= (and d!850647 c!500021) b!3027545))

(assert (= (and d!850647 (not c!500021)) b!3027534))

(assert (= (and b!3027534 c!500020) b!3027535))

(assert (= (and b!3027534 (not c!500020)) b!3027533))

(assert (= (and b!3027533 (not res!1245884)) b!3027536))

(assert (= (and b!3027536 res!1245880) b!3027537))

(assert (= (and b!3027537 res!1245878) b!3027546))

(assert (= (and b!3027546 res!1245883) b!3027543))

(assert (= (and b!3027536 (not res!1245882)) b!3027538))

(assert (= (and b!3027538 res!1245881) b!3027541))

(assert (= (and b!3027541 (not res!1245879)) b!3027542))

(assert (= (and b!3027542 (not res!1245885)) b!3027540))

(assert (= (or b!3027545 b!3027537 b!3027541) bm!205914))

(assert (=> b!3027546 m!3365735))

(assert (=> b!3027546 m!3365735))

(assert (=> b!3027546 m!3365737))

(assert (=> b!3027542 m!3365735))

(assert (=> b!3027542 m!3365735))

(assert (=> b!3027542 m!3365737))

(assert (=> b!3027544 m!3365409))

(declare-fun m!3366389 () Bool)

(assert (=> b!3027544 m!3366389))

(assert (=> b!3027539 m!3365741))

(assert (=> b!3027539 m!3365409))

(assert (=> b!3027539 m!3365741))

(declare-fun m!3366391 () Bool)

(assert (=> b!3027539 m!3366391))

(assert (=> b!3027539 m!3365735))

(assert (=> b!3027539 m!3366391))

(assert (=> b!3027539 m!3365735))

(declare-fun m!3366393 () Bool)

(assert (=> b!3027539 m!3366393))

(assert (=> b!3027543 m!3365741))

(assert (=> b!3027540 m!3365741))

(assert (=> bm!205914 m!3365747))

(assert (=> d!850647 m!3365747))

(assert (=> d!850647 m!3365409))

(declare-fun m!3366395 () Bool)

(assert (=> d!850647 m!3366395))

(assert (=> d!850433 d!850647))

(assert (=> d!850433 d!850431))

(declare-fun d!850655 () Bool)

(assert (=> d!850655 (= (matchR!4297 (regOne!19342 r!17423) (_1!20188 lt!1045349)) (matchR!4297 (simplify!394 (regOne!19342 r!17423)) (_1!20188 lt!1045349)))))

(assert (=> d!850655 true))

(declare-fun _$95!565 () Unit!49253)

(assert (=> d!850655 (= (choose!17945 (regOne!19342 r!17423) (_1!20188 lt!1045349)) _$95!565)))

(declare-fun bs!530688 () Bool)

(assert (= bs!530688 d!850655))

(assert (=> bs!530688 m!3365369))

(assert (=> bs!530688 m!3365409))

(assert (=> bs!530688 m!3365409))

(assert (=> bs!530688 m!3365789))

(assert (=> d!850433 d!850655))

(assert (=> bm!205687 d!850465))

(declare-fun b!3027575 () Bool)

(declare-fun res!1245905 () Bool)

(declare-fun e!1899101 () Bool)

(assert (=> b!3027575 (=> res!1245905 e!1899101)))

(assert (=> b!3027575 (= res!1245905 (not ((_ is ElementMatch!9415) (regTwo!19342 r!17423))))))

(declare-fun e!1899103 () Bool)

(assert (=> b!3027575 (= e!1899103 e!1899101)))

(declare-fun b!3027576 () Bool)

(declare-fun e!1899099 () Bool)

(assert (=> b!3027576 (= e!1899099 e!1899103)))

(declare-fun c!500032 () Bool)

(assert (=> b!3027576 (= c!500032 ((_ is EmptyLang!9415) (regTwo!19342 r!17423)))))

(declare-fun b!3027577 () Bool)

(declare-fun lt!1045568 () Bool)

(assert (=> b!3027577 (= e!1899103 (not lt!1045568))))

(declare-fun b!3027578 () Bool)

(declare-fun res!1245903 () Bool)

(assert (=> b!3027578 (=> res!1245903 e!1899101)))

(declare-fun e!1899105 () Bool)

(assert (=> b!3027578 (= res!1245903 e!1899105)))

(declare-fun res!1245901 () Bool)

(assert (=> b!3027578 (=> (not res!1245901) (not e!1899105))))

(assert (=> b!3027578 (= res!1245901 lt!1045568)))

(declare-fun bm!205920 () Bool)

(declare-fun call!205925 () Bool)

(assert (=> bm!205920 (= call!205925 (isEmpty!19456 (_2!20188 (get!10962 lt!1045486))))))

(declare-fun b!3027579 () Bool)

(declare-fun res!1245899 () Bool)

(assert (=> b!3027579 (=> (not res!1245899) (not e!1899105))))

(assert (=> b!3027579 (= res!1245899 (not call!205925))))

(declare-fun d!850665 () Bool)

(assert (=> d!850665 e!1899099))

(declare-fun c!500033 () Bool)

(assert (=> d!850665 (= c!500033 ((_ is EmptyExpr!9415) (regTwo!19342 r!17423)))))

(declare-fun e!1899102 () Bool)

(assert (=> d!850665 (= lt!1045568 e!1899102)))

(declare-fun c!500034 () Bool)

(assert (=> d!850665 (= c!500034 (isEmpty!19456 (_2!20188 (get!10962 lt!1045486))))))

(assert (=> d!850665 (validRegex!4148 (regTwo!19342 r!17423))))

(assert (=> d!850665 (= (matchR!4297 (regTwo!19342 r!17423) (_2!20188 (get!10962 lt!1045486))) lt!1045568)))

(declare-fun b!3027580 () Bool)

(declare-fun e!1899104 () Bool)

(assert (=> b!3027580 (= e!1899101 e!1899104)))

(declare-fun res!1245902 () Bool)

(assert (=> b!3027580 (=> (not res!1245902) (not e!1899104))))

(assert (=> b!3027580 (= res!1245902 (not lt!1045568))))

(declare-fun b!3027581 () Bool)

(assert (=> b!3027581 (= e!1899102 (matchR!4297 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 (_2!20188 (get!10962 lt!1045486)))) (tail!4949 (_2!20188 (get!10962 lt!1045486)))))))

(declare-fun b!3027582 () Bool)

(declare-fun e!1899100 () Bool)

(assert (=> b!3027582 (= e!1899100 (not (= (head!6723 (_2!20188 (get!10962 lt!1045486))) (c!499613 (regTwo!19342 r!17423)))))))

(declare-fun b!3027583 () Bool)

(assert (=> b!3027583 (= e!1899104 e!1899100)))

(declare-fun res!1245900 () Bool)

(assert (=> b!3027583 (=> res!1245900 e!1899100)))

(assert (=> b!3027583 (= res!1245900 call!205925)))

(declare-fun b!3027584 () Bool)

(declare-fun res!1245906 () Bool)

(assert (=> b!3027584 (=> res!1245906 e!1899100)))

(assert (=> b!3027584 (= res!1245906 (not (isEmpty!19456 (tail!4949 (_2!20188 (get!10962 lt!1045486))))))))

(declare-fun b!3027585 () Bool)

(assert (=> b!3027585 (= e!1899105 (= (head!6723 (_2!20188 (get!10962 lt!1045486))) (c!499613 (regTwo!19342 r!17423))))))

(declare-fun b!3027586 () Bool)

(assert (=> b!3027586 (= e!1899102 (nullable!3067 (regTwo!19342 r!17423)))))

(declare-fun b!3027587 () Bool)

(assert (=> b!3027587 (= e!1899099 (= lt!1045568 call!205925))))

(declare-fun b!3027588 () Bool)

(declare-fun res!1245904 () Bool)

(assert (=> b!3027588 (=> (not res!1245904) (not e!1899105))))

(assert (=> b!3027588 (= res!1245904 (isEmpty!19456 (tail!4949 (_2!20188 (get!10962 lt!1045486)))))))

(assert (= (and d!850665 c!500034) b!3027586))

(assert (= (and d!850665 (not c!500034)) b!3027581))

(assert (= (and d!850665 c!500033) b!3027587))

(assert (= (and d!850665 (not c!500033)) b!3027576))

(assert (= (and b!3027576 c!500032) b!3027577))

(assert (= (and b!3027576 (not c!500032)) b!3027575))

(assert (= (and b!3027575 (not res!1245905)) b!3027578))

(assert (= (and b!3027578 res!1245901) b!3027579))

(assert (= (and b!3027579 res!1245899) b!3027588))

(assert (= (and b!3027588 res!1245904) b!3027585))

(assert (= (and b!3027578 (not res!1245903)) b!3027580))

(assert (= (and b!3027580 res!1245902) b!3027583))

(assert (= (and b!3027583 (not res!1245900)) b!3027584))

(assert (= (and b!3027584 (not res!1245906)) b!3027582))

(assert (= (or b!3027587 b!3027579 b!3027583) bm!205920))

(declare-fun m!3366435 () Bool)

(assert (=> b!3027588 m!3366435))

(assert (=> b!3027588 m!3366435))

(declare-fun m!3366437 () Bool)

(assert (=> b!3027588 m!3366437))

(assert (=> b!3027584 m!3366435))

(assert (=> b!3027584 m!3366435))

(assert (=> b!3027584 m!3366437))

(assert (=> b!3027586 m!3365729))

(declare-fun m!3366439 () Bool)

(assert (=> b!3027581 m!3366439))

(assert (=> b!3027581 m!3366439))

(declare-fun m!3366441 () Bool)

(assert (=> b!3027581 m!3366441))

(assert (=> b!3027581 m!3366435))

(assert (=> b!3027581 m!3366441))

(assert (=> b!3027581 m!3366435))

(declare-fun m!3366443 () Bool)

(assert (=> b!3027581 m!3366443))

(assert (=> b!3027585 m!3366439))

(assert (=> b!3027582 m!3366439))

(declare-fun m!3366445 () Bool)

(assert (=> bm!205920 m!3366445))

(assert (=> d!850665 m!3366445))

(assert (=> d!850665 m!3365715))

(assert (=> b!3026942 d!850665))

(assert (=> b!3026942 d!850461))

(declare-fun b!3027600 () Bool)

(declare-fun res!1245916 () Bool)

(declare-fun e!1899115 () Bool)

(assert (=> b!3027600 (=> res!1245916 e!1899115)))

(assert (=> b!3027600 (= res!1245916 (not ((_ is ElementMatch!9415) (regTwo!19342 r!17423))))))

(declare-fun e!1899117 () Bool)

(assert (=> b!3027600 (= e!1899117 e!1899115)))

(declare-fun b!3027601 () Bool)

(declare-fun e!1899113 () Bool)

(assert (=> b!3027601 (= e!1899113 e!1899117)))

(declare-fun c!500039 () Bool)

(assert (=> b!3027601 (= c!500039 ((_ is EmptyLang!9415) (regTwo!19342 r!17423)))))

(declare-fun b!3027602 () Bool)

(declare-fun lt!1045569 () Bool)

(assert (=> b!3027602 (= e!1899117 (not lt!1045569))))

(declare-fun b!3027603 () Bool)

(declare-fun res!1245914 () Bool)

(assert (=> b!3027603 (=> res!1245914 e!1899115)))

(declare-fun e!1899119 () Bool)

(assert (=> b!3027603 (= res!1245914 e!1899119)))

(declare-fun res!1245912 () Bool)

(assert (=> b!3027603 (=> (not res!1245912) (not e!1899119))))

(assert (=> b!3027603 (= res!1245912 lt!1045569)))

(declare-fun bm!205923 () Bool)

(declare-fun call!205928 () Bool)

(assert (=> bm!205923 (= call!205928 (isEmpty!19456 s!11993))))

(declare-fun b!3027604 () Bool)

(declare-fun res!1245910 () Bool)

(assert (=> b!3027604 (=> (not res!1245910) (not e!1899119))))

(assert (=> b!3027604 (= res!1245910 (not call!205928))))

(declare-fun d!850675 () Bool)

(assert (=> d!850675 e!1899113))

(declare-fun c!500040 () Bool)

(assert (=> d!850675 (= c!500040 ((_ is EmptyExpr!9415) (regTwo!19342 r!17423)))))

(declare-fun e!1899116 () Bool)

(assert (=> d!850675 (= lt!1045569 e!1899116)))

(declare-fun c!500041 () Bool)

(assert (=> d!850675 (= c!500041 (isEmpty!19456 s!11993))))

(assert (=> d!850675 (validRegex!4148 (regTwo!19342 r!17423))))

(assert (=> d!850675 (= (matchR!4297 (regTwo!19342 r!17423) s!11993) lt!1045569)))

(declare-fun b!3027605 () Bool)

(declare-fun e!1899118 () Bool)

(assert (=> b!3027605 (= e!1899115 e!1899118)))

(declare-fun res!1245913 () Bool)

(assert (=> b!3027605 (=> (not res!1245913) (not e!1899118))))

(assert (=> b!3027605 (= res!1245913 (not lt!1045569))))

(declare-fun b!3027606 () Bool)

(assert (=> b!3027606 (= e!1899116 (matchR!4297 (derivativeStep!2664 (regTwo!19342 r!17423) (head!6723 s!11993)) (tail!4949 s!11993)))))

(declare-fun b!3027607 () Bool)

(declare-fun e!1899114 () Bool)

(assert (=> b!3027607 (= e!1899114 (not (= (head!6723 s!11993) (c!499613 (regTwo!19342 r!17423)))))))

(declare-fun b!3027608 () Bool)

(assert (=> b!3027608 (= e!1899118 e!1899114)))

(declare-fun res!1245911 () Bool)

(assert (=> b!3027608 (=> res!1245911 e!1899114)))

(assert (=> b!3027608 (= res!1245911 call!205928)))

(declare-fun b!3027609 () Bool)

(declare-fun res!1245917 () Bool)

(assert (=> b!3027609 (=> res!1245917 e!1899114)))

(assert (=> b!3027609 (= res!1245917 (not (isEmpty!19456 (tail!4949 s!11993))))))

(declare-fun b!3027610 () Bool)

(assert (=> b!3027610 (= e!1899119 (= (head!6723 s!11993) (c!499613 (regTwo!19342 r!17423))))))

(declare-fun b!3027611 () Bool)

(assert (=> b!3027611 (= e!1899116 (nullable!3067 (regTwo!19342 r!17423)))))

(declare-fun b!3027612 () Bool)

(assert (=> b!3027612 (= e!1899113 (= lt!1045569 call!205928))))

(declare-fun b!3027613 () Bool)

(declare-fun res!1245915 () Bool)

(assert (=> b!3027613 (=> (not res!1245915) (not e!1899119))))

(assert (=> b!3027613 (= res!1245915 (isEmpty!19456 (tail!4949 s!11993)))))

(assert (= (and d!850675 c!500041) b!3027611))

(assert (= (and d!850675 (not c!500041)) b!3027606))

(assert (= (and d!850675 c!500040) b!3027612))

(assert (= (and d!850675 (not c!500040)) b!3027601))

(assert (= (and b!3027601 c!500039) b!3027602))

(assert (= (and b!3027601 (not c!500039)) b!3027600))

(assert (= (and b!3027600 (not res!1245916)) b!3027603))

(assert (= (and b!3027603 res!1245912) b!3027604))

(assert (= (and b!3027604 res!1245910) b!3027613))

(assert (= (and b!3027613 res!1245915) b!3027610))

(assert (= (and b!3027603 (not res!1245914)) b!3027605))

(assert (= (and b!3027605 res!1245913) b!3027608))

(assert (= (and b!3027608 (not res!1245911)) b!3027609))

(assert (= (and b!3027609 (not res!1245917)) b!3027607))

(assert (= (or b!3027612 b!3027604 b!3027608) bm!205923))

(assert (=> b!3027613 m!3365667))

(assert (=> b!3027613 m!3365667))

(assert (=> b!3027613 m!3365669))

(assert (=> b!3027609 m!3365667))

(assert (=> b!3027609 m!3365667))

(assert (=> b!3027609 m!3365669))

(assert (=> b!3027611 m!3365729))

(assert (=> b!3027606 m!3365673))

(assert (=> b!3027606 m!3365673))

(declare-fun m!3366447 () Bool)

(assert (=> b!3027606 m!3366447))

(assert (=> b!3027606 m!3365667))

(assert (=> b!3027606 m!3366447))

(assert (=> b!3027606 m!3365667))

(declare-fun m!3366449 () Bool)

(assert (=> b!3027606 m!3366449))

(assert (=> b!3027610 m!3365673))

(assert (=> b!3027607 m!3365673))

(assert (=> bm!205923 m!3365391))

(assert (=> d!850675 m!3365391))

(assert (=> d!850675 m!3365715))

(assert (=> b!3026946 d!850675))

(assert (=> d!850429 d!850595))

(assert (=> d!850429 d!850437))

(declare-fun d!850677 () Bool)

(assert (=> d!850677 (= (isEmptyExpr!498 lt!1045468) ((_ is EmptyExpr!9415) lt!1045468))))

(assert (=> b!3026858 d!850677))

(declare-fun d!850679 () Bool)

(declare-fun c!500044 () Bool)

(assert (=> d!850679 (= c!500044 ((_ is Nil!35156) lt!1045385))))

(declare-fun e!1899122 () (InoxSet C!19016))

(assert (=> d!850679 (= (content!4791 lt!1045385) e!1899122)))

(declare-fun b!3027618 () Bool)

(assert (=> b!3027618 (= e!1899122 ((as const (Array C!19016 Bool)) false))))

(declare-fun b!3027619 () Bool)

(assert (=> b!3027619 (= e!1899122 ((_ map or) (store ((as const (Array C!19016 Bool)) false) (h!40576 lt!1045385) true) (content!4791 (t!234345 lt!1045385))))))

(assert (= (and d!850679 c!500044) b!3027618))

(assert (= (and d!850679 (not c!500044)) b!3027619))

(declare-fun m!3366451 () Bool)

(assert (=> b!3027619 m!3366451))

(declare-fun m!3366453 () Bool)

(assert (=> b!3027619 m!3366453))

(assert (=> d!850357 d!850679))

(declare-fun d!850681 () Bool)

(declare-fun c!500045 () Bool)

(assert (=> d!850681 (= c!500045 ((_ is Nil!35156) (_1!20188 lt!1045349)))))

(declare-fun e!1899123 () (InoxSet C!19016))

(assert (=> d!850681 (= (content!4791 (_1!20188 lt!1045349)) e!1899123)))

(declare-fun b!3027620 () Bool)

(assert (=> b!3027620 (= e!1899123 ((as const (Array C!19016 Bool)) false))))

(declare-fun b!3027621 () Bool)

(assert (=> b!3027621 (= e!1899123 ((_ map or) (store ((as const (Array C!19016 Bool)) false) (h!40576 (_1!20188 lt!1045349)) true) (content!4791 (t!234345 (_1!20188 lt!1045349)))))))

(assert (= (and d!850681 c!500045) b!3027620))

(assert (= (and d!850681 (not c!500045)) b!3027621))

(declare-fun m!3366455 () Bool)

(assert (=> b!3027621 m!3366455))

(assert (=> b!3027621 m!3366331))

(assert (=> d!850357 d!850681))

(declare-fun d!850683 () Bool)

(declare-fun c!500046 () Bool)

(assert (=> d!850683 (= c!500046 ((_ is Nil!35156) (_2!20188 lt!1045349)))))

(declare-fun e!1899124 () (InoxSet C!19016))

(assert (=> d!850683 (= (content!4791 (_2!20188 lt!1045349)) e!1899124)))

(declare-fun b!3027622 () Bool)

(assert (=> b!3027622 (= e!1899124 ((as const (Array C!19016 Bool)) false))))

(declare-fun b!3027623 () Bool)

(assert (=> b!3027623 (= e!1899124 ((_ map or) (store ((as const (Array C!19016 Bool)) false) (h!40576 (_2!20188 lt!1045349)) true) (content!4791 (t!234345 (_2!20188 lt!1045349)))))))

(assert (= (and d!850683 c!500046) b!3027622))

(assert (= (and d!850683 (not c!500046)) b!3027623))

(declare-fun m!3366457 () Bool)

(assert (=> b!3027623 m!3366457))

(declare-fun m!3366459 () Bool)

(assert (=> b!3027623 m!3366459))

(assert (=> d!850357 d!850683))

(declare-fun b!3027624 () Bool)

(declare-fun e!1899137 () Regex!9415)

(declare-fun lt!1045570 () Regex!9415)

(assert (=> b!3027624 (= e!1899137 lt!1045570)))

(declare-fun d!850685 () Bool)

(declare-fun e!1899126 () Bool)

(assert (=> d!850685 e!1899126))

(declare-fun res!1245919 () Bool)

(assert (=> d!850685 (=> (not res!1245919) (not e!1899126))))

(declare-fun lt!1045573 () Regex!9415)

(assert (=> d!850685 (= res!1245919 (validRegex!4148 lt!1045573))))

(declare-fun e!1899128 () Regex!9415)

(assert (=> d!850685 (= lt!1045573 e!1899128)))

(declare-fun c!500054 () Bool)

(assert (=> d!850685 (= c!500054 ((_ is EmptyLang!9415) (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))))))

(assert (=> d!850685 (validRegex!4148 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423)))))))

(assert (=> d!850685 (= (simplify!394 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))) lt!1045573)))

(declare-fun c!500047 () Bool)

(declare-fun call!205934 () Bool)

(declare-fun lt!1045572 () Regex!9415)

(declare-fun bm!205924 () Bool)

(assert (=> bm!205924 (= call!205934 (isEmptyLang!492 (ite c!500047 lt!1045570 lt!1045572)))))

(declare-fun b!3027625 () Bool)

(declare-fun c!500048 () Bool)

(declare-fun e!1899133 () Bool)

(assert (=> b!3027625 (= c!500048 e!1899133)))

(declare-fun res!1245918 () Bool)

(assert (=> b!3027625 (=> res!1245918 e!1899133)))

(declare-fun call!205935 () Bool)

(assert (=> b!3027625 (= res!1245918 call!205935)))

(declare-fun lt!1045574 () Regex!9415)

(declare-fun call!205929 () Regex!9415)

(assert (=> b!3027625 (= lt!1045574 call!205929)))

(declare-fun e!1899131 () Regex!9415)

(declare-fun e!1899130 () Regex!9415)

(assert (=> b!3027625 (= e!1899131 e!1899130)))

(declare-fun b!3027626 () Bool)

(declare-fun e!1899127 () Regex!9415)

(declare-fun lt!1045575 () Regex!9415)

(assert (=> b!3027626 (= e!1899127 lt!1045575)))

(declare-fun b!3027627 () Bool)

(declare-fun e!1899136 () Regex!9415)

(declare-fun e!1899125 () Regex!9415)

(assert (=> b!3027627 (= e!1899136 e!1899125)))

(declare-fun c!500049 () Bool)

(declare-fun call!205931 () Bool)

(assert (=> b!3027627 (= c!500049 call!205931)))

(declare-fun bm!205925 () Bool)

(declare-fun c!500050 () Bool)

(assert (=> bm!205925 (= call!205929 (simplify!394 (ite c!500050 (reg!9744 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))) (ite c!500047 (regOne!19343 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))) (regTwo!19342 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423)))))))))))

(declare-fun b!3027628 () Bool)

(declare-fun e!1899138 () Regex!9415)

(assert (=> b!3027628 (= e!1899138 e!1899137)))

(declare-fun call!205933 () Regex!9415)

(assert (=> b!3027628 (= lt!1045575 call!205933)))

(declare-fun call!205932 () Regex!9415)

(assert (=> b!3027628 (= lt!1045570 call!205932)))

(declare-fun c!500056 () Bool)

(declare-fun call!205930 () Bool)

(assert (=> b!3027628 (= c!500056 call!205930)))

(declare-fun b!3027629 () Bool)

(declare-fun c!500055 () Bool)

(declare-fun lt!1045571 () Regex!9415)

(assert (=> b!3027629 (= c!500055 (isEmptyExpr!498 lt!1045571))))

(declare-fun e!1899135 () Regex!9415)

(assert (=> b!3027629 (= e!1899135 e!1899136)))

(declare-fun bm!205926 () Bool)

(assert (=> bm!205926 (= call!205933 call!205929)))

(declare-fun b!3027630 () Bool)

(declare-fun c!500051 () Bool)

(assert (=> b!3027630 (= c!500051 call!205934)))

(assert (=> b!3027630 (= e!1899137 e!1899127)))

(declare-fun b!3027631 () Bool)

(assert (=> b!3027631 (= e!1899135 EmptyLang!9415)))

(declare-fun b!3027632 () Bool)

(assert (=> b!3027632 (= e!1899125 lt!1045571)))

(declare-fun b!3027633 () Bool)

(declare-fun e!1899134 () Regex!9415)

(assert (=> b!3027633 (= e!1899134 EmptyExpr!9415)))

(declare-fun b!3027634 () Bool)

(assert (=> b!3027634 (= e!1899136 lt!1045572)))

(declare-fun b!3027635 () Bool)

(assert (=> b!3027635 (= e!1899126 (= (nullable!3067 lt!1045573) (nullable!3067 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423)))))))))

(declare-fun b!3027636 () Bool)

(assert (=> b!3027636 (= e!1899127 (Union!9415 lt!1045575 lt!1045570))))

(declare-fun bm!205927 () Bool)

(assert (=> bm!205927 (= call!205931 (isEmptyExpr!498 (ite c!500050 lt!1045574 lt!1045572)))))

(declare-fun b!3027637 () Bool)

(assert (=> b!3027637 (= e!1899133 call!205931)))

(declare-fun b!3027638 () Bool)

(declare-fun e!1899132 () Regex!9415)

(assert (=> b!3027638 (= e!1899132 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423)))))))

(declare-fun bm!205928 () Bool)

(assert (=> bm!205928 (= call!205935 (isEmptyLang!492 (ite c!500050 lt!1045574 (ite c!500047 lt!1045575 lt!1045571))))))

(declare-fun b!3027639 () Bool)

(assert (=> b!3027639 (= c!500047 ((_ is Union!9415) (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))))))

(assert (=> b!3027639 (= e!1899131 e!1899138)))

(declare-fun b!3027640 () Bool)

(assert (=> b!3027640 (= e!1899138 e!1899135)))

(assert (=> b!3027640 (= lt!1045571 call!205932)))

(assert (=> b!3027640 (= lt!1045572 call!205933)))

(declare-fun res!1245920 () Bool)

(assert (=> b!3027640 (= res!1245920 call!205930)))

(declare-fun e!1899129 () Bool)

(assert (=> b!3027640 (=> res!1245920 e!1899129)))

(declare-fun c!500052 () Bool)

(assert (=> b!3027640 (= c!500052 e!1899129)))

(declare-fun b!3027641 () Bool)

(assert (=> b!3027641 (= e!1899128 e!1899132)))

(declare-fun c!500053 () Bool)

(assert (=> b!3027641 (= c!500053 ((_ is ElementMatch!9415) (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))))))

(declare-fun bm!205929 () Bool)

(assert (=> bm!205929 (= call!205930 call!205935)))

(declare-fun b!3027642 () Bool)

(assert (=> b!3027642 (= e!1899134 e!1899131)))

(assert (=> b!3027642 (= c!500050 ((_ is Star!9415) (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))))))

(declare-fun b!3027643 () Bool)

(assert (=> b!3027643 (= e!1899125 (Concat!14736 lt!1045571 lt!1045572))))

(declare-fun b!3027644 () Bool)

(assert (=> b!3027644 (= e!1899130 (Star!9415 lt!1045574))))

(declare-fun bm!205930 () Bool)

(assert (=> bm!205930 (= call!205932 (simplify!394 (ite c!500047 (regTwo!19343 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))) (regOne!19342 (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))))))))

(declare-fun b!3027645 () Bool)

(assert (=> b!3027645 (= e!1899128 EmptyLang!9415)))

(declare-fun b!3027646 () Bool)

(declare-fun c!500057 () Bool)

(assert (=> b!3027646 (= c!500057 ((_ is EmptyExpr!9415) (ite c!499793 (reg!9744 (regTwo!19342 r!17423)) (ite c!499790 (regOne!19343 (regTwo!19342 r!17423)) (regTwo!19342 (regTwo!19342 r!17423))))))))

(assert (=> b!3027646 (= e!1899132 e!1899134)))

(declare-fun b!3027647 () Bool)

(assert (=> b!3027647 (= e!1899130 EmptyExpr!9415)))

(declare-fun b!3027648 () Bool)

(assert (=> b!3027648 (= e!1899129 call!205934)))

(assert (= (and d!850685 c!500054) b!3027645))

(assert (= (and d!850685 (not c!500054)) b!3027641))

(assert (= (and b!3027641 c!500053) b!3027638))

(assert (= (and b!3027641 (not c!500053)) b!3027646))

(assert (= (and b!3027646 c!500057) b!3027633))

(assert (= (and b!3027646 (not c!500057)) b!3027642))

(assert (= (and b!3027642 c!500050) b!3027625))

(assert (= (and b!3027642 (not c!500050)) b!3027639))

(assert (= (and b!3027625 (not res!1245918)) b!3027637))

(assert (= (and b!3027625 c!500048) b!3027647))

(assert (= (and b!3027625 (not c!500048)) b!3027644))

(assert (= (and b!3027639 c!500047) b!3027628))

(assert (= (and b!3027639 (not c!500047)) b!3027640))

(assert (= (and b!3027628 c!500056) b!3027624))

(assert (= (and b!3027628 (not c!500056)) b!3027630))

(assert (= (and b!3027630 c!500051) b!3027626))

(assert (= (and b!3027630 (not c!500051)) b!3027636))

(assert (= (and b!3027640 (not res!1245920)) b!3027648))

(assert (= (and b!3027640 c!500052) b!3027631))

(assert (= (and b!3027640 (not c!500052)) b!3027629))

(assert (= (and b!3027629 c!500055) b!3027634))

(assert (= (and b!3027629 (not c!500055)) b!3027627))

(assert (= (and b!3027627 c!500049) b!3027632))

(assert (= (and b!3027627 (not c!500049)) b!3027643))

(assert (= (or b!3027628 b!3027640) bm!205926))

(assert (= (or b!3027628 b!3027640) bm!205930))

(assert (= (or b!3027628 b!3027640) bm!205929))

(assert (= (or b!3027630 b!3027648) bm!205924))

(assert (= (or b!3027637 b!3027627) bm!205927))

(assert (= (or b!3027625 bm!205926) bm!205925))

(assert (= (or b!3027625 bm!205929) bm!205928))

(assert (= (and d!850685 res!1245919) b!3027635))

(declare-fun m!3366471 () Bool)

(assert (=> bm!205927 m!3366471))

(declare-fun m!3366473 () Bool)

(assert (=> d!850685 m!3366473))

(declare-fun m!3366475 () Bool)

(assert (=> d!850685 m!3366475))

(declare-fun m!3366477 () Bool)

(assert (=> bm!205930 m!3366477))

(declare-fun m!3366479 () Bool)

(assert (=> bm!205928 m!3366479))

(declare-fun m!3366481 () Bool)

(assert (=> bm!205924 m!3366481))

(declare-fun m!3366483 () Bool)

(assert (=> b!3027635 m!3366483))

(declare-fun m!3366485 () Bool)

(assert (=> b!3027635 m!3366485))

(declare-fun m!3366487 () Bool)

(assert (=> bm!205925 m!3366487))

(declare-fun m!3366489 () Bool)

(assert (=> b!3027629 m!3366489))

(assert (=> bm!205760 d!850685))

(declare-fun d!850693 () Bool)

(assert (=> d!850693 (= (isEmptyExpr!498 lt!1045436) ((_ is EmptyExpr!9415) lt!1045436))))

(assert (=> b!3026577 d!850693))

(declare-fun bm!205931 () Bool)

(declare-fun call!205937 () Bool)

(declare-fun call!205936 () Bool)

(assert (=> bm!205931 (= call!205937 call!205936)))

(declare-fun b!3027650 () Bool)

(declare-fun res!1245923 () Bool)

(declare-fun e!1899145 () Bool)

(assert (=> b!3027650 (=> (not res!1245923) (not e!1899145))))

(assert (=> b!3027650 (= res!1245923 call!205937)))

(declare-fun e!1899143 () Bool)

(assert (=> b!3027650 (= e!1899143 e!1899145)))

(declare-fun b!3027651 () Bool)

(declare-fun call!205938 () Bool)

(assert (=> b!3027651 (= e!1899145 call!205938)))

(declare-fun b!3027652 () Bool)

(declare-fun e!1899139 () Bool)

(declare-fun e!1899141 () Bool)

(assert (=> b!3027652 (= e!1899139 e!1899141)))

(declare-fun c!500058 () Bool)

(assert (=> b!3027652 (= c!500058 ((_ is Star!9415) (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))))))

(declare-fun c!500059 () Bool)

(declare-fun bm!205932 () Bool)

(assert (=> bm!205932 (= call!205936 (validRegex!4148 (ite c!500058 (reg!9744 (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))) (ite c!500059 (regOne!19343 (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))) (regTwo!19342 (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354)))))))))

(declare-fun b!3027653 () Bool)

(declare-fun e!1899142 () Bool)

(declare-fun e!1899140 () Bool)

(assert (=> b!3027653 (= e!1899142 e!1899140)))

(declare-fun res!1245921 () Bool)

(assert (=> b!3027653 (=> (not res!1245921) (not e!1899140))))

(assert (=> b!3027653 (= res!1245921 call!205938)))

(declare-fun b!3027649 () Bool)

(assert (=> b!3027649 (= e!1899140 call!205937)))

(declare-fun d!850695 () Bool)

(declare-fun res!1245925 () Bool)

(assert (=> d!850695 (=> res!1245925 e!1899139)))

(assert (=> d!850695 (= res!1245925 ((_ is ElementMatch!9415) (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))))))

(assert (=> d!850695 (= (validRegex!4148 (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))) e!1899139)))

(declare-fun b!3027654 () Bool)

(assert (=> b!3027654 (= e!1899141 e!1899143)))

(assert (=> b!3027654 (= c!500059 ((_ is Union!9415) (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))))))

(declare-fun b!3027655 () Bool)

(declare-fun e!1899144 () Bool)

(assert (=> b!3027655 (= e!1899144 call!205936)))

(declare-fun bm!205933 () Bool)

(assert (=> bm!205933 (= call!205938 (validRegex!4148 (ite c!500059 (regTwo!19343 (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))) (regOne!19342 (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))))))))

(declare-fun b!3027656 () Bool)

(declare-fun res!1245922 () Bool)

(assert (=> b!3027656 (=> res!1245922 e!1899142)))

(assert (=> b!3027656 (= res!1245922 (not ((_ is Concat!14736) (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354)))))))

(assert (=> b!3027656 (= e!1899143 e!1899142)))

(declare-fun b!3027657 () Bool)

(assert (=> b!3027657 (= e!1899141 e!1899144)))

(declare-fun res!1245924 () Bool)

(assert (=> b!3027657 (= res!1245924 (not (nullable!3067 (reg!9744 (ite c!499828 (regTwo!19343 lt!1045354) (regOne!19342 lt!1045354))))))))

(assert (=> b!3027657 (=> (not res!1245924) (not e!1899144))))

(assert (= (and d!850695 (not res!1245925)) b!3027652))

(assert (= (and b!3027652 c!500058) b!3027657))

(assert (= (and b!3027652 (not c!500058)) b!3027654))

(assert (= (and b!3027657 res!1245924) b!3027655))

(assert (= (and b!3027654 c!500059) b!3027650))

(assert (= (and b!3027654 (not c!500059)) b!3027656))

(assert (= (and b!3027650 res!1245923) b!3027651))

(assert (= (and b!3027656 (not res!1245922)) b!3027653))

(assert (= (and b!3027653 res!1245921) b!3027649))

(assert (= (or b!3027650 b!3027649) bm!205931))

(assert (= (or b!3027651 b!3027653) bm!205933))

(assert (= (or b!3027655 bm!205931) bm!205932))

(declare-fun m!3366491 () Bool)

(assert (=> bm!205932 m!3366491))

(declare-fun m!3366493 () Bool)

(assert (=> bm!205933 m!3366493))

(declare-fun m!3366495 () Bool)

(assert (=> b!3027657 m!3366495))

(assert (=> bm!205787 d!850695))

(declare-fun bs!530702 () Bool)

(declare-fun b!3027662 () Bool)

(assert (= bs!530702 (and b!3027662 b!3026703)))

(declare-fun lambda!113113 () Int)

(assert (=> bs!530702 (= (and (= (reg!9744 (regOne!19343 r!17423)) (reg!9744 r!17423)) (= (regOne!19343 r!17423) r!17423)) (= lambda!113113 lambda!113093))))

(declare-fun bs!530703 () Bool)

(assert (= bs!530703 (and b!3027662 d!850481)))

(assert (=> bs!530703 (not (= lambda!113113 lambda!113110))))

(assert (=> bs!530703 (not (= lambda!113113 lambda!113109))))

(declare-fun bs!530704 () Bool)

(assert (= bs!530704 (and b!3027662 b!3026135)))

(assert (=> bs!530704 (not (= lambda!113113 lambda!113074))))

(declare-fun bs!530705 () Bool)

(assert (= bs!530705 (and b!3027662 d!850447)))

(assert (=> bs!530705 (not (= lambda!113113 lambda!113100))))

(declare-fun bs!530706 () Bool)

(assert (= bs!530706 (and b!3027662 b!3026699)))

(assert (=> bs!530706 (not (= lambda!113113 lambda!113095))))

(declare-fun bs!530707 () Bool)

(assert (= bs!530707 (and b!3027662 d!850451)))

(assert (=> bs!530707 (not (= lambda!113113 lambda!113104))))

(assert (=> bs!530704 (not (= lambda!113113 lambda!113073))))

(assert (=> bs!530705 (not (= lambda!113113 lambda!113101))))

(assert (=> b!3027662 true))

(assert (=> b!3027662 true))

(declare-fun bs!530708 () Bool)

(declare-fun b!3027658 () Bool)

(assert (= bs!530708 (and b!3027658 b!3026703)))

(declare-fun lambda!113116 () Int)

(assert (=> bs!530708 (not (= lambda!113116 lambda!113093))))

(declare-fun bs!530709 () Bool)

(assert (= bs!530709 (and b!3027658 d!850481)))

(assert (=> bs!530709 (= (and (= (regOne!19342 (regOne!19343 r!17423)) (regOne!19342 r!17423)) (= (regTwo!19342 (regOne!19343 r!17423)) (regTwo!19342 r!17423))) (= lambda!113116 lambda!113110))))

(declare-fun bs!530710 () Bool)

(assert (= bs!530710 (and b!3027658 b!3026135)))

(assert (=> bs!530710 (= (and (= (regOne!19342 (regOne!19343 r!17423)) (regOne!19342 r!17423)) (= (regTwo!19342 (regOne!19343 r!17423)) (regTwo!19342 r!17423))) (= lambda!113116 lambda!113074))))

(declare-fun bs!530711 () Bool)

(assert (= bs!530711 (and b!3027658 d!850447)))

(assert (=> bs!530711 (not (= lambda!113116 lambda!113100))))

(declare-fun bs!530712 () Bool)

(assert (= bs!530712 (and b!3027658 b!3026699)))

(assert (=> bs!530712 (= (and (= (regOne!19342 (regOne!19343 r!17423)) (regOne!19342 r!17423)) (= (regTwo!19342 (regOne!19343 r!17423)) (regTwo!19342 r!17423))) (= lambda!113116 lambda!113095))))

(declare-fun bs!530713 () Bool)

(assert (= bs!530713 (and b!3027658 d!850451)))

(assert (=> bs!530713 (not (= lambda!113116 lambda!113104))))

(declare-fun bs!530714 () Bool)

(assert (= bs!530714 (and b!3027658 b!3027662)))

(assert (=> bs!530714 (not (= lambda!113116 lambda!113113))))

(assert (=> bs!530709 (not (= lambda!113116 lambda!113109))))

(assert (=> bs!530710 (not (= lambda!113116 lambda!113073))))

(assert (=> bs!530711 (= (and (= (regOne!19342 (regOne!19343 r!17423)) (regOne!19342 r!17423)) (= (regTwo!19342 (regOne!19343 r!17423)) (regTwo!19342 r!17423))) (= lambda!113116 lambda!113101))))

(assert (=> b!3027658 true))

(assert (=> b!3027658 true))

(declare-fun e!1899146 () Bool)

(declare-fun call!205940 () Bool)

(assert (=> b!3027658 (= e!1899146 call!205940)))

(declare-fun d!850697 () Bool)

(declare-fun c!500062 () Bool)

(assert (=> d!850697 (= c!500062 ((_ is EmptyExpr!9415) (regOne!19343 r!17423)))))

(declare-fun e!1899150 () Bool)

(assert (=> d!850697 (= (matchRSpec!1552 (regOne!19343 r!17423) s!11993) e!1899150)))

(declare-fun bm!205934 () Bool)

(declare-fun c!500061 () Bool)

(assert (=> bm!205934 (= call!205940 (Exists!1683 (ite c!500061 lambda!113113 lambda!113116)))))

(declare-fun b!3027659 () Bool)

(declare-fun res!1245928 () Bool)

(declare-fun e!1899152 () Bool)

(assert (=> b!3027659 (=> res!1245928 e!1899152)))

(declare-fun call!205939 () Bool)

(assert (=> b!3027659 (= res!1245928 call!205939)))

(assert (=> b!3027659 (= e!1899146 e!1899152)))

(declare-fun b!3027660 () Bool)

(declare-fun c!500060 () Bool)

(assert (=> b!3027660 (= c!500060 ((_ is ElementMatch!9415) (regOne!19343 r!17423)))))

(declare-fun e!1899147 () Bool)

(declare-fun e!1899148 () Bool)

(assert (=> b!3027660 (= e!1899147 e!1899148)))

(declare-fun b!3027661 () Bool)

(declare-fun c!500063 () Bool)

(assert (=> b!3027661 (= c!500063 ((_ is Union!9415) (regOne!19343 r!17423)))))

(declare-fun e!1899149 () Bool)

(assert (=> b!3027661 (= e!1899148 e!1899149)))

(assert (=> b!3027662 (= e!1899152 call!205940)))

(declare-fun b!3027663 () Bool)

(assert (=> b!3027663 (= e!1899150 e!1899147)))

(declare-fun res!1245926 () Bool)

(assert (=> b!3027663 (= res!1245926 (not ((_ is EmptyLang!9415) (regOne!19343 r!17423))))))

(assert (=> b!3027663 (=> (not res!1245926) (not e!1899147))))

(declare-fun bm!205935 () Bool)

(assert (=> bm!205935 (= call!205939 (isEmpty!19456 s!11993))))

(declare-fun b!3027664 () Bool)

(assert (=> b!3027664 (= e!1899148 (= s!11993 (Cons!35156 (c!499613 (regOne!19343 r!17423)) Nil!35156)))))

(declare-fun b!3027665 () Bool)

(declare-fun e!1899151 () Bool)

(assert (=> b!3027665 (= e!1899151 (matchRSpec!1552 (regTwo!19343 (regOne!19343 r!17423)) s!11993))))

(declare-fun b!3027666 () Bool)

(assert (=> b!3027666 (= e!1899150 call!205939)))

(declare-fun b!3027667 () Bool)

(assert (=> b!3027667 (= e!1899149 e!1899146)))

(assert (=> b!3027667 (= c!500061 ((_ is Star!9415) (regOne!19343 r!17423)))))

(declare-fun b!3027668 () Bool)

(assert (=> b!3027668 (= e!1899149 e!1899151)))

(declare-fun res!1245927 () Bool)

(assert (=> b!3027668 (= res!1245927 (matchRSpec!1552 (regOne!19343 (regOne!19343 r!17423)) s!11993))))

(assert (=> b!3027668 (=> res!1245927 e!1899151)))

(assert (= (and d!850697 c!500062) b!3027666))

(assert (= (and d!850697 (not c!500062)) b!3027663))

(assert (= (and b!3027663 res!1245926) b!3027660))

(assert (= (and b!3027660 c!500060) b!3027664))

(assert (= (and b!3027660 (not c!500060)) b!3027661))

(assert (= (and b!3027661 c!500063) b!3027668))

(assert (= (and b!3027661 (not c!500063)) b!3027667))

(assert (= (and b!3027668 (not res!1245927)) b!3027665))

(assert (= (and b!3027667 c!500061) b!3027659))

(assert (= (and b!3027667 (not c!500061)) b!3027658))

(assert (= (and b!3027659 (not res!1245928)) b!3027662))

(assert (= (or b!3027662 b!3027658) bm!205934))

(assert (= (or b!3027666 b!3027659) bm!205935))

(declare-fun m!3366497 () Bool)

(assert (=> bm!205934 m!3366497))

(assert (=> bm!205935 m!3365391))

(declare-fun m!3366499 () Bool)

(assert (=> b!3027665 m!3366499))

(declare-fun m!3366501 () Bool)

(assert (=> b!3027668 m!3366501))

(assert (=> b!3026709 d!850697))

(assert (=> b!3026914 d!850515))

(assert (=> b!3026914 d!850475))

(declare-fun d!850699 () Bool)

(assert (=> d!850699 (= (isEmptyLang!492 (ite c!499790 lt!1045459 lt!1045461)) ((_ is EmptyLang!9415) (ite c!499790 lt!1045459 lt!1045461)))))

(assert (=> bm!205759 d!850699))

(assert (=> d!850419 d!850415))

(assert (=> d!850419 d!850409))

(declare-fun d!850701 () Bool)

(assert (=> d!850701 (= (matchR!4297 r!17423 s!11993) (matchRSpec!1552 r!17423 s!11993))))

(assert (=> d!850701 true))

(declare-fun _$88!3363 () Unit!49253)

(assert (=> d!850701 (= (choose!17944 r!17423 s!11993) _$88!3363)))

(declare-fun bs!530717 () Bool)

(assert (= bs!530717 d!850701))

(assert (=> bs!530717 m!3365413))

(assert (=> bs!530717 m!3365411))

(assert (=> d!850419 d!850701))

(assert (=> d!850419 d!850457))

(declare-fun d!850703 () Bool)

(assert (=> d!850703 (= (nullable!3067 lt!1045353) (nullableFct!875 lt!1045353))))

(declare-fun bs!530718 () Bool)

(assert (= bs!530718 d!850703))

(declare-fun m!3366503 () Bool)

(assert (=> bs!530718 m!3366503))

(assert (=> b!3026809 d!850703))

(assert (=> b!3026910 d!850515))

(assert (=> b!3026910 d!850475))

(declare-fun d!850705 () Bool)

(assert (=> d!850705 (= (nullable!3067 lt!1045462) (nullableFct!875 lt!1045462))))

(declare-fun bs!530720 () Bool)

(assert (= bs!530720 d!850705))

(declare-fun m!3366505 () Bool)

(assert (=> bs!530720 m!3366505))

(assert (=> b!3026784 d!850705))

(assert (=> b!3026784 d!850593))

(declare-fun d!850707 () Bool)

(assert (=> d!850707 (= (isEmptyExpr!498 (ite c!499816 lt!1045471 lt!1045469)) ((_ is EmptyExpr!9415) (ite c!499816 lt!1045471 lt!1045469)))))

(assert (=> bm!205780 d!850707))

(assert (=> bm!205766 d!850555))

(declare-fun d!850709 () Bool)

(declare-fun lt!1045578 () Int)

(assert (=> d!850709 (>= lt!1045578 0)))

(declare-fun e!1899159 () Int)

(assert (=> d!850709 (= lt!1045578 e!1899159)))

(declare-fun c!500066 () Bool)

(assert (=> d!850709 (= c!500066 ((_ is Nil!35156) lt!1045385))))

(assert (=> d!850709 (= (size!26528 lt!1045385) lt!1045578)))

(declare-fun b!3027681 () Bool)

(assert (=> b!3027681 (= e!1899159 0)))

(declare-fun b!3027682 () Bool)

(assert (=> b!3027682 (= e!1899159 (+ 1 (size!26528 (t!234345 lt!1045385))))))

(assert (= (and d!850709 c!500066) b!3027681))

(assert (= (and d!850709 (not c!500066)) b!3027682))

(declare-fun m!3366507 () Bool)

(assert (=> b!3027682 m!3366507))

(assert (=> b!3026322 d!850709))

(declare-fun d!850711 () Bool)

(declare-fun lt!1045579 () Int)

(assert (=> d!850711 (>= lt!1045579 0)))

(declare-fun e!1899160 () Int)

(assert (=> d!850711 (= lt!1045579 e!1899160)))

(declare-fun c!500067 () Bool)

(assert (=> d!850711 (= c!500067 ((_ is Nil!35156) (_1!20188 lt!1045349)))))

(assert (=> d!850711 (= (size!26528 (_1!20188 lt!1045349)) lt!1045579)))

(declare-fun b!3027683 () Bool)

(assert (=> b!3027683 (= e!1899160 0)))

(declare-fun b!3027684 () Bool)

(assert (=> b!3027684 (= e!1899160 (+ 1 (size!26528 (t!234345 (_1!20188 lt!1045349)))))))

(assert (= (and d!850711 c!500067) b!3027683))

(assert (= (and d!850711 (not c!500067)) b!3027684))

(assert (=> b!3027684 m!3366337))

(assert (=> b!3026322 d!850711))

(declare-fun d!850713 () Bool)

(declare-fun lt!1045580 () Int)

(assert (=> d!850713 (>= lt!1045580 0)))

(declare-fun e!1899161 () Int)

(assert (=> d!850713 (= lt!1045580 e!1899161)))

(declare-fun c!500068 () Bool)

(assert (=> d!850713 (= c!500068 ((_ is Nil!35156) (_2!20188 lt!1045349)))))

(assert (=> d!850713 (= (size!26528 (_2!20188 lt!1045349)) lt!1045580)))

(declare-fun b!3027685 () Bool)

(assert (=> b!3027685 (= e!1899161 0)))

(declare-fun b!3027686 () Bool)

(assert (=> b!3027686 (= e!1899161 (+ 1 (size!26528 (t!234345 (_2!20188 lt!1045349)))))))

(assert (= (and d!850713 c!500068) b!3027685))

(assert (= (and d!850713 (not c!500068)) b!3027686))

(declare-fun m!3366509 () Bool)

(assert (=> b!3027686 m!3366509))

(assert (=> b!3026322 d!850713))

(declare-fun d!850715 () Bool)

(assert (=> d!850715 (= (isEmptyExpr!498 (ite c!499747 lt!1045439 lt!1045437)) ((_ is EmptyExpr!9415) (ite c!499747 lt!1045439 lt!1045437)))))

(assert (=> bm!205740 d!850715))

(assert (=> b!3026805 d!850473))

(declare-fun bm!205936 () Bool)

(declare-fun call!205942 () Bool)

(declare-fun call!205941 () Bool)

(assert (=> bm!205936 (= call!205942 call!205941)))

(declare-fun b!3027688 () Bool)

(declare-fun res!1245939 () Bool)

(declare-fun e!1899168 () Bool)

(assert (=> b!3027688 (=> (not res!1245939) (not e!1899168))))

(assert (=> b!3027688 (= res!1245939 call!205942)))

(declare-fun e!1899166 () Bool)

(assert (=> b!3027688 (= e!1899166 e!1899168)))

(declare-fun b!3027689 () Bool)

(declare-fun call!205943 () Bool)

(assert (=> b!3027689 (= e!1899168 call!205943)))

(declare-fun b!3027690 () Bool)

(declare-fun e!1899162 () Bool)

(declare-fun e!1899164 () Bool)

(assert (=> b!3027690 (= e!1899162 e!1899164)))

(declare-fun c!500069 () Bool)

(assert (=> b!3027690 (= c!500069 ((_ is Star!9415) (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))))))

(declare-fun c!500070 () Bool)

(declare-fun bm!205937 () Bool)

(assert (=> bm!205937 (= call!205941 (validRegex!4148 (ite c!500069 (reg!9744 (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))) (ite c!500070 (regOne!19343 (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))) (regTwo!19342 (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354))))))))))

(declare-fun b!3027691 () Bool)

(declare-fun e!1899165 () Bool)

(declare-fun e!1899163 () Bool)

(assert (=> b!3027691 (= e!1899165 e!1899163)))

(declare-fun res!1245937 () Bool)

(assert (=> b!3027691 (=> (not res!1245937) (not e!1899163))))

(assert (=> b!3027691 (= res!1245937 call!205943)))

(declare-fun b!3027687 () Bool)

(assert (=> b!3027687 (= e!1899163 call!205942)))

(declare-fun d!850717 () Bool)

(declare-fun res!1245941 () Bool)

(assert (=> d!850717 (=> res!1245941 e!1899162)))

(assert (=> d!850717 (= res!1245941 ((_ is ElementMatch!9415) (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))))))

(assert (=> d!850717 (= (validRegex!4148 (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))) e!1899162)))

(declare-fun b!3027692 () Bool)

(assert (=> b!3027692 (= e!1899164 e!1899166)))

(assert (=> b!3027692 (= c!500070 ((_ is Union!9415) (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))))))

(declare-fun b!3027693 () Bool)

(declare-fun e!1899167 () Bool)

(assert (=> b!3027693 (= e!1899167 call!205941)))

(declare-fun bm!205938 () Bool)

(assert (=> bm!205938 (= call!205943 (validRegex!4148 (ite c!500070 (regTwo!19343 (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))) (regOne!19342 (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))))))))

(declare-fun b!3027694 () Bool)

(declare-fun res!1245938 () Bool)

(assert (=> b!3027694 (=> res!1245938 e!1899165)))

(assert (=> b!3027694 (= res!1245938 (not ((_ is Concat!14736) (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354))))))))

(assert (=> b!3027694 (= e!1899166 e!1899165)))

(declare-fun b!3027695 () Bool)

(assert (=> b!3027695 (= e!1899164 e!1899167)))

(declare-fun res!1245940 () Bool)

(assert (=> b!3027695 (= res!1245940 (not (nullable!3067 (reg!9744 (ite c!499827 (reg!9744 lt!1045354) (ite c!499828 (regOne!19343 lt!1045354) (regTwo!19342 lt!1045354)))))))))

(assert (=> b!3027695 (=> (not res!1245940) (not e!1899167))))

(assert (= (and d!850717 (not res!1245941)) b!3027690))

(assert (= (and b!3027690 c!500069) b!3027695))

(assert (= (and b!3027690 (not c!500069)) b!3027692))

(assert (= (and b!3027695 res!1245940) b!3027693))

(assert (= (and b!3027692 c!500070) b!3027688))

(assert (= (and b!3027692 (not c!500070)) b!3027694))

(assert (= (and b!3027688 res!1245939) b!3027689))

(assert (= (and b!3027694 (not res!1245938)) b!3027691))

(assert (= (and b!3027691 res!1245937) b!3027687))

(assert (= (or b!3027688 b!3027687) bm!205936))

(assert (= (or b!3027689 b!3027691) bm!205938))

(assert (= (or b!3027693 bm!205936) bm!205937))

(declare-fun m!3366515 () Bool)

(assert (=> bm!205937 m!3366515))

(declare-fun m!3366517 () Bool)

(assert (=> bm!205938 m!3366517))

(declare-fun m!3366519 () Bool)

(assert (=> b!3027695 m!3366519))

(assert (=> bm!205786 d!850717))

(declare-fun d!850721 () Bool)

(assert (=> d!850721 (= (isEmpty!19456 (tail!4949 s!11993)) ((_ is Nil!35156) (tail!4949 s!11993)))))

(assert (=> b!3026737 d!850721))

(assert (=> b!3026737 d!850505))

(declare-fun d!850723 () Bool)

(assert (=> d!850723 (= (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349))) ((_ is Nil!35156) (tail!4949 (_2!20188 lt!1045349))))))

(assert (=> b!3026891 d!850723))

(assert (=> b!3026891 d!850525))

(assert (=> b!3026947 d!850615))

(declare-fun bm!205942 () Bool)

(declare-fun call!205948 () Bool)

(declare-fun call!205947 () Bool)

(assert (=> bm!205942 (= call!205948 call!205947)))

(declare-fun b!3027706 () Bool)

(declare-fun res!1245949 () Bool)

(declare-fun e!1899182 () Bool)

(assert (=> b!3027706 (=> (not res!1245949) (not e!1899182))))

(assert (=> b!3027706 (= res!1245949 call!205948)))

(declare-fun e!1899180 () Bool)

(assert (=> b!3027706 (= e!1899180 e!1899182)))

(declare-fun b!3027707 () Bool)

(declare-fun call!205949 () Bool)

(assert (=> b!3027707 (= e!1899182 call!205949)))

(declare-fun b!3027708 () Bool)

(declare-fun e!1899176 () Bool)

(declare-fun e!1899178 () Bool)

(assert (=> b!3027708 (= e!1899176 e!1899178)))

(declare-fun c!500073 () Bool)

(assert (=> b!3027708 (= c!500073 ((_ is Star!9415) (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(declare-fun bm!205943 () Bool)

(declare-fun c!500074 () Bool)

(assert (=> bm!205943 (= call!205947 (validRegex!4148 (ite c!500073 (reg!9744 (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))) (ite c!500074 (regOne!19343 (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))) (regTwo!19342 (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423)))))))))

(declare-fun b!3027709 () Bool)

(declare-fun e!1899179 () Bool)

(declare-fun e!1899177 () Bool)

(assert (=> b!3027709 (= e!1899179 e!1899177)))

(declare-fun res!1245947 () Bool)

(assert (=> b!3027709 (=> (not res!1245947) (not e!1899177))))

(assert (=> b!3027709 (= res!1245947 call!205949)))

(declare-fun b!3027705 () Bool)

(assert (=> b!3027705 (= e!1899177 call!205948)))

(declare-fun d!850725 () Bool)

(declare-fun res!1245951 () Bool)

(assert (=> d!850725 (=> res!1245951 e!1899176)))

(assert (=> d!850725 (= res!1245951 ((_ is ElementMatch!9415) (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(assert (=> d!850725 (= (validRegex!4148 (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))) e!1899176)))

(declare-fun b!3027710 () Bool)

(assert (=> b!3027710 (= e!1899178 e!1899180)))

(assert (=> b!3027710 (= c!500074 ((_ is Union!9415) (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))

(declare-fun b!3027711 () Bool)

(declare-fun e!1899181 () Bool)

(assert (=> b!3027711 (= e!1899181 call!205947)))

(declare-fun bm!205944 () Bool)

(assert (=> bm!205944 (= call!205949 (validRegex!4148 (ite c!500074 (regTwo!19343 (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))) (regOne!19342 (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))))

(declare-fun b!3027712 () Bool)

(declare-fun res!1245948 () Bool)

(assert (=> b!3027712 (=> res!1245948 e!1899179)))

(assert (=> b!3027712 (= res!1245948 (not ((_ is Concat!14736) (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423)))))))

(assert (=> b!3027712 (= e!1899180 e!1899179)))

(declare-fun b!3027713 () Bool)

(assert (=> b!3027713 (= e!1899178 e!1899181)))

(declare-fun res!1245950 () Bool)

(assert (=> b!3027713 (= res!1245950 (not (nullable!3067 (reg!9744 (ite c!499839 (regTwo!19343 r!17423) (regOne!19342 r!17423))))))))

(assert (=> b!3027713 (=> (not res!1245950) (not e!1899181))))

(assert (= (and d!850725 (not res!1245951)) b!3027708))

(assert (= (and b!3027708 c!500073) b!3027713))

(assert (= (and b!3027708 (not c!500073)) b!3027710))

(assert (= (and b!3027713 res!1245950) b!3027711))

(assert (= (and b!3027710 c!500074) b!3027706))

(assert (= (and b!3027710 (not c!500074)) b!3027712))

(assert (= (and b!3027706 res!1245949) b!3027707))

(assert (= (and b!3027712 (not res!1245948)) b!3027709))

(assert (= (and b!3027709 res!1245947) b!3027705))

(assert (= (or b!3027706 b!3027705) bm!205942))

(assert (= (or b!3027707 b!3027709) bm!205944))

(assert (= (or b!3027711 bm!205942) bm!205943))

(declare-fun m!3366527 () Bool)

(assert (=> bm!205943 m!3366527))

(declare-fun m!3366529 () Bool)

(assert (=> bm!205944 m!3366529))

(declare-fun m!3366531 () Bool)

(assert (=> b!3027713 m!3366531))

(assert (=> bm!205791 d!850725))

(assert (=> b!3026887 d!850723))

(assert (=> b!3026887 d!850525))

(assert (=> b!3026852 d!850723))

(assert (=> b!3026852 d!850525))

(declare-fun bm!205945 () Bool)

(declare-fun call!205951 () Bool)

(declare-fun call!205950 () Bool)

(assert (=> bm!205945 (= call!205951 call!205950)))

(declare-fun b!3027715 () Bool)

(declare-fun res!1245955 () Bool)

(declare-fun e!1899189 () Bool)

(assert (=> b!3027715 (=> (not res!1245955) (not e!1899189))))

(assert (=> b!3027715 (= res!1245955 call!205951)))

(declare-fun e!1899187 () Bool)

(assert (=> b!3027715 (= e!1899187 e!1899189)))

(declare-fun b!3027716 () Bool)

(declare-fun call!205952 () Bool)

(assert (=> b!3027716 (= e!1899189 call!205952)))

(declare-fun b!3027717 () Bool)

(declare-fun e!1899183 () Bool)

(declare-fun e!1899185 () Bool)

(assert (=> b!3027717 (= e!1899183 e!1899185)))

(declare-fun c!500075 () Bool)

(assert (=> b!3027717 (= c!500075 ((_ is Star!9415) (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(declare-fun bm!205946 () Bool)

(declare-fun c!500076 () Bool)

(assert (=> bm!205946 (= call!205950 (validRegex!4148 (ite c!500075 (reg!9744 (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))) (ite c!500076 (regOne!19343 (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))) (regTwo!19342 (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423))))))))))

(declare-fun b!3027718 () Bool)

(declare-fun e!1899186 () Bool)

(declare-fun e!1899184 () Bool)

(assert (=> b!3027718 (= e!1899186 e!1899184)))

(declare-fun res!1245953 () Bool)

(assert (=> b!3027718 (=> (not res!1245953) (not e!1899184))))

(assert (=> b!3027718 (= res!1245953 call!205952)))

(declare-fun b!3027714 () Bool)

(assert (=> b!3027714 (= e!1899184 call!205951)))

(declare-fun d!850731 () Bool)

(declare-fun res!1245957 () Bool)

(assert (=> d!850731 (=> res!1245957 e!1899183)))

(assert (=> d!850731 (= res!1245957 ((_ is ElementMatch!9415) (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(assert (=> d!850731 (= (validRegex!4148 (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))) e!1899183)))

(declare-fun b!3027719 () Bool)

(assert (=> b!3027719 (= e!1899185 e!1899187)))

(assert (=> b!3027719 (= c!500076 ((_ is Union!9415) (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))

(declare-fun b!3027720 () Bool)

(declare-fun e!1899188 () Bool)

(assert (=> b!3027720 (= e!1899188 call!205950)))

(declare-fun bm!205947 () Bool)

(assert (=> bm!205947 (= call!205952 (validRegex!4148 (ite c!500076 (regTwo!19343 (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))) (regOne!19342 (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))))

(declare-fun b!3027721 () Bool)

(declare-fun res!1245954 () Bool)

(assert (=> b!3027721 (=> res!1245954 e!1899186)))

(assert (=> b!3027721 (= res!1245954 (not ((_ is Concat!14736) (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423))))))))

(assert (=> b!3027721 (= e!1899187 e!1899186)))

(declare-fun b!3027722 () Bool)

(assert (=> b!3027722 (= e!1899185 e!1899188)))

(declare-fun res!1245956 () Bool)

(assert (=> b!3027722 (= res!1245956 (not (nullable!3067 (reg!9744 (ite c!499838 (reg!9744 r!17423) (ite c!499839 (regOne!19343 r!17423) (regTwo!19342 r!17423)))))))))

(assert (=> b!3027722 (=> (not res!1245956) (not e!1899188))))

(assert (= (and d!850731 (not res!1245957)) b!3027717))

(assert (= (and b!3027717 c!500075) b!3027722))

(assert (= (and b!3027717 (not c!500075)) b!3027719))

(assert (= (and b!3027722 res!1245956) b!3027720))

(assert (= (and b!3027719 c!500076) b!3027715))

(assert (= (and b!3027719 (not c!500076)) b!3027721))

(assert (= (and b!3027715 res!1245955) b!3027716))

(assert (= (and b!3027721 (not res!1245954)) b!3027718))

(assert (= (and b!3027718 res!1245953) b!3027714))

(assert (= (or b!3027715 b!3027714) bm!205945))

(assert (= (or b!3027716 b!3027718) bm!205947))

(assert (= (or b!3027720 bm!205945) bm!205946))

(declare-fun m!3366533 () Bool)

(assert (=> bm!205946 m!3366533))

(declare-fun m!3366535 () Bool)

(assert (=> bm!205947 m!3366535))

(declare-fun m!3366537 () Bool)

(assert (=> b!3027722 m!3366537))

(assert (=> bm!205790 d!850731))

(assert (=> b!3026619 d!850721))

(assert (=> b!3026619 d!850505))

(declare-fun b!3027727 () Bool)

(declare-fun e!1899204 () Regex!9415)

(declare-fun lt!1045583 () Regex!9415)

(assert (=> b!3027727 (= e!1899204 lt!1045583)))

(declare-fun d!850733 () Bool)

(declare-fun e!1899193 () Bool)

(assert (=> d!850733 e!1899193))

(declare-fun res!1245959 () Bool)

(assert (=> d!850733 (=> (not res!1245959) (not e!1899193))))

(declare-fun lt!1045586 () Regex!9415)

(assert (=> d!850733 (= res!1245959 (validRegex!4148 lt!1045586))))

(declare-fun e!1899195 () Regex!9415)

(assert (=> d!850733 (= lt!1045586 e!1899195)))

(declare-fun c!500086 () Bool)

(assert (=> d!850733 (= c!500086 ((_ is EmptyLang!9415) (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))))))

(assert (=> d!850733 (validRegex!4148 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423))))))

(assert (=> d!850733 (= (simplify!394 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))) lt!1045586)))

(declare-fun call!205958 () Bool)

(declare-fun bm!205948 () Bool)

(declare-fun c!500079 () Bool)

(declare-fun lt!1045585 () Regex!9415)

(assert (=> bm!205948 (= call!205958 (isEmptyLang!492 (ite c!500079 lt!1045583 lt!1045585)))))

(declare-fun b!3027728 () Bool)

(declare-fun c!500080 () Bool)

(declare-fun e!1899200 () Bool)

(assert (=> b!3027728 (= c!500080 e!1899200)))

(declare-fun res!1245958 () Bool)

(assert (=> b!3027728 (=> res!1245958 e!1899200)))

(declare-fun call!205959 () Bool)

(assert (=> b!3027728 (= res!1245958 call!205959)))

(declare-fun lt!1045587 () Regex!9415)

(declare-fun call!205953 () Regex!9415)

(assert (=> b!3027728 (= lt!1045587 call!205953)))

(declare-fun e!1899198 () Regex!9415)

(declare-fun e!1899197 () Regex!9415)

(assert (=> b!3027728 (= e!1899198 e!1899197)))

(declare-fun b!3027729 () Bool)

(declare-fun e!1899194 () Regex!9415)

(declare-fun lt!1045588 () Regex!9415)

(assert (=> b!3027729 (= e!1899194 lt!1045588)))

(declare-fun b!3027730 () Bool)

(declare-fun e!1899203 () Regex!9415)

(declare-fun e!1899192 () Regex!9415)

(assert (=> b!3027730 (= e!1899203 e!1899192)))

(declare-fun c!500081 () Bool)

(declare-fun call!205955 () Bool)

(assert (=> b!3027730 (= c!500081 call!205955)))

(declare-fun c!500082 () Bool)

(declare-fun bm!205949 () Bool)

(assert (=> bm!205949 (= call!205953 (simplify!394 (ite c!500082 (reg!9744 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))) (ite c!500079 (regOne!19343 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))) (regTwo!19342 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423))))))))))

(declare-fun b!3027731 () Bool)

(declare-fun e!1899205 () Regex!9415)

(assert (=> b!3027731 (= e!1899205 e!1899204)))

(declare-fun call!205957 () Regex!9415)

(assert (=> b!3027731 (= lt!1045588 call!205957)))

(declare-fun call!205956 () Regex!9415)

(assert (=> b!3027731 (= lt!1045583 call!205956)))

(declare-fun c!500088 () Bool)

(declare-fun call!205954 () Bool)

(assert (=> b!3027731 (= c!500088 call!205954)))

(declare-fun b!3027732 () Bool)

(declare-fun c!500087 () Bool)

(declare-fun lt!1045584 () Regex!9415)

(assert (=> b!3027732 (= c!500087 (isEmptyExpr!498 lt!1045584))))

(declare-fun e!1899202 () Regex!9415)

(assert (=> b!3027732 (= e!1899202 e!1899203)))

(declare-fun bm!205950 () Bool)

(assert (=> bm!205950 (= call!205957 call!205953)))

(declare-fun b!3027733 () Bool)

(declare-fun c!500083 () Bool)

(assert (=> b!3027733 (= c!500083 call!205958)))

(assert (=> b!3027733 (= e!1899204 e!1899194)))

(declare-fun b!3027734 () Bool)

(assert (=> b!3027734 (= e!1899202 EmptyLang!9415)))

(declare-fun b!3027735 () Bool)

(assert (=> b!3027735 (= e!1899192 lt!1045584)))

(declare-fun b!3027736 () Bool)

(declare-fun e!1899201 () Regex!9415)

(assert (=> b!3027736 (= e!1899201 EmptyExpr!9415)))

(declare-fun b!3027737 () Bool)

(assert (=> b!3027737 (= e!1899203 lt!1045585)))

(declare-fun b!3027738 () Bool)

(assert (=> b!3027738 (= e!1899193 (= (nullable!3067 lt!1045586) (nullable!3067 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423))))))))

(declare-fun b!3027739 () Bool)

(assert (=> b!3027739 (= e!1899194 (Union!9415 lt!1045588 lt!1045583))))

(declare-fun bm!205951 () Bool)

(assert (=> bm!205951 (= call!205955 (isEmptyExpr!498 (ite c!500082 lt!1045587 lt!1045585)))))

(declare-fun b!3027740 () Bool)

(assert (=> b!3027740 (= e!1899200 call!205955)))

(declare-fun b!3027741 () Bool)

(declare-fun e!1899199 () Regex!9415)

(assert (=> b!3027741 (= e!1899199 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423))))))

(declare-fun bm!205952 () Bool)

(assert (=> bm!205952 (= call!205959 (isEmptyLang!492 (ite c!500082 lt!1045587 (ite c!500079 lt!1045588 lt!1045584))))))

(declare-fun b!3027742 () Bool)

(assert (=> b!3027742 (= c!500079 ((_ is Union!9415) (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))))))

(assert (=> b!3027742 (= e!1899198 e!1899205)))

(declare-fun b!3027743 () Bool)

(assert (=> b!3027743 (= e!1899205 e!1899202)))

(assert (=> b!3027743 (= lt!1045584 call!205956)))

(assert (=> b!3027743 (= lt!1045585 call!205957)))

(declare-fun res!1245960 () Bool)

(assert (=> b!3027743 (= res!1245960 call!205954)))

(declare-fun e!1899196 () Bool)

(assert (=> b!3027743 (=> res!1245960 e!1899196)))

(declare-fun c!500084 () Bool)

(assert (=> b!3027743 (= c!500084 e!1899196)))

(declare-fun b!3027744 () Bool)

(assert (=> b!3027744 (= e!1899195 e!1899199)))

(declare-fun c!500085 () Bool)

(assert (=> b!3027744 (= c!500085 ((_ is ElementMatch!9415) (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))))))

(declare-fun bm!205953 () Bool)

(assert (=> bm!205953 (= call!205954 call!205959)))

(declare-fun b!3027745 () Bool)

(assert (=> b!3027745 (= e!1899201 e!1899198)))

(assert (=> b!3027745 (= c!500082 ((_ is Star!9415) (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))))))

(declare-fun b!3027746 () Bool)

(assert (=> b!3027746 (= e!1899192 (Concat!14736 lt!1045584 lt!1045585))))

(declare-fun b!3027747 () Bool)

(assert (=> b!3027747 (= e!1899197 (Star!9415 lt!1045587))))

(declare-fun bm!205954 () Bool)

(assert (=> bm!205954 (= call!205956 (simplify!394 (ite c!500079 (regTwo!19343 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))) (regOne!19342 (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))))))))

(declare-fun b!3027748 () Bool)

(assert (=> b!3027748 (= e!1899195 EmptyLang!9415)))

(declare-fun b!3027749 () Bool)

(declare-fun c!500089 () Bool)

(assert (=> b!3027749 (= c!500089 ((_ is EmptyExpr!9415) (ite c!499790 (regTwo!19343 (regTwo!19342 r!17423)) (regOne!19342 (regTwo!19342 r!17423)))))))

(assert (=> b!3027749 (= e!1899199 e!1899201)))

(declare-fun b!3027750 () Bool)

(assert (=> b!3027750 (= e!1899197 EmptyExpr!9415)))

(declare-fun b!3027751 () Bool)

(assert (=> b!3027751 (= e!1899196 call!205958)))

(assert (= (and d!850733 c!500086) b!3027748))

(assert (= (and d!850733 (not c!500086)) b!3027744))

(assert (= (and b!3027744 c!500085) b!3027741))

(assert (= (and b!3027744 (not c!500085)) b!3027749))

(assert (= (and b!3027749 c!500089) b!3027736))

(assert (= (and b!3027749 (not c!500089)) b!3027745))

(assert (= (and b!3027745 c!500082) b!3027728))

(assert (= (and b!3027745 (not c!500082)) b!3027742))

(assert (= (and b!3027728 (not res!1245958)) b!3027740))

(assert (= (and b!3027728 c!500080) b!3027750))

(assert (= (and b!3027728 (not c!500080)) b!3027747))

(assert (= (and b!3027742 c!500079) b!3027731))

(assert (= (and b!3027742 (not c!500079)) b!3027743))

(assert (= (and b!3027731 c!500088) b!3027727))

(assert (= (and b!3027731 (not c!500088)) b!3027733))

(assert (= (and b!3027733 c!500083) b!3027729))

(assert (= (and b!3027733 (not c!500083)) b!3027739))

(assert (= (and b!3027743 (not res!1245960)) b!3027751))

(assert (= (and b!3027743 c!500084) b!3027734))

(assert (= (and b!3027743 (not c!500084)) b!3027732))

(assert (= (and b!3027732 c!500087) b!3027737))

(assert (= (and b!3027732 (not c!500087)) b!3027730))

(assert (= (and b!3027730 c!500081) b!3027735))

(assert (= (and b!3027730 (not c!500081)) b!3027746))

(assert (= (or b!3027731 b!3027743) bm!205950))

(assert (= (or b!3027731 b!3027743) bm!205954))

(assert (= (or b!3027731 b!3027743) bm!205953))

(assert (= (or b!3027733 b!3027751) bm!205948))

(assert (= (or b!3027740 b!3027730) bm!205951))

(assert (= (or b!3027728 bm!205950) bm!205949))

(assert (= (or b!3027728 bm!205953) bm!205952))

(assert (= (and d!850733 res!1245959) b!3027738))

(declare-fun m!3366541 () Bool)

(assert (=> bm!205951 m!3366541))

(declare-fun m!3366543 () Bool)

(assert (=> d!850733 m!3366543))

(declare-fun m!3366545 () Bool)

(assert (=> d!850733 m!3366545))

(declare-fun m!3366547 () Bool)

(assert (=> bm!205954 m!3366547))

(declare-fun m!3366549 () Bool)

(assert (=> bm!205952 m!3366549))

(declare-fun m!3366551 () Bool)

(assert (=> bm!205948 m!3366551))

(declare-fun m!3366555 () Bool)

(assert (=> b!3027738 m!3366555))

(declare-fun m!3366557 () Bool)

(assert (=> b!3027738 m!3366557))

(declare-fun m!3366559 () Bool)

(assert (=> bm!205949 m!3366559))

(declare-fun m!3366561 () Bool)

(assert (=> b!3027732 m!3366561))

(assert (=> bm!205765 d!850733))

(assert (=> b!3026733 d!850721))

(assert (=> b!3026733 d!850505))

(assert (=> b!3026615 d!850721))

(assert (=> b!3026615 d!850505))

(declare-fun bm!205955 () Bool)

(declare-fun call!205961 () Bool)

(declare-fun call!205960 () Bool)

(assert (=> bm!205955 (= call!205961 call!205960)))

(declare-fun b!3027759 () Bool)

(declare-fun res!1245963 () Bool)

(declare-fun e!1899215 () Bool)

(assert (=> b!3027759 (=> (not res!1245963) (not e!1899215))))

(assert (=> b!3027759 (= res!1245963 call!205961)))

(declare-fun e!1899213 () Bool)

(assert (=> b!3027759 (= e!1899213 e!1899215)))

(declare-fun b!3027760 () Bool)

(declare-fun call!205962 () Bool)

(assert (=> b!3027760 (= e!1899215 call!205962)))

(declare-fun b!3027761 () Bool)

(declare-fun e!1899209 () Bool)

(declare-fun e!1899211 () Bool)

(assert (=> b!3027761 (= e!1899209 e!1899211)))

(declare-fun c!500093 () Bool)

(assert (=> b!3027761 (= c!500093 ((_ is Star!9415) (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))))))

(declare-fun bm!205956 () Bool)

(declare-fun c!500094 () Bool)

(assert (=> bm!205956 (= call!205960 (validRegex!4148 (ite c!500093 (reg!9744 (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))) (ite c!500094 (regOne!19343 (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))) (regTwo!19342 (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353)))))))))

(declare-fun b!3027762 () Bool)

(declare-fun e!1899212 () Bool)

(declare-fun e!1899210 () Bool)

(assert (=> b!3027762 (= e!1899212 e!1899210)))

(declare-fun res!1245961 () Bool)

(assert (=> b!3027762 (=> (not res!1245961) (not e!1899210))))

(assert (=> b!3027762 (= res!1245961 call!205962)))

(declare-fun b!3027758 () Bool)

(assert (=> b!3027758 (= e!1899210 call!205961)))

(declare-fun d!850741 () Bool)

(declare-fun res!1245965 () Bool)

(assert (=> d!850741 (=> res!1245965 e!1899209)))

(assert (=> d!850741 (= res!1245965 ((_ is ElementMatch!9415) (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))))))

(assert (=> d!850741 (= (validRegex!4148 (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))) e!1899209)))

(declare-fun b!3027763 () Bool)

(assert (=> b!3027763 (= e!1899211 e!1899213)))

(assert (=> b!3027763 (= c!500094 ((_ is Union!9415) (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))))))

(declare-fun b!3027764 () Bool)

(declare-fun e!1899214 () Bool)

(assert (=> b!3027764 (= e!1899214 call!205960)))

(declare-fun bm!205957 () Bool)

(assert (=> bm!205957 (= call!205962 (validRegex!4148 (ite c!500094 (regTwo!19343 (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))) (regOne!19342 (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))))))))

(declare-fun b!3027765 () Bool)

(declare-fun res!1245962 () Bool)

(assert (=> b!3027765 (=> res!1245962 e!1899212)))

(assert (=> b!3027765 (= res!1245962 (not ((_ is Concat!14736) (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353)))))))

(assert (=> b!3027765 (= e!1899213 e!1899212)))

(declare-fun b!3027766 () Bool)

(assert (=> b!3027766 (= e!1899211 e!1899214)))

(declare-fun res!1245964 () Bool)

(assert (=> b!3027766 (= res!1245964 (not (nullable!3067 (reg!9744 (ite c!499809 (regTwo!19343 lt!1045353) (regOne!19342 lt!1045353))))))))

(assert (=> b!3027766 (=> (not res!1245964) (not e!1899214))))

(assert (= (and d!850741 (not res!1245965)) b!3027761))

(assert (= (and b!3027761 c!500093) b!3027766))

(assert (= (and b!3027761 (not c!500093)) b!3027763))

(assert (= (and b!3027766 res!1245964) b!3027764))

(assert (= (and b!3027763 c!500094) b!3027759))

(assert (= (and b!3027763 (not c!500094)) b!3027765))

(assert (= (and b!3027759 res!1245963) b!3027760))

(assert (= (and b!3027765 (not res!1245962)) b!3027762))

(assert (= (and b!3027762 res!1245961) b!3027758))

(assert (= (or b!3027759 b!3027758) bm!205955))

(assert (= (or b!3027760 b!3027762) bm!205957))

(assert (= (or b!3027764 bm!205955) bm!205956))

(declare-fun m!3366563 () Bool)

(assert (=> bm!205956 m!3366563))

(declare-fun m!3366565 () Bool)

(assert (=> bm!205957 m!3366565))

(declare-fun m!3366567 () Bool)

(assert (=> b!3027766 m!3366567))

(assert (=> bm!205775 d!850741))

(assert (=> b!3026848 d!850723))

(assert (=> b!3026848 d!850525))

(declare-fun bm!205958 () Bool)

(declare-fun call!205964 () Bool)

(declare-fun call!205963 () Bool)

(assert (=> bm!205958 (= call!205964 call!205963)))

(declare-fun b!3027768 () Bool)

(declare-fun res!1245968 () Bool)

(declare-fun e!1899222 () Bool)

(assert (=> b!3027768 (=> (not res!1245968) (not e!1899222))))

(assert (=> b!3027768 (= res!1245968 call!205964)))

(declare-fun e!1899220 () Bool)

(assert (=> b!3027768 (= e!1899220 e!1899222)))

(declare-fun b!3027769 () Bool)

(declare-fun call!205965 () Bool)

(assert (=> b!3027769 (= e!1899222 call!205965)))

(declare-fun b!3027770 () Bool)

(declare-fun e!1899216 () Bool)

(declare-fun e!1899218 () Bool)

(assert (=> b!3027770 (= e!1899216 e!1899218)))

(declare-fun c!500095 () Bool)

(assert (=> b!3027770 (= c!500095 ((_ is Star!9415) lt!1045470))))

(declare-fun c!500096 () Bool)

(declare-fun bm!205959 () Bool)

(assert (=> bm!205959 (= call!205963 (validRegex!4148 (ite c!500095 (reg!9744 lt!1045470) (ite c!500096 (regOne!19343 lt!1045470) (regTwo!19342 lt!1045470)))))))

(declare-fun b!3027771 () Bool)

(declare-fun e!1899219 () Bool)

(declare-fun e!1899217 () Bool)

(assert (=> b!3027771 (= e!1899219 e!1899217)))

(declare-fun res!1245966 () Bool)

(assert (=> b!3027771 (=> (not res!1245966) (not e!1899217))))

(assert (=> b!3027771 (= res!1245966 call!205965)))

(declare-fun b!3027767 () Bool)

(assert (=> b!3027767 (= e!1899217 call!205964)))

(declare-fun d!850743 () Bool)

(declare-fun res!1245970 () Bool)

(assert (=> d!850743 (=> res!1245970 e!1899216)))

(assert (=> d!850743 (= res!1245970 ((_ is ElementMatch!9415) lt!1045470))))

(assert (=> d!850743 (= (validRegex!4148 lt!1045470) e!1899216)))

(declare-fun b!3027772 () Bool)

(assert (=> b!3027772 (= e!1899218 e!1899220)))

(assert (=> b!3027772 (= c!500096 ((_ is Union!9415) lt!1045470))))

(declare-fun b!3027773 () Bool)

(declare-fun e!1899221 () Bool)

(assert (=> b!3027773 (= e!1899221 call!205963)))

(declare-fun bm!205960 () Bool)

(assert (=> bm!205960 (= call!205965 (validRegex!4148 (ite c!500096 (regTwo!19343 lt!1045470) (regOne!19342 lt!1045470))))))

(declare-fun b!3027774 () Bool)

(declare-fun res!1245967 () Bool)

(assert (=> b!3027774 (=> res!1245967 e!1899219)))

(assert (=> b!3027774 (= res!1245967 (not ((_ is Concat!14736) lt!1045470)))))

(assert (=> b!3027774 (= e!1899220 e!1899219)))

(declare-fun b!3027775 () Bool)

(assert (=> b!3027775 (= e!1899218 e!1899221)))

(declare-fun res!1245969 () Bool)

(assert (=> b!3027775 (= res!1245969 (not (nullable!3067 (reg!9744 lt!1045470))))))

(assert (=> b!3027775 (=> (not res!1245969) (not e!1899221))))

(assert (= (and d!850743 (not res!1245970)) b!3027770))

(assert (= (and b!3027770 c!500095) b!3027775))

(assert (= (and b!3027770 (not c!500095)) b!3027772))

(assert (= (and b!3027775 res!1245969) b!3027773))

(assert (= (and b!3027772 c!500096) b!3027768))

(assert (= (and b!3027772 (not c!500096)) b!3027774))

(assert (= (and b!3027768 res!1245968) b!3027769))

(assert (= (and b!3027774 (not res!1245967)) b!3027771))

(assert (= (and b!3027771 res!1245966) b!3027767))

(assert (= (or b!3027768 b!3027767) bm!205958))

(assert (= (or b!3027769 b!3027771) bm!205960))

(assert (= (or b!3027773 bm!205958) bm!205959))

(declare-fun m!3366569 () Bool)

(assert (=> bm!205959 m!3366569))

(declare-fun m!3366571 () Bool)

(assert (=> bm!205960 m!3366571))

(declare-fun m!3366573 () Bool)

(assert (=> b!3027775 m!3366573))

(assert (=> d!850431 d!850743))

(assert (=> d!850431 d!850495))

(declare-fun d!850745 () Bool)

(assert (=> d!850745 (= (isEmptyLang!492 (ite c!499793 lt!1045463 (ite c!499790 lt!1045464 lt!1045460))) ((_ is EmptyLang!9415) (ite c!499793 lt!1045463 (ite c!499790 lt!1045464 lt!1045460))))))

(assert (=> bm!205763 d!850745))

(declare-fun d!850747 () Bool)

(assert (=> d!850747 (= (isEmpty!19456 (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))) ((_ is Nil!35156) (tail!4949 (++!8434 (_1!20188 lt!1045349) (_2!20188 lt!1045349)))))))

(assert (=> b!3026260 d!850747))

(assert (=> b!3026260 d!850553))

(assert (=> b!3026256 d!850747))

(assert (=> b!3026256 d!850553))

(declare-fun d!850749 () Bool)

(assert (=> d!850749 (= (matchR!4297 (regTwo!19342 r!17423) (_2!20188 lt!1045349)) (matchR!4297 (simplify!394 (regTwo!19342 r!17423)) (_2!20188 lt!1045349)))))

(assert (=> d!850749 true))

(declare-fun _$95!566 () Unit!49253)

(assert (=> d!850749 (= (choose!17945 (regTwo!19342 r!17423) (_2!20188 lt!1045349)) _$95!566)))

(declare-fun bs!530726 () Bool)

(assert (= bs!530726 d!850749))

(assert (=> bs!530726 m!3365389))

(assert (=> bs!530726 m!3365397))

(assert (=> bs!530726 m!3365397))

(assert (=> bs!530726 m!3365711))

(assert (=> d!850421 d!850749))

(assert (=> d!850421 d!850423))

(assert (=> d!850421 d!850609))

(assert (=> d!850421 d!850435))

(declare-fun b!3027776 () Bool)

(declare-fun res!1245977 () Bool)

(declare-fun e!1899225 () Bool)

(assert (=> b!3027776 (=> res!1245977 e!1899225)))

(assert (=> b!3027776 (= res!1245977 (not ((_ is ElementMatch!9415) (simplify!394 (regTwo!19342 r!17423)))))))

(declare-fun e!1899227 () Bool)

(assert (=> b!3027776 (= e!1899227 e!1899225)))

(declare-fun b!3027777 () Bool)

(declare-fun e!1899223 () Bool)

(assert (=> b!3027777 (= e!1899223 e!1899227)))

(declare-fun c!500097 () Bool)

(assert (=> b!3027777 (= c!500097 ((_ is EmptyLang!9415) (simplify!394 (regTwo!19342 r!17423))))))

(declare-fun b!3027778 () Bool)

(declare-fun lt!1045592 () Bool)

(assert (=> b!3027778 (= e!1899227 (not lt!1045592))))

(declare-fun b!3027779 () Bool)

(declare-fun res!1245975 () Bool)

(assert (=> b!3027779 (=> res!1245975 e!1899225)))

(declare-fun e!1899229 () Bool)

(assert (=> b!3027779 (= res!1245975 e!1899229)))

(declare-fun res!1245973 () Bool)

(assert (=> b!3027779 (=> (not res!1245973) (not e!1899229))))

(assert (=> b!3027779 (= res!1245973 lt!1045592)))

(declare-fun bm!205961 () Bool)

(declare-fun call!205966 () Bool)

(assert (=> bm!205961 (= call!205966 (isEmpty!19456 (_2!20188 lt!1045349)))))

(declare-fun b!3027780 () Bool)

(declare-fun res!1245971 () Bool)

(assert (=> b!3027780 (=> (not res!1245971) (not e!1899229))))

(assert (=> b!3027780 (= res!1245971 (not call!205966))))

(declare-fun d!850751 () Bool)

(assert (=> d!850751 e!1899223))

(declare-fun c!500098 () Bool)

(assert (=> d!850751 (= c!500098 ((_ is EmptyExpr!9415) (simplify!394 (regTwo!19342 r!17423))))))

(declare-fun e!1899226 () Bool)

(assert (=> d!850751 (= lt!1045592 e!1899226)))

(declare-fun c!500099 () Bool)

(assert (=> d!850751 (= c!500099 (isEmpty!19456 (_2!20188 lt!1045349)))))

(assert (=> d!850751 (validRegex!4148 (simplify!394 (regTwo!19342 r!17423)))))

(assert (=> d!850751 (= (matchR!4297 (simplify!394 (regTwo!19342 r!17423)) (_2!20188 lt!1045349)) lt!1045592)))

(declare-fun b!3027781 () Bool)

(declare-fun e!1899228 () Bool)

(assert (=> b!3027781 (= e!1899225 e!1899228)))

(declare-fun res!1245974 () Bool)

(assert (=> b!3027781 (=> (not res!1245974) (not e!1899228))))

(assert (=> b!3027781 (= res!1245974 (not lt!1045592))))

(declare-fun b!3027782 () Bool)

(assert (=> b!3027782 (= e!1899226 (matchR!4297 (derivativeStep!2664 (simplify!394 (regTwo!19342 r!17423)) (head!6723 (_2!20188 lt!1045349))) (tail!4949 (_2!20188 lt!1045349))))))

(declare-fun b!3027783 () Bool)

(declare-fun e!1899224 () Bool)

(assert (=> b!3027783 (= e!1899224 (not (= (head!6723 (_2!20188 lt!1045349)) (c!499613 (simplify!394 (regTwo!19342 r!17423))))))))

(declare-fun b!3027784 () Bool)

(assert (=> b!3027784 (= e!1899228 e!1899224)))

(declare-fun res!1245972 () Bool)

(assert (=> b!3027784 (=> res!1245972 e!1899224)))

(assert (=> b!3027784 (= res!1245972 call!205966)))

(declare-fun b!3027785 () Bool)

(declare-fun res!1245978 () Bool)

(assert (=> b!3027785 (=> res!1245978 e!1899224)))

(assert (=> b!3027785 (= res!1245978 (not (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349)))))))

(declare-fun b!3027786 () Bool)

(assert (=> b!3027786 (= e!1899229 (= (head!6723 (_2!20188 lt!1045349)) (c!499613 (simplify!394 (regTwo!19342 r!17423)))))))

(declare-fun b!3027787 () Bool)

(assert (=> b!3027787 (= e!1899226 (nullable!3067 (simplify!394 (regTwo!19342 r!17423))))))

(declare-fun b!3027788 () Bool)

(assert (=> b!3027788 (= e!1899223 (= lt!1045592 call!205966))))

(declare-fun b!3027789 () Bool)

(declare-fun res!1245976 () Bool)

(assert (=> b!3027789 (=> (not res!1245976) (not e!1899229))))

(assert (=> b!3027789 (= res!1245976 (isEmpty!19456 (tail!4949 (_2!20188 lt!1045349))))))

(assert (= (and d!850751 c!500099) b!3027787))

(assert (= (and d!850751 (not c!500099)) b!3027782))

(assert (= (and d!850751 c!500098) b!3027788))

(assert (= (and d!850751 (not c!500098)) b!3027777))

(assert (= (and b!3027777 c!500097) b!3027778))

(assert (= (and b!3027777 (not c!500097)) b!3027776))

(assert (= (and b!3027776 (not res!1245977)) b!3027779))

(assert (= (and b!3027779 res!1245973) b!3027780))

(assert (= (and b!3027780 res!1245971) b!3027789))

(assert (= (and b!3027789 res!1245976) b!3027786))

(assert (= (and b!3027779 (not res!1245975)) b!3027781))

(assert (= (and b!3027781 res!1245974) b!3027784))

(assert (= (and b!3027784 (not res!1245972)) b!3027785))

(assert (= (and b!3027785 (not res!1245978)) b!3027783))

(assert (= (or b!3027788 b!3027780 b!3027784) bm!205961))

(assert (=> b!3027789 m!3365755))

(assert (=> b!3027789 m!3365755))

(assert (=> b!3027789 m!3365757))

(assert (=> b!3027785 m!3365755))

(assert (=> b!3027785 m!3365755))

(assert (=> b!3027785 m!3365757))

(assert (=> b!3027787 m!3365397))

(declare-fun m!3366579 () Bool)

(assert (=> b!3027787 m!3366579))

(assert (=> b!3027782 m!3365761))

(assert (=> b!3027782 m!3365397))

(assert (=> b!3027782 m!3365761))

(declare-fun m!3366583 () Bool)

(assert (=> b!3027782 m!3366583))

(assert (=> b!3027782 m!3365755))

(assert (=> b!3027782 m!3366583))

(assert (=> b!3027782 m!3365755))

(declare-fun m!3366585 () Bool)

(assert (=> b!3027782 m!3366585))

(assert (=> b!3027786 m!3365761))

(assert (=> b!3027783 m!3365761))

(assert (=> bm!205961 m!3365767))

(assert (=> d!850751 m!3365767))

(assert (=> d!850751 m!3365397))

(declare-fun m!3366589 () Bool)

(assert (=> d!850751 m!3366589))

(assert (=> d!850421 d!850751))

(assert (=> d!850451 d!850495))

(assert (=> d!850451 d!850449))

(declare-fun bs!530731 () Bool)

(declare-fun d!850759 () Bool)

(assert (= bs!530731 (and d!850759 b!3026703)))

(declare-fun lambda!113126 () Int)

(assert (=> bs!530731 (not (= lambda!113126 lambda!113093))))

(declare-fun bs!530732 () Bool)

(assert (= bs!530732 (and d!850759 d!850481)))

(assert (=> bs!530732 (not (= lambda!113126 lambda!113110))))

(declare-fun bs!530734 () Bool)

(assert (= bs!530734 (and d!850759 b!3026135)))

(assert (=> bs!530734 (not (= lambda!113126 lambda!113074))))

(declare-fun bs!530736 () Bool)

(assert (= bs!530736 (and d!850759 d!850447)))

(assert (=> bs!530736 (= lambda!113126 lambda!113100)))

(declare-fun bs!530738 () Bool)

(assert (= bs!530738 (and d!850759 b!3027658)))

(assert (=> bs!530738 (not (= lambda!113126 lambda!113116))))

(declare-fun bs!530739 () Bool)

(assert (= bs!530739 (and d!850759 b!3026699)))

(assert (=> bs!530739 (not (= lambda!113126 lambda!113095))))

(declare-fun bs!530741 () Bool)

(assert (= bs!530741 (and d!850759 d!850451)))

(assert (=> bs!530741 (= lambda!113126 lambda!113104)))

(declare-fun bs!530743 () Bool)

(assert (= bs!530743 (and d!850759 b!3027662)))

(assert (=> bs!530743 (not (= lambda!113126 lambda!113113))))

(assert (=> bs!530732 (= lambda!113126 lambda!113109)))

(assert (=> bs!530734 (= lambda!113126 lambda!113073)))

(assert (=> bs!530736 (not (= lambda!113126 lambda!113101))))

(assert (=> d!850759 true))

(assert (=> d!850759 true))

(assert (=> d!850759 true))

(assert (=> d!850759 (= (isDefined!5339 (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) Nil!35156 s!11993 s!11993)) (Exists!1683 lambda!113126))))

(assert (=> d!850759 true))

(declare-fun _$89!1304 () Unit!49253)

(assert (=> d!850759 (= (choose!17953 (regOne!19342 r!17423) (regTwo!19342 r!17423) s!11993) _$89!1304)))

(declare-fun bs!530746 () Bool)

(assert (= bs!530746 d!850759))

(assert (=> bs!530746 m!3365367))

(assert (=> bs!530746 m!3365367))

(assert (=> bs!530746 m!3365839))

(declare-fun m!3366595 () Bool)

(assert (=> bs!530746 m!3366595))

(assert (=> d!850451 d!850759))

(declare-fun d!850765 () Bool)

(assert (=> d!850765 (= (isDefined!5339 (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) Nil!35156 s!11993 s!11993)) (not (isEmpty!19458 (findConcatSeparation!1182 (regOne!19342 r!17423) (regTwo!19342 r!17423) Nil!35156 s!11993 s!11993))))))

(declare-fun bs!530748 () Bool)

(assert (= bs!530748 d!850765))

(assert (=> bs!530748 m!3365367))

(declare-fun m!3366597 () Bool)

(assert (=> bs!530748 m!3366597))

(assert (=> d!850451 d!850765))

(declare-fun d!850767 () Bool)

(assert (=> d!850767 (= (Exists!1683 lambda!113104) (choose!17951 lambda!113104))))

(declare-fun bs!530749 () Bool)

(assert (= bs!530749 d!850767))

(declare-fun m!3366599 () Bool)

(assert (=> bs!530749 m!3366599))

(assert (=> d!850451 d!850767))

(declare-fun bm!205966 () Bool)

(declare-fun call!205972 () Bool)

(declare-fun call!205971 () Bool)

(assert (=> bm!205966 (= call!205972 call!205971)))

(declare-fun b!3027822 () Bool)

(declare-fun res!1246002 () Bool)

(declare-fun e!1899254 () Bool)

(assert (=> b!3027822 (=> (not res!1246002) (not e!1899254))))

(assert (=> b!3027822 (= res!1246002 call!205972)))

(declare-fun e!1899252 () Bool)

(assert (=> b!3027822 (= e!1899252 e!1899254)))

(declare-fun b!3027823 () Bool)

(declare-fun call!205973 () Bool)

(assert (=> b!3027823 (= e!1899254 call!205973)))

(declare-fun b!3027824 () Bool)

(declare-fun e!1899248 () Bool)

(declare-fun e!1899250 () Bool)

(assert (=> b!3027824 (= e!1899248 e!1899250)))

(declare-fun c!500105 () Bool)

(assert (=> b!3027824 (= c!500105 ((_ is Star!9415) (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))))))

(declare-fun c!500106 () Bool)

(declare-fun bm!205967 () Bool)

(assert (=> bm!205967 (= call!205971 (validRegex!4148 (ite c!500105 (reg!9744 (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))) (ite c!500106 (regOne!19343 (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))) (regTwo!19342 (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353))))))))))

(declare-fun b!3027825 () Bool)

(declare-fun e!1899251 () Bool)

(declare-fun e!1899249 () Bool)

(assert (=> b!3027825 (= e!1899251 e!1899249)))

(declare-fun res!1246000 () Bool)

(assert (=> b!3027825 (=> (not res!1246000) (not e!1899249))))

(assert (=> b!3027825 (= res!1246000 call!205973)))

(declare-fun b!3027821 () Bool)

(assert (=> b!3027821 (= e!1899249 call!205972)))

(declare-fun d!850769 () Bool)

(declare-fun res!1246004 () Bool)

(assert (=> d!850769 (=> res!1246004 e!1899248)))

(assert (=> d!850769 (= res!1246004 ((_ is ElementMatch!9415) (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))))))

(assert (=> d!850769 (= (validRegex!4148 (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))) e!1899248)))

(declare-fun b!3027826 () Bool)

(assert (=> b!3027826 (= e!1899250 e!1899252)))

(assert (=> b!3027826 (= c!500106 ((_ is Union!9415) (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))))))

(declare-fun b!3027827 () Bool)

(declare-fun e!1899253 () Bool)

(assert (=> b!3027827 (= e!1899253 call!205971)))

(declare-fun bm!205968 () Bool)

(assert (=> bm!205968 (= call!205973 (validRegex!4148 (ite c!500106 (regTwo!19343 (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))) (regOne!19342 (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))))))))

(declare-fun b!3027828 () Bool)

(declare-fun res!1246001 () Bool)

(assert (=> b!3027828 (=> res!1246001 e!1899251)))

(assert (=> b!3027828 (= res!1246001 (not ((_ is Concat!14736) (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353))))))))

(assert (=> b!3027828 (= e!1899252 e!1899251)))

(declare-fun b!3027829 () Bool)

(assert (=> b!3027829 (= e!1899250 e!1899253)))

(declare-fun res!1246003 () Bool)

(assert (=> b!3027829 (= res!1246003 (not (nullable!3067 (reg!9744 (ite c!499808 (reg!9744 lt!1045353) (ite c!499809 (regOne!19343 lt!1045353) (regTwo!19342 lt!1045353)))))))))

(assert (=> b!3027829 (=> (not res!1246003) (not e!1899253))))

(assert (= (and d!850769 (not res!1246004)) b!3027824))

(assert (= (and b!3027824 c!500105) b!3027829))

(assert (= (and b!3027824 (not c!500105)) b!3027826))

(assert (= (and b!3027829 res!1246003) b!3027827))

(assert (= (and b!3027826 c!500106) b!3027822))

(assert (= (and b!3027826 (not c!500106)) b!3027828))

(assert (= (and b!3027822 res!1246002) b!3027823))

(assert (= (and b!3027828 (not res!1246001)) b!3027825))

(assert (= (and b!3027825 res!1246000) b!3027821))

(assert (= (or b!3027822 b!3027821) bm!205966))

(assert (= (or b!3027823 b!3027825) bm!205968))

(assert (= (or b!3027827 bm!205966) bm!205967))

(declare-fun m!3366605 () Bool)

(assert (=> bm!205967 m!3366605))

(declare-fun m!3366609 () Bool)

(assert (=> bm!205968 m!3366609))

(declare-fun m!3366611 () Bool)

(assert (=> b!3027829 m!3366611))

(assert (=> bm!205774 d!850769))

(declare-fun bs!530750 () Bool)

(declare-fun b!3027834 () Bool)

(assert (= bs!530750 (and b!3027834 b!3026703)))

(declare-fun lambda!113127 () Int)

(assert (=> bs!530750 (= (and (= (reg!9744 (regTwo!19343 r!17423)) (reg!9744 r!17423)) (= (regTwo!19343 r!17423) r!17423)) (= lambda!113127 lambda!113093))))

(declare-fun bs!530751 () Bool)

(assert (= bs!530751 (and b!3027834 d!850759)))

(assert (=> bs!530751 (not (= lambda!113127 lambda!113126))))

(declare-fun bs!530753 () Bool)

(assert (= bs!530753 (and b!3027834 d!850481)))

(assert (=> bs!530753 (not (= lambda!113127 lambda!113110))))

(declare-fun bs!530754 () Bool)

(assert (= bs!530754 (and b!3027834 b!3026135)))

(assert (=> bs!530754 (not (= lambda!113127 lambda!113074))))

(declare-fun bs!530755 () Bool)

(assert (= bs!530755 (and b!3027834 d!850447)))

(assert (=> bs!530755 (not (= lambda!113127 lambda!113100))))

(declare-fun bs!530756 () Bool)

(assert (= bs!530756 (and b!3027834 b!3027658)))

(assert (=> bs!530756 (not (= lambda!113127 lambda!113116))))

(declare-fun bs!530757 () Bool)

(assert (= bs!530757 (and b!3027834 b!3026699)))

(assert (=> bs!530757 (not (= lambda!113127 lambda!113095))))

(declare-fun bs!530758 () Bool)

(assert (= bs!530758 (and b!3027834 d!850451)))

(assert (=> bs!530758 (not (= lambda!113127 lambda!113104))))

(declare-fun bs!530759 () Bool)

(assert (= bs!530759 (and b!3027834 b!3027662)))

(assert (=> bs!530759 (= (and (= (reg!9744 (regTwo!19343 r!17423)) (reg!9744 (regOne!19343 r!17423))) (= (regTwo!19343 r!17423) (regOne!19343 r!17423))) (= lambda!113127 lambda!113113))))

(assert (=> bs!530753 (not (= lambda!113127 lambda!113109))))

(assert (=> bs!530754 (not (= lambda!113127 lambda!113073))))

(assert (=> bs!530755 (not (= lambda!113127 lambda!113101))))

(assert (=> b!3027834 true))

(assert (=> b!3027834 true))

(declare-fun bs!530760 () Bool)

(declare-fun b!3027830 () Bool)

(assert (= bs!530760 (and b!3027830 b!3026703)))

(declare-fun lambda!113128 () Int)

(assert (=> bs!530760 (not (= lambda!113128 lambda!113093))))

(declare-fun bs!530761 () Bool)

(assert (= bs!530761 (and b!3027830 d!850759)))

(assert (=> bs!530761 (not (= lambda!113128 lambda!113126))))

(declare-fun bs!530763 () Bool)

(assert (= bs!530763 (and b!3027830 d!850481)))

(assert (=> bs!530763 (= (and (= (regOne!19342 (regTwo!19343 r!17423)) (regOne!19342 r!17423)) (= (regTwo!19342 (regTwo!19343 r!17423)) (regTwo!19342 r!17423))) (= lambda!113128 lambda!113110))))

(declare-fun bs!530764 () Bool)

(assert (= bs!530764 (and b!3027830 b!3026135)))

(assert (=> bs!530764 (= (and (= (regOne!19342 (regTwo!19343 r!17423)) (regOne!19342 r!17423)) (= (regTwo!19342 (regTwo!19343 r!17423)) (regTwo!19342 r!17423))) (= lambda!113128 lambda!113074))))

(declare-fun bs!530765 () Bool)

(assert (= bs!530765 (and b!3027830 d!850447)))

(assert (=> bs!530765 (not (= lambda!113128 lambda!113100))))

(declare-fun bs!530766 () Bool)

(assert (= bs!530766 (and b!3027830 b!3027658)))

(assert (=> bs!530766 (= (and (= (regOne!19342 (regTwo!19343 r!17423)) (regOne!19342 (regOne!19343 r!17423))) (= (regTwo!19342 (regTwo!19343 r!17423)) (regTwo!19342 (regOne!19343 r!17423)))) (= lambda!113128 lambda!113116))))

(declare-fun bs!530767 () Bool)

(assert (= bs!530767 (and b!3027830 d!850451)))

(assert (=> bs!530767 (not (= lambda!113128 lambda!113104))))

(declare-fun bs!530768 () Bool)

(assert (= bs!530768 (and b!3027830 b!3027662)))

(assert (=> bs!530768 (not (= lambda!113128 lambda!113113))))

(assert (=> bs!530763 (not (= lambda!113128 lambda!113109))))

(assert (=> bs!530764 (not (= lambda!113128 lambda!113073))))

(assert (=> bs!530765 (= (and (= (regOne!19342 (regTwo!19343 r!17423)) (regOne!19342 r!17423)) (= (regTwo!19342 (regTwo!19343 r!17423)) (regTwo!19342 r!17423))) (= lambda!113128 lambda!113101))))

(declare-fun bs!530769 () Bool)

(assert (= bs!530769 (and b!3027830 b!3026699)))

(assert (=> bs!530769 (= (and (= (regOne!19342 (regTwo!19343 r!17423)) (regOne!19342 r!17423)) (= (regTwo!19342 (regTwo!19343 r!17423)) (regTwo!19342 r!17423))) (= lambda!113128 lambda!113095))))

(declare-fun bs!530770 () Bool)

(assert (= bs!530770 (and b!3027830 b!3027834)))

(assert (=> bs!530770 (not (= lambda!113128 lambda!113127))))

(assert (=> b!3027830 true))

(assert (=> b!3027830 true))

(declare-fun e!1899255 () Bool)

(declare-fun call!205975 () Bool)

(assert (=> b!3027830 (= e!1899255 call!205975)))

(declare-fun d!850771 () Bool)

(declare-fun c!500109 () Bool)

(assert (=> d!850771 (= c!500109 ((_ is EmptyExpr!9415) (regTwo!19343 r!17423)))))

(declare-fun e!1899259 () Bool)

(assert (=> d!850771 (= (matchRSpec!1552 (regTwo!19343 r!17423) s!11993) e!1899259)))

(declare-fun bm!205969 () Bool)

(declare-fun c!500108 () Bool)

(assert (=> bm!205969 (= call!205975 (Exists!1683 (ite c!500108 lambda!113127 lambda!113128)))))

(declare-fun b!3027831 () Bool)

(declare-fun res!1246007 () Bool)

(declare-fun e!1899261 () Bool)

(assert (=> b!3027831 (=> res!1246007 e!1899261)))

(declare-fun call!205974 () Bool)

(assert (=> b!3027831 (= res!1246007 call!205974)))

(assert (=> b!3027831 (= e!1899255 e!1899261)))

(declare-fun b!3027832 () Bool)

(declare-fun c!500107 () Bool)

(assert (=> b!3027832 (= c!500107 ((_ is ElementMatch!9415) (regTwo!19343 r!17423)))))

(declare-fun e!1899256 () Bool)

(declare-fun e!1899257 () Bool)

(assert (=> b!3027832 (= e!1899256 e!1899257)))

(declare-fun b!3027833 () Bool)

(declare-fun c!500110 () Bool)

(assert (=> b!3027833 (= c!500110 ((_ is Union!9415) (regTwo!19343 r!17423)))))

(declare-fun e!1899258 () Bool)

(assert (=> b!3027833 (= e!1899257 e!1899258)))

(assert (=> b!3027834 (= e!1899261 call!205975)))

(declare-fun b!3027835 () Bool)

(assert (=> b!3027835 (= e!1899259 e!1899256)))

(declare-fun res!1246005 () Bool)

(assert (=> b!3027835 (= res!1246005 (not ((_ is EmptyLang!9415) (regTwo!19343 r!17423))))))

(assert (=> b!3027835 (=> (not res!1246005) (not e!1899256))))

(declare-fun bm!205970 () Bool)

(assert (=> bm!205970 (= call!205974 (isEmpty!19456 s!11993))))

(declare-fun b!3027836 () Bool)

(assert (=> b!3027836 (= e!1899257 (= s!11993 (Cons!35156 (c!499613 (regTwo!19343 r!17423)) Nil!35156)))))

(declare-fun b!3027837 () Bool)

(declare-fun e!1899260 () Bool)

(assert (=> b!3027837 (= e!1899260 (matchRSpec!1552 (regTwo!19343 (regTwo!19343 r!17423)) s!11993))))

(declare-fun b!3027838 () Bool)

(assert (=> b!3027838 (= e!1899259 call!205974)))

(declare-fun b!3027839 () Bool)

(assert (=> b!3027839 (= e!1899258 e!1899255)))

(assert (=> b!3027839 (= c!500108 ((_ is Star!9415) (regTwo!19343 r!17423)))))

(declare-fun b!3027840 () Bool)

(assert (=> b!3027840 (= e!1899258 e!1899260)))

(declare-fun res!1246006 () Bool)

(assert (=> b!3027840 (= res!1246006 (matchRSpec!1552 (regOne!19343 (regTwo!19343 r!17423)) s!11993))))

(assert (=> b!3027840 (=> res!1246006 e!1899260)))

(assert (= (and d!850771 c!500109) b!3027838))

(assert (= (and d!850771 (not c!500109)) b!3027835))

(assert (= (and b!3027835 res!1246005) b!3027832))

(assert (= (and b!3027832 c!500107) b!3027836))

(assert (= (and b!3027832 (not c!500107)) b!3027833))

(assert (= (and b!3027833 c!500110) b!3027840))

(assert (= (and b!3027833 (not c!500110)) b!3027839))

(assert (= (and b!3027840 (not res!1246006)) b!3027837))

(assert (= (and b!3027839 c!500108) b!3027831))

(assert (= (and b!3027839 (not c!500108)) b!3027830))

(assert (= (and b!3027831 (not res!1246007)) b!3027834))

(assert (= (or b!3027834 b!3027830) bm!205969))

(assert (= (or b!3027838 b!3027831) bm!205970))

(declare-fun m!3366677 () Bool)

(assert (=> bm!205969 m!3366677))

(assert (=> bm!205970 m!3365391))

(declare-fun m!3366679 () Bool)

(assert (=> b!3027837 m!3366679))

(declare-fun m!3366681 () Bool)

(assert (=> b!3027840 m!3366681))

(assert (=> b!3026706 d!850771))

(assert (=> b!3026911 d!850473))

(declare-fun b!3027937 () Bool)

(declare-fun e!1899316 () Bool)

(declare-fun tp!959839 () Bool)

(assert (=> b!3027937 (= e!1899316 tp!959839)))

(declare-fun b!3027938 () Bool)

(declare-fun tp!959841 () Bool)

(declare-fun tp!959842 () Bool)

(assert (=> b!3027938 (= e!1899316 (and tp!959841 tp!959842))))

(declare-fun b!3027935 () Bool)

(assert (=> b!3027935 (= e!1899316 tp_is_empty!16393)))

(declare-fun b!3027936 () Bool)

(declare-fun tp!959838 () Bool)

(declare-fun tp!959840 () Bool)

(assert (=> b!3027936 (= e!1899316 (and tp!959838 tp!959840))))

(assert (=> b!3026991 (= tp!959828 e!1899316)))

(assert (= (and b!3026991 ((_ is ElementMatch!9415) (regOne!19342 (regOne!19342 r!17423)))) b!3027935))

(assert (= (and b!3026991 ((_ is Concat!14736) (regOne!19342 (regOne!19342 r!17423)))) b!3027936))

(assert (= (and b!3026991 ((_ is Star!9415) (regOne!19342 (regOne!19342 r!17423)))) b!3027937))

(assert (= (and b!3026991 ((_ is Union!9415) (regOne!19342 (regOne!19342 r!17423)))) b!3027938))

(declare-fun b!3027941 () Bool)

(declare-fun e!1899317 () Bool)

(declare-fun tp!959844 () Bool)

(assert (=> b!3027941 (= e!1899317 tp!959844)))

(declare-fun b!3027942 () Bool)

(declare-fun tp!959846 () Bool)

(declare-fun tp!959847 () Bool)

(assert (=> b!3027942 (= e!1899317 (and tp!959846 tp!959847))))

(declare-fun b!3027939 () Bool)

(assert (=> b!3027939 (= e!1899317 tp_is_empty!16393)))

(declare-fun b!3027940 () Bool)

(declare-fun tp!959843 () Bool)

(declare-fun tp!959845 () Bool)

(assert (=> b!3027940 (= e!1899317 (and tp!959843 tp!959845))))

(assert (=> b!3026991 (= tp!959830 e!1899317)))

(assert (= (and b!3026991 ((_ is ElementMatch!9415) (regTwo!19342 (regOne!19342 r!17423)))) b!3027939))

(assert (= (and b!3026991 ((_ is Concat!14736) (regTwo!19342 (regOne!19342 r!17423)))) b!3027940))

(assert (= (and b!3026991 ((_ is Star!9415) (regTwo!19342 (regOne!19342 r!17423)))) b!3027941))

(assert (= (and b!3026991 ((_ is Union!9415) (regTwo!19342 (regOne!19342 r!17423)))) b!3027942))

(declare-fun b!3027943 () Bool)

(declare-fun e!1899318 () Bool)

(declare-fun tp!959848 () Bool)

(assert (=> b!3027943 (= e!1899318 (and tp_is_empty!16393 tp!959848))))

(assert (=> b!3026967 (= tp!959802 e!1899318)))

(assert (= (and b!3026967 ((_ is Cons!35156) (t!234345 (t!234345 s!11993)))) b!3027943))

(declare-fun b!3027946 () Bool)

(declare-fun e!1899319 () Bool)

(declare-fun tp!959850 () Bool)

(assert (=> b!3027946 (= e!1899319 tp!959850)))

(declare-fun b!3027947 () Bool)

(declare-fun tp!959852 () Bool)

(declare-fun tp!959853 () Bool)

(assert (=> b!3027947 (= e!1899319 (and tp!959852 tp!959853))))

(declare-fun b!3027944 () Bool)

(assert (=> b!3027944 (= e!1899319 tp_is_empty!16393)))

(declare-fun b!3027945 () Bool)

(declare-fun tp!959849 () Bool)

(declare-fun tp!959851 () Bool)

(assert (=> b!3027945 (= e!1899319 (and tp!959849 tp!959851))))

(assert (=> b!3026995 (= tp!959833 e!1899319)))

(assert (= (and b!3026995 ((_ is ElementMatch!9415) (regOne!19342 (regTwo!19342 r!17423)))) b!3027944))

(assert (= (and b!3026995 ((_ is Concat!14736) (regOne!19342 (regTwo!19342 r!17423)))) b!3027945))

(assert (= (and b!3026995 ((_ is Star!9415) (regOne!19342 (regTwo!19342 r!17423)))) b!3027946))

(assert (= (and b!3026995 ((_ is Union!9415) (regOne!19342 (regTwo!19342 r!17423)))) b!3027947))

(declare-fun b!3027950 () Bool)

(declare-fun e!1899320 () Bool)

(declare-fun tp!959855 () Bool)

(assert (=> b!3027950 (= e!1899320 tp!959855)))

(declare-fun b!3027951 () Bool)

(declare-fun tp!959857 () Bool)

(declare-fun tp!959858 () Bool)

(assert (=> b!3027951 (= e!1899320 (and tp!959857 tp!959858))))

(declare-fun b!3027948 () Bool)

(assert (=> b!3027948 (= e!1899320 tp_is_empty!16393)))

(declare-fun b!3027949 () Bool)

(declare-fun tp!959854 () Bool)

(declare-fun tp!959856 () Bool)

(assert (=> b!3027949 (= e!1899320 (and tp!959854 tp!959856))))

(assert (=> b!3026995 (= tp!959835 e!1899320)))

(assert (= (and b!3026995 ((_ is ElementMatch!9415) (regTwo!19342 (regTwo!19342 r!17423)))) b!3027948))

(assert (= (and b!3026995 ((_ is Concat!14736) (regTwo!19342 (regTwo!19342 r!17423)))) b!3027949))

(assert (= (and b!3026995 ((_ is Star!9415) (regTwo!19342 (regTwo!19342 r!17423)))) b!3027950))

(assert (= (and b!3026995 ((_ is Union!9415) (regTwo!19342 (regTwo!19342 r!17423)))) b!3027951))

(declare-fun b!3027954 () Bool)

(declare-fun e!1899321 () Bool)

(declare-fun tp!959860 () Bool)

(assert (=> b!3027954 (= e!1899321 tp!959860)))

(declare-fun b!3027955 () Bool)

(declare-fun tp!959862 () Bool)

(declare-fun tp!959863 () Bool)

(assert (=> b!3027955 (= e!1899321 (and tp!959862 tp!959863))))

(declare-fun b!3027952 () Bool)

(assert (=> b!3027952 (= e!1899321 tp_is_empty!16393)))

(declare-fun b!3027953 () Bool)

(declare-fun tp!959859 () Bool)

(declare-fun tp!959861 () Bool)

(assert (=> b!3027953 (= e!1899321 (and tp!959859 tp!959861))))

(assert (=> b!3026984 (= tp!959819 e!1899321)))

(assert (= (and b!3026984 ((_ is ElementMatch!9415) (reg!9744 (regOne!19343 r!17423)))) b!3027952))

(assert (= (and b!3026984 ((_ is Concat!14736) (reg!9744 (regOne!19343 r!17423)))) b!3027953))

(assert (= (and b!3026984 ((_ is Star!9415) (reg!9744 (regOne!19343 r!17423)))) b!3027954))

(assert (= (and b!3026984 ((_ is Union!9415) (reg!9744 (regOne!19343 r!17423)))) b!3027955))

(declare-fun b!3027967 () Bool)

(declare-fun e!1899329 () Bool)

(declare-fun tp!959865 () Bool)

(assert (=> b!3027967 (= e!1899329 tp!959865)))

(declare-fun b!3027969 () Bool)

(declare-fun tp!959867 () Bool)

(declare-fun tp!959868 () Bool)

(assert (=> b!3027969 (= e!1899329 (and tp!959867 tp!959868))))

(declare-fun b!3027963 () Bool)

(assert (=> b!3027963 (= e!1899329 tp_is_empty!16393)))

(declare-fun b!3027965 () Bool)

(declare-fun tp!959864 () Bool)

(declare-fun tp!959866 () Bool)

(assert (=> b!3027965 (= e!1899329 (and tp!959864 tp!959866))))

(assert (=> b!3026989 (= tp!959826 e!1899329)))

(assert (= (and b!3026989 ((_ is ElementMatch!9415) (regOne!19343 (regTwo!19343 r!17423)))) b!3027963))

(assert (= (and b!3026989 ((_ is Concat!14736) (regOne!19343 (regTwo!19343 r!17423)))) b!3027965))

(assert (= (and b!3026989 ((_ is Star!9415) (regOne!19343 (regTwo!19343 r!17423)))) b!3027967))

(assert (= (and b!3026989 ((_ is Union!9415) (regOne!19343 (regTwo!19343 r!17423)))) b!3027969))

(declare-fun b!3027976 () Bool)

(declare-fun e!1899330 () Bool)

(declare-fun tp!959870 () Bool)

(assert (=> b!3027976 (= e!1899330 tp!959870)))

(declare-fun b!3027977 () Bool)

(declare-fun tp!959872 () Bool)

(declare-fun tp!959873 () Bool)

(assert (=> b!3027977 (= e!1899330 (and tp!959872 tp!959873))))

(declare-fun b!3027974 () Bool)

(assert (=> b!3027974 (= e!1899330 tp_is_empty!16393)))

(declare-fun b!3027975 () Bool)

(declare-fun tp!959869 () Bool)

(declare-fun tp!959871 () Bool)

(assert (=> b!3027975 (= e!1899330 (and tp!959869 tp!959871))))

(assert (=> b!3026989 (= tp!959827 e!1899330)))

(assert (= (and b!3026989 ((_ is ElementMatch!9415) (regTwo!19343 (regTwo!19343 r!17423)))) b!3027974))

(assert (= (and b!3026989 ((_ is Concat!14736) (regTwo!19343 (regTwo!19343 r!17423)))) b!3027975))

(assert (= (and b!3026989 ((_ is Star!9415) (regTwo!19343 (regTwo!19343 r!17423)))) b!3027976))

(assert (= (and b!3026989 ((_ is Union!9415) (regTwo!19343 (regTwo!19343 r!17423)))) b!3027977))

(declare-fun b!3027980 () Bool)

(declare-fun e!1899331 () Bool)

(declare-fun tp!959875 () Bool)

(assert (=> b!3027980 (= e!1899331 tp!959875)))

(declare-fun b!3027981 () Bool)

(declare-fun tp!959877 () Bool)

(declare-fun tp!959878 () Bool)

(assert (=> b!3027981 (= e!1899331 (and tp!959877 tp!959878))))

(declare-fun b!3027978 () Bool)

(assert (=> b!3027978 (= e!1899331 tp_is_empty!16393)))

(declare-fun b!3027979 () Bool)

(declare-fun tp!959874 () Bool)

(declare-fun tp!959876 () Bool)

(assert (=> b!3027979 (= e!1899331 (and tp!959874 tp!959876))))

(assert (=> b!3026988 (= tp!959824 e!1899331)))

(assert (= (and b!3026988 ((_ is ElementMatch!9415) (reg!9744 (regTwo!19343 r!17423)))) b!3027978))

(assert (= (and b!3026988 ((_ is Concat!14736) (reg!9744 (regTwo!19343 r!17423)))) b!3027979))

(assert (= (and b!3026988 ((_ is Star!9415) (reg!9744 (regTwo!19343 r!17423)))) b!3027980))

(assert (= (and b!3026988 ((_ is Union!9415) (reg!9744 (regTwo!19343 r!17423)))) b!3027981))

(declare-fun b!3027984 () Bool)

(declare-fun e!1899332 () Bool)

(declare-fun tp!959880 () Bool)

(assert (=> b!3027984 (= e!1899332 tp!959880)))

(declare-fun b!3027985 () Bool)

(declare-fun tp!959882 () Bool)

(declare-fun tp!959883 () Bool)

(assert (=> b!3027985 (= e!1899332 (and tp!959882 tp!959883))))

(declare-fun b!3027982 () Bool)

(assert (=> b!3027982 (= e!1899332 tp_is_empty!16393)))

(declare-fun b!3027983 () Bool)

(declare-fun tp!959879 () Bool)

(declare-fun tp!959881 () Bool)

(assert (=> b!3027983 (= e!1899332 (and tp!959879 tp!959881))))

(assert (=> b!3026993 (= tp!959831 e!1899332)))

(assert (= (and b!3026993 ((_ is ElementMatch!9415) (regOne!19343 (regOne!19342 r!17423)))) b!3027982))

(assert (= (and b!3026993 ((_ is Concat!14736) (regOne!19343 (regOne!19342 r!17423)))) b!3027983))

(assert (= (and b!3026993 ((_ is Star!9415) (regOne!19343 (regOne!19342 r!17423)))) b!3027984))

(assert (= (and b!3026993 ((_ is Union!9415) (regOne!19343 (regOne!19342 r!17423)))) b!3027985))

(declare-fun b!3027988 () Bool)

(declare-fun e!1899333 () Bool)

(declare-fun tp!959885 () Bool)

(assert (=> b!3027988 (= e!1899333 tp!959885)))

(declare-fun b!3027989 () Bool)

(declare-fun tp!959887 () Bool)

(declare-fun tp!959888 () Bool)

(assert (=> b!3027989 (= e!1899333 (and tp!959887 tp!959888))))

(declare-fun b!3027986 () Bool)

(assert (=> b!3027986 (= e!1899333 tp_is_empty!16393)))

(declare-fun b!3027987 () Bool)

(declare-fun tp!959884 () Bool)

(declare-fun tp!959886 () Bool)

(assert (=> b!3027987 (= e!1899333 (and tp!959884 tp!959886))))

(assert (=> b!3026993 (= tp!959832 e!1899333)))

(assert (= (and b!3026993 ((_ is ElementMatch!9415) (regTwo!19343 (regOne!19342 r!17423)))) b!3027986))

(assert (= (and b!3026993 ((_ is Concat!14736) (regTwo!19343 (regOne!19342 r!17423)))) b!3027987))

(assert (= (and b!3026993 ((_ is Star!9415) (regTwo!19343 (regOne!19342 r!17423)))) b!3027988))

(assert (= (and b!3026993 ((_ is Union!9415) (regTwo!19343 (regOne!19342 r!17423)))) b!3027989))

(declare-fun b!3027992 () Bool)

(declare-fun e!1899334 () Bool)

(declare-fun tp!959890 () Bool)

(assert (=> b!3027992 (= e!1899334 tp!959890)))

(declare-fun b!3027993 () Bool)

(declare-fun tp!959892 () Bool)

(declare-fun tp!959893 () Bool)

(assert (=> b!3027993 (= e!1899334 (and tp!959892 tp!959893))))

(declare-fun b!3027990 () Bool)

(assert (=> b!3027990 (= e!1899334 tp_is_empty!16393)))

(declare-fun b!3027991 () Bool)

(declare-fun tp!959889 () Bool)

(declare-fun tp!959891 () Bool)

(assert (=> b!3027991 (= e!1899334 (and tp!959889 tp!959891))))

(assert (=> b!3026979 (= tp!959813 e!1899334)))

(assert (= (and b!3026979 ((_ is ElementMatch!9415) (regOne!19342 (reg!9744 r!17423)))) b!3027990))

(assert (= (and b!3026979 ((_ is Concat!14736) (regOne!19342 (reg!9744 r!17423)))) b!3027991))

(assert (= (and b!3026979 ((_ is Star!9415) (regOne!19342 (reg!9744 r!17423)))) b!3027992))

(assert (= (and b!3026979 ((_ is Union!9415) (regOne!19342 (reg!9744 r!17423)))) b!3027993))

(declare-fun b!3027996 () Bool)

(declare-fun e!1899335 () Bool)

(declare-fun tp!959895 () Bool)

(assert (=> b!3027996 (= e!1899335 tp!959895)))

(declare-fun b!3027997 () Bool)

(declare-fun tp!959897 () Bool)

(declare-fun tp!959898 () Bool)

(assert (=> b!3027997 (= e!1899335 (and tp!959897 tp!959898))))

(declare-fun b!3027994 () Bool)

(assert (=> b!3027994 (= e!1899335 tp_is_empty!16393)))

(declare-fun b!3027995 () Bool)

(declare-fun tp!959894 () Bool)

(declare-fun tp!959896 () Bool)

(assert (=> b!3027995 (= e!1899335 (and tp!959894 tp!959896))))

(assert (=> b!3026979 (= tp!959815 e!1899335)))

(assert (= (and b!3026979 ((_ is ElementMatch!9415) (regTwo!19342 (reg!9744 r!17423)))) b!3027994))

(assert (= (and b!3026979 ((_ is Concat!14736) (regTwo!19342 (reg!9744 r!17423)))) b!3027995))

(assert (= (and b!3026979 ((_ is Star!9415) (regTwo!19342 (reg!9744 r!17423)))) b!3027996))

(assert (= (and b!3026979 ((_ is Union!9415) (regTwo!19342 (reg!9744 r!17423)))) b!3027997))

(declare-fun b!3028005 () Bool)

(declare-fun e!1899341 () Bool)

(declare-fun tp!959900 () Bool)

(assert (=> b!3028005 (= e!1899341 tp!959900)))

(declare-fun b!3028007 () Bool)

(declare-fun tp!959902 () Bool)

(declare-fun tp!959903 () Bool)

(assert (=> b!3028007 (= e!1899341 (and tp!959902 tp!959903))))

(declare-fun b!3028001 () Bool)

(assert (=> b!3028001 (= e!1899341 tp_is_empty!16393)))

(declare-fun b!3028003 () Bool)

(declare-fun tp!959899 () Bool)

(declare-fun tp!959901 () Bool)

(assert (=> b!3028003 (= e!1899341 (and tp!959899 tp!959901))))

(assert (=> b!3026992 (= tp!959829 e!1899341)))

(assert (= (and b!3026992 ((_ is ElementMatch!9415) (reg!9744 (regOne!19342 r!17423)))) b!3028001))

(assert (= (and b!3026992 ((_ is Concat!14736) (reg!9744 (regOne!19342 r!17423)))) b!3028003))

(assert (= (and b!3026992 ((_ is Star!9415) (reg!9744 (regOne!19342 r!17423)))) b!3028005))

(assert (= (and b!3026992 ((_ is Union!9415) (reg!9744 (regOne!19342 r!17423)))) b!3028007))

(declare-fun b!3028014 () Bool)

(declare-fun e!1899342 () Bool)

(declare-fun tp!959905 () Bool)

(assert (=> b!3028014 (= e!1899342 tp!959905)))

(declare-fun b!3028015 () Bool)

(declare-fun tp!959907 () Bool)

(declare-fun tp!959908 () Bool)

(assert (=> b!3028015 (= e!1899342 (and tp!959907 tp!959908))))

(declare-fun b!3028012 () Bool)

(assert (=> b!3028012 (= e!1899342 tp_is_empty!16393)))

(declare-fun b!3028013 () Bool)

(declare-fun tp!959904 () Bool)

(declare-fun tp!959906 () Bool)

(assert (=> b!3028013 (= e!1899342 (and tp!959904 tp!959906))))

(assert (=> b!3026997 (= tp!959836 e!1899342)))

(assert (= (and b!3026997 ((_ is ElementMatch!9415) (regOne!19343 (regTwo!19342 r!17423)))) b!3028012))

(assert (= (and b!3026997 ((_ is Concat!14736) (regOne!19343 (regTwo!19342 r!17423)))) b!3028013))

(assert (= (and b!3026997 ((_ is Star!9415) (regOne!19343 (regTwo!19342 r!17423)))) b!3028014))

(assert (= (and b!3026997 ((_ is Union!9415) (regOne!19343 (regTwo!19342 r!17423)))) b!3028015))

(declare-fun b!3028018 () Bool)

(declare-fun e!1899343 () Bool)

(declare-fun tp!959910 () Bool)

(assert (=> b!3028018 (= e!1899343 tp!959910)))

(declare-fun b!3028019 () Bool)

(declare-fun tp!959912 () Bool)

(declare-fun tp!959913 () Bool)

(assert (=> b!3028019 (= e!1899343 (and tp!959912 tp!959913))))

(declare-fun b!3028016 () Bool)

(assert (=> b!3028016 (= e!1899343 tp_is_empty!16393)))

(declare-fun b!3028017 () Bool)

(declare-fun tp!959909 () Bool)

(declare-fun tp!959911 () Bool)

(assert (=> b!3028017 (= e!1899343 (and tp!959909 tp!959911))))

(assert (=> b!3026997 (= tp!959837 e!1899343)))

(assert (= (and b!3026997 ((_ is ElementMatch!9415) (regTwo!19343 (regTwo!19342 r!17423)))) b!3028016))

(assert (= (and b!3026997 ((_ is Concat!14736) (regTwo!19343 (regTwo!19342 r!17423)))) b!3028017))

(assert (= (and b!3026997 ((_ is Star!9415) (regTwo!19343 (regTwo!19342 r!17423)))) b!3028018))

(assert (= (and b!3026997 ((_ is Union!9415) (regTwo!19343 (regTwo!19342 r!17423)))) b!3028019))

(declare-fun b!3028022 () Bool)

(declare-fun e!1899344 () Bool)

(declare-fun tp!959915 () Bool)

(assert (=> b!3028022 (= e!1899344 tp!959915)))

(declare-fun b!3028023 () Bool)

(declare-fun tp!959917 () Bool)

(declare-fun tp!959918 () Bool)

(assert (=> b!3028023 (= e!1899344 (and tp!959917 tp!959918))))

(declare-fun b!3028020 () Bool)

(assert (=> b!3028020 (= e!1899344 tp_is_empty!16393)))

(declare-fun b!3028021 () Bool)

(declare-fun tp!959914 () Bool)

(declare-fun tp!959916 () Bool)

(assert (=> b!3028021 (= e!1899344 (and tp!959914 tp!959916))))

(assert (=> b!3026983 (= tp!959818 e!1899344)))

(assert (= (and b!3026983 ((_ is ElementMatch!9415) (regOne!19342 (regOne!19343 r!17423)))) b!3028020))

(assert (= (and b!3026983 ((_ is Concat!14736) (regOne!19342 (regOne!19343 r!17423)))) b!3028021))

(assert (= (and b!3026983 ((_ is Star!9415) (regOne!19342 (regOne!19343 r!17423)))) b!3028022))

(assert (= (and b!3026983 ((_ is Union!9415) (regOne!19342 (regOne!19343 r!17423)))) b!3028023))

(declare-fun b!3028026 () Bool)

(declare-fun e!1899345 () Bool)

(declare-fun tp!959920 () Bool)

(assert (=> b!3028026 (= e!1899345 tp!959920)))

(declare-fun b!3028027 () Bool)

(declare-fun tp!959922 () Bool)

(declare-fun tp!959923 () Bool)

(assert (=> b!3028027 (= e!1899345 (and tp!959922 tp!959923))))

(declare-fun b!3028024 () Bool)

(assert (=> b!3028024 (= e!1899345 tp_is_empty!16393)))

(declare-fun b!3028025 () Bool)

(declare-fun tp!959919 () Bool)

(declare-fun tp!959921 () Bool)

(assert (=> b!3028025 (= e!1899345 (and tp!959919 tp!959921))))

(assert (=> b!3026983 (= tp!959820 e!1899345)))

(assert (= (and b!3026983 ((_ is ElementMatch!9415) (regTwo!19342 (regOne!19343 r!17423)))) b!3028024))

(assert (= (and b!3026983 ((_ is Concat!14736) (regTwo!19342 (regOne!19343 r!17423)))) b!3028025))

(assert (= (and b!3026983 ((_ is Star!9415) (regTwo!19342 (regOne!19343 r!17423)))) b!3028026))

(assert (= (and b!3026983 ((_ is Union!9415) (regTwo!19342 (regOne!19343 r!17423)))) b!3028027))

(declare-fun b!3028030 () Bool)

(declare-fun e!1899346 () Bool)

(declare-fun tp!959925 () Bool)

(assert (=> b!3028030 (= e!1899346 tp!959925)))

(declare-fun b!3028031 () Bool)

(declare-fun tp!959927 () Bool)

(declare-fun tp!959928 () Bool)

(assert (=> b!3028031 (= e!1899346 (and tp!959927 tp!959928))))

(declare-fun b!3028028 () Bool)

(assert (=> b!3028028 (= e!1899346 tp_is_empty!16393)))

(declare-fun b!3028029 () Bool)

(declare-fun tp!959924 () Bool)

(declare-fun tp!959926 () Bool)

(assert (=> b!3028029 (= e!1899346 (and tp!959924 tp!959926))))

(assert (=> b!3026996 (= tp!959834 e!1899346)))

(assert (= (and b!3026996 ((_ is ElementMatch!9415) (reg!9744 (regTwo!19342 r!17423)))) b!3028028))

(assert (= (and b!3026996 ((_ is Concat!14736) (reg!9744 (regTwo!19342 r!17423)))) b!3028029))

(assert (= (and b!3026996 ((_ is Star!9415) (reg!9744 (regTwo!19342 r!17423)))) b!3028030))

(assert (= (and b!3026996 ((_ is Union!9415) (reg!9744 (regTwo!19342 r!17423)))) b!3028031))

(declare-fun b!3028048 () Bool)

(declare-fun e!1899354 () Bool)

(declare-fun tp!959930 () Bool)

(assert (=> b!3028048 (= e!1899354 tp!959930)))

(declare-fun b!3028049 () Bool)

(declare-fun tp!959932 () Bool)

(declare-fun tp!959933 () Bool)

(assert (=> b!3028049 (= e!1899354 (and tp!959932 tp!959933))))

(declare-fun b!3028046 () Bool)

(assert (=> b!3028046 (= e!1899354 tp_is_empty!16393)))

(declare-fun b!3028047 () Bool)

(declare-fun tp!959929 () Bool)

(declare-fun tp!959931 () Bool)

(assert (=> b!3028047 (= e!1899354 (and tp!959929 tp!959931))))

(assert (=> b!3026987 (= tp!959823 e!1899354)))

(assert (= (and b!3026987 ((_ is ElementMatch!9415) (regOne!19342 (regTwo!19343 r!17423)))) b!3028046))

(assert (= (and b!3026987 ((_ is Concat!14736) (regOne!19342 (regTwo!19343 r!17423)))) b!3028047))

(assert (= (and b!3026987 ((_ is Star!9415) (regOne!19342 (regTwo!19343 r!17423)))) b!3028048))

(assert (= (and b!3026987 ((_ is Union!9415) (regOne!19342 (regTwo!19343 r!17423)))) b!3028049))

(declare-fun b!3028052 () Bool)

(declare-fun e!1899355 () Bool)

(declare-fun tp!959935 () Bool)

(assert (=> b!3028052 (= e!1899355 tp!959935)))

(declare-fun b!3028053 () Bool)

(declare-fun tp!959937 () Bool)

(declare-fun tp!959938 () Bool)

(assert (=> b!3028053 (= e!1899355 (and tp!959937 tp!959938))))

(declare-fun b!3028050 () Bool)

(assert (=> b!3028050 (= e!1899355 tp_is_empty!16393)))

(declare-fun b!3028051 () Bool)

(declare-fun tp!959934 () Bool)

(declare-fun tp!959936 () Bool)

(assert (=> b!3028051 (= e!1899355 (and tp!959934 tp!959936))))

(assert (=> b!3026987 (= tp!959825 e!1899355)))

(assert (= (and b!3026987 ((_ is ElementMatch!9415) (regTwo!19342 (regTwo!19343 r!17423)))) b!3028050))

(assert (= (and b!3026987 ((_ is Concat!14736) (regTwo!19342 (regTwo!19343 r!17423)))) b!3028051))

(assert (= (and b!3026987 ((_ is Star!9415) (regTwo!19342 (regTwo!19343 r!17423)))) b!3028052))

(assert (= (and b!3026987 ((_ is Union!9415) (regTwo!19342 (regTwo!19343 r!17423)))) b!3028053))

(declare-fun b!3028056 () Bool)

(declare-fun e!1899356 () Bool)

(declare-fun tp!959940 () Bool)

(assert (=> b!3028056 (= e!1899356 tp!959940)))

(declare-fun b!3028057 () Bool)

(declare-fun tp!959942 () Bool)

(declare-fun tp!959943 () Bool)

(assert (=> b!3028057 (= e!1899356 (and tp!959942 tp!959943))))

(declare-fun b!3028054 () Bool)

(assert (=> b!3028054 (= e!1899356 tp_is_empty!16393)))

(declare-fun b!3028055 () Bool)

(declare-fun tp!959939 () Bool)

(declare-fun tp!959941 () Bool)

(assert (=> b!3028055 (= e!1899356 (and tp!959939 tp!959941))))

(assert (=> b!3026981 (= tp!959816 e!1899356)))

(assert (= (and b!3026981 ((_ is ElementMatch!9415) (regOne!19343 (reg!9744 r!17423)))) b!3028054))

(assert (= (and b!3026981 ((_ is Concat!14736) (regOne!19343 (reg!9744 r!17423)))) b!3028055))

(assert (= (and b!3026981 ((_ is Star!9415) (regOne!19343 (reg!9744 r!17423)))) b!3028056))

(assert (= (and b!3026981 ((_ is Union!9415) (regOne!19343 (reg!9744 r!17423)))) b!3028057))

(declare-fun b!3028060 () Bool)

(declare-fun e!1899357 () Bool)

(declare-fun tp!959945 () Bool)

(assert (=> b!3028060 (= e!1899357 tp!959945)))

(declare-fun b!3028061 () Bool)

(declare-fun tp!959947 () Bool)

(declare-fun tp!959948 () Bool)

(assert (=> b!3028061 (= e!1899357 (and tp!959947 tp!959948))))

(declare-fun b!3028058 () Bool)

(assert (=> b!3028058 (= e!1899357 tp_is_empty!16393)))

(declare-fun b!3028059 () Bool)

(declare-fun tp!959944 () Bool)

(declare-fun tp!959946 () Bool)

(assert (=> b!3028059 (= e!1899357 (and tp!959944 tp!959946))))

(assert (=> b!3026981 (= tp!959817 e!1899357)))

(assert (= (and b!3026981 ((_ is ElementMatch!9415) (regTwo!19343 (reg!9744 r!17423)))) b!3028058))

(assert (= (and b!3026981 ((_ is Concat!14736) (regTwo!19343 (reg!9744 r!17423)))) b!3028059))

(assert (= (and b!3026981 ((_ is Star!9415) (regTwo!19343 (reg!9744 r!17423)))) b!3028060))

(assert (= (and b!3026981 ((_ is Union!9415) (regTwo!19343 (reg!9744 r!17423)))) b!3028061))

(declare-fun b!3028064 () Bool)

(declare-fun e!1899358 () Bool)

(declare-fun tp!959950 () Bool)

(assert (=> b!3028064 (= e!1899358 tp!959950)))

(declare-fun b!3028065 () Bool)

(declare-fun tp!959952 () Bool)

(declare-fun tp!959953 () Bool)

(assert (=> b!3028065 (= e!1899358 (and tp!959952 tp!959953))))

(declare-fun b!3028062 () Bool)

(assert (=> b!3028062 (= e!1899358 tp_is_empty!16393)))

(declare-fun b!3028063 () Bool)

(declare-fun tp!959949 () Bool)

(declare-fun tp!959951 () Bool)

(assert (=> b!3028063 (= e!1899358 (and tp!959949 tp!959951))))

(assert (=> b!3026980 (= tp!959814 e!1899358)))

(assert (= (and b!3026980 ((_ is ElementMatch!9415) (reg!9744 (reg!9744 r!17423)))) b!3028062))

(assert (= (and b!3026980 ((_ is Concat!14736) (reg!9744 (reg!9744 r!17423)))) b!3028063))

(assert (= (and b!3026980 ((_ is Star!9415) (reg!9744 (reg!9744 r!17423)))) b!3028064))

(assert (= (and b!3026980 ((_ is Union!9415) (reg!9744 (reg!9744 r!17423)))) b!3028065))

(declare-fun b!3028068 () Bool)

(declare-fun e!1899359 () Bool)

(declare-fun tp!959955 () Bool)

(assert (=> b!3028068 (= e!1899359 tp!959955)))

(declare-fun b!3028069 () Bool)

(declare-fun tp!959957 () Bool)

(declare-fun tp!959958 () Bool)

(assert (=> b!3028069 (= e!1899359 (and tp!959957 tp!959958))))

(declare-fun b!3028066 () Bool)

(assert (=> b!3028066 (= e!1899359 tp_is_empty!16393)))

(declare-fun b!3028067 () Bool)

(declare-fun tp!959954 () Bool)

(declare-fun tp!959956 () Bool)

(assert (=> b!3028067 (= e!1899359 (and tp!959954 tp!959956))))

(assert (=> b!3026985 (= tp!959821 e!1899359)))

(assert (= (and b!3026985 ((_ is ElementMatch!9415) (regOne!19343 (regOne!19343 r!17423)))) b!3028066))

(assert (= (and b!3026985 ((_ is Concat!14736) (regOne!19343 (regOne!19343 r!17423)))) b!3028067))

(assert (= (and b!3026985 ((_ is Star!9415) (regOne!19343 (regOne!19343 r!17423)))) b!3028068))

(assert (= (and b!3026985 ((_ is Union!9415) (regOne!19343 (regOne!19343 r!17423)))) b!3028069))

(declare-fun b!3028072 () Bool)

(declare-fun e!1899360 () Bool)

(declare-fun tp!959960 () Bool)

(assert (=> b!3028072 (= e!1899360 tp!959960)))

(declare-fun b!3028073 () Bool)

(declare-fun tp!959962 () Bool)

(declare-fun tp!959963 () Bool)

(assert (=> b!3028073 (= e!1899360 (and tp!959962 tp!959963))))

(declare-fun b!3028070 () Bool)

(assert (=> b!3028070 (= e!1899360 tp_is_empty!16393)))

(declare-fun b!3028071 () Bool)

(declare-fun tp!959959 () Bool)

(declare-fun tp!959961 () Bool)

(assert (=> b!3028071 (= e!1899360 (and tp!959959 tp!959961))))

(assert (=> b!3026985 (= tp!959822 e!1899360)))

(assert (= (and b!3026985 ((_ is ElementMatch!9415) (regTwo!19343 (regOne!19343 r!17423)))) b!3028070))

(assert (= (and b!3026985 ((_ is Concat!14736) (regTwo!19343 (regOne!19343 r!17423)))) b!3028071))

(assert (= (and b!3026985 ((_ is Star!9415) (regTwo!19343 (regOne!19343 r!17423)))) b!3028072))

(assert (= (and b!3026985 ((_ is Union!9415) (regTwo!19343 (regOne!19343 r!17423)))) b!3028073))

(check-sat (not bm!205853) (not b!3027290) (not b!3027993) (not bm!205848) (not b!3028027) (not bm!205925) (not b!3027722) (not b!3027786) (not b!3027657) (not bm!205792) (not b!3027484) (not b!3027989) (not b!3028048) (not b!3027988) (not b!3028051) (not d!850597) (not bm!205908) (not b!3028056) (not bm!205930) (not d!850615) (not bm!205913) (not d!850509) (not b!3027363) (not b!3028072) (not d!850767) (not b!3027940) (not b!3028005) (not b!3027352) (not b!3027621) (not b!3027414) (not b!3027288) (not b!3027147) (not d!850589) (not b!3027785) (not b!3027613) (not bm!205837) (not b!3027265) (not b!3027371) (not d!850523) (not bm!205960) (not b!3027840) (not b!3027544) (not bm!205841) (not bm!205968) (not b!3027143) (not b!3027141) (not b!3027543) (not b!3028069) (not bm!205885) (not b!3028068) (not d!850471) (not bm!205867) (not d!850587) (not bm!205952) (not b!3027163) (not b!3027292) (not b!3027216) (not b!3027346) (not b!3027665) (not b!3027306) (not bm!205878) (not bm!205951) (not bm!205889) (not b!3028064) (not b!3027937) (not d!850655) (not b!3027448) (not d!850577) (not b!3027481) (not bm!205868) (not b!3027261) (not d!850531) (not d!850665) (not b!3027213) (not b!3027610) (not b!3027268) (not b!3027837) (not b!3027954) (not bm!205891) (not bm!205864) (not d!850537) (not bm!205870) (not b!3027732) (not b!3027108) (not bm!205943) (not d!850499) (not d!850477) (not b!3027985) (not bm!205938) (not b!3028021) (not d!850535) (not d!850613) (not bm!205912) (not b!3028065) (not b!3027975) (not d!850611) (not b!3028057) (not b!3027609) (not d!850559) (not bm!205794) (not b!3027140) (not b!3028029) (not b!3027353) (not d!850593) (not d!850705) (not d!850521) (not bm!205834) (not bm!205832) (not b!3027984) (not bm!205949) (not d!850469) (not d!850751) (not b!3027464) (not b!3027987) (not bm!205795) (not b!3027981) (not b!3027946) (not bm!205947) (not b!3027451) (not b!3027943) (not bm!205937) (not b!3027214) (not d!850481) (not b!3027286) (not b!3027684) (not b!3027686) (not b!3028067) (not b!3027244) (not b!3027369) (not b!3027950) (not b!3027983) (not b!3027272) (not b!3028059) (not b!3027938) (not b!3027238) (not bm!205843) (not b!3028071) (not b!3027004) (not bm!205806) (not d!850703) (not d!850603) (not b!3027540) (not bm!205970) (not b!3028023) (not b!3028017) (not b!3027248) (not b!3027266) (not b!3027607) (not b!3028022) (not b!3028052) (not b!3027031) (not d!850549) (not d!850639) (not b!3027953) (not bm!205961) (not b!3027945) (not bm!205828) (not b!3027488) (not d!850539) (not b!3027766) (not d!850541) (not d!850527) (not b!3027517) (not b!3027058) (not b!3027030) (not b!3027212) (not b!3027145) (not b!3027324) (not b!3027695) (not b!3027220) (not b!3028019) (not b!3027996) (not bm!205873) (not b!3028014) (not bm!205877) (not b!3027969) (not b!3028030) (not bm!205816) (not d!850545) (not bm!205967) (not b!3027635) (not bm!205948) (not bm!205876) (not b!3027619) (not b!3027991) (not d!850633) (not b!3027949) (not b!3027241) (not b!3027588) (not b!3028025) (not b!3027262) (not bm!205934) (not bm!205969) (not b!3027585) (not b!3027941) (not bm!205886) (not b!3027581) (not b!3027997) (not b!3027611) (not b!3028055) (not d!850685) (not d!850675) (not b!3027482) (not b!3027151) (not b!3028073) (not b!3027463) (not d!850733) (not b!3027020) (not b!3027936) (not b!3028015) (not d!850519) (not bm!205910) (not b!3027542) (not b!3027032) (not b!3027285) (not d!850551) (not b!3027237) (not b!3027009) (not b!3027318) (not bm!205883) (not bm!205928) (not b!3027980) (not b!3027210) tp_is_empty!16393 (not bm!205880) (not b!3027028) (not b!3027169) (not bm!205946) (not bm!205831) (not b!3027967) (not b!3027947) (not b!3028003) (not bm!205927) (not bm!205858) (not b!3027829) (not b!3027228) (not b!3028007) (not b!3027629) (not bm!205852) (not b!3027447) (not bm!205819) (not bm!205855) (not b!3027364) (not bm!205924) (not b!3027356) (not b!3027445) (not b!3027008) (not d!850621) (not b!3027144) (not d!850561) (not b!3027264) (not b!3027783) (not bm!205875) (not b!3027011) (not b!3027582) (not bm!205914) (not b!3027027) (not d!850581) (not b!3027789) (not bm!205866) (not d!850463) (not b!3027623) (not b!3028063) (not b!3027377) (not b!3028018) (not b!3027977) (not b!3028053) (not bm!205815) (not b!3028060) (not b!3028031) (not b!3027942) (not b!3027668) (not d!850583) (not bm!205827) (not b!3027976) (not bm!205954) (not b!3028049) (not b!3027787) (not b!3027995) (not b!3027114) (not b!3027979) (not bm!205820) (not d!850565) (not b!3027586) (not bm!205899) (not bm!205814) (not b!3027449) (not b!3027007) (not b!3027357) (not bm!205817) (not b!3027209) (not bm!205825) (not b!3027965) (not b!3028047) (not bm!205956) (not b!3027682) (not bm!205829) (not b!3027383) (not b!3027532) (not bm!205923) (not bm!205932) (not b!3027546) (not bm!205920) (not b!3028026) (not bm!205959) (not d!850701) (not bm!205881) (not b!3027368) (not b!3027366) (not d!850749) (not bm!205935) (not d!850759) (not b!3027034) (not b!3027240) (not b!3027955) (not b!3027782) (not b!3027432) (not bm!205933) (not b!3027992) (not b!3027486) (not bm!205957) (not d!850479) (not bm!205857) (not d!850617) (not d!850765) (not bm!205823) (not bm!205808) (not b!3028013) (not b!3027444) (not bm!205850) (not b!3027289) (not b!3027584) (not b!3027606) (not b!3027738) (not d!850647) (not b!3027713) (not b!3027242) (not b!3027485) (not d!850459) (not b!3027951) (not b!3028061) (not d!850543) (not d!850557) (not bm!205871) (not b!3027005) (not bm!205796) (not b!3027229) (not bm!205822) (not d!850497) (not b!3027539) (not bm!205944) (not d!850501) (not bm!205888) (not b!3027775) (not b!3027120))
(check-sat)
