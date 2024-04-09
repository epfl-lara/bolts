; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62626 () Bool)

(assert start!62626)

(declare-fun b!706331 () Bool)

(declare-fun res!470325 () Bool)

(declare-fun e!397857 () Bool)

(assert (=> b!706331 (=> (not res!470325) (not e!397857))))

(declare-datatypes ((array!40261 0))(
  ( (array!40262 (arr!19283 (Array (_ BitVec 32) (_ BitVec 64))) (size!19666 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40261)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13377 0))(
  ( (Nil!13374) (Cons!13373 (h!14418 (_ BitVec 64)) (t!19667 List!13377)) )
))
(declare-fun acc!652 () List!13377)

(declare-fun arrayNoDuplicates!0 (array!40261 (_ BitVec 32) List!13377) Bool)

(assert (=> b!706331 (= res!470325 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706332 () Bool)

(declare-fun res!470320 () Bool)

(assert (=> b!706332 (=> (not res!470320) (not e!397857))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3920 (List!13377 (_ BitVec 64)) Bool)

(assert (=> b!706332 (= res!470320 (not (contains!3920 acc!652 k!2824)))))

(declare-fun b!706333 () Bool)

(declare-fun res!470322 () Bool)

(assert (=> b!706333 (=> (not res!470322) (not e!397857))))

(declare-fun noDuplicate!1167 (List!13377) Bool)

(assert (=> b!706333 (= res!470322 (noDuplicate!1167 acc!652))))

(declare-fun b!706334 () Bool)

(declare-fun res!470324 () Bool)

(assert (=> b!706334 (=> (not res!470324) (not e!397857))))

(declare-fun newAcc!49 () List!13377)

(declare-fun subseq!364 (List!13377 List!13377) Bool)

(assert (=> b!706334 (= res!470324 (subseq!364 acc!652 newAcc!49))))

(declare-fun b!706335 () Bool)

(declare-fun res!470317 () Bool)

(assert (=> b!706335 (=> (not res!470317) (not e!397857))))

(assert (=> b!706335 (= res!470317 (not (contains!3920 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706336 () Bool)

(declare-fun res!470315 () Bool)

(assert (=> b!706336 (=> (not res!470315) (not e!397857))))

(declare-fun -!329 (List!13377 (_ BitVec 64)) List!13377)

(assert (=> b!706336 (= res!470315 (= (-!329 newAcc!49 k!2824) acc!652))))

(declare-fun b!706337 () Bool)

(declare-fun res!470321 () Bool)

(assert (=> b!706337 (=> (not res!470321) (not e!397857))))

(assert (=> b!706337 (= res!470321 (contains!3920 newAcc!49 k!2824))))

(declare-fun b!706338 () Bool)

(declare-fun res!470326 () Bool)

(assert (=> b!706338 (=> (not res!470326) (not e!397857))))

(assert (=> b!706338 (= res!470326 (not (contains!3920 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706339 () Bool)

(declare-fun res!470319 () Bool)

(assert (=> b!706339 (=> (not res!470319) (not e!397857))))

(assert (=> b!706339 (= res!470319 (not (contains!3920 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!470318 () Bool)

(assert (=> start!62626 (=> (not res!470318) (not e!397857))))

(assert (=> start!62626 (= res!470318 (and (bvslt (size!19666 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19666 a!3591))))))

(assert (=> start!62626 e!397857))

(assert (=> start!62626 true))

(declare-fun array_inv!15057 (array!40261) Bool)

(assert (=> start!62626 (array_inv!15057 a!3591)))

(declare-fun b!706340 () Bool)

(declare-fun res!470316 () Bool)

(assert (=> b!706340 (=> (not res!470316) (not e!397857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706340 (= res!470316 (validKeyInArray!0 k!2824))))

(declare-fun b!706341 () Bool)

(assert (=> b!706341 (= e!397857 false)))

(declare-fun lt!317901 () Bool)

(assert (=> b!706341 (= lt!317901 (contains!3920 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706342 () Bool)

(declare-fun res!470323 () Bool)

(assert (=> b!706342 (=> (not res!470323) (not e!397857))))

(assert (=> b!706342 (= res!470323 (noDuplicate!1167 newAcc!49))))

(declare-fun b!706343 () Bool)

(declare-fun res!470327 () Bool)

(assert (=> b!706343 (=> (not res!470327) (not e!397857))))

(declare-fun arrayContainsKey!0 (array!40261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706343 (= res!470327 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(assert (= (and start!62626 res!470318) b!706333))

(assert (= (and b!706333 res!470322) b!706342))

(assert (= (and b!706342 res!470323) b!706338))

(assert (= (and b!706338 res!470326) b!706339))

(assert (= (and b!706339 res!470319) b!706343))

(assert (= (and b!706343 res!470327) b!706332))

(assert (= (and b!706332 res!470320) b!706340))

(assert (= (and b!706340 res!470316) b!706331))

(assert (= (and b!706331 res!470325) b!706334))

(assert (= (and b!706334 res!470324) b!706337))

(assert (= (and b!706337 res!470321) b!706336))

(assert (= (and b!706336 res!470315) b!706335))

(assert (= (and b!706335 res!470317) b!706341))

(declare-fun m!664259 () Bool)

(assert (=> start!62626 m!664259))

(declare-fun m!664261 () Bool)

(assert (=> b!706337 m!664261))

(declare-fun m!664263 () Bool)

(assert (=> b!706334 m!664263))

(declare-fun m!664265 () Bool)

(assert (=> b!706331 m!664265))

(declare-fun m!664267 () Bool)

(assert (=> b!706341 m!664267))

(declare-fun m!664269 () Bool)

(assert (=> b!706336 m!664269))

(declare-fun m!664271 () Bool)

(assert (=> b!706332 m!664271))

(declare-fun m!664273 () Bool)

(assert (=> b!706339 m!664273))

(declare-fun m!664275 () Bool)

(assert (=> b!706335 m!664275))

(declare-fun m!664277 () Bool)

(assert (=> b!706342 m!664277))

(declare-fun m!664279 () Bool)

(assert (=> b!706343 m!664279))

(declare-fun m!664281 () Bool)

(assert (=> b!706340 m!664281))

(declare-fun m!664283 () Bool)

(assert (=> b!706338 m!664283))

(declare-fun m!664285 () Bool)

(assert (=> b!706333 m!664285))

(push 1)

(assert (not b!706332))

(assert (not b!706331))

(assert (not b!706341))

(assert (not b!706343))

(assert (not b!706340))

(assert (not b!706342))

(assert (not b!706334))

(assert (not b!706336))

(assert (not b!706333))

(assert (not start!62626))

(assert (not b!706335))

(assert (not b!706337))

