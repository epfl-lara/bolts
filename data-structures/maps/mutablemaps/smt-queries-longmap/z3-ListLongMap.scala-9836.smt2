; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116746 () Bool)

(assert start!116746)

(declare-fun b!1375343 () Bool)

(declare-fun res!918524 () Bool)

(declare-fun e!779151 () Bool)

(assert (=> b!1375343 (=> (not res!918524) (not e!779151))))

(declare-datatypes ((array!93333 0))(
  ( (array!93334 (arr!45065 (Array (_ BitVec 32) (_ BitVec 64))) (size!45616 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93333)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375343 (= res!918524 (validKeyInArray!0 (select (arr!45065 a!4032) i!1445)))))

(declare-fun b!1375344 () Bool)

(declare-fun res!918521 () Bool)

(declare-fun e!779152 () Bool)

(assert (=> b!1375344 (=> (not res!918521) (not e!779152))))

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1375344 (= res!918521 (not (validKeyInArray!0 (select (arr!45065 a!4032) to!206))))))

(declare-fun b!1375345 () Bool)

(declare-fun res!918523 () Bool)

(assert (=> b!1375345 (=> (not res!918523) (not e!779151))))

(assert (=> b!1375345 (= res!918523 (and (bvslt (size!45616 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45616 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375346 () Bool)

(declare-fun res!918520 () Bool)

(assert (=> b!1375346 (=> (not res!918520) (not e!779151))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375346 (= res!918520 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375347 () Bool)

(assert (=> b!1375347 (= e!779152 (not true))))

(declare-fun lt!604310 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93333 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375347 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) lt!604310)))

(declare-datatypes ((Unit!45493 0))(
  ( (Unit!45494) )
))
(declare-fun lt!604311 () Unit!45493)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93333 (_ BitVec 32) (_ BitVec 32)) Unit!45493)

(assert (=> b!1375347 (= lt!604311 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375348 () Bool)

(assert (=> b!1375348 (= e!779151 e!779152)))

(declare-fun res!918522 () Bool)

(assert (=> b!1375348 (=> (not res!918522) (not e!779152))))

(declare-fun lt!604312 () (_ BitVec 32))

(assert (=> b!1375348 (= res!918522 (and (= lt!604312 lt!604310) (not (= to!206 (size!45616 a!4032)))))))

(assert (=> b!1375348 (= lt!604310 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375348 (= lt!604312 (arrayCountValidKeys!0 (array!93334 (store (arr!45065 a!4032) i!1445 k0!2947) (size!45616 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!918525 () Bool)

(assert (=> start!116746 (=> (not res!918525) (not e!779151))))

(assert (=> start!116746 (= res!918525 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45616 a!4032))))))

(assert (=> start!116746 e!779151))

(assert (=> start!116746 true))

(declare-fun array_inv!34010 (array!93333) Bool)

(assert (=> start!116746 (array_inv!34010 a!4032)))

(assert (= (and start!116746 res!918525) b!1375343))

(assert (= (and b!1375343 res!918524) b!1375346))

(assert (= (and b!1375346 res!918520) b!1375345))

(assert (= (and b!1375345 res!918523) b!1375348))

(assert (= (and b!1375348 res!918522) b!1375344))

(assert (= (and b!1375344 res!918521) b!1375347))

(declare-fun m!1259231 () Bool)

(assert (=> b!1375343 m!1259231))

(assert (=> b!1375343 m!1259231))

(declare-fun m!1259233 () Bool)

(assert (=> b!1375343 m!1259233))

(declare-fun m!1259235 () Bool)

(assert (=> start!116746 m!1259235))

(declare-fun m!1259237 () Bool)

(assert (=> b!1375346 m!1259237))

(declare-fun m!1259239 () Bool)

(assert (=> b!1375344 m!1259239))

(assert (=> b!1375344 m!1259239))

(declare-fun m!1259241 () Bool)

(assert (=> b!1375344 m!1259241))

(declare-fun m!1259243 () Bool)

(assert (=> b!1375348 m!1259243))

(declare-fun m!1259245 () Bool)

(assert (=> b!1375348 m!1259245))

(declare-fun m!1259247 () Bool)

(assert (=> b!1375348 m!1259247))

(declare-fun m!1259249 () Bool)

(assert (=> b!1375347 m!1259249))

(declare-fun m!1259251 () Bool)

(assert (=> b!1375347 m!1259251))

(check-sat (not b!1375348) (not b!1375346) (not b!1375344) (not b!1375343) (not start!116746) (not b!1375347))
(check-sat)
