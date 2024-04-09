; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62482 () Bool)

(assert start!62482)

(declare-fun b!702364 () Bool)

(declare-fun res!466364 () Bool)

(declare-fun e!397407 () Bool)

(assert (=> b!702364 (=> (not res!466364) (not e!397407))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40117 0))(
  ( (array!40118 (arr!19211 (Array (_ BitVec 32) (_ BitVec 64))) (size!19594 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40117)

(declare-fun arrayContainsKey!0 (array!40117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702364 (= res!466364 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702365 () Bool)

(declare-fun res!466348 () Bool)

(declare-fun e!397406 () Bool)

(assert (=> b!702365 (=> (not res!466348) (not e!397406))))

(declare-datatypes ((List!13305 0))(
  ( (Nil!13302) (Cons!13301 (h!14346 (_ BitVec 64)) (t!19595 List!13305)) )
))
(declare-fun acc!652 () List!13305)

(declare-fun contains!3848 (List!13305 (_ BitVec 64)) Bool)

(assert (=> b!702365 (= res!466348 (not (contains!3848 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702366 () Bool)

(declare-fun res!466361 () Bool)

(assert (=> b!702366 (=> (not res!466361) (not e!397407))))

(declare-fun lt!317658 () List!13305)

(assert (=> b!702366 (= res!466361 (not (contains!3848 lt!317658 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702367 () Bool)

(declare-fun res!466365 () Bool)

(assert (=> b!702367 (=> (not res!466365) (not e!397406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702367 (= res!466365 (validKeyInArray!0 k!2824))))

(declare-fun b!702368 () Bool)

(declare-fun res!466373 () Bool)

(assert (=> b!702368 (=> (not res!466373) (not e!397407))))

(declare-fun lt!317656 () List!13305)

(assert (=> b!702368 (= res!466373 (not (contains!3848 lt!317656 k!2824)))))

(declare-fun b!702370 () Bool)

(declare-fun res!466374 () Bool)

(assert (=> b!702370 (=> (not res!466374) (not e!397407))))

(assert (=> b!702370 (= res!466374 (not (contains!3848 lt!317658 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702371 () Bool)

(declare-fun res!466375 () Bool)

(assert (=> b!702371 (=> (not res!466375) (not e!397406))))

(declare-fun newAcc!49 () List!13305)

(assert (=> b!702371 (= res!466375 (not (contains!3848 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702372 () Bool)

(declare-fun res!466359 () Bool)

(assert (=> b!702372 (=> (not res!466359) (not e!397407))))

(declare-fun noDuplicate!1095 (List!13305) Bool)

(assert (=> b!702372 (= res!466359 (noDuplicate!1095 lt!317658))))

(declare-fun b!702373 () Bool)

(assert (=> b!702373 (= e!397406 e!397407)))

(declare-fun res!466372 () Bool)

(assert (=> b!702373 (=> (not res!466372) (not e!397407))))

(assert (=> b!702373 (= res!466372 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!489 (List!13305 (_ BitVec 64)) List!13305)

(assert (=> b!702373 (= lt!317658 ($colon$colon!489 newAcc!49 (select (arr!19211 a!3591) from!2969)))))

(assert (=> b!702373 (= lt!317656 ($colon$colon!489 acc!652 (select (arr!19211 a!3591) from!2969)))))

(declare-fun b!702374 () Bool)

(declare-fun res!466357 () Bool)

(assert (=> b!702374 (=> (not res!466357) (not e!397407))))

(assert (=> b!702374 (= res!466357 (contains!3848 lt!317658 k!2824))))

(declare-fun b!702375 () Bool)

(declare-fun res!466350 () Bool)

(assert (=> b!702375 (=> (not res!466350) (not e!397406))))

(assert (=> b!702375 (= res!466350 (noDuplicate!1095 acc!652))))

(declare-fun b!702376 () Bool)

(declare-fun res!466371 () Bool)

(assert (=> b!702376 (=> (not res!466371) (not e!397406))))

(declare-fun arrayNoDuplicates!0 (array!40117 (_ BitVec 32) List!13305) Bool)

(assert (=> b!702376 (= res!466371 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702377 () Bool)

(declare-fun res!466353 () Bool)

(assert (=> b!702377 (=> (not res!466353) (not e!397406))))

(assert (=> b!702377 (= res!466353 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!702378 () Bool)

(declare-fun res!466370 () Bool)

(assert (=> b!702378 (=> (not res!466370) (not e!397407))))

(assert (=> b!702378 (= res!466370 (noDuplicate!1095 lt!317656))))

(declare-fun b!702379 () Bool)

(declare-fun res!466356 () Bool)

(assert (=> b!702379 (=> (not res!466356) (not e!397406))))

(assert (=> b!702379 (= res!466356 (not (contains!3848 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!466352 () Bool)

(assert (=> start!62482 (=> (not res!466352) (not e!397406))))

(assert (=> start!62482 (= res!466352 (and (bvslt (size!19594 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19594 a!3591))))))

(assert (=> start!62482 e!397406))

(assert (=> start!62482 true))

(declare-fun array_inv!14985 (array!40117) Bool)

(assert (=> start!62482 (array_inv!14985 a!3591)))

(declare-fun b!702369 () Bool)

(assert (=> b!702369 (= e!397407 (not true))))

(assert (=> b!702369 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317658)))

(declare-datatypes ((Unit!24572 0))(
  ( (Unit!24573) )
))
(declare-fun lt!317657 () Unit!24572)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40117 (_ BitVec 64) (_ BitVec 32) List!13305 List!13305) Unit!24572)

(assert (=> b!702369 (= lt!317657 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317656 lt!317658))))

(declare-fun b!702380 () Bool)

(declare-fun res!466358 () Bool)

(assert (=> b!702380 (=> (not res!466358) (not e!397407))))

(assert (=> b!702380 (= res!466358 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317656))))

(declare-fun b!702381 () Bool)

(declare-fun res!466376 () Bool)

(assert (=> b!702381 (=> (not res!466376) (not e!397406))))

(assert (=> b!702381 (= res!466376 (not (contains!3848 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702382 () Bool)

(declare-fun res!466362 () Bool)

(assert (=> b!702382 (=> (not res!466362) (not e!397406))))

(assert (=> b!702382 (= res!466362 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19594 a!3591)))))

(declare-fun b!702383 () Bool)

(declare-fun res!466355 () Bool)

(assert (=> b!702383 (=> (not res!466355) (not e!397406))))

(assert (=> b!702383 (= res!466355 (validKeyInArray!0 (select (arr!19211 a!3591) from!2969)))))

(declare-fun b!702384 () Bool)

(declare-fun res!466367 () Bool)

(assert (=> b!702384 (=> (not res!466367) (not e!397407))))

(assert (=> b!702384 (= res!466367 (not (contains!3848 lt!317656 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702385 () Bool)

(declare-fun res!466369 () Bool)

(assert (=> b!702385 (=> (not res!466369) (not e!397407))))

(declare-fun -!257 (List!13305 (_ BitVec 64)) List!13305)

(assert (=> b!702385 (= res!466369 (= (-!257 lt!317658 k!2824) lt!317656))))

(declare-fun b!702386 () Bool)

(declare-fun res!466363 () Bool)

(assert (=> b!702386 (=> (not res!466363) (not e!397406))))

(declare-fun subseq!292 (List!13305 List!13305) Bool)

(assert (=> b!702386 (= res!466363 (subseq!292 acc!652 newAcc!49))))

(declare-fun b!702387 () Bool)

(declare-fun res!466349 () Bool)

(assert (=> b!702387 (=> (not res!466349) (not e!397406))))

(assert (=> b!702387 (= res!466349 (noDuplicate!1095 newAcc!49))))

(declare-fun b!702388 () Bool)

(declare-fun res!466368 () Bool)

(assert (=> b!702388 (=> (not res!466368) (not e!397406))))

(assert (=> b!702388 (= res!466368 (= (-!257 newAcc!49 k!2824) acc!652))))

(declare-fun b!702389 () Bool)

(declare-fun res!466366 () Bool)

(assert (=> b!702389 (=> (not res!466366) (not e!397407))))

(assert (=> b!702389 (= res!466366 (subseq!292 lt!317656 lt!317658))))

(declare-fun b!702390 () Bool)

(declare-fun res!466351 () Bool)

(assert (=> b!702390 (=> (not res!466351) (not e!397407))))

(assert (=> b!702390 (= res!466351 (not (contains!3848 lt!317656 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702391 () Bool)

(declare-fun res!466354 () Bool)

(assert (=> b!702391 (=> (not res!466354) (not e!397406))))

(assert (=> b!702391 (= res!466354 (not (contains!3848 acc!652 k!2824)))))

(declare-fun b!702392 () Bool)

(declare-fun res!466360 () Bool)

(assert (=> b!702392 (=> (not res!466360) (not e!397406))))

(assert (=> b!702392 (= res!466360 (contains!3848 newAcc!49 k!2824))))

(assert (= (and start!62482 res!466352) b!702375))

(assert (= (and b!702375 res!466350) b!702387))

(assert (= (and b!702387 res!466349) b!702379))

(assert (= (and b!702379 res!466356) b!702365))

(assert (= (and b!702365 res!466348) b!702377))

(assert (= (and b!702377 res!466353) b!702391))

(assert (= (and b!702391 res!466354) b!702367))

(assert (= (and b!702367 res!466365) b!702376))

(assert (= (and b!702376 res!466371) b!702386))

(assert (= (and b!702386 res!466363) b!702392))

(assert (= (and b!702392 res!466360) b!702388))

(assert (= (and b!702388 res!466368) b!702381))

(assert (= (and b!702381 res!466376) b!702371))

(assert (= (and b!702371 res!466375) b!702382))

(assert (= (and b!702382 res!466362) b!702383))

(assert (= (and b!702383 res!466355) b!702373))

(assert (= (and b!702373 res!466372) b!702378))

(assert (= (and b!702378 res!466370) b!702372))

(assert (= (and b!702372 res!466359) b!702384))

(assert (= (and b!702384 res!466367) b!702390))

(assert (= (and b!702390 res!466351) b!702364))

(assert (= (and b!702364 res!466364) b!702368))

(assert (= (and b!702368 res!466373) b!702380))

(assert (= (and b!702380 res!466358) b!702389))

(assert (= (and b!702389 res!466366) b!702374))

(assert (= (and b!702374 res!466357) b!702385))

(assert (= (and b!702385 res!466369) b!702370))

(assert (= (and b!702370 res!466374) b!702366))

(assert (= (and b!702366 res!466361) b!702369))

(declare-fun m!661511 () Bool)

(assert (=> b!702371 m!661511))

(declare-fun m!661513 () Bool)

(assert (=> b!702385 m!661513))

(declare-fun m!661515 () Bool)

(assert (=> b!702379 m!661515))

(declare-fun m!661517 () Bool)

(assert (=> b!702369 m!661517))

(declare-fun m!661519 () Bool)

(assert (=> b!702369 m!661519))

(declare-fun m!661521 () Bool)

(assert (=> b!702383 m!661521))

(assert (=> b!702383 m!661521))

(declare-fun m!661523 () Bool)

(assert (=> b!702383 m!661523))

(declare-fun m!661525 () Bool)

(assert (=> b!702366 m!661525))

(declare-fun m!661527 () Bool)

(assert (=> start!62482 m!661527))

(declare-fun m!661529 () Bool)

(assert (=> b!702389 m!661529))

(declare-fun m!661531 () Bool)

(assert (=> b!702387 m!661531))

(declare-fun m!661533 () Bool)

(assert (=> b!702368 m!661533))

(declare-fun m!661535 () Bool)

(assert (=> b!702377 m!661535))

(declare-fun m!661537 () Bool)

(assert (=> b!702388 m!661537))

(declare-fun m!661539 () Bool)

(assert (=> b!702392 m!661539))

(assert (=> b!702373 m!661521))

(assert (=> b!702373 m!661521))

(declare-fun m!661541 () Bool)

(assert (=> b!702373 m!661541))

(assert (=> b!702373 m!661521))

(declare-fun m!661543 () Bool)

(assert (=> b!702373 m!661543))

(declare-fun m!661545 () Bool)

(assert (=> b!702374 m!661545))

(declare-fun m!661547 () Bool)

(assert (=> b!702376 m!661547))

(declare-fun m!661549 () Bool)

(assert (=> b!702378 m!661549))

(declare-fun m!661551 () Bool)

(assert (=> b!702367 m!661551))

(declare-fun m!661553 () Bool)

(assert (=> b!702390 m!661553))

(declare-fun m!661555 () Bool)

(assert (=> b!702364 m!661555))

(declare-fun m!661557 () Bool)

(assert (=> b!702384 m!661557))

(declare-fun m!661559 () Bool)

(assert (=> b!702365 m!661559))

(declare-fun m!661561 () Bool)

(assert (=> b!702380 m!661561))

(declare-fun m!661563 () Bool)

(assert (=> b!702386 m!661563))

(declare-fun m!661565 () Bool)

(assert (=> b!702375 m!661565))

(declare-fun m!661567 () Bool)

(assert (=> b!702381 m!661567))

(declare-fun m!661569 () Bool)

(assert (=> b!702372 m!661569))

(declare-fun m!661571 () Bool)

(assert (=> b!702370 m!661571))

(declare-fun m!661573 () Bool)

(assert (=> b!702391 m!661573))

(push 1)

(assert (not b!702365))

(assert (not start!62482))

(assert (not b!702369))

(assert (not b!702366))

