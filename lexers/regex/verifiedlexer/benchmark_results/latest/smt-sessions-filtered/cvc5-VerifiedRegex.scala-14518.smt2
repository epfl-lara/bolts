; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754650 () Bool)

(assert start!754650)

(declare-fun res!3170373 () Bool)

(declare-fun e!4723354 () Bool)

(assert (=> start!754650 (=> (not res!3170373) (not e!4723354))))

(declare-datatypes ((B!4087 0))(
  ( (B!4088 (val!32433 Int)) )
))
(declare-datatypes ((List!74945 0))(
  ( (Nil!74821) (Cons!74821 (h!81269 B!4087) (t!390688 List!74945)) )
))
(declare-fun p!2009 () List!74945)

(declare-fun l!3435 () List!74945)

(declare-fun isPrefix!6768 (List!74945 List!74945) Bool)

(assert (=> start!754650 (= res!3170373 (isPrefix!6768 p!2009 l!3435))))

(assert (=> start!754650 e!4723354))

(declare-fun e!4723352 () Bool)

(assert (=> start!754650 e!4723352))

(declare-fun e!4723355 () Bool)

(assert (=> start!754650 e!4723355))

(declare-fun b!8018377 () Bool)

(declare-fun e!4723353 () Bool)

(declare-fun getSuffix!3943 (List!74945 List!74945) List!74945)

(assert (=> b!8018377 (= e!4723353 (not (not (= (getSuffix!3943 l!3435 p!2009) Nil!74821))))))

(declare-fun lt!2719274 () List!74945)

(declare-fun ++!18522 (List!74945 List!74945) List!74945)

(declare-fun head!16382 (List!74945) B!4087)

(assert (=> b!8018377 (isPrefix!6768 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) lt!2719274)))

(declare-datatypes ((Unit!170910 0))(
  ( (Unit!170911) )
))
(declare-fun lt!2719275 () Unit!170910)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1421 (List!74945 List!74945) Unit!170910)

(assert (=> b!8018377 (= lt!2719275 (lemmaAddHeadSuffixToPrefixStillPrefix!1421 (t!390688 p!2009) lt!2719274))))

(declare-fun b!8018378 () Bool)

(declare-fun res!3170375 () Bool)

(assert (=> b!8018378 (=> (not res!3170375) (not e!4723353))))

(declare-fun size!43612 (List!74945) Int)

(assert (=> b!8018378 (= res!3170375 (< (size!43612 (t!390688 p!2009)) (size!43612 lt!2719274)))))

(declare-fun b!8018379 () Bool)

(assert (=> b!8018379 (= e!4723354 e!4723353)))

(declare-fun res!3170374 () Bool)

(assert (=> b!8018379 (=> (not res!3170374) (not e!4723353))))

(assert (=> b!8018379 (= res!3170374 (isPrefix!6768 (t!390688 p!2009) lt!2719274))))

(declare-fun tail!15909 (List!74945) List!74945)

(assert (=> b!8018379 (= lt!2719274 (tail!15909 l!3435))))

(declare-fun b!8018380 () Bool)

(declare-fun tp_is_empty!53975 () Bool)

(declare-fun tp!2400080 () Bool)

(assert (=> b!8018380 (= e!4723355 (and tp_is_empty!53975 tp!2400080))))

(declare-fun b!8018381 () Bool)

(declare-fun res!3170372 () Bool)

(assert (=> b!8018381 (=> (not res!3170372) (not e!4723354))))

(assert (=> b!8018381 (= res!3170372 (< (size!43612 p!2009) (size!43612 l!3435)))))

(declare-fun b!8018382 () Bool)

(declare-fun res!3170371 () Bool)

(assert (=> b!8018382 (=> (not res!3170371) (not e!4723354))))

(assert (=> b!8018382 (= res!3170371 (is-Cons!74821 p!2009))))

(declare-fun b!8018383 () Bool)

(declare-fun tp!2400079 () Bool)

(assert (=> b!8018383 (= e!4723352 (and tp_is_empty!53975 tp!2400079))))

(assert (= (and start!754650 res!3170373) b!8018381))

(assert (= (and b!8018381 res!3170372) b!8018382))

(assert (= (and b!8018382 res!3170371) b!8018379))

(assert (= (and b!8018379 res!3170374) b!8018378))

(assert (= (and b!8018378 res!3170375) b!8018377))

(assert (= (and start!754650 (is-Cons!74821 p!2009)) b!8018383))

(assert (= (and start!754650 (is-Cons!74821 l!3435)) b!8018380))

(declare-fun m!8381350 () Bool)

(assert (=> b!8018377 m!8381350))

(declare-fun m!8381352 () Bool)

(assert (=> b!8018377 m!8381352))

(declare-fun m!8381354 () Bool)

(assert (=> b!8018377 m!8381354))

(declare-fun m!8381356 () Bool)

(assert (=> b!8018377 m!8381356))

(declare-fun m!8381358 () Bool)

(assert (=> b!8018377 m!8381358))

(declare-fun m!8381360 () Bool)

(assert (=> b!8018377 m!8381360))

(assert (=> b!8018377 m!8381350))

(assert (=> b!8018377 m!8381358))

(declare-fun m!8381362 () Bool)

(assert (=> start!754650 m!8381362))

(declare-fun m!8381364 () Bool)

(assert (=> b!8018381 m!8381364))

(declare-fun m!8381366 () Bool)

(assert (=> b!8018381 m!8381366))

(declare-fun m!8381368 () Bool)

(assert (=> b!8018378 m!8381368))

(declare-fun m!8381370 () Bool)

(assert (=> b!8018378 m!8381370))

(declare-fun m!8381372 () Bool)

(assert (=> b!8018379 m!8381372))

(declare-fun m!8381374 () Bool)

(assert (=> b!8018379 m!8381374))

(push 1)

(assert (not b!8018379))

(assert (not b!8018380))

(assert (not b!8018381))

(assert (not start!754650))

(assert (not b!8018378))

(assert tp_is_empty!53975)

(assert (not b!8018377))

