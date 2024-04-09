; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103454 () Bool)

(assert start!103454)

(declare-fun res!827521 () Bool)

(declare-fun e!702880 () Bool)

(assert (=> start!103454 (=> (not res!827521) (not e!702880))))

(declare-datatypes ((array!79885 0))(
  ( (array!79886 (arr!38536 (Array (_ BitVec 32) (_ BitVec 64))) (size!39073 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79885)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103454 (= res!827521 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39073 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39073 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103454 e!702880))

(assert (=> start!103454 true))

(declare-fun array_inv!29312 (array!79885) Bool)

(assert (=> start!103454 (array_inv!29312 a!3575)))

(declare-fun b!1240107 () Bool)

(declare-fun res!827519 () Bool)

(assert (=> b!1240107 (=> (not res!827519) (not e!702880))))

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79885 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240107 (= res!827519 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun b!1240110 () Bool)

(assert (=> b!1240110 (= e!702880 (not true))))

(assert (=> b!1240110 (arrayContainsKey!0 a!3575 k0!2808 newFrom!281)))

(declare-datatypes ((Unit!41163 0))(
  ( (Unit!41164) )
))
(declare-fun lt!561847 () Unit!41163)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79885 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41163)

(assert (=> b!1240110 (= lt!561847 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240109 () Bool)

(declare-fun res!827518 () Bool)

(assert (=> b!1240109 (=> (not res!827518) (not e!702880))))

(assert (=> b!1240109 (= res!827518 (arrayContainsKey!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun b!1240108 () Bool)

(declare-fun res!827520 () Bool)

(assert (=> b!1240108 (=> (not res!827520) (not e!702880))))

(assert (=> b!1240108 (= res!827520 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39073 a!3575))))))

(assert (= (and start!103454 res!827521) b!1240107))

(assert (= (and b!1240107 res!827519) b!1240108))

(assert (= (and b!1240108 res!827520) b!1240109))

(assert (= (and b!1240109 res!827518) b!1240110))

(declare-fun m!1143495 () Bool)

(assert (=> start!103454 m!1143495))

(declare-fun m!1143497 () Bool)

(assert (=> b!1240107 m!1143497))

(declare-fun m!1143499 () Bool)

(assert (=> b!1240110 m!1143499))

(declare-fun m!1143501 () Bool)

(assert (=> b!1240110 m!1143501))

(declare-fun m!1143503 () Bool)

(assert (=> b!1240109 m!1143503))

(check-sat (not b!1240107) (not b!1240110) (not start!103454) (not b!1240109))
