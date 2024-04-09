; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71854 () Bool)

(assert start!71854)

(declare-fun b!834717 () Bool)

(declare-fun res!567779 () Bool)

(declare-fun e!465755 () Bool)

(assert (=> b!834717 (=> (not res!567779) (not e!465755))))

(declare-datatypes ((array!46708 0))(
  ( (array!46709 (arr!22384 (Array (_ BitVec 32) (_ BitVec 64))) (size!22805 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46708)

(declare-fun lt!379508 () array!46708)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46708 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834717 (= res!567779 (= (arrayCountValidKeys!0 lt!379508 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390))))))

(declare-fun b!834718 () Bool)

(declare-datatypes ((Unit!28694 0))(
  ( (Unit!28695) )
))
(declare-fun e!465752 () Unit!28694)

(declare-fun lt!379509 () Unit!28694)

(assert (=> b!834718 (= e!465752 lt!379509)))

(declare-fun lt!379503 () Unit!28694)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46708 (_ BitVec 32) (_ BitVec 32)) Unit!28694)

(assert (=> b!834718 (= lt!379503 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36656 () (_ BitVec 32))

(declare-fun lt!379504 () (_ BitVec 32))

(assert (=> b!834718 (= call!36656 (bvadd #b00000000000000000000000000000001 lt!379504))))

(assert (=> b!834718 (= lt!379509 (lemmaValidKeyIncreasesNumOfKeys!0 lt!379508 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun call!36655 () (_ BitVec 32))

(declare-fun lt!379506 () (_ BitVec 32))

(assert (=> b!834718 (= call!36655 (bvadd #b00000000000000000000000000000001 lt!379506))))

(declare-fun b!834719 () Bool)

(declare-fun e!465754 () Bool)

(assert (=> b!834719 (= e!465754 e!465755)))

(declare-fun res!567784 () Bool)

(assert (=> b!834719 (=> (not res!567784) (not e!465755))))

(assert (=> b!834719 (= res!567784 (and (bvsge (bvadd #b00000000000000000000000000000001 to!390) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!390) (size!22805 a!4227)) (bvsgt (bvadd #b00000000000000000000000000000001 to!390) i!1466)))))

(declare-fun lt!379502 () Unit!28694)

(assert (=> b!834719 (= lt!379502 e!465752)))

(declare-fun c!90865 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834719 (= c!90865 (validKeyInArray!0 (select (arr!22384 a!4227) to!390)))))

(declare-fun b!834720 () Bool)

(declare-fun res!567781 () Bool)

(declare-fun e!465753 () Bool)

(assert (=> b!834720 (=> (not res!567781) (not e!465753))))

(assert (=> b!834720 (= res!567781 (not (validKeyInArray!0 (select (arr!22384 a!4227) i!1466))))))

(declare-fun bm!36652 () Bool)

(assert (=> bm!36652 (= call!36656 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun res!567780 () Bool)

(assert (=> start!71854 (=> (not res!567780) (not e!465753))))

(assert (=> start!71854 (= res!567780 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22805 a!4227))))))

(assert (=> start!71854 e!465753))

(assert (=> start!71854 true))

(declare-fun array_inv!17807 (array!46708) Bool)

(assert (=> start!71854 (array_inv!17807 a!4227)))

(declare-fun bm!36653 () Bool)

(assert (=> bm!36653 (= call!36655 (arrayCountValidKeys!0 lt!379508 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)))))

(declare-fun b!834721 () Bool)

(declare-fun lt!379505 () Unit!28694)

(assert (=> b!834721 (= e!465752 lt!379505)))

(declare-fun lt!379507 () Unit!28694)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!46708 (_ BitVec 32) (_ BitVec 32)) Unit!28694)

(assert (=> b!834721 (= lt!379507 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834721 (= call!36656 lt!379504)))

(assert (=> b!834721 (= lt!379505 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!379508 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834721 (= call!36655 lt!379506)))

(declare-fun b!834722 () Bool)

(declare-fun res!567783 () Bool)

(assert (=> b!834722 (=> (not res!567783) (not e!465753))))

(assert (=> b!834722 (= res!567783 (and (bvslt (size!22805 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22805 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834723 () Bool)

(assert (=> b!834723 (= e!465753 e!465754)))

(declare-fun res!567782 () Bool)

(assert (=> b!834723 (=> (not res!567782) (not e!465754))))

(assert (=> b!834723 (= res!567782 (and (= lt!379506 lt!379504) (not (= to!390 (size!22805 a!4227)))))))

(assert (=> b!834723 (= lt!379504 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!834723 (= lt!379506 (arrayCountValidKeys!0 lt!379508 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834723 (= lt!379508 (array!46709 (store (arr!22384 a!4227) i!1466 k!2968) (size!22805 a!4227)))))

(declare-fun b!834724 () Bool)

(declare-fun res!567778 () Bool)

(assert (=> b!834724 (=> (not res!567778) (not e!465753))))

(assert (=> b!834724 (= res!567778 (validKeyInArray!0 k!2968))))

(declare-fun b!834725 () Bool)

(assert (=> b!834725 (= e!465755 (not true))))

(assert (=> b!834725 (= (arrayCountValidKeys!0 lt!379508 (bvadd #b00000000000000000000000000000001 i!1466) (size!22805 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22805 a!4227)))))

(declare-fun lt!379501 () Unit!28694)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!46708 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!28694)

(assert (=> b!834725 (= lt!379501 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4227 i!1466 k!2968 (bvadd #b00000000000000000000000000000001 to!390)))))

(assert (= (and start!71854 res!567780) b!834720))

(assert (= (and b!834720 res!567781) b!834724))

(assert (= (and b!834724 res!567778) b!834722))

(assert (= (and b!834722 res!567783) b!834723))

(assert (= (and b!834723 res!567782) b!834719))

(assert (= (and b!834719 c!90865) b!834718))

(assert (= (and b!834719 (not c!90865)) b!834721))

(assert (= (or b!834718 b!834721) bm!36653))

(assert (= (or b!834718 b!834721) bm!36652))

(assert (= (and b!834719 res!567784) b!834717))

(assert (= (and b!834717 res!567779) b!834725))

(declare-fun m!779949 () Bool)

(assert (=> b!834720 m!779949))

(assert (=> b!834720 m!779949))

(declare-fun m!779951 () Bool)

(assert (=> b!834720 m!779951))

(declare-fun m!779953 () Bool)

(assert (=> b!834723 m!779953))

(declare-fun m!779955 () Bool)

(assert (=> b!834723 m!779955))

(declare-fun m!779957 () Bool)

(assert (=> b!834723 m!779957))

(declare-fun m!779959 () Bool)

(assert (=> b!834725 m!779959))

(declare-fun m!779961 () Bool)

(assert (=> b!834725 m!779961))

(declare-fun m!779963 () Bool)

(assert (=> b!834725 m!779963))

(declare-fun m!779965 () Bool)

(assert (=> b!834718 m!779965))

(declare-fun m!779967 () Bool)

(assert (=> b!834718 m!779967))

(declare-fun m!779969 () Bool)

(assert (=> b!834717 m!779969))

(declare-fun m!779971 () Bool)

(assert (=> b!834717 m!779971))

(declare-fun m!779973 () Bool)

(assert (=> b!834721 m!779973))

(declare-fun m!779975 () Bool)

(assert (=> b!834721 m!779975))

(declare-fun m!779977 () Bool)

(assert (=> start!71854 m!779977))

(assert (=> bm!36652 m!779971))

(declare-fun m!779979 () Bool)

(assert (=> b!834724 m!779979))

(declare-fun m!779981 () Bool)

(assert (=> b!834719 m!779981))

(assert (=> b!834719 m!779981))

(declare-fun m!779983 () Bool)

(assert (=> b!834719 m!779983))

(assert (=> bm!36653 m!779969))

(push 1)