(assert (not b!8018383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8018421 () Bool)

(declare-fun e!4723382 () Bool)

(declare-fun e!4723380 () Bool)

(assert (=> b!8018421 (= e!4723382 e!4723380)))

(declare-fun res!3170407 () Bool)

(assert (=> b!8018421 (=> (not res!3170407) (not e!4723380))))

(assert (=> b!8018421 (= res!3170407 (not (is-Nil!74821 lt!2719274)))))

(declare-fun b!8018422 () Bool)

(declare-fun res!3170408 () Bool)

(assert (=> b!8018422 (=> (not res!3170408) (not e!4723380))))

(assert (=> b!8018422 (= res!3170408 (= (head!16382 (t!390688 p!2009)) (head!16382 lt!2719274)))))

(declare-fun d!2390733 () Bool)

(declare-fun e!4723381 () Bool)

(assert (=> d!2390733 e!4723381))

(declare-fun res!3170410 () Bool)

(assert (=> d!2390733 (=> res!3170410 e!4723381)))

(declare-fun lt!2719286 () Bool)

(assert (=> d!2390733 (= res!3170410 (not lt!2719286))))

(assert (=> d!2390733 (= lt!2719286 e!4723382)))

(declare-fun res!3170409 () Bool)

(assert (=> d!2390733 (=> res!3170409 e!4723382)))

(assert (=> d!2390733 (= res!3170409 (is-Nil!74821 (t!390688 p!2009)))))

(assert (=> d!2390733 (= (isPrefix!6768 (t!390688 p!2009) lt!2719274) lt!2719286)))

(declare-fun b!8018423 () Bool)

(assert (=> b!8018423 (= e!4723380 (isPrefix!6768 (tail!15909 (t!390688 p!2009)) (tail!15909 lt!2719274)))))

(declare-fun b!8018424 () Bool)

(assert (=> b!8018424 (= e!4723381 (>= (size!43612 lt!2719274) (size!43612 (t!390688 p!2009))))))

(assert (= (and d!2390733 (not res!3170409)) b!8018421))

(assert (= (and b!8018421 res!3170407) b!8018422))

(assert (= (and b!8018422 res!3170408) b!8018423))

(assert (= (and d!2390733 (not res!3170410)) b!8018424))

(declare-fun m!8381402 () Bool)

(assert (=> b!8018422 m!8381402))

(declare-fun m!8381404 () Bool)

(assert (=> b!8018422 m!8381404))

(declare-fun m!8381406 () Bool)

(assert (=> b!8018423 m!8381406))

(declare-fun m!8381408 () Bool)

(assert (=> b!8018423 m!8381408))

(assert (=> b!8018423 m!8381406))

(assert (=> b!8018423 m!8381408))

(declare-fun m!8381410 () Bool)

(assert (=> b!8018423 m!8381410))

(assert (=> b!8018424 m!8381370))

(assert (=> b!8018424 m!8381368))

(assert (=> b!8018379 d!2390733))

(declare-fun d!2390735 () Bool)

(assert (=> d!2390735 (= (tail!15909 l!3435) (t!390688 l!3435))))

(assert (=> b!8018379 d!2390735))

(declare-fun b!8018425 () Bool)

(declare-fun e!4723385 () Bool)

(declare-fun e!4723383 () Bool)

(assert (=> b!8018425 (= e!4723385 e!4723383)))

(declare-fun res!3170411 () Bool)

(assert (=> b!8018425 (=> (not res!3170411) (not e!4723383))))

(assert (=> b!8018425 (= res!3170411 (not (is-Nil!74821 l!3435)))))

(declare-fun b!8018426 () Bool)

(declare-fun res!3170412 () Bool)

(assert (=> b!8018426 (=> (not res!3170412) (not e!4723383))))

(assert (=> b!8018426 (= res!3170412 (= (head!16382 p!2009) (head!16382 l!3435)))))

(declare-fun d!2390737 () Bool)

(declare-fun e!4723384 () Bool)

(assert (=> d!2390737 e!4723384))

(declare-fun res!3170414 () Bool)

(assert (=> d!2390737 (=> res!3170414 e!4723384)))

(declare-fun lt!2719287 () Bool)

(assert (=> d!2390737 (= res!3170414 (not lt!2719287))))

(assert (=> d!2390737 (= lt!2719287 e!4723385)))

(declare-fun res!3170413 () Bool)

(assert (=> d!2390737 (=> res!3170413 e!4723385)))

(assert (=> d!2390737 (= res!3170413 (is-Nil!74821 p!2009))))

(assert (=> d!2390737 (= (isPrefix!6768 p!2009 l!3435) lt!2719287)))

(declare-fun b!8018427 () Bool)

(assert (=> b!8018427 (= e!4723383 (isPrefix!6768 (tail!15909 p!2009) (tail!15909 l!3435)))))

(declare-fun b!8018428 () Bool)

(assert (=> b!8018428 (= e!4723384 (>= (size!43612 l!3435) (size!43612 p!2009)))))

(assert (= (and d!2390737 (not res!3170413)) b!8018425))

(assert (= (and b!8018425 res!3170411) b!8018426))

(assert (= (and b!8018426 res!3170412) b!8018427))

(assert (= (and d!2390737 (not res!3170414)) b!8018428))

(declare-fun m!8381412 () Bool)

(assert (=> b!8018426 m!8381412))

(declare-fun m!8381414 () Bool)

(assert (=> b!8018426 m!8381414))

(declare-fun m!8381416 () Bool)

(assert (=> b!8018427 m!8381416))

(assert (=> b!8018427 m!8381374))

(assert (=> b!8018427 m!8381416))

(assert (=> b!8018427 m!8381374))

(declare-fun m!8381418 () Bool)

(assert (=> b!8018427 m!8381418))

(assert (=> b!8018428 m!8381366))

(assert (=> b!8018428 m!8381364))

(assert (=> start!754650 d!2390737))

(declare-fun d!2390739 () Bool)

(declare-fun lt!2719291 () Int)

(assert (=> d!2390739 (>= lt!2719291 0)))

(declare-fun e!4723391 () Int)

(assert (=> d!2390739 (= lt!2719291 e!4723391)))

(declare-fun c!1471669 () Bool)

(assert (=> d!2390739 (= c!1471669 (is-Nil!74821 p!2009))))

(assert (=> d!2390739 (= (size!43612 p!2009) lt!2719291)))

(declare-fun b!8018437 () Bool)

(assert (=> b!8018437 (= e!4723391 0)))

(declare-fun b!8018438 () Bool)

(assert (=> b!8018438 (= e!4723391 (+ 1 (size!43612 (t!390688 p!2009))))))

(assert (= (and d!2390739 c!1471669) b!8018437))

(assert (= (and d!2390739 (not c!1471669)) b!8018438))

(assert (=> b!8018438 m!8381368))

(assert (=> b!8018381 d!2390739))

(declare-fun d!2390743 () Bool)

(declare-fun lt!2719292 () Int)

(assert (=> d!2390743 (>= lt!2719292 0)))

(declare-fun e!4723392 () Int)

(assert (=> d!2390743 (= lt!2719292 e!4723392)))

(declare-fun c!1471670 () Bool)

(assert (=> d!2390743 (= c!1471670 (is-Nil!74821 l!3435))))

(assert (=> d!2390743 (= (size!43612 l!3435) lt!2719292)))

(declare-fun b!8018439 () Bool)

(assert (=> b!8018439 (= e!4723392 0)))

(declare-fun b!8018440 () Bool)

(assert (=> b!8018440 (= e!4723392 (+ 1 (size!43612 (t!390688 l!3435))))))

(assert (= (and d!2390743 c!1471670) b!8018439))

(assert (= (and d!2390743 (not c!1471670)) b!8018440))

(declare-fun m!8381430 () Bool)

(assert (=> b!8018440 m!8381430))

(assert (=> b!8018381 d!2390743))

(declare-fun d!2390745 () Bool)

(declare-fun lt!2719293 () Int)

(assert (=> d!2390745 (>= lt!2719293 0)))

(declare-fun e!4723393 () Int)

(assert (=> d!2390745 (= lt!2719293 e!4723393)))

(declare-fun c!1471671 () Bool)

(assert (=> d!2390745 (= c!1471671 (is-Nil!74821 (t!390688 p!2009)))))

(assert (=> d!2390745 (= (size!43612 (t!390688 p!2009)) lt!2719293)))

(declare-fun b!8018441 () Bool)

(assert (=> b!8018441 (= e!4723393 0)))

(declare-fun b!8018442 () Bool)

(assert (=> b!8018442 (= e!4723393 (+ 1 (size!43612 (t!390688 (t!390688 p!2009)))))))

(assert (= (and d!2390745 c!1471671) b!8018441))

(assert (= (and d!2390745 (not c!1471671)) b!8018442))

(declare-fun m!8381432 () Bool)

(assert (=> b!8018442 m!8381432))

(assert (=> b!8018378 d!2390745))

(declare-fun d!2390749 () Bool)

(declare-fun lt!2719294 () Int)

(assert (=> d!2390749 (>= lt!2719294 0)))

(declare-fun e!4723394 () Int)

(assert (=> d!2390749 (= lt!2719294 e!4723394)))

(declare-fun c!1471672 () Bool)

(assert (=> d!2390749 (= c!1471672 (is-Nil!74821 lt!2719274))))

(assert (=> d!2390749 (= (size!43612 lt!2719274) lt!2719294)))

(declare-fun b!8018443 () Bool)

(assert (=> b!8018443 (= e!4723394 0)))

(declare-fun b!8018444 () Bool)

(assert (=> b!8018444 (= e!4723394 (+ 1 (size!43612 (t!390688 lt!2719274))))))

(assert (= (and d!2390749 c!1471672) b!8018443))

(assert (= (and d!2390749 (not c!1471672)) b!8018444))

(declare-fun m!8381434 () Bool)

(assert (=> b!8018444 m!8381434))

(assert (=> b!8018378 d!2390749))

(declare-fun d!2390751 () Bool)

(declare-fun e!4723406 () Bool)

(assert (=> d!2390751 e!4723406))

(declare-fun res!3170427 () Bool)

(assert (=> d!2390751 (=> (not res!3170427) (not e!4723406))))

(declare-fun lt!2719302 () List!74945)

(declare-fun content!15923 (List!74945) (Set B!4087))

(assert (=> d!2390751 (= res!3170427 (= (content!15923 lt!2719302) (set.union (content!15923 (t!390688 p!2009)) (content!15923 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))))

(declare-fun e!4723407 () List!74945)

(assert (=> d!2390751 (= lt!2719302 e!4723407)))

(declare-fun c!1471679 () Bool)

(assert (=> d!2390751 (= c!1471679 (is-Nil!74821 (t!390688 p!2009)))))

(assert (=> d!2390751 (= (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) lt!2719302)))

(declare-fun b!8018467 () Bool)

(declare-fun res!3170428 () Bool)

(assert (=> b!8018467 (=> (not res!3170428) (not e!4723406))))

(assert (=> b!8018467 (= res!3170428 (= (size!43612 lt!2719302) (+ (size!43612 (t!390688 p!2009)) (size!43612 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))))

(declare-fun b!8018468 () Bool)

(assert (=> b!8018468 (= e!4723406 (or (not (= (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821) Nil!74821)) (= lt!2719302 (t!390688 p!2009))))))

(declare-fun b!8018466 () Bool)

(assert (=> b!8018466 (= e!4723407 (Cons!74821 (h!81269 (t!390688 p!2009)) (++!18522 (t!390688 (t!390688 p!2009)) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))))

(declare-fun b!8018465 () Bool)

(assert (=> b!8018465 (= e!4723407 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))

(assert (= (and d!2390751 c!1471679) b!8018465))

(assert (= (and d!2390751 (not c!1471679)) b!8018466))

(assert (= (and d!2390751 res!3170427) b!8018467))

(assert (= (and b!8018467 res!3170428) b!8018468))

(declare-fun m!8381446 () Bool)

(assert (=> d!2390751 m!8381446))

(declare-fun m!8381448 () Bool)

(assert (=> d!2390751 m!8381448))

(declare-fun m!8381450 () Bool)

(assert (=> d!2390751 m!8381450))

(declare-fun m!8381452 () Bool)

(assert (=> b!8018467 m!8381452))

(assert (=> b!8018467 m!8381368))

(declare-fun m!8381456 () Bool)

(assert (=> b!8018467 m!8381456))

(declare-fun m!8381458 () Bool)

(assert (=> b!8018466 m!8381458))

(assert (=> b!8018377 d!2390751))

(declare-fun d!2390759 () Bool)

(declare-fun lt!2719308 () List!74945)

(assert (=> d!2390759 (= (++!18522 p!2009 lt!2719308) l!3435)))

(declare-fun e!4723415 () List!74945)

(assert (=> d!2390759 (= lt!2719308 e!4723415)))

(declare-fun c!1471684 () Bool)

(assert (=> d!2390759 (= c!1471684 (is-Cons!74821 p!2009))))

(assert (=> d!2390759 (>= (size!43612 l!3435) (size!43612 p!2009))))

(assert (=> d!2390759 (= (getSuffix!3943 l!3435 p!2009) lt!2719308)))

(declare-fun b!8018481 () Bool)

(assert (=> b!8018481 (= e!4723415 (getSuffix!3943 (tail!15909 l!3435) (t!390688 p!2009)))))

(declare-fun b!8018482 () Bool)

(assert (=> b!8018482 (= e!4723415 l!3435)))

(assert (= (and d!2390759 c!1471684) b!8018481))

(assert (= (and d!2390759 (not c!1471684)) b!8018482))

(declare-fun m!8381470 () Bool)

(assert (=> d!2390759 m!8381470))

(assert (=> d!2390759 m!8381366))

(assert (=> d!2390759 m!8381364))

(assert (=> b!8018481 m!8381374))

(assert (=> b!8018481 m!8381374))

(declare-fun m!8381472 () Bool)

(assert (=> b!8018481 m!8381472))

(assert (=> b!8018377 d!2390759))

(declare-fun d!2390767 () Bool)

(assert (=> d!2390767 (= (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) (h!81269 (getSuffix!3943 lt!2719274 (t!390688 p!2009))))))

(assert (=> b!8018377 d!2390767))

(declare-fun d!2390769 () Bool)

(declare-fun lt!2719309 () List!74945)

(assert (=> d!2390769 (= (++!18522 (t!390688 p!2009) lt!2719309) lt!2719274)))

(declare-fun e!4723416 () List!74945)

(assert (=> d!2390769 (= lt!2719309 e!4723416)))

(declare-fun c!1471685 () Bool)

(assert (=> d!2390769 (= c!1471685 (is-Cons!74821 (t!390688 p!2009)))))

(assert (=> d!2390769 (>= (size!43612 lt!2719274) (size!43612 (t!390688 p!2009)))))

(assert (=> d!2390769 (= (getSuffix!3943 lt!2719274 (t!390688 p!2009)) lt!2719309)))

(declare-fun b!8018483 () Bool)

(assert (=> b!8018483 (= e!4723416 (getSuffix!3943 (tail!15909 lt!2719274) (t!390688 (t!390688 p!2009))))))

(declare-fun b!8018484 () Bool)

(assert (=> b!8018484 (= e!4723416 lt!2719274)))

(assert (= (and d!2390769 c!1471685) b!8018483))

(assert (= (and d!2390769 (not c!1471685)) b!8018484))

(declare-fun m!8381474 () Bool)

(assert (=> d!2390769 m!8381474))

(assert (=> d!2390769 m!8381370))

(assert (=> d!2390769 m!8381368))

(assert (=> b!8018483 m!8381408))

(assert (=> b!8018483 m!8381408))

(declare-fun m!8381476 () Bool)

(assert (=> b!8018483 m!8381476))

(assert (=> b!8018377 d!2390769))

(declare-fun b!8018485 () Bool)

(declare-fun e!4723419 () Bool)

(declare-fun e!4723417 () Bool)

(assert (=> b!8018485 (= e!4723419 e!4723417)))

(declare-fun res!3170433 () Bool)

(assert (=> b!8018485 (=> (not res!3170433) (not e!4723417))))

(assert (=> b!8018485 (= res!3170433 (not (is-Nil!74821 lt!2719274)))))

(declare-fun b!8018486 () Bool)

(declare-fun res!3170434 () Bool)

(assert (=> b!8018486 (=> (not res!3170434) (not e!4723417))))

(assert (=> b!8018486 (= res!3170434 (= (head!16382 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))) (head!16382 lt!2719274)))))

(declare-fun d!2390771 () Bool)

(declare-fun e!4723418 () Bool)

(assert (=> d!2390771 e!4723418))

(declare-fun res!3170436 () Bool)

(assert (=> d!2390771 (=> res!3170436 e!4723418)))

(declare-fun lt!2719310 () Bool)

(assert (=> d!2390771 (= res!3170436 (not lt!2719310))))

(assert (=> d!2390771 (= lt!2719310 e!4723419)))

(declare-fun res!3170435 () Bool)

(assert (=> d!2390771 (=> res!3170435 e!4723419)))

(assert (=> d!2390771 (= res!3170435 (is-Nil!74821 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))))

(assert (=> d!2390771 (= (isPrefix!6768 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) lt!2719274) lt!2719310)))

(declare-fun b!8018487 () Bool)

(assert (=> b!8018487 (= e!4723417 (isPrefix!6768 (tail!15909 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))) (tail!15909 lt!2719274)))))

(declare-fun b!8018488 () Bool)

(assert (=> b!8018488 (= e!4723418 (>= (size!43612 lt!2719274) (size!43612 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))))

(assert (= (and d!2390771 (not res!3170435)) b!8018485))

(assert (= (and b!8018485 res!3170433) b!8018486))

(assert (= (and b!8018486 res!3170434) b!8018487))

(assert (= (and d!2390771 (not res!3170436)) b!8018488))

(assert (=> b!8018486 m!8381350))

(declare-fun m!8381478 () Bool)

(assert (=> b!8018486 m!8381478))

(assert (=> b!8018486 m!8381404))

(assert (=> b!8018487 m!8381350))

(declare-fun m!8381480 () Bool)

(assert (=> b!8018487 m!8381480))

(assert (=> b!8018487 m!8381408))

(assert (=> b!8018487 m!8381480))

(assert (=> b!8018487 m!8381408))

(declare-fun m!8381482 () Bool)

(assert (=> b!8018487 m!8381482))

(assert (=> b!8018488 m!8381370))

(assert (=> b!8018488 m!8381350))

(declare-fun m!8381484 () Bool)

(assert (=> b!8018488 m!8381484))

(assert (=> b!8018377 d!2390771))

(declare-fun d!2390773 () Bool)

(assert (=> d!2390773 (isPrefix!6768 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) lt!2719274)))

(declare-fun lt!2719315 () Unit!170910)

(declare-fun choose!60432 (List!74945 List!74945) Unit!170910)

(assert (=> d!2390773 (= lt!2719315 (choose!60432 (t!390688 p!2009) lt!2719274))))

(assert (=> d!2390773 (isPrefix!6768 (t!390688 p!2009) lt!2719274)))

(assert (=> d!2390773 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1421 (t!390688 p!2009) lt!2719274) lt!2719315)))

