; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114726 () Bool)

(assert start!114726)

(declare-fun b!1360536 () Bool)

(declare-fun res!904926 () Bool)

(declare-fun e!771847 () Bool)

(assert (=> b!1360536 (=> (not res!904926) (not e!771847))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92537 0))(
  ( (array!92538 (arr!44703 (Array (_ BitVec 32) (_ BitVec 64))) (size!45254 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92537)

(assert (=> b!1360536 (= res!904926 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45254 a!3742)))))

(declare-fun b!1360537 () Bool)

(declare-fun e!771844 () Bool)

(assert (=> b!1360537 (= e!771847 e!771844)))

(declare-fun res!904924 () Bool)

(assert (=> b!1360537 (=> (not res!904924) (not e!771844))))

(declare-fun lt!599882 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360537 (= res!904924 (and (not (= from!3120 i!1404)) lt!599882 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44792 0))(
  ( (Unit!44793) )
))
(declare-fun lt!599885 () Unit!44792)

(declare-fun e!771846 () Unit!44792)

(assert (=> b!1360537 (= lt!599885 e!771846)))

(declare-fun c!127252 () Bool)

(assert (=> b!1360537 (= c!127252 lt!599882)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360537 (= lt!599882 (validKeyInArray!0 (select (arr!44703 a!3742) from!3120)))))

(declare-fun b!1360538 () Bool)

(declare-fun res!904922 () Bool)

(assert (=> b!1360538 (=> (not res!904922) (not e!771847))))

(declare-datatypes ((List!31924 0))(
  ( (Nil!31921) (Cons!31920 (h!33129 (_ BitVec 64)) (t!46607 List!31924)) )
))
(declare-fun acc!759 () List!31924)

(declare-fun arrayNoDuplicates!0 (array!92537 (_ BitVec 32) List!31924) Bool)

(assert (=> b!1360538 (= res!904922 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360539 () Bool)

(declare-fun Unit!44794 () Unit!44792)

(assert (=> b!1360539 (= e!771846 Unit!44794)))

(declare-fun b!1360540 () Bool)

(declare-fun noDuplicate!2368 (List!31924) Bool)

(declare-fun $colon$colon!885 (List!31924 (_ BitVec 64)) List!31924)

(assert (=> b!1360540 (= e!771844 (not (noDuplicate!2368 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120)))))))

(declare-fun res!904917 () Bool)

(assert (=> start!114726 (=> (not res!904917) (not e!771847))))

(assert (=> start!114726 (= res!904917 (and (bvslt (size!45254 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45254 a!3742))))))

(assert (=> start!114726 e!771847))

(assert (=> start!114726 true))

(declare-fun array_inv!33648 (array!92537) Bool)

(assert (=> start!114726 (array_inv!33648 a!3742)))

(declare-fun b!1360541 () Bool)

(declare-fun res!904918 () Bool)

(assert (=> b!1360541 (=> (not res!904918) (not e!771847))))

(assert (=> b!1360541 (= res!904918 (noDuplicate!2368 acc!759))))

(declare-fun b!1360542 () Bool)

(declare-fun res!904920 () Bool)

(assert (=> b!1360542 (=> (not res!904920) (not e!771847))))

(declare-fun contains!9489 (List!31924 (_ BitVec 64)) Bool)

(assert (=> b!1360542 (= res!904920 (not (contains!9489 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360543 () Bool)

(declare-fun res!904921 () Bool)

(assert (=> b!1360543 (=> (not res!904921) (not e!771847))))

(assert (=> b!1360543 (= res!904921 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45254 a!3742))))))

(declare-fun b!1360544 () Bool)

(declare-fun res!904923 () Bool)

(assert (=> b!1360544 (=> (not res!904923) (not e!771847))))

(assert (=> b!1360544 (= res!904923 (not (contains!9489 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360545 () Bool)

(declare-fun res!904919 () Bool)

(assert (=> b!1360545 (=> (not res!904919) (not e!771847))))

(assert (=> b!1360545 (= res!904919 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31921))))

(declare-fun b!1360546 () Bool)

(declare-fun res!904925 () Bool)

(assert (=> b!1360546 (=> (not res!904925) (not e!771847))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1360546 (= res!904925 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360547 () Bool)

(declare-fun lt!599883 () Unit!44792)

(assert (=> b!1360547 (= e!771846 lt!599883)))

(declare-fun lt!599884 () Unit!44792)

(declare-fun lemmaListSubSeqRefl!0 (List!31924) Unit!44792)

(assert (=> b!1360547 (= lt!599884 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!880 (List!31924 List!31924) Bool)

(assert (=> b!1360547 (subseq!880 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92537 List!31924 List!31924 (_ BitVec 32)) Unit!44792)

(assert (=> b!1360547 (= lt!599883 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360547 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114726 res!904917) b!1360541))

(assert (= (and b!1360541 res!904918) b!1360544))

(assert (= (and b!1360544 res!904923) b!1360542))

(assert (= (and b!1360542 res!904920) b!1360545))

(assert (= (and b!1360545 res!904919) b!1360538))

(assert (= (and b!1360538 res!904922) b!1360543))

(assert (= (and b!1360543 res!904921) b!1360546))

(assert (= (and b!1360546 res!904925) b!1360536))

(assert (= (and b!1360536 res!904926) b!1360537))

(assert (= (and b!1360537 c!127252) b!1360547))

(assert (= (and b!1360537 (not c!127252)) b!1360539))

(assert (= (and b!1360537 res!904924) b!1360540))

(declare-fun m!1245817 () Bool)

(assert (=> b!1360546 m!1245817))

(declare-fun m!1245819 () Bool)

(assert (=> b!1360541 m!1245819))

(declare-fun m!1245821 () Bool)

(assert (=> b!1360544 m!1245821))

(declare-fun m!1245823 () Bool)

(assert (=> b!1360547 m!1245823))

(declare-fun m!1245825 () Bool)

(assert (=> b!1360547 m!1245825))

(declare-fun m!1245827 () Bool)

(assert (=> b!1360547 m!1245827))

(declare-fun m!1245829 () Bool)

(assert (=> b!1360547 m!1245829))

(declare-fun m!1245831 () Bool)

(assert (=> b!1360547 m!1245831))

(assert (=> b!1360547 m!1245825))

(assert (=> b!1360547 m!1245827))

(declare-fun m!1245833 () Bool)

(assert (=> b!1360547 m!1245833))

(assert (=> b!1360540 m!1245825))

(assert (=> b!1360540 m!1245825))

(assert (=> b!1360540 m!1245827))

(assert (=> b!1360540 m!1245827))

(declare-fun m!1245835 () Bool)

(assert (=> b!1360540 m!1245835))

(assert (=> b!1360537 m!1245825))

(assert (=> b!1360537 m!1245825))

(declare-fun m!1245837 () Bool)

(assert (=> b!1360537 m!1245837))

(declare-fun m!1245839 () Bool)

(assert (=> b!1360542 m!1245839))

(declare-fun m!1245841 () Bool)

(assert (=> b!1360545 m!1245841))

(declare-fun m!1245843 () Bool)

(assert (=> start!114726 m!1245843))

(declare-fun m!1245845 () Bool)

(assert (=> b!1360538 m!1245845))

(push 1)

(assert (not b!1360547))

(assert (not b!1360546))

(assert (not b!1360537))

(assert (not b!1360540))

(assert (not b!1360544))

(assert (not b!1360542))

(assert (not b!1360545))

(assert (not start!114726))

(assert (not b!1360538))

(assert (not b!1360541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145579 () Bool)

(declare-fun lt!599891 () Bool)

(declare-fun content!697 (List!31924) (Set (_ BitVec 64)))

(assert (=> d!145579 (= lt!599891 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!697 acc!759)))))

(declare-fun e!771876 () Bool)

(assert (=> d!145579 (= lt!599891 e!771876)))

(declare-fun res!904953 () Bool)

(assert (=> d!145579 (=> (not res!904953) (not e!771876))))

(assert (=> d!145579 (= res!904953 (is-Cons!31920 acc!759))))

(assert (=> d!145579 (= (contains!9489 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599891)))

(declare-fun b!1360579 () Bool)

(declare-fun e!771877 () Bool)

(assert (=> b!1360579 (= e!771876 e!771877)))

(declare-fun res!904952 () Bool)

(assert (=> b!1360579 (=> res!904952 e!771877)))

(assert (=> b!1360579 (= res!904952 (= (h!33129 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360580 () Bool)

(assert (=> b!1360580 (= e!771877 (contains!9489 (t!46607 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145579 res!904953) b!1360579))

(assert (= (and b!1360579 (not res!904952)) b!1360580))

(declare-fun m!1245853 () Bool)

(assert (=> d!145579 m!1245853))

(declare-fun m!1245855 () Bool)

(assert (=> d!145579 m!1245855))

(declare-fun m!1245857 () Bool)

(assert (=> b!1360580 m!1245857))

(assert (=> b!1360542 d!145579))

(declare-fun d!145581 () Bool)

(assert (=> d!145581 (= (validKeyInArray!0 (select (arr!44703 a!3742) from!3120)) (and (not (= (select (arr!44703 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44703 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360537 d!145581))

(declare-fun d!145583 () Bool)

(assert (=> d!145583 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599896 () Unit!44792)

(declare-fun choose!80 (array!92537 List!31924 List!31924 (_ BitVec 32)) Unit!44792)

(assert (=> d!145583 (= lt!599896 (choose!80 a!3742 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145583 (bvslt (size!45254 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145583 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!599896)))

(declare-fun bs!39012 () Bool)

(assert (= bs!39012 d!145583))

(assert (=> bs!39012 m!1245831))

(assert (=> bs!39012 m!1245827))

(declare-fun m!1245867 () Bool)

(assert (=> bs!39012 m!1245867))

(assert (=> b!1360547 d!145583))

(declare-fun d!145589 () Bool)

(declare-fun res!904978 () Bool)

(declare-fun e!771905 () Bool)

(assert (=> d!145589 (=> res!904978 e!771905)))

(assert (=> d!145589 (= res!904978 (is-Nil!31921 acc!759))))

(assert (=> d!145589 (= (subseq!880 acc!759 acc!759) e!771905)))

(declare-fun b!1360611 () Bool)

(declare-fun e!771906 () Bool)

(declare-fun e!771907 () Bool)

(assert (=> b!1360611 (= e!771906 e!771907)))

(declare-fun res!904979 () Bool)

(assert (=> b!1360611 (=> res!904979 e!771907)))

(declare-fun e!771904 () Bool)

(assert (=> b!1360611 (= res!904979 e!771904)))

(declare-fun res!904980 () Bool)

(assert (=> b!1360611 (=> (not res!904980) (not e!771904))))

(assert (=> b!1360611 (= res!904980 (= (h!33129 acc!759) (h!33129 acc!759)))))

(declare-fun b!1360613 () Bool)

(assert (=> b!1360613 (= e!771907 (subseq!880 acc!759 (t!46607 acc!759)))))

(declare-fun b!1360612 () Bool)

(assert (=> b!1360612 (= e!771904 (subseq!880 (t!46607 acc!759) (t!46607 acc!759)))))

(declare-fun b!1360610 () Bool)

(assert (=> b!1360610 (= e!771905 e!771906)))

(declare-fun res!904977 () Bool)

(assert (=> b!1360610 (=> (not res!904977) (not e!771906))))

(assert (=> b!1360610 (= res!904977 (is-Cons!31920 acc!759))))

(assert (= (and d!145589 (not res!904978)) b!1360610))

(assert (= (and b!1360610 res!904977) b!1360611))

(assert (= (and b!1360611 res!904980) b!1360612))

(assert (= (and b!1360611 (not res!904979)) b!1360613))

(declare-fun m!1245875 () Bool)

(assert (=> b!1360613 m!1245875))

(declare-fun m!1245877 () Bool)

(assert (=> b!1360612 m!1245877))

(assert (=> b!1360547 d!145589))

(declare-fun b!1360642 () Bool)

(declare-fun e!771933 () Bool)

(declare-fun e!771932 () Bool)

(assert (=> b!1360642 (= e!771933 e!771932)))

(declare-fun c!127263 () Bool)

(assert (=> b!1360642 (= c!127263 (validKeyInArray!0 (select (arr!44703 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun call!65334 () Bool)

(declare-fun bm!65331 () Bool)

(assert (=> bm!65331 (= call!65334 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127263 (Cons!31920 (select (arr!44703 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun b!1360643 () Bool)

(assert (=> b!1360643 (= e!771932 call!65334)))

(declare-fun b!1360644 () Bool)

(declare-fun e!771935 () Bool)

(assert (=> b!1360644 (= e!771935 e!771933)))

(declare-fun res!905002 () Bool)

(assert (=> b!1360644 (=> (not res!905002) (not e!771933))))

(declare-fun e!771934 () Bool)

(assert (=> b!1360644 (= res!905002 (not e!771934))))

(declare-fun res!905003 () Bool)

(assert (=> b!1360644 (=> (not res!905003) (not e!771934))))

(assert (=> b!1360644 (= res!905003 (validKeyInArray!0 (select (arr!44703 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun d!145595 () Bool)

(declare-fun res!905001 () Bool)

(assert (=> d!145595 (=> res!905001 e!771935)))

(assert (=> d!145595 (= res!905001 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45254 a!3742)))))

(assert (=> d!145595 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!771935)))

(declare-fun b!1360645 () Bool)

(assert (=> b!1360645 (= e!771934 (contains!9489 acc!759 (select (arr!44703 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1360646 () Bool)

(assert (=> b!1360646 (= e!771932 call!65334)))

(assert (= (and d!145595 (not res!905001)) b!1360644))

(assert (= (and b!1360644 res!905003) b!1360645))

(assert (= (and b!1360644 res!905002) b!1360642))

(assert (= (and b!1360642 c!127263) b!1360643))

(assert (= (and b!1360642 (not c!127263)) b!1360646))

(assert (= (or b!1360643 b!1360646) bm!65331))

(declare-fun m!1245903 () Bool)

(assert (=> b!1360642 m!1245903))

(assert (=> b!1360642 m!1245903))

(declare-fun m!1245905 () Bool)

(assert (=> b!1360642 m!1245905))

(assert (=> bm!65331 m!1245903))

(declare-fun m!1245907 () Bool)

(assert (=> bm!65331 m!1245907))

(assert (=> b!1360644 m!1245903))

(assert (=> b!1360644 m!1245903))

(assert (=> b!1360644 m!1245905))

(assert (=> b!1360645 m!1245903))

(assert (=> b!1360645 m!1245903))

(declare-fun m!1245909 () Bool)

(assert (=> b!1360645 m!1245909))

(assert (=> b!1360547 d!145595))

(declare-fun d!145609 () Bool)

(assert (=> d!145609 (= ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120)) (Cons!31920 (select (arr!44703 a!3742) from!3120) acc!759))))

(assert (=> b!1360547 d!145609))

(declare-fun d!145611 () Bool)

(assert (=> d!145611 (subseq!880 acc!759 acc!759)))

(declare-fun lt!599905 () Unit!44792)

(declare-fun choose!36 (List!31924) Unit!44792)

(assert (=> d!145611 (= lt!599905 (choose!36 acc!759))))

(assert (=> d!145611 (= (lemmaListSubSeqRefl!0 acc!759) lt!599905)))

(declare-fun bs!39015 () Bool)

(assert (= bs!39015 d!145611))

(assert (=> bs!39015 m!1245833))

(declare-fun m!1245913 () Bool)

(assert (=> bs!39015 m!1245913))

(assert (=> b!1360547 d!145611))

(declare-fun d!145615 () Bool)

(assert (=> d!145615 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360546 d!145615))

(declare-fun d!145617 () Bool)

(declare-fun res!905017 () Bool)

(declare-fun e!771950 () Bool)

(assert (=> d!145617 (=> res!905017 e!771950)))

(assert (=> d!145617 (= res!905017 (is-Nil!31921 acc!759))))

(assert (=> d!145617 (= (noDuplicate!2368 acc!759) e!771950)))

(declare-fun b!1360659 () Bool)

(declare-fun e!771951 () Bool)

(assert (=> b!1360659 (= e!771950 e!771951)))

(declare-fun res!905019 () Bool)

(assert (=> b!1360659 (=> (not res!905019) (not e!771951))))

(assert (=> b!1360659 (= res!905019 (not (contains!9489 (t!46607 acc!759) (h!33129 acc!759))))))

(declare-fun b!1360660 () Bool)

(assert (=> b!1360660 (= e!771951 (noDuplicate!2368 (t!46607 acc!759)))))

(assert (= (and d!145617 (not res!905017)) b!1360659))

(assert (= (and b!1360659 res!905019) b!1360660))

(declare-fun m!1245921 () Bool)

(assert (=> b!1360659 m!1245921))

(declare-fun m!1245923 () Bool)

(assert (=> b!1360660 m!1245923))

(assert (=> b!1360541 d!145617))

(declare-fun d!145623 () Bool)

(declare-fun res!905026 () Bool)

(declare-fun e!771958 () Bool)

(assert (=> d!145623 (=> res!905026 e!771958)))

(assert (=> d!145623 (= res!905026 (is-Nil!31921 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120))))))

(assert (=> d!145623 (= (noDuplicate!2368 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120))) e!771958)))

(declare-fun b!1360669 () Bool)

(declare-fun e!771959 () Bool)

(assert (=> b!1360669 (= e!771958 e!771959)))

(declare-fun res!905027 () Bool)

(assert (=> b!1360669 (=> (not res!905027) (not e!771959))))

(assert (=> b!1360669 (= res!905027 (not (contains!9489 (t!46607 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120))) (h!33129 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120))))))))

(declare-fun b!1360670 () Bool)

(assert (=> b!1360670 (= e!771959 (noDuplicate!2368 (t!46607 ($colon$colon!885 acc!759 (select (arr!44703 a!3742) from!3120)))))))

(assert (= (and d!145623 (not res!905026)) b!1360669))

(assert (= (and b!1360669 res!905027) b!1360670))

(declare-fun m!1245929 () Bool)

(assert (=> b!1360669 m!1245929))

(declare-fun m!1245931 () Bool)

(assert (=> b!1360670 m!1245931))

(assert (=> b!1360540 d!145623))

(assert (=> b!1360540 d!145609))

(declare-fun d!145625 () Bool)

(assert (=> d!145625 (= (array_inv!33648 a!3742) (bvsge (size!45254 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114726 d!145625))

(declare-fun b!1360671 () Bool)

(declare-fun e!771961 () Bool)

(declare-fun e!771960 () Bool)

(assert (=> b!1360671 (= e!771961 e!771960)))

(declare-fun c!127264 () Bool)

(assert (=> b!1360671 (= c!127264 (validKeyInArray!0 (select (arr!44703 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65332 () Bool)

(declare-fun call!65335 () Bool)

(assert (=> bm!65332 (= call!65335 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127264 (Cons!31920 (select (arr!44703 a!3742) #b00000000000000000000000000000000) Nil!31921) Nil!31921)))))

(declare-fun b!1360672 () Bool)

(assert (=> b!1360672 (= e!771960 call!65335)))

(declare-fun b!1360673 () Bool)

(declare-fun e!771963 () Bool)

(assert (=> b!1360673 (= e!771963 e!771961)))

(declare-fun res!905029 () Bool)

(assert (=> b!1360673 (=> (not res!905029) (not e!771961))))

(declare-fun e!771962 () Bool)

(assert (=> b!1360673 (= res!905029 (not e!771962))))

(declare-fun res!905030 () Bool)

(assert (=> b!1360673 (=> (not res!905030) (not e!771962))))

(assert (=> b!1360673 (= res!905030 (validKeyInArray!0 (select (arr!44703 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!145627 () Bool)

(declare-fun res!905028 () Bool)

(assert (=> d!145627 (=> res!905028 e!771963)))

(assert (=> d!145627 (= res!905028 (bvsge #b00000000000000000000000000000000 (size!45254 a!3742)))))

(assert (=> d!145627 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31921) e!771963)))

(declare-fun b!1360674 () Bool)

(assert (=> b!1360674 (= e!771962 (contains!9489 Nil!31921 (select (arr!44703 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1360675 () Bool)

(assert (=> b!1360675 (= e!771960 call!65335)))

(assert (= (and d!145627 (not res!905028)) b!1360673))

(assert (= (and b!1360673 res!905030) b!1360674))

(assert (= (and b!1360673 res!905029) b!1360671))

(assert (= (and b!1360671 c!127264) b!1360672))

(assert (= (and b!1360671 (not c!127264)) b!1360675))

(assert (= (or b!1360672 b!1360675) bm!65332))

(declare-fun m!1245933 () Bool)

(assert (=> b!1360671 m!1245933))

(assert (=> b!1360671 m!1245933))

(declare-fun m!1245935 () Bool)

(assert (=> b!1360671 m!1245935))

(assert (=> bm!65332 m!1245933))

(declare-fun m!1245937 () Bool)

(assert (=> bm!65332 m!1245937))

(assert (=> b!1360673 m!1245933))

(assert (=> b!1360673 m!1245933))

(assert (=> b!1360673 m!1245935))

(assert (=> b!1360674 m!1245933))

(assert (=> b!1360674 m!1245933))

(declare-fun m!1245939 () Bool)

(assert (=> b!1360674 m!1245939))

(assert (=> b!1360545 d!145627))

(declare-fun d!145629 () Bool)

(declare-fun lt!599908 () Bool)

(assert (=> d!145629 (= lt!599908 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!697 acc!759)))))

(declare-fun e!771964 () Bool)

(assert (=> d!145629 (= lt!599908 e!771964)))

(declare-fun res!905032 () Bool)

(assert (=> d!145629 (=> (not res!905032) (not e!771964))))

(assert (=> d!145629 (= res!905032 (is-Cons!31920 acc!759))))

(assert (=> d!145629 (= (contains!9489 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599908)))

(declare-fun b!1360676 () Bool)

(declare-fun e!771965 () Bool)

(assert (=> b!1360676 (= e!771964 e!771965)))

(declare-fun res!905031 () Bool)

(assert (=> b!1360676 (=> res!905031 e!771965)))

(assert (=> b!1360676 (= res!905031 (= (h!33129 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360677 () Bool)

(assert (=> b!1360677 (= e!771965 (contains!9489 (t!46607 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145629 res!905032) b!1360676))

(assert (= (and b!1360676 (not res!905031)) b!1360677))

(assert (=> d!145629 m!1245853))

(declare-fun m!1245941 () Bool)

(assert (=> d!145629 m!1245941))

(declare-fun m!1245943 () Bool)

(assert (=> b!1360677 m!1245943))

(assert (=> b!1360544 d!145629))

(declare-fun b!1360682 () Bool)

(declare-fun e!771971 () Bool)

(declare-fun e!771970 () Bool)

(assert (=> b!1360682 (= e!771971 e!771970)))

(declare-fun c!127265 () Bool)

(assert (=> b!1360682 (= c!127265 (validKeyInArray!0 (select (arr!44703 a!3742) from!3120)))))

(declare-fun call!65336 () Bool)

(declare-fun bm!65333 () Bool)

(assert (=> bm!65333 (= call!65336 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127265 (Cons!31920 (select (arr!44703 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1360683 () Bool)

(assert (=> b!1360683 (= e!771970 call!65336)))

(declare-fun b!1360684 () Bool)

(declare-fun e!771973 () Bool)

(assert (=> b!1360684 (= e!771973 e!771971)))

(declare-fun res!905038 () Bool)

(assert (=> b!1360684 (=> (not res!905038) (not e!771971))))

(declare-fun e!771972 () Bool)

(assert (=> b!1360684 (= res!905038 (not e!771972))))

(declare-fun res!905039 () Bool)

(assert (=> b!1360684 (=> (not res!905039) (not e!771972))))

(assert (=> b!1360684 (= res!905039 (validKeyInArray!0 (select (arr!44703 a!3742) from!3120)))))

(declare-fun d!145631 () Bool)

(declare-fun res!905037 () Bool)

(assert (=> d!145631 (=> res!905037 e!771973)))

(assert (=> d!145631 (= res!905037 (bvsge from!3120 (size!45254 a!3742)))))

(assert (=> d!145631 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!771973)))

(declare-fun b!1360685 () Bool)

(assert (=> b!1360685 (= e!771972 (contains!9489 acc!759 (select (arr!44703 a!3742) from!3120)))))

