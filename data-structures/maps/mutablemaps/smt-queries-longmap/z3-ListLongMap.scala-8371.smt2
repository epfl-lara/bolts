; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101868 () Bool)

(assert start!101868)

(declare-fun b!1226429 () Bool)

(declare-fun res!815195 () Bool)

(declare-fun e!696561 () Bool)

(assert (=> b!1226429 (=> (not res!815195) (not e!696561))))

(declare-datatypes ((List!27148 0))(
  ( (Nil!27145) (Cons!27144 (h!28353 (_ BitVec 64)) (t!40618 List!27148)) )
))
(declare-fun acc!823 () List!27148)

(declare-fun noDuplicate!1670 (List!27148) Bool)

(assert (=> b!1226429 (= res!815195 (noDuplicate!1670 acc!823))))

(declare-fun b!1226430 () Bool)

(declare-fun res!815198 () Bool)

(assert (=> b!1226430 (=> (not res!815198) (not e!696561))))

(declare-fun contains!7063 (List!27148 (_ BitVec 64)) Bool)

(assert (=> b!1226430 (= res!815198 (not (contains!7063 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!815197 () Bool)

(assert (=> start!101868 (=> (not res!815197) (not e!696561))))

(declare-datatypes ((array!79150 0))(
  ( (array!79151 (arr!38197 (Array (_ BitVec 32) (_ BitVec 64))) (size!38734 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79150)

(assert (=> start!101868 (= res!815197 (bvslt (size!38734 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101868 e!696561))

(declare-fun array_inv!28973 (array!79150) Bool)

(assert (=> start!101868 (array_inv!28973 a!3806)))

(assert (=> start!101868 true))

(declare-fun b!1226431 () Bool)

(declare-fun res!815194 () Bool)

(assert (=> b!1226431 (=> (not res!815194) (not e!696561))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226431 (= res!815194 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38734 a!3806)) (bvslt from!3184 (size!38734 a!3806))))))

(declare-fun b!1226432 () Bool)

(assert (=> b!1226432 (= e!696561 false)))

(declare-fun lt!558764 () Bool)

(assert (=> b!1226432 (= lt!558764 (contains!7063 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226433 () Bool)

(declare-fun res!815196 () Bool)

(assert (=> b!1226433 (=> (not res!815196) (not e!696561))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226433 (= res!815196 (validKeyInArray!0 k0!2913))))

(assert (= (and start!101868 res!815197) b!1226433))

(assert (= (and b!1226433 res!815196) b!1226431))

(assert (= (and b!1226431 res!815194) b!1226429))

(assert (= (and b!1226429 res!815195) b!1226430))

(assert (= (and b!1226430 res!815198) b!1226432))

(declare-fun m!1131549 () Bool)

(assert (=> b!1226432 m!1131549))

(declare-fun m!1131551 () Bool)

(assert (=> start!101868 m!1131551))

(declare-fun m!1131553 () Bool)

(assert (=> b!1226433 m!1131553))

(declare-fun m!1131555 () Bool)

(assert (=> b!1226429 m!1131555))

(declare-fun m!1131557 () Bool)

(assert (=> b!1226430 m!1131557))

(check-sat (not b!1226430) (not b!1226429) (not b!1226432) (not start!101868) (not b!1226433))
