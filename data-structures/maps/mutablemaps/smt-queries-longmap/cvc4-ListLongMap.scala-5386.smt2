; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71942 () Bool)

(assert start!71942)

(declare-fun b!835511 () Bool)

(declare-fun res!568527 () Bool)

(declare-fun e!466127 () Bool)

(assert (=> b!835511 (=> (not res!568527) (not e!466127))))

(declare-datatypes ((array!46796 0))(
  ( (array!46797 (arr!22428 (Array (_ BitVec 32) (_ BitVec 64))) (size!22849 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46796)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835511 (= res!568527 (not (validKeyInArray!0 (select (arr!22428 a!4227) i!1466))))))

(declare-fun b!835512 () Bool)

(declare-fun e!466125 () Bool)

(assert (=> b!835512 (= e!466127 e!466125)))

(declare-fun res!568525 () Bool)

(assert (=> b!835512 (=> (not res!568525) (not e!466125))))

(declare-fun lt!379849 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!379848 () (_ BitVec 32))

(assert (=> b!835512 (= res!568525 (and (= lt!379848 lt!379849) (not (= to!390 (size!22849 a!4227)))))))

(declare-fun arrayCountValidKeys!0 (array!46796 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835512 (= lt!379849 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379847 () array!46796)

(assert (=> b!835512 (= lt!379848 (arrayCountValidKeys!0 lt!379847 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835512 (= lt!379847 (array!46797 (store (arr!22428 a!4227) i!1466 k!2968) (size!22849 a!4227)))))

(declare-fun call!36704 () (_ BitVec 32))

(declare-fun bm!36700 () Bool)

(assert (=> bm!36700 (= call!36704 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!568528 () Bool)

(assert (=> start!71942 (=> (not res!568528) (not e!466127))))

(assert (=> start!71942 (= res!568528 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22849 a!4227))))))

(assert (=> start!71942 e!466127))

(assert (=> start!71942 true))

(declare-fun array_inv!17851 (array!46796) Bool)

(assert (=> start!71942 (array_inv!17851 a!4227)))

(declare-fun b!835513 () Bool)

(declare-datatypes ((Unit!28734 0))(
  ( (Unit!28735) )
))
(declare-fun e!466126 () Unit!28734)

(declare-fun lt!379851 () Unit!28734)

(assert (=> b!835513 (= e!466126 lt!379851)))

(declare-fun lt!379846 () Unit!28734)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46796 (_ BitVec 32) (_ BitVec 32)) Unit!28734)

(assert (=> b!835513 (= lt!379846 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835513 (= call!36704 lt!379849)))

(assert (=> b!835513 (= lt!379851 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379847 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36703 () (_ BitVec 32))

(assert (=> b!835513 (= call!36703 lt!379848)))

(declare-fun b!835514 () Bool)

(declare-fun res!568526 () Bool)

(assert (=> b!835514 (=> (not res!568526) (not e!466127))))

(assert (=> b!835514 (= res!568526 (validKeyInArray!0 k!2968))))

(declare-fun b!835515 () Bool)

(declare-fun lt!379850 () Unit!28734)

(assert (=> b!835515 (= e!466126 lt!379850)))

(declare-fun lt!379845 () Unit!28734)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46796 (_ BitVec 32) (_ BitVec 32)) Unit!28734)

(assert (=> b!835515 (= lt!379845 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835515 (= call!36704 (bvadd #b00000000000000000000000000000001 lt!379849))))

(assert (=> b!835515 (= lt!379850 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379847 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835515 (= call!36703 (bvadd #b00000000000000000000000000000001 lt!379848))))

(declare-fun b!835516 () Bool)

(declare-fun res!568524 () Bool)

(assert (=> b!835516 (=> (not res!568524) (not e!466127))))

(assert (=> b!835516 (= res!568524 (and (bvslt (size!22849 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22849 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun bm!36701 () Bool)

(assert (=> bm!36701 (= call!36703 (arrayCountValidKeys!0 lt!379847 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!835517 () Bool)

(assert (=> b!835517 (= e!466125 false)))

(declare-fun lt!379844 () Unit!28734)

(assert (=> b!835517 (= lt!379844 e!466126)))

(declare-fun c!90889 () Bool)

(assert (=> b!835517 (= c!90889 (validKeyInArray!0 (select (arr!22428 a!4227) to!390)))))

(assert (= (and start!71942 res!568528) b!835511))

(assert (= (and b!835511 res!568527) b!835514))

(assert (= (and b!835514 res!568526) b!835516))

(assert (= (and b!835516 res!568524) b!835512))

(assert (= (and b!835512 res!568525) b!835517))

(assert (= (and b!835517 c!90889) b!835515))

(assert (= (and b!835517 (not c!90889)) b!835513))

(assert (= (or b!835515 b!835513) bm!36700))

(assert (= (or b!835515 b!835513) bm!36701))

(declare-fun m!780859 () Bool)

(assert (=> b!835512 m!780859))

(declare-fun m!780861 () Bool)

(assert (=> b!835512 m!780861))

(declare-fun m!780863 () Bool)

(assert (=> b!835512 m!780863))

(declare-fun m!780865 () Bool)

(assert (=> b!835514 m!780865))

(declare-fun m!780867 () Bool)

(assert (=> bm!36701 m!780867))

(declare-fun m!780869 () Bool)

(assert (=> bm!36700 m!780869))

(declare-fun m!780871 () Bool)

(assert (=> b!835511 m!780871))

(assert (=> b!835511 m!780871))

(declare-fun m!780873 () Bool)

(assert (=> b!835511 m!780873))

(declare-fun m!780875 () Bool)

(assert (=> b!835515 m!780875))

(declare-fun m!780877 () Bool)

(assert (=> b!835515 m!780877))

(declare-fun m!780879 () Bool)

(assert (=> b!835513 m!780879))

(declare-fun m!780881 () Bool)

(assert (=> b!835513 m!780881))

(declare-fun m!780883 () Bool)

(assert (=> b!835517 m!780883))

(assert (=> b!835517 m!780883))

(declare-fun m!780885 () Bool)

(assert (=> b!835517 m!780885))

(declare-fun m!780887 () Bool)

(assert (=> start!71942 m!780887))

(push 1)

(assert (not b!835517))

(assert (not b!835514))

