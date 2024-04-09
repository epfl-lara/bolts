; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71832 () Bool)

(assert start!71832)

(declare-fun b!834424 () Bool)

(declare-fun res!567551 () Bool)

(declare-fun e!465589 () Bool)

(assert (=> b!834424 (=> (not res!567551) (not e!465589))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834424 (= res!567551 (validKeyInArray!0 k0!2968))))

(declare-fun b!834425 () Bool)

(declare-datatypes ((Unit!28672 0))(
  ( (Unit!28673) )
))
(declare-fun e!465588 () Unit!28672)

(declare-fun lt!379201 () Unit!28672)

(assert (=> b!834425 (= e!465588 lt!379201)))

(declare-datatypes ((array!46686 0))(
  ( (array!46687 (arr!22373 (Array (_ BitVec 32) (_ BitVec 64))) (size!22794 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46686)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun lt!379208 () Unit!28672)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46686 (_ BitVec 32) (_ BitVec 32)) Unit!28672)

(assert (=> b!834425 (= lt!379208 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36590 () (_ BitVec 32))

(declare-fun lt!379204 () (_ BitVec 32))

(assert (=> b!834425 (= call!36590 (bvadd #b00000000000000000000000000000001 lt!379204))))

(declare-fun lt!379202 () array!46686)

(assert (=> b!834425 (= lt!379201 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379202 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36589 () (_ BitVec 32))

(declare-fun lt!379200 () (_ BitVec 32))

(assert (=> b!834425 (= call!36589 (bvadd #b00000000000000000000000000000001 lt!379200))))

(declare-fun res!567554 () Bool)

(assert (=> start!71832 (=> (not res!567554) (not e!465589))))

(assert (=> start!71832 (= res!567554 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22794 a!4227))))))

(assert (=> start!71832 e!465589))

(assert (=> start!71832 true))

(declare-fun array_inv!17796 (array!46686) Bool)

(assert (=> start!71832 (array_inv!17796 a!4227)))

(declare-fun b!834426 () Bool)

(declare-fun e!465586 () Bool)

(assert (=> b!834426 (= e!465589 e!465586)))

(declare-fun res!567552 () Bool)

(assert (=> b!834426 (=> (not res!567552) (not e!465586))))

(assert (=> b!834426 (= res!567552 (and (= lt!379200 lt!379204) (not (= to!390 (size!22794 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46686 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834426 (= lt!379204 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834426 (= lt!379200 (arrayCountValidKeys!0 lt!379202 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834426 (= lt!379202 (array!46687 (store (arr!22373 a!4227) i!1466 k0!2968) (size!22794 a!4227)))))

(declare-fun b!834427 () Bool)

(declare-fun res!567556 () Bool)

(assert (=> b!834427 (=> (not res!567556) (not e!465589))))

(assert (=> b!834427 (= res!567556 (and (bvslt (size!22794 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22794 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834428 () Bool)

(declare-fun e!465587 () Bool)

(assert (=> b!834428 (= e!465587 false)))

(declare-fun lt!379209 () (_ BitVec 32))

(assert (=> b!834428 (= lt!379209 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!379203 () (_ BitVec 32))

(assert (=> b!834428 (= lt!379203 (arrayCountValidKeys!0 lt!379202 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36586 () Bool)

(assert (=> bm!36586 (= call!36589 (arrayCountValidKeys!0 lt!379202 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36587 () Bool)

(assert (=> bm!36587 (= call!36590 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834429 () Bool)

(assert (=> b!834429 (= e!465586 e!465587)))

(declare-fun res!567553 () Bool)

(assert (=> b!834429 (=> (not res!567553) (not e!465587))))

(assert (=> b!834429 (= res!567553 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22794 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379205 () Unit!28672)

(assert (=> b!834429 (= lt!379205 e!465588)))

(declare-fun c!90832 () Bool)

(assert (=> b!834429 (= c!90832 (validKeyInArray!0 (select (arr!22373 a!4227) to!390)))))

(declare-fun b!834430 () Bool)

(declare-fun res!567555 () Bool)

(assert (=> b!834430 (=> (not res!567555) (not e!465589))))

(assert (=> b!834430 (= res!567555 (not (validKeyInArray!0 (select (arr!22373 a!4227) i!1466))))))

(declare-fun b!834431 () Bool)

(declare-fun lt!379206 () Unit!28672)

(assert (=> b!834431 (= e!465588 lt!379206)))

(declare-fun lt!379207 () Unit!28672)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46686 (_ BitVec 32) (_ BitVec 32)) Unit!28672)

(assert (=> b!834431 (= lt!379207 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834431 (= call!36590 lt!379204)))

(assert (=> b!834431 (= lt!379206 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379202 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834431 (= call!36589 lt!379200)))

(assert (= (and start!71832 res!567554) b!834430))

(assert (= (and b!834430 res!567555) b!834424))

(assert (= (and b!834424 res!567551) b!834427))

(assert (= (and b!834427 res!567556) b!834426))

(assert (= (and b!834426 res!567552) b!834429))

(assert (= (and b!834429 c!90832) b!834425))

(assert (= (and b!834429 (not c!90832)) b!834431))

(assert (= (or b!834425 b!834431) bm!36586))

(assert (= (or b!834425 b!834431) bm!36587))

(assert (= (and b!834429 res!567553) b!834428))

(declare-fun m!779561 () Bool)

(assert (=> b!834425 m!779561))

(declare-fun m!779563 () Bool)

(assert (=> b!834425 m!779563))

(declare-fun m!779565 () Bool)

(assert (=> b!834431 m!779565))

(declare-fun m!779567 () Bool)

(assert (=> b!834431 m!779567))

(declare-fun m!779569 () Bool)

(assert (=> bm!36587 m!779569))

(declare-fun m!779571 () Bool)

(assert (=> b!834424 m!779571))

(declare-fun m!779573 () Bool)

(assert (=> b!834430 m!779573))

(assert (=> b!834430 m!779573))

(declare-fun m!779575 () Bool)

(assert (=> b!834430 m!779575))

(declare-fun m!779577 () Bool)

(assert (=> b!834429 m!779577))

(assert (=> b!834429 m!779577))

(declare-fun m!779579 () Bool)

(assert (=> b!834429 m!779579))

(assert (=> b!834428 m!779569))

(declare-fun m!779581 () Bool)

(assert (=> b!834428 m!779581))

(assert (=> bm!36586 m!779581))

(declare-fun m!779583 () Bool)

(assert (=> start!71832 m!779583))

(declare-fun m!779585 () Bool)

(assert (=> b!834426 m!779585))

(declare-fun m!779587 () Bool)

(assert (=> b!834426 m!779587))

(declare-fun m!779589 () Bool)

(assert (=> b!834426 m!779589))

(check-sat (not bm!36586) (not bm!36587) (not b!834430) (not b!834426) (not b!834428) (not b!834429) (not b!834431) (not b!834424) (not b!834425) (not start!71832))
(check-sat)
