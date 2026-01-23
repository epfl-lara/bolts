; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247972 () Bool)

(assert start!247972)

(declare-fun b!2561415 () Bool)

(declare-fun res!1078363 () Bool)

(declare-fun e!1617528 () Bool)

(assert (=> b!2561415 (=> (not res!1078363) (not e!1617528))))

(declare-datatypes ((C!15396 0))(
  ( (C!15397 (val!9350 Int)) )
))
(declare-datatypes ((List!29684 0))(
  ( (Nil!29584) (Cons!29584 (h!35004 C!15396) (t!211383 List!29684)) )
))
(declare-fun tl!4068 () List!29684)

(declare-datatypes ((Regex!7619 0))(
  ( (ElementMatch!7619 (c!411501 C!15396)) (Concat!12315 (regOne!15750 Regex!7619) (regTwo!15750 Regex!7619)) (EmptyExpr!7619) (Star!7619 (reg!7948 Regex!7619)) (EmptyLang!7619) (Union!7619 (regOne!15751 Regex!7619) (regTwo!15751 Regex!7619)) )
))
(declare-fun r!27340 () Regex!7619)

(declare-fun c!14016 () C!15396)

(declare-fun nullable!2536 (Regex!7619) Bool)

(declare-fun derivative!314 (Regex!7619 List!29684) Regex!7619)

(declare-fun derivativeStep!2188 (Regex!7619 C!15396) Regex!7619)

(assert (=> b!2561415 (= res!1078363 (nullable!2536 (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)))))

(declare-fun b!2561417 () Bool)

(declare-fun e!1617527 () Bool)

(assert (=> b!2561417 (= e!1617528 (not e!1617527))))

(declare-fun res!1078368 () Bool)

(assert (=> b!2561417 (=> res!1078368 e!1617527)))

(declare-fun lt!904828 () Bool)

(assert (=> b!2561417 (= res!1078368 lt!904828)))

(declare-fun e!1617529 () Bool)

(assert (=> b!2561417 e!1617529))

(declare-fun res!1078362 () Bool)

(assert (=> b!2561417 (=> res!1078362 e!1617529)))

(assert (=> b!2561417 (= res!1078362 lt!904828)))

(declare-fun lt!904829 () Regex!7619)

(declare-fun matchR!3564 (Regex!7619 List!29684) Bool)

(assert (=> b!2561417 (= lt!904828 (matchR!3564 lt!904829 tl!4068))))

(declare-datatypes ((Unit!43423 0))(
  ( (Unit!43424) )
))
(declare-fun lt!904826 () Unit!43423)

(declare-fun lt!904832 () Regex!7619)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!214 (Regex!7619 Regex!7619 List!29684) Unit!43423)

(assert (=> b!2561417 (= lt!904826 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!214 lt!904829 lt!904832 tl!4068))))

(declare-fun lt!904830 () Regex!7619)

(assert (=> b!2561417 (= (matchR!3564 lt!904830 tl!4068) (matchR!3564 (derivative!314 lt!904830 tl!4068) Nil!29584))))

(declare-fun lt!904827 () Unit!43423)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!210 (Regex!7619 List!29684) Unit!43423)

(assert (=> b!2561417 (= lt!904827 (lemmaMatchRIsSameAsWholeDerivativeAndNil!210 lt!904830 tl!4068))))

(assert (=> b!2561417 (= lt!904830 (Union!7619 lt!904829 lt!904832))))

(assert (=> b!2561417 (= lt!904832 (derivativeStep!2188 (regTwo!15750 r!27340) c!14016))))

(assert (=> b!2561417 (= lt!904829 (Concat!12315 (derivativeStep!2188 (regOne!15750 r!27340) c!14016) (regTwo!15750 r!27340)))))

(declare-fun b!2561418 () Bool)

(declare-fun e!1617530 () Bool)

(declare-fun lt!904825 () Regex!7619)

(assert (=> b!2561418 (= e!1617530 (nullable!2536 lt!904825))))

(declare-fun b!2561419 () Bool)

(declare-fun e!1617531 () Bool)

(declare-fun tp_is_empty!13093 () Bool)

(assert (=> b!2561419 (= e!1617531 tp_is_empty!13093)))

(declare-fun b!2561420 () Bool)

(declare-fun tp!815752 () Bool)

(declare-fun tp!815750 () Bool)

(assert (=> b!2561420 (= e!1617531 (and tp!815752 tp!815750))))

(declare-fun b!2561421 () Bool)

(assert (=> b!2561421 (= e!1617529 (matchR!3564 lt!904832 tl!4068))))

(declare-fun b!2561422 () Bool)

(assert (=> b!2561422 (= e!1617527 e!1617530)))

(declare-fun res!1078366 () Bool)

(assert (=> b!2561422 (=> res!1078366 e!1617530)))

(declare-fun validRegex!3245 (Regex!7619) Bool)

(assert (=> b!2561422 (= res!1078366 (not (validRegex!3245 (regTwo!15750 r!27340))))))

(assert (=> b!2561422 (= (matchR!3564 lt!904832 tl!4068) (matchR!3564 lt!904825 Nil!29584))))

(assert (=> b!2561422 (= lt!904825 (derivative!314 lt!904832 tl!4068))))

(declare-fun lt!904831 () Unit!43423)

(assert (=> b!2561422 (= lt!904831 (lemmaMatchRIsSameAsWholeDerivativeAndNil!210 lt!904832 tl!4068))))

(declare-fun b!2561423 () Bool)

(declare-fun tp!815754 () Bool)

(declare-fun tp!815753 () Bool)

(assert (=> b!2561423 (= e!1617531 (and tp!815754 tp!815753))))

(declare-fun b!2561424 () Bool)

(declare-fun res!1078367 () Bool)

(assert (=> b!2561424 (=> (not res!1078367) (not e!1617528))))

(get-info :version)

(assert (=> b!2561424 (= res!1078367 (and (not ((_ is EmptyExpr!7619) r!27340)) (not ((_ is EmptyLang!7619) r!27340)) (not ((_ is ElementMatch!7619) r!27340)) (not ((_ is Union!7619) r!27340)) (not ((_ is Star!7619) r!27340))))))

(declare-fun b!2561425 () Bool)

(declare-fun res!1078364 () Bool)

(assert (=> b!2561425 (=> (not res!1078364) (not e!1617528))))

(assert (=> b!2561425 (= res!1078364 (nullable!2536 (regOne!15750 r!27340)))))

(declare-fun b!2561426 () Bool)

(declare-fun tp!815749 () Bool)

(assert (=> b!2561426 (= e!1617531 tp!815749)))

(declare-fun res!1078365 () Bool)

(assert (=> start!247972 (=> (not res!1078365) (not e!1617528))))

(assert (=> start!247972 (= res!1078365 (validRegex!3245 r!27340))))

(assert (=> start!247972 e!1617528))

(assert (=> start!247972 e!1617531))

(assert (=> start!247972 tp_is_empty!13093))

(declare-fun e!1617532 () Bool)

(assert (=> start!247972 e!1617532))

(declare-fun b!2561416 () Bool)

(declare-fun tp!815751 () Bool)

(assert (=> b!2561416 (= e!1617532 (and tp_is_empty!13093 tp!815751))))

(assert (= (and start!247972 res!1078365) b!2561415))

(assert (= (and b!2561415 res!1078363) b!2561424))

(assert (= (and b!2561424 res!1078367) b!2561425))

(assert (= (and b!2561425 res!1078364) b!2561417))

(assert (= (and b!2561417 (not res!1078362)) b!2561421))

(assert (= (and b!2561417 (not res!1078368)) b!2561422))

(assert (= (and b!2561422 (not res!1078366)) b!2561418))

(assert (= (and start!247972 ((_ is ElementMatch!7619) r!27340)) b!2561419))

(assert (= (and start!247972 ((_ is Concat!12315) r!27340)) b!2561420))

(assert (= (and start!247972 ((_ is Star!7619) r!27340)) b!2561426))

(assert (= (and start!247972 ((_ is Union!7619) r!27340)) b!2561423))

(assert (= (and start!247972 ((_ is Cons!29584) tl!4068)) b!2561416))

(declare-fun m!2901399 () Bool)

(assert (=> b!2561425 m!2901399))

(declare-fun m!2901401 () Bool)

(assert (=> b!2561415 m!2901401))

(assert (=> b!2561415 m!2901401))

(declare-fun m!2901403 () Bool)

(assert (=> b!2561415 m!2901403))

(assert (=> b!2561415 m!2901403))

(declare-fun m!2901405 () Bool)

(assert (=> b!2561415 m!2901405))

(declare-fun m!2901407 () Bool)

(assert (=> b!2561422 m!2901407))

(declare-fun m!2901409 () Bool)

(assert (=> b!2561422 m!2901409))

(declare-fun m!2901411 () Bool)

(assert (=> b!2561422 m!2901411))

(declare-fun m!2901413 () Bool)

(assert (=> b!2561422 m!2901413))

(declare-fun m!2901415 () Bool)

(assert (=> b!2561422 m!2901415))

(assert (=> b!2561421 m!2901411))

(declare-fun m!2901417 () Bool)

(assert (=> b!2561418 m!2901417))

(declare-fun m!2901419 () Bool)

(assert (=> start!247972 m!2901419))

(declare-fun m!2901421 () Bool)

(assert (=> b!2561417 m!2901421))

(declare-fun m!2901423 () Bool)

(assert (=> b!2561417 m!2901423))

(declare-fun m!2901425 () Bool)

(assert (=> b!2561417 m!2901425))

(declare-fun m!2901427 () Bool)

(assert (=> b!2561417 m!2901427))

(assert (=> b!2561417 m!2901421))

(declare-fun m!2901429 () Bool)

(assert (=> b!2561417 m!2901429))

(declare-fun m!2901431 () Bool)

(assert (=> b!2561417 m!2901431))

(declare-fun m!2901433 () Bool)

(assert (=> b!2561417 m!2901433))

(declare-fun m!2901435 () Bool)

(assert (=> b!2561417 m!2901435))

(check-sat (not b!2561422) (not b!2561417) (not b!2561416) (not b!2561426) tp_is_empty!13093 (not b!2561423) (not b!2561421) (not start!247972) (not b!2561418) (not b!2561415) (not b!2561420) (not b!2561425))
(check-sat)
(get-model)

(declare-fun d!725539 () Bool)

(declare-fun e!1617551 () Bool)

(assert (=> d!725539 e!1617551))

(declare-fun res!1078383 () Bool)

(assert (=> d!725539 (=> res!1078383 e!1617551)))

(assert (=> d!725539 (= res!1078383 (matchR!3564 lt!904829 tl!4068))))

(declare-fun lt!904835 () Unit!43423)

(declare-fun choose!15115 (Regex!7619 Regex!7619 List!29684) Unit!43423)

(assert (=> d!725539 (= lt!904835 (choose!15115 lt!904829 lt!904832 tl!4068))))

(declare-fun e!1617552 () Bool)

(assert (=> d!725539 e!1617552))

(declare-fun res!1078384 () Bool)

(assert (=> d!725539 (=> (not res!1078384) (not e!1617552))))

(assert (=> d!725539 (= res!1078384 (validRegex!3245 lt!904829))))

(assert (=> d!725539 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!214 lt!904829 lt!904832 tl!4068) lt!904835)))

(declare-fun b!2561449 () Bool)

(assert (=> b!2561449 (= e!1617552 (validRegex!3245 lt!904832))))

(declare-fun b!2561450 () Bool)

(assert (=> b!2561450 (= e!1617551 (matchR!3564 lt!904832 tl!4068))))

(assert (= (and d!725539 res!1078384) b!2561449))

(assert (= (and d!725539 (not res!1078383)) b!2561450))

(assert (=> d!725539 m!2901429))

(declare-fun m!2901437 () Bool)

(assert (=> d!725539 m!2901437))

(declare-fun m!2901439 () Bool)

(assert (=> d!725539 m!2901439))

(declare-fun m!2901441 () Bool)

(assert (=> b!2561449 m!2901441))

(assert (=> b!2561450 m!2901411))

(assert (=> b!2561417 d!725539))

(declare-fun bm!164120 () Bool)

(declare-fun call!164125 () Bool)

(declare-fun isEmpty!17042 (List!29684) Bool)

(assert (=> bm!164120 (= call!164125 (isEmpty!17042 tl!4068))))

(declare-fun b!2561492 () Bool)

(declare-fun res!1078411 () Bool)

(declare-fun e!1617580 () Bool)

(assert (=> b!2561492 (=> res!1078411 e!1617580)))

(assert (=> b!2561492 (= res!1078411 (not ((_ is ElementMatch!7619) lt!904829)))))

(declare-fun e!1617578 () Bool)

(assert (=> b!2561492 (= e!1617578 e!1617580)))

(declare-fun b!2561493 () Bool)

(declare-fun e!1617577 () Bool)

(declare-fun head!5826 (List!29684) C!15396)

(assert (=> b!2561493 (= e!1617577 (= (head!5826 tl!4068) (c!411501 lt!904829)))))

(declare-fun b!2561494 () Bool)

(declare-fun e!1617582 () Bool)

(declare-fun e!1617579 () Bool)

(assert (=> b!2561494 (= e!1617582 e!1617579)))

(declare-fun res!1078409 () Bool)

(assert (=> b!2561494 (=> res!1078409 e!1617579)))

(assert (=> b!2561494 (= res!1078409 call!164125)))

(declare-fun b!2561495 () Bool)

(declare-fun res!1078412 () Bool)

(assert (=> b!2561495 (=> res!1078412 e!1617580)))

(assert (=> b!2561495 (= res!1078412 e!1617577)))

(declare-fun res!1078407 () Bool)

(assert (=> b!2561495 (=> (not res!1078407) (not e!1617577))))

(declare-fun lt!904843 () Bool)

(assert (=> b!2561495 (= res!1078407 lt!904843)))

(declare-fun b!2561496 () Bool)

(declare-fun e!1617576 () Bool)

(assert (=> b!2561496 (= e!1617576 e!1617578)))

(declare-fun c!411518 () Bool)

(assert (=> b!2561496 (= c!411518 ((_ is EmptyLang!7619) lt!904829))))

(declare-fun b!2561497 () Bool)

(assert (=> b!2561497 (= e!1617578 (not lt!904843))))

(declare-fun b!2561498 () Bool)

(declare-fun res!1078413 () Bool)

(assert (=> b!2561498 (=> (not res!1078413) (not e!1617577))))

(declare-fun tail!4101 (List!29684) List!29684)

(assert (=> b!2561498 (= res!1078413 (isEmpty!17042 (tail!4101 tl!4068)))))

(declare-fun d!725543 () Bool)

(assert (=> d!725543 e!1617576))

(declare-fun c!411516 () Bool)

(assert (=> d!725543 (= c!411516 ((_ is EmptyExpr!7619) lt!904829))))

(declare-fun e!1617581 () Bool)

(assert (=> d!725543 (= lt!904843 e!1617581)))

(declare-fun c!411517 () Bool)

(assert (=> d!725543 (= c!411517 (isEmpty!17042 tl!4068))))

(assert (=> d!725543 (validRegex!3245 lt!904829)))

(assert (=> d!725543 (= (matchR!3564 lt!904829 tl!4068) lt!904843)))

(declare-fun b!2561499 () Bool)

(declare-fun res!1078408 () Bool)

(assert (=> b!2561499 (=> res!1078408 e!1617579)))

(assert (=> b!2561499 (= res!1078408 (not (isEmpty!17042 (tail!4101 tl!4068))))))

(declare-fun b!2561500 () Bool)

(assert (=> b!2561500 (= e!1617576 (= lt!904843 call!164125))))

(declare-fun b!2561501 () Bool)

(assert (=> b!2561501 (= e!1617580 e!1617582)))

(declare-fun res!1078410 () Bool)

(assert (=> b!2561501 (=> (not res!1078410) (not e!1617582))))

(assert (=> b!2561501 (= res!1078410 (not lt!904843))))

(declare-fun b!2561502 () Bool)

(assert (=> b!2561502 (= e!1617579 (not (= (head!5826 tl!4068) (c!411501 lt!904829))))))

(declare-fun b!2561503 () Bool)

(assert (=> b!2561503 (= e!1617581 (nullable!2536 lt!904829))))

(declare-fun b!2561504 () Bool)

(declare-fun res!1078406 () Bool)

(assert (=> b!2561504 (=> (not res!1078406) (not e!1617577))))

(assert (=> b!2561504 (= res!1078406 (not call!164125))))

(declare-fun b!2561505 () Bool)

(assert (=> b!2561505 (= e!1617581 (matchR!3564 (derivativeStep!2188 lt!904829 (head!5826 tl!4068)) (tail!4101 tl!4068)))))

(assert (= (and d!725543 c!411517) b!2561503))

(assert (= (and d!725543 (not c!411517)) b!2561505))

(assert (= (and d!725543 c!411516) b!2561500))

(assert (= (and d!725543 (not c!411516)) b!2561496))

(assert (= (and b!2561496 c!411518) b!2561497))

(assert (= (and b!2561496 (not c!411518)) b!2561492))

(assert (= (and b!2561492 (not res!1078411)) b!2561495))

(assert (= (and b!2561495 res!1078407) b!2561504))

(assert (= (and b!2561504 res!1078406) b!2561498))

(assert (= (and b!2561498 res!1078413) b!2561493))

(assert (= (and b!2561495 (not res!1078412)) b!2561501))

(assert (= (and b!2561501 res!1078410) b!2561494))

(assert (= (and b!2561494 (not res!1078409)) b!2561499))

(assert (= (and b!2561499 (not res!1078408)) b!2561502))

(assert (= (or b!2561500 b!2561494 b!2561504) bm!164120))

(declare-fun m!2901455 () Bool)

(assert (=> b!2561505 m!2901455))

(assert (=> b!2561505 m!2901455))

(declare-fun m!2901457 () Bool)

(assert (=> b!2561505 m!2901457))

(declare-fun m!2901459 () Bool)

(assert (=> b!2561505 m!2901459))

(assert (=> b!2561505 m!2901457))

(assert (=> b!2561505 m!2901459))

(declare-fun m!2901461 () Bool)

(assert (=> b!2561505 m!2901461))

(declare-fun m!2901463 () Bool)

(assert (=> b!2561503 m!2901463))

(assert (=> b!2561493 m!2901455))

(declare-fun m!2901465 () Bool)

(assert (=> d!725543 m!2901465))

(assert (=> d!725543 m!2901439))

(assert (=> bm!164120 m!2901465))

(assert (=> b!2561498 m!2901459))

(assert (=> b!2561498 m!2901459))

(declare-fun m!2901467 () Bool)

(assert (=> b!2561498 m!2901467))

(assert (=> b!2561502 m!2901455))

(assert (=> b!2561499 m!2901459))

(assert (=> b!2561499 m!2901459))

(assert (=> b!2561499 m!2901467))

(assert (=> b!2561417 d!725543))

(declare-fun bm!164121 () Bool)

(declare-fun call!164126 () Bool)

(assert (=> bm!164121 (= call!164126 (isEmpty!17042 tl!4068))))

(declare-fun b!2561530 () Bool)

(declare-fun res!1078435 () Bool)

(declare-fun e!1617599 () Bool)

(assert (=> b!2561530 (=> res!1078435 e!1617599)))

(assert (=> b!2561530 (= res!1078435 (not ((_ is ElementMatch!7619) lt!904830)))))

(declare-fun e!1617597 () Bool)

(assert (=> b!2561530 (= e!1617597 e!1617599)))

(declare-fun b!2561531 () Bool)

(declare-fun e!1617596 () Bool)

(assert (=> b!2561531 (= e!1617596 (= (head!5826 tl!4068) (c!411501 lt!904830)))))

(declare-fun b!2561532 () Bool)

(declare-fun e!1617601 () Bool)

(declare-fun e!1617598 () Bool)

(assert (=> b!2561532 (= e!1617601 e!1617598)))

(declare-fun res!1078433 () Bool)

(assert (=> b!2561532 (=> res!1078433 e!1617598)))

(assert (=> b!2561532 (= res!1078433 call!164126)))

(declare-fun b!2561533 () Bool)

(declare-fun res!1078436 () Bool)

(assert (=> b!2561533 (=> res!1078436 e!1617599)))

(assert (=> b!2561533 (= res!1078436 e!1617596)))

(declare-fun res!1078431 () Bool)

(assert (=> b!2561533 (=> (not res!1078431) (not e!1617596))))

(declare-fun lt!904844 () Bool)

(assert (=> b!2561533 (= res!1078431 lt!904844)))

(declare-fun b!2561534 () Bool)

(declare-fun e!1617595 () Bool)

(assert (=> b!2561534 (= e!1617595 e!1617597)))

(declare-fun c!411525 () Bool)

(assert (=> b!2561534 (= c!411525 ((_ is EmptyLang!7619) lt!904830))))

(declare-fun b!2561535 () Bool)

(assert (=> b!2561535 (= e!1617597 (not lt!904844))))

(declare-fun b!2561536 () Bool)

(declare-fun res!1078437 () Bool)

(assert (=> b!2561536 (=> (not res!1078437) (not e!1617596))))

(assert (=> b!2561536 (= res!1078437 (isEmpty!17042 (tail!4101 tl!4068)))))

(declare-fun d!725549 () Bool)

(assert (=> d!725549 e!1617595))

(declare-fun c!411523 () Bool)

(assert (=> d!725549 (= c!411523 ((_ is EmptyExpr!7619) lt!904830))))

(declare-fun e!1617600 () Bool)

(assert (=> d!725549 (= lt!904844 e!1617600)))

(declare-fun c!411524 () Bool)

(assert (=> d!725549 (= c!411524 (isEmpty!17042 tl!4068))))

(assert (=> d!725549 (validRegex!3245 lt!904830)))

(assert (=> d!725549 (= (matchR!3564 lt!904830 tl!4068) lt!904844)))

(declare-fun b!2561537 () Bool)

(declare-fun res!1078432 () Bool)

(assert (=> b!2561537 (=> res!1078432 e!1617598)))

(assert (=> b!2561537 (= res!1078432 (not (isEmpty!17042 (tail!4101 tl!4068))))))

(declare-fun b!2561538 () Bool)

(assert (=> b!2561538 (= e!1617595 (= lt!904844 call!164126))))

(declare-fun b!2561539 () Bool)

(assert (=> b!2561539 (= e!1617599 e!1617601)))

(declare-fun res!1078434 () Bool)

(assert (=> b!2561539 (=> (not res!1078434) (not e!1617601))))

(assert (=> b!2561539 (= res!1078434 (not lt!904844))))

(declare-fun b!2561540 () Bool)

(assert (=> b!2561540 (= e!1617598 (not (= (head!5826 tl!4068) (c!411501 lt!904830))))))

(declare-fun b!2561541 () Bool)

(assert (=> b!2561541 (= e!1617600 (nullable!2536 lt!904830))))

(declare-fun b!2561542 () Bool)

(declare-fun res!1078430 () Bool)

(assert (=> b!2561542 (=> (not res!1078430) (not e!1617596))))

(assert (=> b!2561542 (= res!1078430 (not call!164126))))

(declare-fun b!2561543 () Bool)

(assert (=> b!2561543 (= e!1617600 (matchR!3564 (derivativeStep!2188 lt!904830 (head!5826 tl!4068)) (tail!4101 tl!4068)))))

(assert (= (and d!725549 c!411524) b!2561541))

(assert (= (and d!725549 (not c!411524)) b!2561543))

(assert (= (and d!725549 c!411523) b!2561538))

(assert (= (and d!725549 (not c!411523)) b!2561534))

(assert (= (and b!2561534 c!411525) b!2561535))

(assert (= (and b!2561534 (not c!411525)) b!2561530))

(assert (= (and b!2561530 (not res!1078435)) b!2561533))

(assert (= (and b!2561533 res!1078431) b!2561542))

(assert (= (and b!2561542 res!1078430) b!2561536))

(assert (= (and b!2561536 res!1078437) b!2561531))

(assert (= (and b!2561533 (not res!1078436)) b!2561539))

(assert (= (and b!2561539 res!1078434) b!2561532))

(assert (= (and b!2561532 (not res!1078433)) b!2561537))

(assert (= (and b!2561537 (not res!1078432)) b!2561540))

(assert (= (or b!2561538 b!2561532 b!2561542) bm!164121))

(assert (=> b!2561543 m!2901455))

(assert (=> b!2561543 m!2901455))

(declare-fun m!2901469 () Bool)

(assert (=> b!2561543 m!2901469))

(assert (=> b!2561543 m!2901459))

(assert (=> b!2561543 m!2901469))

(assert (=> b!2561543 m!2901459))

(declare-fun m!2901471 () Bool)

(assert (=> b!2561543 m!2901471))

(declare-fun m!2901473 () Bool)

(assert (=> b!2561541 m!2901473))

(assert (=> b!2561531 m!2901455))

(assert (=> d!725549 m!2901465))

(declare-fun m!2901475 () Bool)

(assert (=> d!725549 m!2901475))

(assert (=> bm!164121 m!2901465))

(assert (=> b!2561536 m!2901459))

(assert (=> b!2561536 m!2901459))

(assert (=> b!2561536 m!2901467))

(assert (=> b!2561540 m!2901455))

(assert (=> b!2561537 m!2901459))

(assert (=> b!2561537 m!2901459))

(assert (=> b!2561537 m!2901467))

(assert (=> b!2561417 d!725549))

(declare-fun d!725551 () Bool)

(declare-fun lt!904848 () Regex!7619)

(assert (=> d!725551 (validRegex!3245 lt!904848)))

(declare-fun e!1617611 () Regex!7619)

(assert (=> d!725551 (= lt!904848 e!1617611)))

(declare-fun c!411531 () Bool)

(assert (=> d!725551 (= c!411531 ((_ is Cons!29584) tl!4068))))

(assert (=> d!725551 (validRegex!3245 lt!904830)))

(assert (=> d!725551 (= (derivative!314 lt!904830 tl!4068) lt!904848)))

(declare-fun b!2561562 () Bool)

(assert (=> b!2561562 (= e!1617611 (derivative!314 (derivativeStep!2188 lt!904830 (h!35004 tl!4068)) (t!211383 tl!4068)))))

(declare-fun b!2561563 () Bool)

(assert (=> b!2561563 (= e!1617611 lt!904830)))

(assert (= (and d!725551 c!411531) b!2561562))

(assert (= (and d!725551 (not c!411531)) b!2561563))

(declare-fun m!2901479 () Bool)

(assert (=> d!725551 m!2901479))

(assert (=> d!725551 m!2901475))

(declare-fun m!2901485 () Bool)

(assert (=> b!2561562 m!2901485))

(assert (=> b!2561562 m!2901485))

(declare-fun m!2901491 () Bool)

(assert (=> b!2561562 m!2901491))

(assert (=> b!2561417 d!725551))

(declare-fun b!2561647 () Bool)

(declare-fun e!1617660 () Regex!7619)

(assert (=> b!2561647 (= e!1617660 EmptyLang!7619)))

(declare-fun b!2561648 () Bool)

(declare-fun e!1617656 () Regex!7619)

(declare-fun call!164144 () Regex!7619)

(assert (=> b!2561648 (= e!1617656 (Union!7619 (Concat!12315 call!164144 (regTwo!15750 (regTwo!15750 r!27340))) EmptyLang!7619))))

(declare-fun bm!164139 () Bool)

(declare-fun call!164146 () Regex!7619)

(assert (=> bm!164139 (= call!164144 call!164146)))

(declare-fun b!2561649 () Bool)

(declare-fun e!1617655 () Regex!7619)

(declare-fun e!1617657 () Regex!7619)

(assert (=> b!2561649 (= e!1617655 e!1617657)))

(declare-fun c!411561 () Bool)

(assert (=> b!2561649 (= c!411561 ((_ is Star!7619) (regTwo!15750 r!27340)))))

(declare-fun b!2561650 () Bool)

(declare-fun e!1617658 () Regex!7619)

(assert (=> b!2561650 (= e!1617660 e!1617658)))

(declare-fun c!411557 () Bool)

(assert (=> b!2561650 (= c!411557 ((_ is ElementMatch!7619) (regTwo!15750 r!27340)))))

(declare-fun c!411558 () Bool)

(declare-fun bm!164140 () Bool)

(declare-fun call!164147 () Regex!7619)

(assert (=> bm!164140 (= call!164147 (derivativeStep!2188 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))) c!14016))))

(declare-fun b!2561651 () Bool)

(assert (=> b!2561651 (= e!1617658 (ite (= c!14016 (c!411501 (regTwo!15750 r!27340))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164141 () Bool)

(declare-fun call!164145 () Regex!7619)

(assert (=> bm!164141 (= call!164146 call!164145)))

(declare-fun b!2561652 () Bool)

(assert (=> b!2561652 (= e!1617655 (Union!7619 call!164145 call!164147))))

(declare-fun b!2561653 () Bool)

(declare-fun c!411559 () Bool)

(assert (=> b!2561653 (= c!411559 (nullable!2536 (regOne!15750 (regTwo!15750 r!27340))))))

(assert (=> b!2561653 (= e!1617657 e!1617656)))

(declare-fun bm!164142 () Bool)

(assert (=> bm!164142 (= call!164145 (derivativeStep!2188 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))) c!14016))))

(declare-fun b!2561655 () Bool)

(assert (=> b!2561655 (= e!1617656 (Union!7619 (Concat!12315 call!164144 (regTwo!15750 (regTwo!15750 r!27340))) call!164147))))

(declare-fun b!2561656 () Bool)

(assert (=> b!2561656 (= e!1617657 (Concat!12315 call!164146 (regTwo!15750 r!27340)))))

(declare-fun d!725553 () Bool)

(declare-fun lt!904861 () Regex!7619)

(assert (=> d!725553 (validRegex!3245 lt!904861)))

(assert (=> d!725553 (= lt!904861 e!1617660)))

(declare-fun c!411563 () Bool)

(assert (=> d!725553 (= c!411563 (or ((_ is EmptyExpr!7619) (regTwo!15750 r!27340)) ((_ is EmptyLang!7619) (regTwo!15750 r!27340))))))

(assert (=> d!725553 (validRegex!3245 (regTwo!15750 r!27340))))

(assert (=> d!725553 (= (derivativeStep!2188 (regTwo!15750 r!27340) c!14016) lt!904861)))

(declare-fun b!2561654 () Bool)

(assert (=> b!2561654 (= c!411558 ((_ is Union!7619) (regTwo!15750 r!27340)))))

(assert (=> b!2561654 (= e!1617658 e!1617655)))

(assert (= (and d!725553 c!411563) b!2561647))

(assert (= (and d!725553 (not c!411563)) b!2561650))

(assert (= (and b!2561650 c!411557) b!2561651))

(assert (= (and b!2561650 (not c!411557)) b!2561654))

(assert (= (and b!2561654 c!411558) b!2561652))

(assert (= (and b!2561654 (not c!411558)) b!2561649))

(assert (= (and b!2561649 c!411561) b!2561656))

(assert (= (and b!2561649 (not c!411561)) b!2561653))

(assert (= (and b!2561653 c!411559) b!2561655))

(assert (= (and b!2561653 (not c!411559)) b!2561648))

(assert (= (or b!2561655 b!2561648) bm!164139))

(assert (= (or b!2561656 bm!164139) bm!164141))

(assert (= (or b!2561652 b!2561655) bm!164140))

(assert (= (or b!2561652 bm!164141) bm!164142))

(declare-fun m!2901549 () Bool)

(assert (=> bm!164140 m!2901549))

(declare-fun m!2901551 () Bool)

(assert (=> b!2561653 m!2901551))

(declare-fun m!2901553 () Bool)

(assert (=> bm!164142 m!2901553))

(declare-fun m!2901555 () Bool)

(assert (=> d!725553 m!2901555))

(assert (=> d!725553 m!2901407))

(assert (=> b!2561417 d!725553))

(declare-fun b!2561673 () Bool)

(declare-fun e!1617673 () Regex!7619)

(assert (=> b!2561673 (= e!1617673 EmptyLang!7619)))

(declare-fun b!2561674 () Bool)

(declare-fun e!1617670 () Regex!7619)

(declare-fun call!164152 () Regex!7619)

(assert (=> b!2561674 (= e!1617670 (Union!7619 (Concat!12315 call!164152 (regTwo!15750 (regOne!15750 r!27340))) EmptyLang!7619))))

(declare-fun bm!164147 () Bool)

(declare-fun call!164154 () Regex!7619)

(assert (=> bm!164147 (= call!164152 call!164154)))

(declare-fun b!2561675 () Bool)

(declare-fun e!1617669 () Regex!7619)

(declare-fun e!1617671 () Regex!7619)

(assert (=> b!2561675 (= e!1617669 e!1617671)))

(declare-fun c!411575 () Bool)

(assert (=> b!2561675 (= c!411575 ((_ is Star!7619) (regOne!15750 r!27340)))))

(declare-fun b!2561676 () Bool)

(declare-fun e!1617672 () Regex!7619)

(assert (=> b!2561676 (= e!1617673 e!1617672)))

(declare-fun c!411572 () Bool)

(assert (=> b!2561676 (= c!411572 ((_ is ElementMatch!7619) (regOne!15750 r!27340)))))

(declare-fun bm!164148 () Bool)

(declare-fun call!164155 () Regex!7619)

(declare-fun c!411573 () Bool)

(assert (=> bm!164148 (= call!164155 (derivativeStep!2188 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))) c!14016))))

(declare-fun b!2561677 () Bool)

(assert (=> b!2561677 (= e!1617672 (ite (= c!14016 (c!411501 (regOne!15750 r!27340))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164149 () Bool)

(declare-fun call!164153 () Regex!7619)

(assert (=> bm!164149 (= call!164154 call!164153)))

(declare-fun b!2561678 () Bool)

(assert (=> b!2561678 (= e!1617669 (Union!7619 call!164153 call!164155))))

(declare-fun b!2561679 () Bool)

(declare-fun c!411574 () Bool)

(assert (=> b!2561679 (= c!411574 (nullable!2536 (regOne!15750 (regOne!15750 r!27340))))))

(assert (=> b!2561679 (= e!1617671 e!1617670)))

(declare-fun bm!164150 () Bool)

(assert (=> bm!164150 (= call!164153 (derivativeStep!2188 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))) c!14016))))

(declare-fun b!2561681 () Bool)

(assert (=> b!2561681 (= e!1617670 (Union!7619 (Concat!12315 call!164152 (regTwo!15750 (regOne!15750 r!27340))) call!164155))))

(declare-fun b!2561682 () Bool)

(assert (=> b!2561682 (= e!1617671 (Concat!12315 call!164154 (regOne!15750 r!27340)))))

(declare-fun d!725573 () Bool)

(declare-fun lt!904862 () Regex!7619)

(assert (=> d!725573 (validRegex!3245 lt!904862)))

(assert (=> d!725573 (= lt!904862 e!1617673)))

(declare-fun c!411576 () Bool)

(assert (=> d!725573 (= c!411576 (or ((_ is EmptyExpr!7619) (regOne!15750 r!27340)) ((_ is EmptyLang!7619) (regOne!15750 r!27340))))))

(assert (=> d!725573 (validRegex!3245 (regOne!15750 r!27340))))

(assert (=> d!725573 (= (derivativeStep!2188 (regOne!15750 r!27340) c!14016) lt!904862)))

(declare-fun b!2561680 () Bool)

(assert (=> b!2561680 (= c!411573 ((_ is Union!7619) (regOne!15750 r!27340)))))

(assert (=> b!2561680 (= e!1617672 e!1617669)))

(assert (= (and d!725573 c!411576) b!2561673))

(assert (= (and d!725573 (not c!411576)) b!2561676))

(assert (= (and b!2561676 c!411572) b!2561677))

(assert (= (and b!2561676 (not c!411572)) b!2561680))

(assert (= (and b!2561680 c!411573) b!2561678))

(assert (= (and b!2561680 (not c!411573)) b!2561675))

(assert (= (and b!2561675 c!411575) b!2561682))

(assert (= (and b!2561675 (not c!411575)) b!2561679))

(assert (= (and b!2561679 c!411574) b!2561681))

(assert (= (and b!2561679 (not c!411574)) b!2561674))

(assert (= (or b!2561681 b!2561674) bm!164147))

(assert (= (or b!2561682 bm!164147) bm!164149))

(assert (= (or b!2561678 b!2561681) bm!164148))

(assert (= (or b!2561678 bm!164149) bm!164150))

(declare-fun m!2901557 () Bool)

(assert (=> bm!164148 m!2901557))

(declare-fun m!2901559 () Bool)

(assert (=> b!2561679 m!2901559))

(declare-fun m!2901561 () Bool)

(assert (=> bm!164150 m!2901561))

(declare-fun m!2901563 () Bool)

(assert (=> d!725573 m!2901563))

(declare-fun m!2901565 () Bool)

(assert (=> d!725573 m!2901565))

(assert (=> b!2561417 d!725573))

(declare-fun d!725575 () Bool)

(assert (=> d!725575 (= (matchR!3564 lt!904830 tl!4068) (matchR!3564 (derivative!314 lt!904830 tl!4068) Nil!29584))))

(declare-fun lt!904867 () Unit!43423)

(declare-fun choose!15116 (Regex!7619 List!29684) Unit!43423)

(assert (=> d!725575 (= lt!904867 (choose!15116 lt!904830 tl!4068))))

(assert (=> d!725575 (validRegex!3245 lt!904830)))

(assert (=> d!725575 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!210 lt!904830 tl!4068) lt!904867)))

(declare-fun bs!469837 () Bool)

(assert (= bs!469837 d!725575))

(assert (=> bs!469837 m!2901421))

(assert (=> bs!469837 m!2901433))

(declare-fun m!2901575 () Bool)

(assert (=> bs!469837 m!2901575))

(assert (=> bs!469837 m!2901421))

(assert (=> bs!469837 m!2901423))

(assert (=> bs!469837 m!2901475))

(assert (=> b!2561417 d!725575))

(declare-fun bm!164163 () Bool)

(declare-fun call!164168 () Bool)

(assert (=> bm!164163 (= call!164168 (isEmpty!17042 Nil!29584))))

(declare-fun b!2561703 () Bool)

(declare-fun res!1078480 () Bool)

(declare-fun e!1617688 () Bool)

(assert (=> b!2561703 (=> res!1078480 e!1617688)))

(assert (=> b!2561703 (= res!1078480 (not ((_ is ElementMatch!7619) (derivative!314 lt!904830 tl!4068))))))

(declare-fun e!1617686 () Bool)

(assert (=> b!2561703 (= e!1617686 e!1617688)))

(declare-fun b!2561704 () Bool)

(declare-fun e!1617685 () Bool)

(assert (=> b!2561704 (= e!1617685 (= (head!5826 Nil!29584) (c!411501 (derivative!314 lt!904830 tl!4068))))))

(declare-fun b!2561705 () Bool)

(declare-fun e!1617690 () Bool)

(declare-fun e!1617687 () Bool)

(assert (=> b!2561705 (= e!1617690 e!1617687)))

(declare-fun res!1078478 () Bool)

(assert (=> b!2561705 (=> res!1078478 e!1617687)))

(assert (=> b!2561705 (= res!1078478 call!164168)))

(declare-fun b!2561706 () Bool)

(declare-fun res!1078481 () Bool)

(assert (=> b!2561706 (=> res!1078481 e!1617688)))

(assert (=> b!2561706 (= res!1078481 e!1617685)))

(declare-fun res!1078476 () Bool)

(assert (=> b!2561706 (=> (not res!1078476) (not e!1617685))))

(declare-fun lt!904868 () Bool)

(assert (=> b!2561706 (= res!1078476 lt!904868)))

(declare-fun b!2561707 () Bool)

(declare-fun e!1617684 () Bool)

(assert (=> b!2561707 (= e!1617684 e!1617686)))

(declare-fun c!411589 () Bool)

(assert (=> b!2561707 (= c!411589 ((_ is EmptyLang!7619) (derivative!314 lt!904830 tl!4068)))))

(declare-fun b!2561708 () Bool)

(assert (=> b!2561708 (= e!1617686 (not lt!904868))))

(declare-fun b!2561709 () Bool)

(declare-fun res!1078482 () Bool)

(assert (=> b!2561709 (=> (not res!1078482) (not e!1617685))))

(assert (=> b!2561709 (= res!1078482 (isEmpty!17042 (tail!4101 Nil!29584)))))

(declare-fun d!725579 () Bool)

(assert (=> d!725579 e!1617684))

(declare-fun c!411587 () Bool)

(assert (=> d!725579 (= c!411587 ((_ is EmptyExpr!7619) (derivative!314 lt!904830 tl!4068)))))

(declare-fun e!1617689 () Bool)

(assert (=> d!725579 (= lt!904868 e!1617689)))

(declare-fun c!411588 () Bool)

(assert (=> d!725579 (= c!411588 (isEmpty!17042 Nil!29584))))

(assert (=> d!725579 (validRegex!3245 (derivative!314 lt!904830 tl!4068))))

(assert (=> d!725579 (= (matchR!3564 (derivative!314 lt!904830 tl!4068) Nil!29584) lt!904868)))

(declare-fun b!2561710 () Bool)

(declare-fun res!1078477 () Bool)

(assert (=> b!2561710 (=> res!1078477 e!1617687)))

(assert (=> b!2561710 (= res!1078477 (not (isEmpty!17042 (tail!4101 Nil!29584))))))

(declare-fun b!2561711 () Bool)

(assert (=> b!2561711 (= e!1617684 (= lt!904868 call!164168))))

(declare-fun b!2561712 () Bool)

(assert (=> b!2561712 (= e!1617688 e!1617690)))

(declare-fun res!1078479 () Bool)

(assert (=> b!2561712 (=> (not res!1078479) (not e!1617690))))

(assert (=> b!2561712 (= res!1078479 (not lt!904868))))

(declare-fun b!2561713 () Bool)

(assert (=> b!2561713 (= e!1617687 (not (= (head!5826 Nil!29584) (c!411501 (derivative!314 lt!904830 tl!4068)))))))

(declare-fun b!2561714 () Bool)

(assert (=> b!2561714 (= e!1617689 (nullable!2536 (derivative!314 lt!904830 tl!4068)))))

(declare-fun b!2561715 () Bool)

(declare-fun res!1078475 () Bool)

(assert (=> b!2561715 (=> (not res!1078475) (not e!1617685))))

(assert (=> b!2561715 (= res!1078475 (not call!164168))))

(declare-fun b!2561716 () Bool)

(assert (=> b!2561716 (= e!1617689 (matchR!3564 (derivativeStep!2188 (derivative!314 lt!904830 tl!4068) (head!5826 Nil!29584)) (tail!4101 Nil!29584)))))

(assert (= (and d!725579 c!411588) b!2561714))

(assert (= (and d!725579 (not c!411588)) b!2561716))

(assert (= (and d!725579 c!411587) b!2561711))

(assert (= (and d!725579 (not c!411587)) b!2561707))

(assert (= (and b!2561707 c!411589) b!2561708))

(assert (= (and b!2561707 (not c!411589)) b!2561703))

(assert (= (and b!2561703 (not res!1078480)) b!2561706))

(assert (= (and b!2561706 res!1078476) b!2561715))

(assert (= (and b!2561715 res!1078475) b!2561709))

(assert (= (and b!2561709 res!1078482) b!2561704))

(assert (= (and b!2561706 (not res!1078481)) b!2561712))

(assert (= (and b!2561712 res!1078479) b!2561705))

(assert (= (and b!2561705 (not res!1078478)) b!2561710))

(assert (= (and b!2561710 (not res!1078477)) b!2561713))

(assert (= (or b!2561711 b!2561705 b!2561715) bm!164163))

(declare-fun m!2901593 () Bool)

(assert (=> b!2561716 m!2901593))

(assert (=> b!2561716 m!2901421))

(assert (=> b!2561716 m!2901593))

(declare-fun m!2901597 () Bool)

(assert (=> b!2561716 m!2901597))

(declare-fun m!2901599 () Bool)

(assert (=> b!2561716 m!2901599))

(assert (=> b!2561716 m!2901597))

(assert (=> b!2561716 m!2901599))

(declare-fun m!2901601 () Bool)

(assert (=> b!2561716 m!2901601))

(assert (=> b!2561714 m!2901421))

(declare-fun m!2901603 () Bool)

(assert (=> b!2561714 m!2901603))

(assert (=> b!2561704 m!2901593))

(declare-fun m!2901605 () Bool)

(assert (=> d!725579 m!2901605))

(assert (=> d!725579 m!2901421))

(declare-fun m!2901607 () Bool)

(assert (=> d!725579 m!2901607))

(assert (=> bm!164163 m!2901605))

(assert (=> b!2561709 m!2901599))

(assert (=> b!2561709 m!2901599))

(declare-fun m!2901609 () Bool)

(assert (=> b!2561709 m!2901609))

(assert (=> b!2561713 m!2901593))

(assert (=> b!2561710 m!2901599))

(assert (=> b!2561710 m!2901599))

(assert (=> b!2561710 m!2901609))

(assert (=> b!2561417 d!725579))

(declare-fun bm!164165 () Bool)

(declare-fun call!164170 () Bool)

(assert (=> bm!164165 (= call!164170 (isEmpty!17042 Nil!29584))))

(declare-fun b!2561731 () Bool)

(declare-fun res!1078496 () Bool)

(declare-fun e!1617702 () Bool)

(assert (=> b!2561731 (=> res!1078496 e!1617702)))

(assert (=> b!2561731 (= res!1078496 (not ((_ is ElementMatch!7619) lt!904825)))))

(declare-fun e!1617700 () Bool)

(assert (=> b!2561731 (= e!1617700 e!1617702)))

(declare-fun b!2561732 () Bool)

(declare-fun e!1617699 () Bool)

(assert (=> b!2561732 (= e!1617699 (= (head!5826 Nil!29584) (c!411501 lt!904825)))))

(declare-fun b!2561733 () Bool)

(declare-fun e!1617704 () Bool)

(declare-fun e!1617701 () Bool)

(assert (=> b!2561733 (= e!1617704 e!1617701)))

(declare-fun res!1078494 () Bool)

(assert (=> b!2561733 (=> res!1078494 e!1617701)))

(assert (=> b!2561733 (= res!1078494 call!164170)))

(declare-fun b!2561734 () Bool)

(declare-fun res!1078497 () Bool)

(assert (=> b!2561734 (=> res!1078497 e!1617702)))

(assert (=> b!2561734 (= res!1078497 e!1617699)))

(declare-fun res!1078492 () Bool)

(assert (=> b!2561734 (=> (not res!1078492) (not e!1617699))))

(declare-fun lt!904870 () Bool)

(assert (=> b!2561734 (= res!1078492 lt!904870)))

(declare-fun b!2561735 () Bool)

(declare-fun e!1617698 () Bool)

(assert (=> b!2561735 (= e!1617698 e!1617700)))

(declare-fun c!411595 () Bool)

(assert (=> b!2561735 (= c!411595 ((_ is EmptyLang!7619) lt!904825))))

(declare-fun b!2561736 () Bool)

(assert (=> b!2561736 (= e!1617700 (not lt!904870))))

(declare-fun b!2561737 () Bool)

(declare-fun res!1078498 () Bool)

(assert (=> b!2561737 (=> (not res!1078498) (not e!1617699))))

(assert (=> b!2561737 (= res!1078498 (isEmpty!17042 (tail!4101 Nil!29584)))))

(declare-fun d!725585 () Bool)

(assert (=> d!725585 e!1617698))

(declare-fun c!411593 () Bool)

(assert (=> d!725585 (= c!411593 ((_ is EmptyExpr!7619) lt!904825))))

(declare-fun e!1617703 () Bool)

(assert (=> d!725585 (= lt!904870 e!1617703)))

(declare-fun c!411594 () Bool)

(assert (=> d!725585 (= c!411594 (isEmpty!17042 Nil!29584))))

(assert (=> d!725585 (validRegex!3245 lt!904825)))

(assert (=> d!725585 (= (matchR!3564 lt!904825 Nil!29584) lt!904870)))

(declare-fun b!2561738 () Bool)

(declare-fun res!1078493 () Bool)

(assert (=> b!2561738 (=> res!1078493 e!1617701)))

(assert (=> b!2561738 (= res!1078493 (not (isEmpty!17042 (tail!4101 Nil!29584))))))

(declare-fun b!2561739 () Bool)

(assert (=> b!2561739 (= e!1617698 (= lt!904870 call!164170))))

(declare-fun b!2561740 () Bool)

(assert (=> b!2561740 (= e!1617702 e!1617704)))

(declare-fun res!1078495 () Bool)

(assert (=> b!2561740 (=> (not res!1078495) (not e!1617704))))

(assert (=> b!2561740 (= res!1078495 (not lt!904870))))

(declare-fun b!2561741 () Bool)

(assert (=> b!2561741 (= e!1617701 (not (= (head!5826 Nil!29584) (c!411501 lt!904825))))))

(declare-fun b!2561742 () Bool)

(assert (=> b!2561742 (= e!1617703 (nullable!2536 lt!904825))))

(declare-fun b!2561743 () Bool)

(declare-fun res!1078491 () Bool)

(assert (=> b!2561743 (=> (not res!1078491) (not e!1617699))))

(assert (=> b!2561743 (= res!1078491 (not call!164170))))

(declare-fun b!2561744 () Bool)

(assert (=> b!2561744 (= e!1617703 (matchR!3564 (derivativeStep!2188 lt!904825 (head!5826 Nil!29584)) (tail!4101 Nil!29584)))))

(assert (= (and d!725585 c!411594) b!2561742))

(assert (= (and d!725585 (not c!411594)) b!2561744))

(assert (= (and d!725585 c!411593) b!2561739))

(assert (= (and d!725585 (not c!411593)) b!2561735))

(assert (= (and b!2561735 c!411595) b!2561736))

(assert (= (and b!2561735 (not c!411595)) b!2561731))

(assert (= (and b!2561731 (not res!1078496)) b!2561734))

(assert (= (and b!2561734 res!1078492) b!2561743))

(assert (= (and b!2561743 res!1078491) b!2561737))

(assert (= (and b!2561737 res!1078498) b!2561732))

(assert (= (and b!2561734 (not res!1078497)) b!2561740))

(assert (= (and b!2561740 res!1078495) b!2561733))

(assert (= (and b!2561733 (not res!1078494)) b!2561738))

(assert (= (and b!2561738 (not res!1078493)) b!2561741))

(assert (= (or b!2561739 b!2561733 b!2561743) bm!164165))

(assert (=> b!2561744 m!2901593))

(assert (=> b!2561744 m!2901593))

(declare-fun m!2901611 () Bool)

(assert (=> b!2561744 m!2901611))

(assert (=> b!2561744 m!2901599))

(assert (=> b!2561744 m!2901611))

(assert (=> b!2561744 m!2901599))

(declare-fun m!2901613 () Bool)

(assert (=> b!2561744 m!2901613))

(assert (=> b!2561742 m!2901417))

(assert (=> b!2561732 m!2901593))

(assert (=> d!725585 m!2901605))

(declare-fun m!2901615 () Bool)

(assert (=> d!725585 m!2901615))

(assert (=> bm!164165 m!2901605))

(assert (=> b!2561737 m!2901599))

(assert (=> b!2561737 m!2901599))

(assert (=> b!2561737 m!2901609))

(assert (=> b!2561741 m!2901593))

(assert (=> b!2561738 m!2901599))

(assert (=> b!2561738 m!2901599))

(assert (=> b!2561738 m!2901609))

(assert (=> b!2561422 d!725585))

(declare-fun d!725587 () Bool)

(assert (=> d!725587 (= (matchR!3564 lt!904832 tl!4068) (matchR!3564 (derivative!314 lt!904832 tl!4068) Nil!29584))))

(declare-fun lt!904871 () Unit!43423)

(assert (=> d!725587 (= lt!904871 (choose!15116 lt!904832 tl!4068))))

(assert (=> d!725587 (validRegex!3245 lt!904832)))

(assert (=> d!725587 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!210 lt!904832 tl!4068) lt!904871)))

(declare-fun bs!469838 () Bool)

(assert (= bs!469838 d!725587))

(assert (=> bs!469838 m!2901409))

(assert (=> bs!469838 m!2901411))

(declare-fun m!2901617 () Bool)

(assert (=> bs!469838 m!2901617))

(assert (=> bs!469838 m!2901409))

(declare-fun m!2901619 () Bool)

(assert (=> bs!469838 m!2901619))

(assert (=> bs!469838 m!2901441))

(assert (=> b!2561422 d!725587))

(declare-fun b!2561816 () Bool)

(declare-fun e!1617742 () Bool)

(declare-fun call!164182 () Bool)

(assert (=> b!2561816 (= e!1617742 call!164182)))

(declare-fun b!2561817 () Bool)

(declare-fun e!1617741 () Bool)

(declare-fun call!164181 () Bool)

(assert (=> b!2561817 (= e!1617741 call!164181)))

(declare-fun d!725589 () Bool)

(declare-fun res!1078518 () Bool)

(declare-fun e!1617747 () Bool)

(assert (=> d!725589 (=> res!1078518 e!1617747)))

(assert (=> d!725589 (= res!1078518 ((_ is ElementMatch!7619) (regTwo!15750 r!27340)))))

(assert (=> d!725589 (= (validRegex!3245 (regTwo!15750 r!27340)) e!1617747)))

(declare-fun b!2561818 () Bool)

(declare-fun e!1617746 () Bool)

(declare-fun e!1617743 () Bool)

(assert (=> b!2561818 (= e!1617746 e!1617743)))

(declare-fun res!1078517 () Bool)

(assert (=> b!2561818 (= res!1078517 (not (nullable!2536 (reg!7948 (regTwo!15750 r!27340)))))))

(assert (=> b!2561818 (=> (not res!1078517) (not e!1617743))))

(declare-fun b!2561819 () Bool)

(declare-fun e!1617745 () Bool)

(assert (=> b!2561819 (= e!1617745 e!1617741)))

(declare-fun res!1078515 () Bool)

(assert (=> b!2561819 (=> (not res!1078515) (not e!1617741))))

(assert (=> b!2561819 (= res!1078515 call!164182)))

(declare-fun b!2561820 () Bool)

(assert (=> b!2561820 (= e!1617747 e!1617746)))

(declare-fun c!411606 () Bool)

(assert (=> b!2561820 (= c!411606 ((_ is Star!7619) (regTwo!15750 r!27340)))))

(declare-fun bm!164176 () Bool)

(declare-fun call!164183 () Bool)

(assert (=> bm!164176 (= call!164181 call!164183)))

(declare-fun b!2561821 () Bool)

(declare-fun res!1078516 () Bool)

(assert (=> b!2561821 (=> (not res!1078516) (not e!1617742))))

(assert (=> b!2561821 (= res!1078516 call!164181)))

(declare-fun e!1617744 () Bool)

(assert (=> b!2561821 (= e!1617744 e!1617742)))

(declare-fun b!2561822 () Bool)

(declare-fun res!1078519 () Bool)

(assert (=> b!2561822 (=> res!1078519 e!1617745)))

(assert (=> b!2561822 (= res!1078519 (not ((_ is Concat!12315) (regTwo!15750 r!27340))))))

(assert (=> b!2561822 (= e!1617744 e!1617745)))

(declare-fun b!2561823 () Bool)

(assert (=> b!2561823 (= e!1617743 call!164183)))

(declare-fun bm!164177 () Bool)

(declare-fun c!411607 () Bool)

(assert (=> bm!164177 (= call!164182 (validRegex!3245 (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))

(declare-fun bm!164178 () Bool)

(assert (=> bm!164178 (= call!164183 (validRegex!3245 (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))))

(declare-fun b!2561824 () Bool)

(assert (=> b!2561824 (= e!1617746 e!1617744)))

(assert (=> b!2561824 (= c!411607 ((_ is Union!7619) (regTwo!15750 r!27340)))))

(assert (= (and d!725589 (not res!1078518)) b!2561820))

(assert (= (and b!2561820 c!411606) b!2561818))

(assert (= (and b!2561820 (not c!411606)) b!2561824))

(assert (= (and b!2561818 res!1078517) b!2561823))

(assert (= (and b!2561824 c!411607) b!2561821))

(assert (= (and b!2561824 (not c!411607)) b!2561822))

(assert (= (and b!2561821 res!1078516) b!2561816))

(assert (= (and b!2561822 (not res!1078519)) b!2561819))

(assert (= (and b!2561819 res!1078515) b!2561817))

(assert (= (or b!2561821 b!2561817) bm!164176))

(assert (= (or b!2561816 b!2561819) bm!164177))

(assert (= (or b!2561823 bm!164176) bm!164178))

(declare-fun m!2901641 () Bool)

(assert (=> b!2561818 m!2901641))

(declare-fun m!2901643 () Bool)

(assert (=> bm!164177 m!2901643))

(declare-fun m!2901645 () Bool)

(assert (=> bm!164178 m!2901645))

(assert (=> b!2561422 d!725589))

(declare-fun d!725599 () Bool)

(declare-fun lt!904877 () Regex!7619)

(assert (=> d!725599 (validRegex!3245 lt!904877)))

(declare-fun e!1617748 () Regex!7619)

(assert (=> d!725599 (= lt!904877 e!1617748)))

(declare-fun c!411608 () Bool)

(assert (=> d!725599 (= c!411608 ((_ is Cons!29584) tl!4068))))

(assert (=> d!725599 (validRegex!3245 lt!904832)))

(assert (=> d!725599 (= (derivative!314 lt!904832 tl!4068) lt!904877)))

(declare-fun b!2561825 () Bool)

(assert (=> b!2561825 (= e!1617748 (derivative!314 (derivativeStep!2188 lt!904832 (h!35004 tl!4068)) (t!211383 tl!4068)))))

(declare-fun b!2561826 () Bool)

(assert (=> b!2561826 (= e!1617748 lt!904832)))

(assert (= (and d!725599 c!411608) b!2561825))

(assert (= (and d!725599 (not c!411608)) b!2561826))

(declare-fun m!2901647 () Bool)

(assert (=> d!725599 m!2901647))

(assert (=> d!725599 m!2901441))

(declare-fun m!2901649 () Bool)

(assert (=> b!2561825 m!2901649))

(assert (=> b!2561825 m!2901649))

(declare-fun m!2901651 () Bool)

(assert (=> b!2561825 m!2901651))

(assert (=> b!2561422 d!725599))

(declare-fun bm!164179 () Bool)

(declare-fun call!164184 () Bool)

(assert (=> bm!164179 (= call!164184 (isEmpty!17042 tl!4068))))

(declare-fun b!2561827 () Bool)

(declare-fun res!1078525 () Bool)

(declare-fun e!1617753 () Bool)

(assert (=> b!2561827 (=> res!1078525 e!1617753)))

(assert (=> b!2561827 (= res!1078525 (not ((_ is ElementMatch!7619) lt!904832)))))

(declare-fun e!1617751 () Bool)

(assert (=> b!2561827 (= e!1617751 e!1617753)))

(declare-fun b!2561828 () Bool)

(declare-fun e!1617750 () Bool)

(assert (=> b!2561828 (= e!1617750 (= (head!5826 tl!4068) (c!411501 lt!904832)))))

(declare-fun b!2561829 () Bool)

(declare-fun e!1617755 () Bool)

(declare-fun e!1617752 () Bool)

(assert (=> b!2561829 (= e!1617755 e!1617752)))

(declare-fun res!1078523 () Bool)

(assert (=> b!2561829 (=> res!1078523 e!1617752)))

(assert (=> b!2561829 (= res!1078523 call!164184)))

(declare-fun b!2561830 () Bool)

(declare-fun res!1078526 () Bool)

(assert (=> b!2561830 (=> res!1078526 e!1617753)))

(assert (=> b!2561830 (= res!1078526 e!1617750)))

(declare-fun res!1078521 () Bool)

(assert (=> b!2561830 (=> (not res!1078521) (not e!1617750))))

(declare-fun lt!904878 () Bool)

(assert (=> b!2561830 (= res!1078521 lt!904878)))

(declare-fun b!2561831 () Bool)

(declare-fun e!1617749 () Bool)

(assert (=> b!2561831 (= e!1617749 e!1617751)))

(declare-fun c!411611 () Bool)

(assert (=> b!2561831 (= c!411611 ((_ is EmptyLang!7619) lt!904832))))

(declare-fun b!2561832 () Bool)

(assert (=> b!2561832 (= e!1617751 (not lt!904878))))

(declare-fun b!2561833 () Bool)

(declare-fun res!1078527 () Bool)

(assert (=> b!2561833 (=> (not res!1078527) (not e!1617750))))

(assert (=> b!2561833 (= res!1078527 (isEmpty!17042 (tail!4101 tl!4068)))))

(declare-fun d!725601 () Bool)

(assert (=> d!725601 e!1617749))

(declare-fun c!411609 () Bool)

(assert (=> d!725601 (= c!411609 ((_ is EmptyExpr!7619) lt!904832))))

(declare-fun e!1617754 () Bool)

(assert (=> d!725601 (= lt!904878 e!1617754)))

(declare-fun c!411610 () Bool)

(assert (=> d!725601 (= c!411610 (isEmpty!17042 tl!4068))))

(assert (=> d!725601 (validRegex!3245 lt!904832)))

(assert (=> d!725601 (= (matchR!3564 lt!904832 tl!4068) lt!904878)))

(declare-fun b!2561834 () Bool)

(declare-fun res!1078522 () Bool)

(assert (=> b!2561834 (=> res!1078522 e!1617752)))

(assert (=> b!2561834 (= res!1078522 (not (isEmpty!17042 (tail!4101 tl!4068))))))

(declare-fun b!2561835 () Bool)

(assert (=> b!2561835 (= e!1617749 (= lt!904878 call!164184))))

(declare-fun b!2561836 () Bool)

(assert (=> b!2561836 (= e!1617753 e!1617755)))

(declare-fun res!1078524 () Bool)

(assert (=> b!2561836 (=> (not res!1078524) (not e!1617755))))

(assert (=> b!2561836 (= res!1078524 (not lt!904878))))

(declare-fun b!2561837 () Bool)

(assert (=> b!2561837 (= e!1617752 (not (= (head!5826 tl!4068) (c!411501 lt!904832))))))

(declare-fun b!2561838 () Bool)

(assert (=> b!2561838 (= e!1617754 (nullable!2536 lt!904832))))

(declare-fun b!2561839 () Bool)

(declare-fun res!1078520 () Bool)

(assert (=> b!2561839 (=> (not res!1078520) (not e!1617750))))

(assert (=> b!2561839 (= res!1078520 (not call!164184))))

(declare-fun b!2561840 () Bool)

(assert (=> b!2561840 (= e!1617754 (matchR!3564 (derivativeStep!2188 lt!904832 (head!5826 tl!4068)) (tail!4101 tl!4068)))))

(assert (= (and d!725601 c!411610) b!2561838))

(assert (= (and d!725601 (not c!411610)) b!2561840))

(assert (= (and d!725601 c!411609) b!2561835))

(assert (= (and d!725601 (not c!411609)) b!2561831))

(assert (= (and b!2561831 c!411611) b!2561832))

(assert (= (and b!2561831 (not c!411611)) b!2561827))

(assert (= (and b!2561827 (not res!1078525)) b!2561830))

(assert (= (and b!2561830 res!1078521) b!2561839))

(assert (= (and b!2561839 res!1078520) b!2561833))

(assert (= (and b!2561833 res!1078527) b!2561828))

(assert (= (and b!2561830 (not res!1078526)) b!2561836))

(assert (= (and b!2561836 res!1078524) b!2561829))

(assert (= (and b!2561829 (not res!1078523)) b!2561834))

(assert (= (and b!2561834 (not res!1078522)) b!2561837))

(assert (= (or b!2561835 b!2561829 b!2561839) bm!164179))

(assert (=> b!2561840 m!2901455))

(assert (=> b!2561840 m!2901455))

(declare-fun m!2901653 () Bool)

(assert (=> b!2561840 m!2901653))

(assert (=> b!2561840 m!2901459))

(assert (=> b!2561840 m!2901653))

(assert (=> b!2561840 m!2901459))

(declare-fun m!2901655 () Bool)

(assert (=> b!2561840 m!2901655))

(declare-fun m!2901657 () Bool)

(assert (=> b!2561838 m!2901657))

(assert (=> b!2561828 m!2901455))

(assert (=> d!725601 m!2901465))

(assert (=> d!725601 m!2901441))

(assert (=> bm!164179 m!2901465))

(assert (=> b!2561833 m!2901459))

(assert (=> b!2561833 m!2901459))

(assert (=> b!2561833 m!2901467))

(assert (=> b!2561837 m!2901455))

(assert (=> b!2561834 m!2901459))

(assert (=> b!2561834 m!2901459))

(assert (=> b!2561834 m!2901467))

(assert (=> b!2561422 d!725601))

(declare-fun d!725603 () Bool)

(declare-fun nullableFct!761 (Regex!7619) Bool)

(assert (=> d!725603 (= (nullable!2536 lt!904825) (nullableFct!761 lt!904825))))

(declare-fun bs!469841 () Bool)

(assert (= bs!469841 d!725603))

(declare-fun m!2901659 () Bool)

(assert (=> bs!469841 m!2901659))

(assert (=> b!2561418 d!725603))

(declare-fun b!2561841 () Bool)

(declare-fun e!1617757 () Bool)

(declare-fun call!164186 () Bool)

(assert (=> b!2561841 (= e!1617757 call!164186)))

(declare-fun b!2561842 () Bool)

(declare-fun e!1617756 () Bool)

(declare-fun call!164185 () Bool)

(assert (=> b!2561842 (= e!1617756 call!164185)))

(declare-fun d!725605 () Bool)

(declare-fun res!1078531 () Bool)

(declare-fun e!1617762 () Bool)

(assert (=> d!725605 (=> res!1078531 e!1617762)))

(assert (=> d!725605 (= res!1078531 ((_ is ElementMatch!7619) r!27340))))

(assert (=> d!725605 (= (validRegex!3245 r!27340) e!1617762)))

(declare-fun b!2561843 () Bool)

(declare-fun e!1617761 () Bool)

(declare-fun e!1617758 () Bool)

(assert (=> b!2561843 (= e!1617761 e!1617758)))

(declare-fun res!1078530 () Bool)

(assert (=> b!2561843 (= res!1078530 (not (nullable!2536 (reg!7948 r!27340))))))

(assert (=> b!2561843 (=> (not res!1078530) (not e!1617758))))

(declare-fun b!2561844 () Bool)

(declare-fun e!1617760 () Bool)

(assert (=> b!2561844 (= e!1617760 e!1617756)))

(declare-fun res!1078528 () Bool)

(assert (=> b!2561844 (=> (not res!1078528) (not e!1617756))))

(assert (=> b!2561844 (= res!1078528 call!164186)))

(declare-fun b!2561845 () Bool)

(assert (=> b!2561845 (= e!1617762 e!1617761)))

(declare-fun c!411612 () Bool)

(assert (=> b!2561845 (= c!411612 ((_ is Star!7619) r!27340))))

(declare-fun bm!164180 () Bool)

(declare-fun call!164187 () Bool)

(assert (=> bm!164180 (= call!164185 call!164187)))

(declare-fun b!2561846 () Bool)

(declare-fun res!1078529 () Bool)

(assert (=> b!2561846 (=> (not res!1078529) (not e!1617757))))

(assert (=> b!2561846 (= res!1078529 call!164185)))

(declare-fun e!1617759 () Bool)

(assert (=> b!2561846 (= e!1617759 e!1617757)))

(declare-fun b!2561847 () Bool)

(declare-fun res!1078532 () Bool)

(assert (=> b!2561847 (=> res!1078532 e!1617760)))

(assert (=> b!2561847 (= res!1078532 (not ((_ is Concat!12315) r!27340)))))

(assert (=> b!2561847 (= e!1617759 e!1617760)))

(declare-fun b!2561848 () Bool)

(assert (=> b!2561848 (= e!1617758 call!164187)))

(declare-fun bm!164181 () Bool)

(declare-fun c!411613 () Bool)

(assert (=> bm!164181 (= call!164186 (validRegex!3245 (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))))))

(declare-fun bm!164182 () Bool)

(assert (=> bm!164182 (= call!164187 (validRegex!3245 (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))))))

(declare-fun b!2561849 () Bool)

(assert (=> b!2561849 (= e!1617761 e!1617759)))

(assert (=> b!2561849 (= c!411613 ((_ is Union!7619) r!27340))))

(assert (= (and d!725605 (not res!1078531)) b!2561845))

(assert (= (and b!2561845 c!411612) b!2561843))

(assert (= (and b!2561845 (not c!411612)) b!2561849))

(assert (= (and b!2561843 res!1078530) b!2561848))

(assert (= (and b!2561849 c!411613) b!2561846))

(assert (= (and b!2561849 (not c!411613)) b!2561847))

(assert (= (and b!2561846 res!1078529) b!2561841))

(assert (= (and b!2561847 (not res!1078532)) b!2561844))

(assert (= (and b!2561844 res!1078528) b!2561842))

(assert (= (or b!2561846 b!2561842) bm!164180))

(assert (= (or b!2561841 b!2561844) bm!164181))

(assert (= (or b!2561848 bm!164180) bm!164182))

(declare-fun m!2901661 () Bool)

(assert (=> b!2561843 m!2901661))

(declare-fun m!2901663 () Bool)

(assert (=> bm!164181 m!2901663))

(declare-fun m!2901665 () Bool)

(assert (=> bm!164182 m!2901665))

(assert (=> start!247972 d!725605))

(declare-fun d!725607 () Bool)

(assert (=> d!725607 (= (nullable!2536 (regOne!15750 r!27340)) (nullableFct!761 (regOne!15750 r!27340)))))

(declare-fun bs!469842 () Bool)

(assert (= bs!469842 d!725607))

(declare-fun m!2901667 () Bool)

(assert (=> bs!469842 m!2901667))

(assert (=> b!2561425 d!725607))

(declare-fun d!725609 () Bool)

(assert (=> d!725609 (= (nullable!2536 (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)) (nullableFct!761 (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469843 () Bool)

(assert (= bs!469843 d!725609))

(assert (=> bs!469843 m!2901403))

(declare-fun m!2901669 () Bool)

(assert (=> bs!469843 m!2901669))

(assert (=> b!2561415 d!725609))

(declare-fun d!725611 () Bool)

(declare-fun lt!904879 () Regex!7619)

(assert (=> d!725611 (validRegex!3245 lt!904879)))

(declare-fun e!1617763 () Regex!7619)

(assert (=> d!725611 (= lt!904879 e!1617763)))

(declare-fun c!411614 () Bool)

(assert (=> d!725611 (= c!411614 ((_ is Cons!29584) tl!4068))))

(assert (=> d!725611 (validRegex!3245 (derivativeStep!2188 r!27340 c!14016))))

(assert (=> d!725611 (= (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068) lt!904879)))

(declare-fun b!2561850 () Bool)

(assert (=> b!2561850 (= e!1617763 (derivative!314 (derivativeStep!2188 (derivativeStep!2188 r!27340 c!14016) (h!35004 tl!4068)) (t!211383 tl!4068)))))

(declare-fun b!2561851 () Bool)

(assert (=> b!2561851 (= e!1617763 (derivativeStep!2188 r!27340 c!14016))))

(assert (= (and d!725611 c!411614) b!2561850))

(assert (= (and d!725611 (not c!411614)) b!2561851))

(declare-fun m!2901671 () Bool)

(assert (=> d!725611 m!2901671))

(assert (=> d!725611 m!2901401))

(declare-fun m!2901673 () Bool)

(assert (=> d!725611 m!2901673))

(assert (=> b!2561850 m!2901401))

(declare-fun m!2901675 () Bool)

(assert (=> b!2561850 m!2901675))

(assert (=> b!2561850 m!2901675))

(declare-fun m!2901677 () Bool)

(assert (=> b!2561850 m!2901677))

(assert (=> b!2561415 d!725611))

(declare-fun b!2561852 () Bool)

(declare-fun e!1617768 () Regex!7619)

(assert (=> b!2561852 (= e!1617768 EmptyLang!7619)))

(declare-fun b!2561853 () Bool)

(declare-fun e!1617765 () Regex!7619)

(declare-fun call!164188 () Regex!7619)

(assert (=> b!2561853 (= e!1617765 (Union!7619 (Concat!12315 call!164188 (regTwo!15750 r!27340)) EmptyLang!7619))))

(declare-fun bm!164183 () Bool)

(declare-fun call!164190 () Regex!7619)

(assert (=> bm!164183 (= call!164188 call!164190)))

(declare-fun b!2561854 () Bool)

(declare-fun e!1617764 () Regex!7619)

(declare-fun e!1617766 () Regex!7619)

(assert (=> b!2561854 (= e!1617764 e!1617766)))

(declare-fun c!411618 () Bool)

(assert (=> b!2561854 (= c!411618 ((_ is Star!7619) r!27340))))

(declare-fun b!2561855 () Bool)

(declare-fun e!1617767 () Regex!7619)

(assert (=> b!2561855 (= e!1617768 e!1617767)))

(declare-fun c!411615 () Bool)

(assert (=> b!2561855 (= c!411615 ((_ is ElementMatch!7619) r!27340))))

(declare-fun bm!164184 () Bool)

(declare-fun call!164191 () Regex!7619)

(declare-fun c!411616 () Bool)

(assert (=> bm!164184 (= call!164191 (derivativeStep!2188 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)) c!14016))))

(declare-fun b!2561856 () Bool)

(assert (=> b!2561856 (= e!1617767 (ite (= c!14016 (c!411501 r!27340)) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164185 () Bool)

(declare-fun call!164189 () Regex!7619)

(assert (=> bm!164185 (= call!164190 call!164189)))

(declare-fun b!2561857 () Bool)

(assert (=> b!2561857 (= e!1617764 (Union!7619 call!164189 call!164191))))

(declare-fun b!2561858 () Bool)

(declare-fun c!411617 () Bool)

(assert (=> b!2561858 (= c!411617 (nullable!2536 (regOne!15750 r!27340)))))

(assert (=> b!2561858 (= e!1617766 e!1617765)))

(declare-fun bm!164186 () Bool)

(assert (=> bm!164186 (= call!164189 (derivativeStep!2188 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))) c!14016))))

(declare-fun b!2561860 () Bool)

(assert (=> b!2561860 (= e!1617765 (Union!7619 (Concat!12315 call!164188 (regTwo!15750 r!27340)) call!164191))))

(declare-fun b!2561861 () Bool)

(assert (=> b!2561861 (= e!1617766 (Concat!12315 call!164190 r!27340))))

(declare-fun d!725613 () Bool)

(declare-fun lt!904880 () Regex!7619)

(assert (=> d!725613 (validRegex!3245 lt!904880)))

(assert (=> d!725613 (= lt!904880 e!1617768)))

(declare-fun c!411619 () Bool)

(assert (=> d!725613 (= c!411619 (or ((_ is EmptyExpr!7619) r!27340) ((_ is EmptyLang!7619) r!27340)))))

(assert (=> d!725613 (validRegex!3245 r!27340)))

(assert (=> d!725613 (= (derivativeStep!2188 r!27340 c!14016) lt!904880)))

(declare-fun b!2561859 () Bool)

(assert (=> b!2561859 (= c!411616 ((_ is Union!7619) r!27340))))

(assert (=> b!2561859 (= e!1617767 e!1617764)))

(assert (= (and d!725613 c!411619) b!2561852))

(assert (= (and d!725613 (not c!411619)) b!2561855))

(assert (= (and b!2561855 c!411615) b!2561856))

(assert (= (and b!2561855 (not c!411615)) b!2561859))

(assert (= (and b!2561859 c!411616) b!2561857))

(assert (= (and b!2561859 (not c!411616)) b!2561854))

(assert (= (and b!2561854 c!411618) b!2561861))

(assert (= (and b!2561854 (not c!411618)) b!2561858))

(assert (= (and b!2561858 c!411617) b!2561860))

(assert (= (and b!2561858 (not c!411617)) b!2561853))

(assert (= (or b!2561860 b!2561853) bm!164183))

(assert (= (or b!2561861 bm!164183) bm!164185))

(assert (= (or b!2561857 b!2561860) bm!164184))

(assert (= (or b!2561857 bm!164185) bm!164186))

(declare-fun m!2901679 () Bool)

(assert (=> bm!164184 m!2901679))

(assert (=> b!2561858 m!2901399))

(declare-fun m!2901681 () Bool)

(assert (=> bm!164186 m!2901681))

(declare-fun m!2901683 () Bool)

(assert (=> d!725613 m!2901683))

(assert (=> d!725613 m!2901419))

(assert (=> b!2561415 d!725613))

(assert (=> b!2561421 d!725601))

(declare-fun b!2561866 () Bool)

(declare-fun e!1617771 () Bool)

(declare-fun tp!815795 () Bool)

(assert (=> b!2561866 (= e!1617771 (and tp_is_empty!13093 tp!815795))))

(assert (=> b!2561416 (= tp!815751 e!1617771)))

(assert (= (and b!2561416 ((_ is Cons!29584) (t!211383 tl!4068))) b!2561866))

(declare-fun b!2561879 () Bool)

(declare-fun e!1617774 () Bool)

(declare-fun tp!815809 () Bool)

(assert (=> b!2561879 (= e!1617774 tp!815809)))

(declare-fun b!2561877 () Bool)

(assert (=> b!2561877 (= e!1617774 tp_is_empty!13093)))

(assert (=> b!2561423 (= tp!815754 e!1617774)))

(declare-fun b!2561880 () Bool)

(declare-fun tp!815807 () Bool)

(declare-fun tp!815810 () Bool)

(assert (=> b!2561880 (= e!1617774 (and tp!815807 tp!815810))))

(declare-fun b!2561878 () Bool)

(declare-fun tp!815808 () Bool)

(declare-fun tp!815806 () Bool)

(assert (=> b!2561878 (= e!1617774 (and tp!815808 tp!815806))))

(assert (= (and b!2561423 ((_ is ElementMatch!7619) (regOne!15751 r!27340))) b!2561877))

(assert (= (and b!2561423 ((_ is Concat!12315) (regOne!15751 r!27340))) b!2561878))

(assert (= (and b!2561423 ((_ is Star!7619) (regOne!15751 r!27340))) b!2561879))

(assert (= (and b!2561423 ((_ is Union!7619) (regOne!15751 r!27340))) b!2561880))

(declare-fun b!2561883 () Bool)

(declare-fun e!1617775 () Bool)

(declare-fun tp!815814 () Bool)

(assert (=> b!2561883 (= e!1617775 tp!815814)))

(declare-fun b!2561881 () Bool)

(assert (=> b!2561881 (= e!1617775 tp_is_empty!13093)))

(assert (=> b!2561423 (= tp!815753 e!1617775)))

(declare-fun b!2561884 () Bool)

(declare-fun tp!815812 () Bool)

(declare-fun tp!815815 () Bool)

(assert (=> b!2561884 (= e!1617775 (and tp!815812 tp!815815))))

(declare-fun b!2561882 () Bool)

(declare-fun tp!815813 () Bool)

(declare-fun tp!815811 () Bool)

(assert (=> b!2561882 (= e!1617775 (and tp!815813 tp!815811))))

(assert (= (and b!2561423 ((_ is ElementMatch!7619) (regTwo!15751 r!27340))) b!2561881))

(assert (= (and b!2561423 ((_ is Concat!12315) (regTwo!15751 r!27340))) b!2561882))

(assert (= (and b!2561423 ((_ is Star!7619) (regTwo!15751 r!27340))) b!2561883))

(assert (= (and b!2561423 ((_ is Union!7619) (regTwo!15751 r!27340))) b!2561884))

(declare-fun b!2561887 () Bool)

(declare-fun e!1617776 () Bool)

(declare-fun tp!815819 () Bool)

(assert (=> b!2561887 (= e!1617776 tp!815819)))

(declare-fun b!2561885 () Bool)

(assert (=> b!2561885 (= e!1617776 tp_is_empty!13093)))

(assert (=> b!2561420 (= tp!815752 e!1617776)))

(declare-fun b!2561888 () Bool)

(declare-fun tp!815817 () Bool)

(declare-fun tp!815820 () Bool)

(assert (=> b!2561888 (= e!1617776 (and tp!815817 tp!815820))))

(declare-fun b!2561886 () Bool)

(declare-fun tp!815818 () Bool)

(declare-fun tp!815816 () Bool)

(assert (=> b!2561886 (= e!1617776 (and tp!815818 tp!815816))))

(assert (= (and b!2561420 ((_ is ElementMatch!7619) (regOne!15750 r!27340))) b!2561885))

(assert (= (and b!2561420 ((_ is Concat!12315) (regOne!15750 r!27340))) b!2561886))

(assert (= (and b!2561420 ((_ is Star!7619) (regOne!15750 r!27340))) b!2561887))

(assert (= (and b!2561420 ((_ is Union!7619) (regOne!15750 r!27340))) b!2561888))

(declare-fun b!2561891 () Bool)

(declare-fun e!1617777 () Bool)

(declare-fun tp!815824 () Bool)

(assert (=> b!2561891 (= e!1617777 tp!815824)))

(declare-fun b!2561889 () Bool)

(assert (=> b!2561889 (= e!1617777 tp_is_empty!13093)))

(assert (=> b!2561420 (= tp!815750 e!1617777)))

(declare-fun b!2561892 () Bool)

(declare-fun tp!815822 () Bool)

(declare-fun tp!815825 () Bool)

(assert (=> b!2561892 (= e!1617777 (and tp!815822 tp!815825))))

(declare-fun b!2561890 () Bool)

(declare-fun tp!815823 () Bool)

(declare-fun tp!815821 () Bool)

(assert (=> b!2561890 (= e!1617777 (and tp!815823 tp!815821))))

(assert (= (and b!2561420 ((_ is ElementMatch!7619) (regTwo!15750 r!27340))) b!2561889))

(assert (= (and b!2561420 ((_ is Concat!12315) (regTwo!15750 r!27340))) b!2561890))

(assert (= (and b!2561420 ((_ is Star!7619) (regTwo!15750 r!27340))) b!2561891))

(assert (= (and b!2561420 ((_ is Union!7619) (regTwo!15750 r!27340))) b!2561892))

(declare-fun b!2561895 () Bool)

(declare-fun e!1617778 () Bool)

(declare-fun tp!815829 () Bool)

(assert (=> b!2561895 (= e!1617778 tp!815829)))

(declare-fun b!2561893 () Bool)

(assert (=> b!2561893 (= e!1617778 tp_is_empty!13093)))

(assert (=> b!2561426 (= tp!815749 e!1617778)))

(declare-fun b!2561896 () Bool)

(declare-fun tp!815827 () Bool)

(declare-fun tp!815830 () Bool)

(assert (=> b!2561896 (= e!1617778 (and tp!815827 tp!815830))))

(declare-fun b!2561894 () Bool)

(declare-fun tp!815828 () Bool)

(declare-fun tp!815826 () Bool)

(assert (=> b!2561894 (= e!1617778 (and tp!815828 tp!815826))))

(assert (= (and b!2561426 ((_ is ElementMatch!7619) (reg!7948 r!27340))) b!2561893))

(assert (= (and b!2561426 ((_ is Concat!12315) (reg!7948 r!27340))) b!2561894))

(assert (= (and b!2561426 ((_ is Star!7619) (reg!7948 r!27340))) b!2561895))

(assert (= (and b!2561426 ((_ is Union!7619) (reg!7948 r!27340))) b!2561896))

(check-sat (not b!2561503) (not d!725607) (not b!2561704) (not b!2561713) (not d!725585) (not b!2561716) (not b!2561880) (not b!2561449) (not d!725603) (not b!2561895) (not b!2561894) (not bm!164142) (not b!2561858) (not bm!164181) (not bm!164179) (not b!2561738) (not b!2561562) (not b!2561834) (not bm!164186) (not b!2561531) (not d!725611) (not b!2561888) (not d!725599) (not b!2561536) (not b!2561653) (not b!2561499) (not bm!164121) (not b!2561744) (not b!2561843) (not b!2561543) (not bm!164184) (not b!2561818) (not b!2561502) (not d!725551) tp_is_empty!13093 (not bm!164165) (not bm!164177) (not b!2561742) (not b!2561882) (not bm!164182) (not b!2561837) (not b!2561741) (not b!2561541) (not b!2561679) (not b!2561887) (not bm!164150) (not b!2561896) (not bm!164148) (not b!2561537) (not b!2561883) (not bm!164178) (not b!2561710) (not d!725539) (not b!2561838) (not d!725613) (not bm!164120) (not b!2561866) (not d!725609) (not d!725575) (not b!2561892) (not b!2561884) (not b!2561737) (not b!2561540) (not b!2561850) (not b!2561498) (not b!2561878) (not b!2561891) (not d!725573) (not b!2561732) (not b!2561714) (not b!2561450) (not b!2561840) (not b!2561879) (not bm!164163) (not b!2561825) (not b!2561828) (not b!2561505) (not b!2561833) (not b!2561886) (not b!2561493) (not d!725549) (not d!725601) (not b!2561890) (not d!725587) (not d!725553) (not b!2561709) (not d!725543) (not d!725579) (not bm!164140))
(check-sat)
(get-model)

(declare-fun d!725619 () Bool)

(assert (=> d!725619 (= (isEmpty!17042 tl!4068) ((_ is Nil!29584) tl!4068))))

(assert (=> bm!164179 d!725619))

(declare-fun b!2561911 () Bool)

(declare-fun e!1617795 () Regex!7619)

(assert (=> b!2561911 (= e!1617795 EmptyLang!7619)))

(declare-fun e!1617792 () Regex!7619)

(declare-fun call!164196 () Regex!7619)

(declare-fun b!2561912 () Bool)

(assert (=> b!2561912 (= e!1617792 (Union!7619 (Concat!12315 call!164196 (regTwo!15750 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))) EmptyLang!7619))))

(declare-fun bm!164191 () Bool)

(declare-fun call!164198 () Regex!7619)

(assert (=> bm!164191 (= call!164196 call!164198)))

(declare-fun b!2561913 () Bool)

(declare-fun e!1617791 () Regex!7619)

(declare-fun e!1617793 () Regex!7619)

(assert (=> b!2561913 (= e!1617791 e!1617793)))

(declare-fun c!411625 () Bool)

(assert (=> b!2561913 (= c!411625 ((_ is Star!7619) (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))))))

(declare-fun b!2561914 () Bool)

(declare-fun e!1617794 () Regex!7619)

(assert (=> b!2561914 (= e!1617795 e!1617794)))

(declare-fun c!411622 () Bool)

(assert (=> b!2561914 (= c!411622 ((_ is ElementMatch!7619) (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))))))

(declare-fun bm!164192 () Bool)

(declare-fun c!411623 () Bool)

(declare-fun call!164199 () Regex!7619)

(assert (=> bm!164192 (= call!164199 (derivativeStep!2188 (ite c!411623 (regTwo!15751 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))) (regTwo!15750 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))) c!14016))))

(declare-fun b!2561915 () Bool)

(assert (=> b!2561915 (= e!1617794 (ite (= c!14016 (c!411501 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164193 () Bool)

(declare-fun call!164197 () Regex!7619)

(assert (=> bm!164193 (= call!164198 call!164197)))

(declare-fun b!2561916 () Bool)

(assert (=> b!2561916 (= e!1617791 (Union!7619 call!164197 call!164199))))

(declare-fun b!2561917 () Bool)

(declare-fun c!411624 () Bool)

(assert (=> b!2561917 (= c!411624 (nullable!2536 (regOne!15750 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))))

(assert (=> b!2561917 (= e!1617793 e!1617792)))

(declare-fun bm!164194 () Bool)

(assert (=> bm!164194 (= call!164197 (derivativeStep!2188 (ite c!411623 (regOne!15751 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))) (ite c!411625 (reg!7948 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))) (regOne!15750 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))))) c!14016))))

(declare-fun b!2561919 () Bool)

(assert (=> b!2561919 (= e!1617792 (Union!7619 (Concat!12315 call!164196 (regTwo!15750 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))) call!164199))))

(declare-fun b!2561920 () Bool)

(assert (=> b!2561920 (= e!1617793 (Concat!12315 call!164198 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))))))

(declare-fun d!725621 () Bool)

(declare-fun lt!904881 () Regex!7619)

(assert (=> d!725621 (validRegex!3245 lt!904881)))

(assert (=> d!725621 (= lt!904881 e!1617795)))

(declare-fun c!411626 () Bool)

(assert (=> d!725621 (= c!411626 (or ((_ is EmptyExpr!7619) (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))) ((_ is EmptyLang!7619) (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))))

(assert (=> d!725621 (validRegex!3245 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))

(assert (=> d!725621 (= (derivativeStep!2188 (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))) c!14016) lt!904881)))

(declare-fun b!2561918 () Bool)

(assert (=> b!2561918 (= c!411623 ((_ is Union!7619) (ite c!411558 (regTwo!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))))))

(assert (=> b!2561918 (= e!1617794 e!1617791)))

(assert (= (and d!725621 c!411626) b!2561911))

(assert (= (and d!725621 (not c!411626)) b!2561914))

(assert (= (and b!2561914 c!411622) b!2561915))

(assert (= (and b!2561914 (not c!411622)) b!2561918))

(assert (= (and b!2561918 c!411623) b!2561916))

(assert (= (and b!2561918 (not c!411623)) b!2561913))

(assert (= (and b!2561913 c!411625) b!2561920))

(assert (= (and b!2561913 (not c!411625)) b!2561917))

(assert (= (and b!2561917 c!411624) b!2561919))

(assert (= (and b!2561917 (not c!411624)) b!2561912))

(assert (= (or b!2561919 b!2561912) bm!164191))

(assert (= (or b!2561920 bm!164191) bm!164193))

(assert (= (or b!2561916 b!2561919) bm!164192))

(assert (= (or b!2561916 bm!164193) bm!164194))

(declare-fun m!2901687 () Bool)

(assert (=> bm!164192 m!2901687))

(declare-fun m!2901689 () Bool)

(assert (=> b!2561917 m!2901689))

(declare-fun m!2901691 () Bool)

(assert (=> bm!164194 m!2901691))

(declare-fun m!2901693 () Bool)

(assert (=> d!725621 m!2901693))

(declare-fun m!2901695 () Bool)

(assert (=> d!725621 m!2901695))

(assert (=> bm!164140 d!725621))

(assert (=> d!725601 d!725619))

(declare-fun b!2561921 () Bool)

(declare-fun e!1617797 () Bool)

(declare-fun call!164201 () Bool)

(assert (=> b!2561921 (= e!1617797 call!164201)))

(declare-fun b!2561922 () Bool)

(declare-fun e!1617796 () Bool)

(declare-fun call!164200 () Bool)

(assert (=> b!2561922 (= e!1617796 call!164200)))

(declare-fun d!725623 () Bool)

(declare-fun res!1078546 () Bool)

(declare-fun e!1617802 () Bool)

(assert (=> d!725623 (=> res!1078546 e!1617802)))

(assert (=> d!725623 (= res!1078546 ((_ is ElementMatch!7619) lt!904832))))

(assert (=> d!725623 (= (validRegex!3245 lt!904832) e!1617802)))

(declare-fun b!2561923 () Bool)

(declare-fun e!1617801 () Bool)

(declare-fun e!1617798 () Bool)

(assert (=> b!2561923 (= e!1617801 e!1617798)))

(declare-fun res!1078545 () Bool)

(assert (=> b!2561923 (= res!1078545 (not (nullable!2536 (reg!7948 lt!904832))))))

(assert (=> b!2561923 (=> (not res!1078545) (not e!1617798))))

(declare-fun b!2561924 () Bool)

(declare-fun e!1617800 () Bool)

(assert (=> b!2561924 (= e!1617800 e!1617796)))

(declare-fun res!1078543 () Bool)

(assert (=> b!2561924 (=> (not res!1078543) (not e!1617796))))

(assert (=> b!2561924 (= res!1078543 call!164201)))

(declare-fun b!2561925 () Bool)

(assert (=> b!2561925 (= e!1617802 e!1617801)))

(declare-fun c!411627 () Bool)

(assert (=> b!2561925 (= c!411627 ((_ is Star!7619) lt!904832))))

(declare-fun bm!164195 () Bool)

(declare-fun call!164202 () Bool)

(assert (=> bm!164195 (= call!164200 call!164202)))

(declare-fun b!2561926 () Bool)

(declare-fun res!1078544 () Bool)

(assert (=> b!2561926 (=> (not res!1078544) (not e!1617797))))

(assert (=> b!2561926 (= res!1078544 call!164200)))

(declare-fun e!1617799 () Bool)

(assert (=> b!2561926 (= e!1617799 e!1617797)))

(declare-fun b!2561927 () Bool)

(declare-fun res!1078547 () Bool)

(assert (=> b!2561927 (=> res!1078547 e!1617800)))

(assert (=> b!2561927 (= res!1078547 (not ((_ is Concat!12315) lt!904832)))))

(assert (=> b!2561927 (= e!1617799 e!1617800)))

(declare-fun b!2561928 () Bool)

(assert (=> b!2561928 (= e!1617798 call!164202)))

(declare-fun bm!164196 () Bool)

(declare-fun c!411628 () Bool)

(assert (=> bm!164196 (= call!164201 (validRegex!3245 (ite c!411628 (regTwo!15751 lt!904832) (regOne!15750 lt!904832))))))

(declare-fun bm!164197 () Bool)

(assert (=> bm!164197 (= call!164202 (validRegex!3245 (ite c!411627 (reg!7948 lt!904832) (ite c!411628 (regOne!15751 lt!904832) (regTwo!15750 lt!904832)))))))

(declare-fun b!2561929 () Bool)

(assert (=> b!2561929 (= e!1617801 e!1617799)))

(assert (=> b!2561929 (= c!411628 ((_ is Union!7619) lt!904832))))

(assert (= (and d!725623 (not res!1078546)) b!2561925))

(assert (= (and b!2561925 c!411627) b!2561923))

(assert (= (and b!2561925 (not c!411627)) b!2561929))

(assert (= (and b!2561923 res!1078545) b!2561928))

(assert (= (and b!2561929 c!411628) b!2561926))

(assert (= (and b!2561929 (not c!411628)) b!2561927))

(assert (= (and b!2561926 res!1078544) b!2561921))

(assert (= (and b!2561927 (not res!1078547)) b!2561924))

(assert (= (and b!2561924 res!1078543) b!2561922))

(assert (= (or b!2561926 b!2561922) bm!164195))

(assert (= (or b!2561921 b!2561924) bm!164196))

(assert (= (or b!2561928 bm!164195) bm!164197))

(declare-fun m!2901697 () Bool)

(assert (=> b!2561923 m!2901697))

(declare-fun m!2901699 () Bool)

(assert (=> bm!164196 m!2901699))

(declare-fun m!2901701 () Bool)

(assert (=> bm!164197 m!2901701))

(assert (=> d!725601 d!725623))

(declare-fun d!725625 () Bool)

(assert (=> d!725625 (= (matchR!3564 lt!904830 tl!4068) (matchR!3564 (derivative!314 lt!904830 tl!4068) Nil!29584))))

(assert (=> d!725625 true))

(declare-fun _$108!372 () Unit!43423)

(assert (=> d!725625 (= (choose!15116 lt!904830 tl!4068) _$108!372)))

(declare-fun bs!469845 () Bool)

(assert (= bs!469845 d!725625))

(assert (=> bs!469845 m!2901433))

(assert (=> bs!469845 m!2901421))

(assert (=> bs!469845 m!2901421))

(assert (=> bs!469845 m!2901423))

(assert (=> d!725575 d!725625))

(assert (=> d!725575 d!725579))

(declare-fun b!2561956 () Bool)

(declare-fun e!1617822 () Bool)

(declare-fun call!164213 () Bool)

(assert (=> b!2561956 (= e!1617822 call!164213)))

(declare-fun b!2561957 () Bool)

(declare-fun e!1617821 () Bool)

(declare-fun call!164212 () Bool)

(assert (=> b!2561957 (= e!1617821 call!164212)))

(declare-fun d!725635 () Bool)

(declare-fun res!1078561 () Bool)

(declare-fun e!1617827 () Bool)

(assert (=> d!725635 (=> res!1078561 e!1617827)))

(assert (=> d!725635 (= res!1078561 ((_ is ElementMatch!7619) lt!904830))))

(assert (=> d!725635 (= (validRegex!3245 lt!904830) e!1617827)))

(declare-fun b!2561958 () Bool)

(declare-fun e!1617826 () Bool)

(declare-fun e!1617823 () Bool)

(assert (=> b!2561958 (= e!1617826 e!1617823)))

(declare-fun res!1078560 () Bool)

(assert (=> b!2561958 (= res!1078560 (not (nullable!2536 (reg!7948 lt!904830))))))

(assert (=> b!2561958 (=> (not res!1078560) (not e!1617823))))

(declare-fun b!2561959 () Bool)

(declare-fun e!1617825 () Bool)

(assert (=> b!2561959 (= e!1617825 e!1617821)))

(declare-fun res!1078558 () Bool)

(assert (=> b!2561959 (=> (not res!1078558) (not e!1617821))))

(assert (=> b!2561959 (= res!1078558 call!164213)))

(declare-fun b!2561960 () Bool)

(assert (=> b!2561960 (= e!1617827 e!1617826)))

(declare-fun c!411637 () Bool)

(assert (=> b!2561960 (= c!411637 ((_ is Star!7619) lt!904830))))

(declare-fun bm!164207 () Bool)

(declare-fun call!164214 () Bool)

(assert (=> bm!164207 (= call!164212 call!164214)))

(declare-fun b!2561961 () Bool)

(declare-fun res!1078559 () Bool)

(assert (=> b!2561961 (=> (not res!1078559) (not e!1617822))))

(assert (=> b!2561961 (= res!1078559 call!164212)))

(declare-fun e!1617824 () Bool)

(assert (=> b!2561961 (= e!1617824 e!1617822)))

(declare-fun b!2561962 () Bool)

(declare-fun res!1078562 () Bool)

(assert (=> b!2561962 (=> res!1078562 e!1617825)))

(assert (=> b!2561962 (= res!1078562 (not ((_ is Concat!12315) lt!904830)))))

(assert (=> b!2561962 (= e!1617824 e!1617825)))

(declare-fun b!2561963 () Bool)

(assert (=> b!2561963 (= e!1617823 call!164214)))

(declare-fun bm!164208 () Bool)

(declare-fun c!411638 () Bool)

(assert (=> bm!164208 (= call!164213 (validRegex!3245 (ite c!411638 (regTwo!15751 lt!904830) (regOne!15750 lt!904830))))))

(declare-fun bm!164209 () Bool)

(assert (=> bm!164209 (= call!164214 (validRegex!3245 (ite c!411637 (reg!7948 lt!904830) (ite c!411638 (regOne!15751 lt!904830) (regTwo!15750 lt!904830)))))))

(declare-fun b!2561964 () Bool)

(assert (=> b!2561964 (= e!1617826 e!1617824)))

(assert (=> b!2561964 (= c!411638 ((_ is Union!7619) lt!904830))))

(assert (= (and d!725635 (not res!1078561)) b!2561960))

(assert (= (and b!2561960 c!411637) b!2561958))

(assert (= (and b!2561960 (not c!411637)) b!2561964))

(assert (= (and b!2561958 res!1078560) b!2561963))

(assert (= (and b!2561964 c!411638) b!2561961))

(assert (= (and b!2561964 (not c!411638)) b!2561962))

(assert (= (and b!2561961 res!1078559) b!2561956))

(assert (= (and b!2561962 (not res!1078562)) b!2561959))

(assert (= (and b!2561959 res!1078558) b!2561957))

(assert (= (or b!2561961 b!2561957) bm!164207))

(assert (= (or b!2561956 b!2561959) bm!164208))

(assert (= (or b!2561963 bm!164207) bm!164209))

(declare-fun m!2901727 () Bool)

(assert (=> b!2561958 m!2901727))

(declare-fun m!2901729 () Bool)

(assert (=> bm!164208 m!2901729))

(declare-fun m!2901731 () Bool)

(assert (=> bm!164209 m!2901731))

(assert (=> d!725575 d!725635))

(assert (=> d!725575 d!725549))

(assert (=> d!725575 d!725551))

(declare-fun d!725647 () Bool)

(assert (=> d!725647 (= (isEmpty!17042 Nil!29584) true)))

(assert (=> bm!164163 d!725647))

(declare-fun d!725649 () Bool)

(assert (=> d!725649 (= (isEmpty!17042 (tail!4101 tl!4068)) ((_ is Nil!29584) (tail!4101 tl!4068)))))

(assert (=> b!2561536 d!725649))

(declare-fun d!725651 () Bool)

(assert (=> d!725651 (= (tail!4101 tl!4068) (t!211383 tl!4068))))

(assert (=> b!2561536 d!725651))

(declare-fun b!2561984 () Bool)

(declare-fun e!1617841 () Bool)

(declare-fun call!164223 () Bool)

(assert (=> b!2561984 (= e!1617841 call!164223)))

(declare-fun b!2561985 () Bool)

(declare-fun e!1617840 () Bool)

(declare-fun call!164222 () Bool)

(assert (=> b!2561985 (= e!1617840 call!164222)))

(declare-fun d!725655 () Bool)

(declare-fun res!1078571 () Bool)

(declare-fun e!1617846 () Bool)

(assert (=> d!725655 (=> res!1078571 e!1617846)))

(assert (=> d!725655 (= res!1078571 ((_ is ElementMatch!7619) (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))

(assert (=> d!725655 (= (validRegex!3245 (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))) e!1617846)))

(declare-fun b!2561986 () Bool)

(declare-fun e!1617845 () Bool)

(declare-fun e!1617842 () Bool)

(assert (=> b!2561986 (= e!1617845 e!1617842)))

(declare-fun res!1078570 () Bool)

(assert (=> b!2561986 (= res!1078570 (not (nullable!2536 (reg!7948 (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))))

(assert (=> b!2561986 (=> (not res!1078570) (not e!1617842))))

(declare-fun b!2561987 () Bool)

(declare-fun e!1617844 () Bool)

(assert (=> b!2561987 (= e!1617844 e!1617840)))

(declare-fun res!1078568 () Bool)

(assert (=> b!2561987 (=> (not res!1078568) (not e!1617840))))

(assert (=> b!2561987 (= res!1078568 call!164223)))

(declare-fun b!2561988 () Bool)

(assert (=> b!2561988 (= e!1617846 e!1617845)))

(declare-fun c!411646 () Bool)

(assert (=> b!2561988 (= c!411646 ((_ is Star!7619) (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))

(declare-fun bm!164217 () Bool)

(declare-fun call!164224 () Bool)

(assert (=> bm!164217 (= call!164222 call!164224)))

(declare-fun b!2561989 () Bool)

(declare-fun res!1078569 () Bool)

(assert (=> b!2561989 (=> (not res!1078569) (not e!1617841))))

(assert (=> b!2561989 (= res!1078569 call!164222)))

(declare-fun e!1617843 () Bool)

(assert (=> b!2561989 (= e!1617843 e!1617841)))

(declare-fun b!2561990 () Bool)

(declare-fun res!1078572 () Bool)

(assert (=> b!2561990 (=> res!1078572 e!1617844)))

(assert (=> b!2561990 (= res!1078572 (not ((_ is Concat!12315) (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))))))

(assert (=> b!2561990 (= e!1617843 e!1617844)))

(declare-fun b!2561991 () Bool)

(assert (=> b!2561991 (= e!1617842 call!164224)))

(declare-fun c!411647 () Bool)

(declare-fun bm!164218 () Bool)

(assert (=> bm!164218 (= call!164223 (validRegex!3245 (ite c!411647 (regTwo!15751 (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))) (regOne!15750 (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))))

(declare-fun bm!164219 () Bool)

(assert (=> bm!164219 (= call!164224 (validRegex!3245 (ite c!411646 (reg!7948 (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))) (ite c!411647 (regOne!15751 (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))) (regTwo!15750 (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))))))))

(declare-fun b!2561992 () Bool)

(assert (=> b!2561992 (= e!1617845 e!1617843)))

(assert (=> b!2561992 (= c!411647 ((_ is Union!7619) (ite c!411607 (regTwo!15751 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))

(assert (= (and d!725655 (not res!1078571)) b!2561988))

(assert (= (and b!2561988 c!411646) b!2561986))

(assert (= (and b!2561988 (not c!411646)) b!2561992))

(assert (= (and b!2561986 res!1078570) b!2561991))

(assert (= (and b!2561992 c!411647) b!2561989))

(assert (= (and b!2561992 (not c!411647)) b!2561990))

(assert (= (and b!2561989 res!1078569) b!2561984))

(assert (= (and b!2561990 (not res!1078572)) b!2561987))

(assert (= (and b!2561987 res!1078568) b!2561985))

(assert (= (or b!2561989 b!2561985) bm!164217))

(assert (= (or b!2561984 b!2561987) bm!164218))

(assert (= (or b!2561991 bm!164217) bm!164219))

(declare-fun m!2901747 () Bool)

(assert (=> b!2561986 m!2901747))

(declare-fun m!2901751 () Bool)

(assert (=> bm!164218 m!2901751))

(declare-fun m!2901753 () Bool)

(assert (=> bm!164219 m!2901753))

(assert (=> bm!164177 d!725655))

(declare-fun b!2562002 () Bool)

(declare-fun e!1617855 () Bool)

(declare-fun call!164229 () Bool)

(assert (=> b!2562002 (= e!1617855 call!164229)))

(declare-fun b!2562003 () Bool)

(declare-fun e!1617854 () Bool)

(declare-fun call!164228 () Bool)

(assert (=> b!2562003 (= e!1617854 call!164228)))

(declare-fun d!725659 () Bool)

(declare-fun res!1078581 () Bool)

(declare-fun e!1617860 () Bool)

(assert (=> d!725659 (=> res!1078581 e!1617860)))

(assert (=> d!725659 (= res!1078581 ((_ is ElementMatch!7619) lt!904848))))

(assert (=> d!725659 (= (validRegex!3245 lt!904848) e!1617860)))

(declare-fun b!2562004 () Bool)

(declare-fun e!1617859 () Bool)

(declare-fun e!1617856 () Bool)

(assert (=> b!2562004 (= e!1617859 e!1617856)))

(declare-fun res!1078580 () Bool)

(assert (=> b!2562004 (= res!1078580 (not (nullable!2536 (reg!7948 lt!904848))))))

(assert (=> b!2562004 (=> (not res!1078580) (not e!1617856))))

(declare-fun b!2562005 () Bool)

(declare-fun e!1617858 () Bool)

(assert (=> b!2562005 (= e!1617858 e!1617854)))

(declare-fun res!1078578 () Bool)

(assert (=> b!2562005 (=> (not res!1078578) (not e!1617854))))

(assert (=> b!2562005 (= res!1078578 call!164229)))

(declare-fun b!2562006 () Bool)

(assert (=> b!2562006 (= e!1617860 e!1617859)))

(declare-fun c!411650 () Bool)

(assert (=> b!2562006 (= c!411650 ((_ is Star!7619) lt!904848))))

(declare-fun bm!164223 () Bool)

(declare-fun call!164230 () Bool)

(assert (=> bm!164223 (= call!164228 call!164230)))

(declare-fun b!2562007 () Bool)

(declare-fun res!1078579 () Bool)

(assert (=> b!2562007 (=> (not res!1078579) (not e!1617855))))

(assert (=> b!2562007 (= res!1078579 call!164228)))

(declare-fun e!1617857 () Bool)

(assert (=> b!2562007 (= e!1617857 e!1617855)))

(declare-fun b!2562008 () Bool)

(declare-fun res!1078582 () Bool)

(assert (=> b!2562008 (=> res!1078582 e!1617858)))

(assert (=> b!2562008 (= res!1078582 (not ((_ is Concat!12315) lt!904848)))))

(assert (=> b!2562008 (= e!1617857 e!1617858)))

(declare-fun b!2562009 () Bool)

(assert (=> b!2562009 (= e!1617856 call!164230)))

(declare-fun bm!164224 () Bool)

(declare-fun c!411651 () Bool)

(assert (=> bm!164224 (= call!164229 (validRegex!3245 (ite c!411651 (regTwo!15751 lt!904848) (regOne!15750 lt!904848))))))

(declare-fun bm!164225 () Bool)

(assert (=> bm!164225 (= call!164230 (validRegex!3245 (ite c!411650 (reg!7948 lt!904848) (ite c!411651 (regOne!15751 lt!904848) (regTwo!15750 lt!904848)))))))

(declare-fun b!2562010 () Bool)

(assert (=> b!2562010 (= e!1617859 e!1617857)))

(assert (=> b!2562010 (= c!411651 ((_ is Union!7619) lt!904848))))

(assert (= (and d!725659 (not res!1078581)) b!2562006))

(assert (= (and b!2562006 c!411650) b!2562004))

(assert (= (and b!2562006 (not c!411650)) b!2562010))

(assert (= (and b!2562004 res!1078580) b!2562009))

(assert (= (and b!2562010 c!411651) b!2562007))

(assert (= (and b!2562010 (not c!411651)) b!2562008))

(assert (= (and b!2562007 res!1078579) b!2562002))

(assert (= (and b!2562008 (not res!1078582)) b!2562005))

(assert (= (and b!2562005 res!1078578) b!2562003))

(assert (= (or b!2562007 b!2562003) bm!164223))

(assert (= (or b!2562002 b!2562005) bm!164224))

(assert (= (or b!2562009 bm!164223) bm!164225))

(declare-fun m!2901761 () Bool)

(assert (=> b!2562004 m!2901761))

(declare-fun m!2901763 () Bool)

(assert (=> bm!164224 m!2901763))

(declare-fun m!2901765 () Bool)

(assert (=> bm!164225 m!2901765))

(assert (=> d!725551 d!725659))

(assert (=> d!725551 d!725635))

(assert (=> b!2561498 d!725649))

(assert (=> b!2561498 d!725651))

(declare-fun d!725663 () Bool)

(assert (=> d!725663 (= (matchR!3564 lt!904832 tl!4068) (matchR!3564 (derivative!314 lt!904832 tl!4068) Nil!29584))))

(assert (=> d!725663 true))

(declare-fun _$108!373 () Unit!43423)

(assert (=> d!725663 (= (choose!15116 lt!904832 tl!4068) _$108!373)))

(declare-fun bs!469848 () Bool)

(assert (= bs!469848 d!725663))

(assert (=> bs!469848 m!2901411))

(assert (=> bs!469848 m!2901409))

(assert (=> bs!469848 m!2901409))

(assert (=> bs!469848 m!2901619))

(assert (=> d!725587 d!725663))

(declare-fun bm!164229 () Bool)

(declare-fun call!164234 () Bool)

(assert (=> bm!164229 (= call!164234 (isEmpty!17042 Nil!29584))))

(declare-fun b!2562020 () Bool)

(declare-fun res!1078593 () Bool)

(declare-fun e!1617872 () Bool)

(assert (=> b!2562020 (=> res!1078593 e!1617872)))

(assert (=> b!2562020 (= res!1078593 (not ((_ is ElementMatch!7619) (derivative!314 lt!904832 tl!4068))))))

(declare-fun e!1617870 () Bool)

(assert (=> b!2562020 (= e!1617870 e!1617872)))

(declare-fun b!2562021 () Bool)

(declare-fun e!1617869 () Bool)

(assert (=> b!2562021 (= e!1617869 (= (head!5826 Nil!29584) (c!411501 (derivative!314 lt!904832 tl!4068))))))

(declare-fun b!2562022 () Bool)

(declare-fun e!1617874 () Bool)

(declare-fun e!1617871 () Bool)

(assert (=> b!2562022 (= e!1617874 e!1617871)))

(declare-fun res!1078591 () Bool)

(assert (=> b!2562022 (=> res!1078591 e!1617871)))

(assert (=> b!2562022 (= res!1078591 call!164234)))

(declare-fun b!2562023 () Bool)

(declare-fun res!1078594 () Bool)

(assert (=> b!2562023 (=> res!1078594 e!1617872)))

(assert (=> b!2562023 (= res!1078594 e!1617869)))

(declare-fun res!1078589 () Bool)

(assert (=> b!2562023 (=> (not res!1078589) (not e!1617869))))

(declare-fun lt!904884 () Bool)

(assert (=> b!2562023 (= res!1078589 lt!904884)))

(declare-fun b!2562024 () Bool)

(declare-fun e!1617868 () Bool)

(assert (=> b!2562024 (= e!1617868 e!1617870)))

(declare-fun c!411656 () Bool)

(assert (=> b!2562024 (= c!411656 ((_ is EmptyLang!7619) (derivative!314 lt!904832 tl!4068)))))

(declare-fun b!2562025 () Bool)

(assert (=> b!2562025 (= e!1617870 (not lt!904884))))

(declare-fun b!2562026 () Bool)

(declare-fun res!1078595 () Bool)

(assert (=> b!2562026 (=> (not res!1078595) (not e!1617869))))

(assert (=> b!2562026 (= res!1078595 (isEmpty!17042 (tail!4101 Nil!29584)))))

(declare-fun d!725665 () Bool)

(assert (=> d!725665 e!1617868))

(declare-fun c!411654 () Bool)

(assert (=> d!725665 (= c!411654 ((_ is EmptyExpr!7619) (derivative!314 lt!904832 tl!4068)))))

(declare-fun e!1617873 () Bool)

(assert (=> d!725665 (= lt!904884 e!1617873)))

(declare-fun c!411655 () Bool)

(assert (=> d!725665 (= c!411655 (isEmpty!17042 Nil!29584))))

(assert (=> d!725665 (validRegex!3245 (derivative!314 lt!904832 tl!4068))))

(assert (=> d!725665 (= (matchR!3564 (derivative!314 lt!904832 tl!4068) Nil!29584) lt!904884)))

(declare-fun b!2562027 () Bool)

(declare-fun res!1078590 () Bool)

(assert (=> b!2562027 (=> res!1078590 e!1617871)))

(assert (=> b!2562027 (= res!1078590 (not (isEmpty!17042 (tail!4101 Nil!29584))))))

(declare-fun b!2562028 () Bool)

(assert (=> b!2562028 (= e!1617868 (= lt!904884 call!164234))))

(declare-fun b!2562029 () Bool)

(assert (=> b!2562029 (= e!1617872 e!1617874)))

(declare-fun res!1078592 () Bool)

(assert (=> b!2562029 (=> (not res!1078592) (not e!1617874))))

(assert (=> b!2562029 (= res!1078592 (not lt!904884))))

(declare-fun b!2562030 () Bool)

(assert (=> b!2562030 (= e!1617871 (not (= (head!5826 Nil!29584) (c!411501 (derivative!314 lt!904832 tl!4068)))))))

(declare-fun b!2562031 () Bool)

(assert (=> b!2562031 (= e!1617873 (nullable!2536 (derivative!314 lt!904832 tl!4068)))))

(declare-fun b!2562032 () Bool)

(declare-fun res!1078588 () Bool)

(assert (=> b!2562032 (=> (not res!1078588) (not e!1617869))))

(assert (=> b!2562032 (= res!1078588 (not call!164234))))

(declare-fun b!2562033 () Bool)

(assert (=> b!2562033 (= e!1617873 (matchR!3564 (derivativeStep!2188 (derivative!314 lt!904832 tl!4068) (head!5826 Nil!29584)) (tail!4101 Nil!29584)))))

(assert (= (and d!725665 c!411655) b!2562031))

(assert (= (and d!725665 (not c!411655)) b!2562033))

(assert (= (and d!725665 c!411654) b!2562028))

(assert (= (and d!725665 (not c!411654)) b!2562024))

(assert (= (and b!2562024 c!411656) b!2562025))

(assert (= (and b!2562024 (not c!411656)) b!2562020))

(assert (= (and b!2562020 (not res!1078593)) b!2562023))

(assert (= (and b!2562023 res!1078589) b!2562032))

(assert (= (and b!2562032 res!1078588) b!2562026))

(assert (= (and b!2562026 res!1078595) b!2562021))

(assert (= (and b!2562023 (not res!1078594)) b!2562029))

(assert (= (and b!2562029 res!1078592) b!2562022))

(assert (= (and b!2562022 (not res!1078591)) b!2562027))

(assert (= (and b!2562027 (not res!1078590)) b!2562030))

(assert (= (or b!2562028 b!2562022 b!2562032) bm!164229))

(assert (=> b!2562033 m!2901593))

(assert (=> b!2562033 m!2901409))

(assert (=> b!2562033 m!2901593))

(declare-fun m!2901773 () Bool)

(assert (=> b!2562033 m!2901773))

(assert (=> b!2562033 m!2901599))

(assert (=> b!2562033 m!2901773))

(assert (=> b!2562033 m!2901599))

(declare-fun m!2901775 () Bool)

(assert (=> b!2562033 m!2901775))

(assert (=> b!2562031 m!2901409))

(declare-fun m!2901777 () Bool)

(assert (=> b!2562031 m!2901777))

(assert (=> b!2562021 m!2901593))

(assert (=> d!725665 m!2901605))

(assert (=> d!725665 m!2901409))

(declare-fun m!2901779 () Bool)

(assert (=> d!725665 m!2901779))

(assert (=> bm!164229 m!2901605))

(assert (=> b!2562026 m!2901599))

(assert (=> b!2562026 m!2901599))

(assert (=> b!2562026 m!2901609))

(assert (=> b!2562030 m!2901593))

(assert (=> b!2562027 m!2901599))

(assert (=> b!2562027 m!2901599))

(assert (=> b!2562027 m!2901609))

(assert (=> d!725587 d!725665))

(assert (=> d!725587 d!725599))

(assert (=> d!725587 d!725601))

(assert (=> d!725587 d!725623))

(declare-fun d!725671 () Bool)

(assert (not d!725671))

(assert (=> b!2561737 d!725671))

(declare-fun d!725673 () Bool)

(assert (not d!725673))

(assert (=> b!2561737 d!725673))

(declare-fun b!2562098 () Bool)

(declare-fun e!1617918 () Bool)

(declare-fun e!1617917 () Bool)

(assert (=> b!2562098 (= e!1617918 e!1617917)))

(declare-fun res!1078626 () Bool)

(assert (=> b!2562098 (=> res!1078626 e!1617917)))

(assert (=> b!2562098 (= res!1078626 ((_ is Star!7619) (regOne!15750 r!27340)))))

(declare-fun b!2562099 () Bool)

(declare-fun e!1617919 () Bool)

(declare-fun e!1617920 () Bool)

(assert (=> b!2562099 (= e!1617919 e!1617920)))

(declare-fun res!1078624 () Bool)

(declare-fun call!164254 () Bool)

(assert (=> b!2562099 (= res!1078624 call!164254)))

(assert (=> b!2562099 (=> (not res!1078624) (not e!1617920))))

(declare-fun b!2562100 () Bool)

(declare-fun e!1617922 () Bool)

(assert (=> b!2562100 (= e!1617922 call!164254)))

(declare-fun b!2562101 () Bool)

(assert (=> b!2562101 (= e!1617919 e!1617922)))

(declare-fun res!1078627 () Bool)

(declare-fun call!164253 () Bool)

(assert (=> b!2562101 (= res!1078627 call!164253)))

(assert (=> b!2562101 (=> res!1078627 e!1617922)))

(declare-fun d!725675 () Bool)

(declare-fun res!1078628 () Bool)

(declare-fun e!1617921 () Bool)

(assert (=> d!725675 (=> res!1078628 e!1617921)))

(assert (=> d!725675 (= res!1078628 ((_ is EmptyExpr!7619) (regOne!15750 r!27340)))))

(assert (=> d!725675 (= (nullableFct!761 (regOne!15750 r!27340)) e!1617921)))

(declare-fun bm!164248 () Bool)

(declare-fun c!411675 () Bool)

(assert (=> bm!164248 (= call!164254 (nullable!2536 (ite c!411675 (regTwo!15751 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))))

(declare-fun b!2562102 () Bool)

(assert (=> b!2562102 (= e!1617917 e!1617919)))

(assert (=> b!2562102 (= c!411675 ((_ is Union!7619) (regOne!15750 r!27340)))))

(declare-fun b!2562103 () Bool)

(assert (=> b!2562103 (= e!1617920 call!164253)))

(declare-fun b!2562104 () Bool)

(assert (=> b!2562104 (= e!1617921 e!1617918)))

(declare-fun res!1078625 () Bool)

(assert (=> b!2562104 (=> (not res!1078625) (not e!1617918))))

(assert (=> b!2562104 (= res!1078625 (and (not ((_ is EmptyLang!7619) (regOne!15750 r!27340))) (not ((_ is ElementMatch!7619) (regOne!15750 r!27340)))))))

(declare-fun bm!164249 () Bool)

(assert (=> bm!164249 (= call!164253 (nullable!2536 (ite c!411675 (regOne!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))))))

(assert (= (and d!725675 (not res!1078628)) b!2562104))

(assert (= (and b!2562104 res!1078625) b!2562098))

(assert (= (and b!2562098 (not res!1078626)) b!2562102))

(assert (= (and b!2562102 c!411675) b!2562101))

(assert (= (and b!2562102 (not c!411675)) b!2562099))

(assert (= (and b!2562101 (not res!1078627)) b!2562100))

(assert (= (and b!2562099 res!1078624) b!2562103))

(assert (= (or b!2562100 b!2562099) bm!164248))

(assert (= (or b!2562101 b!2562103) bm!164249))

(declare-fun m!2901827 () Bool)

(assert (=> bm!164248 m!2901827))

(declare-fun m!2901829 () Bool)

(assert (=> bm!164249 m!2901829))

(assert (=> d!725607 d!725675))

(declare-fun b!2562114 () Bool)

(declare-fun e!1617934 () Regex!7619)

(assert (=> b!2562114 (= e!1617934 EmptyLang!7619)))

(declare-fun e!1617931 () Regex!7619)

(declare-fun call!164258 () Regex!7619)

(declare-fun b!2562115 () Bool)

(assert (=> b!2562115 (= e!1617931 (Union!7619 (Concat!12315 call!164258 (regTwo!15750 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))) EmptyLang!7619))))

(declare-fun bm!164253 () Bool)

(declare-fun call!164260 () Regex!7619)

(assert (=> bm!164253 (= call!164258 call!164260)))

(declare-fun b!2562116 () Bool)

(declare-fun e!1617930 () Regex!7619)

(declare-fun e!1617932 () Regex!7619)

(assert (=> b!2562116 (= e!1617930 e!1617932)))

(declare-fun c!411681 () Bool)

(assert (=> b!2562116 (= c!411681 ((_ is Star!7619) (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))))))

(declare-fun b!2562117 () Bool)

(declare-fun e!1617933 () Regex!7619)

(assert (=> b!2562117 (= e!1617934 e!1617933)))

(declare-fun c!411678 () Bool)

(assert (=> b!2562117 (= c!411678 ((_ is ElementMatch!7619) (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))))))

(declare-fun call!164261 () Regex!7619)

(declare-fun c!411679 () Bool)

(declare-fun bm!164254 () Bool)

(assert (=> bm!164254 (= call!164261 (derivativeStep!2188 (ite c!411679 (regTwo!15751 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))) (regTwo!15750 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))) c!14016))))

(declare-fun b!2562118 () Bool)

(assert (=> b!2562118 (= e!1617933 (ite (= c!14016 (c!411501 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164255 () Bool)

(declare-fun call!164259 () Regex!7619)

(assert (=> bm!164255 (= call!164260 call!164259)))

(declare-fun b!2562119 () Bool)

(assert (=> b!2562119 (= e!1617930 (Union!7619 call!164259 call!164261))))

(declare-fun c!411680 () Bool)

(declare-fun b!2562120 () Bool)

(assert (=> b!2562120 (= c!411680 (nullable!2536 (regOne!15750 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))))

(assert (=> b!2562120 (= e!1617932 e!1617931)))

(declare-fun bm!164256 () Bool)

(assert (=> bm!164256 (= call!164259 (derivativeStep!2188 (ite c!411679 (regOne!15751 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))) (ite c!411681 (reg!7948 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))) (regOne!15750 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))))) c!14016))))

(declare-fun b!2562122 () Bool)

(assert (=> b!2562122 (= e!1617931 (Union!7619 (Concat!12315 call!164258 (regTwo!15750 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))) call!164261))))

(declare-fun b!2562123 () Bool)

(assert (=> b!2562123 (= e!1617932 (Concat!12315 call!164260 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))))))

(declare-fun d!725699 () Bool)

(declare-fun lt!904888 () Regex!7619)

(assert (=> d!725699 (validRegex!3245 lt!904888)))

(assert (=> d!725699 (= lt!904888 e!1617934)))

(declare-fun c!411682 () Bool)

(assert (=> d!725699 (= c!411682 (or ((_ is EmptyExpr!7619) (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))) ((_ is EmptyLang!7619) (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))))

(assert (=> d!725699 (validRegex!3245 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))))))

(assert (=> d!725699 (= (derivativeStep!2188 (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340)))) c!14016) lt!904888)))

(declare-fun b!2562121 () Bool)

(assert (=> b!2562121 (= c!411679 ((_ is Union!7619) (ite c!411558 (regOne!15751 (regTwo!15750 r!27340)) (ite c!411561 (reg!7948 (regTwo!15750 r!27340)) (regOne!15750 (regTwo!15750 r!27340))))))))

(assert (=> b!2562121 (= e!1617933 e!1617930)))

(assert (= (and d!725699 c!411682) b!2562114))

(assert (= (and d!725699 (not c!411682)) b!2562117))

(assert (= (and b!2562117 c!411678) b!2562118))

(assert (= (and b!2562117 (not c!411678)) b!2562121))

(assert (= (and b!2562121 c!411679) b!2562119))

(assert (= (and b!2562121 (not c!411679)) b!2562116))

(assert (= (and b!2562116 c!411681) b!2562123))

(assert (= (and b!2562116 (not c!411681)) b!2562120))

(assert (= (and b!2562120 c!411680) b!2562122))

(assert (= (and b!2562120 (not c!411680)) b!2562115))

(assert (= (or b!2562122 b!2562115) bm!164253))

(assert (= (or b!2562123 bm!164253) bm!164255))

(assert (= (or b!2562119 b!2562122) bm!164254))

(assert (= (or b!2562119 bm!164255) bm!164256))

(declare-fun m!2901843 () Bool)

(assert (=> bm!164254 m!2901843))

(declare-fun m!2901845 () Bool)

(assert (=> b!2562120 m!2901845))

(declare-fun m!2901847 () Bool)

(assert (=> bm!164256 m!2901847))

(declare-fun m!2901849 () Bool)

(assert (=> d!725699 m!2901849))

(declare-fun m!2901851 () Bool)

(assert (=> d!725699 m!2901851))

(assert (=> bm!164142 d!725699))

(declare-fun d!725705 () Bool)

(assert (=> d!725705 (= (head!5826 tl!4068) (h!35004 tl!4068))))

(assert (=> b!2561828 d!725705))

(declare-fun b!2562143 () Bool)

(declare-fun e!1617948 () Bool)

(declare-fun call!164270 () Bool)

(assert (=> b!2562143 (= e!1617948 call!164270)))

(declare-fun b!2562144 () Bool)

(declare-fun e!1617947 () Bool)

(declare-fun call!164269 () Bool)

(assert (=> b!2562144 (= e!1617947 call!164269)))

(declare-fun d!725707 () Bool)

(declare-fun res!1078642 () Bool)

(declare-fun e!1617953 () Bool)

(assert (=> d!725707 (=> res!1078642 e!1617953)))

(assert (=> d!725707 (= res!1078642 ((_ is ElementMatch!7619) lt!904880))))

(assert (=> d!725707 (= (validRegex!3245 lt!904880) e!1617953)))

(declare-fun b!2562145 () Bool)

(declare-fun e!1617952 () Bool)

(declare-fun e!1617949 () Bool)

(assert (=> b!2562145 (= e!1617952 e!1617949)))

(declare-fun res!1078641 () Bool)

(assert (=> b!2562145 (= res!1078641 (not (nullable!2536 (reg!7948 lt!904880))))))

(assert (=> b!2562145 (=> (not res!1078641) (not e!1617949))))

(declare-fun b!2562146 () Bool)

(declare-fun e!1617951 () Bool)

(assert (=> b!2562146 (= e!1617951 e!1617947)))

(declare-fun res!1078639 () Bool)

(assert (=> b!2562146 (=> (not res!1078639) (not e!1617947))))

(assert (=> b!2562146 (= res!1078639 call!164270)))

(declare-fun b!2562147 () Bool)

(assert (=> b!2562147 (= e!1617953 e!1617952)))

(declare-fun c!411690 () Bool)

(assert (=> b!2562147 (= c!411690 ((_ is Star!7619) lt!904880))))

(declare-fun bm!164264 () Bool)

(declare-fun call!164271 () Bool)

(assert (=> bm!164264 (= call!164269 call!164271)))

(declare-fun b!2562148 () Bool)

(declare-fun res!1078640 () Bool)

(assert (=> b!2562148 (=> (not res!1078640) (not e!1617948))))

(assert (=> b!2562148 (= res!1078640 call!164269)))

(declare-fun e!1617950 () Bool)

(assert (=> b!2562148 (= e!1617950 e!1617948)))

(declare-fun b!2562149 () Bool)

(declare-fun res!1078643 () Bool)

(assert (=> b!2562149 (=> res!1078643 e!1617951)))

(assert (=> b!2562149 (= res!1078643 (not ((_ is Concat!12315) lt!904880)))))

(assert (=> b!2562149 (= e!1617950 e!1617951)))

(declare-fun b!2562150 () Bool)

(assert (=> b!2562150 (= e!1617949 call!164271)))

(declare-fun bm!164265 () Bool)

(declare-fun c!411691 () Bool)

(assert (=> bm!164265 (= call!164270 (validRegex!3245 (ite c!411691 (regTwo!15751 lt!904880) (regOne!15750 lt!904880))))))

(declare-fun bm!164266 () Bool)

(assert (=> bm!164266 (= call!164271 (validRegex!3245 (ite c!411690 (reg!7948 lt!904880) (ite c!411691 (regOne!15751 lt!904880) (regTwo!15750 lt!904880)))))))

(declare-fun b!2562151 () Bool)

(assert (=> b!2562151 (= e!1617952 e!1617950)))

(assert (=> b!2562151 (= c!411691 ((_ is Union!7619) lt!904880))))

(assert (= (and d!725707 (not res!1078642)) b!2562147))

(assert (= (and b!2562147 c!411690) b!2562145))

(assert (= (and b!2562147 (not c!411690)) b!2562151))

(assert (= (and b!2562145 res!1078641) b!2562150))

(assert (= (and b!2562151 c!411691) b!2562148))

(assert (= (and b!2562151 (not c!411691)) b!2562149))

(assert (= (and b!2562148 res!1078640) b!2562143))

(assert (= (and b!2562149 (not res!1078643)) b!2562146))

(assert (= (and b!2562146 res!1078639) b!2562144))

(assert (= (or b!2562148 b!2562144) bm!164264))

(assert (= (or b!2562143 b!2562146) bm!164265))

(assert (= (or b!2562150 bm!164264) bm!164266))

(declare-fun m!2901863 () Bool)

(assert (=> b!2562145 m!2901863))

(declare-fun m!2901865 () Bool)

(assert (=> bm!164265 m!2901865))

(declare-fun m!2901867 () Bool)

(assert (=> bm!164266 m!2901867))

(assert (=> d!725613 d!725707))

(assert (=> d!725613 d!725605))

(assert (=> b!2561540 d!725705))

(declare-fun b!2562152 () Bool)

(declare-fun e!1617958 () Regex!7619)

(assert (=> b!2562152 (= e!1617958 EmptyLang!7619)))

(declare-fun call!164272 () Regex!7619)

(declare-fun b!2562153 () Bool)

(declare-fun e!1617955 () Regex!7619)

(assert (=> b!2562153 (= e!1617955 (Union!7619 (Concat!12315 call!164272 (regTwo!15750 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)))) EmptyLang!7619))))

(declare-fun bm!164267 () Bool)

(declare-fun call!164274 () Regex!7619)

(assert (=> bm!164267 (= call!164272 call!164274)))

(declare-fun b!2562154 () Bool)

(declare-fun e!1617954 () Regex!7619)

(declare-fun e!1617956 () Regex!7619)

(assert (=> b!2562154 (= e!1617954 e!1617956)))

(declare-fun c!411695 () Bool)

(assert (=> b!2562154 (= c!411695 ((_ is Star!7619) (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))))))

(declare-fun b!2562155 () Bool)

(declare-fun e!1617957 () Regex!7619)

(assert (=> b!2562155 (= e!1617958 e!1617957)))

(declare-fun c!411692 () Bool)

(assert (=> b!2562155 (= c!411692 ((_ is ElementMatch!7619) (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))))))

(declare-fun c!411693 () Bool)

(declare-fun bm!164268 () Bool)

(declare-fun call!164275 () Regex!7619)

(assert (=> bm!164268 (= call!164275 (derivativeStep!2188 (ite c!411693 (regTwo!15751 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))) (regTwo!15750 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)))) c!14016))))

(declare-fun b!2562156 () Bool)

(assert (=> b!2562156 (= e!1617957 (ite (= c!14016 (c!411501 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164269 () Bool)

(declare-fun call!164273 () Regex!7619)

(assert (=> bm!164269 (= call!164274 call!164273)))

(declare-fun b!2562157 () Bool)

(assert (=> b!2562157 (= e!1617954 (Union!7619 call!164273 call!164275))))

(declare-fun b!2562158 () Bool)

(declare-fun c!411694 () Bool)

(assert (=> b!2562158 (= c!411694 (nullable!2536 (regOne!15750 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)))))))

(assert (=> b!2562158 (= e!1617956 e!1617955)))

(declare-fun bm!164270 () Bool)

(assert (=> bm!164270 (= call!164273 (derivativeStep!2188 (ite c!411693 (regOne!15751 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))) (ite c!411695 (reg!7948 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))) (regOne!15750 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))))) c!14016))))

(declare-fun b!2562160 () Bool)

(assert (=> b!2562160 (= e!1617955 (Union!7619 (Concat!12315 call!164272 (regTwo!15750 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)))) call!164275))))

(declare-fun b!2562161 () Bool)

(assert (=> b!2562161 (= e!1617956 (Concat!12315 call!164274 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))))))

(declare-fun d!725711 () Bool)

(declare-fun lt!904890 () Regex!7619)

(assert (=> d!725711 (validRegex!3245 lt!904890)))

(assert (=> d!725711 (= lt!904890 e!1617958)))

(declare-fun c!411696 () Bool)

(assert (=> d!725711 (= c!411696 (or ((_ is EmptyExpr!7619) (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))) ((_ is EmptyLang!7619) (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)))))))

(assert (=> d!725711 (validRegex!3245 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)))))

(assert (=> d!725711 (= (derivativeStep!2188 (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340)) c!14016) lt!904890)))

(declare-fun b!2562159 () Bool)

(assert (=> b!2562159 (= c!411693 ((_ is Union!7619) (ite c!411616 (regTwo!15751 r!27340) (regTwo!15750 r!27340))))))

(assert (=> b!2562159 (= e!1617957 e!1617954)))

(assert (= (and d!725711 c!411696) b!2562152))

(assert (= (and d!725711 (not c!411696)) b!2562155))

(assert (= (and b!2562155 c!411692) b!2562156))

(assert (= (and b!2562155 (not c!411692)) b!2562159))

(assert (= (and b!2562159 c!411693) b!2562157))

(assert (= (and b!2562159 (not c!411693)) b!2562154))

(assert (= (and b!2562154 c!411695) b!2562161))

(assert (= (and b!2562154 (not c!411695)) b!2562158))

(assert (= (and b!2562158 c!411694) b!2562160))

(assert (= (and b!2562158 (not c!411694)) b!2562153))

(assert (= (or b!2562160 b!2562153) bm!164267))

(assert (= (or b!2562161 bm!164267) bm!164269))

(assert (= (or b!2562157 b!2562160) bm!164268))

(assert (= (or b!2562157 bm!164269) bm!164270))

(declare-fun m!2901869 () Bool)

(assert (=> bm!164268 m!2901869))

(declare-fun m!2901871 () Bool)

(assert (=> b!2562158 m!2901871))

(declare-fun m!2901875 () Bool)

(assert (=> bm!164270 m!2901875))

(declare-fun m!2901879 () Bool)

(assert (=> d!725711 m!2901879))

(declare-fun m!2901881 () Bool)

(assert (=> d!725711 m!2901881))

(assert (=> bm!164184 d!725711))

(assert (=> b!2561502 d!725705))

(declare-fun d!725717 () Bool)

(assert (not d!725717))

(assert (=> b!2561704 d!725717))

(declare-fun d!725719 () Bool)

(assert (=> d!725719 (= (nullable!2536 (regOne!15750 (regTwo!15750 r!27340))) (nullableFct!761 (regOne!15750 (regTwo!15750 r!27340))))))

(declare-fun bs!469851 () Bool)

(assert (= bs!469851 d!725719))

(declare-fun m!2901883 () Bool)

(assert (=> bs!469851 m!2901883))

(assert (=> b!2561653 d!725719))

(assert (=> b!2561709 d!725671))

(assert (=> b!2561709 d!725673))

(assert (=> d!725539 d!725543))

(declare-fun d!725721 () Bool)

(declare-fun e!1617974 () Bool)

(assert (=> d!725721 e!1617974))

(declare-fun res!1078659 () Bool)

(assert (=> d!725721 (=> res!1078659 e!1617974)))

(assert (=> d!725721 (= res!1078659 (matchR!3564 lt!904829 tl!4068))))

(assert (=> d!725721 true))

(declare-fun _$116!346 () Unit!43423)

(assert (=> d!725721 (= (choose!15115 lt!904829 lt!904832 tl!4068) _$116!346)))

(declare-fun b!2562185 () Bool)

(assert (=> b!2562185 (= e!1617974 (matchR!3564 lt!904832 tl!4068))))

(assert (= (and d!725721 (not res!1078659)) b!2562185))

(assert (=> d!725721 m!2901429))

(assert (=> b!2562185 m!2901411))

(assert (=> d!725539 d!725721))

(declare-fun b!2562186 () Bool)

(declare-fun e!1617976 () Bool)

(declare-fun call!164280 () Bool)

(assert (=> b!2562186 (= e!1617976 call!164280)))

(declare-fun b!2562187 () Bool)

(declare-fun e!1617975 () Bool)

(declare-fun call!164279 () Bool)

(assert (=> b!2562187 (= e!1617975 call!164279)))

(declare-fun d!725725 () Bool)

(declare-fun res!1078663 () Bool)

(declare-fun e!1617981 () Bool)

(assert (=> d!725725 (=> res!1078663 e!1617981)))

(assert (=> d!725725 (= res!1078663 ((_ is ElementMatch!7619) lt!904829))))

(assert (=> d!725725 (= (validRegex!3245 lt!904829) e!1617981)))

(declare-fun b!2562188 () Bool)

(declare-fun e!1617980 () Bool)

(declare-fun e!1617977 () Bool)

(assert (=> b!2562188 (= e!1617980 e!1617977)))

(declare-fun res!1078662 () Bool)

(assert (=> b!2562188 (= res!1078662 (not (nullable!2536 (reg!7948 lt!904829))))))

(assert (=> b!2562188 (=> (not res!1078662) (not e!1617977))))

(declare-fun b!2562189 () Bool)

(declare-fun e!1617979 () Bool)

(assert (=> b!2562189 (= e!1617979 e!1617975)))

(declare-fun res!1078660 () Bool)

(assert (=> b!2562189 (=> (not res!1078660) (not e!1617975))))

(assert (=> b!2562189 (= res!1078660 call!164280)))

(declare-fun b!2562190 () Bool)

(assert (=> b!2562190 (= e!1617981 e!1617980)))

(declare-fun c!411701 () Bool)

(assert (=> b!2562190 (= c!411701 ((_ is Star!7619) lt!904829))))

(declare-fun bm!164274 () Bool)

(declare-fun call!164281 () Bool)

(assert (=> bm!164274 (= call!164279 call!164281)))

(declare-fun b!2562191 () Bool)

(declare-fun res!1078661 () Bool)

(assert (=> b!2562191 (=> (not res!1078661) (not e!1617976))))

(assert (=> b!2562191 (= res!1078661 call!164279)))

(declare-fun e!1617978 () Bool)

(assert (=> b!2562191 (= e!1617978 e!1617976)))

(declare-fun b!2562192 () Bool)

(declare-fun res!1078664 () Bool)

(assert (=> b!2562192 (=> res!1078664 e!1617979)))

(assert (=> b!2562192 (= res!1078664 (not ((_ is Concat!12315) lt!904829)))))

(assert (=> b!2562192 (= e!1617978 e!1617979)))

(declare-fun b!2562193 () Bool)

(assert (=> b!2562193 (= e!1617977 call!164281)))

(declare-fun bm!164275 () Bool)

(declare-fun c!411702 () Bool)

(assert (=> bm!164275 (= call!164280 (validRegex!3245 (ite c!411702 (regTwo!15751 lt!904829) (regOne!15750 lt!904829))))))

(declare-fun bm!164276 () Bool)

(assert (=> bm!164276 (= call!164281 (validRegex!3245 (ite c!411701 (reg!7948 lt!904829) (ite c!411702 (regOne!15751 lt!904829) (regTwo!15750 lt!904829)))))))

(declare-fun b!2562194 () Bool)

(assert (=> b!2562194 (= e!1617980 e!1617978)))

(assert (=> b!2562194 (= c!411702 ((_ is Union!7619) lt!904829))))

(assert (= (and d!725725 (not res!1078663)) b!2562190))

(assert (= (and b!2562190 c!411701) b!2562188))

(assert (= (and b!2562190 (not c!411701)) b!2562194))

(assert (= (and b!2562188 res!1078662) b!2562193))

(assert (= (and b!2562194 c!411702) b!2562191))

(assert (= (and b!2562194 (not c!411702)) b!2562192))

(assert (= (and b!2562191 res!1078661) b!2562186))

(assert (= (and b!2562192 (not res!1078664)) b!2562189))

(assert (= (and b!2562189 res!1078660) b!2562187))

(assert (= (or b!2562191 b!2562187) bm!164274))

(assert (= (or b!2562186 b!2562189) bm!164275))

(assert (= (or b!2562193 bm!164274) bm!164276))

(declare-fun m!2901893 () Bool)

(assert (=> b!2562188 m!2901893))

(declare-fun m!2901895 () Bool)

(assert (=> bm!164275 m!2901895))

(declare-fun m!2901897 () Bool)

(assert (=> bm!164276 m!2901897))

(assert (=> d!725539 d!725725))

(assert (=> b!2561742 d!725603))

(assert (=> b!2561837 d!725705))

(declare-fun b!2562195 () Bool)

(declare-fun e!1617983 () Bool)

(declare-fun e!1617982 () Bool)

(assert (=> b!2562195 (= e!1617983 e!1617982)))

(declare-fun res!1078667 () Bool)

(assert (=> b!2562195 (=> res!1078667 e!1617982)))

(assert (=> b!2562195 (= res!1078667 ((_ is Star!7619) (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)))))

(declare-fun b!2562196 () Bool)

(declare-fun e!1617984 () Bool)

(declare-fun e!1617985 () Bool)

(assert (=> b!2562196 (= e!1617984 e!1617985)))

(declare-fun res!1078665 () Bool)

(declare-fun call!164283 () Bool)

(assert (=> b!2562196 (= res!1078665 call!164283)))

(assert (=> b!2562196 (=> (not res!1078665) (not e!1617985))))

(declare-fun b!2562197 () Bool)

(declare-fun e!1617987 () Bool)

(assert (=> b!2562197 (= e!1617987 call!164283)))

(declare-fun b!2562198 () Bool)

(assert (=> b!2562198 (= e!1617984 e!1617987)))

(declare-fun res!1078668 () Bool)

(declare-fun call!164282 () Bool)

(assert (=> b!2562198 (= res!1078668 call!164282)))

(assert (=> b!2562198 (=> res!1078668 e!1617987)))

(declare-fun d!725727 () Bool)

(declare-fun res!1078669 () Bool)

(declare-fun e!1617986 () Bool)

(assert (=> d!725727 (=> res!1078669 e!1617986)))

(assert (=> d!725727 (= res!1078669 ((_ is EmptyExpr!7619) (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)))))

(assert (=> d!725727 (= (nullableFct!761 (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)) e!1617986)))

(declare-fun bm!164277 () Bool)

(declare-fun c!411703 () Bool)

(assert (=> bm!164277 (= call!164283 (nullable!2536 (ite c!411703 (regTwo!15751 (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)) (regOne!15750 (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2562199 () Bool)

(assert (=> b!2562199 (= e!1617982 e!1617984)))

(assert (=> b!2562199 (= c!411703 ((_ is Union!7619) (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)))))

(declare-fun b!2562200 () Bool)

(assert (=> b!2562200 (= e!1617985 call!164282)))

(declare-fun b!2562201 () Bool)

(assert (=> b!2562201 (= e!1617986 e!1617983)))

(declare-fun res!1078666 () Bool)

(assert (=> b!2562201 (=> (not res!1078666) (not e!1617983))))

(assert (=> b!2562201 (= res!1078666 (and (not ((_ is EmptyLang!7619) (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7619) (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)))))))

(declare-fun bm!164278 () Bool)

(assert (=> bm!164278 (= call!164282 (nullable!2536 (ite c!411703 (regOne!15751 (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)) (regTwo!15750 (derivative!314 (derivativeStep!2188 r!27340 c!14016) tl!4068)))))))

(assert (= (and d!725727 (not res!1078669)) b!2562201))

(assert (= (and b!2562201 res!1078666) b!2562195))

(assert (= (and b!2562195 (not res!1078667)) b!2562199))

(assert (= (and b!2562199 c!411703) b!2562198))

(assert (= (and b!2562199 (not c!411703)) b!2562196))

(assert (= (and b!2562198 (not res!1078668)) b!2562197))

(assert (= (and b!2562196 res!1078665) b!2562200))

(assert (= (or b!2562197 b!2562196) bm!164277))

(assert (= (or b!2562198 b!2562200) bm!164278))

(declare-fun m!2901899 () Bool)

(assert (=> bm!164277 m!2901899))

(declare-fun m!2901901 () Bool)

(assert (=> bm!164278 m!2901901))

(assert (=> d!725609 d!725727))

(declare-fun d!725731 () Bool)

(assert (not d!725731))

(assert (=> b!2561744 d!725731))

(declare-fun d!725733 () Bool)

(assert (not d!725733))

(assert (=> b!2561744 d!725733))

(assert (=> b!2561744 d!725717))

(assert (=> b!2561744 d!725673))

(declare-fun d!725735 () Bool)

(declare-fun lt!904892 () Regex!7619)

(assert (=> d!725735 (validRegex!3245 lt!904892)))

(declare-fun e!1617995 () Regex!7619)

(assert (=> d!725735 (= lt!904892 e!1617995)))

(declare-fun c!411706 () Bool)

(assert (=> d!725735 (= c!411706 ((_ is Cons!29584) (t!211383 tl!4068)))))

(assert (=> d!725735 (validRegex!3245 (derivativeStep!2188 lt!904830 (h!35004 tl!4068)))))

(assert (=> d!725735 (= (derivative!314 (derivativeStep!2188 lt!904830 (h!35004 tl!4068)) (t!211383 tl!4068)) lt!904892)))

(declare-fun b!2562211 () Bool)

(assert (=> b!2562211 (= e!1617995 (derivative!314 (derivativeStep!2188 (derivativeStep!2188 lt!904830 (h!35004 tl!4068)) (h!35004 (t!211383 tl!4068))) (t!211383 (t!211383 tl!4068))))))

(declare-fun b!2562212 () Bool)

(assert (=> b!2562212 (= e!1617995 (derivativeStep!2188 lt!904830 (h!35004 tl!4068)))))

(assert (= (and d!725735 c!411706) b!2562211))

(assert (= (and d!725735 (not c!411706)) b!2562212))

(declare-fun m!2901909 () Bool)

(assert (=> d!725735 m!2901909))

(assert (=> d!725735 m!2901485))

(declare-fun m!2901911 () Bool)

(assert (=> d!725735 m!2901911))

(assert (=> b!2562211 m!2901485))

(declare-fun m!2901913 () Bool)

(assert (=> b!2562211 m!2901913))

(assert (=> b!2562211 m!2901913))

(declare-fun m!2901917 () Bool)

(assert (=> b!2562211 m!2901917))

(assert (=> b!2561562 d!725735))

(declare-fun b!2562222 () Bool)

(declare-fun e!1618007 () Regex!7619)

(assert (=> b!2562222 (= e!1618007 EmptyLang!7619)))

(declare-fun b!2562223 () Bool)

(declare-fun e!1618004 () Regex!7619)

(declare-fun call!164290 () Regex!7619)

(assert (=> b!2562223 (= e!1618004 (Union!7619 (Concat!12315 call!164290 (regTwo!15750 lt!904830)) EmptyLang!7619))))

(declare-fun bm!164285 () Bool)

(declare-fun call!164292 () Regex!7619)

(assert (=> bm!164285 (= call!164290 call!164292)))

(declare-fun b!2562224 () Bool)

(declare-fun e!1618003 () Regex!7619)

(declare-fun e!1618005 () Regex!7619)

(assert (=> b!2562224 (= e!1618003 e!1618005)))

(declare-fun c!411712 () Bool)

(assert (=> b!2562224 (= c!411712 ((_ is Star!7619) lt!904830))))

(declare-fun b!2562225 () Bool)

(declare-fun e!1618006 () Regex!7619)

(assert (=> b!2562225 (= e!1618007 e!1618006)))

(declare-fun c!411709 () Bool)

(assert (=> b!2562225 (= c!411709 ((_ is ElementMatch!7619) lt!904830))))

(declare-fun call!164293 () Regex!7619)

(declare-fun c!411710 () Bool)

(declare-fun bm!164286 () Bool)

(assert (=> bm!164286 (= call!164293 (derivativeStep!2188 (ite c!411710 (regTwo!15751 lt!904830) (regTwo!15750 lt!904830)) (h!35004 tl!4068)))))

(declare-fun b!2562226 () Bool)

(assert (=> b!2562226 (= e!1618006 (ite (= (h!35004 tl!4068) (c!411501 lt!904830)) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164287 () Bool)

(declare-fun call!164291 () Regex!7619)

(assert (=> bm!164287 (= call!164292 call!164291)))

(declare-fun b!2562227 () Bool)

(assert (=> b!2562227 (= e!1618003 (Union!7619 call!164291 call!164293))))

(declare-fun b!2562228 () Bool)

(declare-fun c!411711 () Bool)

(assert (=> b!2562228 (= c!411711 (nullable!2536 (regOne!15750 lt!904830)))))

(assert (=> b!2562228 (= e!1618005 e!1618004)))

(declare-fun bm!164288 () Bool)

(assert (=> bm!164288 (= call!164291 (derivativeStep!2188 (ite c!411710 (regOne!15751 lt!904830) (ite c!411712 (reg!7948 lt!904830) (regOne!15750 lt!904830))) (h!35004 tl!4068)))))

(declare-fun b!2562230 () Bool)

(assert (=> b!2562230 (= e!1618004 (Union!7619 (Concat!12315 call!164290 (regTwo!15750 lt!904830)) call!164293))))

(declare-fun b!2562231 () Bool)

(assert (=> b!2562231 (= e!1618005 (Concat!12315 call!164292 lt!904830))))

(declare-fun d!725741 () Bool)

(declare-fun lt!904893 () Regex!7619)

(assert (=> d!725741 (validRegex!3245 lt!904893)))

(assert (=> d!725741 (= lt!904893 e!1618007)))

(declare-fun c!411713 () Bool)

(assert (=> d!725741 (= c!411713 (or ((_ is EmptyExpr!7619) lt!904830) ((_ is EmptyLang!7619) lt!904830)))))

(assert (=> d!725741 (validRegex!3245 lt!904830)))

(assert (=> d!725741 (= (derivativeStep!2188 lt!904830 (h!35004 tl!4068)) lt!904893)))

(declare-fun b!2562229 () Bool)

(assert (=> b!2562229 (= c!411710 ((_ is Union!7619) lt!904830))))

(assert (=> b!2562229 (= e!1618006 e!1618003)))

(assert (= (and d!725741 c!411713) b!2562222))

(assert (= (and d!725741 (not c!411713)) b!2562225))

(assert (= (and b!2562225 c!411709) b!2562226))

(assert (= (and b!2562225 (not c!411709)) b!2562229))

(assert (= (and b!2562229 c!411710) b!2562227))

(assert (= (and b!2562229 (not c!411710)) b!2562224))

(assert (= (and b!2562224 c!411712) b!2562231))

(assert (= (and b!2562224 (not c!411712)) b!2562228))

(assert (= (and b!2562228 c!411711) b!2562230))

(assert (= (and b!2562228 (not c!411711)) b!2562223))

(assert (= (or b!2562230 b!2562223) bm!164285))

(assert (= (or b!2562231 bm!164285) bm!164287))

(assert (= (or b!2562227 b!2562230) bm!164286))

(assert (= (or b!2562227 bm!164287) bm!164288))

(declare-fun m!2901925 () Bool)

(assert (=> bm!164286 m!2901925))

(declare-fun m!2901927 () Bool)

(assert (=> b!2562228 m!2901927))

(declare-fun m!2901929 () Bool)

(assert (=> bm!164288 m!2901929))

(declare-fun m!2901931 () Bool)

(assert (=> d!725741 m!2901931))

(assert (=> d!725741 m!2901475))

(assert (=> b!2561562 d!725741))

(declare-fun b!2562241 () Bool)

(declare-fun e!1618016 () Bool)

(declare-fun call!164298 () Bool)

(assert (=> b!2562241 (= e!1618016 call!164298)))

(declare-fun b!2562242 () Bool)

(declare-fun e!1618015 () Bool)

(declare-fun call!164297 () Bool)

(assert (=> b!2562242 (= e!1618015 call!164297)))

(declare-fun d!725745 () Bool)

(declare-fun res!1078688 () Bool)

(declare-fun e!1618021 () Bool)

(assert (=> d!725745 (=> res!1078688 e!1618021)))

(assert (=> d!725745 (= res!1078688 ((_ is ElementMatch!7619) (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))))))

(assert (=> d!725745 (= (validRegex!3245 (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))) e!1618021)))

(declare-fun b!2562243 () Bool)

(declare-fun e!1618020 () Bool)

(declare-fun e!1618017 () Bool)

(assert (=> b!2562243 (= e!1618020 e!1618017)))

(declare-fun res!1078687 () Bool)

(assert (=> b!2562243 (= res!1078687 (not (nullable!2536 (reg!7948 (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))))))))

(assert (=> b!2562243 (=> (not res!1078687) (not e!1618017))))

(declare-fun b!2562244 () Bool)

(declare-fun e!1618019 () Bool)

(assert (=> b!2562244 (= e!1618019 e!1618015)))

(declare-fun res!1078685 () Bool)

(assert (=> b!2562244 (=> (not res!1078685) (not e!1618015))))

(assert (=> b!2562244 (= res!1078685 call!164298)))

(declare-fun b!2562245 () Bool)

(assert (=> b!2562245 (= e!1618021 e!1618020)))

(declare-fun c!411716 () Bool)

(assert (=> b!2562245 (= c!411716 ((_ is Star!7619) (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))))))

(declare-fun bm!164292 () Bool)

(declare-fun call!164299 () Bool)

(assert (=> bm!164292 (= call!164297 call!164299)))

(declare-fun b!2562246 () Bool)

(declare-fun res!1078686 () Bool)

(assert (=> b!2562246 (=> (not res!1078686) (not e!1618016))))

(assert (=> b!2562246 (= res!1078686 call!164297)))

(declare-fun e!1618018 () Bool)

(assert (=> b!2562246 (= e!1618018 e!1618016)))

(declare-fun b!2562247 () Bool)

(declare-fun res!1078689 () Bool)

(assert (=> b!2562247 (=> res!1078689 e!1618019)))

(assert (=> b!2562247 (= res!1078689 (not ((_ is Concat!12315) (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340)))))))

(assert (=> b!2562247 (= e!1618018 e!1618019)))

(declare-fun b!2562248 () Bool)

(assert (=> b!2562248 (= e!1618017 call!164299)))

(declare-fun bm!164293 () Bool)

(declare-fun c!411717 () Bool)

(assert (=> bm!164293 (= call!164298 (validRegex!3245 (ite c!411717 (regTwo!15751 (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))) (regOne!15750 (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))))))))

(declare-fun bm!164294 () Bool)

(assert (=> bm!164294 (= call!164299 (validRegex!3245 (ite c!411716 (reg!7948 (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))) (ite c!411717 (regOne!15751 (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))) (regTwo!15750 (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340)))))))))

(declare-fun b!2562249 () Bool)

(assert (=> b!2562249 (= e!1618020 e!1618018)))

(assert (=> b!2562249 (= c!411717 ((_ is Union!7619) (ite c!411613 (regTwo!15751 r!27340) (regOne!15750 r!27340))))))

(assert (= (and d!725745 (not res!1078688)) b!2562245))

(assert (= (and b!2562245 c!411716) b!2562243))

(assert (= (and b!2562245 (not c!411716)) b!2562249))

(assert (= (and b!2562243 res!1078687) b!2562248))

(assert (= (and b!2562249 c!411717) b!2562246))

(assert (= (and b!2562249 (not c!411717)) b!2562247))

(assert (= (and b!2562246 res!1078686) b!2562241))

(assert (= (and b!2562247 (not res!1078689)) b!2562244))

(assert (= (and b!2562244 res!1078685) b!2562242))

(assert (= (or b!2562246 b!2562242) bm!164292))

(assert (= (or b!2562241 b!2562244) bm!164293))

(assert (= (or b!2562248 bm!164292) bm!164294))

(declare-fun m!2901939 () Bool)

(assert (=> b!2562243 m!2901939))

(declare-fun m!2901941 () Bool)

(assert (=> bm!164293 m!2901941))

(declare-fun m!2901943 () Bool)

(assert (=> bm!164294 m!2901943))

(assert (=> bm!164181 d!725745))

(assert (=> d!725579 d!725647))

(declare-fun b!2562259 () Bool)

(declare-fun e!1618030 () Bool)

(declare-fun call!164304 () Bool)

(assert (=> b!2562259 (= e!1618030 call!164304)))

(declare-fun b!2562260 () Bool)

(declare-fun e!1618029 () Bool)

(declare-fun call!164303 () Bool)

(assert (=> b!2562260 (= e!1618029 call!164303)))

(declare-fun d!725749 () Bool)

(declare-fun res!1078698 () Bool)

(declare-fun e!1618035 () Bool)

(assert (=> d!725749 (=> res!1078698 e!1618035)))

(assert (=> d!725749 (= res!1078698 ((_ is ElementMatch!7619) (derivative!314 lt!904830 tl!4068)))))

(assert (=> d!725749 (= (validRegex!3245 (derivative!314 lt!904830 tl!4068)) e!1618035)))

(declare-fun b!2562261 () Bool)

(declare-fun e!1618034 () Bool)

(declare-fun e!1618031 () Bool)

(assert (=> b!2562261 (= e!1618034 e!1618031)))

(declare-fun res!1078697 () Bool)

(assert (=> b!2562261 (= res!1078697 (not (nullable!2536 (reg!7948 (derivative!314 lt!904830 tl!4068)))))))

(assert (=> b!2562261 (=> (not res!1078697) (not e!1618031))))

(declare-fun b!2562262 () Bool)

(declare-fun e!1618033 () Bool)

(assert (=> b!2562262 (= e!1618033 e!1618029)))

(declare-fun res!1078695 () Bool)

(assert (=> b!2562262 (=> (not res!1078695) (not e!1618029))))

(assert (=> b!2562262 (= res!1078695 call!164304)))

(declare-fun b!2562263 () Bool)

(assert (=> b!2562263 (= e!1618035 e!1618034)))

(declare-fun c!411720 () Bool)

(assert (=> b!2562263 (= c!411720 ((_ is Star!7619) (derivative!314 lt!904830 tl!4068)))))

(declare-fun bm!164298 () Bool)

(declare-fun call!164305 () Bool)

(assert (=> bm!164298 (= call!164303 call!164305)))

(declare-fun b!2562264 () Bool)

(declare-fun res!1078696 () Bool)

(assert (=> b!2562264 (=> (not res!1078696) (not e!1618030))))

(assert (=> b!2562264 (= res!1078696 call!164303)))

(declare-fun e!1618032 () Bool)

(assert (=> b!2562264 (= e!1618032 e!1618030)))

(declare-fun b!2562265 () Bool)

(declare-fun res!1078699 () Bool)

(assert (=> b!2562265 (=> res!1078699 e!1618033)))

(assert (=> b!2562265 (= res!1078699 (not ((_ is Concat!12315) (derivative!314 lt!904830 tl!4068))))))

(assert (=> b!2562265 (= e!1618032 e!1618033)))

(declare-fun b!2562266 () Bool)

(assert (=> b!2562266 (= e!1618031 call!164305)))

(declare-fun bm!164299 () Bool)

(declare-fun c!411721 () Bool)

(assert (=> bm!164299 (= call!164304 (validRegex!3245 (ite c!411721 (regTwo!15751 (derivative!314 lt!904830 tl!4068)) (regOne!15750 (derivative!314 lt!904830 tl!4068)))))))

(declare-fun bm!164300 () Bool)

(assert (=> bm!164300 (= call!164305 (validRegex!3245 (ite c!411720 (reg!7948 (derivative!314 lt!904830 tl!4068)) (ite c!411721 (regOne!15751 (derivative!314 lt!904830 tl!4068)) (regTwo!15750 (derivative!314 lt!904830 tl!4068))))))))

(declare-fun b!2562267 () Bool)

(assert (=> b!2562267 (= e!1618034 e!1618032)))

(assert (=> b!2562267 (= c!411721 ((_ is Union!7619) (derivative!314 lt!904830 tl!4068)))))

(assert (= (and d!725749 (not res!1078698)) b!2562263))

(assert (= (and b!2562263 c!411720) b!2562261))

(assert (= (and b!2562263 (not c!411720)) b!2562267))

(assert (= (and b!2562261 res!1078697) b!2562266))

(assert (= (and b!2562267 c!411721) b!2562264))

(assert (= (and b!2562267 (not c!411721)) b!2562265))

(assert (= (and b!2562264 res!1078696) b!2562259))

(assert (= (and b!2562265 (not res!1078699)) b!2562262))

(assert (= (and b!2562262 res!1078695) b!2562260))

(assert (= (or b!2562264 b!2562260) bm!164298))

(assert (= (or b!2562259 b!2562262) bm!164299))

(assert (= (or b!2562266 bm!164298) bm!164300))

(declare-fun m!2901951 () Bool)

(assert (=> b!2562261 m!2901951))

(declare-fun m!2901953 () Bool)

(assert (=> bm!164299 m!2901953))

(declare-fun m!2901955 () Bool)

(assert (=> bm!164300 m!2901955))

(assert (=> d!725579 d!725749))

(assert (=> b!2561713 d!725717))

(assert (=> b!2561499 d!725649))

(assert (=> b!2561499 d!725651))

(declare-fun b!2562268 () Bool)

(declare-fun e!1618037 () Bool)

(declare-fun call!164307 () Bool)

(assert (=> b!2562268 (= e!1618037 call!164307)))

(declare-fun b!2562269 () Bool)

(declare-fun e!1618036 () Bool)

(declare-fun call!164306 () Bool)

(assert (=> b!2562269 (= e!1618036 call!164306)))

(declare-fun d!725753 () Bool)

(declare-fun res!1078703 () Bool)

(declare-fun e!1618042 () Bool)

(assert (=> d!725753 (=> res!1078703 e!1618042)))

(assert (=> d!725753 (= res!1078703 ((_ is ElementMatch!7619) (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))))

(assert (=> d!725753 (= (validRegex!3245 (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))) e!1618042)))

(declare-fun b!2562270 () Bool)

(declare-fun e!1618041 () Bool)

(declare-fun e!1618038 () Bool)

(assert (=> b!2562270 (= e!1618041 e!1618038)))

(declare-fun res!1078702 () Bool)

(assert (=> b!2562270 (= res!1078702 (not (nullable!2536 (reg!7948 (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))))))

(assert (=> b!2562270 (=> (not res!1078702) (not e!1618038))))

(declare-fun b!2562271 () Bool)

(declare-fun e!1618040 () Bool)

(assert (=> b!2562271 (= e!1618040 e!1618036)))

(declare-fun res!1078700 () Bool)

(assert (=> b!2562271 (=> (not res!1078700) (not e!1618036))))

(assert (=> b!2562271 (= res!1078700 call!164307)))

(declare-fun b!2562272 () Bool)

(assert (=> b!2562272 (= e!1618042 e!1618041)))

(declare-fun c!411722 () Bool)

(assert (=> b!2562272 (= c!411722 ((_ is Star!7619) (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))))

(declare-fun bm!164301 () Bool)

(declare-fun call!164308 () Bool)

(assert (=> bm!164301 (= call!164306 call!164308)))

(declare-fun b!2562273 () Bool)

(declare-fun res!1078701 () Bool)

(assert (=> b!2562273 (=> (not res!1078701) (not e!1618037))))

(assert (=> b!2562273 (= res!1078701 call!164306)))

(declare-fun e!1618039 () Bool)

(assert (=> b!2562273 (= e!1618039 e!1618037)))

(declare-fun b!2562274 () Bool)

(declare-fun res!1078704 () Bool)

(assert (=> b!2562274 (=> res!1078704 e!1618040)))

(assert (=> b!2562274 (= res!1078704 (not ((_ is Concat!12315) (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))))))))

(assert (=> b!2562274 (= e!1618039 e!1618040)))

(declare-fun b!2562275 () Bool)

(assert (=> b!2562275 (= e!1618038 call!164308)))

(declare-fun bm!164302 () Bool)

(declare-fun c!411723 () Bool)

(assert (=> bm!164302 (= call!164307 (validRegex!3245 (ite c!411723 (regTwo!15751 (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))) (regOne!15750 (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))))))

(declare-fun bm!164303 () Bool)

(assert (=> bm!164303 (= call!164308 (validRegex!3245 (ite c!411722 (reg!7948 (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))) (ite c!411723 (regOne!15751 (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))) (regTwo!15750 (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340)))))))))))

(declare-fun b!2562276 () Bool)

(assert (=> b!2562276 (= e!1618041 e!1618039)))

(assert (=> b!2562276 (= c!411723 ((_ is Union!7619) (ite c!411606 (reg!7948 (regTwo!15750 r!27340)) (ite c!411607 (regOne!15751 (regTwo!15750 r!27340)) (regTwo!15750 (regTwo!15750 r!27340))))))))

(assert (= (and d!725753 (not res!1078703)) b!2562272))

(assert (= (and b!2562272 c!411722) b!2562270))

(assert (= (and b!2562272 (not c!411722)) b!2562276))

(assert (= (and b!2562270 res!1078702) b!2562275))

(assert (= (and b!2562276 c!411723) b!2562273))

(assert (= (and b!2562276 (not c!411723)) b!2562274))

(assert (= (and b!2562273 res!1078701) b!2562268))

(assert (= (and b!2562274 (not res!1078704)) b!2562271))

(assert (= (and b!2562271 res!1078700) b!2562269))

(assert (= (or b!2562273 b!2562269) bm!164301))

(assert (= (or b!2562268 b!2562271) bm!164302))

(assert (= (or b!2562275 bm!164301) bm!164303))

(declare-fun m!2901957 () Bool)

(assert (=> b!2562270 m!2901957))

(declare-fun m!2901959 () Bool)

(assert (=> bm!164302 m!2901959))

(declare-fun m!2901961 () Bool)

(assert (=> bm!164303 m!2901961))

(assert (=> bm!164178 d!725753))

(declare-fun b!2562291 () Bool)

(declare-fun e!1618054 () Regex!7619)

(assert (=> b!2562291 (= e!1618054 EmptyLang!7619)))

(declare-fun call!164310 () Regex!7619)

(declare-fun e!1618051 () Regex!7619)

(declare-fun b!2562292 () Bool)

(assert (=> b!2562292 (= e!1618051 (Union!7619 (Concat!12315 call!164310 (regTwo!15750 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))) EmptyLang!7619))))

(declare-fun bm!164305 () Bool)

(declare-fun call!164312 () Regex!7619)

(assert (=> bm!164305 (= call!164310 call!164312)))

(declare-fun b!2562293 () Bool)

(declare-fun e!1618050 () Regex!7619)

(declare-fun e!1618052 () Regex!7619)

(assert (=> b!2562293 (= e!1618050 e!1618052)))

(declare-fun c!411730 () Bool)

(assert (=> b!2562293 (= c!411730 ((_ is Star!7619) (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))))))

(declare-fun b!2562294 () Bool)

(declare-fun e!1618053 () Regex!7619)

(assert (=> b!2562294 (= e!1618054 e!1618053)))

(declare-fun c!411727 () Bool)

(assert (=> b!2562294 (= c!411727 ((_ is ElementMatch!7619) (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))))))

(declare-fun call!164313 () Regex!7619)

(declare-fun c!411728 () Bool)

(declare-fun bm!164306 () Bool)

(assert (=> bm!164306 (= call!164313 (derivativeStep!2188 (ite c!411728 (regTwo!15751 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))) (regTwo!15750 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))) c!14016))))

(declare-fun b!2562295 () Bool)

(assert (=> b!2562295 (= e!1618053 (ite (= c!14016 (c!411501 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164307 () Bool)

(declare-fun call!164311 () Regex!7619)

(assert (=> bm!164307 (= call!164312 call!164311)))

(declare-fun b!2562296 () Bool)

(assert (=> b!2562296 (= e!1618050 (Union!7619 call!164311 call!164313))))

(declare-fun b!2562297 () Bool)

(declare-fun c!411729 () Bool)

(assert (=> b!2562297 (= c!411729 (nullable!2536 (regOne!15750 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))))))

(assert (=> b!2562297 (= e!1618052 e!1618051)))

(declare-fun bm!164308 () Bool)

(assert (=> bm!164308 (= call!164311 (derivativeStep!2188 (ite c!411728 (regOne!15751 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))) (ite c!411730 (reg!7948 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))) (regOne!15750 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))))) c!14016))))

(declare-fun b!2562299 () Bool)

(assert (=> b!2562299 (= e!1618051 (Union!7619 (Concat!12315 call!164310 (regTwo!15750 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))) call!164313))))

(declare-fun b!2562300 () Bool)

(assert (=> b!2562300 (= e!1618052 (Concat!12315 call!164312 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))))))

(declare-fun d!725759 () Bool)

(declare-fun lt!904895 () Regex!7619)

(assert (=> d!725759 (validRegex!3245 lt!904895)))

(assert (=> d!725759 (= lt!904895 e!1618054)))

(declare-fun c!411731 () Bool)

(assert (=> d!725759 (= c!411731 (or ((_ is EmptyExpr!7619) (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))) ((_ is EmptyLang!7619) (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))))))

(assert (=> d!725759 (validRegex!3245 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))))

(assert (=> d!725759 (= (derivativeStep!2188 (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))) c!14016) lt!904895)))

(declare-fun b!2562298 () Bool)

(assert (=> b!2562298 (= c!411728 ((_ is Union!7619) (ite c!411573 (regOne!15751 (regOne!15750 r!27340)) (ite c!411575 (reg!7948 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340))))))))

(assert (=> b!2562298 (= e!1618053 e!1618050)))

(assert (= (and d!725759 c!411731) b!2562291))

(assert (= (and d!725759 (not c!411731)) b!2562294))

(assert (= (and b!2562294 c!411727) b!2562295))

(assert (= (and b!2562294 (not c!411727)) b!2562298))

(assert (= (and b!2562298 c!411728) b!2562296))

(assert (= (and b!2562298 (not c!411728)) b!2562293))

(assert (= (and b!2562293 c!411730) b!2562300))

(assert (= (and b!2562293 (not c!411730)) b!2562297))

(assert (= (and b!2562297 c!411729) b!2562299))

(assert (= (and b!2562297 (not c!411729)) b!2562292))

(assert (= (or b!2562299 b!2562292) bm!164305))

(assert (= (or b!2562300 bm!164305) bm!164307))

(assert (= (or b!2562296 b!2562299) bm!164306))

(assert (= (or b!2562296 bm!164307) bm!164308))

(declare-fun m!2901971 () Bool)

(assert (=> bm!164306 m!2901971))

(declare-fun m!2901973 () Bool)

(assert (=> b!2562297 m!2901973))

(declare-fun m!2901975 () Bool)

(assert (=> bm!164308 m!2901975))

(declare-fun m!2901977 () Bool)

(assert (=> d!725759 m!2901977))

(declare-fun m!2901979 () Bool)

(assert (=> d!725759 m!2901979))

(assert (=> bm!164150 d!725759))

(assert (=> b!2561537 d!725649))

(assert (=> b!2561537 d!725651))

(assert (=> b!2561732 d!725717))

(declare-fun b!2562311 () Bool)

(declare-fun e!1618061 () Bool)

(declare-fun e!1618060 () Bool)

(assert (=> b!2562311 (= e!1618061 e!1618060)))

(declare-fun res!1078715 () Bool)

(assert (=> b!2562311 (=> res!1078715 e!1618060)))

(assert (=> b!2562311 (= res!1078715 ((_ is Star!7619) lt!904825))))

(declare-fun b!2562312 () Bool)

(declare-fun e!1618062 () Bool)

(declare-fun e!1618063 () Bool)

(assert (=> b!2562312 (= e!1618062 e!1618063)))

(declare-fun res!1078713 () Bool)

(declare-fun call!164319 () Bool)

(assert (=> b!2562312 (= res!1078713 call!164319)))

(assert (=> b!2562312 (=> (not res!1078713) (not e!1618063))))

(declare-fun b!2562313 () Bool)

(declare-fun e!1618065 () Bool)

(assert (=> b!2562313 (= e!1618065 call!164319)))

(declare-fun b!2562314 () Bool)

(assert (=> b!2562314 (= e!1618062 e!1618065)))

(declare-fun res!1078716 () Bool)

(declare-fun call!164318 () Bool)

(assert (=> b!2562314 (= res!1078716 call!164318)))

(assert (=> b!2562314 (=> res!1078716 e!1618065)))

(declare-fun d!725763 () Bool)

(declare-fun res!1078717 () Bool)

(declare-fun e!1618064 () Bool)

(assert (=> d!725763 (=> res!1078717 e!1618064)))

(assert (=> d!725763 (= res!1078717 ((_ is EmptyExpr!7619) lt!904825))))

(assert (=> d!725763 (= (nullableFct!761 lt!904825) e!1618064)))

(declare-fun bm!164313 () Bool)

(declare-fun c!411737 () Bool)

(assert (=> bm!164313 (= call!164319 (nullable!2536 (ite c!411737 (regTwo!15751 lt!904825) (regOne!15750 lt!904825))))))

(declare-fun b!2562315 () Bool)

(assert (=> b!2562315 (= e!1618060 e!1618062)))

(assert (=> b!2562315 (= c!411737 ((_ is Union!7619) lt!904825))))

(declare-fun b!2562316 () Bool)

(assert (=> b!2562316 (= e!1618063 call!164318)))

(declare-fun b!2562317 () Bool)

(assert (=> b!2562317 (= e!1618064 e!1618061)))

(declare-fun res!1078714 () Bool)

(assert (=> b!2562317 (=> (not res!1078714) (not e!1618061))))

(assert (=> b!2562317 (= res!1078714 (and (not ((_ is EmptyLang!7619) lt!904825)) (not ((_ is ElementMatch!7619) lt!904825))))))

(declare-fun bm!164314 () Bool)

(assert (=> bm!164314 (= call!164318 (nullable!2536 (ite c!411737 (regOne!15751 lt!904825) (regTwo!15750 lt!904825))))))

(assert (= (and d!725763 (not res!1078717)) b!2562317))

(assert (= (and b!2562317 res!1078714) b!2562311))

(assert (= (and b!2562311 (not res!1078715)) b!2562315))

(assert (= (and b!2562315 c!411737) b!2562314))

(assert (= (and b!2562315 (not c!411737)) b!2562312))

(assert (= (and b!2562314 (not res!1078716)) b!2562313))

(assert (= (and b!2562312 res!1078713) b!2562316))

(assert (= (or b!2562313 b!2562312) bm!164313))

(assert (= (or b!2562314 b!2562316) bm!164314))

(declare-fun m!2901983 () Bool)

(assert (=> bm!164313 m!2901983))

(declare-fun m!2901987 () Bool)

(assert (=> bm!164314 m!2901987))

(assert (=> d!725603 d!725763))

(declare-fun d!725765 () Bool)

(assert (=> d!725765 (= (nullable!2536 (regOne!15750 (regOne!15750 r!27340))) (nullableFct!761 (regOne!15750 (regOne!15750 r!27340))))))

(declare-fun bs!469854 () Bool)

(assert (= bs!469854 d!725765))

(declare-fun m!2901993 () Bool)

(assert (=> bs!469854 m!2901993))

(assert (=> b!2561679 d!725765))

(assert (=> bm!164165 d!725647))

(assert (=> d!725585 d!725647))

(declare-fun b!2562318 () Bool)

(declare-fun e!1618067 () Bool)

(declare-fun call!164321 () Bool)

(assert (=> b!2562318 (= e!1618067 call!164321)))

(declare-fun b!2562319 () Bool)

(declare-fun e!1618066 () Bool)

(declare-fun call!164320 () Bool)

(assert (=> b!2562319 (= e!1618066 call!164320)))

(declare-fun d!725769 () Bool)

(declare-fun res!1078721 () Bool)

(declare-fun e!1618072 () Bool)

(assert (=> d!725769 (=> res!1078721 e!1618072)))

(assert (=> d!725769 (= res!1078721 ((_ is ElementMatch!7619) lt!904825))))

(assert (=> d!725769 (= (validRegex!3245 lt!904825) e!1618072)))

(declare-fun b!2562320 () Bool)

(declare-fun e!1618071 () Bool)

(declare-fun e!1618068 () Bool)

(assert (=> b!2562320 (= e!1618071 e!1618068)))

(declare-fun res!1078720 () Bool)

(assert (=> b!2562320 (= res!1078720 (not (nullable!2536 (reg!7948 lt!904825))))))

(assert (=> b!2562320 (=> (not res!1078720) (not e!1618068))))

(declare-fun b!2562321 () Bool)

(declare-fun e!1618070 () Bool)

(assert (=> b!2562321 (= e!1618070 e!1618066)))

(declare-fun res!1078718 () Bool)

(assert (=> b!2562321 (=> (not res!1078718) (not e!1618066))))

(assert (=> b!2562321 (= res!1078718 call!164321)))

(declare-fun b!2562322 () Bool)

(assert (=> b!2562322 (= e!1618072 e!1618071)))

(declare-fun c!411738 () Bool)

(assert (=> b!2562322 (= c!411738 ((_ is Star!7619) lt!904825))))

(declare-fun bm!164315 () Bool)

(declare-fun call!164322 () Bool)

(assert (=> bm!164315 (= call!164320 call!164322)))

(declare-fun b!2562323 () Bool)

(declare-fun res!1078719 () Bool)

(assert (=> b!2562323 (=> (not res!1078719) (not e!1618067))))

(assert (=> b!2562323 (= res!1078719 call!164320)))

(declare-fun e!1618069 () Bool)

(assert (=> b!2562323 (= e!1618069 e!1618067)))

(declare-fun b!2562324 () Bool)

(declare-fun res!1078722 () Bool)

(assert (=> b!2562324 (=> res!1078722 e!1618070)))

(assert (=> b!2562324 (= res!1078722 (not ((_ is Concat!12315) lt!904825)))))

(assert (=> b!2562324 (= e!1618069 e!1618070)))

(declare-fun b!2562325 () Bool)

(assert (=> b!2562325 (= e!1618068 call!164322)))

(declare-fun bm!164316 () Bool)

(declare-fun c!411739 () Bool)

(assert (=> bm!164316 (= call!164321 (validRegex!3245 (ite c!411739 (regTwo!15751 lt!904825) (regOne!15750 lt!904825))))))

(declare-fun bm!164317 () Bool)

(assert (=> bm!164317 (= call!164322 (validRegex!3245 (ite c!411738 (reg!7948 lt!904825) (ite c!411739 (regOne!15751 lt!904825) (regTwo!15750 lt!904825)))))))

(declare-fun b!2562326 () Bool)

(assert (=> b!2562326 (= e!1618071 e!1618069)))

(assert (=> b!2562326 (= c!411739 ((_ is Union!7619) lt!904825))))

(assert (= (and d!725769 (not res!1078721)) b!2562322))

(assert (= (and b!2562322 c!411738) b!2562320))

(assert (= (and b!2562322 (not c!411738)) b!2562326))

(assert (= (and b!2562320 res!1078720) b!2562325))

(assert (= (and b!2562326 c!411739) b!2562323))

(assert (= (and b!2562326 (not c!411739)) b!2562324))

(assert (= (and b!2562323 res!1078719) b!2562318))

(assert (= (and b!2562324 (not res!1078722)) b!2562321))

(assert (= (and b!2562321 res!1078718) b!2562319))

(assert (= (or b!2562323 b!2562319) bm!164315))

(assert (= (or b!2562318 b!2562321) bm!164316))

(assert (= (or b!2562325 bm!164315) bm!164317))

(declare-fun m!2901995 () Bool)

(assert (=> b!2562320 m!2901995))

(declare-fun m!2901997 () Bool)

(assert (=> bm!164316 m!2901997))

(declare-fun m!2901999 () Bool)

(assert (=> bm!164317 m!2901999))

(assert (=> d!725585 d!725769))

(declare-fun bm!164322 () Bool)

(declare-fun call!164327 () Bool)

(assert (=> bm!164322 (= call!164327 (isEmpty!17042 (tail!4101 tl!4068)))))

(declare-fun b!2562337 () Bool)

(declare-fun res!1078728 () Bool)

(declare-fun e!1618082 () Bool)

(assert (=> b!2562337 (=> res!1078728 e!1618082)))

(assert (=> b!2562337 (= res!1078728 (not ((_ is ElementMatch!7619) (derivativeStep!2188 lt!904829 (head!5826 tl!4068)))))))

(declare-fun e!1618080 () Bool)

(assert (=> b!2562337 (= e!1618080 e!1618082)))

(declare-fun b!2562338 () Bool)

(declare-fun e!1618079 () Bool)

(assert (=> b!2562338 (= e!1618079 (= (head!5826 (tail!4101 tl!4068)) (c!411501 (derivativeStep!2188 lt!904829 (head!5826 tl!4068)))))))

(declare-fun b!2562339 () Bool)

(declare-fun e!1618084 () Bool)

(declare-fun e!1618081 () Bool)

(assert (=> b!2562339 (= e!1618084 e!1618081)))

(declare-fun res!1078726 () Bool)

(assert (=> b!2562339 (=> res!1078726 e!1618081)))

(assert (=> b!2562339 (= res!1078726 call!164327)))

(declare-fun b!2562340 () Bool)

(declare-fun res!1078729 () Bool)

(assert (=> b!2562340 (=> res!1078729 e!1618082)))

(assert (=> b!2562340 (= res!1078729 e!1618079)))

(declare-fun res!1078724 () Bool)

(assert (=> b!2562340 (=> (not res!1078724) (not e!1618079))))

(declare-fun lt!904898 () Bool)

(assert (=> b!2562340 (= res!1078724 lt!904898)))

(declare-fun b!2562341 () Bool)

(declare-fun e!1618078 () Bool)

(assert (=> b!2562341 (= e!1618078 e!1618080)))

(declare-fun c!411747 () Bool)

(assert (=> b!2562341 (= c!411747 ((_ is EmptyLang!7619) (derivativeStep!2188 lt!904829 (head!5826 tl!4068))))))

(declare-fun b!2562342 () Bool)

(assert (=> b!2562342 (= e!1618080 (not lt!904898))))

(declare-fun b!2562343 () Bool)

(declare-fun res!1078730 () Bool)

(assert (=> b!2562343 (=> (not res!1078730) (not e!1618079))))

(assert (=> b!2562343 (= res!1078730 (isEmpty!17042 (tail!4101 (tail!4101 tl!4068))))))

(declare-fun d!725771 () Bool)

(assert (=> d!725771 e!1618078))

(declare-fun c!411745 () Bool)

(assert (=> d!725771 (= c!411745 ((_ is EmptyExpr!7619) (derivativeStep!2188 lt!904829 (head!5826 tl!4068))))))

(declare-fun e!1618083 () Bool)

(assert (=> d!725771 (= lt!904898 e!1618083)))

(declare-fun c!411746 () Bool)

(assert (=> d!725771 (= c!411746 (isEmpty!17042 (tail!4101 tl!4068)))))

(assert (=> d!725771 (validRegex!3245 (derivativeStep!2188 lt!904829 (head!5826 tl!4068)))))

(assert (=> d!725771 (= (matchR!3564 (derivativeStep!2188 lt!904829 (head!5826 tl!4068)) (tail!4101 tl!4068)) lt!904898)))

(declare-fun b!2562344 () Bool)

(declare-fun res!1078725 () Bool)

(assert (=> b!2562344 (=> res!1078725 e!1618081)))

(assert (=> b!2562344 (= res!1078725 (not (isEmpty!17042 (tail!4101 (tail!4101 tl!4068)))))))

(declare-fun b!2562345 () Bool)

(assert (=> b!2562345 (= e!1618078 (= lt!904898 call!164327))))

(declare-fun b!2562346 () Bool)

(assert (=> b!2562346 (= e!1618082 e!1618084)))

(declare-fun res!1078727 () Bool)

(assert (=> b!2562346 (=> (not res!1078727) (not e!1618084))))

(assert (=> b!2562346 (= res!1078727 (not lt!904898))))

(declare-fun b!2562347 () Bool)

(assert (=> b!2562347 (= e!1618081 (not (= (head!5826 (tail!4101 tl!4068)) (c!411501 (derivativeStep!2188 lt!904829 (head!5826 tl!4068))))))))

(declare-fun b!2562348 () Bool)

(assert (=> b!2562348 (= e!1618083 (nullable!2536 (derivativeStep!2188 lt!904829 (head!5826 tl!4068))))))

(declare-fun b!2562349 () Bool)

(declare-fun res!1078723 () Bool)

(assert (=> b!2562349 (=> (not res!1078723) (not e!1618079))))

(assert (=> b!2562349 (= res!1078723 (not call!164327))))

(declare-fun b!2562350 () Bool)

(assert (=> b!2562350 (= e!1618083 (matchR!3564 (derivativeStep!2188 (derivativeStep!2188 lt!904829 (head!5826 tl!4068)) (head!5826 (tail!4101 tl!4068))) (tail!4101 (tail!4101 tl!4068))))))

(assert (= (and d!725771 c!411746) b!2562348))

(assert (= (and d!725771 (not c!411746)) b!2562350))

(assert (= (and d!725771 c!411745) b!2562345))

(assert (= (and d!725771 (not c!411745)) b!2562341))

(assert (= (and b!2562341 c!411747) b!2562342))

(assert (= (and b!2562341 (not c!411747)) b!2562337))

(assert (= (and b!2562337 (not res!1078728)) b!2562340))

(assert (= (and b!2562340 res!1078724) b!2562349))

(assert (= (and b!2562349 res!1078723) b!2562343))

(assert (= (and b!2562343 res!1078730) b!2562338))

(assert (= (and b!2562340 (not res!1078729)) b!2562346))

(assert (= (and b!2562346 res!1078727) b!2562339))

(assert (= (and b!2562339 (not res!1078726)) b!2562344))

(assert (= (and b!2562344 (not res!1078725)) b!2562347))

(assert (= (or b!2562345 b!2562339 b!2562349) bm!164322))

(assert (=> b!2562350 m!2901459))

(declare-fun m!2902011 () Bool)

(assert (=> b!2562350 m!2902011))

(assert (=> b!2562350 m!2901457))

(assert (=> b!2562350 m!2902011))

(declare-fun m!2902013 () Bool)

(assert (=> b!2562350 m!2902013))

(assert (=> b!2562350 m!2901459))

(declare-fun m!2902015 () Bool)

(assert (=> b!2562350 m!2902015))

(assert (=> b!2562350 m!2902013))

(assert (=> b!2562350 m!2902015))

(declare-fun m!2902017 () Bool)

(assert (=> b!2562350 m!2902017))

(assert (=> b!2562348 m!2901457))

(declare-fun m!2902019 () Bool)

(assert (=> b!2562348 m!2902019))

(assert (=> b!2562338 m!2901459))

(assert (=> b!2562338 m!2902011))

(assert (=> d!725771 m!2901459))

(assert (=> d!725771 m!2901467))

(assert (=> d!725771 m!2901457))

(declare-fun m!2902023 () Bool)

(assert (=> d!725771 m!2902023))

(assert (=> bm!164322 m!2901459))

(assert (=> bm!164322 m!2901467))

(assert (=> b!2562343 m!2901459))

(assert (=> b!2562343 m!2902015))

(assert (=> b!2562343 m!2902015))

(declare-fun m!2902031 () Bool)

(assert (=> b!2562343 m!2902031))

(assert (=> b!2562347 m!2901459))

(assert (=> b!2562347 m!2902011))

(assert (=> b!2562344 m!2901459))

(assert (=> b!2562344 m!2902015))

(assert (=> b!2562344 m!2902015))

(assert (=> b!2562344 m!2902031))

(assert (=> b!2561505 d!725771))

(declare-fun b!2562361 () Bool)

(declare-fun e!1618094 () Regex!7619)

(assert (=> b!2562361 (= e!1618094 EmptyLang!7619)))

(declare-fun b!2562362 () Bool)

(declare-fun e!1618091 () Regex!7619)

(declare-fun call!164332 () Regex!7619)

(assert (=> b!2562362 (= e!1618091 (Union!7619 (Concat!12315 call!164332 (regTwo!15750 lt!904829)) EmptyLang!7619))))

(declare-fun bm!164327 () Bool)

(declare-fun call!164334 () Regex!7619)

(assert (=> bm!164327 (= call!164332 call!164334)))

(declare-fun b!2562363 () Bool)

(declare-fun e!1618090 () Regex!7619)

(declare-fun e!1618092 () Regex!7619)

(assert (=> b!2562363 (= e!1618090 e!1618092)))

(declare-fun c!411756 () Bool)

(assert (=> b!2562363 (= c!411756 ((_ is Star!7619) lt!904829))))

(declare-fun b!2562364 () Bool)

(declare-fun e!1618093 () Regex!7619)

(assert (=> b!2562364 (= e!1618094 e!1618093)))

(declare-fun c!411753 () Bool)

(assert (=> b!2562364 (= c!411753 ((_ is ElementMatch!7619) lt!904829))))

(declare-fun c!411754 () Bool)

(declare-fun bm!164328 () Bool)

(declare-fun call!164335 () Regex!7619)

(assert (=> bm!164328 (= call!164335 (derivativeStep!2188 (ite c!411754 (regTwo!15751 lt!904829) (regTwo!15750 lt!904829)) (head!5826 tl!4068)))))

(declare-fun b!2562365 () Bool)

(assert (=> b!2562365 (= e!1618093 (ite (= (head!5826 tl!4068) (c!411501 lt!904829)) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164329 () Bool)

(declare-fun call!164333 () Regex!7619)

(assert (=> bm!164329 (= call!164334 call!164333)))

(declare-fun b!2562366 () Bool)

(assert (=> b!2562366 (= e!1618090 (Union!7619 call!164333 call!164335))))

(declare-fun b!2562367 () Bool)

(declare-fun c!411755 () Bool)

(assert (=> b!2562367 (= c!411755 (nullable!2536 (regOne!15750 lt!904829)))))

(assert (=> b!2562367 (= e!1618092 e!1618091)))

(declare-fun bm!164330 () Bool)

(assert (=> bm!164330 (= call!164333 (derivativeStep!2188 (ite c!411754 (regOne!15751 lt!904829) (ite c!411756 (reg!7948 lt!904829) (regOne!15750 lt!904829))) (head!5826 tl!4068)))))

(declare-fun b!2562369 () Bool)

(assert (=> b!2562369 (= e!1618091 (Union!7619 (Concat!12315 call!164332 (regTwo!15750 lt!904829)) call!164335))))

(declare-fun b!2562370 () Bool)

(assert (=> b!2562370 (= e!1618092 (Concat!12315 call!164334 lt!904829))))

(declare-fun d!725777 () Bool)

(declare-fun lt!904900 () Regex!7619)

(assert (=> d!725777 (validRegex!3245 lt!904900)))

(assert (=> d!725777 (= lt!904900 e!1618094)))

(declare-fun c!411757 () Bool)

(assert (=> d!725777 (= c!411757 (or ((_ is EmptyExpr!7619) lt!904829) ((_ is EmptyLang!7619) lt!904829)))))

(assert (=> d!725777 (validRegex!3245 lt!904829)))

(assert (=> d!725777 (= (derivativeStep!2188 lt!904829 (head!5826 tl!4068)) lt!904900)))

(declare-fun b!2562368 () Bool)

(assert (=> b!2562368 (= c!411754 ((_ is Union!7619) lt!904829))))

(assert (=> b!2562368 (= e!1618093 e!1618090)))

(assert (= (and d!725777 c!411757) b!2562361))

(assert (= (and d!725777 (not c!411757)) b!2562364))

(assert (= (and b!2562364 c!411753) b!2562365))

(assert (= (and b!2562364 (not c!411753)) b!2562368))

(assert (= (and b!2562368 c!411754) b!2562366))

(assert (= (and b!2562368 (not c!411754)) b!2562363))

(assert (= (and b!2562363 c!411756) b!2562370))

(assert (= (and b!2562363 (not c!411756)) b!2562367))

(assert (= (and b!2562367 c!411755) b!2562369))

(assert (= (and b!2562367 (not c!411755)) b!2562362))

(assert (= (or b!2562369 b!2562362) bm!164327))

(assert (= (or b!2562370 bm!164327) bm!164329))

(assert (= (or b!2562366 b!2562369) bm!164328))

(assert (= (or b!2562366 bm!164329) bm!164330))

(assert (=> bm!164328 m!2901455))

(declare-fun m!2902037 () Bool)

(assert (=> bm!164328 m!2902037))

(declare-fun m!2902039 () Bool)

(assert (=> b!2562367 m!2902039))

(assert (=> bm!164330 m!2901455))

(declare-fun m!2902041 () Bool)

(assert (=> bm!164330 m!2902041))

(declare-fun m!2902043 () Bool)

(assert (=> d!725777 m!2902043))

(assert (=> d!725777 m!2901439))

(assert (=> b!2561505 d!725777))

(assert (=> b!2561505 d!725705))

(assert (=> b!2561505 d!725651))

(declare-fun bm!164332 () Bool)

(declare-fun call!164337 () Bool)

(assert (=> bm!164332 (= call!164337 (isEmpty!17042 (tail!4101 tl!4068)))))

(declare-fun b!2562385 () Bool)

(declare-fun res!1078744 () Bool)

(declare-fun e!1618106 () Bool)

(assert (=> b!2562385 (=> res!1078744 e!1618106)))

(assert (=> b!2562385 (= res!1078744 (not ((_ is ElementMatch!7619) (derivativeStep!2188 lt!904830 (head!5826 tl!4068)))))))

(declare-fun e!1618104 () Bool)

(assert (=> b!2562385 (= e!1618104 e!1618106)))

(declare-fun b!2562386 () Bool)

(declare-fun e!1618103 () Bool)

(assert (=> b!2562386 (= e!1618103 (= (head!5826 (tail!4101 tl!4068)) (c!411501 (derivativeStep!2188 lt!904830 (head!5826 tl!4068)))))))

(declare-fun b!2562387 () Bool)

(declare-fun e!1618108 () Bool)

(declare-fun e!1618105 () Bool)

(assert (=> b!2562387 (= e!1618108 e!1618105)))

(declare-fun res!1078742 () Bool)

(assert (=> b!2562387 (=> res!1078742 e!1618105)))

(assert (=> b!2562387 (= res!1078742 call!164337)))

(declare-fun b!2562388 () Bool)

(declare-fun res!1078745 () Bool)

(assert (=> b!2562388 (=> res!1078745 e!1618106)))

(assert (=> b!2562388 (= res!1078745 e!1618103)))

(declare-fun res!1078740 () Bool)

(assert (=> b!2562388 (=> (not res!1078740) (not e!1618103))))

(declare-fun lt!904902 () Bool)

(assert (=> b!2562388 (= res!1078740 lt!904902)))

(declare-fun b!2562389 () Bool)

(declare-fun e!1618102 () Bool)

(assert (=> b!2562389 (= e!1618102 e!1618104)))

(declare-fun c!411763 () Bool)

(assert (=> b!2562389 (= c!411763 ((_ is EmptyLang!7619) (derivativeStep!2188 lt!904830 (head!5826 tl!4068))))))

(declare-fun b!2562390 () Bool)

(assert (=> b!2562390 (= e!1618104 (not lt!904902))))

(declare-fun b!2562391 () Bool)

(declare-fun res!1078746 () Bool)

(assert (=> b!2562391 (=> (not res!1078746) (not e!1618103))))

(assert (=> b!2562391 (= res!1078746 (isEmpty!17042 (tail!4101 (tail!4101 tl!4068))))))

(declare-fun d!725781 () Bool)

(assert (=> d!725781 e!1618102))

(declare-fun c!411761 () Bool)

(assert (=> d!725781 (= c!411761 ((_ is EmptyExpr!7619) (derivativeStep!2188 lt!904830 (head!5826 tl!4068))))))

(declare-fun e!1618107 () Bool)

(assert (=> d!725781 (= lt!904902 e!1618107)))

(declare-fun c!411762 () Bool)

(assert (=> d!725781 (= c!411762 (isEmpty!17042 (tail!4101 tl!4068)))))

(assert (=> d!725781 (validRegex!3245 (derivativeStep!2188 lt!904830 (head!5826 tl!4068)))))

(assert (=> d!725781 (= (matchR!3564 (derivativeStep!2188 lt!904830 (head!5826 tl!4068)) (tail!4101 tl!4068)) lt!904902)))

(declare-fun b!2562392 () Bool)

(declare-fun res!1078741 () Bool)

(assert (=> b!2562392 (=> res!1078741 e!1618105)))

(assert (=> b!2562392 (= res!1078741 (not (isEmpty!17042 (tail!4101 (tail!4101 tl!4068)))))))

(declare-fun b!2562393 () Bool)

(assert (=> b!2562393 (= e!1618102 (= lt!904902 call!164337))))

(declare-fun b!2562394 () Bool)

(assert (=> b!2562394 (= e!1618106 e!1618108)))

(declare-fun res!1078743 () Bool)

(assert (=> b!2562394 (=> (not res!1078743) (not e!1618108))))

(assert (=> b!2562394 (= res!1078743 (not lt!904902))))

(declare-fun b!2562395 () Bool)

(assert (=> b!2562395 (= e!1618105 (not (= (head!5826 (tail!4101 tl!4068)) (c!411501 (derivativeStep!2188 lt!904830 (head!5826 tl!4068))))))))

(declare-fun b!2562396 () Bool)

(assert (=> b!2562396 (= e!1618107 (nullable!2536 (derivativeStep!2188 lt!904830 (head!5826 tl!4068))))))

(declare-fun b!2562397 () Bool)

(declare-fun res!1078739 () Bool)

(assert (=> b!2562397 (=> (not res!1078739) (not e!1618103))))

(assert (=> b!2562397 (= res!1078739 (not call!164337))))

(declare-fun b!2562398 () Bool)

(assert (=> b!2562398 (= e!1618107 (matchR!3564 (derivativeStep!2188 (derivativeStep!2188 lt!904830 (head!5826 tl!4068)) (head!5826 (tail!4101 tl!4068))) (tail!4101 (tail!4101 tl!4068))))))

(assert (= (and d!725781 c!411762) b!2562396))

(assert (= (and d!725781 (not c!411762)) b!2562398))

(assert (= (and d!725781 c!411761) b!2562393))

(assert (= (and d!725781 (not c!411761)) b!2562389))

(assert (= (and b!2562389 c!411763) b!2562390))

(assert (= (and b!2562389 (not c!411763)) b!2562385))

(assert (= (and b!2562385 (not res!1078744)) b!2562388))

(assert (= (and b!2562388 res!1078740) b!2562397))

(assert (= (and b!2562397 res!1078739) b!2562391))

(assert (= (and b!2562391 res!1078746) b!2562386))

(assert (= (and b!2562388 (not res!1078745)) b!2562394))

(assert (= (and b!2562394 res!1078743) b!2562387))

(assert (= (and b!2562387 (not res!1078742)) b!2562392))

(assert (= (and b!2562392 (not res!1078741)) b!2562395))

(assert (= (or b!2562393 b!2562387 b!2562397) bm!164332))

(assert (=> b!2562398 m!2901459))

(assert (=> b!2562398 m!2902011))

(assert (=> b!2562398 m!2901469))

(assert (=> b!2562398 m!2902011))

(declare-fun m!2902053 () Bool)

(assert (=> b!2562398 m!2902053))

(assert (=> b!2562398 m!2901459))

(assert (=> b!2562398 m!2902015))

(assert (=> b!2562398 m!2902053))

(assert (=> b!2562398 m!2902015))

(declare-fun m!2902055 () Bool)

(assert (=> b!2562398 m!2902055))

(assert (=> b!2562396 m!2901469))

(declare-fun m!2902057 () Bool)

(assert (=> b!2562396 m!2902057))

(assert (=> b!2562386 m!2901459))

(assert (=> b!2562386 m!2902011))

(assert (=> d!725781 m!2901459))

(assert (=> d!725781 m!2901467))

(assert (=> d!725781 m!2901469))

(declare-fun m!2902059 () Bool)

(assert (=> d!725781 m!2902059))

(assert (=> bm!164332 m!2901459))

(assert (=> bm!164332 m!2901467))

(assert (=> b!2562391 m!2901459))

(assert (=> b!2562391 m!2902015))

(assert (=> b!2562391 m!2902015))

(assert (=> b!2562391 m!2902031))

(assert (=> b!2562395 m!2901459))

(assert (=> b!2562395 m!2902011))

(assert (=> b!2562392 m!2901459))

(assert (=> b!2562392 m!2902015))

(assert (=> b!2562392 m!2902015))

(assert (=> b!2562392 m!2902031))

(assert (=> b!2561543 d!725781))

(declare-fun b!2562409 () Bool)

(declare-fun e!1618118 () Regex!7619)

(assert (=> b!2562409 (= e!1618118 EmptyLang!7619)))

(declare-fun b!2562410 () Bool)

(declare-fun e!1618115 () Regex!7619)

(declare-fun call!164342 () Regex!7619)

(assert (=> b!2562410 (= e!1618115 (Union!7619 (Concat!12315 call!164342 (regTwo!15750 lt!904830)) EmptyLang!7619))))

(declare-fun bm!164337 () Bool)

(declare-fun call!164344 () Regex!7619)

(assert (=> bm!164337 (= call!164342 call!164344)))

(declare-fun b!2562411 () Bool)

(declare-fun e!1618114 () Regex!7619)

(declare-fun e!1618116 () Regex!7619)

(assert (=> b!2562411 (= e!1618114 e!1618116)))

(declare-fun c!411772 () Bool)

(assert (=> b!2562411 (= c!411772 ((_ is Star!7619) lt!904830))))

(declare-fun b!2562412 () Bool)

(declare-fun e!1618117 () Regex!7619)

(assert (=> b!2562412 (= e!1618118 e!1618117)))

(declare-fun c!411769 () Bool)

(assert (=> b!2562412 (= c!411769 ((_ is ElementMatch!7619) lt!904830))))

(declare-fun bm!164338 () Bool)

(declare-fun c!411770 () Bool)

(declare-fun call!164345 () Regex!7619)

(assert (=> bm!164338 (= call!164345 (derivativeStep!2188 (ite c!411770 (regTwo!15751 lt!904830) (regTwo!15750 lt!904830)) (head!5826 tl!4068)))))

(declare-fun b!2562413 () Bool)

(assert (=> b!2562413 (= e!1618117 (ite (= (head!5826 tl!4068) (c!411501 lt!904830)) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164339 () Bool)

(declare-fun call!164343 () Regex!7619)

(assert (=> bm!164339 (= call!164344 call!164343)))

(declare-fun b!2562414 () Bool)

(assert (=> b!2562414 (= e!1618114 (Union!7619 call!164343 call!164345))))

(declare-fun b!2562415 () Bool)

(declare-fun c!411771 () Bool)

(assert (=> b!2562415 (= c!411771 (nullable!2536 (regOne!15750 lt!904830)))))

(assert (=> b!2562415 (= e!1618116 e!1618115)))

(declare-fun bm!164340 () Bool)

(assert (=> bm!164340 (= call!164343 (derivativeStep!2188 (ite c!411770 (regOne!15751 lt!904830) (ite c!411772 (reg!7948 lt!904830) (regOne!15750 lt!904830))) (head!5826 tl!4068)))))

(declare-fun b!2562417 () Bool)

(assert (=> b!2562417 (= e!1618115 (Union!7619 (Concat!12315 call!164342 (regTwo!15750 lt!904830)) call!164345))))

(declare-fun b!2562418 () Bool)

(assert (=> b!2562418 (= e!1618116 (Concat!12315 call!164344 lt!904830))))

(declare-fun d!725785 () Bool)

(declare-fun lt!904904 () Regex!7619)

(assert (=> d!725785 (validRegex!3245 lt!904904)))

(assert (=> d!725785 (= lt!904904 e!1618118)))

(declare-fun c!411773 () Bool)

(assert (=> d!725785 (= c!411773 (or ((_ is EmptyExpr!7619) lt!904830) ((_ is EmptyLang!7619) lt!904830)))))

(assert (=> d!725785 (validRegex!3245 lt!904830)))

(assert (=> d!725785 (= (derivativeStep!2188 lt!904830 (head!5826 tl!4068)) lt!904904)))

(declare-fun b!2562416 () Bool)

(assert (=> b!2562416 (= c!411770 ((_ is Union!7619) lt!904830))))

(assert (=> b!2562416 (= e!1618117 e!1618114)))

(assert (= (and d!725785 c!411773) b!2562409))

(assert (= (and d!725785 (not c!411773)) b!2562412))

(assert (= (and b!2562412 c!411769) b!2562413))

(assert (= (and b!2562412 (not c!411769)) b!2562416))

(assert (= (and b!2562416 c!411770) b!2562414))

(assert (= (and b!2562416 (not c!411770)) b!2562411))

(assert (= (and b!2562411 c!411772) b!2562418))

(assert (= (and b!2562411 (not c!411772)) b!2562415))

(assert (= (and b!2562415 c!411771) b!2562417))

(assert (= (and b!2562415 (not c!411771)) b!2562410))

(assert (= (or b!2562417 b!2562410) bm!164337))

(assert (= (or b!2562418 bm!164337) bm!164339))

(assert (= (or b!2562414 b!2562417) bm!164338))

(assert (= (or b!2562414 bm!164339) bm!164340))

(assert (=> bm!164338 m!2901455))

(declare-fun m!2902069 () Bool)

(assert (=> bm!164338 m!2902069))

(assert (=> b!2562415 m!2901927))

(assert (=> bm!164340 m!2901455))

(declare-fun m!2902071 () Bool)

(assert (=> bm!164340 m!2902071))

(declare-fun m!2902073 () Bool)

(assert (=> d!725785 m!2902073))

(assert (=> d!725785 m!2901475))

(assert (=> b!2561543 d!725785))

(assert (=> b!2561543 d!725705))

(assert (=> b!2561543 d!725651))

(assert (=> b!2561738 d!725671))

(assert (=> b!2561738 d!725673))

(declare-fun b!2562428 () Bool)

(declare-fun e!1618127 () Bool)

(declare-fun call!164350 () Bool)

(assert (=> b!2562428 (= e!1618127 call!164350)))

(declare-fun b!2562429 () Bool)

(declare-fun e!1618126 () Bool)

(declare-fun call!164349 () Bool)

(assert (=> b!2562429 (= e!1618126 call!164349)))

(declare-fun d!725791 () Bool)

(declare-fun res!1078755 () Bool)

(declare-fun e!1618132 () Bool)

(assert (=> d!725791 (=> res!1078755 e!1618132)))

(assert (=> d!725791 (= res!1078755 ((_ is ElementMatch!7619) lt!904861))))

(assert (=> d!725791 (= (validRegex!3245 lt!904861) e!1618132)))

(declare-fun b!2562430 () Bool)

(declare-fun e!1618131 () Bool)

(declare-fun e!1618128 () Bool)

(assert (=> b!2562430 (= e!1618131 e!1618128)))

(declare-fun res!1078754 () Bool)

(assert (=> b!2562430 (= res!1078754 (not (nullable!2536 (reg!7948 lt!904861))))))

(assert (=> b!2562430 (=> (not res!1078754) (not e!1618128))))

(declare-fun b!2562431 () Bool)

(declare-fun e!1618130 () Bool)

(assert (=> b!2562431 (= e!1618130 e!1618126)))

(declare-fun res!1078752 () Bool)

(assert (=> b!2562431 (=> (not res!1078752) (not e!1618126))))

(assert (=> b!2562431 (= res!1078752 call!164350)))

(declare-fun b!2562432 () Bool)

(assert (=> b!2562432 (= e!1618132 e!1618131)))

(declare-fun c!411776 () Bool)

(assert (=> b!2562432 (= c!411776 ((_ is Star!7619) lt!904861))))

(declare-fun bm!164344 () Bool)

(declare-fun call!164351 () Bool)

(assert (=> bm!164344 (= call!164349 call!164351)))

(declare-fun b!2562433 () Bool)

(declare-fun res!1078753 () Bool)

(assert (=> b!2562433 (=> (not res!1078753) (not e!1618127))))

(assert (=> b!2562433 (= res!1078753 call!164349)))

(declare-fun e!1618129 () Bool)

(assert (=> b!2562433 (= e!1618129 e!1618127)))

(declare-fun b!2562434 () Bool)

(declare-fun res!1078756 () Bool)

(assert (=> b!2562434 (=> res!1078756 e!1618130)))

(assert (=> b!2562434 (= res!1078756 (not ((_ is Concat!12315) lt!904861)))))

(assert (=> b!2562434 (= e!1618129 e!1618130)))

(declare-fun b!2562435 () Bool)

(assert (=> b!2562435 (= e!1618128 call!164351)))

(declare-fun bm!164345 () Bool)

(declare-fun c!411777 () Bool)

(assert (=> bm!164345 (= call!164350 (validRegex!3245 (ite c!411777 (regTwo!15751 lt!904861) (regOne!15750 lt!904861))))))

(declare-fun bm!164346 () Bool)

(assert (=> bm!164346 (= call!164351 (validRegex!3245 (ite c!411776 (reg!7948 lt!904861) (ite c!411777 (regOne!15751 lt!904861) (regTwo!15750 lt!904861)))))))

(declare-fun b!2562436 () Bool)

(assert (=> b!2562436 (= e!1618131 e!1618129)))

(assert (=> b!2562436 (= c!411777 ((_ is Union!7619) lt!904861))))

(assert (= (and d!725791 (not res!1078755)) b!2562432))

(assert (= (and b!2562432 c!411776) b!2562430))

(assert (= (and b!2562432 (not c!411776)) b!2562436))

(assert (= (and b!2562430 res!1078754) b!2562435))

(assert (= (and b!2562436 c!411777) b!2562433))

(assert (= (and b!2562436 (not c!411777)) b!2562434))

(assert (= (and b!2562433 res!1078753) b!2562428))

(assert (= (and b!2562434 (not res!1078756)) b!2562431))

(assert (= (and b!2562431 res!1078752) b!2562429))

(assert (= (or b!2562433 b!2562429) bm!164344))

(assert (= (or b!2562428 b!2562431) bm!164345))

(assert (= (or b!2562435 bm!164344) bm!164346))

(declare-fun m!2902081 () Bool)

(assert (=> b!2562430 m!2902081))

(declare-fun m!2902083 () Bool)

(assert (=> bm!164345 m!2902083))

(declare-fun m!2902085 () Bool)

(assert (=> bm!164346 m!2902085))

(assert (=> d!725553 d!725791))

(assert (=> d!725553 d!725589))

(assert (=> b!2561449 d!725623))

(assert (=> b!2561833 d!725649))

(assert (=> b!2561833 d!725651))

(declare-fun d!725795 () Bool)

(assert (=> d!725795 (= (nullable!2536 lt!904829) (nullableFct!761 lt!904829))))

(declare-fun bs!469857 () Bool)

(assert (= bs!469857 d!725795))

(declare-fun m!2902087 () Bool)

(assert (=> bs!469857 m!2902087))

(assert (=> b!2561503 d!725795))

(declare-fun d!725797 () Bool)

(assert (=> d!725797 (= (nullable!2536 lt!904830) (nullableFct!761 lt!904830))))

(declare-fun bs!469858 () Bool)

(assert (= bs!469858 d!725797))

(declare-fun m!2902089 () Bool)

(assert (=> bs!469858 m!2902089))

(assert (=> b!2561541 d!725797))

(assert (=> b!2561710 d!725671))

(assert (=> b!2561710 d!725673))

(declare-fun d!725799 () Bool)

(assert (=> d!725799 (= (nullable!2536 lt!904832) (nullableFct!761 lt!904832))))

(declare-fun bs!469859 () Bool)

(assert (= bs!469859 d!725799))

(declare-fun m!2902091 () Bool)

(assert (=> bs!469859 m!2902091))

(assert (=> b!2561838 d!725799))

(declare-fun d!725801 () Bool)

(assert (=> d!725801 (= (nullable!2536 (reg!7948 r!27340)) (nullableFct!761 (reg!7948 r!27340)))))

(declare-fun bs!469860 () Bool)

(assert (= bs!469860 d!725801))

(declare-fun m!2902095 () Bool)

(assert (=> bs!469860 m!2902095))

(assert (=> b!2561843 d!725801))

(assert (=> b!2561450 d!725601))

(declare-fun b!2562446 () Bool)

(declare-fun e!1618144 () Regex!7619)

(assert (=> b!2562446 (= e!1618144 EmptyLang!7619)))

(declare-fun b!2562447 () Bool)

(declare-fun e!1618141 () Regex!7619)

(declare-fun call!164355 () Regex!7619)

(assert (=> b!2562447 (= e!1618141 (Union!7619 (Concat!12315 call!164355 (regTwo!15750 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))))) EmptyLang!7619))))

(declare-fun bm!164350 () Bool)

(declare-fun call!164357 () Regex!7619)

(assert (=> bm!164350 (= call!164355 call!164357)))

(declare-fun b!2562448 () Bool)

(declare-fun e!1618140 () Regex!7619)

(declare-fun e!1618142 () Regex!7619)

(assert (=> b!2562448 (= e!1618140 e!1618142)))

(declare-fun c!411783 () Bool)

(assert (=> b!2562448 (= c!411783 ((_ is Star!7619) (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))))))

(declare-fun b!2562449 () Bool)

(declare-fun e!1618143 () Regex!7619)

(assert (=> b!2562449 (= e!1618144 e!1618143)))

(declare-fun c!411780 () Bool)

(assert (=> b!2562449 (= c!411780 ((_ is ElementMatch!7619) (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))))))

(declare-fun call!164358 () Regex!7619)

(declare-fun c!411781 () Bool)

(declare-fun bm!164351 () Bool)

(assert (=> bm!164351 (= call!164358 (derivativeStep!2188 (ite c!411781 (regTwo!15751 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))) (regTwo!15750 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))))) c!14016))))

(declare-fun b!2562450 () Bool)

(assert (=> b!2562450 (= e!1618143 (ite (= c!14016 (c!411501 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164352 () Bool)

(declare-fun call!164356 () Regex!7619)

(assert (=> bm!164352 (= call!164357 call!164356)))

(declare-fun b!2562451 () Bool)

(assert (=> b!2562451 (= e!1618140 (Union!7619 call!164356 call!164358))))

(declare-fun b!2562452 () Bool)

(declare-fun c!411782 () Bool)

(assert (=> b!2562452 (= c!411782 (nullable!2536 (regOne!15750 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))))))))

(assert (=> b!2562452 (= e!1618142 e!1618141)))

(declare-fun bm!164353 () Bool)

(assert (=> bm!164353 (= call!164356 (derivativeStep!2188 (ite c!411781 (regOne!15751 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))) (ite c!411783 (reg!7948 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))) (regOne!15750 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))))) c!14016))))

(declare-fun b!2562454 () Bool)

(assert (=> b!2562454 (= e!1618141 (Union!7619 (Concat!12315 call!164355 (regTwo!15750 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))))) call!164358))))

(declare-fun b!2562455 () Bool)

(assert (=> b!2562455 (= e!1618142 (Concat!12315 call!164357 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))))))

(declare-fun d!725803 () Bool)

(declare-fun lt!904905 () Regex!7619)

(assert (=> d!725803 (validRegex!3245 lt!904905)))

(assert (=> d!725803 (= lt!904905 e!1618144)))

(declare-fun c!411784 () Bool)

(assert (=> d!725803 (= c!411784 (or ((_ is EmptyExpr!7619) (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))) ((_ is EmptyLang!7619) (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))))))))

(assert (=> d!725803 (validRegex!3245 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))))))

(assert (=> d!725803 (= (derivativeStep!2188 (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340))) c!14016) lt!904905)))

(declare-fun b!2562453 () Bool)

(assert (=> b!2562453 (= c!411781 ((_ is Union!7619) (ite c!411616 (regOne!15751 r!27340) (ite c!411618 (reg!7948 r!27340) (regOne!15750 r!27340)))))))

(assert (=> b!2562453 (= e!1618143 e!1618140)))

(assert (= (and d!725803 c!411784) b!2562446))

(assert (= (and d!725803 (not c!411784)) b!2562449))

(assert (= (and b!2562449 c!411780) b!2562450))

(assert (= (and b!2562449 (not c!411780)) b!2562453))

(assert (= (and b!2562453 c!411781) b!2562451))

(assert (= (and b!2562453 (not c!411781)) b!2562448))

(assert (= (and b!2562448 c!411783) b!2562455))

(assert (= (and b!2562448 (not c!411783)) b!2562452))

(assert (= (and b!2562452 c!411782) b!2562454))

(assert (= (and b!2562452 (not c!411782)) b!2562447))

(assert (= (or b!2562454 b!2562447) bm!164350))

(assert (= (or b!2562455 bm!164350) bm!164352))

(assert (= (or b!2562451 b!2562454) bm!164351))

(assert (= (or b!2562451 bm!164352) bm!164353))

(declare-fun m!2902109 () Bool)

(assert (=> bm!164351 m!2902109))

(declare-fun m!2902111 () Bool)

(assert (=> b!2562452 m!2902111))

(declare-fun m!2902113 () Bool)

(assert (=> bm!164353 m!2902113))

(declare-fun m!2902115 () Bool)

(assert (=> d!725803 m!2902115))

(declare-fun m!2902117 () Bool)

(assert (=> d!725803 m!2902117))

(assert (=> bm!164186 d!725803))

(assert (=> b!2561834 d!725649))

(assert (=> b!2561834 d!725651))

(declare-fun b!2562468 () Bool)

(declare-fun e!1618152 () Bool)

(declare-fun call!164364 () Bool)

(assert (=> b!2562468 (= e!1618152 call!164364)))

(declare-fun b!2562469 () Bool)

(declare-fun e!1618151 () Bool)

(declare-fun call!164363 () Bool)

(assert (=> b!2562469 (= e!1618151 call!164363)))

(declare-fun d!725809 () Bool)

(declare-fun res!1078765 () Bool)

(declare-fun e!1618157 () Bool)

(assert (=> d!725809 (=> res!1078765 e!1618157)))

(assert (=> d!725809 (= res!1078765 ((_ is ElementMatch!7619) lt!904877))))

(assert (=> d!725809 (= (validRegex!3245 lt!904877) e!1618157)))

(declare-fun b!2562470 () Bool)

(declare-fun e!1618156 () Bool)

(declare-fun e!1618153 () Bool)

(assert (=> b!2562470 (= e!1618156 e!1618153)))

(declare-fun res!1078764 () Bool)

(assert (=> b!2562470 (= res!1078764 (not (nullable!2536 (reg!7948 lt!904877))))))

(assert (=> b!2562470 (=> (not res!1078764) (not e!1618153))))

(declare-fun b!2562471 () Bool)

(declare-fun e!1618155 () Bool)

(assert (=> b!2562471 (= e!1618155 e!1618151)))

(declare-fun res!1078762 () Bool)

(assert (=> b!2562471 (=> (not res!1078762) (not e!1618151))))

(assert (=> b!2562471 (= res!1078762 call!164364)))

(declare-fun b!2562472 () Bool)

(assert (=> b!2562472 (= e!1618157 e!1618156)))

(declare-fun c!411791 () Bool)

(assert (=> b!2562472 (= c!411791 ((_ is Star!7619) lt!904877))))

(declare-fun bm!164358 () Bool)

(declare-fun call!164365 () Bool)

(assert (=> bm!164358 (= call!164363 call!164365)))

(declare-fun b!2562473 () Bool)

(declare-fun res!1078763 () Bool)

(assert (=> b!2562473 (=> (not res!1078763) (not e!1618152))))

(assert (=> b!2562473 (= res!1078763 call!164363)))

(declare-fun e!1618154 () Bool)

(assert (=> b!2562473 (= e!1618154 e!1618152)))

(declare-fun b!2562474 () Bool)

(declare-fun res!1078766 () Bool)

(assert (=> b!2562474 (=> res!1078766 e!1618155)))

(assert (=> b!2562474 (= res!1078766 (not ((_ is Concat!12315) lt!904877)))))

(assert (=> b!2562474 (= e!1618154 e!1618155)))

(declare-fun b!2562475 () Bool)

(assert (=> b!2562475 (= e!1618153 call!164365)))

(declare-fun bm!164359 () Bool)

(declare-fun c!411792 () Bool)

(assert (=> bm!164359 (= call!164364 (validRegex!3245 (ite c!411792 (regTwo!15751 lt!904877) (regOne!15750 lt!904877))))))

(declare-fun bm!164360 () Bool)

(assert (=> bm!164360 (= call!164365 (validRegex!3245 (ite c!411791 (reg!7948 lt!904877) (ite c!411792 (regOne!15751 lt!904877) (regTwo!15750 lt!904877)))))))

(declare-fun b!2562476 () Bool)

(assert (=> b!2562476 (= e!1618156 e!1618154)))

(assert (=> b!2562476 (= c!411792 ((_ is Union!7619) lt!904877))))

(assert (= (and d!725809 (not res!1078765)) b!2562472))

(assert (= (and b!2562472 c!411791) b!2562470))

(assert (= (and b!2562472 (not c!411791)) b!2562476))

(assert (= (and b!2562470 res!1078764) b!2562475))

(assert (= (and b!2562476 c!411792) b!2562473))

(assert (= (and b!2562476 (not c!411792)) b!2562474))

(assert (= (and b!2562473 res!1078763) b!2562468))

(assert (= (and b!2562474 (not res!1078766)) b!2562471))

(assert (= (and b!2562471 res!1078762) b!2562469))

(assert (= (or b!2562473 b!2562469) bm!164358))

(assert (= (or b!2562468 b!2562471) bm!164359))

(assert (= (or b!2562475 bm!164358) bm!164360))

(declare-fun m!2902127 () Bool)

(assert (=> b!2562470 m!2902127))

(declare-fun m!2902129 () Bool)

(assert (=> bm!164359 m!2902129))

(declare-fun m!2902131 () Bool)

(assert (=> bm!164360 m!2902131))

(assert (=> d!725599 d!725809))

(assert (=> d!725599 d!725623))

(assert (=> b!2561741 d!725717))

(assert (=> b!2561858 d!725607))

(declare-fun b!2562479 () Bool)

(declare-fun e!1618163 () Regex!7619)

(assert (=> b!2562479 (= e!1618163 EmptyLang!7619)))

(declare-fun e!1618160 () Regex!7619)

(declare-fun b!2562480 () Bool)

(declare-fun call!164366 () Regex!7619)

(assert (=> b!2562480 (= e!1618160 (Union!7619 (Concat!12315 call!164366 (regTwo!15750 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))))) EmptyLang!7619))))

(declare-fun bm!164361 () Bool)

(declare-fun call!164368 () Regex!7619)

(assert (=> bm!164361 (= call!164366 call!164368)))

(declare-fun b!2562481 () Bool)

(declare-fun e!1618159 () Regex!7619)

(declare-fun e!1618161 () Regex!7619)

(assert (=> b!2562481 (= e!1618159 e!1618161)))

(declare-fun c!411797 () Bool)

(assert (=> b!2562481 (= c!411797 ((_ is Star!7619) (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))))))

(declare-fun b!2562482 () Bool)

(declare-fun e!1618162 () Regex!7619)

(assert (=> b!2562482 (= e!1618163 e!1618162)))

(declare-fun c!411794 () Bool)

(assert (=> b!2562482 (= c!411794 ((_ is ElementMatch!7619) (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))))))

(declare-fun call!164369 () Regex!7619)

(declare-fun c!411795 () Bool)

(declare-fun bm!164362 () Bool)

(assert (=> bm!164362 (= call!164369 (derivativeStep!2188 (ite c!411795 (regTwo!15751 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))) (regTwo!15750 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))))) c!14016))))

(declare-fun b!2562483 () Bool)

(assert (=> b!2562483 (= e!1618162 (ite (= c!14016 (c!411501 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164363 () Bool)

(declare-fun call!164367 () Regex!7619)

(assert (=> bm!164363 (= call!164368 call!164367)))

(declare-fun b!2562484 () Bool)

(assert (=> b!2562484 (= e!1618159 (Union!7619 call!164367 call!164369))))

(declare-fun b!2562485 () Bool)

(declare-fun c!411796 () Bool)

(assert (=> b!2562485 (= c!411796 (nullable!2536 (regOne!15750 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))))))))

(assert (=> b!2562485 (= e!1618161 e!1618160)))

(declare-fun bm!164364 () Bool)

(assert (=> bm!164364 (= call!164367 (derivativeStep!2188 (ite c!411795 (regOne!15751 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))) (ite c!411797 (reg!7948 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))) (regOne!15750 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))))) c!14016))))

(declare-fun b!2562487 () Bool)

(assert (=> b!2562487 (= e!1618160 (Union!7619 (Concat!12315 call!164366 (regTwo!15750 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))))) call!164369))))

(declare-fun b!2562488 () Bool)

(assert (=> b!2562488 (= e!1618161 (Concat!12315 call!164368 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))))))

(declare-fun d!725813 () Bool)

(declare-fun lt!904909 () Regex!7619)

(assert (=> d!725813 (validRegex!3245 lt!904909)))

(assert (=> d!725813 (= lt!904909 e!1618163)))

(declare-fun c!411798 () Bool)

(assert (=> d!725813 (= c!411798 (or ((_ is EmptyExpr!7619) (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))) ((_ is EmptyLang!7619) (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))))))))

(assert (=> d!725813 (validRegex!3245 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))))))

(assert (=> d!725813 (= (derivativeStep!2188 (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))) c!14016) lt!904909)))

(declare-fun b!2562486 () Bool)

(assert (=> b!2562486 (= c!411795 ((_ is Union!7619) (ite c!411573 (regTwo!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340)))))))

(assert (=> b!2562486 (= e!1618162 e!1618159)))

(assert (= (and d!725813 c!411798) b!2562479))

(assert (= (and d!725813 (not c!411798)) b!2562482))

(assert (= (and b!2562482 c!411794) b!2562483))

(assert (= (and b!2562482 (not c!411794)) b!2562486))

(assert (= (and b!2562486 c!411795) b!2562484))

(assert (= (and b!2562486 (not c!411795)) b!2562481))

(assert (= (and b!2562481 c!411797) b!2562488))

(assert (= (and b!2562481 (not c!411797)) b!2562485))

(assert (= (and b!2562485 c!411796) b!2562487))

(assert (= (and b!2562485 (not c!411796)) b!2562480))

(assert (= (or b!2562487 b!2562480) bm!164361))

(assert (= (or b!2562488 bm!164361) bm!164363))

(assert (= (or b!2562484 b!2562487) bm!164362))

(assert (= (or b!2562484 bm!164363) bm!164364))

(declare-fun m!2902141 () Bool)

(assert (=> bm!164362 m!2902141))

(declare-fun m!2902143 () Bool)

(assert (=> b!2562485 m!2902143))

(declare-fun m!2902145 () Bool)

(assert (=> bm!164364 m!2902145))

(declare-fun m!2902147 () Bool)

(assert (=> d!725813 m!2902147))

(declare-fun m!2902149 () Bool)

(assert (=> d!725813 m!2902149))

(assert (=> bm!164148 d!725813))

(assert (=> b!2561531 d!725705))

(declare-fun b!2562499 () Bool)

(declare-fun e!1618170 () Bool)

(declare-fun call!164375 () Bool)

(assert (=> b!2562499 (= e!1618170 call!164375)))

(declare-fun b!2562500 () Bool)

(declare-fun e!1618169 () Bool)

(declare-fun call!164374 () Bool)

(assert (=> b!2562500 (= e!1618169 call!164374)))

(declare-fun d!725817 () Bool)

(declare-fun res!1078770 () Bool)

(declare-fun e!1618175 () Bool)

(assert (=> d!725817 (=> res!1078770 e!1618175)))

(assert (=> d!725817 (= res!1078770 ((_ is ElementMatch!7619) lt!904862))))

(assert (=> d!725817 (= (validRegex!3245 lt!904862) e!1618175)))

(declare-fun b!2562501 () Bool)

(declare-fun e!1618174 () Bool)

(declare-fun e!1618171 () Bool)

(assert (=> b!2562501 (= e!1618174 e!1618171)))

(declare-fun res!1078769 () Bool)

(assert (=> b!2562501 (= res!1078769 (not (nullable!2536 (reg!7948 lt!904862))))))

(assert (=> b!2562501 (=> (not res!1078769) (not e!1618171))))

(declare-fun b!2562502 () Bool)

(declare-fun e!1618173 () Bool)

(assert (=> b!2562502 (= e!1618173 e!1618169)))

(declare-fun res!1078767 () Bool)

(assert (=> b!2562502 (=> (not res!1078767) (not e!1618169))))

(assert (=> b!2562502 (= res!1078767 call!164375)))

(declare-fun b!2562503 () Bool)

(assert (=> b!2562503 (= e!1618175 e!1618174)))

(declare-fun c!411804 () Bool)

(assert (=> b!2562503 (= c!411804 ((_ is Star!7619) lt!904862))))

(declare-fun bm!164369 () Bool)

(declare-fun call!164376 () Bool)

(assert (=> bm!164369 (= call!164374 call!164376)))

(declare-fun b!2562504 () Bool)

(declare-fun res!1078768 () Bool)

(assert (=> b!2562504 (=> (not res!1078768) (not e!1618170))))

(assert (=> b!2562504 (= res!1078768 call!164374)))

(declare-fun e!1618172 () Bool)

(assert (=> b!2562504 (= e!1618172 e!1618170)))

(declare-fun b!2562505 () Bool)

(declare-fun res!1078771 () Bool)

(assert (=> b!2562505 (=> res!1078771 e!1618173)))

(assert (=> b!2562505 (= res!1078771 (not ((_ is Concat!12315) lt!904862)))))

(assert (=> b!2562505 (= e!1618172 e!1618173)))

(declare-fun b!2562506 () Bool)

(assert (=> b!2562506 (= e!1618171 call!164376)))

(declare-fun bm!164370 () Bool)

(declare-fun c!411805 () Bool)

(assert (=> bm!164370 (= call!164375 (validRegex!3245 (ite c!411805 (regTwo!15751 lt!904862) (regOne!15750 lt!904862))))))

(declare-fun bm!164371 () Bool)

(assert (=> bm!164371 (= call!164376 (validRegex!3245 (ite c!411804 (reg!7948 lt!904862) (ite c!411805 (regOne!15751 lt!904862) (regTwo!15750 lt!904862)))))))

(declare-fun b!2562507 () Bool)

(assert (=> b!2562507 (= e!1618174 e!1618172)))

(assert (=> b!2562507 (= c!411805 ((_ is Union!7619) lt!904862))))

(assert (= (and d!725817 (not res!1078770)) b!2562503))

(assert (= (and b!2562503 c!411804) b!2562501))

(assert (= (and b!2562503 (not c!411804)) b!2562507))

(assert (= (and b!2562501 res!1078769) b!2562506))

(assert (= (and b!2562507 c!411805) b!2562504))

(assert (= (and b!2562507 (not c!411805)) b!2562505))

(assert (= (and b!2562504 res!1078768) b!2562499))

(assert (= (and b!2562505 (not res!1078771)) b!2562502))

(assert (= (and b!2562502 res!1078767) b!2562500))

(assert (= (or b!2562504 b!2562500) bm!164369))

(assert (= (or b!2562499 b!2562502) bm!164370))

(assert (= (or b!2562506 bm!164369) bm!164371))

(declare-fun m!2902165 () Bool)

(assert (=> b!2562501 m!2902165))

(declare-fun m!2902167 () Bool)

(assert (=> bm!164370 m!2902167))

(declare-fun m!2902169 () Bool)

(assert (=> bm!164371 m!2902169))

(assert (=> d!725573 d!725817))

(declare-fun b!2562520 () Bool)

(declare-fun e!1618183 () Bool)

(declare-fun call!164382 () Bool)

(assert (=> b!2562520 (= e!1618183 call!164382)))

(declare-fun b!2562521 () Bool)

(declare-fun e!1618182 () Bool)

(declare-fun call!164381 () Bool)

(assert (=> b!2562521 (= e!1618182 call!164381)))

(declare-fun d!725823 () Bool)

(declare-fun res!1078775 () Bool)

(declare-fun e!1618188 () Bool)

(assert (=> d!725823 (=> res!1078775 e!1618188)))

(assert (=> d!725823 (= res!1078775 ((_ is ElementMatch!7619) (regOne!15750 r!27340)))))

(assert (=> d!725823 (= (validRegex!3245 (regOne!15750 r!27340)) e!1618188)))

(declare-fun b!2562522 () Bool)

(declare-fun e!1618187 () Bool)

(declare-fun e!1618184 () Bool)

(assert (=> b!2562522 (= e!1618187 e!1618184)))

(declare-fun res!1078774 () Bool)

(assert (=> b!2562522 (= res!1078774 (not (nullable!2536 (reg!7948 (regOne!15750 r!27340)))))))

(assert (=> b!2562522 (=> (not res!1078774) (not e!1618184))))

(declare-fun b!2562523 () Bool)

(declare-fun e!1618186 () Bool)

(assert (=> b!2562523 (= e!1618186 e!1618182)))

(declare-fun res!1078772 () Bool)

(assert (=> b!2562523 (=> (not res!1078772) (not e!1618182))))

(assert (=> b!2562523 (= res!1078772 call!164382)))

(declare-fun b!2562524 () Bool)

(assert (=> b!2562524 (= e!1618188 e!1618187)))

(declare-fun c!411812 () Bool)

(assert (=> b!2562524 (= c!411812 ((_ is Star!7619) (regOne!15750 r!27340)))))

(declare-fun bm!164376 () Bool)

(declare-fun call!164383 () Bool)

(assert (=> bm!164376 (= call!164381 call!164383)))

(declare-fun b!2562525 () Bool)

(declare-fun res!1078773 () Bool)

(assert (=> b!2562525 (=> (not res!1078773) (not e!1618183))))

(assert (=> b!2562525 (= res!1078773 call!164381)))

(declare-fun e!1618185 () Bool)

(assert (=> b!2562525 (= e!1618185 e!1618183)))

(declare-fun b!2562526 () Bool)

(declare-fun res!1078776 () Bool)

(assert (=> b!2562526 (=> res!1078776 e!1618186)))

(assert (=> b!2562526 (= res!1078776 (not ((_ is Concat!12315) (regOne!15750 r!27340))))))

(assert (=> b!2562526 (= e!1618185 e!1618186)))

(declare-fun b!2562527 () Bool)

(assert (=> b!2562527 (= e!1618184 call!164383)))

(declare-fun bm!164377 () Bool)

(declare-fun c!411813 () Bool)

(assert (=> bm!164377 (= call!164382 (validRegex!3245 (ite c!411813 (regTwo!15751 (regOne!15750 r!27340)) (regOne!15750 (regOne!15750 r!27340)))))))

(declare-fun bm!164378 () Bool)

(assert (=> bm!164378 (= call!164383 (validRegex!3245 (ite c!411812 (reg!7948 (regOne!15750 r!27340)) (ite c!411813 (regOne!15751 (regOne!15750 r!27340)) (regTwo!15750 (regOne!15750 r!27340))))))))

(declare-fun b!2562528 () Bool)

(assert (=> b!2562528 (= e!1618187 e!1618185)))

(assert (=> b!2562528 (= c!411813 ((_ is Union!7619) (regOne!15750 r!27340)))))

(assert (= (and d!725823 (not res!1078775)) b!2562524))

(assert (= (and b!2562524 c!411812) b!2562522))

(assert (= (and b!2562524 (not c!411812)) b!2562528))

(assert (= (and b!2562522 res!1078774) b!2562527))

(assert (= (and b!2562528 c!411813) b!2562525))

(assert (= (and b!2562528 (not c!411813)) b!2562526))

(assert (= (and b!2562525 res!1078773) b!2562520))

(assert (= (and b!2562526 (not res!1078776)) b!2562523))

(assert (= (and b!2562523 res!1078772) b!2562521))

(assert (= (or b!2562525 b!2562521) bm!164376))

(assert (= (or b!2562520 b!2562523) bm!164377))

(assert (= (or b!2562527 bm!164376) bm!164378))

(declare-fun m!2902171 () Bool)

(assert (=> b!2562522 m!2902171))

(declare-fun m!2902175 () Bool)

(assert (=> bm!164377 m!2902175))

(declare-fun m!2902179 () Bool)

(assert (=> bm!164378 m!2902179))

(assert (=> d!725573 d!725823))

(declare-fun d!725825 () Bool)

(assert (not d!725825))

(assert (=> b!2561716 d!725825))

(declare-fun d!725829 () Bool)

(assert (not d!725829))

(assert (=> b!2561716 d!725829))

(assert (=> b!2561716 d!725717))

(assert (=> b!2561716 d!725673))

(assert (=> d!725543 d!725619))

(assert (=> d!725543 d!725725))

(declare-fun b!2562529 () Bool)

(declare-fun e!1618190 () Bool)

(declare-fun call!164385 () Bool)

(assert (=> b!2562529 (= e!1618190 call!164385)))

(declare-fun b!2562530 () Bool)

(declare-fun e!1618189 () Bool)

(declare-fun call!164384 () Bool)

(assert (=> b!2562530 (= e!1618189 call!164384)))

(declare-fun d!725831 () Bool)

(declare-fun res!1078780 () Bool)

(declare-fun e!1618195 () Bool)

(assert (=> d!725831 (=> res!1078780 e!1618195)))

(assert (=> d!725831 (= res!1078780 ((_ is ElementMatch!7619) lt!904879))))

(assert (=> d!725831 (= (validRegex!3245 lt!904879) e!1618195)))

(declare-fun b!2562531 () Bool)

(declare-fun e!1618194 () Bool)

(declare-fun e!1618191 () Bool)

(assert (=> b!2562531 (= e!1618194 e!1618191)))

(declare-fun res!1078779 () Bool)

(assert (=> b!2562531 (= res!1078779 (not (nullable!2536 (reg!7948 lt!904879))))))

(assert (=> b!2562531 (=> (not res!1078779) (not e!1618191))))

(declare-fun b!2562532 () Bool)

(declare-fun e!1618193 () Bool)

(assert (=> b!2562532 (= e!1618193 e!1618189)))

(declare-fun res!1078777 () Bool)

(assert (=> b!2562532 (=> (not res!1078777) (not e!1618189))))

(assert (=> b!2562532 (= res!1078777 call!164385)))

(declare-fun b!2562533 () Bool)

(assert (=> b!2562533 (= e!1618195 e!1618194)))

(declare-fun c!411814 () Bool)

(assert (=> b!2562533 (= c!411814 ((_ is Star!7619) lt!904879))))

(declare-fun bm!164379 () Bool)

(declare-fun call!164386 () Bool)

(assert (=> bm!164379 (= call!164384 call!164386)))

(declare-fun b!2562534 () Bool)

(declare-fun res!1078778 () Bool)

(assert (=> b!2562534 (=> (not res!1078778) (not e!1618190))))

(assert (=> b!2562534 (= res!1078778 call!164384)))

(declare-fun e!1618192 () Bool)

(assert (=> b!2562534 (= e!1618192 e!1618190)))

(declare-fun b!2562535 () Bool)

(declare-fun res!1078781 () Bool)

(assert (=> b!2562535 (=> res!1078781 e!1618193)))

(assert (=> b!2562535 (= res!1078781 (not ((_ is Concat!12315) lt!904879)))))

(assert (=> b!2562535 (= e!1618192 e!1618193)))

(declare-fun b!2562536 () Bool)

(assert (=> b!2562536 (= e!1618191 call!164386)))

(declare-fun bm!164380 () Bool)

(declare-fun c!411815 () Bool)

(assert (=> bm!164380 (= call!164385 (validRegex!3245 (ite c!411815 (regTwo!15751 lt!904879) (regOne!15750 lt!904879))))))

(declare-fun bm!164381 () Bool)

(assert (=> bm!164381 (= call!164386 (validRegex!3245 (ite c!411814 (reg!7948 lt!904879) (ite c!411815 (regOne!15751 lt!904879) (regTwo!15750 lt!904879)))))))

(declare-fun b!2562537 () Bool)

(assert (=> b!2562537 (= e!1618194 e!1618192)))

(assert (=> b!2562537 (= c!411815 ((_ is Union!7619) lt!904879))))

(assert (= (and d!725831 (not res!1078780)) b!2562533))

(assert (= (and b!2562533 c!411814) b!2562531))

(assert (= (and b!2562533 (not c!411814)) b!2562537))

(assert (= (and b!2562531 res!1078779) b!2562536))

(assert (= (and b!2562537 c!411815) b!2562534))

(assert (= (and b!2562537 (not c!411815)) b!2562535))

(assert (= (and b!2562534 res!1078778) b!2562529))

(assert (= (and b!2562535 (not res!1078781)) b!2562532))

(assert (= (and b!2562532 res!1078777) b!2562530))

(assert (= (or b!2562534 b!2562530) bm!164379))

(assert (= (or b!2562529 b!2562532) bm!164380))

(assert (= (or b!2562536 bm!164379) bm!164381))

(declare-fun m!2902183 () Bool)

(assert (=> b!2562531 m!2902183))

(declare-fun m!2902185 () Bool)

(assert (=> bm!164380 m!2902185))

(declare-fun m!2902187 () Bool)

(assert (=> bm!164381 m!2902187))

(assert (=> d!725611 d!725831))

(declare-fun b!2562538 () Bool)

(declare-fun e!1618197 () Bool)

(declare-fun call!164388 () Bool)

(assert (=> b!2562538 (= e!1618197 call!164388)))

(declare-fun b!2562539 () Bool)

(declare-fun e!1618196 () Bool)

(declare-fun call!164387 () Bool)

(assert (=> b!2562539 (= e!1618196 call!164387)))

(declare-fun d!725833 () Bool)

(declare-fun res!1078785 () Bool)

(declare-fun e!1618202 () Bool)

(assert (=> d!725833 (=> res!1078785 e!1618202)))

(assert (=> d!725833 (= res!1078785 ((_ is ElementMatch!7619) (derivativeStep!2188 r!27340 c!14016)))))

(assert (=> d!725833 (= (validRegex!3245 (derivativeStep!2188 r!27340 c!14016)) e!1618202)))

(declare-fun b!2562540 () Bool)

(declare-fun e!1618201 () Bool)

(declare-fun e!1618198 () Bool)

(assert (=> b!2562540 (= e!1618201 e!1618198)))

(declare-fun res!1078784 () Bool)

(assert (=> b!2562540 (= res!1078784 (not (nullable!2536 (reg!7948 (derivativeStep!2188 r!27340 c!14016)))))))

(assert (=> b!2562540 (=> (not res!1078784) (not e!1618198))))

(declare-fun b!2562541 () Bool)

(declare-fun e!1618200 () Bool)

(assert (=> b!2562541 (= e!1618200 e!1618196)))

(declare-fun res!1078782 () Bool)

(assert (=> b!2562541 (=> (not res!1078782) (not e!1618196))))

(assert (=> b!2562541 (= res!1078782 call!164388)))

(declare-fun b!2562542 () Bool)

(assert (=> b!2562542 (= e!1618202 e!1618201)))

(declare-fun c!411816 () Bool)

(assert (=> b!2562542 (= c!411816 ((_ is Star!7619) (derivativeStep!2188 r!27340 c!14016)))))

(declare-fun bm!164382 () Bool)

(declare-fun call!164389 () Bool)

(assert (=> bm!164382 (= call!164387 call!164389)))

(declare-fun b!2562543 () Bool)

(declare-fun res!1078783 () Bool)

(assert (=> b!2562543 (=> (not res!1078783) (not e!1618197))))

(assert (=> b!2562543 (= res!1078783 call!164387)))

(declare-fun e!1618199 () Bool)

(assert (=> b!2562543 (= e!1618199 e!1618197)))

(declare-fun b!2562544 () Bool)

(declare-fun res!1078786 () Bool)

(assert (=> b!2562544 (=> res!1078786 e!1618200)))

(assert (=> b!2562544 (= res!1078786 (not ((_ is Concat!12315) (derivativeStep!2188 r!27340 c!14016))))))

(assert (=> b!2562544 (= e!1618199 e!1618200)))

(declare-fun b!2562545 () Bool)

(assert (=> b!2562545 (= e!1618198 call!164389)))

(declare-fun c!411817 () Bool)

(declare-fun bm!164383 () Bool)

(assert (=> bm!164383 (= call!164388 (validRegex!3245 (ite c!411817 (regTwo!15751 (derivativeStep!2188 r!27340 c!14016)) (regOne!15750 (derivativeStep!2188 r!27340 c!14016)))))))

(declare-fun bm!164384 () Bool)

(assert (=> bm!164384 (= call!164389 (validRegex!3245 (ite c!411816 (reg!7948 (derivativeStep!2188 r!27340 c!14016)) (ite c!411817 (regOne!15751 (derivativeStep!2188 r!27340 c!14016)) (regTwo!15750 (derivativeStep!2188 r!27340 c!14016))))))))

(declare-fun b!2562546 () Bool)

(assert (=> b!2562546 (= e!1618201 e!1618199)))

(assert (=> b!2562546 (= c!411817 ((_ is Union!7619) (derivativeStep!2188 r!27340 c!14016)))))

(assert (= (and d!725833 (not res!1078785)) b!2562542))

(assert (= (and b!2562542 c!411816) b!2562540))

(assert (= (and b!2562542 (not c!411816)) b!2562546))

(assert (= (and b!2562540 res!1078784) b!2562545))

(assert (= (and b!2562546 c!411817) b!2562543))

(assert (= (and b!2562546 (not c!411817)) b!2562544))

(assert (= (and b!2562543 res!1078783) b!2562538))

(assert (= (and b!2562544 (not res!1078786)) b!2562541))

(assert (= (and b!2562541 res!1078782) b!2562539))

(assert (= (or b!2562543 b!2562539) bm!164382))

(assert (= (or b!2562538 b!2562541) bm!164383))

(assert (= (or b!2562545 bm!164382) bm!164384))

(declare-fun m!2902189 () Bool)

(assert (=> b!2562540 m!2902189))

(declare-fun m!2902191 () Bool)

(assert (=> bm!164383 m!2902191))

(declare-fun m!2902193 () Bool)

(assert (=> bm!164384 m!2902193))

(assert (=> d!725611 d!725833))

(assert (=> bm!164120 d!725619))

(declare-fun d!725835 () Bool)

(declare-fun lt!904913 () Regex!7619)

(assert (=> d!725835 (validRegex!3245 lt!904913)))

(declare-fun e!1618205 () Regex!7619)

(assert (=> d!725835 (= lt!904913 e!1618205)))

(declare-fun c!411818 () Bool)

(assert (=> d!725835 (= c!411818 ((_ is Cons!29584) (t!211383 tl!4068)))))

(assert (=> d!725835 (validRegex!3245 (derivativeStep!2188 lt!904832 (h!35004 tl!4068)))))

(assert (=> d!725835 (= (derivative!314 (derivativeStep!2188 lt!904832 (h!35004 tl!4068)) (t!211383 tl!4068)) lt!904913)))

(declare-fun b!2562549 () Bool)

(assert (=> b!2562549 (= e!1618205 (derivative!314 (derivativeStep!2188 (derivativeStep!2188 lt!904832 (h!35004 tl!4068)) (h!35004 (t!211383 tl!4068))) (t!211383 (t!211383 tl!4068))))))

(declare-fun b!2562550 () Bool)

(assert (=> b!2562550 (= e!1618205 (derivativeStep!2188 lt!904832 (h!35004 tl!4068)))))

(assert (= (and d!725835 c!411818) b!2562549))

(assert (= (and d!725835 (not c!411818)) b!2562550))

(declare-fun m!2902195 () Bool)

(assert (=> d!725835 m!2902195))

(assert (=> d!725835 m!2901649))

(declare-fun m!2902197 () Bool)

(assert (=> d!725835 m!2902197))

(assert (=> b!2562549 m!2901649))

(declare-fun m!2902199 () Bool)

(assert (=> b!2562549 m!2902199))

(assert (=> b!2562549 m!2902199))

(declare-fun m!2902201 () Bool)

(assert (=> b!2562549 m!2902201))

(assert (=> b!2561825 d!725835))

(declare-fun b!2562552 () Bool)

(declare-fun e!1618211 () Regex!7619)

(assert (=> b!2562552 (= e!1618211 EmptyLang!7619)))

(declare-fun b!2562553 () Bool)

(declare-fun e!1618208 () Regex!7619)

(declare-fun call!164390 () Regex!7619)

(assert (=> b!2562553 (= e!1618208 (Union!7619 (Concat!12315 call!164390 (regTwo!15750 lt!904832)) EmptyLang!7619))))

(declare-fun bm!164385 () Bool)

(declare-fun call!164392 () Regex!7619)

(assert (=> bm!164385 (= call!164390 call!164392)))

(declare-fun b!2562554 () Bool)

(declare-fun e!1618207 () Regex!7619)

(declare-fun e!1618209 () Regex!7619)

(assert (=> b!2562554 (= e!1618207 e!1618209)))

(declare-fun c!411822 () Bool)

(assert (=> b!2562554 (= c!411822 ((_ is Star!7619) lt!904832))))

(declare-fun b!2562555 () Bool)

(declare-fun e!1618210 () Regex!7619)

(assert (=> b!2562555 (= e!1618211 e!1618210)))

(declare-fun c!411819 () Bool)

(assert (=> b!2562555 (= c!411819 ((_ is ElementMatch!7619) lt!904832))))

(declare-fun bm!164386 () Bool)

(declare-fun call!164393 () Regex!7619)

(declare-fun c!411820 () Bool)

(assert (=> bm!164386 (= call!164393 (derivativeStep!2188 (ite c!411820 (regTwo!15751 lt!904832) (regTwo!15750 lt!904832)) (h!35004 tl!4068)))))

(declare-fun b!2562556 () Bool)

(assert (=> b!2562556 (= e!1618210 (ite (= (h!35004 tl!4068) (c!411501 lt!904832)) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164387 () Bool)

(declare-fun call!164391 () Regex!7619)

(assert (=> bm!164387 (= call!164392 call!164391)))

(declare-fun b!2562557 () Bool)

(assert (=> b!2562557 (= e!1618207 (Union!7619 call!164391 call!164393))))

(declare-fun b!2562558 () Bool)

(declare-fun c!411821 () Bool)

(assert (=> b!2562558 (= c!411821 (nullable!2536 (regOne!15750 lt!904832)))))

(assert (=> b!2562558 (= e!1618209 e!1618208)))

(declare-fun bm!164388 () Bool)

(assert (=> bm!164388 (= call!164391 (derivativeStep!2188 (ite c!411820 (regOne!15751 lt!904832) (ite c!411822 (reg!7948 lt!904832) (regOne!15750 lt!904832))) (h!35004 tl!4068)))))

(declare-fun b!2562560 () Bool)

(assert (=> b!2562560 (= e!1618208 (Union!7619 (Concat!12315 call!164390 (regTwo!15750 lt!904832)) call!164393))))

(declare-fun b!2562561 () Bool)

(assert (=> b!2562561 (= e!1618209 (Concat!12315 call!164392 lt!904832))))

(declare-fun d!725837 () Bool)

(declare-fun lt!904914 () Regex!7619)

(assert (=> d!725837 (validRegex!3245 lt!904914)))

(assert (=> d!725837 (= lt!904914 e!1618211)))

(declare-fun c!411823 () Bool)

(assert (=> d!725837 (= c!411823 (or ((_ is EmptyExpr!7619) lt!904832) ((_ is EmptyLang!7619) lt!904832)))))

(assert (=> d!725837 (validRegex!3245 lt!904832)))

(assert (=> d!725837 (= (derivativeStep!2188 lt!904832 (h!35004 tl!4068)) lt!904914)))

(declare-fun b!2562559 () Bool)

(assert (=> b!2562559 (= c!411820 ((_ is Union!7619) lt!904832))))

(assert (=> b!2562559 (= e!1618210 e!1618207)))

(assert (= (and d!725837 c!411823) b!2562552))

(assert (= (and d!725837 (not c!411823)) b!2562555))

(assert (= (and b!2562555 c!411819) b!2562556))

(assert (= (and b!2562555 (not c!411819)) b!2562559))

(assert (= (and b!2562559 c!411820) b!2562557))

(assert (= (and b!2562559 (not c!411820)) b!2562554))

(assert (= (and b!2562554 c!411822) b!2562561))

(assert (= (and b!2562554 (not c!411822)) b!2562558))

(assert (= (and b!2562558 c!411821) b!2562560))

(assert (= (and b!2562558 (not c!411821)) b!2562553))

(assert (= (or b!2562560 b!2562553) bm!164385))

(assert (= (or b!2562561 bm!164385) bm!164387))

(assert (= (or b!2562557 b!2562560) bm!164386))

(assert (= (or b!2562557 bm!164387) bm!164388))

(declare-fun m!2902205 () Bool)

(assert (=> bm!164386 m!2902205))

(declare-fun m!2902207 () Bool)

(assert (=> b!2562558 m!2902207))

(declare-fun m!2902209 () Bool)

(assert (=> bm!164388 m!2902209))

(declare-fun m!2902211 () Bool)

(assert (=> d!725837 m!2902211))

(assert (=> d!725837 m!2901441))

(assert (=> b!2561825 d!725837))

(declare-fun d!725843 () Bool)

(assert (=> d!725843 (= (nullable!2536 (reg!7948 (regTwo!15750 r!27340))) (nullableFct!761 (reg!7948 (regTwo!15750 r!27340))))))

(declare-fun bs!469862 () Bool)

(assert (= bs!469862 d!725843))

(declare-fun m!2902213 () Bool)

(assert (=> bs!469862 m!2902213))

(assert (=> b!2561818 d!725843))

(assert (=> d!725549 d!725619))

(assert (=> d!725549 d!725635))

(declare-fun d!725845 () Bool)

(declare-fun lt!904915 () Regex!7619)

(assert (=> d!725845 (validRegex!3245 lt!904915)))

(declare-fun e!1618219 () Regex!7619)

(assert (=> d!725845 (= lt!904915 e!1618219)))

(declare-fun c!411826 () Bool)

(assert (=> d!725845 (= c!411826 ((_ is Cons!29584) (t!211383 tl!4068)))))

(assert (=> d!725845 (validRegex!3245 (derivativeStep!2188 (derivativeStep!2188 r!27340 c!14016) (h!35004 tl!4068)))))

(assert (=> d!725845 (= (derivative!314 (derivativeStep!2188 (derivativeStep!2188 r!27340 c!14016) (h!35004 tl!4068)) (t!211383 tl!4068)) lt!904915)))

(declare-fun b!2562571 () Bool)

(assert (=> b!2562571 (= e!1618219 (derivative!314 (derivativeStep!2188 (derivativeStep!2188 (derivativeStep!2188 r!27340 c!14016) (h!35004 tl!4068)) (h!35004 (t!211383 tl!4068))) (t!211383 (t!211383 tl!4068))))))

(declare-fun b!2562572 () Bool)

(assert (=> b!2562572 (= e!1618219 (derivativeStep!2188 (derivativeStep!2188 r!27340 c!14016) (h!35004 tl!4068)))))

(assert (= (and d!725845 c!411826) b!2562571))

(assert (= (and d!725845 (not c!411826)) b!2562572))

(declare-fun m!2902221 () Bool)

(assert (=> d!725845 m!2902221))

(assert (=> d!725845 m!2901675))

(declare-fun m!2902223 () Bool)

(assert (=> d!725845 m!2902223))

(assert (=> b!2562571 m!2901675))

(declare-fun m!2902225 () Bool)

(assert (=> b!2562571 m!2902225))

(assert (=> b!2562571 m!2902225))

(declare-fun m!2902227 () Bool)

(assert (=> b!2562571 m!2902227))

(assert (=> b!2561850 d!725845))

(declare-fun b!2562582 () Bool)

(declare-fun e!1618231 () Regex!7619)

(assert (=> b!2562582 (= e!1618231 EmptyLang!7619)))

(declare-fun b!2562583 () Bool)

(declare-fun call!164400 () Regex!7619)

(declare-fun e!1618228 () Regex!7619)

(assert (=> b!2562583 (= e!1618228 (Union!7619 (Concat!12315 call!164400 (regTwo!15750 (derivativeStep!2188 r!27340 c!14016))) EmptyLang!7619))))

(declare-fun bm!164395 () Bool)

(declare-fun call!164402 () Regex!7619)

(assert (=> bm!164395 (= call!164400 call!164402)))

(declare-fun b!2562584 () Bool)

(declare-fun e!1618227 () Regex!7619)

(declare-fun e!1618229 () Regex!7619)

(assert (=> b!2562584 (= e!1618227 e!1618229)))

(declare-fun c!411832 () Bool)

(assert (=> b!2562584 (= c!411832 ((_ is Star!7619) (derivativeStep!2188 r!27340 c!14016)))))

(declare-fun b!2562585 () Bool)

(declare-fun e!1618230 () Regex!7619)

(assert (=> b!2562585 (= e!1618231 e!1618230)))

(declare-fun c!411829 () Bool)

(assert (=> b!2562585 (= c!411829 ((_ is ElementMatch!7619) (derivativeStep!2188 r!27340 c!14016)))))

(declare-fun call!164403 () Regex!7619)

(declare-fun bm!164396 () Bool)

(declare-fun c!411830 () Bool)

(assert (=> bm!164396 (= call!164403 (derivativeStep!2188 (ite c!411830 (regTwo!15751 (derivativeStep!2188 r!27340 c!14016)) (regTwo!15750 (derivativeStep!2188 r!27340 c!14016))) (h!35004 tl!4068)))))

(declare-fun b!2562586 () Bool)

(assert (=> b!2562586 (= e!1618230 (ite (= (h!35004 tl!4068) (c!411501 (derivativeStep!2188 r!27340 c!14016))) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164397 () Bool)

(declare-fun call!164401 () Regex!7619)

(assert (=> bm!164397 (= call!164402 call!164401)))

(declare-fun b!2562587 () Bool)

(assert (=> b!2562587 (= e!1618227 (Union!7619 call!164401 call!164403))))

(declare-fun b!2562588 () Bool)

(declare-fun c!411831 () Bool)

(assert (=> b!2562588 (= c!411831 (nullable!2536 (regOne!15750 (derivativeStep!2188 r!27340 c!14016))))))

(assert (=> b!2562588 (= e!1618229 e!1618228)))

(declare-fun bm!164398 () Bool)

(assert (=> bm!164398 (= call!164401 (derivativeStep!2188 (ite c!411830 (regOne!15751 (derivativeStep!2188 r!27340 c!14016)) (ite c!411832 (reg!7948 (derivativeStep!2188 r!27340 c!14016)) (regOne!15750 (derivativeStep!2188 r!27340 c!14016)))) (h!35004 tl!4068)))))

(declare-fun b!2562590 () Bool)

(assert (=> b!2562590 (= e!1618228 (Union!7619 (Concat!12315 call!164400 (regTwo!15750 (derivativeStep!2188 r!27340 c!14016))) call!164403))))

(declare-fun b!2562591 () Bool)

(assert (=> b!2562591 (= e!1618229 (Concat!12315 call!164402 (derivativeStep!2188 r!27340 c!14016)))))

(declare-fun d!725849 () Bool)

(declare-fun lt!904916 () Regex!7619)

(assert (=> d!725849 (validRegex!3245 lt!904916)))

(assert (=> d!725849 (= lt!904916 e!1618231)))

(declare-fun c!411833 () Bool)

(assert (=> d!725849 (= c!411833 (or ((_ is EmptyExpr!7619) (derivativeStep!2188 r!27340 c!14016)) ((_ is EmptyLang!7619) (derivativeStep!2188 r!27340 c!14016))))))

(assert (=> d!725849 (validRegex!3245 (derivativeStep!2188 r!27340 c!14016))))

(assert (=> d!725849 (= (derivativeStep!2188 (derivativeStep!2188 r!27340 c!14016) (h!35004 tl!4068)) lt!904916)))

(declare-fun b!2562589 () Bool)

(assert (=> b!2562589 (= c!411830 ((_ is Union!7619) (derivativeStep!2188 r!27340 c!14016)))))

(assert (=> b!2562589 (= e!1618230 e!1618227)))

(assert (= (and d!725849 c!411833) b!2562582))

(assert (= (and d!725849 (not c!411833)) b!2562585))

(assert (= (and b!2562585 c!411829) b!2562586))

(assert (= (and b!2562585 (not c!411829)) b!2562589))

(assert (= (and b!2562589 c!411830) b!2562587))

(assert (= (and b!2562589 (not c!411830)) b!2562584))

(assert (= (and b!2562584 c!411832) b!2562591))

(assert (= (and b!2562584 (not c!411832)) b!2562588))

(assert (= (and b!2562588 c!411831) b!2562590))

(assert (= (and b!2562588 (not c!411831)) b!2562583))

(assert (= (or b!2562590 b!2562583) bm!164395))

(assert (= (or b!2562591 bm!164395) bm!164397))

(assert (= (or b!2562587 b!2562590) bm!164396))

(assert (= (or b!2562587 bm!164397) bm!164398))

(declare-fun m!2902235 () Bool)

(assert (=> bm!164396 m!2902235))

(declare-fun m!2902237 () Bool)

(assert (=> b!2562588 m!2902237))

(declare-fun m!2902239 () Bool)

(assert (=> bm!164398 m!2902239))

(declare-fun m!2902241 () Bool)

(assert (=> d!725849 m!2902241))

(assert (=> d!725849 m!2901401))

(assert (=> d!725849 m!2901673))

(assert (=> b!2561850 d!725849))

(assert (=> bm!164121 d!725619))

(declare-fun bm!164402 () Bool)

(declare-fun call!164407 () Bool)

(assert (=> bm!164402 (= call!164407 (isEmpty!17042 (tail!4101 tl!4068)))))

(declare-fun b!2562601 () Bool)

(declare-fun res!1078810 () Bool)

(declare-fun e!1618243 () Bool)

(assert (=> b!2562601 (=> res!1078810 e!1618243)))

(assert (=> b!2562601 (= res!1078810 (not ((_ is ElementMatch!7619) (derivativeStep!2188 lt!904832 (head!5826 tl!4068)))))))

(declare-fun e!1618241 () Bool)

(assert (=> b!2562601 (= e!1618241 e!1618243)))

(declare-fun b!2562602 () Bool)

(declare-fun e!1618240 () Bool)

(assert (=> b!2562602 (= e!1618240 (= (head!5826 (tail!4101 tl!4068)) (c!411501 (derivativeStep!2188 lt!904832 (head!5826 tl!4068)))))))

(declare-fun b!2562603 () Bool)

(declare-fun e!1618245 () Bool)

(declare-fun e!1618242 () Bool)

(assert (=> b!2562603 (= e!1618245 e!1618242)))

(declare-fun res!1078808 () Bool)

(assert (=> b!2562603 (=> res!1078808 e!1618242)))

(assert (=> b!2562603 (= res!1078808 call!164407)))

(declare-fun b!2562604 () Bool)

(declare-fun res!1078811 () Bool)

(assert (=> b!2562604 (=> res!1078811 e!1618243)))

(assert (=> b!2562604 (= res!1078811 e!1618240)))

(declare-fun res!1078806 () Bool)

(assert (=> b!2562604 (=> (not res!1078806) (not e!1618240))))

(declare-fun lt!904917 () Bool)

(assert (=> b!2562604 (= res!1078806 lt!904917)))

(declare-fun b!2562605 () Bool)

(declare-fun e!1618239 () Bool)

(assert (=> b!2562605 (= e!1618239 e!1618241)))

(declare-fun c!411838 () Bool)

(assert (=> b!2562605 (= c!411838 ((_ is EmptyLang!7619) (derivativeStep!2188 lt!904832 (head!5826 tl!4068))))))

(declare-fun b!2562606 () Bool)

(assert (=> b!2562606 (= e!1618241 (not lt!904917))))

(declare-fun b!2562607 () Bool)

(declare-fun res!1078812 () Bool)

(assert (=> b!2562607 (=> (not res!1078812) (not e!1618240))))

(assert (=> b!2562607 (= res!1078812 (isEmpty!17042 (tail!4101 (tail!4101 tl!4068))))))

(declare-fun d!725853 () Bool)

(assert (=> d!725853 e!1618239))

(declare-fun c!411836 () Bool)

(assert (=> d!725853 (= c!411836 ((_ is EmptyExpr!7619) (derivativeStep!2188 lt!904832 (head!5826 tl!4068))))))

(declare-fun e!1618244 () Bool)

(assert (=> d!725853 (= lt!904917 e!1618244)))

(declare-fun c!411837 () Bool)

(assert (=> d!725853 (= c!411837 (isEmpty!17042 (tail!4101 tl!4068)))))

(assert (=> d!725853 (validRegex!3245 (derivativeStep!2188 lt!904832 (head!5826 tl!4068)))))

(assert (=> d!725853 (= (matchR!3564 (derivativeStep!2188 lt!904832 (head!5826 tl!4068)) (tail!4101 tl!4068)) lt!904917)))

(declare-fun b!2562608 () Bool)

(declare-fun res!1078807 () Bool)

(assert (=> b!2562608 (=> res!1078807 e!1618242)))

(assert (=> b!2562608 (= res!1078807 (not (isEmpty!17042 (tail!4101 (tail!4101 tl!4068)))))))

(declare-fun b!2562609 () Bool)

(assert (=> b!2562609 (= e!1618239 (= lt!904917 call!164407))))

(declare-fun b!2562610 () Bool)

(assert (=> b!2562610 (= e!1618243 e!1618245)))

(declare-fun res!1078809 () Bool)

(assert (=> b!2562610 (=> (not res!1078809) (not e!1618245))))

(assert (=> b!2562610 (= res!1078809 (not lt!904917))))

(declare-fun b!2562611 () Bool)

(assert (=> b!2562611 (= e!1618242 (not (= (head!5826 (tail!4101 tl!4068)) (c!411501 (derivativeStep!2188 lt!904832 (head!5826 tl!4068))))))))

(declare-fun b!2562612 () Bool)

(assert (=> b!2562612 (= e!1618244 (nullable!2536 (derivativeStep!2188 lt!904832 (head!5826 tl!4068))))))

(declare-fun b!2562613 () Bool)

(declare-fun res!1078805 () Bool)

(assert (=> b!2562613 (=> (not res!1078805) (not e!1618240))))

(assert (=> b!2562613 (= res!1078805 (not call!164407))))

(declare-fun b!2562614 () Bool)

(assert (=> b!2562614 (= e!1618244 (matchR!3564 (derivativeStep!2188 (derivativeStep!2188 lt!904832 (head!5826 tl!4068)) (head!5826 (tail!4101 tl!4068))) (tail!4101 (tail!4101 tl!4068))))))

(assert (= (and d!725853 c!411837) b!2562612))

(assert (= (and d!725853 (not c!411837)) b!2562614))

(assert (= (and d!725853 c!411836) b!2562609))

(assert (= (and d!725853 (not c!411836)) b!2562605))

(assert (= (and b!2562605 c!411838) b!2562606))

(assert (= (and b!2562605 (not c!411838)) b!2562601))

(assert (= (and b!2562601 (not res!1078810)) b!2562604))

(assert (= (and b!2562604 res!1078806) b!2562613))

(assert (= (and b!2562613 res!1078805) b!2562607))

(assert (= (and b!2562607 res!1078812) b!2562602))

(assert (= (and b!2562604 (not res!1078811)) b!2562610))

(assert (= (and b!2562610 res!1078809) b!2562603))

(assert (= (and b!2562603 (not res!1078808)) b!2562608))

(assert (= (and b!2562608 (not res!1078807)) b!2562611))

(assert (= (or b!2562609 b!2562603 b!2562613) bm!164402))

(assert (=> b!2562614 m!2901459))

(assert (=> b!2562614 m!2902011))

(assert (=> b!2562614 m!2901653))

(assert (=> b!2562614 m!2902011))

(declare-fun m!2902249 () Bool)

(assert (=> b!2562614 m!2902249))

(assert (=> b!2562614 m!2901459))

(assert (=> b!2562614 m!2902015))

(assert (=> b!2562614 m!2902249))

(assert (=> b!2562614 m!2902015))

(declare-fun m!2902251 () Bool)

(assert (=> b!2562614 m!2902251))

(assert (=> b!2562612 m!2901653))

(declare-fun m!2902255 () Bool)

(assert (=> b!2562612 m!2902255))

(assert (=> b!2562602 m!2901459))

(assert (=> b!2562602 m!2902011))

(assert (=> d!725853 m!2901459))

(assert (=> d!725853 m!2901467))

(assert (=> d!725853 m!2901653))

(declare-fun m!2902259 () Bool)

(assert (=> d!725853 m!2902259))

(assert (=> bm!164402 m!2901459))

(assert (=> bm!164402 m!2901467))

(assert (=> b!2562607 m!2901459))

(assert (=> b!2562607 m!2902015))

(assert (=> b!2562607 m!2902015))

(assert (=> b!2562607 m!2902031))

(assert (=> b!2562611 m!2901459))

(assert (=> b!2562611 m!2902011))

(assert (=> b!2562608 m!2901459))

(assert (=> b!2562608 m!2902015))

(assert (=> b!2562608 m!2902015))

(assert (=> b!2562608 m!2902031))

(assert (=> b!2561840 d!725853))

(declare-fun b!2562628 () Bool)

(declare-fun e!1618258 () Regex!7619)

(assert (=> b!2562628 (= e!1618258 EmptyLang!7619)))

(declare-fun b!2562629 () Bool)

(declare-fun e!1618255 () Regex!7619)

(declare-fun call!164411 () Regex!7619)

(assert (=> b!2562629 (= e!1618255 (Union!7619 (Concat!12315 call!164411 (regTwo!15750 lt!904832)) EmptyLang!7619))))

(declare-fun bm!164406 () Bool)

(declare-fun call!164413 () Regex!7619)

(assert (=> bm!164406 (= call!164411 call!164413)))

(declare-fun b!2562630 () Bool)

(declare-fun e!1618254 () Regex!7619)

(declare-fun e!1618256 () Regex!7619)

(assert (=> b!2562630 (= e!1618254 e!1618256)))

(declare-fun c!411844 () Bool)

(assert (=> b!2562630 (= c!411844 ((_ is Star!7619) lt!904832))))

(declare-fun b!2562631 () Bool)

(declare-fun e!1618257 () Regex!7619)

(assert (=> b!2562631 (= e!1618258 e!1618257)))

(declare-fun c!411841 () Bool)

(assert (=> b!2562631 (= c!411841 ((_ is ElementMatch!7619) lt!904832))))

(declare-fun call!164414 () Regex!7619)

(declare-fun c!411842 () Bool)

(declare-fun bm!164407 () Bool)

(assert (=> bm!164407 (= call!164414 (derivativeStep!2188 (ite c!411842 (regTwo!15751 lt!904832) (regTwo!15750 lt!904832)) (head!5826 tl!4068)))))

(declare-fun b!2562632 () Bool)

(assert (=> b!2562632 (= e!1618257 (ite (= (head!5826 tl!4068) (c!411501 lt!904832)) EmptyExpr!7619 EmptyLang!7619))))

(declare-fun bm!164408 () Bool)

(declare-fun call!164412 () Regex!7619)

(assert (=> bm!164408 (= call!164413 call!164412)))

(declare-fun b!2562633 () Bool)

(assert (=> b!2562633 (= e!1618254 (Union!7619 call!164412 call!164414))))

(declare-fun b!2562634 () Bool)

(declare-fun c!411843 () Bool)

(assert (=> b!2562634 (= c!411843 (nullable!2536 (regOne!15750 lt!904832)))))

(assert (=> b!2562634 (= e!1618256 e!1618255)))

(declare-fun bm!164409 () Bool)

(assert (=> bm!164409 (= call!164412 (derivativeStep!2188 (ite c!411842 (regOne!15751 lt!904832) (ite c!411844 (reg!7948 lt!904832) (regOne!15750 lt!904832))) (head!5826 tl!4068)))))

(declare-fun b!2562636 () Bool)

(assert (=> b!2562636 (= e!1618255 (Union!7619 (Concat!12315 call!164411 (regTwo!15750 lt!904832)) call!164414))))

(declare-fun b!2562637 () Bool)

(assert (=> b!2562637 (= e!1618256 (Concat!12315 call!164413 lt!904832))))

(declare-fun d!725857 () Bool)

(declare-fun lt!904918 () Regex!7619)

(assert (=> d!725857 (validRegex!3245 lt!904918)))

(assert (=> d!725857 (= lt!904918 e!1618258)))

(declare-fun c!411845 () Bool)

(assert (=> d!725857 (= c!411845 (or ((_ is EmptyExpr!7619) lt!904832) ((_ is EmptyLang!7619) lt!904832)))))

(assert (=> d!725857 (validRegex!3245 lt!904832)))

(assert (=> d!725857 (= (derivativeStep!2188 lt!904832 (head!5826 tl!4068)) lt!904918)))

(declare-fun b!2562635 () Bool)

(assert (=> b!2562635 (= c!411842 ((_ is Union!7619) lt!904832))))

(assert (=> b!2562635 (= e!1618257 e!1618254)))

(assert (= (and d!725857 c!411845) b!2562628))

(assert (= (and d!725857 (not c!411845)) b!2562631))

(assert (= (and b!2562631 c!411841) b!2562632))

(assert (= (and b!2562631 (not c!411841)) b!2562635))

(assert (= (and b!2562635 c!411842) b!2562633))

(assert (= (and b!2562635 (not c!411842)) b!2562630))

(assert (= (and b!2562630 c!411844) b!2562637))

(assert (= (and b!2562630 (not c!411844)) b!2562634))

(assert (= (and b!2562634 c!411843) b!2562636))

(assert (= (and b!2562634 (not c!411843)) b!2562629))

(assert (= (or b!2562636 b!2562629) bm!164406))

(assert (= (or b!2562637 bm!164406) bm!164408))

(assert (= (or b!2562633 b!2562636) bm!164407))

(assert (= (or b!2562633 bm!164408) bm!164409))

(assert (=> bm!164407 m!2901455))

(declare-fun m!2902263 () Bool)

(assert (=> bm!164407 m!2902263))

(assert (=> b!2562634 m!2902207))

(assert (=> bm!164409 m!2901455))

(declare-fun m!2902265 () Bool)

(assert (=> bm!164409 m!2902265))

(declare-fun m!2902267 () Bool)

(assert (=> d!725857 m!2902267))

(assert (=> d!725857 m!2901441))

(assert (=> b!2561840 d!725857))

(assert (=> b!2561840 d!725705))

(assert (=> b!2561840 d!725651))

(assert (=> b!2561493 d!725705))

(declare-fun d!725859 () Bool)

(assert (=> d!725859 (= (nullable!2536 (derivative!314 lt!904830 tl!4068)) (nullableFct!761 (derivative!314 lt!904830 tl!4068)))))

(declare-fun bs!469863 () Bool)

(assert (= bs!469863 d!725859))

(assert (=> bs!469863 m!2901421))

(declare-fun m!2902269 () Bool)

(assert (=> bs!469863 m!2902269))

(assert (=> b!2561714 d!725859))

(declare-fun b!2562646 () Bool)

(declare-fun e!1618262 () Bool)

(declare-fun call!164416 () Bool)

(assert (=> b!2562646 (= e!1618262 call!164416)))

(declare-fun b!2562647 () Bool)

(declare-fun e!1618261 () Bool)

(declare-fun call!164415 () Bool)

(assert (=> b!2562647 (= e!1618261 call!164415)))

(declare-fun d!725861 () Bool)

(declare-fun res!1078821 () Bool)

(declare-fun e!1618267 () Bool)

(assert (=> d!725861 (=> res!1078821 e!1618267)))

(assert (=> d!725861 (= res!1078821 ((_ is ElementMatch!7619) (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))))))

(assert (=> d!725861 (= (validRegex!3245 (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))) e!1618267)))

(declare-fun b!2562648 () Bool)

(declare-fun e!1618266 () Bool)

(declare-fun e!1618263 () Bool)

(assert (=> b!2562648 (= e!1618266 e!1618263)))

(declare-fun res!1078820 () Bool)

(assert (=> b!2562648 (= res!1078820 (not (nullable!2536 (reg!7948 (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))))))))

(assert (=> b!2562648 (=> (not res!1078820) (not e!1618263))))

(declare-fun b!2562649 () Bool)

(declare-fun e!1618265 () Bool)

(assert (=> b!2562649 (= e!1618265 e!1618261)))

(declare-fun res!1078818 () Bool)

(assert (=> b!2562649 (=> (not res!1078818) (not e!1618261))))

(assert (=> b!2562649 (= res!1078818 call!164416)))

(declare-fun b!2562650 () Bool)

(assert (=> b!2562650 (= e!1618267 e!1618266)))

(declare-fun c!411846 () Bool)

(assert (=> b!2562650 (= c!411846 ((_ is Star!7619) (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))))))

(declare-fun bm!164410 () Bool)

(declare-fun call!164417 () Bool)

(assert (=> bm!164410 (= call!164415 call!164417)))

(declare-fun b!2562651 () Bool)

(declare-fun res!1078819 () Bool)

(assert (=> b!2562651 (=> (not res!1078819) (not e!1618262))))

(assert (=> b!2562651 (= res!1078819 call!164415)))

(declare-fun e!1618264 () Bool)

(assert (=> b!2562651 (= e!1618264 e!1618262)))

(declare-fun b!2562652 () Bool)

(declare-fun res!1078822 () Bool)

(assert (=> b!2562652 (=> res!1078822 e!1618265)))

(assert (=> b!2562652 (= res!1078822 (not ((_ is Concat!12315) (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340))))))))

(assert (=> b!2562652 (= e!1618264 e!1618265)))

(declare-fun b!2562653 () Bool)

(assert (=> b!2562653 (= e!1618263 call!164417)))

(declare-fun c!411847 () Bool)

(declare-fun bm!164411 () Bool)

(assert (=> bm!164411 (= call!164416 (validRegex!3245 (ite c!411847 (regTwo!15751 (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))) (regOne!15750 (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))))))))

(declare-fun bm!164412 () Bool)

(assert (=> bm!164412 (= call!164417 (validRegex!3245 (ite c!411846 (reg!7948 (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))) (ite c!411847 (regOne!15751 (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))) (regTwo!15750 (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340))))))))))

(declare-fun b!2562655 () Bool)

(assert (=> b!2562655 (= e!1618266 e!1618264)))

(assert (=> b!2562655 (= c!411847 ((_ is Union!7619) (ite c!411612 (reg!7948 r!27340) (ite c!411613 (regOne!15751 r!27340) (regTwo!15750 r!27340)))))))

(assert (= (and d!725861 (not res!1078821)) b!2562650))

(assert (= (and b!2562650 c!411846) b!2562648))

(assert (= (and b!2562650 (not c!411846)) b!2562655))

(assert (= (and b!2562648 res!1078820) b!2562653))

(assert (= (and b!2562655 c!411847) b!2562651))

(assert (= (and b!2562655 (not c!411847)) b!2562652))

(assert (= (and b!2562651 res!1078819) b!2562646))

(assert (= (and b!2562652 (not res!1078822)) b!2562649))

(assert (= (and b!2562649 res!1078818) b!2562647))

(assert (= (or b!2562651 b!2562647) bm!164410))

(assert (= (or b!2562646 b!2562649) bm!164411))

(assert (= (or b!2562653 bm!164410) bm!164412))

(declare-fun m!2902271 () Bool)

(assert (=> b!2562648 m!2902271))

(declare-fun m!2902273 () Bool)

(assert (=> bm!164411 m!2902273))

(declare-fun m!2902275 () Bool)

(assert (=> bm!164412 m!2902275))

(assert (=> bm!164182 d!725861))

(declare-fun b!2562669 () Bool)

(declare-fun e!1618271 () Bool)

(declare-fun tp!815864 () Bool)

(assert (=> b!2562669 (= e!1618271 tp!815864)))

(declare-fun b!2562667 () Bool)

(assert (=> b!2562667 (= e!1618271 tp_is_empty!13093)))

(assert (=> b!2561884 (= tp!815812 e!1618271)))

(declare-fun b!2562670 () Bool)

(declare-fun tp!815862 () Bool)

(declare-fun tp!815865 () Bool)

(assert (=> b!2562670 (= e!1618271 (and tp!815862 tp!815865))))

(declare-fun b!2562668 () Bool)

(declare-fun tp!815863 () Bool)

(declare-fun tp!815861 () Bool)

(assert (=> b!2562668 (= e!1618271 (and tp!815863 tp!815861))))

(assert (= (and b!2561884 ((_ is ElementMatch!7619) (regOne!15751 (regTwo!15751 r!27340)))) b!2562667))

(assert (= (and b!2561884 ((_ is Concat!12315) (regOne!15751 (regTwo!15751 r!27340)))) b!2562668))

(assert (= (and b!2561884 ((_ is Star!7619) (regOne!15751 (regTwo!15751 r!27340)))) b!2562669))

(assert (= (and b!2561884 ((_ is Union!7619) (regOne!15751 (regTwo!15751 r!27340)))) b!2562670))

(declare-fun b!2562677 () Bool)

(declare-fun e!1618273 () Bool)

(declare-fun tp!815874 () Bool)

(assert (=> b!2562677 (= e!1618273 tp!815874)))

(declare-fun b!2562675 () Bool)

(assert (=> b!2562675 (= e!1618273 tp_is_empty!13093)))

(assert (=> b!2561884 (= tp!815815 e!1618273)))

(declare-fun b!2562678 () Bool)

(declare-fun tp!815872 () Bool)

(declare-fun tp!815875 () Bool)

(assert (=> b!2562678 (= e!1618273 (and tp!815872 tp!815875))))

(declare-fun b!2562676 () Bool)

(declare-fun tp!815873 () Bool)

(declare-fun tp!815871 () Bool)

(assert (=> b!2562676 (= e!1618273 (and tp!815873 tp!815871))))

(assert (= (and b!2561884 ((_ is ElementMatch!7619) (regTwo!15751 (regTwo!15751 r!27340)))) b!2562675))

(assert (= (and b!2561884 ((_ is Concat!12315) (regTwo!15751 (regTwo!15751 r!27340)))) b!2562676))

(assert (= (and b!2561884 ((_ is Star!7619) (regTwo!15751 (regTwo!15751 r!27340)))) b!2562677))

(assert (= (and b!2561884 ((_ is Union!7619) (regTwo!15751 (regTwo!15751 r!27340)))) b!2562678))

(declare-fun b!2562685 () Bool)

(declare-fun e!1618275 () Bool)

(declare-fun tp!815884 () Bool)

(assert (=> b!2562685 (= e!1618275 tp!815884)))

(declare-fun b!2562683 () Bool)

(assert (=> b!2562683 (= e!1618275 tp_is_empty!13093)))

(assert (=> b!2561880 (= tp!815807 e!1618275)))

(declare-fun b!2562686 () Bool)

(declare-fun tp!815882 () Bool)

(declare-fun tp!815885 () Bool)

(assert (=> b!2562686 (= e!1618275 (and tp!815882 tp!815885))))

(declare-fun b!2562684 () Bool)

(declare-fun tp!815883 () Bool)

(declare-fun tp!815881 () Bool)

(assert (=> b!2562684 (= e!1618275 (and tp!815883 tp!815881))))

(assert (= (and b!2561880 ((_ is ElementMatch!7619) (regOne!15751 (regOne!15751 r!27340)))) b!2562683))

(assert (= (and b!2561880 ((_ is Concat!12315) (regOne!15751 (regOne!15751 r!27340)))) b!2562684))

(assert (= (and b!2561880 ((_ is Star!7619) (regOne!15751 (regOne!15751 r!27340)))) b!2562685))

(assert (= (and b!2561880 ((_ is Union!7619) (regOne!15751 (regOne!15751 r!27340)))) b!2562686))

(declare-fun b!2562689 () Bool)

(declare-fun e!1618276 () Bool)

(declare-fun tp!815889 () Bool)

(assert (=> b!2562689 (= e!1618276 tp!815889)))

(declare-fun b!2562687 () Bool)

(assert (=> b!2562687 (= e!1618276 tp_is_empty!13093)))

(assert (=> b!2561880 (= tp!815810 e!1618276)))

(declare-fun b!2562690 () Bool)

(declare-fun tp!815887 () Bool)

(declare-fun tp!815890 () Bool)

(assert (=> b!2562690 (= e!1618276 (and tp!815887 tp!815890))))

(declare-fun b!2562688 () Bool)

(declare-fun tp!815888 () Bool)

(declare-fun tp!815886 () Bool)

(assert (=> b!2562688 (= e!1618276 (and tp!815888 tp!815886))))

(assert (= (and b!2561880 ((_ is ElementMatch!7619) (regTwo!15751 (regOne!15751 r!27340)))) b!2562687))

(assert (= (and b!2561880 ((_ is Concat!12315) (regTwo!15751 (regOne!15751 r!27340)))) b!2562688))

(assert (= (and b!2561880 ((_ is Star!7619) (regTwo!15751 (regOne!15751 r!27340)))) b!2562689))

(assert (= (and b!2561880 ((_ is Union!7619) (regTwo!15751 (regOne!15751 r!27340)))) b!2562690))

(declare-fun b!2562697 () Bool)

(declare-fun e!1618278 () Bool)

(declare-fun tp!815899 () Bool)

(assert (=> b!2562697 (= e!1618278 tp!815899)))

(declare-fun b!2562695 () Bool)

(assert (=> b!2562695 (= e!1618278 tp_is_empty!13093)))

(assert (=> b!2561888 (= tp!815817 e!1618278)))

(declare-fun b!2562698 () Bool)

(declare-fun tp!815897 () Bool)

(declare-fun tp!815900 () Bool)

(assert (=> b!2562698 (= e!1618278 (and tp!815897 tp!815900))))

(declare-fun b!2562696 () Bool)

(declare-fun tp!815898 () Bool)

(declare-fun tp!815896 () Bool)

(assert (=> b!2562696 (= e!1618278 (and tp!815898 tp!815896))))

(assert (= (and b!2561888 ((_ is ElementMatch!7619) (regOne!15751 (regOne!15750 r!27340)))) b!2562695))

(assert (= (and b!2561888 ((_ is Concat!12315) (regOne!15751 (regOne!15750 r!27340)))) b!2562696))

(assert (= (and b!2561888 ((_ is Star!7619) (regOne!15751 (regOne!15750 r!27340)))) b!2562697))

(assert (= (and b!2561888 ((_ is Union!7619) (regOne!15751 (regOne!15750 r!27340)))) b!2562698))

(declare-fun b!2562701 () Bool)

(declare-fun e!1618279 () Bool)

(declare-fun tp!815904 () Bool)

(assert (=> b!2562701 (= e!1618279 tp!815904)))

(declare-fun b!2562699 () Bool)

(assert (=> b!2562699 (= e!1618279 tp_is_empty!13093)))

(assert (=> b!2561888 (= tp!815820 e!1618279)))

(declare-fun b!2562702 () Bool)

(declare-fun tp!815902 () Bool)

(declare-fun tp!815905 () Bool)

(assert (=> b!2562702 (= e!1618279 (and tp!815902 tp!815905))))

(declare-fun b!2562700 () Bool)

(declare-fun tp!815903 () Bool)

(declare-fun tp!815901 () Bool)

(assert (=> b!2562700 (= e!1618279 (and tp!815903 tp!815901))))

(assert (= (and b!2561888 ((_ is ElementMatch!7619) (regTwo!15751 (regOne!15750 r!27340)))) b!2562699))

(assert (= (and b!2561888 ((_ is Concat!12315) (regTwo!15751 (regOne!15750 r!27340)))) b!2562700))

(assert (= (and b!2561888 ((_ is Star!7619) (regTwo!15751 (regOne!15750 r!27340)))) b!2562701))

(assert (= (and b!2561888 ((_ is Union!7619) (regTwo!15751 (regOne!15750 r!27340)))) b!2562702))

(declare-fun b!2562709 () Bool)

(declare-fun e!1618281 () Bool)

(declare-fun tp!815914 () Bool)

(assert (=> b!2562709 (= e!1618281 tp!815914)))

(declare-fun b!2562707 () Bool)

(assert (=> b!2562707 (= e!1618281 tp_is_empty!13093)))

(assert (=> b!2561883 (= tp!815814 e!1618281)))

(declare-fun b!2562710 () Bool)

(declare-fun tp!815912 () Bool)

(declare-fun tp!815915 () Bool)

(assert (=> b!2562710 (= e!1618281 (and tp!815912 tp!815915))))

(declare-fun b!2562708 () Bool)

(declare-fun tp!815913 () Bool)

(declare-fun tp!815911 () Bool)

(assert (=> b!2562708 (= e!1618281 (and tp!815913 tp!815911))))

(assert (= (and b!2561883 ((_ is ElementMatch!7619) (reg!7948 (regTwo!15751 r!27340)))) b!2562707))

(assert (= (and b!2561883 ((_ is Concat!12315) (reg!7948 (regTwo!15751 r!27340)))) b!2562708))

(assert (= (and b!2561883 ((_ is Star!7619) (reg!7948 (regTwo!15751 r!27340)))) b!2562709))

(assert (= (and b!2561883 ((_ is Union!7619) (reg!7948 (regTwo!15751 r!27340)))) b!2562710))

(declare-fun b!2562713 () Bool)

(declare-fun e!1618282 () Bool)

(declare-fun tp!815919 () Bool)

(assert (=> b!2562713 (= e!1618282 tp!815919)))

(declare-fun b!2562711 () Bool)

(assert (=> b!2562711 (= e!1618282 tp_is_empty!13093)))

(assert (=> b!2561879 (= tp!815809 e!1618282)))

(declare-fun b!2562714 () Bool)

(declare-fun tp!815917 () Bool)

(declare-fun tp!815920 () Bool)

(assert (=> b!2562714 (= e!1618282 (and tp!815917 tp!815920))))

(declare-fun b!2562712 () Bool)

(declare-fun tp!815918 () Bool)

(declare-fun tp!815916 () Bool)

(assert (=> b!2562712 (= e!1618282 (and tp!815918 tp!815916))))

(assert (= (and b!2561879 ((_ is ElementMatch!7619) (reg!7948 (regOne!15751 r!27340)))) b!2562711))

(assert (= (and b!2561879 ((_ is Concat!12315) (reg!7948 (regOne!15751 r!27340)))) b!2562712))

(assert (= (and b!2561879 ((_ is Star!7619) (reg!7948 (regOne!15751 r!27340)))) b!2562713))

(assert (= (and b!2561879 ((_ is Union!7619) (reg!7948 (regOne!15751 r!27340)))) b!2562714))

(declare-fun b!2562721 () Bool)

(declare-fun e!1618284 () Bool)

(declare-fun tp!815929 () Bool)

(assert (=> b!2562721 (= e!1618284 tp!815929)))

(declare-fun b!2562719 () Bool)

(assert (=> b!2562719 (= e!1618284 tp_is_empty!13093)))

(assert (=> b!2561892 (= tp!815822 e!1618284)))

(declare-fun b!2562722 () Bool)

(declare-fun tp!815927 () Bool)

(declare-fun tp!815930 () Bool)

(assert (=> b!2562722 (= e!1618284 (and tp!815927 tp!815930))))

(declare-fun b!2562720 () Bool)

(declare-fun tp!815928 () Bool)

(declare-fun tp!815926 () Bool)

(assert (=> b!2562720 (= e!1618284 (and tp!815928 tp!815926))))

(assert (= (and b!2561892 ((_ is ElementMatch!7619) (regOne!15751 (regTwo!15750 r!27340)))) b!2562719))

(assert (= (and b!2561892 ((_ is Concat!12315) (regOne!15751 (regTwo!15750 r!27340)))) b!2562720))

(assert (= (and b!2561892 ((_ is Star!7619) (regOne!15751 (regTwo!15750 r!27340)))) b!2562721))

(assert (= (and b!2561892 ((_ is Union!7619) (regOne!15751 (regTwo!15750 r!27340)))) b!2562722))

(declare-fun b!2562729 () Bool)

(declare-fun e!1618286 () Bool)

(declare-fun tp!815939 () Bool)

(assert (=> b!2562729 (= e!1618286 tp!815939)))

(declare-fun b!2562727 () Bool)

(assert (=> b!2562727 (= e!1618286 tp_is_empty!13093)))

(assert (=> b!2561892 (= tp!815825 e!1618286)))

(declare-fun b!2562730 () Bool)

(declare-fun tp!815937 () Bool)

(declare-fun tp!815940 () Bool)

(assert (=> b!2562730 (= e!1618286 (and tp!815937 tp!815940))))

(declare-fun b!2562728 () Bool)

(declare-fun tp!815938 () Bool)

(declare-fun tp!815936 () Bool)

(assert (=> b!2562728 (= e!1618286 (and tp!815938 tp!815936))))

(assert (= (and b!2561892 ((_ is ElementMatch!7619) (regTwo!15751 (regTwo!15750 r!27340)))) b!2562727))

(assert (= (and b!2561892 ((_ is Concat!12315) (regTwo!15751 (regTwo!15750 r!27340)))) b!2562728))

(assert (= (and b!2561892 ((_ is Star!7619) (regTwo!15751 (regTwo!15750 r!27340)))) b!2562729))

(assert (= (and b!2561892 ((_ is Union!7619) (regTwo!15751 (regTwo!15750 r!27340)))) b!2562730))

(declare-fun b!2562731 () Bool)

(declare-fun e!1618287 () Bool)

(declare-fun tp!815941 () Bool)

(assert (=> b!2562731 (= e!1618287 (and tp_is_empty!13093 tp!815941))))

(assert (=> b!2561866 (= tp!815795 e!1618287)))

(assert (= (and b!2561866 ((_ is Cons!29584) (t!211383 (t!211383 tl!4068)))) b!2562731))

(declare-fun b!2562734 () Bool)

(declare-fun e!1618288 () Bool)

(declare-fun tp!815945 () Bool)

(assert (=> b!2562734 (= e!1618288 tp!815945)))

(declare-fun b!2562732 () Bool)

(assert (=> b!2562732 (= e!1618288 tp_is_empty!13093)))

(assert (=> b!2561887 (= tp!815819 e!1618288)))

(declare-fun b!2562735 () Bool)

(declare-fun tp!815943 () Bool)

(declare-fun tp!815946 () Bool)

(assert (=> b!2562735 (= e!1618288 (and tp!815943 tp!815946))))

(declare-fun b!2562733 () Bool)

(declare-fun tp!815944 () Bool)

(declare-fun tp!815942 () Bool)

(assert (=> b!2562733 (= e!1618288 (and tp!815944 tp!815942))))

(assert (= (and b!2561887 ((_ is ElementMatch!7619) (reg!7948 (regOne!15750 r!27340)))) b!2562732))

(assert (= (and b!2561887 ((_ is Concat!12315) (reg!7948 (regOne!15750 r!27340)))) b!2562733))

(assert (= (and b!2561887 ((_ is Star!7619) (reg!7948 (regOne!15750 r!27340)))) b!2562734))

(assert (= (and b!2561887 ((_ is Union!7619) (reg!7948 (regOne!15750 r!27340)))) b!2562735))

(declare-fun b!2562742 () Bool)

(declare-fun e!1618290 () Bool)

(declare-fun tp!815955 () Bool)

(assert (=> b!2562742 (= e!1618290 tp!815955)))

(declare-fun b!2562740 () Bool)

(assert (=> b!2562740 (= e!1618290 tp_is_empty!13093)))

(assert (=> b!2561882 (= tp!815813 e!1618290)))

(declare-fun b!2562743 () Bool)

(declare-fun tp!815953 () Bool)

(declare-fun tp!815956 () Bool)

(assert (=> b!2562743 (= e!1618290 (and tp!815953 tp!815956))))

(declare-fun b!2562741 () Bool)

(declare-fun tp!815954 () Bool)

(declare-fun tp!815952 () Bool)

(assert (=> b!2562741 (= e!1618290 (and tp!815954 tp!815952))))

(assert (= (and b!2561882 ((_ is ElementMatch!7619) (regOne!15750 (regTwo!15751 r!27340)))) b!2562740))

(assert (= (and b!2561882 ((_ is Concat!12315) (regOne!15750 (regTwo!15751 r!27340)))) b!2562741))

(assert (= (and b!2561882 ((_ is Star!7619) (regOne!15750 (regTwo!15751 r!27340)))) b!2562742))

(assert (= (and b!2561882 ((_ is Union!7619) (regOne!15750 (regTwo!15751 r!27340)))) b!2562743))

(declare-fun b!2562750 () Bool)

(declare-fun e!1618292 () Bool)

(declare-fun tp!815965 () Bool)

(assert (=> b!2562750 (= e!1618292 tp!815965)))

(declare-fun b!2562748 () Bool)

(assert (=> b!2562748 (= e!1618292 tp_is_empty!13093)))

(assert (=> b!2561882 (= tp!815811 e!1618292)))

(declare-fun b!2562751 () Bool)

(declare-fun tp!815963 () Bool)

(declare-fun tp!815966 () Bool)

(assert (=> b!2562751 (= e!1618292 (and tp!815963 tp!815966))))

(declare-fun b!2562749 () Bool)

(declare-fun tp!815964 () Bool)

(declare-fun tp!815962 () Bool)

(assert (=> b!2562749 (= e!1618292 (and tp!815964 tp!815962))))

(assert (= (and b!2561882 ((_ is ElementMatch!7619) (regTwo!15750 (regTwo!15751 r!27340)))) b!2562748))

(assert (= (and b!2561882 ((_ is Concat!12315) (regTwo!15750 (regTwo!15751 r!27340)))) b!2562749))

(assert (= (and b!2561882 ((_ is Star!7619) (regTwo!15750 (regTwo!15751 r!27340)))) b!2562750))

(assert (= (and b!2561882 ((_ is Union!7619) (regTwo!15750 (regTwo!15751 r!27340)))) b!2562751))

(declare-fun b!2562754 () Bool)

(declare-fun e!1618293 () Bool)

(declare-fun tp!815970 () Bool)

(assert (=> b!2562754 (= e!1618293 tp!815970)))

(declare-fun b!2562752 () Bool)

(assert (=> b!2562752 (= e!1618293 tp_is_empty!13093)))

(assert (=> b!2561896 (= tp!815827 e!1618293)))

(declare-fun b!2562755 () Bool)

(declare-fun tp!815968 () Bool)

(declare-fun tp!815971 () Bool)

(assert (=> b!2562755 (= e!1618293 (and tp!815968 tp!815971))))

(declare-fun b!2562753 () Bool)

(declare-fun tp!815969 () Bool)

(declare-fun tp!815967 () Bool)

(assert (=> b!2562753 (= e!1618293 (and tp!815969 tp!815967))))

(assert (= (and b!2561896 ((_ is ElementMatch!7619) (regOne!15751 (reg!7948 r!27340)))) b!2562752))

(assert (= (and b!2561896 ((_ is Concat!12315) (regOne!15751 (reg!7948 r!27340)))) b!2562753))

(assert (= (and b!2561896 ((_ is Star!7619) (regOne!15751 (reg!7948 r!27340)))) b!2562754))

(assert (= (and b!2561896 ((_ is Union!7619) (regOne!15751 (reg!7948 r!27340)))) b!2562755))

(declare-fun b!2562762 () Bool)

(declare-fun e!1618295 () Bool)

(declare-fun tp!815980 () Bool)

(assert (=> b!2562762 (= e!1618295 tp!815980)))

(declare-fun b!2562760 () Bool)

(assert (=> b!2562760 (= e!1618295 tp_is_empty!13093)))

(assert (=> b!2561896 (= tp!815830 e!1618295)))

(declare-fun b!2562763 () Bool)

(declare-fun tp!815978 () Bool)

(declare-fun tp!815981 () Bool)

(assert (=> b!2562763 (= e!1618295 (and tp!815978 tp!815981))))

(declare-fun b!2562761 () Bool)

(declare-fun tp!815979 () Bool)

(declare-fun tp!815977 () Bool)

(assert (=> b!2562761 (= e!1618295 (and tp!815979 tp!815977))))

(assert (= (and b!2561896 ((_ is ElementMatch!7619) (regTwo!15751 (reg!7948 r!27340)))) b!2562760))

(assert (= (and b!2561896 ((_ is Concat!12315) (regTwo!15751 (reg!7948 r!27340)))) b!2562761))

(assert (= (and b!2561896 ((_ is Star!7619) (regTwo!15751 (reg!7948 r!27340)))) b!2562762))

(assert (= (and b!2561896 ((_ is Union!7619) (regTwo!15751 (reg!7948 r!27340)))) b!2562763))

(declare-fun b!2562766 () Bool)

(declare-fun e!1618296 () Bool)

(declare-fun tp!815985 () Bool)

(assert (=> b!2562766 (= e!1618296 tp!815985)))

(declare-fun b!2562764 () Bool)

(assert (=> b!2562764 (= e!1618296 tp_is_empty!13093)))

(assert (=> b!2561878 (= tp!815808 e!1618296)))

(declare-fun b!2562767 () Bool)

(declare-fun tp!815983 () Bool)

(declare-fun tp!815986 () Bool)

(assert (=> b!2562767 (= e!1618296 (and tp!815983 tp!815986))))

(declare-fun b!2562765 () Bool)

(declare-fun tp!815984 () Bool)

(declare-fun tp!815982 () Bool)

(assert (=> b!2562765 (= e!1618296 (and tp!815984 tp!815982))))

(assert (= (and b!2561878 ((_ is ElementMatch!7619) (regOne!15750 (regOne!15751 r!27340)))) b!2562764))

(assert (= (and b!2561878 ((_ is Concat!12315) (regOne!15750 (regOne!15751 r!27340)))) b!2562765))

(assert (= (and b!2561878 ((_ is Star!7619) (regOne!15750 (regOne!15751 r!27340)))) b!2562766))

(assert (= (and b!2561878 ((_ is Union!7619) (regOne!15750 (regOne!15751 r!27340)))) b!2562767))

(declare-fun b!2562774 () Bool)

(declare-fun e!1618298 () Bool)

(declare-fun tp!815995 () Bool)

(assert (=> b!2562774 (= e!1618298 tp!815995)))

(declare-fun b!2562772 () Bool)

(assert (=> b!2562772 (= e!1618298 tp_is_empty!13093)))

(assert (=> b!2561878 (= tp!815806 e!1618298)))

(declare-fun b!2562775 () Bool)

(declare-fun tp!815993 () Bool)

(declare-fun tp!815996 () Bool)

(assert (=> b!2562775 (= e!1618298 (and tp!815993 tp!815996))))

(declare-fun b!2562773 () Bool)

(declare-fun tp!815994 () Bool)

(declare-fun tp!815992 () Bool)

(assert (=> b!2562773 (= e!1618298 (and tp!815994 tp!815992))))

(assert (= (and b!2561878 ((_ is ElementMatch!7619) (regTwo!15750 (regOne!15751 r!27340)))) b!2562772))

(assert (= (and b!2561878 ((_ is Concat!12315) (regTwo!15750 (regOne!15751 r!27340)))) b!2562773))

(assert (= (and b!2561878 ((_ is Star!7619) (regTwo!15750 (regOne!15751 r!27340)))) b!2562774))

(assert (= (and b!2561878 ((_ is Union!7619) (regTwo!15750 (regOne!15751 r!27340)))) b!2562775))

(declare-fun b!2562778 () Bool)

(declare-fun e!1618299 () Bool)

(declare-fun tp!816000 () Bool)

(assert (=> b!2562778 (= e!1618299 tp!816000)))

(declare-fun b!2562776 () Bool)

(assert (=> b!2562776 (= e!1618299 tp_is_empty!13093)))

(assert (=> b!2561891 (= tp!815824 e!1618299)))

(declare-fun b!2562779 () Bool)

(declare-fun tp!815998 () Bool)

(declare-fun tp!816001 () Bool)

(assert (=> b!2562779 (= e!1618299 (and tp!815998 tp!816001))))

(declare-fun b!2562777 () Bool)

(declare-fun tp!815999 () Bool)

(declare-fun tp!815997 () Bool)

(assert (=> b!2562777 (= e!1618299 (and tp!815999 tp!815997))))

(assert (= (and b!2561891 ((_ is ElementMatch!7619) (reg!7948 (regTwo!15750 r!27340)))) b!2562776))

(assert (= (and b!2561891 ((_ is Concat!12315) (reg!7948 (regTwo!15750 r!27340)))) b!2562777))

(assert (= (and b!2561891 ((_ is Star!7619) (reg!7948 (regTwo!15750 r!27340)))) b!2562778))

(assert (= (and b!2561891 ((_ is Union!7619) (reg!7948 (regTwo!15750 r!27340)))) b!2562779))

(declare-fun b!2562786 () Bool)

(declare-fun e!1618301 () Bool)

(declare-fun tp!816010 () Bool)

(assert (=> b!2562786 (= e!1618301 tp!816010)))

(declare-fun b!2562784 () Bool)

(assert (=> b!2562784 (= e!1618301 tp_is_empty!13093)))

(assert (=> b!2561886 (= tp!815818 e!1618301)))

(declare-fun b!2562787 () Bool)

(declare-fun tp!816008 () Bool)

(declare-fun tp!816011 () Bool)

(assert (=> b!2562787 (= e!1618301 (and tp!816008 tp!816011))))

(declare-fun b!2562785 () Bool)

(declare-fun tp!816009 () Bool)

(declare-fun tp!816007 () Bool)

(assert (=> b!2562785 (= e!1618301 (and tp!816009 tp!816007))))

(assert (= (and b!2561886 ((_ is ElementMatch!7619) (regOne!15750 (regOne!15750 r!27340)))) b!2562784))

(assert (= (and b!2561886 ((_ is Concat!12315) (regOne!15750 (regOne!15750 r!27340)))) b!2562785))

(assert (= (and b!2561886 ((_ is Star!7619) (regOne!15750 (regOne!15750 r!27340)))) b!2562786))

(assert (= (and b!2561886 ((_ is Union!7619) (regOne!15750 (regOne!15750 r!27340)))) b!2562787))

(declare-fun b!2562790 () Bool)

(declare-fun e!1618302 () Bool)

(declare-fun tp!816015 () Bool)

(assert (=> b!2562790 (= e!1618302 tp!816015)))

(declare-fun b!2562788 () Bool)

(assert (=> b!2562788 (= e!1618302 tp_is_empty!13093)))

(assert (=> b!2561886 (= tp!815816 e!1618302)))

(declare-fun b!2562791 () Bool)

(declare-fun tp!816013 () Bool)

(declare-fun tp!816016 () Bool)

(assert (=> b!2562791 (= e!1618302 (and tp!816013 tp!816016))))

(declare-fun b!2562789 () Bool)

(declare-fun tp!816014 () Bool)

(declare-fun tp!816012 () Bool)

(assert (=> b!2562789 (= e!1618302 (and tp!816014 tp!816012))))

(assert (= (and b!2561886 ((_ is ElementMatch!7619) (regTwo!15750 (regOne!15750 r!27340)))) b!2562788))

(assert (= (and b!2561886 ((_ is Concat!12315) (regTwo!15750 (regOne!15750 r!27340)))) b!2562789))

(assert (= (and b!2561886 ((_ is Star!7619) (regTwo!15750 (regOne!15750 r!27340)))) b!2562790))

(assert (= (and b!2561886 ((_ is Union!7619) (regTwo!15750 (regOne!15750 r!27340)))) b!2562791))

(declare-fun b!2562798 () Bool)

(declare-fun e!1618304 () Bool)

(declare-fun tp!816025 () Bool)

(assert (=> b!2562798 (= e!1618304 tp!816025)))

(declare-fun b!2562796 () Bool)

(assert (=> b!2562796 (= e!1618304 tp_is_empty!13093)))

(assert (=> b!2561895 (= tp!815829 e!1618304)))

(declare-fun b!2562799 () Bool)

(declare-fun tp!816023 () Bool)

(declare-fun tp!816026 () Bool)

(assert (=> b!2562799 (= e!1618304 (and tp!816023 tp!816026))))

(declare-fun b!2562797 () Bool)

(declare-fun tp!816024 () Bool)

(declare-fun tp!816022 () Bool)

(assert (=> b!2562797 (= e!1618304 (and tp!816024 tp!816022))))

(assert (= (and b!2561895 ((_ is ElementMatch!7619) (reg!7948 (reg!7948 r!27340)))) b!2562796))

(assert (= (and b!2561895 ((_ is Concat!12315) (reg!7948 (reg!7948 r!27340)))) b!2562797))

(assert (= (and b!2561895 ((_ is Star!7619) (reg!7948 (reg!7948 r!27340)))) b!2562798))

(assert (= (and b!2561895 ((_ is Union!7619) (reg!7948 (reg!7948 r!27340)))) b!2562799))

(declare-fun b!2562802 () Bool)

(declare-fun e!1618305 () Bool)

(declare-fun tp!816030 () Bool)

(assert (=> b!2562802 (= e!1618305 tp!816030)))

(declare-fun b!2562800 () Bool)

(assert (=> b!2562800 (= e!1618305 tp_is_empty!13093)))

(assert (=> b!2561890 (= tp!815823 e!1618305)))

(declare-fun b!2562803 () Bool)

(declare-fun tp!816028 () Bool)

(declare-fun tp!816031 () Bool)

(assert (=> b!2562803 (= e!1618305 (and tp!816028 tp!816031))))

(declare-fun b!2562801 () Bool)

(declare-fun tp!816029 () Bool)

(declare-fun tp!816027 () Bool)

(assert (=> b!2562801 (= e!1618305 (and tp!816029 tp!816027))))

(assert (= (and b!2561890 ((_ is ElementMatch!7619) (regOne!15750 (regTwo!15750 r!27340)))) b!2562800))

(assert (= (and b!2561890 ((_ is Concat!12315) (regOne!15750 (regTwo!15750 r!27340)))) b!2562801))

(assert (= (and b!2561890 ((_ is Star!7619) (regOne!15750 (regTwo!15750 r!27340)))) b!2562802))

(assert (= (and b!2561890 ((_ is Union!7619) (regOne!15750 (regTwo!15750 r!27340)))) b!2562803))

(declare-fun b!2562810 () Bool)

(declare-fun e!1618307 () Bool)

(declare-fun tp!816040 () Bool)

(assert (=> b!2562810 (= e!1618307 tp!816040)))

(declare-fun b!2562808 () Bool)

(assert (=> b!2562808 (= e!1618307 tp_is_empty!13093)))

(assert (=> b!2561890 (= tp!815821 e!1618307)))

(declare-fun b!2562811 () Bool)

(declare-fun tp!816038 () Bool)

(declare-fun tp!816041 () Bool)

(assert (=> b!2562811 (= e!1618307 (and tp!816038 tp!816041))))

(declare-fun b!2562809 () Bool)

(declare-fun tp!816039 () Bool)

(declare-fun tp!816037 () Bool)

(assert (=> b!2562809 (= e!1618307 (and tp!816039 tp!816037))))

(assert (= (and b!2561890 ((_ is ElementMatch!7619) (regTwo!15750 (regTwo!15750 r!27340)))) b!2562808))

(assert (= (and b!2561890 ((_ is Concat!12315) (regTwo!15750 (regTwo!15750 r!27340)))) b!2562809))

(assert (= (and b!2561890 ((_ is Star!7619) (regTwo!15750 (regTwo!15750 r!27340)))) b!2562810))

(assert (= (and b!2561890 ((_ is Union!7619) (regTwo!15750 (regTwo!15750 r!27340)))) b!2562811))

(declare-fun b!2562814 () Bool)

(declare-fun e!1618308 () Bool)

(declare-fun tp!816045 () Bool)

(assert (=> b!2562814 (= e!1618308 tp!816045)))

(declare-fun b!2562812 () Bool)

(assert (=> b!2562812 (= e!1618308 tp_is_empty!13093)))

(assert (=> b!2561894 (= tp!815828 e!1618308)))

(declare-fun b!2562815 () Bool)

(declare-fun tp!816043 () Bool)

(declare-fun tp!816046 () Bool)

(assert (=> b!2562815 (= e!1618308 (and tp!816043 tp!816046))))

(declare-fun b!2562813 () Bool)

(declare-fun tp!816044 () Bool)

(declare-fun tp!816042 () Bool)

(assert (=> b!2562813 (= e!1618308 (and tp!816044 tp!816042))))

(assert (= (and b!2561894 ((_ is ElementMatch!7619) (regOne!15750 (reg!7948 r!27340)))) b!2562812))

(assert (= (and b!2561894 ((_ is Concat!12315) (regOne!15750 (reg!7948 r!27340)))) b!2562813))

(assert (= (and b!2561894 ((_ is Star!7619) (regOne!15750 (reg!7948 r!27340)))) b!2562814))

(assert (= (and b!2561894 ((_ is Union!7619) (regOne!15750 (reg!7948 r!27340)))) b!2562815))

(declare-fun b!2562822 () Bool)

(declare-fun e!1618310 () Bool)

(declare-fun tp!816055 () Bool)

(assert (=> b!2562822 (= e!1618310 tp!816055)))

(declare-fun b!2562820 () Bool)

(assert (=> b!2562820 (= e!1618310 tp_is_empty!13093)))

(assert (=> b!2561894 (= tp!815826 e!1618310)))

(declare-fun b!2562823 () Bool)

(declare-fun tp!816053 () Bool)

(declare-fun tp!816056 () Bool)

(assert (=> b!2562823 (= e!1618310 (and tp!816053 tp!816056))))

(declare-fun b!2562821 () Bool)

(declare-fun tp!816054 () Bool)

(declare-fun tp!816052 () Bool)

(assert (=> b!2562821 (= e!1618310 (and tp!816054 tp!816052))))

(assert (= (and b!2561894 ((_ is ElementMatch!7619) (regTwo!15750 (reg!7948 r!27340)))) b!2562820))

(assert (= (and b!2561894 ((_ is Concat!12315) (regTwo!15750 (reg!7948 r!27340)))) b!2562821))

(assert (= (and b!2561894 ((_ is Star!7619) (regTwo!15750 (reg!7948 r!27340)))) b!2562822))

(assert (= (and b!2561894 ((_ is Union!7619) (regTwo!15750 (reg!7948 r!27340)))) b!2562823))

(check-sat (not b!2562188) (not bm!164219) (not b!2562731) (not b!2562430) (not b!2562678) (not b!2562670) (not d!725795) (not b!2562813) (not b!2562270) (not b!2562688) (not bm!164338) (not b!2562344) (not d!725741) (not b!2562713) (not b!2562773) (not b!2562802) (not d!725765) (not d!725711) (not bm!164277) (not b!2562669) (not b!2562648) (not b!2562712) (not b!2562026) (not b!2562686) (not d!725849) (not b!2562767) (not bm!164225) (not bm!164196) (not bm!164364) (not bm!164314) (not b!2562185) (not b!2562753) (not b!2562211) (not bm!164294) (not b!2562743) (not bm!164407) (not bm!164249) (not b!2562778) (not b!2562755) (not bm!164380) (not b!2562027) (not d!725843) (not b!2562602) (not b!2562803) (not b!2562668) (not bm!164308) (not bm!164306) (not b!2562470) (not b!2562501) (not b!2562815) (not bm!164302) (not b!2562320) (not b!2562722) (not bm!164192) (not b!2562685) (not bm!164383) (not b!2562243) (not bm!164275) (not d!725781) (not bm!164386) (not b!2561923) (not b!2562708) (not bm!164359) (not d!725857) (not b!2562145) (not bm!164229) (not b!2562809) (not b!2562398) (not b!2562261) (not b!2562721) (not b!2562821) (not b!2562228) (not bm!164360) (not d!725699) (not b!2562810) (not bm!164254) (not b!2562774) (not b!2562338) (not bm!164332) (not b!2562558) (not d!725665) (not bm!164346) (not b!2562386) (not bm!164398) (not bm!164278) (not b!2562690) (not b!2562031) (not d!725663) (not bm!164384) (not bm!164268) (not d!725719) (not b!2562787) (not bm!164300) (not b!2562801) tp_is_empty!13093 (not d!725721) (not b!2562730) (not b!2562811) (not d!725853) (not d!725735) (not b!2562728) (not b!2562762) (not b!2562709) (not b!2562741) (not b!2562120) (not bm!164371) (not b!2562822) (not b!2561958) (not bm!164197) (not b!2562391) (not bm!164256) (not b!2562729) (not bm!164402) (not b!2562396) (not b!2562696) (not b!2562791) (not d!725799) (not bm!164299) (not b!2562531) (not b!2561986) (not bm!164288) (not bm!164362) (not b!2562701) (not bm!164381) (not bm!164345) (not b!2562367) (not b!2562702) (not b!2562735) (not b!2562700) (not bm!164377) (not bm!164208) (not d!725625) (not b!2562634) (not b!2562797) (not b!2562697) (not d!725845) (not b!2562689) (not b!2562611) (not d!725759) (not b!2562698) (not bm!164411) (not bm!164396) (not d!725803) (not bm!164248) (not b!2562158) (not b!2562676) (not bm!164322) (not b!2562033) (not b!2562761) (not b!2562786) (not b!2562775) (not b!2562766) (not b!2562395) (not bm!164340) (not b!2562765) (not d!725813) (not d!725785) (not b!2562714) (not d!725801) (not bm!164353) (not b!2562684) (not b!2562789) (not bm!164293) (not bm!164409) (not b!2562485) (not b!2562350) (not b!2562588) (not d!725835) (not b!2562754) (not b!2562750) (not b!2562571) (not d!725621) (not b!2562823) (not bm!164303) (not b!2562392) (not b!2562785) (not b!2562540) (not b!2562799) (not d!725771) (not b!2562030) (not b!2562415) (not b!2562004) (not b!2562347) (not d!725859) (not bm!164265) (not bm!164317) (not bm!164270) (not b!2562549) (not bm!164378) (not b!2562742) (not b!2562607) (not b!2562814) (not b!2562720) (not b!2562608) (not bm!164351) (not bm!164209) (not b!2562612) (not b!2562021) (not bm!164370) (not b!2562348) (not b!2562710) (not b!2562343) (not bm!164328) (not bm!164330) (not b!2562677) (not bm!164313) (not bm!164412) (not d!725797) (not b!2562777) (not b!2562733) (not b!2562522) (not b!2562749) (not b!2562779) (not b!2562798) (not d!725777) (not bm!164266) (not bm!164286) (not bm!164194) (not b!2562452) (not bm!164388) (not b!2562790) (not d!725837) (not b!2562297) (not b!2561917) (not bm!164316) (not bm!164276) (not b!2562763) (not bm!164218) (not b!2562734) (not bm!164224) (not b!2562614) (not b!2562751))
(check-sat)
