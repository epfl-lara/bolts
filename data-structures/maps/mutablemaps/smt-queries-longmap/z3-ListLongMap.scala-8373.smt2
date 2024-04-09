; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101880 () Bool)

(assert start!101880)

(declare-fun res!815302 () Bool)

(declare-fun e!696598 () Bool)

(assert (=> start!101880 (=> (not res!815302) (not e!696598))))

(declare-datatypes ((array!79162 0))(
  ( (array!79163 (arr!38203 (Array (_ BitVec 32) (_ BitVec 64))) (size!38740 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79162)

(assert (=> start!101880 (= res!815302 (bvslt (size!38740 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101880 e!696598))

(declare-fun array_inv!28979 (array!79162) Bool)

(assert (=> start!101880 (array_inv!28979 a!3806)))

(assert (=> start!101880 true))

(declare-fun b!1226537 () Bool)

(declare-fun res!815304 () Bool)

(assert (=> b!1226537 (=> (not res!815304) (not e!696598))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226537 (= res!815304 (validKeyInArray!0 k0!2913))))

(declare-fun b!1226538 () Bool)

(declare-fun res!815303 () Bool)

(assert (=> b!1226538 (=> (not res!815303) (not e!696598))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226538 (= res!815303 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38740 a!3806)) (bvslt from!3184 (size!38740 a!3806))))))

(declare-fun b!1226539 () Bool)

(assert (=> b!1226539 (= e!696598 false)))

(declare-fun lt!558773 () Bool)

(declare-datatypes ((List!27154 0))(
  ( (Nil!27151) (Cons!27150 (h!28359 (_ BitVec 64)) (t!40624 List!27154)) )
))
(declare-fun acc!823 () List!27154)

(declare-fun contains!7069 (List!27154 (_ BitVec 64)) Bool)

(assert (=> b!1226539 (= lt!558773 (contains!7069 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226540 () Bool)

(declare-fun res!815305 () Bool)

(assert (=> b!1226540 (=> (not res!815305) (not e!696598))))

(declare-fun noDuplicate!1676 (List!27154) Bool)

(assert (=> b!1226540 (= res!815305 (noDuplicate!1676 acc!823))))

(declare-fun b!1226541 () Bool)

(declare-fun res!815306 () Bool)

(assert (=> b!1226541 (=> (not res!815306) (not e!696598))))

(assert (=> b!1226541 (= res!815306 (not (contains!7069 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!101880 res!815302) b!1226537))

(assert (= (and b!1226537 res!815304) b!1226538))

(assert (= (and b!1226538 res!815303) b!1226540))

(assert (= (and b!1226540 res!815305) b!1226541))

(assert (= (and b!1226541 res!815306) b!1226539))

(declare-fun m!1131615 () Bool)

(assert (=> b!1226537 m!1131615))

(declare-fun m!1131617 () Bool)

(assert (=> start!101880 m!1131617))

(declare-fun m!1131619 () Bool)

(assert (=> b!1226541 m!1131619))

(declare-fun m!1131621 () Bool)

(assert (=> b!1226539 m!1131621))

(declare-fun m!1131623 () Bool)

(assert (=> b!1226540 m!1131623))

(check-sat (not start!101880) (not b!1226539) (not b!1226540) (not b!1226537) (not b!1226541))