(declare-fun bs!1971119 () Bool)

(assert (= bs!1971119 d!2390773))

(assert (=> bs!1971119 m!8381358))

(assert (=> bs!1971119 m!8381360))

(assert (=> bs!1971119 m!8381358))

(assert (=> bs!1971119 m!8381372))

(declare-fun m!8381486 () Bool)

(assert (=> bs!1971119 m!8381486))

(assert (=> bs!1971119 m!8381350))

(assert (=> bs!1971119 m!8381350))

(assert (=> bs!1971119 m!8381352))

(assert (=> b!8018377 d!2390773))

(declare-fun b!8018499 () Bool)

(declare-fun e!4723425 () Bool)

(declare-fun tp!2400089 () Bool)

(assert (=> b!8018499 (= e!4723425 (and tp_is_empty!53975 tp!2400089))))

(assert (=> b!8018380 (= tp!2400080 e!4723425)))

(assert (= (and b!8018380 (is-Cons!74821 (t!390688 l!3435))) b!8018499))

(declare-fun b!8018500 () Bool)

(declare-fun e!4723426 () Bool)

(declare-fun tp!2400090 () Bool)

(assert (=> b!8018500 (= e!4723426 (and tp_is_empty!53975 tp!2400090))))

(assert (=> b!8018383 (= tp!2400079 e!4723426)))

