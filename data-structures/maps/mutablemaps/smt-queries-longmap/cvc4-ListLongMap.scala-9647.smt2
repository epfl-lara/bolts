; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114060 () Bool)

(assert start!114060)

(declare-fun b!1353032 () Bool)

(declare-fun res!898382 () Bool)

(declare-fun e!769003 () Bool)

(assert (=> b!1353032 (=> (not res!898382) (not e!769003))))

(declare-datatypes ((List!31747 0))(
  ( (Nil!31744) (Cons!31743 (h!32952 (_ BitVec 64)) (t!46412 List!31747)) )
))
(declare-fun acc!759 () List!31747)

(declare-fun contains!9312 (List!31747 (_ BitVec 64)) Bool)

(assert (=> b!1353032 (= res!898382 (not (contains!9312 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353033 () Bool)

(declare-fun res!898388 () Bool)

(declare-fun e!769000 () Bool)

(assert (=> b!1353033 (=> (not res!898388) (not e!769000))))

(declare-datatypes ((array!92165 0))(
  ( (array!92166 (arr!44526 (Array (_ BitVec 32) (_ BitVec 64))) (size!45077 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92165)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92165 (_ BitVec 32) List!31747) Bool)

(assert (=> b!1353033 (= res!898388 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1353034 () Bool)

(declare-fun res!898383 () Bool)

(assert (=> b!1353034 (=> (not res!898383) (not e!769003))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353034 (= res!898383 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353035 () Bool)

(assert (=> b!1353035 (= e!769000 (not true))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353035 (arrayNoDuplicates!0 (array!92166 (store (arr!44526 a!3742) i!1404 l!3587) (size!45077 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-datatypes ((Unit!44342 0))(
  ( (Unit!44343) )
))
(declare-fun lt!597698 () Unit!44342)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92165 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31747) Unit!44342)

(assert (=> b!1353035 (= lt!597698 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1353036 () Bool)

(declare-fun res!898387 () Bool)

(assert (=> b!1353036 (=> (not res!898387) (not e!769003))))

(assert (=> b!1353036 (= res!898387 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31744))))

(declare-fun b!1353037 () Bool)

(declare-fun res!898380 () Bool)

(assert (=> b!1353037 (=> (not res!898380) (not e!769003))))

(declare-fun noDuplicate!2191 (List!31747) Bool)

(assert (=> b!1353037 (= res!898380 (noDuplicate!2191 acc!759))))

(declare-fun b!1353038 () Bool)

(declare-fun e!769001 () Unit!44342)

(declare-fun Unit!44344 () Unit!44342)

(assert (=> b!1353038 (= e!769001 Unit!44344)))

(declare-fun b!1353039 () Bool)

(declare-fun res!898386 () Bool)

(assert (=> b!1353039 (=> (not res!898386) (not e!769003))))

(assert (=> b!1353039 (= res!898386 (not (contains!9312 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353041 () Bool)

(assert (=> b!1353041 (= e!769003 e!769000)))

(declare-fun res!898384 () Bool)

(assert (=> b!1353041 (=> (not res!898384) (not e!769000))))

(assert (=> b!1353041 (= res!898384 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597697 () Unit!44342)

(assert (=> b!1353041 (= lt!597697 e!769001)))

(declare-fun c!126769 () Bool)

(assert (=> b!1353041 (= c!126769 (validKeyInArray!0 (select (arr!44526 a!3742) from!3120)))))

(declare-fun b!1353042 () Bool)

(declare-fun lt!597695 () Unit!44342)

(assert (=> b!1353042 (= e!769001 lt!597695)))

(declare-fun lt!597696 () Unit!44342)

(declare-fun lemmaListSubSeqRefl!0 (List!31747) Unit!44342)

(assert (=> b!1353042 (= lt!597696 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!721 (List!31747 List!31747) Bool)

(assert (=> b!1353042 (subseq!721 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92165 List!31747 List!31747 (_ BitVec 32)) Unit!44342)

(declare-fun $colon$colon!738 (List!31747 (_ BitVec 64)) List!31747)

(assert (=> b!1353042 (= lt!597695 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!738 acc!759 (select (arr!44526 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353042 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353043 () Bool)

(declare-fun res!898389 () Bool)

(assert (=> b!1353043 (=> (not res!898389) (not e!769003))))

(assert (=> b!1353043 (= res!898389 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353044 () Bool)

(declare-fun res!898381 () Bool)

(assert (=> b!1353044 (=> (not res!898381) (not e!769003))))

(assert (=> b!1353044 (= res!898381 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45077 a!3742))))))

(declare-fun b!1353040 () Bool)

(declare-fun res!898379 () Bool)

(assert (=> b!1353040 (=> (not res!898379) (not e!769003))))

(assert (=> b!1353040 (= res!898379 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45077 a!3742)))))

(declare-fun res!898385 () Bool)

(assert (=> start!114060 (=> (not res!898385) (not e!769003))))

(assert (=> start!114060 (= res!898385 (and (bvslt (size!45077 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45077 a!3742))))))

(assert (=> start!114060 e!769003))

(assert (=> start!114060 true))

(declare-fun array_inv!33471 (array!92165) Bool)

(assert (=> start!114060 (array_inv!33471 a!3742)))

(assert (= (and start!114060 res!898385) b!1353037))

(assert (= (and b!1353037 res!898380) b!1353032))

(assert (= (and b!1353032 res!898382) b!1353039))

(assert (= (and b!1353039 res!898386) b!1353036))

(assert (= (and b!1353036 res!898387) b!1353043))

(assert (= (and b!1353043 res!898389) b!1353044))

(assert (= (and b!1353044 res!898381) b!1353034))

(assert (= (and b!1353034 res!898383) b!1353040))

(assert (= (and b!1353040 res!898379) b!1353041))

(assert (= (and b!1353041 c!126769) b!1353042))

(assert (= (and b!1353041 (not c!126769)) b!1353038))

(assert (= (and b!1353041 res!898384) b!1353033))

(assert (= (and b!1353033 res!898388) b!1353035))

(declare-fun m!1239771 () Bool)

(assert (=> b!1353033 m!1239771))

(declare-fun m!1239773 () Bool)

(assert (=> b!1353037 m!1239773))

(declare-fun m!1239775 () Bool)

(assert (=> b!1353035 m!1239775))

(declare-fun m!1239777 () Bool)

(assert (=> b!1353035 m!1239777))

(declare-fun m!1239779 () Bool)

(assert (=> b!1353035 m!1239779))

(declare-fun m!1239781 () Bool)

(assert (=> start!114060 m!1239781))

(declare-fun m!1239783 () Bool)

(assert (=> b!1353039 m!1239783))

(declare-fun m!1239785 () Bool)

(assert (=> b!1353036 m!1239785))

(declare-fun m!1239787 () Bool)

(assert (=> b!1353034 m!1239787))

(declare-fun m!1239789 () Bool)

(assert (=> b!1353032 m!1239789))

(declare-fun m!1239791 () Bool)

(assert (=> b!1353041 m!1239791))

(assert (=> b!1353041 m!1239791))

(declare-fun m!1239793 () Bool)

(assert (=> b!1353041 m!1239793))

(declare-fun m!1239795 () Bool)

(assert (=> b!1353042 m!1239795))

(assert (=> b!1353042 m!1239791))

(declare-fun m!1239797 () Bool)

(assert (=> b!1353042 m!1239797))

(declare-fun m!1239799 () Bool)

(assert (=> b!1353042 m!1239799))

(assert (=> b!1353042 m!1239771))

(assert (=> b!1353042 m!1239791))

(assert (=> b!1353042 m!1239797))

(declare-fun m!1239801 () Bool)

(assert (=> b!1353042 m!1239801))

(declare-fun m!1239803 () Bool)

(assert (=> b!1353043 m!1239803))

(push 1)

(assert (not b!1353035))

