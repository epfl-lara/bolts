; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102690 () Bool)

(assert start!102690)

(declare-fun b!1233933 () Bool)

(declare-fun res!822225 () Bool)

(declare-fun e!699945 () Bool)

(assert (=> b!1233933 (=> (not res!822225) (not e!699945))))

(declare-datatypes ((List!27317 0))(
  ( (Nil!27314) (Cons!27313 (h!28522 (_ BitVec 64)) (t!40787 List!27317)) )
))
(declare-fun acc!823 () List!27317)

(declare-fun contains!7232 (List!27317 (_ BitVec 64)) Bool)

(assert (=> b!1233933 (= res!822225 (not (contains!7232 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233934 () Bool)

(declare-fun res!822226 () Bool)

(assert (=> b!1233934 (=> (not res!822226) (not e!699945))))

(declare-datatypes ((array!79521 0))(
  ( (array!79522 (arr!38366 (Array (_ BitVec 32) (_ BitVec 64))) (size!38903 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79521)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233934 (= res!822226 (validKeyInArray!0 (select (arr!38366 a!3806) from!3184)))))

(declare-fun b!1233935 () Bool)

(declare-fun res!822224 () Bool)

(assert (=> b!1233935 (=> (not res!822224) (not e!699945))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1233935 (= res!822224 (validKeyInArray!0 k!2913))))

(declare-fun b!1233936 () Bool)

(declare-fun res!822233 () Bool)

(assert (=> b!1233936 (=> (not res!822233) (not e!699945))))

(declare-fun arrayNoDuplicates!0 (array!79521 (_ BitVec 32) List!27317) Bool)

(assert (=> b!1233936 (= res!822233 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233937 () Bool)

(declare-fun res!822227 () Bool)

(assert (=> b!1233937 (=> (not res!822227) (not e!699945))))

(assert (=> b!1233937 (= res!822227 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38903 a!3806)) (bvslt from!3184 (size!38903 a!3806))))))

(declare-fun b!1233938 () Bool)

(assert (=> b!1233938 (= e!699945 (not (not (= (select (arr!38366 a!3806) from!3184) k!2913))))))

(declare-fun arrayContainsKey!0 (array!79521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233938 (not (arrayContainsKey!0 a!3806 (select (arr!38366 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40812 0))(
  ( (Unit!40813) )
))
(declare-fun lt!559729 () Unit!40812)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79521 (_ BitVec 32) (_ BitVec 64) List!27317) Unit!40812)

(assert (=> b!1233938 (= lt!559729 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38366 a!3806) from!3184) (Cons!27313 (select (arr!38366 a!3806) from!3184) Nil!27314)))))

(declare-fun e!699946 () Bool)

(assert (=> b!1233938 e!699946))

(declare-fun res!822231 () Bool)

(assert (=> b!1233938 (=> (not res!822231) (not e!699946))))

(assert (=> b!1233938 (= res!822231 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27314))))

(declare-fun lt!559728 () Unit!40812)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79521 List!27317 List!27317 (_ BitVec 32)) Unit!40812)

(assert (=> b!1233938 (= lt!559728 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27314 from!3184))))

(assert (=> b!1233938 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27313 (select (arr!38366 a!3806) from!3184) acc!823))))

(declare-fun b!1233939 () Bool)

(declare-fun res!822230 () Bool)

(assert (=> b!1233939 (=> (not res!822230) (not e!699945))))

(assert (=> b!1233939 (= res!822230 (not (contains!7232 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233940 () Bool)

(declare-fun res!822229 () Bool)

(assert (=> b!1233940 (=> (not res!822229) (not e!699945))))

(declare-fun noDuplicate!1839 (List!27317) Bool)

(assert (=> b!1233940 (= res!822229 (noDuplicate!1839 acc!823))))

(declare-fun b!1233941 () Bool)

(declare-fun res!822232 () Bool)

(assert (=> b!1233941 (=> (not res!822232) (not e!699945))))

(assert (=> b!1233941 (= res!822232 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233942 () Bool)

(assert (=> b!1233942 (= e!699946 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27313 (select (arr!38366 a!3806) from!3184) Nil!27314)))))

(declare-fun res!822228 () Bool)

(assert (=> start!102690 (=> (not res!822228) (not e!699945))))

(assert (=> start!102690 (= res!822228 (bvslt (size!38903 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102690 e!699945))

(declare-fun array_inv!29142 (array!79521) Bool)

(assert (=> start!102690 (array_inv!29142 a!3806)))

(assert (=> start!102690 true))

(assert (= (and start!102690 res!822228) b!1233935))

(assert (= (and b!1233935 res!822224) b!1233937))

(assert (= (and b!1233937 res!822227) b!1233940))

(assert (= (and b!1233940 res!822229) b!1233933))

(assert (= (and b!1233933 res!822225) b!1233939))

(assert (= (and b!1233939 res!822230) b!1233941))

(assert (= (and b!1233941 res!822232) b!1233936))

(assert (= (and b!1233936 res!822233) b!1233934))

(assert (= (and b!1233934 res!822226) b!1233938))

(assert (= (and b!1233938 res!822231) b!1233942))

(declare-fun m!1138043 () Bool)

(assert (=> b!1233936 m!1138043))

(declare-fun m!1138045 () Bool)

(assert (=> b!1233942 m!1138045))

(declare-fun m!1138047 () Bool)

(assert (=> b!1233942 m!1138047))

(declare-fun m!1138049 () Bool)

(assert (=> start!102690 m!1138049))

(declare-fun m!1138051 () Bool)

(assert (=> b!1233938 m!1138051))

(declare-fun m!1138053 () Bool)

(assert (=> b!1233938 m!1138053))

(assert (=> b!1233938 m!1138045))

(declare-fun m!1138055 () Bool)

(assert (=> b!1233938 m!1138055))

(assert (=> b!1233938 m!1138045))

(declare-fun m!1138057 () Bool)

(assert (=> b!1233938 m!1138057))

(assert (=> b!1233938 m!1138045))

(declare-fun m!1138059 () Bool)

(assert (=> b!1233938 m!1138059))

(declare-fun m!1138061 () Bool)

(assert (=> b!1233939 m!1138061))

(assert (=> b!1233934 m!1138045))

(assert (=> b!1233934 m!1138045))

(declare-fun m!1138063 () Bool)

(assert (=> b!1233934 m!1138063))

(declare-fun m!1138065 () Bool)

(assert (=> b!1233933 m!1138065))

(declare-fun m!1138067 () Bool)

(assert (=> b!1233940 m!1138067))

(declare-fun m!1138069 () Bool)

(assert (=> b!1233941 m!1138069))

(declare-fun m!1138071 () Bool)

(assert (=> b!1233935 m!1138071))

(push 1)

(assert (not b!1233942))

(assert (not b!1233941))

(assert (not b!1233939))

(assert (not b!1233934))

(assert (not b!1233935))

(assert (not b!1233940))

