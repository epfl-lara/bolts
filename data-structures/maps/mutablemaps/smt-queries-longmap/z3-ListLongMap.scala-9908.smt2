; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117238 () Bool)

(assert start!117238)

(declare-fun b!1379049 () Bool)

(declare-fun e!781237 () Bool)

(declare-fun e!781238 () Bool)

(assert (=> b!1379049 (= e!781237 e!781238)))

(declare-fun res!921692 () Bool)

(assert (=> b!1379049 (=> (not res!921692) (not e!781238))))

(declare-fun lt!607104 () (_ BitVec 32))

(declare-fun lt!607107 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379049 (= res!921692 (and (= lt!607104 (bvsub lt!607107 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93771 0))(
  ( (array!93772 (arr!45281 (Array (_ BitVec 32) (_ BitVec 64))) (size!45832 (_ BitVec 32))) )
))
(declare-fun lt!607105 () array!93771)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93771 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379049 (= lt!607104 (arrayCountValidKeys!0 lt!607105 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93771)

(assert (=> b!1379049 (= lt!607107 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1379049 (= lt!607105 (array!93772 (store (arr!45281 a!4094) i!1451 k0!2953) (size!45832 a!4094)))))

(declare-fun b!1379050 () Bool)

(assert (=> b!1379050 (= e!781238 (not true))))

(assert (=> b!1379050 (= (bvadd (arrayCountValidKeys!0 lt!607105 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607104) (arrayCountValidKeys!0 lt!607105 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45787 0))(
  ( (Unit!45788) )
))
(declare-fun lt!607106 () Unit!45787)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45787)

(assert (=> b!1379050 (= lt!607106 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607105 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> b!1379050 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607107) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607108 () Unit!45787)

(assert (=> b!1379050 (= lt!607108 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379051 () Bool)

(declare-fun res!921695 () Bool)

(assert (=> b!1379051 (=> (not res!921695) (not e!781237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379051 (= res!921695 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1379052 () Bool)

(declare-fun res!921696 () Bool)

(assert (=> b!1379052 (=> (not res!921696) (not e!781237))))

(assert (=> b!1379052 (= res!921696 (and (bvslt (size!45832 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45832 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921694 () Bool)

(assert (=> start!117238 (=> (not res!921694) (not e!781237))))

(assert (=> start!117238 (= res!921694 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45832 a!4094))))))

(assert (=> start!117238 e!781237))

(assert (=> start!117238 true))

(declare-fun array_inv!34226 (array!93771) Bool)

(assert (=> start!117238 (array_inv!34226 a!4094)))

(declare-fun b!1379053 () Bool)

(declare-fun res!921693 () Bool)

(assert (=> b!1379053 (=> (not res!921693) (not e!781237))))

(assert (=> b!1379053 (= res!921693 (validKeyInArray!0 (select (arr!45281 a!4094) i!1451)))))

(assert (= (and start!117238 res!921694) b!1379053))

(assert (= (and b!1379053 res!921693) b!1379051))

(assert (= (and b!1379051 res!921695) b!1379052))

(assert (= (and b!1379052 res!921696) b!1379049))

(assert (= (and b!1379049 res!921692) b!1379050))

(declare-fun m!1264025 () Bool)

(assert (=> b!1379050 m!1264025))

(declare-fun m!1264027 () Bool)

(assert (=> b!1379050 m!1264027))

(declare-fun m!1264029 () Bool)

(assert (=> b!1379050 m!1264029))

(declare-fun m!1264031 () Bool)

(assert (=> b!1379050 m!1264031))

(declare-fun m!1264033 () Bool)

(assert (=> b!1379050 m!1264033))

(declare-fun m!1264035 () Bool)

(assert (=> b!1379050 m!1264035))

(declare-fun m!1264037 () Bool)

(assert (=> b!1379049 m!1264037))

(declare-fun m!1264039 () Bool)

(assert (=> b!1379049 m!1264039))

(declare-fun m!1264041 () Bool)

(assert (=> b!1379049 m!1264041))

(declare-fun m!1264043 () Bool)

(assert (=> b!1379051 m!1264043))

(declare-fun m!1264045 () Bool)

(assert (=> b!1379053 m!1264045))

(assert (=> b!1379053 m!1264045))

(declare-fun m!1264047 () Bool)

(assert (=> b!1379053 m!1264047))

(declare-fun m!1264049 () Bool)

(assert (=> start!117238 m!1264049))

(check-sat (not b!1379050) (not start!117238) (not b!1379049) (not b!1379053) (not b!1379051))
(check-sat)
