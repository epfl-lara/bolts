; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115036 () Bool)

(assert start!115036)

(declare-fun b!1363104 () Bool)

(declare-fun res!907085 () Bool)

(declare-fun e!773069 () Bool)

(assert (=> b!1363104 (=> (not res!907085) (not e!773069))))

(declare-datatypes ((array!92637 0))(
  ( (array!92638 (arr!44747 (Array (_ BitVec 32) (_ BitVec 64))) (size!45298 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92637)

(declare-datatypes ((List!31968 0))(
  ( (Nil!31965) (Cons!31964 (h!33173 (_ BitVec 64)) (t!46663 List!31968)) )
))
(declare-fun arrayNoDuplicates!0 (array!92637 (_ BitVec 32) List!31968) Bool)

(assert (=> b!1363104 (= res!907085 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31965))))

(declare-fun b!1363105 () Bool)

(declare-fun res!907080 () Bool)

(assert (=> b!1363105 (=> (not res!907080) (not e!773069))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363105 (= res!907080 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363106 () Bool)

(declare-fun res!907083 () Bool)

(assert (=> b!1363106 (=> (not res!907083) (not e!773069))))

(declare-fun acc!759 () List!31968)

(declare-fun contains!9533 (List!31968 (_ BitVec 64)) Bool)

(assert (=> b!1363106 (= res!907083 (not (contains!9533 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363107 () Bool)

(declare-fun e!773068 () Bool)

(assert (=> b!1363107 (= e!773069 e!773068)))

(declare-fun res!907079 () Bool)

(assert (=> b!1363107 (=> (not res!907079) (not e!773068))))

(declare-fun lt!600641 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363107 (= res!907079 (and (not (= from!3120 i!1404)) (not lt!600641) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44924 0))(
  ( (Unit!44925) )
))
(declare-fun lt!600639 () Unit!44924)

(declare-fun e!773070 () Unit!44924)

(assert (=> b!1363107 (= lt!600639 e!773070)))

(declare-fun c!127456 () Bool)

(assert (=> b!1363107 (= c!127456 lt!600641)))

(assert (=> b!1363107 (= lt!600641 (validKeyInArray!0 (select (arr!44747 a!3742) from!3120)))))

(declare-fun b!1363108 () Bool)

(assert (=> b!1363108 (= e!773068 (not (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))))

(declare-fun b!1363109 () Bool)

(declare-fun Unit!44926 () Unit!44924)

(assert (=> b!1363109 (= e!773070 Unit!44926)))

(declare-fun b!1363110 () Bool)

(declare-fun res!907084 () Bool)

(assert (=> b!1363110 (=> (not res!907084) (not e!773069))))

(assert (=> b!1363110 (= res!907084 (not (contains!9533 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363111 () Bool)

(declare-fun res!907077 () Bool)

(assert (=> b!1363111 (=> (not res!907077) (not e!773069))))

(assert (=> b!1363111 (= res!907077 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363112 () Bool)

(declare-fun lt!600640 () Unit!44924)

(assert (=> b!1363112 (= e!773070 lt!600640)))

(declare-fun lt!600638 () Unit!44924)

(declare-fun lemmaListSubSeqRefl!0 (List!31968) Unit!44924)

(assert (=> b!1363112 (= lt!600638 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!924 (List!31968 List!31968) Bool)

(assert (=> b!1363112 (subseq!924 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92637 List!31968 List!31968 (_ BitVec 32)) Unit!44924)

(declare-fun $colon$colon!929 (List!31968 (_ BitVec 64)) List!31968)

(assert (=> b!1363112 (= lt!600640 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!929 acc!759 (select (arr!44747 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363112 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363114 () Bool)

(declare-fun res!907086 () Bool)

(assert (=> b!1363114 (=> (not res!907086) (not e!773069))))

(declare-fun noDuplicate!2412 (List!31968) Bool)

(assert (=> b!1363114 (= res!907086 (noDuplicate!2412 acc!759))))

(declare-fun b!1363115 () Bool)

(declare-fun res!907082 () Bool)

(assert (=> b!1363115 (=> (not res!907082) (not e!773069))))

(assert (=> b!1363115 (= res!907082 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45298 a!3742))))))

(declare-fun b!1363113 () Bool)

(declare-fun res!907078 () Bool)

(assert (=> b!1363113 (=> (not res!907078) (not e!773069))))

(assert (=> b!1363113 (= res!907078 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45298 a!3742)))))

(declare-fun res!907081 () Bool)

(assert (=> start!115036 (=> (not res!907081) (not e!773069))))

(assert (=> start!115036 (= res!907081 (and (bvslt (size!45298 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45298 a!3742))))))

(assert (=> start!115036 e!773069))

(assert (=> start!115036 true))

(declare-fun array_inv!33692 (array!92637) Bool)

(assert (=> start!115036 (array_inv!33692 a!3742)))

(assert (= (and start!115036 res!907081) b!1363114))

(assert (= (and b!1363114 res!907086) b!1363106))

(assert (= (and b!1363106 res!907083) b!1363110))

(assert (= (and b!1363110 res!907084) b!1363104))

(assert (= (and b!1363104 res!907085) b!1363111))

(assert (= (and b!1363111 res!907077) b!1363115))

(assert (= (and b!1363115 res!907082) b!1363105))

(assert (= (and b!1363105 res!907080) b!1363113))

(assert (= (and b!1363113 res!907078) b!1363107))

(assert (= (and b!1363107 c!127456) b!1363112))

(assert (= (and b!1363107 (not c!127456)) b!1363109))

(assert (= (and b!1363107 res!907079) b!1363108))

(declare-fun m!1247999 () Bool)

(assert (=> start!115036 m!1247999))

(declare-fun m!1248001 () Bool)

(assert (=> b!1363111 m!1248001))

(declare-fun m!1248003 () Bool)

(assert (=> b!1363112 m!1248003))

(declare-fun m!1248005 () Bool)

(assert (=> b!1363112 m!1248005))

(declare-fun m!1248007 () Bool)

(assert (=> b!1363112 m!1248007))

(declare-fun m!1248009 () Bool)

(assert (=> b!1363112 m!1248009))

(declare-fun m!1248011 () Bool)

(assert (=> b!1363112 m!1248011))

(assert (=> b!1363112 m!1248005))

(assert (=> b!1363112 m!1248007))

(declare-fun m!1248013 () Bool)

(assert (=> b!1363112 m!1248013))

(declare-fun m!1248015 () Bool)

(assert (=> b!1363114 m!1248015))

(declare-fun m!1248017 () Bool)

(assert (=> b!1363104 m!1248017))

(declare-fun m!1248019 () Bool)

(assert (=> b!1363110 m!1248019))

(declare-fun m!1248021 () Bool)

(assert (=> b!1363106 m!1248021))

(assert (=> b!1363108 m!1248011))

(assert (=> b!1363107 m!1248005))

(assert (=> b!1363107 m!1248005))

(declare-fun m!1248023 () Bool)

(assert (=> b!1363107 m!1248023))

(declare-fun m!1248025 () Bool)

(assert (=> b!1363105 m!1248025))

(check-sat (not b!1363114) (not start!115036) (not b!1363108) (not b!1363107) (not b!1363104) (not b!1363110) (not b!1363112) (not b!1363111) (not b!1363105) (not b!1363106))
(check-sat)
(get-model)

(declare-fun d!146001 () Bool)

(assert (=> d!146001 (= (validKeyInArray!0 (select (arr!44747 a!3742) from!3120)) (and (not (= (select (arr!44747 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44747 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1363107 d!146001))

(declare-fun d!146003 () Bool)

(assert (=> d!146003 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600656 () Unit!44924)

(declare-fun choose!80 (array!92637 List!31968 List!31968 (_ BitVec 32)) Unit!44924)

(assert (=> d!146003 (= lt!600656 (choose!80 a!3742 ($colon$colon!929 acc!759 (select (arr!44747 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!146003 (bvslt (size!45298 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!146003 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!929 acc!759 (select (arr!44747 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!600656)))

(declare-fun bs!39080 () Bool)

(assert (= bs!39080 d!146003))

(assert (=> bs!39080 m!1248011))

(assert (=> bs!39080 m!1248007))

(declare-fun m!1248055 () Bool)

(assert (=> bs!39080 m!1248055))

(assert (=> b!1363112 d!146003))

(declare-fun b!1363162 () Bool)

(declare-fun e!773092 () Bool)

(assert (=> b!1363162 (= e!773092 (subseq!924 (t!46663 acc!759) (t!46663 acc!759)))))

(declare-fun b!1363161 () Bool)

(declare-fun e!773093 () Bool)

(declare-fun e!773094 () Bool)

(assert (=> b!1363161 (= e!773093 e!773094)))

(declare-fun res!907127 () Bool)

(assert (=> b!1363161 (=> res!907127 e!773094)))

(assert (=> b!1363161 (= res!907127 e!773092)))

(declare-fun res!907125 () Bool)

(assert (=> b!1363161 (=> (not res!907125) (not e!773092))))

(assert (=> b!1363161 (= res!907125 (= (h!33173 acc!759) (h!33173 acc!759)))))

(declare-fun b!1363163 () Bool)

(assert (=> b!1363163 (= e!773094 (subseq!924 acc!759 (t!46663 acc!759)))))

(declare-fun d!146005 () Bool)

(declare-fun res!907128 () Bool)

(declare-fun e!773095 () Bool)

(assert (=> d!146005 (=> res!907128 e!773095)))

(get-info :version)

(assert (=> d!146005 (= res!907128 ((_ is Nil!31965) acc!759))))

(assert (=> d!146005 (= (subseq!924 acc!759 acc!759) e!773095)))

(declare-fun b!1363160 () Bool)

(assert (=> b!1363160 (= e!773095 e!773093)))

(declare-fun res!907126 () Bool)

(assert (=> b!1363160 (=> (not res!907126) (not e!773093))))

(assert (=> b!1363160 (= res!907126 ((_ is Cons!31964) acc!759))))

(assert (= (and d!146005 (not res!907128)) b!1363160))

(assert (= (and b!1363160 res!907126) b!1363161))

(assert (= (and b!1363161 res!907125) b!1363162))

(assert (= (and b!1363161 (not res!907127)) b!1363163))

(declare-fun m!1248057 () Bool)

(assert (=> b!1363162 m!1248057))

(declare-fun m!1248059 () Bool)

(assert (=> b!1363163 m!1248059))

(assert (=> b!1363112 d!146005))

(declare-fun b!1363190 () Bool)

(declare-fun e!773118 () Bool)

(declare-fun call!65398 () Bool)

(assert (=> b!1363190 (= e!773118 call!65398)))

(declare-fun b!1363191 () Bool)

(declare-fun e!773121 () Bool)

(assert (=> b!1363191 (= e!773121 (contains!9533 acc!759 (select (arr!44747 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363192 () Bool)

(declare-fun e!773120 () Bool)

(assert (=> b!1363192 (= e!773120 e!773118)))

(declare-fun c!127464 () Bool)

(assert (=> b!1363192 (= c!127464 (validKeyInArray!0 (select (arr!44747 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65395 () Bool)

(assert (=> bm!65395 (= call!65398 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127464 (Cons!31964 (select (arr!44747 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun d!146007 () Bool)

(declare-fun res!907149 () Bool)

(declare-fun e!773119 () Bool)

(assert (=> d!146007 (=> res!907149 e!773119)))

(assert (=> d!146007 (= res!907149 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45298 a!3742)))))

(assert (=> d!146007 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!773119)))

(declare-fun b!1363193 () Bool)

(assert (=> b!1363193 (= e!773118 call!65398)))

(declare-fun b!1363194 () Bool)

(assert (=> b!1363194 (= e!773119 e!773120)))

(declare-fun res!907148 () Bool)

(assert (=> b!1363194 (=> (not res!907148) (not e!773120))))

(assert (=> b!1363194 (= res!907148 (not e!773121))))

(declare-fun res!907147 () Bool)

(assert (=> b!1363194 (=> (not res!907147) (not e!773121))))

(assert (=> b!1363194 (= res!907147 (validKeyInArray!0 (select (arr!44747 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!146007 (not res!907149)) b!1363194))

(assert (= (and b!1363194 res!907147) b!1363191))

(assert (= (and b!1363194 res!907148) b!1363192))

(assert (= (and b!1363192 c!127464) b!1363193))

(assert (= (and b!1363192 (not c!127464)) b!1363190))

(assert (= (or b!1363193 b!1363190) bm!65395))

(declare-fun m!1248067 () Bool)

(assert (=> b!1363191 m!1248067))

(assert (=> b!1363191 m!1248067))

(declare-fun m!1248069 () Bool)

(assert (=> b!1363191 m!1248069))

(assert (=> b!1363192 m!1248067))

(assert (=> b!1363192 m!1248067))

(declare-fun m!1248071 () Bool)

(assert (=> b!1363192 m!1248071))

(assert (=> bm!65395 m!1248067))

(declare-fun m!1248073 () Bool)

(assert (=> bm!65395 m!1248073))

(assert (=> b!1363194 m!1248067))

(assert (=> b!1363194 m!1248067))

(assert (=> b!1363194 m!1248071))

(assert (=> b!1363112 d!146007))

(declare-fun d!146017 () Bool)

(assert (=> d!146017 (= ($colon$colon!929 acc!759 (select (arr!44747 a!3742) from!3120)) (Cons!31964 (select (arr!44747 a!3742) from!3120) acc!759))))

(assert (=> b!1363112 d!146017))

(declare-fun d!146021 () Bool)

(assert (=> d!146021 (subseq!924 acc!759 acc!759)))

(declare-fun lt!600665 () Unit!44924)

(declare-fun choose!36 (List!31968) Unit!44924)

(assert (=> d!146021 (= lt!600665 (choose!36 acc!759))))

(assert (=> d!146021 (= (lemmaListSubSeqRefl!0 acc!759) lt!600665)))

(declare-fun bs!39082 () Bool)

(assert (= bs!39082 d!146021))

(assert (=> bs!39082 m!1248013))

(declare-fun m!1248077 () Bool)

(assert (=> bs!39082 m!1248077))

(assert (=> b!1363112 d!146021))

(declare-fun d!146023 () Bool)

(assert (=> d!146023 (= (array_inv!33692 a!3742) (bvsge (size!45298 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!115036 d!146023))

(assert (=> b!1363108 d!146007))

(declare-fun d!146025 () Bool)

(declare-fun res!907173 () Bool)

(declare-fun e!773146 () Bool)

(assert (=> d!146025 (=> res!907173 e!773146)))

(assert (=> d!146025 (= res!907173 ((_ is Nil!31965) acc!759))))

(assert (=> d!146025 (= (noDuplicate!2412 acc!759) e!773146)))

(declare-fun b!1363220 () Bool)

(declare-fun e!773147 () Bool)

(assert (=> b!1363220 (= e!773146 e!773147)))

(declare-fun res!907174 () Bool)

(assert (=> b!1363220 (=> (not res!907174) (not e!773147))))

(assert (=> b!1363220 (= res!907174 (not (contains!9533 (t!46663 acc!759) (h!33173 acc!759))))))

(declare-fun b!1363221 () Bool)

(assert (=> b!1363221 (= e!773147 (noDuplicate!2412 (t!46663 acc!759)))))

(assert (= (and d!146025 (not res!907173)) b!1363220))

(assert (= (and b!1363220 res!907174) b!1363221))

(declare-fun m!1248091 () Bool)

(assert (=> b!1363220 m!1248091))

(declare-fun m!1248093 () Bool)

(assert (=> b!1363221 m!1248093))

(assert (=> b!1363114 d!146025))

(declare-fun b!1363222 () Bool)

(declare-fun e!773148 () Bool)

(declare-fun call!65402 () Bool)

(assert (=> b!1363222 (= e!773148 call!65402)))

(declare-fun b!1363223 () Bool)

(declare-fun e!773151 () Bool)

(assert (=> b!1363223 (= e!773151 (contains!9533 Nil!31965 (select (arr!44747 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1363224 () Bool)

(declare-fun e!773150 () Bool)

(assert (=> b!1363224 (= e!773150 e!773148)))

(declare-fun c!127466 () Bool)

(assert (=> b!1363224 (= c!127466 (validKeyInArray!0 (select (arr!44747 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65399 () Bool)

(assert (=> bm!65399 (= call!65402 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127466 (Cons!31964 (select (arr!44747 a!3742) #b00000000000000000000000000000000) Nil!31965) Nil!31965)))))

(declare-fun d!146033 () Bool)

(declare-fun res!907177 () Bool)

(declare-fun e!773149 () Bool)

(assert (=> d!146033 (=> res!907177 e!773149)))

(assert (=> d!146033 (= res!907177 (bvsge #b00000000000000000000000000000000 (size!45298 a!3742)))))

(assert (=> d!146033 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31965) e!773149)))

(declare-fun b!1363225 () Bool)

(assert (=> b!1363225 (= e!773148 call!65402)))

(declare-fun b!1363226 () Bool)

(assert (=> b!1363226 (= e!773149 e!773150)))

(declare-fun res!907176 () Bool)

(assert (=> b!1363226 (=> (not res!907176) (not e!773150))))

(assert (=> b!1363226 (= res!907176 (not e!773151))))

(declare-fun res!907175 () Bool)

(assert (=> b!1363226 (=> (not res!907175) (not e!773151))))

(assert (=> b!1363226 (= res!907175 (validKeyInArray!0 (select (arr!44747 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!146033 (not res!907177)) b!1363226))

(assert (= (and b!1363226 res!907175) b!1363223))

(assert (= (and b!1363226 res!907176) b!1363224))

(assert (= (and b!1363224 c!127466) b!1363225))

(assert (= (and b!1363224 (not c!127466)) b!1363222))

(assert (= (or b!1363225 b!1363222) bm!65399))

(declare-fun m!1248095 () Bool)

(assert (=> b!1363223 m!1248095))

(assert (=> b!1363223 m!1248095))

(declare-fun m!1248097 () Bool)

(assert (=> b!1363223 m!1248097))

(assert (=> b!1363224 m!1248095))

(assert (=> b!1363224 m!1248095))

(declare-fun m!1248099 () Bool)

(assert (=> b!1363224 m!1248099))

(assert (=> bm!65399 m!1248095))

(declare-fun m!1248101 () Bool)

(assert (=> bm!65399 m!1248101))

(assert (=> b!1363226 m!1248095))

(assert (=> b!1363226 m!1248095))

(assert (=> b!1363226 m!1248099))

(assert (=> b!1363104 d!146033))

(declare-fun d!146035 () Bool)

(assert (=> d!146035 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1363105 d!146035))

(declare-fun d!146037 () Bool)

(declare-fun lt!600674 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!711 (List!31968) (InoxSet (_ BitVec 64)))

(assert (=> d!146037 (= lt!600674 (select (content!711 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!773166 () Bool)

(assert (=> d!146037 (= lt!600674 e!773166)))

(declare-fun res!907191 () Bool)

(assert (=> d!146037 (=> (not res!907191) (not e!773166))))

(assert (=> d!146037 (= res!907191 ((_ is Cons!31964) acc!759))))

(assert (=> d!146037 (= (contains!9533 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600674)))

(declare-fun b!1363243 () Bool)

(declare-fun e!773167 () Bool)

(assert (=> b!1363243 (= e!773166 e!773167)))

(declare-fun res!907190 () Bool)

(assert (=> b!1363243 (=> res!907190 e!773167)))

(assert (=> b!1363243 (= res!907190 (= (h!33173 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1363244 () Bool)

(assert (=> b!1363244 (= e!773167 (contains!9533 (t!46663 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146037 res!907191) b!1363243))

(assert (= (and b!1363243 (not res!907190)) b!1363244))

(declare-fun m!1248111 () Bool)

(assert (=> d!146037 m!1248111))

(declare-fun m!1248113 () Bool)

(assert (=> d!146037 m!1248113))

(declare-fun m!1248115 () Bool)

(assert (=> b!1363244 m!1248115))

(assert (=> b!1363110 d!146037))

(declare-fun b!1363245 () Bool)

(declare-fun e!773168 () Bool)

(declare-fun call!65405 () Bool)

(assert (=> b!1363245 (= e!773168 call!65405)))

(declare-fun b!1363246 () Bool)

(declare-fun e!773171 () Bool)

(assert (=> b!1363246 (= e!773171 (contains!9533 acc!759 (select (arr!44747 a!3742) from!3120)))))

(declare-fun b!1363247 () Bool)

(declare-fun e!773170 () Bool)

(assert (=> b!1363247 (= e!773170 e!773168)))

(declare-fun c!127469 () Bool)

(assert (=> b!1363247 (= c!127469 (validKeyInArray!0 (select (arr!44747 a!3742) from!3120)))))

(declare-fun bm!65402 () Bool)

(assert (=> bm!65402 (= call!65405 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127469 (Cons!31964 (select (arr!44747 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun d!146045 () Bool)

(declare-fun res!907194 () Bool)

(declare-fun e!773169 () Bool)

(assert (=> d!146045 (=> res!907194 e!773169)))

(assert (=> d!146045 (= res!907194 (bvsge from!3120 (size!45298 a!3742)))))

(assert (=> d!146045 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!773169)))

(declare-fun b!1363248 () Bool)

(assert (=> b!1363248 (= e!773168 call!65405)))

(declare-fun b!1363249 () Bool)

(assert (=> b!1363249 (= e!773169 e!773170)))

(declare-fun res!907193 () Bool)

(assert (=> b!1363249 (=> (not res!907193) (not e!773170))))

(assert (=> b!1363249 (= res!907193 (not e!773171))))

(declare-fun res!907192 () Bool)

(assert (=> b!1363249 (=> (not res!907192) (not e!773171))))

(assert (=> b!1363249 (= res!907192 (validKeyInArray!0 (select (arr!44747 a!3742) from!3120)))))

(assert (= (and d!146045 (not res!907194)) b!1363249))

(assert (= (and b!1363249 res!907192) b!1363246))

(assert (= (and b!1363249 res!907193) b!1363247))

(assert (= (and b!1363247 c!127469) b!1363248))

(assert (= (and b!1363247 (not c!127469)) b!1363245))

(assert (= (or b!1363248 b!1363245) bm!65402))

(assert (=> b!1363246 m!1248005))

(assert (=> b!1363246 m!1248005))

(declare-fun m!1248117 () Bool)

(assert (=> b!1363246 m!1248117))

(assert (=> b!1363247 m!1248005))

(assert (=> b!1363247 m!1248005))

(assert (=> b!1363247 m!1248023))

(assert (=> bm!65402 m!1248005))

(declare-fun m!1248119 () Bool)

(assert (=> bm!65402 m!1248119))

(assert (=> b!1363249 m!1248005))

(assert (=> b!1363249 m!1248005))

(assert (=> b!1363249 m!1248023))

(assert (=> b!1363111 d!146045))

(declare-fun d!146047 () Bool)

(declare-fun lt!600675 () Bool)

(assert (=> d!146047 (= lt!600675 (select (content!711 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!773176 () Bool)

(assert (=> d!146047 (= lt!600675 e!773176)))

(declare-fun res!907199 () Bool)

(assert (=> d!146047 (=> (not res!907199) (not e!773176))))

(assert (=> d!146047 (= res!907199 ((_ is Cons!31964) acc!759))))

(assert (=> d!146047 (= (contains!9533 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600675)))

(declare-fun b!1363255 () Bool)

(declare-fun e!773177 () Bool)

(assert (=> b!1363255 (= e!773176 e!773177)))

(declare-fun res!907198 () Bool)

(assert (=> b!1363255 (=> res!907198 e!773177)))

(assert (=> b!1363255 (= res!907198 (= (h!33173 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1363256 () Bool)

(assert (=> b!1363256 (= e!773177 (contains!9533 (t!46663 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146047 res!907199) b!1363255))

(assert (= (and b!1363255 (not res!907198)) b!1363256))

(assert (=> d!146047 m!1248111))

(declare-fun m!1248121 () Bool)

(assert (=> d!146047 m!1248121))

(declare-fun m!1248123 () Bool)

(assert (=> b!1363256 m!1248123))

(assert (=> b!1363106 d!146047))

(check-sat (not b!1363246) (not bm!65399) (not bm!65402) (not b!1363249) (not b!1363256) (not b!1363194) (not b!1363247) (not b!1363244) (not b!1363220) (not b!1363221) (not d!146037) (not d!146047) (not b!1363162) (not b!1363223) (not b!1363226) (not b!1363192) (not d!146021) (not b!1363191) (not b!1363224) (not d!146003) (not bm!65395) (not b!1363163))
(check-sat)
