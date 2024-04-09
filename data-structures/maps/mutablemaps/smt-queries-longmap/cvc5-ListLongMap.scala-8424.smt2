; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102668 () Bool)

(assert start!102668)

(declare-fun b!1233603 () Bool)

(declare-fun res!821894 () Bool)

(declare-fun e!699845 () Bool)

(assert (=> b!1233603 (=> (not res!821894) (not e!699845))))

(declare-datatypes ((array!79499 0))(
  ( (array!79500 (arr!38355 (Array (_ BitVec 32) (_ BitVec 64))) (size!38892 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79499)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233603 (= res!821894 (validKeyInArray!0 (select (arr!38355 a!3806) from!3184)))))

(declare-fun b!1233604 () Bool)

(declare-fun e!699847 () Bool)

(declare-datatypes ((List!27306 0))(
  ( (Nil!27303) (Cons!27302 (h!28511 (_ BitVec 64)) (t!40776 List!27306)) )
))
(declare-fun arrayNoDuplicates!0 (array!79499 (_ BitVec 32) List!27306) Bool)

(assert (=> b!1233604 (= e!699847 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27302 (select (arr!38355 a!3806) from!3184) Nil!27303)))))

(declare-fun b!1233605 () Bool)

(declare-fun res!821895 () Bool)

(assert (=> b!1233605 (=> (not res!821895) (not e!699845))))

(declare-fun acc!823 () List!27306)

(declare-fun contains!7221 (List!27306 (_ BitVec 64)) Bool)

(assert (=> b!1233605 (= res!821895 (not (contains!7221 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233606 () Bool)

(declare-fun res!821900 () Bool)

(assert (=> b!1233606 (=> (not res!821900) (not e!699845))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233606 (= res!821900 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233608 () Bool)

(declare-fun res!821903 () Bool)

(assert (=> b!1233608 (=> (not res!821903) (not e!699845))))

(declare-fun noDuplicate!1828 (List!27306) Bool)

(assert (=> b!1233608 (= res!821903 (noDuplicate!1828 acc!823))))

(declare-fun b!1233609 () Bool)

(assert (=> b!1233609 (= e!699845 (not true))))

(assert (=> b!1233609 (not (arrayContainsKey!0 a!3806 (select (arr!38355 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40790 0))(
  ( (Unit!40791) )
))
(declare-fun lt!559662 () Unit!40790)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79499 (_ BitVec 32) (_ BitVec 64) List!27306) Unit!40790)

(assert (=> b!1233609 (= lt!559662 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38355 a!3806) from!3184) (Cons!27302 (select (arr!38355 a!3806) from!3184) Nil!27303)))))

(assert (=> b!1233609 e!699847))

(declare-fun res!821902 () Bool)

(assert (=> b!1233609 (=> (not res!821902) (not e!699847))))

(assert (=> b!1233609 (= res!821902 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27303))))

(declare-fun lt!559663 () Unit!40790)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79499 List!27306 List!27306 (_ BitVec 32)) Unit!40790)

(assert (=> b!1233609 (= lt!559663 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27303 from!3184))))

(assert (=> b!1233609 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27302 (select (arr!38355 a!3806) from!3184) acc!823))))

(declare-fun b!1233610 () Bool)

(declare-fun res!821897 () Bool)

(assert (=> b!1233610 (=> (not res!821897) (not e!699845))))

(assert (=> b!1233610 (= res!821897 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38892 a!3806)) (bvslt from!3184 (size!38892 a!3806))))))

(declare-fun b!1233611 () Bool)

(declare-fun res!821899 () Bool)

(assert (=> b!1233611 (=> (not res!821899) (not e!699845))))

(assert (=> b!1233611 (= res!821899 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233612 () Bool)

(declare-fun res!821898 () Bool)

(assert (=> b!1233612 (=> (not res!821898) (not e!699845))))

(assert (=> b!1233612 (= res!821898 (not (contains!7221 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233607 () Bool)

(declare-fun res!821901 () Bool)

(assert (=> b!1233607 (=> (not res!821901) (not e!699845))))

(assert (=> b!1233607 (= res!821901 (validKeyInArray!0 k!2913))))

(declare-fun res!821896 () Bool)

(assert (=> start!102668 (=> (not res!821896) (not e!699845))))

(assert (=> start!102668 (= res!821896 (bvslt (size!38892 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102668 e!699845))

(declare-fun array_inv!29131 (array!79499) Bool)

(assert (=> start!102668 (array_inv!29131 a!3806)))

(assert (=> start!102668 true))

(assert (= (and start!102668 res!821896) b!1233607))

(assert (= (and b!1233607 res!821901) b!1233610))

(assert (= (and b!1233610 res!821897) b!1233608))

(assert (= (and b!1233608 res!821903) b!1233605))

(assert (= (and b!1233605 res!821895) b!1233612))

(assert (= (and b!1233612 res!821898) b!1233606))

(assert (= (and b!1233606 res!821900) b!1233611))

(assert (= (and b!1233611 res!821899) b!1233603))

(assert (= (and b!1233603 res!821894) b!1233609))

(assert (= (and b!1233609 res!821902) b!1233604))

(declare-fun m!1137713 () Bool)

(assert (=> b!1233603 m!1137713))

(assert (=> b!1233603 m!1137713))

(declare-fun m!1137715 () Bool)

(assert (=> b!1233603 m!1137715))

(declare-fun m!1137717 () Bool)

(assert (=> b!1233609 m!1137717))

(declare-fun m!1137719 () Bool)

(assert (=> b!1233609 m!1137719))

(assert (=> b!1233609 m!1137713))

(declare-fun m!1137721 () Bool)

(assert (=> b!1233609 m!1137721))

(assert (=> b!1233609 m!1137713))

(declare-fun m!1137723 () Bool)

(assert (=> b!1233609 m!1137723))

(assert (=> b!1233609 m!1137713))

(declare-fun m!1137725 () Bool)

(assert (=> b!1233609 m!1137725))

(declare-fun m!1137727 () Bool)

(assert (=> b!1233612 m!1137727))

(declare-fun m!1137729 () Bool)

(assert (=> start!102668 m!1137729))

(declare-fun m!1137731 () Bool)

(assert (=> b!1233611 m!1137731))

(declare-fun m!1137733 () Bool)

(assert (=> b!1233607 m!1137733))

(declare-fun m!1137735 () Bool)

(assert (=> b!1233606 m!1137735))

(declare-fun m!1137737 () Bool)

(assert (=> b!1233605 m!1137737))

(declare-fun m!1137739 () Bool)

(assert (=> b!1233608 m!1137739))

(assert (=> b!1233604 m!1137713))

(declare-fun m!1137741 () Bool)

(assert (=> b!1233604 m!1137741))

(push 1)

(assert (not b!1233608))

(assert (not b!1233609))

(assert (not b!1233603))

(assert (not b!1233604))

(assert (not b!1233605))

(assert (not b!1233612))

(assert (not b!1233611))

(assert (not b!1233607))

(assert (not start!102668))

(assert (not b!1233606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

