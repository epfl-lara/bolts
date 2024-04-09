; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116312 () Bool)

(assert start!116312)

(declare-fun b!1372631 () Bool)

(declare-fun res!916022 () Bool)

(declare-fun e!777649 () Bool)

(assert (=> b!1372631 (=> (not res!916022) (not e!777649))))

(declare-datatypes ((List!32180 0))(
  ( (Nil!32177) (Cons!32176 (h!33385 (_ BitVec 64)) (t!46881 List!32180)) )
))
(declare-fun newAcc!98 () List!32180)

(declare-fun contains!9718 (List!32180 (_ BitVec 64)) Bool)

(assert (=> b!1372631 (= res!916022 (not (contains!9718 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372632 () Bool)

(declare-fun res!916023 () Bool)

(assert (=> b!1372632 (=> (not res!916023) (not e!777649))))

(declare-fun acc!866 () List!32180)

(declare-fun subseq!1109 (List!32180 List!32180) Bool)

(assert (=> b!1372632 (= res!916023 (subseq!1109 newAcc!98 acc!866))))

(declare-fun b!1372633 () Bool)

(declare-fun res!916025 () Bool)

(assert (=> b!1372633 (=> (not res!916025) (not e!777649))))

(declare-fun noDuplicate!2597 (List!32180) Bool)

(assert (=> b!1372633 (= res!916025 (noDuplicate!2597 acc!866))))

(declare-fun b!1372634 () Bool)

(declare-fun res!916026 () Bool)

(assert (=> b!1372634 (=> (not res!916026) (not e!777649))))

(assert (=> b!1372634 (= res!916026 (not (contains!9718 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372635 () Bool)

(declare-fun res!916024 () Bool)

(assert (=> b!1372635 (=> (not res!916024) (not e!777649))))

(assert (=> b!1372635 (= res!916024 (not (contains!9718 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372636 () Bool)

(assert (=> b!1372636 (= e!777649 false)))

(declare-datatypes ((array!93052 0))(
  ( (array!93053 (arr!44932 (Array (_ BitVec 32) (_ BitVec 64))) (size!45483 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93052)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602854 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93052 (_ BitVec 32) List!32180) Bool)

(assert (=> b!1372636 (= lt!602854 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45299 0))(
  ( (Unit!45300) )
))
(declare-fun lt!602855 () Unit!45299)

(declare-fun noDuplicateSubseq!296 (List!32180 List!32180) Unit!45299)

(assert (=> b!1372636 (= lt!602855 (noDuplicateSubseq!296 newAcc!98 acc!866))))

(declare-fun b!1372637 () Bool)

(declare-fun res!916021 () Bool)

(assert (=> b!1372637 (=> (not res!916021) (not e!777649))))

(assert (=> b!1372637 (= res!916021 (not (contains!9718 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916020 () Bool)

(assert (=> start!116312 (=> (not res!916020) (not e!777649))))

(assert (=> start!116312 (= res!916020 (and (bvslt (size!45483 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45483 a!3861))))))

(assert (=> start!116312 e!777649))

(declare-fun array_inv!33877 (array!93052) Bool)

(assert (=> start!116312 (array_inv!33877 a!3861)))

(assert (=> start!116312 true))

(assert (= (and start!116312 res!916020) b!1372633))

(assert (= (and b!1372633 res!916025) b!1372635))

(assert (= (and b!1372635 res!916024) b!1372634))

(assert (= (and b!1372634 res!916026) b!1372637))

(assert (= (and b!1372637 res!916021) b!1372631))

(assert (= (and b!1372631 res!916022) b!1372632))

(assert (= (and b!1372632 res!916023) b!1372636))

(declare-fun m!1256065 () Bool)

(assert (=> b!1372635 m!1256065))

(declare-fun m!1256067 () Bool)

(assert (=> b!1372633 m!1256067))

(declare-fun m!1256069 () Bool)

(assert (=> b!1372636 m!1256069))

(declare-fun m!1256071 () Bool)

(assert (=> b!1372636 m!1256071))

(declare-fun m!1256073 () Bool)

(assert (=> b!1372637 m!1256073))

(declare-fun m!1256075 () Bool)

(assert (=> b!1372634 m!1256075))

(declare-fun m!1256077 () Bool)

(assert (=> b!1372632 m!1256077))

(declare-fun m!1256079 () Bool)

(assert (=> start!116312 m!1256079))

(declare-fun m!1256081 () Bool)

(assert (=> b!1372631 m!1256081))

(push 1)

(assert (not b!1372635))

(assert (not start!116312))

(assert (not b!1372637))

(assert (not b!1372636))

(assert (not b!1372631))

(assert (not b!1372633))

(assert (not b!1372634))

(assert (not b!1372632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

