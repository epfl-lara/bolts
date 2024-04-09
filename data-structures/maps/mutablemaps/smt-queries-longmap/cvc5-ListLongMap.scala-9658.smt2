; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114122 () Bool)

(assert start!114122)

(declare-fun b!1354528 () Bool)

(declare-fun res!899692 () Bool)

(declare-fun e!769468 () Bool)

(assert (=> b!1354528 (=> (not res!899692) (not e!769468))))

(declare-datatypes ((List!31778 0))(
  ( (Nil!31775) (Cons!31774 (h!32983 (_ BitVec 64)) (t!46443 List!31778)) )
))
(declare-fun acc!759 () List!31778)

(declare-fun contains!9343 (List!31778 (_ BitVec 64)) Bool)

(assert (=> b!1354528 (= res!899692 (not (contains!9343 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354529 () Bool)

(declare-fun res!899690 () Bool)

(declare-fun e!769464 () Bool)

(assert (=> b!1354529 (=> (not res!899690) (not e!769464))))

(declare-fun lt!598251 () List!31778)

(declare-datatypes ((array!92227 0))(
  ( (array!92228 (arr!44557 (Array (_ BitVec 32) (_ BitVec 64))) (size!45108 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92227)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92227 (_ BitVec 32) List!31778) Bool)

(assert (=> b!1354529 (= res!899690 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598251))))

(declare-fun b!1354530 () Bool)

(declare-fun res!899702 () Bool)

(assert (=> b!1354530 (=> (not res!899702) (not e!769464))))

(assert (=> b!1354530 (= res!899702 (not (contains!9343 lt!598251 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354531 () Bool)

(declare-datatypes ((Unit!44435 0))(
  ( (Unit!44436) )
))
(declare-fun e!769467 () Unit!44435)

(declare-fun Unit!44437 () Unit!44435)

(assert (=> b!1354531 (= e!769467 Unit!44437)))

(declare-fun b!1354532 () Bool)

(declare-fun lt!598254 () Unit!44435)

(assert (=> b!1354532 (= e!769467 lt!598254)))

(declare-fun lt!598255 () Unit!44435)

(declare-fun lemmaListSubSeqRefl!0 (List!31778) Unit!44435)

(assert (=> b!1354532 (= lt!598255 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!752 (List!31778 List!31778) Bool)

(assert (=> b!1354532 (subseq!752 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92227 List!31778 List!31778 (_ BitVec 32)) Unit!44435)

(declare-fun $colon$colon!769 (List!31778 (_ BitVec 64)) List!31778)

(assert (=> b!1354532 (= lt!598254 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!769 acc!759 (select (arr!44557 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354532 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354534 () Bool)

(declare-fun res!899689 () Bool)

(assert (=> b!1354534 (=> (not res!899689) (not e!769468))))

(assert (=> b!1354534 (= res!899689 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354535 () Bool)

(declare-fun res!899695 () Bool)

(assert (=> b!1354535 (=> (not res!899695) (not e!769464))))

(assert (=> b!1354535 (= res!899695 (not (contains!9343 lt!598251 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354536 () Bool)

(declare-fun e!769465 () Bool)

(assert (=> b!1354536 (= e!769465 e!769464)))

(declare-fun res!899703 () Bool)

(assert (=> b!1354536 (=> (not res!899703) (not e!769464))))

(assert (=> b!1354536 (= res!899703 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354536 (= lt!598251 ($colon$colon!769 acc!759 (select (arr!44557 a!3742) from!3120)))))

(declare-fun b!1354537 () Bool)

(declare-fun res!899691 () Bool)

(assert (=> b!1354537 (=> (not res!899691) (not e!769464))))

(declare-fun noDuplicate!2222 (List!31778) Bool)

(assert (=> b!1354537 (= res!899691 (noDuplicate!2222 lt!598251))))

(declare-fun b!1354538 () Bool)

(declare-fun res!899700 () Bool)

(assert (=> b!1354538 (=> (not res!899700) (not e!769468))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354538 (= res!899700 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45108 a!3742))))))

(declare-fun b!1354539 () Bool)

(assert (=> b!1354539 (= e!769468 e!769465)))

(declare-fun res!899694 () Bool)

(assert (=> b!1354539 (=> (not res!899694) (not e!769465))))

(declare-fun lt!598253 () Bool)

(assert (=> b!1354539 (= res!899694 (and (not (= from!3120 i!1404)) lt!598253))))

(declare-fun lt!598252 () Unit!44435)

(assert (=> b!1354539 (= lt!598252 e!769467)))

(declare-fun c!126862 () Bool)

(assert (=> b!1354539 (= c!126862 lt!598253)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354539 (= lt!598253 (validKeyInArray!0 (select (arr!44557 a!3742) from!3120)))))

(declare-fun b!1354540 () Bool)

(declare-fun res!899696 () Bool)

(assert (=> b!1354540 (=> (not res!899696) (not e!769468))))

(assert (=> b!1354540 (= res!899696 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31775))))

(declare-fun b!1354541 () Bool)

(declare-fun res!899701 () Bool)

(assert (=> b!1354541 (=> (not res!899701) (not e!769468))))

(assert (=> b!1354541 (= res!899701 (noDuplicate!2222 acc!759))))

(declare-fun b!1354542 () Bool)

(assert (=> b!1354542 (= e!769464 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354542 (arrayNoDuplicates!0 (array!92228 (store (arr!44557 a!3742) i!1404 l!3587) (size!45108 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598251)))

(declare-fun lt!598256 () Unit!44435)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92227 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31778) Unit!44435)

(assert (=> b!1354542 (= lt!598256 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598251))))

(declare-fun b!1354533 () Bool)

(declare-fun res!899693 () Bool)

(assert (=> b!1354533 (=> (not res!899693) (not e!769468))))

(assert (=> b!1354533 (= res!899693 (not (contains!9343 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!899697 () Bool)

(assert (=> start!114122 (=> (not res!899697) (not e!769468))))

(assert (=> start!114122 (= res!899697 (and (bvslt (size!45108 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45108 a!3742))))))

(assert (=> start!114122 e!769468))

(assert (=> start!114122 true))

(declare-fun array_inv!33502 (array!92227) Bool)

(assert (=> start!114122 (array_inv!33502 a!3742)))

(declare-fun b!1354543 () Bool)

(declare-fun res!899698 () Bool)

(assert (=> b!1354543 (=> (not res!899698) (not e!769468))))

(assert (=> b!1354543 (= res!899698 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354544 () Bool)

(declare-fun res!899699 () Bool)

(assert (=> b!1354544 (=> (not res!899699) (not e!769468))))

(assert (=> b!1354544 (= res!899699 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45108 a!3742)))))

(assert (= (and start!114122 res!899697) b!1354541))

(assert (= (and b!1354541 res!899701) b!1354528))

(assert (= (and b!1354528 res!899692) b!1354533))

(assert (= (and b!1354533 res!899693) b!1354540))

(assert (= (and b!1354540 res!899696) b!1354534))

(assert (= (and b!1354534 res!899689) b!1354538))

(assert (= (and b!1354538 res!899700) b!1354543))

(assert (= (and b!1354543 res!899698) b!1354544))

(assert (= (and b!1354544 res!899699) b!1354539))

(assert (= (and b!1354539 c!126862) b!1354532))

(assert (= (and b!1354539 (not c!126862)) b!1354531))

(assert (= (and b!1354539 res!899694) b!1354536))

(assert (= (and b!1354536 res!899703) b!1354537))

(assert (= (and b!1354537 res!899691) b!1354535))

(assert (= (and b!1354535 res!899695) b!1354530))

(assert (= (and b!1354530 res!899702) b!1354529))

(assert (= (and b!1354529 res!899690) b!1354542))

(declare-fun m!1240903 () Bool)

(assert (=> start!114122 m!1240903))

(declare-fun m!1240905 () Bool)

(assert (=> b!1354530 m!1240905))

(declare-fun m!1240907 () Bool)

(assert (=> b!1354537 m!1240907))

(declare-fun m!1240909 () Bool)

(assert (=> b!1354533 m!1240909))

(declare-fun m!1240911 () Bool)

(assert (=> b!1354540 m!1240911))

(declare-fun m!1240913 () Bool)

(assert (=> b!1354534 m!1240913))

(declare-fun m!1240915 () Bool)

(assert (=> b!1354541 m!1240915))

(declare-fun m!1240917 () Bool)

(assert (=> b!1354528 m!1240917))

(declare-fun m!1240919 () Bool)

(assert (=> b!1354542 m!1240919))

(declare-fun m!1240921 () Bool)

(assert (=> b!1354542 m!1240921))

(declare-fun m!1240923 () Bool)

(assert (=> b!1354542 m!1240923))

(declare-fun m!1240925 () Bool)

(assert (=> b!1354543 m!1240925))

(declare-fun m!1240927 () Bool)

(assert (=> b!1354532 m!1240927))

(declare-fun m!1240929 () Bool)

(assert (=> b!1354532 m!1240929))

(declare-fun m!1240931 () Bool)

(assert (=> b!1354532 m!1240931))

(declare-fun m!1240933 () Bool)

(assert (=> b!1354532 m!1240933))

(declare-fun m!1240935 () Bool)

(assert (=> b!1354532 m!1240935))

(assert (=> b!1354532 m!1240929))

(assert (=> b!1354532 m!1240931))

(declare-fun m!1240937 () Bool)

(assert (=> b!1354532 m!1240937))

(assert (=> b!1354536 m!1240929))

(assert (=> b!1354536 m!1240929))

(assert (=> b!1354536 m!1240931))

(declare-fun m!1240939 () Bool)

(assert (=> b!1354529 m!1240939))

(assert (=> b!1354539 m!1240929))

(assert (=> b!1354539 m!1240929))

(declare-fun m!1240941 () Bool)

(assert (=> b!1354539 m!1240941))

(declare-fun m!1240943 () Bool)

(assert (=> b!1354535 m!1240943))

(push 1)

