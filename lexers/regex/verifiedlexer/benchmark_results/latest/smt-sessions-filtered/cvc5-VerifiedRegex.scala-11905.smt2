; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667540 () Bool)

(assert start!667540)

(declare-fun b!6956345 () Bool)

(assert (=> b!6956345 true))

(assert (=> b!6956345 true))

(declare-fun b!6956342 () Bool)

(declare-fun e!4182997 () Bool)

(declare-fun tp_is_empty!43337 () Bool)

(assert (=> b!6956342 (= e!4182997 tp_is_empty!43337)))

(declare-fun b!6956343 () Bool)

(declare-fun tp!1917686 () Bool)

(declare-fun tp!1917687 () Bool)

(assert (=> b!6956343 (= e!4182997 (and tp!1917686 tp!1917687))))

(declare-fun b!6956344 () Bool)

(declare-fun e!4183000 () Bool)

(declare-fun tp!1917685 () Bool)

(assert (=> b!6956344 (= e!4183000 (and tp_is_empty!43337 tp!1917685))))

(declare-fun res!2838413 () Bool)

(declare-fun e!4182999 () Bool)

(assert (=> b!6956345 (=> (not res!2838413) (not e!4182999))))

(declare-fun lambda!396825 () Int)

(declare-fun Exists!4052 (Int) Bool)

(assert (=> b!6956345 (= res!2838413 (Exists!4052 lambda!396825))))

(declare-fun b!6956346 () Bool)

(declare-fun res!2838416 () Bool)

(assert (=> b!6956346 (=> (not res!2838416) (not e!4182999))))

(declare-datatypes ((C!34382 0))(
  ( (C!34383 (val!26893 Int)) )
))
(declare-datatypes ((Regex!17056 0))(
  ( (ElementMatch!17056 (c!1290018 C!34382)) (Concat!25901 (regOne!34624 Regex!17056) (regTwo!34624 Regex!17056)) (EmptyExpr!17056) (Star!17056 (reg!17385 Regex!17056)) (EmptyLang!17056) (Union!17056 (regOne!34625 Regex!17056) (regTwo!34625 Regex!17056)) )
))
(declare-fun rInner!765 () Regex!17056)

(declare-fun nullable!6869 (Regex!17056) Bool)

(assert (=> b!6956346 (= res!2838416 (not (nullable!6869 rInner!765)))))

(declare-fun b!6956347 () Bool)

(declare-fun e!4182998 () Bool)

(assert (=> b!6956347 (= e!4182999 e!4182998)))

(declare-fun res!2838415 () Bool)

(assert (=> b!6956347 (=> (not res!2838415) (not e!4182998))))

(declare-datatypes ((List!66809 0))(
  ( (Nil!66685) (Cons!66685 (h!73133 C!34382) (t!380552 List!66809)) )
))
(declare-datatypes ((tuple2!67814 0))(
  ( (tuple2!67815 (_1!37210 List!66809) (_2!37210 List!66809)) )
))
(declare-fun lt!2478510 () tuple2!67814)

(declare-fun s!10388 () List!66809)

(declare-fun ++!15085 (List!66809 List!66809) List!66809)

(assert (=> b!6956347 (= res!2838415 (= (++!15085 (_1!37210 lt!2478510) (_2!37210 lt!2478510)) s!10388))))

(declare-fun pickWitness!379 (Int) tuple2!67814)

(assert (=> b!6956347 (= lt!2478510 (pickWitness!379 lambda!396825))))

(declare-fun b!6956348 () Bool)

(declare-fun tp!1917683 () Bool)

(declare-fun tp!1917684 () Bool)

(assert (=> b!6956348 (= e!4182997 (and tp!1917683 tp!1917684))))

(declare-fun res!2838414 () Bool)

(assert (=> start!667540 (=> (not res!2838414) (not e!4182999))))

(declare-fun validRegex!8762 (Regex!17056) Bool)

(assert (=> start!667540 (= res!2838414 (validRegex!8762 rInner!765))))

(assert (=> start!667540 e!4182999))

(assert (=> start!667540 e!4182997))

(assert (=> start!667540 e!4183000))

(declare-fun b!6956349 () Bool)

(declare-fun tp!1917682 () Bool)

(assert (=> b!6956349 (= e!4182997 tp!1917682)))

(declare-fun b!6956350 () Bool)

(assert (=> b!6956350 (= e!4182998 (not (validRegex!8762 (Star!17056 rInner!765))))))

(declare-fun matchR!9166 (Regex!17056 List!66809) Bool)

(declare-fun matchRSpec!4081 (Regex!17056 List!66809) Bool)

(assert (=> b!6956350 (= (matchR!9166 rInner!765 (_1!37210 lt!2478510)) (matchRSpec!4081 rInner!765 (_1!37210 lt!2478510)))))

(declare-datatypes ((Unit!160780 0))(
  ( (Unit!160781) )
))
(declare-fun lt!2478511 () Unit!160780)

(declare-fun mainMatchTheorem!4075 (Regex!17056 List!66809) Unit!160780)

(assert (=> b!6956350 (= lt!2478511 (mainMatchTheorem!4075 rInner!765 (_1!37210 lt!2478510)))))

(assert (= (and start!667540 res!2838414) b!6956346))

(assert (= (and b!6956346 res!2838416) b!6956345))

(assert (= (and b!6956345 res!2838413) b!6956347))

(assert (= (and b!6956347 res!2838415) b!6956350))

(assert (= (and start!667540 (is-ElementMatch!17056 rInner!765)) b!6956342))

(assert (= (and start!667540 (is-Concat!25901 rInner!765)) b!6956343))

(assert (= (and start!667540 (is-Star!17056 rInner!765)) b!6956349))

(assert (= (and start!667540 (is-Union!17056 rInner!765)) b!6956348))

