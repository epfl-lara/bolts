; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62246 () Bool)

(assert start!62246)

(declare-fun b!697272 () Bool)

(declare-fun e!396350 () Bool)

(declare-datatypes ((List!13229 0))(
  ( (Nil!13226) (Cons!13225 (h!14270 (_ BitVec 64)) (t!19519 List!13229)) )
))
(declare-fun acc!681 () List!13229)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3772 (List!13229 (_ BitVec 64)) Bool)

(assert (=> b!697272 (= e!396350 (contains!3772 acc!681 k0!2843))))

(declare-fun b!697273 () Bool)

(declare-fun res!461375 () Bool)

(declare-fun e!396349 () Bool)

(assert (=> b!697273 (=> (not res!461375) (not e!396349))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!697273 (= res!461375 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!697274 () Bool)

(declare-fun res!461365 () Bool)

(assert (=> b!697274 (=> (not res!461365) (not e!396349))))

(declare-datatypes ((array!39959 0))(
  ( (array!39960 (arr!19135 (Array (_ BitVec 32) (_ BitVec 64))) (size!19518 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39959)

(declare-fun arrayNoDuplicates!0 (array!39959 (_ BitVec 32) List!13229) Bool)

(assert (=> b!697274 (= res!461365 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697275 () Bool)

(declare-fun e!396346 () Bool)

(assert (=> b!697275 (= e!396346 (contains!3772 acc!681 k0!2843))))

(declare-fun b!697276 () Bool)

(declare-fun res!461383 () Bool)

(assert (=> b!697276 (=> (not res!461383) (not e!396349))))

(assert (=> b!697276 (= res!461383 (not (contains!3772 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697277 () Bool)

(declare-fun res!461368 () Bool)

(assert (=> b!697277 (=> (not res!461368) (not e!396349))))

(assert (=> b!697277 (= res!461368 (not (contains!3772 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!317096 () array!39959)

(declare-fun b!697278 () Bool)

(assert (=> b!697278 (= e!396349 (not (arrayNoDuplicates!0 lt!317096 from!3004 acc!681)))))

(assert (=> b!697278 (arrayNoDuplicates!0 lt!317096 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!697278 (= lt!317096 (array!39960 (store (arr!19135 a!3626) i!1382 k0!2843) (size!19518 a!3626)))))

(declare-datatypes ((Unit!24558 0))(
  ( (Unit!24559) )
))
(declare-fun lt!317097 () Unit!24558)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39959 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13229) Unit!24558)

(assert (=> b!697278 (= lt!317097 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697279 () Bool)

(declare-fun e!396345 () Bool)

(declare-fun e!396352 () Bool)

(assert (=> b!697279 (= e!396345 e!396352)))

(declare-fun res!461374 () Bool)

(assert (=> b!697279 (=> (not res!461374) (not e!396352))))

(assert (=> b!697279 (= res!461374 (bvsle from!3004 i!1382))))

(declare-fun b!697280 () Bool)

(declare-fun res!461384 () Bool)

(assert (=> b!697280 (=> (not res!461384) (not e!396349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!697280 (= res!461384 (not (validKeyInArray!0 (select (arr!19135 a!3626) from!3004))))))

(declare-fun b!697281 () Bool)

(declare-fun res!461382 () Bool)

(assert (=> b!697281 (=> (not res!461382) (not e!396349))))

(assert (=> b!697281 (= res!461382 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13226))))

(declare-fun b!697282 () Bool)

(declare-fun res!461380 () Bool)

(assert (=> b!697282 (=> (not res!461380) (not e!396349))))

(assert (=> b!697282 (= res!461380 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19518 a!3626))))))

(declare-fun b!697283 () Bool)

(declare-fun res!461364 () Bool)

(assert (=> b!697283 (=> (not res!461364) (not e!396349))))

(assert (=> b!697283 (= res!461364 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697284 () Bool)

(declare-fun res!461379 () Bool)

(assert (=> b!697284 (=> (not res!461379) (not e!396349))))

(declare-fun arrayContainsKey!0 (array!39959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!697284 (= res!461379 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!697285 () Bool)

(declare-fun e!396348 () Bool)

(declare-fun e!396351 () Bool)

(assert (=> b!697285 (= e!396348 e!396351)))

(declare-fun res!461376 () Bool)

(assert (=> b!697285 (=> (not res!461376) (not e!396351))))

(assert (=> b!697285 (= res!461376 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697286 () Bool)

(declare-fun res!461369 () Bool)

(assert (=> b!697286 (=> (not res!461369) (not e!396349))))

(assert (=> b!697286 (= res!461369 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19518 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!697287 () Bool)

(assert (=> b!697287 (= e!396351 (not (contains!3772 acc!681 k0!2843)))))

(declare-fun b!697288 () Bool)

(declare-fun res!461372 () Bool)

(assert (=> b!697288 (=> (not res!461372) (not e!396349))))

(assert (=> b!697288 (= res!461372 e!396345)))

(declare-fun res!461366 () Bool)

(assert (=> b!697288 (=> res!461366 e!396345)))

(assert (=> b!697288 (= res!461366 e!396346)))

(declare-fun res!461377 () Bool)

(assert (=> b!697288 (=> (not res!461377) (not e!396346))))

(assert (=> b!697288 (= res!461377 (bvsgt from!3004 i!1382))))

(declare-fun b!697289 () Bool)

(declare-fun res!461373 () Bool)

(assert (=> b!697289 (=> (not res!461373) (not e!396349))))

(assert (=> b!697289 (= res!461373 e!396348)))

(declare-fun res!461378 () Bool)

(assert (=> b!697289 (=> res!461378 e!396348)))

(assert (=> b!697289 (= res!461378 e!396350)))

(declare-fun res!461381 () Bool)

(assert (=> b!697289 (=> (not res!461381) (not e!396350))))

(assert (=> b!697289 (= res!461381 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697290 () Bool)

(assert (=> b!697290 (= e!396352 (not (contains!3772 acc!681 k0!2843)))))

(declare-fun res!461371 () Bool)

(assert (=> start!62246 (=> (not res!461371) (not e!396349))))

(assert (=> start!62246 (= res!461371 (and (bvslt (size!19518 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19518 a!3626))))))

(assert (=> start!62246 e!396349))

(assert (=> start!62246 true))

(declare-fun array_inv!14909 (array!39959) Bool)

(assert (=> start!62246 (array_inv!14909 a!3626)))

(declare-fun b!697291 () Bool)

(declare-fun res!461370 () Bool)

(assert (=> b!697291 (=> (not res!461370) (not e!396349))))

(declare-fun noDuplicate!1019 (List!13229) Bool)

(assert (=> b!697291 (= res!461370 (noDuplicate!1019 acc!681))))

(declare-fun b!697292 () Bool)

(declare-fun res!461367 () Bool)

(assert (=> b!697292 (=> (not res!461367) (not e!396349))))

(assert (=> b!697292 (= res!461367 (validKeyInArray!0 k0!2843))))

(assert (= (and start!62246 res!461371) b!697291))

(assert (= (and b!697291 res!461370) b!697277))

(assert (= (and b!697277 res!461368) b!697276))

(assert (= (and b!697276 res!461383) b!697288))

(assert (= (and b!697288 res!461377) b!697275))

(assert (= (and b!697288 (not res!461366)) b!697279))

(assert (= (and b!697279 res!461374) b!697290))

(assert (= (and b!697288 res!461372) b!697281))

(assert (= (and b!697281 res!461382) b!697274))

(assert (= (and b!697274 res!461365) b!697282))

(assert (= (and b!697282 res!461380) b!697292))

(assert (= (and b!697292 res!461367) b!697284))

(assert (= (and b!697284 res!461379) b!697286))

(assert (= (and b!697286 res!461369) b!697280))

(assert (= (and b!697280 res!461384) b!697273))

(assert (= (and b!697273 res!461375) b!697289))

(assert (= (and b!697289 res!461381) b!697272))

(assert (= (and b!697289 (not res!461378)) b!697285))

(assert (= (and b!697285 res!461376) b!697287))

(assert (= (and b!697289 res!461373) b!697283))

(assert (= (and b!697283 res!461364) b!697278))

(declare-fun m!657731 () Bool)

(assert (=> b!697278 m!657731))

(declare-fun m!657733 () Bool)

(assert (=> b!697278 m!657733))

(declare-fun m!657735 () Bool)

(assert (=> b!697278 m!657735))

(declare-fun m!657737 () Bool)

(assert (=> b!697278 m!657737))

(declare-fun m!657739 () Bool)

(assert (=> b!697281 m!657739))

(declare-fun m!657741 () Bool)

(assert (=> b!697274 m!657741))

(declare-fun m!657743 () Bool)

(assert (=> b!697275 m!657743))

(assert (=> b!697287 m!657743))

(declare-fun m!657745 () Bool)

(assert (=> start!62246 m!657745))

(assert (=> b!697272 m!657743))

(declare-fun m!657747 () Bool)

(assert (=> b!697283 m!657747))

(declare-fun m!657749 () Bool)

(assert (=> b!697276 m!657749))

(declare-fun m!657751 () Bool)

(assert (=> b!697292 m!657751))

(declare-fun m!657753 () Bool)

(assert (=> b!697277 m!657753))

(assert (=> b!697290 m!657743))

(declare-fun m!657755 () Bool)

(assert (=> b!697280 m!657755))

(assert (=> b!697280 m!657755))

(declare-fun m!657757 () Bool)

(assert (=> b!697280 m!657757))

(declare-fun m!657759 () Bool)

(assert (=> b!697284 m!657759))

(declare-fun m!657761 () Bool)

(assert (=> b!697291 m!657761))

(check-sat (not b!697287) (not b!697278) (not b!697277) (not b!697283) (not b!697292) (not b!697290) (not b!697281) (not b!697291) (not start!62246) (not b!697276) (not b!697272) (not b!697284) (not b!697275) (not b!697280) (not b!697274))
(check-sat)
(get-model)

(declare-fun d!96029 () Bool)

(declare-fun lt!317106 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!328 (List!13229) (InoxSet (_ BitVec 64)))

(assert (=> d!96029 (= lt!317106 (select (content!328 acc!681) k0!2843))))

(declare-fun e!396381 () Bool)

(assert (=> d!96029 (= lt!317106 e!396381)))

(declare-fun res!461452 () Bool)

(assert (=> d!96029 (=> (not res!461452) (not e!396381))))

(get-info :version)

(assert (=> d!96029 (= res!461452 ((_ is Cons!13225) acc!681))))

(assert (=> d!96029 (= (contains!3772 acc!681 k0!2843) lt!317106)))

(declare-fun b!697360 () Bool)

(declare-fun e!396382 () Bool)

(assert (=> b!697360 (= e!396381 e!396382)))

(declare-fun res!461453 () Bool)

(assert (=> b!697360 (=> res!461453 e!396382)))

(assert (=> b!697360 (= res!461453 (= (h!14270 acc!681) k0!2843))))

(declare-fun b!697361 () Bool)

(assert (=> b!697361 (= e!396382 (contains!3772 (t!19519 acc!681) k0!2843))))

(assert (= (and d!96029 res!461452) b!697360))

(assert (= (and b!697360 (not res!461453)) b!697361))

(declare-fun m!657795 () Bool)

(assert (=> d!96029 m!657795))

(declare-fun m!657797 () Bool)

(assert (=> d!96029 m!657797))

(declare-fun m!657799 () Bool)

(assert (=> b!697361 m!657799))

(assert (=> b!697275 d!96029))

(declare-fun d!96031 () Bool)

(assert (=> d!96031 (= (array_inv!14909 a!3626) (bvsge (size!19518 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!62246 d!96031))

(declare-fun e!396393 () Bool)

(declare-fun b!697372 () Bool)

(assert (=> b!697372 (= e!396393 (contains!3772 acc!681 (select (arr!19135 a!3626) from!3004)))))

(declare-fun b!697373 () Bool)

(declare-fun e!396394 () Bool)

(declare-fun e!396392 () Bool)

(assert (=> b!697373 (= e!396394 e!396392)))

(declare-fun res!461462 () Bool)

(assert (=> b!697373 (=> (not res!461462) (not e!396392))))

(assert (=> b!697373 (= res!461462 (not e!396393))))

(declare-fun res!461461 () Bool)

(assert (=> b!697373 (=> (not res!461461) (not e!396393))))

(assert (=> b!697373 (= res!461461 (validKeyInArray!0 (select (arr!19135 a!3626) from!3004)))))

(declare-fun b!697374 () Bool)

(declare-fun e!396391 () Bool)

(declare-fun call!34313 () Bool)

(assert (=> b!697374 (= e!396391 call!34313)))

(declare-fun b!697375 () Bool)

(assert (=> b!697375 (= e!396391 call!34313)))

(declare-fun bm!34310 () Bool)

(declare-fun c!78323 () Bool)

(assert (=> bm!34310 (= call!34313 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78323 (Cons!13225 (select (arr!19135 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!697376 () Bool)

(assert (=> b!697376 (= e!396392 e!396391)))

(assert (=> b!697376 (= c!78323 (validKeyInArray!0 (select (arr!19135 a!3626) from!3004)))))

(declare-fun d!96033 () Bool)

(declare-fun res!461460 () Bool)

(assert (=> d!96033 (=> res!461460 e!396394)))

(assert (=> d!96033 (= res!461460 (bvsge from!3004 (size!19518 a!3626)))))

(assert (=> d!96033 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!396394)))

(assert (= (and d!96033 (not res!461460)) b!697373))

(assert (= (and b!697373 res!461461) b!697372))

(assert (= (and b!697373 res!461462) b!697376))

(assert (= (and b!697376 c!78323) b!697375))

(assert (= (and b!697376 (not c!78323)) b!697374))

(assert (= (or b!697375 b!697374) bm!34310))

(assert (=> b!697372 m!657755))

(assert (=> b!697372 m!657755))

(declare-fun m!657801 () Bool)

(assert (=> b!697372 m!657801))

(assert (=> b!697373 m!657755))

(assert (=> b!697373 m!657755))

(assert (=> b!697373 m!657757))

(assert (=> bm!34310 m!657755))

(declare-fun m!657803 () Bool)

(assert (=> bm!34310 m!657803))

(assert (=> b!697376 m!657755))

(assert (=> b!697376 m!657755))

(assert (=> b!697376 m!657757))

(assert (=> b!697274 d!96033))

(declare-fun d!96035 () Bool)

(declare-fun res!461467 () Bool)

(declare-fun e!396399 () Bool)

(assert (=> d!96035 (=> res!461467 e!396399)))

(assert (=> d!96035 (= res!461467 (= (select (arr!19135 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!96035 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!396399)))

(declare-fun b!697381 () Bool)

(declare-fun e!396400 () Bool)

(assert (=> b!697381 (= e!396399 e!396400)))

(declare-fun res!461468 () Bool)

(assert (=> b!697381 (=> (not res!461468) (not e!396400))))

(assert (=> b!697381 (= res!461468 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19518 a!3626)))))

(declare-fun b!697382 () Bool)

(assert (=> b!697382 (= e!396400 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!96035 (not res!461467)) b!697381))

(assert (= (and b!697381 res!461468) b!697382))

(declare-fun m!657805 () Bool)

(assert (=> d!96035 m!657805))

(declare-fun m!657807 () Bool)

(assert (=> b!697382 m!657807))

(assert (=> b!697284 d!96035))

(declare-fun b!697383 () Bool)

(declare-fun e!396403 () Bool)

(assert (=> b!697383 (= e!396403 (contains!3772 acc!681 (select (arr!19135 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697384 () Bool)

(declare-fun e!396404 () Bool)

(declare-fun e!396402 () Bool)

(assert (=> b!697384 (= e!396404 e!396402)))

(declare-fun res!461471 () Bool)

(assert (=> b!697384 (=> (not res!461471) (not e!396402))))

(assert (=> b!697384 (= res!461471 (not e!396403))))

(declare-fun res!461470 () Bool)

(assert (=> b!697384 (=> (not res!461470) (not e!396403))))

(assert (=> b!697384 (= res!461470 (validKeyInArray!0 (select (arr!19135 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697385 () Bool)

(declare-fun e!396401 () Bool)

(declare-fun call!34314 () Bool)

(assert (=> b!697385 (= e!396401 call!34314)))

(declare-fun b!697386 () Bool)

(assert (=> b!697386 (= e!396401 call!34314)))

(declare-fun c!78324 () Bool)

(declare-fun bm!34311 () Bool)

(assert (=> bm!34311 (= call!34314 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78324 (Cons!13225 (select (arr!19135 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!697387 () Bool)

(assert (=> b!697387 (= e!396402 e!396401)))

(assert (=> b!697387 (= c!78324 (validKeyInArray!0 (select (arr!19135 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!96037 () Bool)

(declare-fun res!461469 () Bool)

(assert (=> d!96037 (=> res!461469 e!396404)))

(assert (=> d!96037 (= res!461469 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19518 a!3626)))))

(assert (=> d!96037 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!396404)))

(assert (= (and d!96037 (not res!461469)) b!697384))

(assert (= (and b!697384 res!461470) b!697383))

(assert (= (and b!697384 res!461471) b!697387))

(assert (= (and b!697387 c!78324) b!697386))

(assert (= (and b!697387 (not c!78324)) b!697385))

(assert (= (or b!697386 b!697385) bm!34311))

(declare-fun m!657809 () Bool)

(assert (=> b!697383 m!657809))

(assert (=> b!697383 m!657809))

(declare-fun m!657811 () Bool)

(assert (=> b!697383 m!657811))

(assert (=> b!697384 m!657809))

(assert (=> b!697384 m!657809))

(declare-fun m!657813 () Bool)

(assert (=> b!697384 m!657813))

(assert (=> bm!34311 m!657809))

(declare-fun m!657815 () Bool)

(assert (=> bm!34311 m!657815))

(assert (=> b!697387 m!657809))

(assert (=> b!697387 m!657809))

(assert (=> b!697387 m!657813))

(assert (=> b!697283 d!96037))

(assert (=> b!697272 d!96029))

(declare-fun b!697388 () Bool)

(declare-fun e!396407 () Bool)

(assert (=> b!697388 (= e!396407 (contains!3772 Nil!13226 (select (arr!19135 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!697389 () Bool)

(declare-fun e!396408 () Bool)

(declare-fun e!396406 () Bool)

(assert (=> b!697389 (= e!396408 e!396406)))

(declare-fun res!461474 () Bool)

(assert (=> b!697389 (=> (not res!461474) (not e!396406))))

(assert (=> b!697389 (= res!461474 (not e!396407))))

(declare-fun res!461473 () Bool)

(assert (=> b!697389 (=> (not res!461473) (not e!396407))))

(assert (=> b!697389 (= res!461473 (validKeyInArray!0 (select (arr!19135 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!697390 () Bool)

(declare-fun e!396405 () Bool)

(declare-fun call!34315 () Bool)

(assert (=> b!697390 (= e!396405 call!34315)))

(declare-fun b!697391 () Bool)

(assert (=> b!697391 (= e!396405 call!34315)))

(declare-fun bm!34312 () Bool)

(declare-fun c!78325 () Bool)

(assert (=> bm!34312 (= call!34315 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78325 (Cons!13225 (select (arr!19135 a!3626) #b00000000000000000000000000000000) Nil!13226) Nil!13226)))))

(declare-fun b!697392 () Bool)

(assert (=> b!697392 (= e!396406 e!396405)))

(assert (=> b!697392 (= c!78325 (validKeyInArray!0 (select (arr!19135 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!96039 () Bool)

(declare-fun res!461472 () Bool)

(assert (=> d!96039 (=> res!461472 e!396408)))

(assert (=> d!96039 (= res!461472 (bvsge #b00000000000000000000000000000000 (size!19518 a!3626)))))

(assert (=> d!96039 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13226) e!396408)))

(assert (= (and d!96039 (not res!461472)) b!697389))

(assert (= (and b!697389 res!461473) b!697388))

(assert (= (and b!697389 res!461474) b!697392))

(assert (= (and b!697392 c!78325) b!697391))

(assert (= (and b!697392 (not c!78325)) b!697390))

(assert (= (or b!697391 b!697390) bm!34312))

(assert (=> b!697388 m!657805))

(assert (=> b!697388 m!657805))

(declare-fun m!657817 () Bool)

(assert (=> b!697388 m!657817))

(assert (=> b!697389 m!657805))

(assert (=> b!697389 m!657805))

(declare-fun m!657819 () Bool)

(assert (=> b!697389 m!657819))

(assert (=> bm!34312 m!657805))

(declare-fun m!657821 () Bool)

(assert (=> bm!34312 m!657821))

(assert (=> b!697392 m!657805))

(assert (=> b!697392 m!657805))

(assert (=> b!697392 m!657819))

(assert (=> b!697281 d!96039))

(declare-fun d!96041 () Bool)

(assert (=> d!96041 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!697292 d!96041))

(declare-fun d!96043 () Bool)

(declare-fun res!461479 () Bool)

(declare-fun e!396413 () Bool)

(assert (=> d!96043 (=> res!461479 e!396413)))

(assert (=> d!96043 (= res!461479 ((_ is Nil!13226) acc!681))))

(assert (=> d!96043 (= (noDuplicate!1019 acc!681) e!396413)))

(declare-fun b!697397 () Bool)

(declare-fun e!396414 () Bool)

(assert (=> b!697397 (= e!396413 e!396414)))

(declare-fun res!461480 () Bool)

(assert (=> b!697397 (=> (not res!461480) (not e!396414))))

(assert (=> b!697397 (= res!461480 (not (contains!3772 (t!19519 acc!681) (h!14270 acc!681))))))

(declare-fun b!697398 () Bool)

(assert (=> b!697398 (= e!396414 (noDuplicate!1019 (t!19519 acc!681)))))

(assert (= (and d!96043 (not res!461479)) b!697397))

(assert (= (and b!697397 res!461480) b!697398))

(declare-fun m!657823 () Bool)

(assert (=> b!697397 m!657823))

(declare-fun m!657825 () Bool)

(assert (=> b!697398 m!657825))

(assert (=> b!697291 d!96043))

(declare-fun d!96047 () Bool)

(assert (=> d!96047 (= (validKeyInArray!0 (select (arr!19135 a!3626) from!3004)) (and (not (= (select (arr!19135 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19135 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!697280 d!96047))

(assert (=> b!697290 d!96029))

(declare-fun b!697399 () Bool)

(declare-fun e!396417 () Bool)

(assert (=> b!697399 (= e!396417 (contains!3772 acc!681 (select (arr!19135 lt!317096) from!3004)))))

(declare-fun b!697400 () Bool)

(declare-fun e!396418 () Bool)

(declare-fun e!396416 () Bool)

(assert (=> b!697400 (= e!396418 e!396416)))

(declare-fun res!461483 () Bool)

(assert (=> b!697400 (=> (not res!461483) (not e!396416))))

(assert (=> b!697400 (= res!461483 (not e!396417))))

(declare-fun res!461482 () Bool)

(assert (=> b!697400 (=> (not res!461482) (not e!396417))))

(assert (=> b!697400 (= res!461482 (validKeyInArray!0 (select (arr!19135 lt!317096) from!3004)))))

(declare-fun b!697401 () Bool)

(declare-fun e!396415 () Bool)

(declare-fun call!34316 () Bool)

(assert (=> b!697401 (= e!396415 call!34316)))

(declare-fun b!697402 () Bool)

(assert (=> b!697402 (= e!396415 call!34316)))

(declare-fun bm!34313 () Bool)

(declare-fun c!78326 () Bool)

(assert (=> bm!34313 (= call!34316 (arrayNoDuplicates!0 lt!317096 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78326 (Cons!13225 (select (arr!19135 lt!317096) from!3004) acc!681) acc!681)))))

(declare-fun b!697403 () Bool)

(assert (=> b!697403 (= e!396416 e!396415)))

(assert (=> b!697403 (= c!78326 (validKeyInArray!0 (select (arr!19135 lt!317096) from!3004)))))

(declare-fun d!96049 () Bool)

(declare-fun res!461481 () Bool)

(assert (=> d!96049 (=> res!461481 e!396418)))

(assert (=> d!96049 (= res!461481 (bvsge from!3004 (size!19518 lt!317096)))))

(assert (=> d!96049 (= (arrayNoDuplicates!0 lt!317096 from!3004 acc!681) e!396418)))

(assert (= (and d!96049 (not res!461481)) b!697400))

(assert (= (and b!697400 res!461482) b!697399))

(assert (= (and b!697400 res!461483) b!697403))

(assert (= (and b!697403 c!78326) b!697402))

(assert (= (and b!697403 (not c!78326)) b!697401))

(assert (= (or b!697402 b!697401) bm!34313))

(declare-fun m!657827 () Bool)

(assert (=> b!697399 m!657827))

(assert (=> b!697399 m!657827))

(declare-fun m!657829 () Bool)

(assert (=> b!697399 m!657829))

(assert (=> b!697400 m!657827))

(assert (=> b!697400 m!657827))

(declare-fun m!657831 () Bool)

(assert (=> b!697400 m!657831))

(assert (=> bm!34313 m!657827))

(declare-fun m!657833 () Bool)

(assert (=> bm!34313 m!657833))

(assert (=> b!697403 m!657827))

(assert (=> b!697403 m!657827))

(assert (=> b!697403 m!657831))

(assert (=> b!697278 d!96049))

(declare-fun e!396425 () Bool)

(declare-fun b!697408 () Bool)

(assert (=> b!697408 (= e!396425 (contains!3772 acc!681 (select (arr!19135 lt!317096) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697409 () Bool)

(declare-fun e!396426 () Bool)

(declare-fun e!396424 () Bool)

(assert (=> b!697409 (= e!396426 e!396424)))

(declare-fun res!461490 () Bool)

(assert (=> b!697409 (=> (not res!461490) (not e!396424))))

(assert (=> b!697409 (= res!461490 (not e!396425))))

(declare-fun res!461489 () Bool)

(assert (=> b!697409 (=> (not res!461489) (not e!396425))))

(assert (=> b!697409 (= res!461489 (validKeyInArray!0 (select (arr!19135 lt!317096) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697410 () Bool)

(declare-fun e!396423 () Bool)

(declare-fun call!34317 () Bool)

(assert (=> b!697410 (= e!396423 call!34317)))

(declare-fun b!697411 () Bool)

(assert (=> b!697411 (= e!396423 call!34317)))

(declare-fun c!78327 () Bool)

(declare-fun bm!34314 () Bool)

(assert (=> bm!34314 (= call!34317 (arrayNoDuplicates!0 lt!317096 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78327 (Cons!13225 (select (arr!19135 lt!317096) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!697412 () Bool)

(assert (=> b!697412 (= e!396424 e!396423)))

(assert (=> b!697412 (= c!78327 (validKeyInArray!0 (select (arr!19135 lt!317096) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!96051 () Bool)

(declare-fun res!461488 () Bool)

(assert (=> d!96051 (=> res!461488 e!396426)))

(assert (=> d!96051 (= res!461488 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19518 lt!317096)))))

(assert (=> d!96051 (= (arrayNoDuplicates!0 lt!317096 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!396426)))

(assert (= (and d!96051 (not res!461488)) b!697409))

(assert (= (and b!697409 res!461489) b!697408))

(assert (= (and b!697409 res!461490) b!697412))

(assert (= (and b!697412 c!78327) b!697411))

(assert (= (and b!697412 (not c!78327)) b!697410))

(assert (= (or b!697411 b!697410) bm!34314))

(declare-fun m!657835 () Bool)

(assert (=> b!697408 m!657835))

(assert (=> b!697408 m!657835))

(declare-fun m!657837 () Bool)

(assert (=> b!697408 m!657837))

(assert (=> b!697409 m!657835))

(assert (=> b!697409 m!657835))

(declare-fun m!657839 () Bool)

(assert (=> b!697409 m!657839))

(assert (=> bm!34314 m!657835))

(declare-fun m!657841 () Bool)

(assert (=> bm!34314 m!657841))

(assert (=> b!697412 m!657835))

(assert (=> b!697412 m!657835))

(assert (=> b!697412 m!657839))

(assert (=> b!697278 d!96051))

(declare-fun d!96053 () Bool)

(declare-fun e!396439 () Bool)

(assert (=> d!96053 e!396439))

(declare-fun res!461503 () Bool)

(assert (=> d!96053 (=> (not res!461503) (not e!396439))))

(assert (=> d!96053 (= res!461503 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19518 a!3626))))))

(declare-fun lt!317112 () Unit!24558)

(declare-fun choose!41 (array!39959 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13229) Unit!24558)

(assert (=> d!96053 (= lt!317112 (choose!41 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (=> d!96053 (bvslt (size!19518 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!96053 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) lt!317112)))

(declare-fun b!697425 () Bool)

(assert (=> b!697425 (= e!396439 (arrayNoDuplicates!0 (array!39960 (store (arr!19135 a!3626) i!1382 k0!2843) (size!19518 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (= (and d!96053 res!461503) b!697425))

(declare-fun m!657853 () Bool)

(assert (=> d!96053 m!657853))

(assert (=> b!697425 m!657735))

(declare-fun m!657855 () Bool)

(assert (=> b!697425 m!657855))

(assert (=> b!697278 d!96053))

(declare-fun d!96063 () Bool)

(declare-fun lt!317113 () Bool)

(assert (=> d!96063 (= lt!317113 (select (content!328 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!396446 () Bool)

(assert (=> d!96063 (= lt!317113 e!396446)))

(declare-fun res!461508 () Bool)

(assert (=> d!96063 (=> (not res!461508) (not e!396446))))

(assert (=> d!96063 (= res!461508 ((_ is Cons!13225) acc!681))))

(assert (=> d!96063 (= (contains!3772 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317113)))

(declare-fun b!697434 () Bool)

(declare-fun e!396447 () Bool)

(assert (=> b!697434 (= e!396446 e!396447)))

(declare-fun res!461509 () Bool)

(assert (=> b!697434 (=> res!461509 e!396447)))

(assert (=> b!697434 (= res!461509 (= (h!14270 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!697435 () Bool)

(assert (=> b!697435 (= e!396447 (contains!3772 (t!19519 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96063 res!461508) b!697434))

(assert (= (and b!697434 (not res!461509)) b!697435))

(assert (=> d!96063 m!657795))

(declare-fun m!657857 () Bool)

(assert (=> d!96063 m!657857))

(declare-fun m!657859 () Bool)

(assert (=> b!697435 m!657859))

(assert (=> b!697277 d!96063))

(assert (=> b!697287 d!96029))

(declare-fun d!96065 () Bool)

(declare-fun lt!317114 () Bool)

(assert (=> d!96065 (= lt!317114 (select (content!328 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!396448 () Bool)

(assert (=> d!96065 (= lt!317114 e!396448)))

(declare-fun res!461510 () Bool)

(assert (=> d!96065 (=> (not res!461510) (not e!396448))))

(assert (=> d!96065 (= res!461510 ((_ is Cons!13225) acc!681))))

(assert (=> d!96065 (= (contains!3772 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317114)))

(declare-fun b!697436 () Bool)

(declare-fun e!396449 () Bool)

(assert (=> b!697436 (= e!396448 e!396449)))

(declare-fun res!461511 () Bool)

(assert (=> b!697436 (=> res!461511 e!396449)))

(assert (=> b!697436 (= res!461511 (= (h!14270 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!697437 () Bool)

(assert (=> b!697437 (= e!396449 (contains!3772 (t!19519 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96065 res!461510) b!697436))

(assert (= (and b!697436 (not res!461511)) b!697437))

(assert (=> d!96065 m!657795))

(declare-fun m!657861 () Bool)

(assert (=> d!96065 m!657861))

(declare-fun m!657863 () Bool)

(assert (=> b!697437 m!657863))

(assert (=> b!697276 d!96065))

(check-sat (not b!697435) (not b!697399) (not b!697437) (not b!697412) (not b!697389) (not b!697409) (not b!697398) (not d!96063) (not b!697388) (not b!697387) (not b!697400) (not b!697392) (not bm!34313) (not bm!34310) (not b!697425) (not bm!34311) (not d!96029) (not b!697408) (not d!96053) (not b!697384) (not b!697397) (not b!697383) (not b!697361) (not b!697382) (not b!697372) (not d!96065) (not bm!34314) (not b!697403) (not bm!34312) (not b!697373) (not b!697376))
(check-sat)
