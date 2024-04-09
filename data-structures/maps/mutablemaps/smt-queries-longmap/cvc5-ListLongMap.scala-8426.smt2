; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102680 () Bool)

(assert start!102680)

(declare-fun b!1233783 () Bool)

(declare-fun res!822079 () Bool)

(declare-fun e!699899 () Bool)

(assert (=> b!1233783 (=> (not res!822079) (not e!699899))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79511 0))(
  ( (array!79512 (arr!38361 (Array (_ BitVec 32) (_ BitVec 64))) (size!38898 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79511)

(assert (=> b!1233783 (= res!822079 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38898 a!3806)) (bvslt from!3184 (size!38898 a!3806))))))

(declare-fun b!1233784 () Bool)

(assert (=> b!1233784 (= e!699899 (not true))))

(declare-fun arrayContainsKey!0 (array!79511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233784 (not (arrayContainsKey!0 a!3806 (select (arr!38361 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40802 0))(
  ( (Unit!40803) )
))
(declare-fun lt!559699 () Unit!40802)

(declare-datatypes ((List!27312 0))(
  ( (Nil!27309) (Cons!27308 (h!28517 (_ BitVec 64)) (t!40782 List!27312)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79511 (_ BitVec 32) (_ BitVec 64) List!27312) Unit!40802)

(assert (=> b!1233784 (= lt!559699 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38361 a!3806) from!3184) (Cons!27308 (select (arr!38361 a!3806) from!3184) Nil!27309)))))

(declare-fun e!699900 () Bool)

(assert (=> b!1233784 e!699900))

(declare-fun res!822074 () Bool)

(assert (=> b!1233784 (=> (not res!822074) (not e!699900))))

(declare-fun arrayNoDuplicates!0 (array!79511 (_ BitVec 32) List!27312) Bool)

(assert (=> b!1233784 (= res!822074 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27309))))

(declare-fun lt!559698 () Unit!40802)

(declare-fun acc!823 () List!27312)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79511 List!27312 List!27312 (_ BitVec 32)) Unit!40802)

(assert (=> b!1233784 (= lt!559698 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27309 from!3184))))

(assert (=> b!1233784 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27308 (select (arr!38361 a!3806) from!3184) acc!823))))

(declare-fun res!822077 () Bool)

(assert (=> start!102680 (=> (not res!822077) (not e!699899))))

(assert (=> start!102680 (= res!822077 (bvslt (size!38898 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102680 e!699899))

(declare-fun array_inv!29137 (array!79511) Bool)

(assert (=> start!102680 (array_inv!29137 a!3806)))

(assert (=> start!102680 true))

(declare-fun b!1233785 () Bool)

(declare-fun res!822082 () Bool)

(assert (=> b!1233785 (=> (not res!822082) (not e!699899))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233785 (= res!822082 (validKeyInArray!0 k!2913))))

(declare-fun b!1233786 () Bool)

(declare-fun res!822076 () Bool)

(assert (=> b!1233786 (=> (not res!822076) (not e!699899))))

(assert (=> b!1233786 (= res!822076 (validKeyInArray!0 (select (arr!38361 a!3806) from!3184)))))

(declare-fun b!1233787 () Bool)

(declare-fun res!822075 () Bool)

(assert (=> b!1233787 (=> (not res!822075) (not e!699899))))

(declare-fun contains!7227 (List!27312 (_ BitVec 64)) Bool)

(assert (=> b!1233787 (= res!822075 (not (contains!7227 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233788 () Bool)

(declare-fun res!822083 () Bool)

(assert (=> b!1233788 (=> (not res!822083) (not e!699899))))

(assert (=> b!1233788 (= res!822083 (not (contains!7227 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233789 () Bool)

(declare-fun res!822081 () Bool)

(assert (=> b!1233789 (=> (not res!822081) (not e!699899))))

(assert (=> b!1233789 (= res!822081 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233790 () Bool)

(declare-fun res!822080 () Bool)

(assert (=> b!1233790 (=> (not res!822080) (not e!699899))))

(assert (=> b!1233790 (= res!822080 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233791 () Bool)

(declare-fun res!822078 () Bool)

(assert (=> b!1233791 (=> (not res!822078) (not e!699899))))

(declare-fun noDuplicate!1834 (List!27312) Bool)

(assert (=> b!1233791 (= res!822078 (noDuplicate!1834 acc!823))))

(declare-fun b!1233792 () Bool)

(assert (=> b!1233792 (= e!699900 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27308 (select (arr!38361 a!3806) from!3184) Nil!27309)))))

(assert (= (and start!102680 res!822077) b!1233785))

(assert (= (and b!1233785 res!822082) b!1233783))

(assert (= (and b!1233783 res!822079) b!1233791))

(assert (= (and b!1233791 res!822078) b!1233787))

(assert (= (and b!1233787 res!822075) b!1233788))

(assert (= (and b!1233788 res!822083) b!1233789))

(assert (= (and b!1233789 res!822081) b!1233790))

(assert (= (and b!1233790 res!822080) b!1233786))

(assert (= (and b!1233786 res!822076) b!1233784))

(assert (= (and b!1233784 res!822074) b!1233792))

(declare-fun m!1137893 () Bool)

(assert (=> b!1233786 m!1137893))

(assert (=> b!1233786 m!1137893))

(declare-fun m!1137895 () Bool)

(assert (=> b!1233786 m!1137895))

(declare-fun m!1137897 () Bool)

(assert (=> b!1233787 m!1137897))

(declare-fun m!1137899 () Bool)

(assert (=> start!102680 m!1137899))

(declare-fun m!1137901 () Bool)

(assert (=> b!1233785 m!1137901))

(declare-fun m!1137903 () Bool)

(assert (=> b!1233790 m!1137903))

(declare-fun m!1137905 () Bool)

(assert (=> b!1233789 m!1137905))

(assert (=> b!1233792 m!1137893))

(declare-fun m!1137907 () Bool)

(assert (=> b!1233792 m!1137907))

(declare-fun m!1137909 () Bool)

(assert (=> b!1233791 m!1137909))

(declare-fun m!1137911 () Bool)

(assert (=> b!1233788 m!1137911))

(declare-fun m!1137913 () Bool)

(assert (=> b!1233784 m!1137913))

(declare-fun m!1137915 () Bool)

(assert (=> b!1233784 m!1137915))

(assert (=> b!1233784 m!1137893))

(declare-fun m!1137917 () Bool)

(assert (=> b!1233784 m!1137917))

(assert (=> b!1233784 m!1137893))

(declare-fun m!1137919 () Bool)

(assert (=> b!1233784 m!1137919))

(assert (=> b!1233784 m!1137893))

(declare-fun m!1137921 () Bool)

(assert (=> b!1233784 m!1137921))

(push 1)

(assert (not b!1233791))

(assert (not b!1233788))

(assert (not start!102680))

(assert (not b!1233785))

(assert (not b!1233790))

(assert (not b!1233786))

(assert (not b!1233784))

(assert (not b!1233789))

(assert (not b!1233787))

(assert (not b!1233792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

