; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61476 () Bool)

(assert start!61476)

(declare-fun b!687326 () Bool)

(declare-datatypes ((Unit!24217 0))(
  ( (Unit!24218) )
))
(declare-fun e!391492 () Unit!24217)

(declare-fun Unit!24219 () Unit!24217)

(assert (=> b!687326 (= e!391492 Unit!24219)))

(declare-fun b!687327 () Bool)

(declare-fun res!452389 () Bool)

(declare-fun e!391488 () Bool)

(assert (=> b!687327 (=> (not res!452389) (not e!391488))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39654 0))(
  ( (array!39655 (arr!18996 (Array (_ BitVec 32) (_ BitVec 64))) (size!19374 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39654)

(assert (=> b!687327 (= res!452389 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19374 a!3626))))))

(declare-fun b!687328 () Bool)

(declare-fun e!391490 () Bool)

(declare-fun e!391484 () Bool)

(assert (=> b!687328 (= e!391490 e!391484)))

(declare-fun res!452383 () Bool)

(assert (=> b!687328 (=> (not res!452383) (not e!391484))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!687328 (= res!452383 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687329 () Bool)

(declare-datatypes ((List!13090 0))(
  ( (Nil!13087) (Cons!13086 (h!14131 (_ BitVec 64)) (t!19359 List!13090)) )
))
(declare-fun lt!315390 () List!13090)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3633 (List!13090 (_ BitVec 64)) Bool)

(assert (=> b!687329 (= e!391484 (not (contains!3633 lt!315390 k!2843)))))

(declare-fun b!687331 () Bool)

(declare-fun e!391485 () Bool)

(declare-fun acc!681 () List!13090)

(assert (=> b!687331 (= e!391485 (not (contains!3633 acc!681 k!2843)))))

(declare-fun b!687332 () Bool)

(declare-fun res!452392 () Bool)

(assert (=> b!687332 (=> (not res!452392) (not e!391488))))

(assert (=> b!687332 (= res!452392 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19374 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!687333 () Bool)

(declare-fun res!452379 () Bool)

(assert (=> b!687333 (=> res!452379 e!391490)))

(assert (=> b!687333 (= res!452379 (contains!3633 lt!315390 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687334 () Bool)

(declare-fun res!452391 () Bool)

(assert (=> b!687334 (=> (not res!452391) (not e!391488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!687334 (= res!452391 (validKeyInArray!0 k!2843))))

(declare-fun b!687335 () Bool)

(declare-fun res!452380 () Bool)

(assert (=> b!687335 (=> (not res!452380) (not e!391488))))

(declare-fun arrayNoDuplicates!0 (array!39654 (_ BitVec 32) List!13090) Bool)

(assert (=> b!687335 (= res!452380 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!687336 () Bool)

(declare-fun lt!315395 () Unit!24217)

(assert (=> b!687336 (= e!391492 lt!315395)))

(declare-fun lt!315392 () Unit!24217)

(declare-fun lemmaListSubSeqRefl!0 (List!13090) Unit!24217)

(assert (=> b!687336 (= lt!315392 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!218 (List!13090 List!13090) Bool)

(assert (=> b!687336 (subseq!218 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39654 List!13090 List!13090 (_ BitVec 32)) Unit!24217)

(declare-fun $colon$colon!382 (List!13090 (_ BitVec 64)) List!13090)

(assert (=> b!687336 (= lt!315395 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!382 acc!681 (select (arr!18996 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687336 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!687337 () Bool)

(declare-fun res!452393 () Bool)

(assert (=> b!687337 (=> (not res!452393) (not e!391488))))

(assert (=> b!687337 (= res!452393 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13087))))

(declare-fun b!687338 () Bool)

(declare-fun res!452378 () Bool)

(assert (=> b!687338 (=> (not res!452378) (not e!391488))))

(declare-fun e!391486 () Bool)

(assert (=> b!687338 (= res!452378 e!391486)))

(declare-fun res!452382 () Bool)

(assert (=> b!687338 (=> res!452382 e!391486)))

(declare-fun e!391489 () Bool)

(assert (=> b!687338 (= res!452382 e!391489)))

(declare-fun res!452394 () Bool)

(assert (=> b!687338 (=> (not res!452394) (not e!391489))))

(assert (=> b!687338 (= res!452394 (bvsgt from!3004 i!1382))))

(declare-fun b!687339 () Bool)

(assert (=> b!687339 (= e!391486 e!391485)))

(declare-fun res!452395 () Bool)

(assert (=> b!687339 (=> (not res!452395) (not e!391485))))

(assert (=> b!687339 (= res!452395 (bvsle from!3004 i!1382))))

(declare-fun b!687340 () Bool)

(declare-fun res!452384 () Bool)

(assert (=> b!687340 (=> res!452384 e!391490)))

(declare-fun noDuplicate!880 (List!13090) Bool)

(assert (=> b!687340 (= res!452384 (not (noDuplicate!880 lt!315390)))))

(declare-fun b!687341 () Bool)

(declare-fun e!391483 () Unit!24217)

(declare-fun Unit!24220 () Unit!24217)

(assert (=> b!687341 (= e!391483 Unit!24220)))

(declare-fun b!687342 () Bool)

(declare-fun res!452387 () Bool)

(assert (=> b!687342 (=> res!452387 e!391490)))

(assert (=> b!687342 (= res!452387 (contains!3633 lt!315390 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!452376 () Bool)

(assert (=> start!61476 (=> (not res!452376) (not e!391488))))

(assert (=> start!61476 (= res!452376 (and (bvslt (size!19374 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19374 a!3626))))))

(assert (=> start!61476 e!391488))

(assert (=> start!61476 true))

(declare-fun array_inv!14770 (array!39654) Bool)

(assert (=> start!61476 (array_inv!14770 a!3626)))

(declare-fun b!687330 () Bool)

(assert (=> b!687330 (= e!391488 (not e!391490))))

(declare-fun res!452386 () Bool)

(assert (=> b!687330 (=> res!452386 e!391490)))

(assert (=> b!687330 (= res!452386 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!687330 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315390)))

(declare-fun lt!315394 () Unit!24217)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39654 (_ BitVec 64) (_ BitVec 32) List!13090 List!13090) Unit!24217)

(assert (=> b!687330 (= lt!315394 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315390))))

(declare-fun -!183 (List!13090 (_ BitVec 64)) List!13090)

(assert (=> b!687330 (= (-!183 lt!315390 k!2843) acc!681)))

(assert (=> b!687330 (= lt!315390 ($colon$colon!382 acc!681 k!2843))))

(declare-fun lt!315391 () Unit!24217)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13090) Unit!24217)

(assert (=> b!687330 (= lt!315391 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!687330 (subseq!218 acc!681 acc!681)))

(declare-fun lt!315393 () Unit!24217)

(assert (=> b!687330 (= lt!315393 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687330 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315396 () Unit!24217)

(assert (=> b!687330 (= lt!315396 e!391492)))

(declare-fun c!77843 () Bool)

(assert (=> b!687330 (= c!77843 (validKeyInArray!0 (select (arr!18996 a!3626) from!3004)))))

(declare-fun lt!315388 () Unit!24217)

(assert (=> b!687330 (= lt!315388 e!391483)))

(declare-fun c!77842 () Bool)

(declare-fun arrayContainsKey!0 (array!39654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!687330 (= c!77842 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687330 (arrayContainsKey!0 (array!39655 (store (arr!18996 a!3626) i!1382 k!2843) (size!19374 a!3626)) k!2843 from!3004)))

(declare-fun b!687343 () Bool)

(declare-fun res!452388 () Bool)

(assert (=> b!687343 (=> (not res!452388) (not e!391488))))

(assert (=> b!687343 (= res!452388 (noDuplicate!880 acc!681))))

(declare-fun b!687344 () Bool)

(assert (=> b!687344 (= e!391489 (contains!3633 acc!681 k!2843))))

(declare-fun b!687345 () Bool)

(declare-fun res!452396 () Bool)

(assert (=> b!687345 (=> (not res!452396) (not e!391488))))

(assert (=> b!687345 (= res!452396 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!687346 () Bool)

(declare-fun res!452381 () Bool)

(assert (=> b!687346 (=> (not res!452381) (not e!391488))))

(assert (=> b!687346 (= res!452381 (not (contains!3633 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687347 () Bool)

(declare-fun Unit!24221 () Unit!24217)

(assert (=> b!687347 (= e!391483 Unit!24221)))

(declare-fun lt!315389 () Unit!24217)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39654 (_ BitVec 64) (_ BitVec 32)) Unit!24217)

(assert (=> b!687347 (= lt!315389 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!687347 false))

(declare-fun b!687348 () Bool)

(declare-fun res!452385 () Bool)

(assert (=> b!687348 (=> res!452385 e!391490)))

(declare-fun e!391487 () Bool)

(assert (=> b!687348 (= res!452385 e!391487)))

(declare-fun res!452377 () Bool)

(assert (=> b!687348 (=> (not res!452377) (not e!391487))))

(assert (=> b!687348 (= res!452377 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687349 () Bool)

(declare-fun res!452390 () Bool)

(assert (=> b!687349 (=> (not res!452390) (not e!391488))))

(assert (=> b!687349 (= res!452390 (not (contains!3633 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687350 () Bool)

(assert (=> b!687350 (= e!391487 (contains!3633 lt!315390 k!2843))))

(assert (= (and start!61476 res!452376) b!687343))

(assert (= (and b!687343 res!452388) b!687346))

(assert (= (and b!687346 res!452381) b!687349))

(assert (= (and b!687349 res!452390) b!687338))

(assert (= (and b!687338 res!452394) b!687344))

(assert (= (and b!687338 (not res!452382)) b!687339))

(assert (= (and b!687339 res!452395) b!687331))

(assert (= (and b!687338 res!452378) b!687337))

(assert (= (and b!687337 res!452393) b!687335))

(assert (= (and b!687335 res!452380) b!687327))

(assert (= (and b!687327 res!452389) b!687334))

(assert (= (and b!687334 res!452391) b!687345))

(assert (= (and b!687345 res!452396) b!687332))

(assert (= (and b!687332 res!452392) b!687330))

(assert (= (and b!687330 c!77842) b!687347))

(assert (= (and b!687330 (not c!77842)) b!687341))

(assert (= (and b!687330 c!77843) b!687336))

(assert (= (and b!687330 (not c!77843)) b!687326))

(assert (= (and b!687330 (not res!452386)) b!687340))

(assert (= (and b!687340 (not res!452384)) b!687342))

(assert (= (and b!687342 (not res!452387)) b!687333))

(assert (= (and b!687333 (not res!452379)) b!687348))

(assert (= (and b!687348 res!452377) b!687350))

(assert (= (and b!687348 (not res!452385)) b!687328))

(assert (= (and b!687328 res!452383) b!687329))

(declare-fun m!651423 () Bool)

(assert (=> b!687344 m!651423))

(declare-fun m!651425 () Bool)

(assert (=> b!687340 m!651425))

(declare-fun m!651427 () Bool)

(assert (=> b!687333 m!651427))

(declare-fun m!651429 () Bool)

(assert (=> b!687343 m!651429))

(declare-fun m!651431 () Bool)

(assert (=> b!687334 m!651431))

(declare-fun m!651433 () Bool)

(assert (=> b!687345 m!651433))

(assert (=> b!687331 m!651423))

(declare-fun m!651435 () Bool)

(assert (=> b!687350 m!651435))

(declare-fun m!651437 () Bool)

(assert (=> b!687336 m!651437))

(declare-fun m!651439 () Bool)

(assert (=> b!687336 m!651439))

(declare-fun m!651441 () Bool)

(assert (=> b!687336 m!651441))

(declare-fun m!651443 () Bool)

(assert (=> b!687336 m!651443))

(assert (=> b!687336 m!651439))

(assert (=> b!687336 m!651441))

(declare-fun m!651445 () Bool)

(assert (=> b!687336 m!651445))

(declare-fun m!651447 () Bool)

(assert (=> b!687336 m!651447))

(declare-fun m!651449 () Bool)

(assert (=> b!687342 m!651449))

(declare-fun m!651451 () Bool)

(assert (=> b!687347 m!651451))

(declare-fun m!651453 () Bool)

(assert (=> start!61476 m!651453))

(declare-fun m!651455 () Bool)

(assert (=> b!687349 m!651455))

(declare-fun m!651457 () Bool)

(assert (=> b!687335 m!651457))

(assert (=> b!687330 m!651437))

(assert (=> b!687330 m!651439))

(declare-fun m!651459 () Bool)

(assert (=> b!687330 m!651459))

(declare-fun m!651461 () Bool)

(assert (=> b!687330 m!651461))

(declare-fun m!651463 () Bool)

(assert (=> b!687330 m!651463))

(declare-fun m!651465 () Bool)

(assert (=> b!687330 m!651465))

(assert (=> b!687330 m!651445))

(declare-fun m!651467 () Bool)

(assert (=> b!687330 m!651467))

(assert (=> b!687330 m!651439))

(declare-fun m!651469 () Bool)

(assert (=> b!687330 m!651469))

(declare-fun m!651471 () Bool)

(assert (=> b!687330 m!651471))

(declare-fun m!651473 () Bool)

(assert (=> b!687330 m!651473))

(declare-fun m!651475 () Bool)

(assert (=> b!687330 m!651475))

(assert (=> b!687330 m!651447))

(declare-fun m!651477 () Bool)

(assert (=> b!687337 m!651477))

(declare-fun m!651479 () Bool)

(assert (=> b!687346 m!651479))

(assert (=> b!687329 m!651435))

(push 1)

(assert (not b!687349))

(assert (not b!687329))

(assert (not b!687334))

(assert (not b!687344))

(assert (not b!687350))

(assert (not start!61476))

(assert (not b!687345))

(assert (not b!687333))

(assert (not b!687346))

(assert (not b!687330))

(assert (not b!687337))

(assert (not b!687342))

(assert (not b!687347))

(assert (not b!687343))

(assert (not b!687336))

(assert (not b!687335))

(assert (not b!687331))

(assert (not b!687340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94957 () Bool)

(assert (=> d!94957 (= (array_inv!14770 a!3626) (bvsge (size!19374 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61476 d!94957))

(declare-fun b!687575 () Bool)

(declare-fun e!391619 () List!13090)

(declare-fun call!34160 () List!13090)

(assert (=> b!687575 (= e!391619 (Cons!13086 (h!14131 lt!315390) call!34160))))

(declare-fun bm!34157 () Bool)

(assert (=> bm!34157 (= call!34160 (-!183 (t!19359 lt!315390) k!2843))))

(declare-fun b!687576 () Bool)

(declare-fun e!391620 () List!13090)

(assert (=> b!687576 (= e!391620 Nil!13087)))

(declare-fun b!687577 () Bool)

(assert (=> b!687577 (= e!391620 e!391619)))

(declare-fun c!77866 () Bool)

(assert (=> b!687577 (= c!77866 (= k!2843 (h!14131 lt!315390)))))

(declare-fun d!94961 () Bool)

(declare-fun e!391618 () Bool)

(assert (=> d!94961 e!391618))

(declare-fun res!452577 () Bool)

(assert (=> d!94961 (=> (not res!452577) (not e!391618))))

(declare-fun lt!315469 () List!13090)

(declare-fun size!19377 (List!13090) Int)

(assert (=> d!94961 (= res!452577 (<= (size!19377 lt!315469) (size!19377 lt!315390)))))

(assert (=> d!94961 (= lt!315469 e!391620)))

(declare-fun c!77867 () Bool)

(assert (=> d!94961 (= c!77867 (is-Cons!13086 lt!315390))))

(assert (=> d!94961 (= (-!183 lt!315390 k!2843) lt!315469)))

(declare-fun b!687578 () Bool)

(declare-fun content!303 (List!13090) (Set (_ BitVec 64)))

(assert (=> b!687578 (= e!391618 (= (content!303 lt!315469) (set.minus (content!303 lt!315390) (set.insert k!2843 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!687579 () Bool)

(assert (=> b!687579 (= e!391619 call!34160)))

(assert (= (and d!94961 c!77867) b!687577))

(assert (= (and d!94961 (not c!77867)) b!687576))

(assert (= (and b!687577 c!77866) b!687579))

(assert (= (and b!687577 (not c!77866)) b!687575))

(assert (= (or b!687579 b!687575) bm!34157))

(assert (= (and d!94961 res!452577) b!687578))

(declare-fun m!651657 () Bool)

(assert (=> bm!34157 m!651657))

(declare-fun m!651659 () Bool)

(assert (=> d!94961 m!651659))

(declare-fun m!651661 () Bool)

(assert (=> d!94961 m!651661))

(declare-fun m!651663 () Bool)

(assert (=> b!687578 m!651663))

(declare-fun m!651667 () Bool)

(assert (=> b!687578 m!651667))

(declare-fun m!651669 () Bool)

(assert (=> b!687578 m!651669))

(assert (=> b!687330 d!94961))

(declare-fun d!94983 () Bool)

(declare-fun res!452598 () Bool)

(declare-fun e!391641 () Bool)

(assert (=> d!94983 (=> res!452598 e!391641)))

(assert (=> d!94983 (= res!452598 (= (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94983 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!391641)))

(declare-fun b!687600 () Bool)

(declare-fun e!391642 () Bool)

(assert (=> b!687600 (= e!391641 e!391642)))

(declare-fun res!452599 () Bool)

(assert (=> b!687600 (=> (not res!452599) (not e!391642))))

(assert (=> b!687600 (= res!452599 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19374 a!3626)))))

(declare-fun b!687601 () Bool)

(assert (=> b!687601 (= e!391642 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94983 (not res!452598)) b!687600))

(assert (= (and b!687600 res!452599) b!687601))

(declare-fun m!651677 () Bool)

(assert (=> d!94983 m!651677))

(declare-fun m!651679 () Bool)

(assert (=> b!687601 m!651679))

(assert (=> b!687330 d!94983))

(declare-fun d!94989 () Bool)

(assert (=> d!94989 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315390)))

(declare-fun lt!315477 () Unit!24217)

(declare-fun choose!66 (array!39654 (_ BitVec 64) (_ BitVec 32) List!13090 List!13090) Unit!24217)

(assert (=> d!94989 (= lt!315477 (choose!66 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315390))))

(assert (=> d!94989 (bvslt (size!19374 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94989 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315390) lt!315477)))

(declare-fun bs!20165 () Bool)

(assert (= bs!20165 d!94989))

(assert (=> bs!20165 m!651463))

(declare-fun m!651695 () Bool)

(assert (=> bs!20165 m!651695))

(assert (=> b!687330 d!94989))

(declare-fun d!95003 () Bool)

(assert (=> d!95003 (= (-!183 ($colon$colon!382 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!315482 () Unit!24217)

(declare-fun choose!16 ((_ BitVec 64) List!13090) Unit!24217)

(assert (=> d!95003 (= lt!315482 (choose!16 k!2843 acc!681))))

(assert (=> d!95003 (not (contains!3633 acc!681 k!2843))))

(assert (=> d!95003 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!315482)))

(declare-fun bs!20166 () Bool)

(assert (= bs!20166 d!95003))

(assert (=> bs!20166 m!651467))

(assert (=> bs!20166 m!651467))

(declare-fun m!651697 () Bool)

(assert (=> bs!20166 m!651697))

(declare-fun m!651699 () Bool)

(assert (=> bs!20166 m!651699))

(assert (=> bs!20166 m!651423))

(assert (=> b!687330 d!95003))

(declare-fun d!95005 () Bool)

(declare-fun res!452616 () Bool)

(declare-fun e!391664 () Bool)

(assert (=> d!95005 (=> res!452616 e!391664)))

(assert (=> d!95005 (= res!452616 (= (select (arr!18996 (array!39655 (store (arr!18996 a!3626) i!1382 k!2843) (size!19374 a!3626))) from!3004) k!2843))))

(assert (=> d!95005 (= (arrayContainsKey!0 (array!39655 (store (arr!18996 a!3626) i!1382 k!2843) (size!19374 a!3626)) k!2843 from!3004) e!391664)))

(declare-fun b!687626 () Bool)

(declare-fun e!391665 () Bool)

(assert (=> b!687626 (= e!391664 e!391665)))

(declare-fun res!452617 () Bool)

(assert (=> b!687626 (=> (not res!452617) (not e!391665))))

(assert (=> b!687626 (= res!452617 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19374 (array!39655 (store (arr!18996 a!3626) i!1382 k!2843) (size!19374 a!3626)))))))

(declare-fun b!687627 () Bool)

(assert (=> b!687627 (= e!391665 (arrayContainsKey!0 (array!39655 (store (arr!18996 a!3626) i!1382 k!2843) (size!19374 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95005 (not res!452616)) b!687626))

(assert (= (and b!687626 res!452617) b!687627))

(declare-fun m!651701 () Bool)

(assert (=> d!95005 m!651701))

(declare-fun m!651703 () Bool)

(assert (=> b!687627 m!651703))

(assert (=> b!687330 d!95005))

(declare-fun call!34169 () Bool)

(declare-fun bm!34166 () Bool)

(declare-fun c!77879 () Bool)

(assert (=> bm!34166 (= call!34169 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77879 (Cons!13086 (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!315390) lt!315390)))))

(declare-fun b!687666 () Bool)

(declare-fun e!391697 () Bool)

(declare-fun e!391699 () Bool)

(assert (=> b!687666 (= e!391697 e!391699)))

(declare-fun res!452642 () Bool)

(assert (=> b!687666 (=> (not res!452642) (not e!391699))))

(declare-fun e!391698 () Bool)

(assert (=> b!687666 (= res!452642 (not e!391698))))

(declare-fun res!452643 () Bool)

(assert (=> b!687666 (=> (not res!452643) (not e!391698))))

(assert (=> b!687666 (= res!452643 (validKeyInArray!0 (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687667 () Bool)

(declare-fun e!391700 () Bool)

(assert (=> b!687667 (= e!391700 call!34169)))

(declare-fun b!687668 () Bool)

(assert (=> b!687668 (= e!391698 (contains!3633 lt!315390 (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!95007 () Bool)

(declare-fun res!452644 () Bool)

(assert (=> d!95007 (=> res!452644 e!391697)))

(assert (=> d!95007 (= res!452644 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19374 a!3626)))))

(assert (=> d!95007 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315390) e!391697)))

(declare-fun b!687669 () Bool)

(assert (=> b!687669 (= e!391699 e!391700)))

(assert (=> b!687669 (= c!77879 (validKeyInArray!0 (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687670 () Bool)

(assert (=> b!687670 (= e!391700 call!34169)))

(assert (= (and d!95007 (not res!452644)) b!687666))

(assert (= (and b!687666 res!452643) b!687668))

(assert (= (and b!687666 res!452642) b!687669))

(assert (= (and b!687669 c!77879) b!687670))

(assert (= (and b!687669 (not c!77879)) b!687667))

(assert (= (or b!687670 b!687667) bm!34166))

(assert (=> bm!34166 m!651677))

(declare-fun m!651745 () Bool)

(assert (=> bm!34166 m!651745))

(assert (=> b!687666 m!651677))

(assert (=> b!687666 m!651677))

(declare-fun m!651749 () Bool)

(assert (=> b!687666 m!651749))

(assert (=> b!687668 m!651677))

(assert (=> b!687668 m!651677))

(declare-fun m!651751 () Bool)

(assert (=> b!687668 m!651751))

(assert (=> b!687669 m!651677))

(assert (=> b!687669 m!651677))

(assert (=> b!687669 m!651749))

(assert (=> b!687330 d!95007))

(declare-fun b!687695 () Bool)

(declare-fun e!391725 () Bool)

(declare-fun e!391723 () Bool)

(assert (=> b!687695 (= e!391725 e!391723)))

(declare-fun res!452667 () Bool)

(assert (=> b!687695 (=> (not res!452667) (not e!391723))))

(assert (=> b!687695 (= res!452667 (is-Cons!13086 acc!681))))

(declare-fun b!687698 () Bool)

(declare-fun e!391724 () Bool)

(assert (=> b!687698 (= e!391724 (subseq!218 acc!681 (t!19359 acc!681)))))

(declare-fun b!687696 () Bool)

(assert (=> b!687696 (= e!391723 e!391724)))

(declare-fun res!452665 () Bool)

(assert (=> b!687696 (=> res!452665 e!391724)))

(declare-fun e!391726 () Bool)

(assert (=> b!687696 (= res!452665 e!391726)))

(declare-fun res!452666 () Bool)

(assert (=> b!687696 (=> (not res!452666) (not e!391726))))

(assert (=> b!687696 (= res!452666 (= (h!14131 acc!681) (h!14131 acc!681)))))

(declare-fun b!687697 () Bool)

(assert (=> b!687697 (= e!391726 (subseq!218 (t!19359 acc!681) (t!19359 acc!681)))))

(declare-fun d!95035 () Bool)

(declare-fun res!452668 () Bool)

(assert (=> d!95035 (=> res!452668 e!391725)))

(assert (=> d!95035 (= res!452668 (is-Nil!13087 acc!681))))

(assert (=> d!95035 (= (subseq!218 acc!681 acc!681) e!391725)))

(assert (= (and d!95035 (not res!452668)) b!687695))

(assert (= (and b!687695 res!452667) b!687696))

(assert (= (and b!687696 res!452666) b!687697))

(assert (= (and b!687696 (not res!452665)) b!687698))

(declare-fun m!651781 () Bool)

(assert (=> b!687698 m!651781))

(declare-fun m!651783 () Bool)

(assert (=> b!687697 m!651783))

(assert (=> b!687330 d!95035))

(declare-fun d!95053 () Bool)

(assert (=> d!95053 (subseq!218 acc!681 acc!681)))

(declare-fun lt!315504 () Unit!24217)

(declare-fun choose!36 (List!13090) Unit!24217)

(assert (=> d!95053 (= lt!315504 (choose!36 acc!681))))

(assert (=> d!95053 (= (lemmaListSubSeqRefl!0 acc!681) lt!315504)))

(declare-fun bs!20172 () Bool)

(assert (= bs!20172 d!95053))

(assert (=> bs!20172 m!651447))

(declare-fun m!651789 () Bool)

(assert (=> bs!20172 m!651789))

(assert (=> b!687330 d!95053))

(declare-fun d!95057 () Bool)

(assert (=> d!95057 (= (validKeyInArray!0 (select (arr!18996 a!3626) from!3004)) (and (not (= (select (arr!18996 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18996 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!687330 d!95057))

(declare-fun d!95059 () Bool)

(assert (=> d!95059 (= ($colon$colon!382 acc!681 k!2843) (Cons!13086 k!2843 acc!681))))

(assert (=> b!687330 d!95059))

(declare-fun bm!34170 () Bool)

(declare-fun c!77883 () Bool)

(declare-fun call!34173 () Bool)

(assert (=> bm!34170 (= call!34173 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77883 (Cons!13086 (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!687714 () Bool)

(declare-fun e!391741 () Bool)

(declare-fun e!391743 () Bool)

(assert (=> b!687714 (= e!391741 e!391743)))

(declare-fun res!452682 () Bool)

(assert (=> b!687714 (=> (not res!452682) (not e!391743))))

(declare-fun e!391742 () Bool)

(assert (=> b!687714 (= res!452682 (not e!391742))))

(declare-fun res!452683 () Bool)

(assert (=> b!687714 (=> (not res!452683) (not e!391742))))

(assert (=> b!687714 (= res!452683 (validKeyInArray!0 (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687715 () Bool)

(declare-fun e!391744 () Bool)

(assert (=> b!687715 (= e!391744 call!34173)))

(declare-fun b!687716 () Bool)

(assert (=> b!687716 (= e!391742 (contains!3633 acc!681 (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!95063 () Bool)

(declare-fun res!452684 () Bool)

(assert (=> d!95063 (=> res!452684 e!391741)))

(assert (=> d!95063 (= res!452684 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19374 a!3626)))))

(assert (=> d!95063 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!391741)))

(declare-fun b!687717 () Bool)

(assert (=> b!687717 (= e!391743 e!391744)))

(assert (=> b!687717 (= c!77883 (validKeyInArray!0 (select (arr!18996 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687718 () Bool)

(assert (=> b!687718 (= e!391744 call!34173)))

(assert (= (and d!95063 (not res!452684)) b!687714))

(assert (= (and b!687714 res!452683) b!687716))

(assert (= (and b!687714 res!452682) b!687717))

(assert (= (and b!687717 c!77883) b!687718))

(assert (= (and b!687717 (not c!77883)) b!687715))

(assert (= (or b!687718 b!687715) bm!34170))

(assert (=> bm!34170 m!651677))

(declare-fun m!651803 () Bool)

(assert (=> bm!34170 m!651803))

(assert (=> b!687714 m!651677))

(assert (=> b!687714 m!651677))

(assert (=> b!687714 m!651749))

(assert (=> b!687716 m!651677))

(assert (=> b!687716 m!651677))

(declare-fun m!651805 () Bool)

(assert (=> b!687716 m!651805))

(assert (=> b!687717 m!651677))

(assert (=> b!687717 m!651677))

(assert (=> b!687717 m!651749))

(assert (=> b!687330 d!95063))

(declare-fun d!95073 () Bool)

(declare-fun lt!315514 () Bool)

(assert (=> d!95073 (= lt!315514 (set.member k!2843 (content!303 lt!315390)))))

(declare-fun e!391753 () Bool)

(assert (=> d!95073 (= lt!315514 e!391753)))

(declare-fun res!452693 () Bool)

(assert (=> d!95073 (=> (not res!452693) (not e!391753))))

(assert (=> d!95073 (= res!452693 (is-Cons!13086 lt!315390))))

(assert (=> d!95073 (= (contains!3633 lt!315390 k!2843) lt!315514)))

(declare-fun b!687727 () Bool)

(declare-fun e!391754 () Bool)

(assert (=> b!687727 (= e!391753 e!391754)))

(declare-fun res!452694 () Bool)

(assert (=> b!687727 (=> res!452694 e!391754)))

(assert (=> b!687727 (= res!452694 (= (h!14131 lt!315390) k!2843))))

(declare-fun b!687728 () Bool)

(assert (=> b!687728 (= e!391754 (contains!3633 (t!19359 lt!315390) k!2843))))

(assert (= (and d!95073 res!452693) b!687727))

(assert (= (and b!687727 (not res!452694)) b!687728))

(assert (=> d!95073 m!651667))

(declare-fun m!651817 () Bool)

(assert (=> d!95073 m!651817))

(declare-fun m!651819 () Bool)

(assert (=> b!687728 m!651819))

(assert (=> b!687329 d!95073))

(declare-fun d!95081 () Bool)

(declare-fun res!452701 () Bool)

(declare-fun e!391766 () Bool)

(assert (=> d!95081 (=> res!452701 e!391766)))

(assert (=> d!95081 (= res!452701 (is-Nil!13087 lt!315390))))

(assert (=> d!95081 (= (noDuplicate!880 lt!315390) e!391766)))

(declare-fun b!687743 () Bool)

(declare-fun e!391767 () Bool)

(assert (=> b!687743 (= e!391766 e!391767)))

(declare-fun res!452702 () Bool)

(assert (=> b!687743 (=> (not res!452702) (not e!391767))))

(assert (=> b!687743 (= res!452702 (not (contains!3633 (t!19359 lt!315390) (h!14131 lt!315390))))))

(declare-fun b!687744 () Bool)

(assert (=> b!687744 (= e!391767 (noDuplicate!880 (t!19359 lt!315390)))))

(assert (= (and d!95081 (not res!452701)) b!687743))

(assert (= (and b!687743 res!452702) b!687744))

(declare-fun m!651821 () Bool)

(assert (=> b!687743 m!651821))

(declare-fun m!651823 () Bool)

(assert (=> b!687744 m!651823))

(assert (=> b!687340 d!95081))

(assert (=> b!687350 d!95073))

(declare-fun d!95083 () Bool)

(declare-fun lt!315517 () Bool)

(assert (=> d!95083 (= lt!315517 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!303 lt!315390)))))

(declare-fun e!391768 () Bool)

(assert (=> d!95083 (= lt!315517 e!391768)))

(declare-fun res!452703 () Bool)

(assert (=> d!95083 (=> (not res!452703) (not e!391768))))

(assert (=> d!95083 (= res!452703 (is-Cons!13086 lt!315390))))

(assert (=> d!95083 (= (contains!3633 lt!315390 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315517)))

(declare-fun b!687745 () Bool)

(declare-fun e!391769 () Bool)

(assert (=> b!687745 (= e!391768 e!391769)))

(declare-fun res!452704 () Bool)

(assert (=> b!687745 (=> res!452704 e!391769)))

(assert (=> b!687745 (= res!452704 (= (h!14131 lt!315390) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687746 () Bool)

(assert (=> b!687746 (= e!391769 (contains!3633 (t!19359 lt!315390) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95083 res!452703) b!687745))

(assert (= (and b!687745 (not res!452704)) b!687746))

(assert (=> d!95083 m!651667))

(declare-fun m!651825 () Bool)

(assert (=> d!95083 m!651825))

(declare-fun m!651827 () Bool)

(assert (=> b!687746 m!651827))

(assert (=> b!687333 d!95083))

(declare-fun d!95085 () Bool)

(declare-fun lt!315519 () Bool)

(assert (=> d!95085 (= lt!315519 (set.member k!2843 (content!303 acc!681)))))

(declare-fun e!391773 () Bool)

(assert (=> d!95085 (= lt!315519 e!391773)))

(declare-fun res!452706 () Bool)

(assert (=> d!95085 (=> (not res!452706) (not e!391773))))

(assert (=> d!95085 (= res!452706 (is-Cons!13086 acc!681))))

(assert (=> d!95085 (= (contains!3633 acc!681 k!2843) lt!315519)))

(declare-fun b!687752 () Bool)

(declare-fun e!391774 () Bool)

(assert (=> b!687752 (= e!391773 e!391774)))

(declare-fun res!452707 () Bool)

(assert (=> b!687752 (=> res!452707 e!391774)))

(assert (=> b!687752 (= res!452707 (= (h!14131 acc!681) k!2843))))

(declare-fun b!687753 () Bool)

(assert (=> b!687753 (= e!391774 (contains!3633 (t!19359 acc!681) k!2843))))

(assert (= (and d!95085 res!452706) b!687752))

(assert (= (and b!687752 (not res!452707)) b!687753))

(declare-fun m!651829 () Bool)

(assert (=> d!95085 m!651829))

(declare-fun m!651833 () Bool)

(assert (=> d!95085 m!651833))

(declare-fun m!651837 () Bool)

(assert (=> b!687753 m!651837))

(assert (=> b!687344 d!95085))

(declare-fun d!95087 () Bool)

(declare-fun res!452708 () Bool)

(declare-fun e!391775 () Bool)

(assert (=> d!95087 (=> res!452708 e!391775)))

(assert (=> d!95087 (= res!452708 (is-Nil!13087 acc!681))))

(assert (=> d!95087 (= (noDuplicate!880 acc!681) e!391775)))

(declare-fun b!687754 () Bool)

(declare-fun e!391776 () Bool)

(assert (=> b!687754 (= e!391775 e!391776)))

(declare-fun res!452709 () Bool)

(assert (=> b!687754 (=> (not res!452709) (not e!391776))))

(assert (=> b!687754 (= res!452709 (not (contains!3633 (t!19359 acc!681) (h!14131 acc!681))))))

(declare-fun b!687755 () Bool)

(assert (=> b!687755 (= e!391776 (noDuplicate!880 (t!19359 acc!681)))))

(assert (= (and d!95087 (not res!452708)) b!687754))

(assert (= (and b!687754 res!452709) b!687755))

(declare-fun m!651845 () Bool)

(assert (=> b!687754 m!651845))

(declare-fun m!651847 () Bool)

(assert (=> b!687755 m!651847))

(assert (=> b!687343 d!95087))

(assert (=> b!687331 d!95085))

(declare-fun d!95089 () Bool)

(declare-fun lt!315520 () Bool)

(assert (=> d!95089 (= lt!315520 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!303 lt!315390)))))

(declare-fun e!391777 () Bool)

(assert (=> d!95089 (= lt!315520 e!391777)))

(declare-fun res!452710 () Bool)

(assert (=> d!95089 (=> (not res!452710) (not e!391777))))

(assert (=> d!95089 (= res!452710 (is-Cons!13086 lt!315390))))

(assert (=> d!95089 (= (contains!3633 lt!315390 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315520)))

(declare-fun b!687756 () Bool)

(declare-fun e!391778 () Bool)

(assert (=> b!687756 (= e!391777 e!391778)))

(declare-fun res!452711 () Bool)

(assert (=> b!687756 (=> res!452711 e!391778)))

(assert (=> b!687756 (= res!452711 (= (h!14131 lt!315390) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687757 () Bool)

(assert (=> b!687757 (= e!391778 (contains!3633 (t!19359 lt!315390) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95089 res!452710) b!687756))

(assert (= (and b!687756 (not res!452711)) b!687757))

(assert (=> d!95089 m!651667))

(declare-fun m!651849 () Bool)

(assert (=> d!95089 m!651849))

(declare-fun m!651851 () Bool)

(assert (=> b!687757 m!651851))

(assert (=> b!687342 d!95089))

(declare-fun d!95091 () Bool)

(assert (=> d!95091 (= ($colon$colon!382 acc!681 (select (arr!18996 a!3626) from!3004)) (Cons!13086 (select (arr!18996 a!3626) from!3004) acc!681))))

(assert (=> b!687336 d!95091))

(assert (=> b!687336 d!95035))

(declare-fun d!95093 () Bool)

(assert (=> d!95093 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315523 () Unit!24217)

(declare-fun choose!80 (array!39654 List!13090 List!13090 (_ BitVec 32)) Unit!24217)

(assert (=> d!95093 (= lt!315523 (choose!80 a!3626 ($colon$colon!382 acc!681 (select (arr!18996 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!95093 (bvslt (size!19374 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95093 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!382 acc!681 (select (arr!18996 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!315523)))

(declare-fun bs!20175 () Bool)

(assert (= bs!20175 d!95093))

(assert (=> bs!20175 m!651437))

(assert (=> bs!20175 m!651441))

(declare-fun m!651853 () Bool)

(assert (=> bs!20175 m!651853))

(assert (=> b!687336 d!95093))

(assert (=> b!687336 d!95053))

(assert (=> b!687336 d!95063))

(declare-fun call!34177 () Bool)

(declare-fun bm!34174 () Bool)

(declare-fun c!77890 () Bool)

(assert (=> bm!34174 (= call!34177 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77890 (Cons!13086 (select (arr!18996 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!687758 () Bool)

(declare-fun e!391779 () Bool)

(declare-fun e!391781 () Bool)

(assert (=> b!687758 (= e!391779 e!391781)))

(declare-fun res!452712 () Bool)

(assert (=> b!687758 (=> (not res!452712) (not e!391781))))

(declare-fun e!391780 () Bool)

(assert (=> b!687758 (= res!452712 (not e!391780))))

(declare-fun res!452713 () Bool)

(assert (=> b!687758 (=> (not res!452713) (not e!391780))))

(assert (=> b!687758 (= res!452713 (validKeyInArray!0 (select (arr!18996 a!3626) from!3004)))))

(declare-fun b!687759 () Bool)

(declare-fun e!391782 () Bool)

(assert (=> b!687759 (= e!391782 call!34177)))

(declare-fun b!687760 () Bool)

(assert (=> b!687760 (= e!391780 (contains!3633 acc!681 (select (arr!18996 a!3626) from!3004)))))

(declare-fun d!95095 () Bool)

(declare-fun res!452714 () Bool)

(assert (=> d!95095 (=> res!452714 e!391779)))

(assert (=> d!95095 (= res!452714 (bvsge from!3004 (size!19374 a!3626)))))

(assert (=> d!95095 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!391779)))

(declare-fun b!687761 () Bool)

(assert (=> b!687761 (= e!391781 e!391782)))

(assert (=> b!687761 (= c!77890 (validKeyInArray!0 (select (arr!18996 a!3626) from!3004)))))

(declare-fun b!687762 () Bool)

(assert (=> b!687762 (= e!391782 call!34177)))

(assert (= (and d!95095 (not res!452714)) b!687758))

(assert (= (and b!687758 res!452713) b!687760))

(assert (= (and b!687758 res!452712) b!687761))

(assert (= (and b!687761 c!77890) b!687762))

(assert (= (and b!687761 (not c!77890)) b!687759))

(assert (= (or b!687762 b!687759) bm!34174))

(assert (=> bm!34174 m!651439))

(declare-fun m!651855 () Bool)

(assert (=> bm!34174 m!651855))

(assert (=> b!687758 m!651439))

(assert (=> b!687758 m!651439))

(assert (=> b!687758 m!651469))

(assert (=> b!687760 m!651439))

(assert (=> b!687760 m!651439))

(declare-fun m!651857 () Bool)

(assert (=> b!687760 m!651857))

(assert (=> b!687761 m!651439))

(assert (=> b!687761 m!651439))

(assert (=> b!687761 m!651469))

(assert (=> b!687335 d!95095))

(declare-fun d!95097 () Bool)

(declare-fun lt!315524 () Bool)

(assert (=> d!95097 (= lt!315524 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!303 acc!681)))))

(declare-fun e!391783 () Bool)

(assert (=> d!95097 (= lt!315524 e!391783)))

(declare-fun res!452715 () Bool)

(assert (=> d!95097 (=> (not res!452715) (not e!391783))))

(assert (=> d!95097 (= res!452715 (is-Cons!13086 acc!681))))

(assert (=> d!95097 (= (contains!3633 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315524)))

(declare-fun b!687763 () Bool)

(declare-fun e!391784 () Bool)

(assert (=> b!687763 (= e!391783 e!391784)))

(declare-fun res!452716 () Bool)

(assert (=> b!687763 (=> res!452716 e!391784)))

(assert (=> b!687763 (= res!452716 (= (h!14131 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687764 () Bool)

(assert (=> b!687764 (= e!391784 (contains!3633 (t!19359 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95097 res!452715) b!687763))

(assert (= (and b!687763 (not res!452716)) b!687764))

(assert (=> d!95097 m!651829))

(declare-fun m!651859 () Bool)

(assert (=> d!95097 m!651859))

(declare-fun m!651861 () Bool)

(assert (=> b!687764 m!651861))

(assert (=> b!687346 d!95097))

(declare-fun d!95099 () Bool)

(declare-fun res!452717 () Bool)

(declare-fun e!391785 () Bool)

(assert (=> d!95099 (=> res!452717 e!391785)))

(assert (=> d!95099 (= res!452717 (= (select (arr!18996 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95099 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!391785)))

(declare-fun b!687765 () Bool)

(declare-fun e!391786 () Bool)

(assert (=> b!687765 (= e!391785 e!391786)))

(declare-fun res!452718 () Bool)

(assert (=> b!687765 (=> (not res!452718) (not e!391786))))

(assert (=> b!687765 (= res!452718 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19374 a!3626)))))

(declare-fun b!687766 () Bool)

(assert (=> b!687766 (= e!391786 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95099 (not res!452717)) b!687765))

(assert (= (and b!687765 res!452718) b!687766))

(declare-fun m!651863 () Bool)

(assert (=> d!95099 m!651863))

(declare-fun m!651865 () Bool)

(assert (=> b!687766 m!651865))

(assert (=> b!687345 d!95099))

(declare-fun d!95101 () Bool)

(assert (=> d!95101 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!687334 d!95101))

(declare-fun d!95103 () Bool)

(declare-fun lt!315525 () Bool)

(assert (=> d!95103 (= lt!315525 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!303 acc!681)))))

(declare-fun e!391787 () Bool)

(assert (=> d!95103 (= lt!315525 e!391787)))

(declare-fun res!452719 () Bool)

(assert (=> d!95103 (=> (not res!452719) (not e!391787))))

(assert (=> d!95103 (= res!452719 (is-Cons!13086 acc!681))))

(assert (=> d!95103 (= (contains!3633 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315525)))

(declare-fun b!687767 () Bool)

(declare-fun e!391788 () Bool)

(assert (=> b!687767 (= e!391787 e!391788)))

(declare-fun res!452720 () Bool)

(assert (=> b!687767 (=> res!452720 e!391788)))

(assert (=> b!687767 (= res!452720 (= (h!14131 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687768 () Bool)

(assert (=> b!687768 (= e!391788 (contains!3633 (t!19359 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95103 res!452719) b!687767))

(assert (= (and b!687767 (not res!452720)) b!687768))

(assert (=> d!95103 m!651829))

(declare-fun m!651867 () Bool)

(assert (=> d!95103 m!651867))

(declare-fun m!651869 () Bool)

(assert (=> b!687768 m!651869))

(assert (=> b!687349 d!95103))

(declare-fun bm!34175 () Bool)

(declare-fun call!34178 () Bool)

(declare-fun c!77891 () Bool)

(assert (=> bm!34175 (= call!34178 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77891 (Cons!13086 (select (arr!18996 a!3626) #b00000000000000000000000000000000) Nil!13087) Nil!13087)))))

(declare-fun b!687769 () Bool)

(declare-fun e!391789 () Bool)

(declare-fun e!391791 () Bool)

(assert (=> b!687769 (= e!391789 e!391791)))

(declare-fun res!452721 () Bool)

(assert (=> b!687769 (=> (not res!452721) (not e!391791))))

(declare-fun e!391790 () Bool)

(assert (=> b!687769 (= res!452721 (not e!391790))))

(declare-fun res!452722 () Bool)

(assert (=> b!687769 (=> (not res!452722) (not e!391790))))

(assert (=> b!687769 (= res!452722 (validKeyInArray!0 (select (arr!18996 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687770 () Bool)

(declare-fun e!391792 () Bool)

(assert (=> b!687770 (= e!391792 call!34178)))

(declare-fun b!687771 () Bool)

(assert (=> b!687771 (= e!391790 (contains!3633 Nil!13087 (select (arr!18996 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95105 () Bool)

(declare-fun res!452723 () Bool)

(assert (=> d!95105 (=> res!452723 e!391789)))

(assert (=> d!95105 (= res!452723 (bvsge #b00000000000000000000000000000000 (size!19374 a!3626)))))

(assert (=> d!95105 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13087) e!391789)))

(declare-fun b!687772 () Bool)

(assert (=> b!687772 (= e!391791 e!391792)))

(assert (=> b!687772 (= c!77891 (validKeyInArray!0 (select (arr!18996 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687773 () Bool)

(assert (=> b!687773 (= e!391792 call!34178)))

(assert (= (and d!95105 (not res!452723)) b!687769))

(assert (= (and b!687769 res!452722) b!687771))

(assert (= (and b!687769 res!452721) b!687772))

(assert (= (and b!687772 c!77891) b!687773))

(assert (= (and b!687772 (not c!77891)) b!687770))

(assert (= (or b!687773 b!687770) bm!34175))

(assert (=> bm!34175 m!651863))

(declare-fun m!651871 () Bool)

(assert (=> bm!34175 m!651871))

(assert (=> b!687769 m!651863))

(assert (=> b!687769 m!651863))

(declare-fun m!651873 () Bool)

(assert (=> b!687769 m!651873))

(assert (=> b!687771 m!651863))

(assert (=> b!687771 m!651863))

(declare-fun m!651875 () Bool)

(assert (=> b!687771 m!651875))

(assert (=> b!687772 m!651863))

(assert (=> b!687772 m!651863))

(assert (=> b!687772 m!651873))

(assert (=> b!687337 d!95105))

(declare-fun d!95107 () Bool)

(assert (=> d!95107 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!315528 () Unit!24217)

(declare-fun choose!13 (array!39654 (_ BitVec 64) (_ BitVec 32)) Unit!24217)

(assert (=> d!95107 (= lt!315528 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!95107 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95107 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!315528)))

(declare-fun bs!20176 () Bool)

(assert (= bs!20176 d!95107))

(assert (=> bs!20176 m!651433))

(declare-fun m!651877 () Bool)

(assert (=> bs!20176 m!651877))

(assert (=> b!687347 d!95107))

(push 1)

