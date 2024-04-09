; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116688 () Bool)

(assert start!116688)

(declare-fun b!1374967 () Bool)

(declare-fun res!918147 () Bool)

(declare-fun e!778945 () Bool)

(assert (=> b!1374967 (=> (not res!918147) (not e!778945))))

(declare-datatypes ((array!93275 0))(
  ( (array!93276 (arr!45036 (Array (_ BitVec 32) (_ BitVec 64))) (size!45587 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93275)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374967 (= res!918147 (validKeyInArray!0 (select (arr!45036 a!4142) i!1457)))))

(declare-fun b!1374970 () Bool)

(assert (=> b!1374970 (= e!778945 (not (and (bvsge (size!45587 a!4142) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000))))))

(declare-fun lt!603923 () array!93275)

(declare-fun arrayCountValidKeys!0 (array!93275 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374970 (= (arrayCountValidKeys!0 lt!603923 (bvadd #b00000000000000000000000000000001 i!1457) (size!45587 a!4142)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45587 a!4142)))))

(declare-datatypes ((Unit!45459 0))(
  ( (Unit!45460) )
))
(declare-fun lt!603924 () Unit!45459)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93275 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45459)

(assert (=> b!1374970 (= lt!603924 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374970 (= (arrayCountValidKeys!0 lt!603923 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374970 (= lt!603923 (array!93276 (store (arr!45036 a!4142) i!1457 k!2959) (size!45587 a!4142)))))

(declare-fun lt!603925 () Unit!45459)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93275 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45459)

(assert (=> b!1374970 (= lt!603925 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374968 () Bool)

(declare-fun res!918145 () Bool)

(assert (=> b!1374968 (=> (not res!918145) (not e!778945))))

(assert (=> b!1374968 (= res!918145 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!918144 () Bool)

(assert (=> start!116688 (=> (not res!918144) (not e!778945))))

(assert (=> start!116688 (= res!918144 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45587 a!4142))))))

(assert (=> start!116688 e!778945))

(assert (=> start!116688 true))

(declare-fun array_inv!33981 (array!93275) Bool)

(assert (=> start!116688 (array_inv!33981 a!4142)))

(declare-fun b!1374969 () Bool)

(declare-fun res!918146 () Bool)

(assert (=> b!1374969 (=> (not res!918146) (not e!778945))))

(assert (=> b!1374969 (= res!918146 (bvslt (size!45587 a!4142) #b01111111111111111111111111111111))))

(assert (= (and start!116688 res!918144) b!1374967))

(assert (= (and b!1374967 res!918147) b!1374968))

(assert (= (and b!1374968 res!918145) b!1374969))

(assert (= (and b!1374969 res!918146) b!1374970))

(declare-fun m!1258653 () Bool)

(assert (=> b!1374967 m!1258653))

(assert (=> b!1374967 m!1258653))

(declare-fun m!1258655 () Bool)

(assert (=> b!1374967 m!1258655))

(declare-fun m!1258657 () Bool)

(assert (=> b!1374970 m!1258657))

(declare-fun m!1258659 () Bool)

(assert (=> b!1374970 m!1258659))

(declare-fun m!1258661 () Bool)

(assert (=> b!1374970 m!1258661))

(declare-fun m!1258663 () Bool)

(assert (=> b!1374970 m!1258663))

(declare-fun m!1258665 () Bool)

(assert (=> b!1374970 m!1258665))

(declare-fun m!1258667 () Bool)

(assert (=> b!1374970 m!1258667))

(declare-fun m!1258669 () Bool)

(assert (=> b!1374970 m!1258669))

(declare-fun m!1258671 () Bool)

(assert (=> b!1374968 m!1258671))

(declare-fun m!1258673 () Bool)

(assert (=> start!116688 m!1258673))

(push 1)

(assert (not start!116688))

(assert (not b!1374970))

(assert (not b!1374968))

(assert (not b!1374967))

(check-sat)

