; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61582 () Bool)

(assert start!61582)

(declare-fun b!688424 () Bool)

(declare-fun res!453274 () Bool)

(declare-fun e!392082 () Bool)

(assert (=> b!688424 (=> (not res!453274) (not e!392082))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688424 (= res!453274 (validKeyInArray!0 k!2843))))

(declare-fun b!688425 () Bool)

(declare-fun res!453288 () Bool)

(assert (=> b!688425 (=> (not res!453288) (not e!392082))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39679 0))(
  ( (array!39680 (arr!19007 (Array (_ BitVec 32) (_ BitVec 64))) (size!19388 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39679)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!688425 (= res!453288 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19388 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688426 () Bool)

(declare-fun e!392089 () Bool)

(declare-fun e!392081 () Bool)

(assert (=> b!688426 (= e!392089 e!392081)))

(declare-fun res!453270 () Bool)

(assert (=> b!688426 (=> (not res!453270) (not e!392081))))

(assert (=> b!688426 (= res!453270 (bvsle from!3004 i!1382))))

(declare-fun b!688427 () Bool)

(declare-fun res!453272 () Bool)

(assert (=> b!688427 (=> (not res!453272) (not e!392082))))

(declare-datatypes ((List!13101 0))(
  ( (Nil!13098) (Cons!13097 (h!14142 (_ BitVec 64)) (t!19373 List!13101)) )
))
(declare-fun arrayNoDuplicates!0 (array!39679 (_ BitVec 32) List!13101) Bool)

(assert (=> b!688427 (= res!453272 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13098))))

(declare-fun b!688428 () Bool)

(declare-fun res!453290 () Bool)

(declare-fun e!392083 () Bool)

(assert (=> b!688428 (=> res!453290 e!392083)))

(declare-fun lt!315792 () List!13101)

(declare-fun contains!3644 (List!13101 (_ BitVec 64)) Bool)

(assert (=> b!688428 (= res!453290 (contains!3644 lt!315792 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688429 () Bool)

(declare-fun res!453278 () Bool)

(assert (=> b!688429 (=> (not res!453278) (not e!392082))))

(assert (=> b!688429 (= res!453278 e!392089)))

(declare-fun res!453283 () Bool)

(assert (=> b!688429 (=> res!453283 e!392089)))

(declare-fun e!392085 () Bool)

(assert (=> b!688429 (= res!453283 e!392085)))

(declare-fun res!453286 () Bool)

(assert (=> b!688429 (=> (not res!453286) (not e!392085))))

(assert (=> b!688429 (= res!453286 (bvsgt from!3004 i!1382))))

(declare-fun b!688430 () Bool)

(declare-fun res!453277 () Bool)

(assert (=> b!688430 (=> (not res!453277) (not e!392082))))

(assert (=> b!688430 (= res!453277 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19388 a!3626))))))

(declare-fun b!688431 () Bool)

(declare-fun e!392080 () Bool)

(assert (=> b!688431 (= e!392080 (not (contains!3644 lt!315792 k!2843)))))

(declare-fun b!688432 () Bool)

(declare-fun res!453287 () Bool)

(assert (=> b!688432 (=> (not res!453287) (not e!392082))))

(declare-fun acc!681 () List!13101)

(declare-fun noDuplicate!891 (List!13101) Bool)

(assert (=> b!688432 (= res!453287 (noDuplicate!891 acc!681))))

(declare-fun b!688433 () Bool)

(declare-fun res!453273 () Bool)

(assert (=> b!688433 (=> (not res!453273) (not e!392082))))

(assert (=> b!688433 (= res!453273 (not (contains!3644 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688434 () Bool)

(declare-datatypes ((Unit!24272 0))(
  ( (Unit!24273) )
))
(declare-fun e!392086 () Unit!24272)

(declare-fun Unit!24274 () Unit!24272)

(assert (=> b!688434 (= e!392086 Unit!24274)))

(declare-fun b!688435 () Bool)

(assert (=> b!688435 (= e!392082 (not e!392083))))

(declare-fun res!453282 () Bool)

(assert (=> b!688435 (=> res!453282 e!392083)))

(assert (=> b!688435 (= res!453282 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!688435 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315792)))

(declare-fun lt!315796 () Unit!24272)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39679 (_ BitVec 64) (_ BitVec 32) List!13101 List!13101) Unit!24272)

(assert (=> b!688435 (= lt!315796 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315792))))

(declare-fun -!194 (List!13101 (_ BitVec 64)) List!13101)

(assert (=> b!688435 (= (-!194 lt!315792 k!2843) acc!681)))

(declare-fun $colon$colon!393 (List!13101 (_ BitVec 64)) List!13101)

(assert (=> b!688435 (= lt!315792 ($colon$colon!393 acc!681 k!2843))))

(declare-fun lt!315798 () Unit!24272)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13101) Unit!24272)

(assert (=> b!688435 (= lt!315798 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!229 (List!13101 List!13101) Bool)

(assert (=> b!688435 (subseq!229 acc!681 acc!681)))

(declare-fun lt!315791 () Unit!24272)

(declare-fun lemmaListSubSeqRefl!0 (List!13101) Unit!24272)

(assert (=> b!688435 (= lt!315791 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688435 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315794 () Unit!24272)

(declare-fun e!392084 () Unit!24272)

(assert (=> b!688435 (= lt!315794 e!392084)))

(declare-fun c!77944 () Bool)

(assert (=> b!688435 (= c!77944 (validKeyInArray!0 (select (arr!19007 a!3626) from!3004)))))

(declare-fun lt!315793 () Unit!24272)

(assert (=> b!688435 (= lt!315793 e!392086)))

(declare-fun c!77945 () Bool)

(declare-fun arrayContainsKey!0 (array!39679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688435 (= c!77945 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688435 (arrayContainsKey!0 (array!39680 (store (arr!19007 a!3626) i!1382 k!2843) (size!19388 a!3626)) k!2843 from!3004)))

(declare-fun b!688436 () Bool)

(declare-fun res!453280 () Bool)

(assert (=> b!688436 (=> (not res!453280) (not e!392082))))

(assert (=> b!688436 (= res!453280 (not (contains!3644 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688437 () Bool)

(declare-fun res!453284 () Bool)

(assert (=> b!688437 (=> (not res!453284) (not e!392082))))

(assert (=> b!688437 (= res!453284 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688438 () Bool)

(declare-fun e!392087 () Bool)

(assert (=> b!688438 (= e!392087 e!392080)))

(declare-fun res!453275 () Bool)

(assert (=> b!688438 (=> (not res!453275) (not e!392080))))

(assert (=> b!688438 (= res!453275 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688439 () Bool)

(declare-fun Unit!24275 () Unit!24272)

(assert (=> b!688439 (= e!392086 Unit!24275)))

(declare-fun lt!315790 () Unit!24272)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39679 (_ BitVec 64) (_ BitVec 32)) Unit!24272)

(assert (=> b!688439 (= lt!315790 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688439 false))

(declare-fun b!688440 () Bool)

(declare-fun res!453281 () Bool)

(assert (=> b!688440 (=> (not res!453281) (not e!392082))))

(assert (=> b!688440 (= res!453281 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!453285 () Bool)

(assert (=> start!61582 (=> (not res!453285) (not e!392082))))

(assert (=> start!61582 (= res!453285 (and (bvslt (size!19388 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19388 a!3626))))))

(assert (=> start!61582 e!392082))

(assert (=> start!61582 true))

(declare-fun array_inv!14781 (array!39679) Bool)

(assert (=> start!61582 (array_inv!14781 a!3626)))

(declare-fun b!688441 () Bool)

(assert (=> b!688441 (= e!392085 (contains!3644 acc!681 k!2843))))

(declare-fun b!688442 () Bool)

(declare-fun res!453271 () Bool)

(assert (=> b!688442 (=> res!453271 e!392083)))

(assert (=> b!688442 (= res!453271 (not (noDuplicate!891 lt!315792)))))

(declare-fun b!688443 () Bool)

(assert (=> b!688443 (= e!392083 true)))

(declare-fun lt!315795 () Bool)

(assert (=> b!688443 (= lt!315795 e!392087)))

(declare-fun res!453276 () Bool)

(assert (=> b!688443 (=> res!453276 e!392087)))

(declare-fun e!392088 () Bool)

(assert (=> b!688443 (= res!453276 e!392088)))

(declare-fun res!453279 () Bool)

(assert (=> b!688443 (=> (not res!453279) (not e!392088))))

(assert (=> b!688443 (= res!453279 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688444 () Bool)

(declare-fun lt!315789 () Unit!24272)

(assert (=> b!688444 (= e!392084 lt!315789)))

(declare-fun lt!315797 () Unit!24272)

(assert (=> b!688444 (= lt!315797 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688444 (subseq!229 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39679 List!13101 List!13101 (_ BitVec 32)) Unit!24272)

(assert (=> b!688444 (= lt!315789 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!393 acc!681 (select (arr!19007 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688444 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688445 () Bool)

(assert (=> b!688445 (= e!392088 (contains!3644 lt!315792 k!2843))))

(declare-fun b!688446 () Bool)

(declare-fun Unit!24276 () Unit!24272)

(assert (=> b!688446 (= e!392084 Unit!24276)))

(declare-fun b!688447 () Bool)

(declare-fun res!453289 () Bool)

(assert (=> b!688447 (=> res!453289 e!392083)))

(assert (=> b!688447 (= res!453289 (contains!3644 lt!315792 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688448 () Bool)

(assert (=> b!688448 (= e!392081 (not (contains!3644 acc!681 k!2843)))))

(assert (= (and start!61582 res!453285) b!688432))

(assert (= (and b!688432 res!453287) b!688433))

(assert (= (and b!688433 res!453273) b!688436))

(assert (= (and b!688436 res!453280) b!688429))

(assert (= (and b!688429 res!453286) b!688441))

(assert (= (and b!688429 (not res!453283)) b!688426))

(assert (= (and b!688426 res!453270) b!688448))

(assert (= (and b!688429 res!453278) b!688427))

(assert (= (and b!688427 res!453272) b!688440))

(assert (= (and b!688440 res!453281) b!688430))

(assert (= (and b!688430 res!453277) b!688424))

(assert (= (and b!688424 res!453274) b!688437))

(assert (= (and b!688437 res!453284) b!688425))

(assert (= (and b!688425 res!453288) b!688435))

(assert (= (and b!688435 c!77945) b!688439))

(assert (= (and b!688435 (not c!77945)) b!688434))

(assert (= (and b!688435 c!77944) b!688444))

(assert (= (and b!688435 (not c!77944)) b!688446))

(assert (= (and b!688435 (not res!453282)) b!688442))

(assert (= (and b!688442 (not res!453271)) b!688447))

(assert (= (and b!688447 (not res!453289)) b!688428))

(assert (= (and b!688428 (not res!453290)) b!688443))

(assert (= (and b!688443 res!453279) b!688445))

(assert (= (and b!688443 (not res!453276)) b!688438))

(assert (= (and b!688438 res!453275) b!688431))

(declare-fun m!652343 () Bool)

(assert (=> b!688448 m!652343))

(declare-fun m!652345 () Bool)

(assert (=> b!688433 m!652345))

(declare-fun m!652347 () Bool)

(assert (=> b!688444 m!652347))

(declare-fun m!652349 () Bool)

(assert (=> b!688444 m!652349))

(declare-fun m!652351 () Bool)

(assert (=> b!688444 m!652351))

(declare-fun m!652353 () Bool)

(assert (=> b!688444 m!652353))

(assert (=> b!688444 m!652349))

(assert (=> b!688444 m!652351))

(declare-fun m!652355 () Bool)

(assert (=> b!688444 m!652355))

(declare-fun m!652357 () Bool)

(assert (=> b!688444 m!652357))

(declare-fun m!652359 () Bool)

(assert (=> b!688427 m!652359))

(declare-fun m!652361 () Bool)

(assert (=> b!688431 m!652361))

(declare-fun m!652363 () Bool)

(assert (=> b!688432 m!652363))

(declare-fun m!652365 () Bool)

(assert (=> b!688428 m!652365))

(declare-fun m!652367 () Bool)

(assert (=> b!688439 m!652367))

(declare-fun m!652369 () Bool)

(assert (=> b!688424 m!652369))

(declare-fun m!652371 () Bool)

(assert (=> b!688436 m!652371))

(assert (=> b!688445 m!652361))

(declare-fun m!652373 () Bool)

(assert (=> b!688437 m!652373))

(assert (=> b!688441 m!652343))

(assert (=> b!688435 m!652347))

(assert (=> b!688435 m!652349))

(declare-fun m!652375 () Bool)

(assert (=> b!688435 m!652375))

(declare-fun m!652377 () Bool)

(assert (=> b!688435 m!652377))

(declare-fun m!652379 () Bool)

(assert (=> b!688435 m!652379))

(assert (=> b!688435 m!652355))

(declare-fun m!652381 () Bool)

(assert (=> b!688435 m!652381))

(declare-fun m!652383 () Bool)

(assert (=> b!688435 m!652383))

(assert (=> b!688435 m!652349))

(declare-fun m!652385 () Bool)

(assert (=> b!688435 m!652385))

(declare-fun m!652387 () Bool)

(assert (=> b!688435 m!652387))

(declare-fun m!652389 () Bool)

(assert (=> b!688435 m!652389))

(declare-fun m!652391 () Bool)

(assert (=> b!688435 m!652391))

(assert (=> b!688435 m!652357))

(declare-fun m!652393 () Bool)

(assert (=> b!688440 m!652393))

(declare-fun m!652395 () Bool)

(assert (=> start!61582 m!652395))

(declare-fun m!652397 () Bool)

(assert (=> b!688442 m!652397))

(declare-fun m!652399 () Bool)

(assert (=> b!688447 m!652399))

(push 1)

(assert (not b!688442))

(assert (not b!688432))

(assert (not b!688424))

(assert (not b!688437))

(assert (not b!688435))

(assert (not b!688444))

(assert (not b!688433))

(assert (not b!688436))

(assert (not b!688439))

(assert (not b!688447))

(assert (not b!688427))

(assert (not b!688440))

(assert (not b!688428))

(assert (not b!688445))

(assert (not b!688448))

(assert (not b!688441))

(assert (not b!688431))

(assert (not start!61582))

(check-sat)

