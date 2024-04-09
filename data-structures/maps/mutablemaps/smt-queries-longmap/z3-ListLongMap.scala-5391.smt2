; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71970 () Bool)

(assert start!71970)

(declare-datatypes ((array!46824 0))(
  ( (array!46825 (arr!22442 (Array (_ BitVec 32) (_ BitVec 64))) (size!22863 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46824)

(declare-fun bm!36784 () Bool)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun call!36788 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46824 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36784 (= call!36788 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835842 () Bool)

(declare-datatypes ((Unit!28762 0))(
  ( (Unit!28763) )
))
(declare-fun e!466318 () Unit!28762)

(declare-fun lt!380191 () Unit!28762)

(assert (=> b!835842 (= e!466318 lt!380191)))

(declare-fun lt!380189 () Unit!28762)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46824 (_ BitVec 32) (_ BitVec 32)) Unit!28762)

(assert (=> b!835842 (= lt!380189 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!380188 () (_ BitVec 32))

(assert (=> b!835842 (= call!36788 (bvadd #b00000000000000000000000000000001 lt!380188))))

(declare-fun lt!380190 () array!46824)

(assert (=> b!835842 (= lt!380191 (lemmaValidKeyIncreasesNumOfKeys!0 lt!380190 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36787 () (_ BitVec 32))

(declare-fun lt!380193 () (_ BitVec 32))

(assert (=> b!835842 (= call!36787 (bvadd #b00000000000000000000000000000001 lt!380193))))

(declare-fun bm!36785 () Bool)

(assert (=> bm!36785 (= call!36787 (arrayCountValidKeys!0 lt!380190 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!568775 () Bool)

(declare-fun e!466315 () Bool)

(assert (=> start!71970 (=> (not res!568775) (not e!466315))))

(assert (=> start!71970 (= res!568775 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22863 a!4227))))))

(assert (=> start!71970 e!466315))

(assert (=> start!71970 true))

(declare-fun array_inv!17865 (array!46824) Bool)

(assert (=> start!71970 (array_inv!17865 a!4227)))

(declare-fun b!835843 () Bool)

(declare-fun e!466317 () Bool)

(assert (=> b!835843 (= e!466317 (not true))))

(assert (=> b!835843 (= (arrayCountValidKeys!0 lt!380190 (bvadd #b00000000000000000000000000000001 i!1466) (size!22863 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22863 a!4227)))))

(declare-fun lt!380185 () Unit!28762)

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46824 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28762)

(assert (=> b!835843 (= lt!380185 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k0!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835844 () Bool)

(declare-fun res!568774 () Bool)

(assert (=> b!835844 (=> (not res!568774) (not e!466315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835844 (= res!568774 (not (validKeyInArray!0 (select (arr!22442 a!4227) i!1466))))))

(declare-fun b!835845 () Bool)

(declare-fun res!568772 () Bool)

(assert (=> b!835845 (=> (not res!568772) (not e!466317))))

(assert (=> b!835845 (= res!568772 (= (arrayCountValidKeys!0 lt!380190 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!835846 () Bool)

(declare-fun e!466316 () Bool)

(assert (=> b!835846 (= e!466316 e!466317)))

(declare-fun res!568777 () Bool)

(assert (=> b!835846 (=> (not res!568777) (not e!466317))))

(assert (=> b!835846 (= res!568777 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22863 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!380192 () Unit!28762)

(assert (=> b!835846 (= lt!380192 e!466318)))

(declare-fun c!90931 () Bool)

(assert (=> b!835846 (= c!90931 (validKeyInArray!0 (select (arr!22442 a!4227) to!390)))))

(declare-fun b!835847 () Bool)

(assert (=> b!835847 (= e!466315 e!466316)))

(declare-fun res!568771 () Bool)

(assert (=> b!835847 (=> (not res!568771) (not e!466316))))

(assert (=> b!835847 (= res!568771 (and (= lt!380193 lt!380188) (not (= to!390 (size!22863 a!4227)))))))

(assert (=> b!835847 (= lt!380188 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835847 (= lt!380193 (arrayCountValidKeys!0 lt!380190 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835847 (= lt!380190 (array!46825 (store (arr!22442 a!4227) i!1466 k0!2968) (size!22863 a!4227)))))

(declare-fun b!835848 () Bool)

(declare-fun lt!380186 () Unit!28762)

(assert (=> b!835848 (= e!466318 lt!380186)))

(declare-fun lt!380187 () Unit!28762)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46824 (_ BitVec 32) (_ BitVec 32)) Unit!28762)

(assert (=> b!835848 (= lt!380187 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835848 (= call!36788 lt!380188)))

(assert (=> b!835848 (= lt!380186 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!380190 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835848 (= call!36787 lt!380193)))

(declare-fun b!835849 () Bool)

(declare-fun res!568773 () Bool)

(assert (=> b!835849 (=> (not res!568773) (not e!466315))))

(assert (=> b!835849 (= res!568773 (and (bvslt (size!22863 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22863 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835850 () Bool)

(declare-fun res!568776 () Bool)

(assert (=> b!835850 (=> (not res!568776) (not e!466315))))

(assert (=> b!835850 (= res!568776 (validKeyInArray!0 k0!2968))))

(assert (= (and start!71970 res!568775) b!835844))

(assert (= (and b!835844 res!568774) b!835850))

(assert (= (and b!835850 res!568776) b!835849))

(assert (= (and b!835849 res!568773) b!835847))

(assert (= (and b!835847 res!568771) b!835846))

(assert (= (and b!835846 c!90931) b!835842))

(assert (= (and b!835846 (not c!90931)) b!835848))

(assert (= (or b!835842 b!835848) bm!36784))

(assert (= (or b!835842 b!835848) bm!36785))

(assert (= (and b!835846 res!568777) b!835845))

(assert (= (and b!835845 res!568772) b!835843))

(declare-fun m!781293 () Bool)

(assert (=> b!835844 m!781293))

(assert (=> b!835844 m!781293))

(declare-fun m!781295 () Bool)

(assert (=> b!835844 m!781295))

(declare-fun m!781297 () Bool)

(assert (=> bm!36784 m!781297))

(declare-fun m!781299 () Bool)

(assert (=> b!835847 m!781299))

(declare-fun m!781301 () Bool)

(assert (=> b!835847 m!781301))

(declare-fun m!781303 () Bool)

(assert (=> b!835847 m!781303))

(declare-fun m!781305 () Bool)

(assert (=> b!835848 m!781305))

(declare-fun m!781307 () Bool)

(assert (=> b!835848 m!781307))

(declare-fun m!781309 () Bool)

(assert (=> b!835846 m!781309))

(assert (=> b!835846 m!781309))

(declare-fun m!781311 () Bool)

(assert (=> b!835846 m!781311))

(declare-fun m!781313 () Bool)

(assert (=> b!835842 m!781313))

(declare-fun m!781315 () Bool)

(assert (=> b!835842 m!781315))

(declare-fun m!781317 () Bool)

(assert (=> start!71970 m!781317))

(declare-fun m!781319 () Bool)

(assert (=> b!835843 m!781319))

(declare-fun m!781321 () Bool)

(assert (=> b!835843 m!781321))

(declare-fun m!781323 () Bool)

(assert (=> b!835843 m!781323))

(declare-fun m!781325 () Bool)

(assert (=> b!835850 m!781325))

(declare-fun m!781327 () Bool)

(assert (=> bm!36785 m!781327))

(assert (=> b!835845 m!781327))

(assert (=> b!835845 m!781297))

(check-sat (not bm!36785) (not b!835844) (not bm!36784) (not b!835843) (not b!835847) (not b!835850) (not b!835848) (not b!835842) (not start!71970) (not b!835845) (not b!835846))
(check-sat)
