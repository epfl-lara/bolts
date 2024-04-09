; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116740 () Bool)

(assert start!116740)

(declare-fun b!1375300 () Bool)

(declare-fun e!779129 () Bool)

(assert (=> b!1375300 (= e!779129 false)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93327 0))(
  ( (array!93328 (arr!45062 (Array (_ BitVec 32) (_ BitVec 64))) (size!45613 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93327)

(declare-fun lt!604288 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93327 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375300 (= lt!604288 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k0!2947 () (_ BitVec 64))

(declare-fun lt!604287 () (_ BitVec 32))

(assert (=> b!1375300 (= lt!604287 (arrayCountValidKeys!0 (array!93328 (store (arr!45062 a!4032) i!1445 k0!2947) (size!45613 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375298 () Bool)

(declare-fun res!918476 () Bool)

(assert (=> b!1375298 (=> (not res!918476) (not e!779129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375298 (= res!918476 (not (validKeyInArray!0 k0!2947)))))

(declare-fun b!1375297 () Bool)

(declare-fun res!918477 () Bool)

(assert (=> b!1375297 (=> (not res!918477) (not e!779129))))

(assert (=> b!1375297 (= res!918477 (validKeyInArray!0 (select (arr!45062 a!4032) i!1445)))))

(declare-fun b!1375299 () Bool)

(declare-fun res!918475 () Bool)

(assert (=> b!1375299 (=> (not res!918475) (not e!779129))))

(assert (=> b!1375299 (= res!918475 (and (bvslt (size!45613 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45613 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun res!918474 () Bool)

(assert (=> start!116740 (=> (not res!918474) (not e!779129))))

(assert (=> start!116740 (= res!918474 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45613 a!4032))))))

(assert (=> start!116740 e!779129))

(assert (=> start!116740 true))

(declare-fun array_inv!34007 (array!93327) Bool)

(assert (=> start!116740 (array_inv!34007 a!4032)))

(assert (= (and start!116740 res!918474) b!1375297))

(assert (= (and b!1375297 res!918477) b!1375298))

(assert (= (and b!1375298 res!918476) b!1375299))

(assert (= (and b!1375299 res!918475) b!1375300))

(declare-fun m!1259181 () Bool)

(assert (=> b!1375300 m!1259181))

(declare-fun m!1259183 () Bool)

(assert (=> b!1375300 m!1259183))

(declare-fun m!1259185 () Bool)

(assert (=> b!1375300 m!1259185))

(declare-fun m!1259187 () Bool)

(assert (=> b!1375298 m!1259187))

(declare-fun m!1259189 () Bool)

(assert (=> b!1375297 m!1259189))

(assert (=> b!1375297 m!1259189))

(declare-fun m!1259191 () Bool)

(assert (=> b!1375297 m!1259191))

(declare-fun m!1259193 () Bool)

(assert (=> start!116740 m!1259193))

(check-sat (not b!1375300) (not start!116740) (not b!1375297) (not b!1375298))
