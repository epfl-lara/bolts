; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664098 () Bool)

(assert start!664098)

(declare-fun b!6886515 () Bool)

(assert (=> b!6886515 true))

(assert (=> b!6886515 true))

(assert (=> b!6886515 true))

(declare-fun lambda!390092 () Int)

(declare-fun lambda!390091 () Int)

(assert (=> b!6886515 (not (= lambda!390092 lambda!390091))))

(assert (=> b!6886515 true))

(assert (=> b!6886515 true))

(assert (=> b!6886515 true))

(declare-fun bs!1838631 () Bool)

(declare-fun b!6886527 () Bool)

(assert (= bs!1838631 (and b!6886527 b!6886515)))

(declare-datatypes ((C!33856 0))(
  ( (C!33857 (val!26630 Int)) )
))
(declare-datatypes ((Regex!16793 0))(
  ( (ElementMatch!16793 (c!1280625 C!33856)) (Concat!25638 (regOne!34098 Regex!16793) (regTwo!34098 Regex!16793)) (EmptyExpr!16793) (Star!16793 (reg!17122 Regex!16793)) (EmptyLang!16793) (Union!16793 (regOne!34099 Regex!16793) (regTwo!34099 Regex!16793)) )
))
(declare-fun r1!6342 () Regex!16793)

(declare-datatypes ((List!66550 0))(
  ( (Nil!66426) (Cons!66426 (h!72874 C!33856) (t!380293 List!66550)) )
))
(declare-datatypes ((tuple2!67332 0))(
  ( (tuple2!67333 (_1!36969 List!66550) (_2!36969 List!66550)) )
))
(declare-fun lt!2461410 () tuple2!67332)

(declare-fun r3!135 () Regex!16793)

(declare-fun s!14361 () List!66550)

(declare-fun r2!6280 () Regex!16793)

(declare-fun lambda!390093 () Int)

(declare-fun lt!2461413 () Regex!16793)

(assert (=> bs!1838631 (= (and (= (_1!36969 lt!2461410) s!14361) (= r1!6342 lt!2461413) (= r2!6280 r3!135)) (= lambda!390093 lambda!390091))))

(assert (=> bs!1838631 (not (= lambda!390093 lambda!390092))))

(assert (=> b!6886527 true))

(assert (=> b!6886527 true))

(assert (=> b!6886527 true))

(declare-fun lambda!390094 () Int)

(assert (=> bs!1838631 (not (= lambda!390094 lambda!390091))))

(assert (=> bs!1838631 (= (and (= (_1!36969 lt!2461410) s!14361) (= r1!6342 lt!2461413) (= r2!6280 r3!135)) (= lambda!390094 lambda!390092))))

(assert (=> b!6886527 (not (= lambda!390094 lambda!390093))))

(assert (=> b!6886527 true))

(assert (=> b!6886527 true))

(assert (=> b!6886527 true))

(declare-fun bs!1838632 () Bool)

(declare-fun b!6886518 () Bool)

(assert (= bs!1838632 (and b!6886518 b!6886515)))

(declare-fun lt!2461397 () List!66550)

(declare-fun lambda!390095 () Int)

(assert (=> bs!1838632 (= (and (= lt!2461397 s!14361) (= r2!6280 lt!2461413)) (= lambda!390095 lambda!390091))))

(assert (=> bs!1838632 (not (= lambda!390095 lambda!390092))))

(declare-fun bs!1838633 () Bool)

(assert (= bs!1838633 (and b!6886518 b!6886527)))