(assert (= (and start!667540 (is-Cons!66685 s!10388)) b!6956344))

(declare-fun m!7654452 () Bool)

(assert (=> b!6956347 m!7654452))

(declare-fun m!7654454 () Bool)

(assert (=> b!6956347 m!7654454))

(declare-fun m!7654456 () Bool)

(assert (=> b!6956350 m!7654456))

(declare-fun m!7654458 () Bool)

(assert (=> b!6956350 m!7654458))

(declare-fun m!7654460 () Bool)

(assert (=> b!6956350 m!7654460))

(declare-fun m!7654462 () Bool)

(assert (=> b!6956350 m!7654462))

(declare-fun m!7654464 () Bool)

(assert (=> b!6956345 m!7654464))

(declare-fun m!7654466 () Bool)

(assert (=> b!6956346 m!7654466))

(declare-fun m!7654468 () Bool)

(assert (=> start!667540 m!7654468))

(push 1)

(assert (not b!6956346))

(assert (not start!667540))

(assert (not b!6956344))

(assert (not b!6956345))

(assert (not b!6956348))

(assert (not b!6956350))

(assert (not b!6956349))

(assert (not b!6956343))

(assert (not b!6956347))

(assert tp_is_empty!43337)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6956412 () Bool)

(declare-fun e!4183035 () Bool)

(declare-fun e!4183036 () Bool)

(assert (=> b!6956412 (= e!4183035 e!4183036)))

(declare-fun c!1290024 () Bool)

(assert (=> b!6956412 (= c!1290024 (is-Star!17056 (Star!17056 rInner!765)))))

(declare-fun bm!631725 () Bool)

(declare-fun call!631730 () Bool)

(declare-fun c!1290025 () Bool)

(assert (=> bm!631725 (= call!631730 (validRegex!8762 (ite c!1290025 (regOne!34625 (Star!17056 rInner!765)) (regTwo!34624 (Star!17056 rInner!765)))))))

(declare-fun b!6956414 () Bool)

(declare-fun e!4183034 () Bool)

(declare-fun e!4183033 () Bool)

(assert (=> b!6956414 (= e!4183034 e!4183033)))

(declare-fun res!2838448 () Bool)

(assert (=> b!6956414 (=> (not res!2838448) (not e!4183033))))

(declare-fun call!631731 () Bool)

(assert (=> b!6956414 (= res!2838448 call!631731)))

(declare-fun b!6956415 () Bool)

(declare-fun res!2838449 () Bool)

(assert (=> b!6956415 (=> res!2838449 e!4183034)))

(assert (=> b!6956415 (= res!2838449 (not (is-Concat!25901 (Star!17056 rInner!765))))))

(declare-fun e!4183032 () Bool)

(assert (=> b!6956415 (= e!4183032 e!4183034)))

(declare-fun b!6956416 () Bool)

(declare-fun e!4183031 () Bool)

(assert (=> b!6956416 (= e!4183031 call!631731)))

(declare-fun b!6956417 () Bool)

(assert (=> b!6956417 (= e!4183036 e!4183032)))

(assert (=> b!6956417 (= c!1290025 (is-Union!17056 (Star!17056 rInner!765)))))

(declare-fun b!6956418 () Bool)

(declare-fun e!4183037 () Bool)

(assert (=> b!6956418 (= e!4183036 e!4183037)))

(declare-fun res!2838451 () Bool)

(assert (=> b!6956418 (= res!2838451 (not (nullable!6869 (reg!17385 (Star!17056 rInner!765)))))))

(assert (=> b!6956418 (=> (not res!2838451) (not e!4183037))))

(declare-fun b!6956419 () Bool)

(declare-fun res!2838450 () Bool)

(assert (=> b!6956419 (=> (not res!2838450) (not e!4183031))))

(assert (=> b!6956419 (= res!2838450 call!631730)))

(assert (=> b!6956419 (= e!4183032 e!4183031)))

(declare-fun bm!631726 () Bool)

(declare-fun call!631732 () Bool)

(assert (=> bm!631726 (= call!631731 call!631732)))

(declare-fun b!6956413 () Bool)

(assert (=> b!6956413 (= e!4183033 call!631730)))

(declare-fun d!2169596 () Bool)

(declare-fun res!2838447 () Bool)

(assert (=> d!2169596 (=> res!2838447 e!4183035)))

(assert (=> d!2169596 (= res!2838447 (is-ElementMatch!17056 (Star!17056 rInner!765)))))

(assert (=> d!2169596 (= (validRegex!8762 (Star!17056 rInner!765)) e!4183035)))

(declare-fun b!6956420 () Bool)

(assert (=> b!6956420 (= e!4183037 call!631732)))

(declare-fun bm!631727 () Bool)

(assert (=> bm!631727 (= call!631732 (validRegex!8762 (ite c!1290024 (reg!17385 (Star!17056 rInner!765)) (ite c!1290025 (regTwo!34625 (Star!17056 rInner!765)) (regOne!34624 (Star!17056 rInner!765))))))))

(assert (= (and d!2169596 (not res!2838447)) b!6956412))

(assert (= (and b!6956412 c!1290024) b!6956418))

(assert (= (and b!6956412 (not c!1290024)) b!6956417))

(assert (= (and b!6956418 res!2838451) b!6956420))

(assert (= (and b!6956417 c!1290025) b!6956419))

(assert (= (and b!6956417 (not c!1290025)) b!6956415))

(assert (= (and b!6956419 res!2838450) b!6956416))

(assert (= (and b!6956415 (not res!2838449)) b!6956414))

(assert (= (and b!6956414 res!2838448) b!6956413))

(assert (= (or b!6956419 b!6956413) bm!631725))

(assert (= (or b!6956416 b!6956414) bm!631726))

