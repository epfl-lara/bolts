; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62244 () Bool)

(assert start!62244)

(declare-fun b!697209 () Bool)

(declare-fun e!396327 () Bool)

(declare-datatypes ((List!13228 0))(
  ( (Nil!13225) (Cons!13224 (h!14269 (_ BitVec 64)) (t!19518 List!13228)) )
))
(declare-fun acc!681 () List!13228)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3771 (List!13228 (_ BitVec 64)) Bool)

(assert (=> b!697209 (= e!396327 (contains!3771 acc!681 k!2843))))

(declare-fun b!697210 () Bool)

(declare-fun res!461306 () Bool)

(declare-fun e!396321 () Bool)

(assert (=> b!697210 (=> (not res!461306) (not e!396321))))

(declare-datatypes ((array!39957 0))(
  ( (array!39958 (arr!19134 (Array (_ BitVec 32) (_ BitVec 64))) (size!19517 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39957)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39957 (_ BitVec 32) List!13228) Bool)

(assert (=> b!697210 (= res!461306 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!697211 () Bool)

(declare-fun res!461318 () Bool)

(assert (=> b!697211 (=> (not res!461318) (not e!396321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!697211 (= res!461318 (not (validKeyInArray!0 (select (arr!19134 a!3626) from!3004))))))

(declare-fun b!697212 () Bool)

(declare-fun e!396328 () Bool)

(assert (=> b!697212 (= e!396328 (contains!3771 acc!681 k!2843))))

(declare-fun b!697213 () Bool)

(declare-fun e!396322 () Bool)

(declare-fun e!396324 () Bool)

(assert (=> b!697213 (= e!396322 e!396324)))

(declare-fun res!461320 () Bool)

(assert (=> b!697213 (=> (not res!461320) (not e!396324))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!697213 (= res!461320 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697215 () Bool)

(declare-fun res!461321 () Bool)

(assert (=> b!697215 (=> (not res!461321) (not e!396321))))

(assert (=> b!697215 (= res!461321 (not (contains!3771 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697216 () Bool)

(declare-fun res!461309 () Bool)

(assert (=> b!697216 (=> (not res!461309) (not e!396321))))

(declare-fun arrayContainsKey!0 (array!39957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!697216 (= res!461309 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!697217 () Bool)

(declare-fun res!461304 () Bool)

(assert (=> b!697217 (=> (not res!461304) (not e!396321))))

(assert (=> b!697217 (= res!461304 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!697218 () Bool)

(declare-fun res!461313 () Bool)

(assert (=> b!697218 (=> (not res!461313) (not e!396321))))

(assert (=> b!697218 (= res!461313 e!396322)))

(declare-fun res!461312 () Bool)

(assert (=> b!697218 (=> res!461312 e!396322)))

(assert (=> b!697218 (= res!461312 e!396328)))

(declare-fun res!461317 () Bool)

(assert (=> b!697218 (=> (not res!461317) (not e!396328))))

(assert (=> b!697218 (= res!461317 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!697219 () Bool)

(declare-fun res!461307 () Bool)

(assert (=> b!697219 (=> (not res!461307) (not e!396321))))

(assert (=> b!697219 (= res!461307 (validKeyInArray!0 k!2843))))

(declare-fun b!697220 () Bool)

(declare-fun res!461319 () Bool)

(assert (=> b!697220 (=> (not res!461319) (not e!396321))))

(assert (=> b!697220 (= res!461319 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13225))))

(declare-fun lt!317091 () array!39957)

(declare-fun b!697221 () Bool)

(assert (=> b!697221 (= e!396321 (not (arrayNoDuplicates!0 lt!317091 from!3004 acc!681)))))

(assert (=> b!697221 (arrayNoDuplicates!0 lt!317091 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (=> b!697221 (= lt!317091 (array!39958 (store (arr!19134 a!3626) i!1382 k!2843) (size!19517 a!3626)))))

(declare-datatypes ((Unit!24556 0))(
  ( (Unit!24557) )
))
(declare-fun lt!317090 () Unit!24556)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39957 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13228) Unit!24556)

(assert (=> b!697221 (= lt!317090 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697222 () Bool)

(declare-fun e!396323 () Bool)

(declare-fun e!396325 () Bool)

(assert (=> b!697222 (= e!396323 e!396325)))

(declare-fun res!461314 () Bool)

(assert (=> b!697222 (=> (not res!461314) (not e!396325))))

(assert (=> b!697222 (= res!461314 (bvsle from!3004 i!1382))))

(declare-fun b!697223 () Bool)

(assert (=> b!697223 (= e!396324 (not (contains!3771 acc!681 k!2843)))))

(declare-fun b!697224 () Bool)

(declare-fun res!461311 () Bool)

(assert (=> b!697224 (=> (not res!461311) (not e!396321))))

(declare-fun noDuplicate!1018 (List!13228) Bool)

(assert (=> b!697224 (= res!461311 (noDuplicate!1018 acc!681))))

(declare-fun res!461301 () Bool)

(assert (=> start!62244 (=> (not res!461301) (not e!396321))))

(assert (=> start!62244 (= res!461301 (and (bvslt (size!19517 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19517 a!3626))))))

(assert (=> start!62244 e!396321))

(assert (=> start!62244 true))

(declare-fun array_inv!14908 (array!39957) Bool)

(assert (=> start!62244 (array_inv!14908 a!3626)))

(declare-fun b!697214 () Bool)

(declare-fun res!461310 () Bool)

(assert (=> b!697214 (=> (not res!461310) (not e!396321))))

(assert (=> b!697214 (= res!461310 e!396323)))

(declare-fun res!461303 () Bool)

(assert (=> b!697214 (=> res!461303 e!396323)))

(assert (=> b!697214 (= res!461303 e!396327)))

(declare-fun res!461308 () Bool)

(assert (=> b!697214 (=> (not res!461308) (not e!396327))))

(assert (=> b!697214 (= res!461308 (bvsgt from!3004 i!1382))))

(declare-fun b!697225 () Bool)

(declare-fun res!461305 () Bool)

(assert (=> b!697225 (=> (not res!461305) (not e!396321))))

(assert (=> b!697225 (= res!461305 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!697226 () Bool)

(declare-fun res!461315 () Bool)

(assert (=> b!697226 (=> (not res!461315) (not e!396321))))

(assert (=> b!697226 (= res!461315 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19517 a!3626))))))

(declare-fun b!697227 () Bool)

(declare-fun res!461316 () Bool)

(assert (=> b!697227 (=> (not res!461316) (not e!396321))))

(assert (=> b!697227 (= res!461316 (not (contains!3771 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!697228 () Bool)

(declare-fun res!461302 () Bool)

(assert (=> b!697228 (=> (not res!461302) (not e!396321))))

(assert (=> b!697228 (= res!461302 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19517 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!697229 () Bool)

(assert (=> b!697229 (= e!396325 (not (contains!3771 acc!681 k!2843)))))

(assert (= (and start!62244 res!461301) b!697224))

(assert (= (and b!697224 res!461311) b!697227))

(assert (= (and b!697227 res!461316) b!697215))

(assert (= (and b!697215 res!461321) b!697214))

(assert (= (and b!697214 res!461308) b!697209))

(assert (= (and b!697214 (not res!461303)) b!697222))

(assert (= (and b!697222 res!461314) b!697229))

(assert (= (and b!697214 res!461310) b!697220))

(assert (= (and b!697220 res!461319) b!697210))

(assert (= (and b!697210 res!461306) b!697226))

(assert (= (and b!697226 res!461315) b!697219))

(assert (= (and b!697219 res!461307) b!697216))

(assert (= (and b!697216 res!461309) b!697228))

(assert (= (and b!697228 res!461302) b!697211))

(assert (= (and b!697211 res!461318) b!697217))

(assert (= (and b!697217 res!461304) b!697218))

(assert (= (and b!697218 res!461317) b!697212))

(assert (= (and b!697218 (not res!461312)) b!697213))

(assert (= (and b!697213 res!461320) b!697223))

(assert (= (and b!697218 res!461313) b!697225))

(assert (= (and b!697225 res!461305) b!697221))

(declare-fun m!657699 () Bool)

(assert (=> b!697219 m!657699))

(declare-fun m!657701 () Bool)

(assert (=> b!697224 m!657701))

(declare-fun m!657703 () Bool)

(assert (=> b!697209 m!657703))

(assert (=> b!697212 m!657703))

(declare-fun m!657705 () Bool)

(assert (=> start!62244 m!657705))

(assert (=> b!697229 m!657703))

(declare-fun m!657707 () Bool)

(assert (=> b!697220 m!657707))

(declare-fun m!657709 () Bool)

(assert (=> b!697225 m!657709))

(assert (=> b!697223 m!657703))

(declare-fun m!657711 () Bool)

(assert (=> b!697221 m!657711))

(declare-fun m!657713 () Bool)

(assert (=> b!697221 m!657713))

(declare-fun m!657715 () Bool)

(assert (=> b!697221 m!657715))

(declare-fun m!657717 () Bool)

(assert (=> b!697221 m!657717))

(declare-fun m!657719 () Bool)

(assert (=> b!697216 m!657719))

(declare-fun m!657721 () Bool)

(assert (=> b!697211 m!657721))

(assert (=> b!697211 m!657721))

(declare-fun m!657723 () Bool)

(assert (=> b!697211 m!657723))

(declare-fun m!657725 () Bool)

(assert (=> b!697210 m!657725))

(declare-fun m!657727 () Bool)

(assert (=> b!697227 m!657727))

(declare-fun m!657729 () Bool)

(assert (=> b!697215 m!657729))

(push 1)

(assert (not b!697225))

(assert (not b!697223))

(assert (not start!62244))

(assert (not b!697212))

(assert (not b!697220))

(assert (not b!697216))

(assert (not b!697210))

(assert (not b!697221))

(assert (not b!697215))

(assert (not b!697219))

(assert (not b!697227))

(assert (not b!697211))

(assert (not b!697209))

(assert (not b!697229))

(assert (not b!697224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96045 () Bool)

(declare-fun res!461491 () Bool)

(declare-fun e!396427 () Bool)

(assert (=> d!96045 (=> res!461491 e!396427)))

(assert (=> d!96045 (= res!461491 (is-Nil!13225 acc!681))))

(assert (=> d!96045 (= (noDuplicate!1018 acc!681) e!396427)))

(declare-fun b!697413 () Bool)

(declare-fun e!396428 () Bool)

(assert (=> b!697413 (= e!396427 e!396428)))

(declare-fun res!461492 () Bool)

(assert (=> b!697413 (=> (not res!461492) (not e!396428))))

(assert (=> b!697413 (= res!461492 (not (contains!3771 (t!19518 acc!681) (h!14269 acc!681))))))

(declare-fun b!697414 () Bool)

(assert (=> b!697414 (= e!396428 (noDuplicate!1018 (t!19518 acc!681)))))

(assert (= (and d!96045 (not res!461491)) b!697413))

(assert (= (and b!697413 res!461492) b!697414))

(declare-fun m!657843 () Bool)

(assert (=> b!697413 m!657843))

(declare-fun m!657845 () Bool)

(assert (=> b!697414 m!657845))

(assert (=> b!697224 d!96045))

(declare-fun d!96055 () Bool)

(declare-fun lt!317111 () Bool)

(declare-fun content!329 (List!13228) (Set (_ BitVec 64)))

(assert (=> d!96055 (= lt!317111 (set.member k!2843 (content!329 acc!681)))))

(declare-fun e!396436 () Bool)

(assert (=> d!96055 (= lt!317111 e!396436)))

(declare-fun res!461500 () Bool)

(assert (=> d!96055 (=> (not res!461500) (not e!396436))))

(assert (=> d!96055 (= res!461500 (is-Cons!13224 acc!681))))

(assert (=> d!96055 (= (contains!3771 acc!681 k!2843) lt!317111)))

(declare-fun b!697419 () Bool)

(declare-fun e!396435 () Bool)

(assert (=> b!697419 (= e!396436 e!396435)))

(declare-fun res!461499 () Bool)

(assert (=> b!697419 (=> res!461499 e!396435)))

(assert (=> b!697419 (= res!461499 (= (h!14269 acc!681) k!2843))))

(declare-fun b!697420 () Bool)

(assert (=> b!697420 (= e!396435 (contains!3771 (t!19518 acc!681) k!2843))))

(assert (= (and d!96055 res!461500) b!697419))

(assert (= (and b!697419 (not res!461499)) b!697420))

(declare-fun m!657847 () Bool)

(assert (=> d!96055 m!657847))

(declare-fun m!657849 () Bool)

(assert (=> d!96055 m!657849))

(declare-fun m!657851 () Bool)

(assert (=> b!697420 m!657851))

(assert (=> b!697212 d!96055))

(assert (=> b!697223 d!96055))

(declare-fun d!96059 () Bool)

(assert (=> d!96059 (= (array_inv!14908 a!3626) (bvsge (size!19517 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!62244 d!96059))

(declare-fun d!96061 () Bool)

(assert (=> d!96061 (= (validKeyInArray!0 (select (arr!19134 a!3626) from!3004)) (and (not (= (select (arr!19134 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19134 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!697211 d!96061))

(declare-fun d!96067 () Bool)

(declare-fun res!461526 () Bool)

(declare-fun e!396469 () Bool)

(assert (=> d!96067 (=> res!461526 e!396469)))

(assert (=> d!96067 (= res!461526 (bvsge from!3004 (size!19517 a!3626)))))

(assert (=> d!96067 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!396469)))

(declare-fun b!697457 () Bool)

(declare-fun e!396467 () Bool)

(declare-fun e!396468 () Bool)

(assert (=> b!697457 (= e!396467 e!396468)))

(declare-fun c!78333 () Bool)

(assert (=> b!697457 (= c!78333 (validKeyInArray!0 (select (arr!19134 a!3626) from!3004)))))

(declare-fun b!697458 () Bool)

(declare-fun e!396466 () Bool)

(assert (=> b!697458 (= e!396466 (contains!3771 acc!681 (select (arr!19134 a!3626) from!3004)))))

(declare-fun b!697459 () Bool)

(declare-fun call!34323 () Bool)

(assert (=> b!697459 (= e!396468 call!34323)))

(declare-fun b!697460 () Bool)

(assert (=> b!697460 (= e!396468 call!34323)))

(declare-fun b!697461 () Bool)

(assert (=> b!697461 (= e!396469 e!396467)))

(declare-fun res!461525 () Bool)

(assert (=> b!697461 (=> (not res!461525) (not e!396467))))

(assert (=> b!697461 (= res!461525 (not e!396466))))

(declare-fun res!461527 () Bool)

(assert (=> b!697461 (=> (not res!461527) (not e!396466))))

(assert (=> b!697461 (= res!461527 (validKeyInArray!0 (select (arr!19134 a!3626) from!3004)))))

(declare-fun bm!34320 () Bool)

(assert (=> bm!34320 (= call!34323 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78333 (Cons!13224 (select (arr!19134 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!96067 (not res!461526)) b!697461))

(assert (= (and b!697461 res!461527) b!697458))

(assert (= (and b!697461 res!461525) b!697457))

(assert (= (and b!697457 c!78333) b!697460))

(assert (= (and b!697457 (not c!78333)) b!697459))

(assert (= (or b!697460 b!697459) bm!34320))

(assert (=> b!697457 m!657721))

(assert (=> b!697457 m!657721))

(assert (=> b!697457 m!657723))

(assert (=> b!697458 m!657721))

(assert (=> b!697458 m!657721))

(declare-fun m!657873 () Bool)

(assert (=> b!697458 m!657873))

(assert (=> b!697461 m!657721))

(assert (=> b!697461 m!657721))

(assert (=> b!697461 m!657723))

(assert (=> bm!34320 m!657721))

(declare-fun m!657875 () Bool)

(assert (=> bm!34320 m!657875))

(assert (=> b!697210 d!96067))

(declare-fun d!96071 () Bool)

(declare-fun res!461529 () Bool)

(declare-fun e!396473 () Bool)

(assert (=> d!96071 (=> res!461529 e!396473)))

(assert (=> d!96071 (= res!461529 (bvsge from!3004 (size!19517 lt!317091)))))

(assert (=> d!96071 (= (arrayNoDuplicates!0 lt!317091 from!3004 acc!681) e!396473)))

(declare-fun b!697462 () Bool)

(declare-fun e!396471 () Bool)

(declare-fun e!396472 () Bool)

(assert (=> b!697462 (= e!396471 e!396472)))

(declare-fun c!78334 () Bool)

(assert (=> b!697462 (= c!78334 (validKeyInArray!0 (select (arr!19134 lt!317091) from!3004)))))

(declare-fun e!396470 () Bool)

(declare-fun b!697463 () Bool)

(assert (=> b!697463 (= e!396470 (contains!3771 acc!681 (select (arr!19134 lt!317091) from!3004)))))

(declare-fun b!697464 () Bool)

(declare-fun call!34324 () Bool)

(assert (=> b!697464 (= e!396472 call!34324)))

(declare-fun b!697465 () Bool)

(assert (=> b!697465 (= e!396472 call!34324)))

(declare-fun b!697466 () Bool)

(assert (=> b!697466 (= e!396473 e!396471)))

(declare-fun res!461528 () Bool)

(assert (=> b!697466 (=> (not res!461528) (not e!396471))))

(assert (=> b!697466 (= res!461528 (not e!396470))))

(declare-fun res!461530 () Bool)

(assert (=> b!697466 (=> (not res!461530) (not e!396470))))

(assert (=> b!697466 (= res!461530 (validKeyInArray!0 (select (arr!19134 lt!317091) from!3004)))))

(declare-fun bm!34321 () Bool)

(assert (=> bm!34321 (= call!34324 (arrayNoDuplicates!0 lt!317091 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78334 (Cons!13224 (select (arr!19134 lt!317091) from!3004) acc!681) acc!681)))))

(assert (= (and d!96071 (not res!461529)) b!697466))

(assert (= (and b!697466 res!461530) b!697463))

(assert (= (and b!697466 res!461528) b!697462))

(assert (= (and b!697462 c!78334) b!697465))

(assert (= (and b!697462 (not c!78334)) b!697464))

(assert (= (or b!697465 b!697464) bm!34321))

(declare-fun m!657877 () Bool)

(assert (=> b!697462 m!657877))

(assert (=> b!697462 m!657877))

(declare-fun m!657879 () Bool)

(assert (=> b!697462 m!657879))

(assert (=> b!697463 m!657877))

(assert (=> b!697463 m!657877))

(declare-fun m!657881 () Bool)

(assert (=> b!697463 m!657881))

(assert (=> b!697466 m!657877))

(assert (=> b!697466 m!657877))

(assert (=> b!697466 m!657879))

(assert (=> bm!34321 m!657877))

(declare-fun m!657889 () Bool)

(assert (=> bm!34321 m!657889))

(assert (=> b!697221 d!96071))

(declare-fun d!96075 () Bool)

(declare-fun res!461537 () Bool)

(declare-fun e!396483 () Bool)

(assert (=> d!96075 (=> res!461537 e!396483)))

(assert (=> d!96075 (= res!461537 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19517 lt!317091)))))

(assert (=> d!96075 (= (arrayNoDuplicates!0 lt!317091 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!396483)))

(declare-fun b!697474 () Bool)

(declare-fun e!396481 () Bool)

(declare-fun e!396482 () Bool)

(assert (=> b!697474 (= e!396481 e!396482)))

(declare-fun c!78336 () Bool)

(assert (=> b!697474 (= c!78336 (validKeyInArray!0 (select (arr!19134 lt!317091) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697475 () Bool)

(declare-fun e!396480 () Bool)

(assert (=> b!697475 (= e!396480 (contains!3771 acc!681 (select (arr!19134 lt!317091) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!697476 () Bool)

(declare-fun call!34326 () Bool)

(assert (=> b!697476 (= e!396482 call!34326)))

(declare-fun b!697477 () Bool)

(assert (=> b!697477 (= e!396482 call!34326)))

(declare-fun b!697478 () Bool)

(assert (=> b!697478 (= e!396483 e!396481)))

(declare-fun res!461536 () Bool)

(assert (=> b!697478 (=> (not res!461536) (not e!396481))))

(assert (=> b!697478 (= res!461536 (not e!396480))))

(declare-fun res!461538 () Bool)

(assert (=> b!697478 (=> (not res!461538) (not e!396480))))

(assert (=> b!697478 (= res!461538 (validKeyInArray!0 (select (arr!19134 lt!317091) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!34323 () Bool)

(assert (=> bm!34323 (= call!34326 (arrayNoDuplicates!0 lt!317091 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78336 (Cons!13224 (select (arr!19134 lt!317091) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(assert (= (and d!96075 (not res!461537)) b!697478))

(assert (= (and b!697478 res!461538) b!697475))

(assert (= (and b!697478 res!461536) b!697474))

(assert (= (and b!697474 c!78336) b!697477))

(assert (= (and b!697474 (not c!78336)) b!697476))

(assert (= (or b!697477 b!697476) bm!34323))

(declare-fun m!657893 () Bool)

(assert (=> b!697474 m!657893))

(assert (=> b!697474 m!657893))

(declare-fun m!657897 () Bool)

(assert (=> b!697474 m!657897))

(assert (=> b!697475 m!657893))

(assert (=> b!697475 m!657893))

(declare-fun m!657899 () Bool)

(assert (=> b!697475 m!657899))

(assert (=> b!697478 m!657893))

(assert (=> b!697478 m!657893))

(assert (=> b!697478 m!657897))

(assert (=> bm!34323 m!657893))

(declare-fun m!657904 () Bool)

(assert (=> bm!34323 m!657904))

(assert (=> b!697221 d!96075))

(declare-fun d!96077 () Bool)

(declare-fun e!396490 () Bool)

(assert (=> d!96077 e!396490))

(declare-fun res!461544 () Bool)

(assert (=> d!96077 (=> (not res!461544) (not e!396490))))

(assert (=> d!96077 (= res!461544 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19517 a!3626))))))

(declare-fun lt!317120 () Unit!24556)

(declare-fun choose!41 (array!39957 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13228) Unit!24556)

(assert (=> d!96077 (= lt!317120 (choose!41 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (=> d!96077 (bvslt (size!19517 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!96077 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) lt!317120)))

(declare-fun b!697486 () Bool)

(assert (=> b!697486 (= e!396490 (arrayNoDuplicates!0 (array!39958 (store (arr!19134 a!3626) i!1382 k!2843) (size!19517 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(assert (= (and d!96077 res!461544) b!697486))

(declare-fun m!657915 () Bool)

(assert (=> d!96077 m!657915))

(assert (=> b!697486 m!657715))

(declare-fun m!657917 () Bool)

(assert (=> b!697486 m!657917))

(assert (=> b!697221 d!96077))

(declare-fun d!96083 () Bool)

(declare-fun res!461548 () Bool)

(declare-fun e!396496 () Bool)

(assert (=> d!96083 (=> res!461548 e!396496)))

(assert (=> d!96083 (= res!461548 (bvsge #b00000000000000000000000000000000 (size!19517 a!3626)))))

(assert (=> d!96083 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13225) e!396496)))

(declare-fun b!697489 () Bool)

(declare-fun e!396494 () Bool)

(declare-fun e!396495 () Bool)

(assert (=> b!697489 (= e!396494 e!396495)))

(declare-fun c!78338 () Bool)

(assert (=> b!697489 (= c!78338 (validKeyInArray!0 (select (arr!19134 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!697490 () Bool)

(declare-fun e!396493 () Bool)

(assert (=> b!697490 (= e!396493 (contains!3771 Nil!13225 (select (arr!19134 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!697491 () Bool)

(declare-fun call!34328 () Bool)

(assert (=> b!697491 (= e!396495 call!34328)))

(declare-fun b!697492 () Bool)

(assert (=> b!697492 (= e!396495 call!34328)))

(declare-fun b!697493 () Bool)

(assert (=> b!697493 (= e!396496 e!396494)))

(declare-fun res!461547 () Bool)

(assert (=> b!697493 (=> (not res!461547) (not e!396494))))

(assert (=> b!697493 (= res!461547 (not e!396493))))

(declare-fun res!461549 () Bool)

(assert (=> b!697493 (=> (not res!461549) (not e!396493))))

(assert (=> b!697493 (= res!461549 (validKeyInArray!0 (select (arr!19134 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34325 () Bool)

(assert (=> bm!34325 (= call!34328 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78338 (Cons!13224 (select (arr!19134 a!3626) #b00000000000000000000000000000000) Nil!13225) Nil!13225)))))

(assert (= (and d!96083 (not res!461548)) b!697493))

(assert (= (and b!697493 res!461549) b!697490))

(assert (= (and b!697493 res!461547) b!697489))

(assert (= (and b!697489 c!78338) b!697492))

(assert (= (and b!697489 (not c!78338)) b!697491))

(assert (= (or b!697492 b!697491) bm!34325))

(declare-fun m!657919 () Bool)

(assert (=> b!697489 m!657919))

(assert (=> b!697489 m!657919))

(declare-fun m!657921 () Bool)

(assert (=> b!697489 m!657921))

(assert (=> b!697490 m!657919))

(assert (=> b!697490 m!657919))

(declare-fun m!657923 () Bool)

(assert (=> b!697490 m!657923))

(assert (=> b!697493 m!657919))

(assert (=> b!697493 m!657919))

(assert (=> b!697493 m!657921))

(assert (=> bm!34325 m!657919))

(declare-fun m!657925 () Bool)

(assert (=> bm!34325 m!657925))

(assert (=> b!697220 d!96083))

(assert (=> b!697209 d!96055))

(declare-fun d!96085 () Bool)

(assert (=> d!96085 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!697219 d!96085))

(assert (=> b!697229 d!96055))

(declare-fun d!96087 () Bool)

(declare-fun res!461562 () Bool)

(declare-fun e!396510 () Bool)

(assert (=> d!96087 (=> res!461562 e!396510)))

(assert (=> d!96087 (= res!461562 (= (select (arr!19134 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!96087 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!396510)))

(declare-fun b!697508 () Bool)

(declare-fun e!396511 () Bool)

(assert (=> b!697508 (= e!396510 e!396511)))

(declare-fun res!461563 () Bool)

(assert (=> b!697508 (=> (not res!461563) (not e!396511))))

(assert (=> b!697508 (= res!461563 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19517 a!3626)))))

(declare-fun b!697509 () Bool)

(assert (=> b!697509 (= e!396511 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!96087 (not res!461562)) b!697508))

(assert (= (and b!697508 res!461563) b!697509))

(assert (=> d!96087 m!657919))

(declare-fun m!657941 () Bool)

(assert (=> b!697509 m!657941))

(assert (=> b!697216 d!96087))

(declare-fun d!96097 () Bool)

(declare-fun lt!317126 () Bool)

(assert (=> d!96097 (= lt!317126 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!329 acc!681)))))

(declare-fun e!396513 () Bool)

(assert (=> d!96097 (= lt!317126 e!396513)))

(declare-fun res!461565 () Bool)

(assert (=> d!96097 (=> (not res!461565) (not e!396513))))

(assert (=> d!96097 (= res!461565 (is-Cons!13224 acc!681))))

(assert (=> d!96097 (= (contains!3771 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317126)))

(declare-fun b!697510 () Bool)

(declare-fun e!396512 () Bool)

(assert (=> b!697510 (= e!396513 e!396512)))

(declare-fun res!461564 () Bool)

(assert (=> b!697510 (=> res!461564 e!396512)))

(assert (=> b!697510 (= res!461564 (= (h!14269 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!697511 () Bool)

(assert (=> b!697511 (= e!396512 (contains!3771 (t!19518 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96097 res!461565) b!697510))

(assert (= (and b!697510 (not res!461564)) b!697511))

(assert (=> d!96097 m!657847))

(declare-fun m!657945 () Bool)

(assert (=> d!96097 m!657945))

(declare-fun m!657947 () Bool)

(assert (=> b!697511 m!657947))

(assert (=> b!697227 d!96097))

(declare-fun d!96101 () Bool)

(declare-fun lt!317127 () Bool)

(assert (=> d!96101 (= lt!317127 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!329 acc!681)))))

(declare-fun e!396515 () Bool)

(assert (=> d!96101 (= lt!317127 e!396515)))

(declare-fun res!461567 () Bool)

(assert (=> d!96101 (=> (not res!461567) (not e!396515))))

(assert (=> d!96101 (= res!461567 (is-Cons!13224 acc!681))))

(assert (=> d!96101 (= (contains!3771 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317127)))

(declare-fun b!697512 () Bool)

(declare-fun e!396514 () Bool)

(assert (=> b!697512 (= e!396515 e!396514)))

(declare-fun res!461566 () Bool)

(assert (=> b!697512 (=> res!461566 e!396514)))

