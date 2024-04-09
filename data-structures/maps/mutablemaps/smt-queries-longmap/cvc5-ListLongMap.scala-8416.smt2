; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102472 () Bool)

(assert start!102472)

(declare-fun b!1232007 () Bool)

(declare-fun res!820496 () Bool)

(declare-fun e!698905 () Bool)

(assert (=> b!1232007 (=> (not res!820496) (not e!698905))))

(declare-datatypes ((array!79442 0))(
  ( (array!79443 (arr!38331 (Array (_ BitVec 32) (_ BitVec 64))) (size!38868 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79442)

(declare-datatypes ((List!27282 0))(
  ( (Nil!27279) (Cons!27278 (h!28487 (_ BitVec 64)) (t!40752 List!27282)) )
))
(declare-fun acc!823 () List!27282)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79442 (_ BitVec 32) List!27282) Bool)

(assert (=> b!1232007 (= res!820496 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!820492 () Bool)

(assert (=> start!102472 (=> (not res!820492) (not e!698905))))

(assert (=> start!102472 (= res!820492 (bvslt (size!38868 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102472 e!698905))

(declare-fun array_inv!29107 (array!79442) Bool)

(assert (=> start!102472 (array_inv!29107 a!3806)))

(assert (=> start!102472 true))

(declare-fun b!1232008 () Bool)

(declare-fun res!820498 () Bool)

(assert (=> b!1232008 (=> (not res!820498) (not e!698905))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232008 (= res!820498 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232009 () Bool)

(assert (=> b!1232009 (= e!698905 (not true))))

(declare-fun e!698903 () Bool)

(assert (=> b!1232009 e!698903))

(declare-fun res!820493 () Bool)

(assert (=> b!1232009 (=> (not res!820493) (not e!698903))))

(assert (=> b!1232009 (= res!820493 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27279))))

(declare-datatypes ((Unit!40742 0))(
  ( (Unit!40743) )
))
(declare-fun lt!559424 () Unit!40742)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79442 List!27282 List!27282 (_ BitVec 32)) Unit!40742)

(assert (=> b!1232009 (= lt!559424 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27279 from!3184))))

(assert (=> b!1232009 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27278 (select (arr!38331 a!3806) from!3184) acc!823))))

(declare-fun b!1232010 () Bool)

(declare-fun res!820497 () Bool)

(assert (=> b!1232010 (=> (not res!820497) (not e!698905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232010 (= res!820497 (validKeyInArray!0 k!2913))))

(declare-fun b!1232011 () Bool)

(declare-fun res!820499 () Bool)

(assert (=> b!1232011 (=> (not res!820499) (not e!698905))))

(declare-fun contains!7197 (List!27282 (_ BitVec 64)) Bool)

(assert (=> b!1232011 (= res!820499 (not (contains!7197 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232012 () Bool)

(declare-fun res!820491 () Bool)

(assert (=> b!1232012 (=> (not res!820491) (not e!698905))))

(declare-fun noDuplicate!1804 (List!27282) Bool)

(assert (=> b!1232012 (= res!820491 (noDuplicate!1804 acc!823))))

(declare-fun b!1232013 () Bool)

(declare-fun res!820490 () Bool)

(assert (=> b!1232013 (=> (not res!820490) (not e!698905))))

(assert (=> b!1232013 (= res!820490 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38868 a!3806)) (bvslt from!3184 (size!38868 a!3806))))))

(declare-fun b!1232014 () Bool)

(declare-fun res!820495 () Bool)

(assert (=> b!1232014 (=> (not res!820495) (not e!698905))))

(assert (=> b!1232014 (= res!820495 (not (contains!7197 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232015 () Bool)

(declare-fun res!820494 () Bool)

(assert (=> b!1232015 (=> (not res!820494) (not e!698905))))

(assert (=> b!1232015 (= res!820494 (validKeyInArray!0 (select (arr!38331 a!3806) from!3184)))))

(declare-fun b!1232016 () Bool)

(assert (=> b!1232016 (= e!698903 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27278 (select (arr!38331 a!3806) from!3184) Nil!27279)))))

(assert (= (and start!102472 res!820492) b!1232010))

(assert (= (and b!1232010 res!820497) b!1232013))

(assert (= (and b!1232013 res!820490) b!1232012))

(assert (= (and b!1232012 res!820491) b!1232011))

(assert (= (and b!1232011 res!820499) b!1232014))

(assert (= (and b!1232014 res!820495) b!1232008))

(assert (= (and b!1232008 res!820498) b!1232007))

(assert (= (and b!1232007 res!820496) b!1232015))

(assert (= (and b!1232015 res!820494) b!1232009))

(assert (= (and b!1232009 res!820493) b!1232016))

(declare-fun m!1136117 () Bool)

(assert (=> b!1232009 m!1136117))

(declare-fun m!1136119 () Bool)

(assert (=> b!1232009 m!1136119))

(declare-fun m!1136121 () Bool)

(assert (=> b!1232009 m!1136121))

(declare-fun m!1136123 () Bool)

(assert (=> b!1232009 m!1136123))

(declare-fun m!1136125 () Bool)

(assert (=> start!102472 m!1136125))

(declare-fun m!1136127 () Bool)

(assert (=> b!1232007 m!1136127))

(declare-fun m!1136129 () Bool)

(assert (=> b!1232014 m!1136129))

(assert (=> b!1232015 m!1136121))

(assert (=> b!1232015 m!1136121))

(declare-fun m!1136131 () Bool)

(assert (=> b!1232015 m!1136131))

(declare-fun m!1136133 () Bool)

(assert (=> b!1232012 m!1136133))

(declare-fun m!1136135 () Bool)

(assert (=> b!1232010 m!1136135))

(declare-fun m!1136137 () Bool)

(assert (=> b!1232011 m!1136137))

(declare-fun m!1136139 () Bool)

(assert (=> b!1232008 m!1136139))

(assert (=> b!1232016 m!1136121))

(declare-fun m!1136141 () Bool)

(assert (=> b!1232016 m!1136141))

(push 1)

(assert (not start!102472))

(assert (not b!1232015))

(assert (not b!1232008))

(assert (not b!1232014))

(assert (not b!1232010))

(assert (not b!1232009))

(assert (not b!1232007))

(assert (not b!1232016))

(assert (not b!1232011))

(assert (not b!1232012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

