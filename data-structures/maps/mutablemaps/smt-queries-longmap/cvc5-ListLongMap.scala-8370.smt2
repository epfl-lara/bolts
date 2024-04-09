; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101860 () Bool)

(assert start!101860)

(declare-fun b!1226370 () Bool)

(declare-fun res!815134 () Bool)

(declare-fun e!696537 () Bool)

(assert (=> b!1226370 (=> (not res!815134) (not e!696537))))

(declare-datatypes ((List!27144 0))(
  ( (Nil!27141) (Cons!27140 (h!28349 (_ BitVec 64)) (t!40614 List!27144)) )
))
(declare-fun acc!823 () List!27144)

(declare-fun noDuplicate!1666 (List!27144) Bool)

(assert (=> b!1226370 (= res!815134 (noDuplicate!1666 acc!823))))

(declare-fun b!1226371 () Bool)

(assert (=> b!1226371 (= e!696537 false)))

(declare-fun lt!558752 () Bool)

(declare-fun contains!7059 (List!27144 (_ BitVec 64)) Bool)

(assert (=> b!1226371 (= lt!558752 (contains!7059 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226369 () Bool)

(declare-fun res!815136 () Bool)

(assert (=> b!1226369 (=> (not res!815136) (not e!696537))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79142 0))(
  ( (array!79143 (arr!38193 (Array (_ BitVec 32) (_ BitVec 64))) (size!38730 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79142)

(assert (=> b!1226369 (= res!815136 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38730 a!3806)) (bvslt from!3184 (size!38730 a!3806))))))

(declare-fun res!815135 () Bool)

(assert (=> start!101860 (=> (not res!815135) (not e!696537))))

(assert (=> start!101860 (= res!815135 (bvslt (size!38730 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101860 e!696537))

(declare-fun array_inv!28969 (array!79142) Bool)

(assert (=> start!101860 (array_inv!28969 a!3806)))

(assert (=> start!101860 true))

(declare-fun b!1226372 () Bool)

(declare-fun res!815138 () Bool)

(assert (=> b!1226372 (=> (not res!815138) (not e!696537))))

(assert (=> b!1226372 (= res!815138 (not (contains!7059 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226373 () Bool)

(declare-fun res!815137 () Bool)

(assert (=> b!1226373 (=> (not res!815137) (not e!696537))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226373 (= res!815137 (validKeyInArray!0 k!2913))))

(assert (= (and start!101860 res!815135) b!1226373))

(assert (= (and b!1226373 res!815137) b!1226369))

(assert (= (and b!1226369 res!815136) b!1226370))

(assert (= (and b!1226370 res!815134) b!1226372))

(assert (= (and b!1226372 res!815138) b!1226371))

(declare-fun m!1131509 () Bool)

(assert (=> start!101860 m!1131509))

(declare-fun m!1131511 () Bool)

(assert (=> b!1226370 m!1131511))

(declare-fun m!1131513 () Bool)

(assert (=> b!1226371 m!1131513))

(declare-fun m!1131515 () Bool)

(assert (=> b!1226373 m!1131515))

(declare-fun m!1131517 () Bool)

(assert (=> b!1226372 m!1131517))

(push 1)

(assert (not b!1226371))

(assert (not b!1226373))

(assert (not b!1226372))

(assert (not b!1226370))

(assert (not start!101860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

