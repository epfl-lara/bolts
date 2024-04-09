; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102674 () Bool)

(assert start!102674)

(declare-fun b!1233693 () Bool)

(declare-fun res!821990 () Bool)

(declare-fun e!699873 () Bool)

(assert (=> b!1233693 (=> (not res!821990) (not e!699873))))

(declare-datatypes ((array!79505 0))(
  ( (array!79506 (arr!38358 (Array (_ BitVec 32) (_ BitVec 64))) (size!38895 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79505)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233693 (= res!821990 (validKeyInArray!0 (select (arr!38358 a!3806) from!3184)))))

(declare-fun b!1233694 () Bool)

(declare-fun res!821988 () Bool)

(assert (=> b!1233694 (=> (not res!821988) (not e!699873))))

(assert (=> b!1233694 (= res!821988 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38895 a!3806)) (bvslt from!3184 (size!38895 a!3806))))))

(declare-fun res!821991 () Bool)

(assert (=> start!102674 (=> (not res!821991) (not e!699873))))

(assert (=> start!102674 (= res!821991 (bvslt (size!38895 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102674 e!699873))

(declare-fun array_inv!29134 (array!79505) Bool)

(assert (=> start!102674 (array_inv!29134 a!3806)))

(assert (=> start!102674 true))

(declare-fun b!1233695 () Bool)

(declare-fun e!699874 () Bool)

(declare-datatypes ((List!27309 0))(
  ( (Nil!27306) (Cons!27305 (h!28514 (_ BitVec 64)) (t!40779 List!27309)) )
))
(declare-fun arrayNoDuplicates!0 (array!79505 (_ BitVec 32) List!27309) Bool)

(assert (=> b!1233695 (= e!699874 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27305 (select (arr!38358 a!3806) from!3184) Nil!27306)))))

(declare-fun b!1233696 () Bool)

(declare-fun res!821984 () Bool)

(assert (=> b!1233696 (=> (not res!821984) (not e!699873))))

(declare-fun acc!823 () List!27309)

(declare-fun contains!7224 (List!27309 (_ BitVec 64)) Bool)

(assert (=> b!1233696 (= res!821984 (not (contains!7224 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233697 () Bool)

(declare-fun res!821986 () Bool)

(assert (=> b!1233697 (=> (not res!821986) (not e!699873))))

(assert (=> b!1233697 (= res!821986 (not (contains!7224 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233698 () Bool)

(declare-fun res!821993 () Bool)

(assert (=> b!1233698 (=> (not res!821993) (not e!699873))))

(assert (=> b!1233698 (= res!821993 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233699 () Bool)

(assert (=> b!1233699 (= e!699873 (not true))))

(declare-fun arrayContainsKey!0 (array!79505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233699 (not (arrayContainsKey!0 a!3806 (select (arr!38358 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40796 0))(
  ( (Unit!40797) )
))
(declare-fun lt!559681 () Unit!40796)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79505 (_ BitVec 32) (_ BitVec 64) List!27309) Unit!40796)

(assert (=> b!1233699 (= lt!559681 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38358 a!3806) from!3184) (Cons!27305 (select (arr!38358 a!3806) from!3184) Nil!27306)))))

(assert (=> b!1233699 e!699874))

(declare-fun res!821985 () Bool)

(assert (=> b!1233699 (=> (not res!821985) (not e!699874))))

(assert (=> b!1233699 (= res!821985 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27306))))

(declare-fun lt!559680 () Unit!40796)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79505 List!27309 List!27309 (_ BitVec 32)) Unit!40796)

(assert (=> b!1233699 (= lt!559680 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27306 from!3184))))

(assert (=> b!1233699 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27305 (select (arr!38358 a!3806) from!3184) acc!823))))

(declare-fun b!1233700 () Bool)

(declare-fun res!821987 () Bool)

(assert (=> b!1233700 (=> (not res!821987) (not e!699873))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1233700 (= res!821987 (validKeyInArray!0 k!2913))))

(declare-fun b!1233701 () Bool)

(declare-fun res!821989 () Bool)

(assert (=> b!1233701 (=> (not res!821989) (not e!699873))))

(assert (=> b!1233701 (= res!821989 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233702 () Bool)

(declare-fun res!821992 () Bool)

(assert (=> b!1233702 (=> (not res!821992) (not e!699873))))

(declare-fun noDuplicate!1831 (List!27309) Bool)

(assert (=> b!1233702 (= res!821992 (noDuplicate!1831 acc!823))))

(assert (= (and start!102674 res!821991) b!1233700))

(assert (= (and b!1233700 res!821987) b!1233694))

(assert (= (and b!1233694 res!821988) b!1233702))

(assert (= (and b!1233702 res!821992) b!1233696))

(assert (= (and b!1233696 res!821984) b!1233697))

(assert (= (and b!1233697 res!821986) b!1233701))

(assert (= (and b!1233701 res!821989) b!1233698))

(assert (= (and b!1233698 res!821993) b!1233693))

(assert (= (and b!1233693 res!821990) b!1233699))

(assert (= (and b!1233699 res!821985) b!1233695))

(declare-fun m!1137803 () Bool)

(assert (=> start!102674 m!1137803))

(declare-fun m!1137805 () Bool)

(assert (=> b!1233701 m!1137805))

(declare-fun m!1137807 () Bool)

(assert (=> b!1233697 m!1137807))

(declare-fun m!1137809 () Bool)

(assert (=> b!1233702 m!1137809))

(declare-fun m!1137811 () Bool)

(assert (=> b!1233696 m!1137811))

(declare-fun m!1137813 () Bool)

(assert (=> b!1233695 m!1137813))

(declare-fun m!1137815 () Bool)

(assert (=> b!1233695 m!1137815))

(declare-fun m!1137817 () Bool)

(assert (=> b!1233700 m!1137817))

(assert (=> b!1233693 m!1137813))

(assert (=> b!1233693 m!1137813))

(declare-fun m!1137819 () Bool)

(assert (=> b!1233693 m!1137819))

(declare-fun m!1137821 () Bool)

(assert (=> b!1233698 m!1137821))

(declare-fun m!1137823 () Bool)

(assert (=> b!1233699 m!1137823))

(declare-fun m!1137825 () Bool)

(assert (=> b!1233699 m!1137825))

(assert (=> b!1233699 m!1137813))

(declare-fun m!1137827 () Bool)

(assert (=> b!1233699 m!1137827))

(assert (=> b!1233699 m!1137813))

(declare-fun m!1137829 () Bool)

(assert (=> b!1233699 m!1137829))

(assert (=> b!1233699 m!1137813))

(declare-fun m!1137831 () Bool)

(assert (=> b!1233699 m!1137831))

(push 1)

(assert (not b!1233693))

(assert (not b!1233697))

(assert (not start!102674))

(assert (not b!1233698))

(assert (not b!1233700))

(assert (not b!1233702))

(assert (not b!1233695))

(assert (not b!1233699))

(assert (not b!1233701))

(assert (not b!1233696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

