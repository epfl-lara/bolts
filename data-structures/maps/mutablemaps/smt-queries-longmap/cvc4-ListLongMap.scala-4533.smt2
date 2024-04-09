; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62804 () Bool)

(assert start!62804)

(declare-fun b!708274 () Bool)

(declare-fun res!472108 () Bool)

(declare-fun e!398578 () Bool)

(assert (=> b!708274 (=> (not res!472108) (not e!398578))))

(declare-datatypes ((array!40327 0))(
  ( (array!40328 (arr!19313 (Array (_ BitVec 32) (_ BitVec 64))) (size!19701 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40327)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!708274 (= res!472108 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!708275 () Bool)

(declare-fun res!472106 () Bool)

(assert (=> b!708275 (=> (not res!472106) (not e!398578))))

(declare-datatypes ((List!13407 0))(
  ( (Nil!13404) (Cons!13403 (h!14448 (_ BitVec 64)) (t!19703 List!13407)) )
))
(declare-fun acc!652 () List!13407)

(declare-fun contains!3950 (List!13407 (_ BitVec 64)) Bool)

(assert (=> b!708275 (= res!472106 (not (contains!3950 acc!652 k!2824)))))

(declare-fun b!708276 () Bool)

(declare-fun e!398577 () Bool)

(assert (=> b!708276 (= e!398578 e!398577)))

(declare-fun res!472095 () Bool)

(assert (=> b!708276 (=> (not res!472095) (not e!398577))))

(assert (=> b!708276 (= res!472095 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun lt!318056 () List!13407)

(declare-fun $colon$colon!504 (List!13407 (_ BitVec 64)) List!13407)

(assert (=> b!708276 (= lt!318056 ($colon$colon!504 acc!652 (select (arr!19313 a!3591) from!2969)))))

(declare-fun b!708277 () Bool)

(declare-fun res!472094 () Bool)

(assert (=> b!708277 (=> (not res!472094) (not e!398578))))

(assert (=> b!708277 (= res!472094 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19701 a!3591)))))

(declare-fun b!708279 () Bool)

(declare-fun res!472105 () Bool)

(assert (=> b!708279 (=> (not res!472105) (not e!398578))))

(declare-fun arrayNoDuplicates!0 (array!40327 (_ BitVec 32) List!13407) Bool)

(assert (=> b!708279 (= res!472105 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!708280 () Bool)

(declare-fun res!472100 () Bool)

(assert (=> b!708280 (=> (not res!472100) (not e!398578))))

(declare-fun newAcc!49 () List!13407)

(assert (=> b!708280 (= res!472100 (not (contains!3950 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708281 () Bool)

(declare-fun res!472099 () Bool)

(assert (=> b!708281 (=> (not res!472099) (not e!398578))))

(assert (=> b!708281 (= res!472099 (not (contains!3950 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708282 () Bool)

(declare-fun res!472102 () Bool)

(assert (=> b!708282 (=> (not res!472102) (not e!398578))))

(declare-fun noDuplicate!1197 (List!13407) Bool)

(assert (=> b!708282 (= res!472102 (noDuplicate!1197 acc!652))))

(declare-fun b!708283 () Bool)

(declare-fun res!472107 () Bool)

(assert (=> b!708283 (=> (not res!472107) (not e!398577))))

(assert (=> b!708283 (= res!472107 (noDuplicate!1197 ($colon$colon!504 newAcc!49 (select (arr!19313 a!3591) from!2969))))))

(declare-fun b!708284 () Bool)

(declare-fun res!472104 () Bool)

(assert (=> b!708284 (=> (not res!472104) (not e!398577))))

(assert (=> b!708284 (= res!472104 (noDuplicate!1197 lt!318056))))

(declare-fun b!708278 () Bool)

(declare-fun res!472097 () Bool)

(assert (=> b!708278 (=> (not res!472097) (not e!398578))))

(assert (=> b!708278 (= res!472097 (not (contains!3950 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!472110 () Bool)

(assert (=> start!62804 (=> (not res!472110) (not e!398578))))

(assert (=> start!62804 (= res!472110 (and (bvslt (size!19701 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19701 a!3591))))))

(assert (=> start!62804 e!398578))

(assert (=> start!62804 true))

(declare-fun array_inv!15087 (array!40327) Bool)

(assert (=> start!62804 (array_inv!15087 a!3591)))

(declare-fun b!708285 () Bool)

(declare-fun res!472096 () Bool)

(assert (=> b!708285 (=> (not res!472096) (not e!398578))))

(assert (=> b!708285 (= res!472096 (noDuplicate!1197 newAcc!49))))

(declare-fun b!708286 () Bool)

(declare-fun res!472112 () Bool)

(assert (=> b!708286 (=> (not res!472112) (not e!398578))))

(assert (=> b!708286 (= res!472112 (contains!3950 newAcc!49 k!2824))))

(declare-fun b!708287 () Bool)

(declare-fun res!472101 () Bool)

(assert (=> b!708287 (=> (not res!472101) (not e!398578))))

(declare-fun subseq!394 (List!13407 List!13407) Bool)

(assert (=> b!708287 (= res!472101 (subseq!394 acc!652 newAcc!49))))

(declare-fun b!708288 () Bool)

(declare-fun e!398580 () Bool)

(assert (=> b!708288 (= e!398577 e!398580)))

(declare-fun res!472098 () Bool)

(assert (=> b!708288 (=> res!472098 e!398580)))

(assert (=> b!708288 (= res!472098 (contains!3950 lt!318056 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708289 () Bool)

(declare-fun res!472103 () Bool)

(assert (=> b!708289 (=> (not res!472103) (not e!398578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!708289 (= res!472103 (validKeyInArray!0 (select (arr!19313 a!3591) from!2969)))))

(declare-fun b!708290 () Bool)

(assert (=> b!708290 (= e!398580 (contains!3950 lt!318056 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708291 () Bool)

(declare-fun res!472111 () Bool)

(assert (=> b!708291 (=> (not res!472111) (not e!398578))))

(assert (=> b!708291 (= res!472111 (not (contains!3950 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708292 () Bool)

(declare-fun res!472113 () Bool)

(assert (=> b!708292 (=> (not res!472113) (not e!398578))))

(assert (=> b!708292 (= res!472113 (validKeyInArray!0 k!2824))))

(declare-fun b!708293 () Bool)

(declare-fun res!472109 () Bool)

(assert (=> b!708293 (=> (not res!472109) (not e!398578))))

(declare-fun -!359 (List!13407 (_ BitVec 64)) List!13407)

(assert (=> b!708293 (= res!472109 (= (-!359 newAcc!49 k!2824) acc!652))))

(assert (= (and start!62804 res!472110) b!708282))

(assert (= (and b!708282 res!472102) b!708285))

(assert (= (and b!708285 res!472096) b!708278))

(assert (= (and b!708278 res!472097) b!708291))

(assert (= (and b!708291 res!472111) b!708274))

(assert (= (and b!708274 res!472108) b!708275))

(assert (= (and b!708275 res!472106) b!708292))

(assert (= (and b!708292 res!472113) b!708279))

(assert (= (and b!708279 res!472105) b!708287))

(assert (= (and b!708287 res!472101) b!708286))

(assert (= (and b!708286 res!472112) b!708293))

(assert (= (and b!708293 res!472109) b!708280))

(assert (= (and b!708280 res!472100) b!708281))

(assert (= (and b!708281 res!472099) b!708277))

(assert (= (and b!708277 res!472094) b!708289))

(assert (= (and b!708289 res!472103) b!708276))

(assert (= (and b!708276 res!472095) b!708284))

(assert (= (and b!708284 res!472104) b!708283))

(assert (= (and b!708283 res!472107) b!708288))

(assert (= (and b!708288 (not res!472098)) b!708290))

(declare-fun m!665797 () Bool)

(assert (=> b!708287 m!665797))

(declare-fun m!665799 () Bool)

(assert (=> b!708293 m!665799))

(declare-fun m!665801 () Bool)

(assert (=> b!708286 m!665801))

(declare-fun m!665803 () Bool)

(assert (=> b!708274 m!665803))

(declare-fun m!665805 () Bool)

(assert (=> b!708289 m!665805))

(assert (=> b!708289 m!665805))

(declare-fun m!665807 () Bool)

(assert (=> b!708289 m!665807))

(declare-fun m!665809 () Bool)

(assert (=> b!708282 m!665809))

(declare-fun m!665811 () Bool)

(assert (=> b!708280 m!665811))

(declare-fun m!665813 () Bool)

(assert (=> b!708279 m!665813))

(assert (=> b!708283 m!665805))

(assert (=> b!708283 m!665805))

(declare-fun m!665815 () Bool)

(assert (=> b!708283 m!665815))

(assert (=> b!708283 m!665815))

(declare-fun m!665817 () Bool)

(assert (=> b!708283 m!665817))

(declare-fun m!665819 () Bool)

(assert (=> b!708281 m!665819))

(declare-fun m!665821 () Bool)

(assert (=> b!708292 m!665821))

(declare-fun m!665823 () Bool)

(assert (=> b!708284 m!665823))

(declare-fun m!665825 () Bool)

(assert (=> b!708290 m!665825))

(declare-fun m!665827 () Bool)

(assert (=> b!708288 m!665827))

(declare-fun m!665829 () Bool)

(assert (=> start!62804 m!665829))

(declare-fun m!665831 () Bool)

(assert (=> b!708291 m!665831))

(declare-fun m!665833 () Bool)

(assert (=> b!708278 m!665833))

(declare-fun m!665835 () Bool)

(assert (=> b!708285 m!665835))

(declare-fun m!665837 () Bool)

(assert (=> b!708275 m!665837))

(assert (=> b!708276 m!665805))

(assert (=> b!708276 m!665805))

(declare-fun m!665839 () Bool)

(assert (=> b!708276 m!665839))

(push 1)

(assert (not b!708289))

(assert (not b!708284))

(assert (not b!708290))

(assert (not b!708293))

(assert (not start!62804))

(assert (not b!708279))

(assert (not b!708283))

(assert (not b!708291))

(assert (not b!708275))

(assert (not b!708285))

(assert (not b!708287))

(assert (not b!708280))

(assert (not b!708288))

(assert (not b!708281))

(assert (not b!708274))

(assert (not b!708276))

(assert (not b!708278))

(assert (not b!708286))

(assert (not b!708282))

(assert (not b!708292))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!708348 () Bool)

(declare-fun e!398633 () Bool)

(declare-fun e!398634 () Bool)

(assert (=> b!708348 (= e!398633 e!398634)))

(declare-fun res!472167 () Bool)

(assert (=> b!708348 (=> (not res!472167) (not e!398634))))

(assert (=> b!708348 (= res!472167 (is-Cons!13403 newAcc!49))))

(declare-fun b!708349 () Bool)

(declare-fun e!398635 () Bool)

(assert (=> b!708349 (= e!398634 e!398635)))

(declare-fun res!472165 () Bool)

(assert (=> b!708349 (=> res!472165 e!398635)))

(declare-fun e!398636 () Bool)

(assert (=> b!708349 (= res!472165 e!398636)))

(declare-fun res!472166 () Bool)

(assert (=> b!708349 (=> (not res!472166) (not e!398636))))

(assert (=> b!708349 (= res!472166 (= (h!14448 acc!652) (h!14448 newAcc!49)))))

(declare-fun b!708351 () Bool)

(assert (=> b!708351 (= e!398635 (subseq!394 acc!652 (t!19703 newAcc!49)))))

(declare-fun b!708350 () Bool)

(assert (=> b!708350 (= e!398636 (subseq!394 (t!19703 acc!652) (t!19703 newAcc!49)))))

(declare-fun d!96733 () Bool)

(declare-fun res!472164 () Bool)

(assert (=> d!96733 (=> res!472164 e!398633)))

(assert (=> d!96733 (= res!472164 (is-Nil!13404 acc!652))))

(assert (=> d!96733 (= (subseq!394 acc!652 newAcc!49) e!398633)))

(assert (= (and d!96733 (not res!472164)) b!708348))

(assert (= (and b!708348 res!472167) b!708349))

(assert (= (and b!708349 res!472166) b!708350))

(assert (= (and b!708349 (not res!472165)) b!708351))

(declare-fun m!665873 () Bool)

(assert (=> b!708351 m!665873))

(declare-fun m!665875 () Bool)

(assert (=> b!708350 m!665875))

(assert (=> b!708287 d!96733))

(declare-fun d!96741 () Bool)

(assert (=> d!96741 (= ($colon$colon!504 acc!652 (select (arr!19313 a!3591) from!2969)) (Cons!13403 (select (arr!19313 a!3591) from!2969) acc!652))))

(assert (=> b!708276 d!96741))

(declare-fun d!96743 () Bool)

(declare-fun lt!318067 () Bool)

(declare-fun content!341 (List!13407) (Set (_ BitVec 64)))

(assert (=> d!96743 (= lt!318067 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!341 acc!652)))))

(declare-fun e!398651 () Bool)

(assert (=> d!96743 (= lt!318067 e!398651)))

(declare-fun res!472181 () Bool)

(assert (=> d!96743 (=> (not res!472181) (not e!398651))))

(assert (=> d!96743 (= res!472181 (is-Cons!13403 acc!652))))

(assert (=> d!96743 (= (contains!3950 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318067)))

(declare-fun b!708367 () Bool)

(declare-fun e!398652 () Bool)

(assert (=> b!708367 (= e!398651 e!398652)))

(declare-fun res!472182 () Bool)

(assert (=> b!708367 (=> res!472182 e!398652)))

(assert (=> b!708367 (= res!472182 (= (h!14448 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708368 () Bool)

(assert (=> b!708368 (= e!398652 (contains!3950 (t!19703 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96743 res!472181) b!708367))

(assert (= (and b!708367 (not res!472182)) b!708368))

(declare-fun m!665893 () Bool)

(assert (=> d!96743 m!665893))

(declare-fun m!665895 () Bool)

(assert (=> d!96743 m!665895))

(declare-fun m!665897 () Bool)

(assert (=> b!708368 m!665897))

(assert (=> b!708278 d!96743))

(declare-fun d!96755 () Bool)

(declare-fun lt!318070 () Bool)

(assert (=> d!96755 (= lt!318070 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!341 lt!318056)))))

(declare-fun e!398656 () Bool)

(assert (=> d!96755 (= lt!318070 e!398656)))

(declare-fun res!472183 () Bool)

(assert (=> d!96755 (=> (not res!472183) (not e!398656))))

(assert (=> d!96755 (= res!472183 (is-Cons!13403 lt!318056))))

(assert (=> d!96755 (= (contains!3950 lt!318056 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318070)))

(declare-fun b!708373 () Bool)

(declare-fun e!398657 () Bool)

(assert (=> b!708373 (= e!398656 e!398657)))

(declare-fun res!472184 () Bool)

(assert (=> b!708373 (=> res!472184 e!398657)))

(assert (=> b!708373 (= res!472184 (= (h!14448 lt!318056) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708374 () Bool)

(assert (=> b!708374 (= e!398657 (contains!3950 (t!19703 lt!318056) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96755 res!472183) b!708373))

(assert (= (and b!708373 (not res!472184)) b!708374))

(declare-fun m!665899 () Bool)

(assert (=> d!96755 m!665899))

(declare-fun m!665901 () Bool)

(assert (=> d!96755 m!665901))

(declare-fun m!665903 () Bool)

(assert (=> b!708374 m!665903))

(assert (=> b!708288 d!96755))

(declare-fun d!96759 () Bool)

(declare-fun lt!318071 () Bool)

(assert (=> d!96759 (= lt!318071 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!341 lt!318056)))))

(declare-fun e!398662 () Bool)

(assert (=> d!96759 (= lt!318071 e!398662)))

(declare-fun res!472187 () Bool)

(assert (=> d!96759 (=> (not res!472187) (not e!398662))))

(assert (=> d!96759 (= res!472187 (is-Cons!13403 lt!318056))))

(assert (=> d!96759 (= (contains!3950 lt!318056 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318071)))

(declare-fun b!708381 () Bool)

(declare-fun e!398663 () Bool)

(assert (=> b!708381 (= e!398662 e!398663)))

(declare-fun res!472188 () Bool)

(assert (=> b!708381 (=> res!472188 e!398663)))

(assert (=> b!708381 (= res!472188 (= (h!14448 lt!318056) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708382 () Bool)

(assert (=> b!708382 (= e!398663 (contains!3950 (t!19703 lt!318056) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96759 res!472187) b!708381))

(assert (= (and b!708381 (not res!472188)) b!708382))

(assert (=> d!96759 m!665899))

(declare-fun m!665909 () Bool)

(assert (=> d!96759 m!665909))

(declare-fun m!665913 () Bool)

(assert (=> b!708382 m!665913))

(assert (=> b!708290 d!96759))

(declare-fun b!708412 () Bool)

(declare-fun e!398689 () Bool)

(declare-fun call!34404 () Bool)

(assert (=> b!708412 (= e!398689 call!34404)))

(declare-fun b!708413 () Bool)

(assert (=> b!708413 (= e!398689 call!34404)))

(declare-fun b!708414 () Bool)

(declare-fun e!398688 () Bool)

(assert (=> b!708414 (= e!398688 e!398689)))

(declare-fun c!78470 () Bool)

(assert (=> b!708414 (= c!78470 (validKeyInArray!0 (select (arr!19313 a!3591) from!2969)))))

(declare-fun d!96763 () Bool)

(declare-fun res!472207 () Bool)

(declare-fun e!398690 () Bool)

(assert (=> d!96763 (=> res!472207 e!398690)))

(assert (=> d!96763 (= res!472207 (bvsge from!2969 (size!19701 a!3591)))))

(assert (=> d!96763 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398690)))

(declare-fun bm!34401 () Bool)

(assert (=> bm!34401 (= call!34404 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78470 (Cons!13403 (select (arr!19313 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!708415 () Bool)

(assert (=> b!708415 (= e!398690 e!398688)))

(declare-fun res!472206 () Bool)

(assert (=> b!708415 (=> (not res!472206) (not e!398688))))

(declare-fun e!398691 () Bool)

(assert (=> b!708415 (= res!472206 (not e!398691))))

(declare-fun res!472208 () Bool)

(assert (=> b!708415 (=> (not res!472208) (not e!398691))))

(assert (=> b!708415 (= res!472208 (validKeyInArray!0 (select (arr!19313 a!3591) from!2969)))))

(declare-fun b!708416 () Bool)

(assert (=> b!708416 (= e!398691 (contains!3950 acc!652 (select (arr!19313 a!3591) from!2969)))))

(assert (= (and d!96763 (not res!472207)) b!708415))

(assert (= (and b!708415 res!472208) b!708416))

(assert (= (and b!708415 res!472206) b!708414))

(assert (= (and b!708414 c!78470) b!708412))

(assert (= (and b!708414 (not c!78470)) b!708413))

(assert (= (or b!708412 b!708413) bm!34401))

(assert (=> b!708414 m!665805))

(assert (=> b!708414 m!665805))

(assert (=> b!708414 m!665807))

(assert (=> bm!34401 m!665805))

(declare-fun m!665931 () Bool)

(assert (=> bm!34401 m!665931))

(assert (=> b!708415 m!665805))

(assert (=> b!708415 m!665805))

(assert (=> b!708415 m!665807))

(assert (=> b!708416 m!665805))

(assert (=> b!708416 m!665805))

(declare-fun m!665933 () Bool)

(assert (=> b!708416 m!665933))

(assert (=> b!708279 d!96763))

(declare-fun d!96773 () Bool)

(assert (=> d!96773 (= (validKeyInArray!0 (select (arr!19313 a!3591) from!2969)) (and (not (= (select (arr!19313 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19313 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708289 d!96773))

(declare-fun d!96775 () Bool)

(declare-fun lt!318075 () Bool)

(assert (=> d!96775 (= lt!318075 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!341 acc!652)))))

(declare-fun e!398704 () Bool)

(assert (=> d!96775 (= lt!318075 e!398704)))

(declare-fun res!472217 () Bool)

(assert (=> d!96775 (=> (not res!472217) (not e!398704))))

(assert (=> d!96775 (= res!472217 (is-Cons!13403 acc!652))))

(assert (=> d!96775 (= (contains!3950 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318075)))

(declare-fun b!708433 () Bool)

(declare-fun e!398705 () Bool)

(assert (=> b!708433 (= e!398704 e!398705)))

(declare-fun res!472218 () Bool)

(assert (=> b!708433 (=> res!472218 e!398705)))

(assert (=> b!708433 (= res!472218 (= (h!14448 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708434 () Bool)

(assert (=> b!708434 (= e!398705 (contains!3950 (t!19703 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96775 res!472217) b!708433))

(assert (= (and b!708433 (not res!472218)) b!708434))

(assert (=> d!96775 m!665893))

(declare-fun m!665935 () Bool)

(assert (=> d!96775 m!665935))

(declare-fun m!665937 () Bool)

(assert (=> b!708434 m!665937))

(assert (=> b!708291 d!96775))

(declare-fun d!96777 () Bool)

(declare-fun lt!318076 () Bool)

(assert (=> d!96777 (= lt!318076 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!341 newAcc!49)))))

(declare-fun e!398706 () Bool)

(assert (=> d!96777 (= lt!318076 e!398706)))

(declare-fun res!472219 () Bool)

(assert (=> d!96777 (=> (not res!472219) (not e!398706))))

(assert (=> d!96777 (= res!472219 (is-Cons!13403 newAcc!49))))

(assert (=> d!96777 (= (contains!3950 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318076)))

(declare-fun b!708435 () Bool)

(declare-fun e!398707 () Bool)

(assert (=> b!708435 (= e!398706 e!398707)))

(declare-fun res!472220 () Bool)

(assert (=> b!708435 (=> res!472220 e!398707)))

(assert (=> b!708435 (= res!472220 (= (h!14448 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708436 () Bool)

(assert (=> b!708436 (= e!398707 (contains!3950 (t!19703 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96777 res!472219) b!708435))

(assert (= (and b!708435 (not res!472220)) b!708436))

(declare-fun m!665939 () Bool)

(assert (=> d!96777 m!665939))

(declare-fun m!665941 () Bool)

(assert (=> d!96777 m!665941))

(declare-fun m!665943 () Bool)

(assert (=> b!708436 m!665943))

(assert (=> b!708280 d!96777))

(declare-fun d!96779 () Bool)

(declare-fun res!472230 () Bool)

(declare-fun e!398719 () Bool)

(assert (=> d!96779 (=> res!472230 e!398719)))

(assert (=> d!96779 (= res!472230 (is-Nil!13404 acc!652))))

(assert (=> d!96779 (= (noDuplicate!1197 acc!652) e!398719)))

(declare-fun b!708450 () Bool)

(declare-fun e!398720 () Bool)

(assert (=> b!708450 (= e!398719 e!398720)))

(declare-fun res!472231 () Bool)

(assert (=> b!708450 (=> (not res!472231) (not e!398720))))

(assert (=> b!708450 (= res!472231 (not (contains!3950 (t!19703 acc!652) (h!14448 acc!652))))))

(declare-fun b!708451 () Bool)

(assert (=> b!708451 (= e!398720 (noDuplicate!1197 (t!19703 acc!652)))))

(assert (= (and d!96779 (not res!472230)) b!708450))

(assert (= (and b!708450 res!472231) b!708451))

(declare-fun m!665963 () Bool)

(assert (=> b!708450 m!665963))

(declare-fun m!665965 () Bool)

(assert (=> b!708451 m!665965))

(assert (=> b!708282 d!96779))

(declare-fun d!96785 () Bool)

(assert (=> d!96785 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708292 d!96785))

(declare-fun d!96787 () Bool)

(declare-fun lt!318080 () Bool)

(assert (=> d!96787 (= lt!318080 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!341 newAcc!49)))))

(declare-fun e!398725 () Bool)

(assert (=> d!96787 (= lt!318080 e!398725)))

(declare-fun res!472235 () Bool)

(assert (=> d!96787 (=> (not res!472235) (not e!398725))))

(assert (=> d!96787 (= res!472235 (is-Cons!13403 newAcc!49))))

(assert (=> d!96787 (= (contains!3950 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318080)))

(declare-fun b!708457 () Bool)

(declare-fun e!398726 () Bool)

(assert (=> b!708457 (= e!398725 e!398726)))

(declare-fun res!472236 () Bool)

(assert (=> b!708457 (=> res!472236 e!398726)))

(assert (=> b!708457 (= res!472236 (= (h!14448 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708458 () Bool)

(assert (=> b!708458 (= e!398726 (contains!3950 (t!19703 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96787 res!472235) b!708457))

(assert (= (and b!708457 (not res!472236)) b!708458))

(assert (=> d!96787 m!665939))

(declare-fun m!665967 () Bool)

(assert (=> d!96787 m!665967))

(declare-fun m!665969 () Bool)

(assert (=> b!708458 m!665969))

(assert (=> b!708281 d!96787))

(declare-fun d!96789 () Bool)

(declare-fun res!472237 () Bool)

(declare-fun e!398727 () Bool)

(assert (=> d!96789 (=> res!472237 e!398727)))

(assert (=> d!96789 (= res!472237 (is-Nil!13404 ($colon$colon!504 newAcc!49 (select (arr!19313 a!3591) from!2969))))))

