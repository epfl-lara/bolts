; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116736 () Bool)

(assert start!116736)

(declare-fun b!1375272 () Bool)

(declare-fun res!918449 () Bool)

(declare-fun e!779117 () Bool)

(assert (=> b!1375272 (=> (not res!918449) (not e!779117))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375272 (= res!918449 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375273 () Bool)

(declare-fun e!779116 () Bool)

(assert (=> b!1375273 (= e!779117 e!779116)))

(declare-fun res!918453 () Bool)

(assert (=> b!1375273 (=> (not res!918453) (not e!779116))))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93323 0))(
  ( (array!93324 (arr!45060 (Array (_ BitVec 32) (_ BitVec 64))) (size!45611 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93323)

(declare-fun lt!604276 () (_ BitVec 32))

(declare-fun lt!604275 () (_ BitVec 32))

(assert (=> b!1375273 (= res!918453 (and (= lt!604275 lt!604276) (not (= to!206 (size!45611 a!4032)))))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93323 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375273 (= lt!604276 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375273 (= lt!604275 (arrayCountValidKeys!0 (array!93324 (store (arr!45060 a!4032) i!1445 k!2947) (size!45611 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375274 () Bool)

(declare-fun res!918450 () Bool)

(assert (=> b!1375274 (=> (not res!918450) (not e!779117))))

(assert (=> b!1375274 (= res!918450 (and (bvslt (size!45611 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45611 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375275 () Bool)

(declare-fun res!918451 () Bool)

(assert (=> b!1375275 (=> (not res!918451) (not e!779116))))

(assert (=> b!1375275 (= res!918451 (validKeyInArray!0 (select (arr!45060 a!4032) to!206)))))

(declare-fun b!1375276 () Bool)

(declare-fun res!918452 () Bool)

(assert (=> b!1375276 (=> (not res!918452) (not e!779117))))

(assert (=> b!1375276 (= res!918452 (validKeyInArray!0 (select (arr!45060 a!4032) i!1445)))))

(declare-fun b!1375271 () Bool)

(assert (=> b!1375271 (= e!779116 (not true))))

(assert (=> b!1375271 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!604276))))

(declare-datatypes ((Unit!45489 0))(
  ( (Unit!45490) )
))
(declare-fun lt!604274 () Unit!45489)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93323 (_ BitVec 32) (_ BitVec 32)) Unit!45489)

(assert (=> b!1375271 (= lt!604274 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!918448 () Bool)

(assert (=> start!116736 (=> (not res!918448) (not e!779117))))

(assert (=> start!116736 (= res!918448 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45611 a!4032))))))

(assert (=> start!116736 e!779117))

(assert (=> start!116736 true))

(declare-fun array_inv!34005 (array!93323) Bool)

(assert (=> start!116736 (array_inv!34005 a!4032)))

(assert (= (and start!116736 res!918448) b!1375276))

(assert (= (and b!1375276 res!918452) b!1375272))

(assert (= (and b!1375272 res!918449) b!1375274))

(assert (= (and b!1375274 res!918450) b!1375273))

(assert (= (and b!1375273 res!918453) b!1375275))

(assert (= (and b!1375275 res!918451) b!1375271))

(declare-fun m!1259145 () Bool)

(assert (=> b!1375273 m!1259145))

(declare-fun m!1259147 () Bool)

(assert (=> b!1375273 m!1259147))

(declare-fun m!1259149 () Bool)

(assert (=> b!1375273 m!1259149))

(declare-fun m!1259151 () Bool)

(assert (=> start!116736 m!1259151))

(declare-fun m!1259153 () Bool)

(assert (=> b!1375275 m!1259153))

(assert (=> b!1375275 m!1259153))

(declare-fun m!1259155 () Bool)

(assert (=> b!1375275 m!1259155))

(declare-fun m!1259157 () Bool)

(assert (=> b!1375271 m!1259157))

(declare-fun m!1259159 () Bool)

(assert (=> b!1375271 m!1259159))

(declare-fun m!1259161 () Bool)

(assert (=> b!1375272 m!1259161))

(declare-fun m!1259163 () Bool)

(assert (=> b!1375276 m!1259163))

(assert (=> b!1375276 m!1259163))

(declare-fun m!1259165 () Bool)

(assert (=> b!1375276 m!1259165))

(push 1)

(assert (not start!116736))

(assert (not b!1375271))

(assert (not b!1375272))

(assert (not b!1375275))

(assert (not b!1375273))

(assert (not b!1375276))

(check-sat)

