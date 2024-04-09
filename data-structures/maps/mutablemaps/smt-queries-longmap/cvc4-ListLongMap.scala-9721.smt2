; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115038 () Bool)

(assert start!115038)

(declare-fun res!907109 () Bool)

(declare-fun e!773082 () Bool)

(assert (=> start!115038 (=> (not res!907109) (not e!773082))))

(declare-datatypes ((array!92639 0))(
  ( (array!92640 (arr!44748 (Array (_ BitVec 32) (_ BitVec 64))) (size!45299 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92639)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!115038 (= res!907109 (and (bvslt (size!45299 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45299 a!3742))))))

(assert (=> start!115038 e!773082))

(assert (=> start!115038 true))

(declare-fun array_inv!33693 (array!92639) Bool)

(assert (=> start!115038 (array_inv!33693 a!3742)))

(declare-fun b!1363140 () Bool)

(declare-fun e!773083 () Bool)

(declare-datatypes ((List!31969 0))(
  ( (Nil!31966) (Cons!31965 (h!33174 (_ BitVec 64)) (t!46664 List!31969)) )
))
(declare-fun acc!759 () List!31969)

(declare-fun arrayNoDuplicates!0 (array!92639 (_ BitVec 32) List!31969) Bool)

(assert (=> b!1363140 (= e!773083 (not (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))))

(declare-fun b!1363141 () Bool)

(declare-fun res!907111 () Bool)

(assert (=> b!1363141 (=> (not res!907111) (not e!773082))))

(assert (=> b!1363141 (= res!907111 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45299 a!3742)))))

(declare-fun b!1363142 () Bool)

(declare-fun res!907116 () Bool)

(assert (=> b!1363142 (=> (not res!907116) (not e!773082))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363142 (= res!907116 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45299 a!3742))))))

(declare-fun b!1363143 () Bool)

(declare-fun res!907112 () Bool)

(assert (=> b!1363143 (=> (not res!907112) (not e!773082))))

(assert (=> b!1363143 (= res!907112 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31966))))

(declare-fun b!1363144 () Bool)

(declare-datatypes ((Unit!44927 0))(
  ( (Unit!44928) )
))
(declare-fun e!773080 () Unit!44927)

(declare-fun Unit!44929 () Unit!44927)

(assert (=> b!1363144 (= e!773080 Unit!44929)))

(declare-fun b!1363145 () Bool)

(declare-fun lt!600652 () Unit!44927)

(assert (=> b!1363145 (= e!773080 lt!600652)))

(declare-fun lt!600650 () Unit!44927)

(declare-fun lemmaListSubSeqRefl!0 (List!31969) Unit!44927)

