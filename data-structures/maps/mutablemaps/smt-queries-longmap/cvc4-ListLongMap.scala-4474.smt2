; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62248 () Bool)

(assert start!62248)

(declare-datatypes ((array!39961 0))(
  ( (array!39962 (arr!19136 (Array (_ BitVec 32) (_ BitVec 64))) (size!19519 (_ BitVec 32))) )
))
(declare-fun lt!317102 () array!39961)

(declare-fun b!697335 () Bool)

(declare-fun e!396376 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13230 0))(
  ( (Nil!13227) (Cons!13226 (h!14271 (_ BitVec 64)) (t!19520 List!13230)) )
))
(declare-fun acc!681 () List!13230)

(declare-fun arrayNoDuplicates!0 (array!39961 (_ BitVec 32) List!13230) Bool)

(assert (=> b!697335 (= e!396376 (not (arrayNoDuplicates!0 lt!317102 from!3004 acc!681)))))

(assert (=> b!697335 (arrayNoDuplicates!0 lt!317102 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun a!3626 () array!39961)

(assert (=> b!697335 (= lt!317102 (array!39962 (store (arr!19136 a!3626) i!1382 k!2843) (size!19519 a!3626)))))

(declare-datatypes ((Unit!24560 0))(
  ( (Unit!24561) )
))
(declare-fun lt!317103 () Unit!24560)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39961 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13230) Unit!24560)

