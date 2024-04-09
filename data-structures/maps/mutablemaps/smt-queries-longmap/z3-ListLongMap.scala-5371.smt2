; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71850 () Bool)

(assert start!71850)

(declare-datatypes ((array!46704 0))(
  ( (array!46705 (arr!22382 (Array (_ BitVec 32) (_ BitVec 64))) (size!22803 (_ BitVec 32))) )
))
(declare-fun lt!379455 () array!46704)

(declare-fun call!36644 () (_ BitVec 32))

(declare-fun bm!36640 () Bool)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46704 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36640 (= call!36644 (arrayCountValidKeys!0 lt!379455 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834663 () Bool)

(declare-fun e!465725 () Bool)

(assert (=> b!834663 (= e!465725 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(declare-fun a!4227 () array!46704)

(assert (=> b!834663 (= (arrayCountValidKeys!0 lt!379455 (bvadd #b00000000000000000000000000000001 i!1466) (size!22803 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22803 a!4227)))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-datatypes ((Unit!28690 0))(
  ( (Unit!28691) )
))
(declare-fun lt!379450 () Unit!28690)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46704 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28690)

(assert (=> b!834663 (= lt!379450 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k0!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834664 () Bool)

(declare-fun e!465724 () Unit!28690)

(declare-fun lt!379447 () Unit!28690)

(assert (=> b!834664 (= e!465724 lt!379447)))

(declare-fun lt!379453 () Unit!28690)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46704 (_ BitVec 32) (_ BitVec 32)) Unit!28690)

(assert (=> b!834664 (= lt!379453 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36643 () (_ BitVec 32))

(declare-fun lt!379452 () (_ BitVec 32))

(assert (=> b!834664 (= call!36643 lt!379452)))

(assert (=> b!834664 (= lt!379447 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379455 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379448 () (_ BitVec 32))

(assert (=> b!834664 (= call!36644 lt!379448)))

(declare-fun b!834665 () Bool)

(declare-fun e!465722 () Bool)

(declare-fun e!465723 () Bool)

(assert (=> b!834665 (= e!465722 e!465723)))

(declare-fun res!567738 () Bool)

(assert (=> b!834665 (=> (not res!567738) (not e!465723))))

(assert (=> b!834665 (= res!567738 (and (= lt!379448 lt!379452) (not (= to!390 (size!22803 a!4227)))))))

(assert (=> b!834665 (= lt!379452 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834665 (= lt!379448 (arrayCountValidKeys!0 lt!379455 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834665 (= lt!379455 (array!46705 (store (arr!22382 a!4227) i!1466 k0!2968) (size!22803 a!4227)))))

(declare-fun b!834666 () Bool)

(declare-fun res!567740 () Bool)

(assert (=> b!834666 (=> (not res!567740) (not e!465722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834666 (= res!567740 (validKeyInArray!0 k0!2968))))

(declare-fun res!567737 () Bool)

(assert (=> start!71850 (=> (not res!567737) (not e!465722))))

(assert (=> start!71850 (= res!567737 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22803 a!4227))))))

(assert (=> start!71850 e!465722))

(assert (=> start!71850 true))

(declare-fun array_inv!17805 (array!46704) Bool)

(assert (=> start!71850 (array_inv!17805 a!4227)))

(declare-fun b!834667 () Bool)

(declare-fun res!567736 () Bool)

(assert (=> b!834667 (=> (not res!567736) (not e!465725))))

(assert (=> b!834667 (= res!567736 (= (arrayCountValidKeys!0 lt!379455 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834668 () Bool)

(declare-fun res!567739 () Bool)

(assert (=> b!834668 (=> (not res!567739) (not e!465722))))

(assert (=> b!834668 (= res!567739 (not (validKeyInArray!0 (select (arr!22382 a!4227) i!1466))))))

(declare-fun b!834669 () Bool)

(declare-fun res!567742 () Bool)

(assert (=> b!834669 (=> (not res!567742) (not e!465722))))

(assert (=> b!834669 (= res!567742 (and (bvslt (size!22803 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22803 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834670 () Bool)

(assert (=> b!834670 (= e!465723 e!465725)))

(declare-fun res!567741 () Bool)

(assert (=> b!834670 (=> (not res!567741) (not e!465725))))

(assert (=> b!834670 (= res!567741 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22803 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379449 () Unit!28690)

(assert (=> b!834670 (= lt!379449 e!465724)))

(declare-fun c!90859 () Bool)

(assert (=> b!834670 (= c!90859 (validKeyInArray!0 (select (arr!22382 a!4227) to!390)))))

(declare-fun b!834671 () Bool)

(declare-fun lt!379454 () Unit!28690)

(assert (=> b!834671 (= e!465724 lt!379454)))

(declare-fun lt!379451 () Unit!28690)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46704 (_ BitVec 32) (_ BitVec 32)) Unit!28690)

(assert (=> b!834671 (= lt!379451 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834671 (= call!36643 (bvadd #b00000000000000000000000000000001 lt!379452))))

(assert (=> b!834671 (= lt!379454 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379455 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834671 (= call!36644 (bvadd #b00000000000000000000000000000001 lt!379448))))

(declare-fun bm!36641 () Bool)

(assert (=> bm!36641 (= call!36643 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71850 res!567737) b!834668))

(assert (= (and b!834668 res!567739) b!834666))

(assert (= (and b!834666 res!567740) b!834669))

(assert (= (and b!834669 res!567742) b!834665))

(assert (= (and b!834665 res!567738) b!834670))

(assert (= (and b!834670 c!90859) b!834671))

(assert (= (and b!834670 (not c!90859)) b!834664))

(assert (= (or b!834671 b!834664) bm!36640))

(assert (= (or b!834671 b!834664) bm!36641))

(assert (= (and b!834670 res!567741) b!834667))

(assert (= (and b!834667 res!567736) b!834663))

(declare-fun m!779873 () Bool)

(assert (=> bm!36640 m!779873))

(declare-fun m!779875 () Bool)

(assert (=> b!834670 m!779875))

(assert (=> b!834670 m!779875))

(declare-fun m!779877 () Bool)

(assert (=> b!834670 m!779877))

(declare-fun m!779879 () Bool)

(assert (=> b!834664 m!779879))

(declare-fun m!779881 () Bool)

(assert (=> b!834664 m!779881))

(declare-fun m!779883 () Bool)

(assert (=> b!834668 m!779883))

(assert (=> b!834668 m!779883))

(declare-fun m!779885 () Bool)

(assert (=> b!834668 m!779885))

(declare-fun m!779887 () Bool)

(assert (=> b!834666 m!779887))

(declare-fun m!779889 () Bool)

(assert (=> b!834665 m!779889))

(declare-fun m!779891 () Bool)

(assert (=> b!834665 m!779891))

(declare-fun m!779893 () Bool)

(assert (=> b!834665 m!779893))

(declare-fun m!779895 () Bool)

(assert (=> start!71850 m!779895))

(declare-fun m!779897 () Bool)

(assert (=> bm!36641 m!779897))

(assert (=> b!834667 m!779873))

(assert (=> b!834667 m!779897))

(declare-fun m!779899 () Bool)

(assert (=> b!834671 m!779899))

(declare-fun m!779901 () Bool)

(assert (=> b!834671 m!779901))

(declare-fun m!779903 () Bool)

(assert (=> b!834663 m!779903))

(declare-fun m!779905 () Bool)

(assert (=> b!834663 m!779905))

(declare-fun m!779907 () Bool)

(assert (=> b!834663 m!779907))

(check-sat (not b!834665) (not bm!36640) (not b!834670) (not b!834671) (not b!834663) (not b!834667) (not b!834666) (not bm!36641) (not b!834668) (not b!834664) (not start!71850))
(check-sat)
