; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71960 () Bool)

(assert start!71960)

(declare-fun b!835708 () Bool)

(declare-fun res!568670 () Bool)

(declare-fun e!466242 () Bool)

(assert (=> b!835708 (=> (not res!568670) (not e!466242))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835708 (= res!568670 (validKeyInArray!0 k!2968))))

(declare-fun b!835709 () Bool)

(declare-datatypes ((Unit!28752 0))(
  ( (Unit!28753) )
))
(declare-fun e!466243 () Unit!28752)

(declare-fun lt!380062 () Unit!28752)

(assert (=> b!835709 (= e!466243 lt!380062)))

(declare-datatypes ((array!46814 0))(
  ( (array!46815 (arr!22437 (Array (_ BitVec 32) (_ BitVec 64))) (size!22858 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46814)

(declare-fun lt!380066 () Unit!28752)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46814 (_ BitVec 32) (_ BitVec 32)) Unit!28752)

(assert (=> b!835709 (= lt!380066 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36758 () (_ BitVec 32))

(declare-fun lt!380063 () (_ BitVec 32))

(assert (=> b!835709 (= call!36758 lt!380063)))

(declare-fun lt!380060 () array!46814)

(assert (=> b!835709 (= lt!380062 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380060 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36757 () (_ BitVec 32))

(declare-fun lt!380067 () (_ BitVec 32))

(assert (=> b!835709 (= call!36757 lt!380067)))

(declare-fun bm!36754 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46814 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36754 (= call!36758 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835710 () Bool)

(declare-fun res!568671 () Bool)

(assert (=> b!835710 (=> (not res!568671) (not e!466242))))

(assert (=> b!835710 (= res!568671 (and (bvslt (size!22858 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22858 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun bm!36755 () Bool)

(assert (=> bm!36755 (= call!36757 (arrayCountValidKeys!0 lt!380060 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835712 () Bool)

(declare-fun lt!380061 () Unit!28752)

(assert (=> b!835712 (= e!466243 lt!380061)))

(declare-fun lt!380064 () Unit!28752)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46814 (_ BitVec 32) (_ BitVec 32)) Unit!28752)

(assert (=> b!835712 (= lt!380064 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835712 (= call!36758 (bvadd #b00000000000000000000000000000001 lt!380063))))

(assert (=> b!835712 (= lt!380061 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380060 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835712 (= call!36757 (bvadd #b00000000000000000000000000000001 lt!380067))))

(declare-fun b!835713 () Bool)

(declare-fun e!466244 () Bool)

(assert (=> b!835713 (= e!466242 e!466244)))

(declare-fun res!568667 () Bool)

(assert (=> b!835713 (=> (not res!568667) (not e!466244))))

(assert (=> b!835713 (= res!568667 (and (= lt!380067 lt!380063) (not (= to!390 (size!22858 a!4227)))))))

(assert (=> b!835713 (= lt!380063 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835713 (= lt!380067 (arrayCountValidKeys!0 lt!380060 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835713 (= lt!380060 (array!46815 (store (arr!22437 a!4227) i!1466 k!2968) (size!22858 a!4227)))))

(declare-fun b!835714 () Bool)

(declare-fun e!466240 () Bool)

(assert (=> b!835714 (= e!466244 e!466240)))

(declare-fun res!568668 () Bool)

(assert (=> b!835714 (=> (not res!568668) (not e!466240))))

(assert (=> b!835714 (= res!568668 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22858 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380065 () Unit!28752)

(assert (=> b!835714 (= lt!380065 e!466243)))

(declare-fun c!90916 () Bool)

(assert (=> b!835714 (= c!90916 (validKeyInArray!0 (select (arr!22437 a!4227) to!390)))))

(declare-fun b!835715 () Bool)

(assert (=> b!835715 (= e!466240 (not (= (arrayCountValidKeys!0 lt!380060 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))))

(declare-fun b!835711 () Bool)

(declare-fun res!568672 () Bool)

(assert (=> b!835711 (=> (not res!568672) (not e!466242))))

(assert (=> b!835711 (= res!568672 (not (validKeyInArray!0 (select (arr!22437 a!4227) i!1466))))))

(declare-fun res!568669 () Bool)

(assert (=> start!71960 (=> (not res!568669) (not e!466242))))

(assert (=> start!71960 (= res!568669 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22858 a!4227))))))

(assert (=> start!71960 e!466242))

(assert (=> start!71960 true))

(declare-fun array_inv!17860 (array!46814) Bool)

(assert (=> start!71960 (array_inv!17860 a!4227)))

(assert (= (and start!71960 res!568669) b!835711))

(assert (= (and b!835711 res!568672) b!835708))

(assert (= (and b!835708 res!568670) b!835710))

(assert (= (and b!835710 res!568671) b!835713))

(assert (= (and b!835713 res!568667) b!835714))

(assert (= (and b!835714 c!90916) b!835712))

(assert (= (and b!835714 (not c!90916)) b!835709))

(assert (= (or b!835712 b!835709) bm!36755))

(assert (= (or b!835712 b!835709) bm!36754))

(assert (= (and b!835714 res!568668) b!835715))

(declare-fun m!781133 () Bool)

(assert (=> b!835713 m!781133))

(declare-fun m!781135 () Bool)

(assert (=> b!835713 m!781135))

(declare-fun m!781137 () Bool)

(assert (=> b!835713 m!781137))

(declare-fun m!781139 () Bool)

(assert (=> b!835712 m!781139))

(declare-fun m!781141 () Bool)

(assert (=> b!835712 m!781141))

(declare-fun m!781143 () Bool)

(assert (=> b!835711 m!781143))

(assert (=> b!835711 m!781143))

(declare-fun m!781145 () Bool)

(assert (=> b!835711 m!781145))

(declare-fun m!781147 () Bool)

(assert (=> bm!36755 m!781147))

(declare-fun m!781149 () Bool)

(assert (=> start!71960 m!781149))

(declare-fun m!781151 () Bool)

(assert (=> b!835708 m!781151))

(assert (=> b!835715 m!781147))

(declare-fun m!781153 () Bool)

(assert (=> b!835715 m!781153))

(declare-fun m!781155 () Bool)

(assert (=> b!835714 m!781155))

(assert (=> b!835714 m!781155))

(declare-fun m!781157 () Bool)

(assert (=> b!835714 m!781157))

(assert (=> bm!36754 m!781153))

(declare-fun m!781159 () Bool)

(assert (=> b!835709 m!781159))

(declare-fun m!781161 () Bool)

(assert (=> b!835709 m!781161))

(push 1)

(assert (not b!835714))

(assert (not b!835715))

(assert (not b!835711))

(assert (not b!835712))

(assert (not start!71960))

(assert (not b!835709))

(assert (not b!835708))

(assert (not b!835713))

(assert (not bm!36754))

(assert (not bm!36755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

