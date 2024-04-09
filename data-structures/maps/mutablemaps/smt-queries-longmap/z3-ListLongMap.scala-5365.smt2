; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71814 () Bool)

(assert start!71814)

(declare-fun b!834208 () Bool)

(declare-fun e!465454 () Bool)

(declare-fun e!465453 () Bool)

(assert (=> b!834208 (= e!465454 e!465453)))

(declare-fun res!567391 () Bool)

(assert (=> b!834208 (=> (not res!567391) (not e!465453))))

(declare-datatypes ((array!46668 0))(
  ( (array!46669 (arr!22364 (Array (_ BitVec 32) (_ BitVec 64))) (size!22785 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46668)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834208 (= res!567391 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22785 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28654 0))(
  ( (Unit!28655) )
))
(declare-fun lt!378934 () Unit!28654)

(declare-fun e!465451 () Unit!28654)

(assert (=> b!834208 (= lt!378934 e!465451)))

(declare-fun c!90805 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834208 (= c!90805 (validKeyInArray!0 (select (arr!22364 a!4227) to!390)))))

(declare-fun b!834209 () Bool)

(declare-fun res!567389 () Bool)

(declare-fun e!465455 () Bool)

(assert (=> b!834209 (=> (not res!567389) (not e!465455))))

(assert (=> b!834209 (= res!567389 (and (bvslt (size!22785 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22785 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834210 () Bool)

(declare-fun res!567394 () Bool)

(assert (=> b!834210 (=> (not res!567394) (not e!465455))))

(assert (=> b!834210 (= res!567394 (not (validKeyInArray!0 (select (arr!22364 a!4227) i!1466))))))

(declare-fun b!834212 () Bool)

(declare-fun lt!378930 () Unit!28654)

(assert (=> b!834212 (= e!465451 lt!378930)))

(declare-fun lt!378935 () Unit!28654)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46668 (_ BitVec 32) (_ BitVec 32)) Unit!28654)

(assert (=> b!834212 (= lt!378935 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36536 () (_ BitVec 32))

(declare-fun lt!378939 () (_ BitVec 32))

(assert (=> b!834212 (= call!36536 (bvadd #b00000000000000000000000000000001 lt!378939))))

(declare-fun lt!378937 () array!46668)

(assert (=> b!834212 (= lt!378930 (lemmaValidKeyIncreasesNumOfKeys!0 lt!378937 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36535 () (_ BitVec 32))

(declare-fun lt!378936 () (_ BitVec 32))

(assert (=> b!834212 (= call!36535 (bvadd #b00000000000000000000000000000001 lt!378936))))

(declare-fun b!834213 () Bool)

(assert (=> b!834213 (= e!465453 false)))

(declare-fun lt!378931 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46668 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834213 (= lt!378931 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun lt!378938 () (_ BitVec 32))

(assert (=> b!834213 (= lt!378938 (arrayCountValidKeys!0 lt!378937 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834211 () Bool)

(declare-fun lt!378933 () Unit!28654)

(assert (=> b!834211 (= e!465451 lt!378933)))

(declare-fun lt!378932 () Unit!28654)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46668 (_ BitVec 32) (_ BitVec 32)) Unit!28654)

(assert (=> b!834211 (= lt!378932 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834211 (= call!36536 lt!378939)))

(assert (=> b!834211 (= lt!378933 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!378937 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834211 (= call!36535 lt!378936)))

(declare-fun res!567392 () Bool)

(assert (=> start!71814 (=> (not res!567392) (not e!465455))))

(assert (=> start!71814 (= res!567392 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22785 a!4227))))))

(assert (=> start!71814 e!465455))

(assert (=> start!71814 true))

(declare-fun array_inv!17787 (array!46668) Bool)

(assert (=> start!71814 (array_inv!17787 a!4227)))

(declare-fun b!834214 () Bool)

(assert (=> b!834214 (= e!465455 e!465454)))

(declare-fun res!567390 () Bool)

(assert (=> b!834214 (=> (not res!567390) (not e!465454))))

(assert (=> b!834214 (= res!567390 (and (= lt!378936 lt!378939) (not (= to!390 (size!22785 a!4227)))))))

(assert (=> b!834214 (= lt!378939 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834214 (= lt!378936 (arrayCountValidKeys!0 lt!378937 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!834214 (= lt!378937 (array!46669 (store (arr!22364 a!4227) i!1466 k0!2968) (size!22785 a!4227)))))

(declare-fun bm!36532 () Bool)

(assert (=> bm!36532 (= call!36535 (arrayCountValidKeys!0 lt!378937 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834215 () Bool)

(declare-fun res!567393 () Bool)

(assert (=> b!834215 (=> (not res!567393) (not e!465455))))

(assert (=> b!834215 (= res!567393 (validKeyInArray!0 k0!2968))))

(declare-fun bm!36533 () Bool)

(assert (=> bm!36533 (= call!36536 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71814 res!567392) b!834210))

(assert (= (and b!834210 res!567394) b!834215))

(assert (= (and b!834215 res!567393) b!834209))

(assert (= (and b!834209 res!567389) b!834214))

(assert (= (and b!834214 res!567390) b!834208))

(assert (= (and b!834208 c!90805) b!834212))

(assert (= (and b!834208 (not c!90805)) b!834211))

(assert (= (or b!834212 b!834211) bm!36532))

(assert (= (or b!834212 b!834211) bm!36533))

(assert (= (and b!834208 res!567391) b!834213))

(declare-fun m!779283 () Bool)

(assert (=> start!71814 m!779283))

(declare-fun m!779285 () Bool)

(assert (=> bm!36533 m!779285))

(declare-fun m!779287 () Bool)

(assert (=> bm!36532 m!779287))

(assert (=> b!834213 m!779285))

(assert (=> b!834213 m!779287))

(declare-fun m!779289 () Bool)

(assert (=> b!834215 m!779289))

(declare-fun m!779291 () Bool)

(assert (=> b!834208 m!779291))

(assert (=> b!834208 m!779291))

(declare-fun m!779293 () Bool)

(assert (=> b!834208 m!779293))

(declare-fun m!779295 () Bool)

(assert (=> b!834210 m!779295))

(assert (=> b!834210 m!779295))

(declare-fun m!779297 () Bool)

(assert (=> b!834210 m!779297))

(declare-fun m!779299 () Bool)

(assert (=> b!834212 m!779299))

(declare-fun m!779301 () Bool)

(assert (=> b!834212 m!779301))

(declare-fun m!779303 () Bool)

(assert (=> b!834214 m!779303))

(declare-fun m!779305 () Bool)

(assert (=> b!834214 m!779305))

(declare-fun m!779307 () Bool)

(assert (=> b!834214 m!779307))

(declare-fun m!779309 () Bool)

(assert (=> b!834211 m!779309))

(declare-fun m!779311 () Bool)

(assert (=> b!834211 m!779311))

(check-sat (not start!71814) (not b!834215) (not b!834212) (not b!834211) (not b!834210) (not b!834213) (not bm!36532) (not b!834208) (not bm!36533) (not b!834214))
(check-sat)
