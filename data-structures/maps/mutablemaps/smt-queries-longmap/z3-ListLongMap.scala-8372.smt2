; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101874 () Bool)

(assert start!101874)

(declare-fun b!1226484 () Bool)

(declare-fun res!815251 () Bool)

(declare-fun e!696579 () Bool)

(assert (=> b!1226484 (=> (not res!815251) (not e!696579))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79156 0))(
  ( (array!79157 (arr!38200 (Array (_ BitVec 32) (_ BitVec 64))) (size!38737 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79156)

(assert (=> b!1226484 (= res!815251 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38737 a!3806)) (bvslt from!3184 (size!38737 a!3806))))))

(declare-fun b!1226485 () Bool)

(declare-fun res!815252 () Bool)

(assert (=> b!1226485 (=> (not res!815252) (not e!696579))))

(declare-datatypes ((List!27151 0))(
  ( (Nil!27148) (Cons!27147 (h!28356 (_ BitVec 64)) (t!40621 List!27151)) )
))
(declare-fun acc!823 () List!27151)

(declare-fun noDuplicate!1673 (List!27151) Bool)

(assert (=> b!1226485 (= res!815252 (noDuplicate!1673 acc!823))))

(declare-fun b!1226487 () Bool)

(declare-fun res!815255 () Bool)

(assert (=> b!1226487 (=> (not res!815255) (not e!696579))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226487 (= res!815255 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226488 () Bool)

(declare-fun res!815249 () Bool)

(assert (=> b!1226488 (=> (not res!815249) (not e!696579))))

(declare-fun contains!7066 (List!27151 (_ BitVec 64)) Bool)

(assert (=> b!1226488 (= res!815249 (not (contains!7066 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226489 () Bool)

(declare-fun res!815253 () Bool)

(assert (=> b!1226489 (=> (not res!815253) (not e!696579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226489 (= res!815253 (validKeyInArray!0 k0!2913))))

(declare-fun b!1226490 () Bool)

(declare-fun res!815250 () Bool)

(assert (=> b!1226490 (=> (not res!815250) (not e!696579))))

(assert (=> b!1226490 (= res!815250 (not (contains!7066 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226486 () Bool)

(assert (=> b!1226486 (= e!696579 (bvsgt from!3184 (size!38737 a!3806)))))

(declare-fun res!815254 () Bool)

(assert (=> start!101874 (=> (not res!815254) (not e!696579))))

(assert (=> start!101874 (= res!815254 (bvslt (size!38737 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101874 e!696579))

(declare-fun array_inv!28976 (array!79156) Bool)

(assert (=> start!101874 (array_inv!28976 a!3806)))

(assert (=> start!101874 true))

(assert (= (and start!101874 res!815254) b!1226489))

(assert (= (and b!1226489 res!815253) b!1226484))

(assert (= (and b!1226484 res!815251) b!1226485))

(assert (= (and b!1226485 res!815252) b!1226488))

(assert (= (and b!1226488 res!815249) b!1226490))

(assert (= (and b!1226490 res!815250) b!1226487))

(assert (= (and b!1226487 res!815255) b!1226486))

(declare-fun m!1131581 () Bool)

(assert (=> b!1226488 m!1131581))

(declare-fun m!1131583 () Bool)

(assert (=> start!101874 m!1131583))

(declare-fun m!1131585 () Bool)

(assert (=> b!1226487 m!1131585))

(declare-fun m!1131587 () Bool)

(assert (=> b!1226489 m!1131587))

(declare-fun m!1131589 () Bool)

(assert (=> b!1226485 m!1131589))

(declare-fun m!1131591 () Bool)

(assert (=> b!1226490 m!1131591))

(check-sat (not b!1226488) (not b!1226487) (not start!101874) (not b!1226485) (not b!1226489) (not b!1226490))
(check-sat)
