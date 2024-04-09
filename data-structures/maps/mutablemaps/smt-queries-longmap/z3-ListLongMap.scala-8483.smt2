; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103448 () Bool)

(assert start!103448)

(declare-fun b!1240071 () Bool)

(declare-fun res!827484 () Bool)

(declare-fun e!702863 () Bool)

(assert (=> b!1240071 (=> (not res!827484) (not e!702863))))

(declare-datatypes ((array!79879 0))(
  ( (array!79880 (arr!38533 (Array (_ BitVec 32) (_ BitVec 64))) (size!39070 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79879)

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240071 (= res!827484 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun b!1240074 () Bool)

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> b!1240074 (= e!702863 (not (bvslt newFrom!281 (size!39070 a!3575))))))

(assert (=> b!1240074 (arrayContainsKey!0 a!3575 k0!2808 newFrom!281)))

(declare-datatypes ((Unit!41157 0))(
  ( (Unit!41158) )
))
(declare-fun lt!561838 () Unit!41157)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79879 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41157)

(assert (=> b!1240074 (= lt!561838 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240072 () Bool)

(declare-fun res!827482 () Bool)

(assert (=> b!1240072 (=> (not res!827482) (not e!702863))))

(assert (=> b!1240072 (= res!827482 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39070 a!3575))))))

(declare-fun b!1240073 () Bool)

(declare-fun res!827485 () Bool)

(assert (=> b!1240073 (=> (not res!827485) (not e!702863))))

(assert (=> b!1240073 (= res!827485 (arrayContainsKey!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun res!827483 () Bool)

(assert (=> start!103448 (=> (not res!827483) (not e!702863))))

(assert (=> start!103448 (= res!827483 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39070 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39070 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103448 e!702863))

(assert (=> start!103448 true))

(declare-fun array_inv!29309 (array!79879) Bool)

(assert (=> start!103448 (array_inv!29309 a!3575)))

(assert (= (and start!103448 res!827483) b!1240071))

(assert (= (and b!1240071 res!827484) b!1240072))

(assert (= (and b!1240072 res!827482) b!1240073))

(assert (= (and b!1240073 res!827485) b!1240074))

(declare-fun m!1143465 () Bool)

(assert (=> b!1240071 m!1143465))

(declare-fun m!1143467 () Bool)

(assert (=> b!1240074 m!1143467))

(declare-fun m!1143469 () Bool)

(assert (=> b!1240074 m!1143469))

(declare-fun m!1143471 () Bool)

(assert (=> b!1240073 m!1143471))

(declare-fun m!1143473 () Bool)

(assert (=> start!103448 m!1143473))

(check-sat (not b!1240071) (not start!103448) (not b!1240073) (not b!1240074))
(check-sat)
