; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63390 () Bool)

(assert start!63390)

(declare-fun b!713735 () Bool)

(declare-fun res!476995 () Bool)

(declare-fun e!401225 () Bool)

(assert (=> b!713735 (=> (not res!476995) (not e!401225))))

(declare-datatypes ((List!13454 0))(
  ( (Nil!13451) (Cons!13450 (h!14495 (_ BitVec 64)) (t!19777 List!13454)) )
))
(declare-fun newAcc!49 () List!13454)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13454)

(declare-fun -!406 (List!13454 (_ BitVec 64)) List!13454)

(assert (=> b!713735 (= res!476995 (= (-!406 newAcc!49 k0!2824) acc!652))))

(declare-fun b!713736 () Bool)

(declare-fun res!476993 () Bool)

(assert (=> b!713736 (=> (not res!476993) (not e!401225))))

(declare-fun contains!3997 (List!13454 (_ BitVec 64)) Bool)

(assert (=> b!713736 (= res!476993 (contains!3997 newAcc!49 k0!2824))))

(declare-fun b!713737 () Bool)

(declare-fun res!476994 () Bool)

(assert (=> b!713737 (=> (not res!476994) (not e!401225))))

(declare-fun noDuplicate!1244 (List!13454) Bool)

(assert (=> b!713737 (= res!476994 (noDuplicate!1244 newAcc!49))))

(declare-fun b!713738 () Bool)

(declare-fun res!476990 () Bool)

(assert (=> b!713738 (=> (not res!476990) (not e!401225))))

(assert (=> b!713738 (= res!476990 (not (contains!3997 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!476992 () Bool)

(assert (=> start!63390 (=> (not res!476992) (not e!401225))))

(declare-datatypes ((array!40448 0))(
  ( (array!40449 (arr!19360 (Array (_ BitVec 32) (_ BitVec 64))) (size!19772 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40448)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63390 (= res!476992 (and (bvslt (size!19772 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19772 a!3591))))))

(assert (=> start!63390 e!401225))

(assert (=> start!63390 true))

(declare-fun array_inv!15134 (array!40448) Bool)

(assert (=> start!63390 (array_inv!15134 a!3591)))

(declare-fun b!713739 () Bool)

(declare-fun res!476991 () Bool)

(assert (=> b!713739 (=> (not res!476991) (not e!401225))))

(declare-fun subseq!441 (List!13454 List!13454) Bool)

(assert (=> b!713739 (= res!476991 (subseq!441 acc!652 newAcc!49))))

(declare-fun b!713740 () Bool)

(declare-fun res!476996 () Bool)

(assert (=> b!713740 (=> (not res!476996) (not e!401225))))

(assert (=> b!713740 (= res!476996 (not (contains!3997 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713741 () Bool)

(declare-fun res!476986 () Bool)

(assert (=> b!713741 (=> (not res!476986) (not e!401225))))

(assert (=> b!713741 (= res!476986 (not (contains!3997 acc!652 k0!2824)))))

(declare-fun b!713742 () Bool)

(assert (=> b!713742 (= e!401225 false)))

(declare-fun lt!318674 () Bool)

(assert (=> b!713742 (= lt!318674 (contains!3997 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713743 () Bool)

(declare-fun res!476985 () Bool)

(assert (=> b!713743 (=> (not res!476985) (not e!401225))))

(assert (=> b!713743 (= res!476985 (not (contains!3997 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713744 () Bool)

(declare-fun res!476988 () Bool)

(assert (=> b!713744 (=> (not res!476988) (not e!401225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713744 (= res!476988 (validKeyInArray!0 k0!2824))))

(declare-fun b!713745 () Bool)

(declare-fun res!476987 () Bool)

(assert (=> b!713745 (=> (not res!476987) (not e!401225))))

(declare-fun arrayNoDuplicates!0 (array!40448 (_ BitVec 32) List!13454) Bool)

(assert (=> b!713745 (= res!476987 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713746 () Bool)

(declare-fun res!476997 () Bool)

(assert (=> b!713746 (=> (not res!476997) (not e!401225))))

(assert (=> b!713746 (= res!476997 (noDuplicate!1244 acc!652))))

(declare-fun b!713747 () Bool)

(declare-fun res!476989 () Bool)

(assert (=> b!713747 (=> (not res!476989) (not e!401225))))

(declare-fun arrayContainsKey!0 (array!40448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713747 (= res!476989 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(assert (= (and start!63390 res!476992) b!713746))

(assert (= (and b!713746 res!476997) b!713737))

(assert (= (and b!713737 res!476994) b!713738))

(assert (= (and b!713738 res!476990) b!713743))

(assert (= (and b!713743 res!476985) b!713747))

(assert (= (and b!713747 res!476989) b!713741))

(assert (= (and b!713741 res!476986) b!713744))

(assert (= (and b!713744 res!476988) b!713745))

(assert (= (and b!713745 res!476987) b!713739))

(assert (= (and b!713739 res!476991) b!713736))

(assert (= (and b!713736 res!476993) b!713735))

(assert (= (and b!713735 res!476995) b!713740))

(assert (= (and b!713740 res!476996) b!713742))

(declare-fun m!670489 () Bool)

(assert (=> b!713736 m!670489))

(declare-fun m!670491 () Bool)

(assert (=> b!713745 m!670491))

(declare-fun m!670493 () Bool)

(assert (=> b!713747 m!670493))

(declare-fun m!670495 () Bool)

(assert (=> b!713739 m!670495))

(declare-fun m!670497 () Bool)

(assert (=> start!63390 m!670497))

(declare-fun m!670499 () Bool)

(assert (=> b!713737 m!670499))

(declare-fun m!670501 () Bool)

(assert (=> b!713746 m!670501))

(declare-fun m!670503 () Bool)

(assert (=> b!713744 m!670503))

(declare-fun m!670505 () Bool)

(assert (=> b!713741 m!670505))

(declare-fun m!670507 () Bool)

(assert (=> b!713738 m!670507))

(declare-fun m!670509 () Bool)

(assert (=> b!713743 m!670509))

(declare-fun m!670511 () Bool)

(assert (=> b!713742 m!670511))

(declare-fun m!670513 () Bool)

(assert (=> b!713740 m!670513))

(declare-fun m!670515 () Bool)

(assert (=> b!713735 m!670515))

(check-sat (not b!713747) (not b!713741) (not b!713742) (not b!713736) (not b!713735) (not b!713737) (not b!713740) (not start!63390) (not b!713746) (not b!713739) (not b!713744) (not b!713738) (not b!713743) (not b!713745))
(check-sat)
