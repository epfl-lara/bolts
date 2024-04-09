; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71858 () Bool)

(assert start!71858)

(declare-datatypes ((array!46712 0))(
  ( (array!46713 (arr!22386 (Array (_ BitVec 32) (_ BitVec 64))) (size!22807 (_ BitVec 32))) )
))
(declare-fun lt!379558 () array!46712)

(declare-fun call!36667 () (_ BitVec 32))

(declare-fun bm!36664 () Bool)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46712 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36664 (= call!36667 (arrayCountValidKeys!0 lt!379558 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834771 () Bool)

(declare-datatypes ((Unit!28698 0))(
  ( (Unit!28699) )
))
(declare-fun e!465782 () Unit!28698)

(declare-fun lt!379563 () Unit!28698)

(assert (=> b!834771 (= e!465782 lt!379563)))

(declare-fun lt!379557 () Unit!28698)

(declare-fun a!4227 () array!46712)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46712 (_ BitVec 32) (_ BitVec 32)) Unit!28698)

(assert (=> b!834771 (= lt!379557 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36668 () (_ BitVec 32))

(declare-fun lt!379555 () (_ BitVec 32))

(assert (=> b!834771 (= call!36668 lt!379555)))

(assert (=> b!834771 (= lt!379563 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379558 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379560 () (_ BitVec 32))

(assert (=> b!834771 (= call!36667 lt!379560)))

(declare-fun b!834772 () Bool)

(declare-fun e!465784 () Bool)

(declare-fun e!465781 () Bool)

(assert (=> b!834772 (= e!465784 e!465781)))

(declare-fun res!567825 () Bool)

(assert (=> b!834772 (=> (not res!567825) (not e!465781))))

(assert (=> b!834772 (= res!567825 (and (= lt!379560 lt!379555) (not (= to!390 (size!22807 a!4227)))))))

(assert (=> b!834772 (= lt!379555 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834772 (= lt!379560 (arrayCountValidKeys!0 lt!379558 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834772 (= lt!379558 (array!46713 (store (arr!22386 a!4227) i!1466 k!2968) (size!22807 a!4227)))))

(declare-fun res!567826 () Bool)

(assert (=> start!71858 (=> (not res!567826) (not e!465784))))

(assert (=> start!71858 (= res!567826 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22807 a!4227))))))

(assert (=> start!71858 e!465784))

(assert (=> start!71858 true))

(declare-fun array_inv!17809 (array!46712) Bool)

(assert (=> start!71858 (array_inv!17809 a!4227)))

(declare-fun b!834773 () Bool)

(declare-fun res!567823 () Bool)

(assert (=> b!834773 (=> (not res!567823) (not e!465784))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834773 (= res!567823 (not (validKeyInArray!0 (select (arr!22386 a!4227) i!1466))))))

(declare-fun b!834774 () Bool)

(declare-fun lt!379562 () Unit!28698)

(assert (=> b!834774 (= e!465782 lt!379562)))

(declare-fun lt!379559 () Unit!28698)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46712 (_ BitVec 32) (_ BitVec 32)) Unit!28698)

(assert (=> b!834774 (= lt!379559 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834774 (= call!36668 (bvadd #b00000000000000000000000000000001 lt!379555))))

(assert (=> b!834774 (= lt!379562 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379558 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834774 (= call!36667 (bvadd #b00000000000000000000000000000001 lt!379560))))

(declare-fun b!834775 () Bool)

(declare-fun e!465785 () Bool)

(assert (=> b!834775 (= e!465781 e!465785)))

(declare-fun res!567820 () Bool)

(assert (=> b!834775 (=> (not res!567820) (not e!465785))))

(assert (=> b!834775 (= res!567820 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22807 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379561 () Unit!28698)

(assert (=> b!834775 (= lt!379561 e!465782)))

(declare-fun c!90871 () Bool)

(assert (=> b!834775 (= c!90871 (validKeyInArray!0 (select (arr!22386 a!4227) to!390)))))

(declare-fun b!834776 () Bool)

(declare-fun res!567821 () Bool)

(assert (=> b!834776 (=> (not res!567821) (not e!465784))))

(assert (=> b!834776 (= res!567821 (validKeyInArray!0 k!2968))))

(declare-fun b!834777 () Bool)

(assert (=> b!834777 (= e!465785 (not true))))

(assert (=> b!834777 (= (arrayCountValidKeys!0 lt!379558 (bvadd #b00000000000000000000000000000001 i!1466) (size!22807 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22807 a!4227)))))

(declare-fun lt!379556 () Unit!28698)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46712 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28698)

(assert (=> b!834777 (= lt!379556 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun bm!36665 () Bool)

(assert (=> bm!36665 (= call!36668 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834778 () Bool)

(declare-fun res!567822 () Bool)

(assert (=> b!834778 (=> (not res!567822) (not e!465784))))

(assert (=> b!834778 (= res!567822 (and (bvslt (size!22807 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22807 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834779 () Bool)

(declare-fun res!567824 () Bool)

(assert (=> b!834779 (=> (not res!567824) (not e!465785))))

(assert (=> b!834779 (= res!567824 (= (arrayCountValidKeys!0 lt!379558 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(assert (= (and start!71858 res!567826) b!834773))

(assert (= (and b!834773 res!567823) b!834776))

(assert (= (and b!834776 res!567821) b!834778))

(assert (= (and b!834778 res!567822) b!834772))

(assert (= (and b!834772 res!567825) b!834775))

(assert (= (and b!834775 c!90871) b!834774))

(assert (= (and b!834775 (not c!90871)) b!834771))

(assert (= (or b!834774 b!834771) bm!36664))

(assert (= (or b!834774 b!834771) bm!36665))

(assert (= (and b!834775 res!567820) b!834779))

(assert (= (and b!834779 res!567824) b!834777))

(declare-fun m!780025 () Bool)

(assert (=> b!834772 m!780025))

(declare-fun m!780027 () Bool)

(assert (=> b!834772 m!780027))

(declare-fun m!780029 () Bool)

(assert (=> b!834772 m!780029))

(declare-fun m!780031 () Bool)

(assert (=> b!834777 m!780031))

(declare-fun m!780033 () Bool)

(assert (=> b!834777 m!780033))

(declare-fun m!780035 () Bool)

(assert (=> b!834777 m!780035))

(declare-fun m!780037 () Bool)

(assert (=> b!834771 m!780037))

(declare-fun m!780039 () Bool)

(assert (=> b!834771 m!780039))

(declare-fun m!780041 () Bool)

(assert (=> b!834779 m!780041))

(declare-fun m!780043 () Bool)

(assert (=> b!834779 m!780043))

(declare-fun m!780045 () Bool)

(assert (=> b!834773 m!780045))

(assert (=> b!834773 m!780045))

(declare-fun m!780047 () Bool)

(assert (=> b!834773 m!780047))

(declare-fun m!780049 () Bool)

(assert (=> b!834776 m!780049))

(declare-fun m!780051 () Bool)

(assert (=> start!71858 m!780051))

(assert (=> bm!36664 m!780041))

(assert (=> bm!36665 m!780043))

(declare-fun m!780053 () Bool)

(assert (=> b!834774 m!780053))

(declare-fun m!780055 () Bool)

(assert (=> b!834774 m!780055))

(declare-fun m!780057 () Bool)

(assert (=> b!834775 m!780057))

(assert (=> b!834775 m!780057))

(declare-fun m!780059 () Bool)

(assert (=> b!834775 m!780059))

(push 1)

(assert (not b!834777))

(assert (not bm!36664))

(assert (not b!834772))

