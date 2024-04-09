; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115194 () Bool)

(assert start!115194)

(declare-fun b!1364181 () Bool)

(declare-fun res!907991 () Bool)

(declare-fun e!773608 () Bool)

(assert (=> b!1364181 (=> (not res!907991) (not e!773608))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92687 0))(
  ( (array!92688 (arr!44769 (Array (_ BitVec 32) (_ BitVec 64))) (size!45320 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92687)

(assert (=> b!1364181 (= res!907991 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45320 a!3742)))))

(declare-fun b!1364182 () Bool)

(declare-fun res!907985 () Bool)

(assert (=> b!1364182 (=> (not res!907985) (not e!773608))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1364182 (= res!907985 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45320 a!3742))))))

(declare-fun b!1364183 () Bool)

(declare-fun res!907989 () Bool)

(assert (=> b!1364183 (=> (not res!907989) (not e!773608))))

(declare-datatypes ((List!31990 0))(
  ( (Nil!31987) (Cons!31986 (h!33195 (_ BitVec 64)) (t!46691 List!31990)) )
))
(declare-fun acc!759 () List!31990)

(declare-fun contains!9555 (List!31990 (_ BitVec 64)) Bool)

(assert (=> b!1364183 (= res!907989 (not (contains!9555 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364184 () Bool)

(declare-fun res!907986 () Bool)

(assert (=> b!1364184 (=> (not res!907986) (not e!773608))))

(assert (=> b!1364184 (= res!907986 (not (contains!9555 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!907992 () Bool)

(assert (=> start!115194 (=> (not res!907992) (not e!773608))))

(assert (=> start!115194 (= res!907992 (and (bvslt (size!45320 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45320 a!3742))))))

(assert (=> start!115194 e!773608))

(assert (=> start!115194 true))

(declare-fun array_inv!33714 (array!92687) Bool)

(assert (=> start!115194 (array_inv!33714 a!3742)))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun b!1364185 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92687 (_ BitVec 32) List!31990) Bool)

(assert (=> b!1364185 (= e!773608 (not (arrayNoDuplicates!0 (array!92688 (store (arr!44769 a!3742) i!1404 l!3587) (size!45320 a!3742)) from!3120 acc!759)))))

(declare-fun b!1364186 () Bool)

(declare-fun res!907984 () Bool)

(assert (=> b!1364186 (=> (not res!907984) (not e!773608))))

(assert (=> b!1364186 (= res!907984 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31987))))

(declare-fun b!1364187 () Bool)

(declare-fun res!907987 () Bool)

(assert (=> b!1364187 (=> (not res!907987) (not e!773608))))

(declare-fun noDuplicate!2434 (List!31990) Bool)

(assert (=> b!1364187 (= res!907987 (noDuplicate!2434 acc!759))))

(declare-fun b!1364188 () Bool)

(declare-fun res!907990 () Bool)

(assert (=> b!1364188 (=> (not res!907990) (not e!773608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1364188 (= res!907990 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1364189 () Bool)

(declare-fun res!907988 () Bool)

(assert (=> b!1364189 (=> (not res!907988) (not e!773608))))

(assert (=> b!1364189 (= res!907988 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!115194 res!907992) b!1364187))

(assert (= (and b!1364187 res!907987) b!1364184))

(assert (= (and b!1364184 res!907986) b!1364183))

(assert (= (and b!1364183 res!907989) b!1364186))

(assert (= (and b!1364186 res!907984) b!1364189))

(assert (= (and b!1364189 res!907988) b!1364182))

(assert (= (and b!1364182 res!907985) b!1364188))

(assert (= (and b!1364188 res!907990) b!1364181))

(assert (= (and b!1364181 res!907991) b!1364185))

(declare-fun m!1248901 () Bool)

(assert (=> b!1364183 m!1248901))

(declare-fun m!1248903 () Bool)

(assert (=> b!1364188 m!1248903))

(declare-fun m!1248905 () Bool)

(assert (=> b!1364185 m!1248905))

(declare-fun m!1248907 () Bool)

(assert (=> b!1364185 m!1248907))

(declare-fun m!1248909 () Bool)

(assert (=> b!1364189 m!1248909))

(declare-fun m!1248911 () Bool)

(assert (=> start!115194 m!1248911))

(declare-fun m!1248913 () Bool)

(assert (=> b!1364184 m!1248913))

(declare-fun m!1248915 () Bool)

(assert (=> b!1364187 m!1248915))

(declare-fun m!1248917 () Bool)

(assert (=> b!1364186 m!1248917))

(push 1)

(assert (not b!1364189))

(assert (not b!1364187))

(assert (not b!1364186))

(assert (not b!1364184))

(assert (not b!1364183))

(assert (not b!1364185))

(assert (not start!115194))

(assert (not b!1364188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146195 () Bool)

(assert (=> d!146195 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1364188 d!146195))

(declare-fun d!146201 () Bool)

(declare-fun lt!600966 () Bool)

(declare-fun content!717 (List!31990) (Set (_ BitVec 64)))

(assert (=> d!146201 (= lt!600966 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!717 acc!759)))))

(declare-fun e!773649 () Bool)

(assert (=> d!146201 (= lt!600966 e!773649)))

(declare-fun res!908029 () Bool)

(assert (=> d!146201 (=> (not res!908029) (not e!773649))))

(assert (=> d!146201 (= res!908029 (is-Cons!31986 acc!759))))

(assert (=> d!146201 (= (contains!9555 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600966)))

(declare-fun b!1364234 () Bool)

(declare-fun e!773650 () Bool)

(assert (=> b!1364234 (= e!773649 e!773650)))

(declare-fun res!908030 () Bool)

(assert (=> b!1364234 (=> res!908030 e!773650)))

(assert (=> b!1364234 (= res!908030 (= (h!33195 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364235 () Bool)

(assert (=> b!1364235 (= e!773650 (contains!9555 (t!46691 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146201 res!908029) b!1364234))

(assert (= (and b!1364234 (not res!908030)) b!1364235))

(declare-fun m!1248953 () Bool)

(assert (=> d!146201 m!1248953))

(declare-fun m!1248957 () Bool)

(assert (=> d!146201 m!1248957))

(declare-fun m!1248959 () Bool)

(assert (=> b!1364235 m!1248959))

(assert (=> b!1364183 d!146201))

(declare-fun d!146213 () Bool)

(declare-fun res!908057 () Bool)

(declare-fun e!773685 () Bool)

(assert (=> d!146213 (=> res!908057 e!773685)))

(assert (=> d!146213 (= res!908057 (bvsge from!3120 (size!45320 a!3742)))))

(assert (=> d!146213 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!773685)))

(declare-fun b!1364274 () Bool)

(declare-fun e!773684 () Bool)

(declare-fun e!773683 () Bool)

(assert (=> b!1364274 (= e!773684 e!773683)))

(declare-fun c!127551 () Bool)

(assert (=> b!1364274 (= c!127551 (validKeyInArray!0 (select (arr!44769 a!3742) from!3120)))))

(declare-fun b!1364275 () Bool)

(assert (=> b!1364275 (= e!773685 e!773684)))

(declare-fun res!908059 () Bool)

(assert (=> b!1364275 (=> (not res!908059) (not e!773684))))

(declare-fun e!773686 () Bool)

(assert (=> b!1364275 (= res!908059 (not e!773686))))

(declare-fun res!908058 () Bool)

(assert (=> b!1364275 (=> (not res!908058) (not e!773686))))

(assert (=> b!1364275 (= res!908058 (validKeyInArray!0 (select (arr!44769 a!3742) from!3120)))))

(declare-fun b!1364276 () Bool)

(assert (=> b!1364276 (= e!773686 (contains!9555 acc!759 (select (arr!44769 a!3742) from!3120)))))

(declare-fun b!1364277 () Bool)

(declare-fun call!65442 () Bool)

(assert (=> b!1364277 (= e!773683 call!65442)))

(declare-fun b!1364278 () Bool)

(assert (=> b!1364278 (= e!773683 call!65442)))

(declare-fun bm!65439 () Bool)

(assert (=> bm!65439 (= call!65442 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127551 (Cons!31986 (select (arr!44769 a!3742) from!3120) acc!759) acc!759)))))

(assert (= (and d!146213 (not res!908057)) b!1364275))

(assert (= (and b!1364275 res!908058) b!1364276))

(assert (= (and b!1364275 res!908059) b!1364274))

(assert (= (and b!1364274 c!127551) b!1364278))

(assert (= (and b!1364274 (not c!127551)) b!1364277))

(assert (= (or b!1364278 b!1364277) bm!65439))

(declare-fun m!1248985 () Bool)

(assert (=> b!1364274 m!1248985))

(assert (=> b!1364274 m!1248985))

(declare-fun m!1248987 () Bool)

(assert (=> b!1364274 m!1248987))

(assert (=> b!1364275 m!1248985))

(assert (=> b!1364275 m!1248985))

(assert (=> b!1364275 m!1248987))

(assert (=> b!1364276 m!1248985))

(assert (=> b!1364276 m!1248985))

(declare-fun m!1248989 () Bool)

(assert (=> b!1364276 m!1248989))

(assert (=> bm!65439 m!1248985))

(declare-fun m!1248991 () Bool)

(assert (=> bm!65439 m!1248991))

(assert (=> b!1364189 d!146213))

(declare-fun d!146221 () Bool)

(declare-fun res!908070 () Bool)

(declare-fun e!773699 () Bool)

(assert (=> d!146221 (=> res!908070 e!773699)))

(assert (=> d!146221 (= res!908070 (is-Nil!31987 acc!759))))

(assert (=> d!146221 (= (noDuplicate!2434 acc!759) e!773699)))

(declare-fun b!1364293 () Bool)

(declare-fun e!773700 () Bool)

(assert (=> b!1364293 (= e!773699 e!773700)))

(declare-fun res!908071 () Bool)

(assert (=> b!1364293 (=> (not res!908071) (not e!773700))))

(assert (=> b!1364293 (= res!908071 (not (contains!9555 (t!46691 acc!759) (h!33195 acc!759))))))

(declare-fun b!1364294 () Bool)

(assert (=> b!1364294 (= e!773700 (noDuplicate!2434 (t!46691 acc!759)))))

(assert (= (and d!146221 (not res!908070)) b!1364293))

(assert (= (and b!1364293 res!908071) b!1364294))

(declare-fun m!1249009 () Bool)

(assert (=> b!1364293 m!1249009))

(declare-fun m!1249011 () Bool)

(assert (=> b!1364294 m!1249011))

(assert (=> b!1364187 d!146221))

(declare-fun d!146229 () Bool)

(assert (=> d!146229 (= (array_inv!33714 a!3742) (bvsge (size!45320 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!115194 d!146229))

(declare-fun d!146231 () Bool)

(declare-fun res!908072 () Bool)

(declare-fun e!773703 () Bool)

(assert (=> d!146231 (=> res!908072 e!773703)))

(assert (=> d!146231 (= res!908072 (bvsge #b00000000000000000000000000000000 (size!45320 a!3742)))))

(assert (=> d!146231 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31987) e!773703)))

(declare-fun b!1364295 () Bool)

(declare-fun e!773702 () Bool)

(declare-fun e!773701 () Bool)

(assert (=> b!1364295 (= e!773702 e!773701)))

(declare-fun c!127554 () Bool)

(assert (=> b!1364295 (= c!127554 (validKeyInArray!0 (select (arr!44769 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364296 () Bool)

(assert (=> b!1364296 (= e!773703 e!773702)))

(declare-fun res!908074 () Bool)

(assert (=> b!1364296 (=> (not res!908074) (not e!773702))))

(declare-fun e!773704 () Bool)

(assert (=> b!1364296 (= res!908074 (not e!773704))))

(declare-fun res!908073 () Bool)

(assert (=> b!1364296 (=> (not res!908073) (not e!773704))))

(assert (=> b!1364296 (= res!908073 (validKeyInArray!0 (select (arr!44769 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364297 () Bool)

(assert (=> b!1364297 (= e!773704 (contains!9555 Nil!31987 (select (arr!44769 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1364298 () Bool)

(declare-fun call!65445 () Bool)

(assert (=> b!1364298 (= e!773701 call!65445)))

(declare-fun b!1364299 () Bool)

(assert (=> b!1364299 (= e!773701 call!65445)))

(declare-fun bm!65442 () Bool)

(assert (=> bm!65442 (= call!65445 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127554 (Cons!31986 (select (arr!44769 a!3742) #b00000000000000000000000000000000) Nil!31987) Nil!31987)))))

(assert (= (and d!146231 (not res!908072)) b!1364296))

(assert (= (and b!1364296 res!908073) b!1364297))

(assert (= (and b!1364296 res!908074) b!1364295))

(assert (= (and b!1364295 c!127554) b!1364299))

(assert (= (and b!1364295 (not c!127554)) b!1364298))

(assert (= (or b!1364299 b!1364298) bm!65442))

(declare-fun m!1249013 () Bool)

(assert (=> b!1364295 m!1249013))

(assert (=> b!1364295 m!1249013))

(declare-fun m!1249015 () Bool)

(assert (=> b!1364295 m!1249015))

(assert (=> b!1364296 m!1249013))

(assert (=> b!1364296 m!1249013))

(assert (=> b!1364296 m!1249015))

(assert (=> b!1364297 m!1249013))

(assert (=> b!1364297 m!1249013))

(declare-fun m!1249017 () Bool)

(assert (=> b!1364297 m!1249017))

(assert (=> bm!65442 m!1249013))

(declare-fun m!1249019 () Bool)

(assert (=> bm!65442 m!1249019))

(assert (=> b!1364186 d!146231))

(declare-fun d!146233 () Bool)

(declare-fun lt!600968 () Bool)

(assert (=> d!146233 (= lt!600968 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!717 acc!759)))))

(declare-fun e!773705 () Bool)

(assert (=> d!146233 (= lt!600968 e!773705)))

(declare-fun res!908075 () Bool)

(assert (=> d!146233 (=> (not res!908075) (not e!773705))))

(assert (=> d!146233 (= res!908075 (is-Cons!31986 acc!759))))

(assert (=> d!146233 (= (contains!9555 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600968)))

(declare-fun b!1364300 () Bool)

(declare-fun e!773706 () Bool)

(assert (=> b!1364300 (= e!773705 e!773706)))

(declare-fun res!908076 () Bool)

(assert (=> b!1364300 (=> res!908076 e!773706)))

(assert (=> b!1364300 (= res!908076 (= (h!33195 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1364301 () Bool)

(assert (=> b!1364301 (= e!773706 (contains!9555 (t!46691 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146233 res!908075) b!1364300))

(assert (= (and b!1364300 (not res!908076)) b!1364301))

(assert (=> d!146233 m!1248953))

(declare-fun m!1249021 () Bool)

(assert (=> d!146233 m!1249021))

(declare-fun m!1249023 () Bool)

(assert (=> b!1364301 m!1249023))

(assert (=> b!1364184 d!146233))

(declare-fun d!146235 () Bool)

(declare-fun res!908077 () Bool)

(declare-fun e!773709 () Bool)

(assert (=> d!146235 (=> res!908077 e!773709)))

(assert (=> d!146235 (= res!908077 (bvsge from!3120 (size!45320 (array!92688 (store (arr!44769 a!3742) i!1404 l!3587) (size!45320 a!3742)))))))

(assert (=> d!146235 (= (arrayNoDuplicates!0 (array!92688 (store (arr!44769 a!3742) i!1404 l!3587) (size!45320 a!3742)) from!3120 acc!759) e!773709)))

(declare-fun b!1364302 () Bool)

(declare-fun e!773708 () Bool)

(declare-fun e!773707 () Bool)

(assert (=> b!1364302 (= e!773708 e!773707)))

(declare-fun c!127555 () Bool)

(assert (=> b!1364302 (= c!127555 (validKeyInArray!0 (select (arr!44769 (array!92688 (store (arr!44769 a!3742) i!1404 l!3587) (size!45320 a!3742))) from!3120)))))

(declare-fun b!1364303 () Bool)

(assert (=> b!1364303 (= e!773709 e!773708)))

(declare-fun res!908079 () Bool)

(assert (=> b!1364303 (=> (not res!908079) (not e!773708))))

(declare-fun e!773710 () Bool)

(assert (=> b!1364303 (= res!908079 (not e!773710))))

(declare-fun res!908078 () Bool)

(assert (=> b!1364303 (=> (not res!908078) (not e!773710))))

(assert (=> b!1364303 (= res!908078 (validKeyInArray!0 (select (arr!44769 (array!92688 (store (arr!44769 a!3742) i!1404 l!3587) (size!45320 a!3742))) from!3120)))))

(declare-fun b!1364304 () Bool)

(assert (=> b!1364304 (= e!773710 (contains!9555 acc!759 (select (arr!44769 (array!92688 (store (arr!44769 a!3742) i!1404 l!3587) (size!45320 a!3742))) from!3120)))))

(declare-fun b!1364305 () Bool)

(declare-fun call!65446 () Bool)

(assert (=> b!1364305 (= e!773707 call!65446)))

(declare-fun b!1364306 () Bool)

(assert (=> b!1364306 (= e!773707 call!65446)))

(declare-fun bm!65443 () Bool)

(assert (=> bm!65443 (= call!65446 (arrayNoDuplicates!0 (array!92688 (store (arr!44769 a!3742) i!1404 l!3587) (size!45320 a!3742)) (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127555 (Cons!31986 (select (arr!44769 (array!92688 (store (arr!44769 a!3742) i!1404 l!3587) (size!45320 a!3742))) from!3120) acc!759) acc!759)))))

(assert (= (and d!146235 (not res!908077)) b!1364303))

(assert (= (and b!1364303 res!908078) b!1364304))

(assert (= (and b!1364303 res!908079) b!1364302))

(assert (= (and b!1364302 c!127555) b!1364306))

(assert (= (and b!1364302 (not c!127555)) b!1364305))

(assert (= (or b!1364306 b!1364305) bm!65443))

(declare-fun m!1249025 () Bool)

(assert (=> b!1364302 m!1249025))

(assert (=> b!1364302 m!1249025))

(declare-fun m!1249027 () Bool)

(assert (=> b!1364302 m!1249027))

(assert (=> b!1364303 m!1249025))

(assert (=> b!1364303 m!1249025))

(assert (=> b!1364303 m!1249027))

(assert (=> b!1364304 m!1249025))

(assert (=> b!1364304 m!1249025))

(declare-fun m!1249029 () Bool)

(assert (=> b!1364304 m!1249029))

(assert (=> bm!65443 m!1249025))

(declare-fun m!1249031 () Bool)

(assert (=> bm!65443 m!1249031))

(assert (=> b!1364185 d!146235))

(push 1)

(assert (not b!1364293))

(assert (not b!1364302))

(assert (not b!1364297))

(assert (not b!1364295))

(assert (not b!1364235))

(assert (not bm!65442))

(assert (not b!1364294))

(assert (not d!146201))

(assert (not bm!65439))

(assert (not bm!65443))

(assert (not b!1364275))

(assert (not b!1364296))

(assert (not b!1364274))

(assert (not b!1364301))

(assert (not d!146233))

(assert (not b!1364276))

(assert (not b!1364303))

(assert (not b!1364304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146275 () Bool)

(declare-fun c!127569 () Bool)

(assert (=> d!146275 (= c!127569 (is-Nil!31987 acc!759))))

(declare-fun e!773757 () (Set (_ BitVec 64)))

(assert (=> d!146275 (= (content!717 acc!759) e!773757)))

(declare-fun b!1364366 () Bool)

(assert (=> b!1364366 (= e!773757 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!1364367 () Bool)

(assert (=> b!1364367 (= e!773757 (union (insert (h!33195 acc!759) (as emptyset (Set (_ BitVec 64)))) (content!717 (t!46691 acc!759))))))

(assert (= (and d!146275 c!127569) b!1364366))

(assert (= (and d!146275 (not c!127569)) b!1364367))

(declare-fun m!1249113 () Bool)

(assert (=> b!1364367 m!1249113))

(declare-fun m!1249115 () Bool)

(assert (=> b!1364367 m!1249115))

(assert (=> d!146233 d!146275))

(declare-fun d!146279 () Bool)

(declare-fun res!908113 () Bool)

(declare-fun e!773760 () Bool)

(assert (=> d!146279 (=> res!908113 e!773760)))

(assert (=> d!146279 (= res!908113 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!45320 a!3742)))))

(assert (=> d!146279 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127554 (Cons!31986 (select (arr!44769 a!3742) #b00000000000000000000000000000000) Nil!31987) Nil!31987)) e!773760)))

(declare-fun b!1364368 () Bool)

(declare-fun e!773759 () Bool)

(declare-fun e!773758 () Bool)

(assert (=> b!1364368 (= e!773759 e!773758)))

(declare-fun c!127570 () Bool)

(assert (=> b!1364368 (= c!127570 (validKeyInArray!0 (select (arr!44769 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1364369 () Bool)

(assert (=> b!1364369 (= e!773760 e!773759)))

(declare-fun res!908115 () Bool)

(assert (=> b!1364369 (=> (not res!908115) (not e!773759))))

(declare-fun e!773761 () Bool)

(assert (=> b!1364369 (= res!908115 (not e!773761))))

(declare-fun res!908114 () Bool)

(assert (=> b!1364369 (=> (not res!908114) (not e!773761))))

(assert (=> b!1364369 (= res!908114 (validKeyInArray!0 (select (arr!44769 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1364370 () Bool)

(assert (=> b!1364370 (= e!773761 (contains!9555 (ite c!127554 (Cons!31986 (select (arr!44769 a!3742) #b00000000000000000000000000000000) Nil!31987) Nil!31987) (select (arr!44769 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1364371 () Bool)

(declare-fun call!65452 () Bool)

(assert (=> b!1364371 (= e!773758 call!65452)))

(declare-fun b!1364372 () Bool)

(assert (=> b!1364372 (= e!773758 call!65452)))

(declare-fun bm!65449 () Bool)

(assert (=> bm!65449 (= call!65452 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!127570 (Cons!31986 (select (arr!44769 a!3742) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!127554 (Cons!31986 (select (arr!44769 a!3742) #b00000000000000000000000000000000) Nil!31987) Nil!31987)) (ite c!127554 (Cons!31986 (select (arr!44769 a!3742) #b00000000000000000000000000000000) Nil!31987) Nil!31987))))))

(assert (= (and d!146279 (not res!908113)) b!1364369))

(assert (= (and b!1364369 res!908114) b!1364370))

(assert (= (and b!1364369 res!908115) b!1364368))

(assert (= (and b!1364368 c!127570) b!1364372))

(assert (= (and b!1364368 (not c!127570)) b!1364371))

(assert (= (or b!1364372 b!1364371) bm!65449))

(declare-fun m!1249123 () Bool)

(assert (=> b!1364368 m!1249123))

(assert (=> b!1364368 m!1249123))

(declare-fun m!1249127 () Bool)

(assert (=> b!1364368 m!1249127))

(assert (=> b!1364369 m!1249123))

(assert (=> b!1364369 m!1249123))

(assert (=> b!1364369 m!1249127))

(assert (=> b!1364370 m!1249123))

(assert (=> b!1364370 m!1249123))

(declare-fun m!1249131 () Bool)

(assert (=> b!1364370 m!1249131))

(assert (=> bm!65449 m!1249123))

(declare-fun m!1249133 () Bool)

(assert (=> bm!65449 m!1249133))

(assert (=> bm!65442 d!146279))

(declare-fun d!146285 () Bool)

(declare-fun lt!600978 () Bool)

(assert (=> d!146285 (= lt!600978 (member (select (arr!44769 a!3742) from!3120) (content!717 acc!759)))))

(declare-fun e!773766 () Bool)

(assert (=> d!146285 (= lt!600978 e!773766)))

(declare-fun res!908120 () Bool)

(assert (=> d!146285 (=> (not res!908120) (not e!773766))))

(assert (=> d!146285 (= res!908120 (is-Cons!31986 acc!759))))

(assert (=> d!146285 (= (contains!9555 acc!759 (select (arr!44769 a!3742) from!3120)) lt!600978)))

(declare-fun b!1364377 () Bool)

(declare-fun e!773767 () Bool)

(assert (=> b!1364377 (= e!773766 e!773767)))

(declare-fun res!908121 () Bool)

(assert (=> b!1364377 (=> res!908121 e!773767)))

(assert (=> b!1364377 (= res!908121 (= (h!33195 acc!759) (select (arr!44769 a!3742) from!3120)))))

(declare-fun b!1364378 () Bool)

(assert (=> b!1364378 (= e!773767 (contains!9555 (t!46691 acc!759) (select (arr!44769 a!3742) from!3120)))))

(assert (= (and d!146285 res!908120) b!1364377))

(assert (= (and b!1364377 (not res!908121)) b!1364378))

(assert (=> d!146285 m!1248953))

(assert (=> d!146285 m!1248985))

(declare-fun m!1249139 () Bool)

(assert (=> d!146285 m!1249139))

(assert (=> b!1364378 m!1248985))

(declare-fun m!1249141 () Bool)

(assert (=> b!1364378 m!1249141))

(assert (=> b!1364276 d!146285))

(declare-fun d!146289 () Bool)

(declare-fun lt!600980 () Bool)

(assert (=> d!146289 (= lt!600980 (member (h!33195 acc!759) (content!717 (t!46691 acc!759))))))

(declare-fun e!773770 () Bool)

(assert (=> d!146289 (= lt!600980 e!773770)))

(declare-fun res!908124 () Bool)

(assert (=> d!146289 (=> (not res!908124) (not e!773770))))

(assert (=> d!146289 (= res!908124 (is-Cons!31986 (t!46691 acc!759)))))

(assert (=> d!146289 (= (contains!9555 (t!46691 acc!759) (h!33195 acc!759)) lt!600980)))

(declare-fun b!1364381 () Bool)

(declare-fun e!773771 () Bool)

(assert (=> b!1364381 (= e!773770 e!773771)))

(declare-fun res!908125 () Bool)

