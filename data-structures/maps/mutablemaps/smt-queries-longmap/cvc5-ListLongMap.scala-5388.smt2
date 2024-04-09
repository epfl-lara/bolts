; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71950 () Bool)

(assert start!71950)

(declare-fun res!568584 () Bool)

(declare-fun e!466175 () Bool)

(assert (=> start!71950 (=> (not res!568584) (not e!466175))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46804 0))(
  ( (array!46805 (arr!22432 (Array (_ BitVec 32) (_ BitVec 64))) (size!22853 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46804)

(assert (=> start!71950 (= res!568584 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22853 a!4227))))))

(assert (=> start!71950 e!466175))

(assert (=> start!71950 true))

(declare-fun array_inv!17855 (array!46804) Bool)

(assert (=> start!71950 (array_inv!17855 a!4227)))

(declare-fun call!36728 () (_ BitVec 32))

(declare-fun bm!36724 () Bool)

(declare-fun lt!379945 () array!46804)

(declare-fun c!90901 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46804 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36724 (= call!36728 (arrayCountValidKeys!0 (ite c!90901 a!4227 lt!379945) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun e!466174 () Bool)

(declare-fun b!835595 () Bool)

(assert (=> b!835595 (= e!466174 (or (bvslt (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) (size!22853 a!4227)) (bvsle (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-datatypes ((Unit!28742 0))(
  ( (Unit!28743) )
))
(declare-fun lt!379940 () Unit!28742)

(declare-fun e!466173 () Unit!28742)

(assert (=> b!835595 (= lt!379940 e!466173)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835595 (= c!90901 (validKeyInArray!0 (select (arr!22432 a!4227) to!390)))))

(declare-fun b!835596 () Bool)

(declare-fun res!568585 () Bool)

(assert (=> b!835596 (=> (not res!568585) (not e!466175))))

(assert (=> b!835596 (= res!568585 (not (validKeyInArray!0 (select (arr!22432 a!4227) i!1466))))))

(declare-fun b!835597 () Bool)

(declare-fun lt!379942 () Unit!28742)

(assert (=> b!835597 (= e!466173 lt!379942)))

(declare-fun lt!379943 () Unit!28742)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46804 (_ BitVec 32) (_ BitVec 32)) Unit!28742)

(assert (=> b!835597 (= lt!379943 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379944 () (_ BitVec 32))

(assert (=> b!835597 (= call!36728 (bvadd #b00000000000000000000000000000001 lt!379944))))

(assert (=> b!835597 (= lt!379942 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379945 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36727 () (_ BitVec 32))

(declare-fun lt!379947 () (_ BitVec 32))

(assert (=> b!835597 (= call!36727 (bvadd #b00000000000000000000000000000001 lt!379947))))

(declare-fun b!835598 () Bool)

(declare-fun res!568587 () Bool)

(assert (=> b!835598 (=> (not res!568587) (not e!466175))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835598 (= res!568587 (validKeyInArray!0 k!2968))))

(declare-fun bm!36725 () Bool)

(assert (=> bm!36725 (= call!36727 (arrayCountValidKeys!0 (ite c!90901 lt!379945 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835599 () Bool)

(assert (=> b!835599 (= e!466175 e!466174)))

(declare-fun res!568586 () Bool)

(assert (=> b!835599 (=> (not res!568586) (not e!466174))))

(assert (=> b!835599 (= res!568586 (and (= lt!379947 lt!379944) (not (= to!390 (size!22853 a!4227)))))))

(assert (=> b!835599 (= lt!379944 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835599 (= lt!379947 (arrayCountValidKeys!0 lt!379945 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835599 (= lt!379945 (array!46805 (store (arr!22432 a!4227) i!1466 k!2968) (size!22853 a!4227)))))

(declare-fun b!835600 () Bool)

(declare-fun res!568588 () Bool)

(assert (=> b!835600 (=> (not res!568588) (not e!466175))))

(assert (=> b!835600 (= res!568588 (and (bvslt (size!22853 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22853 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835601 () Bool)

(declare-fun lt!379941 () Unit!28742)

(assert (=> b!835601 (= e!466173 lt!379941)))

(declare-fun lt!379946 () Unit!28742)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46804 (_ BitVec 32) (_ BitVec 32)) Unit!28742)

(assert (=> b!835601 (= lt!379946 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835601 (= call!36727 lt!379944)))

(assert (=> b!835601 (= lt!379941 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379945 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835601 (= call!36728 lt!379947)))

(assert (= (and start!71950 res!568584) b!835596))

(assert (= (and b!835596 res!568585) b!835598))

(assert (= (and b!835598 res!568587) b!835600))

(assert (= (and b!835600 res!568588) b!835599))

(assert (= (and b!835599 res!568586) b!835595))

(assert (= (and b!835595 c!90901) b!835597))

(assert (= (and b!835595 (not c!90901)) b!835601))

(assert (= (or b!835597 b!835601) bm!36725))

(assert (= (or b!835597 b!835601) bm!36724))

(declare-fun m!780979 () Bool)

(assert (=> b!835598 m!780979))

(declare-fun m!780981 () Bool)

(assert (=> b!835595 m!780981))

(assert (=> b!835595 m!780981))

(declare-fun m!780983 () Bool)

(assert (=> b!835595 m!780983))

(declare-fun m!780985 () Bool)

(assert (=> bm!36725 m!780985))

(declare-fun m!780987 () Bool)

(assert (=> b!835601 m!780987))

(declare-fun m!780989 () Bool)

(assert (=> b!835601 m!780989))

(declare-fun m!780991 () Bool)

(assert (=> b!835597 m!780991))

(declare-fun m!780993 () Bool)

(assert (=> b!835597 m!780993))

(declare-fun m!780995 () Bool)

(assert (=> start!71950 m!780995))

(declare-fun m!780997 () Bool)

(assert (=> b!835599 m!780997))

(declare-fun m!780999 () Bool)

(assert (=> b!835599 m!780999))

(declare-fun m!781001 () Bool)

(assert (=> b!835599 m!781001))

(declare-fun m!781003 () Bool)

(assert (=> b!835596 m!781003))

(assert (=> b!835596 m!781003))

(declare-fun m!781005 () Bool)

(assert (=> b!835596 m!781005))

(declare-fun m!781007 () Bool)

(assert (=> bm!36724 m!781007))

(push 1)

(assert (not bm!36724))

(assert (not bm!36725))

(assert (not start!71950))

(assert (not b!835601))

(assert (not b!835595))

(assert (not b!835597))

(assert (not b!835596))

(assert (not b!835598))

(assert (not b!835599))

(check-sat)

(pop 1)

(push 1)

(check-sat)

