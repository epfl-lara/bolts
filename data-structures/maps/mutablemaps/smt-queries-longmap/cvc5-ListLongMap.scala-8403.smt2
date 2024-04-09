; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102238 () Bool)

(assert start!102238)

(declare-fun b!1230306 () Bool)

(declare-fun res!818898 () Bool)

(declare-fun e!698106 () Bool)

(assert (=> b!1230306 (=> (not res!818898) (not e!698106))))

(declare-datatypes ((array!79352 0))(
  ( (array!79353 (arr!38292 (Array (_ BitVec 32) (_ BitVec 64))) (size!38829 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79352)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230306 (= res!818898 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!818897 () Bool)

(assert (=> start!102238 (=> (not res!818897) (not e!698106))))

(assert (=> start!102238 (= res!818897 (bvslt (size!38829 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102238 e!698106))

(declare-fun array_inv!29068 (array!79352) Bool)

(assert (=> start!102238 (array_inv!29068 a!3806)))

(assert (=> start!102238 true))

(declare-fun b!1230307 () Bool)

(declare-fun res!818899 () Bool)

(assert (=> b!1230307 (=> (not res!818899) (not e!698106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230307 (= res!818899 (validKeyInArray!0 k!2913))))

(declare-fun b!1230308 () Bool)

(declare-fun res!818901 () Bool)

(assert (=> b!1230308 (=> (not res!818901) (not e!698106))))

(assert (=> b!1230308 (= res!818901 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38829 a!3806)) (bvslt from!3184 (size!38829 a!3806))))))

(declare-fun b!1230309 () Bool)

(declare-fun res!818902 () Bool)

(assert (=> b!1230309 (=> (not res!818902) (not e!698106))))

(declare-datatypes ((List!27243 0))(
  ( (Nil!27240) (Cons!27239 (h!28448 (_ BitVec 64)) (t!40713 List!27243)) )
))
(declare-fun acc!823 () List!27243)

(declare-fun noDuplicate!1765 (List!27243) Bool)

(assert (=> b!1230309 (= res!818902 (noDuplicate!1765 acc!823))))

(declare-fun b!1230310 () Bool)

(declare-fun res!818900 () Bool)

(assert (=> b!1230310 (=> (not res!818900) (not e!698106))))

(declare-fun contains!7158 (List!27243 (_ BitVec 64)) Bool)

(assert (=> b!1230310 (= res!818900 (not (contains!7158 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230311 () Bool)

(assert (=> b!1230311 (= e!698106 false)))

(declare-fun lt!559310 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79352 (_ BitVec 32) List!27243) Bool)

(assert (=> b!1230311 (= lt!559310 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230312 () Bool)

(declare-fun res!818903 () Bool)

(assert (=> b!1230312 (=> (not res!818903) (not e!698106))))

(assert (=> b!1230312 (= res!818903 (not (contains!7158 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102238 res!818897) b!1230307))

(assert (= (and b!1230307 res!818899) b!1230308))

(assert (= (and b!1230308 res!818901) b!1230309))

(assert (= (and b!1230309 res!818902) b!1230312))

(assert (= (and b!1230312 res!818903) b!1230310))

(assert (= (and b!1230310 res!818900) b!1230306))

(assert (= (and b!1230306 res!818898) b!1230311))

(declare-fun m!1134815 () Bool)

(assert (=> b!1230306 m!1134815))

(declare-fun m!1134817 () Bool)

(assert (=> b!1230310 m!1134817))

(declare-fun m!1134819 () Bool)

(assert (=> b!1230311 m!1134819))

(declare-fun m!1134821 () Bool)

(assert (=> b!1230307 m!1134821))

(declare-fun m!1134823 () Bool)

(assert (=> b!1230309 m!1134823))

(declare-fun m!1134825 () Bool)

(assert (=> b!1230312 m!1134825))

(declare-fun m!1134827 () Bool)

(assert (=> start!102238 m!1134827))

(push 1)

(assert (not b!1230306))

(assert (not b!1230311))

(assert (not b!1230310))

(assert (not b!1230312))

(assert (not b!1230309))

(assert (not start!102238))

(assert (not b!1230307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

