; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61106 () Bool)

(assert start!61106)

(declare-fun b!684856 () Bool)

(declare-fun e!390018 () Bool)

(declare-fun e!390019 () Bool)

(assert (=> b!684856 (= e!390018 e!390019)))

(declare-fun res!450462 () Bool)

(assert (=> b!684856 (=> (not res!450462) (not e!390019))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684856 (= res!450462 (bvsle from!3004 i!1382))))

(declare-fun b!684857 () Bool)

(declare-fun res!450476 () Bool)

(declare-fun e!390013 () Bool)

(assert (=> b!684857 (=> res!450476 e!390013)))

(declare-datatypes ((List!13067 0))(
  ( (Nil!13064) (Cons!13063 (h!14108 (_ BitVec 64)) (t!19324 List!13067)) )
))
(declare-fun acc!681 () List!13067)

(declare-fun lt!314487 () List!13067)

(declare-fun subseq!195 (List!13067 List!13067) Bool)

(assert (=> b!684857 (= res!450476 (not (subseq!195 acc!681 lt!314487)))))

(declare-fun b!684858 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3610 (List!13067 (_ BitVec 64)) Bool)

(assert (=> b!684858 (= e!390013 (contains!3610 lt!314487 k0!2843))))

(declare-fun b!684859 () Bool)

(declare-fun res!450468 () Bool)

(declare-fun e!390014 () Bool)

(assert (=> b!684859 (=> (not res!450468) (not e!390014))))

