; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63378 () Bool)

(assert start!63378)

(declare-fun b!713501 () Bool)

(declare-fun e!401190 () Bool)

(assert (=> b!713501 (= e!401190 false)))

(declare-fun lt!318656 () Bool)

(declare-datatypes ((List!13448 0))(
  ( (Nil!13445) (Cons!13444 (h!14489 (_ BitVec 64)) (t!19771 List!13448)) )
))
(declare-fun newAcc!49 () List!13448)

(declare-fun contains!3991 (List!13448 (_ BitVec 64)) Bool)

(assert (=> b!713501 (= lt!318656 (contains!3991 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713502 () Bool)

(declare-fun res!476755 () Bool)

(assert (=> b!713502 (=> (not res!476755) (not e!401190))))

(assert (=> b!713502 (= res!476755 (not (contains!3991 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713503 () Bool)

(declare-fun res!476762 () Bool)

(assert (=> b!713503 (=> (not res!476762) (not e!401190))))

(declare-datatypes ((array!40436 0))(
  ( (array!40437 (arr!19354 (Array (_ BitVec 32) (_ BitVec 64))) (size!19766 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40436)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun acc!652 () List!13448)

(declare-fun arrayNoDuplicates!0 (array!40436 (_ BitVec 32) List!13448) Bool)

(assert (=> b!713503 (= res!476762 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713504 () Bool)

(declare-fun res!476753 () Bool)

(assert (=> b!713504 (=> (not res!476753) (not e!401190))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!713504 (= res!476753 (contains!3991 newAcc!49 k0!2824))))

(declare-fun b!713505 () Bool)

(declare-fun res!476758 () Bool)

(assert (=> b!713505 (=> (not res!476758) (not e!401190))))

(declare-fun -!400 (List!13448 (_ BitVec 64)) List!13448)

(assert (=> b!713505 (= res!476758 (= (-!400 newAcc!49 k0!2824) acc!652))))

(declare-fun b!713506 () Bool)

(declare-fun res!476763 () Bool)

(assert (=> b!713506 (=> (not res!476763) (not e!401190))))

(declare-fun noDuplicate!1238 (List!13448) Bool)

(assert (=> b!713506 (= res!476763 (noDuplicate!1238 newAcc!49))))

(declare-fun b!713507 () Bool)

(declare-fun res!476761 () Bool)

(assert (=> b!713507 (=> (not res!476761) (not e!401190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713507 (= res!476761 (validKeyInArray!0 k0!2824))))

(declare-fun b!713508 () Bool)

(declare-fun res!476756 () Bool)

(assert (=> b!713508 (=> (not res!476756) (not e!401190))))

(assert (=> b!713508 (= res!476756 (not (contains!3991 acc!652 k0!2824)))))

(declare-fun b!713509 () Bool)

(declare-fun res!476760 () Bool)

(assert (=> b!713509 (=> (not res!476760) (not e!401190))))

(assert (=> b!713509 (= res!476760 (noDuplicate!1238 acc!652))))

(declare-fun res!476759 () Bool)

(assert (=> start!63378 (=> (not res!476759) (not e!401190))))

(assert (=> start!63378 (= res!476759 (and (bvslt (size!19766 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19766 a!3591))))))

(assert (=> start!63378 e!401190))

(assert (=> start!63378 true))

(declare-fun array_inv!15128 (array!40436) Bool)

(assert (=> start!63378 (array_inv!15128 a!3591)))

(declare-fun b!713510 () Bool)

(declare-fun res!476752 () Bool)

(assert (=> b!713510 (=> (not res!476752) (not e!401190))))

(declare-fun arrayContainsKey!0 (array!40436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713510 (= res!476752 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!713511 () Bool)

(declare-fun res!476751 () Bool)

(assert (=> b!713511 (=> (not res!476751) (not e!401190))))

(assert (=> b!713511 (= res!476751 (not (contains!3991 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713512 () Bool)

(declare-fun res!476757 () Bool)

(assert (=> b!713512 (=> (not res!476757) (not e!401190))))

(assert (=> b!713512 (= res!476757 (not (contains!3991 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713513 () Bool)

(declare-fun res!476754 () Bool)

(assert (=> b!713513 (=> (not res!476754) (not e!401190))))

(declare-fun subseq!435 (List!13448 List!13448) Bool)

(assert (=> b!713513 (= res!476754 (subseq!435 acc!652 newAcc!49))))

(assert (= (and start!63378 res!476759) b!713509))

(assert (= (and b!713509 res!476760) b!713506))

(assert (= (and b!713506 res!476763) b!713511))

(assert (= (and b!713511 res!476751) b!713512))

(assert (= (and b!713512 res!476757) b!713510))

(assert (= (and b!713510 res!476752) b!713508))

(assert (= (and b!713508 res!476756) b!713507))

(assert (= (and b!713507 res!476761) b!713503))

(assert (= (and b!713503 res!476762) b!713513))

(assert (= (and b!713513 res!476754) b!713504))

(assert (= (and b!713504 res!476753) b!713505))

(assert (= (and b!713505 res!476758) b!713502))

(assert (= (and b!713502 res!476755) b!713501))

(declare-fun m!670321 () Bool)

(assert (=> start!63378 m!670321))

(declare-fun m!670323 () Bool)

(assert (=> b!713512 m!670323))

(declare-fun m!670325 () Bool)

(assert (=> b!713506 m!670325))

(declare-fun m!670327 () Bool)

(assert (=> b!713503 m!670327))

(declare-fun m!670329 () Bool)

(assert (=> b!713505 m!670329))

(declare-fun m!670331 () Bool)

(assert (=> b!713511 m!670331))

(declare-fun m!670333 () Bool)

(assert (=> b!713513 m!670333))

(declare-fun m!670335 () Bool)

(assert (=> b!713507 m!670335))

(declare-fun m!670337 () Bool)

(assert (=> b!713501 m!670337))

(declare-fun m!670339 () Bool)

(assert (=> b!713504 m!670339))

(declare-fun m!670341 () Bool)

(assert (=> b!713508 m!670341))

(declare-fun m!670343 () Bool)

(assert (=> b!713510 m!670343))

(declare-fun m!670345 () Bool)

(assert (=> b!713509 m!670345))

(declare-fun m!670347 () Bool)

(assert (=> b!713502 m!670347))

(check-sat (not b!713503) (not b!713513) (not b!713506) (not b!713508) (not b!713512) (not b!713505) (not b!713507) (not b!713511) (not b!713502) (not b!713509) (not b!713501) (not b!713510) (not b!713504) (not start!63378))
