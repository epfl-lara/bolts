; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60124 () Bool)

(assert start!60124)

(declare-fun b!670444 () Bool)

(declare-fun res!437334 () Bool)

(declare-fun e!383304 () Bool)

(assert (=> b!670444 (=> res!437334 e!383304)))

(declare-fun e!383308 () Bool)

(assert (=> b!670444 (= res!437334 e!383308)))

(declare-fun res!437322 () Bool)

(assert (=> b!670444 (=> (not res!437322) (not e!383308))))

(declare-fun e!383309 () Bool)

(assert (=> b!670444 (= res!437322 e!383309)))

(declare-fun res!437327 () Bool)

(assert (=> b!670444 (=> res!437327 e!383309)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670444 (= res!437327 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670445 () Bool)

(declare-fun res!437339 () Bool)

(declare-fun e!383305 () Bool)

(assert (=> b!670445 (=> (not res!437339) (not e!383305))))

(declare-datatypes ((array!39127 0))(
  ( (array!39128 (arr!18752 (Array (_ BitVec 32) (_ BitVec 64))) (size!19116 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39127)

(declare-datatypes ((List!12846 0))(
  ( (Nil!12843) (Cons!12842 (h!13887 (_ BitVec 64)) (t!19082 List!12846)) )
))
(declare-fun arrayNoDuplicates!0 (array!39127 (_ BitVec 32) List!12846) Bool)

(assert (=> b!670445 (= res!437339 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12843))))

(declare-fun b!670446 () Bool)

(declare-fun e!383303 () Bool)

(assert (=> b!670446 (= e!383308 e!383303)))

(declare-fun res!437325 () Bool)

(assert (=> b!670446 (=> res!437325 e!383303)))

(assert (=> b!670446 (= res!437325 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670447 () Bool)

(assert (=> b!670447 (= e!383305 (not e!383304))))

(declare-fun res!437328 () Bool)

(assert (=> b!670447 (=> res!437328 e!383304)))

(assert (=> b!670447 (= res!437328 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!312071 () List!12846)

(assert (=> b!670447 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312071)))

(declare-datatypes ((Unit!23555 0))(
  ( (Unit!23556) )
))
(declare-fun lt!312078 () Unit!23555)

(declare-fun acc!681 () List!12846)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39127 (_ BitVec 64) (_ BitVec 32) List!12846 List!12846) Unit!23555)

(assert (=> b!670447 (= lt!312078 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!312071))))

(declare-fun -!125 (List!12846 (_ BitVec 64)) List!12846)

(assert (=> b!670447 (= (-!125 lt!312071 k!2843) acc!681)))

(declare-fun $colon$colon!258 (List!12846 (_ BitVec 64)) List!12846)

(assert (=> b!670447 (= lt!312071 ($colon$colon!258 acc!681 k!2843))))

(declare-fun lt!312069 () Unit!23555)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12846) Unit!23555)

(assert (=> b!670447 (= lt!312069 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!127 (List!12846 List!12846) Bool)

(assert (=> b!670447 (subseq!127 acc!681 acc!681)))

(declare-fun lt!312076 () Unit!23555)

(declare-fun lemmaListSubSeqRefl!0 (List!12846) Unit!23555)

(assert (=> b!670447 (= lt!312076 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!670447 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!312068 () Unit!23555)

(declare-fun e!383307 () Unit!23555)

(assert (=> b!670447 (= lt!312068 e!383307)))

(declare-fun c!76930 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670447 (= c!76930 (validKeyInArray!0 (select (arr!18752 a!3626) from!3004)))))

(declare-fun lt!312072 () Unit!23555)

(declare-fun e!383311 () Unit!23555)

(assert (=> b!670447 (= lt!312072 e!383311)))

(declare-fun c!76931 () Bool)

(declare-fun arrayContainsKey!0 (array!39127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670447 (= c!76931 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun lt!312073 () array!39127)

(assert (=> b!670447 (arrayContainsKey!0 lt!312073 k!2843 from!3004)))

(assert (=> b!670447 (= lt!312073 (array!39128 (store (arr!18752 a!3626) i!1382 k!2843) (size!19116 a!3626)))))

(declare-fun b!670448 () Bool)

(declare-fun res!437336 () Bool)

(assert (=> b!670448 (=> (not res!437336) (not e!383305))))

(assert (=> b!670448 (= res!437336 (validKeyInArray!0 k!2843))))

(declare-fun b!670450 () Bool)

(declare-fun res!437324 () Bool)

(assert (=> b!670450 (=> res!437324 e!383304)))

(declare-fun contains!3389 (List!12846 (_ BitVec 64)) Bool)

(assert (=> b!670450 (= res!437324 (contains!3389 lt!312071 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670451 () Bool)

(declare-fun res!437321 () Bool)

(assert (=> b!670451 (=> (not res!437321) (not e!383305))))

(assert (=> b!670451 (= res!437321 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19116 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!670452 () Bool)

(declare-fun lt!312077 () Unit!23555)

(assert (=> b!670452 (= e!383307 lt!312077)))

(declare-fun lt!312070 () Unit!23555)

(assert (=> b!670452 (= lt!312070 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!670452 (subseq!127 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39127 List!12846 List!12846 (_ BitVec 32)) Unit!23555)

(assert (=> b!670452 (= lt!312077 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!258 acc!681 (select (arr!18752 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!670452 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!670453 () Bool)

(declare-fun res!437331 () Bool)

(assert (=> b!670453 (=> (not res!437331) (not e!383305))))

(assert (=> b!670453 (= res!437331 (not (contains!3389 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670454 () Bool)

(declare-fun e!383306 () Bool)

(assert (=> b!670454 (= e!383306 (contains!3389 acc!681 k!2843))))

(declare-fun b!670455 () Bool)

(declare-fun res!437335 () Bool)

(assert (=> b!670455 (=> res!437335 e!383304)))

(assert (=> b!670455 (= res!437335 (contains!3389 lt!312071 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670456 () Bool)

(assert (=> b!670456 (= e!383303 (contains!3389 lt!312071 k!2843))))

(declare-fun b!670457 () Bool)

(declare-fun res!437337 () Bool)

(assert (=> b!670457 (=> (not res!437337) (not e!383305))))

(declare-fun noDuplicate!636 (List!12846) Bool)

(assert (=> b!670457 (= res!437337 (noDuplicate!636 acc!681))))

(declare-fun b!670458 () Bool)

(declare-fun res!437320 () Bool)

(assert (=> b!670458 (=> (not res!437320) (not e!383305))))

(assert (=> b!670458 (= res!437320 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19116 a!3626))))))

(declare-fun b!670459 () Bool)

(declare-fun res!437330 () Bool)

(assert (=> b!670459 (=> (not res!437330) (not e!383305))))

(assert (=> b!670459 (= res!437330 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670460 () Bool)

(declare-fun res!437333 () Bool)

(assert (=> b!670460 (=> (not res!437333) (not e!383305))))

(assert (=> b!670460 (= res!437333 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670461 () Bool)

(declare-fun Unit!23557 () Unit!23555)

(assert (=> b!670461 (= e!383311 Unit!23557)))

(declare-fun lt!312075 () Unit!23555)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39127 (_ BitVec 64) (_ BitVec 32)) Unit!23555)

(assert (=> b!670461 (= lt!312075 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!670461 false))

(declare-fun b!670462 () Bool)

(assert (=> b!670462 (= e!383309 (not (contains!3389 lt!312071 k!2843)))))

(declare-fun b!670463 () Bool)

(declare-fun e!383310 () Bool)

(assert (=> b!670463 (= e!383310 (not (contains!3389 acc!681 k!2843)))))

(declare-fun b!670464 () Bool)

(assert (=> b!670464 (= e!383304 true)))

(assert (=> b!670464 (arrayNoDuplicates!0 lt!312073 (bvadd #b00000000000000000000000000000001 from!3004) lt!312071)))

(declare-fun lt!312074 () Unit!23555)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39127 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12846) Unit!23555)

(assert (=> b!670464 (= lt!312074 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312071))))

(declare-fun b!670465 () Bool)

(declare-fun Unit!23558 () Unit!23555)

(assert (=> b!670465 (= e!383307 Unit!23558)))

(declare-fun res!437323 () Bool)

(assert (=> start!60124 (=> (not res!437323) (not e!383305))))

(assert (=> start!60124 (= res!437323 (and (bvslt (size!19116 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19116 a!3626))))))

(assert (=> start!60124 e!383305))

(assert (=> start!60124 true))

(declare-fun array_inv!14526 (array!39127) Bool)

(assert (=> start!60124 (array_inv!14526 a!3626)))

(declare-fun b!670449 () Bool)

(declare-fun e!383301 () Bool)

(assert (=> b!670449 (= e!383301 e!383310)))

(declare-fun res!437318 () Bool)

(assert (=> b!670449 (=> (not res!437318) (not e!383310))))

(assert (=> b!670449 (= res!437318 (bvsle from!3004 i!1382))))

(declare-fun b!670466 () Bool)

(declare-fun res!437338 () Bool)

(assert (=> b!670466 (=> res!437338 e!383304)))

(assert (=> b!670466 (= res!437338 (not (noDuplicate!636 lt!312071)))))

(declare-fun b!670467 () Bool)

(declare-fun res!437332 () Bool)

(assert (=> b!670467 (=> (not res!437332) (not e!383305))))

(assert (=> b!670467 (= res!437332 e!383301)))

(declare-fun res!437326 () Bool)

(assert (=> b!670467 (=> res!437326 e!383301)))

(assert (=> b!670467 (= res!437326 e!383306)))

(declare-fun res!437319 () Bool)

(assert (=> b!670467 (=> (not res!437319) (not e!383306))))

(assert (=> b!670467 (= res!437319 (bvsgt from!3004 i!1382))))

(declare-fun b!670468 () Bool)

(declare-fun res!437329 () Bool)

(assert (=> b!670468 (=> (not res!437329) (not e!383305))))

(assert (=> b!670468 (= res!437329 (not (contains!3389 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670469 () Bool)

(declare-fun Unit!23559 () Unit!23555)

(assert (=> b!670469 (= e!383311 Unit!23559)))

(assert (= (and start!60124 res!437323) b!670457))

(assert (= (and b!670457 res!437337) b!670468))

(assert (= (and b!670468 res!437329) b!670453))

(assert (= (and b!670453 res!437331) b!670467))

(assert (= (and b!670467 res!437319) b!670454))

(assert (= (and b!670467 (not res!437326)) b!670449))

(assert (= (and b!670449 res!437318) b!670463))

(assert (= (and b!670467 res!437332) b!670445))

(assert (= (and b!670445 res!437339) b!670460))

(assert (= (and b!670460 res!437333) b!670458))

(assert (= (and b!670458 res!437320) b!670448))

(assert (= (and b!670448 res!437336) b!670459))

(assert (= (and b!670459 res!437330) b!670451))

(assert (= (and b!670451 res!437321) b!670447))

(assert (= (and b!670447 c!76931) b!670461))

(assert (= (and b!670447 (not c!76931)) b!670469))

(assert (= (and b!670447 c!76930) b!670452))

(assert (= (and b!670447 (not c!76930)) b!670465))

(assert (= (and b!670447 (not res!437328)) b!670466))

(assert (= (and b!670466 (not res!437338)) b!670455))

(assert (= (and b!670455 (not res!437335)) b!670450))

(assert (= (and b!670450 (not res!437324)) b!670444))

(assert (= (and b!670444 (not res!437327)) b!670462))

(assert (= (and b!670444 res!437322) b!670446))

(assert (= (and b!670446 (not res!437325)) b!670456))

(assert (= (and b!670444 (not res!437334)) b!670464))

(declare-fun m!640351 () Bool)

(assert (=> b!670463 m!640351))

(declare-fun m!640353 () Bool)

(assert (=> b!670455 m!640353))

(declare-fun m!640355 () Bool)

(assert (=> b!670468 m!640355))

(declare-fun m!640357 () Bool)

(assert (=> b!670459 m!640357))

(declare-fun m!640359 () Bool)

(assert (=> b!670466 m!640359))

(declare-fun m!640361 () Bool)

(assert (=> b!670448 m!640361))

(declare-fun m!640363 () Bool)

(assert (=> b!670445 m!640363))

(declare-fun m!640365 () Bool)

(assert (=> b!670461 m!640365))

(declare-fun m!640367 () Bool)

(assert (=> b!670464 m!640367))

(declare-fun m!640369 () Bool)

(assert (=> b!670464 m!640369))

(declare-fun m!640371 () Bool)

(assert (=> b!670457 m!640371))

(declare-fun m!640373 () Bool)

(assert (=> start!60124 m!640373))

(declare-fun m!640375 () Bool)

(assert (=> b!670452 m!640375))

(declare-fun m!640377 () Bool)

(assert (=> b!670452 m!640377))

(declare-fun m!640379 () Bool)

(assert (=> b!670452 m!640379))

(declare-fun m!640381 () Bool)

(assert (=> b!670452 m!640381))

(assert (=> b!670452 m!640377))

(assert (=> b!670452 m!640379))

(declare-fun m!640383 () Bool)

(assert (=> b!670452 m!640383))

(declare-fun m!640385 () Bool)

(assert (=> b!670452 m!640385))

(declare-fun m!640387 () Bool)

(assert (=> b!670460 m!640387))

(declare-fun m!640389 () Bool)

(assert (=> b!670447 m!640389))

(assert (=> b!670447 m!640375))

(assert (=> b!670447 m!640377))

(declare-fun m!640391 () Bool)

(assert (=> b!670447 m!640391))

(declare-fun m!640393 () Bool)

(assert (=> b!670447 m!640393))

(declare-fun m!640395 () Bool)

(assert (=> b!670447 m!640395))

(assert (=> b!670447 m!640383))

(declare-fun m!640397 () Bool)

(assert (=> b!670447 m!640397))

(declare-fun m!640399 () Bool)

(assert (=> b!670447 m!640399))

(assert (=> b!670447 m!640385))

(declare-fun m!640401 () Bool)

(assert (=> b!670447 m!640401))

(declare-fun m!640403 () Bool)

(assert (=> b!670447 m!640403))

(assert (=> b!670447 m!640377))

(declare-fun m!640405 () Bool)

(assert (=> b!670447 m!640405))

(declare-fun m!640407 () Bool)

(assert (=> b!670450 m!640407))

(declare-fun m!640409 () Bool)

(assert (=> b!670456 m!640409))

(assert (=> b!670462 m!640409))

(declare-fun m!640411 () Bool)

(assert (=> b!670453 m!640411))

(assert (=> b!670454 m!640351))

(push 1)

(assert (not b!670461))

(assert (not start!60124))

(assert (not b!670466))

(assert (not b!670455))

(assert (not b!670459))

(assert (not b!670450))

(assert (not b!670447))

(assert (not b!670462))

(assert (not b!670468))

(assert (not b!670445))

(assert (not b!670453))

(assert (not b!670463))

(assert (not b!670448))

(assert (not b!670452))

(assert (not b!670457))

(assert (not b!670460))

(assert (not b!670454))

(assert (not b!670464))

(assert (not b!670456))

(check-sat)

