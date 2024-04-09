; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116686 () Bool)

(assert start!116686)

(declare-fun b!1374955 () Bool)

(declare-fun res!918133 () Bool)

(declare-fun e!778939 () Bool)

(assert (=> b!1374955 (=> (not res!918133) (not e!778939))))

(declare-datatypes ((array!93273 0))(
  ( (array!93274 (arr!45035 (Array (_ BitVec 32) (_ BitVec 64))) (size!45586 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93273)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374955 (= res!918133 (validKeyInArray!0 (select (arr!45035 a!4142) i!1457)))))

(declare-fun b!1374958 () Bool)

(assert (=> b!1374958 (= e!778939 (not (and (bvsge (size!45586 a!4142) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000))))))

(declare-fun lt!603916 () array!93273)

(declare-fun arrayCountValidKeys!0 (array!93273 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374958 (= (arrayCountValidKeys!0 lt!603916 (bvadd #b00000000000000000000000000000001 i!1457) (size!45586 a!4142)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45586 a!4142)))))

(declare-datatypes ((Unit!45457 0))(
  ( (Unit!45458) )
))
(declare-fun lt!603915 () Unit!45457)

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93273 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45457)

(assert (=> b!1374958 (= lt!603915 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k0!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374958 (= (arrayCountValidKeys!0 lt!603916 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374958 (= lt!603916 (array!93274 (store (arr!45035 a!4142) i!1457 k0!2959) (size!45586 a!4142)))))

(declare-fun lt!603914 () Unit!45457)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93273 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45457)

(assert (=> b!1374958 (= lt!603914 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k0!2959 i!1457))))

(declare-fun b!1374957 () Bool)

(declare-fun res!918135 () Bool)

(assert (=> b!1374957 (=> (not res!918135) (not e!778939))))

(assert (=> b!1374957 (= res!918135 (bvslt (size!45586 a!4142) #b01111111111111111111111111111111))))

(declare-fun res!918134 () Bool)

(assert (=> start!116686 (=> (not res!918134) (not e!778939))))

(assert (=> start!116686 (= res!918134 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45586 a!4142))))))

(assert (=> start!116686 e!778939))

(assert (=> start!116686 true))

(declare-fun array_inv!33980 (array!93273) Bool)

(assert (=> start!116686 (array_inv!33980 a!4142)))

(declare-fun b!1374956 () Bool)

(declare-fun res!918132 () Bool)

(assert (=> b!1374956 (=> (not res!918132) (not e!778939))))

(assert (=> b!1374956 (= res!918132 (not (validKeyInArray!0 k0!2959)))))

(assert (= (and start!116686 res!918134) b!1374955))

(assert (= (and b!1374955 res!918133) b!1374956))

(assert (= (and b!1374956 res!918132) b!1374957))

(assert (= (and b!1374957 res!918135) b!1374958))

(declare-fun m!1258631 () Bool)

(assert (=> b!1374955 m!1258631))

(assert (=> b!1374955 m!1258631))

(declare-fun m!1258633 () Bool)

(assert (=> b!1374955 m!1258633))

(declare-fun m!1258635 () Bool)

(assert (=> b!1374958 m!1258635))

(declare-fun m!1258637 () Bool)

(assert (=> b!1374958 m!1258637))

(declare-fun m!1258639 () Bool)

(assert (=> b!1374958 m!1258639))

(declare-fun m!1258641 () Bool)

(assert (=> b!1374958 m!1258641))

(declare-fun m!1258643 () Bool)

(assert (=> b!1374958 m!1258643))

(declare-fun m!1258645 () Bool)

(assert (=> b!1374958 m!1258645))

(declare-fun m!1258647 () Bool)

(assert (=> b!1374958 m!1258647))

(declare-fun m!1258649 () Bool)

(assert (=> start!116686 m!1258649))

(declare-fun m!1258651 () Bool)

(assert (=> b!1374956 m!1258651))

(check-sat (not b!1374958) (not b!1374955) (not start!116686) (not b!1374956))
(check-sat)
