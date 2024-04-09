; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62986 () Bool)

(assert start!62986)

(declare-fun b!709663 () Bool)

(declare-fun res!473337 () Bool)

(declare-fun e!399335 () Bool)

(assert (=> b!709663 (=> (not res!473337) (not e!399335))))

(declare-datatypes ((List!13417 0))(
  ( (Nil!13414) (Cons!13413 (h!14458 (_ BitVec 64)) (t!19722 List!13417)) )
))
(declare-fun acc!652 () List!13417)

(declare-fun newAcc!49 () List!13417)

(declare-fun subseq!404 (List!13417 List!13417) Bool)

(assert (=> b!709663 (= res!473337 (subseq!404 acc!652 newAcc!49))))

(declare-fun b!709664 () Bool)

(declare-fun res!473334 () Bool)

(assert (=> b!709664 (=> (not res!473334) (not e!399335))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3960 (List!13417 (_ BitVec 64)) Bool)

(assert (=> b!709664 (= res!473334 (not (contains!3960 acc!652 k!2824)))))

(declare-fun b!709665 () Bool)

(declare-fun res!473341 () Bool)

(declare-fun e!399336 () Bool)

(assert (=> b!709665 (=> (not res!473341) (not e!399336))))

(declare-fun lt!318215 () List!13417)

(declare-fun noDuplicate!1207 (List!13417) Bool)

(assert (=> b!709665 (= res!473341 (noDuplicate!1207 lt!318215))))

(declare-fun b!709666 () Bool)

(declare-fun res!473328 () Bool)

(assert (=> b!709666 (=> (not res!473328) (not e!399335))))

(assert (=> b!709666 (= res!473328 (noDuplicate!1207 newAcc!49))))

(declare-fun b!709667 () Bool)

(declare-fun res!473333 () Bool)

(assert (=> b!709667 (=> (not res!473333) (not e!399336))))

(declare-datatypes ((array!40356 0))(
  ( (array!40357 (arr!19323 (Array (_ BitVec 32) (_ BitVec 64))) (size!19719 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40356)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun $colon$colon!514 (List!13417 (_ BitVec 64)) List!13417)

(assert (=> b!709667 (= res!473333 (noDuplicate!1207 ($colon$colon!514 newAcc!49 (select (arr!19323 a!3591) from!2969))))))

(declare-fun res!473338 () Bool)

(assert (=> start!62986 (=> (not res!473338) (not e!399335))))

(assert (=> start!62986 (= res!473338 (and (bvslt (size!19719 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19719 a!3591))))))

(assert (=> start!62986 e!399335))

(assert (=> start!62986 true))

(declare-fun array_inv!15097 (array!40356) Bool)

(assert (=> start!62986 (array_inv!15097 a!3591)))

(declare-fun b!709668 () Bool)

(declare-fun res!473336 () Bool)

(assert (=> b!709668 (=> (not res!473336) (not e!399335))))

(declare-fun arrayContainsKey!0 (array!40356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709668 (= res!473336 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!709669 () Bool)

(declare-fun res!473321 () Bool)

(assert (=> b!709669 (=> (not res!473321) (not e!399335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709669 (= res!473321 (validKeyInArray!0 k!2824))))

(declare-fun b!709670 () Bool)

(declare-fun res!473327 () Bool)

(assert (=> b!709670 (=> (not res!473327) (not e!399335))))

(assert (=> b!709670 (= res!473327 (noDuplicate!1207 acc!652))))

(declare-fun b!709671 () Bool)

(declare-fun res!473326 () Bool)

(assert (=> b!709671 (=> (not res!473326) (not e!399335))))

(assert (=> b!709671 (= res!473326 (not (contains!3960 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709672 () Bool)

(declare-fun res!473322 () Bool)

(assert (=> b!709672 (=> (not res!473322) (not e!399335))))

(assert (=> b!709672 (= res!473322 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19719 a!3591)))))

(declare-fun b!709673 () Bool)

(declare-fun res!473330 () Bool)

(assert (=> b!709673 (=> (not res!473330) (not e!399336))))

(assert (=> b!709673 (= res!473330 (not (contains!3960 lt!318215 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709674 () Bool)

(declare-fun res!473329 () Bool)

(assert (=> b!709674 (=> (not res!473329) (not e!399336))))

(assert (=> b!709674 (= res!473329 (not (contains!3960 lt!318215 k!2824)))))

(declare-fun b!709675 () Bool)

(declare-fun res!473325 () Bool)

(assert (=> b!709675 (=> (not res!473325) (not e!399335))))

(declare-fun -!369 (List!13417 (_ BitVec 64)) List!13417)

(assert (=> b!709675 (= res!473325 (= (-!369 newAcc!49 k!2824) acc!652))))

(declare-fun b!709676 () Bool)

(declare-fun res!473342 () Bool)

(assert (=> b!709676 (=> (not res!473342) (not e!399335))))

(assert (=> b!709676 (= res!473342 (contains!3960 newAcc!49 k!2824))))

(declare-fun b!709677 () Bool)

(declare-fun res!473323 () Bool)

(assert (=> b!709677 (=> (not res!473323) (not e!399336))))

(assert (=> b!709677 (= res!473323 (not (contains!3960 lt!318215 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709678 () Bool)

(declare-fun res!473340 () Bool)

(assert (=> b!709678 (=> (not res!473340) (not e!399335))))

(assert (=> b!709678 (= res!473340 (not (contains!3960 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709679 () Bool)

(declare-fun res!473339 () Bool)

(assert (=> b!709679 (=> (not res!473339) (not e!399335))))

(assert (=> b!709679 (= res!473339 (not (contains!3960 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709680 () Bool)

(assert (=> b!709680 (= e!399335 e!399336)))

(declare-fun res!473343 () Bool)

(assert (=> b!709680 (=> (not res!473343) (not e!399336))))

(assert (=> b!709680 (= res!473343 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (=> b!709680 (= lt!318215 ($colon$colon!514 acc!652 (select (arr!19323 a!3591) from!2969)))))

(declare-fun b!709681 () Bool)

(declare-fun res!473331 () Bool)

(assert (=> b!709681 (=> (not res!473331) (not e!399335))))

(assert (=> b!709681 (= res!473331 (not (contains!3960 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709682 () Bool)

(declare-fun res!473324 () Bool)

(assert (=> b!709682 (=> (not res!473324) (not e!399336))))

(assert (=> b!709682 (= res!473324 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709683 () Bool)

(declare-fun res!473335 () Bool)

(assert (=> b!709683 (=> (not res!473335) (not e!399335))))

(assert (=> b!709683 (= res!473335 (validKeyInArray!0 (select (arr!19323 a!3591) from!2969)))))

(declare-fun b!709684 () Bool)

(declare-fun res!473332 () Bool)

(assert (=> b!709684 (=> (not res!473332) (not e!399335))))

(declare-fun arrayNoDuplicates!0 (array!40356 (_ BitVec 32) List!13417) Bool)

(assert (=> b!709684 (= res!473332 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!709685 () Bool)

(assert (=> b!709685 (= e!399336 (not (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318215)))))

(assert (= (and start!62986 res!473338) b!709670))

(assert (= (and b!709670 res!473327) b!709666))

(assert (= (and b!709666 res!473328) b!709679))

(assert (= (and b!709679 res!473339) b!709681))

(assert (= (and b!709681 res!473331) b!709668))

(assert (= (and b!709668 res!473336) b!709664))

(assert (= (and b!709664 res!473334) b!709669))

(assert (= (and b!709669 res!473321) b!709684))

(assert (= (and b!709684 res!473332) b!709663))

(assert (= (and b!709663 res!473337) b!709676))

(assert (= (and b!709676 res!473342) b!709675))

(assert (= (and b!709675 res!473325) b!709671))

(assert (= (and b!709671 res!473326) b!709678))

(assert (= (and b!709678 res!473340) b!709672))

(assert (= (and b!709672 res!473322) b!709683))

(assert (= (and b!709683 res!473335) b!709680))

(assert (= (and b!709680 res!473343) b!709665))

(assert (= (and b!709665 res!473341) b!709667))

(assert (= (and b!709667 res!473333) b!709673))

(assert (= (and b!709673 res!473330) b!709677))

(assert (= (and b!709677 res!473323) b!709682))

(assert (= (and b!709682 res!473324) b!709674))

(assert (= (and b!709674 res!473329) b!709685))

(declare-fun m!666969 () Bool)

(assert (=> b!709669 m!666969))

(declare-fun m!666971 () Bool)

(assert (=> b!709663 m!666971))

(declare-fun m!666973 () Bool)

(assert (=> b!709673 m!666973))

(declare-fun m!666975 () Bool)

(assert (=> b!709671 m!666975))

(declare-fun m!666977 () Bool)

(assert (=> b!709684 m!666977))

(declare-fun m!666979 () Bool)

(assert (=> b!709674 m!666979))

(declare-fun m!666981 () Bool)

(assert (=> b!709681 m!666981))

(declare-fun m!666983 () Bool)

(assert (=> b!709675 m!666983))

(declare-fun m!666985 () Bool)

(assert (=> b!709678 m!666985))

(declare-fun m!666987 () Bool)

(assert (=> start!62986 m!666987))

(declare-fun m!666989 () Bool)

(assert (=> b!709685 m!666989))

(declare-fun m!666991 () Bool)

(assert (=> b!709676 m!666991))

(declare-fun m!666993 () Bool)

(assert (=> b!709682 m!666993))

(declare-fun m!666995 () Bool)

(assert (=> b!709667 m!666995))

(assert (=> b!709667 m!666995))

(declare-fun m!666997 () Bool)

(assert (=> b!709667 m!666997))

(assert (=> b!709667 m!666997))

(declare-fun m!666999 () Bool)

(assert (=> b!709667 m!666999))

(declare-fun m!667001 () Bool)

(assert (=> b!709670 m!667001))

(declare-fun m!667003 () Bool)

(assert (=> b!709665 m!667003))

(declare-fun m!667005 () Bool)

(assert (=> b!709677 m!667005))

(assert (=> b!709683 m!666995))

(assert (=> b!709683 m!666995))

(declare-fun m!667007 () Bool)

(assert (=> b!709683 m!667007))

(declare-fun m!667009 () Bool)

(assert (=> b!709666 m!667009))

(declare-fun m!667011 () Bool)

(assert (=> b!709664 m!667011))

(declare-fun m!667013 () Bool)

(assert (=> b!709679 m!667013))

(assert (=> b!709680 m!666995))

(assert (=> b!709680 m!666995))

(declare-fun m!667015 () Bool)

(assert (=> b!709680 m!667015))

(declare-fun m!667017 () Bool)

(assert (=> b!709668 m!667017))

(push 1)

(assert (not b!709684))

(assert (not b!709679))

(assert (not b!709683))

(assert (not b!709673))

(assert (not b!709666))

(assert (not b!709682))

(assert (not start!62986))

(assert (not b!709681))

(assert (not b!709685))

(assert (not b!709663))

(assert (not b!709680))

(assert (not b!709667))

(assert (not b!709676))

(assert (not b!709671))

(assert (not b!709665))

(assert (not b!709668))

(assert (not b!709670))

(assert (not b!709669))

(assert (not b!709678))

(assert (not b!709677))

(assert (not b!709675))

(assert (not b!709664))

(assert (not b!709674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!97143 () Bool)

(assert (=> d!97143 (= ($colon$colon!514 acc!652 (select (arr!19323 a!3591) from!2969)) (Cons!13413 (select (arr!19323 a!3591) from!2969) acc!652))))

(assert (=> b!709680 d!97143))

(declare-fun d!97145 () Bool)

(assert (=> d!97145 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709669 d!97145))

(declare-fun d!97147 () Bool)

(declare-fun res!473525 () Bool)

(declare-fun e!399401 () Bool)

(assert (=> d!97147 (=> res!473525 e!399401)))

(assert (=> d!97147 (= res!473525 (is-Nil!13414 acc!652))))

(assert (=> d!97147 (= (noDuplicate!1207 acc!652) e!399401)))

(declare-fun b!709873 () Bool)

(declare-fun e!399402 () Bool)

(assert (=> b!709873 (= e!399401 e!399402)))

(declare-fun res!473526 () Bool)

(assert (=> b!709873 (=> (not res!473526) (not e!399402))))

(assert (=> b!709873 (= res!473526 (not (contains!3960 (t!19722 acc!652) (h!14458 acc!652))))))

(declare-fun b!709874 () Bool)

(assert (=> b!709874 (= e!399402 (noDuplicate!1207 (t!19722 acc!652)))))

(assert (= (and d!97147 (not res!473525)) b!709873))

(assert (= (and b!709873 res!473526) b!709874))

(declare-fun m!667157 () Bool)

(assert (=> b!709873 m!667157))

(declare-fun m!667159 () Bool)

(assert (=> b!709874 m!667159))

(assert (=> b!709670 d!97147))

(declare-fun d!97151 () Bool)

(declare-fun res!473551 () Bool)

(declare-fun e!399427 () Bool)

(assert (=> d!97151 (=> res!473551 e!399427)))

(assert (=> d!97151 (= res!473551 (= (select (arr!19323 a!3591) from!2969) k!2824))))

(assert (=> d!97151 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!399427)))

(declare-fun b!709899 () Bool)

(declare-fun e!399428 () Bool)

(assert (=> b!709899 (= e!399427 e!399428)))

(declare-fun res!473552 () Bool)

(assert (=> b!709899 (=> (not res!473552) (not e!399428))))

(assert (=> b!709899 (= res!473552 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19719 a!3591)))))

(declare-fun b!709900 () Bool)

(assert (=> b!709900 (= e!399428 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97151 (not res!473551)) b!709899))

(assert (= (and b!709899 res!473552) b!709900))

(assert (=> d!97151 m!666995))

(declare-fun m!667203 () Bool)

(assert (=> b!709900 m!667203))

(assert (=> b!709668 d!97151))

(declare-fun d!97173 () Bool)

(declare-fun lt!318239 () Bool)

(declare-fun content!351 (List!13417) (Set (_ BitVec 64)))

(assert (=> d!97173 (= lt!318239 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!351 acc!652)))))

(declare-fun e!399448 () Bool)

(assert (=> d!97173 (= lt!318239 e!399448)))

(declare-fun res!473572 () Bool)

(assert (=> d!97173 (=> (not res!473572) (not e!399448))))

(assert (=> d!97173 (= res!473572 (is-Cons!13413 acc!652))))

(assert (=> d!97173 (= (contains!3960 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318239)))

(declare-fun b!709919 () Bool)

(declare-fun e!399447 () Bool)

(assert (=> b!709919 (= e!399448 e!399447)))

(declare-fun res!473571 () Bool)

(assert (=> b!709919 (=> res!473571 e!399447)))

(assert (=> b!709919 (= res!473571 (= (h!14458 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709920 () Bool)

(assert (=> b!709920 (= e!399447 (contains!3960 (t!19722 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97173 res!473572) b!709919))

(assert (= (and b!709919 (not res!473571)) b!709920))

(declare-fun m!667209 () Bool)

(assert (=> d!97173 m!667209))

(declare-fun m!667211 () Bool)

(assert (=> d!97173 m!667211))

(declare-fun m!667213 () Bool)

(assert (=> b!709920 m!667213))

(assert (=> b!709679 d!97173))

(declare-fun d!97177 () Bool)

(declare-fun lt!318240 () Bool)

(assert (=> d!97177 (= lt!318240 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!351 lt!318215)))))

(declare-fun e!399453 () Bool)

(assert (=> d!97177 (= lt!318240 e!399453)))

(declare-fun res!473574 () Bool)

(assert (=> d!97177 (=> (not res!473574) (not e!399453))))

(assert (=> d!97177 (= res!473574 (is-Cons!13413 lt!318215))))

(assert (=> d!97177 (= (contains!3960 lt!318215 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318240)))

(declare-fun b!709921 () Bool)

(declare-fun e!399452 () Bool)

(assert (=> b!709921 (= e!399453 e!399452)))

(declare-fun res!473573 () Bool)

(assert (=> b!709921 (=> res!473573 e!399452)))

(assert (=> b!709921 (= res!473573 (= (h!14458 lt!318215) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709922 () Bool)

(assert (=> b!709922 (= e!399452 (contains!3960 (t!19722 lt!318215) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97177 res!473574) b!709921))

(assert (= (and b!709921 (not res!473573)) b!709922))

(declare-fun m!667215 () Bool)

(assert (=> d!97177 m!667215))

(declare-fun m!667217 () Bool)

(assert (=> d!97177 m!667217))

(declare-fun m!667219 () Bool)

(assert (=> b!709922 m!667219))

(assert (=> b!709677 d!97177))

(declare-fun d!97179 () Bool)

(declare-fun lt!318241 () Bool)

(assert (=> d!97179 (= lt!318241 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!351 newAcc!49)))))

(declare-fun e!399456 () Bool)

(assert (=> d!97179 (= lt!318241 e!399456)))

(declare-fun res!473580 () Bool)

(assert (=> d!97179 (=> (not res!473580) (not e!399456))))

(assert (=> d!97179 (= res!473580 (is-Cons!13413 newAcc!49))))

(assert (=> d!97179 (= (contains!3960 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318241)))

(declare-fun b!709927 () Bool)

(declare-fun e!399455 () Bool)

(assert (=> b!709927 (= e!399456 e!399455)))

(declare-fun res!473579 () Bool)

(assert (=> b!709927 (=> res!473579 e!399455)))

(assert (=> b!709927 (= res!473579 (= (h!14458 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709928 () Bool)

(assert (=> b!709928 (= e!399455 (contains!3960 (t!19722 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97179 res!473580) b!709927))

(assert (= (and b!709927 (not res!473579)) b!709928))

(declare-fun m!667225 () Bool)

(assert (=> d!97179 m!667225))

(declare-fun m!667227 () Bool)

(assert (=> d!97179 m!667227))

(declare-fun m!667229 () Bool)

(assert (=> b!709928 m!667229))

(assert (=> b!709678 d!97179))

(declare-fun d!97183 () Bool)

(declare-fun res!473584 () Bool)

(declare-fun e!399461 () Bool)

(assert (=> d!97183 (=> res!473584 e!399461)))

(assert (=> d!97183 (= res!473584 (is-Nil!13414 ($colon$colon!514 newAcc!49 (select (arr!19323 a!3591) from!2969))))))

(assert (=> d!97183 (= (noDuplicate!1207 ($colon$colon!514 newAcc!49 (select (arr!19323 a!3591) from!2969))) e!399461)))

(declare-fun b!709934 () Bool)

(declare-fun e!399462 () Bool)

(assert (=> b!709934 (= e!399461 e!399462)))

(declare-fun res!473585 () Bool)

(assert (=> b!709934 (=> (not res!473585) (not e!399462))))

(assert (=> b!709934 (= res!473585 (not (contains!3960 (t!19722 ($colon$colon!514 newAcc!49 (select (arr!19323 a!3591) from!2969))) (h!14458 ($colon$colon!514 newAcc!49 (select (arr!19323 a!3591) from!2969))))))))

(declare-fun b!709935 () Bool)

(assert (=> b!709935 (= e!399462 (noDuplicate!1207 (t!19722 ($colon$colon!514 newAcc!49 (select (arr!19323 a!3591) from!2969)))))))

(assert (= (and d!97183 (not res!473584)) b!709934))

(assert (= (and b!709934 res!473585) b!709935))

(declare-fun m!667233 () Bool)

(assert (=> b!709934 m!667233))

(declare-fun m!667235 () Bool)

(assert (=> b!709935 m!667235))

(assert (=> b!709667 d!97183))

(declare-fun d!97185 () Bool)

(assert (=> d!97185 (= ($colon$colon!514 newAcc!49 (select (arr!19323 a!3591) from!2969)) (Cons!13413 (select (arr!19323 a!3591) from!2969) newAcc!49))))

(assert (=> b!709667 d!97185))

(declare-fun d!97187 () Bool)

(declare-fun lt!318242 () Bool)

(assert (=> d!97187 (= lt!318242 (set.member k!2824 (content!351 newAcc!49)))))

(declare-fun e!399464 () Bool)

(assert (=> d!97187 (= lt!318242 e!399464)))

(declare-fun res!473587 () Bool)

(assert (=> d!97187 (=> (not res!473587) (not e!399464))))

(assert (=> d!97187 (= res!473587 (is-Cons!13413 newAcc!49))))

(assert (=> d!97187 (= (contains!3960 newAcc!49 k!2824) lt!318242)))

(declare-fun b!709936 () Bool)

(declare-fun e!399463 () Bool)

(assert (=> b!709936 (= e!399464 e!399463)))

(declare-fun res!473586 () Bool)

(assert (=> b!709936 (=> res!473586 e!399463)))

(assert (=> b!709936 (= res!473586 (= (h!14458 newAcc!49) k!2824))))

(declare-fun b!709937 () Bool)

(assert (=> b!709937 (= e!399463 (contains!3960 (t!19722 newAcc!49) k!2824))))

(assert (= (and d!97187 res!473587) b!709936))

(assert (= (and b!709936 (not res!473586)) b!709937))

(assert (=> d!97187 m!667225))

(declare-fun m!667241 () Bool)

(assert (=> d!97187 m!667241))

(declare-fun m!667243 () Bool)

(assert (=> b!709937 m!667243))

(assert (=> b!709676 d!97187))

(declare-fun d!97191 () Bool)

(declare-fun res!473594 () Bool)

(declare-fun e!399471 () Bool)

(assert (=> d!97191 (=> res!473594 e!399471)))

(assert (=> d!97191 (= res!473594 (is-Nil!13414 lt!318215))))

(assert (=> d!97191 (= (noDuplicate!1207 lt!318215) e!399471)))

(declare-fun b!709946 () Bool)

(declare-fun e!399472 () Bool)

(assert (=> b!709946 (= e!399471 e!399472)))

(declare-fun res!473595 () Bool)

(assert (=> b!709946 (=> (not res!473595) (not e!399472))))

(assert (=> b!709946 (= res!473595 (not (contains!3960 (t!19722 lt!318215) (h!14458 lt!318215))))))

(declare-fun b!709947 () Bool)

(assert (=> b!709947 (= e!399472 (noDuplicate!1207 (t!19722 lt!318215)))))

(assert (= (and d!97191 (not res!473594)) b!709946))

(assert (= (and b!709946 res!473595) b!709947))

(declare-fun m!667245 () Bool)

(assert (=> b!709946 m!667245))

(declare-fun m!667247 () Bool)

(assert (=> b!709947 m!667247))

(assert (=> b!709665 d!97191))

(declare-fun d!97193 () Bool)

(declare-fun res!473596 () Bool)

(declare-fun e!399475 () Bool)

(assert (=> d!97193 (=> res!473596 e!399475)))

(assert (=> d!97193 (= res!473596 (is-Nil!13414 newAcc!49))))

(assert (=> d!97193 (= (noDuplicate!1207 newAcc!49) e!399475)))

(declare-fun b!709950 () Bool)

(declare-fun e!399476 () Bool)

(assert (=> b!709950 (= e!399475 e!399476)))

(declare-fun res!473597 () Bool)

(assert (=> b!709950 (=> (not res!473597) (not e!399476))))

(assert (=> b!709950 (= res!473597 (not (contains!3960 (t!19722 newAcc!49) (h!14458 newAcc!49))))))

(declare-fun b!709951 () Bool)

(assert (=> b!709951 (= e!399476 (noDuplicate!1207 (t!19722 newAcc!49)))))

(assert (= (and d!97193 (not res!473596)) b!709950))

(assert (= (and b!709950 res!473597) b!709951))

(declare-fun m!667249 () Bool)

(assert (=> b!709950 m!667249))

(declare-fun m!667251 () Bool)

(assert (=> b!709951 m!667251))

(assert (=> b!709666 d!97193))

(declare-fun d!97195 () Bool)

(declare-fun lt!318243 () Bool)

(assert (=> d!97195 (= lt!318243 (set.member k!2824 (content!351 acc!652)))))

(declare-fun e!399478 () Bool)

(assert (=> d!97195 (= lt!318243 e!399478)))

(declare-fun res!473599 () Bool)

(assert (=> d!97195 (=> (not res!473599) (not e!399478))))

(assert (=> d!97195 (= res!473599 (is-Cons!13413 acc!652))))

(assert (=> d!97195 (= (contains!3960 acc!652 k!2824) lt!318243)))

(declare-fun b!709952 () Bool)

(declare-fun e!399477 () Bool)

(assert (=> b!709952 (= e!399478 e!399477)))

(declare-fun res!473598 () Bool)

(assert (=> b!709952 (=> res!473598 e!399477)))

(assert (=> b!709952 (= res!473598 (= (h!14458 acc!652) k!2824))))

(declare-fun b!709953 () Bool)

(assert (=> b!709953 (= e!399477 (contains!3960 (t!19722 acc!652) k!2824))))

(assert (= (and d!97195 res!473599) b!709952))

(assert (= (and b!709952 (not res!473598)) b!709953))

(assert (=> d!97195 m!667209))

(declare-fun m!667253 () Bool)

(assert (=> d!97195 m!667253))

(declare-fun m!667255 () Bool)

(assert (=> b!709953 m!667255))

(assert (=> b!709664 d!97195))

(declare-fun d!97197 () Bool)

(declare-fun res!473621 () Bool)

(declare-fun e!399511 () Bool)

(assert (=> d!97197 (=> res!473621 e!399511)))

(assert (=> d!97197 (= res!473621 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19719 a!3591)))))

(assert (=> d!97197 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318215) e!399511)))

(declare-fun b!709992 () Bool)

(declare-fun e!399510 () Bool)

(declare-fun call!34462 () Bool)

(assert (=> b!709992 (= e!399510 call!34462)))

(declare-fun b!709993 () Bool)

(declare-fun e!399509 () Bool)

(assert (=> b!709993 (= e!399509 e!399510)))

(declare-fun c!78553 () Bool)

(assert (=> b!709993 (= c!78553 (validKeyInArray!0 (select (arr!19323 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709994 () Bool)

(assert (=> b!709994 (= e!399511 e!399509)))

(declare-fun res!473622 () Bool)

(assert (=> b!709994 (=> (not res!473622) (not e!399509))))

(declare-fun e!399512 () Bool)

(assert (=> b!709994 (= res!473622 (not e!399512))))

(declare-fun res!473620 () Bool)

(assert (=> b!709994 (=> (not res!473620) (not e!399512))))

(assert (=> b!709994 (= res!473620 (validKeyInArray!0 (select (arr!19323 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709995 () Bool)

(assert (=> b!709995 (= e!399512 (contains!3960 lt!318215 (select (arr!19323 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709996 () Bool)

(assert (=> b!709996 (= e!399510 call!34462)))

(declare-fun bm!34459 () Bool)

(assert (=> bm!34459 (= call!34462 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78553 (Cons!13413 (select (arr!19323 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318215) lt!318215)))))

(assert (= (and d!97197 (not res!473621)) b!709994))

(assert (= (and b!709994 res!473620) b!709995))

(assert (= (and b!709994 res!473622) b!709993))

(assert (= (and b!709993 c!78553) b!709996))

(assert (= (and b!709993 (not c!78553)) b!709992))

(assert (= (or b!709996 b!709992) bm!34459))

(declare-fun m!667281 () Bool)

(assert (=> b!709993 m!667281))

(assert (=> b!709993 m!667281))

(declare-fun m!667285 () Bool)

(assert (=> b!709993 m!667285))

(assert (=> b!709994 m!667281))

(assert (=> b!709994 m!667281))

(assert (=> b!709994 m!667285))

(assert (=> b!709995 m!667281))

(assert (=> b!709995 m!667281))

(declare-fun m!667287 () Bool)

(assert (=> b!709995 m!667287))

(assert (=> bm!34459 m!667281))

(declare-fun m!667289 () Bool)

(assert (=> bm!34459 m!667289))

(assert (=> b!709685 d!97197))

(declare-fun lt!318255 () List!13417)

(declare-fun e!399544 () Bool)

(declare-fun b!710032 () Bool)

(assert (=> b!710032 (= e!399544 (= (content!351 lt!318255) (set.minus (content!351 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun d!97213 () Bool)

(assert (=> d!97213 e!399544))

(declare-fun res!473648 () Bool)

(assert (=> d!97213 (=> (not res!473648) (not e!399544))))

(declare-fun size!19722 (List!13417) Int)

(assert (=> d!97213 (= res!473648 (<= (size!19722 lt!318255) (size!19722 newAcc!49)))))

(declare-fun e!399545 () List!13417)

(assert (=> d!97213 (= lt!318255 e!399545)))

(declare-fun c!78560 () Bool)

(assert (=> d!97213 (= c!78560 (is-Cons!13413 newAcc!49))))

(assert (=> d!97213 (= (-!369 newAcc!49 k!2824) lt!318255)))

(declare-fun b!710033 () Bool)

(declare-fun e!399546 () List!13417)

(declare-fun call!34466 () List!13417)

(assert (=> b!710033 (= e!399546 (Cons!13413 (h!14458 newAcc!49) call!34466))))

(declare-fun b!710034 () Bool)

(assert (=> b!710034 (= e!399546 call!34466)))

(declare-fun bm!34463 () Bool)

(assert (=> bm!34463 (= call!34466 (-!369 (t!19722 newAcc!49) k!2824))))

(declare-fun b!710035 () Bool)

(assert (=> b!710035 (= e!399545 e!399546)))

(declare-fun c!78559 () Bool)

(assert (=> b!710035 (= c!78559 (= k!2824 (h!14458 newAcc!49)))))

(declare-fun b!710036 () Bool)

(assert (=> b!710036 (= e!399545 Nil!13414)))

(assert (= (and d!97213 c!78560) b!710035))

(assert (= (and d!97213 (not c!78560)) b!710036))

(assert (= (and b!710035 c!78559) b!710034))

(assert (= (and b!710035 (not c!78559)) b!710033))

(assert (= (or b!710034 b!710033) bm!34463))

(assert (= (and d!97213 res!473648) b!710032))

(declare-fun m!667319 () Bool)

(assert (=> b!710032 m!667319))

(assert (=> b!710032 m!667225))

(declare-fun m!667321 () Bool)

(assert (=> b!710032 m!667321))

(declare-fun m!667323 () Bool)

(assert (=> d!97213 m!667323))

(declare-fun m!667325 () Bool)

(assert (=> d!97213 m!667325))

(declare-fun m!667327 () Bool)

(assert (=> bm!34463 m!667327))

(assert (=> b!709675 d!97213))

(declare-fun d!97229 () Bool)

(assert (=> d!97229 (= (array_inv!15097 a!3591) (bvsge (size!19719 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62986 d!97229))

(declare-fun d!97231 () Bool)

(declare-fun res!473654 () Bool)

(declare-fun e!399553 () Bool)

(assert (=> d!97231 (=> res!473654 e!399553)))

(assert (=> d!97231 (= res!473654 (bvsge from!2969 (size!19719 a!3591)))))

(assert (=> d!97231 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399553)))

(declare-fun b!710041 () Bool)

(declare-fun e!399552 () Bool)

(declare-fun call!34467 () Bool)

(assert (=> b!710041 (= e!399552 call!34467)))

(declare-fun b!710042 () Bool)

(declare-fun e!399551 () Bool)

(assert (=> b!710042 (= e!399551 e!399552)))

(declare-fun c!78561 () Bool)

(assert (=> b!710042 (= c!78561 (validKeyInArray!0 (select (arr!19323 a!3591) from!2969)))))

(declare-fun b!710043 () Bool)

(assert (=> b!710043 (= e!399553 e!399551)))

(declare-fun res!473655 () Bool)

(assert (=> b!710043 (=> (not res!473655) (not e!399551))))

(declare-fun e!399554 () Bool)

(assert (=> b!710043 (= res!473655 (not e!399554))))

(declare-fun res!473653 () Bool)

(assert (=> b!710043 (=> (not res!473653) (not e!399554))))

(assert (=> b!710043 (= res!473653 (validKeyInArray!0 (select (arr!19323 a!3591) from!2969)))))

(declare-fun b!710044 () Bool)

(assert (=> b!710044 (= e!399554 (contains!3960 acc!652 (select (arr!19323 a!3591) from!2969)))))

(declare-fun b!710045 () Bool)

(assert (=> b!710045 (= e!399552 call!34467)))

(declare-fun bm!34464 () Bool)

(assert (=> bm!34464 (= call!34467 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78561 (Cons!13413 (select (arr!19323 a!3591) from!2969) acc!652) acc!652)))))

(assert (= (and d!97231 (not res!473654)) b!710043))

(assert (= (and b!710043 res!473653) b!710044))

(assert (= (and b!710043 res!473655) b!710042))

(assert (= (and b!710042 c!78561) b!710045))

(assert (= (and b!710042 (not c!78561)) b!710041))

(assert (= (or b!710045 b!710041) bm!34464))

(assert (=> b!710042 m!666995))

(assert (=> b!710042 m!666995))

(assert (=> b!710042 m!667007))

(assert (=> b!710043 m!666995))

(assert (=> b!710043 m!666995))

(assert (=> b!710043 m!667007))

(assert (=> b!710044 m!666995))

(assert (=> b!710044 m!666995))

(declare-fun m!667339 () Bool)

(assert (=> b!710044 m!667339))

(assert (=> bm!34464 m!666995))

(declare-fun m!667343 () Bool)

(assert (=> bm!34464 m!667343))

(assert (=> b!709684 d!97231))

(declare-fun d!97239 () Bool)

(declare-fun lt!318257 () Bool)

(assert (=> d!97239 (= lt!318257 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!351 lt!318215)))))

(declare-fun e!399562 () Bool)

(assert (=> d!97239 (= lt!318257 e!399562)))

(declare-fun res!473663 () Bool)

(assert (=> d!97239 (=> (not res!473663) (not e!399562))))

(assert (=> d!97239 (= res!473663 (is-Cons!13413 lt!318215))))

(assert (=> d!97239 (= (contains!3960 lt!318215 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318257)))

(declare-fun b!710052 () Bool)

(declare-fun e!399561 () Bool)

(assert (=> b!710052 (= e!399562 e!399561)))

(declare-fun res!473662 () Bool)

(assert (=> b!710052 (=> res!473662 e!399561)))

(assert (=> b!710052 (= res!473662 (= (h!14458 lt!318215) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710053 () Bool)

(assert (=> b!710053 (= e!399561 (contains!3960 (t!19722 lt!318215) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97239 res!473663) b!710052))

(assert (= (and b!710052 (not res!473662)) b!710053))

(assert (=> d!97239 m!667215))

(declare-fun m!667349 () Bool)

(assert (=> d!97239 m!667349))

(declare-fun m!667351 () Bool)

