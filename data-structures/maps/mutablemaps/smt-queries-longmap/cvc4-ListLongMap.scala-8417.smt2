; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102482 () Bool)

(assert start!102482)

(declare-fun b!1232157 () Bool)

(declare-fun res!820641 () Bool)

(declare-fun e!698948 () Bool)

(assert (=> b!1232157 (=> (not res!820641) (not e!698948))))

(declare-datatypes ((array!79452 0))(
  ( (array!79453 (arr!38336 (Array (_ BitVec 32) (_ BitVec 64))) (size!38873 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79452)

(declare-datatypes ((List!27287 0))(
  ( (Nil!27284) (Cons!27283 (h!28492 (_ BitVec 64)) (t!40757 List!27287)) )
))
(declare-fun acc!823 () List!27287)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79452 (_ BitVec 32) List!27287) Bool)

(assert (=> b!1232157 (= res!820641 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232158 () Bool)

(declare-fun res!820646 () Bool)

(assert (=> b!1232158 (=> (not res!820646) (not e!698948))))

(declare-fun contains!7202 (List!27287 (_ BitVec 64)) Bool)

(assert (=> b!1232158 (= res!820646 (not (contains!7202 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232159 () Bool)

(declare-fun res!820642 () Bool)

(assert (=> b!1232159 (=> (not res!820642) (not e!698948))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232159 (= res!820642 (validKeyInArray!0 k!2913))))

(declare-fun b!1232160 () Bool)

(declare-fun res!820648 () Bool)

(assert (=> b!1232160 (=> (not res!820648) (not e!698948))))

(assert (=> b!1232160 (= res!820648 (not (contains!7202 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232161 () Bool)

(declare-fun res!820644 () Bool)

(assert (=> b!1232161 (=> (not res!820644) (not e!698948))))

(assert (=> b!1232161 (= res!820644 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38873 a!3806)) (bvslt from!3184 (size!38873 a!3806))))))

(declare-fun b!1232162 () Bool)

(assert (=> b!1232162 (= e!698948 (not true))))

(declare-fun e!698950 () Bool)

(assert (=> b!1232162 e!698950))

(declare-fun res!820645 () Bool)

(assert (=> b!1232162 (=> (not res!820645) (not e!698950))))

(assert (=> b!1232162 (= res!820645 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27284))))

(declare-datatypes ((Unit!40752 0))(
  ( (Unit!40753) )
))
(declare-fun lt!559439 () Unit!40752)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79452 List!27287 List!27287 (_ BitVec 32)) Unit!40752)

(assert (=> b!1232162 (= lt!559439 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27284 from!3184))))

(assert (=> b!1232162 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27283 (select (arr!38336 a!3806) from!3184) acc!823))))

(declare-fun res!820647 () Bool)

(assert (=> start!102482 (=> (not res!820647) (not e!698948))))

(assert (=> start!102482 (= res!820647 (bvslt (size!38873 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102482 e!698948))

(declare-fun array_inv!29112 (array!79452) Bool)

(assert (=> start!102482 (array_inv!29112 a!3806)))

(assert (=> start!102482 true))

(declare-fun b!1232163 () Bool)

(declare-fun res!820640 () Bool)

(assert (=> b!1232163 (=> (not res!820640) (not e!698948))))

(assert (=> b!1232163 (= res!820640 (validKeyInArray!0 (select (arr!38336 a!3806) from!3184)))))

(declare-fun b!1232164 () Bool)

(assert (=> b!1232164 (= e!698950 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27283 (select (arr!38336 a!3806) from!3184) Nil!27284)))))

(declare-fun b!1232165 () Bool)

(declare-fun res!820643 () Bool)

(assert (=> b!1232165 (=> (not res!820643) (not e!698948))))

(declare-fun noDuplicate!1809 (List!27287) Bool)

(assert (=> b!1232165 (= res!820643 (noDuplicate!1809 acc!823))))

(declare-fun b!1232166 () Bool)

(declare-fun res!820649 () Bool)

(assert (=> b!1232166 (=> (not res!820649) (not e!698948))))

(declare-fun arrayContainsKey!0 (array!79452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232166 (= res!820649 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102482 res!820647) b!1232159))

(assert (= (and b!1232159 res!820642) b!1232161))

(assert (= (and b!1232161 res!820644) b!1232165))

(assert (= (and b!1232165 res!820643) b!1232160))

(assert (= (and b!1232160 res!820648) b!1232158))

(assert (= (and b!1232158 res!820646) b!1232166))

(assert (= (and b!1232166 res!820649) b!1232157))

(assert (= (and b!1232157 res!820641) b!1232163))

(assert (= (and b!1232163 res!820640) b!1232162))

(assert (= (and b!1232162 res!820645) b!1232164))

(declare-fun m!1136247 () Bool)

(assert (=> start!102482 m!1136247))

(declare-fun m!1136249 () Bool)

(assert (=> b!1232160 m!1136249))

(declare-fun m!1136251 () Bool)

(assert (=> b!1232159 m!1136251))

(declare-fun m!1136253 () Bool)

(assert (=> b!1232163 m!1136253))

(assert (=> b!1232163 m!1136253))

(declare-fun m!1136255 () Bool)

(assert (=> b!1232163 m!1136255))

(assert (=> b!1232164 m!1136253))

(declare-fun m!1136257 () Bool)

(assert (=> b!1232164 m!1136257))

(declare-fun m!1136259 () Bool)

(assert (=> b!1232157 m!1136259))

(declare-fun m!1136261 () Bool)

(assert (=> b!1232158 m!1136261))

(declare-fun m!1136263 () Bool)

(assert (=> b!1232165 m!1136263))

(declare-fun m!1136265 () Bool)

(assert (=> b!1232166 m!1136265))

(declare-fun m!1136267 () Bool)

(assert (=> b!1232162 m!1136267))

(declare-fun m!1136269 () Bool)

(assert (=> b!1232162 m!1136269))

(assert (=> b!1232162 m!1136253))

(declare-fun m!1136271 () Bool)

(assert (=> b!1232162 m!1136271))

(push 1)

(assert (not b!1232158))

(assert (not b!1232157))

(assert (not b!1232160))

(assert (not b!1232163))

(assert (not b!1232162))

(assert (not b!1232159))

(assert (not b!1232166))

(assert (not b!1232164))

(assert (not b!1232165))

(assert (not start!102482))

(check-sat)

