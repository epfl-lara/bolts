; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115590 () Bool)

(assert start!115590)

(declare-fun b!1366744 () Bool)

(declare-fun res!910415 () Bool)

(declare-fun e!774647 () Bool)

(assert (=> b!1366744 (=> (not res!910415) (not e!774647))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92789 0))(
  ( (array!92790 (arr!44817 (Array (_ BitVec 32) (_ BitVec 64))) (size!45368 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92789)

(assert (=> b!1366744 (= res!910415 (bvslt from!3239 (size!45368 a!3861)))))

(declare-fun b!1366745 () Bool)

(declare-fun res!910424 () Bool)

(assert (=> b!1366745 (=> (not res!910424) (not e!774647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366745 (= res!910424 (validKeyInArray!0 (select (arr!44817 a!3861) from!3239)))))

(declare-fun b!1366746 () Bool)

(declare-fun res!910423 () Bool)

(declare-fun e!774648 () Bool)

(assert (=> b!1366746 (=> (not res!910423) (not e!774648))))

(declare-datatypes ((List!32065 0))(
  ( (Nil!32062) (Cons!32061 (h!33270 (_ BitVec 64)) (t!46766 List!32065)) )
))
(declare-fun acc!866 () List!32065)

(declare-fun contains!9603 (List!32065 (_ BitVec 64)) Bool)

(assert (=> b!1366746 (= res!910423 (not (contains!9603 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!910421 () Bool)

(assert (=> start!115590 (=> (not res!910421) (not e!774648))))

(assert (=> start!115590 (= res!910421 (and (bvslt (size!45368 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45368 a!3861))))))

(assert (=> start!115590 e!774648))

(declare-fun array_inv!33762 (array!92789) Bool)

(assert (=> start!115590 (array_inv!33762 a!3861)))

(assert (=> start!115590 true))

(declare-fun b!1366747 () Bool)

(declare-fun res!910419 () Bool)

(assert (=> b!1366747 (=> (not res!910419) (not e!774648))))

(declare-fun noDuplicate!2482 (List!32065) Bool)

(assert (=> b!1366747 (= res!910419 (noDuplicate!2482 acc!866))))

(declare-fun b!1366748 () Bool)

(declare-fun res!910417 () Bool)

(assert (=> b!1366748 (=> (not res!910417) (not e!774648))))

(assert (=> b!1366748 (= res!910417 (not (contains!9603 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366749 () Bool)

(declare-fun res!910425 () Bool)

(assert (=> b!1366749 (=> (not res!910425) (not e!774648))))

(declare-fun newAcc!98 () List!32065)

(assert (=> b!1366749 (= res!910425 (not (contains!9603 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366750 () Bool)

(declare-fun res!910420 () Bool)

(assert (=> b!1366750 (=> (not res!910420) (not e!774647))))

(assert (=> b!1366750 (= res!910420 (not (contains!9603 acc!866 (select (arr!44817 a!3861) from!3239))))))

(declare-fun b!1366751 () Bool)

(declare-fun res!910416 () Bool)

(assert (=> b!1366751 (=> (not res!910416) (not e!774648))))

(assert (=> b!1366751 (= res!910416 (not (contains!9603 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366752 () Bool)

(declare-fun res!910418 () Bool)

(assert (=> b!1366752 (=> (not res!910418) (not e!774648))))

(declare-fun subseq!994 (List!32065 List!32065) Bool)

(assert (=> b!1366752 (= res!910418 (subseq!994 newAcc!98 acc!866))))

(declare-fun b!1366753 () Bool)

(assert (=> b!1366753 (= e!774648 e!774647)))

(declare-fun res!910422 () Bool)

(assert (=> b!1366753 (=> (not res!910422) (not e!774647))))

(declare-fun arrayNoDuplicates!0 (array!92789 (_ BitVec 32) List!32065) Bool)

(assert (=> b!1366753 (= res!910422 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45069 0))(
  ( (Unit!45070) )
))
(declare-fun lt!601638 () Unit!45069)

(declare-fun noDuplicateSubseq!181 (List!32065 List!32065) Unit!45069)

(assert (=> b!1366753 (= lt!601638 (noDuplicateSubseq!181 newAcc!98 acc!866))))

(declare-fun b!1366754 () Bool)

(assert (=> b!1366754 (= e!774647 (not true))))

(declare-fun lt!601637 () Unit!45069)

(declare-fun lt!601640 () List!32065)

(declare-fun lt!601639 () List!32065)

(assert (=> b!1366754 (= lt!601637 (noDuplicateSubseq!181 lt!601640 lt!601639))))

(assert (=> b!1366754 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601640)))

(declare-fun lt!601636 () Unit!45069)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92789 List!32065 List!32065 (_ BitVec 32)) Unit!45069)

(assert (=> b!1366754 (= lt!601636 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601639 lt!601640 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366754 (= lt!601640 (Cons!32061 (select (arr!44817 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366754 (= lt!601639 (Cons!32061 (select (arr!44817 a!3861) from!3239) acc!866))))

(assert (= (and start!115590 res!910421) b!1366747))

(assert (= (and b!1366747 res!910419) b!1366746))

(assert (= (and b!1366746 res!910423) b!1366748))

(assert (= (and b!1366748 res!910417) b!1366749))

(assert (= (and b!1366749 res!910425) b!1366751))

(assert (= (and b!1366751 res!910416) b!1366752))

(assert (= (and b!1366752 res!910418) b!1366753))

(assert (= (and b!1366753 res!910422) b!1366744))

(assert (= (and b!1366744 res!910415) b!1366745))

(assert (= (and b!1366745 res!910424) b!1366750))

(assert (= (and b!1366750 res!910420) b!1366754))

(declare-fun m!1251055 () Bool)

(assert (=> start!115590 m!1251055))

(declare-fun m!1251057 () Bool)

(assert (=> b!1366748 m!1251057))

(declare-fun m!1251059 () Bool)

(assert (=> b!1366746 m!1251059))

(declare-fun m!1251061 () Bool)

(assert (=> b!1366751 m!1251061))

(declare-fun m!1251063 () Bool)

(assert (=> b!1366747 m!1251063))

(declare-fun m!1251065 () Bool)

(assert (=> b!1366750 m!1251065))

(assert (=> b!1366750 m!1251065))

(declare-fun m!1251067 () Bool)

(assert (=> b!1366750 m!1251067))

(declare-fun m!1251069 () Bool)

(assert (=> b!1366754 m!1251069))

(declare-fun m!1251071 () Bool)

(assert (=> b!1366754 m!1251071))

(declare-fun m!1251073 () Bool)

(assert (=> b!1366754 m!1251073))

(assert (=> b!1366754 m!1251065))

(declare-fun m!1251075 () Bool)

(assert (=> b!1366753 m!1251075))

(declare-fun m!1251077 () Bool)

(assert (=> b!1366753 m!1251077))

(assert (=> b!1366745 m!1251065))

(assert (=> b!1366745 m!1251065))

(declare-fun m!1251079 () Bool)

(assert (=> b!1366745 m!1251079))

(declare-fun m!1251081 () Bool)

(assert (=> b!1366749 m!1251081))

(declare-fun m!1251083 () Bool)

(assert (=> b!1366752 m!1251083))

(push 1)

