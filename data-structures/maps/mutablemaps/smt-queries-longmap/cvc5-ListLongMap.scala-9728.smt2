; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115190 () Bool)

(assert start!115190)

(declare-fun b!1364127 () Bool)

(declare-fun res!907938 () Bool)

(declare-fun e!773595 () Bool)

(assert (=> b!1364127 (=> (not res!907938) (not e!773595))))

(declare-datatypes ((List!31988 0))(
  ( (Nil!31985) (Cons!31984 (h!33193 (_ BitVec 64)) (t!46689 List!31988)) )
))
(declare-fun acc!759 () List!31988)

(declare-fun noDuplicate!2432 (List!31988) Bool)

(assert (=> b!1364127 (= res!907938 (noDuplicate!2432 acc!759))))

(declare-fun res!907932 () Bool)

(assert (=> start!115190 (=> (not res!907932) (not e!773595))))

(declare-datatypes ((array!92683 0))(
  ( (array!92684 (arr!44767 (Array (_ BitVec 32) (_ BitVec 64))) (size!45318 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92683)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!115190 (= res!907932 (and (bvslt (size!45318 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45318 a!3742))))))

(assert (=> start!115190 e!773595))

(assert (=> start!115190 true))

(declare-fun array_inv!33712 (array!92683) Bool)

(assert (=> start!115190 (array_inv!33712 a!3742)))

(declare-fun b!1364128 () Bool)

(declare-fun res!907930 () Bool)

(assert (=> b!1364128 (=> (not res!907930) (not e!773595))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1364128 (= res!907930 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1364129 () Bool)

(declare-fun res!907937 () Bool)

(assert (=> b!1364129 (=> (not res!907937) (not e!773595))))

(declare-fun arrayNoDuplicates!0 (array!92683 (_ BitVec 32) List!31988) Bool)

(assert (=> b!1364129 (= res!907937 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31985))))

(declare-fun b!1364130 () Bool)

(declare-fun res!907933 () Bool)

(assert (=> b!1364130 (=> (not res!907933) (not e!773595))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1364130 (= res!907933 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45318 a!3742))))))

(declare-fun b!1364131 () Bool)

(declare-fun res!907934 () Bool)

(assert (=> b!1364131 (=> (not res!907934) (not e!773595))))

(declare-fun contains!9553 (List!31988 (_ BitVec 64)) Bool)

