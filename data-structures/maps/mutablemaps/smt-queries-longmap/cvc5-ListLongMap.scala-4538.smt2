; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63046 () Bool)

(assert start!63046)

(declare-fun b!710139 () Bool)

(declare-fun res!473740 () Bool)

(declare-fun e!399601 () Bool)

(assert (=> b!710139 (=> (not res!473740) (not e!399601))))

(declare-datatypes ((List!13420 0))(
  ( (Nil!13417) (Cons!13416 (h!14461 (_ BitVec 64)) (t!19728 List!13420)) )
))
(declare-fun acc!652 () List!13420)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3963 (List!13420 (_ BitVec 64)) Bool)

(assert (=> b!710139 (= res!473740 (not (contains!3963 acc!652 k!2824)))))

(declare-fun b!710141 () Bool)

(declare-fun res!473741 () Bool)

(assert (=> b!710141 (=> (not res!473741) (not e!399601))))

(declare-fun newAcc!49 () List!13420)

(declare-fun -!372 (List!13420 (_ BitVec 64)) List!13420)

(assert (=> b!710141 (= res!473741 (= (-!372 newAcc!49 k!2824) acc!652))))

(declare-fun b!710142 () Bool)

(declare-fun res!473760 () Bool)

(assert (=> b!710142 (=> (not res!473760) (not e!399601))))

(declare-fun subseq!407 (List!13420 List!13420) Bool)

(assert (=> b!710142 (= res!473760 (subseq!407 acc!652 newAcc!49))))

(declare-fun b!710143 () Bool)

(declare-fun res!473747 () Bool)

(assert (=> b!710143 (=> (not res!473747) (not e!399601))))

