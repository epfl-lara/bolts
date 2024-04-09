; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71910 () Bool)

(assert start!71910)

(declare-fun b!835184 () Bool)

(declare-fun res!568231 () Bool)

(declare-fun e!465961 () Bool)

(assert (=> b!835184 (=> (not res!568231) (not e!465961))))

(declare-datatypes ((array!46764 0))(
  ( (array!46765 (arr!22412 (Array (_ BitVec 32) (_ BitVec 64))) (size!22833 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46764)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835184 (= res!568231 (not (validKeyInArray!0 (select (arr!22412 a!4227) i!1466))))))

(declare-fun res!568234 () Bool)

(assert (=> start!71910 (=> (not res!568234) (not e!465961))))

(assert (=> start!71910 (= res!568234 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22833 a!4227))))))

(assert (=> start!71910 e!465961))

(assert (=> start!71910 true))

(declare-fun array_inv!17835 (array!46764) Bool)

(assert (=> start!71910 (array_inv!17835 a!4227)))

(declare-fun b!835185 () Bool)

(declare-fun e!465962 () Bool)

(assert (=> b!835185 (= e!465961 e!465962)))

(declare-fun res!568232 () Bool)

(assert (=> b!835185 (=> (not res!568232) (not e!465962))))

(declare-fun lt!379644 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!379643 () (_ BitVec 32))

(assert (=> b!835185 (= res!568232 (and (= lt!379644 lt!379643) (not (= to!390 (size!22833 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46764 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835185 (= lt!379643 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835185 (= lt!379644 (arrayCountValidKeys!0 (array!46765 (store (arr!22412 a!4227) i!1466 k0!2968) (size!22833 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835186 () Bool)

(declare-fun e!465959 () Bool)

(assert (=> b!835186 (= e!465962 (not e!465959))))

(declare-fun res!568237 () Bool)

(assert (=> b!835186 (=> (not res!568237) (not e!465959))))

(assert (=> b!835186 (= res!568237 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvslt to!390 (size!22833 a!4227))))))

(assert (=> b!835186 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!379643))))

(declare-datatypes ((Unit!28708 0))(
  ( (Unit!28709) )
))
(declare-fun lt!379642 () Unit!28708)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46764 (_ BitVec 32) (_ BitVec 32)) Unit!28708)

(assert (=> b!835186 (= lt!379642 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835187 () Bool)

(declare-fun res!568236 () Bool)

(assert (=> b!835187 (=> (not res!568236) (not e!465961))))

(assert (=> b!835187 (= res!568236 (validKeyInArray!0 k0!2968))))

(declare-fun b!835188 () Bool)

(declare-fun res!568235 () Bool)

(assert (=> b!835188 (=> (not res!568235) (not e!465961))))

(assert (=> b!835188 (= res!568235 (and (bvslt (size!22833 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22833 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835189 () Bool)

(declare-fun res!568233 () Bool)

(assert (=> b!835189 (=> (not res!568233) (not e!465962))))

(assert (=> b!835189 (= res!568233 (validKeyInArray!0 (select (arr!22412 a!4227) to!390)))))

(declare-fun b!835190 () Bool)

(assert (=> b!835190 (= e!465959 (validKeyInArray!0 (select (store (arr!22412 a!4227) i!1466 k0!2968) to!390)))))

(assert (= (and start!71910 res!568234) b!835184))

(assert (= (and b!835184 res!568231) b!835187))

(assert (= (and b!835187 res!568236) b!835188))

(assert (= (and b!835188 res!568235) b!835185))

(assert (= (and b!835185 res!568232) b!835189))

(assert (= (and b!835189 res!568233) b!835186))

(assert (= (and b!835186 res!568237) b!835190))

(declare-fun m!780459 () Bool)

(assert (=> b!835190 m!780459))

(declare-fun m!780461 () Bool)

(assert (=> b!835190 m!780461))

(assert (=> b!835190 m!780461))

(declare-fun m!780463 () Bool)

(assert (=> b!835190 m!780463))

(declare-fun m!780465 () Bool)

(assert (=> b!835184 m!780465))

(assert (=> b!835184 m!780465))

(declare-fun m!780467 () Bool)

(assert (=> b!835184 m!780467))

(declare-fun m!780469 () Bool)

(assert (=> start!71910 m!780469))

(declare-fun m!780471 () Bool)

(assert (=> b!835186 m!780471))

(declare-fun m!780473 () Bool)

(assert (=> b!835186 m!780473))

(declare-fun m!780475 () Bool)

(assert (=> b!835187 m!780475))

(declare-fun m!780477 () Bool)

(assert (=> b!835189 m!780477))

(assert (=> b!835189 m!780477))

(declare-fun m!780479 () Bool)

(assert (=> b!835189 m!780479))

(declare-fun m!780481 () Bool)

(assert (=> b!835185 m!780481))

(assert (=> b!835185 m!780459))

(declare-fun m!780483 () Bool)

(assert (=> b!835185 m!780483))

(check-sat (not b!835190) (not b!835189) (not b!835184) (not start!71910) (not b!835187) (not b!835186) (not b!835185))
(check-sat)
