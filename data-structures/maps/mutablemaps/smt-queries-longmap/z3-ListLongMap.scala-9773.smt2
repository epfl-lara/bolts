; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115846 () Bool)

(assert start!115846)

(declare-fun b!1369163 () Bool)

(declare-fun e!775639 () Bool)

(assert (=> b!1369163 (= e!775639 false)))

(declare-datatypes ((array!92916 0))(
  ( (array!92917 (arr!44876 (Array (_ BitVec 32) (_ BitVec 64))) (size!45427 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92916)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602165 () Bool)

(declare-datatypes ((List!32124 0))(
  ( (Nil!32121) (Cons!32120 (h!33329 (_ BitVec 64)) (t!46825 List!32124)) )
))
(declare-fun acc!866 () List!32124)

(declare-fun arrayNoDuplicates!0 (array!92916 (_ BitVec 32) List!32124) Bool)

(assert (=> b!1369163 (= lt!602165 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45187 0))(
  ( (Unit!45188) )
))
(declare-fun lt!602164 () Unit!45187)

(declare-fun newAcc!98 () List!32124)

(declare-fun noDuplicateSubseq!240 (List!32124 List!32124) Unit!45187)

(assert (=> b!1369163 (= lt!602164 (noDuplicateSubseq!240 newAcc!98 acc!866))))

(declare-fun b!1369164 () Bool)

(declare-fun res!912765 () Bool)

(assert (=> b!1369164 (=> (not res!912765) (not e!775639))))

(declare-fun contains!9662 (List!32124 (_ BitVec 64)) Bool)

(assert (=> b!1369164 (= res!912765 (not (contains!9662 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369165 () Bool)

(declare-fun res!912762 () Bool)

(assert (=> b!1369165 (=> (not res!912762) (not e!775639))))

(assert (=> b!1369165 (= res!912762 (not (contains!9662 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369166 () Bool)

(declare-fun res!912768 () Bool)

(assert (=> b!1369166 (=> (not res!912768) (not e!775639))))

(declare-fun subseq!1053 (List!32124 List!32124) Bool)

(assert (=> b!1369166 (= res!912768 (subseq!1053 newAcc!98 acc!866))))

(declare-fun b!1369168 () Bool)

(declare-fun res!912766 () Bool)

(assert (=> b!1369168 (=> (not res!912766) (not e!775639))))

(assert (=> b!1369168 (= res!912766 (not (contains!9662 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369169 () Bool)

(declare-fun res!912763 () Bool)

(assert (=> b!1369169 (=> (not res!912763) (not e!775639))))

(assert (=> b!1369169 (= res!912763 (not (contains!9662 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912764 () Bool)

(assert (=> start!115846 (=> (not res!912764) (not e!775639))))

(assert (=> start!115846 (= res!912764 (and (bvslt (size!45427 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45427 a!3861))))))

(assert (=> start!115846 e!775639))

(declare-fun array_inv!33821 (array!92916) Bool)

(assert (=> start!115846 (array_inv!33821 a!3861)))

(assert (=> start!115846 true))

(declare-fun b!1369167 () Bool)

(declare-fun res!912767 () Bool)

(assert (=> b!1369167 (=> (not res!912767) (not e!775639))))

(declare-fun noDuplicate!2541 (List!32124) Bool)

(assert (=> b!1369167 (= res!912767 (noDuplicate!2541 acc!866))))

(assert (= (and start!115846 res!912764) b!1369167))

(assert (= (and b!1369167 res!912767) b!1369164))

(assert (= (and b!1369164 res!912765) b!1369168))

(assert (= (and b!1369168 res!912766) b!1369169))

(assert (= (and b!1369169 res!912763) b!1369165))

(assert (= (and b!1369165 res!912762) b!1369166))

(assert (= (and b!1369166 res!912768) b!1369163))

(declare-fun m!1253023 () Bool)

(assert (=> start!115846 m!1253023))

(declare-fun m!1253025 () Bool)

(assert (=> b!1369163 m!1253025))

(declare-fun m!1253027 () Bool)

(assert (=> b!1369163 m!1253027))

(declare-fun m!1253029 () Bool)

(assert (=> b!1369167 m!1253029))

(declare-fun m!1253031 () Bool)

(assert (=> b!1369168 m!1253031))

(declare-fun m!1253033 () Bool)

(assert (=> b!1369165 m!1253033))

(declare-fun m!1253035 () Bool)

(assert (=> b!1369166 m!1253035))

(declare-fun m!1253037 () Bool)

(assert (=> b!1369164 m!1253037))

(declare-fun m!1253039 () Bool)

(assert (=> b!1369169 m!1253039))

(check-sat (not b!1369166) (not b!1369165) (not b!1369168) (not b!1369167) (not b!1369163) (not b!1369164) (not b!1369169) (not start!115846))
(check-sat)
