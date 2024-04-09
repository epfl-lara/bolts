; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115832 () Bool)

(assert start!115832)

(declare-fun b!1368981 () Bool)

(declare-fun res!912582 () Bool)

(declare-fun e!775590 () Bool)

(assert (=> b!1368981 (=> (not res!912582) (not e!775590))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1368981 (= res!912582 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368983 () Bool)

(declare-fun res!912583 () Bool)

(declare-fun e!775591 () Bool)

(assert (=> b!1368983 (=> (not res!912583) (not e!775591))))

(declare-datatypes ((List!32117 0))(
  ( (Nil!32114) (Cons!32113 (h!33322 (_ BitVec 64)) (t!46818 List!32117)) )
))
(declare-fun newAcc!98 () List!32117)

(declare-fun acc!866 () List!32117)

(declare-fun subseq!1046 (List!32117 List!32117) Bool)

(assert (=> b!1368983 (= res!912583 (subseq!1046 newAcc!98 acc!866))))

(declare-fun b!1368984 () Bool)

(declare-fun res!912581 () Bool)

(assert (=> b!1368984 (=> (not res!912581) (not e!775591))))

(declare-fun contains!9655 (List!32117 (_ BitVec 64)) Bool)

(assert (=> b!1368984 (= res!912581 (not (contains!9655 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368985 () Bool)

(declare-fun res!912586 () Bool)

(assert (=> b!1368985 (=> (not res!912586) (not e!775591))))

(declare-fun noDuplicate!2534 (List!32117) Bool)

(assert (=> b!1368985 (= res!912586 (noDuplicate!2534 acc!866))))

(declare-fun b!1368986 () Bool)

(assert (=> b!1368986 (= e!775590 (not true))))

(declare-fun lt!602117 () Bool)

(assert (=> b!1368986 (= lt!602117 (noDuplicate!2534 newAcc!98))))

(declare-datatypes ((array!92902 0))(
  ( (array!92903 (arr!44869 (Array (_ BitVec 32) (_ BitVec 64))) (size!45420 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92902)

(declare-fun arrayNoDuplicates!0 (array!92902 (_ BitVec 32) List!32117) Bool)

(assert (=> b!1368986 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-datatypes ((Unit!45173 0))(
  ( (Unit!45174) )
))
(declare-fun lt!602115 () Unit!45173)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92902 List!32117 List!32117 (_ BitVec 32)) Unit!45173)

(assert (=> b!1368986 (= lt!602115 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368987 () Bool)

(declare-fun res!912590 () Bool)

(assert (=> b!1368987 (=> (not res!912590) (not e!775590))))

(assert (=> b!1368987 (= res!912590 (bvslt from!3239 (size!45420 a!3861)))))

(declare-fun b!1368988 () Bool)

(declare-fun res!912591 () Bool)

(assert (=> b!1368988 (=> (not res!912591) (not e!775590))))

(assert (=> b!1368988 (= res!912591 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368989 () Bool)

(declare-fun res!912589 () Bool)

(assert (=> b!1368989 (=> (not res!912589) (not e!775591))))

(assert (=> b!1368989 (= res!912589 (not (contains!9655 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368990 () Bool)

(declare-fun res!912584 () Bool)

(assert (=> b!1368990 (=> (not res!912584) (not e!775591))))

(assert (=> b!1368990 (= res!912584 (not (contains!9655 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912587 () Bool)

(assert (=> start!115832 (=> (not res!912587) (not e!775591))))

(assert (=> start!115832 (= res!912587 (and (bvslt (size!45420 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45420 a!3861))))))

(assert (=> start!115832 e!775591))

(declare-fun array_inv!33814 (array!92902) Bool)

(assert (=> start!115832 (array_inv!33814 a!3861)))

(assert (=> start!115832 true))

(declare-fun b!1368982 () Bool)

(declare-fun res!912580 () Bool)

(assert (=> b!1368982 (=> (not res!912580) (not e!775591))))

(assert (=> b!1368982 (= res!912580 (not (contains!9655 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368991 () Bool)

(declare-fun res!912585 () Bool)

(assert (=> b!1368991 (=> (not res!912585) (not e!775590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368991 (= res!912585 (not (validKeyInArray!0 (select (arr!44869 a!3861) from!3239))))))

(declare-fun b!1368992 () Bool)

(assert (=> b!1368992 (= e!775591 e!775590)))

(declare-fun res!912588 () Bool)

(assert (=> b!1368992 (=> (not res!912588) (not e!775590))))

(assert (=> b!1368992 (= res!912588 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602116 () Unit!45173)

(declare-fun noDuplicateSubseq!233 (List!32117 List!32117) Unit!45173)

(assert (=> b!1368992 (= lt!602116 (noDuplicateSubseq!233 newAcc!98 acc!866))))

(assert (= (and start!115832 res!912587) b!1368985))

(assert (= (and b!1368985 res!912586) b!1368984))

(assert (= (and b!1368984 res!912581) b!1368982))

(assert (= (and b!1368982 res!912580) b!1368990))

(assert (= (and b!1368990 res!912584) b!1368989))

(assert (= (and b!1368989 res!912589) b!1368983))

(assert (= (and b!1368983 res!912583) b!1368992))

(assert (= (and b!1368992 res!912588) b!1368987))

(assert (= (and b!1368987 res!912590) b!1368991))

(assert (= (and b!1368991 res!912585) b!1368981))

(assert (= (and b!1368981 res!912582) b!1368988))

(assert (= (and b!1368988 res!912591) b!1368986))

(declare-fun m!1252861 () Bool)

(assert (=> b!1368983 m!1252861))

(declare-fun m!1252863 () Bool)

(assert (=> b!1368986 m!1252863))

(declare-fun m!1252865 () Bool)

(assert (=> b!1368986 m!1252865))

(declare-fun m!1252867 () Bool)

(assert (=> b!1368986 m!1252867))

(declare-fun m!1252869 () Bool)

(assert (=> b!1368990 m!1252869))

(declare-fun m!1252871 () Bool)

(assert (=> b!1368984 m!1252871))

(declare-fun m!1252873 () Bool)

(assert (=> b!1368982 m!1252873))

(declare-fun m!1252875 () Bool)

(assert (=> b!1368991 m!1252875))

(assert (=> b!1368991 m!1252875))

(declare-fun m!1252877 () Bool)

(assert (=> b!1368991 m!1252877))

(declare-fun m!1252879 () Bool)

(assert (=> b!1368985 m!1252879))

(declare-fun m!1252881 () Bool)

(assert (=> b!1368988 m!1252881))

(declare-fun m!1252883 () Bool)

(assert (=> b!1368989 m!1252883))

(declare-fun m!1252885 () Bool)

(assert (=> b!1368992 m!1252885))

(declare-fun m!1252887 () Bool)

(assert (=> b!1368992 m!1252887))

(declare-fun m!1252889 () Bool)

(assert (=> start!115832 m!1252889))

(push 1)

