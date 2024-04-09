; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71962 () Bool)

(assert start!71962)

(declare-fun b!835734 () Bool)

(declare-fun res!568691 () Bool)

(declare-fun e!466258 () Bool)

(assert (=> b!835734 (=> (not res!568691) (not e!466258))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835734 (= res!568691 (validKeyInArray!0 k!2968))))

(declare-fun b!835735 () Bool)

(declare-fun res!568688 () Bool)

(declare-fun e!466255 () Bool)

(assert (=> b!835735 (=> (not res!568688) (not e!466255))))

(declare-datatypes ((array!46816 0))(
  ( (array!46817 (arr!22438 (Array (_ BitVec 32) (_ BitVec 64))) (size!22859 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46816)

(declare-fun lt!380086 () array!46816)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46816 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835735 (= res!568688 (= (arrayCountValidKeys!0 lt!380086 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!835736 () Bool)

(declare-datatypes ((Unit!28754 0))(
  ( (Unit!28755) )
))
(declare-fun e!466259 () Unit!28754)

(declare-fun lt!380090 () Unit!28754)

(assert (=> b!835736 (= e!466259 lt!380090)))

(declare-fun lt!380088 () Unit!28754)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46816 (_ BitVec 32) (_ BitVec 32)) Unit!28754)

(assert (=> b!835736 (= lt!380088 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36763 () (_ BitVec 32))

(declare-fun lt!380089 () (_ BitVec 32))

(assert (=> b!835736 (= call!36763 lt!380089)))

(assert (=> b!835736 (= lt!380090 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380086 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36764 () (_ BitVec 32))

(declare-fun lt!380087 () (_ BitVec 32))

(assert (=> b!835736 (= call!36764 lt!380087)))

(declare-fun bm!36760 () Bool)

(assert (=> bm!36760 (= call!36764 (arrayCountValidKeys!0 lt!380086 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!568692 () Bool)

(assert (=> start!71962 (=> (not res!568692) (not e!466258))))

(assert (=> start!71962 (= res!568692 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22859 a!4227))))))

(assert (=> start!71962 e!466258))

(assert (=> start!71962 true))

(declare-fun array_inv!17861 (array!46816) Bool)

(assert (=> start!71962 (array_inv!17861 a!4227)))

(declare-fun b!835737 () Bool)

(declare-fun e!466257 () Bool)

(assert (=> b!835737 (= e!466257 e!466255)))

(declare-fun res!568690 () Bool)

(assert (=> b!835737 (=> (not res!568690) (not e!466255))))

(assert (=> b!835737 (= res!568690 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22859 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380084 () Unit!28754)

(assert (=> b!835737 (= lt!380084 e!466259)))

(declare-fun c!90919 () Bool)

(assert (=> b!835737 (= c!90919 (validKeyInArray!0 (select (arr!22438 a!4227) to!390)))))

(declare-fun b!835738 () Bool)

(declare-fun res!568687 () Bool)

(assert (=> b!835738 (=> (not res!568687) (not e!466258))))

(assert (=> b!835738 (= res!568687 (and (bvslt (size!22859 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22859 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun bm!36761 () Bool)

(assert (=> bm!36761 (= call!36763 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835739 () Bool)

(declare-fun lt!380091 () Unit!28754)

(assert (=> b!835739 (= e!466259 lt!380091)))

(declare-fun lt!380085 () Unit!28754)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46816 (_ BitVec 32) (_ BitVec 32)) Unit!28754)

(assert (=> b!835739 (= lt!380085 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835739 (= call!36763 (bvadd #b00000000000000000000000000000001 lt!380089))))

(assert (=> b!835739 (= lt!380091 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380086 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835739 (= call!36764 (bvadd #b00000000000000000000000000000001 lt!380087))))

(declare-fun b!835740 () Bool)

(assert (=> b!835740 (= e!466255 (bvsge (bvsub (size!22859 a!4227) to!390) (bvsub (bvadd #b00000000000000000000000000000001 (size!22859 a!4227)) to!390)))))

(declare-fun b!835741 () Bool)

(declare-fun res!568689 () Bool)

(assert (=> b!835741 (=> (not res!568689) (not e!466258))))

(assert (=> b!835741 (= res!568689 (not (validKeyInArray!0 (select (arr!22438 a!4227) i!1466))))))

(declare-fun b!835742 () Bool)

(assert (=> b!835742 (= e!466258 e!466257)))

(declare-fun res!568693 () Bool)

(assert (=> b!835742 (=> (not res!568693) (not e!466257))))

(assert (=> b!835742 (= res!568693 (and (= lt!380087 lt!380089) (not (= to!390 (size!22859 a!4227)))))))

(assert (=> b!835742 (= lt!380089 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835742 (= lt!380087 (arrayCountValidKeys!0 lt!380086 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835742 (= lt!380086 (array!46817 (store (arr!22438 a!4227) i!1466 k!2968) (size!22859 a!4227)))))

(assert (= (and start!71962 res!568692) b!835741))

(assert (= (and b!835741 res!568689) b!835734))

(assert (= (and b!835734 res!568691) b!835738))

(assert (= (and b!835738 res!568687) b!835742))

(assert (= (and b!835742 res!568693) b!835737))

(assert (= (and b!835737 c!90919) b!835739))

(assert (= (and b!835737 (not c!90919)) b!835736))

(assert (= (or b!835739 b!835736) bm!36760))

(assert (= (or b!835739 b!835736) bm!36761))

(assert (= (and b!835737 res!568690) b!835735))

(assert (= (and b!835735 res!568688) b!835740))

(declare-fun m!781163 () Bool)

(assert (=> b!835742 m!781163))

(declare-fun m!781165 () Bool)

(assert (=> b!835742 m!781165))

(declare-fun m!781167 () Bool)

(assert (=> b!835742 m!781167))

(declare-fun m!781169 () Bool)

(assert (=> b!835734 m!781169))

(declare-fun m!781171 () Bool)

(assert (=> b!835736 m!781171))

(declare-fun m!781173 () Bool)

(assert (=> b!835736 m!781173))

(declare-fun m!781175 () Bool)

(assert (=> b!835737 m!781175))

(assert (=> b!835737 m!781175))

(declare-fun m!781177 () Bool)

(assert (=> b!835737 m!781177))

(declare-fun m!781179 () Bool)

(assert (=> b!835735 m!781179))

(declare-fun m!781181 () Bool)

(assert (=> b!835735 m!781181))

(declare-fun m!781183 () Bool)

(assert (=> b!835741 m!781183))

(assert (=> b!835741 m!781183))

(declare-fun m!781185 () Bool)

(assert (=> b!835741 m!781185))

(declare-fun m!781187 () Bool)

(assert (=> b!835739 m!781187))

(declare-fun m!781189 () Bool)

(assert (=> b!835739 m!781189))

(assert (=> bm!36760 m!781179))

(assert (=> bm!36761 m!781181))

(declare-fun m!781191 () Bool)

(assert (=> start!71962 m!781191))

(push 1)

(assert (not b!835737))

(assert (not b!835742))

(assert (not b!835739))

(assert (not b!835735))

(assert (not b!835741))

(assert (not bm!36761))

(assert (not b!835736))

(assert (not b!835734))

(assert (not bm!36760))

(assert (not start!71962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

