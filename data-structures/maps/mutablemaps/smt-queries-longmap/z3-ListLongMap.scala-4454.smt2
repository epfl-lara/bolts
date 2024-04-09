; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61988 () Bool)

(assert start!61988)

(declare-fun b!693211 () Bool)

(declare-fun res!457542 () Bool)

(declare-fun e!394407 () Bool)

(assert (=> b!693211 (=> (not res!457542) (not e!394407))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39830 0))(
  ( (array!39831 (arr!19075 (Array (_ BitVec 32) (_ BitVec 64))) (size!19458 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39830)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!693211 (= res!457542 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19458 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693212 () Bool)

(declare-fun e!394406 () Bool)

(declare-datatypes ((List!13169 0))(
  ( (Nil!13166) (Cons!13165 (h!14210 (_ BitVec 64)) (t!19453 List!13169)) )
))
(declare-fun acc!681 () List!13169)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3712 (List!13169 (_ BitVec 64)) Bool)

(assert (=> b!693212 (= e!394406 (contains!3712 acc!681 k0!2843))))

(declare-fun b!693213 () Bool)

(declare-fun e!394412 () Bool)

(assert (=> b!693213 (= e!394407 e!394412)))

(declare-fun res!457523 () Bool)

(assert (=> b!693213 (=> (not res!457523) (not e!394412))))

(assert (=> b!693213 (= res!457523 (not (= (select (arr!19075 a!3626) from!3004) k0!2843)))))

(declare-datatypes ((Unit!24470 0))(
  ( (Unit!24471) )
))
(declare-fun lt!316688 () Unit!24470)

(declare-fun e!394413 () Unit!24470)

(assert (=> b!693213 (= lt!316688 e!394413)))

(declare-fun c!78212 () Bool)

(assert (=> b!693213 (= c!78212 (= (select (arr!19075 a!3626) from!3004) k0!2843))))

(declare-fun b!693214 () Bool)

(declare-fun res!457527 () Bool)

(assert (=> b!693214 (=> (not res!457527) (not e!394407))))

(declare-fun arrayNoDuplicates!0 (array!39830 (_ BitVec 32) List!13169) Bool)

(assert (=> b!693214 (= res!457527 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13166))))

(declare-fun b!693215 () Bool)

(declare-fun res!457522 () Bool)

(assert (=> b!693215 (=> (not res!457522) (not e!394407))))

(assert (=> b!693215 (= res!457522 (not (contains!3712 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693216 () Bool)

(declare-fun res!457537 () Bool)

(assert (=> b!693216 (=> (not res!457537) (not e!394407))))

(assert (=> b!693216 (= res!457537 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19458 a!3626))))))

(declare-fun res!457531 () Bool)

(assert (=> start!61988 (=> (not res!457531) (not e!394407))))

(assert (=> start!61988 (= res!457531 (and (bvslt (size!19458 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19458 a!3626))))))

(assert (=> start!61988 e!394407))

(assert (=> start!61988 true))

(declare-fun array_inv!14849 (array!39830) Bool)

(assert (=> start!61988 (array_inv!14849 a!3626)))

(declare-fun b!693217 () Bool)

(declare-fun e!394404 () Bool)

(declare-fun lt!316687 () List!13169)

(assert (=> b!693217 (= e!394404 (contains!3712 lt!316687 k0!2843))))

(declare-fun b!693218 () Bool)

(declare-fun res!457538 () Bool)

(assert (=> b!693218 (=> (not res!457538) (not e!394407))))

(declare-fun noDuplicate!959 (List!13169) Bool)

(assert (=> b!693218 (= res!457538 (noDuplicate!959 acc!681))))

(declare-fun b!693219 () Bool)

(declare-fun res!457533 () Bool)

(assert (=> b!693219 (=> (not res!457533) (not e!394407))))

(assert (=> b!693219 (= res!457533 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693220 () Bool)

(declare-fun res!457534 () Bool)

(assert (=> b!693220 (=> (not res!457534) (not e!394407))))

(declare-fun e!394410 () Bool)

(assert (=> b!693220 (= res!457534 e!394410)))

(declare-fun res!457526 () Bool)

(assert (=> b!693220 (=> res!457526 e!394410)))

(assert (=> b!693220 (= res!457526 e!394406)))

(declare-fun res!457532 () Bool)

(assert (=> b!693220 (=> (not res!457532) (not e!394406))))

(assert (=> b!693220 (= res!457532 (bvsgt from!3004 i!1382))))

(declare-fun b!693221 () Bool)

(declare-fun e!394408 () Bool)

(assert (=> b!693221 (= e!394408 (not (contains!3712 lt!316687 k0!2843)))))

(declare-fun b!693222 () Bool)

(declare-fun res!457524 () Bool)

(declare-fun e!394411 () Bool)

(assert (=> b!693222 (=> (not res!457524) (not e!394411))))

(declare-fun e!394409 () Bool)

(assert (=> b!693222 (= res!457524 e!394409)))

(declare-fun res!457528 () Bool)

(assert (=> b!693222 (=> res!457528 e!394409)))

(assert (=> b!693222 (= res!457528 e!394404)))

(declare-fun res!457539 () Bool)

(assert (=> b!693222 (=> (not res!457539) (not e!394404))))

(assert (=> b!693222 (= res!457539 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693223 () Bool)

(declare-fun res!457541 () Bool)

(assert (=> b!693223 (=> (not res!457541) (not e!394407))))

(declare-fun arrayContainsKey!0 (array!39830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693223 (= res!457541 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!693224 () Bool)

(assert (=> b!693224 (= e!394409 e!394408)))

(declare-fun res!457544 () Bool)

(assert (=> b!693224 (=> (not res!457544) (not e!394408))))

(assert (=> b!693224 (= res!457544 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693225 () Bool)

(declare-fun Unit!24472 () Unit!24470)

(assert (=> b!693225 (= e!394413 Unit!24472)))

(declare-fun b!693226 () Bool)

(declare-fun res!457535 () Bool)

(assert (=> b!693226 (=> (not res!457535) (not e!394407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693226 (= res!457535 (validKeyInArray!0 k0!2843))))

(declare-fun b!693227 () Bool)

(declare-fun Unit!24473 () Unit!24470)

(assert (=> b!693227 (= e!394413 Unit!24473)))

(assert (=> b!693227 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316689 () Unit!24470)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39830 (_ BitVec 64) (_ BitVec 32)) Unit!24470)

(assert (=> b!693227 (= lt!316689 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!693227 false))

(declare-fun b!693228 () Bool)

(declare-fun e!394414 () Bool)

(assert (=> b!693228 (= e!394414 (not (contains!3712 acc!681 k0!2843)))))

(declare-fun b!693229 () Bool)

(declare-fun res!457525 () Bool)

(assert (=> b!693229 (=> (not res!457525) (not e!394411))))

(assert (=> b!693229 (= res!457525 (not (contains!3712 lt!316687 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693230 () Bool)

(declare-fun res!457530 () Bool)

(assert (=> b!693230 (=> (not res!457530) (not e!394411))))

(assert (=> b!693230 (= res!457530 (not (contains!3712 lt!316687 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693231 () Bool)

(declare-fun res!457529 () Bool)

(assert (=> b!693231 (=> (not res!457529) (not e!394407))))

(assert (=> b!693231 (= res!457529 (not (contains!3712 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693232 () Bool)

(assert (=> b!693232 (= e!394412 e!394411)))

(declare-fun res!457521 () Bool)

(assert (=> b!693232 (=> (not res!457521) (not e!394411))))

(assert (=> b!693232 (= res!457521 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!422 (List!13169 (_ BitVec 64)) List!13169)

(assert (=> b!693232 (= lt!316687 ($colon$colon!422 acc!681 (select (arr!19075 a!3626) from!3004)))))

(declare-fun b!693233 () Bool)

(declare-fun res!457536 () Bool)

(assert (=> b!693233 (=> (not res!457536) (not e!394407))))

(assert (=> b!693233 (= res!457536 (validKeyInArray!0 (select (arr!19075 a!3626) from!3004)))))

(declare-fun b!693234 () Bool)

(assert (=> b!693234 (= e!394410 e!394414)))

(declare-fun res!457543 () Bool)

(assert (=> b!693234 (=> (not res!457543) (not e!394414))))

(assert (=> b!693234 (= res!457543 (bvsle from!3004 i!1382))))

(declare-fun b!693235 () Bool)

(declare-fun res!457540 () Bool)

(assert (=> b!693235 (=> (not res!457540) (not e!394411))))

(assert (=> b!693235 (= res!457540 (noDuplicate!959 lt!316687))))

(declare-fun b!693236 () Bool)

(assert (=> b!693236 (= e!394411 (not (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316687)))))

(assert (= (and start!61988 res!457531) b!693218))

(assert (= (and b!693218 res!457538) b!693231))

(assert (= (and b!693231 res!457529) b!693215))

(assert (= (and b!693215 res!457522) b!693220))

(assert (= (and b!693220 res!457532) b!693212))

(assert (= (and b!693220 (not res!457526)) b!693234))

(assert (= (and b!693234 res!457543) b!693228))

(assert (= (and b!693220 res!457534) b!693214))

(assert (= (and b!693214 res!457527) b!693219))

(assert (= (and b!693219 res!457533) b!693216))

(assert (= (and b!693216 res!457537) b!693226))

(assert (= (and b!693226 res!457535) b!693223))

(assert (= (and b!693223 res!457541) b!693211))

(assert (= (and b!693211 res!457542) b!693233))

(assert (= (and b!693233 res!457536) b!693213))

(assert (= (and b!693213 c!78212) b!693227))

(assert (= (and b!693213 (not c!78212)) b!693225))

(assert (= (and b!693213 res!457523) b!693232))

(assert (= (and b!693232 res!457521) b!693235))

(assert (= (and b!693235 res!457540) b!693230))

(assert (= (and b!693230 res!457530) b!693229))

(assert (= (and b!693229 res!457525) b!693222))

(assert (= (and b!693222 res!457539) b!693217))

(assert (= (and b!693222 (not res!457528)) b!693224))

(assert (= (and b!693224 res!457544) b!693221))

(assert (= (and b!693222 res!457524) b!693236))

(declare-fun m!655529 () Bool)

(assert (=> b!693212 m!655529))

(declare-fun m!655531 () Bool)

(assert (=> b!693229 m!655531))

(declare-fun m!655533 () Bool)

(assert (=> start!61988 m!655533))

(declare-fun m!655535 () Bool)

(assert (=> b!693235 m!655535))

(declare-fun m!655537 () Bool)

(assert (=> b!693227 m!655537))

(declare-fun m!655539 () Bool)

(assert (=> b!693227 m!655539))

(declare-fun m!655541 () Bool)

(assert (=> b!693213 m!655541))

(declare-fun m!655543 () Bool)

(assert (=> b!693223 m!655543))

(assert (=> b!693233 m!655541))

(assert (=> b!693233 m!655541))

(declare-fun m!655545 () Bool)

(assert (=> b!693233 m!655545))

(declare-fun m!655547 () Bool)

(assert (=> b!693217 m!655547))

(declare-fun m!655549 () Bool)

(assert (=> b!693231 m!655549))

(declare-fun m!655551 () Bool)

(assert (=> b!693219 m!655551))

(declare-fun m!655553 () Bool)

(assert (=> b!693218 m!655553))

(declare-fun m!655555 () Bool)

(assert (=> b!693236 m!655555))

(declare-fun m!655557 () Bool)

(assert (=> b!693226 m!655557))

(assert (=> b!693232 m!655541))

(assert (=> b!693232 m!655541))

(declare-fun m!655559 () Bool)

(assert (=> b!693232 m!655559))

(declare-fun m!655561 () Bool)

(assert (=> b!693230 m!655561))

(assert (=> b!693221 m!655547))

(declare-fun m!655563 () Bool)

(assert (=> b!693215 m!655563))

(assert (=> b!693228 m!655529))

(declare-fun m!655565 () Bool)

(assert (=> b!693214 m!655565))

(check-sat (not b!693215) (not b!693229) (not b!693223) (not b!693226) (not b!693219) (not b!693221) (not b!693231) (not b!693214) (not start!61988) (not b!693235) (not b!693228) (not b!693218) (not b!693233) (not b!693217) (not b!693236) (not b!693230) (not b!693232) (not b!693227) (not b!693212))
(check-sat)
(get-model)

(declare-fun d!95689 () Bool)

(assert (=> d!95689 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!693226 d!95689))

(declare-fun d!95693 () Bool)

(declare-fun lt!316701 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!319 (List!13169) (InoxSet (_ BitVec 64)))

(assert (=> d!95693 (= lt!316701 (select (content!319 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!394458 () Bool)

(assert (=> d!95693 (= lt!316701 e!394458)))

(declare-fun res!457627 () Bool)

(assert (=> d!95693 (=> (not res!457627) (not e!394458))))

(get-info :version)

(assert (=> d!95693 (= res!457627 ((_ is Cons!13165) acc!681))))

(assert (=> d!95693 (= (contains!3712 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316701)))

(declare-fun b!693325 () Bool)

(declare-fun e!394459 () Bool)

(assert (=> b!693325 (= e!394458 e!394459)))

(declare-fun res!457628 () Bool)

(assert (=> b!693325 (=> res!457628 e!394459)))

(assert (=> b!693325 (= res!457628 (= (h!14210 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693326 () Bool)

(assert (=> b!693326 (= e!394459 (contains!3712 (t!19453 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95693 res!457627) b!693325))

(assert (= (and b!693325 (not res!457628)) b!693326))

(declare-fun m!655609 () Bool)

(assert (=> d!95693 m!655609))

(declare-fun m!655611 () Bool)

(assert (=> d!95693 m!655611))

(declare-fun m!655613 () Bool)

(assert (=> b!693326 m!655613))

(assert (=> b!693215 d!95693))

(declare-fun b!693349 () Bool)

(declare-fun e!394483 () Bool)

(assert (=> b!693349 (= e!394483 (contains!3712 Nil!13166 (select (arr!19075 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95699 () Bool)

(declare-fun res!457647 () Bool)

(declare-fun e!394482 () Bool)

(assert (=> d!95699 (=> res!457647 e!394482)))

(assert (=> d!95699 (= res!457647 (bvsge #b00000000000000000000000000000000 (size!19458 a!3626)))))

(assert (=> d!95699 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13166) e!394482)))

(declare-fun bm!34259 () Bool)

(declare-fun call!34262 () Bool)

(declare-fun c!78218 () Bool)

(assert (=> bm!34259 (= call!34262 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78218 (Cons!13165 (select (arr!19075 a!3626) #b00000000000000000000000000000000) Nil!13166) Nil!13166)))))

(declare-fun b!693350 () Bool)

(declare-fun e!394481 () Bool)

(assert (=> b!693350 (= e!394481 call!34262)))

(declare-fun b!693351 () Bool)

(declare-fun e!394480 () Bool)

(assert (=> b!693351 (= e!394480 e!394481)))

(assert (=> b!693351 (= c!78218 (validKeyInArray!0 (select (arr!19075 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!693352 () Bool)

(assert (=> b!693352 (= e!394482 e!394480)))

(declare-fun res!457648 () Bool)

(assert (=> b!693352 (=> (not res!457648) (not e!394480))))

(assert (=> b!693352 (= res!457648 (not e!394483))))

(declare-fun res!457649 () Bool)

(assert (=> b!693352 (=> (not res!457649) (not e!394483))))

(assert (=> b!693352 (= res!457649 (validKeyInArray!0 (select (arr!19075 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!693353 () Bool)

(assert (=> b!693353 (= e!394481 call!34262)))

(assert (= (and d!95699 (not res!457647)) b!693352))

(assert (= (and b!693352 res!457649) b!693349))

(assert (= (and b!693352 res!457648) b!693351))

(assert (= (and b!693351 c!78218) b!693350))

(assert (= (and b!693351 (not c!78218)) b!693353))

(assert (= (or b!693350 b!693353) bm!34259))

(declare-fun m!655621 () Bool)

(assert (=> b!693349 m!655621))

(assert (=> b!693349 m!655621))

(declare-fun m!655623 () Bool)

(assert (=> b!693349 m!655623))

(assert (=> bm!34259 m!655621))

(declare-fun m!655625 () Bool)

(assert (=> bm!34259 m!655625))

(assert (=> b!693351 m!655621))

(assert (=> b!693351 m!655621))

(declare-fun m!655627 () Bool)

(assert (=> b!693351 m!655627))

(assert (=> b!693352 m!655621))

(assert (=> b!693352 m!655621))

(assert (=> b!693352 m!655627))

(assert (=> b!693214 d!95699))

(declare-fun d!95705 () Bool)

(declare-fun res!457657 () Bool)

(declare-fun e!394494 () Bool)

(assert (=> d!95705 (=> res!457657 e!394494)))

(assert (=> d!95705 (= res!457657 ((_ is Nil!13166) lt!316687))))

(assert (=> d!95705 (= (noDuplicate!959 lt!316687) e!394494)))

(declare-fun b!693367 () Bool)

(declare-fun e!394495 () Bool)

(assert (=> b!693367 (= e!394494 e!394495)))

(declare-fun res!457658 () Bool)

(assert (=> b!693367 (=> (not res!457658) (not e!394495))))

(assert (=> b!693367 (= res!457658 (not (contains!3712 (t!19453 lt!316687) (h!14210 lt!316687))))))

(declare-fun b!693368 () Bool)

(assert (=> b!693368 (= e!394495 (noDuplicate!959 (t!19453 lt!316687)))))

(assert (= (and d!95705 (not res!457657)) b!693367))

(assert (= (and b!693367 res!457658) b!693368))

(declare-fun m!655629 () Bool)

(assert (=> b!693367 m!655629))

(declare-fun m!655631 () Bool)

(assert (=> b!693368 m!655631))

(assert (=> b!693235 d!95705))

(declare-fun e!394499 () Bool)

(declare-fun b!693369 () Bool)

(assert (=> b!693369 (= e!394499 (contains!3712 lt!316687 (select (arr!19075 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!95709 () Bool)

(declare-fun res!457659 () Bool)

(declare-fun e!394498 () Bool)

(assert (=> d!95709 (=> res!457659 e!394498)))

(assert (=> d!95709 (= res!457659 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19458 a!3626)))))

(assert (=> d!95709 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316687) e!394498)))

(declare-fun call!34266 () Bool)

(declare-fun bm!34263 () Bool)

(declare-fun c!78222 () Bool)

(assert (=> bm!34263 (= call!34266 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78222 (Cons!13165 (select (arr!19075 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!316687) lt!316687)))))

(declare-fun b!693370 () Bool)

(declare-fun e!394497 () Bool)

(assert (=> b!693370 (= e!394497 call!34266)))

(declare-fun b!693371 () Bool)

(declare-fun e!394496 () Bool)

(assert (=> b!693371 (= e!394496 e!394497)))

(assert (=> b!693371 (= c!78222 (validKeyInArray!0 (select (arr!19075 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!693372 () Bool)

(assert (=> b!693372 (= e!394498 e!394496)))

(declare-fun res!457660 () Bool)

(assert (=> b!693372 (=> (not res!457660) (not e!394496))))

(assert (=> b!693372 (= res!457660 (not e!394499))))

(declare-fun res!457661 () Bool)

(assert (=> b!693372 (=> (not res!457661) (not e!394499))))

(assert (=> b!693372 (= res!457661 (validKeyInArray!0 (select (arr!19075 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!693373 () Bool)

(assert (=> b!693373 (= e!394497 call!34266)))

(assert (= (and d!95709 (not res!457659)) b!693372))

(assert (= (and b!693372 res!457661) b!693369))

(assert (= (and b!693372 res!457660) b!693371))

(assert (= (and b!693371 c!78222) b!693370))

(assert (= (and b!693371 (not c!78222)) b!693373))

(assert (= (or b!693370 b!693373) bm!34263))

(declare-fun m!655641 () Bool)

(assert (=> b!693369 m!655641))

(assert (=> b!693369 m!655641))

(declare-fun m!655643 () Bool)

(assert (=> b!693369 m!655643))

(assert (=> bm!34263 m!655641))

(declare-fun m!655651 () Bool)

(assert (=> bm!34263 m!655651))

(assert (=> b!693371 m!655641))

(assert (=> b!693371 m!655641))

(declare-fun m!655653 () Bool)

(assert (=> b!693371 m!655653))

(assert (=> b!693372 m!655641))

(assert (=> b!693372 m!655641))

(assert (=> b!693372 m!655653))

(assert (=> b!693236 d!95709))

(declare-fun d!95715 () Bool)

(declare-fun res!457683 () Bool)

(declare-fun e!394524 () Bool)

(assert (=> d!95715 (=> res!457683 e!394524)))

(assert (=> d!95715 (= res!457683 (= (select (arr!19075 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!95715 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!394524)))

(declare-fun b!693401 () Bool)

(declare-fun e!394525 () Bool)

(assert (=> b!693401 (= e!394524 e!394525)))

(declare-fun res!457684 () Bool)

(assert (=> b!693401 (=> (not res!457684) (not e!394525))))

(assert (=> b!693401 (= res!457684 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19458 a!3626)))))

(declare-fun b!693402 () Bool)

(assert (=> b!693402 (= e!394525 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95715 (not res!457683)) b!693401))

(assert (= (and b!693401 res!457684) b!693402))

(assert (=> d!95715 m!655621))

(declare-fun m!655675 () Bool)

(assert (=> b!693402 m!655675))

(assert (=> b!693223 d!95715))

(declare-fun d!95727 () Bool)

(assert (=> d!95727 (= (array_inv!14849 a!3626) (bvsge (size!19458 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61988 d!95727))

(declare-fun d!95731 () Bool)

(declare-fun lt!316710 () Bool)

(assert (=> d!95731 (= lt!316710 (select (content!319 acc!681) k0!2843))))

(declare-fun e!394534 () Bool)

(assert (=> d!95731 (= lt!316710 e!394534)))

(declare-fun res!457692 () Bool)

(assert (=> d!95731 (=> (not res!457692) (not e!394534))))

(assert (=> d!95731 (= res!457692 ((_ is Cons!13165) acc!681))))

(assert (=> d!95731 (= (contains!3712 acc!681 k0!2843) lt!316710)))

(declare-fun b!693412 () Bool)

(declare-fun e!394535 () Bool)

(assert (=> b!693412 (= e!394534 e!394535)))

(declare-fun res!457693 () Bool)

(assert (=> b!693412 (=> res!457693 e!394535)))

(assert (=> b!693412 (= res!457693 (= (h!14210 acc!681) k0!2843))))

(declare-fun b!693413 () Bool)

(assert (=> b!693413 (= e!394535 (contains!3712 (t!19453 acc!681) k0!2843))))

(assert (= (and d!95731 res!457692) b!693412))

(assert (= (and b!693412 (not res!457693)) b!693413))

(assert (=> d!95731 m!655609))

(declare-fun m!655689 () Bool)

(assert (=> d!95731 m!655689))

(declare-fun m!655693 () Bool)

(assert (=> b!693413 m!655693))

(assert (=> b!693212 d!95731))

(declare-fun d!95737 () Bool)

(assert (=> d!95737 (= (validKeyInArray!0 (select (arr!19075 a!3626) from!3004)) (and (not (= (select (arr!19075 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19075 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!693233 d!95737))

(declare-fun d!95741 () Bool)

(declare-fun lt!316711 () Bool)

(assert (=> d!95741 (= lt!316711 (select (content!319 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!394540 () Bool)

(assert (=> d!95741 (= lt!316711 e!394540)))

(declare-fun res!457697 () Bool)

(assert (=> d!95741 (=> (not res!457697) (not e!394540))))

(assert (=> d!95741 (= res!457697 ((_ is Cons!13165) acc!681))))

(assert (=> d!95741 (= (contains!3712 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316711)))

(declare-fun b!693419 () Bool)

(declare-fun e!394541 () Bool)

(assert (=> b!693419 (= e!394540 e!394541)))

(declare-fun res!457698 () Bool)

(assert (=> b!693419 (=> res!457698 e!394541)))

(assert (=> b!693419 (= res!457698 (= (h!14210 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693420 () Bool)

(assert (=> b!693420 (= e!394541 (contains!3712 (t!19453 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95741 res!457697) b!693419))

(assert (= (and b!693419 (not res!457698)) b!693420))

(assert (=> d!95741 m!655609))

(declare-fun m!655697 () Bool)

(assert (=> d!95741 m!655697))

(declare-fun m!655699 () Bool)

(assert (=> b!693420 m!655699))

(assert (=> b!693231 d!95741))

(declare-fun d!95743 () Bool)

(assert (=> d!95743 (= ($colon$colon!422 acc!681 (select (arr!19075 a!3626) from!3004)) (Cons!13165 (select (arr!19075 a!3626) from!3004) acc!681))))

(assert (=> b!693232 d!95743))

(declare-fun d!95747 () Bool)

(declare-fun lt!316712 () Bool)

(assert (=> d!95747 (= lt!316712 (select (content!319 lt!316687) k0!2843))))

(declare-fun e!394542 () Bool)

(assert (=> d!95747 (= lt!316712 e!394542)))

(declare-fun res!457699 () Bool)

(assert (=> d!95747 (=> (not res!457699) (not e!394542))))

(assert (=> d!95747 (= res!457699 ((_ is Cons!13165) lt!316687))))

(assert (=> d!95747 (= (contains!3712 lt!316687 k0!2843) lt!316712)))

(declare-fun b!693421 () Bool)

(declare-fun e!394544 () Bool)

(assert (=> b!693421 (= e!394542 e!394544)))

(declare-fun res!457700 () Bool)

(assert (=> b!693421 (=> res!457700 e!394544)))

(assert (=> b!693421 (= res!457700 (= (h!14210 lt!316687) k0!2843))))

(declare-fun b!693422 () Bool)

(assert (=> b!693422 (= e!394544 (contains!3712 (t!19453 lt!316687) k0!2843))))

(assert (= (and d!95747 res!457699) b!693421))

(assert (= (and b!693421 (not res!457700)) b!693422))

(declare-fun m!655705 () Bool)

(assert (=> d!95747 m!655705))

(declare-fun m!655707 () Bool)

(assert (=> d!95747 m!655707))

(declare-fun m!655709 () Bool)

(assert (=> b!693422 m!655709))

(assert (=> b!693221 d!95747))

(declare-fun d!95751 () Bool)

(declare-fun lt!316713 () Bool)

(assert (=> d!95751 (= lt!316713 (select (content!319 lt!316687) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!394548 () Bool)

(assert (=> d!95751 (= lt!316713 e!394548)))

(declare-fun res!457705 () Bool)

(assert (=> d!95751 (=> (not res!457705) (not e!394548))))

(assert (=> d!95751 (= res!457705 ((_ is Cons!13165) lt!316687))))

(assert (=> d!95751 (= (contains!3712 lt!316687 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316713)))

(declare-fun b!693427 () Bool)

(declare-fun e!394549 () Bool)

(assert (=> b!693427 (= e!394548 e!394549)))

(declare-fun res!457706 () Bool)

(assert (=> b!693427 (=> res!457706 e!394549)))

(assert (=> b!693427 (= res!457706 (= (h!14210 lt!316687) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693428 () Bool)

(assert (=> b!693428 (= e!394549 (contains!3712 (t!19453 lt!316687) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95751 res!457705) b!693427))

(assert (= (and b!693427 (not res!457706)) b!693428))

(assert (=> d!95751 m!655705))

(declare-fun m!655711 () Bool)

(assert (=> d!95751 m!655711))

(declare-fun m!655713 () Bool)

(assert (=> b!693428 m!655713))

(assert (=> b!693230 d!95751))

(declare-fun e!394553 () Bool)

(declare-fun b!693429 () Bool)

(assert (=> b!693429 (= e!394553 (contains!3712 acc!681 (select (arr!19075 a!3626) from!3004)))))

(declare-fun d!95753 () Bool)

(declare-fun res!457707 () Bool)

(declare-fun e!394552 () Bool)

(assert (=> d!95753 (=> res!457707 e!394552)))

(assert (=> d!95753 (= res!457707 (bvsge from!3004 (size!19458 a!3626)))))

(assert (=> d!95753 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!394552)))

(declare-fun c!78228 () Bool)

(declare-fun bm!34269 () Bool)

(declare-fun call!34272 () Bool)

(assert (=> bm!34269 (= call!34272 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78228 (Cons!13165 (select (arr!19075 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!693430 () Bool)

(declare-fun e!394551 () Bool)

(assert (=> b!693430 (= e!394551 call!34272)))

(declare-fun b!693431 () Bool)

(declare-fun e!394550 () Bool)

(assert (=> b!693431 (= e!394550 e!394551)))

(assert (=> b!693431 (= c!78228 (validKeyInArray!0 (select (arr!19075 a!3626) from!3004)))))

(declare-fun b!693432 () Bool)

(assert (=> b!693432 (= e!394552 e!394550)))

(declare-fun res!457708 () Bool)

(assert (=> b!693432 (=> (not res!457708) (not e!394550))))

(assert (=> b!693432 (= res!457708 (not e!394553))))

(declare-fun res!457709 () Bool)

(assert (=> b!693432 (=> (not res!457709) (not e!394553))))

(assert (=> b!693432 (= res!457709 (validKeyInArray!0 (select (arr!19075 a!3626) from!3004)))))

(declare-fun b!693433 () Bool)

(assert (=> b!693433 (= e!394551 call!34272)))

(assert (= (and d!95753 (not res!457707)) b!693432))

(assert (= (and b!693432 res!457709) b!693429))

(assert (= (and b!693432 res!457708) b!693431))

(assert (= (and b!693431 c!78228) b!693430))

(assert (= (and b!693431 (not c!78228)) b!693433))

(assert (= (or b!693430 b!693433) bm!34269))

(assert (=> b!693429 m!655541))

(assert (=> b!693429 m!655541))

(declare-fun m!655715 () Bool)

(assert (=> b!693429 m!655715))

(assert (=> bm!34269 m!655541))

(declare-fun m!655721 () Bool)

(assert (=> bm!34269 m!655721))

(assert (=> b!693431 m!655541))

(assert (=> b!693431 m!655541))

(assert (=> b!693431 m!655545))

(assert (=> b!693432 m!655541))

(assert (=> b!693432 m!655541))

(assert (=> b!693432 m!655545))

(assert (=> b!693219 d!95753))

(declare-fun d!95757 () Bool)

(declare-fun res!457715 () Bool)

(declare-fun e!394560 () Bool)

(assert (=> d!95757 (=> res!457715 e!394560)))

(assert (=> d!95757 (= res!457715 ((_ is Nil!13166) acc!681))))

(assert (=> d!95757 (= (noDuplicate!959 acc!681) e!394560)))

(declare-fun b!693438 () Bool)

(declare-fun e!394561 () Bool)

(assert (=> b!693438 (= e!394560 e!394561)))

(declare-fun res!457717 () Bool)

(assert (=> b!693438 (=> (not res!457717) (not e!394561))))

(assert (=> b!693438 (= res!457717 (not (contains!3712 (t!19453 acc!681) (h!14210 acc!681))))))

(declare-fun b!693439 () Bool)

(assert (=> b!693439 (= e!394561 (noDuplicate!959 (t!19453 acc!681)))))

(assert (= (and d!95757 (not res!457715)) b!693438))

(assert (= (and b!693438 res!457717) b!693439))

(declare-fun m!655723 () Bool)

(assert (=> b!693438 m!655723))

(declare-fun m!655725 () Bool)

(assert (=> b!693439 m!655725))

(assert (=> b!693218 d!95757))

(declare-fun d!95759 () Bool)

(declare-fun lt!316714 () Bool)

(assert (=> d!95759 (= lt!316714 (select (content!319 lt!316687) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!394562 () Bool)

(assert (=> d!95759 (= lt!316714 e!394562)))

(declare-fun res!457718 () Bool)

(assert (=> d!95759 (=> (not res!457718) (not e!394562))))

(assert (=> d!95759 (= res!457718 ((_ is Cons!13165) lt!316687))))

(assert (=> d!95759 (= (contains!3712 lt!316687 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316714)))

(declare-fun b!693442 () Bool)

(declare-fun e!394563 () Bool)

(assert (=> b!693442 (= e!394562 e!394563)))

(declare-fun res!457719 () Bool)

(assert (=> b!693442 (=> res!457719 e!394563)))

(assert (=> b!693442 (= res!457719 (= (h!14210 lt!316687) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693443 () Bool)

(assert (=> b!693443 (= e!394563 (contains!3712 (t!19453 lt!316687) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95759 res!457718) b!693442))

(assert (= (and b!693442 (not res!457719)) b!693443))

(assert (=> d!95759 m!655705))

(declare-fun m!655727 () Bool)

(assert (=> d!95759 m!655727))

(declare-fun m!655729 () Bool)

(assert (=> b!693443 m!655729))

(assert (=> b!693229 d!95759))

(declare-fun d!95761 () Bool)

(declare-fun res!457720 () Bool)

(declare-fun e!394564 () Bool)

(assert (=> d!95761 (=> res!457720 e!394564)))

(assert (=> d!95761 (= res!457720 (= (select (arr!19075 a!3626) from!3004) k0!2843))))

(assert (=> d!95761 (= (arrayContainsKey!0 a!3626 k0!2843 from!3004) e!394564)))

(declare-fun b!693444 () Bool)

(declare-fun e!394565 () Bool)

(assert (=> b!693444 (= e!394564 e!394565)))

(declare-fun res!457721 () Bool)

(assert (=> b!693444 (=> (not res!457721) (not e!394565))))

(assert (=> b!693444 (= res!457721 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19458 a!3626)))))

(declare-fun b!693445 () Bool)

(assert (=> b!693445 (= e!394565 (arrayContainsKey!0 a!3626 k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95761 (not res!457720)) b!693444))

(assert (= (and b!693444 res!457721) b!693445))

(assert (=> d!95761 m!655541))

(declare-fun m!655731 () Bool)

(assert (=> b!693445 m!655731))

(assert (=> b!693227 d!95761))

(declare-fun d!95763 () Bool)

(assert (=> d!95763 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316722 () Unit!24470)

(declare-fun choose!13 (array!39830 (_ BitVec 64) (_ BitVec 32)) Unit!24470)

(assert (=> d!95763 (= lt!316722 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!95763 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95763 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!316722)))

(declare-fun bs!20279 () Bool)

(assert (= bs!20279 d!95763))

(assert (=> bs!20279 m!655543))

(declare-fun m!655735 () Bool)

(assert (=> bs!20279 m!655735))

(assert (=> b!693227 d!95763))

(assert (=> b!693228 d!95731))

(assert (=> b!693217 d!95747))

(check-sat (not d!95693) (not bm!34263) (not b!693422) (not b!693438) (not d!95759) (not b!693420) (not b!693443) (not b!693349) (not d!95751) (not d!95747) (not b!693439) (not b!693367) (not b!693402) (not b!693431) (not b!693371) (not b!693432) (not b!693352) (not b!693413) (not b!693369) (not bm!34269) (not d!95763) (not d!95731) (not b!693445) (not b!693428) (not b!693326) (not b!693368) (not b!693429) (not b!693372) (not d!95741) (not bm!34259) (not b!693351))
(check-sat)
