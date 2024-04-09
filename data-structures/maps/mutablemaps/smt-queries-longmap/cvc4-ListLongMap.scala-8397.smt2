; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102206 () Bool)

(assert start!102206)

(declare-fun res!818413 () Bool)

(declare-fun e!697966 () Bool)

(assert (=> start!102206 (=> (not res!818413) (not e!697966))))

(declare-datatypes ((array!79320 0))(
  ( (array!79321 (arr!38276 (Array (_ BitVec 32) (_ BitVec 64))) (size!38813 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79320)

(assert (=> start!102206 (= res!818413 (bvslt (size!38813 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102206 e!697966))

(declare-fun array_inv!29052 (array!79320) Bool)

(assert (=> start!102206 (array_inv!29052 a!3806)))

(assert (=> start!102206 true))

(declare-fun b!1229819 () Bool)

(declare-fun res!818416 () Bool)

(assert (=> b!1229819 (=> (not res!818416) (not e!697966))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229819 (= res!818416 (validKeyInArray!0 (select (arr!38276 a!3806) from!3184)))))

(declare-fun b!1229820 () Bool)

(declare-fun e!697963 () Bool)

(assert (=> b!1229820 (= e!697966 (not e!697963))))

(declare-fun res!818422 () Bool)

(assert (=> b!1229820 (=> res!818422 e!697963)))

(assert (=> b!1229820 (= res!818422 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27227 0))(
  ( (Nil!27224) (Cons!27223 (h!28432 (_ BitVec 64)) (t!40697 List!27227)) )
))
(declare-fun lt!559216 () List!27227)

(assert (=> b!1229820 (= lt!559216 (Cons!27223 (select (arr!38276 a!3806) from!3184) Nil!27224))))

(declare-fun e!697965 () Bool)

(assert (=> b!1229820 e!697965))

(declare-fun res!818423 () Bool)

(assert (=> b!1229820 (=> (not res!818423) (not e!697965))))

(declare-fun arrayNoDuplicates!0 (array!79320 (_ BitVec 32) List!27227) Bool)

(assert (=> b!1229820 (= res!818423 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27224))))

(declare-fun acc!823 () List!27227)

(declare-datatypes ((Unit!40692 0))(
  ( (Unit!40693) )
))
(declare-fun lt!559217 () Unit!40692)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79320 List!27227 List!27227 (_ BitVec 32)) Unit!40692)

(assert (=> b!1229820 (= lt!559217 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27224 from!3184))))

(assert (=> b!1229820 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27223 (select (arr!38276 a!3806) from!3184) acc!823))))

(declare-fun b!1229821 () Bool)

(assert (=> b!1229821 (= e!697963 true)))

(declare-fun lt!559215 () Bool)

(declare-fun contains!7142 (List!27227 (_ BitVec 64)) Bool)

(assert (=> b!1229821 (= lt!559215 (contains!7142 lt!559216 (select (arr!38276 a!3806) from!3184)))))

(declare-fun b!1229822 () Bool)

(declare-fun res!818415 () Bool)

(assert (=> b!1229822 (=> (not res!818415) (not e!697966))))

(declare-fun noDuplicate!1749 (List!27227) Bool)

(assert (=> b!1229822 (= res!818415 (noDuplicate!1749 acc!823))))

(declare-fun b!1229823 () Bool)

(declare-fun res!818411 () Bool)

(assert (=> b!1229823 (=> (not res!818411) (not e!697966))))

(assert (=> b!1229823 (= res!818411 (not (contains!7142 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229824 () Bool)

(declare-fun res!818421 () Bool)

(assert (=> b!1229824 (=> res!818421 e!697963)))

(assert (=> b!1229824 (= res!818421 (contains!7142 lt!559216 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229825 () Bool)

(declare-fun res!818410 () Bool)

(assert (=> b!1229825 (=> (not res!818410) (not e!697966))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229825 (= res!818410 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229826 () Bool)

(declare-fun res!818414 () Bool)

(assert (=> b!1229826 (=> res!818414 e!697963)))

(assert (=> b!1229826 (= res!818414 (contains!7142 lt!559216 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229827 () Bool)

(declare-fun res!818417 () Bool)

(assert (=> b!1229827 (=> (not res!818417) (not e!697966))))

(assert (=> b!1229827 (= res!818417 (not (contains!7142 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229828 () Bool)

(declare-fun res!818419 () Bool)

(assert (=> b!1229828 (=> res!818419 e!697963)))

(assert (=> b!1229828 (= res!818419 (not (noDuplicate!1749 lt!559216)))))

(declare-fun b!1229829 () Bool)

(declare-fun res!818420 () Bool)

(assert (=> b!1229829 (=> (not res!818420) (not e!697966))))

(assert (=> b!1229829 (= res!818420 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38813 a!3806)) (bvslt from!3184 (size!38813 a!3806))))))

(declare-fun b!1229830 () Bool)

(assert (=> b!1229830 (= e!697965 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27223 (select (arr!38276 a!3806) from!3184) Nil!27224)))))

(declare-fun b!1229831 () Bool)

(declare-fun res!818418 () Bool)

(assert (=> b!1229831 (=> (not res!818418) (not e!697966))))

(assert (=> b!1229831 (= res!818418 (validKeyInArray!0 k!2913))))

(declare-fun b!1229832 () Bool)

(declare-fun res!818412 () Bool)

(assert (=> b!1229832 (=> (not res!818412) (not e!697966))))

(assert (=> b!1229832 (= res!818412 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102206 res!818413) b!1229831))

(assert (= (and b!1229831 res!818418) b!1229829))

(assert (= (and b!1229829 res!818420) b!1229822))

(assert (= (and b!1229822 res!818415) b!1229823))

(assert (= (and b!1229823 res!818411) b!1229827))

(assert (= (and b!1229827 res!818417) b!1229825))

(assert (= (and b!1229825 res!818410) b!1229832))

(assert (= (and b!1229832 res!818412) b!1229819))

(assert (= (and b!1229819 res!818416) b!1229820))

(assert (= (and b!1229820 res!818423) b!1229830))

(assert (= (and b!1229820 (not res!818422)) b!1229828))

(assert (= (and b!1229828 (not res!818419)) b!1229824))

(assert (= (and b!1229824 (not res!818421)) b!1229826))

(assert (= (and b!1229826 (not res!818414)) b!1229821))

(declare-fun m!1134367 () Bool)

(assert (=> b!1229826 m!1134367))

(declare-fun m!1134369 () Bool)

(assert (=> b!1229822 m!1134369))

(declare-fun m!1134371 () Bool)

(assert (=> start!102206 m!1134371))

(declare-fun m!1134373 () Bool)

(assert (=> b!1229820 m!1134373))

(declare-fun m!1134375 () Bool)

(assert (=> b!1229820 m!1134375))

(declare-fun m!1134377 () Bool)

(assert (=> b!1229820 m!1134377))

(declare-fun m!1134379 () Bool)

(assert (=> b!1229820 m!1134379))

(declare-fun m!1134381 () Bool)

(assert (=> b!1229825 m!1134381))

(declare-fun m!1134383 () Bool)

(assert (=> b!1229828 m!1134383))

(declare-fun m!1134385 () Bool)

(assert (=> b!1229831 m!1134385))

(declare-fun m!1134387 () Bool)

(assert (=> b!1229827 m!1134387))

(assert (=> b!1229830 m!1134373))

(declare-fun m!1134389 () Bool)

(assert (=> b!1229830 m!1134389))

(declare-fun m!1134391 () Bool)

(assert (=> b!1229823 m!1134391))

(assert (=> b!1229821 m!1134373))

(assert (=> b!1229821 m!1134373))

(declare-fun m!1134393 () Bool)

(assert (=> b!1229821 m!1134393))

(assert (=> b!1229819 m!1134373))

(assert (=> b!1229819 m!1134373))

(declare-fun m!1134395 () Bool)

(assert (=> b!1229819 m!1134395))

(declare-fun m!1134397 () Bool)

(assert (=> b!1229832 m!1134397))

(declare-fun m!1134399 () Bool)

(assert (=> b!1229824 m!1134399))

(push 1)

(assert (not b!1229824))

(assert (not b!1229822))

(assert (not b!1229832))

(assert (not b!1229821))

(assert (not b!1229819))

(assert (not b!1229820))

(assert (not b!1229831))

(assert (not b!1229827))

(assert (not b!1229823))

(assert (not b!1229828))

(assert (not start!102206))

(assert (not b!1229830))

(assert (not b!1229825))

(assert (not b!1229826))

(check-sat)

