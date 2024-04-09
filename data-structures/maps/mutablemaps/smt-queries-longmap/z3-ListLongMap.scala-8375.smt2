; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101892 () Bool)

(assert start!101892)

(declare-fun b!1226627 () Bool)

(declare-fun e!696634 () Bool)

(assert (=> b!1226627 (= e!696634 false)))

(declare-fun lt!558791 () Bool)

(declare-datatypes ((List!27160 0))(
  ( (Nil!27157) (Cons!27156 (h!28365 (_ BitVec 64)) (t!40630 List!27160)) )
))
(declare-fun acc!823 () List!27160)

(declare-fun contains!7075 (List!27160 (_ BitVec 64)) Bool)

(assert (=> b!1226627 (= lt!558791 (contains!7075 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226628 () Bool)

(declare-fun res!815395 () Bool)

(assert (=> b!1226628 (=> (not res!815395) (not e!696634))))

(declare-fun noDuplicate!1682 (List!27160) Bool)

(assert (=> b!1226628 (= res!815395 (noDuplicate!1682 acc!823))))

(declare-fun b!1226629 () Bool)

(declare-fun res!815396 () Bool)

(assert (=> b!1226629 (=> (not res!815396) (not e!696634))))

(assert (=> b!1226629 (= res!815396 (not (contains!7075 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226630 () Bool)

(declare-fun res!815392 () Bool)

(assert (=> b!1226630 (=> (not res!815392) (not e!696634))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79174 0))(
  ( (array!79175 (arr!38209 (Array (_ BitVec 32) (_ BitVec 64))) (size!38746 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79174)

(assert (=> b!1226630 (= res!815392 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38746 a!3806)) (bvslt from!3184 (size!38746 a!3806))))))

(declare-fun b!1226631 () Bool)

(declare-fun res!815394 () Bool)

(assert (=> b!1226631 (=> (not res!815394) (not e!696634))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226631 (= res!815394 (validKeyInArray!0 k0!2913))))

(declare-fun res!815393 () Bool)

(assert (=> start!101892 (=> (not res!815393) (not e!696634))))

(assert (=> start!101892 (= res!815393 (bvslt (size!38746 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101892 e!696634))

(declare-fun array_inv!28985 (array!79174) Bool)

(assert (=> start!101892 (array_inv!28985 a!3806)))

(assert (=> start!101892 true))

(assert (= (and start!101892 res!815393) b!1226631))

(assert (= (and b!1226631 res!815394) b!1226630))

(assert (= (and b!1226630 res!815392) b!1226628))

(assert (= (and b!1226628 res!815395) b!1226629))

(assert (= (and b!1226629 res!815396) b!1226627))

(declare-fun m!1131675 () Bool)

(assert (=> start!101892 m!1131675))

(declare-fun m!1131677 () Bool)

(assert (=> b!1226629 m!1131677))

(declare-fun m!1131679 () Bool)

(assert (=> b!1226631 m!1131679))

(declare-fun m!1131681 () Bool)

(assert (=> b!1226627 m!1131681))

(declare-fun m!1131683 () Bool)

(assert (=> b!1226628 m!1131683))

(check-sat (not b!1226629) (not b!1226631) (not b!1226627) (not b!1226628) (not start!101892))
