; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115920 () Bool)

(assert start!115920)

(declare-fun b!1369807 () Bool)

(declare-fun res!913395 () Bool)

(declare-fun e!775928 () Bool)

(assert (=> b!1369807 (=> (not res!913395) (not e!775928))))

(declare-datatypes ((List!32143 0))(
  ( (Nil!32140) (Cons!32139 (h!33348 (_ BitVec 64)) (t!46844 List!32143)) )
))
(declare-fun newAcc!98 () List!32143)

(declare-fun acc!866 () List!32143)

(declare-fun subseq!1072 (List!32143 List!32143) Bool)

(assert (=> b!1369807 (= res!913395 (subseq!1072 newAcc!98 acc!866))))

(declare-fun b!1369809 () Bool)

(declare-fun res!913392 () Bool)

(assert (=> b!1369809 (=> (not res!913392) (not e!775928))))

(declare-fun contains!9681 (List!32143 (_ BitVec 64)) Bool)

(assert (=> b!1369809 (= res!913392 (not (contains!9681 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369810 () Bool)

(declare-fun res!913389 () Bool)

(declare-fun e!775929 () Bool)

(assert (=> b!1369810 (=> (not res!913389) (not e!775929))))

(declare-datatypes ((array!92957 0))(
  ( (array!92958 (arr!44895 (Array (_ BitVec 32) (_ BitVec 64))) (size!45446 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92957)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369810 (= res!913389 (validKeyInArray!0 (select (arr!44895 a!3861) from!3239)))))

(declare-fun b!1369811 () Bool)

(assert (=> b!1369811 (= e!775929 (bvslt (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1369812 () Bool)

(declare-fun res!913398 () Bool)

(assert (=> b!1369812 (=> (not res!913398) (not e!775928))))

(declare-fun noDuplicate!2560 (List!32143) Bool)

(assert (=> b!1369812 (= res!913398 (noDuplicate!2560 acc!866))))

(declare-fun b!1369813 () Bool)

(declare-fun res!913393 () Bool)

(assert (=> b!1369813 (=> (not res!913393) (not e!775928))))

(assert (=> b!1369813 (= res!913393 (not (contains!9681 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369814 () Bool)

(assert (=> b!1369814 (= e!775928 e!775929)))

(declare-fun res!913390 () Bool)

(assert (=> b!1369814 (=> (not res!913390) (not e!775929))))

(declare-fun arrayNoDuplicates!0 (array!92957 (_ BitVec 32) List!32143) Bool)

(assert (=> b!1369814 (= res!913390 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45225 0))(
  ( (Unit!45226) )
))
(declare-fun lt!602288 () Unit!45225)

(declare-fun noDuplicateSubseq!259 (List!32143 List!32143) Unit!45225)

(assert (=> b!1369814 (= lt!602288 (noDuplicateSubseq!259 newAcc!98 acc!866))))

(declare-fun b!1369815 () Bool)

(declare-fun res!913396 () Bool)

(assert (=> b!1369815 (=> (not res!913396) (not e!775929))))

(assert (=> b!1369815 (= res!913396 (bvslt from!3239 (size!45446 a!3861)))))

(declare-fun res!913388 () Bool)

(assert (=> start!115920 (=> (not res!913388) (not e!775928))))

(assert (=> start!115920 (= res!913388 (and (bvslt (size!45446 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45446 a!3861))))))

(assert (=> start!115920 e!775928))

(declare-fun array_inv!33840 (array!92957) Bool)

(assert (=> start!115920 (array_inv!33840 a!3861)))

(assert (=> start!115920 true))

(declare-fun b!1369808 () Bool)

(declare-fun res!913391 () Bool)

(assert (=> b!1369808 (=> (not res!913391) (not e!775928))))

(assert (=> b!1369808 (= res!913391 (not (contains!9681 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369816 () Bool)

(declare-fun res!913397 () Bool)

(assert (=> b!1369816 (=> (not res!913397) (not e!775929))))

(assert (=> b!1369816 (= res!913397 (not (contains!9681 acc!866 (select (arr!44895 a!3861) from!3239))))))

(declare-fun b!1369817 () Bool)

(declare-fun res!913394 () Bool)

(assert (=> b!1369817 (=> (not res!913394) (not e!775928))))

(assert (=> b!1369817 (= res!913394 (not (contains!9681 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115920 res!913388) b!1369812))

(assert (= (and b!1369812 res!913398) b!1369809))

(assert (= (and b!1369809 res!913392) b!1369817))

(assert (= (and b!1369817 res!913394) b!1369813))

(assert (= (and b!1369813 res!913393) b!1369808))

(assert (= (and b!1369808 res!913391) b!1369807))

(assert (= (and b!1369807 res!913395) b!1369814))

(assert (= (and b!1369814 res!913390) b!1369815))

(assert (= (and b!1369815 res!913396) b!1369810))

(assert (= (and b!1369810 res!913389) b!1369816))

(assert (= (and b!1369816 res!913397) b!1369811))

(declare-fun m!1253533 () Bool)

(assert (=> b!1369816 m!1253533))

(assert (=> b!1369816 m!1253533))

(declare-fun m!1253535 () Bool)

(assert (=> b!1369816 m!1253535))

(declare-fun m!1253537 () Bool)

(assert (=> b!1369812 m!1253537))

(declare-fun m!1253539 () Bool)

(assert (=> b!1369807 m!1253539))

(declare-fun m!1253541 () Bool)

(assert (=> b!1369817 m!1253541))

(declare-fun m!1253543 () Bool)

(assert (=> b!1369808 m!1253543))

(declare-fun m!1253545 () Bool)

(assert (=> b!1369809 m!1253545))

(assert (=> b!1369810 m!1253533))

(assert (=> b!1369810 m!1253533))

(declare-fun m!1253547 () Bool)

(assert (=> b!1369810 m!1253547))

(declare-fun m!1253549 () Bool)

(assert (=> b!1369813 m!1253549))

(declare-fun m!1253551 () Bool)

(assert (=> start!115920 m!1253551))

(declare-fun m!1253553 () Bool)

(assert (=> b!1369814 m!1253553))

(declare-fun m!1253555 () Bool)

(assert (=> b!1369814 m!1253555))

(push 1)

(assert (not b!1369813))

(assert (not b!1369816))

(assert (not b!1369810))

(assert (not b!1369812))

(assert (not b!1369807))

