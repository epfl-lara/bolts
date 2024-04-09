; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62982 () Bool)

(assert start!62982)

(declare-fun b!709529 () Bool)

(declare-fun res!473194 () Bool)

(declare-fun e!399317 () Bool)

(assert (=> b!709529 (=> (not res!473194) (not e!399317))))

(declare-datatypes ((List!13415 0))(
  ( (Nil!13412) (Cons!13411 (h!14456 (_ BitVec 64)) (t!19720 List!13415)) )
))
(declare-fun newAcc!49 () List!13415)

(declare-fun noDuplicate!1205 (List!13415) Bool)

(assert (=> b!709529 (= res!473194 (noDuplicate!1205 newAcc!49))))

(declare-fun b!709531 () Bool)

(declare-fun res!473193 () Bool)

(assert (=> b!709531 (=> (not res!473193) (not e!399317))))

(declare-fun acc!652 () List!13415)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3958 (List!13415 (_ BitVec 64)) Bool)

(assert (=> b!709531 (= res!473193 (not (contains!3958 acc!652 k0!2824)))))

(declare-fun b!709532 () Bool)

(declare-fun res!473198 () Bool)

(assert (=> b!709532 (=> (not res!473198) (not e!399317))))

(declare-fun -!367 (List!13415 (_ BitVec 64)) List!13415)

(assert (=> b!709532 (= res!473198 (= (-!367 newAcc!49 k0!2824) acc!652))))

(declare-fun b!709533 () Bool)

(declare-fun res!473202 () Bool)

(assert (=> b!709533 (=> (not res!473202) (not e!399317))))

