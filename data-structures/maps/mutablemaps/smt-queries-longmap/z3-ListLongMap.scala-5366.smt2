; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71820 () Bool)

(assert start!71820)

(declare-fun bm!36550 () Bool)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-datatypes ((array!46674 0))(
  ( (array!46675 (arr!22367 (Array (_ BitVec 32) (_ BitVec 64))) (size!22788 (_ BitVec 32))) )
))
(declare-fun lt!379023 () array!46674)

(declare-fun call!36554 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46674 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36550 (= call!36554 (arrayCountValidKeys!0 lt!379023 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834280 () Bool)

(declare-fun e!465499 () Bool)

(assert (=> b!834280 (= e!465499 false)))

(declare-fun a!4227 () array!46674)

(declare-fun lt!379021 () (_ BitVec 32))

(assert (=> b!834280 (= lt!379021 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!379022 () (_ BitVec 32))

(assert (=> b!834280 (= lt!379022 (arrayCountValidKeys!0 lt!379023 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834281 () Bool)

(declare-fun e!465500 () Bool)

(assert (=> b!834281 (= e!465500 e!465499)))

(declare-fun res!567443 () Bool)

(assert (=> b!834281 (=> (not res!567443) (not e!465499))))

(assert (=> b!834281 (= res!567443 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22788 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28660 0))(
  ( (Unit!28661) )
))
(declare-fun lt!379029 () Unit!28660)

(declare-fun e!465497 () Unit!28660)

(assert (=> b!834281 (= lt!379029 e!465497)))

(declare-fun c!90814 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834281 (= c!90814 (validKeyInArray!0 (select (arr!22367 a!4227) to!390)))))

(declare-fun b!834282 () Bool)

(declare-fun lt!379020 () Unit!28660)

(assert (=> b!834282 (= e!465497 lt!379020)))

(declare-fun lt!379028 () Unit!28660)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46674 (_ BitVec 32) (_ BitVec 32)) Unit!28660)

(assert (=> b!834282 (= lt!379028 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36553 () (_ BitVec 32))

(declare-fun lt!379027 () (_ BitVec 32))

(assert (=> b!834282 (= call!36553 lt!379027)))

(assert (=> b!834282 (= lt!379020 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379023 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379026 () (_ BitVec 32))

(assert (=> b!834282 (= call!36554 lt!379026)))

(declare-fun b!834283 () Bool)

(declare-fun res!567446 () Bool)

(declare-fun e!465496 () Bool)

(assert (=> b!834283 (=> (not res!567446) (not e!465496))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!834283 (= res!567446 (validKeyInArray!0 k0!2968))))

(declare-fun b!834284 () Bool)

(declare-fun res!567447 () Bool)

(assert (=> b!834284 (=> (not res!567447) (not e!465496))))

(assert (=> b!834284 (= res!567447 (not (validKeyInArray!0 (select (arr!22367 a!4227) i!1466))))))

(declare-fun b!834285 () Bool)

(assert (=> b!834285 (= e!465496 e!465500)))

(declare-fun res!567448 () Bool)

(assert (=> b!834285 (=> (not res!567448) (not e!465500))))

(assert (=> b!834285 (= res!567448 (and (= lt!379026 lt!379027) (not (= to!390 (size!22788 a!4227)))))))

(assert (=> b!834285 (= lt!379027 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834285 (= lt!379026 (arrayCountValidKeys!0 lt!379023 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834285 (= lt!379023 (array!46675 (store (arr!22367 a!4227) i!1466 k0!2968) (size!22788 a!4227)))))

(declare-fun res!567445 () Bool)

(assert (=> start!71820 (=> (not res!567445) (not e!465496))))

(assert (=> start!71820 (= res!567445 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22788 a!4227))))))

(assert (=> start!71820 e!465496))

(assert (=> start!71820 true))

(declare-fun array_inv!17790 (array!46674) Bool)

(assert (=> start!71820 (array_inv!17790 a!4227)))

(declare-fun bm!36551 () Bool)

(assert (=> bm!36551 (= call!36553 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834286 () Bool)

(declare-fun res!567444 () Bool)

(assert (=> b!834286 (=> (not res!567444) (not e!465496))))

(assert (=> b!834286 (= res!567444 (and (bvslt (size!22788 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22788 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834287 () Bool)

(declare-fun lt!379025 () Unit!28660)

(assert (=> b!834287 (= e!465497 lt!379025)))

(declare-fun lt!379024 () Unit!28660)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46674 (_ BitVec 32) (_ BitVec 32)) Unit!28660)

(assert (=> b!834287 (= lt!379024 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834287 (= call!36553 (bvadd #b00000000000000000000000000000001 lt!379027))))

(assert (=> b!834287 (= lt!379025 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379023 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834287 (= call!36554 (bvadd #b00000000000000000000000000000001 lt!379026))))

(assert (= (and start!71820 res!567445) b!834284))

(assert (= (and b!834284 res!567447) b!834283))

(assert (= (and b!834283 res!567446) b!834286))

(assert (= (and b!834286 res!567444) b!834285))

(assert (= (and b!834285 res!567448) b!834281))

(assert (= (and b!834281 c!90814) b!834287))

(assert (= (and b!834281 (not c!90814)) b!834282))

(assert (= (or b!834287 b!834282) bm!36550))

(assert (= (or b!834287 b!834282) bm!36551))

(assert (= (and b!834281 res!567443) b!834280))

(declare-fun m!779373 () Bool)

(assert (=> b!834284 m!779373))

(assert (=> b!834284 m!779373))

(declare-fun m!779375 () Bool)

(assert (=> b!834284 m!779375))

(declare-fun m!779377 () Bool)

(assert (=> b!834287 m!779377))

(declare-fun m!779379 () Bool)

(assert (=> b!834287 m!779379))

(declare-fun m!779381 () Bool)

(assert (=> b!834280 m!779381))

(declare-fun m!779383 () Bool)

(assert (=> b!834280 m!779383))

(declare-fun m!779385 () Bool)

(assert (=> b!834282 m!779385))

(declare-fun m!779387 () Bool)

(assert (=> b!834282 m!779387))

(declare-fun m!779389 () Bool)

(assert (=> b!834283 m!779389))

(declare-fun m!779391 () Bool)

(assert (=> start!71820 m!779391))

(declare-fun m!779393 () Bool)

(assert (=> b!834281 m!779393))

(assert (=> b!834281 m!779393))

(declare-fun m!779395 () Bool)

(assert (=> b!834281 m!779395))

(assert (=> bm!36550 m!779383))

(assert (=> bm!36551 m!779381))

(declare-fun m!779397 () Bool)

(assert (=> b!834285 m!779397))

(declare-fun m!779399 () Bool)

(assert (=> b!834285 m!779399))

(declare-fun m!779401 () Bool)

(assert (=> b!834285 m!779401))

(check-sat (not b!834284) (not bm!36551) (not bm!36550) (not b!834280) (not start!71820) (not b!834287) (not b!834285) (not b!834281) (not b!834283) (not b!834282))
