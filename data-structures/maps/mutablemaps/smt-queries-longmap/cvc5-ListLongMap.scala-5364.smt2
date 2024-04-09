; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71806 () Bool)

(assert start!71806)

(declare-datatypes ((array!46660 0))(
  ( (array!46661 (arr!22360 (Array (_ BitVec 32) (_ BitVec 64))) (size!22781 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46660)

(declare-fun lt!378815 () array!46660)

(declare-fun bm!36508 () Bool)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun call!36512 () (_ BitVec 32))

(declare-fun c!90793 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46660 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36508 (= call!36512 (arrayCountValidKeys!0 (ite c!90793 lt!378815 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834112 () Bool)

(declare-fun e!465395 () Bool)

(declare-fun e!465391 () Bool)

(assert (=> b!834112 (= e!465395 e!465391)))

(declare-fun res!567317 () Bool)

(assert (=> b!834112 (=> (not res!567317) (not e!465391))))

(declare-fun lt!378817 () (_ BitVec 32))

(declare-fun lt!378814 () (_ BitVec 32))

(assert (=> b!834112 (= res!567317 (and (= lt!378814 lt!378817) (not (= to!390 (size!22781 a!4227)))))))

(assert (=> b!834112 (= lt!378817 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834112 (= lt!378814 (arrayCountValidKeys!0 lt!378815 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834112 (= lt!378815 (array!46661 (store (arr!22360 a!4227) i!1466 k!2968) (size!22781 a!4227)))))

(declare-fun b!834113 () Bool)

(declare-datatypes ((Unit!28646 0))(
  ( (Unit!28647) )
))
(declare-fun e!465392 () Unit!28646)

(declare-fun lt!378813 () Unit!28646)

(assert (=> b!834113 (= e!465392 lt!378813)))

(declare-fun lt!378818 () Unit!28646)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46660 (_ BitVec 32) (_ BitVec 32)) Unit!28646)

(assert (=> b!834113 (= lt!378818 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834113 (= call!36512 lt!378817)))

(assert (=> b!834113 (= lt!378813 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!378815 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36511 () (_ BitVec 32))

(assert (=> b!834113 (= call!36511 lt!378814)))

(declare-fun res!567322 () Bool)

(assert (=> start!71806 (=> (not res!567322) (not e!465395))))

(assert (=> start!71806 (= res!567322 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22781 a!4227))))))

(assert (=> start!71806 e!465395))

(assert (=> start!71806 true))

(declare-fun array_inv!17783 (array!46660) Bool)

(assert (=> start!71806 (array_inv!17783 a!4227)))

(declare-fun bm!36509 () Bool)

(assert (=> bm!36509 (= call!36511 (arrayCountValidKeys!0 (ite c!90793 a!4227 lt!378815) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834114 () Bool)

(declare-fun res!567319 () Bool)

(assert (=> b!834114 (=> (not res!567319) (not e!465395))))

(assert (=> b!834114 (= res!567319 (and (bvslt (size!22781 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22781 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834115 () Bool)

(declare-fun res!567318 () Bool)

(assert (=> b!834115 (=> (not res!567318) (not e!465395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834115 (= res!567318 (validKeyInArray!0 k!2968))))

(declare-fun b!834116 () Bool)

(declare-fun lt!378819 () Unit!28646)

(assert (=> b!834116 (= e!465392 lt!378819)))

(declare-fun lt!378812 () Unit!28646)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46660 (_ BitVec 32) (_ BitVec 32)) Unit!28646)

(assert (=> b!834116 (= lt!378812 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834116 (= call!36511 (bvadd #b00000000000000000000000000000001 lt!378817))))

(assert (=> b!834116 (= lt!378819 (lemmaValidKeyIncreasesNumOfKeys!0 lt!378815 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834116 (= call!36512 (bvadd #b00000000000000000000000000000001 lt!378814))))

(declare-fun b!834117 () Bool)

(declare-fun res!567320 () Bool)

(assert (=> b!834117 (=> (not res!567320) (not e!465395))))

(assert (=> b!834117 (= res!567320 (not (validKeyInArray!0 (select (arr!22360 a!4227) i!1466))))))

(declare-fun b!834118 () Bool)

(declare-fun e!465393 () Bool)

(assert (=> b!834118 (= e!465393 false)))

(declare-fun lt!378811 () (_ BitVec 32))

(assert (=> b!834118 (= lt!378811 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!378816 () (_ BitVec 32))

(assert (=> b!834118 (= lt!378816 (arrayCountValidKeys!0 lt!378815 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834119 () Bool)

(assert (=> b!834119 (= e!465391 e!465393)))

(declare-fun res!567321 () Bool)

(assert (=> b!834119 (=> (not res!567321) (not e!465393))))

(assert (=> b!834119 (= res!567321 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22781 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!378810 () Unit!28646)

(assert (=> b!834119 (= lt!378810 e!465392)))

(assert (=> b!834119 (= c!90793 (validKeyInArray!0 (select (arr!22360 a!4227) to!390)))))

(assert (= (and start!71806 res!567322) b!834117))

(assert (= (and b!834117 res!567320) b!834115))

(assert (= (and b!834115 res!567318) b!834114))

(assert (= (and b!834114 res!567319) b!834112))

(assert (= (and b!834112 res!567317) b!834119))

(assert (= (and b!834119 c!90793) b!834116))

(assert (= (and b!834119 (not c!90793)) b!834113))

(assert (= (or b!834116 b!834113) bm!36509))

(assert (= (or b!834116 b!834113) bm!36508))

(assert (= (and b!834119 res!567321) b!834118))

(declare-fun m!779155 () Bool)

(assert (=> bm!36508 m!779155))

(declare-fun m!779157 () Bool)

(assert (=> b!834119 m!779157))

(assert (=> b!834119 m!779157))

(declare-fun m!779159 () Bool)

(assert (=> b!834119 m!779159))

(declare-fun m!779161 () Bool)

(assert (=> b!834118 m!779161))

(declare-fun m!779163 () Bool)

(assert (=> b!834118 m!779163))

(declare-fun m!779165 () Bool)

(assert (=> b!834112 m!779165))

(declare-fun m!779167 () Bool)

(assert (=> b!834112 m!779167))

(declare-fun m!779169 () Bool)

(assert (=> b!834112 m!779169))

(declare-fun m!779171 () Bool)

(assert (=> b!834117 m!779171))

(assert (=> b!834117 m!779171))

(declare-fun m!779173 () Bool)

(assert (=> b!834117 m!779173))

(declare-fun m!779175 () Bool)

(assert (=> start!71806 m!779175))

(declare-fun m!779177 () Bool)

(assert (=> bm!36509 m!779177))

(declare-fun m!779179 () Bool)

(assert (=> b!834115 m!779179))

(declare-fun m!779181 () Bool)

(assert (=> b!834113 m!779181))

(declare-fun m!779183 () Bool)

(assert (=> b!834113 m!779183))

(declare-fun m!779185 () Bool)

(assert (=> b!834116 m!779185))

(declare-fun m!779187 () Bool)

(assert (=> b!834116 m!779187))

(push 1)

