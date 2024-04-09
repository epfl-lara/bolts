; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116734 () Bool)

(assert start!116734)

(declare-fun b!1375253 () Bool)

(declare-fun res!918432 () Bool)

(declare-fun e!779107 () Bool)

(assert (=> b!1375253 (=> (not res!918432) (not e!779107))))

(declare-datatypes ((array!93321 0))(
  ( (array!93322 (arr!45059 (Array (_ BitVec 32) (_ BitVec 64))) (size!45610 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93321)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375253 (= res!918432 (validKeyInArray!0 (select (arr!45059 a!4032) i!1445)))))

(declare-fun b!1375255 () Bool)

(declare-fun e!779106 () Bool)

(assert (=> b!1375255 (= e!779106 (not true))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604266 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93321 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375255 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!604266))))

(declare-datatypes ((Unit!45487 0))(
  ( (Unit!45488) )
))
(declare-fun lt!604267 () Unit!45487)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93321 (_ BitVec 32) (_ BitVec 32)) Unit!45487)

(assert (=> b!1375255 (= lt!604267 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375256 () Bool)

(declare-fun res!918430 () Bool)

(assert (=> b!1375256 (=> (not res!918430) (not e!779107))))

(assert (=> b!1375256 (= res!918430 (and (bvslt (size!45610 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45610 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375257 () Bool)

(declare-fun res!918431 () Bool)

(assert (=> b!1375257 (=> (not res!918431) (not e!779106))))

(assert (=> b!1375257 (= res!918431 (validKeyInArray!0 (select (arr!45059 a!4032) to!206)))))

(declare-fun b!1375258 () Bool)

(declare-fun res!918433 () Bool)

(assert (=> b!1375258 (=> (not res!918433) (not e!779107))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375258 (= res!918433 (not (validKeyInArray!0 k0!2947)))))

(declare-fun res!918435 () Bool)

(assert (=> start!116734 (=> (not res!918435) (not e!779107))))

(assert (=> start!116734 (= res!918435 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45610 a!4032))))))

(assert (=> start!116734 e!779107))

(assert (=> start!116734 true))

(declare-fun array_inv!34004 (array!93321) Bool)

(assert (=> start!116734 (array_inv!34004 a!4032)))

(declare-fun b!1375254 () Bool)

(assert (=> b!1375254 (= e!779107 e!779106)))

(declare-fun res!918434 () Bool)

(assert (=> b!1375254 (=> (not res!918434) (not e!779106))))

(declare-fun lt!604265 () (_ BitVec 32))

(assert (=> b!1375254 (= res!918434 (and (= lt!604265 lt!604266) (not (= to!206 (size!45610 a!4032)))))))

(assert (=> b!1375254 (= lt!604266 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375254 (= lt!604265 (arrayCountValidKeys!0 (array!93322 (store (arr!45059 a!4032) i!1445 k0!2947) (size!45610 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (= (and start!116734 res!918435) b!1375253))

(assert (= (and b!1375253 res!918432) b!1375258))

(assert (= (and b!1375258 res!918433) b!1375256))

(assert (= (and b!1375256 res!918430) b!1375254))

(assert (= (and b!1375254 res!918434) b!1375257))

(assert (= (and b!1375257 res!918431) b!1375255))

(declare-fun m!1259123 () Bool)

(assert (=> b!1375258 m!1259123))

(declare-fun m!1259125 () Bool)

(assert (=> b!1375255 m!1259125))

(declare-fun m!1259127 () Bool)

(assert (=> b!1375255 m!1259127))

(declare-fun m!1259129 () Bool)

(assert (=> b!1375254 m!1259129))

(declare-fun m!1259131 () Bool)

(assert (=> b!1375254 m!1259131))

(declare-fun m!1259133 () Bool)

(assert (=> b!1375254 m!1259133))

(declare-fun m!1259135 () Bool)

(assert (=> start!116734 m!1259135))

(declare-fun m!1259137 () Bool)

(assert (=> b!1375257 m!1259137))

(assert (=> b!1375257 m!1259137))

(declare-fun m!1259139 () Bool)

(assert (=> b!1375257 m!1259139))

(declare-fun m!1259141 () Bool)

(assert (=> b!1375253 m!1259141))

(assert (=> b!1375253 m!1259141))

(declare-fun m!1259143 () Bool)

(assert (=> b!1375253 m!1259143))

(check-sat (not b!1375254) (not b!1375255) (not b!1375253) (not b!1375257) (not b!1375258) (not start!116734))
(check-sat)
