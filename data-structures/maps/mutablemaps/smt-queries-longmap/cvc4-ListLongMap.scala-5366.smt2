; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71822 () Bool)

(assert start!71822)

(declare-fun b!834304 () Bool)

(declare-fun res!567466 () Bool)

(declare-fun e!465511 () Bool)

(assert (=> b!834304 (=> (not res!567466) (not e!465511))))

(declare-datatypes ((array!46676 0))(
  ( (array!46677 (arr!22368 (Array (_ BitVec 32) (_ BitVec 64))) (size!22789 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46676)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834304 (= res!567466 (not (validKeyInArray!0 (select (arr!22368 a!4227) i!1466))))))

(declare-fun b!834305 () Bool)

(declare-fun e!465515 () Bool)

(declare-fun e!465512 () Bool)

(assert (=> b!834305 (= e!465515 e!465512)))

(declare-fun res!567462 () Bool)

(assert (=> b!834305 (=> (not res!567462) (not e!465512))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834305 (= res!567462 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22789 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28662 0))(
  ( (Unit!28663) )
))
(declare-fun lt!379056 () Unit!28662)

(declare-fun e!465514 () Unit!28662)

(assert (=> b!834305 (= lt!379056 e!465514)))

(declare-fun c!90817 () Bool)

(assert (=> b!834305 (= c!90817 (validKeyInArray!0 (select (arr!22368 a!4227) to!390)))))

(declare-fun b!834306 () Bool)

(assert (=> b!834306 (= e!465512 false)))

(declare-fun lt!379059 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46676 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834306 (= lt!379059 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!379054 () array!46676)

(declare-fun lt!379051 () (_ BitVec 32))

(assert (=> b!834306 (= lt!379051 (arrayCountValidKeys!0 lt!379054 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834307 () Bool)

(declare-fun lt!379058 () Unit!28662)

(assert (=> b!834307 (= e!465514 lt!379058)))

(declare-fun lt!379050 () Unit!28662)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46676 (_ BitVec 32) (_ BitVec 32)) Unit!28662)

(assert (=> b!834307 (= lt!379050 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36560 () (_ BitVec 32))

(declare-fun lt!379055 () (_ BitVec 32))

(assert (=> b!834307 (= call!36560 (bvadd #b00000000000000000000000000000001 lt!379055))))

(assert (=> b!834307 (= lt!379058 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379054 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36559 () (_ BitVec 32))

(declare-fun lt!379057 () (_ BitVec 32))

(assert (=> b!834307 (= call!36559 (bvadd #b00000000000000000000000000000001 lt!379057))))

(declare-fun bm!36556 () Bool)

(assert (=> bm!36556 (= call!36560 (arrayCountValidKeys!0 (ite c!90817 a!4227 lt!379054) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36557 () Bool)

(assert (=> bm!36557 (= call!36559 (arrayCountValidKeys!0 (ite c!90817 lt!379054 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567465 () Bool)

(assert (=> start!71822 (=> (not res!567465) (not e!465511))))

(assert (=> start!71822 (= res!567465 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22789 a!4227))))))

(assert (=> start!71822 e!465511))

(assert (=> start!71822 true))

(declare-fun array_inv!17791 (array!46676) Bool)

(assert (=> start!71822 (array_inv!17791 a!4227)))

(declare-fun b!834308 () Bool)

(declare-fun res!567461 () Bool)

(assert (=> b!834308 (=> (not res!567461) (not e!465511))))

(assert (=> b!834308 (= res!567461 (and (bvslt (size!22789 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22789 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834309 () Bool)

(declare-fun res!567464 () Bool)

(assert (=> b!834309 (=> (not res!567464) (not e!465511))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834309 (= res!567464 (validKeyInArray!0 k!2968))))

(declare-fun b!834310 () Bool)

(declare-fun lt!379053 () Unit!28662)

(assert (=> b!834310 (= e!465514 lt!379053)))

(declare-fun lt!379052 () Unit!28662)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46676 (_ BitVec 32) (_ BitVec 32)) Unit!28662)

(assert (=> b!834310 (= lt!379052 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834310 (= call!36559 lt!379055)))

(assert (=> b!834310 (= lt!379053 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379054 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834310 (= call!36560 lt!379057)))

(declare-fun b!834311 () Bool)

(assert (=> b!834311 (= e!465511 e!465515)))

(declare-fun res!567463 () Bool)

(assert (=> b!834311 (=> (not res!567463) (not e!465515))))

(assert (=> b!834311 (= res!567463 (and (= lt!379057 lt!379055) (not (= to!390 (size!22789 a!4227)))))))

(assert (=> b!834311 (= lt!379055 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834311 (= lt!379057 (arrayCountValidKeys!0 lt!379054 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834311 (= lt!379054 (array!46677 (store (arr!22368 a!4227) i!1466 k!2968) (size!22789 a!4227)))))

(assert (= (and start!71822 res!567465) b!834304))

(assert (= (and b!834304 res!567466) b!834309))

(assert (= (and b!834309 res!567464) b!834308))

(assert (= (and b!834308 res!567461) b!834311))

(assert (= (and b!834311 res!567463) b!834305))

(assert (= (and b!834305 c!90817) b!834307))

(assert (= (and b!834305 (not c!90817)) b!834310))

(assert (= (or b!834307 b!834310) bm!36557))

(assert (= (or b!834307 b!834310) bm!36556))

(assert (= (and b!834305 res!567462) b!834306))

(declare-fun m!779403 () Bool)

(assert (=> b!834307 m!779403))

(declare-fun m!779405 () Bool)

(assert (=> b!834307 m!779405))

(declare-fun m!779407 () Bool)

(assert (=> b!834311 m!779407))

(declare-fun m!779409 () Bool)

(assert (=> b!834311 m!779409))

(declare-fun m!779411 () Bool)

(assert (=> b!834311 m!779411))

(declare-fun m!779413 () Bool)

(assert (=> b!834306 m!779413))

(declare-fun m!779415 () Bool)

(assert (=> b!834306 m!779415))

(declare-fun m!779417 () Bool)

(assert (=> bm!36556 m!779417))

(declare-fun m!779419 () Bool)

(assert (=> b!834310 m!779419))

(declare-fun m!779421 () Bool)

(assert (=> b!834310 m!779421))

(declare-fun m!779423 () Bool)

(assert (=> bm!36557 m!779423))

(declare-fun m!779425 () Bool)

(assert (=> b!834305 m!779425))

(assert (=> b!834305 m!779425))

(declare-fun m!779427 () Bool)

(assert (=> b!834305 m!779427))

(declare-fun m!779429 () Bool)

(assert (=> b!834304 m!779429))

(assert (=> b!834304 m!779429))

(declare-fun m!779431 () Bool)

(assert (=> b!834304 m!779431))

(declare-fun m!779433 () Bool)

(assert (=> start!71822 m!779433))

(declare-fun m!779435 () Bool)

(assert (=> b!834309 m!779435))

(push 1)

(assert (not b!834305))

(assert (not start!71822))

(assert (not b!834307))

(assert (not b!834309))

(assert (not bm!36557))

(assert (not bm!36556))

(assert (not b!834311))

(assert (not b!834304))

(assert (not b!834306))

(assert (not b!834310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

