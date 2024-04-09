; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103502 () Bool)

(assert start!103502)

(declare-fun b!1240284 () Bool)

(declare-fun res!827698 () Bool)

(declare-fun e!703012 () Bool)

(assert (=> b!1240284 (=> (not res!827698) (not e!703012))))

(declare-datatypes ((array!79924 0))(
  ( (array!79925 (arr!38554 (Array (_ BitVec 32) (_ BitVec 64))) (size!39091 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79924)

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240284 (= res!827698 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun res!827697 () Bool)

(assert (=> start!103502 (=> (not res!827697) (not e!703012))))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103502 (= res!827697 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39091 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39091 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103502 e!703012))

(assert (=> start!103502 true))

(declare-fun array_inv!29330 (array!79924) Bool)

(assert (=> start!103502 (array_inv!29330 a!3575)))

(declare-fun b!1240287 () Bool)

(assert (=> b!1240287 (= e!703012 (not true))))

(assert (=> b!1240287 (arrayContainsKey!0 a!3575 k0!2808 newFrom!281)))

(declare-datatypes ((Unit!41169 0))(
  ( (Unit!41170) )
))
(declare-fun lt!561856 () Unit!41169)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79924 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41169)

(assert (=> b!1240287 (= lt!561856 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(declare-fun b!1240286 () Bool)

(declare-fun res!827695 () Bool)

(assert (=> b!1240286 (=> (not res!827695) (not e!703012))))

(assert (=> b!1240286 (= res!827695 (arrayContainsKey!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun b!1240285 () Bool)

(declare-fun res!827696 () Bool)

(assert (=> b!1240285 (=> (not res!827696) (not e!703012))))

(assert (=> b!1240285 (= res!827696 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39091 a!3575))))))

(assert (= (and start!103502 res!827697) b!1240284))

(assert (= (and b!1240284 res!827698) b!1240285))

(assert (= (and b!1240285 res!827696) b!1240286))

(assert (= (and b!1240286 res!827695) b!1240287))

(declare-fun m!1143621 () Bool)

(assert (=> b!1240284 m!1143621))

(declare-fun m!1143623 () Bool)

(assert (=> start!103502 m!1143623))

(declare-fun m!1143625 () Bool)

(assert (=> b!1240287 m!1143625))

(declare-fun m!1143627 () Bool)

(assert (=> b!1240287 m!1143627))

(declare-fun m!1143629 () Bool)

(assert (=> b!1240286 m!1143629))

(check-sat (not start!103502) (not b!1240286) (not b!1240287) (not b!1240284))
