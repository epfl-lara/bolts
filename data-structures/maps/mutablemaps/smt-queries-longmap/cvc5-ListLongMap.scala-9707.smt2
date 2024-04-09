; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114782 () Bool)

(assert start!114782)

(declare-fun b!1360737 () Bool)

(declare-fun e!772006 () Bool)

(declare-fun e!772009 () Bool)

(assert (=> b!1360737 (= e!772006 e!772009)))

(declare-fun res!905086 () Bool)

(assert (=> b!1360737 (=> res!905086 e!772009)))

(declare-datatypes ((List!31925 0))(
  ( (Nil!31922) (Cons!31921 (h!33130 (_ BitVec 64)) (t!46611 List!31925)) )
))
(declare-fun lt!599928 () List!31925)

(declare-fun contains!9490 (List!31925 (_ BitVec 64)) Bool)

(assert (=> b!1360737 (= res!905086 (contains!9490 lt!599928 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360738 () Bool)

(assert (=> b!1360738 (= e!772009 (contains!9490 lt!599928 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360739 () Bool)

(declare-fun res!905083 () Bool)

(declare-fun e!772005 () Bool)

(assert (=> b!1360739 (=> (not res!905083) (not e!772005))))

(declare-fun acc!759 () List!31925)

(declare-datatypes ((array!92542 0))(
  ( (array!92543 (arr!44704 (Array (_ BitVec 32) (_ BitVec 64))) (size!45255 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92542)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92542 (_ BitVec 32) List!31925) Bool)

(assert (=> b!1360739 (= res!905083 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!905094 () Bool)

(assert (=> start!114782 (=> (not res!905094) (not e!772005))))

(assert (=> start!114782 (= res!905094 (and (bvslt (size!45255 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45255 a!3742))))))

(assert (=> start!114782 e!772005))

(assert (=> start!114782 true))

(declare-fun array_inv!33649 (array!92542) Bool)

(assert (=> start!114782 (array_inv!33649 a!3742)))

(declare-fun b!1360740 () Bool)

(declare-fun res!905087 () Bool)

(assert (=> b!1360740 (=> (not res!905087) (not e!772006))))

(declare-fun noDuplicate!2369 (List!31925) Bool)

(assert (=> b!1360740 (= res!905087 (noDuplicate!2369 lt!599928))))

(declare-fun b!1360741 () Bool)

(declare-fun res!905092 () Bool)

(assert (=> b!1360741 (=> (not res!905092) (not e!772005))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1360741 (= res!905092 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1360742 () Bool)

(declare-fun res!905090 () Bool)

(assert (=> b!1360742 (=> (not res!905090) (not e!772005))))

(assert (=> b!1360742 (= res!905090 (not (contains!9490 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360743 () Bool)

(declare-fun res!905093 () Bool)

(assert (=> b!1360743 (=> (not res!905093) (not e!772005))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1360743 (= res!905093 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45255 a!3742))))))

(declare-fun b!1360744 () Bool)

(declare-fun res!905085 () Bool)

(assert (=> b!1360744 (=> (not res!905085) (not e!772005))))

(assert (=> b!1360744 (= res!905085 (not (contains!9490 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1360745 () Bool)

(declare-fun e!772008 () Bool)

(assert (=> b!1360745 (= e!772008 e!772006)))

(declare-fun res!905084 () Bool)

(assert (=> b!1360745 (=> (not res!905084) (not e!772006))))

(assert (=> b!1360745 (= res!905084 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!886 (List!31925 (_ BitVec 64)) List!31925)

(assert (=> b!1360745 (= lt!599928 ($colon$colon!886 acc!759 (select (arr!44704 a!3742) from!3120)))))

(declare-fun b!1360746 () Bool)

(declare-fun res!905088 () Bool)

(assert (=> b!1360746 (=> (not res!905088) (not e!772005))))

(assert (=> b!1360746 (= res!905088 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45255 a!3742)))))

(declare-fun b!1360747 () Bool)

(declare-fun res!905091 () Bool)

(assert (=> b!1360747 (=> (not res!905091) (not e!772005))))

(assert (=> b!1360747 (= res!905091 (noDuplicate!2369 acc!759))))

(declare-fun b!1360748 () Bool)

(assert (=> b!1360748 (= e!772005 e!772008)))

(declare-fun res!905089 () Bool)

(assert (=> b!1360748 (=> (not res!905089) (not e!772008))))

(declare-fun lt!599926 () Bool)

(assert (=> b!1360748 (= res!905089 (and (not (= from!3120 i!1404)) lt!599926))))

(declare-datatypes ((Unit!44795 0))(
  ( (Unit!44796) )
))
(declare-fun lt!599927 () Unit!44795)

(declare-fun e!772004 () Unit!44795)

(assert (=> b!1360748 (= lt!599927 e!772004)))

(declare-fun c!127270 () Bool)

(assert (=> b!1360748 (= c!127270 lt!599926)))

(assert (=> b!1360748 (= lt!599926 (validKeyInArray!0 (select (arr!44704 a!3742) from!3120)))))

(declare-fun b!1360749 () Bool)

(declare-fun lt!599930 () Unit!44795)

(assert (=> b!1360749 (= e!772004 lt!599930)))

(declare-fun lt!599929 () Unit!44795)

(declare-fun lemmaListSubSeqRefl!0 (List!31925) Unit!44795)

(assert (=> b!1360749 (= lt!599929 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!881 (List!31925 List!31925) Bool)

(assert (=> b!1360749 (subseq!881 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92542 List!31925 List!31925 (_ BitVec 32)) Unit!44795)

(assert (=> b!1360749 (= lt!599930 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!886 acc!759 (select (arr!44704 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1360749 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1360750 () Bool)

(declare-fun Unit!44797 () Unit!44795)

(assert (=> b!1360750 (= e!772004 Unit!44797)))

(declare-fun b!1360751 () Bool)

(declare-fun res!905082 () Bool)

(assert (=> b!1360751 (=> (not res!905082) (not e!772005))))

(assert (=> b!1360751 (= res!905082 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31922))))

(assert (= (and start!114782 res!905094) b!1360747))

(assert (= (and b!1360747 res!905091) b!1360742))

(assert (= (and b!1360742 res!905090) b!1360744))

(assert (= (and b!1360744 res!905085) b!1360751))

(assert (= (and b!1360751 res!905082) b!1360739))

(assert (= (and b!1360739 res!905083) b!1360743))

(assert (= (and b!1360743 res!905093) b!1360741))

(assert (= (and b!1360741 res!905092) b!1360746))

(assert (= (and b!1360746 res!905088) b!1360748))

(assert (= (and b!1360748 c!127270) b!1360749))

(assert (= (and b!1360748 (not c!127270)) b!1360750))

(assert (= (and b!1360748 res!905089) b!1360745))

(assert (= (and b!1360745 res!905084) b!1360740))

(assert (= (and b!1360740 res!905087) b!1360737))

(assert (= (and b!1360737 (not res!905086)) b!1360738))

(declare-fun m!1245985 () Bool)

(assert (=> start!114782 m!1245985))

(declare-fun m!1245987 () Bool)

(assert (=> b!1360738 m!1245987))

(declare-fun m!1245989 () Bool)

(assert (=> b!1360744 m!1245989))

(declare-fun m!1245991 () Bool)

(assert (=> b!1360737 m!1245991))

(declare-fun m!1245993 () Bool)

(assert (=> b!1360745 m!1245993))

(assert (=> b!1360745 m!1245993))

(declare-fun m!1245995 () Bool)

(assert (=> b!1360745 m!1245995))

(declare-fun m!1245997 () Bool)

(assert (=> b!1360739 m!1245997))

(declare-fun m!1245999 () Bool)

(assert (=> b!1360747 m!1245999))

(assert (=> b!1360748 m!1245993))

(assert (=> b!1360748 m!1245993))

(declare-fun m!1246001 () Bool)

(assert (=> b!1360748 m!1246001))

(declare-fun m!1246003 () Bool)

(assert (=> b!1360741 m!1246003))

(declare-fun m!1246005 () Bool)

(assert (=> b!1360749 m!1246005))

(assert (=> b!1360749 m!1245993))

(assert (=> b!1360749 m!1245995))

(declare-fun m!1246007 () Bool)

(assert (=> b!1360749 m!1246007))

(declare-fun m!1246009 () Bool)

(assert (=> b!1360749 m!1246009))

(assert (=> b!1360749 m!1245993))

(assert (=> b!1360749 m!1245995))

(declare-fun m!1246011 () Bool)

(assert (=> b!1360749 m!1246011))

(declare-fun m!1246013 () Bool)

(assert (=> b!1360742 m!1246013))

(declare-fun m!1246015 () Bool)

(assert (=> b!1360751 m!1246015))

(declare-fun m!1246017 () Bool)

(assert (=> b!1360740 m!1246017))

(push 1)

(assert (not b!1360739))

(assert (not b!1360738))

(assert (not b!1360751))

(assert (not b!1360737))

(assert (not b!1360740))

(assert (not b!1360748))

(assert (not b!1360744))

(assert (not start!114782))

(assert (not b!1360741))

(assert (not b!1360742))

(assert (not b!1360747))

(assert (not b!1360745))

(assert (not b!1360749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145669 () Bool)

(declare-fun lt!599971 () Bool)

(declare-fun content!702 (List!31925) (Set (_ BitVec 64)))

(assert (=> d!145669 (= lt!599971 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!702 lt!599928)))))

(declare-fun e!772087 () Bool)

(assert (=> d!145669 (= lt!599971 e!772087)))

(declare-fun res!905210 () Bool)

(assert (=> d!145669 (=> (not res!905210) (not e!772087))))

(assert (=> d!145669 (= res!905210 (is-Cons!31921 lt!599928))))

(assert (=> d!145669 (= (contains!9490 lt!599928 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599971)))

(declare-fun b!1360886 () Bool)

(declare-fun e!772088 () Bool)

(assert (=> b!1360886 (= e!772087 e!772088)))

(declare-fun res!905212 () Bool)

(assert (=> b!1360886 (=> res!905212 e!772088)))

(assert (=> b!1360886 (= res!905212 (= (h!33130 lt!599928) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360888 () Bool)

(assert (=> b!1360888 (= e!772088 (contains!9490 (t!46611 lt!599928) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145669 res!905210) b!1360886))

(assert (= (and b!1360886 (not res!905212)) b!1360888))

(declare-fun m!1246104 () Bool)

(assert (=> d!145669 m!1246104))

(declare-fun m!1246109 () Bool)

(assert (=> d!145669 m!1246109))

(declare-fun m!1246112 () Bool)

(assert (=> b!1360888 m!1246112))

(assert (=> b!1360737 d!145669))

(declare-fun d!145677 () Bool)

(assert (=> d!145677 (= (validKeyInArray!0 (select (arr!44704 a!3742) from!3120)) (and (not (= (select (arr!44704 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44704 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1360748 d!145677))

(declare-fun d!145683 () Bool)

(assert (=> d!145683 (= (array_inv!33649 a!3742) (bvsge (size!45255 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114782 d!145683))

(declare-fun d!145687 () Bool)

(declare-fun lt!599974 () Bool)

(assert (=> d!145687 (= lt!599974 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!702 lt!599928)))))

(declare-fun e!772100 () Bool)

(assert (=> d!145687 (= lt!599974 e!772100)))

(declare-fun res!905223 () Bool)

(assert (=> d!145687 (=> (not res!905223) (not e!772100))))

(assert (=> d!145687 (= res!905223 (is-Cons!31921 lt!599928))))

(assert (=> d!145687 (= (contains!9490 lt!599928 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599974)))

(declare-fun b!1360900 () Bool)

(declare-fun e!772101 () Bool)

(assert (=> b!1360900 (= e!772100 e!772101)))

(declare-fun res!905224 () Bool)

(assert (=> b!1360900 (=> res!905224 e!772101)))

(assert (=> b!1360900 (= res!905224 (= (h!33130 lt!599928) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1360901 () Bool)

(assert (=> b!1360901 (= e!772101 (contains!9490 (t!46611 lt!599928) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145687 res!905223) b!1360900))

(assert (= (and b!1360900 (not res!905224)) b!1360901))

(assert (=> d!145687 m!1246104))

(declare-fun m!1246131 () Bool)

(assert (=> d!145687 m!1246131))

(declare-fun m!1246133 () Bool)

(assert (=> b!1360901 m!1246133))

(assert (=> b!1360738 d!145687))

(declare-fun d!145689 () Bool)

(declare-fun res!905246 () Bool)

(declare-fun e!772126 () Bool)

(assert (=> d!145689 (=> res!905246 e!772126)))

(assert (=> d!145689 (= res!905246 (is-Nil!31922 acc!759))))

(assert (=> d!145689 (= (noDuplicate!2369 acc!759) e!772126)))

(declare-fun b!1360929 () Bool)

(declare-fun e!772127 () Bool)

(assert (=> b!1360929 (= e!772126 e!772127)))

(declare-fun res!905247 () Bool)

(assert (=> b!1360929 (=> (not res!905247) (not e!772127))))

(assert (=> b!1360929 (= res!905247 (not (contains!9490 (t!46611 acc!759) (h!33130 acc!759))))))

(declare-fun b!1360930 () Bool)

(assert (=> b!1360930 (= e!772127 (noDuplicate!2369 (t!46611 acc!759)))))

(assert (= (and d!145689 (not res!905246)) b!1360929))

(assert (= (and b!1360929 res!905247) b!1360930))

(declare-fun m!1246163 () Bool)

(assert (=> b!1360929 m!1246163))

(declare-fun m!1246165 () Bool)

(assert (=> b!1360930 m!1246165))

(assert (=> b!1360747 d!145689))

(declare-fun d!145703 () Bool)

(declare-fun res!905248 () Bool)

(declare-fun e!772128 () Bool)

(assert (=> d!145703 (=> res!905248 e!772128)))

(assert (=> d!145703 (= res!905248 (is-Nil!31922 lt!599928))))

(assert (=> d!145703 (= (noDuplicate!2369 lt!599928) e!772128)))

(declare-fun b!1360931 () Bool)

(declare-fun e!772129 () Bool)

(assert (=> b!1360931 (= e!772128 e!772129)))

(declare-fun res!905249 () Bool)

(assert (=> b!1360931 (=> (not res!905249) (not e!772129))))

(assert (=> b!1360931 (= res!905249 (not (contains!9490 (t!46611 lt!599928) (h!33130 lt!599928))))))

(declare-fun b!1360932 () Bool)

(assert (=> b!1360932 (= e!772129 (noDuplicate!2369 (t!46611 lt!599928)))))

(assert (= (and d!145703 (not res!905248)) b!1360931))

(assert (= (and b!1360931 res!905249) b!1360932))

(declare-fun m!1246167 () Bool)

(assert (=> b!1360931 m!1246167))

(declare-fun m!1246169 () Bool)

(assert (=> b!1360932 m!1246169))

(assert (=> b!1360740 d!145703))

(declare-fun d!145705 () Bool)

(declare-fun res!905263 () Bool)

(declare-fun e!772144 () Bool)

(assert (=> d!145705 (=> res!905263 e!772144)))

(assert (=> d!145705 (= res!905263 (bvsge #b00000000000000000000000000000000 (size!45255 a!3742)))))

(assert (=> d!145705 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31922) e!772144)))

(declare-fun bm!65346 () Bool)

(declare-fun call!65349 () Bool)

(declare-fun c!127287 () Bool)

(assert (=> bm!65346 (= call!65349 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127287 (Cons!31921 (select (arr!44704 a!3742) #b00000000000000000000000000000000) Nil!31922) Nil!31922)))))

(declare-fun b!1360950 () Bool)

(declare-fun e!772147 () Bool)

(declare-fun e!772146 () Bool)

(assert (=> b!1360950 (= e!772147 e!772146)))

(assert (=> b!1360950 (= c!127287 (validKeyInArray!0 (select (arr!44704 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1360951 () Bool)

(assert (=> b!1360951 (= e!772146 call!65349)))

(declare-fun b!1360952 () Bool)

(assert (=> b!1360952 (= e!772144 e!772147)))