(assert (= (or b!6956420 bm!631726) bm!631727))

(declare-fun m!7654488 () Bool)

(assert (=> bm!631725 m!7654488))

(declare-fun m!7654490 () Bool)

(assert (=> b!6956418 m!7654490))

(declare-fun m!7654492 () Bool)

(assert (=> bm!631727 m!7654492))

(assert (=> b!6956350 d!2169596))

(declare-fun b!6956461 () Bool)

(declare-fun res!2838477 () Bool)

(declare-fun e!4183064 () Bool)

(assert (=> b!6956461 (=> res!2838477 e!4183064)))

(declare-fun isEmpty!38921 (List!66809) Bool)

(declare-fun tail!13002 (List!66809) List!66809)

(assert (=> b!6956461 (= res!2838477 (not (isEmpty!38921 (tail!13002 (_1!37210 lt!2478510)))))))

(declare-fun b!6956462 () Bool)

(declare-fun res!2838475 () Bool)

(declare-fun e!4183059 () Bool)

(assert (=> b!6956462 (=> (not res!2838475) (not e!4183059))))

(declare-fun call!631735 () Bool)

(assert (=> b!6956462 (= res!2838475 (not call!631735))))

(declare-fun b!6956463 () Bool)

(declare-fun e!4183058 () Bool)

(assert (=> b!6956463 (= e!4183058 e!4183064)))

(declare-fun res!2838480 () Bool)

(assert (=> b!6956463 (=> res!2838480 e!4183064)))

(assert (=> b!6956463 (= res!2838480 call!631735)))

(declare-fun d!2169600 () Bool)

(declare-fun e!4183061 () Bool)

(assert (=> d!2169600 e!4183061))

(declare-fun c!1290036 () Bool)

(assert (=> d!2169600 (= c!1290036 (is-EmptyExpr!17056 rInner!765))))

(declare-fun lt!2478523 () Bool)

(declare-fun e!4183062 () Bool)

(assert (=> d!2169600 (= lt!2478523 e!4183062)))

(declare-fun c!1290035 () Bool)

(assert (=> d!2169600 (= c!1290035 (isEmpty!38921 (_1!37210 lt!2478510)))))

(assert (=> d!2169600 (validRegex!8762 rInner!765)))

(assert (=> d!2169600 (= (matchR!9166 rInner!765 (_1!37210 lt!2478510)) lt!2478523)))

(declare-fun b!6956464 () Bool)

(declare-fun res!2838478 () Bool)

(declare-fun e!4183060 () Bool)

(assert (=> b!6956464 (=> res!2838478 e!4183060)))

(assert (=> b!6956464 (= res!2838478 (not (is-ElementMatch!17056 rInner!765)))))

(declare-fun e!4183063 () Bool)

(assert (=> b!6956464 (= e!4183063 e!4183060)))

(declare-fun b!6956465 () Bool)

(declare-fun head!13950 (List!66809) C!34382)

(assert (=> b!6956465 (= e!4183059 (= (head!13950 (_1!37210 lt!2478510)) (c!1290018 rInner!765)))))

(declare-fun b!6956466 () Bool)

(assert (=> b!6956466 (= e!4183063 (not lt!2478523))))

(declare-fun b!6956467 () Bool)

(declare-fun res!2838481 () Bool)

(assert (=> b!6956467 (=> (not res!2838481) (not e!4183059))))

(assert (=> b!6956467 (= res!2838481 (isEmpty!38921 (tail!13002 (_1!37210 lt!2478510))))))

(declare-fun b!6956468 () Bool)

(declare-fun res!2838474 () Bool)

(assert (=> b!6956468 (=> res!2838474 e!4183060)))

(assert (=> b!6956468 (= res!2838474 e!4183059)))

(declare-fun res!2838479 () Bool)

(assert (=> b!6956468 (=> (not res!2838479) (not e!4183059))))

(assert (=> b!6956468 (= res!2838479 lt!2478523)))

(declare-fun b!6956469 () Bool)

(assert (=> b!6956469 (= e!4183064 (not (= (head!13950 (_1!37210 lt!2478510)) (c!1290018 rInner!765))))))

(declare-fun bm!631730 () Bool)

(assert (=> bm!631730 (= call!631735 (isEmpty!38921 (_1!37210 lt!2478510)))))

(declare-fun b!6956470 () Bool)

(assert (=> b!6956470 (= e!4183061 (= lt!2478523 call!631735))))

(declare-fun b!6956471 () Bool)

(assert (=> b!6956471 (= e!4183062 (nullable!6869 rInner!765))))

(declare-fun b!6956472 () Bool)

(assert (=> b!6956472 (= e!4183061 e!4183063)))

(declare-fun c!1290037 () Bool)

(assert (=> b!6956472 (= c!1290037 (is-EmptyLang!17056 rInner!765))))

(declare-fun b!6956473 () Bool)

(declare-fun derivativeStep!5497 (Regex!17056 C!34382) Regex!17056)

(assert (=> b!6956473 (= e!4183062 (matchR!9166 (derivativeStep!5497 rInner!765 (head!13950 (_1!37210 lt!2478510))) (tail!13002 (_1!37210 lt!2478510))))))

(declare-fun b!6956474 () Bool)

(assert (=> b!6956474 (= e!4183060 e!4183058)))

(declare-fun res!2838476 () Bool)

(assert (=> b!6956474 (=> (not res!2838476) (not e!4183058))))

(assert (=> b!6956474 (= res!2838476 (not lt!2478523))))

(assert (= (and d!2169600 c!1290035) b!6956471))

(assert (= (and d!2169600 (not c!1290035)) b!6956473))

(assert (= (and d!2169600 c!1290036) b!6956470))

(assert (= (and d!2169600 (not c!1290036)) b!6956472))

