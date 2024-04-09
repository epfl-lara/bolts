; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102310 () Bool)

(assert start!102310)

(declare-fun b!1230898 () Bool)

(declare-fun res!819467 () Bool)

(declare-fun e!698323 () Bool)

(assert (=> b!1230898 (=> (not res!819467) (not e!698323))))

(declare-datatypes ((List!27261 0))(
  ( (Nil!27258) (Cons!27257 (h!28466 (_ BitVec 64)) (t!40731 List!27261)) )
))
(declare-fun acc!823 () List!27261)

(declare-fun contains!7176 (List!27261 (_ BitVec 64)) Bool)

(assert (=> b!1230898 (= res!819467 (not (contains!7176 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230899 () Bool)

(declare-fun res!819469 () Bool)

(assert (=> b!1230899 (=> (not res!819469) (not e!698323))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230899 (= res!819469 (validKeyInArray!0 k!2913))))

(declare-fun b!1230900 () Bool)

(declare-fun res!819465 () Bool)

(assert (=> b!1230900 (=> (not res!819465) (not e!698323))))

(declare-datatypes ((array!79391 0))(
  ( (array!79392 (arr!38310 (Array (_ BitVec 32) (_ BitVec 64))) (size!38847 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79391)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1230900 (= res!819465 (validKeyInArray!0 (select (arr!38310 a!3806) from!3184)))))

(declare-fun b!1230901 () Bool)

(declare-fun res!819470 () Bool)

(assert (=> b!1230901 (=> (not res!819470) (not e!698323))))

(declare-fun arrayContainsKey!0 (array!79391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230901 (= res!819470 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230902 () Bool)

(declare-fun res!819473 () Bool)

(assert (=> b!1230902 (=> (not res!819473) (not e!698323))))

(declare-fun noDuplicate!1783 (List!27261) Bool)

(assert (=> b!1230902 (= res!819473 (noDuplicate!1783 acc!823))))

(declare-fun b!1230903 () Bool)

(declare-fun res!819468 () Bool)

(assert (=> b!1230903 (=> (not res!819468) (not e!698323))))

(assert (=> b!1230903 (= res!819468 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38847 a!3806)) (bvslt from!3184 (size!38847 a!3806))))))

(declare-fun b!1230905 () Bool)

(declare-fun res!819471 () Bool)

(assert (=> b!1230905 (=> (not res!819471) (not e!698323))))

(declare-fun arrayNoDuplicates!0 (array!79391 (_ BitVec 32) List!27261) Bool)

(assert (=> b!1230905 (= res!819471 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230906 () Bool)

(assert (=> b!1230906 (= e!698323 (not true))))

(assert (=> b!1230906 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27257 (select (arr!38310 a!3806) from!3184) acc!823))))

(declare-fun res!819472 () Bool)

(assert (=> start!102310 (=> (not res!819472) (not e!698323))))

(assert (=> start!102310 (= res!819472 (bvslt (size!38847 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102310 e!698323))

(declare-fun array_inv!29086 (array!79391) Bool)

(assert (=> start!102310 (array_inv!29086 a!3806)))

(assert (=> start!102310 true))

(declare-fun b!1230904 () Bool)

(declare-fun res!819466 () Bool)

(assert (=> b!1230904 (=> (not res!819466) (not e!698323))))

(assert (=> b!1230904 (= res!819466 (not (contains!7176 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102310 res!819472) b!1230899))

(assert (= (and b!1230899 res!819469) b!1230903))

(assert (= (and b!1230903 res!819468) b!1230902))

(assert (= (and b!1230902 res!819473) b!1230904))

(assert (= (and b!1230904 res!819466) b!1230898))

(assert (= (and b!1230898 res!819467) b!1230901))

(assert (= (and b!1230901 res!819470) b!1230905))

(assert (= (and b!1230905 res!819471) b!1230900))

(assert (= (and b!1230900 res!819465) b!1230906))

(declare-fun m!1135241 () Bool)

(assert (=> b!1230902 m!1135241))

(declare-fun m!1135243 () Bool)

(assert (=> b!1230899 m!1135243))

(declare-fun m!1135245 () Bool)

(assert (=> b!1230906 m!1135245))

(declare-fun m!1135247 () Bool)

(assert (=> b!1230906 m!1135247))

(declare-fun m!1135249 () Bool)

(assert (=> b!1230898 m!1135249))

(declare-fun m!1135251 () Bool)

(assert (=> b!1230901 m!1135251))

(assert (=> b!1230900 m!1135245))

(assert (=> b!1230900 m!1135245))

(declare-fun m!1135253 () Bool)

(assert (=> b!1230900 m!1135253))

(declare-fun m!1135255 () Bool)

(assert (=> b!1230905 m!1135255))

(declare-fun m!1135257 () Bool)

(assert (=> start!102310 m!1135257))

(declare-fun m!1135259 () Bool)

(assert (=> b!1230904 m!1135259))

(push 1)

(assert (not b!1230900))

(assert (not start!102310))

(assert (not b!1230904))

(assert (not b!1230905))

(assert (not b!1230898))

(assert (not b!1230906))

(assert (not b!1230902))

(assert (not b!1230901))

(assert (not b!1230899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

