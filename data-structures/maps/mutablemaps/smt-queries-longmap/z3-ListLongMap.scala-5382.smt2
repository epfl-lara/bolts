; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71916 () Bool)

(assert start!71916)

(declare-fun b!835247 () Bool)

(declare-fun res!568296 () Bool)

(declare-fun e!465986 () Bool)

(assert (=> b!835247 (=> (not res!568296) (not e!465986))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835247 (= res!568296 (validKeyInArray!0 k0!2968))))

(declare-fun b!835248 () Bool)

(declare-fun res!568300 () Bool)

(assert (=> b!835248 (=> (not res!568300) (not e!465986))))

(declare-datatypes ((array!46770 0))(
  ( (array!46771 (arr!22415 (Array (_ BitVec 32) (_ BitVec 64))) (size!22836 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46770)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46770 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835248 (= res!568300 (= (arrayCountValidKeys!0 (array!46771 (store (arr!22415 a!4227) i!1466 k0!2968) (size!22836 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!835249 () Bool)

(declare-fun res!568298 () Bool)

(assert (=> b!835249 (=> (not res!568298) (not e!465986))))

(assert (=> b!835249 (= res!568298 (not (validKeyInArray!0 (select (arr!22415 a!4227) to!390))))))

(declare-fun res!568299 () Bool)

(assert (=> start!71916 (=> (not res!568299) (not e!465986))))

(assert (=> start!71916 (= res!568299 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22836 a!4227))))))

(assert (=> start!71916 e!465986))

(assert (=> start!71916 true))

(declare-fun array_inv!17838 (array!46770) Bool)

(assert (=> start!71916 (array_inv!17838 a!4227)))

(declare-fun b!835250 () Bool)

(declare-fun res!568297 () Bool)

(assert (=> b!835250 (=> (not res!568297) (not e!465986))))

(assert (=> b!835250 (= res!568297 (not (validKeyInArray!0 (select (arr!22415 a!4227) i!1466))))))

(declare-fun b!835251 () Bool)

(declare-fun res!568294 () Bool)

(assert (=> b!835251 (=> (not res!568294) (not e!465986))))

(assert (=> b!835251 (= res!568294 (not (= to!390 (size!22836 a!4227))))))

(declare-fun b!835252 () Bool)

(assert (=> b!835252 (= e!465986 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvsge to!390 (size!22836 a!4227))))))

(declare-fun b!835253 () Bool)

(declare-fun res!568295 () Bool)

(assert (=> b!835253 (=> (not res!568295) (not e!465986))))

(assert (=> b!835253 (= res!568295 (and (bvslt (size!22836 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22836 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71916 res!568299) b!835250))

(assert (= (and b!835250 res!568297) b!835247))

(assert (= (and b!835247 res!568296) b!835253))

(assert (= (and b!835253 res!568295) b!835248))

(assert (= (and b!835248 res!568300) b!835251))

(assert (= (and b!835251 res!568294) b!835249))

(assert (= (and b!835249 res!568298) b!835252))

(declare-fun m!780529 () Bool)

(assert (=> b!835248 m!780529))

(declare-fun m!780531 () Bool)

(assert (=> b!835248 m!780531))

(declare-fun m!780533 () Bool)

(assert (=> b!835248 m!780533))

(declare-fun m!780535 () Bool)

(assert (=> b!835250 m!780535))

(assert (=> b!835250 m!780535))

(declare-fun m!780537 () Bool)

(assert (=> b!835250 m!780537))

(declare-fun m!780539 () Bool)

(assert (=> start!71916 m!780539))

(declare-fun m!780541 () Bool)

(assert (=> b!835249 m!780541))

(assert (=> b!835249 m!780541))

(declare-fun m!780543 () Bool)

(assert (=> b!835249 m!780543))

(declare-fun m!780545 () Bool)

(assert (=> b!835247 m!780545))

(check-sat (not b!835249) (not b!835248) (not start!71916) (not b!835250) (not b!835247))
(check-sat)