(assert (= (and b!6956472 c!1290037) b!6956466))

(assert (= (and b!6956472 (not c!1290037)) b!6956464))

(assert (= (and b!6956464 (not res!2838478)) b!6956468))

(assert (= (and b!6956468 res!2838479) b!6956462))

(assert (= (and b!6956462 res!2838475) b!6956467))

(assert (= (and b!6956467 res!2838481) b!6956465))

(assert (= (and b!6956468 (not res!2838474)) b!6956474))

(assert (= (and b!6956474 res!2838476) b!6956463))

(assert (= (and b!6956463 (not res!2838480)) b!6956461))

(assert (= (and b!6956461 (not res!2838477)) b!6956469))

(assert (= (or b!6956470 b!6956462 b!6956463) bm!631730))

(declare-fun m!7654508 () Bool)

(assert (=> b!6956461 m!7654508))

(assert (=> b!6956461 m!7654508))

(declare-fun m!7654510 () Bool)

(assert (=> b!6956461 m!7654510))

(declare-fun m!7654512 () Bool)

(assert (=> b!6956469 m!7654512))

(assert (=> b!6956471 m!7654466))

(assert (=> b!6956473 m!7654512))

(assert (=> b!6956473 m!7654512))

(declare-fun m!7654514 () Bool)

(assert (=> b!6956473 m!7654514))

(assert (=> b!6956473 m!7654508))

(assert (=> b!6956473 m!7654514))

(assert (=> b!6956473 m!7654508))

(declare-fun m!7654516 () Bool)

(assert (=> b!6956473 m!7654516))

(assert (=> b!6956467 m!7654508))

(assert (=> b!6956467 m!7654508))

(assert (=> b!6956467 m!7654510))

(declare-fun m!7654518 () Bool)

(assert (=> bm!631730 m!7654518))

(assert (=> b!6956465 m!7654512))

(assert (=> d!2169600 m!7654518))

(assert (=> d!2169600 m!7654468))

(assert (=> b!6956350 d!2169600))

(declare-fun bs!1858081 () Bool)

(declare-fun b!6956530 () Bool)

(assert (= bs!1858081 (and b!6956530 b!6956345)))

(declare-fun lambda!396835 () Int)

(assert (=> bs!1858081 (not (= lambda!396835 lambda!396825))))

(assert (=> b!6956530 true))

(assert (=> b!6956530 true))

(declare-fun bs!1858082 () Bool)

(declare-fun b!6956534 () Bool)

(assert (= bs!1858082 (and b!6956534 b!6956345)))

(declare-fun lambda!396836 () Int)

(assert (=> bs!1858082 (not (= lambda!396836 lambda!396825))))

(declare-fun bs!1858083 () Bool)

(assert (= bs!1858083 (and b!6956534 b!6956530)))

(assert (=> bs!1858083 (not (= lambda!396836 lambda!396835))))

(assert (=> b!6956534 true))

(assert (=> b!6956534 true))

(declare-fun bm!631741 () Bool)

(declare-fun call!631746 () Bool)

(assert (=> bm!631741 (= call!631746 (isEmpty!38921 (_1!37210 lt!2478510)))))

(declare-fun b!6956525 () Bool)

(declare-fun c!1290050 () Bool)

(assert (=> b!6956525 (= c!1290050 (is-Union!17056 rInner!765))))

(declare-fun e!4183102 () Bool)

(declare-fun e!4183101 () Bool)

(assert (=> b!6956525 (= e!4183102 e!4183101)))

(declare-fun b!6956526 () Bool)

(declare-fun e!4183103 () Bool)

(assert (=> b!6956526 (= e!4183103 call!631746)))

(declare-fun b!6956527 () Bool)

(declare-fun res!2838508 () Bool)

(declare-fun e!4183099 () Bool)

(assert (=> b!6956527 (=> res!2838508 e!4183099)))

(assert (=> b!6956527 (= res!2838508 call!631746)))

(declare-fun e!4183097 () Bool)

(assert (=> b!6956527 (= e!4183097 e!4183099)))

(declare-fun b!6956528 () Bool)

(declare-fun e!4183100 () Bool)

(assert (=> b!6956528 (= e!4183100 (matchRSpec!4081 (regTwo!34625 rInner!765) (_1!37210 lt!2478510)))))

(declare-fun b!6956529 () Bool)

(declare-fun e!4183098 () Bool)

(assert (=> b!6956529 (= e!4183103 e!4183098)))

(declare-fun res!2838510 () Bool)

(assert (=> b!6956529 (= res!2838510 (not (is-EmptyLang!17056 rInner!765)))))

(assert (=> b!6956529 (=> (not res!2838510) (not e!4183098))))

(declare-fun call!631747 () Bool)

(assert (=> b!6956530 (= e!4183099 call!631747)))

(declare-fun b!6956531 () Bool)

(assert (=> b!6956531 (= e!4183101 e!4183097)))

(declare-fun c!1290053 () Bool)

(assert (=> b!6956531 (= c!1290053 (is-Star!17056 rInner!765))))

(declare-fun bm!631742 () Bool)

(assert (=> bm!631742 (= call!631747 (Exists!4052 (ite c!1290053 lambda!396835 lambda!396836)))))

(declare-fun b!6956533 () Bool)

(assert (=> b!6956533 (= e!4183102 (= (_1!37210 lt!2478510) (Cons!66685 (c!1290018 rInner!765) Nil!66685)))))

(assert (=> b!6956534 (= e!4183097 call!631747)))

(declare-fun b!6956535 () Bool)

(declare-fun c!1290051 () Bool)

(assert (=> b!6956535 (= c!1290051 (is-ElementMatch!17056 rInner!765))))

(assert (=> b!6956535 (= e!4183098 e!4183102)))

(declare-fun d!2169604 () Bool)

