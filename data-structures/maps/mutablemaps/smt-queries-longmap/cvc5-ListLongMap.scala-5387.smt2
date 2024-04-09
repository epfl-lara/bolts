; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71944 () Bool)

(assert start!71944)

(declare-fun b!835532 () Bool)

(declare-datatypes ((Unit!28736 0))(
  ( (Unit!28737) )
))
(declare-fun e!466137 () Unit!28736)

(declare-fun lt!379874 () Unit!28736)

(assert (=> b!835532 (= e!466137 lt!379874)))

(declare-datatypes ((array!46798 0))(
  ( (array!46799 (arr!22429 (Array (_ BitVec 32) (_ BitVec 64))) (size!22850 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46798)

(declare-fun lt!379868 () Unit!28736)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46798 (_ BitVec 32) (_ BitVec 32)) Unit!28736)

(assert (=> b!835532 (= lt!379868 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36710 () (_ BitVec 32))

(declare-fun lt!379869 () (_ BitVec 32))

(assert (=> b!835532 (= call!36710 (bvadd #b00000000000000000000000000000001 lt!379869))))

(declare-fun lt!379871 () array!46798)

(assert (=> b!835532 (= lt!379874 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379871 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36709 () (_ BitVec 32))

(declare-fun lt!379870 () (_ BitVec 32))

(assert (=> b!835532 (= call!36709 (bvadd #b00000000000000000000000000000001 lt!379870))))

(declare-fun b!835533 () Bool)

(declare-fun e!466139 () Bool)

(assert (=> b!835533 (= e!466139 false)))

(declare-fun lt!379872 () Unit!28736)

(assert (=> b!835533 (= lt!379872 e!466137)))

(declare-fun c!90892 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835533 (= c!90892 (validKeyInArray!0 (select (arr!22429 a!4227) to!390)))))

(declare-fun b!835534 () Bool)

(declare-fun res!568539 () Bool)

(declare-fun e!466138 () Bool)

(assert (=> b!835534 (=> (not res!568539) (not e!466138))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835534 (= res!568539 (validKeyInArray!0 k!2968))))

(declare-fun res!568542 () Bool)

(assert (=> start!71944 (=> (not res!568542) (not e!466138))))

(assert (=> start!71944 (= res!568542 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22850 a!4227))))))

(assert (=> start!71944 e!466138))

(assert (=> start!71944 true))

(declare-fun array_inv!17852 (array!46798) Bool)

(assert (=> start!71944 (array_inv!17852 a!4227)))

(declare-fun bm!36706 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46798 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36706 (= call!36710 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36707 () Bool)

(assert (=> bm!36707 (= call!36709 (arrayCountValidKeys!0 lt!379871 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835535 () Bool)

(assert (=> b!835535 (= e!466138 e!466139)))

(declare-fun res!568543 () Bool)

(assert (=> b!835535 (=> (not res!568543) (not e!466139))))

(assert (=> b!835535 (= res!568543 (and (= lt!379870 lt!379869) (not (= to!390 (size!22850 a!4227)))))))

(assert (=> b!835535 (= lt!379869 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835535 (= lt!379870 (arrayCountValidKeys!0 lt!379871 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835535 (= lt!379871 (array!46799 (store (arr!22429 a!4227) i!1466 k!2968) (size!22850 a!4227)))))

(declare-fun b!835536 () Bool)

(declare-fun res!568540 () Bool)

(assert (=> b!835536 (=> (not res!568540) (not e!466138))))

(assert (=> b!835536 (= res!568540 (and (bvslt (size!22850 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22850 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835537 () Bool)

(declare-fun res!568541 () Bool)

(assert (=> b!835537 (=> (not res!568541) (not e!466138))))

(assert (=> b!835537 (= res!568541 (not (validKeyInArray!0 (select (arr!22429 a!4227) i!1466))))))

(declare-fun b!835538 () Bool)

(declare-fun lt!379873 () Unit!28736)

(assert (=> b!835538 (= e!466137 lt!379873)))

(declare-fun lt!379875 () Unit!28736)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46798 (_ BitVec 32) (_ BitVec 32)) Unit!28736)

(assert (=> b!835538 (= lt!379875 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835538 (= call!36710 lt!379869)))

(assert (=> b!835538 (= lt!379873 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379871 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835538 (= call!36709 lt!379870)))

(assert (= (and start!71944 res!568542) b!835537))

(assert (= (and b!835537 res!568541) b!835534))

(assert (= (and b!835534 res!568539) b!835536))

(assert (= (and b!835536 res!568540) b!835535))

(assert (= (and b!835535 res!568543) b!835533))

(assert (= (and b!835533 c!90892) b!835532))

(assert (= (and b!835533 (not c!90892)) b!835538))

(assert (= (or b!835532 b!835538) bm!36707))

(assert (= (or b!835532 b!835538) bm!36706))

(declare-fun m!780889 () Bool)

(assert (=> b!835537 m!780889))

(assert (=> b!835537 m!780889))

(declare-fun m!780891 () Bool)

(assert (=> b!835537 m!780891))

(declare-fun m!780893 () Bool)

(assert (=> bm!36706 m!780893))

(declare-fun m!780895 () Bool)

(assert (=> b!835538 m!780895))

(declare-fun m!780897 () Bool)

(assert (=> b!835538 m!780897))

(declare-fun m!780899 () Bool)

(assert (=> b!835533 m!780899))

(assert (=> b!835533 m!780899))

(declare-fun m!780901 () Bool)

(assert (=> b!835533 m!780901))

(declare-fun m!780903 () Bool)

(assert (=> bm!36707 m!780903))

(declare-fun m!780905 () Bool)

(assert (=> b!835535 m!780905))

(declare-fun m!780907 () Bool)

(assert (=> b!835535 m!780907))

(declare-fun m!780909 () Bool)

(assert (=> b!835535 m!780909))

(declare-fun m!780911 () Bool)

(assert (=> start!71944 m!780911))

(declare-fun m!780913 () Bool)

(assert (=> b!835532 m!780913))

(declare-fun m!780915 () Bool)

(assert (=> b!835532 m!780915))

(declare-fun m!780917 () Bool)

(assert (=> b!835534 m!780917))

(push 1)

