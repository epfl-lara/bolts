; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101862 () Bool)

(assert start!101862)

(declare-fun b!1226384 () Bool)

(declare-fun res!815152 () Bool)

(declare-fun e!696544 () Bool)

(assert (=> b!1226384 (=> (not res!815152) (not e!696544))))

(declare-datatypes ((List!27145 0))(
  ( (Nil!27142) (Cons!27141 (h!28350 (_ BitVec 64)) (t!40615 List!27145)) )
))
(declare-fun acc!823 () List!27145)

(declare-fun noDuplicate!1667 (List!27145) Bool)

(assert (=> b!1226384 (= res!815152 (noDuplicate!1667 acc!823))))

(declare-fun b!1226385 () Bool)

(declare-fun res!815151 () Bool)

(assert (=> b!1226385 (=> (not res!815151) (not e!696544))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226385 (= res!815151 (validKeyInArray!0 k0!2913))))

(declare-fun b!1226387 () Bool)

(declare-fun res!815149 () Bool)

(assert (=> b!1226387 (=> (not res!815149) (not e!696544))))

(declare-fun contains!7060 (List!27145 (_ BitVec 64)) Bool)

(assert (=> b!1226387 (= res!815149 (not (contains!7060 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226388 () Bool)

(assert (=> b!1226388 (= e!696544 false)))

(declare-fun lt!558755 () Bool)

(assert (=> b!1226388 (= lt!558755 (contains!7060 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!815150 () Bool)

(assert (=> start!101862 (=> (not res!815150) (not e!696544))))

(declare-datatypes ((array!79144 0))(
  ( (array!79145 (arr!38194 (Array (_ BitVec 32) (_ BitVec 64))) (size!38731 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79144)

(assert (=> start!101862 (= res!815150 (bvslt (size!38731 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101862 e!696544))

(declare-fun array_inv!28970 (array!79144) Bool)

(assert (=> start!101862 (array_inv!28970 a!3806)))

(assert (=> start!101862 true))

(declare-fun b!1226386 () Bool)

(declare-fun res!815153 () Bool)

(assert (=> b!1226386 (=> (not res!815153) (not e!696544))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226386 (= res!815153 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38731 a!3806)) (bvslt from!3184 (size!38731 a!3806))))))

(assert (= (and start!101862 res!815150) b!1226385))

(assert (= (and b!1226385 res!815151) b!1226386))

(assert (= (and b!1226386 res!815153) b!1226384))

(assert (= (and b!1226384 res!815152) b!1226387))

(assert (= (and b!1226387 res!815149) b!1226388))

(declare-fun m!1131519 () Bool)

(assert (=> b!1226384 m!1131519))

(declare-fun m!1131521 () Bool)

(assert (=> start!101862 m!1131521))

(declare-fun m!1131523 () Bool)

(assert (=> b!1226385 m!1131523))

(declare-fun m!1131525 () Bool)

(assert (=> b!1226387 m!1131525))

(declare-fun m!1131527 () Bool)

(assert (=> b!1226388 m!1131527))

(check-sat (not b!1226388) (not b!1226387) (not start!101862) (not b!1226385) (not b!1226384))
