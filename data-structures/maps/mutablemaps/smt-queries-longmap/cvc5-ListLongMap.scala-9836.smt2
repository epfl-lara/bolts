; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116744 () Bool)

(assert start!116744)

(declare-fun b!1375325 () Bool)

(declare-fun res!918502 () Bool)

(declare-fun e!779144 () Bool)

(assert (=> b!1375325 (=> (not res!918502) (not e!779144))))

(declare-datatypes ((array!93331 0))(
  ( (array!93332 (arr!45064 (Array (_ BitVec 32) (_ BitVec 64))) (size!45615 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93331)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375325 (= res!918502 (validKeyInArray!0 (select (arr!45064 a!4032) i!1445)))))

(declare-fun b!1375326 () Bool)

(declare-fun e!779142 () Bool)

(assert (=> b!1375326 (= e!779142 (not true))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604303 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93331 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375326 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!604303)))

(declare-datatypes ((Unit!45491 0))(
  ( (Unit!45492) )
))
(declare-fun lt!604301 () Unit!45491)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93331 (_ BitVec 32) (_ BitVec 32)) Unit!45491)

(assert (=> b!1375326 (= lt!604301 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375327 () Bool)

(declare-fun res!918503 () Bool)

(assert (=> b!1375327 (=> (not res!918503) (not e!779142))))

(assert (=> b!1375327 (= res!918503 (not (validKeyInArray!0 (select (arr!45064 a!4032) to!206))))))

(declare-fun res!918506 () Bool)

(assert (=> start!116744 (=> (not res!918506) (not e!779144))))

(assert (=> start!116744 (= res!918506 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45615 a!4032))))))

(assert (=> start!116744 e!779144))

(assert (=> start!116744 true))

(declare-fun array_inv!34009 (array!93331) Bool)

(assert (=> start!116744 (array_inv!34009 a!4032)))

(declare-fun b!1375328 () Bool)

(declare-fun res!918504 () Bool)

(assert (=> b!1375328 (=> (not res!918504) (not e!779144))))

(assert (=> b!1375328 (= res!918504 (and (bvslt (size!45615 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45615 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375329 () Bool)

(declare-fun res!918505 () Bool)

(assert (=> b!1375329 (=> (not res!918505) (not e!779144))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375329 (= res!918505 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375330 () Bool)

(assert (=> b!1375330 (= e!779144 e!779142)))

(declare-fun res!918507 () Bool)

(assert (=> b!1375330 (=> (not res!918507) (not e!779142))))

(declare-fun lt!604302 () (_ BitVec 32))

(assert (=> b!1375330 (= res!918507 (and (= lt!604302 lt!604303) (not (= to!206 (size!45615 a!4032)))))))

(assert (=> b!1375330 (= lt!604303 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375330 (= lt!604302 (arrayCountValidKeys!0 (array!93332 (store (arr!45064 a!4032) i!1445 k!2947) (size!45615 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116744 res!918506) b!1375325))

(assert (= (and b!1375325 res!918502) b!1375329))

(assert (= (and b!1375329 res!918505) b!1375328))

(assert (= (and b!1375328 res!918504) b!1375330))

(assert (= (and b!1375330 res!918507) b!1375327))

(assert (= (and b!1375327 res!918503) b!1375326))

(declare-fun m!1259209 () Bool)

(assert (=> b!1375329 m!1259209))

(declare-fun m!1259211 () Bool)

(assert (=> b!1375325 m!1259211))

(assert (=> b!1375325 m!1259211))

(declare-fun m!1259213 () Bool)

(assert (=> b!1375325 m!1259213))

(declare-fun m!1259215 () Bool)

(assert (=> b!1375327 m!1259215))

(assert (=> b!1375327 m!1259215))

(declare-fun m!1259217 () Bool)

(assert (=> b!1375327 m!1259217))

(declare-fun m!1259219 () Bool)

(assert (=> b!1375330 m!1259219))

(declare-fun m!1259221 () Bool)

(assert (=> b!1375330 m!1259221))

(declare-fun m!1259223 () Bool)

(assert (=> b!1375330 m!1259223))

(declare-fun m!1259225 () Bool)

(assert (=> start!116744 m!1259225))

(declare-fun m!1259227 () Bool)

(assert (=> b!1375326 m!1259227))

(declare-fun m!1259229 () Bool)

(assert (=> b!1375326 m!1259229))

(push 1)

