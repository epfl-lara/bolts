; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114174 () Bool)

(assert start!114174)

(declare-fun b!1355590 () Bool)

(declare-fun res!900597 () Bool)

(declare-fun e!769803 () Bool)

(assert (=> b!1355590 (=> (not res!900597) (not e!769803))))

(declare-datatypes ((array!92279 0))(
  ( (array!92280 (arr!44583 (Array (_ BitVec 32) (_ BitVec 64))) (size!45134 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92279)

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((List!31804 0))(
  ( (Nil!31801) (Cons!31800 (h!33009 (_ BitVec 64)) (t!46469 List!31804)) )
))
(declare-fun acc!759 () List!31804)

(declare-fun arrayNoDuplicates!0 (array!92279 (_ BitVec 32) List!31804) Bool)

(assert (=> b!1355590 (= res!900597 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355591 () Bool)

(declare-fun res!900603 () Bool)

(assert (=> b!1355591 (=> (not res!900603) (not e!769803))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355591 (= res!900603 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355592 () Bool)

(declare-datatypes ((Unit!44513 0))(
  ( (Unit!44514) )
))
(declare-fun e!769801 () Unit!44513)

(declare-fun Unit!44515 () Unit!44513)

(assert (=> b!1355592 (= e!769801 Unit!44515)))

(declare-fun b!1355593 () Bool)

(declare-fun e!769804 () Bool)

(assert (=> b!1355593 (= e!769803 e!769804)))

(declare-fun res!900602 () Bool)

(assert (=> b!1355593 (=> (not res!900602) (not e!769804))))

(declare-fun lt!598669 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355593 (= res!900602 (and (not (= from!3120 i!1404)) (not lt!598669) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598670 () Unit!44513)

(assert (=> b!1355593 (= lt!598670 e!769801)))

(declare-fun c!126940 () Bool)

(assert (=> b!1355593 (= c!126940 lt!598669)))

(assert (=> b!1355593 (= lt!598669 (validKeyInArray!0 (select (arr!44583 a!3742) from!3120)))))

(declare-fun b!1355594 () Bool)

(declare-fun res!900595 () Bool)

(assert (=> b!1355594 (=> (not res!900595) (not e!769803))))

(declare-fun contains!9369 (List!31804 (_ BitVec 64)) Bool)

(assert (=> b!1355594 (= res!900595 (not (contains!9369 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355595 () Bool)

(declare-fun lt!598668 () Unit!44513)

(assert (=> b!1355595 (= e!769801 lt!598668)))

(declare-fun lt!598666 () Unit!44513)

(declare-fun lemmaListSubSeqRefl!0 (List!31804) Unit!44513)

(assert (=> b!1355595 (= lt!598666 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!778 (List!31804 List!31804) Bool)

(assert (=> b!1355595 (subseq!778 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92279 List!31804 List!31804 (_ BitVec 32)) Unit!44513)

(declare-fun $colon$colon!795 (List!31804 (_ BitVec 64)) List!31804)

(assert (=> b!1355595 (= lt!598668 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!795 acc!759 (select (arr!44583 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355595 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355596 () Bool)

(declare-fun res!900598 () Bool)

(assert (=> b!1355596 (=> (not res!900598) (not e!769803))))

(assert (=> b!1355596 (= res!900598 (not (contains!9369 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355597 () Bool)

(declare-fun res!900596 () Bool)

(assert (=> b!1355597 (=> (not res!900596) (not e!769803))))

(assert (=> b!1355597 (= res!900596 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31801))))

(declare-fun b!1355598 () Bool)

(declare-fun res!900599 () Bool)

(assert (=> b!1355598 (=> (not res!900599) (not e!769803))))

(assert (=> b!1355598 (= res!900599 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45134 a!3742))))))

(declare-fun b!1355599 () Bool)

(assert (=> b!1355599 (= e!769804 false)))

(declare-fun lt!598667 () Bool)

(assert (=> b!1355599 (= lt!598667 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355600 () Bool)

(declare-fun res!900601 () Bool)

(assert (=> b!1355600 (=> (not res!900601) (not e!769803))))

(assert (=> b!1355600 (= res!900601 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45134 a!3742)))))

(declare-fun b!1355589 () Bool)

(declare-fun res!900594 () Bool)

(assert (=> b!1355589 (=> (not res!900594) (not e!769803))))

(declare-fun noDuplicate!2248 (List!31804) Bool)

(assert (=> b!1355589 (= res!900594 (noDuplicate!2248 acc!759))))

(declare-fun res!900600 () Bool)

(assert (=> start!114174 (=> (not res!900600) (not e!769803))))

(assert (=> start!114174 (= res!900600 (and (bvslt (size!45134 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45134 a!3742))))))

(assert (=> start!114174 e!769803))

(assert (=> start!114174 true))

(declare-fun array_inv!33528 (array!92279) Bool)

(assert (=> start!114174 (array_inv!33528 a!3742)))

(assert (= (and start!114174 res!900600) b!1355589))

(assert (= (and b!1355589 res!900594) b!1355596))

(assert (= (and b!1355596 res!900598) b!1355594))

(assert (= (and b!1355594 res!900595) b!1355597))

(assert (= (and b!1355597 res!900596) b!1355590))

(assert (= (and b!1355590 res!900597) b!1355598))

(assert (= (and b!1355598 res!900599) b!1355591))

(assert (= (and b!1355591 res!900603) b!1355600))

(assert (= (and b!1355600 res!900601) b!1355593))

(assert (= (and b!1355593 c!126940) b!1355595))

(assert (= (and b!1355593 (not c!126940)) b!1355592))

(assert (= (and b!1355593 res!900602) b!1355599))

(declare-fun m!1241757 () Bool)

(assert (=> b!1355590 m!1241757))

(declare-fun m!1241759 () Bool)

(assert (=> b!1355595 m!1241759))

(declare-fun m!1241761 () Bool)

(assert (=> b!1355595 m!1241761))

(declare-fun m!1241763 () Bool)

(assert (=> b!1355595 m!1241763))

(declare-fun m!1241765 () Bool)

(assert (=> b!1355595 m!1241765))

(declare-fun m!1241767 () Bool)

(assert (=> b!1355595 m!1241767))

(assert (=> b!1355595 m!1241761))

(assert (=> b!1355595 m!1241763))

(declare-fun m!1241769 () Bool)

(assert (=> b!1355595 m!1241769))

(declare-fun m!1241771 () Bool)

(assert (=> b!1355589 m!1241771))

(assert (=> b!1355599 m!1241767))

(declare-fun m!1241773 () Bool)

(assert (=> b!1355591 m!1241773))

(declare-fun m!1241775 () Bool)

(assert (=> b!1355594 m!1241775))

(declare-fun m!1241777 () Bool)

(assert (=> start!114174 m!1241777))

(declare-fun m!1241779 () Bool)

(assert (=> b!1355596 m!1241779))

(declare-fun m!1241781 () Bool)

(assert (=> b!1355597 m!1241781))

(assert (=> b!1355593 m!1241761))

(assert (=> b!1355593 m!1241761))

(declare-fun m!1241783 () Bool)

(assert (=> b!1355593 m!1241783))

(push 1)