(assert (=> bs!1838633 (= (and (= lt!2461397 (_1!36969 lt!2461410)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390095 lambda!390093))))

(assert (=> bs!1838633 (not (= lambda!390095 lambda!390094))))

(assert (=> b!6886518 true))

(assert (=> b!6886518 true))

(assert (=> b!6886518 true))

(declare-fun lambda!390096 () Int)

(assert (=> bs!1838633 (= (and (= lt!2461397 (_1!36969 lt!2461410)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390096 lambda!390094))))

(assert (=> bs!1838633 (not (= lambda!390096 lambda!390093))))

(assert (=> bs!1838632 (= (and (= lt!2461397 s!14361) (= r2!6280 lt!2461413)) (= lambda!390096 lambda!390092))))

(assert (=> b!6886518 (not (= lambda!390096 lambda!390095))))

(assert (=> bs!1838632 (not (= lambda!390096 lambda!390091))))

(assert (=> b!6886518 true))

(assert (=> b!6886518 true))

(assert (=> b!6886518 true))

(declare-fun b!6886511 () Bool)

(declare-fun e!4149131 () Bool)

(declare-fun tp!1894632 () Bool)

(declare-fun tp!1894641 () Bool)

(assert (=> b!6886511 (= e!4149131 (and tp!1894632 tp!1894641))))

(declare-fun b!6886512 () Bool)

(declare-fun e!4149134 () Bool)

(declare-fun e!4149125 () Bool)

(assert (=> b!6886512 (= e!4149134 (not e!4149125))))

(declare-fun res!2807423 () Bool)

(assert (=> b!6886512 (=> res!2807423 e!4149125)))

(declare-fun lt!2461406 () Bool)

(assert (=> b!6886512 (= res!2807423 (not lt!2461406))))

(declare-fun lt!2461404 () Regex!16793)

(declare-fun matchR!8938 (Regex!16793 List!66550) Bool)

(declare-fun matchRSpec!3856 (Regex!16793 List!66550) Bool)

(assert (=> b!6886512 (= (matchR!8938 lt!2461404 s!14361) (matchRSpec!3856 lt!2461404 s!14361))))

(declare-datatypes ((Unit!160306 0))(
  ( (Unit!160307) )
))
(declare-fun lt!2461409 () Unit!160306)

(declare-fun mainMatchTheorem!3856 (Regex!16793 List!66550) Unit!160306)

(assert (=> b!6886512 (= lt!2461409 (mainMatchTheorem!3856 lt!2461404 s!14361))))

(declare-fun lt!2461418 () Regex!16793)

(assert (=> b!6886512 (= lt!2461406 (matchRSpec!3856 lt!2461418 s!14361))))

(assert (=> b!6886512 (= lt!2461406 (matchR!8938 lt!2461418 s!14361))))

(declare-fun lt!2461396 () Unit!160306)

(assert (=> b!6886512 (= lt!2461396 (mainMatchTheorem!3856 lt!2461418 s!14361))))

(declare-fun lt!2461405 () Regex!16793)

(assert (=> b!6886512 (= lt!2461404 (Concat!25638 r1!6342 lt!2461405))))

(assert (=> b!6886512 (= lt!2461405 (Concat!25638 r2!6280 r3!135))))

(assert (=> b!6886512 (= lt!2461418 (Concat!25638 lt!2461413 r3!135))))

(assert (=> b!6886512 (= lt!2461413 (Concat!25638 r1!6342 r2!6280))))

(declare-fun b!6886513 () Bool)

(declare-fun e!4149126 () Bool)

(declare-fun tp!1894647 () Bool)

(declare-fun tp!1894645 () Bool)

(assert (=> b!6886513 (= e!4149126 (and tp!1894647 tp!1894645))))

(declare-fun b!6886514 () Bool)

(declare-fun tp!1894636 () Bool)

(declare-fun tp!1894639 () Bool)

(assert (=> b!6886514 (= e!4149131 (and tp!1894636 tp!1894639))))

(declare-fun e!4149128 () Bool)

(assert (=> b!6886515 (= e!4149125 e!4149128)))

(declare-fun res!2807419 () Bool)

(assert (=> b!6886515 (=> res!2807419 e!4149128)))

(declare-fun lt!2461412 () Bool)

(assert (=> b!6886515 (= res!2807419 (not lt!2461412))))

(assert (=> b!6886515 (= lt!2461412 (matchRSpec!3856 lt!2461413 (_1!36969 lt!2461410)))))

(assert (=> b!6886515 (= lt!2461412 (matchR!8938 lt!2461413 (_1!36969 lt!2461410)))))

(declare-fun lt!2461400 () Unit!160306)

(assert (=> b!6886515 (= lt!2461400 (mainMatchTheorem!3856 lt!2461413 (_1!36969 lt!2461410)))))

(declare-datatypes ((Option!16578 0))(
  ( (None!16577) (Some!16577 (v!52849 tuple2!67332)) )
))
(declare-fun lt!2461417 () Option!16578)

(declare-fun get!23152 (Option!16578) tuple2!67332)

(assert (=> b!6886515 (= lt!2461410 (get!23152 lt!2461417))))

(declare-fun Exists!3805 (Int) Bool)

(assert (=> b!6886515 (= (Exists!3805 lambda!390091) (Exists!3805 lambda!390092))))

(declare-fun lt!2461416 () Unit!160306)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2284 (Regex!16793 Regex!16793 List!66550) Unit!160306)

(assert (=> b!6886515 (= lt!2461416 (lemmaExistCutMatchRandMatchRSpecEquivalent!2284 lt!2461413 r3!135 s!14361))))

(declare-fun isDefined!13281 (Option!16578) Bool)

(assert (=> b!6886515 (= (isDefined!13281 lt!2461417) (Exists!3805 lambda!390091))))

(declare-fun findConcatSeparation!2992 (Regex!16793 Regex!16793 List!66550 List!66550 List!66550) Option!16578)

(assert (=> b!6886515 (= lt!2461417 (findConcatSeparation!2992 lt!2461413 r3!135 Nil!66426 s!14361 s!14361))))

(declare-fun lt!2461415 () Unit!160306)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2756 (Regex!16793 Regex!16793 List!66550) Unit!160306)