(declare-fun c!1290052 () Bool)

(assert (=> d!2169604 (= c!1290052 (is-EmptyExpr!17056 rInner!765))))

(assert (=> d!2169604 (= (matchRSpec!4081 rInner!765 (_1!37210 lt!2478510)) e!4183103)))

(declare-fun b!6956532 () Bool)

(assert (=> b!6956532 (= e!4183101 e!4183100)))

(declare-fun res!2838509 () Bool)

(assert (=> b!6956532 (= res!2838509 (matchRSpec!4081 (regOne!34625 rInner!765) (_1!37210 lt!2478510)))))

(assert (=> b!6956532 (=> res!2838509 e!4183100)))

(assert (= (and d!2169604 c!1290052) b!6956526))

(assert (= (and d!2169604 (not c!1290052)) b!6956529))

(assert (= (and b!6956529 res!2838510) b!6956535))

(assert (= (and b!6956535 c!1290051) b!6956533))

(assert (= (and b!6956535 (not c!1290051)) b!6956525))

(assert (= (and b!6956525 c!1290050) b!6956532))

(assert (= (and b!6956525 (not c!1290050)) b!6956531))

(assert (= (and b!6956532 (not res!2838509)) b!6956528))

(assert (= (and b!6956531 c!1290053) b!6956527))

(assert (= (and b!6956531 (not c!1290053)) b!6956534))

(assert (= (and b!6956527 (not res!2838508)) b!6956530))

(assert (= (or b!6956530 b!6956534) bm!631742))

(assert (= (or b!6956526 b!6956527) bm!631741))

(assert (=> bm!631741 m!7654518))

(declare-fun m!7654528 () Bool)

(assert (=> b!6956528 m!7654528))

(declare-fun m!7654530 () Bool)

(assert (=> bm!631742 m!7654530))

(declare-fun m!7654532 () Bool)

(assert (=> b!6956532 m!7654532))

(assert (=> b!6956350 d!2169604))

(declare-fun d!2169612 () Bool)

(assert (=> d!2169612 (= (matchR!9166 rInner!765 (_1!37210 lt!2478510)) (matchRSpec!4081 rInner!765 (_1!37210 lt!2478510)))))

(declare-fun lt!2478529 () Unit!160780)

(declare-fun choose!51846 (Regex!17056 List!66809) Unit!160780)

(assert (=> d!2169612 (= lt!2478529 (choose!51846 rInner!765 (_1!37210 lt!2478510)))))

(assert (=> d!2169612 (validRegex!8762 rInner!765)))

(assert (=> d!2169612 (= (mainMatchTheorem!4075 rInner!765 (_1!37210 lt!2478510)) lt!2478529)))

(declare-fun bs!1858084 () Bool)

(assert (= bs!1858084 d!2169612))

(assert (=> bs!1858084 m!7654458))

(assert (=> bs!1858084 m!7654460))

(declare-fun m!7654540 () Bool)

(assert (=> bs!1858084 m!7654540))

(assert (=> bs!1858084 m!7654468))

(assert (=> b!6956350 d!2169612))

(declare-fun d!2169616 () Bool)

(declare-fun nullableFct!2579 (Regex!17056) Bool)

(assert (=> d!2169616 (= (nullable!6869 rInner!765) (nullableFct!2579 rInner!765))))

(declare-fun bs!1858085 () Bool)

(assert (= bs!1858085 d!2169616))

(declare-fun m!7654542 () Bool)

(assert (=> bs!1858085 m!7654542))

(assert (=> b!6956346 d!2169616))

(declare-fun d!2169618 () Bool)

(declare-fun choose!51847 (Int) Bool)

(assert (=> d!2169618 (= (Exists!4052 lambda!396825) (choose!51847 lambda!396825))))

(declare-fun bs!1858086 () Bool)

(assert (= bs!1858086 d!2169618))

(declare-fun m!7654544 () Bool)

(assert (=> bs!1858086 m!7654544))

(assert (=> b!6956345 d!2169618))

(declare-fun b!6956554 () Bool)

(declare-fun e!4183122 () Bool)

(declare-fun e!4183123 () Bool)

(assert (=> b!6956554 (= e!4183122 e!4183123)))

(declare-fun c!1290058 () Bool)

(assert (=> b!6956554 (= c!1290058 (is-Star!17056 rInner!765))))

(declare-fun bm!631749 () Bool)

(declare-fun call!631754 () Bool)

(declare-fun c!1290059 () Bool)

(assert (=> bm!631749 (= call!631754 (validRegex!8762 (ite c!1290059 (regOne!34625 rInner!765) (regTwo!34624 rInner!765))))))

(declare-fun b!6956556 () Bool)

(declare-fun e!4183121 () Bool)

(declare-fun e!4183120 () Bool)

(assert (=> b!6956556 (= e!4183121 e!4183120)))

(declare-fun res!2838522 () Bool)

(assert (=> b!6956556 (=> (not res!2838522) (not e!4183120))))

(declare-fun call!631755 () Bool)

(assert (=> b!6956556 (= res!2838522 call!631755)))

(declare-fun b!6956557 () Bool)

(declare-fun res!2838523 () Bool)

(assert (=> b!6956557 (=> res!2838523 e!4183121)))

(assert (=> b!6956557 (= res!2838523 (not (is-Concat!25901 rInner!765)))))

(declare-fun e!4183119 () Bool)

(assert (=> b!6956557 (= e!4183119 e!4183121)))

(declare-fun b!6956558 () Bool)

(declare-fun e!4183118 () Bool)

(assert (=> b!6956558 (= e!4183118 call!631755)))

(declare-fun b!6956559 () Bool)

(assert (=> b!6956559 (= e!4183123 e!4183119)))

