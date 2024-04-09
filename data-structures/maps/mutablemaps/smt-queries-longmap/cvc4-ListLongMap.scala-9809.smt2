; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116544 () Bool)

(assert start!116544)

(declare-fun b!1374163 () Bool)

(declare-fun res!917468 () Bool)

(declare-fun e!778503 () Bool)

(assert (=> b!1374163 (=> (not res!917468) (not e!778503))))

(declare-datatypes ((array!93167 0))(
  ( (array!93168 (arr!44985 (Array (_ BitVec 32) (_ BitVec 64))) (size!45536 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93167)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374163 (= res!917468 (validKeyInArray!0 (select (arr!44985 a!4142) i!1457)))))

(declare-fun b!1374164 () Bool)

(declare-fun e!778502 () Bool)

(assert (=> b!1374164 (= e!778502 true)))

(declare-fun lt!603308 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93167 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374164 (= lt!603308 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603305 () (_ BitVec 32))

(declare-fun lt!603306 () array!93167)

(assert (=> b!1374164 (= lt!603305 (arrayCountValidKeys!0 lt!603306 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun res!917469 () Bool)

(assert (=> start!116544 (=> (not res!917469) (not e!778503))))

(assert (=> start!116544 (= res!917469 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45536 a!4142))))))

(assert (=> start!116544 e!778503))

(assert (=> start!116544 true))

(declare-fun array_inv!33930 (array!93167) Bool)

(assert (=> start!116544 (array_inv!33930 a!4142)))

(declare-fun b!1374165 () Bool)

(assert (=> b!1374165 (= e!778503 (not e!778502))))

(declare-fun res!917471 () Bool)

(assert (=> b!1374165 (=> res!917471 e!778502)))

(assert (=> b!1374165 (= res!917471 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(assert (=> b!1374165 (= (arrayCountValidKeys!0 lt!603306 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374165 (= lt!603306 (array!93168 (store (arr!44985 a!4142) i!1457 k!2959) (size!45536 a!4142)))))

(declare-datatypes ((Unit!45369 0))(
  ( (Unit!45370) )
))
(declare-fun lt!603307 () Unit!45369)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93167 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45369)

(assert (=> b!1374165 (= lt!603307 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374166 () Bool)

(declare-fun res!917470 () Bool)

(assert (=> b!1374166 (=> (not res!917470) (not e!778503))))

(assert (=> b!1374166 (= res!917470 (bvslt (size!45536 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374167 () Bool)

(declare-fun res!917472 () Bool)

(assert (=> b!1374167 (=> (not res!917472) (not e!778503))))

(assert (=> b!1374167 (= res!917472 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116544 res!917469) b!1374163))

(assert (= (and b!1374163 res!917468) b!1374167))

(assert (= (and b!1374167 res!917472) b!1374166))

(assert (= (and b!1374166 res!917470) b!1374165))

(assert (= (and b!1374165 (not res!917471)) b!1374164))

(declare-fun m!1257473 () Bool)

(assert (=> b!1374164 m!1257473))

(declare-fun m!1257475 () Bool)

(assert (=> b!1374164 m!1257475))

(declare-fun m!1257477 () Bool)

(assert (=> start!116544 m!1257477))

(declare-fun m!1257479 () Bool)

(assert (=> b!1374167 m!1257479))

(declare-fun m!1257481 () Bool)

(assert (=> b!1374163 m!1257481))

(assert (=> b!1374163 m!1257481))

(declare-fun m!1257483 () Bool)

(assert (=> b!1374163 m!1257483))

(declare-fun m!1257485 () Bool)

(assert (=> b!1374165 m!1257485))

(declare-fun m!1257487 () Bool)

(assert (=> b!1374165 m!1257487))

(declare-fun m!1257489 () Bool)

(assert (=> b!1374165 m!1257489))

(declare-fun m!1257491 () Bool)

(assert (=> b!1374165 m!1257491))

(push 1)

(assert (not b!1374163))

(assert (not b!1374165))

(assert (not start!116544))

(assert (not b!1374167))

(assert (not b!1374164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