(assert (=> b!6886515 (= lt!2461415 (lemmaFindConcatSeparationEquivalentToExists!2756 lt!2461413 r3!135 s!14361))))

(declare-fun b!6886517 () Bool)

(declare-fun tp!1894633 () Bool)

(declare-fun tp!1894635 () Bool)

(assert (=> b!6886517 (= e!4149126 (and tp!1894633 tp!1894635))))

(declare-fun e!4149127 () Bool)

(declare-fun e!4149129 () Bool)

(assert (=> b!6886518 (= e!4149127 e!4149129)))

(declare-fun res!2807421 () Bool)

(assert (=> b!6886518 (=> res!2807421 e!4149129)))

(declare-fun lt!2461407 () tuple2!67332)

(declare-fun isPrefix!5796 (List!66550 List!66550) Bool)

(assert (=> b!6886518 (= res!2807421 (not (isPrefix!5796 Nil!66426 (_2!36969 lt!2461407))))))

(assert (=> b!6886518 (= (Exists!3805 lambda!390095) (Exists!3805 lambda!390096))))

(declare-fun lt!2461402 () Unit!160306)

(assert (=> b!6886518 (= lt!2461402 (lemmaExistCutMatchRandMatchRSpecEquivalent!2284 r2!6280 r3!135 lt!2461397))))

(assert (=> b!6886518 (= (isDefined!13281 (findConcatSeparation!2992 r2!6280 r3!135 Nil!66426 lt!2461397 lt!2461397)) (Exists!3805 lambda!390095))))

(declare-fun lt!2461408 () Unit!160306)

(assert (=> b!6886518 (= lt!2461408 (lemmaFindConcatSeparationEquivalentToExists!2756 r2!6280 r3!135 lt!2461397))))

(assert (=> b!6886518 (= (matchR!8938 lt!2461405 lt!2461397) (matchRSpec!3856 lt!2461405 lt!2461397))))

(declare-fun lt!2461414 () Unit!160306)

(assert (=> b!6886518 (= lt!2461414 (mainMatchTheorem!3856 lt!2461405 lt!2461397))))

(declare-fun ++!14872 (List!66550 List!66550) List!66550)

(assert (=> b!6886518 (= lt!2461397 (++!14872 (_2!36969 lt!2461407) (_2!36969 lt!2461410)))))

(declare-fun b!6886519 () Bool)

(declare-fun e!4149133 () Bool)

(assert (=> b!6886519 (= e!4149133 e!4149127)))

(declare-fun res!2807424 () Bool)

(assert (=> b!6886519 (=> res!2807424 e!4149127)))

(assert (=> b!6886519 (= res!2807424 (not (= (++!14872 (++!14872 (_1!36969 lt!2461407) (_2!36969 lt!2461407)) (_2!36969 lt!2461410)) s!14361)))))

(assert (=> b!6886519 (matchRSpec!3856 r2!6280 (_2!36969 lt!2461407))))

