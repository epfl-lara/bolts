; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71852 () Bool)

(assert start!71852)

(declare-fun b!834690 () Bool)

(declare-datatypes ((Unit!28692 0))(
  ( (Unit!28693) )
))
(declare-fun e!465738 () Unit!28692)

(declare-fun lt!379476 () Unit!28692)

(assert (=> b!834690 (= e!465738 lt!379476)))

(declare-datatypes ((array!46706 0))(
  ( (array!46707 (arr!22383 (Array (_ BitVec 32) (_ BitVec 64))) (size!22804 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46706)

(declare-fun lt!379482 () Unit!28692)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46706 (_ BitVec 32) (_ BitVec 32)) Unit!28692)

(assert (=> b!834690 (= lt!379482 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36650 () (_ BitVec 32))

(declare-fun lt!379477 () (_ BitVec 32))

(assert (=> b!834690 (= call!36650 (bvadd #b00000000000000000000000000000001 lt!379477))))

(declare-fun lt!379481 () array!46706)

(assert (=> b!834690 (= lt!379476 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379481 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36649 () (_ BitVec 32))

(declare-fun lt!379474 () (_ BitVec 32))

(assert (=> b!834690 (= call!36649 (bvadd #b00000000000000000000000000000001 lt!379474))))

(declare-fun c!90862 () Bool)

(declare-fun bm!36646 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46706 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!36646 (= call!36650 (arrayCountValidKeys!0 (ite c!90862 a!4227 lt!379481) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567763 () Bool)

(declare-fun e!465736 () Bool)

(assert (=> start!71852 (=> (not res!567763) (not e!465736))))

(assert (=> start!71852 (= res!567763 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22804 a!4227))))))

(assert (=> start!71852 e!465736))

(assert (=> start!71852 true))

(declare-fun array_inv!17806 (array!46706) Bool)

(assert (=> start!71852 (array_inv!17806 a!4227)))

(declare-fun b!834691 () Bool)

(declare-fun res!567761 () Bool)

(assert (=> b!834691 (=> (not res!567761) (not e!465736))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834691 (= res!567761 (validKeyInArray!0 k!2968))))

(declare-fun b!834692 () Bool)

(declare-fun e!465739 () Bool)

(assert (=> b!834692 (= e!465736 e!465739)))

(declare-fun res!567760 () Bool)

(assert (=> b!834692 (=> (not res!567760) (not e!465739))))

(assert (=> b!834692 (= res!567760 (and (= lt!379474 lt!379477) (not (= to!390 (size!22804 a!4227)))))))

(assert (=> b!834692 (= lt!379477 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834692 (= lt!379474 (arrayCountValidKeys!0 lt!379481 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834692 (= lt!379481 (array!46707 (store (arr!22383 a!4227) i!1466 k!2968) (size!22804 a!4227)))))

(declare-fun bm!36647 () Bool)

(assert (=> bm!36647 (= call!36649 (arrayCountValidKeys!0 (ite c!90862 lt!379481 a!4227) (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834693 () Bool)

(declare-fun res!567758 () Bool)

(assert (=> b!834693 (=> (not res!567758) (not e!465736))))

(assert (=> b!834693 (= res!567758 (and (bvslt (size!22804 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22804 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834694 () Bool)

(declare-fun res!567762 () Bool)

(declare-fun e!465740 () Bool)

(assert (=> b!834694 (=> (not res!567762) (not e!465740))))

(assert (=> b!834694 (= res!567762 (= (arrayCountValidKeys!0 lt!379481 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834695 () Bool)

(assert (=> b!834695 (= e!465739 e!465740)))

(declare-fun res!567757 () Bool)

(assert (=> b!834695 (=> (not res!567757) (not e!465740))))

(assert (=> b!834695 (= res!567757 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22804 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379480 () Unit!28692)

(assert (=> b!834695 (= lt!379480 e!465738)))

(assert (=> b!834695 (= c!90862 (validKeyInArray!0 (select (arr!22383 a!4227) to!390)))))

(declare-fun b!834696 () Bool)

(declare-fun lt!379475 () Unit!28692)

(assert (=> b!834696 (= e!465738 lt!379475)))

(declare-fun lt!379478 () Unit!28692)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46706 (_ BitVec 32) (_ BitVec 32)) Unit!28692)

(assert (=> b!834696 (= lt!379478 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834696 (= call!36649 lt!379477)))

(assert (=> b!834696 (= lt!379475 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379481 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834696 (= call!36650 lt!379474)))

(declare-fun b!834697 () Bool)

(assert (=> b!834697 (= e!465740 (not (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (=> b!834697 (= (arrayCountValidKeys!0 lt!379481 (bvadd #b00000000000000000000000000000001 i!1466) (size!22804 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22804 a!4227)))))

(declare-fun lt!379479 () Unit!28692)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46706 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28692)

(assert (=> b!834697 (= lt!379479 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834698 () Bool)

(declare-fun res!567759 () Bool)

(assert (=> b!834698 (=> (not res!567759) (not e!465736))))

(assert (=> b!834698 (= res!567759 (not (validKeyInArray!0 (select (arr!22383 a!4227) i!1466))))))

(assert (= (and start!71852 res!567763) b!834698))

(assert (= (and b!834698 res!567759) b!834691))

(assert (= (and b!834691 res!567761) b!834693))

(assert (= (and b!834693 res!567758) b!834692))

(assert (= (and b!834692 res!567760) b!834695))

(assert (= (and b!834695 c!90862) b!834690))

(assert (= (and b!834695 (not c!90862)) b!834696))

(assert (= (or b!834690 b!834696) bm!36647))

(assert (= (or b!834690 b!834696) bm!36646))

(assert (= (and b!834695 res!567757) b!834694))

(assert (= (and b!834694 res!567762) b!834697))

(declare-fun m!779909 () Bool)

(assert (=> b!834692 m!779909))

(declare-fun m!779911 () Bool)

(assert (=> b!834692 m!779911))

(declare-fun m!779913 () Bool)

(assert (=> b!834692 m!779913))

(declare-fun m!779915 () Bool)

(assert (=> bm!36647 m!779915))

(declare-fun m!779917 () Bool)

(assert (=> b!834690 m!779917))

(declare-fun m!779919 () Bool)

(assert (=> b!834690 m!779919))

(declare-fun m!779921 () Bool)

(assert (=> start!71852 m!779921))

(declare-fun m!779923 () Bool)

(assert (=> b!834691 m!779923))

(declare-fun m!779925 () Bool)

(assert (=> b!834694 m!779925))

(declare-fun m!779927 () Bool)

(assert (=> b!834694 m!779927))

(declare-fun m!779929 () Bool)

(assert (=> b!834697 m!779929))

(declare-fun m!779931 () Bool)

(assert (=> b!834697 m!779931))

(declare-fun m!779933 () Bool)

(assert (=> b!834697 m!779933))

(declare-fun m!779935 () Bool)

(assert (=> b!834698 m!779935))

(assert (=> b!834698 m!779935))

(declare-fun m!779937 () Bool)

(assert (=> b!834698 m!779937))

(declare-fun m!779939 () Bool)

(assert (=> bm!36646 m!779939))

(declare-fun m!779941 () Bool)

(assert (=> b!834695 m!779941))

(assert (=> b!834695 m!779941))

(declare-fun m!779943 () Bool)

(assert (=> b!834695 m!779943))

(declare-fun m!779945 () Bool)

(assert (=> b!834696 m!779945))

(declare-fun m!779947 () Bool)

(assert (=> b!834696 m!779947))

(push 1)

