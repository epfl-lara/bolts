; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63394 () Bool)

(assert start!63394)

(declare-fun res!477071 () Bool)

(declare-fun e!401237 () Bool)

(assert (=> start!63394 (=> (not res!477071) (not e!401237))))

(declare-datatypes ((array!40452 0))(
  ( (array!40453 (arr!19362 (Array (_ BitVec 32) (_ BitVec 64))) (size!19774 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40452)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63394 (= res!477071 (and (bvslt (size!19774 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19774 a!3591))))))

(assert (=> start!63394 e!401237))

(assert (=> start!63394 true))

(declare-fun array_inv!15136 (array!40452) Bool)

(assert (=> start!63394 (array_inv!15136 a!3591)))

(declare-fun b!713821 () Bool)

(declare-fun res!477086 () Bool)

(assert (=> b!713821 (=> (not res!477086) (not e!401237))))

(declare-datatypes ((List!13456 0))(
  ( (Nil!13453) (Cons!13452 (h!14497 (_ BitVec 64)) (t!19779 List!13456)) )
))
(declare-fun acc!652 () List!13456)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3999 (List!13456 (_ BitVec 64)) Bool)

(assert (=> b!713821 (= res!477086 (not (contains!3999 acc!652 k!2824)))))

(declare-fun b!713822 () Bool)

(declare-fun res!477080 () Bool)

(assert (=> b!713822 (=> (not res!477080) (not e!401237))))

(declare-fun noDuplicate!1246 (List!13456) Bool)

(assert (=> b!713822 (= res!477080 (noDuplicate!1246 acc!652))))

(declare-fun b!713823 () Bool)

(declare-fun res!477073 () Bool)

(assert (=> b!713823 (=> (not res!477073) (not e!401237))))

(declare-fun newAcc!49 () List!13456)

(declare-fun -!408 (List!13456 (_ BitVec 64)) List!13456)

(assert (=> b!713823 (= res!477073 (= (-!408 newAcc!49 k!2824) acc!652))))

(declare-fun b!713824 () Bool)

(declare-fun res!477083 () Bool)

(assert (=> b!713824 (=> (not res!477083) (not e!401237))))

(declare-fun arrayContainsKey!0 (array!40452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!713824 (= res!477083 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!713825 () Bool)

(assert (=> b!713825 (= e!401237 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)))))

(declare-fun b!713826 () Bool)

(declare-fun res!477078 () Bool)

(assert (=> b!713826 (=> (not res!477078) (not e!401237))))

(assert (=> b!713826 (= res!477078 (not (contains!3999 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713827 () Bool)

(declare-fun res!477082 () Bool)

(assert (=> b!713827 (=> (not res!477082) (not e!401237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!713827 (= res!477082 (validKeyInArray!0 k!2824))))

(declare-fun b!713828 () Bool)

(declare-fun res!477077 () Bool)

(assert (=> b!713828 (=> (not res!477077) (not e!401237))))

(assert (=> b!713828 (= res!477077 (not (contains!3999 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713829 () Bool)

(declare-fun res!477075 () Bool)

(assert (=> b!713829 (=> (not res!477075) (not e!401237))))

(assert (=> b!713829 (= res!477075 (not (contains!3999 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713830 () Bool)

(declare-fun res!477087 () Bool)

(assert (=> b!713830 (=> (not res!477087) (not e!401237))))

(assert (=> b!713830 (= res!477087 (contains!3999 newAcc!49 k!2824))))

(declare-fun b!713831 () Bool)

(declare-fun res!477085 () Bool)

(assert (=> b!713831 (=> (not res!477085) (not e!401237))))

(assert (=> b!713831 (= res!477085 (noDuplicate!1246 newAcc!49))))

(declare-fun b!713832 () Bool)

(declare-fun res!477072 () Bool)

(assert (=> b!713832 (=> (not res!477072) (not e!401237))))

(assert (=> b!713832 (= res!477072 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!713833 () Bool)

(declare-fun res!477076 () Bool)

(assert (=> b!713833 (=> (not res!477076) (not e!401237))))

(declare-fun arrayNoDuplicates!0 (array!40452 (_ BitVec 32) List!13456) Bool)

(assert (=> b!713833 (= res!477076 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!713834 () Bool)

(declare-fun res!477079 () Bool)

(assert (=> b!713834 (=> (not res!477079) (not e!401237))))

(assert (=> b!713834 (= res!477079 (not (contains!3999 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!713835 () Bool)

(declare-fun res!477081 () Bool)

(assert (=> b!713835 (=> (not res!477081) (not e!401237))))

(assert (=> b!713835 (= res!477081 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19774 a!3591)))))

(declare-fun b!713836 () Bool)

(declare-fun res!477074 () Bool)

(assert (=> b!713836 (=> (not res!477074) (not e!401237))))

(assert (=> b!713836 (= res!477074 (not (validKeyInArray!0 (select (arr!19362 a!3591) from!2969))))))

(declare-fun b!713837 () Bool)

(declare-fun res!477084 () Bool)

(assert (=> b!713837 (=> (not res!477084) (not e!401237))))

(declare-fun subseq!443 (List!13456 List!13456) Bool)

(assert (=> b!713837 (= res!477084 (subseq!443 acc!652 newAcc!49))))

(assert (= (and start!63394 res!477071) b!713822))

(assert (= (and b!713822 res!477080) b!713831))

(assert (= (and b!713831 res!477085) b!713834))

(assert (= (and b!713834 res!477079) b!713828))

(assert (= (and b!713828 res!477077) b!713824))

(assert (= (and b!713824 res!477083) b!713821))

(assert (= (and b!713821 res!477086) b!713827))

(assert (= (and b!713827 res!477082) b!713833))

(assert (= (and b!713833 res!477076) b!713837))

(assert (= (and b!713837 res!477084) b!713830))

(assert (= (and b!713830 res!477087) b!713823))

(assert (= (and b!713823 res!477073) b!713826))

(assert (= (and b!713826 res!477078) b!713829))

(assert (= (and b!713829 res!477075) b!713835))

(assert (= (and b!713835 res!477081) b!713836))

(assert (= (and b!713836 res!477074) b!713832))

(assert (= (and b!713832 res!477072) b!713825))

(declare-fun m!670545 () Bool)

(assert (=> b!713837 m!670545))

(declare-fun m!670547 () Bool)

(assert (=> b!713833 m!670547))

(declare-fun m!670549 () Bool)

(assert (=> b!713824 m!670549))

(declare-fun m!670551 () Bool)

(assert (=> b!713827 m!670551))

(declare-fun m!670553 () Bool)

(assert (=> b!713826 m!670553))

(declare-fun m!670555 () Bool)

(assert (=> start!63394 m!670555))

(declare-fun m!670557 () Bool)

(assert (=> b!713823 m!670557))

(declare-fun m!670559 () Bool)

(assert (=> b!713821 m!670559))

(declare-fun m!670561 () Bool)

(assert (=> b!713825 m!670561))

(declare-fun m!670563 () Bool)

(assert (=> b!713828 m!670563))

(declare-fun m!670565 () Bool)

(assert (=> b!713822 m!670565))

(declare-fun m!670567 () Bool)

(assert (=> b!713834 m!670567))

(declare-fun m!670569 () Bool)

(assert (=> b!713830 m!670569))

(declare-fun m!670571 () Bool)

(assert (=> b!713836 m!670571))

(assert (=> b!713836 m!670571))

(declare-fun m!670573 () Bool)

(assert (=> b!713836 m!670573))

(declare-fun m!670575 () Bool)

(assert (=> b!713829 m!670575))

(declare-fun m!670577 () Bool)

(assert (=> b!713831 m!670577))

(push 1)

(assert (not b!713836))

(assert (not b!713834))

(assert (not b!713823))

(assert (not b!713837))

(assert (not b!713822))

(assert (not b!713826))

(assert (not b!713833))

(assert (not b!713831))

(assert (not b!713827))

(assert (not b!713829))

(assert (not b!713828))

(assert (not b!713825))

(assert (not start!63394))

(assert (not b!713830))

(assert (not b!713824))

(assert (not b!713821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98129 () Bool)

(assert (=> d!98129 (= (validKeyInArray!0 (select (arr!19362 a!3591) from!2969)) (and (not (= (select (arr!19362 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19362 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!713836 d!98129))

(declare-fun d!98133 () Bool)

(declare-fun lt!318689 () Bool)

(declare-fun content!368 (List!13456) (Set (_ BitVec 64)))

(assert (=> d!98133 (= lt!318689 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!368 newAcc!49)))))

(declare-fun e!401298 () Bool)

(assert (=> d!98133 (= lt!318689 e!401298)))

(declare-fun res!477233 () Bool)

(assert (=> d!98133 (=> (not res!477233) (not e!401298))))

(assert (=> d!98133 (= res!477233 (is-Cons!13452 newAcc!49))))

(assert (=> d!98133 (= (contains!3999 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318689)))

(declare-fun b!713989 () Bool)

(declare-fun e!401297 () Bool)

(assert (=> b!713989 (= e!401298 e!401297)))

(declare-fun res!477234 () Bool)

(assert (=> b!713989 (=> res!477234 e!401297)))

(assert (=> b!713989 (= res!477234 (= (h!14497 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!713990 () Bool)

(assert (=> b!713990 (= e!401297 (contains!3999 (t!19779 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98133 res!477233) b!713989))

(assert (= (and b!713989 (not res!477234)) b!713990))

(declare-fun m!670687 () Bool)

(assert (=> d!98133 m!670687))

(declare-fun m!670689 () Bool)

(assert (=> d!98133 m!670689))

(declare-fun m!670691 () Bool)

(assert (=> b!713990 m!670691))

(assert (=> b!713826 d!98133))

(declare-fun b!714017 () Bool)

(declare-fun e!401328 () Bool)

(declare-fun e!401325 () Bool)

(assert (=> b!714017 (= e!401328 e!401325)))

(declare-fun res!477264 () Bool)

(assert (=> b!714017 (=> (not res!477264) (not e!401325))))

(assert (=> b!714017 (= res!477264 (is-Cons!13452 newAcc!49))))

(declare-fun d!98151 () Bool)

(declare-fun res!477262 () Bool)

(assert (=> d!98151 (=> res!477262 e!401328)))

(assert (=> d!98151 (= res!477262 (is-Nil!13453 acc!652))))

(assert (=> d!98151 (= (subseq!443 acc!652 newAcc!49) e!401328)))

(declare-fun b!714018 () Bool)

(declare-fun e!401326 () Bool)

(assert (=> b!714018 (= e!401325 e!401326)))

(declare-fun res!477263 () Bool)

(assert (=> b!714018 (=> res!477263 e!401326)))

(declare-fun e!401327 () Bool)

(assert (=> b!714018 (= res!477263 e!401327)))

(declare-fun res!477261 () Bool)

(assert (=> b!714018 (=> (not res!477261) (not e!401327))))

(assert (=> b!714018 (= res!477261 (= (h!14497 acc!652) (h!14497 newAcc!49)))))

(declare-fun b!714020 () Bool)

(assert (=> b!714020 (= e!401326 (subseq!443 acc!652 (t!19779 newAcc!49)))))

(declare-fun b!714019 () Bool)

(assert (=> b!714019 (= e!401327 (subseq!443 (t!19779 acc!652) (t!19779 newAcc!49)))))

(assert (= (and d!98151 (not res!477262)) b!714017))

(assert (= (and b!714017 res!477264) b!714018))

(assert (= (and b!714018 res!477261) b!714019))

(assert (= (and b!714018 (not res!477263)) b!714020))

(declare-fun m!670709 () Bool)

(assert (=> b!714020 m!670709))

(declare-fun m!670711 () Bool)

(assert (=> b!714019 m!670711))

(assert (=> b!713837 d!98151))

(declare-fun d!98163 () Bool)

(declare-fun res!477287 () Bool)

(declare-fun e!401351 () Bool)

(assert (=> d!98163 (=> res!477287 e!401351)))

(assert (=> d!98163 (= res!477287 (= (select (arr!19362 a!3591) from!2969) k!2824))))

(assert (=> d!98163 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!401351)))

(declare-fun b!714043 () Bool)

(declare-fun e!401352 () Bool)

(assert (=> b!714043 (= e!401351 e!401352)))

(declare-fun res!477288 () Bool)

(assert (=> b!714043 (=> (not res!477288) (not e!401352))))

(assert (=> b!714043 (= res!477288 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19774 a!3591)))))

(declare-fun b!714044 () Bool)

(assert (=> b!714044 (= e!401352 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98163 (not res!477287)) b!714043))

(assert (= (and b!714043 res!477288) b!714044))

(assert (=> d!98163 m!670571))

(declare-fun m!670721 () Bool)

(assert (=> b!714044 m!670721))

(assert (=> b!713824 d!98163))

(declare-fun d!98169 () Bool)

(declare-fun res!477293 () Bool)

(declare-fun e!401357 () Bool)

(assert (=> d!98169 (=> res!477293 e!401357)))

(assert (=> d!98169 (= res!477293 (= (select (arr!19362 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!98169 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!401357)))

(declare-fun b!714049 () Bool)

(declare-fun e!401358 () Bool)

(assert (=> b!714049 (= e!401357 e!401358)))

(declare-fun res!477294 () Bool)

(assert (=> b!714049 (=> (not res!477294) (not e!401358))))

(assert (=> b!714049 (= res!477294 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19774 a!3591)))))

(declare-fun b!714050 () Bool)

(assert (=> b!714050 (= e!401358 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98169 (not res!477293)) b!714049))

(assert (= (and b!714049 res!477294) b!714050))

(declare-fun m!670727 () Bool)

(assert (=> d!98169 m!670727))

(declare-fun m!670731 () Bool)

(assert (=> b!714050 m!670731))

(assert (=> b!713825 d!98169))

(declare-fun d!98175 () Bool)

(assert (=> d!98175 (= (array_inv!15136 a!3591) (bvsge (size!19774 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63394 d!98175))

(declare-fun b!714094 () Bool)

(declare-fun e!401392 () List!13456)

(declare-fun e!401390 () List!13456)

(assert (=> b!714094 (= e!401392 e!401390)))

(declare-fun c!78758 () Bool)

(assert (=> b!714094 (= c!78758 (= k!2824 (h!14497 newAcc!49)))))

(declare-fun b!714095 () Bool)

(assert (=> b!714095 (= e!401392 Nil!13453)))

(declare-fun bm!34599 () Bool)

(declare-fun call!34602 () List!13456)

(assert (=> bm!34599 (= call!34602 (-!408 (t!19779 newAcc!49) k!2824))))

(declare-fun e!401391 () Bool)

(declare-fun lt!318699 () List!13456)

(declare-fun b!714096 () Bool)

(assert (=> b!714096 (= e!401391 (= (content!368 lt!318699) (set.minus (content!368 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!714097 () Bool)

(assert (=> b!714097 (= e!401390 call!34602)))

(declare-fun d!98179 () Bool)

(assert (=> d!98179 e!401391))

(declare-fun res!477311 () Bool)

(assert (=> d!98179 (=> (not res!477311) (not e!401391))))

(declare-fun size!19777 (List!13456) Int)

(assert (=> d!98179 (= res!477311 (<= (size!19777 lt!318699) (size!19777 newAcc!49)))))

(assert (=> d!98179 (= lt!318699 e!401392)))

(declare-fun c!78759 () Bool)

(assert (=> d!98179 (= c!78759 (is-Cons!13452 newAcc!49))))

(assert (=> d!98179 (= (-!408 newAcc!49 k!2824) lt!318699)))

(declare-fun b!714093 () Bool)

(assert (=> b!714093 (= e!401390 (Cons!13452 (h!14497 newAcc!49) call!34602))))

(assert (= (and d!98179 c!78759) b!714094))

(assert (= (and d!98179 (not c!78759)) b!714095))

(assert (= (and b!714094 c!78758) b!714097))

(assert (= (and b!714094 (not c!78758)) b!714093))

(assert (= (or b!714097 b!714093) bm!34599))

(assert (= (and d!98179 res!477311) b!714096))

(declare-fun m!670747 () Bool)

(assert (=> bm!34599 m!670747))

(declare-fun m!670751 () Bool)

(assert (=> b!714096 m!670751))

(assert (=> b!714096 m!670687))

(declare-fun m!670755 () Bool)

(assert (=> b!714096 m!670755))

(declare-fun m!670757 () Bool)

(assert (=> d!98179 m!670757))

(declare-fun m!670759 () Bool)

(assert (=> d!98179 m!670759))

(assert (=> b!713823 d!98179))

(declare-fun d!98185 () Bool)

(declare-fun lt!318701 () Bool)

(assert (=> d!98185 (= lt!318701 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!368 acc!652)))))

(declare-fun e!401396 () Bool)

(assert (=> d!98185 (= lt!318701 e!401396)))

(declare-fun res!477314 () Bool)

(assert (=> d!98185 (=> (not res!477314) (not e!401396))))

(assert (=> d!98185 (= res!477314 (is-Cons!13452 acc!652))))

(assert (=> d!98185 (= (contains!3999 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318701)))

(declare-fun b!714100 () Bool)

(declare-fun e!401395 () Bool)

(assert (=> b!714100 (= e!401396 e!401395)))

(declare-fun res!477315 () Bool)

(assert (=> b!714100 (=> res!477315 e!401395)))

(assert (=> b!714100 (= res!477315 (= (h!14497 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!714101 () Bool)

(assert (=> b!714101 (= e!401395 (contains!3999 (t!19779 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98185 res!477314) b!714100))

(assert (= (and b!714100 (not res!477315)) b!714101))

(declare-fun m!670765 () Bool)

(assert (=> d!98185 m!670765))

(declare-fun m!670767 () Bool)

(assert (=> d!98185 m!670767))

(declare-fun m!670769 () Bool)

(assert (=> b!714101 m!670769))

(assert (=> b!713834 d!98185))

(declare-fun d!98189 () Bool)

(declare-fun res!477320 () Bool)

(declare-fun e!401401 () Bool)

(assert (=> d!98189 (=> res!477320 e!401401)))

(assert (=> d!98189 (= res!477320 (is-Nil!13453 acc!652))))

(assert (=> d!98189 (= (noDuplicate!1246 acc!652) e!401401)))

(declare-fun b!714106 () Bool)

(declare-fun e!401402 () Bool)

(assert (=> b!714106 (= e!401401 e!401402)))

(declare-fun res!477321 () Bool)

(assert (=> b!714106 (=> (not res!477321) (not e!401402))))

(assert (=> b!714106 (= res!477321 (not (contains!3999 (t!19779 acc!652) (h!14497 acc!652))))))

(declare-fun b!714107 () Bool)

(assert (=> b!714107 (= e!401402 (noDuplicate!1246 (t!19779 acc!652)))))

(assert (= (and d!98189 (not res!477320)) b!714106))

(assert (= (and b!714106 res!477321) b!714107))

(declare-fun m!670771 () Bool)

(assert (=> b!714106 m!670771))

(declare-fun m!670773 () Bool)

(assert (=> b!714107 m!670773))

(assert (=> b!713822 d!98189))

(declare-fun b!714128 () Bool)

(declare-fun e!401420 () Bool)

(assert (=> b!714128 (= e!401420 (contains!3999 acc!652 (select (arr!19362 a!3591) from!2969)))))

(declare-fun c!78766 () Bool)

(declare-fun bm!34604 () Bool)

(declare-fun call!34607 () Bool)

(assert (=> bm!34604 (= call!34607 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78766 (Cons!13452 (select (arr!19362 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!714129 () Bool)

(declare-fun e!401418 () Bool)

(assert (=> b!714129 (= e!401418 call!34607)))

(declare-fun b!714130 () Bool)

(declare-fun e!401419 () Bool)

(declare-fun e!401421 () Bool)

(assert (=> b!714130 (= e!401419 e!401421)))

(declare-fun res!477331 () Bool)

(assert (=> b!714130 (=> (not res!477331) (not e!401421))))

(assert (=> b!714130 (= res!477331 (not e!401420))))

(declare-fun res!477332 () Bool)

(assert (=> b!714130 (=> (not res!477332) (not e!401420))))

(assert (=> b!714130 (= res!477332 (validKeyInArray!0 (select (arr!19362 a!3591) from!2969)))))

(declare-fun d!98193 () Bool)

(declare-fun res!477330 () Bool)

(assert (=> d!98193 (=> res!477330 e!401419)))

(assert (=> d!98193 (= res!477330 (bvsge from!2969 (size!19774 a!3591)))))

(assert (=> d!98193 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!401419)))

(declare-fun b!714131 () Bool)

(assert (=> b!714131 (= e!401421 e!401418)))

(assert (=> b!714131 (= c!78766 (validKeyInArray!0 (select (arr!19362 a!3591) from!2969)))))

(declare-fun b!714132 () Bool)

(assert (=> b!714132 (= e!401418 call!34607)))

(assert (= (and d!98193 (not res!477330)) b!714130))

(assert (= (and b!714130 res!477332) b!714128))

(assert (= (and b!714130 res!477331) b!714131))

(assert (= (and b!714131 c!78766) b!714132))

(assert (= (and b!714131 (not c!78766)) b!714129))

(assert (= (or b!714132 b!714129) bm!34604))

(assert (=> b!714128 m!670571))

(assert (=> b!714128 m!670571))

(declare-fun m!670775 () Bool)

(assert (=> b!714128 m!670775))

(assert (=> bm!34604 m!670571))

(declare-fun m!670777 () Bool)

(assert (=> bm!34604 m!670777))

(assert (=> b!714130 m!670571))

(assert (=> b!714130 m!670571))

(assert (=> b!714130 m!670573))

(assert (=> b!714131 m!670571))

(assert (=> b!714131 m!670571))

(assert (=> b!714131 m!670573))

(assert (=> b!713833 d!98193))

(declare-fun d!98195 () Bool)

(declare-fun res!477333 () Bool)

(declare-fun e!401422 () Bool)

(assert (=> d!98195 (=> res!477333 e!401422)))

(assert (=> d!98195 (= res!477333 (is-Nil!13453 newAcc!49))))

(assert (=> d!98195 (= (noDuplicate!1246 newAcc!49) e!401422)))

(declare-fun b!714133 () Bool)

(declare-fun e!401423 () Bool)

(assert (=> b!714133 (= e!401422 e!401423)))

(declare-fun res!477334 () Bool)

(assert (=> b!714133 (=> (not res!477334) (not e!401423))))

(assert (=> b!714133 (= res!477334 (not (contains!3999 (t!19779 newAcc!49) (h!14497 newAcc!49))))))

(declare-fun b!714134 () Bool)

(assert (=> b!714134 (= e!401423 (noDuplicate!1246 (t!19779 newAcc!49)))))

(assert (= (and d!98195 (not res!477333)) b!714133))

(assert (= (and b!714133 res!477334) b!714134))

(declare-fun m!670779 () Bool)

(assert (=> b!714133 m!670779))

(declare-fun m!670781 () Bool)

(assert (=> b!714134 m!670781))

(assert (=> b!713831 d!98195))

(declare-fun d!98197 () Bool)

(declare-fun lt!318705 () Bool)

(assert (=> d!98197 (= lt!318705 (set.member k!2824 (content!368 acc!652)))))

(declare-fun e!401428 () Bool)

(assert (=> d!98197 (= lt!318705 e!401428)))

(declare-fun res!477336 () Bool)

(assert (=> d!98197 (=> (not res!477336) (not e!401428))))

(assert (=> d!98197 (= res!477336 (is-Cons!13452 acc!652))))

(assert (=> d!98197 (= (contains!3999 acc!652 k!2824) lt!318705)))

(declare-fun b!714140 () Bool)

(declare-fun e!401427 () Bool)

(assert (=> b!714140 (= e!401428 e!401427)))

(declare-fun res!477337 () Bool)

(assert (=> b!714140 (=> res!477337 e!401427)))

(assert (=> b!714140 (= res!477337 (= (h!14497 acc!652) k!2824))))

(declare-fun b!714141 () Bool)

(assert (=> b!714141 (= e!401427 (contains!3999 (t!19779 acc!652) k!2824))))

(assert (= (and d!98197 res!477336) b!714140))

(assert (= (and b!714140 (not res!477337)) b!714141))

(assert (=> d!98197 m!670765))

(declare-fun m!670783 () Bool)

(assert (=> d!98197 m!670783))

(declare-fun m!670785 () Bool)

(assert (=> b!714141 m!670785))

(assert (=> b!713821 d!98197))

(declare-fun d!98199 () Bool)

(declare-fun lt!318706 () Bool)