(declare-fun lt!2461399 () Unit!160306)

(assert (=> b!6886519 (= lt!2461399 (mainMatchTheorem!3856 r2!6280 (_2!36969 lt!2461407)))))

(assert (=> b!6886519 (matchRSpec!3856 r1!6342 (_1!36969 lt!2461407))))

(declare-fun lt!2461403 () Unit!160306)

(assert (=> b!6886519 (= lt!2461403 (mainMatchTheorem!3856 r1!6342 (_1!36969 lt!2461407)))))

(declare-fun b!6886520 () Bool)

(declare-fun e!4149130 () Bool)

(declare-fun tp_is_empty!42811 () Bool)

(assert (=> b!6886520 (= e!4149130 tp_is_empty!42811)))

(declare-fun b!6886521 () Bool)

(assert (=> b!6886521 (= e!4149129 true)))

(declare-fun lt!2461401 () List!66550)

(assert (=> b!6886521 (= lt!2461401 (++!14872 Nil!66426 lt!2461397))))

(declare-fun b!6886522 () Bool)

(declare-fun res!2807428 () Bool)

(assert (=> b!6886522 (=> (not res!2807428) (not e!4149134))))

(declare-fun validRegex!8501 (Regex!16793) Bool)

(assert (=> b!6886522 (= res!2807428 (validRegex!8501 r2!6280))))

(declare-fun b!6886523 () Bool)

(declare-fun tp!1894646 () Bool)

(assert (=> b!6886523 (= e!4149130 tp!1894646)))

(declare-fun b!6886524 () Bool)

(declare-fun tp!1894637 () Bool)

(assert (=> b!6886524 (= e!4149131 tp!1894637)))

(declare-fun b!6886525 () Bool)

(assert (=> b!6886525 (= e!4149131 tp_is_empty!42811)))

(declare-fun b!6886526 () Bool)

(declare-fun tp!1894640 () Bool)

(declare-fun tp!1894644 () Bool)

(assert (=> b!6886526 (= e!4149130 (and tp!1894640 tp!1894644))))

(assert (=> b!6886527 (= e!4149128 e!4149133)))

(declare-fun res!2807426 () Bool)

(assert (=> b!6886527 (=> res!2807426 e!4149133)))

(assert (=> b!6886527 (= res!2807426 (not (matchR!8938 r1!6342 (_1!36969 lt!2461407))))))

(declare-fun lt!2461398 () Option!16578)

(assert (=> b!6886527 (= lt!2461407 (get!23152 lt!2461398))))

(assert (=> b!6886527 (= (Exists!3805 lambda!390093) (Exists!3805 lambda!390094))))

(declare-fun lt!2461411 () Unit!160306)

(assert (=> b!6886527 (= lt!2461411 (lemmaExistCutMatchRandMatchRSpecEquivalent!2284 r1!6342 r2!6280 (_1!36969 lt!2461410)))))

(assert (=> b!6886527 (= (isDefined!13281 lt!2461398) (Exists!3805 lambda!390093))))

(assert (=> b!6886527 (= lt!2461398 (findConcatSeparation!2992 r1!6342 r2!6280 Nil!66426 (_1!36969 lt!2461410) (_1!36969 lt!2461410)))))

(declare-fun lt!2461419 () Unit!160306)

(assert (=> b!6886527 (= lt!2461419 (lemmaFindConcatSeparationEquivalentToExists!2756 r1!6342 r2!6280 (_1!36969 lt!2461410)))))

(declare-fun res!2807422 () Bool)

(assert (=> start!664098 (=> (not res!2807422) (not e!4149134))))

(assert (=> start!664098 (= res!2807422 (validRegex!8501 r1!6342))))

(assert (=> start!664098 e!4149134))

(assert (=> start!664098 e!4149130))

(assert (=> start!664098 e!4149126))

(assert (=> start!664098 e!4149131))

(declare-fun e!4149132 () Bool)

(assert (=> start!664098 e!4149132))

(declare-fun b!6886516 () Bool)

(declare-fun tp!1894642 () Bool)

(assert (=> b!6886516 (= e!4149132 (and tp_is_empty!42811 tp!1894642))))

