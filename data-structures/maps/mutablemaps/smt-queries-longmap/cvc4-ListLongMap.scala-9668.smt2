; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114186 () Bool)

(assert start!114186)

(declare-fun res!900781 () Bool)

(declare-fun e!769874 () Bool)

(assert (=> start!114186 (=> (not res!900781) (not e!769874))))

(declare-datatypes ((array!92291 0))(
  ( (array!92292 (arr!44589 (Array (_ BitVec 32) (_ BitVec 64))) (size!45140 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92291)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114186 (= res!900781 (and (bvslt (size!45140 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45140 a!3742))))))

(assert (=> start!114186 e!769874))

(assert (=> start!114186 true))

(declare-fun array_inv!33534 (array!92291) Bool)

(assert (=> start!114186 (array_inv!33534 a!3742)))

(declare-fun b!1355805 () Bool)

(declare-fun res!900778 () Bool)

(assert (=> b!1355805 (=> (not res!900778) (not e!769874))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355805 (= res!900778 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355806 () Bool)

(declare-fun e!769875 () Bool)

(assert (=> b!1355806 (= e!769874 e!769875)))

(declare-fun res!900783 () Bool)

(assert (=> b!1355806 (=> (not res!900783) (not e!769875))))

(declare-fun lt!598758 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355806 (= res!900783 (and (not (= from!3120 i!1404)) (not lt!598758) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44531 0))(
  ( (Unit!44532) )
))
(declare-fun lt!598759 () Unit!44531)

(declare-fun e!769876 () Unit!44531)

(assert (=> b!1355806 (= lt!598759 e!769876)))

(declare-fun c!126958 () Bool)

(assert (=> b!1355806 (= c!126958 lt!598758)))

(assert (=> b!1355806 (= lt!598758 (validKeyInArray!0 (select (arr!44589 a!3742) from!3120)))))

(declare-fun b!1355807 () Bool)

(declare-fun Unit!44533 () Unit!44531)

(assert (=> b!1355807 (= e!769876 Unit!44533)))

(declare-fun b!1355808 () Bool)

(declare-fun res!900777 () Bool)

(assert (=> b!1355808 (=> (not res!900777) (not e!769874))))

(declare-datatypes ((List!31810 0))(
  ( (Nil!31807) (Cons!31806 (h!33015 (_ BitVec 64)) (t!46475 List!31810)) )
))
(declare-fun acc!759 () List!31810)

(declare-fun arrayNoDuplicates!0 (array!92291 (_ BitVec 32) List!31810) Bool)

(assert (=> b!1355808 (= res!900777 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355809 () Bool)

(declare-fun res!900779 () Bool)

(assert (=> b!1355809 (=> (not res!900779) (not e!769874))))

(assert (=> b!1355809 (= res!900779 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45140 a!3742)))))

(declare-fun b!1355810 () Bool)

(declare-fun lt!598756 () Unit!44531)

(assert (=> b!1355810 (= e!769876 lt!598756)))

(declare-fun lt!598760 () Unit!44531)

(declare-fun lemmaListSubSeqRefl!0 (List!31810) Unit!44531)

(assert (=> b!1355810 (= lt!598760 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!784 (List!31810 List!31810) Bool)

(assert (=> b!1355810 (subseq!784 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92291 List!31810 List!31810 (_ BitVec 32)) Unit!44531)

(declare-fun $colon$colon!801 (List!31810 (_ BitVec 64)) List!31810)

(assert (=> b!1355810 (= lt!598756 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!801 acc!759 (select (arr!44589 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355810 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355811 () Bool)

(declare-fun res!900776 () Bool)

(assert (=> b!1355811 (=> (not res!900776) (not e!769874))))

(declare-fun noDuplicate!2254 (List!31810) Bool)

(assert (=> b!1355811 (= res!900776 (noDuplicate!2254 acc!759))))

(declare-fun b!1355812 () Bool)

(declare-fun res!900775 () Bool)

(assert (=> b!1355812 (=> (not res!900775) (not e!769874))))

(declare-fun contains!9375 (List!31810 (_ BitVec 64)) Bool)

(assert (=> b!1355812 (= res!900775 (not (contains!9375 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355813 () Bool)

(declare-fun res!900782 () Bool)

(assert (=> b!1355813 (=> (not res!900782) (not e!769874))))

(assert (=> b!1355813 (= res!900782 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31807))))

(declare-fun b!1355814 () Bool)

(declare-fun res!900774 () Bool)

(assert (=> b!1355814 (=> (not res!900774) (not e!769874))))

(assert (=> b!1355814 (= res!900774 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45140 a!3742))))))

(declare-fun b!1355815 () Bool)

(declare-fun res!900780 () Bool)

(assert (=> b!1355815 (=> (not res!900780) (not e!769874))))

(assert (=> b!1355815 (= res!900780 (not (contains!9375 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355816 () Bool)

(assert (=> b!1355816 (= e!769875 false)))

(declare-fun lt!598757 () Bool)

(assert (=> b!1355816 (= lt!598757 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!114186 res!900781) b!1355811))

(assert (= (and b!1355811 res!900776) b!1355812))

(assert (= (and b!1355812 res!900775) b!1355815))

(assert (= (and b!1355815 res!900780) b!1355813))

(assert (= (and b!1355813 res!900782) b!1355808))

(assert (= (and b!1355808 res!900777) b!1355814))

(assert (= (and b!1355814 res!900774) b!1355805))

(assert (= (and b!1355805 res!900778) b!1355809))

(assert (= (and b!1355809 res!900779) b!1355806))

(assert (= (and b!1355806 c!126958) b!1355810))

(assert (= (and b!1355806 (not c!126958)) b!1355807))

(assert (= (and b!1355806 res!900783) b!1355816))

(declare-fun m!1241925 () Bool)

(assert (=> b!1355806 m!1241925))

(assert (=> b!1355806 m!1241925))

(declare-fun m!1241927 () Bool)

(assert (=> b!1355806 m!1241927))

(declare-fun m!1241929 () Bool)

(assert (=> b!1355811 m!1241929))

(declare-fun m!1241931 () Bool)

(assert (=> b!1355813 m!1241931))

(declare-fun m!1241933 () Bool)

(assert (=> start!114186 m!1241933))

(declare-fun m!1241935 () Bool)

(assert (=> b!1355808 m!1241935))

(declare-fun m!1241937 () Bool)

(assert (=> b!1355816 m!1241937))

(declare-fun m!1241939 () Bool)

(assert (=> b!1355805 m!1241939))

(declare-fun m!1241941 () Bool)

(assert (=> b!1355812 m!1241941))

(declare-fun m!1241943 () Bool)

(assert (=> b!1355810 m!1241943))

(assert (=> b!1355810 m!1241925))

(declare-fun m!1241945 () Bool)

(assert (=> b!1355810 m!1241945))

(declare-fun m!1241947 () Bool)

(assert (=> b!1355810 m!1241947))

(assert (=> b!1355810 m!1241937))

(assert (=> b!1355810 m!1241925))

(assert (=> b!1355810 m!1241945))

(declare-fun m!1241949 () Bool)

(assert (=> b!1355810 m!1241949))

(declare-fun m!1241951 () Bool)

(assert (=> b!1355815 m!1241951))

(push 1)

(assert (not b!1355813))

(assert (not b!1355815))

(assert (not b!1355816))

(assert (not b!1355808))

(assert (not b!1355811))

(assert (not b!1355812))

