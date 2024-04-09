; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62800 () Bool)

(assert start!62800)

(declare-fun b!708154 () Bool)

(declare-fun res!471981 () Bool)

(declare-fun e!398556 () Bool)

(assert (=> b!708154 (=> (not res!471981) (not e!398556))))

(declare-datatypes ((List!13405 0))(
  ( (Nil!13402) (Cons!13401 (h!14446 (_ BitVec 64)) (t!19701 List!13405)) )
))
(declare-fun newAcc!49 () List!13405)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3948 (List!13405 (_ BitVec 64)) Bool)

(assert (=> b!708154 (= res!471981 (contains!3948 newAcc!49 k!2824))))

(declare-fun b!708155 () Bool)

(declare-fun res!471993 () Bool)

(assert (=> b!708155 (=> (not res!471993) (not e!398556))))

(declare-datatypes ((array!40323 0))(
  ( (array!40324 (arr!19311 (Array (_ BitVec 32) (_ BitVec 64))) (size!19699 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40323)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!708155 (= res!471993 (validKeyInArray!0 (select (arr!19311 a!3591) from!2969)))))

(declare-fun res!471990 () Bool)

(assert (=> start!62800 (=> (not res!471990) (not e!398556))))

(assert (=> start!62800 (= res!471990 (and (bvslt (size!19699 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19699 a!3591))))))

(assert (=> start!62800 e!398556))

(assert (=> start!62800 true))

(declare-fun array_inv!15085 (array!40323) Bool)

(assert (=> start!62800 (array_inv!15085 a!3591)))

(declare-fun b!708156 () Bool)

(declare-fun e!398554 () Bool)

(declare-fun e!398555 () Bool)

(assert (=> b!708156 (= e!398554 e!398555)))

(declare-fun res!471980 () Bool)

(assert (=> b!708156 (=> res!471980 e!398555)))

(declare-fun lt!318050 () List!13405)

(assert (=> b!708156 (= res!471980 (contains!3948 lt!318050 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708157 () Bool)

(declare-fun res!471991 () Bool)

(assert (=> b!708157 (=> (not res!471991) (not e!398554))))

(declare-fun noDuplicate!1195 (List!13405) Bool)

(assert (=> b!708157 (= res!471991 (noDuplicate!1195 lt!318050))))

(declare-fun b!708158 () Bool)

(assert (=> b!708158 (= e!398555 (contains!3948 lt!318050 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708159 () Bool)

(declare-fun res!471986 () Bool)

(assert (=> b!708159 (=> (not res!471986) (not e!398556))))

(declare-fun acc!652 () List!13405)

(assert (=> b!708159 (= res!471986 (not (contains!3948 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708160 () Bool)

(declare-fun res!471988 () Bool)

(assert (=> b!708160 (=> (not res!471988) (not e!398554))))

(declare-fun $colon$colon!502 (List!13405 (_ BitVec 64)) List!13405)

(assert (=> b!708160 (= res!471988 (noDuplicate!1195 ($colon$colon!502 newAcc!49 (select (arr!19311 a!3591) from!2969))))))

(declare-fun b!708161 () Bool)

(declare-fun res!471974 () Bool)

(assert (=> b!708161 (=> (not res!471974) (not e!398556))))

(assert (=> b!708161 (= res!471974 (not (contains!3948 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708162 () Bool)

(declare-fun res!471978 () Bool)

(assert (=> b!708162 (=> (not res!471978) (not e!398556))))

(assert (=> b!708162 (= res!471978 (noDuplicate!1195 newAcc!49))))

(declare-fun b!708163 () Bool)

(declare-fun res!471989 () Bool)

(assert (=> b!708163 (=> (not res!471989) (not e!398556))))

(assert (=> b!708163 (= res!471989 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19699 a!3591)))))

(declare-fun b!708164 () Bool)

(declare-fun res!471983 () Bool)

(assert (=> b!708164 (=> (not res!471983) (not e!398556))))

(declare-fun arrayNoDuplicates!0 (array!40323 (_ BitVec 32) List!13405) Bool)

(assert (=> b!708164 (= res!471983 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!708165 () Bool)

(declare-fun res!471992 () Bool)

(assert (=> b!708165 (=> (not res!471992) (not e!398556))))

(declare-fun arrayContainsKey!0 (array!40323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!708165 (= res!471992 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!708166 () Bool)

(declare-fun res!471984 () Bool)

(assert (=> b!708166 (=> (not res!471984) (not e!398556))))

(declare-fun -!357 (List!13405 (_ BitVec 64)) List!13405)

(assert (=> b!708166 (= res!471984 (= (-!357 newAcc!49 k!2824) acc!652))))

(declare-fun b!708167 () Bool)

(declare-fun res!471975 () Bool)

(assert (=> b!708167 (=> (not res!471975) (not e!398556))))

(assert (=> b!708167 (= res!471975 (not (contains!3948 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708168 () Bool)

(declare-fun res!471976 () Bool)

(assert (=> b!708168 (=> (not res!471976) (not e!398556))))

(assert (=> b!708168 (= res!471976 (not (contains!3948 acc!652 k!2824)))))

(declare-fun b!708169 () Bool)

(declare-fun res!471987 () Bool)

(assert (=> b!708169 (=> (not res!471987) (not e!398556))))

(assert (=> b!708169 (= res!471987 (not (contains!3948 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708170 () Bool)

(declare-fun res!471985 () Bool)

(assert (=> b!708170 (=> (not res!471985) (not e!398556))))

(assert (=> b!708170 (= res!471985 (noDuplicate!1195 acc!652))))

(declare-fun b!708171 () Bool)

(declare-fun res!471982 () Bool)

(assert (=> b!708171 (=> (not res!471982) (not e!398556))))

(assert (=> b!708171 (= res!471982 (validKeyInArray!0 k!2824))))

(declare-fun b!708172 () Bool)

(declare-fun res!471979 () Bool)

(assert (=> b!708172 (=> (not res!471979) (not e!398556))))

(declare-fun subseq!392 (List!13405 List!13405) Bool)

(assert (=> b!708172 (= res!471979 (subseq!392 acc!652 newAcc!49))))

(declare-fun b!708173 () Bool)

(assert (=> b!708173 (= e!398556 e!398554)))

(declare-fun res!471977 () Bool)

(assert (=> b!708173 (=> (not res!471977) (not e!398554))))

(assert (=> b!708173 (= res!471977 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (=> b!708173 (= lt!318050 ($colon$colon!502 acc!652 (select (arr!19311 a!3591) from!2969)))))

(assert (= (and start!62800 res!471990) b!708170))

(assert (= (and b!708170 res!471985) b!708162))

(assert (= (and b!708162 res!471978) b!708169))

(assert (= (and b!708169 res!471987) b!708159))

(assert (= (and b!708159 res!471986) b!708165))

(assert (= (and b!708165 res!471992) b!708168))

(assert (= (and b!708168 res!471976) b!708171))

(assert (= (and b!708171 res!471982) b!708164))

(assert (= (and b!708164 res!471983) b!708172))

(assert (= (and b!708172 res!471979) b!708154))

(assert (= (and b!708154 res!471981) b!708166))

(assert (= (and b!708166 res!471984) b!708167))

(assert (= (and b!708167 res!471975) b!708161))

(assert (= (and b!708161 res!471974) b!708163))

(assert (= (and b!708163 res!471989) b!708155))

(assert (= (and b!708155 res!471993) b!708173))

(assert (= (and b!708173 res!471977) b!708157))

(assert (= (and b!708157 res!471991) b!708160))

(assert (= (and b!708160 res!471988) b!708156))

(assert (= (and b!708156 (not res!471980)) b!708158))

(declare-fun m!665709 () Bool)

(assert (=> b!708165 m!665709))

(declare-fun m!665711 () Bool)

(assert (=> b!708168 m!665711))

(declare-fun m!665713 () Bool)

(assert (=> b!708173 m!665713))

(assert (=> b!708173 m!665713))

(declare-fun m!665715 () Bool)

(assert (=> b!708173 m!665715))

(declare-fun m!665717 () Bool)

(assert (=> b!708171 m!665717))

(declare-fun m!665719 () Bool)

(assert (=> b!708162 m!665719))

(assert (=> b!708160 m!665713))

(assert (=> b!708160 m!665713))

(declare-fun m!665721 () Bool)

(assert (=> b!708160 m!665721))

(assert (=> b!708160 m!665721))

(declare-fun m!665723 () Bool)

(assert (=> b!708160 m!665723))

(declare-fun m!665725 () Bool)

(assert (=> b!708169 m!665725))

(declare-fun m!665727 () Bool)

(assert (=> b!708157 m!665727))

(assert (=> b!708155 m!665713))

(assert (=> b!708155 m!665713))

(declare-fun m!665729 () Bool)

(assert (=> b!708155 m!665729))

(declare-fun m!665731 () Bool)

(assert (=> b!708154 m!665731))

(declare-fun m!665733 () Bool)

(assert (=> start!62800 m!665733))

(declare-fun m!665735 () Bool)

(assert (=> b!708166 m!665735))

(declare-fun m!665737 () Bool)

(assert (=> b!708167 m!665737))

(declare-fun m!665739 () Bool)

(assert (=> b!708156 m!665739))

(declare-fun m!665741 () Bool)

(assert (=> b!708158 m!665741))

(declare-fun m!665743 () Bool)

(assert (=> b!708164 m!665743))

(declare-fun m!665745 () Bool)

(assert (=> b!708170 m!665745))

(declare-fun m!665747 () Bool)

(assert (=> b!708172 m!665747))

(declare-fun m!665749 () Bool)

(assert (=> b!708161 m!665749))

(declare-fun m!665751 () Bool)

(assert (=> b!708159 m!665751))

(push 1)

(assert (not start!62800))

(assert (not b!708154))

(assert (not b!708159))

(assert (not b!708165))

(assert (not b!708160))

(assert (not b!708162))

(assert (not b!708172))

(assert (not b!708167))

(assert (not b!708161))

(assert (not b!708170))

(assert (not b!708158))

(assert (not b!708168))

(assert (not b!708171))

(assert (not b!708166))

(assert (not b!708156))

(assert (not b!708155))

(assert (not b!708157))

(assert (not b!708164))

(assert (not b!708169))

(assert (not b!708173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96737 () Bool)

(declare-fun res!472162 () Bool)

(declare-fun e!398631 () Bool)

(assert (=> d!96737 (=> res!472162 e!398631)))

(assert (=> d!96737 (= res!472162 (= (select (arr!19311 a!3591) from!2969) k!2824))))

(assert (=> d!96737 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!398631)))

(declare-fun b!708346 () Bool)

(declare-fun e!398632 () Bool)

(assert (=> b!708346 (= e!398631 e!398632)))

(declare-fun res!472163 () Bool)

(assert (=> b!708346 (=> (not res!472163) (not e!398632))))

(assert (=> b!708346 (= res!472163 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19699 a!3591)))))

(declare-fun b!708347 () Bool)

(assert (=> b!708347 (= e!398632 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96737 (not res!472162)) b!708346))

(assert (= (and b!708346 res!472163) b!708347))

(assert (=> d!96737 m!665713))

(declare-fun m!665871 () Bool)

(assert (=> b!708347 m!665871))

(assert (=> b!708165 d!96737))

(declare-fun d!96739 () Bool)

(assert (=> d!96739 (= (validKeyInArray!0 (select (arr!19311 a!3591) from!2969)) (and (not (= (select (arr!19311 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19311 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708155 d!96739))

(declare-fun b!708391 () Bool)

(declare-fun e!398673 () List!13405)

(declare-fun call!34401 () List!13405)

(assert (=> b!708391 (= e!398673 call!34401)))

(declare-fun b!708392 () Bool)

(assert (=> b!708392 (= e!398673 (Cons!13401 (h!14446 newAcc!49) call!34401))))

(declare-fun b!708394 () Bool)

(declare-fun e!398674 () List!13405)

(assert (=> b!708394 (= e!398674 e!398673)))

(declare-fun c!78465 () Bool)

(assert (=> b!708394 (= c!78465 (= k!2824 (h!14446 newAcc!49)))))

(declare-fun bm!34398 () Bool)

(assert (=> bm!34398 (= call!34401 (-!357 (t!19701 newAcc!49) k!2824))))

(declare-fun b!708395 () Bool)

(assert (=> b!708395 (= e!398674 Nil!13402)))

(declare-fun d!96745 () Bool)

(declare-fun e!398672 () Bool)

(assert (=> d!96745 e!398672))

(declare-fun res!472197 () Bool)

(assert (=> d!96745 (=> (not res!472197) (not e!398672))))

(declare-fun lt!318072 () List!13405)

(declare-fun size!19702 (List!13405) Int)

(assert (=> d!96745 (= res!472197 (<= (size!19702 lt!318072) (size!19702 newAcc!49)))))

(assert (=> d!96745 (= lt!318072 e!398674)))

(declare-fun c!78464 () Bool)

(assert (=> d!96745 (= c!78464 (is-Cons!13401 newAcc!49))))

(assert (=> d!96745 (= (-!357 newAcc!49 k!2824) lt!318072)))

(declare-fun b!708393 () Bool)

(declare-fun content!342 (List!13405) (Set (_ BitVec 64)))

(assert (=> b!708393 (= e!398672 (= (content!342 lt!318072) (set.minus (content!342 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(assert (= (and d!96745 c!78464) b!708394))

(assert (= (and d!96745 (not c!78464)) b!708395))

(assert (= (and b!708394 c!78465) b!708391))

(assert (= (and b!708394 (not c!78465)) b!708392))

(assert (= (or b!708391 b!708392) bm!34398))

(assert (= (and d!96745 res!472197) b!708393))

(declare-fun m!665917 () Bool)

(assert (=> bm!34398 m!665917))

(declare-fun m!665919 () Bool)

(assert (=> d!96745 m!665919))

(declare-fun m!665921 () Bool)

(assert (=> d!96745 m!665921))

(declare-fun m!665925 () Bool)

(assert (=> b!708393 m!665925))

(declare-fun m!665927 () Bool)

(assert (=> b!708393 m!665927))

(declare-fun m!665929 () Bool)

(assert (=> b!708393 m!665929))

(assert (=> b!708166 d!96745))

(declare-fun d!96769 () Bool)

(assert (=> d!96769 (= (array_inv!15085 a!3591) (bvsge (size!19699 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62800 d!96769))

(declare-fun d!96771 () Bool)

(declare-fun res!472232 () Bool)

(declare-fun e!398722 () Bool)

(assert (=> d!96771 (=> res!472232 e!398722)))

(assert (=> d!96771 (= res!472232 (bvsge from!2969 (size!19699 a!3591)))))

(assert (=> d!96771 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398722)))

(declare-fun e!398724 () Bool)

(declare-fun b!708452 () Bool)

(assert (=> b!708452 (= e!398724 (contains!3948 acc!652 (select (arr!19311 a!3591) from!2969)))))

(declare-fun b!708453 () Bool)

(declare-fun e!398723 () Bool)

(declare-fun e!398721 () Bool)

(assert (=> b!708453 (= e!398723 e!398721)))

(declare-fun c!78477 () Bool)

(assert (=> b!708453 (= c!78477 (validKeyInArray!0 (select (arr!19311 a!3591) from!2969)))))

(declare-fun b!708454 () Bool)

(declare-fun call!34410 () Bool)

(assert (=> b!708454 (= e!398721 call!34410)))

(declare-fun bm!34407 () Bool)

(assert (=> bm!34407 (= call!34410 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78477 (Cons!13401 (select (arr!19311 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!708455 () Bool)

(assert (=> b!708455 (= e!398722 e!398723)))

(declare-fun res!472234 () Bool)

(assert (=> b!708455 (=> (not res!472234) (not e!398723))))

(assert (=> b!708455 (= res!472234 (not e!398724))))

(declare-fun res!472233 () Bool)

(assert (=> b!708455 (=> (not res!472233) (not e!398724))))

(assert (=> b!708455 (= res!472233 (validKeyInArray!0 (select (arr!19311 a!3591) from!2969)))))

(declare-fun b!708456 () Bool)

(assert (=> b!708456 (= e!398721 call!34410)))

(assert (= (and d!96771 (not res!472232)) b!708455))

(assert (= (and b!708455 res!472233) b!708452))

(assert (= (and b!708455 res!472234) b!708453))

(assert (= (and b!708453 c!78477) b!708456))

(assert (= (and b!708453 (not c!78477)) b!708454))

(assert (= (or b!708456 b!708454) bm!34407))

(assert (=> b!708452 m!665713))

(assert (=> b!708452 m!665713))

(declare-fun m!665971 () Bool)

(assert (=> b!708452 m!665971))

(assert (=> b!708453 m!665713))

(assert (=> b!708453 m!665713))

(assert (=> b!708453 m!665729))

(assert (=> bm!34407 m!665713))

(declare-fun m!665977 () Bool)

(assert (=> bm!34407 m!665977))

(assert (=> b!708455 m!665713))

(assert (=> b!708455 m!665713))

(assert (=> b!708455 m!665729))

(assert (=> b!708164 d!96771))

(declare-fun d!96795 () Bool)

(declare-fun lt!318085 () Bool)

(assert (=> d!96795 (= lt!318085 (set.member k!2824 (content!342 newAcc!49)))))

(declare-fun e!398735 () Bool)

(assert (=> d!96795 (= lt!318085 e!398735)))

(declare-fun res!472243 () Bool)

(assert (=> d!96795 (=> (not res!472243) (not e!398735))))

(assert (=> d!96795 (= res!472243 (is-Cons!13401 newAcc!49))))

(assert (=> d!96795 (= (contains!3948 newAcc!49 k!2824) lt!318085)))

(declare-fun b!708467 () Bool)

(declare-fun e!398734 () Bool)

(assert (=> b!708467 (= e!398735 e!398734)))

(declare-fun res!472244 () Bool)

(assert (=> b!708467 (=> res!472244 e!398734)))

(assert (=> b!708467 (= res!472244 (= (h!14446 newAcc!49) k!2824))))

(declare-fun b!708468 () Bool)

(assert (=> b!708468 (= e!398734 (contains!3948 (t!19701 newAcc!49) k!2824))))

(assert (= (and d!96795 res!472243) b!708467))

(assert (= (and b!708467 (not res!472244)) b!708468))

(assert (=> d!96795 m!665927))

(declare-fun m!665979 () Bool)

(assert (=> d!96795 m!665979))

(declare-fun m!665981 () Bool)

(assert (=> b!708468 m!665981))

(assert (=> b!708154 d!96795))

(declare-fun d!96797 () Bool)

(declare-fun res!472251 () Bool)

(declare-fun e!398746 () Bool)

(assert (=> d!96797 (=> res!472251 e!398746)))

(assert (=> d!96797 (= res!472251 (is-Nil!13402 lt!318050))))

(assert (=> d!96797 (= (noDuplicate!1195 lt!318050) e!398746)))

(declare-fun b!708481 () Bool)

(declare-fun e!398747 () Bool)

(assert (=> b!708481 (= e!398746 e!398747)))

(declare-fun res!472252 () Bool)

(assert (=> b!708481 (=> (not res!472252) (not e!398747))))

(assert (=> b!708481 (= res!472252 (not (contains!3948 (t!19701 lt!318050) (h!14446 lt!318050))))))

(declare-fun b!708482 () Bool)

(assert (=> b!708482 (= e!398747 (noDuplicate!1195 (t!19701 lt!318050)))))

(assert (= (and d!96797 (not res!472251)) b!708481))

(assert (= (and b!708481 res!472252) b!708482))

(declare-fun m!665983 () Bool)

(assert (=> b!708481 m!665983))

(declare-fun m!665985 () Bool)

(assert (=> b!708482 m!665985))

(assert (=> b!708157 d!96797))

(declare-fun d!96799 () Bool)

(declare-fun lt!318086 () Bool)

(assert (=> d!96799 (= lt!318086 (set.member k!2824 (content!342 acc!652)))))

(declare-fun e!398749 () Bool)

(assert (=> d!96799 (= lt!318086 e!398749)))

(declare-fun res!472253 () Bool)

(assert (=> d!96799 (=> (not res!472253) (not e!398749))))

(assert (=> d!96799 (= res!472253 (is-Cons!13401 acc!652))))

(assert (=> d!96799 (= (contains!3948 acc!652 k!2824) lt!318086)))

(declare-fun b!708483 () Bool)

(declare-fun e!398748 () Bool)

(assert (=> b!708483 (= e!398749 e!398748)))

(declare-fun res!472254 () Bool)

(assert (=> b!708483 (=> res!472254 e!398748)))

(assert (=> b!708483 (= res!472254 (= (h!14446 acc!652) k!2824))))

(declare-fun b!708484 () Bool)

(assert (=> b!708484 (= e!398748 (contains!3948 (t!19701 acc!652) k!2824))))

(assert (= (and d!96799 res!472253) b!708483))

(assert (= (and b!708483 (not res!472254)) b!708484))

(declare-fun m!665987 () Bool)

(assert (=> d!96799 m!665987))

(declare-fun m!665989 () Bool)

(assert (=> d!96799 m!665989))

(declare-fun m!665991 () Bool)

(assert (=> b!708484 m!665991))

(assert (=> b!708168 d!96799))

(declare-fun d!96801 () Bool)

(declare-fun lt!318088 () Bool)

(assert (=> d!96801 (= lt!318088 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!342 lt!318050)))))

(declare-fun e!398754 () Bool)

(assert (=> d!96801 (= lt!318088 e!398754)))

(declare-fun res!472256 () Bool)

(assert (=> d!96801 (=> (not res!472256) (not e!398754))))

(assert (=> d!96801 (= res!472256 (is-Cons!13401 lt!318050))))

(assert (=> d!96801 (= (contains!3948 lt!318050 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318088)))

(declare-fun b!708490 () Bool)

(declare-fun e!398753 () Bool)

(assert (=> b!708490 (= e!398754 e!398753)))

(declare-fun res!472257 () Bool)

(assert (=> b!708490 (=> res!472257 e!398753)))

(assert (=> b!708490 (= res!472257 (= (h!14446 lt!318050) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708491 () Bool)

(assert (=> b!708491 (= e!398753 (contains!3948 (t!19701 lt!318050) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96801 res!472256) b!708490))

(assert (= (and b!708490 (not res!472257)) b!708491))

(declare-fun m!665997 () Bool)

(assert (=> d!96801 m!665997))

(declare-fun m!666001 () Bool)

(assert (=> d!96801 m!666001))

(declare-fun m!666005 () Bool)

(assert (=> b!708491 m!666005))

(assert (=> b!708158 d!96801))

(declare-fun d!96803 () Bool)

(declare-fun lt!318089 () Bool)

(assert (=> d!96803 (= lt!318089 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!342 lt!318050)))))

(declare-fun e!398756 () Bool)

(assert (=> d!96803 (= lt!318089 e!398756)))

(declare-fun res!472258 () Bool)

(assert (=> d!96803 (=> (not res!472258) (not e!398756))))

(assert (=> d!96803 (= res!472258 (is-Cons!13401 lt!318050))))

(assert (=> d!96803 (= (contains!3948 lt!318050 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318089)))

(declare-fun b!708492 () Bool)

(declare-fun e!398755 () Bool)

(assert (=> b!708492 (= e!398756 e!398755)))

(declare-fun res!472259 () Bool)

(assert (=> b!708492 (=> res!472259 e!398755)))

(assert (=> b!708492 (= res!472259 (= (h!14446 lt!318050) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708493 () Bool)

(assert (=> b!708493 (= e!398755 (contains!3948 (t!19701 lt!318050) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96803 res!472258) b!708492))

(assert (= (and b!708492 (not res!472259)) b!708493))

(assert (=> d!96803 m!665997))

(declare-fun m!666009 () Bool)

(assert (=> d!96803 m!666009))

(declare-fun m!666011 () Bool)

(assert (=> b!708493 m!666011))

(assert (=> b!708156 d!96803))

(declare-fun d!96807 () Bool)

(declare-fun lt!318090 () Bool)

(assert (=> d!96807 (= lt!318090 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!342 newAcc!49)))))

(declare-fun e!398758 () Bool)

(assert (=> d!96807 (= lt!318090 e!398758)))

(declare-fun res!472260 () Bool)

(assert (=> d!96807 (=> (not res!472260) (not e!398758))))

(assert (=> d!96807 (= res!472260 (is-Cons!13401 newAcc!49))))

(assert (=> d!96807 (= (contains!3948 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318090)))

(declare-fun b!708494 () Bool)

(declare-fun e!398757 () Bool)

(assert (=> b!708494 (= e!398758 e!398757)))

(declare-fun res!472261 () Bool)

(assert (=> b!708494 (=> res!472261 e!398757)))

(assert (=> b!708494 (= res!472261 (= (h!14446 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708495 () Bool)

(assert (=> b!708495 (= e!398757 (contains!3948 (t!19701 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96807 res!472260) b!708494))

(assert (= (and b!708494 (not res!472261)) b!708495))

(assert (=> d!96807 m!665927))

(declare-fun m!666013 () Bool)

(assert (=> d!96807 m!666013))

(declare-fun m!666015 () Bool)

(assert (=> b!708495 m!666015))

(assert (=> b!708167 d!96807))

(declare-fun d!96809 () Bool)

(declare-fun res!472262 () Bool)

(declare-fun e!398759 () Bool)

(assert (=> d!96809 (=> res!472262 e!398759)))

(assert (=> d!96809 (= res!472262 (is-Nil!13402 ($colon$colon!502 newAcc!49 (select (arr!19311 a!3591) from!2969))))))

(assert (=> d!96809 (= (noDuplicate!1195 ($colon$colon!502 newAcc!49 (select (arr!19311 a!3591) from!2969))) e!398759)))

(declare-fun b!708496 () Bool)

(declare-fun e!398760 () Bool)

(assert (=> b!708496 (= e!398759 e!398760)))

(declare-fun res!472263 () Bool)

(assert (=> b!708496 (=> (not res!472263) (not e!398760))))

(assert (=> b!708496 (= res!472263 (not (contains!3948 (t!19701 ($colon$colon!502 newAcc!49 (select (arr!19311 a!3591) from!2969))) (h!14446 ($colon$colon!502 newAcc!49 (select (arr!19311 a!3591) from!2969))))))))

(declare-fun b!708497 () Bool)

(assert (=> b!708497 (= e!398760 (noDuplicate!1195 (t!19701 ($colon$colon!502 newAcc!49 (select (arr!19311 a!3591) from!2969)))))))

(assert (= (and d!96809 (not res!472262)) b!708496))

(assert (= (and b!708496 res!472263) b!708497))

(declare-fun m!666017 () Bool)

(assert (=> b!708496 m!666017))

(declare-fun m!666019 () Bool)

(assert (=> b!708497 m!666019))

(assert (=> b!708160 d!96809))

(declare-fun d!96811 () Bool)

(assert (=> d!96811 (= ($colon$colon!502 newAcc!49 (select (arr!19311 a!3591) from!2969)) (Cons!13401 (select (arr!19311 a!3591) from!2969) newAcc!49))))

(assert (=> b!708160 d!96811))

(declare-fun d!96813 () Bool)

(assert (=> d!96813 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708171 d!96813))

(declare-fun d!96815 () Bool)

(declare-fun lt!318091 () Bool)

(assert (=> d!96815 (= lt!318091 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!342 acc!652)))))

(declare-fun e!398766 () Bool)

(assert (=> d!96815 (= lt!318091 e!398766)))

(declare-fun res!472268 () Bool)

(assert (=> d!96815 (=> (not res!472268) (not e!398766))))

(assert (=> d!96815 (= res!472268 (is-Cons!13401 acc!652))))

(assert (=> d!96815 (= (contains!3948 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318091)))