(declare-fun b!6886528 () Bool)

(declare-fun res!2807425 () Bool)

(assert (=> b!6886528 (=> (not res!2807425) (not e!4149134))))

(assert (=> b!6886528 (= res!2807425 (validRegex!8501 r3!135))))

(declare-fun b!6886529 () Bool)

(declare-fun res!2807420 () Bool)

(assert (=> b!6886529 (=> res!2807420 e!4149128)))

(assert (=> b!6886529 (= res!2807420 (not (matchR!8938 r3!135 (_2!36969 lt!2461410))))))

(declare-fun b!6886530 () Bool)

(declare-fun tp!1894643 () Bool)

(assert (=> b!6886530 (= e!4149126 tp!1894643)))

(declare-fun b!6886531 () Bool)

(assert (=> b!6886531 (= e!4149126 tp_is_empty!42811)))

(declare-fun b!6886532 () Bool)

(declare-fun res!2807427 () Bool)

(assert (=> b!6886532 (=> res!2807427 e!4149133)))

(assert (=> b!6886532 (= res!2807427 (not (matchR!8938 r2!6280 (_2!36969 lt!2461407))))))

(declare-fun b!6886533 () Bool)

(declare-fun tp!1894634 () Bool)

(declare-fun tp!1894638 () Bool)

(assert (=> b!6886533 (= e!4149130 (and tp!1894634 tp!1894638))))

(assert (= (and start!664098 res!2807422) b!6886522))

(assert (= (and b!6886522 res!2807428) b!6886528))

(assert (= (and b!6886528 res!2807425) b!6886512))

(assert (= (and b!6886512 (not res!2807423)) b!6886515))

(assert (= (and b!6886515 (not res!2807419)) b!6886529))

(assert (= (and b!6886529 (not res!2807420)) b!6886527))

(assert (= (and b!6886527 (not res!2807426)) b!6886532))

(assert (= (and b!6886532 (not res!2807427)) b!6886519))

(assert (= (and b!6886519 (not res!2807424)) b!6886518))

(assert (= (and b!6886518 (not res!2807421)) b!6886521))

(get-info :version)

(assert (= (and start!664098 ((_ is ElementMatch!16793) r1!6342)) b!6886520))

(assert (= (and start!664098 ((_ is Concat!25638) r1!6342)) b!6886533))

(assert (= (and start!664098 ((_ is Star!16793) r1!6342)) b!6886523))

(assert (= (and start!664098 ((_ is Union!16793) r1!6342)) b!6886526))

(assert (= (and start!664098 ((_ is ElementMatch!16793) r2!6280)) b!6886531))

(assert (= (and start!664098 ((_ is Concat!25638) r2!6280)) b!6886517))

(assert (= (and start!664098 ((_ is Star!16793) r2!6280)) b!6886530))

(assert (= (and start!664098 ((_ is Union!16793) r2!6280)) b!6886513))

(assert (= (and start!664098 ((_ is ElementMatch!16793) r3!135)) b!6886525))

(assert (= (and start!664098 ((_ is Concat!25638) r3!135)) b!6886514))

(assert (= (and start!664098 ((_ is Star!16793) r3!135)) b!6886524))

(assert (= (and start!664098 ((_ is Union!16793) r3!135)) b!6886511))

(assert (= (and start!664098 ((_ is Cons!66426) s!14361)) b!6886516))

(declare-fun m!7609358 () Bool)

(assert (=> b!6886529 m!7609358))

(declare-fun m!7609360 () Bool)

(assert (=> b!6886522 m!7609360))

(declare-fun m!7609362 () Bool)

(assert (=> start!664098 m!7609362))

(declare-fun m!7609364 () Bool)

(assert (=> b!6886532 m!7609364))

(declare-fun m!7609366 () Bool)

(assert (=> b!6886518 m!7609366))

(assert (=> b!6886518 m!7609366))

(declare-fun m!7609368 () Bool)

(assert (=> b!6886518 m!7609368))

(declare-fun m!7609370 () Bool)

(assert (=> b!6886518 m!7609370))

(declare-fun m!7609372 () Bool)

(assert (=> b!6886518 m!7609372))

(declare-fun m!7609374 () Bool)

(assert (=> b!6886518 m!7609374))

