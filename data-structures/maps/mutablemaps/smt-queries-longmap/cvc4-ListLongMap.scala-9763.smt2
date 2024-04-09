; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115740 () Bool)

(assert start!115740)

(declare-fun b!1368046 () Bool)

(declare-fun e!775228 () Bool)

(declare-fun e!775227 () Bool)

(assert (=> b!1368046 (= e!775228 e!775227)))

(declare-fun res!911682 () Bool)

(assert (=> b!1368046 (=> (not res!911682) (not e!775227))))

(declare-datatypes ((array!92855 0))(
  ( (array!92856 (arr!44847 (Array (_ BitVec 32) (_ BitVec 64))) (size!45398 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92855)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32095 0))(
  ( (Nil!32092) (Cons!32091 (h!33300 (_ BitVec 64)) (t!46796 List!32095)) )
))
(declare-fun acc!866 () List!32095)

(declare-fun arrayNoDuplicates!0 (array!92855 (_ BitVec 32) List!32095) Bool)

(assert (=> b!1368046 (= res!911682 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45129 0))(
  ( (Unit!45130) )
))
(declare-fun lt!601946 () Unit!45129)

(declare-fun newAcc!98 () List!32095)

(declare-fun noDuplicateSubseq!211 (List!32095 List!32095) Unit!45129)

(assert (=> b!1368046 (= lt!601946 (noDuplicateSubseq!211 newAcc!98 acc!866))))

(declare-fun b!1368047 () Bool)

(declare-fun res!911677 () Bool)

(assert (=> b!1368047 (=> (not res!911677) (not e!775228))))

(declare-fun contains!9633 (List!32095 (_ BitVec 64)) Bool)

(assert (=> b!1368047 (= res!911677 (not (contains!9633 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368048 () Bool)

(assert (=> b!1368048 (= e!775227 false)))

(declare-fun lt!601945 () Bool)

(assert (=> b!1368048 (= lt!601945 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368049 () Bool)

(declare-fun res!911676 () Bool)

(assert (=> b!1368049 (=> (not res!911676) (not e!775228))))

(assert (=> b!1368049 (= res!911676 (not (contains!9633 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!911679 () Bool)

(assert (=> start!115740 (=> (not res!911679) (not e!775228))))

(assert (=> start!115740 (= res!911679 (and (bvslt (size!45398 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45398 a!3861))))))

(assert (=> start!115740 e!775228))

(declare-fun array_inv!33792 (array!92855) Bool)

(assert (=> start!115740 (array_inv!33792 a!3861)))

(assert (=> start!115740 true))

(declare-fun b!1368050 () Bool)

(declare-fun res!911680 () Bool)

(assert (=> b!1368050 (=> (not res!911680) (not e!775228))))

(declare-fun noDuplicate!2512 (List!32095) Bool)

(assert (=> b!1368050 (= res!911680 (noDuplicate!2512 acc!866))))

(declare-fun b!1368051 () Bool)

(declare-fun res!911685 () Bool)

(assert (=> b!1368051 (=> (not res!911685) (not e!775228))))

(assert (=> b!1368051 (= res!911685 (not (contains!9633 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368052 () Bool)

(declare-fun res!911684 () Bool)

(assert (=> b!1368052 (=> (not res!911684) (not e!775227))))

(assert (=> b!1368052 (= res!911684 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368053 () Bool)

(declare-fun res!911675 () Bool)

(assert (=> b!1368053 (=> (not res!911675) (not e!775228))))

(assert (=> b!1368053 (= res!911675 (not (contains!9633 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368054 () Bool)

(declare-fun res!911678 () Bool)

(assert (=> b!1368054 (=> (not res!911678) (not e!775227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368054 (= res!911678 (not (validKeyInArray!0 (select (arr!44847 a!3861) from!3239))))))

(declare-fun b!1368055 () Bool)

(declare-fun res!911681 () Bool)

(assert (=> b!1368055 (=> (not res!911681) (not e!775228))))

(declare-fun subseq!1024 (List!32095 List!32095) Bool)

(assert (=> b!1368055 (= res!911681 (subseq!1024 newAcc!98 acc!866))))

(declare-fun b!1368056 () Bool)

(declare-fun res!911683 () Bool)

(assert (=> b!1368056 (=> (not res!911683) (not e!775227))))

(assert (=> b!1368056 (= res!911683 (bvslt from!3239 (size!45398 a!3861)))))

(assert (= (and start!115740 res!911679) b!1368050))

(assert (= (and b!1368050 res!911680) b!1368049))

(assert (= (and b!1368049 res!911676) b!1368051))

(assert (= (and b!1368051 res!911685) b!1368047))

(assert (= (and b!1368047 res!911677) b!1368053))

(assert (= (and b!1368053 res!911675) b!1368055))

(assert (= (and b!1368055 res!911681) b!1368046))

(assert (= (and b!1368046 res!911682) b!1368056))

(assert (= (and b!1368056 res!911683) b!1368054))

(assert (= (and b!1368054 res!911678) b!1368052))

(assert (= (and b!1368052 res!911684) b!1368048))

(declare-fun m!1252135 () Bool)

(assert (=> b!1368049 m!1252135))

(declare-fun m!1252137 () Bool)

(assert (=> b!1368048 m!1252137))

(declare-fun m!1252139 () Bool)

(assert (=> b!1368046 m!1252139))

(declare-fun m!1252141 () Bool)

(assert (=> b!1368046 m!1252141))

(declare-fun m!1252143 () Bool)

(assert (=> start!115740 m!1252143))

(declare-fun m!1252145 () Bool)

(assert (=> b!1368054 m!1252145))

(assert (=> b!1368054 m!1252145))

(declare-fun m!1252147 () Bool)

(assert (=> b!1368054 m!1252147))

(declare-fun m!1252149 () Bool)

(assert (=> b!1368055 m!1252149))

(declare-fun m!1252151 () Bool)

(assert (=> b!1368050 m!1252151))

(declare-fun m!1252153 () Bool)

(assert (=> b!1368051 m!1252153))

(declare-fun m!1252155 () Bool)

(assert (=> b!1368047 m!1252155))

(declare-fun m!1252157 () Bool)

(assert (=> b!1368053 m!1252157))

(push 1)

(assert (not b!1368049))

