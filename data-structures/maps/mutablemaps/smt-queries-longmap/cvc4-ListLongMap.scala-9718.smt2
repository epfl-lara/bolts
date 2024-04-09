; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115020 () Bool)

(assert start!115020)

(declare-fun b!1362835 () Bool)

(declare-fun e!772991 () Bool)

(assert (=> b!1362835 (= e!772991 false)))

(declare-datatypes ((Unit!44900 0))(
  ( (Unit!44901) )
))
(declare-fun lt!600563 () Unit!44900)

(declare-fun e!772992 () Unit!44900)

(assert (=> b!1362835 (= lt!600563 e!772992)))

(declare-fun c!127432 () Bool)

(declare-datatypes ((array!92621 0))(
  ( (array!92622 (arr!44739 (Array (_ BitVec 32) (_ BitVec 64))) (size!45290 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92621)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362835 (= c!127432 (validKeyInArray!0 (select (arr!44739 a!3742) from!3120)))))

(declare-fun b!1362836 () Bool)

(declare-fun res!906860 () Bool)

(assert (=> b!1362836 (=> (not res!906860) (not e!772991))))

(assert (=> b!1362836 (= res!906860 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45290 a!3742)))))

(declare-fun b!1362838 () Bool)

(declare-fun res!906863 () Bool)

(assert (=> b!1362838 (=> (not res!906863) (not e!772991))))

(declare-datatypes ((List!31960 0))(
  ( (Nil!31957) (Cons!31956 (h!33165 (_ BitVec 64)) (t!46655 List!31960)) )
))
(declare-fun acc!759 () List!31960)

(declare-fun arrayNoDuplicates!0 (array!92621 (_ BitVec 32) List!31960) Bool)

(assert (=> b!1362838 (= res!906863 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362839 () Bool)

(declare-fun res!906858 () Bool)

(assert (=> b!1362839 (=> (not res!906858) (not e!772991))))

(declare-fun contains!9525 (List!31960 (_ BitVec 64)) Bool)

(assert (=> b!1362839 (= res!906858 (not (contains!9525 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362840 () Bool)

(declare-fun res!906857 () Bool)

(assert (=> b!1362840 (=> (not res!906857) (not e!772991))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362840 (= res!906857 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362841 () Bool)

(declare-fun Unit!44902 () Unit!44900)

(assert (=> b!1362841 (= e!772992 Unit!44902)))

(declare-fun b!1362842 () Bool)

(declare-fun res!906862 () Bool)

(assert (=> b!1362842 (=> (not res!906862) (not e!772991))))

(assert (=> b!1362842 (= res!906862 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31957))))

(declare-fun b!1362843 () Bool)

(declare-fun res!906859 () Bool)

(assert (=> b!1362843 (=> (not res!906859) (not e!772991))))

(declare-fun noDuplicate!2404 (List!31960) Bool)

(assert (=> b!1362843 (= res!906859 (noDuplicate!2404 acc!759))))

(declare-fun res!906864 () Bool)

(assert (=> start!115020 (=> (not res!906864) (not e!772991))))

(assert (=> start!115020 (= res!906864 (and (bvslt (size!45290 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45290 a!3742))))))

(assert (=> start!115020 e!772991))

(assert (=> start!115020 true))

(declare-fun array_inv!33684 (array!92621) Bool)

(assert (=> start!115020 (array_inv!33684 a!3742)))

(declare-fun b!1362837 () Bool)

(declare-fun res!906856 () Bool)

(assert (=> b!1362837 (=> (not res!906856) (not e!772991))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362837 (= res!906856 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45290 a!3742))))))

(declare-fun b!1362844 () Bool)

(declare-fun res!906861 () Bool)

(assert (=> b!1362844 (=> (not res!906861) (not e!772991))))

(assert (=> b!1362844 (= res!906861 (not (contains!9525 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362845 () Bool)

(declare-fun lt!600561 () Unit!44900)

(assert (=> b!1362845 (= e!772992 lt!600561)))

(declare-fun lt!600562 () Unit!44900)

(declare-fun lemmaListSubSeqRefl!0 (List!31960) Unit!44900)

(assert (=> b!1362845 (= lt!600562 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!916 (List!31960 List!31960) Bool)

(assert (=> b!1362845 (subseq!916 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92621 List!31960 List!31960 (_ BitVec 32)) Unit!44900)

(declare-fun $colon$colon!921 (List!31960 (_ BitVec 64)) List!31960)

(assert (=> b!1362845 (= lt!600561 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!921 acc!759 (select (arr!44739 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362845 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!115020 res!906864) b!1362843))

(assert (= (and b!1362843 res!906859) b!1362844))

(assert (= (and b!1362844 res!906861) b!1362839))

(assert (= (and b!1362839 res!906858) b!1362842))

(assert (= (and b!1362842 res!906862) b!1362838))

(assert (= (and b!1362838 res!906863) b!1362837))

(assert (= (and b!1362837 res!906856) b!1362840))

(assert (= (and b!1362840 res!906857) b!1362836))

(assert (= (and b!1362836 res!906860) b!1362835))

(assert (= (and b!1362835 c!127432) b!1362845))

(assert (= (and b!1362835 (not c!127432)) b!1362841))

(declare-fun m!1247775 () Bool)

(assert (=> b!1362845 m!1247775))

(declare-fun m!1247777 () Bool)

(assert (=> b!1362845 m!1247777))

(declare-fun m!1247779 () Bool)

(assert (=> b!1362845 m!1247779))

(declare-fun m!1247781 () Bool)

(assert (=> b!1362845 m!1247781))

(declare-fun m!1247783 () Bool)

(assert (=> b!1362845 m!1247783))

(assert (=> b!1362845 m!1247777))

(assert (=> b!1362845 m!1247779))

(declare-fun m!1247785 () Bool)

(assert (=> b!1362845 m!1247785))

(declare-fun m!1247787 () Bool)

(assert (=> b!1362843 m!1247787))

(declare-fun m!1247789 () Bool)

(assert (=> b!1362838 m!1247789))

(assert (=> b!1362835 m!1247777))

(assert (=> b!1362835 m!1247777))

(declare-fun m!1247791 () Bool)

(assert (=> b!1362835 m!1247791))

(declare-fun m!1247793 () Bool)

(assert (=> b!1362844 m!1247793))

(declare-fun m!1247795 () Bool)

(assert (=> b!1362839 m!1247795))

(declare-fun m!1247797 () Bool)

(assert (=> b!1362842 m!1247797))

(declare-fun m!1247799 () Bool)

(assert (=> b!1362840 m!1247799))

(declare-fun m!1247801 () Bool)

(assert (=> start!115020 m!1247801))

(push 1)

(assert (not b!1362840))

(assert (not b!1362839))

(assert (not b!1362844))

(assert (not b!1362842))

(assert (not b!1362843))

(assert (not b!1362835))

(assert (not b!1362838))

(assert (not start!115020))

(assert (not b!1362845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