(declare-fun m!7609376 () Bool)

(assert (=> b!6886518 m!7609376))

(declare-fun m!7609378 () Bool)

(assert (=> b!6886518 m!7609378))

(declare-fun m!7609380 () Bool)

(assert (=> b!6886518 m!7609380))

(declare-fun m!7609382 () Bool)

(assert (=> b!6886518 m!7609382))

(assert (=> b!6886518 m!7609370))

(declare-fun m!7609384 () Bool)

(assert (=> b!6886518 m!7609384))

(declare-fun m!7609386 () Bool)

(assert (=> b!6886518 m!7609386))

(declare-fun m!7609388 () Bool)

(assert (=> b!6886527 m!7609388))

(declare-fun m!7609390 () Bool)

(assert (=> b!6886527 m!7609390))

(declare-fun m!7609392 () Bool)

(assert (=> b!6886527 m!7609392))

(declare-fun m!7609394 () Bool)

(assert (=> b!6886527 m!7609394))

(declare-fun m!7609396 () Bool)

(assert (=> b!6886527 m!7609396))

(declare-fun m!7609398 () Bool)

(assert (=> b!6886527 m!7609398))

(declare-fun m!7609400 () Bool)

(assert (=> b!6886527 m!7609400))

(assert (=> b!6886527 m!7609400))

(declare-fun m!7609402 () Bool)

(assert (=> b!6886527 m!7609402))

(declare-fun m!7609404 () Bool)

(assert (=> b!6886519 m!7609404))

(declare-fun m!7609406 () Bool)

(assert (=> b!6886519 m!7609406))

(declare-fun m!7609408 () Bool)

(assert (=> b!6886519 m!7609408))

(assert (=> b!6886519 m!7609406))

(declare-fun m!7609410 () Bool)

(assert (=> b!6886519 m!7609410))

(declare-fun m!7609412 () Bool)

(assert (=> b!6886519 m!7609412))

(declare-fun m!7609414 () Bool)

(assert (=> b!6886519 m!7609414))

(declare-fun m!7609416 () Bool)

(assert (=> b!6886515 m!7609416))

(declare-fun m!7609418 () Bool)

(assert (=> b!6886515 m!7609418))

(declare-fun m!7609420 () Bool)

(assert (=> b!6886515 m!7609420))

(declare-fun m!7609422 () Bool)

(assert (=> b!6886515 m!7609422))

(declare-fun m!7609424 () Bool)

(assert (=> b!6886515 m!7609424))

(assert (=> b!6886515 m!7609422))

(declare-fun m!7609426 () Bool)

(assert (=> b!6886515 m!7609426))

(declare-fun m!7609428 () Bool)

(assert (=> b!6886515 m!7609428))

(declare-fun m!7609430 () Bool)

(assert (=> b!6886515 m!7609430))

(declare-fun m!7609432 () Bool)

(assert (=> b!6886515 m!7609432))

(declare-fun m!7609434 () Bool)

(assert (=> b!6886515 m!7609434))

(declare-fun m!7609436 () Bool)

(assert (=> b!6886528 m!7609436))

(declare-fun m!7609438 () Bool)

(assert (=> b!6886521 m!7609438))

(declare-fun m!7609440 () Bool)

(assert (=> b!6886512 m!7609440))

(declare-fun m!7609442 () Bool)

(assert (=> b!6886512 m!7609442))

(declare-fun m!7609444 () Bool)

(assert (=> b!6886512 m!7609444))

(declare-fun m!7609446 () Bool)

(assert (=> b!6886512 m!7609446))

(declare-fun m!7609448 () Bool)

(assert (=> b!6886512 m!7609448))

(declare-fun m!7609450 () Bool)

(assert (=> b!6886512 m!7609450))

(check-sat (not b!6886524) (not start!664098) (not b!6886518) (not b!6886530) (not b!6886514) (not b!6886517) (not b!6886523) (not b!6886515) (not b!6886528) (not b!6886529) (not b!6886512) (not b!6886516) (not b!6886511) (not b!6886527) (not b!6886533) (not b!6886526) (not b!6886513) (not b!6886519) (not b!6886522) (not b!6886521) tp_is_empty!42811 (not b!6886532))
(check-sat)
