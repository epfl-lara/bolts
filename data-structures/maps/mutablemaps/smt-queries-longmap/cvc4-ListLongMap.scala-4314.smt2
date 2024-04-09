; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59932 () Bool)

(assert start!59932)

(declare-fun b!663405 () Bool)

(declare-fun res!431438 () Bool)

(declare-fun e!380629 () Bool)

(assert (=> b!663405 (=> (not res!431438) (not e!380629))))

(declare-datatypes ((array!38935 0))(
  ( (array!38936 (arr!18656 (Array (_ BitVec 32) (_ BitVec 64))) (size!19020 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38935)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12750 0))(
  ( (Nil!12747) (Cons!12746 (h!13791 (_ BitVec 64)) (t!18986 List!12750)) )
))
(declare-fun acc!681 () List!12750)

(declare-fun arrayNoDuplicates!0 (array!38935 (_ BitVec 32) List!12750) Bool)

(assert (=> b!663405 (= res!431438 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663406 () Bool)

(declare-fun res!431435 () Bool)

(assert (=> b!663406 (=> (not res!431435) (not e!380629))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663406 (= res!431435 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19020 a!3626))))))

(declare-fun b!663407 () Bool)

(declare-fun res!431433 () Bool)

(assert (=> b!663407 (=> (not res!431433) (not e!380629))))

(declare-fun e!380625 () Bool)

(assert (=> b!663407 (= res!431433 e!380625)))

(declare-fun res!431444 () Bool)

(assert (=> b!663407 (=> res!431444 e!380625)))

(declare-fun e!380624 () Bool)

(assert (=> b!663407 (= res!431444 e!380624)))

(declare-fun res!431437 () Bool)

(assert (=> b!663407 (=> (not res!431437) (not e!380624))))

(assert (=> b!663407 (= res!431437 (bvsgt from!3004 i!1382))))

(declare-fun b!663408 () Bool)

(declare-fun res!431439 () Bool)

(assert (=> b!663408 (=> (not res!431439) (not e!380629))))

(declare-fun contains!3293 (List!12750 (_ BitVec 64)) Bool)

