; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71848 () Bool)

(assert start!71848)

(declare-fun b!834636 () Bool)

(declare-fun res!567717 () Bool)

(declare-fun e!465708 () Bool)

(assert (=> b!834636 (=> (not res!567717) (not e!465708))))

(declare-datatypes ((array!46702 0))(
  ( (array!46703 (arr!22381 (Array (_ BitVec 32) (_ BitVec 64))) (size!22802 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46702)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834636 (= res!567717 (not (validKeyInArray!0 (select (arr!22381 a!4227) i!1466))))))

(declare-fun b!834637 () Bool)

(declare-fun res!567721 () Bool)

(declare-fun e!465707 () Bool)

(assert (=> b!834637 (=> (not res!567721) (not e!465707))))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!379421 () array!46702)

(declare-fun arrayCountValidKeys!0 (array!46702 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834637 (= res!567721 (= (arrayCountValidKeys!0 lt!379421 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun bm!36634 () Bool)

(declare-fun call!36637 () (_ BitVec 32))

(assert (=> bm!36634 (= call!36637 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834638 () Bool)

(declare-fun e!465706 () Bool)

(assert (=> b!834638 (= e!465708 e!465706)))

(declare-fun res!567715 () Bool)

(assert (=> b!834638 (=> (not res!567715) (not e!465706))))

(declare-fun lt!379425 () (_ BitVec 32))

(declare-fun lt!379426 () (_ BitVec 32))

(assert (=> b!834638 (= res!567715 (and (= lt!379425 lt!379426) (not (= to!390 (size!22802 a!4227)))))))

(assert (=> b!834638 (= lt!379426 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834638 (= lt!379425 (arrayCountValidKeys!0 lt!379421 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834638 (= lt!379421 (array!46703 (store (arr!22381 a!4227) i!1466 k!2968) (size!22802 a!4227)))))

(declare-fun bm!36635 () Bool)

(declare-fun call!36638 () (_ BitVec 32))

(assert (=> bm!36635 (= call!36638 (arrayCountValidKeys!0 lt!379421 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834639 () Bool)

(declare-datatypes ((Unit!28688 0))(
  ( (Unit!28689) )
))
(declare-fun e!465710 () Unit!28688)

(declare-fun lt!379422 () Unit!28688)

(assert (=> b!834639 (= e!465710 lt!379422)))

(declare-fun lt!379428 () Unit!28688)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46702 (_ BitVec 32) (_ BitVec 32)) Unit!28688)

(assert (=> b!834639 (= lt!379428 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834639 (= call!36637 lt!379426)))

(assert (=> b!834639 (= lt!379422 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379421 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834639 (= call!36638 lt!379425)))

(declare-fun b!834640 () Bool)

(assert (=> b!834640 (= e!465706 e!465707)))

(declare-fun res!567719 () Bool)

(assert (=> b!834640 (=> (not res!567719) (not e!465707))))

(assert (=> b!834640 (= res!567719 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22802 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379424 () Unit!28688)

(assert (=> b!834640 (= lt!379424 e!465710)))

(declare-fun c!90856 () Bool)

(assert (=> b!834640 (= c!90856 (validKeyInArray!0 (select (arr!22381 a!4227) to!390)))))

(declare-fun res!567716 () Bool)

(assert (=> start!71848 (=> (not res!567716) (not e!465708))))

(assert (=> start!71848 (= res!567716 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22802 a!4227))))))

(assert (=> start!71848 e!465708))

(assert (=> start!71848 true))

(declare-fun array_inv!17804 (array!46702) Bool)

(assert (=> start!71848 (array_inv!17804 a!4227)))

(declare-fun b!834641 () Bool)

(declare-fun lt!379427 () Unit!28688)

(assert (=> b!834641 (= e!465710 lt!379427)))

(declare-fun lt!379420 () Unit!28688)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46702 (_ BitVec 32) (_ BitVec 32)) Unit!28688)

(assert (=> b!834641 (= lt!379420 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834641 (= call!36637 (bvadd #b00000000000000000000000000000001 lt!379426))))

(assert (=> b!834641 (= lt!379427 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379421 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834641 (= call!36638 (bvadd #b00000000000000000000000000000001 lt!379425))))

(declare-fun b!834642 () Bool)

(declare-fun res!567720 () Bool)

(assert (=> b!834642 (=> (not res!567720) (not e!465708))))

(assert (=> b!834642 (= res!567720 (and (bvslt (size!22802 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22802 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834643 () Bool)

(assert (=> b!834643 (= e!465707 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (=> b!834643 (= (arrayCountValidKeys!0 lt!379421 (bvadd #b00000000000000000000000000000001 i!1466) (size!22802 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22802 a!4227)))))

(declare-fun lt!379423 () Unit!28688)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46702 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28688)

(assert (=> b!834643 (= lt!379423 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834644 () Bool)

(declare-fun res!567718 () Bool)

(assert (=> b!834644 (=> (not res!567718) (not e!465708))))

(assert (=> b!834644 (= res!567718 (validKeyInArray!0 k!2968))))

(assert (= (and start!71848 res!567716) b!834636))

(assert (= (and b!834636 res!567717) b!834644))

(assert (= (and b!834644 res!567718) b!834642))

(assert (= (and b!834642 res!567720) b!834638))

(assert (= (and b!834638 res!567715) b!834640))

(assert (= (and b!834640 c!90856) b!834641))

(assert (= (and b!834640 (not c!90856)) b!834639))

(assert (= (or b!834641 b!834639) bm!36635))

(assert (= (or b!834641 b!834639) bm!36634))

(assert (= (and b!834640 res!567719) b!834637))

(assert (= (and b!834637 res!567721) b!834643))

(declare-fun m!779837 () Bool)

(assert (=> b!834643 m!779837))

(declare-fun m!779839 () Bool)

(assert (=> b!834643 m!779839))

(declare-fun m!779841 () Bool)

(assert (=> b!834643 m!779841))

(declare-fun m!779843 () Bool)

(assert (=> bm!36634 m!779843))

(declare-fun m!779845 () Bool)

(assert (=> start!71848 m!779845))

(declare-fun m!779847 () Bool)

(assert (=> b!834640 m!779847))

(assert (=> b!834640 m!779847))

(declare-fun m!779849 () Bool)

(assert (=> b!834640 m!779849))

(declare-fun m!779851 () Bool)

(assert (=> b!834637 m!779851))

(assert (=> b!834637 m!779843))

(declare-fun m!779853 () Bool)

(assert (=> b!834636 m!779853))

(assert (=> b!834636 m!779853))

(declare-fun m!779855 () Bool)

(assert (=> b!834636 m!779855))

(declare-fun m!779857 () Bool)

(assert (=> b!834644 m!779857))

(assert (=> bm!36635 m!779851))

(declare-fun m!779859 () Bool)

(assert (=> b!834638 m!779859))

(declare-fun m!779861 () Bool)

(assert (=> b!834638 m!779861))

(declare-fun m!779863 () Bool)

(assert (=> b!834638 m!779863))

(declare-fun m!779865 () Bool)

(assert (=> b!834639 m!779865))

(declare-fun m!779867 () Bool)

(assert (=> b!834639 m!779867))

(declare-fun m!779869 () Bool)

(assert (=> b!834641 m!779869))

(declare-fun m!779871 () Bool)

(assert (=> b!834641 m!779871))

(push 1)

