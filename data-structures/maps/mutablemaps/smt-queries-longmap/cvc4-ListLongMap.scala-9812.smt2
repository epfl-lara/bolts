; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116562 () Bool)

(assert start!116562)

(declare-fun b!1374291 () Bool)

(declare-fun res!917595 () Bool)

(declare-fun e!778576 () Bool)

(assert (=> b!1374291 (=> (not res!917595) (not e!778576))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374291 (= res!917595 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917596 () Bool)

(assert (=> start!116562 (=> (not res!917596) (not e!778576))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93185 0))(
  ( (array!93186 (arr!44994 (Array (_ BitVec 32) (_ BitVec 64))) (size!45545 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93185)

(assert (=> start!116562 (= res!917596 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45545 a!4142))))))

(assert (=> start!116562 e!778576))

(assert (=> start!116562 true))

(declare-fun array_inv!33939 (array!93185) Bool)

(assert (=> start!116562 (array_inv!33939 a!4142)))

(declare-fun b!1374292 () Bool)

(declare-fun res!917597 () Bool)

(assert (=> b!1374292 (=> (not res!917597) (not e!778576))))

(assert (=> b!1374292 (= res!917597 (bvslt (size!45545 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374290 () Bool)

(declare-fun res!917598 () Bool)

(assert (=> b!1374290 (=> (not res!917598) (not e!778576))))

(assert (=> b!1374290 (= res!917598 (validKeyInArray!0 (select (arr!44994 a!4142) i!1457)))))

(declare-fun b!1374293 () Bool)

(assert (=> b!1374293 (= e!778576 (not true))))

(declare-fun lt!603406 () array!93185)

(declare-fun arrayCountValidKeys!0 (array!93185 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374293 (= (arrayCountValidKeys!0 lt!603406 (bvadd #b00000000000000000000000000000001 i!1457) (size!45545 a!4142)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45545 a!4142)))))

(declare-datatypes ((Unit!45387 0))(
  ( (Unit!45388) )
))
(declare-fun lt!603407 () Unit!45387)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45387)

(assert (=> b!1374293 (= lt!603407 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374293 (= (arrayCountValidKeys!0 lt!603406 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374293 (= lt!603406 (array!93186 (store (arr!44994 a!4142) i!1457 k!2959) (size!45545 a!4142)))))

(declare-fun lt!603405 () Unit!45387)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45387)

(assert (=> b!1374293 (= lt!603405 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(assert (= (and start!116562 res!917596) b!1374290))

(assert (= (and b!1374290 res!917598) b!1374291))

(assert (= (and b!1374291 res!917595) b!1374292))

(assert (= (and b!1374292 res!917597) b!1374293))

(declare-fun m!1257657 () Bool)

(assert (=> b!1374291 m!1257657))

(declare-fun m!1257659 () Bool)

(assert (=> start!116562 m!1257659))

(declare-fun m!1257661 () Bool)

(assert (=> b!1374290 m!1257661))

(assert (=> b!1374290 m!1257661))

(declare-fun m!1257663 () Bool)

(assert (=> b!1374290 m!1257663))

(declare-fun m!1257665 () Bool)

(assert (=> b!1374293 m!1257665))

(declare-fun m!1257667 () Bool)

(assert (=> b!1374293 m!1257667))

(declare-fun m!1257669 () Bool)

(assert (=> b!1374293 m!1257669))

(declare-fun m!1257671 () Bool)

(assert (=> b!1374293 m!1257671))

(declare-fun m!1257673 () Bool)

(assert (=> b!1374293 m!1257673))

(declare-fun m!1257675 () Bool)

(assert (=> b!1374293 m!1257675))

(declare-fun m!1257677 () Bool)

(assert (=> b!1374293 m!1257677))

(push 1)

(assert (not b!1374291))

(assert (not start!116562))

(assert (not b!1374293))

(assert (not b!1374290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

