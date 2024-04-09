; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116684 () Bool)

(assert start!116684)

(declare-fun b!1374945 () Bool)

(declare-fun res!918122 () Bool)

(declare-fun e!778934 () Bool)

(assert (=> b!1374945 (=> (not res!918122) (not e!778934))))

(declare-datatypes ((array!93271 0))(
  ( (array!93272 (arr!45034 (Array (_ BitVec 32) (_ BitVec 64))) (size!45585 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93271)

(assert (=> b!1374945 (= res!918122 (bvslt (size!45585 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374943 () Bool)

(declare-fun res!918120 () Bool)

(assert (=> b!1374943 (=> (not res!918120) (not e!778934))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374943 (= res!918120 (validKeyInArray!0 (select (arr!45034 a!4142) i!1457)))))

(declare-fun res!918121 () Bool)

(assert (=> start!116684 (=> (not res!918121) (not e!778934))))

(assert (=> start!116684 (= res!918121 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45585 a!4142))))))

(assert (=> start!116684 e!778934))

(assert (=> start!116684 true))

(declare-fun array_inv!33979 (array!93271) Bool)

(assert (=> start!116684 (array_inv!33979 a!4142)))

(declare-fun b!1374944 () Bool)

(declare-fun res!918123 () Bool)

(assert (=> b!1374944 (=> (not res!918123) (not e!778934))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374944 (= res!918123 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374946 () Bool)

(assert (=> b!1374946 (= e!778934 (not (and (bvsge (size!45585 a!4142) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000))))))

(declare-fun lt!603906 () array!93271)

(declare-fun arrayCountValidKeys!0 (array!93271 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374946 (= (arrayCountValidKeys!0 lt!603906 (bvadd #b00000000000000000000000000000001 i!1457) (size!45585 a!4142)) (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45585 a!4142)))))

(declare-datatypes ((Unit!45455 0))(
  ( (Unit!45456) )
))
(declare-fun lt!603905 () Unit!45455)

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93271 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45455)

(assert (=> b!1374946 (= lt!603905 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1374946 (= (arrayCountValidKeys!0 lt!603906 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(assert (=> b!1374946 (= lt!603906 (array!93272 (store (arr!45034 a!4142) i!1457 k!2959) (size!45585 a!4142)))))

(declare-fun lt!603907 () Unit!45455)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93271 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45455)

(assert (=> b!1374946 (= lt!603907 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(assert (= (and start!116684 res!918121) b!1374943))

(assert (= (and b!1374943 res!918120) b!1374944))

(assert (= (and b!1374944 res!918123) b!1374945))

(assert (= (and b!1374945 res!918122) b!1374946))

(declare-fun m!1258609 () Bool)

(assert (=> b!1374943 m!1258609))

(assert (=> b!1374943 m!1258609))

(declare-fun m!1258611 () Bool)

(assert (=> b!1374943 m!1258611))

(declare-fun m!1258613 () Bool)

(assert (=> start!116684 m!1258613))

(declare-fun m!1258615 () Bool)

(assert (=> b!1374944 m!1258615))

(declare-fun m!1258617 () Bool)

(assert (=> b!1374946 m!1258617))

(declare-fun m!1258619 () Bool)

(assert (=> b!1374946 m!1258619))

(declare-fun m!1258621 () Bool)

(assert (=> b!1374946 m!1258621))

(declare-fun m!1258623 () Bool)

(assert (=> b!1374946 m!1258623))

(declare-fun m!1258625 () Bool)

(assert (=> b!1374946 m!1258625))

(declare-fun m!1258627 () Bool)

(assert (=> b!1374946 m!1258627))

(declare-fun m!1258629 () Bool)

(assert (=> b!1374946 m!1258629))

(push 1)

(assert (not b!1374946))

(assert (not b!1374944))

(assert (not b!1374943))

(assert (not start!116684))

