; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116830 () Bool)

(assert start!116830)

(declare-fun b!1376269 () Bool)

(declare-fun res!919267 () Bool)

(declare-fun e!779678 () Bool)

(assert (=> b!1376269 (=> (not res!919267) (not e!779678))))

(declare-datatypes ((array!93417 0))(
  ( (array!93418 (arr!45107 (Array (_ BitVec 32) (_ BitVec 64))) (size!45658 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93417)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376269 (= res!919267 (validKeyInArray!0 (select (arr!45107 a!4032) i!1445)))))

(declare-fun res!919269 () Bool)

(assert (=> start!116830 (=> (not res!919269) (not e!779678))))

(assert (=> start!116830 (= res!919269 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45658 a!4032))))))

(assert (=> start!116830 e!779678))

(assert (=> start!116830 true))

(declare-fun array_inv!34052 (array!93417) Bool)

(assert (=> start!116830 (array_inv!34052 a!4032)))

(declare-fun b!1376271 () Bool)

(declare-fun res!919268 () Bool)

(assert (=> b!1376271 (=> (not res!919268) (not e!779678))))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1376271 (= res!919268 (and (bvslt (size!45658 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45658 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376272 () Bool)

(assert (=> b!1376272 (= e!779678 false)))

(declare-fun lt!605214 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93417 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1376272 (= lt!605214 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605215 () (_ BitVec 32))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1376272 (= lt!605215 (arrayCountValidKeys!0 (array!93418 (store (arr!45107 a!4032) i!1445 k0!2947) (size!45658 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1376270 () Bool)

(declare-fun res!919266 () Bool)

(assert (=> b!1376270 (=> (not res!919266) (not e!779678))))

(assert (=> b!1376270 (= res!919266 (not (validKeyInArray!0 k0!2947)))))

(assert (= (and start!116830 res!919269) b!1376269))

(assert (= (and b!1376269 res!919267) b!1376270))

(assert (= (and b!1376270 res!919266) b!1376271))

(assert (= (and b!1376271 res!919268) b!1376272))

(declare-fun m!1260391 () Bool)

(assert (=> b!1376269 m!1260391))

(assert (=> b!1376269 m!1260391))

(declare-fun m!1260393 () Bool)

(assert (=> b!1376269 m!1260393))

(declare-fun m!1260395 () Bool)

(assert (=> start!116830 m!1260395))

(declare-fun m!1260397 () Bool)

(assert (=> b!1376272 m!1260397))

(declare-fun m!1260399 () Bool)

(assert (=> b!1376272 m!1260399))

(declare-fun m!1260401 () Bool)

(assert (=> b!1376272 m!1260401))

(declare-fun m!1260403 () Bool)

(assert (=> b!1376270 m!1260403))

(check-sat (not b!1376272) (not start!116830) (not b!1376269) (not b!1376270))
