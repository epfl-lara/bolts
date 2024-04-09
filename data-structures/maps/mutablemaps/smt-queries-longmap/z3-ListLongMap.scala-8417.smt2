; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102480 () Bool)

(assert start!102480)

(declare-fun res!820613 () Bool)

(declare-fun e!698941 () Bool)

(assert (=> start!102480 (=> (not res!820613) (not e!698941))))

(declare-datatypes ((array!79450 0))(
  ( (array!79451 (arr!38335 (Array (_ BitVec 32) (_ BitVec 64))) (size!38872 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79450)

(assert (=> start!102480 (= res!820613 (bvslt (size!38872 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102480 e!698941))

(declare-fun array_inv!29111 (array!79450) Bool)

(assert (=> start!102480 (array_inv!29111 a!3806)))

(assert (=> start!102480 true))

(declare-fun b!1232127 () Bool)

(declare-fun res!820614 () Bool)

(assert (=> b!1232127 (=> (not res!820614) (not e!698941))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232127 (= res!820614 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232128 () Bool)

(declare-fun res!820615 () Bool)

(assert (=> b!1232128 (=> (not res!820615) (not e!698941))))

(declare-datatypes ((List!27286 0))(
  ( (Nil!27283) (Cons!27282 (h!28491 (_ BitVec 64)) (t!40756 List!27286)) )
))
(declare-fun acc!823 () List!27286)

(declare-fun contains!7201 (List!27286 (_ BitVec 64)) Bool)

(assert (=> b!1232128 (= res!820615 (not (contains!7201 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232129 () Bool)

(declare-fun res!820611 () Bool)

(assert (=> b!1232129 (=> (not res!820611) (not e!698941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232129 (= res!820611 (validKeyInArray!0 (select (arr!38335 a!3806) from!3184)))))

(declare-fun b!1232130 () Bool)

(declare-fun res!820616 () Bool)

(assert (=> b!1232130 (=> (not res!820616) (not e!698941))))

(declare-fun noDuplicate!1808 (List!27286) Bool)

(assert (=> b!1232130 (= res!820616 (noDuplicate!1808 acc!823))))

(declare-fun b!1232131 () Bool)

(declare-fun res!820612 () Bool)

(assert (=> b!1232131 (=> (not res!820612) (not e!698941))))

(assert (=> b!1232131 (= res!820612 (validKeyInArray!0 k0!2913))))

(declare-fun b!1232132 () Bool)

(declare-fun res!820618 () Bool)

(assert (=> b!1232132 (=> (not res!820618) (not e!698941))))

(assert (=> b!1232132 (= res!820618 (not (contains!7201 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232133 () Bool)

(declare-fun e!698940 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79450 (_ BitVec 32) List!27286) Bool)

(assert (=> b!1232133 (= e!698940 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27282 (select (arr!38335 a!3806) from!3184) Nil!27283)))))

(declare-fun b!1232134 () Bool)

(declare-fun res!820619 () Bool)

(assert (=> b!1232134 (=> (not res!820619) (not e!698941))))

(assert (=> b!1232134 (= res!820619 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38872 a!3806)) (bvslt from!3184 (size!38872 a!3806))))))

(declare-fun b!1232135 () Bool)

(declare-fun res!820610 () Bool)

(assert (=> b!1232135 (=> (not res!820610) (not e!698941))))

(assert (=> b!1232135 (= res!820610 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232136 () Bool)

(assert (=> b!1232136 (= e!698941 (not true))))

(assert (=> b!1232136 e!698940))

(declare-fun res!820617 () Bool)

(assert (=> b!1232136 (=> (not res!820617) (not e!698940))))

(assert (=> b!1232136 (= res!820617 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27283))))

(declare-datatypes ((Unit!40750 0))(
  ( (Unit!40751) )
))
(declare-fun lt!559436 () Unit!40750)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79450 List!27286 List!27286 (_ BitVec 32)) Unit!40750)

(assert (=> b!1232136 (= lt!559436 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27283 from!3184))))

(assert (=> b!1232136 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27282 (select (arr!38335 a!3806) from!3184) acc!823))))

(assert (= (and start!102480 res!820613) b!1232131))

(assert (= (and b!1232131 res!820612) b!1232134))

(assert (= (and b!1232134 res!820619) b!1232130))

(assert (= (and b!1232130 res!820616) b!1232128))

(assert (= (and b!1232128 res!820615) b!1232132))

(assert (= (and b!1232132 res!820618) b!1232127))

(assert (= (and b!1232127 res!820614) b!1232135))

(assert (= (and b!1232135 res!820610) b!1232129))

(assert (= (and b!1232129 res!820611) b!1232136))

(assert (= (and b!1232136 res!820617) b!1232133))

(declare-fun m!1136221 () Bool)

(assert (=> b!1232129 m!1136221))

(assert (=> b!1232129 m!1136221))

(declare-fun m!1136223 () Bool)

(assert (=> b!1232129 m!1136223))

(declare-fun m!1136225 () Bool)

(assert (=> b!1232132 m!1136225))

(declare-fun m!1136227 () Bool)

(assert (=> b!1232130 m!1136227))

(declare-fun m!1136229 () Bool)

(assert (=> b!1232128 m!1136229))

(declare-fun m!1136231 () Bool)

(assert (=> b!1232136 m!1136231))

(declare-fun m!1136233 () Bool)

(assert (=> b!1232136 m!1136233))

(assert (=> b!1232136 m!1136221))

(declare-fun m!1136235 () Bool)

(assert (=> b!1232136 m!1136235))

(declare-fun m!1136237 () Bool)

(assert (=> b!1232127 m!1136237))

(declare-fun m!1136239 () Bool)

(assert (=> start!102480 m!1136239))

(declare-fun m!1136241 () Bool)

(assert (=> b!1232135 m!1136241))

(assert (=> b!1232133 m!1136221))

(declare-fun m!1136243 () Bool)

(assert (=> b!1232133 m!1136243))

(declare-fun m!1136245 () Bool)

(assert (=> b!1232131 m!1136245))

(check-sat (not b!1232133) (not b!1232136) (not b!1232132) (not b!1232130) (not b!1232129) (not b!1232131) (not start!102480) (not b!1232128) (not b!1232135) (not b!1232127))
(check-sat)
