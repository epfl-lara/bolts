; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71830 () Bool)

(assert start!71830)

(declare-fun b!834400 () Bool)

(declare-datatypes ((Unit!28670 0))(
  ( (Unit!28671) )
))
(declare-fun e!465572 () Unit!28670)

(declare-fun lt!379174 () Unit!28670)

(assert (=> b!834400 (= e!465572 lt!379174)))

(declare-datatypes ((array!46684 0))(
  ( (array!46685 (arr!22372 (Array (_ BitVec 32) (_ BitVec 64))) (size!22793 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46684)

(declare-fun lt!379173 () Unit!28670)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46684 (_ BitVec 32) (_ BitVec 32)) Unit!28670)

(assert (=> b!834400 (= lt!379173 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36583 () (_ BitVec 32))

(declare-fun lt!379176 () (_ BitVec 32))

(assert (=> b!834400 (= call!36583 (bvadd #b00000000000000000000000000000001 lt!379176))))

(declare-fun lt!379177 () array!46684)

(assert (=> b!834400 (= lt!379174 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379177 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36584 () (_ BitVec 32))

(declare-fun lt!379175 () (_ BitVec 32))

(assert (=> b!834400 (= call!36584 (bvadd #b00000000000000000000000000000001 lt!379175))))

(declare-fun b!834401 () Bool)

(declare-fun lt!379170 () Unit!28670)

(assert (=> b!834401 (= e!465572 lt!379170)))

(declare-fun lt!379178 () Unit!28670)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46684 (_ BitVec 32) (_ BitVec 32)) Unit!28670)

(assert (=> b!834401 (= lt!379178 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834401 (= call!36583 lt!379176)))

(assert (=> b!834401 (= lt!379170 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379177 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834401 (= call!36584 lt!379175)))

(declare-fun b!834402 () Bool)

(declare-fun e!465573 () Bool)

(declare-fun e!465571 () Bool)

(assert (=> b!834402 (= e!465573 e!465571)))

(declare-fun res!567537 () Bool)

(assert (=> b!834402 (=> (not res!567537) (not e!465571))))

(assert (=> b!834402 (= res!567537 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22793 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379179 () Unit!28670)

(assert (=> b!834402 (= lt!379179 e!465572)))

(declare-fun c!90829 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834402 (= c!90829 (validKeyInArray!0 (select (arr!22372 a!4227) to!390)))))

(declare-fun b!834403 () Bool)

(declare-fun res!567534 () Bool)

(declare-fun e!465575 () Bool)

(assert (=> b!834403 (=> (not res!567534) (not e!465575))))

(assert (=> b!834403 (= res!567534 (and (bvslt (size!22793 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22793 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun res!567533 () Bool)

(assert (=> start!71830 (=> (not res!567533) (not e!465575))))

(assert (=> start!71830 (= res!567533 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22793 a!4227))))))

(assert (=> start!71830 e!465575))

(assert (=> start!71830 true))

(declare-fun array_inv!17795 (array!46684) Bool)

(assert (=> start!71830 (array_inv!17795 a!4227)))

(declare-fun b!834404 () Bool)

(declare-fun res!567538 () Bool)

(assert (=> b!834404 (=> (not res!567538) (not e!465575))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834404 (= res!567538 (validKeyInArray!0 k!2968))))

(declare-fun bm!36580 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46684 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36580 (= call!36583 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834405 () Bool)

(assert (=> b!834405 (= e!465571 false)))

(declare-fun lt!379172 () (_ BitVec 32))

(assert (=> b!834405 (= lt!379172 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!379171 () (_ BitVec 32))

(assert (=> b!834405 (= lt!379171 (arrayCountValidKeys!0 lt!379177 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36581 () Bool)

(assert (=> bm!36581 (= call!36584 (arrayCountValidKeys!0 lt!379177 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834406 () Bool)

(declare-fun res!567535 () Bool)

(assert (=> b!834406 (=> (not res!567535) (not e!465575))))

(assert (=> b!834406 (= res!567535 (not (validKeyInArray!0 (select (arr!22372 a!4227) i!1466))))))

(declare-fun b!834407 () Bool)

(assert (=> b!834407 (= e!465575 e!465573)))

(declare-fun res!567536 () Bool)

(assert (=> b!834407 (=> (not res!567536) (not e!465573))))

(assert (=> b!834407 (= res!567536 (and (= lt!379175 lt!379176) (not (= to!390 (size!22793 a!4227)))))))

(assert (=> b!834407 (= lt!379176 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834407 (= lt!379175 (arrayCountValidKeys!0 lt!379177 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834407 (= lt!379177 (array!46685 (store (arr!22372 a!4227) i!1466 k!2968) (size!22793 a!4227)))))

(assert (= (and start!71830 res!567533) b!834406))

(assert (= (and b!834406 res!567535) b!834404))

(assert (= (and b!834404 res!567538) b!834403))

(assert (= (and b!834403 res!567534) b!834407))

(assert (= (and b!834407 res!567536) b!834402))

(assert (= (and b!834402 c!90829) b!834400))

(assert (= (and b!834402 (not c!90829)) b!834401))

(assert (= (or b!834400 b!834401) bm!36581))

(assert (= (or b!834400 b!834401) bm!36580))

(assert (= (and b!834402 res!567537) b!834405))

(declare-fun m!779531 () Bool)

(assert (=> b!834400 m!779531))

(declare-fun m!779533 () Bool)

(assert (=> b!834400 m!779533))

(declare-fun m!779535 () Bool)

(assert (=> bm!36581 m!779535))

(declare-fun m!779537 () Bool)

(assert (=> b!834407 m!779537))

(declare-fun m!779539 () Bool)

(assert (=> b!834407 m!779539))

(declare-fun m!779541 () Bool)

(assert (=> b!834407 m!779541))

(declare-fun m!779543 () Bool)

(assert (=> b!834406 m!779543))

(assert (=> b!834406 m!779543))

(declare-fun m!779545 () Bool)

(assert (=> b!834406 m!779545))

(declare-fun m!779547 () Bool)

(assert (=> bm!36580 m!779547))

(assert (=> b!834405 m!779547))

(assert (=> b!834405 m!779535))

(declare-fun m!779549 () Bool)

(assert (=> b!834404 m!779549))

(declare-fun m!779551 () Bool)

(assert (=> b!834402 m!779551))

(assert (=> b!834402 m!779551))

(declare-fun m!779553 () Bool)

(assert (=> b!834402 m!779553))

(declare-fun m!779555 () Bool)

(assert (=> start!71830 m!779555))

(declare-fun m!779557 () Bool)

(assert (=> b!834401 m!779557))

(declare-fun m!779559 () Bool)

(assert (=> b!834401 m!779559))

(push 1)

