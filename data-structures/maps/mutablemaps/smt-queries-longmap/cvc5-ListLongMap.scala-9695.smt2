; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114542 () Bool)

(assert start!114542)

(declare-fun b!1358949 () Bool)

(declare-datatypes ((Unit!44687 0))(
  ( (Unit!44688) )
))
(declare-fun e!771160 () Unit!44687)

(declare-fun Unit!44689 () Unit!44687)

(assert (=> b!1358949 (= e!771160 Unit!44689)))

(declare-fun b!1358950 () Bool)

(declare-fun res!903612 () Bool)

(declare-fun e!771162 () Bool)

(assert (=> b!1358950 (=> (not res!903612) (not e!771162))))

(declare-datatypes ((array!92461 0))(
  ( (array!92462 (arr!44668 (Array (_ BitVec 32) (_ BitVec 64))) (size!45219 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92461)

(declare-datatypes ((List!31889 0))(
  ( (Nil!31886) (Cons!31885 (h!33094 (_ BitVec 64)) (t!46566 List!31889)) )
))
(declare-fun arrayNoDuplicates!0 (array!92461 (_ BitVec 32) List!31889) Bool)

(assert (=> b!1358950 (= res!903612 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31886))))

(declare-fun b!1358951 () Bool)

(declare-fun acc!759 () List!31889)

(declare-fun e!771163 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1358951 (= e!771163 (not (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))))

(declare-fun b!1358952 () Bool)

(declare-fun res!903615 () Bool)

(assert (=> b!1358952 (=> (not res!903615) (not e!771162))))

(declare-fun contains!9454 (List!31889 (_ BitVec 64)) Bool)

(assert (=> b!1358952 (= res!903615 (not (contains!9454 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358953 () Bool)

(declare-fun res!903618 () Bool)

(assert (=> b!1358953 (=> (not res!903618) (not e!771162))))

(assert (=> b!1358953 (= res!903618 (not (contains!9454 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358954 () Bool)

(assert (=> b!1358954 (= e!771162 e!771163)))

(declare-fun res!903620 () Bool)

(assert (=> b!1358954 (=> (not res!903620) (not e!771163))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358954 (= res!903620 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599438 () Unit!44687)

(assert (=> b!1358954 (= lt!599438 e!771160)))

(declare-fun c!127111 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358954 (= c!127111 (validKeyInArray!0 (select (arr!44668 a!3742) from!3120)))))

(declare-fun b!1358955 () Bool)

(declare-fun res!903621 () Bool)

(assert (=> b!1358955 (=> (not res!903621) (not e!771162))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358955 (= res!903621 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358957 () Bool)

(declare-fun res!903617 () Bool)

(assert (=> b!1358957 (=> (not res!903617) (not e!771162))))

(assert (=> b!1358957 (= res!903617 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45219 a!3742))))))

(declare-fun b!1358958 () Bool)

(declare-fun res!903619 () Bool)

(assert (=> b!1358958 (=> (not res!903619) (not e!771162))))

(declare-fun noDuplicate!2333 (List!31889) Bool)

(assert (=> b!1358958 (= res!903619 (noDuplicate!2333 acc!759))))

(declare-fun b!1358959 () Bool)

(declare-fun res!903616 () Bool)

(assert (=> b!1358959 (=> (not res!903616) (not e!771162))))

(assert (=> b!1358959 (= res!903616 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358960 () Bool)

(declare-fun lt!599437 () Unit!44687)

(assert (=> b!1358960 (= e!771160 lt!599437)))

(declare-fun lt!599436 () Unit!44687)

(declare-fun lemmaListSubSeqRefl!0 (List!31889) Unit!44687)

(assert (=> b!1358960 (= lt!599436 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!845 (List!31889 List!31889) Bool)

(assert (=> b!1358960 (subseq!845 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92461 List!31889 List!31889 (_ BitVec 32)) Unit!44687)

(declare-fun $colon$colon!850 (List!31889 (_ BitVec 64)) List!31889)

(assert (=> b!1358960 (= lt!599437 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!850 acc!759 (select (arr!44668 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358960 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358956 () Bool)

(declare-fun res!903614 () Bool)

(assert (=> b!1358956 (=> (not res!903614) (not e!771162))))

(assert (=> b!1358956 (= res!903614 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45219 a!3742)))))

(declare-fun res!903613 () Bool)

(assert (=> start!114542 (=> (not res!903613) (not e!771162))))

(assert (=> start!114542 (= res!903613 (and (bvslt (size!45219 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45219 a!3742))))))

(assert (=> start!114542 e!771162))

(assert (=> start!114542 true))

(declare-fun array_inv!33613 (array!92461) Bool)

(assert (=> start!114542 (array_inv!33613 a!3742)))

(assert (= (and start!114542 res!903613) b!1358958))

(assert (= (and b!1358958 res!903619) b!1358953))

(assert (= (and b!1358953 res!903618) b!1358952))

(assert (= (and b!1358952 res!903615) b!1358950))

(assert (= (and b!1358950 res!903612) b!1358959))

(assert (= (and b!1358959 res!903616) b!1358957))

(assert (= (and b!1358957 res!903617) b!1358955))

(assert (= (and b!1358955 res!903621) b!1358956))

(assert (= (and b!1358956 res!903614) b!1358954))

(assert (= (and b!1358954 c!127111) b!1358960))

(assert (= (and b!1358954 (not c!127111)) b!1358949))

(assert (= (and b!1358954 res!903620) b!1358951))

(declare-fun m!1244479 () Bool)

(assert (=> b!1358959 m!1244479))

(declare-fun m!1244481 () Bool)

(assert (=> b!1358954 m!1244481))

(assert (=> b!1358954 m!1244481))

(declare-fun m!1244483 () Bool)

(assert (=> b!1358954 m!1244483))

(declare-fun m!1244485 () Bool)

(assert (=> b!1358958 m!1244485))

(declare-fun m!1244487 () Bool)

(assert (=> b!1358951 m!1244487))

(declare-fun m!1244489 () Bool)

(assert (=> b!1358952 m!1244489))

(declare-fun m!1244491 () Bool)

(assert (=> b!1358960 m!1244491))

(assert (=> b!1358960 m!1244481))

(declare-fun m!1244493 () Bool)

(assert (=> b!1358960 m!1244493))

(declare-fun m!1244495 () Bool)

(assert (=> b!1358960 m!1244495))

(assert (=> b!1358960 m!1244487))

(assert (=> b!1358960 m!1244481))

(assert (=> b!1358960 m!1244493))

(declare-fun m!1244497 () Bool)

(assert (=> b!1358960 m!1244497))

(declare-fun m!1244499 () Bool)

(assert (=> b!1358955 m!1244499))

(declare-fun m!1244501 () Bool)

(assert (=> start!114542 m!1244501))

(declare-fun m!1244503 () Bool)

(assert (=> b!1358953 m!1244503))

(declare-fun m!1244505 () Bool)

(assert (=> b!1358950 m!1244505))

(push 1)

(assert (not b!1358954))

(assert (not b!1358950))

(assert (not b!1358959))

(assert (not b!1358953))

(assert (not b!1358958))

(assert (not b!1358952))

(assert (not b!1358951))

(assert (not b!1358955))

(assert (not start!114542))

(assert (not b!1358960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1359095 () Bool)

(declare-fun e!771242 () Bool)

(declare-fun e!771245 () Bool)

(assert (=> b!1359095 (= e!771242 e!771245)))

(declare-fun c!127126 () Bool)

(assert (=> b!1359095 (= c!127126 (validKeyInArray!0 (select (arr!44668 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359096 () Bool)

(declare-fun call!65296 () Bool)

(assert (=> b!1359096 (= e!771245 call!65296)))

(declare-fun b!1359097 () Bool)

(assert (=> b!1359097 (= e!771245 call!65296)))

(declare-fun d!145385 () Bool)

(declare-fun res!903728 () Bool)

(declare-fun e!771244 () Bool)

(assert (=> d!145385 (=> res!903728 e!771244)))

(assert (=> d!145385 (= res!903728 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45219 a!3742)))))

(assert (=> d!145385 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!771244)))

(declare-fun bm!65293 () Bool)

(assert (=> bm!65293 (= call!65296 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127126 (Cons!31885 (select (arr!44668 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun b!1359098 () Bool)

(assert (=> b!1359098 (= e!771244 e!771242)))

(declare-fun res!903730 () Bool)

(assert (=> b!1359098 (=> (not res!903730) (not e!771242))))

(declare-fun e!771243 () Bool)

(assert (=> b!1359098 (= res!903730 (not e!771243))))

(declare-fun res!903729 () Bool)

(assert (=> b!1359098 (=> (not res!903729) (not e!771243))))

(assert (=> b!1359098 (= res!903729 (validKeyInArray!0 (select (arr!44668 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1359099 () Bool)

(assert (=> b!1359099 (= e!771243 (contains!9454 acc!759 (select (arr!44668 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145385 (not res!903728)) b!1359098))

(assert (= (and b!1359098 res!903729) b!1359099))

(assert (= (and b!1359098 res!903730) b!1359095))

(assert (= (and b!1359095 c!127126) b!1359097))

(assert (= (and b!1359095 (not c!127126)) b!1359096))

(assert (= (or b!1359097 b!1359096) bm!65293))

(declare-fun m!1244593 () Bool)

(assert (=> b!1359095 m!1244593))

(assert (=> b!1359095 m!1244593))

(declare-fun m!1244595 () Bool)

(assert (=> b!1359095 m!1244595))

(assert (=> bm!65293 m!1244593))

(declare-fun m!1244597 () Bool)

(assert (=> bm!65293 m!1244597))

(assert (=> b!1359098 m!1244593))

(assert (=> b!1359098 m!1244593))

(assert (=> b!1359098 m!1244595))

(assert (=> b!1359099 m!1244593))

(assert (=> b!1359099 m!1244593))

(declare-fun m!1244603 () Bool)

(assert (=> b!1359099 m!1244603))

(assert (=> b!1358951 d!145385))

(declare-fun d!145403 () Bool)

(declare-fun lt!599472 () Bool)

(declare-fun content!694 (List!31889) (Set (_ BitVec 64)))

(assert (=> d!145403 (= lt!599472 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!694 acc!759)))))

(declare-fun e!771274 () Bool)

(assert (=> d!145403 (= lt!599472 e!771274)))

(declare-fun res!903758 () Bool)

(assert (=> d!145403 (=> (not res!903758) (not e!771274))))

(assert (=> d!145403 (= res!903758 (is-Cons!31885 acc!759))))

(assert (=> d!145403 (= (contains!9454 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599472)))

(declare-fun b!1359130 () Bool)

(declare-fun e!771275 () Bool)

(assert (=> b!1359130 (= e!771274 e!771275)))

(declare-fun res!903757 () Bool)

(assert (=> b!1359130 (=> res!903757 e!771275)))

(assert (=> b!1359130 (= res!903757 (= (h!33094 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1359131 () Bool)

(assert (=> b!1359131 (= e!771275 (contains!9454 (t!46566 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145403 res!903758) b!1359130))

(assert (= (and b!1359130 (not res!903757)) b!1359131))

(declare-fun m!1244627 () Bool)

(assert (=> d!145403 m!1244627))

(declare-fun m!1244629 () Bool)

(assert (=> d!145403 m!1244629))

(declare-fun m!1244631 () Bool)

(assert (=> b!1359131 m!1244631))

(assert (=> b!1358952 d!145403))

(declare-fun d!145415 () Bool)

(assert (=> d!145415 (= (array_inv!33613 a!3742) (bvsge (size!45219 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114542 d!145415))

(declare-fun b!1359137 () Bool)

(declare-fun e!771280 () Bool)

(declare-fun e!771283 () Bool)

(assert (=> b!1359137 (= e!771280 e!771283)))

(declare-fun c!127130 () Bool)

(assert (=> b!1359137 (= c!127130 (validKeyInArray!0 (select (arr!44668 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1359138 () Bool)

(declare-fun call!65300 () Bool)

(assert (=> b!1359138 (= e!771283 call!65300)))

(declare-fun b!1359139 () Bool)

(assert (=> b!1359139 (= e!771283 call!65300)))

(declare-fun d!145417 () Bool)

(declare-fun res!903762 () Bool)

(declare-fun e!771282 () Bool)

(assert (=> d!145417 (=> res!903762 e!771282)))

(assert (=> d!145417 (= res!903762 (bvsge #b00000000000000000000000000000000 (size!45219 a!3742)))))

(assert (=> d!145417 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31886) e!771282)))