(declare-datatypes ((array!40365 0))(
  ( (array!40366 (arr!19326 (Array (_ BitVec 32) (_ BitVec 64))) (size!19724 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40365)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40365 (_ BitVec 32) List!13420) Bool)

(assert (=> b!710143 (= res!473747 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!710144 () Bool)

(declare-fun res!473756 () Bool)

(declare-fun e!399603 () Bool)

(assert (=> b!710144 (=> (not res!473756) (not e!399603))))

(declare-fun lt!318269 () List!13420)

(declare-fun noDuplicate!1210 (List!13420) Bool)

(assert (=> b!710144 (= res!473756 (noDuplicate!1210 lt!318269))))

(declare-fun b!710145 () Bool)

(declare-fun res!473748 () Bool)

(assert (=> b!710145 (=> (not res!473748) (not e!399603))))

(declare-fun lt!318268 () List!13420)

(assert (=> b!710145 (= res!473748 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318268))))

(declare-fun b!710146 () Bool)

(declare-fun res!473758 () Bool)

(assert (=> b!710146 (=> (not res!473758) (not e!399601))))

(assert (=> b!710146 (= res!473758 (not (contains!3963 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710147 () Bool)

(declare-fun res!473750 () Bool)

(assert (=> b!710147 (=> (not res!473750) (not e!399601))))

(declare-fun arrayContainsKey!0 (array!40365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!710147 (= res!473750 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!710148 () Bool)

(declare-fun res!473753 () Bool)

(assert (=> b!710148 (=> (not res!473753) (not e!399601))))

(assert (=> b!710148 (= res!473753 (noDuplicate!1210 newAcc!49))))

(declare-fun b!710149 () Bool)

(declare-fun res!473742 () Bool)

(assert (=> b!710149 (=> (not res!473742) (not e!399603))))

(assert (=> b!710149 (= res!473742 (noDuplicate!1210 lt!318268))))

(declare-fun b!710150 () Bool)

(declare-fun res!473755 () Bool)

(assert (=> b!710150 (=> (not res!473755) (not e!399601))))

(assert (=> b!710150 (= res!473755 (not (contains!3963 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710151 () Bool)

(declare-fun res!473754 () Bool)

(assert (=> b!710151 (=> (not res!473754) (not e!399603))))

(assert (=> b!710151 (= res!473754 (not (contains!3963 lt!318268 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710140 () Bool)

(declare-fun res!473749 () Bool)

(assert (=> b!710140 (=> (not res!473749) (not e!399603))))

(assert (=> b!710140 (= res!473749 (not (contains!3963 lt!318268 k!2824)))))

(declare-fun res!473743 () Bool)

(assert (=> start!63046 (=> (not res!473743) (not e!399601))))

(assert (=> start!63046 (= res!473743 (and (bvslt (size!19724 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19724 a!3591))))))

(assert (=> start!63046 e!399601))

(assert (=> start!63046 true))

(declare-fun array_inv!15100 (array!40365) Bool)

(assert (=> start!63046 (array_inv!15100 a!3591)))

(declare-fun b!710152 () Bool)

(assert (=> b!710152 (= e!399601 e!399603)))

(declare-fun res!473737 () Bool)

(assert (=> b!710152 (=> (not res!473737) (not e!399603))))

(assert (=> b!710152 (= res!473737 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!517 (List!13420 (_ BitVec 64)) List!13420)

(assert (=> b!710152 (= lt!318269 ($colon$colon!517 newAcc!49 (select (arr!19326 a!3591) from!2969)))))

(assert (=> b!710152 (= lt!318268 ($colon$colon!517 acc!652 (select (arr!19326 a!3591) from!2969)))))

(declare-fun b!710153 () Bool)

(declare-fun res!473739 () Bool)

(assert (=> b!710153 (=> (not res!473739) (not e!399601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!710153 (= res!473739 (validKeyInArray!0 k!2824))))

(declare-fun b!710154 () Bool)

(declare-fun res!473745 () Bool)

(assert (=> b!710154 (=> (not res!473745) (not e!399601))))

(assert (=> b!710154 (= res!473745 (not (contains!3963 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710155 () Bool)

(declare-fun res!473759 () Bool)

(assert (=> b!710155 (=> (not res!473759) (not e!399603))))

(assert (=> b!710155 (= res!473759 (not (contains!3963 lt!318268 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710156 () Bool)

(declare-fun res!473738 () Bool)

(assert (=> b!710156 (=> (not res!473738) (not e!399601))))

(assert (=> b!710156 (= res!473738 (validKeyInArray!0 (select (arr!19326 a!3591) from!2969)))))

(declare-fun b!710157 () Bool)

(declare-fun res!473751 () Bool)

(assert (=> b!710157 (=> (not res!473751) (not e!399601))))

(assert (=> b!710157 (= res!473751 (noDuplicate!1210 acc!652))))

(declare-fun b!710158 () Bool)

(declare-fun res!473746 () Bool)

(assert (=> b!710158 (=> (not res!473746) (not e!399603))))

(assert (=> b!710158 (= res!473746 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710159 () Bool)

(declare-fun res!473752 () Bool)

(assert (=> b!710159 (=> (not res!473752) (not e!399601))))

(assert (=> b!710159 (= res!473752 (not (contains!3963 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710160 () Bool)

(declare-fun res!473757 () Bool)

(assert (=> b!710160 (=> (not res!473757) (not e!399601))))

(assert (=> b!710160 (= res!473757 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19724 a!3591)))))

(declare-fun b!710161 () Bool)

(assert (=> b!710161 (= e!399603 (not (subseq!407 lt!318268 lt!318269)))))

(declare-fun b!710162 () Bool)

(declare-fun res!473744 () Bool)

(assert (=> b!710162 (=> (not res!473744) (not e!399601))))

(assert (=> b!710162 (= res!473744 (contains!3963 newAcc!49 k!2824))))

(assert (= (and start!63046 res!473743) b!710157))

(assert (= (and b!710157 res!473751) b!710148))

(assert (= (and b!710148 res!473753) b!710159))

(assert (= (and b!710159 res!473752) b!710150))

(assert (= (and b!710150 res!473755) b!710147))

(assert (= (and b!710147 res!473750) b!710139))

(assert (= (and b!710139 res!473740) b!710153))

(assert (= (and b!710153 res!473739) b!710143))

(assert (= (and b!710143 res!473747) b!710142))

(assert (= (and b!710142 res!473760) b!710162))

(assert (= (and b!710162 res!473744) b!710141))

(assert (= (and b!710141 res!473741) b!710154))

(assert (= (and b!710154 res!473745) b!710146))

(assert (= (and b!710146 res!473758) b!710160))

(assert (= (and b!710160 res!473757) b!710156))

(assert (= (and b!710156 res!473738) b!710152))

(assert (= (and b!710152 res!473737) b!710149))

(assert (= (and b!710149 res!473742) b!710144))

(assert (= (and b!710144 res!473756) b!710151))

(assert (= (and b!710151 res!473754) b!710155))

(assert (= (and b!710155 res!473759) b!710158))

(assert (= (and b!710158 res!473746) b!710140))

(assert (= (and b!710140 res!473749) b!710145))

(assert (= (and b!710145 res!473748) b!710161))

(declare-fun m!667383 () Bool)

(assert (=> b!710147 m!667383))

(declare-fun m!667385 () Bool)

(assert (=> b!710162 m!667385))

(declare-fun m!667387 () Bool)

(assert (=> b!710139 m!667387))

(declare-fun m!667389 () Bool)

(assert (=> b!710146 m!667389))

(declare-fun m!667391 () Bool)

(assert (=> b!710155 m!667391))

(declare-fun m!667393 () Bool)

(assert (=> b!710161 m!667393))

(declare-fun m!667395 () Bool)

(assert (=> b!710145 m!667395))

(declare-fun m!667397 () Bool)

(assert (=> b!710151 m!667397))

(declare-fun m!667399 () Bool)

(assert (=> b!710159 m!667399))

(declare-fun m!667401 () Bool)

(assert (=> b!710154 m!667401))

(declare-fun m!667403 () Bool)

(assert (=> start!63046 m!667403))

(declare-fun m!667405 () Bool)

(assert (=> b!710153 m!667405))

(declare-fun m!667407 () Bool)

(assert (=> b!710149 m!667407))

(declare-fun m!667409 () Bool)

(assert (=> b!710158 m!667409))

(declare-fun m!667411 () Bool)

(assert (=> b!710143 m!667411))

(declare-fun m!667413 () Bool)

(assert (=> b!710150 m!667413))

(declare-fun m!667415 () Bool)

(assert (=> b!710141 m!667415))

(declare-fun m!667417 () Bool)

(assert (=> b!710144 m!667417))

(declare-fun m!667419 () Bool)

(assert (=> b!710142 m!667419))

(declare-fun m!667421 () Bool)

(assert (=> b!710152 m!667421))

(assert (=> b!710152 m!667421))

(declare-fun m!667423 () Bool)

(assert (=> b!710152 m!667423))

(assert (=> b!710152 m!667421))

(declare-fun m!667425 () Bool)

(assert (=> b!710152 m!667425))

(declare-fun m!667427 () Bool)

(assert (=> b!710157 m!667427))

(declare-fun m!667429 () Bool)

(assert (=> b!710148 m!667429))

(assert (=> b!710156 m!667421))

(assert (=> b!710156 m!667421))

(declare-fun m!667431 () Bool)

(assert (=> b!710156 m!667431))

(declare-fun m!667433 () Bool)

(assert (=> b!710140 m!667433))

(push 1)

(assert (not b!710158))

(assert (not b!710152))

(assert (not b!710150))

(assert (not b!710161))

(assert (not b!710159))

(assert (not b!710139))

(assert (not b!710154))

(assert (not b!710153))

(assert (not b!710148))

(assert (not b!710144))

(assert (not b!710155))

(assert (not b!710157))

(assert (not b!710141))

(assert (not b!710146))

(assert (not b!710162))

(assert (not start!63046))

(assert (not b!710142))

(assert (not b!710140))

(assert (not b!710147))

(assert (not b!710156))

(assert (not b!710143))

(assert (not b!710149))

(assert (not b!710145))

(assert (not b!710151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!97289 () Bool)

(declare-fun lt!318290 () Bool)

(declare-fun content!353 (List!13420) (Set (_ BitVec 64)))

(assert (=> d!97289 (= lt!318290 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!353 newAcc!49)))))

(declare-fun e!399666 () Bool)

(assert (=> d!97289 (= lt!318290 e!399666)))

(declare-fun res!473948 () Bool)

(assert (=> d!97289 (=> (not res!473948) (not e!399666))))

(assert (=> d!97289 (= res!473948 (is-Cons!13416 newAcc!49))))

(assert (=> d!97289 (= (contains!3963 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318290)))

(declare-fun b!710353 () Bool)

(declare-fun e!399667 () Bool)

(assert (=> b!710353 (= e!399666 e!399667)))

(declare-fun res!473947 () Bool)

(assert (=> b!710353 (=> res!473947 e!399667)))

(assert (=> b!710353 (= res!473947 (= (h!14461 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710354 () Bool)

(assert (=> b!710354 (= e!399667 (contains!3963 (t!19728 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97289 res!473948) b!710353))

(assert (= (and b!710353 (not res!473947)) b!710354))

(declare-fun m!667575 () Bool)

(assert (=> d!97289 m!667575))

(declare-fun m!667577 () Bool)

(assert (=> d!97289 m!667577))

(declare-fun m!667579 () Bool)

(assert (=> b!710354 m!667579))

(assert (=> b!710146 d!97289))

(declare-fun d!97295 () Bool)

(declare-fun res!473962 () Bool)

(declare-fun e!399682 () Bool)

(assert (=> d!97295 (=> res!473962 e!399682)))

(assert (=> d!97295 (= res!473962 (is-Nil!13417 newAcc!49))))

(assert (=> d!97295 (= (noDuplicate!1210 newAcc!49) e!399682)))

(declare-fun b!710370 () Bool)

(declare-fun e!399683 () Bool)

(assert (=> b!710370 (= e!399682 e!399683)))

(declare-fun res!473963 () Bool)

(assert (=> b!710370 (=> (not res!473963) (not e!399683))))

(assert (=> b!710370 (= res!473963 (not (contains!3963 (t!19728 newAcc!49) (h!14461 newAcc!49))))))

(declare-fun b!710371 () Bool)

(assert (=> b!710371 (= e!399683 (noDuplicate!1210 (t!19728 newAcc!49)))))

(assert (= (and d!97295 (not res!473962)) b!710370))

(assert (= (and b!710370 res!473963) b!710371))

(declare-fun m!667593 () Bool)

(assert (=> b!710370 m!667593))

(declare-fun m!667595 () Bool)

(assert (=> b!710371 m!667595))

(assert (=> b!710148 d!97295))

(declare-fun d!97303 () Bool)

(declare-fun res!473980 () Bool)

(declare-fun e!399700 () Bool)

(assert (=> d!97303 (=> res!473980 e!399700)))

(assert (=> d!97303 (= res!473980 (= (select (arr!19326 a!3591) from!2969) k!2824))))

(assert (=> d!97303 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!399700)))

(declare-fun b!710388 () Bool)

(declare-fun e!399701 () Bool)

(assert (=> b!710388 (= e!399700 e!399701)))

(declare-fun res!473981 () Bool)

(assert (=> b!710388 (=> (not res!473981) (not e!399701))))

(assert (=> b!710388 (= res!473981 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19724 a!3591)))))

(declare-fun b!710389 () Bool)

(assert (=> b!710389 (= e!399701 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97303 (not res!473980)) b!710388))

(assert (= (and b!710388 res!473981) b!710389))

(assert (=> d!97303 m!667421))

(declare-fun m!667609 () Bool)

(assert (=> b!710389 m!667609))

(assert (=> b!710147 d!97303))

(declare-fun d!97309 () Bool)

(declare-fun res!473982 () Bool)

(declare-fun e!399702 () Bool)

(assert (=> d!97309 (=> res!473982 e!399702)))

(assert (=> d!97309 (= res!473982 (is-Nil!13417 lt!318269))))

(assert (=> d!97309 (= (noDuplicate!1210 lt!318269) e!399702)))

(declare-fun b!710390 () Bool)

(declare-fun e!399703 () Bool)

(assert (=> b!710390 (= e!399702 e!399703)))

(declare-fun res!473983 () Bool)

(assert (=> b!710390 (=> (not res!473983) (not e!399703))))

(assert (=> b!710390 (= res!473983 (not (contains!3963 (t!19728 lt!318269) (h!14461 lt!318269))))))

(declare-fun b!710391 () Bool)

(assert (=> b!710391 (= e!399703 (noDuplicate!1210 (t!19728 lt!318269)))))

(assert (= (and d!97309 (not res!473982)) b!710390))

(assert (= (and b!710390 res!473983) b!710391))

(declare-fun m!667611 () Bool)

(assert (=> b!710390 m!667611))

(declare-fun m!667613 () Bool)

(assert (=> b!710391 m!667613))

(assert (=> b!710144 d!97309))

(declare-fun b!710437 () Bool)

(declare-fun e!399743 () Bool)

(declare-fun e!399742 () Bool)

(assert (=> b!710437 (= e!399743 e!399742)))

(declare-fun c!78580 () Bool)

(assert (=> b!710437 (= c!78580 (validKeyInArray!0 (select (arr!19326 a!3591) from!2969)))))

(declare-fun b!710438 () Bool)

(declare-fun e!399744 () Bool)

(assert (=> b!710438 (= e!399744 e!399743)))

(declare-fun res!474013 () Bool)

(assert (=> b!710438 (=> (not res!474013) (not e!399743))))

(declare-fun e!399741 () Bool)

(assert (=> b!710438 (= res!474013 (not e!399741))))

(declare-fun res!474012 () Bool)

(assert (=> b!710438 (=> (not res!474012) (not e!399741))))

(assert (=> b!710438 (= res!474012 (validKeyInArray!0 (select (arr!19326 a!3591) from!2969)))))

(declare-fun b!710439 () Bool)

(declare-fun call!34481 () Bool)

(assert (=> b!710439 (= e!399742 call!34481)))

(declare-fun b!710440 () Bool)

(assert (=> b!710440 (= e!399742 call!34481)))

(declare-fun d!97311 () Bool)

(declare-fun res!474011 () Bool)

(assert (=> d!97311 (=> res!474011 e!399744)))

(assert (=> d!97311 (= res!474011 (bvsge from!2969 (size!19724 a!3591)))))

(assert (=> d!97311 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399744)))

(declare-fun b!710441 () Bool)

(assert (=> b!710441 (= e!399741 (contains!3963 acc!652 (select (arr!19326 a!3591) from!2969)))))

(declare-fun bm!34478 () Bool)

(assert (=> bm!34478 (= call!34481 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78580 (Cons!13416 (select (arr!19326 a!3591) from!2969) acc!652) acc!652)))))

(assert (= (and d!97311 (not res!474011)) b!710438))

(assert (= (and b!710438 res!474012) b!710441))

(assert (= (and b!710438 res!474013) b!710437))

(assert (= (and b!710437 c!78580) b!710439))

(assert (= (and b!710437 (not c!78580)) b!710440))

(assert (= (or b!710439 b!710440) bm!34478))

(assert (=> b!710437 m!667421))

(assert (=> b!710437 m!667421))

(assert (=> b!710437 m!667431))

(assert (=> b!710438 m!667421))

(assert (=> b!710438 m!667421))

(assert (=> b!710438 m!667431))

(assert (=> b!710441 m!667421))

(assert (=> b!710441 m!667421))

(declare-fun m!667639 () Bool)

(assert (=> b!710441 m!667639))

(assert (=> bm!34478 m!667421))

(declare-fun m!667641 () Bool)

(assert (=> bm!34478 m!667641))

(assert (=> b!710143 d!97311))

(declare-fun b!710448 () Bool)

(declare-fun e!399755 () Bool)

(declare-fun e!399754 () Bool)

(assert (=> b!710448 (= e!399755 e!399754)))

(declare-fun c!78581 () Bool)

(assert (=> b!710448 (= c!78581 (validKeyInArray!0 (select (arr!19326 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710449 () Bool)

(declare-fun e!399756 () Bool)

(assert (=> b!710449 (= e!399756 e!399755)))

(declare-fun res!474024 () Bool)

(assert (=> b!710449 (=> (not res!474024) (not e!399755))))

(declare-fun e!399753 () Bool)

(assert (=> b!710449 (= res!474024 (not e!399753))))

(declare-fun res!474023 () Bool)

(assert (=> b!710449 (=> (not res!474023) (not e!399753))))

(assert (=> b!710449 (= res!474023 (validKeyInArray!0 (select (arr!19326 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710450 () Bool)

(declare-fun call!34482 () Bool)

(assert (=> b!710450 (= e!399754 call!34482)))

(declare-fun b!710451 () Bool)

(assert (=> b!710451 (= e!399754 call!34482)))

(declare-fun d!97323 () Bool)

(declare-fun res!474022 () Bool)

(assert (=> d!97323 (=> res!474022 e!399756)))

(assert (=> d!97323 (= res!474022 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19724 a!3591)))))

(assert (=> d!97323 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318268) e!399756)))

(declare-fun b!710452 () Bool)

(assert (=> b!710452 (= e!399753 (contains!3963 lt!318268 (select (arr!19326 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34479 () Bool)

(assert (=> bm!34479 (= call!34482 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78581 (Cons!13416 (select (arr!19326 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318268) lt!318268)))))

(assert (= (and d!97323 (not res!474022)) b!710449))

(assert (= (and b!710449 res!474023) b!710452))

(assert (= (and b!710449 res!474024) b!710448))

(assert (= (and b!710448 c!78581) b!710450))

(assert (= (and b!710448 (not c!78581)) b!710451))

(assert (= (or b!710450 b!710451) bm!34479))

(declare-fun m!667643 () Bool)

(assert (=> b!710448 m!667643))

(assert (=> b!710448 m!667643))

(declare-fun m!667645 () Bool)

(assert (=> b!710448 m!667645))

(assert (=> b!710449 m!667643))

(assert (=> b!710449 m!667643))

(assert (=> b!710449 m!667645))

(assert (=> b!710452 m!667643))

(assert (=> b!710452 m!667643))

(declare-fun m!667647 () Bool)

(assert (=> b!710452 m!667647))

(assert (=> bm!34479 m!667643))

(declare-fun m!667649 () Bool)

(assert (=> bm!34479 m!667649))

(assert (=> b!710145 d!97323))

(declare-fun d!97325 () Bool)

(assert (=> d!97325 (= (array_inv!15100 a!3591) (bvsge (size!19724 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63046 d!97325))

(declare-fun d!97327 () Bool)

(assert (=> d!97327 (= ($colon$colon!517 newAcc!49 (select (arr!19326 a!3591) from!2969)) (Cons!13416 (select (arr!19326 a!3591) from!2969) newAcc!49))))

(assert (=> b!710152 d!97327))

(declare-fun d!97331 () Bool)

(assert (=> d!97331 (= ($colon$colon!517 acc!652 (select (arr!19326 a!3591) from!2969)) (Cons!13416 (select (arr!19326 a!3591) from!2969) acc!652))))

(assert (=> b!710152 d!97331))

(declare-fun d!97335 () Bool)

(declare-fun lt!318302 () Bool)

(assert (=> d!97335 (= lt!318302 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!353 lt!318268)))))

(declare-fun e!399768 () Bool)

(assert (=> d!97335 (= lt!318302 e!399768)))

(declare-fun res!474035 () Bool)

(assert (=> d!97335 (=> (not res!474035) (not e!399768))))

(assert (=> d!97335 (= res!474035 (is-Cons!13416 lt!318268))))

(assert (=> d!97335 (= (contains!3963 lt!318268 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318302)))

(declare-fun b!710468 () Bool)

(declare-fun e!399769 () Bool)

(assert (=> b!710468 (= e!399768 e!399769)))

(declare-fun res!474034 () Bool)

(assert (=> b!710468 (=> res!474034 e!399769)))

(assert (=> b!710468 (= res!474034 (= (h!14461 lt!318268) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710469 () Bool)

(assert (=> b!710469 (= e!399769 (contains!3963 (t!19728 lt!318268) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97335 res!474035) b!710468))

(assert (= (and b!710468 (not res!474034)) b!710469))

(declare-fun m!667669 () Bool)

(assert (=> d!97335 m!667669))

(declare-fun m!667671 () Bool)

(assert (=> d!97335 m!667671))

(declare-fun m!667673 () Bool)

(assert (=> b!710469 m!667673))

(assert (=> b!710151 d!97335))

(declare-fun d!97339 () Bool)

(assert (=> d!97339 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710153 d!97339))

(declare-fun d!97343 () Bool)

(declare-fun res!474045 () Bool)

(declare-fun e!399780 () Bool)

(assert (=> d!97343 (=> res!474045 e!399780)))

(assert (=> d!97343 (= res!474045 (is-Nil!13417 lt!318268))))

(assert (=> d!97343 (= (noDuplicate!1210 lt!318268) e!399780)))

(declare-fun b!710481 () Bool)

(declare-fun e!399781 () Bool)

(assert (=> b!710481 (= e!399780 e!399781)))

(declare-fun res!474046 () Bool)

(assert (=> b!710481 (=> (not res!474046) (not e!399781))))

(assert (=> b!710481 (= res!474046 (not (contains!3963 (t!19728 lt!318268) (h!14461 lt!318268))))))

(declare-fun b!710482 () Bool)

(assert (=> b!710482 (= e!399781 (noDuplicate!1210 (t!19728 lt!318268)))))

(assert (= (and d!97343 (not res!474045)) b!710481))

(assert (= (and b!710481 res!474046) b!710482))

(declare-fun m!667683 () Bool)

(assert (=> b!710481 m!667683))

(declare-fun m!667685 () Bool)

(assert (=> b!710482 m!667685))

(assert (=> b!710149 d!97343))

(declare-fun d!97347 () Bool)

(declare-fun lt!318303 () Bool)

(assert (=> d!97347 (= lt!318303 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!353 acc!652)))))

(declare-fun e!399784 () Bool)

(assert (=> d!97347 (= lt!318303 e!399784)))

(declare-fun res!474050 () Bool)

(assert (=> d!97347 (=> (not res!474050) (not e!399784))))

(assert (=> d!97347 (= res!474050 (is-Cons!13416 acc!652))))

(assert (=> d!97347 (= (contains!3963 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318303)))

(declare-fun b!710485 () Bool)

(declare-fun e!399785 () Bool)

(assert (=> b!710485 (= e!399784 e!399785)))

(declare-fun res!474049 () Bool)

(assert (=> b!710485 (=> res!474049 e!399785)))

(assert (=> b!710485 (= res!474049 (= (h!14461 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710486 () Bool)

(assert (=> b!710486 (= e!399785 (contains!3963 (t!19728 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97347 res!474050) b!710485))

(assert (= (and b!710485 (not res!474049)) b!710486))

(declare-fun m!667691 () Bool)

(assert (=> d!97347 m!667691))

(declare-fun m!667693 () Bool)

(assert (=> d!97347 m!667693))

(declare-fun m!667695 () Bool)

(assert (=> b!710486 m!667695))

(assert (=> b!710150 d!97347))

(declare-fun d!97351 () Bool)

(declare-fun res!474053 () Bool)

(declare-fun e!399788 () Bool)

(assert (=> d!97351 (=> res!474053 e!399788)))

(assert (=> d!97351 (= res!474053 (is-Nil!13417 acc!652))))

(assert (=> d!97351 (= (noDuplicate!1210 acc!652) e!399788)))

(declare-fun b!710489 () Bool)

(declare-fun e!399789 () Bool)

(assert (=> b!710489 (= e!399788 e!399789)))

(declare-fun res!474054 () Bool)

(assert (=> b!710489 (=> (not res!474054) (not e!399789))))

(assert (=> b!710489 (= res!474054 (not (contains!3963 (t!19728 acc!652) (h!14461 acc!652))))))

(declare-fun b!710490 () Bool)

(assert (=> b!710490 (= e!399789 (noDuplicate!1210 (t!19728 acc!652)))))

(assert (= (and d!97351 (not res!474053)) b!710489))

(assert (= (and b!710489 res!474054) b!710490))

(declare-fun m!667699 () Bool)

(assert (=> b!710489 m!667699))

(declare-fun m!667701 () Bool)

(assert (=> b!710490 m!667701))

(assert (=> b!710157 d!97351))

(declare-fun d!97355 () Bool)

(declare-fun res!474059 () Bool)

(declare-fun e!399794 () Bool)

(assert (=> d!97355 (=> res!474059 e!399794)))

(assert (=> d!97355 (= res!474059 (= (select (arr!19326 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k!2824))))

(assert (=> d!97355 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!399794)))

(declare-fun b!710495 () Bool)

(declare-fun e!399795 () Bool)

(assert (=> b!710495 (= e!399794 e!399795)))

(declare-fun res!474060 () Bool)

(assert (=> b!710495 (=> (not res!474060) (not e!399795))))

(assert (=> b!710495 (= res!474060 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19724 a!3591)))))

(declare-fun b!710496 () Bool)

(assert (=> b!710496 (= e!399795 (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97355 (not res!474059)) b!710495))

(assert (= (and b!710495 res!474060) b!710496))

(assert (=> d!97355 m!667643))

(declare-fun m!667709 () Bool)

(assert (=> b!710496 m!667709))

(assert (=> b!710158 d!97355))

(declare-fun d!97359 () Bool)

(declare-fun lt!318306 () Bool)

(assert (=> d!97359 (= lt!318306 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!353 newAcc!49)))))

(declare-fun e!399798 () Bool)

(assert (=> d!97359 (= lt!318306 e!399798)))

(declare-fun res!474064 () Bool)

(assert (=> d!97359 (=> (not res!474064) (not e!399798))))

(assert (=> d!97359 (= res!474064 (is-Cons!13416 newAcc!49))))

(assert (=> d!97359 (= (contains!3963 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318306)))

(declare-fun b!710499 () Bool)

(declare-fun e!399799 () Bool)

(assert (=> b!710499 (= e!399798 e!399799)))

(declare-fun res!474063 () Bool)

(assert (=> b!710499 (=> res!474063 e!399799)))

(assert (=> b!710499 (= res!474063 (= (h!14461 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710500 () Bool)

(assert (=> b!710500 (= e!399799 (contains!3963 (t!19728 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97359 res!474064) b!710499))

(assert (= (and b!710499 (not res!474063)) b!710500))

(assert (=> d!97359 m!667575))

(declare-fun m!667715 () Bool)

(assert (=> d!97359 m!667715))

(declare-fun m!667717 () Bool)

(assert (=> b!710500 m!667717))

(assert (=> b!710154 d!97359))

(declare-fun d!97363 () Bool)

(assert (=> d!97363 (= (validKeyInArray!0 (select (arr!19326 a!3591) from!2969)) (and (not (= (select (arr!19326 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19326 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710156 d!97363))

(declare-fun d!97365 () Bool)

(declare-fun lt!318308 () Bool)

(assert (=> d!97365 (= lt!318308 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!353 lt!318268)))))

(declare-fun e!399802 () Bool)

(assert (=> d!97365 (= lt!318308 e!399802)))

(declare-fun res!474068 () Bool)

(assert (=> d!97365 (=> (not res!474068) (not e!399802))))

(assert (=> d!97365 (= res!474068 (is-Cons!13416 lt!318268))))

(assert (=> d!97365 (= (contains!3963 lt!318268 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318308)))

(declare-fun b!710503 () Bool)

(declare-fun e!399803 () Bool)

(assert (=> b!710503 (= e!399802 e!399803)))

(declare-fun res!474067 () Bool)

(assert (=> b!710503 (=> res!474067 e!399803)))

(assert (=> b!710503 (= res!474067 (= (h!14461 lt!318268) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710504 () Bool)

(assert (=> b!710504 (= e!399803 (contains!3963 (t!19728 lt!318268) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97365 res!474068) b!710503))

(assert (= (and b!710503 (not res!474067)) b!710504))

(assert (=> d!97365 m!667669))

(declare-fun m!667723 () Bool)

(assert (=> d!97365 m!667723))

(declare-fun m!667725 () Bool)

(assert (=> b!710504 m!667725))

(assert (=> b!710155 d!97365))

(declare-fun bm!34486 () Bool)

(declare-fun call!34489 () List!13420)

(assert (=> bm!34486 (= call!34489 (-!372 (t!19728 newAcc!49) k!2824))))

(declare-fun b!710533 () Bool)

(declare-fun e!399828 () List!13420)

(declare-fun e!399826 () List!13420)

(assert (=> b!710533 (= e!399828 e!399826)))

(declare-fun c!78593 () Bool)

(assert (=> b!710533 (= c!78593 (= k!2824 (h!14461 newAcc!49)))))

(declare-fun b!710534 () Bool)

(declare-fun e!399827 () Bool)

(declare-fun lt!318316 () List!13420)

(assert (=> b!710534 (= e!399827 (= (content!353 lt!318316) (set.minus (content!353 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!710535 () Bool)

(assert (=> b!710535 (= e!399828 Nil!13417)))

(declare-fun d!97369 () Bool)

(assert (=> d!97369 e!399827))

(declare-fun res!474081 () Bool)

(assert (=> d!97369 (=> (not res!474081) (not e!399827))))

(declare-fun size!19728 (List!13420) Int)

(assert (=> d!97369 (= res!474081 (<= (size!19728 lt!318316) (size!19728 newAcc!49)))))

(assert (=> d!97369 (= lt!318316 e!399828)))

(declare-fun c!78594 () Bool)

(assert (=> d!97369 (= c!78594 (is-Cons!13416 newAcc!49))))

(assert (=> d!97369 (= (-!372 newAcc!49 k!2824) lt!318316)))

(declare-fun b!710536 () Bool)

(assert (=> b!710536 (= e!399826 (Cons!13416 (h!14461 newAcc!49) call!34489))))

(declare-fun b!710537 () Bool)

(assert (=> b!710537 (= e!399826 call!34489)))

(assert (= (and d!97369 c!78594) b!710533))

(assert (= (and d!97369 (not c!78594)) b!710535))

(assert (= (and b!710533 c!78593) b!710537))

(assert (= (and b!710533 (not c!78593)) b!710536))

(assert (= (or b!710537 b!710536) bm!34486))

(assert (= (and d!97369 res!474081) b!710534))

(declare-fun m!667745 () Bool)

(assert (=> bm!34486 m!667745))

(declare-fun m!667747 () Bool)

(assert (=> b!710534 m!667747))

(assert (=> b!710534 m!667575))

(declare-fun m!667749 () Bool)

(assert (=> b!710534 m!667749))

(declare-fun m!667751 () Bool)

(assert (=> d!97369 m!667751))

(declare-fun m!667753 () Bool)

(assert (=> d!97369 m!667753))

(assert (=> b!710141 d!97369))

(declare-fun d!97383 () Bool)

(declare-fun lt!318317 () Bool)

(assert (=> d!97383 (= lt!318317 (set.member k!2824 (content!353 newAcc!49)))))

(declare-fun e!399831 () Bool)

(assert (=> d!97383 (= lt!318317 e!399831)))

(declare-fun res!474085 () Bool)

(assert (=> d!97383 (=> (not res!474085) (not e!399831))))

(assert (=> d!97383 (= res!474085 (is-Cons!13416 newAcc!49))))

(assert (=> d!97383 (= (contains!3963 newAcc!49 k!2824) lt!318317)))

(declare-fun b!710540 () Bool)

(declare-fun e!399832 () Bool)

(assert (=> b!710540 (= e!399831 e!399832)))

(declare-fun res!474084 () Bool)

(assert (=> b!710540 (=> res!474084 e!399832)))

(assert (=> b!710540 (= res!474084 (= (h!14461 newAcc!49) k!2824))))

(declare-fun b!710541 () Bool)

(assert (=> b!710541 (= e!399832 (contains!3963 (t!19728 newAcc!49) k!2824))))

(assert (= (and d!97383 res!474085) b!710540))

(assert (= (and b!710540 (not res!474084)) b!710541))

(assert (=> d!97383 m!667575))

(declare-fun m!667755 () Bool)

(assert (=> d!97383 m!667755))

(declare-fun m!667757 () Bool)

(assert (=> b!710541 m!667757))

(assert (=> b!710162 d!97383))

(declare-fun b!710569 () Bool)

(declare-fun e!399859 () Bool)

(declare-fun e!399858 () Bool)

(assert (=> b!710569 (= e!399859 e!399858)))

(declare-fun res!474107 () Bool)

(assert (=> b!710569 (=> res!474107 e!399858)))

(declare-fun e!399856 () Bool)

(assert (=> b!710569 (= res!474107 e!399856)))

(declare-fun res!474109 () Bool)

(assert (=> b!710569 (=> (not res!474109) (not e!399856))))

(assert (=> b!710569 (= res!474109 (= (h!14461 acc!652) (h!14461 newAcc!49)))))

(declare-fun b!710568 () Bool)

(declare-fun e!399857 () Bool)

(assert (=> b!710568 (= e!399857 e!399859)))

(declare-fun res!474106 () Bool)

(assert (=> b!710568 (=> (not res!474106) (not e!399859))))

(assert (=> b!710568 (= res!474106 (is-Cons!13416 newAcc!49))))

(declare-fun b!710570 () Bool)

(assert (=> b!710570 (= e!399856 (subseq!407 (t!19728 acc!652) (t!19728 newAcc!49)))))

(declare-fun d!97385 () Bool)

(declare-fun res!474108 () Bool)

(assert (=> d!97385 (=> res!474108 e!399857)))

(assert (=> d!97385 (= res!474108 (is-Nil!13417 acc!652))))

(assert (=> d!97385 (= (subseq!407 acc!652 newAcc!49) e!399857)))

(declare-fun b!710571 () Bool)

(assert (=> b!710571 (= e!399858 (subseq!407 acc!652 (t!19728 newAcc!49)))))

(assert (= (and d!97385 (not res!474108)) b!710568))

(assert (= (and b!710568 res!474106) b!710569))

(assert (= (and b!710569 res!474109) b!710570))

(assert (= (and b!710569 (not res!474107)) b!710571))

(declare-fun m!667789 () Bool)

(assert (=> b!710570 m!667789))

(declare-fun m!667791 () Bool)

(assert (=> b!710571 m!667791))

(assert (=> b!710142 d!97385))

(declare-fun d!97401 () Bool)

(declare-fun lt!318320 () Bool)

(assert (=> d!97401 (= lt!318320 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!353 acc!652)))))

(declare-fun e!399862 () Bool)

(assert (=> d!97401 (= lt!318320 e!399862)))

(declare-fun res!474113 () Bool)

(assert (=> d!97401 (=> (not res!474113) (not e!399862))))

(assert (=> d!97401 (= res!474113 (is-Cons!13416 acc!652))))

(assert (=> d!97401 (= (contains!3963 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318320)))

(declare-fun b!710574 () Bool)

(declare-fun e!399863 () Bool)

(assert (=> b!710574 (= e!399862 e!399863)))

(declare-fun res!474112 () Bool)

(assert (=> b!710574 (=> res!474112 e!399863)))

(assert (=> b!710574 (= res!474112 (= (h!14461 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710575 () Bool)

(assert (=> b!710575 (= e!399863 (contains!3963 (t!19728 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97401 res!474113) b!710574))

(assert (= (and b!710574 (not res!474112)) b!710575))

(assert (=> d!97401 m!667691))

(declare-fun m!667795 () Bool)

(assert (=> d!97401 m!667795))

(declare-fun m!667799 () Bool)

(assert (=> b!710575 m!667799))

(assert (=> b!710159 d!97401))

(declare-fun d!97405 () Bool)

(declare-fun lt!318322 () Bool)

(assert (=> d!97405 (= lt!318322 (set.member k!2824 (content!353 lt!318268)))))

(declare-fun e!399866 () Bool)

(assert (=> d!97405 (= lt!318322 e!399866)))

(declare-fun res!474117 () Bool)

(assert (=> d!97405 (=> (not res!474117) (not e!399866))))

(assert (=> d!97405 (= res!474117 (is-Cons!13416 lt!318268))))

(assert (=> d!97405 (= (contains!3963 lt!318268 k!2824) lt!318322)))

(declare-fun b!710578 () Bool)

(declare-fun e!399867 () Bool)

(assert (=> b!710578 (= e!399866 e!399867)))

(declare-fun res!474116 () Bool)

(assert (=> b!710578 (=> res!474116 e!399867)))

(assert (=> b!710578 (= res!474116 (= (h!14461 lt!318268) k!2824))))

(declare-fun b!710579 () Bool)

(assert (=> b!710579 (= e!399867 (contains!3963 (t!19728 lt!318268) k!2824))))

(assert (= (and d!97405 res!474117) b!710578))

(assert (= (and b!710578 (not res!474116)) b!710579))

(assert (=> d!97405 m!667669))

(declare-fun m!667803 () Bool)

(assert (=> d!97405 m!667803))

(declare-fun m!667805 () Bool)

(assert (=> b!710579 m!667805))

(assert (=> b!710140 d!97405))

(declare-fun b!710581 () Bool)

(declare-fun e!399871 () Bool)

(declare-fun e!399870 () Bool)

(assert (=> b!710581 (= e!399871 e!399870)))

(declare-fun res!474119 () Bool)

