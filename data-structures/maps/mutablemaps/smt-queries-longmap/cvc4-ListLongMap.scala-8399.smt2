; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102218 () Bool)

(assert start!102218)

(declare-fun b!1230039 () Bool)

(declare-fun res!818632 () Bool)

(declare-fun e!698027 () Bool)

(assert (=> b!1230039 (=> (not res!818632) (not e!698027))))

(declare-datatypes ((array!79332 0))(
  ( (array!79333 (arr!38282 (Array (_ BitVec 32) (_ BitVec 64))) (size!38819 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79332)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27233 0))(
  ( (Nil!27230) (Cons!27229 (h!28438 (_ BitVec 64)) (t!40703 List!27233)) )
))
(declare-fun acc!823 () List!27233)

(declare-fun arrayNoDuplicates!0 (array!79332 (_ BitVec 32) List!27233) Bool)

(assert (=> b!1230039 (= res!818632 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!818638 () Bool)

(assert (=> start!102218 (=> (not res!818638) (not e!698027))))

(assert (=> start!102218 (= res!818638 (bvslt (size!38819 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102218 e!698027))

(declare-fun array_inv!29058 (array!79332) Bool)

(assert (=> start!102218 (array_inv!29058 a!3806)))

(assert (=> start!102218 true))

(declare-fun b!1230040 () Bool)

(declare-fun e!698028 () Bool)

(assert (=> b!1230040 (= e!698028 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27229 (select (arr!38282 a!3806) from!3184) Nil!27230)))))

(declare-fun b!1230041 () Bool)

(declare-fun res!818631 () Bool)

(assert (=> b!1230041 (=> (not res!818631) (not e!698027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230041 (= res!818631 (validKeyInArray!0 (select (arr!38282 a!3806) from!3184)))))

(declare-fun b!1230042 () Bool)

(declare-fun res!818637 () Bool)

(assert (=> b!1230042 (=> (not res!818637) (not e!698027))))

(declare-fun contains!7148 (List!27233 (_ BitVec 64)) Bool)

(assert (=> b!1230042 (= res!818637 (not (contains!7148 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230043 () Bool)

(declare-fun res!818630 () Bool)

(assert (=> b!1230043 (=> (not res!818630) (not e!698027))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230043 (= res!818630 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230044 () Bool)

(declare-fun res!818636 () Bool)

(assert (=> b!1230044 (=> (not res!818636) (not e!698027))))

(assert (=> b!1230044 (= res!818636 (validKeyInArray!0 k!2913))))

(declare-fun b!1230045 () Bool)

(declare-fun res!818634 () Bool)

(assert (=> b!1230045 (=> (not res!818634) (not e!698027))))

(declare-fun noDuplicate!1755 (List!27233) Bool)

(assert (=> b!1230045 (= res!818634 (noDuplicate!1755 acc!823))))

(declare-fun b!1230046 () Bool)

(declare-fun res!818635 () Bool)

(assert (=> b!1230046 (=> (not res!818635) (not e!698027))))

(assert (=> b!1230046 (= res!818635 (not (contains!7148 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230047 () Bool)

(assert (=> b!1230047 (= e!698027 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(assert (=> b!1230047 (not (arrayContainsKey!0 a!3806 (select (arr!38282 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40704 0))(
  ( (Unit!40705) )
))
(declare-fun lt!559262 () Unit!40704)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79332 (_ BitVec 32) (_ BitVec 64) List!27233) Unit!40704)

(assert (=> b!1230047 (= lt!559262 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38282 a!3806) from!3184) (Cons!27229 (select (arr!38282 a!3806) from!3184) Nil!27230)))))

(assert (=> b!1230047 e!698028))

(declare-fun res!818633 () Bool)

(assert (=> b!1230047 (=> (not res!818633) (not e!698028))))

(assert (=> b!1230047 (= res!818633 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27230))))

(declare-fun lt!559261 () Unit!40704)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79332 List!27233 List!27233 (_ BitVec 32)) Unit!40704)

(assert (=> b!1230047 (= lt!559261 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27230 from!3184))))

(assert (=> b!1230047 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27229 (select (arr!38282 a!3806) from!3184) acc!823))))

(declare-fun b!1230048 () Bool)

(declare-fun res!818639 () Bool)

(assert (=> b!1230048 (=> (not res!818639) (not e!698027))))

(assert (=> b!1230048 (= res!818639 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38819 a!3806)) (bvslt from!3184 (size!38819 a!3806))))))

(assert (= (and start!102218 res!818638) b!1230044))

(assert (= (and b!1230044 res!818636) b!1230048))

(assert (= (and b!1230048 res!818639) b!1230045))

(assert (= (and b!1230045 res!818634) b!1230046))

(assert (= (and b!1230046 res!818635) b!1230042))

(assert (= (and b!1230042 res!818637) b!1230043))

(assert (= (and b!1230043 res!818630) b!1230039))

(assert (= (and b!1230039 res!818632) b!1230041))

(assert (= (and b!1230041 res!818631) b!1230047))

(assert (= (and b!1230047 res!818633) b!1230040))

(declare-fun m!1134563 () Bool)

(assert (=> b!1230043 m!1134563))

(declare-fun m!1134565 () Bool)

(assert (=> b!1230045 m!1134565))

(declare-fun m!1134567 () Bool)

(assert (=> b!1230039 m!1134567))

(declare-fun m!1134569 () Bool)

(assert (=> b!1230044 m!1134569))

(declare-fun m!1134571 () Bool)

(assert (=> b!1230047 m!1134571))

(declare-fun m!1134573 () Bool)

(assert (=> b!1230047 m!1134573))

(declare-fun m!1134575 () Bool)

(assert (=> b!1230047 m!1134575))

(declare-fun m!1134577 () Bool)

(assert (=> b!1230047 m!1134577))

(assert (=> b!1230047 m!1134575))

(declare-fun m!1134579 () Bool)

(assert (=> b!1230047 m!1134579))

(assert (=> b!1230047 m!1134575))

(declare-fun m!1134581 () Bool)

(assert (=> b!1230047 m!1134581))

(declare-fun m!1134583 () Bool)

(assert (=> start!102218 m!1134583))

(declare-fun m!1134585 () Bool)

(assert (=> b!1230042 m!1134585))

(assert (=> b!1230040 m!1134575))

(declare-fun m!1134587 () Bool)

(assert (=> b!1230040 m!1134587))

(declare-fun m!1134589 () Bool)

(assert (=> b!1230046 m!1134589))

(assert (=> b!1230041 m!1134575))

(assert (=> b!1230041 m!1134575))

(declare-fun m!1134591 () Bool)

(assert (=> b!1230041 m!1134591))

(push 1)

(assert (not start!102218))

(assert (not b!1230047))

(assert (not b!1230043))

(assert (not b!1230046))

