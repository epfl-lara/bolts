; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116546 () Bool)

(assert start!116546)

(declare-fun b!1374178 () Bool)

(declare-fun e!778513 () Bool)

(declare-fun e!778511 () Bool)

(assert (=> b!1374178 (= e!778513 (not e!778511))))

(declare-fun res!917485 () Bool)

(assert (=> b!1374178 (=> res!917485 e!778511)))

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374178 (= res!917485 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) i!1457)))))

(declare-datatypes ((array!93169 0))(
  ( (array!93170 (arr!44986 (Array (_ BitVec 32) (_ BitVec 64))) (size!45537 (_ BitVec 32))) )
))
(declare-fun lt!603319 () array!93169)

(declare-fun a!4142 () array!93169)

(declare-fun arrayCountValidKeys!0 (array!93169 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374178 (= (arrayCountValidKeys!0 lt!603319 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374178 (= lt!603319 (array!93170 (store (arr!44986 a!4142) i!1457 k!2959) (size!45537 a!4142)))))

(declare-datatypes ((Unit!45371 0))(
  ( (Unit!45372) )
))
(declare-fun lt!603318 () Unit!45371)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93169 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45371)

(assert (=> b!1374178 (= lt!603318 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374179 () Bool)

(assert (=> b!1374179 (= e!778511 true)))

(declare-fun lt!603317 () (_ BitVec 32))

(assert (=> b!1374179 (= lt!603317 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603320 () (_ BitVec 32))

(assert (=> b!1374179 (= lt!603320 (arrayCountValidKeys!0 lt!603319 (bvadd #b00000000000000000000000000000001 i!1457) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374180 () Bool)

(declare-fun res!917486 () Bool)

(assert (=> b!1374180 (=> (not res!917486) (not e!778513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374180 (= res!917486 (validKeyInArray!0 (select (arr!44986 a!4142) i!1457)))))

(declare-fun b!1374181 () Bool)

(declare-fun res!917483 () Bool)

(assert (=> b!1374181 (=> (not res!917483) (not e!778513))))

(assert (=> b!1374181 (= res!917483 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917487 () Bool)

(assert (=> start!116546 (=> (not res!917487) (not e!778513))))

(assert (=> start!116546 (= res!917487 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45537 a!4142))))))

(assert (=> start!116546 e!778513))

(assert (=> start!116546 true))

(declare-fun array_inv!33931 (array!93169) Bool)

(assert (=> start!116546 (array_inv!33931 a!4142)))

(declare-fun b!1374182 () Bool)

(declare-fun res!917484 () Bool)

(assert (=> b!1374182 (=> (not res!917484) (not e!778513))))

(assert (=> b!1374182 (= res!917484 (bvslt (size!45537 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116546 res!917487) b!1374180))

(assert (= (and b!1374180 res!917486) b!1374181))

(assert (= (and b!1374181 res!917483) b!1374182))

(assert (= (and b!1374182 res!917484) b!1374178))

(assert (= (and b!1374178 (not res!917485)) b!1374179))

(declare-fun m!1257493 () Bool)

(assert (=> b!1374180 m!1257493))

(assert (=> b!1374180 m!1257493))

(declare-fun m!1257495 () Bool)

(assert (=> b!1374180 m!1257495))

(declare-fun m!1257497 () Bool)

(assert (=> b!1374179 m!1257497))

(declare-fun m!1257499 () Bool)

(assert (=> b!1374179 m!1257499))

(declare-fun m!1257501 () Bool)

(assert (=> b!1374181 m!1257501))

(declare-fun m!1257503 () Bool)

(assert (=> start!116546 m!1257503))

(declare-fun m!1257505 () Bool)

(assert (=> b!1374178 m!1257505))

(declare-fun m!1257507 () Bool)

(assert (=> b!1374178 m!1257507))

(declare-fun m!1257509 () Bool)

(assert (=> b!1374178 m!1257509))

(declare-fun m!1257511 () Bool)

(assert (=> b!1374178 m!1257511))

(push 1)

(assert (not b!1374178))

(assert (not start!116546))

(assert (not b!1374180))

(assert (not b!1374181))

(assert (not b!1374179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

