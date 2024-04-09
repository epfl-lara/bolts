; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116732 () Bool)

(assert start!116732)

(declare-fun b!1375235 () Bool)

(declare-fun e!779098 () Bool)

(declare-fun e!779097 () Bool)

(assert (=> b!1375235 (= e!779098 e!779097)))

(declare-fun res!918414 () Bool)

(assert (=> b!1375235 (=> (not res!918414) (not e!779097))))

(declare-fun lt!604258 () (_ BitVec 32))

(declare-fun to!206 () (_ BitVec 32))

(declare-datatypes ((array!93319 0))(
  ( (array!93320 (arr!45058 (Array (_ BitVec 32) (_ BitVec 64))) (size!45609 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93319)

(declare-fun lt!604256 () (_ BitVec 32))

(assert (=> b!1375235 (= res!918414 (and (= lt!604258 lt!604256) (not (= to!206 (size!45609 a!4032)))))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93319 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375235 (= lt!604256 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375235 (= lt!604258 (arrayCountValidKeys!0 (array!93320 (store (arr!45058 a!4032) i!1445 k!2947) (size!45609 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375236 () Bool)

(declare-fun res!918413 () Bool)

(assert (=> b!1375236 (=> (not res!918413) (not e!779098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375236 (= res!918413 (validKeyInArray!0 (select (arr!45058 a!4032) i!1445)))))

(declare-fun b!1375237 () Bool)

(assert (=> b!1375237 (= e!779097 (not true))))

(assert (=> b!1375237 (= (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (bvadd #b00000000000000000000000000000001 lt!604256))))

(declare-datatypes ((Unit!45485 0))(
  ( (Unit!45486) )
))
(declare-fun lt!604257 () Unit!45485)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93319 (_ BitVec 32) (_ BitVec 32)) Unit!45485)

(assert (=> b!1375237 (= lt!604257 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun res!918415 () Bool)

(assert (=> start!116732 (=> (not res!918415) (not e!779098))))

(assert (=> start!116732 (= res!918415 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45609 a!4032))))))

(assert (=> start!116732 e!779098))

(assert (=> start!116732 true))

(declare-fun array_inv!34003 (array!93319) Bool)

(assert (=> start!116732 (array_inv!34003 a!4032)))

(declare-fun b!1375238 () Bool)

(declare-fun res!918416 () Bool)

(assert (=> b!1375238 (=> (not res!918416) (not e!779098))))

(assert (=> b!1375238 (= res!918416 (and (bvslt (size!45609 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45609 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1375239 () Bool)

(declare-fun res!918412 () Bool)

(assert (=> b!1375239 (=> (not res!918412) (not e!779098))))

(assert (=> b!1375239 (= res!918412 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375240 () Bool)

(declare-fun res!918417 () Bool)

(assert (=> b!1375240 (=> (not res!918417) (not e!779097))))

(assert (=> b!1375240 (= res!918417 (validKeyInArray!0 (select (arr!45058 a!4032) to!206)))))

(assert (= (and start!116732 res!918415) b!1375236))

(assert (= (and b!1375236 res!918413) b!1375239))

(assert (= (and b!1375239 res!918412) b!1375238))

(assert (= (and b!1375238 res!918416) b!1375235))

(assert (= (and b!1375235 res!918414) b!1375240))

(assert (= (and b!1375240 res!918417) b!1375237))

(declare-fun m!1259101 () Bool)

(assert (=> b!1375240 m!1259101))

(assert (=> b!1375240 m!1259101))

(declare-fun m!1259103 () Bool)

(assert (=> b!1375240 m!1259103))

(declare-fun m!1259105 () Bool)

(assert (=> b!1375235 m!1259105))

(declare-fun m!1259107 () Bool)

(assert (=> b!1375235 m!1259107))

(declare-fun m!1259109 () Bool)

(assert (=> b!1375235 m!1259109))

(declare-fun m!1259111 () Bool)

(assert (=> b!1375237 m!1259111))

(declare-fun m!1259113 () Bool)

(assert (=> b!1375237 m!1259113))

(declare-fun m!1259115 () Bool)

(assert (=> b!1375236 m!1259115))

(assert (=> b!1375236 m!1259115))

(declare-fun m!1259117 () Bool)

(assert (=> b!1375236 m!1259117))

(declare-fun m!1259119 () Bool)

(assert (=> b!1375239 m!1259119))

(declare-fun m!1259121 () Bool)

(assert (=> start!116732 m!1259121))

(push 1)

(assert (not b!1375235))

(assert (not b!1375237))

(assert (not b!1375239))

