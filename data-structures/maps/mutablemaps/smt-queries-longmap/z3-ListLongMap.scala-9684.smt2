; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114280 () Bool)

(assert start!114280)

(declare-fun b!1357132 () Bool)

(declare-fun res!902012 () Bool)

(declare-fun e!770254 () Bool)

(assert (=> b!1357132 (=> (not res!902012) (not e!770254))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92385 0))(
  ( (array!92386 (arr!44636 (Array (_ BitVec 32) (_ BitVec 64))) (size!45187 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92385)

(assert (=> b!1357132 (= res!902012 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45187 a!3742))))))

(declare-fun b!1357133 () Bool)

(declare-fun e!770253 () Bool)

(assert (=> b!1357133 (= e!770254 (not e!770253))))

(declare-fun res!902016 () Bool)

(assert (=> b!1357133 (=> res!902016 e!770253)))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1357133 (= res!902016 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31857 0))(
  ( (Nil!31854) (Cons!31853 (h!33062 (_ BitVec 64)) (t!46522 List!31857)) )
))
(declare-fun acc!759 () List!31857)

(declare-fun subseq!813 (List!31857 List!31857) Bool)

(assert (=> b!1357133 (subseq!813 acc!759 acc!759)))

(declare-datatypes ((Unit!44605 0))(
  ( (Unit!44606) )
))
(declare-fun lt!599063 () Unit!44605)

(declare-fun lemmaListSubSeqRefl!0 (List!31857) Unit!44605)

