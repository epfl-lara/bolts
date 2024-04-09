; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116712 () Bool)

(assert start!116712)

(declare-fun b!1375128 () Bool)

(declare-fun e!779036 () Bool)

(declare-fun e!779034 () Bool)

(assert (=> b!1375128 (= e!779036 (not e!779034))))

(declare-fun res!918309 () Bool)

(assert (=> b!1375128 (=> res!918309 e!779034)))

(declare-datatypes ((array!93299 0))(
  ( (array!93300 (arr!45048 (Array (_ BitVec 32) (_ BitVec 64))) (size!45599 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93299)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1375128 (= res!918309 (or (bvslt (size!45599 a!4142) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000)))))

(declare-fun lt!604223 () (_ BitVec 32))

(declare-fun lt!604228 () (_ BitVec 32))

(declare-fun lt!604231 () (_ BitVec 32))

(assert (=> b!1375128 (= (bvadd lt!604223 lt!604228) lt!604231)))

(declare-fun arrayCountValidKeys!0 (array!93299 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375128 (= lt!604231 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (size!45599 a!4142)))))

(declare-datatypes ((Unit!45483 0))(
  ( (Unit!45484) )
))
(declare-fun lt!604222 () Unit!45483)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45483)

(assert (=> b!1375128 (= lt!604222 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4142 #b00000000000000000000000000000000 (size!45599 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604221 () (_ BitVec 32))

(assert (=> b!1375128 (= lt!604221 lt!604228)))

(assert (=> b!1375128 (= lt!604228 (arrayCountValidKeys!0 a!4142 (bvadd #b00000000000000000000000000000001 i!1457) (size!45599 a!4142)))))

(declare-fun lt!604224 () array!93299)

(assert (=> b!1375128 (= lt!604221 (arrayCountValidKeys!0 lt!604224 (bvadd #b00000000000000000000000000000001 i!1457) (size!45599 a!4142)))))

(declare-fun lt!604229 () Unit!45483)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 (array!93299 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45483)

(assert (=> b!1375128 (= lt!604229 (lemmaRemoveValidKeyAndNumKeysToImpliesToALength!0 a!4142 i!1457 k!2959 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!604227 () (_ BitVec 32))

(assert (=> b!1375128 (= lt!604227 (bvsub lt!604223 #b00000000000000000000000000000001))))

(assert (=> b!1375128 (= lt!604227 (arrayCountValidKeys!0 lt!604224 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375128 (= lt!604223 (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> b!1375128 (= lt!604224 (array!93300 (store (arr!45048 a!4142) i!1457 k!2959) (size!45599 a!4142)))))

(declare-fun lt!604225 () Unit!45483)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93299 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45483)

(assert (=> b!1375128 (= lt!604225 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1375129 () Bool)

(declare-fun lt!604226 () (_ BitVec 32))

(assert (=> b!1375129 (= e!779034 (= lt!604226 (bvsub lt!604231 #b00000000000000000000000000000001)))))

(assert (=> b!1375129 (= (bvadd lt!604227 lt!604221) lt!604226)))

(assert (=> b!1375129 (= lt!604226 (arrayCountValidKeys!0 lt!604224 #b00000000000000000000000000000000 (size!45599 a!4142)))))

(declare-fun lt!604230 () Unit!45483)

(assert (=> b!1375129 (= lt!604230 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!604224 #b00000000000000000000000000000000 (size!45599 a!4142) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1375130 () Bool)

(declare-fun res!918307 () Bool)

(assert (=> b!1375130 (=> (not res!918307) (not e!779036))))

(assert (=> b!1375130 (= res!918307 (bvslt (size!45599 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1375131 () Bool)

(declare-fun res!918308 () Bool)

(assert (=> b!1375131 (=> (not res!918308) (not e!779036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375131 (= res!918308 (validKeyInArray!0 (select (arr!45048 a!4142) i!1457)))))

(declare-fun b!1375132 () Bool)

(declare-fun res!918305 () Bool)

(assert (=> b!1375132 (=> (not res!918305) (not e!779036))))

(assert (=> b!1375132 (= res!918305 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!918306 () Bool)

(assert (=> start!116712 (=> (not res!918306) (not e!779036))))

(assert (=> start!116712 (= res!918306 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45599 a!4142))))))

(assert (=> start!116712 e!779036))

(assert (=> start!116712 true))

(declare-fun array_inv!33993 (array!93299) Bool)

(assert (=> start!116712 (array_inv!33993 a!4142)))

(assert (= (and start!116712 res!918306) b!1375131))

(assert (= (and b!1375131 res!918308) b!1375132))

(assert (= (and b!1375132 res!918305) b!1375130))

(assert (= (and b!1375130 res!918307) b!1375128))

(assert (= (and b!1375128 (not res!918309)) b!1375129))

(declare-fun m!1258981 () Bool)

(assert (=> b!1375129 m!1258981))

(declare-fun m!1258983 () Bool)

(assert (=> b!1375129 m!1258983))

(declare-fun m!1258985 () Bool)

(assert (=> start!116712 m!1258985))

(declare-fun m!1258987 () Bool)

(assert (=> b!1375131 m!1258987))

(assert (=> b!1375131 m!1258987))

(declare-fun m!1258989 () Bool)

(assert (=> b!1375131 m!1258989))

(declare-fun m!1258991 () Bool)

(assert (=> b!1375128 m!1258991))

(declare-fun m!1258993 () Bool)

(assert (=> b!1375128 m!1258993))

(declare-fun m!1258995 () Bool)

(assert (=> b!1375128 m!1258995))

(declare-fun m!1258997 () Bool)

(assert (=> b!1375128 m!1258997))

(declare-fun m!1258999 () Bool)

(assert (=> b!1375128 m!1258999))

(declare-fun m!1259001 () Bool)

(assert (=> b!1375128 m!1259001))

(declare-fun m!1259003 () Bool)

(assert (=> b!1375128 m!1259003))

(declare-fun m!1259005 () Bool)

(assert (=> b!1375128 m!1259005))

(declare-fun m!1259007 () Bool)

(assert (=> b!1375128 m!1259007))

(declare-fun m!1259009 () Bool)

(assert (=> b!1375132 m!1259009))

(push 1)

(assert (not start!116712))

(assert (not b!1375131))

(assert (not b!1375129))

(assert (not b!1375128))

(assert (not b!1375132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

