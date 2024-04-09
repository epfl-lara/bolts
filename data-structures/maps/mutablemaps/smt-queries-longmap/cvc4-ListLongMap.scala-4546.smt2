; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63374 () Bool)

(assert start!63374)

(declare-fun b!713423 () Bool)

(declare-fun res!476674 () Bool)

(declare-fun e!401178 () Bool)

(assert (=> b!713423 (=> (not res!476674) (not e!401178))))

(declare-datatypes ((List!13446 0))(
  ( (Nil!13443) (Cons!13442 (h!14487 (_ BitVec 64)) (t!19769 List!13446)) )
))
(declare-fun newAcc!49 () List!13446)

(declare-fun contains!3989 (List!13446 (_ BitVec 64)) Bool)

(assert (=> b!713423 (= res!476674 (not (contains!3989 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713424 () Bool)

(declare-fun res!476675 () Bool)

(assert (=> b!713424 (=> (not res!476675) (not e!401178))))

(declare-fun acc!652 () List!13446)

(assert (=> b!713424 (= res!476675 (not (contains!3989 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713425 () Bool)

(declare-fun res!476679 () Bool)

(assert (=> b!713425 (=> (not res!476679) (not e!401178))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!713425 (= res!476679 (contains!3989 newAcc!49 k!2824))))

(declare-fun b!713426 () Bool)

(declare-fun res!476678 () Bool)

(assert (=> b!713426 (=> (not res!476678) (not e!401178))))

(assert (=> b!713426 (= res!476678 (not (contains!3989 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713427 () Bool)

(declare-fun res!476684 () Bool)

(assert (=> b!713427 (=> (not res!476684) (not e!401178))))

(assert (=> b!713427 (= res!476684 (not (contains!3989 acc!652 k!2824)))))

(declare-fun b!713428 () Bool)

(declare-fun res!476682 () Bool)

(assert (=> b!713428 (=> (not res!476682) (not e!401178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713428 (= res!476682 (validKeyInArray!0 k!2824))))

(declare-fun b!713429 () Bool)

(assert (=> b!713429 (= e!401178 false)))

(declare-fun lt!318650 () Bool)

(assert (=> b!713429 (= lt!318650 (contains!3989 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713430 () Bool)

(declare-fun res!476676 () Bool)

(assert (=> b!713430 (=> (not res!476676) (not e!401178))))

(declare-datatypes ((array!40432 0))(
  ( (array!40433 (arr!19352 (Array (_ BitVec 32) (_ BitVec 64))) (size!19764 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40432)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713430 (= res!476676 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713432 () Bool)

(declare-fun res!476680 () Bool)

(assert (=> b!713432 (=> (not res!476680) (not e!401178))))

(declare-fun noDuplicate!1236 (List!13446) Bool)

(assert (=> b!713432 (= res!476680 (noDuplicate!1236 acc!652))))

(declare-fun b!713433 () Bool)

(declare-fun res!476683 () Bool)

(assert (=> b!713433 (=> (not res!476683) (not e!401178))))

(declare-fun subseq!433 (List!13446 List!13446) Bool)

(assert (=> b!713433 (= res!476683 (subseq!433 acc!652 newAcc!49))))

(declare-fun res!476685 () Bool)

(assert (=> start!63374 (=> (not res!476685) (not e!401178))))

(assert (=> start!63374 (= res!476685 (and (bvslt (size!19764 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19764 a!3591))))))

(assert (=> start!63374 e!401178))

(assert (=> start!63374 true))

(declare-fun array_inv!15126 (array!40432) Bool)

(assert (=> start!63374 (array_inv!15126 a!3591)))

(declare-fun b!713431 () Bool)

(declare-fun res!476681 () Bool)

(assert (=> b!713431 (=> (not res!476681) (not e!401178))))

(declare-fun arrayNoDuplicates!0 (array!40432 (_ BitVec 32) List!13446) Bool)

(assert (=> b!713431 (= res!476681 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713434 () Bool)

(declare-fun res!476677 () Bool)

(assert (=> b!713434 (=> (not res!476677) (not e!401178))))

(assert (=> b!713434 (= res!476677 (noDuplicate!1236 newAcc!49))))

(declare-fun b!713435 () Bool)

(declare-fun res!476673 () Bool)

(assert (=> b!713435 (=> (not res!476673) (not e!401178))))

(declare-fun -!398 (List!13446 (_ BitVec 64)) List!13446)

(assert (=> b!713435 (= res!476673 (= (-!398 newAcc!49 k!2824) acc!652))))

(assert (= (and start!63374 res!476685) b!713432))

(assert (= (and b!713432 res!476680) b!713434))

(assert (= (and b!713434 res!476677) b!713426))

(assert (= (and b!713426 res!476678) b!713424))

(assert (= (and b!713424 res!476675) b!713430))

(assert (= (and b!713430 res!476676) b!713427))

(assert (= (and b!713427 res!476684) b!713428))

(assert (= (and b!713428 res!476682) b!713431))

(assert (= (and b!713431 res!476681) b!713433))

(assert (= (and b!713433 res!476683) b!713425))

(assert (= (and b!713425 res!476679) b!713435))

(assert (= (and b!713435 res!476673) b!713423))

(assert (= (and b!713423 res!476674) b!713429))

(declare-fun m!670265 () Bool)

(assert (=> b!713423 m!670265))

(declare-fun m!670267 () Bool)

(assert (=> b!713429 m!670267))

(declare-fun m!670269 () Bool)

(assert (=> b!713424 m!670269))

(declare-fun m!670271 () Bool)

(assert (=> start!63374 m!670271))

(declare-fun m!670273 () Bool)

(assert (=> b!713427 m!670273))

(declare-fun m!670275 () Bool)

(assert (=> b!713432 m!670275))

(declare-fun m!670277 () Bool)

(assert (=> b!713428 m!670277))

(declare-fun m!670279 () Bool)

(assert (=> b!713431 m!670279))

(declare-fun m!670281 () Bool)

(assert (=> b!713426 m!670281))

(declare-fun m!670283 () Bool)

(assert (=> b!713430 m!670283))

(declare-fun m!670285 () Bool)

(assert (=> b!713435 m!670285))

(declare-fun m!670287 () Bool)

(assert (=> b!713425 m!670287))

(declare-fun m!670289 () Bool)

(assert (=> b!713434 m!670289))

(declare-fun m!670291 () Bool)

(assert (=> b!713433 m!670291))

(push 1)

(assert (not b!713432))

(assert (not b!713428))

(assert (not b!713423))

(assert (not b!713427))

(assert (not b!713434))

(assert (not b!713435))

(assert (not b!713424))

(assert (not b!713425))

(assert (not b!713430))

(assert (not start!63374))

(assert (not b!713426))

(assert (not b!713429))

(assert (not b!713433))

(assert (not b!713431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

