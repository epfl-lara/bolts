; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63372 () Bool)

(assert start!63372)

(declare-fun res!476643 () Bool)

(declare-fun e!401171 () Bool)

(assert (=> start!63372 (=> (not res!476643) (not e!401171))))

(declare-datatypes ((array!40430 0))(
  ( (array!40431 (arr!19351 (Array (_ BitVec 32) (_ BitVec 64))) (size!19763 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40430)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63372 (= res!476643 (and (bvslt (size!19763 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19763 a!3591))))))

(assert (=> start!63372 e!401171))

(assert (=> start!63372 true))

(declare-fun array_inv!15125 (array!40430) Bool)

(assert (=> start!63372 (array_inv!15125 a!3591)))

(declare-fun b!713384 () Bool)

(declare-fun res!476635 () Bool)

(assert (=> b!713384 (=> (not res!476635) (not e!401171))))

(declare-datatypes ((List!13445 0))(
  ( (Nil!13442) (Cons!13441 (h!14486 (_ BitVec 64)) (t!19768 List!13445)) )
))
(declare-fun acc!652 () List!13445)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3988 (List!13445 (_ BitVec 64)) Bool)

(assert (=> b!713384 (= res!476635 (not (contains!3988 acc!652 k0!2824)))))

(declare-fun b!713385 () Bool)

(declare-fun res!476644 () Bool)

(assert (=> b!713385 (=> (not res!476644) (not e!401171))))

(declare-fun arrayNoDuplicates!0 (array!40430 (_ BitVec 32) List!13445) Bool)

(assert (=> b!713385 (= res!476644 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713386 () Bool)

(declare-fun res!476636 () Bool)

(assert (=> b!713386 (=> (not res!476636) (not e!401171))))

(declare-fun newAcc!49 () List!13445)

(assert (=> b!713386 (= res!476636 (contains!3988 newAcc!49 k0!2824))))

(declare-fun b!713387 () Bool)

(declare-fun res!476645 () Bool)

(assert (=> b!713387 (=> (not res!476645) (not e!401171))))

(assert (=> b!713387 (= res!476645 (not (contains!3988 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713388 () Bool)

(declare-fun res!476637 () Bool)

(assert (=> b!713388 (=> (not res!476637) (not e!401171))))

(declare-fun noDuplicate!1235 (List!13445) Bool)

(assert (=> b!713388 (= res!476637 (noDuplicate!1235 acc!652))))

(declare-fun b!713389 () Bool)

(declare-fun res!476634 () Bool)

(assert (=> b!713389 (=> (not res!476634) (not e!401171))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713389 (= res!476634 (validKeyInArray!0 k0!2824))))

(declare-fun b!713390 () Bool)

(declare-fun res!476641 () Bool)

(assert (=> b!713390 (=> (not res!476641) (not e!401171))))

(assert (=> b!713390 (= res!476641 (noDuplicate!1235 newAcc!49))))

(declare-fun b!713391 () Bool)

(assert (=> b!713391 (= e!401171 false)))

(declare-fun lt!318647 () Bool)

(assert (=> b!713391 (= lt!318647 (contains!3988 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713392 () Bool)

(declare-fun res!476638 () Bool)

(assert (=> b!713392 (=> (not res!476638) (not e!401171))))

(assert (=> b!713392 (= res!476638 (not (contains!3988 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713393 () Bool)

(declare-fun res!476639 () Bool)

(assert (=> b!713393 (=> (not res!476639) (not e!401171))))

(assert (=> b!713393 (= res!476639 (not (contains!3988 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713394 () Bool)

(declare-fun res!476642 () Bool)

(assert (=> b!713394 (=> (not res!476642) (not e!401171))))

(declare-fun subseq!432 (List!13445 List!13445) Bool)

(assert (=> b!713394 (= res!476642 (subseq!432 acc!652 newAcc!49))))

(declare-fun b!713395 () Bool)

(declare-fun res!476640 () Bool)

(assert (=> b!713395 (=> (not res!476640) (not e!401171))))

(declare-fun arrayContainsKey!0 (array!40430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713395 (= res!476640 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!713396 () Bool)

(declare-fun res!476646 () Bool)

(assert (=> b!713396 (=> (not res!476646) (not e!401171))))

(declare-fun -!397 (List!13445 (_ BitVec 64)) List!13445)

(assert (=> b!713396 (= res!476646 (= (-!397 newAcc!49 k0!2824) acc!652))))

(assert (= (and start!63372 res!476643) b!713388))

(assert (= (and b!713388 res!476637) b!713390))

(assert (= (and b!713390 res!476641) b!713387))

(assert (= (and b!713387 res!476645) b!713392))

(assert (= (and b!713392 res!476638) b!713395))

(assert (= (and b!713395 res!476640) b!713384))

(assert (= (and b!713384 res!476635) b!713389))

(assert (= (and b!713389 res!476634) b!713385))

(assert (= (and b!713385 res!476644) b!713394))

(assert (= (and b!713394 res!476642) b!713386))

(assert (= (and b!713386 res!476636) b!713396))

(assert (= (and b!713396 res!476646) b!713393))

(assert (= (and b!713393 res!476639) b!713391))

(declare-fun m!670237 () Bool)

(assert (=> b!713392 m!670237))

(declare-fun m!670239 () Bool)

(assert (=> b!713388 m!670239))

(declare-fun m!670241 () Bool)

(assert (=> b!713386 m!670241))

(declare-fun m!670243 () Bool)

(assert (=> start!63372 m!670243))

(declare-fun m!670245 () Bool)

(assert (=> b!713393 m!670245))

(declare-fun m!670247 () Bool)

(assert (=> b!713384 m!670247))

(declare-fun m!670249 () Bool)

(assert (=> b!713391 m!670249))

(declare-fun m!670251 () Bool)

(assert (=> b!713396 m!670251))

(declare-fun m!670253 () Bool)

(assert (=> b!713387 m!670253))

(declare-fun m!670255 () Bool)

(assert (=> b!713394 m!670255))

(declare-fun m!670257 () Bool)

(assert (=> b!713389 m!670257))

(declare-fun m!670259 () Bool)

(assert (=> b!713395 m!670259))

(declare-fun m!670261 () Bool)

(assert (=> b!713390 m!670261))

(declare-fun m!670263 () Bool)

(assert (=> b!713385 m!670263))

(check-sat (not b!713395) (not b!713388) (not b!713391) (not b!713387) (not b!713390) (not start!63372) (not b!713392) (not b!713385) (not b!713389) (not b!713394) (not b!713386) (not b!713384) (not b!713396) (not b!713393))
(check-sat)
