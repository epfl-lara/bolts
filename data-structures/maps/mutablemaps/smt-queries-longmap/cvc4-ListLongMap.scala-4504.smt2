; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62512 () Bool)

(assert start!62512)

(declare-fun b!703383 () Bool)

(declare-fun res!467380 () Bool)

(declare-fun e!397515 () Bool)

(assert (=> b!703383 (=> (not res!467380) (not e!397515))))

(declare-datatypes ((List!13320 0))(
  ( (Nil!13317) (Cons!13316 (h!14361 (_ BitVec 64)) (t!19610 List!13320)) )
))
(declare-fun acc!652 () List!13320)

(declare-fun newAcc!49 () List!13320)

(declare-fun subseq!307 (List!13320 List!13320) Bool)

(assert (=> b!703383 (= res!467380 (subseq!307 acc!652 newAcc!49))))

(declare-fun b!703384 () Bool)

(declare-fun res!467384 () Bool)

(assert (=> b!703384 (=> (not res!467384) (not e!397515))))

(declare-fun contains!3863 (List!13320 (_ BitVec 64)) Bool)

(assert (=> b!703384 (= res!467384 (not (contains!3863 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703385 () Bool)

(assert (=> b!703385 (= e!397515 false)))

(declare-datatypes ((array!40147 0))(
  ( (array!40148 (arr!19226 (Array (_ BitVec 32) (_ BitVec 64))) (size!19609 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40147)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun lt!317739 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40147 (_ BitVec 32) List!13320) Bool)

(assert (=> b!703385 (= lt!317739 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703386 () Bool)

(declare-fun res!467371 () Bool)

(assert (=> b!703386 (=> (not res!467371) (not e!397515))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703386 (= res!467371 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703387 () Bool)

(declare-fun res!467368 () Bool)

(assert (=> b!703387 (=> (not res!467368) (not e!397515))))

(assert (=> b!703387 (= res!467368 (contains!3863 newAcc!49 k!2824))))

(declare-fun b!703388 () Bool)

(declare-fun res!467370 () Bool)

(assert (=> b!703388 (=> (not res!467370) (not e!397515))))

(assert (=> b!703388 (= res!467370 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19609 a!3591)))))

(declare-fun b!703389 () Bool)

(declare-fun res!467383 () Bool)

(assert (=> b!703389 (=> (not res!467383) (not e!397515))))

(assert (=> b!703389 (= res!467383 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703390 () Bool)

(declare-fun res!467375 () Bool)

(assert (=> b!703390 (=> (not res!467375) (not e!397515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703390 (= res!467375 (validKeyInArray!0 k!2824))))

(declare-fun b!703391 () Bool)

(declare-fun res!467381 () Bool)

(assert (=> b!703391 (=> (not res!467381) (not e!397515))))

(assert (=> b!703391 (= res!467381 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703392 () Bool)

(declare-fun res!467376 () Bool)

(assert (=> b!703392 (=> (not res!467376) (not e!397515))))

(declare-fun noDuplicate!1110 (List!13320) Bool)

(assert (=> b!703392 (= res!467376 (noDuplicate!1110 acc!652))))

(declare-fun res!467374 () Bool)

(assert (=> start!62512 (=> (not res!467374) (not e!397515))))

(assert (=> start!62512 (= res!467374 (and (bvslt (size!19609 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19609 a!3591))))))

(assert (=> start!62512 e!397515))

(assert (=> start!62512 true))

(declare-fun array_inv!15000 (array!40147) Bool)

(assert (=> start!62512 (array_inv!15000 a!3591)))

(declare-fun b!703393 () Bool)

(declare-fun res!467373 () Bool)

(assert (=> b!703393 (=> (not res!467373) (not e!397515))))

(declare-fun -!272 (List!13320 (_ BitVec 64)) List!13320)

(assert (=> b!703393 (= res!467373 (= (-!272 newAcc!49 k!2824) acc!652))))

(declare-fun b!703394 () Bool)

(declare-fun res!467372 () Bool)

(assert (=> b!703394 (=> (not res!467372) (not e!397515))))

(assert (=> b!703394 (= res!467372 (not (contains!3863 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703395 () Bool)

(declare-fun res!467369 () Bool)

(assert (=> b!703395 (=> (not res!467369) (not e!397515))))

(assert (=> b!703395 (= res!467369 (not (contains!3863 acc!652 k!2824)))))

(declare-fun b!703396 () Bool)

(declare-fun res!467379 () Bool)

(assert (=> b!703396 (=> (not res!467379) (not e!397515))))

(assert (=> b!703396 (= res!467379 (not (validKeyInArray!0 (select (arr!19226 a!3591) from!2969))))))

(declare-fun b!703397 () Bool)

(declare-fun res!467367 () Bool)

(assert (=> b!703397 (=> (not res!467367) (not e!397515))))

(assert (=> b!703397 (= res!467367 (noDuplicate!1110 newAcc!49))))

(declare-fun b!703398 () Bool)

(declare-fun res!467377 () Bool)

(assert (=> b!703398 (=> (not res!467377) (not e!397515))))

(assert (=> b!703398 (= res!467377 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703399 () Bool)

(declare-fun res!467378 () Bool)

(assert (=> b!703399 (=> (not res!467378) (not e!397515))))

(assert (=> b!703399 (= res!467378 (not (contains!3863 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703400 () Bool)

(declare-fun res!467382 () Bool)

(assert (=> b!703400 (=> (not res!467382) (not e!397515))))

(assert (=> b!703400 (= res!467382 (not (contains!3863 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62512 res!467374) b!703392))

(assert (= (and b!703392 res!467376) b!703397))

(assert (= (and b!703397 res!467367) b!703384))

(assert (= (and b!703384 res!467384) b!703399))

(assert (= (and b!703399 res!467378) b!703391))

(assert (= (and b!703391 res!467381) b!703395))

(assert (= (and b!703395 res!467369) b!703390))

(assert (= (and b!703390 res!467375) b!703389))

(assert (= (and b!703389 res!467383) b!703383))

(assert (= (and b!703383 res!467380) b!703387))

(assert (= (and b!703387 res!467368) b!703393))

(assert (= (and b!703393 res!467373) b!703400))

(assert (= (and b!703400 res!467382) b!703394))

(assert (= (and b!703394 res!467372) b!703388))

(assert (= (and b!703388 res!467370) b!703396))

(assert (= (and b!703396 res!467379) b!703398))

(assert (= (and b!703398 res!467377) b!703386))

(assert (= (and b!703386 res!467371) b!703385))

(declare-fun m!662247 () Bool)

(assert (=> b!703383 m!662247))

(declare-fun m!662249 () Bool)

(assert (=> b!703389 m!662249))

(declare-fun m!662251 () Bool)

(assert (=> b!703395 m!662251))

(declare-fun m!662253 () Bool)

(assert (=> start!62512 m!662253))

(declare-fun m!662255 () Bool)

(assert (=> b!703386 m!662255))

(declare-fun m!662257 () Bool)

(assert (=> b!703384 m!662257))

(declare-fun m!662259 () Bool)

(assert (=> b!703385 m!662259))

(declare-fun m!662261 () Bool)

(assert (=> b!703397 m!662261))

(declare-fun m!662263 () Bool)

(assert (=> b!703394 m!662263))

(declare-fun m!662265 () Bool)

(assert (=> b!703392 m!662265))

(declare-fun m!662267 () Bool)

(assert (=> b!703390 m!662267))

(declare-fun m!662269 () Bool)

(assert (=> b!703391 m!662269))

(declare-fun m!662271 () Bool)

(assert (=> b!703399 m!662271))

(declare-fun m!662273 () Bool)

(assert (=> b!703387 m!662273))

(declare-fun m!662275 () Bool)

(assert (=> b!703393 m!662275))

(declare-fun m!662277 () Bool)

(assert (=> b!703396 m!662277))

(assert (=> b!703396 m!662277))

(declare-fun m!662279 () Bool)

(assert (=> b!703396 m!662279))

(declare-fun m!662281 () Bool)

(assert (=> b!703400 m!662281))

(push 1)

(assert (not b!703387))

(assert (not b!703399))

(assert (not b!703394))

(assert (not b!703400))

(assert (not b!703389))

(assert (not b!703391))

(assert (not b!703396))

(assert (not b!703390))

(assert (not start!62512))

(assert (not b!703392))