(assert (=> b!1364131 (= res!907934 (not (contains!9553 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364132 () Bool)

(declare-fun res!907935 () Bool)

(assert (=> b!1364132 (=> (not res!907935) (not e!773595))))

(assert (=> b!1364132 (= res!907935 (not (contains!9553 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364133 () Bool)

(assert (=> b!1364133 (= e!773595 (not (arrayNoDuplicates!0 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742)) from!3120 acc!759)))))

(declare-fun b!1364134 () Bool)

(declare-fun res!907936 () Bool)

(assert (=> b!1364134 (=> (not res!907936) (not e!773595))))

(assert (=> b!1364134 (= res!907936 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45318 a!3742)))))

(declare-fun b!1364135 () Bool)

(declare-fun res!907931 () Bool)

(assert (=> b!1364135 (=> (not res!907931) (not e!773595))))

(assert (=> b!1364135 (= res!907931 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!115190 res!907932) b!1364127))

(assert (= (and b!1364127 res!907938) b!1364132))

(assert (= (and b!1364132 res!907935) b!1364131))

(assert (= (and b!1364131 res!907934) b!1364129))

(assert (= (and b!1364129 res!907937) b!1364135))

(assert (= (and b!1364135 res!907931) b!1364130))

(assert (= (and b!1364130 res!907933) b!1364128))

(assert (= (and b!1364128 res!907930) b!1364134))

(assert (= (and b!1364134 res!907936) b!1364133))

(declare-fun m!1248865 () Bool)

(assert (=> b!1364127 m!1248865))

(declare-fun m!1248867 () Bool)

(assert (=> b!1364129 m!1248867))

(declare-fun m!1248869 () Bool)

(assert (=> b!1364133 m!1248869))

(declare-fun m!1248871 () Bool)

(assert (=> b!1364133 m!1248871))

(declare-fun m!1248873 () Bool)

(assert (=> b!1364128 m!1248873))

(declare-fun m!1248875 () Bool)

(assert (=> b!1364135 m!1248875))

(declare-fun m!1248877 () Bool)

(assert (=> start!115190 m!1248877))

(declare-fun m!1248879 () Bool)

(assert (=> b!1364132 m!1248879))

(declare-fun m!1248881 () Bool)

(assert (=> b!1364131 m!1248881))

(push 1)

(assert (not b!1364132))

(assert (not b!1364127))

(assert (not b!1364133))

(assert (not b!1364131))

(assert (not b!1364128))

(assert (not b!1364135))

(assert (not b!1364129))

(assert (not start!115190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146193 () Bool)

(declare-fun lt!600963 () Bool)

(declare-fun content!716 (List!31988) (Set (_ BitVec 64)))

(assert (=> d!146193 (= lt!600963 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!716 acc!759)))))

(declare-fun e!773638 () Bool)

(assert (=> d!146193 (= lt!600963 e!773638)))

(declare-fun res!908018 () Bool)

(assert (=> d!146193 (=> (not res!908018) (not e!773638))))

(assert (=> d!146193 (= res!908018 (is-Cons!31984 acc!759))))

(assert (=> d!146193 (= (contains!9553 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600963)))

(declare-fun b!1364222 () Bool)

(declare-fun e!773637 () Bool)

(assert (=> b!1364222 (= e!773638 e!773637)))

(declare-fun res!908017 () Bool)

(assert (=> b!1364222 (=> res!908017 e!773637)))

(assert (=> b!1364222 (= res!908017 (= (h!33193 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364223 () Bool)

(assert (=> b!1364223 (= e!773637 (contains!9553 (t!46689 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146193 res!908018) b!1364222))

(assert (= (and b!1364222 (not res!908017)) b!1364223))

(declare-fun m!1248945 () Bool)

(assert (=> d!146193 m!1248945))

(declare-fun m!1248947 () Bool)

(assert (=> d!146193 m!1248947))

(declare-fun m!1248949 () Bool)

(assert (=> b!1364223 m!1248949))

(assert (=> b!1364132 d!146193))

(declare-fun d!146205 () Bool)

(declare-fun res!908027 () Bool)

(declare-fun e!773647 () Bool)

(assert (=> d!146205 (=> res!908027 e!773647)))

(assert (=> d!146205 (= res!908027 (is-Nil!31985 acc!759))))

(assert (=> d!146205 (= (noDuplicate!2432 acc!759) e!773647)))

(declare-fun b!1364232 () Bool)

(declare-fun e!773648 () Bool)

(assert (=> b!1364232 (= e!773647 e!773648)))

(declare-fun res!908028 () Bool)

(assert (=> b!1364232 (=> (not res!908028) (not e!773648))))

(assert (=> b!1364232 (= res!908028 (not (contains!9553 (t!46689 acc!759) (h!33193 acc!759))))))

(declare-fun b!1364233 () Bool)

(assert (=> b!1364233 (= e!773648 (noDuplicate!2432 (t!46689 acc!759)))))

(assert (= (and d!146205 (not res!908027)) b!1364232))

(assert (= (and b!1364232 res!908028) b!1364233))

(declare-fun m!1248951 () Bool)

(assert (=> b!1364232 m!1248951))

(declare-fun m!1248955 () Bool)

(assert (=> b!1364233 m!1248955))

(assert (=> b!1364127 d!146205))

(declare-fun d!146211 () Bool)

(declare-fun lt!600967 () Bool)

(assert (=> d!146211 (= lt!600967 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!716 acc!759)))))

(declare-fun e!773656 () Bool)

(assert (=> d!146211 (= lt!600967 e!773656)))

(declare-fun res!908036 () Bool)

(assert (=> d!146211 (=> (not res!908036) (not e!773656))))

(assert (=> d!146211 (= res!908036 (is-Cons!31984 acc!759))))

(assert (=> d!146211 (= (contains!9553 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600967)))

(declare-fun b!1364240 () Bool)

(declare-fun e!773655 () Bool)

(assert (=> b!1364240 (= e!773656 e!773655)))

(declare-fun res!908035 () Bool)

(assert (=> b!1364240 (=> res!908035 e!773655)))

(assert (=> b!1364240 (= res!908035 (= (h!33193 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364241 () Bool)

(assert (=> b!1364241 (= e!773655 (contains!9553 (t!46689 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146211 res!908036) b!1364240))

(assert (= (and b!1364240 (not res!908035)) b!1364241))

(assert (=> d!146211 m!1248945))

(declare-fun m!1248961 () Bool)

(assert (=> d!146211 m!1248961))

(declare-fun m!1248963 () Bool)

(assert (=> b!1364241 m!1248963))

(assert (=> b!1364131 d!146211))

(declare-fun bm!65438 () Bool)

(declare-fun call!65441 () Bool)

(declare-fun c!127550 () Bool)

(assert (=> bm!65438 (= call!65441 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127550 (Cons!31984 (select (arr!44767 a!3742) #b00000000000000000000000000000000) Nil!31985) Nil!31985)))))

(declare-fun b!1364269 () Bool)

(declare-fun e!773680 () Bool)

(assert (=> b!1364269 (= e!773680 (contains!9553 Nil!31985 (select (arr!44767 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364270 () Bool)

(declare-fun e!773682 () Bool)

(assert (=> b!1364270 (= e!773682 call!65441)))

(declare-fun b!1364271 () Bool)

(assert (=> b!1364271 (= e!773682 call!65441)))

(declare-fun b!1364273 () Bool)

(declare-fun e!773681 () Bool)

(declare-fun e!773679 () Bool)

(assert (=> b!1364273 (= e!773681 e!773679)))

(declare-fun res!908055 () Bool)

(assert (=> b!1364273 (=> (not res!908055) (not e!773679))))

(assert (=> b!1364273 (= res!908055 (not e!773680))))

(declare-fun res!908056 () Bool)

(assert (=> b!1364273 (=> (not res!908056) (not e!773680))))

(assert (=> b!1364273 (= res!908056 (validKeyInArray!0 (select (arr!44767 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364272 () Bool)

(assert (=> b!1364272 (= e!773679 e!773682)))

(assert (=> b!1364272 (= c!127550 (validKeyInArray!0 (select (arr!44767 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!146215 () Bool)

(declare-fun res!908054 () Bool)

(assert (=> d!146215 (=> res!908054 e!773681)))

(assert (=> d!146215 (= res!908054 (bvsge #b00000000000000000000000000000000 (size!45318 a!3742)))))

(assert (=> d!146215 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31985) e!773681)))

(assert (= (and d!146215 (not res!908054)) b!1364273))

(assert (= (and b!1364273 res!908056) b!1364269))

(assert (= (and b!1364273 res!908055) b!1364272))

(assert (= (and b!1364272 c!127550) b!1364271))

(assert (= (and b!1364272 (not c!127550)) b!1364270))

(assert (= (or b!1364271 b!1364270) bm!65438))

(declare-fun m!1248977 () Bool)

(assert (=> bm!65438 m!1248977))

(declare-fun m!1248979 () Bool)

(assert (=> bm!65438 m!1248979))

(assert (=> b!1364269 m!1248977))

(assert (=> b!1364269 m!1248977))

(declare-fun m!1248981 () Bool)

(assert (=> b!1364269 m!1248981))

(assert (=> b!1364273 m!1248977))

(assert (=> b!1364273 m!1248977))

(declare-fun m!1248983 () Bool)

(assert (=> b!1364273 m!1248983))

(assert (=> b!1364272 m!1248977))

(assert (=> b!1364272 m!1248977))

(assert (=> b!1364272 m!1248983))

(assert (=> b!1364129 d!146215))

(declare-fun c!127552 () Bool)

(declare-fun call!65443 () Bool)

(declare-fun bm!65440 () Bool)

(assert (=> bm!65440 (= call!65443 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127552 (Cons!31984 (select (arr!44767 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1364279 () Bool)

(declare-fun e!773688 () Bool)

(assert (=> b!1364279 (= e!773688 (contains!9553 acc!759 (select (arr!44767 a!3742) from!3120)))))

(declare-fun b!1364280 () Bool)

(declare-fun e!773690 () Bool)

(assert (=> b!1364280 (= e!773690 call!65443)))

(declare-fun b!1364281 () Bool)

(assert (=> b!1364281 (= e!773690 call!65443)))

(declare-fun b!1364283 () Bool)

(declare-fun e!773689 () Bool)

(declare-fun e!773687 () Bool)

(assert (=> b!1364283 (= e!773689 e!773687)))

(declare-fun res!908061 () Bool)

(assert (=> b!1364283 (=> (not res!908061) (not e!773687))))

(assert (=> b!1364283 (= res!908061 (not e!773688))))

(declare-fun res!908062 () Bool)

(assert (=> b!1364283 (=> (not res!908062) (not e!773688))))

(assert (=> b!1364283 (= res!908062 (validKeyInArray!0 (select (arr!44767 a!3742) from!3120)))))

(declare-fun b!1364282 () Bool)

(assert (=> b!1364282 (= e!773687 e!773690)))

(assert (=> b!1364282 (= c!127552 (validKeyInArray!0 (select (arr!44767 a!3742) from!3120)))))

(declare-fun d!146219 () Bool)

(declare-fun res!908060 () Bool)

(assert (=> d!146219 (=> res!908060 e!773689)))

(assert (=> d!146219 (= res!908060 (bvsge from!3120 (size!45318 a!3742)))))

(assert (=> d!146219 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!773689)))

(assert (= (and d!146219 (not res!908060)) b!1364283))

(assert (= (and b!1364283 res!908062) b!1364279))

(assert (= (and b!1364283 res!908061) b!1364282))

(assert (= (and b!1364282 c!127552) b!1364281))

(assert (= (and b!1364282 (not c!127552)) b!1364280))

(assert (= (or b!1364281 b!1364280) bm!65440))

(declare-fun m!1248993 () Bool)

(assert (=> bm!65440 m!1248993))

(declare-fun m!1248995 () Bool)

(assert (=> bm!65440 m!1248995))

(assert (=> b!1364279 m!1248993))

(assert (=> b!1364279 m!1248993))

(declare-fun m!1248997 () Bool)

(assert (=> b!1364279 m!1248997))

(assert (=> b!1364283 m!1248993))

(assert (=> b!1364283 m!1248993))

(declare-fun m!1248999 () Bool)

(assert (=> b!1364283 m!1248999))

(assert (=> b!1364282 m!1248993))

(assert (=> b!1364282 m!1248993))

(assert (=> b!1364282 m!1248999))

(assert (=> b!1364135 d!146219))

(declare-fun c!127553 () Bool)

(declare-fun bm!65441 () Bool)

(declare-fun call!65444 () Bool)

(assert (=> bm!65441 (= call!65444 (arrayNoDuplicates!0 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742)) (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127553 (Cons!31984 (select (arr!44767 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742))) from!3120) acc!759) acc!759)))))

(declare-fun b!1364284 () Bool)

(declare-fun e!773692 () Bool)

(assert (=> b!1364284 (= e!773692 (contains!9553 acc!759 (select (arr!44767 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742))) from!3120)))))

(declare-fun b!1364285 () Bool)

(declare-fun e!773694 () Bool)

(assert (=> b!1364285 (= e!773694 call!65444)))

(declare-fun b!1364286 () Bool)

(assert (=> b!1364286 (= e!773694 call!65444)))

(declare-fun b!1364288 () Bool)

(declare-fun e!773693 () Bool)

(declare-fun e!773691 () Bool)

(assert (=> b!1364288 (= e!773693 e!773691)))

(declare-fun res!908064 () Bool)

(assert (=> b!1364288 (=> (not res!908064) (not e!773691))))

(assert (=> b!1364288 (= res!908064 (not e!773692))))

(declare-fun res!908065 () Bool)

(assert (=> b!1364288 (=> (not res!908065) (not e!773692))))

(assert (=> b!1364288 (= res!908065 (validKeyInArray!0 (select (arr!44767 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742))) from!3120)))))

(declare-fun b!1364287 () Bool)

(assert (=> b!1364287 (= e!773691 e!773694)))

(assert (=> b!1364287 (= c!127553 (validKeyInArray!0 (select (arr!44767 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742))) from!3120)))))

(declare-fun d!146223 () Bool)

(declare-fun res!908063 () Bool)

(assert (=> d!146223 (=> res!908063 e!773693)))

(assert (=> d!146223 (= res!908063 (bvsge from!3120 (size!45318 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742)))))))

(assert (=> d!146223 (= (arrayNoDuplicates!0 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742)) from!3120 acc!759) e!773693)))

(assert (= (and d!146223 (not res!908063)) b!1364288))

(assert (= (and b!1364288 res!908065) b!1364284))

(assert (= (and b!1364288 res!908064) b!1364287))

(assert (= (and b!1364287 c!127553) b!1364286))

(assert (= (and b!1364287 (not c!127553)) b!1364285))

(assert (= (or b!1364286 b!1364285) bm!65441))

(declare-fun m!1249001 () Bool)

(assert (=> bm!65441 m!1249001))

(declare-fun m!1249003 () Bool)

(assert (=> bm!65441 m!1249003))

(assert (=> b!1364284 m!1249001))

(assert (=> b!1364284 m!1249001))

(declare-fun m!1249005 () Bool)

(assert (=> b!1364284 m!1249005))

(assert (=> b!1364288 m!1249001))

(assert (=> b!1364288 m!1249001))

(declare-fun m!1249007 () Bool)

(assert (=> b!1364288 m!1249007))

(assert (=> b!1364287 m!1249001))

(assert (=> b!1364287 m!1249001))

(assert (=> b!1364287 m!1249007))

(assert (=> b!1364133 d!146223))

(declare-fun d!146225 () Bool)

(assert (=> d!146225 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1364128 d!146225))

(declare-fun d!146227 () Bool)

(assert (=> d!146227 (= (array_inv!33712 a!3742) (bvsge (size!45318 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!115190 d!146227))

(push 1)

(assert (not b!1364287))

(assert (not b!1364233))

(assert (not b!1364288))

(assert (not b!1364283))

(assert (not b!1364223))

(assert (not bm!65441))

(assert (not b!1364279))

(assert (not b!1364282))

(assert (not d!146193))

(assert (not b!1364273))

(assert (not b!1364272))

(assert (not b!1364241))

(assert (not b!1364284))

(assert (not d!146211))

(assert (not b!1364232))

(assert (not bm!65438))

(assert (not b!1364269))

(assert (not bm!65440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146265 () Bool)

(assert (=> d!146265 (= (validKeyInArray!0 (select (arr!44767 a!3742) from!3120)) (and (not (= (select (arr!44767 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44767 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1364283 d!146265))

(declare-fun d!146267 () Bool)

(declare-fun c!127564 () Bool)

(assert (=> d!146267 (= c!127564 (is-Nil!31985 acc!759))))

(declare-fun e!773742 () (Set (_ BitVec 64)))

(assert (=> d!146267 (= (content!716 acc!759) e!773742)))

(declare-fun b!1364346 () Bool)

(assert (=> b!1364346 (= e!773742 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1364347 () Bool)

(assert (=> b!1364347 (= e!773742 (set.union (set.insert (h!33193 acc!759) (as set.empty (Set (_ BitVec 64)))) (content!716 (t!46689 acc!759))))))

(assert (= (and d!146267 c!127564) b!1364346))

(assert (= (and d!146267 (not c!127564)) b!1364347))

(declare-fun m!1249091 () Bool)

(assert (=> b!1364347 m!1249091))

(declare-fun m!1249093 () Bool)

(assert (=> b!1364347 m!1249093))

(assert (=> d!146193 d!146267))

(declare-fun d!146269 () Bool)

(declare-fun res!908103 () Bool)

(declare-fun e!773743 () Bool)

(assert (=> d!146269 (=> res!908103 e!773743)))

(assert (=> d!146269 (= res!908103 (is-Nil!31985 (t!46689 acc!759)))))

(assert (=> d!146269 (= (noDuplicate!2432 (t!46689 acc!759)) e!773743)))

(declare-fun b!1364348 () Bool)

(declare-fun e!773744 () Bool)

(assert (=> b!1364348 (= e!773743 e!773744)))

(declare-fun res!908104 () Bool)

(assert (=> b!1364348 (=> (not res!908104) (not e!773744))))

(assert (=> b!1364348 (= res!908104 (not (contains!9553 (t!46689 (t!46689 acc!759)) (h!33193 (t!46689 acc!759)))))))

(declare-fun b!1364349 () Bool)

(assert (=> b!1364349 (= e!773744 (noDuplicate!2432 (t!46689 (t!46689 acc!759))))))

(assert (= (and d!146269 (not res!908103)) b!1364348))

(assert (= (and b!1364348 res!908104) b!1364349))

(declare-fun m!1249095 () Bool)

(assert (=> b!1364348 m!1249095))

(declare-fun m!1249097 () Bool)

(assert (=> b!1364349 m!1249097))

(assert (=> b!1364233 d!146269))

(assert (=> d!146211 d!146267))

(declare-fun d!146271 () Bool)

(declare-fun lt!600975 () Bool)

(assert (=> d!146271 (= lt!600975 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!716 (t!46689 acc!759))))))

(declare-fun e!773746 () Bool)

(assert (=> d!146271 (= lt!600975 e!773746)))

(declare-fun res!908106 () Bool)

(assert (=> d!146271 (=> (not res!908106) (not e!773746))))

(assert (=> d!146271 (= res!908106 (is-Cons!31984 (t!46689 acc!759)))))

(assert (=> d!146271 (= (contains!9553 (t!46689 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000) lt!600975)))

(declare-fun b!1364350 () Bool)

(declare-fun e!773745 () Bool)

(assert (=> b!1364350 (= e!773746 e!773745)))

(declare-fun res!908105 () Bool)

(assert (=> b!1364350 (=> res!908105 e!773745)))

(assert (=> b!1364350 (= res!908105 (= (h!33193 (t!46689 acc!759)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364351 () Bool)

(assert (=> b!1364351 (= e!773745 (contains!9553 (t!46689 (t!46689 acc!759)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146271 res!908106) b!1364350))

(assert (= (and b!1364350 (not res!908105)) b!1364351))

(assert (=> d!146271 m!1249093))

(declare-fun m!1249099 () Bool)

(assert (=> d!146271 m!1249099))

(declare-fun m!1249101 () Bool)

(assert (=> b!1364351 m!1249101))

(assert (=> b!1364241 d!146271))

(declare-fun call!65450 () Bool)

(declare-fun bm!65447 () Bool)

(declare-fun c!127565 () Bool)

(assert (=> bm!65447 (= call!65450 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127565 (Cons!31984 (select (arr!44767 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!127550 (Cons!31984 (select (arr!44767 a!3742) #b00000000000000000000000000000000) Nil!31985) Nil!31985)) (ite c!127550 (Cons!31984 (select (arr!44767 a!3742) #b00000000000000000000000000000000) Nil!31985) Nil!31985))))))

(declare-fun b!1364352 () Bool)

(declare-fun e!773748 () Bool)

(assert (=> b!1364352 (= e!773748 (contains!9553 (ite c!127550 (Cons!31984 (select (arr!44767 a!3742) #b00000000000000000000000000000000) Nil!31985) Nil!31985) (select (arr!44767 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1364353 () Bool)

(declare-fun e!773750 () Bool)

(assert (=> b!1364353 (= e!773750 call!65450)))

(declare-fun b!1364354 () Bool)

(assert (=> b!1364354 (= e!773750 call!65450)))

(declare-fun b!1364356 () Bool)

(declare-fun e!773749 () Bool)

(declare-fun e!773747 () Bool)

(assert (=> b!1364356 (= e!773749 e!773747)))

(declare-fun res!908108 () Bool)

(assert (=> b!1364356 (=> (not res!908108) (not e!773747))))

(assert (=> b!1364356 (= res!908108 (not e!773748))))

(declare-fun res!908109 () Bool)

(assert (=> b!1364356 (=> (not res!908109) (not e!773748))))

(assert (=> b!1364356 (= res!908109 (validKeyInArray!0 (select (arr!44767 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1364355 () Bool)

(assert (=> b!1364355 (= e!773747 e!773750)))

(assert (=> b!1364355 (= c!127565 (validKeyInArray!0 (select (arr!44767 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!146273 () Bool)

(declare-fun res!908107 () Bool)

(assert (=> d!146273 (=> res!908107 e!773749)))

(assert (=> d!146273 (= res!908107 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!45318 a!3742)))))

(assert (=> d!146273 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127550 (Cons!31984 (select (arr!44767 a!3742) #b00000000000000000000000000000000) Nil!31985) Nil!31985)) e!773749)))

(assert (= (and d!146273 (not res!908107)) b!1364356))

(assert (= (and b!1364356 res!908109) b!1364352))

(assert (= (and b!1364356 res!908108) b!1364355))

(assert (= (and b!1364355 c!127565) b!1364354))

(assert (= (and b!1364355 (not c!127565)) b!1364353))

(assert (= (or b!1364354 b!1364353) bm!65447))

(declare-fun m!1249103 () Bool)

(assert (=> bm!65447 m!1249103))

(declare-fun m!1249105 () Bool)

(assert (=> bm!65447 m!1249105))

(assert (=> b!1364352 m!1249103))

(assert (=> b!1364352 m!1249103))

(declare-fun m!1249107 () Bool)

(assert (=> b!1364352 m!1249107))

(assert (=> b!1364356 m!1249103))

(assert (=> b!1364356 m!1249103))

(declare-fun m!1249109 () Bool)

(assert (=> b!1364356 m!1249109))

(assert (=> b!1364355 m!1249103))

(assert (=> b!1364355 m!1249103))

(assert (=> b!1364355 m!1249109))

(assert (=> bm!65438 d!146273))

(declare-fun call!65451 () Bool)

(declare-fun bm!65448 () Bool)

(declare-fun c!127568 () Bool)

(assert (=> bm!65448 (= call!65451 (arrayNoDuplicates!0 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742)) (bvadd from!3120 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127568 (Cons!31984 (select (arr!44767 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742))) (bvadd from!3120 #b00000000000000000000000000000001)) (ite c!127553 (Cons!31984 (select (arr!44767 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742))) from!3120) acc!759) acc!759)) (ite c!127553 (Cons!31984 (select (arr!44767 (array!92684 (store (arr!44767 a!3742) i!1404 l!3587) (size!45318 a!3742))) from!3120) acc!759) acc!759))))))

(declare-fun e!773754 () Bool)

