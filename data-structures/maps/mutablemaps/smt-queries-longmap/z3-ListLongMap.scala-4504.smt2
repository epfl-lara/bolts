; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62510 () Bool)

(assert start!62510)

(declare-fun b!703329 () Bool)

(declare-fun res!467321 () Bool)

(declare-fun e!397509 () Bool)

(assert (=> b!703329 (=> (not res!467321) (not e!397509))))

(declare-datatypes ((List!13319 0))(
  ( (Nil!13316) (Cons!13315 (h!14360 (_ BitVec 64)) (t!19609 List!13319)) )
))
(declare-fun newAcc!49 () List!13319)

(declare-fun contains!3862 (List!13319 (_ BitVec 64)) Bool)

(assert (=> b!703329 (= res!467321 (not (contains!3862 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703330 () Bool)

(declare-fun res!467327 () Bool)

(assert (=> b!703330 (=> (not res!467327) (not e!397509))))

(declare-datatypes ((array!40145 0))(
  ( (array!40146 (arr!19225 (Array (_ BitVec 32) (_ BitVec 64))) (size!19608 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40145)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703330 (= res!467327 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703331 () Bool)

(declare-fun res!467328 () Bool)

(assert (=> b!703331 (=> (not res!467328) (not e!397509))))

(declare-fun acc!652 () List!13319)

(assert (=> b!703331 (= res!467328 (not (contains!3862 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703333 () Bool)

(declare-fun res!467313 () Bool)

(assert (=> b!703333 (=> (not res!467313) (not e!397509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703333 (= res!467313 (not (validKeyInArray!0 (select (arr!19225 a!3591) from!2969))))))

(declare-fun b!703334 () Bool)

(declare-fun res!467323 () Bool)

(assert (=> b!703334 (=> (not res!467323) (not e!397509))))

(assert (=> b!703334 (= res!467323 (not (contains!3862 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703335 () Bool)

(declare-fun res!467317 () Bool)

(assert (=> b!703335 (=> (not res!467317) (not e!397509))))

(assert (=> b!703335 (= res!467317 (not (contains!3862 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703336 () Bool)

(declare-fun res!467315 () Bool)

(assert (=> b!703336 (=> (not res!467315) (not e!397509))))

(declare-fun -!271 (List!13319 (_ BitVec 64)) List!13319)

(assert (=> b!703336 (= res!467315 (= (-!271 newAcc!49 k0!2824) acc!652))))

(declare-fun b!703337 () Bool)

(declare-fun res!467326 () Bool)

(assert (=> b!703337 (=> (not res!467326) (not e!397509))))

(declare-fun arrayNoDuplicates!0 (array!40145 (_ BitVec 32) List!13319) Bool)

(assert (=> b!703337 (= res!467326 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703338 () Bool)

(declare-fun res!467318 () Bool)

(assert (=> b!703338 (=> (not res!467318) (not e!397509))))

(declare-fun subseq!306 (List!13319 List!13319) Bool)

(assert (=> b!703338 (= res!467318 (subseq!306 acc!652 newAcc!49))))

(declare-fun b!703339 () Bool)

(declare-fun res!467314 () Bool)

(assert (=> b!703339 (=> (not res!467314) (not e!397509))))

(declare-fun noDuplicate!1109 (List!13319) Bool)

(assert (=> b!703339 (= res!467314 (noDuplicate!1109 acc!652))))

(declare-fun b!703340 () Bool)

(declare-fun res!467330 () Bool)

(assert (=> b!703340 (=> (not res!467330) (not e!397509))))

(assert (=> b!703340 (= res!467330 (contains!3862 newAcc!49 k0!2824))))

(declare-fun b!703332 () Bool)

(declare-fun res!467322 () Bool)

(assert (=> b!703332 (=> (not res!467322) (not e!397509))))

(assert (=> b!703332 (= res!467322 (not (contains!3862 acc!652 k0!2824)))))

(declare-fun res!467324 () Bool)

(assert (=> start!62510 (=> (not res!467324) (not e!397509))))

(assert (=> start!62510 (= res!467324 (and (bvslt (size!19608 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19608 a!3591))))))

(assert (=> start!62510 e!397509))

(assert (=> start!62510 true))

(declare-fun array_inv!14999 (array!40145) Bool)

(assert (=> start!62510 (array_inv!14999 a!3591)))

(declare-fun b!703341 () Bool)

(declare-fun res!467320 () Bool)

(assert (=> b!703341 (=> (not res!467320) (not e!397509))))

(assert (=> b!703341 (= res!467320 (noDuplicate!1109 newAcc!49))))

(declare-fun b!703342 () Bool)

(declare-fun res!467319 () Bool)

(assert (=> b!703342 (=> (not res!467319) (not e!397509))))

(assert (=> b!703342 (= res!467319 (validKeyInArray!0 k0!2824))))

(declare-fun b!703343 () Bool)

(declare-fun res!467329 () Bool)

(assert (=> b!703343 (=> (not res!467329) (not e!397509))))

(assert (=> b!703343 (= res!467329 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703344 () Bool)

(assert (=> b!703344 (= e!397509 false)))

(declare-fun lt!317736 () Bool)

(assert (=> b!703344 (= lt!317736 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703345 () Bool)

(declare-fun res!467325 () Bool)

(assert (=> b!703345 (=> (not res!467325) (not e!397509))))

(assert (=> b!703345 (= res!467325 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!703346 () Bool)

(declare-fun res!467316 () Bool)

(assert (=> b!703346 (=> (not res!467316) (not e!397509))))

(assert (=> b!703346 (= res!467316 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19608 a!3591)))))

(assert (= (and start!62510 res!467324) b!703339))

(assert (= (and b!703339 res!467314) b!703341))

(assert (= (and b!703341 res!467320) b!703331))

(assert (= (and b!703331 res!467328) b!703335))

(assert (= (and b!703335 res!467317) b!703345))

(assert (= (and b!703345 res!467325) b!703332))

(assert (= (and b!703332 res!467322) b!703342))

(assert (= (and b!703342 res!467319) b!703337))

(assert (= (and b!703337 res!467326) b!703338))

(assert (= (and b!703338 res!467318) b!703340))

(assert (= (and b!703340 res!467330) b!703336))

(assert (= (and b!703336 res!467315) b!703334))

(assert (= (and b!703334 res!467323) b!703329))

(assert (= (and b!703329 res!467321) b!703346))

(assert (= (and b!703346 res!467316) b!703333))

(assert (= (and b!703333 res!467313) b!703343))

(assert (= (and b!703343 res!467329) b!703330))

(assert (= (and b!703330 res!467327) b!703344))

(declare-fun m!662211 () Bool)

(assert (=> b!703344 m!662211))

(declare-fun m!662213 () Bool)

(assert (=> b!703335 m!662213))

(declare-fun m!662215 () Bool)

(assert (=> b!703338 m!662215))

(declare-fun m!662217 () Bool)

(assert (=> b!703329 m!662217))

(declare-fun m!662219 () Bool)

(assert (=> start!62510 m!662219))

(declare-fun m!662221 () Bool)

(assert (=> b!703336 m!662221))

(declare-fun m!662223 () Bool)

(assert (=> b!703339 m!662223))

(declare-fun m!662225 () Bool)

(assert (=> b!703345 m!662225))

(declare-fun m!662227 () Bool)

(assert (=> b!703340 m!662227))

(declare-fun m!662229 () Bool)

(assert (=> b!703334 m!662229))

(declare-fun m!662231 () Bool)

(assert (=> b!703333 m!662231))

(assert (=> b!703333 m!662231))

(declare-fun m!662233 () Bool)

(assert (=> b!703333 m!662233))

(declare-fun m!662235 () Bool)

(assert (=> b!703341 m!662235))

(declare-fun m!662237 () Bool)

(assert (=> b!703337 m!662237))

(declare-fun m!662239 () Bool)

(assert (=> b!703332 m!662239))

(declare-fun m!662241 () Bool)

(assert (=> b!703342 m!662241))

(declare-fun m!662243 () Bool)

(assert (=> b!703330 m!662243))

(declare-fun m!662245 () Bool)

(assert (=> b!703331 m!662245))

(check-sat (not b!703345) (not b!703335) (not b!703338) (not b!703340) (not b!703342) (not start!62510) (not b!703329) (not b!703344) (not b!703333) (not b!703332) (not b!703339) (not b!703330) (not b!703334) (not b!703331) (not b!703337) (not b!703336) (not b!703341))
(check-sat)
