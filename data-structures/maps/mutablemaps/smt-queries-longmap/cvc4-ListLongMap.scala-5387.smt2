; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71948 () Bool)

(assert start!71948)

(declare-fun b!835574 () Bool)

(declare-fun res!568570 () Bool)

(declare-fun e!466162 () Bool)

(assert (=> b!835574 (=> (not res!568570) (not e!466162))))

(declare-datatypes ((array!46802 0))(
  ( (array!46803 (arr!22431 (Array (_ BitVec 32) (_ BitVec 64))) (size!22852 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46802)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835574 (= res!568570 (not (validKeyInArray!0 (select (arr!22431 a!4227) i!1466))))))

(declare-fun b!835575 () Bool)

(declare-fun res!568569 () Bool)

(assert (=> b!835575 (=> (not res!568569) (not e!466162))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835575 (= res!568569 (and (bvslt (size!22852 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22852 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835576 () Bool)

(declare-datatypes ((Unit!28740 0))(
  ( (Unit!28741) )
))
(declare-fun e!466163 () Unit!28740)

(declare-fun lt!379918 () Unit!28740)

(assert (=> b!835576 (= e!466163 lt!379918)))

(declare-fun lt!379921 () Unit!28740)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46802 (_ BitVec 32) (_ BitVec 32)) Unit!28740)

(assert (=> b!835576 (= lt!379921 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36722 () (_ BitVec 32))

(declare-fun lt!379917 () (_ BitVec 32))

(assert (=> b!835576 (= call!36722 (bvadd #b00000000000000000000000000000001 lt!379917))))

(declare-fun lt!379920 () array!46802)

(assert (=> b!835576 (= lt!379918 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379920 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36721 () (_ BitVec 32))

(declare-fun lt!379922 () (_ BitVec 32))

(assert (=> b!835576 (= call!36721 (bvadd #b00000000000000000000000000000001 lt!379922))))

(declare-fun bm!36719 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46802 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36719 (= call!36721 (arrayCountValidKeys!0 lt!379920 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835577 () Bool)

(declare-fun lt!379919 () Unit!28740)

(assert (=> b!835577 (= e!466163 lt!379919)))

(declare-fun lt!379923 () Unit!28740)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46802 (_ BitVec 32) (_ BitVec 32)) Unit!28740)

(assert (=> b!835577 (= lt!379923 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835577 (= call!36722 lt!379917)))

(assert (=> b!835577 (= lt!379919 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379920 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835577 (= call!36721 lt!379922)))

(declare-fun b!835578 () Bool)

(declare-fun e!466161 () Bool)

(assert (=> b!835578 (= e!466161 false)))

(declare-fun lt!379916 () Unit!28740)

(assert (=> b!835578 (= lt!379916 e!466163)))

(declare-fun c!90898 () Bool)

(assert (=> b!835578 (= c!90898 (validKeyInArray!0 (select (arr!22431 a!4227) to!390)))))

(declare-fun bm!36718 () Bool)

(assert (=> bm!36718 (= call!36722 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!568571 () Bool)

(assert (=> start!71948 (=> (not res!568571) (not e!466162))))

(assert (=> start!71948 (= res!568571 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22852 a!4227))))))

(assert (=> start!71948 e!466162))

(assert (=> start!71948 true))

(declare-fun array_inv!17854 (array!46802) Bool)

(assert (=> start!71948 (array_inv!17854 a!4227)))

(declare-fun b!835579 () Bool)

(declare-fun res!568573 () Bool)

(assert (=> b!835579 (=> (not res!568573) (not e!466162))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835579 (= res!568573 (validKeyInArray!0 k!2968))))

(declare-fun b!835580 () Bool)

(assert (=> b!835580 (= e!466162 e!466161)))

(declare-fun res!568572 () Bool)

(assert (=> b!835580 (=> (not res!568572) (not e!466161))))

(assert (=> b!835580 (= res!568572 (and (= lt!379922 lt!379917) (not (= to!390 (size!22852 a!4227)))))))

(assert (=> b!835580 (= lt!379917 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835580 (= lt!379922 (arrayCountValidKeys!0 lt!379920 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835580 (= lt!379920 (array!46803 (store (arr!22431 a!4227) i!1466 k!2968) (size!22852 a!4227)))))

(assert (= (and start!71948 res!568571) b!835574))

(assert (= (and b!835574 res!568570) b!835579))

(assert (= (and b!835579 res!568573) b!835575))

(assert (= (and b!835575 res!568569) b!835580))

(assert (= (and b!835580 res!568572) b!835578))

(assert (= (and b!835578 c!90898) b!835576))

(assert (= (and b!835578 (not c!90898)) b!835577))

(assert (= (or b!835576 b!835577) bm!36718))

(assert (= (or b!835576 b!835577) bm!36719))

(declare-fun m!780949 () Bool)

(assert (=> b!835579 m!780949))

(declare-fun m!780951 () Bool)

(assert (=> b!835577 m!780951))

(declare-fun m!780953 () Bool)

(assert (=> b!835577 m!780953))

(declare-fun m!780955 () Bool)

(assert (=> bm!36719 m!780955))

(declare-fun m!780957 () Bool)

(assert (=> b!835578 m!780957))

(assert (=> b!835578 m!780957))

(declare-fun m!780959 () Bool)

(assert (=> b!835578 m!780959))

(declare-fun m!780961 () Bool)

(assert (=> b!835576 m!780961))

(declare-fun m!780963 () Bool)

(assert (=> b!835576 m!780963))

(declare-fun m!780965 () Bool)

(assert (=> b!835580 m!780965))

(declare-fun m!780967 () Bool)

(assert (=> b!835580 m!780967))

(declare-fun m!780969 () Bool)

(assert (=> b!835580 m!780969))

(declare-fun m!780971 () Bool)

(assert (=> b!835574 m!780971))

(assert (=> b!835574 m!780971))

(declare-fun m!780973 () Bool)

(assert (=> b!835574 m!780973))

(declare-fun m!780975 () Bool)

(assert (=> bm!36718 m!780975))

(declare-fun m!780977 () Bool)

(assert (=> start!71948 m!780977))

(push 1)

(assert (not bm!36719))

(assert (not bm!36718))

(assert (not b!835574))

(assert (not b!835578))

