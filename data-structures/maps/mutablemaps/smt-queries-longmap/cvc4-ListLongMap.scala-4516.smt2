; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62584 () Bool)

(assert start!62584)

(declare-fun b!705335 () Bool)

(declare-fun res!469319 () Bool)

(declare-fun e!397732 () Bool)

(assert (=> b!705335 (=> (not res!469319) (not e!397732))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40219 0))(
  ( (array!40220 (arr!19262 (Array (_ BitVec 32) (_ BitVec 64))) (size!19645 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40219)

(assert (=> b!705335 (= res!469319 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19645 a!3591)))))

(declare-fun b!705336 () Bool)

(declare-fun res!469333 () Bool)

(assert (=> b!705336 (=> (not res!469333) (not e!397732))))

(declare-datatypes ((List!13356 0))(
  ( (Nil!13353) (Cons!13352 (h!14397 (_ BitVec 64)) (t!19646 List!13356)) )
))
(declare-fun acc!652 () List!13356)

(declare-fun newAcc!49 () List!13356)

(declare-fun subseq!343 (List!13356 List!13356) Bool)

(assert (=> b!705336 (= res!469333 (subseq!343 acc!652 newAcc!49))))

(declare-fun b!705337 () Bool)

(declare-fun res!469322 () Bool)

(assert (=> b!705337 (=> (not res!469322) (not e!397732))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3899 (List!13356 (_ BitVec 64)) Bool)

(assert (=> b!705337 (= res!469322 (contains!3899 newAcc!49 k!2824))))

(declare-fun b!705338 () Bool)

(declare-fun res!469321 () Bool)

(assert (=> b!705338 (=> (not res!469321) (not e!397732))))

(assert (=> b!705338 (= res!469321 (not (contains!3899 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705339 () Bool)

(declare-fun res!469335 () Bool)

(assert (=> b!705339 (=> (not res!469335) (not e!397732))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705339 (= res!469335 (not (validKeyInArray!0 (select (arr!19262 a!3591) from!2969))))))

(declare-fun b!705340 () Bool)

(declare-fun res!469332 () Bool)

(assert (=> b!705340 (=> (not res!469332) (not e!397732))))

(declare-fun -!308 (List!13356 (_ BitVec 64)) List!13356)

(assert (=> b!705340 (= res!469332 (= (-!308 newAcc!49 k!2824) acc!652))))

(declare-fun b!705341 () Bool)

(declare-fun res!469334 () Bool)

(assert (=> b!705341 (=> (not res!469334) (not e!397732))))

(declare-fun noDuplicate!1146 (List!13356) Bool)

(assert (=> b!705341 (= res!469334 (noDuplicate!1146 acc!652))))

(declare-fun b!705342 () Bool)

(declare-fun res!469337 () Bool)

(assert (=> b!705342 (=> (not res!469337) (not e!397732))))

(assert (=> b!705342 (= res!469337 (not (contains!3899 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705343 () Bool)

(declare-fun res!469331 () Bool)

(assert (=> b!705343 (=> (not res!469331) (not e!397732))))

(declare-fun arrayContainsKey!0 (array!40219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705343 (= res!469331 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705344 () Bool)

(assert (=> b!705344 (= e!397732 (not (bvsle from!2969 (size!19645 a!3591))))))

(declare-fun arrayNoDuplicates!0 (array!40219 (_ BitVec 32) List!13356) Bool)

(assert (=> b!705344 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24590 0))(
  ( (Unit!24591) )
))
(declare-fun lt!317847 () Unit!24590)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40219 (_ BitVec 64) (_ BitVec 32) List!13356 List!13356) Unit!24590)

(assert (=> b!705344 (= lt!317847 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705345 () Bool)

(declare-fun res!469323 () Bool)

(assert (=> b!705345 (=> (not res!469323) (not e!397732))))

(assert (=> b!705345 (= res!469323 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705346 () Bool)

(declare-fun res!469330 () Bool)

(assert (=> b!705346 (=> (not res!469330) (not e!397732))))

(assert (=> b!705346 (= res!469330 (not (contains!3899 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705347 () Bool)

(declare-fun res!469329 () Bool)

(assert (=> b!705347 (=> (not res!469329) (not e!397732))))

(assert (=> b!705347 (= res!469329 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705348 () Bool)

(declare-fun res!469325 () Bool)

(assert (=> b!705348 (=> (not res!469325) (not e!397732))))

(assert (=> b!705348 (= res!469325 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705349 () Bool)

(declare-fun res!469320 () Bool)

(assert (=> b!705349 (=> (not res!469320) (not e!397732))))

(assert (=> b!705349 (= res!469320 (not (contains!3899 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705350 () Bool)

(declare-fun res!469327 () Bool)

(assert (=> b!705350 (=> (not res!469327) (not e!397732))))

(assert (=> b!705350 (= res!469327 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun res!469324 () Bool)

(assert (=> start!62584 (=> (not res!469324) (not e!397732))))

(assert (=> start!62584 (= res!469324 (and (bvslt (size!19645 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19645 a!3591))))))

(assert (=> start!62584 e!397732))

(assert (=> start!62584 true))

(declare-fun array_inv!15036 (array!40219) Bool)

(assert (=> start!62584 (array_inv!15036 a!3591)))

(declare-fun b!705351 () Bool)

(declare-fun res!469336 () Bool)

(assert (=> b!705351 (=> (not res!469336) (not e!397732))))

(assert (=> b!705351 (= res!469336 (validKeyInArray!0 k!2824))))

(declare-fun b!705352 () Bool)

(declare-fun res!469326 () Bool)

(assert (=> b!705352 (=> (not res!469326) (not e!397732))))

(assert (=> b!705352 (= res!469326 (not (contains!3899 acc!652 k!2824)))))

(declare-fun b!705353 () Bool)

(declare-fun res!469328 () Bool)

(assert (=> b!705353 (=> (not res!469328) (not e!397732))))

(assert (=> b!705353 (= res!469328 (noDuplicate!1146 newAcc!49))))

(assert (= (and start!62584 res!469324) b!705341))

(assert (= (and b!705341 res!469334) b!705353))

(assert (= (and b!705353 res!469328) b!705342))

(assert (= (and b!705342 res!469337) b!705338))

(assert (= (and b!705338 res!469321) b!705350))

(assert (= (and b!705350 res!469327) b!705352))

(assert (= (and b!705352 res!469326) b!705351))

(assert (= (and b!705351 res!469336) b!705345))

(assert (= (and b!705345 res!469323) b!705336))

(assert (= (and b!705336 res!469333) b!705337))

(assert (= (and b!705337 res!469322) b!705340))

(assert (= (and b!705340 res!469332) b!705349))

(assert (= (and b!705349 res!469320) b!705346))

(assert (= (and b!705346 res!469330) b!705335))

(assert (= (and b!705335 res!469319) b!705339))

(assert (= (and b!705339 res!469335) b!705347))

(assert (= (and b!705347 res!469329) b!705343))

(assert (= (and b!705343 res!469331) b!705348))

(assert (= (and b!705348 res!469325) b!705344))

(declare-fun m!663551 () Bool)

(assert (=> b!705343 m!663551))

(declare-fun m!663553 () Bool)

(assert (=> b!705337 m!663553))

(declare-fun m!663555 () Bool)

(assert (=> b!705336 m!663555))

(declare-fun m!663557 () Bool)

(assert (=> b!705342 m!663557))

(declare-fun m!663559 () Bool)

(assert (=> b!705353 m!663559))

(declare-fun m!663561 () Bool)

(assert (=> b!705345 m!663561))

(declare-fun m!663563 () Bool)

(assert (=> b!705338 m!663563))

(declare-fun m!663565 () Bool)

(assert (=> b!705341 m!663565))

(declare-fun m!663567 () Bool)

(assert (=> b!705344 m!663567))

(declare-fun m!663569 () Bool)

(assert (=> b!705344 m!663569))

(declare-fun m!663571 () Bool)

(assert (=> b!705352 m!663571))

(declare-fun m!663573 () Bool)

(assert (=> b!705351 m!663573))

(declare-fun m!663575 () Bool)

(assert (=> b!705350 m!663575))

(declare-fun m!663577 () Bool)

(assert (=> start!62584 m!663577))

(declare-fun m!663579 () Bool)

(assert (=> b!705346 m!663579))

(declare-fun m!663581 () Bool)

(assert (=> b!705339 m!663581))

(assert (=> b!705339 m!663581))

(declare-fun m!663583 () Bool)

(assert (=> b!705339 m!663583))

(declare-fun m!663585 () Bool)

(assert (=> b!705348 m!663585))

(declare-fun m!663587 () Bool)

(assert (=> b!705349 m!663587))

(declare-fun m!663589 () Bool)

(assert (=> b!705340 m!663589))

(push 1)

(assert (not b!705349))

(assert (not start!62584))

(assert (not b!705351))

(assert (not b!705350))

(assert (not b!705348))

(assert (not b!705339))

(assert (not b!705337))

(assert (not b!705343))

(assert (not b!705353))

(assert (not b!705352))

(assert (not b!705342))

(assert (not b!705346))

(assert (not b!705338))

(assert (not b!705345))

(assert (not b!705341))

(assert (not b!705340))

(assert (not b!705344))

(assert (not b!705336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

