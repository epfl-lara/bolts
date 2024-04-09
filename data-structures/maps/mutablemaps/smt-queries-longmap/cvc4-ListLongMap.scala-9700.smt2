; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114630 () Bool)

(assert start!114630)

(declare-fun b!1359740 () Bool)

(declare-fun res!904280 () Bool)

(declare-fun e!771504 () Bool)

(assert (=> b!1359740 (=> (not res!904280) (not e!771504))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92498 0))(
  ( (array!92499 (arr!44685 (Array (_ BitVec 32) (_ BitVec 64))) (size!45236 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92498)

(assert (=> b!1359740 (= res!904280 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45236 a!3742)))))

(declare-fun b!1359741 () Bool)

(declare-fun res!904281 () Bool)

(declare-fun e!771503 () Bool)

(assert (=> b!1359741 (=> (not res!904281) (not e!771503))))

(declare-datatypes ((List!31906 0))(
  ( (Nil!31903) (Cons!31902 (h!33111 (_ BitVec 64)) (t!46586 List!31906)) )
))
(declare-fun acc!759 () List!31906)

(declare-fun arrayNoDuplicates!0 (array!92498 (_ BitVec 32) List!31906) Bool)

(assert (=> b!1359741 (= res!904281 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359742 () Bool)

(declare-datatypes ((Unit!44738 0))(
  ( (Unit!44739) )
))
(declare-fun e!771505 () Unit!44738)

(declare-fun Unit!44740 () Unit!44738)

(assert (=> b!1359742 (= e!771505 Unit!44740)))

(declare-fun b!1359743 () Bool)

(declare-fun res!904272 () Bool)

(assert (=> b!1359743 (=> (not res!904272) (not e!771504))))

(assert (=> b!1359743 (= res!904272 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun lt!599663 () array!92498)

(declare-fun b!1359744 () Bool)

(assert (=> b!1359744 (= e!771503 (not (arrayNoDuplicates!0 lt!599663 from!3120 acc!759)))))

(assert (=> b!1359744 (arrayNoDuplicates!0 lt!599663 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359744 (= lt!599663 (array!92499 (store (arr!44685 a!3742) i!1404 l!3587) (size!45236 a!3742)))))

(declare-fun lt!599665 () Unit!44738)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92498 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31906) Unit!44738)

(assert (=> b!1359744 (= lt!599665 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359745 () Bool)

(declare-fun res!904273 () Bool)

(assert (=> b!1359745 (=> (not res!904273) (not e!771504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359745 (= res!904273 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359746 () Bool)

(declare-fun res!904276 () Bool)

(assert (=> b!1359746 (=> (not res!904276) (not e!771504))))

(declare-fun contains!9471 (List!31906 (_ BitVec 64)) Bool)

(assert (=> b!1359746 (= res!904276 (not (contains!9471 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359747 () Bool)

(declare-fun res!904278 () Bool)

(assert (=> b!1359747 (=> (not res!904278) (not e!771504))))

(assert (=> b!1359747 (= res!904278 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45236 a!3742))))))

(declare-fun b!1359748 () Bool)

(declare-fun res!904277 () Bool)

(assert (=> b!1359748 (=> (not res!904277) (not e!771504))))

(assert (=> b!1359748 (= res!904277 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31903))))

(declare-fun b!1359750 () Bool)

(declare-fun res!904271 () Bool)

(assert (=> b!1359750 (=> (not res!904271) (not e!771504))))

(declare-fun noDuplicate!2350 (List!31906) Bool)

(assert (=> b!1359750 (= res!904271 (noDuplicate!2350 acc!759))))

(declare-fun b!1359751 () Bool)

(assert (=> b!1359751 (= e!771504 e!771503)))

(declare-fun res!904274 () Bool)

(assert (=> b!1359751 (=> (not res!904274) (not e!771503))))

(assert (=> b!1359751 (= res!904274 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599664 () Unit!44738)

(assert (=> b!1359751 (= lt!599664 e!771505)))

(declare-fun c!127177 () Bool)

(assert (=> b!1359751 (= c!127177 (validKeyInArray!0 (select (arr!44685 a!3742) from!3120)))))

(declare-fun b!1359752 () Bool)

(declare-fun res!904275 () Bool)

(assert (=> b!1359752 (=> (not res!904275) (not e!771504))))

(assert (=> b!1359752 (= res!904275 (not (contains!9471 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!904279 () Bool)

(assert (=> start!114630 (=> (not res!904279) (not e!771504))))

(assert (=> start!114630 (= res!904279 (and (bvslt (size!45236 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45236 a!3742))))))

(assert (=> start!114630 e!771504))

(assert (=> start!114630 true))

(declare-fun array_inv!33630 (array!92498) Bool)

(assert (=> start!114630 (array_inv!33630 a!3742)))

(declare-fun b!1359749 () Bool)

(declare-fun lt!599666 () Unit!44738)

(assert (=> b!1359749 (= e!771505 lt!599666)))

(declare-fun lt!599662 () Unit!44738)

(declare-fun lemmaListSubSeqRefl!0 (List!31906) Unit!44738)

(assert (=> b!1359749 (= lt!599662 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!862 (List!31906 List!31906) Bool)

(assert (=> b!1359749 (subseq!862 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92498 List!31906 List!31906 (_ BitVec 32)) Unit!44738)

(declare-fun $colon$colon!867 (List!31906 (_ BitVec 64)) List!31906)

(assert (=> b!1359749 (= lt!599666 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!867 acc!759 (select (arr!44685 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359749 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114630 res!904279) b!1359750))

(assert (= (and b!1359750 res!904271) b!1359752))

(assert (= (and b!1359752 res!904275) b!1359746))

(assert (= (and b!1359746 res!904276) b!1359748))

(assert (= (and b!1359748 res!904277) b!1359743))

(assert (= (and b!1359743 res!904272) b!1359747))

(assert (= (and b!1359747 res!904278) b!1359745))

(assert (= (and b!1359745 res!904273) b!1359740))

(assert (= (and b!1359740 res!904280) b!1359751))

(assert (= (and b!1359751 c!127177) b!1359749))

(assert (= (and b!1359751 (not c!127177)) b!1359742))

(assert (= (and b!1359751 res!904274) b!1359741))

(assert (= (and b!1359741 res!904281) b!1359744))

(declare-fun m!1245115 () Bool)

(assert (=> b!1359748 m!1245115))

(declare-fun m!1245117 () Bool)

(assert (=> b!1359741 m!1245117))

(declare-fun m!1245119 () Bool)

(assert (=> b!1359750 m!1245119))

(declare-fun m!1245121 () Bool)

(assert (=> b!1359744 m!1245121))

(declare-fun m!1245123 () Bool)

(assert (=> b!1359744 m!1245123))

(declare-fun m!1245125 () Bool)

(assert (=> b!1359744 m!1245125))

(declare-fun m!1245127 () Bool)

(assert (=> b!1359744 m!1245127))

(declare-fun m!1245129 () Bool)

(assert (=> b!1359751 m!1245129))

(assert (=> b!1359751 m!1245129))

(declare-fun m!1245131 () Bool)

(assert (=> b!1359751 m!1245131))

(declare-fun m!1245133 () Bool)

(assert (=> b!1359743 m!1245133))

(declare-fun m!1245135 () Bool)

(assert (=> b!1359746 m!1245135))

(declare-fun m!1245137 () Bool)

(assert (=> b!1359752 m!1245137))

(declare-fun m!1245139 () Bool)

(assert (=> b!1359749 m!1245139))

(assert (=> b!1359749 m!1245129))

(declare-fun m!1245141 () Bool)

(assert (=> b!1359749 m!1245141))

(declare-fun m!1245143 () Bool)

(assert (=> b!1359749 m!1245143))

(assert (=> b!1359749 m!1245117))

(assert (=> b!1359749 m!1245129))

(assert (=> b!1359749 m!1245141))

(declare-fun m!1245145 () Bool)

(assert (=> b!1359749 m!1245145))

(declare-fun m!1245147 () Bool)

(assert (=> b!1359745 m!1245147))

(declare-fun m!1245149 () Bool)

(assert (=> start!114630 m!1245149))

(push 1)

(assert (not b!1359746))

(assert (not b!1359743))

(assert (not b!1359750))

(assert (not b!1359745))

(assert (not b!1359749))

(assert (not b!1359748))

(assert (not start!114630))

(assert (not b!1359741))

(assert (not b!1359751))

(assert (not b!1359744))

(assert (not b!1359752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145477 () Bool)

(declare-fun res!904329 () Bool)

(declare-fun e!771562 () Bool)

(assert (=> d!145477 (=> res!904329 e!771562)))

(assert (=> d!145477 (= res!904329 (bvsge from!3120 (size!45236 a!3742)))))

(assert (=> d!145477 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!771562)))

(declare-fun b!1359817 () Bool)

(declare-fun e!771563 () Bool)

(declare-fun call!65312 () Bool)

(assert (=> b!1359817 (= e!771563 call!65312)))

(declare-fun bm!65309 () Bool)

(declare-fun c!127187 () Bool)

(assert (=> bm!65309 (= call!65312 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127187 (Cons!31902 (select (arr!44685 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1359818 () Bool)

(declare-fun e!771564 () Bool)

(assert (=> b!1359818 (= e!771564 e!771563)))

(assert (=> b!1359818 (= c!127187 (validKeyInArray!0 (select (arr!44685 a!3742) from!3120)))))

(declare-fun b!1359819 () Bool)

(declare-fun e!771561 () Bool)

(assert (=> b!1359819 (= e!771561 (contains!9471 acc!759 (select (arr!44685 a!3742) from!3120)))))

(declare-fun b!1359820 () Bool)

(assert (=> b!1359820 (= e!771563 call!65312)))

(declare-fun b!1359821 () Bool)

(assert (=> b!1359821 (= e!771562 e!771564)))

(declare-fun res!904328 () Bool)

(assert (=> b!1359821 (=> (not res!904328) (not e!771564))))

(assert (=> b!1359821 (= res!904328 (not e!771561))))

(declare-fun res!904330 () Bool)

(assert (=> b!1359821 (=> (not res!904330) (not e!771561))))

(assert (=> b!1359821 (= res!904330 (validKeyInArray!0 (select (arr!44685 a!3742) from!3120)))))

(assert (= (and d!145477 (not res!904329)) b!1359821))

(assert (= (and b!1359821 res!904330) b!1359819))

(assert (= (and b!1359821 res!904328) b!1359818))

(assert (= (and b!1359818 c!127187) b!1359817))

(assert (= (and b!1359818 (not c!127187)) b!1359820))

(assert (= (or b!1359817 b!1359820) bm!65309))

(assert (=> bm!65309 m!1245129))

(declare-fun m!1245203 () Bool)

(assert (=> bm!65309 m!1245203))

(assert (=> b!1359818 m!1245129))

(assert (=> b!1359818 m!1245129))

(assert (=> b!1359818 m!1245131))

(assert (=> b!1359819 m!1245129))

(assert (=> b!1359819 m!1245129))

(declare-fun m!1245205 () Bool)

(assert (=> b!1359819 m!1245205))

(assert (=> b!1359821 m!1245129))

(assert (=> b!1359821 m!1245129))

(assert (=> b!1359821 m!1245131))

(assert (=> b!1359743 d!145477))

(declare-fun d!145495 () Bool)

(declare-fun res!904334 () Bool)

(declare-fun e!771568 () Bool)

(assert (=> d!145495 (=> res!904334 e!771568)))

(assert (=> d!145495 (= res!904334 (bvsge #b00000000000000000000000000000000 (size!45236 a!3742)))))

(assert (=> d!145495 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31903) e!771568)))

(declare-fun b!1359824 () Bool)

(declare-fun e!771569 () Bool)

(declare-fun call!65313 () Bool)

(assert (=> b!1359824 (= e!771569 call!65313)))

(declare-fun bm!65310 () Bool)

(declare-fun c!127188 () Bool)

(assert (=> bm!65310 (= call!65313 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127188 (Cons!31902 (select (arr!44685 a!3742) #b00000000000000000000000000000000) Nil!31903) Nil!31903)))))

(declare-fun b!1359825 () Bool)

(declare-fun e!771570 () Bool)

(assert (=> b!1359825 (= e!771570 e!771569)))

(assert (=> b!1359825 (= c!127188 (validKeyInArray!0 (select (arr!44685 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359826 () Bool)

(declare-fun e!771567 () Bool)

(assert (=> b!1359826 (= e!771567 (contains!9471 Nil!31903 (select (arr!44685 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359827 () Bool)

(assert (=> b!1359827 (= e!771569 call!65313)))

(declare-fun b!1359828 () Bool)

(assert (=> b!1359828 (= e!771568 e!771570)))

(declare-fun res!904333 () Bool)

(assert (=> b!1359828 (=> (not res!904333) (not e!771570))))

(assert (=> b!1359828 (= res!904333 (not e!771567))))

(declare-fun res!904335 () Bool)

(assert (=> b!1359828 (=> (not res!904335) (not e!771567))))

(assert (=> b!1359828 (= res!904335 (validKeyInArray!0 (select (arr!44685 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145495 (not res!904334)) b!1359828))

(assert (= (and b!1359828 res!904335) b!1359826))

(assert (= (and b!1359828 res!904333) b!1359825))

(assert (= (and b!1359825 c!127188) b!1359824))

(assert (= (and b!1359825 (not c!127188)) b!1359827))

(assert (= (or b!1359824 b!1359827) bm!65310))

(declare-fun m!1245207 () Bool)

(assert (=> bm!65310 m!1245207))

(declare-fun m!1245209 () Bool)

(assert (=> bm!65310 m!1245209))

(assert (=> b!1359825 m!1245207))

(assert (=> b!1359825 m!1245207))

(declare-fun m!1245211 () Bool)

(assert (=> b!1359825 m!1245211))

(assert (=> b!1359826 m!1245207))

(assert (=> b!1359826 m!1245207))

(declare-fun m!1245213 () Bool)

(assert (=> b!1359826 m!1245213))

(assert (=> b!1359828 m!1245207))

(assert (=> b!1359828 m!1245207))

(assert (=> b!1359828 m!1245211))

(assert (=> b!1359748 d!145495))

(declare-fun d!145499 () Bool)

(declare-fun res!904352 () Bool)

(declare-fun e!771587 () Bool)

(assert (=> d!145499 (=> res!904352 e!771587)))

(assert (=> d!145499 (= res!904352 (is-Nil!31903 acc!759))))

(assert (=> d!145499 (= (noDuplicate!2350 acc!759) e!771587)))

(declare-fun b!1359845 () Bool)

(declare-fun e!771588 () Bool)

(assert (=> b!1359845 (= e!771587 e!771588)))

(declare-fun res!904353 () Bool)

(assert (=> b!1359845 (=> (not res!904353) (not e!771588))))

(assert (=> b!1359845 (= res!904353 (not (contains!9471 (t!46586 acc!759) (h!33111 acc!759))))))

(declare-fun b!1359846 () Bool)

(assert (=> b!1359846 (= e!771588 (noDuplicate!2350 (t!46586 acc!759)))))

(assert (= (and d!145499 (not res!904352)) b!1359845))

(assert (= (and b!1359845 res!904353) b!1359846))

(declare-fun m!1245225 () Bool)

(assert (=> b!1359845 m!1245225))

(declare-fun m!1245227 () Bool)

(assert (=> b!1359846 m!1245227))

(assert (=> b!1359750 d!145499))

(declare-fun d!145503 () Bool)

(assert (=> d!145503 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!599685 () Unit!44738)

(declare-fun choose!80 (array!92498 List!31906 List!31906 (_ BitVec 32)) Unit!44738)

(assert (=> d!145503 (= lt!599685 (choose!80 a!3742 ($colon$colon!867 acc!759 (select (arr!44685 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145503 (bvslt (size!45236 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145503 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!867 acc!759 (select (arr!44685 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!599685)))

(declare-fun bs!38989 () Bool)

(assert (= bs!38989 d!145503))

(assert (=> bs!38989 m!1245117))

(assert (=> bs!38989 m!1245141))

(declare-fun m!1245235 () Bool)

(assert (=> bs!38989 m!1245235))

(assert (=> b!1359749 d!145503))

(declare-fun b!1359868 () Bool)

(declare-fun e!771610 () Bool)

(declare-fun e!771607 () Bool)

(assert (=> b!1359868 (= e!771610 e!771607)))

(declare-fun res!904370 () Bool)

(assert (=> b!1359868 (=> res!904370 e!771607)))

(declare-fun e!771609 () Bool)

(assert (=> b!1359868 (= res!904370 e!771609)))

(declare-fun res!904372 () Bool)

(assert (=> b!1359868 (=> (not res!904372) (not e!771609))))

(assert (=> b!1359868 (= res!904372 (= (h!33111 acc!759) (h!33111 acc!759)))))

(declare-fun b!1359870 () Bool)

(assert (=> b!1359870 (= e!771607 (subseq!862 acc!759 (t!46586 acc!759)))))

(declare-fun b!1359869 () Bool)

(assert (=> b!1359869 (= e!771609 (subseq!862 (t!46586 acc!759) (t!46586 acc!759)))))

(declare-fun b!1359867 () Bool)

(declare-fun e!771608 () Bool)

(assert (=> b!1359867 (= e!771608 e!771610)))

(declare-fun res!904373 () Bool)

(assert (=> b!1359867 (=> (not res!904373) (not e!771610))))

(assert (=> b!1359867 (= res!904373 (is-Cons!31902 acc!759))))

(declare-fun d!145507 () Bool)

(declare-fun res!904371 () Bool)

(assert (=> d!145507 (=> res!904371 e!771608)))

(assert (=> d!145507 (= res!904371 (is-Nil!31903 acc!759))))

(assert (=> d!145507 (= (subseq!862 acc!759 acc!759) e!771608)))

(assert (= (and d!145507 (not res!904371)) b!1359867))

(assert (= (and b!1359867 res!904373) b!1359868))

(assert (= (and b!1359868 res!904372) b!1359869))

(assert (= (and b!1359868 (not res!904370)) b!1359870))

(declare-fun m!1245237 () Bool)

(assert (=> b!1359870 m!1245237))

(declare-fun m!1245239 () Bool)

(assert (=> b!1359869 m!1245239))

(assert (=> b!1359749 d!145507))

(declare-fun d!145509 () Bool)

(declare-fun res!904375 () Bool)

(declare-fun e!771612 () Bool)

(assert (=> d!145509 (=> res!904375 e!771612)))

(assert (=> d!145509 (= res!904375 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45236 a!3742)))))

(assert (=> d!145509 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!771612)))

(declare-fun b!1359871 () Bool)

(declare-fun e!771613 () Bool)

(declare-fun call!65316 () Bool)

(assert (=> b!1359871 (= e!771613 call!65316)))

(declare-fun bm!65313 () Bool)

(declare-fun c!127191 () Bool)

(assert (=> bm!65313 (= call!65316 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127191 (Cons!31902 (select (arr!44685 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun b!1359872 () Bool)

(declare-fun e!771614 () Bool)

(assert (=> b!1359872 (= e!771614 e!771613)))

(assert (=> b!1359872 (= c!127191 (validKeyInArray!0 (select (arr!44685 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun e!771611 () Bool)

(declare-fun b!1359873 () Bool)

(assert (=> b!1359873 (= e!771611 (contains!9471 acc!759 (select (arr!44685 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359874 () Bool)

(assert (=> b!1359874 (= e!771613 call!65316)))

(declare-fun b!1359875 () Bool)

(assert (=> b!1359875 (= e!771612 e!771614)))

(declare-fun res!904374 () Bool)

(assert (=> b!1359875 (=> (not res!904374) (not e!771614))))

(assert (=> b!1359875 (= res!904374 (not e!771611))))

(declare-fun res!904376 () Bool)

(assert (=> b!1359875 (=> (not res!904376) (not e!771611))))

(assert (=> b!1359875 (= res!904376 (validKeyInArray!0 (select (arr!44685 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145509 (not res!904375)) b!1359875))

(assert (= (and b!1359875 res!904376) b!1359873))

(assert (= (and b!1359875 res!904374) b!1359872))

(assert (= (and b!1359872 c!127191) b!1359871))

(assert (= (and b!1359872 (not c!127191)) b!1359874))