(assert (=> b!663408 (= res!431439 (not (contains!3293 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663409 () Bool)

(declare-fun res!431442 () Bool)

(assert (=> b!663409 (=> (not res!431442) (not e!380629))))

(declare-fun noDuplicate!540 (List!12750) Bool)

(assert (=> b!663409 (= res!431442 (noDuplicate!540 acc!681))))

(declare-fun b!663410 () Bool)

(declare-fun res!431432 () Bool)

(assert (=> b!663410 (=> (not res!431432) (not e!380629))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663410 (= res!431432 (validKeyInArray!0 k!2843))))

(declare-fun b!663411 () Bool)

(declare-datatypes ((Unit!23075 0))(
  ( (Unit!23076) )
))
(declare-fun e!380627 () Unit!23075)

(declare-fun lt!309277 () Unit!23075)

(assert (=> b!663411 (= e!380627 lt!309277)))

(declare-fun lt!309278 () Unit!23075)

(declare-fun lemmaListSubSeqRefl!0 (List!12750) Unit!23075)

(assert (=> b!663411 (= lt!309278 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!31 (List!12750 List!12750) Bool)

(assert (=> b!663411 (subseq!31 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38935 List!12750 List!12750 (_ BitVec 32)) Unit!23075)

(declare-fun $colon$colon!162 (List!12750 (_ BitVec 64)) List!12750)

(assert (=> b!663411 (= lt!309277 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!162 acc!681 (select (arr!18656 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663411 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663412 () Bool)

(declare-fun e!380626 () Bool)

(assert (=> b!663412 (= e!380626 (not (contains!3293 acc!681 k!2843)))))

(declare-fun b!663413 () Bool)

(declare-fun res!431434 () Bool)

(assert (=> b!663413 (=> (not res!431434) (not e!380629))))

(assert (=> b!663413 (= res!431434 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19020 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663414 () Bool)

(declare-fun res!431443 () Bool)

(assert (=> b!663414 (=> (not res!431443) (not e!380629))))

(assert (=> b!663414 (= res!431443 (not (contains!3293 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663415 () Bool)

(declare-fun res!431436 () Bool)

(assert (=> b!663415 (=> (not res!431436) (not e!380629))))

(assert (=> b!663415 (= res!431436 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12747))))

(declare-fun b!663416 () Bool)

(declare-fun e!380628 () Unit!23075)

(declare-fun Unit!23077 () Unit!23075)

(assert (=> b!663416 (= e!380628 Unit!23077)))

(declare-fun lt!309275 () Unit!23075)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38935 (_ BitVec 64) (_ BitVec 32)) Unit!23075)

(assert (=> b!663416 (= lt!309275 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663416 false))

(declare-fun res!431441 () Bool)

(assert (=> start!59932 (=> (not res!431441) (not e!380629))))

(assert (=> start!59932 (= res!431441 (and (bvslt (size!19020 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19020 a!3626))))))

(assert (=> start!59932 e!380629))

(assert (=> start!59932 true))

(declare-fun array_inv!14430 (array!38935) Bool)

(assert (=> start!59932 (array_inv!14430 a!3626)))

(declare-fun b!663417 () Bool)

(assert (=> b!663417 (= e!380629 (not true))))

(declare-fun lt!309279 () Unit!23075)

(assert (=> b!663417 (= lt!309279 e!380627)))

(declare-fun c!76354 () Bool)

(assert (=> b!663417 (= c!76354 (validKeyInArray!0 (select (arr!18656 a!3626) from!3004)))))

(declare-fun lt!309276 () Unit!23075)

(assert (=> b!663417 (= lt!309276 e!380628)))

(declare-fun c!76355 () Bool)

(declare-fun arrayContainsKey!0 (array!38935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663417 (= c!76355 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663417 (arrayContainsKey!0 (array!38936 (store (arr!18656 a!3626) i!1382 k!2843) (size!19020 a!3626)) k!2843 from!3004)))

(declare-fun b!663418 () Bool)

(declare-fun Unit!23078 () Unit!23075)

(assert (=> b!663418 (= e!380627 Unit!23078)))

(declare-fun b!663419 () Bool)

(declare-fun res!431440 () Bool)

(assert (=> b!663419 (=> (not res!431440) (not e!380629))))

(assert (=> b!663419 (= res!431440 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663420 () Bool)

(assert (=> b!663420 (= e!380625 e!380626)))

(declare-fun res!431431 () Bool)

(assert (=> b!663420 (=> (not res!431431) (not e!380626))))

(assert (=> b!663420 (= res!431431 (bvsle from!3004 i!1382))))

(declare-fun b!663421 () Bool)

(declare-fun Unit!23079 () Unit!23075)

(assert (=> b!663421 (= e!380628 Unit!23079)))

(declare-fun b!663422 () Bool)

(assert (=> b!663422 (= e!380624 (contains!3293 acc!681 k!2843))))

(assert (= (and start!59932 res!431441) b!663409))

(assert (= (and b!663409 res!431442) b!663414))

(assert (= (and b!663414 res!431443) b!663408))

(assert (= (and b!663408 res!431439) b!663407))

(assert (= (and b!663407 res!431437) b!663422))

(assert (= (and b!663407 (not res!431444)) b!663420))

(assert (= (and b!663420 res!431431) b!663412))

(assert (= (and b!663407 res!431433) b!663415))

(assert (= (and b!663415 res!431436) b!663405))

(assert (= (and b!663405 res!431438) b!663406))

(assert (= (and b!663406 res!431435) b!663410))

(assert (= (and b!663410 res!431432) b!663419))

(assert (= (and b!663419 res!431440) b!663413))

(assert (= (and b!663413 res!431434) b!663417))

(assert (= (and b!663417 c!76355) b!663416))

(assert (= (and b!663417 (not c!76355)) b!663421))

(assert (= (and b!663417 c!76354) b!663411))

(assert (= (and b!663417 (not c!76354)) b!663418))

(declare-fun m!635003 () Bool)

(assert (=> b!663412 m!635003))

(declare-fun m!635005 () Bool)

(assert (=> b!663414 m!635005))

(declare-fun m!635007 () Bool)

(assert (=> b!663416 m!635007))

(declare-fun m!635009 () Bool)

(assert (=> b!663417 m!635009))

(declare-fun m!635011 () Bool)

(assert (=> b!663417 m!635011))

(declare-fun m!635013 () Bool)

(assert (=> b!663417 m!635013))

(assert (=> b!663417 m!635009))

(declare-fun m!635015 () Bool)

(assert (=> b!663417 m!635015))

(declare-fun m!635017 () Bool)

(assert (=> b!663417 m!635017))

(declare-fun m!635019 () Bool)

(assert (=> b!663410 m!635019))

(declare-fun m!635021 () Bool)

(assert (=> b!663408 m!635021))

(declare-fun m!635023 () Bool)

(assert (=> b!663405 m!635023))

(assert (=> b!663422 m!635003))

(declare-fun m!635025 () Bool)

(assert (=> start!59932 m!635025))

(declare-fun m!635027 () Bool)

(assert (=> b!663419 m!635027))

(declare-fun m!635029 () Bool)

(assert (=> b!663415 m!635029))

(declare-fun m!635031 () Bool)

(assert (=> b!663409 m!635031))

(declare-fun m!635033 () Bool)

(assert (=> b!663411 m!635033))

(assert (=> b!663411 m!635009))

(declare-fun m!635035 () Bool)

(assert (=> b!663411 m!635035))

(declare-fun m!635037 () Bool)

(assert (=> b!663411 m!635037))

(assert (=> b!663411 m!635009))

(assert (=> b!663411 m!635035))

(declare-fun m!635039 () Bool)

(assert (=> b!663411 m!635039))

(declare-fun m!635041 () Bool)

(assert (=> b!663411 m!635041))

(push 1)

(assert (not b!663411))

(assert (not b!663415))

(assert (not b!663422))

(assert (not b!663409))

(assert (not b!663414))

(assert (not b!663419))

(assert (not b!663410))

(assert (not b!663408))

(assert (not b!663416))

(assert (not b!663405))

(assert (not start!59932))

(assert (not b!663412))

(assert (not b!663417))

(check-sat)

(pop 1)