(assert (=> b!684859 (= res!450468 (not (contains!3610 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684860 () Bool)

(declare-fun res!450475 () Bool)

(assert (=> b!684860 (=> (not res!450475) (not e!390014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684860 (= res!450475 (validKeyInArray!0 k0!2843))))

(declare-fun b!684861 () Bool)

(declare-fun res!450461 () Bool)

(assert (=> b!684861 (=> res!450461 e!390013)))

(declare-fun lt!314482 () Bool)

(assert (=> b!684861 (= res!450461 lt!314482)))

(declare-fun b!684862 () Bool)

(declare-datatypes ((Unit!24102 0))(
  ( (Unit!24103) )
))
(declare-fun e!390012 () Unit!24102)

(declare-fun lt!314486 () Unit!24102)

(assert (=> b!684862 (= e!390012 lt!314486)))

(declare-fun lt!314489 () Unit!24102)

(declare-fun lemmaListSubSeqRefl!0 (List!13067) Unit!24102)

(assert (=> b!684862 (= lt!314489 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684862 (subseq!195 acc!681 acc!681)))

(declare-datatypes ((array!39596 0))(
  ( (array!39597 (arr!18973 (Array (_ BitVec 32) (_ BitVec 64))) (size!19342 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39596)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39596 List!13067 List!13067 (_ BitVec 32)) Unit!24102)

(declare-fun $colon$colon!359 (List!13067 (_ BitVec 64)) List!13067)

(assert (=> b!684862 (= lt!314486 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!359 acc!681 (select (arr!18973 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39596 (_ BitVec 32) List!13067) Bool)

(assert (=> b!684862 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684863 () Bool)

(declare-fun res!450465 () Bool)

(assert (=> b!684863 (=> (not res!450465) (not e!390014))))

(declare-fun noDuplicate!857 (List!13067) Bool)

(assert (=> b!684863 (= res!450465 (noDuplicate!857 acc!681))))

(declare-fun b!684864 () Bool)

(declare-fun e!390016 () Bool)

(assert (=> b!684864 (= e!390016 (contains!3610 acc!681 k0!2843))))

(declare-fun b!684865 () Bool)

(declare-fun res!450471 () Bool)

(assert (=> b!684865 (=> res!450471 e!390013)))

(assert (=> b!684865 (= res!450471 (not (noDuplicate!857 lt!314487)))))

(declare-fun res!450469 () Bool)

(assert (=> start!61106 (=> (not res!450469) (not e!390014))))

(assert (=> start!61106 (= res!450469 (and (bvslt (size!19342 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19342 a!3626))))))

(assert (=> start!61106 e!390014))

(assert (=> start!61106 true))

(declare-fun array_inv!14747 (array!39596) Bool)

(assert (=> start!61106 (array_inv!14747 a!3626)))

(declare-fun b!684866 () Bool)

(declare-fun e!390015 () Unit!24102)

(declare-fun Unit!24104 () Unit!24102)

(assert (=> b!684866 (= e!390015 Unit!24104)))

(declare-fun b!684867 () Bool)

(declare-fun res!450474 () Bool)

(assert (=> b!684867 (=> (not res!450474) (not e!390014))))

(assert (=> b!684867 (= res!450474 e!390018)))

(declare-fun res!450466 () Bool)

(assert (=> b!684867 (=> res!450466 e!390018)))

(assert (=> b!684867 (= res!450466 e!390016)))

(declare-fun res!450459 () Bool)

(assert (=> b!684867 (=> (not res!450459) (not e!390016))))

(assert (=> b!684867 (= res!450459 (bvsgt from!3004 i!1382))))

(declare-fun b!684868 () Bool)

(assert (=> b!684868 (= e!390014 (not e!390013))))

(declare-fun res!450470 () Bool)

(assert (=> b!684868 (=> res!450470 e!390013)))

(assert (=> b!684868 (= res!450470 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!160 (List!13067 (_ BitVec 64)) List!13067)

(assert (=> b!684868 (= (-!160 lt!314487 k0!2843) acc!681)))

(assert (=> b!684868 (= lt!314487 ($colon$colon!359 acc!681 k0!2843))))

(declare-fun lt!314483 () Unit!24102)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13067) Unit!24102)

(assert (=> b!684868 (= lt!314483 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!684868 (subseq!195 acc!681 acc!681)))

(declare-fun lt!314484 () Unit!24102)

(assert (=> b!684868 (= lt!314484 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684868 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314488 () Unit!24102)

(assert (=> b!684868 (= lt!314488 e!390012)))

(declare-fun c!77567 () Bool)

(assert (=> b!684868 (= c!77567 (validKeyInArray!0 (select (arr!18973 a!3626) from!3004)))))

(declare-fun lt!314485 () Unit!24102)

(assert (=> b!684868 (= lt!314485 e!390015)))

(declare-fun c!77566 () Bool)

(assert (=> b!684868 (= c!77566 lt!314482)))

(declare-fun arrayContainsKey!0 (array!39596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684868 (= lt!314482 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684868 (arrayContainsKey!0 (array!39597 (store (arr!18973 a!3626) i!1382 k0!2843) (size!19342 a!3626)) k0!2843 from!3004)))

(declare-fun b!684869 () Bool)

(declare-fun res!450473 () Bool)

(assert (=> b!684869 (=> (not res!450473) (not e!390014))))

(assert (=> b!684869 (= res!450473 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19342 a!3626))))))

(declare-fun b!684870 () Bool)

(declare-fun res!450463 () Bool)

(assert (=> b!684870 (=> res!450463 e!390013)))

(assert (=> b!684870 (= res!450463 (contains!3610 acc!681 k0!2843))))

(declare-fun b!684871 () Bool)

(declare-fun res!450464 () Bool)

(assert (=> b!684871 (=> (not res!450464) (not e!390014))))

(assert (=> b!684871 (= res!450464 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19342 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684872 () Bool)

(declare-fun Unit!24105 () Unit!24102)

(assert (=> b!684872 (= e!390015 Unit!24105)))

(declare-fun lt!314490 () Unit!24102)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39596 (_ BitVec 64) (_ BitVec 32)) Unit!24102)

(assert (=> b!684872 (= lt!314490 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!684872 false))

(declare-fun b!684873 () Bool)

(assert (=> b!684873 (= e!390019 (not (contains!3610 acc!681 k0!2843)))))

(declare-fun b!684874 () Bool)

(declare-fun res!450460 () Bool)

(assert (=> b!684874 (=> (not res!450460) (not e!390014))))

(assert (=> b!684874 (= res!450460 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13064))))

(declare-fun b!684875 () Bool)

(declare-fun res!450467 () Bool)

(assert (=> b!684875 (=> (not res!450467) (not e!390014))))

(assert (=> b!684875 (= res!450467 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684876 () Bool)

(declare-fun Unit!24106 () Unit!24102)

(assert (=> b!684876 (= e!390012 Unit!24106)))

(declare-fun b!684877 () Bool)

(declare-fun res!450472 () Bool)

(assert (=> b!684877 (=> (not res!450472) (not e!390014))))

(assert (=> b!684877 (= res!450472 (not (contains!3610 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684878 () Bool)

(declare-fun res!450458 () Bool)

(assert (=> b!684878 (=> (not res!450458) (not e!390014))))

(assert (=> b!684878 (= res!450458 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!61106 res!450469) b!684863))

(assert (= (and b!684863 res!450465) b!684877))

(assert (= (and b!684877 res!450472) b!684859))

(assert (= (and b!684859 res!450468) b!684867))

(assert (= (and b!684867 res!450459) b!684864))

(assert (= (and b!684867 (not res!450466)) b!684856))

(assert (= (and b!684856 res!450462) b!684873))

(assert (= (and b!684867 res!450474) b!684874))

(assert (= (and b!684874 res!450460) b!684878))

(assert (= (and b!684878 res!450458) b!684869))

(assert (= (and b!684869 res!450473) b!684860))

(assert (= (and b!684860 res!450475) b!684875))

(assert (= (and b!684875 res!450467) b!684871))

(assert (= (and b!684871 res!450464) b!684868))

(assert (= (and b!684868 c!77566) b!684872))

(assert (= (and b!684868 (not c!77566)) b!684866))

(assert (= (and b!684868 c!77567) b!684862))

(assert (= (and b!684868 (not c!77567)) b!684876))

(assert (= (and b!684868 (not res!450470)) b!684865))

(assert (= (and b!684865 (not res!450471)) b!684861))

(assert (= (and b!684861 (not res!450461)) b!684870))

(assert (= (and b!684870 (not res!450463)) b!684857))

(assert (= (and b!684857 (not res!450476)) b!684858))

(declare-fun m!649177 () Bool)

(assert (=> start!61106 m!649177))

(declare-fun m!649179 () Bool)

(assert (=> b!684863 m!649179))

(declare-fun m!649181 () Bool)

(assert (=> b!684874 m!649181))

(declare-fun m!649183 () Bool)

(assert (=> b!684865 m!649183))

(declare-fun m!649185 () Bool)

(assert (=> b!684875 m!649185))

(declare-fun m!649187 () Bool)

(assert (=> b!684873 m!649187))

(declare-fun m!649189 () Bool)

(assert (=> b!684872 m!649189))

(declare-fun m!649191 () Bool)

(assert (=> b!684868 m!649191))

(declare-fun m!649193 () Bool)

(assert (=> b!684868 m!649193))

(declare-fun m!649195 () Bool)

(assert (=> b!684868 m!649195))

(declare-fun m!649197 () Bool)

(assert (=> b!684868 m!649197))

(declare-fun m!649199 () Bool)

(assert (=> b!684868 m!649199))

(declare-fun m!649201 () Bool)

(assert (=> b!684868 m!649201))

(declare-fun m!649203 () Bool)

(assert (=> b!684868 m!649203))

(declare-fun m!649205 () Bool)

(assert (=> b!684868 m!649205))

(assert (=> b!684868 m!649193))

(declare-fun m!649207 () Bool)

(assert (=> b!684868 m!649207))

(declare-fun m!649209 () Bool)

(assert (=> b!684868 m!649209))

(declare-fun m!649211 () Bool)

(assert (=> b!684868 m!649211))

(assert (=> b!684864 m!649187))

(declare-fun m!649213 () Bool)

(assert (=> b!684857 m!649213))

(assert (=> b!684870 m!649187))

(declare-fun m!649215 () Bool)

(assert (=> b!684877 m!649215))

(declare-fun m!649217 () Bool)

(assert (=> b!684858 m!649217))

(declare-fun m!649219 () Bool)

(assert (=> b!684860 m!649219))

(declare-fun m!649221 () Bool)

(assert (=> b!684878 m!649221))

(assert (=> b!684862 m!649191))

(assert (=> b!684862 m!649193))

(declare-fun m!649223 () Bool)

(assert (=> b!684862 m!649223))

(declare-fun m!649225 () Bool)

(assert (=> b!684862 m!649225))

(assert (=> b!684862 m!649193))

(assert (=> b!684862 m!649223))

(assert (=> b!684862 m!649201))

(assert (=> b!684862 m!649211))

(declare-fun m!649227 () Bool)

(assert (=> b!684859 m!649227))

(check-sat (not b!684863) (not start!61106) (not b!684873) (not b!684857) (not b!684858) (not b!684864) (not b!684877) (not b!684878) (not b!684875) (not b!684870) (not b!684868) (not b!684860) (not b!684865) (not b!684859) (not b!684872) (not b!684862) (not b!684874))
(check-sat)
(get-model)

(declare-fun d!94331 () Bool)

(assert (=> d!94331 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684860 d!94331))

(declare-fun d!94333 () Bool)

(assert (=> d!94333 (= ($colon$colon!359 acc!681 (select (arr!18973 a!3626) from!3004)) (Cons!13063 (select (arr!18973 a!3626) from!3004) acc!681))))

(assert (=> b!684862 d!94333))

(declare-fun b!684957 () Bool)

(declare-fun e!390054 () Bool)

(declare-fun e!390055 () Bool)

(assert (=> b!684957 (= e!390054 e!390055)))

(declare-fun res!450543 () Bool)

(assert (=> b!684957 (=> res!450543 e!390055)))

(declare-fun e!390052 () Bool)

(assert (=> b!684957 (= res!450543 e!390052)))

(declare-fun res!450544 () Bool)

(assert (=> b!684957 (=> (not res!450544) (not e!390052))))

(assert (=> b!684957 (= res!450544 (= (h!14108 acc!681) (h!14108 acc!681)))))

(declare-fun d!94335 () Bool)

(declare-fun res!450545 () Bool)

(declare-fun e!390053 () Bool)

(assert (=> d!94335 (=> res!450545 e!390053)))

(get-info :version)

(assert (=> d!94335 (= res!450545 ((_ is Nil!13064) acc!681))))

(assert (=> d!94335 (= (subseq!195 acc!681 acc!681) e!390053)))

(declare-fun b!684956 () Bool)

(assert (=> b!684956 (= e!390053 e!390054)))

(declare-fun res!450542 () Bool)

(assert (=> b!684956 (=> (not res!450542) (not e!390054))))

(assert (=> b!684956 (= res!450542 ((_ is Cons!13063) acc!681))))

(declare-fun b!684959 () Bool)

(assert (=> b!684959 (= e!390055 (subseq!195 acc!681 (t!19324 acc!681)))))

(declare-fun b!684958 () Bool)

(assert (=> b!684958 (= e!390052 (subseq!195 (t!19324 acc!681) (t!19324 acc!681)))))

(assert (= (and d!94335 (not res!450545)) b!684956))

(assert (= (and b!684956 res!450542) b!684957))

(assert (= (and b!684957 res!450544) b!684958))

(assert (= (and b!684957 (not res!450543)) b!684959))

(declare-fun m!649281 () Bool)

(assert (=> b!684959 m!649281))

(declare-fun m!649283 () Bool)

(assert (=> b!684958 m!649283))

(assert (=> b!684862 d!94335))

(declare-fun d!94337 () Bool)

(assert (=> d!94337 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314520 () Unit!24102)

(declare-fun choose!80 (array!39596 List!13067 List!13067 (_ BitVec 32)) Unit!24102)

(assert (=> d!94337 (= lt!314520 (choose!80 a!3626 ($colon$colon!359 acc!681 (select (arr!18973 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94337 (bvslt (size!19342 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94337 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!359 acc!681 (select (arr!18973 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!314520)))

(declare-fun bs!20084 () Bool)

(assert (= bs!20084 d!94337))

(assert (=> bs!20084 m!649191))

(assert (=> bs!20084 m!649223))

(declare-fun m!649285 () Bool)

(assert (=> bs!20084 m!649285))

(assert (=> b!684862 d!94337))

(declare-fun d!94341 () Bool)

(assert (=> d!94341 (subseq!195 acc!681 acc!681)))

(declare-fun lt!314523 () Unit!24102)

(declare-fun choose!36 (List!13067) Unit!24102)

(assert (=> d!94341 (= lt!314523 (choose!36 acc!681))))

(assert (=> d!94341 (= (lemmaListSubSeqRefl!0 acc!681) lt!314523)))

(declare-fun bs!20085 () Bool)

(assert (= bs!20085 d!94341))

(assert (=> bs!20085 m!649211))

(declare-fun m!649287 () Bool)

(assert (=> bs!20085 m!649287))

(assert (=> b!684862 d!94341))

(declare-fun b!684991 () Bool)

(declare-fun e!390082 () Bool)

(declare-fun call!34055 () Bool)

(assert (=> b!684991 (= e!390082 call!34055)))

(declare-fun e!390085 () Bool)

(declare-fun b!684992 () Bool)

(assert (=> b!684992 (= e!390085 (contains!3610 acc!681 (select (arr!18973 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!684993 () Bool)

(declare-fun e!390083 () Bool)

(declare-fun e!390084 () Bool)

(assert (=> b!684993 (= e!390083 e!390084)))

(declare-fun res!450568 () Bool)

(assert (=> b!684993 (=> (not res!450568) (not e!390084))))

(assert (=> b!684993 (= res!450568 (not e!390085))))

(declare-fun res!450569 () Bool)

(assert (=> b!684993 (=> (not res!450569) (not e!390085))))

(assert (=> b!684993 (= res!450569 (validKeyInArray!0 (select (arr!18973 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94343 () Bool)

(declare-fun res!450567 () Bool)

(assert (=> d!94343 (=> res!450567 e!390083)))

(assert (=> d!94343 (= res!450567 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19342 a!3626)))))

(assert (=> d!94343 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!390083)))

(declare-fun b!684994 () Bool)

(assert (=> b!684994 (= e!390084 e!390082)))

(declare-fun c!77579 () Bool)

(assert (=> b!684994 (= c!77579 (validKeyInArray!0 (select (arr!18973 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!684995 () Bool)

(assert (=> b!684995 (= e!390082 call!34055)))

(declare-fun bm!34052 () Bool)

(assert (=> bm!34052 (= call!34055 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77579 (Cons!13063 (select (arr!18973 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(assert (= (and d!94343 (not res!450567)) b!684993))

(assert (= (and b!684993 res!450569) b!684992))

(assert (= (and b!684993 res!450568) b!684994))

(assert (= (and b!684994 c!77579) b!684995))

(assert (= (and b!684994 (not c!77579)) b!684991))

(assert (= (or b!684995 b!684991) bm!34052))

(declare-fun m!649301 () Bool)

(assert (=> b!684992 m!649301))

(assert (=> b!684992 m!649301))

(declare-fun m!649303 () Bool)

(assert (=> b!684992 m!649303))

(assert (=> b!684993 m!649301))

(assert (=> b!684993 m!649301))

(declare-fun m!649305 () Bool)

(assert (=> b!684993 m!649305))

(assert (=> b!684994 m!649301))

(assert (=> b!684994 m!649301))

(assert (=> b!684994 m!649305))

(assert (=> bm!34052 m!649301))

(declare-fun m!649307 () Bool)

(assert (=> bm!34052 m!649307))

(assert (=> b!684862 d!94343))

(declare-fun d!94351 () Bool)

(declare-fun lt!314526 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!289 (List!13067) (InoxSet (_ BitVec 64)))

(assert (=> d!94351 (= lt!314526 (select (content!289 acc!681) k0!2843))))

(declare-fun e!390103 () Bool)

(assert (=> d!94351 (= lt!314526 e!390103)))

(declare-fun res!450587 () Bool)

(assert (=> d!94351 (=> (not res!450587) (not e!390103))))

(assert (=> d!94351 (= res!450587 ((_ is Cons!13063) acc!681))))

(assert (=> d!94351 (= (contains!3610 acc!681 k0!2843) lt!314526)))

(declare-fun b!685012 () Bool)

(declare-fun e!390102 () Bool)

(assert (=> b!685012 (= e!390103 e!390102)))

(declare-fun res!450586 () Bool)

(assert (=> b!685012 (=> res!450586 e!390102)))

(assert (=> b!685012 (= res!450586 (= (h!14108 acc!681) k0!2843))))

(declare-fun b!685013 () Bool)

(assert (=> b!685013 (= e!390102 (contains!3610 (t!19324 acc!681) k0!2843))))

(assert (= (and d!94351 res!450587) b!685012))

(assert (= (and b!685012 (not res!450586)) b!685013))

(declare-fun m!649315 () Bool)

(assert (=> d!94351 m!649315))

(declare-fun m!649317 () Bool)

(assert (=> d!94351 m!649317))

(declare-fun m!649319 () Bool)

(assert (=> b!685013 m!649319))

(assert (=> b!684873 d!94351))

(declare-fun d!94357 () Bool)

(assert (=> d!94357 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!314532 () Unit!24102)

(declare-fun choose!13 (array!39596 (_ BitVec 64) (_ BitVec 32)) Unit!24102)

(assert (=> d!94357 (= lt!314532 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!94357 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94357 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!314532)))

(declare-fun bs!20086 () Bool)

(assert (= bs!20086 d!94357))

(assert (=> bs!20086 m!649185))

(declare-fun m!649327 () Bool)

(assert (=> bs!20086 m!649327))

(assert (=> b!684872 d!94357))

(declare-fun b!685030 () Bool)

(declare-fun e!390118 () Bool)

(declare-fun call!34058 () Bool)

(assert (=> b!685030 (= e!390118 call!34058)))

(declare-fun b!685031 () Bool)

(declare-fun e!390121 () Bool)

(assert (=> b!685031 (= e!390121 (contains!3610 Nil!13064 (select (arr!18973 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!685032 () Bool)

(declare-fun e!390119 () Bool)

(declare-fun e!390120 () Bool)

(assert (=> b!685032 (= e!390119 e!390120)))

(declare-fun res!450601 () Bool)

(assert (=> b!685032 (=> (not res!450601) (not e!390120))))

(assert (=> b!685032 (= res!450601 (not e!390121))))

(declare-fun res!450602 () Bool)

(assert (=> b!685032 (=> (not res!450602) (not e!390121))))

(assert (=> b!685032 (= res!450602 (validKeyInArray!0 (select (arr!18973 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!94361 () Bool)

(declare-fun res!450600 () Bool)

(assert (=> d!94361 (=> res!450600 e!390119)))

(assert (=> d!94361 (= res!450600 (bvsge #b00000000000000000000000000000000 (size!19342 a!3626)))))

(assert (=> d!94361 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13064) e!390119)))

(declare-fun b!685033 () Bool)

(assert (=> b!685033 (= e!390120 e!390118)))

(declare-fun c!77582 () Bool)

(assert (=> b!685033 (= c!77582 (validKeyInArray!0 (select (arr!18973 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!685034 () Bool)

(assert (=> b!685034 (= e!390118 call!34058)))

(declare-fun bm!34055 () Bool)

(assert (=> bm!34055 (= call!34058 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77582 (Cons!13063 (select (arr!18973 a!3626) #b00000000000000000000000000000000) Nil!13064) Nil!13064)))))

(assert (= (and d!94361 (not res!450600)) b!685032))

(assert (= (and b!685032 res!450602) b!685031))

(assert (= (and b!685032 res!450601) b!685033))

(assert (= (and b!685033 c!77582) b!685034))

(assert (= (and b!685033 (not c!77582)) b!685030))

(assert (= (or b!685034 b!685030) bm!34055))

(declare-fun m!649329 () Bool)

(assert (=> b!685031 m!649329))

(assert (=> b!685031 m!649329))

(declare-fun m!649331 () Bool)

(assert (=> b!685031 m!649331))

(assert (=> b!685032 m!649329))

(assert (=> b!685032 m!649329))

(declare-fun m!649333 () Bool)

(assert (=> b!685032 m!649333))

(assert (=> b!685033 m!649329))

(assert (=> b!685033 m!649329))

(assert (=> b!685033 m!649333))

(assert (=> bm!34055 m!649329))

(declare-fun m!649335 () Bool)

(assert (=> bm!34055 m!649335))

(assert (=> b!684874 d!94361))

(declare-fun d!94363 () Bool)

(declare-fun res!450622 () Bool)

(declare-fun e!390142 () Bool)

(assert (=> d!94363 (=> res!450622 e!390142)))

(assert (=> d!94363 (= res!450622 ((_ is Nil!13064) acc!681))))

(assert (=> d!94363 (= (noDuplicate!857 acc!681) e!390142)))

(declare-fun b!685056 () Bool)

(declare-fun e!390143 () Bool)

(assert (=> b!685056 (= e!390142 e!390143)))

(declare-fun res!450623 () Bool)

(assert (=> b!685056 (=> (not res!450623) (not e!390143))))

(assert (=> b!685056 (= res!450623 (not (contains!3610 (t!19324 acc!681) (h!14108 acc!681))))))

(declare-fun b!685057 () Bool)

(assert (=> b!685057 (= e!390143 (noDuplicate!857 (t!19324 acc!681)))))

(assert (= (and d!94363 (not res!450622)) b!685056))

(assert (= (and b!685056 res!450623) b!685057))

(declare-fun m!649341 () Bool)

(assert (=> b!685056 m!649341))

(declare-fun m!649345 () Bool)

(assert (=> b!685057 m!649345))

(assert (=> b!684863 d!94363))

(declare-fun d!94367 () Bool)

(declare-fun res!450624 () Bool)

(declare-fun e!390144 () Bool)

(assert (=> d!94367 (=> res!450624 e!390144)))

(assert (=> d!94367 (= res!450624 ((_ is Nil!13064) lt!314487))))

(assert (=> d!94367 (= (noDuplicate!857 lt!314487) e!390144)))

(declare-fun b!685058 () Bool)

(declare-fun e!390145 () Bool)

(assert (=> b!685058 (= e!390144 e!390145)))

(declare-fun res!450625 () Bool)

(assert (=> b!685058 (=> (not res!450625) (not e!390145))))

(assert (=> b!685058 (= res!450625 (not (contains!3610 (t!19324 lt!314487) (h!14108 lt!314487))))))

(declare-fun b!685059 () Bool)

(assert (=> b!685059 (= e!390145 (noDuplicate!857 (t!19324 lt!314487)))))

(assert (= (and d!94367 (not res!450624)) b!685058))

(assert (= (and b!685058 res!450625) b!685059))

(declare-fun m!649349 () Bool)

(assert (=> b!685058 m!649349))

(declare-fun m!649351 () Bool)

(assert (=> b!685059 m!649351))

(assert (=> b!684865 d!94367))

(assert (=> b!684864 d!94351))

(declare-fun d!94371 () Bool)

(declare-fun res!450640 () Bool)

(declare-fun e!390160 () Bool)

(assert (=> d!94371 (=> res!450640 e!390160)))

(assert (=> d!94371 (= res!450640 (= (select (arr!18973 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!94371 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!390160)))

(declare-fun b!685074 () Bool)

(declare-fun e!390161 () Bool)

(assert (=> b!685074 (= e!390160 e!390161)))

(declare-fun res!450641 () Bool)

(assert (=> b!685074 (=> (not res!450641) (not e!390161))))

(assert (=> b!685074 (= res!450641 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19342 a!3626)))))

(declare-fun b!685075 () Bool)

(assert (=> b!685075 (= e!390161 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94371 (not res!450640)) b!685074))

(assert (= (and b!685074 res!450641) b!685075))

(assert (=> d!94371 m!649329))

(declare-fun m!649369 () Bool)

(assert (=> b!685075 m!649369))

(assert (=> b!684875 d!94371))

(declare-fun d!94379 () Bool)

(declare-fun lt!314538 () Bool)

(assert (=> d!94379 (= lt!314538 (select (content!289 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!390163 () Bool)

(assert (=> d!94379 (= lt!314538 e!390163)))

(declare-fun res!450643 () Bool)

(assert (=> d!94379 (=> (not res!450643) (not e!390163))))

(assert (=> d!94379 (= res!450643 ((_ is Cons!13063) acc!681))))

(assert (=> d!94379 (= (contains!3610 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314538)))

(declare-fun b!685076 () Bool)

(declare-fun e!390162 () Bool)

(assert (=> b!685076 (= e!390163 e!390162)))

(declare-fun res!450642 () Bool)

(assert (=> b!685076 (=> res!450642 e!390162)))

(assert (=> b!685076 (= res!450642 (= (h!14108 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685077 () Bool)

(assert (=> b!685077 (= e!390162 (contains!3610 (t!19324 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94379 res!450643) b!685076))

(assert (= (and b!685076 (not res!450642)) b!685077))

(assert (=> d!94379 m!649315))

(declare-fun m!649371 () Bool)

(assert (=> d!94379 m!649371))

(declare-fun m!649373 () Bool)

(assert (=> b!685077 m!649373))

(assert (=> b!684877 d!94379))

(declare-fun d!94381 () Bool)

(assert (=> d!94381 (= (array_inv!14747 a!3626) (bvsge (size!19342 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61106 d!94381))

(declare-fun b!685086 () Bool)

(declare-fun e!390169 () Bool)

(declare-fun call!34062 () Bool)

(assert (=> b!685086 (= e!390169 call!34062)))

(declare-fun b!685087 () Bool)

(declare-fun e!390172 () Bool)

(assert (=> b!685087 (= e!390172 (contains!3610 acc!681 (select (arr!18973 a!3626) from!3004)))))

(declare-fun b!685088 () Bool)

(declare-fun e!390170 () Bool)

(declare-fun e!390171 () Bool)

(assert (=> b!685088 (= e!390170 e!390171)))

(declare-fun res!450645 () Bool)

(assert (=> b!685088 (=> (not res!450645) (not e!390171))))

(assert (=> b!685088 (= res!450645 (not e!390172))))

(declare-fun res!450646 () Bool)

(assert (=> b!685088 (=> (not res!450646) (not e!390172))))

(assert (=> b!685088 (= res!450646 (validKeyInArray!0 (select (arr!18973 a!3626) from!3004)))))

(declare-fun d!94383 () Bool)

(declare-fun res!450644 () Bool)

(assert (=> d!94383 (=> res!450644 e!390170)))

(assert (=> d!94383 (= res!450644 (bvsge from!3004 (size!19342 a!3626)))))

(assert (=> d!94383 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!390170)))

(declare-fun b!685089 () Bool)

(assert (=> b!685089 (= e!390171 e!390169)))

(declare-fun c!77588 () Bool)

(assert (=> b!685089 (= c!77588 (validKeyInArray!0 (select (arr!18973 a!3626) from!3004)))))

(declare-fun b!685090 () Bool)

(assert (=> b!685090 (= e!390169 call!34062)))

(declare-fun bm!34059 () Bool)

(assert (=> bm!34059 (= call!34062 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77588 (Cons!13063 (select (arr!18973 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!94383 (not res!450644)) b!685088))

(assert (= (and b!685088 res!450646) b!685087))

(assert (= (and b!685088 res!450645) b!685089))

(assert (= (and b!685089 c!77588) b!685090))

(assert (= (and b!685089 (not c!77588)) b!685086))

(assert (= (or b!685090 b!685086) bm!34059))

(assert (=> b!685087 m!649193))

(assert (=> b!685087 m!649193))

(declare-fun m!649375 () Bool)

(assert (=> b!685087 m!649375))

(assert (=> b!685088 m!649193))

(assert (=> b!685088 m!649193))

(assert (=> b!685088 m!649207))

(assert (=> b!685089 m!649193))

(assert (=> b!685089 m!649193))

(assert (=> b!685089 m!649207))

(assert (=> bm!34059 m!649193))

(declare-fun m!649377 () Bool)

(assert (=> bm!34059 m!649377))

(assert (=> b!684878 d!94383))

(declare-fun b!685100 () Bool)

(declare-fun e!390185 () Bool)

(declare-fun e!390186 () Bool)

(assert (=> b!685100 (= e!390185 e!390186)))

(declare-fun res!450658 () Bool)

(assert (=> b!685100 (=> res!450658 e!390186)))

(declare-fun e!390183 () Bool)

(assert (=> b!685100 (= res!450658 e!390183)))

(declare-fun res!450659 () Bool)

(assert (=> b!685100 (=> (not res!450659) (not e!390183))))

(assert (=> b!685100 (= res!450659 (= (h!14108 acc!681) (h!14108 lt!314487)))))

(declare-fun d!94385 () Bool)

(declare-fun res!450660 () Bool)

(declare-fun e!390184 () Bool)

(assert (=> d!94385 (=> res!450660 e!390184)))

(assert (=> d!94385 (= res!450660 ((_ is Nil!13064) acc!681))))

(assert (=> d!94385 (= (subseq!195 acc!681 lt!314487) e!390184)))

(declare-fun b!685099 () Bool)

(assert (=> b!685099 (= e!390184 e!390185)))

(declare-fun res!450657 () Bool)

(assert (=> b!685099 (=> (not res!450657) (not e!390185))))

(assert (=> b!685099 (= res!450657 ((_ is Cons!13063) lt!314487))))

(declare-fun b!685102 () Bool)

(assert (=> b!685102 (= e!390186 (subseq!195 acc!681 (t!19324 lt!314487)))))

(declare-fun b!685101 () Bool)

(assert (=> b!685101 (= e!390183 (subseq!195 (t!19324 acc!681) (t!19324 lt!314487)))))

(assert (= (and d!94385 (not res!450660)) b!685099))

(assert (= (and b!685099 res!450657) b!685100))

(assert (= (and b!685100 res!450659) b!685101))

(assert (= (and b!685100 (not res!450658)) b!685102))

(declare-fun m!649379 () Bool)

(assert (=> b!685102 m!649379))

(declare-fun m!649381 () Bool)

(assert (=> b!685101 m!649381))

(assert (=> b!684857 d!94385))

(declare-fun d!94387 () Bool)

(declare-fun lt!314541 () Bool)

(assert (=> d!94387 (= lt!314541 (select (content!289 lt!314487) k0!2843))))

(declare-fun e!390188 () Bool)

(assert (=> d!94387 (= lt!314541 e!390188)))

(declare-fun res!450662 () Bool)

(assert (=> d!94387 (=> (not res!450662) (not e!390188))))

(assert (=> d!94387 (= res!450662 ((_ is Cons!13063) lt!314487))))

(assert (=> d!94387 (= (contains!3610 lt!314487 k0!2843) lt!314541)))

(declare-fun b!685105 () Bool)

(declare-fun e!390187 () Bool)

(assert (=> b!685105 (= e!390188 e!390187)))

(declare-fun res!450661 () Bool)

(assert (=> b!685105 (=> res!450661 e!390187)))

(assert (=> b!685105 (= res!450661 (= (h!14108 lt!314487) k0!2843))))

(declare-fun b!685106 () Bool)

(assert (=> b!685106 (= e!390187 (contains!3610 (t!19324 lt!314487) k0!2843))))

(assert (= (and d!94387 res!450662) b!685105))

(assert (= (and b!685105 (not res!450661)) b!685106))

(declare-fun m!649383 () Bool)

(assert (=> d!94387 m!649383))

(declare-fun m!649385 () Bool)

(assert (=> d!94387 m!649385))

(declare-fun m!649387 () Bool)

(assert (=> b!685106 m!649387))

(assert (=> b!684858 d!94387))

(assert (=> b!684868 d!94335))

(declare-fun d!94389 () Bool)

(declare-fun res!450663 () Bool)

(declare-fun e!390189 () Bool)

(assert (=> d!94389 (=> res!450663 e!390189)))

(assert (=> d!94389 (= res!450663 (= (select (arr!18973 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!94389 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!390189)))

(declare-fun b!685107 () Bool)

(declare-fun e!390190 () Bool)

(assert (=> b!685107 (= e!390189 e!390190)))

(declare-fun res!450664 () Bool)

(assert (=> b!685107 (=> (not res!450664) (not e!390190))))

(assert (=> b!685107 (= res!450664 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19342 a!3626)))))

(declare-fun b!685108 () Bool)

(assert (=> b!685108 (= e!390190 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94389 (not res!450663)) b!685107))

(assert (= (and b!685107 res!450664) b!685108))

(assert (=> d!94389 m!649301))

(declare-fun m!649389 () Bool)

(assert (=> b!685108 m!649389))

(assert (=> b!684868 d!94389))

(declare-fun b!685147 () Bool)

(declare-fun e!390224 () List!13067)

(declare-fun call!34067 () List!13067)

(assert (=> b!685147 (= e!390224 (Cons!13063 (h!14108 lt!314487) call!34067))))

(declare-fun b!685148 () Bool)

(declare-fun e!390223 () List!13067)

(assert (=> b!685148 (= e!390223 Nil!13064)))

(declare-fun bm!34064 () Bool)

(assert (=> bm!34064 (= call!34067 (-!160 (t!19324 lt!314487) k0!2843))))

(declare-fun b!685149 () Bool)

(declare-fun e!390225 () Bool)

(declare-fun lt!314554 () List!13067)

(assert (=> b!685149 (= e!390225 (= (content!289 lt!314554) ((_ map and) (content!289 lt!314487) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2843 true)))))))

(declare-fun b!685150 () Bool)

(assert (=> b!685150 (= e!390224 call!34067)))

(declare-fun b!685151 () Bool)

(assert (=> b!685151 (= e!390223 e!390224)))

(declare-fun c!77597 () Bool)

(assert (=> b!685151 (= c!77597 (= k0!2843 (h!14108 lt!314487)))))

(declare-fun d!94391 () Bool)

(assert (=> d!94391 e!390225))

(declare-fun res!450689 () Bool)

(assert (=> d!94391 (=> (not res!450689) (not e!390225))))

(declare-fun size!19345 (List!13067) Int)

(assert (=> d!94391 (= res!450689 (<= (size!19345 lt!314554) (size!19345 lt!314487)))))

(assert (=> d!94391 (= lt!314554 e!390223)))

(declare-fun c!77596 () Bool)

(assert (=> d!94391 (= c!77596 ((_ is Cons!13063) lt!314487))))

(assert (=> d!94391 (= (-!160 lt!314487 k0!2843) lt!314554)))

(assert (= (and d!94391 c!77596) b!685151))

(assert (= (and d!94391 (not c!77596)) b!685148))

(assert (= (and b!685151 c!77597) b!685150))

(assert (= (and b!685151 (not c!77597)) b!685147))

(assert (= (or b!685150 b!685147) bm!34064))

(assert (= (and d!94391 res!450689) b!685149))

(declare-fun m!649443 () Bool)

(assert (=> bm!34064 m!649443))

(declare-fun m!649445 () Bool)

(assert (=> b!685149 m!649445))

(assert (=> b!685149 m!649383))

(declare-fun m!649447 () Bool)

(assert (=> b!685149 m!649447))

(declare-fun m!649449 () Bool)

(assert (=> d!94391 m!649449))

(declare-fun m!649451 () Bool)

(assert (=> d!94391 m!649451))

(assert (=> b!684868 d!94391))

(declare-fun d!94417 () Bool)

(assert (=> d!94417 (= (-!160 ($colon$colon!359 acc!681 k0!2843) k0!2843) acc!681)))

(declare-fun lt!314558 () Unit!24102)

(declare-fun choose!16 ((_ BitVec 64) List!13067) Unit!24102)

(assert (=> d!94417 (= lt!314558 (choose!16 k0!2843 acc!681))))

(assert (=> d!94417 (not (contains!3610 acc!681 k0!2843))))

(assert (=> d!94417 (= (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681) lt!314558)))

(declare-fun bs!20090 () Bool)

(assert (= bs!20090 d!94417))

(assert (=> bs!20090 m!649205))

(assert (=> bs!20090 m!649205))

(declare-fun m!649471 () Bool)

(assert (=> bs!20090 m!649471))

(declare-fun m!649473 () Bool)

(assert (=> bs!20090 m!649473))

(assert (=> bs!20090 m!649187))

(assert (=> b!684868 d!94417))

(declare-fun d!94431 () Bool)

(declare-fun res!450703 () Bool)

(declare-fun e!390240 () Bool)

(assert (=> d!94431 (=> res!450703 e!390240)))

(assert (=> d!94431 (= res!450703 (= (select (arr!18973 (array!39597 (store (arr!18973 a!3626) i!1382 k0!2843) (size!19342 a!3626))) from!3004) k0!2843))))

(assert (=> d!94431 (= (arrayContainsKey!0 (array!39597 (store (arr!18973 a!3626) i!1382 k0!2843) (size!19342 a!3626)) k0!2843 from!3004) e!390240)))

(declare-fun b!685167 () Bool)

(declare-fun e!390241 () Bool)

(assert (=> b!685167 (= e!390240 e!390241)))

(declare-fun res!450704 () Bool)

(assert (=> b!685167 (=> (not res!450704) (not e!390241))))

(assert (=> b!685167 (= res!450704 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19342 (array!39597 (store (arr!18973 a!3626) i!1382 k0!2843) (size!19342 a!3626)))))))

(declare-fun b!685168 () Bool)

(assert (=> b!685168 (= e!390241 (arrayContainsKey!0 (array!39597 (store (arr!18973 a!3626) i!1382 k0!2843) (size!19342 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94431 (not res!450703)) b!685167))

(assert (= (and b!685167 res!450704) b!685168))

(declare-fun m!649475 () Bool)

(assert (=> d!94431 m!649475))

(declare-fun m!649477 () Bool)

(assert (=> b!685168 m!649477))

(assert (=> b!684868 d!94431))

(assert (=> b!684868 d!94341))

(declare-fun d!94433 () Bool)

(assert (=> d!94433 (= (validKeyInArray!0 (select (arr!18973 a!3626) from!3004)) (and (not (= (select (arr!18973 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18973 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!684868 d!94433))

(declare-fun d!94435 () Bool)

(assert (=> d!94435 (= ($colon$colon!359 acc!681 k0!2843) (Cons!13063 k0!2843 acc!681))))

(assert (=> b!684868 d!94435))

(assert (=> b!684868 d!94343))

(assert (=> b!684870 d!94351))

(declare-fun d!94437 () Bool)

(declare-fun lt!314559 () Bool)

(assert (=> d!94437 (= lt!314559 (select (content!289 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!390243 () Bool)

(assert (=> d!94437 (= lt!314559 e!390243)))

(declare-fun res!450706 () Bool)

(assert (=> d!94437 (=> (not res!450706) (not e!390243))))

(assert (=> d!94437 (= res!450706 ((_ is Cons!13063) acc!681))))

(assert (=> d!94437 (= (contains!3610 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314559)))

(declare-fun b!685169 () Bool)

(declare-fun e!390242 () Bool)

(assert (=> b!685169 (= e!390243 e!390242)))

(declare-fun res!450705 () Bool)

(assert (=> b!685169 (=> res!450705 e!390242)))

(assert (=> b!685169 (= res!450705 (= (h!14108 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685170 () Bool)

(assert (=> b!685170 (= e!390242 (contains!3610 (t!19324 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94437 res!450706) b!685169))

(assert (= (and b!685169 (not res!450705)) b!685170))

(assert (=> d!94437 m!649315))

(declare-fun m!649479 () Bool)

(assert (=> d!94437 m!649479))

(declare-fun m!649481 () Bool)

(assert (=> b!685170 m!649481))

(assert (=> b!684859 d!94437))

(check-sat (not b!684993) (not b!684959) (not b!685101) (not b!685058) (not b!685057) (not b!685032) (not b!685013) (not d!94387) (not b!685033) (not b!685089) (not b!685088) (not b!685056) (not d!94379) (not b!685102) (not b!684958) (not d!94417) (not bm!34052) (not b!685075) (not d!94351) (not d!94337) (not bm!34055) (not b!685108) (not b!685149) (not b!684992) (not d!94391) (not d!94341) (not b!685168) (not b!685170) (not b!685059) (not bm!34059) (not d!94437) (not d!94357) (not b!685031) (not bm!34064) (not b!684994) (not b!685106) (not b!685077) (not b!685087))
(check-sat)