(assert (=> b!1363145 (= lt!600650 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!925 (List!31969 List!31969) Bool)

(assert (=> b!1363145 (subseq!925 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92639 List!31969 List!31969 (_ BitVec 32)) Unit!44927)

(declare-fun $colon$colon!930 (List!31969 (_ BitVec 64)) List!31969)

(assert (=> b!1363145 (= lt!600652 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!930 acc!759 (select (arr!44748 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363145 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363146 () Bool)

(declare-fun res!907114 () Bool)

(assert (=> b!1363146 (=> (not res!907114) (not e!773082))))

(declare-fun noDuplicate!2413 (List!31969) Bool)

(assert (=> b!1363146 (= res!907114 (noDuplicate!2413 acc!759))))

(declare-fun b!1363147 () Bool)

(assert (=> b!1363147 (= e!773082 e!773083)))

(declare-fun res!907108 () Bool)

(assert (=> b!1363147 (=> (not res!907108) (not e!773083))))

(declare-fun lt!600651 () Bool)

(assert (=> b!1363147 (= res!907108 (and (not (= from!3120 i!1404)) (not lt!600651) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600653 () Unit!44927)

(assert (=> b!1363147 (= lt!600653 e!773080)))

(declare-fun c!127459 () Bool)

(assert (=> b!1363147 (= c!127459 lt!600651)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363147 (= lt!600651 (validKeyInArray!0 (select (arr!44748 a!3742) from!3120)))))

(declare-fun b!1363148 () Bool)

(declare-fun res!907107 () Bool)

(assert (=> b!1363148 (=> (not res!907107) (not e!773082))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1363148 (= res!907107 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363149 () Bool)

(declare-fun res!907110 () Bool)

(assert (=> b!1363149 (=> (not res!907110) (not e!773082))))

(declare-fun contains!9534 (List!31969 (_ BitVec 64)) Bool)

(assert (=> b!1363149 (= res!907110 (not (contains!9534 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363150 () Bool)

(declare-fun res!907113 () Bool)

(assert (=> b!1363150 (=> (not res!907113) (not e!773082))))

(assert (=> b!1363150 (= res!907113 (not (contains!9534 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363151 () Bool)

(declare-fun res!907115 () Bool)

(assert (=> b!1363151 (=> (not res!907115) (not e!773082))))

(assert (=> b!1363151 (= res!907115 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!115038 res!907109) b!1363146))

(assert (= (and b!1363146 res!907114) b!1363150))

(assert (= (and b!1363150 res!907113) b!1363149))

(assert (= (and b!1363149 res!907110) b!1363143))

(assert (= (and b!1363143 res!907112) b!1363151))

(assert (= (and b!1363151 res!907115) b!1363142))

(assert (= (and b!1363142 res!907116) b!1363148))

(assert (= (and b!1363148 res!907107) b!1363141))

(assert (= (and b!1363141 res!907111) b!1363147))

(assert (= (and b!1363147 c!127459) b!1363145))

(assert (= (and b!1363147 (not c!127459)) b!1363144))

(assert (= (and b!1363147 res!907108) b!1363140))

(declare-fun m!1248027 () Bool)

(assert (=> start!115038 m!1248027))

(declare-fun m!1248029 () Bool)

(assert (=> b!1363151 m!1248029))

(declare-fun m!1248031 () Bool)

(assert (=> b!1363146 m!1248031))

(declare-fun m!1248033 () Bool)

(assert (=> b!1363149 m!1248033))

(declare-fun m!1248035 () Bool)

(assert (=> b!1363150 m!1248035))

(declare-fun m!1248037 () Bool)

(assert (=> b!1363147 m!1248037))

(assert (=> b!1363147 m!1248037))

(declare-fun m!1248039 () Bool)

(assert (=> b!1363147 m!1248039))

(declare-fun m!1248041 () Bool)

(assert (=> b!1363143 m!1248041))

(declare-fun m!1248043 () Bool)

(assert (=> b!1363148 m!1248043))

(declare-fun m!1248045 () Bool)

(assert (=> b!1363140 m!1248045))

(declare-fun m!1248047 () Bool)

(assert (=> b!1363145 m!1248047))

(assert (=> b!1363145 m!1248037))

(declare-fun m!1248049 () Bool)

(assert (=> b!1363145 m!1248049))

(declare-fun m!1248051 () Bool)

(assert (=> b!1363145 m!1248051))

(assert (=> b!1363145 m!1248045))

(assert (=> b!1363145 m!1248037))

(assert (=> b!1363145 m!1248049))

(declare-fun m!1248053 () Bool)

(assert (=> b!1363145 m!1248053))

(push 1)

(assert (not b!1363145))

(assert (not b!1363140))

(assert (not b!1363147))

(assert (not b!1363151))

(assert (not start!115038))

(assert (not b!1363149))

(assert (not b!1363148))

(assert (not b!1363150))

(assert (not b!1363143))

(assert (not b!1363146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146011 () Bool)

(assert (=> d!146011 (= (validKeyInArray!0 (select (arr!44748 a!3742) from!3120)) (and (not (= (select (arr!44748 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44748 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1363147 d!146011))

(declare-fun b!1363195 () Bool)

(declare-fun e!773123 () Bool)

(declare-fun e!773124 () Bool)

(assert (=> b!1363195 (= e!773123 e!773124)))

(declare-fun res!907152 () Bool)

(assert (=> b!1363195 (=> (not res!907152) (not e!773124))))

(declare-fun e!773125 () Bool)

(assert (=> b!1363195 (= res!907152 (not e!773125))))

(declare-fun res!907151 () Bool)

(assert (=> b!1363195 (=> (not res!907151) (not e!773125))))

(assert (=> b!1363195 (= res!907151 (validKeyInArray!0 (select (arr!44748 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1363196 () Bool)

(declare-fun e!773122 () Bool)

(assert (=> b!1363196 (= e!773124 e!773122)))

(declare-fun c!127465 () Bool)

(assert (=> b!1363196 (= c!127465 (validKeyInArray!0 (select (arr!44748 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1363197 () Bool)

(declare-fun call!65401 () Bool)

(assert (=> b!1363197 (= e!773122 call!65401)))

(declare-fun b!1363198 () Bool)

(assert (=> b!1363198 (= e!773125 (contains!9534 Nil!31966 (select (arr!44748 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1363199 () Bool)

(assert (=> b!1363199 (= e!773122 call!65401)))

(declare-fun d!146013 () Bool)

(declare-fun res!907150 () Bool)

(assert (=> d!146013 (=> res!907150 e!773123)))

(assert (=> d!146013 (= res!907150 (bvsge #b00000000000000000000000000000000 (size!45299 a!3742)))))

(assert (=> d!146013 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31966) e!773123)))

(declare-fun bm!65398 () Bool)

(assert (=> bm!65398 (= call!65401 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127465 (Cons!31965 (select (arr!44748 a!3742) #b00000000000000000000000000000000) Nil!31966) Nil!31966)))))

(assert (= (and d!146013 (not res!907150)) b!1363195))

(assert (= (and b!1363195 res!907151) b!1363198))

(assert (= (and b!1363195 res!907152) b!1363196))

(assert (= (and b!1363196 c!127465) b!1363199))

(assert (= (and b!1363196 (not c!127465)) b!1363197))

(assert (= (or b!1363199 b!1363197) bm!65398))

(declare-fun m!1248079 () Bool)

(assert (=> b!1363195 m!1248079))

(assert (=> b!1363195 m!1248079))

(declare-fun m!1248081 () Bool)

(assert (=> b!1363195 m!1248081))

(assert (=> b!1363196 m!1248079))

(assert (=> b!1363196 m!1248079))

(assert (=> b!1363196 m!1248081))

(assert (=> b!1363198 m!1248079))

(assert (=> b!1363198 m!1248079))

(declare-fun m!1248083 () Bool)

(assert (=> b!1363198 m!1248083))

(assert (=> bm!65398 m!1248079))

(declare-fun m!1248085 () Bool)

(assert (=> bm!65398 m!1248085))

(assert (=> b!1363143 d!146013))

(declare-fun d!146027 () Bool)

(assert (=> d!146027 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1363148 d!146027))

(declare-fun d!146029 () Bool)

(declare-fun lt!600668 () Bool)

(declare-fun content!710 (List!31969) (Set (_ BitVec 64)))

(assert (=> d!146029 (= lt!600668 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!710 acc!759)))))

(declare-fun e!773152 () Bool)

(assert (=> d!146029 (= lt!600668 e!773152)))

(declare-fun res!907178 () Bool)

(assert (=> d!146029 (=> (not res!907178) (not e!773152))))

(assert (=> d!146029 (= res!907178 (is-Cons!31965 acc!759))))

(assert (=> d!146029 (= (contains!9534 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600668)))

(declare-fun b!1363227 () Bool)

(declare-fun e!773153 () Bool)

(assert (=> b!1363227 (= e!773152 e!773153)))

(declare-fun res!907179 () Bool)

(assert (=> b!1363227 (=> res!907179 e!773153)))

(assert (=> b!1363227 (= res!907179 (= (h!33174 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1363228 () Bool)

(assert (=> b!1363228 (= e!773153 (contains!9534 (t!46664 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146029 res!907178) b!1363227))

(assert (= (and b!1363227 (not res!907179)) b!1363228))

(declare-fun m!1248103 () Bool)

(assert (=> d!146029 m!1248103))

(declare-fun m!1248105 () Bool)

(assert (=> d!146029 m!1248105))

(declare-fun m!1248107 () Bool)

(assert (=> b!1363228 m!1248107))

(assert (=> b!1363149 d!146029))

(declare-fun d!146039 () Bool)

(assert (=> d!146039 (= (array_inv!33693 a!3742) (bvsge (size!45299 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!115038 d!146039))

(declare-fun d!146041 () Bool)

(assert (=> d!146041 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600673 () Unit!44927)

(declare-fun choose!80 (array!92639 List!31969 List!31969 (_ BitVec 32)) Unit!44927)

(assert (=> d!146041 (= lt!600673 (choose!80 a!3742 ($colon$colon!930 acc!759 (select (arr!44748 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!146041 (bvslt (size!45299 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!146041 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!930 acc!759 (select (arr!44748 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!600673)))

(declare-fun bs!39083 () Bool)

(assert (= bs!39083 d!146041))

(assert (=> bs!39083 m!1248045))

(assert (=> bs!39083 m!1248049))

(declare-fun m!1248109 () Bool)

(assert (=> bs!39083 m!1248109))

(assert (=> b!1363145 d!146041))

(declare-fun b!1363271 () Bool)

(declare-fun e!773192 () Bool)

(declare-fun e!773193 () Bool)

(assert (=> b!1363271 (= e!773192 e!773193)))

(declare-fun res!907213 () Bool)

(assert (=> b!1363271 (=> res!907213 e!773193)))

(declare-fun e!773190 () Bool)

(assert (=> b!1363271 (= res!907213 e!773190)))

(declare-fun res!907214 () Bool)

(assert (=> b!1363271 (=> (not res!907214) (not e!773190))))

(assert (=> b!1363271 (= res!907214 (= (h!33174 acc!759) (h!33174 acc!759)))))

(declare-fun b!1363270 () Bool)

(declare-fun e!773191 () Bool)

(assert (=> b!1363270 (= e!773191 e!773192)))

(declare-fun res!907211 () Bool)

(assert (=> b!1363270 (=> (not res!907211) (not e!773192))))

(assert (=> b!1363270 (= res!907211 (is-Cons!31965 acc!759))))

(declare-fun d!146043 () Bool)

(declare-fun res!907212 () Bool)

(assert (=> d!146043 (=> res!907212 e!773191)))

(assert (=> d!146043 (= res!907212 (is-Nil!31966 acc!759))))

(assert (=> d!146043 (= (subseq!925 acc!759 acc!759) e!773191)))

(declare-fun b!1363273 () Bool)

(assert (=> b!1363273 (= e!773193 (subseq!925 acc!759 (t!46664 acc!759)))))

(declare-fun b!1363272 () Bool)

(assert (=> b!1363272 (= e!773190 (subseq!925 (t!46664 acc!759) (t!46664 acc!759)))))

(assert (= (and d!146043 (not res!907212)) b!1363270))

(assert (= (and b!1363270 res!907211) b!1363271))

(assert (= (and b!1363271 res!907214) b!1363272))

(assert (= (and b!1363271 (not res!907213)) b!1363273))

(declare-fun m!1248135 () Bool)

(assert (=> b!1363273 m!1248135))

(declare-fun m!1248137 () Bool)

(assert (=> b!1363272 m!1248137))

(assert (=> b!1363145 d!146043))

(declare-fun b!1363274 () Bool)

(declare-fun e!773195 () Bool)

(declare-fun e!773196 () Bool)

(assert (=> b!1363274 (= e!773195 e!773196)))

(declare-fun res!907217 () Bool)

(assert (=> b!1363274 (=> (not res!907217) (not e!773196))))

(declare-fun e!773197 () Bool)

(assert (=> b!1363274 (= res!907217 (not e!773197))))

(declare-fun res!907216 () Bool)

(assert (=> b!1363274 (=> (not res!907216) (not e!773197))))

(assert (=> b!1363274 (= res!907216 (validKeyInArray!0 (select (arr!44748 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363275 () Bool)

(declare-fun e!773194 () Bool)

(assert (=> b!1363275 (= e!773196 e!773194)))

(declare-fun c!127472 () Bool)

(assert (=> b!1363275 (= c!127472 (validKeyInArray!0 (select (arr!44748 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363276 () Bool)

(declare-fun call!65408 () Bool)

(assert (=> b!1363276 (= e!773194 call!65408)))

(declare-fun b!1363277 () Bool)

(assert (=> b!1363277 (= e!773197 (contains!9534 acc!759 (select (arr!44748 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1363278 () Bool)

(assert (=> b!1363278 (= e!773194 call!65408)))

(declare-fun d!146055 () Bool)

(declare-fun res!907215 () Bool)

(assert (=> d!146055 (=> res!907215 e!773195)))

(assert (=> d!146055 (= res!907215 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45299 a!3742)))))

(assert (=> d!146055 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!773195)))

(declare-fun bm!65405 () Bool)

(assert (=> bm!65405 (= call!65408 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127472 (Cons!31965 (select (arr!44748 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(assert (= (and d!146055 (not res!907215)) b!1363274))

(assert (= (and b!1363274 res!907216) b!1363277))

(assert (= (and b!1363274 res!907217) b!1363275))

(assert (= (and b!1363275 c!127472) b!1363278))

(assert (= (and b!1363275 (not c!127472)) b!1363276))

(assert (= (or b!1363278 b!1363276) bm!65405))

(declare-fun m!1248147 () Bool)

(assert (=> b!1363274 m!1248147))

(assert (=> b!1363274 m!1248147))

(declare-fun m!1248149 () Bool)

(assert (=> b!1363274 m!1248149))

(assert (=> b!1363275 m!1248147))

(assert (=> b!1363275 m!1248147))

(assert (=> b!1363275 m!1248149))

(assert (=> b!1363277 m!1248147))

(assert (=> b!1363277 m!1248147))

(declare-fun m!1248153 () Bool)

(assert (=> b!1363277 m!1248153))

(assert (=> bm!65405 m!1248147))

(declare-fun m!1248155 () Bool)

(assert (=> bm!65405 m!1248155))

(assert (=> b!1363145 d!146055))

(declare-fun d!146059 () Bool)

(assert (=> d!146059 (= ($colon$colon!930 acc!759 (select (arr!44748 a!3742) from!3120)) (Cons!31965 (select (arr!44748 a!3742) from!3120) acc!759))))

(assert (=> b!1363145 d!146059))

(declare-fun d!146063 () Bool)

(assert (=> d!146063 (subseq!925 acc!759 acc!759)))

