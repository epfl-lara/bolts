; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63360 () Bool)

(assert start!63360)

(declare-fun b!713123 () Bool)

(declare-fun res!476373 () Bool)

(declare-fun e!401135 () Bool)

(assert (=> b!713123 (=> (not res!476373) (not e!401135))))

(declare-datatypes ((List!13439 0))(
  ( (Nil!13436) (Cons!13435 (h!14480 (_ BitVec 64)) (t!19762 List!13439)) )
))
(declare-fun acc!652 () List!13439)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3982 (List!13439 (_ BitVec 64)) Bool)

(assert (=> b!713123 (= res!476373 (not (contains!3982 acc!652 k0!2824)))))

(declare-fun b!713124 () Bool)

(declare-fun res!476380 () Bool)

(assert (=> b!713124 (=> (not res!476380) (not e!401135))))

(assert (=> b!713124 (= res!476380 (not (contains!3982 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713125 () Bool)

(declare-fun res!476382 () Bool)

(assert (=> b!713125 (=> (not res!476382) (not e!401135))))

(declare-fun noDuplicate!1229 (List!13439) Bool)

(assert (=> b!713125 (= res!476382 (noDuplicate!1229 acc!652))))

(declare-fun b!713127 () Bool)

(declare-fun res!476379 () Bool)

(assert (=> b!713127 (=> (not res!476379) (not e!401135))))

(declare-fun newAcc!49 () List!13439)

(assert (=> b!713127 (= res!476379 (not (contains!3982 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713128 () Bool)

(declare-fun res!476375 () Bool)

(assert (=> b!713128 (=> (not res!476375) (not e!401135))))

(assert (=> b!713128 (= res!476375 (not (contains!3982 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713129 () Bool)

(declare-fun res!476383 () Bool)

(assert (=> b!713129 (=> (not res!476383) (not e!401135))))

(declare-fun -!391 (List!13439 (_ BitVec 64)) List!13439)

(assert (=> b!713129 (= res!476383 (= (-!391 newAcc!49 k0!2824) acc!652))))

(declare-fun b!713130 () Bool)

(declare-fun res!476384 () Bool)

(assert (=> b!713130 (=> (not res!476384) (not e!401135))))

(declare-fun subseq!426 (List!13439 List!13439) Bool)

(assert (=> b!713130 (= res!476384 (subseq!426 acc!652 newAcc!49))))

(declare-fun b!713131 () Bool)

(declare-fun res!476374 () Bool)

(assert (=> b!713131 (=> (not res!476374) (not e!401135))))

(declare-datatypes ((array!40418 0))(
  ( (array!40419 (arr!19345 (Array (_ BitVec 32) (_ BitVec 64))) (size!19757 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40418)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713131 (= res!476374 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!713132 () Bool)

(assert (=> b!713132 (= e!401135 false)))

(declare-fun lt!318638 () Bool)

(assert (=> b!713132 (= lt!318638 (contains!3982 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713133 () Bool)

(declare-fun res!476378 () Bool)

(assert (=> b!713133 (=> (not res!476378) (not e!401135))))

(declare-fun arrayNoDuplicates!0 (array!40418 (_ BitVec 32) List!13439) Bool)

(assert (=> b!713133 (= res!476378 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713126 () Bool)

(declare-fun res!476376 () Bool)

(assert (=> b!713126 (=> (not res!476376) (not e!401135))))

(assert (=> b!713126 (= res!476376 (noDuplicate!1229 newAcc!49))))

(declare-fun res!476385 () Bool)

(assert (=> start!63360 (=> (not res!476385) (not e!401135))))

(assert (=> start!63360 (= res!476385 (and (bvslt (size!19757 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19757 a!3591))))))

(assert (=> start!63360 e!401135))

(assert (=> start!63360 true))

(declare-fun array_inv!15119 (array!40418) Bool)

(assert (=> start!63360 (array_inv!15119 a!3591)))

(declare-fun b!713134 () Bool)

(declare-fun res!476381 () Bool)

(assert (=> b!713134 (=> (not res!476381) (not e!401135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713134 (= res!476381 (validKeyInArray!0 k0!2824))))

(declare-fun b!713135 () Bool)

(declare-fun res!476377 () Bool)

(assert (=> b!713135 (=> (not res!476377) (not e!401135))))

(assert (=> b!713135 (= res!476377 (contains!3982 newAcc!49 k0!2824))))

(assert (= (and start!63360 res!476385) b!713125))

(assert (= (and b!713125 res!476382) b!713126))

(assert (= (and b!713126 res!476376) b!713124))

(assert (= (and b!713124 res!476380) b!713128))

(assert (= (and b!713128 res!476375) b!713131))

(assert (= (and b!713131 res!476374) b!713123))

(assert (= (and b!713123 res!476373) b!713134))

(assert (= (and b!713134 res!476381) b!713133))

(assert (= (and b!713133 res!476378) b!713130))

(assert (= (and b!713130 res!476384) b!713135))

(assert (= (and b!713135 res!476377) b!713129))

(assert (= (and b!713129 res!476383) b!713127))

(assert (= (and b!713127 res!476379) b!713132))

(declare-fun m!670057 () Bool)

(assert (=> b!713130 m!670057))

(declare-fun m!670059 () Bool)

(assert (=> b!713132 m!670059))

(declare-fun m!670061 () Bool)

(assert (=> b!713127 m!670061))

(declare-fun m!670063 () Bool)

(assert (=> b!713134 m!670063))

(declare-fun m!670065 () Bool)

(assert (=> start!63360 m!670065))

(declare-fun m!670067 () Bool)

(assert (=> b!713123 m!670067))

(declare-fun m!670069 () Bool)

(assert (=> b!713125 m!670069))

(declare-fun m!670071 () Bool)

(assert (=> b!713128 m!670071))

(declare-fun m!670073 () Bool)

(assert (=> b!713131 m!670073))

(declare-fun m!670075 () Bool)

(assert (=> b!713129 m!670075))

(declare-fun m!670077 () Bool)

(assert (=> b!713126 m!670077))

(declare-fun m!670079 () Bool)

(assert (=> b!713124 m!670079))

(declare-fun m!670081 () Bool)

(assert (=> b!713135 m!670081))

(declare-fun m!670083 () Bool)

(assert (=> b!713133 m!670083))

(check-sat (not b!713124) (not b!713131) (not b!713133) (not b!713130) (not b!713126) (not b!713127) (not b!713132) (not start!63360) (not b!713135) (not b!713123) (not b!713128) (not b!713134) (not b!713125) (not b!713129))
(check-sat)
