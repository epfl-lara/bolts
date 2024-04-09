; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101856 () Bool)

(assert start!101856)

(declare-fun b!1226335 () Bool)

(declare-fun res!815100 () Bool)

(declare-fun e!696526 () Bool)

(assert (=> b!1226335 (=> (not res!815100) (not e!696526))))

(declare-datatypes ((List!27142 0))(
  ( (Nil!27139) (Cons!27138 (h!28347 (_ BitVec 64)) (t!40612 List!27142)) )
))
(declare-fun acc!823 () List!27142)

(declare-fun noDuplicate!1664 (List!27142) Bool)

(assert (=> b!1226335 (= res!815100 (noDuplicate!1664 acc!823))))

(declare-fun b!1226336 () Bool)

(declare-fun res!815102 () Bool)

(assert (=> b!1226336 (=> (not res!815102) (not e!696526))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79138 0))(
  ( (array!79139 (arr!38191 (Array (_ BitVec 32) (_ BitVec 64))) (size!38728 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79138)

(assert (=> b!1226336 (= res!815102 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38728 a!3806)) (bvslt from!3184 (size!38728 a!3806))))))

(declare-fun b!1226337 () Bool)

(assert (=> b!1226337 (= e!696526 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun b!1226338 () Bool)

(declare-fun res!815104 () Bool)

(assert (=> b!1226338 (=> (not res!815104) (not e!696526))))

(declare-fun contains!7057 (List!27142 (_ BitVec 64)) Bool)

(assert (=> b!1226338 (= res!815104 (not (contains!7057 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226340 () Bool)

(declare-fun res!815105 () Bool)

(assert (=> b!1226340 (=> (not res!815105) (not e!696526))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226340 (= res!815105 (validKeyInArray!0 k0!2913))))

(declare-fun res!815103 () Bool)

(assert (=> start!101856 (=> (not res!815103) (not e!696526))))

(assert (=> start!101856 (= res!815103 (bvslt (size!38728 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101856 e!696526))

(declare-fun array_inv!28967 (array!79138) Bool)

(assert (=> start!101856 (array_inv!28967 a!3806)))

(assert (=> start!101856 true))

(declare-fun b!1226339 () Bool)

(declare-fun res!815101 () Bool)

(assert (=> b!1226339 (=> (not res!815101) (not e!696526))))

(assert (=> b!1226339 (= res!815101 (not (contains!7057 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!101856 res!815103) b!1226340))

(assert (= (and b!1226340 res!815105) b!1226336))

(assert (= (and b!1226336 res!815102) b!1226335))

(assert (= (and b!1226335 res!815100) b!1226338))

(assert (= (and b!1226338 res!815104) b!1226339))

(assert (= (and b!1226339 res!815101) b!1226337))

(declare-fun m!1131489 () Bool)

(assert (=> b!1226338 m!1131489))

(declare-fun m!1131491 () Bool)

(assert (=> start!101856 m!1131491))

(declare-fun m!1131493 () Bool)

(assert (=> b!1226340 m!1131493))

(declare-fun m!1131495 () Bool)

(assert (=> b!1226339 m!1131495))

(declare-fun m!1131497 () Bool)

(assert (=> b!1226335 m!1131497))

(check-sat (not b!1226340) (not b!1226338) (not b!1226339) (not start!101856) (not b!1226335))
(check-sat)