(assert (=> b!6956559 (= c!1290059 (is-Union!17056 rInner!765))))

(declare-fun b!6956560 () Bool)

(declare-fun e!4183124 () Bool)

(assert (=> b!6956560 (= e!4183123 e!4183124)))

(declare-fun res!2838525 () Bool)

(assert (=> b!6956560 (= res!2838525 (not (nullable!6869 (reg!17385 rInner!765))))))

(assert (=> b!6956560 (=> (not res!2838525) (not e!4183124))))

(declare-fun b!6956561 () Bool)

(declare-fun res!2838524 () Bool)

(assert (=> b!6956561 (=> (not res!2838524) (not e!4183118))))

(assert (=> b!6956561 (= res!2838524 call!631754)))

(assert (=> b!6956561 (= e!4183119 e!4183118)))

(declare-fun bm!631750 () Bool)

(declare-fun call!631756 () Bool)

(assert (=> bm!631750 (= call!631755 call!631756)))

(declare-fun b!6956555 () Bool)

(assert (=> b!6956555 (= e!4183120 call!631754)))

(declare-fun d!2169620 () Bool)

(declare-fun res!2838521 () Bool)

(assert (=> d!2169620 (=> res!2838521 e!4183122)))

(assert (=> d!2169620 (= res!2838521 (is-ElementMatch!17056 rInner!765))))

(assert (=> d!2169620 (= (validRegex!8762 rInner!765) e!4183122)))

(declare-fun b!6956562 () Bool)

(assert (=> b!6956562 (= e!4183124 call!631756)))

(declare-fun bm!631751 () Bool)

(assert (=> bm!631751 (= call!631756 (validRegex!8762 (ite c!1290058 (reg!17385 rInner!765) (ite c!1290059 (regTwo!34625 rInner!765) (regOne!34624 rInner!765)))))))

(assert (= (and d!2169620 (not res!2838521)) b!6956554))

(assert (= (and b!6956554 c!1290058) b!6956560))

(assert (= (and b!6956554 (not c!1290058)) b!6956559))

(assert (= (and b!6956560 res!2838525) b!6956562))

(assert (= (and b!6956559 c!1290059) b!6956561))

(assert (= (and b!6956559 (not c!1290059)) b!6956557))

(assert (= (and b!6956561 res!2838524) b!6956558))

(assert (= (and b!6956557 (not res!2838523)) b!6956556))

(assert (= (and b!6956556 res!2838522) b!6956555))

(assert (= (or b!6956561 b!6956555) bm!631749))

(assert (= (or b!6956558 b!6956556) bm!631750))

(assert (= (or b!6956562 bm!631750) bm!631751))

(declare-fun m!7654552 () Bool)

(assert (=> bm!631749 m!7654552))

(declare-fun m!7654554 () Bool)

(assert (=> b!6956560 m!7654554))

(declare-fun m!7654556 () Bool)

(assert (=> bm!631751 m!7654556))

(assert (=> start!667540 d!2169620))

(declare-fun d!2169624 () Bool)

(declare-fun e!4183129 () Bool)

(assert (=> d!2169624 e!4183129))

(declare-fun res!2838531 () Bool)

(assert (=> d!2169624 (=> (not res!2838531) (not e!4183129))))

(declare-fun lt!2478532 () List!66809)

(declare-fun content!13151 (List!66809) (Set C!34382))

(assert (=> d!2169624 (= res!2838531 (= (content!13151 lt!2478532) (set.union (content!13151 (_1!37210 lt!2478510)) (content!13151 (_2!37210 lt!2478510)))))))

(declare-fun e!4183130 () List!66809)

(assert (=> d!2169624 (= lt!2478532 e!4183130)))

(declare-fun c!1290062 () Bool)

(assert (=> d!2169624 (= c!1290062 (is-Nil!66685 (_1!37210 lt!2478510)))))

(assert (=> d!2169624 (= (++!15085 (_1!37210 lt!2478510) (_2!37210 lt!2478510)) lt!2478532)))

(declare-fun b!6956571 () Bool)

(assert (=> b!6956571 (= e!4183130 (_2!37210 lt!2478510))))

(declare-fun b!6956573 () Bool)

(declare-fun res!2838530 () Bool)

(assert (=> b!6956573 (=> (not res!2838530) (not e!4183129))))

(declare-fun size!40848 (List!66809) Int)

(assert (=> b!6956573 (= res!2838530 (= (size!40848 lt!2478532) (+ (size!40848 (_1!37210 lt!2478510)) (size!40848 (_2!37210 lt!2478510)))))))

(declare-fun b!6956572 () Bool)

(assert (=> b!6956572 (= e!4183130 (Cons!66685 (h!73133 (_1!37210 lt!2478510)) (++!15085 (t!380552 (_1!37210 lt!2478510)) (_2!37210 lt!2478510))))))

(declare-fun b!6956574 () Bool)

(assert (=> b!6956574 (= e!4183129 (or (not (= (_2!37210 lt!2478510) Nil!66685)) (= lt!2478532 (_1!37210 lt!2478510))))))

(assert (= (and d!2169624 c!1290062) b!6956571))

(assert (= (and d!2169624 (not c!1290062)) b!6956572))

(assert (= (and d!2169624 res!2838531) b!6956573))

(assert (= (and b!6956573 res!2838530) b!6956574))

(declare-fun m!7654558 () Bool)

(assert (=> d!2169624 m!7654558))

(declare-fun m!7654560 () Bool)

(assert (=> d!2169624 m!7654560))

(declare-fun m!7654562 () Bool)

(assert (=> d!2169624 m!7654562))

(declare-fun m!7654564 () Bool)

(assert (=> b!6956573 m!7654564))

(declare-fun m!7654566 () Bool)

(assert (=> b!6956573 m!7654566))

(declare-fun m!7654568 () Bool)