(assert (=> b!697335 (= lt!317103 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697336 () Bool)

(declare-fun e!396369 () Bool)

(declare-fun contains!3773 (List!13230 (_ BitVec 64)) Bool)

(assert (=> b!697336 (= e!396369 (not (contains!3773 acc!681 k!2843)))))

(declare-fun b!697337 () Bool)

(declare-fun e!396370 () Bool)

(assert (=> b!697337 (= e!396370 e!396369)))

(declare-fun res!461441 () Bool)

(assert (=> b!697337 (=> (not res!461441) (not e!396369))))

(assert (=> b!697337 (= res!461441 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697338 () Bool)

(declare-fun res!461435 () Bool)

(assert (=> b!697338 (=> (not res!461435) (not e!396376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!697338 (= res!461435 (not (validKeyInArray!0 (select (arr!19136 a!3626) from!3004))))))

(declare-fun b!697339 () Bool)

(declare-fun res!461444 () Bool)

(assert (=> b!697339 (=> (not res!461444) (not e!396376))))

(declare-fun arrayContainsKey!0 (array!39961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!697339 (= res!461444 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!697340 () Bool)

(declare-fun res!461436 () Bool)

(assert (=> b!697340 (=> (not res!461436) (not e!396376))))

(assert (=> b!697340 (= res!461436 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697341 () Bool)

(declare-fun res!461440 () Bool)

(assert (=> b!697341 (=> (not res!461440) (not e!396376))))

(assert (=> b!697341 (= res!461440 e!396370)))

(declare-fun res!461428 () Bool)

(assert (=> b!697341 (=> res!461428 e!396370)))

(declare-fun e!396372 () Bool)

(assert (=> b!697341 (= res!461428 e!396372)))

(declare-fun res!461446 () Bool)

(assert (=> b!697341 (=> (not res!461446) (not e!396372))))

(assert (=> b!697341 (= res!461446 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697342 () Bool)

(declare-fun res!461427 () Bool)

(assert (=> b!697342 (=> (not res!461427) (not e!396376))))

(assert (=> b!697342 (= res!461427 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19519 a!3626))))))

(declare-fun b!697343 () Bool)

(declare-fun res!461443 () Bool)

(assert (=> b!697343 (=> (not res!461443) (not e!396376))))

(assert (=> b!697343 (= res!461443 (validKeyInArray!0 k!2843))))

(declare-fun b!697344 () Bool)

(declare-fun res!461430 () Bool)

(assert (=> b!697344 (=> (not res!461430) (not e!396376))))

(assert (=> b!697344 (= res!461430 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19519 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!697345 () Bool)

(declare-fun e!396375 () Bool)

(assert (=> b!697345 (= e!396375 (not (contains!3773 acc!681 k!2843)))))

(declare-fun b!697346 () Bool)

(declare-fun res!461438 () Bool)

(assert (=> b!697346 (=> (not res!461438) (not e!396376))))

(assert (=> b!697346 (= res!461438 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!697347 () Bool)

(declare-fun res!461431 () Bool)

(assert (=> b!697347 (=> (not res!461431) (not e!396376))))

(assert (=> b!697347 (= res!461431 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697348 () Bool)

(declare-fun res!461432 () Bool)

(assert (=> b!697348 (=> (not res!461432) (not e!396376))))

(declare-fun noDuplicate!1020 (List!13230) Bool)

(assert (=> b!697348 (= res!461432 (noDuplicate!1020 acc!681))))

(declare-fun b!697349 () Bool)

(declare-fun res!461445 () Bool)

(assert (=> b!697349 (=> (not res!461445) (not e!396376))))

(declare-fun e!396371 () Bool)

(assert (=> b!697349 (= res!461445 e!396371)))

(declare-fun res!461429 () Bool)

(assert (=> b!697349 (=> res!461429 e!396371)))

(declare-fun e!396374 () Bool)

(assert (=> b!697349 (= res!461429 e!396374)))

(declare-fun res!461434 () Bool)

(assert (=> b!697349 (=> (not res!461434) (not e!396374))))

(assert (=> b!697349 (= res!461434 (bvsgt from!3004 i!1382))))

(declare-fun b!697350 () Bool)

(declare-fun res!461442 () Bool)

(assert (=> b!697350 (=> (not res!461442) (not e!396376))))

(assert (=> b!697350 (= res!461442 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13227))))

(declare-fun b!697351 () Bool)

(declare-fun res!461439 () Bool)

(assert (=> b!697351 (=> (not res!461439) (not e!396376))))

(assert (=> b!697351 (= res!461439 (not (contains!3773 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!461437 () Bool)

(assert (=> start!62248 (=> (not res!461437) (not e!396376))))

(assert (=> start!62248 (= res!461437 (and (bvslt (size!19519 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19519 a!3626))))))

(assert (=> start!62248 e!396376))

(assert (=> start!62248 true))

(declare-fun array_inv!14910 (array!39961) Bool)

(assert (=> start!62248 (array_inv!14910 a!3626)))

(declare-fun b!697352 () Bool)

(assert (=> b!697352 (= e!396374 (contains!3773 acc!681 k!2843))))

(declare-fun b!697353 () Bool)

(assert (=> b!697353 (= e!396371 e!396375)))

(declare-fun res!461447 () Bool)

(assert (=> b!697353 (=> (not res!461447) (not e!396375))))

(assert (=> b!697353 (= res!461447 (bvsle from!3004 i!1382))))

(declare-fun b!697354 () Bool)

(assert (=> b!697354 (= e!396372 (contains!3773 acc!681 k!2843))))

(declare-fun b!697355 () Bool)

(declare-fun res!461433 () Bool)

(assert (=> b!697355 (=> (not res!461433) (not e!396376))))

(assert (=> b!697355 (= res!461433 (not (contains!3773 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62248 res!461437) b!697348))

(assert (= (and b!697348 res!461432) b!697351))

(assert (= (and b!697351 res!461439) b!697355))

(assert (= (and b!697355 res!461433) b!697349))

(assert (= (and b!697349 res!461434) b!697352))

(assert (= (and b!697349 (not res!461429)) b!697353))

(assert (= (and b!697353 res!461447) b!697345))

(assert (= (and b!697349 res!461445) b!697350))

(assert (= (and b!697350 res!461442) b!697340))

(assert (= (and b!697340 res!461436) b!697342))

(assert (= (and b!697342 res!461427) b!697343))

(assert (= (and b!697343 res!461443) b!697339))

(assert (= (and b!697339 res!461444) b!697344))

(assert (= (and b!697344 res!461430) b!697338))

(assert (= (and b!697338 res!461435) b!697346))

(assert (= (and b!697346 res!461438) b!697341))

(assert (= (and b!697341 res!461446) b!697354))

(assert (= (and b!697341 (not res!461428)) b!697337))

(assert (= (and b!697337 res!461441) b!697336))

(assert (= (and b!697341 res!461440) b!697347))

(assert (= (and b!697347 res!461431) b!697335))

(declare-fun m!657763 () Bool)

(assert (=> b!697338 m!657763))

(assert (=> b!697338 m!657763))

(declare-fun m!657765 () Bool)

(assert (=> b!697338 m!657765))

(declare-fun m!657767 () Bool)

(assert (=> b!697354 m!657767))

(declare-fun m!657769 () Bool)

(assert (=> b!697348 m!657769))

(declare-fun m!657771 () Bool)

(assert (=> b!697335 m!657771))

(declare-fun m!657773 () Bool)

(assert (=> b!697335 m!657773))

(declare-fun m!657775 () Bool)

(assert (=> b!697335 m!657775))

(declare-fun m!657777 () Bool)

(assert (=> b!697335 m!657777))

(assert (=> b!697336 m!657767))

(declare-fun m!657779 () Bool)

(assert (=> b!697347 m!657779))

(assert (=> b!697352 m!657767))

(declare-fun m!657781 () Bool)

(assert (=> b!697350 m!657781))

(declare-fun m!657783 () Bool)

(assert (=> b!697351 m!657783))

(declare-fun m!657785 () Bool)

(assert (=> start!62248 m!657785))

(assert (=> b!697345 m!657767))

(declare-fun m!657787 () Bool)

(assert (=> b!697340 m!657787))

(declare-fun m!657789 () Bool)

(assert (=> b!697339 m!657789))

(declare-fun m!657791 () Bool)

(assert (=> b!697343 m!657791))

(declare-fun m!657793 () Bool)

(assert (=> b!697355 m!657793))

(push 1)

(assert (not b!697336))

(assert (not b!697354))

(assert (not b!697350))

(assert (not b!697338))

(assert (not b!697355))

(assert (not b!697352))

(assert (not b!697348))

(assert (not b!697339))

(assert (not b!697343))

(assert (not start!62248))

(assert (not b!697345))

(assert (not b!697335))

(assert (not b!697340))

(assert (not b!697347))

(assert (not b!697351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!78330 () Bool)

(declare-fun call!34320 () Bool)

(declare-fun bm!34317 () Bool)

(assert (=> bm!34317 (= call!34320 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78330 (Cons!13226 (select (arr!19136 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!697438 () Bool)

(declare-fun e!396452 () Bool)

(assert (=> b!697438 (= e!396452 call!34320)))

(declare-fun b!697439 () Bool)

(assert (=> b!697439 (= e!396452 call!34320)))

(declare-fun b!697441 () Bool)

(declare-fun e!396450 () Bool)

(declare-fun e!396451 () Bool)

(assert (=> b!697441 (= e!396450 e!396451)))

(declare-fun res!461514 () Bool)

(assert (=> b!697441 (=> (not res!461514) (not e!396451))))

(declare-fun e!396453 () Bool)

(assert (=> b!697441 (= res!461514 (not e!396453))))

(declare-fun res!461513 () Bool)

(assert (=> b!697441 (=> (not res!461513) (not e!396453))))

(assert (=> b!697441 (= res!461513 (validKeyInArray!0 (select (arr!19136 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697442 () Bool)

(assert (=> b!697442 (= e!396451 e!396452)))

(assert (=> b!697442 (= c!78330 (validKeyInArray!0 (select (arr!19136 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697440 () Bool)

(assert (=> b!697440 (= e!396453 (contains!3773 acc!681 (select (arr!19136 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!96057 () Bool)

(declare-fun res!461512 () Bool)

(assert (=> d!96057 (=> res!461512 e!396450)))

(assert (=> d!96057 (= res!461512 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19519 a!3626)))))

(assert (=> d!96057 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!396450)))

(assert (= (and d!96057 (not res!461512)) b!697441))

(assert (= (and b!697441 res!461513) b!697440))

(assert (= (and b!697441 res!461514) b!697442))

(assert (= (and b!697442 c!78330) b!697439))

(assert (= (and b!697442 (not c!78330)) b!697438))

(assert (= (or b!697439 b!697438) bm!34317))

(declare-fun m!657865 () Bool)

(assert (=> bm!34317 m!657865))

(declare-fun m!657867 () Bool)

(assert (=> bm!34317 m!657867))

(assert (=> b!697441 m!657865))

(assert (=> b!697441 m!657865))

(declare-fun m!657869 () Bool)

(assert (=> b!697441 m!657869))

(assert (=> b!697442 m!657865))

(assert (=> b!697442 m!657865))

(assert (=> b!697442 m!657869))

(assert (=> b!697440 m!657865))

(assert (=> b!697440 m!657865))

(declare-fun m!657871 () Bool)

(assert (=> b!697440 m!657871))

(assert (=> b!697347 d!96057))

(declare-fun d!96069 () Bool)

(declare-fun lt!317117 () Bool)

(declare-fun content!330 (List!13230) (Set (_ BitVec 64)))

(assert (=> d!96069 (= lt!317117 (member k!2843 (content!330 acc!681)))))

(declare-fun e!396474 () Bool)

(assert (=> d!96069 (= lt!317117 e!396474)))

(declare-fun res!461531 () Bool)

(assert (=> d!96069 (=> (not res!461531) (not e!396474))))

(assert (=> d!96069 (= res!461531 (is-Cons!13226 acc!681))))

(assert (=> d!96069 (= (contains!3773 acc!681 k!2843) lt!317117)))

(declare-fun b!697467 () Bool)

(declare-fun e!396475 () Bool)

(assert (=> b!697467 (= e!396474 e!396475)))

(declare-fun res!461532 () Bool)

(assert (=> b!697467 (=> res!461532 e!396475)))

(assert (=> b!697467 (= res!461532 (= (h!14271 acc!681) k!2843))))

(declare-fun b!697468 () Bool)

(assert (=> b!697468 (= e!396475 (contains!3773 (t!19520 acc!681) k!2843))))

(assert (= (and d!96069 res!461531) b!697467))

(assert (= (and b!697467 (not res!461532)) b!697468))

(declare-fun m!657883 () Bool)

(assert (=> d!96069 m!657883))

(declare-fun m!657885 () Bool)

(assert (=> d!96069 m!657885))

(declare-fun m!657887 () Bool)

(assert (=> b!697468 m!657887))

(assert (=> b!697336 d!96069))

(declare-fun call!34325 () Bool)

(declare-fun bm!34322 () Bool)

(declare-fun c!78335 () Bool)

(assert (=> bm!34322 (= call!34325 (arrayNoDuplicates!0 lt!317102 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78335 (Cons!13226 (select (arr!19136 lt!317102) from!3004) acc!681) acc!681)))))

(declare-fun b!697469 () Bool)

(declare-fun e!396478 () Bool)

(assert (=> b!697469 (= e!396478 call!34325)))

(declare-fun b!697470 () Bool)

(assert (=> b!697470 (= e!396478 call!34325)))

(declare-fun b!697472 () Bool)

(declare-fun e!396476 () Bool)

(declare-fun e!396477 () Bool)

(assert (=> b!697472 (= e!396476 e!396477)))

(declare-fun res!461535 () Bool)

(assert (=> b!697472 (=> (not res!461535) (not e!396477))))

(declare-fun e!396479 () Bool)

(assert (=> b!697472 (= res!461535 (not e!396479))))

(declare-fun res!461534 () Bool)

(assert (=> b!697472 (=> (not res!461534) (not e!396479))))

(assert (=> b!697472 (= res!461534 (validKeyInArray!0 (select (arr!19136 lt!317102) from!3004)))))

(declare-fun b!697473 () Bool)

(assert (=> b!697473 (= e!396477 e!396478)))

(assert (=> b!697473 (= c!78335 (validKeyInArray!0 (select (arr!19136 lt!317102) from!3004)))))

(declare-fun b!697471 () Bool)

(assert (=> b!697471 (= e!396479 (contains!3773 acc!681 (select (arr!19136 lt!317102) from!3004)))))

(declare-fun d!96073 () Bool)

(declare-fun res!461533 () Bool)

(assert (=> d!96073 (=> res!461533 e!396476)))

(assert (=> d!96073 (= res!461533 (bvsge from!3004 (size!19519 lt!317102)))))

(assert (=> d!96073 (= (arrayNoDuplicates!0 lt!317102 from!3004 acc!681) e!396476)))

(assert (= (and d!96073 (not res!461533)) b!697472))

(assert (= (and b!697472 res!461534) b!697471))

(assert (= (and b!697472 res!461535) b!697473))

(assert (= (and b!697473 c!78335) b!697470))

(assert (= (and b!697473 (not c!78335)) b!697469))

(assert (= (or b!697470 b!697469) bm!34322))

(declare-fun m!657891 () Bool)

(assert (=> bm!34322 m!657891))

(declare-fun m!657895 () Bool)

(assert (=> bm!34322 m!657895))

(assert (=> b!697472 m!657891))

(assert (=> b!697472 m!657891))

(declare-fun m!657901 () Bool)

(assert (=> b!697472 m!657901))

(assert (=> b!697473 m!657891))

(assert (=> b!697473 m!657891))

(assert (=> b!697473 m!657901))

(assert (=> b!697471 m!657891))

(assert (=> b!697471 m!657891))

(declare-fun m!657905 () Bool)

(assert (=> b!697471 m!657905))

(assert (=> b!697335 d!96073))

(declare-fun bm!34324 () Bool)

(declare-fun c!78337 () Bool)

(declare-fun call!34327 () Bool)

(assert (=> bm!34324 (= call!34327 (arrayNoDuplicates!0 lt!317102 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78337 (Cons!13226 (select (arr!19136 lt!317102) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!697479 () Bool)

(declare-fun e!396486 () Bool)

(assert (=> b!697479 (= e!396486 call!34327)))

(declare-fun b!697480 () Bool)

(assert (=> b!697480 (= e!396486 call!34327)))

(declare-fun b!697482 () Bool)

(declare-fun e!396484 () Bool)

(declare-fun e!396485 () Bool)

(assert (=> b!697482 (= e!396484 e!396485)))

(declare-fun res!461541 () Bool)

(assert (=> b!697482 (=> (not res!461541) (not e!396485))))

(declare-fun e!396487 () Bool)

(assert (=> b!697482 (= res!461541 (not e!396487))))

(declare-fun res!461540 () Bool)

(assert (=> b!697482 (=> (not res!461540) (not e!396487))))

(assert (=> b!697482 (= res!461540 (validKeyInArray!0 (select (arr!19136 lt!317102) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697483 () Bool)

(assert (=> b!697483 (= e!396485 e!396486)))

(assert (=> b!697483 (= c!78337 (validKeyInArray!0 (select (arr!19136 lt!317102) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697481 () Bool)

(assert (=> b!697481 (= e!396487 (contains!3773 acc!681 (select (arr!19136 lt!317102) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!96079 () Bool)

(declare-fun res!461539 () Bool)

(assert (=> d!96079 (=> res!461539 e!396484)))

(assert (=> d!96079 (= res!461539 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19519 lt!317102)))))

(assert (=> d!96079 (= (arrayNoDuplicates!0 lt!317102 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!396484)))

(assert (= (and d!96079 (not res!461539)) b!697482))

(assert (= (and b!697482 res!461540) b!697481))

(assert (= (and b!697482 res!461541) b!697483))

(assert (= (and b!697483 c!78337) b!697480))

(assert (= (and b!697483 (not c!78337)) b!697479))

(assert (= (or b!697480 b!697479) bm!34324))

(declare-fun m!657907 () Bool)

(assert (=> bm!34324 m!657907))

(declare-fun m!657909 () Bool)

(assert (=> bm!34324 m!657909))

(assert (=> b!697482 m!657907))

(assert (=> b!697482 m!657907))

(declare-fun m!657911 () Bool)

(assert (=> b!697482 m!657911))

(assert (=> b!697483 m!657907))

(assert (=> b!697483 m!657907))

(assert (=> b!697483 m!657911))

(assert (=> b!697481 m!657907))

(assert (=> b!697481 m!657907))

(declare-fun m!657913 () Bool)

(assert (=> b!697481 m!657913))

(assert (=> b!697335 d!96079))

(declare-fun d!96081 () Bool)

(declare-fun e!396497 () Bool)

(assert (=> d!96081 e!396497))

(declare-fun res!461550 () Bool)

(assert (=> d!96081 (=> (not res!461550) (not e!396497))))

(assert (=> d!96081 (= res!461550 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19519 a!3626))))))

(declare-fun lt!317123 () Unit!24560)

(declare-fun choose!41 (array!39961 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13230) Unit!24560)

(assert (=> d!96081 (= lt!317123 (choose!41 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (=> d!96081 (bvslt (size!19519 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!96081 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) lt!317123)))

(declare-fun b!697494 () Bool)

(assert (=> b!697494 (= e!396497 (arrayNoDuplicates!0 (array!39962 (store (arr!19136 a!3626) i!1382 k!2843) (size!19519 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (= (and d!96081 res!461550) b!697494))

(declare-fun m!657927 () Bool)

(assert (=> d!96081 m!657927))

(assert (=> b!697494 m!657775))

(declare-fun m!657929 () Bool)

