; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71958 () Bool)

(assert start!71958)

(declare-fun b!835684 () Bool)

(declare-datatypes ((Unit!28750 0))(
  ( (Unit!28751) )
))
(declare-fun e!466229 () Unit!28750)

(declare-fun lt!380039 () Unit!28750)

(assert (=> b!835684 (= e!466229 lt!380039)))

(declare-datatypes ((array!46812 0))(
  ( (array!46813 (arr!22436 (Array (_ BitVec 32) (_ BitVec 64))) (size!22857 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46812)

(declare-fun lt!380040 () Unit!28750)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46812 (_ BitVec 32) (_ BitVec 32)) Unit!28750)

(assert (=> b!835684 (= lt!380040 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36752 () (_ BitVec 32))

(declare-fun lt!380041 () (_ BitVec 32))

(assert (=> b!835684 (= call!36752 (bvadd #b00000000000000000000000000000001 lt!380041))))

(declare-fun lt!380042 () array!46812)

(assert (=> b!835684 (= lt!380039 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380042 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36751 () (_ BitVec 32))

(declare-fun lt!380043 () (_ BitVec 32))

(assert (=> b!835684 (= call!36751 (bvadd #b00000000000000000000000000000001 lt!380043))))

(declare-fun b!835685 () Bool)

(declare-fun res!568651 () Bool)

(declare-fun e!466228 () Bool)

(assert (=> b!835685 (=> (not res!568651) (not e!466228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835685 (= res!568651 (not (validKeyInArray!0 (select (arr!22436 a!4227) i!1466))))))

(declare-fun res!568649 () Bool)

(assert (=> start!71958 (=> (not res!568649) (not e!466228))))

(assert (=> start!71958 (= res!568649 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22857 a!4227))))))

(assert (=> start!71958 e!466228))

(assert (=> start!71958 true))

(declare-fun array_inv!17859 (array!46812) Bool)

(assert (=> start!71958 (array_inv!17859 a!4227)))

(declare-fun b!835686 () Bool)

(declare-fun res!568653 () Bool)

(assert (=> b!835686 (=> (not res!568653) (not e!466228))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!835686 (= res!568653 (validKeyInArray!0 k0!2968))))

(declare-fun b!835687 () Bool)

(declare-fun e!466225 () Bool)

(declare-fun e!466226 () Bool)

(assert (=> b!835687 (= e!466225 e!466226)))

(declare-fun res!568654 () Bool)

(assert (=> b!835687 (=> (not res!568654) (not e!466226))))

(assert (=> b!835687 (= res!568654 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22857 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380037 () Unit!28750)

(assert (=> b!835687 (= lt!380037 e!466229)))

(declare-fun c!90913 () Bool)

(assert (=> b!835687 (= c!90913 (validKeyInArray!0 (select (arr!22436 a!4227) to!390)))))

(declare-fun bm!36748 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46812 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36748 (= call!36752 (arrayCountValidKeys!0 (ite c!90913 a!4227 lt!380042) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835688 () Bool)

(assert (=> b!835688 (= e!466228 e!466225)))

(declare-fun res!568650 () Bool)

(assert (=> b!835688 (=> (not res!568650) (not e!466225))))

(assert (=> b!835688 (= res!568650 (and (= lt!380043 lt!380041) (not (= to!390 (size!22857 a!4227)))))))

(assert (=> b!835688 (= lt!380041 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835688 (= lt!380043 (arrayCountValidKeys!0 lt!380042 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835688 (= lt!380042 (array!46813 (store (arr!22436 a!4227) i!1466 k0!2968) (size!22857 a!4227)))))

(declare-fun b!835689 () Bool)

(declare-fun lt!380036 () Unit!28750)

(assert (=> b!835689 (= e!466229 lt!380036)))

(declare-fun lt!380038 () Unit!28750)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46812 (_ BitVec 32) (_ BitVec 32)) Unit!28750)

(assert (=> b!835689 (= lt!380038 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835689 (= call!36751 lt!380041)))

(assert (=> b!835689 (= lt!380036 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380042 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835689 (= call!36752 lt!380043)))

(declare-fun b!835690 () Bool)

(declare-fun res!568652 () Bool)

(assert (=> b!835690 (=> (not res!568652) (not e!466228))))

(assert (=> b!835690 (= res!568652 (and (bvslt (size!22857 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22857 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835691 () Bool)

(assert (=> b!835691 (= e!466226 (not (= (arrayCountValidKeys!0 lt!380042 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))))

(declare-fun bm!36749 () Bool)

(assert (=> bm!36749 (= call!36751 (arrayCountValidKeys!0 (ite c!90913 lt!380042 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71958 res!568649) b!835685))

(assert (= (and b!835685 res!568651) b!835686))

(assert (= (and b!835686 res!568653) b!835690))

(assert (= (and b!835690 res!568652) b!835688))

(assert (= (and b!835688 res!568650) b!835687))

(assert (= (and b!835687 c!90913) b!835684))

(assert (= (and b!835687 (not c!90913)) b!835689))

(assert (= (or b!835684 b!835689) bm!36748))

(assert (= (or b!835684 b!835689) bm!36749))

(assert (= (and b!835687 res!568654) b!835691))

(declare-fun m!781099 () Bool)

(assert (=> b!835691 m!781099))

(declare-fun m!781101 () Bool)

(assert (=> b!835691 m!781101))

(declare-fun m!781103 () Bool)

(assert (=> b!835686 m!781103))

(declare-fun m!781105 () Bool)

(assert (=> b!835689 m!781105))

(declare-fun m!781107 () Bool)

(assert (=> b!835689 m!781107))

(declare-fun m!781109 () Bool)

(assert (=> b!835685 m!781109))

(assert (=> b!835685 m!781109))

(declare-fun m!781111 () Bool)

(assert (=> b!835685 m!781111))

(declare-fun m!781113 () Bool)

(assert (=> bm!36748 m!781113))

(declare-fun m!781115 () Bool)

(assert (=> b!835684 m!781115))

(declare-fun m!781117 () Bool)

(assert (=> b!835684 m!781117))

(declare-fun m!781119 () Bool)

(assert (=> b!835687 m!781119))

(assert (=> b!835687 m!781119))

(declare-fun m!781121 () Bool)

(assert (=> b!835687 m!781121))

(declare-fun m!781123 () Bool)

(assert (=> bm!36749 m!781123))

(declare-fun m!781125 () Bool)

(assert (=> start!71958 m!781125))

(declare-fun m!781127 () Bool)

(assert (=> b!835688 m!781127))

(declare-fun m!781129 () Bool)

(assert (=> b!835688 m!781129))

(declare-fun m!781131 () Bool)

(assert (=> b!835688 m!781131))

(check-sat (not bm!36749) (not b!835687) (not b!835685) (not b!835684) (not b!835689) (not b!835688) (not start!71958) (not bm!36748) (not b!835691) (not b!835686))
(check-sat)
