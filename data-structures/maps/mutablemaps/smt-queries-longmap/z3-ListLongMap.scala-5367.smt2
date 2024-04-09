; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71826 () Bool)

(assert start!71826)

(declare-fun b!834352 () Bool)

(declare-fun e!465545 () Bool)

(assert (=> b!834352 (= e!465545 false)))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!379118 () (_ BitVec 32))

(declare-datatypes ((array!46680 0))(
  ( (array!46681 (arr!22370 (Array (_ BitVec 32) (_ BitVec 64))) (size!22791 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46680)

(declare-fun arrayCountValidKeys!0 (array!46680 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834352 (= lt!379118 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!379111 () array!46680)

(declare-fun lt!379113 () (_ BitVec 32))

(assert (=> b!834352 (= lt!379113 (arrayCountValidKeys!0 lt!379111 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834353 () Bool)

(declare-fun res!567502 () Bool)

(declare-fun e!465541 () Bool)

(assert (=> b!834353 (=> (not res!567502) (not e!465541))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834353 (= res!567502 (validKeyInArray!0 k0!2968))))

(declare-fun bm!36568 () Bool)

(declare-fun call!36572 () (_ BitVec 32))

(assert (=> bm!36568 (= call!36572 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567498 () Bool)

(assert (=> start!71826 (=> (not res!567498) (not e!465541))))

(assert (=> start!71826 (= res!567498 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22791 a!4227))))))

(assert (=> start!71826 e!465541))

(assert (=> start!71826 true))

(declare-fun array_inv!17793 (array!46680) Bool)

(assert (=> start!71826 (array_inv!17793 a!4227)))

(declare-fun b!834354 () Bool)

(declare-fun res!567501 () Bool)

(assert (=> b!834354 (=> (not res!567501) (not e!465541))))

(assert (=> b!834354 (= res!567501 (not (validKeyInArray!0 (select (arr!22370 a!4227) i!1466))))))

(declare-fun b!834355 () Bool)

(declare-fun res!567500 () Bool)

(assert (=> b!834355 (=> (not res!567500) (not e!465541))))

(assert (=> b!834355 (= res!567500 (and (bvslt (size!22791 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22791 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834356 () Bool)

(declare-fun e!465543 () Bool)

(assert (=> b!834356 (= e!465543 e!465545)))

(declare-fun res!567497 () Bool)

(assert (=> b!834356 (=> (not res!567497) (not e!465545))))

(assert (=> b!834356 (= res!567497 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22791 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28666 0))(
  ( (Unit!28667) )
))
(declare-fun lt!379117 () Unit!28666)

(declare-fun e!465542 () Unit!28666)

(assert (=> b!834356 (= lt!379117 e!465542)))

(declare-fun c!90823 () Bool)

(assert (=> b!834356 (= c!90823 (validKeyInArray!0 (select (arr!22370 a!4227) to!390)))))

(declare-fun b!834357 () Bool)

(declare-fun lt!379112 () Unit!28666)

(assert (=> b!834357 (= e!465542 lt!379112)))

(declare-fun lt!379119 () Unit!28666)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46680 (_ BitVec 32) (_ BitVec 32)) Unit!28666)

(assert (=> b!834357 (= lt!379119 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379114 () (_ BitVec 32))

(assert (=> b!834357 (= call!36572 (bvadd #b00000000000000000000000000000001 lt!379114))))

(assert (=> b!834357 (= lt!379112 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379111 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36571 () (_ BitVec 32))

(declare-fun lt!379116 () (_ BitVec 32))

(assert (=> b!834357 (= call!36571 (bvadd #b00000000000000000000000000000001 lt!379116))))

(declare-fun b!834358 () Bool)

(assert (=> b!834358 (= e!465541 e!465543)))

(declare-fun res!567499 () Bool)

(assert (=> b!834358 (=> (not res!567499) (not e!465543))))

(assert (=> b!834358 (= res!567499 (and (= lt!379116 lt!379114) (not (= to!390 (size!22791 a!4227)))))))

(assert (=> b!834358 (= lt!379114 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834358 (= lt!379116 (arrayCountValidKeys!0 lt!379111 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834358 (= lt!379111 (array!46681 (store (arr!22370 a!4227) i!1466 k0!2968) (size!22791 a!4227)))))

(declare-fun b!834359 () Bool)

(declare-fun lt!379115 () Unit!28666)

(assert (=> b!834359 (= e!465542 lt!379115)))

(declare-fun lt!379110 () Unit!28666)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46680 (_ BitVec 32) (_ BitVec 32)) Unit!28666)

(assert (=> b!834359 (= lt!379110 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834359 (= call!36572 lt!379114)))

(assert (=> b!834359 (= lt!379115 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379111 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834359 (= call!36571 lt!379116)))

(declare-fun bm!36569 () Bool)

(assert (=> bm!36569 (= call!36571 (arrayCountValidKeys!0 lt!379111 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71826 res!567498) b!834354))

(assert (= (and b!834354 res!567501) b!834353))

(assert (= (and b!834353 res!567502) b!834355))

(assert (= (and b!834355 res!567500) b!834358))

(assert (= (and b!834358 res!567499) b!834356))

(assert (= (and b!834356 c!90823) b!834357))

(assert (= (and b!834356 (not c!90823)) b!834359))

(assert (= (or b!834357 b!834359) bm!36569))

(assert (= (or b!834357 b!834359) bm!36568))

(assert (= (and b!834356 res!567497) b!834352))

(declare-fun m!779471 () Bool)

(assert (=> start!71826 m!779471))

(declare-fun m!779473 () Bool)

(assert (=> b!834356 m!779473))

(assert (=> b!834356 m!779473))

(declare-fun m!779475 () Bool)

(assert (=> b!834356 m!779475))

(declare-fun m!779477 () Bool)

(assert (=> b!834353 m!779477))

(declare-fun m!779479 () Bool)

(assert (=> bm!36568 m!779479))

(declare-fun m!779481 () Bool)

(assert (=> b!834354 m!779481))

(assert (=> b!834354 m!779481))

(declare-fun m!779483 () Bool)

(assert (=> b!834354 m!779483))

(assert (=> b!834352 m!779479))

(declare-fun m!779485 () Bool)

(assert (=> b!834352 m!779485))

(assert (=> bm!36569 m!779485))

(declare-fun m!779487 () Bool)

(assert (=> b!834357 m!779487))

(declare-fun m!779489 () Bool)

(assert (=> b!834357 m!779489))

(declare-fun m!779491 () Bool)

(assert (=> b!834359 m!779491))

(declare-fun m!779493 () Bool)

(assert (=> b!834359 m!779493))

(declare-fun m!779495 () Bool)

(assert (=> b!834358 m!779495))

(declare-fun m!779497 () Bool)

(assert (=> b!834358 m!779497))

(declare-fun m!779499 () Bool)

(assert (=> b!834358 m!779499))

(check-sat (not bm!36569) (not b!834353) (not b!834352) (not b!834354) (not b!834358) (not bm!36568) (not start!71826) (not b!834359) (not b!834356) (not b!834357))
(check-sat)
