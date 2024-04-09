; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114546 () Bool)

(assert start!114546)

(declare-fun b!1359021 () Bool)

(declare-fun res!903673 () Bool)

(declare-fun e!771186 () Bool)

(assert (=> b!1359021 (=> (not res!903673) (not e!771186))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92465 0))(
  ( (array!92466 (arr!44670 (Array (_ BitVec 32) (_ BitVec 64))) (size!45221 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92465)

(assert (=> b!1359021 (= res!903673 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45221 a!3742)))))

(declare-fun b!1359022 () Bool)

(declare-fun e!771187 () Bool)

(assert (=> b!1359022 (= e!771186 e!771187)))

(declare-fun res!903678 () Bool)

(assert (=> b!1359022 (=> (not res!903678) (not e!771187))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359022 (= res!903678 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44693 0))(
  ( (Unit!44694) )
))
(declare-fun lt!599456 () Unit!44693)

(declare-fun e!771184 () Unit!44693)

(assert (=> b!1359022 (= lt!599456 e!771184)))

(declare-fun c!127117 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359022 (= c!127117 (validKeyInArray!0 (select (arr!44670 a!3742) from!3120)))))

(declare-fun res!903672 () Bool)

(assert (=> start!114546 (=> (not res!903672) (not e!771186))))

(assert (=> start!114546 (= res!903672 (and (bvslt (size!45221 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45221 a!3742))))))

(assert (=> start!114546 e!771186))

(assert (=> start!114546 true))

(declare-fun array_inv!33615 (array!92465) Bool)

(assert (=> start!114546 (array_inv!33615 a!3742)))

(declare-fun b!1359023 () Bool)

(declare-fun res!903675 () Bool)

(assert (=> b!1359023 (=> (not res!903675) (not e!771186))))

(declare-datatypes ((List!31891 0))(
  ( (Nil!31888) (Cons!31887 (h!33096 (_ BitVec 64)) (t!46568 List!31891)) )
))
(declare-fun acc!759 () List!31891)

(declare-fun arrayNoDuplicates!0 (array!92465 (_ BitVec 32) List!31891) Bool)

