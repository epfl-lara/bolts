; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71964 () Bool)

(assert start!71964)

(declare-fun res!568708 () Bool)

(declare-fun e!466272 () Bool)

(assert (=> start!71964 (=> (not res!568708) (not e!466272))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46818 0))(
  ( (array!46819 (arr!22439 (Array (_ BitVec 32) (_ BitVec 64))) (size!22860 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46818)

(assert (=> start!71964 (= res!568708 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22860 a!4227))))))

(assert (=> start!71964 e!466272))

(assert (=> start!71964 true))

(declare-fun array_inv!17862 (array!46818) Bool)

(assert (=> start!71964 (array_inv!17862 a!4227)))

(declare-fun call!36770 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun bm!36766 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46818 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36766 (= call!36770 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835761 () Bool)

(declare-fun e!466274 () Bool)

(assert (=> b!835761 (= e!466272 e!466274)))

(declare-fun res!568709 () Bool)

(assert (=> b!835761 (=> (not res!568709) (not e!466274))))

(declare-fun lt!380112 () (_ BitVec 32))

(declare-fun lt!380108 () (_ BitVec 32))

(assert (=> b!835761 (= res!568709 (and (= lt!380112 lt!380108) (not (= to!390 (size!22860 a!4227)))))))

(assert (=> b!835761 (= lt!380108 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!380115 () array!46818)

(assert (=> b!835761 (= lt!380112 (arrayCountValidKeys!0 lt!380115 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835761 (= lt!380115 (array!46819 (store (arr!22439 a!4227) i!1466 k0!2968) (size!22860 a!4227)))))

(declare-fun b!835762 () Bool)

(declare-fun res!568713 () Bool)

(assert (=> b!835762 (=> (not res!568713) (not e!466272))))

(assert (=> b!835762 (= res!568713 (and (bvslt (size!22860 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22860 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835763 () Bool)

(declare-fun res!568712 () Bool)

(assert (=> b!835763 (=> (not res!568712) (not e!466272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835763 (= res!568712 (not (validKeyInArray!0 (select (arr!22439 a!4227) i!1466))))))

(declare-fun b!835764 () Bool)

(declare-fun res!568711 () Bool)

(declare-fun e!466270 () Bool)

(assert (=> b!835764 (=> (not res!568711) (not e!466270))))

(assert (=> b!835764 (= res!568711 (= (arrayCountValidKeys!0 lt!380115 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun bm!36767 () Bool)

(declare-fun call!36769 () (_ BitVec 32))

(assert (=> bm!36767 (= call!36769 (arrayCountValidKeys!0 lt!380115 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835765 () Bool)

(declare-datatypes ((Unit!28756 0))(
  ( (Unit!28757) )
))
(declare-fun e!466273 () Unit!28756)

(declare-fun lt!380109 () Unit!28756)

(assert (=> b!835765 (= e!466273 lt!380109)))

(declare-fun lt!380110 () Unit!28756)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46818 (_ BitVec 32) (_ BitVec 32)) Unit!28756)

(assert (=> b!835765 (= lt!380110 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835765 (= call!36770 (bvadd #b00000000000000000000000000000001 lt!380108))))

(assert (=> b!835765 (= lt!380109 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380115 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835765 (= call!36769 (bvadd #b00000000000000000000000000000001 lt!380112))))

(declare-fun b!835766 () Bool)

(assert (=> b!835766 (= e!466274 e!466270)))

(declare-fun res!568710 () Bool)

(assert (=> b!835766 (=> (not res!568710) (not e!466270))))

(assert (=> b!835766 (= res!568710 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22860 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380113 () Unit!28756)

(assert (=> b!835766 (= lt!380113 e!466273)))

(declare-fun c!90922 () Bool)

(assert (=> b!835766 (= c!90922 (validKeyInArray!0 (select (arr!22439 a!4227) to!390)))))

(declare-fun b!835767 () Bool)

(assert (=> b!835767 (= e!466270 (bvsge (bvsub (size!22860 a!4227) to!390) (bvsub (bvadd #b00000000000000000000000000000001 (size!22860 a!4227)) to!390)))))

(declare-fun b!835768 () Bool)

(declare-fun res!568714 () Bool)

(assert (=> b!835768 (=> (not res!568714) (not e!466272))))

(assert (=> b!835768 (= res!568714 (validKeyInArray!0 k0!2968))))

(declare-fun b!835769 () Bool)

(declare-fun lt!380114 () Unit!28756)

(assert (=> b!835769 (= e!466273 lt!380114)))

(declare-fun lt!380111 () Unit!28756)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46818 (_ BitVec 32) (_ BitVec 32)) Unit!28756)

(assert (=> b!835769 (= lt!380111 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835769 (= call!36770 lt!380108)))

(assert (=> b!835769 (= lt!380114 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380115 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835769 (= call!36769 lt!380112)))

(assert (= (and start!71964 res!568708) b!835763))

(assert (= (and b!835763 res!568712) b!835768))

(assert (= (and b!835768 res!568714) b!835762))

(assert (= (and b!835762 res!568713) b!835761))

(assert (= (and b!835761 res!568709) b!835766))

(assert (= (and b!835766 c!90922) b!835765))

(assert (= (and b!835766 (not c!90922)) b!835769))

(assert (= (or b!835765 b!835769) bm!36767))

(assert (= (or b!835765 b!835769) bm!36766))

(assert (= (and b!835766 res!568710) b!835764))

(assert (= (and b!835764 res!568711) b!835767))

(declare-fun m!781193 () Bool)

(assert (=> b!835763 m!781193))

(assert (=> b!835763 m!781193))

(declare-fun m!781195 () Bool)

(assert (=> b!835763 m!781195))

(declare-fun m!781197 () Bool)

(assert (=> b!835766 m!781197))

(assert (=> b!835766 m!781197))

(declare-fun m!781199 () Bool)

(assert (=> b!835766 m!781199))

(declare-fun m!781201 () Bool)

(assert (=> b!835761 m!781201))

(declare-fun m!781203 () Bool)

(assert (=> b!835761 m!781203))

(declare-fun m!781205 () Bool)

(assert (=> b!835761 m!781205))

(declare-fun m!781207 () Bool)

(assert (=> start!71964 m!781207))

(declare-fun m!781209 () Bool)

(assert (=> bm!36767 m!781209))

(declare-fun m!781211 () Bool)

(assert (=> b!835769 m!781211))

(declare-fun m!781213 () Bool)

(assert (=> b!835769 m!781213))

(assert (=> b!835764 m!781209))

(declare-fun m!781215 () Bool)

(assert (=> b!835764 m!781215))

(assert (=> bm!36766 m!781215))

(declare-fun m!781217 () Bool)

(assert (=> b!835768 m!781217))

(declare-fun m!781219 () Bool)

(assert (=> b!835765 m!781219))

(declare-fun m!781221 () Bool)

(assert (=> b!835765 m!781221))

(check-sat (not bm!36766) (not b!835769) (not b!835761) (not start!71964) (not b!835768) (not b!835765) (not b!835766) (not bm!36767) (not b!835764) (not b!835763))
(check-sat)
