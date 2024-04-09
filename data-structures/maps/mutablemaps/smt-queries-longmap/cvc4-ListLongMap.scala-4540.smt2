; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63170 () Bool)

(assert start!63170)

(declare-fun b!711304 () Bool)

(declare-fun res!474788 () Bool)

(declare-fun e!400184 () Bool)

(assert (=> b!711304 (=> (not res!474788) (not e!400184))))

(declare-datatypes ((List!13428 0))(
  ( (Nil!13425) (Cons!13424 (h!14469 (_ BitVec 64)) (t!19742 List!13428)) )
))
(declare-fun newAcc!49 () List!13428)

(declare-fun contains!3971 (List!13428 (_ BitVec 64)) Bool)

(assert (=> b!711304 (= res!474788 (not (contains!3971 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711305 () Bool)

(declare-fun res!474787 () Bool)

(assert (=> b!711305 (=> (not res!474787) (not e!400184))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40387 0))(
  ( (array!40388 (arr!19334 (Array (_ BitVec 32) (_ BitVec 64))) (size!19737 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40387)

(assert (=> b!711305 (= res!474787 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19737 a!3591)))))

(declare-fun b!711306 () Bool)

(declare-fun res!474792 () Bool)

(assert (=> b!711306 (=> (not res!474792) (not e!400184))))

(declare-fun acc!652 () List!13428)

(declare-fun noDuplicate!1218 (List!13428) Bool)

(assert (=> b!711306 (= res!474792 (noDuplicate!1218 acc!652))))

(declare-fun b!711307 () Bool)

(declare-fun res!474795 () Bool)

(declare-fun e!400183 () Bool)

(assert (=> b!711307 (=> (not res!474795) (not e!400183))))

(declare-fun lt!318404 () List!13428)

(declare-fun lt!318403 () List!13428)

(declare-fun subseq!415 (List!13428 List!13428) Bool)

(assert (=> b!711307 (= res!474795 (subseq!415 lt!318404 lt!318403))))

(declare-fun res!474790 () Bool)

(assert (=> start!63170 (=> (not res!474790) (not e!400184))))

(assert (=> start!63170 (= res!474790 (and (bvslt (size!19737 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19737 a!3591))))))

(assert (=> start!63170 e!400184))

(assert (=> start!63170 true))

(declare-fun array_inv!15108 (array!40387) Bool)

(assert (=> start!63170 (array_inv!15108 a!3591)))

(declare-fun b!711308 () Bool)

(declare-fun res!474791 () Bool)

(assert (=> b!711308 (=> (not res!474791) (not e!400184))))

(assert (=> b!711308 (= res!474791 (not (contains!3971 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711309 () Bool)

(declare-fun res!474796 () Bool)

(assert (=> b!711309 (=> (not res!474796) (not e!400183))))

(assert (=> b!711309 (= res!474796 (not (contains!3971 lt!318404 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711310 () Bool)

(declare-fun res!474807 () Bool)

(assert (=> b!711310 (=> (not res!474807) (not e!400184))))

(assert (=> b!711310 (= res!474807 (noDuplicate!1218 newAcc!49))))

(declare-fun b!711311 () Bool)

(declare-fun res!474798 () Bool)

(assert (=> b!711311 (=> (not res!474798) (not e!400183))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!711311 (= res!474798 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711312 () Bool)

(declare-fun res!474786 () Bool)

(assert (=> b!711312 (=> (not res!474786) (not e!400184))))

(assert (=> b!711312 (= res!474786 (contains!3971 newAcc!49 k!2824))))

(declare-fun b!711313 () Bool)

(declare-fun res!474797 () Bool)

(assert (=> b!711313 (=> (not res!474797) (not e!400184))))

(declare-fun arrayNoDuplicates!0 (array!40387 (_ BitVec 32) List!13428) Bool)

(assert (=> b!711313 (= res!474797 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!711314 () Bool)

(assert (=> b!711314 (= e!400184 e!400183)))

(declare-fun res!474784 () Bool)

(assert (=> b!711314 (=> (not res!474784) (not e!400183))))

(assert (=> b!711314 (= res!474784 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!525 (List!13428 (_ BitVec 64)) List!13428)

(assert (=> b!711314 (= lt!318403 ($colon$colon!525 newAcc!49 (select (arr!19334 a!3591) from!2969)))))

(assert (=> b!711314 (= lt!318404 ($colon$colon!525 acc!652 (select (arr!19334 a!3591) from!2969)))))

(declare-fun b!711315 () Bool)

(declare-fun res!474785 () Bool)

(assert (=> b!711315 (=> (not res!474785) (not e!400183))))

(assert (=> b!711315 (= res!474785 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318404))))

(declare-fun b!711316 () Bool)

(declare-fun res!474793 () Bool)

(assert (=> b!711316 (=> (not res!474793) (not e!400183))))

(assert (=> b!711316 (= res!474793 (noDuplicate!1218 lt!318403))))

(declare-fun b!711317 () Bool)

(declare-fun res!474783 () Bool)

(assert (=> b!711317 (=> (not res!474783) (not e!400184))))

(assert (=> b!711317 (= res!474783 (not (contains!3971 acc!652 k!2824)))))

(declare-fun b!711318 () Bool)

(declare-fun res!474799 () Bool)

(assert (=> b!711318 (=> (not res!474799) (not e!400184))))

(assert (=> b!711318 (= res!474799 (subseq!415 acc!652 newAcc!49))))

(declare-fun b!711319 () Bool)

(declare-fun res!474800 () Bool)

(assert (=> b!711319 (=> (not res!474800) (not e!400184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!711319 (= res!474800 (validKeyInArray!0 (select (arr!19334 a!3591) from!2969)))))

(declare-fun b!711320 () Bool)

(declare-fun res!474805 () Bool)

(assert (=> b!711320 (=> (not res!474805) (not e!400183))))

(assert (=> b!711320 (= res!474805 (not (contains!3971 lt!318404 k!2824)))))

(declare-fun b!711321 () Bool)

(declare-fun res!474803 () Bool)

(assert (=> b!711321 (=> (not res!474803) (not e!400183))))

(assert (=> b!711321 (= res!474803 (not (contains!3971 lt!318404 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711322 () Bool)

(declare-fun res!474804 () Bool)

(assert (=> b!711322 (=> (not res!474804) (not e!400184))))

(assert (=> b!711322 (= res!474804 (not (contains!3971 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711323 () Bool)

(declare-fun res!474794 () Bool)

(assert (=> b!711323 (=> (not res!474794) (not e!400184))))

(assert (=> b!711323 (= res!474794 (validKeyInArray!0 k!2824))))

(declare-fun b!711324 () Bool)

(declare-fun res!474806 () Bool)

(assert (=> b!711324 (=> (not res!474806) (not e!400184))))

(declare-fun -!380 (List!13428 (_ BitVec 64)) List!13428)

(assert (=> b!711324 (= res!474806 (= (-!380 newAcc!49 k!2824) acc!652))))

(declare-fun b!711325 () Bool)

(declare-fun res!474789 () Bool)

(assert (=> b!711325 (=> (not res!474789) (not e!400183))))

(assert (=> b!711325 (= res!474789 (contains!3971 lt!318403 k!2824))))

(declare-fun b!711326 () Bool)

(declare-fun res!474801 () Bool)

(assert (=> b!711326 (=> (not res!474801) (not e!400184))))

(assert (=> b!711326 (= res!474801 (not (contains!3971 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711327 () Bool)

(declare-fun res!474802 () Bool)

(assert (=> b!711327 (=> (not res!474802) (not e!400183))))

(assert (=> b!711327 (= res!474802 (noDuplicate!1218 lt!318404))))

(declare-fun b!711328 () Bool)

(declare-fun res!474782 () Bool)

(assert (=> b!711328 (=> (not res!474782) (not e!400184))))

(assert (=> b!711328 (= res!474782 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!711329 () Bool)

(assert (=> b!711329 (= e!400183 (not (= (-!380 lt!318403 k!2824) lt!318404)))))

(assert (= (and start!63170 res!474790) b!711306))

(assert (= (and b!711306 res!474792) b!711310))

(assert (= (and b!711310 res!474807) b!711326))

(assert (= (and b!711326 res!474801) b!711322))

(assert (= (and b!711322 res!474804) b!711328))

(assert (= (and b!711328 res!474782) b!711317))

(assert (= (and b!711317 res!474783) b!711323))

(assert (= (and b!711323 res!474794) b!711313))

(assert (= (and b!711313 res!474797) b!711318))

(assert (= (and b!711318 res!474799) b!711312))

(assert (= (and b!711312 res!474786) b!711324))

(assert (= (and b!711324 res!474806) b!711304))

(assert (= (and b!711304 res!474788) b!711308))

(assert (= (and b!711308 res!474791) b!711305))

(assert (= (and b!711305 res!474787) b!711319))

(assert (= (and b!711319 res!474800) b!711314))

(assert (= (and b!711314 res!474784) b!711327))

(assert (= (and b!711327 res!474802) b!711316))

(assert (= (and b!711316 res!474793) b!711321))

(assert (= (and b!711321 res!474803) b!711309))

(assert (= (and b!711309 res!474796) b!711311))

(assert (= (and b!711311 res!474798) b!711320))

(assert (= (and b!711320 res!474805) b!711315))

(assert (= (and b!711315 res!474785) b!711307))

(assert (= (and b!711307 res!474795) b!711325))

(assert (= (and b!711325 res!474789) b!711329))

(declare-fun m!668383 () Bool)

(assert (=> b!711325 m!668383))

(declare-fun m!668385 () Bool)

(assert (=> b!711315 m!668385))

(declare-fun m!668387 () Bool)

(assert (=> b!711307 m!668387))

(declare-fun m!668389 () Bool)

(assert (=> b!711323 m!668389))

(declare-fun m!668391 () Bool)

(assert (=> b!711308 m!668391))

(declare-fun m!668393 () Bool)

(assert (=> start!63170 m!668393))

(declare-fun m!668395 () Bool)

(assert (=> b!711312 m!668395))

(declare-fun m!668397 () Bool)

(assert (=> b!711317 m!668397))

(declare-fun m!668399 () Bool)

(assert (=> b!711309 m!668399))

(declare-fun m!668401 () Bool)

(assert (=> b!711314 m!668401))

(assert (=> b!711314 m!668401))

(declare-fun m!668403 () Bool)

(assert (=> b!711314 m!668403))

(assert (=> b!711314 m!668401))

(declare-fun m!668405 () Bool)

(assert (=> b!711314 m!668405))

(declare-fun m!668407 () Bool)

(assert (=> b!711324 m!668407))

(declare-fun m!668409 () Bool)

(assert (=> b!711326 m!668409))

(declare-fun m!668411 () Bool)

(assert (=> b!711329 m!668411))

(declare-fun m!668413 () Bool)

(assert (=> b!711306 m!668413))

(declare-fun m!668415 () Bool)

(assert (=> b!711311 m!668415))

(declare-fun m!668417 () Bool)

(assert (=> b!711318 m!668417))

(assert (=> b!711319 m!668401))

(assert (=> b!711319 m!668401))

(declare-fun m!668419 () Bool)

(assert (=> b!711319 m!668419))

(declare-fun m!668421 () Bool)

(assert (=> b!711321 m!668421))

(declare-fun m!668423 () Bool)

(assert (=> b!711322 m!668423))

(declare-fun m!668425 () Bool)

(assert (=> b!711328 m!668425))

(declare-fun m!668427 () Bool)

(assert (=> b!711320 m!668427))

(declare-fun m!668429 () Bool)

(assert (=> b!711310 m!668429))

(declare-fun m!668431 () Bool)

(assert (=> b!711304 m!668431))

(declare-fun m!668433 () Bool)

(assert (=> b!711313 m!668433))

(declare-fun m!668435 () Bool)

(assert (=> b!711316 m!668435))

(declare-fun m!668437 () Bool)

(assert (=> b!711327 m!668437))

(push 1)

(assert (not b!711317))

(assert (not b!711321))

(assert (not b!711304))

(assert (not b!711315))

(assert (not b!711307))

(assert (not b!711314))

(assert (not b!711322))

(assert (not b!711311))

(assert (not b!711313))

(assert (not b!711329))

(assert (not b!711316))

(assert (not b!711320))

(assert (not b!711323))

(assert (not b!711324))

(assert (not b!711310))

(assert (not b!711325))

(assert (not b!711318))

(assert (not b!711328))

(assert (not b!711309))

(assert (not b!711312))

(assert (not b!711319))

(assert (not b!711326))

(assert (not b!711306))

(assert (not b!711308))

(assert (not start!63170))

(assert (not b!711327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!711389 () Bool)

(declare-fun e!400242 () Bool)

(assert (=> b!711389 (= e!400242 (contains!3971 acc!652 (select (arr!19334 a!3591) from!2969)))))

(declare-fun b!711390 () Bool)

(declare-fun e!400240 () Bool)

(declare-fun call!34518 () Bool)

(assert (=> b!711390 (= e!400240 call!34518)))

(declare-fun c!78633 () Bool)

(declare-fun bm!34515 () Bool)

(assert (=> bm!34515 (= call!34518 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78633 (Cons!13424 (select (arr!19334 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!711392 () Bool)

(assert (=> b!711392 (= e!400240 call!34518)))

(declare-fun b!711393 () Bool)

(declare-fun e!400243 () Bool)

(assert (=> b!711393 (= e!400243 e!400240)))

(assert (=> b!711393 (= c!78633 (validKeyInArray!0 (select (arr!19334 a!3591) from!2969)))))

(declare-fun b!711391 () Bool)

(declare-fun e!400241 () Bool)

(assert (=> b!711391 (= e!400241 e!400243)))

(declare-fun res!474858 () Bool)

(assert (=> b!711391 (=> (not res!474858) (not e!400243))))

(assert (=> b!711391 (= res!474858 (not e!400242))))

(declare-fun res!474857 () Bool)

(assert (=> b!711391 (=> (not res!474857) (not e!400242))))

(assert (=> b!711391 (= res!474857 (validKeyInArray!0 (select (arr!19334 a!3591) from!2969)))))

(declare-fun d!97585 () Bool)

(declare-fun res!474859 () Bool)

(assert (=> d!97585 (=> res!474859 e!400241)))

(assert (=> d!97585 (= res!474859 (bvsge from!2969 (size!19737 a!3591)))))

(assert (=> d!97585 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400241)))

(assert (= (and d!97585 (not res!474859)) b!711391))

(assert (= (and b!711391 res!474857) b!711389))

(assert (= (and b!711391 res!474858) b!711393))

(assert (= (and b!711393 c!78633) b!711392))

(assert (= (and b!711393 (not c!78633)) b!711390))

(assert (= (or b!711392 b!711390) bm!34515))

(assert (=> b!711389 m!668401))

(assert (=> b!711389 m!668401))

(declare-fun m!668473 () Bool)

(assert (=> b!711389 m!668473))

(assert (=> bm!34515 m!668401))

(declare-fun m!668475 () Bool)

(assert (=> bm!34515 m!668475))

(assert (=> b!711393 m!668401))

(assert (=> b!711393 m!668401))

(assert (=> b!711393 m!668419))

(assert (=> b!711391 m!668401))

(assert (=> b!711391 m!668401))

(assert (=> b!711391 m!668419))

(assert (=> b!711313 d!97585))

(declare-fun d!97599 () Bool)

(declare-fun lt!318418 () Bool)

(declare-fun content!360 (List!13428) (Set (_ BitVec 64)))

(assert (=> d!97599 (= lt!318418 (member k!2824 (content!360 newAcc!49)))))

(declare-fun e!400263 () Bool)

(assert (=> d!97599 (= lt!318418 e!400263)))

(declare-fun res!474875 () Bool)

(assert (=> d!97599 (=> (not res!474875) (not e!400263))))

(assert (=> d!97599 (= res!474875 (is-Cons!13424 newAcc!49))))

(assert (=> d!97599 (= (contains!3971 newAcc!49 k!2824) lt!318418)))

(declare-fun b!711416 () Bool)

(declare-fun e!400264 () Bool)

(assert (=> b!711416 (= e!400263 e!400264)))

(declare-fun res!474874 () Bool)

(assert (=> b!711416 (=> res!474874 e!400264)))

(assert (=> b!711416 (= res!474874 (= (h!14469 newAcc!49) k!2824))))

(declare-fun b!711417 () Bool)

(assert (=> b!711417 (= e!400264 (contains!3971 (t!19742 newAcc!49) k!2824))))

(assert (= (and d!97599 res!474875) b!711416))

(assert (= (and b!711416 (not res!474874)) b!711417))

(declare-fun m!668489 () Bool)

(assert (=> d!97599 m!668489))

(declare-fun m!668491 () Bool)

(assert (=> d!97599 m!668491))

(declare-fun m!668493 () Bool)

(assert (=> b!711417 m!668493))

(assert (=> b!711312 d!97599))

(declare-fun d!97605 () Bool)

(declare-fun res!474885 () Bool)

(declare-fun e!400281 () Bool)

(assert (=> d!97605 (=> res!474885 e!400281)))

(assert (=> d!97605 (= res!474885 (is-Nil!13425 lt!318403))))

(assert (=> d!97605 (= (noDuplicate!1218 lt!318403) e!400281)))

(declare-fun b!711439 () Bool)

(declare-fun e!400282 () Bool)

(assert (=> b!711439 (= e!400281 e!400282)))

(declare-fun res!474886 () Bool)

(assert (=> b!711439 (=> (not res!474886) (not e!400282))))

(assert (=> b!711439 (= res!474886 (not (contains!3971 (t!19742 lt!318403) (h!14469 lt!318403))))))

(declare-fun b!711440 () Bool)

(assert (=> b!711440 (= e!400282 (noDuplicate!1218 (t!19742 lt!318403)))))

(assert (= (and d!97605 (not res!474885)) b!711439))

(assert (= (and b!711439 res!474886) b!711440))

(declare-fun m!668515 () Bool)

(assert (=> b!711439 m!668515))

(declare-fun m!668517 () Bool)

(assert (=> b!711440 m!668517))

(assert (=> b!711316 d!97605))

(declare-fun e!400288 () Bool)

(declare-fun b!711446 () Bool)

(assert (=> b!711446 (= e!400288 (contains!3971 lt!318404 (select (arr!19334 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711447 () Bool)

(declare-fun e!400286 () Bool)

(declare-fun call!34525 () Bool)

(assert (=> b!711447 (= e!400286 call!34525)))

(declare-fun bm!34522 () Bool)

(declare-fun c!78646 () Bool)

(assert (=> bm!34522 (= call!34525 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78646 (Cons!13424 (select (arr!19334 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318404) lt!318404)))))

(declare-fun b!711449 () Bool)

(assert (=> b!711449 (= e!400286 call!34525)))

(declare-fun b!711450 () Bool)

(declare-fun e!400289 () Bool)

(assert (=> b!711450 (= e!400289 e!400286)))

(assert (=> b!711450 (= c!78646 (validKeyInArray!0 (select (arr!19334 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711448 () Bool)

(declare-fun e!400287 () Bool)

(assert (=> b!711448 (= e!400287 e!400289)))

(declare-fun res!474889 () Bool)

(assert (=> b!711448 (=> (not res!474889) (not e!400289))))

(assert (=> b!711448 (= res!474889 (not e!400288))))

(declare-fun res!474888 () Bool)

(assert (=> b!711448 (=> (not res!474888) (not e!400288))))

(assert (=> b!711448 (= res!474888 (validKeyInArray!0 (select (arr!19334 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!97613 () Bool)

(declare-fun res!474890 () Bool)

(assert (=> d!97613 (=> res!474890 e!400287)))

(assert (=> d!97613 (= res!474890 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19737 a!3591)))))

(assert (=> d!97613 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318404) e!400287)))

(assert (= (and d!97613 (not res!474890)) b!711448))

(assert (= (and b!711448 res!474888) b!711446))

(assert (= (and b!711448 res!474889) b!711450))

(assert (= (and b!711450 c!78646) b!711449))

(assert (= (and b!711450 (not c!78646)) b!711447))

(assert (= (or b!711449 b!711447) bm!34522))

(declare-fun m!668529 () Bool)

(assert (=> b!711446 m!668529))

(assert (=> b!711446 m!668529))

(declare-fun m!668531 () Bool)

(assert (=> b!711446 m!668531))

(assert (=> bm!34522 m!668529))

(declare-fun m!668537 () Bool)

(assert (=> bm!34522 m!668537))

(assert (=> b!711450 m!668529))

(assert (=> b!711450 m!668529))

(declare-fun m!668539 () Bool)

(assert (=> b!711450 m!668539))

(assert (=> b!711448 m!668529))

(assert (=> b!711448 m!668529))

(assert (=> b!711448 m!668539))

(assert (=> b!711315 d!97613))

(declare-fun d!97619 () Bool)

(assert (=> d!97619 (= ($colon$colon!525 newAcc!49 (select (arr!19334 a!3591) from!2969)) (Cons!13424 (select (arr!19334 a!3591) from!2969) newAcc!49))))

(assert (=> b!711314 d!97619))

(declare-fun d!97623 () Bool)

(assert (=> d!97623 (= ($colon$colon!525 acc!652 (select (arr!19334 a!3591) from!2969)) (Cons!13424 (select (arr!19334 a!3591) from!2969) acc!652))))

(assert (=> b!711314 d!97623))

(declare-fun d!97625 () Bool)

(assert (=> d!97625 (= (validKeyInArray!0 (select (arr!19334 a!3591) from!2969)) (and (not (= (select (arr!19334 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19334 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711319 d!97625))

(declare-fun b!711503 () Bool)

(declare-fun e!400337 () Bool)

(assert (=> b!711503 (= e!400337 (subseq!415 (t!19742 acc!652) (t!19742 newAcc!49)))))

(declare-fun b!711501 () Bool)

(declare-fun e!400338 () Bool)

(declare-fun e!400339 () Bool)

(assert (=> b!711501 (= e!400338 e!400339)))

(declare-fun res!474938 () Bool)

(assert (=> b!711501 (=> (not res!474938) (not e!400339))))

(assert (=> b!711501 (= res!474938 (is-Cons!13424 newAcc!49))))

(declare-fun b!711504 () Bool)

(declare-fun e!400340 () Bool)

(assert (=> b!711504 (= e!400340 (subseq!415 acc!652 (t!19742 newAcc!49)))))

(declare-fun d!97635 () Bool)

(declare-fun res!474937 () Bool)

(assert (=> d!97635 (=> res!474937 e!400338)))

(assert (=> d!97635 (= res!474937 (is-Nil!13425 acc!652))))

(assert (=> d!97635 (= (subseq!415 acc!652 newAcc!49) e!400338)))

(declare-fun b!711502 () Bool)

(assert (=> b!711502 (= e!400339 e!400340)))

(declare-fun res!474935 () Bool)

(assert (=> b!711502 (=> res!474935 e!400340)))

(assert (=> b!711502 (= res!474935 e!400337)))

(declare-fun res!474936 () Bool)

(assert (=> b!711502 (=> (not res!474936) (not e!400337))))

(assert (=> b!711502 (= res!474936 (= (h!14469 acc!652) (h!14469 newAcc!49)))))

(assert (= (and d!97635 (not res!474937)) b!711501))

(assert (= (and b!711501 res!474938) b!711502))

(assert (= (and b!711502 res!474936) b!711503))

(assert (= (and b!711502 (not res!474935)) b!711504))

(declare-fun m!668585 () Bool)

(assert (=> b!711503 m!668585))

(declare-fun m!668587 () Bool)

(assert (=> b!711504 m!668587))

(assert (=> b!711318 d!97635))

(declare-fun d!97653 () Bool)

(declare-fun lt!318431 () Bool)

(assert (=> d!97653 (= lt!318431 (member k!2824 (content!360 acc!652)))))

(declare-fun e!400341 () Bool)

(assert (=> d!97653 (= lt!318431 e!400341)))

(declare-fun res!474940 () Bool)

(assert (=> d!97653 (=> (not res!474940) (not e!400341))))

(assert (=> d!97653 (= res!474940 (is-Cons!13424 acc!652))))

(assert (=> d!97653 (= (contains!3971 acc!652 k!2824) lt!318431)))

(declare-fun b!711505 () Bool)

(declare-fun e!400342 () Bool)

(assert (=> b!711505 (= e!400341 e!400342)))

(declare-fun res!474939 () Bool)

(assert (=> b!711505 (=> res!474939 e!400342)))

(assert (=> b!711505 (= res!474939 (= (h!14469 acc!652) k!2824))))

(declare-fun b!711506 () Bool)

(assert (=> b!711506 (= e!400342 (contains!3971 (t!19742 acc!652) k!2824))))

(assert (= (and d!97653 res!474940) b!711505))

(assert (= (and b!711505 (not res!474939)) b!711506))

(declare-fun m!668589 () Bool)

(assert (=> d!97653 m!668589))

(declare-fun m!668591 () Bool)

(assert (=> d!97653 m!668591))

(declare-fun m!668593 () Bool)

(assert (=> b!711506 m!668593))

(assert (=> b!711317 d!97653))

(declare-fun d!97655 () Bool)

(declare-fun lt!318432 () Bool)

(assert (=> d!97655 (= lt!318432 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!360 lt!318404)))))

(declare-fun e!400345 () Bool)

(assert (=> d!97655 (= lt!318432 e!400345)))

(declare-fun res!474944 () Bool)

(assert (=> d!97655 (=> (not res!474944) (not e!400345))))

(assert (=> d!97655 (= res!474944 (is-Cons!13424 lt!318404))))

(assert (=> d!97655 (= (contains!3971 lt!318404 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318432)))

(declare-fun b!711509 () Bool)

(declare-fun e!400346 () Bool)

(assert (=> b!711509 (= e!400345 e!400346)))

(declare-fun res!474943 () Bool)

(assert (=> b!711509 (=> res!474943 e!400346)))

(assert (=> b!711509 (= res!474943 (= (h!14469 lt!318404) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711510 () Bool)

(assert (=> b!711510 (= e!400346 (contains!3971 (t!19742 lt!318404) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97655 res!474944) b!711509))

(assert (= (and b!711509 (not res!474943)) b!711510))

(declare-fun m!668599 () Bool)

(assert (=> d!97655 m!668599))

(declare-fun m!668601 () Bool)

(assert (=> d!97655 m!668601))

(declare-fun m!668603 () Bool)

(assert (=> b!711510 m!668603))

(assert (=> b!711321 d!97655))

(declare-fun d!97659 () Bool)

(declare-fun lt!318433 () Bool)

(assert (=> d!97659 (= lt!318433 (member k!2824 (content!360 lt!318404)))))

(declare-fun e!400351 () Bool)

(assert (=> d!97659 (= lt!318433 e!400351)))

(declare-fun res!474950 () Bool)

(assert (=> d!97659 (=> (not res!474950) (not e!400351))))

(assert (=> d!97659 (= res!474950 (is-Cons!13424 lt!318404))))

(assert (=> d!97659 (= (contains!3971 lt!318404 k!2824) lt!318433)))

(declare-fun b!711515 () Bool)

(declare-fun e!400352 () Bool)

(assert (=> b!711515 (= e!400351 e!400352)))

(declare-fun res!474949 () Bool)

(assert (=> b!711515 (=> res!474949 e!400352)))

(assert (=> b!711515 (= res!474949 (= (h!14469 lt!318404) k!2824))))

(declare-fun b!711516 () Bool)

(assert (=> b!711516 (= e!400352 (contains!3971 (t!19742 lt!318404) k!2824))))

(assert (= (and d!97659 res!474950) b!711515))

(assert (= (and b!711515 (not res!474949)) b!711516))

(assert (=> d!97659 m!668599))

(declare-fun m!668605 () Bool)

(assert (=> d!97659 m!668605))

(declare-fun m!668607 () Bool)

(assert (=> b!711516 m!668607))

(assert (=> b!711320 d!97659))

(declare-fun b!711557 () Bool)

(declare-fun e!400388 () List!13428)

(declare-fun e!400389 () List!13428)

(assert (=> b!711557 (= e!400388 e!400389)))

(declare-fun c!78656 () Bool)

(assert (=> b!711557 (= c!78656 (= k!2824 (h!14469 newAcc!49)))))

(declare-fun b!711558 () Bool)

(assert (=> b!711558 (= e!400388 Nil!13425)))

(declare-fun b!711559 () Bool)

(declare-fun call!34532 () List!13428)

(assert (=> b!711559 (= e!400389 call!34532)))

(declare-fun d!97661 () Bool)

(declare-fun e!400390 () Bool)

(assert (=> d!97661 e!400390))

(declare-fun res!474979 () Bool)

(assert (=> d!97661 (=> (not res!474979) (not e!400390))))

(declare-fun lt!318439 () List!13428)

(declare-fun size!19740 (List!13428) Int)

(assert (=> d!97661 (= res!474979 (<= (size!19740 lt!318439) (size!19740 newAcc!49)))))

(assert (=> d!97661 (= lt!318439 e!400388)))

(declare-fun c!78657 () Bool)

(assert (=> d!97661 (= c!78657 (is-Cons!13424 newAcc!49))))

(assert (=> d!97661 (= (-!380 newAcc!49 k!2824) lt!318439)))

(declare-fun bm!34529 () Bool)

(assert (=> bm!34529 (= call!34532 (-!380 (t!19742 newAcc!49) k!2824))))

(declare-fun b!711560 () Bool)

(assert (=> b!711560 (= e!400389 (Cons!13424 (h!14469 newAcc!49) call!34532))))

(declare-fun b!711561 () Bool)

(assert (=> b!711561 (= e!400390 (= (content!360 lt!318439) (setminus (content!360 newAcc!49) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(assert (= (and d!97661 c!78657) b!711557))

(assert (= (and d!97661 (not c!78657)) b!711558))

(assert (= (and b!711557 c!78656) b!711559))

(assert (= (and b!711557 (not c!78656)) b!711560))

(assert (= (or b!711559 b!711560) bm!34529))

(assert (= (and d!97661 res!474979) b!711561))

(declare-fun m!668641 () Bool)

(assert (=> d!97661 m!668641))

(declare-fun m!668643 () Bool)

(assert (=> d!97661 m!668643))

(declare-fun m!668645 () Bool)

(assert (=> bm!34529 m!668645))

(declare-fun m!668647 () Bool)

(assert (=> b!711561 m!668647))

(assert (=> b!711561 m!668489))

(declare-fun m!668649 () Bool)

(assert (=> b!711561 m!668649))

(assert (=> b!711324 d!97661))

(declare-fun d!97677 () Bool)

(assert (=> d!97677 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711323 d!97677))

(declare-fun d!97679 () Bool)

(declare-fun lt!318440 () Bool)

(assert (=> d!97679 (= lt!318440 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!360 acc!652)))))

(declare-fun e!400391 () Bool)

(assert (=> d!97679 (= lt!318440 e!400391)))

(declare-fun res!474981 () Bool)

(assert (=> d!97679 (=> (not res!474981) (not e!400391))))

(assert (=> d!97679 (= res!474981 (is-Cons!13424 acc!652))))

(assert (=> d!97679 (= (contains!3971 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318440)))

(declare-fun b!711562 () Bool)

(declare-fun e!400392 () Bool)

(assert (=> b!711562 (= e!400391 e!400392)))

(declare-fun res!474980 () Bool)

(assert (=> b!711562 (=> res!474980 e!400392)))

(assert (=> b!711562 (= res!474980 (= (h!14469 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711563 () Bool)

(assert (=> b!711563 (= e!400392 (contains!3971 (t!19742 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97679 res!474981) b!711562))

(assert (= (and b!711562 (not res!474980)) b!711563))

(assert (=> d!97679 m!668589))

(declare-fun m!668651 () Bool)

(assert (=> d!97679 m!668651))

(declare-fun m!668653 () Bool)

(assert (=> b!711563 m!668653))

(assert (=> b!711322 d!97679))

(declare-fun d!97681 () Bool)

(declare-fun res!474982 () Bool)

(declare-fun e!400393 () Bool)

(assert (=> d!97681 (=> res!474982 e!400393)))

(assert (=> d!97681 (= res!474982 (is-Nil!13425 lt!318404))))

(assert (=> d!97681 (= (noDuplicate!1218 lt!318404) e!400393)))

(declare-fun b!711564 () Bool)

(declare-fun e!400394 () Bool)

(assert (=> b!711564 (= e!400393 e!400394)))

(declare-fun res!474983 () Bool)

(assert (=> b!711564 (=> (not res!474983) (not e!400394))))

(assert (=> b!711564 (= res!474983 (not (contains!3971 (t!19742 lt!318404) (h!14469 lt!318404))))))

(declare-fun b!711565 () Bool)

(assert (=> b!711565 (= e!400394 (noDuplicate!1218 (t!19742 lt!318404)))))

(assert (= (and d!97681 (not res!474982)) b!711564))

(assert (= (and b!711564 res!474983) b!711565))

(declare-fun m!668655 () Bool)

(assert (=> b!711564 m!668655))

(declare-fun m!668657 () Bool)

(assert (=> b!711565 m!668657))

(assert (=> b!711327 d!97681))

(declare-fun d!97683 () Bool)

(declare-fun lt!318441 () Bool)

(assert (=> d!97683 (= lt!318441 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!360 acc!652)))))

(declare-fun e!400399 () Bool)

(assert (=> d!97683 (= lt!318441 e!400399)))

(declare-fun res!474988 () Bool)

(assert (=> d!97683 (=> (not res!474988) (not e!400399))))

(assert (=> d!97683 (= res!474988 (is-Cons!13424 acc!652))))

(assert (=> d!97683 (= (contains!3971 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318441)))

(declare-fun b!711571 () Bool)

(declare-fun e!400400 () Bool)

(assert (=> b!711571 (= e!400399 e!400400)))

(declare-fun res!474987 () Bool)

(assert (=> b!711571 (=> res!474987 e!400400)))

(assert (=> b!711571 (= res!474987 (= (h!14469 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711572 () Bool)

(assert (=> b!711572 (= e!400400 (contains!3971 (t!19742 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97683 res!474988) b!711571))

(assert (= (and b!711571 (not res!474987)) b!711572))

(assert (=> d!97683 m!668589))

(declare-fun m!668663 () Bool)

(assert (=> d!97683 m!668663))

(declare-fun m!668665 () Bool)

(assert (=> b!711572 m!668665))

(assert (=> b!711326 d!97683))

(declare-fun d!97687 () Bool)

(declare-fun lt!318443 () Bool)

(assert (=> d!97687 (= lt!318443 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!360 newAcc!49)))))

(declare-fun e!400404 () Bool)

(assert (=> d!97687 (= lt!318443 e!400404)))

(declare-fun res!474991 () Bool)

(assert (=> d!97687 (=> (not res!474991) (not e!400404))))

(assert (=> d!97687 (= res!474991 (is-Cons!13424 newAcc!49))))

(assert (=> d!97687 (= (contains!3971 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318443)))

(declare-fun b!711578 () Bool)

(declare-fun e!400405 () Bool)

(assert (=> b!711578 (= e!400404 e!400405)))

(declare-fun res!474990 () Bool)

(assert (=> b!711578 (=> res!474990 e!400405)))

(assert (=> b!711578 (= res!474990 (= (h!14469 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711579 () Bool)

(assert (=> b!711579 (= e!400405 (contains!3971 (t!19742 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97687 res!474991) b!711578))

(assert (= (and b!711578 (not res!474990)) b!711579))

(assert (=> d!97687 m!668489))

(declare-fun m!668667 () Bool)

(assert (=> d!97687 m!668667))

(declare-fun m!668671 () Bool)

(assert (=> b!711579 m!668671))

(assert (=> b!711304 d!97687))

(declare-fun d!97689 () Bool)

(declare-fun lt!318444 () Bool)

(assert (=> d!97689 (= lt!318444 (member k!2824 (content!360 lt!318403)))))

(declare-fun e!400406 () Bool)

(assert (=> d!97689 (= lt!318444 e!400406)))

(declare-fun res!474993 () Bool)

(assert (=> d!97689 (=> (not res!474993) (not e!400406))))

(assert (=> d!97689 (= res!474993 (is-Cons!13424 lt!318403))))

(assert (=> d!97689 (= (contains!3971 lt!318403 k!2824) lt!318444)))