(assert (= (and b!8018383 (is-Cons!74821 (t!390688 p!2009))) b!8018500))

(push 1)

(assert (not b!8018466))

(assert (not d!2390773))

(assert (not b!8018427))

(assert (not b!8018428))

(assert (not b!8018423))

(assert (not b!8018442))

(assert (not b!8018499))

(assert tp_is_empty!53975)

(assert (not b!8018487))

(assert (not b!8018467))

(assert (not d!2390769))

(assert (not b!8018486))

(assert (not b!8018422))

(assert (not b!8018438))

(assert (not b!8018481))

(assert (not b!8018500))

(assert (not b!8018426))

(assert (not d!2390759))

(assert (not b!8018483))

(assert (not d!2390751))

(assert (not b!8018424))

(assert (not b!8018444))

(assert (not b!8018440))

(assert (not b!8018488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2390783 () Bool)

(assert (=> d!2390783 (= (head!16382 (t!390688 p!2009)) (h!81269 (t!390688 p!2009)))))

(assert (=> b!8018422 d!2390783))

(declare-fun d!2390785 () Bool)

(assert (=> d!2390785 (= (head!16382 lt!2719274) (h!81269 lt!2719274))))

(assert (=> b!8018422 d!2390785))

(declare-fun d!2390787 () Bool)

(declare-fun e!4723438 () Bool)

(assert (=> d!2390787 e!4723438))

(declare-fun res!3170443 () Bool)

(assert (=> d!2390787 (=> (not res!3170443) (not e!4723438))))

(declare-fun lt!2719324 () List!74945)

(assert (=> d!2390787 (= res!3170443 (= (content!15923 lt!2719324) (set.union (content!15923 (t!390688 (t!390688 p!2009))) (content!15923 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))))

(declare-fun e!4723439 () List!74945)

(assert (=> d!2390787 (= lt!2719324 e!4723439)))

(declare-fun c!1471693 () Bool)

(assert (=> d!2390787 (= c!1471693 (is-Nil!74821 (t!390688 (t!390688 p!2009))))))

(assert (=> d!2390787 (= (++!18522 (t!390688 (t!390688 p!2009)) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) lt!2719324)))

(declare-fun b!8018523 () Bool)

(declare-fun res!3170444 () Bool)

(assert (=> b!8018523 (=> (not res!3170444) (not e!4723438))))

(assert (=> b!8018523 (= res!3170444 (= (size!43612 lt!2719324) (+ (size!43612 (t!390688 (t!390688 p!2009))) (size!43612 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))))

(declare-fun b!8018524 () Bool)

(assert (=> b!8018524 (= e!4723438 (or (not (= (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821) Nil!74821)) (= lt!2719324 (t!390688 (t!390688 p!2009)))))))

(declare-fun b!8018522 () Bool)

(assert (=> b!8018522 (= e!4723439 (Cons!74821 (h!81269 (t!390688 (t!390688 p!2009))) (++!18522 (t!390688 (t!390688 (t!390688 p!2009))) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))))

(declare-fun b!8018521 () Bool)

(assert (=> b!8018521 (= e!4723439 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))

(assert (= (and d!2390787 c!1471693) b!8018521))

(assert (= (and d!2390787 (not c!1471693)) b!8018522))

(assert (= (and d!2390787 res!3170443) b!8018523))

(assert (= (and b!8018523 res!3170444) b!8018524))

(declare-fun m!8381510 () Bool)

(assert (=> d!2390787 m!8381510))

(declare-fun m!8381512 () Bool)

(assert (=> d!2390787 m!8381512))

(assert (=> d!2390787 m!8381450))

(declare-fun m!8381514 () Bool)

(assert (=> b!8018523 m!8381514))

(assert (=> b!8018523 m!8381432))

(assert (=> b!8018523 m!8381456))

(declare-fun m!8381516 () Bool)

(assert (=> b!8018522 m!8381516))

(assert (=> b!8018466 d!2390787))

(assert (=> b!8018438 d!2390745))

(declare-fun d!2390789 () Bool)

(declare-fun c!1471696 () Bool)

(assert (=> d!2390789 (= c!1471696 (is-Nil!74821 lt!2719302))))

(declare-fun e!4723442 () (Set B!4087))

(assert (=> d!2390789 (= (content!15923 lt!2719302) e!4723442)))

(declare-fun b!8018529 () Bool)

(assert (=> b!8018529 (= e!4723442 (as set.empty (Set B!4087)))))

(declare-fun b!8018530 () Bool)

(assert (=> b!8018530 (= e!4723442 (set.union (set.insert (h!81269 lt!2719302) (as set.empty (Set B!4087))) (content!15923 (t!390688 lt!2719302))))))

(assert (= (and d!2390789 c!1471696) b!8018529))

(assert (= (and d!2390789 (not c!1471696)) b!8018530))

(declare-fun m!8381518 () Bool)

(assert (=> b!8018530 m!8381518))

(declare-fun m!8381520 () Bool)

(assert (=> b!8018530 m!8381520))

(assert (=> d!2390751 d!2390789))

(declare-fun d!2390791 () Bool)

(declare-fun c!1471697 () Bool)

(assert (=> d!2390791 (= c!1471697 (is-Nil!74821 (t!390688 p!2009)))))

(declare-fun e!4723443 () (Set B!4087))

(assert (=> d!2390791 (= (content!15923 (t!390688 p!2009)) e!4723443)))

(declare-fun b!8018531 () Bool)

(assert (=> b!8018531 (= e!4723443 (as set.empty (Set B!4087)))))

(declare-fun b!8018532 () Bool)

(assert (=> b!8018532 (= e!4723443 (set.union (set.insert (h!81269 (t!390688 p!2009)) (as set.empty (Set B!4087))) (content!15923 (t!390688 (t!390688 p!2009)))))))

(assert (= (and d!2390791 c!1471697) b!8018531))

(assert (= (and d!2390791 (not c!1471697)) b!8018532))

(declare-fun m!8381522 () Bool)

(assert (=> b!8018532 m!8381522))

(assert (=> b!8018532 m!8381512))

(assert (=> d!2390751 d!2390791))

(declare-fun d!2390793 () Bool)

(declare-fun c!1471698 () Bool)

(assert (=> d!2390793 (= c!1471698 (is-Nil!74821 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))

(declare-fun e!4723444 () (Set B!4087))

(assert (=> d!2390793 (= (content!15923 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) e!4723444)))

(declare-fun b!8018533 () Bool)

(assert (=> b!8018533 (= e!4723444 (as set.empty (Set B!4087)))))

(declare-fun b!8018534 () Bool)

(assert (=> b!8018534 (= e!4723444 (set.union (set.insert (h!81269 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) (as set.empty (Set B!4087))) (content!15923 (t!390688 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))))

(assert (= (and d!2390793 c!1471698) b!8018533))

(assert (= (and d!2390793 (not c!1471698)) b!8018534))

(declare-fun m!8381524 () Bool)

(assert (=> b!8018534 m!8381524))

(declare-fun m!8381526 () Bool)

(assert (=> b!8018534 m!8381526))

(assert (=> d!2390751 d!2390793))

(assert (=> b!8018488 d!2390749))

(declare-fun d!2390795 () Bool)

(declare-fun lt!2719325 () Int)

(assert (=> d!2390795 (>= lt!2719325 0)))

(declare-fun e!4723445 () Int)

(assert (=> d!2390795 (= lt!2719325 e!4723445)))

(declare-fun c!1471699 () Bool)

(assert (=> d!2390795 (= c!1471699 (is-Nil!74821 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))))

(assert (=> d!2390795 (= (size!43612 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))) lt!2719325)))

(declare-fun b!8018535 () Bool)

(assert (=> b!8018535 (= e!4723445 0)))

(declare-fun b!8018536 () Bool)

(assert (=> b!8018536 (= e!4723445 (+ 1 (size!43612 (t!390688 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))))))

(assert (= (and d!2390795 c!1471699) b!8018535))

(assert (= (and d!2390795 (not c!1471699)) b!8018536))

(declare-fun m!8381528 () Bool)

(assert (=> b!8018536 m!8381528))

(assert (=> b!8018488 d!2390795))

(declare-fun b!8018537 () Bool)

(declare-fun e!4723448 () Bool)

(declare-fun e!4723446 () Bool)

(assert (=> b!8018537 (= e!4723448 e!4723446)))

(declare-fun res!3170445 () Bool)

(assert (=> b!8018537 (=> (not res!3170445) (not e!4723446))))

(assert (=> b!8018537 (= res!3170445 (not (is-Nil!74821 (tail!15909 lt!2719274))))))

(declare-fun b!8018538 () Bool)

(declare-fun res!3170446 () Bool)

(assert (=> b!8018538 (=> (not res!3170446) (not e!4723446))))

(assert (=> b!8018538 (= res!3170446 (= (head!16382 (tail!15909 (t!390688 p!2009))) (head!16382 (tail!15909 lt!2719274))))))

(declare-fun d!2390797 () Bool)

(declare-fun e!4723447 () Bool)

(assert (=> d!2390797 e!4723447))

(declare-fun res!3170448 () Bool)

(assert (=> d!2390797 (=> res!3170448 e!4723447)))

(declare-fun lt!2719326 () Bool)

(assert (=> d!2390797 (= res!3170448 (not lt!2719326))))

(assert (=> d!2390797 (= lt!2719326 e!4723448)))

(declare-fun res!3170447 () Bool)

(assert (=> d!2390797 (=> res!3170447 e!4723448)))

(assert (=> d!2390797 (= res!3170447 (is-Nil!74821 (tail!15909 (t!390688 p!2009))))))

(assert (=> d!2390797 (= (isPrefix!6768 (tail!15909 (t!390688 p!2009)) (tail!15909 lt!2719274)) lt!2719326)))

(declare-fun b!8018539 () Bool)

(assert (=> b!8018539 (= e!4723446 (isPrefix!6768 (tail!15909 (tail!15909 (t!390688 p!2009))) (tail!15909 (tail!15909 lt!2719274))))))

(declare-fun b!8018540 () Bool)

(assert (=> b!8018540 (= e!4723447 (>= (size!43612 (tail!15909 lt!2719274)) (size!43612 (tail!15909 (t!390688 p!2009)))))))

(assert (= (and d!2390797 (not res!3170447)) b!8018537))

(assert (= (and b!8018537 res!3170445) b!8018538))

(assert (= (and b!8018538 res!3170446) b!8018539))

(assert (= (and d!2390797 (not res!3170448)) b!8018540))

(assert (=> b!8018538 m!8381406))

(declare-fun m!8381530 () Bool)

(assert (=> b!8018538 m!8381530))

(assert (=> b!8018538 m!8381408))

(declare-fun m!8381532 () Bool)

(assert (=> b!8018538 m!8381532))

(assert (=> b!8018539 m!8381406))

(declare-fun m!8381534 () Bool)

(assert (=> b!8018539 m!8381534))

(assert (=> b!8018539 m!8381408))

(declare-fun m!8381536 () Bool)

(assert (=> b!8018539 m!8381536))

(assert (=> b!8018539 m!8381534))

(assert (=> b!8018539 m!8381536))

(declare-fun m!8381538 () Bool)

(assert (=> b!8018539 m!8381538))

(assert (=> b!8018540 m!8381408))

(declare-fun m!8381540 () Bool)

(assert (=> b!8018540 m!8381540))

(assert (=> b!8018540 m!8381406))

(declare-fun m!8381542 () Bool)

(assert (=> b!8018540 m!8381542))

(assert (=> b!8018423 d!2390797))

(declare-fun d!2390799 () Bool)

(assert (=> d!2390799 (= (tail!15909 (t!390688 p!2009)) (t!390688 (t!390688 p!2009)))))

(assert (=> b!8018423 d!2390799))

(declare-fun d!2390801 () Bool)

(assert (=> d!2390801 (= (tail!15909 lt!2719274) (t!390688 lt!2719274))))

(assert (=> b!8018423 d!2390801))

(declare-fun d!2390803 () Bool)

(declare-fun lt!2719327 () Int)

(assert (=> d!2390803 (>= lt!2719327 0)))

(declare-fun e!4723449 () Int)

(assert (=> d!2390803 (= lt!2719327 e!4723449)))

(declare-fun c!1471700 () Bool)

(assert (=> d!2390803 (= c!1471700 (is-Nil!74821 lt!2719302))))

(assert (=> d!2390803 (= (size!43612 lt!2719302) lt!2719327)))

(declare-fun b!8018541 () Bool)

(assert (=> b!8018541 (= e!4723449 0)))

(declare-fun b!8018542 () Bool)

(assert (=> b!8018542 (= e!4723449 (+ 1 (size!43612 (t!390688 lt!2719302))))))

(assert (= (and d!2390803 c!1471700) b!8018541))

(assert (= (and d!2390803 (not c!1471700)) b!8018542))

(declare-fun m!8381544 () Bool)

(assert (=> b!8018542 m!8381544))

(assert (=> b!8018467 d!2390803))

(assert (=> b!8018467 d!2390745))

(declare-fun d!2390805 () Bool)

(declare-fun lt!2719328 () Int)

(assert (=> d!2390805 (>= lt!2719328 0)))

(declare-fun e!4723450 () Int)

(assert (=> d!2390805 (= lt!2719328 e!4723450)))

(declare-fun c!1471701 () Bool)

(assert (=> d!2390805 (= c!1471701 (is-Nil!74821 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))

(assert (=> d!2390805 (= (size!43612 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) lt!2719328)))

(declare-fun b!8018543 () Bool)

(assert (=> b!8018543 (= e!4723450 0)))

(declare-fun b!8018544 () Bool)

(assert (=> b!8018544 (= e!4723450 (+ 1 (size!43612 (t!390688 (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))))

(assert (= (and d!2390805 c!1471701) b!8018543))

(assert (= (and d!2390805 (not c!1471701)) b!8018544))

(declare-fun m!8381546 () Bool)

(assert (=> b!8018544 m!8381546))

(assert (=> b!8018467 d!2390805))

(assert (=> b!8018424 d!2390749))

(assert (=> b!8018424 d!2390745))

(declare-fun d!2390807 () Bool)

(declare-fun lt!2719329 () List!74945)

(assert (=> d!2390807 (= (++!18522 (t!390688 (t!390688 p!2009)) lt!2719329) (tail!15909 lt!2719274))))

(declare-fun e!4723451 () List!74945)

(assert (=> d!2390807 (= lt!2719329 e!4723451)))

(declare-fun c!1471702 () Bool)

(assert (=> d!2390807 (= c!1471702 (is-Cons!74821 (t!390688 (t!390688 p!2009))))))

(assert (=> d!2390807 (>= (size!43612 (tail!15909 lt!2719274)) (size!43612 (t!390688 (t!390688 p!2009))))))

(assert (=> d!2390807 (= (getSuffix!3943 (tail!15909 lt!2719274) (t!390688 (t!390688 p!2009))) lt!2719329)))

(declare-fun b!8018545 () Bool)

(assert (=> b!8018545 (= e!4723451 (getSuffix!3943 (tail!15909 (tail!15909 lt!2719274)) (t!390688 (t!390688 (t!390688 p!2009)))))))

(declare-fun b!8018546 () Bool)

(assert (=> b!8018546 (= e!4723451 (tail!15909 lt!2719274))))

(assert (= (and d!2390807 c!1471702) b!8018545))

(assert (= (and d!2390807 (not c!1471702)) b!8018546))

(declare-fun m!8381548 () Bool)

(assert (=> d!2390807 m!8381548))

(assert (=> d!2390807 m!8381408))

(assert (=> d!2390807 m!8381540))

(assert (=> d!2390807 m!8381432))

(assert (=> b!8018545 m!8381408))

(assert (=> b!8018545 m!8381536))

(assert (=> b!8018545 m!8381536))

(declare-fun m!8381550 () Bool)

(assert (=> b!8018545 m!8381550))

(assert (=> b!8018483 d!2390807))

(assert (=> b!8018483 d!2390801))

(declare-fun d!2390809 () Bool)

(declare-fun e!4723452 () Bool)

(assert (=> d!2390809 e!4723452))

(declare-fun res!3170449 () Bool)

(assert (=> d!2390809 (=> (not res!3170449) (not e!4723452))))

(declare-fun lt!2719330 () List!74945)

(assert (=> d!2390809 (= res!3170449 (= (content!15923 lt!2719330) (set.union (content!15923 p!2009) (content!15923 lt!2719308))))))

(declare-fun e!4723453 () List!74945)

(assert (=> d!2390809 (= lt!2719330 e!4723453)))

(declare-fun c!1471703 () Bool)

(assert (=> d!2390809 (= c!1471703 (is-Nil!74821 p!2009))))

(assert (=> d!2390809 (= (++!18522 p!2009 lt!2719308) lt!2719330)))

(declare-fun b!8018549 () Bool)

(declare-fun res!3170450 () Bool)

(assert (=> b!8018549 (=> (not res!3170450) (not e!4723452))))

(assert (=> b!8018549 (= res!3170450 (= (size!43612 lt!2719330) (+ (size!43612 p!2009) (size!43612 lt!2719308))))))

(declare-fun b!8018550 () Bool)

(assert (=> b!8018550 (= e!4723452 (or (not (= lt!2719308 Nil!74821)) (= lt!2719330 p!2009)))))

(declare-fun b!8018548 () Bool)

(assert (=> b!8018548 (= e!4723453 (Cons!74821 (h!81269 p!2009) (++!18522 (t!390688 p!2009) lt!2719308)))))

(declare-fun b!8018547 () Bool)

(assert (=> b!8018547 (= e!4723453 lt!2719308)))

(assert (= (and d!2390809 c!1471703) b!8018547))

(assert (= (and d!2390809 (not c!1471703)) b!8018548))

(assert (= (and d!2390809 res!3170449) b!8018549))

(assert (= (and b!8018549 res!3170450) b!8018550))

(declare-fun m!8381552 () Bool)

(assert (=> d!2390809 m!8381552))

(declare-fun m!8381554 () Bool)

(assert (=> d!2390809 m!8381554))

(declare-fun m!8381556 () Bool)

(assert (=> d!2390809 m!8381556))

(declare-fun m!8381558 () Bool)

(assert (=> b!8018549 m!8381558))

(assert (=> b!8018549 m!8381364))

(declare-fun m!8381560 () Bool)

(assert (=> b!8018549 m!8381560))

(declare-fun m!8381562 () Bool)

(assert (=> b!8018548 m!8381562))

(assert (=> d!2390759 d!2390809))

(assert (=> d!2390759 d!2390743))

(assert (=> d!2390759 d!2390739))

(declare-fun d!2390811 () Bool)

(declare-fun lt!2719331 () Int)

(assert (=> d!2390811 (>= lt!2719331 0)))

(declare-fun e!4723454 () Int)

(assert (=> d!2390811 (= lt!2719331 e!4723454)))

(declare-fun c!1471704 () Bool)

(assert (=> d!2390811 (= c!1471704 (is-Nil!74821 (t!390688 lt!2719274)))))

(assert (=> d!2390811 (= (size!43612 (t!390688 lt!2719274)) lt!2719331)))

(declare-fun b!8018551 () Bool)

(assert (=> b!8018551 (= e!4723454 0)))

(declare-fun b!8018552 () Bool)

(assert (=> b!8018552 (= e!4723454 (+ 1 (size!43612 (t!390688 (t!390688 lt!2719274)))))))

(assert (= (and d!2390811 c!1471704) b!8018551))

(assert (= (and d!2390811 (not c!1471704)) b!8018552))

(declare-fun m!8381564 () Bool)

(assert (=> b!8018552 m!8381564))

(assert (=> b!8018444 d!2390811))

(declare-fun d!2390813 () Bool)

(declare-fun lt!2719332 () Int)

(assert (=> d!2390813 (>= lt!2719332 0)))

(declare-fun e!4723455 () Int)

(assert (=> d!2390813 (= lt!2719332 e!4723455)))

(declare-fun c!1471705 () Bool)

(assert (=> d!2390813 (= c!1471705 (is-Nil!74821 (t!390688 (t!390688 p!2009))))))

(assert (=> d!2390813 (= (size!43612 (t!390688 (t!390688 p!2009))) lt!2719332)))

(declare-fun b!8018553 () Bool)

(assert (=> b!8018553 (= e!4723455 0)))

(declare-fun b!8018554 () Bool)

(assert (=> b!8018554 (= e!4723455 (+ 1 (size!43612 (t!390688 (t!390688 (t!390688 p!2009))))))))

(assert (= (and d!2390813 c!1471705) b!8018553))

(assert (= (and d!2390813 (not c!1471705)) b!8018554))

(declare-fun m!8381566 () Bool)

(assert (=> b!8018554 m!8381566))

(assert (=> b!8018442 d!2390813))

(declare-fun d!2390815 () Bool)

(assert (=> d!2390815 (= (head!16382 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))) (h!81269 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))))

(assert (=> b!8018486 d!2390815))

(assert (=> b!8018486 d!2390785))

(declare-fun d!2390817 () Bool)

(declare-fun lt!2719333 () Int)

(assert (=> d!2390817 (>= lt!2719333 0)))

(declare-fun e!4723456 () Int)

(assert (=> d!2390817 (= lt!2719333 e!4723456)))

(declare-fun c!1471706 () Bool)

(assert (=> d!2390817 (= c!1471706 (is-Nil!74821 (t!390688 l!3435)))))

(assert (=> d!2390817 (= (size!43612 (t!390688 l!3435)) lt!2719333)))

(declare-fun b!8018555 () Bool)

(assert (=> b!8018555 (= e!4723456 0)))

(declare-fun b!8018556 () Bool)

(assert (=> b!8018556 (= e!4723456 (+ 1 (size!43612 (t!390688 (t!390688 l!3435)))))))

(assert (= (and d!2390817 c!1471706) b!8018555))

(assert (= (and d!2390817 (not c!1471706)) b!8018556))

(declare-fun m!8381568 () Bool)

(assert (=> b!8018556 m!8381568))

(assert (=> b!8018440 d!2390817))

(declare-fun d!2390819 () Bool)

(assert (=> d!2390819 (= (head!16382 p!2009) (h!81269 p!2009))))

(assert (=> b!8018426 d!2390819))

(declare-fun d!2390821 () Bool)

(assert (=> d!2390821 (= (head!16382 l!3435) (h!81269 l!3435))))

(assert (=> b!8018426 d!2390821))

(declare-fun d!2390823 () Bool)

(declare-fun lt!2719334 () List!74945)

(assert (=> d!2390823 (= (++!18522 (t!390688 p!2009) lt!2719334) (tail!15909 l!3435))))

(declare-fun e!4723457 () List!74945)

(assert (=> d!2390823 (= lt!2719334 e!4723457)))

(declare-fun c!1471707 () Bool)

(assert (=> d!2390823 (= c!1471707 (is-Cons!74821 (t!390688 p!2009)))))

(assert (=> d!2390823 (>= (size!43612 (tail!15909 l!3435)) (size!43612 (t!390688 p!2009)))))

(assert (=> d!2390823 (= (getSuffix!3943 (tail!15909 l!3435) (t!390688 p!2009)) lt!2719334)))

(declare-fun b!8018557 () Bool)

(assert (=> b!8018557 (= e!4723457 (getSuffix!3943 (tail!15909 (tail!15909 l!3435)) (t!390688 (t!390688 p!2009))))))

(declare-fun b!8018558 () Bool)

(assert (=> b!8018558 (= e!4723457 (tail!15909 l!3435))))

(assert (= (and d!2390823 c!1471707) b!8018557))

(assert (= (and d!2390823 (not c!1471707)) b!8018558))

(declare-fun m!8381570 () Bool)

(assert (=> d!2390823 m!8381570))

(assert (=> d!2390823 m!8381374))

(declare-fun m!8381572 () Bool)

(assert (=> d!2390823 m!8381572))

(assert (=> d!2390823 m!8381368))

(assert (=> b!8018557 m!8381374))

(declare-fun m!8381574 () Bool)

(assert (=> b!8018557 m!8381574))

(assert (=> b!8018557 m!8381574))

(declare-fun m!8381576 () Bool)

(assert (=> b!8018557 m!8381576))

(assert (=> b!8018481 d!2390823))

(assert (=> b!8018481 d!2390735))

(assert (=> b!8018428 d!2390743))

(assert (=> b!8018428 d!2390739))

(assert (=> d!2390773 d!2390751))

(assert (=> d!2390773 d!2390733))

(assert (=> d!2390773 d!2390767))

(assert (=> d!2390773 d!2390771))

(assert (=> d!2390773 d!2390769))

(declare-fun d!2390825 () Bool)

(assert (=> d!2390825 (isPrefix!6768 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)) lt!2719274)))

(assert (=> d!2390825 true))

(declare-fun _$65!2033 () Unit!170910)

(assert (=> d!2390825 (= (choose!60432 (t!390688 p!2009) lt!2719274) _$65!2033)))

(declare-fun bs!1971121 () Bool)

(assert (= bs!1971121 d!2390825))

(assert (=> bs!1971121 m!8381358))

(assert (=> bs!1971121 m!8381358))

(assert (=> bs!1971121 m!8381360))

(assert (=> bs!1971121 m!8381350))

(assert (=> bs!1971121 m!8381350))

(assert (=> bs!1971121 m!8381352))

(assert (=> d!2390773 d!2390825))

(declare-fun b!8018563 () Bool)

(declare-fun e!4723463 () Bool)

(declare-fun e!4723461 () Bool)

(assert (=> b!8018563 (= e!4723463 e!4723461)))

(declare-fun res!3170455 () Bool)

(assert (=> b!8018563 (=> (not res!3170455) (not e!4723461))))

(assert (=> b!8018563 (= res!3170455 (not (is-Nil!74821 (tail!15909 lt!2719274))))))

(declare-fun b!8018564 () Bool)

(declare-fun res!3170456 () Bool)

(assert (=> b!8018564 (=> (not res!3170456) (not e!4723461))))

(assert (=> b!8018564 (= res!3170456 (= (head!16382 (tail!15909 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))) (head!16382 (tail!15909 lt!2719274))))))

(declare-fun d!2390829 () Bool)

(declare-fun e!4723462 () Bool)

(assert (=> d!2390829 e!4723462))

(declare-fun res!3170458 () Bool)

(assert (=> d!2390829 (=> res!3170458 e!4723462)))

(declare-fun lt!2719336 () Bool)

(assert (=> d!2390829 (= res!3170458 (not lt!2719336))))

(assert (=> d!2390829 (= lt!2719336 e!4723463)))

(declare-fun res!3170457 () Bool)

(assert (=> d!2390829 (=> res!3170457 e!4723463)))

(assert (=> d!2390829 (= res!3170457 (is-Nil!74821 (tail!15909 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))))))

(assert (=> d!2390829 (= (isPrefix!6768 (tail!15909 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))) (tail!15909 lt!2719274)) lt!2719336)))

(declare-fun b!8018565 () Bool)

(assert (=> b!8018565 (= e!4723461 (isPrefix!6768 (tail!15909 (tail!15909 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821)))) (tail!15909 (tail!15909 lt!2719274))))))

(declare-fun b!8018566 () Bool)

(assert (=> b!8018566 (= e!4723462 (>= (size!43612 (tail!15909 lt!2719274)) (size!43612 (tail!15909 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))))))

(assert (= (and d!2390829 (not res!3170457)) b!8018563))

(assert (= (and b!8018563 res!3170455) b!8018564))

(assert (= (and b!8018564 res!3170456) b!8018565))

(assert (= (and d!2390829 (not res!3170458)) b!8018566))

(assert (=> b!8018564 m!8381480))

(declare-fun m!8381578 () Bool)

(assert (=> b!8018564 m!8381578))

(assert (=> b!8018564 m!8381408))

(assert (=> b!8018564 m!8381532))

(assert (=> b!8018565 m!8381480))

(declare-fun m!8381580 () Bool)

(assert (=> b!8018565 m!8381580))

(assert (=> b!8018565 m!8381408))

(assert (=> b!8018565 m!8381536))

(assert (=> b!8018565 m!8381580))

(assert (=> b!8018565 m!8381536))

(declare-fun m!8381584 () Bool)

(assert (=> b!8018565 m!8381584))

(assert (=> b!8018566 m!8381408))

(assert (=> b!8018566 m!8381540))

(assert (=> b!8018566 m!8381480))

(declare-fun m!8381588 () Bool)

(assert (=> b!8018566 m!8381588))

(assert (=> b!8018487 d!2390829))

(declare-fun d!2390831 () Bool)

(assert (=> d!2390831 (= (tail!15909 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))) (t!390688 (++!18522 (t!390688 p!2009) (Cons!74821 (head!16382 (getSuffix!3943 lt!2719274 (t!390688 p!2009))) Nil!74821))))))

(assert (=> b!8018487 d!2390831))

(assert (=> b!8018487 d!2390801))

(declare-fun b!8018567 () Bool)

(declare-fun e!4723466 () Bool)

(declare-fun e!4723464 () Bool)

(assert (=> b!8018567 (= e!4723466 e!4723464)))

(declare-fun res!3170459 () Bool)

(assert (=> b!8018567 (=> (not res!3170459) (not e!4723464))))

(assert (=> b!8018567 (= res!3170459 (not (is-Nil!74821 (tail!15909 l!3435))))))

(declare-fun b!8018568 () Bool)

(declare-fun res!3170460 () Bool)

(assert (=> b!8018568 (=> (not res!3170460) (not e!4723464))))

(assert (=> b!8018568 (= res!3170460 (= (head!16382 (tail!15909 p!2009)) (head!16382 (tail!15909 l!3435))))))

(declare-fun d!2390833 () Bool)

(declare-fun e!4723465 () Bool)

(assert (=> d!2390833 e!4723465))

(declare-fun res!3170462 () Bool)

(assert (=> d!2390833 (=> res!3170462 e!4723465)))

(declare-fun lt!2719337 () Bool)

(assert (=> d!2390833 (= res!3170462 (not lt!2719337))))

(assert (=> d!2390833 (= lt!2719337 e!4723466)))

(declare-fun res!3170461 () Bool)

(assert (=> d!2390833 (=> res!3170461 e!4723466)))

(assert (=> d!2390833 (= res!3170461 (is-Nil!74821 (tail!15909 p!2009)))))

(assert (=> d!2390833 (= (isPrefix!6768 (tail!15909 p!2009) (tail!15909 l!3435)) lt!2719337)))

(declare-fun b!8018569 () Bool)

(assert (=> b!8018569 (= e!4723464 (isPrefix!6768 (tail!15909 (tail!15909 p!2009)) (tail!15909 (tail!15909 l!3435))))))

(declare-fun b!8018570 () Bool)

(assert (=> b!8018570 (= e!4723465 (>= (size!43612 (tail!15909 l!3435)) (size!43612 (tail!15909 p!2009))))))

(assert (= (and d!2390833 (not res!3170461)) b!8018567))

(assert (= (and b!8018567 res!3170459) b!8018568))

(assert (= (and b!8018568 res!3170460) b!8018569))

(assert (= (and d!2390833 (not res!3170462)) b!8018570))

(assert (=> b!8018568 m!8381416))

(declare-fun m!8381600 () Bool)

(assert (=> b!8018568 m!8381600))

(assert (=> b!8018568 m!8381374))

(declare-fun m!8381602 () Bool)

(assert (=> b!8018568 m!8381602))

(assert (=> b!8018569 m!8381416))

(declare-fun m!8381604 () Bool)

(assert (=> b!8018569 m!8381604))

(assert (=> b!8018569 m!8381374))

(assert (=> b!8018569 m!8381574))

(assert (=> b!8018569 m!8381604))

(assert (=> b!8018569 m!8381574))

(declare-fun m!8381606 () Bool)

(assert (=> b!8018569 m!8381606))

(assert (=> b!8018570 m!8381374))

(assert (=> b!8018570 m!8381572))

(assert (=> b!8018570 m!8381416))

(declare-fun m!8381608 () Bool)

(assert (=> b!8018570 m!8381608))

(assert (=> b!8018427 d!2390833))

(declare-fun d!2390839 () Bool)

(assert (=> d!2390839 (= (tail!15909 p!2009) (t!390688 p!2009))))

(assert (=> b!8018427 d!2390839))

(assert (=> b!8018427 d!2390735))

(declare-fun d!2390841 () Bool)

(declare-fun e!4723467 () Bool)

(assert (=> d!2390841 e!4723467))

(declare-fun res!3170463 () Bool)

(assert (=> d!2390841 (=> (not res!3170463) (not e!4723467))))

(declare-fun lt!2719338 () List!74945)

(assert (=> d!2390841 (= res!3170463 (= (content!15923 lt!2719338) (set.union (content!15923 (t!390688 p!2009)) (content!15923 lt!2719309))))))

(declare-fun e!4723468 () List!74945)

(assert (=> d!2390841 (= lt!2719338 e!4723468)))

(declare-fun c!1471708 () Bool)

(assert (=> d!2390841 (= c!1471708 (is-Nil!74821 (t!390688 p!2009)))))

(assert (=> d!2390841 (= (++!18522 (t!390688 p!2009) lt!2719309) lt!2719338)))

(declare-fun b!8018573 () Bool)

(declare-fun res!3170464 () Bool)

(assert (=> b!8018573 (=> (not res!3170464) (not e!4723467))))

(assert (=> b!8018573 (= res!3170464 (= (size!43612 lt!2719338) (+ (size!43612 (t!390688 p!2009)) (size!43612 lt!2719309))))))

(declare-fun b!8018574 () Bool)

(assert (=> b!8018574 (= e!4723467 (or (not (= lt!2719309 Nil!74821)) (= lt!2719338 (t!390688 p!2009))))))

(declare-fun b!8018572 () Bool)

(assert (=> b!8018572 (= e!4723468 (Cons!74821 (h!81269 (t!390688 p!2009)) (++!18522 (t!390688 (t!390688 p!2009)) lt!2719309)))))

(declare-fun b!8018571 () Bool)

(assert (=> b!8018571 (= e!4723468 lt!2719309)))

(assert (= (and d!2390841 c!1471708) b!8018571))

(assert (= (and d!2390841 (not c!1471708)) b!8018572))

(assert (= (and d!2390841 res!3170463) b!8018573))

(assert (= (and b!8018573 res!3170464) b!8018574))

(declare-fun m!8381610 () Bool)

(assert (=> d!2390841 m!8381610))

(assert (=> d!2390841 m!8381448))

(declare-fun m!8381612 () Bool)

(assert (=> d!2390841 m!8381612))

(declare-fun m!8381614 () Bool)

(assert (=> b!8018573 m!8381614))

(assert (=> b!8018573 m!8381368))

(declare-fun m!8381616 () Bool)

(assert (=> b!8018573 m!8381616))

(declare-fun m!8381618 () Bool)

(assert (=> b!8018572 m!8381618))

(assert (=> d!2390769 d!2390841))

(assert (=> d!2390769 d!2390749))

(assert (=> d!2390769 d!2390745))

(declare-fun b!8018579 () Bool)

(declare-fun e!4723472 () Bool)

(declare-fun tp!2400095 () Bool)

(assert (=> b!8018579 (= e!4723472 (and tp_is_empty!53975 tp!2400095))))

(assert (=> b!8018499 (= tp!2400089 e!4723472)))

(assert (= (and b!8018499 (is-Cons!74821 (t!390688 (t!390688 l!3435)))) b!8018579))

(declare-fun b!8018580 () Bool)

(declare-fun e!4723473 () Bool)

(declare-fun tp!2400096 () Bool)

(assert (=> b!8018580 (= e!4723473 (and tp_is_empty!53975 tp!2400096))))

(assert (=> b!8018500 (= tp!2400090 e!4723473)))

(assert (= (and b!8018500 (is-Cons!74821 (t!390688 (t!390688 p!2009)))) b!8018580))

(push 1)

(assert (not b!8018539))

(assert (not b!8018557))

(assert (not d!2390841))

(assert (not b!8018522))

(assert (not b!8018552))

(assert (not b!8018569))

(assert (not b!8018538))

(assert (not b!8018544))

(assert (not b!8018545))

(assert (not b!8018568))

(assert (not b!8018566))

(assert (not b!8018564))

(assert (not b!8018573))

(assert (not b!8018536))

(assert (not d!2390825))

(assert (not d!2390809))

(assert (not b!8018523))

(assert (not b!8018534))

(assert (not b!8018580))

(assert (not b!8018572))

(assert (not b!8018549))

(assert (not b!8018530))

(assert (not b!8018540))

(assert (not b!8018554))

(assert (not b!8018579))

(assert (not b!8018556))

(assert (not b!8018565))

(assert (not b!8018548))

(assert (not d!2390823))

(assert (not d!2390807))

(assert (not d!2390787))

(assert (not b!8018570))

(assert tp_is_empty!53975)

(assert (not b!8018532))

(assert (not b!8018542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

