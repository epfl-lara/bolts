; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116626 () Bool)

(assert start!116626)

(declare-fun b!1374652 () Bool)

(declare-fun e!778778 () Bool)

(assert (=> b!1374652 (= e!778778 (not true))))

(declare-datatypes ((array!93234 0))(
  ( (array!93235 (arr!45017 (Array (_ BitVec 32) (_ BitVec 64))) (size!45568 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93234)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93234 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374652 (= (arrayCountValidKeys!0 (array!93235 (store (arr!45017 a!4142) i!1457 k0!2959) (size!45568 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45421 0))(
  ( (Unit!45422) )
))
(declare-fun lt!603814 () Unit!45421)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93234 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45421)

(assert (=> b!1374652 (= lt!603814 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun res!917899 () Bool)

(assert (=> start!116626 (=> (not res!917899) (not e!778778))))

(assert (=> start!116626 (= res!917899 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45568 a!4142))))))

(assert (=> start!116626 e!778778))

(assert (=> start!116626 true))

(declare-fun array_inv!33962 (array!93234) Bool)

(assert (=> start!116626 (array_inv!33962 a!4142)))

(declare-fun b!1374649 () Bool)

(declare-fun res!917900 () Bool)

(assert (=> b!1374649 (=> (not res!917900) (not e!778778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374649 (= res!917900 (validKeyInArray!0 (select (arr!45017 a!4142) i!1457)))))

(declare-fun b!1374651 () Bool)

(declare-fun res!917901 () Bool)

(assert (=> b!1374651 (=> (not res!917901) (not e!778778))))

(assert (=> b!1374651 (= res!917901 (bvslt (size!45568 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374650 () Bool)

(declare-fun res!917898 () Bool)

(assert (=> b!1374650 (=> (not res!917898) (not e!778778))))

(assert (=> b!1374650 (= res!917898 (not (validKeyInArray!0 k0!2959)))))

(assert (= (and start!116626 res!917899) b!1374649))

(assert (= (and b!1374649 res!917900) b!1374650))

(assert (= (and b!1374650 res!917898) b!1374651))

(assert (= (and b!1374651 res!917901) b!1374652))

(declare-fun m!1258235 () Bool)

(assert (=> b!1374652 m!1258235))

(declare-fun m!1258237 () Bool)

(assert (=> b!1374652 m!1258237))

(declare-fun m!1258239 () Bool)

(assert (=> b!1374652 m!1258239))

(declare-fun m!1258241 () Bool)

(assert (=> b!1374652 m!1258241))

(declare-fun m!1258243 () Bool)

(assert (=> start!116626 m!1258243))

(declare-fun m!1258245 () Bool)

(assert (=> b!1374649 m!1258245))

(assert (=> b!1374649 m!1258245))

(declare-fun m!1258247 () Bool)

(assert (=> b!1374649 m!1258247))

(declare-fun m!1258249 () Bool)

(assert (=> b!1374650 m!1258249))

(check-sat (not b!1374649) (not b!1374650) (not b!1374652) (not start!116626))
