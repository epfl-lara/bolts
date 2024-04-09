; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114724 () Bool)

(assert start!114724)

(declare-fun b!1360500 () Bool)

(declare-fun res!904889 () Bool)

(declare-fun e!771835 () Bool)

(assert (=> b!1360500 (=> (not res!904889) (not e!771835))))

(declare-datatypes ((List!31923 0))(
  ( (Nil!31920) (Cons!31919 (h!33128 (_ BitVec 64)) (t!46606 List!31923)) )
))
(declare-fun acc!759 () List!31923)

(declare-fun contains!9488 (List!31923 (_ BitVec 64)) Bool)

(assert (=> b!1360500 (= res!904889 (not (contains!9488 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360501 () Bool)

(declare-fun res!904895 () Bool)

(assert (=> b!1360501 (=> (not res!904895) (not e!771835))))

(declare-fun noDuplicate!2367 (List!31923) Bool)

(assert (=> b!1360501 (= res!904895 (noDuplicate!2367 acc!759))))

(declare-fun b!1360502 () Bool)

(declare-fun res!904893 () Bool)

(assert (=> b!1360502 (=> (not res!904893) (not e!771835))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360502 (= res!904893 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360503 () Bool)

(declare-fun res!904894 () Bool)

(assert (=> b!1360503 (=> (not res!904894) (not e!771835))))

(declare-datatypes ((array!92535 0))(
  ( (array!92536 (arr!44702 (Array (_ BitVec 32) (_ BitVec 64))) (size!45253 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92535)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92535 (_ BitVec 32) List!31923) Bool)

(assert (=> b!1360503 (= res!904894 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360504 () Bool)

(declare-fun res!904890 () Bool)

(assert (=> b!1360504 (=> (not res!904890) (not e!771835))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360504 (= res!904890 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45253 a!3742))))))

(declare-fun b!1360505 () Bool)

(declare-fun res!904896 () Bool)

(assert (=> b!1360505 (=> (not res!904896) (not e!771835))))

(assert (=> b!1360505 (= res!904896 (not (contains!9488 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!904888 () Bool)

(assert (=> start!114724 (=> (not res!904888) (not e!771835))))

(assert (=> start!114724 (= res!904888 (and (bvslt (size!45253 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45253 a!3742))))))

(assert (=> start!114724 e!771835))

(assert (=> start!114724 true))

(declare-fun array_inv!33647 (array!92535) Bool)

(assert (=> start!114724 (array_inv!33647 a!3742)))

(declare-fun b!1360506 () Bool)

(declare-fun res!904892 () Bool)

(assert (=> b!1360506 (=> (not res!904892) (not e!771835))))

(assert (=> b!1360506 (= res!904892 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31920))))

(declare-fun b!1360507 () Bool)

(declare-datatypes ((Unit!44789 0))(
  ( (Unit!44790) )
))
(declare-fun e!771833 () Unit!44789)

(declare-fun Unit!44791 () Unit!44789)

(assert (=> b!1360507 (= e!771833 Unit!44791)))

(declare-fun e!771832 () Bool)

(declare-fun b!1360508 () Bool)

(declare-fun $colon$colon!884 (List!31923 (_ BitVec 64)) List!31923)

(assert (=> b!1360508 (= e!771832 (not (noDuplicate!2367 ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120)))))))

(declare-fun b!1360509 () Bool)

(declare-fun lt!599873 () Unit!44789)

(assert (=> b!1360509 (= e!771833 lt!599873)))

(declare-fun lt!599872 () Unit!44789)

(declare-fun lemmaListSubSeqRefl!0 (List!31923) Unit!44789)

(assert (=> b!1360509 (= lt!599872 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!879 (List!31923 List!31923) Bool)

(assert (=> b!1360509 (subseq!879 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92535 List!31923 List!31923 (_ BitVec 32)) Unit!44789)

(assert (=> b!1360509 (= lt!599873 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360509 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360510 () Bool)

(declare-fun res!904887 () Bool)

(assert (=> b!1360510 (=> (not res!904887) (not e!771835))))

(assert (=> b!1360510 (= res!904887 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45253 a!3742)))))

(declare-fun b!1360511 () Bool)

(assert (=> b!1360511 (= e!771835 e!771832)))

(declare-fun res!904891 () Bool)

(assert (=> b!1360511 (=> (not res!904891) (not e!771832))))

(declare-fun lt!599871 () Bool)

(assert (=> b!1360511 (= res!904891 (and (not (= from!3120 i!1404)) lt!599871 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599870 () Unit!44789)

(assert (=> b!1360511 (= lt!599870 e!771833)))

(declare-fun c!127249 () Bool)

(assert (=> b!1360511 (= c!127249 lt!599871)))

(assert (=> b!1360511 (= lt!599871 (validKeyInArray!0 (select (arr!44702 a!3742) from!3120)))))

(assert (= (and start!114724 res!904888) b!1360501))

(assert (= (and b!1360501 res!904895) b!1360500))

(assert (= (and b!1360500 res!904889) b!1360505))

(assert (= (and b!1360505 res!904896) b!1360506))

(assert (= (and b!1360506 res!904892) b!1360503))

(assert (= (and b!1360503 res!904894) b!1360504))

(assert (= (and b!1360504 res!904890) b!1360502))

(assert (= (and b!1360502 res!904893) b!1360510))

(assert (= (and b!1360510 res!904887) b!1360511))

(assert (= (and b!1360511 c!127249) b!1360509))

(assert (= (and b!1360511 (not c!127249)) b!1360507))

(assert (= (and b!1360511 res!904891) b!1360508))

(declare-fun m!1245787 () Bool)

(assert (=> b!1360508 m!1245787))

(assert (=> b!1360508 m!1245787))

(declare-fun m!1245789 () Bool)

(assert (=> b!1360508 m!1245789))

(assert (=> b!1360508 m!1245789))

(declare-fun m!1245791 () Bool)

(assert (=> b!1360508 m!1245791))

(declare-fun m!1245793 () Bool)

(assert (=> b!1360505 m!1245793))

(declare-fun m!1245795 () Bool)

(assert (=> start!114724 m!1245795))

(declare-fun m!1245797 () Bool)

(assert (=> b!1360502 m!1245797))

(declare-fun m!1245799 () Bool)

(assert (=> b!1360500 m!1245799))

(declare-fun m!1245801 () Bool)

(assert (=> b!1360501 m!1245801))

(assert (=> b!1360511 m!1245787))

(assert (=> b!1360511 m!1245787))

(declare-fun m!1245803 () Bool)

(assert (=> b!1360511 m!1245803))

(declare-fun m!1245805 () Bool)

(assert (=> b!1360509 m!1245805))

(assert (=> b!1360509 m!1245787))

(assert (=> b!1360509 m!1245789))

(declare-fun m!1245807 () Bool)

(assert (=> b!1360509 m!1245807))

(declare-fun m!1245809 () Bool)

(assert (=> b!1360509 m!1245809))

(assert (=> b!1360509 m!1245787))

(assert (=> b!1360509 m!1245789))

(declare-fun m!1245811 () Bool)

(assert (=> b!1360509 m!1245811))

(declare-fun m!1245813 () Bool)

(assert (=> b!1360503 m!1245813))

(declare-fun m!1245815 () Bool)

(assert (=> b!1360506 m!1245815))

(check-sat (not b!1360501) (not start!114724) (not b!1360503) (not b!1360508) (not b!1360505) (not b!1360506) (not b!1360500) (not b!1360509) (not b!1360502) (not b!1360511))
(check-sat)
(get-model)

(declare-fun d!145569 () Bool)

(assert (=> d!145569 (= (array_inv!33647 a!3742) (bvsge (size!45253 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114724 d!145569))

(declare-fun d!145571 () Bool)

(assert (=> d!145571 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599888 () Unit!44789)

(declare-fun choose!80 (array!92535 List!31923 List!31923 (_ BitVec 32)) Unit!44789)

(assert (=> d!145571 (= lt!599888 (choose!80 a!3742 ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145571 (bvslt (size!45253 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145571 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!599888)))

(declare-fun bs!39011 () Bool)

(assert (= bs!39011 d!145571))

(assert (=> bs!39011 m!1245809))

(assert (=> bs!39011 m!1245789))

(declare-fun m!1245847 () Bool)

(assert (=> bs!39011 m!1245847))

(assert (=> b!1360509 d!145571))

(declare-fun d!145573 () Bool)

(declare-fun res!904937 () Bool)

(declare-fun e!771858 () Bool)

(assert (=> d!145573 (=> res!904937 e!771858)))

(get-info :version)

(assert (=> d!145573 (= res!904937 ((_ is Nil!31920) acc!759))))

(assert (=> d!145573 (= (subseq!879 acc!759 acc!759) e!771858)))

(declare-fun b!1360559 () Bool)

(declare-fun e!771859 () Bool)

(assert (=> b!1360559 (= e!771859 (subseq!879 acc!759 (t!46606 acc!759)))))

(declare-fun b!1360558 () Bool)

(declare-fun e!771856 () Bool)

(assert (=> b!1360558 (= e!771856 (subseq!879 (t!46606 acc!759) (t!46606 acc!759)))))

(declare-fun b!1360556 () Bool)

(declare-fun e!771857 () Bool)

(assert (=> b!1360556 (= e!771858 e!771857)))

(declare-fun res!904936 () Bool)

(assert (=> b!1360556 (=> (not res!904936) (not e!771857))))

(assert (=> b!1360556 (= res!904936 ((_ is Cons!31919) acc!759))))

(declare-fun b!1360557 () Bool)

(assert (=> b!1360557 (= e!771857 e!771859)))

(declare-fun res!904938 () Bool)

(assert (=> b!1360557 (=> res!904938 e!771859)))

(assert (=> b!1360557 (= res!904938 e!771856)))

(declare-fun res!904935 () Bool)

(assert (=> b!1360557 (=> (not res!904935) (not e!771856))))

(assert (=> b!1360557 (= res!904935 (= (h!33128 acc!759) (h!33128 acc!759)))))

(assert (= (and d!145573 (not res!904937)) b!1360556))

(assert (= (and b!1360556 res!904936) b!1360557))

(assert (= (and b!1360557 res!904935) b!1360558))

(assert (= (and b!1360557 (not res!904938)) b!1360559))

(declare-fun m!1245849 () Bool)

(assert (=> b!1360559 m!1245849))

(declare-fun m!1245851 () Bool)

(assert (=> b!1360558 m!1245851))

(assert (=> b!1360509 d!145573))

(declare-fun b!1360574 () Bool)

(declare-fun e!771874 () Bool)

(declare-fun e!771872 () Bool)

(assert (=> b!1360574 (= e!771874 e!771872)))

(declare-fun c!127255 () Bool)

(assert (=> b!1360574 (= c!127255 (validKeyInArray!0 (select (arr!44702 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1360575 () Bool)

(declare-fun call!65326 () Bool)

(assert (=> b!1360575 (= e!771872 call!65326)))

(declare-fun b!1360576 () Bool)

(assert (=> b!1360576 (= e!771872 call!65326)))

(declare-fun e!771875 () Bool)

(declare-fun b!1360577 () Bool)

(assert (=> b!1360577 (= e!771875 (contains!9488 acc!759 (select (arr!44702 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1360578 () Bool)

(declare-fun e!771873 () Bool)

(assert (=> b!1360578 (= e!771873 e!771874)))

(declare-fun res!904951 () Bool)

(assert (=> b!1360578 (=> (not res!904951) (not e!771874))))

(assert (=> b!1360578 (= res!904951 (not e!771875))))

(declare-fun res!904949 () Bool)

(assert (=> b!1360578 (=> (not res!904949) (not e!771875))))

(assert (=> b!1360578 (= res!904949 (validKeyInArray!0 (select (arr!44702 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun d!145575 () Bool)

(declare-fun res!904950 () Bool)

(assert (=> d!145575 (=> res!904950 e!771873)))

(assert (=> d!145575 (= res!904950 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45253 a!3742)))))

(assert (=> d!145575 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!771873)))

(declare-fun bm!65323 () Bool)

(assert (=> bm!65323 (= call!65326 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127255 (Cons!31919 (select (arr!44702 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(assert (= (and d!145575 (not res!904950)) b!1360578))

(assert (= (and b!1360578 res!904949) b!1360577))

(assert (= (and b!1360578 res!904951) b!1360574))

(assert (= (and b!1360574 c!127255) b!1360576))

(assert (= (and b!1360574 (not c!127255)) b!1360575))

(assert (= (or b!1360576 b!1360575) bm!65323))

(declare-fun m!1245859 () Bool)

(assert (=> b!1360574 m!1245859))

(assert (=> b!1360574 m!1245859))

(declare-fun m!1245861 () Bool)

(assert (=> b!1360574 m!1245861))

(assert (=> b!1360577 m!1245859))

(assert (=> b!1360577 m!1245859))

(declare-fun m!1245863 () Bool)

(assert (=> b!1360577 m!1245863))

(assert (=> b!1360578 m!1245859))

(assert (=> b!1360578 m!1245859))

(assert (=> b!1360578 m!1245861))

(assert (=> bm!65323 m!1245859))

(declare-fun m!1245865 () Bool)

(assert (=> bm!65323 m!1245865))

(assert (=> b!1360509 d!145575))

(declare-fun d!145585 () Bool)

(assert (=> d!145585 (= ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120)) (Cons!31919 (select (arr!44702 a!3742) from!3120) acc!759))))

(assert (=> b!1360509 d!145585))

(declare-fun d!145587 () Bool)

(assert (=> d!145587 (subseq!879 acc!759 acc!759)))

(declare-fun lt!599897 () Unit!44789)

(declare-fun choose!36 (List!31923) Unit!44789)

(assert (=> d!145587 (= lt!599897 (choose!36 acc!759))))

(assert (=> d!145587 (= (lemmaListSubSeqRefl!0 acc!759) lt!599897)))

(declare-fun bs!39013 () Bool)

(assert (= bs!39013 d!145587))

(assert (=> bs!39013 m!1245811))

(declare-fun m!1245869 () Bool)

(assert (=> bs!39013 m!1245869))

(assert (=> b!1360509 d!145587))

(declare-fun d!145591 () Bool)

(declare-fun res!904975 () Bool)

(declare-fun e!771902 () Bool)

(assert (=> d!145591 (=> res!904975 e!771902)))

(assert (=> d!145591 (= res!904975 ((_ is Nil!31920) ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120))))))

(assert (=> d!145591 (= (noDuplicate!2367 ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120))) e!771902)))

(declare-fun b!1360608 () Bool)

(declare-fun e!771903 () Bool)

(assert (=> b!1360608 (= e!771902 e!771903)))

(declare-fun res!904976 () Bool)

(assert (=> b!1360608 (=> (not res!904976) (not e!771903))))

(assert (=> b!1360608 (= res!904976 (not (contains!9488 (t!46606 ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120))) (h!33128 ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120))))))))

(declare-fun b!1360609 () Bool)

(assert (=> b!1360609 (= e!771903 (noDuplicate!2367 (t!46606 ($colon$colon!884 acc!759 (select (arr!44702 a!3742) from!3120)))))))

(assert (= (and d!145591 (not res!904975)) b!1360608))

(assert (= (and b!1360608 res!904976) b!1360609))

(declare-fun m!1245879 () Bool)

(assert (=> b!1360608 m!1245879))

(declare-fun m!1245881 () Bool)

(assert (=> b!1360609 m!1245881))

(assert (=> b!1360508 d!145591))

(assert (=> b!1360508 d!145585))

(declare-fun b!1360614 () Bool)

(declare-fun e!771910 () Bool)

(declare-fun e!771908 () Bool)

(assert (=> b!1360614 (= e!771910 e!771908)))

(declare-fun c!127259 () Bool)

(assert (=> b!1360614 (= c!127259 (validKeyInArray!0 (select (arr!44702 a!3742) from!3120)))))

(declare-fun b!1360615 () Bool)

(declare-fun call!65330 () Bool)

(assert (=> b!1360615 (= e!771908 call!65330)))

(declare-fun b!1360616 () Bool)

(assert (=> b!1360616 (= e!771908 call!65330)))

(declare-fun b!1360617 () Bool)

(declare-fun e!771911 () Bool)

(assert (=> b!1360617 (= e!771911 (contains!9488 acc!759 (select (arr!44702 a!3742) from!3120)))))

(declare-fun b!1360618 () Bool)

(declare-fun e!771909 () Bool)

(assert (=> b!1360618 (= e!771909 e!771910)))

(declare-fun res!904983 () Bool)

(assert (=> b!1360618 (=> (not res!904983) (not e!771910))))

(assert (=> b!1360618 (= res!904983 (not e!771911))))

(declare-fun res!904981 () Bool)

(assert (=> b!1360618 (=> (not res!904981) (not e!771911))))

(assert (=> b!1360618 (= res!904981 (validKeyInArray!0 (select (arr!44702 a!3742) from!3120)))))

(declare-fun d!145597 () Bool)

(declare-fun res!904982 () Bool)

(assert (=> d!145597 (=> res!904982 e!771909)))

(assert (=> d!145597 (= res!904982 (bvsge from!3120 (size!45253 a!3742)))))

(assert (=> d!145597 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!771909)))

(declare-fun bm!65327 () Bool)

(assert (=> bm!65327 (= call!65330 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127259 (Cons!31919 (select (arr!44702 a!3742) from!3120) acc!759) acc!759)))))

(assert (= (and d!145597 (not res!904982)) b!1360618))

(assert (= (and b!1360618 res!904981) b!1360617))

(assert (= (and b!1360618 res!904983) b!1360614))

(assert (= (and b!1360614 c!127259) b!1360616))

(assert (= (and b!1360614 (not c!127259)) b!1360615))

(assert (= (or b!1360616 b!1360615) bm!65327))

(assert (=> b!1360614 m!1245787))

(assert (=> b!1360614 m!1245787))

(assert (=> b!1360614 m!1245803))

(assert (=> b!1360617 m!1245787))

(assert (=> b!1360617 m!1245787))

(declare-fun m!1245883 () Bool)

(assert (=> b!1360617 m!1245883))

(assert (=> b!1360618 m!1245787))

(assert (=> b!1360618 m!1245787))

(assert (=> b!1360618 m!1245803))

(assert (=> bm!65327 m!1245787))

(declare-fun m!1245885 () Bool)

(assert (=> bm!65327 m!1245885))

(assert (=> b!1360503 d!145597))

(declare-fun d!145599 () Bool)

(assert (=> d!145599 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360502 d!145599))

(declare-fun b!1360635 () Bool)

(declare-fun e!771928 () Bool)

(declare-fun e!771926 () Bool)

(assert (=> b!1360635 (= e!771928 e!771926)))

(declare-fun c!127262 () Bool)

(assert (=> b!1360635 (= c!127262 (validKeyInArray!0 (select (arr!44702 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1360636 () Bool)

(declare-fun call!65331 () Bool)

(assert (=> b!1360636 (= e!771926 call!65331)))

(declare-fun b!1360637 () Bool)

(assert (=> b!1360637 (= e!771926 call!65331)))

(declare-fun b!1360638 () Bool)

(declare-fun e!771929 () Bool)

(assert (=> b!1360638 (= e!771929 (contains!9488 Nil!31920 (select (arr!44702 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1360639 () Bool)

(declare-fun e!771927 () Bool)

(assert (=> b!1360639 (= e!771927 e!771928)))

(declare-fun res!904998 () Bool)

(assert (=> b!1360639 (=> (not res!904998) (not e!771928))))

(assert (=> b!1360639 (= res!904998 (not e!771929))))

(declare-fun res!904996 () Bool)

(assert (=> b!1360639 (=> (not res!904996) (not e!771929))))

(assert (=> b!1360639 (= res!904996 (validKeyInArray!0 (select (arr!44702 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!145601 () Bool)

(declare-fun res!904997 () Bool)

(assert (=> d!145601 (=> res!904997 e!771927)))

(assert (=> d!145601 (= res!904997 (bvsge #b00000000000000000000000000000000 (size!45253 a!3742)))))

(assert (=> d!145601 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31920) e!771927)))

(declare-fun bm!65328 () Bool)

(assert (=> bm!65328 (= call!65331 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127262 (Cons!31919 (select (arr!44702 a!3742) #b00000000000000000000000000000000) Nil!31920) Nil!31920)))))

(assert (= (and d!145601 (not res!904997)) b!1360639))

(assert (= (and b!1360639 res!904996) b!1360638))

(assert (= (and b!1360639 res!904998) b!1360635))

(assert (= (and b!1360635 c!127262) b!1360637))

(assert (= (and b!1360635 (not c!127262)) b!1360636))

(assert (= (or b!1360637 b!1360636) bm!65328))

(declare-fun m!1245891 () Bool)

(assert (=> b!1360635 m!1245891))

(assert (=> b!1360635 m!1245891))

(declare-fun m!1245893 () Bool)

(assert (=> b!1360635 m!1245893))

(assert (=> b!1360638 m!1245891))

(assert (=> b!1360638 m!1245891))

(declare-fun m!1245895 () Bool)

(assert (=> b!1360638 m!1245895))

(assert (=> b!1360639 m!1245891))

(assert (=> b!1360639 m!1245891))

(assert (=> b!1360639 m!1245893))

(assert (=> bm!65328 m!1245891))

(declare-fun m!1245897 () Bool)

(assert (=> bm!65328 m!1245897))

(assert (=> b!1360506 d!145601))

(declare-fun d!145605 () Bool)

(declare-fun res!904999 () Bool)

(declare-fun e!771930 () Bool)

(assert (=> d!145605 (=> res!904999 e!771930)))

(assert (=> d!145605 (= res!904999 ((_ is Nil!31920) acc!759))))

(assert (=> d!145605 (= (noDuplicate!2367 acc!759) e!771930)))

(declare-fun b!1360640 () Bool)

(declare-fun e!771931 () Bool)

(assert (=> b!1360640 (= e!771930 e!771931)))

(declare-fun res!905000 () Bool)

(assert (=> b!1360640 (=> (not res!905000) (not e!771931))))

(assert (=> b!1360640 (= res!905000 (not (contains!9488 (t!46606 acc!759) (h!33128 acc!759))))))

(declare-fun b!1360641 () Bool)

(assert (=> b!1360641 (= e!771931 (noDuplicate!2367 (t!46606 acc!759)))))

(assert (= (and d!145605 (not res!904999)) b!1360640))

(assert (= (and b!1360640 res!905000) b!1360641))

(declare-fun m!1245899 () Bool)

(assert (=> b!1360640 m!1245899))

(declare-fun m!1245901 () Bool)

(assert (=> b!1360641 m!1245901))

(assert (=> b!1360501 d!145605))

(declare-fun d!145607 () Bool)

(declare-fun lt!599906 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!698 (List!31923) (InoxSet (_ BitVec 64)))

(assert (=> d!145607 (= lt!599906 (select (content!698 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!771944 () Bool)

(assert (=> d!145607 (= lt!599906 e!771944)))

(declare-fun res!905013 () Bool)

(assert (=> d!145607 (=> (not res!905013) (not e!771944))))

(assert (=> d!145607 (= res!905013 ((_ is Cons!31919) acc!759))))

(assert (=> d!145607 (= (contains!9488 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599906)))

(declare-fun b!1360655 () Bool)

(declare-fun e!771945 () Bool)

(assert (=> b!1360655 (= e!771944 e!771945)))

(declare-fun res!905012 () Bool)

(assert (=> b!1360655 (=> res!905012 e!771945)))

(assert (=> b!1360655 (= res!905012 (= (h!33128 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360656 () Bool)

(assert (=> b!1360656 (= e!771945 (contains!9488 (t!46606 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145607 res!905013) b!1360655))

(assert (= (and b!1360655 (not res!905012)) b!1360656))

(declare-fun m!1245915 () Bool)

(assert (=> d!145607 m!1245915))

(declare-fun m!1245917 () Bool)

(assert (=> d!145607 m!1245917))

(declare-fun m!1245919 () Bool)

(assert (=> b!1360656 m!1245919))

(assert (=> b!1360500 d!145607))

(declare-fun d!145619 () Bool)

(assert (=> d!145619 (= (validKeyInArray!0 (select (arr!44702 a!3742) from!3120)) (and (not (= (select (arr!44702 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44702 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360511 d!145619))

(declare-fun d!145621 () Bool)

(declare-fun lt!599907 () Bool)

(assert (=> d!145621 (= lt!599907 (select (content!698 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!771953 () Bool)

(assert (=> d!145621 (= lt!599907 e!771953)))

(declare-fun res!905021 () Bool)

(assert (=> d!145621 (=> (not res!905021) (not e!771953))))

(assert (=> d!145621 (= res!905021 ((_ is Cons!31919) acc!759))))

(assert (=> d!145621 (= (contains!9488 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599907)))

(declare-fun b!1360663 () Bool)

(declare-fun e!771955 () Bool)

(assert (=> b!1360663 (= e!771953 e!771955)))

(declare-fun res!905020 () Bool)

(assert (=> b!1360663 (=> res!905020 e!771955)))

(assert (=> b!1360663 (= res!905020 (= (h!33128 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360664 () Bool)

(assert (=> b!1360664 (= e!771955 (contains!9488 (t!46606 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145621 res!905021) b!1360663))

(assert (= (and b!1360663 (not res!905020)) b!1360664))

(assert (=> d!145621 m!1245915))

(declare-fun m!1245925 () Bool)

(assert (=> d!145621 m!1245925))

(declare-fun m!1245927 () Bool)

(assert (=> b!1360664 m!1245927))

(assert (=> b!1360505 d!145621))

(check-sat (not bm!65328) (not b!1360638) (not d!145587) (not b!1360640) (not b!1360609) (not b!1360578) (not d!145571) (not bm!65327) (not b!1360559) (not b!1360656) (not b!1360617) (not b!1360635) (not b!1360608) (not bm!65323) (not d!145607) (not b!1360618) (not b!1360577) (not b!1360639) (not b!1360558) (not d!145621) (not b!1360614) (not b!1360574) (not b!1360641) (not b!1360664))
(check-sat)