(assert (=> b!1359023 (= res!903675 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359024 () Bool)

(declare-fun res!903677 () Bool)

(assert (=> b!1359024 (=> (not res!903677) (not e!771186))))

(declare-fun contains!9456 (List!31891 (_ BitVec 64)) Bool)

(assert (=> b!1359024 (= res!903677 (not (contains!9456 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359025 () Bool)

(declare-fun lt!599455 () Unit!44693)

(assert (=> b!1359025 (= e!771184 lt!599455)))

(declare-fun lt!599454 () Unit!44693)

(declare-fun lemmaListSubSeqRefl!0 (List!31891) Unit!44693)

(assert (=> b!1359025 (= lt!599454 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!847 (List!31891 List!31891) Bool)

(assert (=> b!1359025 (subseq!847 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92465 List!31891 List!31891 (_ BitVec 32)) Unit!44693)

(declare-fun $colon$colon!852 (List!31891 (_ BitVec 64)) List!31891)

(assert (=> b!1359025 (= lt!599455 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!852 acc!759 (select (arr!44670 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359025 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359026 () Bool)

(declare-fun res!903680 () Bool)

(assert (=> b!1359026 (=> (not res!903680) (not e!771186))))

(declare-fun noDuplicate!2335 (List!31891) Bool)

(assert (=> b!1359026 (= res!903680 (noDuplicate!2335 acc!759))))

(declare-fun b!1359027 () Bool)

(declare-fun res!903679 () Bool)

(assert (=> b!1359027 (=> (not res!903679) (not e!771186))))

(assert (=> b!1359027 (= res!903679 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31888))))

(declare-fun b!1359028 () Bool)

(declare-fun res!903676 () Bool)

(assert (=> b!1359028 (=> (not res!903676) (not e!771186))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1359028 (= res!903676 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359029 () Bool)

(declare-fun Unit!44695 () Unit!44693)

(assert (=> b!1359029 (= e!771184 Unit!44695)))

(declare-fun b!1359030 () Bool)

(declare-fun res!903681 () Bool)

(assert (=> b!1359030 (=> (not res!903681) (not e!771186))))

(assert (=> b!1359030 (= res!903681 (not (contains!9456 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359031 () Bool)

(assert (=> b!1359031 (= e!771187 (not (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))))

(declare-fun b!1359032 () Bool)

(declare-fun res!903674 () Bool)

(assert (=> b!1359032 (=> (not res!903674) (not e!771186))))

(assert (=> b!1359032 (= res!903674 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45221 a!3742))))))

(assert (= (and start!114546 res!903672) b!1359026))

(assert (= (and b!1359026 res!903680) b!1359030))

(assert (= (and b!1359030 res!903681) b!1359024))

(assert (= (and b!1359024 res!903677) b!1359027))

(assert (= (and b!1359027 res!903679) b!1359023))

(assert (= (and b!1359023 res!903675) b!1359032))

(assert (= (and b!1359032 res!903674) b!1359028))

(assert (= (and b!1359028 res!903676) b!1359021))

(assert (= (and b!1359021 res!903673) b!1359022))

(assert (= (and b!1359022 c!127117) b!1359025))

(assert (= (and b!1359022 (not c!127117)) b!1359029))

(assert (= (and b!1359022 res!903678) b!1359031))

(declare-fun m!1244535 () Bool)

(assert (=> b!1359027 m!1244535))

(declare-fun m!1244537 () Bool)

(assert (=> b!1359022 m!1244537))

(assert (=> b!1359022 m!1244537))

(declare-fun m!1244539 () Bool)

(assert (=> b!1359022 m!1244539))

(declare-fun m!1244541 () Bool)

(assert (=> b!1359028 m!1244541))

(declare-fun m!1244543 () Bool)

(assert (=> b!1359026 m!1244543))

(declare-fun m!1244545 () Bool)

(assert (=> b!1359024 m!1244545))

(declare-fun m!1244547 () Bool)

(assert (=> start!114546 m!1244547))

(declare-fun m!1244549 () Bool)

(assert (=> b!1359023 m!1244549))

(declare-fun m!1244551 () Bool)

(assert (=> b!1359031 m!1244551))

(declare-fun m!1244553 () Bool)

(assert (=> b!1359025 m!1244553))

(assert (=> b!1359025 m!1244537))

(declare-fun m!1244555 () Bool)

(assert (=> b!1359025 m!1244555))

(declare-fun m!1244557 () Bool)

(assert (=> b!1359025 m!1244557))

(assert (=> b!1359025 m!1244551))

(assert (=> b!1359025 m!1244537))

(assert (=> b!1359025 m!1244555))

(declare-fun m!1244559 () Bool)

(assert (=> b!1359025 m!1244559))

(declare-fun m!1244561 () Bool)

(assert (=> b!1359030 m!1244561))

(push 1)

(assert (not b!1359031))

(assert (not start!114546))

(assert (not b!1359022))

(assert (not b!1359026))

(assert (not b!1359027))

(assert (not b!1359024))

(assert (not b!1359025))

(assert (not b!1359028))

(assert (not b!1359030))

(assert (not b!1359023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145375 () Bool)

(assert (=> d!145375 (= (array_inv!33615 a!3742) (bvsge (size!45221 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114546 d!145375))

(declare-fun d!145377 () Bool)

(assert (=> d!145377 (= (validKeyInArray!0 (select (arr!44670 a!3742) from!3120)) (and (not (= (select (arr!44670 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44670 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1359022 d!145377))

(declare-fun bm!65290 () Bool)

(declare-fun call!65293 () Bool)

(declare-fun c!127123 () Bool)

(assert (=> bm!65290 (= call!65293 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127123 (Cons!31887 (select (arr!44670 a!3742) #b00000000000000000000000000000000) Nil!31888) Nil!31888)))))

(declare-fun b!1359070 () Bool)

(declare-fun e!771223 () Bool)

(assert (=> b!1359070 (= e!771223 call!65293)))

(declare-fun d!145381 () Bool)

(declare-fun res!903709 () Bool)

(declare-fun e!771220 () Bool)

(assert (=> d!145381 (=> res!903709 e!771220)))

(assert (=> d!145381 (= res!903709 (bvsge #b00000000000000000000000000000000 (size!45221 a!3742)))))

(assert (=> d!145381 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31888) e!771220)))

(declare-fun b!1359071 () Bool)

(declare-fun e!771221 () Bool)

(assert (=> b!1359071 (= e!771221 e!771223)))

(assert (=> b!1359071 (= c!127123 (validKeyInArray!0 (select (arr!44670 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359072 () Bool)

(assert (=> b!1359072 (= e!771223 call!65293)))

(declare-fun b!1359073 () Bool)

(assert (=> b!1359073 (= e!771220 e!771221)))

(declare-fun res!903711 () Bool)

(assert (=> b!1359073 (=> (not res!903711) (not e!771221))))

(declare-fun e!771222 () Bool)

(assert (=> b!1359073 (= res!903711 (not e!771222))))

(declare-fun res!903710 () Bool)

(assert (=> b!1359073 (=> (not res!903710) (not e!771222))))

(assert (=> b!1359073 (= res!903710 (validKeyInArray!0 (select (arr!44670 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359074 () Bool)

(assert (=> b!1359074 (= e!771222 (contains!9456 Nil!31888 (select (arr!44670 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145381 (not res!903709)) b!1359073))

(assert (= (and b!1359073 res!903710) b!1359074))

(assert (= (and b!1359073 res!903711) b!1359071))

(assert (= (and b!1359071 c!127123) b!1359070))

(assert (= (and b!1359071 (not c!127123)) b!1359072))

(assert (= (or b!1359070 b!1359072) bm!65290))

(declare-fun m!1244581 () Bool)

(assert (=> bm!65290 m!1244581))

(declare-fun m!1244583 () Bool)

(assert (=> bm!65290 m!1244583))

(assert (=> b!1359071 m!1244581))

(assert (=> b!1359071 m!1244581))

(declare-fun m!1244585 () Bool)

(assert (=> b!1359071 m!1244585))

(assert (=> b!1359073 m!1244581))

(assert (=> b!1359073 m!1244581))

(assert (=> b!1359073 m!1244585))

(assert (=> b!1359074 m!1244581))

(assert (=> b!1359074 m!1244581))

(declare-fun m!1244587 () Bool)

(assert (=> b!1359074 m!1244587))

(assert (=> b!1359027 d!145381))

(declare-fun d!145395 () Bool)

(assert (=> d!145395 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599466 () Unit!44693)

(declare-fun choose!80 (array!92465 List!31891 List!31891 (_ BitVec 32)) Unit!44693)

(assert (=> d!145395 (= lt!599466 (choose!80 a!3742 ($colon$colon!852 acc!759 (select (arr!44670 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145395 (bvslt (size!45221 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145395 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!852 acc!759 (select (arr!44670 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!599466)))

(declare-fun bs!38967 () Bool)

(assert (= bs!38967 d!145395))

(assert (=> bs!38967 m!1244551))

(assert (=> bs!38967 m!1244555))

(declare-fun m!1244591 () Bool)

(assert (=> bs!38967 m!1244591))

(assert (=> b!1359025 d!145395))

(declare-fun d!145399 () Bool)

(declare-fun res!903755 () Bool)

(declare-fun e!771270 () Bool)

(assert (=> d!145399 (=> res!903755 e!771270)))

(assert (=> d!145399 (= res!903755 (is-Nil!31888 acc!759))))

(assert (=> d!145399 (= (subseq!847 acc!759 acc!759) e!771270)))

(declare-fun b!1359126 () Bool)

(declare-fun e!771271 () Bool)

(assert (=> b!1359126 (= e!771270 e!771271)))

(declare-fun res!903754 () Bool)

(assert (=> b!1359126 (=> (not res!903754) (not e!771271))))

(assert (=> b!1359126 (= res!903754 (is-Cons!31887 acc!759))))

(declare-fun b!1359129 () Bool)

(declare-fun e!771273 () Bool)

(assert (=> b!1359129 (= e!771273 (subseq!847 acc!759 (t!46568 acc!759)))))

(declare-fun b!1359128 () Bool)

(declare-fun e!771272 () Bool)

(assert (=> b!1359128 (= e!771272 (subseq!847 (t!46568 acc!759) (t!46568 acc!759)))))

(declare-fun b!1359127 () Bool)

(assert (=> b!1359127 (= e!771271 e!771273)))

(declare-fun res!903753 () Bool)

(assert (=> b!1359127 (=> res!903753 e!771273)))

(assert (=> b!1359127 (= res!903753 e!771272)))

(declare-fun res!903756 () Bool)

(assert (=> b!1359127 (=> (not res!903756) (not e!771272))))

(assert (=> b!1359127 (= res!903756 (= (h!33096 acc!759) (h!33096 acc!759)))))

(assert (= (and d!145399 (not res!903755)) b!1359126))

(assert (= (and b!1359126 res!903754) b!1359127))

(assert (= (and b!1359127 res!903756) b!1359128))

(assert (= (and b!1359127 (not res!903753)) b!1359129))

(declare-fun m!1244623 () Bool)

(assert (=> b!1359129 m!1244623))

(declare-fun m!1244625 () Bool)

(assert (=> b!1359128 m!1244625))

(assert (=> b!1359025 d!145399))

