; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114722 () Bool)

(assert start!114722)

(declare-fun b!1360464 () Bool)

(declare-datatypes ((Unit!44786 0))(
  ( (Unit!44787) )
))
(declare-fun e!771822 () Unit!44786)

(declare-fun lt!599859 () Unit!44786)

(assert (=> b!1360464 (= e!771822 lt!599859)))

(declare-fun lt!599858 () Unit!44786)

(declare-datatypes ((List!31922 0))(
  ( (Nil!31919) (Cons!31918 (h!33127 (_ BitVec 64)) (t!46605 List!31922)) )
))
(declare-fun acc!759 () List!31922)

(declare-fun lemmaListSubSeqRefl!0 (List!31922) Unit!44786)

(assert (=> b!1360464 (= lt!599858 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!878 (List!31922 List!31922) Bool)

(assert (=> b!1360464 (subseq!878 acc!759 acc!759)))

(declare-datatypes ((array!92533 0))(
  ( (array!92534 (arr!44701 (Array (_ BitVec 32) (_ BitVec 64))) (size!45252 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92533)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92533 List!31922 List!31922 (_ BitVec 32)) Unit!44786)

(declare-fun $colon$colon!883 (List!31922 (_ BitVec 64)) List!31922)

(assert (=> b!1360464 (= lt!599859 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!883 acc!759 (select (arr!44701 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92533 (_ BitVec 32) List!31922) Bool)

(assert (=> b!1360464 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360465 () Bool)

(declare-fun res!904861 () Bool)

(declare-fun e!771820 () Bool)

(assert (=> b!1360465 (=> (not res!904861) (not e!771820))))

(declare-fun noDuplicate!2366 (List!31922) Bool)

(assert (=> b!1360465 (= res!904861 (noDuplicate!2366 acc!759))))

(declare-fun res!904858 () Bool)

(assert (=> start!114722 (=> (not res!904858) (not e!771820))))

(assert (=> start!114722 (= res!904858 (and (bvslt (size!45252 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45252 a!3742))))))

(assert (=> start!114722 e!771820))

(assert (=> start!114722 true))

(declare-fun array_inv!33646 (array!92533) Bool)

(assert (=> start!114722 (array_inv!33646 a!3742)))

(declare-fun b!1360466 () Bool)

(declare-fun Unit!44788 () Unit!44786)

(assert (=> b!1360466 (= e!771822 Unit!44788)))

(declare-fun b!1360467 () Bool)

(declare-fun res!904866 () Bool)

(assert (=> b!1360467 (=> (not res!904866) (not e!771820))))

(assert (=> b!1360467 (= res!904866 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31919))))

(declare-fun b!1360468 () Bool)

(declare-fun e!771821 () Bool)

(assert (=> b!1360468 (= e!771820 e!771821)))

(declare-fun res!904859 () Bool)

(assert (=> b!1360468 (=> (not res!904859) (not e!771821))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-fun lt!599860 () Bool)

(assert (=> b!1360468 (= res!904859 (and (not (= from!3120 i!1404)) lt!599860 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599861 () Unit!44786)

(assert (=> b!1360468 (= lt!599861 e!771822)))

(declare-fun c!127246 () Bool)

(assert (=> b!1360468 (= c!127246 lt!599860)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360468 (= lt!599860 (validKeyInArray!0 (select (arr!44701 a!3742) from!3120)))))

(declare-fun b!1360469 () Bool)

(declare-fun res!904860 () Bool)

(assert (=> b!1360469 (=> (not res!904860) (not e!771820))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1360469 (= res!904860 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360470 () Bool)

(declare-fun res!904862 () Bool)

(assert (=> b!1360470 (=> (not res!904862) (not e!771820))))

(assert (=> b!1360470 (= res!904862 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45252 a!3742))))))

(declare-fun b!1360471 () Bool)

(declare-fun res!904863 () Bool)

(assert (=> b!1360471 (=> (not res!904863) (not e!771820))))

(assert (=> b!1360471 (= res!904863 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1360472 () Bool)

(assert (=> b!1360472 (= e!771821 (not (noDuplicate!2366 ($colon$colon!883 acc!759 (select (arr!44701 a!3742) from!3120)))))))

(declare-fun b!1360473 () Bool)

(declare-fun res!904865 () Bool)

(assert (=> b!1360473 (=> (not res!904865) (not e!771820))))

(declare-fun contains!9487 (List!31922 (_ BitVec 64)) Bool)

(assert (=> b!1360473 (= res!904865 (not (contains!9487 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360474 () Bool)

(declare-fun res!904864 () Bool)

(assert (=> b!1360474 (=> (not res!904864) (not e!771820))))

(assert (=> b!1360474 (= res!904864 (not (contains!9487 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360475 () Bool)

(declare-fun res!904857 () Bool)

(assert (=> b!1360475 (=> (not res!904857) (not e!771820))))

(assert (=> b!1360475 (= res!904857 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45252 a!3742)))))

(assert (= (and start!114722 res!904858) b!1360465))

(assert (= (and b!1360465 res!904861) b!1360474))

(assert (= (and b!1360474 res!904864) b!1360473))

(assert (= (and b!1360473 res!904865) b!1360467))

(assert (= (and b!1360467 res!904866) b!1360471))

(assert (= (and b!1360471 res!904863) b!1360470))

(assert (= (and b!1360470 res!904862) b!1360469))

(assert (= (and b!1360469 res!904860) b!1360475))

(assert (= (and b!1360475 res!904857) b!1360468))

(assert (= (and b!1360468 c!127246) b!1360464))

(assert (= (and b!1360468 (not c!127246)) b!1360466))

(assert (= (and b!1360468 res!904859) b!1360472))

(declare-fun m!1245757 () Bool)

(assert (=> b!1360472 m!1245757))

(assert (=> b!1360472 m!1245757))

(declare-fun m!1245759 () Bool)

(assert (=> b!1360472 m!1245759))

(assert (=> b!1360472 m!1245759))

(declare-fun m!1245761 () Bool)

(assert (=> b!1360472 m!1245761))

(declare-fun m!1245763 () Bool)

(assert (=> start!114722 m!1245763))

(declare-fun m!1245765 () Bool)

(assert (=> b!1360474 m!1245765))

(assert (=> b!1360468 m!1245757))

(assert (=> b!1360468 m!1245757))

(declare-fun m!1245767 () Bool)

(assert (=> b!1360468 m!1245767))

(declare-fun m!1245769 () Bool)

(assert (=> b!1360464 m!1245769))

(assert (=> b!1360464 m!1245757))

(assert (=> b!1360464 m!1245759))

(declare-fun m!1245771 () Bool)

(assert (=> b!1360464 m!1245771))

(declare-fun m!1245773 () Bool)

(assert (=> b!1360464 m!1245773))

(assert (=> b!1360464 m!1245757))

(assert (=> b!1360464 m!1245759))

(declare-fun m!1245775 () Bool)

(assert (=> b!1360464 m!1245775))

(declare-fun m!1245777 () Bool)

(assert (=> b!1360465 m!1245777))

(declare-fun m!1245779 () Bool)

(assert (=> b!1360469 m!1245779))

(declare-fun m!1245781 () Bool)

(assert (=> b!1360471 m!1245781))

(declare-fun m!1245783 () Bool)

(assert (=> b!1360473 m!1245783))

(declare-fun m!1245785 () Bool)

(assert (=> b!1360467 m!1245785))

(push 1)

(assert (not b!1360473))

(assert (not b!1360474))

(assert (not start!114722))

(assert (not b!1360464))

(assert (not b!1360465))

(assert (not b!1360467))

(assert (not b!1360472))

(assert (not b!1360471))

(assert (not b!1360469))

(assert (not b!1360468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145577 () Bool)

(declare-fun res!904964 () Bool)

(declare-fun e!771892 () Bool)

(assert (=> d!145577 (=> res!904964 e!771892)))

(assert (=> d!145577 (= res!904964 (bvsge from!3120 (size!45252 a!3742)))))

(assert (=> d!145577 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!771892)))

(declare-fun b!1360593 () Bool)

(declare-fun e!771894 () Bool)

(declare-fun call!65329 () Bool)

(assert (=> b!1360593 (= e!771894 call!65329)))

(declare-fun b!1360595 () Bool)

(assert (=> b!1360595 (= e!771894 call!65329)))

(declare-fun b!1360597 () Bool)

(declare-fun e!771893 () Bool)

(assert (=> b!1360597 (= e!771892 e!771893)))

(declare-fun res!904967 () Bool)

(assert (=> b!1360597 (=> (not res!904967) (not e!771893))))

(declare-fun e!771895 () Bool)

(assert (=> b!1360597 (= res!904967 (not e!771895))))

(declare-fun res!904968 () Bool)

(assert (=> b!1360597 (=> (not res!904968) (not e!771895))))

(assert (=> b!1360597 (= res!904968 (validKeyInArray!0 (select (arr!44701 a!3742) from!3120)))))

(declare-fun b!1360598 () Bool)

(assert (=> b!1360598 (= e!771893 e!771894)))

(declare-fun c!127258 () Bool)

(assert (=> b!1360598 (= c!127258 (validKeyInArray!0 (select (arr!44701 a!3742) from!3120)))))

(declare-fun b!1360599 () Bool)

(assert (=> b!1360599 (= e!771895 (contains!9487 acc!759 (select (arr!44701 a!3742) from!3120)))))

(declare-fun bm!65326 () Bool)

(assert (=> bm!65326 (= call!65329 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127258 (Cons!31918 (select (arr!44701 a!3742) from!3120) acc!759) acc!759)))))

(assert (= (and d!145577 (not res!904964)) b!1360597))

(assert (= (and b!1360597 res!904968) b!1360599))

(assert (= (and b!1360597 res!904967) b!1360598))

(assert (= (and b!1360598 c!127258) b!1360595))

(assert (= (and b!1360598 (not c!127258)) b!1360593))

(assert (= (or b!1360595 b!1360593) bm!65326))

(assert (=> b!1360597 m!1245757))

(assert (=> b!1360597 m!1245757))

(assert (=> b!1360597 m!1245767))

(assert (=> b!1360598 m!1245757))

(assert (=> b!1360598 m!1245757))

(assert (=> b!1360598 m!1245767))

(assert (=> b!1360599 m!1245757))

(assert (=> b!1360599 m!1245757))

(declare-fun m!1245871 () Bool)

(assert (=> b!1360599 m!1245871))

(assert (=> bm!65326 m!1245757))

(declare-fun m!1245873 () Bool)

(assert (=> bm!65326 m!1245873))

(assert (=> b!1360471 d!145577))

(declare-fun d!145593 () Bool)

(declare-fun res!904988 () Bool)

(declare-fun e!771916 () Bool)

(assert (=> d!145593 (=> res!904988 e!771916)))

(assert (=> d!145593 (= res!904988 (is-Nil!31919 acc!759))))

(assert (=> d!145593 (= (noDuplicate!2366 acc!759) e!771916)))

(declare-fun b!1360623 () Bool)

(declare-fun e!771917 () Bool)

(assert (=> b!1360623 (= e!771916 e!771917)))

(declare-fun res!904989 () Bool)

(assert (=> b!1360623 (=> (not res!904989) (not e!771917))))

(assert (=> b!1360623 (= res!904989 (not (contains!9487 (t!46605 acc!759) (h!33127 acc!759))))))

(declare-fun b!1360624 () Bool)

(assert (=> b!1360624 (= e!771917 (noDuplicate!2366 (t!46605 acc!759)))))

(assert (= (and d!145593 (not res!904988)) b!1360623))

(assert (= (and b!1360623 res!904989) b!1360624))

(declare-fun m!1245887 () Bool)

(assert (=> b!1360623 m!1245887))

(declare-fun m!1245889 () Bool)

(assert (=> b!1360624 m!1245889))

(assert (=> b!1360465 d!145593))

(declare-fun d!145603 () Bool)

(assert (=> d!145603 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599900 () Unit!44786)

(declare-fun choose!80 (array!92533 List!31922 List!31922 (_ BitVec 32)) Unit!44786)

(assert (=> d!145603 (= lt!599900 (choose!80 a!3742 ($colon$colon!883 acc!759 (select (arr!44701 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145603 (bvslt (size!45252 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145603 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!883 acc!759 (select (arr!44701 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!599900)))

(declare-fun bs!39014 () Bool)

(assert (= bs!39014 d!145603))

(assert (=> bs!39014 m!1245773))

(assert (=> bs!39014 m!1245759))

(declare-fun m!1245911 () Bool)

(assert (=> bs!39014 m!1245911))

(assert (=> b!1360464 d!145603))

(declare-fun b!1360681 () Bool)

(declare-fun e!771967 () Bool)

(assert (=> b!1360681 (= e!771967 (subseq!878 acc!759 (t!46605 acc!759)))))

(declare-fun b!1360680 () Bool)

(declare-fun e!771969 () Bool)

(assert (=> b!1360680 (= e!771969 (subseq!878 (t!46605 acc!759) (t!46605 acc!759)))))

(declare-fun b!1360678 () Bool)

(declare-fun e!771966 () Bool)

(declare-fun e!771968 () Bool)

(assert (=> b!1360678 (= e!771966 e!771968)))

(declare-fun res!905034 () Bool)

(assert (=> b!1360678 (=> (not res!905034) (not e!771968))))

(assert (=> b!1360678 (= res!905034 (is-Cons!31918 acc!759))))

(declare-fun b!1360679 () Bool)

(assert (=> b!1360679 (= e!771968 e!771967)))

(declare-fun res!905033 () Bool)

(assert (=> b!1360679 (=> res!905033 e!771967)))

(assert (=> b!1360679 (= res!905033 e!771969)))

(declare-fun res!905036 () Bool)

(assert (=> b!1360679 (=> (not res!905036) (not e!771969))))

(assert (=> b!1360679 (= res!905036 (= (h!33127 acc!759) (h!33127 acc!759)))))

(declare-fun d!145613 () Bool)

(declare-fun res!905035 () Bool)

(assert (=> d!145613 (=> res!905035 e!771966)))

(assert (=> d!145613 (= res!905035 (is-Nil!31919 acc!759))))

(assert (=> d!145613 (= (subseq!878 acc!759 acc!759) e!771966)))

(assert (= (and d!145613 (not res!905035)) b!1360678))

(assert (= (and b!1360678 res!905034) b!1360679))

(assert (= (and b!1360679 res!905036) b!1360680))

(assert (= (and b!1360679 (not res!905033)) b!1360681))

(declare-fun m!1245945 () Bool)

(assert (=> b!1360681 m!1245945))

(declare-fun m!1245947 () Bool)

(assert (=> b!1360680 m!1245947))

(assert (=> b!1360464 d!145613))

(declare-fun d!145633 () Bool)

(declare-fun res!905040 () Bool)

(declare-fun e!771974 () Bool)

(assert (=> d!145633 (=> res!905040 e!771974)))

(assert (=> d!145633 (= res!905040 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45252 a!3742)))))

(assert (=> d!145633 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!771974)))

(declare-fun b!1360687 () Bool)

(declare-fun e!771976 () Bool)

(declare-fun call!65337 () Bool)

(assert (=> b!1360687 (= e!771976 call!65337)))

(declare-fun b!1360688 () Bool)

(assert (=> b!1360688 (= e!771976 call!65337)))

(declare-fun b!1360689 () Bool)

(declare-fun e!771975 () Bool)

(assert (=> b!1360689 (= e!771974 e!771975)))

(declare-fun res!905041 () Bool)

(assert (=> b!1360689 (=> (not res!905041) (not e!771975))))

(declare-fun e!771977 () Bool)

(assert (=> b!1360689 (= res!905041 (not e!771977))))

(declare-fun res!905042 () Bool)

(assert (=> b!1360689 (=> (not res!905042) (not e!771977))))

(assert (=> b!1360689 (= res!905042 (validKeyInArray!0 (select (arr!44701 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1360690 () Bool)

(assert (=> b!1360690 (= e!771975 e!771976)))

(declare-fun c!127266 () Bool)

(assert (=> b!1360690 (= c!127266 (validKeyInArray!0 (select (arr!44701 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1360691 () Bool)

(assert (=> b!1360691 (= e!771977 (contains!9487 acc!759 (select (arr!44701 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65334 () Bool)

(assert (=> bm!65334 (= call!65337 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127266 (Cons!31918 (select (arr!44701 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(assert (= (and d!145633 (not res!905040)) b!1360689))

(assert (= (and b!1360689 res!905042) b!1360691))

(assert (= (and b!1360689 res!905041) b!1360690))

(assert (= (and b!1360690 c!127266) b!1360688))

(assert (= (and b!1360690 (not c!127266)) b!1360687))

(assert (= (or b!1360688 b!1360687) bm!65334))

(declare-fun m!1245953 () Bool)

(assert (=> b!1360689 m!1245953))

(assert (=> b!1360689 m!1245953))

(declare-fun m!1245955 () Bool)

(assert (=> b!1360689 m!1245955))

(assert (=> b!1360690 m!1245953))

(assert (=> b!1360690 m!1245953))

(assert (=> b!1360690 m!1245955))

(assert (=> b!1360691 m!1245953))

(assert (=> b!1360691 m!1245953))

(declare-fun m!1245957 () Bool)

(assert (=> b!1360691 m!1245957))

(assert (=> bm!65334 m!1245953))

(declare-fun m!1245959 () Bool)

(assert (=> bm!65334 m!1245959))

(assert (=> b!1360464 d!145633))

(declare-fun d!145635 () Bool)

(assert (=> d!145635 (= ($colon$colon!883 acc!759 (select (arr!44701 a!3742) from!3120)) (Cons!31918 (select (arr!44701 a!3742) from!3120) acc!759))))

(assert (=> b!1360464 d!145635))

(declare-fun d!145637 () Bool)

(assert (=> d!145637 (subseq!878 acc!759 acc!759)))

(declare-fun lt!599911 () Unit!44786)

(declare-fun choose!36 (List!31922) Unit!44786)

(assert (=> d!145637 (= lt!599911 (choose!36 acc!759))))

(assert (=> d!145637 (= (lemmaListSubSeqRefl!0 acc!759) lt!599911)))

(declare-fun bs!39016 () Bool)

(assert (= bs!39016 d!145637))

(assert (=> bs!39016 m!1245775))

(declare-fun m!1245961 () Bool)

(assert (=> bs!39016 m!1245961))

(assert (=> b!1360464 d!145637))

(declare-fun d!145639 () Bool)

(declare-fun lt!599914 () Bool)

(declare-fun content!699 (List!31922) (Set (_ BitVec 64)))

(assert (=> d!145639 (= lt!599914 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!699 acc!759)))))

(declare-fun e!771982 () Bool)

(assert (=> d!145639 (= lt!599914 e!771982)))

(declare-fun res!905047 () Bool)

(assert (=> d!145639 (=> (not res!905047) (not e!771982))))

(assert (=> d!145639 (= res!905047 (is-Cons!31918 acc!759))))

(assert (=> d!145639 (= (contains!9487 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599914)))

(declare-fun b!1360696 () Bool)

(declare-fun e!771983 () Bool)

(assert (=> b!1360696 (= e!771982 e!771983)))

(declare-fun res!905048 () Bool)

(assert (=> b!1360696 (=> res!905048 e!771983)))

(assert (=> b!1360696 (= res!905048 (= (h!33127 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360697 () Bool)

(assert (=> b!1360697 (= e!771983 (contains!9487 (t!46605 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145639 res!905047) b!1360696))

(assert (= (and b!1360696 (not res!905048)) b!1360697))

(declare-fun m!1245963 () Bool)

(assert (=> d!145639 m!1245963))

(declare-fun m!1245965 () Bool)

(assert (=> d!145639 m!1245965))

(declare-fun m!1245967 () Bool)

(assert (=> b!1360697 m!1245967))

(assert (=> b!1360474 d!145639))

(declare-fun d!145641 () Bool)

(assert (=> d!145641 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360469 d!145641))

(declare-fun d!145643 () Bool)

(assert (=> d!145643 (= (validKeyInArray!0 (select (arr!44701 a!3742) from!3120)) (and (not (= (select (arr!44701 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44701 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360468 d!145643))

(declare-fun d!145645 () Bool)

(assert (=> d!145645 (= (array_inv!33646 a!3742) (bvsge (size!45252 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114722 d!145645))

(declare-fun d!145647 () Bool)

(declare-fun lt!599915 () Bool)

(assert (=> d!145647 (= lt!599915 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!699 acc!759)))))

(declare-fun e!771984 () Bool)

(assert (=> d!145647 (= lt!599915 e!771984)))

(declare-fun res!905049 () Bool)

(assert (=> d!145647 (=> (not res!905049) (not e!771984))))

(assert (=> d!145647 (= res!905049 (is-Cons!31918 acc!759))))

(assert (=> d!145647 (= (contains!9487 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599915)))

(declare-fun b!1360698 () Bool)

