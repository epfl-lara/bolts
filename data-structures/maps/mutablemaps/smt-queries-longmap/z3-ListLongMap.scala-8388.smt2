; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102042 () Bool)

(assert start!102042)

(declare-fun b!1228204 () Bool)

(declare-fun res!816933 () Bool)

(declare-fun e!697173 () Bool)

(assert (=> b!1228204 (=> (not res!816933) (not e!697173))))

(declare-datatypes ((List!27199 0))(
  ( (Nil!27196) (Cons!27195 (h!28404 (_ BitVec 64)) (t!40669 List!27199)) )
))
(declare-fun acc!823 () List!27199)

(declare-fun noDuplicate!1721 (List!27199) Bool)

(assert (=> b!1228204 (= res!816933 (noDuplicate!1721 acc!823))))

(declare-fun res!816940 () Bool)

(assert (=> start!102042 (=> (not res!816940) (not e!697173))))

(declare-datatypes ((array!79258 0))(
  ( (array!79259 (arr!38248 (Array (_ BitVec 32) (_ BitVec 64))) (size!38785 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79258)

(assert (=> start!102042 (= res!816940 (bvslt (size!38785 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102042 e!697173))

(declare-fun array_inv!29024 (array!79258) Bool)

(assert (=> start!102042 (array_inv!29024 a!3806)))

(assert (=> start!102042 true))

(declare-fun b!1228205 () Bool)

(declare-fun res!816939 () Bool)

(assert (=> b!1228205 (=> (not res!816939) (not e!697173))))

(declare-fun contains!7114 (List!27199 (_ BitVec 64)) Bool)

(assert (=> b!1228205 (= res!816939 (not (contains!7114 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228206 () Bool)

(declare-fun res!816934 () Bool)

(assert (=> b!1228206 (=> (not res!816934) (not e!697173))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228206 (= res!816934 (validKeyInArray!0 (select (arr!38248 a!3806) from!3184)))))

(declare-fun b!1228207 () Bool)

(declare-fun res!816937 () Bool)

(assert (=> b!1228207 (=> (not res!816937) (not e!697173))))

(assert (=> b!1228207 (= res!816937 (not (contains!7114 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228208 () Bool)

(declare-fun res!816935 () Bool)

(assert (=> b!1228208 (=> (not res!816935) (not e!697173))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1228208 (= res!816935 (validKeyInArray!0 k0!2913))))

(declare-fun b!1228209 () Bool)

(declare-fun res!816941 () Bool)

(assert (=> b!1228209 (=> (not res!816941) (not e!697173))))

(assert (=> b!1228209 (= res!816941 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38785 a!3806)) (bvslt from!3184 (size!38785 a!3806))))))

(declare-fun b!1228210 () Bool)

(assert (=> b!1228210 (= e!697173 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(declare-fun arrayNoDuplicates!0 (array!79258 (_ BitVec 32) List!27199) Bool)

(assert (=> b!1228210 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27196)))

(declare-datatypes ((Unit!40636 0))(
  ( (Unit!40637) )
))
(declare-fun lt!558920 () Unit!40636)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79258 List!27199 List!27199 (_ BitVec 32)) Unit!40636)

(assert (=> b!1228210 (= lt!558920 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27196 from!3184))))

(assert (=> b!1228210 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27195 (select (arr!38248 a!3806) from!3184) acc!823))))

(declare-fun b!1228211 () Bool)

(declare-fun res!816936 () Bool)

(assert (=> b!1228211 (=> (not res!816936) (not e!697173))))

(assert (=> b!1228211 (= res!816936 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228212 () Bool)

(declare-fun res!816938 () Bool)

(assert (=> b!1228212 (=> (not res!816938) (not e!697173))))

(declare-fun arrayContainsKey!0 (array!79258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228212 (= res!816938 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102042 res!816940) b!1228208))

(assert (= (and b!1228208 res!816935) b!1228209))

(assert (= (and b!1228209 res!816941) b!1228204))

(assert (= (and b!1228204 res!816933) b!1228205))

(assert (= (and b!1228205 res!816939) b!1228207))

(assert (= (and b!1228207 res!816937) b!1228212))

(assert (= (and b!1228212 res!816938) b!1228211))

(assert (= (and b!1228211 res!816936) b!1228206))

(assert (= (and b!1228206 res!816934) b!1228210))

(declare-fun m!1132805 () Bool)

(assert (=> b!1228207 m!1132805))

(declare-fun m!1132807 () Bool)

(assert (=> b!1228206 m!1132807))

(assert (=> b!1228206 m!1132807))

(declare-fun m!1132809 () Bool)

(assert (=> b!1228206 m!1132809))

(declare-fun m!1132811 () Bool)

(assert (=> start!102042 m!1132811))

(declare-fun m!1132813 () Bool)

(assert (=> b!1228211 m!1132813))

(declare-fun m!1132815 () Bool)

(assert (=> b!1228210 m!1132815))

(declare-fun m!1132817 () Bool)

(assert (=> b!1228210 m!1132817))

(assert (=> b!1228210 m!1132807))

(declare-fun m!1132819 () Bool)

(assert (=> b!1228210 m!1132819))

(declare-fun m!1132821 () Bool)

(assert (=> b!1228208 m!1132821))

(declare-fun m!1132823 () Bool)

(assert (=> b!1228212 m!1132823))

(declare-fun m!1132825 () Bool)

(assert (=> b!1228204 m!1132825))

(declare-fun m!1132827 () Bool)

(assert (=> b!1228205 m!1132827))

(check-sat (not b!1228207) (not b!1228208) (not start!102042) (not b!1228205) (not b!1228204) (not b!1228210) (not b!1228212) (not b!1228206) (not b!1228211))
(check-sat)
