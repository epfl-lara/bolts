; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101888 () Bool)

(assert start!101888)

(declare-fun b!1226597 () Bool)

(declare-fun res!815365 () Bool)

(declare-fun e!696621 () Bool)

(assert (=> b!1226597 (=> (not res!815365) (not e!696621))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226597 (= res!815365 (validKeyInArray!0 k!2913))))

(declare-fun res!815363 () Bool)

(assert (=> start!101888 (=> (not res!815363) (not e!696621))))

(declare-datatypes ((array!79170 0))(
  ( (array!79171 (arr!38207 (Array (_ BitVec 32) (_ BitVec 64))) (size!38744 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79170)

(assert (=> start!101888 (= res!815363 (bvslt (size!38744 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101888 e!696621))

(declare-fun array_inv!28983 (array!79170) Bool)

(assert (=> start!101888 (array_inv!28983 a!3806)))

(assert (=> start!101888 true))

(declare-fun b!1226598 () Bool)

(declare-fun res!815366 () Bool)

(assert (=> b!1226598 (=> (not res!815366) (not e!696621))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226598 (= res!815366 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38744 a!3806)) (bvslt from!3184 (size!38744 a!3806))))))

(declare-fun b!1226599 () Bool)

(declare-fun res!815364 () Bool)

(assert (=> b!1226599 (=> (not res!815364) (not e!696621))))

(declare-datatypes ((List!27158 0))(
  ( (Nil!27155) (Cons!27154 (h!28363 (_ BitVec 64)) (t!40628 List!27158)) )
))
(declare-fun acc!823 () List!27158)

(declare-fun noDuplicate!1680 (List!27158) Bool)

(assert (=> b!1226599 (= res!815364 (noDuplicate!1680 acc!823))))

(declare-fun b!1226600 () Bool)

(assert (=> b!1226600 (= e!696621 false)))

(declare-fun lt!558785 () Bool)

(declare-fun contains!7073 (List!27158 (_ BitVec 64)) Bool)

(assert (=> b!1226600 (= lt!558785 (contains!7073 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226601 () Bool)

(declare-fun res!815362 () Bool)

(assert (=> b!1226601 (=> (not res!815362) (not e!696621))))

(assert (=> b!1226601 (= res!815362 (not (contains!7073 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!101888 res!815363) b!1226597))

(assert (= (and b!1226597 res!815365) b!1226598))

(assert (= (and b!1226598 res!815366) b!1226599))

(assert (= (and b!1226599 res!815364) b!1226601))

(assert (= (and b!1226601 res!815362) b!1226600))

(declare-fun m!1131655 () Bool)

(assert (=> b!1226600 m!1131655))

(declare-fun m!1131657 () Bool)

(assert (=> b!1226601 m!1131657))

(declare-fun m!1131659 () Bool)

(assert (=> start!101888 m!1131659))

(declare-fun m!1131661 () Bool)

(assert (=> b!1226597 m!1131661))

(declare-fun m!1131663 () Bool)

(assert (=> b!1226599 m!1131663))

(push 1)

(assert (not start!101888))

(assert (not b!1226601))

(assert (not b!1226597))

(assert (not b!1226600))

(assert (not b!1226599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