(assert (=> b!6956573 m!7654568))

(declare-fun m!7654570 () Bool)

(assert (=> b!6956572 m!7654570))

(assert (=> b!6956347 d!2169624))

(declare-fun d!2169626 () Bool)

(declare-fun lt!2478535 () tuple2!67814)

(declare-fun dynLambda!26596 (Int tuple2!67814) Bool)

(assert (=> d!2169626 (dynLambda!26596 lambda!396825 lt!2478535)))

(declare-fun choose!51848 (Int) tuple2!67814)

(assert (=> d!2169626 (= lt!2478535 (choose!51848 lambda!396825))))

(assert (=> d!2169626 (Exists!4052 lambda!396825)))

(assert (=> d!2169626 (= (pickWitness!379 lambda!396825) lt!2478535)))

(declare-fun b_lambda!260467 () Bool)

(assert (=> (not b_lambda!260467) (not d!2169626)))

(declare-fun bs!1858087 () Bool)

(assert (= bs!1858087 d!2169626))

(declare-fun m!7654572 () Bool)

(assert (=> bs!1858087 m!7654572))

(declare-fun m!7654574 () Bool)

(assert (=> bs!1858087 m!7654574))

(assert (=> bs!1858087 m!7654464))

(assert (=> b!6956347 d!2169626))

(declare-fun b!6956588 () Bool)

(declare-fun e!4183133 () Bool)

(declare-fun tp!1917716 () Bool)

(declare-fun tp!1917720 () Bool)

(assert (=> b!6956588 (= e!4183133 (and tp!1917716 tp!1917720))))

(declare-fun b!6956586 () Bool)

(declare-fun tp!1917719 () Bool)

(declare-fun tp!1917718 () Bool)

(assert (=> b!6956586 (= e!4183133 (and tp!1917719 tp!1917718))))

(declare-fun b!6956585 () Bool)

(assert (=> b!6956585 (= e!4183133 tp_is_empty!43337)))

(assert (=> b!6956343 (= tp!1917686 e!4183133)))

(declare-fun b!6956587 () Bool)

(declare-fun tp!1917717 () Bool)

(assert (=> b!6956587 (= e!4183133 tp!1917717)))

(assert (= (and b!6956343 (is-ElementMatch!17056 (regOne!34624 rInner!765))) b!6956585))

(assert (= (and b!6956343 (is-Concat!25901 (regOne!34624 rInner!765))) b!6956586))

(assert (= (and b!6956343 (is-Star!17056 (regOne!34624 rInner!765))) b!6956587))

(assert (= (and b!6956343 (is-Union!17056 (regOne!34624 rInner!765))) b!6956588))

(declare-fun b!6956592 () Bool)

(declare-fun e!4183134 () Bool)

(declare-fun tp!1917721 () Bool)

(declare-fun tp!1917725 () Bool)

(assert (=> b!6956592 (= e!4183134 (and tp!1917721 tp!1917725))))

(declare-fun b!6956590 () Bool)

(declare-fun tp!1917724 () Bool)

(declare-fun tp!1917723 () Bool)

(assert (=> b!6956590 (= e!4183134 (and tp!1917724 tp!1917723))))

(declare-fun b!6956589 () Bool)

(assert (=> b!6956589 (= e!4183134 tp_is_empty!43337)))

(assert (=> b!6956343 (= tp!1917687 e!4183134)))

(declare-fun b!6956591 () Bool)

(declare-fun tp!1917722 () Bool)

(assert (=> b!6956591 (= e!4183134 tp!1917722)))

(assert (= (and b!6956343 (is-ElementMatch!17056 (regTwo!34624 rInner!765))) b!6956589))

(assert (= (and b!6956343 (is-Concat!25901 (regTwo!34624 rInner!765))) b!6956590))

(assert (= (and b!6956343 (is-Star!17056 (regTwo!34624 rInner!765))) b!6956591))

(assert (= (and b!6956343 (is-Union!17056 (regTwo!34624 rInner!765))) b!6956592))

(declare-fun b!6956596 () Bool)

(declare-fun e!4183135 () Bool)

(declare-fun tp!1917726 () Bool)

(declare-fun tp!1917730 () Bool)

(assert (=> b!6956596 (= e!4183135 (and tp!1917726 tp!1917730))))

(declare-fun b!6956594 () Bool)

(declare-fun tp!1917729 () Bool)

(declare-fun tp!1917728 () Bool)

(assert (=> b!6956594 (= e!4183135 (and tp!1917729 tp!1917728))))

(declare-fun b!6956593 () Bool)

(assert (=> b!6956593 (= e!4183135 tp_is_empty!43337)))

(assert (=> b!6956348 (= tp!1917683 e!4183135)))

(declare-fun b!6956595 () Bool)

(declare-fun tp!1917727 () Bool)

(assert (=> b!6956595 (= e!4183135 tp!1917727)))

(assert (= (and b!6956348 (is-ElementMatch!17056 (regOne!34625 rInner!765))) b!6956593))

(assert (= (and b!6956348 (is-Concat!25901 (regOne!34625 rInner!765))) b!6956594))

(assert (= (and b!6956348 (is-Star!17056 (regOne!34625 rInner!765))) b!6956595))

(assert (= (and b!6956348 (is-Union!17056 (regOne!34625 rInner!765))) b!6956596))

(declare-fun b!6956600 () Bool)

(declare-fun e!4183136 () Bool)

(declare-fun tp!1917731 () Bool)

(declare-fun tp!1917735 () Bool)

(assert (=> b!6956600 (= e!4183136 (and tp!1917731 tp!1917735))))

(declare-fun b!6956598 () Bool)

(declare-fun tp!1917734 () Bool)

(declare-fun tp!1917733 () Bool)