(assert (=> b!1357133 (= lt!599063 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357134 () Bool)

(declare-fun res!902010 () Bool)

(assert (=> b!1357134 (=> (not res!902010) (not e!770254))))

(declare-fun arrayNoDuplicates!0 (array!92385 (_ BitVec 32) List!31857) Bool)

(assert (=> b!1357134 (= res!902010 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31854))))

(declare-fun b!1357135 () Bool)

(declare-fun res!902013 () Bool)

(assert (=> b!1357135 (=> (not res!902013) (not e!770254))))

(declare-fun contains!9422 (List!31857 (_ BitVec 64)) Bool)

(assert (=> b!1357135 (= res!902013 (not (contains!9422 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357136 () Bool)

(declare-fun res!902017 () Bool)

(assert (=> b!1357136 (=> (not res!902017) (not e!770254))))

(assert (=> b!1357136 (= res!902017 (not (contains!9422 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357137 () Bool)

(declare-fun noDuplicate!2301 (List!31857) Bool)

(declare-fun $colon$colon!818 (List!31857 (_ BitVec 64)) List!31857)

(assert (=> b!1357137 (= e!770253 (noDuplicate!2301 ($colon$colon!818 acc!759 (select (arr!44636 a!3742) from!3120))))))

(declare-fun res!902018 () Bool)

(assert (=> start!114280 (=> (not res!902018) (not e!770254))))

(assert (=> start!114280 (= res!902018 (and (bvslt (size!45187 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45187 a!3742))))))

(assert (=> start!114280 e!770254))

(assert (=> start!114280 true))

(declare-fun array_inv!33581 (array!92385) Bool)

(assert (=> start!114280 (array_inv!33581 a!3742)))

(declare-fun b!1357138 () Bool)

(declare-fun res!902019 () Bool)

(assert (=> b!1357138 (=> (not res!902019) (not e!770254))))

(assert (=> b!1357138 (= res!902019 (noDuplicate!2301 acc!759))))

(declare-fun b!1357139 () Bool)

(declare-fun res!902014 () Bool)

(assert (=> b!1357139 (=> (not res!902014) (not e!770254))))

(assert (=> b!1357139 (= res!902014 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357140 () Bool)

(declare-fun res!902009 () Bool)

(assert (=> b!1357140 (=> (not res!902009) (not e!770254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357140 (= res!902009 (validKeyInArray!0 (select (arr!44636 a!3742) from!3120)))))

(declare-fun b!1357141 () Bool)

(declare-fun res!902011 () Bool)

(assert (=> b!1357141 (=> (not res!902011) (not e!770254))))

(assert (=> b!1357141 (= res!902011 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45187 a!3742)))))

(declare-fun b!1357142 () Bool)

(declare-fun res!902015 () Bool)

(assert (=> b!1357142 (=> (not res!902015) (not e!770254))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357142 (= res!902015 (not (validKeyInArray!0 l!3587)))))

(assert (= (and start!114280 res!902018) b!1357138))

(assert (= (and b!1357138 res!902019) b!1357136))

(assert (= (and b!1357136 res!902017) b!1357135))

(assert (= (and b!1357135 res!902013) b!1357134))

(assert (= (and b!1357134 res!902010) b!1357139))

(assert (= (and b!1357139 res!902014) b!1357132))

(assert (= (and b!1357132 res!902012) b!1357142))

(assert (= (and b!1357142 res!902015) b!1357141))

(assert (= (and b!1357141 res!902011) b!1357140))

(assert (= (and b!1357140 res!902009) b!1357133))

(assert (= (and b!1357133 (not res!902016)) b!1357137))

(declare-fun m!1242963 () Bool)

(assert (=> b!1357133 m!1242963))

(declare-fun m!1242965 () Bool)

(assert (=> b!1357133 m!1242965))

(declare-fun m!1242967 () Bool)

(assert (=> b!1357137 m!1242967))

(assert (=> b!1357137 m!1242967))

(declare-fun m!1242969 () Bool)

(assert (=> b!1357137 m!1242969))

(assert (=> b!1357137 m!1242969))

(declare-fun m!1242971 () Bool)

(assert (=> b!1357137 m!1242971))

(declare-fun m!1242973 () Bool)

(assert (=> b!1357138 m!1242973))

(declare-fun m!1242975 () Bool)

(assert (=> b!1357136 m!1242975))

(assert (=> b!1357140 m!1242967))

(assert (=> b!1357140 m!1242967))

(declare-fun m!1242977 () Bool)

(assert (=> b!1357140 m!1242977))

(declare-fun m!1242979 () Bool)

(assert (=> start!114280 m!1242979))

(declare-fun m!1242981 () Bool)

(assert (=> b!1357142 m!1242981))

(declare-fun m!1242983 () Bool)

(assert (=> b!1357139 m!1242983))

(declare-fun m!1242985 () Bool)

(assert (=> b!1357135 m!1242985))

(declare-fun m!1242987 () Bool)

(assert (=> b!1357134 m!1242987))

(check-sat (not b!1357139) (not b!1357134) (not b!1357140) (not b!1357133) (not b!1357142) (not b!1357136) (not b!1357137) (not b!1357138) (not b!1357135) (not start!114280))
(check-sat)
(get-model)

(declare-fun d!145003 () Bool)

(assert (=> d!145003 (= (array_inv!33581 a!3742) (bvsge (size!45187 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114280 d!145003))

(declare-fun bm!65236 () Bool)

(declare-fun c!127006 () Bool)

(declare-fun call!65239 () Bool)

(assert (=> bm!65236 (= call!65239 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127006 (Cons!31853 (select (arr!44636 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1357186 () Bool)

(declare-fun e!770275 () Bool)

(assert (=> b!1357186 (= e!770275 call!65239)))

(declare-fun b!1357187 () Bool)

(declare-fun e!770273 () Bool)

(assert (=> b!1357187 (= e!770273 e!770275)))

(assert (=> b!1357187 (= c!127006 (validKeyInArray!0 (select (arr!44636 a!3742) from!3120)))))

(declare-fun d!145005 () Bool)

(declare-fun res!902061 () Bool)

(declare-fun e!770274 () Bool)

(assert (=> d!145005 (=> res!902061 e!770274)))

(assert (=> d!145005 (= res!902061 (bvsge from!3120 (size!45187 a!3742)))))

(assert (=> d!145005 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770274)))

(declare-fun b!1357188 () Bool)

(assert (=> b!1357188 (= e!770275 call!65239)))

(declare-fun b!1357189 () Bool)

(declare-fun e!770272 () Bool)

(assert (=> b!1357189 (= e!770272 (contains!9422 acc!759 (select (arr!44636 a!3742) from!3120)))))

(declare-fun b!1357190 () Bool)

(assert (=> b!1357190 (= e!770274 e!770273)))

(declare-fun res!902060 () Bool)

(assert (=> b!1357190 (=> (not res!902060) (not e!770273))))

(assert (=> b!1357190 (= res!902060 (not e!770272))))

(declare-fun res!902059 () Bool)

(assert (=> b!1357190 (=> (not res!902059) (not e!770272))))

(assert (=> b!1357190 (= res!902059 (validKeyInArray!0 (select (arr!44636 a!3742) from!3120)))))

(assert (= (and d!145005 (not res!902061)) b!1357190))

(assert (= (and b!1357190 res!902059) b!1357189))

(assert (= (and b!1357190 res!902060) b!1357187))

(assert (= (and b!1357187 c!127006) b!1357188))

(assert (= (and b!1357187 (not c!127006)) b!1357186))

(assert (= (or b!1357188 b!1357186) bm!65236))

(assert (=> bm!65236 m!1242967))

(declare-fun m!1243015 () Bool)

(assert (=> bm!65236 m!1243015))

(assert (=> b!1357187 m!1242967))

(assert (=> b!1357187 m!1242967))

(assert (=> b!1357187 m!1242977))

(assert (=> b!1357189 m!1242967))

(assert (=> b!1357189 m!1242967))

(declare-fun m!1243017 () Bool)

(assert (=> b!1357189 m!1243017))

(assert (=> b!1357190 m!1242967))

(assert (=> b!1357190 m!1242967))

(assert (=> b!1357190 m!1242977))

(assert (=> b!1357139 d!145005))

(declare-fun d!145007 () Bool)

(declare-fun res!902066 () Bool)

(declare-fun e!770280 () Bool)

(assert (=> d!145007 (=> res!902066 e!770280)))

(get-info :version)

(assert (=> d!145007 (= res!902066 ((_ is Nil!31854) acc!759))))

(assert (=> d!145007 (= (noDuplicate!2301 acc!759) e!770280)))

(declare-fun b!1357195 () Bool)

(declare-fun e!770281 () Bool)

(assert (=> b!1357195 (= e!770280 e!770281)))

(declare-fun res!902067 () Bool)

(assert (=> b!1357195 (=> (not res!902067) (not e!770281))))

(assert (=> b!1357195 (= res!902067 (not (contains!9422 (t!46522 acc!759) (h!33062 acc!759))))))

(declare-fun b!1357196 () Bool)

(assert (=> b!1357196 (= e!770281 (noDuplicate!2301 (t!46522 acc!759)))))

(assert (= (and d!145007 (not res!902066)) b!1357195))

(assert (= (and b!1357195 res!902067) b!1357196))

(declare-fun m!1243019 () Bool)

(assert (=> b!1357195 m!1243019))

(declare-fun m!1243021 () Bool)

(assert (=> b!1357196 m!1243021))

(assert (=> b!1357138 d!145007))

(declare-fun b!1357217 () Bool)

(declare-fun e!770301 () Bool)

(assert (=> b!1357217 (= e!770301 (subseq!813 (t!46522 acc!759) (t!46522 acc!759)))))

(declare-fun d!145011 () Bool)

(declare-fun res!902083 () Bool)

(declare-fun e!770298 () Bool)

(assert (=> d!145011 (=> res!902083 e!770298)))

(assert (=> d!145011 (= res!902083 ((_ is Nil!31854) acc!759))))

(assert (=> d!145011 (= (subseq!813 acc!759 acc!759) e!770298)))

(declare-fun b!1357216 () Bool)

(declare-fun e!770299 () Bool)

(declare-fun e!770300 () Bool)

(assert (=> b!1357216 (= e!770299 e!770300)))

(declare-fun res!902082 () Bool)

(assert (=> b!1357216 (=> res!902082 e!770300)))

(assert (=> b!1357216 (= res!902082 e!770301)))

(declare-fun res!902085 () Bool)

(assert (=> b!1357216 (=> (not res!902085) (not e!770301))))

(assert (=> b!1357216 (= res!902085 (= (h!33062 acc!759) (h!33062 acc!759)))))

(declare-fun b!1357215 () Bool)

(assert (=> b!1357215 (= e!770298 e!770299)))

(declare-fun res!902084 () Bool)

(assert (=> b!1357215 (=> (not res!902084) (not e!770299))))

(assert (=> b!1357215 (= res!902084 ((_ is Cons!31853) acc!759))))

(declare-fun b!1357218 () Bool)

(assert (=> b!1357218 (= e!770300 (subseq!813 acc!759 (t!46522 acc!759)))))

(assert (= (and d!145011 (not res!902083)) b!1357215))

(assert (= (and b!1357215 res!902084) b!1357216))

(assert (= (and b!1357216 res!902085) b!1357217))

(assert (= (and b!1357216 (not res!902082)) b!1357218))

(declare-fun m!1243023 () Bool)

(assert (=> b!1357217 m!1243023))

(declare-fun m!1243025 () Bool)

(assert (=> b!1357218 m!1243025))

(assert (=> b!1357133 d!145011))

(declare-fun d!145015 () Bool)

(assert (=> d!145015 (subseq!813 acc!759 acc!759)))

(declare-fun lt!599069 () Unit!44605)

(declare-fun choose!36 (List!31857) Unit!44605)

(assert (=> d!145015 (= lt!599069 (choose!36 acc!759))))

(assert (=> d!145015 (= (lemmaListSubSeqRefl!0 acc!759) lt!599069)))

(declare-fun bs!38921 () Bool)

(assert (= bs!38921 d!145015))

(assert (=> bs!38921 m!1242963))

(declare-fun m!1243027 () Bool)

(assert (=> bs!38921 m!1243027))

(assert (=> b!1357133 d!145015))

(declare-fun d!145017 () Bool)

(assert (=> d!145017 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357142 d!145017))

(declare-fun d!145021 () Bool)

(declare-fun res!902095 () Bool)

(declare-fun e!770314 () Bool)

(assert (=> d!145021 (=> res!902095 e!770314)))

(assert (=> d!145021 (= res!902095 ((_ is Nil!31854) ($colon$colon!818 acc!759 (select (arr!44636 a!3742) from!3120))))))

(assert (=> d!145021 (= (noDuplicate!2301 ($colon$colon!818 acc!759 (select (arr!44636 a!3742) from!3120))) e!770314)))

(declare-fun b!1357234 () Bool)

(declare-fun e!770315 () Bool)

(assert (=> b!1357234 (= e!770314 e!770315)))

(declare-fun res!902096 () Bool)

(assert (=> b!1357234 (=> (not res!902096) (not e!770315))))

(assert (=> b!1357234 (= res!902096 (not (contains!9422 (t!46522 ($colon$colon!818 acc!759 (select (arr!44636 a!3742) from!3120))) (h!33062 ($colon$colon!818 acc!759 (select (arr!44636 a!3742) from!3120))))))))

(declare-fun b!1357235 () Bool)

(assert (=> b!1357235 (= e!770315 (noDuplicate!2301 (t!46522 ($colon$colon!818 acc!759 (select (arr!44636 a!3742) from!3120)))))))

(assert (= (and d!145021 (not res!902095)) b!1357234))

(assert (= (and b!1357234 res!902096) b!1357235))

(declare-fun m!1243033 () Bool)

(assert (=> b!1357234 m!1243033))

(declare-fun m!1243035 () Bool)

(assert (=> b!1357235 m!1243035))

(assert (=> b!1357137 d!145021))

(declare-fun d!145025 () Bool)

(assert (=> d!145025 (= ($colon$colon!818 acc!759 (select (arr!44636 a!3742) from!3120)) (Cons!31853 (select (arr!44636 a!3742) from!3120) acc!759))))

(assert (=> b!1357137 d!145025))

(declare-fun d!145027 () Bool)

(declare-fun lt!599075 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!682 (List!31857) (InoxSet (_ BitVec 64)))

(assert (=> d!145027 (= lt!599075 (select (content!682 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770331 () Bool)

(assert (=> d!145027 (= lt!599075 e!770331)))

(declare-fun res!902110 () Bool)

(assert (=> d!145027 (=> (not res!902110) (not e!770331))))

(assert (=> d!145027 (= res!902110 ((_ is Cons!31853) acc!759))))

(assert (=> d!145027 (= (contains!9422 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599075)))

(declare-fun b!1357251 () Bool)

(declare-fun e!770330 () Bool)

(assert (=> b!1357251 (= e!770331 e!770330)))

(declare-fun res!902111 () Bool)

(assert (=> b!1357251 (=> res!902111 e!770330)))

(assert (=> b!1357251 (= res!902111 (= (h!33062 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357252 () Bool)

(assert (=> b!1357252 (= e!770330 (contains!9422 (t!46522 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145027 res!902110) b!1357251))

(assert (= (and b!1357251 (not res!902111)) b!1357252))

(declare-fun m!1243047 () Bool)

(assert (=> d!145027 m!1243047))

(declare-fun m!1243049 () Bool)

(assert (=> d!145027 m!1243049))

(declare-fun m!1243051 () Bool)

(assert (=> b!1357252 m!1243051))

(assert (=> b!1357136 d!145027))

(declare-fun d!145035 () Bool)

(assert (=> d!145035 (= (validKeyInArray!0 (select (arr!44636 a!3742) from!3120)) (and (not (= (select (arr!44636 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44636 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357140 d!145035))

(declare-fun d!145037 () Bool)

(declare-fun lt!599078 () Bool)

(assert (=> d!145037 (= lt!599078 (select (content!682 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770337 () Bool)

(assert (=> d!145037 (= lt!599078 e!770337)))

(declare-fun res!902116 () Bool)

(assert (=> d!145037 (=> (not res!902116) (not e!770337))))

(assert (=> d!145037 (= res!902116 ((_ is Cons!31853) acc!759))))

(assert (=> d!145037 (= (contains!9422 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599078)))

(declare-fun b!1357257 () Bool)

(declare-fun e!770336 () Bool)

(assert (=> b!1357257 (= e!770337 e!770336)))

(declare-fun res!902117 () Bool)

(assert (=> b!1357257 (=> res!902117 e!770336)))

(assert (=> b!1357257 (= res!902117 (= (h!33062 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357258 () Bool)

(assert (=> b!1357258 (= e!770336 (contains!9422 (t!46522 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145037 res!902116) b!1357257))

(assert (= (and b!1357257 (not res!902117)) b!1357258))

(assert (=> d!145037 m!1243047))

(declare-fun m!1243053 () Bool)

(assert (=> d!145037 m!1243053))

(declare-fun m!1243055 () Bool)

(assert (=> b!1357258 m!1243055))

(assert (=> b!1357135 d!145037))

(declare-fun bm!65243 () Bool)

(declare-fun call!65246 () Bool)

(declare-fun c!127013 () Bool)

(assert (=> bm!65243 (= call!65246 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127013 (Cons!31853 (select (arr!44636 a!3742) #b00000000000000000000000000000000) Nil!31854) Nil!31854)))))

(declare-fun b!1357259 () Bool)

(declare-fun e!770341 () Bool)

(assert (=> b!1357259 (= e!770341 call!65246)))

(declare-fun b!1357260 () Bool)

(declare-fun e!770339 () Bool)

(assert (=> b!1357260 (= e!770339 e!770341)))

(assert (=> b!1357260 (= c!127013 (validKeyInArray!0 (select (arr!44636 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!145041 () Bool)

(declare-fun res!902120 () Bool)

(declare-fun e!770340 () Bool)

(assert (=> d!145041 (=> res!902120 e!770340)))

(assert (=> d!145041 (= res!902120 (bvsge #b00000000000000000000000000000000 (size!45187 a!3742)))))

(assert (=> d!145041 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31854) e!770340)))

(declare-fun b!1357261 () Bool)

(assert (=> b!1357261 (= e!770341 call!65246)))

(declare-fun b!1357262 () Bool)

(declare-fun e!770338 () Bool)

(assert (=> b!1357262 (= e!770338 (contains!9422 Nil!31854 (select (arr!44636 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357263 () Bool)

(assert (=> b!1357263 (= e!770340 e!770339)))

(declare-fun res!902119 () Bool)

(assert (=> b!1357263 (=> (not res!902119) (not e!770339))))

(assert (=> b!1357263 (= res!902119 (not e!770338))))

(declare-fun res!902118 () Bool)

(assert (=> b!1357263 (=> (not res!902118) (not e!770338))))

(assert (=> b!1357263 (= res!902118 (validKeyInArray!0 (select (arr!44636 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145041 (not res!902120)) b!1357263))

(assert (= (and b!1357263 res!902118) b!1357262))

(assert (= (and b!1357263 res!902119) b!1357260))

(assert (= (and b!1357260 c!127013) b!1357261))

(assert (= (and b!1357260 (not c!127013)) b!1357259))

(assert (= (or b!1357261 b!1357259) bm!65243))

(declare-fun m!1243057 () Bool)

(assert (=> bm!65243 m!1243057))

(declare-fun m!1243061 () Bool)

(assert (=> bm!65243 m!1243061))

(assert (=> b!1357260 m!1243057))

(assert (=> b!1357260 m!1243057))

(declare-fun m!1243067 () Bool)

(assert (=> b!1357260 m!1243067))

(assert (=> b!1357262 m!1243057))

(assert (=> b!1357262 m!1243057))

(declare-fun m!1243069 () Bool)

(assert (=> b!1357262 m!1243069))

(assert (=> b!1357263 m!1243057))

(assert (=> b!1357263 m!1243057))

(assert (=> b!1357263 m!1243067))

(assert (=> b!1357134 d!145041))

(check-sat (not d!145027) (not b!1357252) (not b!1357262) (not d!145037) (not b!1357234) (not b!1357189) (not b!1357195) (not bm!65236) (not b!1357190) (not b!1357196) (not b!1357263) (not b!1357258) (not b!1357217) (not b!1357187) (not d!145015) (not b!1357260) (not bm!65243) (not b!1357218) (not b!1357235))
(check-sat)