(assert (=> b!709533 (= res!473202 (not (contains!3958 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709534 () Bool)

(declare-fun res!473187 () Bool)

(declare-fun e!399316 () Bool)

(assert (=> b!709534 (=> (not res!473187) (not e!399316))))

(declare-fun lt!318206 () List!13415)

(assert (=> b!709534 (= res!473187 (not (contains!3958 lt!318206 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709535 () Bool)

(declare-fun res!473191 () Bool)

(assert (=> b!709535 (=> (not res!473191) (not e!399317))))

(declare-datatypes ((array!40352 0))(
  ( (array!40353 (arr!19321 (Array (_ BitVec 32) (_ BitVec 64))) (size!19717 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40352)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40352 (_ BitVec 32) List!13415) Bool)

(assert (=> b!709535 (= res!473191 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!709536 () Bool)

(declare-fun res!473199 () Bool)

(assert (=> b!709536 (=> (not res!473199) (not e!399316))))

(assert (=> b!709536 (= res!473199 (noDuplicate!1205 lt!318206))))

(declare-fun b!709537 () Bool)

(declare-fun res!473204 () Bool)

(assert (=> b!709537 (=> (not res!473204) (not e!399317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709537 (= res!473204 (validKeyInArray!0 k0!2824))))

(declare-fun b!709538 () Bool)

(declare-fun res!473201 () Bool)

(assert (=> b!709538 (=> (not res!473201) (not e!399317))))

(assert (=> b!709538 (= res!473201 (contains!3958 newAcc!49 k0!2824))))

(declare-fun b!709530 () Bool)

(declare-fun res!473197 () Bool)

(assert (=> b!709530 (=> (not res!473197) (not e!399316))))

(declare-fun arrayContainsKey!0 (array!40352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709530 (= res!473197 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun res!473207 () Bool)

(assert (=> start!62982 (=> (not res!473207) (not e!399317))))

(assert (=> start!62982 (= res!473207 (and (bvslt (size!19717 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19717 a!3591))))))

(assert (=> start!62982 e!399317))

(assert (=> start!62982 true))

(declare-fun array_inv!15095 (array!40352) Bool)

(assert (=> start!62982 (array_inv!15095 a!3591)))

(declare-fun b!709539 () Bool)

(assert (=> b!709539 (= e!399317 e!399316)))

(declare-fun res!473192 () Bool)

(assert (=> b!709539 (=> (not res!473192) (not e!399316))))

(assert (=> b!709539 (= res!473192 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!512 (List!13415 (_ BitVec 64)) List!13415)

(assert (=> b!709539 (= lt!318206 ($colon$colon!512 acc!652 (select (arr!19321 a!3591) from!2969)))))

(declare-fun b!709540 () Bool)

(declare-fun res!473203 () Bool)

(assert (=> b!709540 (=> (not res!473203) (not e!399317))))

(declare-fun subseq!402 (List!13415 List!13415) Bool)

(assert (=> b!709540 (= res!473203 (subseq!402 acc!652 newAcc!49))))

(declare-fun b!709541 () Bool)

(assert (=> b!709541 (= e!399316 false)))

(declare-fun lt!318205 () Bool)

(assert (=> b!709541 (= lt!318205 (contains!3958 lt!318206 k0!2824))))

(declare-fun b!709542 () Bool)

(declare-fun res!473196 () Bool)

(assert (=> b!709542 (=> (not res!473196) (not e!399317))))

(assert (=> b!709542 (= res!473196 (validKeyInArray!0 (select (arr!19321 a!3591) from!2969)))))

(declare-fun b!709543 () Bool)

(declare-fun res!473206 () Bool)

(assert (=> b!709543 (=> (not res!473206) (not e!399316))))

(assert (=> b!709543 (= res!473206 (noDuplicate!1205 ($colon$colon!512 newAcc!49 (select (arr!19321 a!3591) from!2969))))))

(declare-fun b!709544 () Bool)

(declare-fun res!473205 () Bool)

(assert (=> b!709544 (=> (not res!473205) (not e!399317))))

(assert (=> b!709544 (= res!473205 (not (contains!3958 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709545 () Bool)

(declare-fun res!473208 () Bool)

(assert (=> b!709545 (=> (not res!473208) (not e!399317))))

(assert (=> b!709545 (= res!473208 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!709546 () Bool)

(declare-fun res!473195 () Bool)

(assert (=> b!709546 (=> (not res!473195) (not e!399317))))

(assert (=> b!709546 (= res!473195 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19717 a!3591)))))

(declare-fun b!709547 () Bool)

(declare-fun res!473200 () Bool)

(assert (=> b!709547 (=> (not res!473200) (not e!399316))))

(assert (=> b!709547 (= res!473200 (not (contains!3958 lt!318206 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709548 () Bool)

(declare-fun res!473190 () Bool)

(assert (=> b!709548 (=> (not res!473190) (not e!399317))))

(assert (=> b!709548 (= res!473190 (not (contains!3958 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709549 () Bool)

(declare-fun res!473189 () Bool)

(assert (=> b!709549 (=> (not res!473189) (not e!399317))))

(assert (=> b!709549 (= res!473189 (not (contains!3958 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709550 () Bool)

(declare-fun res!473188 () Bool)

(assert (=> b!709550 (=> (not res!473188) (not e!399317))))

(assert (=> b!709550 (= res!473188 (noDuplicate!1205 acc!652))))

(assert (= (and start!62982 res!473207) b!709550))

(assert (= (and b!709550 res!473188) b!709529))

(assert (= (and b!709529 res!473194) b!709533))

(assert (= (and b!709533 res!473202) b!709544))

(assert (= (and b!709544 res!473205) b!709545))

(assert (= (and b!709545 res!473208) b!709531))

(assert (= (and b!709531 res!473193) b!709537))

(assert (= (and b!709537 res!473204) b!709535))

(assert (= (and b!709535 res!473191) b!709540))

(assert (= (and b!709540 res!473203) b!709538))

(assert (= (and b!709538 res!473201) b!709532))

(assert (= (and b!709532 res!473198) b!709549))

(assert (= (and b!709549 res!473189) b!709548))

(assert (= (and b!709548 res!473190) b!709546))

(assert (= (and b!709546 res!473195) b!709542))

(assert (= (and b!709542 res!473196) b!709539))

(assert (= (and b!709539 res!473192) b!709536))

(assert (= (and b!709536 res!473199) b!709543))

(assert (= (and b!709543 res!473206) b!709547))

(assert (= (and b!709547 res!473200) b!709534))

(assert (= (and b!709534 res!473187) b!709530))

(assert (= (and b!709530 res!473197) b!709541))

(declare-fun m!666873 () Bool)

(assert (=> b!709550 m!666873))

(declare-fun m!666875 () Bool)

(assert (=> b!709547 m!666875))

(declare-fun m!666877 () Bool)

(assert (=> b!709533 m!666877))

(declare-fun m!666879 () Bool)

(assert (=> b!709539 m!666879))

(assert (=> b!709539 m!666879))

(declare-fun m!666881 () Bool)

(assert (=> b!709539 m!666881))

(declare-fun m!666883 () Bool)

(assert (=> b!709535 m!666883))

(declare-fun m!666885 () Bool)

(assert (=> b!709530 m!666885))

(declare-fun m!666887 () Bool)

(assert (=> b!709541 m!666887))

(assert (=> b!709542 m!666879))

(assert (=> b!709542 m!666879))

(declare-fun m!666889 () Bool)

(assert (=> b!709542 m!666889))

(declare-fun m!666891 () Bool)

(assert (=> b!709534 m!666891))

(declare-fun m!666893 () Bool)

(assert (=> b!709531 m!666893))

(declare-fun m!666895 () Bool)

(assert (=> b!709549 m!666895))

(declare-fun m!666897 () Bool)

(assert (=> b!709540 m!666897))

(declare-fun m!666899 () Bool)

(assert (=> b!709537 m!666899))

(declare-fun m!666901 () Bool)

(assert (=> b!709532 m!666901))

(declare-fun m!666903 () Bool)

(assert (=> b!709536 m!666903))

(declare-fun m!666905 () Bool)

(assert (=> start!62982 m!666905))

(declare-fun m!666907 () Bool)

(assert (=> b!709545 m!666907))

(declare-fun m!666909 () Bool)

(assert (=> b!709548 m!666909))

(declare-fun m!666911 () Bool)

(assert (=> b!709544 m!666911))

(assert (=> b!709543 m!666879))

(assert (=> b!709543 m!666879))

(declare-fun m!666913 () Bool)

(assert (=> b!709543 m!666913))

(assert (=> b!709543 m!666913))

(declare-fun m!666915 () Bool)

(assert (=> b!709543 m!666915))

(declare-fun m!666917 () Bool)

(assert (=> b!709538 m!666917))

(declare-fun m!666919 () Bool)

(assert (=> b!709529 m!666919))

(check-sat (not b!709530) (not b!709547) (not b!709549) (not b!709535) (not b!709537) (not start!62982) (not b!709529) (not b!709533) (not b!709536) (not b!709544) (not b!709548) (not b!709545) (not b!709540) (not b!709539) (not b!709532) (not b!709542) (not b!709550) (not b!709538) (not b!709541) (not b!709534) (not b!709543) (not b!709531))
(check-sat)
