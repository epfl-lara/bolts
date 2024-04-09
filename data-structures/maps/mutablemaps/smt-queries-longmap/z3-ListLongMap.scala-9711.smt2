; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114916 () Bool)

(assert start!114916)

(declare-fun b!1361702 () Bool)

(declare-datatypes ((Unit!44834 0))(
  ( (Unit!44835) )
))
(declare-fun e!772532 () Unit!44834)

(declare-fun Unit!44836 () Unit!44834)

(assert (=> b!1361702 (= e!772532 Unit!44836)))

(declare-fun b!1361703 () Bool)

(declare-fun res!905908 () Bool)

(declare-fun e!772533 () Bool)

(assert (=> b!1361703 (=> (not res!905908) (not e!772533))))

(declare-datatypes ((List!31938 0))(
  ( (Nil!31935) (Cons!31934 (h!33143 (_ BitVec 64)) (t!46630 List!31938)) )
))
(declare-fun acc!759 () List!31938)

(declare-fun contains!9503 (List!31938 (_ BitVec 64)) Bool)

(assert (=> b!1361703 (= res!905908 (not (contains!9503 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361704 () Bool)

(declare-fun e!772534 () Bool)

(declare-fun e!772531 () Bool)

(assert (=> b!1361704 (= e!772534 e!772531)))

(declare-fun res!905907 () Bool)

(assert (=> b!1361704 (=> (not res!905907) (not e!772531))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1361704 (= res!905907 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!600221 () List!31938)

(declare-datatypes ((array!92574 0))(
  ( (array!92575 (arr!44717 (Array (_ BitVec 32) (_ BitVec 64))) (size!45268 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92574)

(declare-fun $colon$colon!899 (List!31938 (_ BitVec 64)) List!31938)

(assert (=> b!1361704 (= lt!600221 ($colon$colon!899 acc!759 (select (arr!44717 a!3742) from!3120)))))

(declare-fun b!1361705 () Bool)

(declare-fun res!905904 () Bool)

(assert (=> b!1361705 (=> (not res!905904) (not e!772533))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361705 (= res!905904 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45268 a!3742))))))

(declare-fun b!1361706 () Bool)

(assert (=> b!1361706 (= e!772533 e!772534)))

(declare-fun res!905912 () Bool)

(assert (=> b!1361706 (=> (not res!905912) (not e!772534))))

(declare-fun lt!600220 () Bool)

(assert (=> b!1361706 (= res!905912 (and (not (= from!3120 i!1404)) lt!600220))))

(declare-fun lt!600217 () Unit!44834)

(assert (=> b!1361706 (= lt!600217 e!772532)))

(declare-fun c!127342 () Bool)

(assert (=> b!1361706 (= c!127342 lt!600220)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361706 (= lt!600220 (validKeyInArray!0 (select (arr!44717 a!3742) from!3120)))))

(declare-fun res!905916 () Bool)

(assert (=> start!114916 (=> (not res!905916) (not e!772533))))

(assert (=> start!114916 (= res!905916 (and (bvslt (size!45268 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45268 a!3742))))))

(assert (=> start!114916 e!772533))

(assert (=> start!114916 true))

(declare-fun array_inv!33662 (array!92574) Bool)

(assert (=> start!114916 (array_inv!33662 a!3742)))

(declare-fun b!1361707 () Bool)

(declare-fun lt!600216 () Unit!44834)

(assert (=> b!1361707 (= e!772532 lt!600216)))

(declare-fun lt!600218 () Unit!44834)

(declare-fun lemmaListSubSeqRefl!0 (List!31938) Unit!44834)

(assert (=> b!1361707 (= lt!600218 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!894 (List!31938 List!31938) Bool)

(assert (=> b!1361707 (subseq!894 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92574 List!31938 List!31938 (_ BitVec 32)) Unit!44834)

(assert (=> b!1361707 (= lt!600216 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!899 acc!759 (select (arr!44717 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92574 (_ BitVec 32) List!31938) Bool)

(assert (=> b!1361707 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361708 () Bool)

(declare-fun res!905910 () Bool)

(assert (=> b!1361708 (=> (not res!905910) (not e!772533))))

(assert (=> b!1361708 (= res!905910 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31935))))

(declare-fun b!1361709 () Bool)

(declare-fun res!905915 () Bool)

(assert (=> b!1361709 (=> (not res!905915) (not e!772533))))

(declare-fun noDuplicate!2382 (List!31938) Bool)

(assert (=> b!1361709 (= res!905915 (noDuplicate!2382 acc!759))))

(declare-fun b!1361710 () Bool)

(declare-fun res!905914 () Bool)

(assert (=> b!1361710 (=> (not res!905914) (not e!772531))))

(assert (=> b!1361710 (= res!905914 (not (contains!9503 lt!600221 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361711 () Bool)

(declare-fun res!905909 () Bool)

(assert (=> b!1361711 (=> (not res!905909) (not e!772533))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361711 (= res!905909 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361712 () Bool)

(assert (=> b!1361712 (= e!772531 false)))

(declare-fun lt!600219 () Bool)

(assert (=> b!1361712 (= lt!600219 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600221))))

(declare-fun b!1361713 () Bool)

(declare-fun res!905913 () Bool)

(assert (=> b!1361713 (=> (not res!905913) (not e!772533))))

(assert (=> b!1361713 (= res!905913 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361714 () Bool)

(declare-fun res!905905 () Bool)

(assert (=> b!1361714 (=> (not res!905905) (not e!772533))))

(assert (=> b!1361714 (= res!905905 (not (contains!9503 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361715 () Bool)

(declare-fun res!905903 () Bool)

(assert (=> b!1361715 (=> (not res!905903) (not e!772531))))

(assert (=> b!1361715 (= res!905903 (not (contains!9503 lt!600221 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361716 () Bool)

(declare-fun res!905911 () Bool)

(assert (=> b!1361716 (=> (not res!905911) (not e!772531))))

(assert (=> b!1361716 (= res!905911 (noDuplicate!2382 lt!600221))))

(declare-fun b!1361717 () Bool)

(declare-fun res!905906 () Bool)

(assert (=> b!1361717 (=> (not res!905906) (not e!772533))))

(assert (=> b!1361717 (= res!905906 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45268 a!3742)))))

(assert (= (and start!114916 res!905916) b!1361709))

(assert (= (and b!1361709 res!905915) b!1361714))

(assert (= (and b!1361714 res!905905) b!1361703))

(assert (= (and b!1361703 res!905908) b!1361708))

(assert (= (and b!1361708 res!905910) b!1361713))

(assert (= (and b!1361713 res!905913) b!1361705))

(assert (= (and b!1361705 res!905904) b!1361711))

(assert (= (and b!1361711 res!905909) b!1361717))

(assert (= (and b!1361717 res!905906) b!1361706))

(assert (= (and b!1361706 c!127342) b!1361707))

(assert (= (and b!1361706 (not c!127342)) b!1361702))

(assert (= (and b!1361706 res!905912) b!1361704))

(assert (= (and b!1361704 res!905907) b!1361716))

(assert (= (and b!1361716 res!905911) b!1361715))

(assert (= (and b!1361715 res!905903) b!1361710))

(assert (= (and b!1361710 res!905914) b!1361712))

(declare-fun m!1246789 () Bool)

(assert (=> b!1361704 m!1246789))

(assert (=> b!1361704 m!1246789))

(declare-fun m!1246791 () Bool)

(assert (=> b!1361704 m!1246791))

(declare-fun m!1246793 () Bool)

(assert (=> b!1361711 m!1246793))

(declare-fun m!1246795 () Bool)

(assert (=> b!1361710 m!1246795))

(declare-fun m!1246797 () Bool)

(assert (=> b!1361709 m!1246797))

(declare-fun m!1246799 () Bool)

(assert (=> b!1361713 m!1246799))

(declare-fun m!1246801 () Bool)

(assert (=> b!1361712 m!1246801))

(declare-fun m!1246803 () Bool)

(assert (=> b!1361703 m!1246803))

(declare-fun m!1246805 () Bool)

(assert (=> b!1361716 m!1246805))

(assert (=> b!1361706 m!1246789))

(assert (=> b!1361706 m!1246789))

(declare-fun m!1246807 () Bool)

(assert (=> b!1361706 m!1246807))

(declare-fun m!1246809 () Bool)

(assert (=> start!114916 m!1246809))

(declare-fun m!1246811 () Bool)

(assert (=> b!1361708 m!1246811))

(declare-fun m!1246813 () Bool)

(assert (=> b!1361714 m!1246813))

(declare-fun m!1246815 () Bool)

(assert (=> b!1361707 m!1246815))

(assert (=> b!1361707 m!1246789))

(assert (=> b!1361707 m!1246791))

(declare-fun m!1246817 () Bool)

(assert (=> b!1361707 m!1246817))

(declare-fun m!1246819 () Bool)

(assert (=> b!1361707 m!1246819))

(assert (=> b!1361707 m!1246789))

(assert (=> b!1361707 m!1246791))

(declare-fun m!1246821 () Bool)

(assert (=> b!1361707 m!1246821))

(declare-fun m!1246823 () Bool)

(assert (=> b!1361715 m!1246823))

(check-sat (not b!1361708) (not b!1361711) (not b!1361715) (not b!1361704) (not b!1361706) (not start!114916) (not b!1361713) (not b!1361716) (not b!1361714) (not b!1361703) (not b!1361712) (not b!1361710) (not b!1361709) (not b!1361707))
(check-sat)
