; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116916 () Bool)

(assert start!116916)

(declare-fun b!1377114 () Bool)

(declare-fun res!920008 () Bool)

(declare-fun e!780104 () Bool)

(assert (=> b!1377114 (=> (not res!920008) (not e!780104))))

(declare-datatypes ((array!93503 0))(
  ( (array!93504 (arr!45150 (Array (_ BitVec 32) (_ BitVec 64))) (size!45701 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93503)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377114 (= res!920008 (validKeyInArray!0 (select (arr!45150 a!4032) i!1445)))))

(declare-fun b!1377115 () Bool)

(declare-fun e!780105 () Bool)

(assert (=> b!1377115 (= e!780104 e!780105)))

(declare-fun res!920006 () Bool)

(assert (=> b!1377115 (=> (not res!920006) (not e!780105))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!605754 () (_ BitVec 32))

(declare-fun lt!605758 () (_ BitVec 32))

(assert (=> b!1377115 (= res!920006 (and (= lt!605758 lt!605754) (not (= to!206 (size!45701 a!4032)))))))

(declare-fun arrayCountValidKeys!0 (array!93503 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377115 (= lt!605754 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605760 () array!93503)

(assert (=> b!1377115 (= lt!605758 (arrayCountValidKeys!0 lt!605760 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1377115 (= lt!605760 (array!93504 (store (arr!45150 a!4032) i!1445 k!2947) (size!45701 a!4032)))))

(declare-fun bm!65954 () Bool)

(declare-fun call!65957 () (_ BitVec 32))

(assert (=> bm!65954 (= call!65957 (arrayCountValidKeys!0 lt!605760 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377116 () Bool)

(declare-fun res!920010 () Bool)

(assert (=> b!1377116 (=> (not res!920010) (not e!780104))))

(assert (=> b!1377116 (= res!920010 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1377117 () Bool)

(declare-datatypes ((Unit!45615 0))(
  ( (Unit!45616) )
))
(declare-fun e!780107 () Unit!45615)

(declare-fun lt!605755 () Unit!45615)

(assert (=> b!1377117 (= e!780107 lt!605755)))

(declare-fun lt!605759 () Unit!45615)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93503 (_ BitVec 32) (_ BitVec 32)) Unit!45615)

(assert (=> b!1377117 (= lt!605759 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65958 () (_ BitVec 32))

(assert (=> b!1377117 (= call!65958 lt!605754)))

(assert (=> b!1377117 (= lt!605755 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605760 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377117 (= call!65957 lt!605758)))

(declare-fun bm!65955 () Bool)

(assert (=> bm!65955 (= call!65958 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1377118 () Bool)

(declare-fun lt!605757 () Unit!45615)

(assert (=> b!1377118 (= e!780107 lt!605757)))

(declare-fun lt!605756 () Unit!45615)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93503 (_ BitVec 32) (_ BitVec 32)) Unit!45615)

(assert (=> b!1377118 (= lt!605756 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377118 (= call!65958 (bvadd #b00000000000000000000000000000001 lt!605754))))

(assert (=> b!1377118 (= lt!605757 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605760 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1377118 (= call!65957 (bvadd #b00000000000000000000000000000001 lt!605758))))

(declare-fun b!1377119 () Bool)

(declare-fun e!780106 () Bool)

(assert (=> b!1377119 (= e!780105 e!780106)))

(declare-fun res!920009 () Bool)

(assert (=> b!1377119 (=> (not res!920009) (not e!780106))))

(assert (=> b!1377119 (= res!920009 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45701 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-fun lt!605761 () Unit!45615)

(assert (=> b!1377119 (= lt!605761 e!780107)))

(declare-fun c!127997 () Bool)

(assert (=> b!1377119 (= c!127997 (validKeyInArray!0 (select (arr!45150 a!4032) to!206)))))

(declare-fun b!1377120 () Bool)

(assert (=> b!1377120 (= e!780106 (not (= (arrayCountValidKeys!0 lt!605760 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)) (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))))

(declare-fun res!920007 () Bool)

(assert (=> start!116916 (=> (not res!920007) (not e!780104))))

(assert (=> start!116916 (= res!920007 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45701 a!4032))))))

(assert (=> start!116916 e!780104))

(assert (=> start!116916 true))

(declare-fun array_inv!34095 (array!93503) Bool)

(assert (=> start!116916 (array_inv!34095 a!4032)))

(declare-fun b!1377121 () Bool)

(declare-fun res!920005 () Bool)

(assert (=> b!1377121 (=> (not res!920005) (not e!780104))))

(assert (=> b!1377121 (= res!920005 (and (bvslt (size!45701 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45701 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116916 res!920007) b!1377114))

(assert (= (and b!1377114 res!920008) b!1377116))

(assert (= (and b!1377116 res!920010) b!1377121))

(assert (= (and b!1377121 res!920005) b!1377115))

(assert (= (and b!1377115 res!920006) b!1377119))

(assert (= (and b!1377119 c!127997) b!1377118))

(assert (= (and b!1377119 (not c!127997)) b!1377117))

(assert (= (or b!1377118 b!1377117) bm!65955))

(assert (= (or b!1377118 b!1377117) bm!65954))

(assert (= (and b!1377119 res!920009) b!1377120))

(declare-fun m!1261409 () Bool)

(assert (=> b!1377118 m!1261409))

(declare-fun m!1261411 () Bool)

(assert (=> b!1377118 m!1261411))

(declare-fun m!1261413 () Bool)

(assert (=> bm!65955 m!1261413))

(declare-fun m!1261415 () Bool)

(assert (=> b!1377114 m!1261415))

(assert (=> b!1377114 m!1261415))

(declare-fun m!1261417 () Bool)

(assert (=> b!1377114 m!1261417))

(declare-fun m!1261419 () Bool)

(assert (=> bm!65954 m!1261419))

(declare-fun m!1261421 () Bool)

(assert (=> start!116916 m!1261421))

(assert (=> b!1377120 m!1261419))

(assert (=> b!1377120 m!1261413))

(declare-fun m!1261423 () Bool)

(assert (=> b!1377115 m!1261423))

(declare-fun m!1261425 () Bool)

(assert (=> b!1377115 m!1261425))

(declare-fun m!1261427 () Bool)

(assert (=> b!1377115 m!1261427))

(declare-fun m!1261429 () Bool)

(assert (=> b!1377119 m!1261429))

(assert (=> b!1377119 m!1261429))

(declare-fun m!1261431 () Bool)

(assert (=> b!1377119 m!1261431))

(declare-fun m!1261433 () Bool)

(assert (=> b!1377116 m!1261433))

(declare-fun m!1261435 () Bool)

(assert (=> b!1377117 m!1261435))

(declare-fun m!1261437 () Bool)

(assert (=> b!1377117 m!1261437))

(push 1)

(assert (not b!1377118))

(assert (not b!1377119))

(assert (not b!1377115))

(assert (not b!1377120))

(assert (not start!116916))

(assert (not bm!65954))

(assert (not bm!65955))

(assert (not b!1377117))

(assert (not b!1377116))

(assert (not b!1377114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

