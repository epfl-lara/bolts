; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114128 () Bool)

(assert start!114128)

(declare-fun b!1354681 () Bool)

(declare-fun res!899833 () Bool)

(declare-fun e!769509 () Bool)

(assert (=> b!1354681 (=> (not res!899833) (not e!769509))))

(declare-datatypes ((List!31781 0))(
  ( (Nil!31778) (Cons!31777 (h!32986 (_ BitVec 64)) (t!46446 List!31781)) )
))
(declare-fun acc!759 () List!31781)

(declare-fun contains!9346 (List!31781 (_ BitVec 64)) Bool)

(assert (=> b!1354681 (= res!899833 (not (contains!9346 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354682 () Bool)

(declare-fun res!899834 () Bool)

(assert (=> b!1354682 (=> (not res!899834) (not e!769509))))

(declare-datatypes ((array!92233 0))(
  ( (array!92234 (arr!44560 (Array (_ BitVec 32) (_ BitVec 64))) (size!45111 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92233)

(declare-fun arrayNoDuplicates!0 (array!92233 (_ BitVec 32) List!31781) Bool)

(assert (=> b!1354682 (= res!899834 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31778))))

(declare-fun b!1354683 () Bool)

(declare-fun res!899828 () Bool)

(declare-fun e!769510 () Bool)

(assert (=> b!1354683 (=> (not res!899828) (not e!769510))))

(declare-fun lt!598310 () List!31781)

(declare-fun noDuplicate!2225 (List!31781) Bool)

(assert (=> b!1354683 (= res!899828 (noDuplicate!2225 lt!598310))))

(declare-fun b!1354684 () Bool)

(declare-fun res!899827 () Bool)

(assert (=> b!1354684 (=> (not res!899827) (not e!769509))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1354684 (= res!899827 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45111 a!3742)))))

(declare-fun b!1354685 () Bool)

(declare-fun res!899836 () Bool)

(assert (=> b!1354685 (=> (not res!899836) (not e!769510))))

(assert (=> b!1354685 (= res!899836 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598310))))

(declare-fun b!1354686 () Bool)

(declare-datatypes ((Unit!44444 0))(
  ( (Unit!44445) )
))
(declare-fun e!769513 () Unit!44444)

(declare-fun Unit!44446 () Unit!44444)

(assert (=> b!1354686 (= e!769513 Unit!44446)))

(declare-fun b!1354688 () Bool)

(declare-fun res!899824 () Bool)

(assert (=> b!1354688 (=> (not res!899824) (not e!769510))))

(assert (=> b!1354688 (= res!899824 (not (contains!9346 lt!598310 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354689 () Bool)

(declare-fun e!769511 () Bool)

(assert (=> b!1354689 (= e!769509 e!769511)))

(declare-fun res!899829 () Bool)

(assert (=> b!1354689 (=> (not res!899829) (not e!769511))))

(declare-fun lt!598308 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354689 (= res!899829 (and (not (= from!3120 i!1404)) lt!598308))))

(declare-fun lt!598305 () Unit!44444)

(assert (=> b!1354689 (= lt!598305 e!769513)))

(declare-fun c!126871 () Bool)

(assert (=> b!1354689 (= c!126871 lt!598308)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354689 (= lt!598308 (validKeyInArray!0 (select (arr!44560 a!3742) from!3120)))))

(declare-fun b!1354690 () Bool)

(declare-fun res!899831 () Bool)

(assert (=> b!1354690 (=> (not res!899831) (not e!769509))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354690 (= res!899831 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354691 () Bool)

(assert (=> b!1354691 (= e!769510 (not true))))

(assert (=> b!1354691 (arrayNoDuplicates!0 (array!92234 (store (arr!44560 a!3742) i!1404 l!3587) (size!45111 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598310)))

(declare-fun lt!598307 () Unit!44444)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92233 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31781) Unit!44444)

(assert (=> b!1354691 (= lt!598307 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598310))))

(declare-fun b!1354692 () Bool)

(declare-fun res!899832 () Bool)

(assert (=> b!1354692 (=> (not res!899832) (not e!769509))))

(assert (=> b!1354692 (= res!899832 (noDuplicate!2225 acc!759))))

(declare-fun b!1354693 () Bool)

(declare-fun lt!598306 () Unit!44444)

(assert (=> b!1354693 (= e!769513 lt!598306)))

(declare-fun lt!598309 () Unit!44444)

(declare-fun lemmaListSubSeqRefl!0 (List!31781) Unit!44444)

(assert (=> b!1354693 (= lt!598309 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!755 (List!31781 List!31781) Bool)

(assert (=> b!1354693 (subseq!755 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92233 List!31781 List!31781 (_ BitVec 32)) Unit!44444)

(declare-fun $colon$colon!772 (List!31781 (_ BitVec 64)) List!31781)

(assert (=> b!1354693 (= lt!598306 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!772 acc!759 (select (arr!44560 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354693 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354694 () Bool)

(declare-fun res!899826 () Bool)

(assert (=> b!1354694 (=> (not res!899826) (not e!769509))))

(assert (=> b!1354694 (= res!899826 (not (contains!9346 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354695 () Bool)

(declare-fun res!899835 () Bool)

(assert (=> b!1354695 (=> (not res!899835) (not e!769510))))

(assert (=> b!1354695 (= res!899835 (not (contains!9346 lt!598310 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!899825 () Bool)

(assert (=> start!114128 (=> (not res!899825) (not e!769509))))

(assert (=> start!114128 (= res!899825 (and (bvslt (size!45111 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45111 a!3742))))))

(assert (=> start!114128 e!769509))

(assert (=> start!114128 true))

(declare-fun array_inv!33505 (array!92233) Bool)

(assert (=> start!114128 (array_inv!33505 a!3742)))

(declare-fun b!1354687 () Bool)

(declare-fun res!899837 () Bool)

(assert (=> b!1354687 (=> (not res!899837) (not e!769509))))

(assert (=> b!1354687 (= res!899837 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354696 () Bool)

(assert (=> b!1354696 (= e!769511 e!769510)))

(declare-fun res!899830 () Bool)

(assert (=> b!1354696 (=> (not res!899830) (not e!769510))))

(assert (=> b!1354696 (= res!899830 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354696 (= lt!598310 ($colon$colon!772 acc!759 (select (arr!44560 a!3742) from!3120)))))

(declare-fun b!1354697 () Bool)

(declare-fun res!899838 () Bool)

(assert (=> b!1354697 (=> (not res!899838) (not e!769509))))

(assert (=> b!1354697 (= res!899838 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45111 a!3742))))))

(assert (= (and start!114128 res!899825) b!1354692))

(assert (= (and b!1354692 res!899832) b!1354694))

(assert (= (and b!1354694 res!899826) b!1354681))

(assert (= (and b!1354681 res!899833) b!1354682))

(assert (= (and b!1354682 res!899834) b!1354687))

(assert (= (and b!1354687 res!899837) b!1354697))

(assert (= (and b!1354697 res!899838) b!1354690))

(assert (= (and b!1354690 res!899831) b!1354684))

(assert (= (and b!1354684 res!899827) b!1354689))

(assert (= (and b!1354689 c!126871) b!1354693))

(assert (= (and b!1354689 (not c!126871)) b!1354686))

(assert (= (and b!1354689 res!899829) b!1354696))

(assert (= (and b!1354696 res!899830) b!1354683))

(assert (= (and b!1354683 res!899828) b!1354688))

(assert (= (and b!1354688 res!899824) b!1354695))

(assert (= (and b!1354695 res!899835) b!1354685))

(assert (= (and b!1354685 res!899836) b!1354691))

(declare-fun m!1241029 () Bool)

(assert (=> b!1354695 m!1241029))

(declare-fun m!1241031 () Bool)

(assert (=> b!1354689 m!1241031))

(assert (=> b!1354689 m!1241031))

(declare-fun m!1241033 () Bool)

(assert (=> b!1354689 m!1241033))

(declare-fun m!1241035 () Bool)

(assert (=> b!1354683 m!1241035))

(declare-fun m!1241037 () Bool)

(assert (=> b!1354690 m!1241037))

(declare-fun m!1241039 () Bool)

(assert (=> b!1354692 m!1241039))

(declare-fun m!1241041 () Bool)

(assert (=> b!1354693 m!1241041))

(assert (=> b!1354693 m!1241031))

(declare-fun m!1241043 () Bool)

(assert (=> b!1354693 m!1241043))

(declare-fun m!1241045 () Bool)

(assert (=> b!1354693 m!1241045))

(declare-fun m!1241047 () Bool)

(assert (=> b!1354693 m!1241047))

(assert (=> b!1354693 m!1241031))

(assert (=> b!1354693 m!1241043))

(declare-fun m!1241049 () Bool)

(assert (=> b!1354693 m!1241049))

(declare-fun m!1241051 () Bool)

(assert (=> b!1354694 m!1241051))

(assert (=> b!1354696 m!1241031))

(assert (=> b!1354696 m!1241031))

(assert (=> b!1354696 m!1241043))

(declare-fun m!1241053 () Bool)

(assert (=> b!1354688 m!1241053))

(declare-fun m!1241055 () Bool)

(assert (=> b!1354687 m!1241055))

(declare-fun m!1241057 () Bool)

(assert (=> b!1354691 m!1241057))

(declare-fun m!1241059 () Bool)

(assert (=> b!1354691 m!1241059))

(declare-fun m!1241061 () Bool)

(assert (=> b!1354691 m!1241061))

(declare-fun m!1241063 () Bool)

(assert (=> b!1354681 m!1241063))

(declare-fun m!1241065 () Bool)

(assert (=> b!1354685 m!1241065))

(declare-fun m!1241067 () Bool)

(assert (=> start!114128 m!1241067))

(declare-fun m!1241069 () Bool)

(assert (=> b!1354682 m!1241069))

(push 1)