(assert (=> b!6956598 (= e!4183136 (and tp!1917734 tp!1917733))))

(declare-fun b!6956597 () Bool)

(assert (=> b!6956597 (= e!4183136 tp_is_empty!43337)))

(assert (=> b!6956348 (= tp!1917684 e!4183136)))

(declare-fun b!6956599 () Bool)

(declare-fun tp!1917732 () Bool)

(assert (=> b!6956599 (= e!4183136 tp!1917732)))

(assert (= (and b!6956348 (is-ElementMatch!17056 (regTwo!34625 rInner!765))) b!6956597))

(assert (= (and b!6956348 (is-Concat!25901 (regTwo!34625 rInner!765))) b!6956598))

(assert (= (and b!6956348 (is-Star!17056 (regTwo!34625 rInner!765))) b!6956599))

(assert (= (and b!6956348 (is-Union!17056 (regTwo!34625 rInner!765))) b!6956600))

(declare-fun b!6956604 () Bool)

(declare-fun e!4183137 () Bool)

(declare-fun tp!1917736 () Bool)

(declare-fun tp!1917740 () Bool)

(assert (=> b!6956604 (= e!4183137 (and tp!1917736 tp!1917740))))

(declare-fun b!6956602 () Bool)

(declare-fun tp!1917739 () Bool)

(declare-fun tp!1917738 () Bool)

(assert (=> b!6956602 (= e!4183137 (and tp!1917739 tp!1917738))))

(declare-fun b!6956601 () Bool)

(assert (=> b!6956601 (= e!4183137 tp_is_empty!43337)))

(assert (=> b!6956349 (= tp!1917682 e!4183137)))

(declare-fun b!6956603 () Bool)

(declare-fun tp!1917737 () Bool)

(assert (=> b!6956603 (= e!4183137 tp!1917737)))

(assert (= (and b!6956349 (is-ElementMatch!17056 (reg!17385 rInner!765))) b!6956601))

(assert (= (and b!6956349 (is-Concat!25901 (reg!17385 rInner!765))) b!6956602))

(assert (= (and b!6956349 (is-Star!17056 (reg!17385 rInner!765))) b!6956603))

(assert (= (and b!6956349 (is-Union!17056 (reg!17385 rInner!765))) b!6956604))

(declare-fun b!6956609 () Bool)

(declare-fun e!4183140 () Bool)

(declare-fun tp!1917743 () Bool)

(assert (=> b!6956609 (= e!4183140 (and tp_is_empty!43337 tp!1917743))))

(assert (=> b!6956344 (= tp!1917685 e!4183140)))

(assert (= (and b!6956344 (is-Cons!66685 (t!380552 s!10388))) b!6956609))

(declare-fun b_lambda!260469 () Bool)

(assert (= b_lambda!260467 (or b!6956345 b_lambda!260469)))

(declare-fun bs!1858088 () Bool)

(declare-fun d!2169628 () Bool)

(assert (= bs!1858088 (and d!2169628 b!6956345)))

(declare-fun res!2838532 () Bool)

(declare-fun e!4183141 () Bool)

(assert (=> bs!1858088 (=> (not res!2838532) (not e!4183141))))

(assert (=> bs!1858088 (= res!2838532 (= (++!15085 (_1!37210 lt!2478535) (_2!37210 lt!2478535)) s!10388))))

(assert (=> bs!1858088 (= (dynLambda!26596 lambda!396825 lt!2478535) e!4183141)))

(declare-fun b!6956610 () Bool)

(declare-fun res!2838533 () Bool)

(assert (=> b!6956610 (=> (not res!2838533) (not e!4183141))))

(assert (=> b!6956610 (= res!2838533 (matchR!9166 rInner!765 (_1!37210 lt!2478535)))))

(declare-fun b!6956611 () Bool)

(assert (=> b!6956611 (= e!4183141 (matchR!9166 (Star!17056 rInner!765) (_2!37210 lt!2478535)))))

(assert (= (and bs!1858088 res!2838532) b!6956610))

(assert (= (and b!6956610 res!2838533) b!6956611))

(declare-fun m!7654576 () Bool)

(assert (=> bs!1858088 m!7654576))

(declare-fun m!7654578 () Bool)

(assert (=> b!6956610 m!7654578))

(declare-fun m!7654580 () Bool)

(assert (=> b!6956611 m!7654580))

(assert (=> d!2169626 d!2169628))

(push 1)

(assert (not b!6956532))

(assert (not b!6956595))

(assert (not b!6956471))

(assert (not bs!1858088))

(assert (not bm!631751))

(assert (not b!6956528))

(assert tp_is_empty!43337)

(assert (not b!6956600))

(assert (not b!6956573))

(assert (not d!2169612))

(assert (not d!2169600))

(assert (not b!6956603))

(assert (not b!6956596))

(assert (not d!2169626))

(assert (not b!6956461))

(assert (not d!2169624))

(assert (not b!6956592))

(assert (not bm!631741))

(assert (not d!2169618))

(assert (not b!6956591))

(assert (not b!6956599))

(assert (not bm!631727))

(assert (not b!6956610))

(assert (not b!6956560))

(assert (not b!6956594))

(assert (not b_lambda!260469))

(assert (not b!6956590))

(assert (not b!6956611))

(assert (not b!6956604))

(assert (not b!6956418))

(assert (not bm!631725))

(assert (not bm!631742))

(assert (not b!6956598))

(assert (not b!6956609))

(assert (not bm!631730))

(assert (not bm!631749))

(assert (not d!2169616))

(assert (not b!6956473))

(assert (not b!6956469))

(assert (not b!6956586))

(assert (not b!6956572))

(assert (not b!6956465))

(assert (not b!6956467))

(assert (not b!6956602))

(assert (not b!6956588))

(assert (not b!6956587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

